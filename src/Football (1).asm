; Disassembly of roms/Football (1).bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Football (1).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
INPT3   =  $3B
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

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
       LDA    #$07    
       STA    $85     
       DEC    $C7     
       JSR    LF54F   
       JSR    LF516   
       JSR    LF49A   
LF01B: STA    WSYNC   
       STX    VSYNC   
       STX    VBLANK  
       STX    AUDV0   
       INC    $80     
       BNE    LF02D   
       INC    $BC     
       BNE    LF02D   
       STX    $BD     
LF02D: LDA    $BD     
       BEQ    LF035   
       LDX    #$F6    
       STX    $B6     
LF035: LDA    SWCHB   
       AND    #$08    
       LSR            
       BNE    LF043   
       PHA            
       TXA            
       AND    #$0F    
       TAX            
       PLA            
LF043: STX    $D5     
       TAY            
       LDX    #$04    
       STA    WSYNC   
LF04A: LDA    $BC     
       AND    $BD     
       EOR    LF795,Y 
       AND    $D5     
       STA    $B0,X   
       STA    NUSIZ1,X
       INY            
       DEX            
       BNE    LF04A   
       STX    WSYNC   
       STX    VSYNC   
       LDA    #$25    
       STA    TIM64T  
       LDA    $80     
       AND    #$3F    
       ORA    $81     
       ORA    $BD     
       BNE    LF080   
       LDA    $C2     
       SED            
       SBC    #$00    
       CLD            
       BPL    LF07E   
       LDA    $C3     
       BEQ    LF080   
       LDA    #$59    
       DEC    $C3     
LF07E: STA    $C2     
LF080: JSR    LF50D   
       LDX    #$02    
       LDA    SWCHA   
LF088: TAY            
       EOR    $A7,X   
       AND    $A7,X   
       STA    $AA,X   
       STY    $A7,X   
       LDA    INPT3,X 
       DEX            
       BPL    LF088   
       LDX    #$02    
       STX    NUSIZ1  
LF09A: LDA    $8C,X   
       JSR    LF4E7   
       STY    $DB,X   
       STA    $DD,X   
       LDA    $8C,X   
       ASL            
       EOR    $8A,X   
       STA    $AC,X   
       DEX            
       BNE    LF09A   
       LDA    $B0     
       JSR    LF4E7   
LF0B2: LDX    INTIM   
       BNE    LF0B2   
       STY    WSYNC   
LF0B9: DEY            
       BPL    LF0B9   
       STA    RESBL,X 
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       STX    $D6     
       LDA    $B4     
       STA    COLUP1  
       STA    COLUBK  
       LDA    #$11    
       STA.w  $000A   
       LDY    #$0E    
       STY    REFP0   
       STY    REFP1   
       STA    HMCLR   
       STA    RESP0   
       LDA    $C4     
       STA    RESP1   
       JSR    LF7C2   
       LDA    $C3     
       JSR    LF7C2   
       LDX    #$03    
LF0E9: DEX            
       LDA    $C0,X   
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LF7C2   
       LDA    $C0,X   
       AND    #$0F    
       JSR    LF7C2   
       BPL    LF0E9   
       LDY    #$05    
       STY    VBLANK  
       LDA    #$C6    
       STA    NUSIZ0  
       STA    HMP1    
       LDA    #$A1    
       STA    VDELP1  
       STA    HMP0    
       SEC            
       BCS    LF114   
LF10F: CLC            
LF110: LDA    $B1     
       STA    COLUP0  
LF114: STA    WSYNC   
       STA    HMOVE   
       LDA    ($EC),Y 
       ORA    LF736,Y 
       STA    GRP1    
       LDA    ($E0),Y 
       STA    GRP0    
       LDA    ($EE),Y 
       STA    GRP1    
       LDA    ($E8),Y 
       LDX    $B4     
       STX    COLUP0  
       LDX    $B2     
       STA    GRP0    
       LDA    ($E4),Y 
       STA    GRP0    
       STX    COLUP0  
       LDA    #$70    
       STA    HMP0    
       STA    HMP1    
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    $B1     
       STA    COLUP0  
       LDA    ($E2),Y 
       STA    GRP0    
       LDA    ($EA),Y 
       LDX    #$90    
       STX    HMP0    
       STX    HMP1    
       LDX    $B4     
       STX    COLUP0  
       LDX    $B2     
       STA    GRP0    
       LDA    ($E6),Y 
       STA    GRP0    
       STX    COLUP0  
       BCS    LF10F   
       SEC            
       DEY            
       BNE    LF110   
       STY    GRP0    
       STY    VDELP1  
       STX    COLUP1  
       LDY    #$0A    
