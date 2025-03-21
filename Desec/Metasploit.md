**O que é um Exploit?

Um exploit é um código ou técnica que explora uma vulnerabilidade em um sistema, serviço ou software. O objetivo de um exploit é invadir, obter acesso não autorizado ou executar comandos no sistema alvo.


**MS08-067** (exploração de falha no SMB do Windows XP e Server 2003):
```
use exploit/windows/smb/ms08_067_netapi
```

**EternalBlue (MS17-010)** (exploração de falha no SMBv1 do Windows 7 e Server 2008):
```
use exploit/windows/smb/ms17_010_eternalblue
```

Um **exploit** sozinho **não define o que será feito** depois que a vulnerabilidade for explorada. Para isso, precisamos de um **payload**.

 **O que é um Payload?

Um **payload** é o código malicioso que será executado no sistema alvo depois que o exploit for bem-sucedido. Ele pode permitir **controle remoto**, **extração de informações**, **criação de backdoors**, entre outras ações.


**Meterpreter Reverse Shell** (acesso remoto ao sistema):
```
set PAYLOAD windows/meterpreter/reverse_tcp
```

**Shell Reverso Simples (cmd.exe no Windows):
```
set PAYLOAD windows/shell/reverse_tcp
```


| **Exploit**                                | **Payload**                                     |
| ------------------------------------------ | ----------------------------------------------- |
| **É o ataque** que explora uma falha.      | **É o que será executado** após o ataque.       |
| Garante acesso ao sistema vulnerável.      | Define **o que fazer** depois de ganhar acesso. |
| Exemplo: **MS08-067** (exploração de SMB). | Exemplo: **Meterpreter reverse shell**.         |

- Um **exploit** **quebra a segurança** e abre uma porta no sistema.
- Um **payload** **executa a ação desejada** após a invasão.
- **Exploit + Payload** = Acesso e controle sobre o sistema.

!!! **Backdoor** "Atenção!"
    Um **backdoor** (porta dos fundos) é um **método secreto** para obter acesso a um sistema, aplicativo ou rede sem passar pelos mecanismos normais de autenticação. Ele pode ser inserido por um atacante após comprometer um sistema ou pode ser um código oculto deixado pelo próprio desenvolvedor (intencionalmente ou não).









