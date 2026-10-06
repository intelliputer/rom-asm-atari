; Disassembly of roms/Pac-Man.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Pac-Man.bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
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
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
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
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       LDA    #$06    
       STA    $84     
       ASL            
       STA    $EC     
       DEX            
       STX    $82     
       STX    $CB     
       JSR    LFBF4   
       LDA    #$CB    
       STA    $CC     
       LSR            
       STA    $B6     
       LDA    #$ED    
       STA    $CE     
       LDA    #$0F    
       STA    $D0     
       LDX    #$04    
LF02C: STA    $C0,X   
       DEX            
       BNE    LF02C   
       STA    WSYNC   
       LDA    #$F0    
       STA    HMM1    
       LDA    #$80    
       STA    HMBL    
       LDX    #$06    
LF03D: DEX            
       BNE    LF03D   
       STA    RESBL   
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       STX    $E7     
       STX    $98     
       JMP    LF7D6   
LF053: LDA    #$00    
       CPX    $D9     
       BMI    LF062   
       LDY    $DC     
       BMI    LF062   
       LDA    ($DF),Y 
       DEY            
       STY    $DC     
LF062: STA    WSYNC   
       STA    GRP1    
       RTS            

LF067: JSR    LF053   
LF06A: LDA    #$00    
       INX            
       CPX    $D8     
       BMI    LF07A   
       LDY    $DB     
       BMI    LF07A   
       LDA    ($DD),Y 
       DEY            
       STY    $DB     
LF07A: STA    WSYNC   
       STA    GRP0    
       RTS            

LF07F: STA    WSYNC   
       LDA    #$20    
       STA    NUSIZ0  
       LDX    #$00    
       TAY            
       LDA    $80     
       AND    #$08    
       BNE    LF091   
       LDX    #$09    
       NOP            
LF091: DEX            
       BPL    LF091   
       STA    RESM0   
       STY    HMM0    
       STY    NUSIZ1  
       LDX    #$01    
LF09C: LDA    #$01    
       CLC            
       ADC    $B0,X   
       LDY    #$02    
       SEC            
LF0A4: INY            
       SBC    #$0F    
       BCS    LF0A4   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    WSYNC   
LF0B3: DEY            
       BPL    LF0B3   
       STA    RESP0,X 
       STA    HMP0,X  
       DEX            
       BPL    LF09C   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$01    
       LDX    #$07    
LF0C5: LDA    INTIM   
       BNE    LF0C5   
       STA    WSYNC   
       STY    VBLANK  
       STA    HMCLR   
       LDA    $F0     
       STA    COLUBK  
       STY    $CA     
       DEY            
       STY    $87     
       STX    $C9     
       INX            
       LDA    #$31    
       STA    CTRLPF  
       LDA    $F1     
       STA    COLUPF  
       JSR    LF06A   
       LDY    #$FF    
       STY    PF0     
       STY    PF1     
       LDA    #$7F    
       STA    PF2     
       JMP    LF313   
LF0F4: LDA    #$00    
       CPX    $D9     
       BMI    LF103   
       LDY    $DC     
       BMI    LF103   
       LDA    ($DF),Y 
       DEY            
       STY    $DC     
LF103: STA    WSYNC   
       STA    GRP1    
       LDY    $CA     
       DEY            
       BEQ    LF176   
       LDY    $87     
       LDA.wy $0088,Y 
       AND    #$0F    
       TAY            
       LDA    LFD47,Y 
       STA    $D4     
       JSR    LF06A   
       LDA    #$00    
       STA    ENAM0   
       LDY    $87     
       LDA.wy $0088,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAY            
       LDA    LFD3F,Y 
       STA    $D3     
       JSR    LF053   
       LDY    $87     
       LDA.wy $0088,Y 
       BPL    LF13F   
       LDA    #$50    
       BNE    LF141   
LF13F: LDA    #$10    
LF141: STA    $D2     
       LDA.wy $008C,Y 
       AND    #$07    
       TAY            
       LDA    LFD63,Y 
       STA    $D7     
       JSR    LF06A   
       LDY    $87     
       LDA.wy $008C,Y 
       LSR            
       LSR            
       LSR            
       STA    $D5     
       AND    #$07    
       TAY            
       LDA    LFD5B,Y 
       STA    $D6     
       JSR    LF053   
       LDA    $D5     
       LSR            
       LSR            
       LSR            
       AND    #$03    
       TAY            
       LDA    LFD57,Y 
       STA    $D5     
       JMP    LF1F4   
LF176: LDY    $87     
       LDA.wy $0090,Y 
       AND    #$07    
       TAY            
       LDA    LFD7B,Y 
       STA    $D4     
       JSR    LF06A   
       LDA    #$00    
       STA    ENAM0   
       LDA    $E1     
       STA    ENABL   
       LDY    $87     
       LDA.wy $0090,Y 
       LSR            
       LSR            
       LSR            
       AND    #$0F    
       TAY            
       LDA    LFD6B,Y 
       STA    $D3     
       JSR    LF053   
       LDY    $87     
       LDA.wy $0090,Y 
       BPL    LF1AC   
       LDA    #$50    
       BNE    LF1AE   
LF1AC: LDA    #$10    
LF1AE: STA    $D2     
       LDA.wy $0094,Y 
       AND    #$07    
       TAY            
       LDA    LFD63,Y 
       STA    $D7     
       JSR    LF06A   
       LDY    $87     
       LDA.wy $0094,Y 
       LSR            
       LSR            
       LSR            
       STA    $D5     
       AND    #$07    
       TAY            
       LDA    LFD83,Y 
       STA    $D6     
       JSR    LF053   
       LDA    $E1     
       STA    ENAM1   
       LDA    $D5     
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFD47,Y 
       STA    $D5     
       JMP    LF1F4   
LF1E5: LDA    $D6     
       STA    PF1     
       NOP            
       NOP            
LF1EB: LDA    $D7     
       STA    PF2     
       LDA    #$00    
       JMP    LF246   
LF1F4: JSR    LF06A   
       LDA    $C9     
       CMP    #$04    
       BNE    LF209   
       LDA    #$40    
       ORA    $D4     
       STA    $D4     
       LDA    #$20    
       ORA    $D5     
       STA    $D5     
LF209: LDA    #$00    
       CPX    $D9     
       BMI    LF218   
       LDY    $DC     
       BMI    LF218   
       LDA    ($DF),Y 
       DEY            
       STY    $DC     
