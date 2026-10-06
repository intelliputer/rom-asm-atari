; Disassembly of roms/Meltdown.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Meltdown.bin
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
AUDC1   =  $16
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
INTIM   =  $0284

       ORG $1000
L1000: .byte $8D,$1D,$00,$86,$1E,$B9,$65,$1D,$85,$1F,$B9,$00,$1E,$85,$1B,$B9
       .byte $00,$1E,$85,$1C,$B9,$00,$1E,$85,$1B,$B9,$00,$1E,$85,$1C,$A2,$04
       .byte $A9,$05,$86,$04,$85,$04,$A9,$05,$84,$1B,$86,$05,$85,$05,$B9,$65
       .byte $1D,$BE,$65,$1D,$88,$10,$C9,$4C,$13,$1B
L103A: LDY    #$02    
L103C: LDA    $BA     
       EOR    $BB     
       ASL            
       ASL            
       ROL    $BA     
       ROL    $BB     
       DEY            
       BPL    L103C   
       LDA    $BA     
       AND    #$0F    
       RTS            


START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L1055: STA    VSYNC,X 
       INX            
       BNE    L1055   
       LDA    INTIM   
       ORA    #$AA    
       STA    $BA     
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    $C5     
       STA    $ED     
       STA    $BC     
       LDA    #$1D    
       STA    $F4     
       STA    $F6     
       STA    $F8     
       LDA    #$07    
       STA    $FD     
       LDX    #$39    
L107B: LDA    L1000,X 
       STA    $80,X   
       DEX            
       BPL    L107B   
       LDX    #$80    
       LDA    $ED     
       BEQ    L109B   
       LDX    $FB     
       BEQ    L1099   
       LDX    #$02    
L108F: LDA    $C2,X   
       STA    $BF,X   
       DEX            
       BPL    L108F   
       INX            
       STX    $FB     
L1099: LDX    #$C2    
L109B: JSR    L1C3D   
       LDA    L1F6D,Y 
       STA    $DE     
       JSR    L1EF4   
       LDA    $C5     
       BNE    L1113   
       LDA    #$10    
       STA    $D7     
       LDA    #$00    
       STA    $C5     
       STA    $D6     
       STA    $EC     
       STA    $D9     
       STA    $DC     
       LDA    #$8E    
       STA    $DA     
       LDA    #$12    
       STA    $DB     
       LDA    #$0A    
       STA    $D8     
       LDA    $DE     
       LDX    #$04    
       CMP    #$35    
       BCS    L10E3   
L10CE: CMP    L1F6E,X 
       BEQ    L10DA   
       DEX            
       BPL    L10CE   
L10D6: INC    $BD     
       BPL    L10F1   
L10DA: TXA            
       STX    $EE     
       ADC    #$03    
       STA    $BD     
       BNE    L10F1   
L10E3: BNE    L10E9   
       LDA    #$09    
       BNE    L10EF   
L10E9: CMP    #$39    
       BNE    L10D6   
       LDA    #$0C    
L10EF: STA    $BD     
L10F1: LDA    #$01    
       STA    AUDC1   
       LDA    #$08    
       STA    $FD     
       STA    $FA     
       LDX    #$03    
       STX    $E6     
       STX    $E7     
       LDA    L1ED7,X 
       STA    $EB     
       LDA    #$7B    
       STA    $E5     
       JSR    L103A   
       STA    $BE     
       LDA    #$70    
       STA    $E0     
L1113: LDA    #$00    
       STA    $85     
       STA    COLUBK  
       JSR    L1C59   
       JMP    L1831   
