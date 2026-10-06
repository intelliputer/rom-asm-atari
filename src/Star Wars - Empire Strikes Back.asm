; Disassembly of roms/Star Wars - Empire Strikes Back.bin
; Disassembled Tue Oct  6 15:24:46 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Star Wars - Empire Strikes Back.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP0FB  =  $32
CXM0FB  =  $34
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296
LF34C   =   $F34C
LF4E6   =   $F4E6
LF770   =   $F770
LF7CB   =   $F7CB
LF88B   =   $F88B
LFCCF   =   $FCCF

       ORG $F000
LF000: LDX    #$00    
LF002: STA    $F5     
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $F5     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F6     
       CLC            
       ADC    $F5     
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F6     
       CLC            
       ADC    #$83    
       STA    HMCLR   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF028: DEY            
       BPL    LF028   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            


START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF037: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF037   
       STX    SWACNT  
       STX    SWBCNT  
       LDA    SWCHB   
       STA    $F0     
       JSR    LF763   
       BRK            
       .byte $80 ;.NOP
LF04D: LDA    #$9F    
       STA    TIM64T  
       INC    $E4     
       BNE    LF058   
       INC    $E5     
LF058: JSR    LFE03   
       LDA    $EB     
       ORA    $8D     
       BNE    LF0D0   
       LDA    $8C     
       BEQ    LF0A5   
       BIT    CXP0FB  
       BVC    LF083   
       LDA    $B8     
       CMP    #$02    
       BNE    LF083   
       JSR    LFD2D   
       INC    $8C     
       JSR    LFCB6   
       LDA    #$E0    
       LDX    $B6     
       BMI    LF07F   
       LDA    #$20    
LF07F: ADC    $8A     
       STA    $8A     
LF083: LDA    CXM1P   
       BPL    LF0A5   
       LDA    $CA     
       BNE    LF0A5   
       JSR    LFCB6   
       LDA    $C4     
       ADC    $8A     
       STA    $8A     
       LDA    $C1     
       ADC    $87     
       STA    $87     
       LDA    #$FF    
       STA    $CA     
       CMP    $C8     
       BNE    LF0A5   
       JSR    LFD25   
LF0A5: LDA    CXPPMM  
       BPL    LF0D0   
       LDA    $86     
       CMP    #$27    
       BCS    LF0E0   
       LDA    $8C     
       BEQ    LF0E0   
       LDA    $A7     
LF0B5: BNE    LF0E0   
       LDA    $EA     
       AND    #$08    
       BEQ    LF0E0   
       LDX    $AE     
       LDA    $98,X   
       CLC            
       ADC    #$18    
       STA    $98,X   
       LDY    #$02    
       LDA    $9D,X   
       JSR    LFC1B   
       JSR    LFCCA   
LF0D0: LDA    CXM0P   
       BPL    LF0E0   
       LDA    $BC     
       CMP    #$27    
       BCS    LF0E0   
       JSR    LFC0B   
       JSR    LF9FC   
LF0E0: BIT    CXM0FB  
       BVC    LF101   
       LDX    $B8     
       DEX            
       BEQ    LF0EE   
       DEX            
       BEQ    LF0F6   
       BNE    LF101   
LF0EE: LDA    CXPPMM  
       BMI    LF101   
       BRK            
       ASL            
       INC    $A7     
LF0F6: LDY    #$06    
       JSR    LFCCF   
       JSR    LF9FC   
       JSR    LFD2D   
LF101: LDA    CXP0FB  
       BPL    LF11F   
       LDA    $86     
       CMP    #$26    
       BCC    LF11F   
       LDA    $8D     
       BNE    LF11F   
       DEC    $86     
       LDA    $87     
       BMI    LF11F   
       SBC    #$0A    
       STA    $87     
       LDA    $EB     
       BNE    LF11F   
       BRK            
       .byte $07 ;.SLO
LF11F: BIT    CXPPMM  
       BVC    LF135   
       LDX    $C8     
       INX            
       BNE    LF135   
       JSR    LFD25   
       JSR    LF9FC   
       STA    $CA     
       LDY    #$08    
       JSR    LFCCF   
LF135: LDA    SWCHB   
       STA    $F7     
       EOR    $F0     
       STA    $F8     
       BEQ    LF14F   
       JSR    LFCFA   
       LDA    $F8     
       LDX    $EC     
       AND    LFE70,X 
       BEQ    LF14F   
       JSR    LFD0C   
LF14F: LDA    $F7     
       AND    #$02    
       BEQ    LF18A   
       LDA    $F8     
       AND    #$01    
       BEQ    LF1AA   
       LDA    $F7     
       AND    #$01    
       BEQ    LF166   
       JSR    LF76E   
       BEQ    LF1AA   
LF166: JSR    LF770   
       STA    $EC     
       STA    $E2     
       STA    $E0     
       STA    $E3     
       STA    $E1     
       LDA    #$04    
       STA    $ED     
       STA    $EE     
       LDA    $EA     
       AND    #$03    
       TAY            
       LDA    LFFF8,Y 
       STA    $AF     
       STA    $B0     
       JSR    LFBDD   
       BNE    LF1AA   
LF18A: LDA    $F8     
       AND    #$02    
       BNE    LF194   
       DEC    $F4     
       BNE    LF1AA   
LF194: INC    $EA     
       LDA    $EA     
       AND    #$1F    
       STA    $EA     
       JSR    LF763   
       LDX    #$1E    
       LDA    $F7     
       LSR            
       BCS    LF1A8   
       LDX    #$0A    
LF1A8: STX    $F4     
LF1AA: LDA    $F7     
       STA    $F0     
       JSR    LF6E0   
       JSR    LFD6C   
       LDX    $EB     
       BEQ    LF1CE   
       CPX    #$04    
       BNE    LF1CC   
       LDA    $E5     
       CMP    #$02    
       BCC    LF1CC   
       LDX    #$00    
       STX    $8D     
       ASL            
       ASL            
       ASL            
       ASL            
       BNE    LF1CE   
LF1CC: LDA    #$F0    
LF1CE: LDX    $8D     
       BEQ    LF1D4   
       LDA    #$D0    
LF1D4: LDX    #$86    
       JSR    LFD78   
       LDX    #$86    
       JSR    LFDDF   
       LDA    $86     
       CMP    #$43    
       BCC    LF1EB   
       JSR    LFCA9   
       LDA    #$42    
       STA    $86     
LF1EB: CMP    #$02    
       BCS    LF1F6   
       LDA    #$02    
       STA    $86     
       JSR    LFCAF   
