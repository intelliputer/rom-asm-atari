; Disassembly of roms/Super Breakout.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Super Breakout.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUPF  =  $08
CTRLPF  =  $0A
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESM0   =  $12
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXP1FB  =  $33
CXM1FB  =  $35
CXBLPF  =  $36
INPT0   =  $38
INPT1   =  $39
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $4C,$6E,$F4
LF003: LDY    #$08    
LF005: DEY            
       BPL    LF005   
       NOP            
       LDY    #$04    
       SEC            
       BCS    LF00F   
LF00E: CLC            
LF00F: NOP            
       NOP            
LF011: LDA    ($E3),Y 
       AND    #$F0    
       STA.w  $00FB   
       LDA    ($E5),Y 
       AND    #$0F    
       ORA    $FB     
       STA    PF1     
       LDA    ($E7),Y 
       AND    #$0F    
       STA    $FB     
       LDA    ($E9),Y 
       AND    #$F0    
       ORA    $FB     
       STA    PF2     
       LDA    ($EB),Y 
       AND    #$F0    
       STA    PF1     
       LDA    ($ED),Y 
       AND    #$0F    
       STA    PF2     
       BCS    LF00E   
       SEC            
       DEY            
       BPL    LF011   
       INY            
       STY    PF1     
       STY    PF2     
       LDA    #$11    
       STA    CTRLPF  
       LDX    #$1F    
       TXS            
       STA    WSYNC   
       LDA    LF303   
       EOR    $FA     
       AND    $F9     
       STA    COLUPF  
       LDA    #$3F    
       STA    PF1     
       DEY            
       STY    PF2     
       STY    GRP0    
       STY    ENAM0   
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$00    
       LDA    $C4     
       AND    #$20    
       NOP            
       BEQ    LF072   
       JMP    LF309   
LF072: JMP    LF109   
LF075: STA    WSYNC   
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       SEC            
       PHP            
       TYA            
       SBC    $CD     
       AND    #$FC    
       PHP            
       PLA            
       PLA            
       NOP            
       NOP            
       NOP            
       NOP            
       LDX    $F3     
LF08D: LDA    INPT0   
       BMI    LF0BF   
       STY.w  $00DA   
LF094: INY            
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       SEC            
       PHP            
       TYA            
       SBC    $CD     
       AND    #$FC    
       PHP            
       TYA            
       SEC            
       SBC.w  $00D8   
       AND    #$FC    
       BEQ    LF0C1   
       TYA            
       SEC            
       SBC    #$9A    
LF0B0: AND    #$FC    
       BNE    LF0C5   
       LDA    $DB     
       STA    GRP1    
       PLA            
       PLA            
       DEX            
       BPL    LF08D   
       BMI    LF0CE   
LF0BF: BMI    LF094   
LF0C1: NOP            
       JMP    LF0B0   
LF0C5: LDA    #$00    
       STA    GRP1    
       PLA            
       PLA            
       DEX            
       BPL    LF08D   
LF0CE: JMP    LF4B2   
LF0D1: CPX    #$02    
       ADC    #$01    
       LDY    #$00    
       SEC            
LF0D8: INY            
       SBC    #$0F    
       BCS    LF0D8   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LF0E9: DEY            
       BPL    LF0E9   
       STA    RESP0,X 
       RTS            

LF0EF: .byte $02,$04,$04,$08
LF0F3: .byte $23,$27,$27,$2B
LF0F7: .byte $C0,$F0,$F0,$FC
LF0FB: .byte $0C,$16,$0C,$0E,$18
LF100: .byte $EE,$F4,$EE,$E8,$DC
LF105: BMI    LF133   
LF107: BMI    LF14D   
LF109: LDA    $E2     
       CMP    #$01    
       BEQ    LF112   
       JMP    LF209   
LF112: STA    WSYNC   
       LDX    #$00    
       STX    PF1     
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       TYA            
       SEC            
       SBC    $CD     
       AND    #$FC    
       PHP            
       STX    PF2     
       PLA            
       PLA            
       LDX    #$13    
       LDA    INPT0   
       BMI    LF105   
       STY.w  $00DA   
LF133: INY            
LF134: STA    WSYNC   
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       TYA            
       SEC            
       SBC    $CD     
       AND    #$FC    
       PHP            
       PLA            
       PLA            
       LDA    INPT0   
       BMI    LF107   
       STY.w  $00DA   
LF14D: INY            
       DEX            
       BPL    LF134   
       LDX    #$00    
       LDA    LF1EC,X 
       EOR    $FA     
       AND    $F9     
       STA    COLUPF  
       STA    $FB     
LF15E: NOP            
       LDA    $FB     
LF161: TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       TYA            
       SEC            
       SBC    $CD     
       AND    #$FC    
       PHP            
       LDA    $80,X   
       STA.w  $000E   
       LDA    $90,X   
       STA    PF2     
       PLA            
       PLA            
       LDA    $A0,X   
       STA    PF2     
       LDA    $B0,X   
       STA    PF1     
       LDA    INPT0   
       BMI    LF1E8   
       STY.w  $00DA   
LF189: INY            
       NOP            
       LDA    $FB     
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       TYA            
       SEC            
       SBC    $CD     
       AND    #$FC    
       PHP            
       LDA    $80,X   
       STA    PF1     
       LDA    $90,X   
       STA    PF2     
       PLA            
       PLA            
       LDA    $A0,X   
       STA    PF2     
       LDA    $B0,X   
       STA    PF1     
       INY            
       DEC    $EF     
       BPL    LF15E   
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       TYA            
       SEC            
       SBC    $CD     
       AND    #$FC    
       PHP            
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       INX            
       LDA    LF1EC,X 
       EOR    $FA     
       AND    $F9     
       STA    COLUPF  
       PLA            
       PLA            
       LDA    INPT0   
       BMI    LF1EA   
       STY.w  $00DA   
LF1D9: INY            
       LDA    #$01    
       STA    $EF     
       DEC    $F0     
       BPL    LF1E5   
       JMP    LF075   
LF1E5: JMP    LF161   
LF1E8: BMI    LF189   
LF1EA: BMI    LF1D9   
LF1EC: .byte $44 ;.NOP
       .byte $44 ;.NOP
       STX    $86     
       .byte $54 ;.NOP
       .byte $54 ;.NOP
       CPY    $C4     
       DEY            
