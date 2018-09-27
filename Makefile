ENTRYPOINT=./src/broilerplate.cr
EXECUTABLE_NAME=broil

all: ./src/**/*.cr
	crystal build $(ENTRYPOINT) -o broil