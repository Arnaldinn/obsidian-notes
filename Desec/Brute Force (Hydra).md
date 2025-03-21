
O **Hydra** é uma ferramenta de **força bruta** usada para testar autenticação em diversos serviços, como SSH, RDP, SMB, FTP, HTTP, MySQL, entre outros.

```
hydra -v -L usuários.txt -P senhas.txt <SERVIÇO>://<IP>:<PORTA>
```

`-L usuários.txt` → Arquivo com a lista de usuários.
`-P senhas.txt` → Arquivo com a lista de senhas.
`<SERVIÇO>` → O protocolo (ex: ssh, ftp, smb, http, mysql).
`<IP>` → O alvo.
`<PORTA>` → A porta do serviço.

Exemplos de uso:

```
hydra -l root -P /usr/share/wordlists/rockyou.txt ssh://192.168.1.100 -t 4
```

`-t 4` → Usa 4 threads (aumenta a velocidade do ataque).