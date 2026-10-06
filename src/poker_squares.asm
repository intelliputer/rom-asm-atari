; Disassembly of roms/poker_squares.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/poker_squares.bin
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
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       INC    $EB     
       LDA    $EB     
       AND    #$01    
       BEQ    LF01D   
       INC    $FC     
LF01D: STA    WSYNC   
       LDX    #$07    
LF021: DEX            
       BNE    LF021   
       STA    RESM0   
       STA    RESM1   
       LDA    #$60    
       STA    HMM0    
       LDA    #$F0    
       STA    HMM1    
       STA    WSYNC   
       LDX    #$07    
LF034: DEX            
       BNE    LF034   
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP1    
       LDA    #$60    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$0C    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$00    
       STX    $EC     
       STX    $ED     
       STX    $EE     
       STX    $EF     
       STX    $F0     
       STA    HMCLR   
LF05B: STY    $E7     
       LDA.wy $00B2,Y 
       TAY            
       LDA    LFF84,Y 
       STA    $80,X   
       INX            
       LDA    LFFBA,Y 
       STA    $80,X   
       INX            
       LDY    $E7     
       INY            
       CPY    #$19    
       BNE    LF05B   
       LDY    #$0F    
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF07F   
       LDY    #$FF    
LF07F: STY    $FA     
       LDX    #$00    
LF083: LDA    $B2,X   
       CMP    #$1A    
       ROL    $EC     
       LDA    $B7,X   
       CMP    #$1A    
       ROL    $ED     
       LDA    $BC,X   
       CMP    #$1A    
       ROL    $EE     
       LDA    $C1,X   
       CMP    #$1A    
       ROL    $EF     
       LDA    $C6,X   
       CMP    #$1A    
       ROL    $F0     
       INX            
       CPX    #$05    
       BNE    LF083   
       LDA    $EB     
       AND    #$08    
       BEQ    LF0BE   
       LDA    $E6     
       CMP    #$19    
       BEQ    LF0BE   
       LDA    $EA     
       ASL            
       TAX            
       LDA    #$50    
       STA    $80,X   
       LDA    #$FC    
       STA    $81,X   
LF0BE: LDA    INPT4   
       AND    #$80    
       BNE    LF101   
       LDA    $F7     
       BEQ    LF0CC   
       DEC    $F7     
       BNE    LF101   
LF0CC: LDA    #$10    
       STA    $F7     
       LDA    $EA     
       BPL    LF104   
       LDA    #$00    
       STA    $EA     
       STA    $E6     
       LDX    #$18    
       LDA    #$34    
LF0DE: STA    $B2,X   
       DEX            
       BPL    LF0DE   
       LDA    $FB     
       AND    #$40    
       BEQ    LF101   
       LDA    $CB     
       STA    $BE     
       LDA    $CC     
       STA    $B2     
       LDA    $CD     
       STA    $B6     
       LDA    $CE     
       STA    $C6     
       LDA    $CF     
       STA    $CA     
       LDA    #$05    
       STA    $E6     
LF101: JMP    LF126   
LF104: LDX    $E6     
       LDY    $EA     
       LDA    #$8A    
       STA    $F5     
       LDA    #$06    
       STA    $F6     
       LDA.wy $00B2,Y 
       CMP    #$34    
       BNE    LF126   
       LDA    $CB,X   
       STA.wy $00B2,Y 
       INC    $E6     
       LDA    #$22    
       STA    $F5     
       LDA    #$03    
       STA    $F6     
LF126: LDA    $EA     
       BPL    LF134   
       LDA    SWCHB   
       AND    #$C0    
       STA    $FB     
       JMP    LF17B   
LF134: LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BEQ    LF17B   
       CMP    $F9     
       BNE    LF145   
       DEC    $F8     
       BPL    LF17B   
LF145: STA    $F9     
       LDX    #$08    
       STX    $F8     
       ASL            
       BCS    LF150   
       INC    $EA     
LF150: ASL            
       BCS    LF155   
       DEC    $EA     
LF155: ASL            
       BCS    LF160   
       TAX            
       LDA    $EA     
       ADC    #$05    
       STA    $EA     
       TXA            
LF160: ASL            
       BCS    LF169   
       LDA    $EA     
       SBC    #$04    
       STA    $EA     
LF169: LDA    $EA     
       BPL    LF172   
       CLC            
       ADC    #$19    
       STA    $EA     
LF172: CMP    #$19    
       BCC    LF17B   
       SEC            
       SBC    #$19    
       STA    $EA     
LF17B: LDA    SWCHB   
       AND    #$01    
       BNE    LF189   
       JSR    LFBC4   
       LDA    #$FF    
       STA    $EA     