LF171: STA    WSYNC   
       LDA    $B7     
       ASL            
       ASL            
       TYA            
       ADC    #$00    
       TAX            
       LDA    LF79C,X 
       STA    GRP0    
       TYA            
       ORA    $BF     
       TAX            
       LDA    LF7A6,X 
       TAX            
       LDA    $B7     
       ASL            
       TYA            
       ADC    #$00    
       STX    GRP0    
       TAX            
       LDA    LF79C,X 
       STA    GRP0    
       DEY            
       DEY            
       BNE    LF171   
       STY    GRP0    
       SEC            
       LDX    #$02    
LF19F: LDA    $AC,X   
       STA    WSYNC   
       STA    CTRLPF,X
       LDA    $DD,X   
       STA    ENABL,X 
       LDA    $DB,X   
       SBC    #$03    
LF1AD: SBC    #$01    
       BNE    LF1AD   
       DEX            
       STA    RESP0,X 
       BNE    LF19F   
       STA    WSYNC   
       LDX    $B1     
       STX    COLUP0  
       CLC            
       LDX    #$F0    
       STX    PF1     
       STA    PF2     
       LDX    $C5     
       LDY    $C6     
       LDA    #$15    
       STA    CTRLPF  
       LDA    $81     
       BNE    LF1D1   
       TAY            
       TAX            
LF1D1: STX    NUSIZ0  
       STY    NUSIZ1  
       LDX    #$27    
       TXA            
       STA    WSYNC   
       STA    HMOVE   
       BNE    LF207   
LF1DE: LDA    $DB     
       ASL            
       EOR    $DB     
       ASL            
       ASL            
       ROR    $C7     
       ROL    $DB     
       RTS            

LF1EA: LDA.wy $0097,Y 
       CLC            
       ADC    #$04    
       STA    $B0     
       LDA.wy $008F,Y 
       ADC    #$05    
       STA    $AF     
       RTS            

LF1FA: CLC            
       NOP            
       BCC    LF247   
LF1FE: CLC            
       NOP            
       BCC    LF254   
LF202: LDY    #$00    
       STY    PF2     
       TXA            
LF207: BIT    $85     
       BEQ    LF220   
       SBC    $AF     
       AND    #$FC    
       BNE    LF21C   
       LDY    #$02    
       STY    ENABL   
       NOP            
       CPX    #$C9    
       BCC    LF238   
       BCS    LF271   
LF21C: STA    ENABL   
       BNE    LF26D   
LF220: INC    $D6     
       LDY    $D6     
       LDA    LF748,Y 
       EOR    $B4     
       STA    COLUBK  
       LDA    ($B5),Y 
       AND    #$07    
       ORA    #$08    
       STA    AUDF1   
       INX            
       CLC            
       NOP            
       BCC    LF247   
LF238: INX            
       TXA            
       SBC    $8B     
       CMP    #$0F    
       BCS    LF1FA   
       TAY            
       LDA    LF73C,Y 
       STA.w  $001B   
LF247: TXA            
       SBC    $8C     
       CMP    #$0F    
       BCS    LF1FE   
       TAY            
       LDA    LF73C,Y 
       STA    GRP1    
LF254: CPX    $83     
       BNE    LF202   
       LDY    #$FF    
       STY.w  $000F   
       TXA            
       BIT    $85     
       BEQ    LF220   
       SBC    $AF     
       AND    #$FC    
       BNE    LF21C   
       LDY    #$02    
       STY    ENABL   
       NOP            
LF26D: CPX    #$C9    
       BCC    LF238   
LF271: LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    ENABL   
       DEX            
       STX    PF0     
       STA    WSYNC   
       STX    PF1     
       STX    PF2     
       LDA    #$22    
       STA    TIM64T  
       LDA    $DA     
       LDX    #$08    
       STX    AUDC1   
       AND    #$F0    
       BMI    LF2A7   
       DEC    $DA     
       LSR            
       ORA    $D9     
       LSR            
       BCC    LF29B   
       DEC    $DA     
LF29B: LSR            
       BCS    LF2A1   
       LSR            
       AND    #$01    
LF2A1: TAY            
       LDA    #$0C    
       LDX    LF761,Y 
LF2A7: STX    AUDF0   
       STA    AUDC0   
       LDA    $B5     
