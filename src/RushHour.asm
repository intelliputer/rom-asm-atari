; Disassembly of roms/RushHour.BIN
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/RushHour.BIN
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       STA    SWACNT  
       STA    SWBCNT  
       LDA    #$01    
       STA    $F9     
       LDA    #$50    
       STA    $F4     
       LDA    #$32    
       STA    $E3     
       LDA    #$08    
       STA    $E7     
LF021: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$15    
       STA    TIM64T  
       INC    $FA     
       LDX    #$04    
LF03C: LDY    $BD,X   
       INC    $AE,X   
       LDA    $AE,X   
       CMP    LFF57,Y 
       BNE    LF04C   
       LDA    LFF56,Y 
       STA    $AE,X   
LF04C: DEX            
       BPL    LF03C   
LF04F: LDA    INTIM   
       AND    #$3F    
       BNE    LF04F   
       LDA    #$17    
       STA    TIM64T  
       STA    WSYNC   
       LDX    #$00    
       STX    WSYNC   
       STX    VBLANK  
       STX    $E4     
LF065: LDX    $E4     
       LDA    $DD,X   
       AND    #$0F    
       ASL            
       TAY            
       TXA            
       ASL            
       ASL            
       TAX            
       LDA    LFE55,Y 
       STA    $95,X   
       LDA    LFE56,Y 
       STA    $96,X   
       LDX    $E4     
       LDA    $DD,X   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       TAY            
       TXA            
       ASL            
       ASL            
       TAX            
       LDA    LFE55,Y 
       STA    $97,X   
       LDA    LFE56,Y 
       STA    $98,X   
       INC    $E4     
       LDA    $E4     
       CMP    #$03    
       BNE    LF065   
       LDA    #$14    
       LDX    #$00    
       JSR    LFBE2   
       LDA    #$1C    
       LDX    #$01    
       JSR    LFBE2   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    #$5A    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    CXCLR   
       STA    HMCLR   
       LDA    #$07    
       STA    $DA     
       LDA    #$FF    
       STA    VDELP0  
       STA    VDELP1  
LF0CB: LDA    INTIM   
       AND    #$3F    
       BNE    LF0CB   
       LDA    #$2D    
       STA    TIM64T  
       LDA    $AA     
LF0D9: LDY    $DA     
       LDA    ($95),Y 
       STA    $E4     
       LDA    ($97),Y 
       TAX            
       LDA    ($9F),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($9D),Y 
       STA    GRP1    
       LDA    ($9B),Y 
       STA    GRP0    
       LDA    ($99),Y 
       LDY    $E4     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $DA     
       BPL    LF0D9   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       LDX    #$04    
LF113: LDA    $CC,X   
       AND    #$80    
       BEQ    LF11F   
       LDA    #$0F    
       STA    $EA     
       BNE    LF122   
LF11F: DEX            
       BPL    LF113   
LF122: LDX    #$04    
       STX    $E4     
LF126: LDX    $E4     
       LDA    $C2,X   
       JSR    LFB9F   
       STX    $DA     
       LDX    $E4     
       STA    $B3,X   
       LDA    $DA     
       STA    $A9,X   
       DEC    $E4     
       BPL    LF126   
       LDX    #$04    
LF13D: LDA    $AE,X   
       ASL            
       TAY            
       LDA    $CC,X   
       AND    #$40    
       BEQ    LF153   
       LDA    $B8,X   
       BNE    LF153   
       LDY    #$1E    
       LDA    $CC,X   
       AND    #$F7    
       STA    $CC,X   
LF153: LDA    LFF20,Y 
       STA    $95,X   
       LDA    LFF21,Y 
       STA    $9A,X   
       LDY    $BD,X   
       CPY    #$07    
       BNE    LF169   
       LDA    $D1,X   
       CMP    #$05    
       BCC    LF17C   
LF169: TYA            
       ASL            
       TAY            
       LDA    $CC,X   
       AND    #$47    
       BEQ    LF17E   
       AND    #$40    
       BNE    LF17C   
       LDA    $F5     
       AND    #$03    
       BNE    LF17E   
LF17C: LDY    #$0C    
LF17E: LDA    LFF44,Y 
       STA    $9F,X   
       LDA    LFF45,Y 
       STA    $A4,X   
       DEX            
       BPL    LF13D   
       LDA    $F5     
       AND    #$01    
       BNE    LF1B7   
       LDA    $E6     
       BEQ    LF1B7   
       TAY            
       LDA    LFCB6,Y 
       AND    #$0F    
       TAX            
       LDA    LFF9C,X 
       STA    $FB     
       LDA    LFF9D,X 
       STA    $FC     
       LDA    #$5F    
       STA    COLUPF  
       LDX    $E6     
       LDA    LFCB6,X 
       STA    $F3     
       LDA    LFD00,X 
       JMP    LF1CC   
LF1B7: LDA    $F5     
       AND    #$02    
       TAX            
       LDA    LFF9C,X 
       STA    $FB     
       LDA    LFF9D,X 
       STA    $FC     
       LDA    #$3F    
       STA    COLUPF  
       LDA    #$58    
LF1CC: STA    HMCLR   
       CLC            
       ADC    $F4     
       LDX    #$04    
       JSR    LFBE2   
       LDA    #$50    
       CLC            
       ADC    $F4     
       LDX    #$00    
       JSR    LFBE2   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$05    
       LDA    LFF20   
LF1E9: STA    $87,X   
       STA    $80,X   
       STA    $8E,X   
       DEX            
       BPL    LF1E9   
       LDA    LFF21   
       STA    $86     
       STA    $8D     
       STA    $94     
       LDA    $E3     
       CLC            
       ADC    #$0B    
       STA    $DA     
       LDX    #$05    
