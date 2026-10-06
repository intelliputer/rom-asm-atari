; Disassembly of roms/Motocross.bin
; Disassembled Tue Oct  6 15:21:52 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Motocross.bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
$2D     =  $2D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF2B4   =   $F2B4
LF527   =   $F527
LF892   =   $F892
LF8F4   =   $F8F4
LF90D   =   $F90D
LFF00   =   $FF00

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       JSR    LFF29   
LF00E: JSR    LFE00   
       LDX    #$04    
LF013: LDA    $AA,X   
       AND    #$07    
       STA    $BA     
       LDA    $A5,X   
       JSR    LFF00   
       ORA    $BA     
       STA    $86,X   
       DEY            
       DEY            
       DEY            
       TYA            
       CMP    #$06    
       BCC    LF02F   
       SEC            
       SBC    #$06    
       EOR    #$FF    
LF02F: STA    $81,X   
       DEX            
       BPL    LF013   
       LDA    $BE     
       JSR    LFF00   
       LDX    #$01    
       JSR    LFF1F   
       LDA    $DC     
       JSR    LFF00   
       LDX    #$04    
       JSR    LFF1F   
       LDA    #$3A    
       STA    COLUP1  
       LDA    #$05    
       STA    NUSIZ1  
       LDA    #$22    
       STA    $BC     
       LDA    #$A1    
       STA    COLUPF  
       LDA    #$11    
       STA    CTRLPF  
       LDA    $86     
       STA    HMP0    
       STA    NUSIZ0  
       LDA    $A5     
       JSR    LFF00   
       STA    WSYNC   
LF069: DEY            
       BPL    LF069   
       STA.w  $0010   
       LDA    $9B     
       STA    $B8     
       LDA    $96     
       STA    COLUP0  
       LDA    $91     
       STA    $B6     
       LDY    #$00    
       LDA    $A0     
       STA    $B9     
       CMP    #$D2    
       BCC    LF092   
LF085: INY            
       INC    $B9     
       BNE    LF085   
       STY    $B4     
       LDA    $9B     
       SBC    $B4     
       STA    $B8     
LF092: LDA    INTIM   
       BNE    LF092   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    PF1     
       LDX    #$00    
       STX    $8B     
       STX    $B5     
       LDA    $C3     
       STA    WSYNC   
       STA    COLUBK  
       STA    CXCLR   
       STA    HMCLR   
       LDA    #$FF    
       STA    PF0     
       BNE    LF0B9   
LF0B5: LDA    #$00    
       BEQ    LF0D3   
LF0B9: CPX    $BD     
       BCC    LF0C7   
       LDY    $BC     
       BMI    LF0C7   
       LDA    ($BF),Y 
       STA    $B5     
       DEC    $BC     
LF0C7: CPX    $B9     
       BCC    LF0B5   
       LDY    $B8     
       BMI    LF144   
       DEC    $B8     
       LDA    ($B6),Y 
LF0D3: STA    WSYNC   
       STA    GRP0    
       LDA    $B5     
       STA    GRP1    
       LDY    $C1     
       LDA    ($E0),Y 
       STA    PF1     
       DEC    $C1     
       INX            
       CPX    #$CA    
       BEQ    LF10D   
       CPX    $BD     
       BCC    LF118   
       LDY    $BC     
       BMI    LF11B   
       LDA    ($BF),Y 
       STA    $B5     
       DEC    $BC     
LF0F6: CPX    $B9     
       BCC    LF110   
       LDY    $B8     
       BMI    LF144   
       DEC    $B8     
       LDA    ($B6),Y 
LF102: STA    GRP0    
       LDA    $B5     
       STA    GRP1    
LF108: INX            
       CPX    #$CA    
       BNE    LF0B9   
LF10D: JMP    LF228   
LF110: ASL    LF000,X 
       NOP            
       LDA    #$00    
       BEQ    LF102   
LF118: STA    LF000,X 
LF11B: ASL    LF000,X 
       LDA    #$00    
       BEQ    LF0F6   
LF122: LDA    #$FF    
       STA    $B8     
       LDA    #$05    
       STA    $8B     
       LDA    #$00    
       CPX    $BD     
       BCC    LF138   
       LDY    $BC     
       BMI    LF138   
       LDA    ($BF),Y 
       DEC    $BC     
LF138: STA    WSYNC   
       STA    GRP1    
       DEC    $C1     
       LDA    #$00    
       STA    $B5     
       BEQ    LF108   
LF144: STA    WSYNC   
       LDA    $B5     
       STA    GRP1    
       INX            
       CPX    #$CA    
       BEQ    LF10D   
       INC    $8B     
       LDY    $8B     
       CPY    #$05    
       BCS    LF122   
       LDA.wy $0081,Y 
       STA    $B4     
       LDA.wy $0086,Y 
       STA    $BA     
       LDA    #$00    
       CPX    $BD     
       BCC    LF16F   
       LDY    $BC     
       BMI    LF16F   
       LDA    ($BF),Y 
       DEC    $BC     
LF16F: STA    WSYNC   
       STA.w  $001C   
       INX            
       CPX    #$CA    
       BEQ    LF194   
       LDY    $B4     
       BMI    LF1A5   
LF17D: DEY            
       BPL    LF17D   
       STA.w  $0010   
       LDA    #$00    
       CPX    $BD     
       BCC    LF191   
       LDY    $BC     
       BMI    LF191   
       LDA    ($BF),Y 
       DEC    $BC     
LF191: JMP    LF1BD   
LF194: JMP    LF228   
LF197: STA    LF000,X 
LF19A: ASL    LF000,X 
       NOP            
       LDA    #$00    
       LDY    $B4     
       JMP    LF1B8   