LF218: STA    WSYNC   
       STA    GRP1    
       LDA    $D2     
       STA    PF0     
       LDY    #$30    
       STY    CTRLPF  
       LDA    $D3     
       STA    PF1     
       LDA    $D4     
       STA    PF2     
       INX            
       LDA    $D5     
       STA    PF0     
       CPX    $D8     
       BMI    LF1E5   
       LDA    $D6     
       STA    PF1     
       LDY    $DB     
       BMI    LF1EB   
       LDA    $D7     
       STA    PF2     
       LDA    ($DD),Y 
       DEY            
       STY    $DB     
LF246: STA    WSYNC   
       STA    GRP0    
       LDA    $D2     
       STA    PF0     
       LDA    $D3     
       STA    PF1     
       LDA    $D4     
       STA    PF2     
       NOP            
       NOP            
       LDA    $D5     
       STA    PF0     
       CPX    $D9     
       BMI    LF278   
       LDA    $D6     
       STA    PF1     
       LDY    $DC     
       BMI    LF27E   
       LDA    $D7     
       STA    PF2     
       LDA    ($DF),Y 
       DEY            
       STY    $DC     
LF271: STA    WSYNC   
       STA    GRP1    
       JMP    LF287   
LF278: LDA    $D6     
       STA    PF1     
       NOP            
       NOP            
LF27E: LDA    $D7     
       STA    PF2     
       LDA    #$00    
       JMP    LF271   
LF287: LDY    $CA     
       LDA    LFE0A,Y 
       STA    PF0     
       LDA    LFE0C,Y 
       STA    PF1     
       LDA    #$31    
       STA    CTRLPF  
       LDA    $E3     
       STA    PF2     
       LDA    $C9     
       CLC            
       ADC    #$FF    
       BPL    LF2A5   
       JMP    LF360   
LF2A5: STA    $C9     
       LDA    #$00    
       INX            
       CPX    $D8     
       BMI    LF2B7   
       LDY    $DB     
       BMI    LF2B7   
       LDA    ($DD),Y 
       DEY            
       STY    $DB     
LF2B7: STA    WSYNC   
       STA    GRP0    
       LDY    #$00    
       STY    ENAM1   
       STY    $E2     
       LDA    $C9     
       TAY            
       AND    #$01    
       STA    $CA     
       INY            
       TYA            
       LSR            
       STA    $87     
       JSR    LF067   
       LDY    #$01    
       LDA    $80     
       AND    #$08    
       BNE    LF2DA   
       LDY    #$03    
LF2DA: LDA    $C9     
       BEQ    LF2E3   
       CMP    #$06    
       BNE    LF2EE   
       DEY            
LF2E3: LDA    $9A     
       AND    LFE6C,Y 
       BEQ    LF2EE   
       LDA    #$02    
       STA    $E2     
LF2EE: JSR    LF053   
       LDA    #$00    
       STA    ENABL   
       JSR    LF06A   
       LDA    $E2     
       STA    ENAM0   
       JSR    LF053   
       JSR    LF06A   
       LDY    $CA     
       LDA    LFF41,Y 
       STA    PF0     
       LDA    LFE0F,Y 
       STA    PF1     
       LDA    LFE11,Y 
       STA    PF2     
LF313: JSR    LF053   
       LDA    $E7     
       LDY    $C9     
       CPY    #$03    
       BEQ    LF320   
       LDA    #$00    
LF320: STA    $E1     
       JSR    LF06A   
       LDY    $CA     
       LDA    LFE0D,Y 
       LDY    $C9     
       CPY    #$04    
       BNE    LF332   
       LDA    #$40    
LF332: STA    $E3     
       JSR    LF053   
       LDA    #$00    
       INX            
       CPX    $D8     
       BMI    LF347   
       LDY    $DB     
       BMI    LF347   
       LDA    ($DD),Y 
       DEY            
       STY    $DB     
LF347: STA    WSYNC   
       STA    GRP0    
       LDY    $CA     
       STA    GRP0    
       LDA    LFE0A,Y 
       STA    PF0     
       LDA    LFE0C,Y 
       STA    PF1     
       LDA    $E3     
       STA    PF2     
       JMP    LF0F4   
LF360: LDA    #$00    
       INX            
       CPX    $D8     
       BMI    LF370   
       LDY    $DB     
       BMI    LF370   
       LDA    ($DD),Y 
       DEY            
       STY    $DB     
LF370: STA    WSYNC   
       STA    GRP0    
       JSR    LF067   
       JSR    LF067   
       JSR    LF067   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       LDA    #$7F    
       STA    PF2     
       LDA    #$4C    
       STA    TIM64T  
       JSR    LF053   
       JSR    LF06A   
       JSR    LF053   
       LDA    #$03    
       LDY    #$00    
       STA    WSYNC   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STY    REFP1   
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       JSR    LF483   
       LDA    $82     
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$07    
       STA    WSYNC   
LF3B8: DEX            
       BNE    LF3B8   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       LDY    #$04    
       LDA    $F5     
       STA    $D2     
       JSR    LF3EE   
       LDA    $E6     
       ASL            
       BPL    LF3E1   
       LDY    #$05    
       LDA    $F4     
       STA    $D2     
       JSR    LF3EE   
LF3E1: LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       JMP    LF48E   
LF3EE: LDX    #$08    
       LDA    #$00    
       STA    $E1     
       BEQ    LF422   
LF3F6: LDA.wy $00CC,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       BEQ    LF402   
       INC    $E1     
LF402: LDA    $E1     
       BNE    LF408   
       LDX    #$0A    
LF408: LDA    LFEF6,X 
       LDX    $E2     
       STA    $D5,X   
       DEX            
       DEX            
       CPX    #$04    
       BNE    LF419   
       LDA    #$00    
       BEQ    LF41E   
LF419: TXA            
       BNE    LF422   
       LDA    $D2     
LF41E: STA    WSYNC   
       STA    COLUBK  
LF422: STX    $E2     
       LDA.wy $00CC,Y 
       AND    #$0F    
       TAX            
       BEQ    LF42E   
       INC    $E1     
LF42E: LDA    $E1     
       BNE    LF434   
       LDX    #$0A    
