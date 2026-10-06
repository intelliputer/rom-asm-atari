; Disassembly of roms/Super Ferrari.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Super Ferrari.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
RESP0   =  $10
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMBL    =  $24
VDELP0  =  $25
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF200   =   $F200

       ORG $F000

START:
       SEI            
       JMP    LF26B   
LF004: .byte $18,$29,$0F,$75,$C8,$85,$BD,$8D,$22,$00,$A5,$BE,$29,$0F,$75,$E4
       .byte $85,$BE,$85,$24,$88,$BD,$8A,$FD,$85,$11,$8D,$08,$00,$4C,$C7,$F0
       .byte $18,$29,$0F,$75,$C8,$85,$BD,$8D,$22,$00,$A5,$BE,$29,$0F,$75,$E4
       .byte $85,$BE,$8D,$24,$00,$85,$11,$88,$4C,$C2,$F0,$18,$29,$0F,$75,$C8
       .byte $85,$BD,$8D,$22,$00,$A5,$BE,$29,$0F,$75,$E4,$88,$85,$11,$8D,$BE
       .byte $00,$4C,$C0,$F0,$18,$29,$0F,$75,$C8,$85,$BD,$EA,$85,$22,$A5,$BE
       .byte $29,$0F,$85,$11,$88,$4C,$BC,$F0,$18,$29,$0F,$75,$C8,$85,$BD,$EA
       .byte $85,$22,$85,$11,$88,$4C,$B8,$F0,$18,$29,$0F,$75,$C8,$85,$BD,$85
       .byte $11,$88,$4C,$B5,$F0,$18,$29,$0F,$88,$85,$11,$4C,$B1,$F0,$A9,$00
       .byte $85,$21,$88,$D0,$30,$8D,$2A,$00,$84,$09,$84,$1B,$84,$1D,$84,$1C
       .byte $84,$1F,$4C,$3F,$FA,$8D,$11,$00,$29,$0F,$18,$EA,$88,$75,$C8,$85
       .byte $BD,$EA,$85,$22,$A5,$BE,$29,$0F,$75,$E4,$85,$BE,$85,$24,$BD,$8A
       .byte $FD,$85,$08,$85,$06,$85,$2A,$BE,$78,$FF,$B1,$B2,$85,$1C,$B1,$B4
       .byte $3D,$77,$FE,$85,$1B,$18,$A5,$BD,$29,$0F,$75,$C8,$85,$BD,$85,$22
       .byte $AD,$BE,$00,$29,$0F,$75,$E4,$85,$BE,$85,$24,$C4,$97,$D0,$9F,$88
       .byte $BE,$78,$FF,$A9,$00,$18,$8D,$2A,$00,$85,$1C,$B1,$B4,$3D,$77,$FE
       .byte $85,$1B,$88,$A5,$BD,$29,$0F,$75,$C8,$85,$BD,$85,$22,$AD,$BE,$00
       .byte $29,$0F,$75,$E4,$85,$BE,$85,$24
LF11C: LDX    LFF79,Y 
       LDA    ($B4),Y 
       DEY            
       STY    $B9     
       PHA            
       LDY    $8A     
       LDA    ($BB),Y 
       STA    HMOVE   
       STA    $97     
       LDA.wy $009B,Y 
       STA    COLUP1  
       PLA            
       AND    LFE77,X 
       STA    GRP0    
       LDA    LFE29,Y 
       STA    NUSIZ1  
       LDA.wy $008B,Y 
       STA    $B2     
       LDA    $BD     
       AND    #$0F    
       ADC    $C8,X   
       STA    $BD     
       STA    HMM0    
       LDA    $BE     
       AND    #$0F    
       ADC    $E4,X   
       STA    $BE     
       STA    HMBL    
       LDA.wy $0083,Y 
       STA    HMP1    
       STA.w  $002A   
       BIT    $80     
       AND    #$0F    
       TAY            
       LDA    LFD81,Y 
       STA    $E2     
       LDY    $B9     
       LDX    LFF78,Y 
       LDA    ($B4),Y 
       AND    LFE77,X 
       STA    GRP0    
       CLC            
       LDA    $BD     
       AND    #$0F    
       ADC    $C8,X   
       STA    $BD     
       STA    HMM0    
       LDA.w  $00BE   
       AND    #$0F    
       ADC    $E4,X   
       STA    $BE     
       STA    HMBL    
       DEC    $8A     
       DEY            
       STA    HMOVE   
       LDX    LFF78,Y 
       LDA    ($B4),Y 
       AND    LFE77,X 
       STA    GRP0    
       LDA    $BD     
       JMP.ind ($00E2)
LF19E: .byte $00,$08,$04,$0C,$02,$0A,$06,$0E,$01,$09,$05,$0D,$03,$0B,$07,$0F
LF1AE: LDA    $C6     
       AND    #$0F    
       TAY            
       INY            
       LDA    $C6     
LF1B6: LDX    INTIM   
       BNE    LF1B6   
       CPY    #$04    
       BCS    LF1D7   
       STA    WSYNC   
       STX    ENABL   
       LDX    #$30    
       STX    PF0     
LF1C7: DEY            
       BNE    LF1C7   
       STA    HMBL    
       STA    RESBL   
       NOP            
       LDY    #$06    
       LDX    #$00    
       STX    PF0     
       BEQ    LF1E6   
LF1D7: STA    WSYNC   
       STA    HMOVE   
       STX    ENABL   
LF1DD: DEY            
       BNE    LF1DD   
       LDY    #$06    
       STA    HMBL    
       STA    RESBL   
LF1E6: STA    WSYNC   
       STA    HMOVE   
       STX    $FE     
       BPL    LF20D   
