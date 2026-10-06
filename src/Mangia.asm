; Disassembly of roms/Mangia.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Mangia.bin
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
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
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
       STA    $9A     
LF010: LDX    #$06    
LF012: LDA    LFAF7,X 
       STA    $EC,X   
       DEX            
       BPL    LF012   
LF01A: JSR    LFA6F   
LF01D: LDX    INTIM   
       BNE    LF01D   
       STX    WSYNC   
       STX    VBLANK  
       LDA    #$47    
       STA    COLUPF  
       DEX            
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$FC    
       STA    TIM64T  
       LDA    #$BF    
       STA    COLUBK  
       STA    WSYNC   
       LDX    #$04    
       LDA    #$A4    
       JSR    LF982   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    PF2     
       LDX    #$06    
       STX    ENABL   
LF052: DEX            
       STA    WSYNC   
       BNE    LF052   
       STX    HMCLR   
       STX    PF1     
       LDA    #$70    
       STA    PF0     
       LDA    $E6     
       BEQ    LF06E   
       LDX    $8F     
       INX            
       STX    $E0     
       LDA    #$00    
       STA    $E2     
       BEQ    LF080   
LF06E: LDA    $90     
       BNE    LF07E   
       LDA    $8F     
       BEQ    LF07E   
       LDA    $86     
       BPL    LF07E   
       LDA    #$01    
       BPL    LF080   
LF07E: LDA    $E7     
LF080: TAY            
       CLC            
       ADC    #$02    
       TAX            
       LDA    LFBFE,Y 
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$06    
       STY    $EB     
LF090: LDA    $E0,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFD8,Y 
       LDY    $EB     
       STA.wy $0087,Y 
       LDA    $E0,X   
       AND    #$0F    
       TAY            
       LDA    LFFD8,Y 
       LDY    $EB     
       DEY            
       DEY            
       STA.wy $0087,Y 
       DEY            
       DEY            
       STY    $EB     
       DEX            
       DEX            
       BPL    LF090   
       LDX    #$07    
       LDA    #$FF    
LF0BA: STA    $87,X   
       DEX            
       DEX            
       BPL    LF0BA   
       LDX    #$08    
       STA    WSYNC   
LF0C4: DEX            
       BNE    LF0C4   
       STA    RESP0   
       STA    RESP1   
       STX    HMP1    
       LDA    #$E0    
       STA    HMP0    
       INX            
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
LF0DC: STA    WSYNC   
       LDA    ($8D),Y 
       STA    GRP0    
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    ($87),Y 
       TAX            
       LDA    ($89),Y 
       CMP    ($80,X) 
       CMP    ($80,X) 
       CMP    ($80),Y 
       STA    GRP0    
       STX    GRP1    
       DEY            
       BPL    LF0DC   
       STA    HMCLR   
       STA    WSYNC   
       INY            
       STY    PF0     
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$0C    
LF109: STA    WSYNC   
       STY    ENABL   
       LDA    LFFE2,X 
       STA    PF2     
       LDA    LFFEF,X 
       STA    COLUPF  
       DEX            
       BPL    LF109   
       STY    PF2     
       STA    WSYNC   
       LDX    #$04    
       LDA    $EE     
       JSR    LF982   
       LDX    #$00    
       LDA    #$46    
       JSR    LF982   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$31    
       STA    CTRLPF  
       LDX    #$FB    
       STX    $88     
       STX    $8C     
       INX            
       STX    $8A     
       LDA    #$00    
       STA    $87     
       STA    $89     
       STA    WSYNC   
       LDA    #$18    
       STA    $8B     
       LDX    #$01    
       LDA    #$16    
       JSR    LF982   
       LDA    #$7A    
       STA    COLUPF  
       LDX    #$07    
LF158: STA    WSYNC   
       BNE    LF160   
       LDA    #$E5    
       STA    COLUPF  
LF160: LDA    LFDCF,X 
       STA    PF1     
       LDA    LFDD7,X 
       STA    PF2     
       LDY    #$05    
LF16C: DEY            
       BNE    LF16C   
       STY    PF2     
       STY    PF1     
       DEX            
       BPL    LF158   
       LDA    #$7A    
       STA    COLUPF  
       LDX    #$04    
       JSR    LF99D   
       LDY    #$17    
       STA    WSYNC   
       STA    HMOVE   
LF185: LDA    #$0C    
       STA    PF2     
       LDA    #$30    
       STA    PF1     
       LDA    ($87),Y 
       STA    GRP0    
       LDA    ($89),Y 
       STA    COLUP0  
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    #$4A    
       STA    COLUP1  
       LDA    #$7E    
       STA    PF1     
       STX    PF2     
       DEY            
       STA    WSYNC   
       BPL    LF185   
       STX    HMCLR   
       STX    GRP0    
       STX    GRP1    
       LDA    #$0C    
       STA    PF2     
       LDA    #$30    
       STA    PF1     
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$10    
       STA    HMP0    
       LDY    #$7E    
       STA    RESP0   
       STY    PF1     
       LDA    $92     
       STX    PF2     
       STA    $87     
       LDA    #$FC    
       STA    $88     
       LDX    #$03    
       JSR    LF99D   
       LDX    #$1F    
       TXS            
       LDY    #$0B    
       STA    WSYNC   
       STA    HMOVE   
LF1DC: LDA    #$0C    
       STA    PF2     
       LDA    #$30    
       STA    PF1     
       LDA    $ED     
       EOR    $93     
       AND    #$FE    
       PHP            
       LDA    ($87),Y 
       STA    GRP0    
       LDA    $A8     
       STA    COLUP0  
       LDX    #$00    
       STX    PF1     
       STX    PF2     
       PLA            
       INC    $93     
       DEY            
       STA    WSYNC   
       BPL    LF1DC   
       STX    HMCLR   
       STX    GRP0    
       LDA    #$3F    
       STA    PF1     
       LDA    #$0F    
       STA    PF2     
       LDY    #$04    
