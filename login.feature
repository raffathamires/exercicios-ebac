            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos


            Contexto:
            Dado que eu acesse a página de Autenticação da EBAC-SHOP

            Cenário: Validar que ao inserir dados válidos está direcionando para a tela de checkout
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então redirecionou para a tela de checkout

            Esquema do Cenário: Validar que ao inserir um dos campos inválidos exibe uma mensagem de alerta
            Quando eu digitar o usuário <usuario>
            E a senha <senha>
            Então deve exibir uma mensagem de alerta <mensagem>

            Exemplos:
            | usuario                      | senha           | mensagem                     |
            | "email_invalido@ebac.com.br" | "teste@123"     | “Usuário ou senha inválidos” |
            | "maria@ebac.com.br"          | "senhaInvalida" | “Usuário ou senha inválidos” |