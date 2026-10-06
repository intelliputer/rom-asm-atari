; Disassembly of roms/Space Jockey.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Space Jockey.bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
LF518   =   $F518

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       JSR    LF612   
       INC    $AA     
       DEC    $EA     
LF013: LDA    $89     
       STA    COLUBK  
       INC    $DC     
       DEC    $DD     
       INC    $DE     
       LDY    #$FF    
       STY    VSYNC   
       STY    VBLANK  
       LDA    #$28    
       STA    TIM8T   
       INC    $DF     
       BNE    LF03D   
       LDA    $EA     
       BPL    LF037   
       LDX    #$0A    
LF032: INC    $80,X   
       DEX            
       BPL    LF032   
LF037: INC    $E4     
       BNE    LF03D   
       STY    $EA     
LF03D: LDY    INTIM   
       BNE    LF03D   
       STY    WSYNC   
       STY    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       LDA    SWCHB   
       AND    #$03    
       CMP    #$03    
       BNE    LF058   
       LDA    INPT4   
       BMI    LF061   
LF058: STY    $EA     
       STY    $E4     
       LDX    #$0A    
       JSR    LF614   
LF061: LDA    SWCHB   
       LSR            
       BCS    LF07B   
       LDA    $EB     
       BMI    LF06D   
LF06B: DEC    $EB     
LF06D: LDX    #$9C    
       LDA    #$00    
LF071: STA    $4E,X   
       DEX            
       BNE    LF071   
       JSR    LF612   
       BMI    LF0CE   
LF07B: LDX    #$00    
       LSR            
       BCS    LF0A7   
       LDA    $EB     
       BPL    LF06B   
       LDA    $DA     
       BEQ    LF08C   
       DEC    $DA     
       BPL    LF0A9   
LF08C: STX    $A9     
       STX    $A8     
       INC    $EF     
       LDA    $EF     
       AND    #$0F    
       STA    $EF     
       CLC            
       ADC    #$01    
       CMP    #$0A    
       BCC    LF0A3   
       SBC    #$0A    
       ORA    #$10    
LF0A3: STA    $AA     
       LDX    #$1E    
LF0A7: STX    $DA     
LF0A9: LDA    $E9     
       BMI    LF0D1   
       LDA    INPT4   
       BMI    LF0C1   
       LDA    $EB     
       BPL    LF06B   
       LDA    #$FF    
       STA    $E9     
       INC    $EB     
       STY    $AA     
       STY    $E5     
       BEQ    LF0CE   
LF0C1: LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BEQ    LF0CC   
       LDY    #$FF    
LF0CC: STY    $E5     
LF0CE: JMP    LF3CC   
LF0D1: LDA    $E6     
       BMI    LF12D   
       LDA    SWCHA   
       STA    $BA     
       LDA    $EF     
       AND    #$04    
       BEQ    LF105   
       LDA    $BA     
       ASL            
       BMI    LF0F3   
       INC    $DE     
       DEC    $93     
       DEC    $93     
       LDA    #$10    
       CMP    $93     
       BCC    LF0F3   
       STA    $93     
LF0F3: LDA    $BA     
       BMI    LF105   
       INC    $DC     
       INC    $93     
       INC    $93     
       LDA    #$83    
       CMP    $93     
       BCS    LF105   
       STA    $93     
LF105: LDA    $BA     
       AND    #$20    
       BNE    LF119   
       INC    $DC     
       DEC    $92     
       DEC    $92     
       LDA    #$15    
       CMP    $92     
       BCC    LF119   
       STA    $92     
LF119: LDA    $BA     
       AND    #$10    
       BNE    LF12D   
       DEC    $DD     
       INC    $92     
       INC    $92     
       LDA    #$99    
       CMP    $92     
       BCS    LF12D   
       STA    $92     
LF12D: LDA    $EF     
       AND    #$08    
       BEQ    LF13E   
       LDA    CXPPMM  
       BPL    LF13E   
       LDA    $92     
       SEC            
       SBC    #$05    
       BNE    LF189   
