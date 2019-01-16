@REM 在所有命令行前加上 @符号，执行时不显示此行命令
@REM 执行命令 dex2jar
@set rootdir=%~dp0
@rem 调用批处理apktool.bat,放在一个文件中执行如果有错误信息时，后面的命名不会执行，故分开两个文件
@call  %~dp0\b3-2_execute_apktool.bat  %1  

@rem 设置dex2jar.bat批处理的环境变量
@set path=%path%;%rootdir%\dex2jar
echo %1\classes.dex 

@rem 切换到classes.dex 所在目录
@cd %1

@d2j-dex2jar classes.dex 


 