LF20F: DEY            
       BNE    LF20F   
       STY    PF2     
       STY    PF1     
       LDY    #$02    
       STA    WSYNC   
       STA    HMOVE   
LF21C: LDA    LFDDF,Y 
       STA    PF1     
       LDA    LFDE2,Y 
       STA    PF2     
       LDA    $ED     
       EOR    $93     
       AND    #$FE    
       PHP            
       PLA            
       INC    $93     
       LDX    #$00    
       STX    PF1     
       STX    PF2     
       DEY            
       STA    WSYNC   
       BPL    LF21C   
       STX    HMCLR   
       DEX            
       TXS            
       LDA    #$32    
       STA    COLUPF  
       LDA    $94     
       STA    $87     
       LDA    $95     
       STA    $8B     
       LDA    #$FB    
       STA    WSYNC   
       STA    $88     
       STA    $8C     
       LDX    #$00    
       LDA    $EC     
       JSR    LF982   
       LDX    #$01    
       LDA    $EC     
       JSR    LF982   
       BIT    $96     
       BMI    LF269   
       LDA    #$00    
       BEQ    LF26B   
LF269: LDA    #$08    
LF26B: STA    REFP0   
       STA    REFP1   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$1F    
       TXS            
       LDX    #$FF    
       LDY    #$0E    
       STA    WSYNC   
       STA    HMOVE   
LF280: LDA    $ED     
       EOR    $93     
       AND    #$FE    
       PHP            
       LDA    ($87),Y 
       STA    GRP0    
       LDA    #$83    
       STA    COLUP0  
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    #$4A    
       STA    COLUP1  
       PLA            
       INC    $93     
       LDA    $F0     
       DEY            
       STA    WSYNC   
       BPL    LF280   
       STX    HMCLR   
       TXS            
       INX            
       STX    GRP0    
       JSR    LF982   
       LDA    $9B     
       STA    $87     
       LDA    #$DE    
       STA    $89     
       LDA    #$6C    
       STA    $8B     
       LDX    #$FB    
       STX    $88     
       STX    $8A     
       LDX    #$FB    
       STX    $8C     
       LDX    #$1F    
       TXS            
       LDX    #$00    
       STX    REFP0   
       LDY    #$0C    
       STA    WSYNC   
       STA    HMOVE   
LF2CD: LDA    #$20    
       STA    PF1     
       LDA    ($87),Y 
       STA    GRP0    
       LDA    ($89),Y 
       STA    COLUP0  
       LDA    $ED     
       EOR    $93     
       AND    #$FE    
       PHP            
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    #$98    
       STA    COLUP1  
       STX    PF1     
       PLA            
       INC    $93     
       DEY            
       STA    WSYNC   
       BPL    LF2CD   
       STX    HMCLR   
       STX    ENABL   
       DEX            
       TXS            
       LDA    #$20    
       STA    PF1     
       LDA    #$79    
       STA    $8B     
       LDX    #$FB    
       STX    $8C     
       LDX    #$00    
       STX    PF1     
       LDA    $9C     
       CMP    #$0D    
       BCC    LF31A   
       CMP    #$13    
       BCC    LF316   
       LDA    #$45    
       BNE    LF31C   
LF316: LDA    #$1C    
       BNE    LF31C   
LF31A: LDA    #$95    
LF31C: STA    COLUP0  
       LDY    #$10    
LF320: LDA    ($B5),Y 
       STA    GRP0    
       STX    PF1     
       LDA    #$32    
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$20    
       STA    PF1     
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    #$EA    
       CPY    #$08    
       BCC    LF33C   
       LDA    #$98    
LF33C: STA    COLUP1  
       CPY    #$06    
       BCC    LF34E   
       LDA    ($97),Y 
       STA    PF2     
       LDA    LFD6E,Y 
       STA    COLUPF  
       JMP    LF357   
LF34E: LDA    ($B1),Y 
       STA    PF2     
       LDX    #$1F    
       TXS            
       LDX    #$00    
LF357: DEY            
       BPL    LF320   
       STX    PF1     
       LDA    $9D     
       STA    $87     
       LDA    #$8A    
       STA    $8B     
       LDA    #$FC    
       STA    $88     
       LDA    #$FB    
       STA    $8C     
       LDY    #$12    
       STA    WSYNC   
LF370: LDA    LFBEB,Y 
       STA    PF1     
       LDA    ($87),Y 
       STA    GRP0    
       LDA    #$C7    
       STA    COLUP0  
       LDA    $ED     
       EOR    $93     
       AND    #$FE    
       PHP            
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    #$EA    
       STA    COLUP1  
       STX    PF1     
       PLA            
       INC    $93     
       DEY            
       STA    WSYNC   
       BPL    LF370   
       STX    GRP0    
       LDY    #$21    
       STY    PF1     
       LDA    $9E     
       STA    $87     
       LDA    $9F     
       STA    $8B     
       LDA    #$FC    
       STA    $88     
       LDA    #$FB    
       STA    $8C     
       LDA    $EF     
       STA    HMP0    
       AND    #$0F    
       CMP    #$07    
       BPL    LF3CF   
       STX    PF1     
       STA    WSYNC   
       TAX            
       LDA    #$21    
       STA    PF1     
       STA    PF1     
LF3C1: DEX            
       BNE    LF3C1   
       STA    RESP0   
       LDY    #$02    
LF3C8: DEY            
       BNE    LF3C8   
       STX    PF1     
       BEQ    LF3EB   
