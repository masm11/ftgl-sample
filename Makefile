#
#

all: offscreen

offscreen: offscreen.c
	gcc -ggdb3 -O0 -Wall -Wextra `pkg-config --cflags --libs ftgl` -o $@ offscreen.c /usr/lib/libavcodec.so.58 /usr/lib/libswscale.so.5 /usr/lib/libavutil.so.56 -lGL -lGLU -lglut -lpng -lm

clean:
	rm -f offscreen tmp.mpg

run:
	./offscreen 1 120 512 384 4
