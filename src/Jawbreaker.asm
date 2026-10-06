; Disassembly of roms/Jawbreaker.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Jawbreaker.bin
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
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF1   =  $18
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXPPMM  =  $37
INPT4   =  $3C
SWCHB   =  $0282
$0285   =  $0285
$0288   =  $0288
TIM8T   =  $0295
TIM64T  =  $0296
LF3F4   =   $F3F4

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       DEX            
       BNE    LF005   
       STA    $E5     
       DEX            
       TXS            
       LDA    #$31    
       STA    CTRLPF  
       STA    $E4     
       LDX    #$07    
LF016: TXA            
       CLC            
       ADC    #$01    
       STA    $D8,X   
       DEX            
       BPL    LF016   
       LDA    #$A4    
       STA    $EF     
       LDA    #$0D    
       STA    $D7     
       LDX    #$09    
       STX    WSYNC   
LF02B: DEX            
       BNE    LF02B   
       STA    RESM0   
       JSR    LF0E1   
       LDA    #$87    
       STA    $E9     
       JMP    LF15B   
LF03A: STA    $85     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $84     
       LDA    $85     
       AND    #$0F    
       SEC            
       SBC    $E2     
       BPL    LF05F   
       LDY    #$FF    
LF04D: INY            
       CLC            
       ADC    $84     
       BMI    LF04D   
       STA    $84     
       LDA    $85     
       AND    #$F0    
       ORA    $84     
       STY    $84     
       CLC            
       RTS            

LF05F: STA    $84     
       LDA    $85     
       AND    #$F0    
       ORA    $84     
       SEC            
       RTS            

LF069: LDX    #$24    
LF06B: LDA    $E0     
       BEQ    LF07E   
       ASL            
       LDY    #$00    
       LDA    #$AA    
       BCS    LF07A   
       STY    $E6     
       BCC    LF07E   
LF07A: STY    $E7     
       LDA    #$55    
LF07E: AND    $AF,X   
       STA    $AF,X   
       CPX    #$0A    
       BCS    LF08A   
       ORA    #$C0    
       STA    $AF,X   
LF08A: DEX            
       BNE    LF06B   
       RTS            

LF08E: TAY            
       JSR    LF0A1   
       TYA            
       SED            
       CLC            
       ADC    $EC,X   
       STA    $EC,X   
       LDA    $FA,X   
       ADC    #$00    
       STA    $FA,X   
       CLD            
       RTS            

LF0A1: LDX    #$00    
       LDA    $E0     
       BPL    LF0A9   
       LDX    #$01    
LF0A9: RTS            

LF0AA: LDA    $EB     
       LDY    #$00    
       SEC            
       SBC    #$05    
       BEQ    LF0BD   
LF0B3: INY            
       SEC            
       SBC    #$12    
       BEQ    LF0BD   
       CMP    #$C0    
       BCC    LF0B3   
LF0BD: RTS            

LF0BE: STA    $88     
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$97    
       STA    $80,X   
       LDA    #$FA    
       ADC    #$00    
       STA    $81,X   
       LDA    $88     
LF0D0: AND    #$0F    
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$97    
       STA    $82,X   
       LDA    #$FA    
       ADC    #$00    
       STA    $83,X   
       RTS            

LF0E1: JSR    LF069   
       LDA    #$3F    
       STA    $E8     
       STX    AUDC0   
       STX    AUDC1   
LF0EC: JSR    LF126   
       LDX    #$03    
LF0F1: TXA            
       STA    $F4,X   
       ASL            
       ADC    #$01    
       STA    $94,X   
       STA    $98,X   
       DEX            
       BPL    LF0F1   
       LDX    #$09    
LF100: LDA    LF59C,X 
       STA    $8A,X   
       DEX            
       BPL    LF100   
       LDA    #$79    
       STA    $EA     
       LDA    #$4D    
       STA    $EB     
       INX            
       STX    COLUPF  
       STX    $F2     
       STX    $E3     
       LDA    #$A0    
       STA    $F0     
       LDA    $E8     
       ORA    #$3F    
       STA    $E8     
       LDA    #$66    
       STA    COLUBK  
       RTS            

LF126: LDA    $F3     
       LDX    $E0     
       BPL    LF12F   
       LSR            
       LSR            
       LSR            
LF12F: AND    #$07    
       ASL            
       ASL            
       TAY            
       LDX    #$03    
LF136: LDA    LF575,X 
       STA    $A0,X   
       LDA    LF579,Y 
       STA    $9C,X   
       INY            
       DEX            
       BPL    LF136   
       RTS            

LF145: LDA    $E4     
       ASL            
       BCC    LF14C   
       EOR    #$4D    
LF14C: STA    $E4     
       RTS            

LF14F: LDA    $F3     
       LDX    $E0     
       BPL    LF158   
       LSR            
       LSR            
       LSR            
LF158: AND    #$07    
       RTS            

LF15B: LDA    #$1F    
       STA    TIM64T  
       LDA    $EE     
       LSR            
       BCC    LF168   
       JMP    LF20E   
LF168: LDA    SWCHB   
       TAY            
       AND    #$02    
       BNE    LF18F   
       LDA    $D5     
       BPL    LF178   
       DEC    $D5     
       BNE    LF19C   
LF178: LDA    #$94    
       STA    $D5     
       INC    $E5     
       LDA    $E5     
       AND    #$07    
       CMP    #$06    
       BCC    LF188   
       LDA    #$00    
LF188: STA    $E5     
       JSR    LF0E1   
       BNE    LF19C   
LF18F: LDA    #$00    
       STA    $D5     
       TYA            
       AND    #$01    
       BEQ    LF1CA   
       LDA    $E5     
       BMI    LF1FA   
LF19C: INC    $E3     
       BPL    LF1C7   
       LDY    $E3     
       INY            
       BNE    LF1C7   
       LDA    #$80    
       STA    $E3     
       JSR    LF145   
       LDA    #$66    
       EOR    $E4     
       AND    #$F7    
       STA    COLUBK  
       LDA    $E4     
       AND    #$F7    
       STA    COLUPF  
       LDX    #$03    
LF1BC: LDA    $A0,X   
       EOR    $E4     
       AND    #$F7    
       STA    $A0,X   
       DEX            
       BPL    LF1BC   
LF1C7: JMP    LF472   
LF1CA: LDA    $E5     
       BMI    LF1D6   
       ORA    #$80    
       STA    $E5     
       LDA    $E3     
       STA    $E4     
