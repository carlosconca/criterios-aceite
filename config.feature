#Language: pt


# Contexto comum para os cenários
Contexto: O cliente está na página de seleção de produtos
  Dado que o cliente está na página de seleção de produtos

# Cenário 1: Seleções de cor, tamanho e quantidade são obrigatórios
Cenário: Seleções de cor, tamanho e quantidade são obrigatórios
  Quando o cliente tenta adicionar um produto ao carrinho sem selecionar <cor>, <tamanho> ou <quantidade>
  Então o sistema deve exibir uma <mensagem> de erro indicando que essas seleções são obrigatórias
  
Exemplo:
|Tipo de Teste	| Cor	          | Tamanho	      | Quantidade      | Mensagem | 
|Inválido	| Não selecionado | P	              | 1	        | seleção de cor obrigatória | 
|Inválido	| Azul	          | Não selecionado   | 1	        | seleção de tamanho obrigatória | 
|Inválido	| Azul	          | P	              | Não selecionado | seleção de quantidade obrigatória |

# Cenário 2: Limite de 10 produtos por venda
Esquema do Cenário: Limite de 10 produtos por venda
  Quando o cliente tentar adicionar <quantidade> maior que 10 produtos ao carrinho
  Então o sistema deve exibir uma <mensagem> indicando que o limite são de 10 produtos

Exemplo:
|Tipo de Teste	| Quantidade | Mensagem |  
|Válido	      | 9 	       | Sistema deve exibir mensagem indicando que falta 1 iten para atingir o limite do carrinho |
|Válido	        | 10	       | Sistema deve exibir mensagem indicando que o limite de 10 produtos por venda foi atingido |  
|Inválido	       | 11	       | Sistema deve exibir mensagem de erro indicando que o limite é de 10 produtos por venda    |



# Cenário 3: Botão “limpar” deve voltar ao estado original
Cenário: Botão "limpar" deve voltar ao estado original
  Dado que o cliente selecionou cor, tamanho e quantidade e adicionou produtos ao carrinho
  Quando clicar no botão "limpar"
  Então todas as seleções devem ser removidas e a página deve voltar ao estado original

Cenário 3: Botão “limpar” deve voltar ao estado original
| Tipo de Teste	| Cor	  | Tamanho	| Quantidade	| Ação	             |  Resultado Esperado                                                             |                        
| Válido	      | Azul	| M	      | 2	          | Clicar no "limpar" | 	Todas as seleções devem ser removidas e a página deve voltar ao estado original| 