LF189: LDA    $E6     
       CMP    #$19    
       BNE    LF1D6   
       LDA    #$00    
       STA    $E7     
       STA    $E8     
       LDA    #$DA    
       STA    $CB     
       STA    $CD     
       LDA    #$FC    
       STA    $CC     
       STA    $CE     
       STA    $D0     
       LDA    $F3     
LF1A5: CMP    #$64    
       BCC    LF1B0   
       INC    $E7     
       SEC            
       SBC    #$64    
       BCS    LF1A5   
LF1B0: CMP    #$0A    
       BCC    LF1BB   
       INC    $E8     
       SEC            
       SBC    #$0A    
       BCS    LF1B0   
LF1BB: ASL            
       ASL            
       ASL            
       STA    $CF     
       LDA    $F3     
       CMP    #$0A    
       BCC    LF1CD   
       LDA    $E8     
       ASL            
       ASL            
       ASL            
       STA    $CD     
LF1CD: LDA    $E7     
       BEQ    LF1D6   
       ASL            
       ASL            
       ASL            
       STA    $CB     
LF1D6: LDA    #$00    
       STA    COLUBK  
       STA    COLUPF  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $F6     
       BNE    LF1EC   
       STA    AUDV0   
       STA    AUDF0   
       BEQ    LF200   
LF1EC: LDA    $F6     
       AND    #$07    
       STA    AUDV0   
       LDA    $F5     
       TAX            
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
       STX    AUDC0   
       DEC    $F6     
LF200: LDA    $E9     
       AND    #$7F    
       TAX            
       BEQ    LF209   
       DEC    $E9     
LF209: LDA    SWCHB   
       AND    #$02    
       BNE    LF21C   
       CPX    #$00    
       BNE    LF21C   
       LDA    $E9     
       EOR    #$80    
       ORA    #$10    
       STA    $E9     
LF21C: LDA    INTIM   
       BNE    LF21C   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       LDA    #$06    
       STA    NUSIZ0  
       LDA    #$02    
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    $E9     
       BPL    LF238   
       JMP    LFB7E   
LF238: LDA    #$00    
       STA    COLUBK  
       LDA    #$FE    
       STA    GRP0    
       STA    GRP1    
       LDA    #$02    
       STA    WSYNC   
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$FF    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    $EC     
       LDA    LFC7E,X 
       STA    PF0     
       LDA    LFC9E,X 
       STA    PF1     
       LDA    LFC5E,X 
       STA    PF2     
       LDY    #$0B    
LF269: LDA    #$00    
       STA.w  $0008   
       LDA    ($80),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($88),Y 
       TAX            
       TXS            
       LDA    ($86),Y 
       TAX            
       NOP            
       LDA    #$34    
       AND    $FA     
       STA    COLUPF  
       LDA    ($84),Y 
       STA    GRP0    
       STX    GRP1    
       TSX            
       STX    GRP0    
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA.w  $0008   
       LDA    ($80),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($88),Y 
       TAX            
       TXS            
       LDA    ($86),Y 
       TAX            
       NOP            
       LDA    #$34    
       AND    $FA     
       STA    COLUPF  
       LDA    ($84),Y 
       STA    GRP0    
       STX    GRP1    
       TSX            
       STX    GRP0    
       DEY            
       BPL    LF269   
       LDA    #$00    
       NOP            
       STA    COLUPF  
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$FF    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$FE    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$FE    
       STA    GRP0    
       STA    GRP1    
       LDA    #$02    
       STA    WSYNC   
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$FF    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    $ED     
       LDA    LFC7E,X 
       STA    PF0     
       LDA    LFC9E,X 
       STA    PF1     
       LDA    LFC5E,X 
       STA    PF2     
       LDY    #$0B    
LF318: LDA    #$00    
       STA.w  $0008   
       LDA    ($8A),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($8C),Y 
       STA    GRP1    
       LDA    ($92),Y 
       TAX            
       TXS            
       LDA    ($90),Y 
       TAX            
       NOP            
       LDA    #$34    
       AND    $FA     
       STA    COLUPF  
       LDA    ($8E),Y 
       STA    GRP0    
       STX    GRP1    
       TSX            
       STX    GRP0    
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA.w  $0008   
       LDA    ($8A),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($8C),Y 
       STA    GRP1    
       LDA    ($92),Y 
       TAX            
       TXS            
       LDA    ($90),Y 
       TAX            
       NOP            
       LDA    #$34    
       AND    $FA     
       STA    COLUPF  
       LDA    ($8E),Y 
       STA    GRP0    
       STX    GRP1    
       TSX            
       STX    GRP0    
       DEY            
       BPL    LF318   
       LDA    #$00    
       NOP            
       STA    COLUPF  
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$FF    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$FE    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$FE    
       STA    GRP0    
       STA    GRP1    
       LDA    #$02    
       STA    WSYNC   
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$FF    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    $EE     
       LDA    LFC7E,X 
       STA    PF0     
       LDA    LFC9E,X 
       STA    PF1     
       LDA    LFC5E,X 
       STA    PF2     
       LDY    #$0B    
