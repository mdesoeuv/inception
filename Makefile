# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdesoeuv <mdesoeuv@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/05 11:49:57 by mdesoeuv          #+#    #+#              #
#    Updated: 2022/04/22 11:47:58 by mdesoeuv         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME := Inception

DOMAIN_NAME := mdesoeuv.42.fr

USER := mdesoeuv

all :	$(NAME)

$(NAME) :
			mkdir -p /home/$(USER)/data/DB
			mkdir -p /home/$(USER)/data/wordpress
			chmod -R 755 /home/$(USER)/data

			docker-compose -f srcs/docker-compose.yml up -d --build

start	:	
			docker-compose -f srcs/docker-compose.yml start

stop	:	
			docker-compose -f srcs/docker-compose.yml stop

down	:
			docker-compose -f srcs/docker-compose.yml down
			
up		:
			docker-compose -f srcs/docker-compose.yml up -d

restart	:	
			docker-compose -f srcs/docker-compose.yml down
			docker-compose -f srcs/docker-compose.yml up -d

clean	:	
			docker-compose -f srcs/docker-compose.yml down --volumes
			sudo rm -rf /home/$(USER)/data/DB
			sudo rm -rf /home/$(USER)/data/wordpress

fclean	:	clean
			docker image rm -f mariadb:v1.0 nginx:v1.0 wordpress:v1.0

logs	:
			docker-compose -f srcs/docker-compose.yml logs

prune	:
			docker volume prune --force
			docker system prune --force
			
re		:	fclean all

.PHONY	: clean fclean all re start stop restart prune up down logs
