@echo off
rem 下準備
chcp 65001
setlocal enabledelayedexpansion

rem yamlをiniに変換
set INPUT_FILE=setting.yaml
set OUTPUT_FILE=setting.ini
set BEFORE_STR=: 
set AFTER_STR==
if exist setting.ini del setting.ini
for /f "delims=" %%a in (%INPUT_FILE%) do (
set line=%%a
echo !line:%BEFORE_STR%=%AFTER_STR%!>>%OUTPUT_FILE%
)
rem iniファイルの読み込み

rem ダウンロード・解凍・移動
rem bitsadmin /transfer https://storage.googleapis.com/dart-archive/channels/stable/release/2.12.4/sdk/dartsdk-windows-x64-release.zip C:\dartsdk\dartsdk-windows-x64-release.zip
rem cd C:\dartsdk\

rem パスを通す

rem 要らないファイルを削除



rem in the end
rem if exist setting.ini del setting.ini
@echo on