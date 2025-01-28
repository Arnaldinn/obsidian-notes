- **Aprendendo a utilizar o python**

```
#!/usr/bin/python3
# meu primeiro print

print("Desec Security")

ip = input("Digite o seu IP: ")  # string
porta = int(input("Digite a sua porta: "))  # inteiro
ver = 1.1

print(f"Scan versão: {ver}")
print(f"Varredura no host: {ip} na porta {porta}")
```

- **import syn**
```
#!/usr/bin/python3
# meu primeiro print
import sys

ip = input("Digite o seu IP: ")  # Solicita o IP do usuário
porta = input("Digite a sua porta: ")  # Solicita a porta do usuário

print(f"Varrendo host {ip} na porta {porta}")
```

- **Import OS**
```
#!/usr/bin/python3
# meu primeiro print
import os

# Exibe uma mensagem de verificação
print("Verificando portas abertas...")

# Executa o comando netstat e mostra as portas abertas
os.system("netstat -nlpt")
```

- **Python Socket**
```                                                         
#!/usr/bin/python3
# meu primeiro print
import socket

ip = "localhost"
porta = 80

meusocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
res = meusocket.connect_ex((ip, porta))

if res == 0:
    print("Porta aberta")
else:
    print("Porta fechada")

# Fechar o socket
meusocket.close()
```

- **Portscan em python**
```
#!/usr/bin/python3
import socket
from ipaddress import ip_address

def scan_port(ip, port):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        # Define um timeout para evitar longas esperas
        s.settimeout(1)
        result = s.connect_ex((ip, port))
        return result == 0  # Retorna True se a porta estiver aberta

def port_scan(ip, start_port, end_port):
    open_ports = []

    for port in range(start_port, end_port + 1):
        if scan_port(ip, port):
            open_ports.append(port)  # Adiciona a porta aberta à lista

    return open_ports

if __name__ == "__main__":
    ip_input = input("Digite o IP para escanear: ")
    
    # Verifica se o IP é válido
    try:
        ip_address(ip_input)  # Isso valida se o IP é correto
    except ValueError:
        print("IP inválido.")
    else:
        start_port = int(input("Digite a porta inicial: "))
        end_port = int(input("Digite a porta final: "))
        
        open_ports = port_scan(ip_input, start_port, end_port)

        # Exibe apenas as portas abertas
        if open_ports:
            print("Portas abertas:")
            for port in open_ports:
                print(port)
        else:
            print("Nenhuma porta aberta encontrada.")

```

- **DNS Resolver em Python**

```
#!/usr/bin/python3
import socket
import sys

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Uso: python3 script.py <domínio>")
        sys.exit(1)

    host = sys.argv[1]

    try:
        ip = socket.gethostbyname(host)
        print(f"{host} ---> {ip}")
    except socket.gaierror:
        print(f"Erro: Não foi possível resolver o domínio {host}.")

```

