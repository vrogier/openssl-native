SET CURRENT_DIR=%cd%

cd .\output

nuget.exe pack openssl-native.nuspec

cd %CURRENT_DIR%