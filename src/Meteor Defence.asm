; Disassembly of roms/Meteor Defence.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Meteor Defence.bin
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
REFP1   =  $0C
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
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       JSR    LF900   
       JSR    LF98E   
LF012: JSR    LFAF7   
LF015: STA    WSYNC   
       LDA    $D0     
       LDX    #$02    
       JSR    LF8C3   
       LDA    $D2     
       LDX    #$03    
       JSR    LF8C3   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LF8A7   
       STA    HMCLR   
LF03A: LDA    INTIM   
       BNE    LF03A   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    CXCLR   
       STA    HMCLR   
       LDA    #$07    
       STA    $C6     
       STA    VDELP0  
       STA    VDELP1  
LF051: LDY    $C6     
       LDA    ($BC),Y 
       STA    $C7     
       LDA    ($BA),Y 
       TAX            
       LDA    ($B2),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($B4),Y 
       STA    GRP1    
       LDA    ($B6),Y 
       STA    GRP0    
       LDA    ($B8),Y 
       LDY    $C7     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $C6     
       BPL    LF051   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    #$30    
       STA    NUSIZ0  
       LDA    $CA     
       BEQ    LF092   
       LDA    #$1F    
       JMP    LF094   
LF092: LDA    #$1F    
LF094: STA    COLUP0  
       LDA    $DB     
       EOR    #$F0    
       ORA    #$0F    
       STA    COLUP1  
       STA    WSYNC   
       LDA    $CE     
       LDX    #$00    
       JSR    LF8C3   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $DB     
       STA    COLUBK  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $CE     
       CMP    #$86    
       BCS    LF0CA   
       STA    WSYNC   
       STA    HMOVE   
LF0CA: LDX    #$A0    
       LDA    #$00    
       STA    $C6     
       LDA    #$02    
       CPX    $D1     
       BNE    LF0D8   
       STA    $C6     
LF0D8: DEX            
       LDA    $A2     
       AND    #$0F    
       STA    $C7     
       TAY            
       LDA    $B1     
       BMI    LF10A   
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    $8E     
       STA    GRP0    
       LDA    $C6     
       STA    ENAM0   
       LDA    $A2     
LF0F2: DEY            
       BPL    LF0F2   
       STA    RESP1   
       STA    HMP1    
       LDA    #$00    
       STA    $C6     
       CPX    $D1     
       BNE    LF103   
       STY    $C6     
LF103: DEX            
       TXA            
       LDY    #$1E    
       JMP    LF136   
LF10A: STA    NUSIZ1  
       STA    WSYNC   
       LDA    $8E     
       STA    GRP0    
       LDA    $C6     
       STA    ENAM0   
       LDA    #$00    
       STA    $C6     
       LDA    #$02    
       CPX    $D1     
       BNE    LF124   
       STA    $C6     
       BEQ    LF127   
LF124: NOP            
       CPX    $D1     
LF127: LDY    #$1E    
       LDA    $A2     
       STA    HMP1    
       DEX            
       TXA            
       LDX    $C7     
LF131: DEX            
       BPL    LF131   
       STA    RESP1   
LF136: STA    WSYNC   
       STA    HMOVE   
       TAX            
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($97),Y 
       STA    GRP1    
       LDA    $C6     
       STA    ENAM0   
       LDA    #$00    
       STA    $C6     
       LDA    #$02    
       CPX    $D1     
       BNE    LF153   
       STA    $C6     
LF153: DEX            
       TXA            
       STA    HMCLR   
       DEY            
       BPL    LF136   
       LDA    $A1     
       AND    #$0F    
       STA    $C7     
       TAY            
       LDA    $B0     
       BMI    LF18B   
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    $8D     
       STA    GRP0    
       LDA    $C6     
       STA    ENAM0   
       LDA    $A1     
LF173: DEY            
       BPL    LF173   
       STA    RESP1   
       STA    HMP1    
       LDA    #$00    
       STA    $C6     
       CPX    $D1     
       BNE    LF184   
       STY    $C6     
LF184: DEX            
       TXA            
       LDY    #$1E    
       JMP    LF1B7   
LF18B: STA    NUSIZ1  
       STA    WSYNC   
       LDA    $8D     
       STA    GRP0    
       LDA    $C6     
       STA    ENAM0   
       LDA    #$00    
       STA    $C6     
       LDA    #$02    
       CPX    $D1     
       BNE    LF1A5   
       STA    $C6     
       BEQ    LF1A8   
LF1A5: NOP            
       CPX    $D1     
LF1A8: LDY    #$1E    
       LDA    $A1     
       STA    HMP1    
       DEX            
       TXA            
       LDX    $C7     
LF1B2: DEX            
       BPL    LF1B2   
       STA    RESP1   
LF1B7: STA    WSYNC   
       STA    HMOVE   
       TAX            
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($95),Y 
       STA    GRP1    
       LDA    $C6     
       STA    ENAM0   
       LDA    #$00    
       STA    $C6     
       LDA    #$02    
       CPX    $D1     
       BNE    LF1D4   
       STA    $C6     
