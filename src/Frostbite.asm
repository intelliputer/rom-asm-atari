; Disassembly of roms/Frostbite.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Frostbite.bin
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
PF1     =  $0E
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
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
RESMP1  =  $29
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
LF004: LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       JSR    LFB3B   
       LDX    $82     
       BNE    LF019   
       INX            
       STX    $82     
       JMP    LF68D   
LF019: LDX    #$02    
LF01B: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $C8,X   
       AND    #$F0    
       LSR            
       STA.wy $0085,Y 
       LDA    $C8,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0087,Y 
       DEX            
       BPL    LF01B   
       INX            
       LDY    #$50    
LF037: LDA    $85,X   
       BNE    LF043   
       STY    $85,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    LF037   
LF043: JSR    LFAEA   
       LDA    $BB     
       STA    COLUBK  
       LDX    $C7     
       LDA    LFFF9,X 
       STA    COLUP0  
       STA    COLUP1  
LF053: LDA    INTIM   
       BNE    LF053   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $BF     
       ROL            
       ROL            
       ROL            
       AND    #$02    
       STA    VBLANK  
       JSR    LFE05   
       LDA    #$50    
       STA    $85     
       STA    $8B     
       STA    $8D     
       STA    $8F     
       LDA    #$53    
       STA    $89     
       LDA    $CC     
       BEQ    LF081   
       ASL            
       ASL            
       ASL            
       STA    $8F     
LF081: LDA    $E5     
       AND    #$F0    
       BEQ    LF08A   
       LSR            
       STA    $85     
LF08A: LDA    $E5     
       AND    #$0F    
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       ASL            
       ASL            
       ASL            
       STA    $87     
       LDA    $85     
       CMP    #$50    
       BNE    LF0AF   
       LDA    $F1     
       BNE    LF0AF   
       LDA    $81     
       AND    #$08    
       BNE    LF0AF   
       LDA    $BB     
       STA    COLUP0  
       STA    COLUP1  
LF0AF: LDA    $CB     
       CMP    #$14    
       BCC    LF0BD   
       LDA    #$6D    
       STA    $8B     
       LDA    #$FD    
       STA    $8C     
LF0BD: JSR    LFE05   
       LDX    $EE     
       LDA    LFCAA,X 
       CLC            
       ADC    $EB     
       STA    $89     
       LDA    LFCB0,X 
       CLC            
       ADC    $EB     
       ADC    $F0     
       STA    $8B     
       LDX    #$FC    
       STX    $8A     
       STX    $8C     
       INX            
       STX    $88     
       STX    $86     
       STA    WSYNC   
       STA    HMOVE   
       LDX    $EF     
       LDA    LFEE7,X 
       STA    $87     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       LDA    #$06    
       STA    COLUPF  
       LDA    $BE     
       STA    COLUP1  
       LDA    $82     
       STA    $F9     
       AND    #$02    
       EOR    LFCBF   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    $E6     
       CMP    #$0F    
       BCS    LF122   
       SEC            
       SBC    #$0F    
       LDX    #$60    
       NOP            
       STA.w  $0010   
       STX    HMP0    
       BNE    LF129   
LF122: NOP            
LF123: SBC    #$0F    
       BCS    LF123   
       STA    RESP0   
LF129: STA    WSYNC   
       STA    HMOVE   
       STA    $F8     
       LDA    $F9     
       CMP    #$80    
       ROL            
       STA    $F9     
       AND    #$02    
       EOR    LFCBE   
       STA    COLUBK  
       LDA    $F8     
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       STA    HMP0    
       LDA    $EC     
       STA    REFP0   
       LSR            
       STA    REFP1   
       LDA    $CD     
       CMP    #$0F    
       BNE    LF156   
       STA    RESP1   
LF156: LDX    #$07    
LF158: LDA    $F9     
       CMP    #$80    
       ROL            
       STA    WSYNC   
       STA    HMOVE   
       STA    $F9     
       AND    #$02    
       EOR    LFCB6,X 
       CPX    #$00    
       BNE    LF16E   
       LDA    $BC     
LF16E: STA    COLUBK  
       LDA    #$00    
       STA    PF1     
       TXA            
       LSR            
       LSR            
       TAY            
       LDA.wy $00C3,Y 
       DEX            
       STA    PF1     
       STA    HMCLR   
       BPL    LF158   
       LDY    $E4     
       LDX    #$0B    
       STX    VDELP1  
LF188: STX    $F8     
       CPX    #$08    
       LDA    LFEF3,X 
       STA    GRP1    
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    PF1     
       BCS    LF1B8   
       DEY            
       CPY    #$13    
       BCS    LF1B8   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
LF1A6: STA    GRP0    
       LDA    $F8     
       LSR            
       LSR            
       TAX            
       LDA    $C0,X   
       LDX    $F8     
       DEX            
       STA    PF1     
       BPL    LF188   
       BMI    LF1BF   
LF1B8: NOP            
       NOP            
       NOP            
       NOP            
       JMP    LF1A6   
LF1BF: INX            
       TXA            
       DEY            
       CPY    #$13    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       BCS    LF1D2   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
LF1D2: STA    GRP0    
       STX    PF1     
       LDA    $BD     
       STA    COLUP1  
       LDA    #$05    
       STA    NUSIZ1  
       TXA            
       DEY            
       CPY    #$13    
       BCS    LF1E9   
       LDA    ($89),Y 
       TAX            
       LDA    ($8B),Y 
LF1E9: SEC            
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STA    COLUP0  
       LDA    $E8     
       NOP            
       NOP            
LF1F6: SBC    #$0F    
       BCS    LF1F6   
       STA    RESP1   
       STA    CXCLR   
       STA    WSYNC   
       STA    HMOVE   
       STA    $F8     
       DEY            
       CPY    #$13    
       BCS    LF211   
       LDA    ($89),Y 
       STA    GRP0    
       LDA    ($8B),Y 
       STA    COLUP0  
