CPPFLAGS := `pkg-config --cflags --libs gtk+-3.0 webkit2gtk-4.0` -lstdc++

CC := gcc
GPP := g++

all: webview.o
	$(CC) -c main.c -o main.o
	$(GPP) main.o webview.o $(CPPFLAGS) -o main

webview.o:
	$(GPP) -c webview.cc $(CPPFLAGS) -o webview.o

clean:
	rm -rf *.o
