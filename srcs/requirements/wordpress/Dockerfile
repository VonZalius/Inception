FROM php:7.4-fpm

# Installer les extensions PHP nécessaires
RUN docker-php-ext-install mysqli

# Installer les outils nécessaires pour le diagnostic
RUN apt-get update && apt-get install -y procps vim

# Copier les fichiers de configuration PHP-FPM
COPY www.conf /usr/local/etc/php-fpm.d/www.conf

# Copier les fichiers de WordPress
COPY html /var/www/html

# Changer les permissions des fichiers WordPress
RUN chown -R www-data:www-data /var/www/html

EXPOSE 9000

# Commande pour démarrer PHP-FPM
CMD ["php-fpm"]