LF211: LDA    $F8     
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       STA    HMP1    
       LDX    #$12    
LF21D: DEY            
       STY    $F8     
       TXA            
       TAY            
       LDA    ($87),Y 
       STA    GRP1    
       LDA    #$00    
       LDY    $F8     
       CPY    #$13    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF238   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
LF238: STA    GRP0    
       JSR    LFE03   
       STA    HMCLR   
       LDY    $F8     
       DEX            
       BPL    LF21D   
       LDA    COLUP1  
       BPL    LF24A   
       STA    $ED     
LF24A: DEY            
       CPY    #$13    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    COLUBK  
       BCS    LF25D   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
LF25D: STA    GRP0    
       STA    CXCLR   
       LDX    #$07    
LF263: STX    $BA     
       LDA    #$00    
       STA    GRP1    
       DEY            
       CPY    #$13    
       BCS    LF274   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
LF274: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    #$90    
       STA    COLUBK  
       TXA            
       LSR            
       TAX            
       LDA    $9F,X   
       BCC    LF287   
       LDA    $D4,X   
LF287: STA    $F8     
       LDA    $D8,X   
       STA    NUSIZ1  
       STA    HMCLR   
       LDA    #$00    
       STA    VDELP1  
       STA    REFP1   
       DEY            
       CPY    #$13    
       BCS    LF2A0   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
LF2A0: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $F8     
       CMP    #$0F    
       DEY            
       BCS    LF2B9   
       SEC            
       SBC    #$0F    
       LDX    #$60    
       STA.w  $0011   
       STX    HMP1    
       BNE    LF2BF   
LF2B9: SBC    #$0F    
       BCS    LF2B9   
       STA    RESP1   
LF2BF: STA    WSYNC   
       STA    HMOVE   
       TAX            
       CPY    #$13    
       BCS    LF2D0   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
       STA    GRP0    
LF2D0: TXA            
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       STA    HMP1    
       LDA    $BA     
       LSR            
       TAX            
       LDA    $A3,X   
       STA    $85     
       LDA    $A7,X   
       STA    COLUP1  
       LDA    $91,X   
       BPL    LF2ED   
       LDA    #$08    
       STA    REFP1   
LF2ED: STA    WSYNC   
       STA    HMOVE   
       DEY            
       CPY    #$13    
       BCS    LF2FE   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
       STA    GRP0    
LF2FE: LDA    #$03    
       STA    RESMP1  
       STA    VDELP1  
       LDA    $BA     
       LSR            
       STA    CXCLR   
       STA    HMCLR   
       BCC    LF339   
       LDX    #$07    
LF30F: DEY            
       STY    $F8     
       TXA            
       TAY            
       LDA    ($85),Y 
       STA    GRP1    
       LDY    $F8     
       CPY    #$13    
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF32A   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
LF32A: STA    GRP0    
       DEX            
       BPL    LF30F   
       LDX    $BA     
       LDA    COLUP1  
       STA    $B0,X   
       DEX            
       JMP    LF263   
LF339: TAX            
       LDA    $AB,X   
       STA    COLUP1  
       LDA    #$00    
       STA    GRP1    
       DEY            
       CPY    #$13    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF351   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
LF351: STA    GRP0    
       LDA    #$36    
       STA    NUSIZ1  
       LDA    #$00    
       STA    GRP1    
       DEY            
       CPY    #$13    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF36A   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
LF36A: STA    GRP0    
       JSR    LFE04   
       LDA    $9D     
       STA    RESMP1  
       STA    HMM1    
       LDA    $9C     
       STA    HMP1    
       LDX    #$06    
       STX    $F8     
LF37D: DEY            
       LDX    #$FF    
       STX    GRP1    
       CPY    #$13    
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF392   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
LF392: STA    GRP0    
       STX    ENAM1   
       LDX    $F8     
       LDA    LFDD2,X 
       STA    HMM1    
       STA    HMP1    
       DEC    $F8     
       BPL    LF37D   
       STA    HMCLR   
       DEY            
       CPY    #$13    
       LDA    #$00    
       STA    GRP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM1   
       BCS    LF3BA   
       LDA    ($8B),Y 
       STA    COLUP0  
       LDA    ($89),Y 
LF3BA: STA    GRP0    
       LDX    $BA     
       LDA    COLUP1  
       ORA    VBLANK  
       STA    $B0,X   
       DEX            
       BMI    LF3CA   
       JMP    LF263   
LF3CA: STX    $B8     
       STX    $B9     
       INX            
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STX    GRP1    
       STX    REFP0   
       STX    REFP1   
       STA    HMCLR   
       STX    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       LDA    $C6     
       AND    #$1F    
       CMP    #$14    
       BCS    LF3F6   
       LDY    #$00    
       CMP    #$0C    
       BCC    LF3F6   
       SBC    #$0C    
       TAY            
LF3F6: STY    $F9     
       TYA            
       EOR    #$07    
       STA    $FA     
       LDA    #$B8    
       LDX    #$08    
       SEC            
       STA    WSYNC   
       STA    HMOVE   
LF406: STA    $87,X   
       SBC    #$08    
       STA    $85,X   
       SBC    #$08    
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LF406   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$00    
       STX    COLUBK  
       STX    COLUPF  
       LDA    #$0C    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$0B    
       LDA    #$FF    
LF428: STA    $85,X   
       DEX            
       DEX            
       BPL    LF428   
       JSR    LFE09   
       LDA    #$78    
       STA    PF1     
       LDA    #$31    
       STA    CTRLPF  
       STA    NUSIZ1  
       STA    HMCLR   
       LDA    #$10    
       STA    HMBL    
       LDY    #$07    
       STY    ENABL   
