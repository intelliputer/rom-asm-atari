; Disassembly of roms/China Syndrome.bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/China Syndrome.bin
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
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP0FB  =  $32
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
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
       LDA    INTIM   
       STA    $C9     
       DEX            
       TXS            
       LDA    #$02    
       STA    $EE     
LF015: LDA    $EF     
       BNE    LF01D   
       LDA    #$09    
       BNE    LF022   
LF01D: LDX    $ED     
       LDA    LFCF0,X 
LF022: STA    $D0     
       LDA    #$24    
       STA    $8D     
       LDA    #$00    
       STA    $D6     
       STA    $D7     
       LDY    #$02    
       STY    $DB     
       STY    $DC     
       LDA    SWCHB   
       BMI    LF03D   
       LDA    #$03    
       BNE    LF03F   
LF03D: LDA    #$05    
LF03F: STA    $D1     
LF041: LDA    #$00    
       STA    $EA     
       STA    $E8     
       STA    $EB     
       STA    $E9     
       STA    $8F     
       STA    $E1     
       LDY    $EF     
       BEQ    LF059   
       STA    $8E     
       LDA    #$24    
       STA    $8D     
LF059: LDA    #$03    
       STA    $D8     
       STA    $D9     
       STA    $DA     
       LDA    #$18    
       STA    $CA     
       LDA    #$86    
       STA    $CB     
       LDA    #$44    
       STA    $CC     
       LDX    $D0     
       DEX            
       LDA    LFDCB,X 
       STA    $CD     
       LDA    LFCF7,X 
       STA    $E5     
       LDA    $C9     
       TAX            
       AND    #$07    
       STA    $D3     
       TXA            
       LSR            
       AND    #$07    
       STA    $D4     
       TXA            
       LSR            
       LSR            
       AND    #$07    
       STA    $D5     
       LDX    #$11    
       LDA    #$FF    
       LDY    #$06    
LF094: STA    $A2,X   
       STY    $90,X   
       DEX            
       BPL    LF094   
       LDY    #$02    
       JSR    LFA99   
       LDY    #$01    
       JSR    LFA99   
       LDY    #$00    
       JSR    LFA99   
       LDA    #$01    
       STA    $DF     
       STA    $DE     
       STA    $DD     
       LDA    #$FF    
       STA    $E0     
       STA    $D2     
LF0B8: LDA    $F7     
       STA    COLUPF  
LF0BC: LDA    INTIM   
       BNE    LF0BC   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$F9    
       STA    TIM64T  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$FF    
       STA    $81     
       STA    $83     
       STA    $85     
       STA    $87     
       STA    $89     
       LDA    $8F     
       CMP    #$06    
       BNE    LF0ED   
       LDX    $ED     
       INX            
       LDA    LFF50,X 
       JMP    LF0F2   
LF0ED: LDX    $D0     
       LDA    LFF50,X 
LF0F2: STA    $80     
       LDA    $D6     
       AND    #$0F    
       TAX            
       LDA    LFF50,X 
       STA    $82     
       LDA    $D6     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF50,X 
       STA    $84     
       LDA    $D7     
       AND    #$0F    
       TAX            
       LDA    LFF50,X 
       STA    $86     
       LDA    $D7     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF50,X 
       STA    $88     
       LDX    #$07    
       STA    WSYNC   
LF124: DEX            
       BNE    LF124   
       STA    RESP0   
       STA    RESP1   
       LDA    #$90    
       STA    HMP0    
       LDA    #$A0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E0     
       BMI    LF13F   
       LDA    #$40    
       STA    COLUBK  
LF13F: LDA    #$01    
       STA    NUSIZ0  
       LDA    #$03    
       STA    NUSIZ1  
       LDA    #$1C    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
LF14F: STA    WSYNC   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($86),Y 
       STA    GRP1    
       LDA    ($80),Y 
       TAX            
       LDA    ($82),Y 
       STA    $CF     
       LDA    ($84),Y 
       STY    $CE     
       LDY    $CF     
       STA    GRP0    
       STY    GRP1    
       STX    GRP1    
       LDY    $CE     
       DEY            
       BPL    LF14F   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    PF0     
       STA    CXCLR   
       LDA    $8F     
       CMP    #$08    
       BEQ    LF18A   
       LDX    #$FC    
       LDA    #$10    
       LDY    #$11    
       BNE    LF190   
LF18A: LDX    #$FE    
       LDA    #$00    
       LDY    #$01    
LF190: STX    $F6     
       STA    NUSIZ0  
       STY    CTRLPF  
       LDX    $D0     
       DEX            
       ORA    LFDD4,X 
       STA    NUSIZ1  
       LDA    #$FE    
       STA    $81     
       LDA    #$FF    
       STA    $8A     
       LDA    $8D     
       STA    HMP0    
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF1AF: DEY            
       BNE    LF1AF   
       STA    RESP0   
       STA    WSYNC   
       LDA    #$FE    
       STA    $89     
       LDA    $8C     
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAX            
       LDA    LFEF0,X 
       STA    $84     
       LDA    LFEF8,X 
       STA    REFP1   
       LDA    $8C     
       AND    #$01    
       STA    $CE     
       LDA    #$02    
       STA    $CF     
