; Disassembly of roms/Frankenstein's Monster.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Frankenstein's Monster.bin
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
RESM1   =  $13
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296
LFD00   =   $FD00

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       DEX            
       BNE    LF005   
       DEX            
       TXS            
       JSR    LFA53   
       LDA    #$10    
       STA    SWBCNT  
       LDA    #$01    
       STA    $D0     
LF018: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       JMP    LF569   
LF038: LDA    INTIM   
       BNE    LF038   
       STA    WSYNC   
       STA    VBLANK  
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    $BF     
       LDA    $B2,X   
       CMP    #$03    
       BNE    LF060   
       LDA    $81     
       STA    $A7     
       STA    $9D     
       STA    COLUBK  
       LDY    #$DD    
       JMP    LF559   
LF060: STA    WSYNC   
       LDA    PF2     
       LDA    #$24    
       STA    HMP0    
       AND    #$0F    
       TAX            
LF06B: DEX            
       BPL    LF06B   
       STA    RESP0   
       STA    RESP1   
       LDA    #$30    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A7     
       STA    COLUBK  
       LDA    #$03    
       STA    NUSIZ1  
       ROR            
       STA    NUSIZ0  
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
       LDA    #$28    
       LDX    $BF     
       BEQ    LF093   
       LDA    #$68    
LF093: AND    $A0     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       STA    HMCLR   
LF0A1: STA    WSYNC   
       LDA    $CE     
       LDA    ($E2),Y 
       STA    GRP0    
       LDA    ($E4),Y 
       STA    GRP1    
       LDA    ($E6),Y 
       STA    GRP0    
       LDA    ($E8),Y 
       TAX            
       LDA    ($EA),Y 
       STX    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       DEY            
       BPL    LF0A1   
       INY            
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       LDX    #$05    
LF0CC: STA    WSYNC   
       DEX            
       BNE    LF0CC   
       INX            
LF0D2: STA    WSYNC   
       LDA    $8B,X   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
LF0DB: DEY            
       BPL    LF0DB   
       STA    RESP0,X 
       DEX            
       BPL    LF0D2   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $89     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$15    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$22    
       AND    $A0     
       STA    COLUPF  
       LDA    #$08    
       STA    REFP1   
       LDY    #$00    
       STA    HMCLR   
LF105: STA    WSYNC   
       LDA    ($BB),Y 
       STA    GRP0    
       STA    GRP1    
       INY            
       CPY    #$11    
       BNE    LF105   
       STA    WSYNC   
       LDX    $BF     
       LDA    #$30    
       STA    HMP1    
       LDA    #$24    
       STA    HMP0    
       AND    #$0F    
       TAY            
LF121: DEY            
       BPL    LF121   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$AB    
       STA    PF0     
       STA    PF1     
       LDA    $84,X   
       BNE    LF13B   
       LDA    #$FC    
       STA    PF2     
LF13B: LDA    $9D     
       AND    $A0     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$30    
       STA    NUSIZ0  
       LDY    #$02    
       STA    HMCLR   
LF14F: STA    WSYNC   
       STA    HMOVE   
       LDA    ($D7),Y 
       STA    GRP0    
       LDA    ($DA),Y 
       STA    GRP1    
       INY            
       TYA            
       CPY    #$06    
       BCC    LF16A   
       CMP    $84,X   
       BCC    LF16A   
       LDA    #$04    
       STA    PF2     
       TYA            
LF16A: CMP    $82,X   
       BCC    LF174   
       LDA    #$D6    
       STA    COLUP0  
       STA    COLUP1  
LF174: CPY    #$08    
       BNE    LF17E   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
LF17E: CPY    #$24    
       BNE    LF14F   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    COLUPF  
       LDA    $8A     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF193: DEY            
       BPL    LF193   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    COLUBK  
       STY    PF0     
       STY    PF1     
       STY    CXCLR   
       LDA    $BE     
       STA    REFP0   
       LDA    $A8     
       STA    HMCLR   
       BEQ    LF1B7   
       BPL    LF1B4   
       JMP    LF4F1   
LF1B4: JMP    LF422   
LF1B7: LDA    #$FE    
       STA    PF2     
       STA    WSYNC   
       LDA    #$0C    
       STA    HMBL    
       AND    #$0F    
       TAY            
LF1C4: DEY            
       BNE    LF1C4   
       STA    RESBL   
       STA    WSYNC   
       STY    COLUBK  
       LDA    $CE     
       LDA    $8D     
       STA    HMP1    
       AND    #$0F    
       TAY            
LF1D6: DEY            
       BPL    LF1D6   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    PF0     
       STY    PF1     
       STY    $80     
       LDX    $91     
       LDA    #$8A    
       AND    $A0     
       STA    COLUP1  
       LDA    $9B     
       STA    REFP1   
       LDA    #$35    
       STA    CTRLPF  
       STA    CXCLR   
       LDY    #$10    
       STA    HMCLR   
       CLC            
       LDA    $80     
LF1FF: ADC    $88     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF208   
       DEY            
LF208: LDA    #$C2    
       STA    COLUPF  
       TXA            
       STA    WSYNC   
       STA    HMOVE   
       AND    $A0     
       STA    COLUBK  
       LDA    LFE00,X 
       STA    GRP1    
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($F6),Y 
       STA    COLUP0  
       INC    $80     
       INX            
       LDA    $80     
       CMP    #$0A    
       BNE    LF22D   
       STA    ENABL   
LF22D: CMP    #$10    
       BNE    LF1FF   
       LDA    #$00    
       STA    ENABL   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    #$11    
       STA    HMBL    
       AND    #$0F    
       TAX            
LF242: DEX            
       BPL    LF242   
       STA    RESBL   
       LDA    #$57    
       STA    HMM1    
       AND    #$0F    
       TAX            
LF24E: DEX            
       BNE    LF24E   
       STA    RESM1   
       STX    COLUBK  
       STA    WSYNC   
       LDA    $8E     
       JSR    LF3D4   
       LDA    #$21    
       AND    $A0     
       STA    COLUP1  
       LDA    #$30    
       STA    CTRLPF  
       LDX    $92     