LF1F6: LDX    #$89    
       JSR    LFDDF   
       LDA    $8A     
       CLC            
       BPL    LF201   
       SEC            
LF201: ROR            
       CLC            
       ADC    #$64    
       SEC            
       SBC    $89     
       TAY            
       BEQ    LF259   
       BPL    LF215   
       CPY    #$FC    
       BCS    LF25B   
       LDY    #$FC    
       BMI    LF25B   
LF215: CPY    #$05    
       BCC    LF21B   
       LDY    #$04    
LF21B: INC    $89     
       INC    $C3     
       INC    $B5     
       DEC    $E6     
       LDX    $E6     
       INX            
       BNE    LF230   
       DEC    $E7     
       LDA    $E7     
       AND    #$07    
       STA    $E7     
LF230: LDA    $E6     
       AND    #$01    
       BNE    LF256   
       LDX    #$D7    
       LDA    $E6     
       AND    #$07    
       BNE    LF240   
       LDX    #$CB    
LF240: CLC            
       ROL    VSYNC,X 
       ROR    VBLANK,X
       ROL    WSYNC,X 
       BCC    LF24F   
       LDA    VSYNC,X 
       ORA    #$10    
       STA    VSYNC,X 
LF24F: INX            
       INX            
       INX            
       CPX    #$E0    
       BNE    LF240   
LF256: DEY            
       BNE    LF21B   
LF259: BEQ    LF2A2   
LF25B: DEC    $89     
       DEC    $C3     
       DEC    $B5     
       INC    $E6     
       BNE    LF26D   
       INC    $E7     
       LDA    $E7     
       AND    #$07    
       STA    $E7     
LF26D: LDA    $E6     
       AND    #$01    
       BEQ    LF29F   
       LDX    #$D7    
       LDA    $E6     
       AND    #$07    
       CMP    #$01    
       BNE    LF27F   
       LDX    #$CB    
LF27F: CLC            
       ROR    WSYNC,X 
       ROL    VBLANK,X
       ROR    VSYNC,X 
       LDA    VSYNC,X 
       AND    #$08    
       BEQ    LF298   
       LDA    WSYNC,X 
       ORA    #$80    
       STA    WSYNC,X 
       LDA    VSYNC,X 
       AND    #$F0    
       STA    VSYNC,X 
LF298: INX            
       INX            
       INX            
       CPX    #$E0    
       BNE    LF27F   
LF29F: INY            
       BNE    LF25B   
LF2A2: LDA    $89     
       JSR    LF000   
       LDY    $8A     
       DEY            
       BPL    LF2AD   
       DEX            
LF2AD: STX    REFP0   
LF2AF: LDA    INTIM   
       BMI    LF2AF   
       STA    WSYNC   
       LDA    #$42    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$96    
       STA    TIM64T  
       LDY    #$00    
       LDA    ($E8),Y 
       LDX    $EB     
       CPX    #$04    
       BCC    LF2E5   
       LDX    $E5     
       BNE    LF2E5   
       LDX    $E4     
       BMI    LF2E5   
       TXA            
       ASL            
LF2E5: STA    COLUPF  
       LDA    $EB     
       BNE    LF352   
       LDX    $8D     
       BEQ    LF2F9   
       INX            
       STX    $8D     
       CPX    #$40    
       BNE    LF2F9   
       JSR    LF774   
LF2F9: LDX    $A7     
       BEQ    LF307   
       INX            
       STX    $A7     
       CPX    #$40    
       BNE    LF307   
       JSR    LFC42   
LF307: LDX    #$04    
LF309: LDA    $9D,X   
       BEQ    LF34C   
       CPX    $AE     
       BNE    LF315   
       LDA    $A7     
       BNE    LF34C   
LF315: CPX    #$04    
       BEQ    LF329   
       LDA    $8F,X   
       SEC            
       SBC    $8E,X   
       TAY            
       LDA    $94,X   
       SBC    $93,X   
       BNE    LF329   
       CPY    #$C5    
       BCC    LF34C   
LF329: DEC    $A2,X   
       BNE    LF34C   
       INC    $8E,X   
       BNE    LF333   
       INC    $93,X   
LF333: JSR    LFC83   
       ADC    #$03    
       STA    $A2,X   
       CPX    $AE     
       BNE    LF34C   
       DEC    $AA     
       BPL    LF34C   
       LDA    #$03    
       STA    $AA     
       STX    $F5     
       BRK            
       ORA    ($A6,X) 
       SBC    $CA,X   
       BPL    LF309   
       JSR    LF7A2   
LF352: LDX    #$04    
LF354: LDA    $9D,X   
       BEQ    LF3B0   
       LDA    $8E,X   
       SEC            
       SBC    $E6     
       STA    $AD     
       STA    $F5     
       LDA    $93,X   
       SBC    $E7     
       BEQ    LF394   
       TAY            
       INY            
       BNE    LF3B0   
       LDA    $AD     
       BPL    LF3B0   
       CLC            
       ADC    #$20    
       BMI    LF3B0   
       EOR    #$1F    
       LSR            
       LSR            
       TAY            
       LDA    LFFB0,Y 
       STA    $A9     
       LDA    LFFC0,Y 
       STA    $AB     
       LDA    $AD     
       CLC            
       ADC    #$A0    
       STA    $F5     
       BNE    LF3C1   
LF38C: LDA    #$FF    
       STA    $A9     
       STA    $AB     
       BNE    LF3C1   
LF394: LDA    $AD     
       BPL    LF38C   
       CMP    #$A0    
       BCS    LF3B0   
       AND    #$7F    
       EOR    #$1F    
       LSR            
       LSR            
       TAY            
       LDA    LFFB8,Y 
       STA    $A9     
       LDA    LFFC8,Y 
       STA    $AB     
       JMP    LF3C1   
LF3B0: DEX            
       BPL    LF354   
       INX            
       STX    $A9     
       STX    $AB     
       LDA    $A7     
       BEQ    LF3CA   
       JSR    LFC42   
       BNE    LF3CA   
LF3C1: STX    $AE     
       LDA    $F5     
       LDX    #$01    
       JSR    LF002   
LF3CA: LDA    INTIM   
       BMI    LF3CA   
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$9F    
       STA    TIM64T  
       JSR    LF7CC   
       JSR    LFA8B   
       JSR    LF9AC   
       JSR    LFA01   
       LDX    #$01    
LF3E8: LDA    $82,X   
       STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       LDA    $84,X   
       STA    AUDF0,X 
       DEX            
       BPL    LF3E8   
