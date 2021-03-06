#ifndef XMLRPC_WININET_TRANSPORT_H
#define XMLRPC_WININET_TRANSPORT_H

#include "xmlrpc-c/transport.h"

#ifdef __cplusplus
extern "C" {
#endif

extern struct xmlrpc_client_transport_ops xmlrpc_wininet_transport_ops;

xmlrpc_client_transport_ops* get_wininet_ops(void);


#ifdef __cplusplus
}
#endif
#endif
