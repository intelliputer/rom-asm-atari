; Disassembly of roms/Nuts.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Nuts.bin
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
PF1     =  $0E
PF2     =  $0F
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
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
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
       LDX    #$FF    
       TXS            
       CLD            
       LDX    #$00    
       LDA    #$00    
LF008: STA    VSYNC,X 
       DEX            
       BNE    LF008   
       STA    SWACNT  
       STA    SWBCNT  
       LDA    #$2C    
       STA    $AA     
       LDA    #$80    
       STA    $B1     
       STA    $B5     
       LDX    #$F9    
       STX    $CE     
       STX    $D0     
       INX            
       STX    $89     
       STX    $8B     
       STX    $8D     
       STX    $8F     
       STX    $91     
       INX            
       STX    $CA     
       STX    $CC     
       LDA    #$50    
       STA    $88     
       STA    $8A     
       STA    $8C     
       LDA    #$08    
       STA    $8E     
       JSR    LF045   
       JMP    LF0CB   
LF045: LDA    #$FF    
       STA    $9D     
       LDX    #$84    
       LDY    #$41    
       LDA    $9A     
       CMP    #$07    
       BCC    LF057   
       STY    $9D     
       LDX    #$66    
LF057: STX    $A1     
       STY    $99     
       LDA    #$A0    
       STA    $A5     
       LDA    #$09    
       STA    $9C     
       STA    $A0     
       LDA    #$FF    
       STA    $C6     
       STA    $D6     
       STA    $D7     
       STA    $D8     
       STA    $D9     
       LDA    #$49    
       STA    $A8     
       STA    $A7     
       STA    $86     
       LDA    #$A0    
       STA    $A4     
       STA    $A3     
       LDA    #$08    
       STA    $AB     
       STA    $AF     
       LDA    #$07    
       STA    $80     
       STA    $82     
       LDA    #$16    
       STA    $9B     
       STA    $9F     
       LDA    #$00    
       STA    $D2     
       STA    $D3     
       STA    $D4     
       STA    $D5     
       STA    $90     
       STA    $93     
       STA    $95     
       LDA    #$01    
       BIT    $9A     
       BEQ    LF0AB   
       LDY    #$05    
       BNE    LF0AD   
LF0AB: LDY    #$02    
LF0AD: STY    $A6     
       LDA    #$02    
       BIT    $9A     
       BNE    LF0C1   
       LDA    #$04    
       BIT    $9A     
       BEQ    LF0C7   
       SEC            
       ROL    $93     
       SEC            
       ROL    $95     
LF0C1: SEC            
       ROL    $93     
       SEC            
       ROL    $95     
LF0C7: JSR    LF795   
       RTS            

LF0CB: JSR    LF0DA   
       JSR    LF161   
       JSR    LF50B   
       JSR    LF54B   
       JMP    LF0CB   
LF0DA: INC    $BA     
       LDA    #$40    
       EOR    $BA     
       BNE    LF0E6   
       STA    $BA     
       INC    $81     
LF0E6: LDY    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    $E0     
       BEQ    LF111   
       LDA    $97     
       AND    #$07    
       AND    $BA     
       BNE    LF111   
       LDA    $97     
       LSR            
       LSR            
       LSR            
       CMP    $DE     
       BEQ    LF10B   
       LDX    $DE     
       INX            
       STX    $DE     
       STX    AUDF0   
       JMP    LF111   
LF10B: LDX    #$00    
       STX    $E0     
       STX    AUDV0   
LF111: STA    WSYNC   
       LDX    $E1     
       BEQ    LF133   
       LDA    $98     
       BEQ    LF126   
       DEX            
       STX    $E1     
       STX    AUDV1   
       BNE    LF133   
       STX    $98     
       BEQ    LF133   
LF126: LDX    $DF     
       DEX            
       STX    $DF     
       STX    AUDF1   
       BNE    LF133   
       STX    $E1     
       STX    AUDV1   
LF133: STA    WSYNC   
       STY    VSYNC   
       LDY    #$00    
       LDA    $9A     
       CMP    #$07    
       BCC    LF147   
       LDA    $BA     
       AND    #$01    
       BEQ    LF147   
       LDY    #$04    
LF147: LDA.wy $0092,Y 
       STA    $85     
       LDA.wy $00B9,Y 
       STA    $87     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    $AA     
       STA    TIM64T  
       RTS            