LF434: LDA    LFEF6,X 
       LDX    $E2     
       STA    $D5,X   
       DEX            
       DEX            
       STX    $E2     
       DEY            
       DEY            
       BPL    LF3F6   
       LDA    $E1     
       BNE    LF44B   
       LDA    #$AC    
       STA    $D5     
LF44B: LDA    #$FE    
       LDX    #$09    
LF44F: STA    $D5,X   
       DEX            
       DEX            
       BPL    LF44F   
       LDA    #$06    
       STA    $E1     
LF459: LDY    $E1     
       LDA    #$00    
       STA    GRP0    
       STA    GRP0    
       STA    WSYNC   
       LDA    ($DD),Y 
       STA    GRP1    
       LDA    ($DB),Y 
       STA    GRP0    
       LDA    ($D9),Y 
       STA    $E2     
       LDA    ($D7),Y 
       TAX            
       LDA    ($D5),Y 
       TAY            
       LDA    $E2     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $E1     
       BPL    LF459   
LF483: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       RTS            

LF48E: TAY            
       LDA    $E6     
       BPL    LF495   
       LDY    #$03    
LF495: LDX    $98     
       JSR    LFC68   
       LDA    #$00    
       STA    WSYNC   
       STA    COLUBK  
       LDY    #$03    
       LDA    $E6     
       BPL    LF4A8   
       LDY    #$00    
LF4A8: LDX    $AC     
       JSR    LFC68   
       LDX    #$06    
       LDA    $F4     
       STA    COLUP1  
       LDA    $F5     
       STA    COLUP0  
LF4B7: STA    WSYNC   
       LDA    #$02    
       STA    CTRLPF  
       LDA    $D2     
       STA    PF0     
       LDA    $D3     
       STA    PF1     
       LDA    $D4     
       STA    PF2     
       NOP            
       NOP            
       NOP            
       LDA    $D5     
       STA    PF0     
       LDA    $D6     
       STA    PF1     
       LDA    $D7     
       STA    PF2     
       DEX            
       BNE    LF4B7   
       STA    WSYNC   
       STX    CTRLPF  
       STX    COLUPF  
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    $82     
       BNE    LF4F4   
       JSR    LFBAD   
       LDA    $E5     
       BPL    LF4F7   
       DEC    $E5     
LF4F4: JMP    LF7C3   
LF4F7: LDA    $E4     
       BEQ    LF55B   
       LDA    $80     
       ROR            
       BCC    LF55B   
       DEC    $E4     
       BNE    LF55B   
       BIT    $9A     
       LDA    $9A     
       BPL    LF51A   
       BVC    LF516   
       AND    #$BF    
       STA    $9A     
       LDA    #$20    
       STA    $E4     
       BPL    LF55B   
LF516: AND    #$7C    
       STA    $9A     
LF51A: LDA    $E7     
       AND    #$40    
       BEQ    LF553   
       EOR    $E7     
       STA    $E7     
       JSR    LFC21   
       BIT    $E6     
       BVC    LF538   
       LDA    $AC     
       BEQ    LF538   
       JSR    LFB9F   
       LDA    $E6     
       EOR    #$80    
       STA    $E6     
LF538: LDA    $98     
       ORA    $AC     
       BEQ    LF548   
       DEC    $98     
       LDA    #$08    
       ORA    $E7     
       STA    $E7     
       BNE    LF55B   
LF548: STA    $E7     
       LDA    #$5F    
       STA    $82     
       STA    $B6     
       JMP    LF7C3   
LF553: LDA    $E7     
       BPL    LF55B   
       AND    #$7F    
       STA    $E7     
LF55B: LDA    $E7     
       BPL    LF573   
       LDA    $99     
       TAY            
       DEY            
       LDX    #$04    
LF565: STA    $C0,X   
       STY    $C4,X   
       DEX            
       STY    $C4,X   
       STY    $C0,X   
       DEX            
       BNE    LF565   
       BEQ    LF4F4   
LF573: LDA    CXM1P   
       AND    CXP1FB  
       AND    #$40    
       BEQ    LF591   
       LDY    #$06    
       JSR    LFC45   
       LDY    #$01    
       JSR    LFF43   
       LDA    $E7     
       EOR    #$02    
       STA    $E7     
       LDA    #$12    
       STA    $EC     
       BNE    LF5D3   
LF591: TAX            
       LDA    $B6     
       CMP    #$05    
       BEQ    LF59D   
       CMP    #$41    
       BNE    LF5D3   
       INX            
LF59D: LDA    $B1     
       CMP    #$04    
       BEQ    LF5A9   
       CMP    #$94    
       BNE    LF5D3   
       INX            
       INX            
LF5A9: LDA    LFE6C,X 
       TAY            
       AND    $9A     
       BEQ    LF5D3   
       TYA            
       EOR    #$FF    
       AND    $9A     
       ORA    #$C0    
       STA    $9A     
       LDY    #$A0    
       LDA    $E7     
       AND    #$20    
       BEQ    LF5C4   
       LDY    #$50    
LF5C4: STY    $E4     
       LDY    #$05    
       JSR    LFC45   
       LDY    #$02    
       JSR    LFF43   
       JMP    LF6AA   
LF5D3: LDA    $80     
       AND    #$04    
       BNE    LF61E   
       LDA    CXPPMM  
       BPL    LF61E   
       LDA    $80     
       AND    #$03    
       TAX            
       LDA    $9A     
       BPL    LF60B   
       LDA    $BC,X   
       AND    #$08    
       BNE    LF61E   
       LDA    $BC,X   
       ORA    #$08    
       STA    $BC,X   
       LDA    $9A     
       AND    #$03    
       TAY            
       JSR    LFC45   
       CPY    #$03    
       BEQ    LF600   
       INC    $9A     
LF600: LDY    #$03    
       JSR    LFF43   
       LDA    #$9F    
       STA    $E5     
       BNE    LF61E   
LF60B: LDA    $BC,X   
       AND    #$08    
       BNE    LF61E   
       LDA    #$C0    
       ORA    $E7     
       STA    $E7     
       LDA    #$3F    
       STA    $E4     
       JMP    LF7BA   
LF61E: LDA    SWCHA   
       LDY    $E6     
       BMI    LF629   
       LSR            
       LSR            
       LSR            
       LSR            
LF629: EOR    #$FF    
       AND    #$0F    
       STA    $ED     
       BEQ    LF635   
       LDA    #$00    
       STA    $81     