LF445: LDA    LFF88,Y 
       TAX            
       LDA    LFF68,Y 
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFFC0,Y 
       STA    COLUPF  
       LDA    LFF70,Y 
       STA    GRP1    
       LDA    LFF78,Y 
       STA    GRP0    
       LDA    $F8     
       NOP            
       LDA    LFF80,Y 
       STA    GRP1    
       STX    GRP0    
       STA    GRP1    
       LDA    #$00    
       STA    COLUPF  
       DEY            
       DEC    $FA     
       BPL    LF445   
       LDA    #$1F    
       LDX    #$82    
       STA    WSYNC   
       STA    TIM64T  
       STX    VBLANK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    PF1     
       STA    ENABL   
       LDA    $C6     
       BEQ    LF4A7   
       LDA    $CA     
       AND    #$0F    
       ORA    $F1     
       BNE    LF4A7   
       LDA    $81     
       AND    #$7F    
       BNE    LF4A7   
       LDA    $80     
       LSR            
       BCC    LF4A7   
       JSR    LFE77   
LF4A7: LDX    #$04    
       LDA    #$00    
LF4AB: STA    $C0,X   
       DEX            
       BPL    LF4AB   
       BIT    $C5     
       BPL    LF4B7   
       JMP    LF566   
LF4B7: LDA    $F0     
       ORA    $EB     
       BEQ    LF4DB   
       CLC            
       TAX            
       ADC    #$08    
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$01    
       STA    AUDC0   
       LDA    #$04    
       CPX    #$12    
       BNE    LF4D7   
       LDA    #$00    
       STA    $F4     
LF4D7: STA    AUDV0   
       STA    AUDV1   
LF4DB: BIT    $F4     
       BVC    LF4FE   
       DEC    $F4     
       LDA    $F4     
       AND    #$1F    
       BNE    LF4E9   
       STA    $F4     
LF4E9: STA    AUDF1   
       LDX    #$0C    
       STX    AUDC1   
       LDX    #$00    
       AND    #$03    
       BEQ    LF4FC   
       LDA    #$10    
       JSR    LFB95   
       LDX    #$05    
LF4FC: STX    AUDV1   
LF4FE: BIT    $F3     
       BPL    LF51A   
       DEC    $F3     
       LDA    $F3     
       AND    #$1F    
       BNE    LF50C   
       STA    $F3     
LF50C: STA    AUDV0   
       CMP    #$07    
       BCS    LF514   
       LDA    #$07    
LF514: STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
LF51A: BIT    $F4     
       BPL    LF533   
       DEC    $F4     
       LDA    $F4     
       AND    #$1F    
       BNE    LF528   
       STA    $F4     
LF528: LSR            
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$02    
       STA    AUDF1   
LF533: BIT    $F3     
       BVC    LF566   
       LDA    $F3     
       AND    #$1F    
       LSR            
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC0   
       STA    AUDC1   
       LDA    $F3     
       BIT    $CD     
       BMI    LF555   
       SEC            
       SBC    #$02    
       LDX    #$0C    
       LDY    #$0F    
       BNE    LF55A   
LF555: LSR            
       LDX    #$05    
       LDY    #$01    
LF55A: STX    AUDF0   
       STY    AUDF1   
       AND    #$1F    
       BEQ    LF564   
       ORA    #$40    
LF564: STA    $F3     
LF566: LDX    #$07    
LF568: DEX            
       LDA    $B1,X   
       BPL    LF571   
       TXA            
       LSR            
       STA    $B8     
LF571: LDA    $B0,X   
       BPL    LF579   
       TXA            
       LSR            
       STA    $B9     
LF579: DEX            
       BPL    LF568   
       LDA    #$03    
       BIT    $C5     
       BMI    LF584   
       LDA    $CB     
LF584: CLC            
       ADC    #$04    
       TAY            
       SEC            
       SBC    #$0F    
       BCC    LF594   
LF58D: DEY            
       DEY            
       DEY            
       SBC    #$07    
       BCS    LF58D   
LF594: TYA            
       LDX    #$00    
       LSR            
       JSR    LFFD0   
       INX            
       DEY            
       TYA            
       JSR    LFFD0   
       INX            
       INY            
       TYA            
       JSR    LFFD0   
       LDA    #$00    
       STA    $FB     
       LDX    $C7     
       LDA    REFP1,X 
       TAY            
       AND    $AF     
       EOR    $AF     
       STY    $AF     
       BPL    LF5C0   
       LDA    $EA     
       BNE    LF5C0   
       LDA    #$FF    
       STA    $FB     
LF5C0: LDX    $9E     
       LDA    LFDE0,X 
       TAY            
       AND    #$F0    
       STA    $9D     
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $9C     
       LDX    $CB     
       CPX    #$08    
       BCC    LF5D9   
       LDX    #$08    
LF5D9: LDA    LFDD7,X 
       AND    #$F0    
       STA    $95     
       LDX    $CD     
       BMI    LF5F6   
       LDX    #$00    
LF5E6: LDY    LFD4E,X 
       LDA    LFFE9,X 
       STA.wy $00C0,Y 
       CPX    $CD     
       BCS    LF5F6   
       INX            
       BPL    LF5E6   
LF5F6: LDA    $81     
       AND    #$07    
       BNE    LF5FF   
       JSR    LFE8B   
LF5FF: LDA    INTIM   
       BNE    LF5FF   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF629   
       INC    $C5     
       LDA    $C5     
       AND    #$C7    
       STA    $C5     
       AND    #$07    
       BNE    LF629   
       INC    $BF     
       BNE    LF629   
       SEC            
       ROR    $BF     