LF3CF: LDY    #$06    
       SEC            
       SBC    #$06    
       TAX            
       LDA    #$00    
       STA    PF1     
       STA    WSYNC   
       LDA    #$21    
       STA    PF1     
       STA    PF1     
LF3E1: DEY            
       BNE    LF3E1   
       STY    PF1     
LF3E6: DEX            
       BNE    LF3E6   
       STA    RESP0   
LF3EB: LDY    #$0C    
       STA    WSYNC   
       STA    HMOVE   
LF3F1: LDA    ($87),Y 
       STA    GRP0    
       LDA    $A0     
       STA    COLUP0  
       LDA    #$21    
       STA    PF1     
       LDA    $ED     
       EOR    $93     
       AND    #$FE    
       PHP            
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    #$47    
       STA    COLUP1  
       STX    PF1     
       PLA            
       INC    $93     
       DEY            
       STA    WSYNC   
       BPL    LF3F1   
       STX    GRP0    
       STX    GRP1    
       STX    REFP1   
       STX    HMCLR   
       STX    COLUBK  
       STX    PF2     
       STX    ENABL   
       DEX            
       TXS            
       LDX    $E7     
       LDA    $AC     
       BEQ    LF430   
       LDY    #$37    
       BNE    LF433   
LF430: LDY    LFDC4,X 
LF433: STY    COLUP1  
       LDY    LFCFE,X 
       STY    COLUP0  
       LDA    $E9,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFD8,Y 
       STA    $8D     
       LDA    $E9,X   
       AND    #$0F    
       TAY            
       LDA    LFFD8,Y 
       STA    $8B     
       LDA    #$FF    
       STA    $8C     
       STA    $8E     
       LDA    #$31    
       STA    NUSIZ1  
       LDY    $F1,X   
       BNE    LF464   
       LDY    #$9E    
       LDA    #$FC    
       BNE    LF46D   
LF464: LDA    LFCAE,Y 
       STA    NUSIZ0  
       LDY    #$B2    
       LDA    #$FC    
LF46D: STY    $87     
       STA    $88     
       STA    WSYNC   
       LDX    #$00    
       TXA            
       JSR    LF982   
       INX            
       LDA    #$45    
       JSR    LF982   
       LDY    #$07    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    HMOVE   
LF489: LDA    ($87),Y 
       STA    GRP0    
       LDA    ($8D),Y 
       STA    GRP1    
       LDX    #$06    
LF493: DEX            
       BNE    LF493   
       LDA    ($8B),Y 
       TAX            
       STX    GRP1    
       DEY            
       STA    WSYNC   
       BPL    LF489   
       INY            
       STY    HMCLR   
       STY    GRP0    
       STY    GRP1    
LF4A7: LDA    INTIM   
       BNE    LF4A7   
       STA    $93     
       LDA    #$0E    
       STA    TIM64T  
       LDX    #$01    
LF4B5: LDA    $86     
       AND    #$01    
       BEQ    LF4C5   
       LDA    $84,X   
       BEQ    LF4C5   
       DEC    $84,X   
       LDA    $84,X   
       STA    AUDV0,X 
LF4C5: LDA    $80,X   
       BEQ    LF4CE   
       DEC    $80,X   
       JMP    LF4F6   
LF4CE: LDY    $82,X   
       LDA    LFF00,Y 
       BEQ    LF4D7   
       INC    $82,X   
LF4D7: STA    AUDV0,X 
       AND    #$0F    
       STA    $84,X   
       LDA    LFF00,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       LDA    LFF44,Y 
       STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFAEF,Y 
       STA    $80,X   
LF4F6: DEX            
       BPL    LF4B5   
       LDA    $9A     
       ADC    $86     
       ADC    $EC     
       ADC    $EF     
       ADC    $ED     
       ADC    $82     
       STA    $9A     
LF507: LDA    INTIM   
       BNE    LF507   
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
       LDA    #$24    
       STA    TIM64T  
       LDA    SWCHB   
       TAY            
       AND    #$02    
       CMP    $91     
       BEQ    LF545   
       STA    $91     
       LDX    #$01    
       STX    $E6     
       CMP    #$00    
       BNE    LF545   
       INC    $8F     
       LDA    $8F     
       AND    #$01    
       STA    $8F     
LF545: TYA            
       AND    #$01    
       BNE    LF562   
       LDX    #$08    
LF54C: STA    $E0,X   
       DEX            
       BPL    LF54C   
       INX            
       STX    $81     
       INX            
       STX    $90     
       INX            
       STX    $AE     
       LDA    #$00    
       JSR    LF98F   
       JMP    LF010   
LF562: LDA    $AE     
       CMP    #$02    
       BCC    LF56B   
       JMP    LF83B   
LF56B: BIT    CXP0FB  
       BVC    LF597   
       LDA    $ED     
       CMP    #$0C    
       BCS    LF589   
       LDA    #$14    
       STA    $AF     
       LDA    #$00    
       STA    $A9     
LF57D: JSR    LFA2A   
       JSR    LFAC9   
       LDA    #$FF    
       STA    $ED     
       BMI    LF597   
LF589: CMP    #$48    
       BCC    LF597   
       LDA    #$00    
       STA    $AA     
       LDA    #$28    
       STA    $B0     
       BPL    LF57D   
LF597: STA    CXCLR   
       LDA    $AE     
       CMP    #$03    
       BCC    LF5A2   
       JMP    LF753   
LF5A2: BIT    $96     
       BMI    LF608   
       LDA    $A1     
       BNE    LF5FA   
       LDA    $86     
       AND    #$07    
       BNE    LF5BE   
       LDA    $EC     
       JSR    LF9D0   
       CMP    #$4E    
       BCC    LF5C0   
       JSR    LF96D   
       STA    $EC     
