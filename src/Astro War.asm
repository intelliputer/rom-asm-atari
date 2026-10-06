; Disassembly of roms/Astro War.bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Astro War.bin
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
       JSR    LF8E2   
       JSR    LF970   
LF012: JSR    LFAD9   
LF015: STA    WSYNC   
       LDA    $D0     
       LDX    #$02    
       JSR    LF8A5   
       LDA    $D2     
       LDX    #$03    
       JSR    LF8A5   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LF889   
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
       JSR    LF8A5   
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
       STA    GRP1    
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
       STA    HMOVE   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP1    
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$07    
LF3FC: STA    WSYNC   
       STA    HMOVE   
       LDA    LFF58,X 
       STA    GRP0    
       LDA    LFF60,X 
       STA    GRP1    
       NOP            
       LDA    LFF70,X 
       TAY            
       LDA    LFF68,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF3FC   
       LDA    #$20    
       STA    TIM64T  
       LDX    #$02    
LF422: TXA            
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
       BPL    LF422   
       INX            
LF43C: LDA    $B2,X   
       CMP    #$00    
       BNE    LF44C   
       LDA    #$50    
       STA    $B2,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LF43C   
LF44C: NOP            
       LDA    $CD     
       BEQ    LF456   
       LDA    VSYNC   
       ASL            
       BCS    LF459   
LF456: JMP    LF523   
LF459: LDA    #$06    
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
       BNE    LF477   
       JMP    LF4EF   
LF477: LDA    $8F,X   
       CMP    #$E0    
       BNE    LF486   
       LDA    #$A0    
       STA    $8F,X   
       LDX    #$01    
       JMP    LF4E9   
LF486: CMP    #$C0    
       BNE    LF4A3   
       LDA    $C6     
       CMP    #$09    
       BCS    LF495   
       LDA    #$60    
       JMP    LF4E5   
LF495: CMP    #$11    
       BCS    LF49E   
       LDA    #$A0    
       JMP    LF4E5   
LF49E: LDA    #$80    
       JMP    LF4E5   
LF4A3: CMP    #$A0    
       BNE    LF4B7   
       LDA    $C6     
       CMP    #$09    
       BCS    LF4B2   
       LDA    #$00    
       JMP    LF4E5   
LF4B2: LDA    #$40    
       JMP    LF4E5   
LF4B7: CMP    #$80    
       BNE    LF4CB   
       LDA    $C6     
       CMP    #$09    
       BCS    LF4C6   
       LDA    #$20    
       JMP    LF4E5   
LF4C6: LDA    #$40    
       JMP    LF4E5   
LF4CB: CMP    #$60    
       BNE    LF4DF   
       LDA    $C6     
       CMP    RESP1   
       BCS    LF4DA   
       LDA    #$00    
       JMP    LF4E5   
LF4DA: LDA    #$20    
       JMP    LF4E5   
LF4DF: LDA    #$FC    
       STA    $90,X   
       LDA    #$00    
LF4E5: STA    $8F,X   
       LDX    #$02    
LF4E9: JSR    LFA4B   
       JMP    LF523   
LF4EF: LDA    $8F,X   
       CMP    #$00    
       BNE    LF4FA   
       LDY    #$03    
       JMP    LF516   
LF4FA: CMP    #$20    
       BNE    LF503   
       LDY    #$04    
       JMP    LF516   
LF503: CMP    #$40    
       BNE    LF50C   
       LDY    #$05    
       JMP    LF516   
LF50C: CMP    #$60    
       BNE    LF523   
       LDA    #$00    
       STA    $F1     
       LDY    #$06    
LF516: LDA    #$00    
       STA    $8F,X   
       LDA    #$FC    
       STA    $90,X   
       TYA            
       TAX            
       JSR    LFA4B   
LF523: INC    $F5     
       LDA    $F5     
       CMP    #$10    
       BNE    LF52F   
       LDA    #$00    
       STA    $F5     
LF52F: LDA    $CA     
       BEQ    LF537   
       LDY    #$08    
       BNE    LF547   
