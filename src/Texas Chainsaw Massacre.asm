; Disassembly of roms/Texas Chainsaw Massacre.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Texas Chainsaw Massacre.bin
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
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $5000

START:
       LDY    #$00    
L5002: CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L5009: STA    VSYNC,X 
       INX            
       BNE    L5009   
       LDX    #$52    
       JSR    L5CC8   
       STY    $CF     
       LDA    #$A1    
       STA    $8C     
       STA    $8E     
       LDA    #$AA    
       STA    $8D     
       JSR    L5EAE   
L5022: LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       INC    $F0     
       LDA    $96     
       CMP    #$02    
       BEQ    L5038   
       JSR    L50E3   
L5038: LDA    INTIM   
       BNE    L5038   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       LDA    $96     
       BPL    L5071   
       LDA    $D5     
       BNE    L506E   
       LDA    $BF     
       BNE    L5056   
       LDA    #$04    
       STA    $BF     
L5056: JSR    L54E3   
       JSR    L5CD1   
       JSR    L558F   
       JSR    L5671   
       JSR    L5724   
       JSR    L5FB3   
       JSR    L5F92   
       JSR    L5BD8   
L506E: JSR    L5980   
L5071: LDA    INTIM   
       BNE    L5071   
       STA    WSYNC   
       STA    VBLANK  
       JSR    L5115   
       LDA    #$FF    
       LDX    #$1F    
       STA    WSYNC   
       STA    VBLANK  
       STX    TIM64T  
       JSR    L50A2   
       JSR    L556B   
       JSR    L59D1   
       LDA    $96     
       BPL    L509B   
       JSR    L58F3   
       JSR    L5829   
L509B: LDA    INTIM   
       BNE    L509B   
       BEQ    L5022   
L50A2: LDA    $96     
       BEQ    L50AA   
       CMP    #$02    
       BNE    L50BC   
L50AA: LDA    INPT4   
       BPL    L50B8   
       LDA    INPT5   
       BPL    L50B8   
       LDA    $CE     
       BNE    L50C2   
       BEQ    L50BC   
L50B8: LDA    #$01    
       STA    $CE     
L50BC: LDA    SWCHB   
       LSR            
       BCS    L50CA   
L50C2: LDX    #$4E    
       JSR    L5CC8   
       STX    $96     
       RTS            

L50CA: LSR            
       BCS    L50E2   
       LDA    $F0     
       AND    #$0F    
       BNE    L50E2   
       LDX    #$4E    
       JSR    L5CC8   
       LDA    $CF     
       EOR    #$01    
       STA    $CF     
       STA    $8E     
       INC    $8E     
L50E2: RTS            

L50E3: LDX    #$02    
L50E5: TXA            
       ASL            
       TAY            
       LDA    $8C,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0086,Y 
       LDA    $8C,X   
       AND    #$F0    
       LSR            
       STA.wy $0080,Y 
       DEX            
       BPL    L50E5   
       LDY    #$50    
       INX            
L5100: LDA    $80,X   
       BNE    L5114   
       STY    $80,X   
       CPX    #$04    
       BEQ    L5114   
       LDA    $86,X   
       BNE    L5114   
       STY    $86,X   
       INX            
       INX            
       BPL    L5100   
L5114: RTS            

L5115: STA    COLUBK  
       LDA    $96     
       CMP    #$02    
       BNE    L5120   
       JMP    L53FD   
L5120: LDX    #$07    
       STX    $DF     
       STA    WSYNC   
L5126: DEX            
       BNE    L5126   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    HMCLR   
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STX    GRP1    
       INX            
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    $C4     
       STA    COLUP0  
       STA    COLUP1  
L5151: LDY    $DF     
       LDA    L5BE5,Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    L5BED,Y 
       STA    GRP1    
       NOP            
       NOP            
       LDA    $DD     
       STA    GRP0    
       LDA    $DC     
       STA    $E0     
       LDA    $DB     
       TAX            
       LDA    $DA     
       TAY            
       NOP            
       STA    HMP1    
       LDA    $E0     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $DF     
       BPL    L5151   
       LDY    #$00    
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    VDELP0  
       STY    VDELP1  
       STY    NUSIZ1  
       STY    NUSIZ0  
       STA    HMCLR   
       LDA    $C5     
       STA    COLUPF  
       LDA    $C4     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       DEY            
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STA    WSYNC   
       STA    HMOVE   
       LDX    $BD     
       LDA    L5FF1,X 
       STA    COLUP0  
       LDA    #$0A    
       LDY    $8F     
       BEQ    L51B7   
       TYA            
L51B7: ASL            
       ASL            
       ASL            
       STA    $DF     
       LDA    #$5F    
       STA    $E0     
       STA    RESP0   
       LDY    #$07    
L51C4: STA    WSYNC   
       STA    HMOVE   
       LDA    ($DF),Y 
       STA    GRP0    
       DEY            
       BPL    L51C4   
       INY            
       LDX    #$06    
L51D2: STA    WSYNC   
       STA    HMOVE   
       STY    GRP0    
       DEX            
       BNE    L51D2   
       LDY    #$04    
L51DD: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF0     
       LDA    L5EF9,Y 
       STA    PF1     
       STA    PF2     
       DEY            
       BPL    L51DD   
       LDA    #$10    
       STA    PF1     
       STA    PF2     
       LDA    $C6     
       STA    COLUPF  
       LDY    #$10    
