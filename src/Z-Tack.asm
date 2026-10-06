; Disassembly of roms/Z-Tack.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Z-Tack.bin
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
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
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
CXM0FB  =  $34
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    INTIM   
       STA    $D3     
       LDA    #$46    
       STA    $B2     
LF014: LDA    #$03    
       STA    $D1     
       STA    $D2     
       STA    CXCLR   
LF01C: JSR    LFA7E   
       STX    $CF     
       STX    $CE     
       LDX    #$40    
       STX    $F9     
       LDA    #$1F    
       JSR    LFD2E   
       LDY    $F1     
       LDX    $EE,Y   
       LDY    LFC6C,X 
       LDX    $F1     
       LDA    $F6,X   
       TAX            
       LDA    LFEEE,X 
       STA    $DA     
       LDX    #$12    
LF03F: LDA    LFA8E,Y 
       STA    $9B,X   
       DEY            
       DEX            
       BPL    LF03F   
       LDA    $AD     
       STA    COLUPF  
       LDY    $F1     
       LDX    $EE,Y   
       LDY    LFCD8,X 
       LDX    #$0B    
LF055: LDA    LFF00,Y 
       STA    $80,X   
       LDA    LFF48,Y 
       STA    $BF,X   
       DEY            
       DEX            
       BPL    LF055   
       LDY    $F1     
       LDX    $EE,Y   
       LDY    LFC0C,X 
       LDX    #$05    
LF06C: LDA    LFFD8,Y 
       STA    $D4,X   
       DEY            
       DEX            
       BPL    LF06C   
LF075: LDX    INTIM   
       BNE    LF075   
       STX    WSYNC   
       STX    VBLANK  
       INX            
       STX    CTRLPF  
       LDA    #$FF    
       STA    TIM64T  
       LDA    $F0     
       BEQ    LF097   
       LDX    $9A     
       INX            
       STX    $E8     
       LDA    #$00    
       STA    $EA     
       STA    $EC     
       BEQ    LF0AB   
LF097: LDA    $F8     
       BNE    LF0A9   
       LDA    $9A     
       AND    #$01    
       BEQ    LF0A9   
       LDA    $CB     
       BPL    LF0A9   
       LDA    #$01    
       BPL    LF0AB   
LF0A9: LDA    $F1     
LF0AB: TAY            
       CLC            
       ADC    #$04    
       TAX            
       LDA    LFCCA,Y 
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$0A    
       STY    $DB     
LF0BB: LDA    $E8,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFCBC,Y 
       LDY    $DB     
       STA.wy $008C,Y 
       LDA    $E8,X   
       AND    #$0F    
       TAY            
       LDA    LFCBC,Y 
       LDY    $DB     
       DEY            
       DEY            
       STA.wy $008C,Y 
       DEY            
       DEY            
       STY    $DB     
       DEX            
       DEX            
       BPL    LF0BB   
       LDX    #$0B    
       LDA    #$FC    
LF0E5: STA    $8C,X   
       DEX            
       DEX            
       BPL    LF0E5   
       LDA    #$03    
       STA    NUSIZ1  
       STA    NUSIZ0  
       LDY    #$07    
       STA    WSYNC   
LF0F5: DEY            
       BNE    LF0F5   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STY    HMP1    
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       STY    $DB     
       STY    VDELP0  
       STY    VDELP1  
       LDY    $F1     
       LDX    $D1,Y   
       LDA    LFC7F,X 
       STA    PF1     
LF118: LDY    $DB     
       LDA    ($96),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($94),Y 
       STA    GRP1    
       LDA    ($92),Y 
       STA    GRP0    
       LDA    ($90),Y 
       STA    $DC     
       LDA    ($8E),Y 
       TAX            
       LDA    ($8C),Y 
       TAY            
       LDA    $DC     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $DB     
       BPL    LF118   
       STA    HMCLR   
       LDY    #$00    
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    VDELP0  
       STY    VDELP1  
       STY    PF1     
       STY    NUSIZ1  
       LDA    #$15    
       STA    NUSIZ0  
       LDX    #$FB    
       STX    $8D     
       STX    $91     
       INX            
       STX    $8F     
       STX    $93     
       LDA    $B2     
       STA    HMP0    
       AND    #$0F    
       TAY            
       LDA    $CC     
       STA    HMM0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
LF171: DEY            
       BPL    LF171   
       STA    RESP0   
       STA    WSYNC   
LF178: DEX            
       BPL    LF178   
       STA    RESM0   
       STA    WSYNC   
       LDA    $CD     
       STA    HMM1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF188: DEY            
       BPL    LF188   
       STA    RESM1   
       STA    WSYNC   
       LDA    $E5     
       STA    COLUBK  
       LDX    #$1E    
       TXS            
       LDX    #$03    
LF198: LDA    $AE,X   
       STA    $8C     
       STA    $8E     
       LDA    $B3,X   
       STA    $90     
       STA    $92     
       LDA    $BB,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF1AD: DEY            
       BPL    LF1AD   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $9F     
       AND    LFE9E,X 
       BEQ    LF1C1   
       LDA    #$08    
       STA    REFP1   
LF1C1: LDY    #$17    
LF1C3: LDA    ($92),Y 
       STA    COLUP1  
       STA    WSYNC   
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($8E),Y 
       STA    COLUP0  
       LDA    ($90),Y 
       STA    GRP1    
       LDA    $CE     
       EOR    $D0     
       AND    #$FC    
       PHP            
       LDA    $CF     
       EOR    $D0     
       AND    #$FF    
       PHP            
       PLA            
       PLA            
       INC    $D0     
       DEY            
       BPL    LF1C3   
       STA    WSYNC   
       INY            
       STY    HMCLR   
       STY    GRP1    
       STY    REFP1   
       DEX            
       BPL    LF198   
       TXS            
       STY    GRP0    
       STY    NUSIZ0  
       TYA            
       LDX    $DE     
       BIT    CXPPMM  
       BPL    LF206   
       STX    $94     
       ORA    #$80    