LF204: LDA    $DA     
       CMP    #$1F    
       BCS    LF21E   
       LDA    $DB     
       ASL            
       TAY            
       LDA    LFF90,Y 
       CLC            
       ADC    $DA     
       STA    $80,X   
       LDA    LFF96,Y 
       CLC            
       ADC    $DA     
       STA    $87,X   
LF21E: LDA    $DA     
       SEC            
       SBC    #$14    
       BCC    LF22A   
       STA    $DA     
       DEX            
       BPL    LF204   
LF22A: LDA    $E7     
       AND    #$40    
       BNE    LF25F   
       LDX    $E3     
       LDA    $E6     
       BEQ    LF23E   
       LDA    $F5     
       AND    #$01    
       BNE    LF23E   
       LDX    $E8     
LF23E: TXA            
       CLC            
       ADC    #$09    
       STA    $DA     
       LDX    #$05    
LF246: LDA    $DA     
       CMP    #$1D    
       BCS    LF253   
       LDA    $FB     
       CLC            
       ADC    $DA     
       STA    $8E,X   
LF253: LDA    $DA     
       SEC            
       SBC    #$14    
       BCC    LF25F   
       STA    $DA     
       DEX            
       BPL    LF246   
LF25F: LDA    $F3     
       STA    CTRLPF  
       LDA    #$05    
       STA    $E4     
       STA    CXCLR   
       LDY    #$13    
LF26B: LDA    INTIM   
       AND    #$3F    
       BNE    LF26B   
       LDA    #$07    
       STA    TIM64T  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$DF    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$34    
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$02    
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    NUSIZ0  
       STA    NUSIZ1  
LF2A1: LDA    INTIM   
       AND    #$3F    
       BNE    LF2A1   
       LDA    #$92    
       STA    TIM64T  
       STA    WSYNC   
       LDA    #$00    
       STA    NUSIZ1  
       STA    WSYNC   
       JSR    LFBE0   
       JMP    LF2CB   
LF2BB: STA    WSYNC   
       LDY    #$13    
       LDA    $84     
       STA    $85     
       LDA    $8B     
       STA    $8C     
       LDA    $92     
       STA    $93     
LF2CB: LDA    ($85),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDX    $E4     
       DEX            
       STX    $E4     
       BPL    LF2E1   
       LDA    ($93),Y 
       STA    ENABL   
       JMP    LF3D2   
LF2E1: LDA    $80,X   
       STA    $84     
       LDA    $87,X   
       STA    $8B     
       LDA    $8E,X   
       STA    $92     
       LDA    ($93),Y 
       STA    ENABL   
       DEY            
       LDA    ($85),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDX    $E4     
       LDA    $95,X   
       STA    $D6     
       LDA    $9A,X   
       STA    $D7     
       LDA    $9F,X   
       STA    $D8     
       JSR    LFBDF   
       LDA    ($93),Y 
       DEY            
       STA    ENABL   
       STA    WSYNC   
       LDA    #$0A    
       STA    COLUBK  
       LDA    ($85),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    CXP1FB  
       STA    $95,X   
       LDA    #$00    
       STA    GRP1    
       LDA    $A4,X   
       STA    $D9     
       LDA    $B3,X   
       STA    $DA     
       AND    #$0F    
       TAX            
       LDA    ($93),Y 
       NOP            
       NOP            
       NOP            
       NOP            
       STA    ENABL   
       DEY            
       STA    WSYNC   
       LDA    ($85),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    COLUP0  
LF344: DEX            
       BPL    LF344   
       STA    RESP1   
       STA    WSYNC   
       LDA    ($93),Y 
       DEY            
       STA    ENABL   
       LDA    $EA     
       STA    COLUBK  
       LDA    ($85),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    COLUP0  
       STA    HMCLR   
       LDX    $DA     
       STX    HMP1    
       LDA    ($93),Y 
       DEY            
       STA    ENABL   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($85),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    CXPPMM  
       LDX    $E4     
       STA    $9F,X   
       NOP            
       STA    CXCLR   
       LDA    $A9,X   
       BMI    LF3A9   
       LDA    ($93),Y 
       STA    ENABL   
       DEY            
LF385: STA    WSYNC   
       LDA    ($D6),Y 
       STA    GRP1    
       LDA    ($D8),Y 
       STA    COLUP1  
       LDA    ($85),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    COLUP0  
       JSR    LFBDF   
       LDA    #$00    
       STA    GRP1    
       NOP            
       LDA    ($93),Y 
       DEY            
       STA    ENABL   
       BPL    LF385   
       JMP    LF2BB   
LF3A9: LDA    ($93),Y 
       STA    ENABL   
       DEY            
LF3AE: STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       LDA    ($85),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($D8),Y 
       STA    COLUP1  
       LDA    ($D6),Y 
       STA    GRP1    
       NOP            
       JSR    LFBDE   
       LDA    ($93),Y 
       DEY            
       STA    ENABL   
       BPL    LF3AE   
       JMP    LF2BB   
LF3D2: STA    WSYNC   
       LDA    #$09    
       STA    COLUBK  
       STA    ENABL   
       JSR    LFB93   
       JSR    LFB93   
       LDA    #$34    
       STA    COLUBK  
       JSR    LFB93   
       JSR    LFB93   
       JSR    LFB93   
       LDA    #$00    
       STA    GRP0    
       LDA    #$DF    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    ENAM0   
       STA    ENAM1   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$C3    
       STA    COLUBK  
       LDX    #$03    
