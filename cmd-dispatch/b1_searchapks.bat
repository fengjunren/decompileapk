@REM 在所有命令行前加上 @符号，执行时不显示此行命令
@REM 搜索当前目录下 所有apk文件
@set rootdir=%1
 
@REM isFindChildDir 0 不寻找子目录   1 要寻找

@set /a isFindChildDir=%2
@set /a FindChildDir=1
@set /a notFindChildDir=0
@set inputFile=%3
@set inputFileDir=%rootdir%\%inputFile%
 
@if %isFindChildDir% EQU  %notFindChildDir% (

@if "%inputFile%"=="" (
	@for %%a in (*.apk) do @call %~dp0\b2_replace.bat %%a %rootdir%
	) else (
     @if exist %inputFileDir%  (
      @%~dp0\b2_replace.bat %inputFileDir% %rootdir%
      ) else echo.-------file not exist： %inputFileDir% 
)
   
) else (
    @for /r %cd% %%a in (*.apk) do @call %~dp0\b2_replace.bat %%a %rootdir%
)
 