LF1A5: LDA    #$00    
       CPX    $BD     
       BCC    LF197   
       LDY    $BC     
       BMI    LF19A   
       STA    LF000,X 
       LDA    ($BF),Y 
       DEC    $BC     
       LDY    $B4     
LF1B8: INY            
       BMI    LF1B8   
       STA    RESP0   
LF1BD: STA    WSYNC   
       STA    GRP1    
       DEC    $C1     
       LDY    $C1     
       LDA    ($E0),Y 
       STA    PF1     
       INX            
       CPX    #$CA    
       BEQ    LF194   
       LDA    $BA     
       STA    HMP0    
       STA    NUSIZ0  
       LDA    #$00    
       CPX    $BD     
       BCC    LF1E2   
       LDY    $BC     
       BMI    LF1E2   
       LDA    ($BF),Y 
       DEC    $BC     
LF1E2: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       INX            
       CPX    #$CA    
       BEQ    LF194   
       LDY    $8B     
       LDA.wy $0091,Y 
       STA    $B6     
       LDA.wy $009B,Y 
       STA    $B8     
       LDA.wy $0096,Y 
       STA    COLUP0  
       LDA.wy $00A0,Y 
       STA    $B9     
       LDA    #$00    
       CPX    $BD     
       BCC    LF211   
       LDY    $BC     
       BMI    LF211   
       LDA    ($BF),Y 
       DEC    $BC     
LF211: ASL    LF000   
       STA    WSYNC   
       STA    GRP1    
       LDA    #$00    
       STA    $B5     
       DEC    $C1     
       STA    HMCLR   
       INX            
       CPX    #$CA    
       BEQ    LF228   
       JMP    LF0B9   
LF228: LDA    #$02    
       STA    WSYNC   
       STA    COLUBK  
       STA    COLUPF  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF2     
       STA    ENAM1   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       NOP            
       ASL    LF000,X 
       STA    RESP0   
       STA    RESP1   
       STA    REFP0   
       LDA    #$10    
       STA    HMP0    
       STA    REFP0   
       LDA    #$20    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $B4     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    GRP0    
       LDA    #$0A    
       STA    COLUBK  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
LF274: LDY    $B4     
       LDA    ($C4),Y 
       EOR    #$FF    
       STA    WSYNC   
       STA    $BA     
       LDA    ($C6),Y 
       TAX            
       LDA    ($CE),Y 
       STA    GRP0    
       LDA    ($CC),Y 
       STA    GRP1    
       LDA    ($CA),Y 
       STA    GRP0    
       LDA    ($C8),Y 
       LDY    $BA     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $B4     
       BPL    LF274   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP1    
       STA    GRP0    
       STA    WSYNC   
       LDA    #$02    
       STA    COLUBK  
       LDA    #$26    
       STA    $86     
       LDA    #$0B    
       STA    $87     
       JSR    LF34F   
       STY    $B4     
LF2BC: LDY    $B4     
       LDA    LFD80,Y 
       STA    $BA     
       STA    WSYNC   
       LDA    #$FF    
       STA    ENABL   
       LDA    LFD89,Y 
       TAX            
       LDA    LFDAD,Y 
       STA    GRP0    
       LDA    LFD89,Y 
       STA    GRP1    
       LDA    LFD9B,Y 
       STA.w  $001B   
       LDA    LFD92,Y 
       LDY    $BA     
       STA.w  $001C   
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $B4     
       BPL    LF2BC   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    ENABL   
       LDA    #$02    
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$4A    
       STA    $86     
       LDA    #$00    
       STA    $87     
       JSR    LF34F   
       STY    $B4     
LF310: LDY    $B4     
       LDA    ($D0),Y 
       STA    $BA     
       STA    WSYNC   
       LDA    ($D2),Y 
       TAX            
       LDA    ($DA),Y 
       NOP            
       STA    GRP0    
       LDA    ($D8),Y 
       STA    GRP1    
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    ($D4),Y 
       LDY    $BA     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $B4     
       BPL    LF310   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    COLUBK  
       JMP    LF390   
LF34F: LDA    $86     
       STA    WSYNC   
       STA    COLUBK  
       LDA    $87     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$07    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       LDY    #$08    
       RTS            

LF36A: .byte $12,$C8,$4C,$63,$23,$09,$80,$D1,$79,$D0,$0D,$C8,$20,$38,$23,$90
       .byte $08,$B0,$15,$C8,$B1,$85,$30,$FB,$C8,$C8,$C8,$C8,$18,$98,$65,$85
       .byte $85,$85,$90,$CE,$E6,$86
LF390: LDA    #$33    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF3CC   
       LDA    #$01    
       STA    $E4     
       LDA    #$00    
       STA    $E6     
       LDA    #$32    
       STA    $E7     
       JSR    LFF29   
       LDA    #$09    
       STA    $FA     
LF3AE: JSR    LF9B6   
       JSR    LFF71   
       LDA    $FA     
       STA    $DA     
       LDA    #$00    
       STA    $E5     
       STA    $80     
       STA    AUDV0   
       STA    AUDV1   
       LDX    #$05    
LF3C4: STA    $F4,X   
       DEX            
       BPL    LF3C4   
       JMP    LF7BA   
LF3CC: BIT    REFP1   
       BMI    LF3D8   
       LDA    $E4     
       ORA    #$82    
       STA    $E4     
       BNE    LF3DE   
LF3D8: LDA    $E4     
       AND    #$0F    
       STA    $E4     
LF3DE: LDA    $E4     
       EOR    #$01    
       BEQ    LF3AE   
       LDA    $E4     
       AND    #$04    
       BEQ    LF3ED   
       JMP    LF52D   
LF3ED: LDA    RSYNC   
       BPL    LF441   