LF417: LDA    $9F,X   
       STA    $A0,X   
       LDA    $95,X   
       STA    $96,X   
       DEX            
       BPL    LF417   
       LDA    CXPPMM  
       STA    $9F     
       LDA    CXP1FB  
       STA    $95     
       STA    CXCLR   
       LDA    #$07    
       STA    $EA     
       LDA    $E1     
       ASL            
       ASL            
       ASL            
       STA    $80     
       ASL            
       ASL            
       ASL            
       STA    $81     
       LDA    $E0     
       LSR            
       LSR            
       TAX            
       ORA    $81     
       STA    $81     
       TXA            
       LSR            
       LSR            
       LSR            
       ORA    $80     
       STA    $80     
       LDA    $81     
       LSR            
       LSR            
       LSR            
       PHA            
       LDX    #$02    
       JSR    LFBE2   
       PLA            
       CLC            
       ADC    #$40    
       LDX    #$03    
       JSR    LFBE2   
       LDA    $80     
       CMP    #$A0    
       BCC    LF469   
       LDA    #$A1    
LF469: LDX    #$01    
       JSR    LFBE2   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$07    
       LDA    #$C6    
       STA    COLUP1  
LF478: LDA    INTIM   
       AND    #$3F    
       BNE    LF478   
       LDA    #$14    
       STA    TIM64T  
       STA    WSYNC   
LF486: STA    WSYNC   
       LDA    $80     
       ROL            
       BCC    LF494   
       LDA    #$00    
       STA    GRP1    
       JSR    LFBE1   
LF494: LDA    LFF88,X 
       STA    GRP1    
       DEX            
       BPL    LF486   
       INX            
       STX    GRP1    
       STA    HMCLR   
       LDX    #$04    
       LDA    $F0     
       STA    $E4     
LF4A7: LDA    #$00    
       LSR    $E4     
       BCC    LF4AF   
       LDA    #$02    
LF4AF: STA    $A9,X   
       DEX            
       BPL    LF4A7   
       LDA    $ED     
       STA    $E4     
       SEC            
       LDA    #$60    
       SBC    $E4     
       LDX    #$04    
       JSR    LFBE2   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$08    
       LDX    $E4     
       CPX    #$1F    
       BCC    LF4D0   
       LDA    $F5     
LF4D0: STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    CTRLPF  
       LDA    #$3E    
       STA    COLUPF  
LF4DC: LDA    INTIM   
       AND    #$3F    
       BNE    LF4DC   
       LDA    #$3F    
       STA    TIM64T  
       STA    WSYNC   
       LDX    #$04    
       STA    WSYNC   
       LDA    #$F8    
       STA    PF2     
       STA    WSYNC   
LF4F4: STA    WSYNC   
       LDA    #$08    
       STA    PF2     
       STA    ENABL   
       STA    WSYNC   
       LDA    $A9,X   
       STA    ENABL   
       STA    WSYNC   
       LDA    $A9,X   
       STA    ENABL   
       DEX            
       BPL    LF4F4   
       STA    WSYNC   
       LDA    #$F8    
       STA    PF2     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    PF2     
       STA    ENABL   
       STA    PF1     
       LDX    #$04    
LF51F: LDA    $CC,X   
       STA    $A4,X   
       AND    #$7F    
       STA    $CC,X   
       DEX            
       BPL    LF51F   
       LDA    SWCHB   
       STA    $FB     
       ROR            
       BCS    LF535   
       JMP    LFC0F   
LF535: ROR            
       BCS    LF53B   
       JMP    LFC65   
LF53B: LDX    $E7     
       TXA            
       AND    #$08    
       BEQ    LF545   
       JMP    LFADC   
LF545: TXA            
       AND    #$80    
       BNE    LF551   
       LDA    INPT4   
       BMI    LF557   
       JMP    LFC0F   
LF551: LDA    $FB     
       AND    #$08    
       BNE    LF55A   
LF557: JMP    LFAD2   
LF55A: LDA    $E6     
       BNE    LF56F   
       TXA            
       AND    #$40    
       BNE    LF589   
       LDA    INPT4   
       BMI    LF589   
       LDA    $E3     
       STA    $E8     
       LDA    #$0F    
       STA    $E6     
LF56F: TAX            
       LDA    #$03    
       STA    AUDC1   
       STX    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    $F5     
       AND    #$01    
       BNE    LF589   
       DEX            
       STX    $E6     
       CPX    #$00    
       BNE    LF589   
       STX    AUDV1   
LF589: CLC            
       LDA    $F5     
       ADC    #$01    
       STA    $F5     
       TAY            
       LDA    $F6     
       ADC    #$00    
       STA    $F6     
       TYA            
       BNE    LF5A4   
       LDA    $DC     
       BEQ    LF5A4   
       CMP    #$28    
       BEQ    LF5A4   
       INC    $DC     
LF5A4: LDA    $E7     
       TAY            
       AND    #$20    
       BEQ    LF5B8   
       DEC    $F2     
       BNE    LF5B8   
       TYA            
       AND    #$DF    
       STA    $E7     
       LDA    #$10    
       STA    $F2     
LF5B8: LDA    $F5     
       AND    #$7F    
       BNE    LF5FB   
       LDX    #$04    
LF5C0: LDA    $CC,X   
       TAY            
       AND    #$07    
       BEQ    LF5F8   
       DEY            
       TYA            
       AND    #$07    
       BEQ    LF5DD   
       STY    $CC,X   
       CMP    #$01    
       BNE    LF5F8   
       LDA    #$0D    
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       BNE    LF5F8   
LF5DD: TYA            
       ORA    #$C0    
       AND    #$DF    
       STA    $CC,X   
       LDA    #$0F    
       STA    $EF     
       LDA    $C2,X   
       CMP    #$17    
       BCC    LF5F8   
       CMP    #$D8    
       BCS    LF5F8   
       LDA    $E7     
       ORA    #$40    
       STA    $E7     