LF3C7: LDA    #$00    
       STA.w  $0008   
       LDA    ($94),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($96),Y 
       STA    GRP1    
       LDA    ($9C),Y 
       TAX            
       TXS            
       LDA    ($9A),Y 
       TAX            
       NOP            
       LDA    #$34    
       AND    $FA     
       STA    COLUPF  
       LDA    ($98),Y 
       STA    GRP0    
       STX    GRP1    
       TSX            
       STX    GRP0    
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA.w  $0008   
       LDA    ($94),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($96),Y 
       STA    GRP1    
       LDA    ($9C),Y 
       TAX            
       TXS            
       LDA    ($9A),Y 
       TAX            
       NOP            
       LDA    #$34    
       AND    $FA     
       STA    COLUPF  
       LDA    ($98),Y 
       STA    GRP0    
       STX    GRP1    
       TSX            
       STX    GRP0    
       DEY            
       BPL    LF3C7   
       LDA    #$00    
       NOP            
       STA    COLUPF  
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$FF    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$FE    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$FE    
       STA    GRP0    
       STA    GRP1    
       LDA    #$02    
       STA    WSYNC   
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$FF    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    $EF     
       LDA    LFC7E,X 
       STA    PF0     
       LDA    LFC9E,X 
       STA    PF1     
       LDA    LFC5E,X 
       STA    PF2     
       LDY    #$0B    
LF476: LDA    #$00    
       STA.w  $0008   
       LDA    ($9E),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($A0),Y 
       STA    GRP1    
       LDA    ($A6),Y 
       TAX            
       TXS            
       LDA    ($A4),Y 
       TAX            
       NOP            
       LDA    #$34    
       AND    $FA     
       STA    COLUPF  
       LDA    ($A2),Y 
       STA    GRP0    
       STX    GRP1    
       TSX            
       STX    GRP0    
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA.w  $0008   
       LDA    ($9E),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($A0),Y 
       STA    GRP1    
       LDA    ($A6),Y 
       TAX            
       TXS            
       LDA    ($A4),Y 
       TAX            
       NOP            
       LDA    #$34    
       AND    $FA     
       STA    COLUPF  
       LDA    ($A2),Y 
       STA    GRP0    
       STX    GRP1    
       TSX            
       STX    GRP0    
       DEY            
       BPL    LF476   
       LDA    #$00    
       NOP            
       STA    COLUPF  
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$FF    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$FE    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$FE    
       STA    GRP0    
       STA    GRP1    
       LDA    #$02    
       STA    WSYNC   
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$FF    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    $F0     
       LDA    LFC7E,X 
       STA    PF0     
       LDA    LFC9E,X 
       STA    PF1     
       LDA    LFC5E,X 
       STA    PF2     
       LDY    #$0B    
LF525: LDA    #$00    
       STA.w  $0008   
       LDA    ($A8),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($AA),Y 
       STA    GRP1    
       LDA    ($B0),Y 
       TAX            
       TXS            
       LDA    ($AE),Y 
       TAX            
       NOP            
       LDA    #$34    
       AND    $FA     
       STA    COLUPF  
       LDA    ($AC),Y 
       STA    GRP0    
       STX    GRP1    
       TSX            
       STX    GRP0    
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA.w  $0008   
       LDA    ($A8),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($AA),Y 
       STA    GRP1    
       LDA    ($B0),Y 
       TAX            
       TXS            
       LDA    ($AE),Y 
       TAX            
       NOP            
       LDA    #$34    
       AND    $FA     
       STA    COLUPF  
       LDA    ($AC),Y 
       STA    GRP0    
       STX    GRP1    
       TSX            
       STX    GRP0    
       DEY            
       BPL    LF525   
       LDA    #$00    
       NOP            
       STA    COLUPF  
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$FF    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$FE    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$1F    
       LDA    $EA     
       BPL    LF5AE   
       JMP    LF6DE   
LF5AE: LDA    $E6     
       CMP    #$19    
       BNE    LF5B7   
       JMP    LF684   
LF5B7: STA    WSYNC   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$FE    
       STA    GRP0    
       LDA    #$02    
       STA    WSYNC   
       STA    ENAM0   
       LDA    #$FF    
       STA    GRP0    
       LDX    $E6     
       LDA    $CB,X   
       TAX            
       LDA    LFF84,X 
       STA    $E7     
       LDA    LFFBA,X 
       STA    $E8     
       CPX    #$1A    
       LDX    #$00    
       BCC    LF5E4   
       LDX    #$03    