LF161: JSR    LF17D   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF173   
       LDA    #$80    
       STA    $B6     
       JSR    LF045   
       RTS            

LF173: LDA    $B6     
       BMI    LF178   
       RTS            

LF178: LDA    $A6     
       BPL    LF1CF   
       RTS            

LF17D: LDA    SWCHB   
       AND    #$02    
       BNE    LF192   
       LDA    $B6     
       CMP    #$01    
       BEQ    LF191   
       JSR    LF19B   
       LDA    #$01    
       STA    $B6     
LF191: RTS            

LF192: LDA    $B6     
       BMI    LF19A   
       LDA    #$00    
       STA    $B6     
LF19A: RTS            

LF19B: LDA    #$50    
       STA    $88     
       STA    $8A     
       STA    $8C     
       INC    $9A     
       LDA    $9A     
       CMP    #$06    
       BNE    LF1AE   
       CLC            
       ADC    #$02    
LF1AE: CMP    #$0E    
       BCC    LF1B4   
       LDA    #$00    
LF1B4: STA    $9A     
       CLC            
       ADC    #$01    
       CMP    #$07    
       BCC    LF1C9   
       SBC    #$02    
       CMP    #$0A    
       BCC    LF1C9   
       SBC    #$0A    
       LDY    #$08    
       STY    $8C     
LF1C9: ASL            
       ASL            
       ASL            
       STA    $8E     
       RTS            

LF1CF: LDA    #$00    
       STA    HMP1    
       STA    HMP0    
       STA    HMM1    
       LDA    #$41    
       LDX    #$00    
       CMP    $99,X   
       BEQ    LF1E2   
       JMP    LF47D   
LF1E2: LDX    $9A     
       CPX    #$07    
       BCC    LF1F1   
       LDX    #$04    
       CMP    $99,X   
       BEQ    LF1F1   
       JMP    LF47D   
LF1F1: LDX    #$07    
       LDA    #$09    
       JSR    LF210   
       LDX    #$03    
       LDA    #$09    
       JSR    LF210   
       LDX    #$06    
       LDA    #$16    
       JSR    LF210   
       LDX    #$02    
       LDA    #$16    
       JSR    LF210   
       JMP    LF2FA   
LF210: LDY    $99,X   
       BNE    LF217   
       JMP    LF2C6   
LF217: LDY    $C1,X   
       BMI    LF251   
       CMP    $99,X   
       BEQ    LF270   
       LDA    $A1,X   
       CMP    #$C4    
       BNE    LF23B   
       CPX    #$06    
       BEQ    LF22D   
       CPX    #$02    
       BNE    LF238   
LF22D: LDA    #$0A    
       CMP    $99,X   
       BNE    LF238   
       LDA    #$00    
       STA    $99,X   
       RTS            

LF238: DEC    $99,X   
       RTS            

LF23B: CPX    #$07    
       BEQ    LF243   
       CPX    #$03    
       BNE    LF24E   
LF243: LDA    #$15    
       CMP    $99,X   
       BNE    LF24E   
       LDA    #$00    
       STA    $99,X   
       RTS            

LF24E: INC    $99,X   
       RTS            

LF251: LDA    $C1,X   
       AND    #$03    
       BNE    LF25F   
       LDA    $B1,X   
       EOR    #$20    
       STA    $B1,X   
       STA    $B9,X   
LF25F: INC    $C1,X   
       BMI    LF26F   
       LDA    #$00    
       STA    $B9,X   
       STA    $B1,X   
       STA    $99,X   
       LDA    #$C7    
       STA    $A1,X   
LF26F: RTS            

LF270: LDY    $9E     
       LDA.wy $0080,Y 
       AND    $BA     
       BEQ    LF27A   
       RTS            

LF27A: LDA    $C1,X   
       EOR    #$01    
       STA    $C1,X   
       TAY            
       LDA    LF8BB,Y 
       STA    $B1,X   
       LDA    $99,X   
       CMP    #$09    
       BNE    LF2A1   
       DEC    $A1,X   
       LDA    $A1,X   
       CMP    #$33    
       BNE    LF29A   
       INC    $99,X   
       JSR    LF2AB   
       RTS            

