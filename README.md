# Introduction

:warning: *This is not an official mirror of the XML-RPC source code this fork is intended to provide a CMake enabled environment to build this lib on Windows*


This is the source code for XML-RPC for C/C++, called Xmlrpc-c for short.

XML-RPC for C/C++ is programming libraries and related tools to help you
write an XML-RPC server or client in C or C++.

Documentation for the package is at

  http://xmlrpc-c.sourceforge.net/doc

See the Xmlrpc-c website at:

  http://xmlrpc-c.sourceforge.net/


# PREREQUISITES

To build a useful Xmlrpc-c client library, you'll need to have at
least one HTTP library.  Xmlrpc-c knows how to use W3C Libwww (Version
5.3.2 or newer), Curl, and Wininet.  The configurator gives you the
option of building libraries that use any or all of these, and
defaults to every one you appear to have installed.  If you don't
appear to have any installed, the configurator causes the build to
omit client facilities altogether.

Information about W3C Libwww, including how to get it are at
<http://www.w3.org/Library>.

For Curl, see <http://curl.haxx.se>.

Wininet comes with Windows, and isn't available for any other platform.

You also need an XML parser/builder library.  An old version of Expat
is included in the package and used by default, so there's no actual
prerequisite here.  But if you separately obtain Libxml2, you can
configure the build to use that instead.  There's no really pressing
reason to do that, though.

:zap: We do recommend the usage of [Curl](http://curl.haxx.se)


# BUILDING, INSTALLING

## Building Curl under windows

The recommended way is to use the DLL instead of the static library. Please carefully read the [Curl](https://github.com/curl/curl) documentation especially ``winbuild/BUILD.WINDOWS.txt``
In case you are using a git based build run ``buildconf.bat`` from the Curl root folder first. The recommended shell for ``nmake`` is the *Visual Studio command prompt Shell*

```
nmake /f Makefile.vc mode=dll
```

## Linking against Curl on windows

At the moment the ``FindCurl.cmake`` is not capable to find the ``libcurl`` correctly on windows. To achieve this the recommended way is to create a folder ``%PROGRAMFILES%\CURL`` and copy the curl build artifacts to this location. The result should look like this:

```

   |
   +-- bin
   |
   +-- include
   |
   +-- lib
```
After this CMake needs to be instrumented to search this location for headers and libraries. This is done by defining ``CMAKE_PREFIX_PATH=%PROGRAMFILES%\CURL``. For the CMake GUI on Windows you have to use the expanded PATH.

:warning: If you want to use the static version of the Curl library you have to pass ``-DCURL_STATICLIB`` to the compile otherwise some symbols are missing during linking. Check this [StackOverflow](https://stackoverflow.com/a/12912088/695442) for reference.

# ADDITIONAL INFORMATION

See the doc/ directory of the source tree for information about the
source code.  User documentation is on the web, as described above.