LF1D6: LDX    #$00    
       STX    $F3     
       STX    $EC     
       STX    $ED     
       STX    $FA     
       STX    $FB     
       STX    $E0     
       JSR    LF0E1   
       STX    $E6     
       STX    $E7     
       LDX    #$03    
       STX    $E0     
       LDA    $E5     
       LSR            
       BCS    LF1F6   
       LDX    #$00    
LF1F6: STX    $E1     
       BPL    LF1C7   
LF1FA: LDX    #$01    
LF1FC: LDA    $E0,X   
       AND    #$07    
       BNE    LF23A   
       DEX            
       BPL    LF1FC   
       LDA    $E5     
       AND    #$7F    
       STA    $E5     
       JMP    LF19C   
LF20E: BIT    $E8     
       BVS    LF25E   
       BMI    LF23A   
       LDA    CXPPMM  
       BPL    LF23A   
       JSR    LF0AA   
       BNE    LF23A   
       LDX    #$0B    
       LDA    $E3     
       BEQ    LF23D   
       LDX    #$04    
       TYA            
LF226: DEX            
       BMI    LF23A   
       CMP    $94,X   
       BNE    LF226   
       LDA    #$8A    
       STA    $F9     
       LDA    #$80    
       STA    $94,X   
       LDA    #$20    
       JSR    LF08E   
LF23A: JMP    LF2C2   
LF23D: STA    $A4,X   
       DEX            
       BPL    LF23D   
       STA    $F9     
       STA    $A0     
       LDA    #$38    
       STA    $8A     
       LDA    #$7C    
       STA    $8B     
       LDA    #$80    
       STA    $94     
       LDA    #$04    
       STA    $98     
       LDA    $E8     
       ORA    #$40    
       STA    $E8     
       BNE    LF266   
LF25E: DEC    $98     
       BNE    LF2BF   
       LDA    #$04    
       STA    $98     
LF266: LDA    $A0     
       ASL            
       ASL            
       ASL            
       TAY            
       LDX    #$00    
LF26E: LDA    LF59E,Y 
       STA    $8C,X   
       INY            
       INX            
       CPX    #$08    
       BCC    LF26E   
       LDA    #$04    
       STA    AUDC1   
       LDA    #$06    
       STA    AUDV1   
       INC    $A0     
       LDA    $A0     
       CLC            
       ADC    #$03    
       STA    AUDF1   
       CMP    #$0A    
       BNE    LF2BF   
       LDA    #$00    
       STA    AUDC1   
       LDA    $E8     
       AND    #$BF    
       STA    $E8     
       JSR    LF0A1   
       DEC    $E0,X   
       LDA    $E5     
       LSR            
       BCC    LF2BC   
       LDX    #$00    
       LDA    $E0     
       BMI    LF2AA   
       LDX    #$01    
LF2AA: LDA    $E0,X   
       AND    #$07    
       BEQ    LF2BC   
       LDA    $E0     
       BMI    LF2B8   
       ORA    #$80    
       BMI    LF2BA   
LF2B8: AND    #$7F    
LF2BA: STA    $E0     
LF2BC: JSR    LF0EC   
LF2BF: JMP    LF472   
LF2C2: LDA    $E8     
       BPL    LF2CB   
       LDX    #$00    
       JMP    LF3E6   
LF2CB: LDX    #$03    
LF2CD: LDA    $E5     
       AND    #$07    
       LSR            
       TAY            
       LDA    LF599,Y 
       STA    $E2     
       LDA    $9C,X   
       JSR    LF03A   
       STA    $9C,X   
       BCC    LF2E4   
       JMP    LF3DD   
LF2E4: LDA    $F0     
       STA    $80     
       TXA            
       TAY            
LF2EA: ASL    $80     
       DEY            
       BPL    LF2EA   
       LDA    $94,X   
       BPL    LF2FA   
       INC    $94,X   
       BEQ    LF315   
       JMP    LF3DD   
LF2FA: BCS    LF30D   
       JSR    LF45A   
       CMP    #$70    
LF301: BEQ    LF377   
       CMP    #$63    
       BEQ    LF31C   
       CMP    #$C6    
       BEQ    LF31C   
       BNE    LF374   
LF30D: JSR    LF466   
       CMP    #$F9    
       JMP    LF301   
LF315: LDA    #$0A    
       STA    $94,X   
       JMP    LF377   
LF31C: JSR    LF0AA   
       TYA            
       CMP    $94,X   
       BNE    LF34E   
       JSR    LF145   
       CMP    #$30    
       BCC    LF357   
       LDA    $98,X   
       AND    #$0F    
       CLC            
       ADC    #$04    
       STA    $82     
       LDA    $EA     
       AND    #$0F    
       CMP    $82     
       BCC    LF345   
       LDA    $F0     
       AND    LF571,X 
       BEQ    LF35E   
       BNE    LF374   
LF345: LDA    $F0     
       AND    LF571,X 
       BNE    LF35E   
       BEQ    LF374   
LF34E: JSR    LF145   
       CMP    #$C0    
       BCC    LF357   
       BCS    LF374   
LF357: JSR    LF145   
       BMI    LF35E   
       BPL    LF374   
LF35E: LDA    $F0     
       AND    LF571,X 
       BNE    LF36D   
       LDA    $F0     
       ORA    LF571,X 
       JMP    LF372   
LF36D: LDA    $F0     
       AND    LF56D,X 
LF372: STA    $F0     
LF374: JMP    LF3D6   
LF377: LDA    $E3     
       BNE    LF389   
       JSR    LF145   
       CMP    #$20    
       BCC    LF389   
       JSR    LF0AA   
       TYA            
       JMP    LF398   
LF389: JSR    LF145   
       LDY    #$FF    
LF38E: INY            
       SEC            
       SBC    #$1C    
       BEQ    LF398   
       CMP    #$E4    
       BCC    LF38E   
LF398: TYA            
       CMP    $94,X   
       BEQ    LF3A7   
       LDY    #$03    
LF39F: CMP.wy $0094,Y 
       BEQ    LF389   
       DEY            
       BPL    LF39F   
LF3A7: STA    $94,X   
       JSR    LF0AA   
       TYA            
       CMP    $94,X   
       BNE    LF3BB   
       LDA    $EA     
       AND    #$0F    
       CMP    #$08    
       BCC    LF3CB   
       BCS    LF3C0   
LF3BB: JSR    LF145   
       BMI    LF3CB   