LF268: CLC            
       LDA    $88     
       ADC    $80     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF274   
       DEY            
LF274: STA    WSYNC   
       STA    HMOVE   
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($F6),Y 
       STA    COLUP0  
       INC    $80     
       LDA    $80     
       CMP    #$1D    
       BNE    LF28E   
       STA    ENAM1   
       LDA    $A4     
       STA    NUSIZ1  
LF28E: CMP    #$2A    
       BNE    LF268   
       LDA    #$00    
       STA    COLUPF  
LF296: CLC            
       LDA    $88     
       ADC    $80     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF2A2   
       DEY            
LF2A2: STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($F6),Y 
       STA    COLUP0  
       LDA    LFD00,X 
       STA    GRP1    
       INX            
       INC    $80     
       LDA    $80     
       CMP    #$2F    
       BNE    LF2C6   
       STA    ENABL   
       LDA    $D5     
       STA    PF1     
       BNE    LF296   
LF2C6: CMP    #$35    
       BNE    LF296   
       LDA    #$00    
       STA    PF1     
       STA    ENABL   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    #$F1    
       STA    HMM1    
       AND    #$0F    
       TAX            
LF2DD: DEX            
       BPL    LF2DD   
       STA    RESM1   
       LDA    #$B6    
       STA    HMBL    
       AND    #$0F    
       TAX            
LF2E9: DEX            
       BNE    LF2E9   
       STA    RESBL   
       STA    WSYNC   
       STX    COLUBK  
       LDA    $8F     
       JSR    LF3D4   
       LDA    #$25    
       STA    CTRLPF  
       LDX    $93     
       LDA    #$30    
       AND    $A0     
       STA    COLUPF  
       LDA    #$10    
       STA    NUSIZ1  
LF307: CLC            
       LDA    $88     
       ADC    $80     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF313   
       DEY            
LF313: LDA    ($86),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($F6),Y 
       STA    COLUP0  
       LDA    LFE00,X 
       STA    GRP1    
       INX            
       INC    $80     
       LDA    $80     
       CMP    #$41    
       BNE    LF336   
       STA    ENAM1   
       LDA    $A5     
       STA    NUSIZ1  
       JMP    LF307   
LF336: CMP    #$55    
       BNE    LF341   
       LDA    $9F     
       STA    ENABL   
       JMP    LF307   
LF341: CMP    #$5A    
       BNE    LF307   
       BIT    COLUP1  
       BPL    LF34B   
       STA    $D6     
LF34B: LDA    #$00    
       STA    ENABL   
       STA    GRP1    
       LDA    $A6     
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    $D2     
       AND    $A0     
       STA    COLUP1  
       LDA    $90     
       STA    HMP1    
       AND    #$0F    
       TAX            
LF364: DEX            
       BPL    LF364   
       STA    RESP1   
       LDX    $C1     
       CLC            
       LDA    $80     
LF36E: ADC    $88     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF377   
       DEY            
LF377: LDA    #$92    
       STA    WSYNC   
       STA    HMOVE   
       AND    $A0     
       STA    COLUBK  
       LDA    ($86),Y 
       STA    GRP0    
       LDA    $9E     
       STA    PF0     
       STA    PF1     
       LDA    LFE00,X 
       STA    GRP1    
       INX            
       LDA    ($F6),Y 
       STA    COLUP0  
       INC    $80     
       STA    HMCLR   
       LDA    $80     
       CMP    #$65    
       BNE    LF36E   
       LDX    #$14    
LF3A1: STA    WSYNC   
       STA    HMOVE   
       CLC            
       LDA    $88     
       ADC    $80     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF3B1   
       DEY            
LF3B1: LDA    #$00    
       STA    GRP1    
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($F6),Y 
       STA    COLUP0  
       INC    $80     
       DEX            
       BNE    LF3A1   
       LDX    #$10    
LF3C4: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    COLUPF  
       STA    COLUBK  
       DEX            
       BNE    LF3C4   
       JMP    LF018   
LF3D4: STA    HMP1    
       AND    #$0F    
       TAX            
LF3D9: DEX            
       BPL    LF3D9   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$23    
       AND    $A0     
       STA    COLUPF  
       LDX    #$08    
       LDA    #$00    
       STA    COLUBK  
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$0D    
       AND    $A0     
       STA    COLUP1  
       STA    HMCLR   
LF402: CLC            
       LDA    $88     
       ADC    $80     
       AND    #$F0    
       EOR    #$F0    
       BNE    LF40E   
       DEY            
LF40E: INC    $80     
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    LF402   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$02    
       STA    ENAM1   
       RTS            

LF422: LDX    $AA     
       STA    WSYNC   
       NOP            
       LDA    $88     
       STA    $D9     
       LDA    $8D,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
LF432: DEY            
       BPL    LF432   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STX    $CF     
       LDA    #$80    
       STA    $80     
       LDA    $F0,X   
       STA    NUSIZ1  
       LDA    #$00    
       STA    COLUPF  
       LDA    $AB     
       STA    HMCLR   
       BEQ    LF453   
       TAX            
       JMP    LF4CA   
LF453: LDY    #$05    
       JMP    LF470   
LF458: TAY            
       LDA    ($86),Y 
       TAX            
       LDA    ($F6),Y 
       LDY    $CE     
       STA    WSYNC   
       STX    GRP0    
       STA    COLUP0  
LF466: LDA    ($AD),Y 
       STA    GRP1    
       BEQ    LF489   
       LDA    ($DC),Y 
       STA    COLUP1  
LF470: DEC    $80     
       BEQ    LF484   
       DEY            
       STY    $CE     
       DEC    $D9     
       LDA    $D9     
       CLC            
       ADC    #$0F    
       BCS    LF458   
       STA    WSYNC   
       BCC    LF466   
LF484: STA    WSYNC   
       JMP    LF4EC   
