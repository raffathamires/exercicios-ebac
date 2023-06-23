            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout de uma compra na EBAC-SHOP

            Esquema do Cenário: Validar que o cadastro eh realizado somente com todos os dados obrigatorios preenchidos
            Quando eu digitar os campos <nome>, <sobrenome>, <endereco>, <cidade>, <telefone>, e <email>
            Então deve exibir uma mensagem de alerta <mensagem>

            Exemplos:
            | nome   | sobrenome | endereco       | cidade     | telefone     | email                | mensagem                                     |
            | null   | "Silva"   | "Av. Loureiro" | "Alvorada" | "5199987645" | "teste@teste.com.br" | “Nome eh um campo obrigatorio”               |
            | "Joao" | null      | "Av. Loureiro" | "Alvorada" | "5199987645" | "teste@teste.com.br" | “Sobrenome eh um campo obrigatorio”          |
            | "Joao" | "Silva"   | null           | "Alvorada" | "5199987645" | "teste@teste.com.br" | "Endereco eh um campo obrigatorio”           |
            | "Joao" | "Silva"   | "Av. Loureiro" | null       | "5199987645" | "teste@teste.com.br" | “Cidade eh um campo obrigatorio”             |
            | "Joao" | "Silva"   | "Av. Loureiro" | "Alvorada" | null         | "teste@teste.com.br" | "Telefone eh um campo obrigatorio”           |
            | "Joao" | "Silva"   | "Av. Loureiro" | "Alvorada" | "5199987645" | null                 | "Endereco de e-mail eh um campo obrigatorio” |

            Esquema do Cenário: Validar que o campo e-mail nao permite enderecos com formato invalido
            Quando eu digitar o e-mail inválido no campo <email>
            Então deve exibir uma mensagem de alerta “Endereco de e-mail com formato invalido. Por favor, insira um e-mail correto”

            Exemplos:
            | email           |
            | "teste.com.br"  | 
            | "teste@teste"   | 
            | "@teste.com.br" | 