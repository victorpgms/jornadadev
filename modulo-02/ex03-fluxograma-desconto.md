# Fluxograma

## Fluxograma em texto

Inicio:

Leia valor da compra

O valor é maior que R$ 100,00?

    Sim:
    Calcule o desconto:
    valorFinal = valor * 0,90 (10% de desconto)

    Não:
    Valor Final = valor

Montre o calor final a pagar

Fim

## Fluxograma em Mermaid

```mermaid
flowchart TD
    A([Início]) --> B[/Leia valor da compra/]
    B --> C{O valor é maior que R$ 100,00?}

    C -- Sim --> D[valorFinal = valor * 0,90]
    C -- Não --> E[valorFinal = valor]

    D --> F[/Mostre o valor final a pagar/]
    E --> F

    F --> G([Fim])
```