LF489: LDX    $CF     
       DEC    $80     
LF48D: BEQ    LF484   
       DEX            
       BPL    LF494   
       LDX    #$05    
LF494: LDY    #$00    
       DEC    $D9     
       LDA    $D9     
       CLC            
       ADC    #$0F    
       BCC    LF4A4   
       TAY            
       LDA    ($F6),Y 
       STA    COLUP0  
LF4A4: STA    WSYNC   
       LDA    ($86),Y 
       STA    GRP0    
       LDA    $8D,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
LF4B1: DEY            
       BPL    LF4B1   
       STA    RESP1   
       DEC    $D9     
       STA    WSYNC   
       STA    HMOVE   
       DEC    $80     
       BEQ    LF4EC   
       LDA    $F0,X   
       STA    NUSIZ1  
       LSR            
       LSR            
       STX    $CF     
       LSR            
       TAX            
LF4CA: LDY    #$00    
       DEC    $80     
       BEQ    LF48D   
       DEC    $D9     
       LDA    $D9     
       CLC            
       ADC    #$0F    
       BCC    LF4DC   
       TAY            
       LDA    ($F6),Y 
LF4DC: STA    WSYNC   
       STA    COLUP0  
       LDA    ($86),Y 
       STA    GRP0    
       DEX            
       BNE    LF4CA   
       LDY    #$05    
       JMP    LF470   
LF4EC: LDY    #$12    
       JMP    LF559   
LF4F1: LDA    $B2,X   
       TAX            
       LDY    $8D,X   
       BEQ    LF4FD   
LF4F8: STA    WSYNC   
       DEY            
       BNE    LF4F8   
LF4FD: STA    WSYNC   
       NOP            
       LDA    $91,X   
       STA    HMP0    
       AND    #$0F    
       TAY            
LF507: DEY            
       BPL    LF507   
       STA    RESP0   
       LDA    $A1,X   
       STA    HMP1    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $81     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$05    
       CPX    #$01    
       BEQ    LF524   
       LDA    #$07    
LF524: STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       LDA    #$00    
       STA    $80     
       STA    REFP0   
       STA    HMCLR   
LF532: STA    WSYNC   
       STA    HMOVE   
       LDA    ($D7),Y 
       STA    GRP0    
       LDA    ($DA),Y 
       STA    GRP1    
       LDA    $80     
       CPX    #$01    
       BEQ    LF54B   
       AND    #$03    
       BNE    LF54F   
       INY            
       BNE    LF54F   
LF54B: ROR            
       BCS    LF54F   
       INY            
LF54F: INC    $80     
       CPY    #$24    
       BNE    LF532   
       LDY    $97,X   
       BEQ    LF566   
LF559: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF2     
       DEY            
       BNE    LF559   
LF566: JMP    LF018   
LF569: LDA    SWCHB   
       ROR            
       BCS    LF572   
       JSR    LFA53   
LF572: INC    $B6     
       LDA    SWCHB   
       AND    #$02    
       BNE    LF59F   
       LDY    $9C     
       BNE    LF5A3   
       DEY            
       STY    $9C     
       STY    $D1     
       INC    $D0     
       LDA    #$00    
       STA    $B7     
       STA    $BF     
       LDA    #$68    
       STA    $C4     
       LDA    $D0     
       CMP    #$03    
       BCC    LF59A   
       LDA    #$01    
       STA    $D0     
LF59A: STA    $B8     
       JMP    LF7C6   
LF59F: LDA    #$00    
       STA    $9C     
LF5A3: LDX    $BF     
       BIT    $D1     
       BPL    LF5CA   
       LDA    $B0     
       CMP    #$FF    
       BNE    LF5B3   
       LDA    #$01    
       STA    $A9     
LF5B3: BIT    $D1     
       BVC    LF5BA   
       JMP    LF7C6   
LF5BA: LDA    REFP1,X 
       BPL    LF5C1   
       JMP    LF7A6   
LF5C1: LDY    #$00    
       STY    $D1     
       STY    $A9     
       DEY            
       STY    $A0     
LF5CA: LDA    $84,X   
       BNE    LF5F1   
       LDA    $B6     
       AND    #$0F    
       BNE    LF5EE   
       STA    $9D     
       LDA    $CD     
       ORA    #$40    
       STA    $CD     
       LDA    #$80    
       STA    $CC     
       INC    $82,X   
       LDA    $82,X   
       CMP    #$24    
       BNE    LF5EE   
       JSR    LF9C8   
       JMP    LF7C6   
LF5EE: JMP    LF7A6   
LF5F1: LDA    $B4,X   
       BEQ    LF616   
       BPL    LF616   
       STA    $A9     
       STA    $82,X   
       LDA    $D0     
       CMP    #$01    
       BEQ    LF613   
       LDA    #$68    
       STA    $C4     
       STA    $C5     
       LDA    $B6     
       AND    #$3F    
       BNE    LF613   
       LDA    $BF     
       EOR    #$01    
       STA    $BF     
LF613: JMP    LF7C1   
LF616: LDA    $B2,X   
       TAX            
       BEQ    LF63E   
       CMP    #$03    
       BCS    LF63E   
       LDA    $B6     
       AND    #$3F    
       CMP    #$3F    
       BNE    LF639   
       LDA    $97,X   
       BEQ    LF639   
       CLC            
       LDA    $8D,X   
       ADC    #$05    
       STA    $8D,X   
       SEC            
       LDA    $97,X   
       SBC    #$05    
       STA    $97,X   
LF639: LDX    #$02    
       JMP    LF7B7   
LF63E: LDA    $A8     
       BEQ    LF64A   
       BPL    LF647   
       JMP    LF7C1   
LF647: JMP    LFC06   
LF64A: LDA    $AD     
       BNE    LF68C   
       BIT    WSYNC   
       BVC    LF658   
       LDA    $BD     
       CMP    #$03    
       BNE    LF680   
LF658: BIT    VBLANK  
       BMI    LF65F   
       JMP    LF708   
