## About

This package is a binary distribution of [OpenSSL](https://www.openssl.org/) LTS version 3.0.16.

It can be used in C/C++ projects but also in .Net projects (.NET Framework 2-4, .NET core 2-3, .NET 5+).

It ships OpenSSL components (targeting both x86 and x64 architectures) : 
- Dynamic libraries 
- Static libraries 
- PDB files
- OpenSSL executables

OpenSSL executables and dynamic libraries have no external runtime dependencies (except OS libraries) as they statically link against the MS C runtime (vc143).
Specific static libraries are provided for the following runtimes: vc141 (VS 2017), vc142 (VS 2019), vc143 (VS 2022).

It has been built from the [OpenSSL 3.0.16 sources](https://github.com/openssl/openssl/releases/tag/openssl-3.0.16) using the following environment:
- Windows 11 24H2 (build 26100.3476)
- Visual Studio 2022 17.11.15
- NASM 2.16.01
- Strawberry Perl 5.32.1.1
- Perl module Text::Template 1.61

Build scripts are located in the GIT repository [openssl-native](https://github.com/vrogier/openssl-native)

## C/C++ projects

OpenSSL libraries matching the targeted platform are automatically copied to projects output folder.

### Configuring OpenSSL libraries linkage mode

By default, after package installation, default behavior is to link against OpenSSL dynamic libraries.

To change this behavior, you can go to your project Properties under 'Configuration Properties' > 'Referenced Packages' > 'OpenSSL' > 'Linkage':
- 'Dynamic Library (DLL)' : default behavior. It configures your project to link against OpenSSL dynamic libraries using import libraries.
- 'Static' : It configures your project to link against OpenSSL static libraries that will be embedded in your library/executable.

OpenSSL static libraries matching the targeted platform and toolsets are automatically selected when building projects.

## .Net projects

For Legacy .NET Framework projects, OpenSSL libraries matching the targeted platform are automatically copied to the projects output folder.

For Legacy .NET Core and .NET5+, All OpenSSL libraries are automatically copied to projects output folder under a folder "runtimes" with a subfolder for each platforms ("win-x86", "win-x64").

## Package content
```
   |-- bin
   |   |-- win-x86
   |   |   |-- native
   |   |       |--   openssl x86 executable and pdb
   |   `-- win-x64
   |       |-- native
   |           |--   openssl x86 executable and pdb   
   |-- build
   |   |-- native
   |   |   |-- msbuild assets for C/C++ projects
   |   `--   msbuild assets for .Net projects   
   |-- docs
   |   |--   documentation and license
   |-- images
   |   |--   images files
   |-- include
   |   |-- openssl
   |       |-- C headers
   |-- lib
   |   |-- win-x86
   |   |   |-- native
   |   |       |-- openssl x86 static (runtimes specific) and import libraries
   |   `-- win-x64
   |       |-- native
   |           |-- openssl x64 static (runtimes specific) and import libraries
   |-- runtimes
   |   |-- win-x86
   |   |   |-- native
   |           |- openssl x86 shared libraries and pdbs
   |   |-- win-x64
   |       |-- native
   |           |- openssl x64 shared libraries and pdbs
   
```

## Notes

OpenSSL.exe is also included in the packages for optional utilitarian purposes. 
It is located in the nuget package folder under '\bin\\[win-x86|win-x64]\native'.

## License

OpenSSL version 3.0.16 is licensed under the open source [Apache License 2.0](https://github.com/openssl/openssl/blob/openssl-3.0/LICENSE.txt).
A local copy of the license (license.txt) can be found in the nuget package folder '/docs'