LF5E4: TXS            
       LDY    #$0B    
       LDA    #$34    
       AND    $FA     
       STA    COLUPF  
LF5ED: STA    WSYNC   
       LDA    ($E7),Y 
       STA    GRP0    
       TSX            
       STX    PF2     
       LDX    #$06    
LF5F8: DEX            
       BNE    LF5F8   
       STX    PF2     
       STA    WSYNC   
       LDA    ($E7),Y 
       STA    GRP0    
       TSX            
       STX    PF2     
       LDX    #$06    
LF608: DEX            
       BNE    LF608   
       STX    PF2     
       DEY            
       BPL    LF5ED   
       STA    WSYNC   
       LDA    #$FF    
       STA    GRP0    
       INY            
       STY    PF2     
       STA    WSYNC   
       STY    ENAM0   
       LDA    #$FE    
       STA    GRP0    
       STA    WSYNC   
       STY    GRP0    
       LDX    #$02    
LF627: LDA    #$28    
       AND    $FA     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       DEX            
       BNE    LF627   
       LDA    $FB     
       AND    #$40    
       BNE    LF645   
       LDA    #$DA    
       STA    $80     
       LDA    #$FC    
       STA    $81     
       JMP    LF64D   
LF645: LDA    #$F2    
       STA    $80     
       LDA    #$FB    
       STA    $81     
LF64D: LDA    $FB     
       BPL    LF65C   
       LDA    #$DA    
       STA    $82     
       LDA    #$FC    
       STA    $83     
       JMP    LF664   
LF65C: LDA    #$F0    
       STA    $82     
       LDA    #$FF    
       STA    $83     
LF664: LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
LF66C: STA    WSYNC   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       DEY            
       BPL    LF66C   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       JMP    LF754   
LF684: LDA    #$02    
       STA    NUSIZ0  
       LDA    #$00    
       STA    NUSIZ1  
       LDY    #$07    
       LDA    $F3     
       CMP    #$19    
       BCC    LF69C   
       CMP    #$28    
       BCC    LF6A0   
       LDA    #$BC    
       BNE    LF6A2   
LF69C: LDA    #$34    
       BNE    LF6A2   
LF6A0: LDA    #$28    
LF6A2: AND    $FA     
       STA    COLUP1  
       STA    COLUP0  
LF6A8: STA    WSYNC   
       LDA    ($CB),Y 
       STA    GRP0    
       LDA    ($CD),Y 
       STA    GRP1    
       LDX    #$04    
LF6B4: DEX            
       BNE    LF6B4   
       LDA    ($CF),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($CB),Y 
       STA    GRP0    
       LDA    ($CD),Y 
       STA    GRP1    
       LDX    #$04    
LF6C7: DEX            
       BNE    LF6C7   
       LDA    ($CF),Y 
       STA    GRP0    
       DEY            
       BPL    LF6A8   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    #$0E    
       JMP    LF627   
LF6DE: STA    WSYNC   
       LDA    $FC     
       BPL    LF6E8   
       LDX    #$00    
       BEQ    LF6EB   
LF6E8: LSR            
       LSR            
       TAX            
LF6EB: LDY    #$0D    
LF6ED: TYA            
       EOR    $FA     
       STA    WSYNC   
       STA.w  $0008   
       LDA    #$00    
       STA    PF0     
       LDA    LF900,X 
       STA    PF1     
       LDA    LF936,X 
       STA    PF2     
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LF96C,X 
       STA    PF0     
       NOP            
       NOP            
       NOP            
       LDA    LF9A2,X 
       STA    PF1     
       LDA    LF9D8,Y 
       STA    PF2     
       STA    WSYNC   
       LDA    LF900,X 
       STA    PF1     
       LDA    LF936,X 
       STA    PF2     
       LDA    #$00    
       STA    PF0     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LF96C,X 
       STA    PF0     
       NOP            
       NOP            
       NOP            
       LDA    LF9A2,X 
       STA    PF1     
       LDA    LF9D8,Y 
       STA    PF2     
       INX            
       DEY            
       BPL    LF6ED   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    #$01    
       JMP    LF627   
LF754: LDA    #$25    
       STA    TIM64T  
       LDA    #$02    
       STA    VBLANK  
       LDX    #$FF    
       TXS            
       LDA    $E6     
       CMP    #$19    
       BNE    LF769   
       JSR    LF778   
LF769: LDA    $EA     
       BPL    LF770   
       JSR    LFBD5   
LF770: LDA    INTIM   
       BNE    LF770   
       JMP    LF000   
