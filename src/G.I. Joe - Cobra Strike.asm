; Disassembly of roms/G.I. Joe - Cobra Strike.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/G.I. Joe - Cobra Strike.bin
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
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
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
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
INPT0   =  $38
INPT1   =  $39
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296
LF91D   =   $F91D
LFA82   =   $FA82
LFB38   =   $FB38

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       TXS            
       STX    $85     
       INX            
       BNE    LF005   
       STX    SWACNT  
       STX    SWBCNT  
       JSR    LFF39   
       BRK            
       .byte $80 ;.NOP
LF018: LDA    #$C2    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       LDA    $86     
       ASL            
       ASL            
       ASL            
       ASL            
       SEC            
       ADC    $86     
       STA    $86     
       LDA    $88     
       EOR    #$FF    
       STA    $88     
       STA    WSYNC   
       LDY    $C5     
       STY    COLUBK  
       LDY    #$AA    
       STY    TIM64T  
       LDA    $EE     
       LSR            
       STA    COLUPF  
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    $81     
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    VSYNC   
       LDA    $C1     
       AND    #$07    
       BNE    LF077   
       LDX    $8A     
       BMI    LF06E   
       INX            
       CPX    #$40    
       BNE    LF075   
       LDX    #$C0    
       BNE    LF075   
LF06E: DEX            
       CPX    #$80    
       BNE    LF075   
       LDX    #$00    
LF075: STX    $8A     
LF077: LDA    $CD     
       BNE    LF0ED   
       LDA    $84     
       AND    #$02    
       BEQ    LF0A5   
       LDX    $87     
       BIT    $D8     
       BMI    LF08C   
       LSR            
       AND    $C1     
       BNE    LF0A2   
LF08C: LDA    $D2     
       TAY            
       AND    #$08    
       BEQ    LF098   
       CPX    #$22    
       BEQ    LF0A2   
       DEX            
LF098: TYA            
       AND    #$04    
       BEQ    LF0A2   
       CPX    #$7F    
       BEQ    LF0A2   
       INX            
LF0A2: TXA            
       BNE    LF0EB   
LF0A5: LDA    $F9     
       BMI    LF0B1   
       LDA    $86     
       ORA    #$80    
       AND    #$DF    
       STA    $F9     
LF0B1: AND    #$7F    
       CLC            
       ADC    #$21    
       TAX            
       CMP    $87     
       BEQ    LF0BF   
       BCS    LF0C3   
       BCC    LF0DA   
LF0BF: STA    $F9     
       BEQ    LF0EB   
LF0C3: LDA    #$02    
       BIT    $D8     
       BPL    LF0CA   
       ASL            
LF0CA: AND    $86     
       LSR            
       CLC            
       ADC    $87     
       STA    $87     
       CPX    $87     
       BCS    LF0ED   
       DEC    $87     
       BNE    LF0ED   
LF0DA: LDA    $86     
       AND    #$20    
       BEQ    LF0ED   
       LDA    #$FF    
       BIT    $D8     
       BPL    LF0E8   
       LDA    #$FE    
LF0E8: CLC            
       ADC    $87     
LF0EB: STA    $87     
LF0ED: LDA    $86     
       AND    #$72    
       BNE    LF106   
       LDX    $89     
       INX            
       LDA    $C1     
       BMI    LF0FF   
       DEX            
       DEX            
       BPL    LF104   
       INX            
LF0FF: CPX    #$09    
       BCC    LF104   
       DEX            
LF104: STX    $89     
LF106: LDX    #$01    
       LDA    $A0     
       CMP    #$65    
       BEQ    LF117   
       DEX            
       LDA    $A1     
       CMP    #$65    
       BEQ    LF117   
       LDX    $82     
LF117: LDA    $A0,X   
       STA    $BE     
       CLC            
       ADC    #$04    
       STA    $BF     
       LDX    #$05    
       STX    $F3     
LF124: LDA    $98,X   
       LDX    #$FF    
       JSR    LFF89   
       LDX    $F3     
       STY    $AA,X   
       DEC    $F3     
       DEX            
       BNE    LF124   
       INX            
       LDA    $CD     
       BEQ    LF15D   
       LDA    $AA     
       ORA    #$0E    
       STA    $AA     
       DEC    $CD     
       BNE    LF155   
       LDA    #$00    
       STA    $D0     
       STA    $CE     
       STA    $D3     
       STA    $C5     
       LDA    #$B0    
       STA    $98     
       LDA    #$1C    
       STA    $80     
LF155: LDA    #$0F    
       CMP    $CD     
       BNE    LF15D   
       STX    $D0     
LF15D: LDA    $CB,X   
       BEQ    LF180   
       DEC    $CB,X   
       BNE    LF16D   
       STA    $C5     
       LDY    #$65    
       STY    $A0,X   
       BNE    LF180   
LF16D: AND    #$07    
       TAY            
       LDA    LFF15,Y 
       CLC            
       ADC    $9E,X   
       STA    $9E,X   
       LDA    LFF1D,Y 
       CLC            
       ADC    $A0,X   
       STA    $A0,X   
LF180: DEX            
       BPL    LF15D   
       LDX    #$01    
LF185: LDA    $B2,X   
       STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       LDA    $B4,X   
       STA    AUDF0,X 
       DEX            
       BPL    LF185   
       LDA    $82     
       EOR    #$01    
       STA    $82     
       BNE    LF1A5   
       LDX    $D4     
       BEQ    LF1A5   
       DEX            
       STX    $D4     
LF1A5: LDX    #$01    
LF1A7: LDA    $B4,X   
       AND    #$1F    
       STA    $FB     
       LDA    $B4,X   
       SEC            
       SBC    #$20    
       AND    #$E0    
       STA    $FC     
       LDA    $C1     
       AND    #$03    
       BNE    LF237   
       LDY    $B0,X   
       BEQ    LF220   
       LDA    $FC     
       BNE    LF210   
       LDY    $B0,X   
       BMI    LF225   
       LDA    LFECA,Y 
       AND    #$E0    
       STA    $FC     
       LDA    LFED3,Y 
       AND    #$0F    
       STA    $FE     
       LDA    LFED3,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $B2,X   
       AND    #$0F    
       CMP    $FE     
       BEQ    LF218   
       STA    $FD     
       LDA    $B2,X   
       AND    #$F0    
       ORA    $FD     
       STA    $B2,X   
       LDA    LFEDC,Y 
       AND    #$1F    
       STA    $FE     
       LDA    LFEDC,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$04    
       BCC    LF205   
       ORA    #$F8    