L51FB: STA    WSYNC   
       STA    HMOVE   
       DEY            
       BNE    L51FB   
       LDA    $C7     
       STA    COLUBK  
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $97     
       STA    HMP0    
       STA    HMP1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
       STA    HMOVE   
L521B: DEY            
       BNE    L521B   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$03    
       JSR    L5CD0   
       JSR    L5CD0   
       STA    HMCLR   
L5230: STA    WSYNC   
       STA    HMOVE   
       LDA    ($C8),Y 
       STA    GRP0    
       DEY            
       BPL    L5230   
       LDA    #$01    
       STA    VDELP1  
       LDY    #$07    
       LDX    #$00    
L5243: LDA    ($CA),Y 
       STA    GRP1    
       LDA    ($CC),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    L5F6E,Y 
       STA    COLUP0  
       LDA    L5F56,Y 
       STA    COLUP1  
       STX    PF1     
       STX    PF2     
       DEY            
       BPL    L5243   
       STA    CXCLR   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    VDELP1  
       LDA    #$5D    
       STA    $E3     
       LDA    #$5C    
       STA    $EB     
       LDA    #$5E    
       STA    $E5     
       LDA    #$5B    
       STA    $ED     
       LDA    #$5E    
       STA    $E7     
       LDA    #$5E    
       STA    $E9     
       LDA    $A8     
       STA    HMP0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A9     
       STA    REFP0   
L5294: DEX            
       BNE    L5294   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$03    
       STX    $EE     
       LDA    $AB,X   
       STA    $E6     
       LDA    $B3,X   
       STA    $E4     
L52A9: LDA    $AF,X   
       STA    $E2     
       LDA    $B7,X   
       STA    $E8     
       LDY    #$1B    
       LDA    ($E2),Y 
       TAX            
       LDA    ($E4),Y 
       STA    $DF     
       LDA    ($E6),Y 
       STA    HMP0    
       LDA    ($E8),Y 
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0  
       STX    GRP0    
       LDA    $DF     
       STA    COLUP0  
       LDX    $EE     
       LDA    $98,X   
       STA    HMP1    
       AND    #$0F    
       STA    $E0     
       LDA    $9C,X   
       STA    $EA     
       LDA    $A0,X   
       STA    $EC     
       LDA    ($E2),Y 
       TAX            
       LDA    ($E4),Y 
       STA    $DF     
       LDA    ($E6),Y 
       STA    HMP0    
       LDA    ($E8),Y 
       DEY            
       NOP            
       STA    HMOVE   
       STA    NUSIZ0  
       STX    GRP0    
       LDA    $DF     
       STA    COLUP0  
       LDX    $EE     
       LDA    $A4,X   
       STA    REFP1   
       LDA    ($E2),Y 
       TAX            
       LDA    ($E4),Y 
       STA    $DF     
       LDA    ($E6),Y 
       STA    HMP0    
       LDA    ($E8),Y 
       STA    $E1     
       DEY            
       LDA    $E0     
       CMP    #$05    
       BPL    L5317   
       JMP    L5345   
L5317: SEC            
       SBC    #$05    
       STA    $E0     
       LDA    $E1     
       STA    HMOVE   
       STA    NUSIZ0  
       STX    GRP0    
       LDA    $DF     
       STA    COLUP0  
       LDA    ($E2),Y 
       STA    $E1     
       STA    $E1     
       LDA    ($E6),Y 
       STA    HMP0    
       LDA    ($E8),Y 
       LDX    $E0     
       NOP            
       NOP            
       BEQ    L533E   
       NOP            
L533B: DEX            
       BNE    L533B   
L533E: STA    RESP1   
       LDX    $E1     
       JMP    L5368   
L5345: LDA    $E1     
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0  
       STX    GRP0    
       LDA    $DF     
       STA    COLUP0  
       LDX    $E0     
       LDX    $E0     
       BEQ    L535D   
       NOP            
L535A: DEX            
       BNE    L535A   
L535D: STA    RESP1   
       LDA    ($E2),Y 
       TAX            
       LDA    ($E6),Y 
       STA    HMP0    
       LDA    ($E8),Y 
L5368: STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0  
       STX    GRP0    
       LDA    ($E4),Y 
       STA    COLUP0  
       DEY            
       LDA    ($E2),Y 
       TAX            
       LDA    ($E4),Y 
       STA    $DF     
       STA    HMCLR   
       LDA    ($E6),Y 
       STA    HMP0    
       LDA    ($EA),Y 
       STA    $E0     
       LDA    ($E8),Y 
L5388: STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0  
       STX    GRP0    
       LDA    $E0     
       STA    GRP1    
       LDA    $DF     
       STA    COLUP0  
       LDA    ($EC),Y 
       STA    COLUP1  
       DEY            
       LDA    ($E2),Y 
       TAX            
       LDA    ($E4),Y 
       STA    $DF     
       LDA    ($E6),Y 
       STA    HMP0    
       LDA    ($EA),Y 
       STA    $E0     
       LDA    ($E8),Y 
       CPY    #$02    
       BPL    L5388   
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0  
       STX    GRP0    
       LDA    #$00    
       STA    GRP1    
       LDA    $DF     
       STA    COLUP0  
       DEY            
       LDA    ($E4),Y 
       STA    $DF     
       LDA    ($E6),Y 
       STA    HMP0    
       DEC    $EE     
       BMI    L53EE   
       LDX    $EE     
       LDA    $AB,X   
       STA    $E6     
       LDA    $B3,X   
       STA    $E4     
       LDA    ($E2),Y 
       TAX            
       LDA    ($E8),Y 
       NOP            
       STA    HMOVE   
       STA    NUSIZ0  
       STX    GRP0    
       LDA    $DF     
       STA    COLUP0  
       LDX    $EE     
       JMP    L52A9   
