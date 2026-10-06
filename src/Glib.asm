; Disassembly of roms/Glib.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Glib.bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$DF    
       TXS            
       LDA    #$00    
       STA    SWACNT  
       STA    SWBCNT  
       LDX    #$FF    
LF00F: STA    VSYNC,X 
       DEX            
       BNE    LF00F   
       LDX    #$08    
LF016: LDA    LF27B,X 
       STA    $9B,X   
       DEX            
       BNE    LF016   
       JSR    LF570   
LF021: JSR    LF1EF   
       JSR    LF391   
       JSR    LF3CC   
       JSR    LF053   
       JSR    LF1EF   
       JSR    LF410   
       JSR    LF49E   
       JSR    LF053   
       JSR    LF1EF   
       JSR    LF391   
       JSR    LF44D   
       JSR    LF053   
       JSR    LF1EF   
       JSR    LF90E   
       JSR    LF053   
       INC    $BC     
       JMP    LF021   
LF053: LDA    INTIM   
       BNE    LF053   
       STA    $98     
       LDA    $99     
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$40    
       STA    VBLANK  
       LDA    #$01    
       JSR    LF1E3   
       LDA    #$06    
       LDX    #$8F    
       JSR    LF58A   
       LDA    #$34    
       JSR    LF5F4   
       LDA    #$06    
       LDX    #$92    
       JSR    LF58A   
       LDX    #$74    
       LDA    $C6     
       BEQ    LF08A   
       LDA    $C7     
       AND    #$20    
       BNE    LF08A   
       LDX    $99     
LF08A: TXA            
       JSR    LF5F4   
       LDX    #$A6    
       JSR    LF20F   
       LDA    #$23    
       JSR    LF1E3   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$2C    
       STA    WSYNC   
       STA    COLUPF  
       LDA    #$00    
       STA    PF0     
       LDA    #$19    
       STA    PF1     
       LDA    #$99    
       STA    PF2     
       LDY    #$A0    
       JSR    LF300   
       LDA    #$03    
       JSR    LF1E0   
       JSR    LF68B   
       LDA    $A5     
       CMP    #$4F    
       BCS    LF0C7   
       JSR    LF64F   
       JMP    LF0C9   
LF0C7: STA    WSYNC   
LF0C9: LDX    #$AD    
       JSR    LF20F   
       LDA    #$4E    
       JSR    LF1E3   
       LDA    #$00    
       STA    WSYNC   
       STA    PF0     
       LDA    #$19    
       STA    PF1     
       LDA    #$99    
       STA    PF2     
       LDX    $C4     
       INX            
       LDA    LF29B,X 
       STA    COLUPF  
       LDY    #$A0    
       JSR    LF300   
       LDA    #$03    
       JSR    LF1E0   
       JSR    LF68B   
       JSR    LF6A7   
       LDX    #$95    
       LDA    #$04    
       JSR    LF58A   
       LDA    #$1E    
       JSR    LF5F4   
       LDA    $A5     
       CMP    #$73    
       BNE    LF10E   
       JSR    LF64F   
LF10E: LDA    #$7A    
       JSR    LF1E3   
       LDY    #$9E    
       JSR    LF253   
       LDA    #$00    
       STA    WSYNC   
       STA    PF0     
       LDA    #$1F    
       STA    PF2     
       STA    PF1     
       LDX    $97     
       LDA    LF6FC,X 
       STA    COLUPF  
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       INC    $98     
       STA    WSYNC   
       INC    $98     
       STA    WSYNC   
       LDX    $99     
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $9B     
       AND    #$10    
       BEQ    LF15B   
       LDA    $BE     
       CMP    #$02    
       BNE    LF15B   
       LDA    $BD     
       CMP    #$02    
       BNE    LF155   
       STX    COLUP0  
LF155: CMP    #$0A    
       BNE    LF15B   
       STX    COLUP1  
LF15B: STA    WSYNC   
       LDY    #$00    
LF15F: LDA    LF740,Y 
       STA    GRP0    
       LDA    LF7C4,Y 
       STA    GRP1    
       INC    $98     
       INY            
       STA    WSYNC   
       CPY    #$07    
       BNE    LF15F   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$02    
       JSR    LF1E0   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$CE    
       LDX    $B6     
       CPX    #$1C    
       BCC    LF18F   
       LDA    #$4F    
LF18F: STA    COLUPF  
       LDA    #$00    
       STA    CTRLPF  
       LDA    #$8C    
       JSR    LF1E3   
LF19A: STA    WSYNC   
       LDA    #$F0    
       STA    PF0     
       LDA    $B7     
       STA    PF1     
       LDA    $B8     
       STA    PF2     
       LDY    #$03    
LF1AA: DEY            
       BNE    LF1AA   
       LDA    $B9     
       STA    PF0     
       LDA    $BA     
       STA    PF1     
       LDA    $BB     
       ORA    #$F0    
       STA    PF2     
       INC    $98     
       LDA    $98     
       CMP    #$92    
       BCC    LF19A   
       JSR    LF67F   
       LDX    $98     
       STA    WSYNC   
LF1CA: STA    WSYNC   
       INX            
       CPX    #$A9    
       BCC    LF1CA   
       INC    $9B     
       LDA    $9B     
       CMP    #$1E    
       BNE    LF1DF   
       INC    $C5     
       LDA    #$00    
       STA    $9B     
LF1DF: RTS            

LF1E0: CLC            
       ADC    $98     
LF1E3: CMP    $98     
       BCC    LF1EE   
       INC    $98     
       STA    WSYNC   
       JMP    LF1E3   
LF1EE: RTS            

LF1EF: STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$28    
       STA    TIM64T  
       RTS            

LF20F: LDY    #$00    
       STY    $8E     
       LDA    COLUP0,X
       AND    #$1F    
       BEQ    LF21B   
       INC    $8E     
LF21B: LDA    VSYNC,X 
       BPL    LF229   
       STA    $FF     
       LDA    $9B     
       AND    #$10    
       BEQ    LF229   
       LDA    $FF     