LF537: BIT    $D4     
       BPL    LF558   
       DEC    $D5     
       LDA    $D5     
       BPL    LF543   
       LDA    #$00    
LF543: STA    $D5     
       LDY    #$0C    
LF547: STY    AUDC0   
       EOR    #$3F    
       STA    AUDF0   
       EOR    #$3F    
       LSR            
       LSR            
       SBC    #$0A    
       STA    AUDV0   
       JMP    LF55C   
LF558: LDA    #$00    
       STA    AUDV0   
LF55C: LDA    $EF     
       BNE    LF5CF   
       LDA    $CB     
       BEQ    LF574   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$07    
       STA    AUDV1   
       LDA    #$06    
       STA    AUDF1   
       DEC    $CB     
       BNE    LF5B9   
LF574: LDA    #$00    
       STA    AUDV1   
       LDX    #$08    
LF57A: LDA    $90,X   
       CMP    #$FE    
       BNE    LF5A1   
       LDA    $8F,X   
       CMP    #$60    
       BNE    LF5A1   
       LDA    #$01    
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $F5     
       CMP    #$07    
       BCS    LF59A   
       LDA    #$0F    
       STA    AUDV1   
       BNE    LF59E   
LF59A: LDA    #$00    
       STA    AUDV1   
LF59E: JMP    LF5B9   
LF5A1: DEX            
       DEX            
       BPL    LF57A   
       LDA    $ED     
       BNE    LF5AD   
       STA    AUDV1   
       BEQ    LF5B9   
LF5AD: EOR    #$1F    
       STA    AUDF1   
       LDA    #$0D    
       STA    AUDV1   
       LDA    $F0     
       STA    AUDC1   
LF5B9: LDA    $CA     
       BNE    LF5F8   
       BIT    $D4     
       BMI    LF5DE   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$02    
       STA    AUDV0   
       LDA    #$0F    
       STA    AUDF0   
       BNE    LF5DE   
LF5CF: JSR    LF88C   
       AND    #$1F    
       STA    AUDF1   
       DEC    $EF     
       BNE    LF5DE   
       LDA    #$00    
       STA    AUDV1   
LF5DE: LDA    $EC     
       CMP    #$07    
       BNE    LF5EC   
       LDA    #$20    
       STA    $DE     
       LDA    #$01    
       STA    $EC     
LF5EC: INC    $EC     
       LDA    $EC     
       CMP    #$05    
       BNE    LF5F8   
       LDA    #$48    
       STA    $DE     
LF5F8: NOP            
LF5F9: LDA    INTIM   
       BNE    LF5F9   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$30    
       STA    TIM64T  
       LDA    $CA     
       BNE    LF653   
       LDA    COLUP1  
       ASL            
       BCS    LF626   
       BIT    $D4     
       BVC    LF66A   
       LDA    #$BF    
       AND    $D4     
       STA    $D4     
LF626: LDA    $CD     
       BEQ    LF66A   
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
       BCC    LF64A   
       STA    $CD     
LF64A: LDY    #$06    
       JSR    LFA86   
       LDA    #$06    
       STA    $DC     
LF653: DEC    $DC     
       BPL    LF66A   
       LDA    #$06    
       STA    $DC     
       DEC    $CA     
       LDA    $CA     
       BEQ    LF665   
       STA    AUDF0   
       BNE    LF66A   
LF665: STA    AUDV0   
       JSR    LFB05   
LF66A: NOP            
       JSR    LF8CD   
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $C8     
       LDA    SWCHB   
       LSR            
       BCS    LF68C   
LF67D: LDA    #$FF    
       STA    $F4     
LF681: LDA    #$06    
       STA    $CD     
       JMP    LF012   
LF688: .byte $01,$02,$04,$08
LF68C: LDA    $F4     
       BNE    LF695   
       LDA    REFP1   
       ASL            
       BCC    LF67D   
LF695: LDA    $CD     
       BNE    LF6A1   
       LDA    $CA     
       BNE    LF709   
       STA    $F4     
       BEQ    LF681   
