FUNCTION Main()

   LOCAL nI := 0
   LOCAL cHoraAtual := ""
   LOCAL cHoraFormatada := ""

   FOR nI := 1 TO 30
      cHoraAtual     := ObterHora()
      cHoraFormatada := FormatarHora(cHoraAtual)
      ExibirHora(cHoraFormatada)
      hb_idleSleep(1) 
   NEXT

   QOut("")
   QOut("Relogio encerrado apos 30 segundos.")

RETURN NIL


FUNCTION ObterHora()
    RETURN Time()


FUNCTION FormatarHora(cHora)
   RETURN cHora


FUNCTION ExibirHora(cHoraFormatada)
   CLS
   QOut("=============================")
   QOut("       RELOGIO DIGITAL       ")
   QOut("=============================")
   QOut("")
   QOut("         " + cHoraFormatada)
   QOut("")
   QOut("=============================")
   QOut(" Atualizando por 30 seg...   ")

RETURN NIL