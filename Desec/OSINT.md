Esse script é uma ferramenta simples de busca automatizada. Ele utiliza o navegador (no caso, o `firefox`) para fazer buscas no Google sobre um alvo específico (o valor fornecido como argumento ao script), concentrando-se em sites específicos.
```
#!/bin/bash
SEARCH="firefox"
ALVO="$1"
echo "Pesquisa no Pastebin"
$SEARCH "https://google.com/search?q=site:pastebin.com+$ALVO" 2> /dev/null
echo "Pesquisa no Trello"
$SEARCH "https://google.com/search?q=site:trello.com+$ALVO" 2> /dev/null
echo "Pesquisa nos arquivos"
$SEARCH "https://google.com/search?q=site:$ALVO+ext:php+OR+ext:asp+OR+ext:txt" 2> /dev/null
```
para executar basta voce executar o arquivo "ghdb.sh" (./ghdb.sh site.com.br), dessa forma ele fara uma busca completa pelo site desejado 