@echo off
title Yourchoice - AI-Powered Smart Shopping
cd /d "%~dp0"

echo ========================================================
echo           YOURCHOICE - SMART SHOPPING & AI ASSISTANT
echo ========================================================
echo.
echo Initializing application...

:: Check if node_modules exists
if not exist "node_modules\" (
    echo [1/2] Dependencies not found. Running npm install...
    call npm install
) else (
    echo [1/2] Dependencies ready.
)

echo [2/2] Launching Vite development server & browser...
echo.
echo --------------------------------------------------------
echo  Local App URL : http://localhost:5173/
echo  Backend API   : http://localhost/aether-api/api.php
echo  MySQL DB      : 127.0.0.1:3306 (aether_store)
echo --------------------------------------------------------
echo.
echo Keep this window open while using the application.
echo To stop the server, press Ctrl+C or close this window.
echo.

:: Launch Vite with auto-browser opening
call npm run dev -- --open
