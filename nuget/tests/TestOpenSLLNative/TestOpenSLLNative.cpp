
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <openssl/err.h>
#include <openssl/ssl.h>

int main(int argc, char** argv)
{
    SSL_CTX* ctx = NULL;
    SSL* ssl = NULL;
    STACK_OF(SSL_CIPHER)* sk = NULL;
    const char* p;
    
    ctx = SSL_CTX_new(TLS_server_method());
    ssl = SSL_new(ctx);
    sk = SSL_get_ciphers(ssl);
    int i, n;

    for (i = 0, n = sk_SSL_CIPHER_num(sk); i < n; i++)
    {
        const SSL_CIPHER* c = sk_SSL_CIPHER_value(sk, i);
        p = SSL_CIPHER_get_name(c);
        printf("%s\n", p);
    }

    printf("found %d cihpers\n", n);

    SSL_CTX_free(ctx);
    SSL_free(ssl);

    return 0;
}
