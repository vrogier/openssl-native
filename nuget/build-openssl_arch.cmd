SET CURRENT_DIR=%cd%
SET ARCH=%1

if "%ARCH%" == "x86" (
    SET VCVARS=32
    SET CONF_TARGET=VC-WIN32
)

if "%ARCH%" == "x64" (
    SET VCVARS=64
    SET CONF_TARGET=VC-WIN64A
)

cd ..\openssl

call "C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\Auxiliary\\Build\\vcvars%VCVARS%.bat"

nmake clean

perl Configure %CONF_TARGET% /MT

nmake

cd %CURRENT_DIR%