L53EE: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    REFP0   
       STA    REFP1   
       JMP    L5472   
L53FD: STA    WSYNC   
       LDY    #$1A    
       LDX    #$01    
       STX    AUDC0   
       DEX            
       STX    COLUBK  
       STX    COLUPF  
       LDA    $F0     
       AND    #$7F    
       CMP    #$20    
       BCS    L541D   
       LSR            
       TAX            
       AND    #$0F    
       EOR    #$0F    
       ORA    #$30    
       STA    COLUPF  
       DEX            
L541D: STX    AUDF0   
       STX    AUDV0   
L5421: STA    WSYNC   
       DEY            
       BNE    L5421   
       LDX    #$0E    
L5428: LDA    #$04    
       STA    $DF     
L542C: LDY    #$04    
L542E: STA    WSYNC   
       LDA    L5B7E,X 
       STA    PF0     
       LDA    L5B8D,X 
       STA    PF1     
       LDA    L5B9C,X 
       STA    PF2     
       LDA    L5BAB,X 
       STA    PF0     
       NOP            
       LDA    L5BBA,X 
       STA    PF1     
       LDA    L5BC9,X 
       DEY            
       NOP            
       STA    PF2     
       BPL    L542E   
       DEX            
       DEC    $DF     
       BPL    L542C   
       STA    WSYNC   
       INY            
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDY    #$0E    
L5463: STA    WSYNC   
       DEY            
       BNE    L5463   
       TXA            
       BPL    L5428   
       LDX    #$27    
L546D: STA    WSYNC   
       DEX            
       BNE    L546D   
L5472: LDX    #$07    
       STX    $DF     
       LDA    #$00    
       STA    COLUBK  
       STA    WSYNC   
L547C: DEX            
       BNE    L547C   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    HMCLR   
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STX    GRP1    
       INX            
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    $BD     
       LDA    L5FF1,Y 
       STA    COLUP0  
       STA    COLUP1  
L54AA: LDY    $DF     
       LDA    ($80),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($86),Y 
       STA    GRP1    
       LDA    ($82),Y 
       STA    GRP0    
       LDA    ($88),Y 
       STA    $E0     
       LDA    ($84),Y 
       TAX            
       LDA    ($8A),Y 
       TAY            
       LDA    $E0     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $DF     
       BPL    L54AA   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       RTS            

L54E3: LDA    $D1     
       STA    $DF     
       LDA    $D0     
       STA    $E0     
       LDA    #$00    
       LDX    #$08    
L54EF: LSR    $DF     
       BCC    L54F6   
       CLC            
       ADC    $E0     
L54F6: ROR            
       ROR    $D0     
       DEX            
       BNE    L54EF   
       CLC            
       LDA    $D0     
       ADC    $D2     
       STA    $D0     
       INC    $DE     
       LDX    $DE     
       BNE    L5516   
       TAX            
       ASL            
       SEC            
       ROL            
       STA    $D1     
       TXA            
       SEC            
       ROL            
       STA    $D2     
       BNE    L54E3   
L5516: RTS            

L5517: STY    $E0     
       STA    $DF     
       CLC            
       ADC    $E0     
       LDY    $E0     
       BPL    L552E   
       LDY    $DF     
       BPL    L553D   
       TAY            
       BMI    L553D   
       CLC            
       ADC    #$F1    
       BNE    L553D   
L552E: LDY    $DF     
       BMI    L553D   
       TAY            
       AND    #$F0    
       CMP    #$70    
       TYA            
       BCC    L553D   
       CLC            
       ADC    #$0F    
L553D: TAY            
       JSR    L5555   
       CMP    L5F82,X 
       BCC    L554D   
       CMP    L5F86,X 
       BCS    L5551   
       TYA            
       RTS            

L554D: LDA    L5F8A,X 
       RTS            

L5551: LDA    L5F8E,X 
       RTS            

L5555: STA    $DF     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E0     
       LDA    $DF     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E0     
       RTS            

L556B: LDX    #$03    
       LDA    #$FF    
L556F: STA    $DA,X   
       DEX            
       BPL    L556F   
       LDX    #$04    
       LDY    $BD     
       LDA.wy $00BB,Y 
L557B: DEX            
       SEC            
       SBC    #$08    
       BPL    L557B   
       EOR    #$FF    
       TAY            
       LDA    L5FF5,Y 
L5587: STA    $DA,X   
       LDA    #$00    
       DEX            
       BPL    L5587   
       RTS            

L558F: LDA    $EF     
       ASL            
       BCS    L5598   
       LDY    #$08    
       STY    $A9     
L5598: ASL            
       BCS    L559F   
       LDY    #$00    
       STY    $A9     
L559F: LDY    $AA     
       ASL            
       BCS    L55AA   
       CPY    #$53    
       BEQ    L55AA   
       INC    $AA     
L55AA: ASL            
       BCS    L55B2   
       TYA            
       BEQ    L55B2   
       DEC    $AA     
L55B2: LDA    $AA     
       CMP    #$38    
       BCC    L55C0   
       LDY    #$00    
       STY    $B1     
       STY    $B2     
       BEQ    L55D5   
