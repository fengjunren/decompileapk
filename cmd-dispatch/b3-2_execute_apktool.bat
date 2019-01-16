@REM 在所有命令行前加上 @符号，执行时不显示此行命令
@REM apktool反编译apk
@set rootdir=%~dp0
@REM 设置环境变量apktool.bat的执行环境
@set path=%path%;%rootdir%\apktool

@REM apktool 后面跟上输出到指定的文件夹中，不指定则会输出到与apktool文件夹同级的目录中
@apktool d  -s  %1.apk  -f -o %1\
