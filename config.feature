Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

    Contexto:
        Dado que estou na página de configuração do produto
    Esquema do Cenário: Configuração do produco de a cordo com meu gosto e tamanho
        Quando clico no botão selecionar <opcao>
        Então o sistema deve manter selecionado <opcao> do produto e com o botão comprar deve ficar destacado
            
        Exemplos:
            | opcao              |
            | cor                |
            | tamanho            |
            | quantidade_produto |


    Esquema do Cenário: Seleção de produtos com tamanho e cor diferentes
        Quando seleciono uma blusa da cor <cor>, tamanho <tamanho> e adiciono a quantidade <quantidade>           
        Então o sistema deve acescentar o produto no carrinho

        Exemplos:
            | cor      | tamanho | quantidade |
            | azul     | M       | 1          |
            | azul     | G       | 2          |
            | azul     | GG      | 3          |
            | vermelho | M       | 1          |
            | amarelo  | G       | 2          |
            | verde    | GG      | 3          |

    Cenário: limpar configuração do produto selecionado
        Quando clico no botão limpar configuração
        Então o sistema deve limpar a configuração dos produtos 
           