LF3F9: LDA    INTIM   
       BMI    LF3F9   
       STA    WSYNC   
       STX    $F7     
       LDY    #$01    
       LDA    ($E8),Y 
       STA    COLUBK  
       LDA    $E4     
       ASL            
       LDX    $A7     
       BNE    LF41C   
       LDX    $AE     
       LDA    $98,X   
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$06    
       TAY            
       LDA    ($E8),Y 
LF41C: STA    COLUP1  
       LDA    $E4     
       LDX    $8C     
       BEQ    LF42C   
       LDY    #$04    
       DEX            
       BEQ    LF42A   
       INY            
LF42A: LDA    ($E8),Y 
LF42C: STA    COLUP0  
       LDY    #$03    
       LDA    ($E8),Y 
       STA    $F6     
       LDX    $B8     
       CPX    #$02    
       BCS    LF43C   
       LDA    $E4     
LF43C: STA    $F5     
       STA    WSYNC   
       LDA    #$30    
       STA    NUSIZ0  
       LDA    #$37    
       STA    NUSIZ1  
       LDA    #$20    
       STA    CTRLPF  
       LDA    $A8     
       LSR            
       TAY            
       LDA    LFE5A,Y 
       STA    $FA     
       LDA    $8D     
       LSR            
       LSR            
       LSR            
       LSR            
       ASL            
       ASL            
       ADC    #$46    
       STA    $FC     
       LDA    #$FE    
       STA    $FB     
       STA    $FD     
       STA    CXCLR   
       STA    WSYNC   
LF46B: JSR    LF6AD   
       STA    WSYNC   
       LDA    $F7     
       SEC            
       SBC    #$08    
       BNE    LF46B   
       STA    $F8     
LF479: JSR    LF6AD   
       LDY    $F8     
       LDA.wy $00CB,Y 
       INY            
       STA    WSYNC   
       STA    PF0     
       LDA.wy $00CB,Y 
       STA    PF1     
       INY            
       LDA.wy $00CB,Y 
       STA    PF2     
       INY            
       STY    $F8     
       JSR    LF6AD   
       LDA    $F7     
       SEC            
       SBC    #$10    
       STA    WSYNC   
       BNE    LF479   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$14    
       STA    CTRLPF  
       LDA    $F5     
       STA    COLUPF  
LF4AE: JSR    LF6AD   
       LDA    $F7     
       SEC            
       SBC    #$1A    
       TAY            
       AND    #$F0    
       BEQ    LF4BF   
       LDA    #$00    
       BEQ    LF4C3   
LF4BF: LDA    ($FA),Y 
       AND    $A9     
LF4C3: STA    WSYNC   
       STA    GRP1    
       LDA    $F7     
       CMP    #$26    
       BNE    LF4AE   
       JSR    LF6AD   
       STA    HMCLR   
       LDA    #$C0    
       STA    HMP1    
       LDX    #$35    
       LDY    $AA     
       LDA    LFE5E,Y 
       STA    $FA     
       LDY    #$00    
       LDA    ($FA),Y 
       AND    $AB     
       STA    WSYNC   
       STA    HMOVE   
       STX    NUSIZ1  
       STA    GRP1    
       LDY    #$02    
       LDA    ($E8),Y 
       STA    COLUBK  
LF4F3: JSR    LF6AD   
       LDA    $F7     
       SEC            
       SBC    #$26    
       TAY            
       AND    #$F0    
       BEQ    LF504   
       LDA    #$00    
       BEQ    LF508   
LF504: LDA    ($FA),Y 
       AND    $AB     
LF508: STA    WSYNC   
       STA    GRP1    
       LDA    $F7     
       SEC            
       SBC    #$3E    
       BNE    LF4F3   
       STA    $F8     
       LDA    $F6     
       STA    COLUPF  
LF519: JSR    LF6AD   
       LDY    $F8     
       LDA.wy $00D7,Y 
       INY            
       STA    WSYNC   
       STA    PF0     
       LDA.wy $00D7,Y 
       STA    PF1     
       INY            
       LDA.wy $00D7,Y 
       STA    PF2     
       INY            
       STY    $F8     
       JSR    LF6AD   
       LDA    $F7     
       CMP    #$44    
       BNE    LF519   
       LDY    #$03    
       LDA    ($E8),Y 
       STA    WSYNC   
       STA    COLUBK  
       LDX    #$FF    
       STX    PF0     
       INX            
       STX    PF1     
       STX    PF2     
       STX    GRP0    
       STX    ENAM1   
       STX    REFP0   
       LDA    #$05    
       STA    CTRLPF  
       STA    NUSIZ1  
       LDY    #$0D    
       LDA    ($E8),Y 
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$10    
       STA    NUSIZ0  
       LDA    $E6     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F5     
       LDA    $E7     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F5     
       ADC    #$10    
       INX            
       JSR    LF002   
       LDX    $F1     
       DEX            
       BPL    LF583   
       LDX    #$04    
LF583: STX    $F1     
       STA    WSYNC   
       LDA    $8E,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F5     
       LDA    $93,X   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F5     
       ADC    #$11    
       LDX    #$02    
       JSR    LF002   
       LDY    #$0C    
       LDA    ($E8),Y 
       STA    COLUBK  
       LDX    #$0D    
LF5A6: STA    WSYNC   
       LDA    LFECE,X 
       STA    ENAM0   
       AND    #$F8    
       STA    GRP1    
       DEX            
       BPL    LF5A6   
       LDY    #$03    
       LDA    ($E8),Y 
       STA    COLUBK  
       LDX    $EC     
       LDY    $EB     
       DEY            
       BNE    LF5C3   
       LDX    #$02    
LF5C3: LDA    LFFE3,X 
       STA    $F9     
       LDA    LFFE0,X 
       STA    $F5     
       JSR    LF000   
       LDA    $F5     
       CLC            
       ADC    #$08    
       INX            
       JSR    LF002   
       LDY    #$0E    
       LDA    ($E8),Y 
       STA    COLUP0  
       STA    COLUP1  
       STX    NUSIZ0  
       STX    NUSIZ1  
       STX    CTRLPF  
       LDA    #$50    
       STA    $F5     
       STA    $F6     
       STA    $F7     
       STA    $F8     
       STA    WSYNC   
       LDX    $EB     
       DEX            
       BEQ    LF62D   
       DEX            
       DEX            
       BEQ    LF65C   
       LDX    $EC     
       LDY    #$00    
LF600: LDA    $E0,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00F6,Y 
       LDA    $E0,X   
       AND    #$F0    
       LSR            
       STA.wy $00F5,Y 
       INX            
       INX            
       INY            
       INY            
       CPY    #$04    
       BCC    LF600   
       STA    WSYNC   
       LDX    #$00    
