
OSINT (*Open Source Intelligence*) é o processo de coletar informações públicas sobre um alvo utilizando apenas fontes abertas.  
É uma das etapas principais de Reconhecimento em operações de Red Team e Pentest.

Seu objetivo é encontrar:

- superfícies de ataque
- sistemas expostos
- credenciais vazadas
- dados sensíveis
- informações sobre funcionários e estrutura organizacional

---

## Script básico (Desec)

Script simples criado no curso para automatizar buscas no Google sobre um alvo específico.

```
bash
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

Como executa-lo

```
chmod +x ghdb.sh
./ghdb.sh site.com.br
```