L55C0: CMP    #$1C    
       BCC    L55CD   
       LDY    #$00    
       STY    $B2     
       STY    $AF     
       INY            
       BNE    L55D5   
L55CD: LDA    #$00    
       STA    $AF     
       STA    $B0     
       LDY    #$02    
L55D5: STY    $EE     
       LDX    $BD     
       LDA    $C1     
       BEQ    L55E1   
       DEC    $C1     
       BPL    L5601   
L55E1: LDA    INPT4,X 
       BMI    L5615   
       LDA    $BB,X   
       BEQ    L5615   
       LDA    $BF     
       CMP    #$03    
       BCC    L5601   
       LDA    #$02    
       STA    $BF     
       LDA    #$27    
       STA    $D4     
       LDA    #$68    
       STA    $C1     
       DEC    $BB,X   
       BEQ    L5601   
       DEC    $BB,X   
L5601: INC    $D3     
       LDA    $D3     
       CMP    #$0C    
       BNE    L560D   
       LDA    #$00    
       STA    $D3     
L560D: LSR            
       LSR            
       TAY            
       LDA    L5BF5,Y 
       BNE    L562B   
L5615: LDA    $EF     
       AND    #$F0    
       CMP    #$F0    
       BNE    L5621   
       LDY    #$00    
       BEQ    L5628   
L5621: LDA    $F0     
       AND    #$07    
       LSR            
       LSR            
       TAY            
L5628: LDA    L5EFE,Y 
L562B: STA    $E0     
       LDA    $AA     
L562F: CMP    #$1C    
       BCC    L5638   
       SEC            
       SBC    #$1C    
       BPL    L562F   
L5638: STA    $E1     
       LDX    $EE     
       CLC            
       ADC    $E0     
       STA    $B0,X   
       SEC            
       SBC    #$1C    
       STA    $AF,X   
       LDA    #$91    
       CLC            
       ADC    $E1     
       STA    $B4,X   
       SEC            
       SBC    #$1C    
       STA    $B3,X   
       LDA    #$4B    
       CLC            
       ADC    $E1     
       STA    $B8,X   
       SEC            
       SBC    #$1C    
       STA    $B7,X   
       LDA    #$1C    
       LDY    $A9     
       BEQ    L5666   
       LDA    #$5A    
L5666: CLC            
       ADC    $E1     
       STA    $AC,X   
       SEC            
       SBC    #$1C    
       STA    $AB,X   
       RTS            

L5671: LDA    $F0     
       AND    #$3F    
       BNE    L568D   
       TAY            
       LDA    $EF     
       ASL            
       BCS    L567F   
       LDY    #$10    
L567F: ASL            
       BCS    L5684   
       LDY    #$F0    
L5684: LDA    $97     
       LDX    #$01    
       JSR    L5517   
       STA    $97     
L568D: RTS            

L568E: LDA    $F0     
       AND    #$03    
       BEQ    L5695   
       RTS            

L5695: TAY            
       LDA    $F0     
       AND    #$08    
       BEQ    L569E   
       LDY    #$16    
L569E: LDX    $EE     
       STY    $9C,X   
       LDY    #$20    
       LDA    $A4,X   
       BEQ    L56AC   
       LDY    #$E0    
       BNE    L56BA   
L56AC: LDA    $EF     
       ASL            
       BCS    L56B3   
       LDY    #$30    
L56B3: ASL            
       BCS    L56C6   
       LDY    #$F0    
       BNE    L56C6   
L56BA: LDA    $EF     
       ASL            
       BCS    L56C1   
       LDY    #$10    
L56C1: ASL            
       BCS    L56C6   
       LDY    #$D0    
L56C6: LDX    $EE     
       LDA    $98,X   
       LDX    #$03    
       JSR    L5517   
       LDX    $EE     
       STA    $98,X   
       CMP    #$40    
       BEQ    L56DB   
       CMP    #$88    
       BNE    L56E0   
L56DB: LDA    #$B0    
       STA    $9C,X   
       RTS            

L56E0: LDA    $98,X   
       JSR    L5555   
       LDY    $A4,X   
       BNE    L56F1   
       CMP    #$50    
       BCC    L56F9   
       LDY    #$08    
       BNE    L56F7   
L56F1: CMP    #$50    
       BCS    L56F9   
       LDY    #$00    
L56F7: STY    $A4,X   
L56F9: LDY    $A4,X   
       BEQ    L56FF   
       LDY    #$01    
L56FF: CMP    L571C,Y 
       BNE    L571B   
       LDA    $D0     
       CMP    #$40    
       BCC    L571B   
       LDA    $EF     
       AND    L571E,Y 
       BNE    L571B   
       LDA    L5720,Y 
       STA    $98,X   
       LDA    L5722,Y 
       STA    $A4,X   
L571B: RTS            

L571C: .byte $40,$64
L571E: .byte $40,$80
L5720: .byte $66,$24
L5722: .byte $08,$00
L5724: LDA    #$03    
       STA    $EE     
L5728: LDX    $EE     
       LDA    $9C,X   
       CMP    #$B0    
       BCC    L5736   
       JSR    L5751   
       JMP    L574C   
L5736: CMP    #$84    
       BCC    L573F   
       JSR    L580A   
       BNE    L574C   
L573F: CMP    #$2C    
       BCC    L5749   
       JSR    L57C2   
       JMP    L574C   
L5749: JSR    L568E   
L574C: DEC    $EE     
       BPL    L5728   
       RTS            