LF2AD: ADC    #$17    
       CMP    #$E9    
       BCS    LF2AD   
       STA    $B5     
       LDX    $86     
       LDA    $80     
       AND    #$03    
       BNE    LF2D4   
       LDA    $81     
       ORA    $BB     
       BNE    LF2CF   
       INX            
       CPX    #$0A    
       BCC    LF2D2   
       LDA    $DB     
       ORA    #$08    
       TAX            
       BNE    LF2D4   
LF2CF: DEX            
       BMI    LF2D6   
LF2D2: STX    $86     
LF2D4: STX    AUDV1   
LF2D6: LDA    $B7     
       BEQ    LF324   
       LDA    $C3     
       LDX    #$01    
       ORA    $C2     
       BNE    LF2E6   
       LDA    #$FF    
       STA    $BD     
LF2E6: LDY    #$00    
       DEC    $81     
       BMI    LF31C   
       LDA    #$7F    
       STA    $81     
       LDA    $B7     
       AND    LF772,X 
       BEQ    LF31E   
       LDA    $AC     
       LDY    #$04    
       DEX            
       INX            
       BNE    LF303   
       LSR            
       LSR            
       LSR            
       LSR            
LF303: LSR            
       BCS    LF30D   
       DEY            
       BNE    LF303   
       LDA    $AA,X   
       BPL    LF31E   
LF30D: LDA    $BD     
       BNE    LF31E   
       LDA    $B7     
       EOR    LF772,X 
       STA    $B7     
       LDA    #$04    
       STA    AUDC0   
LF31C: STY    $89,X   
LF31E: DEX            
       BPL    LF2E6   
       JMP    LF39F   
LF324: LDA    $80     
       AND    #$03    
       ASL            
       TAX            
       LDA    $AF     
       ADC    #$02    
       STA    $D6     
       LDY    #$07    
LF332: LDA    $97,X   
       SEC            
       SBC.wy $0097,Y 
       CLC            
       ADC    #$04    
       CMP    #$09    
       BCS    LF349   
       LDA    $8F,X   
       SBC.wy $008F,Y 
       SEC            
       ADC    #$07    
       CMP    #$0F    
LF349: ROL    $9F,X   
       LDA    $B0     
       SEC            
       SBC.wy $0097,Y 
       CMP    #$09    
       BCS    LF35C   
       LDA    $D6     
       SBC.wy $008F,Y 
       CMP    #$0A    
LF35C: ROL    $B8     
       TXA            
       EOR    #$01    
       TAX            
       DEY            
       BPL    LF332   
       LDA    $81     
       BEQ    LF3AD   
       DEC    $81     
       BNE    LF3A8   
       LDX    $BF     
       LSR            
       STA    $B9     
       STA    $BA     
       STA    $BE     
       STA    $D2     
       LDA    $AF     
       STA    $82     
       LDY    $89,X   
       LDA    $D3     
       EOR    #$03    
       BEQ    LF38B   
       LDA    LF775,Y 
       ADC    $97,X   
       STA    $97,X   
LF38B: TXA            
       TAY            
       JSR    LF1EA   
       LDA    $C7     
       ORA    #$A0    
       STA    $C8     
       AND    #$1F    
       ADC    LF78B,X 
       ADC    $82     
       STA    $84     
LF39F: LDX    INTIM   
       BNE    LF39F   
       DEX            
       JMP    LF01B   
LF3A8: JSR    LF49A   
       BNE    LF39F   
LF3AD: TXA            
       STX    $D7     
       AND    #$02    
       ASL            
       TAX            
LF3B4: LDA    #$00    
       LDY    $BB     
       BNE    LF40E   
       LDY    $D3     
       CPY    #$03    
       BEQ    LF3E4   
       STA    $D5     
       LDA    $BF     
       EOR    #$01    
       TAY            
       TXA            
       LSR            
       CMP    $BA     
       BEQ    LF3D2   
       LDA    LF7FE,Y 
       STA    $D5     
LF3D2: CPX    #$02    
       ROR            
       EOR.wy $003C,Y 
       ROL            
       LDA    $D5     
       BCC    LF3E0   
       ORA    LF7FD,Y 
LF3E0: ORA    $A9     
       EOR    #$FF    
LF3E4: BIT    LF7FD   
       BNE    LF3EB   
       EOR    $CA,X   
LF3EB: BIT    LF7FE   
       BNE    LF3F2   
       EOR    $CB,X   
