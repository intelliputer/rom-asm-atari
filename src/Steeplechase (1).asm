; Disassembly of roms/Steeplechase (1).bin
; Disassembled Tue Oct  6 15:24:46 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Steeplechase (1).bin
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
RESP0   =  $10
RESP1   =  $11
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
HMOVE   =  $2A
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
INPT0   =  $38
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       DEX            
       TXS            
       STX    $CF     
       STX    $86     
       JMP    LF0D9   
LF013: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$1E    
       STA    TIM64T  
       LDA    $CF     
       BMI    LF04B   
       LDX    $FA     
       LDA    $F4     
       AND    LF7F0,X 
       BEQ    LF02F   
       LDA    $D8     
       STA    $EF,X   
LF02F: LDX    #$03    
LF031: LDA    $E3,X   
       BMI    LF048   
       LDA    $DC     
       AND    LF7F0,X 
       BEQ    LF048   
       LDA    #$80    
       STA    $E3,X   
       LDA    $DE     
       STA    $DF,X   
       LDA    #$08    
       STA    $D3     
LF048: DEX            
       BPL    LF031   
LF04B: INC    $87     
       BNE    LF051   
       INC    $FB     
LF051: LDA    SWCHB   
       LDX    #$07    
       LDY    #$0B    
       AND    #$08    
       BEQ    LF060   
       LDY    #$05    
       LDX    #$F7    
LF060: LDA    $CF     
       BMI    LF066   
       LDX    #$FF    
LF066: AND    $FB     
       STA    $82     
       STX    $81     
       LDX    #$05    
LF06E: LDA    LF6D5,Y 
       EOR    $82     
       AND    $81     
       STA    $A1,X   
       DEY            
       DEX            
       BPL    LF06E   
       LDA    SWCHB   
       LSR            
       BCS    LF0AF   
       LDA    #$00    
       STA    AUDC0   
       STA    AUDC1   
       LDX    #$CF    
LF089: STA    VSYNC,X 
       INX            
       CPX    #$FC    
       BNE    LF089   
       JSR    LF594   
       LDA    #$00    
       STA    $C2     
       STA    $C6     
       STA    $C8     
       LDA    #$46    
       STA    $C4     
       LDX    #$03    
LF0A1: LDA    LF7F0,X 
       STA    $88,X   
       DEX            
       BPL    LF0A1   
       LDA    #$04    
       STA    $D3     
       BNE    LF0F0   
LF0AF: LSR            
       LDA    #$FF    
       BCC    LF0B8   
       STA    $86     
       BMI    LF0F0   
LF0B8: STA    $CF     
       LDA    $86     
       BMI    LF0C4   
       EOR    $87     
       AND    #$1F    
       BNE    LF0F0   
LF0C4: LDA    $87     
       AND    #$1F    
       STA    $86     
       INC    $84     
       SED            
       CLC            
       LDA    $85     
       ADC    #$01    
       STA    $85     
       CLD            
       CMP    #$07    
       BNE    LF0DF   
LF0D9: LDA    #$01    
       STA    $84     
       STA    $85     
LF0DF: JSR    LF594   
       LDY    $84     
       TYA            
       JSR    LF6E3   
       STA    $C2     
       DEY            
       LDA    LF6CF,Y 
       STA    $CA     
LF0F0: LDA    INTIM   
       BNE    LF0F0   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDA    $FA     
       CLC            
       ADC    #$01    
       AND    #$03    
       STA    $FA     
       TAX            
       LDA    $CF     
       BPL    LF12C   
       LDA    #$00    
       STA    AUDC1   
       LDY    $D2     
       BEQ    LF128   
       LDA    #$08    
       STA    AUDV0   
       DEC    $D2     
       LDA    #$01    
LF128: STA    AUDC0   
       BPL    LF181   
