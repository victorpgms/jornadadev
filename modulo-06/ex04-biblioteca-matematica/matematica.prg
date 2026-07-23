

FUNCTION FatorialN(nN)
   LOCAL nResultado := 1
   LOCAL nI

   FOR nI := 1 TO nN
      nResultado *= nI
   NEXT

RETURN nResultado


FUNCTION EhPrimo(nN)
   LOCAL nI

   IF nN < 2
      RETURN .F.
   ENDIF

   IF nN == 2
      RETURN .T.
   ENDIF

   IF nN % 2 == 0
      RETURN .F.
   ENDIF

   FOR nI := 3 TO INT(SQRT(nN)) STEP 2
      IF nN % nI == 0
         RETURN .F.
      ENDIF
   NEXT

RETURN .T.


FUNCTION MDC(nA, nB)
   LOCAL nResto

   DO WHILE nB != 0
      nResto := nA % nB
      nA := nB
      nB := nResto
   ENDDO

RETURN nA


FUNCTION MMC(nA, nB)
RETURN (nA * nB) / MDC(nA, nB)