; Disassembly of roms/Time Warp.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Time Warp.bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
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
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF034   =   $F034
LF035   =   $F035
LF104   =   $F104
LF6A5   =   $F6A5
LFA01   =   $FA01
LFB56   =   $FB56
LFEAC   =   $FEAC

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
       JSR    LFF10   
LF00E: NOP            
       LDA    $8E     
       JSR    LFE8A   
       LDX    #$00    
       JSR    LFEA9   
       LDA    $80     
       AND    #$01    
       TAY            
       LDA.wy $008B,Y 
       STA    $D1     
       LDA.wy $008F,Y 
       JSR    LFE8A   
       INX            
       JSR    LFEA9   
       LDA    $9B     
       JSR    LFE8A   
       INX            
       JSR    LFEA9   
       LDA    $91     
       JSR    LFE8A   
       INX            
       JSR    LFEA9   
       LDA    $92     
       JSR    LFE8A   
       INX            
       JSR    LFEA9   
       LDA    #$25    
       STA    NUSIZ0  
       LDA    #$35    
       STA    NUSIZ1  
LF050: LDA    #$31    
       STA    CTRLPF  
       LDA    #$07    
       STA    $98     
       LDA    #$0A    
       STA    $97     
       STA    $99     
       LDA    $F1     
       STA    COLUP1  
       LDA    $E0     
       STA    COLUPF  
       LDA    $80     
       AND    #$0F    
       BNE    LF085   
       LDA    $CF     
       AND    #$07    
       TAY            
       LDA    LF12A,Y 
       STA    COLUPF  
       STA    $E0     
       JSR    LFE31   
       AND    #$07    
       TAY            
       LDA    LF12A,Y 
       STA    COLUP1  
       STA    $F1     
LF085: LDA    INTIM   
       BNE    LF085   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    $84     
       STA    $83     
       STA    $85     
       LDX    #$04    
LF098: STA    WSYNC   
       LDY    $F4     
       LDA    LFD00,Y 
       STA    PF0     
       LDA    LFD15,Y 
       STA    PF1     
       LDA    LFD2A,Y 
       STA    PF2     
       DEX            
       BPL    LF098   
       LDA    $D5     
       AND    #$07    
       TAY            
       LDA    $D4     
       AND    #$10    
       BEQ    LF0BB   
       LDY    #$03    
LF0BB: LDA    LF0FC,Y 
       STA    $81     
       LDA    LF104,Y 
       STA    $82     
       STA    WSYNC   
       LDA    LF3DA,Y 
       STA    CTRLPF  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       CPY    #$01    
       BNE    LF0F8   
       LDA    $CE     
       STA    COLUPF  
       LDY    #$FF    
LF0DE: LDX    #$05    
       LDA    #$A1    
LF0E2: STA    WSYNC   
       STA    COLUBK  
       DEX            
LF0E7: BNE    LF0E2   
       LDA    $CE     
       STA    WSYNC   
       STA    COLUBK  
       STA    CXCLR   
       STA    HMCLR   
       STY    PF2     
       JMP.ind ($0081)
LF0F8: LDY    #$00    
       BEQ    LF0DE   
LF0FC: .byte $80 ;.NOP
       .byte $80 ;.NOP
       .byte $80 ;.NOP
       ROL    $2E80   
       .byte $80 ;.NOP
       ROL    LF1F1   
       SBC    ($F2),Y 
       SBC    ($F2),Y 
       SBC    ($F2),Y 
LF10C: BRK            
       .byte $F2 ;.JAM
       .byte $F2 ;.JAM
       .byte $C2 ;.NOP
       .byte $C2 ;.NOP
       .byte $42 ;.JAM
       .byte $42 ;.JAM
       .byte $12 ;.JAM
       .byte $12 ;.JAM
       BNE    LF0E7   
LF117: INX            
       INX            
       CPX    #$B4    
       BCS    LF127   
       STA    LF000,Y 
LF120: NOP            
       NOP            
       NOP            
       LDY    #$00    
       BEQ    LF176   
LF127: JMP    LF30C   
LF12A: .byte $2A,$7A,$99,$4A,$3A,$8A,$A6,$69
LF132: LDA    #$00    
       BEQ    LF14A   
LF136: CPX    $D1     
       BCC    LF144   
       LDY    $97     
       BMI    LF144   
       LDA    ($86),Y 
       STA    $84     
       DEC    $97     
LF144: CPX    $9A     
       BNE    LF132   
       LDA    $9C     
LF14A: STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       LDA    $84     
       STA    GRP1    
       JSR    LFEA7   
       NOP            
       NOP            
       LDY    $E1     
       LDA    ($D6),Y 
       STA    HMBL    
       INC    $E1     
       CPX    $8A     
       BCC    LF117   
       INX            
       INX            
       CPX    #$B4    
       BCS    LF127   
       LDY    $98     
       BMI    LF120   
       DEC    $98     
       LDA    LFC10,Y 
       STA    COLUP0  
LF176: LDA    ($88),Y 
       STA    GRP0    
       DEC    $82     
       BNE    LF18B   
       INC    $83     
       LDA    #$07    
       STA    $82     
       LDY    $83     
       LDA.wy $009D,Y 
       STA    $81     
LF18B: CPX    $D1     
       BCC    LF199   
       LDY    $97     
       BMI    LF199   
       LDA    ($86),Y 
       STA    $84     
       DEC    $97     
LF199: CPX    $9A     
       BNE    LF1E6   
       LDA    $9C     
LF19F: STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       LDA    $81     
       STA    ENABL   
       LDA    $84     
       STA    GRP1    
       LDY    $E1     
       LDA    ($D6),Y 
       STA    HMBL    
       INC    $E1     
       LSR    $81     
       CPX    $8D     
       BCC    LF1EA   
       LDY    $99     
       BMI    LF1ED   
       LDA    LF10C,Y 
       STA    $85     
       DEC    $99     