L5751: LDY    #$00    
       LDA    $EF     
       ASL            
       BCC    L575C   
       INY            
       ASL            
       BCS    L57C1   
L575C: LDA    $F0     
       AND    #$0F    
       BNE    L57C1   
       LDA    $D0     
       LDX    $EE     
       ASL            
       LDA    $D0     
L5769: ROL            
       ROL            
       DEX            
       BPL    L5769   
       STA    $DF     
       LDX    #$03    
L5772: LDA    $9C,X   
       BEQ    L579E   
       CMP    #$16    
       BEQ    L579E   
       DEX            
       BPL    L5772   
       LDA    $DF     
       CMP    #$F0    
       BCC    L579E   
       LDX    #$52    
       LDA    $D0     
       LSR            
       BCC    L578C   
       LDX    #$3E    
L578C: STX    $DF     
       LDA    #$03    
       CMP    $BF     
       BPL    L579A   
       STA    $BF     
       LDA    #$64    
       STA    $D4     
L579A: LDA    #$00    
       BEQ    L57AF   
L579E: LDA    $DF     
       CMP    #$40    
       BCS    L57C1   
       AND    #$03    
       TAX            
       LDA    L5BF8,X 
       STA    $DF     
       LDA    L5BFC,X 
L57AF: LDX    $EE     
       STA    $9C,X   
       LDA    $DF     
       STA    $A0,X   
       LDA    L5C00,Y 
       STA    $98,X   
       LDA    L5B00,Y 
       STA    $A4,X   
L57C1: RTS            

L57C2: LDA    $EF     
       LDY    #$00    
       ASL            
       BCS    L57CB   
       LDY    #$10    
L57CB: ASL            
       BCS    L57D0   
       LDY    #$F0    
L57D0: LDX    $EE     
       LDA    $9C,X   
       CMP    #$42    
       BNE    L57E3   
       TYA            
       BEQ    L57E3   
       BMI    L57E1   
       LDY    #$20    
       BNE    L57E3   
L57E1: LDY    #$E0    
L57E3: TYA            
       BEQ    L57F2   
       BMI    L57EE   
       CLC            
       ADC    $90     
       TAY            
       BNE    L57F2   
L57EE: SEC            
       SBC    $90     
       TAY            
L57F2: LDA    $98,X   
       LDX    #$03    
       JSR    L5517   
       LDX    $EE     
       STA    $98,X   
       CMP    #$40    
       BEQ    L5805   
       CMP    #$88    
       BNE    L5809   
L5805: LDA    #$B0    
       STA    $9C,X   
L5809: RTS            

L580A: LDX    $EE     
       LDA    #$B0    
       DEC    $BE     
       BEQ    L5826   
       LDA    $BE     
       CMP    #$D0    
       BNE    L5820   
       LDY    #$06    
       STY    $D4     
       LDY    #$01    
       STY    $BF     
L5820: LDA    #$16    
       STA    $A0,X   
       LDA    #$9A    
L5826: STA    $9C,X   
       RTS            

L5829: LDY    #$00    
       LDA    $BF     
       BNE    L5834   
       STY    AUDV0   
       STY    AUDV1   
       RTS            

L5834: CMP    #$01    
       BEQ    L5844   
       CMP    #$02    
       BEQ    L5875   
       CMP    #$03    
       BEQ    L58A9   
       CMP    #$04    
       BEQ    L5891   
L5844: LDA    $D4     
       BPL    L584F   
       STY    $BF     
       STY    AUDV0   
       STY    AUDV1   
       RTS            

L584F: LDA    $F0     
       AND    #$07    
       BNE    L5859   
       DEC    $D4     
       BMI    L5874   
L5859: LDX    $D4     
       LDA    L58C4,X 
       TAX            
       STX    AUDF1   
       LDA    $F0     
       LSR            
       BCS    L5867   
       DEX            
L5867: STX    AUDF0   
       INY            
       STY    AUDC0   
       STY    AUDC1   
       LDA    #$0F    
       STA    AUDV0   
       STA    AUDV1   
L5874: RTS            

L5875: LDX    $D4     
       BPL    L587C   
       STY    $BF     
       RTS            

L587C: LDA    $F0     
       AND    L58CB,X 
       BNE    L5897   
       DEC    $D4     
       LDA    #$1F    
       STA    AUDF0   
       INY            
       STY    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       RTS            

L5891: LDA    $F0     
       AND    #$07    
       BEQ    L589A   
L5897: STY    AUDV0   
       RTS            

L589A: INY            
       STY    AUDC0   
       LDA    #$03    
       STA    AUDV0   
       LDA    #$1F    
       STA    AUDF0   
       DEY            
       STY    $BF     
       RTS            

L58A9: LDA    $D4     
       BPL    L58B4   
       STY    $BF     
       STY    AUDV0   
       STY    AUDV1   
       RTS            

L58B4: DEC    $D4     
       BMI    L58C3   
       INY            
       STY    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
L58C3: RTS            

L58C4: .byte $0B,$09,$0A,$08,$09,$07,$08
L58CB: .byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$03,$03,$03,$07,$07,$07
L58F3: LDA    $BE     
       BNE    L5938   
       LDA    $C0     
       BEQ    L5906   
       DEC    $C0     
       BNE    L5938   
       LDX    $C2     
       LDA    #$B0    
       STA    $9C,X   
       RTS            

L5906: LDA    CXPPMM  
       BPL    L5938   
       LDX    #$03    