LF5BE: BNE    LF62A   
LF5C0: LDX    $E7     
       LDY    $E4,X   
       LDA    #$50    
       STA    $EB     
       LDA    $E9,X   
       CMP    $EB     
       BCC    LF5D4   
       LDA    #$0B    
       STA    $99     
       BPL    LF5F4   
LF5D4: LDA    $E9,X   
       BEQ    LF5F4   
       LDY    $AC     
       BEQ    LF5EB   
       SED            
       SEC            
       SBC    #$03    
       STA    $E9,X   
       CLD            
       DEC    $AC     
       INC    $99     
       INC    $99     
       BPL    LF5F2   
LF5EB: SED            
       SEC            
       SBC    #$01    
       STA    $E9,X   
       CLD            
LF5F2: INC    $99     
LF5F4: LDA    #$1F    
       STA    $A1     
       BPL    LF62A   
LF5FA: DEC    $A1     
       BNE    LF62A   
       LDA    #$1F    
       STA    $A2     
       LDA    #$80    
       STA    $96     
       BMI    LF62A   
LF608: LDA    $A2     
       BNE    LF628   
       LDA    $86     
       AND    #$07    
       BNE    LF62A   
       LDA    $EC     
       JSR    LF9EE   
       CMP    #$7A    
       BCS    LF622   
       JSR    LF96D   
       STA    $EC     
       BNE    LF62A   
LF622: LDA    #$00    
       STA    $96     
       BEQ    LF62A   
LF628: DEC    $A2     
LF62A: LDA    $AF     
       BEQ    LF63E   
       CMP    #$05    
       BCC    LF636   
       LDA    #$30    
       BNE    LF638   
LF636: LDA    #$3C    
LF638: STA    $92     
       DEC    $AF     
       BPL    LF6A7   
LF63E: BIT    $A5     
       BMI    LF66C   
       LDA    $A6     
       BEQ    LF651   
       LDA    $86     
       AND    #$07    
       BNE    LF64E   
       DEC    $A6     
LF64E: JMP    LF6A7   
LF651: LDA    $9A     
       AND    #$03    
       TAX            
       LDA    LFCBA,X 
       STA    $A8     
       LDA    #$80    
       STA    $A5     
       LDY    $E7     
       LDX    $E4,Y   
       LDA    $9A     
       AND    LFDC6,X 
       ADC    #$32    
       STA    $A7     
LF66C: LDA    $86     
       AND    #$10    
       BNE    LF67C   
       LDA    $86     
       AND    #$08    
       BEQ    LF67C   
       LDA    #$24    
       BNE    LF67E   
LF67C: LDA    #$18    
LF67E: STA    $92     
       LDA    $86     
       BPL    LF690   
       LDY    $83     
       LDA    LFF00,Y 
       BNE    LF690   
       LDA    #$24    
       JSR    LF996   
LF690: DEC    $A7     
       BNE    LF6A7   
       LDA    #$9E    
       STA    $92     
       LDA    #$00    
       STA    $A5     
       LDY    $E7     
       LDX    $E4,Y   
       LDA    $9A     
       AND    LFDBB,X 
       STA    $A6     
LF6A7: LDA    $B0     
       BEQ    LF6BB   
       CMP    #$0A    
       BCC    LF6B3   
       LDA    #$62    
       BNE    LF6B5   
LF6B3: LDA    #$6F    
LF6B5: STA    $9E     
       DEC    $B0     
       BPL    LF729   
LF6BB: BIT    $A4     
       BMI    LF6E0   
       LDA    $A3     
       BEQ    LF6CE   
       LDA    $86     
       AND    #$07    
       BNE    LF6CB   
       DEC    $A3     
LF6CB: JMP    LF729   
LF6CE: LDA    $9A     
       AND    #$03    
       TAX            
       LDA    LFCBA,X 
       STA    $A0     
       LDA    #$80    
       STA    $A4     
       LDA    #$0B    
       STA    $EF     
LF6E0: LDA    $86     
       AND    #$08    
       BEQ    LF6EA   
       LDA    #$55    
       BNE    LF6EC   
LF6EA: LDA    #$48    
LF6EC: STA    $9E     
       LDA    $86     
       CMP    #$C8    
       BCC    LF700   
       LDY    $83     
       LDA    LFF00,Y 
       BNE    LF700   
       LDA    #$24    
       JSR    LF996   
LF700: LDA    $86     
       AND    #$0F    
       BNE    LF729   
       LDA    $EF     
       JSR    LFA0C   
       CMP    #$30    
       BCC    LF716   
       JSR    LF96D   
       STA    $EF     
       BNE    LF729   
LF716: LDA    #$9E    
       STA    $9E     
       LDY    $E7     
       LDX    $E4,Y   
       LDA    $9A     
       AND    LFDBB,X 
       STA    $A3     
       LDA    #$00    
       STA    $A4     
LF729: LDA    $86     
       AND    #$10    
       BNE    LF73D   
       LDA    $86     
       AND    #$08    
       BEQ    LF73D   
       LDA    #$3F    
       STA    $94     
       LDA    #$5D    
       BNE    LF743   
LF73D: LDA    #$30    
       STA    $94     
       LDA    #$4E    
LF743: STA    $95     
       LDA    $86     
       AND    #$10    
       BNE    LF74F   
       LDA    #$AA    
       BNE    LF751   
LF74F: LDA    #$9D    
LF751: STA    $9F     
LF753: LDA    $AD     
       BNE    LF75B   
       LDA    #$B7    
       BNE    LF767   
LF75B: DEC    $AD     
       CMP    #$10    
       BCC    LF765   
       LDA    #$C4    
       BNE    LF767   