LF1C6: CPX    $8A     
       BCC    LF1F5   
       LDY    $98     
       BMI    LF1F8   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    LFC10,Y 
       STA    COLUP0  
       DEC    $98     
LF1D9: LDA    $85     
       STA    ENAM1   
       STA    HMM1    
       INX            
       INX            
       NOP            
       NOP            
       JMP    LF136   
LF1E6: LDA    #$00    
       BEQ    LF19F   
LF1EA: NOP            
       LDA    $85     
LF1ED: LDA    $85     
       LDA    #$00    
LF1F1: STA    $85     
       BEQ    LF1C6   
LF1F5: NOP            
       LDA    $85     
LF1F8: ORA    ($80,X) 
       NOP            
       LDA    $85     
       LDA    #$00    
       STA    GRP0    
       BEQ    LF1D9   
       JMP    LF30C   
LF206: .byte $60,$EA,$A5,$85,$1E,$00,$F0,$A9,$00,$F0,$2B,$A9,$00,$F0,$34,$EA
       .byte $A5,$85,$A5,$85,$A9,$00,$85,$85,$F0,$51,$EA,$A5,$85,$01,$80,$EA
       .byte $A5,$85,$A9,$00,$85,$1B,$F0,$5A,$E4,$D1,$90,$D5,$A4,$97,$30,$D4
       .byte $B1,$86,$85,$84,$C6,$97,$4E,$00,$F0,$A9,$00,$85,$0F,$E4,$9A,$D0
       .byte $CA,$A5,$9C,$85,$02,$85,$2A,$85,$1D,$A5,$84,$85,$1C,$A4,$83,$B9
       .byte $CE,$FB,$85,$0E,$B9,$9D,$00,$85,$0F,$EA,$85,$82,$E4,$8D,$90,$AF
       .byte $A4,$99,$30,$AE,$B9,$0C,$F1,$85,$85,$C6,$99,$A9,$00,$85,$0F,$E4
       .byte $8A,$90,$A7,$A4,$98,$30,$A6,$B1,$88,$85,$1B,$B9,$10,$FC,$85,$06
       .byte $C6,$98,$A5,$85,$85,$1E,$85,$23,$E8,$E8,$A5,$82,$85,$0F,$E4,$D1
       .byte $90,$57,$A4,$97,$30,$56,$B1,$86,$85,$84,$C6,$97,$A9,$00,$85,$0F
       .byte $E4,$9A,$D0,$4F,$A5,$9C,$85,$02,$85,$2A,$85,$1D,$A5,$84,$85,$1C
       .byte $A4,$83,$B9,$9C,$FB,$85,$0D,$A5,$82,$85,$0F,$E4,$8A,$90,$38,$E8
       .byte $E8,$E0,$B4,$B0,$21,$A4,$98,$30,$37,$C6,$98,$B9,$10,$FC,$85,$81
       .byte $A9,$00,$85,$0F,$B1,$88,$A8,$E6,$83,$A5,$81,$85,$06,$84,$1B,$A5
       .byte $82,$85,$0F,$4C,$2E,$F2,$4C,$0C,$F3,$EA,$A5,$85,$1E,$00,$F0,$A9
       .byte $00,$F0,$A9,$A9,$00,$F0,$AF,$E8,$E8,$E0,$B4,$B0,$E9,$99,$00,$F0
       .byte $EA,$EA,$A0,$00,$F0,$CA
LF30C: LDX    #$05    
LF30E: STA    WSYNC   
       LDA    #$A1    
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENABL   
       STA    ENAM1   
       STA    ENAM0   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEX            
       BNE    LF30E   
       STX    WSYNC   
       STX    COLUBK  
       JSR    LFEA4   
       JSR    LFEA7   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP0    
       LDA    #$20    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $81     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$1A    
       STA    COLUP0  
       STA    COLUP1  
LF35D: LDY    $81     
       LDA    ($E3),Y 
       STA    $84     
       STA    WSYNC   
       LDA    ($E5),Y 
       TAX            
       LDA    ($ED),Y 
       NOP            
       STA    GRP0    
       LDA    ($EB),Y 
       STA    GRP1    
       LDA    ($E9),Y 
       STA    GRP0    
       LDA    ($E7),Y 
       LDY    $84     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $81     
       BPL    LF35D   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       ORA    ($80,X) 
       STA    RESP0   
       JSR    LFEA7   
       STA    RESP1   
       LDA    #$00    
       STA    HMP0    
       LDA    #$30    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F2     
       STA    NUSIZ0  
       LSR            
       LSR            
       LSR            
       STA    NUSIZ1  
       LDY    #$07    
LF3B1: STA    WSYNC   
       BIT    $F2     
       BPL    LF3D2   
       LDA    LFC00,Y 
LF3BA: STA    GRP0    
       LDA    LFC10,Y 
       STA    COLUP0  
       STA    COLUP1  
       BIT    $F2     
       BVC    LF3D6   
       LDA    LFC00,Y 
LF3CA: STA    GRP1    
       DEY            
       BPL    LF3B1   
       JMP    LF400   
LF3D2: LDA    #$00    
       BEQ    LF3BA   
LF3D6: LDA    #$00    
       BEQ    LF3CA   
LF3DA: AND    ($35),Y 
       AND    ($30),Y 
       AND    ($30),Y 
       AND    ($30),Y 
       ADC    $C5     
       LDX    $66A5   
       SBC    $AF     
       BCC    LF3F1   
       LDX    #$87    
       JMP    $1EAC   
LF3F0: .byte $38
LF3F1: RTS            