L111F: .byte $86,$85,$E8,$86,$0A,$A9,$2A,$85,$02,$85,$2A,$85,$01,$85,$00,$8D
       .byte $95,$02,$E6,$E1,$AC,$82,$02,$98,$45,$E2,$25,$E2,$84,$E2,$A8,$A6
       .byte $C5,$AD,$84,$02,$D0,$FB,$85,$02,$85,$00,$A9,$24,$8D,$96,$02,$E0
       .byte $03,$F0,$0F,$98,$29,$02,$F0,$0A,$A9,$18,$85,$E5,$A9,$03,$85,$C5
       .byte $D0,$5A,$98,$29,$01,$F0,$0A,$85,$C5,$85,$ED,$A9,$07,$85,$FD,$D0
       .byte $4B,$A6,$C5,$BD,$C0,$1E,$85,$89,$BD,$B9,$1E,$85,$8A,$6C,$89,$00
       .byte $98,$29,$02,$D0,$0A,$A5,$E2,$29,$02,$D0,$1B,$C6,$E5,$10,$17,$F8
       .byte $A5,$BC,$18,$69,$01,$C9,$16,$D0,$02,$A9,$01,$85,$BC,$D8,$A9,$18
       .byte $85,$E5,$A9,$07,$85,$FD,$A5,$E1,$D0,$04,$C6,$FD,$30,$08,$A4,$3C
       .byte $30,$10,$E0,$02,$F0,$09,$85,$ED,$A9,$00,$85,$C5,$4C,$79,$10,$4C
       .byte $AA,$10,$A9,$00,$85,$19,$85,$1A,$F0,$6A,$A5,$FD,$10,$3B,$F8,$A5
       .byte $DE,$C9,$39,$F0,$05,$18,$69,$01,$85,$DE,$D8,$A6,$BE,$A5,$FC,$95
       .byte $C6,$A2,$0F,$B5,$C6,$29,$80,$F0,$04,$A9,$00,$95,$C6,$CA,$10,$F3
       .byte $20,$F4,$1E,$A9,$04,$85,$16,$85,$15,$A9,$19,$85,$17,$85,$1A,$85
       .byte $19,$A9,$15,$85,$18,$A9,$40,$85,$FD,$C6,$FD,$30,$1C,$A5,$FD,$C9
       .byte $39,$D0,$04,$A9,$1F,$85,$18,$C9,$32,$D0,$04,$A9,$15,$85,$18,$C9
       .byte $2B,$D0,$11,$A9,$0F,$85,$18,$D0,$0B,$A9,$05,$85,$C5,$0A,$85,$16
       .byte $A9,$00,$85,$19,$4C,$31,$18,$C6,$FD,$10,$26,$A2,$0F,$B5,$C6,$29
       .byte $07,$D0,$0C,$CA,$10,$F7,$A9,$02,$85,$C5,$20,$59,$1C,$D0,$E5,$D6
       .byte $C6,$85,$18,$A5,$DE,$C9,$03,$90,$02,$A9,$03,$85,$85,$A9,$03,$85
       .byte $FD,$10,$D1,$A5,$FD,$10,$20,$20,$59,$1C,$A9,$05,$85,$FD,$85,$E9
       .byte $85,$FC,$85,$15,$A9,$0B,$85,$EF,$85,$19,$20,$F4,$1E,$A9,$08,$85
       .byte $16,$A9,$20,$85,$E8,$D0,$AD,$A5,$E1,$29,$01,$F0,$0D,$A4,$E8,$88
       .byte $C0,$0A,$B0,$02,$A0,$20,$84,$17,$84,$E8,$C6,$E9,$D0,$55,$A2,$0F
       .byte $D6,$C6,$CA,$10,$FB,$A5,$FD,$85,$E9,$18,$E9,$0F,$49,$FF,$85,$1A
       .byte $C6,$FC,$D0,$3F,$A5,$FD,$0A,$18,$E9,$0A,$49,$FF,$09,$40,$85,$09
       .byte $A5,$EF,$0A,$85,$EF,$85,$FC,$C6,$FD,$D0,$28,$A2,$01,$86,$C5,$CA
       .byte $86,$09,$A5,$ED,$F0,$17,$86,$ED,$A0,$FF,$B5,$BF,$D5,$C2,$90,$0B
       .byte $F0,$02,$B0,$05,$E8,$E0,$03,$D0,$F1,$A0,$00,$84,$FB,$84,$E1,$A9
       .byte $07,$85,$FD,$A5,$FC,$29,$0F,$09,$03,$85,$18,$A5,$FD,$C9,$01,$D0
       .byte $0C,$A5,$FC,$C9,$30,$D0,$06,$A9,$07,$85,$A1,$85,$A7,$4C,$31,$18
       .byte $A5,$D7,$C9,$10,$D0,$03,$4C,$E6,$13,$C9,$08,$F0,$06,$C9,$04,$F0
       .byte $10,$D0,$54,$C6,$FD,$10,$08,$20,$3A,$10,$85,$BE,$4C,$AC,$13,$10
       .byte $44,$A6,$BE,$A5,$E1,$29,$01,$F0,$02,$F6,$C6,$A5,$E1,$29,$0F,$C9
       .byte $08,$D0,$32,$E6,$FD,$A5,$FD,$0A,$85,$17,$85,$19,$C9,$0A,$D0,$25
       .byte $A9,$08,$85,$D7,$A5,$FC,$95,$C6,$A2,$02,$86,$D6,$CA,$86,$EF,$CA
       .byte $86,$FA,$A5,$E8,$85,$E7,$20,$3A,$10,$0A,$0A,$09,$01,$85,$FD,$A9
       .byte $10,$65,$DE,$85,$85,$10,$6D,$A8,$A5,$BE,$C0,$02,$B0,$19,$4A,$4A
       .byte $AA,$A5,$E9,$FD,$DB,$1E,$10,$02,$49,$FF,$C9,$0A,$B0,$56,$A5,$E9
       .byte $DD,$DB,$1E,$A9,$00,$F0,$11,$29,$03,$AA,$A5,$EA,$5D,$D7,$1E,$30
       .byte $43,$A5,$EA,$DD,$D7,$1E,$A9,$01,$2A,$C5,$D7,$D0,$37,$A9,$10,$85
       .byte $D7,$20,$3A,$10,$A6,$EE,$F0,$25,$E0,$04,$B0,$0F,$38,$E9,$04,$CA
       .byte $D0,$FA,$A8,$10,$18,$09,$F8,$49,$FF,$10,$12,$29,$03,$A6,$DE,$E0
       .byte $39,$F0,$0A,$E0,$35,$B0,$04,$69,$01,$10,$02,$09,$01,$85,$FD,$A6
       .byte $BE,$20,$7C,$1F,$4C,$63,$14,$A5,$FD,$10,$79,$A9,$00,$85,$81,$20
       .byte $3A,$10,$2C,$63,$1D,$D0,$6D,$29,$03,$AA,$38,$E9,$01,$29,$03,$85
       .byte $80,$A5,$BE,$A8,$29,$03,$F0,$0C,$C9,$03,$F0,$11,$98,$18,$7D,$78
       .byte $1F,$4C,$23,$14,$E0,$03,$D0,$F4,$98,$09,$03,$D0,$07,$E0,$02,$D0
       .byte $EB,$98,$29,$0C,$2C,$82,$02,$30,$15,$A8,$45,$BE,$2C,$54,$1D,$D0
       .byte $21,$98,$38,$E5,$BE,$C9,$03,$F0,$19,$C9,$FD,$F0,$15,$98,$29,$0F
       .byte $A8,$B9,$C6,$00,$29,$80,$F0,$13,$E4,$80,$F0,$0F,$A5,$81,$C5,$EE
       .byte $B0,$09,$E8,$8A,$29,$03,$AA,$E6,$81,$10,$A6,$86,$D7,$A6,$BE,$84
       .byte $BE,$20,$7C,$1F,$A5,$D7,$C9,$08,$D0,$0B,$A9,$D0,$85,$EA,$A9,$00
       .byte $85,$19,$4C,$6B,$15,$A5,$BD,$85,$88,$A2,$00,$A0,$00,$20,$ED,$1B
       .byte $85,$80,$38,$E9,$12,$10,$02,$49,$FF,$85,$83,$A6,$D9,$E0,$12,$B0
       .byte $02,$90,$12,$E0,$36,$90,$0A,$E0,$5A,$B0,$02,$90,$08,$E0,$7E,$B0
       .byte $04,$A9,$15,$D0,$02,$A9,$11,$C5,$E3,$85,$E3,$F0,$08,$A5,$D7,$C9
       .byte $04,$F0,$02,$C6,$FD,$A5,$DE,$4A,$4A,$4A,$4A,$18,$69,$02,$AA,$A5
       .byte $D7,$A8,$6A,$8A,$B0,$04,$49,$FF,$69,$01,$85,$81,$A5,$BE,$4A,$4A
       .byte $AA,$C0,$02,$B0,$14,$A5,$E9,$18,$65,$81,$30,$08,$C9,$7B,$90,$06
       .byte $E9,$7B,$10,$02,$69,$7B,$4C,$EE,$14,$A5,$80,$4A,$7D,$1D,$1F,$85
       .byte $E9,$20,$93,$1F,$85,$02,$88,$D0,$FD,$84,$14,$85,$24,$A2,$01,$A0
       .byte $00,$20,$ED,$1B,$85,$80,$A5,$D7,$A8,$29,$02,$F0,$18,$A5,$EA,$18
       .byte $65,$81,$10,$0E,$C9,$F6,$90,$04,$69,$C8,$30,$06,$C9,$C8,$90,$02
       .byte $E9,$C8,$4C,$2F,$15,$A5,$BE,$29,$03,$AA,$A5,$80,$18,$7D,$DF,$1E
       .byte $85,$EA,$A5,$80,$E9,$12,$10,$02,$49,$FF,$65,$83,$4A,$4A,$85,$84
       .byte $A9,$0A,$38,$E5,$84,$AA,$C0,$04,$90,$19,$C0,$04,$F0,$04,$A0,$01
       .byte $D0,$02,$A0,$08,$A5,$E3,$29,$04,$D0,$02,$A2,$00,$A9,$0C,$38,$E5
       .byte $BD,$10,$03,$98,$A0,$0E,$85,$17,$86,$19,$84,$15,$A5,$ED,$D0,$0D
       .byte $85,$19,$85,$1A,$A9,$CC,$85,$EB,$85,$EC,$4C,$F9,$17,$A5,$D6,$D0
       .byte $03,$4C,$CD,$16,$C9,$01,$F0,$0A,$C9,$02,$D0,$03,$4C,$23,$16,$4C
       .byte $6F,$16,$20,$E3,$1E,$E6,$EF,$A9,$16,$E5,$EF,$E5,$EF,$85,$18,$A4
       .byte $EE,$A5,$EC,$A6,$E6,$18,$7D,$2D,$1F,$88,$10,$FA,$85,$EC,$DD,$D7
       .byte $1E,$B0,$14,$A4,$EE,$A6,$E7,$A5,$E5,$38,$FD,$31,$1F,$88,$10,$FA
       .byte $85,$E5,$DD,$DB,$1E,$B0,$5A,$A2,$02,$86,$D6,$A9,$07,$85,$FA,$CA
       .byte $86,$EF,$A5,$E7,$A8,$0A,$0A,$05,$E6,$AA,$A5,$E9,$38,$F9,$1D,$1F
       .byte $30,$12,$C9,$14,$B0,$0E,$A4,$E6,$A5,$EA,$38,$F9,$DF,$1E,$30,$04
       .byte $C9,$24,$90,$0A,$2C,$82,$02,$50,$1E,$20,$7C,$1F,$D0,$19,$86,$BE
       .byte $B5,$C6,$85,$FC,$A0,$04,$94,$C6,$84,$D7,$88,$84,$D6,$A9,$00,$85
       .byte $FA,$85,$FD,$A5,$E7,$85,$E8,$A9,$08,$85,$16,$A9,$0A,$85,$1A,$85
       .byte $19,$4C,$AC,$17,$20,$E3,$1E,$C6,$EF,$D0,$42,$A9,$01,$85,$EF,$C6
       .byte $FA,$30,$20,$A6,$FA,$A4,$E6,$B9,$D7,$1E,$18,$7D,$0D,$1F,$85,$EB
       .byte $B9,$D7,$1E,$38,$FD,$0D,$1F,$85,$EC,$A9,$0F,$E5,$FA,$E5,$FA,$85
       .byte $18,$10,$1A,$A2,$00,$86,$D6,$86,$EC,$86,$1A,$E8,$86,$16,$A9,$08
       .byte $85,$FA,$A6,$E6,$BD,$D7,$1E,$85,$EB,$A9,$7B,$85,$E5,$4C,$AC,$17
       .byte $A5,$E5,$85,$E7,$A5,$EB,$85,$EC,$A5,$FD,$18,$69,$01,$0A,$85,$88
       .byte $A2,$02,$A0,$01,$20,$ED,$1B,$AA,$A5,$BE,$4A,$4A,$A8,$8A,$4A,$79
       .byte $1D,$1F,$85,$E5,$A2,$03,$A0,$01,$20,$ED,$1B,$AA,$A5,$BE,$29,$03
       .byte $A8,$8A,$79,$DF,$1E,$85,$EB,$A5,$BE,$29,$04,$F0,$08,$A5,$E7,$69
       .byte $02,$85,$E7,$D0,$0C,$A5,$E7,$E9,$02,$85,$E7,$A5,$E5,$69,$02,$85
       .byte $E5,$A5,$E1,$29,$07,$09,$0C,$85,$18,$85,$1A,$4C,$AC,$17,$A5,$F9
       .byte $C9,$03,$D0,$04,$A9,$00,$85,$1A,$20,$E3,$1E,$D0,$0C,$C6,$F9,$D0
       .byte $05,$98,$49,$FF,$90,$03,$4C,$95,$17,$A8,$A5,$BC,$C9,$06,$90,$2B
       .byte $C9,$11,$B0,$19,$98,$29,$C0,$A8,$A5,$BE,$29,$03,$C5,$E6,$F0,$0A
       .byte $98,$90,$04,$09,$10,$D0,$02,$09,$20,$A8,$4C,$1A,$17,$98,$29,$C3
       .byte $85,$80,$0A,$0A,$0A,$0A,$05,$80,$29,$F0,$A8,$A2,$07,$A5,$DE,$F0
       .byte $10,$CA,$C9,$03,$90,$0B,$CA,$C9,$12,$90,$06,$CA,$C9,$20,$90,$01
       .byte $CA,$86,$F9,$A2,$00,$86,$DF,$86,$81,$A2,$0F,$98,$29,$C0,$F0,$1D
       .byte $30,$0E,$A5,$E7,$F0,$17,$38,$E9,$01,$85,$E7,$86,$81,$4C,$5C,$17
       .byte $A5,$E7,$C9,$03,$F0,$07,$18,$69,$01,$85,$E7,$86,$81,$98,$29,$30
       .byte $F0,$23,$C9,$10,$D0,$10,$A5,$E6,$C9,$03,$F0,$19,$18,$69,$01,$85
       .byte $E6,$86,$81,$4C,$84,$17,$C9,$20,$D0,$0B,$A5,$E6,$F0,$07,$38,$E9
       .byte $01,$85,$E6,$86,$81,$A5,$81,$85,$1A,$A6,$E6,$BD,$D7,$1E,$85,$EB
       .byte $8A,$18,$65,$E7,$85,$18,$A5,$3C,$10,$04,$A5,$3D,$30,$0F,$A2,$00
       .byte $86,$EF,$E8,$86,$D6,$86,$F9,$A9,$08,$85,$1A,$85,$16,$A5,$E5,$A6
       .byte $D6,$E0,$02,$D0,$0A,$A6,$E7,$BD,$DB,$1E,$A4,$FA,$79,$FD,$1E,$20
       .byte $93,$1F,$85,$02,$88,$D0,$FD,$84,$12,$85,$22,$A5,$E7,$A6,$D6,$E0
       .byte $03,$F0,$0D,$A8,$B9,$DB,$1E,$E0,$02,$D0,$05,$A4,$FA,$79,$05,$1F
       .byte $20,$93,$1F,$85,$02,$88,$D0,$FD,$84,$13,$85,$23,$A9,$15,$85,$A7
       .byte $A4,$FA,$C0,$08,$D0,$02,$A9,$35,$85,$A1,$A5,$E1,$29,$03,$C9,$02
       .byte $D0,$0F,$A2,$0F,$B5,$C6,$10,$06,$E9,$01,$09,$80,$95,$C6,$CA,$10
       .byte $F3,$A5,$E0,$18,$69,$0C,$4A,$4A,$A8,$4A,$4A,$AA,$A5,$E1,$3D,$48
       .byte $1F,$DD,$50,$1F,$D0,$0A,$A9,$09,$85,$19,$84,$17,$A9,$01,$85,$15
       .byte $D0,$02
