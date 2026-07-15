# Pseudocódigo

## a. Calcular a área de um retângulo (base × altura)

início
Leia base
Leia altura

areaRetangulo ← base \* altura

Escreva areaRetangulo

## b. Verificar se um número é par ou ímpar

início
Leia numero

    Se numero = 0
        escreva "O número é 0"

    Senão
        Se numero % 2 = 0 (Resto da divisão)
            escreva "O número é par"

        Senão
            escreva "O número é ímpar"

        FimSe
    FimSe

Fim

## c. Encontrar o maior entre três números

Início

    Leia numero1
    Leia numero2
    Leia numero3

    Se numero1 >= numero2 e numero1 >= numero3
        Escreva numero1

    Senão
        Se numero2 >= numero1 e numero2 >= numero3
            Escreva numero2

        Senão
            Escreva numero3

        FimSe
    FimSe

Fim