LF206: STA    $97     
       LDX    $CF     
       BIT    CXM0P   
       BPL    LF214   
       STX    $95     
       ORA    #$20    
       BNE    LF216   
LF214: AND    #$DF    
LF216: STA    $97     
       LDX    $CE     
       BIT    CXM1P   
       BPL    LF224   
       STX    $96     
       ORA    #$40    
       BNE    LF226   
LF224: AND    #$BF    
LF226: STA    $97     
       STA    CXCLR   
       LDA    $AD     
       AND    #$01    
       STA    CTRLPF  
       LDX    #$FD    
       STX    $8D     
       STX    $91     
       INX            
       STX    $8F     
       STX    $93     
       LDX    #$1E    
       TXS            
       LDX    #$05    
LF240: LDA    $9B,X   
       STA    PF0     
       LDA    $A1,X   
       STA    PF1     
       LDA    $A7,X   
       STA    PF2     
       LDA    $80,X   
       STA    $8C     
       STA    $8E     
       LDA    $86,X   
       STA    $90     
       STA    $92     
       LDA    $BF,X   
       STA    HMP0    
       AND    #$0F    
       TAY            
       LDA    $C5,X   
       STA    HMP1    
       AND    #$0F    
       STA    WSYNC   
LF267: DEY            
       BPL    LF267   
       STA    RESP0   
       TAY            
       STA    WSYNC   
LF26F: DEY            
       BPL    LF26F   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    ENAM0   
       LDY    #$07    
LF27E: LDA    ($92),Y 
       STA    COLUP1  
       STA    WSYNC   
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       LDA    ($8E),Y 
       STA    COLUP0  
       LDA    $CE     
       EOR    $D0     
       AND    #$FC    
       PHP            
       LDA    $CF     
       EOR    $D0     
       STA    $3F     
       PHP            
       PLA            
       PLA            
       INC    $D0     
       DEY            
       BPL    LF27E   
       INY            
       DEX            
       STY    GRP0    
       STY    GRP1    
       BPL    LF240   
       TXS            
       LDA    $AD     
       STA    COLUBK  
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STY    COLUBK  
       STY    ENAM0   
       STY    ENAM1   
LF2C4: LDA    INTIM   
       BNE    LF2C4   
       STA    $D0     
       LDA    #$13    
       STA    TIM64T  
       BIT    CXM0FB  
       BPL    LF2DB   
       LDA    #$FD    
       STA    $8C     
       JSR    LF9AF   
LF2DB: LDX    #$01    
LF2DD: LDA    $F2,X   
       BEQ    LF2E6   
       DEC    $F2,X   
       JMP    LF307   
LF2E6: LDY    $F4,X   
       LDA    LFD00,Y 
       BEQ    LF2EF   
       INC    $F4,X   
LF2EF: STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       LDA    LFE00,Y 
       STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFC3C,Y 
       STA    $F2,X   
LF307: DEX            
       BPL    LF2DD   
LF30A: LDA    INTIM   
       BNE    LF30A   
       LDA    #$82    
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
       LDA    #$23    
       STA    TIM64T  
       LDA    SWCHB   
       TAY            
       AND    #$02    
       CMP    $98     
       BEQ    LF348   
       STA    $98     
       LDX    #$01    
       STX    $F0     
       CMP    #$00    
       BNE    LF348   
       INC    $9A     
       LDA    $9A     
       AND    #$03    
       STA    $9A     
LF348: TYA            
       AND    #$01    
       BNE    LF36B   
       LDX    #$13    
LF34F: STA    $DE,X   
       DEX            
       BPL    LF34F   
       LDA    #$01    
       STA    $F8     
       LDA    $9A     
       CMP    #$02    
       BCC    LF362   
       LDA    #$03    
       BNE    LF364   
LF362: LDA    #$00    
LF364: STA    $F6     
       STA    $F7     
       JMP    LF014   
LF36B: LDA    $E5     
       BNE    LF3A9   
       LDA    $E7     
       BNE    LF3A9   
       LDA    $94     
       CLC            
       ADC    #$06    
       LDX    #$03    
       BIT    $97     
       BPL    LF3A9   
LF37E: CMP    LFBF0,X 
       BCS    LF3A6   
       STX    $E6     
       LDA    #$10    
       JSR    LFD27   
       LDA    #$09    
       JSR    LFD2E   
       LDA    #$00    
       STA    $B7,X   
       LDA    $9E     
       AND    LFC4E,X 
       STA    $9E     
       LDA    #$2F    
       STA    $E5     
       STA    $E7     
       LDA    #$FF    
       STA    $CF     
       BNE    LF3A9   
LF3A6: DEX            
       BPL    LF37E   
LF3A9: LDA    $E1     
       BNE    LF3CB   
       JSR    LF87A   
       LDA    $DD     
       CMP    #$2F    
       BNE    LF401   
       LDX    #$02    
       JSR    LF927   
       LDA    $DF     
       CMP    $E2     
       BNE    LF3E3   
       LDA    #$CC    
       STA    $DF     
       LDA    #$00    
       STA    $E1     
       BEQ    LF401   