LF1D4: DEX            
       TXA            
       STA    HMCLR   
       DEY            
       BPL    LF1B7   
       LDA    $A0     
       AND    #$0F    
       STA    $C7     
       TAY            
       LDA    $AF     
       BMI    LF20C   
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    $8C     
       STA    GRP0    
       LDA    $C6     
       STA    ENAM0   
       LDA    $A0     
LF1F4: DEY            
       BPL    LF1F4   
       STA    RESP1   
       STA    HMP1    
       LDA    #$00    
       STA    $C6     
       CPX    $D1     
       BNE    LF205   
       STY    $C6     
LF205: DEX            
       TXA            
       LDY    #$1E    
       JMP    LF238   
LF20C: STA    NUSIZ1  
       STA    WSYNC   
       LDA    $8C     
       STA    GRP0    
       LDA    $C6     
       STA    ENAM0   
       LDA    #$00    
       STA    $C6     
       LDA    #$02    
       CPX    $D1     
       BNE    LF226   
       STA    $C6     
       BEQ    LF229   
LF226: NOP            
       CPX    $D1     
LF229: LDY    #$1E    
       LDA    $A0     
       STA    HMP1    
       DEX            
       TXA            
       LDX    $C7     
LF233: DEX            
       BPL    LF233   
       STA    RESP1   
LF238: STA    WSYNC   
       STA    HMOVE   
       TAX            
       LDA    ($84),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    GRP1    
       LDA    $C6     
       STA    ENAM0   
       LDA    #$00    
       STA    $C6     
       LDA    #$02    
       CPX    $D1     
       BNE    LF255   
       STA    $C6     
LF255: DEX            
       TXA            
       STA    HMCLR   
       DEY            
       BPL    LF238   
       LDA    $9F     
       AND    #$0F    
       STA    $C7     
       TAY            
       LDA    $AE     
       BMI    LF28D   
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    $8B     
       STA    GRP0    
       LDA    $C6     
       STA    ENAM0   
       LDA    $9F     
LF275: DEY            
       BPL    LF275   
       STA    RESP1   
       STA    HMP1    
       LDA    #$00    
       STA    $C6     
       CPX    $D1     
       BNE    LF286   
       STY    $C6     
LF286: DEX            
       TXA            
       LDY    #$1E    
       JMP    LF2B9   
LF28D: STA    NUSIZ1  
       STA    WSYNC   
       LDA    $8B     
       STA    GRP0    
       LDA    $C6     
       STA    ENAM0   
       LDA    #$00    
       STA    $C6     
       LDA    #$02    
       CPX    $D1     
       BNE    LF2A7   
       STA    $C6     
       BEQ    LF2AA   
LF2A7: NOP            
       CPX    $D1     
LF2AA: LDY    #$1E    
       LDA    $9F     
       STA    HMP1    
       DEX            
       TXA            
       LDX    $C7     
LF2B4: DEX            
       BPL    LF2B4   
       STA    RESP1   
LF2B9: STA    WSYNC   
       STA    HMOVE   
       TAX            
       LDA    ($82),Y 
       STA    GRP0    
       LDA    ($91),Y 
       STA    GRP1    
       LDA    $C6     
       STA    ENAM0   
       LDA    #$00    
       STA    $C6     
       LDA    #$02    
       CPX    $D1     
       BNE    LF2D6   
       STA    $C6     
LF2D6: DEX            
       TXA            
       STA    HMCLR   
       DEY            
       BPL    LF2B9   
       LDA    $9E     
       AND    #$0F    
       STA    $C7     
       TAY            
       LDA    $AD     
       BMI    LF30E   
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    $8A     
       STA    GRP0    
       LDA    $C6     
       STA    ENAM0   
       LDA    $9E     
LF2F6: DEY            
       BPL    LF2F6   
       STA    RESP1   
       STA    HMP1    
       LDA    #$00    
       STA    $C6     
       CPX    $D1     
       BNE    LF307   
       STY    $C6     
LF307: DEX            
       TXA            
       LDY    #$1E    
       JMP    LF33A   
LF30E: STA    NUSIZ1  
       STA    WSYNC   
       LDA    $8A     
       STA    GRP0    
       LDA    $C6     
       STA    ENAM0   
       LDA    #$00    
       STA    $C6     
       LDA    #$02    
       CPX    $D1     
       BNE    LF328   
       STA    $C6     
       BEQ    LF32B   
LF328: NOP            
       CPX    $D1     
LF32B: LDY    #$1E    
       LDA    $9E     
       STA    HMP1    
       DEX            
       TXA            
       LDX    $C7     
LF335: DEX            
       BPL    LF335   
       STA    RESP1   
LF33A: STA    WSYNC   
       STA    HMOVE   
       TAX            
       LDA    ($80),Y 
       STA    GRP0    
       LDA    ($8F),Y 
       STA    GRP1    
       LDA    $C6     
       STA    ENAM0   
       LDA    #$00    
       STA    $C6     
       LDA    #$02    
       CPX    $D1     
       BNE    LF357   
       STA    $C6     
LF357: DEX            
       TXA            
       STA    HMCLR   
       DEY            
       BPL    LF33A   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    #$00    
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$01    
       LDA    #$07    
       SEC            
       SBC    $CC     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C6     
       LDA    $CD     
       STA    $C7     
