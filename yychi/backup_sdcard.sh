#!/bin/bash
#
# 用于刷机前将媒体数据备份，防止刷坏需要格式化data分区。

SDCARD_DIR="/storage/emulated/0"
EXEC_DIR=$(cd $(dirname $0); pwd)

echo "EXEC_DIR=$EXEC_DIR\n"
echo "SDCARD_DIR=$SDCARD_DIR"

cd $SDCARD_DIR
tar --zstd \
    -cvf $EXEC_DIR/sdcard_backup_$(date +"%Y-%m-%d").tar.zst \
    --exclude="*/.*" \
    -T $EXEC_DIR/pull_file_list.txt