LF629: LDA    #$30    
       STA    WSYNC   
       STA    TIM64T  
       LDY    SWCHA   
       LDA    $81     
       AND    #$07    
       BNE    LF651   
       LDA    $C6     
       BEQ    LF651   
       LDY    #$FF    
       DEC    $C6     
       BNE    LF651   
       DEC    $C6     
       LDA    $C5     
       BMI    LF651   
       ORA    #$80    
       STA    $C5     
       LDX    #$D4    
       BNE    LF66D   
LF651: LDA    $C7     
       LSR            
       TYA            
       BCS    LF65A   
       JSR    LFE00   
LF65A: AND    #$0F    
       STA    $84     
       INY            
       BEQ    LF665   
       LDA    #$00    
       STA    $BF     
LF665: LDA    SWCHB   
       LSR            
       BCS    LF670   
       LDX    #$BF    
LF66D: JMP    LF004   
LF670: LDY    #$00    
       LSR            
       BCS    LF6A9   
       LDA    $83     
       BEQ    LF67D   
       DEC    $83     
       BPL    LF6AB   
LF67D: STA    AUDV0   
       STA    AUDV1   
       STA    $EB     
       STA    $F0     
       STA    $F4     
       LDA    #$8F    
       STA    $F3     
       INC    $80     
LF68D: LDA    $80     
       AND    #$03    
       STA    $80     
       STA    $BF     
       STA    $C5     
       ORA    #$A0    
       TAY            
       INY            
       STY    $C8     
       LDA    #$AA    
       STA    $C9     
       STA    $CA     
       LDA    #$FF    
       STA    $C6     
       LDY    #$1E    
LF6A9: STY    $83     
LF6AB: LDA    $E7     
       BEQ    LF6B3   
       DEC    $E7     
       BPL    LF6DA   
LF6B3: BIT    $C5     
       BMI    LF6BB   
       LDA    $C6     
       BNE    LF6DA   
LF6BB: LDA    $F1     
       ORA    $E6     
       BNE    LF6C5   
       LDA    #$80    
       STA    $F1     
LF6C5: LDA    $F5     
       BEQ    LF6CB   
       DEC    $F5     
LF6CB: BIT    $F1     
       BPL    LF6E7   
       LDA    $EB     
       CMP    #$12    
       BCS    LF6DD   
       JSR    LFDF0   
       INC    $EB     
LF6DA: JMP    LFAE7   
LF6DD: LDA    #$20    
       STA    $F1     
       LDA    #$70    
       STA    $E7     
       BNE    LF6DA   
LF6E7: BVC    LF715   
       BIT    $CD     
       BMI    LF6F3   
       DEC    $CD     
       LDA    #$06    
       BNE    LF6FC   
LF6F3: LDA    $E5     
       BEQ    LF709   
       JSR    LFBC1   
       LDA    #$02    
LF6FC: STA    $E7     
       LDA    $95     
       JSR    LFB95   
       LDA    #$55    
       STA    $F3     
       BNE    LF6DA   
LF709: STA    $F7     
       LDA    #$08    
       STA    $F1     
       LDA    #$30    
       STA    $E7     
       BNE    LF6DA   
LF715: LDA    $F1     
       AND    #$20    
       BEQ    LF73D   
       BIT    $C5     
       BMI    LF737   
       LDA    $CC     
       ORA    $D2     
       BNE    LF72B   
       STA    $F1     
       DEC    $C6     
       BMI    LF6DA   
LF72B: JSR    LFE77   
       LDA    $CC     
       BNE    LF735   
       JSR    LFE77   
LF735: DEC    $CC     
LF737: JSR    LFB57   
       JMP    LF6DA   
LF73D: LDA    $F1     
       AND    #$10    
       BEQ    LF754   
       JSR    LFDF0   
       INC    $F0     
       LDA    $F0     
       CMP    #$12    
       BNE    LF751   
       JMP    LF6DD   
LF751: JMP    LFAE7   
LF754: LDA    $F1     
       AND    #$08    
       BEQ    LF763   
       BIT    $C5     
       BMI    LF737   
       INC    $CB     
       JMP    LF737   
LF763: BIT    $C5     
       BPL    LF7BB   
       LDA    #$07    
       CMP    $CB     
       BCC    LF76F   
       STA    $CB     
LF76F: LDA    #$00    
       STA    $F0     
       STA    $EB     
       STA    $F3     
       STA    $F4     
       STA    $ED     
       LDA    $E4     
       CMP    #$1B    
       BNE    LF78D   
       LDA    #$0A    
       LDX    $81     
       CPX    #$50    
       BCC    LF78B   
       LDA    #$06    
LF78B: STA    $84     
LF78D: LDX    $B9     
       DEX            
       BPL    LF794   
       LDX    #$03    
LF794: LDA    $E6     
       CMP    $9F,X   
       BCS    LF79C   
       ADC    #$A0    
LF79C: ADC    #$01    
       SEC            
       SBC    $9F,X   
       CMP    #$4B    
       BCS    LF7B3   
       LDA    #$FF    
       STA    $F2     
       LDA    #$09    
       BIT    $81     
       BPL    LF7B9   
       LDA    #$06    
       BNE    LF7B9   
LF7B3: CPX    #$02    
       BNE    LF7BB   
       LDA    #$0A    
LF7B9: STA    $84     
LF7BB: BIT    $ED     
       BPL    LF801   
       LDA    $EA     
       BNE    LF801   
       LDA    $CB     
       CMP    #$03    
       BCC    LF801   
       LDA    #$08    
       STA    $EC     
       LDA    $81     
       AND    #$03    
       STA    $EF     
       BEQ    LF7DD   
       LDA    $E8     
       CMP    #$10    
       BCC    LF7DD   
       DEC    $E8     
