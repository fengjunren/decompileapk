@REM ������������ǰ���� @���ţ�ִ��ʱ����ʾ��������
@REM �滻
@echo on
@set rootdir=%2

@rem ���л�������Ŀ¼
@cd %rootdir%

@set str=%1

@REM �滻�ļ��ַ��� ��.apk �滻Ϊ��
@set str=%str:.apk= %

@if exist %str% (echo.-------has created: %str%) else @call  %~dp0\b3-1_execute_apktool_dex2jar.bat %str% 