LF229: AND    #$1F    
       ASL            
       ASL            
       STA    $FF     
       ASL            
       ADC    $FF     
       PHP            
       CLC            
       ADC    #$04    
       STA.wy $0080,Y 
       LDA    #$F7    
       ADC    #$00    
       PLP            
       ADC    #$00    
       STA.wy $0081,Y 
       INX            
       INY            
       INY            
       CPY    #$0C    
       BNE    LF24E   
       STA    WSYNC   
       INC    $98     
LF24E: CPY    #$0E    
       BNE    LF21B   
       RTS            

LF253: LDA.wy $0000,Y 
       STA    HMP0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
LF25D: DEX            
       BPL    LF25D   
       STA    RESP0   
       LDA.wy $0001,Y 
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
LF26C: DEX            
       BPL    LF26C   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       INC    $98     
       INC    $98     
       INC    $98     
LF27B: RTS            

LF27C: .byte $28,$A8,$A5,$4A,$65,$38,$65,$0B
LF284: .byte $35,$B5,$26,$A6,$17,$97,$08,$79,$F9,$6A,$EA,$5B,$DB
LF291: .byte $32,$45,$73
LF294: .byte $75,$66,$57,$48,$39,$2A,$1B
LF29B: .byte $44,$2C,$4E
LF29E: .byte $BE
LF29F: .byte $F8,$D5,$F2,$DE,$F2,$B0,$F2,$D0,$F2,$C2,$F2,$CB,$F2,$EE,$F2,$E7
       .byte $F2,$EB,$24,$EC,$24,$ED,$24,$EE,$44,$ED,$24,$EC,$24,$EB,$44,$EC
       .byte $24,$ED,$24,$EE,$44,$ED,$24,$EC,$24,$EB,$24,$00,$E8,$13,$4A,$33
       .byte $00,$8A,$67,$8F,$67,$00,$EE,$24,$ED,$24,$EC,$24,$EB,$24,$00,$EB
       .byte $24,$EC,$24,$ED,$24,$EE,$24,$00,$F8,$14,$88,$34,$10,$4B,$00,$F8
       .byte $1C,$88,$1C,$10,$2B,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF
LF300: LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$07    
       STA    $FE     
       LDA    $9B     
       AND    $8E     
       BNE    LF356   
       NOP            
       NOP            
       JSR    LF253   
       LDY    #$00    
LF31D: STA    WSYNC   
       LDA    ($86),Y 
       TAX            
       LDA    ($80),Y 
       NOP            
       NOP            
       STA    GRP0    
       STX    GRP1    
       LDA    ($82),Y 
       TAX            
       LDA    ($84),Y 
       STX    GRP0    
       STA    GRP0    
       LDA    ($88),Y 
       NOP            
       STA    GRP1    
       LDA    ($8A),Y 
       STA    GRP1    
       INY            
       CPY    $FE     
       BNE    LF31D   
       CPY    #$07    
       BNE    LF383   
       LDA    #$0C    
       STA    $FE     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       JMP    LF31D   
LF356: INY            
       INY            
       JSR    LF253   
       LDA    #$00    
       STA    NUSIZ1  
       LDY    #$00    
LF361: STA    WSYNC   
       LDA    ($8C),Y 
       STA    GRP1    
       INY            
       CPY    $FE     
       BNE    LF361   
       CPY    #$07    
       BNE    LF381   
       LDA    #$0C    
       STA    $FE     
       STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       JMP    LF361   
LF381: STA    WSYNC   
LF383: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $98     
       CLC            
       ADC    #$0C    
       STA    $98     
       RTS            

LF391: LDA    $B4     
       BEQ    LF399   
       DEC    $B4     
       BNE    LF3BF   
LF399: LDY    #$00    
       LDA    $C9     
       AND    #$7F    
       STA    $C9     
       LDA    ($BF),Y 
       STA    AUDF0   
       JSR    LF6E4   
       STA    AUDV0   
       BEQ    LF3BF   
       LDA    $C9     
       ORA    #$80    
       STA    $C9     
       INY            
       LDA    ($BF),Y 
       STA    AUDC0   
       JSR    LF6E4   
       STA    $B4     
       JSR    LF6EB   
LF3BF: LDA    $B5     
       BEQ    LF3CB   
       DEC    $B5     
       BNE    LF3CB   
       LDA    #$00    
       STA    AUDV1   
LF3CB: RTS            

LF3CC: BIT    $C6     
       BPL    LF40F   
       INC    $C3     
       LDA    $C3     
       CMP    $C2     
       BNE    LF40F   
       LDA    #$00    
       STA    $C3     
       INC    $B6     
       SEC            
       ROR    $B7     
       ROL    $B8     
       BCC    LF401   
       LDA    #$08    
       ORA    $B9     
       STA    $B9     
       ROL    $B9     
       ROR    $BA     
       ROL    $BB     
       LDA    $BB     
       AND    #$F0    
       BEQ    LF401   
       LDA    #$10    
       STA    $C6     
       LDA    #$00    
       JSR    LF6D7   
       RTS            

LF401: LDA    #$05    
       STA    AUDV1   
       LDA    #$0A    
       STA    AUDF1   
       LDA    #$04    
       STA    AUDC1   
       INC    $B5     
LF40F: RTS            

LF410: LDA    $BC     
       CMP    #$05    
       BCC    LF445   
       LDA    SWCHB   
       AND    #$02    
       BNE    LF42A   
       LDA    $C6     
       BNE    LF423   
       INC    $C1     
LF423: LDA    #$00    
       STA    $C6     
       JMP    LF441   
LF42A: LDA    SWCHB   
       AND    #$01    
       BNE    LF446   
       LDA    $C9     
       AND    #$08    
       BNE    LF445   
       LDA    $C9     
       ORA    #$08    
       STA    $C9     
       LDA    #$04    
       STA    $C6     
LF441: LDA    #$00    
       STA    $BC     
LF445: RTS            

LF446: LDA    $C9     
       AND    #$F7    
       STA    $C9     
       RTS            

