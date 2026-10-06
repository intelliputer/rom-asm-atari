; Disassembly of roms/Football (2).bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Football (2).bin
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
LF7FE: .byte $0F,$F0,$78,$D8,$A2,$FF,$9A,$E8,$8A,$95,$00,$E8,$D0,$FB,$A9,$07
       .byte $85,$85,$C6,$C7,$20,$4F,$F5,$20,$16,$F5,$20,$9A,$F4,$85,$02,$86
       .byte $00,$86,$01,$86,$19,$E6,$80,$D0,$06,$E6,$BC,$D0,$02,$86,$BD,$A5
       .byte $BD,$F0,$04,$A2,$F6,$86,$B6,$AD,$82,$02,$29,$08,$4A,$D0,$06,$48
       .byte $8A,$29,$0F,$AA,$68,$86,$D5,$A8,$A2,$04,$85,$02,$A5,$BC,$25,$BD
       .byte $59,$95,$F7,$25,$D5,$95,$B0,$95,$05,$C8,$CA,$D0,$EF,$86,$02,$86
       .byte $00,$A9,$25,$8D,$96,$02,$A5,$80,$29,$3F,$05,$81,$05,$BD,$D0,$12
       .byte $A5,$C2,$F8,$E9,$00,$D8,$10,$08,$A5,$C3,$F0,$06,$A9,$59,$C6,$C3
       .byte $85,$C2,$20,$0D,$F5,$A2,$02,$AD,$80,$02,$A8,$55,$A7,$35,$A7,$95
       .byte $AA,$94,$A7,$B5,$3B,$CA,$10,$F2,$A2,$02,$86,$05,$B5,$8C,$20,$E7
       .byte $F4,$94,$DB,$95,$DD,$B5,$8C,$0A,$55,$8A,$95,$AC,$CA,$D0,$ED,$A5
       .byte $B0,$20,$E7,$F4,$AE,$84,$02,$D0,$FB,$84,$02,$88,$10,$FD,$95,$14
       .byte $85,$24,$85,$02,$85,$2A,$86,$D6,$A5,$B4,$85,$07,$85,$09,$A9,$11
       .byte $8D,$0A,$00,$A0,$0E,$84,$0B,$84,$0C,$85,$2B,$85,$10,$A5,$C4,$85
       .byte $11,$20,$C2,$F7,$A5,$C3,$20,$C2,$F7,$A2,$03,$CA,$B5,$C0,$4A,$4A
       .byte $4A,$4A,$20,$C2,$F7,$B5,$C0,$29,$0F,$20,$C2,$F7,$10,$ED,$A0,$05
       .byte $84,$01,$A9,$C6,$85,$04,$85,$21,$A9,$A1,$85,$26,$85,$20,$38,$B0
       .byte $05,$18,$A5,$B1,$85,$06,$85,$02,$85,$2A,$B1,$EC,$19,$36,$F7,$85
       .byte $1C,$B1,$E0,$85,$1B,$B1,$EE,$85,$1C,$B1,$E8,$A6,$B4,$86,$06,$A6
       .byte $B2,$85,$1B,$B1,$E4,$85,$1B,$86,$06,$A9,$70,$85,$20,$85,$21,$A9
       .byte $00,$85,$02,$85,$2A,$85,$1C,$A5,$B1,$85,$06,$B1,$E2,$85,$1B,$B1
       .byte $EA,$A2,$90,$86,$20,$86,$21,$A6,$B4,$86,$06,$A6,$B2,$85,$1B,$B1
       .byte $E6,$85,$1B,$86,$06,$B0,$AA,$38,$88,$D0,$A7,$84,$1B,$84,$26,$86
       .byte $07,$A0,$0A,$85,$02,$A5,$B7,$0A,$0A,$98,$69,$00,$AA,$BD,$9C,$F7
       .byte $85,$1B,$98,$05,$BF,$AA,$BD,$A6,$F7,$AA,$A5,$B7,$0A,$98,$69,$00
       .byte $86,$1B,$AA,$BD,$9C,$F7,$85,$1B,$88,$88,$D0,$D7,$84,$1B,$38,$A2
       .byte $02,$B5,$AC,$85,$02,$95,$0A,$B5,$DD,$95,$1F,$B5,$DB,$E9,$03,$E9
       .byte $01,$D0,$FC,$CA,$95,$10,$D0,$E9,$85,$02,$A6,$B1,$86,$06,$18,$A2
       .byte $F0,$86,$0E,$85,$0F,$A6,$C5,$A4,$C6,$A9,$15,$85,$0A,$A5,$81,$D0
       .byte $02,$A8,$AA,$86,$04,$84,$05,$A2,$27,$8A,$85,$02,$85,$2A,$D0,$29
       .byte $A5,$DB,$0A,$45,$DB,$0A,$0A,$66,$C7,$26,$DB,$60,$B9,$97,$00,$18
       .byte $69,$04,$85,$B0,$B9,$8F,$00,$69,$05,$85,$AF,$60,$18,$EA,$90,$49
       .byte $18,$EA,$90,$52,$A0,$00,$84,$0F,$8A,$24,$85,$F0,$15,$E5,$AF,$29
       .byte $FC,$D0,$0B,$A0,$02,$84,$1F,$EA,$E0,$C9,$90,$1E,$B0,$55,$85,$1F
       .byte $D0,$4D,$E6,$D6,$A4,$D6,$B9,$48,$F7,$45,$B4,$85,$09,$B1,$B5,$29
       .byte $07,$09,$08,$85,$18,$E8,$18,$EA,$90,$0F,$E8,$8A,$E5,$8B,$C9,$0F
       .byte $B0,$BA,$A8,$B9,$3C,$F7,$8D,$1B,$00,$8A,$E5,$8C,$C9,$0F,$B0,$B0
       .byte $A8,$B9,$3C,$F7,$85,$1C,$E4,$83,$D0,$AA,$A0,$FF,$8C,$0F,$00,$8A
       .byte $24,$85,$F0,$BE,$E5,$AF,$29,$FC,$D0,$B4,$A0,$02,$84,$1F,$EA,$E0
       .byte $C9,$90,$C7,$A2,$00,$86,$1B,$86,$1C,$86,$1F,$CA,$86,$0D,$85,$02
       .byte $86,$0E,$86,$0F,$A9,$22,$8D,$96,$02,$A5,$DA,$A2,$08,$86,$16,$29
       .byte $F0,$30,$16,$C6,$DA,$4A,$05,$D9,$4A,$90,$02,$C6,$DA,$4A,$B0,$03
       .byte $4A,$29,$01,$A8,$A9,$0C,$BE,$61,$F7,$86,$17,$85,$15,$A5,$B5,$69
       .byte $17,$C9,$E9,$B0,$FA,$85,$B5,$A6,$86,$A5,$80,$29,$03,$D0,$17,$A5
       .byte $81,$05,$BB,$D0,$0C,$E8,$E0,$0A,$90,$0A,$A5,$DB,$09,$08,$AA,$D0
       .byte $05,$CA,$30,$04,$86,$86,$86,$1A,$A5,$B7,$F0,$4A,$A5,$C3,$A2,$01
       .byte $05,$C2,$D0,$04,$A9,$FF,$85,$BD,$A0,$00,$C6,$81,$30,$30,$A9,$7F
       .byte $85,$81,$A5,$B7,$3D,$72,$F7,$F0,$27,$A5,$AC,$A0,$04,$CA,$E8,$D0
       .byte $04,$4A,$4A,$4A,$4A,$4A,$B0,$07,$88,$D0,$FA,$B5,$AA,$10,$11,$A5
       .byte $BD,$D0,$0D,$A5,$B7,$5D,$72,$F7,$85,$B7,$A9,$04,$85,$15,$94,$89
       .byte $CA,$10,$C5,$4C,$9F,$F3,$A5,$80,$29,$03,$0A,$AA,$A5,$AF,$69,$02
       .byte $85,$D6,$A0,$07,$B5,$97,$38,$F9,$97,$00,$18,$69,$04,$C9,$09,$B0
       .byte $0A,$B5,$8F,$F9,$8F,$00,$38,$69,$07,$C9,$0F,$36,$9F,$A5,$B0,$38
       .byte $F9,$97,$00,$C9,$09,$B0,$07,$A5,$D6,$F9,$8F,$00,$C9,$0A,$26,$B8
       .byte $8A,$49,$01,$AA,$88,$10,$CD,$A5,$81,$F0,$44,$C6,$81,$D0,$3B,$A6
       .byte $BF,$4A,$85,$B9,$85,$BA,$85,$BE,$85,$D2,$A5,$AF,$85,$82,$B4,$89
       .byte $A5,$D3,$49,$03,$F0,$07,$B9,$75,$F7,$75,$97,$95,$97,$8A,$A8,$20
       .byte $EA,$F1,$A5,$C7,$09,$A0,$85,$C8,$29,$1F,$7D,$8B,$F7,$65,$82,$85
       .byte $84,$AE,$84,$02,$D0,$FB,$CA,$4C,$1B,$F0,$20,$9A,$F4,$D0,$F2,$8A
       .byte $86,$D7,$29,$02,$0A,$AA,$A9,$00,$A4,$BB,$D0,$54,$A4,$D3,$C0,$03
       .byte $F0,$24,$85,$D5,$A5,$BF,$49,$01,$A8,$8A,$4A,$C5,$BA,$F0,$05,$B9
       .byte $FE,$F7,$85,$D5,$E0,$02,$6A,$59,$3C,$00,$2A,$A5,$D5,$90,$03,$19
       .byte $FD,$F7,$05,$A9,$49,$FF,$2C,$FD,$F7,$D0,$02,$55,$CA,$2C,$FE,$F7
       .byte $D0,$02,$55,$CB,$E0,$02,$B0,$18,$A8,$B5,$90,$69,$08,$C5,$AF,$98
       .byte $B0,$04,$29,$FC,$09,$02,$B4,$8F,$C4,$AF,$90,$04,$29,$CF,$09,$10
       .byte $48,$A0,$00,$A5,$80,$29,$06,$F0,$14,$E9,$03,$10,$18,$4D,$82,$02
       .byte $39,$72,$F7,$F0,$02,$A9,$CF,$E0,$02,$B0,$02,$09,$30,$09,$0F,$85
       .byte $D5,$68,$25,$D5,$48,$B5,$9F,$29,$0F,$49,$0F,$F0,$05,$68,$39,$FF
       .byte $F6,$48,$68,$0A,$90,$02,$F6,$97,$0A,$90,$02,$D6,$97,$0A,$90,$02
       .byte $F6,$8F,$0A,$48,$90,$02,$D6,$8F,$A9,$C2,$D5,$8F,$90,$08,$A9,$1F
       .byte $D5,$8F,$B0,$02,$B5,$8F,$95,$8F,$A9,$77,$D5,$97,$90,$08,$A9,$1F
       .byte $D5,$97,$B0,$02,$B5,$97,$95,$97,$E8,$C8,$C0,$02,$90,$95,$68,$8A
       .byte $29,$02,$F0,$03,$4C,$B4,$F3,$A6,$D7,$B5,$8F,$85,$8B,$B5,$90,$85
       .byte $8C,$B5,$97,$85,$8D,$B5,$98,$85,$8E,$4C,$9F,$F3,$A2,$01,$86,$D5
       .byte $A5,$B7,$D0,$02,$B5,$89,$29,$07,$48,$C9,$01,$A5,$D5,$2A,$A8,$A5
       .byte $AF,$18,$79,$7F,$F7,$95,$8F,$18,$79,$B2,$F7,$95,$8B,$95,$91,$95
       .byte $93,$95,$95,$68,$C9,$03,$A9,$00,$2A,$A8,$A9,$4C,$95,$97,$95,$99
       .byte $B9,$83,$F7,$95,$9B,$95,$8D,$B9,$85,$F7,$95,$9D,$B9,$87,$F7,$95
       .byte $C5,$CA,$10,$BA,$A9,$4F,$85,$B0,$60,$18,$69,$37,$48,$4A,$4A,$4A
       .byte $4A,$A8,$68,$29,$0F,$84,$D5,$18,$65,$D5,$C9,$0F,$90,$03,$E9,$0F
       .byte $C8,$C9,$08,$49,$0F,$B0,$03,$69,$01,$88,$0A,$0A,$0A,$0A,$60,$A2
       .byte $00,$AD,$82,$02,$4A,$6A,$B0,$35,$A9,$AA,$85,$C1,$85,$C2,$A9,$0A
       .byte $85,$C4,$85,$C3,$A9,$06,$85,$BC,$CA,$86,$BD,$A9,$C0,$85,$B7,$A4
       .byte $D3,$A6,$D4,$D0,$0E,$C0,$03,$90,$02,$A0,$00,$C8,$84,$D3,$98,$09
       .byte $A0,$85,$C0,$E8,$E0,$3F,$90,$02,$A2,$00,$86,$D4,$60,$86,$D4,$30
       .byte $14,$A2,$0A,$A9,$00,$95,$BA,$CA,$D0,$FB,$E6,$C4,$A9,$05,$85,$C3
       .byte $A9,$53,$4C,$8D,$F6,$A6,$BF,$A5,$81,$F0,$01,$60,$A5,$BB,$F0,$03
       .byte $4C,$85,$F6,$A5,$B9,$D0,$13,$A8,$20,$A5,$F6,$90,$03,$4C,$11,$F6
       .byte $B5,$AA,$10,$08,$E6,$B9,$A9,$0C,$85,$15,$10,$03,$4C,$15,$F6,$B5
       .byte $89,$85,$D6,$F0,$0F,$BD,$7D,$F7,$25,$B8,$5D,$7D,$F7,$20,$EA,$F7
       .byte $F0,$02,$10,$69,$BD,$7D,$F7,$05,$B8,$49,$FF,$20,$EA,$F7,$10,$1B
       .byte $18,$B5,$97,$69,$04,$85,$B0,$BD,$74,$F7,$65,$AF,$C9,$E0,$85,$AF
       .byte $B0,$42,$45,$84,$05,$D6,$F0,$37,$4C,$BA,$F6,$F0,$04,$A5,$D6,$F0
       .byte $DF,$8A,$49,$01,$85,$BF,$4A,$98,$2A,$AA,$A9,$01,$85,$D2,$85,$D9
       .byte $A5,$D6,$F0,$04,$A9,$7F,$85,$DA,$84,$BA,$B5,$8F,$A6,$BF,$18,$69
       .byte $04,$20,$D5,$F7,$B0,$19,$D0,$17,$BD,$93,$F7,$85,$BE,$D0,$5B,$20
       .byte $D3,$F7,$B0,$42,$A5,$D6,$D0,$4E,$BD,$90,$F7,$D0,$65,$84,$BA,$A9
       .byte $04,$85,$15,$A9,$80,$85,$B9,$8A,$4A,$A5,$BA,$2A,$A8,$B9,$9F,$00
       .byte $29,$0F,$49,$0F,$F0,$23,$20,$D3,$F7,$B0,$2F,$98,$29,$01,$49,$01
       .byte $AA,$A9,$7F,$85,$DA,$B9,$5D,$F7,$85,$D9,$F8,$18,$75,$C0,$D8,$95
       .byte $C0,$B9,$8F,$F7,$85,$BE,$4C,$72,$F6,$20,$EA,$F1,$20,$D3,$F7,$B0
       .byte $02,$D0,$D8,$4C,$BA,$F6,$A5,$82,$85,$AF,$A6,$BF,$A4,$D2,$D0,$1B
       .byte $C8,$20,$A5,$F6,$B0,$15,$A4,$C4,$C8,$C0,$05,$90,$10,$A5,$AF,$7D
       .byte $89,$F7,$85,$AF,$A5,$BF,$49,$01,$AA,$85,$BF,$A0,$01,$84,$C4,$A9
       .byte $81,$85,$BB,$85,$15,$85,$BC,$C6,$BB,$D0,$30,$A5,$BE,$F0,$02,$85
       .byte $AF,$A9,$C0,$85,$B7,$85,$81,$A4,$C4,$88,$D0,$08,$BD,$8D,$F7,$18
       .byte $65,$AF,$85,$83,$4C,$9A,$F4,$A5,$AF,$18,$7D,$9D,$F7,$D9,$82,$00
       .byte $F0,$09,$BD,$9D,$F7,$D0,$04,$2A,$49,$01,$6A,$60,$A9,$03,$85,$D6
       .byte $A0,$07,$A2,$01,$20,$DE,$F1,$84,$D5,$B5,$89,$F0,$05,$29,$01,$18
       .byte $69,$01,$0A,$0A,$05,$D6,$A8,$B9,$B6,$F7,$A4,$D3,$C0,$02,$F0,$02
       .byte $25,$C7,$09,$21,$A4,$D6,$D0,$08,$A4,$C8,$F0,$04,$C6,$C8,$49,$33
       .byte $3D,$FD,$F7,$A4,$D5,$99,$CA,$00,$88,$CA,$10,$C8,$C6,$D6,$10,$C2
       .byte $60,$DF,$EF,$3F,$33,$33,$33,$3F,$0C,$0C,$0C,$0C,$0C,$3F,$03,$3F
       .byte $30,$3F,$3F,$30,$3C,$30,$3F,$30,$30,$3F,$33,$03,$3F,$30,$3F,$03
       .byte $3F,$3F,$33,$3F,$03,$3F,$30,$30,$30,$30,$3F,$3F,$33,$3F,$33,$3F
       .byte $3F,$30,$3F,$33,$3F,$00,$00,$00,$00,$00,$80,$00,$80,$00,$7E,$7E
       .byte $5A,$42,$7E,$FF,$BD,$BD,$7E,$66,$E6,$06,$07,$00,$00,$02,$00,$02
       .byte $00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$02,$02
       .byte $07,$07,$02,$1B,$0F,$1B,$0F,$1B,$12,$14,$0F,$14,$0F,$1B,$12,$17
       .byte $14,$17,$77,$BB,$40,$80,$01,$FF,$0E,$F0,$0E,$F0,$05,$0A,$30,$55
       .byte $AA,$D2,$E2,$24,$14,$3B,$2B,$5B,$6B,$03,$06,$02,$FC,$30,$B0,$15
       .byte $F0,$75,$97,$53,$75,$53,$97,$0A,$06,$0E,$00,$D6,$82,$0C,$48,$04
       .byte $00,$20,$00,$00,$00,$E0,$00,$88,$00,$F8,$08,$10,$04,$20,$7E,$7E
       .byte $04,$20,$08,$10,$20,$10,$E0,$F0,$FF,$ED,$ED,$ED,$77,$65,$ED,$65
       .byte $BB,$A9,$A9,$ED,$85,$D5,$0A,$0A,$65,$D5,$99,$E0,$00,$A9,$F7,$99
       .byte $E1,$00,$88,$88,$60,$A5,$AF,$18,$7D,$9D,$F7,$C9,$B8,$B0,$04,$C9
       .byte $38,$B0,$08,$A5,$BF,$2A,$A8,$45,$BF,$29,$01,$60,$A0,$03,$85,$D5
       .byte $A9,$C0,$24,$D5,$D0,$05,$4A,$4A,$88,$10,$F7,$98,$60,$0A,$00,$F0
       .byte $0F,$F0