LF765: LDA    #$D1    
LF767: STA    $9B     
       LDA    $86     
       AND    #$10    
       BNE    LF773   
       LDA    #$BE    
       BNE    LF775   
LF773: LDA    #$D1    
LF775: STA    $9D     
       LDA    #$FE    
       STA    $B6     
       LDA    $AE     
       BEQ    LF7EB   
       LDA    $AD     
       BEQ    LF78A   
       LDX    #$02    
       JSR    LF9B6   
       BNE    LF7F0   
LF78A: LDY    $E7     
       LDA    SWCHA   
       TAX            
       AND    LFD98,Y 
       BNE    LF79C   
       LDX    #$00    
       JSR    LFA9E   
       BPL    LF7F0   
LF79C: TXA            
       AND    LFD9A,Y 
       BNE    LF7A9   
       LDX    #$01    
       JSR    LFA9E   
       BPL    LF7F0   
LF7A9: TXA            
       AND    LFD9C,Y 
       BNE    LF7CD   
       LDX    #$02    
       JSR    LF9B6   
       LDA    $AB     
       BEQ    LF7F0   
       LDA    #$1F    
       STA    $AD     
       DEC    $AB     
       INC    $9C     
       JSR    LFA2A   
       LDA    #$2C    
       JSR    LF98F   
       JSR    LFAC9   
       BPL    LF7F0   
LF7CD: TXA            
       AND    LFD9E,Y 
       BNE    LF7EB   
       LDX    #$03    
       JSR    LF9B6   
       LDA    $AB     
       BNE    LF7F0   
       LDA    $99     
       BEQ    LF7F0   
       DEC    $99     
       INC    $AB     
       LDA    #$28    
       JSR    LF98F   
       BEQ    LF7F0   
LF7EB: LDX    #$04    
       JSR    LF9B6   
LF7F0: LDA    $A9     
       BEQ    LF814   
       LDA    $86     
       AND    #$03    
       BNE    LF807   
       LDA    $EE     
       JSR    LF971   
       SEC            
       SBC    #$01    
       JSR    LF96D   
       STA    $EE     
LF807: DEC    $ED     
       BPL    LF814   
       INC    $AC     
       JSR    LFA61   
       LDA    #$00    
       STA    $A9     
LF814: LDA    $AA     
       BEQ    LF83A   
       LDA    $EE     
       JSR    LF971   
       CLC            
       ADC    #$01    
       JSR    LF96D   
       STA    $EE     
       INC    $ED     
       LDA    $ED     
       CMP    #$4A    
       BCC    LF83A   
       INC    $AC     
       JSR    LFA61   
       LDA    #$FF    
       STA    $ED     
       LDA    #$00    
       STA    $AA     
LF83A: NOP            
LF83B: LDA    $99     
       CMP    #$0A    
       BCC    LF853   
       INC    $E8     
       JSR    LFA6F   
       LDA    #$3C    
       STA    $B3     
       LDA    #$03    
       STA    $AE     
       LDA    #$3F    
       JSR    LF996   
LF853: LDA    $AE     
       CMP    #$02    
       BCC    LF85D   
       CMP    #$04    
       BNE    LF86E   
LF85D: LDX    $99     
       LDA    LFD7F,X 
       STA    $97     
       LDA    #$00    
       STA    $B1     
       LDA    #$FD    
       STA    $98     
       STA    $B2     
LF86E: LDA    $AE     
       CMP    #$03    
       BNE    LF8A1   
       LDA    $B3     
       BNE    LF883   
       LDA    #$00    
       JSR    LF98F   
       LDA    #$02    
       STA    $AE     
       BPL    LF8A1   
LF883: CMP    #$1E    
       BCC    LF88B   
       LDA    #$7C    
       BNE    LF895   
LF88B: CMP    #$0A    
       BCC    LF893   
       LDA    #$8D    
       BNE    LF895   
LF893: LDA    #$9E    
LF895: STA    $B1     
       STA    $97     
       LDA    #$FC    
       STA    $98     
       STA    $B2     
       DEC    $B3     
LF8A1: LDA    $9C     
       CMP    #$15    
       BCC    LF8B4   
       INC    $E8     
       LDA    #$FF    
       STA    $B4     
       LDA    #$04    
       STA    $AE     
       JSR    LFA6F   
LF8B4: LDA    $AE     
       CMP    #$04    
       BNE    LF8F1   
       LDX    #$08    
       LDA    $B4     
       BNE    LF8CB   
       LDA    #$00    
       JSR    LF98F   
       LDA    #$02    
       STA    $AE     
       BPL    LF8F1   
LF8CB: CMP    LFCF5,X 
       BCS    LF8D3   
       DEX            
       BPL    LF8CB   
LF8D3: LDA    LFDEE,X 
       STA    $B5     
       LDA    LFDF7,X 
       STA    $B6     
       CPX    $B7     
       BEQ    LF8EF   
       STX    $B7     
       TXA            
       BNE    LF8EA   
       LDA    #$3A    
       BNE    LF8EC   
LF8EA: LDA    #$35    
LF8EC: JSR    LF996   
LF8EF: DEC    $B4     
LF8F1: LDX    $E7     
       LDA    $E4,X   
       CMP    #$09    
       BCC    LF8FD   
       LDA    #$04    
       STA    $E4,X   
LF8FD: LDY    $F1,X   
       CPY    #$04    
       BCC    LF905   
       DEC    $F1,X   
LF905: INC    $86     
       LDA    $AE     
       CMP    #$02    
       BNE    LF958   
       LDY    $82     
       LDA    LFF00,Y 
       BNE    LF958   
       LDA    $90     
       BNE    LF91D   
       STA    $AE     
       JMP    LF010   
