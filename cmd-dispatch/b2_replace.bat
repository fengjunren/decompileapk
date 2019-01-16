@REM 在所有命令行前加上 @符号，执行时不显示此行命令
@REM 替换
@echo on
@set rootdir=%2

@rem 先切换到根级目录
@cd %rootdir%

@set str=%1

@REM 替换文件字符窜 将.apk 替换为空
@set str=%str:.apk= %

@if exist %str% (echo.-------has created: %str%) else @call  %~dp0\b3-1_execute_apktool_dex2jar.bat %str% 