L1831: STA    HMCLR   
       LDA    $ED     
       BNE    L183E   
       STA    AUDV0   
       STA    AUDV1   
       JMP    L1871   
L183E: LDA    $85     
       BEQ    L1871   
       JSR    L1FD0   
       STA    $80     
       LDA    $C3     
       STA    $86     
       LDY    #$02    
       CLC            
       SED            
L184F: LDA.wy $00C2,Y 
       ADC    $85     
       STA.wy $00C2,Y 
       LDA    #$00    
       STA    $85     
       DEY            
       BPL    L184F   
       CLD            
       LDA    $C3     
       CMP    $86     
       BEQ    L1871   
       AND    #$0F    
       CMP    $80     
       BNE    L1871   
       STY    $FD     
       LDA    #$04    
       STA    $C5     
L1871: LDY    $C5     
       CPY    #$03    
       BNE    L1882   
       LDX    #$80    
       JSR    L1C3D   
       LDY    $BC     
       STY    $82     
       LDY    $C5     
L1882: CPY    #$03    
       BNE    L188A   
       LDA    #$02    
       BNE    L1898   
L188A: LDA    $ED     
       BEQ    L1892   
       LDA    #$00    
       BEQ    L1898   
L1892: LDA    $E1     
       ROL            
       LDA    #$00    
       ROL            
