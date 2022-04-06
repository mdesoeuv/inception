# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdesoeuv <mdesoeuv@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/05 11:49:57 by mdesoeuv          #+#    #+#              #
#    Updated: 2022/04/06 16:19:54 by mdesoeuv         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME := Inception

all :	$(NAME)

$(NAME) :
			mkdir -p /Users/mehdi/42/Cursus_42/wordpress/DB
			mkdir -p /Users/mehdi/42/Cursus_42/wordpress/wordpress
			docker-compose -f srcs/docker-compose.yml up -d
			
clean	:	
			docker-compose -f srcs/docker-compose.yml down 

fclean	:	clean
			docker system prune