LF5F8: DEX            
       BPL    LF5C0   
LF5FB: LDA    $E7     
       STA    $FB     
       AND    #$FE    
       STA    $E7     
       LDX    #$04    
LF605: LDY    $BD,X   
       LDA    LFC91,Y 
       AND    #$08    
       BEQ    LF628   
       LDA    $CC,X   
       AND    #$47    
       BNE    LF628   
       LDA    $E5     
       AND    #$FE    
       STA    $E4     
       LDA    $B8,X   
       AND    #$FE    
       CMP    $E4     
       BNE    LF628   
       LDA    $CC,X   
       ORA    #$07    
       STA    $CC,X   
LF628: LDA    $9F,X   
       AND    #$80    
       BEQ    LF691   
       LDA    $CC,X   
       AND    #$DF    
       STA    $CC,X   
       AND    #$08    
       BEQ    LF650   
       LDA    $E7     
       ORA    #$01    
       STA    $E7     
       LDA    $FB     
       AND    #$01    
       BNE    LF650   
       LDA    $E5     
       LDY    $B8,X   
       STA    $B8,X   
       STY    $E5     
       LDA    #$0F    
       STA    $EF     
LF650: LDY    $BD,X   
       LDA    LFC91,Y 
       AND    #$80    
       BEQ    LF691   
       LDA    $B8,X   
       CMP    $E5     
       BCC    LF666   
       LDA    $B8,X   
       SBC    $E5     
       JMP    LF66B   
LF666: SEC            
       LDA    $E5     
       SBC    $B8,X   
LF66B: LSR            
       LSR            
       LSR            
       STA    $E4     
       LDA    $DC     
       SEC            
       SBC    $E4     
       STA    $DC     
       TAY            
       BCS    LF686   
       LDA    $E7     
       ORA    #$40    
       STA    $E7     
       LDA    #$00    
       STA    $DC     
       BEQ    LF68B   
LF686: TYA            
       CMP    #$14    
       BCS    LF691   
LF68B: LDA    $CC,X   
       ORA    #$40    
       STA    $CC,X   
LF691: DEX            
       BMI    LF697   
       JMP    LF605   
LF697: LDX    #$04    
LF699: LDA    $95,X   
       AND    #$40    
       BNE    LF6A2   
LF69F: JMP    LF729   
LF6A2: LDY    $BD,X   
       LDA    LFC91,Y 
       AND    #$01    
       BEQ    LF69F   
       CPY    #$07    
       BNE    LF6B5   
       LDA    $D1,X   
       CMP    #$05    
       BCS    LF71E   
LF6B5: LDA    $CC,X   
       AND    #$20    
       BEQ    LF6EB   
       LDA    LFC91,Y 
       TAY            
       AND    #$04    
       BEQ    LF6C7   
       LDA    #$20    
       BNE    LF6D2   
LF6C7: TYA            
       AND    #$10    
       BNE    LF6D0   
       LDA    #$10    
       BNE    LF6D2   
LF6D0: LDA    #$99    
LF6D2: SED            
       CLC            
       ADC    $DD     
       STA    $DD     
       LDA    $DE     
       ADC    #$00    
       STA    $DE     
       LDA    $DF     
       ADC    #$00    
       STA    $DF     
       CLD            
       LDA    $CC,X   
       AND    #$DF    
       STA    $CC,X   
LF6EB: LDA    $CC,X   
       ORA    #$C0    
       AND    #$F8    
       STA    $CC,X   
       LDY    $BD,X   
       LDA    LFC91,Y 
       AND    #$10    
       BEQ    LF71E   
       LDY    #$06    
       STY    $BD,X   
       LDA    LFF56,Y 
       STA    $AE,X   
       LDA    #$D0    
       STA    $CC,X   
       LDA    $F1     
       STA    $B8,X   
       LDA    $F0     
       EOR    LFE00,X 
       STA    $F0     
       AND    #$1F    
       BNE    LF71E   
       LDA    $E7     
       ORA    #$08    
       STA    $E7     
LF71E: LDA    $F5     
       ROR            
       BCC    LF729   
       LDA    #$00    
       STA    $E6     
       STA    AUDC1   
LF729: DEX            
       BMI    LF72F   
       JMP    LF699   
LF72F: LDA    SWCHA   
       STA    $FB     
       LDA    #$00    
       STA    $DB     
       LDA    $DC     
       CMP    #$1E    
       BCS    LF75D   
       LDA    $E1     
       ASL            
       ASL            
       AND    #$0F    
       STA    $E4     
       LDA    $E0     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       ORA    $E4     
       TAX            
       LDA    #$08    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    LFF78,X 
       STA    AUDF0   
LF75D: LDA    $E5     
       LSR            
       LSR            
       TAY            
       ORA    #$0F    
       STA    $F3     
       LDA    $E7     
       LDA    $DC     
       CMP    #$1E    
       BCC    LF77B   
       TYA            
       LSR            
       LSR            
       ORA    #$01    
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       STA    AUDF0   
LF77B: LDA    $EF     
       BEQ    LF78F   
       DEC    $EF     
       STA    AUDV0   
       STA    AUDV1   
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$03    
       STA    AUDC0   
       STA    AUDC1   
LF78F: JSR    LFB80   
       LDY    $DC     
       CPY    #$25    
       BCS    LF7C3   
       ROR    $E9     
       BCS    LF7A2   
       LDA    $FB     
       ORA    #$40    
       STA    $FB     
LF7A2: CPY    #$1E    
       BCS    LF7C3   
       ROR    $E9     
       BCS    LF7B5   
       LDA    #$DF    
       ROR    $E9     
       BCC    LF7B1   
       ROR            
LF7B1: AND    $FB     
       STA    $FB     