LF205: CLC            
       ADC    $FB     
       AND    #$1F    
       CMP    $FE     
       BEQ    LF218   
       STA    $FB     
LF210: LDA    $FB     
       ORA    $FC     
       STA    $B4,X   
       BNE    LF220   
LF218: LDA    #$00    
       STA    $B0,X   
       STA    $B2,X   
       STA    $B4,X   
LF220: DEX            
       BPL    LF1A7   
       BMI    LF237   
LF225: INC    $B0,X   
       LDA    $B0,X   
       AND    #$1F    
       TAY            
       CMP    #$15    
       BNE    LF232   
       BEQ    LF218   
LF232: JSR    LFD45   
       BNE    LF220   
LF237: LDA    $83     
       ROR            
       BCC    LF249   
       LDA    $86     
       BNE    LF249   
       LDA    $9A     
       STA    $EE     
       STA    $EC     
       ASL            
       STA    $C5     
LF249: BIT    $83     
       BVC    LF257   
       INC    $C6     
       BNE    LF257   
       DEC    $C6     
       BIT    $D2     
       BPL    LF272   
LF257: LDA    SWCHB   
       STA    $FB     
       EOR    $85     
       STA    $FC     
       LDA    $FB     
       AND    #$02    
       BEQ    LF27C   
       LDA    $FC     
       AND    #$01    
       BEQ    LF2A0   
       LDA    $FB     
       AND    #$01    
       BEQ    LF2A0   
LF272: LDA    #$80    
       STA    $83     
       JSR    LFF39   
       JMP    LF2A0   
LF27C: JSR    LFF39   
       LDA    $FC     
       AND    #$02    
       BNE    LF289   
       DEC    $8D     
       BNE    LF2A0   
LF289: INC    $84     
       LDA    #$00    
       STA    $83     
       LDA    $84     
       AND    #$03    
       BNE    LF29C   
       CLC            
       LDA    $84     
       ADC    #$3C    
       STA    $84     
LF29C: LDX    #$1E    
       STX    $8D     
LF2A0: LDA    $FB     
       STA    $85     
       LDA    #$15    
       STA    CTRLPF  
       LDA    #$03    
       LDX    #$00    
       JSR    LFFB3   
       LDA    $CA     
       CMP    #$08    
       BCC    LF2DF   
       LDX    $82     
       BEQ    LF2DF   
       CLC            
       LDA    $D1     
       BNE    LF2BF   
       SEC            
LF2BF: ROL    $D1     
       BIT    $D1     
       BVC    LF2DF   
       BRK            
       .byte $80 ;.NOP
       LDA    #$F0    
       STA    $CE     
       STA    $CD     
       LDA    #$9A    
       STA    $C5     
       LDX    $D7     
       INX            
       TXA            
       AND    #$0F    
       STA    $D7     
       LDA    #$00    
       STA    $D1     
       STA    $CA     
LF2DF: LDX    #$0E    
       LDY    #$FE    
LF2E3: STY    $E1,X   
       DEX            
       DEX            
       BPL    LF2E3   
       LDX    $D7     
       LDA    $CD     
       BNE    LF2F4   
       LDA    LFEB2,X 
       STA    $AA     
LF2F4: LDA    LFF29,X 
       STA    $D8     
       AND    #$03    
       STA    $91     
       LDX    #$01    
       BIT    $83     
       BMI    LF325   
       BVS    LF325   
       LDA    $84     
       STA    NUSIZ0  
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    LFDF2   
       STA    $EA     
       LDA    #$00    
       STA    NUSIZ1  
       LDA    #$85    
       STA    $E0     
       STA    $E4     
       STA    $E8     
       LDA    #$77    
       JSR    LFFB3   
       BNE    LF364   
LF325: LDA    #$74    
       JSR    LFFB3   
       LDX    #$08    
LF32C: LDA    $C0,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFDF1,Y 
       STA    $E0,X   
       LDA    $C0,X   
       AND    #$0F    
       TAY            
       LDA    LFDF1,Y 
       STA    $E2,X   
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LF32C   
       LDX    #$00    
       LDY    #$7C    
LF34C: LDA    $E0,X   
       CMP    #$2D    
       BNE    LF35A   
       STY    $E0,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF34C   
LF35A: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
LF364: LDA    #$00    
       STA    VBLANK  
       LDA    #$06    
       STA    $FB     
LF36C: LDA    INTIM   
       BMI    LF36C   
LF371: LDY    $FB     
       LDA    ($E0),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($E2),Y 
       STA    GRP1    
       LDA    ($E4),Y 
       STA    GRP0    
       LDA    ($E6),Y 
       STA    $FC     
       LDA    ($E8),Y 
       TAX            
       LDA    ($EA),Y 
       TAY            
       LDA    $FC     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $FB     
       BPL    LF371   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       LDA    $CE     
       BPL    LF3CB   
       LDA    #$65    
       STA    $A0     
       STA    $A1     
       LDY    #$09    
LF3AF: STA    WSYNC   
       DEY            
       BPL    LF3AF   
       STY    $98     
       LDA    #$0F    
       CMP    $D7     
       BNE    LF3C8   
LF3BC: INY            
       STA    WSYNC   
       LDA    LFDFB,Y 
       STA    GRP0    
       CPY    #$06    
       BNE    LF3BC   
LF3C8: JMP    LF6AD   
LF3CB: LDA    $87     
       CLC            
       ADC    $D1     
       JSR    LFF87   
       INX            
       LDA    $87     
       SEC            
       SBC    #$03    
       SBC    $D1     
       JSR    LFF89   
       INX            
       INX            
       LDA    $87     
       CLC            
       ADC    #$09    
       ADC    $D1     
       JSR    LFF89   
       LDY    #$00    
       LDX    $82     
       LDA    #$35    
       STA    NUSIZ1  
       LDA    #$15    
       STA    NUSIZ0  
       LDA    $AA     
       STA    COLUP0  
       LDA    $80     
       STA    COLUP1  
