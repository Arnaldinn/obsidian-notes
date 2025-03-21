O **`rpcclient`** é uma ferramenta do **Samba (SMB)** usada para **interagir com serviços RPC (Remote Procedure Call) em sistemas Windows**. Ele permite consultar informações sobre usuários, grupos e políticas de segurança de um domínio **sem precisar de privilégios elevados**.

```
─$ rpcclient -W orionscorp2 -U rlourdes 172.16.1.243
```

-W : organização que o IP pertence 
-U : O Usuário

Comandos que sao bom utilizar quando tiver o acesso no **rpcclient**:

```
enumdomusers
```
Isso retorna todos os usuários do domínio.

```
queryuser <RID_DO_USUARIO>
```
Mostra detalhes do usuário **RID 500** (Administrator).

```
enumdomgroups
```
Isso mostra todos os grupos do Active Directory.

```
querygroup <RID_DO_GRUPO>
```
Descobre quais usuários pertencem a um grupo específico.

```
querygroupmem
```
Mostra os membros que estão no grupo 




