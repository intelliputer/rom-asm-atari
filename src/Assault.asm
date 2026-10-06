; Disassembly of roms/Assault.bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Assault.bin
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
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP0FB  =  $32
CXP1FB  =  $33
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
       STA    $E6     
       LDA    #$80    
       STA    $F0     
       STA    $F2     
       JMP    LF7FB   
LF019: LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$90    
       STA    TIM64T  
       LDA    #$0F    
       STA    COLUPF  
       LDA    #$FE    
       STA    $D1     
       STA    $D3     
       STA    $D5     
       STA    $D7     
       STA    $D9     
       STA    $DB     
       BIT    $F0     
       BPL    LF03F   
       LDA    $E7     
       ROL            
       BCS    LF056   
LF03F: LDA    $80     
       STA    $86     
       LDA    $81     
       STA    $87     
       LDA    $82     
       STA    $88     
       JSR    LFB10   
       LDA    #$28    
       STA    COLUP0  
       STA    COLUP1  
       BNE    LF06B   
LF056: LDA    $83     
       STA    $86     
       LDA    $84     
       STA    $87     
       LDA    $85     
       STA    $88     
       JSR    LFB10   
       LDA    #$98    
       STA    COLUP0  
       STA    COLUP1  
LF06B: LDA    #$03    
       STA    NUSIZ1  
       STA    NUSIZ0  
       LDY    #$07    
       STA    WSYNC   
LF075: DEY            
       BNE    LF075   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       STY    $DC     
       STY    VDELP0  
       STY    VDELP1  
LF08D: LDY    $DC     
       LDA    ($D0),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($D2),Y 
       STA    GRP1    
       LDA    ($D4),Y 
       STA    GRP0    
       LDA    ($D6),Y 
       STA    $DD     
       LDA    ($D8),Y 
       TAX            
       LDA    ($DA),Y 
       TAY            
       LDA    $DD     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $DC     
       BPL    LF08D   
       STA    HMCLR   
       LDY    #$00    
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    COLUP1  
       STY    COLUP0  
       STY    VDELP0  
       STY    VDELP1  
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDA    $C7     
       AND    #$0F    
       TAX            
LF0D0: STA    WSYNC   
       DEX            
       BNE    LF0D0   
       LDA    $C4     
       JSR    LFB5A   
       INX            
       LDA    $C5     
       JSR    LFB69   
       LDY    #$0F    
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
LF0E8: LDA    ($8B),Y 
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDA    LFE80,Y 
       STA    GRP0    
       LDA    LFE90,Y 
       STA    GRP1    
       DEY            
       BPL    LF0E8   
       INY            
       STA    WSYNC   
       BIT    $E9     
       BMI    LF10A   
       STY    GRP0    
       STY    GRP1    
       BPL    LF118   
LF10A: LDA    #$A0    
       STA    GRP1    
       LDA    #$0A    
       STA    GRP0    
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
LF118: STA    HMCLR   
       LDA    $C7     
       JSR    LFB4B   
       AND    #$0F    
       TAX            
LF122: STA    WSYNC   
       DEX            
       BNE    LF122   
       LDX    #$04    
       LDA    $A7     
       JSR    LFB5A   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       STY    NUSIZ1  
LF137: LDX    $A0     
       LDA    $A1,X   
       STA    $D0     
       LDA    $A4,X   
       STA    $D1     
       LDX    #$01    
       LDA    $D1     
       JSR    LFB5A   
       LDA    $D0     
       DEX            
       JSR    LFB69   
       LDX    $A0     
       LDY    $E8     
       LDA    LFF64,Y 
       AND    #$03    
       TAY            
       LDA    $B6,X   
       AND    #$80    
       BEQ    LF17C   
       LDA    $B6,X   
       AND    #$20    
       BNE    LF170   
       LDA    LFF94,Y 
       STA    $AC     
       JSR    LFC11   
       STA    $AD     
       BNE    LF184   
LF170: LDA    LFF9C,Y 
       STA    $AC     
       JSR    LFC11   
       STA    $AD     
       BNE    LF184   
LF17C: LDA    #$00    
       STA    $AC     
       LDA    #$FD    
       STA    $AD     
LF184: LDX    $A0     
       LDA    $B6,X   
       AND    #$40    
       BEQ    LF1AA   
       LDA    $B6,X   
       AND    #$20    
       BNE    LF19E   
       LDA    LFF98,Y 
       STA    $AE     
       JSR    LFC11   
       STA    $AF     
       BNE    LF1B2   
LF19E: LDA    LFF9C,Y 
       STA    $AE     
       JSR    LFC11   
       STA    $AF     
       BNE    LF1B2   
LF1AA: LDA    #$00    
       STA    $AE     
       LDA    #$FD    
       STA    $AF     
LF1B2: BIT    $AA     
       BPL    LF1C2   
       LDA    #$00    
       STA    $AC     
       STA    $AE     
       LDA    #$FD    
       STA    $AD     
       STA    $AF     
LF1C2: LDX    $A0     
       LDA    $EA     
       AND    #$C0    
       BEQ    LF205   
       LDA    $EA     
       AND    #$03    
       STA    $DD     
       CPX    $DD     
       BNE    LF205   
       LDA    $E7     
       LSR            
       LSR            
       AND    #$01    
       TAY            
       LDA    $B6,X   
       AND    #$20    
       BEQ    LF1E7   
       LDA    $EA     
       AND    #$80    
       BEQ    LF1F0   
LF1E7: LDA    LFFB4,Y 
       STA    $AC     
       LDA    #$FF    
       STA    $AD     
LF1F0: LDA    $B6,X   
       AND    #$20    
       BEQ    LF1FC   
       LDA    $EA     
       AND    #$40    
       BEQ    LF205   