LF3F2: .byte $2C,$10,$C0,$A9,$17,$85,$AA,$A9,$20,$85,$AB,$A2,$1A,$20
LF400: LDA    #$33    
       STA    TIM64T  
       LDA    $9C     
       AND    #$01    
       BEQ    LF460   
       LDA    $F5     
       AND    #$0F    
       TAX            
       CPX    #$0A    
       BCS    LF434   
       LDA    $F0     
       CMP    LF449,X 
       BCC    LF434   
       BEQ    LF453   
LF41D: LDA    $F5     
       AND    #$F0    
       STA    $F5     
       INX            
       TXA            
       ORA    $F5     
       STA    $F5     
       LDY    $F3     
       INY            
       CPY    #$06    
       BCC    LF432   
       LDY    #$06    
LF432: STY    $F3     
LF434: JMP    LF45A   
LF437: .byte $F4,$E8,$D0,$B8,$A0,$88,$58,$28,$F8,$98
LF441: .byte $7F,$7F,$7F,$FF,$7F,$FF,$7F,$7F
LF449: .byte $01,$03,$07,$0B,$0F,$13,$1B,$23,$2B,$3B
LF453: LDA    $EF     
       CMP    LF437,X 
       BCS    LF41D   
LF45A: JSR    LFAC5   
       JSR    LFEB3   
LF460: LDX    #$03    
       LDA    $D4     
       AND    #$10    
       BNE    LF496   
       LDA    $D5     
       AND    #$07    
       TAY            
       LDA    $80     
       AND    LF441,Y 
       BNE    LF484   
       LDY    $F4     
       INY            
       CPY    #$14    
       BCC    LF482   
       LDX    #$00    
       JSR    LF99F   
       LDY    #$14    
LF482: STY    $F4     
LF484: LDA    $D5     
       AND    #$08    
       BEQ    LF490   
       LDA    $80     
       AND    #$03    
       BNE    LF493   
LF490: JSR    LFE45   
LF493: JMP    LF4A3   
LF496: LDY    $91     
       DEY            
       CPY    #$01    
       BCS    LF49F   
       LDY    #$A1    
LF49F: STY    $91     
       BNE    LF490   
LF4A3: NOP            
       LDX    #$03    
       JSR    LF99F   
       LDA    $F5     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $D5     
       AND    #$07    
       CMP    #$02    
       BNE    LF4CD   
       LDA    $80     
       AND    LF4C5,Y 
       BNE    LF4C1   
       DEC    $E2     
LF4C1: JMP    LF4DF   
LF4C4: .byte $0F
LF4C5: .byte $0F,$07,$03,$01,$00,$00,$00,$00
LF4CD: LDA    $80     
       AND    LF4C4,Y 
       BNE    LF4DF   
       LDY    $92     
       INY            
       CPY    #$A1    
       BCC    LF4DD   
       LDY    #$01    
LF4DD: STY    $92     
LF4DF: LDA    #$18    
       STA    $84     
       LDA    #$FC    
       STA    $85     
       JSR    LF986   
       LDA    $D5     
       AND    #$07    
       TAY            
       LDA    $80     
       AND    #$01    
       BNE    LF504   
       LDA    LFAA5,Y 
       STA    $84     
       LDA    LFAAD,Y 
       STA    $85     
       JSR    LF992   
       BNE    LF511   
LF504: LDA    LFAB5,Y 
       STA    $84     
       LDA    LFABD,Y 
       STA    $85     
       JSR    LF992   
LF511: LDA    SWCHB   
       LSR            
       BCS    LF53F   
       LDA    #$00    
       STA    $D5     
       STA    $EF     
       STA    $F0     
       STA    $F5     
       LDA    #$03    
       STA    $F3     
LF525: LDX    #$01    
       STX    $9C     
LF529: LDX    #$00    
       STX    AUDV0   
       STX    AUDV1   
       STX    $E2     
       STX    $D4     
       LDA    $D5     
       AND    #$07    
       STA    $D5     
       JSR    LFF23   
       JMP    LF925   
LF53F: LDA    $9C     
       AND    #$9F    
       CMP    #$02    
       BEQ    LF5B3   
       CMP    #$03    
       BEQ    LF5B3   
       BIT    $9C     
       BPL    LF5C3   
       LDA    NUSIZ0  
       AND    #$C0    
       BEQ    LF55D   
       LDA    $D5     
       AND    #$07    
       CMP    #$01    
       BNE    LF572   
LF55D: LDA    $9B     
       SBC    #$08    
       TAY            
       STY    $9B     
       CPY    #$F0    
       BCC    LF59F   
LF568: LDA    $9C     
       AND    #$01    
       ORA    #$04    
       STA    $9C     
       BNE    LF59F   
LF572: LDA    $9A     
       STA    $81     
       LDA    #$F0    
       STA    $82     
       LDA    $D5     
       AND    #$07    
       CMP    #$03    
       BEQ    LF5A2   
       CMP    #$05    
       BEQ    LF5A2   
       CMP    #$07    
       BEQ    LF5A2   
       JSR    LFE00   
LF58D: LDA    $9C     
       AND    #$01    
       ORA    #$02    
       STA    $9C     
       LDX    #$06    
       JSR    LF99F   
       LDA    #$05    
       JSR    LFAFB   
LF59F: JMP    LF5E4   
LF5A2: LDA    $9B     
       STA    $82     
       JSR    LFB48   
       BIT    $82     
       BPL    LF55D   
       JSR    LFB15   
       JMP    LF58D   
LF5B3: LDY    $9B     
       INY            
       INY            
       STY    $9B     
       LDA    $8E     
       ADC    #$10    
       CMP    $9B     
       BCC    LF568   
       BCS    LF59F   
LF5C3: LDA    $9C     
       AND    #$01    
       BEQ    LF5CD   
       BIT    REFP1   
       BMI    LF59F   