LF1D6: LDX    $CE     
       LDA    $90,X   
       STA    HMM0    
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF1E1: DEY            
       BNE    LF1E1   
       STA    RESM0   
       STA    WSYNC   
       LDA    $8A     
       AND    #$0F    
       STA    $8A     
       STA    PF1     
       LDA    $8F     
       CMP    #$09    
       BCS    LF200   
       LDX    $CF     
       LDA    $F3,X   
       BEQ    LF1FE   
       ORA    #$40    
LF1FE: STA    COLUBK  
LF200: LDX    $CE     
       LDA    $E0     
       CMP    $CF     
       BNE    LF20D   
       LDA    $D2     
       JMP    LF20F   
LF20D: LDA    #$32    
LF20F: STA    $85     
       LDA    $92,X   
       STA    HMM1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF21A: DEY            
       BNE    LF21A   
       STA    RESM1   
       STA    WSYNC   
       STY    PF1     
       STY    $8A     
       LDA    $A6,X   
       STA    $FA     
       LDA    $8F     
       CMP    #$05    
       BCS    LF23D   
       LDA    $D0     
       CMP    #$02    
       BEQ    LF241   
       CMP    #$03    
       BEQ    LF249   
       CMP    #$01    
       BNE    LF24F   
LF23D: LDA    #$7C    
       BNE    LF251   
LF241: LDA    $CF     
       CMP    #$01    
       BEQ    LF24F   
       BNE    LF23D   
LF249: LDA    $CF     
       CMP    #$01    
       BEQ    LF23D   
LF24F: LDA    $84     
LF251: STA    $88     
       LDA    $94,X   
       STA    HMBL    
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF25C: DEY            
       BNE    LF25C   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       STY    PF2     
       LDX    $CF     
       LDA    #$0F    
       AND    $D3,X   
       TAY            
LF26E: DEY            
       BPL    LF26E   
       STA    RESP1   
       STA    WSYNC   
       LDA    $CA,X   
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUPF  
       CPX    $DB     
       BEQ    LF285   
       CPX    $DC     
       BNE    LF2A7   
LF285: LDA    $8F     
       CMP    #$02    
       BNE    LF293   
       LDA    $E1     
       AND    #$08    
       BEQ    LF297   
       BNE    LF29B   
LF293: LDA    $E1     
       BEQ    LF29B   
LF297: LDA    #$3E    
       BNE    LF29D   
LF29B: LDA    #$00    
LF29D: CLC            
       ADC    $8E     
       SEC            
       SBC    LFDC8,X 
       JMP    LF2A9   
LF2A7: LDA    #$00    
LF2A9: STA    $80     
       LDY    #$31    
LF2AD: LDX    #$1F    
       TXS            
       LDX    $CE     
       LDA    ($80),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($88),Y 
       STA    GRP1    
       TYA            
       EOR    $FA     
       AND    $F6     
       PHP            
       TYA            
       EOR    $A4,X   
       AND    $F6     
       PHP            
       TYA            
       EOR    $A2,X   
       AND    $F6     
       PHP            
       CPY    $85     
       BNE    LF2D6   
       LDA    #$00    
       STA    COLUBK  
LF2D6: DEY            
       BPL    LF2AD   
       STA    WSYNC   
       STA    HMCLR   
       INY            
       STY    GRP0    
       STY    ENAM0   
       STY    ENAM1   
       STY    ENABL   
       DEC    $CF     
       BMI    LF2F4   
       LDA    $CE     
       CLC            
       ADC    #$06    
       STA    $CE     
       JMP    LF1D6   
LF2F4: LDA    $F8     
       STA    COLUPF  
       LDX    #$FF    
       STX    PF2     
       TXS            
       INX            
       STX    REFP1   
       STA    WSYNC   
       LDA    #$0F    
       STA    PF1     
       STA    WSYNC   
       LDA    #$FF    
       STA    PF1     
       STA    WSYNC   
       STA    PF0     
       LDA    $8C     
       AND    #$01    
       BEQ    LF319   
       JMP    LF3E0   
LF319: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$E0    
       STA    HMP0    
       LDA    #$F0    
       STA    HMP1    
       STA    WSYNC   
       LDY    #$07    
LF32B: DEY            
       BNE    LF32B   
       STA    RESP0   
       STA    RESP1   
       LDA    #$FC    
       STA    $81     
       STA    $83     
       STA    $85     
       STA    $87     
       STA    $89     
       STA    $8B     
       STA    WSYNC   
       LDA    $8F     
       CMP    #$04    
       BEQ    LF371   
       CMP    #$09    
       BCS    LF377   
       CMP    #$06    
       BEQ    LF35F   
       CMP    #$02    
       BCS    LF365   
       LDX    #$02    
LF356: LDA    $DD,X   
       CMP    #$04    
       BCS    LF365   
       DEX            
       BPL    LF356   
LF35F: LDA    #$78    
       LDY    #$DC    
       BNE    LF381   
LF365: LDA    $8C     
       AND    #$10    
       BEQ    LF3DD   
       LDA    #$3C    
       LDY    #$4A    
       BNE    LF381   
LF371: LDA    #$B4    
       LDY    #$1C    
       BNE    LF381   
LF377: LDA    $8C     
       AND    #$10    
       BEQ    LF3DD   
       LDA    #$00    
       LDY    #$48    
