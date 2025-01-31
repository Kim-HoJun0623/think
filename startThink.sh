#!/bin/bash

echo "Starting Think Project..."

export JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF-8"
export MAVEN_OPTS="-Dfile.encoding=UTF-8"


# Jenkins 빌드 경로 확인
echo "Current Directory: $(pwd)"
ls -l

# 프로젝트 폴더로 이동
if [ -d "DoYouThink" ]; then
    echo "Changing directory to DoYouThink"
    cd DoYouThink
    ls -l
fi

# target 폴더 강제 삭제 (파일 잠김 방지)
echo "Removing target directory..."
rm -rf target || true

# Maven 빌드 (파일 삭제 오류 무시)
if [ -f "pom.xml" ]; then
    echo "Executing Maven build..."
   
else
    echo "No build system found in $(pwd)! Exiting..."
    exit 1
fi

# 실행할 JAR 파일 찾기 (target 폴더에서 검색)
JAR_FILE=$(find target -name "*.jar" | head -n 1)
if [ -z "$JAR_FILE" ]; then
    echo "JAR file not found!"
    exit 1
fi

# 애플리케이션 실행
echo "Running $JAR_FILE..."
nohup java -jar "$JAR_FILE" > app.log 2>&1 &

echo "Build and Execution Complete!"
