Uma boa ferramenta para captura de hashes e observação de trafego 'e o **responder**

O **Responder** é uma ferramenta usada para **capturar credenciais e hashes NTLMv1/v2** em redes Windows, explorando falhas nos protocolos **LLMNR (Link-Local Multicast Name Resolution)** e **NBT-NS (NetBIOS Name Service)**.

```
sudo responder -I eth0 -Pv
```

Deve ser setado no **Responder.Conf** quais os IPS que você deseja monitorar, na parte de "RespondTo", por ser tratar de um processo mais ágil 

**PARTE III - Validação de Credenciais**