LF7B5: CPY    #$02    
       BCS    LF7C3   
       ROR    $E9     
       BCS    LF7C3   
       LDA    $FB     
       AND    #$7F    
       STA    $FB     
LF7C3: LDA    $F2     
       BEQ    LF7D8   
       LDY    #$20    
       LDA    $E7     
       AND    #$00    
       BNE    LF7D1   
       LDY    #$10    
LF7D1: TYA            
       EOR    #$FF    
       AND    $FB     
       STA    $FB     
LF7D8: LDA    $E7     
       TAY            
       AND    #$40    
       BEQ    LF7E1   
       BNE    LF7E7   
LF7E1: LDA    $FB     
       AND    #$80    
       BNE    LF813   
LF7E7: LDA    #$00    
       STA    $F3     
       LDA    #$01    
       STA    AUDV0   
       LDA    $E5     
       SEC            
       SBC    #$04    
       BCS    LF7F8   
       LDA    #$00    
LF7F8: STA    $E5     
       TYA            
       AND    #$40    
       BEQ    LF813   
       LDA    #$01    
       STA    $DB     
       LDA    $E5     
       BNE    LF810   
       TYA            
       ORA    #$08    
       STA    $E7     
       LDA    #$02    
       STA    $DB     
LF810: JMP    LF897   
LF813: LDA    $FB     
       AND    #$40    
       BNE    LF82F   
       LDA    #$30    
       STA    $F3     
       TYA            
       LDA    #$0F    
       STA    AUDV0   
       LDA    $E5     
       CLC            
       ADC    #$02    
       STA    $E5     
       BCC    LF82F   
       LDA    #$FF    
       STA    $E5     
LF82F: LDA    $E5     
       CMP    #$E0    
       BCC    LF837   
       LDA    #$E0    
LF837: CLC            
       ROL            
       ROL            
       ROL            
       TAX            
       AND    #$07    
       STA    $DA     
       TXA            
       ROR            
       STA    $E4     
       CLC            
       LDA    $FB     
       AND    #$20    
       BNE    LF868   
       CLC            
       LDA    $E2     
       ADC    $E4     
       STA    $E2     
       LDA    $E3     
       ADC    $DA     
       STA    $E3     
       CMP    #$5D    
       BCC    LF868   
       LDA    #$5D    
       STA    $E3     
       LDA    $E5     
       BNE    LF868   
       LDA    #$28    
       STA    $DC     
LF868: LDA    $FB     
       AND    #$10    
       BNE    LF897   
       SEC            
       LDA    $E2     
       SBC    $E4     
       STA    $E2     
       LDA    $E3     
       STA    $E4     
       SBC    $DA     
       STA    $E3     
       BEQ    LF889   
       BPL    LF897   
       LDA    $DA     
       BMI    LF897   
       LDA    $E4     
       BMI    LF897   
LF889: LDA    #$00    
       STA    $E2     
       STA    $E3     
       LDA    $E5     
       BNE    LF897   
       LDA    #$40    
       STA    $DC     
LF897: LDA    $ED     
       CMP    #$03    
       BCS    LF8B5   
       LDX    #$04    
LF89F: LDY    $BD,X   
       LDA    LFC91,Y 
       AND    #$10    
       BNE    LF8B2   
       LDA    $B8,X   
       BEQ    LF8B2   
       DEC    $B8,X   
       BEQ    LF8B2   
       DEC    $B8,X   
LF8B2: DEX            
       BPL    LF89F   
LF8B5: LDX    #$04    
LF8B7: LDY    $BD,X   
       LDA    LFC91,Y 
       AND    #$10    
       BNE    LF919   
       LDA    $CC,X   
       AND    #$40    
       BEQ    LF8CC   
       LDA    $B8,X   
       BEQ    LF8CC   
       DEC    $B8,X   
LF8CC: SEC            
       LDA    $E5     
       SBC    $B8,X   
       TAY            
       LDA    #$00    
       STA    $FE     
       SBC    #$00    
       STA    $FC     
       TYA            
       LDY    #$04    
LF8DD: LSR    $FC     
       ROR            
       ROR    $FE     
       DEY            
       BPL    LF8DD   
       STA    $FD     
       CLC            
       LDA    $C7,X   
       ADC    $FE     
       STA    $C7,X   
       LDA    $C2,X   
       ADC    $FD     
       LDY    $C2,X   
       STA    $C2,X   
       CMP    #$00    
       BMI    LF904   
       CPY    #$00    
       BPL    LF919   
       LDA    $FD     
       BPL    LF90C   
       BMI    LF919   
LF904: CPY    #$00    
       BMI    LF919   
       LDA    $FD     
       BPL    LF919   
LF90C: LDA    #$00    
       STA    $CC,X   
       LDY    #$00    
       STY    $BD,X   
       LDA    LFF56,Y 
       STA    $AE,X   
LF919: DEX            
       BPL    LF8B7   
       LDA    #$00    
       STA    $FE     
       LDA    $E5     
       LDY    #$07    
LF924: LSR            
       ROR    $FE     
       DEY            
       BPL    LF924   
       STA    $FD     
       CLC            
       LDA    $E0     
       ADC    $FE     
       STA    $E0     
       LDA    $E1     
       ADC    $FD     
       STA    $E1     
       LDA    $E5     
       LSR            
       LSR            
       LSR            
       CMP    $F4     
       BEQ    LF965   
       BCS    LF956   
       DEC    $F4     
       SEC            
       LDA    $E0     
       SBC    #$08    
       STA    $E0     
       LDA    $E1     
       SBC    #$00    
       STA    $E1     
       JMP    LF965   
LF956: INC    $F4     
       CLC            
       LDA    $E0     
       ADC    #$08    
       STA    $E0     
       LDA    $E1     
       ADC    #$00    
       STA    $E1     
