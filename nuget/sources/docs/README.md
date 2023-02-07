## About

This package is a binary distribution of [OpenSSL](https://www.openssl.org/) LTS version 1.1.1t.

It can be used in C/C++ projects but also in .Net projects (.NET Framework 2-4, .NET core 2-3, .NET 5+).

It ships OpenSSL components (targeting both x86 and x64 architectures) :
- Dynamic libraries 
- Static libraries 
- PDB files
- OpenSSL executables

These libraries have no external runtime dependencies (except OS libraries) as they statically link against the MS C runtime (vc143).

It has been built from the [OpenSSL 1.1.1t sources](https://github.com/openssl/openssl/releases/tag/OpenSSL_1_1_1t) using the following environment:
- Windows 11 22H2 (build 22621.1105)
- Visual Stutdio 2022 17.4.4
- NASM 2.16.01
- Strawberry Perl 5.32.1.1
- Perl module Text::Template 1.61

## C/C++ projects

OpenSSL librairies matching the targeted platform are automatically copied to projects output folder.

### Confuring OpenSSL libraries linkage mode

By default, after package intallation, default behavior is to link against OpenSSL dynamic libraries.

To change this behavior, you can go to your project Properties under 'Configuration Properties' > 'Referenced Packages' > 'OpenSSL' > 'Linkage':
- 'Dynamic Library (DLL)' : default behavior. It configures your project to link against OpenSSL dynamic libraries using import libraries.
- 'Static' : It configures your project to link against OpenSSL static libraries that will be embedded in your libary/executable.

## .Net projects

For Legacy .NET Framework projects, OpenSSL librairies matching the targeted platform are automatically copied to projects output folder.

For Legacy .NET Core and .NET5+, All OpenSSL librairies are automatically copied to projects output folder under a folder "runtimes" with a subfolder for each platforms ("win-x86", "win-x64").

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
   |   |       |-- openssl x86 static and import libraries
   |   `-- win-x64
   |       |-- native
   |           |-- openssl x64 static and import libraries
   |-- runtimes
   |   |-- win-x86
   |   |   |-- native
   |           |- openssl x86 shared libraries and pdbs
   |   |-- win-x64
   |       |-- native
   |           |- openssl x64 shared libraries and pdbs
   
```

## Notes

OpenSSL.exe is also included in the packages for optional utilitary purpose. 
It is located in the nuget package folder under '\bin\\[win-x86|win-x64]\native'.

## License

OpenSSL version 1.1.1t is licensed under the open source [dual OpenSSL and SSLeay license](https://https://github.com/openssl/openssl/blob/OpenSSL_1_1_1s/LICENSE).
A local copy of the licence (license-openssl-ssleay.txt) can be found in the nuget package folder '/docs'