LF3C0: LDA    $F0     
       ORA    LF571,X 
       STA    $F0     
       LDA    #$70    
       BNE    LF3D4   
LF3CB: LDA    $F0     
       AND    LF56D,X 
       STA    $F0     
       LDA    #$F9    
LF3D4: STA    $98,X   
LF3D6: DEC    $84     
       BMI    LF3DD   
       JMP    LF2E4   
LF3DD: DEX            
       BMI    LF3E3   
       JMP    LF2CD   
LF3E3: JMP    LF472   
LF3E6: LDA    $A1     
       BEQ    LF416   
       BPL    LF401   
       JSR    LF45A   
       CMP    #$14    
       BNE    LF3E3   
       LDA    #$00    
       STA    $A1     
       LDA    #$07    
       STA    $A3     
       LDA    #$0C    
       STA    $A2     
       BNE    LF3E3   
LF401: DEC    $A2     
       LDA    $A2     
       BMI    LF40A   
       LSR            
       STA    AUDV1   
LF40A: JSR    LF466   
       CMP    #$48    
       BNE    LF431   
       JSR    LF0E1   
       BNE    LF439   
LF416: LDA    $A3     
       LSR            
       BCC    LF43C   
       DEC    $A2     
       LDA    $A2     
       BMI    LF424   
       LSR            
       STA    AUDV1   
LF424: JSR    LF466   
       CMP    #$65    
       BNE    LF431   
       DEC    $A3     
       LDA    #$0C    
       STA    $A2     
LF431: LDA    #$08    
       STA    AUDC1   
       LDA    #$05    
       STA    AUDF1   
LF439: JMP    LF472   
LF43C: DEC    $A2     
       LDA    $A2     
       BMI    LF445   
       LSR            
       STA    AUDV1   
LF445: JSR    LF45A   
       CMP    #$14    
       BNE    LF431   
       LDA    #$0C    
       STA    $A2     
       DEC    $A3     
       BPL    LF431   
       LDA    #$01    
       STA    $A1     
       BNE    LF439   
LF45A: LDA    $98,X   
       CLC            
       ADC    #$10    
       BVC    LF463   
       ADC    #$0F    
LF463: STA    $98,X   
       RTS            

LF466: LDA    $98,X   
       SEC            
       SBC    #$10    
       BVC    LF463   
       SBC    #$0F    
       JMP    LF463   
LF472: LDA    $0285   
       BPL    LF472   
       STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       STA    VSYNC   
       LDX    #$18    
       STX    TIM8T   
       BIT    $E5     
       BMI    LF48D   
       STA    $EE     
       JMP    LF4D9   
LF48D: DEC    $EE     
       BNE    LF4D9   
       LDA    #$1E    
       STA    $EE     
       BIT    $E8     
       BMI    LF4D9   
       BVS    LF4D9   
       LDA    $E3     
       BEQ    LF4C3   
       DEC    $E3     
       BEQ    LF4BD   
       LDY    #$44    
       LDX    #$03    
       LDA    $E3     
       CMP    #$05    
       BCS    LF4B2   
       LSR            
       BCS    LF4B2   
       LDY    #$0F    
LF4B2: STY    $A0,X   
       LDA    #$C7    
       STA    $9C,X   
       DEX            
       BPL    LF4B2   
       BMI    LF4FC   
LF4BD: JSR    LF126   
       JMP    LF556   
LF4C3: LDA    $E8     
       AND    #$0F    
       BEQ    LF4D9   
       DEC    $E8     
       LDY    $E8     
       TYA            
       AND    #$0F    
       BNE    LF4D9   
       TYA            
       AND    #$30    
       BNE    LF4D9   
       INC    $E8     
LF4D9: BIT    CXM0P   
       BVC    LF4FC   
       LDA    $E8     
       ORA    #$0F    
       STA    $E8     
       JSR    LF14F   
       STA    $E3     
       LDA    #$0D    
       STA    $F9     
       SEC            
       SBC    $E3     
       STA    $E3     
       LDA    $E8     
       SEC            
       SBC    #$10    
       STA    $E8     
       LDA    #$01    
       STA    $EE     
LF4FC: LDA    $F9     
       BEQ    LF556   
       BMI    LF520   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$18    
       STA    AUDF1   
       LDA    $F9     
       STA    AUDV1   
       DEC    $F9     
       DEC    $F9     
       LDA    $F9     
       CMP    #$02    
       BCS    LF556   
       LDA    #$00    
       STA    AUDC1   
       STA    $F9     
       BEQ    LF556   
LF520: CMP    #$90    
       BCS    LF53C   
       AND    #$7F    
       TAX            
       DEC    $F9     
       LDA    #$0C    
       STA    AUDC1   
       STA    AUDV1   
       LDA    LF3F4,X 
       STA    AUDF1   
       BNE    LF556   
       STA    AUDC1   
       STA    $F9     
       BEQ    LF556   
LF53C: STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$01    
       STA    AUDF1   
       DEC    $F9     
       DEC    $F9     
       LDA    $F9     
       CMP    #$C0    
       BCS    LF556   
       LDA    #$00    
       STA    $F9     
       STA    AUDC1   
LF556: LDA    $0285   
       BPL    LF556   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       LDA    #$26    
       STA    TIM64T  
       STA    CXCLR   
       JMP    LF5D0   
LF56D: .byte $7F,$BF,$DF,$EF
LF571: .byte $80,$40,$20,$10
LF575: .byte $CA,$8A,$2A,$4A
LF579: .byte $87,$87,$A7,$B7,$87,$87,$A7,$A7,$77,$87,$A7,$97,$77,$87,$97,$87
       .byte $67,$87,$97,$87,$67,$87,$97,$77,$67,$87,$97,$67,$67,$87,$87,$67
LF599: .byte $08,$06,$05
LF59C: .byte $38,$7C
LF59E: .byte $54,$54,$00,$00,$28,$28,$7C,$38,$44,$44,$00,$00,$28,$28,$7C,$38
       .byte $44,$44,$00,$00,$08,$08,$7C,$38,$40,$40,$00,$00,$08,$08,$7C,$38
       .byte $40,$40,$00,$00,$00,$00,$7C,$38,$00,$00,$00,$00,$00,$00,$7C,$38
       .byte $00,$00
LF5D0: BIT    $E8     
       BVC    LF5D7   
       JMP    LF829   