LF3FE: JSR    LFC7C   
       CPY    $89     
       BCC    LF3FE   
       LDA    #$E0    
       STA    GRP0    
       STA    HMCLR   
       LDA    #$10    
       STA    HMP0    
       JSR    LFCCB   
       LDA    #$F0    
       STA    GRP0    
       JSR    LFCCB   
       LDA    #$F8    
       STA    GRP0    
       JSR    LFCCB   
       LDA    #$FC    
       STA    GRP0    
       JSR    LFCCB   
       LDA    #$BA    
       STA    GRP0    
       LDA    #$84    
       STA    GRP1    
       LDA    #$10    
       STA    HMP1    
       JSR    LFCCB   
       LDA    #$99    
       STA    GRP0    
       LDA    #$AA    
       STA    GRP1    
       LDA    #$20    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
       LDA    #$07    
       STA    HMP1    
       STA    NUSIZ0  
       LDA    #$A8    
       STA    GRP0    
       JSR    LFC3F   
       LDA    #$10    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       STA    GRP0    
       LDA    #$FF    
       STA    GRP1    
       LDA    $AA     
       STA    COLUP1  
       LDA    $D0     
       AND    $C1     
       BEQ    LF472   
       JMP    LFD8C   
LF472: JSR    LFC3F   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$70    
       STA    HMP1    
       LDA    #$10    
       STA    HMP0    
       LDA    #$FC    
       STA    GRP0    
       STA    GRP1    
       LDA    #$1C    
       STA    COLUP1  
       JSR    LFC7C   
       LDA    #$78    
       STA    GRP0    
       LDA    #$37    
       STA    NUSIZ1  
       STA    HMCLR   
       LDA    #$10    
       STA    HMP1    
       LDA    #$F0    
       STA    HMM1    
       JSR    LFCCB   
       LDA    #$FF    
       STA    ENAM1   
       JSR    LFCCB   
       LDA    #$C0    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
       LDA    #$05    
       STA    NUSIZ0  
       LDA    #$DB    
       STA    GRP0    
       LDA    #$C0    
       STA    GRP1    
       JSR    LFC3F   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    HMP0    
       JSR    LFC7C   
       LDA    #$7E    
       STA    GRP0    
       STA    HMCLR   
       LDA    #$B0    
       STA    HMP0    
       LDA    #$3C    
       LDX    $AA     
       STA    WSYNC   
       STA    ENABL   
       STX    COLUP1  
       STA    GRP0    
       LDA    $AB     
       STA    HMBL    
       AND    #$0F    
       TAX            
       DEX            
LF4EA: DEX            
       BPL    LF4EA   
       STA    RESBL   
       LDA    #$0E    
       STA    WSYNC   
       STA    HMOVE   
       INY            
       INY            
       STA    COLUP0  
       LDA    #$D8    
       STA    GRP1    
       LDA    #$18    
       STA    NUSIZ0  
       LDA    #$81    
       STA    GRP0    
       LDX    $82     
       LDA    $8B     
       BEQ    LF512   
       STA    $BE     
       CLC            
       ADC    #$04    
       STA    $BF     
LF512: INY            
       STA    WSYNC   
       LDA    #$C3    
       STA    GRP0    
       LDA    #$C0    
       STA    GRP1    
       STA    HMCLR   
       JSR    LFC4E   
       LDA    #$42    
       STA    GRP0    
       LDA    #$50    
       STA    HMP0    
       JSR    LFC9B   
       LDA    #$81    
       STA    GRP0    
       LDA    #$15    
       STA    NUSIZ0  
       LDA    $AA     
       STA    COLUP0  
       JSR    LFC4E   
       LDA    #$C3    
       STA    GRP0    
       LDA    #$1C    
       STA    COLUP1  
       LDA    #$F0    
       STA    HMP0    
       JSR    LFC9B   
       LDA    #$E7    
       STA    GRP1    
       LDA    #$C6    
       STA    GRP0    
       JSR    LFC47   
       LDA    #$CC    
       STA    GRP0    
       JSR    LFC4E   
       LDA    $AA     
       STA    COLUP1  
       JSR    LFC4E   
       LDA    #$FF    
       STA    GRP1    
       LDA    #$20    
       STA    HMP0    
       JSR    LFC9B   
       LDA    #$1C    
       STA    COLUP0  
       LDA    #$3C    
       STA    GRP0    
       JSR    LFC4E   
       JSR    LFC4E   
       LDA    #$04    
       STA    COLUP0  
       JSR    LFC4E   
       LDA    $AA     
       STA    COLUP0  
       LDA    #$1C    
       STA    COLUP1  
       LDA    #$D8    
       STA    GRP1    
       LDA    #$C3    
       STA    GRP0    
       JSR    LFC4E   
       JSR    LFC4E   
       LDA    #$FF    
       STA    GRP1    
       JSR    LFC4E   
       JSR    LFC4E   
       JSR    LFC4E   
       LDA    $AA     
       STA    COLUP1  
       LDA    #$1C    
       STA    COLUP0  
       LDA    #$3C    
       STA    GRP0    
       LDA    #$FC    
       STA    GRP1    
       JSR    LFC4E   
       JSR    LFC4E   
       LDA    #$04    
       STA    COLUP0  
       LDA    #$00    
       STA    HMP0    
       JSR    LFC4E   
       LDA    #$1C    
       STA    COLUP0  
       LDA    #$10    
       STA    HMM1    
       LDA    #$F0    
       STA    HMP1    
       LDA    #$FC    
       STA    GRP1    
       JSR    LFC9B   
       JSR    LFC4E   
       LDA    $AA     
       STA    COLUP0  
       LDA    #$1C    
       STA    COLUP1  
       LDA    #$C3    
       STA    GRP0    
       JSR    LFC9B   
       LDA    #$F8    
       STA    GRP1    
       JSR    LFC47   
       JSR    LFC4E   
       LDA    $AA     
       STA    COLUP0  
       LDA    #$C3    
       STA    GRP0    
       JSR    LFC9B   
       LDA    $AA     
       STA    COLUP1  
       LDA    #$1C    
       STA    COLUP0  
       LDA    #$3C    
       STA    GRP0    
       JSR    LFC4E   
       JSR    LFC9B   
       JSR    LFC47   
       LDA    #$04    
       STA    COLUP0  
       JSR    LFC4E   
       LDA    $AA     
       STA    COLUP0  
       LDA    #$C3    
       STA    GRP0    
       LDA    #$1C    
       STA    COLUP1  
       LDA    #$F0    
       STA    GRP1    
       JSR    LFC4E   
       JSR    LFC4E   
       JSR    LFC47   
       JSR    LFC47   
       JSR    LFC4E   
       LDA    #$3C    
       STA    GRP0    
       LDA    #$F0    
       STA    GRP1    
       LDA    $AA     
       STA    COLUP1  
       LDA    #$1C    
       STA    COLUP0  
       STA    ENAM1   
       STA    HMCLR   
       LDA    #$0C    
       STA    COLUPF  
       LDA    $8A     
       AND    #$1F    
       STA    $F2     
       TAX            
