@echo on

bash build_win.sh || goto :ERROR

goto :EOF

:ERROR
echo FAIL Building %PKG_NAME% with error #%errorlevel%.
echo "--- BEGIN CONFIG.LOG ---"
type config.log
echo "--- END CONFIG.LOG ---"
exit /b 1