LF3F1: LDA    #$F0    
       STA    $E5     
LF3F5: LDA    $F4     
       BNE    LF407   
       STA    $E8     
       LDA    #$03    
       STA    $EE     
       LDA    #$8F    
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
LF407: LDX    #$00    
       JSR    LFFA1   
       JSR    LFF7A   
       JSR    LFFAE   
       LDA    $F4     
       BNE    LF41B   
       STA    AUDV0   
       JMP    LF4BB   
LF41B: LDA    #$00    
       STA    $E3     
       LDA    $BE     
       CMP    #$50    
       BCS    LF429   
       INC    $BE     
       BNE    LF42B   
LF429: DEC    $BE     
LF42B: LDA    $80     
       AND    #$01    
       BEQ    LF438   
       LDA    $BD     
       SBC    #$03    
       JMP    LF43C   
LF438: LDA    $BD     
       ADC    #$05    
LF43C: STA    $BD     
       JMP    LF4EB   
LF441: LDA    COLUP1  
       BMI    LF448   
       JMP    LF4B0   
LF448: LDX    #$04    
LF44A: LDA    $AF,X   
       CMP    #$08    
       BCS    LF45A   
       DEX            
       BPL    LF44A   
       BMI    LF3F1   
LF455: BRK            
       .byte $07 ;.SLO
       ASL    $1B15   
LF45A: LDX    #$04    
LF45C: LDA    $AF,X   
       CMP    #$0F    
       BNE    LF493   
       SEC            
       LDA    $A0,X   
       ADC    $9B,X   
       STA    $B4     
       LDY    #$04    
LF46B: CLC            
       LDA    $BD     
       ADC    LF455,Y 
       CMP    $A0,X   
       BCC    LF490   
       CMP    $B4     
       BCS    LF490   
       NOP            
       LDA    #$00    
       JSR    LF5BB   
       LDY    $DC     
       INY            
       CPY    #$65    
       BCC    LF488   
       LDY    #$65    
LF488: STY    $DC     
       LDA    #$01    
       STA    $80     
       BNE    LF4E9   
LF490: DEY            
       BPL    LF46B   
LF493: DEX            
       BPL    LF45C   
LF496: LDA    #$FF    
       STA    $E5     
       LDA    $80     
       EOR    #$FF    
       BEQ    LF4BB   
       LDA    $FB     
       AND    #$01    
       BEQ    LF4AB   
       DEC    $BE     
       JMP    LF4EB   
LF4AB: INC    $BE     
       JMP    LF4EB   
LF4B0: LDA    $E5     
       BPL    LF4BB   
       CMP    #$FF    
       BEQ    LF496   
       JMP    LF3F5   
LF4BB: LDX    #$00    
LF4BD: LDA    $E3     
       CMP    LF882,X 
       BCC    LF4C7   
       INX            
       BNE    LF4BD   
LF4C7: LDA    LF51F,X 
       STA    AUDV0   
       LDA    #$03    
       STA    AUDC0   
       LDA    $F6     
       BNE    LF4D8   
       STA    $EA     
       STA    $F0     
LF4D8: LDX    #$02    
       JSR    LFFA1   
       LDX    #$00    
       JSR    LFF7A   
       LDX    #$02    
       JSR    LFFAE   
       LDA    #$00    
LF4E9: STA    $E5     
LF4EB: LDA    $E4     
       AND    #$08    
       BEQ    LF4F4   
       JMP    LF52D   
LF4F4: LDA    $E5     
       EOR    #$01    
       BNE    LF50C   
       LDA    $F5     
       BNE    LF50C   
       STA    $E9     
       LDA    #$06    
       STA    $EF     
       LDA    #$FF    
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC1   
LF50C: LDX    #$01    
       JSR    LFFA1   
       JSR    LFF7A   
       JSR    LFFAE   
       LDA    $F5     
       BNE    LF52D   
       STA    AUDV1   
       BEQ    LF52D   
LF51F: .byte $04 ;.NOP
       ASL    COLUPF  
       ASL            
       .byte $0F ;.SLO
       .byte $0F ;.SLO
       ASL    $A90D   
       ASL    $85     
       .byte $E7 ;.ISB
       BNE    LF545   
LF52D: LDX    #$04    
LF52F: LDA    $A0,X   
       CMP    #$D2    
       BCS    LF538   
       JMP    LF5B5   
LF538: CMP    #$D7    
       BCC    LF53F   
       JMP    LF5B5   
LF53F: LDA    $8C,X   
       CMP    $E7     
       BEQ    LF527   
LF545: LDA    $FB     
       CMP    #$05    
       BCS    LF551   
       LDA    $E2     
       ORA    #$01    
       STA    $E2     
LF551: LDA    $E2     
       AND    #$01    
       BEQ    LF57B   
       LDY    #$04    
LF559: LDA    $E2     
       ORA    #$01    
       STA    $E2     
       LDA.wy $00AF,Y 
       BNE    LF577   
       DEY            
       BPL    LF559   
       LDA    $FB     
       CMP    #$D0    
       BCS    LF573   
       LDA    #$80    
       STA    $E2     
       BMI    LF577   
LF573: LDA    #$00    
       STA    $E2     
LF577: LDA    #$00    
       BEQ    LF589   
LF57B: JSR    LF843   
       LDA    $FB     
       AND    #$07    
       BIT    $E2     
       BMI    LF589   
       CLC            
       ADC    #$08    