LF5D7: JSR    LF0AA   
       BNE    LF650   
       LDA    $EA     
       AND    #$0F    
       SEC            
       SBC    #$05    
       STA    $80     
       BEQ    LF5F0   
       ASL            
       ASL            
       ASL            
       ASL            
       SEC            
       SBC    $80     
       STA    $80     
LF5F0: LDA    $EA     
       LSR            
       LSR            
       LSR            
       LSR            
       LDX    $EA     
       BPL    LF5FC   
       ORA    #$F0    
LF5FC: STA    $81     
       LDA    #$07    
       SEC            
       SBC    $81     
       CLC            
       ADC    $80     
       CLC            
       ADC    #$02    
       BMI    LF650   
       STA    $80     
       AND    #$07    
       BNE    LF650   
       LDA    $80     
       LSR            
       LSR            
       LSR            
       STA    $80     
       LSR            
       LSR            
       TAX            
       LDA    LF945,X 
       STA    $82     
       LDA    #$00    
       STA    $83     
       LDA    $80     
       LDX    $E0     
       BPL    LF62D   
       CLC            
       ADC    #$10    
LF62D: TAX            
       LDA    ($82),Y 
       AND    LFA05,X 
       BNE    LF65B   
       LDA    ($82),Y 
       ORA    LFA05,X 
       STA    ($82),Y 
       LDA    #$01    
       JSR    LF08E   
       LDA    $F9     
       BNE    LF649   
       LDA    #$0A    
       STA    $F9     
LF649: JSR    LF0A1   
       INC    $E6,X   
       BNE    LF65B   
LF650: LDA    $E8     
       BMI    LF6B9   
       JSR    LF0A1   
       LDA    $E6,X   
       CMP    #$87    
LF65B: BNE    LF6CD   
       LDA    #$50    
       JSR    LF08E   
       LDA    $E8     
       ORA    #$8F    
       STA    $E8     
       LDX    #$03    
LF66A: LDA    #$FF    
       STA    $94,X   
       STA    $A1     
       TXA            
       STA    $F4,X   
       DEX            
       BPL    LF66A   
       LDA    #$00    
       STA    $F0     
       LDA    #$48    
       STA    $98     
       LDA    #$04    
       STA    $94     
       LDA    #$4D    
       STA    $EB     
       LDA    #$79    
       STA    $EA     
       LDA    #$0F    
       STA    $A0     
       JSR    LF14F   
       CMP    #$07    
       BEQ    LF6B9   
       AND    #$01    
       BEQ    LF6AA   
       JSR    LF0A1   
       LDA    $E0,X   
       AND    #$07    
       CMP    #$04    
       BEQ    LF6AA   
       INC    $E0,X   
       LDA    #$FF    
       STA    $F9     
LF6AA: LDX    $E0     
       BPL    LF6B7   
       LDA    $F3     
       CLC            
       ADC    #$08    
       STA    $F3     
       BNE    LF6B9   
LF6B7: INC    $F3     
LF6B9: LDX    #$0B    
LF6BB: LDA    LF969,X 
       STA    $A4,X   
       DEX            
       BPL    LF6BB   
       LDX    #$09    
LF6C5: LDA    LF975,X 
       STA    $8A,X   
       DEX            
       BPL    LF6C5   
LF6CD: LDA    $E5     
       BPL    LF6F8   
       BIT    $E8     
       BMI    LF6F8   
       JSR    LF0A1   
       JSR    LF0AA   
       BNE    LF6E1   
       LDA    INPT4,X 
       BPL    LF6F8   
LF6E1: LDY    #$07    
       LDA    SWCHB   
       AND    LFA25,X 
       BNE    LF6ED   
       LDY    #$08    
LF6ED: STY    $E2     
       LDA    $E9     
       JSR    LF03A   
       STA    $E9     
       BCC    LF6FB   
LF6F8: JMP    LF829   
LF6FB: LDA    $0288   
       LDX    $E0     
       BPL    LF706   
       AND    #$0F    
       BNE    LF70A   
LF706: LSR            
       LSR            
       LSR            
       LSR            
LF70A: TAX            
       LDA    LF949,X 
       STA    $81     
       LDA    LF959,X 
       STA    $80     
       BEQ    LF752   
       JSR    LF8FB   
       BCS    LF752   
       LDA    $81     
       BNE    LF726   
       LDA    $80     
       BMI    LF748   
       BPL    LF734   
LF726: LDA    $80     
       BMI    LF73E   
       LDA    $F2     
       AND    #$C0    
       BEQ    LF734   
       CMP    #$80    
       BEQ    LF752   
LF734: LDA    $F2     
       AND    #$0F    
       ORA    #$80    
       STA    $F2     
       BNE    LF7B3   
LF73E: LDA    $F2     
       AND    #$C0    
       BEQ    LF748   
       CMP    #$40    
       BEQ    LF752   
LF748: LDA    $F2     
       AND    #$0F    
       ORA    #$40    
       STA    $F2     
       BNE    LF7B3   
LF752: LDA    $81     
       BEQ    LF77A   
       JSR    LF0AA   
       BNE    LF77A   
       LDA    $81     
       JSR    LF8E9   
       BCS    LF77A   
       LDA    $81     
       BMI    LF770   
       LDA    $F2     
       AND    #$0F    
       ORA    #$20    
       STA    $F2     
       BNE    LF7C3   
LF770: LDA    $F2     
       AND    #$0F    
       ORA    #$10    
       STA    $F2     
       BNE    LF7C3   
LF77A: LDA    $F2     
       AND    #$80    
       BEQ    LF789   
       LDA    #$01    
LF782: JSR    LF8FB   
       BCC    LF7B3   
       BCS    LF7A0   
LF789: LDA    $F2     
       AND    #$40    
       BEQ    LF793   
       LDA    #$FF    
       BNE    LF782   
LF793: LDA    $F2     
       AND    #$20    
       BEQ    LF7A9   
       LDA    #$01    
LF79B: JSR    LF8E9   
       BCC    LF7C3   
LF7A0: LDA    $F2     
       AND    #$0F    
       STA    $F2     
       JMP    LF829   
LF7A9: LDA    $F2     
       AND    #$10    
       BEQ    LF7A0   
       LDA    #$FF    
       BNE    LF79B   
LF7B3: LDA    $F2     
       BMI    LF7BD   
       DEC    $EB     
       DEC    $EB     
       BNE    LF7D4   
LF7BD: INC    $EB     
       INC    $EB     
       BNE    LF7D4   
