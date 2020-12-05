bash -lc "cd $(cygpath -u $SRC_DIR) && ./configure --without-docs --prefix=$(cygpath -u $PREFIX)" || goto :ERROR
bash -lc "cd $(cygpath -u $SRC_DIR) && make" || goto :ERROR
bash -lc "cd $(cygpath -u $SRC_DIR) && make install" || goto :ERROR

goto :EOF

:ERROR
echo FAIL Building %PKG_NAME% with error #%errorlevel%.
exit /b %errorlevel%
