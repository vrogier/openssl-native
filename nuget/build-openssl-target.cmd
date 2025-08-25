 SET CURRENT_DIR=%cd%
SET ARCH=%1
SET TOOLSET=%2
SET SAVED_PATH=%PATH%

if "%ARCH%" == "x86" (
    SET VCVARS=32
    SET CONF_TARGET=VC-WIN32
)

if "%ARCH%" == "x64" (
    SET VCVARS=64
    SET CONF_TARGET=VC-WIN64A
)

REM toolset vesion might differ on installed toolsets

if "%TOOLSET%" == "v141" (
    SET TOOLSET_VERSION=14.16
)

if "%TOOLSET%" == "v142" (
    SET TOOLSET_VERSION=14.29
)

if "%TOOLSET%" == "v143" (
    SET TOOLSET_VERSION=14.33
)

echo "Set VS environment"

cd "C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\Auxiliary\\Build"

call vcvars%VCVARS%.bat -vcvars_ver=%TOOLSET_VERSION%

cd %CURRENT_DIR%

cd ..\openssl

echo "Clean build system"

nmake clean

echo "Configure cmake"

perl Configure %CONF_TARGET% /MT

echo "Build !"

nmake

SET PATH=%SAVED_PATH%

cd %CURRENT_DIR%