LF965: SEC            
       LDA    $E5     
       SBC    $F1     
       TAY            
       LDA    #$00    
       STA    $FE     
       SBC    #$00    
       STA    $FC     
       STA    $DA     
       TYA            
       LDY    #$04    
LF978: LSR    $FC     
       ROR            
       ROR    $FE     
       DEY            
       BPL    LF978   
       STA    $FD     
       SEC            
       LDA    $EB     
       SBC    $FE     
       STA    $EB     
       LDA    $EC     
       SBC    $FD     
       STA    $EC     
       LDA    $ED     
       TAY            
       SBC    $DA     
       STA    $ED     
       CMP    #$21    
       BCC    LF9AF   
       BPL    LF9A2   
       LDA    #$20    
       STA    $ED     
       BNE    LF9AF   
LF9A2: LDA    $DA     
       BPL    LF9AF   
       LDA    $E7     
       ORA    #$48    
       STA    $E7     
       JMP    LFAD2   
LF9AF: LDA    $ED     
       BNE    LFA0F   
       JSR    LFB80   
       LDX    #$04    
LF9B8: LDA    $CC,X   
       AND    #$10    
       BNE    LF9DC   
       LDA    $F0     
       AND    LFE00,X 
       BEQ    LFA0A   
       LDY    #$07    
       STY    $BD,X   
       LDA    LFF56,Y 
       STA    $AE,X   
       LDA    #$38    
       STA    $CC,X   
       LDA    $E9     
       AND    #$1F    
       ORA    #$07    
       STA    $D1,X   
       ROR    $E9     
LF9DC: LDY    $BD,X   
       CPY    #$07    
       BNE    LFA0A   
       SEC            
       LDA    #$00    
       SBC    $EB     
       STA    $C7,X   
       LDA    #$00    
       SBC    $EC     
       STA    $C2,X   
       LDA    $F5     
       AND    #$0F    
       BNE    LFA0A   
       DEC    $D1,X   
       BNE    LFA0A   
       LDY    #$01    
       STY    $BD,X   
       LDA    LFF56,Y 
       STA    $AE,X   
       LDA    $F1     
       STA    $B8,X   
       LDA    #$30    
       STA    $CC,X   
LFA0A: DEX            
       BPL    LF9B8   
       BMI    LFA2C   
LFA0F: LDX    #$04    
LFA11: LDA    $BD,X   
       CMP    #$07    
       BNE    LFA29   
       LDY    #$00    
       STY    $BD,X   
       LDA    #$10    
       STA    $CC,X   
       TXA            
       ASL            
       ASL            
       STA    $C2,X   
       LDA    LFF56,Y 
       STA    $AE,X   
LFA29: DEX            
       BPL    LFA11   
LFA2C: LDA    $ED     
       CMP    #$03    
       BCS    LFA35   
       JMP    LFAD2   
LFA35: LDX    #$04    
LFA37: LDA    $CC,X   
       AND    #$10    
       BEQ    LFA40   
       JMP    LFACC   
LFA40: JSR    LFB80   
       LDA    $E9     
       AND    #$0F    
       TAY            
       LDA    LFF68,Y 
       STA    $BD,X   
       TAY            
       LDA    #$10    
       STA    $CC,X   
       LDA    #$00    
       STA    $B8,X   
       LDA    LFC91,Y 
       AND    #$04    
       BNE    LFA64   
       LDA    $E5     
       BNE    LFAAF   
       TAY            
       STA    $BD,X   
LFA64: LDA    $CC,X   
       ORA    #$08    
       STA    $CC,X   
       JSR    LFB80   
       LDY    $DA     
       LDA    $E9     
       CMP    LFF60,Y 
       BCC    LFA79   
       AND    LFF60,Y 
LFA79: STA    $FB     
       LDA    $FA     
       BPL    LFA8B   
       SEC            
       LDA    #$50    
       SBC    $FB     
       BCS    LFA94   
       LDA    #$08    
       JMP    LFA94   
LFA8B: CLC            
       LDA    #$50    
       ADC    $FB     
       BCC    LFA94   
       LDA    #$F8    
LFA94: STA    $B8,X   
       CMP    $E5     
       BNE    LFAA1   
       JSR    LFB80   
       LDA    $E9     
       STA    $B8,X   
LFAA1: CMP    $E5     
       BCC    LFAAF   
       LDA    #$FF    
       STA    $C2,X   
       LDA    #$00    
       STA    $C7,X   
       BEQ    LFAB5   
LFAAF: LDA    #$00    
       STA    $C2,X   
       STA    $C7,X   
LFAB5: LDY    $BD,X   
       LDA    LFF56,Y 
       STA    $AE,X   
       LDA    LFC91,Y 
       AND    #$02    
       BEQ    LFAC9   
       LDA    $CC,X   
       ORA    #$20    
       STA    $CC,X   
LFAC9: JMP    LFAD2   
LFACC: DEX            
       BMI    LFAD2   
       JMP    LFA37   
LFAD2: LDA    INTIM   
       AND    #$3F    
       BNE    LFAD2   
       JMP    LF021   
LFADC: LDA    $EE     
       BNE    LFAEF   
       LDA    #$00    
       STA    $EF     
       LDX    #$05    
LFAE6: STA    AUDC0,X 
       DEX            
       BPL    LFAE6   
       LDA    #$07    
       STA    $EE     
LFAEF: LDA    $EF     
       BEQ    LFAF8   
       DEC    $EF     
       JMP    LFAD2   
LFAF8: LDX    $EE     
       DEX            
       STX    $EE     
       BNE    LFB32   
       LDA    $E7     
       AND    #$F7    
       TAY            
       AND    #$40    
       BEQ    LFB0C   
       TYA            
       AND    #$7F    
       TAY            
LFB0C: STY    $E7     
       LDA    #$00    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       TYA            
       AND    #$80    
       BEQ    LFAD2   
       LDA    $F7     
       TAY            
       AND    #$0F    
       CMP    #$09    
       BEQ    LFB2F   
       BCC    LFB28   
       LDY    #$00    
LFB28: TYA            
       SED            
       ADC    #$01    
       STA    $F7     
       CLD            
LFB2F: JMP    LFC39   
LFB32: DEX            
       TXA            
       ASL            
       ASL            
       TAX            
       LDA    $E7     
       AND    #$40    
       BNE    LFB69   
       LDA    LFFA4,X 
       STA    AUDC0   
       LDA    LFFA5,X 
       STA    AUDF0   
       LDA    LFFA6,X 
       STA    AUDV0   
       LDA    LFFA7,X 
       STA    $EF     
       LDA    $F0     
       AND    #$1F    
       BNE    LFB66   
       LDA    $F7     
       SED            
       CLC            
       ADC    $DE     
       STA    $DE     
       LDA    $DF     
       ADC    #$00    
       STA    $DF     
       CLD            
LFB66: JMP    LFAD2   
LFB69: LDA    LFC9A,X 
       STA    AUDC0   
       LDA    LFC9B,X 
       STA    AUDF0   
       LDA    LFC9C,X 
       STA    AUDV0   
       LDA    LFC9D,X 
       STA    $EF     
       JMP    LFAD2   
LFB80: TXA            
       PHA            
       LDX    $F8     
       LDA    LF065,X 
       INX            
       STX    $F8     
       EOR    $F5     
       EOR    $E0     
       STA    $E9     
       PLA            
       TAX            
       RTS            

LFB93: DEY            
       LDA    ($85),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    COLUP0  
       STA    WSYNC   
       RTS            

LFB9F: CMP    #$17    
       BCC    LFBDA   
       CMP    #$D8    
       BCS    LFBDA   
       CMP    #$67    
       BCS    LFBAF   
       LDX    #$01    
       BNE    LFBB1   
LFBAF: LDX    #$FF    
LFBB1: CMP    #$3B    
       BCS    LFBC6   
       STA    $DA     
       LDA    #$38    
       SEC            
       SBC    $DA     
       STA    $DA     
       LDA    #$A0    
       SEC            
       SBC    $DA     
       JMP    LFBC9   
LFBC6: SEC            
       SBC    #$38    
LFBC9: CLC            
       TAY            
       ADC    #$10    
       JSR    LFBF7   
       ASL            
       ASL            
       ASL            
       STA    $DA     
       TYA            
       CLC            
       ADC    $DA     
       RTS            

LFBDA: LDX    #$FF    
       LDA    #$00    
LFBDE: NOP            
LFBDF: NOP            
LFBE0: NOP            
LFBE1: RTS            

LFBE2: CPX    #$02    
       ADC    #$10    
       TAY            
       JSR    LFBF7   
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LFBF1: DEY            
       BPL    LFBF1   
       STA    RESP0,X 
       RTS            

LFBF7: AND    #$0F    
       STA    $DA     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $DA     
       CMP    #$0F    
       BCC    LFC0B   
       SBC    #$0F    
       INY            
LFC0B: EOR    #$07    
       ASL            
       RTS            

LFC0F: LDA    #$00    
       STA    $DB     
       LDX    #$78    
LFC15: STA    $80,X   
       DEX            
       BPL    LFC15   
       LDA    #$88    
       STA    $E7     
       LDA    #$32    
       STA    $E3     
       LDA    #$37    
       STA    $E5     
       LDA    #$06    
       STA    $F4     
       LDA    LFF21   
       STA    $86     
       STA    $8D     
       STA    $94     
       LDA    $F9     
       STA    $F7     
       STA    $F6     
LFC39: TAX            
       LDA    LFFC0,X 
       STA    $F1     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $ED     
       LDA    #$1F    
       STA    $F0     
       LDA    #$07    
       STA    $EA     
       LDA    #$28    
       STA    $DC     
       LDY    #$10    
       LDX    #$04    
       LDA    #$00    
LFC57: STA    $BD,X   
       STA    $B8,X   
       STA    $AE,X   
       STY    $CC,X   
       DEX            
       BPL    LFC57   
       JMP    LFAD2   
LFC65: LDA    $E7     
       AND    #$7F    
       STA    $E7     
       LDA    $FA     
       CMP    #$01    
       BEQ    LFC82   
       STA    $F5     
       SED            
       LDA    $F9     
       CLC            
       ADC    #$01    
       CLD            
       CMP    #$10    
       BNE    LFC80   
       LDA    #$01    
LFC80: STA    $F9     
LFC82: LDA    $F9     
       STA    $DD     
       LDA    #$00    
       STA    $FA     
       STA    $DE     
       STA    $DF     
       JMP    LFAD2   
LFC91: .byte $00,$EF,$40,$EF,$EF,$EF,$A0,$F7,$E5
LFC9A: .byte $06
LFC9B: .byte $07
LFC9C: .byte $0F
LFC9D: .byte $0A,$06,$06,$0F,$0A,$06,$05,$0F,$0A,$07,$04,$0F,$0A,$07,$03,$0F
       .byte $0A,$07,$02,$0F,$0A,$07,$01,$0F,$0A
LFCB6: .byte $30,$30,$30,$30,$30,$30,$32,$32,$22,$22,$24,$14,$14,$16,$06,$06
       .byte $06,$00,$10,$10,$1F,$22,$9C,$FE,$81,$FE,$9C,$22,$1F,$19,$19,$19
       .byte $19,$19,$19,$19,$19,$19,$19,$19,$19,$19,$19,$19,$19,$19,$19,$19
       .byte $20,$20,$41,$2C,$24,$30,$32,$38,$34,$0D,$20,$20,$20,$20,$20,$20
       .byte $20,$49,$46,$45,$51,$20,$20,$44,$42,$47
