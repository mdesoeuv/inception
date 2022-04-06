# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mdesoeuv <mdesoeuv@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/05 11:49:57 by mdesoeuv          #+#    #+#              #
#    Updated: 2022/04/06 15:12:38 by mdesoeuv         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME := Inception

$(NAME) :
			mkdir -p /DB
			mkdir -p /wordpress
			cd /srcs/ ; docker-compose up -d
			
clean	:	
			cd /srcs/ ; docker-compose down

fclean	:	clean
			docker system prune