LF1EE: LDA    #$03    
       LDX    #$00    
       STA    HMBL    
       STX    HMP0    
       STX    HMP1    
       LDA    LFE23,Y 
       TAX            
       LDA    LFE1D,Y 
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STA    GRP1    
       LDA    $FE     
       BEQ    LF20D   
       STA    COLUBK  
LF20D: LDX    $C0     
       BMI    LF21C   
       LDA    LFDF3,X 
       STA    $FE     
       TYA            
       LSR            
       BCC    LF21C   
       DEC    $C0     
LF21C: DEY            
       BPL    LF1EE   
       LDA    $C1     
       STA    $B4     
       LDA    #$20    
       STA    $B2     
       LDY    $82     
       LDA    $E2     
       LDX    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP1    
       STX    GRP0    
       STY    COLUBK  
       AND    #$0F    
       TAY            
       INY            
LF23B: DEY            
       BNE    LF23B   
       STA    RESP0   
       LDA    $E2     
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       STY    COLUP0  
       LDA    #$05    
       STA    NUSIZ0  
       LDX    #$00    
       NOP            
       LDA    $C2     
       STA    REFP0   
       ASL            
       STA    REFP1   
       STX    CTRLPF  
       STY    COLUPF  
       STA    HMCLR   
       STA    CXCLR   
       STY    ENAM0   
       STY    ENABL   
       LDY    #$66    
       JMP    LF11C   
LF26B: LDA    #$00    
       TAX            
LF26E: STA    VSYNC,X 
       TXS            
       STX    $AF     
       INX            
       BNE    LF26E   
       CLD            
       LDX    #$FD    
       STX    $BC     
       INX            
       STX    $B3     
       STX    $B5     
       LDA    #$F0    
       STA    $E3     
       LSR            
       STA    $B6     
       STA    $80     
       LDA    #$24    
       STA    $B8     
       LDA    $81     
       ROL            
       LDA    $80     
       ROL            
       EOR    $81     
       LDX    $80     
       STA    $80     
       STX    $81     
       LDA    COLUP1  
       STA    HMCLR   
       BPL    LF2AF   
       LDA    #$00    
       STA    $96     
       LDX    #$8F    
       BIT    $AE     
       BPL    LF2D5   
       LDX    #$9F    
       BNE    LF2D5   
LF2AF: BIT    VSYNC   
       BVC    LF2B9   
       LDX    #$44    
       DEC    $AE     
       BNE    LF2C1   
LF2B9: BIT    WSYNC   
       BVC    LF2D7   
       INC    $AE     
       LDX    #$54    
LF2C1: BIT    $A3     
       BVS    LF2D7   
       BIT    $94     
       BPL    LF2CB   
       DEX            
       DEX            
LF2CB: LDA    $96     
       LSR            
       STA    $96     
       LSR            
       ADC    $96     
       STA    $96     
LF2D5: STX    $A3     
LF2D7: LDA    SWCHB   
       ORA    #$FC    
       AND    SWCHA   
       EOR    #$FF    
       BEQ    LF2E7   
       LDA    #$00    
       STA    $93     
LF2E7: LDA    SWCHB   
       LSR            
       BCS    LF304   
       LDX    #$1C    
       STX    $95     
       STX    $B0     
       STX    $92     
       LDA    #$00    
LF2F7: STA    $96,X   
       DEX            
       BPL    LF2F7   
       STX    $B1     
       INC    $AF     
       STA    $94     
       BPL    LF335   
LF304: LDA    $92     
       BEQ    LF335   
       LDA    INPT4   
       BPL    LF31A   
       LDA    $80     
       BNE    LF312   
       DEC    $92     
LF312: LDX    #$1C    
       STX    $95     
       STX    $B0     
       BNE    LF335   
LF31A: LDA    #$00    
       LDX    #$20    
LF31E: STA    $92,X   
       DEX            
       BPL    LF31E   
       STX    $B0     
       STX    $B1     
       STX    $94     
       INC    $AD     
       LDA    #$18    
       STA    $B8     
       LDA    #$02    
       STA    $AC     
       BNE    LF38F   
LF335: LDA    $B0     
       AND    #$01    
       STA    $F0     
       BEQ    LF343   
       LDA    $95     
       BEQ    LF343   
       DEC    $95     
LF343: LDA    $B0     
       AND    #$07    
       BNE    LF355   
       LDA    $A3     
       AND    #$0F    
       BNE    LF353   
       STA    $A3     
       BEQ    LF355   
LF353: DEC    $A3     
LF355: LDA    $B0     
       BEQ    LF35E   
       DEC    $B0     
       JMP    LF3CC   
LF35E: DEC    $B0     
       LDA    $B1     
       AND    #$3F    
       ORA    $AF     
       BEQ    LF374   
       CMP    #$24    
       BNE    LF3BE   
       LDA    $B1     
       SBC    #$0C    
       STA    $B1     
       BNE    LF3BE   
LF374: LDA    $AB     
       ORA    $AC     
       BEQ    LF392   
       LDX    #$04    
       LDY    #$00    
       STY    $B2     
LF380: STY    $92,X   
       DEX            
       BPL    LF380   
       DEC    $B1     
       LDA    #$28    
       STA    $B8     
       STX    $AF     
       STX    $95     
LF38F: JMP    LF58C   
LF392: LDA    $B1     
       BNE    LF39A   
       LDA    #$40    
       STA    $B1     
LF39A: SED            
       CLC            
       LDA    $AD     
       ADC    #$01    
       STA    $AD     
       CLD            
       LDX    $AD     
       LDA    #$00    
       CPX    #$04    
       ROL            
       CPX    #$06    
       ROL            
       CPX    #$30    
       ROL            
       EOR    #$07    
       ADC    $B8     
       STA    $B8     
       LDX    #$00    
       STX    $AB     
       LDA    #$03    
       STA    $AC     