LF589: JSR    LF5BB   
LF58C: JSR    LF843   
       LDA    $FB     
       AND    #$07    
       TAY            
       LDA    LF857,Y 
       STA    $A5,X   
       STA    $B4     
       ADC    #$10    
       CMP    $BE     
       BCC    LF5B5   
       LDA    $BE     
       ADC    #$10    
       CMP    $B4     
       BCC    LF5B5   
       LDA    $E3     
       CMP    #$51    
       BCS    LF5B5   
       LDA    $AF,X   
       CMP    #$08    
       BCC    LF58C   
LF5B5: DEX            
       BMI    LF5CE   
       JMP    LF52F   
LF5BB: STA    $AF,X   
       TAY            
       LDA    LFAA6,Y 
       STA    $96,X   
       LDA    LFAE4,Y 
       STA    $9B,X   
       LDA    LFAD4,Y 
       STA    $AA,X   
       RTS            

LF5CE: LDA    $E4     
       AND    #$09    
       BNE    LF5DC   
       LDA    $FB     
       AND    #$03    
       BNE    LF5E6   
       BEQ    LF5FB   
LF5DC: BIT    REFP1   
       BMI    LF5FB   
       LDA    $E4     
       ORA    #$80    
       STA    $E4     
LF5E6: LDA    $80     
       AND    #$07    
       BNE    LF5EE   
       DEC    $BD     
LF5EE: LDY    $E3     
       INY            
       CPY    #$FF    
       BNE    LF5F7   
       LDY    #$FE    
LF5F7: STY    $E3     
       BNE    LF60C   
LF5FB: LDY    $E3     
       DEY            
       CPY    #$FF    
       BNE    LF604   
       LDY    #$00    
LF604: STY    $E3     
       LDA    $E4     
       AND    #$0F    
       STA    $E4     
LF60C: LDA    $80     
       LDY    $E3     
       CPY    #$C8    
       BCS    LF61E   
       LSR            
       CPY    #$64    
       BCS    LF61E   
       LSR            
       CPY    #$32    
       BCS    LF61E   
LF61E: AND    #$01    
       TAY            
       LDA    LF85F,Y 
       STA    $BF     
       LDY    $BD     
       CPY    #$82    
       BCS    LF62E   
       LDY    #$82    
LF62E: STY    $BD     
       CPY    #$9B    
       BCC    LF636   
       LDY    #$9B    
LF636: STY    $BD     
       LDX    #$00    
LF63A: LDA    $E3     
       CMP    LF644,X 
       BCC    LF64E   
       INX            
       BNE    LF63A   
LF644: .byte $32 ;.JAM
       .byte $64 ;.NOP
       STX    $C8,Y   
       .byte $FF ;.ISB
LF649: .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    COLUP0  
LF64E: STX    $B4     
       LDA    $E4     
       AND    #$09    
       BEQ    LF681   
       LDA    $F4     
       BNE    LF681   
       DEX            
       DEX            
       DEX            
       BMI    LF66B   
LF65F: STX    $BA     
       JSR    LF8B7   
       LDX    $BA     
       DEX            
       BPL    LF65F   
       BMI    LF681   
LF66B: LDA    $80     
       AND    #$07    
       CPX    #$FD    
       BEQ    LF67B   
       AND    #$03    
       CPX    #$FE    
       BEQ    LF67B   
       AND    #$01    
LF67B: TAX            
       BNE    LF681   
       JSR    LF8B7   
LF681: LDX    $B4     
       LDY    #$04    
LF685: LDA.wy $00AF,Y 
       CMP    #$08    
       BCS    LF695   
       DEY            
       BPL    LF685   
       JSR    LF876   
       JMP    LF698   
LF695: JSR    LF861   
LF698: NOP            
       CLC            
       LDA    $C2     
       ADC    LF649,X 
       STA    $C2     
       NOP            
       LDA    $80     
       AND    #$01    
       TAY            
       LDA    LFAA4,Y 
       STA    $BA     
       LDX    #$04    
LF6AE: LDY    $AF,X   
       LDA    ($BA),Y 
       STA    $91,X   
       DEX            
       BPL    LF6AE   
       JMP    LF6FF   
LF6BA: LDA    #$04    
       STA    $E4     
       STA    $E3     
       LDA    $F9     
       BNE    LF6D2   
       STA    $ED     
       LDA    #$0E    
       STA    $F3     
       LDA    #$FF    
       STA    AUDV0   
       LDA    #$07    
       STA    AUDC0   
LF6D2: LDX    #$05    
       JSR    LFFA1   
       LDX    #$00    
       JSR    LFF7A   
       LDX    #$05    
       JSR    LFFAE   
       LDA    $F9     
       BNE    LF6EB   
       STA    AUDV0   
       STA    $E4     
       BEQ    LF74D   
LF6EB: LDA    $F3     
       CMP    #$21    
       BCC    LF74D   
       LDA    #$00    
       STA    $BF     
       DEC    $C2     
       DEC    $C2     
       LDA    #$00    
       STA    AUDV0   
       BEQ    LF74D   
LF6FF: LDA    $E4     
       AND    #$05    
       BEQ    LF74D   
       LDA    $80     
       AND    #$7F    
       BNE    LF716   
       LDY    $DC     
       DEY            
       CPY    #$3B    
       BCS    LF714   
       LDY    #$3B    
LF714: STY    $DC     
LF716: LDA    $E4     
       AND    #$08    
       BNE    LF74D   
       LDA    $DC     
       CMP    #$40    
       BCS    LF74D   
       CMP    #$3C    
       BCC    LF6BA   
       LDA    $F8     
       BNE    LF738   
       STA    $EC     
       LDA    #$0B    
       STA    $F2     
       LDA    #$FF    
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC1   
LF738: LDX    #$04    
       JSR    LFFA1   
       LDX    #$01    
       JSR    LFF7A   
       LDX    #$04    
       JSR    LFFAE   
       LDA    $F8     
       BNE    LF74D   
       STA    AUDV1   