LF390: STA    WSYNC   
       STA    HMOVE   
       TXA            
       ASL            
       ASL            
       TAY            
       LDA    $C6,X   
       AND    #$F0    
       LSR            
       STA.wy $00B6,Y 
       LDA    $C6,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00B8,Y 
       DEX            
       STA    HMCLR   
       BPL    LF390   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $C6     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$50    
       STA    $B4     
LF3BF: LDY    $C6     
       LDA    ($BC),Y 
       STA    $C7     
       LDA    ($BA),Y 
       TAX            
       LDA    ($B6),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    LFF70,Y 
       STA.w  $001C   
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    ($B4),Y 
       LDY    $C7     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $C6     
       BPL    LF3BF   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       LDY    $F6     
LF3F5: LDA    LFB62,Y 
       STA    $C7     
       LDA    LFB72,Y 
       TAX            
       LDA    LFBB2,Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    LFBA2,Y 
       STA.w  $001C   
       LDA    LFB92,Y 
       STA.w  $001B   
       LDA    LFB82,Y 
       LDY    $C7     
       STA.w  $001C   
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $F6     
       DEY            
       STY    $F6     
       CPY    $F7     
       BNE    LF3F5   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$37    
       STA    TIM64T  
       LDX    #$02    
LF43E: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $BE,X   
       AND    #$F0    
       LSR            
       STA.wy $00B2,Y 
       LDA    $BE,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00B4,Y 
       DEX            
       BPL    LF43E   
       INX            
LF458: LDA    $B2,X   
       CMP    #$00    
       BNE    LF468   
       LDA    #$50    
       STA    $B2,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LF458   
LF468: NOP            
       LDA    $CD     
       BEQ    LF472   
       LDA    VSYNC   
       ASL            
       BCS    LF475   
LF472: JMP    LF53F   
LF475: LDA    #$06    
       STA    $CB     
       LDA    $D1     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $C7     
       ASL            
       TAX            
       LDA    $D1     
       AND    #$1F    
       STA    $C6     
       LDA    $90,X   
       CMP    #$FE    
       BNE    LF493   
       JMP    LF50B   
LF493: LDA    $8F,X   
       CMP    #$E0    
       BNE    LF4A2   
       LDA    #$A0    
       STA    $8F,X   
       LDX    #$01    
       JMP    LF505   
LF4A2: CMP    #$C0    
       BNE    LF4BF   
       LDA    $C6     
       CMP    #$09    
       BCS    LF4B1   
       LDA    #$60    
       JMP    LF501   
LF4B1: CMP    #$11    
       BCS    LF4BA   
       LDA    #$A0    
       JMP    LF501   
LF4BA: LDA    #$80    
       JMP    LF501   
LF4BF: CMP    #$A0    
       BNE    LF4D3   
       LDA    $C6     
       CMP    #$09    
       BCS    LF4CE   
       LDA    #$00    
       JMP    LF501   
LF4CE: LDA    #$40    
       JMP    LF501   
LF4D3: CMP    #$80    
       BNE    LF4E7   
       LDA    $C6     
       CMP    #$09    
       BCS    LF4E2   
       LDA    #$20    
       JMP    LF501   
LF4E2: LDA    #$40    
       JMP    LF501   
LF4E7: CMP    #$60    
       BNE    LF4FB   
       LDA    $C6     
       CMP    RESP1   
       BCS    LF4F6   
       LDA    #$00    
       JMP    LF501   
LF4F6: LDA    #$20    
       JMP    LF501   
LF4FB: LDA    #$FC    
       STA    $90,X   
       LDA    #$00    
LF501: STA    $8F,X   
       LDX    #$02    
LF505: JSR    LFA69   
       JMP    LF53F   
LF50B: LDA    $8F,X   
       CMP    #$00    
       BNE    LF516   
       LDY    #$03    
       JMP    LF532   
LF516: CMP    #$20    
       BNE    LF51F   
       LDY    #$04    
       JMP    LF532   
LF51F: CMP    #$40    
       BNE    LF528   
       LDY    #$05    
       JMP    LF532   
LF528: CMP    #$60    
       BNE    LF53F   
       LDA    #$00    
       STA    $F1     
       LDY    #$06    
LF532: LDA    #$00    
       STA    $8F,X   
       LDA    #$FC    
       STA    $90,X   
       TYA            
       TAX            
       JSR    LFA69   
LF53F: INC    $F5     
       LDA    $F5     
       CMP    #$10    
       BNE    LF54B   
       LDA    #$00    
       STA    $F5     
LF54B: LDA    $CA     
       BEQ    LF553   
       LDY    #$08    
       BNE    LF563   
LF553: BIT    $D4     
       BPL    LF574   
       DEC    $D5     
       LDA    $D5     
       BPL    LF55F   
       LDA    #$00    
LF55F: STA    $D5     
       LDY    #$0C    
LF563: STY    AUDC0   
       EOR    #$3F    
       STA    AUDF0   
       EOR    #$3F    
       LSR            
       LSR            
       SBC    #$0A    
       STA    AUDV0   
       JMP    LF578   
