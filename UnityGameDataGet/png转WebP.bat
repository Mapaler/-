@echo off
set quality=80
echo �趨ת������Ϊ%quality%
::ÿ�ζ�����ת��headͼƬ
title ����ת��Q��ͼ��
echo ����ת��Q��ͼ��
for /f %%f in ('dir /b *.png') do (
 .\cwebp.exe "%%f" -q %quality% -o "%%~nf.webp"
)
::���治����ת��
title ����ת������
echo ����ת������
for /f %%f in ('dir /b char\*.png') do (
if not exist "char\%%~nf.webp" (
 .\cwebp.exe "char\%%f" -q %quality% -o "char\%%~nf.webp"
) else (
 echo char\%%~nf.webp �Ѵ��ڣ�����
)
)
title ת�����
echo ת�����
pause