L1898: TAX            
       LDA    L1F62,X 
       STA    $8C     
L189E: LDY    INTIM   
       BNE    L189E   
       STY    WSYNC   
       STY    VBLANK  
       LDX    #$0A    
       ADC    #$80    
L18AB: LDY    #$00    
       LDA    ($8C),Y 
       STA    $80     
       INC    $8C     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    L1FE6   
       LDA    $80     
       AND    #$0F    
       JSR    L1FE6   
       BPL    L18AB   
       BVC    L18CB   
       LDA    #$EC    
       STA    $80     
       BNE    L18CE   
L18CB: NOP            
       LDA    ($80),Y 
L18CE: LDA    $DE     
       CLC            
       ADC    #$0E    
       AND    #$0F    
       TAY            
       LDA    L1EC7,Y 
       STA    COLUPF  
       NOP            
       NOP            
       LDA    #$00    
       STA    $8D     
       LDA    #$1D    
       STA    $81     
       STA    $83     
       STA    $85     
       STA    $87     
       STA    $89     
       STA    $8B     
       NOP            
       NOP            
       LDY    #$0A    
       STY    $8D     
       LDY    #$05    
       JMP    L191D   
L18FA: LDA    ($88),Y 
       STA    GRP1    
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($84),Y 
       TAX            
       LDA    ($82),Y 
       STA    $8C     
       LDA    ($80),Y 
       LDY    $8C     
       STX    GRP1    
       STY    GRP0    
       STA    GRP1    
       STA    GRP0    
       DEC    $8D     
       LDA    $8D     
       BEQ    L1924   
       LSR            
       TAY            