LF12C: LDA    #$0F    
       AND    $D9     
       JSR    LF6E3   
       STA    $C8     
       LDA    #$F0    
       AND    $D9     
       LSR            
       STA    $80     
       LSR            
       LSR            
       LSR            
       EOR    #$FF    
       CLC            
       ADC    #$01    
       CLC            
       ADC    $80     
       CLC            
       ADC    #$00    
       STA    $C6     
       LDA    $DA     
       JSR    LF6E3   
       STA    $C2     
       CMP    #$15    
       BNE    LF15D   
       LDA    #$FF    
       STA    $CF     
       BMI    LF181   
LF15D: LDA    $F5     
       BNE    LF1BB   
       LDA    $D1     
       CLC            
       ADC    #$01    
       BCS    LF184   
       STA    $D1     
       CMP    #$F4    
       BCC    LF196   
       LDY    $D3     
       BEQ    LF181   
       LDA    LF6EF,Y 
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV1   
       DEC    $D3     
LF181: JMP    LF3F5   
LF184: LDA    #$FF    
       STA    $F5     
       LDA    #$14    
       STA    $D2     
       LDA    #$06    
       STA    $B7     
       LDA    #$23    
       STA    $DE     
       BNE    LF181   
LF196: LDA    SWCHA   
       AND    LF7F0,X 
       BNE    LF1A5   
       LDA    $F4     
       ORA    LF7F0,X 
       STA    $F4     
LF1A5: LDA    $F4     
       AND    LF7F0,X 
       BEQ    LF181   
       TXA            
       ASL            
       TAY            
       LDA    #$30    
       STA.wy $0091,Y 
       LDA    #$F7    
       STA.wy $0092,Y 
       BNE    LF181   
LF1BB: LDY    $D2     
       LDA    #$08    
       STA    AUDC0   
       LDA    #$12    
       STA    AUDF0   
       LDA    LF64C,Y 
       STA    AUDV0   
       DEC    $D2     
       BPL    LF1D2   
       LDA    #$14    
       STA    $D2     
LF1D2: LDY    $D3     
       BMI    LF1E5   
       LDA    LF5F4,Y 
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDF1   
       DEC    $D3     
LF1E5: LDA    $87     
       AND    #$1F    
       BNE    LF201   
       SED            
       LDA    $D9     
       CLC            
       ADC    #$01    
       CMP    #$60    
       BCC    LF1FE   
       LDA    $DA     
       CLC            
       ADC    #$01    
       STA    $DA     
       LDA    #$00    
LF1FE: STA    $D9     
       CLD            
LF201: LDA    $87     
       AND    #$03    
       BNE    LF20F   
       DEC    $DD     
       BPL    LF20F   
       LDA    #$02    
       STA    $DD     
LF20F: LDA    $F3     
       CLC            
       ADC    $B7     
       TAY            
       JSR    LF5EF   
       STA    $D1     
       TYA            
       JSR    LF6F4   
       STA    $F3     
       LDX    #$03    
LF222: LDA    $E3,X   
       BEQ    LF26D   
       BMI    LF22B   
       JMP    LF2EC   
LF22B: TXA            
       ASL            
       TAY            
       LDA    #$F6    
       STA.wy $0092,Y 
       LDA    #$00    
       STA    $F6,X   
       LDA    $8C,X   
       CMP    #$0C    
       BCS    LF247   
       INC    $8C,X   
       LDA    #$8E    
       STA.wy $0091,Y 
       JMP    LF32D   
LF247: LDA    #$5E    
       STA.wy $0091,Y 
       LDA    $DC     
       AND    LF7F0,X 
       BNE    LF266   
       LDA    $DF,X   
       BEQ    LF269   
       DEC    $DF,X   
       LDA    $D1     
       BEQ    LF264   
       LDA    $B7     
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF264: STA    $F6,X   
LF266: JMP    LF32D   
LF269: STA    $E3,X   
       BEQ    LF266   
LF26D: LDY    $DD     
       TXA            
       ASL            
       TAX            
       LDA    LF6FD,Y 
       STA    $91,X   
       LDA    #$F7    
       STA    $92,X   
       TXA            
       LSR            
       TAX            
       LDA    $F4     
       AND    LF7F0,X 
       BEQ    LF2C0   
       LDA    SWCHA   
       AND    LF7F0,X 
       TAY            
       BNE    LF2AB   
       EOR    $88,X   
       BEQ    LF2AB   
       STY    $88,X   