LF3BE: DEC    $B1     
       LDA    $B1     
       AND    #$07    
       BNE    LF3CC   
       BIT    $93     
       BMI    LF3CC   
       INC    $93     
LF3CC: LDA    $95     
       BEQ    LF3FF   
       LDX    #$00    
       STX    AUDV0   
       CMP    #$A0    
       BCC    LF3E8   
       CMP    #$C0    
       BCS    LF3DE   
       LDA    #$C0    
LF3DE: LSR            
       LSR            
       EOR    #$2F    
       LDX    $AF     
       LDY    #$07    
       BNE    LF3F6   
LF3E8: LSR            
       ADC    $95     
       LSR            
       LSR            
       LSR            
       TAX            
       LDY    #$0C    
       LDA    LFFF2,X 
       LDX    $94     
LF3F6: STA    AUDF1   
       STX    AUDV1   
       STY    AUDC1   
       JMP    LF57E   
LF3FF: LDA    $B1     
       AND    #$3F    
       CMP    #$08    
       BCS    LF419   
       LDA    $AB     
       ORA    $AC     
       BEQ    LF419   
       LDA    $B0     
       AND    #$3C    
       BNE    LF419   
       LDA    #$07    
       LDX    #$04    
       BNE    LF42F   
LF419: LDX    #$03    
       LDA    #$06    
       LDY    $9B     
       BNE    LF427   
       LSR            
       LDY    $9C     
       BNE    LF427   
       TYA            
LF427: BIT    $BF     
       BVC    LF42F   
       LDX    #$08    
       LDA    #$04    
LF42F: AND    $94     
       STA    AUDV1   
       STX    AUDC1   
       LDA    #$0C    
       STA    AUDF1   
       LDA    $A3     
       BEQ    LF46C   
       BMI    LF456   
       LDY    #$0F    
       LDX    #$10    
       LDA    #$03    
LF445: STA    AUDC0   
       TXA            
       ORA    $E0     
       STA    AUDF0   
       ORA    #$12    
       TYA            
       AND    $94     
       STA    AUDV0   
       JMP    LF4CD   
LF456: LDX    #$08    
       AND    #$0F    
       CMP    #$0B    
       BCC    LF464   
       LDY    #$0F    
       LDA    #$08    
       BNE    LF445   
LF464: LDX    #$00    
       LDY    #$03    
       LDA    #$03    
       BNE    LF445   
LF46C: LDA    $96     
       AND    #$1E    
       LSR            
       EOR    #$0F    
       ADC    #$0F    
       STA    AUDF0   
       LDA    #$03    
       STA    AUDC0   
       LDY    #$07    
       LDA    $B0     
       AND    #$07    
       TAX            
       BIT    $94     
       BMI    LF493   
       LDA    #$46    
       CMP    $96     
       BCC    LF4C9   
       TXA            
       BNE    LF4C9   
       INC    $96     
       BNE    LF4C9   
LF493: LDA    INPT4   
       BMI    LF4AC   
       LDA    $96     
       CMP    #$78    
       BCS    LF4C3   
       LDY    #$0F    
       CMP    #$2E    
       TXA            
       BNE    LF4C3   
       BCS    LF4A8   
       INC    $96     
LF4A8: INC    $96     
       BNE    LF4C3   
LF4AC: LDA    SWCHA   
       AND    #$20    
       BNE    LF4C3   
       LDA    $96     
       CMP    #$07    
       BCC    LF4C3   
       DEC    $96     
       LDA    #$0A    
       STA    AUDF0   
       LDY    #$08    
       STY    AUDC0   
LF4C3: TYA            
       BIT    $BF     
       BVC    LF4C9   
       LSR            
LF4C9: AND    $94     
       STA    AUDV0   
LF4CD: LDA    #$06    
       CMP    $96     
       BMI    LF4D5   
       STA    $96     
LF4D5: LDA    $96     
       AND    $94     
       LSR            
       ADC    $A7     
       STA    $A7     
       SED            
       LDX    #$FD    
LF4E1: LDA    $AB,X   
       ADC    #$00    
       STA    $AB,X   
       INX            
       BNE    LF4E1   
       CLD            
       LDA    $B0     
       AND    #$0F    
       TAX            
       LDA    $96     
       CMP    #$58    
       BCC    LF4F8   
       LDA    #$58    
LF4F8: JSR    LFE00   
       STY    $E8     
       BIT    $BF     
       BVC    LF502   
       LSR            
LF502: LDY    $A3     
       BEQ    LF508   
       LDA    #$0C    
LF508: CMP    #$08    
       BCS    LF50E   
       LDA    #$08    
LF50E: JSR    LFE00   
       STY    $E7     
       LSR            
       JSR    LFE00   
       STY    $F9     
       LDY    #$01    
       LDA    $A3     
       BEQ    LF525   
       AND    #$10    
       BEQ    LF52E   
       BNE    LF53B   
LF525: LDA    $94     
       BEQ    LF55A   
       BIT    SWCHA   
       BMI    LF537   
LF52E: LDA    #$00    
       SEC            
       SBC    $E7     
       TAX            
       JMP    LF53E   
LF537: INC    $80     
       BVS    LF55A   
LF53B: LDA    $E7     
       TAX            
LF53E: CLC            
       ADC    $AE     
       STA    $AE     
       CLC            
       TXA            
       BPL    LF550   
       ADC    $B6     
       BCS    LF558   
       ADC    #$A0    
       JMP    LF558   
LF550: ADC    $B6     
       CMP    #$A0    
       BCC    LF558   
       SBC    #$A0    
