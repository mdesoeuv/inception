# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdesoeuv <mdesoeuv@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/05 11:49:57 by mdesoeuv          #+#    #+#              #
#    Updated: 2022/04/08 10:49:01 by mdesoeuv         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME := Inception

all :	$(NAME)

$(NAME) :
			mkdir -p /Users/mdesoeuv/wordpress/DB
			mkdir -p /Users/mdesoeuv/wordpress/wordpress
			docker-compose -f srcs/docker-compose.yml up -d

start	:	
			docker-compose -f srcs/docker-compose.yml start

stop	:	
			docker-compose -f srcs/docker-compose.yml stop

clean	:	
			docker-compose -f srcs/docker-compose.yml down
			docker volume rm -f srcs_wp_db srcs_wp_files

fclean	:	clean
			docker image rm -f srcs_mariadb srcs_nginx srcs_wordpress
			rm -rf /Users/mdesoeuv/wordpress/DB
			rm -rf /Users/mdesoeuv/wordpress/wordpress
#docker image rm -f mariadb_img nginx_img wordpress_img
			
re		:	fclean all

.PHONY	: clean fclean all re start stop