LF13E: LDA    $E8     
       BMI    LF15B   
       STA    AUDV0   
       LDX    $92     
       DEX            
       DEX            
       STX    $D5     
       LDA    $93     
       CLC            
       ADC    #$10    
       STA    $D6     
       LDA    INPT4   
       ORA    $E6     
       BMI    LF1C3   
       DEC    $E8     
       DEC    $D5     
LF15B: INC    $DC     
       LDA    #$08    
       STA    AUDV0   
       STA    AUDC0   
       LDA    $D6     
       CLC            
       ADC    #$03    
       CMP    #$A2    
       BCC    LF170   
       LDA    #$01    
       STA    $D5     
LF170: STA    $D6     
       LDA    $E1     
       CLC            
       ADC    #$03    
       CMP    #$82    
       BCC    LF17F   
       INC    $E8     
       LDA    #$00    
LF17F: STA    $E1     
       STA    AUDF0   
       LDA    CXM1P   
       BPL    LF1AF   
       LDA    $D5     
LF189: JSR    LF59B   
       LDA    $AB,X   
       BMI    LF1AF   
       ORA    #$80    
       STA    $AB,X   
       LDA    #$15    
       STA    AUDF0   
       STA    $D5     
       LDA    #$02    
       STA    $C8,X   
       LDA    #$00    
       STA    $CB,X   
       STA    $E8     
       STA    $D6     
       STA    $E1     
       JSR    LF61D   
       LDA    #$0F    
       STA    AUDC0   
LF1AF: LDA    $E8     
       BPL    LF1C3   
       LDA    $D5     
       LSR            
       BCS    LF1C3   
       LDA    $EF     
       LSR            
       BCC    LF1C3   
       LDA    $92     
       SBC    #$03    
       STA    $D5     
LF1C3: DEC    $DB     
       BPL    LF1DC   
       LDA    #$03    
       STA    $DB     
       LDX    #$02    
LF1CD: LDA    $94,X   
       AND    #$10    
       ADC    #$FE    
       ROR    $9A,X   
       ROL    $97,X   
       ROR    $94,X   
       DEX            
       BPL    LF1CD   
LF1DC: LDA    $E6     
       BPL    LF23A   
       DEC    $E2     
       BPL    LF237   
       LDX    #$02    
       STX    $E2     
       LDX    $E3     
       INX            
       CPX    #$10    
       BCC    LF213   
       CLC            
       LDY    #$00    
       STY    AUDC1   
       LDX    #$02    
LF1F6: STY    $C5,X   
       LDA    $AB,X   
       BCS    LF1FD   
       LSR            
LF1FD: DEX            
       BPL    LF1F6   
       BCS    LF237   
       DEC    $A7     
       BPL    LF208   
       STY    $E9     
LF208: STY    $E6     
       LDX    #$13    
       JSR    LF614   
       STY    AUDC1   
       BMI    LF237   
LF213: CPX    #$05    
       BCS    LF22A   
       LDY    #$05    
       LDA    #$F6    
       STA    $BB     
       LDA    LF65F,X 
       STA    $BA     
LF222: LDA    ($BA),Y 
       STA.wy $008B,Y 
       DEY            
       BPL    LF222   
LF22A: STX    $E3     
       TXA            
       STA    AUDF1   
       EOR    #$FF    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
LF237: JMP    LF252   
LF23A: LDY    #$D5    
       LDA    #$08    
       AND    $DF     
       BEQ    LF244   
       LDY    #$AB    
LF244: STY    $8D     
       LDY    #$3E    
       LDA    #$10    
       AND    $DF     
       BEQ    LF250   
       LDY    #$36    
LF250: STY    $85     
LF252: LDX    #$02    
LF254: LDA    $AB,X   
       LSR            
       BCS    LF25C   
       JMP    LF2E2   
LF25C: DEC    $BC,X   
       BPL    LF2A2   
       LDA    $C5,X   
       STA    $BC,X   
       LDA    $BF,X   
       CMP    #$04    
       BCS    LF28E   
       LDA    $EF     
       AND    #$02    
       BEQ    LF28E   
       LDA    $DC,X   
       CMP    #$D0    
       BCS    LF28E   
       BPL    LF283   
       DEC    $9D,X   
       LDA    LF700,X 
       CMP    $9D,X   
       BCC    LF28E   
       BCS    LF28C   
