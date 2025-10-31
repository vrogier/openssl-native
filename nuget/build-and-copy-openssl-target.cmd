SET ARCH=%1
SET TOOLSET=%2

echo %time% =============== Building OPENSSL %ARCH% %TOOLSET%
call .\build-openssl-target.cmd %ARCH% %TOOLSET%

echo %time% =============== Copying OPENSSL %ARCH% %TOOLSET%
call .\copy-openssl-target.cmd %ARCH% %TOOLSET%