LF74D: LDA    $E4     
       AND    #$09    
       BNE    LF785   
       LDX    #$04    
LF755: LDA    $BD     
       CMP    $A0,X   
       BCC    LF780   
       SBC    #$3C    
       CMP    $A0,X   
       BCS    LF780   
       LDA    $BE     
       ADC    #$10    
       CMP    $A5,X   
       BCC    LF779   
       LDA    $A5,X   
       ADC    #$10    
       CMP    $BE     
       BCC    LF779   
       LDA    $A5,X   
       CMP    #$50    
       BCC    LF77C   
       DEC    $BE     
LF779: JMP    LF7BA   
LF77C: INC    $BE     
       BNE    LF779   
LF780: DEX            
       BPL    LF755   
       BMI    LF779   
LF785: LDA    SWCHA   
       ASL            
       BCC    LF79A   
       ASL            
       BCC    LF7AA   
       ASL            
       BCC    LF794   
LF791: JMP    LF7BA   
LF794: LDA    #$00    
       STA    $E3     
       BEQ    LF791   
LF79A: LDY    $BE     
       INY            
       CPY    #$96    
       BCS    LF7A6   
LF7A1: STY    $BE     
       JMP    LF791   
LF7A6: LDY    #$96    
       BNE    LF7A1   
LF7AA: LDY    $BE     
       DEY            
       CPY    #$01    
       BCC    LF7B6   
LF7B1: STY    $BE     
       JMP    LF791   
LF7B6: LDY    #$01    
       BNE    LF7B1   
LF7BA: LDA    $C2     
       STA    $C1     
       LDA    $E4     
       AND    #$09    
       BEQ    LF816   
       LDA    $F7     
       BNE    LF7F0   
       JSR    LF913   
       JSR    LFE97   
       LDA    #$A4    
       STA    $D6     
       JSR    LF7E4   
       STA    $D8     
       LDA    $FA     
       CMP    #$63    
       BCC    LF7E0   
       JSR    LF7E4   
LF7E0: STA    $DA     
       BNE    LF821   
LF7E4: LDA    $80     
       LSR            
       LSR            
       LSR            
       AND    #$01    
       TAY            
       LDA    LF9FB,Y 
       RTS            

LF7F0: LDX    #$03    
       JSR    LFFA1   
       LDX    #$01    
       JSR    LFF7A   
       LDX    #$03    
       JSR    LFFAE   
       LDA    $F7     
       BNE    LF816   
       STA    $E5     
       STA    AUDV1   
       STA    $E3     
       LDA    #$65    
       STA    $DC     
       JSR    LF9B6   
       LDA    #$01    
       STA    $E4     
       BNE    LF821   
LF816: JSR    LF7E4   
       LDX    #$0A    
LF81B: STA    $D0,X   
       DEX            
       DEX            
       BPL    LF81B   
LF821: LDA    INTIM   
       BNE    LF821   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $80     
       JSR    LF843   
       LDA    #$36    
       STA    TIM64T  
       JMP    LF00E   
LF843: LDA    $FB     
       LSR            
       EOR    $FC     
       LSR            
       LSR            
       EOR    $FC     
       LSR            
       EOR    $FC     
       EOR    #$01    
       LSR            
       ROR    $FB     
       ROR    $FC     
       RTS            

LF857: .byte $30,$20,$50,$48,$68,$30,$60,$28
LF85F: .byte $00,$61
LF861: LDY    #$04    
LF863: CLC            
       LDA.wy $00A0,Y 
       ADC    LF871,X 
       STA.wy $00A0,Y 
       DEY            
       BPL    LF863   
       RTS            

LF871: .byte $01,$02,$03,$04,$05
LF876: LDY    #$00    
LF878: LDA    $E3     
       CMP    LF882,Y 
       BCC    LF892   
       INY            
       BNE    LF878   
LF882: .byte $14 ;.NOP
       PLP            
       BVC    LF8F4   
       STY    $D2B4   
       .byte $FF ;.ISB
LF88A: .byte $03 ;.SLO
       .byte $02 ;.JAM
       ORA    ($00,X) 
       ORA    ($02,X) 
       .byte $04 ;.NOP
       ORA    $8A     
       STA    $86     
       LDX    #$04    
       CPY    #$04    
       BCC    LF8A8   
LF89B: CLC            
       LDA    $A0,X   
       ADC    LF88A,Y 
       STA    $A0,X   
       DEX            
       BPL    LF89B   
       BMI    LF8B3   
LF8A8: SEC            
       LDA    $A0,X   
       SBC    LF88A,Y 
       STA    $A0,X   
       DEX            
       BPL    LF8A8   
LF8B3: LDA    $86     
       TAX            
       RTS            

LF8B7: INC    $C4     
       LDA    #$01    
       STA    $BA     
       LDA    $C4     
       CMP    #$5A    
       BCC    LF8C7   
       LDA    #$01    
       STA    $C4     
LF8C7: LDX    #$02    
LF8C9: LDA    $C4,X   
       CMP    #$5A    
       BCC    LF8D3   
       LDA    #$00    
       STA    $C4,X   
LF8D3: DEX            
       DEX            
       LDA    $BA     
       BEQ    LF8DF   
       LDA    $C4,X   
       CMP    #$0A    
       BCC    LF8E7   
LF8DF: LDA    #$00    
       STA    $BA     
       INX            
       INX            
       BNE    LF8EF   
LF8E7: INX            
       INX            
       LDA    #$01    
       STA    $BA     
       INC    $C4,X   
LF8EF: INX            
       INX            
       CPX    #$0C    
       BNE    LF8C9   
       RTS            

