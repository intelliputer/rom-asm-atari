; Disassembly of roms/Planet Patrol.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Planet Patrol.bin
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
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
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
HMM0    =  $22
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXM1FB  =  $35
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
LF000: SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       DEX            
       TXS            
       LDA    #$FE    
       STA    $81     
       STA    $83     
       STA    $85     
       STA    $87     
       STA    $89     
       STA    $8B     
       STA    $B7     
       STA    $DC     
       JSR    LFCCA   
       LDA    $8C     
       BEQ    LF029   
       LDX    #$01    
       BNE    LF02B   
LF029: LDX    #$02    
LF02B: STX    $CD     
       STX    $D3     
       INC    $DA     
       LDX    #$03    
       STX    $CC     
       STX    $D2     
       LDA    #$60    
       STA    $AC     
       LDA    #$FF    
       STA    $C4     
       LDA    #$05    
       STA    $C5     
       STA    $CB     
       LDA    #$FF    
       STA    $D1     
       STA    $D7     
       STA    $CA     
LF04D: LDA    #$08    
       STA    AUDC0   
       LDA    #$15    
       STA    AUDF0   
       LDA    #$02    
       STA    AUDV0   
       LDA    $B8     
       BNE    LF0A5   
       LDA    #$00    
       LDY    #$00    
       LDX    #$06    
LF063: STA    $8E,X   
       STY    $9A,X   
       DEX            
       BPL    LF063   
       LDA    #$FF    
       STA    $96     
       STA    $98     
       STA    $A2     
       STX    $99     
       STX    $BB     
       STX    $B4     
       LDX    $CD     
       LDA    $AA     
       CMP    #$02    
       BCS    LF088   
       CPX    #$06    
       BNE    LF08E   
       LDX    #$02    
       BNE    LF08E   
LF088: CPX    #$04    
       BNE    LF08E   
       LDX    #$01    
LF08E: STX    $CD     
       DEX            
       LDA    LFFF6,X 
       STA    $B2     
       STA    $B1     
       LDA    #$00    
       STA    $B3     
       STA    AUDV1   
       LDA    #$08    
       STA    $C8     
       JMP    LF0D7   
LF0A5: CMP    #$01    
       BNE    LF0D7   
       LDA    #$FF    
       STA    $A2     
       LDA    #$04    
       STA    $A3     
       LDX    #$06    
       LDA    #$00    
LF0B5: STA    $9A,X   
       DEX            
       BPL    LF0B5   
       LDA    $AC     
       AND    #$07    
       LDY    #$03    
       STY    $A4     
LF0C2: CMP    #$07    
       BCC    LF0C8   
       SBC    #$07    
LF0C8: TAX            
       LDA    #$50    
       STA    $9A,X   
       INX            
       INX            
       TXA            
       DEY            
       BNE    LF0C2   
       LDA    #$08    
       STA    $C8     
LF0D7: LDA    INTIM   
       BNE    LF0D7   
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    COLUPF  
       LDA    #$FF    
       STA    TIM64T  
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$30    
       STA    PF0     
       STA    WSYNC   
       LDA    $C8     
       ORA    #$90    
       STA    COLUBK  
       LDA    $8C     
       BNE    LF170   
       LDA    #$00    
       LDY    #$10    
       STA    HMP0    
       STY    HMP1    
       LDY    #$08    
       STA    WSYNC   
LF10B: DEY            
       BNE    LF10B   
       STA    RESP0   
       STA    RESP1   
       INY            
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDX    #$1D    
       LDA    #$12    
       STA    $D8     
       LDA    #$3A    
       JSR    LF145   
       LDA    #$0C    
       STA    $D8     
       LDA    $AD     
       LSR            
       LSR            
       JSR    LF145   
       LDA    #$FF    
       STA    $D8     
       LDA    #$3A    
       JSR    LF145   
       STA    WSYNC   
       INX            
       STX    GRP0    
       STX    GRP1    
       LDX    #$09    
       JSR    LFD74   
       JMP    LF258   
LF145: STA    COLUP0  
       STA    COLUP1  
LF149: STA    WSYNC   
       STA    HMOVE   
       LDA    LFD88,X 
       STA    GRP0    
       LDA    LFDA6,X 
       STA    GRP1    
       LDY    LFDE2,X 
       LDA    LFDC4,X 
       CMP    ($80,X) 
       CMP    ($82,X) 
       CMP    ($84,X) 
       NOP            
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       CPX    $D8     
       BNE    LF149   
       RTS            

LF170: LDA    $BC     
       BNE    LF178   
       LDA    #$0F    
       BNE    LF17A   
LF178: LDA    #$38    
LF17A: STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       LDY    #$10    
       STA    HMP0    
       STY    HMP1    
       STA    WSYNC   
       LDY    #$06    
LF190: DEY            
       BNE    LF190   
       NOP            
       STA    RESP0   
       STA    WSYNC   
       LDY    #$06    
LF19A: DEY            
       BNE    LF19A   
       CMP    ($00),Y 
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
LF1AB: STY    $AF     
       LDA    ($80),Y 
       STA    $D8     
       STA    WSYNC   
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($88),Y 
       STA    GRP1    
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($82),Y 
       TAX            
       LDA    ($84),Y 
       LDY    $D8     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $AF     
       DEY            
       BPL    LF1AB   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    WSYNC   
       LDA    $C8     
       CMP    #$08    
       BEQ    LF1F6   
       LDA    #$1A    
       STA    $D8     
       LDX    #$FF    
       LDY    #$70    
       LDA    #$00    
       JMP    LF200   
LF1F6: LDA    #$36    
       STA    $D8     
       LDX    #$FE    
       LDY    #$58    
       LDA    #$88    
LF200: STX    $DE     
       STX    $E0     
       STY    $DD     
       STA    $DF     
       LDA    #$04    
       STA    NUSIZ0  
       LDA    #$06    
       STA    NUSIZ1  
       LDA    #$30    
       STA    HMP0    
       LDA    #$20    
       STA    HMP1    
       STA    WSYNC   
       LDX    #$05    
