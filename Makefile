##
## EPITECH PROJECT, 2024
## Makefile Root
## File description:
## MakeFile dans le fichier root
##

NAME = a.out
DEBUG = -g
CFLAGS += -Wall -Wextra -W -Iinclude

SRC =	./main.c

OBJ  	=	 $(SRC:.c=.o)

all: 	$(NAME)

$(NAME): $(OBJ)
		 gcc -o $(NAME) $(CFLAGS) $(OBJ)

clean || clear:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)

re:
		$(MAKE) fclean
		$(MAKE) all
