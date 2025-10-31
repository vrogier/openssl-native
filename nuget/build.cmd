
echo %time% =============== OpenSSL Nuget Buld Start

set OUTPUT_FOLDER=.\output

IF EXIST "%OUTPUT_FOLDER%" (
    rmdir "%OUTPUT_FOLDER%" /s /q
)

mkdir .\output
xcopy /y /s /e .\sources\*.* %OUTPUT_FOLDER%

echo %time% =============== Build OPENSSL
call .\build-openssl.cmd

echo %time% =============== Create Nuget
call .\nuget-pack.cmd

echo %time% =============== OpenSSL Nuget Buld End