LF1FC: LDA    LFFB4,Y 
       STA    $AE     
       LDA    #$FF    
       STA    $AF     
LF205: LDY    #$07    
       LDA    $AB     
       AND    #$0F    
       TAX            
LF20C: STA    WSYNC   
       INC    $ED     
       DEX            
       BNE    LF20C   
LF213: LDX    #$1F    
       TXS            
       LDA    $C3     
       EOR    $ED     
       AND    #$F8    
       PHP            
       LDA    ($A8),Y 
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDA    ($AC),Y 
       STA    GRP0    
       LDA    ($AE),Y 
       STA    GRP1    
       INC    $ED     
       DEY            
       BPL    LF213   
       LDX    #$FF    
       TXS            
       INY            
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDA    $AB     
       JSR    LFB4B   
       AND    #$0F    
       TAX            
LF244: STA    WSYNC   
       INC    $ED     
       DEX            
       BNE    LF244   
       BIT    $EA     
       BPL    LF252   
       JMP    LF278   
LF252: BIT    CXP0FB  
       BVC    LF266   
       LDA    $A0     
       ORA    #$80    
       STA    $EA     
       LDA    #$7F    
       STA    $B9     
       LDA    #$80    
       STA    $BA     
       BNE    LF278   
LF266: BIT    CXP1FB  
       BVC    LF278   
       LDA    $A0     
       ORA    #$40    
       STA    $EA     
       LDA    #$BF    
       STA    $B9     
       LDA    #$80    
       STA    $BA     
LF278: STA    CXCLR   
       STA    HMCLR   
       DEC    $A0     
       BMI    LF283   
       JMP    LF137   
LF283: LDA    #$02    
       STA    $A0     
LF287: LDA    INTIM   
       BNE    LF287   
       LDA    #$6C    
       STA    TIM64T  
       LDX    #$03    
LF293: LDA    $90,X   
       JSR    LFB5A   
       DEX            
       BPL    LF293   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$20    
       STA    NUSIZ0  
       LDA    $C8     
       STA    COLUP1  
       LDY    #$3B    
       BIT    $CB     
       BMI    LF2B5   
       LDA    #$00    
       STA    $C9     
       LDA    #$FF    
       STA    $EE     
LF2B5: LDX    #$1F    
       TXS            
       LDA    $C3     
       EOR    $ED     
       AND    #$F8    
       STA    WSYNC   
       PHP            
       LDA    $EE     
       EOR    $ED     
       AND    $EF     
       PHP            
       LDA    ($C9),Y 
       STA    GRP1    
       DEY            
       INC    $ED     
       CPY    #$08    
       BCS    LF2B5   
       LDX    #$FF    
       TXS            
       STA    WSYNC   
       BIT    $96     
       BPL    LF2E4   
       JSR    LFC11   
       LDA    LFFB6,X 
       STA    $C9     
LF2E4: LDX    #$1E    
       TXS            
       LDA    LFC80,Y 
       STA    COLUP0  
       LDA    ($9E),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($C9),Y 
       STA    GRP1    
       LDA    ($98),Y 
       STA    ENAM0   
       LDA    $EE     
       EOR    $ED     
       AND    $EF     
       PHP            
       INC    $ED     
       DEY            
       BPL    LF2E4   
       LDX    #$FF    
       TXS            
       INY            
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    ENAM0   
       STY    ENAM1   
       STY    ENABL   
       LDA    #$B6    
       STA    WSYNC   
       STA    COLUBK  
       BIT    $89     
       BMI    LF362   
       BIT    $97     
       BMI    LF362   
       LDY    $E8     
       LDA    LFF64,Y 
       LSR            
       LSR            
       AND    #$03    
       CMP    #$03    
       BNE    LF34B   
       BIT    CXM0P   
       BMI    LF342   
       BIT    CXPPMM  
       BPL    LF362   
       JSR    LFC5E   
       LDA    #$8F    
       STA    $97     
       BNE    LF35A   
LF342: JSR    LFC5E   
       LDA    #$40    
       STA    $CC     
       BNE    LF35A   
LF34B: BIT    CXM1P   
       BMI    LF353   
       BIT    CXPPMM  
       BPL    LF362   
LF353: JSR    LFC5E   
       LDA    #$8F    
       STA    $97     
LF35A: LDA    #$00    
       STA    $CB     
       STA    $96     
       STA    $9A     
LF362: STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$02    
       LDX    #$01    
       JSR    LFB5A   
       LDY    $E5     
       CPY    #$02    
       BCC    LF37B   
       LDA    #$08    
       BNE    LF37D   
LF37B: LDA    #$00    
LF37D: STA    COLUP1  
       DEY            
       LDA    LFFB8,Y 
       STA    NUSIZ1  
       LDA    $95     
       STA    COLUPF  
       LDX    #$00    
       LDY    #$07    
LF38D: STA    WSYNC   
       STX    PF1     
       STX    PF2     
       LDA    ($E3),Y 
       STA    GRP1    
       LDX    #$06    
LF399: DEX            
       BNE    LF399   
       LDA    $9C     
       STA    PF1     
       LDA    $9D     
       STA    PF2     
       DEY            
       BPL    LF38D   
       INY            
       STA    WSYNC   
       STY    PF1     
       STY    PF2     
       STY    GRP1    
       STY    $ED     
       STA    CXCLR   
LF3B4: LDA    INTIM   
       BNE    LF3B4   
       LDA    #$11    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF3CF   
       BIT    $F0     
       BPL    LF3CC   
       LDA    #$00    
       STA    $F0     
LF3CC: JMP    LF7BF   
LF3CF: LDX    #$01    
LF3D1: LDA    $BC,X   
       BEQ    LF3D9   
       DEC    $BC,X   
       BPL    LF401   