LF778: LDY    $F4     
       BNE    LF784   
       LDA    #$1A    
       STA    $F5     
       LDA    #$20    
       STA    $F6     
LF784: CPY    #$0C    
       BNE    LF789   
       RTS            

LF789: LDA    #$00    
       LDX    #$1C    
LF78D: STA    $80,X   
       DEX            
       BPL    LF78D   
       TYA            
       TAX            
       CPX    #$05    
       BCS    LF7AC   
       STX    $E7     
       ASL            
       ASL            
       ADC    $E7     
       TAY            
       LDX    #$04    
LF7A1: LDA.wy $00B2,Y 
       STA    $97,X   
       INY            
       DEX            
       BPL    LF7A1   
       BMI    LF7EA   
LF7AC: CPX    #$0A    
       BCS    LF7C7   
       LDA    $AD,X   
       STA    $97     
       LDA    $B2,X   
       STA    $98     
       LDA    $B7,X   
       STA    $99     
       LDA    $BC,X   
       STA    $9A     
       LDA    $C1,X   
       STA    $9B     
       JMP    LF7EA   
LF7C7: LDA    $FB     
       BMI    LF7E9   
       TXA            
       AND    #$01    
       ASL            
       ASL            
       TAX            
       LSR            
       EOR    #$02    
       ADC    #$04    
       STA    $E7     
       LDY    #$04    
LF7DA: LDA    $B2,X   
       STA.wy $0097,Y 
       TXA            
       CLC            
       ADC    $E7     
       TAX            
       DEY            
       BPL    LF7DA   
       BMI    LF7EA   
LF7E9: RTS            

LF7EA: INC    $F4     
       LDX    #$04    
LF7EE: LDA    $97,X   
LF7F0: SEC            
       SBC    #$0D    
       BCC    LF7F9   
       INC    $8E,X   
       BNE    LF7F0   
LF7F9: ADC    #$0D    
       STX    $E7     
       TAX            
       INC    $80,X   
       LDX    $E7     
       DEX            
       BPL    LF7EE   
       LDA    $8E     
       CMP    $8F     
       BNE    LF81B   
       CMP    $90     
       BNE    LF81B   
       CMP    $91     
       BNE    LF81B   
       CMP    $92     
       BNE    LF81B   
       INC    $96     
       BNE    LF847   
LF81B: LDX    #$0C    
LF81D: LDA    $80,X   
       CMP    #$04    
       BNE    LF828   
       LDA    #$10    
       JMP    LF890   
LF828: DEX            
       BPL    LF81D   
       LDX    #$0C    
LF82D: LDA    $80,X   
       CMP    #$03    
       BNE    LF837   
       INC    $94     
       BNE    LF83A   
LF837: DEX            
       BPL    LF82D   
LF83A: LDX    #$0C    
LF83C: LDA    $80,X   
       CMP    #$02    
       BNE    LF844   
       INC    $93     
LF844: DEX            
       BPL    LF83C   
LF847: LDA    $80     
       STA    $8D     
       LDX    #$09    
LF84D: LDA    $80,X   
       AND    $81,X   
       AND    $82,X   
       AND    $83,X   
       AND    $84,X   
       BNE    LF85E   
       DEX            
       BPL    LF84D   
       BMI    LF86A   
LF85E: AND    $96     
       BNE    LF866   
       LDA    #$0C    
       BNE    LF890   
LF866: LDA    #$1E    
       BNE    LF890   
LF86A: LDA    $96     
       BEQ    LF872   
       LDA    #$05    
       BNE    LF890   
LF872: LDA    $94     
       BEQ    LF882   
       AND    $93     
       BNE    LF87E   
       LDA    #$06    
       BNE    LF890   
LF87E: LDA    #$0A    
       BNE    LF890   
LF882: LDA    $93     
       BEQ    LF890   
       CMP    #$02    
       BEQ    LF88E   
       LDA    #$01    
       BNE    LF890   
LF88E: LDA    #$03    
LF890: CLC            
       ADC    $F3     
       STA    $F3     
       RTS            