LF91D: LDA    #$01    
       STA    $AE     
       LDA    $E8     
       BNE    LF928   
       JMP    LF01A   
LF928: DEC    $E8     
       LDA    $8F     
       BEQ    LF94B   
       LDX    $E7     
       DEC    $F1,X   
       BPL    LF944   
       JSR    LFA96   
       BPL    LF93F   
       JSR    LFA8B   
       JMP    LF010   
LF93F: STX    $E7     
       JMP    LF01A   
LF944: JSR    LFA96   
       BPL    LF93F   
       BMI    LF955   
LF94B: DEC    $F1     
       BPL    LF955   
       JSR    LFA8B   
       JMP    LF010   
LF955: JMP    LF01A   
LF958: NOP            
       LDA    $AE     
       BNE    LF969   
       LDY    $82     
       LDA    LFF00,Y 
       BNE    LF969   
       LDA    #$00    
       JSR    LF98F   
LF969: NOP            
       JMP    LF01D   
LF96D: EOR    #$07    
       BNE    LF973   
LF971: EOR    #$70    
LF973: TAY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $EB     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $EB     
       RTS            

LF982: STA    HMP0,X  
       AND    #$0F    
       TAY            
LF987: DEY            
       BPL    LF987   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

LF98F: STA    $82     
       LDA    #$00    
       STA    $80     
       RTS            

LF996: STA    $83     
       LDA    #$00    
       STA    $81     
       RTS            

LF99D: STA    WSYNC   
       LDA    #$30    
       STA    PF1     
       LDA    #$0C    
       STA    PF2     
       LDY    #$05    
LF9A9: DEY            
       BNE    LF9A9   
       LDA    #$7E    
       STA    PF1     
       STY    PF2     
       DEX            
       BNE    LF99D   
       RTS            

LF9B6: LDA    $9C     
       CMP    #$0D    
       BCC    LF9CA   
       CMP    #$13    
       BCC    LF9C5   
       LDA    LFD93,X 
       BNE    LF9CD   
LF9C5: LDA    LFD8E,X 
       BNE    LF9CD   
LF9CA: LDA    LFD89,X 
LF9CD: STA    $B5     
       RTS            

LF9D0: JSR    LF971   
       STA    $EB     
       AND    #$0F    
       LDY    $E7     
       LDX    $E4,Y   
       LDY    LFDA0,X 
       CMP    LFDA0,X 
       BCS    LF9E5   
       DEC    $EB     
LF9E5: DEY            
LF9E6: DEC    $EB     
       DEY            
       BNE    LF9E6   
       LDA    $EB     
       RTS            

LF9EE: JSR    LF971   
       STA    $EB     
       AND    #$0F    
       LDY    $E7     
       LDX    $E4,Y   
       LDY    LFDA0,X 
       CMP    LFDA9,X 
       BCC    LFA03   
       INC    $EB     
LFA03: DEY            
LFA04: INC    $EB     
       DEY            
       BNE    LFA04   
       LDA    $EB     
       RTS            

LFA0C: JSR    LF971   
       STA    $EB     
       AND    #$0F    
       LDY    $E7     
       LDX    $E4,Y   
       LDY    LFDB2,X 
       CMP    LFDB2,X 
       BCS    LFA21   
       DEC    $EB     
LFA21: DEY            
LFA22: DEC    $EB     
       DEY            
       BNE    LFA22   
       LDA    $EB     
       RTS            

LFA2A: LDA    $90     
       BEQ    LFA60   
       SED            
       LDX    $E7     
       LDA    $E4,X   
       CLC            
       ADC    #$05    
       STA    $89     
       LDA    $E2,X   
       AND    #$F0    
       STA    $8A     
       LDA    $E0,X   
       CLC            
       ADC    $89     
       STA    $E0,X   
       BCC    LFA5F   
       LDA    $E2,X   
       ADC    #$00    
       STA    $E2,X   
       BCC    LFA57   
       LDA    #$99    
       STA    $E0,X   
       STA    $E2,X   
       BNE    LFA5F   
LFA57: AND    #$F0    
       EOR    $8A     
       BEQ    LFA5F   
       INC    $F1,X   
LFA5F: CLD            
LFA60: RTS            

LFA61: LDY    $E7     
       LDA.wy $00E9,Y 
       SED            
       CLC            
       ADC    #$03    
       STA.wy $00E9,Y 
       CLD            
       RTS            

LFA6F: LDY    $E7     
       LDX    $E4,Y   
       LDA    LFDE5,X 
       STA.wy $00E9,Y 
       LDX    #$00    
       STX    $99     
       STX    $9C     
       STX    $AC     
       STX    $A9     
       STX    $AA     
       STX    $AB     
       DEX            
       STX    $ED     
       RTS            

LFA8B: LDA    #$00    
       STA    $E7     
       STA    $90     
       STA    $AE     
       STA    $E4     
       RTS            

LFA96: LDA    $E7     
       EOR    #$01    
       TAX            
       LDA    $F1,X   
       RTS            

LFA9E: JSR    LF9B6   
       LDA    $A9,X   
       BNE    LFAC8   
       LDA    $ED     
       BPL    LFAC8   
       LDA    $AB     
       BEQ    LFAC8   
       LDA    $96     
       BNE    LFAB6   
       INC    $AC     
       JSR    LFA61   
LFAB6: DEC    $AB     
       INC    $A9,X   
       LDA    #$63    
       STA    $EE     
       LDA    LFAFE,X 
       STA    $ED     
       LDA    #$30    
       JSR    LF98F   
LFAC8: RTS            