LF7C3: LDA    $F2     
       AND    #$20    
       BEQ    LF7DB   
       LDA    $EA     
       SEC            
       SBC    #$10    
       BVC    LF7D2   
       SBC    #$0F    
LF7D2: STA    $EA     
LF7D4: DEC    $84     
       BMI    LF7E6   
       JMP    LF6FB   
LF7DB: LDA    $EA     
       CLC            
       ADC    #$10    
       BVC    LF7D2   
       ADC    #$0F    
       BNE    LF7D2   
LF7E6: LDA    $EE     
       LSR            
       BCC    LF82E   
       LDA    $F2     
       AND    #$F0    
       BEQ    LF829   
       AND    #$C0    
       BEQ    LF7FF   
       LDA    #$B5    
       STA    $82     
       LDA    #$F9    
       STA    $83     
       BNE    LF807   
LF7FF: LDA    #$75    
       STA    $82     
       LDA    #$F9    
       STA    $83     
LF807: INC    $F2     
       LDA    $F2     
       AND    #$07    
       BNE    LF815   
       LDA    $F2     
       AND    #$F0    
       STA    $F2     
LF815: AND    #$06    
       ASL            
       ASL            
       ASL            
       TAY            
       LDX    #$00    
LF81D: LDA    ($82),Y 
       STA    $8A,X   
       INY            
       INX            
       CPX    #$0A    
       BCC    LF81D   
       BCS    LF858   
LF829: LDA    $EE     
       LSR            
       BCS    LF858   
LF82E: BIT    $E8     
       BMI    LF858   
       BVS    LF858   
       LDA    $F1     
       CLC            
       ADC    #$01    
       CMP    #$10    
       BCC    LF83F   
       LDA    #$00    
LF83F: STA    $F1     
       AND    #$7E    
       TAY            
       LDA    LFA87,Y 
       STA    $80     
       LDA    LFA88,Y 
       STA    $81     
       LDY    #$0B    
LF850: LDA    ($80),Y 
       STA.wy $00A4,Y 
       DEY            
       BPL    LF850   
LF858: LDA    $EF     
       STA    $80     
       LDX    #$07    
LF85E: LDA    $D7     
       AND    LF9F5,X 
       BEQ    LF871   
       LDA    $D7     
       AND    LF9FD,X 
       STA    $D7     
       ASL    $80     
       JMP    LF8AA   
LF871: LDA    #$CD    
       AND    LF9F5,X 
       ORA    $D7     
       STA    $D7     
       ASL    $80     
       BCS    LF892   
LF87E: LDA    $D8,X   
       CLC            
       ADC    #$10    
       BVC    LF887   
       ADC    #$0F    
LF887: CMP    #$51    
       BNE    LF8A8   
       LDA    $EF     
       ORA    LF9F5,X 
       STA    $EF     
LF892: LDA    $D8,X   
       SEC            
       SBC    #$10    
       BVC    LF89B   
       SBC    #$0F    
LF89B: CMP    #$A8    
       BNE    LF8A8   
       LDA    $EF     
       AND    LF9FD,X 
       STA    $EF     
       BNE    LF87E   
LF8A8: STA    $D8,X   
LF8AA: DEX            
       BPL    LF85E   
       LDX    #$03    
LF8AF: LDA    $94,X   
       STA    $80,X   
       DEX            
       BPL    LF8AF   
       STA    $88     
       LDY    #$00    
       STY    $F4     
LF8BC: LDX    #$03    
LF8BE: LDA    $88     
       CMP    $80,X   
       BCC    LF8CA   
       LDA    $80,X   
       STA    $88     
       STX    $F4,Y   
LF8CA: DEX            
       BPL    LF8BE   
       LDX    $F4,Y   
       LDA    $94,X   
       BPL    LF8DB   
       DEY            
       LDA.wy $00F4,Y 
       INY            
       STA.wy $00F4,Y 
LF8DB: LDA    #$FF    
       STA    $80,X   
       STA    $88     
       INY            
       CPY    #$04    
       BCC    LF8BC   
       JMP    LFAE8   
LF8E9: BMI    LF8F3   
       LDA    $EA     
       CMP    #$3D    
       BNE    LF8F9   
LF8F1: SEC            
       RTS            

LF8F3: LDA    $EA     
       CMP    #$D4    
       BEQ    LF8F1   
LF8F9: CLC            
       RTS            

LF8FB: BMI    LF93D   
       LDA    $EB     
       CMP    #$95    
       BCS    LF943   
LF903: LDA    $EA     
       CMP    #$3D    
       BEQ    LF93B   
       CMP    #$D4    
       BEQ    LF93B   
       JSR    LF0AA   
       BNE    LF93B   
       TYA            
       TAX            
       LDA    $80     
       BPL    LF919   
       DEX            
LF919: LDA    $EA     
       AND    #$0F    
       SEC            
       SBC    #$04    
       STA    $88     
       LDA    $D8,X   
       AND    #$0F    
       CMP    $88     
       BNE    LF943   
       LDA    $D8,X   
       AND    #$F0    
       STA    $88     
       LDA    $EA     
       AND    #$F0    
       SEC            
       SBC    $88     
       CMP    #$11    
       BCS    LF943   
LF93B: CLC            
       RTS            

LF93D: LDA    $EB     
       CMP    #$06    
       BCS    LF903   
LF943: SEC            
       RTS            

LF945: .byte $B0,$B9,$C2,$CB
LF949: .byte $00,$00,$00,$00,$00,$01,$01,$01,$00,$FF,$FF,$FF,$00,$00,$00,$00
LF959: .byte $00,$00,$00,$00,$00,$01,$FF,$00,$00,$01,$FF,$00,$00,$01,$FF,$00
LF969: .byte $00,$00,$00,$55,$C0,$FE,$FE,$C0,$55,$00,$00,$00
LF975: .byte $38,$7C,$7C,$54,$54,$28,$28,$7C,$7C,$38,$00,$00,$00,$00,$00,$00
       .byte $38,$7C,$54,$54,$00,$00,$28,$28,$7C,$38,$00,$00,$00,$00,$00,$00
       .byte $38,$54,$54,$00,$00,$00,$00,$28,$28,$38,$00,$00,$00,$00,$00,$00
       .byte $38,$7C,$54,$54,$00,$00,$28,$28,$7C,$38,$00,$00,$00,$00,$00,$00
       .byte $34,$76,$6E,$6E,$76,$76,$6E,$6E,$76,$34,$00,$00,$00,$00,$00,$00
       .byte $34,$76,$6E,$6E,$76,$76,$6E,$6E,$76,$34,$00,$00,$00,$00,$00,$00
       .byte $20,$62,$46,$46,$62,$62,$46,$46,$62,$20,$00,$00,$00,$00,$00,$00
       .byte $20,$62,$46,$46,$62,$62,$46,$46,$62,$20,$00,$00,$00,$00,$00,$00