LF574: LDA    #$00    
       STA    AUDV0   
LF578: LDA    $EF     
       BNE    LF5EB   
       LDA    $CB     
       BEQ    LF590   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$07    
       STA    AUDV1   
       LDA    #$06    
       STA    AUDF1   
       DEC    $CB     
       BNE    LF5D5   
LF590: LDA    #$00    
       STA    AUDV1   
       LDX    #$08    
LF596: LDA    $90,X   
       CMP    #$FE    
       BNE    LF5BD   
       LDA    $8F,X   
       CMP    #$60    
       BNE    LF5BD   
       LDA    #$01    
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $F5     
       CMP    #$07    
       BCS    LF5B6   
       LDA    #$0F    
       STA    AUDV1   
       BNE    LF5BA   
LF5B6: LDA    #$00    
       STA    AUDV1   
LF5BA: JMP    LF5D5   
LF5BD: DEX            
       DEX            
       BPL    LF596   
       LDA    $ED     
       BNE    LF5C9   
       STA    AUDV1   
       BEQ    LF5D5   
LF5C9: EOR    #$1F    
       STA    AUDF1   
       LDA    #$0D    
       STA    AUDV1   
       LDA    $F0     
       STA    AUDC1   
LF5D5: LDA    $CA     
       BNE    LF614   
       BIT    $D4     
       BMI    LF5FA   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$02    
       STA    AUDV0   
       LDA    #$0F    
       STA    AUDF0   
       BNE    LF5FA   
LF5EB: JSR    LF8AA   
       AND    #$1F    
       STA    AUDF1   
       DEC    $EF     
       BNE    LF5FA   
       LDA    #$00    
       STA    AUDV1   
LF5FA: LDA    $EC     
       CMP    #$07    
       BNE    LF608   
       LDA    #$20    
       STA    $DE     
       LDA    #$01    
       STA    $EC     
LF608: INC    $EC     
       LDA    $EC     
       CMP    #$05    
       BNE    LF614   
       LDA    #$48    
       STA    $DE     
LF614: JSR    LFB40   
LF617: LDA    INTIM   
       BNE    LF617   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$57    
       STA    TIM64T  
       LDA    $CA     
       BNE    LF671   
       LDA    COLUP1  
       ASL            
       BCS    LF644   
       BIT    $D4     
       BVC    LF688   
       LDA    #$BF    
       AND    $D4     
       STA    $D4     
LF644: LDA    $CD     
       BEQ    LF688   
       LDA    #$00    
       STA    $ED     
       LDA    #$A0    
       STA    $DE     
       LDA    #$1F    
       STA    AUDF0   
       STA    $CA     
       LDA    #$08    
       STA    AUDC0   
       LDA    #$0A    
       STA    AUDV0   
       LDA    $CD     
       SED            
       SEC            
       SBC    #$01    
       BCC    LF668   
       STA    $CD     
LF668: LDY    #$06    
       JSR    LFAA4   
       LDA    #$06    
       STA    $DC     
LF671: DEC    $DC     
       BPL    LF688   
       LDA    #$06    
       STA    $DC     
       DEC    $CA     
       LDA    $CA     
       BEQ    LF683   
       STA    AUDF0   
       BNE    LF688   
LF683: STA    AUDV0   
       JSR    LFB23   
LF688: NOP            
       JSR    LF8EB   
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $C8     
       LDA    SWCHB   
       LSR            
       BCS    LF6AA   
LF69B: LDA    #$FF    
       STA    $F4     
LF69F: LDA    #$06    
       STA    $CD     
       JMP    LF012   
LF6A6: .byte $01,$02,$04,$08
LF6AA: LDA    $F4     
       BNE    LF6B3   
       LDA    REFP1   
       ASL            
       BCC    LF69B   
LF6B3: LDA    $CD     
       BNE    LF6BF   
       LDA    $CA     
       BNE    LF727   
       STA    $F4     
       BEQ    LF69F   
LF6BF: LDA    $CA     
       BEQ    LF6C6   
       JMP    LF727   
LF6C6: LDA    $F4     
       BNE    LF6E3   
       LDA    $F2     
       BNE    LF6DD   
       LDA    #$0F    
       STA    $F2     
       JSR    LF8AA   
       AND    #$03    
       TAY            
       LDA    LF6A6,Y 
       STA    $F3     
LF6DD: DEC    $F2     
       LDA    $F3     
       BNE    LF6E5   
LF6E3: LDA    $C8     
LF6E5: LSR            
       BCS    LF6EC   
       INC    $CF     
       INC    $CF     
LF6EC: LSR            
       BCS    LF6F3   
       DEC    $CF     
       DEC    $CF     
LF6F3: LSR            
       BCS    LF6FA   
       DEC    $CE     
       DEC    $CE     
LF6FA: LSR            
       BCS    LF701   
       INC    $CE     
       INC    $CE     
LF701: LDA    #$9F    
       CMP    $CF     
       BCC    LF70D   
       LDA    #$08    
       CMP    $CF     
       BCC    LF70F   
