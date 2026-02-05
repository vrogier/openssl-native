SET CURRENT_DIR=%cd%
SET ARCH=%1
SET TOOLSET=%2
SET SAVED_PATH=%PATH%

if "%ARCH%" == "x86" (
    SET VCVARS=x64_x86
    SET CONF_TARGET=VC-WIN32
)

if "%ARCH%" == "x64" (
    SET VCVARS=x64
    SET CONF_TARGET=VC-WIN64A
)

if "%ARCH%" == "arm64" (
    SET VCVARS=x64_arm64
    SET CONF_TARGET=VC-WIN64-ARM
)

REM toolset vesion might differ from installed toolsets

if "%TOOLSET%" == "v141" (
    SET TOOLSET_VERSION=14.16
)

if "%TOOLSET%" == "v142" (
    SET TOOLSET_VERSION=14.29
)

if "%TOOLSET%" == "v143" (
    SET TOOLSET_VERSION=14.44
)

cd "C:\\Program Files\\Microsoft Visual Studio\\2022\\Enterprise\\VC\Auxiliary\\Build"

call vcvarsall.bat %VCVARS% -vcvars_ver=%TOOLSET_VERSION%

cd %CURRENT_DIR%

cd ..\openssl

nmake clean

perl Configure %CONF_TARGET% no-tests no-unit-test /MT 

nmake

SET PATH=%SAVED_PATH%

cd %CURRENT_DIR%