LF294: LDY    $EF,X   
       LDA    LF7F4,Y 
       STA    $BC,X   
       LDA    #$10    
       STA    $E3,X   
       LDA    #$01    
       STA    $B8,X   
       LDA    #$00    
       STA    $EB,X   
       STA    $F6,X   
       BEQ    LF2EC   
LF2AB: STY    $88,X   
LF2AD: LSR    $B6     
       ROL            
       EOR    $B6     
       LSR            
       LDA    $B6     
       BCS    LF2BB   
       ORA    #$40    
       STA    $B6     
LF2BB: AND    #$03    
       JMP    LF264   
LF2C0: LDY    #$01    
LF2C2: LDA.wy $00AF,Y 
       SEC            
       SBC    $9D,X   
       SEC            
       SBC    #$08    
       STA    $81     
       LDA    $CA     
       AND    #$0F    
       CMP    $81     
       BCS    LF2DA   
       DEY            
       BPL    LF2C2   
       BMI    LF2AD   
LF2DA: LDA.wy $00C0,Y 
       JSR    LF5EF   
       SEC            
       SBC    #$01    
       TAY            
       LDA    LF5F4,Y 
       STA    $EF,X   
       JMP    LF294   
LF2EC: LDA    $D1     
       BEQ    LF32D   
       LDA    $EB,X   
       CLC            
       ADC    $B8,X   
       STA    $EB,X   
       CMP    $BC,X   
       BNE    LF2FF   
       LDA    #$FF    
       STA    $B8,X   
LF2FF: TXA            
       ASL            
       TAY            
       LDA    $EB,X   
       CMP    #$0B    
       BCS    LF314   
       LDA    $B8,X   
       BPL    LF310   
       LDA    #$C0    
       BNE    LF316   
LF310: LDA    #$90    
       BNE    LF316   
LF314: LDA    #$60    
LF316: STA.wy $0091,Y 
       LDA    #$F7    
       STA.wy $0092,Y 
       LDY    $EB,X   
       LDA    LF6BE,Y 
       STA    $8C,X   
       CMP    #$0C    
       BCC    LF32D   
       LDA    #$00    
       STA    $E3,X   
LF32D: DEX            
       BMI    LF333   
       JMP    LF222   
LF333: LDX    #$01    
LF335: LDA    $D6,X   
       BEQ    LF35E   
       BMI    LF375   
       DEC    $D4,X   
       BPL    LF38A   
LF33F: LDA    $D0     
       CMP    #$77    
       BCS    LF36F   
       LDA    #$00    
       STA    $D6,X   
       LDA    #$1C    
       STA    $99,X   
       LDA    $B6     
       AND    #$30    
       BNE    LF355   
       LDA    #$10    
LF355: STA    $C0,X   
       LDA    #$8D    
LF359: STA    $AF,X   
       JMP    LF38A   
LF35E: LDA    $AF,X   
       SEC            
       SBC    $D1     
       CMP    #$8E    
       BCC    LF359   
       LDA    $CA     
       BMI    LF33F   
       LDA    #$FF    
       STA    $D6,X   
LF36F: LDA    #$24    
       STA    $99,X   
       BNE    LF38A   
LF375: TXA            
       EOR    #$01    
       TAY            
       LDA.wy $00AF,Y 
       CMP    #$47    
       BCS    LF38A   
       LDA    #$01    
       STA    $D6,X   
       LDA    $B6     
       AND    #$1F    
       STA    $D4,X   
LF38A: DEX            
       BPL    LF335   
       LDX    #$03    
LF38F: CLC            
       LDA    $E7,X   
       ADC    $F6,X   
       TAY            
       BMI    LF39D   
       JSR    LF5EF   
       JMP    LF3A8   
LF39D: SEC            
       ROR            
       SEC            
       ROR            
       SEC            
       ROR            
       SEC            
       ROR            
       CLC            
       ADC    #$01    
LF3A8: CLC            
       ADC    $9D,X   
       CMP    #$85    
       BCC    LF3C8   
       LDA    $F6,X   
       BPL    LF3B7   
       LDA    #$08    
       BNE    LF3C8   