LF1F5: BRK            
       ORA    ($02,X) 
       .byte $04 ;.NOP
       PHP            
       .byte $FF ;.ISB
LF1FB: .byte $03 ;.SLO
       ORA    ($04,X) 
       .byte $04 ;.NOP
       .byte $07 ;.SLO
       ASL    VBLANK  
       PHP            
LF203: BMI    LF22A   
LF205: BMI    LF244   
LF207: BMI    LF280   
LF209: STA    WSYNC   
       LDX    #$00    
       STX    PF1     
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       TYA            
       SEC            
       SBC    $CD     
       AND    #$FC    
       PHP            
       STX    PF2     
       PLA            
       PLA            
       LDX    #$13    
       LDA    INPT1   
       BMI    LF203   
       STY.w  $00DA   
LF22A: INY            
LF22B: STA    WSYNC   
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       TYA            
       SEC            
       SBC    $CD     
       AND    #$FC    
       PHP            
       PLA            
       PLA            
       LDA    INPT1   
       BMI    LF205   
       STY.w  $00DA   
LF244: INY            
       DEX            
       BPL    LF22B   
       LDX    #$00    
       LDA    LF1EC,X 
       EOR    $FA     
       AND    $F9     
       STA    COLUPF  
       STA    $FB     
LF255: NOP            
       LDA    $FB     
LF258: TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       TYA            
       SEC            
       SBC    $CD     
       AND    #$FC    
       PHP            
       LDA    $80,X   
       STA.w  $000E   
       LDA    $90,X   
       STA    PF2     
       PLA            
       PLA            
       LDA    $A0,X   
       STA    PF2     
       LDA    $B0,X   
       STA    PF1     
       LDA    INPT1   
       BMI    LF207   
       STY.w  $00DA   
LF280: INY            
       NOP            
       LDA    $FB     
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       TYA            
       SEC            
       SBC    $CD     
       AND    #$FC    
       PHP            
       LDA    $80,X   
       STA    PF1     
       LDA    $90,X   
       STA    PF2     
       PLA            
       PLA            
       LDA    $A0,X   
       STA    PF2     
LF2A0: LDA    $B0,X   
       STA    PF1     
       INY            
       DEC    $EF     
       BPL    LF255   
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       TYA            
       SEC            
       SBC    $CD     
       AND    #$FC    
       PHP            
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       INX            
       LDA    LF1EC,X 
       EOR    $FA     
       AND    $F9     
       STA    COLUPF  
       PLA            
       PLA            
       LDA    INPT1   
       BMI    LF2DF   
       STY.w  $00DA   
LF2D0: INY            
       LDA    #$01    
       STA    $EF     
       DEC    $F0     
       BPL    LF2DC   
       JMP    LF40D   
LF2DC: JMP    LF258   
LF2DF: BMI    LF2D0   
LF2E1: INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       DEC    $C4     
       .byte $C2 ;.NOP
       CLI            
       LSR    $54,X   
       .byte $52 ;.JAM
       DEY            
       STX    $84     
       .byte $82 ;.NOP
       PHA            
       LSR    $44     
LF2FC: .byte $42 ;.JAM
LF2FD: BVC    LF2A0   
       BRK            
       BRK            
       BRK            
       BRK            
LF303: .byte $04 ;.NOP
       CLC            
       CLC            
       BRK            
LF307: BMI    LF320   
LF309: STA    WSYNC   
       LDX    #$00    
       STX    PF1     
       STX    PF2     
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       PLA            
       LDA    INPT0   
       BMI    LF307   
       STY.w  $00DA   
LF320: INY            
       LDA    LF2FC   
       EOR    $FA     
       AND    $F9     
       STA    COLUPF  
       LDA    $F5     
       STA    $F0     
       LDA    $C5     
       AND    #$04    
       BNE    LF339   
       JMP    LF3BD   
LF337: BMI    LF366   
LF339: NOP            
       NOP            
       NOP            
       LDA    $FB     
       LDA    $FB     
LF340: NOP            
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       NOP            
       NOP            
       LDA    $FB     
       LDA    $80,X   
       STA    PF1     
       LDA    $90,X   
       STA    PF2     
       PLA            
       NOP            
       NOP            
LF357: LDA    $A0,X   
       STA    PF2     
       LDA    $B0,X   
       STA    PF1     
       LDA    INPT0   
       BMI    LF337   
       STY.w  $00DA   
LF366: INY            
       DEC    $EF     
       BNE    LF340   
       LDA    $FB     
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       INX            
       PLA            
       LDA    INPT0   
       BMI    LF3A5   
       STY.w  $00DA   
LF383: INY            
       LDA    #$04    
       STA    $EF     
       DEC    $F2     
       BMI    LF3F4   
       STX    $FB     
       LDX    $F2     
       LDA    LF2E1,X 
       LDX    $FB     
       EOR    $FA     
       AND    $F9     
       STA    COLUPF  
       DEC    $F0     
       BPL    LF3F7   
       LDA    #$03    
       STA    $F0     
       BNE    LF3A9   
LF3A5: BMI    LF383   
LF3A7: BMI    LF3B8   
LF3A9: TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       PLA            
       LDA    INPT0   
       BMI    LF3A7   
       STY.w  $00DA   
LF3B8: INY            
       DEC    $EF     
       BMI    LF3C2   
LF3BD: STA    WSYNC   
       JMP    LF3A9   
LF3C2: LDA    #$04    
       STA    $EF     
       DEC    $F2     
       BMI    LF3F4   
       STX    $FB     
       LDX    $F2     
       LDA    LF2E1,X 
       EOR    $FA     
       AND    $F9     
       STA    COLUPF  
       LDX    $FB     
       DEC    $F0     
       BPL    LF3A9   
       LDA    #$03    
       STA    $F0     
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       LDA    $80,X   
       STA    PF1     
       LDA    $90,X   
       STA    PF2     
       PLA            
       JMP    LF357   
LF3F4: JMP    LF075   
LF3F7: NOP            
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       PHP            
       NOP            
       LDA    $80,X   
       STA    PF1     
       LDA    $90,X   
       STA.w  $000F   
       PLA            
       JMP    LF357   
