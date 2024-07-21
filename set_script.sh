#!/bin/bash
#!/bin/bash

# 检查参数数量
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 source_directory target_directory file"
    exit 1
fi

SOURCE_DIR=$1
TARGET_DIR=$2
FILE=$3

# 检查文件是否存在
if [ ! -f "$FILE" ]; then
    echo "File $FILE does not exist."
    exit 1
fi

# 使用sed替换目录路径
sed -i "s|$SOURCE_DIR|$TARGET_DIR|g" "$FILE"

echo "Replaced all occurrences of $SOURCE_DIR with $TARGET_DIR in $FILE."

