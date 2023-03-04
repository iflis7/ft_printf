NAME		= libftprintf.a

CC			= gcc
CFLAGS		= -Wall -Wextra -Werror 
RM			= rm -f
AR			= ar rcs

SRCS		= src/ft_printf.c src/ft_print_utils.c 
OBJS		= $(SRCS:.c=.o)

$(NAME):	$(OBJS)
			$(AR) $(NAME) $(OBJS)

all:		$(NAME)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all bonus clean fclean re