LF635: LDA    $BB     
       AND    #$20    
       BEQ    LF666   
       LDA    $ED     
       LSR            
       BCC    LF65D   
       LDA    $BB     
       BMI    LF656   
LF644: AND    #$10    
       BNE    LF659   
       LDA    #$3F    
       EOR    $B6     
       AND    #$3F    
       STA    $B6     
       LDA    #$C0    
LF652: EOR    $BB     
       STA    $BB     
LF656: JMP    LF7BA   
LF659: LDA    #$80    
       BNE    LF652   
LF65D: LSR            
       BCC    LF656   
       LDA    $BB     
       BMI    LF644   
       BPL    LF656   
LF666: LDA    $85     
       BNE    LF6AA   
       LDY    $87     
       LDA    LFE13,Y 
       LDX    $B1     
       CPX    #$4C    
       BEQ    LF67D   
       LDX    $BB     
       BPL    LF67D   
       INY            
       ORA    LFE13,Y 
LF67D: LSR            
       BCC    LF6AA   
       LSR            
       TAX            
       LDA    $C9     
       ROL            
       TAY            
       LDA    LFE79,Y 
       TAY            
       TXA            
       AND    #$07    
       TAX            
       LDA    LFE6A,X 
       TAX            
       AND.wy $0088,Y 
       BEQ    LF6AA   
       TXA            
       EOR    #$FF    
       AND.wy $0088,Y 
       STA.wy $0088,Y 
       LDY    #$04    
       JSR    LFC45   
       LDY    #$00    
       JSR    LFF43   
LF6AA: LDX    #$0F    
       LDA    $9A     
       AND    #$3C    
LF6B0: ORA    $88,X   
       DEX            
       BPL    LF6B0   
       TAX            
       BNE    LF6CE   
       LDA    $98     
       CMP    #$09    
       BEQ    LF6C0   
       INC    $98     
LF6C0: LDA    $99     
       CMP    #$0E    
       BEQ    LF6C8   
       INC    $99     
LF6C8: JSR    LFC0C   
       JMP    LF7BA   
LF6CE: LDX    #$00    
       LDA    $ED     
       STA    $D2     
       BNE    LF6D9   
       JMP    LF78A   
LF6D9: LDY    $BB     
       BPL    LF72D   
LF6DD: LSR            
       LSR            
       AND    #$03    
       BEQ    LF725   
       LSR            
       LDA    $85     
       BNE    LF725   
       LDA    $86     
       BEQ    LF6F0   
       BCC    LF71B   
       BCS    LF700   
LF6F0: LDY    $87     
       BCC    LF70A   
       LDA    $EE     
       CMP    #$F9    
       BEQ    LF725   
       DEY            
       LDA    LFE13,Y 
       BMI    LF725   
LF700: LDA    #$01    
       ORA    $BB     
       STA    $BB     
       LDY    #$01    
       BNE    LF77B   
LF70A: LDA    $C9     
       CMP    #$03    
       BNE    LF714   
       CPY    #$38    
       BEQ    LF725   
LF714: INY            
       INY            
       LDA    LFE13,Y 
       BMI    LF725   
LF71B: LDA    #$FE    
       AND    $BB     
       STA    $BB     
       LDY    #$00    
       BEQ    LF77B   
LF725: LDA    $D2     
       AND    #$F3    
       BEQ    LF78A   
       STA    $D2     
LF72D: LDA    $D2     
       AND    #$03    
       BEQ    LF781   
       LSR            
       LDA    $86     
       BNE    LF781   
       LDA    $B1     
       CMP    #$4C    
       BNE    LF75B   
       LDA    $B6     
       BEQ    LF751   
       CMP    #$46    
       BNE    LF75B   
       LDA    $D2     
       LSR            
       LSR            
       BCC    LF75B   
       JSR    LFD26   
       BNE    LF7BA   
LF751: LDA    $D2     
       LSR            
       BCC    LF75B   
       JSR    LFD32   
       BNE    LF7BA   
LF75B: LDA    $D2     
       LSR            
       LDA    $85     
       BEQ    LF766   
       BCC    LF779   
       BCS    LF770   
LF766: LDY    $87     
       LDA    LFE13,Y 
       BCC    LF775   
       ROL            
       BPL    LF781   
LF770: LDY    #$03    
       JMP    LF77B   
LF775: ROL            
       ROL            
       BPL    LF781   
LF779: LDY    #$02    
LF77B: JSR    LF9E5   
       JMP    LF7BA   
LF781: LDA    $D2     
       AND    #$FC    
       STA    $D2     
       JMP    LF6DD   
LF78A: JSR    LF793   
       JSR    LF9EE   
       JMP    LF7BA   
LF793: LDA    $85     
       ORA    $86     
       BEQ    LF79A   
       RTS            

LF79A: LDA    $BB,X   
       ROL            
       BCS    LF7AD   
       BPL    LF7A7   
       JSR    LFB70   
       JMP    LF7B8   
LF7A7: JSR    LFB87   
       JMP    LF7B8   
LF7AD: BPL    LF7B5   
       JSR    LFB36   
       JMP    LF7B8   
LF7B5: JSR    LFB5C   
LF7B8: PLA            
       PLA            
LF7BA: LDA    $BB     
       ROR            
       BCC    LF7C3   
       LDA    #$08    
       STA    REFP1   
LF7C3: LDX    #$00    
       STX    AUDV0   
       STX    AUDV1   
       JSR    LFF55   
       LDX    #$01    
       JSR    LFF94   
LF7D1: LDA    INTIM   
       BNE    LF7D1   
LF7D6: LDA    #$03    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    CXCLR   
       LDA    $80     
       LSR            
       LSR            
       LSR            
       TAY            
       LSR            
       AND    #$03    
       TAX            
       LDA    LFDAB,X 
       STA    $DD     
       LDA    $E7     
       ROL            
       BPL    LF800   
       LDA    $E4     
       LSR            
       LSR            
       AND    #$0F    
       TAX            
       LDA    LFDFA,X 
       BNE    LF80E   
LF800: TYA            
       AND    #$03    
       TAX            
       LDA    LFDC2,X 
       LDX    $E7     
       BPL    LF80E   
       LDA    LFDC2   