LF3B7: LDA    $DB     
       ORA    LF7F0,X 
       STA    $DB     
       LDA    #$2D    
       STA    $D2     
       LDA    #$FF    
       STA    $CF     
       LDA    #$85    
LF3C8: CMP    #$08    
       BCS    LF3CE   
       LDA    #$08    
LF3CE: STA    $9D,X   
       CMP    $D0     
       BCC    LF3D6   
       STA    $D0     
LF3D6: TYA            
       JSR    LF6F4   
       STA    $E7,X   
       DEX            
       BPL    LF38F   
       LDA    $D0     
       CMP    #$32    
       BCC    LF3F5   
       CMP    #$50    
       LDA    #$00    
       ROL            
       TAY            
       LDA    LF7FE,Y 
       STA    $B7     
       LDA    LF6E1,Y 
       STA    $DE     
LF3F5: LDX    #$01    
LF3F7: LDA    $AF,X   
       JSR    LF5D4   
       STA    $B3,X   
       DEX            
       BPL    LF3F7   
       LDY    #$03    
LF403: STY    $80     
       TYA            
       ASL            
       TAX            
       LDA.wy $009D,Y 
       JSR    LF5D4   
       STA    $A8,X   
       BMI    LF418   
       SEC            
       SBC    #$71    
       JMP    LF41A   
LF418: AND    #$7F    
LF41A: STA    $A7,X   
       LDY    $80     
       DEY            
       BPL    LF403   
LF421: LDA    INTIM   
       BNE    LF421   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMP0    
       STA    $DC     
       STA    $D8     
       STA    $80     
       TAY            
       LDA    #$10    
       STA    HMP1    
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $A6     
       STA    COLUP0  
       STA    COLUP1  
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
LF44B: STA    WSYNC   
       LDA    ($C8),Y 
       STA    $82     
       LDA    ($C6),Y 
       STA    $81     
       LDA    ($C4),Y 
       STA    GRP1    
       LDA    ($C2),Y 
       STA    GRP0    
       LDX    $82     
       NOP            
       NOP            
       NOP            
       LDA    $81     
       STA    GRP0    
       STX    GRP1    
       INC    $80     
       LDA    $80     
       AND    #$01    
       BNE    LF44B   
       INY            
       CPY    #$07    
       BCC    LF44B   
       LDA    $C0     
       STA    NUSIZ0  
       LDA    $C1     
       STA    NUSIZ1  
       LDA    #$30    
       STA    CTRLPF  
       LDA    #$00    
       STA    $9C     
       STA    $D8     
       LDX    #$04    
LF489: LDA    #$00    
       STA    ENABL   
       STA    $9B     
       STA    GRP0    
       STA    GRP1    
       DEX            
       BPL    LF499   
       JMP    LF013   
LF499: STX    $80     
       STA    CXCLR   
       STA    WSYNC   
       TXA            
       ASL            
       EOR    $A5     
       STA    COLUBK  
       STA    $81     
       LDY    $A1,X   
       LDA    $DB     
       AND    LF7F0,X 
       BEQ    LF4B8   
       LDA    $87     
       AND    #$04    
       BNE    LF4B8   
       LDY    $81     
LF4B8: STY    COLUP0  
       STY    COLUP1  
       STY    COLUPF  
       TXA            
       ASL            
       TAY            
       LDA.wy $0091,Y 
       STA    $CB     
       CLC            
       ADC    #$18    
       STA    $CD     
       LDA.wy $0092,Y 
       STA    $CC     
       STA    $CE     
       LDA    $EF,X   
       TAX            
       LDA    LF7F8,X 
       STA    $81     
       LDA    #$99    
       STA    $B5     
       LDA.wy $00A7,Y 
       STA    $B1     
       LDA.wy $00A8,Y 
       STA    $B2     
       LDX    #$05    
LF4EA: STA    WSYNC   
       NOP            
       LDA    $B0,X   
       STA    ENABL,X 
       AND    #$0F    
       TAY            