LF40D: STA    WSYNC   
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       SEC            
       PHP            
       TYA            
       SBC    $CD     
       AND    #$FC    
       PHP            
       PLA            
       PLA            
       NOP            
       NOP            
       NOP            
       NOP            
       LDX    $F3     
LF425: LDA    INPT1   
       BMI    LF455   
       STY.w  $00DA   
LF42C: INY            
       TYA            
       SEC            
       SBC    $C7     
       AND    #$FC    
       SEC            
       PHP            
       TYA            
       SBC    $CD     
       AND    #$FC    
       PHP            
       TYA            
       SEC            
       SBC.w  $00D8   
       AND    #$FC    
       BEQ    LF457   
       TYA            
       SEC            
       SBC    #$9A    
LF448: AND    #$FC    
       BNE    LF45B   
       LDA    $DB     
       STA    GRP1    
       PLA            
       PLA            
       DEX            
       BPL    LF425   
LF455: BMI    LF42C   
LF457: NOP            
       JMP    LF448   
LF45B: LDA    #$00    
       STA    GRP1    
       PLA            
       PLA            
       DEX            
       BPL    LF425   
       BMI    LF4B2   
LF466: BRK            
       BPL    LF481   
       .byte $04 ;.NOP
       ORA    VBLANK  
       ORA    ($04,X) 

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
       STA    SWACNT  
LF476: STA    VSYNC,X 
       INX            
       BNE    LF476   
       DEX            
       TXS            
       LDA    #$30    
       STA    NUSIZ0  
LF481: LDA    #$15    
       STA    NUSIZ1  
       LDA    #$06    
       STA    AUDC0   
       LDA    #$05    
       STA    AUDF0   
       LDY    #$04    
       STA    WSYNC   
       DEY            
LF492: DEY            
       BPL    LF492   
       NOP            
       STA    RESP0   
       LDY    #$05    
LF49A: DEY            
       BPL    LF49A   
       NOP            
       NOP            
       STA    RESM0   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       INC    $C1     
       JSR    LFDC9   
LF4B2: LDX    #$37    
       STA    WSYNC   
       STX    TIM64T  
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    ENAM0   
       STX    ENAM1   
       STX    ENABL   
       DEX            
       TXS            
       INC    $C2     
       BNE    LF4CD   
       INC    $C3     
LF4CD: LDA    #$82    
LF4CF: LDX    INTIM   
       BNE    LF4CF   
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STX    CTRLPF  
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$2C    
       STA    WSYNC   
       STX    VSYNC   
       STY    TIM64T  
       LDY    #$00    
       LDA    #$80    
       LDX    $E2     
       CPX    #$02    
       BEQ    LF4F4   
       LSR            
LF4F4: AND    SWCHB   
       BNE    LF4FB   
       INY            
       INY            
LF4FB: LDA    $C5     
       AND    #$10    
       BNE    LF502   
       INY            
LF502: STY    $EB     
       LDA    LF0F7,Y 
       STA    $DB     
       LDA    $C4     
       AND    #$22    
       CMP    #$02    
       BNE    LF51F   
       EOR    $C4     
       STA    $C4     
       JSR    LFE49   
       LDA    #$05    
       STA    $FC     
       JMP    LFC05   
LF51F: LDA    $C4     
       ROR            
       BCC    LF52D   
       ASL            
       STA    $C4     
       JSR    LFCF8   
       JMP    LFC05   
LF52D: LDX    $FC     
       BEQ    LF541   
       LDA    $C2     
       AND    #$07    
       BNE    LF53A   
       DEC    $FC     
       DEX            
LF53A: LDA    LF1F5,X 
       STA    AUDV0   
       BNE    LF545   
LF541: LDA    #$00    
       STA    AUDV0   
LF545: JSR    LFDBA   
       BCS    LF54D   
       JMP    LFC05   
LF54D: LDA    $C4     
       AND    #$18    
       BNE    LF556   
LF553: JMP    LF719   
LF556: LDA    $D0     
       BEQ    LF553   
       LDA    CXM1P   
       AND    #$40    
       BEQ    LF56B   
       LDA    $D0     
       BMI    LF56B   
       LDA    $CC     
       SEC            
       SBC    $D9     
       BCS    LF56E   
LF56B: JMP    LF5E5   
LF56E: STA    $FB     
       LDX    #$00    
       LDA    $F6     
       CMP    #$30    
       BCC    LF579   
       INX            
LF579: CMP    #$0E    
       BCC    LF57E   
       INX            
LF57E: CMP    #$08    
       BCC    LF583   
       INX            
LF583: CPX    #$03    
       BNE    LF58C   
       LDA    $C4     
       BMI    LF58C   
       INX            
LF58C: LDA    $FB     
       LDY    $EB     
       CMP    LF0EF,Y 
       LDA    LF0FB,X 
       BCS    LF59D   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF59D: STA    $CF     
       LDA    LF100,X 
       STA    $D0     
       LDA    $F8     
       BNE    LF5D7   
       LDA    $C4     
       AND    #$20    
       BNE    LF5D7   
       LDA    $C4     
       ORA    #$02    
       STA    $C4     
       AND    #$08    
       BEQ    LF5D7   
       LDA    $CC     
       STA    $C6     
       LDA    $CD     
       STA    $C7     
       LDA    $CE     
       STA    $C8     
       LDA    $CF     
       STA    $C9     
       LDA    $D0     
       STA    $CA     
       LDA    #$40    
       STA    $CB     
       LDA    #$0A    
       STA    AUDV0   
       JMP    LF9C3   
LF5D7: LDA    $F6     
       BMI    LF5DD   
       INC    $F6     
LF5DD: LDA    #$0A    
       STA    AUDV0   
       LDA    #$40    
       STA    $D1     
LF5E5: LDA    $CD     
       CMP    #$A1    
       BCC    LF5FE   
       CMP    #$F0    
       BCS    LF602   
       LDA    #$00    
       STA    $D0     
       STA    $CF     
       LDA    #$50    
       STA    $CC     
       DEC    $F7     
       JMP    LF719   
LF5FE: CMP    #$01    
       BCS    LF61D   
