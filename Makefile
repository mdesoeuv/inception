# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdesoeuv <mdesoeuv@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/05 11:49:57 by mdesoeuv          #+#    #+#              #
#    Updated: 2022/04/12 19:16:19 by mdesoeuv         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME := Inception

all :	$(NAME)

$(NAME) :
			mkdir -p /Users/$(USER)/wordpress/DB
			mkdir -p /Users/$(USER)/wordpress/wordpress
			chmod 777 /Users/$(USER)/wordpress
			docker-compose -f srcs/docker-compose.yml up -d --build

start	:	
			docker-compose -f srcs/docker-compose.yml start

stop	:	
			docker-compose -f srcs/docker-compose.yml stop

clean	:	
			docker-compose -f srcs/docker-compose.yml down
			docker volume rm -f wp_db
			docker volume rm -f wp_files

fclean	:	clean
			docker image rm -f srcs_mariadb srcs_nginx srcs_wordpress
			rm -rf /Users/$(USER)/wordpress/DB
			rm -rf /Users/$(USER)/wordpress/wordpress
			docker volume prune --force
			docker system prune --force
			
re		:	fclean all

.PHONY	: clean fclean all re start stop