LF3F2: CPX    #$02    
       BCS    LF40E   
       TAY            
       LDA    $90,X   
       ADC    #$08    
       CMP    $AF     
       TYA            
       BCS    LF404   
       AND    #$FC    
       ORA    #$02    
LF404: LDY    $8F,X   
       CPY    $AF     
       BCC    LF40E   
       AND    #$CF    
       ORA    #$10    
LF40E: PHA            
       LDY    #$00    
LF411: LDA    $80     
       AND    #$06    
       BEQ    LF42B   
       SBC    #$03    
       BPL    LF433   
       EOR    SWCHB   
       AND    LF772,Y 
       BEQ    LF425   
       LDA    #$CF    
LF425: CPX    #$02    
       BCS    LF42B   
       ORA    #$30    
LF42B: ORA    #$0F    
       STA    $D5     
       PLA            
       AND    $D5     
       PHA            
LF433: LDA    $9F,X   
       AND    #$0F    
       EOR    #$0F    
       BEQ    LF440   
       PLA            
       AND    LF6FF,Y 
       PHA            
LF440: PLA            
       ASL            
       BCC    LF446   
       INC    $97,X   
LF446: ASL            
       BCC    LF44B   
       DEC    $97,X   
LF44B: ASL            
       BCC    LF450   
       INC    $8F,X   
LF450: ASL            
       PHA            
       BCC    LF456   
       DEC    $8F,X   
LF456: LDA    #$C2    
       CMP    $8F,X   
       BCC    LF464   
       LDA    #$1F    
       CMP    $8F,X   
       BCS    LF464   
       LDA    $8F,X   
LF464: STA    $8F,X   
       LDA    #$77    
       CMP    $97,X   
       BCC    LF474   
       LDA    #$1F    
       CMP    $97,X   
       BCS    LF474   
       LDA    $97,X   
LF474: STA    $97,X   
       INX            
       INY            
       CPY    #$02    
       BCC    LF411   
       PLA            
       TXA            
       AND    #$02    
       BEQ    LF485   
       JMP    LF3B4   
LF485: LDX    $D7     
       LDA    $8F,X   
       STA    $8B     
       LDA    $90,X   
       STA    $8C     
       LDA    $97,X   
       STA    $8D     
       LDA    $98,X   
       STA    $8E     
       JMP    LF39F   
LF49A: LDX    #$01    
LF49C: STX    $D5     
       LDA    $B7     
       BNE    LF4A4   
       LDA    $89,X   
LF4A4: AND    #$07    
       PHA            
       CMP    #$01    
       LDA    $D5     
       ROL            
       TAY            
       LDA    $AF     
       CLC            
       ADC    LF77F,Y 
       STA    $8F,X   
       CLC            
       ADC    LF7B2,Y 
       STA    $8B,X   
       STA    $91,X   
       STA    $93,X   
       STA    $95,X   
       PLA            
       CMP    #$03    
       LDA    #$00    
       ROL            
       TAY            
       LDA    #$4C    
       STA    $97,X   
       STA    $99,X   
       LDA    LF783,Y 
       STA    $9B,X   
       STA    $8D,X   
       LDA    LF785,Y 
       STA    $9D,X   
       LDA    LF787,Y 
       STA    $C5,X   
       DEX            
       BPL    LF49C   
       LDA    #$4F    
       STA    $B0     
       RTS            

LF4E7: CLC            
       ADC    #$37    
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       PLA            
       AND    #$0F    
       STY    $D5     
       CLC            
       ADC    $D5     
       CMP    #$0F    
       BCC    LF4FF   
       SBC    #$0F    
       INY            
LF4FF: CMP    #$08    
       EOR    #$0F    
       BCS    LF508   
       ADC    #$01    
       DEY            
LF508: ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LF50D: LDX    #$00    
       LDA    SWCHB   
       LSR            
       ROR            
       BCS    LF54B   
LF516: LDA    #$AA    
       STA    $C1     
       STA    $C2     
       LDA    #$0A    
       STA    $C4     
       STA    $C3     
       LDA    #$06    
       STA    $BC     
       DEX            
       STX    $BD     
       LDA    #$C0    
       STA    $B7     
       LDY    $D3     
       LDX    $D4     
       BNE    LF541   
       CPY    #$03    
       BCC    LF539   
       LDY    #$00    
LF539: INY            
       STY    $D3     
       TYA            
       ORA    #$A0    
       STA    $C0     
LF541: INX            
       CPX    #$3F    
       BCC    LF548   
       LDX    #$00    
LF548: STX    $D4     
       RTS            