LF44D: LDA    $C6     
       AND    #$40    
       BEQ    LF49D   
       LDA    $BC     
       CMP    #$03    
       BCC    LF49D   
       BIT    INPT4   
       BMI    LF475   
       LDA    $C9     
       AND    #$01    
       BNE    LF47B   
       LDA    #$01    
       ORA    $C6     
       STA    $C6     
       LDA    #$00    
       STA    $BC     
       LDA    $C9     
       ORA    #$01    
       STA    $C9     
       BNE    LF47B   
LF475: LDA    $C9     
       AND    #$FE    
       STA    $C9     
LF47B: BIT    INPT5   
       BMI    LF497   
       LDA    $C9     
       AND    #$02    
       BNE    LF49D   
       LDA    #$02    
       ORA    $C6     
       STA    $C6     
       LDA    #$00    
       STA    $BC     
       LDA    $C9     
       ORA    #$02    
       STA    $C9     
       BNE    LF49D   
LF497: LDA    $C9     
       AND    #$FD    
       STA    $C9     
LF49D: RTS            

LF49E: LDA    $C6     
       AND    #$40    
       BNE    LF4A5   
LF4A4: RTS            

LF4A5: LDA    #$1A    
       BIT    $C8     
       BNE    LF4A4   
       LDA    $BC     
       CMP    #$02    
       BCC    LF4A4   
       LDX    $97     
       DEX            
       LDY    SWCHA   
       TYA            
       AND    LF6FB,X 
       BEQ    LF4DC   
       LDA    $C9     
       AND    #$FB    
       STA    $C9     
       TYA            
       AND    LF6F5,X 
       BEQ    LF53D   
       TYA            
       AND    LF6F7,X 
       BEQ    LF51D   
       LDA    #$1E    
       BIT    $C8     
       BNE    LF4A4   
       TYA            
       AND    LF6F9,X 
       BEQ    LF50D   
       RTS            

LF4DC: LDA    $C9     
       AND    #$04    
       BEQ    LF4E5   
       JMP    LF56C   
LF4E5: LDA    $C9     
       ORA    #$04    
       STA    $C9     
       LDY    $BE     
       CPY    #$02    
       BEQ    LF56C   
       CPY    #$01    
       BNE    LF4F9   
       LDA    $D0     
       BPL    LF56C   
LF4F9: INC    $BE     
       CPY    #$01    
       BNE    LF556   
       LDY    #$02    
       LDA    $BD     
       CMP    #$06    
       BCC    LF509   
       LDY    #$0A    
LF509: STY    $BD     
       BNE    LF556   
LF50D: LDA    $BE     
       BEQ    LF56C   
       DEC    $BE     
       LDA    $BD     
       AND    #$01    
       BEQ    LF556   
       INC    $BD     
       BNE    LF556   
LF51D: LDY    $BE     
       CPY    #$02    
       BNE    LF52D   
       LDA    #$0A    
       CMP    $BD     
       BEQ    LF56C   
       STA    $BD     
       BNE    LF556   
LF52D: LDA    $BD     
       CMP    #$0C    
       BEQ    LF56C   
       INC    $BD     
       CPY    #$00    
       BNE    LF556   
       INC    $BD     
       BNE    LF556   
LF53D: LDY    $BE     
       CPY    #$02    
       BNE    LF54B   
       CPY    $BD     
       BEQ    LF56C   
       STY    $BD     
       BNE    LF556   
LF54B: LDA    $BD     
       BEQ    LF56C   
       DEC    $BD     
       TYA            
       BNE    LF556   
       DEC    $BD     
LF556: INC    $B4     
       LDA    #$0F    
       STA    AUDV0   
       LDA    $BD     
       ADC    #$08    
       STA    AUDF0   
       LDA    #$04    
       BIT    $D0     
       BMI    LF56A   
       LDA    #$0C    
LF56A: STA    AUDC0   
LF56C: LDA    #$00    
       STA    $BC     
LF570: LDX    $BE     
       LDA    LF291,X 
       STA    $A5     
       LDX    $BD     
       LDA    LF284,X 
       STA    $A4     
       RTS            

LF57F: LDX    #$00    
       TXA            
LF582: STA    $B6,X   
       INX            
       CPX    #$06    
       BNE    LF582   
       RTS            

LF58A: STA    $FE     
       LDY    #$00    
LF58E: LDA    VSYNC,X 
       AND    #$F0    
       BNE    LF5A7   
       DEC    $FE     
       LDA    VSYNC,X 
       AND    #$0F    
       BNE    LF5B3   
       INX            
       DEC    $FE     
       BNE    LF58E   
       INC    $FE     
       DEX            
       JMP    LF5B3   
LF5A7: LDA    VSYNC,X 
       JSR    LF6E4   
       JSR    LF5DC   
       DEC    $FE     
       BEQ    LF5C2   
LF5B3: LDA    VSYNC,X 
       AND    #$0F    
       JSR    LF5DC   
       DEC    $FE     
       BEQ    LF5C2   
       INX            
       JMP    LF5A7   
LF5C2: CPY    #$04    
       BCS    LF5C8   
       STA    WSYNC   
LF5C8: CPY    #$0C    
       BEQ    LF5DB   
       LDA    #$04    
       STA.wy $0080,Y 
       LDA    #$F7    
       STA.wy $0081,Y 
       INY            
       INY            
       JMP    LF5C8   
LF5DB: RTS            

LF5DC: STA    $FF     
       ASL            
       ASL            
       ASL            
       SEC            
       SBC    $FF     
       CLC            
       ADC    #$78    
       STA.wy $0080,Y 
       LDA    #$F8    
       ADC    #$00    
       STA.wy $0081,Y 
       INY            
       INY            
       RTS            

LF5F4: LDY    #$9C    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       JSR    LF253   
       LDY    #$00    
LF613: STY    $FE     
       STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($84),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    $FF     
       LDA    ($88),Y 
       TAX            
       LDA    ($86),Y 
       LDY    $FF     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $FE     
       INY            
       CPY    #$07    
       BNE    LF613   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       CLC            
       LDA    $98     
       ADC    #$07    
       STA    $98     
       RTS            