LF558: STA    $B6     
LF55A: DEY            
       BMI    LF57E   
       LDA    $95     
       BNE    LF57E   
       BIT    $A6     
       BVC    LF57E   
       BMI    LF573   
       LDX    $E8     
       LDA    #$00    
       SEC            
       SBC    $F9     
LF56E: AND    $94     
       JMP    LF53E   
LF573: LDA    #$00    
       SEC            
       SBC    $E8     
       TAX            
       LDA    $F9     
       JMP    LF56E   
LF57E: LDY    #$00    
       STY    $B2     
       LDX    #$07    
LF584: LDA    $9A,X   
       BEQ    LF589   
       INY            
LF589: DEX            
       BNE    LF584   
LF58C: LDA    $B1     
       LSR            
       LSR            
       AND    #$0F    
       STA    $FB     
       STY    $F2     
       SEC            
       LDA    $95     
       BNE    LF5A8   
       LDA    $96     
       SBC    $B8     
       STA    $B2     
       SEC            
       LDA    $98     
       SBC    $96     
       STA    $98     
LF5A8: PHP            
       BCC    LF5B7   
       LDA    $99     
       SBC    $B2     
       STA    $99     
       BIT    $B2     
       BPL    LF5C7   
       BCS    LF5BA   
LF5B7: JMP    LF691   
LF5BA: LDX    #$06    
LF5BC: LDA    $9A,X   
       STA    $9B,X   
       DEX            
       BNE    LF5BC   
       LDX    $C7     
       BCS    LF5FE   
LF5C7: BCS    LF5B7   
       LDA    $C7     
       SBC    $F2     
       PHA            
       LDA    $9B     
       BEQ    LF5F3   
       DEC    $C7     
       LDA    $AC     
       ORA    $AB     
       AND    $94     
       BEQ    LF5F3   
       SED            
       CLC            
       LDA    $AB     
       SBC    #$00    
       STA    $AB     
       LDA    $AC     
       SBC    #$00    
       STA    $AC     
       CLD            
       ORA    $AB     
       BNE    LF5F3   
       LDA    #$34    
       STA    $95     
LF5F3: LDX    #$FA    
LF5F5: LDA    $A2,X   
       STA    $A1,X   
       INX            
       BNE    LF5F5   
       PLA            
       TAX            
LF5FE: LDA    LF200,X 
       LDX    #$03    
       CPX    $F2     
       BCC    LF650   
       LDX    $B1     
       CPX    #$E0    
       BIT    $81     
       BCC    LF611   
       BVC    LF650   
LF611: BMI    LF650   
       AND    #$E1    
       ORA    #$16    
       BIT    $B2     
       BPL    LF65E   
       LDX    $9C     
       BNE    LF650   
       LSR            
       STA    $9B     
       INC    $C7     
       LDA    $AC     
       LDX    #$01    
       CPX    $AD     
       SBC    #$02    
       BEQ    LF646   
       LDA    $AB     
       ORA    $AC     
       AND    $94     
       BEQ    LF646   
       SED            
       LDA    $94     
       AND    #$01    
       ADC    $AB     
       STA    $AB     
       LDA    $AC     
       ADC    #$00    
       STA    $AC     
       CLD            
LF646: LDA    $AE     
       EOR    #$80    
       ASL            
       ROL    $9B     
       JMP    LF691   
LF650: LDA    #$00    
       BIT    $B2     
       BPL    LF65A   
       STA    $9B     
       BMI    LF691   
LF65A: STA    $A1     
       BPL    LF691   
LF65E: TAY            
       BPL    LF673   
       LDA    $81     
       LDX    $AD     
       CPX    #$04    
       BCC    LF66A   
       ASL            
LF66A: AND    #$03    
       PHP            
       TYA            
       PLP            
       BNE    LF673   
       AND    #$EF    
LF673: STA    $A1     
       LDA    $AE     
       EOR    #$80    
       ASL            
       BIT    $94     
       BPL    LF689   
       LDA    $AD     
       CMP    #$07    
       BCS    LF691   
       LDA    $A0     
       BEQ    LF691   
       ROR            
LF689: PHP            
       LDA    $A1     
       LSR            
       PLP            
       ROL            
       STA    $A1     
LF691: LDA    $99     
       LSR            
       AND    #$78    
       CLC            
       ADC    #$01    
       STA    $BB     
       PLP            
       BCS    LF6F7   
       DEC    $A5     
       LDA    $A6     
       AND    #$07    
       BEQ    LF6BC   
       LSR            
       BNE    LF6B8   
       LDA    $A6     
       AND    #$30    
       STA    $A6     
       ASL            
       ASL            
       ORA    $A6     
       STA    $A6     
       JMP    LF6F7   
LF6B8: DEC    $A6     
       BNE    LF6F7   
LF6BC: LDA    $A4     
       BEQ    LF6C5   
       DEC    $A4     
       JMP    LF6F7   
LF6C5: LDA    $80     
       AND    #$30    
       CMP    #$20    
       BNE    LF6CF   
       LDA    #$00    
LF6CF: STA    $E7     
       LDA    $81     
       LDX    $AD     
       CPX    #$03    
       BCC    LF6DA   
       LSR            
LF6DA: LDX    $E7     
       BNE    LF6DF   
       LSR            
LF6DF: STA    $A4     
       LDA    $E7     
       EOR    $A6     
       AND    #$30    
       BEQ    LF6EF   
       LDA    $E7     
       ORA    #$07    
       STA    $E7     
LF6EF: LDA    $A6     
       ASL            
       ASL            
       ORA    $E7     
       STA    $A6     