LF54B: STX    $D4     
       BMI    LF563   
LF54F: LDX    #$0A    
       LDA    #$00    
LF553: STA    $BA,X   
       DEX            
       BNE    LF553   
       INC    $C4     
       LDA    #$05    
       STA    $C3     
       LDA    #$53    
       JMP    LF68D   
LF563: LDX    $BF     
       LDA    $81     
       BEQ    LF56A   
       RTS            

LF56A: LDA    $BB     
       BEQ    LF571   
       JMP    LF685   
LF571: LDA    $B9     
       BNE    LF588   
       TAY            
       JSR    LF6A5   
       BCC    LF57E   
       JMP    LF611   
LF57E: LDA    $AA,X   
       BPL    LF58A   
       INC    $B9     
       LDA    #$0C    
       STA    AUDC0   
LF588: BPL    LF58D   
LF58A: JMP    LF615   
LF58D: LDA    $89,X   
       STA    $D6     
       BEQ    LF5A2   
       LDA    LF77D,X 
       AND    $B8     
       EOR    LF77D,X 
       JSR    LF7EA   
       BEQ    LF5A2   
       BPL    LF60B   
LF5A2: LDA    LF77D,X 
       ORA    $B8     
       EOR    #$FF    
       JSR    LF7EA   
       BPL    LF5C9   
LF5AE: CLC            
       LDA    $97,X   
       ADC    #$04    
       STA    $B0     
       LDA    LF774,X 
       ADC    $AF     
       CMP    #$E0    
       STA    $AF     
       BCS    LF602   
       EOR    $84     
       ORA    $D6     
       BEQ    LF5FD   
       JMP    LF6BA   
LF5C9: BEQ    LF5CF   
       LDA    $D6     
       BEQ    LF5AE   
LF5CF: TXA            
       EOR    #$01    
       STA    $BF     
       LSR            
       TYA            
       ROL            
       TAX            
       LDA    #$01    
       STA    $D2     
       STA    $D9     
       LDA    $D6     
       BEQ    LF5E6   
       LDA    #$7F    
       STA    $DA     
LF5E6: STY    $BA     
       LDA    $8F,X   
       LDX    $BF     
       CLC            
       ADC    #$04    
       JSR    LF7D5   
       BCS    LF60D   
       BNE    LF60D   
       LDA    LF793,X 
       STA    $BE     
       BNE    LF658   
LF5FD: JSR    LF7D3   
       BCS    LF644   
LF602: LDA    $D6     
       BNE    LF654   
       LDA    LF790,X 
       BNE    LF670   
LF60B: STY    $BA     
LF60D: LDA    #$04    
       STA    AUDC0   
LF611: LDA    #$80    
       STA    $B9     
LF615: TXA            
       LSR            
       LDA    $BA     
       ROL            
       TAY            
       LDA.wy $009F,Y 
       AND    #$0F    
       EOR    #$0F    
       BEQ    LF647   
       JSR    LF7D3   
       BCS    LF658   
LF629: TYA            
       AND    #$01    
       EOR    #$01    
       TAX            
       LDA    #$7F    
       STA    $DA     
       LDA    LF75D,Y 
       STA    $D9     
       SED            
       CLC            
       ADC    $C0,X   
       CLD            
       STA    $C0,X   
       LDA    LF78F,Y 
       STA    $BE     
LF644: JMP    LF672   
LF647: JSR    LF1EA   
       JSR    LF7D3   
       BCS    LF651   
       BNE    LF629   
LF651: JMP    LF6BA   
LF654: LDA    $82     
       STA    $AF     
LF658: LDX    $BF     
       LDY    $D2     
       BNE    LF679   
       INY            
       JSR    LF6A5   
       BCS    LF679   
       LDY    $C4     
       INY            
       CPY    #$05    
       BCC    LF67B   
       LDA    $AF     
       ADC    LF789,X 
LF670: STA    $AF     
LF672: LDA    $BF     
       EOR    #$01    
       TAX            
       STA    $BF     
LF679: LDY    #$01    
LF67B: STY    $C4     
       LDA    #$81    
       STA    $BB     
       STA    AUDC0   
       STA    $BC     
LF685: DEC    $BB     
       BNE    LF6B9   
       LDA    $BE     
       BEQ    LF68F   
LF68D: STA    $AF     
LF68F: LDA    #$C0    
       STA    $B7     
       STA    $81     
       LDY    $C4     
       DEY            
       BNE    LF6A2   
       LDA    LF78D,X 
       CLC            
       ADC    $AF     
       STA    $83     
