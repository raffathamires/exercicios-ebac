            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho


            Contexto:
            Dado que eu acessei a página de um produto

            Esquema do Cenário: Validar que as seleções de cor, tamanho e quantidade são obrigatórios
            Quando selecionar <selecao1>
            E <selecao2> do produto
            Então deve exibir a mensagem <resultado>

            | selecao1     | selecao2     | resultado                                    |
            | "cor"        | "tamanho"    | "Por favor, selecione a quantidade de itens" |
            | "quantidade" | "tamanho"    | "Por favor, selecione a cor do item"         |
            | "cor"        | "quantidade" | "Por favor, selecione o tamanho do item"     |

            Esquema do Cenário: Validar que o sistema permite apenas 10 produtos por venda
            Quando selecionar quantidade <quantidade1>
            Então deve exibir a mensagem <resultado>

            | quantidade1 | resultado                                                                     |
            | "9"         | "Produto adicionado com sucesso!"                                             |
            | "10"        | "Produto adicionado com sucesso!"                                             |
            | "11"        | "Número máximo ultrapassado. Por favor, selecione até 10 produtos por venda." |

            Cenário: Validar que ao clicar no botão “limpar” deve voltar ao estado original
            Quando eu clicar no botão "limpar"
            Então a tela voltou ao seu estado original