LF65C: INX            
       TXA            
       AND    #$1F    
       TAX            
       CPX    $F2     
       BEQ    LF6AD   
       LDA    LFFDD,X 
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
       STA    HMP1    
       INY            
       CPY    $BE     
       BCS    LF689   
       CPY    $90     
       BCC    LF691   
       LDA    #$02    
       STA    ENABL   
       CPY    $92     
       BCC    LF691   
       LDA    #$F0    
       STA    ENABL   
       STA    $90     
       BMI    LF65C   
LF689: LDA    #$02    
       STA    ENAM0   
       CPY    $BF     
       BCS    LF6A5   
LF691: BIT    $88     
       BMI    LF69D   
       LDA    INPT0   
       BMI    LF65C   
       STY    $81     
       BPL    LF65C   
LF69D: LDA    INPT1   
       BMI    LF65C   
       STY    $81     
       BPL    LF65C   
LF6A5: LDA    #$F0    
       STA    $BE     
       STA    ENAM0   
       BMI    LF65C   
LF6AD: STA    WSYNC   
       STA    HMCLR   
       LDX    $82     
LF6B3: JSR    LFC9B   
       CPY    #$5E    
       BNE    LF6B3   
       LDA    $EE     
       ADC    #$D0    
       STA    COLUBK  
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       LDA    #$08    
       STA    COLUPF  
       LDA    #$EC    
       STA    REFP1   
       ADC    $EE     
       STA    COLUPF  
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$10    
       STA    HMM0    
       STA    HMM1    
       STA    ENAM0   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$02    
       LDA    #$30    
       INY            
LF6E7: DEX            
       BPL    LF6E7   
       STA    RESP0   
       STA    RESM0   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$1E    
       LDX    #$04    
LF6F6: DEX            
       BPL    LF6F6   
       STA    RESP1   
       STA    RESM1   
       STA    CXCLR   
       LDX    $82     
       STA    HMOVE   
       STA    COLUBK  
       JSR    LFD06   
LF708: LDA    LFE2C,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       LDA    ($EC),Y 
       STA    COLUBK  
       JSR    LFD06   
       CPY    #$68    
       BNE    LF708   
       LDA    #$28    
       ADC    $EE     
       STA    COLUP0  
LF724: STA    WSYNC   
       STA    HMOVE   
       LDA    LFE3B,Y 
       STA    COLUBK  
       LDA    LFE2C,Y 
       STA    GRP0    
       STA    GRP1    
       LDA    #$6C    
       ADC    $EE     
       STA    COLUP1  
       STA    HMCLR   
       JSR    LFD06   
       CPY    #$6F    
       BNE    LF724   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$EC    
       STA    HMM0    
       STA    HMM1    
       STA    COLUBK  
       LDA    #$02    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    REFP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    $AE     
       INY            
       STY    $F4     
       LDX    #$00    
       JSR    LFFC8   
       LDA    #$35    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    $82     
       LDY    $F4     
       INY            
       STA    HMCLR   
       JSR    LFCEC   
       INY            
       STY    $F4     
       LDX    #$01    
       LDA    $AF     
       JSR    LFFC8   
       LDA    #$70    
       STA    GRP0    
       STA    GRP1    
       LDX    $82     
       LDY    $F4     
       INY            
       STA    HMCLR   
       JSR    LFCEC   
       STX    ENAM0   
       STX    ENAM1   
       LDA    $EE     
       STA    COLUBK  
       LDA    #$F8    
       STA    GRP0    
       STA    GRP1    
       JSR    LFCEC   
       LDA    #$88    
       STA    GRP0    
       STA    GRP1    
       JSR    LFCEC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    CXP0FB  
       STA    RESP0   
       INY            
       STA    $EA     
       LDA    CXP1FB  
       STA    $E8     
       STA    CXCLR   
       JSR    LFC12   
       PHA            
       PLA            
       LDA    $EE     
       ADC    #$EC    
       STA    COLUP0  
       STA    RESP1   
       LDA    #$10    
       STA    WSYNC   
       STA    HMOVE   
       ADC    $EE     
       STA    COLUBK  
       JSR    LFCEC   
       LDA    #$04    
       STA    $FA     
       LDA    #$13    
       STA    CTRLPF  
       JSR    LFCEC   
       LDA    #$F0    
       STA    PF0     
       STA    GRP0    
       LDA    #$12    
       STA    HMP1    
       LDA    #$2E    
       ADC    $EE     
       STA    COLUP1  
       LDX    $82     
       INY            
       LDA    #$FF    
       STA    GRP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
LF806: JSR    LFCEC   
       DEC    $FA     
       BNE    LF806   
       LDA    #$03    
       STA    ENAM0   
       STA    $FA     