LF61E: LDA    $F5,X   
       BNE    LF66E   
       LDA    #$50    
       STA    $F5,X   
       INX            
       CPX    #$03    
       BMI    LF61E   
       BPL    LF66E   
LF62D: STA    WSYNC   
       LDY    #$00    
       LDX    $EA     
       INX            
       TXA            
       LDX    #$58    
       CMP    #$11    
       BCC    LF63D   
       LDX    #$60    
LF63D: STX    $F5     
LF63F: CMP    #$0A    
       BCC    LF649   
       INY            
       SEC            
       SBC    #$0A    
       BPL    LF63F   
LF649: STA    WSYNC   
       ASL            
       ASL            
       ASL            
       STA    $F8     
       TYA            
       ASL            
       ASL            
       ASL            
       BNE    LF658   
       LDA    #$50    
LF658: STA    $F7     
       BNE    LF66E   
LF65C: STA    WSYNC   
       LDX    $EC     
LF660: LDY    $ED,X   
LF662: DEY            
       BMI    LF66C   
       LDA    #$68    
       STA.wy $00F5,Y 
       BNE    LF662   
LF66C: STA    WSYNC   
LF66E: LDX    #$07    
       TXS            
       STA    WSYNC   
       LDY    $F9     
LF675: DEY            
       BPL    LF675   
LF678: LDY    $F5     
       LDA    LFF00,Y 
       STA    GRP0    
       LDY    $F6     
       LDA    LFF00,Y 
       STA    GRP1    
       LDY    $F7     
       LDA    LFF00,Y 
       TAX            
       LDY    $F8     
       LDA    LFF00,Y 
       STX    GRP0    
       STA    GRP1    
       INC    $F5     
       INC    $F6     
       INC    $F7     
       INC    $F8     
       INC    $F9     
       TSX            
       DEX            
       TXS            
       BPL    LF678   
       STA    WSYNC   
       STX    PF1     
       STX    PF2     
       JMP    LF04D   
LF6AD: INC    $F7     
       LDX    #$1F    
       TXS            
       LDA    $F7     
       SEC            
       SBC    $86     
       TAY            
       AND    #$FC    
       BEQ    LF6C0   
       LDX    #$00    
       BEQ    LF6C3   
LF6C0: LDA    ($FC),Y 
       TAX            
LF6C3: LDA    $B2     
       SEC            
       SBC    $F7     
       AND    #$FE    
       STA    WSYNC   
       PHP            
       STX    GRP0    
       LDA    $C0     
       SEC            
       SBC    $F7     
       AND    $C8     
       PHP            
       LDA    $BC     
       EOR    $F7     
       PHP            
       LDX    #$FD    
       TXS            
       RTS            

LF6E0: LDX    $EB     
       BEQ    LF762   
       DEX            
       BEQ    LF74A   
       DEX            
       BEQ    LF70B   
       DEX            
       BEQ    LF733   
       LDA    $E4     
       ORA    #$80    
       TAX            
       INX            
       BNE    LF74A   
       LDA    $EA     
       CMP    #$10    
       BCC    LF74A   
       LDA    $EC     
       EOR    #$01    
       STA    $EC     
       TAX            
       LDA    $ED,X   
       BMI    LF74A   
       JSR    LFBDD   
       BNE    LF76E   
LF70B: LDA    $E4     
       CMP    #$3C    
       BCC    LF762   
       DEC    $F4     
       BPL    LF76E   
       INC    $F4     
       LDX    $EC     
       DEC    $ED,X   
       BMI    LF778   
       LDA    $EA     
       CMP    #$10    
       BCC    LF76E   
       LDA    $EC     
       EOR    #$01    
       TAX            
       LDA    $ED,X   
       BMI    LF72E   
       STX    $EC     
LF72E: JSR    LFBDD   
       BNE    LF76E   
LF733: LDA    $E5     
       BNE    LF73D   
       LDA    $E4     
       CMP    #$1E    
       BCC    LF74A   
LF73D: JSR    LFD6C   
       AND    #$F0    
       CMP    #$F0    
       BNE    LF76A   
       LDA    INPT4,X 
       BPL    LF76A   
LF74A: LDA    $F3     
       BNE    LF756   
       LDA    $E5     
       CMP    #$1E    
       BCC    LF762   
       STA    $F3     
LF756: LDA    $E4     
       BNE    LF762   
       LDX    $E8     
       INX            
       TXA            
       AND    #$7F    
       STA    $E8     
LF762: RTS            

LF763: JSR    LFBDD   
       LDA    #$01    
       BNE    LF784   
LF76A: LDA    #$00    
       BEQ    LF784   
LF76E: BRK            
       ORA    $03A9   
       BNE    LF784   
LF774: LDA    #$02    
       BNE    LF78E   
LF778: BRK            
       .byte $0F ;.SLO
       LDA    #$FF    
       LDX    $EC     
       STA    $ED,X   
       LDA    #$04    
       BNE    LF78E   
LF784: STA    $EB     
       JSR    LFBCB   
       JSR    LFC8A   
       BEQ    LF790   
LF78E: STA    $EB     
LF790: JSR    LF9F8   
       JSR    LFA6F   
       JSR    LFCFA   
       LDA    #$00    
       STA    $E4     
       STA    $E5     
       STA    $F3     
       RTS            

LF7A2: LDX    #$04    
       LDA    $9D,X   
       BEQ    LF7CB   
       LDA    $93,X   
       CMP    #$07    
       BNE    LF7CB   
       LDA    $8E,X   
       TAX            
       CPX    #$E0    
       BCS    LF778   
       LDA    #$3F    
       CPX    #$A0    
       BCC    LF7C5   
       LDA    $E4     
       AND    #$07    
       BNE    LF7C3   
       STA    COLUPF  
LF7C3: LDA    #$1F    
LF7C5: AND    $E4     
       BNE    LF7CB   
       BRK            
       ORA    $60     
LF7CC: LDA    $E4     
       AND    #$03    
       TAX            
       BNE    LF7D6   
       JMP    LF8CB   
LF7D6: LDA    $EB     
       BEQ    LF7DB   
       RTS            

LF7DB: DEX            
       BEQ    LF811   
       DEX            
       BEQ    LF836   
       LDX    #$FF    
       STX    $F5     
       INX            
LF7E6: LDA    $9D,X   
       BNE    LF7EC   
       STX    $F5     