LF21C: DEX            
       BNE    LF21C   
       STA    RESP0   
       LDX    #$03    
LF223: DEX            
       BNE    LF223   
       STA    RESP1   
       LDA    #$0A    
       STA    COLUP1  
       LDY    #$0F    
LF22E: STA    WSYNC   
       LDA    $D8     
       STA    COLUP0  
       STA    HMOVE   
       LDA    ($DD),Y 
       STA    GRP0    
       LDA    ($DF),Y 
       STA    GRP1    
       LDX    #$02    
LF240: DEX            
       BNE    LF240   
       LDA    #$0A    
       STA    COLUP0  
       LDA    ($DF),Y 
       STA    GRP0    
       STA    HMCLR   
       DEY            
       BPL    LF22E   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
LF258: STA    WSYNC   
       LDA    $99     
       CMP    #$FF    
       BEQ    LF264   
       LDA    #$40    
       STA    HMM1    
LF264: STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    $C8     
       LSR            
       TAX            
       LDA    LFEB3,X 
       STA    COLUP0  
       LDA    LFEB4,X 
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ0  
       LDA    #$05    
       STA    NUSIZ1  
       LDA    $CB     
       STA    HMP0    
       STA    HMP1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF28B: DEY            
       BNE    LF28B   
       STA    RESP0   
       STA    RESP1   
       LDX    #$0B    
LF294: DEX            
       BNE    LF294   
       LDX    #$0F    
LF299: TXA            
       LSR            
       ADC    $C8     
       LSR            
       TAY            
       LDA    LFEA0,Y 
       STA    WSYNC   
       STA    COLUBK  
       STA    HMOVE   
       LDA    LFE68,X 
       STA    GRP0    
       LDA    LFE78,X 
       STA    GRP1    
       CMP    ($80),Y 
       LDA    LFE68,X 
       STA    GRP0    
       CMP    ($80),Y 
       CMP    ($80),Y 
       LDA    LFE68,X 
       STA    GRP0    
       STA    HMCLR   
       DEX            
       BPL    LF299   
       LDA    $C8     
       CMP    #$04    
       BCS    LF2D5   
       LDA    $C9     
       BEQ    LF2D5   
       LDA    #$14    
       BNE    LF2D9   
LF2D5: LDA    $C8     
       ORA    #$10    
LF2D9: STA    WSYNC   
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    CXCLR   
       LDA    $B8     
       CMP    #$03    
       BEQ    LF2F6   
       CMP    #$09    
       BEQ    LF2F6   
       CMP    #$0A    
       BEQ    LF2F6   
       JMP    LF34D   
LF2F6: STA    WSYNC   
       LDA    $AD     
       STA    COLUBK  
       LDA    #$E4    
       STA    COLUP0  
       LDY    #$0B    
       STA    WSYNC   
LF304: DEY            
       BNE    LF304   
       STA    RESP1   
       STY    NUSIZ1  
       STY    HMP1    
       LDX    #$06    
LF30F: LDA    $A3,X   
       STA    HMP0    
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF318: DEY            
       BNE    LF318   
       STA    RESP0   
       LDA    $8E,X   
       STA    $95     
       CLC            
       ADC    #$50    
       STA    $97     
       LDA    $9A,X   
       STA    NUSIZ0  
       LDY    #$0F    
LF32C: STA    WSYNC   
       STA    HMOVE   
       LDA    LFFA0,Y 
       STA    GRP0    
       LDA    ($97),Y 
       STA    COLUP1  
       LDA    ($95),Y 
       STA    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LF32C   
       DEX            
       BPL    LF30F   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
LF34D: LDA    $B8     
       BEQ    LF362   
       CMP    #$02    
       BEQ    LF35C   
       CMP    #$04    
       BEQ    LF362   
       JMP    LF407   
LF35C: STA    WSYNC   
       LDA    $AD     
       STA    COLUBK  
LF362: LDY    #$0B    
       STA    WSYNC   
LF366: DEY            
       BNE    LF366   
       STA    RESP1   
       STY    NUSIZ0  
       STY    HMP1    
       STY    $AB     
       TSX            
       STX    $D8     
       LDX    #$1E    
       TXS            
       LDA    #$10    
       STA    NUSIZ1  
       LDX    #$06    
LF37D: LDA    $8E,X   
       STA    WSYNC   
       STA    $95     
       CLC            
       ADC    #$50    
       STA    $97     
       LDA    $AB     
       EOR    $99     
       AND    #$FE    
       PHP            
       LDY    #$0F    
       LDA    ($97),Y 
       STA    COLUP1  
       LDA    ($95),Y 
       STA    GRP1    
       INC    $AB     
       PLA            
       LDA    $9A,X   
       STA    $A1     
       LDA    $C8     
       BNE    LF3A8   
       LDA    #$10    
       BNE    LF3AA   
LF3A8: LDA    ($A1),Y 
LF3AA: STA    COLUP0  
       STA    WSYNC   
       LDA    $A3,X   
       STA    HMP0    
       AND    #$0F    
       TAY            
LF3B5: DEY            
       BNE    LF3B5   
       NOP            
       NOP            
       STA    RESP0   
       LDA    $AB     
       EOR    $99     
       AND    #$FE    
       PHP            
       INC    $AB     
       PLA            
       LDY    #$0E    
       LDA    ($97),Y 
       STA    COLUP1  
       LDA    ($95),Y 
       STA    GRP1    
       LDY    #$06    
LF3D2: DEY            
       BNE    LF3D2   
       LDY    #$0D    
