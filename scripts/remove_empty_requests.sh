#!/bin/bash

# 引数からOpenAPI YAMLファイルのパスを取得
OPENAPI_FILE="$1"

# 引数が指定されているか確認
if [ -z "$OPENAPI_FILE" ]; then
  echo "Usage: $0 <path_to_openapi_file>"
  exit 1
fi

# ファイルが存在するか確認
if [ ! -f "$OPENAPI_FILE" ]; then
  echo "File not found: $OPENAPI_FILE"
  exit 1
fi

# yqを使用して、requestBody.contentが空のエントリを削除
yq eval 'del(.. | select(has("requestBody") and .requestBody.content | length == 0) | .requestBody)' -i "$OPENAPI_FILE"

echo "Processed file: $OPENAPI_FILE"