LF6A1: LDA    $CA     
       BEQ    LF6A8   
       JMP    LF709   
LF6A8: LDA    $F4     
       BNE    LF6C5   
       LDA    $F2     
       BNE    LF6BF   
       LDA    #$0F    
       STA    $F2     
       JSR    LF88C   
       AND    #$03    
       TAY            
       LDA    LF688,Y 
       STA    $F3     
LF6BF: DEC    $F2     
       LDA    $F3     
       BNE    LF6C7   
LF6C5: LDA    $C8     
LF6C7: LSR            
       BCS    LF6CE   
       INC    $CF     
       INC    $CF     
LF6CE: LSR            
       BCS    LF6D5   
       DEC    $CF     
       DEC    $CF     
LF6D5: LSR            
       BCS    LF6DC   
       DEC    $CE     
       DEC    $CE     
LF6DC: LSR            
       BCS    LF6E3   
       INC    $CE     
       INC    $CE     
LF6E3: LDA    #$9F    
       CMP    $CF     
       BCC    LF6EF   
       LDA    #$08    
       CMP    $CF     
       BCC    LF6F1   
LF6EF: STA    $CF     
LF6F1: LDY    $CC     
       CPY    #$03    
       BCS    LF6FB   
       LDA    #$94    
       BNE    LF6FD   
LF6FB: LDA    #$40    
LF6FD: CMP    $CE     
       BCC    LF707   
       LDA    #$20    
       CMP    $CE     
       BCC    LF709   
LF707: STA    $CE     
LF709: NOP            
       LDA    $CA     
       BNE    LF71E   
       LDX    #$03    
LF710: LDA    $CF     
       STA    $E2,X   
       LDA    $CE     
       STA    $E6,X   
       DEX            
       BPL    LF710   
       JMP    LF75B   
LF71E: DEC    $EA     
       BPL    LF726   
       LDA    #$03    
       STA    $EA     
LF726: DEC    $EB     
       BPL    LF73E   
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
LF73E: LDX    $EA     
       LDA    $E2,X   
       CMP    #$9F    
       BCS    LF74C   
       CMP    #$09    
       BCC    LF74C   
       STA    $CF     
LF74C: LDA    $E6,X   
       CMP    #$94    
       BCS    LF758   
       CMP    #$08    
       BCC    LF758   
       STA    $CE     
LF758: JMP    LF782   
LF75B: BIT    $D4     
       BMI    LF782   
       LDA    $F4     
       BEQ    LF768   
       LDA    REFP1   
       ASL            
       BCS    LF7A2   
LF768: LDA    $CE     
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
       JMP    LF7A2   
LF782: BIT    $D4     
       BPL    LF7A2   
       LDA    $D0     
       CLC            
       ADC    #$08    
       STA    $D0     
       CMP    #$9F    
       BCS    LF796   
       LDA    VSYNC   
       ASL            
       BCC    LF7A2   
LF796: LDA    #$7F    
       AND    $D4     
       STA    $D4     
       LDA    #$00    
       STA    $D0     
       STA    $D1     
LF7A2: NOP            
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
       BEQ    LF7C6   
       LDA    #$FE    
       BNE    LF7C8   
LF7C6: LDA    #$FC    
LF7C8: STA    $81,X   
       STA    $E0     
       DEX            
       DEX            
       BMI    LF7F5   
       LDA    $C6     
       CMP    #$08    
       BCS    LF7F5   
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
LF7F5: NOP            
       LDA    $CA     
       BNE    LF800   
       JSR    LF8E2   
       JSR    LF970   
LF800: SED            
       LDX    #$04    
       LDA    #$FF    
       STA    $C7     
LF807: LDA    LFF9B,X 
       STA    $C6     
       LDY    #$02    
LF80E: LDA.wy $00BE,Y 
       SBC    ($C6),Y 
       DEY            
       BPL    LF80E   
       BCS    LF825   
       DEX            
       BPL    LF807   
       LDA    #$06    
       STA    $CC     
       LDA    #$37    
       STA    $DB     
       BNE    LF82F   