LF3D7: LDA    ($97),Y 
       STA    WSYNC   
       STA    COLUP1  
       STA    HMOVE   
       LDA    ($A1),Y 
       STA    GRP0    
       LDA    ($95),Y 
       STA    GRP1    
       LDA    $AB     
       EOR    $99     
       AND    #$FE    
       PHP            
       STA    HMCLR   
       INC    $AB     
       PLA            
       DEY            
       BPL    LF3D7   
       DEX            
       BPL    LF37D   
       LDX    $D8     
       TXS            
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       JMP    LF548   
LF407: LDA    $B8     
       CMP    #$01    
       BEQ    LF418   
       CMP    #$08    
       BEQ    LF414   
       JMP    LF48A   
LF414: LDA    $AD     
       STA    COLUBK  
LF418: LDY    #$0B    
       STA    WSYNC   
LF41C: DEY            
       BNE    LF41C   
       STA    RESP1   
       LDA    $A3     
       STA    HMP0    
       STA    HMM0    
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF42C: DEY            
       BNE    LF42C   
       STA    RESP0   
       STY    NUSIZ0  
       STA    RESM0   
       STY    HMP1    
       STY    $AB     
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$C4    
       STA    COLUP0  
       TSX            
       STX    $D8     
       LDX    #$1E    
       TXS            
       LDX    #$06    
LF449: LDA    $8E,X   
       STA    $95     
       CLC            
       ADC    #$50    
       STA    $97     
       LDA    $9A,X   
       STA    $A1     
       LDY    #$0F    
LF458: STA    WSYNC   
       STA    HMOVE   
       LDA    ($A1),Y 
       STA    GRP0    
       LDA    ($97),Y 
       STA    COLUP1  
       LDA    ($95),Y 
       STA    GRP1    
       LDA    $AB     
       STA    ENAM0   
       STA    HMCLR   
       EOR    $99     
       PHP            
       INC    $AB     
       PLA            
       DEY            
       BPL    LF458   
       DEX            
       BPL    LF449   
       LDX    $D8     
       TXS            
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       JMP    LF548   
LF48A: LDA    $B8     
       CMP    #$05    
       BEQ    LF49F   
       CMP    #$06    
       BEQ    LF49F   
       CMP    #$07    
       BEQ    LF49F   
       CMP    #$0B    
       BEQ    LF49F   
       JMP    LF548   
LF49F: LDY    #$0B    
       STA    WSYNC   
LF4A3: DEY            
       BNE    LF4A3   
       STA    RESP0   
       STY    NUSIZ1  
       STY    NUSIZ0  
       STY    HMP0    
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$C4    
       STA    COLUP1  
       LDA    $C5     
       STA    HMP1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF4BF: DEY            
       BNE    LF4BF   
       STA    RESP1   
       LDX    #$06    
LF4C6: LDA    #$30    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    $8E,X   
       STA    $95     
       CLC            
       ADC    #$50    
       STA    $97     
       LDA    $9A,X   
       STA    $C3     
       CPX    $B0     
       BNE    LF4EE   
       LDY    #$05    
LF4E3: LDA.wy $00BD,Y 
       STA.wy $00A3,Y 
       DEY            
       BPL    LF4E3   
       BMI    LF4FE   
LF4EE: LDA    #$00    
       STA    $A4     
       STA    $A5     
       STA    $A8     
       STA    $A7     
       LDA    #$30    
       STA    $A3     
       STA    $A6     
LF4FE: LDY    #$0F    
LF500: LDA    ($97),Y 
       STA    WSYNC   
       STA    COLUP0  
       LDA    $A3     
       STA    PF0     
       LDA    $A4     
       STA    PF1     
       LDA    $A5     
       STA    PF2     
       STA    HMOVE   
       LDA    ($95),Y 
       STA    GRP0    
       LDA    ($C3),Y 
       STA    GRP1    
       STA    HMCLR   
       LDA    $A8     
       STA    PF2     
       LDA    $A7     
       STA    PF1     
       LDA    $A6     
       STA    PF0     
       DEY            
       BPL    LF500   
       DEX            
       BPL    LF4C6   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF1     
       STA    PF2     
       LDA    #$30    
       STA    PF0     
       LDX    #$07    
       JSR    LFD74   
       JMP    LF599   
LF548: STA    WSYNC   
       LDA    $C8     
       LSR            
       ORA    #$10    
       STA    COLUP1  
       LDA    #$00    
       STA    NUSIZ1  
       LDA    $AC     
       AND    #$3C    
       ASL            
       ASL            
       CLC            
       ADC    #$80    
       STA    HMP1    
       LDA    $AC     
       AND    #$40    
       STA    WSYNC   
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$01    
       ADC    #$08    
       TAY            
LF571: DEY            
       BNE    LF571   
       STA    RESP1   
       LDX    #$05    
LF578: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       LDA    LFFF0,X 
       STA    GRP1    
       LDY    #$07    
LF587: DEY            
       BNE    LF587   
       STA    HMCLR   
       DEX            
       BPL    LF578   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
LF599: LDA    #$00    
       STA    COLUBK  
       LDA    $8C     
       BNE    LF5A4   
       JMP    LF631   
LF5A4: LDY    $CC     
       BNE    LF5AC   
LF5A8: LDX    #$00    
       BEQ    LF5C5   
LF5AC: DEY            
       BNE    LF5B3   
       STY    NUSIZ0  
       BEQ    LF5C3   
LF5B3: DEY            
       BNE    LF5BC   
       LDA    #$01    
       STA    NUSIZ0  
       BNE    LF5C3   
LF5BC: DEY            
       BNE    LF5A8   
       LDA    #$03    
       STA    NUSIZ0  
LF5C3: LDX    #$C8    
LF5C5: STX    COLUP0  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    $CA     
       CMP    #$01    
       BEQ    LF5D7   
       LDA    #$0A    
       BNE    LF5D9   
LF5D7: LDA    #$44    
LF5D9: STA    COLUPF  
       STA    WSYNC   
       LDY    #$04    
LF5DF: DEY            
       BNE    LF5DF   
       STA    RESP0   
       LDY    #$06    