LF8F6: LDA    $DD     
       SBC    #$10    
       CMP    $A0,X   
       BCS    LF92F   
       ADC    #$20    
       CMP    $A0,X   
       BCC    LF92F   
       RTS            

LF905: LDA    #$06    
       STA    $E7     
       RTS            

LF90A: LDY    $8C,X   
       STY    $E7     
       LDA    $A0,X   
       STA    $DD     
       RTS            

LF913: CLC            
       LDA    $BD     
       ADC    #$1B    
LF918: STA    $B4     
       LDX    #$04    
LF91C: LDA    $AF,X   
       CMP    #$08    
       BCS    LF905   
       LDA    $9B,X   
       BNE    LF929   
       JMP    LF9B0   
LF929: LDA    $8C,X   
       CMP    $E7     
       BEQ    LF8F6   
LF92F: LDA    $E3     
       CMP    #$8C    
       BEQ    LF9AF   
       BCC    LF987   
       LDA    $A0,X   
       CMP    $B4     
       BCS    LF9B0   
       ADC    #$06    
       CMP    $B4     
       BCC    LF9B0   
       JSR    LF9C7   
       JSR    LF90A   
       LDA    $DF     
       BNE    LF9AF   
       LDA    $DE     
       BNE    LF9AF   
       INC    $E6     
       CLC            
       LDA    $FA     
       ADC    #$09    
       STA    $FA     
       LDA    #$00    
       STA    $F7     
       STA    $EB     
       JSR    LFB97   
       LDA    $80     
       AND    #$03    
       TAY            
       LDA    LFFC3,Y 
       STA    AUDV1   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC1   
       LDX    #$03    
       JSR    LFFA1   
       LDX    #$01    
       JSR    LFF7A   
       LDX    #$03    
       JSR    LFFAE   
       LDA    #$08    
       STA    $E4     
       RTS            

LF987: LDA    $A0,X   
       ADC    #$1B    
       CMP    $BD     
       BCC    LF9B0   
       SBC    #$06    
       CMP    $BD     
       BCS    LF9B0   
       JSR    LF9D9   
       JSR    LF90A   
       LDY    $E6     
       LDA    LF9E7,Y 
       CMP    $DF     
       BCC    LF9B6   
       BEQ    LF9A8   
       BCS    LF9AF   
LF9A8: LDA    LF9F1,Y 
       CMP    $DE     
       BCC    LF9B6   
LF9AF: RTS            

LF9B0: DEX            
       BMI    LF9AF   
       JMP    LF91C   
LF9B6: LDX    $E6     
       LDA    LF9E7,X 
       STA    $DF     
       LDA    LF9F1,X 
       STA    $DE     
       RTS            

LF9C3: .byte $A9,$0A,$D0,$02
LF9C7: LDA    #$01    
       STA    $BA     
       LDA    $DE     
       SEC            
       SBC    $BA     
       STA    $DE     
       LDA    $DF     
       SBC    #$00    
       STA    $DF     
       RTS            

LF9D9: LDA    $DE     
       CLC            
       ADC    #$01    
       STA    $DE     
       LDA    $DF     
       ADC    #$00    
       STA    $DF     
       RTS            

LF9E7: .byte $00,$00,$00,$00,$00,$01,$01,$01,$01,$01
LF9F1: .byte $32,$64,$96,$C8,$FA,$2C,$5E,$90,$C2,$F4
LF9FB: .byte $B6,$BF,$10,$2C,$86,$00,$18,$00,$18,$00,$18,$3C,$3C,$3C,$3C,$3C
       .byte $7E,$7E,$7E,$7E,$7E,$7E,$66,$7E,$66,$7E,$66,$7E,$3C,$3C,$BD,$FF
       .byte $7E,$3C,$3C,$18,$00,$18,$00,$18,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$7C,$7C
       .byte $FE,$EE,$EF,$56,$7C,$38,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1C,$3B
       .byte $7E,$FF,$F7,$7E,$3C,$18,$00,$00,$18,$00,$18,$00,$3C,$3C,$3C,$3C
       .byte $3C,$7E,$7E,$7E,$7E,$7E,$7E,$66,$7E,$66,$7E,$66,$7E,$3C,$3C,$BD
       .byte $FF,$7E,$3C,$3C,$00,$18,$00,$18,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$23,$42,$23,$42,$23,$42,$23,$F4,$61,$61,$61,$61,$61,$61,$61
       .byte $61,$23,$42,$23,$42,$23,$42,$23,$F4
LFAA4: .byte $84,$94
LFAA6: .byte $84,$9A,$29,$0B,$D7,$00,$6A,$49,$00,$9A,$00,$0C,$00,$D9,$00,$2B
LFAB6: .byte $00,$00,$00,$00,$00,$41,$01,$81,$21,$51,$00,$00,$00,$00,$00,$00
       .byte $2C,$54,$7C,$A4,$50,$50,$50,$60,$60,$05,$05,$05,$05,$05
LFAD4: .byte $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$02,$03,$05,$05,$00,$00
LFAE4: .byte $00,$22,$22,$00,$22,$22,$22,$22,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$0A
       .byte $00,$80,$80,$80,$80,$FC,$F8,$F0,$E0,$C0,$80
LFAFF: .byte $37,$3B,$00,$77,$3B,$77,$3D,$3F,$3C,$37,$00,$78,$7A,$00,$2D,$2E
       .byte $2F,$30,$31,$32,$33,$34
