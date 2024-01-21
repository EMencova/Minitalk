# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: emencova <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/06 11:12:09 by emencova          #+#    #+#              #
#    Updated: 2024/01/20 17:47:03 by emencova         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME_SERVER = server
NAME_CLIENT = client

SRCS_CLIENT = client.c
SRCS_SERVER = server.c
OBJS_CLIENT = ${SRCS_CLIENT:.c=.o}
OBJS_SERVER = ${SRCS_SERVER:.c=.o}
CC = gcc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

all:	${OBJS_SERVER} ${OBJS_CLIENT}
		${CC} ${CFLAGS} ${SRCS_SERVER} -o ${NAME_SERVER}
		${CC} ${CFLAGS} ${SRCS_CLIENT} -o ${NAME_CLIENT}

client: ${OBJS_CLIENT}
		${CC} ${CFLAGS} ${SRCS_CLIENT} -o ${NAME_CLIENT}

server: ${OBJS_SERVER}
		${CC} ${CFLAGS} ${SRCS_SERVER} -o ${NAME_SERVER}

clean:
			${RM} ${OBJS_CLIENT} ${OBJS_SERVER}

fclean: clean
			${RM} ${NAME_CLIENT} ${NAME_SERVER}

re: fclean all
