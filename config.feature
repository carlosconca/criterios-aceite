#Language: pt


# Contexto comum para os cenários
Contexto: O cliente está na página de seleção de produtos
  Dado que o cliente está na página de seleção de produtos

# Cenário 1: Seleções de cor, tamanho e quantidade são obrigatórios
Cenário: Seleções de cor, tamanho e quantidade são obrigatórios
  Quando o cliente tenta adicionar um produto ao carrinho sem selecionar cor, tamanho ou quantidade
  Então o sistema deve exibir uma mensagem de erro indicando que essas seleções são obrigatórias

# Cenário 2: Limite de 10 produtos por venda
Esquema do Cenário: Limite de 10 produtos por venda
  Quando o cliente tenta adicionar mais de 10 produtos ao carrinho
  Então o sistema deve exibir uma mensagem de erro indicando que o limite é de 10 produtos por venda

  Exemplos:
    | quantidade |
    | 11         |
    | 12         |
    | 20         |

# Cenário 3: Botão “limpar” deve voltar ao estado original
Cenário: Botão "limpar" deve voltar ao estado original
  Dado que o cliente selecionou cor, tamanho e quantidade
  E o cliente adicionou produtos ao carrinho
  Quando o cliente clica no botão "limpar"
  Então todas as seleções devem ser removidas
  E a página deve voltar ao estado original