L590C: LDA    $AA     
       CMP    L5939,X 
       BCC    L5935   
       CMP    L593D,X 
       BCS    L5935   
       LDA    $9C,X   
       CMP    #$2C    
       BCC    L5935   
       CMP    #$84    
       BCS    L5935   
       LDA    $98,X   
       JSR    L5555   
       CMP    #$44    
       BCC    L5935   
       CMP    #$63    
       BCS    L5935   
       LDA    #$78    
       STA    $C0     
       STX    $C2     
L5935: DEX            
       BPL    L590C   
L5938: RTS            

L5939: .byte $3D,$21,$05,$00
L593D: .byte $54,$52,$35,$1A
L5941: SED            
       CLC            
       LDA    #$10    
       ADC    $8D     
       STA    $8D     
       LDA    #$00    
       ADC    $8C     
       STA    $8C     
       CLD            
       LDA    $8D     
       AND    #$F0    
       BEQ    L595A   
       CMP    #$50    
       BNE    L5971   
L595A: LDX    $BD     
       LDA    #$08    
       LDY    $8C     
       BEQ    L5966   
       TYA            
       ASL            
       ASL            
       ASL            
L5966: CLC            
       ADC    $BB,X   
       CMP    #$20    
       BCC    L596F   
       LDA    #$1F    
L596F: STA    $BB,X   
L5971: LDA    $90     
       CMP    #$50    
       BEQ    L597F   
       LDA    $8C     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $90     
L597F: RTS            

L5980: LDA    $D5     
       BEQ    L5991   
       DEC    $D5     
       LDA    $D5     
       LSR            
       LSR            
       EOR    #$1F    
       LDX    $BD     
       STA    $BB,X   
       RTS            

L5991: LDX    $BD     
       LDA    $BB,X   
       BNE    L59D0   
       DEC    $8F     
       LDA    $CF     
       BEQ    L59B4   
       TXA            
       EOR    #$01    
       TAX            
       LDA    $94     
       BEQ    L59B4   
       STX    $BD     
       LDX    #$04    
L59A9: LDA    $8C,X   
       LDY    $91,X   
       STY    $8C,X   
       STA    $91,X   
       DEX            
       BPL    L59A9   
L59B4: LDA    $8F     
       BEQ    L59D0   
       LDA    #$80    
       STA    $D5     
       LDA    #$B0    
       STA    $9C     
       STA    $9D     
       STA    $9E     
       STA    $9F     
       LDA    #$00    
       STA    $C1     
       STA    $C0     
       STA    $BE     
       STA    $BF     
L59D0: RTS            

L59D1: LDA    $96     
       CMP    #$01    
       BEQ    L5A3F   
       LDA    $8F     
       BNE    L5A45   
       LDY    $CF     
       BEQ    L59E3   
       LDY    $94     
       BNE    L5A45   
L59E3: STY    AUDV0   
       STY    AUDV1   
       INY            
       STY    $96     
       LDA    #$3C    
       STA    $F1     
       LDX    #$04    
       STX    $D5     
       DEX            
       LDA    #$B0    
L59F5: STA    $9C,X   
       DEX            
       BPL    L59F5   
       INX            
       LDA    $AA     
L59FD: CMP    L5AA7,X 
       BPL    L5A05   
       INX            
       BNE    L59FD   
L5A05: STX    $D7     
       LDA    #$00    
       STA    $9C,X   
       LDA    #$52    
       STA    $A0,X   
       LDA    $A9     
       BEQ    L5A14   
       DEY            
L5A14: LDA    L5AA3,Y 
       STA    $98,X   
       LDA    L5B00,Y 
       STA    $A4,X   
       LDA    L5F60,Y 
       STA    $D6     
       LDA    L5FF3,Y 
       STA    $D9     
       LDA    L5AA5,Y 
       STA    $D8     
       LDA    #$00    
       STA    $C4     
       STA    $C5     
       STA    $C6     
       STA    $C7     
       LDA    #$50    
       STA    $C8     
       STA    $CA     
       STA    $CC     
L5A3F: LDA    $F1     
       BEQ    L5A46   
       DEC    $F1     
L5A45: RTS            

L5A46: LDX    $D7     
       LDY    $9C,X   
       CPY    #$84    
       BEQ    L5A60   
       LDY    #$84    
       LDA    $98,X   
       CMP    $D9     
       BEQ    L5A60   
       LDY    #$00    
       LDA    $F0     
       AND    #$08    
       BNE    L5A60   
       LDY    #$16    
L5A60: STY    $9C,X   
       LDY    $D8     
       LDA    $98,X   
       CMP    $D6     
       BEQ    L5A75   
       LDX    #$03    
       JSR    L5517   
       LDX    $D7     
       STA    $98,X   
       BPL    L5A7F   
L5A75: LDA    #$00    
       STA    $AF     
       STA    $B0     
       STA    $B1     
       STA    $B2     
L5A7F: LDA    $F0     
       BNE    L5AA2   
       LDY    $CF     
       DEC    $D5     
       BPL    L5A8C   
       JMP    L5002   
L5A8C: TYA            
       BEQ    L5AA2   
       LDA    $BD     
       EOR    #$01    
       STA    $BD     
       LDX    #$02    
L5A97: LDA    $8C,X   
       LDY    $91,X   
       STA    $91,X   
       STY    $8C,X   
       DEX            
       BPL    L5A97   
L5AA2: RTS            

