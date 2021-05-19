from graphics import *
import socket

SIZE = 25
TILES = 16
HOST = '127.0.0.1'  # The server's hostname or IP address
PORT = 65435        # The port used by the server


win = GraphWin("PhPix Viewer", TILES*SIZE, TILES*SIZE)
win.setBackground(color_rgb(127, 127, 127))

r = []
for i in range(TILES*TILES):
    r.append(Rectangle(Point(SIZE * (i % TILES), SIZE * int(i / TILES)), Point(SIZE*(i % TILES) + SIZE, SIZE * int(i / TILES)+SIZE)))
    r[i].setFill(color_rgb(i, i, i))
    # r[i].setOutline(color_rgb(i, i, i))
    r[i].draw(win)
win.getKey()  # Pause to view result


s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))

while True:
    s.sendall(b'Hello, world')
    data = s.recv(4096)
    G = data.decode("ascii").split()
    for i in range(0, len(G), 2):
        pixel = int(G[i][1:])
        px_val = int(G[i+1][1:])
        r[pixel].setFill(color_rgb(px_val, px_val, px_val))
    k = win.getKey()
    if k == 'q':
        s.close()
        win.close()
        quit()


