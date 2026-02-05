# openssl-native

Home of the openssl-native nuget - Build scripts and tools to create OpenSSL x86/x64/ARM64 binary distributions for Microsoft Windows

Current Referenced openssl version is **3.5.5 LTS**

Current Referenced openssl-native nuget version is **3.5.5**

## Build Environment

Build machine must be x64.

### Visual Studio 2022

    Version 17.14.x64 with C/C++ toolsets x86, x64, ARM64
    
### NASM

    https://www.nasm.us/pub/nasm/releasebuilds/2.16.03/win64/nasm-2.16.03-installer-x64.exe	
    
    add NASM folder to the PATH environment variable

### PERL

    https://strawberryperl.com/download/5.32.1.1/strawberry-perl-5.32.1.1-64bit.msiDown
    
### PERL package Text::Template

    cpanm Text::Template

### Nuget

    The folder containing nuget.exe must be in the PATH environment variable.

    
## How to build openssl-native Nuget

### OpenSSL version

Update the submodule to the desired version:

```
cd openssl
git checkout $(OpenSSL_Version_Tag)
```
### Create the nuget

Run the build script:

```
cd nuget
build.cmd
```

The build script will generate a output folder with the content of the nuget and the nuget itself.