LF602: LDA    $D0     
       EOR    #$FF    
       SEC            
       ADC    #$00    
       STA    $D0     
       LDA    $C4     
       BMI    LF615   
       LDA    $C5     
       ORA    #$10    
       STA    $C5     
LF615: LDA    #$0A    
       STA    AUDV0   
       LDA    #$40    
       STA    $D1     
LF61D: LDA    $CC     
       CMP    #$18    
       BCS    LF629   
       LDA    $CF     
       BMI    LF631   
       BPL    LF63C   
LF629: CMP    #$7E    
       BCC    LF63C   
       LDA    $CF     
       BMI    LF63C   
LF631: EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $CF     
       LDA    #$0A    
       STA    AUDV0   
LF63C: LDA    CXM1FB  
       BPL    LF69C   
       LDA    $D1     
       AND    #$40    
       BNE    LF69F   
       LDA    $D1     
       AND    #$20    
       BEQ    LF69C   
       LDA    $D1     
       AND    #$80    
       BNE    LF65E   
       LDA    $CC     
       CMP    #$6F    
       BCS    LF668   
       CMP    #$60    
       BCC    LF66E   
       BCS    LF67B   
LF65E: LDA    $CC     
       CMP    #$30    
       BCC    LF66E   
       CMP    #$3F    
       BCC    LF67B   
LF668: LDA    $CF     
       BMI    LF67B   
       BPL    LF672   
LF66E: LDA    $CF     
       BPL    LF67B   
LF672: EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $CF     
       BNE    LF69C   
LF67B: LDA    $CD     
       CMP    #$1F    
       BCS    LF687   
       LDA    $D0     
       BMI    LF693   
       BPL    LF69C   
LF687: CMP    #$25    
       BCC    LF69C   
       CMP    #$33    
       BEQ    LF69C   
       LDA    $D0     
       BMI    LF69C   
LF693: LDA    $D0     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $D0     
LF69C: JMP    LF719   
LF69F: LDA    $CD     
       LDX    $D0     
       BMI    LF6A8   
       CLC            
       ADC    #$02    
LF6A8: LDX    #$00    
       SEC            
       SBC    #$14    
LF6AD: SBC    #$05    
       BCC    LF6B4   
       INX            
       BCS    LF6AD   
LF6B4: TXA            
       BMI    LF719   
       CMP    #$08    
       BCS    LF719   
       STA    $FB     
       LDA    $CC     
       SEC            
       SBC    #$17    
       BCC    LF719   
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF94,X 
       CLC            
       ADC    $FB     
       TAY            
       LDA    LFFA2,X 
       EOR    #$FF    
       AND.wy $0080,Y 
       BEQ    LF719   
       LDA.wy $0080,Y 
       AND    LFFA2,X 
       STA.wy $0080,Y 
       DEC    $F8     
       LDX    $FB     
       LDA    $E0     
       LDY    $F7     
       CLC            
LF6EB: ADC    LFFB0,X 
       DEY            
       BNE    LF6EB   
       STA    $E0     
       STY    $D1     
       LDA    $D0     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $D0     
       LDA    LFFB0,X 
       CMP    #$05    
       BCC    LF719   
       LDA    $F6     
       CMP    #$30    
       BCS    LF719   
       LDA    $CF     
       ASL            
       STA    $CF     
       LDA    $D0     
       ASL            
       STA    $D0     
       LDA    #$31    
       STA    $F6     
LF719: LDA    $CA     
       BNE    LF720   
       JMP    LF990   
LF720: LDA    CXP1FB  
       AND    #$40    
       BEQ    LF731   
       LDA    $CA     
       BMI    LF731   
       LDA    $C6     
       SEC            
       SBC    $D9     
       BCS    LF734   
LF731: JMP    LF7D8   
LF734: STA    $FB     
       LDX    #$00    
       LDA    $F6     
       CMP    #$30    
       BCC    LF73F   
       INX            
LF73F: CMP    #$0E    
       BCC    LF744   
       INX            
LF744: CMP    #$08    
       BCC    LF749   
       INX            
LF749: CPX    #$03    
       BNE    LF752   
       LDA    $C4     
       BMI    LF752   
       INX            
LF752: LDA    $FB     
       LDY    $EB     
       CMP    LF0EF,Y 
       LDA    LF0FB,X 
       BCS    LF763   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF763: STA    $C9     
       LDA    LF100,X 
       STA    $CA     
       LDA    $C4     
       AND    #$20    
       BNE    LF77A   
       LDA    $F8     
       BNE    LF77A   
       LDA    $C4     
       ORA    #$02    
       STA    $C4     
LF77A: LDA    $F6     
       BNE    LF7AA   
       LDA    $C4     
       AND    #$10    
       BEQ    LF7AA   
       LDA    #$45    
       STA    $CD     
       LDA    $C2     
       AND    #$7F    
       CLC            
       ADC    #$17    
       CMP    #$7E    
       BCC    LF795   
       SBC    #$34    
LF795: STA    $CC     
       LDA    #$10    
       STA    $D0     
       LDA    #$10    
       STA    $CF     
       LDA    $C2     
       ROR            
       BCS    LF7A8   
       LDA    #$F0    
       STA    $CF     
LF7A8: INC    $F7     
LF7AA: LDA    $F6     
       BMI    LF7B0   
       INC    $F6     
LF7B0: LDA    $C4     
       AND    #$20    
       BEQ    LF7D0   
       DEC    $CC     
       BPL    LF7C4   
       LDA    $C5     
       ORA    #$01    
       STA    $C5     
       LDA    $CD     
       STA    $CC     
LF7C4: LDA    $F6     
       AND    #$07    
       BNE    LF7D0   
       LDA    $CD     
       BEQ    LF7D0   
       DEC    $CD     
LF7D0: LDA    #$0A    
       STA    AUDV0   
       LDA    #$40    
       STA    $CB     
LF7D8: LDA    $C7     
       CMP    #$A1    
       BCC    LF7F1   
       CMP    #$F0    
       BCS    LF7F5   
       LDA    #$00    
       STA    $CA     
       STA    $C9     
       LDA    #$50    
       STA    $C6     
       DEC    $F7     
       JMP    LF990   