LFD00: .byte $00,$05,$0E,$17,$20,$28,$30,$37,$3D,$42,$46,$49,$4B,$4D,$4F,$50
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$6C,$6C,$FC,$7E,$4F,$57,$4F,$7E,$FC,$6C,$6C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$55,$91,$49,$96,$59,$22,$89,$24,$55,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00
       .byte $02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$02,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$03,$03,$CA,$6A,$6A,$3B,$6A,$6A,$CA,$03,$03,$00,$3F,$3F,$3F
       .byte $3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$00,$60,$46,$43,$42,$60,$60,$60
       .byte $64,$70,$72,$00,$60,$60,$60,$60,$60,$60,$60,$46,$43,$42,$60,$60
       .byte $60,$64,$70,$72,$00,$60,$60,$60,$60,$60,$60,$60,$46,$43,$42,$60
       .byte $60,$60,$64,$71,$46,$00,$60,$60,$60,$60,$60,$60,$60,$46,$43,$42
LFE00: .byte $10,$08,$04,$02,$01,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18
       .byte $18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06
       .byte $0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06
       .byte $06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18
       .byte $18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06
       .byte $3E,$66,$66,$66,$3C
LFE55: .byte $05
LFE56: .byte $FE,$0D,$FE,$15,$FE,$1D,$FE,$25,$FE,$2D,$FE,$35,$FE,$3D,$FE,$45
       .byte $FE,$4D,$FE,$00,$81,$03,$02,$00,$0C,$0E,$1C,$30,$18,$C0,$82,$03
       .byte $00,$00,$00,$1C,$4C,$18,$7E,$EC,$7D,$18,$54,$1C,$00,$00,$00,$1C
       .byte $54,$18,$7D,$EC,$7C,$18,$58,$1C,$00,$00,$00,$1C,$58,$18,$7C,$EC
       .byte $7E,$18,$5C,$1C,$00,$00,$00,$1C,$5C,$18,$7C,$EC,$7F,$18,$4C,$1C
       .byte $00,$00,$00,$00,$00,$0A,$0A,$9B,$0A,$0A,$00,$00,$00,$00,$00,$6C
       .byte $6C,$7C,$DE,$DE,$DE,$7C,$6C,$6C,$00,$00,$00,$6C,$24,$7C,$DE,$DE
       .byte $DE,$7C,$6C,$6C,$00,$00,$00,$6C,$48,$7C,$DE,$DE,$DE,$7C,$24,$6C
       .byte $00,$00,$00,$6C,$6C,$7C,$DE,$DE,$DE,$7C,$48,$6C,$00,$00,$00,$CC
       .byte $CC,$00,$00,$00,$00,$07,$03,$47,$F3,$F3,$47,$07,$07,$00,$00,$00
       .byte $00,$07,$05,$47,$F3,$F3,$47,$03,$07,$00,$00,$00,$00,$07,$06,$47
       .byte $F3,$F3,$47,$05,$07,$00,$00,$00,$00,$07,$07,$47,$F3,$F3,$47,$06
       .byte $07,$00,$00,$6B,$2A,$6B,$2A,$6B,$00,$00
LFF20: .byte $11
LFF21: .byte $FD,$22,$FD,$69,$FE,$76,$FE,$82,$FE,$8E,$FE,$9A,$FE,$B2,$FE,$BE
       .byte $FE,$CA,$FE,$D6,$FE,$E7,$FE,$F3,$FE,$FF,$FE,$0B,$FF,$41,$FD,$C7
       .byte $FC,$C7,$FC
LFF44: .byte $11
LFF45: .byte $FD,$AE,$FD,$11,$FD,$14,$FF,$A6,$FE,$DE,$FE,$BA,$FD,$D3,$FC,$BA
       .byte $FD
LFF56: .byte $00
LFF57: .byte $01,$02,$03,$07,$0B,$0F,$10,$11,$12
LFF60: .byte $01,$03,$07,$0F,$1F,$3F,$7F,$FF
LFF68: .byte $00,$01,$03,$00,$01,$03,$04,$05,$00,$05,$02,$00,$03,$04,$00,$05
LFF78: .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$1F,$1F,$00,$00,$00
LFF88: .byte $20,$54,$3C,$76,$BA,$7C,$30,$18
LFF90: .byte $11,$FD,$11,$FD,$30,$FD
LFF96: .byte $9D,$FD,$A9,$FD,$A9,$FD
LFF9C: .byte $49
LFF9D: .byte $FD,$30,$FD,$80,$FD,$65,$FD
LFFA4: .byte $06
LFFA5: .byte $01
LFFA6: .byte $0F
LFFA7: .byte $0A,$06,$02,$0F,$0A,$06,$03,$0F,$0A,$07,$04,$0F,$0A,$07,$05,$0F
       .byte $0A,$07,$06,$0F,$0A,$07,$07,$0F,$0A
LFFC0: .byte $37,$46,$55,$64,$73,$82,$91,$A0,$B9,$C8,$60,$46,$43,$42,$60,$60
       .byte $60,$64,$70,$76,$6C,$70,$72,$6C,$64,$70,$46,$6C,$71,$70,$00,$60
       .byte $60,$60,$60,$60,$60,$60,$46,$43,$42,$60,$60,$60,$64,$70,$76,$6C
       .byte $70,$73,$6C,$64,$70,$46,$6C,$71,$70,$00,$60,$60,$00,$F0,$00,$F0