LF5E6: DEY            
       BNE    LF5E6   
       STA    RESP1   
       LDX    #$01    
       STX    CTRLPF  
       INX            
       STX    NUSIZ1  
       LDA    #$C6    
       STA    COLUP1  
       LDA    #$40    
       STA    HMP1    
       LDX    #$07    
LF5FC: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    HMOVE   
       LDA    LFE98,X 
       STA    GRP0    
       LDA    LFEB9,X 
       STA    GRP1    
       LDY    #$02    
LF610: DEY            
       BNE    LF610   
       LDA    $CA     
       STA    PF1     
       CMP    ($80,X) 
       CMP    ($82,X) 
       NOP            
       NOP            
       LDA    LFEC1,X 
       STA    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF5FC   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF1     
LF631: LDA    INTIM   
       BNE    LF631   
       LDA    #$04    
       STA    TIM64T  
LF63B: LDA    INTIM   
       BNE    LF63B   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    WSYNC   
       LDA    #$30    
       STA    TIM64T  
       LDA    $D9     
       BEQ    LF660   
       JMP    LF9D5   
LF660: LDA    $B8     
       BEQ    LF67F   
       CMP    #$01    
       BEQ    LF67F   
       CMP    #$03    
       BEQ    LF67F   
       CMP    #$04    
       BEQ    LF67F   
       CMP    #$05    
       BEQ    LF67F   
       CMP    #$07    
       BEQ    LF67F   
       CMP    #$09    
       BEQ    LF67F   
       JMP    LF723   
LF67F: LDA    #$02    
       STA    AUDV0   
       LDA    $8C     
       BEQ    LF6BD   
       LDA    $C1     
       BNE    LF6DB   
       STA    SWACNT  
       LDA    SWCHA   
       LDX    $BC     
       BNE    LF699   
       LSR            
       LSR            
       LSR            
       LSR            
LF699: LSR            
       BCS    LF6AA   
       LDY    $AC     
       BEQ    LF6DB   
       DEY            
       STY    $AC     
       LDA    #$05    
       STA    AUDV0   
       JMP    LF6DB   
LF6AA: LSR            
       BCS    LF6DB   
       LDY    $AC     
       CPY    #$60    
       BEQ    LF6DB   
       INY            
       STY    $AC     
       LDA    #$00    
       STA    AUDV0   
       JMP    LF6DB   
LF6BD: LDA    $AC     
       BNE    LF6C8   
       LDX    #$60    
       STX    $8D     
       JMP    LF6D0   
LF6C8: CMP    #$60    
       BNE    LF6D0   
       LDX    #$00    
       STX    $8D     
LF6D0: CMP    $8D     
       BCC    LF6D9   
       DEC    $AC     
       JMP    LF6DB   
LF6D9: INC    $AC     
LF6DB: LDA    #$00    
       LDX    #$06    
LF6DF: STA    $8E,X   
       DEX            
       BPL    LF6DF   
       LDA    $AC     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D8     
       LDA    #$06    
       SEC            
       SBC    $D8     
       TAX            
       LDA    $AC     
       AND    #$0F    
       CLC            
       ADC    #$10    
       LDY    #$00    
       STY    SWBCNT  
       LDY    $BC     
       BEQ    LF70B   
       BIT    SWCHB   
       BPL    LF715   
       BMI    LF710   
LF70B: BIT    SWCHB   
       BVC    LF715   
LF710: ADC    #$00    
       JMP    LF717   
LF715: ADC    #$20    
LF717: STA    $8E,X   
       CPX    #$00    
       BEQ    LF723   
       DEX            
       SEC            
       SBC    #$10    
       STA    $8E,X   
LF723: LDA    $B8     
       CMP    #$09    
       BNE    LF737   
       BIT    CXPPMM  
       BPL    LF737   
       LDA    #$0A    
       STA    $B8     
       LDA    #$00    
       STA    $B9     
       STA    $AD     
LF737: LDA    $B8     
       CMP    #$01    
       BEQ    LF740   
       JMP    LF7D4   
LF740: LDA    $AD     
       LDX    $CD     
       CPX    #$03    
       BCS    LF74D   
       AND    #$03    
       JMP    LF74F   
LF74D: AND    #$01    
LF74F: BNE    LF758   
       LDA    $A3     
       JSR    LFC84   
       STA    $A3     
LF758: BIT    CXM0P   
       BPL    LF76B   
       LDA    #$08    
       STA    $B8     
       LDA    #$00    
       STA    $B9     
       STA    $AD     
       STA    $CC     
       JMP    LF7B8   
LF76B: BIT    CXM1P   
       BPL    LF7C9   
       JSR    LFD4A   
       LDA    $99     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D8     
       LDA    #$06    
       SEC            
       SBC    $D8     
       TAX            
       LDA    #$00    
       STA    $9A,X   
       LDA    #$FF    
       STA    $99     
       DEC    $A4     
       BNE    LF7D1   
       LDY    $AD     
       LDX    #$06    
LF790: LDA    LF000,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       STA    $9A,X   
       AND    #$03    
       ADC    #$04    
       STA    $A3,X   
       INY            
       INY            
       INY            
       DEX            
       BPL    LF790   
       LDA    #$04    
       STA    $A3     
       LDA    #$03    
       STA    $B8     
       LDA    #$00    
       STA    $AD     
       LDX    #$06    
       JSR    LFC91   
LF7B8: LDX    #$FF    
       STX    $C6     
       STX    $99     
       LDA    #$08    
       STA    AUDC0   
       LDA    #$1F    
       STA    AUDF0   
       JMP    LF7D1   
LF7C9: BIT    CXM1FB  
       BPL    LF7D1   
       LDA    #$FF    
       STA    $99     
LF7D1: JMP    LF93D   
LF7D4: LDA    $B8     
       BEQ    LF7DB   
       JMP    LF93D   
