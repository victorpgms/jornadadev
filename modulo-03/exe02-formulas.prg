#define PI 3.14159

FUNCTION Main()
    
    LOCAL cRaio, cLadoA, cLadoB //cariaveis string A
    LOCAL cPeso, cAltura //variaveis String B

    LOCAL nRaio, nLadoA, nLadoB //Variaveis number A
    LOCAL nPeso, nAltura //Variaveis number B

    // respostas
    LOCAL nAreaCirculo 
    LOCAL nHipotenusa
    LOCAL nIMC

    ACCEPT "Digite o raio do círculo: " TO cRaio
    nRaio := Val(cRaio)

    ACCEPT "Digite o valor do lado A do triângulo: " TO cLadoA
    nLadoA := Val(cLadoA)

    ACCEPT "Digite o valor do lado B do triângulo: " TO cLadoB
    nLadoB := Val(cLadoB)

    ACCEPT "Digite o seu peso em kg: " TO cPeso
    nPeso := Val(cPeso)

    ACCEPT "Digite a sua altura em metros: " TO cAltura
    nAltura := Val(cAltura)

    nAreaCirculo := PI * (nRaio ^ 2)

    nHipotenusa := Sqrt((nLadoA ^ 2) + (nLadoB ^ 2))

    nIMC := nPeso / (nAltura ^ 2)

    QOut("")
    QOut("Área do círculo: " + Str(nAreaCirculo, 10, 2))
    QOut("Hipotenusa: " + Str(nHipotenusa, 10, 2))
    QOut("IMC: " + Str(nIMC, 10, 2))


RETURN NIL