LF7F1: CMP    #$01    
       BCS    LF820   
LF7F5: LDA    $CA     
       BPL    LF820   
       EOR    #$FF    
       SEC            
       ADC    #$00    
       STA    $CA     
       LDA    $C4     
       BMI    LF80A   
       LDA    $C5     
       ORA    #$10    
       STA    $C5     
LF80A: LDX    #$40    
       LDA    $C4     
       AND    #$20    
       BEQ    LF81A   
       LDA    $C5     
       AND    #$04    
       BEQ    LF81A   
       LDX    #$00    
LF81A: STX    $CB     
       LDA    #$0A    
       STA    AUDV0   
LF820: LDA    $C6     
       CMP    #$18    
       BCS    LF82C   
       LDA    $C9     
       BMI    LF834   
       BPL    LF83F   
LF82C: CMP    #$7E    
       BCC    LF83F   
       LDA    $C9     
       BMI    LF83F   
LF834: EOR    #$FF    
       SEC            
       ADC    #$00    
       STA    $C9     
       LDA    #$0A    
       STA    AUDV0   
LF83F: LDA    CXBLPF  
       BPL    LF84F   
       LDA    $C4     
       AND    #$20    
       BNE    LF852   
       LDA    $CB     
       AND    #$40    
       BNE    LF855   
LF84F: JMP    LF990   
LF852: JMP    LF8D6   
LF855: LDA    $C7     
       LDX    $CA     
       BMI    LF85E   
       CLC            
       ADC    #$02    
LF85E: LDX    #$00    
       SEC            
       SBC    #$14    
LF863: SBC    #$05    
       BCC    LF86A   
       INX            
       BCS    LF863   
LF86A: TXA            
       BMI    LF8D3   
       CMP    #$08    
       BCS    LF8D3   
       STA    $FB     
       LDA    $C6     
       SEC            
       SBC    #$17    
       BCC    LF8D3   
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF94,X 
       CLC            
       ADC    $FB     
       TAY            
       LDA    LFFA2,X 
       EOR    #$FF    
       AND.wy $0080,Y 
       BEQ    LF8D3   
       LDA.wy $0080,Y 
       AND    LFFA2,X 
       STA.wy $0080,Y 
       DEC    $F8     
       LDX    $FB     
       LDA    $E0     
       LDY    $F7     
       CLC            
LF8A1: ADC    LFFB0,X 
       DEY            
       BNE    LF8A1   
       STA    $E0     
       STY    $CB     
       LDA    $CA     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $CA     
       LDA    $C4     
       BMI    LF8D3   
       LDA    LFFB0,X 
       CMP    #$05    
       BCC    LF8D3   
       LDA    $F6     
       CMP    #$30    
       BCS    LF8D3   
       LDA    $C9     
       ASL            
       STA    $C9     
       LDA    $CA     
       ASL            
       STA    $CA     
       LDA    #$31    
       STA    $F6     
LF8D3: JMP    LF990   
LF8D6: LDA    $F6     
       BEQ    LF927   
       LDA    $C7     
       LDX    $CA     
       BMI    LF8E3   
       CLC            
       ADC    #$02    
LF8E3: LDX    #$00    
       SEC            
LF8E6: SBC    #$05    
       BCC    LF8ED   
       INX            
       BCS    LF8E6   
LF8ED: TXA            
       CMP    #$20    
       BCS    LF927   
       STA    $FB     
       STA    $E3     
       LDA    $C5     
       AND    #$04    
       STA    $E7     
       BEQ    LF905   
       LDA    $FB     
       CLC            
       ADC    #$04    
       STA    $E3     
LF905: LDA    #$03    
       SEC            
       SBC    $F5     
       STA    $E9     
       CLC            
       ADC    $E3     
       STA    $E5     
       TAX            
       LDA    LFFBF,X 
       BMI    LF927   
       LDX    $E7     
       BEQ    LF91E   
       SEC            
       SBC    $E9     
LF91E: STA    $E3     
       LDA    $C6     
       SEC            
       SBC    #$17    
       BCS    LF92A   
LF927: JMP    LF990   
LF92A: CMP    #$68    
       BCS    LF927   
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF94,X 
       CLC            
       ADC    $E3     
       TAY            
       LDA    LFFA2,X 
       EOR    #$FF    
       AND.wy $0080,Y 
       BEQ    LF990   
       LDA    $E5     
       LSR            
       LSR            
       LSR            
       CMP    $CB     
       BEQ    LF990   
       STA    $CB     
       LDA.wy $0080,Y 
       AND    LFFA2,X 
       STA.wy $0080,Y 
       LDA    $FB     
       LSR            
       LSR            
       TAX            
       LDA    $E0     
       CLC            
       ADC    LFFB8,X 
       STA    $E0     
       LDA    $CA     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $CA     
       LDA    LFFB8,X 
       CMP    #$05    
       BCC    LF990   
       LDA    $F6     
       CMP    #$30    
       BCS    LF990   
       LDA    $C9     
       ASL            
       STA    $C9     
       LDA    $CA     
       ASL            
       STA    $CA     
       LDA    #$31    
       STA    $F6     
       LDA    #$00    
       STA    $CC     
       LDA    #$02    
       STA    $CD     
LF990: LDA    $C4     
       AND    #$08    
       BEQ    LF9C3   
       LDA    $D1     
       AND    #$20    
       BEQ    LF9C3   
       LDA    $CD     
       CMP    #$33    
       BCS    LF9A6   
       CMP    #$16    
       BCS    LF9C3   
LF9A6: LDA    $C5     
       AND    #$82    
       BNE    LF9B2   
       INC    $F7     
       STA    $D1     
       BNE    LF9C3   
LF9B2: LDA    $CF     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $CF     
       LDA    $D0     
       EOR    #$FF    
       ADC    #$01    
       STA    $D0     
LF9C3: LDX    #$00    
LF9C5: LDY    #$00    
       LDA    $C9,X   
       BNE    LF9CE   
       JMP    LFA68   
LF9CE: BPL    LF9D2   
       LDY    #$FF    
