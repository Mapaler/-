@echo off
if exist APK_Unpack (
title ���ھɵ�APK���������ɾ��
RMDIR /Q /S APK_Unpack
)
title ���ڽ�ѹAPKѹ����
tools\7z.exe e *.apk -oAPK_Unpack -spf -y
if exist Export_Data (
title ���ھɵĵ�����Դ������ɾ��
RMDIR /Q /S Export_Data
)
MKDIR Export_Data
title ������Դ
echo ����uTinyRipper�е���������Դ��Export_Data
echo %~dp0Export_Data
tools\uTinyRipper\uTinyRipper.exe APK_Unpack\assets\bin\Data