LF813: JSR    LFCEC   
       DEC    $FA     
       BPL    LF813   
       INY            
       LDX    #$00    
       LDA    #$E0    
       STA    PF1     
       LDA    #$11    
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STA    CTRLPF  
       LDA    #$C8    
       ADC    $EE     
       STA    COLUPF  
       STA    COLUP0  
       ADC    #$06    
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STY    $F4     
       LDA    $AC     
       JSR    LFFC8   
       JSR    LFD04   
       INX            
       STY    $F4     
       STA    HMCLR   
       LDA    #$C4    
       STA    COLUP0  
       LDA    $AD     
       JSR    LFFC8   
       LDA    #$D4    
       STA    COLUP1  
       LDA    $C2     
       STA    NUSIZ0  
       LDA    $C3     
       STA    NUSIZ1  
       LDX    $82     
       LDY    $F4     
       INY            
       STA    HMCLR   
       JSR    LFCEC   
       LDA    #$A0    
       STA    PF1     
       STA    HMCLR   
       LDA    #$FE    
       STA    $DD     
       STA    $DF     
       LDA    #$02    
       STA    $DC     
       LDA    #$17    
       STA    $DE     
       LDA    $C1     
       AND    #$08    
       BEQ    LF88F   
       LDA    #$17    
       STA    $DC     
       LDA    #$02    
       STA    $DE     
LF88F: LDA    #$14    
       STA    $D6     
       STA    WSYNC   
       STA    HMOVE   
       STA    CXCLR   
LF899: INY            
       CPY    $90     
       BCC    LF8AE   
       LDA    #$02    
       STA    ENABL   
       CPY    $92     
       BCC    LF8AE   
       LDA    #$F0    
       STA    ENABL   
       STA    $90     
       BMI    LF8B4   
LF8AE: LDA    INPT0,X 
       BMI    LF8B4   
       STY    $81     
LF8B4: STA    WSYNC   
       STA    HMOVE   
       STY    $F4     
       LDY    $D6     
       LDA    ($DC),Y 
       STA    GRP0    
       LDA    ($DE),Y 
       STA    GRP1    
       DEY            
       BEQ    LF8CD   
       STY    $D6     
       LDY    $F4     
       BNE    LF899   
LF8CD: LDA    $DE     
       SEC            
       SBC    #$0B    
       STA    $DE     
       STY    PF0     
       STY    PF1     
       LDY    $F4     
LF8DA: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       JSR    LFC91   
       LDA    #$E4    
       STA    ENABL   
       ADC    $EE     
       STA    COLUBK  
       ADC    #$13    
       STA    COLUP0  
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    RESP0   
       LDA    #$87    
       STA    TIM64T  
       LDA    #$D4    
       STA    COLUP1  
       STA    RESP1   
       LDA    $8E     
       BEQ    LF91D   
       BIT    CXP1FB  
       BVC    LF912   
       LDX    #$01    
       BNE    LF918   
LF912: BIT    CXP0FB  
       BVC    LF91D   
       LDX    #$00    
LF918: JSR    LFD50   
       BRK            
       ASL    $A6     
       .byte $82 ;.NOP
       STA    CXCLR   
       LDA    $D2     
       AND    LFF0F,X 
       BNE    LF92E   
       LDA    $CB,X   
       BNE    LF981   
       INX            
       INX            
LF92E: LDA    $81     
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$05    
       BCS    LF951   
       STA    $F2     
       SEC            
       LDA    #$05    
       SBC    $F2     
       LDY    $84     
       BPL    LF944   
       ASL            
LF944: CLC            
       ADC    $9C,X   
       CMP    LFF12   
       BCC    LF975   
       LDA    LFF12   
       BNE    LF975   
LF951: TAY            
       DEY            
       DEY            
       DEY            
       DEY            
       STY    $F2     
       LDA    $84     
       BPL    LF95E   
       ASL    $F2     
LF95E: SEC            
       LDA    $9C,X   
       SBC    $F2     
       CPX    #$02    
       BCC    LF96D   
       CMP    #$12    
       BCS    LF975   
       LDA    #$12    
LF96D: CMP    LFF11   
       BCS    LF975   
       LDA    LFF11   
LF975: STA    $9C,X   
       LDA    #$01    
       AND    $84     
       BNE    LF981   
       LDA    $9C     
       STA    $9D     
LF981: LDX    #$00    
       LDA    SWCHA   
       STA    $D2     
LF988: LDA    $D2     
       STX    $F3     
       AND    LFF0F,X 
       BEQ    LF994   
       JMP    LFA30   
LF994: LDA    $83     
       BMI    LF99B   
LF998: JMP    LFA46   
LF99B: LDA    $CE     
       BNE    LF998   
       LDA    $A0,X   
       CMP    #$65    
       BNE    LF9BF   
       BIT    $85     
       BVC    LF9B6   
       LDA    $84     
       AND    #$01    
       BEQ    LFA1C   
       LDA    LFF11,X 
       CMP    $9C,X   
       BNE    LFA34   
LF9B6: LDY    LFF13,X 
LF9B9: STY    $9E,X   
       BRK            
       .byte $02 ;.JAM
       LDX    $F3     
LF9BF: LDA    $CB,X   
       BNE    LFA38   
       DEC    $A0,X   
       DEC    $A0,X   
       CLC            
       LDA    $89     
       ADC    #$02    
       CMP    $A0,X   
       BCC    LFA38   
       BRK            
       .byte $03 ;.SLO
       LDX    $F3     
       LDA    #$20    
       STA    $CB,X   
       SEC            
       LDA    $87     
       SBC    #$09    
       CMP    $9E,X   
       BCS    LFA38   
       ADC    #$19    
       CMP    $9E,X   
       BCC    LFA38   
       BRK            
       .byte $04 ;.NOP
       LDA    #$C0    
       STA    $C5     
       LDX    $F3     
       LDY    #$08    
       INC    $CA     
       LDA    $D3     
       BEQ    LF9FE   
       STY    $CA     
       SEC            
       LDA    #$99    
       BNE    LFA11   
LF9FE: LDA    #$01    
       CPY    $CA     
       BNE    LFA10   
       LDA    $84     
       AND    #$02    
       BEQ    LFA0E   
       LDA    #$40    
       STA    $83     
LFA0E: LDA    #$10    
LFA10: CLC            
LFA11: JSR    LFC1A   
       LDA    $CA     
       CMP    #$08    
       BCS    LFA46   
       BCC    LFA38   