LF825: LDA    LFFA5,X 
       STA    $DB     
       LDA    LFFA0,X 
       STA    $CC     
LF82F: CLD            
       LDA    $CA     
       BEQ    LF844   
       LDA    $DC     
       CMP    #$05    
       BCS    LF83E   
       LDA    #$00    
       BEQ    LF842   
LF83E: LDA    $DB     
       ORA    #$07    
LF842: STA    $DB     
LF844: NOP            
       LDA    $C2     
       AND    #$20    
       BEQ    LF869   
       LDA    $C2     
       AND    #$1F    
       STA    $C2     
       LDA    $CD     
       CMP    #$20    
       BEQ    LF869   
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
LF869: CLD            
       JMP    LF015   
LF86D: CLC            
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
       BCC    LF885   
       SBC    #$0F    
       INY            
LF885: EOR    #$07    
       ASL            
       ASL            
LF889: ASL            
       ASL            
       RTS            

LF88C: LDA    $C9     
       AND    #$40    
       LSR            
       STA    $C7     
       LDA    $C9     
       AND    #$20    
       EOR    $C7     
       BNE    LF89E   
       CLC            
       BCC    LF89F   
LF89E: SEC            
LF89F: LDA    $C9     
       ROL            
       STA    $C9     
       RTS            

LF8A5: CLC            
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
       BCC    LF8BD   
       SBC    #$0F    
       INY            
LF8BD: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF8C7: DEY            
       BPL    LF8C7   
       STA    RESP0,X 
       RTS            

LF8CD: LDX    #$08    
       LDY    #$04    
LF8D1: LDA    #$00    
       STA    $80,X   
       STA.wy $008A,Y 
       LDA    #$FC    
       STA    $81,X   
       DEY            
       DEX            
       DEX            
       BPL    LF8D1   
       RTS            

LF8E2: DEC    $EE     
       DEC    $EE     
       BPL    LF8EC   
       LDX    #$08    
       STX    $EE     
LF8EC: LDX    $EE     
       JSR    LFA3D   
       LDA.wy $0099,Y 
       CMP    #$9F    
       BNE    LF948   
       JSR    LF88C   
       CMP    #$18    
       BCC    LF92B   
       LDY    #$00    
LF901: CMP    LFF78,Y 
       BCS    LF924   
LF906: BIT    $F1     
       BPL    LF917   
       LDA    LFEC8,Y 
       STA    $8F,X   
       LDA    LFED4,Y 
       STA    $90,X   
       JMP    LF92B   
LF917: LDA    LFF83,Y 
       STA    $8F,X   
       LDA    LFF8F,Y 
       STA    $90,X   
       JMP    LF92B   
LF924: INY            
       CPY    #$0B    
       BNE    LF901   
       BEQ    LF906   
LF92B: JSR    LF88C   
       AND    #$03    
       CMP    #$00    
       BNE    LF937   
       JMP    LF942   
LF937: CMP    #$01    
       BNE    LF940   
       LDA    #$05    
       JMP    LF942   
LF940: LDA    #$07    
LF942: JSR    LFA3D   
       STA.wy $00AD,Y 
LF948: LDA    $90,X   
       CMP    #$FE    
       BNE    LF96F   
       LDA    $8F,X   
       CMP    #$60    
       BNE    LF958   
       LDA    #$07    
       BNE    LF962   
LF958: CMP    #$40    
       BNE    LF960   
       LDA    #$04    
       BNE    LF962   
LF960: LDA    #$0C    
LF962: STA    $F0     
       LDA.wy $0099,Y 
       LSR            
       LSR            
       SBC    #$08    
       BCC    LF96F   
       STA    $ED     
LF96F: RTS            

LF970: LDX    #$04    
       LDA    #$00    
       STA    $C7     
LF976: JSR    LFA44   
       LDA.wy $0090,Y 
       CMP    #$FC    
       BEQ    LF9EA   
       LDA    $99,X   
       CMP    #$9F    
       BNE    LF992   
       JSR    LF88C   
       STA    $C6     
       AND    #$03    
       CLC            
       ADC    #$01    
       STA    $A3,X   