LF3D9: LDY    $BE,X   
       LDA    LFF2D,Y 
       BNE    LF3E5   
       DEC    $BE,X   
       JMP    LF3F7   
LF3E5: STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFA0,Y 
       STA    $BC,X   
       LDY    $BE,X   
       LDA    LFF00,Y 
LF3F7: STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       INC    $BE,X   
LF401: DEX            
       BPL    LF3D1   
       LDA    $E8     
       LSR            
       BCS    LF40D   
       LDA    #$60    
       BNE    LF40F   
LF40D: LDA    #$70    
LF40F: STA    $8B     
       LDA    $EC     
       BEQ    LF418   
       JMP    LF7BF   
LF418: BIT    $F0     
       BPL    LF43D   
       LDA    #$04    
       STA    $E5     
       LDA    #$50    
       STA    $E3     
       LDA    #$FE    
       STA    $E4     
       LDA    #$88    
       STA    $9E     
       LDA    #$FC    
       STA    $9F     
       LDA    $E8     
       CMP    #$04    
       BCC    LF43D   
       LDA    #$00    
       STA    $E8     
       JSR    LFAEB   
LF43D: BIT    $BA     
       BPL    LF48D   
       LDA    #$00    
       STA    $BA     
       JSR    LFC5E   
       LDA    $CC     
       ORA    #$80    
       STA    $CC     
       LDA    $EA     
       AND    #$03    
       TAX            
       LDA    $B6,X   
       AND    #$20    
       BEQ    LF462   
       LDA    $B6,X   
       AND    $B9     
       STA    $B6,X   
       JMP    LF485   
LF462: LDY    $E8     
       LDA    LFF64,Y 
       AND    #$80    
       BEQ    LF47F   
       LDA    #$00    
       STA    $EA     
       LDA    $B6,X   
       ORA    #$20    
       STA    $B6,X   
       LDA    #$40    
       STA    $B0,X   
       LDA    #$80    
       STA    $B3,X   
       BNE    LF485   
LF47F: LDA    $B6,X   
       AND    #$3F    
       STA    $B6,X   
LF485: LDA    #$00    
       STA    $C2     
       LDA    #$7F    
       STA    $C3     
LF48D: BIT    $96     
       BPL    LF493   
       BMI    LF4C7   
LF493: LDY    $E8     
       LDA    LFF64,Y 
       LSR            
       LSR            
       AND    #$03    
       TAY            
       CMP    #$02    
       BCS    LF4A4   
       JMP    LF4F2   
LF4A4: BIT    $89     
       BMI    LF4C7   
       BIT    $CB     
       BMI    LF4CA   
       BIT    $EA     
       BMI    LF4C7   
       JSR    LFC1E   
       LDA    LFFAC,Y 
       STA    $C9     
       LDA    $B6     
       AND    #$C0    
       BEQ    LF4C7   
       JSR    LFB04   
       BNE    LF4C7   
       LDA    #$80    
       STA    $CB     
LF4C7: JMP    LF536   
LF4CA: BIT    SWCHB   
       BVS    LF4D3   
       INC    $C9     
       INC    $C9     
LF4D3: INC    $C9     
       INC    $C9     
       LDA    $C9     
       SEC            
       SBC    LFFB0,Y 
       BMI    LF536   
       LDA    LFFAC,Y 
       STA    $C9     
       CPY    #$03    
       BNE    LF4EC   
       LDA    #$80    
       STA    $96     
LF4EC: LDA    #$00    
       STA    $CB     
       BEQ    LF536   
LF4F2: BIT    $89     
       BMI    LF536   
       BIT    $CB     
       BMI    LF517   
       BIT    $EA     
       BMI    LF536   
       JSR    LFC1E   
       LDA    $B6     
       AND    #$C0    
       BEQ    LF536   
       JSR    LFB04   
       BNE    LF536   
       LDA    #$3C    
       STA    $EE     
       LDA    #$80    
       STA    $CB     
       JMP    LF536   
LF517: BIT    SWCHB   
       BVC    LF527   
       LDA    $EE     
       CLC            
       ADC    #$03    
       BMI    LF532   
       STA    $EE     
       BPL    LF536   
LF527: LDA    $EE     
       CLC            
       ADC    #$06    
       BMI    LF532   
       STA    $EE     
       BPL    LF536   
LF532: LDA    #$00    
       STA    $CB     
LF536: BIT    $EA     
       BPL    LF53D   
       JMP    LF5F0   
LF53D: BIT    $E9     
       BPL    LF558   
       INC    $EB     
       LDA    $EB     
       CMP    #$08    
       BCC    LF555   
       LDA    $E9     
       AND    #$7F    
       STA    $E9     
       DEC    $E9     
       LDA    #$00    
       STA    $EB     
LF555: JMP    LF5D2   
LF558: INC    $EB     
       LDA    $EB     
       CMP    #$10    
       BCC    LF555   
       LDA    #$00    
       STA    $EB     
       LDA    $E9     
       AND    #$0F    
       BEQ    LF593   
       LDA    $B8     
       AND    #$C0    
       BNE    LF593   
       LDA    $E9     
       ORA    #$80    
       STA    $E9     
       LDA    $B8     
       ORA    #$C0    
       AND    #$DF    
       STA    $B8     
       LDA    $C4     
       STA    $A3     
       JSR    LFBC8   
       LDA    #$31    
       STA    $C7     
       LDA    #$00    
       STA    $BD     
       LDA    #$13    
       STA    $BF     
       BNE    LF5D2   