LF7DD: LDA    $81     
       LSR            
       AND    #$03    
       STA    $EE     
       DEC    $E6     
       LDA    #$01    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$04    
       STA    AUDV0   
       STA    AUDV1   
       LDA    $81     
       ASL            
       ASL            
       AND    #$1F    
       STA    AUDF0   
       STA    AUDF1   
       JMP    LFAE7   
LF801: LDA    $CB     
       LSR            
       BCC    LF818   
       CMP    #$02    
       BCC    LF818   
       LDA    $81     
       AND    #$0F    
       BNE    LF818   
       DEC    $9E     
       BPL    LF818   
       LDA    #$0F    
       STA    $9E     
LF818: LDX    #$03    
LF81A: LDA    $CB     
       CMP    #$05    
       BCC    LF835   
       LDA    $91,X   
       AND    #$03    
       TAY            
       LDA    $81     
       AND    #$40    
       BNE    LF831   
       CPY    #$03    
       BEQ    LF872   
       BNE    LF835   
LF831: CPY    #$02    
       BEQ    LF872   
LF835: LDA    $91,X   
       ASL            
       LDA    $E0,X   
       BCS    LF841   
       ADC    $97     
       JMP    LF843   
LF841: SBC    $97     
LF843: STA    $E0,X   
       AND    #$F8    
       CMP    #$C8    
       BEQ    LF853   
       LDA    $E0,X   
       JSR    LFEB8   
       JMP    LF859   
LF853: JSR    LFE8B   
       JSR    LFBCB   
LF859: CPX    $F2     
       BNE    LF872   
       LDA    $91,X   
       ASL            
       LDA    $E6     
       BCS    LF868   
       ADC    $97     
       BCC    LF86A   
LF868: SBC    $97     
LF86A: CMP    #$A0    
       BCC    LF870   
       LDA    #$00    
LF870: STA    $E6     
LF872: DEX            
       BPL    LF81A   
       LDX    #$03    
LF877: LDA    $91,X   
       AND    #$03    
       TAY            
       LDA    LFD00,Y 
       STA    $A7,X   
       TYA            
       ASL            
       TAY            
       LDA    #$08    
       CPY    #$06    
       BNE    LF88B   
       ASL            
LF88B: AND    $81     
       BNE    LF890   
       INY            
LF890: LDA    LFD0A,Y 
       STA    $A3,X   
       CPY    #$02    
       BCC    LF8AF   
       LDA    $81     
       LSR            
       LSR            
       LSR            
       AND    #$1F    
       CMP    #$10    
       BCC    LF8A6   
       EOR    #$1F    
LF8A6: TAY            
       LDA    $A3,X   
       CLC            
       ADC    LFDC2,Y 
       STA    $A3,X   
LF8AF: DEX            
       BPL    LF877   
       LDX    $EA     
       BEQ    LF8B9   
       JMP    LF9BC   
LF8B9: LDX    $B9     
       BPL    LF8CD   
       LDA    $E4     
       CMP    #$1B    
       BNE    LF8C6   
       JMP    LF982   
LF8C6: LDA    #$80    
       STA    $F1     
       JMP    LFAE7   
LF8CD: BIT    $F6     
       BPL    LF8FB   
       LDA    $AB,X   
       CMP    #$0C    
       BNE    LF8FB   
       LDA    $F4     
       BNE    LF8DD   
       LDA    #$8F    
LF8DD: STA    $F4     
       LDA    #$98    
       STA    $AB,X   
       LDA    #$10    
       STA    $F5     
       LDA    #$00    
       STA    $F6     
       LDA    $95     
       JSR    LFB95   
       LDA    $CD     
       CMP    #$0F    
       BEQ    LF8FB   
       INC    $CD     
       JMP    LF91D   
LF8FB: BIT    $CD     
       BMI    LF91D   
       BIT    $F2     
       BPL    LF91D   
       BIT    $FB     
       BPL    LF91D   
       LDX    $B9     
       BMI    LF91D   
       LDA    $91,X   
       EOR    #$40    
       STA    $91,X   
       LDA    $CD     
       CMP    #$0F    
       BEQ    LF919   
       DEC    $CD     
LF919: LDA    #$8F    
       STA    $F4     
LF91D: LDX    $B9     
       LDA    $B8     
       BMI    LF961   
       TAX            
       LDA    $91,X   
       AND    #$03    
       CMP    #$01    
       BNE    LF94E   
       INC    $F7     
       LDA    $E6     
       CLC            
       ADC    #$08    
       SEC            
       SBC    $E0,X   
       JSR    LFE00   
       TAY            
       LDA    $DC,X   
       AND    LFCDF,Y 
       STA    $DC,X   
       JSR    LFEB8   
       LDA    #$5B    
       STA    $F4     
       LDA    #$10    
       STA    $E7     
       BPL    LF961   
LF94E: STX    $F2     
       LDA    $91,X   
       LSR            
       AND    #$40    
       EOR    #$40    
       STA    $F8     
       LDA    $91,X   
       AND    #$8F    
       ORA    $F8     
       STA    $91,X   
LF961: BIT    $F2     
       BPL    LF9DB   
       LDA    $E6     
       STA    $F8     
       LDA    $96     
       STA    $F9     
       LDA    $91,X   
       ASL            
       ASL            
       JSR    LFCEA   
       CMP    #$09    
       BCS    LF97A   
       LDA    #$09    
LF97A: CMP    #$97    
       BCC    LF980   
       LDA    #$97    
LF980: STA    $E6     
LF982: LDA    $84     
       AND    #$03    
       CMP    #$03    
       BEQ    LF9DB   
       LSR            
       BCS    LF9AE   
       LDA    $E4     
       CMP    #$1B    
       BNE    LF9A6   
       LDA    #$7F    
       SEC            
       SBC    $E6     
       CMP    #$08    
       BCS    LF9DB   
       LDA    $CD     
       CMP    #$0F    
       BNE    LF9DB   
       LDA    #$80    
       STA    $E9     