LF5CD: LDA    $9C     
       ORA    #$82    
       STA    $9C     
       LDX    #$05    
       JSR    LF99F   
       LDA    $8A     
       ADC    #$05    
       STA    $9A     
       LDA    $8E     
       SBC    #$03    
       STA    $9B     
LF5E4: LDA    $9C     
       EOR    #$01    
       BNE    LF5ED   
       JMP    LF525   
LF5ED: NOP            
       LDA    RSYNC   
       AND    #$C0    
       BEQ    LF61C   
       LDA    $D1     
       STA    $81     
       LDA    #$00    
       STA    $82     
       LDA    $D5     
       AND    #$07    
       CMP    #$01    
       BEQ    LF617   
       CMP    #$03    
       BEQ    LF62B   
       CMP    #$05    
       BEQ    LF62B   
       CMP    #$07    
       BEQ    LF62B   
       JSR    LFE00   
       BIT    $82     
       BPL    LF61C   
LF617: LDX    #$02    
       JSR    LF99F   
LF61C: LDA    $D4     
       AND    #$01    
       BNE    LF663   
       LDA    $D4     
       AND    #$10    
       BEQ    LF63D   
       JMP    LF789   
LF62B: LDA    $80     
       AND    #$01    
       TAY            
       LDA.wy $008F,Y 
       CMP    #$21    
       BCC    LF61C   
       CMP    #$4F    
       BCS    LF61C   
       BCC    LF617   
LF63D: BIT    VBLANK  
       BPL    LF663   
       LDA    $9C     
       AND    #$01    
       ORA    #$04    
       STA    $9C     
       LDA    #$00    
       STA    $D4     
       LDA    $8D     
       ADC    #$0C    
       CMP    $8A     
       BCS    LF675   
       ADC    #$08    
       CMP    $8A     
       BCC    LF675   
       LDX    #$04    
       JSR    LF99F   
       JMP    LF789   
LF663: LDA    $9C     
       AND    #$01    
       BEQ    LF67D   
       BIT    VSYNC   
       BVS    LF675   
       BIT    COLUP1  
       BMI    LF675   
       BIT    WSYNC   
       BVC    LF67D   
LF675: LDX    #$00    
       JSR    LF99F   
       JMP    LF6B2   
LF67D: BIT    VSYNC   
       BPL    LF6B2   
       LDA    $D1     
       ADC    #$14    
       CMP    $9A     
       BCC    LF6B2   
       LDX    #$01    
       JSR    LF99F   
       LDA    $9C     
       AND    #$01    
       ORA    #$04    
       STA    $9C     
       LDA    $80     
       AND    #$01    
       BNE    LF6AC   
       LDA    $D5     
       ORA    #$20    
LF6A0: STA    $D5     
       BMI    LF6B2   
       AND    #$07    
       ORA    #$80    
       STA    $D5     
       BNE    LF6B2   
LF6AC: LDA    $D5     
       ORA    #$40    
       BNE    LF6A0   
LF6B2: LDX    #$00    
       LDA    $D4     
       LSR            
       BCC    LF70A   
       STX    AUDV1   
       LDA    $9C     
       AND    #$01    
       ORA    #$04    
       STA    $9C     
       JSR    LF9E3   
       LDA    $83     
       BEQ    LF6E2   
       LDA    $CE     
       ADC    #$01    
       STA    $CE     
       LDA    #$A3    
       STA    $84     
       LDA    #$FA    
       STA    $85     
       JSR    LF986   
       LDA    #$5C    
       STA    $86     
       JMP    LF954   
LF6E2: LDA    $9C     
       AND    #$01    
       BNE    LF6F9   
       LDA    $D5     
       AND    #$F0    
       STA    $81     
       LDA    $D5     
       TAY            
       INY            
       TYA            
       AND    #$07    
       ORA    $81     
       STA    $D5     
LF6F9: DEC    $F3     
       BPL    LF707   
       LDX    #$00    
       STX    $9C     
       DEX            
       STX    $F3     
       JMP    LF529   
LF707: JMP    LF525   
LF70A: INX            
       LSR            
       BCS    LF718   
       INX            
       LSR            
       BCC    LF77E   
       JSR    LF9E3   
       JMP    LF789   
LF718: JSR    LF9E3   
       LDA    $80     
       AND    #$01    
       TAY            
       LDA    $83     
       BEQ    LF759   
       LDA    $D5     
       AND    #$60    
       BEQ    LF789   
       AND    #$20    
       BEQ    LF752   
       LDX    #$02    
       TYA            
       BNE    LF745   
LF733: LDA    $D5     
       AND    #$10    
       BNE    LF745   
       JSR    LFE45   
       JSR    LFE63   
       JSR    LFE63   
LF742: JMP    LF8AD   
LF745: LDA    #$A3    
       STA    $84     
       LDA    #$FA    
       STA    $85     
       JSR    LF992   
       BNE    LF742   
LF752: LDX    #$01    
       TYA            
       BNE    LF733   
       BEQ    LF745   
LF759: LDA    $D5     
       TAY            
       AND    #$60    
       BNE    LF768   
       LDA    #$32    
       JSR    LFAFB   
       JMP    LF789   
LF768: LDA    #$64    
       JSR    LFAFB   
       TYA            
       AND    #$10    
       BNE    LF779   
       TYA            
       ORA    #$10    
LF775: STA    $D5     
       BNE    LF789   
LF779: TYA            
       ORA    #$08    
       BNE    LF775   
LF77E: INX            
       LSR            
       BCC    LF789   
       JSR    LF9E3   
       LDA    #$08    
       STA    AUDV0   
LF789: LDX    #$04    
       LDA    $D4     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       BCS    LF797   
       JMP    LF811   