L5AA3: .byte $40,$98
L5AA5: .byte $F0,$10
L5AA7: .byte $3E,$29,$14,$00
L5AAB: .byte $00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$00,$00,$03
       .byte $00,$00,$00,$00,$03,$00,$00,$08,$06,$03,$05,$04,$B0,$B0,$B0,$B0
       .byte $52,$52,$52,$52,$00,$00,$00,$00,$08,$00,$00,$1C,$1C,$1C,$1C,$00
       .byte $1C,$00,$00,$91,$91,$91,$91,$4B,$4B,$4B,$4B,$1F,$00,$00,$00,$00
       .byte $00,$00,$00,$1E,$A8,$C4,$16,$DA,$6A,$5F,$7A,$5F,$62,$5F,$00,$00
       .byte $7F,$1D,$A1,$00,$00
L5B00: .byte $08,$00,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
       .byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$26,$26,$26,$26,$16,$16,$2C,$2C
       .byte $2C,$2C,$2C,$2C,$2C,$0E,$0E,$0E,$0E,$0E,$26,$26,$26,$26,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$0E,$1A,$1A,$1A,$1A,$00,$1A,$1A,$1A,$1A,$1A,$2C,$2C,$2C
       .byte $2C,$2C,$2C,$2C,$16,$16,$0E,$58,$58,$58,$58,$16,$0E,$0E,$0E,$0E
       .byte $0E,$2C,$2C,$2C,$2C,$2C,$2C,$2C,$16,$16,$16,$16,$16,$16,$16,$16
       .byte $16,$16,$16,$16,$16,$16,$16,$16,$16,$16,$16,$16,$16,$16
L5B7E: .byte $80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$40,$40,$40,$40,$E0
L5B8D: .byte $15,$15,$57,$B5,$12,$EA,$8A,$8E,$8A,$EA,$57,$54,$76,$54,$57
L5B9C: .byte $EE,$88,$EE,$22,$EE,$55,$55,$D7,$D5,$52,$40,$40,$40,$40,$E0
L5BAB: .byte $A0,$A0,$E0,$A0,$40,$A0,$30,$B0,$A0,$A0,$E0,$20,$60,$20,$E0
L5BBA: .byte $75,$46,$47,$45,$77,$D4,$55,$DD,$15,$C9,$55,$55,$27,$55,$52
L5BC9: .byte $0E,$02,$06,$02,$0E,$05,$0A,$0A,$08,$08,$0E,$08,$0E,$02,$0E
L5BD8: DEC    $C3     
       BNE    L5BE4   
       LDX    $BD     
       LDA    $BB,X   
       BEQ    L5BE4   
       DEC    $BB,X   
L5BE4: RTS            

L5BE5: .byte $00,$9D,$9D,$D5,$D5,$95,$D5,$D5
L5BED: .byte $00,$B2,$B2,$20,$A0,$22,$A2,$A0
L5BF5: .byte $1C,$8C,$C4
L5BF8: .byte $66,$2C,$00,$00
L5BFC: .byte $2C,$42,$58,$6E
L5C00: .byte $98,$40,$66,$66,$22,$FF,$FF,$7E,$7E,$3C,$2C,$24,$74,$74,$34,$18
       .byte $3C,$34,$74,$7C,$2C,$3C,$7C,$78,$18,$18,$08,$FF,$FF,$7E,$7E,$3C
       .byte $34,$34,$74,$74,$34,$18,$3C,$34,$74,$7C,$2C,$3C,$7C,$78,$83,$5C
       .byte $20,$51,$8A,$04,$0A,$11,$21,$41,$84,$12,$E1,$1E,$10,$28,$44,$8A
       .byte $19,$14,$24,$C2,$73,$FB,$AB,$AB,$FA,$FA,$AE,$AE,$FE,$7E,$22,$22
       .byte $3E,$3C,$20,$20,$20,$20,$60,$60,$00,$00,$00,$00,$00,$40,$A6,$A6
       .byte $9D,$9D,$17,$17,$1A,$1A,$0C,$0C,$02,$02,$01,$01,$01,$01,$06,$0C
       .byte $80,$80,$80,$C0,$C0,$A0,$A0,$90,$D0,$C8,$A8,$25,$15,$13,$0B,$09
       .byte $05,$05,$03,$03,$01,$01,$0C,$0C,$04,$FF,$FF,$9F,$9F,$1F,$0B,$09
       .byte $1D,$1D,$0D,$06,$0F,$0D,$1D,$1F,$0B,$0F,$1F,$1E,$7C,$FF,$7E,$3C
       .byte $78,$7C,$3C,$2C,$7C,$74,$34,$3C,$18,$34,$74,$74,$24,$2C,$3C,$7E
       .byte $7E,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
L5CC8: LDA    L5AAB,X 
       STA    $80,X   
       DEX            
       BPL    L5CC8   
L5CD0: RTS            

L5CD1: LDA    SWCHA   
       LDX    $BD     
       BEQ    L5CDC   
       ASL            
       ASL            
       ASL            
       ASL            
L5CDC: LDX    $BE     
       BNE    L5CE8   
       LDX    $D5     
       BNE    L5CE8   
       LDX    $C0     
       BEQ    L5CEA   
L5CE8: LDA    #$FF    
L5CEA: STA    $EF     
       AND    #$30    
       CMP    #$30    
       BEQ    L5CFC   
       LDA    $F0     
       ORA    #$01    
       STA    $D2     
       AND    #$FD    
       STA    $D1     