LF9D2: STY    $E5     
       STA    $E7     
       LDA    $C8,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E3     
       LDA    $C6,X   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E3     
       STA    $E3     
       LDA    $C6,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $FB     
       LDA    $E3     
       CLC            
       ADC    $E7     
       STA    $E3     
       LDA    $FB     
       ADC    $E5     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C6,X   
       LDA    $E3     
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $C6,X   
       STA    $C6,X   
       LDA    $C8,X   
       AND    #$0F    
       STA    $C8,X   
       LDA    $E3     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $C8,X   
       STA    $C8,X   
       LDY    #$00    
       LDA    $CA,X   
       BPL    LFA23   
       LDY    #$FF    
LFA23: STY    $E5     
       STA    $E7     
       LDA    $C8,X   
       AND    #$0F    
       STA    $E3     
       LDA    $C7,X   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E3     
       STA    $E3     
       LDA    $C7,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $FB     
       LDA    $E3     
       CLC            
       ADC    $E7     
       STA    $E3     
       LDA    $FB     
       ADC    $E5     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C7,X   
       LDA    $E3     
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $C7,X   
       STA    $C7,X   
       LDA    $C8,X   
       AND    #$F0    
       STA    $C8,X   
       LDA    $E3     
       AND    #$0F    
       ORA    $C8,X   
       STA    $C8,X   
LFA68: TXA            
       CLC            
       ADC    #$06    
       TAX            
       CMP    #$12    
       BCS    LFA74   
       JMP    LF9C5   
LFA74: LDA    $C4     
       AND    #$08    
       BEQ    LFA87   
       LDX    #$05    
LFA7C: LDA    $CC,X   
       LDY    $D2,X   
       STA    $D2,X   
       STY    $CC,X   
       DEX            
       BPL    LFA7C   
LFA87: LDA    $C4     
       AND    #$20    
       BEQ    LFAE5   
       LDA    $C5     
       AND    #$01    
       BEQ    LFAE5   
       LDX    #$00    
       EOR    $C5     
       STA    $C5     
       LDY    #$05    
       STY    $FC     
       AND    #$04    
       BNE    LFAB3   
       INC    $F5     
       LDA    $F5     
       CMP    #$04    
       BNE    LFAE5   
       STX    $F5     
       LDA    $C5     
       ORA    #$04    
       STA    $C5     
       BNE    LFAC6   
LFAB3: INC    $F5     
       LDA    $F5     
       CMP    #$04    
       BNE    LFAC6   
       STX    $F5     
       LDA    $C5     
       AND    #$FB    
       STA    $C5     
       JMP    LFAE5   
LFAC6: LDX    #$0D    
LFAC8: LDA    $80,X   
       STA    $81,X   
       LDA    $90,X   
       STA    $91,X   
       LDA    $A0,X   
       STA    $A1,X   
       LDA    $B0,X   
       STA    $B1,X   
       DEX            
       BPL    LFAC8   
       LDA    #$3F    
       STA    $80     
       STA    $B0     
       STX    $A0     
       STX    $90     
LFAE5: LDA    $C5     
       AND    #$02    
       BEQ    LFB38   
       LDX    $E2     
       LDA    SWCHA   
       AND    LFFE2,X 
       BNE    LFB38   
       LDA    $C5     
       AND    #$7D    
       STA    $C5     
       LDA    #$45    
       STA    $C7     
       LDA    $C2     
       AND    #$7F    
       CLC            
       ADC    #$17    
       CMP    #$7E    
       BCC    LFB0C   
       SBC    #$34    
LFB0C: STA    $C6     
       LDA    #$10    
       STA    $CA     
       LDA    #$10    
       STA    $C9     
       LDA    $C2     
       ROR            
       BCS    LFB1F   
       LDA    #$F0    
       STA    $C9     
LFB1F: LDX    #$00    
       STX    $FA     
       STX    $F6     
       DEX            
       STX    $F9     
       LDA    $C4     
       AND    #$20    
       BEQ    LFB36   
       LDA    #$08    
       STA    $CC     
       LDA    #$06    
       STA    $CD     
LFB36: INC    $F7     
LFB38: LDA    $E0     
       BEQ    LFB6F   
       LDA    $F4     
       CMP    #$1A    
       BCS    LFB6F   
       LDA    $C2     
       AND    #$07    
       ADC    $FD     
       TAX            
       LDY    #$01    
       LDA    $E0     
       CMP    #$20    
       BCC    LFB53   
       LDY    #$04    
LFB53: STY    $FB     
       SEC            
       SBC    $FB     
       STA    $E0     
       LDA    $DD     
       SED            
       CLC            
       ADC    $FB     
       STA    $DD     
       LDA    $DC     
       ADC    #$00    
       STA    $DC     
       CLD            
       STX    AUDF1   
       LDA    #$1E    
       STA    $F4     
LFB6F: LDX    $F4     
       BEQ    LFB7B   
       DEX            
       LDA    LFF6C,X 
       STA    AUDV1   
       STX    $F4     
LFB7B: LDA    $F7     
       BEQ    LFB82   
LFB7F: JMP    LFBC9   
LFB82: LDA    $C5     
       AND    #$C2    
       BNE    LFB7F   
       LDA    $E0     
       BNE    LFB7F   
       LDA    $F4     
       BNE    LFB7F   
       LDA    $C4     
       AND    #$04    
       BEQ    LFBB3   
       LDA    $E1     
       CMP    #$05    
       BNE    LFBA2   
       LDA    $E2     
       CMP    #$02    
       BEQ    LFBB9   
LFBA2: LDA    $C4     
       ORA    #$01    
       STA    $C4     
       LDA    $E2     
       EOR    #$03    
       STA    $E2     
       ROR            
       BCS    LFBBF   
       BCC    LFBC1   
LFBB3: LDA    $E1     
       CMP    #$05    
       BNE    LFBBF   
LFBB9: LDA    #$40    
       STA    $C3     
       BNE    LFBC9   
LFBBF: INC    $E1     
LFBC1: LDA    $C5     
       ORA    #$02    
       AND    #$EF    
       STA    $C5     
LFBC9: STA    CXCLR   
       LDA    $F7     
       BEQ    LFBD3   
       STA    $C3     
       BNE    LFC05   
LFBD3: LDA    $C5     
       BMI    LFBE7   
       LDA    $C3     
       CMP    #$40    
       BCC    LFC05   
       LDA    $C5     
       ORA    #$80    
       STA    $C5     
       LDA    #$F7    
       STA    $F9     
