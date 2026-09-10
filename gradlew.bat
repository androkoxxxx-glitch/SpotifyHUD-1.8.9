@echo off
setlocal
set "PROJECT_DIR=%~dp0"
set "GRADLE_VERSION=2.14.1"
set "DIST_DIR=%USERPROFILE%\.gradle\spotifyhud-wrapper\gradle-%GRADLE_VERSION%"
set "DIST_ZIP=%USERPROFILE%\.gradle\spotifyhud-wrapper\gradle-%GRADLE_VERSION%-bin.zip"
set "GRADLE_BIN=%DIST_DIR%\bin\gradle.bat"

if exist "%GRADLE_BIN%" goto runGradle

echo [SpotifyHUD] Gradle %GRADLE_VERSION% nie jest jeszcze pobrany.
if not exist "%USERPROFILE%\.gradle\spotifyhud-wrapper" mkdir "%USERPROFILE%\.gradle\spotifyhud-wrapper"

echo [SpotifyHUD] Pobieranie Gradle %GRADLE_VERSION%...
powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -UseBasicParsing -Uri 'https://services.gradle.org/distributions/gradle-%GRADLE_VERSION%-bin.zip' -OutFile '%DIST_ZIP%'"
if errorlevel 1 (
  echo [SpotifyHUD] Nie udalo sie pobrac Gradle.
  exit /b 1
)

echo [SpotifyHUD] Rozpakowywanie...
powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive -Force -Path '%DIST_ZIP%' -DestinationPath '%USERPROFILE%\.gradle\spotifyhud-wrapper'"
if errorlevel 1 (
  echo [SpotifyHUD] Nie udalo sie rozpakowac Gradle.
  exit /b 1
)

del /q "%DIST_ZIP%" >nul 2>&1

:runGradle
call "%GRADLE_BIN%" %*
exit /b %ERRORLEVEL%