LF3CB: LDA    $E4     
       BNE    LF3DD   
       JSR    LF87A   
       LDA    $DD     
       CMP    #$2F    
       BNE    LF3F2   
       LDX    #$02    
       JSR    LF92F   
LF3DD: LDA    $DF     
       CMP    $E2     
       BEQ    LF3EA   
LF3E3: LDA    #$09    
       JSR    LFD2E   
       BEQ    LF3F2   
LF3EA: LDA    #$DD    
       STA    $E2     
       LDA    #$00    
       STA    $E4     
LF3F2: LDX    #$02    
       LDY    #$02    
       JSR    LF937   
       JSR    LF8B9   
       LDX    #$02    
       JSR    LF927   
LF401: LDA    $E4     
       BEQ    LF414   
       LDX    #$02    
       LDY    #$05    
       JSR    LF937   
       JSR    LF8B9   
       LDX    #$02    
       JSR    LF92F   
LF414: LDA    $F9     
       BEQ    LF41D   
       DEC    $F9     
       JMP    LF711   
LF41D: LDA    $CE     
       CMP    #$90    
       BCS    LF426   
       JMP    LF4A5   
LF426: LDA    $D3     
       ADC    $CB     
       ADC    $B2     
       ADC    $CC     
       ADC    $CD     
       STA    $D3     
       AND    #$0F    
       CMP    #$0C    
       BCC    LF43A   
       SBC    #$07    
LF43A: TAX            
       LDY    #$0B    
LF43D: LDA    $80,X   
       CMP    #$9E    
       BCC    LF472   
       DEX            
       BPL    LF448   
       LDX    #$0B    
LF448: DEY            
       BPL    LF43D   
       LDA    $E1     
       ORA    $E4     
       BEQ    LF454   
       JMP    LF564   
LF454: LDX    $F1     
       LDY    $EE,X   
       INY            
       CPY    #$06    
       BNE    LF46B   
       INC    $F6,X   
       LDA    $F6,X   
       CMP    #$12    
       BCC    LF469   
       LDA    #$08    
       STA    $F6,X   
LF469: LDY    #$00    
LF46B: STY    $EE,X   
       STA    CXCLR   
       JMP    LF01C   
LF472: STX    $DB     
       LDA    $9D     
       AND    #$0F    
       BNE    LF483   
       TYA            
       CMP    #$06    
       BCS    LF48E   
       INC    $9D     
       BNE    LF48E   
LF483: LDA    $CB     
       LDX    $F1     
       LDY    $F6,X   
       AND    LFDEE,Y 
       BNE    LF4AC   
LF48E: LDX    $DB     
       LDA    LFC00,X 
       STA    $CE     
       LDX    $F1     
       LDY    $EE,X   
       LDA    LFBFA,Y 
       CLC            
       ADC    $DB     
       TAX            
       LDA    LFF90,X 
       STA    $CD     
LF4A5: LDA    $CE     
       SEC            
       SBC    $DA     
       STA    $CE     
LF4AC: LDY    $F1     
       LDX    $EE,Y   
       LDA    LFBF4,X 
       CMP    #$01    
       BNE    LF4C1   
       JSR    LF9BA   
       LDA    #$00    
       STA    $DB     
       JSR    LFA20   
LF4C1: LDY    $F1     
       LDX    $EE,Y   
       LDA    LFBF4,X 
       CMP    #$02    
       BNE    LF549   
       JSR    LF9BA   
       LDA    #$01    
       STA    $DB     
       JSR    LFA20   
       LDX    #$03    
LF4D8: LDA    $9E     
       AND    LFE9E,X 
       BEQ    LF546   
       LDA    $B7,X   
       CMP    #$80    
       BCS    LF51D   
       LDA    $9F     
       AND    LFE9E,X 
       BNE    LF4FE   
       LDA    $BB,X   
       JSR    LF869   
       CMP    #$CA    
       BCS    LF510   
       ADC    #$02    
       JSR    LF865   
       STA    $BB,X   
       BNE    LF546   
LF4FE: LDA    $BB,X   
       JSR    LF869   
       CMP    #$34    
       BCC    LF510   
       SBC    #$02    
       JSR    LF865   
       STA    $BB,X   
       BNE    LF546   
LF510: LDA    $9E     
       AND    LFC4E,X 
       STA    $9E     
       LDA    #$00    
       STA    $B7,X   
       BEQ    LF546   
LF51D: BNE    LF546   
       LDA    #$D8    
       STA    $B3,X   
       LDA    #$17    
       JSR    LFD2E   
       LDA    $B2     
       JSR    LF869   
       STA    $DC     
       LDA    $BB,X   
       JSR    LF869   
       CMP    $DC     
       BCC    LF53F   
       LDA    $9F     
       ORA    LFE9E,X 
       BNE    LF544   
LF53F: LDA    $9F     
       AND    LFC4E,X 
LF544: STA    $9F     
LF546: DEX            
       BPL    LF4D8   
LF549: LDA    $E5     
       BEQ    LF553   
LF54D: LDA    #$FF    
       STA    $CE     
       BNE    LF564   
LF553: LDA    $96     
       BIT    $97     
       BVC    LF564   
       LDA    #$10    
       JSR    LFD27   
       LDA    #$2F    
       STA    $E5     
       BNE    LF54D   
LF564: LDX    SWCHA   
       LDA    $9B     
       STA    $DD     
       AND    #$0F    
       BEQ    LF572   
       JMP    LF681   
LF572: LDA    $AE     
       CMP    #$24    
       BCC    LF57B   
       JMP    LF711   
LF57B: LDA    $F8     
       BNE    LF58F   
       LDA    $D3     
       AND    #$07    
       CMP    #$03    
       BCC    LF589   
       LDA    #$03    
