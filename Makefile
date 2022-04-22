# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdesoeuv <mdesoeuv@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/05 11:49:57 by mdesoeuv          #+#    #+#              #
#    Updated: 2022/04/22 09:53:13 by mdesoeuv         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME := Inception

all :	$(NAME)

$(NAME) :
			mkdir -p /home/$(USER)/data/DB
			mkdir -p /home/$(USER)/data/wordpress
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
			docker-compose -f srcs/docker-compose.yml up -d --build
			docker-compose -f srcs/docker-compose.yml down --volume

clean	:	
			docker-compose -f srcs/docker-compose.yml down --volumes
			rm -rf /home/$(USER)/data/DB
			rm -rf /home/$(USER)/data/wordpress

fclean	:	clean
			docker image rm -f srcs_mariadb srcs_nginx srcs_wordpress
			rm -rf /home/$(USER)/data/DB
			rm -rf /home/$(USER)/data/wordpress

prune	:
			docker volume prune --force
			docker system prune --force
			
re		:	fclean all

.PHONY	: clean fclean all re start stop restart prune up down