LF797: JSR    LF9E3   
       LDA    #$00    
       STA    AUDV0   
       LDA    $83     
       BNE    LF7DC   
       LDA    $D5     
       AND    #$F0    
       STA    $81     
       LDA    $D5     
       AND    #$07    
       TAY            
       INY            
       CPY    #$07    
       BCC    LF7C3   
       LDA    $F5     
       TAX            
       AND    #$0F    
       STA    $84     
       TXA            
       CLC            
       ADC    #$10    
       AND    #$7F    
       ORA    $84     
       STA    $F5     
LF7C3: TYA            
       AND    #$07    
       ORA    $81     
       STA    $D5     
       LDA    $9C     
       AND    #$01    
       BNE    LF7D9   
       STA    $D5     
       JMP    LF529   
LF7D5: .byte $04,$0C,$01,$05
LF7D9: JMP    LF525   
LF7DC: LDA    $91     
       STA    $8E     
       ADC    #$0F    
       STA    $8F     
       STA    $90     
       LDA    $8D     
       ADC    #$11    
       STA    $8A     
       STA    $8B     
       STA    $8C     
       LDA    #$7D    
       STA    $84     
       LDA    #$FC    
       STA    $85     
       JSR    LF992   
       LDA    $F4     
       CMP    #$14    
       BCS    LF80E   
       LDA    $80     
       AND    #$0F    
       BNE    LF80E   
       LDA    #$1E    
       JSR    LFAFB   
       INC    $F4     
LF80E: JMP    LF954   
LF811: INX            
       LSR            
       BCC    LF81B   
       JSR    LF9E3   
       JMP    LF823   
LF81B: INX            
       LSR            
       BCC    LF822   
       JSR    LF9E3   
LF822: NOP            
LF823: LDA    $D5     
       TAY            
       AND    #$08    
       BEQ    LF830   
       LDA    #$5C    
       STA    $86     
       BNE    LF8AD   
LF830: TYA            
       AND    #$10    
       BEQ    LF888   
       TYA            
       AND    #$20    
       BNE    LF861   
       LDX    #$01    
       JSR    LFE45   
       JSR    LFE45   
       JSR    LFE63   
       LDA    $D5     
       AND    #$07    
       TAX            
       LDA    LFAB5,X 
       STA    $84     
       LDA    LFABD,X 
       STA    $85     
       JSR    LF992   
       LDA    $8F     
       STA    $90     
       LDA    $8B     
       STA    $8C     
       BNE    LF8AD   
LF861: LDX    #$02    
       JSR    LFE45   
       JSR    LFE45   
       JSR    LFE63   
       LDA    $D5     
       AND    #$07    
       TAX            
       LDA    LFAA5,X 
       STA    $84     
       LDA    LFAAD,X 
       STA    $85     
       JSR    LF992   
LF87E: LDA    $90     
       STA    $8F     
       LDA    $8C     
       STA    $8B     
       BNE    LF8AD   
LF888: LDX    #$01    
       JSR    LFE45   
       JSR    LFE63   
       LDA    $9C     
       AND    #$01    
       BEQ    LF89C   
       LDA    $F5     
       AND    #$F0    
       BEQ    LF89F   
LF89C: JSR    LFE63   
LF89F: INX            
       JSR    LFE45   
       JSR    LFE45   
       JSR    LFE63   
       BIT    $D5     
       BPL    LF87E   
LF8AD: LDA    $80     
       AND    #$01    
       TAY            
       LDA    $9C     
       AND    #$01    
       BEQ    LF8C6   
       LDA    $F5     
       AND    #$F0    
       BNE    LF8C6   
       LDA    $D5     
       AND    #$07    
       CMP    #$01    
       BNE    LF8DB   
LF8C6: BIT    $D5     
       BPL    LF8DB   
       LDA    $D5     
       AND    #$08    
       BNE    LF8DB   
       LDA    $CF     
       CMP    #$05    
       BCS    LF8DB   
       LDA    LF984,Y 
       STA    $86     
LF8DB: LDA    $9C     
       AND    #$01    
       BNE    LF8EB   
       TAX            
       JSR    LFE45   
       LDA    #$85    
       STA    $8E     
       BNE    LF954   
LF8EB: BIT    WSYNC   
       BPL    LF905   
       LDA    $D5     
       AND    #$07    
       CMP    #$01    
       BEQ    LF905   
       LDA    $F6     
       BEQ    LF946   
       CMP    #$01    
       BEQ    LF938   
       CMP    #$02    
       BEQ    LF919   
       BNE    LF92A   
LF905: LDA    SWCHA   
       LDX    #$00    
       ASL            
       BCC    LF938   
       INX            
       ASL            
       BCC    LF946   
       INX            
       ASL            
       BCC    LF92A   
       INX            
       ASL            
       BCS    LF925   
LF919: LDY    $8A     
       DEY            
       DEY            
       CPY    #$FA    
       BCC    LF923   
       LDY    #$00    
LF923: STY    $8A     
LF925: STX    $F6     
       JMP    LF954   
LF92A: LDY    $8A     
       INY            
       INY            
       CPY    #$A4    
       BCC    LF934   
       LDY    #$A4    
LF934: STY    $8A     
       BNE    LF925   
LF938: LDY    $8E     
       INY            
       INY            
       CPY    #$8E    
       BCC    LF942   
       LDY    #$8E    
LF942: STY    $8E     
       BNE    LF925   
LF946: LDY    $8E     
       DEY            
       DEY            
       CPY    #$05    
       BCS    LF950   
       LDY    #$05    
LF950: STY    $8E     
       BNE    LF925   
LF954: LDA    INTIM   
       BNE    LF954   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    $E2     
       STA    $E1     
       JSR    LFE31   
       INC    $80     
       LDA    #$23    
       STA    TIM64T  
       LDA    $9C     
       AND    #$01    
       BNE    LF981   
       STA    AUDV0   
       STA    AUDV1   
