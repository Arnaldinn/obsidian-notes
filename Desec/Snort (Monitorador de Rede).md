O Snort monitora o tráfego de rede em tempo real e analisa pacotes para identificar **atividades suspeitas, ataques ou violações de segurança** com base em regras predefinidas.

- IDS Mode (Intrusion Detection System)
Analisa pacotes e compara com **regras** de detecção de ataques.

```
snort -A console -c /etc/snort/snort.conf -i eth0
```

- IPS Mode (Intrusion Prevention System)
 Bloqueia pacotes maliciosos antes que eles cheguem ao destino.
 Pode ser configurado para **descartar pacotes suspeitos** automaticamente.