LF80E: STA    $DF     
       STA    WSYNC   
       INC    $80     
       BNE    LF83D   
       INC    $81     
       BEQ    LF839   
       DEC    $EC     
       BNE    LF835   
       LDY    #$12    
       LDA    $E7     
       EOR    #$02    
       STA    $E7     
       AND    #$02    
       BEQ    LF833   
       LDY    #$03    
       LDA    $E7     
       AND    #$20    
       BEQ    LF833   
       DEY            
LF833: STY    $EC     
LF835: LDA    $82     
       BEQ    LF83D   
LF839: INC    $82     
       BEQ    LF839   
LF83D: STA    WSYNC   
       LDA    #$FD    
       STA    $DE     
       STA    $E0     
       LDA    $B6     
       CLC            
       ADC    #$0B    
       STA    $D9     
       LDX    #$07    
       STX    $DB     
       DEX            
       STX    $DC     
       LDX    #$FF    
       LDA    #$08    
       AND    SWCHB   
       BNE    LF85E   
       LDX    #$0F    
LF85E: TXA            
       LDX    $82     
       BEQ    LF865   
       EOR    #$08    
LF865: STA    $EF     
       LDA    #$07    
       STA    $F0     
       LDA    #$08    
       STA    $F1     
       LDA    $AF     
       STA    $F4     
       LDA    #$29    
       STA    TIM64T  
       STA    WSYNC   
       LDX    #$00    
       STX    VSYNC   
       LDA    $9B     
       STA    $F5     
       LDA    $82     
       BEQ    LF88A   
       LDA    INPT4   
       BPL    LF890   
LF88A: LDA    SWCHB   
       ROR            
       BCS    LF8C1   
LF890: LDA    #$FF    
       STA    $CB     
       JSR    LFC7D   
       STA    $AC     
       STA    $82     
       LDA    #$08    
       STA    $E7     
       LDA    #$0B    
       LDX    $84     
       CPX    #$08    
       BPL    LF8A9   
       LDA    #$09    
LF8A9: STA    $C0     
       JSR    LFBF4   
       LDA    $E6     
       AND    #$7F    
       STA    $E6     
       ASL            
       BPL    LF909   
       JSR    LFB9F   
       JSR    LFBF4   
       INC    $AC     
       BNE    LF909   
LF8C1: ROR            
       BCS    LF909   
       LDA    $83     
       BNE    LF8FF   
LF8C8: INC    $84     
       LDA    #$60    
       STA    $B6     
       LDA    #$10    
       STA    $E7     
       LDA    $E6     
       EOR    #$40    
       STA    $E6     
       JSR    LFC7D   
       STA    AUDV0   
       STA    AUDV1   
       STA    $E8     
       LDA    #$01    
       STA    $82     
       STA    $80     
       LDA    $84     
       CMP    #$12    
       BNE    LF8EF   
       LDA    #$02    
LF8EF: STA    $84     
       LSR            
       SEC            
       SBC    #$02    
       AND    #$07    
       BNE    LF8FB   
       LDA    #$08    
LF8FB: STA    $CC     
       STA    $CD     
LF8FF: INC    $83     
       LDA    $83     
       AND    #$1F    
       BNE    LF90D   
       BEQ    LF8C8   
LF909: LDY    #$00    
       STY    $83     
LF90D: LDA    #$DF    
       AND    $E7     
       STA    $E7     
       LDA    #$80    
       LDX    $E6     
       BMI    LF91A   
       LSR            
LF91A: LDX    #$20    
       AND    SWCHB   
       BNE    LF923   
       LDX    #$00    
LF923: TXA            
       ORA    $E7     
       STA    $E7     
       LDA    #$06    
       STA    $F3     
       LDA    $80     
       AND    #$03    
       TAX            
       TAY            
       LDA    $9A     
       BPL    LF93D   
       LDY    #$04    
       AND    #$40    
       BNE    LF93D   
       INY            
LF93D: STY    $F2     
       INX            
       LDA    $BB,X   
       AND    #$08    
       BEQ    LF94C   
       LDA    #$C6    
       STA    $DD     
       BNE    LF950   
LF94C: LDA    $E5     
       BMI    LF95D   
LF950: LDA    $E7     
       BMI    LF95D   
       JSR    LF9AA   
       JSR    LF9AA   
       JSR    LF9AA   
LF95D: LDA    $B1,X   
       STA    $B0     
       LDA    $B6,X   
       CLC            
       ADC    #$0B    
       STA    $D8     
       LDA    $BB,X   
       AND    #$20    
       BEQ    LF973   
       LDY    #$00    
       JSR    LFC8B   
LF973: LDA    $BB     
       AND    #$20    
       BEQ    LF980   
       LDY    #$01    
       LDX    #$00    
       JSR    LFC8B   
LF980: LDA    #$FF    
       STA    $D3     
       LDA    #$2B    
       STA    $D2     
       LDX    #$05    
       LDA    $EF     
       BMI    LF992   
       LDA    #$36    
       STA    $D2     
LF992: LDY    $F0,X   
       LDA    ($D2),Y 
       EOR    $82     
       AND    $EF     
       STA    $F0,X   
       DEX            
       BPL    LF992   
       LDA    $F3     
       STA    COLUP1  
       LDA    $F2     
       STA    COLUP0  
       JMP    LF07F   
LF9AA: LDA    $BB,X   
       AND    #$08    
       BEQ    LF9D2   
       LDA    $B6,X   
       CMP    #$1E    
       BNE    LF9D2   
       LDA    $B1,X   
       CMP    #$58    
       BNE    LF9C0   
       LDY    #$01    
       BNE    LF9E5   
LF9C0: CMP    #$4C    
       BNE    LF9D2   
       LDA    $9A     
       BMI    LF9E4   
       LDA    $BB,X   
       AND    #$F7    
       STA    $BB,X   
       LDY    #$00    
       BEQ    LF9E5   
LF9D2: LDA    $BB,X   
       AND    #$20    
       BNE    LF9E4   
       JSR    LFBAD   
       JSR    LFA26   
       LDA    $BB,X   
       AND    #$20    
       BEQ    LF9EE   
LF9E4: RTS            

LF9E5: LDA    $BB,X   
       AND    #$3F    
       ORA    LFE63,Y 
       STA    $BB,X   
LF9EE: LDA    $C0,X   
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $C0,X   
       STA    $C0,X   
       BCC    LF9E4   
       LDY    #$00    
       LDA    $BB,X   
       AND    #$EF    
       STA    $BB,X   
       ROL            
       BPL    LFA09   
       DEY            
       BMI    LFA0A   
