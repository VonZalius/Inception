FROM mariadb:10.5

# Copiez le fichier de configuration my.cnf dans le conteneur
COPY conf/my.cnf /etc/mysql/my.cnf

# Copiez le script d'initialisation dans le conteneur
COPY tools/init.sql /docker-entrypoint-initdb.d/

# Utilisez un volume pour persister les données de la base de données
VOLUME /var/lib/mysql

EXPOSE 3306