LFA1C: LDA    $9C     
       LDY    LFF13   
       CMP    LFF11   
       BEQ    LF9B9   
       LDY    LFF14   
       CMP    LFF12   
       BEQ    LF9B9   
       BNE    LFA46   
LFA30: LDA    $CB,X   
       BNE    LFA46   
LFA34: LDA    #$65    
       STA    $A0,X   
LFA38: INX            
       LDA    $84     
       AND    #$01    
       BEQ    LFA46   
       CPX    #$02    
       BEQ    LFA46   
       JMP    LF988   
LFA46: LDA    INTIM   
       BMI    LFA46   
       LDX    $8E     
       LDA    LFEAB,X 
       STA    WSYNC   
       STA    GRP0    
       LDX    $CA     
       INX            
       TXA            
       ASL            
       ASL            
       ASL            
       LDX    #$A7    
       STX    TIM64T  
       TAX            
       LDY    #$08    
LFA63: LDA    LFE2B,X 
       STA    WSYNC   
       STA    GRP1    
       DEX            
       DEY            
       BNE    LFA63   
       STA    GRP0    
       LDX    $D0     
       BNE    LFA82   
       LDX    #$B0    
       BIT    $EA     
       BVS    LFA7E   
       BIT    $E8     
       BVC    LFA82   
LFA7E: STX    $98     
       BRK            
       ORA    $A6     
       .byte $82 ;.NOP
       LDA    #$00    
       STA    $F2     
       LDA    $C2,X   
       BMI    LFAC7   
LFA8C: LDA    $86     
       ROL            
       BCC    LFA93   
       INC    $F2     
LFA93: LDA    $9A,X   
       CMP    #$16    
       BCS    LFAC1   
       LDY    #$80    
       LDA    $C2,X   
       BPL    LFAA1   
       LDY    #$C0    
LFAA1: STY    $C2,X   
       LDA    $83     
       BPL    LFAB6   
       SED            
       LDA    $C8     
       CLC            
       ADC    #$0A    
       STA    $C8     
       BCC    LFAB6   
       LDA    #$01    
       JSR    LFC19   
LFAB6: CLD            
       LDY    #$56    
       LDA    $C2,X   
       ASL            
       BPL    LFAC0   
       LDY    #$89    
LFAC0: TYA            
LFAC1: SBC    $F2     
       STA    $9A,X   
       BNE    LFADC   
LFAC7: ASL            
       BMI    LFAD6   
       LDA    $9A,X   
       CMP    #$48    
       BNE    LFA8C   
       LDA    #$04    
       STA    $C2,X   
       BNE    LFA93   
LFAD6: LDA    #$88    
       STA    $C2,X   
       BNE    LFAC1   
LFADC: LDA    $83     
       BPL    LFB38   
       LDA    $98     
       STA    $90     
       CLC            
       ADC    #$07    
       STA    $92     
       LDX    $D0     
       BEQ    LFAFD   
       LDA    #$77    
       LDX    $D5     
       BEQ    LFAFB   
       LDX    $CD     
       CPX    #$0D    
       BCS    LFAFB   
       LDA    #$FF    
LFAFB: STA    $92     
LFAFD: LDA    $84     
       AND    #$02    
       BEQ    LFB11   
       LDX    $98     
       CPX    #$A0    
       BCC    LFB11   
       LDX    #$FF    
       STX    $98     
       BIT    INPT5   
       BMI    LFB38   
LFB11: LDA    $91     
       SEC            
       ADC    $98     
       TAX            
       BIT    $D8     
       BVC    LFB20   
       BIT    $86     
       BVC    LFB20   
       INX            
LFB20: LDA    $D1     
       BEQ    LFB26   
       LDX    #$FF    
LFB26: STX    $98     
       CPX    #$14    
       BCS    LFB32   
       LDA    $87     
       STA    $99     
       BNE    LFB38   
LFB32: CPX    #$1C    
       BCS    LFB38   
       BRK            
       ORA    ($E6,X) 
       CMP    ($D0,X) 
       .byte $23 ;.RLA
       INC    $C7     
       BNE    LFB48   
       BIT    $83     
       BMI    LFB48   
       LDA    #$41    
       STA    $83     
LFB48: BIT    $83     
       BPL    LFB5F   
       LDA    $CD     
       BNE    LFB5F   
       LDA    $D8     
       AND    #$1C    
       BEQ    LFB5F   
       TAX            
       LSR            
       LSR            
       AND    $C7     
       BNE    LFB5F   
       STX    $CF     
LFB5F: LDA    $83     
       BPL    LFBA3   
       LDA    $CE     
       BMI    LFBA3   
       LDA    $84     
       AND    #$02    
       TAY            
       BEQ    LFB7A   
       AND    $D2     
       BNE    LFBA3   
       BIT    $85     
       BMI    LFB7A   
       LDX    $D4     
       BEQ    LFB7E   
LFB7A: LDA    $CF     
       BEQ    LFBA3   
LFB7E: LDA    #$88    
       STA    $CD     
       STA    $D4     
       LSR            
       STA    $80     
       LDA    #$07    
       AND    $9A     
       BNE    LFB9D   
       TYA            
       BNE    LFB9D   
       LDA    $D7     
       ROR            
       BCC    LFB9D   
       CMP    #$02    
       BCC    LFB9D   
       STA    $D3     
       BRK            
       PHP            
LFB9D: LDA    #$00    
       STA    $CF     
       BRK            
       .byte $07 ;.SLO
LFBA3: LDX    #$00    
       STX    $8B     
       LDA    $89     
       CLC            
       ADC    #$0D    
       STA    $F2     
       JSR    LFC31   
       BEQ    LFBD3   
       BMI    LFBE5   
       JSR    LFC31   
       BEQ    LFBC3   
       BMI    LFBC7   
       LDX    $82     
LFBBE: JSR    LFC0B   
       BNE    LFC01   
LFBC3: LDX    #$00    
       BEQ    LFBBE   
LFBC7: LDX    #$01    
       JSR    LFC13   
       LDA    $A0     
       STA    $8B     
       JMP    LFBC3   
LFBD3: JSR    LFC31   
       BEQ    LFC01   
       BMI    LFBDE   
       LDX    #$01    
       BPL    LFBBE   