LF7EC: LDY    $93,X   
       DEY            
       BEQ    LF835   
       INX            
       CPX    #$05    
       BCC    LF7E6   
       LDX    $F5     
       CPX    #$FF    
       BEQ    LF835   
       LDY    #$00    
       STY    $98,X   
       STY    $8E,X   
       INY            
       STY    $A2,X   
       STY    $93,X   
       LDY    $EC     
       LDA.wy $00AF,Y 
       STA    $9D,X   
       JMP    LFC6A   
LF811: DEC    $AC     
       BNE    LF835   
       LDX    $AE     
       JSR    LFC83   
       ADC    #$02    
       STA    $AC     
       LDX    #$00    
       LDA    $86     
LF822: CMP    LFFF0,X 
       BCC    LF82A   
       INX            
       BNE    LF822   
LF82A: CPX    $A8     
       BEQ    LF835   
       BCS    LF833   
       DEC    $A8     
       RTS            

LF833: INC    $A8     
LF835: RTS            

LF836: LDA    $A9     
       BEQ    LF88B   
       LDA    $A7     
       ORA    $C6     
       BNE    LF88B   
       DEC    $C9     
       BNE    LF88B   
       STA    $C2     
       STA    $C5     
       STA    $CA     
       LDA    #$02    
       STA    $C6     
       LDY    $A8     
       JSR    LFE03   
       AND    #$03    
       CLC            
       ADC    LFE62,Y 
       STA    $C1     
       BPL    LF862   
       ADC    #$28    
       JMP    LF868   
LF862: STA    $C4     
       LDA    #$28    
       SBC    $C4     
LF868: STA    $C4     
       LDA    $AD     
       CLC            
       ADC    #$20    
       STA    $C3     
       CMP    $89     
       BCC    LF87B   
       LDA    $C4     
       EOR    #$FF    
       STA    $C4     
LF87B: LDA    $A8     
       LSR            
       CLC            
       ADC    #$1E    
       LDX    $F2     
       BPL    LF887   
       ADC    #$01    
LF887: STA    $C0     
       BRK            
       ASL    $A5     
       STA    $3BD0   
       LDA    $E4     
       AND    #$FC    
       BNE    LF8AC   
       LDA    $E5     
       AND    #$1F    
       CMP    #$10    
       BEQ    LF8A2   
       CMP    #$15    
       BEQ    LF8C6   
       RTS            

LF8A2: LDA    #$00    
       STA    $8C     
       LDA    #$02    
       STA    $EF     
       BRK            
       .byte $80 ;.NOP
LF8AC: AND    #$3C    
       CMP    #$10    
       BNE    LF8CA   
       LDA    $8C     
       CMP    #$02    
       BCC    LF8CA   
       LDA    $EF     
       BEQ    LF8CA   
       LDA    $86     
       CMP    #$42    
       BNE    LF8CA   
       DEC    $EF     
       BRK            
       .byte $0C ;.NOP
LF8C6: LDA    #$01    
       STA    $8C     
LF8CA: RTS            

LF8CB: LDX    #$01    
LF8CD: LDY    $80,X   
       BEQ    LF946   
       BPL    LF8D9   
       LDA    $E4     
       AND    #$07    
       BEQ    LF946   
LF8D9: LDA    $84,X   
       AND    #$1F    
       STA    $F5     
       LDA    $84,X   
       SEC            
       SBC    #$20    
       AND    #$E0    
       STA    $F6     
       BNE    LF936   
       LDY    $80,X   
       BMI    LF94A   
       LDA    LFF80,Y 
       AND    #$E0    
       STA    $F6     
       LDA    LFF90,Y 
       AND    #$0F    
       STA    $F8     
       LDA    LFF90,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $82,X   
       AND    #$0F    
       CMP    $F8     
       BEQ    LF93E   
       STA    $F7     
       LDA    $82,X   
       AND    #$F0    
       ORA    $F7     
       STA    $82,X   
       LDA    LFFA0,Y 
       AND    #$1F    
       STA    $F8     
       LDA    LFFA0,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$04    
       BCC    LF92B   
       ORA    #$F8    
LF92B: CLC            
       ADC    $F5     
       AND    #$1F    
       CMP    $F8     
       BEQ    LF93E   
       STA    $F5     
LF936: LDA    $F5     
       ORA    $F6     
       STA    $84,X   
       BNE    LF946   
LF93E: LDA    #$00    
       STA    $80,X   
       STA    $82,X   
       STA    $84,X   
LF946: DEX            
       BPL    LF8CD   
       RTS            

LF94A: LDA    $EB     
       CMP    #$04    
       BCS    LF93E   
       INC    $80,X   
       LDA    $80,X   
       AND    #$1F    
       TAY            
       CMP    #$12    
       BNE    LF96D   
       LDY    $8C     
       BNE    LF93E   
       LDA    $80,X   
       CLC            
       ADC    #$0E    
       CMP    #$E0    
       BEQ    LF93E   
       STA    $80,X   
       AND    #$1F    
       TAY            
LF96D: JSR    LF99B   
       BNE    LF946   
       PLP            
       TSX            
       INX            
       DEC    VSYNC,X 
       LDA    ($00,X) 
       TAY            
       LDX    #$00    
       LDA    $80     
       CMP    $81     
       BCC    LF983   
       INX            
LF983: TYA            
       BMI    LF997   
       CMP    $80,X   
       BCC    LF996   
       STY    $80,X   
       LDA    LFF70,Y 
       STA    $82,X   
       LDA    LFF80,Y 
       STA    $84,X   
LF996: RTS            

LF997: STA    $80,X   
       LDY    #$00    
LF99B: LDA    LFEEE,Y 
       STA    $84,X   
       LDA    LFEDC,Y 
       LDY    $8C     
       BNE    LF9A9   
       AND    #$F7    
LF9A9: STA    $82,X   
       RTS            

LF9AC: LDA    $EB     
       ORA    $8D     
       BNE    LF9FC   
       LDA    $BF     
       BEQ    LF9B8   
       DEC    $BF     
LF9B8: LDY    $BC     
       INY            
       BNE    LF9DE   
       LDX    $EC     
       LDA    INPT4,X 
       BPL    LF9C6   
       STY    $BF     
       RTS            

LF9C6: LDA    $BF     
       BNE    LFA00   
       JSR    LF9F8   
       BRK            
       .byte $03 ;.SLO
       LDX    $86     
       INX            
       STX    $BC     
       LDA    $8A     
       STA    $BE     
       LDX    $89     
       INX            
       TXA            
       BNE    LF9F1   
LF9DE: LDA    #$F8    
       LDX    $BE     
       BEQ    LF9E8   
       BMI    LF9E8   
       LDA    #$08    
LF9E8: CLC            
       ADC    $BD     
       BEQ    LF9FC   
       CMP    #$9A    
       BCS    LF9FC   