LF981: JMP    LF00E   
LF984: .byte $81,$8C
LF986: LDA    $80     
       LSR            
       LSR            
       AND    #$01    
       TAY            
       LDA    ($84),Y 
       STA    $88     
       RTS            

LF992: LDA    $80     
       LSR            
       LSR            
       LSR            
       AND    #$01    
       TAY            
       LDA    ($84),Y 
       STA    $86     
       RTS            

LF99F: STX    $82     
       CPX    #$04    
       BCC    LF9A9   
       DEX            
       DEX            
       DEX            
       DEX            
LF9A9: DEX            
       BMI    LF9C2   
       LDA    $82     
       CMP    #$04    
       BCS    LF9BA   
       LDA    $D4     
       AND    LF9DB,X 
       BEQ    LF9A9   
       RTS            

LF9BA: LDA    $D4     
       AND    LF9DF,X 
       BEQ    LF9A9   
       RTS            

LF9C2: LDX    $82     
       CPX    #$04    
       BCS    LF9D2   
       LDA    $D4     
       AND    #$F0    
       ORA    LF9DB,X 
LF9CF: STA    $D4     
       RTS            

LF9D2: LDA    $D4     
       AND    #$0F    
       ORA    LF9DB,X 
       BNE    LF9CF   
LF9DB: ORA    ($02,X) 
       .byte $04 ;.NOP
       PHP            
LF9DF: BPL    LFA01   
       RTI            

LF9E2: .byte $80
LF9E3: STX    $82     
       LDY    LFA56,X 
       LDA    $D8,X   
       STA    $84     
       CPX    #$04    
       BCC    LF9F4   
       LDX    #$01    
       BNE    LF9F6   
LF9F4: LDX    #$00    
LF9F6: STX    $81     
       STY    AUDC0,X 
       LDA    $D2,X   
       BEQ    LFA04   
       DEC    $D2,X   
       BMI    LFA04   
       BPL    LFA23   
LFA04: LDY    $84     
       LDA    LFA5E,Y 
       BNE    LFA10   
       DEC    $84     
       JMP    LFA1F   
LFA10: STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFA4E,Y 
       STA    $D2,X   
       LDA    #$FF    
LFA1F: STA    AUDV0,X 
       INC    $84     
LFA23: LDX    $82     
       LDA    $84     
       STA    $D8,X   
       LDY    $D8,X   
       LDA    LFA5E,Y 
       STA    $83     
       BNE    LFA4D   
       LDY    $81     
       STA.wy $00D2,Y 
       STA.wy $0019,Y 
       LDA    LFFF4,X 
       STA    $D8,X   
       LDA    #$01    
LFA41: DEX            
       BMI    LFA47   
       ASL            
       BNE    LFA41   
LFA47: EOR    #$FF    
       AND    $D4     
       STA    $D4     
LFA4D: RTS            

LFA4E: .byte $00,$01,$03,$07,$0F,$1F,$3F,$7F
LFA56: .byte $08,$01,$04,$0C,$0C,$08,$01,$04
LFA5E: .byte $FF,$FF,$00,$77,$77,$00,$3D,$3F,$3C,$37,$00,$77,$7F,$7C,$97,$00
       .byte $97,$78,$77,$77,$75,$73,$77,$75,$73,$6E,$77,$71,$73,$75,$7A,$AF
       .byte $73,$75,$7A,$7A,$39,$77,$71,$6F,$71,$6E,$71,$6F,$6E,$91,$77,$71
       .byte $73,$75,$BA,$77,$00,$97,$A2,$AD,$B8,$1A,$25,$1A,$30,$25,$30,$1A
       .byte $B8,$AD,$3B,$30,$3B,$46,$51
LFAA5: .byte $97,$99,$9B,$9D,$9F,$93,$95,$9B
LFAAD: .byte $FA,$FA,$FA,$FA,$FA,$FA,$FA,$FA
LFAB5: .byte $A1,$9F,$9D,$9B,$99,$9B,$93,$95
LFABD: .byte $FA,$FA,$FA,$FA,$FA,$FA,$FA,$FA
LFAC5: LDA    #$00    
       STA    $F2     
       LDY    $F3     
       BNE    LFACE   
LFACD: RTS            

LFACE: BIT    $F3     
       BMI    LFACD   
       CPY    #$03    
       BCS    LFADD   
       DEY            
       TYA            
       ORA    #$80    
LFADA: STA    $F2     
       RTS            

LFADD: LDA    #$83    
       STA    $F2     
       CPY    #$04    
       BCC    LFACD   
       DEY            
       DEY            
       DEY            
       DEY            
       CPY    #$02    
       BCC    LFAF1   
       LDA    #$DB    
       BNE    LFADA   
LFAF1: TYA            
       ORA    #$08    
       ASL            
       ASL            
       ASL            
       ORA    $F2     
       BNE    LFADA   
LFAFB: STA    $81     
       LDA    $EF     
       CLC            
       ADC    $81     
       STA    $EF     
       LDA    $F0     
       ADC    #$00    
       STA    $F0     
       RTS            

LFB0B: .byte $80
LFB0C: .byte $80,$40,$20,$10,$08,$04,$02,$01,$00
LFB15: LDA    $81     
       LSR            
       LSR            
       TAX            
       LDY    #$00    
LFB1C: LDA    $9D,X   
       AND    LFB0C,Y 
       BNE    LFB26   
       INY            
       BNE    LFB1C   
LFB26: BIT    $82     
       BMI    LFB3E   
       LDA    $9D,X   
       ORA    LFB0B,Y 
       STA    $84     
       CMP    $9D,X   
       BEQ    LFB3B   
       LDA    #$F0    
       STA    $82     
       LDA    $84     
LFB3B: STA    $9D,X   
       RTS            

