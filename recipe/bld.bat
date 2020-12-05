set HOME="%CD%"

bash -lc "./configure --without-docs --prefix=`cygpath -u $PREFIX`" || goto :ERROR
bash -lc "make" || goto :ERROR
bash -lc "make install" || goto :ERROR

goto :EOF

:ERROR
echo FAIL Building %PKG_NAME% with error #%errorlevel%.
exit /b %errorlevel%
