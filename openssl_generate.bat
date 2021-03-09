@echo off
echo Generating Root CA.
openssl req -x509 -days 356 -new -keyout root.key -out root.cer -config openssl_root.conf

echo Registering Root CA
certutil -enterprise -f -v -AddStore "Root" "./root.cer"

echo Generating Local CA.
openssl req -nodes -new -keyout localhost.key -out localhost.csr -config openssl_localhost.conf
openssl x509 -days 356 -req -in localhost.csr -CA root.cer -CAkey root.key -set_serial 123 -out localhost.cer -extfile openssl_localhost.conf -extensions x509_ext