LF9F1: STA    $BD     
       LDX    #$02    
       JMP    LF002   
LF9F8: LDA    #$14    
       STA    $BF     
LF9FC: LDA    #$FF    
       STA    $BC     
LFA00: RTS            

LFA01: LDX    $C6     
       BNE    LFA06   
       RTS            

LFA06: LDA    $C0     
       AND    #$7F    
       STA    $C0     
       CPX    #$03    
       BEQ    LFA39   
       LDA    $86     
       SEC            
       SBC    $C0     
       BPL    LFA19   
       EOR    #$FF    
LFA19: STA    $F5     
       LDA    $89     
       CLC            
       SBC    $C3     
       BPL    LFA24   
       EOR    #$FF    
LFA24: CLC            
       ADC    $F5     
       STA    $F5     
       CMP    #$08    
       BCS    LFA42   
       JSR    LFE03   
       AND    #$07    
       CMP    $F5     
       BCC    LFA42   
       JSR    LFD25   
LFA39: LDX    #$C0    
       JSR    LFD3A   
       BEQ    LFA6F   
       BNE    LFA4C   
LFA42: LDX    #$C0    
       JSR    LFDDF   
       LDX    #$C3    
       JSR    LFDDF   
LFA4C: LDA    $C0     
       CMP    #$01    
       BCC    LFA6F   
       CMP    #$44    
       BCS    LFA6F   
       LDA    $C3     
       BEQ    LFA6F   
       CMP    #$C0    
       BCS    LFA6F   
       CMP    #$9A    
       BCC    LFA68   
       LDA    $C0     
       ORA    #$80    
       STA    $C0     
LFA68: LDA    $C3     
       LDX    #$03    
       JMP    LF002   
LFA6F: LDX    $AE     
       JSR    LFC83   
       ASL            
       STA    $F5     
       JSR    LFE03   
       AND    #$07    
       SEC            
       ADC    $F5     
       STA    $C9     
       LDX    #$00    
       STX    $C6     
       DEX            
       STX    $C0     
       STX    $C8     
       RTS            

LFA8B: LDA    $EB     
       BEQ    LFA92   
       JMP    LFB18   
LFA92: LDA    $B2     
       AND    #$7F    
       STA    $B2     
       LDY    $AE     
       LDX    $B8     
       BEQ    LFAB1   
       DEX            
       BEQ    LFAD4   
       DEX            
       BNE    LFAA7   
       JMP    LFB2E   
LFAA7: LDX    #$B2    
       JSR    LFD3A   
       BEQ    LFB18   
       JMP    LFB99   
LFAB1: LDA    $A7     
       BNE    LFB18   
       LDA    $A9     
       BEQ    LFB1B   
       LDA    $E4     
       AND    #$03    
       BNE    LFB1B   
       DEC    $B9     
       BNE    LFB1B   
       INC    $B8     
LFAC5: STY    $BB     
       LDA    $98,X   
       ADC    #$28    
       STA    $B9     
       JSR    LFE03   
       AND    #$07    
       STA    $BA     
LFAD4: CPY    $BB     
       BEQ    LFADE   
       LDA    $F2     
       BPL    LFAC5   
       BMI    LFB18   
LFADE: LDA    $A9     
       BNE    LFAE5   
       JMP    LFBBF   
LFAE5: LDA    $A7     
       BNE    LFB18   
       LDA    $E4     
       AND    #$03    
       BNE    LFB1C   
       DEC    $B9     
       BNE    LFB1C   
       LDA    $EA     
       AND    #$04    
       BEQ    LFB18   
       JSR    LFE03   
       LDX    $EC     
       LDA    $AF,X   
       ASL            
       ADC    #$46    
       CMP    $F2     
       BCS    LFB18   
       INC    $B8     
       LDX    $EC     
       LDA    $AF,X   
       EOR    #$3F    
       ADC    #$1E    
       STA    $B9     
       BRK            
       .byte $0B ;.ANC
       JMP    LFB99   
LFB18: JMP    LFBCB   
LFB1B: RTS            

LFB1C: LDY    $BA     
       LDA    LFFD0,Y 
       STA    $B2     
       LDA    LFFD8,Y 
       CLC            
       ADC    $AD     
       STA    $B5     
       JMP    LFB99   
LFB2E: LDA    $E4     
       AND    #$07    
       BNE    LFB4E   
       DEC    $B9     
       BEQ    LFB18   
       BRK            
       .byte $02 ;.JAM
       JSR    LFE03   
       BPL    LFB43   
       INC    $B2     
       INC    $B2     
LFB43: DEC    $B2     
       ASL            
       BPL    LFB4C   
       INC    $B5     
       INC    $B5     
LFB4C: DEC    $B5     
LFB4E: JSR    LFE03   
       LDX    $EC     
       LDA    $AF,X   
       ASL            
       ADC    #$28    
       CMP    $F2     
       BCS    LFB77   
       LDA    #$E0    
       LDX    $B2     
       CPX    $86     
       BCS    LFB66   
       LDA    #$D0    
LFB66: LDX    $B5     
       CPX    $89     
       BCS    LFB70   
       AND    #$70    
       BNE    LFB72   
LFB70: AND    #$B0    
LFB72: LDX    #$B2    
       JSR    LFD78   
LFB77: LDX    $B5     
       TXA            
       CLC            
       ADC    #$20    
       CMP    #$B6    
       BCC    LFB85   
       DEX            
       DEX            
       DEX            
       DEX            
LFB85: CMP    #$34    
       BCS    LFB8D   
       INX            
       INX            
       INX            
       INX            
LFB8D: STX    $B5     
       LDX    #$B2    
       JSR    LFDDF   
       LDX    #$B5    
       JSR    LFDDF   
LFB99: LDX    #$00    
       LDA    #$12    
       CMP    $B2     
       BCC    LFBA5   
       STA    $B2     
       STX    $B3     
LFBA5: LDA    #$3B    
       CMP    $B2     
       BCS    LFBAF   
       STA    $B2     
       STX    $B3     
LFBAF: LDA    $B5     
       BEQ    LFBBF   
       CMP    #$E0    
       BCS    LFBBF   
       CMP    #$C0    
       BCS    LFBCB   
       CMP    #$9F    
       BCC    LFBC6   
LFBBF: LDA    $B2     
       ORA    #$80    
       STA    $B2     
       RTS            

LFBC6: LDX    #$04    
       JMP    LF002   
LFBCB: LDX    #$00    
       STX    $B8     
       DEX            