LFA09: INY            
LFA0A: TYA            
       BCS    LFA1A   
       ADC    $B1,X   
       CMP    #$02    
       BEQ    LFA19   
       CMP    #$96    
       BEQ    LFA19   
       STA    $B1,X   
LFA19: RTS            

LFA1A: CLC            
       ADC    $B6,X   
       BMI    LFA25   
       CMP    #$47    
       BEQ    LFA25   
       STA    $B6,X   
LFA25: RTS            

LFA26: LDA    $86     
       ORA    $85     
       BNE    LF9E4   
       LDA    $BB,X   
       AND    #$10    
       BNE    LF9E4   
       LDA    $82     
       BEQ    LFA39   
       JMP    LFAB9   
LFA39: LDA    $BB,X   
       AND    #$08    
       BEQ    LFA49   
       LDA    #$58    
       STA    $D3     
       LDA    #$1F    
       STA    $D2     
       BNE    LFA99   
LFA49: LDA    $B1,X   
       CMP    #$4C    
       BNE    LFA63   
       LDA    $CB     
       AND    #$0F    
       BNE    LFA63   
       LDA    $B6,X   
       BNE    LFA5C   
       JMP    LFD32   
LFA5C: CMP    #$46    
       BNE    LFA63   
       JMP    LFD26   
LFA63: LDA    $B1     
       STA    $D3     
       LDA    $B6     
       STA    $D2     
       LDA    $9A     
       BPL    LFA82   
       LDA    $B1     
       CLC            
       ADC    #$60    
       EOR    #$FF    
       STA    $D3     
       LDA    $B6     
       CLC            
       ADC    #$B1    
       EOR    #$FF    
       JMP    LFA99   
LFA82: DEC    $C4,X   
       BNE    LFA99   
       LDA    $99     
       LSR            
       TAY            
       LDA    LFE6F,Y 
       STA    $C4,X   
       TXA            
       LSR            
       LSR            
       BCC    LFAB9   
       INC    $C4,X   
       JMP    LFAB9   
LFA99: LDA    $B1,X   
       CMP    $D3     
       BEQ    LFAAA   
       BCC    LFAA7   
       JSR    LFB70   
       JMP    LFAAA   
LFAA7: JSR    LFB87   
LFAAA: LDA    $B6,X   
       CMP    $D2     
       BCC    LFAB6   
       JSR    LFB36   
       JMP    LFAB9   
LFAB6: JSR    LFB5C   
LFAB9: LDA    $BB,X   
       ROL            
       BCS    LFAC2   
       BMI    LFAE0   
       BPL    LFAD2   
LFAC2: BPL    LFAEE   
       JSR    LFBE0   
       BNE    LFACC   
       JSR    LFB36   
LFACC: JSR    LFB19   
       JSR    LFB36   
LFAD2: JSR    LFBE0   
       BNE    LFADA   
       JSR    LFB87   
LFADA: JSR    LFAFC   
       JSR    LFB87   
LFAE0: JSR    LFBE0   
       BNE    LFAE8   
       JSR    LFB70   
LFAE8: JSR    LFAFC   
       JSR    LFB70   
LFAEE: JSR    LFBE0   
       BNE    LFAF6   
       JSR    LFB5C   
LFAF6: JSR    LFB19   
       JSR    LFB5C   
LFAFC: JSR    LFBE0   
       JSR    LFB05   
       PLA            
       PLA            
       RTS            

LFB05: BNE    LFB10   
       JSR    LFB36   
       JSR    LFB5C   
       PLA            
       PLA            
       RTS            

LFB10: JSR    LFB5C   
       JSR    LFB36   
       PLA            
       PLA            
       RTS            

LFB19: JSR    LFBE0   
       JSR    LFB22   
       PLA            
       PLA            
       RTS            

LFB22: BNE    LFB2D   
       JSR    LFB70   
       JSR    LFB87   
       PLA            
       PLA            
       RTS            

LFB2D: JSR    LFB87   
       JSR    LFB70   
       PLA            
       PLA            
       RTS            

LFB36: LDA    $C9     
       BEQ    LFB5B   
       LDY    $87     
       LDA    LFE13,Y 
       ROL            
       BPL    LFB5B   
       LDY    #$03    
LFB44: TXA            
       BEQ    LFB50   
       LDA    $BB,X   
       AND    #$C0    
       CMP    LFE67,Y 
       BEQ    LFB5B   
LFB50: LDA    $BB,X   
       AND    #$3F    
       ORA    LFE63,Y 
       STA    $BB,X   
       PLA            
       PLA            
LFB5B: RTS            

LFB5C: LDA    $C9     
       CMP    #$07    
       BEQ    LFB5B   
       LDY    $87     
       LDA    LFE13,Y 
       ROL            
       ROL            
       BPL    LFB5B   
       LDY    #$02    
       JMP    LFB44   
LFB70: LDY    $87     
       LDA    $C9     
       CMP    #$03    
       BNE    LFB7C   
       CPY    #$3E    
       BEQ    LFB5B   
LFB7C: DEY            
       LDA    LFE13,Y 
       BMI    LFB5B   
       LDY    #$01    
       JMP    LFB44   
LFB87: LDY    $87     
       LDA    $C9     
       CMP    #$03    
       BNE    LFB93   
       CPY    #$38    
       BEQ    LFB5B   
LFB93: INY            
       INY            
       LDA    LFE13,Y 
       BMI    LFB5B   
       LDY    #$00    
       JMP    LFB44   
LFB9F: LDX    #$13    
LFBA1: LDA    $88,X   
       LDY    $9C,X   
       STA    $9C,X   
       STY    $88,X   
       DEX            
       BPL    LFBA1   
       RTS            

LFBAD: LDY    #$00    
       LDA    $B6,X   
       BEQ    LFBBB   
LFBB3: INY            
       SEC            
       SBC    #$0A    
       BEQ    LFBBB   
       BPL    LFBB3   
LFBBB: STY    $C9     
       STA    $85     
       LDA    $B1,X   
       AND    #$03    
       STA    $86     
       LDA    $C9     
       LSR            
       PHP            
       LDA    $B1,X   
       LSR            
       LSR            
       PLP            
       BCC    LFBD3   
       CLC            
       ADC    #$28    
LFBD3: STA    $87     
       ASL            
       ASL            
       ROR    $C9     
       ORA    $C9     
       ROL    $C9     
       STA    $EE     
       RTS            