LFB3E: LDA    LFB0C,Y 
       EOR    #$FF    
       AND    $9D,X   
       JMP    LFB3B   
LFB48: LDA    $81     
       LSR            
       LSR            
       TAY            
       LDX    #$FF    
LFB4F: LDA    $82     
       CMP    #$51    
       BCS    LFB63   
       ADC    #$04    
       STA    $82     
       INX            
       CPX    #$09    
       BCC    LFB4F   
LFB5E: LDA    #$00    
LFB60: STA    $82     
       RTS            

LFB63: TXA            
       BMI    LFB5E   
       LDA.wy $009D,Y 
       AND    LFB0C,X 
       BNE    LFB76   
       LDA.wy $009D,Y 
       AND    LFB0B,X 
       BEQ    LFB5E   
LFB76: LDA    #$F0    
       BNE    LFB60   
       ROL    $05A0   
       STA    ($AC),Y 
       LDA    $2EA2,X 
       INY            
       STA    ($AC),Y 
       LDA    $2EE4,X 
       INY            
       STA    ($AC),Y 
       LDA    $3034,X 
       INY            
       STA    ($AC),Y 
       LDA    $3035,X 
       INY            
       STA    ($AC),Y 
       CPX    #$00    
       BNE    LFBAF   
       LDA    #$20    
       BVC    LFBBF   
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BVS    LFBC6   
       BVS    LFBA8   
LFBA8: BRK            
       BRK            
       LDY    #$00    
       BRK            
       BRK            
       BRK            
LFBAF: BVC    LFBB1   
LFBB1: BVC    LFBB3   
LFBB3: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
LFBB8: BRK            
       BRK            
       BRK            
       BRK            
       JSR    $2050   
LFBBF: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BEQ    LFB56   
LFBC6: BCC    LFBB8   
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $80 ;.NOP
       EOR    VSYNC,X 
       BRK            
       .byte $22 ;.JAM
       .byte $14 ;.NOP
       PHP            
       .byte $14 ;.NOP
       .byte $22 ;.JAM
       BRK            
       BRK            
       BRK            
       BRK            
       ASL            
       BRK            
       ASL            
       BRK            
       JSR    $2050   
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $02 ;.JAM
       .byte $07 ;.SLO
       .byte $02 ;.JAM
       BRK            
       BRK            
       BRK            
       BRK            
       RTS            

LFBEE: .byte $90,$90,$60,$00,$04,$0A,$11,$0A,$04,$00,$00,$00,$00,$00,$08,$1C
       .byte $08,$00
LFC00: .byte $00,$18,$3C,$7E,$AB,$7E,$3C,$18,$00,$18,$3C,$7E,$D5,$7E,$3C,$18
LFC10: .byte $4A,$2A,$7A,$8A,$3A,$8A,$7A,$2A,$00,$08,$00,$81,$42,$3C,$7E,$FF
       .byte $5A,$3C,$24,$42,$81,$00,$24,$42,$3C,$7E,$FF,$7E,$3C,$24,$42,$24
       .byte $00,$66,$18,$81,$99,$5A,$5A,$99,$81,$18,$66,$00,$24,$42,$A5,$18
       .byte $3C,$3C,$18,$A5,$42,$24,$00,$82,$24,$05,$50,$B4,$29,$10,$44,$21
       .byte $84,$00,$10,$12,$44,$8D,$42,$14,$62,$31,$48,$22,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$A8,$10,$04,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$08,$14,$48,$10,$00,$00,$67,$72,$FC
       .byte $FC,$81,$81,$42,$3C,$7E,$FF,$5A,$3C,$24,$42,$81,$18,$66,$18,$81
       .byte $99,$5A,$5A,$99,$81,$18,$66,$00,$66,$24,$24,$18,$3D,$3D,$3D,$7E
       .byte $98,$58,$00,$C3,$42,$24,$18,$BC,$BC,$BC,$7E,$19,$1A,$00,$81,$81
       .byte $42,$7E,$DB,$E7,$FF,$99,$7E,$3C,$00,$18,$24,$42,$7E,$FF,$E7,$FF
       .byte $FF,$7E,$3C,$C9,$A0,$D0,$03,$88,$10,$F6,$18,$69,$01,$99,$A6,$2E
       .byte $68,$AA,$68,$A8,$68,$60,$8D,$94,$2E,$48,$98,$48,$8A,$48,$A2,$00
       .byte $20,$C5,$2D,$20,$D2,$2D,$EE,$8E,$2E,$D0,$03,$EE,$8F,$2E,$E6,$81
       .byte $D0,$02,$E6,$82,$68,$AA,$68,$A8,$68,$60,$84,$AA,$85,$AB,$48,$98
LFD00: .byte $00,$10,$30,$70,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0
LFD15: .byte $00,$00,$00,$00,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF
LFD2A: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$07
       .byte $0F,$1F,$3F,$7F,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00
LFD6F: .byte $67,$00,$5F,$00,$57,$00,$4F,$00,$47,$00,$3F,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18
       .byte $18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C
       .byte $06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C
       .byte $60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C
       .byte $06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66
       .byte $66,$66,$3C
LFDD2: .byte $00,$01,$00,$0A,$00,$64,$00,$E8,$00,$10
LFDDC: .byte $00,$00,$00,$00,$00,$00,$00,$03,$00,$27,$D0,$0E,$A5,$81,$C9,$FC
       .byte $D0,$08,$CC,$E2,$2E,$F0,$03,$99,$88,$C0,$20,$D6,$03,$A0,$15,$B1
       .byte $B0,$91,$AC,$88
LFE00: LDY    #$00    
       LDA    $81     
LFE04: CMP    #$1C    
       BCC    LFE0D   
       SBC    #$1C    
       INY            
       BNE    LFE04   
LFE0D: LSR            
       LSR            
       TAX            
       LDA    #$01    
