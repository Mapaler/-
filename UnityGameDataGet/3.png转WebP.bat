@echo off
::ѹ������
set /a quality=80
set dataDec=..\Resources
echo �趨ת������Ϊ%quality%
::ת������
title ����ת������
for /f %%f in ('dir /b %dataDec%\char\charimg\*.png') do (
if not exist %dataDec%\char\charimg\%%~nf.webp (
 tools\cwebp.exe %dataDec%\char\charimg\%%f -q %quality% -o %dataDec%\char\charimg\%%~nf.webp
) else (
 echo ���� %%~nf.webp �Ѵ��ڣ�����
)
)
::ת��Q��ͼ��
title ����ת��Q��ͼ��
for /f %%f in ('dir /b %dataDec%\char\charcute\*.png') do (
if not exist %dataDec%\char\charcute\%%~nf.webp (
 tools\cwebp.exe %dataDec%\char\charcute\%%f -q %quality% -o %dataDec%\char\charcute\%%~nf.webp
) else (
 echo Q�� %%~nf.webp �Ѵ��ڣ�����
)
)
::ת������ͼ��
title ����ת������ͼ��
for /f %%f in ('dir /b %dataDec%\equipment\*.png') do (
if not exist %dataDec%\equipment\%%~nf.webp (
 tools\cwebp.exe %dataDec%\equipment\%%f -q %quality% -o %dataDec%\equipment\%%~nf.webp
) else (
 echo ���� %%~nf.webp �Ѵ��ڣ�����
)
)
title ת�����
echo ת�����
pause