LF65F: LDA    #$40    
       STA    $AD     
       LDA    #$01    
       STA    $AE     
       INC    $88     
       LDA    #$70    
       STA    $86     
LF66D: LDA    #$00    
       STA    $AA     
       LDA    #$9D    
       LDY    $94     
       CPY    #$64    
       BCS    LF67B   
       LDA    #$1A    
LF67B: STA    $94     
       JMP    LF7A6   
LF680: LDA    #$80    
       STA    $AD     
       DEC    $88     
       LDA    #$16    
       STA    $AE     
       BNE    LF66D   
LF68C: LDA    $B6     
       AND    #$07    
       BNE    LF705   
       LDA    $AE     
       BEQ    LF6C5   
       CMP    #$17    
       BEQ    LF6CD   
       LDY    #$70    
       CMP    #$0F    
       BCC    LF6A2   
       LDY    #$60    
LF6A2: STY    $86     
       JSR    LF949   
       BNE    LF6AF   
       DEC    $88     
       DEC    $AE     
       BPL    LF6B8   
LF6AF: JSR    LF93D   
       BNE    LF6C2   
       INC    $88     
       INC    $AE     
LF6B8: LDA    $B6     
       STA    $BE     
       LDA    #$20    
       ORA    $CC     
       STA    $CC     
LF6C2: JMP    LF7A6   
LF6C5: BIT    $AD     
       BPL    LF6D3   
       INC    $BD     
       BNE    LF6D3   
LF6CD: BIT    $AD     
       BVC    LF6D3   
       DEC    $BD     
LF6D3: LDA    #$99    
       LDY    #$FF    
       LDX    $94     
       CPX    #$64    
       BCS    LF6E1   
       LDY    #$01    
       LDA    #$22    
LF6E1: STA    $94     
       STY    $BE     
LF6E5: LDY    #$F0    
       LDA    $BD     
       CMP    #$02    
       BNE    LF6EF   
       LDY    #$CB    
LF6EF: CMP    #$03    
       BNE    LF6FD   
       LDY    #$A4    
       LDA    $D6     
       BEQ    LF6FD   
       CPY    $88     
       BCS    LF6FF   
LF6FD: STY    $88     
LF6FF: LDA    #$00    
       STA    $AE     
       STA    $AD     
LF705: JMP    LF7A6   
LF708: LDX    $BF     
       LDA    $AF     
       BEQ    LF712   
       DEC    $AF     
       BNE    LF705   
LF712: JSR    LF8D4   
       LDA    $BD     
       CMP    #$01    
       BNE    LF71E   
       JMP    LF7FE   
LF71E: CMP    #$02    
       BNE    LF725   
       JMP    LF81F   
LF725: LDA    $D6     
       BEQ    LF730   
       LDA    #$10    
       STA    $AF     
       JMP    LF855   
LF730: LDA    $AA     
       BNE    LF788   
       LDA    $AB     
       BNE    LF745   
       BIT    COLUP1  
       BMI    LF788   
       BIT    WSYNC   
       BMI    LF788   
       LDA    #$70    
       JMP    LF843   
LF745: DEC    $AB     
       LDA    $B6     
       AND    #$03    
       BNE    LF74F   
       DEC    $88     
LF74F: LDA    $AB     
       BNE    LF7A6   
       LDA    #$00    
       STA    $CE     
       LDY    #$02    
       JSR    LFD37   
       CLC            
       LDA    $C4,X   
       ADC    #$08    
       STA    $C4,X   
       CMP    #$68    
       BNE    LF772   
       LDY    #$FE    
       STY    $B6     
       LDA    #$06    
       STA    $82,X   
       JMP    LF7C1   
LF772: LDA    $D0     
       CMP    #$02    
       BNE    LF782   
       TXA            
       EOR    #$01    
       TAX            
       LDY    $B4,X   
       BNE    LF782   
       STA    $BF     
LF782: JSR    LFAA1   
       JMP    LF7A6   
LF788: LDA    $9F     
       BEQ    LF7FB   
       BIT    WSYNC   
       BVC    LF7FB   
       LDA    #$40    
       STA    $C0     
       LDA    $CC     
       ORA    #$08    
       STA    $CC     
       LDA    #$00    
       STA    $9F     
LF79E: LDA    $B6     
       ROR            
       BCS    LF7A6   
       JSR    LF8E7   
LF7A6: LDX    $BF     
       JSR    LFB7E   
       LDA    #$A0    
       STA    $CE     
       JSR    LFB05   
       JSR    LFB2E   
LF7B5: LDX    #$06    
LF7B7: LDA    $94,X   
       JSR    LFB69   
       STA    $8A,X   
       DEX            
       BPL    LF7B7   
LF7C1: LDX    $BF     
       JSR    LF988   
LF7C6: LDX    $BF     
       LDA    $B4,X   
       LDX    #$1A    
       LDY    #$1A    
       CMP    #$01    
       BNE    LF7E8   
       LDA    $B6     
       AND    #$10    
       BEQ    LF7E8   
       LDA    #$80    
       STA    $CD     
       LDY    #$3C    
       LDA    $B6     
       AND    #$20    
       BEQ    LF7E8   
       LDX    #$3C    
       LDY    #$1A    
LF7E8: STX    $D7     
       STY    $DA     
       JSR    LFD57   
       JSR    LF955   
       LDA    #$00    
       STA    $D6     
       STA    CXCLR   
       JMP    LF038   
LF7FB: JMP    LF86F   
LF7FE: LDA    $94     
       CMP    #$70    
       BEQ    LF80A   
       BIT    COLUP1  
       BPL    LF81C   
       BNE    LF851   
LF80A: LDA    #$80    
       STA    $C0     
       LDA    $9F     
       BNE    LF81C   
       LDA    #$01    
       STA    $A8     
       JSR    LFD0C   
       JMP    LF7B5   
