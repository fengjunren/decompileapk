@REM 在所有命令行前加上 @符号，执行时不显示此行命令
@REM 反编译当前目录下所有的apk
@echo on
 
@%~dp0\cmd-dispatch\b1_searchapks.bat %cd% 0 %1

 