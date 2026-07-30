@echo off
cd /d "%~dp0"
start "Brew Log server" /min cmd /c "python -m http.server 8788"
timeout /t 1 /nobreak >nul
start "" "http://localhost:8788/coffee%%20logging%%20app.html"