LF64F: PHA            
       LDY    #$34    
       LDA    $97     
       AND    #$01    
       BNE    LF65A   
       LDY    #$74    
LF65A: LDA    $A4     
       LDX    #$02    
       JSR    LF694   
       INC    $98     
       LDA    #$11    
       STA    CTRLPF  
       PLA            
       JSR    LF1E3   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$02    
       STA    ENABL   
       LDA    #$04    
       JSR    LF1E0   
       LDA    #$00    
       STA    ENABL   
       INC    $98     
       RTS            

LF67F: LDA    #$FF    
       STA    PF2     
       STA    PF1     
       STA    PF0     
       INC    $98     
       STA    WSYNC   
LF68B: LDA    #$00    
       STA    PF2     
       STA    PF1     
       STA    PF0     
       RTS            

LF694: STY    COLUP0,X
       STA    HMM0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF69D: DEY            
       BPL    LF69D   
       STA    RESM0,X 
       STA    WSYNC   
       INC    $98     
       RTS            

LF6A7: LDX    #$02    
LF6A9: LDY    $CA,X   
       LDA    $CD,X   
       JSR    LF694   
       DEX            
       BPL    LF6A9   
       LDA    #$F0    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$31    
       STA    CTRLPF  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$02    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       LDA    #$03    
       JSR    LF1E0   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       RTS            

LF6D7: ASL            
       TAY            
       LDA    LF29E,Y 
       STA    $BF     
       LDA    LF29F,Y 
       STA    $C0     
       RTS            

LF6E4: ROR            
       ROR            
       ROR            
       ROR            
       AND    #$0F    
       RTS            

LF6EB: JSR    LF6EE   
LF6EE: INC    $BF     
       BNE    LF6F4   
       INC    $C0     
LF6F4: RTS            

LF6F5: .byte $40,$04
LF6F7: .byte $80,$08
LF6F9: .byte $10,$01
LF6FB: .byte $20
LF6FC: .byte $02,$34,$74,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$08,$14,$22,$3E,$22,$22,$22,$02,$02,$02,$02,$02
       .byte $3C,$22,$22,$3C,$22,$22,$3C,$07,$01,$03,$01,$07,$3E,$20,$20,$20
       .byte $20,$20,$3E,$07,$01,$03,$01,$07,$3C,$12,$12,$12,$12,$12,$3C,$07
       .byte $01,$07,$04,$07
LF740: .byte $3C,$20,$20,$38,$20,$20,$3C,$02,$02,$02,$02,$02,$3E,$20,$20,$38
       .byte $20,$20,$20,$05,$05,$07,$01,$01,$3E,$20,$20,$26,$22,$22,$3E,$07
       .byte $01,$07,$04,$07,$22,$22,$22,$3E,$22,$22,$22,$05,$05,$07,$01,$01
       .byte $08,$08,$08,$08,$08,$08,$08,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $12,$12,$1E,$07,$05,$07,$05,$07,$22,$24,$28,$30,$28,$24,$22,$07
       .byte $04,$07,$01,$07,$20,$20,$20,$20,$20,$20,$3E,$02,$02,$02,$02,$02
       .byte $22,$36,$2A,$2A,$22,$22,$22,$07,$01,$07,$01,$07,$22,$32,$2A,$2A
       .byte $2A,$26,$22,$02,$02,$02,$02,$02,$3E,$22,$22,$22,$22,$22,$3E,$02
       .byte $02,$02,$02,$02
LF7C4: .byte $3E,$22,$22,$3E,$20,$20,$20,$07,$01,$07,$01,$07,$3E,$22,$22,$22
       .byte $2A,$26,$3E,$17,$15,$15,$15,$17,$3E,$22,$22,$3E,$28,$24,$22,$02
       .byte $02,$02,$02,$02,$3E,$20,$20,$3E,$02,$02,$3E,$02,$02,$02,$02,$02
       .byte $3E,$08,$08,$08,$08,$08,$08,$02,$02,$02,$02,$02,$22,$22,$22,$22
       .byte $22,$22,$3E,$02,$02,$02,$02,$02,$22,$22,$22,$22,$22,$14,$08,$05
       .byte $05,$07,$01,$01,$22,$22,$22,$2A,$2A,$3E,$36,$05,$05,$07,$01,$01
       .byte $22,$14,$14,$08,$14,$14,$22,$07,$05,$07,$05,$07,$22,$22,$14,$08
       .byte $08,$08,$08,$05,$05,$07,$01,$01,$3E,$02,$04,$08,$10,$20,$3E,$17
       .byte $15,$15,$15,$17,$10,$38,$38,$38,$38,$38,$10,$04,$0E,$0E,$0E,$04
       .byte $38,$64,$7C,$EE,$6C,$6C,$38,$07,$07,$02,$07,$07,$74,$4C,$C6,$C6
       .byte $E6,$74,$7E,$2F,$1B,$1B,$09,$06,$28,$83,$81,$01,$90,$B3,$00,$C0
       .byte $8D,$89,$03,$87,$3E,$22,$22,$22,$22,$22,$3E,$08,$08,$08,$08,$08
       .byte $08,$08,$3E,$02,$02,$3E,$20,$20,$3E,$3E,$02,$02,$0E,$02,$02,$3E
       .byte $24,$24,$24,$3E,$04,$04,$04,$3E,$20,$20,$3E,$02,$02,$3E,$3E,$20
       .byte $20,$3E,$22,$22,$3E,$3E,$02,$02,$02,$02,$02,$02,$3E,$22,$22,$3E
       .byte $22,$22,$3E,$3E,$22,$22,$3E,$02,$02,$02,$7B,$31,$8A,$61,$7B,$31
       .byte $8F,$61,$7B,$31,$8A,$61,$7B,$31,$8F,$61,$00
LF8CF: LDA    $C9     
       BMI    LF907   
       LDX    #$06    
