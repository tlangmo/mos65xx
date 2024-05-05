*******************************************************************************
*
*       Printint my name on the screen
*******************************************************************************
         ORG   $300
HOME     EQU   $FC58
START    JSR   HOME        ; clear the screen
         LDA   #$54       ; 'T'
         STA   $400
         LDA   #$4F       ; 'O'
         STA   $401
         LDA   #$42       ; 'B'
         STA   $402
         LDA   #$49       ; 'I'
         STA   $403
         LDA   #$41       ; 'A'
         STA   $404
         LDA   #$53       ; 'S'
         STA   $405
END      RTS
         CHK