LFBD0: STX    $B2     
       LDX    $AE     
       LDA    $98,X   
       EOR    #$3F    
       ADC    #$28    
       STA    $B9     
       RTS            

LFBDD: LDX    #$00    
       STX    $B1     
       STX    $A7     
       STX    $F4     
       INX            
       STX    $AC     
       INX            
       STX    $B1     
       LDY    #$04    
       STY    $AE     
LFBEF: LDX    #$00    
       STX    $8E,Y   
       STX    $98,Y   
       INX            
       STX    $A2,Y   
       TYA            
       TAX            
       INX            
       STX    $93,Y   
       LDX    $EC     
       LDA    $AF,X   
       STA.wy $009D,Y 
       JSR    LFC6A   
       DEY            
       BPL    LFBEF   
       RTS            

LFC0B: LDY    #$00    
       LDX    $AE     
       INC    $98,X   
       LDA    $98,X   
       AND    #$07    
       BNE    LFC2D   
       LDA    $9D,X   
       LSR            
       LSR            
LFC1B: LSR            
       CLC            
       ADC    $9D,X   
       STA    $9D,X   
       CMP    #$10    
       BCS    LFC27   
       INC    $9D,X   
LFC27: LDA    $98,X   
       CMP    #$30    
       BCS    LFC33   
LFC2D: JSR    LFCCF   
       BRK            
       .byte $04 ;.NOP
       RTS            

LFC33: LDY    #$04    
       JSR    LFCCF   
       BRK            
       ASL            
       INC    $A7     
       LDX    $B8     
       DEX            
       BEQ    LFBCB   
       RTS            

LFC42: LDX    $AE     
       BEQ    LFC5D   
LFC46: LDA    $8D,X   
       STA    $8E,X   
       LDA    $92,X   
       STA    $93,X   
       LDA    $97,X   
       STA    $98,X   
       LDA    $A1,X   
       STA    $A2,X   
       LDA    $9C,X   
       STA    $9D,X   
       DEX            
       BNE    LFC46   
LFC5D: STX    $9D     
       STX    $A7     
       LDA    #$08    
       STA    $93     
       LDA    #$32    
       STA    $8E     
       RTS            

LFC6A: DEC    $B1     
       BNE    LFC82   
       LDX    $EC     
       LDA    $AF,X   
       LSR            
       LSR            
       LSR            
       STA    $F5     
       LDA    $AF,X   
       SEC            
       SBC    $F5     
       STA    $AF,X   
       LDA    #$02    
       STA    $B1     
LFC82: RTS            

LFC83: LDA    $9D,X   
       LSR            
       LSR            
       LSR            
       CLC            
       RTS            

LFC8A: LDA    #$3A    
       STA    $86     
       LDA    #$64    
       STA    $89     
       STA    $E6     
       LDA    #$07    
       STA    $E7     
       JSR    LFD0C   
       LDX    #$00    
       STX    $8D     
       INX            
       STX    $8C     
       INX            
       STX    $EF     
       INX            
       INX            
       STX    $AE     
LFCA9: LDX    #$00    
       STX    $8A     
       STX    $8B     
LFCAF: LDX    #$00    
       STX    $87     
       STX    $88     
       RTS            

LFCB6: INC    $8C     
       LDX    $8C     
       DEX            
       DEX            
       BEQ    LFCC9   
       DEX            
       JSR    LFE03   
       CMP    LFE6A,X 
       BCS    LFCCA   
       BRK            
       .byte $07 ;.SLO
LFCC9: RTS            

LFCCA: BRK            
       ORA    #$E6    
       STA    $A660   
       CPX    $E0B5   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F5     
       SED            
       CLC            
       LDA    $E2,X   
       ADC    LFFE7,Y 
       STA    $E2,X   
       LDA    $E0,X   
       ADC    LFFE6,Y 
       STA    $E0,X   
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    $F5     
       BEQ    LFCF8   
       LSR            
       BCS    LFCF8   
       BRK            
       ASL    LF4E6   
LFCF8: CLD            
       RTS            

LFCFA: LDA    #$FE    
       STA    $E9     
       LDX    #$28    
       LDA    SWCHB   
       AND    #$08    
       BEQ    LFD09   
       LDX    #$37    
LFD09: STX    $E8     
       RTS            

LFD0C: LDX    #$14    
LFD0E: LDA    LFE13,X 
       STA    $CB,X   
       DEX            
       BPL    LFD0E   
       LDA    SWCHB   
       LDX    $EC     
       AND    LFE70,X 
       BEQ    LFD24   
       LDA    #$1F    
       STA    $DF     
LFD24: RTS            

LFD25: LDX    #$C0    
       LDA    #$FC    
       STA    COLUPF,X
       BNE    LFD2F   
LFD2D: LDX    #$B2    
LFD2F: LDA    #$03    
       STA    COLUP0,X
       LDA    #$00    
       STA    COLUP1,X
       BRK            
       PHP            
       RTS            

LFD3A: LDA    COLUP1,X
       BEQ    LFD51   
       AND    #$03    
       TAY            
       LDA    VSYNC,X 
       SEC            
       SBC    LFE72,Y 
       STA    VSYNC,X 
       LDA    RSYNC,X 
       SEC            
       SBC    LFE76,Y 
       STA    RSYNC,X 
LFD51: INC    COLUP1,X
       LDA    COLUP1,X
       CMP    #$20    
       BEQ    LFD6B   
       AND    #$03    
       TAY            
       LDA    VSYNC,X 
       ADC    LFE72,Y 
       STA    VSYNC,X 
       LDA    RSYNC,X 
       CLC            
       ADC    LFE76,Y 
       STA    RSYNC,X 
LFD6B: RTS            

LFD6C: LDA    SWCHA   
       LDX    $EC     
       BEQ    LFD77   
       ASL            
       ASL            
       ASL            
       ASL            
LFD77: RTS            

LFD78: TAY            
       LDA    VSYNC,X 
       CMP    #$42    
       BCS    LFD98   
       TYA            
       ASL            
       BCC    LFD90   
       ASL            
       BCS    LFD98   
       DEC    NUSIZ0,X
       BMI    LFD98   
       DEC    NUSIZ0,X
       DEC    NUSIZ0,X
       BVC    LFD98   
LFD90: INC    NUSIZ0,X
       BPL    LFD98   
       INC    NUSIZ0,X
       INC    NUSIZ0,X
LFD98: TYA            
       ASL            
       ASL            
       ASL            
       BCC    LFDB0   
       ASL            
       BCC    LFDAC   
       LDA    $E4     
       LSR            
       BCC    LFDB2   
       LDA    VBLANK,X
       BEQ    LFDB2   
       BMI    LFDB0   