LF8D5: LDA    $AD,X   
       AND    #$1F    
       STA    $AD,X   
       DEX            
       BPL    LF8D5   
       LDX    $D0     
       BMI    LF8EC   
       LDA    $A6,X   
       AND    #$7F    
       STA    $A6,X   
       LDA    #$FF    
       STA    $D0     
LF8EC: LDA    #$10    
       STA    $C8     
       LDA    #$08    
       STA    $C6     
       LDA    #$08    
       BIT    $C7     
       BNE    LF907   
       LDX    #$06    
LF8FC: LDA    $A6,X   
       BEQ    LF904   
       ORA    #$40    
       STA    $A6,X   
LF904: DEX            
       BPL    LF8FC   
LF907: LDA    #$00    
       STA    $95     
       STA    $96     
       RTS            

LF90E: LDA    $C8     
       BPL    LF915   
       JMP    LFE53   
LF915: JSR    LFB4E   
       LDA    #$04    
       BIT    $C6     
       BNE    LF958   
       ASL            
       BIT    $C6     
       BNE    LF969   
       ASL            
       BIT    $C6     
       BNE    LF8CF   
       ASL            
       BIT    $C6     
       BNE    LF930   
       JMP    LF9A5   
LF930: LDX    #$0D    
LF932: LDA    LF94A,X 
       STA    $A6,X   
       DEX            
       BPL    LF932   
       LDA    $C9     
       BMI    LF949   
       LDA    $C5     
       AND    #$03    
       BNE    LF949   
       LDA    #$03    
       JMP    LF6D7   
LF949: RTS            

LF94A: .byte $00,$87,$81,$8D,$85,$00,$00,$00,$00,$8F,$96,$85,$92,$00
LF958: LDA    #$FF    
       STA    $D0     
       JSR    LFADA   
       JSR    LFACF   
       LDA    #$01    
       STA    $97     
       JMP    LFDC1   
LF969: INC    $D1     
       LDA    #$03    
       BIT    $C6     
       BEQ    LF974   
       JMP    LFBF7   
LF974: LDA    #$40    
       BIT    $C8     
       BEQ    LF97D   
       JMP    LF9F5   
LF97D: LDA    #$02    
       BIT    $C8     
       BEQ    LF986   
       JMP    LFEC9   
LF986: ASL            
       BIT    $C8     
       BNE    LF9A4   
       ASL            
       BIT    $C8     
       BEQ    LF993   
       JMP    LFA65   
LF993: ASL            
       BIT    $C8     
       BEQ    LF99B   
       JMP    LFEFA   
LF99B: LDA    #$02    
       BIT    $C7     
       BEQ    LF9A4   
       JMP    LFE6F   
LF9A4: RTS            

LF9A5: JSR    LF57F   
       JSR    LFADA   
       LDA    SWCHB   
       ROR            
       AND    #$60    
       STA    $C7     
       LDX    #$01    
       AND    #$20    
       BEQ    LF9BA   
       INX            
LF9BA: STX    $96     
       STX    $97     
       LDA    $C7     
       AND    #$40    
       STA    $B6     
       LDX    $C1     
       CPX    #$19    
       BNE    LF9CC   
       LDX    #$00    
LF9CC: STX    $C1     
       LDA    LFFCA,X 
       JSR    LF6E4   
       CMP    #$0A    
       BCC    LF9DD   
       SEC            
       SBC    #$0A    
       ORA    #$10    
LF9DD: STA    $94     
       LDA    LFFCA,X 
       AND    #$0F    
       STA    $91     
       TAX            
       LDA    LFFE2,X 
       ORA    $C7     
       STA    $C7     
LF9EE: LDX    #$00    
       STX    $FE     
       JMP    LFD85   
LF9F5: LDX    #$02    
       LDA    #$00    
LF9F9: STA    $94,X   
       DEX            
       BNE    LF9F9   
       STA    $FE     
       SED            
       LDY    #$00    
LFA03: LDA.wy $00AD,Y 
       STA    $FF     
       AND    #$1F    
       BEQ    LFA39   
       TAX            
       INC    $FE     
       LDA    #$20    
       BIT    $FF     
       CLC            
       PHP            
       LDA    #$00    
       PLP            
       BNE    LFA1F   
       BVC    LFA22   
       ADC    LFF32,X 
LFA1F: ADC    LFF32,X 
LFA22: ADC    LFF32,X 
       STA    $FF     
       LDX    $C4     
       BEQ    LFA31   
       BPL    LFA2F   
       ADC    $FF     
LFA2F: ADC    $FF     
LFA31: ADC    $96     
       STA    $96     
       BCC    LFA39   
       INC    $95     
LFA39: INY            
       CPY    #$07    
       BNE    LFA03   
       LDA    #$00    
       LDX    $FE     
       CPX    #$07    
       BNE    LFA48   
       LDA    #$50    
LFA48: CPX    #$06    
       BNE    LFA4E   
       LDA    #$10    
LFA4E: CPX    #$05    
       BNE    LFA54   
       LDA    #$05    
LFA54: CLC            
       ADC    $96     
       STA    $96     
       BCC    LFA5D   
       INC    $95     
LFA5D: CLD            
       LDA    $C8     
       AND    #$BF    
       STA    $C8     
LFA64: RTS            

LFA65: LDA    $C9     
       BMI    LFA64   
       LDA    #$00    
       STA    $81     
       LDA    #$8F    
       LDX    $97     
       CPX    #$01    
       BEQ    LFA77   
       LDA    #$92    
LFA77: STA    $80     
       LDA    $96     
       AND    #$0F    
       BEQ    LFA8B   
       DEC    $96     
       LDA    #$01    
       JSR    LFAB3   
       LDA    #$07    
       JMP    LF6D7   
LFA8B: LDA    $96     
       BEQ    LFA97   
       SEC            
       SBC    #$10    
       STA    $96     
       JMP    LFAA1   
LFA97: LDA    $95     
       BEQ    LFAAB   
       DEC    $95     
       LDA    #$90    
       STA    $96     