L5CFC: RTS            

L5CFD: .byte $44,$5A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E7
       .byte $E7,$63,$63,$36,$36,$3E,$3E,$8E,$8E,$FE,$FE,$FE,$2E,$2E,$3E,$3E
       .byte $1C,$7E,$6E,$1F,$7F,$FB,$7B,$5B,$7F,$7F,$3E,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$38,$38,$18,$18,$18,$18,$3E,$3E,$8E
       .byte $8E,$FE,$FE,$FE,$2E,$2E,$3E,$3E,$1C,$7E,$6E,$1F,$7F,$FB,$7B,$5B
       .byte $7F,$7F,$3E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7E
       .byte $7E,$36,$36,$1C,$1C,$3E,$3E,$4E,$4E,$FE,$FE,$FE,$4E,$4E,$3E,$3E
       .byte $1C,$7E,$6E,$1F,$7F,$FB,$7B,$5B,$7F,$7F,$3E,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$38,$38,$18,$18,$18,$18,$3E,$3E,$2E
       .byte $2E,$FE,$FE,$FE,$8E,$8E,$3E,$3E,$1C,$7E,$6E,$1F,$7F,$FB,$7B,$5B
       .byte $7F,$7F,$3E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$90,$00,$00,$00,$00,$00,$00,$70,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$05,$05,$05,$00,$00,$00
       .byte $00,$00,$00,$00,$D0,$00,$00,$00,$00,$00,$00,$30,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8
       .byte $A8,$A8,$A8,$A8,$A8,$A8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$00
       .byte $00
L5EAE: LDA    #$02    
       STA    $96     
       LDX    #$0B    
L5EB4: LDA    L5EBD,X 
       STA    $80,X   
       DEX            
       BPL    L5EB4   
       RTS            

L5EBD: .byte $C9,$5E,$D9,$5E,$E9,$5E,$D1,$5E,$E1,$5E,$F1,$5E,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$36,$49,$49,$49,$49,$49,$49,$41,$5E,$5E,$48,$48
       .byte $44,$44,$5E,$5E,$94,$94,$F5,$F7,$97,$94,$F7,$67,$B8,$BC,$24,$24
       .byte $A4,$A4,$BC,$38,$00,$00,$00,$00,$00,$00,$00,$00
L5EF9: .byte $38,$38,$7E,$7E,$7E
L5EFE: .byte $1C,$54,$3C,$7E,$66,$66,$66,$66,$7E,$3C,$3C,$3C,$18,$18,$18,$18
       .byte $38,$18,$7E,$7E,$60,$7C,$3E,$06,$7E,$3C,$3C,$7E,$06,$0C,$0C,$06
       .byte $7E,$3C,$0C,$0C,$7E,$7E,$6C,$6C,$3C,$1C,$3C,$7E,$06,$7E,$7C,$60
       .byte $7E,$7E,$3C,$7E,$66,$7E,$7C,$60,$7E,$3C,$60,$30,$18,$0C,$06,$06
       .byte $7E,$7E,$3C,$7E,$66,$3C,$3C,$66,$7E,$3C,$3C,$7E,$06,$3E,$7E,$66
       .byte $7E,$3C,$00,$00,$00,$00,$00,$00
L5F56: .byte $00,$00,$A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8
L5F60: .byte $C4,$B5,$DF,$DF,$D9,$D9,$DF,$FF,$E7,$E7,$FF,$7E,$3C,$18
L5F6E: .byte $26,$26,$26,$26,$26,$26,$26,$26,$26,$00,$00,$00,$66,$66,$FF,$FF
       .byte $FF,$F0,$70,$30
L5F82: .byte $3F,$3F,$25,$01
L5F86: .byte $CF,$D3,$AD,$8F
L5F8A: .byte $8C,$4D,$AA,$40
L5F8E: .byte $64,$64,$02,$88
L5F92: LDA    $C0     
       BEQ    L5FB2   
       CMP    #$80    
       BEQ    L5FB2   
       CMP    #$70    
       BCC    L5FB2   
       LDX    $C2     
       LDA    $9C,X   
       CMP    #$2C    
       BNE    L5FB2   
       INC    $C0     
       LDX    $BD     
       LDA    INPT4,X 
       BMI    L5FB2   
       LDA    #$68    
       STA    $C0     
L5FB2: RTS            

L5FB3: LDX    #$00    
       LDA    $AA     
       CMP    #$45    
       BCS    L5FC6   
       INX            
       CMP    #$29    
       BCS    L5FC6   
       INX            
       CMP    #$0D    
       BCS    L5FC6   
       INX            
L5FC6: LDA    $98,X   
       JSR    L5555   
       LDY    $A9     
       BEQ    L5FD1   
       LDY    #$01    
L5FD1: CMP    L5CFD,Y 
       BCC    L5FF0   
       CMP    L5FFE,Y 
       BCS    L5FF0   
       LDA    $C1     
       BEQ    L5FF0   
       LDA    $9C,X   
       CMP    #$2C    
       BCS    L5FF0   
       LDA    #$9A    
       STA    $9C,X   
       LDA    #$FF    
       STA    $BE     
       JSR    L5941   
L5FF0: RTS            

L5FF1: .byte $1C,$26
L5FF3: .byte $04,$66
L5FF5: .byte $FE,$FC,$F8,$F0,$E0,$C0,$80,$00,$50
L5FFE: .byte $4E,$63
