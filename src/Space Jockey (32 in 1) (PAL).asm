; Disassembly of roms/Space Jockey (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Space Jockey (32 in 1) (PAL).bin
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
LF4FB   =   $F4FB

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       DEX            
       JSR    LF5F9   
LF009: LDA    $A5     
       STA    COLUBK  
       INC    $DC     
       DEC    $DD     
       INC    $DE     
       INC    $DF     
       LDY    #$FF    
       STY    VSYNC   
       STY    VBLANK  
       LDA    #$28    
       STA    TIM8T   
LF020: LDY    INTIM   
       BNE    LF020   
       STY    WSYNC   
       STY    VSYNC   
       LDA    #$60    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF045   
       LDA    $E9     
       BMI    LF03F   
LF038: DEC    $E9     
       LDX    #$E9    
       JSR    LF5F9   
LF03F: LDA    #$00    
       STA    $AA     
       BEQ    LF0A3   
LF045: LDX    #$00    
       LSR            
       BCS    LF07A   
       LDA    $E9     
       BMI    LF057   
       LDX    #$E9    
       JSR    LF5F9   
       DEC    $E9     
       BMI    LF0A3   
LF057: LDA    $DA     
       BEQ    LF05F   
       DEC    $DA     
       BPL    LF07C   
LF05F: STX    $A9     
       STX    $A8     
       INC    $ED     
       LDA    $ED     
       AND    #$0F    
       STA    $ED     
       CLC            
       ADC    #$01    
       CMP    #$0A    
       BCC    LF076   
       SBC    #$0A    
       ORA    #$10    
LF076: STA    $AA     
       LDX    #$1E    
LF07A: STX    $DA     
LF07C: LDA    $E8     
       BMI    LF0A6   
       LDA    INPT4   
       BMI    LF094   
       LDA    $E9     
       BPL    LF038   
       LDA    #$FF    
       STA    $E8     
       LDA    #$00    
       STA    $E9     
       STA    $AA     
       BEQ    LF0A3   
LF094: LDY    #$00    
       LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BEQ    LF0A1   
       LDY    #$FF    
LF0A1: STY    $E4     
LF0A3: JMP    LF3AD   
LF0A6: LDA    $E5     
       BMI    LF102   
       LDA    SWCHA   
       STA    $BA     
       LDA    $ED     
       AND    #$04    
       BEQ    LF0DA   
       LDA    $BA     
       ASL            
       BMI    LF0C8   
       INC    $DE     
       DEC    $9B     
       DEC    $9B     
       LDA    #$10    
       CMP    $9B     
       BCC    LF0C8   
       STA    $9B     
LF0C8: LDA    $BA     
       BMI    LF0DA   
       INC    $DC     
       INC    $9B     
       INC    $9B     
       LDA    #$83    
       CMP    $9B     
       BCS    LF0DA   
       STA    $9B     
LF0DA: LDA    $BA     
       AND    #$20    
       BNE    LF0EE   
       INC    $DC     
       DEC    $9A     
       DEC    $9A     
       LDA    #$15    
       CMP    $9A     
       BCC    LF0EE   
       STA    $9A     
LF0EE: LDA    $BA     
       AND    #$10    
       BNE    LF102   
       DEC    $DD     
       INC    $9A     
       INC    $9A     
       LDA    #$99    
       CMP    $9A     
       BCS    LF102   
       STA    $9A     
LF102: LDA    $ED     
       AND    #$08    
       BEQ    LF110   
       LDA    CXPPMM  
       BPL    LF110   
       LDA    $9A     
       BNE    LF15B   
LF110: LDA    $E7     
       BMI    LF12D   
       STA    AUDV0   
       LDX    $9A     
       DEX            
       DEX            
       STX    $D5     
       LDA    $9B     
       CLC            
       ADC    #$10    
       STA    $D6     
       LDA    INPT4   
       ORA    $E5     
       BMI    LF195   
       DEC    $E7     
       DEC    $D5     
LF12D: INC    $DC     
       LDA    #$08    
       STA    AUDV0   
       STA    AUDC0   
       LDA    $D6     
       CLC            
       ADC    #$03    
       CMP    #$A2    
       BCC    LF142   
       LDA    #$01    
       STA    $D5     
LF142: STA    $D6     
       LDA    $E1     
       CLC            
       ADC    #$03    
       CMP    #$82    
       BCC    LF151   
       INC    $E7     
       LDA    #$00    
LF151: STA    $E1     
       STA    AUDF0   
       LDA    CXM1P   
       BPL    LF181   
       LDA    $D5     
LF15B: JSR    LF580   
       LDA    $AB,X   
       BMI    LF181   
       ORA    #$80    
       STA    $AB,X   
       LDA    #$15    
       STA    AUDF0   
       STA    $D5     
       LDA    #$02    
       STA    $C8,X   
       LDA    #$00    
       STA    $CB,X   
       STA    $E7     
       STA    $D6     
       STA    $E1     
       JSR    LF60E   
       LDA    #$0F    
       STA    AUDC0   
LF181: LDA    $E7     
       BPL    LF195   
       LDA    $D5     
       LSR            
       BCS    LF195   
       LDA    $ED     
       LSR            
       BCC    LF195   
       LDA    $9A     
       SBC    #$03    
       STA    $D5     
LF195: DEC    $DB     
       BPL    LF1AE   
       LDA    #$03    
       STA    $DB     
       LDX    #$02    
LF19F: LDA    $8E,X   
       AND    #$10    
       ADC    #$FE    
       ROR    $94,X   
       ROL    $91,X   
       ROR    $8E,X   
       DEX            
       BPL    LF19F   
LF1AE: LDA    $E5     
       BPL    LF219   
       DEC    $E2     
       BPL    LF216   
       LDX    #$02    
       STX    $E2     
       LDX    $E3     
       INX            
       CPX    #$10    
       BCC    LF1F2   
       CLC            
       LDY    #$00    
       STY    AUDC1   
       LDX    #$02    
LF1C8: STY    $C5,X   
       LDA    $AB,X   
       BCS    LF1CF   
       LSR            
LF1CF: DEX            
       BPL    LF1C8   
       BCS    LF216   
       DEC    $A7     
       BPL    LF1DA   
       STY    $E8     
LF1DA: STY    $E5     
       LDX    #$07    
LF1DE: LDA    LF705,X 
       STA    $7F,X   
       DEX            
       BNE    LF1DE   
       STX    AUDC1   
       LDA    #$10    
       STA    $9B     
       LDA    #$15    
       STA    $9A     
       BNE    LF216   
LF1F2: CPX    #$05    
       BCS    LF209   
       LDY    #$05    
       LDA    #$F6    
       STA    $BB     
       LDA    LF650,X 
       STA    $BA     
LF201: LDA    ($BA),Y 
       STA.wy $0080,Y 
       DEY            
       BPL    LF201   
LF209: STX    $E3     
       TXA            
       STA    AUDF1   
       EOR    #$FF    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
LF216: JMP    LF231   
LF219: LDY    #$D5    
       LDA    #$08    
       AND    $DF     
       BEQ    LF223   
       LDY    #$AB    
LF223: STY    $82     
       LDY    #$3E    
       LDA    #$10    
       AND    $DF     
       BEQ    LF22F   
       LDY    #$36    
LF22F: STY    $8C     
LF231: LDX    #$02    
LF233: LDA    $AB,X   
       LSR            
       BCS    LF23B   
       JMP    LF2C1   
LF23B: DEC    $BC,X   
       BPL    LF281   
       LDA    $C5,X   
       STA    $BC,X   
       LDA    $BF,X   
       CMP    #$04    
       BCS    LF26D   
       LDA    $ED     
       AND    #$02    
       BEQ    LF26D   
       LDA    $DC,X   
       CMP    #$D0    
       BCS    LF26D   
       BPL    LF262   
       DEC    $97,X   
       LDA    LF660,X 
       CMP    $97,X   
       BCC    LF26D   
       BCS    LF26B   
LF262: INC    $97,X   
       LDA    LF65D,X 
       CMP    $97,X   
       BCS    LF26D   
LF26B: STA    $97,X   
LF26D: DEC    $C2,X   
       BNE    LF281   
LF271: LDA    #$3C    
       STA    $9C,X   
       LDA    $AB,X   
       AND    #$7E    
       STA    $AB,X   
       LDA    #$20    
       STA    $BC,X   
       BNE    LF2BE   
LF281: LDA    $AB,X   
       BPL    LF2AC   
       DEC    $C8,X   
       BPL    LF2A9   
       LDA    #$02    
       STA    $C8,X   
       INC    $CB,X   
       LDY    $CB,X   
       CPY    #$10    
       BCS    LF271   
       CPY    #$05    
       BCS    LF2A2   
       LDA    LF64C,Y 
       STA    $9C,X   
       LDA    #$F3    
       STA    $CE,X   
LF2A2: TYA            
       STA    AUDF0   
       EOR    #$FF    
       STA    AUDV0   
LF2A9: JMP    LF2BE   
LF2AC: LDY    $BF,X   
       LDA    #$02    
       AND    $DF     
       BEQ    LF2B9   
       LDA    LF635,Y 
       BNE    LF2BC   
LF2B9: LDA    LF63D,Y 
LF2BC: STA    $9C,X   
LF2BE: JMP    LF30A   
LF2C1: LDA    $E5     
       BMI    LF30A   
       DEC    $BC,X   
       BPL    LF30A   
       LDA    $DC,X   
       AND    #$0F    
       STA    $BA     
       LDA    LF65D,X 
       SBC    $BA     
       STA    $97,X   
       LDA    $DC,X   
       AND    #$02    
       STA    $C5,X   
       LDA    $DC,X   
       LSR            
       LSR            
       LSR            
       LSR            
       CPX    #$00    
       BEQ    LF2E8   
       AND    #$03    
LF2E8: AND    #$07    
       STA    $BF,X   
       TAY            
       LDA    LF655,Y 
       STA    $AB,X   
       CPY    #$04    
       BCC    LF2FC   
       LDA    #$18    
       STA    $97     
       STX    $C5     
LF2FC: LDA    LF635,Y 
       STA    $9C,X   
       LDA    LF645,Y 
       STA    $CE,X   
       LDA    #$98    
       STA    $C2,X   
LF30A: DEX            
       BMI    LF310   
       JMP    LF233   
LF310: LDA    $E5     
       BMI    LF376   
       LDA    $E6     
       BPL    LF344   
       LDY    $D4     
       LDA    SWCHB   
       ASL            
       BPL    LF321   
       DEY            
LF321: TYA            
       SEC            
       SBC    #$03    
       CMP    #$05    
       BCS    LF32D   
       LDA    #$10    
       STA    $D3     
LF32D: STA    $D4     
       DEC    $E0     
       BNE    LF335   
       INC    $E6     
LF335: LDA    $E0     
       LSR            
       LSR            
       LSR            
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       STA    AUDF1   
       BNE    LF376   
LF344: LDA    #$40    
       STA    $E0     
       STA    AUDC1   
       LDY    SWCHB   
       BMI    LF355   
       LDA    #$A0    
       CMP    $DC     
       BCS    LF376   
LF355: LDA    $9A     
       JSR    LF580   
       LDA    $AB,X   
       BMI    LF376   
       AND    #$05    
       EOR    #$05    
       BNE    LF376   
       LDA    $C2,X   
       CMP    $9B     
       BCC    LF376   
       STA    $D4     
       LDA    $97,X   
       SBC    #$08    
       ORA    #$01    
       STA    $D3     
       DEC    $E6     
LF376: LDA    $ED     
       AND    #$08    
       BEQ    LF380   
       LDA    CXPPMM  
       BMI    LF385   
LF380: LDA    CXP1FB  
       ASL            
       BPL    LF395   
LF385: LDA    $E5     
       BMI    LF395   
       DEC    $E5     
       LDA    #$00    
       STA    $E6     
       STA    $E3     
       LDA    #$FF    
       STA    $D3     
LF395: LDX    #$FF    
LF397: INX            
       CPX    #$03    
       BEQ    LF3A4   
       LDA    $A8,X   
       CMP    $EA,X   
       BCC    LF3AD   
       BEQ    LF397   
LF3A4: LDX    #$02    
LF3A6: LDA    $A8,X   
       STA    $EA,X   
       DEX            
       BPL    LF3A6   
LF3AD: LDX    #$0A    
       LDY    #$00    
       LDA    $E4     
       BPL    LF3B7   
       LDY    #$42    
LF3B7: LDA.wy $00A8,Y 
       AND    #$F0    
       LSR            
       ADC    #$A1    
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
       ADC    #$A1    
       STA    $AE,X   
       LDA    #$F6    
       STA    $AF,X   
       INY            
       DEX            
       DEX            
       BPL    LF3B7   
       LDX    #$08    
       LDY    #$F1    
LF3E0: LDA    $B0,X   
       CMP    #$A1    
       BNE    LF3EC   
       STY    $B0,X   
       DEX            
       DEX            
       BPL    LF3E0   
LF3EC: LDA    #$FF    
       STA    CXCLR   
LF3F0: LDX    INTIM   
       BNE    LF3F0   
       STX    WSYNC   
       STX    VBLANK  
       LDX    #$00    
       LDA    $A3     
       STA    $BA     
       LDY    #$07    
       JSR    LF59F   
       LDX    #$01    
       LDA    $9B     
       JSR    LF589   
       LDX    #$03    
       LDA    $D6     
       JSR    LF589   
       INX            
       LDA    $D4     
       JSR    LF589   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$05    
       STA    NUSIZ1  
       LDA    #$7E    
       STA    COLUPF  
       LDX    #$00    
       STX    NUSIZ0  
       STX    WSYNC   
       STX    CTRLPF  
       LDA    #$03    
       STA    $D7     
       LDA    #$99    
       STA    $D9     
LF438: LDA    $D7     
       BEQ    LF49E   
       TAY            
       LDA    $D9     
       AND    #$FE    
       CMP    $D5     
       PHP            
       CMP    $9A     
       BCS    LF453   
       LDA    $87,X   
       STA    $BA     
       LDA    $80,X   
       BEQ    LF451   
       INX            
LF451: STA    $BB     
LF453: LDA.wy $00C1,Y 
       STA    WSYNC   
       SEC            
LF459: SBC    #$0F    
       BCS    LF459   
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
       LDA.wy $009B,Y 
       STA    $9F     
       LDA.wy $00CD,Y 
       STA    $A1     
       LDA    LF4FB,Y 
       STA    $D8     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D9     
       SEC            
       SBC    #$03    
       STA    $D9     
       LDA.wy $0096,Y 
       STA    $D1     
       LDY    #$00    
       DEC    $D7     
       BPL    LF4D2   
LF49E: JMP    LF4FF   
LF4A1: DEC    $D9     
       LDA    $D9     
       CMP    $D8     
       BEQ    LF438   
       LSR            
       BCC    LF4D2   
       LDA    $D3     
       CMP    $D9     
       PHP            
       PLA            
       STA    ENABL   
       LDA    $D1     
       CMP    $D9     
       BCC    LF4C5   
       LDA    ($A1),Y 
       STA    $BA     
       LDA    ($9F),Y 
       BEQ    LF4C7   
       INY            
       BNE    LF4C7   
LF4C5: LDA    #$00    
LF4C7: STA    WSYNC   
       STA    GRP0    
       LDA    $BA     
       STA    COLUP0  
       JMP    LF4A1   
LF4D2: LDA    $D5     
       CMP    $D9     
       PHP            
       PLA            
       STA    ENAM1   
       LDA    $D9     
       CMP    $9A     
       BCS    LF4EB   
       LDA    $87,X   
       STA    $BA     
       LDA    $80,X   
       BEQ    LF4F1   
       INX            
       BNE    LF4F1   
LF4EB: LDA    #$BC    
       STA    $BA     
       LDA    #$00    
LF4F1: STA    WSYNC   
       STA    GRP1    
       LDA    $BA     
       STA    COLUP1  
       JMP    LF4A1   
LF4FC: .byte $06,$33,$65
LF4FF: LDA    $A4     
       STA    COLUPF  
       LDX    #$00    
LF505: LDA    $8E,X   
       STA    WSYNC   
       STA    PF0     
       LDA    $91,X   
       STA    PF1     
       LDA    $94,X   
       STA    PF2     
       INX            
LF514: DEC    $D9     
       LDA    $D9     
       BEQ    LF53B   
       ROR            
       BCC    LF505   
       LDA    $D1     
       CMP    $D9     
       BCC    LF52E   
       LDA    ($A1),Y 
       STA    $BA     
       LDA    ($9F),Y 
       BEQ    LF530   
       INY            
       BNE    LF530   
LF52E: LDA    #$00    
LF530: STA    WSYNC   
       STA    GRP0    
       LDA    $BA     
       STA    COLUP0  
       JMP    LF514   
LF53B: STA    WSYNC   
       LDA    $A4     
       STA    COLUBK  
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    #$0A    
       LDA    $E8     
       BPL    LF560   
       LDY    $A7     
LF551: LDA    #$F9    
       DEY            
       BPL    LF558   
       LDA    #$F1    
LF558: STA    $AE,X   
       DEX            
       DEX            
       BPL    LF551   
       BMI    LF56B   
LF560: LDA    #$83    
       CLC            
LF563: STA    $AE,X   
       ADC    #$05    
       DEX            
       DEX            
       BPL    LF563   
LF56B: LDY    $A6     
       STY    $BA     
       LDX    #$00    
       LDY    #$04    
       JSR    LF59F   
       LDX    #$25    
LF578: STA    WSYNC   
       DEX            
       BNE    LF578   
       JMP    LF009   
LF580: LDX    #$FF    
LF582: INX            
       SEC            
       SBC    #$34    
       BPL    LF582   
       RTS            

LF589: STA    WSYNC   
       SEC            
LF58C: SBC    #$0F    
       BCS    LF58C   
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

LF59F: STX    GRP0    
       STX    GRP1    
       STX    WSYNC   
       LDA    #$3B    
       JSR    LF589   
       LDA    #$43    
       INX            
       JSR    LF589   
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    #$01    
       STX    VDELP0  
       STX    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $BA     
       STA    COLUP0  
       STA    COLUP1  
LF5C6: LDA    ($AE),Y 
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
       BPL    LF5C6   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LF5F9: LDA    #$00    
LF5FB: DEX            
       STA    VSYNC,X 
       CPX    #$4F    
       BCS    LF5FB   
       LDY    #$2A    
LF604: LDA    LF706,Y 
       STA.wy $0080,Y 
       DEY            
       BPL    LF604   
       RTS            

LF60E: LDY    $BF,X   
       LDA    LF6FE,Y 
       SED            
       CMP    #$90    
       LDY    $A9     
       LDX    #$02    
LF61A: ADC    $A8,X   
       STA    $A8,X   
       LDA    #$00    
       DEX            
       BPL    LF61A   
       CLD            
       TYA            
       EOR    $A9     
       AND    #$F0    
       BEQ    LF634   
       LDY    $A7     
       INY            
       CPY    #$07    
       BCS    LF634   
       STY    $A7     
LF634: RTS            

LF635: .byte $31,$3D,$44,$58,$66,$73,$80,$80
LF63D: .byte $31,$3D,$4E,$5F,$66,$73,$8B,$8B
LF645: .byte $B1,$BC,$C2,$CB,$D1,$DD,$E9
LF64C: .byte $E9,$96,$9F,$A8
LF650: .byte $3C,$63,$69,$6F,$F1
LF655: .byte $0B,$0F,$0F,$0F,$01,$01,$05,$07
LF65D: .byte $34,$67,$9A
LF660: .byte $1A,$4D,$7F,$18,$3C,$7E,$3C,$18,$00,$81,$24,$18,$24,$81,$00,$24
       .byte $81,$42,$81,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$3C,$72,$72,$72,$72,$72,$72,$3C,$18,$18,$18,$18,$18,$18,$18
       .byte $38,$7E,$46,$40,$3C,$0E,$0E,$4E,$3C,$3E,$4E,$0E,$1C,$1C,$0E,$4E
       .byte $3C,$0C,$0C,$7E,$4C,$4C,$4C,$4C,$4C,$7C,$4E,$0E,$0E,$7C,$40,$40
       .byte $7E,$3C,$4E,$4E,$4E,$7C,$40,$42,$3C,$18,$18,$0C,$0C,$06,$06,$46
       .byte $7E,$3C,$4E,$4E,$3C,$3C,$72,$72,$3C,$3C,$42,$02,$3E,$72,$72,$72
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$30,$78,$B4,$78,$30
LF6FE: .byte $25,$99,$50,$99,$20,$20,$99
LF705: .byte $99
LF706: .byte $3C,$7E,$99,$7E,$3C,$18,$00,$BC,$B8,$B4,$B8,$BC,$3E,$BC,$8F,$DF
       .byte $FF,$81,$C3,$E7,$81,$C3,$E7,$30,$50,$85,$15,$10,$3C,$3C,$3C,$3C
       .byte $F7,$3C,$F7,$8A,$F2,$00,$8F,$02,$00,$00,$01,$3C,$7E,$FF,$FF,$FF
       .byte $FF,$BD,$5A,$5A,$3C,$3C,$00,$01,$03,$7F,$FF,$30,$18,$00,$1F,$10
       .byte $70,$F9,$FF,$F8,$70,$28,$FC,$00,$F0,$10,$70,$F8,$FF,$F9,$70,$28
       .byte $FC,$00,$99,$BD,$FF,$3F,$18,$18,$00,$19,$3D,$FF,$BF,$98,$18,$00
       .byte $19,$3D,$7F,$FF,$FF,$BD,$A5,$E7,$E7,$FF,$FF,$FF,$00,$3C,$7E,$FF
       .byte $FF,$FF,$7E,$3C,$18,$58,$38,$18,$18,$00,$06,$06,$FA,$1A,$1E,$1E
       .byte $2A,$FE,$7F,$54,$00,$03,$03,$FA,$1A,$1E,$1E,$54,$7F,$FE,$2A,$00
       .byte $81,$66,$7E,$3C,$3C,$7E,$66,$81,$00,$81,$24,$42,$18,$18,$42,$24
       .byte $81,$00,$24,$81,$42,$81,$81,$42,$81,$24,$00,$82,$84,$86,$88,$86
       .byte $84,$82,$E4,$E4,$1A,$1A,$CA,$CA,$08,$08,$B6,$B6,$0C,$06,$44,$48
       .byte $4C,$48,$44,$06,$06,$58,$56,$54,$58,$5F,$5F,$06,$06,$06,$06,$34
       .byte $34,$34,$34,$34,$F2,$F2,$F2,$C4,$C4,$C8,$C8,$CC,$CC,$C8,$F8,$F8
       .byte $F8,$F6,$F6,$88,$88,$88,$88,$0C,$0C,$06,$06,$06,$06,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$00,$00,$F0,$00,$F0