LF6F7: LDY    INTIM   
       BNE    LF6F7   
       DEY            
       STY    WSYNC   
       STY    VSYNC   
       LDX    $FB     
       LDA    LFE0D,X 
       STA    $82     
       ASL            
       ASL            
       ASL            
       STA    $BF     
       LDA    LFDB9,X 
       STA    COLUBK  
       EOR    #$03    
       STA    $FA     
       LDA    $B1     
       AND    #$3F    
       CMP    #$2B    
       BCS    LF72C   
       CMP    #$24    
       BCC    LF72C   
       SBC    #$1F    
       TAY            
       LDA    LFDF4,Y 
       STA    COLUBK  
       STY    $C0     
LF72C: LDX    #$01    
       STY    WSYNC   
       LDA    #$5E    
       STA    TIM64T  
LF735: LDA    $B6     
       CLC            
       ADC    LFE69,X 
       CMP    #$A0    
       BCC    LF741   
       SBC    #$A0    
LF741: STA    WSYNC   
       JSR    LFDC9   
       STA    $F5,X   
       STA    HMCLR   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       DEX            
       BPL    LF735   
       STA    WSYNC   
       LDA    $A6     
       AND    #$07    
       STA    $F3     
       LDY    #$00    
       STY    $8A     
       STA    WSYNC   
       LDA    ($BB),Y 
       STA    $97     
       LSR            
       LSR            
       STA    $EF     
       STY    $F0     
       STY    $FC     
       STY    $EA     
       STY    $EC     
       STY    $ED     
       STY    $EE     
       TYA            
       TAX            
       BIT    $93     
       BPL    LF77F   
       STX    $AE     
       LDA    #$FF    
LF77F: STA    WSYNC   
       STA    VBLANK  
LF783: LDA    $A6     
       CPY    $F3     
       BCC    LF7DC   
       BNE    LF7DA   
       CPY    #$00    
       BEQ    LF7DA   
       LSR            
       AND    #$78    
       TAY            
       LDA    LFD08,Y 
       CMP    #$20    
       BEQ    LF7D6   
       STA    $E7     
       LDA    #$04    
       STA    $F0     
       LDA    #$00    
       STA    $E8     
       LDA    $98     
       EOR    #$FF    
       LSR            
       CLC            
       SBC    $98     
       ROL    $E8     
       ASL            
       ROL    $E8     
       BIT    $E7     
       BVC    LF7B8   
       ASL            
       ROL    $E8     
LF7B8: ASL            
       ROL    $FC     
       ASL            
       ROL    $FC     
       BIT    $E7     
       BMI    LF7C9   
       LDA    $EA     
       ADC    $E8     
       JMP    LF7D4   
LF7C9: LDA    #$01    
       SBC    $FC     
       STA    $FC     
       LDA    $EA     
       SEC            
       SBC    $E8     
LF7D4: STA    $EA     
LF7D6: LDY    $EC     
       LDA    $A6     
LF7DA: ASL            
       ASL            
LF7DC: STA    $F1     
       LDA    LFC44,Y 
       STA    $BA     
       SEC            
       SBC    LFC43,Y 
       TAY            
       LDA    LFDEC,Y 
       TAY            
       LDA    $EA     
LF7EE: STA    $E9     
       CLC            
       ADC    $ED     
       STA    $ED     
       LDA    $E9     
       BPL    LF7FD   
       BCS    LF801   
       DEC    $EE     
LF7FD: BCC    LF801   
       INC    $EE     
LF801: CLC            
       ADC    #$08    
       STA    $C8,X   
       CPX    $EF     
       BEQ    LF857   
LF80A: INX            
       CPX    $BA     
       BEQ    LF83E   
       LDA    LFC4C,Y 
       BIT    $F1     
       BVC    LF831   
       BPL    LF81B   
       CLC            
       BCC    LF81E   
LF81B: EOR    #$FF    
       SEC            
LF81E: ADC    $EA     
       INY            
LF821: DEC    $F0     
       BNE    LF7EE   
       CLC            
       ADC    $FC     
       PHA            
       LDA    #$04    
       STA    $F0     
       PLA            
       JMP    LF7EE   
LF831: LDA    $EA     
       BVC    LF821   
LF835: LDA    $EE     
       STA    $E8     
       LDA    $ED     
       JMP    LF8D6   
LF83E: INC    $EC     
       LDY    $EC     
       CPY    #$08    
       BCS    LF835   
       LDA    #$03    
       BIT    $F1     
       BVC    LF854   
       BMI    LF850   
       LDA    #$FD    
LF850: ADC    $EA     
       STA    $EA     
LF854: JMP    LF783   
LF857: STY    $B9     
       LDY    $8A     
       LDA.wy $009B,Y 
       BNE    LF863   
       JMP    LF923   
LF863: LSR            
       AND    #$08    
       PHP            
       BNE    LF86D   
       LDA    #$08    
       BNE    LF873   
LF86D: LDA    #$0D    
       BCS    LF873   
       LDA    #$03    
LF873: ROR    $F9     
       SEC            
       SBC    $C8,X   
       STA    $EB     
       LDA    #$00    
       STA    $E8     
       PLP            
       BEQ    LF895   
       TXA            
       EOR    #$1F    
       STA    $F8     
       ASL            
       ASL            
       CLC            
       ADC    $F8     
       SBC    #$24    
       BIT    $F9     
       BMI    LF895   
       EOR    #$FF    
       DEC    $E8     
LF895: CLC            
       ADC    $ED     
       STA    $E7     
       LDA    $EE     
       ADC    $E8     
       STA    $E8     
       LDA    $97     
       AND    #$03    
       BEQ    LF8B7   
       LSR            
       BEQ    LF8B2   
       LDA    #$00    
       BCC    LF8BA   
       SBC    $EB     
       JMP    LF8BA   
LF8B2: LDA    $EB     
       JMP    LF8BA   
LF8B7: LDA    $EB     
       ASL            
