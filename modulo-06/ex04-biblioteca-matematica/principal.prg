
FUNCTION Main()

   LOCAL nNum := 0
   LOCAL nA   := 0
   LOCAL nB   := 0

   SET PROCEDURE TO matematica.prg

   Qout( "==========================================")
   Qout( "   TESTE DA BIBLIOTECA MATEMATICA.PRG")
   Qout( "==========================================")
   Qout()

   //FatorialN
   nNum := 5
   Qout( "1) Fatorial de", AllTrim(Str(nNum)), "=", AllTrim(Str(FatorialN(nNum))))
   nNum := 10
   Qout( "   Fatorial de", AllTrim(Str(nNum)), "=", AllTrim(Str(FatorialN(nNum))))
   Qout()

   //EhPrimo
   Qout( "2) Teste de numeros primos:")
   FOR nNum := 1 TO 15
      Qout( "   ", nNum, "e primo?", IIF(EhPrimo(nNum), "SIM", "NAO"))
   NEXT
   Qout()

   //MDC
   nA := 12
   nB := 18
   Qout( "3) MDC de", AllTrim(Str(nA)), "e", AllTrim(Str(nB)), "=", AllTrim(Str(MDC(nA, nB))))
   Qout()

   //MMC
   nA := 4
   nB := 6
   Qout( "4) MMC de", AllTrim(Str(nA)), "e", AllTrim(Str(nB)), "=", AllTrim(Str(MMC(nA, nB))))
   Qout()

   WAIT "Pressione qualquer tecla para sair..."

RETURN NIL