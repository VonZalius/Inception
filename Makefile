# Variables
DOCKER_COMPOSE = docker-compose -f srcs/docker-compose.yml
DOCKER = docker
IMAGES = srcs_mariadb srcs_wordpress srcs_nginx
VOLUMES = srcs_mariadb_data srcs_wordpress_data
NETWORK = srcs_wp_network

# Cibles
all: build up

build:
	$(DOCKER_COMPOSE) up --build -d

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

clean: down
	$(DOCKER) rmi $(IMAGES) || true
	$(DOCKER) volume rm $(VOLUMES) || true

fclean: clean
	$(DOCKER) system prune -af || true
	$(DOCKER) volume prune -f || true
	-$(DOCKER) network rm $(NETWORK) || true

re: fclean all

.PHONY: all build up down clean fclean re