LFBE7: LDA    $C2     
       BNE    LFC05   
       INC    $FA     
       LDA    $C4     
       AND    #$04    
       BEQ    LFC05   
       LDA    $C5     
       AND    #$42    
       BNE    LFC05   
       LDA    $E2     
       EOR    #$03    
       STA    $E2     
       LDA    $C4     
       ORA    #$01    
       STA    $C4     
LFC05: LDX    #$03    
LFC07: LDA    LF303,X 
       EOR    $FA     
       AND    $F9     
       STA    COLUP0,X
       DEX            
       BPL    LFC07   
       LDY    $EB     
       LDA    $DA     
       CMP    #$88    
       BCC    LFC1D   
       LDA    #$88    
LFC1D: CMP    LF0F3,Y 
       BCS    LFC25   
       LDA    LF0F3,Y 
LFC25: STA    $DA     
       LDA    #$9F    
       SEC            
       SBC    $DA     
       STA    $D9     
       LDX    #$01    
       JSR    LF0D1   
       LDA    $CC     
       LDX    #$03    
       JSR    LF0D1   
       LDA    $C6     
       INX            
       JSR    LF0D1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    $C4     
       AND    #$20    
       BEQ    LFC5C   
       LDA    #$1B    
       STA    $F2     
       LDA    #$04    
       STA    $EF     
       LDA    #$12    
       STA    $F3     
       BNE    LFC68   
LFC5C: LDA    #$01    
       STA    $EF     
       LDA    #$07    
       STA    $F0     
       LDA    #$62    
       STA    $F3     
LFC68: LDA    #$00    
       BIT    $C5     
       BVC    LFC92   
       LDA    $C0     
       AND    #$0F    
       STA    $FB     
       ASL            
       ASL            
       ADC    $FB     
       STA    $E3     
       LDA    #$32    
       STA    $E5     
       STA    $E7     
       STA    $E9     
       STA    $ED     
       LDX    #$0A    
       LDA    $C4     
       AND    #$04    
       BNE    LFC8E   
       LDX    #$05    
LFC8E: STX    $EB     
       BNE    LFCDE   
LFC92: LDA    $DC     
       AND    #$F0    
       LSR            
       LSR            
       STA    $FB     
       LSR            
       LSR            
       CLC            
       ADC    $FB     
       STA    $E3     
       LDA    $DC     
       AND    #$0F    
       STA    $FB     
       ASL            
       ASL            
       ADC    $FB     
       STA    $E5     
       LDA    $DD     
       AND    #$F0    
       LSR            
       LSR            
       STA    $FB     
       LSR            
       LSR            
       CLC            
       ADC    $FB     
       ADC    #$37    
       STA    $E7     
       LDA    $DD     
       AND    #$0F    
       STA    $FB     
       ASL            
       ASL            
       ADC    $FB     
       ADC    #$37    
       STA    $E9     
       LDA    $E1     
       ASL            
       ASL            
       ADC    $E1     
       STA    $EB     
       LDA    $E2     
       ASL            
       ASL            
       ADC    $E2     
       ADC    #$37    
       STA    $ED     
LFCDE: LDA    #$FF    
       STA    $E4     
       STA    $E6     
       STA    $E8     
       STA    $EA     
       STA    $EC     
       STA    $EE     
LFCEC: LDX    INTIM   
       BNE    LFCEC   
       STA    WSYNC   
       STX    VBLANK  
       JMP    LF003   
LFCF8: LDX    #$07    
LFCFA: LDA    $80,X   
       LDY    $88,X   
       STA    $88,X   
       STY    $80,X   
       LDA    $90,X   
       LDY    $98,X   
       STA    $98,X   
       STY    $90,X   
       LDA    $A0,X   
       LDY    $A8,X   
       STA    $A8,X   
       STY    $A0,X   
       LDA    $B0,X   
       LDY    $B8,X   
       STA    $B8,X   
       STY    $B0,X   
       DEX            
       BPL    LFCFA   
       LDA    $DC     
       LDY    $DE     
       STA    $DE     
       STY    $DC     
       LDA    $DD     
       LDY    $DF     
       STA    $DF     
       STY    $DD     
       LDA    $F8     
       LDY    $F5     
       STA    $F5     
       STY    $F8     
       LDA    $C4     
       AND    #$08    
       BEQ    LFDB9   
       LDA    #$00    
       STA    $E5     
       LDA    $D1     
       AND    #$20    
       BEQ    LFD52   
       LDX    #$80    
       LDA    $D1     
       AND    #$80    
       BNE    LFD4F   
       LDX    #$40    
LFD4F: TXA            
       STA    $E5     
LFD52: LDA    $D7     
       AND    #$20    
       BEQ    LFD67   
       LDX    #$80    
       LDA    $D7     
       AND    #$80    
       BNE    LFD62   
       LDX    #$40    
LFD62: TXA            
       ORA    $E5     
       STA    $E5     
LFD67: LDA    #$00    
       STA    $CF     
       STA    $D0     
       STA    $D5     
       STA    $D6     
       STA    $D1     
       STA    $D7     
       LDA    #$50    
       STA    $CC     
       STA    $D2     
       LDA    #$A2    
       STA    $CD     
       STA    $D3     
       LDA    $F1     
       TAX            
       AND    #$80    
       BEQ    LFD9C   
       LDA    #$39    
       STA    $CC     
       LDA    #$22    
       STA    $CD     
       LDA    #$08    
       STA    $CF     
       LDA    #$0D    
       STA    $D0     
       LDA    #$A0    
       STA    $D1     
LFD9C: TXA            
       AND    #$40    
       BEQ    LFDB5   
       LDA    #$60    
       STA    $D2     
       LDA    #$22    
       STA    $D3     
       LDA    #$08    
       STA    $D5     
       LDA    #$0D    
       STA    $D6     
       LDA    #$20    
       STA    $D7     
LFDB5: LDA    $E5     
       STA    $F1     
LFDB9: RTS            

LFDBA: LDA    SWCHB   
       ROR            
       BCC    LFDFD   
       ROR            
       BCC    LFDC9   
       LDX    #$01    
       STX    $C1     
