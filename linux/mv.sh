#!/bin/bash

# 设置根目录路径
root_dir="/home/xxx"

# 迭代根目录下的二级目录
for dir in "$root_dir"/*/; do
    if [ -d "$dir" ]; then
        # 提取二级目录的名字
        base_dir=$(basename "$dir")
        
        # 移动二级目录中的文件到根目录
        mv "$dir"/* "$root_dir"
        
        # 删除原来的一级目录
        rm -r "$dir"
        
        echo "已移动并删除目录：$dir"
    fi
done
