@echo off
cd /d "D:\UC SAN DIEGO\Fall 2026"
echo Adding all changes...
git add -A
git commit -m "Update schedule and map data"
echo Pushing to https://github.com/CapMorningStar/ucsd-schedule...
git push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ========================================================
    echo  SUCCESS! Changes are pushed and syncing with Netlify!
    echo ========================================================
) else (
    echo ========================================================
    echo  Make sure you created the repo at github.com/new
    echo ========================================================
)
pause