LF81C: JMP    LF79E   
LF81F: LDA    $AB     
       BEQ    LF83D   
       DEC    $AB     
       DEC    $88     
       LDA    $AB     
       BNE    LF83A   
       STA    $AA     
       STA    $CE     
       INC    $BD     
       LDA    #$A4    
       STA    $88     
       LDY    #$01    
       JSR    LFD37   
LF83A: JMP    LF7A6   
LF83D: BIT    WSYNC   
       BPL    LF84D   
       LDA    #$26    
LF843: STA    $AB     
       LDA    $CC     
       ORA    #$10    
       STA    $CC     
       BNE    LF83A   
LF84D: BIT    COLUP1  
       BPL    LF86F   
LF851: LDA    #$C0    
       STA    $AF     
LF855: LDA    #$80    
       STA    $86     
       LDA    #$20    
       LDY    #$00    
       STA    $CE     
       JSR    LFD37   
       LDA    $CC     
       ORA    #$04    
       STA    $CC     
       LDA    #$00    
       STA    $AA     
       JMP    LF6E5   
LF86F: LDA    $AA     
       BEQ    LF87A   
       LDA    $B6     
       ROR            
       BCC    LF89E   
       BCS    LF8CA   
LF87A: LDX    $BF     
       LDA    REFP1,X 
       BMI    LF8CD   
       LDA    $DF     
       BNE    LF8D1   
       STA    $AC     
       JSR    LF8FB   
       LDA    #$13    
       STA    $AA     
       LDA    $CC     
       ORA    #$02    
       STA    $CC     
       STA    $DF     
       CLC            
       LDA    $88     
       ADC    #$05    
       STA    $88     
       BNE    LF8CA   
LF89E: LDA    $AA     
       CMP    #$0B    
       BCS    LF8A8   
       DEC    $88     
       BNE    LF8AA   
LF8A8: INC    $88     
LF8AA: LDA    $94     
       CMP    #$9D    
       BCS    LF8BB   
       CMP    #$13    
       BCC    LF8BB   
       CLC            
       LDA    $94     
       ADC    $AC     
       STA    $94     
LF8BB: DEC    $AA     
       BNE    LF8CA   
       LDA    #$60    
       STA    $86     
       SEC            
       LDA    $88     
       SBC    #$04    
       STA    $88     
LF8CA: JMP    LF7A6   
LF8CD: LDA    #$00    
       STA    $DF     
LF8D1: JMP    LF79E   
LF8D4: LDA    $B6     
       AND    #$07    
       BNE    LF8E6   
       LDY    #$80    
       LDA    $B6     
       AND    #$08    
       BNE    LF8E4   
       LDY    #$90    
LF8E4: STY    $86     
LF8E6: RTS            

LF8E7: LDA    $94     
       CMP    #$9D    
       BCC    LF8F3   
       LDA    #$40    
       STA    $C0     
       BNE    LF8FB   
LF8F3: CMP    #$13    
       BCS    LF8FB   
       LDA    #$80    
       STA    $C0     
LF8FB: LDA    SWCHA   
       LDY    $BF     
       BNE    LF90A   
       ASL            
       BCC    LF912   
       ASL            
       BCC    LF920   
       BNE    LF934   
LF90A: ROR            
       ROR            
       ROR            
       BCC    LF920   
       ROR            
       BCS    LF934   
LF912: LDY    #$01    
       STY    $AC     
       STY    $BE     
       BIT    $C0     
       BVS    LF938   
       INC    $94     
       BNE    LF92C   
LF920: LDY    #$FF    
       STY    $AC     
       STY    $BE     
       BIT    $C0     
       BMI    LF938   
       DEC    $94     
LF92C: LDA    $CC     
       ORA    #$01    
       STA    $CC     
       BNE    LF938   
LF934: LDA    #$60    
       STA    $86     
LF938: LDY    #$00    
       STY    $C0     
       RTS            

LF93D: LDA    #$01    
       LDY    $BF     
       BNE    LF945   
       LDA    #$10    
LF945: AND    SWCHA   
       RTS            

LF949: LDA    #$02    
       LDY    $BF     
       BNE    LF951   
       LDA    #$20    
LF951: AND    SWCHA   
       RTS            

LF955: LDY    #$01    
       STY    $CE     
       LDA    $BF     
       BEQ    LF95F   
       LDY    #$03    
LF95F: LDA    $CE     
       ASL            
       ASL            
       TAX            
       LDA.wy $00B7,Y 
       AND    #$F0    
       LSR            
       STA    $E2,X   
       LDA.wy $00B7,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $E4,X   
       LDA    #$FF    
       STA    $E3,X   
       STA    $E5,X   
       DEY            
       DEC    $CE     
       BPL    LF95F   
       LDX    $BF     
       LDA    $C4,X   
       STA    $EA     
       RTS            

LF988: LDA    $B6     
       BNE    LF9E4   
       INC    $B0,X   
       LDA    $A9     
       BEQ    LF994   
       DEC    $A0     
LF994: LDA    $B4,X   
       CMP    #$01    
       BNE    LF9E4   
       LDA    $B2,X   
       BNE    LF9C0   
       STA    $8E     
       STA    $8F     
       STA    $9D     
       LDA    #$94    
       STA    $92     
       LDA    #$A3    
       STA    $93     
       LDA    #$70    
       STA    $A2     
       LDA    #$80    
       STA    $A3     
       STA    $A8     
       LDA    #$57    
       STA    $98     
       STA    $82,X   
       LDA    #$1D    
       STA    $99     
LF9C0: INC    $B2,X   
       LDA    $B2,X   
       CMP    #$04    
       BNE    LF9E4   
LF9C8: LDA    #$FF    
       STA    $B4,X   
       LDA    $D0     
       CMP    #$01    
       BEQ    LF9E0   
       TXA            
       EOR    #$01    
       TAX            
       LDA    $B4,X   
       BNE    LF9E0   
       STX    $BF     
       JSR    LFAA1   
       RTS            

LF9E0: JSR    LFA71   
       RTS            

