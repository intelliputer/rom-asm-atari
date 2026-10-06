; Disassembly of roms/Space Jockey (4K version).bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Space Jockey (4K version).bin
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
       .byte $24,$00,$F0,$00,$F0,$78,$D8,$A2,$FF,$9A,$E8,$8A,$95,$00,$E8,$D0
       .byte $FB,$20,$12,$F6,$E6,$AA,$C6,$EA,$A5,$89,$85,$09,$E6,$DC,$C6,$DD
       .byte $E6,$DE,$A0,$FF,$84,$00,$84,$01,$A9,$28,$8D,$95,$02,$E6,$DF,$D0
       .byte $11,$A5,$EA,$10,$07,$A2,$0A,$F6,$80,$CA,$10,$FB,$E6,$E4,$D0,$02
       .byte $84,$EA,$AC,$84,$02,$D0,$FB,$84,$02,$84,$00,$A9,$2D,$8D,$96,$02
       .byte $AD,$82,$02,$29,$03,$C9,$03,$D0,$04,$A5,$3C,$30,$09,$84,$EA,$84
       .byte $E4,$A2,$0A,$20,$14,$F6,$AD,$82,$02,$4A,$B0,$14,$A5,$EB,$30,$02
       .byte $C6,$EB,$A2,$9C,$A9,$00,$95,$4E,$CA,$D0,$FB,$20,$12,$F6,$30,$53
       .byte $A2,$00,$4A,$B0,$27,$A5,$EB,$10,$E7,$A5,$DA,$F0,$04,$C6,$DA,$10
       .byte $1D,$86,$A9,$86,$A8,$E6,$EF,$A5,$EF,$29,$0F,$85,$EF,$18,$69,$01
       .byte $C9,$0A,$90,$04,$E9,$0A,$09,$10,$85,$AA,$A2,$1E,$86,$DA,$A5,$E9
       .byte $30,$24,$A5,$3C,$30,$10,$A5,$EB,$10,$B6,$A9,$FF,$85,$E9,$E6,$EB
       .byte $84,$AA,$84,$E5,$F0,$0D,$AD,$80,$02,$29,$F0,$C9,$F0,$F0,$02,$A0
       .byte $FF,$84,$E5,$4C,$CC,$F3,$A5,$E6,$30,$58,$AD,$80,$02,$85,$BA,$A5
       .byte $EF,$29,$04,$F0,$25,$A5,$BA,$0A,$30,$0E,$E6,$DE,$C6,$93,$C6,$93
       .byte $A9,$10,$C5,$93,$90,$02,$85,$93,$A5,$BA,$30,$0E,$E6,$DC,$E6,$93
       .byte $E6,$93,$A9,$83,$C5,$93,$B0,$02,$85,$93,$A5,$BA,$29,$20,$D0,$0E
       .byte $E6,$DC,$C6,$92,$C6,$92,$A9,$15,$C5,$92,$90,$02,$85,$92,$A5,$BA
       .byte $29,$10,$D0,$0E,$C6,$DD,$E6,$92,$E6,$92,$A9,$99,$C5,$92,$B0,$02
       .byte $85,$92,$A5,$EF,$29,$08,$F0,$0B,$A5,$37,$10,$07,$A5,$92,$38,$E9
       .byte $05,$D0,$4B,$A5,$E8,$30,$19,$85,$19,$A6,$92,$CA,$CA,$86,$D5,$A5
       .byte $93,$18,$69,$10,$85,$D6,$A5,$3C,$05,$E6,$30,$6C,$C6,$E8,$C6,$D5
       .byte $E6,$DC,$A9,$08,$85,$19,$85,$15,$A5,$D6,$18,$69,$03,$C9,$A2,$90
       .byte $04,$A9,$01,$85,$D5,$85,$D6,$A5,$E1,$18,$69,$03,$C9,$82,$90,$04
       .byte $E6,$E8,$A9,$00,$85,$E1,$85,$17,$A5,$31,$10,$28,$A5,$D5,$20,$9B
       .byte $F5,$B5,$AB,$30,$1F,$09,$80,$95,$AB,$A9,$15,$85,$17,$85,$D5,$A9
       .byte $02,$95,$C8,$A9,$00,$95,$CB,$85,$E8,$85,$D6,$85,$E1,$20,$1D,$F6
       .byte $A9,$0F,$85,$15,$A5,$E8,$10,$10,$A5,$D5,$4A,$B0,$0B,$A5,$EF,$4A
       .byte $90,$06,$A5,$92,$E9,$03,$85,$D5,$C6,$DB,$10,$15,$A9,$03,$85,$DB
       .byte $A2,$02,$B5,$94,$29,$10,$69,$FE,$76,$9A,$36,$97,$76,$94,$CA,$10
       .byte $F1,$A5,$E6,$10,$5A,$C6,$E2,$10,$53,$A2,$02,$86,$E2,$A6,$E3,$E8
       .byte $E0,$10,$90,$24,$18,$A0,$00,$84,$16,$A2,$02,$94,$C5,$B5,$AB,$B0
       .byte $01,$4A,$CA,$10,$F6,$B0,$35,$C6,$A7,$10,$02,$84,$E9,$84,$E6,$A2
       .byte $13,$20,$14,$F6,$84,$16,$30,$24,$E0,$05,$B0,$13,$A0,$05,$A9,$F6
       .byte $85,$BB,$BD,$5F,$F6,$85,$BA,$B1,$BA,$99,$8B,$00,$88,$10,$F8,$86
       .byte $E3,$8A,$85,$18,$49,$FF,$85,$1A,$A9,$08,$85,$16,$4C,$52,$F2,$A0
       .byte $D5,$A9,$08,$25,$DF,$F0,$02,$A0,$AB,$84,$8D,$A0,$3E,$A9,$10,$25
       .byte $DF,$F0,$02,$A0,$36,$84,$85,$A2,$02,$B5,$AB,$4A,$B0,$03,$4C,$E2
       .byte $F2,$D6,$BC,$10,$42,$B5,$C5,$95,$BC,$B5,$BF,$C9,$04,$B0,$24,$A5
       .byte $EF,$29,$02,$F0,$1E,$B5,$DC,$C9,$D0,$B0,$18,$10,$0B,$D6,$9D,$BD
       .byte $00,$F7,$D5,$9D,$90,$0D,$B0,$09,$F6,$9D,$BD,$FD,$F6,$D5,$9D,$B0
       .byte $02,$95,$9D,$D6,$C2,$D0,$10,$A9,$3E,$95,$A0,$B5,$AB,$29,$7E,$95
       .byte $AB,$A9,$20,$95,$BC,$D0,$3D,$B5,$AB,$10,$27,$D6,$C8,$10,$20,$A9
       .byte $02,$95,$C8,$F6,$CB,$B4,$CB,$C0,$10,$B0,$DC,$C0,$05,$B0,$09,$B9
       .byte $5B,$F6,$95,$A0,$A9,$EC,$95,$CE,$98,$85,$17,$49,$FF,$85,$19,$4C
       .byte $DF,$F2,$B4,$BF,$A9,$02,$25,$DF,$F0,$05,$B9,$44,$F6,$D0,$03,$B9
       .byte $4C,$F6,$95,$A0,$4C,$2B,$F3,$A5,$E6,$30,$45,$D6,$BC,$10,$41,$B5
       .byte $DC,$29,$0F,$85,$BA,$BD,$FD,$F6,$E5,$BA,$95,$9D,$B5,$DC,$29,$02
       .byte $95,$C5,$B5,$DC,$4A,$4A,$4A,$4A,$E0,$00,$F0,$02,$29,$03,$29,$07
       .byte $95,$BF,$A8,$B9,$64,$F6,$95,$AB,$C0,$04,$90,$06,$A9,$18,$85,$9D
       .byte $86,$C5,$B9,$44,$F6,$95,$A0,$B9,$54,$F6,$95,$CE,$A9,$98,$95,$C2
       .byte $CA,$30,$03,$4C,$54,$F2,$A5,$E6,$30,$62,$A5,$E7,$10,$2C,$A4,$D4
       .byte $AD,$82,$02,$0A,$10,$01,$88,$98,$38,$E9,$03,$C9,$05,$B0,$04,$A9
       .byte $10,$85,$D3,$85,$D4,$C6,$E0,$D0,$02,$E6,$E7,$A5,$E0,$4A,$4A,$4A
       .byte $85,$1A,$A9,$08,$85,$16,$85,$18,$D0,$32,$A9,$40,$85,$E0,$85,$16
       .byte $AC,$82,$02,$30,$06,$A9,$A0,$C5,$DC,$B0,$21,$A5,$92,$20,$9B,$F5
       .byte $B5,$AB,$30,$18,$29,$05,$49,$05,$D0,$12,$B5,$C2,$C5,$93,$90,$0C
       .byte $85,$D4,$B5,$9D,$E9,$08,$09,$01,$85,$D3,$C6,$E7,$A5,$EF,$29,$08
       .byte $F0,$04,$A5,$37,$30,$05,$A5,$33,$0A,$10,$0E,$A5,$E6,$30,$0A,$C6
       .byte $E6,$85,$E7,$85,$E3,$A9,$FF,$85,$D3,$A2,$FF,$E8,$E0,$03,$F0,$08
       .byte $B5,$A8,$D5,$EC,$90,$0B,$F0,$F3,$A2,$02,$B5,$A8,$95,$EC,$CA,$10
       .byte $F9,$A2,$0A,$A0,$00,$A5,$E5,$10,$02,$A0,$44,$B9,$A8,$00,$29,$F0
       .byte $4A,$69,$A0,$95,$AE,$A9,$F6,$95,$AF,$CA,$CA,$B9,$A8,$00,$29,$0F
       .byte $0A,$0A,$0A,$69,$A0,$95,$AE,$A9,$F6,$95,$AF,$C8,$CA,$CA,$10,$DB
       .byte $A2,$08,$A0,$F0,$B5,$B0,$C9,$A0,$D0,$06,$94,$B0,$CA,$CA,$10,$F4
       .byte $A9,$FF,$85,$2C,$AE,$84,$02,$D0,$FB,$86,$02,$86,$01,$A5,$87,$85
       .byte $BA,$A0,$07,$20,$BA,$F5,$A2,$01,$A5,$93,$20,$A4,$F5,$A2,$03,$A5
       .byte $D6,$20,$A4,$F5,$E8,$A5,$D4,$20,$A4,$F5,$85,$02,$85,$2A,$85,$02
       .byte $85,$2B,$A9,$05,$85,$05,$A9,$0E,$85,$08,$A2,$00,$86,$04,$86,$02
       .byte $86,$0A,$A9,$03,$85,$D7,$A9,$99,$85,$D9,$A5,$D7,$F0,$62,$A8,$A5
       .byte $D9,$29,$FE,$C5,$D5,$08,$C5,$92,$B0,$0B,$B5,$80,$85,$BA,$B5,$8B
       .byte $F0,$01,$E8,$85,$BB,$B9,$C1,$00,$85,$02,$38,$E9,$0F,$B0,$FC,$49
       .byte $0F,$0A,$0A,$0A,$0A,$EA,$69,$90,$85,$10,$85,$02,$85,$20,$A5,$BB
       .byte $85,$1C,$A5,$BA,$85,$07,$68,$85,$1E,$A4,$D7,$B9,$9F,$00,$85,$A3
       .byte $B9,$CD,$00,$85,$A5,$B9,$18,$F5,$85,$D8,$85,$02,$85,$2A,$A5,$D9
       .byte $38,$E9,$03,$85,$D9,$B9,$9C,$00,$85,$D1,$A0,$00,$C6,$D7,$10,$34
       .byte $4C,$1C,$F5,$C6,$D9,$A5,$D9,$C5,$D8,$F0,$8F,$4A,$90,$26,$A5,$D3
       .byte $C5,$D9,$08,$68,$85,$1F,$A5,$D1,$C5,$D9,$90,$0B,$B1,$A5,$85,$BA
       .byte $B1,$A3,$F0,$05,$C8,$D0,$02,$A9,$00,$85,$02,$85,$1B,$A5,$BA,$85
       .byte $06,$4C,$BE,$F4,$A5,$D5,$C5,$D9,$08,$68,$85,$1E,$A5,$D9,$C5,$92
       .byte $B0,$0B,$B5,$80,$85,$BA,$B5,$8B,$F0,$09,$E8,$D0,$06,$A9,$BC,$85
       .byte $BA,$A9,$00,$85,$02,$85,$1C,$A5,$BA,$85,$07,$4C,$BE,$F4,$06,$33
       .byte $65,$A5,$88,$85,$08,$A2,$00,$B5,$94,$85,$02,$85,$0D,$B5,$97,$85
       .byte $0E,$B5,$9A,$85,$0F,$E8,$C6,$D9,$A5,$D9,$F0,$21,$4A,$90,$E8,$A5
       .byte $D1,$C5,$D9,$90,$0B,$B1,$A5,$85,$BA,$B1,$A3,$F0,$05,$C8,$D0,$02
       .byte $A9,$00,$85,$02,$85,$1B,$A5,$BA,$85,$06,$4C,$31,$F5,$85,$02,$A6
       .byte $88,$86,$09,$85,$0D,$85,$0E,$85,$0F,$A2,$0A,$A5,$E9,$10,$11,$A4
       .byte $A7,$A9,$F8,$88,$10,$02,$A9,$F0,$95,$AE,$CA,$CA,$10,$F3,$30,$0B
       .byte $A9,$82,$18,$95,$AE,$69,$05,$CA,$CA,$10,$F8,$A4,$8A,$84,$BA,$A2
       .byte $00,$A0,$04,$20,$BA,$F5,$A2,$1C,$85,$02,$CA,$D0,$FB,$4C,$13,$F0
       .byte $A2,$FF,$E8,$38,$E9,$34,$10,$FA,$60,$85,$02,$38,$E9,$0F,$B0,$FC
       .byte $49,$0F,$0A,$0A,$0A,$0A,$69,$90,$95,$10,$85,$02,$95,$20,$60,$86
       .byte $1B,$86,$1C,$86,$02,$A9,$3B,$20,$A4,$F5,$A9,$43,$E8,$20,$A4,$F5
       .byte $86,$25,$86,$26,$A2,$03,$86,$04,$86,$05,$85,$02,$85,$2A,$A5,$BA
       .byte $85,$06,$85,$07,$B1,$AE,$85,$BA,$85,$02,$B1,$B8,$85,$1B,$B1,$B6
       .byte $85,$1C,$B1,$B4,$85,$1B,$B1,$B2,$AA,$B1,$B0,$84,$BB,$A4,$BA,$86
       .byte $1C,$85,$1B,$84,$1C,$84,$1B,$A4,$BB,$88,$10,$D8,$A9,$00,$85,$25
       .byte $85,$26,$85,$1B,$85,$1C,$60,$A2,$27,$BD,$0B,$F7,$95,$80,$CA,$10
       .byte $F8,$60,$B4,$BF,$B9,$03,$F7,$F8,$C9,$90,$A4,$A9,$A2,$02,$75,$A8
       .byte $95,$A8,$A9,$00,$CA,$10,$F7,$D8,$98,$45,$A9,$29,$F0,$F0,$09,$A4
       .byte $A7,$C8,$C0,$07,$B0,$02,$84,$A7,$60,$33,$3F,$46,$5A,$68,$75,$82
       .byte $82,$33,$3F,$50,$61,$68,$75,$8D,$8D,$AA,$B5,$BB,$C4,$CA,$D6,$E2
       .byte $E2,$98,$A1,$F4,$3E,$6C,$72,$78,$F0,$0B,$0F,$0F,$0F,$01,$01,$05
       .byte $07,$18,$3C,$7E,$3C,$18,$00,$81,$24,$18,$24,$81,$00,$24,$81,$42
       .byte $81,$24,$00,$00,$00,$00,$00,$E8,$28,$EE,$8A,$FE,$B7,$B5,$F4,$B5
       .byte $F7,$73,$41,$71,$41,$71,$BD,$B5,$B5,$B5,$BD,$D6,$56,$1C,$5A,$DA
       .byte $E6,$86,$ED,$8D,$ED,$3C,$72,$72,$72,$72,$72,$72,$3C,$18,$18,$18
       .byte $18,$18,$18,$18,$38,$7E,$46,$40,$3C,$0E,$0E,$4E,$3C,$3E,$4E,$0E
       .byte $1C,$1C,$0E,$4E,$3C,$0C,$0C,$7E,$4C,$4C,$4C,$4C,$4C,$7C,$4E,$0E
       .byte $0E,$7C,$40,$40,$7E,$3C,$4E,$4E,$4E,$7C,$40,$42,$3C,$18,$18,$0C
       .byte $0C,$06,$06,$46,$7E,$3C,$4E,$4E,$3C,$3C,$72,$72,$3C,$3C,$42,$02
       .byte $3E,$72,$72,$72,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$30,$78,$B4
       .byte $78,$30,$34,$67,$9A,$1A,$4D,$7F,$25,$99,$50,$99,$20,$20,$99,$99
       .byte $BC,$B8,$B4,$B8,$BC,$3E,$BC,$8A,$F2,$00,$8E,$3C,$7E,$99,$7E,$3C
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