LF8BA: CLC            
       ADC    #$0A    
       STA    $EB     
       LSR            
       LSR            
       CLC            
       BIT    $EB     
       BPL    LF8D0   
       ORA    #$C0    
       ADC    $E7     
       BCS    LF8D6   
       DEC    $E8     
       BCC    LF8D6   
LF8D0: ADC    $E7     
       BCC    LF8D6   
       INC    $E8     
LF8D6: LSR    $E8     
       ROR            
       LSR    $E8     
       ROR            
       STA    $A2     
       CLC            
       ADC    $AE     
       CPX    #$1A    
       BCS    LF949   
       ADC    #$3C    
       LDY    $8A     
       CPY    #$02    
       BCS    LF8EF   
       SBC    #$03    
LF8EF: CMP    #$E0    
       BCC    LF8F5   
       LDA    #$00    
LF8F5: CMP    #$78    
       BCC    LF8FB   
       LDA    #$77    
LF8FB: JSR    LFDC9   
       LDY    $8A     
       STA.wy $0083,Y 
       LDA    $FA     
       BEQ    LF90E   
       LSR            
       BNE    LF91D   
       CPY    #$04    
       BCS    LF923   
LF90E: LDA.wy $009B,Y 
       AND    #$11    
       ORA    #$46    
       STA.wy $009B,Y 
       LDA    LFDB1,Y 
       BNE    LF930   
LF91D: LDA    LFDA9,Y 
       JMP    LF930   
LF923: LDA    #$04    
       STA.wy $0083,Y 
       LDA    #$97    
       CPY    #$06    
       BCC    LF930   
       LDA    #$8E    
LF930: SEC            
       SBC    $97     
       STA.wy $008B,Y 
       INC    $8A     
       LDY    $8A     
       LDA    ($BB),Y 
       STA    $97     
       LSR            
       LSR            
       STA    $EF     
       DEC    $EF     
       LDY    $B9     
       JMP    LF80A   
LF949: ADC    #$58    
       STA    $F4     
       CLC            
       LDA    $AE     
       ADC    #$41    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E7     
       LDA    $AE     
       CLC            
       ADC    #$40    
       LSR            
       CLC            
       ADC    $E7     
       EOR    #$FF    
       ADC    #$5D    
       JSR    LFDC9   
       STA    $E2     
       LDA    $F4     
       JSR    LFDC9   
       STA    $F7     
       LDA    #$00    
       STA    $F9     
       STA    $BD     
       STA    $BE     
       LDX    #$02    
       LDY    #$06    
       STY    $8A     
       DEC    $BB     
       AND    $95     
       BNE    LF9A1   
       LDA    $98     
       LSR            
       LSR            
       LDX    $96     
       CPX    #$20    
       BCC    LF994   
       LDA    $B0     
       ASL            
       ASL            
       ASL            
LF994: AND    #$08    
       STA    $C2     
       LDA    $B0     
       ASL            
       AND    #$04    
       ORA    $C2     
       STA    $C2     
LF9A1: LDA    $F4     
       JSR    LFDC9   
       STA    $C6     
       LDX    #$02    
LF9AA: LDA    $F5,X   
       STA    WSYNC   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
       INY            
LF9B4: DEY            
       BNE    LF9B4   
       STA    RESP0,X 
       STA    WSYNC   
       DEX            
       BPL    LF9AA   
       LDY    $FB     
       LDX    #$01    
LF9C2: LDA    LFEEE,Y 
       STA    COLUP0,X
       LDA    #$07    
       STA    NUSIZ0,X
       LDA    #$20    
       STA    VDELP0,X
       DEX            
       BPL    LF9C2   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$1A    
LF9D8: LDA    $C8,X   
       SEC            
       SBC    #$10    
       STA    $E4,X   
       DEX            
       BPL    LF9D8   
       STA    HMCLR   
       LDA    $98     
       LSR            
       AND    #$78    
       STA    $C3     
       LDA    $A5     
       AND    #$07    
       CMP    #$07    
       BNE    LF9F5   
       LDA    #$06    
LF9F5: STA    $C4     
       ORA    $C3     
       TAY            
       LDA    LFD01,Y 
       LSR            
       LSR            
       TAX            
       LDA    $C4     
       ASL            
       EOR    #$F1    
       STA    $C5     
       ADC    $C8,X   
       STA    $C8,X   
       LDA    $E4,X   
       SEC            
       SBC    $C5     
       STA    $E4,X   
       DEC    $C4     
       BMI    LFA2A   
       LDA    LFD00,Y 
       LSR            
       LSR            
       TAX            
       LDA    $C8,X   
       SEC            
       SBC    $C5     
       STA    $C8,X   
       LDA    $E4,X   
       CLC            
       ADC    $C5     
       STA    $E4,X   
LFA2A: LDA    $96     
       LSR            
       LSR            
       LSR            
       CMP    #$09    
       BCC    LFA35   
       LDA    #$09    
LFA35: EOR    #$FF    
       CLC            
       ADC    #$38    
       STA    $C1     
       JMP    LF1AE   
