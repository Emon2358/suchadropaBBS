@echo off
chcp 932 > nul
title ����������erBBS(����)
echo.
echo ID�ƃp�X���[�h����͂��ĉ������B
echo �Q�X�g�� ID "O" �ł��B
echo.

set /p ID=ID:
set /p Password=Password:

echo.
echo login ok ...... ��������Ⴂ�܂��@�`�@��
echo -------------------------------------------------------
echo ���������� er�@���@BBS (����)
echo HOST-program : NET-COCK 3.60 Quintet chacha Ver 1.00
echo MODEM         : Sportster 28800 MODEM
echo MENT          : at any time
echo CAT-no.       : SCD-001
echo -------------------------------------------------------
echo ���@�^�c���ԁ@��
echo ����24���ԉ^�c
echo.
echo %ID% ���񂢂�����Ⴂ�܂��B
echo Last login: %date% %time%
echo Login count: 765
echo.
echo �`���b�g�E���[�h���I���ɂ��܂����B
echo >BL
echo.
pause
echo NicoNico�����Video ID����͂��Ă��������i��: sm12345678�j�B
set /p VideoID=Video ID:

:: yt-dlp �R�}���h���s
echo ������_�E�����[�h��...
yt-dlp "https://www.nicovideo.jp/watch/%VideoID%" --cookies cookies.txt -o "downloads\%%(title)s.%%(ext)s"
if %errorlevel% neq 0 (
    echo �_�E�����[�h�Ɏ��s���܂����B�G���[�R�[�h: %errorlevel%
    pause
    exit /b
)

echo �_�E�����[�h���������܂����B�t�@�C���� "downloads" �t�H���_�ɕۑ�����܂����B
pause
exit