LF9F5: .byte $01,$02,$04,$08,$10,$20,$40,$80
LF9FD: .byte $FE,$FD,$FB,$F7,$EF,$DF,$BF,$7F
LFA05: .byte $40,$10,$04,$01,$01,$04,$10,$40,$40,$10,$04,$01,$01,$04,$10,$40
       .byte $80,$20,$08,$02,$02,$08,$20,$80,$80,$20,$08,$02,$02,$08,$20,$80
LFA25: .byte $40,$80,$3C,$7E,$FF,$DB,$DB,$FF,$FF,$BD,$C3,$E7,$7E,$3C,$3C,$7E
       .byte $FF,$ED,$ED,$FF,$FF,$DE,$E1,$F3,$7E,$3C,$3C,$7E,$FF,$F6,$F6,$FF
       .byte $FF,$6F,$F0,$F9,$7E,$3C,$3C,$7E,$FF,$7B,$7B,$FF,$FF,$B7,$78,$FC
       .byte $7E,$3C,$3C,$7E,$FF,$BD,$BD,$FF,$FF,$DB,$3C,$7E,$7E,$3C,$3C,$7E
       .byte $FF,$DE,$DE,$FF,$FF,$ED,$1E,$3F,$7E,$3C,$3C,$7E,$FF,$6F,$6F,$FF
       .byte $FF,$F6,$0F,$9F,$7E,$3C,$3C,$7E,$FF,$B7,$B7,$FF,$FF,$7B,$87,$CF
       .byte $7E,$3C
LFA87: .byte $27
LFA88: .byte $FA,$33,$FA,$3F,$FA,$4B,$FA,$57,$FA,$63,$FA,$6F,$FA,$7B,$FA
LFA97: .byte $00,$3C,$66,$6E,$76,$66,$3C,$00,$00,$18,$38,$18,$18,$18,$7E,$00
       .byte $00,$3C,$66,$0C,$18,$30,$7E,$00,$00,$7E,$0C,$18,$0C,$66,$3C,$00
       .byte $00,$0C,$1C,$3C,$6C,$7E,$0C,$00,$00,$7E,$60,$7C,$06,$66,$3C,$00
       .byte $00,$3C,$60,$7C,$66,$66,$3C,$00,$00,$7E,$06,$0C,$18,$30,$30,$00
       .byte $00,$3C,$66,$3C,$66,$66,$3C,$00,$00,$3C,$66,$3E,$06,$0C,$38,$00
       .byte $00
LFAE8: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ1  
       STA    $86     
       STA    $D4     
       LDX    $F4     
       STX    $F8     
       LDY    $94,X   
       BNE    LFB06   
       LDA    #$FF    
       STA    $D4     
       LDA    $A4     
LFB06: STA    $87     
       LDA    $B0     
       LDY    $E0     
       BMI    LFB0F   
       ASL            
LFB0F: ORA    #$D5    
       STA    $80     
       LDA    $B9     
       CPY    #$00    
       BPL    LFB1A   
       LSR            
LFB1A: ORA    #$AA    
       STA    $81     
       LDA    $C2     
       CPY    #$00    
       BMI    LFB25   
       ASL            
LFB25: ORA    #$55    
       STA    $82     
       LDA    $CB     
       CPY    #$00    
       BPL    LFB30   
       LSR            
LFB30: ORA    #$AA    
       STA    $83     
       LDA    $E5     
       AND    #$07    
       CLC            
       ADC    #$01    
       LDX    #$02    
       JSR    LF0D0   
LFB40: LDY    $0285   
       BPL    LFB40   
       LDY    #$00    
       JSR    LFBD2   
       LDA    #$B0    
       STA    PF0     
       LDX    $F4     
       LDA    $98,X   
       STA    HMCLR   
       STA    HMP1    
       AND    #$0F    
       STA    $88     
       LDA    $EA     
       STA    HMP0    
       AND    #$0F    
       STA    WSYNC   
       TAX            
LFB63: DEX            
       BNE    LFB63   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$20    
       STA    NUSIZ0  
       LDA    #$00    
       STA    $84     
       STA    $85     
       STA    VDELP1  
       STA    VDELP0  
       STA    HMP0    
       LDY    #$01    
       JMP    LFCEB   
LFB81: LDA    ($86),Y 
       TAX            
       LDA    LFA97,Y 
       STA    $88     
       LDA    ($82),Y 
       STA    GRP1    
       NOP            
       LDA    ($84),Y 
       LDY    $88     
       STA    GRP0    
       STX    GRP1    
       STY    GRP0    
       STY    GRP1    
       LDY    $89     
       INY            
       BNE    LFBBD   
LFB9F: LDA    LFFF3,Y 
       LDX    $E3     
       BPL    LFBAA   
       EOR    $E4     
       AND    #$F7    
LFBAA: STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       STA    HMCLR   
       TAY            
LFBBD: LDA    ($80),Y 
       STA    GRP0    
       STA    WSYNC   
       STY    $89     
       CPY    #$07    
       BCC    LFB81   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

LFBD2: LDA.wy $00E0,Y 
       AND    #$07    
       TAX            
       LDA    LFC64,X 
       BNE    LFBE1   
       LDA    #$66    
       BNE    LFBE4   
LFBE1: LDA    LFFF8,Y 
LFBE4: LDX    $E3     
       BPL    LFBEC   
       EOR    $E4     
       AND    #$7F    
LFBEC: STA    COLUP0  
       LDX    #$05    
       STX    WSYNC   
LFBF2: DEX            
       BNE    LFBF2   
       STX    RESP0   
       LDX    #$04    
LFBF9: DEX            
       BNE    LFBF9   
       LDA.wy $00E0,Y 
       AND    #$07    
       TAX            
       LDA    LFC64,X 
       STA    NUSIZ0  
       STA    RESP1   
       STA    WSYNC   
       LDA    #$30    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDX    LFC62,Y 
       LDA    $E3     
       BMI    LFC1E   
       STX    COLUP1  