LF29A: AND    #$0F    
       BNE    LF2A0   
       DEC    $A1,X   
LF2A0: RTS            

LF2A1: INC    $A1,X   
       LDA    $A1,X   
       CMP    #$C4    
       BNE    LF2BF   
       DEC    $99,X   
LF2AB: CLC            
       LDA    $90     
       ADC    #$08    
       CMP    #$50    
       BNE    LF2BB   
       LDX    #$00    
       JSR    LF45B   
       LDA    #$00    
LF2BB: STA    $90     
       RTS            

LF2BE: .byte $60
LF2BF: AND    #$0F    
       BNE    LF2C5   
       INC    $A1,X   
LF2C5: RTS            

LF2C6: TXA            
       LSR            
       LSR            
       STA    $A2     
       LDA    $81     
       AND    #$01    
       CMP    $A2     
       BNE    LF2F9   
       CPX    #$03    
       BEQ    LF2E1   
       CPX    #$07    
       BEQ    LF2E1   
       LDA    #$15    
       LDY    #$33    
       BNE    LF2E5   
LF2E1: LDA    #$11    
       LDY    #$C4    
LF2E5: STA    $99,X   
       STY    $A1,X   
       LDA    #$08    
       STA    $E1     
       STA    AUDV1   
       LDA    #$1F    
       STA    $DF     
       STA    AUDF1   
       LDA    #$04    
       STA    AUDC1   
LF2F9: RTS            

LF2FA: LDY    $9E     
       LDA.wy $0093,Y 
       BEQ    LF33C   
       LSR            
       AND    #$03    
       STA    $BE     
       LDY    $BA     
       INY            
       TYA            
       AND    $BE     
       TAY            
       TAX            
       CMP    #$02    
       BCC    LF314   
       INY            
       INY            
LF314: INY            
       INY            
       LDA    $D6,X   
       CMP    #$4A    
       BCC    LF32D   
       LDA.wy $0099,Y 
       CLC            
       ADC    #$08    
       STA    $D6,X   
       LDA.wy $00A1,Y 
       ADC    #$04    
       STA    $DA,X   
       BNE    LF334   
LF32D: LDA    $D6,X   
       SEC            
       ADC    $BE     
       STA    $D6,X   
LF334: LDA    $D6,X   
       STA    $C6     
       LDA    $DA,X   
       STA    $86     
LF33C: LDA    $9A     
       CMP    #$07    
       BCS    LF34E   
       LDY    $9E     
       STY    $94     
       LDX    #$00    
       JSR    LF363   
       JMP    LF3FA   
LF34E: LDY    #$02    
       STY    $94     
       LDX    #$00    
       JSR    LF363   
       LDY    #$00    
       STY    $94     
       LDX    #$04    
       JSR    LF363   
       JMP    LF3FA   
LF363: LDA    SWCHA   
       LDY    $94     
       BEQ    LF36E   
       LSR            
       LSR            
       LSR            
       LSR            
LF36E: AND    #$0F    
       CMP    #$07    
       BNE    LF39C   
       LDA    #$C6    
       CMP    $A1,X   
       BEQ    LF3B6   
       INC    $A1,X   
       LDA    $A1,X   
       AND    #$0F    
       BNE    LF384   
       INC    $A1,X   
LF384: LDA    #$00    
       STA    $A9,X   
LF388: LDA    #$07    
       AND    $BA     
       BNE    LF3B6   
       LDA    $C1,X   
       EOR    #$01    
       STA    $C1,X   
       TAY            
       LDA    LF8BD,Y 
       STA    $B1,X   
       BNE    LF3B6   
LF39C: CMP    #$0B    
       BNE    LF3B6   
       LDA    #$31    
       CMP    $A1,X   
       BEQ    LF3B6   
       DEC    $A1,X   
       LDA    $A1,X   
       AND    #$0F    
       BNE    LF3B0   
       DEC    $A1,X   
LF3B0: LDA    #$08    
       STA    $A9,X   
       BNE    LF388   
LF3B6: LDA    $B9,X   
       BPL    LF3F3   
       LDA    $94     
       BEQ    LF3C3   
       LDA    INPT4   
       JMP    LF3C5   