LF589: TAY            
       LDX    LFCC6,Y 
       BNE    LF599   
LF58F: LDY    $F1     
       LDA.wy $003C,Y 
       BPL    LF599   
       JMP    LF630   
LF599: TXA            
       LDY    $F1     
       AND    LFC9D,Y 
       BNE    LF5BB   
       LDA    $DE     
       SEC            
       SBC    #$05    
       STA    $CF     
       LDA    $B2     
       JSR    LF869   
       CLC            
       ADC    #$0A    
       JSR    LF865   
       STA    $CC     
       LDA    $DD     
       ORA    #$01    
       BNE    LF61F   
LF5BB: TXA            
       LDY    $F1     
       AND    LFCB2,Y 
       BNE    LF5DD   
       LDA    $DE     
       CLC            
       ADC    #$0C    
       STA    $CF     
       LDA    $B2     
       JSR    LF869   
       CLC            
       ADC    #$0A    
       JSR    LF865   
       STA    $CC     
       LDA    $DD     
       ORA    #$02    
       BNE    LF61F   
LF5DD: TXA            
       LDY    $F1     
       AND    LFC44,Y 
       BNE    LF5FF   
       LDA    $DE     
       CLC            
       ADC    #$06    
       STA    $CF     
       LDA    $B2     
       JSR    LF869   
       SEC            
       SBC    #$02    
       JSR    LF865   
       STA    $CC     
       LDA    $DD     
       ORA    #$04    
       BNE    LF61F   
LF5FF: TXA            
       LDY    $F1     
       AND    LFC52,Y 
       BNE    LF62D   
       LDA    $DE     
       CLC            
       ADC    #$05    
       STA    $CF     
       LDA    $B2     
       JSR    LF869   
       CLC            
       ADC    #$14    
       JSR    LF865   
       STA    $CC     
       LDA    $DD     
       ORA    #$08    
LF61F: STA    $9B     
       LDY    $F4     
       LDA    LFD00,Y 
       BNE    LF62D   
       LDA    #$00    
       JSR    LFD27   
LF62D: JMP    LF711   
LF630: TXA            
       LDY    $F1     
       AND    LFC9D,Y 
       BNE    LF63E   
       LDA    $DE     
       BEQ    LF63E   
       DEC    $DE     
LF63E: TXA            
       LDY    $F1     
       AND    LFCB2,Y 
       BNE    LF64E   
       LDY    $DE     
       CPY    #$54    
       BCS    LF64E   
       INC    $DE     
LF64E: TXA            
       LDY    $F1     
       AND    LFC44,Y 
       BNE    LF666   
       LDA    $B2     
       JSR    LF869   
       CMP    #$34    
       BCC    LF666   
       SBC    #$01    
       JSR    LF865   
       STA    $B2     
LF666: TXA            
       LDY    $F1     
       AND    LFC52,Y 
       BNE    LF67E   
       LDA    $B2     
       JSR    LF869   
       CMP    #$CA    
       BCS    LF67E   
       ADC    #$01    
       JSR    LF865   
       STA    $B2     
LF67E: JMP    LF711   
LF681: AND    #$08    
       BNE    LF6D6   
       LDA    $DD     
       AND    #$04    
       BNE    LF6BB   
       LDA    $DD     
       AND    #$02    
       BNE    LF6A6   
       LDA    $CF     
       BMI    LF69D   
       SEC            
       SBC    #$03    
       STA    $CF     
       JMP    LF6EF   
LF69D: LDA    #$FE    
       STA    $8C     
       JSR    LF9AF   
       BMI    LF6EF   
LF6A6: LDA    $CF     
       CMP    #$90    
       BCS    LF6B2   
       ADC    #$03    
       STA    $CF     
       BNE    LF6EF   
LF6B2: LDA    #$FD    
       STA    $8C     
       JSR    LF9AF   
       BMI    LF6EF   
LF6BB: LDA    $CC     
       JSR    LF869   
       CMP    #$36    
       BCC    LF6CD   
       SBC    #$03    
       JSR    LF865   
       STA    $CC     
       BNE    LF6EF   
LF6CD: LDA    #$FB    
       STA    $8C     
       JSR    LF9AF   
       BMI    LF6EF   
LF6D6: LDA    $CC     
       JSR    LF869   
       CMP    #$DC    
       BCS    LF6E8   
       ADC    #$03    
       JSR    LF865   
       STA    $CC     
       BNE    LF6EF   
LF6E8: LDA    #$F7    
       STA    $8C     
       JSR    LF9AF   
LF6EF: LDA    $F8     
       BNE    LF6FE   
       LDA    $AE     
       CMP    #$24    
       BCS    LF711   
       LDX    $99     
       JMP    LF630   
LF6FE: LDY    $F1     
       LDA.wy $003C,Y 
       BPL    LF711   
       LDA    $AE     
       CMP    #$24    
       BCS    LF711   
       LDX    SWCHA   
       JMP    LF630   
LF711: LDA    $E5     
       BNE    LF74C   
LF715: LDA    #$18    
       STA    $DB     
       LDA    #$0C    
       STA    $DD     
       JSR    LF960   
       LDA    #$0D    
       STA    $DB     
       LDA    #$30    
       STA    $DC     
       JSR    LF96F   
       LDA    #$25    
       STA    $DB     
       LDA    #$48    
       STA    $DC     
       LDA    #$24    
       STA    $DD     
       JSR    LF983   
       LDA    #$3D    
       STA    $DB     
       LDA    #$18    
       STA    $DC     
       LDA    #$3C    
       STA    $DD     
       JSR    LF997   
       JMP    LF7E5   
