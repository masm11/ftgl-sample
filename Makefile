#
#

all: offscreen

offscreen: offscreen.c
	gcc -ggdb3 -O0 -Wall -Wextra `pkg-config --cflags --libs ftgl` -o $@ offscreen.c /usr/lib/libavcodec.so.58 /usr/lib/libswscale.so.5 /usr/lib/libavutil.so.56 -lGL -lGLU -lglut -lpng -lm

clean:
	rm -f offscreen tmp.mpg

run:
	./offscreen 1 120 512 384 6
	for i in $$(seq 0 9); do mv tmp.$$i.png tmp.00$$i.png; done
	for i in $$(seq 10 99); do mv tmp.$$i.png tmp.0$$i.png; done
	convert tmp.???.png tmp.gif
	rm -fr tmp.???.png
