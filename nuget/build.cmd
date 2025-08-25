
echo "Init output folder"

set OUTPUT_FOLDER=.\output

IF EXIST "%OUTPUT_FOLDER%" (
    rmdir "%OUTPUT_FOLDER%" /s /q
)

mkdir .\output
xcopy /y /s /e .\sources\*.* %OUTPUT_FOLDER%

echo "Build OPENSSL"
call .\build-openssl.cmd

echo "Create nuget"
call .\nuget-pack.cmd
