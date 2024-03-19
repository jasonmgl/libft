# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jmougel <jmougel@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/09 15:38:10 by jmougel           #+#    #+#              #
#    Updated: 2024/03/19 06:27:19 by jmougel          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#VAR**************************************#

NAME				=	libft.a

CC					=	gcc

CFLAGS				=	-Wall -Werror -Wextra -I include/ -I ../libft/include

HEADER				=	include/libft.h

RM					=	rm -rf

#DIR**************************************#

SRCS_D				=	srcs/

OBJ_D				=	.obj/

FT_PRINTF_D			=	ft_printf/

OBJ_FT_PRINTF_D		=	.obj_ft_printf/

GNL_D				=	get_next_line/

OBJ_GNL_D			=	.obj.get_next_line/

LST_D				=	lst/

OBJ_LST_D			=	.obj_lst/


#SRCS*************************************#

SRC					=	${SRCS_D}ft_atoi.c \
						${SRCS_D}ft_bzero.c \
						${SRCS_D}ft_calloc.c \
						${SRCS_D}ft_isalnum.c \
						${SRCS_D}ft_isalpha.c \
						${SRCS_D}ft_isascii.c \
						${SRCS_D}ft_isdigit.c \
						${SRCS_D}ft_isprint.c \
						${SRCS_D}ft_itoa.c \
						${SRCS_D}ft_memchr.c \
						${SRCS_D}ft_memcmp.c \
						${SRCS_D}ft_memcpy.c \
						${SRCS_D}ft_memmove.c \
						${SRCS_D}ft_memset.c \
						${SRCS_D}ft_putchar_fd.c \
						${SRCS_D}ft_putendl_fd.c \
						${SRCS_D}ft_putnbr_fd.c \
						${SRCS_D}ft_putstr_fd.c \
						${SRCS_D}ft_split.c \
						${SRCS_D}ft_strchr.c \
						${SRCS_D}ft_strdup.c \
						${SRCS_D}ft_striteri.c \
						${SRCS_D}ft_strjoin.c \
						${SRCS_D}ft_strlcat.c \
						${SRCS_D}ft_strlcpy.c \
						${SRCS_D}ft_strlen.c \
						${SRCS_D}ft_strmapi.c \
						${SRCS_D}ft_strncmp.c \
						${SRCS_D}ft_strnstr.c \
						${SRCS_D}ft_strrchr.c \
						${SRCS_D}ft_strtrim.c \
						${SRCS_D}ft_substr.c \
						${SRCS_D}ft_tolower.c \
						${SRCS_D}ft_toupper.c

SRC_LST				=	${LST_D}ft_lstadd_back.c \
						${LST_D}ft_lstadd_front.c \
						${LST_D}ft_lstclear.c \
						${LST_D}ft_lstdelone.c \
						${LST_D}ft_lstlast.c \
						${LST_D}ft_lstnew.c \
						${LST_D}ft_lstsize.c \
						${LST_D}ft_lstiter.c \
						${LST_D}ft_lstmap.c

SRC_PRINTF			=	${FT_PRINTF_D}ft_functions.c \
						${FT_PRINTF_D}ft_printf.c

SRC_GNL				=	${GNL_D}get_next_line_utils.c \
						${GNL_D}get_next_line.c

#OBJS*************************************#

OBJ					=	${patsubst ${SRCS_D}%.c, ${OBJ_D}%.o, ${SRC}}

OBJ_FT_PRINTF		=	${patsubst ${FT_PRINTF_D}%.c, ${OBJ_FT_PRINTF_D}%.o, ${SRC_PRINTF}}

OBJ_GNL				=	${patsubst ${GNL_D}%.c, ${OBJ_GNL_D}%.o, ${SRC_GNL}}

OBJ_LST				=	${patsubst ${LST_D}%.c, ${OBJ_LST_D}%.o, ${SRC_LST}}

#RULES*************************************#

all:					${NAME}

${OBJ_D}%.o:			${SRCS_D}%.c ${HEADER} Makefile
	${CC} ${CFLAGS} -c $< -o $@

${OBJ_FT_PRINTF_D}%.o:	${FT_PRINTF_D}%.c ${HEADER} Makefile
	${CC} ${CFLAGS} -c $< -o $@

${OBJ_GNL_D}%.o:		${GNL_D}%.c ${HEADER} Makefile
	${CC} ${CFLAGS} -c $< -o $@

${OBJ_LST_D}%.o:		${LST_D}%.c ${HEADER} Makefile
	${CC} ${CFLAGS} -c $< -o $@

${NAME}:				${OBJ_D} ${OBJ_FT_PRINTF_D} ${OBJ_GNL_D} ${OBJ_LST_D} ${OBJ} ${OBJ_FT_PRINTF} ${OBJ_GNL} ${OBJ_LST} ${HEADER} Makefile
	ar rc $@ ${OBJ} ${OBJ_FT_PRINTF} ${OBJ_GNL} ${OBJ_LST}

${OBJ_D}:
	mkdir -p $@

${OBJ_FT_PRINTF_D}:
	mkdir -p $@

${OBJ_GNL_D}:
	mkdir -p $@

${OBJ_LST_D}:
	mkdir -p $@

clean:
	${RM} ${OBJ_D}
	${RM} ${OBJ_FT_PRINTF_D}
	${RM} ${OBJ_GNL_D}
	${RM} ${OBJ_LST_D}

fclean:					clean
	${RM} ${NAME}

re:						fclean all

#PHONY*************************************#

.PHONY:	all clean fclean re