LF70D: STA    $CF     
LF70F: LDY    $CC     
       CPY    #$03    
       BCS    LF719   
       LDA    #$94    
       BNE    LF71B   
LF719: LDA    #$40    
LF71B: CMP    $CE     
       BCC    LF725   
       LDA    #$20    
       CMP    $CE     
       BCC    LF727   
LF725: STA    $CE     
LF727: NOP            
       LDA    $CA     
       BNE    LF73C   
       LDX    #$03    
LF72E: LDA    $CF     
       STA    $E2,X   
       LDA    $CE     
       STA    $E6,X   
       DEX            
       BPL    LF72E   
       JMP    LF779   
LF73C: DEC    $EA     
       BPL    LF744   
       LDA    #$03    
       STA    $EA     
LF744: DEC    $EB     
       BPL    LF75C   
       LDA    #$0A    
       STA    $EB     
       INC    $E2     
       INC    $E6     
       INC    $E3     
       DEC    $E7     
       DEC    $E4     
       DEC    $E8     
       DEC    $E5     
       INC    $E9     
LF75C: LDX    $EA     
       LDA    $E2,X   
       CMP    #$9F    
       BCS    LF76A   
       CMP    #$09    
       BCC    LF76A   
       STA    $CF     
LF76A: LDA    $E6,X   
       CMP    #$94    
       BCS    LF776   
       CMP    #$08    
       BCC    LF776   
       STA    $CE     
LF776: JMP    LF7A0   
LF779: BIT    $D4     
       BMI    LF7A0   
       LDA    $F4     
       BEQ    LF786   
       LDA    REFP1   
       ASL            
       BCS    LF7C0   
LF786: LDA    $CE     
       ADC    #$08    
       STA    $D0     
       LDA    $CF     
       SEC            
       SBC    #$03    
       STA    $D1     
       LDA    #$80    
       ORA    $D4     
       STA    $D4     
       LDA    #$3F    
       STA    $D5     
       JMP    LF7C0   
LF7A0: BIT    $D4     
       BPL    LF7C0   
       LDA    $D0     
       CLC            
       ADC    #$08    
       STA    $D0     
       CMP    #$9F    
       BCS    LF7B4   
       LDA    VSYNC   
       ASL            
       BCC    LF7C0   
LF7B4: LDA    #$7F    
       AND    $D4     
       STA    $D4     
       LDA    #$00    
       STA    $D0     
       STA    $D1     
LF7C0: NOP            
       LDA    $CF     
       AND    #$1F    
       STA    $C6     
       LDA    $CF     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $C7     
       ASL            
       TAX            
       LDA    $DE     
       CLC            
       ADC    #$08    
       SEC            
       SBC    $C6     
       STA    $80,X   
       LDA    $CA     
       BEQ    LF7E4   
       LDA    #$FE    
       BNE    LF7E6   
LF7E4: LDA    #$FC    
LF7E6: STA    $81,X   
       STA    $E0     
       DEX            
       DEX            
       BMI    LF813   
       LDA    $C6     
       CMP    #$08    
       BCS    LF813   
       LDA    #$07    
       SEC            
       SBC    $C6     
       TAY            
       LDA    $DE     
       STA    $DF     
       LDA    ($DF),Y 
       LDY    $C7     
       DEY            
       STA.wy $008A,Y 
       LDA    $DE     
       SEC            
       SBC    $C6     
       SBC    #$18    
       STA    $80,X   
       LDA    $E0     
       STA    $81,X   
LF813: NOP            
       LDA    $CA     
       BNE    LF81E   
       JSR    LF900   
       JSR    LF98E   
LF81E: SED            
       LDX    #$04    
       LDA    #$FF    
       STA    $C7     
LF825: LDA    LFF9B,X 
       STA    $C6     
       LDY    #$02    
LF82C: LDA.wy $00BE,Y 
       SBC    ($C6),Y 
       DEY            
       BPL    LF82C   
       BCS    LF843   
       DEX            
       BPL    LF825   
       LDA    #$06    
       STA    $CC     
       LDA    #$47    
       STA    $DB     
       BNE    LF84D   
LF843: LDA    LFFA5,X 
       STA    $DB     
       LDA    LFFA0,X 
       STA    $CC     
LF84D: CLD            
       LDA    $CA     
       BEQ    LF862   
       LDA    $DC     
       CMP    #$05    
       BCS    LF85C   
       LDA    #$00    
       BEQ    LF860   
LF85C: LDA    $DB     
       ORA    #$07    
LF860: STA    $DB     
LF862: NOP            
       LDA    $C2     
       AND    #$20    
       BEQ    LF887   
       LDA    $C2     
       AND    #$1F    
       STA    $C2     
       LDA    $CD     
       CMP    #$20    
       BEQ    LF887   
       SED            
       CLC            
       ADC    #$01    
       STA    $CD     
       LDA    #$3F    
       STA    $EF     
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV1   
LF887: CLD            
       JMP    LF015   
LF88B: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $C6     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $C6     
       CMP    #$0F    
       BCC    LF8A3   
       SBC    #$0F    
       INY            
LF8A3: EOR    #$07    
       ASL            
       ASL            
LF8A7: ASL            
       ASL            
       RTS            