LF74C: LDA    #$1E    
       STA    $DB     
       LDA    #$12    
       STA    $DD     
       JSR    LF960   
       LDA    #$07    
       STA    $DB     
       LDA    #$36    
       STA    $DC     
       LDA    #$06    
       STA    $DD     
       JSR    LF96F   
       LDA    #$1F    
       STA    $DB     
       LDA    #$4E    
       STA    $DC     
       LDA    #$1E    
       STA    $DD     
       JSR    LF983   
       LDA    #$37    
       STA    $DB     
       LDA    #$1E    
       STA    $DC     
       LDA    #$36    
       STA    $DD     
       JSR    LF997   
       LDA    $E5     
       LDX    #$03    
       CMP    #$28    
       BCS    LF79E   
       CMP    #$18    
       BCS    LF797   
       LDY    #$84    
       JSR    LF956   
       BMI    LF7A3   
LF797: LDY    #$54    
       JSR    LF956   
       BMI    LF7A3   
LF79E: LDY    #$24    
       JSR    LF956   
LF7A3: DEC    $E5     
       BNE    LF7E5   
       LDA    $E1     
       ORA    $E4     
       BEQ    LF7B2   
       INC    $E5     
       JMP    LF7E5   
LF7B2: LDA    #$00    
       STA    $DE     
       JSR    LFA7E   
       LDA    $9A     
       AND    #$01    
       BEQ    LF7DB   
       LDX    $F1     
       DEC    $D1,X   
       BPL    LF7D4   
       JSR    LFA76   
       BPL    LF7CF   
       JSR    LFA6F   
       BEQ    LF7E2   
LF7CF: STX    $F1     
       JMP    LF01C   
LF7D4: JSR    LFA76   
       BPL    LF7CF   
       BMI    LF7E2   
LF7DB: DEC    $D1     
       BPL    LF7E2   
       JSR    LFA6F   
LF7E2: JMP    LF715   
LF7E5: LDA    $E7     
       BNE    LF81A   
       LDX    #$03    
       LDA    $97     
       AND    #$20    
       BEQ    LF83A   
       LDA    $95     
LF7F3: CMP    LFBF0,X 
       BCS    LF817   
       STX    $E6     
       LDA    #$09    
       JSR    LFD2E   
       LDA    #$00    
       STA    $B7,X   
       LDA    $9E     
       AND    LFC4E,X 
       STA    $9E     
       LDA    #$2F    
       STA    $E7     
       LDA    #$F0    
       STA    $8C     
       JSR    LF9AF   
       BNE    LF81A   
LF817: DEX            
       BPL    LF7F3   
LF81A: LDX    $E6     
       LDA    $E7     
       CMP    #$28    
       BCS    LF82E   
       CMP    #$18    
       BCS    LF82A   
       LDA    #$9C    
       BNE    LF830   
LF82A: LDA    #$6C    
       BNE    LF830   
LF82E: LDA    #$3C    
LF830: STA    $B3,X   
       DEC    $E7     
       BNE    LF83A   
       LDA    #$B4    
       STA    $B3,X   
LF83A: STA    CXCLR   
       LDA    $F8     
       BNE    LF856   
       LDA    $CB     
       AND    #$1F    
       BNE    LF850   
       LDA    $D3     
       AND    #$03    
       TAY            
       LDA    LFCC6,Y 
       STA    $99     
LF850: LDA    #$03    
       STA    $D1     
       BNE    LF860   
LF856: LDX    $F1     
       LDY    $D1,X   
       CPY    #$05    
       BCC    LF860   
       DEC    $D1,X   
LF860: INC    $CB     
       JMP    LF075   
LF865: EOR    #$07    
       BNE    LF86B   
LF869: EOR    #$70    
LF86B: TAY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $DB     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $DB     
       RTS            

LF87A: LDA    $CF     
       LDX    #$05    
       BIT    CXM0P   
       BPL    LF897   
LF882: CMP    LFC12,X 
       BCS    LF894   
       TXA            
       ADC    #$06    
       STA    $DB     
       LDA    $D4,X   
       AND    #$0F    
       STA    $DC     
       BPL    LF8A8   
LF894: DEX            
       BPL    LF882   
LF897: BVC    LF8B8   
LF899: CMP    LFC12,X 
       BCS    LF8B5   
       STX    $DC     
       LDA    $D4,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $DB     
LF8A8: LDA    #$2F    
       STA    $DD     
       LDA    #$FD    
       STA    $8C     
       JSR    LF9AF   
       BNE    LF8B8   
LF8B5: DEX            
       BPL    LF899   
LF8B8: RTS            

LF8B9: LDA    $DB     
       CMP    #$0F    
       BEQ    LF8FB   
       TAY            
       LDA    $DC     
       CMP    #$0F    
       BEQ    LF910   
       TAX            
       LDA    $DD     
       CMP    #$28    
       BCS    LF8E1   
       CMP    #$18    
       BCS    LF8D9   
       LDA    #$CE    
       STA    $80,X   
       LDA    #$E6    
       BNE    LF8E7   
LF8D9: LDA    #$C6    
       STA    $80,X   
       LDA    #$DE    
       BNE    LF8E7   
LF8E1: LDA    #$BE    
       STA    $80,X   
       LDA    #$D6    
LF8E7: STA.wy $0080,Y 
       DEC    $DD     
       BNE    LF926   
       LDA    #$9E    
       STA    $80,X   
       STA.wy $0080,Y 
       JSR    LFA38   
       JMP    LF922   