LFAA1: LDA    #$10    
       JSR    LFAB3   
       LDA    #$08    
       JMP    LF6D7   
LFAAB: LDA    #$FE    
       JSR    LFE5E   
       JMP    LFE37   
LFAB3: SED            
       LDY    #$02    
       CLC            
LFAB7: ADC    ($80),Y 
       STA    ($80),Y 
       BCC    LFAC2   
       LDA    #$00    
       DEY            
       BPL    LFAB7   
LFAC2: CLD            
       CLD            
       RTS            

LFAC5: INC    $E0     
       AND    #$1F    
       TAX            
       INC    $E0,X   
       LDA    #$00    
       RTS            

LFACF: LDX    #$1B    
LFAD1: LDA    LFF4C,X 
       STA    $DF,X   
       DEX            
       BNE    LFAD1   
       RTS            

LFADA: LDX    #$08    
       LDA    #$00    
LFADE: STA    $8E,X   
       DEX            
       BNE    LFADE   
       LDX    #$07    
       LDA    #$00    
LFAE7: STA    $A5,X   
       DEX            
       BNE    LFAE7   
LFAEC: LDX    #$07    
       LDA    #$00    
LFAF0: STA    $AC,X   
       DEX            
       BNE    LFAF0   
       RTS            

LFAF6: LDX    #$A6    
       LDY    #$A7    
       BNE    LFB00   
LFAFC: LDX    #$AD    
       LDY    #$AE    
LFB00: LDA    #$06    
       STA    $FE     
LFB04: LDA    VSYNC,X 
       AND    #$1F    
       BNE    LFB1D   
       LDA.wy $0000,Y 
       AND    #$9F    
       BEQ    LFB1E   
       ORA    VSYNC,X 
       STA    VSYNC,X 
       LDA.wy $0000,Y 
       AND    #$60    
       STA.wy $0000,Y 
LFB1D: INX            
LFB1E: INY            
       DEC    $FE     
       BNE    LFB04   
       RTS            

LFB24: LDY    #$00    
LFB26: LDA.wy $00A6,Y 
       BNE    LFB3A   
LFB2B: LDX    $FB     
       LDA    $E0,X   
       BEQ    LFB40   
       DEC    $E0     
       DEC    $E0,X   
       STX    $A6,Y   
       JSR    LFB5A   
LFB3A: INY            
       CPY    #$07    
       BNE    LFB26   
LFB3F: RTS            

LFB40: LDA    $E0     
       BEQ    LFB3F   
       DEC    $FB     
       BNE    LFB2B   
       LDA    #$1A    
       STA    $FB     
       BNE    LFB2B   
LFB4E: INC    $FD     
       LDA    $FD     
       CMP    #$0E    
       BCC    LFB58   
       LDA    #$01    
LFB58: STA    $FD     
LFB5A: LDA    $FC     
       CLC            
       ADC    $FD     
       CMP    #$62    
       BCC    LFB66   
       SEC            
       SBC    #$62    
LFB66: STA    $FC     
       TAX            
       LDA    LFF68,X 
       STA    $FB     
       RTS            

LFB6F: STY    $FF     
       PHA            
       TXA            
       PHA            
       LDA.wy $00AD,Y 
       AND    #$1F    
       BNE    LFB89   
LFB7B: LDY    $FF     
       PLA            
       TAX            
       PLA            
       ORA.wy $00AD,Y 
       STA.wy $00AD,Y 
       LDA    #$00    
       RTS            

LFB89: CPY    #$00    
       BEQ    LFBC6   
       LDX    #$00    
       LDY    #$01    
LFB91: CPY    $FF     
       BEQ    LFBBC   
LFB95: LDA    $AD,X   
       AND    #$1F    
       BNE    LFBAC   
       LDA.wy $00AD,Y 
       AND    #$1F    
       ORA    $AD,X   
       STA    $AD,X   
       LDA.wy $00AD,Y 
       AND    #$E0    
       STA.wy $00AD,Y 
LFBAC: INX            
       CPX    #$06    
       BEQ    LFBBC   
       INY            
       CPY    #$06    
       BNE    LFB91   
       LDA    $BD     
       CMP    #$0C    
       BEQ    LFB95   
LFBBC: LDA    $AD,X   
       AND    #$1F    
       BNE    LFBC6   
       STX    $FF     
       BEQ    LFB7B   
LFBC6: LDX    #$06    
       LDY    #$05    
       CPX    $FF     
       BEQ    LFBEB   
LFBCE: LDA    $AD,X   
       AND    #$1F    
       BNE    LFBE5   
       LDA.wy $00AD,Y 
       AND    #$1F    
       ORA    $AD,X   
       STA    $AD,X   
       LDA.wy $00AD,Y 
       AND    #$E0    
       STA.wy $00AD,Y 
LFBE5: DEX            
       DEY            
       CPX    $FF     
       BNE    LFBCE   
LFBEB: LDA    $AD,X   
       AND    #$1F    
       BEQ    LFB7B   
       PLA            
       TAX            
       PLA            
       LDY    $FF     
       RTS            

LFBF7: LDA    #$02    
       BIT    $C8     
       BNE    LFC06   
       LDA    $BE     
       CMP    #$02    
       BNE    LFC17   
       JMP    LFCC7   
LFC06: LDA    $C6     
       AND    #$03    
       CMP    $97     
       BEQ    LFC11   
       JMP    LFCB4   
LFC11: JSR    LFDE8   
       JMP    LFCB4   
LFC17: LDA    $97     
       BIT    $C6     
       BNE    LFC20   
       JMP    LFCB4   
LFC20: LDA    $BD     
       CLC            
       ADC    #$01    
       ROR            
       LDX    $BE     
       BEQ    LFC2D   
       CLC            
       ADC    #$07    
LFC2D: TAX            
       LDA    $D0     
       BPL    LFC4E   
       LDA    $BD     
       CLC            
       ROR            
       BCS    LFCAF   
       LDA    $A6,X   
       AND    #$1F    
       BEQ    LFCAF   
       STX    $D0     
       LDA    $A6,X   
       ORA    #$80    
       STA    $A6,X   
       LDA    #$01    
       JSR    LF6D7   
       JMP    LFCB4   