LFDC7: SEC            
       RTS            

LFDC9: DEC    $C1     
       BNE    LFDC7   
       LDA    #$2D    
       STA    $C1     
       SED            
       LDA    $C0     
       CLC            
       ADC    #$01    
       CMP    #$10    
       BNE    LFDDD   
       LDA    #$01    
LFDDD: STA    $C0     
       CLD            
       TAX            
       LDA    LFF8A,X 
       STA    $C4     
       AND    #$18    
       BNE    LFDF2   
       LDA    #$F0    
       STA    $D8     
       LDA    #$44    
       BNE    LFDF8   
LFDF2: LDA    #$83    
       STA    $D8     
       LDA    #$4C    
LFDF8: STA    $C5     
       JMP    LFE2D   
LFDFD: LDX    #$01    
       STX    $C1     
       LDA    $C5     
       AND    #$0E    
       ORA    #$06    
       STA    $C5     
       DEX            
       LDA    #$99    
       STA    $DC     
       LDA    #$97    
       STA    $DD     
       STX    $DE     
       STX    $DF     
       STX    AUDV1   
       LDA    #$03    
       STA    $E0     
       STX    $F7     
       LDA    $C2     
       AND    #$07    
       TAX            
       LDA    LF1FB,X 
       STA    AUDC1   
       LDA    LF466,X 
       STA    $FD     
LFE2D: LDX    #$11    
LFE2F: LDY    #$05    
LFE31: LDA    LF2FD,Y 
       STA    $C6,X   
       DEX            
       BMI    LFE3E   
       DEY            
       BPL    LFE31   
       BMI    LFE2F   
LFE3E: STX    $F9     
       STY    $FA     
       INY            
       STY    $C3     
       STY    $E1     
       STY    $E2     
LFE49: LDA    $C4     
       AND    #$20    
       BNE    LFECC   
       LDA    #$68    
       STA    $F8     
       LDX    #$07    
       LDA    $C5     
       AND    #$02    
       BEQ    LFE61   
       LDX    #$0F    
       LDA    #$68    
       STA    $F5     
LFE61: STX    $FB     
       LDA    #$FF    
LFE65: STA    $80,X   
       STA    $90,X   
       STA    $A0,X   
       DEX            
       BPL    LFE65   
       LDA    #$0F    
       LDX    $FB     
LFE72: STA    $B0,X   
       DEX            
       BPL    LFE72   
       LDA    $C4     
       AND    #$08    
       BEQ    LFECB   
       LDA    #$F0    
       STA    $92     
       STA    $93     
       STA    $A2     
       STA    $A3     
       LDY    #$60    
       STY    $F8     
       LDA    #$39    
       STA    $CC     
       LDA    #$69    
       STA    $D2     
       LDA    #$22    
       STA    $CD     
       STA    $D3     
       LDA    #$08    
       STA    $CF     
       STA    $D5     
       LDA    #$0D    
       STA    $D0     
       STA    $D6     
       LDA    #$A0    
       STA    $D1     
       LDA    #$20    
       STA    $D7     
       LDA    $C5     
       AND    #$42    
       BNE    LFEB9   
       LDA    #$01    
       STA    $F7     
       CLC            
       RTS            

LFEB9: LDA    #$60    
       STA    $F5     
       ASL            
       STA    $F1     
       LDA    #$F0    
       STA    $9A     
       STA    $9B     
       STA    $AA     
       STA    $AB     
       CLC            
LFECB: RTS            

LFECC: LDA    #$00    
       LDX    #$3F    
LFED0: STA    $80,X   
       DEX            
       BPL    LFED0   
       LDA    #$FF    
       LDX    #$07    
LFED9: STA    $80,X   
       STA    $90,X   
       STA    $A0,X   
       DEX            
       BPL    LFED9   
       LDA    #$0F    
       LDX    #$07    
LFEE6: STA    $B0,X   
       DEX            
       BPL    LFEE6   
       LDA    #$03    
       STA    $F5     
       LDA    $C5     
       ORA    #$04    
       STA    $C5     
       CLC            
       RTS            

LFEF7: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$77,$55,$55,$55,$77,$77,$22
       .byte $22,$66,$22,$77,$44,$77,$11,$77,$77,$11,$33,$11,$77,$11,$11,$77
       .byte $55,$55,$77,$11,$77,$44,$77,$77,$55,$77,$44,$44,$11,$11,$11,$11
       .byte $77,$77,$55,$77,$55,$77,$11,$11,$77,$55,$77,$00,$00,$00,$00,$00
       .byte $EE,$AA,$AA,$AA,$EE,$EE,$44,$44,$66,$44,$EE,$22,$EE,$88,$EE,$EE
       .byte $88,$CC,$88,$EE,$88,$88,$EE,$AA,$AA,$EE,$88,$EE,$22,$EE,$EE,$AA
       .byte $EE,$22,$22,$88,$88,$88,$88,$EE,$EE,$AA,$EE,$AA,$EE,$88,$88,$EE
       .byte $AA,$EE,$00,$00,$00
LFF6C: .byte $00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02
       .byte $02,$03,$03,$03,$03,$03,$04,$04,$05,$05,$06,$08,$0A,$08
LFF8A: .byte $40,$40,$44,$10,$14,$08,$0C,$20,$C0,$C4
LFF94: .byte $00,$00,$00,$10,$10,$10,$10,$20,$20,$20,$20,$30,$30,$30
LFFA2: .byte $CF,$F3,$FC,$FC,$F3,$CF,$3F,$3F,$CF,$F3,$FC,$FC,$F3,$CF
LFFB0: .byte $07,$07,$05,$05,$03,$03,$01,$01
LFFB8: .byte $07,$05,$03,$01,$01,$01,$01
LFFBF: .byte $FF,$FF,$FF,$FF,$00,$01,$02,$03,$FF,$FF,$FF,$FF,$04,$05,$06,$07
       .byte $FF,$FF,$FF,$FF,$08,$09,$0A,$0B,$FF,$FF,$FF,$FF,$0C,$0D,$0E,$0F
       .byte $FF,$FF,$FF
LFFE2: .byte $FF,$80,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$6E,$F4,$00,$00