LF9E4: LDA    #$C8    
       STA    $BB     
       LDA    #$52    
       STA    $95     
       STA    $96     
       LDA    $B4,X   
       BNE    LFA32   
       LDA    $DE     
       AND    #$03    
       AND    $B0,X   
       BNE    LFA36   
       LDA    $B6     
       CMP    #$3F    
       BCC    LFA18   
       BEQ    LFA04   
       BCS    LFA36   
LFA04: BIT    $D1     
       BMI    LFA36   
       LDA    $82,X   
       CMP    #$05    
       BEQ    LFA36   
       LDA    $CD     
       ORA    #$20    
       STA    $CD     
       DEC    $82,X   
       BPL    LFA40   
LFA18: LDA    $CD     
       ORA    #$10    
       STA    $CD     
       LDA    #$B8    
       STA    $BB     
       LDA    #$40    
       STA    $95     
       LDA    #$60    
       STA    $96     
       LDY    #$0A    
       LDA    $B6     
       AND    #$08    
       BEQ    LFA34   
LFA32: LDY    #$00    
LFA34: STY    $A7     
LFA36: LDA    $82,X   
       CMP    #$06    
       BNE    LFA40   
       LDA    #$01    
       STA    $B4,X   
LFA40: LDY    #$D6    
       LDX    #$98    
       LDA    $B6     
       AND    #$10    
       BNE    LFA4E   
       LDY    #$C0    
       LDX    #$E0    
LFA4E: STX    $89     
       STY    $81     
       RTS            

LFA53: LDX    #$0B    
       LDA    #$00    
LFA57: STA    $B0,X   
       DEX            
       BPL    LFA57   
       LDA    #$80    
       STA    $D1     
       LDA    #$05    
       BIT    SWCHB   
       BVS    LFA69   
       LDA    #$83    
LFA69: STA    $DE     
       LDA    #$05    
       STA    $B7     
       STA    $B9     
LFA71: LDX    #$01    
LFA73: LDA    #$50    
       STA    $C4,X   
       LDA    #$24    
       STA    $84,X   
       BIT    $DE     
       BMI    LFA81   
       ADC    $DE     
LFA81: STA    $82,X   
       LDA    #$00    
       STA    $B2,X   
       STA    $C2,X   
       DEX            
       BPL    LFA73   
       INX            
       STX    $BF     
       LDA    #$FE    
       STA    $87     
       STA    $D8     
       STA    $DB     
       LDA    #$FD    
       STA    $BC     
LFA9B: LDA    #$55    
       STA    $97     
       STA    $98     
LFAA1: LDY    #$00    
       STY    $91     
       LDA    #$0D    
       STA    $9D     
       LDA    #$F2    
       STA    $92     
       LDA    #$E7    
       STA    $93     
       LDX    #$0B    
       LDY    #$00    
       LDA    #$FF    
LFAB7: STY    $A4,X   
       STA    $9E,X   
       DEX            
       BPL    LFAB7   
       INY            
       STY    $BD     
       STY    $A1     
       LDA    #$B0    
       STA    $F6     
       LDA    #$38    
       STA    $9A     
       LDA    #$10    
       STA    $C1     
       LDA    #$FE    
       STA    $F7     
       LDA    #$26    
       STA    $D2     
       LDA    #$C0    
       STA    $D5     
       LDA    #$FF    
       STA    $EB     
       LDA    #$60    
       STA    $86     
       LDA    #$F0    
       STA    $88     
       LDA    #$8C    
       STA    $94     
       RTS            

LFAEC: LDA    $D3     
       LDY    $D4     
       EOR    LF9E4,Y 
       EOR    LF16A,Y 
       ASL            
       ADC    #$00    
       INY            
       STY    $D4     
       LDY    #$00    
       EOR    $8B     
       EOR    $B6     
       STA    $D3     
       RTS            

LFB05: LDA    $B6     
       AND    #$03    
       BNE    LFB2D   
       LDX    #$01    
LFB0D: LDA    $97,X   
       BNE    LFB15   
       LDA    $CE     
       BNE    LFB1B   
LFB15: CMP    $CE     
       BCC    LFB1B   
       LDA    #$01    
LFB1B: CLC            
       ADC    $A1,X   
       STA    $97,X   
       CMP    $B6     
       BNE    LFB2A   
       LDA    $A1,X   
       EOR    #$FE    
       STA    $A1,X   
LFB2A: DEX            
       BPL    LFB0D   
LFB2D: RTS            

LFB2E: LDA    $B6     
       AND    #$07    
       BNE    LFB3A   
       LDA    $9B     
       EOR    #$FF    
       STA    $9B     
LFB3A: LDA    $B6     
       AND    #$7F    
       CMP    #$2C    
       BCS    LFB4A   
       AND    #$03    
       BNE    LFB68   
       DEC    $93     
       BNE    LFB68   
LFB4A: CMP    #$60    
       BCC    LFB64   
       BNE    LFB68   
       LDA    #$E5    
       STA    $93     
       JSR    LFAEC   
       AND    #$7F    
       STA    $99     
       AND    #$07    
       CMP    #$05    
       BCS    LFB68   
       STA    $A5     
       RTS            

LFB64: LDA    #$E7    
       STA    $93     
LFB68: RTS            

LFB69: LDY    #$FF    
       SEC            
LFB6C: INY            
       SBC    #$0F    
       BCS    LFB6C   
       STY    $CE     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $CE     
       RTS            

LFB7E: LDY    #$13    
       LDA    $C2,X   
       ROR            
       BCS    LFB87   
       LDY    #$17    
LFB87: STY    $A6     
       LDA    $C2,X   
       CMP    #$02    
       BCC    LFB3A   
       LDA    #$F0    
       STA    $9E     
       LDA    #$C6    
       STA    $D5     
       LDA    $B6     
       AND    #$03    
       BNE    LFBC9   
       LDA    $9A     
       CMP    #$18    
       BCC    LFBA7   
       CMP    #$50    
       BCC    LFBAD   
LFBA7: LDA    $A3     
       EOR    #$FE    
       STA    $A3     