LFC4E: CPX    $D0     
       BNE    LFC6B   
       LDA    $A6,X   
       AND    #$7F    
       JMP    LFC5D   
LFC59: LDA    $A6,X   
       AND    #$60    
LFC5D: STA    $A6,X   
LFC5F: LDA    #$FF    
       STA    $D0     
       LDA    #$02    
       JSR    LF6D7   
       JMP    LFCB4   
LFC6B: CPX    #$07    
       BCS    LFC8F   
       LDA    $D0     
       CMP    #$07    
       BCC    LFCAF   
       LDA    $A6,X   
       BNE    LFCAF   
       CPX    #$06    
       BNE    LFC81   
       LDY    $AB     
       BNE    LFCAF   
LFC81: LDY    $D0     
       LDA.wy $00A6,Y 
       AND    #$1F    
       STA    $A6,X   
       LDX    $D0     
       JMP    LFC59   
LFC8F: TXA            
       SEC            
       SBC    #$07    
       TAY            
       LDX    $D0     
       LDA    $A6,X   
       AND    #$1F    
       PHA            
       LDA    $A6,X   
       AND    #$60    
       STA    $A6,X   
       PLA            
       JSR    LFB6F   
       CMP    #$00    
       BEQ    LFC5F   
       ORA    $A6,X   
       ORA    #$80    
       STA    $A6,X   
LFCAF: LDA    #$04    
       JSR    LF6D7   
LFCB4: LDA    #$FC    
       AND    $C6     
       STA    $C6     
       LDA    $C8     
       ORA    #$40    
       STA    $C8     
       JSR    LFAF6   
       JSR    LFAFC   
       RTS            

LFCC7: LDA    $BD     
       CMP    #$02    
       BNE    LFD22   
       LDA    #$04    
       BIT    $C8     
       BNE    LFCF2   
       LDA    $C6     
       AND    #$03    
       CMP    $97     
       BEQ    LFCDE   
       JMP    LFCB4   
LFCDE: LDA    #$05    
       JSR    LF6D7   
       LDA    #$04    
       ORA    $C8     
       STA    $C8     
       LDA    $C6     
       AND    #$7C    
       STA    $C6     
       JMP    LF9F5   
LFCF2: LDA    $C6     
       AND    #$03    
       TAY            
       LDA    #$20    
       BIT    $C7     
       BNE    LFD04   
       CPY    $97     
       BEQ    LFD0B   
       JMP    LFCAF   
LFD04: CPY    $97     
       BNE    LFD0B   
       JMP    LFCAF   
LFD0B: LDA    #$03    
       JSR    LF6D7   
       LDA    #$08    
       STA    $C8     
       LDA    $C6     
       AND    #$BF    
       STA    $C6     
       LDA    #$FC    
       JSR    LFE5E   
       JMP    LFCB4   
LFD22: LDA    $C6     
       AND    #$03    
       CMP    $97     
       BEQ    LFD2D   
       JMP    LFCB4   
LFD2D: LDA    #$10    
       STA    $C6     
       LDA    #$00    
       JSR    LF6D7   
       JMP    LFCB4   
LFD39: JSR    LF57F   
       LDA    #$00    
       STA    $C3     
       LDX    $C1     
       LDA    LFFCA,X 
       JSR    LF6E4   
       TAX            
       LDY    LFFE7,X 
       BNE    LFD4F   
       RTS            

LFD4F: LDA    $C7     
       ORA    #$80    
       STA    $C7     
       STY    $C2     
       CPY    #$FF    
       BNE    LFD65   
       LDA    $9B     
       ORA    #$03    
       ASL            
       ASL            
       AND    #$1F    
       STA    $C2     
LFD65: BIT    $C7     
       BVC    LFD6C   
       CLC            
       ROR    $C2     
LFD6C: RTS            

LFD6D: LDX    #$00    
       LDA    $FC     
       CMP    #$1E    
       BCS    LFD7D   
       LDX    #$01    
       CMP    #$0C    
       BCS    LFD7D   
       LDX    #$FF    
LFD7D: LDA    $9B     
       ROR            
       ROR            
       AND    #$03    
       STA    $FE     
LFD85: STX    $C4     
       LDA    $D1     
       STA    $FF     
       LDY    #$00    
LFD8D: INC    $FF     
       LDA    $FF     
       AND    #$07    
       TAX            
       LDA    LFFED,X 
       STA    $8E     
       AND    #$07    
       TAX            
       LDA    LF294,X 
       STA.wy $00CD,Y 
       LDA    $99     
       DEC    $FE     
       BMI    LFDB8   
       LDA    $8E     
       AND    #$60    
       STA    $AD,X   
       ASL    $8E     
       LDA    #$72    
       ASL    $8E     
       BCS    LFDB8   
       LDA    #$7D    
LFDB8: STA.wy $00CA,Y 
       INY            
       CPY    #$03    
       BNE    LFD8D   
       RTS            

LFDC1: LDA    #$48    
       STA    $C6     
       LDA    #$02    
       STA    $C8     
       LDA    #$02    
       BIT    $C7     
       BEQ    LFDDA   
       LDX    #$06    
LFDD1: LDA    $A6,X   
       AND    ENABL   
       STA    $A6,X   
       DEX            
       BPL    LFDD1   
LFDDA: JSR    LFAEC   
       JSR    LF57F   
       JSR    LF9EE   
       LDA    #$FF    
       JMP    LFE5E   
LFDE8: JSR    LFD6D   
       JSR    LFD39   
       LDX    #$00    
LFDF0: LDA    $A6,X   
       AND    #$1F    
       STA    $A6,X   
       INX            
       CPX    #$07    
       BNE    LFDF0   
       JSR    LFB24   
       LDA    $C7     
       AND    #$02    
       BEQ    LFE13   
       LDA    $AC     
       AND    #$1F    
       BNE    LFE0C   
       BEQ    LFE20   