LF8AA: LDA    $C9     
       AND    #$40    
       LSR            
       STA    $C7     
       LDA    $C9     
       AND    #$20    
       EOR    $C7     
       BNE    LF8BC   
       CLC            
       BCC    LF8BD   
LF8BC: SEC            
LF8BD: LDA    $C9     
       ROL            
       STA    $C9     
       RTS            

LF8C3: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $C6     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $C6     
       CMP    #$0F    
       BCC    LF8DB   
       SBC    #$0F    
       INY            
LF8DB: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF8E5: DEY            
       BPL    LF8E5   
       STA    RESP0,X 
       RTS            

LF8EB: LDX    #$08    
       LDY    #$04    
LF8EF: LDA    #$00    
       STA    $80,X   
       STA.wy $008A,Y 
       LDA    #$FC    
       STA    $81,X   
       DEY            
       DEX            
       DEX            
       BPL    LF8EF   
       RTS            

LF900: DEC    $EE     
       DEC    $EE     
       BPL    LF90A   
       LDX    #$08    
       STX    $EE     
LF90A: LDX    $EE     
       JSR    LFA5B   
       LDA.wy $0099,Y 
       CMP    #$9F    
       BNE    LF966   
       JSR    LF8AA   
       CMP    #$18    
       BCC    LF949   
       LDY    #$00    
LF91F: CMP    LFF78,Y 
       BCS    LF942   
LF924: BIT    $F1     
       BPL    LF935   
       LDA    LFEC8,Y 
       STA    $8F,X   
       LDA    LFED4,Y 
       STA    $90,X   
       JMP    LF949   
LF935: LDA    LFF83,Y 
       STA    $8F,X   
       LDA    LFF8F,Y 
       STA    $90,X   
       JMP    LF949   
LF942: INY            
       CPY    #$0B    
       BNE    LF91F   
       BEQ    LF924   
LF949: JSR    LF8AA   
       AND    #$03    
       CMP    #$00    
       BNE    LF955   
       JMP    LF960   
LF955: CMP    #$01    
       BNE    LF95E   
       LDA    #$05    
       JMP    LF960   
LF95E: LDA    #$07    
LF960: JSR    LFA5B   
       STA.wy $00AD,Y 
LF966: LDA    $90,X   
       CMP    #$FE    
       BNE    LF98D   
       LDA    $8F,X   
       CMP    #$60    
       BNE    LF976   
       LDA    #$07    
       BNE    LF980   
LF976: CMP    #$40    
       BNE    LF97E   
       LDA    #$04    
       BNE    LF980   
LF97E: LDA    #$0C    
LF980: STA    $F0     
       LDA.wy $0099,Y 
       LSR            
       LSR            
       SBC    #$08    
       BCC    LF98D   
       STA    $ED     
LF98D: RTS            

LF98E: LDX    #$04    
       LDA    #$00    
       STA    $C7     
LF994: JSR    LFA62   
       LDA.wy $0090,Y 
       CMP    #$FC    
       BEQ    LFA08   
       LDA    $99,X   
       CMP    #$9F    
       BNE    LF9B0   
       JSR    LF8AA   
       STA    $C6     
       AND    #$03    
       CLC            
       ADC    #$01    
       STA    $A3,X   
LF9B0: DEC    $A8,X   
       LDA    $A8,X   
       BNE    LFA0C   
       LDA.wy $0090,Y 
       CMP    #$FE    
       BNE    LF9C3   
       LDA    $C6     
       AND    #$07    
       BNE    LF9CC   
LF9C3: STY    $C8     
       LDY    $CC     
       LDA    LFA54,Y 
       LDY    $C8     
LF9CC: STA    $A8,X   
       LDA    $99,X   
       SEC            
       SBC    $A3,X   
       BCS    LFA0A   
       LDA.wy $0090,Y 
       CMP    #$FC    
       BEQ    LFA08   
       CMP    #$FE    
       BEQ    LFA40   
       LDA.wy $008F,Y 
       CMP    #$E0    
       BNE    LF9EB   
       LDY    #$00    
       BEQ    LFA05   
LF9EB: CMP    #$00    
       BEQ    LF9F7   
       CMP    #$20    
       BEQ    LF9F7   
       CMP    #$40    
       BNE    LF9FB   
LF9F7: LDY    #$01    
       BNE    LFA05   
LF9FB: CMP    #$C0    
       BNE    LFA03   
       LDY    #$07    
       BNE    LFA05   
LFA03: LDY    #$02    
LFA05: JSR    LFAA4   
LFA08: LDA    #$9F    
LFA0A: STA    $99,X   
LFA0C: LDA.wy $0090,Y 
       CMP    #$FE    
       BNE    LFA17   
       LDA    #$FF    
       STA    $C7     
LFA17: LDA    $99,X   
       JSR    LF88B   
       STA    $C6     
       DEY            
       DEY            
       DEY            
       ASL    $AD,X   
       CPY    #$06    
       ROR    $AD,X   
       TYA            
       CMP    #$06    
       BCC    LFA2F   
       SEC            
       SBC    #$06    
