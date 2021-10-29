#!/bin/bash
PASSWORD="$1"
docker run -d \
-p 8888:8080  -p 19002:19002 -p 19000:19000 \
--name vscode-react-native-expo \
-v "$PWD:/home/coder/project" \
-u root  \
-e "PASSWORD=$PASSWORD" \
codercom/code-server:latest