LF896: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LF900: .byte $C4,$AA,$CA,$8A,$8A,$84,$00,$64,$8A,$4A,$2A,$24,$C2,$00,$00,$00
       .byte $73,$88,$B8,$A9,$BA,$8A,$73,$00,$C5,$A5,$C7,$A7,$C7,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LF936: .byte $75,$15,$33,$15,$15,$75,$00,$25,$55,$75,$55,$55,$52,$00,$00,$00
       .byte $88,$55,$55,$54,$54,$54,$89,$00,$E4,$4A,$4E,$4A,$4A,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LF96C: .byte $30,$50,$30,$50,$50,$50,$00,$30,$50,$30,$50,$50,$50,$00,$00,$00
       .byte $C0,$90,$90,$90,$90,$90,$C0,$00,$C0,$20,$40,$80,$60,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LF9A2: .byte $00,$00,$00,$00,$00,$00,$00,$E6,$88,$C4,$82,$82,$EC,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$80,$00,$26,$55,$55,$55,$25,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LF9D8: .byte $FE,$C6,$C6,$EE,$EE,$AA,$AA,$82,$82,$C6,$C6,$EE,$EE,$FE,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFA00: .byte $00,$30,$40,$20,$10,$60,$00,$00,$00,$40,$40,$70,$50,$50,$00,$00
       .byte $00,$30,$40,$20,$10,$60,$00,$00,$00,$10,$10,$30,$10,$70,$00,$00
       .byte $00,$70,$40,$60,$40,$70,$00,$00,$00,$10,$10,$30,$10,$70,$00,$00
       .byte $00,$70,$10,$70,$40,$70,$00,$00,$00,$10,$10,$30,$50,$30,$00
LFA3F: .byte $00,$52,$42,$43,$42,$E3,$00,$00,$00,$24,$54,$56,$54,$27,$00,$00
       .byte $00,$4A,$4A,$4C,$4A,$EC,$00,$00,$00,$EE,$A8,$A8,$A8,$A8,$00,$00
       .byte $00,$24,$54,$56,$54,$27,$00,$00,$00,$EE,$8A,$8A,$8A,$8A,$00,$00
       .byte $00,$45,$45,$67,$55,$62,$00,$00,$00,$AE,$A4,$E4,$A4,$4E,$00
LFA7E: .byte $00,$DC,$44,$44,$44,$45,$00,$00,$00,$D4,$94,$8C,$94,$D4,$00,$00
       .byte $00,$95,$55,$57,$55,$92,$00,$00,$00,$A7,$A1,$E1,$A1,$A1,$00,$00
       .byte $00,$D4,$94,$8C,$94,$D4,$00,$00,$00,$53,$54,$72,$51,$56,$00,$00
       .byte $00,$AE,$A4,$64,$A4,$6E,$00,$00,$00,$05,$05,$03,$05,$03,$00
LFABD: .byte $00,$D0,$10,$90,$50,$90,$00,$00,$00,$50,$40,$40,$40,$D0,$00,$00
       .byte $00,$40,$50,$D0,$40,$50,$00,$00,$00,$60,$80,$40,$20,$C0,$00,$00
       .byte $00,$50,$40,$40,$40,$D0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
       .byte $FF,$FF,$FF
LFB00: .byte $01,$29,$A9,$39,$29,$A9,$01,$01,$01,$B1,$A9,$A9,$A9,$31,$01,$01
       .byte $01,$91,$91,$91,$91,$B9,$01,$01,$01,$75,$41,$61,$41,$71,$01,$01
       .byte $01,$B1,$A9,$A9,$A9,$31,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
LFB3F: .byte $FF,$88,$AB,$A9,$AB,$88,$FF,$FF,$FF,$88,$AD,$8D,$EC,$8D,$FF,$FF
       .byte $FF,$88,$ED,$8D,$BC,$8D,$FF,$FF,$FF,$88,$AD,$AD,$AC,$8D,$FF,$FF
       .byte $FF,$E3,$EB,$E3,$FB,$E3,$FF,$FF,$FF,$E3,$EF,$E3,$FB,$E3,$FF,$FF
       .byte $FF,$E3,$EF,$E7,$EF,$E3,$FF,$FF,$FF,$E3,$F7,$F7,$F3,$F7,$FF
LFB7E: STA    WSYNC   
       LDY    #$3E    
       TYA            
       ORA    #$06    
       AND    $FA     
       STA    COLUPF  
LFB89: LDA    #$02    
       STA    $E7     
LFB8D: STA    WSYNC   
       LDA    LFA00,Y 
       STA    PF0     
       LDA    LFA3F,Y 
       STA    PF1     
       LDA    LFA7E,Y 
       STA    PF2     
       LDX    LFB3F,Y 
       TYA            
       ORA    #$06    
       AND    $FA     
       STA    COLUPF  
       LDA    LFABD,Y 
       STA    PF0     
       LDA    LFB00,Y 
       STA    PF1     
       STX    PF2     
       DEC    $E7     
       BPL    LFB8D   
       DEY            
       BPL    LFB89   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUPF  
       JMP    LF754   
LFBC4: LDX    #$00    
       STX    $E6     
       STX    $F4     
       STX    $F3     
LFBCC: TXA            
       STA    $B2,X   
       INX            
       CPX    #$34    
       BNE    LFBCC   
       RTS            