LFBDE: LDX    #$01    
LFBE0: JSR    LFC13   
       BNE    LFC01   
LFBE5: JSR    LFC31   
       BEQ    LFBF9   
       BMI    LFBFD   
       LDX    #$00    
       JSR    LFC13   
       LDA    $A1     
       STA    $8B     
       LDX    #$01    
       BPL    LFBBE   
LFBF9: LDX    #$00    
       BEQ    LFBE0   
LFBFD: LDX    $82     
       BPL    LFBE0   
LFC01: LDA    INTIM   
       BMI    LFC01   
       STA    HMCLR   
       JMP    LF018   
LFC0B: LDA    $9E,X   
       LDX    #$02    
LFC0F: JSR    LFF89   
LFC12: RTS            

LFC13: LDA    $9E,X   
       LDX    #$04    
       BNE    LFC0F   
LFC19: CLC            
LFC1A: SED            
       ADC    $C4     
       STA    $C4     
       BCC    LFC2F   
       LDA    $C0     
       ADC    #$00    
       STA    $C0     
       LDA    $8E     
       CMP    #$04    
       BEQ    LFC2F   
       INC    $8E     
LFC2F: CLD            
       RTS            

LFC31: LDA    $A0,X   
       INX            
       CMP    #$65    
       BEQ    LFC3E   
       CMP    $F2     
       BMI    LFC3E   
       LDA    #$01    
LFC3E: RTS            

LFC3F: INY            
       LDA    INPT0,X 
       BMI    LFC46   
       STY    $81     
LFC46: RTS            

LFC47: JSR    LFC4E   
       JSR    LFC9B   
       RTS            

LFC4E: INY            
       CPY    $BE     
       BCS    LFC6C   
       CPY    $90     
       BCC    LFC92   
       CPY    $90     
       BCC    LFC92   
       LDA    #$02    
       STA    ENABL   
       CPY    $92     
       BCC    LFC92   
       LDA    #$F0    
       STA    ENABL   
       STA    $90     
       STA    WSYNC   
       RTS            

LFC6C: LDA    #$02    
       STA    ENAM0   
       CPY    $BF     
       BCC    LFC92   
       LDA    #$F0    
       STA    $BE     
       STA    ENAM0   
       BMI    LFC98   
LFC7C: INY            
       CPY    $BE     
       BCC    LFC92   
       LDA    #$02    
       STA    ENABL   
       CPY    $BF     
       BCC    LFC92   
       LDA    #$F0    
       STA    ENABL   
       STA    $BE     
       BMI    LFC98   
LFC91: INY            
LFC92: LDA    INPT0,X 
       BMI    LFC98   
       STY    $81     
LFC98: STA    WSYNC   
       RTS            

LFC9B: INY            
       CPY    $BE     
       BCS    LFCBB   
       CPY    $90     
       BCC    LFCE1   
       CPY    $90     
       BCC    LFCE1   
       LDA    #$02    
       STA    ENABL   
       CPY    $92     
       BCC    LFCE1   
       LDA    #$F0    
       STA    ENABL   
       STA    $90     
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFCBB: LDA    #$02    
       STA    ENAM0   
       CPY    $BF     
       BCC    LFCE1   
       LDA    #$F0    
       STA    $BE     
       STA    ENAM0   
       BMI    LFCE7   
LFCCB: INY            
       CPY    $BE     
       BCC    LFCE1   
       LDA    #$02    
       STA    ENABL   
       CPY    $BF     
       BCC    LFCE1   
       LDA    #$F0    
       STA    ENABL   
       STA    $BE     
       BMI    LFCE7   
LFCE0: INY            
LFCE1: LDA    INPT0,X 
       BMI    LFCE7   
       STY    $81     
LFCE7: STA    WSYNC   
       STA    HMOVE   
       RTS            

LFCEC: INY            
       CPY    $90     
       BCC    LFCE1   
       LDA    #$02    
       STA    ENABL   
       CPY    $92     
       BCC    LFCE1   
       LDA    #$F0    
       STA    ENABL   
       STA    $90     
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFD04: LDY    $F4     
LFD06: INY            
       CPY    $90     
       BCC    LFD19   
       LDA    #$02    
       STA    ENABL   
       CPY    $92     
       BCC    LFD19   
       LDA    #$F0    
       STA    ENABL   
       STA    $90     
LFD19: RTS            

LFD1A: .byte $EA,$EA,$28,$BA,$E8,$D6,$00,$A1,$00,$A8,$A2,$00,$A5,$B0,$C5,$B1
       .byte $90,$01,$E8,$98,$30,$11,$D5,$B0,$90,$0C,$94,$B0,$B9,$C1,$FE,$95
       .byte $B2,$B9,$CA,$FE,$95,$B4,$60,$95,$B0,$A0,$00
LFD45: LDA    LFEFA,Y 
       STA    $B4,X   
       LDA    LFEE5,Y 
       STA    $B2,X   
       RTS            

LFD50: LDA    $D0     
       BEQ    LFD58   
       LDA    #$02    
       STA    $CD     
LFD58: LDA    #$FF    
       STA    $98     
       LDA    $C2,X   
       BPL    LFD66   
       ORA    #$40    
       STA    $C2,X   
       BNE    LFD78   
LFD66: LDA    #$80    
       STA    $C2,X   
       LDA    $9A,X   
       ADC    #$14    
       CMP    $99     
       BCC    LFD78   
       LDA    $9A,X   
       ADC    #$3F    
       STA    $9A,X   
LFD78: DEC    $8E     
       BEQ    LFD80   
       BPL    LFD8B   
       INC    $8E     
LFD80: LDA    #$40    
       STA    $83     
       LDA    #$FF    
       STA    $90     
       JSR    LFF70   
LFD8B: RTS            

LFD8C: LDA    #$05    
       STA    WSYNC   
       STA    NUSIZ0  
       LDA    #$04    
       STA    GRP0    
       STA    $D5     
       LDA    #$42    
       STA    COLUBK  
       LDA    #$0E    
       STA    COLUP0  
       LDA    #$F8    
       STA    GRP1    
       LDA    #$C8    
       STA    COLUP1  
       STA    HMCLR   
       STA    ENABL   
       LDX    #$01    