LFAC9: LDX    $E7     
       LDA    $99     
       BNE    LFAE6   
       LDA    $E9,X   
       BNE    LFAE6   
       LDA    $AC     
       BNE    LFAE6   
       LDA    $AB     
       BNE    LFAE6   
       INC    $E4,X   
       LDA    #$02    
       STA    $AE     
       LDA    #$00    
       JSR    LF98F   
LFAE6: RTS            

LFAE7: .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
LFAEF: .byte $00,$01,$03,$07,$0F,$1F,$3F,$7F
LFAF7: .byte $F7,$FF,$D3,$0B,$D0,$03,$03
LFAFE: .byte $29,$2B,$00,$18,$3C,$3C,$00,$3C,$3C,$7E,$7E,$E7,$C3,$00,$66,$66
       .byte $66,$00,$66,$66,$24,$00,$7E,$7E,$FF,$E7,$7E,$7E,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$00,$00
       .byte $00,$00,$02,$02,$03,$03,$03,$01,$09,$01,$0B,$03,$17,$1E,$1E,$0E
       .byte $0E,$02,$02,$03,$03,$03,$01,$01,$01,$0B,$03,$17,$1E,$1E,$0E,$0E
       .byte $06,$0C,$04,$0C,$1C,$0E,$06,$0E,$04,$0C,$08,$00,$00,$00,$00,$06
       .byte $0C,$0C,$0C,$1C,$0E,$0E,$0E,$04,$0C,$08,$00,$00,$00,$00,$CB,$19
       .byte $19,$1D,$1D,$1D,$0D,$0F,$0F,$0F,$07,$07,$07,$15,$0A,$0A,$05,$05
       .byte $0A,$0A,$0F,$00,$0F,$0F,$0F,$17,$37,$73,$CB,$CB,$55,$2A,$2A,$55
       .byte $55,$2A,$2A,$55,$55,$2A,$2A,$15,$15,$2A,$2A,$15,$15,$0A,$0A,$1E
       .byte $1E,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$61,$61,$21,$21
       .byte $21,$21,$23,$33,$33,$32,$12,$12,$12,$3C,$78,$7C,$7C,$76,$76,$74
       .byte $7C,$7E,$7C,$78,$38,$10,$3C,$70,$67,$60,$7A,$76,$74,$7C,$7E,$7C
       .byte $78,$38,$10,$3C,$78,$72,$78,$7E,$76,$74,$7C,$7E,$7C,$78,$38,$10
       .byte $4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A,$78,$78,$78,$78,$42
LFBEB: .byte $3F,$3F,$21,$21,$21,$21,$21,$21,$21,$21,$3F,$3F,$3F,$3F,$20,$20
       .byte $20,$20,$20
LFBFE: .byte $28,$E7,$84,$34,$34,$34,$84,$84,$84,$84,$84,$84,$84,$84,$A5,$BD
       .byte $BD,$84,$84,$84,$84,$84,$84,$84,$84,$84,$3C,$E7,$FF,$7E,$E7,$FF
       .byte $99,$99,$7E,$E7,$C3,$81,$3C,$FF,$FF,$7E,$E7,$FF,$FF,$FF,$7E,$E7
       .byte $C3,$81,$3C,$E7,$C3,$5A,$DB,$C3,$FF,$99,$FF,$E7,$C3,$81,$3C,$E7
       .byte $DB,$42,$FF,$FF,$99,$99,$FF,$E7,$C3,$81,$55,$55,$7F,$3E,$3E,$7E
       .byte $FE,$7E,$E2,$E2,$66,$66,$24,$12,$12,$1E,$1E,$1E,$7E,$7E,$FE,$E2
       .byte $E6,$66,$66,$20,$FF,$E1,$71,$39,$F9,$7F,$1F,$DF,$31,$71,$E3,$63
       .byte $20,$FF,$E1,$71,$39,$39,$FF,$7F,$BF,$71,$F1,$E3,$63,$20,$20,$FC
       .byte $FC,$3C,$0C,$A4,$00,$28,$80,$14,$40,$08,$44,$00,$A4,$00,$54,$20
       .byte $FC,$3C,$8C,$64,$50,$A0,$68,$90,$24,$50,$48,$00,$04,$20,$00,$08
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFCAE: .byte $00,$30,$31,$33,$3C,$66,$C3,$DB,$FF,$5A,$7E,$18
LFCBA: .byte $18,$00,$C8,$0F,$0C,$0C,$08,$0B,$0B,$0A,$0A,$0A,$0A,$1A,$1A,$12
       .byte $16,$3E,$FC,$F8,$F8,$F8,$F8,$18,$1B,$13,$12,$1A,$0C,$0C,$06,$06
       .byte $0E,$1A,$12,$16,$FE,$FE,$F8,$F8,$F8,$F8,$FE,$FD,$F0,$FA,$F5,$E2
       .byte $C9,$C4,$91,$9A,$BD,$B8,$FC,$F9,$7C,$7A,$38
LFCF5: .byte $00,$28,$3C,$50,$6E,$8C,$AA,$C8,$E6
LFCFE: .byte $4A,$EF,$20,$FC,$FC,$FC,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18
       .byte $18,$00,$00,$00,$00,$00,$00,$00,$00,$98,$98,$98,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$98,$98,$98,$00,$80,$80,$80,$00,$00,$00,$00,$98
       .byte $98,$98,$00,$18,$18,$18,$00,$00,$00,$00,$98,$98,$98,$00,$98,$98
       .byte $98,$00,$00,$00,$00,$98,$98,$98,$00,$98,$98,$98,$00,$80,$80,$80
       .byte $98,$98,$98,$00,$98,$98,$98,$00,$18,$18,$18,$98,$98,$98,$00,$98