LF593: LDA    $B7     
       AND    #$C0    
       BNE    LF5B4   
       LDA    $B8     
       STA    $B7     
       LDA    #$00    
       STA    $B8     
       LDA    $A3     
       STA    $A2     
       LDA    $A6     
       STA    $A5     
       LDA    $B2     
       STA    $B1     
       LDA    $B5     
       STA    $B4     
       JMP    LF5D2   
LF5B4: LDA    $B6     
       AND    #$C0    
       BNE    LF5D2   
       LDA    $B7     
       STA    $B6     
       LDA    #$00    
       STA    $B7     
       LDA    $A2     
       STA    $A1     
       LDA    $A5     
       STA    $A4     
       LDA    $B1     
       STA    $B0     
       LDA    $B4     
       STA    $B3     
LF5D2: LDA    $E9     
       BNE    LF5F0   
       LDX    #$02    
LF5D8: LDA    $B6,X   
       AND    #$C0    
       BNE    LF5F0   
       DEX            
       BPL    LF5D8   
       JSR    LFAEB   
       LDA    $E8     
       CMP    #$2F    
       BCC    LF5EE   
       LDA    #$FF    
       STA    $E8     
LF5EE: INC    $E8     
LF5F0: LDA    $E6     
       ADC    $E7     
       ADC    INTIM   
       ADC    $90     
       STA    $E6     
       LDA    $E7     
       AND    #$3F    
       BNE    LF607   
       LDA    $F2     
       EOR    #$C0    
       STA    $F2     
LF607: BIT    $F0     
       BMI    LF678   
       LDA    $E7     
       AND    #$1F    
       BNE    LF65A   
       LDA    $9B     
       CMP    #$01    
       BCC    LF644   
       LDA    #$00    
       STA    $9B     
       LDA    $9C     
       CMP    #$FF    
       BEQ    LF627   
       SEC            
       ROR            
       STA    $9C     
       BNE    LF678   
LF627: LDA    $9D     
       CMP    #$FF    
       BEQ    LF633   
       SEC            
       ROL            
       STA    $9D     
       BNE    LF65A   
LF633: JSR    LFC5E   
       LDA    #$8F    
       STA    $97     
       LDA    #$C0    
       STA    $9C     
       LDA    #$00    
       STA    $9D     
       BEQ    LF678   
LF644: LDA    $9D     
       BEQ    LF64E   
       LSR            
       STA    $9D     
       JMP    LF65A   
LF64E: LDA    $9C     
       CMP    #$C0    
       BEQ    LF678   
       ASL            
       STA    $9C     
       JMP    LF678   
LF65A: LDA    $9D     
       CMP    #$0F    
       BCC    LF674   
       LDA    $E7     
       AND    #$0F    
       BNE    LF66E   
       LDA    #$26    
       STA    $BE     
       LDA    #$00    
       STA    $BC     
LF66E: LDA    #$46    
       STA    $95     
       BNE    LF678   
LF674: LDA    #$C6    
       STA    $95     
LF678: BIT    $9A     
       BPL    LF698   
       LDA    $92     
       JSR    LFB49   
       CMP    #$B3    
       BCS    LF68F   
       CLC            
       ADC    #$03    
       JSR    LFB44   
       STA    $92     
       BNE    LF6B3   
LF68F: LDA    $9A     
       AND    #$7F    
       STA    $9A     
       JMP    LF6B3   
LF698: BVC    LF6B3   
       LDA    $92     
       JSR    LFB49   
       CMP    #$23    
       BCC    LF6AD   
       SEC            
       SBC    #$03    
       JSR    LFB44   
       STA    $92     
       BNE    LF6B3   
LF6AD: LDA    $9A     
       AND    #$BF    
       STA    $9A     
LF6B3: BIT    $F0     
       BMI    LF702   
       BIT    $CD     
       BMI    LF702   
       LDA    $E8     
       LSR            
       LSR            
       LSR            
       AND    #$03    
       TAY            
       BIT    $CC     
       BMI    LF6CD   
       BVC    LF702   
       LDA    #$10    
       BNE    LF6D0   
LF6CD: LDA    LFFF2,Y 
LF6D0: STA    $DD     
       LDA    $82     
       CLC            
       SED            
       ADC    $DD     
       STA    $82     
       BCC    LF702   
       LDA    $81     
       CLC            
       ADC    #$01    
       STA    $81     
       BCC    LF702   
       LDA    $E5     
       CMP    #$04    
       BCS    LF6ED   
       INC    $E5     
LF6ED: LDA    $80     
       CLC            
       ADC    #$01    
       STA    $80     
       BCC    LF702   
       LDA    #$99    
       STA    $80     
       STA    $81     
       STA    $82     
       LDA    #$80    
       STA    $CD     
LF702: CLD            
       LDA    #$00    
       STA    $CC     
       BIT    $89     
       BMI    LF713   
       BIT    $97     
       BMI    LF713   
       LDA    $E5     
       BNE    LF716   
LF713: JMP    LF7BF   
LF716: BIT    $C2     
       BMI    LF746   
       BIT    $EA     
       BMI    LF78D   
       BIT    $F0     
       BPL    LF727   
       LDA    $F2     
       JMP    LF72A   
LF727: LDA    SWCHA   
LF72A: AND    #$10    
       BNE    LF746   
       INC    $9B     
       LDA    $90     
       JSR    LFB49   
       CLC            
       ADC    #$05    
       JSR    LFB44   
       STA    $A7     
       JSR    LFC67   
       LDA    #$80    
       STA    $C2     
       BNE    LF7BF   
LF746: BIT    $F0     
       BPL    LF74F   
       BIT    $E6     
       JMP    LF751   
