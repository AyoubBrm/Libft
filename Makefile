# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abouram <abouram@student.1337.ma>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/30 12:55:06 by abouram           #+#    #+#              #
#    Updated: 2022/10/23 00:18:57 by abouram          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
FLAGS = -Wall -Wextra -Werror
NAME = libft.a
INC = libft.h

SRC = ft_isalpha.c ft_strlen.c ft_isprint.c ft_isdigit.c ft_isascii.c ft_isalnum.c ft_memmove.c ft_bzero.c ft_memcpy.c \
		ft_memset.c ft_strchr.c ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strncmp.c ft_tolower.c ft_toupper.c ft_strrchr.c \
		ft_memchr.c ft_calloc.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_strmapi.c\
		ft_striteri.c ft_itoa.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c 
		
BONUS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c  ft_lstadd_back_bonus.c ft_lstdelone_bonus.c\
		 ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

OBJ = $(SRC:.c=.o)

OBJS = $(BONUS:.c=.o )

%.o:%.c	$(INC)
	$(CC) $(FLAGS) -c $< -o $@
	
all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)
	
bonus: $(OBJS) $(OBJ)
	ar rcs $(NAME) $?

clean:
	rm -f $(OBJ) $(OBJS)

fclean:
	rm -f $(OBJ) $(NAME) $(OBJS)
	
re: fclean all

.PHONY : clean fclean re