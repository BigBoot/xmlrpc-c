bindir=@bindir@
prefix=@prefix@
libdir=@libdir@
includedir=@includedir@

Name:	     xmlrpc_server_pstream++
Description: XMLRPC C++ pstream-Server library
Version:     @XMLRPC_C_VERSION@

Requires.private:	xmlrpc_server++ xmlrpc_packetsocket xmlrpc++
Libs:			-L${libdir} -lxmlrpc_server_pstream++
Cflags:			-I${includedir}