L191D: LDA    ($8A),Y 
       STA    GRP0    
       JMP    L18FA   
L1924: LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDA    $E1     
       AND    #$01    
       TAX            
       LDA    L1FFE,X 
       LDX    $E3     
       STX    CTRLPF  
       STX    $80     
       LDX    #$15    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    RESP0   
       LDX    #$0E    
       STA    HMP0    
       STA    $80     
       STA    RESP1   
       STA    HMP1    
       LDY    #$08    
       STY    $DD     
       LDY    #$00    
       JSR    L1FE5   
       LDA    ($80,X) 
       STY    PF2     
       STY    PF1     
       STY    PF0     
L195D: LDA    L1000,X 
       STA    $80,X   
       DEX            
       BPL    L195D   
       LDX    #$0F    
       STX    COLUPF  
       LDX    #$02    
       JSR    L1FB8   
       ADC    #$10    
       LDY    $FA     
       ADC    L1D98,Y 
       STA    $F7     
       JSR    L1FB8   
       ADC    #$10    
       STA    $F5     
       JSR    L1FB8   
       STA    WSYNC   
       STA    HMOVE   
       ADC    #$10    
       STA    $F3     
       LDX    #$08    
       DEX            
       STX    $DD     
       TXA            
       LSR            
       TAX            
       ASL            
       AND    #$02    
       CLC            
       ADC    $DE     
       ADC    $CA,X   
       ADC    $D2,X   
       AND    #$0F    
       TAY            
       LDA    L1EC7,Y 
       STA    COLUP1  
       TXA            
       ASL            
       AND    #$02    
       EOR    #$02    
       CLC            
       ADC    $DE     
       ADC    $C6,X   
       ADC    $CE,X   
       AND    #$0F    
       TAY            
       LDA    L1EC7,Y 
       STA    COLUP0  
       LDY    #$0C    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F7),Y 
       STA    ENAM1   
       LDA    $E1     
       AND    #$01    
       TAY            
       LDA    L1DFE,Y 
       STA    $80     
       LDA    #$1D    
       STA    $81     
       LDA    L1F7A,Y 
       STA    REFP0   
       STA    REFP1   
       LDY    #$0B    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F7),Y 
       STA    ENAM1   
       LDA    $C6,X   
       AND    #$07    
       TAY            
       LSR            
       LSR            
       CLC            
       ADC    #$1D    
       STA    $8C     
       LDA    L1F15,Y 
       ADC    ($80),Y 
       STA    $8B     
       LDY    #$0A    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F7),Y 
       STA    ENAM1   
       LDA    $CA,X   
       AND    #$07    
       TAY            
       LSR            
       LSR            
       CLC            
       ADC    #$1D    
       STA    $91     
       LDA    L1F15,Y 
       ADC    ($80),Y 
       STA    $90     
       LDY    #$09    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F7),Y 
       STA    ENAM1   
       LDA    $CE,X   
       AND    #$07    
       TAY            
       LSR            
       LSR            
       CLC            
       ADC    #$1D    
       STA    $96     
       LDA    L1F15,Y 
       STA    $95     
       LDY    #$08    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F7),Y 
       STA    ENAM1   
       LDA    $D2,X   
       AND    #$07    
       TAY            
       LSR            
       LSR            
       CLC            
       ADC    #$1D    
       STA    $9B     
       LDA    L1F15,Y 
       STA    $9A     
       LDA    #$8D    
       STA    $80     
       LDA    #$1D    
       STA    $81     
       LDY    #$07    
       LDX    #$02    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F7),Y 
       STA    ENAM1   
       JSR    L1FB8   
       LDY    #$06    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F7),Y 
       STA    ENAM1   
       JSR    L1FB8   
       STA    $AF     
       LDY    #$05    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F7),Y 
       STA    ENAM1   
       JSR    L1FB8   
       STA    $86     
       LDY    #$04    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F5),Y 
       STA    ENAM0   
       LDA    ($F7),Y 
       STA    ENAM1   
       LDA    $F2     
       LDY    $FA     
       ADC    L1D98,Y 
       STA    $B2     
       DEC    $DD     
       LDY    #$03    
       LDX    #$02    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F5),Y 
       STA    ENAM0   
       LDA    ($F7),Y 
       STA    ENAM1   
       JSR    L1FB8   
       LDY    #$02    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F5),Y 
       STA    ENAM0   
       LDA    ($F7),Y 
       STA    ENAM1   
       JSR    L1FB8   
       LDY    #$01    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F5),Y 
       STA    ENAM0   
       LDA    ($F7),Y 
       STA    ENAM1   
       JSR    L1FB8   
       LDY    #$00    
       STA    WSYNC   
       LDA    ($F3),Y 
       STA    ENABL   
       LDA    ($F5),Y 
       STA    ENAM0   
       LDA    ($F7),Y 
       STA    ENAM1   
       LDA    $F0     
       STA    $F3     
       LDA    $F1     
       STA    $F5     
       LDA    $F2     
       LDY    $FA     
       ADC    L1D98,Y 
       STA    $F7     
       LDA    #$15    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$18    
       LDA    ($B2),Y 
       TAX            
       LDA    ($AF),Y 
       JMP.w  $0080   