LF3C3: LDA    INPT5   
LF3C5: BMI    LF3F9   
       LDA    #$41    
       CMP    $99,X   
       BNE    LF3F9   
       STA    $B9,X   
       LDA    #$08    
       STA    $E0     
       STA    AUDV0   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$01    
       STA    AUDF0   
       STA    $DE     
       LDA    #$A0    
       STA    $97     
       LDA    $A1,X   
       LDY    $A9,X   
       BNE    LF3EB   
       ADC    #$07    
LF3EB: STA    $92,X   
       LDA    #$A0    
       STA    $B1,X   
       BNE    LF3F9   
LF3F3: DEC    $B9,X   
       DEC    $B9,X   
       DEC    $B9,X   
LF3F9: RTS            

LF3FA: LDA    #$16    
       STA    $A2     
       LDA    $87     
       JSR    LF455   
       BCS    LF40A   
       LDX    #$02    
       JMP    LF4DE   
LF40A: LDA    #$09    
       STA    $A2     
       LDA    $87     
       JSR    LF455   
       BCS    LF433   
       LDX    #$03    
       JMP    LF4DE   
LF41A: JSR    LF7A8   
LF41D: LDY    #$00    
       LDA    $9A     
       CMP    #$07    
       BCC    LF42D   
       LDA    $BA     
       AND    #$01    
       BEQ    LF42D   
       LDY    #$04    
LF42D: LDA    #$FF    
       STA.wy $00B9,Y 
       RTS            

LF433: LDA    CXM1P   
       BPL    LF45A   
       LDA    $BA     
       AND    $BE     
       TAY            
       LDA.wy $00D6,Y 
       CMP    #$41    
       BCC    LF45A   
       LDX    #$00    
       LDA    $9A     
       CMP    #$07    
       BCC    LF45B   
       LDA    $BA     
       AND    #$01    
       BNE    LF45B   
       LDX    #$04    
       BNE    LF45B   
LF455: SEC            
       SBC    $A2     
       CMP    #$08    
LF45A: RTS            

LF45B: INC    $99,X   
       LDA    #$FF    
       STA    $D6     
       STA    $D7     
       STA    $D8     
       STA    $D9     
       STA    $C6     
       LDA    #$08    
       STA    $E0     
       STA    AUDV0   
       LDA    #$01    
       STA    AUDC0   
       LDA    #$0F    
       STA    $DE     
       STA    AUDF0   
       LDA    #$FB    
       STA    $97     
LF47D: LDA    #$D0    
       CMP    $99,X   
       BCC    LF48D   
       LDA    $BA     
       AND    #$01    
       BEQ    LF45A   
       INC    $99,X   
       BNE    LF45A   
LF48D: DEC    $A6     
       BMI    LF45A   
       JSR    LF795   
       LDA    #$84    
       STA    $A1,X   
       LDA    #$41    
       STA    $99,X   
       LDY    #$00    
       STY    $90     
       LDA    $9A     
       AND    #$01    
       BEQ    LF45A   
       LDA    #$0E    
       STA    $9C     
       STA    $A0     
       LDA    #$1C    
       STA    $9B     
       STA    $9F     
       LDA    #$49    
       STA    $A8     
       STA    $A7     
       LDA    #$A0    
       STA    $A4     
       STA    $A3     
       STY    $B3     
       STY    $B4     
       STY    $B7     
       STY    $B8     
       STY    $C3     
       STY    $C4     
       STY    $C7     
       STY    $C8     
       STY    $BB     
       STY    $BC     
       STY    $BF     
       STY    $C0     
       DEY            
       STY    $87     
       STY    $B9     
       STY    $BD     
       RTS            

LF4DE: LDA    $A1,X   
       STA    $A2     
       LDA    $85     
       JSR    LF455   
       BCS    LF500   
       LDA    $C1,X   
       BPL    LF4F3   
       JSR    LF41D   
       JMP    LF500   
LF4F3: LDA    #$C0    
       STA    $C1,X   
       LDA    #$20    
       STA    $B1,X   
       STA    $B9,X   
       JSR    LF41A   
LF500: INX            
       INX            
       INX            
       INX            
       CPX    #$08    
       BCC    LF4DE   
       JMP    LF433   
LF50B: LDA    $B6     
       BPL    LF516   
       JSR    LF7D1   
       LDA    #$03    
       BNE    LF518   