LF283: INC    $9D,X   
       LDA    LF6FD,X 
       CMP    $9D,X   
       BCS    LF28E   
LF28C: STA    $9D,X   
LF28E: DEC    $C2,X   
       BNE    LF2A2   
LF292: LDA    #$3E    
       STA    $A0,X   
       LDA    $AB,X   
       AND    #$7E    
       STA    $AB,X   
       LDA    #$20    
       STA    $BC,X   
       BNE    LF2DF   
LF2A2: LDA    $AB,X   
       BPL    LF2CD   
       DEC    $C8,X   
       BPL    LF2CA   
       LDA    #$02    
       STA    $C8,X   
       INC    $CB,X   
       LDY    $CB,X   
       CPY    #$10    
       BCS    LF292   
       CPY    #$05    
       BCS    LF2C3   
       LDA    LF65B,Y 
       STA    $A0,X   
       LDA    #$EC    
       STA    $CE,X   
LF2C3: TYA            
       STA    AUDF0   
       EOR    #$FF    
       STA    AUDV0   
LF2CA: JMP    LF2DF   
LF2CD: LDY    $BF,X   
       LDA    #$02    
       AND    $DF     
       BEQ    LF2DA   
       LDA    LF644,Y 
       BNE    LF2DD   
LF2DA: LDA    LF64C,Y 
LF2DD: STA    $A0,X   
LF2DF: JMP    LF32B   
LF2E2: LDA    $E6     
       BMI    LF32B   
       DEC    $BC,X   
       BPL    LF32B   
       LDA    $DC,X   
       AND    #$0F    
       STA    $BA     
       LDA    LF6FD,X 
       SBC    $BA     
       STA    $9D,X   
       LDA    $DC,X   
       AND    #$02    
       STA    $C5,X   
       LDA    $DC,X   
       LSR            
       LSR            
       LSR            
       LSR            
       CPX    #$00    
       BEQ    LF309   
       AND    #$03    
LF309: AND    #$07    
       STA    $BF,X   
       TAY            
       LDA    LF664,Y 
       STA    $AB,X   
       CPY    #$04    
       BCC    LF31D   
       LDA    #$18    
       STA    $9D     
       STX    $C5     
LF31D: LDA    LF644,Y 
       STA    $A0,X   
       LDA    LF654,Y 
       STA    $CE,X   
       LDA    #$98    
       STA    $C2,X   
LF32B: DEX            
       BMI    LF331   
       JMP    LF254   
LF331: LDA    $E6     
       BMI    LF397   
       LDA    $E7     
       BPL    LF365   
       LDY    $D4     
       LDA    SWCHB   
       ASL            
       BPL    LF342   
       DEY            
LF342: TYA            
       SEC            
       SBC    #$03    
       CMP    #$05    
       BCS    LF34E   
       LDA    #$10    
       STA    $D3     
LF34E: STA    $D4     
       DEC    $E0     
       BNE    LF356   
       INC    $E7     
LF356: LDA    $E0     
       LSR            
       LSR            
       LSR            
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       STA    AUDF1   
       BNE    LF397   
LF365: LDA    #$40    
       STA    $E0     
       STA    AUDC1   
       LDY    SWCHB   
       BMI    LF376   
       LDA    #$A0    
       CMP    $DC     
       BCS    LF397   
LF376: LDA    $92     
       JSR    LF59B   
       LDA    $AB,X   
       BMI    LF397   
       AND    #$05    
       EOR    #$05    
       BNE    LF397   
       LDA    $C2,X   
       CMP    $93     
       BCC    LF397   
       STA    $D4     
       LDA    $9D,X   
       SBC    #$08    
       ORA    #$01    
       STA    $D3     
       DEC    $E7     
LF397: LDA    $EF     
       AND    #$08    
       BEQ    LF3A1   
       LDA    CXPPMM  
       BMI    LF3A6   
LF3A1: LDA    CXP1FB  
       ASL            
       BPL    LF3B4   
