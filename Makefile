LUAINC = -I/usr/local/include
LUALIB = -L/usr/local/bin -llua53
CFLAGS = -O2 -Wall

winfile.dll : winfile.c
	gcc --shared $(CFLAGS) $(LUAINC) -o $@ $^ $(LUALIB) -lshell32

clean :
	rm winfile.dll
