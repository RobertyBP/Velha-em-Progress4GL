
FUNCTION Velha RETURNS LOGICAL():
    DEFINE VARIABLE i AS INTEGER     NO-UNDO.

    DEFINE VARIABLE iOp AS INTEGER     NO-UNDO.

    DEFINE VARIABLE c1 AS CHARACTER   NO-UNDO.
    DEFINE VARIABLE c2 AS CHARACTER   NO-UNDO.
    DEFINE VARIABLE c3 AS CHARACTER   NO-UNDO.

    DEFINE VARIABLE cP1 AS CHARACTER   NO-UNDO.
    DEFINE VARIABLE cP2 AS CHARACTER   NO-UNDO.
    DEFINE VARIABLE cPL AS CHARACTER   NO-UNDO.

    ASSIGN
        cP1 = "X".
        cP2 = "0".
        cPL = cP1.
        c1 = "o,o,o".
        c2 = "o,o,o".
        c3 = "o,o,o".

    loopLabelOne:
    DO WHILE i NE 100:
       DISPLAY REPLACE(c1,","," ") NO-LABEL skip
               REPLACE(c2,","," ") NO-LABEL SKIP
               REPLACE(c3,","," ") NO-LABEL SKIP.
       UPDATE iOp NO-LABEL SKIP.
       CASE iOp:
           WHEN 1 THEN
           DO:
              IF ENTRY(1,c1) EQ "o" THEN
              DO:
                 ENTRY(1,c1) = cPl. 
              END.
           END.
           WHEN 2 THEN
           DO:
              IF ENTRY(2,c1) EQ "o" THEN
              DO:
                 ENTRY(2,c1) = cPl. 
              END. 
           END.
           WHEN 3 THEN
           DO:
              IF ENTRY(3,c1) EQ "o" THEN
              DO:
                 ENTRY(3,c1) = cPl. 
              END. 
           END.
           WHEN 4 THEN
           DO:
              IF ENTRY(1,c2) EQ "o" THEN
              DO:
                 ENTRY(1,c2) = cPl. 
              END. 
           END.
           WHEN 5 THEN
           DO:
               IF ENTRY(2,c2) EQ "o" THEN
              DO:
                 ENTRY(2,c2) = cPl. 
              END. 
           END.
           WHEN 6 THEN
           DO:
               IF ENTRY(3,c2) EQ "o" THEN
              DO:
                 ENTRY(3,c2) = cPl. 
              END. 
           END.
           WHEN 7 THEN
           DO:
               IF ENTRY(1,c3) EQ "o" THEN
              DO:
                 ENTRY(1,c3) = cPl . 
              END.
           END.
           WHEN 8 THEN
           DO:
               IF ENTRY(2,c3) EQ "o" THEN
              DO:
                 ENTRY(2,c3) = cPl. 
              END. 
           END.
           WHEN 9 THEN
           DO:
                IF ENTRY(3,c3) EQ "o" THEN
              DO:
                 ENTRY(3,c3) = cPl. 
              END.
           END.
       END CASE.
       IF c1 EQ "X,X,X" OR c1 EQ "0,0,0" THEN DO: i = 100. MESSAGE  "fim de jogo, jogador " + cPL + " venceu!!!"
                                                            VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.  
       END.
       IF c2 EQ "X,X,X" OR c2 EQ "0,0,0" THEN DO: i = 100. MESSAGE  "fim de jogo, jogador " + cPL + " venceu!!!"
                                                            VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
       END.
       IF c3 EQ "X,X,X" OR c3 EQ "0,0,0" THEN DO: i = 100. MESSAGE  "fim de jogo, jogador " + cPL + " venceu!!!"
                                                            VIEW-AS ALERT-BOX INFORMATION BUTTONS OK. 
       END.
       IF (ENTRY(1,c1) NE "o") AND (ENTRY(1,c1) EQ ENTRY(2,c2) AND ENTRY(3,c3) EQ ENTRY(1,c1)) THEN DO:
           i = 100.
           MESSAGE  "fim de jogo, jogador " + cPL + " venceu!!!"
                  VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
       END.
       IF (ENTRY(3,c1) NE "o") AND (ENTRY(3,c1) EQ ENTRY(2,c2) AND ENTRY(1,c3) EQ ENTRY(3,c1)) THEN DO:
           i = 100.
           MESSAGE  "fim de jogo, jogador " + cPL + " venceu!!!"
                  VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
       END.
       
       IF (ENTRY(1,c1) NE "o") AND (ENTRY(1,c1) EQ ENTRY(1,c2) AND ENTRY(1,c3) EQ ENTRY(1,c1)) THEN DO:
           i = 100.
           MESSAGE  "fim de jogo, jogador " + cPL + " venceu!!!"
                  VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
       END.
       IF (ENTRY(2,c1) NE "o") AND (ENTRY(2,c1) EQ ENTRY(2,c2) AND ENTRY(2,c3) EQ ENTRY(2,c1)) THEN DO:
           i = 100.
           MESSAGE  "fim de jogo, jogador " + cPL + " venceu!!!"
                  VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
       END.
       IF (ENTRY(3,c1) NE "o") AND (ENTRY(3,c1) EQ ENTRY(3,c2) AND ENTRY(3,c3) EQ ENTRY(3,c1)) THEN DO:
           i = 100.
           MESSAGE  "fim de jogo, jogador " + cPL + " venceu!!!"
                  VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
       END.
       IF cP1 EQ cPL THEN DO: cPL = cP2. END. ELSE DO: cPL = cP1. END.
    END.
END FUNCTION.
FUNCTION Menuzinho RETURNS LOGICAL():
    DEFINE VARIABLE iOP AS INTEGER     NO-UNDO.
    DISPLAY "faça sua escolha".
    UPDATE iOP NO-LABEL.
    CASE iOP:
    WHEN 1 THEN
    DO:
       Velha().
       Menuzinho().
    END.
    WHEN 2 THEN
    DO:
       MESSAGE "valeu falou"
           VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
       Menuzinho().
    END.
    END CASE.
 END FUNCTION.
 Menuzinho().