LF6A2: JMP    LF49A   
LF6A5: LDA    $AF     
       CLC            
       ADC    LF79D,X 
       CMP.wy $0082,Y 
       BEQ    LF6B9   
       LDA    LF79D,X 
       BNE    LF6B9   
       ROL            
       EOR    #$01    
       ROR            
LF6B9: RTS            

LF6BA: LDA    #$03    
       STA    $D6     
       LDY    #$07    
LF6C0: LDX    #$01    
LF6C2: JSR    LF1DE   
       STY    $D5     
       LDA    $89,X   
       BEQ    LF6D0   
       AND    #$01    
       CLC            
       ADC    #$01    
LF6D0: ASL            
       ASL            
       ORA    $D6     
       TAY            
       LDA    LF7B6,Y 
       LDY    $D3     
       CPY    #$02    
       BEQ    LF6E0   
       AND    $C7     
LF6E0: ORA    #$21    
       LDY    $D6     
       BNE    LF6EE   
       LDY    $C8     
       BEQ    LF6EE   
       DEC    $C8     
       EOR    #$33    
LF6EE: AND    LF7FD,X 
       LDY    $D5     
       STA.wy $00CA,Y 
       DEY            
       DEX            
       BPL    LF6C2   
       DEC    $D6     
       BPL    LF6C0   
       RTS            

LF6FF: .byte $DF,$EF,$3F,$33,$33,$33,$3F,$0C,$0C,$0C,$0C,$0C,$3F,$03,$3F,$30
       .byte $3F,$3F,$30,$3C,$30,$3F,$30,$30,$3F,$33,$03,$3F,$30,$3F,$03,$3F
       .byte $3F,$33,$3F,$03,$3F,$30,$30,$30,$30,$3F,$3F,$33,$3F,$33,$3F,$3F
       .byte $30,$3F,$33,$3F,$00,$00,$00
LF736: .byte $00,$00,$80,$00,$80,$00
LF73C: .byte $7E,$7E,$5A,$42,$7E,$FF,$BD,$BD,$7E,$66,$E6,$06
LF748: .byte $07,$00,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02
       .byte $00,$02,$00,$02,$02
LF75D: .byte $02,$07,$07,$02
LF761: .byte $1B,$0F,$1B,$0F,$1B,$12,$14,$0F,$14,$0F,$1B,$12,$17,$14,$17,$77
       .byte $BB
LF772: .byte $40,$80
LF774: .byte $01
LF775: .byte $FF,$0E,$F0,$0E,$F0,$05,$0A,$30
LF77D: .byte $55,$AA
LF77F: .byte $D2,$E2,$24,$14
LF783: .byte $3B,$2B
LF785: .byte $5B,$6B
LF787: .byte $03,$06
LF789: .byte $02,$FC
LF78B: .byte $30,$B0
LF78D: .byte $15,$F0
LF78F: .byte $75
LF790: .byte $97,$53,$75
LF793: .byte $53,$97
LF795: .byte $0A,$06,$0E,$00,$D6,$82,$0C
LF79C: .byte $48
LF79D: .byte $04,$00,$20,$00,$00,$00,$E0,$00,$88
LF7A6: .byte $00,$F8,$08,$10,$04,$20,$7E,$7E,$04,$20,$08,$10
LF7B2: .byte $20,$10,$E0,$F0
LF7B6: .byte $FF,$ED,$ED,$ED,$77,$65,$ED,$65,$BB,$A9,$A9,$ED
LF7C2: STA    $D5     
       ASL            
       ASL            
       ADC    $D5     
       STA.wy $00E0,Y 
       LDA    #$F7    
       STA.wy $00E1,Y 
       DEY            
       DEY            
       RTS            

LF7D3: LDA    $AF     
LF7D5: CLC            
       ADC    LF79D,X 
       CMP    #$B8    
       BCS    LF7E1   
       CMP    #$38    
       BCS    LF7E9   
LF7E1: LDA    $BF     
       ROL            
       TAY            
       EOR    $BF     
       AND    #$01    
LF7E9: RTS            

LF7EA: LDY    #$03    
       STA    $D5     
       LDA    #$C0    
LF7F0: BIT    $D5     
       BNE    LF7F9   
       LSR            
       LSR            
       DEY            
       BPL    LF7F0   
LF7F9: TYA            
       RTS            

LF7FB: .byte $0A,$00
LF7FD: .byte $F0
LF7FE: .byte $0F,$F0