LFA2F: ORA    $C6     
       STA    $9E,X   
       DEX            
       BMI    LFA39   
       JMP    LF994   
LFA39: LDA    $C7     
       BNE    LFA3F   
       STA    $ED     
LFA3F: RTS            

LFA40: LDA.wy $008F,Y 
       CMP    #$60    
       BNE    LFA4B   
       LDA    #$80    
       STA    $F1     
LFA4B: LDA    #$40    
       ORA    $D4     
       STA    $D4     
       JMP    LFA08   
LFA54: .byte $01,$01,$02,$03,$04,$0C,$0F
LFA5B: STX    $C6     
       LSR    $C6     
       LDY    $C6     
       RTS            

LFA62: STX    $C6     
       ASL    $C6     
       LDY    $C6     
       RTS            

LFA69: TXA            
       LDX    $CC     
       CLC            
       ADC    LFFB9,X 
       TAX            
       LDA    LFFC0,X 
       STA    $D6     
       SED            
       LDY    #$02    
       LDA    #$00    
       STA    $C6     
LFA7D: LDA    ($D6),Y 
       ASL    $C6     
       ASL    $C6     
       ASL    $C6     
       ASL    $C6     
       ASL    $C6     
       ASL    $C6     
       ASL    $C6     
       ADC.wy $00BE,Y 
       STA.wy $00BE,Y 
       ROL    $C6     
       LDA    ($D6),Y 
       ADC.wy $00C1,Y 
       STA.wy $00C1,Y 
       ROL    $C6     
       DEY            
       BPL    LFA7D   
       CLD            
       RTS            

LFAA4: TYA            
       LDY    $CC     
       CLC            
       ADC    LFFB9,Y 
       TAY            
       LDA    LFFC0,Y 
       STA    $D6     
       SED            
       LDY    #$02    
       LDA    #$03    
       STA    $C6     
LFAB8: LDA.wy $00BE,Y 
       ASL    $C6     
       ASL    $C6     
       ASL    $C6     
       ASL    $C6     
       ASL    $C6     
       ASL    $C6     
       ASL    $C6     
       SBC    ($D6),Y 
       STA.wy $00BE,Y 
       ROL    $C6     
       LDA.wy $00C1,Y 
       SBC    ($D6),Y 
       STA.wy $00C1,Y 
       ROL    $C6     
       DEY            
       BPL    LFAB8   
       LDA    #$02    
       AND    $C6     
       BNE    LFAE9   
       STA    $BE     
       STA    $BF     
       STA    $C0     
LFAE9: LDA    #$01    
       AND    $C6     
       BNE    LFAF5   
       STA    $C1     
       STA    $C2     
       STA    $C3     
LFAF5: CLD            
       RTS            

LFAF7: LDX    #$06    
       STX    $CC     
       LDX    #$04    
       LDY    #$08    
LFAFF: LDA    #$01    
       STA    $A3,X   
       STA    $A8,X   
       LDA    #$FC    
       STA    $D7     
       STA.wy $0081,Y 
       LDA    #$00    
       STA    $BE,X   
       DEY            
       DEY            
       DEX            
       BPL    LFAFF   
       STA    $C3     
       STA    $CA     
       STA    $F1     
       LDA    #$C5    
       STA    $C9     
       LDA    #$20    
       STA    $DE     
LFB23: LDX    #$08    
LFB25: LDA    #$FC    
       STA    $90,X   
       LDA    #$00    
       STA    $8F,X   
       LDA    #$FF    
       STA    $B3,X   
       DEX            
       DEX            
       BPL    LFB25   
       STA    $BD     
       LDA    #$20    
       STA    $CE     
       LDA    #$50    
       STA    $CF     
       RTS            

LFB40: LDA    $F4     
       BNE    LFB54   
       DEC    $F8     
       LDA    $F8     
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$07    
       BCS    LFB5A   
       CMP    #$05    
       BCS    LFB58   
LFB54: LDA    #$0F    
       BNE    LFB5A   
LFB58: LDA    #$07    
LFB5A: STA    $F6     
       SEC            
       SBC    #$08    
       STA    $F7     
       RTS            

