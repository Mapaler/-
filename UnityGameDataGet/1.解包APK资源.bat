@echo off
if exist APK_Unpack (
title ���ھɵ�APK���������ɾ��
DEL /Q /F /S APK_Unpack
)
title ���ڽ�ѹAPKѹ����
7z.exe e *.apk -oAPK_Unpack -spf
if exist Export_Data (
title ���ھɵĵ�����Դ������ɾ��
DEL /Q /F /S Export_Data
)
MKDIR Export_Data
title ������Դ
echo ����uTinyRipper�е���������Դ��Export_Data
echo %~dp0Export_Data
uTinyRipper_x64\uTinyRipper.exe APK_Unpack\assets\bin\Data