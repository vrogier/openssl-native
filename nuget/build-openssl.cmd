
echo "Building OPENSSL x86"
call .\build-openssl_arch.cmd x86

echo "Copying OPENSSL x86"
call .\copy-openssl_arch.cmd x86

echo "Building OPENSSL x64"
call .\build-openssl_arch.cmd x64

echo "Copying OPENSSL x64"
call .\copy-openssl_arch.cmd x64

