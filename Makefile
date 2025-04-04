##
## EPITECH PROJECT, 2024
## Makefile Root
## File description:
## MakeFile dans le fichier root
##

FILES    =    main.c

OBJ        =    $(FILES:.c=.o)

EXEC    =    example

CFLAGS    =    -Wall -Wextra

TESTS_RUN    =    ./tester.sh

all:    $(EXEC)

$(EXEC):    $(OBJ)
	gcc -o $(EXEC) $(OBJ) $(CFLAGS)

tests_run:    all
	$(TESTS_RUN)

clean:
	rm -f $(OBJ)

fclean:    clean
	rm -f $(EXEC)

re: fclean all