LF9A6: LDX    #$1F    
       LDA    #$8F    
       STA    $F3     
       BNE    LF9BA   
LF9AE: LDA    $E4     
       CMP    #$70    
       BCS    LF9DB   
       LDX    #$0F    
       LDA    #$8F    
       STA    $F3     
LF9BA: STX    $EA     
LF9BC: LDA    $81     
       LSR            
       BCS    LF9DB   
       DEX            
       LDA    LFCC0,X 
       CLC            
       ADC    $E4     
       STA    $E4     
       CPX    #$10    
       BNE    LF9D0   
       LDX    #$00    
LF9D0: STX    $EA     
       CPX    #$00    
       BNE    LF9DB   
       STX    $ED     
       DEX            
       STX    $F6     
LF9DB: LDA    $E4     
       CMP    #$06    
       BCS    LF9ED   
       LDA    #$00    
       STA    $E4     
       STA    $E9     
       LDA    #$40    
       STA    $F1     
       STA    $E7     
LF9ED: LDA    $F5     
       BNE    LFA09   
       LDA    $CD     
       CMP    #$0F    
       BEQ    LFA09   
       LDX    #$03    
LF9F9: LDA    #$0C    
       CMP    $AB,X   
       BEQ    LFA09   
       DEX            
       BPL    LF9F9   
       LDX    #$03    
LFA04: STA    $AB,X   
       DEX            
       BPL    LFA04   
LFA09: LDX    #$03    
LFA0B: LDA    $9F,X   
       STA    $F8     
       LDA    $96     
       STA    $F9     
       LDA    $91,X   
       ASL            
       ASL            
       JSR    LFCEA   
       STA    $9F,X   
       DEX            
       BPL    LFA0B   
       BIT    $F2     
       BPL    LFA78   
       BIT    $E9     
       BPL    LFA2D   
       LDA    #$7B    
       STA    $E6     
       BNE    LFA78   
LFA2D: LDA    $98     
       LDY    $EA     
       BNE    LFA37   
       LDA    $81     
       AND    #$01    
LFA37: STA    $F8     
       LDA    $84     
       AND    #$0C    
       STA    $F9     
       LDA    #$0A    
       LDY    $E4     
       CPY    #$1B    
       BNE    LFA49   
       LDA    #$11    
LFA49: STA    $FA     
       LDA    $E6     
       LSR    $F9     
       LSR    $F9     
       LSR    $F9     
       BCS    LFA60   
       LDY    #$08    
       CMP    $FA     
       BCC    LFA6C   
       SBC    $F8     
       JMP    LFA6C   
LFA60: LSR    $F9     
       BCS    LFA78   
       LDY    #$00    
       CMP    #$96    
       BCS    LFA6C   
       ADC    $F8     
LFA6C: STA    $E6     
       STY    $F8     
       LDA    $EC     
       AND    #$10    
       ORA    $F8     
       STA    $EC     
LFA78: LDX    #$02    
       LDA    $EA     
       AND    #$0F    
       CMP    #$07    
       BCS    LFA93   
       LDX    #$00    
       LDA    $84     
       AND    #$0C    
       CMP    #$0C    
       BEQ    LFA93   
       LDA    $81     
       AND    #$04    
       LSR            
       LSR            
       TAX            
LFA93: STX    $EE     
       LDX    $EC     
       LDA    $81     
       AND    #$3F    
       BNE    LFAB0   
       JSR    LFBC1   
       BNE    LFAA6   
       LDA    #$10    
       STA    $F1     
LFAA6: LDX    #$10    
       LDA    $E6     
       CMP    $E8     
       BCS    LFAB0   
       LDX    #$00    
LFAB0: STX    $F8     
       LDA    $CB     
       CMP    #$03    
       BCC    LFAE7   
       LDA    $EC     
       AND    #$08    
       ORA    $F8     
       STA    $EC     
       AND    #$10    
       TAX            
       LDA    $E8     
       CPX    #$00    
       BNE    LFAD2   
       CMP    #$10    
       BCC    LFAE7   
       SBC    $97     
       JMP    LFAD8   
LFAD2: CMP    #$8C    
       BCS    LFAE7   
       ADC    $97     
LFAD8: STA    $E8     
       LDY    $EF     
       LDA    $97     
       BEQ    LFAE7   
       DEY            
       BPL    LFAE5   
       LDY    #$07    
LFAE5: STY    $EF     
LFAE7: JMP    LF019   
LFAEA: BIT    $C5     
       BPL    LFAF8   
       LDA    $CD     
       STA    $D3     
       LDA    #$00    
       STA    $9E     
       BEQ    LFB05   
LFAF8: LDA    $CB     
       LSR            
       LSR            
       LSR            
       LDA    #$84    
       LDX    #$0A    
       LDY    #$04    
       BCC    LFB0B   
LFB05: LDA    #$80    
       LDX    #$02    
       LDY    #$0C    
LFB0B: STA    $BB     
       STX    $BC     
       STY    $BD     
       LDA    $CD     
       CMP    #$0F    
       BNE    LFB2E   
       LDX    #$00    
       BIT    $C5     
       BMI    LFB24   
       LDA    $CB     
       LSR            
       LSR            
       LSR            
       BCC    LFB2E   
LFB24: LDA    $81     
       EOR    $82     
       AND    #$08    
       BNE    LFB2E   
       LDX    #$38    
LFB2E: STX    $BE     
       LDX    $BC     
       LDA    $CB     
       CMP    #$03    
       BCS    LFB3A   
       STX    $BD     
LFB3A: RTS            

LFB3B: LDX    #$FF    
       STX    $CD     
       STX    $D3     
       LDX    #$03    
       STX    $CC     
       LDA    $80     
       LSR            
       BCC    LFB4D   
       INX            
       STX    $D2     
