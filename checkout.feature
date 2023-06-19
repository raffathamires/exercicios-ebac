            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout de uma compra na EBAC-SHOP

            Esquema do Cenário: Validar que o cadastro eh realizado somente com todos os dados obrigatorios preenchidos
            Quando eu nao digitar o campo <campo1>
            Então deve exibir uma mensagem de alerta <mensagem>

            Exemplos:
            | campo1               | mensagem                                     |
            | "Nome"               | “Nome eh um campo obrigatorio”               |
            | "Sobrenome"          | “Sobrenome eh um campo obrigatorio”          |
            | "Endereco"           | Endereco eh um campo obrigatorio”            |
            | "Cidade"             | “Cidade eh um campo obrigatorio”             |
            | "Telefone"           | "Telefone eh um campo obrigatorio”           |
            | "Endereco de e-mail" | "Endereco de e-mail eh um campo obrigatorio” |

            Esquema do Cenário: Validar que o campo e-mail nao permite enderecos com formato invalido
            Quando eu digitar o meu e-mail no campo <campo1>
            Então deve exibir uma mensagem de alerta <mensagem>

            Exemplos:
            | campo1          | mensagem                                                                       |
            | "teste.com.br"  | “Endereco de e-mail com formato invalido. Por favor, insira um e-mail correto” |
            | "teste@teste"   | “Endereco de e-mail com formato invalido. Por favor, insira um e-mail correto” |
            | "@teste.com.br" | “Endereco de e-mail com formato invalido. Por favor, insira um e-mail correto” |