LFBD5: LDY    #$32    
LFBD7: LDA    $F1     
       LSR            
       LSR            
       SBC    $F1     
       LSR            
       ROR    $F2     
       ROR    $F1     
       BCS    LFBEE   
       LDA.wy $00B2,Y 
       LDX    $B3,Y   
       STX    $B2,Y   
       STA.wy $00B3,Y 
LFBEE: DEY            
       BPL    LFBD7   
       RTS            

LFBF2: .byte $00,$C3,$C3,$18,$18,$C3,$C3,$00,$00,$00,$00,$00,$00,$00,$3C,$7E
       .byte $E7,$C3,$C3,$E7,$7E,$3C,$7E,$7E,$18,$18,$18,$78,$38,$18,$FF,$7F
       .byte $30,$1C,$06,$63,$FF,$7E,$7E,$FF,$63,$06,$1C,$06,$03,$FF,$06,$06
       .byte $FF,$FF,$C6,$E6,$76,$36,$7C,$FE,$67,$0E,$7C,$60,$7F,$7F,$7E,$FF
       .byte $C7,$CE,$FC,$E0,$73,$3E,$E0,$70,$38,$1C,$0E,$07,$FF,$FF,$7E,$E7
       .byte $C3,$66,$3C,$66,$66,$3C,$7C,$CE,$07,$3F,$73,$E3,$FF,$7E,$01,$01
       .byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
LFC5E: .byte $00,$00,$00,$00,$00,$00,$00,$00,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $03,$03,$03,$03,$03,$03,$03,$03,$33,$33,$33,$33,$33,$33,$33,$33
LFC7E: .byte $00,$00,$00,$00,$30,$30,$30,$30,$00,$00,$00,$00,$30,$30,$30,$30
       .byte $00,$00,$00,$00,$30,$30,$30,$30,$00,$00,$00,$00,$30,$30,$30,$30
LFC9E: .byte $00,$0C,$C0,$CC,$00,$0C,$C0,$CC,$00,$0C,$C0,$CC,$00,$0C,$C0,$CC
       .byte $00,$0C,$C0,$CC,$00,$0C,$C0,$CC,$00,$0C,$C0,$CC,$00,$0C,$C0,$CC

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LFCC5: STA    VSYNC,X 
       DEX            
       BNE    LFCC5   
       LDA    #$55    
       STA    $F1     
       ASL            
       STA    $F2     
       DEX            
       STX    $EA     
       JSR    LFBC4   
       JMP    LF000   
