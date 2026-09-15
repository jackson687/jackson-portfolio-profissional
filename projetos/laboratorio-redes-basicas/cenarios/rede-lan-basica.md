# Cenário: rede LAN básica

## Objetivo

Praticar a configuração e a verificação de comunicação entre computadores de uma mesma rede local.

## Exemplo de configuração

| Dispositivo | IPv4 | Máscara | Gateway |
|---|---|---|---|
| Computador 1 | 192.168.10.10 | 255.255.255.0 | 192.168.10.1 |
| Computador 2 | 192.168.10.11 | 255.255.255.0 | 192.168.10.1 |
| Roteador | 192.168.10.1 | 255.255.255.0 | — |

## Testes

No Windows:

```powershell
ipconfig
ping 192.168.10.1
ping 192.168.10.11
tracert 192.168.10.1
```

## O que observar

- Se o computador recebeu um endereço IPv4 válido.
- Se a máscara pertence à mesma rede.
- Se o gateway está configurado.
- Se os computadores conseguem se comunicar.
- Se existe perda de pacotes.

## Falhas simuladas

- Cabo desconectado.
- Endereço IP incorreto.
- Gateway ausente.
- Computadores em redes diferentes.
- Adaptador desativado.

## Registro do diagnóstico

- Sintoma:
- Teste realizado:
- Resultado:
- Causa provável:
- Solução aplicada:
- Necessita encaminhamento?:
