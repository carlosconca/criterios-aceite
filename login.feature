#Language: pt

Funcionalidade: Tela de Login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

# Contexto comum para os cenários
Contexto: 
  Dado que o cliente acesse a páguna de login da EBAC-SHOP
  
Cenário: Autenticação válida
  Quando o cliente dugutar "jose@gmail.com" 
  E a senha "jose@123" 
  Então deve exibir a tela de checkout com a mensagem de boas vindas: "Olá José" 
  
Cenário: Usuário inexistente
  Quando o cliente digitar o usuário "j@z3@gmail.com"   
  E a senha "jose@123" 
  Então deve exibir uma mensagem de alerta: "Usuário inexistente" 
  
Cenário: Usuário com senha inválidos
  Quando o cliente digitar o usuário "jose@gmail.com"   
  E a senha "j@z3#321" 
  Então deve exibir uma mensagem de alerta: "Usuário ou senha inválido" 

Cenário: Autenticação multiplos usuários
  Quando o cliente dugutar <usuario> 
  E a <senha>  
  Então deve exibir <mensagem> de sucesso  

Exemplos:
|usuario|Senha|mensagem|
|"jose@gmail.com"|"jose@123"|"Olá José"| 
|"joao@gmail.com"|"joao@123"|"Olá João"| 
|"pedro@gmail.com"|"pedro@123"|"Olá Pedro"|