LF992: DEC    $A8,X   
       LDA    $A8,X   
       BNE    LF9EE   
       LDA.wy $0090,Y 
       CMP    #$FE    
       BNE    LF9A5   
       LDA    $C6     
       AND    #$07    
       BNE    LF9AE   
LF9A5: STY    $C8     
       LDY    $CC     
       LDA    LFA36,Y 
       LDY    $C8     
LF9AE: STA    $A8,X   
       LDA    $99,X   
       SEC            
       SBC    $A3,X   
       BCS    LF9EC   
       LDA.wy $0090,Y 
       CMP    #$FC    
       BEQ    LF9EA   
       CMP    #$FE    
       BEQ    LFA22   
       LDA.wy $008F,Y 
       CMP    #$E0    
       BNE    LF9CD   
       LDY    #$00    
       BEQ    LF9E7   
LF9CD: CMP    #$00    
       BEQ    LF9D9   
       CMP    #$20    
       BEQ    LF9D9   
       CMP    #$40    
       BNE    LF9DD   
LF9D9: LDY    #$01    
       BNE    LF9E7   
LF9DD: CMP    #$C0    
       BNE    LF9E5   
       LDY    #$07    
       BNE    LF9E7   
LF9E5: LDY    #$02    
LF9E7: JSR    LFA86   
LF9EA: LDA    #$9F    
LF9EC: STA    $99,X   
LF9EE: LDA.wy $0090,Y 
       CMP    #$FE    
       BNE    LF9F9   
       LDA    #$FF    
       STA    $C7     
LF9F9: LDA    $99,X   
       JSR    LF86D   
       STA    $C6     
       DEY            
       DEY            
       DEY            
       ASL    $AD,X   
       CPY    #$06    
       ROR    $AD,X   
       TYA            
       CMP    #$06    
       BCC    LFA11   
       SEC            
       SBC    #$06    
LFA11: ORA    $C6     
       STA    $9E,X   
       DEX            
       BMI    LFA1B   
       JMP    LF976   
LFA1B: LDA    $C7     
       BNE    LFA21   
       STA    $ED     
LFA21: RTS            

LFA22: LDA.wy $008F,Y 
       CMP    #$60    
       BNE    LFA2D   
       LDA    #$80    
       STA    $F1     
LFA2D: LDA    #$40    
       ORA    $D4     
       STA    $D4     
       JMP    LF9EA   
LFA36: .byte $01,$01,$02,$03,$04,$0C,$0F
LFA3D: STX    $C6     
       LSR    $C6     
       LDY    $C6     
       RTS            

LFA44: STX    $C6     
       ASL    $C6     
       LDY    $C6     
       RTS            

LFA4B: TXA            
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
LFA5F: LDA    ($D6),Y 
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
       BPL    LFA5F   
       CLD            
       RTS            

LFA86: TYA            
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
LFA9A: LDA.wy $00BE,Y 
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
       BPL    LFA9A   
       LDA    #$02    
       AND    $C6     
       BNE    LFACB   
       STA    $BE     
       STA    $BF     
       STA    $C0     
LFACB: LDA    #$01    
       AND    $C6     
       BNE    LFAD7   
       STA    $C1     
       STA    $C2     
       STA    $C3     
LFAD7: CLD            
       RTS            

LFAD9: LDX    #$06    
       STX    $CC     
       LDX    #$04    
       LDY    #$08    
LFAE1: LDA    #$01    
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
       BPL    LFAE1   
       STA    $C3     
       STA    $CA     
       STA    $F1     
       LDA    #$C5    
       STA    $C9     
       LDA    #$20    
       STA    $DE     
LFB05: LDX    #$08    
LFB07: LDA    #$FC    
       STA    $90,X   
       LDA    #$00    
       STA    $8F,X   
       LDA    #$FF    
       STA    $B3,X   
       DEX            
       DEX            
       BPL    LFB07   
       STA    $BD     
       LDA    #$20    
       STA    $CE     
       LDA    #$50    
       STA    $CF     
       RTS            

