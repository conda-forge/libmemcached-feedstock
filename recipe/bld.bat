@echo on

call %BUILD_PREFIX%\Library\bin\run_autotools_clang_conda_build.bat build_win.sh || goto :ERROR

goto :EOF

:ERROR
echo FAIL Building %PKG_NAME% with error #%errorlevel%.
exit /b 1
