FROM nginx:alpine

COPY conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY certs/nginx.crt /etc/ssl/certs/nginx.crt
COPY certs/nginx.key /etc/ssl/private/nginx.key

# Create the directory and the fastcgi-php.conf file
RUN mkdir -p /etc/nginx/snippets && \
    echo 'fastcgi_split_path_info ^(.+\.php)(/.+)$;' > /etc/nginx/snippets/fastcgi-php.conf && \
    echo 'fastcgi_index index.php;' >> /etc/nginx/snippets/fastcgi-php.conf && \
    echo 'include fastcgi.conf;' >> /etc/nginx/snippets/fastcgi-php.conf