LFB22: .byte $20,$28,$AB,$4C,$7F,$B3,$20,$DC,$AB,$A9,$01,$8D,$E3,$B5,$AE,$BE
       .byte $B5,$AD,$BD,$B5,$D0,$05,$E0,$00,$D0,$01,$E8,$8D,$E8,$B5,$8E,$E9
       .byte $B5,$20,$C9,$B1,$90,$5E,$8E,$9C,$B3,$AE,$5F,$AA,$BD,$09,$A9,$AE
       .byte $9C,$B3,$4A,$B0,$0D,$AD,$51,$AA,$C9,$C0,$D0,$03,$4C,$5F,$B3,$4C
       .byte $73,$B3,$A9,$00,$9D,$E8,$B4,$A9,$01,$9D,$E7,$B4,$8E,$9C,$B3,$20
       .byte $44,$B2,$AE,$9C,$B3,$9D,$C7,$B4,$8D,$D2,$B5,$8D,$D4,$B5,$AD,$F1
       .byte $B5,$9D,$C6,$B4,$8D,$D1,$B5,$8D,$D3,$B5,$AD,$C2,$B5,$9D,$C8,$B4
       .byte $20,$37,$B0,$20,$0C,$AF,$20,$D6,$B7,$20,$3A,$AF,$AE,$9C,$B3,$A9
       .byte $06,$8D,$C5,$B5,$BD,$C6,$B4,$8D,$D1,$B5,$BD,$C7,$B4,$8D,$D2,$B5
       .byte $BD,$C8,$B4,$8D,$C2,$B5,$8D,$F6,$B5,$BD,$E7,$B4,$8D,$EE,$B5,$BD
       .byte $E8,$B4,$8D,$EF,$B5,$8E,$D9,$B5,$A9,$FF,$8D,$E0,$B5,$8D,$E1,$B5
       .byte $AD,$E2,$B3,$8D,$DA,$B5,$18,$4C,$5E,$AF,$A9,$00,$AA,$9D,$D1,$B5
       .byte $E8,$E0,$2D,$D0,$F8,$AD,$BF,$B5,$49,$FF,$8D,$F9,$B5,$AD,$C0,$B5
       .byte $8D,$F8,$B5,$AD,$C1,$B5,$0A,$0A,$0A,$0A,$AA,$8E,$F7,$B5,$00,$00
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
       .byte $00,$00,$00,$00
LFF58: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFF60: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFF68: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFF70: .byte $00,$90,$60,$60,$90,$00,$00,$00
LFF78: .byte $1F,$25,$2B,$31,$39,$41,$4A,$52,$5A,$63,$71
LFF83: .byte $00,$20,$40,$60,$00,$20,$40,$60,$80,$A0,$C0,$E0
LFF8F: .byte $FE,$FE,$FE,$FE,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFF9B: .byte $AA,$AD,$B0,$B3,$B6
LFFA0: .byte $05,$04,$03,$02,$01
LFFA5: .byte $D7,$F7,$57,$D7,$A7,$00,$30,$00,$01,$00,$00,$02,$00,$00,$05,$00
       .byte $00,$10,$00,$00
LFFB9: .byte $00,$28,$20,$18,$10,$08,$00
LFFC0: .byte $70,$73,$76,$79,$7C,$7F,$82,$85,$88,$8B,$8E,$91,$94,$97,$9A,$9D
       .byte $A0,$A3,$A6,$A9,$AC,$AF,$B2,$B5,$B8,$BB,$BE,$C1,$C4,$C7,$CA,$CD
       .byte $D0,$D3,$D6,$D9,$DC,$DF,$E2,$E5,$E8,$EB,$EE,$F1,$F4,$F7,$FA,$FD
       .byte $AD,$A0,$D3,$AD,$A0,$A0,$AD,$A0,$D3,$AD,$A0,$A0,$00,$F0,$E0,$88
