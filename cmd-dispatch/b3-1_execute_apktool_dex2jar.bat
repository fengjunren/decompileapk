@REM ������������ǰ���� @���ţ�ִ��ʱ����ʾ��������
@REM ִ������ dex2jar
@set rootdir=%~dp0
@rem ����������apktool.bat,����һ���ļ���ִ������д�����Ϣʱ���������������ִ�У��ʷֿ������ļ�
@call  %~dp0\b3-2_execute_apktool.bat  %1  

@rem ����dex2jar.bat������Ļ�������
@set path=%path%;%rootdir%\dex2jar
echo %1\classes.dex 

@rem �л���classes.dex ����Ŀ¼
@cd %1

@d2j-dex2jar classes.dex 


 