LFDAC: DEC    VBLANK,X
       DEC    VBLANK,X
LFDB0: INC    VBLANK,X
LFDB2: LDA    VBLANK,X
       CMP    #$F4    
       BCS    LFDC8   
       CMP    #$0C    
       BCC    LFDC8   
       CMP    #$80    
       BCC    LFDC4   
       LDA    #$F4    
       BNE    LFDC6   
LFDC4: LDA    #$0C    
LFDC6: STA    VBLANK,X
LFDC8: LDA    NUSIZ0,X
       CMP    #$C0    
       BCS    LFDDE   
       CMP    #$40    
       BCC    LFDDE   
       CMP    #$80    
       BCC    LFDDA   
       LDA    #$C0    
       BNE    LFDDC   
LFDDA: LDA    #$40    
LFDDC: STA    NUSIZ0,X
LFDDE: RTS            

LFDDF: LDA    VBLANK,X
       CLC            
       ADC    WSYNC,X 
       CMP    #$08    
       BCC    LFE00   
       CMP    #$F8    
       BCS    LFE00   
       CMP    #$80    
       BCS    LFDF9   
LFDF0: INC    VSYNC,X 
       SEC            
       SBC    #$10    
       BPL    LFDF0   
       BMI    LFE00   
LFDF9: DEC    VSYNC,X 
       CLC            
       ADC    #$10    
       BMI    LFDF9   
LFE00: STA    WSYNC,X 
       RTS            

LFE03: LDA    $F2     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $F2     
       CLC            
       ADC    #$01    
       STA    $F2     
       RTS            

LFE12: .byte $DD
LFE13: .byte $F0,$FF,$C7,$D0,$FE,$02,$80,$F8,$00,$00,$E0,$00,$00,$03,$01,$00
       .byte $EF,$03,$C0,$FF,$07,$0C,$0E,$0C,$00,$00,$08,$00,$02,$04,$06,$08
       .byte $0A,$0E,$00,$0E,$4E,$8E,$8C,$60,$54,$3A,$02,$A6,$66,$56,$36,$2A
       .byte $3E,$00,$1E,$3C,$FF,$70,$00,$18,$5A,$30,$00,$24,$A5,$48,$00,$22
       .byte $40,$08,$00,$00,$00,$00,$00
LFE5A: .byte $7A,$87,$94,$A1
LFE5E: .byte $AE,$AE,$AE,$BE
LFE62: .byte $F4,$F7,$FA,$FD,$00,$03,$06,$09
LFE6A: .byte $C8,$96,$64,$32,$00,$00
LFE70: .byte $40,$80
LFE72: .byte $00,$00,$FE,$02
LFE76: .byte $FC,$04,$00,$00,$30,$30,$7A,$FF,$FF,$FF,$FA,$F8,$F8,$F8,$68,$48
       .byte $48,$30,$30,$78,$FA,$FF,$FF,$FF,$FA,$F8,$F8,$68,$48,$48,$30,$30
       .byte $78,$F8,$FA,$FF,$FF,$FF,$FA,$F8,$68,$48,$48,$30,$30,$78,$F8,$F8
       .byte $FA,$FF,$FF,$FF,$FA,$68,$48,$48,$77,$77,$77,$55,$DD,$DD,$BB,$BB
       .byte $AA,$AA,$AA,$AA,$AA,$BA,$FF,$00,$C6,$C6,$C6,$C6,$C6,$C6,$E7,$E7
       .byte $A5,$A5,$A5,$A5,$A5,$E7,$F7,$00
LFECE: .byte $00,$00,$00,$F8,$88,$00,$02,$02,$00,$00,$88,$F8,$00,$00
LFEDC: .byte $C0,$CC,$CC,$CC,$CC,$CC,$CC,$4C,$CC,$CC,$CC,$CC,$4C,$CC,$CC,$CC
       .byte $CC,$CC
LFEEE: .byte $60,$7B,$D4,$6D,$2F,$30,$32,$DF,$6D,$2F,$30,$32,$DF,$6D,$2F,$30
       .byte $2F,$D2
LFF00: .byte $1C,$22,$63,$63,$63,$22,$1C,$00,$04,$0C,$1C,$0C,$0C,$0C,$7F,$00
       .byte $3E,$03,$03,$3E,$60,$60,$7F,$00,$7E,$03,$03,$3E,$03,$03,$7E,$00
       .byte $02,$06,$0E,$16,$26,$7F,$06,$00,$7E,$60,$60,$3E,$03,$03,$7E,$00
       .byte $3E,$60,$60,$7E,$63,$63,$3E,$00,$7F,$61,$03,$06,$0C,$18,$30,$00
       .byte $3E,$63,$63,$3E,$63,$63,$3E,$00,$3E,$63,$63,$3F,$03,$03,$3E,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$08,$00,$1C,$1C,$1C,$08,$08,$00
       .byte $22,$00,$77,$77,$77,$22,$22,$00,$00,$1E,$1E,$7F,$7F,$0E,$0E,$00
LFF70: .byte $00,$2A,$F8,$8B,$8B,$F8,$8C,$8C,$8E,$8E,$8F,$8B,$6C,$CD,$4F,$8F
LFF80: .byte $00,$44,$24,$20,$2A,$2A,$20,$22,$2F,$34,$58,$20,$48,$28,$75,$A5
LFF90: .byte $00,$00,$00,$F7,$E6,$1F,$F2,$FA,$F8,$F7,$F8,$F1,$F8,$F8,$FA,$F8
LFFA0: .byte $00,$25,$28,$28,$30,$E4,$2F,$0F,$38,$3B,$3F,$0F,$0F,$00,$00,$3C
LFFB0: .byte $7F,$3F,$1F,$0F,$07,$03,$01,$00
LFFB8: .byte $00,$80,$C0,$E0,$F0,$F8,$FC,$FE
LFFC0: .byte $FF,$3F,$0F,$03,$00,$00,$00,$00
LFFC8: .byte $00,$00,$C0,$F0,$FC,$FF,$FF,$FF
LFFD0: .byte $1E,$1E,$1E,$23,$23,$23,$23,$1C
LFFD8: .byte $14,$14,$14,$14,$14,$14,$14,$0A
LFFE0: .byte $28,$64,$46
LFFE3: .byte $0E,$12,$10
LFFE6: .byte $00
LFFE7: .byte $01,$00,$25,$00,$50,$01,$00,$00,$10
LFFF0: .byte $12,$17,$1C,$21,$26,$2B,$30,$63
LFFF8: .byte $40,$30,$20,$12,$32,$F0,$72,$F9
