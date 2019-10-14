import socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
host = "127.0.0.1" # Server address
port = 12345 # server port

s.connect((host, port))
print(s.recv(1024))
s.send(b"Hello Server")
s.close()