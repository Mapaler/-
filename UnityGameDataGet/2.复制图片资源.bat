@echo off
setlocal enabledelayedexpansion
set dataSrc=Export_Data\globalgamemanagers\Assets\Resources
set dataDec=..\Resources
if not exist %dataDec%\char (MKDIR %dataDec%\char)
::��������
title ��������
echo ���ڽ������ļ���ת��Ϊ��д�����Ƶ���ҳ��Դ
if not exist %dataDec%\char\charimg (MKDIR %dataDec%\char\charimg)
for /f %%f in ('dir /b %dataSrc%\char\charimg\A*.png') do (
::ֻ�����ļ�������
set str=%%~nf
::ѭ���滻Ϊ��д�������!str!
for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (call set str=%%str:%%i=%%i%%)
set newpath=%dataDec%\char\charimg\!str!.png
if not exist !newpath! (copy %dataSrc%\char\charimg\%%f !newpath!) else (echo !str!.png �Ѵ���)
)
::����Q��
title ����Q��
echo ���ڽ�Q���ļ���ת��Ϊ��д�����Ƶ���ҳ��Դ
if not exist %dataDec%\char\charcute (MKDIR %dataDec%\char\charcute)
for /f %%f in ('dir /b %dataSrc%\char\charcute\A*.png') do (
::ֻ�����ļ�������
set str=%%~nf
::ѭ���滻Ϊ��д�������!str!
for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (call set str=%%str:%%i=%%i%%)
set newpath=%dataDec%\char\charcute\!str!.png
if not exist !newpath! (copy %dataSrc%\char\charcute\%%f !newpath!) else (echo !str!.png �Ѵ���)
)
::���Ƶ���
title ���Ƶ���
echo ���ڸ��Ƶ��ߵ���ҳ��Դ
if not exist %dataDec%\equipment (MKDIR %dataDec%\equipment)
for /f %%f in ('dir /b %dataSrc%\equipment\*.png') do (
set newpath=%dataDec%\equipment\%%~nf.png
if not exist !newpath! (copy %dataSrc%\equipment\%%f !newpath!) else (echo %%f �Ѵ���)
)