LF4F4: DEY            
       BPL    LF4F4   
       DEX            
       STA    RESP0,X 
       BNE    LF4EA   
       STA    WSYNC   
       STA    HMOVE   
       TSX            
       STX    $82     
LF503: LDA    $9B     
       LDX    $80     
       SEC            
       SBC    $8C,X   
       BMI    LF510   
       CMP    #$18    
       BCC    LF519   
LF510: LDA    #$00    
       TAX            
       STA    WSYNC   
       STX    GRP0    
       BEQ    LF523   
LF519: TAY            
       LDA    ($CB),Y 
       TAX            
       LDA    ($CD),Y 
       STA    WSYNC   
       STX    GRP0    
LF523: STA    GRP1    
       LDY    $9B     
       LDA    #$02    
       CPY    $9A     
       BMI    LF52F   
       STA    ENAM1   
LF52F: CPY    $99     
       BMI    LF535   
       STA    ENAM0   
LF535: LDX    #$1F    
       TXS            
       CPY    $81     
       PHP            
       INC    $9B     
       LDX    $80     
       LDA    $9B     
       INC    $9B     
       SEC            
       SBC    $8C,X   
       BMI    LF54C   
       CMP    #$18    
       BCC    LF554   
LF54C: LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       BEQ    LF55D   
LF554: TAY            
       LDA    ($CB),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($CD),Y 
LF55D: STA    GRP1    
       LDY    $9B     
       CPY    #$24    
       BCC    LF503   
       LDX    $82     
       TXS            
       LDX    $FA     
       LDA    INPT0,X 
       BMI    LF572   
       LDA    $9C     
       STA    $D8     
LF572: INC    $9C     
       LDX    $80     
       LDA    CXM0P   
       AND    #$C0    
       BNE    LF582   
       LDA    CXM1P   
       AND    #$C0    
       BEQ    LF589   
LF582: LDA    $DC     
       ORA    LF7F0,X 
       STA    $DC     
LF589: STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       JMP    LF489   
LF594: LDA    #$10    
       STA    $C0     
       STA    $C1     
       LDA    #$1C    
       STA    $99     
       STA    $9A     
       LDA    #$47    
       STA    $AF     
       LDA    #$8D    
       STA    $B0     
       LDX    #$03    
LF5AA: LDA    #$0C    
       STA    $8C,X   
       LDA    #$08    
       STA    $9D,X   
       LDA    #$00    
       STA    $EF,X   
       DEX            
       BPL    LF5AA   
       STA    $DB     
       STA    $D9     
       STA    $DA     
       STA    $D2     
       LDX    #$06    
LF5C3: LDA    #$5E    
       STA    $91,X   
       STA    $C2,X   
       LDA    #$F6    
       STA    $92,X   
       STA    $C3,X   
       DEX            
       DEX            
       BPL    LF5C3   
       RTS            

LF5D4: LDY    #$00    
LF5D6: CMP    #$08    
       BCC    LF5E0   
       INY            
       SEC            
       SBC    #$0F    
       BPL    LF5D6   
LF5E0: EOR    #$FF    
       CLC            
       ADC    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    $82     
       ORA    $82     
       RTS            

LF5EE: .byte $4A
LF5EF: LSR            
       LSR            
       LSR            
       LSR            
       RTS            

LF5F4: .byte $00,$02,$03,$05,$04,$0A,$0D,$03,$02,$EA,$EA,$EA,$3C,$24,$24,$24
       .byte $24,$24,$3C,$08,$18,$28,$08,$08,$08,$3C,$3C,$04,$04,$08,$10,$20
       .byte $3C,$3C,$24,$04,$1C,$04,$24,$3C,$24,$24,$24,$3E,$04,$04,$04,$3C
       .byte $20,$20,$3C,$04,$24,$3C,$3C,$20,$20,$3C,$24,$24,$3C,$3C,$04,$08
       .byte $10,$20,$20,$20,$3C,$24,$24,$3C,$24,$24,$3C,$3C,$24,$24,$3C,$04
       .byte $04,$04,$00,$18,$18,$00,$18,$18
