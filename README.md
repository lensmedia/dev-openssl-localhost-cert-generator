# dev-openssl-localhost-cert-generator
Generates (and stores) root/local certs for https development (win).

## Requires
OpenSSL installation https://wiki.openssl.org/index.php/Binaries, though might be already there. Just give it a go.

## How to use?

1. Add/change to your IP in `openssl_localhost.conf` its `alt_names` section.
2. Run `openssl_generate.bat` as administrator.
3. Enter (same whatever you like) password thrice.
4. Profit