LFDAE: STA    WSYNC   
       INY            
       LDA    $9C,X   
       CLC            
       ADC    #$08    
       CMP    $87     
       BCC    LFDC4   
       SBC    #$0D    
       CMP    $87     
       BCS    LFDC4   
       LDA    #$00    
       STA    $D5     
LFDC4: DEX            
       BPL    LFDAE   
       STA    WSYNC   
       LDX    $82     
LFDCB: JSR    LFCE0   
       CPY    #$77    
       BNE    LFDCB   
       LDA    $D5     
       STA    GRP0    
       BNE    LFDDA   
       STA    GRP1    
LFDDA: LDA    $87     
       CLC            
       ADC    #$04    
       STA    $99     
       LDA    $89     
       STA    $98     
LFDE5: JSR    LFCE0   
       CPY    #$A0    
       BNE    LFDE5   
       STA    CXCLR   
       JMP    LF8DA   
LFDF1: .byte $2D
LFDF2: .byte $35,$3D,$45,$4D,$55,$5D,$65,$6D,$75
LFDFB: .byte $17,$14,$16,$54,$77,$00,$08,$02,$21,$11,$32,$62,$44,$84,$C8,$68
       .byte $38,$1C,$1A,$19,$5A,$BA,$BC,$BC,$88,$98,$38,$18,$80,$80,$80,$40
       .byte $48,$4C,$2C,$3A,$3A,$1B,$18,$98,$5E,$39,$39,$1E,$1C,$08,$18,$38
LFE2B: .byte $18
LFE2C: .byte $00,$1C,$22,$63,$63,$63,$22,$1C,$00,$7F,$0C,$0C,$0C,$1C,$0C
LFE3B: .byte $04,$00,$7F,$60,$60,$3E,$03,$03,$3E,$00,$7E,$03,$03,$3E,$03,$03
       .byte $7E,$00,$06,$7F,$26,$16,$0E,$06,$02,$00,$7E,$03,$03,$3E,$60,$60
       .byte $7E,$00,$3E,$63,$63,$7E,$60,$60,$3E,$00,$30,$18,$0C,$06,$03,$61
       .byte $7F,$00,$3E,$63,$63,$3E,$63,$63,$3E,$00,$3E,$03,$03,$3F,$63,$63
       .byte $3E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$1C,$1C,$1C,$00
       .byte $08,$01,$03,$06,$4C,$78,$78,$FC,$78,$18,$18,$3C,$18,$18,$7E,$81
       .byte $2E,$DE,$DE,$2E,$2E,$EE,$EE,$1E,$1E,$DE,$DE,$1E,$1E,$FE,$FE,$1C
LFEAB: .byte $00,$80,$A0,$A8,$AA,$08,$01
LFEB2: .byte $44,$C8,$66,$F4,$A6,$D8,$56,$B4,$14,$C4,$28,$34,$F8,$46,$68,$00
       .byte $43,$8A,$8C,$75,$6A,$FD,$85,$AD
LFECA: .byte $00,$2F,$3E,$5E,$31,$28,$33,$EA,$E3
LFED3: .byte $00,$06,$F4,$F2,$1F,$00,$F2,$2F,$00
LFEDC: .byte $00,$3F,$F0,$F0,$3F,$E1,$3C,$C0,$E0
LFEE5: .byte $CC,$CC,$CC,$CC,$CC,$00,$CC,$CC,$CC,$CC,$CC,$00,$CC,$CC,$CC,$CC
       .byte $CC,$00,$CC,$CC,$CC
LFEFA: .byte $5F,$57,$32,$37,$5F,$32,$5F,$57,$32,$37,$5F,$32,$5F,$57,$32,$37
       .byte $5F,$32,$57,$B2,$F7
LFF0F: .byte $80,$40
LFF11: .byte $14
LFF12: .byte $82
LFF13: .byte $19
LFF14: .byte $7D
LFF15: .byte $FE,$02,$00,$02,$00,$FE,$FE,$02
LFF1D: .byte $02,$00,$FE,$02,$FC,$00,$00,$02
LFF25: .byte $00,$05,$04,$0A
LFF29: .byte $00,$1C,$9C,$40,$DC,$88,$05,$9D,$CC,$0D,$8D,$8E,$85,$06,$86,$87
LFF39: LDX    #$16    
       LDA    #$00    
LFF3D: STA    $C0,X   
       DEX            
       BPL    LFF3D   
       INX            
       LDA    $84     
       AND    #$42    
       BEQ    LFF53   
       INX            
       ASL            
       BPL    LFF53   
       INX            
       AND    #$04    
       BEQ    LFF53   
       INX            
LFF53: LDA    LFF25,X 
       STA    $D7     
       LDA    #$64    
       STA    $87     
       STA    $9A     
       STA    $9C     
       STA    $9D     
       LDA    #$80    
       STA    $C2     
       LDA    #$C0    
       STA    $C3     
       STA    $98     
       LDA    #$04    
       STA    $8E     
LFF70: LDA    #$1C    
       STA    $EE     
       LDA    #$65    
       STA    $A0     
       STA    $A1     
       LDA    #$1C    
       STA    $80     
       LDA    #$3B    
       STA    $EC     
       LDA    #$44    
       STA    $AA     
       RTS            

LFF87: LDX    #$00    
LFF89: STA    $F0     
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $F0     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F1     
       CLC            
       ADC    $F0     
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F1     
       CLC            
       ADC    #$80    
       STA    HMCLR   
       TAY            
       TXA            
       BMI    LFFC7   
       TYA            
LFFB3: STA    WSYNC   
       STA    HMCLR   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
       NOP            
       NOP            
LFFBE: DEY            
       BPL    LFFBE   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
LFFC7: RTS            

LFFC8: STA    WSYNC   
       STA    HMP0,X  
       AND    #$0F    
       STA    HMOVE   
       TAY            
       NOP            
       NOP            
LFFD3: DEY            
       BPL    LFFD3   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFFDD: .byte $F0,$F0,$F0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$F0,$F0,$00
       .byte $10,$10,$20,$20,$20,$20,$20,$20,$30,$20,$10,$10,$10,$10,$10,$00
       .byte $F0,$1C,$FD