LF7DB: LDA    $8C     
       BEQ    LF7FD   
       LDA    $B3     
       BPL    LF7FF   
       CMP    #$F0    
       BEQ    LF7EF   
       LDA    $AD     
       AND    #$0F    
       CMP    #$08    
       BCC    LF7F3   
LF7EF: LDA    #$00    
       BEQ    LF7FD   
LF7F3: LDA    #$04    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDF0   
       LDA    #$0A    
LF7FD: STA    AUDV0   
LF7FF: BIT    CXM1FB  
       BMI    LF83C   
       BIT    CXM1P   
       BPL    LF840   
       LDA    $99     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D8     
       LDA    #$06    
       SEC            
       SBC    $D8     
       TAX            
       LDY    $9A,X   
       LDA    #$00    
       STA    $9A,X   
       CPY    #$B0    
       BNE    LF826   
       LDA    #$B0    
       STA    $9A,X   
       JMP    LF840   
LF826: CPY    #$C0    
       BNE    LF835   
       JSR    LFD4A   
       LDX    #$02    
       JSR    LFC91   
       JMP    LF83C   
LF835: LDA    #$F0    
       STA    $B3     
       JSR    LFD4A   
LF83C: LDA    #$FF    
       STA    $99     
LF840: BIT    CXPPMM  
       BPL    LF883   
       LDA    $8C     
       BEQ    LF883   
       LDA    $AC     
       CLC            
       ADC    #$08    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D8     
       LDA    #$06    
       SEC            
       SBC    $D8     
       TAX            
       LDY    $9A,X   
       LDA    #$00    
       STA    $9A,X   
       CPY    #$D0    
       BNE    LF876   
       LDA    #$F0    
       STA    $B3     
       LDX    #$04    
       JSR    LFC91   
       LDA    #$03    
       LDX    #$F9    
       JSR    LFD61   
       JMP    LF883   
LF876: LDA    #$02    
       STA    $B8     
       LDA    #$00    
       STA    $B9     
       STA    $AD     
       JMP    LF7B8   
LF883: LDX    #$06    
LF885: LDA    $9A,X   
       CMP    #$00    
       BNE    LF8C3   
       LDA    $B2     
       BEQ    LF8AF   
       LDA    $B1     
       BEQ    LF8A6   
       ADC    $AC     
       ADC    $B2     
       ADC    $99     
       AND    #$01    
       BEQ    LF8A6   
LF89D: DEC    $B1     
       LDA    #$B0    
       STA    $9A,X   
       JMP    LF8BF   
LF8A6: DEC    $B2     
       LDA    #$C0    
       STA    $9A,X   
       JMP    LF8BF   
LF8AF: LDA    $B1     
       BNE    LF89D   
       BIT    $B3     
       BMI    LF8C3   
       LDA    #$D0    
       STA    $9A,X   
       LDA    #$FF    
       STA    $B3     
LF8BF: LDA    #$01    
       STA    $A3,X   
LF8C3: DEX            
       BPL    LF885   
       LDA    $B8     
       CMP    #$02    
       BEQ    LF8E7   
       LDX    #$06    
LF8CE: LDA    $9A,X   
       CMP    #$00    
       BNE    LF8E7   
       DEX            
       BPL    LF8CE   
       LDA    #$04    
       STA    $B8     
       LDA    #$01    
       STA    $B9     
       LDA    #$00    
       STA    $AD     
       LDA    #$FF    
       STA    $99     
LF8E7: LDX    #$06    
LF8E9: LDA    $9A,X   
       CMP    #$00    
       BEQ    LF93A   
       LDA    $CD     
       CMP    #$03    
       BCS    LF909   
       LDA    $9A,X   
       CMP    #$B0    
       BEQ    LF901   
       LDA    $AD     
       AND    #$01    
       BEQ    LF93A   
LF901: LDA    $A3,X   
       JSR    LFC84   
       JMP    LF92E   
LF909: CMP    #$05    
       BEQ    LF91D   
       LDA    $9A,X   
       CMP    #$B0    
       BNE    LF901   
LF913: LDA    $A3,X   
       JSR    LFC84   
       STA    $A3,X   
       JMP    LF901   
LF91D: LDA    $9A,X   
       CMP    #$B0    
       BNE    LF913   
       LDA    $A3,X   
       JSR    LFC84   
       JSR    LFC84   
       JSR    LFC84   
LF92E: CMP    #$4B    
       BNE    LF938   
       LDA    #$00    
       STA    $9A,X   
       LDA    #$01    
LF938: STA    $A3,X   
LF93A: DEX            
       BPL    LF8E9   
LF93D: LDA    $B8     
       BEQ    LF948   
       CMP    #$01    
       BEQ    LF948   
       JMP    LF99D   
LF948: LDA    $8C     
       BNE    LF958   
       LDA    $AC     
       AND    #$0F    
       BNE    LF99D   
       LDA    #$FF    
       STA    $D1     
       BNE    LF95E   
LF958: LDX    $BC     
       LDA    INPT4,X 
       BMI    LF99D   
LF95E: LDA    $99     
       CMP    #$FF    
       BNE    LF99D   
       LDA    $D1     
       BEQ    LF99D   
       LDX    #$0C    
       STA    WSYNC   
LF96C: DEX            
       BNE    LF96C   
       STA    RESM1   
       LDA    #$10    
       STA    $C9     
       LDA    $AC     
       AND    #$FE    
       CLC            
       ADC    #$08    
       STA    $99     
       LDA    $B4     
       BPL    LF998   
       LDA    #$01    
       STA    AUDC1   
       LDA    #$E1    
       STA    $DB     
       LDA    #$02    
       STA    $B5     
       STA    $C7     
       LDA    #$07    
       STA    $B4     
       LDA    #$D9    
       STA    $B6     
LF998: DEC    $D1     
       JSR    LFD31   