L1B13: .byte $C8,$84,$1C,$84,$1B,$A0,$18,$B1,$F3,$85,$1F,$B1,$F5,$85,$1D,$B1
       .byte $F7,$85,$1E,$88,$C0,$10,$D0,$07,$A6,$DD,$F0,$07,$4C,$8B,$19,$85
       .byte $02,$D0,$E4,$85,$02,$86,$1E,$86,$1D,$86,$1F,$86,$08,$A2,$03,$20
       .byte $E5,$1F,$EA,$85,$2B,$86,$04,$84,$10,$84,$11,$86,$20,$84,$21,$86
       .byte $05,$84,$0B,$84,$0C,$A9,$0A,$A6,$C5,$E0,$03,$F0,$1B,$A6,$ED,$D0
       .byte $19,$A9,$04,$A6,$FB,$F0,$13,$A6,$E1,$30,$0F,$8A,$4A,$4A,$4A,$4A
       .byte $29,$01,$AA,$BD,$D3,$1E,$D0,$02,$A9,$16,$85,$06,$85,$07,$A9,$8C
       .byte $8D,$95,$02,$A9,$FF,$85,$80,$85,$81,$85,$82,$20,$D0,$1F,$BC,$58
       .byte $1F,$84,$84,$BC,$5D,$1F,$84,$85,$C9,$00,$D0,$02,$A9,$0A,$85,$83
       .byte $A5,$C3,$29,$0F,$A8,$A5,$C4,$4A,$4A,$4A,$4A,$F0,$0C,$AA,$A9,$00
       .byte $18,$65,$85,$E8,$E0,$0A,$D0,$F8,$C8,$C4,$83,$B0,$04,$65,$84,$10
       .byte $F7,$4A,$4A,$AA,$A5,$C5,$C9,$04,$F0,$0C,$18,$66,$82,$26,$81,$66
       .byte $80,$CA,$F0,$02,$10,$F4,$AE,$84,$02,$D0,$FB,$A5,$80,$85,$0D,$A5
       .byte $81,$85,$0E,$A5,$82,$85,$0F,$4C,$1F,$11,$A5,$D8,$3D,$21,$1F,$D0
       .byte $08,$B5,$D9,$18,$65,$88,$4C,$01,$1C,$B5,$D9,$38,$E5,$88,$C9,$F6
       .byte $B0,$07,$D9,$29,$1F,$90,$12,$B0,$07,$A5,$D8,$5D,$FA,$1D,$85,$D8
       .byte $A5,$D8,$5D,$21,$1F,$85,$D8,$B5,$D9,$95,$D9,$B9,$25,$1F,$85,$89
       .byte $B9,$27,$1F,$85,$8A,$A5,$D8,$3D,$FA,$1D,$D0,$05,$B4,$D9,$B1,$89
       .byte $60,$B9,$2B,$1F,$B4,$D9,$38,$F1,$89,$60