LFC1E: LDY    #$00    
LFC20: LDA    ($84),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    LFC69,Y 
       STA    GRP0    
       INY            
       CPY    #$07    
       BCC    LFC20   
       JSR    LF0A1   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       LDY    #$05    
LFC3F: DEY            
       BNE    LFC3F   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDA    LFFF8,X 
       LDX    $E3     
       BPL    LFC55   
       EOR    $E4     
       AND    #$F7    
LFC55: STA    COLUP0  
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$FF    
       STY    PF1     
       STY    PF2     
       RTS            

LFC62: .byte $6C,$AC
LFC64: .byte $00,$00,$10,$01,$03
LFC69: .byte $38,$7C,$54,$00,$28,$7C,$38
LFC70: INY            
       LDA    #$00    
       CPY    $EB     
       BCC    LFC7E   
       CPX    #$0A    
       BCS    LFC7E   
       LDA    $8A,X   
       INX            
LFC7E: STA    WSYNC   
       STA    GRP0    
       LDA    $87     
       STA    GRP1    
       LDA    $D4     
LFC88: RTS            

LFC89: LDA    $C2,X   
       ORA    #$55    
       STA    $82     
       LDA    $CB,X   
       LSR            
       JMP    LFCE7   
LFC95: LDA    #$00    
       LDX    $85     
       CPY    $EB     
       BCC    LFCA4   
       CPX    #$0A    
       BCS    LFCA4   
       LDA    $8A,X   
       INX            
LFCA4: STA    WSYNC   
       STA    GRP0    
       LDA    #$80    
       STA    PF1     
       LDA    #$02    
       STA    ENABL   
       LDA    #$00    
       STA    PF2     
       INY            
       LDA    #$00    
       CPY    $EB     
       BCC    LFCC2   
       CPX    #$0A    
       BCS    LFCC2   
       LDA    $8A,X   
       INX            
LFCC2: STA    $89     
       STX    $85     
       LDX    $F8     
       LDA    $98,X   
       LDX    $84     
       STA    HMCLR   
       STA    HMP1    
       AND    #$0F    
       STA    $88     
       STA    WSYNC   
       LDA    $89     
       STA    GRP0    
       LDA    $E0     
       BMI    LFC89   
       LDA    $C2,X   
       ASL            
       ORA    #$55    
       STA    $82     
       LDA    $CB,X   
LFCE7: ORA    #$AA    
       STA    $83     
LFCEB: INY            
       LDA    #$00    
       LDX    $85     
       CPY    $EB     
       BCC    LFCFC   
       CPX    #$0A    
       BCS    LFCFC   
       LDA    $8A,X   
       INC    $85     
LFCFC: STA    WSYNC   
       STA    GRP0    
       LDX    #$00    
       LDA    #$FF    
       STA    PF1     
       STX    ENABL   
       STA    PF2     
       LDX    $F8     
       LDA    $94,X   
       CMP    $84     
       BNE    LFD50   
       LDA    $A0,X   
       STA    COLUP1  
       STA    $D4     
       LDA    $A4     
       STA    $87     
LFD1C: INY            
       LDX    $85     
       LDA    #$00    
       CPY    $EB     
       BCC    LFD2C   
       CPX    #$0A    
       BCS    LFD2C   
       LDA    $8A,X   
       INX            
LFD2C: INY            
       STX    $85     
       STA    WSYNC   
       STA    GRP0    
       CPY    $EB     
       BCC    LFD59   
       CPX    #$0A    
       BCS    LFD5B   
       LDA    $8A,X   
       LDX    $88     
       BEQ    LFD45   
       NOP            
LFD42: DEX            
       BNE    LFD42   
LFD45: STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       INC    $85     
       JMP    LFD6C   
LFD50: LDA    #$00    
       STA    $D4     
       STA    $87     
       JMP    LFD1C   
LFD59: NOP            
       NOP            
LFD5B: LDA    #$00    
       LDX.w  $0088   
       BEQ    LFD66   
       NOP            
LFD63: DEX            
       BNE    LFD63   
LFD66: STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
LFD6C: STA    GRP0    
       LDA    $87     
       STA    GRP1    
       LDA    $D4     
       BEQ    LFD87   
       LDX    $86     
       CPX    #$03    
       BCS    LFD83   
       INX            
       STX    $86     
       LDA    $F4,X   
       STA    $F8     
LFD83: LDA    $A5     
       STA    $87     
LFD87: LDX    $85     
       INY            
       LDA    #$00    
       CPY    $EB     
       BCC    LFD97   
       CPX    #$0A    
       BCS    LFD97   
       LDA    $8A,X   
       INX            
LFD97: STA    WSYNC   
       STA    GRP0    
       LDA    $87     
       STA    GRP1    
       LDA    $D4     
       BEQ    LFDA7   
       LDA    $A6     
       STA    $87     
LFDA7: JSR    LFC70   
       BEQ    LFDB0   
       LDA    $A7     
       STA    $87     
LFDB0: INY            
       LDA    #$00    
       CPY    $EB     
       BCC    LFDBE   
       CPX    #$0A    
       BCS    LFDBE   
       LDA    $8A,X   
       INX            
LFDBE: STA    WSYNC   
       STA    GRP0    
       LDA    $87     
       STA    GRP1    
       CPY    #$4F    
       BNE    LFDD4   
       LDA    $E8     
       AND    #$0F    
       BNE    LFDD4   
       LDA    #$02    
       STA    ENAM0   
LFDD4: LDA    $D4     
       BEQ    LFDDC   
       LDA    $A8     
       STA    $87     
LFDDC: INY            
       LDA    #$00    
       CPY    $EB     
       BCC    LFDEA   
       CPX    #$0A    
       BCS    LFDEA   
       LDA    $8A,X   
       INX            
LFDEA: STA    WSYNC   
       STA    GRP0    
       LDA    $87     
       STA    GRP1    
       LDA    $E8     
       BPL    LFDFE   
       LDA    #$07    
       STA    NUSIZ1  
       LDA    #$44    
       STA    COLUP1  
LFDFE: LDA    $D4     
       BEQ    LFE37   
       LDA    $A9     
       STA    $87     
       JMP    LFE37   
LFE09: LDA    $82     
       STA.w  $000F   
       LDA    $83     
       STA    PF1     
       BNE    LFE70   
LFE14: LDA    #$FF    
       BNE    LFE5D   