LF99D: LDA    $B8     
       BEQ    LF9B8   
       CMP    #$01    
       BEQ    LF9B8   
       CMP    #$04    
       BEQ    LF9B8   
       CMP    #$05    
       BEQ    LF9B8   
       CMP    #$07    
       BEQ    LF9B8   
       CMP    #$09    
       BEQ    LF9B8   
       JMP    LF9D5   
LF9B8: LDA    $CD     
       CMP    #$03    
       BCS    LF9C2   
       LDA    #$03    
       BNE    LF9C4   
LF9C2: LDA    #$01    
LF9C4: AND    $AD     
       BNE    LF9D5   
       LDA    $CB     
       JSR    LFC84   
       CMP    #$7F    
       BNE    LF9D3   
       LDA    #$04    
LF9D3: STA    $CB     
LF9D5: LDA    #$00    
       STA    SWBCNT  
       LDA    SWCHB   
       LSR            
       BCS    LF9E9   
       LDX    #$B0    
       STX    $8C     
       LDA    #$00    
       JMP    LF005   
LF9E9: AND    #$01    
       TAY            
       CMP    $DA     
       BEQ    LFA13   
       CPY    #$00    
       BNE    LF9FF   
       LDX    $AA     
       INX            
       CPX    #$04    
       BNE    LF9FD   
       LDX    #$00    
LF9FD: STX    $AA     
LF9FF: STA    $DA     
       LDA    #$00    
       STA    $CE     
       STA    $CF     
       LDX    $AA     
       INX            
       STX    $D0     
       STX    $D9     
       STX    $8C     
       JSR    LFCCA   
LFA13: LDA    $D9     
       BEQ    LFA1A   
       JMP    LF0D7   
LFA1A: LDA    $B8     
       CMP    #$0B    
       BNE    LFA39   
       LDX    $D1     
       CPX    #$FF    
       BNE    LFA34   
       LDA    #$06    
       STA    $B8     
       LDA    $C5     
       JSR    LFC84   
       STA    $C5     
       JMP    LFA39   
LFA34: INC    $D1     
       JSR    LFD31   
LFA39: LDA    $CD     
       CMP    #$02    
       BNE    LFA7D   
       LDA    $B8     
       BNE    LFA7D   
       LDA    $B1     
       CLC            
       ADC    $B2     
       CMP    #$49    
       BCS    LFA56   
       STA    $D8     
       LDA    #$48    
       SEC            
       SBC    $D8     
       JMP    LFA59   
LFA56: SEC            
       SBC    #$48    
LFA59: CMP    #$3F    
       BCC    LFA61   
       LDA    #$08    
       BNE    LFA7B   
LFA61: CMP    #$36    
       BCC    LFA69   
       LDA    #$06    
       BNE    LFA7B   
LFA69: CMP    #$2D    
       BCC    LFA71   
       LDA    #$04    
       BNE    LFA7B   
LFA71: CMP    #$24    
       BCC    LFA79   
       LDA    #$02    
       BNE    LFA7B   
LFA79: LDA    #$00    
LFA7B: STA    $C8     
LFA7D: LDA    $C9     
       BEQ    LFA83   
       DEC    $C9     
LFA83: BIT    $B4     
       BMI    LFAA3   
       DEC    $C7     
       BNE    LFA99   
       LDA    $B5     
       STA    $C7     
       DEC    $B4     
       BPL    LFA99   
       LDA    #$00    
       STA    AUDV1   
       BEQ    LFAA3   
LFA99: LDY    $B4     
       LDA    ($B6),Y 
       STA    AUDF1   
       LDA    ($DB),Y 
       STA    AUDV1   
LFAA3: LDA    $8C     
       BNE    LFAAB   
       STA    AUDV0   
       STA    AUDV1   
LFAAB: LDA    $AD     
       AND    #$07    
       BNE    LFABB   
       LDA    $B8     
       CMP    #$05    
       BEQ    LFABE   
       CMP    #$07    
       BEQ    LFACB   
LFABB: JMP    LFB40   
LFABE: BIT    $C1     
       BVS    LFACB   
       LDA    $BD     
       ORA    #$20    
       STA    $BD     
       JMP    LFAD1   
LFACB: LDA    $BD     
       AND    #$DF    
       STA    $BD     
LFAD1: ROL    $BD     
       ROR    $BE     
       ROL    $BF     
       ROR    $C2     
       ROL    $C1     
       ROR    $C0     
       LDA    $BD     
       ORA    #$30    
       STA    $BD     
       LDA    $C0     
       ORA    #$30    
       STA    $C0     
       LDA    $B8     
       CMP    #$07    
       BNE    LFB06   
       BIT    $C0     
       BVS    LFB06   
       LDA    #$04    
       STA    $B8     
       LDX    #$06    
LFAF9: STA    $A3,X   
       DEX            
       BPL    LFAF9   
       INX            
       STX    $B9     
       STX    $AD     
       JMP    LF0D7   
LFB06: LDA    $C2     
       CMP    #$0F    
       BNE    LFB40   
       LDA    #$06    
       SEC            
       SBC    $B0     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $D8     
       CLC            
       ADC    #$05    
       STA    $AF     
       LDA    $D8     
       SBC    #$03    
       STA    $D8     
       LDA    $AC     
       CMP    $D8     
       BCC    LFB3C   
       CMP    $AF     
       BCS    LFB3C   
       LDX    $B0     
       LDA    #$E0    
       INX            
       STA    $9A,X   
       DEC    $B8     
       LDA    #$03    
       LDX    #$FC    
       JSR    LFD61   
LFB3C: INC    $B8     
       INC    $B8     
LFB40: LDA    $B8     
       CMP    #$09    
       BNE    LFB73   
       LDX    #$06    
LFB48: LDA    $A3,X   
       JSR    LFC84   
       STA    $A3,X   
       DEX            
       BPL    LFB48   
       AND    #$0F    
       CMP    #$0C    
       BNE    LFB73   
       LDA    #$05    
       STA    $B8     
       LDX    #$06    
       LDA    #$00    
