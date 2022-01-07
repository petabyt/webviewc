CPPFLAGS=`pkg-config --cflags --libs gtk+-3.0 webkit2gtk-4.0` -lstdc++

CC=gcc
GPP=g++

main: webview.o main.o
	$(GPP) main.o webview.o $(CPPFLAGS) -o main

main.o: main.c
	$(CC) -c main.c -o main.o

webview.o: webview.cc
	$(GPP) -c webview.cc $(CPPFLAGS) -o webview.o

webview.cc:
	wget https://raw.githubusercontent.com/webview/webview/master/webview.h -O webview.cc

clean:
	rm -rf *.o main