LFE12: ASL            
       DEX            
       BPL    LFE12   
       BIT    $82     
       BMI    LFE28   
       ORA.wy $009D,Y 
       CMP.wy $009D,Y 
       BEQ    LFE2D   
       LDX    #$F0    
       STX    $82     
       BNE    LFE2D   
LFE28: EOR    #$FF    
       AND.wy $009D,Y 
LFE2D: STA.wy $009D,Y 
       RTS            

LFE31: LDA    $CF     
       LSR            
       EOR    $D0     
       LSR            
       LSR            
       EOR    $D0     
       LSR            
       EOR    $D0     
       EOR    #$01    
       LSR            
       ROR    $CF     
       ROR    $D0     
       RTS            

LFE45: LDA    $8A,X   
       CMP    $93,X   
       BCS    LFE4F   
       INC    $8A,X   
       BNE    LFE62   
LFE4F: BEQ    LFE55   
       DEC    $8A,X   
       BNE    LFE62   
LFE55: JSR    LFE31   
       LDA    $CF     
       AND    #$07    
       TAY            
       LDA    LFE7A,Y 
       STA    $93,X   
LFE62: RTS            

LFE63: LDA    $F5     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $8E,X   
       CLC            
       ADC    LFE82,Y 
       TAY            
       CPY    #$A1    
       BCC    LFE77   
       LDY    #$01    
LFE77: STY    $8E,X   
       RTS            

LFE7A: .byte $03,$1E,$6E,$96,$50,$32
LFE80: .byte $B0,$78
LFE82: .byte $01,$01,$01,$01,$02,$02,$02,$02
LFE8A: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $81     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $81     
       CMP    #$0F    
       BCC    LFEA2   
       SBC    #$0F    
       INY            
LFEA2: EOR    #$07    
LFEA4: ASL            
       ASL            
       ASL            
LFEA7: ASL            
       RTS            

LFEA9: STA    HMP0,X  
       STA    WSYNC   
LFEAD: DEY            
       BPL    LFEAD   
       STA    RESP0,X 
       RTS            

LFEB3: LDA    #$82    
       STA    $E3     
       LDA    #$FD    
       STA    $E4     
       LDA    $EF     
       STA    $85     
       LDA    $F0     
       STA    $83     
       LDA    #$80    
       STA    $82     
       LDX    #$09    
LFEC9: LDA    #$00    
       STA    $84     
LFECD: SEC            
       LDA    $85     
       SBC    LFDD2,X 
       STA    $81     
       LDA    $83     
       SBC    LFDDC,X 
       BCC    LFEE6   
       STA    $83     
       LDA    $81     
       STA    $85     
       INC    $84     
LFEE4: BNE    LFECD   
LFEE6: LDY    $84     
       CPX    #$00    
       BNE    LFEFB   
LFEEC: LDA    LFF97,Y 
       STA    $E5,X   
       DEX            
       LDA    LFF8D,Y 
       STA    $E5,X   
LFEF7: DEX            
       BPL    LFEC9   
       RTS            

LFEFB: CPY    #$00    
       BEQ    LFF01   
       STY    $82     
LFF01: BIT    $82     
       BPL    LFEEC   
       LDA    #$FD    
       STA    $E5,X   
       DEX            
       LDA    #$7A    
       STA    $E5,X   
       BNE    LFEF7   
LFF10: LDA    #$10    
       STA    $D4     
       LDX    #$0B    
LFF16: LDA    #$FD    
       STA    $E3,X   
       DEX            
       LDA    LFD6F,X 
       STA    $E3,X   
       DEX            
       BPL    LFF16   
LFF23: LDX    #$30    
       LDA    $D5     
       AND    #$07    
       TAY            
       LDA    LFF75,Y 
LFF2D: STA    $9D,X   
       DEX            
       BPL    LFF2D   
       LDA    #$FC    
       STA    $89     
       STA    $87     
       LDA    #$64    
       STA    $8A     
       LDA    #$32    
       STA    $8B     
       STA    $94     
       STA    $95     
       LDA    #$80    
       STA    $8E     
       LDA    #$14    
       STA    $92     
       LDA    #$15    
       STA    $8F     
       STA    $90     
       STA    $91     
       LDA    #$00    
       STA    $CE     
       LDA    $D5     
       AND    #$07    
       TAY            
       LDA    LFF7D,Y 
       STA    $D6     
       LDA    LFF85,Y 
       STA    $D7     
       LDX    #$07    
LFF69: LDA    LFFF4,X 
       STA    $D8,X   
       DEX            
       BPL    LFF69   
       INX            
       STX    $F4     
       RTS            

LFF75: .byte $08,$00,$FF,$AA,$FF,$E7,$FF,$FF
LFF7D: .byte $B0,$00,$A7,$00,$30,$00,$86,$00
LFF85: .byte $FC,$F0,$FA,$F0,$FA,$F0,$FA,$F0
LFF8D: .byte $82,$8A,$92,$9A,$A2,$AA,$B2,$BA,$C2,$CA
LFF97: .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$A0,$A0,$A0,$AD,$A0,$A0
       .byte $A0,$A0,$A0,$AD,$A0,$A0,$A0,$A0,$A0,$AD,$A0,$A0,$A0,$A0,$A0,$A0
       .byte $A0,$D4,$A0,$A0,$A0,$A0,$A0,$D4,$A0,$A0,$A0,$A0,$A0,$D4,$A0,$A0
       .byte $A0,$A0,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4
       .byte $A0,$A0,$A0,$C6,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$AD,$A0,$D3
       .byte $A0,$A0,$A0,$AD,$A0,$D3,$A0,$A0,$A0,$AD,$A0,$D3,$AD
LFFF4: .byte $00,$03,$06,$0B,$10,$03,$03,$35,$00,$F0,$E0,$88