LFB15: .byte $35,$36,$37,$38,$39,$3A,$3B,$3C,$3D,$3E,$3F,$FF,$FF,$00,$77,$75
       .byte $93,$6E,$6F,$71,$93,$9A,$7A,$77,$95,$71,$73,$75,$97,$77,$75,$93
       .byte $6E,$6F,$6E,$8C,$91,$6E,$6E,$8F,$73,$6F,$6C,$8E,$77,$00,$77,$71
       .byte $6E,$6F,$71,$6E,$71,$6F,$71,$75,$73,$77,$77,$71,$6E,$6F,$71,$6E
       .byte $71,$6F,$71,$77,$77,$9A,$7A,$75,$73,$AF,$7A,$75,$73,$91,$77,$6E
       .byte $73,$75,$77,$73,$75,$37,$77,$78,$D7,$00,$97,$78,$77,$77,$75,$73
       .byte $77,$75,$73,$6E,$77,$71,$73,$75,$7A,$AF,$73,$75,$7A,$7A,$39,$77
       .byte $71,$6F,$71,$6E,$71,$6F,$6E,$91,$77,$71,$73,$75,$BA,$00
LFB93: .byte $24,$44,$70,$44
LFB97: LDA    $FB     
       AND    #$03    
       TAY            
       LDA    LFB93,Y 
       STA    $F1     
       RTS            

LFBA2: .byte $A2,$00,$A9,$01,$81,$AC,$AD,$E4,$2E,$A0,$07,$91,$AC,$20,$D2,$2D
       .byte $68,$AA,$68,$A8,$68,$60,$98,$48,$8A,$48,$20,$C5,$2D,$A9,$02,$A0
       .byte $00,$91,$AC,$20,$D2,$2D,$A0,$0C,$B1,$AC,$18,$69,$2D,$85,$AA,$C8
       .byte $B1,$AC,$69,$00,$85,$AB,$A9,$00,$A8,$91,$AA,$68,$AA,$68,$A8,$60
       .byte $24,$A6,$30,$03,$4C,$D5,$2C,$48,$98,$48,$8A,$48,$A5,$A3,$30,$03
       .byte $4C,$96,$2C,$A5,$0C,$38,$E9,$04,$85,$89,$A5,$0D,$E9,$00,$80,$80
       .byte $80,$80,$80,$80,$C0,$C0,$C0,$C0,$C0,$E0,$E0,$E0,$E0,$E0,$E0,$E0
       .byte $E0,$C0,$C0,$C0,$C0,$C0,$E0,$E0,$E0,$E0,$E0,$E0,$C0,$C0,$C0,$C0
       .byte $80,$80,$80,$80,$C0,$C0,$C0,$C0,$C0,$80,$80,$80,$80,$80,$80,$00
       .byte $00,$00,$00,$80,$80,$80,$C0,$C0,$C0,$E0,$E0,$E0,$C0,$C0,$80,$80
       .byte $80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00,$00,$C0,$C0,$C0,$80
       .byte $80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$80,$80,$80,$80,$80,$80,$80,$C0,$C0,$C0,$C0,$C0,$E0,$E0
       .byte $E0,$E0,$E0,$E0,$E0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$80,$80,$80,$80
       .byte $80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80
       .byte $80,$C0,$C0,$C0,$E0,$E0,$E0,$C0,$C0,$C0,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$46
       .byte $06,$3E,$66,$66,$66,$3C,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$00
       .byte $3C,$18,$18,$18,$18,$18,$38,$18,$00,$7E,$60,$60,$3C,$06,$06,$46
       .byte $3C,$00,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$00,$0C,$0C,$0C,$7E,$4C
       .byte $2C,$1C,$0C,$00,$7C,$46,$06,$06,$7C,$60,$60,$7E,$00,$3C,$66,$66
       .byte $66,$7C,$60,$62,$3C,$00,$18,$18,$18,$18,$0C,$06,$42,$7E,$00,$3C
       .byte $66,$66,$3C,$3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFD6C: .byte $00,$01,$00,$0A,$00,$64,$00,$E8,$00,$10
LFD76: .byte $00,$00,$00,$00,$00,$00,$00,$03,$00,$27
LFD80: .byte $FF,$03,$83,$83,$F3,$83,$F3,$03,$FF
LFD89: .byte $FF,$00,$00,$00,$00,$00,$00,$00,$FF
LFD92: .byte $FF,$00,$0F,$08,$8F,$C1,$6F,$00,$FF
LFD9B: .byte $FF,$00,$26,$23,$21,$20,$20,$00,$FF,$E7,$E7,$C3,$C3,$C3,$81,$E7
       .byte $E7,$00
LFDAD: .byte $FF,$C0,$CF,$C8,$CF,$C8,$CF,$C0,$FF,$40,$40,$40,$7C,$78,$70,$60
       .byte $40,$00,$40,$40,$40,$7E,$78,$78,$70,$40,$00,$A4,$AA,$AA,$AA,$C4
       .byte $80,$80,$80,$A9,$AA,$AB,$AA,$D1,$00,$00,$00,$90,$18,$94,$52,$91
       .byte $30,$00,$00,$59,$45,$49,$50,$0D,$C0,$00,$00,$25,$55,$55,$55,$26
       .byte $00,$00,$00,$2E,$F0,$03,$99,$88,$C0,$20,$D6,$03,$A0,$15,$B1,$B0
LFDFD: .byte $91,$AC,$88
LFE00: LDA    #$04    
       STA    $BA     
LFE04: LDX    #$04    
       LDY    #$03    