LF64C: .byte $00,$01,$02,$03,$02,$05,$07,$02,$01,$03,$04,$03,$01,$01,$03,$04
       .byte $03,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$1D,$1F,$3F,$3F
       .byte $3F,$2F,$2F,$2F,$2A,$0A,$0A,$2A,$3E,$1C,$00,$00,$00,$00,$00,$00
       .byte $C0,$C0,$80,$80,$C8,$E8,$BC,$FE,$FE,$FF,$F3,$F1,$F0,$70,$28,$A8
       .byte $F8,$70,$01,$01,$01,$01,$03,$03,$1B,$3F,$7F,$7F,$EF,$CF,$0F,$15
       .byte $14,$14,$14,$28,$28,$50,$50,$00,$00,$00,$80,$80,$00,$00,$80,$C8
       .byte $48,$AC,$FE,$FF,$FF,$FB,$F1,$F0,$F0,$70,$28,$28,$14,$14,$28,$28
       .byte $50,$50
LF6BE: .byte $0C,$0B,$0B,$0A,$09,$08,$07,$06,$06,$05,$05,$04,$04,$03,$03,$02
       .byte $02
LF6CF: .byte $86,$83,$85,$06,$03,$05
LF6D5: .byte $16,$34,$9A,$68,$D0,$1E,$06,$04,$0A,$08,$00,$0E
LF6E1: .byte $14,$09
LF6E3: STA    $80     
       ASL            
       ASL            
       ASL            
       SEC            
       SBC    $80     
       CLC            
       ADC    #$00    
       RTS            

LF6EF: .byte $1F,$0F,$0A,$07,$06
LF6F4: BPL    LF6FB   
       AND    #$0F    
       ORA    #$F0    
       RTS            

LF6FB: AND    #$0F    
LF6FD: RTS            

LF6FE: .byte $00,$30,$00,$00,$01,$01,$01,$01,$03,$03,$03,$01,$07,$1F,$1F,$3F
       .byte $6F,$CF,$94,$14,$28,$28,$50,$50,$50,$50,$00,$00,$80,$80,$08,$08
       .byte $8C,$DE,$FE,$BF,$FB,$F1,$F0,$F0,$F0,$F0,$28,$28,$28,$28,$50,$50
       .byte $A0,$A0,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$07,$1F,$3F,$3F
       .byte $6F,$4F,$54,$14,$14,$14,$0A,$0A,$05,$05,$00,$00,$C0,$C0,$88,$88
       .byte $EC,$FE,$9E,$BF,$FB,$F1,$F0,$F0,$F0,$F0,$28,$28,$14,$14,$0A,$0A
       .byte $0A,$0A,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$07,$1F,$7F,$FF
       .byte $0F,$0F,$14,$14,$28,$28,$50,$50,$A0,$A0,$00,$00,$60,$60,$48,$48
       .byte $EC,$FE,$DE,$FF,$FB,$F1,$F0,$F0,$F0,$F0,$28,$28,$14,$14,$0A,$0A
       .byte $05,$05,$00,$00,$00,$00,$00,$00,$00,$01,$01,$03,$07,$0F,$1F,$3F
       .byte $3F,$6F,$CE,$94,$94,$28,$28,$28,$28,$14,$60,$60,$48,$48,$EC,$FC
       .byte $DE,$FF,$FB,$F1,$F0,$F0,$F0,$E8,$A8,$14,$14,$14,$14,$28,$28,$00
       .byte $00,$00,$00,$00,$00,$01,$01,$C1,$7F,$3F,$1F,$0F,$0F,$0F,$17,$15
       .byte $28,$28,$50,$50,$A0,$A0,$00,$00,$00,$00,$C0,$C0,$80,$80,$C8,$C8
       .byte $AC,$BE,$DE,$FF,$FB,$F1,$F0,$F0,$F0,$70,$28,$28,$14,$14,$0A,$0A
       .byte $05,$05
LF7F0: .byte $80,$40,$08,$04
LF7F4: .byte $0D,$0E,$0F,$10
LF7F8: .byte $18,$14,$10,$0C,$00,$F0
LF7FE: .byte $0A,$0E
