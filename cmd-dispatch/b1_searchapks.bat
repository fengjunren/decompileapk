@REM ������������ǰ���� @���ţ�ִ��ʱ����ʾ��������
@REM ������ǰĿ¼�� ����apk�ļ�
@set rootdir=%1
 
@REM isFindChildDir 0 ��Ѱ����Ŀ¼   1 ҪѰ��

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
      ) else echo.-------file not exist�� %inputFileDir% 
)
   
) else (
    @for /r %cd% %%a in (*.apk) do @call %~dp0\b2_replace.bat %%a %rootdir%
)
 