LF8FB: LDX    $DC     
       JSR    LF941   
       STA    $80,X   
       DEC    $DD     
       BNE    LF926   
       LDA    #$9E    
       STA    $80,X   
       JSR    LFA38   
       JMP    LF922   
LF910: JSR    LF941   
       STA.wy $0080,Y 
       DEC    $DD     
       BNE    LF926   
       LDA    #$9E    
       STA.wy $0080,Y 
       JSR    LFA38   
LF922: LDA    #$EE    
       STA    $DB     
LF926: RTS            

LF927: LDA    $DB,X   
       STA    $DF,X   
       DEX            
       BPL    LF927   
       RTS            

LF92F: LDA    $DB,X   
       STA    $E2,X   
       DEX            
       BPL    LF92F   
       RTS            

LF937: LDA.wy $00DF,Y 
       STA    $DB,X   
       DEY            
       DEX            
       BPL    LF937   
       RTS            

LF941: LDA    $DD     
       CMP    #$28    
       BCS    LF953   
       CMP    #$18    
       BCS    LF94F   
       LDA    #$B6    
       BNE    LF955   
LF94F: LDA    #$AE    
       BNE    LF955   
LF953: LDA    #$A6    
LF955: RTS            

LF956: TYA            
       CLC            
       ADC    $AE,X   
       STA    $AE,X   
       DEX            
       BPL    LF956   
       RTS            

LF960: LDA    $DE     
       CMP    $DB     
       BCC    LF96A   
       LDA    #$00    
       BEQ    LF96C   
LF96A: ADC    $DD     
LF96C: STA    $B1     
       RTS            

LF96F: LDA    $DE     
       CMP    $DB     
       BCC    LF979   
       CMP    $DC     
       BCC    LF97D   
LF979: LDA    #$00    
       BEQ    LF980   
LF97D: SEC            
       SBC    $DD     
LF980: STA    $B0     
       RTS            

LF983: LDA    $DE     
       CMP    $DB     
       BCC    LF98D   
       CMP    $DC     
       BCC    LF991   
LF98D: LDA    #$00    
       BEQ    LF994   
LF991: SEC            
       SBC    $DD     
LF994: STA    $AF     
       RTS            

LF997: LDA    $DE     
       CMP    $DB     
       BCS    LF9A1   
       LDA    #$00    
       BEQ    LF9AC   
LF9A1: CMP    #$55    
       BCC    LF9A9   
       LDA    $DC     
       BNE    LF9AC   
LF9A9: SEC            
       SBC    $DD     
LF9AC: STA    $AE     
       RTS            

LF9AF: LDA    $9B     
       AND    $8C     
       STA    $9B     
       LDA    #$FF    
       STA    $CF     
       RTS            

LF9BA: LDA    $A0     
       AND    #$01    
       BNE    LF9ED   
       LDA    $D3     
       CMP    #$C0    
       BCC    LFA1F   
       LDY    #$03    
       AND    #$03    
       TAX            
LF9CB: LDA    $B3,X   
       CMP    #$B4    
       BEQ    LF9DB   
       DEX            
       BPL    LF9D6   
       LDX    #$03    
LF9D6: DEY            
       BPL    LF9CB   
       BMI    LFA1F   
LF9DB: LDA    $9C     
       AND    #$F0    
       STA    $9C     
       TXA            
       CLC            
       ADC    $9C     
       STA    $9C     
       LDA    $A0     
       ORA    #$01    
       STA    $A0     
LF9ED: LDA    $9C     
       AND    #$0F    
       TAX            
       LDA    $CE     
       CMP    LFC4A,X 
       BCS    LFA1F   
       LDA    #$C6    
       STA    $B3,X   
       LDA    $A0     
       AND    #$FE    
       STA    $A0     
       LDA    #$FF    
       STA    $CE     
       LDA    $CD     
       JSR    LF869   
       SEC            
       SBC    #$04    
       JSR    LF865   
       STA    $BB,X   
       LDA    #$C0    
       STA    $B7,X   
       LDA    $9E     
       ORA    LFE9E,X 
       STA    $9E     
LFA1F: RTS            

LFA20: LDX    #$03    
LFA22: LDA    $B7,X   
       BNE    LFA2C   
       LDA    #$B4    
       STA    $B3,X   
       BNE    LFA34   
LFA2C: LDA    $CB     
       AND    $DB     
       BNE    LFA34   
       DEC    $B7,X   
LFA34: DEX            
       BPL    LFA22   
       RTS            

LFA38: LDA    $F8     
       BEQ    LFA6E   
       LDX    $F1     
       LDY    $F6,X   
       LDA    LFCEA,Y 
       STA    $8D     
       INY            
       LDA    LFCEA,Y 
       STA    $8E     
       SED            
       LDA    $E8,X   
       CLC            
       ADC    $8D     
       STA    $E8,X   
       LDA    $EA,X   
       ADC    $8E     
       STA    $EA,X   
       BCC    LFA6D   
       LDA    $EC,X   
       ADC    #$00    
       STA    $EC,X   
       BCC    LFA6B   
       LDA    #$99    
       STA    $E8,X   
       STA    $EA,X   
       STA    $EC,X   
LFA6B: INC    $D1,X   
LFA6D: CLD            
LFA6E: RTS            

LFA6F: LDA    #$00    
       STA    $F1     
       STA    $F8     
       RTS            

LFA76: LDA    $F1     
       EOR    #$01    
       TAX            
       LDA    $D1,X   
       RTS            

LFA7E: LDA    #$B4    
       LDX    #$03    
       LDY    #$00    
