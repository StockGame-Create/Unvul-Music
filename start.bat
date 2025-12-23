@echo off
chcp 65001 >nul
cd /d "C:\Users\User\OneDrive\바탕 화면\hello\index-song"
if errorlevel 1 (
    echo 경로를 찾을 수 없습니다.
    pause
    exit /b
)
echo 서버를 시작합니다...
timeout /t 2 /nobreak >nul
start http://localhost:9000
python -m http.server 9000