LF3A6: LDA    $E6     
       BMI    LF3B4   
       DEC    $E6     
       STA    $E7     
       STA    $E3     
       LDA    #$FF    
       STA    $D3     
LF3B4: LDX    #$FF    
LF3B6: INX            
       CPX    #$03    
       BEQ    LF3C3   
       LDA    $A8,X   
       CMP    $EC,X   
       BCC    LF3CC   
       BEQ    LF3B6   
LF3C3: LDX    #$02    
LF3C5: LDA    $A8,X   
       STA    $EC,X   
       DEX            
       BPL    LF3C5   
LF3CC: LDX    #$0A    
       LDY    #$00    
       LDA    $E5     
       BPL    LF3D6   
       LDY    #$44    
LF3D6: LDA.wy $00A8,Y 
       AND    #$F0    
       LSR            
       ADC    #$A0    
       STA    $AE,X   
       LDA    #$F6    
       STA    $AF,X   
       DEX            
       DEX            
       LDA.wy $00A8,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$A0    
       STA    $AE,X   
       LDA    #$F6    
       STA    $AF,X   
       INY            
       DEX            
       DEX            
       BPL    LF3D6   
       LDX    #$08    
       LDY    #$F0    
LF3FF: LDA    $B0,X   
       CMP    #$A0    
       BNE    LF40B   
       STY    $B0,X   
       DEX            
       DEX            
       BPL    LF3FF   
LF40B: LDA    #$FF    
       STA    CXCLR   
LF40F: LDX    INTIM   
       BNE    LF40F   
       STX    WSYNC   
       STX    VBLANK  
       LDA    $87     
       STA    $BA     
       LDY    #$07    
       JSR    LF5BA   
       LDX    #$01    
       LDA    $93     
       JSR    LF5A4   
       LDX    #$03    
       LDA    $D6     
       JSR    LF5A4   
       INX            
       LDA    $D4     
       JSR    LF5A4   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$05    
       STA    NUSIZ1  
       LDA    #$0E    
       STA    COLUPF  
       LDX    #$00    
       STX    NUSIZ0  
       STX    WSYNC   
       STX    CTRLPF  
       LDA    #$03    
       STA    $D7     
       LDA    #$99    
       STA    $D9     
LF455: LDA    $D7     
       BEQ    LF4BB   
       TAY            
       LDA    $D9     
       AND    #$FE    
       CMP    $D5     
       PHP            
       CMP    $92     
       BCS    LF470   
       LDA    $80,X   
       STA    $BA     
       LDA    $8B,X   
       BEQ    LF46E   
       INX            
LF46E: STA    $BB     
LF470: LDA.wy $00C1,Y 
       STA    WSYNC   
       SEC            
LF476: SBC    #$0F    
       BCS    LF476   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       NOP            
       ADC    #$90    
       STA    RESP0   
       STA    WSYNC   
       STA    HMP0    
       LDA    $BB     
       STA    GRP1    
       LDA    $BA     
       STA    COLUP1  
       PLA            
       STA    ENAM1   
       LDY    $D7     
       LDA.wy $009F,Y 
       STA    $A3     
       LDA.wy $00CD,Y 
       STA    $A5     
       LDA    LF518,Y 
       STA    $D8     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D9     
       SEC            
       SBC    #$03    
       STA    $D9     
       LDA.wy $009C,Y 
       STA    $D1     
       LDY    #$00    
       DEC    $D7     
       BPL    LF4EF   
LF4BB: JMP    LF51C   
LF4BE: DEC    $D9     
       LDA    $D9     
       CMP    $D8     
       BEQ    LF455   
       LSR            
       BCC    LF4EF   
       LDA    $D3     
       CMP    $D9     
       PHP            
       PLA            
       STA    ENABL   
       LDA    $D1     
       CMP    $D9     
       BCC    LF4E2   
       LDA    ($A5),Y 
       STA    $BA     
       LDA    ($A3),Y 
       BEQ    LF4E4   
       INY            
       BNE    LF4E4   
LF4E2: LDA    #$00    
LF4E4: STA    WSYNC   
       STA    GRP0    
       LDA    $BA     
       STA    COLUP0  
       JMP    LF4BE   