LF74F: BIT    INPT4   
LF751: BMI    LF78D   
       LDA    $9A     
       AND    #$C0    
       BNE    LF7BF   
       BIT    $F0     
       BPL    LF762   
       BIT    $F2     
       JMP    LF765   
LF762: BIT    SWCHA   
LF765: BMI    LF77A   
       INC    $9B     
       LDA    $9A     
       ORA    #$80    
       STA    $9A     
       JSR    LFC67   
       LDA    $90     
       STA    $92     
       INC    $92     
       BNE    LF7BF   
LF77A: BVS    LF7BF   
       INC    $9B     
       LDA    $9A     
       ORA    #$40    
       STA    $9A     
       JSR    LFC67   
       LDA    $90     
       STA    $92     
       BNE    LF7BF   
LF78D: BIT    $F0     
       BPL    LF796   
       BIT    $F2     
       JMP    LF799   
LF796: BIT    SWCHA   
LF799: BMI    LF7AD   
       LDA    $90     
       JSR    LFB49   
       CMP    #$9F    
       BCS    LF7BF   
       LDA    $90     
       JSR    LFBFA   
       STA    $90     
       BNE    LF7BF   
LF7AD: BVS    LF7BF   
       LDA    $90     
       JSR    LFB49   
       CMP    #$27    
       BCC    LF7BF   
       LDA    $90     
       JSR    LFBE3   
       STA    $90     
LF7BF: LDA    INTIM   
       BNE    LF7BF   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       INC    $E7     
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       LDY    $BF     
       LDA    LFF00,Y 
       BNE    LF7E5   
       LDA    #$10    
       STA    $BF     
       LDA    #$00    
       STA    $BD     
LF7E5: STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$23    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCC    LF7FB   
       JMP    LF88E   
LF7FB: LDA    #$50    
       STA    $E3     
       LDA    #$FE    
       STA    $E4     
       LDA    #$04    
       STA    $E5     
       LDA    #$06    
       STA    $90     
       LDA    #$FE    
       STA    $8C     
       LDA    #$00    
       STA    $9A     
       STA    $9B     
       STA    $C2     
       STA    $CC     
       STA    $CD     
       STA    $80     
       STA    $81     
       STA    $82     
       STA    $E8     
       STA    $AA     
       STA    $9D     
       STA    $89     
       STA    $8A     
       LDA    #$C0    
       STA    $9C     
       LDA    #$7F    
       STA    $C3     
       LDA    #$F8    
       STA    $EF     
       LDA    #$06    
       STA    $A7     
       LDA    #$73    
       STA    $C4     
       LDA    #$64    
       STA    $C5     
       STA    $91     
       STA    $92     
       STA    $93     
       LDA    #$40    
       STA    $C6     
       STA    $B1     
       STA    $B4     
       LDA    #$80    
       STA    $B2     
       STA    $B5     
       STA    $B0     
       STA    $B3     
       LDA    #$13    
       STA    $C7     
       LDA    #$02    
       STA    $A0     
       STA    $A3     
       STA    $A2     
       STA    $A1     
       JSR    LFBC8   
       STA    $A5     
       STA    $A4     
       LDA    #$BC    
       STA    $A8     
       LDA    #$FF    
       STA    $A9     
       LDA    #$00    
       STA    $C0     
       LDA    #$FD    
       STA    $C1     
       LDA    #$18    
       STA    $C8     
       LDA    #$FD    
       STA    $CA     
       JSR    LFC2F   
       JMP    LFAE3   
LF88E: LDA    $E7     
       LSR            
       BCS    LF896   
       JMP    LFA7F   
LF896: LDA    $EC     
       BNE    LF8D9   
       LDA    $E5     
       BNE    LF8D9   
       BIT    $97     
       BMI    LF8D9   
       BIT    $EA     
       BMI    LF8D9   
       LDA    $9A     
       AND    #$C0    
       BNE    LF8D9   
       BIT    $C2     
       BMI    LF8D9   
       LDA    #$7F    
       STA    $F3     
       LDA    #$04    
       STA    $EC     
       LDA    #$00    
       STA    $E8     
       STA    $AA     
       JSR    LFC5E   
       LDX    #$00    
LF8C3: LDA    $80,X   
       CMP    $83,X   
       BCC    LF8D9   
       BNE    LF8D0   
       INX            
       CPX    #$03    
       BCC    LF8C3   
LF8D0: LDX    #$02    
LF8D2: LDA    $80,X   
       STA    $83,X   
       DEX            
       BPL    LF8D2   
LF8D9: LDA    $EC     
       CMP    #$04    
       BNE    LF8F6   
       LDA    $F3     
       BEQ    LF8EB   
       LDA    $E7     
       STA    COLUBK  
       DEC    $F3     
       BPL    LF8F6   
LF8EB: LDA    #$80    
       STA    $F0     
       LDA    #$00    
       STA    $E8     
       JSR    LFC2F   
LF8F6: LDA    $EC     
       BEQ    LF8FD   
       JMP    LFA53   
LF8FD: LDA    $9A     
       AND    #$C0    
       BEQ    LF90D   
       LDA    #$58    
       STA    $98     
       LDA    #$FE    
       STA    $99     
       BNE    LF915   
LF90D: LDA    #$00    
       STA    $98     
       LDA    #$FD    
       STA    $99     
LF915: BIT    $C2     
       BPL    LF92C   
       LDA    $C3     
       SEC            
       SBC    #$08    
       BMI    LF924   
       STA    $C3     
       BPL    LF92C   
LF924: LDA    #$7F    
       STA    $C3     
       LDA    #$00    
       STA    $C2     
LF92C: BIT    $97     
       BVS    LF964   
       BMI    LF93C   
       LDA    #$88    
       STA    $9E     
       LDA    #$FC    
       STA    $9F     
       BNE    LF96C   
