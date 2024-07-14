#Language: pt

# Contexto comum para os cenários
Contexto: O cliente está na página de login da EBAC-SHOP
  Dado que o cliente está na página de login da EBAC-SHOP

# Cenário 1: Login com dados válidos
Cenário: Login com dados válidos
  Quando o cliente insere um <usuário> válido e <senha> válida e clica no botão "entrar"
  Então o cliente deve ser direcionado para a tela de checkout

# Cenário 2: Login com dados inválidos
Esquema do Cenário: Login com dados inválidos
  Quando o cliente insere um <usuário> ou uma <senha> inválidos e clica no botão "entrar"
  Então o sistema deve exibir uma <mensagem> de alerta <Usuário> e  <Senha> 

Exemplo:
|Tipo de Teste  | Usuário      | Senha    |  Resultado Esperado   |
|Inválido	| "user@ebac" | "12345"  |  "Usuário ou senha inválidos"| 
|Inválido	| "user#ebac" | "   "    |  "Usuário ou senha inválidos"| 
|Inválido	|   "     "   | "abc123" |  "Usuário ou senha inválidos"|