LFA84: STY    $B7,X   
       STA    $B3,X   
       DEX            
       BPL    LFA84   
       RTS            

LFA8C: .byte $AA,$AA
LFA8E: .byte $30,$F0,$B0,$10,$70,$10,$83,$C6,$6E,$04,$01,$00,$C0,$E2,$F7,$BD
       .byte $81,$01,$75,$10,$30,$70,$10,$30,$00,$3E,$EB,$23,$00,$00,$00,$88
       .byte $3C,$65,$C7,$C4,$00,$08,$10,$10,$30,$F0,$30,$10,$17,$06,$2C,$7F
       .byte $18,$00,$75,$40,$FE,$82,$EE,$80,$25,$80,$F0,$10,$70,$00,$00,$3C
       .byte $E7,$25,$E7,$04,$00,$1E,$73,$1E,$13,$03,$00,$44,$70,$10,$30,$90
       .byte $00,$00,$40,$F3,$9F,$83,$0F,$00,$3F,$23,$73,$02,$00,$00,$93,$70
       .byte $70,$C0,$70,$10,$10,$07,$1C,$B4,$B0,$00,$00,$55,$FF,$1F,$0A,$3C
       .byte $60,$A4,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$3C,$7E,$7E,$DB
       .byte $DB,$7E,$7E,$3C,$3C,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$18,$24,$24,$18,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$3C,$42,$99,$42,$24,$99,$99,$24,$42,$99,$02,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$AA,$55,$AA,$55,$AA,$55,$81,$81,$24,$24,$81,$81,$55,$AA,$55
       .byte $AA,$55,$AA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$81,$42
       .byte $34,$4C,$42,$99,$24,$3C,$5A,$5A,$3C,$18,$00,$00,$00,$00,$00,$00
       .byte $80,$40,$20,$31,$BB,$7F,$7F,$BB,$31,$20,$40,$80,$00,$00,$00,$00
       .byte $00,$00
LFBF0: .byte $60,$48,$30,$18
LFBF4: .byte $00,$00,$01,$01,$02,$02
LFBFA: .byte $00,$0C,$18,$24,$30,$3C
LFC00: .byte $83,$7B,$73,$6B,$63,$5B,$83,$7B,$73,$6B,$63,$5B
LFC0C: .byte $05,$0B,$11,$17,$1D,$23
LFC12: .byte $90,$88,$80,$78,$70,$68,$54,$54,$F6,$F6,$34,$38,$38,$34,$F6,$F6
       .byte $54,$54,$3C,$66,$66,$66,$66,$66,$66,$3C,$7E,$18,$18,$18,$18,$78
       .byte $38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C
LFC3C: .byte $00,$01,$03,$07,$0F,$1F,$3F,$7F
LFC44: .byte $40,$04,$26,$26,$26,$26
LFC4A: .byte $52,$3A,$22,$0A
LFC4E: .byte $FE,$FD,$FB,$F7
LFC52: .byte $80,$08,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C
       .byte $1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
LFC6C: .byte $12,$25,$38,$4B,$5E,$71,$2C,$2C,$2C,$2C,$2C,$2C,$2C,$2C,$2C,$2C
       .byte $2C,$2C,$4F
LFC7F: .byte $00,$01,$05,$15,$55,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18
       .byte $18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$4F
LFC9D: .byte $10,$01,$2C,$2C,$44,$44,$78,$78,$57,$57,$2C,$2C,$57,$57,$78,$78
       .byte $44,$44,$2C,$2C,$4F
LFCB2: .byte $20,$02,$3C,$46,$06,$3E,$66,$66,$66,$3C
LFCBC: .byte $24,$2C,$34,$54,$5C,$64,$84,$8C,$94,$B4
LFCC6: .byte $EF,$BF,$7F,$DF
LFCCA: .byte $48,$57,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
LFCD8: .byte $0B,$17,$23,$2F,$3B,$47,$78,$B4,$B4,$2C,$2C,$F6,$F6,$2C,$2C,$B4
       .byte $B4,$78
LFCEA: .byte $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$10,$11,$12,$13,$14,$15
       .byte $16,$17,$18,$AA,$AA,$AA
LFD00: .byte $85,$EF,$EE,$EC,$E8,$E5,$E4,$42,$00,$3F,$3F,$3F,$8B,$89,$35,$00
       .byte $8F,$7F,$7F,$8B,$78,$75,$00,$4F,$4F,$4E,$4C,$4A,$48,$46,$00,$4F
       .byte $4F,$4F,$4F,$4F,$4F,$4F,$00
LFD27: STA    $F4     
       LDA    #$00    
       STA    $F2     
       RTS            

LFD2E: STA    $F5     
       LDA    #$00    
       STA    $F3     
       RTS            

LFD35: .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$FF,$BF,$5F,$4C,$4C,$A6,$A3
       .byte $A0,$FF,$E0,$31,$0F,$17,$21,$42,$80,$FF,$5A,$3C,$FF,$99,$42,$24
       .byte $24,$FF,$FF,$7E,$18,$99,$7E,$99,$18,$7E,$18,$3C,$FF,$81,$99,$24
       .byte $24,$66,$18,$24,$E7,$99,$DB,$42,$42,$FF,$FD,$FA,$32,$32,$65,$C5
       .byte $05,$FF,$07,$8C,$F0,$E8,$84,$42,$01,$DB,$3C,$FF,$42,$24,$18,$24
       .byte $42,$FF,$7E,$3C,$DB,$A5,$E7,$24,$24,$FF,$3C,$18,$18,$18,$24,$5A
       .byte $81,$FF,$99,$DB,$7E,$3C,$A5,$66,$A5,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$18,$24,$24,$18,$00,$00,$00,$66,$24,$18,$18,$24,$66
       .byte $00,$C3,$5A,$24,$42,$42,$24,$5A,$C3,$00,$00,$01,$06,$06,$01,$00
       .byte $00,$00,$06,$1C,$01,$01,$1C,$06,$00,$3C,$F0,$F0,$03,$03,$F0,$F0
       .byte $3C,$00,$00,$80,$60,$60,$80,$00,$00,$00,$60,$38,$80,$80,$38,$60
       .byte $00,$3C,$0F,$0F,$C0,$C0,$0F,$0F,$3C