LF4EF: LDA    $D5     
       CMP    $D9     
       PHP            
       PLA            
       STA    ENAM1   
       LDA    $D9     
       CMP    $92     
       BCS    LF508   
       LDA    $80,X   
       STA    $BA     
       LDA    $8B,X   
       BEQ    LF50E   
       INX            
       BNE    LF50E   
LF508: LDA    #$BC    
       STA    $BA     
       LDA    #$00    
LF50E: STA    WSYNC   
       STA    GRP1    
       LDA    $BA     
       STA    COLUP1  
       JMP    LF4BE   
LF519: .byte $06,$33,$65
LF51C: LDA    $88     
       STA    COLUPF  
       LDX    #$00    
LF522: LDA    $94,X   
       STA    WSYNC   
       STA    PF0     
       LDA    $97,X   
       STA    PF1     
       LDA    $9A,X   
       STA    PF2     
       INX            
LF531: DEC    $D9     
       LDA    $D9     
       BEQ    LF558   
       LSR            
       BCC    LF522   
       LDA    $D1     
       CMP    $D9     
       BCC    LF54B   
       LDA    ($A5),Y 
       STA    $BA     
       LDA    ($A3),Y 
       BEQ    LF54D   
       INY            
       BNE    LF54D   
LF54B: LDA    #$00    
LF54D: STA    WSYNC   
       STA    GRP0    
       LDA    $BA     
       STA    COLUP0  
       JMP    LF531   
LF558: STA    WSYNC   
       LDX    $88     
       STX    COLUBK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    #$0A    
       LDA    $E9     
       BPL    LF57B   
       LDY    $A7     
LF56C: LDA    #$F8    
       DEY            
       BPL    LF573   
       LDA    #$F0    
LF573: STA    $AE,X   
       DEX            
       DEX            
       BPL    LF56C   
       BMI    LF586   
LF57B: LDA    #$82    
       CLC            
LF57E: STA    $AE,X   
       ADC    #$05    
       DEX            
       DEX            
       BPL    LF57E   
LF586: LDY    $8A     
       STY    $BA     
       LDX    #$00    
       LDY    #$04    
       JSR    LF5BA   
       LDX    #$1C    
LF593: STA    WSYNC   
       DEX            
       BNE    LF593   
       JMP    LF013   
LF59B: LDX    #$FF    
LF59D: INX            
       SEC            
       SBC    #$34    
       BPL    LF59D   
       RTS            

LF5A4: STA    WSYNC   
       SEC            
LF5A7: SBC    #$0F    
       BCS    LF5A7   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       RTS            

LF5BA: STX    GRP0    
       STX    GRP1    
       STX    WSYNC   
       LDA    #$3B    
       JSR    LF5A4   
       LDA    #$43    
       INX            
       JSR    LF5A4   
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $BA     
       STA    COLUP0  
       STA    COLUP1  
LF5DF: LDA    ($AE),Y 
       STA    $BA     
       STA    WSYNC   
       LDA    ($B8),Y 
       STA    GRP0    
       LDA    ($B6),Y 
       STA    GRP1    
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    ($B2),Y 
       TAX            
       LDA    ($B0),Y 
       STY    $BB     
       LDY    $BA     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $BB     
       DEY            
       BPL    LF5DF   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LF612: LDX    #$27    
LF614: LDA    LF70B,X 
       STA    $80,X   
       DEX            
       BPL    LF614   
       RTS            

LF61D: LDY    $BF,X   
       LDA    LF703,Y 
       SED            
       CMP    #$90    
       LDY    $A9     
       LDX    #$02    
LF629: ADC    $A8,X   
       STA    $A8,X   
       LDA    #$00    
       DEX            
       BPL    LF629   
       CLD            
       TYA            
       EOR    $A9     
       AND    #$F0    
       BEQ    LF643   
       LDY    $A7     
       INY            
       CPY    #$07    
       BCS    LF643   
       STY    $A7     
LF643: RTS            