LFB62: .byte $00,$00,$77,$51,$77,$51,$77,$00,$40,$40,$40,$40,$80,$00,$00,$00
LFB72: .byte $00,$00,$11,$11,$17,$15,$17,$00,$49,$55,$55,$55,$48,$00,$40,$00
LFB82: .byte $80,$80,$AA,$AA,$BA,$22,$27,$02,$4B,$A9,$AB,$AA,$AB,$00,$08,$00
LFB92: .byte $03,$00,$4B,$4A,$6B,$00,$08,$00,$80,$00,$80,$80,$80,$00,$00,$00
LFBA2: .byte $47,$41,$77,$55,$75,$00,$00,$00,$AB,$AA,$AB,$AA,$53,$00,$00,$00
LFBB2: .byte $00,$00,$F7,$95,$87,$80,$90,$F0,$A4,$AA,$AA,$AA,$E4,$80,$80,$80
       .byte $00,$91,$AC,$20,$D2,$2D,$A0,$0C,$B1,$AC,$18,$69,$2D,$85,$AA,$C8
       .byte $B1,$AC,$69,$00,$85,$AB,$A9,$00,$A8,$91,$AA,$68,$AA,$68,$A8,$60
       .byte $24,$A6,$30,$03,$4C,$D5,$2C,$48,$98,$48,$8A,$48,$A5,$A3,$30,$03
       .byte $4C,$96,$2C,$A5,$0C,$38,$E9,$04,$85,$89,$A5,$0D,$E9,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60
       .byte $38,$1C,$17,$1C,$38,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$60,$38,$FC,$17,$FC,$38,$60,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $05,$00,$00,$10,$00,$00,$20,$00,$00,$40,$00,$00,$80,$00,$00,$50
       .byte $00,$01,$00,$00,$00,$30,$00,$00,$10,$00,$00,$20,$00,$00,$40,$00
       .byte $00,$80,$00,$01,$60,$00,$01,$00,$00,$02,$00,$00,$00,$60,$00,$00
       .byte $15,$00,$00,$30,$00,$00,$60,$00,$01,$20,$00,$02,$40,$00,$01,$50
       .byte $00,$03,$00,$00,$00,$90,$00,$00,$20,$00,$00,$40,$00,$00,$80,$00
       .byte $01,$60,$00,$03,$20,$00,$02,$00,$00,$04,$00,$00,$01,$20,$00,$00
       .byte $25,$00,$00,$50,$00,$01,$00,$00,$02,$00,$00,$04,$00,$00,$02,$50
       .byte $00,$05,$00,$00,$01,$50,$00,$00,$30,$00,$00,$60,$00,$01,$20,$00
       .byte $02,$40,$00,$04,$80,$00,$03,$00,$00,$06,$00,$00,$01,$80,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$60,$B0,$F0,$F8,$E8,$78,$50,$70,$20,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$02,$03,$07,$06,$06,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60
       .byte $E0,$F0,$70,$70,$30,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$02,$03,$07,$06,$06,$00,$00,$00
       .byte $00,$00,$60,$B0,$F0,$F8,$E8,$78,$50,$70,$20,$00,$00,$00,$00,$60
       .byte $E0,$F0,$70,$70,$30,$20,$00,$02,$03,$07,$06,$06,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60
       .byte $E0,$F0,$70,$70,$30,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$60,$B0,$F0,$F8,$E8,$78,$50,$70,$20,$00,$00,$00,$00,$60
       .byte $E0,$F0,$70,$70,$30,$20,$00,$00,$02,$03,$07,$06,$06,$00,$00,$00
       .byte $00,$00,$60,$B0,$F0,$F8,$E8,$78,$50,$70,$20,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$10,$30,$30,$38,$38,$5E,$7C,$68,$74,$FC,$5C,$70
       .byte $FE,$F6,$3C,$7C,$64,$18,$1C,$10,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$38,$38,$38,$C6,$C6,$C6,$38,$38,$38,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$38,$C6,$C6,$38
       .byte $38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$92,$54,$10,$28,$54,$92,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$10,$10,$10,$82,$AA,$AA,$44,$44,$28,$28,$44,$6C
       .byte $38,$10,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$44
       .byte $02,$10,$44,$00,$10,$42,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LFEC8: .byte $00,$20,$40,$60,$00,$60,$40,$60,$80,$A0,$C0,$60
LFED4: .byte $FE,$FE,$FE,$FE,$FD,$FE,$FD,$FE,$FD,$FD,$FD,$FE,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66
       .byte $66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C
       .byte $06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E
       .byte $4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66
       .byte $7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C
       .byte $3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$03,$02,$02,$02,$02,$02,$03,$00,$94,$55,$56
       .byte $54,$40,$40,$80,$00,$52,$5E,$D2,$4C,$00,$00,$00
LFF70: .byte $00,$90,$60,$60,$90,$00,$00,$00
LFF78: .byte $1F,$25,$2B,$31,$39,$41,$4A,$52,$5A,$63,$71
LFF83: .byte $00,$20,$40,$60,$00,$20,$40,$60,$80,$A0,$C0,$E0
LFF8F: .byte $FE,$FE,$FE,$FE,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFF9B: .byte $AA,$AD,$B0,$B3,$B6
LFFA0: .byte $05,$04,$03,$02,$01
LFFA5: .byte $37,$27,$C7,$87,$37,$00,$30,$00,$01,$00,$00,$02,$00,$00,$05,$00
       .byte $00,$10,$00,$00
LFFB9: .byte $00,$28,$20,$18,$10,$08,$00
LFFC0: .byte $70,$73,$76,$79,$7C,$7F,$82,$85,$88,$8B,$8E,$91,$94,$97,$9A,$9D
       .byte $A0,$A3,$A6,$A9,$AC,$AF,$B2,$B5,$B8,$BB,$BE,$C1,$C4,$C7,$CA,$CD
       .byte $D0,$D3,$D6,$D9,$DC,$DF,$E2,$E5,$E8,$EB,$EE,$F1,$F4,$F7,$FA,$FD
       .byte $AD,$A0,$D3,$AD,$A0,$A0,$AD,$A0,$D3,$AD,$A0,$A0,$00,$F0,$E0,$88
