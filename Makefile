.PHONY: all clean
all: lander_game

lander_game:
	g++ lander.cpp -lncursesw -std=c++11 -pthread -o lander_game

install: lander
	mkdir -p ${BIN_DIR}
	install -c -m 755 lander $(BIN_DIR)

clean:
	rm -f lander_game
