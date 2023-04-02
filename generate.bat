cd out/

:: Creation d'une clef privée
openssl genrsa -out private.key 4096

:: Creation c'un CSR (Certificat Server Request)
openssl req -new -key private.key -out domain.csr -config ../detail.conf

:: Creation d'un certificat autosigné
openssl x509 -req -in domain.csr -key private.key -out domain.crt -days 365 -sha256

pause