LF93C: LDA    $97     
       AND    #$1F    
       BEQ    LF958   
       DEC    $97     
       LDA    $E7     
       STA    COLUBK  
       LSR            
       LSR            
       AND    #$01    
       TAY            
       LDA    LFFB4,Y 
       STA    $9E     
       LDA    #$FF    
       STA    $9F     
       BNE    LF96C   
LF958: STA    $97     
       LDA    #$80    
       STA    $89     
       LDA    #$0F    
       STA    $8A     
       BNE    LF96C   
LF964: LDA    #$00    
       STA    $9E     
       LDA    #$FD    
       STA    $9F     
LF96C: LDA    $E5     
       BNE    LF976   
       LDA    #$40    
       STA    $97     
       BNE    LF992   
LF976: BIT    $89     
       BPL    LF992   
       DEC    $8A     
       BEQ    LF988   
       LDA    #$00    
       STA    $9E     
       LDA    #$FD    
       STA    $9F     
       BNE    LF992   
LF988: LDA    #$00    
       STA    $89     
       LDA    $E5     
       BEQ    LF992   
       DEC    $E5     
LF992: LDY    $E8     
       LDA    LFF64,Y 
       JSR    LFB4B   
       AND    #$03    
       BEQ    LF9D9   
       CMP    #$01    
       BEQ    LF9CA   
       CMP    #$02    
       BNE    LF9D9   
       LDA    $AA     
       BPL    LF9BA   
       AND    #$1F    
       CMP    #$14    
       BCS    LF9B4   
       INC    $AA     
       BNE    LF9D9   
LF9B4: LDA    #$00    
       STA    $AA     
       BEQ    LF9D9   
LF9BA: AND    #$3F    
       CMP    #$3C    
       BCS    LF9C4   
       INC    $AA     
       BNE    LF9D9   
LF9C4: LDA    #$80    
       STA    $AA     
       BNE    LF9D9   
LF9CA: LDA    $E7     
       AND    #$0F    
       CMP    #$01    
       BNE    LF9D9   
       LDA    $AB     
       JSR    LFB4B   
       STA    $AB     
LF9D9: BIT    $E9     
       BMI    LF9EC   
       LDA    $E7     
       AND    #$0F    
       CMP    #$01    
       BNE    LF9EC   
       LDA    $C7     
       JSR    LFB4B   
       STA    $C7     
LF9EC: BIT    $E9     
       BMI    LFA0F   
       LDA    #$9A    
       STA    $F4     
       LDA    $C4     
       STA    $D0     
       LDA    $C5     
       STA    $D1     
       LDA    $C6     
       STA    $D2     
       JSR    LFB7A   
       LDA    $D0     
       STA    $C4     
       LDA    $D1     
       STA    $C5     
       LDA    $D2     
       STA    $C6     
LFA0F: BIT    $96     
       BPL    LFA31   
       LDA    $91     
       JSR    LFB49   
       STA    $DD     
       LDA    $90     
       JSR    LFB49   
       CMP    $DD     
       BCS    LFA2A   
       LDA    $91     
       JSR    LFBE3   
       BNE    LFA2F   
LFA2A: LDA    $91     
       JSR    LFBFA   
LFA2F: STA    $91     
LFA31: LDA    $EA     
       AND    #$C0    
       BEQ    LFA50   
       LDA    $EA     
       AND    #$3C    
       LSR            
       LSR            
       CMP    #$0F    
       BCS    LFA4A   
       LDA    $EA     
       CLC            
       ADC    #$04    
       STA    $EA     
       BNE    LFA50   
LFA4A: LDA    #$00    
       STA    $EA     
       STA    $EC     
LFA50: JMP    LFAE3   
LFA53: LDA    $EC     
       CMP    #$03    
       BNE    LFA7C   
       LDA    $F3     
       BEQ    LFA61   
       DEC    $F3     
       BPL    LFA7C   
LFA61: LDA    $E8     
       AND    #$03    
       TAY            
       LDA    LFFDC,Y 
       STA    $A8     
       LDA    LFFA8,Y 
       STA    $C8     
       CPY    #$02    
       BCS    LFA79   
       LDA    LFFB0,Y 
       STA    $EF     
LFA79: JSR    LFC2F   
LFA7C: JMP    LFAE3   
LFA7F: LDA    #$AC    
       STA    $F4     
       LDA    $E7     
       AND    #$3F    
       BNE    LFA9A   
       LDA    $E6     
       AND    #$03    
       CMP    #$03    
       BEQ    LFA9A   
       TAX            
       LDA    $B0,X   
       STA    $B3,X   
       EOR    #$C0    
       STA    $B0,X   
LFA9A: LDY    $E8     
       LDA    LFF64,Y 
       AND    #$80    
       BNE    LFAAD   
       LDX    #$02    
LFAA5: JSR    LFDE4   
       DEX            
       BPL    LFAA5   
       BMI    LFAE3   
LFAAD: LDX    #$02    
LFAAF: LDA    $B6,X   
       AND    #$20    
       BNE    LFABA   
       JSR    LFDE4   
       BNE    LFAE0   
LFABA: LDA    $B0,X   
       STA    $D2     
       LDA    $A1,X   
       STA    $D0     
       JSR    LFB7A   
       LDA    $D0     
       STA    $A1,X   
       LDA    $D2     
       STA    $B0,X   
       LDA    $B3,X   
       STA    $D2     
       LDA    $A4,X   
       STA    $D0     
       JSR    LFB7A   
       LDA    $D0     
       STA    $A4,X   
       LDA    $D2     
       STA    $B3,X   
LFAE0: DEX            
       BPL    LFAAF   
