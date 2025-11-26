Evidência 1

Consiste basicamente em conseguir descobrir o sistema operacional do sistema e com isso foi apenas executar um nmap e descobrir qual o sistema que está em execução 

![[Pasted image 20250716140413.png]]

Resposta: windows7

Evidência 2

Precisei seguir o caminho do link "https://www.100security.com.br/ms17-010" que mostra que é preciso explorar a vulnerabilidade do eternalblue.

Uma das primeiras coisas que eu precisei fazer, que é mostrado no link, foi ajustar o **Wine** para permitir que o módulo `eternalblue_doublepulsar` criasse o payload DLL.

Segue como que ficou o metasploit após todas as alterações necessárias:

![[Pasted image 20250724162558.png]]

IMPORTANTE: Essa maquina está em 32 bits (x86), se for executada em x64, não vai funcionar !
IMPORTANTE: Em caso de perca de sessão recente, utilizar o **spoolsv.exe** como PROCESSINJECT !

Evidencia encontrada em **C:\Users\Suporte\Desktop**

![[Pasted image 20250724162940.png]]

Evidência 3

Na terceira evidencia é necessário encontrar uma troca de mensagens entre o suporte e a gerência e nesse caso foi necessário realizar uma busca no diretório **C:\Foxmail 7.2\Backup** onde foi encontrado 3 arquivos com a extensao *.eml* que é usada para arquivos que armazenam **mensagens de e-mail**.

![[Pasted image 20250730152643.png]]

E após olhar no arquivo "Confingencial" foi possível encontrar a key da evidência 3 e também o login e a senha do Administrados, que são pedidos na evidência 4.

![[Pasted image 20250730153018.png]]

Evidência 3 : c2906751b1d80ac441bc05c4f7d19a3b
Evidência 4 : USER: administrador PASS: S3rV@adm543#

![[Pasted image 20250812161135.png]]


Evidencia 5

Como a Desec estava com uns problemas na porta 3389 e o exercício necessitava que descemos um RDP na maquina, estão o chat deu a sugestão de abrirmos a porta 3389 manualmente utilizando uma serie de comandos, já com o acesso a maquina através do meterpreter.

```
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
```

```
netsh advfirewall firewall set rule group="Remote Desktop" new enable=Yes
```

```
sc config TermService start= auto
```

```
sc start TermService
netstat -ano | find "3389"
query session
```

Após a aplicação dos comandos e a abertura da porta 3389, foi possível realizar a extração da evidencia 

![[Pasted image 20250813152027.png]]