LFDEE: .byte $00,$3F,$3F,$1F,$FF,$FF,$7F,$7F,$FF,$FF,$7F,$7F,$3F,$FF,$FF,$7F
       .byte $7F,$3F
LFE00: .byte $52,$35,$16,$07,$08,$09,$0A,$0C,$00,$7F,$7F,$7F,$7F,$7F,$7F,$00
       .byte $9F,$9F,$9F,$9F,$9F,$9F,$00,$A4,$55,$14,$05,$06,$07,$08,$00,$4C
       .byte $35,$47,$64,$46,$35,$00,$00,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$26,$26
       .byte $28,$2A,$2C,$0A,$0A,$0A,$66,$56,$56,$56,$28,$28,$2A,$2A,$28,$2C
       .byte $28,$2A,$28,$2A,$28,$2A,$24,$24,$4A,$28,$2A,$56,$58,$58,$54,$54
       .byte $58,$58,$58,$56,$55,$58,$94,$D4,$D6,$D8,$D8,$D6,$D4,$D4,$24,$24
       .byte $24,$26,$28,$0A,$0A,$0A,$66,$68,$68,$68,$A8,$A8,$A8,$A8,$47,$47
       .byte $66,$46,$64,$64,$46,$46,$94,$94,$94,$76,$78,$78,$7A,$7A,$24,$24
       .byte $28,$24,$24,$08,$0F,$0F,$78,$74,$74,$D6,$D8,$D8,$78,$78
LFE9E: .byte $01,$02,$04,$08,$4F,$4F,$4F,$00,$00,$00,$5C,$BC,$BC,$5C,$00,$00
       .byte $00,$5C,$BC,$4C,$4C,$BC,$5C,$00,$5C,$BC,$4C,$4C,$4C,$4C,$BC,$5C
       .byte $00,$00,$5C,$DC,$DC,$5C,$00,$00,$00,$5C,$DC,$4C,$4C,$DC,$5C,$00
       .byte $5C,$DC,$DC,$4C,$4C,$DC,$DC,$5C,$00,$00,$5C,$DC,$DC,$5C,$00,$00
       .byte $00,$5C,$DC,$4C,$4C,$DC,$5C,$00,$5C,$DC,$DC,$4C,$4C,$DC,$DC,$5C
LFEEE: .byte $01,$02,$02,$02,$03,$03,$03,$03,$04,$04,$04,$04,$04,$05,$05,$05
       .byte $05,$05
LFF00: .byte $46,$9E,$9E,$7E,$3E,$4E,$76,$9E,$9E,$96,$6E,$8E,$3E,$9E,$56,$66
       .byte $5E,$46,$6E,$9E,$86,$7E,$9E,$76,$3E,$7E,$9E,$46,$66,$56,$6E,$86
       .byte $9E,$76,$96,$8E,$3E,$56,$46,$66,$96,$4E,$6E,$8E,$76,$9E,$86,$7E
       .byte $46,$56,$4E,$96,$66,$3E,$76,$8E,$5E,$7E,$86,$6E,$3E,$4E,$46,$7E
       .byte $96,$5E,$6E,$56,$76,$86,$8E,$66
LFF48: .byte $C4,$88,$88,$93,$59,$28,$35,$88,$88,$DB,$D9,$F3,$88,$88,$37,$3B
       .byte $06,$68,$F9,$88,$EA,$C4,$88,$E8,$A3,$26,$88,$57,$B5,$55,$14,$2A
       .byte $88,$D7,$0C,$B9,$97,$55,$E3,$2C,$39,$06,$08,$FA,$54,$88,$17,$AA
       .byte $68,$E9,$5C,$D7,$EC,$CA,$E8,$D3,$D4,$75,$E6,$3B,$44,$95,$97,$AA
       .byte $B9,$1C,$C4,$3B,$08,$F5,$94,$67
LFF90: .byte $35,$39,$39,$44,$D9,$E8,$35,$39,$39,$9B,$D9,$B3,$F9,$39,$F7,$FB
       .byte $C6,$E8,$F9,$39,$AA,$84,$39,$E8,$04,$E6,$39,$D7,$66,$15,$04,$EA
       .byte $39,$D7,$CC,$6A,$08,$15,$44,$EC,$F9,$C6,$08,$BA,$44,$39,$D7,$5B
       .byte $E8,$A9,$1C,$97,$AC,$3B,$E8,$83,$94,$35,$A6,$3B,$B4,$46,$F8,$5B
       .byte $6A,$DC,$B4,$FB,$F8,$B5,$45,$27
LFFD8: .byte $60,$FF,$FF,$FF,$A4,$FF,$60,$FF,$FF,$FF,$FF,$B5,$60,$FF,$FF,$93
       .byte $FF,$FF,$60,$FF,$82,$FF,$FF,$FF,$60,$FF,$FF,$FF,$FF,$B5,$60,$FF
       .byte $82,$FF,$FF,$FF,$00,$F0,$AA,$AA