L1C3D: LDA    $BC     
       SED            
L1C40: CMP    #$06    
       BCC    L1C48   
       SBC    #$05    
       BPL    L1C40   
L1C48: TAY            
       CLD            
       LDA    L1F72,Y 
       STA    VSYNC,X 
       LDA    L1F68,Y 
       STA    VBLANK,X
       LDA    #$00    
       STA    WSYNC,X 
       RTS            

L1C59: LDA    #$07    
       LDX    #$0F    
L1C5D: STA    $C6,X   
       DEX            
       BPL    L1C5D   
       RTS            

L1C63: .byte $00,$1B,$19,$18,$17,$15,$14,$12,$11,$0F,$0E,$0C,$0B,$09,$08,$06
       .byte $05,$04,$03,$02,$02,$01,$01,$00,$00,$00,$00,$00,$01,$01,$01,$02
       .byte $03,$04,$05,$06,$07,$08,$09,$0B,$0D,$0E,$0F,$10,$12,$14,$15,$16
       .byte $17,$19,$1A,$1B,$1C,$1D,$1E,$1F,$1F,$1F,$20,$20,$20,$20,$20,$20
       .byte $20,$1F,$1F,$1E,$1E,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$15,$13,$12
       .byte $11,$0F,$0E,$0C,$0B,$0A,$09,$08,$07,$06,$05,$05,$04,$04,$03,$03
       .byte $03,$03,$03,$03,$03,$03,$04,$05,$05,$06,$07,$08,$09,$0A,$0C,$0D
       .byte $0E,$10,$11,$12,$13,$14,$14,$15,$15,$16,$16,$16,$16,$16,$15,$15
       .byte $15,$14,$14,$13,$13,$12,$11,$11,$11,$10,$10,$0F,$0F,$0F,$0F,$0E
       .byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$00,$00,$00
       .byte $00,$00,$00,$10,$30,$30,$38,$38,$38,$38,$38,$38,$30,$30,$10,$00
       .byte $00,$00,$00,$00,$00,$00,$08,$18,$18,$1C,$1C,$1C,$1C,$1C,$1C,$18
       .byte $18,$08,$00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$30,$30,$30,$30
       .byte $10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$18,$18
       .byte $18,$18,$08,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$10
       .byte $10,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$08
       .byte $08,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$02,$02,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00
L1D98: .byte $00,$00,$00,$00,$00,$00,$00,$00,$27,$02,$02,$02,$02,$02,$02,$02
       .byte $02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$04,$04,$04,$04,$1C,$1C,$04,$04,$FE
       .byte $FE,$84,$84,$1E,$02,$FE,$82,$FE,$FE,$82,$FE,$82,$FE,$02,$FE,$80
       .byte $FE,$FE,$82,$FE,$80,$F0,$02,$02,$02,$02,$FE,$FE,$02,$FE,$02,$FE
       .byte $FE,$80,$FE,$02,$FE,$FE,$82,$82,$82,$FE,$00,$0F,$12,$13,$14,$16
       .byte $18,$19,$10,$20,$40,$80