LFB4D: BIT    $C5     
       BMI    LFB57   
       ASL            
       ASL            
       STA    $CB     
       STA    $D1     
LFB57: LDX    #$03    
LFB59: LDA    #$0C    
       STA    $AB,X   
       LDY    #$08    
       LDA    $CB     
       LSR            
       LDA    LFEEF,X 
       AND    #$F0    
       BCC    LFB6B   
       LDY    #$00    
LFB6B: STA    $9F,X   
       STA    $91,X   
       STY    $9E     
       LDA    LFEEF,X 
       ASL            
       ASL            
       ASL            
       ASL            
       JSR    LFEA6   
       DEX            
       BPL    LFB59   
       LDX    #$0D    
LFB80: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       CPX    #$05    
       BCS    LFB8D   
       LDA    LFD04,X 
LFB8D: STA    $E4,X   
       DEX            
       BPL    LFB80   
       STX    $F2     
       RTS            

LFB95: SED            
       BIT    $C5     
       BMI    LFBBF   
       CLC            
       ADC    $CA     
       STA    $CA     
       BCC    LFBBF   
       LDA    $C9     
       ADC    #$00    
       STA    $C9     
       LDA    $C8     
       ADC    #$00    
       STA    $C8     
       LDA    $C9     
       AND    #$FF    
       BEQ    LFBB7   
       CMP    #$50    
       BNE    LFBBF   
LFBB7: LDA    $CC     
       CMP    #$09    
       BCS    LFBBF   
       INC    $CC     
LFBBF: CLD            
       RTS            

LFBC1: LDA    $E5     
       SED            
       SEC            
       SBC    #$01    
       STA    $E5     
       CLD            
       RTS            

LFBCB: LDA    $82     
       AND    #$07    
       STA    $F8     
LFBD1: LDA    $CB     
       CMP    #$07    
       BCC    LFBD9   
       LDA    #$07    
LFBD9: CMP    $F8     
       BCS    LFBE1   
       DEC    $F8     
       BPL    LFBD1   
LFBE1: LDA    $F7     
       CMP    #$0C    
       BCC    LFBF1   
       LDA    $F8     
       AND    #$03    
       CMP    #$01    
       BNE    LFBF1   
       INC    $F8     
LFBF1: LDA    $91,X   
       AND    #$C0    
       ORA    $F8     
       STA    $F8     
       LDA    $82     
       AND    #$80    
       JMP    LFE9B   
LFC00: .byte $FF,$36,$36,$7E,$76,$6E,$5E,$5E,$7C,$3C,$7E,$7C,$FE,$FE,$FE,$F8
       .byte $78,$70,$00,$FF,$1C,$1C,$1C,$7E,$7E,$76,$4E,$5E,$7C,$3C,$7E,$7C
       .byte $FE,$FE,$FE,$F8,$78,$70,$00,$00,$7E,$14,$7E,$7E,$42,$5E,$7C,$3C
       .byte $7E,$FE,$FE,$FE,$F8,$78,$70,$00,$00,$16,$16,$16,$16,$06,$06,$06
       .byte $06,$06,$06,$36,$36,$36,$24,$24,$24,$24,$24,$24,$92,$92,$94,$94
       .byte $96,$96,$98,$98,$98,$98,$98,$98,$98,$98,$98,$98,$98,$98,$98,$98
       .byte $7E,$24,$3C,$7D,$75,$FF,$F7,$BE,$BC,$7E,$66,$7E,$FF,$FF,$FF,$3C
       .byte $3C,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$7E,$24,$3C,$BE,$B6,$FF,$F7,$7D,$3D,$66,$66
       .byte $7E,$FF,$FF,$FF,$3C,$3C,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFCAA: .byte $00,$13,$26,$26,$60,$85
LFCB0: .byte $3A,$39,$3A,$3A,$3A,$3A
LFCB6: .byte $18,$18,$28,$28,$38,$38,$48,$58
LFCBE: .byte $68
LFCBF: .byte $78
LFCC0: .byte $06,$05,$05,$05,$04,$03,$02,$01,$00,$00,$00,$00,$FF,$FE,$FE,$03
       .byte $02,$02,$01,$00,$00,$00,$00,$FF,$FE,$FD,$FC,$FB,$FB,$FB,$FA
LFCDF: .byte $03,$05,$06,$03,$03,$01,$05,$04,$06,$06,$04
LFCEA: BCS    LFCF3   
       LDA    $F8     
       ADC    $F9     
       JMP    LFCF7   
LFCF3: LDA    $F8     
       SBC    $F9     
LFCF7: JSR    LFF5B   
       RTS            

LFCFB: .byte $EA
LFCFC: .byte $01,$05,$05,$07
LFD00: .byte $8F,$CA,$38,$1A
LFD04: .byte $1B,$45,$40,$40,$8C,$00
LFD0A: .byte $12,$1A,$6D,$7C,$32,$22,$42,$5E,$00,$C0,$60,$30,$78,$FC,$07,$02
       .byte $00,$00,$40,$30,$78,$FC,$36,$E4,$FF,$EB,$6A,$BD,$81,$C3,$E7,$42
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$EB,$6A,$BD,$81,$C3,$A5,$81
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$3C,$7E,$D5,$80,$80,$AB,$7E,$3C
       .byte $00,$00,$00,$00
