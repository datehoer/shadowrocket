@echo off
setlocal enabledelayedexpansion

rem 获取当前路径
set "folderPath=%cd%"

rem 遍历所有 .txt 文件
for %%f in (*.txt) do (
    rem 获取文件名（去掉 .txt 后缀）
    set "fileName=%%~nf"

    rem 重命名文件，删除后缀
    ren "%%f" "!fileName!"
)

echo 操作完成！
pause
