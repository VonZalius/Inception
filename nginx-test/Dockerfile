# Utilisez l'image officielle Nginx depuis Docker Hub
FROM nginx:latest

# Copiez votre fichier HTML et les certificats SSL dans le conteneur
COPY index.html /usr/share/nginx/html/index.html
COPY certs/nginx.crt /etc/ssl/certs/nginx.crt
COPY certs/nginx.key /etc/ssl/private/nginx.key

# Ajoutez une configuration personnalisée pour Nginx
RUN echo "server { listen 80; return 301 https://\$host\$request_uri; } server { listen 443 ssl; ssl_certificate /etc/ssl/certs/nginx.crt; ssl_certificate_key /etc/ssl/private/nginx.key; location / { root /usr/share/nginx/html; index index.html; } }" > /etc/nginx/conf.d/default.conf

# Exposez les ports 80 et 443
EXPOSE 80 443