LFBAD: CLC            
       LDA    $9A     
       ADC    $A3     
       STA    $9A     
       LDA    $BD     
       CMP    #$03    
       BNE    LFBC9   
       LDA    $AE     
       BNE    LFBC9   
       BIT    COLUP1  
       BPL    LFBC9   
       CLC            
       LDA    $94     
       ADC    $A3     
       STA    $94     
LFBC9: LDA    $C2,X   
       CMP    #$04    
       BCC    LFBFB   
       LDA    #$CE    
       STA    $D5     
       LDA    $B0,X   
       AND    #$04    
       BNE    LFBFB   
       LDA    $B0,X   
       AND    #$03    
       CMP    #$02    
       BCS    LFBF7   
       LDA    $B6     
       CMP    #$FF    
       BEQ    LFBF3   
       AND    #$07    
       BNE    LFBFB   
       LDA    $D2     
       EOR    #$07    
       STA    $D2     
       BNE    LFBFB   
LFBF3: LDA    #$F0    
       BNE    LFBF9   
LFBF7: LDA    #$10    
LFBF9: STA    $C1     
LFBFB: LDA    $C2,X   
       CMP    #$03    
       BNE    LFC03   
       LDA    #$06    
LFC03: STA    $A4     
       RTS            

LFC06: LDY    #$D8    
       LDA    $B6     
       STA    $BE     
       AND    #$08    
       BNE    LFC1E   
       LDY    #$DD    
       LDA    $CD     
       ORA    #$08    
       STA    $CD     
       LDA    $CC     
       ORA    #$40    
       STA    $CC     
LFC1E: STY    $AD     
       LDA    $88     
       BNE    LFC52   
       BIT    WSYNC   
       BPL    LFC52   
       LDX    $BF     
       INC    $C2,X   
       LDY    #$05    
       SEC            
       LDA    $84,X   
       SBC    #$06    
       STA    $84,X   
       BNE    LFC41   
       LDA    $82,X   
       CMP    #$0A    
       BCC    LFC40   
       CLC            
       ADC    #$06    
LFC40: TAY            
LFC41: TXA            
       ASL            
       TAX            
       CLC            
       TYA            
       SED            
       ADC    $B7,X   
       STA    $B7,X   
       CLD            
       JSR    LFA9B   
       JMP    LF038   
LFC52: LDA    $AF     
       BEQ    LFC5A   
       DEC    $AF     
       BPL    LFC6B   
LFC5A: BIT    COLUP1  
       BPL    LFC75   
       LDA    #$10    
       LDY    #$00    
       STA    $CE     
       JSR    LFD37   
       LDA    #$20    
       STA    $AF     
LFC6B: LDA    $88     
       CMP    #$68    
       BEQ    LFC95   
       INC    $88     
       BNE    LFC95   
LFC75: JSR    LF8D4   
       JSR    LF8E7   
       LDA    $88     
       BEQ    LFC88   
       JSR    LF93D   
       BNE    LFC88   
       DEC    $88     
       BPL    LFC95   
LFC88: LDA    $88     
       CMP    #$68    
       BEQ    LFC95   
       JSR    LF949   
       BNE    LFC95   
       INC    $88     
LFC95: LDA    $86     
       BMI    LFC9D   
       LDA    #$A0    
       STA    $86     
LFC9D: LDX    $BF     
       LDA    $C2,X   
       CMP    #$02    
       BCC    LFCAE   
       LDX    #$05    
       LDA    #$80    
       STA    $CE     
       JSR    LFB0D   
LFCAE: LDA    #$E2    
       STA    $DC     
       INC    $AB     
       INC    $AB     
       LDX    $AA     
       LDA    $F0,X   
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$06    
       CMP    $AB     
       BNE    LFD07   
       CPX    #$05    
       BNE    LFCCA   
       LDX    #$FF    
LFCCA: INX            
       STX    $AA     
       JSR    LFAEC   
       STA    $97,X   
       AND    #$F7    
       CMP    #$40    
       BCS    LFCDA   
       LDA    #$80    
LFCDA: STA    $F0,X   
       AND    #$07    
       TAY            
       BEQ    LFCE5   
       CPY    #$07    
       BNE    LFCEF   
LFCE5: LDA    $F0,X   
       AND    #$F8    
       ORA    #$06    
       LDY    #$06    
       STA    $F0,X   
LFCEF: LDA    $97,X   
       CMP    LFDE7,Y 
       BCC    LFD01   
       LDA    $B6     
       ROR            
       BCS    LFCFF   
       LDA    #$46    
       BPL    LFD01   
LFCFF: LDA    #$05    
LFD01: STA    $97,X   
       LDA    #$00    
       STA    $AB     
LFD07: LDX    #$08    
       JMP    LF7B7   
LFD0C: LDY    #$FF    
       STY    $F2     
       STY    $A4     
       STY    $A5     
       INY            
       STY    $AA     
       STY    $AB     
       INY            
       STY    $A6     
       STY    $99     
       LDA    #$90    
       STA    $F0     
       LDA    #$68    
       STA    $88     
       STA    $98     
       LDA    #$FD    
       STA    $AE     
       LDA    #$FD    
       STA    $DD     
       LDA    #$40    
       STA    $97     
       STA    $9B     
       RTS            

LFD37: LDA    $BF     
       ASL            
       TAX            
       SEC            
       SED            
       LDA    $B8,X   
       SBC    $CE     
       STA    $B8,X   
       LDA    $B7,X   
       STY    $CE     
       SBC    $CE     
       STA    $B7,X   
       CLD            
       BCS    LFD54   
       LDA    #$00    
       STA    $B8,X   
       STA    $B7,X   
LFD54: LDX    $BF     
       RTS            

LFD57: LDX    #$01    
LFD59: LDA    $CC,X   
       LDY    LFFFE,X 
LFD5E: ASL            
       BCS    LFD67   
       DEY            
       DEY            
       BPL    LFD5E   
       BMI    LFDAF   