LF516: LDA    #$01    
LF518: STA    NUSIZ0  
       STA    NUSIZ1  
       JSR    LF803   
       LDX    #$2A    
       LDA    $A6     
       BPL    LF531   
       LDA    $9A     
       AND    #$01    
       BEQ    LF537   
       LDA    $81     
       AND    #$02    
       BPL    LF533   
LF531: LDA    $9E     
LF533: BNE    LF537   
       LDX    #$3A    
LF537: STX    COLUP0  
       STX    COLUP1  
       LDA    #$00    
       STA    REFP1   
       LDX    #$02    
       JSR    LF776   
       INX            
       JSR    LF776   
       STA    CXCLR   
       RTS            

LF54B: STA    WSYNC   
       STA    HMOVE   
LF54F: LDA    INTIM   
       BNE    LF54F   
       STA    WSYNC   
       STA    VBLANK  
       JSR    LF6C2   
       JSR    LF82E   
       LDA    #$03    
       STA    $B2     
LF562: LDX    $B2     
       JSR    LF56E   
       DEC    $B2     
       BPL    LF562   
       JMP    LF659   
LF56E: CPX    #$01    
       BEQ    LF5C7   
       TXA            
       TAY            
       BNE    LF584   
       LDA    $9A     
       CMP    #$07    
       BCC    LF584   
       LDA    $BA     
       AND    #$01    
       BEQ    LF584   
       LDY    #$04    
LF584: LDA.wy $00A9,Y 
       STA    REFP0   
       LDA.wy $00A1,Y 
       STA    $83     
       LDA.wy $0099,Y 
       STA    $D1     
       LDA.wy $00B1,Y 
       STA    $C9     
       TYA            
       EOR    #$04    
       TAY            
       LDA.wy $00A9,Y 
       STA    REFP1   
       LDA.wy $00A1,Y 
       STA    $84     
       LDA.wy $0099,Y 
       STA    $C2     
       LDA.wy $00B1,Y 
       STA    $CB     
       CPX    #$00    
       BEQ    LF5BF   
       LDA    $B9,X   
       STA    $CD     
       LDA    $BD,X   
       STA    $CF     
       JMP    LF5DD   
LF5BF: LDA    #$80    
       STA    $CD     
       STA    $CF     
       BNE    LF5DD   
LF5C7: LDA    #$26    
       STA    $C2     
       LDA    #$5E    
       STA    $84     
       STA    $83     
       LDA    #$00    
       STA    REFP1   
       LDA    #$F0    
       STA    $CB     
       STA    $CF     
       STA    $D1     
LF5DD: LDA    LF8B3,X 
       STA    $AE     
       LDX    #$00    
       JSR    LF776   
       INX            
       JSR    LF776   
       TSX            
       STX    $A2     
       LDX    #$1E    
       TXS            
       LDY    $B2     
       LDX    LF8B7,Y 
       LDA    LFC00,X 
LF5F9: STA    WSYNC   
       STA    COLUPF  
       LDA    LFC80,X 
       STA    PF0     
       LDA    LFD00,X 
       STA    PF1     
       LDA    LFD80,X 
       STA    PF2     
       CPX    $C6     
       PHP            
       LDY    #$08    
       TXA            
       SEC            
       SBC    $D1     
       CMP    #$08    
       BCS    LF61A   
       TAY            
LF61A: LDA    ($C9),Y 
       STA    GRP0    
       LDA    ($CD),Y 
       STA    COLUP0  
       STA    WSYNC   
       LDY    LFF80,X 
       STY    COLUBK  
       CPX    $87     
       PHP            
       TXA            
       LDX    #$1E    
       TXS            
       LDY    #$08    
       TAX            
       SEC            
       SBC    $C2     
       CMP    #$08    
       BCS    LF63B   
       TAY            
LF63B: LDA    ($CB),Y 
       STA    GRP1    
       LDA    ($CF),Y 
       STA    COLUP1  
       INX            
       LDA    LFC00,X 
       CPX    $AE     
       BNE    LF5F9   
       LDX    $A2     
       TXS            
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       RTS            

LF659: LDY    #$00    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STY    REFP0   
       STY    REFP1   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       STY    COLUP0  
       STY    COLUP1  
       STY    HMP0    
       LDX    #$08    
       STA    WSYNC   
LF677: DEX            
       BNE    LF677   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
