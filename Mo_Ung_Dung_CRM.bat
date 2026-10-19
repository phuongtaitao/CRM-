@echo off
title Khoi dong MediCRM Y Bac Si

echo ========================================================
echo     DANG KHOI DONG MEDICRM Y BAC SI
echo     Ung Dung Cham Soc Suc Khoe Khep Kin
echo ========================================================
echo.

set "TARGET=%~dp0index.html"

if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    echo [OK] Dang mo ung dung tren Google Chrome...
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "%TARGET%"
    goto :done
)

if exist "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" (
    echo [OK] Dang mo ung dung tren Microsoft Edge...
    start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "%TARGET%"
    goto :done
)

echo [OK] Dang mo ung dung tren trinh duyet mac dinh...
start "" "%TARGET%"

:done
echo Hoan tat! Ban co the dong cua so nay.
exit /b