LFBE0: LDA    $CB     
       ASL            
       EOR    $CB     
       ASL            
       ASL            
       ROL    $CB     
       LDA    $CB     
       AND    #$07    
       TAY            
       LDA    LFE6A,Y 
       AND    $CB     
       RTS            

LFBF4: LDA    #$09    
       STA    $AF     
       LDA    #$0A    
       STA    $9B     
       LDA    #$03    
       STA    $98     
       LDA    $84     
       SEC            
       SBC    #$02    
       AND    #$06    
       CLC            
       ADC    #$04    
       STA    $99     
LFC0C: LDX    #$0F    
       LDA    #$FF    
LFC10: STA    $88,X   
       DEX            
       BPL    LFC10   
       LDA    #$7F    
       STA    $8E     
       LDA    #$FE    
       STA    $8A     
       LDA    #$3C    
       STA    $9A     
LFC21: LDA    $E7     
       ORA    #$80    
       STA    $E7     
       LDA    #$3C    
       STA    $E4     
       LDX    #$04    
       LDA    #$4C    
LFC2F: STA    $B1,X   
       LDY    #$1E    
       STY    $B6,X   
       LDY    #$00    
       STY    $BB,X   
       DEX            
       BPL    LFC2F   
       LDA    #$3C    
       STA    $B6     
       LDA    #$80    
       STA    $BB     
       RTS            

LFC45: STX    $E1     
       LDX    #$00    
       LDA    $E6     
       BPL    LFC4E   
       INX            
LFC4E: SED            
       CLC            
       LDA    $CC,X   
       ADC    LFF06,Y 
       STA    $CC,X   
       LDA    $CE,X   
       ADC    LFF0C,Y 
       STA    $CE,X   
       LDA    $D0,X   
       ADC    #$00    
       STA    $D0,X   
       CLD            
       LDX    $E1     
       RTS            

LFC68: TXA            
       BEQ    LFC6D   
       LDA    #$40    
LFC6D: STA.wy $00D2,Y 
       LDA    LFF1B,X 
       STA.wy $00D3,Y 
       LDA    LFEEC,X 
       STA.wy $00D4,Y 
       RTS            

LFC7D: LDA    #$00    
       LDX    #$05    
LFC81: STA    $CC,X   
       DEX            
       BPL    LFC81   
       STA    $98     
       STA    $AC     
       RTS            

LFC8B: LDA    $BB,X   
       AND    #$10    
       BNE    LFCA9   
       DEC    $B6,X   
       BNE    LFCFC   
       LDA    $BB,X   
       BMI    LFC9D   
       LDA    #$00    
       BEQ    LFC9F   
LFC9D: LDA    #$5B    
LFC9F: STA    $B6,X   
       LDA    $BB,X   
       ORA    #$10    
       STA    $BB,X   
       BNE    LFCFC   
LFCA9: LDA    $BB,X   
       ROL            
       BCS    LFD00   
       BPL    LFCE7   
       INC    $B6,X   
LFCB2: LDA    $B6,X   
       CMP    #$0B    
       BNE    LFCCA   
       LDA    #$00    
       STA    $B6,X   
       LDA    #$0B    
       STA.wy $00D8,Y 
       LDA    $BB,X   
       AND    #$0F    
       ORA    #$80    
       STA    $BB,X   
       RTS            

LFCCA: CMP    #$06    
       BPL    LFCE1   
       STA.wy $00DB,Y 
       TAX            
       CLC            
       LDA    LFF0D,X 
       LDX    LFF19,Y 
       ADC    $DD,X   
       STA    $DD,X   
       LDA    #$08    
       BNE    LFCE3   
LFCE1: LDA    $B6,X   
LFCE3: STA.wy $00D8,Y 
       RTS            

LFCE7: INC    $B6,X   
       LDA    #$5B    
       CMP    $B6,X   
       BNE    LFCE1   
       LDA    $BB,X   
       AND    #$0F    
       ORA    #$60    
       STA    $BB,X   
LFCF7: LDA    LFF25,Y 
       STA    $B6,X   
LFCFC: LDA    #$70    
       BNE    LFCE3   
LFD00: BMI    LFD18   
       DEC    $B6,X   
       LDA    #$51    
       CMP    $B6,X   
       BNE    LFCE1   
       LDA    #$46    
       STA    $B6,X   
       LDA    $BB,X   
       AND    #$0F    
       ORA    #$C0    
       STA    $BB,X   
       BNE    LFCFC   
LFD18: DEC    $B6,X   
       BPL    LFCB2   
       LDA    $BB,X   
       AND    #$0F    
       ORA    #$A0    
       STA    $BB,X   
       BNE    LFCF7   
LFD26: LDA    $BB,X   
       AND    #$0F    
       ORA    #$30    
       STA    $BB,X   
       LDA    #$51    
       BNE    LFD3C   
LFD32: LDA    $BB,X   
       AND    #$0F    
       ORA    #$F0    
       STA    $BB,X   
       LDA    #$0B    
LFD3C: STA    $B6,X   
       RTS            

LFD3F: .byte $08,$0A,$28,$2A,$88,$8A,$A8,$AA
LFD47: .byte $00,$40,$10,$50,$04,$44,$14,$54,$01,$41,$11,$51,$05,$45,$15,$55
LFD57: .byte $00,$80,$20,$A0
LFD5B: .byte $01,$05,$11,$15,$41,$45,$51,$55
LFD63: .byte $80,$A0,$88,$A8,$82,$A2,$8A,$AA
LFD6B: .byte $00,$02,$08,$0A,$20,$22,$28,$2A,$80,$82,$88,$8A,$A0,$A2,$A8,$AA
LFD7B: .byte $08,$88,$28,$A8,$09,$89,$29,$A9
LFD83: .byte $80,$81,$84,$85,$90,$91,$94,$95,$AA,$FF,$FF,$FF,$99,$DD,$7E,$3C
       .byte $55,$FF,$FF,$FF,$99,$BB,$7E,$3C,$AA,$FF,$FF,$FF,$BB,$99,$7E,$3C
       .byte $55,$FF,$FF,$FF,$DD,$99,$7E,$3C
LFDAB: .byte $8B,$93,$9B,$A3,$38,$7C,$FE,$FE,$FE,$6C,$38,$7C,$FE,$E0,$FE,$6C
       .byte $38,$7E,$E0,$C0,$E0,$6C,$38
