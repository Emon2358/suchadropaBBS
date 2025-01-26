@echo off
chcp 932 > nul
title すだちょろぱerBBS(仮称)
echo.
echo IDとパスワードを入力して下さい。
echo ゲストは ID "O" です。
echo.

set /p ID=ID:
set /p Password=Password:

echo.
echo login ok ...... いらっしゃいまし　～　ん
echo -------------------------------------------------------
echo すだちょろぱ er　★　BBS (仮称)
echo HOST-program : NET-COCK 3.60 Quintet chacha Ver 1.00
echo MODEM         : Sportster 28800 MODEM
echo MENT          : at any time
echo CAT-no.       : SCD-001
echo -------------------------------------------------------
echo ★　運営時間　☆
echo 毎日24時間運営
echo.
echo %ID% さんいらっしゃいませ。
echo Last login: %date% %time%
echo Login count: 765
echo.
echo チャット・モードをオンにしました。
echo >BL
echo.
pause
echo NicoNico動画のVideo IDを入力してください（例: sm12345678）。
set /p VideoID=Video ID:

:: yt-dlp コマンド実行
echo 動画をダウンロード中...
yt-dlp "https://www.nicovideo.jp/watch/%VideoID%" --cookies cookies.txt -o "downloads\%%(title)s.%%(ext)s"
if %errorlevel% neq 0 (
    echo ダウンロードに失敗しました。エラーコード: %errorlevel%
    pause
    exit /b
)

echo ダウンロードが完了しました。ファイルは "downloads" フォルダに保存されました。
pause
exit