LFB60: STA    $9A,X   
       DEX            
       BPL    LFB60   
       INC    $CD     
       LDA    $AC     
       AND    #$07    
       CMP    #$06    
       BCC    LFB71   
       LDA    #$02    
LFB71: STA    $B0     
LFB73: LDA    $B8     
       CMP    #$06    
       BNE    LFBC5   
       LDA    $AD     
       AND    #$01    
       BNE    LFBC5   
       STA    AUDV0   
       LDA    $C5     
       JSR    LFC84   
       CMP    #$0D    
       BNE    LFB99   
       LDA    #$02    
       STA    AUDV0   
       INC    $B8     
       LDX    $B0     
       INX            
       LDA    #$00    
       STA    $9A,X   
       LDA    #$05    
LFB99: STA    $C5     
       CMP    #$0B    
       BNE    LFBC5   
       LDA    #$0B    
       STA    $B8     
       LDA    #$01    
       STA    AUDC1   
       LDA    #$F1    
       STA    $DB     
       LDA    #$1F    
       STA    $B5     
       STA    $C7     
       LDA    $D1     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D8     
       LDA    #$07    
       SEC            
       SBC    $D8     
       STA    $B4     
       LDA    #$E9    
       STA    $B6     
LFBC5: INC    $AD     
       LDA    $AD     
       LSR            
       LSR            
       LSR            
       AND    #$0F    
       ORA    #$10    
       STA    $BA     
       LDA    $B8     
       CMP    #$0A    
       BEQ    LFBE0   
       CMP    #$08    
       BEQ    LFBE0   
       CMP    #$02    
       BNE    LFC2D   
LFBE0: LDA    $AD     
       CMP    #$64    
       BEQ    LFBF0   
LFBE6: AND    #$0B    
       BNE    LFBED   
       JSR    LFD4A   
LFBED: JMP    LFC81   
LFBF0: LDA    #$04    
       STA    $B8     
       LDA    #$00    
       STA    $AD     
       DEC    $CC     
       LDA    $AA     
       AND    #$01    
       BEQ    LFC04   
       LDA    $D2     
       BPL    LFC11   
LFC04: LDA    $CC     
       BPL    LFC2A   
       LDA    #$06    
       LDX    #$F9    
       JSR    LFD61   
       BNE    LFC2A   
LFC11: LDX    #$05    
LFC13: LDY    $CC,X   
       LDA    $D2,X   
       STA    $CC,X   
       STY    $D2,X   
       DEX            
       BPL    LFC13   
       JSR    LFCCA   
       JSR    LFD31   
       LDA    $BC     
       EOR    #$01    
       STA    $BC     
LFC2A: JMP    LFC81   
LFC2D: CMP    #$03    
       BNE    LFC42   
       LDA    $AD     
       CMP    #$C8    
       BNE    LFBE6   
       LDA    #$09    
       STA    $B8     
       LDA    #$00    
       STA    $AD     
       JMP    LFC81   
LFC42: CMP    #$04    
       BNE    LFC81   
       LDA    #$00    
       STA    AUDV0   
       LDX    #$06    
       LDA    #$00    
LFC4E: STA    $9A,X   
       DEX            
       BPL    LFC4E   
       LDA    $CC     
       BPL    LFC74   
       LDA    $AD     
       CMP    #$FF    
       BNE    LFC81   
       BIT    $8C     
       BEQ    LFC6C   
       LDA    $AA     
       AND    #$01    
       BEQ    LFC81   
       INC    $AD     
       JMP    LFC11   
LFC6C: STA    $D1     
       LDA    #$03    
       STA    $CC     
       BNE    LFC7A   
LFC74: LDA    $AD     
       CMP    #$78    
       BNE    LFC81   
LFC7A: LDA    $B9     
       STA    $B8     
       JMP    LF04D   
LFC81: JMP    LF0D7   
LFC84: TAY            
       AND    #$F0    
       CMP    #$80    
       BNE    LFC8C   
       INY            
LFC8C: TYA            
       SEC            
       SBC    #$10    
       RTS            

LFC91: LDY    $CD     
       SED            
LFC94: LDA    LFEA9,X 
       CLC            
       ADC    $D0     
       STA    $D0     
       LDA    LFEAA,X 
       ADC    $CF     
       STA    $CF     
       BCC    LFCC6   
       LDA    #$00    
       ADC    $CE     
       STA    $CE     
       BCC    LFCBE   
       LDA    #$99    
       STA    $D0     
       STA    $CF     
       STA    $CE     
       LDA    #$FF    
       STA    $CC     
       STA    $D2     
       JMP    LFCC9   
LFCBE: LDA    $CC     
       CMP    #$03    
       BEQ    LFCC6   
       INC    $CC     
LFCC6: DEY            
       BNE    LFC94   
LFCC9: CLD            
LFCCA: LDA    $D0     
       JSR    LFD0C   
       STX    $80     
       STY    $82     
       LDA    $CF     
       JSR    LFD0C   
       STX    $84     
       STY    $86     
       LDA    $CE     
       JSR    LFD0C   
       STX    $88     
       STY    $8A     
       LDY    #$50    
       LDA    $CE     
       AND    #$F0    
       BNE    LFD0B   
       LDA    $CE     
       BNE    LFD09   
       LDA    $CF     
       AND    #$F0    
       BNE    LFD07   
       LDA    $CF     
       BNE    LFD05   
       LDA    $D0     
       AND    #$F0    
       BNE    LFD03   
       STY    $82     
LFD03: STY    $84     
LFD05: STY    $86     
LFD07: STY    $88     
LFD09: STY    $8A     
LFD0B: RTS            

LFD0C: PHA            
       AND    #$0F    
       TAY            
       LDA    #$00    
LFD12: DEY            
       BMI    LFD1B   
       CLC            
       ADC    #$08    
       JMP    LFD12   
