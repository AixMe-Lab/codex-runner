#!/bin/bash
set -e

INPUT_FILE="$1"
OUTPUT_FILE="$2"

mkdir -p "$(dirname "$OUTPUT_FILE")"

echo "=== Running Codex ==="
echo "Input: $INPUT_FILE"
echo "Output: $OUTPUT_FILE"

# npxで、package.jsonに書いたcodex-cliを呼び出す
npx codex run \
  --input "$INPUT_FILE" \
  --output "$OUTPUT_FILE" \
  --model gpt-4-turbo

echo "=== Codex run complete ==="
# ログで中身を確認できるよう最後に表示
cat "$OUTPUT_FILE"
