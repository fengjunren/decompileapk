@REM ������������ǰ���� @���ţ�ִ��ʱ����ʾ��������
@REM apktool������apk
@set rootdir=%~dp0
@REM ���û�������apktool.bat��ִ�л���
@set path=%path%;%rootdir%\apktool

@REM apktool ������������ָ�����ļ����У���ָ������������apktool�ļ���ͬ����Ŀ¼��
@apktool d  -s  %1.apk  -f -o %1\