LFD4E: .byte $00,$00,$00,$00,$01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$04,$04
       .byte $3C,$7E,$FF,$D5,$AB,$FF,$7E,$3C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $9C,$CF,$7E,$3F,$7D,$CE,$9C,$00,$00,$00,$00,$00,$00,$00,$00,$0C
       .byte $DE,$FF,$3F,$FD,$DE,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$1B,$09
       .byte $3F,$1B,$1B,$1F,$1F,$5F,$3F,$7F,$7F,$3F,$3E,$3C,$10,$10,$00,$00
       .byte $00,$3F,$1B,$1B,$1B,$1F,$1F,$1F,$7F,$7F,$7F,$3F,$3E,$3C,$10,$10
       .byte $00,$00,$00,$00,$36,$12,$1B,$1B,$1B,$1F,$1F,$5F,$3F,$7F,$7F,$3F
       .byte $3E,$3C,$10,$10
LFDC2: .byte $04,$03,$02,$01,$00,$00,$00,$01,$02,$03,$04,$03,$02,$01,$00,$00
LFDD2: .byte $30,$20,$20,$F0,$20
LFDD7: .byte $16,$24,$30,$40,$50,$60,$71,$83,$97
LFDE0: .byte $84,$83,$82,$81,$80,$90,$A0,$B0,$C0,$B0,$A0,$90,$80,$81,$82,$83
LFDF0: LDX    #$04    
       LDA    $81     
       AND    #$08    
       BNE    LFDF9   
       INX            
LFDF9: STX    $EE     
       LDX    #$04    
       STX    $E7     
       RTS            

LFE00: LSR            
       LSR            
       LSR            
LFE03: LSR            
LFE04: RTS            

LFE05: LDA    #$07    
       STA    $F9     
LFE09: STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       NOP            
       LDX    #$F3    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    #$01    
       LDA    #$40    
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    RESBL   
       STY    CTRLPF  
       STA    HMBL    
       STX    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STY    VDELP0  
       STY    VDELP1  
       DEY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STA    $F8     
       STA    HMCLR   
LFE3B: LDY    $F9     
       LDA    ($8F),Y 
       STA    $F8     
       LDA    ($8D),Y 
       TAX            
       LDA    ($85),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($87),Y 
       STA    GRP1    
       LDA    ($89),Y 
       STA    GRP0    
       LDA    ($8B),Y 
       LDY    $F8     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $F9     
       BPL    LFE3B   
       LDA    #$80    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

LFE77: LDA    #$01    
       EOR    $C7     
       STA    $C7     
       LDX    #$05    
LFE7F: LDA    $C8,X   
       LDY    $CE,X   
       STY    $C8,X   
       STA    $CE,X   
       DEX            
       BPL    LFE7F   
       RTS            

LFE8B: LDY    #$02    
LFE8D: LDA    $82     
       ASL            
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
       DEY            
       BPL    LFE8D   
       RTS            

LFE9B: EOR    $F8     
       STA    $91,X   
       ASL            
       LDA    #$A8    
       BCS    LFEA6   
       LDA    #$D8    
LFEA6: STA    $E0,X   
       LDA    $CB     
       CMP    #$03    
       BNE    LFEB0   
       LDA    #$00    
LFEB0: AND    #$03    
       TAY            
       LDA    LFCFC,Y 
       STA    $DC,X   
LFEB8: LDA    $E0,X   
       LDY    #$08    
       CMP    #$80    
       BCC    LFEC6   
       SBC    #$80    
       JSR    LFE00   
       TAY            
LFEC6: LDA    $DC,X   
       AND    LFDD7,Y 
       TAY            
       LDA    LFFC8,Y 
       AND    #$0F    
       STA    $D8,X   
       TYA            
       BEQ    LFEE4   
       LDA    LFFC8,Y 
       AND    #$F0    
       CLC            
       ADC    $E0,X   
       CMP    #$A0    
       BCC    LFEE4   
       SBC    #$60    
LFEE4: STA    $D4,X   
       RTS            

LFEE7: .byte $89,$89,$9C,$9C,$AF,$AF,$9C,$9C
LFEEF: .byte $1A,$5C,$1B,$5D
LFEF3: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$00,$00,$00,$00,$EA,$3C,$66,$66
       .byte $66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60
       .byte $3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C
       .byte $7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66
       .byte $66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66
       .byte $3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$E0,$A0,$E0
LFF5B: CMP    #$F0    
       BCC    LFF61   
       SBC    #$60    
LFF61: CMP    #$A0    
       BCC    LFF67   
       SBC    #$A0    
LFF67: RTS            

LFF68: .byte $0C,$06,$03,$01,$00,$00,$00,$00
LFF70: .byte $2D,$29,$E9,$A9,$ED,$61,$2F,$00
LFF78: .byte $50,$58,$5C,$56,$53,$11,$F0,$00
LFF80: .byte $BA,$8A,$BA,$A2,$3A,$80,$FE,$00
LFF88: .byte $E9,$AB,$AF,$AD,$E9,$00,$00,$00,$00,$00,$00,$F7,$95,$87,$90,$F0
       .byte $00,$47,$41,$77,$55,$75,$00,$00,$00,$03,$00,$4B,$4A,$6B,$00,$08
       .byte $00,$80,$80,$AA,$AA,$BA,$27,$22,$00,$00,$00,$11,$11,$17,$15,$17
       .byte $00,$00,$00,$77,$51,$73,$51,$77
LFFC0: .byte $84,$D6,$D6,$1A,$26,$26,$44,$00
LFFC8: .byte $00,$20,$10,$11,$00,$02,$01,$03
LFFD0: STA    $F8     
       JSR    LFE00   
       STA    $96,X   
       LDA    $F8     
       AND    #$0F    
       CLC            
       ADC    $99,X   
       CMP    #$10    
       BCC    LFFE4   
       INC    $96,X   
LFFE4: AND    #$0F    
       STA    $99,X   
       RTS            

LFFE9: .byte $03,$0F,$3F,$FF,$C0,$F0,$FC,$FF,$03,$0F,$3F,$FF,$70,$7E,$3C,$3C
LFFF9: .byte $8E,$BA,$EA,$00,$F0,$00,$F0