LFD1B: TAX            
       PLA            
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    #$00    
LFD26: DEY            
       BMI    LFD2F   
       CLC            
       ADC    #$08    
       JMP    LFD26   
LFD2F: TAY            
       RTS            

LFD31: LDA    $D1     
       BEQ    LFD47   
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       INY            
       LDA    #$00    
       CPY    #$00    
       BEQ    LFD47   
LFD42: SEC            
       ROL            
       DEY            
       BNE    LFD42   
LFD47: STA    $CA     
       RTS            

LFD4A: LDA    #$08    
       STA    AUDC1   
       LDA    #$D1    
       STA    $DB     
       LDA    #$02    
       STA    $B5     
       STA    $C7     
       LDA    #$07    
       STA    $B4     
       LDA    #$C9    
       STA    $B6     
       RTS            

LFD61: STA    $B4     
       LDA    #$04    
       STA    AUDC1   
       LDA    #$F1    
       STA    $DB     
       STX    $B6     
       LDA    #$1E    
       STA    $B5     
       STA    $C7     
       RTS            

LFD74: STA    WSYNC   
       DEX            
       BNE    LFD74   
       RTS            

LFD7A: .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
LFD88: .byte $FF,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$81,$00,$74,$14
       .byte $77,$45,$77,$00,$87,$8F,$8F,$8F,$9F,$9F,$9F,$FF,$FF,$FF
LFDA6: .byte $FE,$1E,$1E,$3F,$3F,$3F,$7F,$7F,$7F,$F3,$F3,$F3,$F3,$00,$77,$44
       .byte $74,$44,$77,$00,$C0,$80,$80,$80,$00,$00,$00,$80,$80,$80
LFDC4: .byte $5A,$4A,$5A,$52,$5A,$00,$80,$80,$80,$C0,$C0,$C0,$E0,$00,$24,$25
       .byte $27,$24,$77,$00,$F8,$7C,$7C,$7C,$3E,$3E,$3E,$7F,$7F,$7F
LFDE2: .byte $E9,$A9,$AB,$AF,$ED,$01,$01,$01,$01,$01,$01,$01,$01,$00,$A4,$3C
       .byte $A4,$A4,$18,$00,$01,$01,$01,$01,$01,$01,$01,$81,$81,$FF,$3C,$66
       .byte $66,$66,$66,$66,$66,$3C,$7E,$18,$18,$18,$18,$78,$38,$18,$7E,$60
       .byte $60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C
       .byte $0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66
       .byte $66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66
       .byte $66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$18,$3C,$7E,$7E,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$7E,$7E,$3C,$18
LFE68: .byte $FF,$FE,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$6C,$00,$00,$00,$00,$00,$00
LFE78: .byte $FF,$FF,$FF,$FF,$FF,$FF,$7F,$7F,$7F,$7F,$7E,$7E,$7E,$7E,$7E,$3E
       .byte $00,$00,$00,$00,$0C,$3E,$7F,$FF,$FF,$7E,$3C,$00,$00,$00,$00,$00
LFE98: .byte $0E,$04,$1E,$37,$37,$1E,$04,$0E
LFEA0: .byte $96,$94,$92,$90,$92,$94,$96,$98,$98
LFEA9: .byte $05
LFEAA: .byte $00,$0A,$00,$00,$01,$00,$02,$00,$05
LFEB3: .byte $E0
LFEB4: .byte $E0,$E0,$E2,$E4,$E6
LFEB9: .byte $E0,$80,$80,$C0,$C0,$80,$80,$E0
LFEC1: .byte $04,$04,$04,$06,$06,$04,$04,$07,$1B,$1C,$1D,$1E,$1F,$1F,$1F,$1F
       .byte $07,$09,$0C,$0E,$0F,$0F,$0F,$0F,$10,$0E,$0C,$0A,$08,$06,$04,$02
       .byte $05,$07,$09,$0B,$0D,$0F,$0F,$0F,$07,$08,$09,$0A,$0B,$0C,$0D,$0E
       .byte $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$10,$18,$10,$14,$18,$14,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1E
       .byte $1E,$0C,$0C,$0C,$3E,$7F,$EF,$CE,$EF,$7F,$3E,$0C,$0C,$0C,$1E,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$1E,$0C,$3E,$7F,$EF,$CC,$EF,$7F,$3E,$0C,$1E,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
       .byte $E0,$EE,$EE,$5F,$9F,$4E,$8E,$4E,$8E,$4A,$8E,$70,$8E,$0E,$04,$06
       .byte $0E,$0E,$0E,$08,$04,$06,$0E,$0E,$0E,$06,$06,$08,$0E,$0E,$0E,$18
       .byte $0C,$06,$06,$07,$07,$07,$07,$07,$07,$07,$07,$06,$06,$0C,$18,$00
       .byte $00,$00,$0E,$0C,$04,$06,$0E,$0E,$0E,$08,$08,$0C,$0C,$00,$00,$0F
       .byte $06,$06,$06,$06,$06,$04,$00,$04,$04,$04,$04,$00,$00,$00,$04
LFFA0: .byte $00,$AC,$A6,$06,$40,$48,$58,$58,$1A,$02,$02,$44,$60,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$3E,$10,$00,$00,$00,$00,$00,$00,$92
       .byte $00,$00,$00,$38,$20,$30,$7E,$FB,$7E,$30,$20,$38,$00,$00,$00,$42
       .byte $00,$00,$00,$78,$30,$7C,$FE,$F7,$33,$F7,$FE,$7C,$30,$78,$00,$00
       .byte $00,$00,$42,$42,$00,$FF,$03,$FB,$FA,$F8,$F8,$10,$00,$00,$00,$00
LFFF0: .byte $1E,$3F,$FF,$7E,$3C,$00
LFFF6: .byte $14,$48,$50,$78,$A0,$AA,$00,$F0,$AA,$AA