LFD6E: .byte $98,$98,$00,$98,$98,$98,$EA,$37,$3A,$00,$EA,$37,$3A,$00,$EA,$37
       .byte $3A
LFD7F: .byte $00,$0B,$16,$21,$2C,$37,$42,$4D,$58,$63
LFD89: .byte $9A,$CD,$67,$34,$01
LFD8E: .byte $AB,$DE,$78,$45,$12
LFD93: .byte $BC,$EF,$89,$56,$23
LFD98: .byte $10,$01
LFD9A: .byte $20,$02
LFD9C: .byte $40,$04
LFD9E: .byte $80,$08
LFDA0: .byte $04,$04,$04,$05,$05,$05,$06,$06,$07
LFDA9: .byte $0D,$0D,$0D,$0C,$0C,$0C,$0B,$0B,$0A
LFDB2: .byte $05,$06,$07,$07,$08,$08,$09,$09,$0A
LFDBB: .byte $2F,$3F,$4F,$5F,$6F,$7F,$8F,$AF,$FF
LFDC4: .byte $EA,$1C
LFDC6: .byte $6F,$5F,$4F,$4F,$3F,$3F,$2F,$2F,$1F
LFDCF: .byte $30,$30,$38,$3C,$3C,$3F,$3C,$3C
LFDD7: .byte $0C,$0C,$0E,$0F,$0F,$0F,$0F,$0F
LFDDF: .byte $20,$20,$30
LFDE2: .byte $08,$08,$0C
LFDE5: .byte $30,$32,$35,$37,$40,$42,$45,$47,$49
LFDEE: .byte $E4,$23,$01,$12,$01,$23,$01,$12,$01
LFDF7: .byte $FC,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$AA,$F0,$F8,$F8,$F4,$E7,$E7
       .byte $CB,$C8,$98,$98,$B8,$B8,$F8,$F8,$78,$78,$38,$F8,$FC,$FC,$F4,$E3
       .byte $E3,$CB,$CC,$9C,$9C,$BC,$BC,$FC,$F8,$78,$78,$38,$FE,$FE,$FE,$F2
       .byte $E1,$E1,$CD,$CE,$9E,$9C,$BC,$BC,$FC,$F8,$78,$78,$38,$F0,$F8,$F8
       .byte $F8,$F8,$E4,$E7,$C7,$C9,$99,$98,$98,$F8,$F8,$78,$78,$38,$F0,$FC
       .byte $FC,$FC,$FC,$E2,$E3,$CB,$CD,$9D,$9C,$9C,$FC,$F8,$78,$78,$38,$FE
       .byte $FE,$FE,$FE,$F6,$E2,$E1,$C9,$CF,$9D,$9C,$9C,$FC,$F8,$78,$78,$38
       .byte $F0,$F8,$F8,$F8,$F8,$F8,$D8,$C8,$88,$88,$A4,$A6,$FE,$FA,$7A,$7A
       .byte $3A,$F8,$FC,$FC,$FC,$FC,$FC,$DC,$CC,$8C,$84,$A4,$A2,$FA,$FE,$7A
       .byte $7A,$3A,$FE,$FE,$FE,$FE,$FE,$FE,$DE,$CE,$8E,$84,$A4,$A2,$FA,$FE
       .byte $7A,$7A,$3A,$F0,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$C4,$86,$87,$BB,$F9
       .byte $F9,$79,$79,$38,$F8,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$C4,$82,$83,$BB
       .byte $FD,$F9,$79,$79,$38,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$C4,$82,$83
       .byte $BB,$FD,$79,$79,$79,$38,$F2,$FA,$F6,$E4,$E4,$E8,$C8,$88,$98,$98
       .byte $98,$B8,$F8,$F8,$78,$78,$38,$FE,$F2,$E2,$E4,$EC,$CC,$CC,$9C,$9C
       .byte $9C,$BC,$BC,$FC,$F8,$78,$78,$38,$FE,$F2,$E2,$E6,$EE,$CE,$CE,$9E
       .byte $9E,$9C,$BC,$BC,$FC,$F8,$78,$78,$38
LFF00: .byte $4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F
       .byte $4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F
       .byte $4F,$CF,$01,$00,$4F,$4F,$4F,$00,$4F,$4D,$4B,$00,$CF,$CF,$CF,$00
       .byte $4F,$4D,$4B,$49,$00,$8F,$8F,$8F,$8F,$00,$8F,$8B,$89,$85,$00,$3F
       .byte $3F,$3F,$3F,$00
LFF44: .byte $91,$91,$97,$97,$91,$91,$B7,$97,$97,$96,$96,$96,$73,$76,$B7,$97
       .byte $76,$77,$97,$9A,$9A,$77,$7A,$9A,$9D,$9D,$7A,$7D,$9D,$9F,$9F,$7D
       .byte $7F,$AB,$E0,$00,$4A,$4F,$4B,$00,$35,$3F,$34,$00,$34,$39,$3F,$00
       .byte $1F,$1D,$1B,$18,$00,$11,$13,$1A,$1C,$00,$9F,$9F,$9F,$9F,$00,$3A
       .byte $3C,$2F,$56,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$7E,$18,$18,$18
       .byte $18,$78,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C
       .byte $0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06
       .byte $7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18
       .byte $0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E
       .byte $66,$66,$66,$3C
LFFD8: .byte $88,$90,$98,$A0,$A8,$B0,$B8,$C0,$C8,$D0
LFFE2: .byte $80,$80,$80,$C0,$C0,$F0,$F0,$E0,$E0,$C0,$C0,$80,$80
LFFEF: .byte $1F,$1E,$1D,$1C,$1B,$5D,$5D,$5C,$5C,$5B,$5B,$5A,$5A,$00,$F0,$AA
       .byte $AA