L1DFE: .byte $65,$F2,$10,$38,$78,$7C,$7C,$FC,$FC,$FC,$FE,$FE,$FE,$FE,$FE,$FE
       .byte $FE,$FE,$FE,$FC,$FC,$FC,$7C,$7C,$78,$38,$10,$08,$1C,$3C,$3E,$3E
       .byte $7E,$7E,$7E,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7E,$7E,$7E,$3E
       .byte $3E,$3C,$1C,$08,$00,$10,$38,$38,$78,$7C,$7C,$7C,$FC,$FC,$FC,$FC
       .byte $FC,$FC,$FC,$FC,$7C,$7C,$7C,$78,$38,$38,$10,$00,$00,$08,$1C,$1C
       .byte $3C,$3E,$3E,$3E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$3E,$3E,$3E,$3C
       .byte $1C,$1C,$08,$00,$00,$00,$10,$30,$38,$78,$78,$78,$7C,$7C,$7C,$7C
       .byte $7C,$7C,$78,$78,$78,$38,$30,$10,$00,$00,$00,$00,$08,$18,$1C,$3C
       .byte $3C,$3C,$3E,$3E,$3E,$3E,$3E,$3E,$3C,$3C,$3C,$1C,$18,$08,$00,$00
       .byte $00,$00,$00,$10,$30,$38,$38,$38,$78,$78,$78,$78,$38,$38,$38,$30
       .byte $10,$00,$00,$00,$00,$00,$00,$08,$18,$1C,$1C,$1C,$3C,$3C,$3C,$3C
       .byte $1C,$1C,$1C,$18,$08,$00,$00,$00,$00,$00,$00,$13,$11,$11,$11,$11
       .byte $12,$12,$0F,$A5,$AD,$7F,$C9,$36,$62
L1EC7: .byte $66,$74,$16,$28,$58,$A6,$B4,$62,$54,$76,$88,$34,$56,$26,$B6,$46
L1ED7: .byte $AB,$7A,$49,$16,$0B,$2C,$4B,$6C,$9B,$69,$37,$06,$A5,$DF,$D0,$0C
       .byte $AC,$80,$02,$98,$45,$E4,$25,$E4,$84,$E4,$85,$DF,$60
L1EF4: LDA    #$CC    
       STA    $EA     
       STA    $EB     
       STA    $EC     
       RTS            

L1EFD: .byte $05,$05,$04,$04,$03,$03,$01,$01,$F8,$F8,$F9,$F9,$FA,$FA,$FC,$FC
       .byte $0A,$F6,$09,$F7,$07,$F9,$04,$FC
L1F15: .byte $83,$47,$25,$00,$8C,$61,$32,$00,$02,$23,$42,$63,$01,$02,$04,$08
       .byte $6A,$6A,$1C,$1C,$8F,$12,$23,$23,$11,$0C,$07,$02,$0C,$08,$05,$01
L1F35: .byte $EC,$BF,$E7,$E2,$C5,$D4,$D8,$DE,$CF,$CB
L1F3F: .byte $B8,$9F,$86,$6D,$54,$3B,$22,$09,$00,$01,$03,$07,$0F,$1F,$3F,$7F
       .byte $FF,$01,$02,$04,$08,$10,$20,$40,$80,$60,$28,$1E,$10,$10,$08,$04
       .byte $03,$02,$02
L1F62: .byte $C2,$BF,$80
L1F65: .byte $01,$03,$06
L1F68: .byte $05,$00,$35,$75,$10
L1F6D: .byte $40
L1F6E: .byte $00,$09,$17,$24
L1F72: .byte $30,$00,$00,$00,$01,$01,$FC,$04
L1F7A: .byte $01,$FF,$B5,$C6,$30,$12,$D6,$C6,$D0,$02,$D6,$C6,$C6,$E0,$D0,$08
       .byte $A9,$06,$85,$C5,$A9,$C0,$85,$FD,$60,$18,$69,$12,$69,$04,$85,$80
       .byte $4A,$4A,$4A,$4A,$38,$65,$80,$4A,$4A,$4A,$4A,$18,$69,$04,$A8,$65
       .byte $80,$E9,$03,$29,$0F,$E9,$08,$49,$FF,$0A,$0A,$0A,$0A,$60
L1FB8: LDY    $DD     
       LDA    $EA,X   
       SEC            
       SBC    L1F3F,Y 
       BMI    L1FC8   
       CMP    #$1D    
       BEQ    L1FCA   
       BCC    L1FCA   
L1FC8: LDA    #$1E    
L1FCA: ADC    #$64    
       STA    $F0,X   
       DEX            
       RTS            

L1FD0: LDX    $DE     
       CPX    #$03    
       BCC    L1FE2   
       LDX    #$03    
       LDA    $C3     
       AND    #$0F    
       SBC    #$05    
       BMI    L1FE2   
       LDX    #$04    
L1FE2: LDA    L1F65,X 
L1FE5: RTS            

L1FE6: BNE    L1FF0   
       BVC    L1FF1   
       LDA    #$B3    
       NOP            
       NOP            
       BNE    L1FF6   
L1FF0: NOP            
L1FF1: CLV            
       TAY            
       LDA    L1F35,Y 
L1FF6: STA    $80,X   
       DEX            
       DEX            
       RTS            

L1FFB: .byte $00,$4E,$10
L1FFE: .byte $D0,$E0
