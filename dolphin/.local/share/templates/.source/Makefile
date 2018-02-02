NAME =
CC = gcc
CFLAGS = -Wall -Wextra -Werror -ansi -pedantic-errors
CPPFLAGS = -MMD -Ilibft/include
LDFLAGS = -Llibft
LDLIBS = -lft
VPATH = src
SRCS = main.c
OBJS := $(SRCS:%.c=$(VPATH)/%.o)
DEPS := $(OBJS:.o=.d)

all: libft $(NAME)

libft:
	$(MAKE) -C $@

$(NAME): $(OBJS) libft/libft.a

$(OBJS): Makefile

clean:
	$(RM) $(OBJS) $(DEPS)
	$(MAKE) -C libft $@

fclean: clean
	$(RM) $(NAME)
	$(MAKE) -C libft $@

re: fclean all

.PHONY: clean libft

-include $(DEPS)