LF686: STA    WSYNC   
       LDA    LFFCA,Y 
       STA    COLUBK  
       LDA    LF88B,Y 
       STA    GRP0    
       LDA    LF893,Y 
       STA    GRP1    
       LDA    LF89B,Y 
       STY    $94     
       STA    $A2     
       LDX    LF8A3,Y 
       LDA    LF8AB,Y 
       LDY    $A2     
       NOP            
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       LDY    $94     
       INY            
       CPY    #$09    
       BNE    LF686   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    #$17    
LF6BC: STA    WSYNC   
       DEX            
       BPL    LF6BC   
       RTS            

LF6C2: LDX    #$07    
       STA    WSYNC   
LF6C6: DEX            
       BNE    LF6C6   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       STY    CTRLPF  
LF6DA: STA    WSYNC   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STY    $94     
       STA    $A2     
       LDA    ($8E),Y 
       TAX            
       LDA    LFA00,Y 
       LDY    $A2     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       STA    GRP1    
       LDY    $94     
       INY            
       CPY    #$08    
       BNE    LF6DA   
       STA    WSYNC   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$80    
       LDX    #$02    
       LDA    $9A     
       AND    #$01    
       BEQ    LF725   
       LDA    $A6     
       BPL    LF71D   
       LDA    $81     
       AND    #$02    
       BPL    LF71F   
LF71D: LDA    $9E     
LF71F: BNE    LF725   
       LDX    #$0C    
       LDY    #$10    
LF725: STY    $94     
       STA    WSYNC   
LF729: DEX            
       BNE    LF729   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    $94     
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       LDA    LF980,Y 
       STA    COLUP0  
       STA    COLUP1  
       LDX    $A6     
       BMI    LF751   
       LDA    #$01    
       BIT    $9A     
       BEQ    LF753   
       TXA            
       LSR            
       TAX            
       BPL    LF753   
LF751: LDX    #$02    
LF753: STX    $A2     
LF755: STA    WSYNC   
       LDA    LFB80,Y 
       LDX    $A2     
       DEX            
       BMI    LF765   
       BEQ    LF763   
       STA    GRP1    
LF763: STA    GRP0    
LF765: INY            
       LDA    LF980,Y 
       STA    COLUP0  
       STA    COLUP1  
       CPY    #$09    
       BNE    LF755   
       LDA    #$01    
       STA    CTRLPF  
       RTS            

LF776: LDA    $83,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $83,X   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    WSYNC   
       STA    HMCLR   
       STA    HMP0,X  
LF78B: DEY            
       BNE    LF78B   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF795: LDA    $9A     
       AND    #$01    
       BEQ    LF7A3   
       LDA    $A6     
       AND    #$01    
       ASL            
       STA    $9E     
       RTS            

LF7A3: LDA    #$02    
       STA    $9E     
       RTS            

LF7A8: LDY    $9E     
       CLC            
       SED            
       LDA.wy $00D2,Y 
       ADC    #$01    
       STA.wy $00D2,Y 
       BCC    LF7BF   
       LDA.wy $00D3,Y 
       CLC            
       ADC    #$01    
       STA.wy $00D3,Y 
LF7BF: CLD            
       LDA    #$08    
       STA    AUDC1   
       STA    $98     
       LDA    #$0F    
       STA    AUDV1   
       STA    $E1     
       LDA    #$1F    
       STA    AUDF1   
       RTS            

LF7D1: LDX    $9E     
       LDA    $9A     
       AND    #$01    
       BEQ    LF7E2   
       LDA    $A6     
       BPL    LF7E2   
       LDA    $81     
       AND    #$02    
       TAX            
LF7E2: LDA    $D2,X   
       TAY            
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $8E     
       TYA            
       AND    #$F0    
       LSR            
       STA    $8C     
       LDA    $D3,X   
       TAY            
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $8A     
       TYA            
       AND    #$F0    
       LSR            
       STA    $88     
       RTS            

LF803: LDX    $9E     
       LDA    $80,X   
       BEQ    LF82D   
       LDY    $8C     
       CPY    #$08    
       BCC    LF82D   
       CPY    #$28    
       BCC    LF822   
       LDY    $D3,X   
       BEQ    LF81B   
       LDA    #$00    
       BEQ    LF828   
LF81B: CMP    #$03    
       BNE    LF82D   