LFA3F: .byte $85,$1B,$A2,$F0,$A9,$70,$85,$24,$A9,$31,$85,$0A,$85,$10,$85,$11
       .byte $85,$14,$86,$21,$CA,$86,$20,$84,$0B,$84,$0C,$A9,$00,$85,$08,$A0
       .byte $68,$84,$B9,$A2,$02,$24,$B9,$20,$13,$FC,$A9,$03,$85,$26,$85,$25
       .byte $85,$04,$85,$05,$A9,$58,$A6,$F3,$D0,$02,$85,$F3,$A9,$FF,$85,$02
       .byte $85,$2A,$85,$0F,$85,$F5,$A5,$A7,$4A,$4A,$4A,$4A,$4A,$25,$94,$85
       .byte $F8,$A2,$F4,$B5,$F5,$05,$F8,$95,$F5,$29,$F8,$E8,$C9,$48,$D0,$03
       .byte $E8,$D0,$F0,$48,$68,$E8,$30,$FB,$A9,$28,$85,$06,$85,$07,$20,$57
       .byte $FC,$84,$F5,$A2,$05,$A9,$02,$85,$1F,$20,$12,$FC,$A5,$B0,$29,$20
       .byte $05,$AF,$85,$F9,$A5,$AD,$C9,$10,$B0,$08,$A5,$F1,$85,$F3,$A9,$72
       .byte $85,$F1,$90,$06,$A9,$00,$85,$1F,$48,$68,$A5,$AF,$85,$02,$05,$AB
       .byte $05,$AC,$F0,$1A,$EA,$A2,$68,$A5,$AD,$C9,$05,$B0,$02,$A2,$60,$A5
       .byte $B1,$29,$3F,$05,$F9,$C9,$08,$B0,$02,$A2,$58,$4C,$13,$FB,$A2,$DF
       .byte $A5,$F9,$F0,$02,$A2,$E8,$86,$EF,$86,$ED,$86,$EB,$86,$E9,$A9,$4A
       .byte $85,$07,$85,$06,$86,$EF,$20,$57,$FC,$A0,$07,$A5,$B0,$25,$AF,$4A
       .byte $4A,$4A,$29,$1F,$C9,$00,$B0,$09,$A0,$00,$C9,$0C,$90,$03,$E9,$0C
       .byte $A8,$84,$E7,$98,$49,$07,$85,$E8,$A9,$F0,$A2,$0C,$38,$A0,$FC,$94
       .byte $E8,$95,$E7,$E9,$08,$CA,$CA,$D0,$F6,$85,$2B,$85,$02,$85,$2A,$86
       .byte $08,$86,$0F,$A9,$0C,$85,$06,$85,$07,$A2,$F3,$A0,$01,$A9,$40,$EA
       .byte $85,$10,$85,$11,$85,$14,$85,$24,$86,$20,$84,$0A,$85,$02,$85,$2A
       .byte $A0,$06,$88,$D0,$FD,$85,$2B,$A4,$E7,$B1,$F3,$85,$F9,$B1,$F1,$AA
       .byte $B1,$E9,$85,$02,$85,$2A,$85,$1B,$B1,$EB,$85,$1C,$B1,$ED,$85,$1B
       .byte $B1,$EF,$A4,$F9,$85,$1C,$86,$1B,$84,$1C,$85,$1B,$C6,$E7,$10,$D7
       .byte $A9,$80,$85,$20,$85,$21,$85,$02,$85,$2A,$0A,$85,$1B,$85,$1C,$85
       .byte $1B,$A9,$78,$85,$0E,$A9,$31,$85,$0A,$85,$05,$85,$2B,$A9,$10,$85
       .byte $24,$A0,$07,$84,$1F,$B9,$C0,$FC,$AA,$B9,$A0,$FC,$85,$1B,$85,$02
       .byte $85,$2A,$B9,$F8,$FC,$85,$08,$B9,$A8,$FC,$7C,$FC,$2C,$2C,$28,$85
       .byte $1B,$E6,$F8,$B9,$B8,$FC,$85,$1C,$86,$1B,$85,$1C,$A9,$00,$85,$08
       .byte $88,$C6,$E8,$10,$D0,$A0,$2F,$85,$02,$84,$01,$85,$1B,$85,$1C,$A2
       .byte $30,$85,$0E,$85,$1B,$85,$14,$84,$24,$85,$02,$85,$2A,$8E,$96,$02
       .byte $4C,$8D,$F2,$B8,$18,$A0,$0A,$A9,$FF,$99,$EA,$00,$B5,$A8,$B0,$09
       .byte $4A,$E0,$04,$D0,$01,$B8,$38,$B0,$05,$CA,$0A,$0A,$0A,$18,$29,$78
       .byte $D0,$06,$70,$06,$A9,$58,$D0,$04,$24,$F4,$EA,$EA,$99,$E9,$00,$88
       .byte $88,$10,$D4,$60
LFC43: .byte $00
LFC44: .byte $06,$0B,$0F,$13,$16,$18,$19,$1A
LFC4C: .byte $01,$02,$00,$01,$02,$02,$00,$01,$01,$02,$02,$A0,$08,$84,$F8,$C8
       .byte $B1,$F3,$85,$1B,$B1,$F1,$A2,$03,$86,$0F,$85,$02,$8D,$1C,$00,$B1
       .byte $EF,$85,$1B,$B1,$EB,$85,$F9,$B1,$ED,$AA,$B1,$E9,$45,$F5,$A8,$AD
       .byte $F9,$00,$86,$1C,$85,$1B,$84,$1C,$86,$1B,$A4,$F8,$B1,$F3,$85,$1B
       .byte $B1,$F1,$85,$1C,$C6,$F8,$10,$D7,$84,$1C,$84,$1B,$84,$1C,$A9,$FF
       .byte $85,$0F,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$29,$E9,$A9
       .byte $ED,$61,$2F,$00,$50,$58,$5C,$56,$53,$11,$F0,$00,$BA,$8A,$BA,$A2
       .byte $3A,$80,$FE,$00,$E9,$AB,$AF,$AD,$E9,$00,$00,$00,$00,$00,$F2,$95
       .byte $25,$45,$95,$F0,$00,$00,$47,$44,$76,$54,$77,$00,$00,$00,$51,$61
       .byte $75,$51,$71,$00,$00,$00,$1D,$11,$99,$11,$DD,$00,$00,$00,$55,$99
       .byte $DD,$55,$DC,$00,$00,$00,$55,$59,$DD,$55,$9D,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LFD00: .byte $00
