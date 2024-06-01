#Language: pt

# Contexto comum para os cenários
Contexto: O cliente está na página de cadastro da EBAC-SHOP
  Dado que o cliente está na página de cadastro da EBAC-SHOP

# Cenário 1: Cadastro com todos os dados obrigatórios
Cenário: Cadastro com todos os dados obrigatórios
  Quando o cliente preenche todos os campos obrigatórios marcados com asteriscos
  E clica no botão "concluir cadastro"
  Então o sistema deve registrar o cadastro do cliente
  E deve permitir que o cliente finalize a compra

# Cenário 2: Cadastro com e-mail inválido
Cenário: Cadastro com e-mail inválido
  Quando o cliente preenche todos os campos obrigatórios
  E insere um e-mail no formato inválido
  E clica no botão "concluir cadastro"
  Então o sistema deve exibir uma mensagem de erro indicando que o formato do e-mail é inválido

# Cenário 3: Cadastro com campos obrigatórios vazios
Esquema do Cenário: Cadastro com campos obrigatórios vazios
  Quando o cliente deixa um ou mais campos obrigatórios vazios
  E clica no botão "concluir cadastro"
  Então o sistema deve exibir uma mensagem de alerta indicando que todos os campos obrigatórios devem ser preenchidos

  Exemplos:
    | campo              |
    | nome               |
    | sobrenome          |
    | país               |
    | endereço           |
    | cidade             |
    | cep                |
    | telefone           |
    | endereco de e-mail |