LFD67: TYA            
       CMP    $CA,X   
       BCC    LFD75   
       BEQ    LFD75   
       LDA    LFF6F,Y 
       STA    $C8,X   
       STY    $CA,X   
LFD75: LDY    $CA,X   
       LDA    LFEBF,Y 
       STA    $CE     
       LDA    #$FF    
       STA    $CF     
       LDA    $C6,X   
       BEQ    LFD89   
       DEC    $C6,X   
       JMP    LFDAF   
LFD89: LDY    $C8,X   
       DEY            
       STY    $C8,X   
       BEQ    LFDA9   
       LDA    ($CE),Y 
       STA    $C6,X   
       DEY            
       LDA    ($CE),Y 
       STA    AUDF0,X 
       DEY            
       LDA    ($CE),Y 
       STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       STY    $C8,X   
       JMP    LFDAF   
LFDA9: STY    AUDV0,X 
       STY    $CC,X   
       STY    $CA,X   
LFDAF: DEX            
       BPL    LFD59   
       RTS            

LFDB3: .byte $02,$4D,$00,$48,$02,$00,$80,$40,$20,$18,$04,$1B,$80,$40,$21,$12
       .byte $0C,$10,$20,$C0,$00,$00,$18,$18,$7E,$18,$3C,$24,$24,$FF,$FF,$18
       .byte $7E,$7E,$18,$3C,$18,$00,$81,$5A,$3C,$18,$00,$18,$18,$BD,$42,$28
       .byte $28,$C8,$C8,$68
LFDE7: .byte $86,$76,$66,$66,$46,$7E,$46,$6E,$00,$00,$00,$00,$18,$5B,$BD,$BD
       .byte $BD,$A5,$A5,$84,$80,$00,$00,$00,$00
LFE00: .byte $00,$00,$00,$00,$18,$3C,$7E,$6A,$6A,$7E,$7E,$7E,$7E,$7C,$F8,$00
       .byte $FF,$BD,$E7,$FF,$FF,$BD,$FF,$DB,$FF,$FF,$00,$00,$00,$00,$00,$00
       .byte $03,$03,$02,$03,$03,$01,$02,$01,$7F,$7F,$7F,$6F,$67,$67,$67,$67
       .byte $47,$07,$07,$07,$0F,$1E,$1C,$18,$18,$18,$18,$18,$78,$78,$00,$00
       .byte $00,$00,$03,$03,$02,$03,$03,$01,$02,$01,$7F,$7F,$7F,$6F,$67,$67
       .byte $07,$07,$07,$0F,$1F,$1F,$1F,$18,$18,$18,$78,$78,$00,$00,$00,$00
       .byte $00,$1C,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$1C,$18,$00
       .byte $00,$C6,$44,$44,$24,$1C,$1C,$1C,$1C,$2A,$49,$5D,$5D,$22,$24,$00
       .byte $00,$0C,$08,$48,$74,$1C,$18,$18,$18,$1E,$78,$38,$18,$1C,$18,$00
       .byte $00,$30,$24,$36,$12,$16,$1C,$18,$18,$1C,$18,$18,$0C,$0E,$0C,$00
       .byte $00,$04,$04,$04,$24,$24,$24,$18,$1A,$1A,$5A,$7C,$18,$18,$18,$00
       .byte $00,$44,$84,$84,$84,$84,$84,$84,$E8,$E8,$E8,$E8,$24,$8E,$8E
LFEBF: .byte $00,$7F,$00,$9A,$00,$85,$00,$88,$AC,$8E,$B2,$A6,$C1,$D6,$C7,$DF
       .byte $CD,$00,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$49
       .byte $5D,$3E,$1C,$1C,$6B,$49,$55,$41,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$78,$CC,$CC,$CC,$CC,$CC,$CC,$78,$78,$30,$30,$30,$30,$30,$70
       .byte $30,$FC,$C0,$C0,$78,$0C,$0C,$8C,$78,$78,$8C,$0C,$18,$18,$0C,$8C
       .byte $78,$18,$18,$18,$FC,$98,$58,$38,$18,$F8,$8C,$0C,$0C,$F8,$C0,$C0
       .byte $FC,$78,$CC,$CC,$CC,$78,$C0,$C4,$78,$30,$30,$30,$30,$18,$0C,$84
       .byte $FC,$78,$CC,$CC,$78,$78,$CC,$CC,$78,$78,$8C,$0C,$7C,$CC,$CC,$CC
       .byte $78,$DB,$DB,$DB,$DB,$DB,$DB,$DB,$DB,$1B,$1B,$1B,$1B,$1B,$1B,$1B
       .byte $1B,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00
LFF6F: .byte $00,$07,$01,$0D,$01,$04,$01,$07,$07,$0D,$10,$07,$07,$07,$0A,$13
       .byte $0A,$BA,$1D,$06,$3F,$17,$00,$18,$12,$10,$4C,$0D,$0A,$4C,$1C,$0A
       .byte $14,$0F,$20,$34,$06,$10,$3A,$06,$0C,$3F,$06,$10,$C4,$13,$08,$1A
       .byte $0D,$04,$38,$1C,$04,$16,$1A,$04,$BA,$1D,$06,$F4,$0A,$06,$DA,$1F
       .byte $00,$2A,$0D,$01,$84,$0A,$0A,$8A,$0A,$0A,$8F,$0A,$0A,$8A,$1A,$01
       .byte $8F,$1A,$03,$1F,$1E,$20,$1F,$1F,$20,$40,$1F,$02,$D0,$1C,$02,$38
       .byte $0F,$1A,$8C,$1D,$10,$1A,$1A,$10,$48,$03,$01,$46,$02,$01,$46,$01
       .byte $01,$4D,$12,$18,$4D,$16,$04,$4D,$12,$08,$4D,$15,$04,$4D,$16,$04
       .byte $4D,$1C,$28,$F8,$6D,$15,$ED,$70,$6B,$9F,$1F,$B8,$49,$00,$F0
LFFFE: .byte $0F,$10
