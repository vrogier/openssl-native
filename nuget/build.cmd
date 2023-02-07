
echo "Init output folder"
mkdir .\output
xcopy /y /s /e .\sources\*.* .\output\

echo "Build OPENSSL"
call .\build-openssl.cmd

echo "Create nuget"
call .\nuget-pack.cmd
