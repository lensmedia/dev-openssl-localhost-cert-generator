# dev-openssl-localhost-cert-generator
Generates (and stores) root/local certs for https development (win).

## Requires
OpenSSL installation https://wiki.openssl.org/index.php/Binaries, though might be already there. Just give it a go.

## How to use?

1. Add/change to your IP in `openssl_localhost.conf` its `alt_names` section.
2. Run `openssl_generate.bat` as administrator.
3. Enter (same whatever you like) password thrice.
4. Profit

## Examples

### Apache
```
Listen 9301
<VirtualHost *:9301>
    ServerName 192.168.1.250
    
    SSLEngine on
    SSLCertificateFile "D:/Webserver/localhost.cer"
    SSLCertificateKeyFile "D:/Webserver/localhost.key"
    
    ...
```

### Webpack DevServer
```
module.exports = merge(common, {
    devServer: {
        https: {
            key: fs.readFileSync('../../localhost.key'),
            cert: fs.readFileSync('../../localhost.cer'),
            ca: fs.readFileSync('../../root.cer')
        },
        
        ...
```
