import gi, os, sys

gi.require_version('Gtk', '3.0')
from gi.repository import Gtk

gi.require_version('WebKit2', '4.0')
from gi.repository import WebKit2

# cython3 --embed -o main.c main.py
# gcc -Os -I /usr/include/python3.6m -o WhatsApp_Web_2 main.c -lpython3.6m -lpthread -lm -lutil -ldl -no-pie
class PythonWebView:
    def __init__(self):
        window = Gtk.Window()
        window.set_title("WhatsApp Web")
        window.set_icon_from_file(self.get_resource_path("whatsapp.png"))

        self.wview = WebKit2.WebView()
        self.wview.load_uri('http://web.whatsapp.com')

        self.size_width=800
        self.size_height=600
        window.resize(self.size_width,self.size_height)
        window.add(self.wview)
        window.show_all()
        window.connect('delete-event',Gtk.main_quit)

    def get_resource_path(self,rel_path):
        dir_of_py_file = os.path.dirname(sys.executable)
        rel_path_to_resource = os.path.join(dir_of_py_file, rel_path)
        abs_path_to_resource = os.path.abspath(rel_path_to_resource)
        return abs_path_to_resource


if __name__ == "__main__":
    PythonWebView()
    Gtk.main()