LFE18: STA    WSYNC   
       BMI    LFE7D   
LFE1C: LDA    #$00    
       BEQ    LFE79   
LFE20: LDA    $82     
       STA.w  $000F   
       LDA    $83     
       STA    PF1     
       BNE    LFEA3   
LFE2B: LDA    #$FF    
       BNE    LFE90   
LFE2F: STA    WSYNC   
       BMI    LFEAF   
LFE33: LDA    #$00    
       BEQ    LFEAB   
LFE37: INY            
       LDA    #$00    
       CPY    $EB     
       BCC    LFE45   
       CPX    #$0A    
       BCS    LFE45   
       LDA    $8A,X   
       INX            
LFE45: INY            
       STA    WSYNC   
       STA    GRP0    
       LDA    $87     
       STA    GRP1    
       LDA    $80     
       STA    PF1     
       LDA    $81     
       STA    PF2     
       CPY    $EB     
       BCC    LFE14   
       LDA    $8A,X   
       INX            
LFE5D: STA    $89     
       LDA    $D4     
       BEQ    LFE09   
       NOP            
       LDA    $82     
       STA    PF2     
       LDA    $83     
       STA    PF1     
       LDA    $AA     
       STA    $87     
LFE70: INY            
       CPX    #$0B    
       BCS    LFE1C   
       LDA    $89     
       BMI    LFE18   
LFE79: STA    WSYNC   
       STA    GRP0    
LFE7D: LDA    $87     
       STA    GRP1    
       LDA    $80     
       STA    PF1     
       LDA    $81     
       STA    PF2     
       CPY    $EB     
       BCC    LFE2B   
       LDA    $8A,X   
       INX            
LFE90: STA    $89     
       LDA    $D4     
       BEQ    LFE20   
       NOP            
       LDA    $82     
       STA    PF2     
       LDA    $83     
       STA    PF1     
       LDA    $AB     
       STA    $87     
LFEA3: CPX    #$0A    
       BCS    LFE33   
       LDA    $89     
       BMI    LFE2F   
LFEAB: STA    WSYNC   
       STA    GRP0    
LFEAF: LDA    $87     
       STA    GRP1    
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    $D4     
       BEQ    LFEC1   
       LDA    $AC     
       STA    $87     
LFEC1: INY            
       LDA    #$00    
       CPY    $EB     
       BCC    LFECF   
       CPX    #$0A    
       BCS    LFECF   
       LDA    $8A,X   
       INX            
LFECF: STA    WSYNC   
       STA    GRP0    
       LDA    $87     
       STA    GRP1    
       LDA    $E8     
       BPL    LFEE3   
       LDA    #$00    
       STA    NUSIZ1  
       LDA    #$0F    
       STA    COLUP1  
LFEE3: LDA    $D4     
       BEQ    LFEEB   
       LDA    $AD     
       STA    $87     
LFEEB: JSR    LFC70   
       BEQ    LFEFA   
       LDA    #$00    
       STA    ENAM0   
       LDA    $AE     
       STA    $87     
       LDA    #$00    
LFEFA: STA    ENAM0   
       INY            
       LDA    #$00    
       CPY    $EB     
       BCC    LFF0A   
       CPX    #$0A    
       BCS    LFF0A   
       LDA    $8A,X   
       INX            
LFF0A: STA    WSYNC   
       STA    GRP0    
       LDA    $87     
       STA    GRP1    
       LDA    $D4     
       BEQ    LFF1A   
       LDA    $AF     
       STA    $87     
LFF1A: INY            
       STX    $85     
       INC    $84     
       LDX    $84     
       LDA    $B9,X   
       LDX    $E0     
       BPL    LFF28   
       LSR            
LFF28: ORA    #$AA    
       STA    $81     
       LDX    $85     
       LDA    #$00    
       CPY    $EB     
       BCC    LFF3B   
       CPX    #$0A    
       BCS    LFF3B   
       LDA    $8A,X   
       INX            
LFF3B: STA    WSYNC   
       STA    GRP0    
       LDA    $87     
       STA    GRP1    
       INY            
       LDA    #$00    
       CPY    $EB     
       BCC    LFF51   
       CPX    #$0A    
       BCS    LFF51   
       LDA    $8A,X   
       INX            
LFF51: STA    $87     
       STX    $85     
       STY    $89     
       STA    HMCLR   
       LDX    $84     
       LDA    $D7,X   
       STA    HMBL    
       AND    #$0F    
       TAY            
       STA    WSYNC   
       LDA    $87     
       STA    GRP0    
       LDA    #$00    
       STA    GRP1    
       TXA            
       LDX    $85     
       CMP    #$09    
       BEQ    LFFA0   
       LDA    #$00    
LFF75: DEY            
       BNE    LFF75   
       STY    RESBL   
       LDY    $89     
       INY            
       STA    WSYNC   
       STA    HMOVE   
       CPY    $EB     
       BCC    LFF8D   
       CPX    #$0A    
       BCS    LFF8D   
       LDA    $8A,X   
       INC    $85     
LFF8D: STA    GRP0    
       LDX    $84     
       LDA    $B0,X   
       LDX    $E0     
       BMI    LFF98   
       ASL            
LFF98: ORA    #$D5    
       STA    $80     
       INY            
       JMP    LFC95   
LFFA0: LDA    $F3     
       LDX    $E0     
       BPL    LFFA9   
       LSR            
       LSR            
       LSR            
LFFA9: AND    #$07    
       CLC            
       ADC    #$01    
       LDX    #$02    
       JSR    LF0D0   
       LDY    #$01    
       JSR    LFBD2   
       STY    PF0     
       INY            
       LDA    $FA     
       LDX    #$00    
       JSR    LF0BE   
       LDA    $EC     
       LDX    #$04    
       JSR    LF0BE   
       JSR    LFB9F   
       LDY    #$01    
       LDA    $FB     
       LDX    #$00    
       JSR    LF0BE   
       LDA    $ED     
       LDX    #$04    
       JSR    LF0BE   
       LDA    $E5     
       LSR            
       BCS    LFFED   
       LDX    #$06    
LFFE3: STX    WSYNC   
       DEX            
       BPL    LFFE3   
       JSR    LFC88   
       BMI    LFFF0   
LFFED: JSR    LFB9F   
LFFF0: JMP    LF15B   
LFFF3: .byte $44,$C4,$00,$00,$00
LFFF8: .byte $EF,$CF,$00,$F0,$00,$F0,$00,$F0