LFE0C: JSR    LFAC5   
       STA    $AC     
       BEQ    LFE20   
LFE13: LDA    $A6     
       ORA    $AD     
       STA    $AD     
       LDA    #$00    
       STA    $A6     
       JSR    LFAF6   
LFE20: LDA    #$00    
       STA    $C8     
       LDA    $C7     
       AND    #$80    
       ORA    $C6     
       STA    $C6     
LFE2C: LDA    #$00    
       STA    $BD     
       LDA    #$00    
       STA    $BE     
       JMP    LF570   
LFE37: LDA    #$01    
       BIT    $C7     
       BEQ    LFE42   
       LDA    #$10    
       STA    $C6     
       RTS            

LFE42: LDA    #$40    
       STA    $C8     
       LDA    $C7     
       AND    #$80    
       ORA    #$40    
       ORA    $C6     
       STA    $C6     
       JMP    LFE2C   
LFE53: LDA    $C5     
       BNE    LFE5D   
       LDA    $C8     
       AND    #$7F    
       STA    $C8     
LFE5D: RTS            

LFE5E: STA    $C5     
       LDA    $9B     
       CMP    #$0F    
       BCC    LFE68   
       DEC    $C5     
LFE68: LDA    $C8     
       ORA    #$80    
       STA    $C8     
       RTS            

LFE6F: LDA    $C5     
       AND    #$03    
       CMP    #$02    
       BEQ    LFE7E   
       LDA    $C8     
       AND    #$DF    
       STA    $C8     
       RTS            

LFE7E: LDA    #$20    
       BIT    $C8     
       BNE    LFEBC   
       ORA    $C8     
       STA    $C8     
       LDA    $A6     
       BPL    LFE90   
       LDX    #$FF    
       STX    $D0     
LFE90: AND    #$1F    
       BEQ    LFEA3   
       LDA    #$04    
       BIT    $C7     
       BNE    LFE9F   
       LDA    $A6     
       JSR    LFAC5   
LFE9F: LDA    #$00    
       STA    $A6     
LFEA3: JSR    LFAF6   
       JSR    LFB24   
       LDA    $AC     
       BEQ    LFEB2   
       JSR    LFAC5   
       STA    $AC     
LFEB2: LDA    $D0     
       BMI    LFEBC   
       CMP    #$07    
       BCS    LFEBC   
       DEC    $D0     
LFEBC: LDA    $E0     
       BNE    LFEC8   
       LDA    $A6     
       BNE    LFEC8   
       LDA    $AD     
       BEQ    LFEF5   
LFEC8: RTS            

LFEC9: LDX    #$00    
LFECB: LDA    $A6,X   
       BEQ    LFEE2   
       CMP    #$20    
       BCC    LFED9   
       INX            
       CPX    #$07    
       BNE    LFECB   
       RTS            

LFED9: AND    #$1F    
       LDY    #$00    
       STY    $A6,X   
       JSR    LFAC5   
LFEE2: JSR    LFAF6   
       LDA    $E0     
       BEQ    LFEF1   
       JSR    LFB24   
LFEEC: LDA    #$06    
       JMP    LF6D7   
LFEF1: LDA    $A6     
       BNE    LFEEC   
LFEF5: LDA    #$20    
       STA    $C6     
       RTS            

LFEFA: LDX    #$00    
LFEFC: LDA    $A6,X   
       BEQ    LFF12   
       CMP    #$20    
       BCS    LFF12   
       CMP    #$1B    
       BCC    LFF28   
       ADC    #$00    
       CMP    #$1F    
       BNE    LFF2F   
       LDA    #$00    
       STA    $A6,X   
LFF12: INX            
       CPX    #$0E    
       BNE    LFEFC   
       LDA    #$20    
       BIT    $C7     
       BEQ    LFF25   
       DEC    $97     
       BNE    LFF25   
       INC    $97     
       INC    $97     
LFF25: JMP    LFDC1   
LFF28: LDA    #$06    
       JSR    LF6D7   
       LDA    #$1B    
LFF2F: STA    $A6,X   
       RTS            

LFF32: .byte $00,$01,$03,$03,$02,$01,$04,$02,$04,$01,$08,$05,$01,$03,$01,$01
       .byte $03,$10,$01,$01,$01,$01,$04,$04,$08,$04
LFF4C: .byte $10,$62,$09,$02,$02,$04,$0C,$02,$03,$02,$09,$01,$01,$04,$02,$06
       .byte $08,$02,$01,$06,$04,$06,$04,$02,$02,$01,$02,$01
LFF68: .byte $0C,$0E,$0E,$04,$05,$01,$05,$02,$05,$0C,$10,$15,$0D,$04,$17,$19
       .byte $13,$01,$0F,$0C,$12,$01,$06,$01,$03,$12,$15,$05,$0F,$09,$14,$05
       .byte $16,$0E,$02,$0F,$05,$0D,$09,$0C,$09,$06,$16,$07,$04,$14,$01,$03
       .byte $01,$0E,$05,$09,$01,$0B,$0E,$12,$12,$14,$17,$14,$05,$05,$0F,$13
       .byte $13,$07,$04,$12,$0F,$0F,$05,$09,$05,$15,$14,$09,$0E,$08,$0F,$09
       .byte $09,$0F,$13,$08,$0A,$1A,$07,$18,$10,$11,$19,$05,$01,$14,$01,$09
       .byte $15,$12
LFFCA: .byte $11,$21,$31,$41,$51,$12,$22,$32,$42,$52,$13,$23,$33,$43,$53,$14
       .byte $24,$34,$44,$54,$15,$25,$35,$45
LFFE2: .byte $55,$09,$01,$08,$03
LFFE7: .byte $07,$00,$3C,$24,$0C,$FF
LFFED: .byte $20,$46,$25,$41,$23,$26,$42,$44,$FF,$FF,$FF,$FF,$FF,$00,$F0,$00
       .byte $F0,$00,$F0