LFE08: LDA.wy $00A0,Y 
       ADC.wy $009B,Y 
       STA    $B4     
       LDA    $A0,X   
       ADC    $9B,X   
       CMP    $B4     
       BCS    LFE88   
       LDA    $A0,X   
       STA    $B4     
       LDA.wy $00A0,Y 
       STA    $A0,X   
       LDA    $B4     
       STA.wy $00A0,Y 
       LDA    $91,X   
       STA    $B4     
       LDA.wy $0091,Y 
       STA    $91,X   
       LDA    $B4     
       STA.wy $0091,Y 
       LDA    $A5,X   
       STA    $B4     
       LDA.wy $00A5,Y 
       STA    $A5,X   
       LDA    $B4     
       STA.wy $00A5,Y 
       LDA    $9B,X   
       STA    $B4     
       LDA.wy $009B,Y 
       STA    $9B,X   
       LDA    $B4     
       STA.wy $009B,Y 
       LDA    $96,X   
       STA    $B4     
       LDA.wy $0096,Y 
       STA    $96,X   
       LDA    $B4     
       STA.wy $0096,Y 
       LDA    $8C,X   
       STA    $B4     
       LDA.wy $008C,Y 
       STA    $8C,X   
       LDA    $B4     
       STA.wy $008C,Y 
       LDA    $AA,X   
       STA    $B4     
       LDA.wy $00AA,Y 
       STA    $AA,X   
       LDA    $B4     
       STA.wy $00AA,Y 
       LDA    $AF,X   
       STA    $B4     
       LDA.wy $00AF,Y 
       STA    $AF,X   
       LDA    $B4     
       STA.wy $00AF,Y 
LFE88: DEX            
       DEY            
       BMI    LFE8F   
       JMP    LFE08   
LFE8F: DEC    $BA     
       BMI    LFE96   
       JMP    LFE04   
LFE96: RTS            

LFE97: LDA    $DE     
       STA    $89     
       LDA    $DF     
       STA    $8A     
       LDA    #$80    
       STA    $88     
       LDX    #$09    
LFEA5: LDA    #$00    
       STA    $BA     
LFEA9: SEC            
       LDA    $89     
       SBC    LFD6C,X 
       STA    $B4     
       LDA    $8A     
       SBC    LFD76,X 
       BCC    LFEC2   
       STA    $8A     
       LDA    $B4     
       STA    $89     
       INC    $BA     
       BNE    LFEA9   
LFEC2: LDY    $BA     
       CPX    #$01    
       BNE    LFED7   
LFEC8: LDA    LFEF6,Y 
       STA    $D0,X   
       DEX            
       LDA    LFEEC,Y 
       STA    $D0,X   
LFED3: DEX            
       BPL    LFEA5   
       RTS            

LFED7: CPY    #$00    
       BEQ    LFEDD   
       STY    $88     
LFEDD: BIT    $88     
       BPL    LFEC8   
       LDA    #$FD    
       STA    $D0,X   
       DEX            
       LDA    #$63    
       STA    $D0,X   
       BNE    LFED3   
LFEEC: ORA    #$12    
       .byte $1B ;.SLO
       BIT    $2D     
       ROL    $3F,X   
       PHA            
       EOR    ($5A),Y 
LFEF6: SBC    LFDFD,X 
       SBC    LFDFD,X 
       SBC    LFDFD,X 
       SBC    $6918,X 
       ROL    $29A8   
       .byte $0F ;.SLO
       STA    $B4     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $B4     
       CMP    #$0F    
       BCC    LFF18   
       SBC    #$0F    
       INY            
LFF18: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LFF1F: STA    HMP0,X  
       STA    WSYNC   
LFF23: DEY            
       BPL    LFF23   
       STA    RESP0,X 
       RTS            

LFF29: NOP            
       LDX    #$04    
       LDY    #$04    
LFF2E: STY    $8C,X   
       DEY            
       DEX            
       BPL    LFF2E   
       LDA    #$FA    
       STA    $B7     
       STA    $BB     
       STA    $C0     
       LDA    #$00    
       STA    $BF     
       LDX    #$1D    
LFF42: LDA    LFAB6,X 
       STA    $91,X   
       DEX            
       BPL    LFF42   
       INX            
       STX    $E0     
       LDX    #$9B    
       STX    $BD     
       LDA    #$50    
       STA    $BE     
       LDA    #$07    
       STA    $C3     
       LDA    #$FC    
       STA    $E1     
       LDX    #$17    
       LDA    #$FD    
LFF61: STA    $C4,X   
       DEX            
       DEX            
       BPL    LFF61   
       LDX    #$0A    
       LDA    #$09    
LFF6B: STA    $C4,X   
       DEX            
       DEX            
       BPL    LFF6B   
LFF71: LDA    #$65    
       STA    $DC     
       LDA    #$00    
       STA    $E3     
       RTS            

LFF7A: LDA    $81     
       BEQ    LFF83   
       DEC    $81     
       BMI    LFF83   
       RTS            

LFF83: LDY    $82     
       LDA    LFAFF,Y 
       STA    $83     
       BNE    LFF91   
       DEC    $82     
       JMP    LFF9E   
LFF91: STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFBB,Y 
       STA    $81     
LFF9E: INC    $82     
       RTS            

LFFA1: LDA    $E8,X   
       STA    $81     
       LDA    $EE,X   
       STA    $82     
       LDA    $F4,X   
       STA    $83     
       RTS            

LFFAE: LDA    $81     
       STA    $E8,X   
       LDA    $82     
       STA    $EE,X   
       LDA    $83     
       STA    $F4,X   
       RTS            

LFFBB: .byte $00,$01,$03,$07,$0F,$1F,$3F,$7F
LFFC3: .byte $4F,$CF,$1F,$4F,$A0,$A0,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$A0
       .byte $A0,$C6,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4
       .byte $A0,$AD,$A0,$D3,$A0,$A0,$A0,$AD,$A0,$D3,$A0,$A0,$A0,$AD,$A0,$D3
       .byte $AD,$A0,$A0,$AD,$A0,$D3,$AD,$A0,$A0,$00,$F0,$E0,$88
