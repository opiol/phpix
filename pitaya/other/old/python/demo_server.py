


import socket
import random



HOST = ''  
PORT = 65435        # Port to listen on (non-privileged ports are > 1023)

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.bind((HOST, PORT))
    s.listen()
    conn, addr = s.accept()
    with conn:
        print('Connected by', addr)
        while True:
            data = conn.recv(1024)
            if not data:
                break
            S = ''
            for i in range(256):
                S = S + ('A{0} B{1} '.format(i, random.randint(1, 256)))
            conn.sendall(bytearray(S, encoding='ascii'))

