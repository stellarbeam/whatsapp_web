Unofficial WhatsApp Web client for Linux (Tested on Ubuntu 18.04 and 19.04, Manjaro Linux)

INSTALLATION PROCEDURE
-

1. Go to folder containing install.sh script
2. Right click and choose 'Open in terminal'
3. Run the following commands:
```
chmod +x install.sh 
./install.sh
```

4. Restart

And it's done!
Hopefully now you will be able to see WhatsApp Web in the app launcher.

BUILDING FROM SOURCE
-
The `main.py` file contains the source code of the executable file.
The code implements a WebView of the official WhatsApp Web website, presenting this as a standalone app to make life easier.
To build the app, run following commands:-
```
cython3 --embed -o main.c main.py
gcc -Os -I /usr/include/python3.6m -o whatsapp main.c -lpython3.6m -lpthread -lm -lutil -ldl -no-pie
```
Remember to replace `python3.6m` with the version available on your system. Simply check your `/usr/include/` directory to find out the version your system is using.

Update:
-
Now the `install.sh` builds the binary from source by itself, for better compatibility. Please make sure you have `cython3` installed.