LFAE3: LDA    INTIM   
       BNE    LFAE3   
       JMP    LF019   
LFAEB: LDA    #$03    
       STA    $EC     
       LDA    #$1F    
       STA    $F3     
       LDA    #$26    
       STA    $BF     
       LDA    #$00    
       STA    $BD     
       STA    $C2     
       STA    $CB     
       STA    $96     
       STA    $9A     
       RTS            

LFB04: LDA    $E8     
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $E7     
       AND    LFFF6,Y 
       RTS            

LFB10: LDA    $86     
       JSR    LFBC1   
       STA    $D2     
       LDA    $86     
       JSR    LFB4B   
       JSR    LFBC1   
       STA    $D0     
       LDA    $87     
       JSR    LFBC1   
       STA    $D6     
       LDA    $87     
       JSR    LFB4B   
       JSR    LFBC1   
       STA    $D4     
       LDA    $88     
       JSR    LFBC1   
       STA    $DA     
       LDA    $88     
       JSR    LFB4B   
       JSR    LFBC1   
       STA    $D8     
       RTS            

LFB44: EOR    #$07    
       JMP    LFB4B   
LFB49: EOR    #$70    
LFB4B: TAY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $DC     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $DC     
       RTS            

LFB5A: STA    WSYNC   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
LFB61: DEY            
       BPL    LFB61   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

LFB69: STA    WSYNC   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
LFB70: DEY            
       BPL    LFB70   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFB7A: BIT    $D2     
       BMI    LFBA3   
       BVS    LFB83   
       JMP    LFBC0   
LFB83: LDA    $D0     
       JSR    LFB49   
       CMP    $F4     
       BCC    LFB92   
       LDA    #$80    
       STA    $D2     
       BNE    LFBC0   
LFB92: LDA    $D0     
       JSR    LFBFA   
       STA    $D0     
       LDA    $D1     
       JSR    LFBFA   
       STA    $D1     
       JMP    LFBC0   
LFBA3: LDA    $D0     
       JSR    LFB49   
       CMP    #$23    
       BCS    LFBB2   
       LDA    #$40    
       STA    $D2     
       BNE    LFBC0   
LFBB2: LDA    $D0     
       JSR    LFBE3   
       STA    $D0     
       LDA    $D1     
       JSR    LFBE3   
       STA    $D1     
LFBC0: RTS            

LFBC1: AND    #$0F    
       TAY            
       LDA    LFF5A,Y 
       RTS            

LFBC8: JSR    LFB49   
       CLC            
       ADC    #$08    
       JSR    LFB44   
       STA    $A6     
       AND    #$F0    
       CMP    #$70    
       BNE    LFBE0   
       LDA    $A6     
       SEC            
       SBC    #$10    
       STA    $A6     
LFBE0: LDA    $A6     
       RTS            

LFBE3: JSR    LFB49   
       STA    $DD     
       AND    #$0F    
       CMP    #$03    
       BPL    LFBF0   
       DEC    $DD     
LFBF0: DEC    $DD     
       DEC    $DD     
       LDA    $DD     
       JSR    LFB44   
       RTS            

LFBFA: JSR    LFB49   
       STA    $DD     
       AND    #$0F    
       CMP    #$0E    
       BMI    LFC07   
       INC    $DD     
LFC07: INC    $DD     
       INC    $DD     
       LDA    $DD     
       JSR    LFB44   
       RTS            

LFC11: LDA    $E7     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$01    
       TAX            
       LDA    LFFE0,X 
       RTS            

LFC1E: BIT    $B6     
       BVS    LFC28   
       BPL    LFC2E   
       LDA    $A1     
       BNE    LFC2A   
LFC28: LDA    $A4     
LFC2A: STA    $91     
       STA    $93     
LFC2E: RTS            

LFC2F: LDA    #$19    
       STA    $AB     
       LDA    #$0A    
       STA    $E9     
       LDA    #$00    
       STA    $EA     
       STA    $CB     
       STA    $96     
       STA    $B6     
       STA    $B7     
       STA    $B8     
       STA    $97     
       STA    $EC     
       STA    $BC     
       STA    $BD     
       STA    $F3     
       LDA    #$10    
       STA    $BE     
       STA    $BF     
       LDA    #$FF    
       STA    $EE     
       LDA    #$00    
       STA    $C9     
       RTS            

LFC5E: LDA    #$00    
       STA    $BD     
       LDA    #$1D    
       STA    $BF     
       RTS            

LFC67: LDA    #$00    
       STA    $BC     
       LDA    #$00    
       STA    $BE     
       RTS            

LFC70: .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
LFC80: .byte $16,$16,$16,$0D,$0D,$86,$86,$86,$7E,$24,$66,$FF,$FF,$66,$24,$18
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $6C,$E8,$B1,$EB,$6E,$3F,$CF,$C3,$36,$1B,$8E,$EB,$76,$FC,$F3,$C3
       .byte $36,$2C,$6E,$2A,$3F,$1B,$31,$E0,$68,$34,$B6,$54,$FC,$E8,$8E,$07
       .byte $91,$9C,$C6,$32,$1F,$1A,$07,$03,$89,$9A,$D3,$54,$FC,$AC,$F0,$E0
       .byte $31,$23,$95,$CB,$E6,$FD,$78,$30,$8C,$C4,$A9,$D3,$67,$BF,$1E,$0C
       .byte $C3,$81,$18,$BE,$E7,$FF,$FF,$3C,$66,$C3,$EB,$A5,$FF,$BE,$18,$00
       .byte $18,$C9,$6D,$25,$FF,$AA,$7F,$3E,$18,$3C,$5A,$BD,$66,$DB,$81,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $42,$52,$52,$50,$14,$15,$85,$A1,$A8,$2A,$0A,$42,$52,$50,$50,$10
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$66,$5A,$BD,$BD,$5A,$66,$18,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$38,$0C,$7D,$FD,$BF,$BE,$30,$1C,$E1,$31,$3F,$3E
       .byte $7C,$FC,$8C,$87