LFCDA: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$C7,$6D,$01,$83,$C7,$EF,$FF,$BB,$83,$BB
       .byte $D7,$EF,$C7,$6D,$01,$83,$C7,$EF,$FF,$83,$DF,$E7,$BB,$C7,$C7,$6D
       .byte $01,$83,$C7,$EF,$FF,$87,$FB,$E7,$BB,$C7,$C7,$6D,$01,$83,$C7,$EF
       .byte $FF,$FB,$83,$BB,$DB,$EB,$C7,$6D,$01,$83,$C7,$EF,$FF,$C7,$BB,$E7
       .byte $DF,$C3,$C7,$6D,$01,$83,$C7,$EF,$FF,$C7,$BB,$87,$BF,$C3,$C7,$6D
       .byte $01,$83,$C7,$EF,$FF,$DF,$EF,$F7,$FB,$83,$C7,$6D,$01,$83,$C7,$EF
       .byte $FF,$C7,$BB,$C7,$BB,$C7,$C7,$6D,$01,$83,$C7,$EF,$FF,$87,$FB,$C3
       .byte $BB,$C7,$C7,$6D,$01,$83,$C7,$EF,$FF,$13,$AD,$AD,$2D,$B3,$C7,$6D
       .byte $01,$83,$C7,$EF,$FF,$CF,$B7,$F7,$F7,$E3,$C7,$6D,$01,$83,$C7,$EF
       .byte $FF,$CB,$B7,$BB,$BB,$C7,$C7,$6D,$01,$83,$C7,$EF,$FF,$B7,$AF,$9F
       .byte $AF,$B7,$C7,$EF,$29,$39,$C7,$C7,$FF,$BB,$83,$BB,$D7,$EF,$C7,$EF
       .byte $29,$39,$C7,$C7,$FF,$83,$DF,$E7,$BB,$C7,$C7,$EF,$29,$39,$C7,$C7
       .byte $FF,$87,$FB,$E7,$BB,$C7,$C7,$EF,$29,$39,$C7,$C7,$FF,$FB,$83,$BB
       .byte $DB,$EB,$C7,$EF,$29,$39,$C7,$C7,$FF,$C7,$BB,$E7,$DF,$C3,$C7,$EF
       .byte $29,$39,$C7,$C7,$FF,$C7,$BB,$87,$BF,$C3,$C7,$EF,$29,$39,$C7,$C7
       .byte $FF,$DF,$EF,$F7,$FB,$83,$C7,$EF,$29,$39,$C7,$C7,$FF,$C7,$BB,$C7
       .byte $BB,$C7,$00,$00,$00,$00,$C7,$EF,$29,$39,$C7,$C7,$FF,$87,$FB,$C3
       .byte $BB,$C7,$C7,$EF,$29,$39,$C7,$C7,$FF,$13,$AD,$AD,$2D,$B3,$C7,$EF
       .byte $29,$39,$C7,$C7,$FF,$CF,$B7,$F7,$F7,$E3,$C7,$EF,$29,$39,$C7,$C7
       .byte $FF,$CB,$B7,$BB,$BB,$C7,$C7,$EF,$29,$39,$C7,$C7,$FF,$B7,$AF,$9F
       .byte $AF,$B7,$EF,$C7,$83,$01,$11,$BB,$FF,$BB,$83,$BB,$D7,$EF,$EF,$C7
       .byte $83,$01,$11,$BB,$FF,$83,$DF,$E7,$BB,$C7,$EF,$C7,$83,$01,$11,$BB
       .byte $FF,$87,$FB,$E7,$BB,$C7,$EF,$C7,$83,$01,$11,$BB,$FF,$FB,$83,$BB
       .byte $DB,$EB,$EF,$C7,$83,$01,$11,$BB,$FF,$C7,$BB,$E7,$DF,$C3,$EF,$C7
       .byte $83,$01,$11,$BB,$FF,$C7,$BB,$87,$BF,$C3,$EF,$C7,$83,$01,$11,$BB
       .byte $FF,$DF,$EF,$F7,$FB,$83,$EF,$C7,$83,$01,$11,$BB,$FF,$C7,$BB,$C7
       .byte $BB,$C7,$EF,$C7,$83,$01,$11,$BB,$FF,$87,$FB,$C3,$BB,$C7,$EF,$C7
       .byte $83,$01,$11,$BB,$FF,$13,$AD,$AD,$2D,$B3,$EF,$C7,$83,$01,$11,$BB
       .byte $FF,$CF,$B7,$F7,$F7,$E3,$EF,$C7,$83,$01,$11,$BB,$FF,$CB,$B7,$BB
       .byte $BB,$C7,$EF,$C7,$83,$01,$11,$BB,$FF,$B7,$AF,$9F,$AF,$B7,$EF,$C7
       .byte $83,$01,$83,$C7,$EF,$BB,$83,$BB,$D7,$EF,$EF,$C7,$83,$01,$83,$C7
       .byte $EF,$83,$DF,$E7,$BB,$C7,$EF,$C7,$83,$01,$83,$C7,$EF,$87,$FB,$E7
       .byte $BB,$C7,$00,$00,$00,$00,$EF,$C7,$83,$01,$83,$C7,$EF,$FB,$83,$BB
       .byte $DB,$EB,$EF,$C7,$83,$01,$83,$C7,$EF,$C7,$BB,$E7,$DF,$C3,$EF,$C7
       .byte $83,$01,$83,$C7,$EF,$C7,$BB,$87,$BF,$C3,$EF,$C7,$83,$01,$83,$C7
       .byte $EF,$DF,$EF,$F7,$FB,$83,$EF,$C7,$83,$01,$83,$C7,$EF,$C7,$BB,$C7
       .byte $BB,$C7,$EF,$C7,$83,$01,$83,$C7,$EF,$87,$FB,$C3,$BB,$C7,$EF,$C7
       .byte $83,$01,$83,$C7,$EF,$13,$AD,$AD,$2D,$B3,$EF,$C7,$83,$01,$83,$C7
       .byte $EF,$CF,$B7,$F7,$F7,$E3,$EF,$C7,$83,$01,$83,$C7,$EF,$CB,$B7,$BB
       .byte $BB,$C7,$EF,$C7,$83,$01,$83,$C7,$EF,$B7,$AF,$9F,$AF,$B7,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFF84: .byte $00,$0C,$18,$24,$30,$3C,$48,$54,$60,$6C,$78,$84,$90,$9C,$A8,$B4
       .byte $C0,$CC,$D8,$E4,$F0,$00,$0C,$18,$24,$30,$3C,$48,$54,$60,$6C,$78
       .byte $84,$90,$9C,$A8,$B4,$C0,$CC,$D8,$E4,$F0,$00,$0C,$18,$24,$30,$3C
       .byte $48,$54,$60,$6C,$78,$50
LFFBA: .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD,$FD,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE
       .byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FC,$82,$44,$28,$10,$28,$44,$82,$00,$FF,$FF
       .byte $FF,$FF,$BE,$FC,$BE,$FC