LF81F: LSR            
       BPL    LF828   
LF822: CMP    #$07    
       BNE    LF82D   
       BEQ    LF81F   
LF828: STA    $80,X   
       SEC            
       ROL    $93,X   
LF82D: RTS            

LF82E: LDX    #$00    
       LDA    #$89    
       STA    COLUP0  
       LDA    #$7B    
       STA    $83     
       JSR    LF776   
       TSX            
       STX    $A2     
       LDX    #$1D    
       TXS            
       LDY    #$00    
       LDA    LFC00,Y 
LF846: STA    WSYNC   
       STA    COLUPF  
       LDA    LFC80,Y 
       STA    PF0     
       LDA    LFD00,Y 
       STA    PF1     
       LDA    LFD80,Y 
       STA    PF2     
       CPY    $87     
       PHP            
       LDX    #$00    
       LDA    $90     
       CMP    #$38    
       BCC    LF86A   
       LDA    $BA     
       AND    #$08    
       BEQ    LF86D   
LF86A: LDA    ($90),Y 
       TAX            
LF86D: STA    WSYNC   
       LDA    LFF80,Y 
       STA    COLUBK  
       STX    GRP0    
       LDX    #$1D    
       TXS            
       INY            
       LDA    LFC00,Y 
       CPY    #$08    
       BNE    LF846   
       LDA    #$00    
       LDX    $A2     
       TXS            
       STA    WSYNC   
       STA    GRP0    
       RTS            

LF88B: .byte $00,$00,$FD,$52,$5A,$52,$5D,$00
LF893: .byte $00,$00,$A9,$2A,$3A,$2A,$AA,$00
LF89B: .byte $0C,$04,$16,$AA,$AA,$AB,$91,$01
LF8A3: .byte $60,$40,$CC,$A9,$A9,$A5,$2D,$00
LF8AB: .byte $00,$00,$22,$55,$55,$55,$25,$00
LF8B3: .byte $4A,$3E,$25,$15
LF8B7: .byte $40,$26,$16,$09
LF8BB: .byte $00,$10
LF8BD: .byte $80,$90,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
       .byte $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
       .byte $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
       .byte $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
       .byte $FF,$00,$FF,$4A,$4A,$4A,$4A,$C8,$C8,$C8,$4A,$00,$FF,$00,$FF,$00
       .byte $FF,$20,$FF,$E1,$C7,$E0,$D7,$80,$E7,$21,$EF,$00,$FF,$00,$FF,$40
       .byte $DF,$00,$FF,$4A,$C8,$C8,$C8,$4A,$4A,$4A,$4A,$00,$FF,$00,$FF,$61
       .byte $DF,$00,$FF,$00,$DF,$20,$D7,$00,$FF,$00,$FF,$20,$FF,$20,$FF,$40
       .byte $7F,$50,$5D,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
       .byte $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
       .byte $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
       .byte $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
       .byte $FF,$10,$EF
LF980: .byte $87,$87,$87,$87,$37,$37,$87,$87,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $4C,$4C,$4A,$4A,$4A,$4A,$4A,$4A,$00,$FF,$00,$FF,$00,$FF,$00,$FF
LFA00: .byte $3C,$62,$66,$6A,$72,$62,$3C,$00,$38,$18,$18,$18,$18,$18,$3C,$00
       .byte $3C,$62,$02,$06,$18,$60,$7E,$00,$3C,$62,$02,$04,$02,$62,$3C,$00
       .byte $0C,$1C,$34,$64,$7E,$04,$04,$00,$7E,$60,$7C,$02,$02,$62,$3C,$00
       .byte $1E,$30,$60,$7C,$62,$62,$3C,$00,$7E,$06,$0C,$18,$30,$30,$30,$00
       .byte $3C,$62,$62,$3C,$62,$62,$3C,$00,$3C,$62,$62,$3E,$02,$04,$78,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$10,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$80,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $04,$1E,$A6,$7E,$19,$3E,$1C,$76,$00,$FF,$00,$FF,$00,$FF,$08,$FF
       .byte $04,$1E,$A6,$7E,$18,$7D,$7E,$38,$00,$FF,$00,$FF,$10,$FF,$00,$FF
       .byte $6E,$38,$7C,$98,$7E,$65,$78,$20,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$10,$FF,$02,$FD
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
LFB80: .byte $78,$EA,$EC,$7C,$3E,$78,$B8,$74,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $78,$EA,$EC,$7C,$D8,$7E,$78,$1C,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $78,$EA,$EC,$7D,$BE,$78,$70,$EC,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $89,$94,$08,$E1,$F2,$F8,$F8,$1B,$00,$FF,$00,$FF,$00,$FF,$00,$FF
LFC00: .byte $3A,$38,$38,$38,$3A,$38,$38,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A
       .byte $0A,$0A,$0A,$0A,$0A,$0A,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
       .byte $0C,$0C,$0C,$0A,$0A,$0C,$0C,$0C,$0C,$0A,$0C,$0C,$0C,$0C,$0C,$0C
       .byte $0C,$0C,$0C,$0C,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$0A,$0A,$0A
       .byte $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A
       .byte $0A,$0A,$0A,$0A,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$40,$FD