LFDE4: LDA    $A1,X   
       STA    $D0     
       LDA    $A4,X   
       STA    $D1     
       LDA    $B0,X   
       STA    $D2     
       JSR    LFB7A   
       LDA    $D0     
       STA    $A1,X   
       LDA    $D1     
       STA    $A4,X   
       LDA    $D2     
       STA    $B0,X   
       RTS            

LFE00: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$7E,$18,$18,$18,$18,$78,$38,$18
       .byte $7E,$60,$30,$0C,$06,$46,$46,$3C,$3C,$46,$46,$1E,$1C,$46,$46,$3C
       .byte $0C,$0C,$7E,$4C,$4C,$2C,$1C,$0C,$3C,$46,$06,$06,$7C,$40,$40,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$30,$30,$18,$18,$0C,$06,$46,$7E
       .byte $3C,$66,$66,$66,$3C,$66,$66,$3C,$3C,$66,$06,$06,$3E,$66,$66,$3C
       .byte $7E,$24,$66,$FF,$FF,$66,$24,$18,$00,$00,$00,$FF,$FF,$00,$00,$00
       .byte $26,$26,$18,$18,$92,$72,$D6,$C6,$C6,$C6,$C6,$D6,$92,$18,$26,$26
       .byte $96,$96,$94,$94,$92,$52,$56,$56,$56,$56,$56,$56,$C2,$C4,$C6,$C6
LFE80: .byte $08,$1C,$1C,$3E,$3E,$7F,$7F,$FF,$AA,$D5,$FF,$7F,$3F,$1F,$07,$01
LFE90: .byte $10,$38,$38,$7C,$7C,$FE,$FE,$FF,$AB,$55,$FF,$FE,$FC,$F8,$E0,$80
       .byte $EA,$B3,$AE,$AF,$B3,$55,$38,$38,$5B,$CE,$75,$F5,$CE,$55,$1C,$1C
       .byte $6C,$E8,$B1,$EB,$6E,$3F,$CF,$C3,$88,$CC,$67,$CE,$99,$F0,$7C,$C0
       .byte $02,$06,$19,$32,$1F,$15,$07,$03,$A0,$B0,$58,$2C,$FC,$54,$F0,$E0
       .byte $0D,$1A,$37,$32,$3D,$19,$08,$08,$B0,$5C,$EC,$4C,$BC,$18,$10,$10
       .byte $A5,$3C,$E7,$FF,$3C,$55,$81,$81,$C3,$81,$18,$BE,$E7,$FF,$FF,$3C
       .byte $2A,$6B,$95,$22,$FF,$55,$7F,$3E,$00,$81,$DB,$66,$BD,$5A,$3C,$18
LFF00: .byte $4F,$4E,$4D,$4C,$4B,$4A,$49,$48,$47,$46,$45,$44,$43,$42,$41,$00
       .byte $34,$34,$00,$CF,$CF,$CD,$CD,$CB,$C9,$C6,$C4,$C4,$00,$8F,$8F,$8A
       .byte $8A,$88,$86,$83,$81,$00,$4F,$4F,$4F,$4F,$4F,$4F,$00
LFF2D: .byte $14,$12,$10,$0E,$0C,$0A,$08,$06,$24,$26,$28,$2A,$2C,$2E,$30,$00
       .byte $BF,$BA,$00,$3F,$3D,$3B,$30,$6E,$6C,$6A,$68,$66,$00,$BF,$BF,$BF
       .byte $9F,$9F,$7F,$7F,$7F,$00,$6F,$6D,$6B,$69,$67,$65,$00
LFF5A: .byte $00,$08,$10,$18,$20,$28,$30,$38,$40,$48
LFF64: .byte $00,$05,$0A,$0F,$90,$95,$9A,$9F,$A0,$A5,$AA,$AF,$90,$A1,$9E,$AF
       .byte $94,$A5,$9E,$AF,$98,$A9,$9E,$AF,$9C,$AD,$9E,$AF,$98,$AD,$AA,$9F
       .byte $A8,$AD,$9A,$AF,$AC,$9D,$AE,$AF,$AC,$AD,$AE,$AF,$AC,$AD,$AE,$AF
LFF94: .byte $A0,$B0,$C0,$D0
LFF98: .byte $A8,$B8,$C8,$D8
LFF9C: .byte $E0,$E8,$F0,$F8
LFFA0: .byte $00,$01,$03,$07,$0F,$1F,$3F,$7F
LFFA8: .byte $18,$98,$C8,$48
LFFAC: .byte $00,$00,$04,$54
LFFB0: .byte $F8,$E0,$40,$90
LFFB4: .byte $E2,$EA
LFFB6: .byte $D4,$DC
LFFB8: .byte $00,$00,$01,$03,$26,$26,$34,$34,$42,$42,$42,$42,$C6,$C6,$C6,$D6
       .byte $92,$18,$26,$26,$48,$46,$16,$14,$94,$96,$98,$98,$16,$16,$14,$12
       .byte $F2,$F4,$F6,$F8
LFFDC: .byte $BC,$C4,$CC,$D4
LFFE0: .byte $FC,$FE,$28,$14,$28,$14,$28,$14,$28,$14,$55,$AA,$55,$AA,$55,$AA
       .byte $55,$AA
LFFF2: .byte $21,$42,$63,$84
LFFF6: .byte $7F,$3F,$1F,$0F,$07,$03,$00,$F0,$AA,$AA
