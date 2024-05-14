FROM nginx:alpine

COPY conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY certs/nginx.crt /etc/ssl/certs/nginx.crt
COPY certs/nginx.key /etc/ssl/private/nginx.key

RUN mkdir -p /etc/nginx/snippets && \
    echo 'fastcgi_split_path_info ^(.+\.php)(/.+)$;' > /etc/nginx/snippets/fastcgi-php.conf && \
    echo 'fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;' >> /etc/nginx/snippets/fastcgi-php.conf && \
    echo 'include fastcgi_params;' >> /etc/nginx/snippets/fastcgi-php.conf

EXPOSE 443

