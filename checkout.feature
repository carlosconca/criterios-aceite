#language: pt

Funcionalidade: Tela de cadastro Checkout
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra


    Contexto:
        Dado que estou na tela de Checkout


    Esquema do Cenário: Preenchimento dos dados pessoais para faturamento
        Quando o usuário preencher os dados pessoais com <nome> e <sobrenome>
            E preencher os campos de endereço com <pais>, <endereco>, <cidade> e <CEP>
            E preencher os campos para contato com <telefone> e <email>
        Então ao clicar no botão Finalizar Compra o sistema deve exibir a mensagem <mensagem>
        Exemplos:
            | nome | sobrenome | pais   | endereco   | cidade    | CEP       | telefone         | email            | mensagem                                           |
            | Jose | Carlos    | Brasil | Tv. Baráo  | Belém     | 66083-100 | (91) 98324-3157  | jose@ebac.com.br | Detalhes para faturamento atualizados com sucesso! |
            |      | Carlos    | Brasil | Tv. Baráo  | Belém     | 66083-100 | (91) 98324-3157  | jose@ebac.com.br | O preenchimento do campo Nome é obrigatório!       |
            | Jose |           | Brasil | Tv. Baráo  | Belém     | 66083-100 | (91) 98324-3157  | jose@ebac.com.br | O preenchimento do campo Sobrenome é obrigatório!  |
            | Jose | Carlos    |        | Tv. Baráo  | Belém     | 66083-100 | (91) 98324-3157  | jose@ebac.com.br | O preenchimento do campo País é obrigatório!       |
            | Jose | Carlos    | Brasil |            | Belém     | 66083-100 | (91) 98324-3127  | jose@ebac.com.br | O preenchimento do campo Endereço é obrigatório!   |
            | Jose | Carlos    | Brasil | Tv. Baráo  |           | 66083-100 | (91) 98324-3157  | jose@ebac.com.br | O preenchimento do campo Cidade é obrigatório!     |
            | Jose | Carlos    | Brasil | Tv. Baráo  | Belém     |           | (91) 98324-3157  | jose@ebac.com.br | O preenchimento do campo CEP é obrigatório!        |
            | Jose | Carlos    | Brasil | Tv. Baráo  | Belém     | 66083-100 |                  | jose@ebac.com.br | O preenchimento do campo Telefone é obrigatório!   |
            | Jose | Carlos    | Brasil | Tv. Baráo  | Belém     | 66083-100 | (91) 98324-3157  |                  | O preenchimento do campo E-mail é obrigatório!     |
            | Jose | Carlos    | Brasil | Tv. Baráo  | Belém     | 66083-100 | (91) 98324-3157  | jose#ebac.com.br | E-mail informado inválido!                         |
            | Jose | Carlos    | Brasil | Tv. Baráo  | Belém     | 66083-100 | (91) 98324-3157  | @ebac.com.br     | E-mail informado inválido!                         |
            | Jose | Carlos    | Brasil | Tv. Baráo  | Belém     | 66083-100 | (91) 98324-3157  | jose@ebac        | E-mail informado inválido!                         |
            | Jose | Carlos    | Brasil | Tv. Baráo  | Belém     | abcdf-abc | (91) 98324-3157  | jose@ebac.com.br | Campo CEP deve conter apenas números!              |
            | Jose | Carlos    | Brasil | Tv. Baráo  | Belém     | 66083-100 | abcdfegrjvh@jkkl | jose@ebac.com.br | Campo telefone deve conter apenas números!         |
            | Jose | Carlos    | zzzzdd | Tv. Baráo  | Belém     | 66083-100 | (91) 98324-3157  | jose@ebac.com.br | País informado inválido ou não selecionado!        |

