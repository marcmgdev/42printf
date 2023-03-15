# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmiro-go <mmiro-go@student.42barcelona.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/08 10:31:27 by mmiro-go          #+#    #+#              #
#    Updated: 2023/03/08 11:42:55 by mmiro-go         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
LIBDIR = /Users/mmiro-go/Cursus/repoprintf
LIBNAME = libft
CC = gcc
CFLAGS = -Wall -Wextra -Werror

INCLUDES = printf.h libft.h
SRCS = ft_printchar.c ft_printdecimal.c ft_printhexa.c ft_printstr.c printpercent.c
OBJS = $(SRCS:.c=.o)

$(NAME): $(OBJS) $(INCLUDES)
	$(AR) rcs $(NAME) $(OBJS) -L$(LIBDIR) -l$(LIBNAME)

all: $(NAME)

bonus: $(OBJS) 
	$(AR) rcs $(NAME) $(OBJS) -L$(LIBDIR) -l$(LIBNAME)

%.o: %.c $(INCLUDES)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

rebonus: fclean bonus

.PHONY: all clean fclean re rebonus
