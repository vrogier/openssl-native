SET ARCH=%1

if "%ARCH%" == "x86" (
SET PLATEFORM=win-x86
SET POSTFIX=
)

if "%ARCH%" == "x64" (
SET PLATEFORM=win-x64
SET POSTFIX=-x64
)

SET SRC_DIR=..\openssl
SET DST_DIR=.\output

REM STATIC & IMPORT LIBS

xcopy /y %SRC_DIR%\libcrypto_static.lib %DST_DIR%\lib\%PLATEFORM%\native\
xcopy /y %SRC_DIR%\libcrypto.lib %DST_DIR%\lib\%PLATEFORM%\native\

xcopy /y %SRC_DIR%\libssl_static.lib %DST_DIR%\lib\%PLATEFORM%\native\
xcopy /y %SRC_DIR%\libssl.lib %DST_DIR%\lib\%PLATEFORM%\native\

REM DYNAMIC LIBS

xcopy /y %SRC_DIR%\libcrypto-1_1%POSTFIX%.dll %DST_DIR%\runtimes\%PLATEFORM%\native\
xcopy /y %SRC_DIR%\libcrypto-1_1%POSTFIX%.pdb %DST_DIR%\runtimes\%PLATEFORM%\native\

xcopy /y %SRC_DIR%\libssl-1_1%POSTFIX%.dll %DST_DIR%\runtimes\%PLATEFORM%\native\
xcopy /y %SRC_DIR%\libssl-1_1%POSTFIX%.pdb %DST_DIR%\runtimes\%PLATEFORM%\native\

REM OPENSSL EXECUTABLE

xcopy /y %SRC_DIR%\apps\openssl.exe %DST_DIR%\bin\%PLATEFORM%\native\
xcopy /y %SRC_DIR%\apps\openssl.pdb %DST_DIR%\bin\%PLATEFORM%\native\

REM OPENSSL HEADERS

xcopy /y %SRC_DIR%\include\openssl\*.* %DST_DIR%\include\openssl\


