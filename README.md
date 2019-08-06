Unofficial WhatsApp Web client for Ubuntu 18.04 ( May not work on other versions, your feedback is precious.)

INSTALLATION PROCEDURE
======================

1. Go to folder containing install.sh script
2. Right click and choose 'Open in terminal'
3. Run the following commands:
```
chmod +x install.sh 
./install.sh
``` 


And it's done!
Hopefully now you will be able to see WhatsApp Web in the app launcher.

The `main.py` file contains the source code of the executable file.
To build the app, run following commands:-
```
cython3 --embed -o main.c main.py
gcc -Os -I /usr/include/python3.6m -o whatsapp main.c -lpython3.6m -lpthread -lm -lutil -ldl -no-pie
```