LF644: .byte $33,$3F,$46,$5A,$68,$75,$82,$82
LF64C: .byte $33,$3F,$50,$61,$68,$75,$8D,$8D
LF654: .byte $AA,$B5,$BB,$C4,$CA,$D6,$E2
LF65B: .byte $E2,$98,$A1,$F4
LF65F: .byte $3E,$6C,$72,$78,$F0
LF664: .byte $0B,$0F,$0F,$0F,$01,$01,$05,$07,$18,$3C,$7E,$3C,$18,$00,$81,$24
       .byte $18,$24,$81,$00,$24,$81,$42,$81,$24,$00,$00,$00,$00,$00,$E8,$28
       .byte $EE,$8A,$FE,$B7,$B5,$F4,$B5,$F7,$73,$41,$71,$41,$71,$BD,$B5,$B5
       .byte $B5,$BD,$D6,$56,$1C,$5A,$DA,$E6,$86,$ED,$8D,$ED,$3C,$72,$72,$72
       .byte $72,$72,$72,$3C,$18,$18,$18,$18,$18,$18,$18,$38,$7E,$46,$40,$3C
       .byte $0E,$0E,$4E,$3C,$3E,$4E,$0E,$1C,$1C,$0E,$4E,$3C,$0C,$0C,$7E,$4C
       .byte $4C,$4C,$4C,$4C,$7C,$4E,$0E,$0E,$7C,$40,$40,$7E,$3C,$4E,$4E,$4E
       .byte $7C,$40,$42,$3C,$18,$18,$0C,$0C,$06,$06,$46,$7E,$3C,$4E,$4E,$3C
       .byte $3C,$72,$72,$3C,$3C,$42,$02,$3E,$72,$72,$72,$3C,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$30,$78,$B4,$78,$30
LF6FD: .byte $34,$67,$9A
LF700: .byte $1A,$4D,$7F
LF703: .byte $25,$99,$50,$99,$20,$20,$99,$99
LF70B: .byte $BC,$B8,$B4,$B8,$BC,$3E,$BC,$8A,$F2,$00,$8E,$3C,$7E,$99,$7E,$3C
       .byte $18,$00,$15,$10,$8F,$DF,$FF,$81,$C3,$E7,$81,$C3,$E7,$30,$50,$85
       .byte $3E,$3E,$3E,$3E,$F7,$3E,$F7,$02,$3C,$7E,$FF,$FF,$FF,$FF,$BD,$5A
       .byte $5A,$3C,$3C,$00,$01,$03,$7F,$FF,$30,$18,$00,$1F,$10,$70,$F9,$FF
       .byte $F8,$70,$28,$FC,$00,$F0,$10,$70,$F8,$FF,$F9,$70,$28,$FC,$00,$99
       .byte $BD,$FF,$3F,$18,$18,$00,$19,$3D,$FF,$BF,$98,$18,$00,$19,$3D,$7F
       .byte $FF,$FF,$BD,$A5,$E7,$E7,$FF,$FF,$FF,$00,$3C,$7E,$FF,$FF,$FF,$7E
       .byte $3C,$18,$58,$38,$18,$18,$00,$06,$06,$FA,$1A,$1E,$1E,$2A,$FE,$7F
       .byte $54,$00,$03,$03,$FA,$1A,$1E,$1E,$54,$7F,$FE,$2A,$00,$81,$66,$7E
       .byte $3C,$3C,$7E,$66,$81,$00,$81,$24,$42,$18,$18,$42,$24,$81,$00,$82
       .byte $84,$86,$88,$86,$84,$82,$E4,$E4,$1A,$1A,$CA,$CA,$08,$08,$B6,$B6
       .byte $0C,$06,$44,$48,$4C,$48,$44,$06,$06,$58,$56,$54,$58,$5F,$5F,$06
       .byte $06,$06,$06,$34,$34,$34,$34,$34,$F2,$F2,$F2,$C4,$C4,$C8,$C8,$CC
       .byte $CC,$C8,$F8,$F8,$F8,$F6,$F6,$88,$88,$88,$88,$0C,$0C,$06,$06,$06
       .byte $06,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$24,$81,$42,$81,$81,$42,$81
       .byte $24,$00,$F0,$00,$F0