LFC80: .byte $FF,$7F,$AF,$DF,$BF,$FF,$FF,$DF,$FF,$7F,$BF,$3F,$6F,$AF,$2F,$6F
       .byte $AF,$EF,$EF,$EF,$EF,$EF,$EF,$2F,$2F,$3F,$3F,$3F,$3F,$2F,$2F,$EF
       .byte $EF,$EF,$EF,$EF,$EF,$EF,$EF,$FF,$FF,$FF,$EF,$EF,$EF,$EF,$EF,$EF
       .byte $EF,$EF,$EF,$EF,$DF,$BF,$7F,$FF,$FF,$EF,$FF,$FF,$EF,$EF,$EF,$EF
       .byte $EF,$EF,$EF,$EF,$EF,$FF,$FF,$FF,$FF,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
LFD00: .byte $F4,$EF,$5F,$EF,$DF,$FF,$B8,$90,$B0,$F0,$E0,$C0,$80,$80,$80,$80
       .byte $80,$9F,$FF,$FF,$E0,$E0,$C0,$C0,$80,$80,$80,$80,$80,$80,$8F,$FF
       .byte $FF,$FC,$F0,$E0,$C0,$C0,$80,$80,$80,$80,$80,$83,$87,$87,$87,$8F
       .byte $8F,$8F,$87,$80,$D8,$BC,$7C,$F8,$F0,$A8,$D8,$E8,$F0,$80,$80,$80
       .byte $80,$80,$C0,$E0,$E0,$F0,$F0,$F8,$F8,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$F7
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
LFD80: .byte $1F,$0B,$05,$06,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FF,$3F,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$7F
       .byte $0F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$03
       .byte $07,$0F,$0F,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $A6,$FB,$00,$FF,$80,$EF,$80,$DF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $8E,$FB,$26,$FF,$E0,$FB,$00,$FF,$00,$FF,$00,$FF,$A0,$FF,$00,$FF
       .byte $00,$FF,$00,$FE,$A2,$F9,$00,$FF,$00,$FF,$00,$FF,$20,$FB,$00,$FF
       .byte $20,$FF,$28,$D7,$20,$FF,$00,$FF,$60,$FF,$60,$FF,$A4,$99,$00,$DE
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FB,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$E0,$FD,$00,$FE
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$F7,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $48,$42,$08,$4F,$40,$26,$00,$EF,$00,$FB,$00,$FF,$00,$FF,$00,$FF
       .byte $08,$0A,$48,$8B,$00,$48,$00,$EF,$00,$FF,$00,$FF,$08,$12,$00,$DF
       .byte $00,$53,$48,$77,$48,$42,$60,$76,$08,$C2,$00,$FF,$50,$06,$00,$FF
       .byte $00,$F2,$08,$C4,$48,$FF,$00,$BF,$00,$8F,$00,$CF,$00,$4C,$04,$5F
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FE,$00,$FF,$00,$FF,$00,$FF,$00,$F7
       .byte $00,$BF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$C7
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$DF,$00,$FF,$00,$FF,$00,$0D,$08,$CF
LFF80: .byte $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
       .byte $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
       .byte $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
       .byte $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
       .byte $9F,$9F,$9F,$9F,$9F,$9F,$9D,$9B,$99,$3C
LFFCA: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3A,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$FF,$00,$FF,$00,$FD,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$F0,$00,$F0