LFDC2: .byte $AF,$B5,$BB,$B5,$00,$00,$00,$00,$E7,$A5,$E7,$00,$3C,$7E,$C3,$C3
       .byte $E7,$66,$24,$18,$3C,$7E,$E7,$E7,$C3,$C3,$3C,$7E,$E7,$C3,$00,$00
       .byte $00,$FF,$7E,$00,$00,$00,$00,$00,$14,$08,$14,$00,$00,$22,$14,$00
       .byte $14,$22,$00,$41,$00,$41,$00,$22
LFDFA: .byte $F3,$EE,$E8,$E8,$E3,$E3,$DC,$DC,$D5,$D5,$CE,$CE,$CE,$AF,$AF,$AF
LFE0A: .byte $10,$10
LFE0C: .byte $08
LFE0D: .byte $00,$08
LFE0F: .byte $C9,$39
LFE11: .byte $C9,$CF
LFE13: .byte $80,$20,$01,$00,$45,$00,$29,$00,$0D,$60,$11,$00,$15,$20,$00,$80
       .byte $60,$19,$00,$1D,$03,$00,$67,$00,$80,$20,$0B,$00,$00,$6F,$00,$13
       .byte $20,$17,$40,$1B,$00,$3F,$00,$80,$80,$40,$01,$00,$25,$00,$49,$00
       .byte $80,$60,$0D,$00,$11,$40,$15,$00,$79,$00,$1D,$00,$00,$03,$60,$07
       .byte $00,$4B,$00,$0F,$00,$73,$00,$80,$40,$17,$20,$1B,$00,$5F,$00,$80
LFE63: .byte $10,$50,$90,$D0
LFE67: .byte $40,$00,$C0
LFE6A: .byte $80,$40
LFE6C: .byte $20,$10
LFE6E: .byte $08
LFE6F: .byte $04,$02,$01,$02,$03,$05,$07,$08,$0A,$0C
LFE79: .byte $08,$0C,$03,$07,$0B,$0F,$02,$06,$0A,$0E,$01,$05,$09,$0D,$00,$04
       .byte $79,$85,$B5,$A5,$B5,$85,$79,$17,$15,$15,$77,$55,$55,$77,$41,$41
       .byte $41,$41,$41,$41,$40,$49,$49,$49,$C9,$49,$49,$BE,$55,$55,$55,$D9
       .byte $55,$55,$99,$3C,$66,$66,$66,$66,$66,$3C,$66,$66,$7C,$60,$62,$3C
       .byte $66,$66,$3C,$66,$66,$3C,$46,$06,$3E,$66,$66,$3C,$46,$06,$0C,$06
       .byte $46,$3C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$18,$18,$08,$04,$02,$62,$7E
       .byte $60,$60,$3C,$06,$46,$7C,$46,$06,$7C,$60,$60,$7E,$18,$18,$18,$18
       .byte $78,$38,$00
LFEEC: .byte $00,$00,$00,$00,$00,$00,$01,$05,$15,$55
LFEF6: .byte $AC,$E4,$D8,$C4,$CB,$DE,$B2,$D2,$B8,$BE,$EB,$A5,$9E,$97,$90,$89
LFF06: .byte $20,$40,$80,$60,$01,$05
LFF0C: .byte $00
LFF0D: .byte $00,$00,$01,$00,$00,$01,$06,$05,$04,$03,$02,$01
LFF19: .byte $00,$02
LFF1B: .byte $00,$00,$80,$A0,$A8,$AA,$AA,$AA,$AA,$AA
LFF25: .byte $10,$40,$08,$0A,$0C,$0E,$FC,$EC,$DC,$CC,$7A,$5A,$FB,$84,$F7,$44
       .byte $C4,$0E,$0E,$0E,$0E,$09,$04,$0F,$00,$07,$04,$0A
LFF41: .byte $90,$F0
LFF43: LDA    LFFE9,Y 
       AND    $E8     
       BNE    LFF54   
       LDA    LFE6E,Y 
       STA    $E8     
       LDA    LFFED,Y 
       STA    $E9     
LFF54: RTS            

LFF55: LDA    $E8     
       LSR            
       BCC    LFF67   
       LDA    #$04    
       STA    $D3     
       LDA    $E9     
       AND    #$1F    
       TAY            
       EOR    #$0F    
       BCS    LFF82   
LFF67: LSR            
       BCC    LFF6E   
LFF6A: LDA    #$0D    
       BNE    LFF7F   
LFF6E: LSR            
       BCC    LFF74   
       JMP    LFF6A   
LFF74: LSR            
       BCC    LFF93   
       LDY    #$09    
       STY    $D3     
       LDA    $E9     
       BNE    LFF82   
LFF7F: TAY            
       STA    $D3     
LFF82: DEC    $E9,X   
       BNE    LFF8B   
       LDA    #$00    
       STA    $E8     
       RTS            

LFF8B: STA    AUDV0,X 
       LDA    $D3     
       STA    AUDC0,X 
       STY    AUDF0,X 
LFF93: RTS            

LFF94: LDA    #$08    
       BIT    $E7     
       BVC    LFFA6   
       LDA    $E4     
       STA    AUDV0   
       LSR            
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       RTS            

LFFA6: BEQ    LFFD3   
       LDA    $E4     
       BNE    LFFB2   
       LDA    #$F7    
       AND    $E7     
       STA    $E7     
LFFB2: LSR            
       LSR            
       LSR            
       AND    #$07    
       TAX            
       CPX    #$04    
       BPL    LFFE8   
       LDA    LFFF1,X 
       STA    AUDF0   
       LDA    LFFF5,X 
       STA    AUDF1   
       LDA    #$04    
       STA    AUDC0   
       STA    AUDC1   
       LDA    #$08    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LFFD3: LDA    $9A     
       ASL            
       BPL    LFFE8   
       LDA    #$04    
       STA    $D3     
       LDA    $80     
       LSR            
       AND    #$0F    
       TAY            
       EOR    #$0F    
       LSR            
       JMP    LFF8B   
LFFE8: RTS            

LFFE9: .byte $07,$03,$01,$00
LFFED: .byte $09,$18,$10,$30
LFFF1: .byte $08,$04,$0C,$04
LFFF5: .byte $14,$18,$14,$18,$00,$00,$00,$00,$F0,$00,$00
