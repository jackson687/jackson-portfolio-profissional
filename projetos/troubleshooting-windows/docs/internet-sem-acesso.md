# Diagnóstico: internet sem acesso

## Sintomas comuns

- Computador conectado ao Wi-Fi, mas sem internet.
- Sites não abrem.
- Apenas um sistema não acessa a rede.
- Conexão cai frequentemente.

## Perguntas ao usuário

- O problema ocorre em outros dispositivos?
- O Wi-Fi aparece conectado?
- Existe alguma mensagem de erro?
- O problema começou após trocar roteador ou senha?
- Outros sites funcionam?
- O problema acontece via cabo e Wi-Fi?

## Procedimento

1. Confirmar se o problema é de um dispositivo ou da rede inteira.
2. Verificar cabos, Wi-Fi e modo avião.
3. Conferir o endereço IP com `ipconfig`.
4. Testar o gateway com `ping`.
5. Testar um endereço externo.
6. Testar resolução de nomes com `nslookup`.
7. Reiniciar o adaptador de rede, quando apropriado.
8. Validar o acesso novamente.

## Interpretação básica

- Sem endereço IP: pode haver problema no DHCP ou adaptador.
- Gateway inacessível: pode haver falha local ou no roteador.
- IP externo responde, mas sites não abrem: investigar DNS.
- Todos os dispositivos estão sem acesso: verificar roteador ou provedor.

## Quando encaminhar

Encaminhar quando a falha atingir vários usuários, houver suspeita de problema no roteador, provedor, cabeamento estruturado ou infraestrutura de rede.