LFD01: .byte $00,$1A,$2F,$3F,$4B,$56,$5C
LFD08: .byte $20,$00,$1B,$30,$40,$4C,$56,$5C,$81,$06,$1C,$31,$41,$4D,$57,$5D
       .byte $20,$06,$1D,$32,$42,$4D,$57,$5D,$21,$07,$1F,$33,$43,$4E,$58,$5D
       .byte $21,$09,$20,$34,$43,$4F,$58,$5E,$20,$0B,$22,$35,$44,$4F,$59,$5E
       .byte $21,$0C,$23,$36,$45,$50,$59,$5F,$41,$0E,$24,$37,$45,$51,$59,$5F
       .byte $20,$10,$26,$38,$46,$51,$5A,$5F,$81,$11,$27,$3A,$47,$52,$5A,$60
       .byte $20,$13,$28,$3B,$48,$52,$5B,$60,$21,$14,$2A,$3C,$49,$53,$5B,$60
       .byte $81,$15,$2B,$3D,$49,$54,$5B,$60,$C1,$17,$2C,$3E,$4A,$54,$5B,$60
       .byte $81,$18,$2D,$3F,$4B,$55,$5B,$60,$20
LFD81: .byte $A9,$A9,$89,$7C,$6C,$58,$3F,$24,$04,$9A,$9A,$9A,$9A,$9A,$9A,$9A
       .byte $9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A
       .byte $9A,$9A,$9A,$9A,$9A,$9A,$9A,$9A
LFDA9: .byte $47,$76,$A5,$B1,$D6,$DE,$E2,$E2
LFDB1: .byte $60,$60,$CD,$CD,$BC,$BC,$E2,$E2
LFDB9: .byte $FC,$FC,$2A,$28,$28,$28,$2C,$2C,$28,$A8,$A8,$94,$98,$9A,$0E,$FE
LFDC9: TAY            
       AND    #$0F    
       STA    $E7     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E8     
       CLC            
       ADC    $E7     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E8     
       BCS    LFDE4   
       CMP    #$F0    
       BCC    LFDE7   
LFDE4: ADC    #$10    
       CLC            
LFDE7: ADC    #$01    
       EOR    #$70    
       RTS            

LFDEC: .byte $00,$00,$00,$00,$07,$02,$06
LFDF3: .byte $1A
LFDF4: .byte $A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8
LFE00: LSR            
       PHA            
       CLC            
       ADC    LF19E,X 
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       PLA            
       RTS            

LFE0D: .byte $00,$00,$02,$02,$00,$00,$00,$00,$00,$FE,$90,$91,$70,$FF,$91,$70
LFE1D: .byte $FD,$BF,$9F,$1B,$12,$02
LFE23: .byte $EF,$FF,$F5,$73,$61,$20
LFE29: .byte $05,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$9A
       .byte $7D,$BE,$7D,$9A,$3C,$24,$58,$3E,$7C,$1A,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$66
       .byte $66,$66,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFE69: .byte $00,$1A,$7C,$3E,$58,$24,$38,$1C,$38,$00,$00,$00,$00,$00
LFE77: .byte $FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$59,$BE,$7D,$18,$1C,$38,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$7C,$3E,$7C,$18,$00,$00,$00,$00,$00,$00,$00,$00,$24,$24
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$66
       .byte $66,$00,$00,$00,$00,$00,$00,$00,$38,$1C,$18,$00,$00,$00,$00,$00
       .byte $00,$3C,$18,$00,$00,$00,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00
LFEEE: .byte $44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44
       .byte $44,$44,$00,$00,$3C,$66,$66,$66,$66,$66,$3C,$00,$3C,$18,$18,$18
       .byte $18,$38,$18,$00,$7E,$60,$70,$1C,$06,$46,$3C,$00,$3C,$46,$06,$0C
       .byte $06,$46,$3C,$00,$0E,$04,$7E,$64,$34,$1C,$0C,$00,$7C,$66,$06,$7C
       .byte $60,$60,$7E,$00,$3C,$66,$66,$7C,$60,$62,$3C,$00,$18,$18,$18,$0C
       .byte $06,$42,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$46,$06,$3E
       .byte $66,$66,$3C,$00,$3C,$66,$66,$66,$66,$66,$3C,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$DB,$FF,$DB,$3C,$5A,$7E,$5A,$00,$1C,$08,$1C,$3E
       .byte $5D,$5D,$5D,$3E,$00,$00,$00,$00,$00,$00
LFF78: .byte $00
LFF79: .byte $00,$00,$00,$01,$01,$01,$01,$02,$02,$02,$02,$04,$04,$04,$04,$03
       .byte $03,$03,$03,$05,$05,$05,$05,$07,$07,$07,$07,$07,$07,$09,$09,$09
       .byte $09,$09,$08,$08,$08,$08,$08,$0A,$0A,$0A,$0A,$0A,$0C,$0C,$0C,$0C
       .byte $0B,$0B,$0B,$0B,$0B,$0E,$0E,$0E,$0E,$0E,$0D,$0D,$0D,$0D,$0F,$0F
       .byte $0F,$0F,$12,$12,$12,$10,$10,$10,$11,$11,$11,$11,$13,$13,$13,$14
       .byte $14,$14,$14,$16,$16,$16,$16,$17,$17,$17,$17,$15,$15,$15,$15,$18
       .byte $18,$18,$18,$19,$19,$19,$19,$08,$08,$08,$0D,$0A,$0D,$0A,$08,$00
       .byte $08,$08,$48,$28,$58,$28,$18,$08,$00
LFFF2: .byte $0C,$0D,$0E,$10,$10,$0D,$0D,$12,$16,$1E,$00,$F0,$00,$F0