LF381: STA    WSYNC   
       STY    COLUP0  
       STY    COLUP1  
       STA    $8A     
       CLC            
       ADC    #$0A    
       STA    $88     
       ADC    #$0A    
       STA    $86     
       ADC    #$0A    
       STA    $84     
       ADC    #$0A    
       STA    $82     
       ADC    #$0A    
       STA    $80     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$0F    
       STA    VDELP0  
       STA    VDELP1  
       LDY    #$09    
LF3AA: STY    $CE     
       LDA    ($80),Y 
       STA    WSYNC   
       STA    $CF     
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($88),Y 
       STA    GRP1    
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($82),Y 
       TAX            
       LDA    ($84),Y 
       LDY    $CF     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $CE     
       DEY            
       BPL    LF3AA   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    VDELP0  
       STY    VDELP1  
LF3DD: JMP    LF45B   
LF3E0: LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$05    
       STA    WSYNC   
LF3EA: DEY            
       BNE    LF3EA   
       STA    RESP0   
       LDY    #$06    
LF3F1: DEY            
       BNE    LF3F1   
       STA    RESP1   
       LDA    #$FF    
       STA    $87     
       STA    $85     
       STA    $83     
       LDA    #$FF    
       STA    $81     
       LDX    $DF     
       LDA    LFFDA,X 
       STA    $86     
       LDX    $DE     
       LDA    LFFDA,X 
       STA    $84     
       LDX    $DD     
       LDA    LFFDA,X 
       STA    $82     
       LDX    $D1     
       LDA    LFF50,X 
       STA    $80     
       LDY    #$0E    
LF420: STA    WSYNC   
       LDA    #$4C    
       STA    COLUP0  
       LDA    ($86),Y 
       STA    GRP0    
       LDX    #$8C    
       LDA    #$1C    
       STA    $CE     
       STA    $CE     
       LDA    ($84),Y 
       STA    GRP0    
       STX    COLUP0  
       LDA    ($82),Y 
       STA    GRP1    
       LDA    $CE     
       STA    COLUP1  
       LDX    #$9C    
       CPY    #$08    
       BCS    LF44B   
       LDA    ($80),Y 
       JMP    LF44F   
LF44B: LDA    ($82),Y 
       LDA    #$00    
LF44F: STA    GRP1    
       STX    COLUP1  
       DEY            
       BPL    LF420   
       INY            
       STY    GRP0    
       STY    GRP1    
LF45B: LDA    INTIM   
       BNE    LF45B   
       LDA    #$17    
       STA    TIM64T  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    SWCHB   
       AND    #$08    
       BNE    LF481   
       LDA    $8F     
       CMP    #$09    
       BCS    LF481   
       JMP    LF550   
LF481: LDA    $8F     
       BEQ    LF488   
       JMP    LF54F   
LF488: LDX    #$02    
LF48A: LDA    $DD,X   
       BNE    LF4A4   
       LDA    $D8,X   
       BMI    LF4A4   
       LDA    $E2,X   
       BNE    LF4A4   
       DEC    $D8,X   
       LDA    #$01    
       STA    $DD,X   
       TXA            
       TAY            
       JSR    LFA99   
       JMP    LF4A7   
LF4A4: DEX            
       BPL    LF48A   
LF4A7: LDX    #$02    
LF4A9: LDA    $DD,X   
       BNE    LF4C8   
       LDA    $D8,X   
       BPL    LF4C8   
       LDA    $E2,X   
       BNE    LF4C8   
       DEX            
       BPL    LF4A9   
       LDA    #$64    
       STA    $E1     
       LDA    #$07    
       STA    $E6     
       LDA    #$0A    
       STA    $EA     
       LDA    #$01    
       STA    $8F     
LF4C8: LDA    $EF     
       BEQ    LF4F7   
       LDA    $8C     
       AND    #$01    
       LDY    $DB     
       CLC            
       ADC    LFDDD,Y 
       STA    $CE     
       BIT    CXPPMM  
       BPL    LF4FA   
       JSR    LFB06   
       LDA    $8E     
       STA    $F1     
       LDA    $DB     
       STA    $F2     
       LDA    #$02    
       STA    $8F     
       LDA    #$11    
       STA    $E6     
       LDA    #$0A    
       STA    $EA     
       LDA    #$64    
       STA    $E1     
LF4F7: JMP    LF54F   
LF4FA: LDY    $E1     
       BEQ    LF54F   
       BIT    CXP0FB  
       BVC    LF506   
       LDA    #$04    
       BNE    LF514   
LF506: BIT    CXM1P   
       BPL    LF50E   
       LDA    #$02    
       BNE    LF514   
LF50E: BIT    CXM0P   
       BVC    LF54F   
       LDA    #$00    
LF514: CLC            
       ADC    $CE     
       TAX            
       LDA    #$FF    
       STA    $A2,X   
       SED            
       LDA    $D6     
       CLC            
       ADC    #$01    
       STA    $D6     
       LDA    $D7     
       ADC    #$00    
       STA    $D7     
       CLD            
       BCC    LF533   
       LDA    #$99    
       STA    $D6     
       STA    $D7     
LF533: LDA    #$00    
       STA    $E6     
       LDA    #$07    
       STA    $EA     
       LDX    $DB     
       LDA    #$C8    
       STA    $E2,X   
       LDA    $DD,X   
       CMP    #$07    
       BCC    LF54D   
       LDA    #$05    
       STA    $DD,X   
       BNE    LF54F   
LF54D: DEC    $DD,X   
LF54F: NOP            
LF550: LDA    INTIM   
       BNE    LF550   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       LDA    SWCHB   
       AND    #$02    
       CMP    $EE     
       BEQ    LF579   
       STA    $EE     
       LDA    #$06    
       STA    $8F     
       LDA    $EE     
       BNE    LF579   
       LDA    $ED     
       CLC            
       ADC    #$01    
       AND    #$03    
       STA    $ED     
LF579: STA    WSYNC   
       LDA    #$82    
       STA    WSYNC   
       STA    VSYNC   
       LDX    #$02    
LF583: LDA    $E2,X   
       BEQ    LF589   
       DEC    $E2,X   
LF589: DEX            
       BPL    LF583   
       STA    WSYNC   
       LDX    #$02    
LF590: LDA    $F3,X   
       BEQ    LF596   
       DEC    $F3,X   
LF596: DEX            
       BPL    LF590   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$23    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF5C5   
       LDX    $8F     
       CPX    #$09    
       BCC    LF5BC   
       BEQ    LF5C5   
       LDX    $F9     
       BNE    LF5C5   
       LDX    $EA     
       BNE    LF5C5   
LF5BC: LDA    #$01    
       STA    $EF     
       INC    $8C     
       JMP    LF015   
LF5C5: AND    #$04    
       BNE    LF5E6   
       LDA    $8F     
       CMP    #$09    
       BCS    LF5E6   
       LDA    #$00    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDV0   
       STA    AUDV1   
       LDA    $8C     
       AND    #$E0    
       ORA    #$06    
       STA    $F7     
       STA    $F8     
       JMP    LFA17   
LF5E6: LDA    $8F     
       BEQ    LF5F7   
       CMP    #$08    
       BEQ    LF5F0   
       BNE    LF5F4   
LF5F0: LDA    $E1     
       BNE    LF5F7   
LF5F4: JMP    LF773   
LF5F7: LDA    $8C     
       AND    #$01    
       CLC            
       ADC    #$10    
       TAX            
LF5FF: LDA    $A2,X   
       BMI    LF66C   
       LDY    $B4,X   
       TYA            
       EOR    #$01    
       STA    $B4,X   
       LDA    $90,X   
       EOR    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $CF     
       LDA    $90,X   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $CF     
       STX    $84     
       LDX    LFB2E,Y 
       BEQ    LF62E   
       BPL    LF62B   
       SEC            
       SBC    $CD     
       JMP    LF62E   
LF62B: CLC            
       ADC    $CD     
LF62E: LDX    $84     
       CMP    #$48    
       BCC    LF673   
       CMP    #$EA    
       BCS    LF67A   
       EOR    #$07    
       STA    $CE     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $CF     
       LDA    $CE     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $CF     
       STA    $90,X   
       LDA    $A2,X   
       STX    $84     
       LDX    LFB4E,Y 
       BEQ    LF660   
       BPL    LF65D   
       SEC            
       SBC    $CD     
       JMP    LF660   
LF65D: CLC            
       ADC    $CD     
LF660: LDX    $84     
       CMP    #$00    
       BMI    LF681   
       CMP    #$32    
       BCS    LF688   
       STA    $A2,X   
LF66C: DEX            
       DEX            
       BPL    LF5FF   
       JMP    LF6FC   
LF673: LDY    #$AE    
       LDA    #$6E    
       JMP    LF68C   
LF67A: LDY    #$BE    
       LDA    #$7E    
       JMP    LF68C   
LF681: LDY    #$CE    
       LDA    #$8E    
       JMP    LF68C   
LF688: LDY    #$DE    
       LDA    #$9E    
LF68C: STA    $82     
       STY    $80     
       STX    $86     
       LDA    #$FB    
       STA    $81     
       LDA    #$FB    
       STA    $83     
       LDA    $B4,X   
       LSR            
       STA    $84     
       LDY    LFBEE,X 
       LDX    $C6,Y   
       DEX            
       STX    $C6,Y   
       BNE    LF6F4   
       LDX    $D0     
       DEX            
       LDA    LFFE3,X 
       STA.wy $00C6,Y 
       TYA            
       TAX            
       INC    $DD,X   
       LDA    $DD,X   
       CMP    #$07    
       BCS    LF6F4   
       STY    $CE     
       LDA    LFCF4,Y 
       TAY            
       LDX    #$05    
LF6C4: LDA.wy $00A2,Y 
       BMI    LF6CF   
       DEY            
       DEX            
       BPL    LF6C4   
       BMI    LF6F4   
LF6CF: LDA    #$1C    
       STA    $E6     
       LDA    #$02    
       STA    $EA     
       LDX    $CE     
       LDA    #$0F    
       STA    $F3,X   
       LDX    $86     
       STY    $85     
       LDY    $84     
       LDA    ($80),Y 
       LDY    $85     
       STA.wy $00B4,Y 
       LDA    $90,X   
       STA.wy $0090,Y 
       LDA    $A2,X   
       STA.wy $00A2,Y 
LF6F4: LDX    $86     
       LDY    $84     
       LDA    ($82),Y 
       STA    $B4,X   
LF6FC: LDA    $8F     
       BEQ    LF703   
       JMP    LF773   
LF703: LDA    $E1     
       BNE    LF773   
       LDY    $EF     
       BNE    LF71B   
       INY            
       STY    $87     
       LDA    $8C     
       AND    #$F0    
       TAX            
       LDA    LF000,X 
       EOR    #$FF    
       JMP    LF728   
LF71B: LDA    SWCHB   
       ROL            
       ROL            
       ROL            
       AND    #$01    
       STA    $87     
       LDA    SWCHA   
LF728: LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $86     
       BCC    LF747   
       LSR    $86     
       BCC    LF751   
LF735: LSR    $86     
       BCC    LF75E   
       LSR    $86     
       BCS    LF773   
       LDA    $8D     
       JSR    LFADF   
       SEC            
       ADC    $87     
       BNE    LF766   
LF747: LSR    $86     
       LDA    $8E     
       CLC            
       SBC    $87     
       JMP    LF756   
LF751: LDA    $8E     
       SEC            
       ADC    $87     
LF756: CMP    #$8A    
       BCS    LF735   
       STA    $8E     
       BCC    LF735   
LF75E: LDA    $8D     
       JSR    LFADF   
       CLC            
       SBC    $87     
LF766: CMP    #$45    
       BCC    LF773   
       CMP    #$E5    
       BCS    LF773   
       JSR    LFADA   
       STA    $8D     
LF773: LDA    $8F     
       BEQ    LF781   
       CMP    #$02    
       BEQ    LF781   
       LDX    #$03    
       LDY    #$03    
       BNE    LF79B   
LF781: LDX    #$02    
       LDY    #$02    
       LDA    $8E     
       CMP    #$27    
       BCC    LF79B   
       DEY            
       CMP    #$32    
       BCC    LF79B   
       DEX            
       CMP    #$59    
       BCC    LF79B   
       DEY            
       CMP    #$64    
       BCC    LF79B   
       DEX            
LF79B: STX    $DB     
       STY    $DC     
       LDA    $8F     
       BNE    LF7F5   
       LDA    $E1     
       BNE    LF7C6   
       BIT    INPT4   
       BMI    LF7C6   
       LDA    $EF     
       BNE    LF7B2   
       JMP    LF5BC   
LF7B2: CPX    $DC     
       BNE    LF7C6   
       LDA    #$15    
       STA    $E1     
       LDA    $EA     
       BNE    LF7C6   
       LDA    #$03    
       STA    $E6     
       LDA    #$04    
       STA    $EA     
LF7C6: LDX    #$02    
       LDA    #$00    
       STA    $EC     
LF7CC: LDA    $DD,X   
       CMP    #$08    
       BEQ    LF7DD   
       CMP    $EC     
       BCC    LF7D8   
       STA    $EC     
LF7D8: DEX            
       BPL    LF7CC   
       BMI    LF7F5   
LF7DD: LDA    #$03    
       STA    $8F     
       LDA    #$11    
       STA    $E6     
       LDA    #$0A    
       STA    $EA     
       LDA    #$64    
       STA    $E1     
       LDA    #$00    
       STA    $DF     
       STA    $DE     
       STA    $DD     
LF7F5: LDX    #$00    
       JSR    LFA2A   
       LDX    #$01    
       JSR    LFA2A   
       LDA    $8F     
       BNE    LF81A   
       LDA    #$06    
       STA    $F7     
       STA    $F8     
       LDA    $EB     
       BNE    LF822   
       LDA    #$32    
       STA    $E7     
       LDA    #$09    
       SEC            
       SBC    $EC     
       STA    $EB     
       BNE    LF822   
LF81A: CMP    #$01    
       BNE    LF851   
       LDA    $E1     
       BEQ    LF825   
LF822: JMP    LFA17   
LF825: LDA    $D1     
       CMP    #$09    
       BCS    LF82D   
       INC    $D1     
LF82D: LDA    $D0     
       CMP    #$09    
       BEQ    LF842   
       CMP    #$04    
       BNE    LF83D   
       LDA    $ED     
       CMP    #$03    
       BEQ    LF83F   
LF83D: INC    $D0     
LF83F: JMP    LF041   
LF842: LDA    #$04    
       STA    $8F     
       LDA    #$45    
       STA    $E6     
       LDA    #$0A    
       STA    $EA     
       JMP    LFA17   
LF851: CMP    #$02    
       BNE    LF8B7   
       JSR    LFAF2   
       LDA    $E1     
       TAX            
       AND    #$08    
       BEQ    LF866   
       TXA            
       AND    #$F0    
       ORA    #$02    
       BNE    LF86B   
LF866: TXA            
       AND    #$F0    
       ORA    #$0A    
LF86B: STA    $CA     
       STA    $CB     
       STA    $CC     
       LDA    $E1     
       BNE    LF822   
       LDA    #$03    
       STA    $F0     
LF879: LDY    $F2     
       LDX    LFDDD,Y 
       LDA    LFDE0,Y 
       SEC            
       SBC    $F1     
       JSR    LFA73   
       LDA    $8D     
       JSR    LFADF   
       CLC            
       ADC    #$04    
       JSR    LFADA   
       JSR    LFA66   
       JSR    LFA80   
       LDA    #$25    
       STA    $E1     
LF89C: LDA    #$08    
       STA    $8F     
       LDA    #$1E    
       STA    $E6     
       LDA    #$0A    
       STA    $EA     
       LDA    #$01    
       STA    $CD     
       LDA    #$0F    
       STA    $CA     
       STA    $CB     
       STA    $CC     
LF8B4: JMP    LFA17   
LF8B7: CMP    #$08    
       BNE    LF8E0   
       JSR    LFAF2   
       LDA    $E1     
       BNE    LF8B4   
       DEC    $F0     
       LDA    $F0     
       AND    #$03    
       BEQ    LF8D3   
       LDA    $F0     
       LSR            
       LSR            
       LSR            
       BCC    LF879   
       BCS    LF90C   
LF8D3: LDA    #$05    
       STA    $8F     
       LDA    #$64    
       STA    $E1     
       JSR    LFB06   
       BNE    LF8B4   
LF8E0: CMP    #$03    
       BEQ    LF8E7   
       JMP    LF95A   
LF8E7: JSR    LFAF2   
       LDA    $8C     
       AND    #$08    
       BEQ    LF8F8   
       LDA    $8C     
       AND    #$F0    
       ORA    #$02    
       BNE    LF8FE   
LF8F8: LDA    $8C     
       AND    #$F0    
       ORA    #$0A    
LF8FE: STA    $CA     
       STA    $CB     
       STA    $CC     
       LDA    $E1     
       BNE    LF8B4   
       LDA    #$07    
       STA    $F0     
LF90C: LDA    #$25    
       STA    $E1     
       LDY    #$19    
       LDX    #$00    
       LDA    $D5     
       JSR    LFADF   
       CLC            
       ADC    $E5     
       JSR    LFADA   
       JSR    LFA66   
       TYA            
       JSR    LFA73   
       JSR    LFA80   
       LDX    #$06    
       LDA    $D4     
       JSR    LFADF   
       CLC            
       ADC    $E5     
       JSR    LFADA   
       JSR    LFA66   
       TYA            
       JSR    LFA73   
       JSR    LFA80   
       LDX    #$0C    
       LDA    $D3     
       JSR    LFADF   
       CLC            
       ADC    $E5     
       JSR    LFADA   
       JSR    LFA66   
       TYA            
       JSR    LFA73   
       JSR    LFA80   
       JMP    LF89C   
LF95A: CMP    #$09    
       BNE    LF99A   
       JSR    LFAF2   
       LDA    $8C     
       AND    #$0F    
       BNE    LF997   
       DEC    $D2     
       BPL    LF997   
       LDA    #$31    
       STA    $D2     
       DEC    $E0     
       BPL    LF997   
       INC    $D2     
       INC    $E0     
       LDA    #$0A    
       STA    $8F     
       LDA    #$1E    
       STA    $E7     
       LDA    #$28    
       STA    $E6     
       LDA    #$0A    
       STA    $EA     
       STA    $EB     
       LDA    #$00    
       STA    $E8     
       STA    $E9     
       LDA    #$96    
       STA    $F9     
       LDA    #$40    
       STA    $F8     
LF997: JMP    LFA17   
LF99A: CMP    #$05    
       BNE    LF9CA   
       JSR    LFAF2   
       LDA    $E1     
       BNE    LF997   
       LDA    $EF     
       BNE    LF9AC   
LF9A9: JMP    LF041   
LF9AC: DEC    $D1     
       BNE    LF9A9   
       LDA    #$09    
       STA    $8F     
       LDA    #$4F    
       STA    $E6     
       LDA    #$12    
       STA    $EA     
       LDA    #$40    
       STA    $F7     
       LDA    #$02    
       STA    $E0     
       LDA    #$31    
       STA    $D2     
       BNE    LFA17   
LF9CA: CMP    #$0A    
       BNE    LFA09   
       JSR    LFAF2   
       LDA    $F9     
       BEQ    LF9F7   
       DEC    $F9     
       BEQ    LF9EB   
       LDA    $8C     
       AND    #$08    
       BEQ    LF9F7   
       LDA    #$00    
       STA    $E0     
       LDA    #$40    
       STA    $F7     
       STA    $F8     
       BNE    LFA17   
LF9EB: LDA    #$3B    
       STA    $E6     
       LDA    #$0A    
       STA    $EA     
       LDA    #$00    
       STA    $E8     
LF9F7: LDA    #$FF    
       STA    $E0     
       LDA    #$00    
       STA    $F7     
       STA    $F8     
       LDA    $F9     
       ORA    $EA     
       BEQ    LFA10   
       BNE    LFA17   
LFA09: CMP    #$06    
       BNE    LFA17   
       JSR    LFB06   
LFA10: BIT    INPT4   
       BMI    LFA17   
       JMP    LF5BC   
LFA17: LDA    $C9     
       ADC    $8E     
       ADC    $8C     
       STA    $C9     
       LDA    $E1     
       BEQ    LFA25   
       DEC    $E1     
LFA25: INC    $8C     
       JMP    LF0B8   
LFA2A: LDA    $E8,X   
       BEQ    LFA33   
       DEC    $E8,X   
       JMP    LFA65   
LFA33: LDA    $EA,X   
       BNE    LFA3F   
       LDA    #$00    
       STA    AUDC0,X 
       STA    AUDV0,X 
       BEQ    LFA65   
LFA3F: DEC    $EA,X   
       LDA    $E6,X   
       CLC            
       ADC    $EA,X   
       TAY            
       LDA    LFD61,Y 
       STA    AUDC0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$0F    
       BNE    LFA56   
       LDA    #$87    
LFA56: STA    $E8,X   
       INC    $E8,X   
       LDA    LFD00,Y 
       STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDV0,X 
LFA65: RTS            

LFA66: STA    $90,X   
       STA    $91,X   
       STA    $92,X   
       STA    $93,X   
       STA    $94,X   
       STA    $95,X   
       RTS            

LFA73: STA    $A2,X   
       STA    $A3,X   
       STA    $A4,X   
       STA    $A5,X   
       STA    $A6,X   
       STA    $A7,X   
       RTS            

LFA80: LDA    #$02    
       STA    $B4,X   
       LDA    #$08    
       STA    $B5,X   
       LDA    #$0E    
       STA    $B6,X   
       LDA    #$12    
       STA    $B7,X   
       LDA    #$18    
       STA    $B8,X   
       LDA    #$1E    
       STA    $B9,X   
       RTS            

LFA99: LDA    #$0F    
       STA.wy $00F3,Y 
       LDX    $D0     
       DEX            
       LDA    LFFE3,X 
       STA.wy $00C6,Y 
       LDX    LFDDD,Y 
       LDA    $C9     
       LSR            
       LSR            
       LSR            
       STA    $B4,X   
       AND    #$0E    
       BNE    LFAB9   
       LDA    #$02    
       STA    $B4,X   
LFAB9: LDA    #$19    
       STA    $A2,X   
       LDA.wy $00D3,Y 
       JSR    LFADF   
       CLC            
       ADC    $E5     
       JSR    LFADA   
       STA    $90,X   
       LDA    $C9     
       ADC    #$55    
       STA    $C9     
       LDA    #$1C    
       STA    $E6     
       LDA    #$02    
       STA    $EA     
       RTS            

LFADA: EOR    #$07    
       JMP    LFAE1   
LFADF: EOR    #$70    
LFAE1: STA    $CE     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $CF     
       LDA    $CE     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $CF     
       RTS            

LFAF2: LDA    $8C     
       LSR            
       LSR            
       TAY            
       AND    #$07    
       STA    $DF     
       EOR    #$07    
       STA    $DE     
       TYA            
       LSR            
       AND    #$07    
       STA    $DD     
       RTS            

LFB06: LDX    #$11    
       LDA    #$FF    
LFB0A: STA    $A2,X   
       DEX            
       BPL    LFB0A   
       RTS            

LFB10: .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
LFB2E: .byte $00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$01
       .byte $00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$FF
LFB4E: .byte $01,$01,$01,$01,$01,$01,$00,$01,$00,$00,$00,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$00,$FF,$00,$00,$00,$01,$01,$01,$01,$01
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$0E,$0C,$0A,$08,$06,$04,$02
       .byte $00,$1E,$1C,$1A,$18,$16,$14,$12,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$06,$04,$02,$00,$1E,$1C,$1A,$00,$00,$00,$00
       .byte $10,$0E,$0C,$0A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$16,$14,$12
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$0A,$08,$06,$04,$02,$04
       .byte $00,$1C,$1A,$18,$16,$14,$12,$14,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$04,$02,$00,$1E,$1C,$1A,$1C,$00,$00,$00,$00
       .byte $0E,$0C,$0A,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14,$12,$10
LFBEE: .byte $02,$02,$02,$02,$02,$02,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00
       .byte $00,$00,$D9,$89,$89,$89,$A9,$A9,$A9,$D9,$D9,$51,$E7,$E7,$86,$86
       .byte $E6,$E4,$04,$04,$E4,$C4,$31,$31,$31,$31,$31,$21,$21,$21,$21,$79
       .byte $E3,$B3,$93,$93,$93,$12,$32,$62,$C2,$83,$CF,$4F,$4A,$4A,$4A,$4A
       .byte $48,$48,$48,$C5,$91,$93,$93,$97,$97,$9D,$9D,$99,$99,$11,$07,$06
       .byte $06,$06,$06,$04,$04,$05,$07,$06,$8B,$CB,$4B,$4B,$4B,$4F,$C7,$85
       .byte $05,$07,$22,$26,$26,$2E,$2E,$3A,$3A,$32,$32,$22,$78,$7C,$4C,$4C
       .byte $5C,$40,$40,$44,$7C,$78,$F3,$F3,$C3,$C3,$F3,$F3,$82,$82,$F2,$E3
       .byte $60,$60,$40,$40,$40,$C0,$40,$C0,$80,$80,$02,$02,$02,$02,$02,$03
       .byte $03,$03,$03,$02,$27,$66,$66,$E6,$E6,$A4,$A4,$24,$24,$27,$9B,$9B
       .byte $9A,$9A,$9A,$9E,$92,$96,$94,$9C,$36,$22,$22,$22,$2A,$2A,$2A,$36
       .byte $36,$14,$59,$59,$59,$59,$59,$79,$39,$29,$29,$39,$C0,$C0,$80,$80
       .byte $80,$00,$00,$00,$00,$00,$B3,$B3,$B3,$B3,$B3,$F2,$72,$52,$52,$72
       .byte $9C,$9C,$18,$18,$18,$10,$10,$10,$10,$10,$0F,$0F,$0C,$0C,$0C,$08
       .byte $08,$08,$08,$0F,$39,$39,$31,$31,$31,$21,$21,$21,$21,$21,$E5,$E5
       .byte $85,$85,$E5,$E7,$03,$02,$E2,$C3,$9B,$9B,$9A,$9A,$9A,$9E,$92,$96
       .byte $94,$9C
LFCF0: .byte $01,$03,$05,$01
LFCF4: .byte $11,$0B,$05
LFCF7: .byte $4B,$4B,$4B,$4B,$4B,$50,$50,$59,$59
LFD00: .byte $E6,$E9,$F0,$B2,$B4,$B6,$B8,$E1,$E2,$E3,$E4,$E5,$E6,$E7,$E8,$E9
       .byte $EA,$13,$33,$33,$53,$53,$73,$73,$53,$33,$13,$D5,$F5,$F0,$13,$33
       .byte $53,$73,$93,$B3,$D3,$F3,$F3,$F3,$13,$33,$53,$73,$93,$B3,$D3,$F3
       .byte $F3,$F3,$B0,$00,$00,$00,$00,$00,$00,$00,$00,$E5,$E4,$E3,$E2,$00
       .byte $00,$E4,$E4,$00,$00,$EA,$E9,$E8,$E7,$E6,$E5,$E4,$E3,$E2,$E1,$E0
       .byte $E0,$E1,$E1,$E6,$E6,$E5,$E5,$E4,$E4,$E3,$E3,$E2,$E2,$E1,$E1,$E0
       .byte $E0
LFD61: .byte $0C,$0C,$0C,$0C,$0C,$0C,$0C,$14,$24,$34,$44,$54,$64,$74,$84,$94
       .byte $A4,$97,$97,$97,$97,$97,$97,$97,$97,$97,$97,$14,$14,$14,$48,$48
       .byte $48,$48,$48,$48,$48,$48,$48,$48,$E8,$E8,$E8,$E8,$E8,$E8,$E8,$E8
       .byte $E8,$E8,$3C,$0C,$4C,$8C,$EC,$EC,$EC,$EC,$EC,$F6,$F6,$F6,$F6,$E0
       .byte $F0,$FC,$FC,$F0,$E0,$E4,$D4,$C4,$B4,$A4,$94,$84,$74,$64,$54,$F3
       .byte $F3,$F3,$F3,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8
       .byte $F8,$59,$27,$00,$96,$64,$32
LFDC8: .byte $58,$26,$F4
LFDCB: .byte $01,$01,$01,$01,$02,$02,$03,$03,$04
LFDD4: .byte $00,$00,$00,$00,$00,$05,$05,$07,$07
LFDDD: .byte $0C,$06,$00
LFDE0: .byte $8F,$5D,$2B,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$66,$C3,$C3,$E7,$BD,$08,$10,$BD,$E7,$C3,$C3,$66,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$3C,$7E,$3C,$66,$F7,$EF,$66,$3C,$7E,$3C,$18,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$24,$42
       .byte $49,$99,$18,$09,$3C,$A5,$A5,$3C,$90,$18,$99,$92,$42,$24,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $10,$00,$24,$22,$40,$42,$18,$18,$42,$02,$44,$24,$00,$08,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFEF0: .byte $9D,$BE,$BE,$9D,$9D,$BE,$BE,$9D
LFEF8: .byte $00,$00,$FF,$00,$00,$FF,$00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C
       .byte $7E,$18,$18,$18,$18,$78,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C
       .byte $3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C
       .byte $18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C
       .byte $3C,$46,$06,$3E,$66,$66,$66,$3C
LFF50: .byte $00,$08,$10,$18,$20,$28,$30,$38,$40,$48,$00,$02,$00,$FE,$02,$00
       .byte $FE,$00,$18,$24,$42,$81,$81,$81,$81,$89,$89,$89,$89,$89,$4A,$2C
       .byte $18,$18,$24,$42,$81,$81,$81,$81,$89,$89,$8D,$8D,$8F,$4E,$2C,$18
       .byte $18,$24,$42,$81,$81,$81,$81,$8F,$8F,$8F,$8F,$8F,$4E,$2C,$18,$18
       .byte $24,$42,$83,$87,$87,$8F,$8F,$8F,$8F,$8F,$8F,$4E,$2C,$18,$18,$2C
       .byte $4E,$8F,$8F,$8F,$8F,$8F,$8F,$8F,$8F,$8F,$4E,$2C,$18,$18,$3C,$7E
       .byte $FF,$BF,$BF,$9F,$9F,$8F,$8F,$8F,$8F,$4E,$2C,$18,$18,$3C,$7E,$FF
       .byte $FF,$FF,$FF,$FF,$8F,$8F,$8F,$8F,$4E,$2C,$18,$18,$3C,$7E,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$EF,$EF,$CF,$4E,$2C,$18
LFFDA: .byte $62,$71,$80,$8F,$9E,$AD,$BC,$CB,$62
LFFE3: .byte $05,$05,$07,$07,$0A,$0A,$0F,$0F,$0F,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$00,$F0,$00,$F0,$00,$F0
