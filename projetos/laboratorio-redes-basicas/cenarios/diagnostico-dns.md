# Cenário: diagnóstico de DNS

## Objetivo

Diferenciar uma falha geral de conectividade de uma falha na resolução de nomes.

## Testes

Primeiro, verificar a configuração:

```powershell
ipconfig /all
```

Testar o gateway:

```powershell
ping 192.168.10.1
```

Testar um endereço IP externo:

```powershell
ping 8.8.8.8
```

Testar a resolução de nomes:

```powershell
nslookup www.microsoft.com
```

## Interpretação

- Gateway responde e o endereço externo não responde: investigar rota, firewall ou provedor.
- Endereço externo responde e o domínio não resolve: investigar DNS.
- DNS responde, mas um site específico não abre: investigar o navegador, o site ou alguma política de acesso.
- Nenhum teste responde: investigar conexão local, Wi-Fi, cabo, roteador ou adaptador.

## Registro do diagnóstico

- Sintoma:
- Gateway respondeu?:
- Endereço externo respondeu?:
- DNS resolveu o domínio?:
- Causa provável:
- Solução ou encaminhamento:
