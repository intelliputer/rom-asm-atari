; Disassembly of roms/Submarine Commander.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Submarine Commander.bin
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
RESM0   =  $12
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
INPT4   =  $3C
INPT5   =  $3D
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
       LDY    #$40    
       STY    $80     
       LDA    #$A9    
       STA    $88     
       LDA    #$82    
       STA    $89     
       LDX    #$BC    
       STX    $81     
       INX            
       STX    $82     
       JSR    LFBFB   
LF022: LDX    #$05    
       STX    $96     
       STX    $E4     
       STX    $E5     
       INX            
       INX            
       STX    $E6     
       INX            
       STX    $C6     
       STX    $CD     
       LDX    #$3D    
       STX    $D3     
       LDX    #$13    
       STX    $D4     
       LDX    #$1A    
       STX    $D0     
       LDX    #$4A    
       STX    $CB     
       LDX    #$0F    
       STX    $C8     
       STX    $C7     
       STX    $CA     
       STX    $E7     
       STX    $E8     
       STX    $E9     
       STX    $DB     
       STX    $DC     
       STX    $DD     
       LDA    #$0A    
       STA    $98     
       LDA    #$C6    
       STA    $C5     
       LDX    #$96    
       STX    $CC     
       STX    $C9     
       LDX    #$FE    
       STX    $F6     
       STX    $F8     
       STX    $FA     
       INX            
       STX    $B6     
       LDA    #$71    
       STA    $DA     
       STA    $D8     
       LDA    #$F5    
       STA    $BE     
       STA    $BC     
       LDA    #$89    
       STA    $BD     
       LDA    #$8A    
       STA    $D9     
       LDA    LFE00   
       STA    $EA     
       STA    $EB     
       STA    $EC     
       LDX    #$01    
       STX    $DE     
       DEX            
       STX    $E0     
       LDA    #$1A    
       STA    $DF     
       LDA    #$E0    
       STA    $E1     
       STA    $E3     
       LDA    #$20    
       STA    $E2     
       INC    $86     
LF0A4: LDA    INTIM   
       BNE    LF0A4   
       LDA    #$FF    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       LDA    $BF     
       STA    HMBL    
       AND    #$0F    
       TAY            
       NOP            
LF0BB: DEY            
       BNE    LF0BB   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$2B    
       STA    TIM64T  
       LDA    #$00    
       STA    VSYNC   
       LDA    #$7F    
       STA    VBLANK  
       BIT    $80     
       BMI    LF0E2   
       JSR    LFBB5   
       LDX    $D3     
       BNE    LF130   
LF0E2: LDX    #$01    
LF0E4: LDA    $8E,X   
       BNE    LF0FC   
       LDA    $C5,X   
       BEQ    LF106   
       BIT    $85     
       BMI    LF104   
       BVS    LF104   
       LDA    $8B     
       AND    #$40    
       BEQ    LF100   
       CPX    #$01    
       BEQ    LF104   
LF0FC: LDA    $CD     
       BNE    LF106   
LF100: CPX    #$00    
       BNE    LF0FC   
LF104: LDA    #$C6    
LF106: STA    $C5,X   
       DEX            
       BPL    LF0E4   
       JSR    LFDEA   
       LDA    $CF     
       LDX    $D3     
       LDY    $D4     
       AND    #$30    
       CMP    #$10    
       BEQ    LF126   
       CMP    #$20    
       BNE    LF130   
       CPX    #$4F    
       BEQ    LF130   
       INX            
       INY            
       BNE    LF12C   
LF126: CPY    #$01    
       BEQ    LF130   
       DEX            
       DEY            
LF12C: STX    $D3     
       STY    $D4     
LF130: TXA            
       LDY    #$03    
LF133: CMP    LFF08,Y 
       BEQ    LF13F   
       BMI    LF13F   
       INY            
       CPY    #$07    
       BNE    LF133   
LF13F: STY    $CE     
       LDA    $86     
       AND    #$70    
       CLC            
       ROR            
       ROR            
       ROR            
       ROR            
       TAX            
       LDA    LFF31,X 
       TAY            
       AND    #$E0    
       BNE    LF156   
       JMP    LF190   
LF156: BPL    LF175   
       JSR    LFAFB   
       AND    #$1C    
       CMP    #$08    
       BEQ    LF16F   
       LDY    #$1A    
       STY    $D0     
       CMP    #$18    
       BNE    LF16C   
       JSR    LFB0C   
LF16C: JMP    LF1D6   
LF16F: JSR    LFB1B   
       JMP    LF1D6   
LF175: JSR    LFAFB   
       AND    #$1C    
       BEQ    LF18A   
       LDY    #$1A    
       STY    $D0     
       CMP    #$10    
       BNE    LF16C   
       JSR    LFB0C   
       JMP    LF1D6   
LF18A: JSR    LFB1B   
       JMP    LF1D6   
LF190: TYA            
       AND    #$0F    
       CMP    #$03    
       BEQ    LF1B3   
       LDA    $DE     
       AND    #$04    
       BNE    LF1C9   
       LDA    $D3     
       CLC            
       ADC    $D4     
       ROR            
       CMP    #$28    
       BPL    LF1AD   
       LDA    $DF     
       AND    #$04    
       BNE    LF1C9   
LF1AD: LDA    #$1A    
       STA    $D0     
       BNE    LF1D6   
LF1B3: LDA    $E0     
       AND    #$04    
       BNE    LF1C9   
       LDA    $D3     
       CLC            
       ADC    $D4     
       ROR            
       CMP    #$28    
       BMI    LF1D2   
       LDA    $DF     
       AND    #$04    
       BEQ    LF1D2   
LF1C9: JSR    LFBA5   
       LDA    #$34    
       STA    $D0     
       BNE    LF1D6   
LF1D2: LDA    #$1A    
       STA    $D0     
LF1D6: LDA    $85     
       AND    #$08    
       BEQ    LF1E0   
       LDA    #$00    
       STA    $D0     
LF1E0: LDA    $86     
       AND    #$03    
       BNE    LF21F   
       LDA    $86     
       AND    #$1C    
       CLC            
       ROR            
       TAX            
       LDY    LFE00,X 
       LDX    #$02    
LF1F2: LDA    $DE,X   
       AND    #$C0    
       CMP    #$C0    
       BNE    LF21A   
       LDA    $EA,X   
       CMP    LFE10   
       BMI    LF20D   
       CMP    LFE12   
       BEQ    LF214   
       CLC            
       ADC    #$08    
       STA    $EA,X   
       BNE    LF21C   
LF20D: LDA    LFE10   
       STA    $EA,X   
       BNE    LF21C   
LF214: LDA    $DE,X   
       EOR    #$40    
       STA    $DE,X   
LF21A: STY    $EA,X   
LF21C: DEX            
       BPL    LF1F2   
LF21F: LDX    #$02    
LF221: LDA    $DE,X   
       TAY            
       AND    #$04    
       BNE    LF22B   
       JMP    LF348   
LF22B: TYA            
       AND    #$F0    
       BEQ    LF2A4   
       CMP    #$80    
       BEQ    LF24E   
       CMP    #$A0    
       BEQ    LF2A0   
       LDA    $EA,X   
       CMP    #$80    
       BPL    LF242   
       LDA    #$02    
       BNE    LF244   
LF242: LDA    #$06    
LF244: STA    $F3     
       CLC            
       ADC    #$07    
       STA    $F4     
       JMP    LF348   
LF24E: LDA    #$05    
       STA    $F3     
       LDA    #$0C    
       STA    $F4     
       LDA    $86     
       ROR            
       BCS    LF25E   
       JMP    LF348   
LF25E: LDY    $92,X   
       DEY            
       STY    $92,X   
       LDY    $D5,X   
       INY            
       STY    $D5,X   
       CPY    #$0E    
       BEQ    LF26F   
       JMP    LF348   
LF26F: LDA    $DE,X   
       AND    #$03    
       TAY            
       LDA    LFFB1,Y 
       CPX    #$00    
       BNE    LF27E   
       LDA    LFFB4,Y 
LF27E: SED            
       CLC            
       ADC    $89     
       STA    $89     
       LDA    #$00    
       ADC    $88     
       STA    $88     
       CLD            
       LDA    $86     
       AND    #$20    
       BEQ    LF295   
       LDA    #$04    
       BNE    LF297   
LF295: LDA    #$0C    
LF297: STA    $DE,X   
       LDA    #$00    
       STA    $D5,X   
       JMP    LF34E   
LF2A0: LDY    $D8,X   
       BNE    LF2B7   
LF2A4: LDA    $DE,X   
       AND    #$03    
       EOR    #$02    
       BNE    LF2B0   
       LDA    #$01    
       STA    $F3     
LF2B0: LDA    $D8,X   
       CPX    #$00    
       BNE    LF2C0   
       TAY            
LF2B7: LDA    $86     
       ROR            
       BCC    LF2BF   
       TYA            
       BNE    LF30E   
LF2BF: TYA            
LF2C0: CLC            
       ADC    $E1,X   
       BIT    $80     
       BPL    LF30E   
       TAY            
       LDA    $E1,X   
       BMI    LF2D5   
LF2CC: DEC    $BC,X   
       CLC            
       ADC    #$F0    
       BNE    LF2CC   
       BEQ    LF2DC   
LF2D5: INC    $BC,X   
       CLC            
       ADC    #$10    
       BNE    LF2D5   
LF2DC: LDA    $85     
       AND    #$30    
       BEQ    LF2EC   
       CMP    #$30    
       BEQ    LF2F1   
       LDA    $86     
       AND    #$03    
       BNE    LF2F1   
LF2EC: LDA    $86     
       ROR            
       BCC    LF2F4   
LF2F1: TYA            
       BNE    LF30E   
LF2F4: JSR    LFDEA   
       BIT    $CF     
       BPL    LF308   
       BVC    LF300   
       TYA            
       BNE    LF30E   
LF300: TYA            
       INC    $BC,X   
       CLC            
       ADC    #$F0    
       BNE    LF30E   
LF308: TYA            
       DEC    $BC,X   
       CLC            
       ADC    #$10    
LF30E: LDY    $E1,X   
       BPL    LF32F   
       LDY    $D8,X   
       BMI    LF31A   
       STA    $D8,X   
       BNE    LF348   
LF31A: TAY            
       BPL    LF321   
       STA    $D8,X   
       BNE    LF348   
LF321: CLC            
       ADC    #$F1    
       TAY            
       AND    #$0F    
       CMP    #$0B    
       BEQ    LF34E   
       STY    $D8,X   
       BNE    LF348   
LF32F: LDY    $D8,X   
       BPL    LF337   
       STA    $D8,X   
       BNE    LF348   
LF337: TAY            
       BMI    LF33E   
       STA    $D8,X   
       BNE    LF348   
LF33E: SEC            
       SBC    #$F1    
       TAY            
       AND    #$0F    
       BEQ    LF34E   
       STY    $D8,X   
LF348: DEX            
       BMI    LF3A7   
       JMP    LF221   
LF34E: LDA    $DE,X   
       EOR    #$1C    
       AND    #$1C    
       CMP    #$10    
       STA    $DE,X   
       BEQ    LF362   
       LDA    #$89    
       STA    $BC,X   
       LDA    #$8A    
       BNE    LF368   
LF362: LDA    #$F5    
       STA    $BC,X   
       LDA    #$71    
LF368: STA    $D8,X   
       LDA    $86     
       EOR    $8D     
       AND    #$03    
       BEQ    LF374   
       EOR    #$03    
LF374: TAY            
       ORA    $DE,X   
       STA    $DE,X   
       LDA    #$00    
       STA    $92,X   
       LDA    #$0E    
       STA    $E7,X   
       LDA    LFF22,Y 
       CPX    #$00    
       BNE    LF38B   
       LDA    LFF25,Y 
LF38B: STA    $E4,X   
       LDA    LFF39,Y 
       CPX    #$02    
       BNE    LF397   
       CLC            
       ADC    #$F0    
LF397: TAY            
       LDA    $DE,X   
       AND    #$08    
       BEQ    LF3A3   
       DEY            
       TYA            
       EOR    #$FF    
       TAY            
LF3A3: STY    $E1,X   
       BNE    LF348   
LF3A7: LDX    #$02    
LF3A9: LDA    $DE,X   
       AND    #$03    
       CLC            
       ROL            
       ROL            
       TAY            
       LDA    LFE14,Y 
       STA    $ED,X   
       LDA    LFE16,Y 
       STA    $F0,X   
       DEX            
       BPL    LF3A9   
       BIT    $80     
       BMI    LF3CF   
       BVS    LF3CF   
       LDA    #$0F    
       STA    $CA     
       AND    $80     
       CLC            
       ADC    #$01    
       STA    $88     
LF3CF: LDA    $88     
       STA    $83     
       LDA    $89     
       STA    $84     
       JSR    LFB6D   
       LDA    $88     
       BNE    LF3E2   
       LDX    #$0D    
       BNE    LF3E8   
LF3E2: AND    #$F0    
       BNE    LF3ED   
       LDX    #$06    
LF3E8: STA    $99,X   
       DEX            
       BPL    LF3E8   
LF3ED: LDA    $80     
       AND    #$F0    
       CMP    #$40    
       BNE    LF3FD   
       LDA    $81     
       STA    $8C     
       LDA    $82     
       STA    $8D     
LF3FD: LDA    $8C     
       STA    $83     
       LDA    $8D     
       STA    $84     
       LDX    #$01    
LF407: LDY    #$0F    
       STY    $DB,X   
       LDA    $92,X   
       SEC            
       SBC    $D3     
       BMI    LF422   
       CMP    #$10    
       BMI    LF41A   
       LDA    #$00    
       BEQ    LF420   
LF41A: STA    $CF     
       TYA            
       SEC            
       SBC    $CF     
LF420: STA    $DB,X   
LF422: DEX            
       BPL    LF407   
       LDX    #$02    
LF427: LDA    $C0,X   
       AND    #$F0    
       BEQ    LF432   
       DEX            
       BPL    LF427   
       BMI    LF453   
LF432: LDA    $86     
       AND    #$03    
       BNE    LF46C   
       LDY    $C3     
       INY            
       CPY    #$08    
       BEQ    LF448   
       LDA    LFFB7,Y 
       STA    $C0,X   
       STY    $C3     
       BNE    LF46C   
LF448: LDA    LFF3C,X 
       ORA    #$80    
       STA    $C0,X   
       LDY    #$00    
       STY    $C3     
LF453: LDX    #$02    
LF455: LDA    $BC,X   
       SEC            
       SBC    $B9,X   
       BEQ    LF469   
       CMP    #$01    
       BEQ    LF469   
       CMP    #$FF    
       BEQ    LF469   
       DEX            
       BPL    LF455   
       BMI    LF46C   
LF469: JSR    LFC82   
LF46C: LDA    $86     
       ROR            
       BCC    LF4C8   
       LDX    #$02    
LF473: LDY    $C0,X   
       BPL    LF4C5   
       DEY            
       CPY    #$80    
       BEQ    LF480   
       STY    $C0,X   
       BNE    LF4C5   
LF480: LDA    #$10    
       STA    $C0,X   
       LDA    $B9,X   
       CMP    #$3D    
       BMI    LF4C5   
       CMP    #$5B    
       BPL    LF4C5   
       LDA    $80     
       AND    #$20    
       BEQ    LF49B   
       BIT    SWCHB   
       BPL    LF4A3   
       BMI    LF4A0   
LF49B: BIT    SWCHB   
       BVC    LF4A3   
LF4A0: JSR    LFD00   
LF4A3: LDA    $8C     
       SEC            
       SED            
       SBC    #$03    
       STA    $8C     
       CLD            
       BCS    LF4B4   
       JSR    LFC25   
       JMP    LF4BB   
LF4B4: LDA    $86     
       AND    #$77    
       JSR    LFC12   
LF4BB: LDA    $8C     
       ORA    $8D     
       BEQ    LF4CB   
       LDY    #$0F    
       STY    $97     
LF4C5: DEX            
       BPL    LF473   
LF4C8: JSR    LFCAA   
LF4CB: LDX    #$02    
LF4CD: LDY    #$0E    
       LDA    $86     
       AND    #$02    
       BEQ    LF4DD   
       LDA    $DE,X   
       AND    #$E0    
       BEQ    LF4DD   
       LDY    #$00    
LF4DD: STY    $E7,X   
       DEX            
       BPL    LF4CD   
       INX            
       BIT    $80     
       BMI    LF4EB   
       STX    $F3     
       STX    $F4     
LF4EB: INX            
LF4EC: LDY    $F3,X   
       CPY    #$04    
       BNE    LF507   
       CPX    #$01    
       BEQ    LF4FA   
       LDA    #$0C    
       BNE    LF4FC   
LF4FA: LDA    #$08    
LF4FC: STA    AUDC0,X 
       LDA    $97     
       STA    AUDV0,X 
       LDA    $86     
       JMP    LF521   
LF507: LDA    LFFCD,Y 
       STA    AUDC0,X 
       ROR            
       ROR            
       ROR            
       ROR            
       STA    AUDV0,X 
       LDA    LFFBF,Y 
       CPY    #$05    
       BNE    LF51B   
       EOR    $86     
LF51B: CPY    #$0C    
       BNE    LF521   
       EOR    $86     
LF521: STA    AUDF0,X 
       LDA    #$00    
       STA    $F3,X   
       DEX            
       BEQ    LF4EC   
LF52A: LDA    INTIM   
       BNE    LF52A   
       STA    WSYNC   
       STA    VBLANK  
       LDX    $87     
       STX    COLUBK  
       LDA    $CA     
       BIT    $80     
       BVS    LF541   
       LDY    #$00    
       BEQ    LF543   
LF541: LDY    #$01    
LF543: JSR    LFD79   
       STA    WSYNC   
       LDX    $CD     
       STX    COLUPF  
       LDA    #$25    
       STA    CTRLPF  
       LDX    #$00    
       STX    PF0     
       DEX            
       STX    PF1     
       STX    PF2     
       STA    WSYNC   
       JSR    LFB6D   
       JSR    LFDC2   
       LDY    #$02    
       LDA    $86     
       ROR            
       BCC    LF574   
       LDY    $97     
       CPY    #$02    
       BEQ    LF574   
       LDX    #$04    
       STX    $F3     
       STX    $F4     
LF574: JSR    LFFE7   
       LDA    $CD     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$0F    
       STA    PF2     
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $98     
       STA    GRP1    
       STA    GRP0    
       LDY    #$04    
       JSR    LFFE7   
       STY    GRP0    
       STY    GRP1    
       DEY            
       STY    PF2     
       LDX    $D3     
       STA    WSYNC   
       CPX    #$37    
       BMI    LF5A5   
       LDX    #$00    
       BEQ    LF5A7   
LF5A5: LDX    #$01    
LF5A7: LDA    $DE,X   
       STA    REFP0   
       STA    REFP1   
       LDA    $D1     
       AND    #$F0    
       ORA    $E4,X   
       STA    NUSIZ0  
       LDA    $D2     
       AND    #$F0    
       ORA    $E4,X   
       STA    NUSIZ1  
       LDA    $92,X   
       STA    $FC     
       LDA    $DB,X   
       STA    $FE     
       STA    WSYNC   
       LDA    $D8,X   
       STA    HMP0    
       STA    HMP1    
       AND    #$0F    
       TAY            
       NOP            
LF5D1: DEY            
       BNE    LF5D1   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $EA,X   
       STA    $F5     
       LDA    $ED,X   
       STA    $F7     
       LDA    $F0,X   
       STA    $F9     
       LDA    #$50    
       STA    HMP1    
       LDA    #$C0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D5,X   
       STA    $FD     
       LDA    $C0,X   
       STA    $C4     
       LDA    $E7,X   
       STA    COLUP0  
       LDA    #$70    
       STA    HMP0    
       STA    HMP1    
       LDX    $D3     
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDY    #$FF    
       STY    PF0     
       INY            
       STY    PF1     
       STY    PF2     
       LDY    $CE     
       LDA    LFF00,Y 
LF620: STA    WSYNC   
       STA    COLUBK  
       DEY            
       STY    $CE     
LF627: LDY    $FE     
       LDA    ($F7),Y 
       STA    GRP1    
       LDA    ($F9),Y 
       STA    COLUP1  
       CPX    $8E     
       BNE    LF639   
       LDA    #$02    
       BNE    LF63F   
LF639: CPX    $90     
       BNE    LF641   
       LDA    #$00    
LF63F: STA    ENAM0   
LF641: LDA    #$00    
       CPY    $C4     
       BNE    LF649   
       LDA    #$02    
LF649: STA    ENABL   
       LDA    #$00    
       CPY    #$08    
       BPL    LF653   
       LDA    ($F5),Y 
LF653: STA    WSYNC   
       STA    GRP0    
       CPX    $8F     
       BNE    LF65F   
       LDA    #$02    
       BNE    LF665   
LF65F: CPX    $91     
       BNE    LF667   
       LDA    #$00    
LF665: STA    ENAM1   
LF667: CPX    $FC     
       BPL    LF672   
       DEY            
       CPY    $FD     
       BPL    LF672   
       LDY    #$00    
LF672: STY    $FE     
       DEX            
       CPX    $D4     
       BEQ    LF696   
       CPX    #$36    
       BEQ    LF699   
       CPX    #$1B    
       BEQ    LF6A9   
       TXA            
       LDY    $CE     
       BMI    LF691   
       CMP    LFF08,Y 
       BNE    LF691   
       LDA    LFF00,Y 
       JMP    LF620   
LF691: STA    WSYNC   
       JMP    LF627   
LF696: JMP    LF76D   
LF699: LDA    $E8     
       STA    COLUP0  
       LDA    $EB     
       STA    $F5     
       LDA    $EE     
       STA    $F7     
       LDA    $D9     
       BNE    LF6B7   
LF6A9: LDA    $E9     
       STA    COLUP0  
       LDA    $EC     
       STA    $F5     
       LDA    $EF     
       STA    $F7     
       LDA    $DA     
LF6B7: STA    WSYNC   
       STA    HMP0    
       STA    HMP1    
       AND    #$0F    
       TAY            
       NOP            
       NOP            
       NOP            
LF6C3: DEY            
       BNE    LF6C3   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       CPX    $8E     
       BNE    LF6D6   
       LDA    #$02    
       BNE    LF6DC   
LF6D6: CPX    $90     
       BNE    LF6DE   
       LDA    #$00    
LF6DC: STA    ENAM0   
LF6DE: CPX    $8F     
       BNE    LF6E6   
       LDA    #$02    
       BNE    LF6EC   
LF6E6: CPX    $91     
       BNE    LF6EE   
       LDA    #$00    
LF6EC: STA    ENAM1   
LF6EE: DEX            
       CPX    $D4     
       BEQ    LF696   
       LDA    #$50    
       STA    HMP1    
       LDA    #$C0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       CPX    $8E     
       BNE    LF707   
       LDA    #$02    
       BNE    LF70D   
LF707: CPX    $90     
       BNE    LF70F   
       LDA    #$00    
LF70D: STA    ENAM0   
LF70F: STX    $CF     
       CPX    #$35    
       BNE    LF719   
       LDX    #$01    
       BNE    LF71B   
LF719: LDX    #$02    
LF71B: LDA    $D1     
       AND    $F0     
       ORA    $E4,X   
       STA    NUSIZ0  
       LDA    $D2     
       AND    #$F0    
       ORA    $E4,X   
       STA    NUSIZ1  
       LDA    $DE,X   
       STA    REFP0   
       STA    REFP1   
       LDA    #$70    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F0,X   
       STA    $F9     
       LDA    $92,X   
       STA    $FC     
       LDA    $D5,X   
       STA    $FD     
       LDA    $DB,X   
       STA    $FE     
       LDA    $C0,X   
       STA    $C4     
       LDX    $CF     
       CPX    $8F     
       BNE    LF759   
       LDA    #$02    
       BNE    LF75F   
LF759: CPX    $91     
       BNE    LF761   
       LDA    #$00    
LF75F: STA    ENAM1   
LF761: DEX            
       CPX    $D4     
       BEQ    LF76D   
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF627   
LF76D: LDA    #$00    
       TAX            
       STA    WSYNC   
       LDY    $87     
       STY    COLUBK  
       STX    PF0     
       STA    GRP0    
       STA    GRP1    
       DEX            
       STX    PF1     
       STX    PF2     
       STA    ENAM1   
       STA    ENAM0   
       STA    ENABL   
       STA    HMCLR   
       LDA    $86     
       ROR            
       BCC    LF795   
       LDA    #$10    
       SBC    $97     
       TAY            
       BNE    LF797   
LF795: LDY    #$0E    
LF797: JSR    LFC53   
       LDA    #$0F    
       STA    PF2     
       LDA    $CB     
       LDY    #$01    
       JSR    LFD79   
       STA    WSYNC   
       LDX    #$FF    
       STX    PF2     
       LDY    #$02    
       CPY    $97     
       BEQ    LF7B3   
       DEC    $97     
LF7B3: LDY    #$06    
       JSR    LFFE7   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDX    #$20    
       STX    CTRLPF  
       LDX    #$05    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STX    COLUPF  
       STA    WSYNC   
       LDA    $85     
       AND    #$08    
       BNE    LF7DC   
       LDA    $86     
       AND    #$70    
       CLC            
       ROR            
       ROR            
       ROR            
       ROR            
       TAX            
LF7DC: LDA    LFF31,X 
       LDX    #$06    
       STA    WSYNC   
LF7E3: DEX            
       BNE    LF7E3   
       STA    RESP0   
       STA    RESBL   
       STA    HMBL    
       LDX    #$03    
LF7EE: DEX            
       BNE    LF7EE   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       AND    #$0F    
       STA    $FB     
       LDA    $C8     
       STA    COLUP0  
       LDA    $C9     
       STA    COLUP1  
       LDA    $D0     
       STA    COLUPF  
       STA    WSYNC   
       STA    HMCLR   
       LDA    $CC     
       STA    COLUBK  
       LDY    #$02    
       JSR    LFFE7   
       LDX    #$08    
LF816: STA    WSYNC   
       LDA    LFF28,X 
       STA    GRP0    
       TXA            
       LSR            
       BCC    LF82D   
       CPX    $FB     
       BEQ    LF829   
       LDA    #$00    
       BEQ    LF82B   
LF829: LDA    #$02    
LF82B: STA    ENABL   
LF82D: LDA    $85     
       AND    #$04    
       BNE    LF83E   
       LDA    $86     
       AND    #$10    
       BEQ    LF83E   
       LDA    LFF10,X 
       BNE    LF841   
LF83E: LDA    LFF19,X 
LF841: AND    $95     
       STA    GRP1    
       STA    WSYNC   
       DEX            
       BPL    LF816   
       LDY    #$02    
       JSR    LFFE7   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$24    
       STA    TIM64T  
       BIT    $80     
       BMI    LF85F   
       JMP    LFA77   
LF85F: BIT    CXM0P   
       BPL    LF881   
       LDY    #$00    
LF865: LDA.wy $008E,Y 
       CMP    #$38    
       BMI    LF870   
       LDX    #$00    
       BEQ    LF87A   
LF870: CMP    #$22    
       BMI    LF878   
       LDX    #$01    
       BNE    LF87A   
LF878: LDX    #$02    
LF87A: JSR    LFB45   
       CPY    #$01    
       BEQ    LF889   
LF881: BIT    CXM1P   
       BVC    LF889   
       LDY    #$01    
       BNE    LF865   
LF889: STA    CXCLR   
       LDY    #$01    
LF88D: LDA.wy $008E,Y 
       BEQ    LF8DB   
       CMP    $D4     
       BPL    LF89A   
       LDX    #$02    
       BNE    LF8A0   
LF89A: CMP    $D3     
       BMI    LF8DB   
       LDX    #$00    
LF8A0: LDA    $DE,X   
       AND    #$04    
       BEQ    LF8DB   
       LDA    $92,X   
       CMP.wy $008E,Y 
       BMI    LF8DB   
       SEC            
       SBC    #$0A    
       CMP.wy $008E,Y 
       BPL    LF8DB   
       LDA    $E4,X   
       BNE    LF8BD   
       LDA    #$08    
       BNE    LF8C7   
LF8BD: CMP    #$05    
       BNE    LF8C5   
       LDA    #$10    
       BNE    LF8C7   
LF8C5: LDA    #$20    
LF8C7: STA    $CF     
       LDA    $BC,X   
       CMP.wy $00B7,Y 
       BPL    LF8DB   
       CLC            
       ADC    $CF     
       CMP.wy $00B7,Y 
       BMI    LF8DB   
       JSR    LFB45   
LF8DB: DEY            
       BEQ    LF88D   
       LDX    #$00    
LF8E0: LDA    $C5,X   
       BNE    LF8E7   
       JMP    LF9BA   
LF8E7: LDA    $8E,X   
       BNE    LF950   
       BIT    $85     
       BMI    LF905   
       BVS    LF905   
       LDA    $8B     
       AND    #$40    
       BEQ    LF8FE   
       CPX    #$01    
       BEQ    LF905   
       JMP    LF9BA   
LF8FE: CPX    #$00    
       BEQ    LF905   
       JMP    LF9BA   
LF905: JSR    LFFDB   
       EOR    $8B     
       AND    $8B     
       BMI    LF911   
       JMP    LF9BA   
LF911: LDA    #$03    
       JSR    LFC12   
       LDA    $8C     
       ORA    $8D     
       BNE    LF91F   
       JMP    LFA77   
LF91F: INC    $8A     
       LDY    #$08    
       LDA    #$3D    
       CPX    #$01    
       BNE    LF92D   
       LDY    #$0A    
       LDA    #$5B    
LF92D: STA    $B7,X   
       LDA    #$10    
       STA    WSYNC   
LF933: DEY            
       BNE    LF933   
       STA    RESM0,X 
       STA    HMM0,X  
       LDA    #$07    
       STA    $8E,X   
       LDA    #$01    
       STA    $90,X   
       LDA    $D1,X   
       AND    #$0F    
       ORA    #$10    
       STA    $D1,X   
       LDA    $8B     
       ORA    #$20    
       STA    $8B     
LF950: LDY    $8E,X   
       INY            
       STY    $8E,X   
       LDY    $90,X   
       INY            
       CPY    #$05    
       BPL    LF960   
       LDA    #$03    
       STA    $F3     
LF960: CPY    #$0A    
       BPL    LF968   
       LDA    #$07    
       STA    $F3     
LF968: CPY    #$0A    
       BNE    LF97F   
       INY            
       CPX    #$01    
       BNE    LF979   
       DEC    $B7,X   
       DEC    $B7,X   
       LDA    #$20    
       BNE    LF998   
LF979: INC    $B7,X   
       INC    $B7,X   
       LDA    #$E0    
LF97F: CPY    #$1B    
       BNE    LF99C   
       INY            
       LDA    $D1,X   
       AND    #$0F    
       STA    $D1,X   
       CPX    #$01    
       BNE    LF994   
       DEC    $B7,X   
       LDA    #$10    
       BNE    LF998   
LF994: INC    $B7,X   
       LDA    #$F0    
LF998: STA    HMM0,X  
       BNE    LF9B8   
LF99C: CPY    #$2C    
       BNE    LF9B0   
       CPX    #$01    
       BNE    LF9AA   
       DEC    $B7,X   
       LDA    #$10    
       BNE    LF998   
LF9AA: INC    $B7,X   
       LDA    #$F0    
       BNE    LF998   
LF9B0: CPY    #$3D    
       BNE    LF9B8   
       LDY    #$00    
       STY    $8E,X   
LF9B8: STY    $90,X   
LF9BA: INX            
       CPX    #$02    
       BEQ    LF9C2   
       JMP    LF8E0   
LF9C2: STA    WSYNC   
       STA    HMOVE   
       LDA    $8B     
       AND    #$20    
       BEQ    LF9D2   
       LDA    $8B     
       EOR    #$60    
       STA    $8B     
LF9D2: LDA    $8B     
       AND    #$7F    
       STA    $8B     
       JSR    LFFDB   
       AND    #$80    
       ORA    $8B     
       STA    $8B     
       STA    HMCLR   
       LDA    $85     
       AND    #$30    
       BEQ    LF9F3   
       CMP    #$30    
       BEQ    LFA38   
       LDA    $86     
       AND    #$03    
       BNE    LF9F8   
LF9F3: LDA    $86     
       ROR            
       BCC    LF9FB   
LF9F8: JMP    LFA77   
LF9FB: JSR    LFDEA   
       BIT    $CF     
       BPL    LFA1D   
       BVS    LFA38   
       LDX    #$04    
LFA06: INC    $B7,X   
       DEX            
       BPL    LFA06   
       INC    $8A     
       INC    $8A     
       LDA    $98     
       CLC            
       ROL            
       BCC    LFA17   
       ORA    #$01    
LFA17: STA    $98     
       LDA    #$F0    
       BNE    LFA34   
LFA1D: LDX    #$04    
LFA1F: DEC    $B7,X   
       DEX            
       BPL    LFA1F   
       INC    $8A     
       INC    $8A     
       LDA    $98     
       CLC            
       ROR            
       BCC    LFA30   
       ORA    #$80    
LFA30: STA    $98     
       LDA    #$10    
LFA34: STA    HMM0    
       STA    HMM1    
LFA38: LDA    $86     
       AND    #$3F    
       BNE    LFA77   
       LDA    $C7     
       BNE    LFA48   
       STA    $96     
       LDA    #$03    
       BNE    LFA70   
LFA48: LDY    $96     
       LDX    $8A     
       CPX    #$20    
       BPL    LFA5B   
       CPX    #$10    
       BPL    LFA60   
       CPY    #$05    
       BEQ    LFA60   
       DEY            
       BNE    LFA60   
LFA5B: CPY    #$14    
       BEQ    LFA60   
       INY            
LFA60: STY    $96     
       TYA            
       CMP    #$0A    
       BMI    LFA70   
       CLC            
       ADC    #$06    
       CMP    #$1A    
       BNE    LFA70   
       LDA    #$20    
LFA70: JSR    LFC12   
       LDX    #$00    
       STX    $8A     
LFA77: INC    $86     
       LDA    $80     
       AND    #$E0    
       CMP    #$40    
       BNE    LFA9F   
       LDA    $8B     
       AND    #$03    
       BEQ    LFA9B   
       LDA    #$04    
       STA    AUDC0   
       LDA    $86     
       AND    #$1F    
       STA    AUDF0   
       BNE    LFA95   
       DEC    $8B     
LFA95: LDA    #$0F    
       STA    AUDV0   
       BNE    LFA9F   
LFA9B: BIT    INPT4   
       BPL    LFAA5   
LFA9F: LDA    SWCHB   
       ROR            
       BCS    LFAB9   
LFAA5: LDA    #$00    
       STA    $81     
       STA    $82     
       LDA    $80     
       ORA    #$C0    
       AND    #$DF    
LFAB1: STA    $80     
       JSR    LFBEE   
       JMP    LF022   
LFAB9: LDA    $86     
       BNE    LFACB   
       LDA    $80     
       TAY            
       AND    #$A0    
       CMP    #$20    
       BNE    LFAF8   
       TYA            
       ORA    #$A0    
       BNE    LFAB1   
LFACB: LDA    SWCHB   
       AND    #$02    
       BNE    LFAF2   
       LDA    $80     
       AND    #$10    
       BEQ    LFADE   
       LDA    $86     
       AND    #$1F    
       BNE    LFAF8   
LFADE: JSR    LFBEE   
       LDA    $80     
       AND    #$1F    
       CMP    $80     
       BNE    LFAEC   
       CLC            
       ADC    #$01    
LFAEC: ORA    #$10    
       AND    #$F7    
       BNE    LFAF6   
LFAF2: LDA    $80     
       AND    #$EF    
LFAF6: STA    $80     
LFAF8: JMP    LF0A4   
LFAFB: TYA            
       AND    #$0F    
       SEC            
       SBC    #$07    
       EOR    #$FF    
       CLC            
       ADC    #$01    
       CLC            
       ROR            
       TAX            
       LDA    $DE,X   
       RTS            

LFB0C: LDA    $86     
       AND    #$0F    
       CMP    #$0F    
       BNE    LFB1A   
       LDA    $DE,X   
       EOR    #$10    
       STA    $DE,X   
LFB1A: RTS            

LFB1B: LDA    #$34    
       STA    $D0     
       JSR    LFBA5   
       LDA    $DE,X   
       AND    #$03    
       EOR    #$02    
       BNE    LFB2E   
       LDA    #$01    
       STA    $F3     
LFB2E: LDA    $86     
       AND    #$0F    
       CMP    #$0F    
       BNE    LFB44   
       LDA    $DE,X   
       EOR    #$04    
       STA    $DE,X   
       LDY    LFF3C,X 
       STY    $92,X   
       JSR    LFC7A   
LFB44: RTS            

LFB45: LDA    $DE,X   
       BMI    LFB59   
       ORA    #$C0    
       STA    $DE,X   
       AND    #$03    
       BNE    LFB64   
       LDA    $DE,X   
       ORA    #$20    
       STA    $DE,X   
       BNE    LFB64   
LFB59: AND    #$DF    
       ORA    #$40    
       STA    $DE,X   
       LDA    LFE10   
       STA    $EA,X   
LFB64: LDA    #$00    
       STA.wy $008E,Y 
       STA.wy $0090,Y 
       RTS            

LFB6D: LDX    #$1B    
       LDA    $84     
LFB71: AND    #$0F    
       CLC            
       ROL            
       ROL            
       ROL            
LFB77: ADC    LFF3F   
       STA    $B5     
       LDY    #$07    
LFB7E: LDA    ($B5),Y 
       STA    $99,X   
       DEX            
       DEY            
       BNE    LFB7E   
       CPX    #$14    
       BEQ    LFB9D   
       CPX    #$0D    
       BNE    LFB93   
       LDA    $83     
       JMP    LFB71   
LFB93: CPX    #$06    
       BEQ    LFB98   
       RTS            

LFB98: LDA    $83     
       JMP    LFB9F   
LFB9D: LDA    $84     
LFB9F: AND    #$F0    
       CLC            
       ROR            
       BCC    LFB77   
LFBA5: LDY    #$08    
       TYA            
       AND    $85     
       BNE    LFBB4   
       LDA    $86     
       AND    #$04    
       BEQ    LFBB4   
       STY    $F4     
LFBB4: RTS            

LFBB5: JSR    LFBFB   
       LDA    $86     
       BNE    LFBED   
       LDX    #$08    
LFBBE: LDA    $C5,X   
       ADC    #$07    
       ORA    #$02    
       AND    #$FA    
       STA    $C5,X   
       DEX            
       BPL    LFBBE   
       LDA    $87     
       EOR    #$88    
       STA    $87     
       INC    $D3     
       INC    $D4     
       LDA    #$50    
       CMP    $D3     
       BNE    LFBE3   
       LDA    #$2B    
       STA    $D3     
       LDA    #$01    
       STA    $D4     
LFBE3: INC    $8A     
       BNE    LFBED   
       LDA    $80     
       AND    #$3F    
       STA    $80     
LFBED: RTS            

LFBEE: LDA    #$00    
       LDX    #$10    
LFBF2: STA    $85,X   
       DEX            
       BPL    LFBF2   
       LDA    #$30    
       STA    $8C     
LFBFB: LDA    #$02    
       STA    $97     
       LDA    #$46    
       STA    $B9     
       STA    $BA     
       STA    $BB     
       STA    $BF     
       LDA    #$10    
       STA    $C0     
       STA    $C1     
       STA    $C2     
       RTS            

LFC12: STA    $CF     
       LDA    $8D     
       SED            
       SEC            
       SBC    $CF     
       STA    $8D     
       LDA    $8C     
       SBC    #$00    
       STA    $8C     
       CLD            
       BCS    LFC52   
LFC25: LDA    #$00    
       LDX    #$06    
LFC29: STA    $8C,X   
       DEX            
       BPL    LFC29   
       STA    $96     
       LDA    $8B     
       ORA    #$02    
       STA    $8B     
       LDA    $80     
       TAY            
       CLC            
       ADC    #$01    
       AND    #$21    
       BNE    LFC4D   
       LDA    $88     
       STA    $81     
       LDA    $89     
       STA    $82     
       TYA            
       EOR    #$A0    
       BNE    LFC50   
LFC4D: TYA            
       AND    #$5F    
LFC50: STA    $80     
LFC52: RTS            

LFC53: STA    WSYNC   
       DEY            
       BNE    LFC59   
       RTS            

LFC59: CPY    #$01    
       BNE    LFC61   
       LDA    #$FF    
       BNE    LFC63   
LFC61: LDA    #$EF    
LFC63: STA    PF2     
       JSR    LFBB4   
       LDA    $C5     
       STA    COLUBK  
       JSR    LFBB4   
       LDA    $C6     
       STA    COLUBK  
       LDA    $87     
       STA    COLUBK  
       JMP    LFC53   
LFC7A: LDA    $B7     
       CLC            
       ADC    $B8     
       CLC            
       ROR            
       RTS            

LFC82: LDA    $80     
       AND    #$0F    
       TAY            
       CPY    #$02    
       BMI    LFCA9   
       LDA    $DE,X   
       ROR            
       BCS    LFC9E   
       CPY    #$04    
       BMI    LFCA9   
       LDA    $DE,X   
       AND    #$02    
       BNE    LFC9E   
       CPY    #$06    
       BMI    LFCA9   
LFC9E: LDY    $C3     
       LDA    LFFB7,Y 
       STA    $C0,X   
       LDA    $D8,X   
       STA    $BF     
LFCA9: RTS            

LFCAA: LDY    $C9     
       BNE    LFCB2   
       DEY            
       STY    $95     
       RTS            

LFCB2: LDX    #$02    
       LDY    #$96    
       LDA    #$00    
       STA    $95     
LFCBA: LDA    $C0,X   
       BPL    LFCE2   
       LDA    #$50    
       CMP    $B9,X   
       BPL    LFCC8   
       LDA    #$0F    
       BNE    LFCCA   
LFCC8: LDA    #$F0    
LFCCA: ORA    $95     
       STA    $95     
       CPY    #$46    
       BEQ    LFCE2   
       LDA    $B9,X   
       CMP    #$3D    
       BMI    LFCE0   
       CMP    #$5B    
       BPL    LFCE0   
       LDY    #$44    
       BNE    LFCE2   
LFCE0: LDY    #$8C    
LFCE2: DEX            
       BPL    LFCBA   
       STY    $C9     
       CPY    #$96    
       BEQ    LFCFF   
       LDA    $86     
       AND    #$04    
       BNE    LFCFF   
       CPY    #$44    
       BEQ    LFCFB   
       LDA    $86     
       AND    #$08    
       BNE    LFCFF   
LFCFB: LDY    #$0A    
       STY    $F4     
LFCFF: RTS            

LFD00: LDA    $85     
       CMP    #$7C    
       BEQ    LFD0A   
       CMP    #$BC    
       BNE    LFD0E   
LFD0A: JSR    LFC25   
LFD0D: RTS            

LFD0E: LDA    $86     
       AND    #$1C    
       CLC            
       ROR            
       ROR            
       BEQ    LFD0D   
       CMP    #$01    
       BEQ    LFD0D   
       TAY            
       LDA    #$01    
LFD1E: ASL            
       DEY            
       BNE    LFD1E   
       CMP    #$80    
       BEQ    LFD3F   
       CMP    #$40    
       BEQ    LFD3F   
       CMP    #$20    
       BEQ    LFD5D   
       CMP    #$10    
       BEQ    LFD5D   
       CMP    #$08    
       BEQ    LFD70   
       ORA    $85     
       STA    $85     
       LDA    #$00    
       STA    $C9     
       RTS            

LFD3F: BIT    $85     
       BMI    LFD0D   
       BVS    LFD0D   
       ORA    $85     
       STA    $85     
       LDY    #$00    
       CMP    #$80    
       BPL    LFD51   
       LDY    #$01    
LFD51: LDA    #$00    
       STA.wy $00C5,Y 
       STA.wy $008E,Y 
       STA.wy $0090,Y 
       RTS            

LFD5D: ORA    $85     
       STA    $85     
       AND    #$30    
       CMP    #$30    
       BEQ    LFD6C   
       LDA    #$16    
LFD69: STA    $C7     
       RTS            

LFD6C: LDA    #$00    
       BEQ    LFD69   
LFD70: ORA    $85     
       STA    $85     
       LDA    #$00    
       STA    $C8     
       RTS            

LFD79: STA    COLUP0  
       STA    COLUP1  
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDY    #$07    
       LDX    #$10    
       STA    WSYNC   
LFD87: DEY            
       BPL    LFD87   
       STA    RESP0   
       STA    RESP1   
       STX    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDX    #$06    
LFD9C: LDA    $99,X   
       LDY    $A0,X   
       STA    WSYNC   
       STA    GRP0    
       STY    GRP1    
       LDA    $A7,X   
       LDY    $AE,X   
       JSR    LFBB4   
       JSR    LFBB4   
       NOP            
       NOP            
       NOP            
       STA    GRP0    
       STY    GRP1    
       DEX            
       BPL    LFD9C   
       INX            
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       RTS            

LFDC2: LDY    #$15    
       STA    WSYNC   
       LDX    #$3F    
       STX    PF2     
LFDCA: JSR    LFBB4   
       JSR    LFBB4   
       LDX    $C7     
       CPY    $96     
       BPL    LFDD8   
       LDX    #$42    
LFDD8: STX    COLUBK  
       JSR    LFBB4   
       LDX    $87     
       STX    COLUBK  
       STA    WSYNC   
       DEY            
       BNE    LFDCA   
       DEY            
       STY    PF2     
       RTS            

LFDEA: LDA    SWCHA   
       STA    $CF     
       LDA    $80     
       AND    #$20    
       BEQ    LFDFE   
       LDA    SWCHA   
       ROL            
       ROL            
       ROL            
       ROL            
       STA    $CF     
LFDFE: RTS            

LFDFF: .byte $00
LFE00: .byte $20,$FE,$28,$FE,$30,$FE,$38,$FE,$40,$FE,$48,$FE,$50,$FE,$58,$FE
LFE10: .byte $60,$FE
LFE12: .byte $98,$FE
LFE14: .byte $A0,$FE
LFE16: .byte $B0,$FE,$C0,$FE,$D0,$FE,$E0,$FE,$F0,$FE,$00,$18,$04,$06,$02,$02
       .byte $00,$00,$00,$38,$04,$03,$02,$02,$00,$00,$00,$10,$0C,$03,$02,$01
       .byte $00,$00,$00,$30,$0C,$06,$03,$00,$00,$00,$00,$00,$1C,$07,$00,$00
       .byte $00,$00,$00,$00,$3C,$0E,$00,$00,$00,$00,$00,$10,$0C,$0C,$02,$00
       .byte $00,$00,$00,$30,$0C,$06,$02,$00,$00,$00,$00,$00,$00,$1C,$08,$08
       .byte $00,$00,$00,$00,$00,$1C,$2A,$1C,$08,$00,$00,$00,$00,$49,$14,$2A
       .byte $00,$14,$00,$00,$00,$22,$55,$14,$2A,$00,$00,$00,$00,$55,$14,$55
       .byte $00,$00,$00,$00,$00,$36,$55,$00,$00,$00,$00,$00,$00,$55,$08,$00
       .byte $00,$00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$7C,$FC,$FE
       .byte $FF,$FF,$FF,$7C,$7C,$7C,$54,$54,$54,$00,$0F,$0F,$0F,$06,$06,$06
       .byte $06,$06,$06,$00,$00,$42,$42,$0F,$0F,$0F,$00,$00,$00,$78,$7C,$FE
       .byte $FF,$FF,$78,$7E,$58,$CE,$18,$00,$00,$00,$0F,$0F,$0F,$84,$84,$86
       .byte $86,$0E,$0C,$0A,$86,$84,$82,$0F,$0F,$0F,$00,$00,$00,$7C,$FE,$FF
       .byte $7E,$3B,$38,$10,$30,$00,$00,$00,$00,$00,$0F,$0F,$0F,$82,$82,$82
       .byte $44,$44,$44,$0F,$0F,$0F,$0F,$0F,$0F,$0F
LFF00: .byte $C0,$C2,$C4,$C6,$C8,$CA,$CC,$88
LFF08: .byte $10,$1D,$28,$31,$38,$3D,$40,$50
LFF10: .byte $00,$08,$14,$2A,$55,$AA,$54,$28,$10
LFF19: .byte $00,$00,$04,$22,$4F,$F2,$44,$20,$00
LFF22: .byte $07,$07,$05
LFF25: .byte $05,$05,$00
LFF28: .byte $00,$3C,$42,$81,$99,$99,$81,$42,$3C
LFF31: .byte $13,$D3,$D5,$D7,$17,$57,$55,$53
LFF39: .byte $F0,$E0,$E0
LFF3C: .byte $48,$32,$18
LFF3F: .byte $41,$FF,$00,$3C,$66,$66,$66,$66,$66,$3C,$00,$3C,$18,$18,$18,$38
       .byte $18,$08,$00,$7E,$66,$60,$3C,$06,$66,$3C,$00,$3C,$66,$06,$1C,$06
       .byte $66,$3C,$00,$1E,$0C,$7E,$6C,$3C,$1C,$0C,$00,$3C,$66,$06,$7C,$60
       .byte $66,$7E,$00,$3C,$66,$66,$7C,$60,$66,$3C,$00,$3C,$18,$18,$18,$0C
       .byte $66,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$66,$06,$3E,$66
       .byte $66,$3C,$00,$79,$85,$B5,$A5,$B5,$85,$79,$00,$66,$66,$7E,$66,$66
       .byte $3C,$18,$00,$3C,$18,$18,$18,$18,$99,$FF,$00,$DB,$DB,$E3,$F3,$DB
       .byte $DB,$F3
LFFB1: .byte $20,$15,$35
LFFB4: .byte $30,$25,$45
LFFB7: .byte $0B,$0D,$0E,$0E,$0D,$0B,$08,$04
LFFBF: .byte $00,$0D,$0F,$08,$08,$1F,$0F,$0D,$0D,$17,$03,$1F,$0D,$17
LFFCD: .byte $00,$A3,$73,$78,$FF,$86,$33,$38,$4D,$88,$87,$FF,$86,$48
LFFDB: LDA    $80     
       AND    #$20    
       BEQ    LFFE4   
       LDA    INPT5   
       RTS            

LFFE4: LDA    INPT4   
       RTS            

LFFE7: STA    WSYNC   
       DEY            
       BNE    LFFE7   
       RTS            

LFFED: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $F0,$00,$00
