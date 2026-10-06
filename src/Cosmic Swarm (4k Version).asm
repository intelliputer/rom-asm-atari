; Disassembly of roms/Cosmic Swarm (4k Version).bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Cosmic Swarm (4k Version).bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMOVE   =  $2A
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
LF801   =   $F801

       ORG $F000
LF000: .byte $84,$FB,$EA,$8D,$1C,$01,$4C,$4D,$F8,$84,$FA,$EA,$C6,$F9,$30,$69
       .byte $8D,$1D,$01,$A9,$00,$85,$0D,$8D,$1B,$01,$10,$0A,$85,$1D,$A9,$00
       .byte $85,$0D,$B1,$F3,$85,$1B,$B5,$80,$85,$0E,$B5,$96,$85,$0F,$B5,$AC
       .byte $85,$0D,$B4,$C2,$84,$0E,$29,$0F,$85,$0F,$A9,$00,$A4,$FB,$C8,$84
       .byte $FB,$85,$0D,$30,$BB,$C4,$F8,$10,$BA,$B1,$F6,$85,$1C,$A5,$F9,$C5
       .byte $D8,$08,$4A,$4A,$AA,$B5,$80,$85,$0E,$B5,$96,$85,$0F,$B5,$AC,$85
       .byte $0D,$B4,$C2,$84,$0E,$29,$0F,$85,$0F,$A4,$FA,$68,$C8,$84,$FA,$30
       .byte $98,$C4,$F5,$10,$97,$C6,$F9,$10,$A3,$A9,$00,$85,$0D,$85,$1B,$85
       .byte $1C,$85,$1D,$85,$0E,$85,$0F,$A5,$E7,$29,$07,$AA,$BD,$FC,$FE,$85
       .byte $02,$85,$09,$A9,$57,$38,$E5,$D8,$85,$D8,$A9,$1F,$8D,$96,$02,$4C
       .byte $FA,$FB,$E0,$02,$69,$10,$A8,$29,$0F,$85,$F3,$98,$4A,$4A,$4A,$4A
       .byte $A8,$18,$65,$F3,$C9,$0F,$90,$03,$E9,$0F,$C8,$49,$07,$0A,$85,$02
       .byte $0A,$0A,$0A,$95,$20,$88,$10,$FD,$95,$10,$60,$29,$F0,$4A,$4A,$85
       .byte $FD,$4A,$4A,$90,$06,$29,$0F,$85,$FD,$0A,$0A,$65,$FD,$85,$FD,$8A
       .byte $65,$FD,$A8,$B9,$F5,$F8,$60,$80,$80,$00,$80,$00,$00,$01,$00,$01
       .byte $01,$03,$01,$03,$03,$24,$5A,$5A,$5A,$24,$24,$24,$24,$24,$24,$7E
       .byte $42,$7E,$18,$7E,$7E,$42,$7E,$42,$7E,$5A,$5A,$7E,$42,$42,$7E,$18
       .byte $7E,$42,$7E,$7E,$18,$7E,$5A,$7E,$7E,$42,$42,$42,$42,$7E,$5A,$7E
       .byte $5A,$7E,$7E,$5A,$7E,$42,$7E,$A9,$40,$85,$F2,$85,$19,$85,$1A,$20
       .byte $61,$FA,$A5,$E7,$29,$07,$85,$E7,$A2,$04,$A5,$EA,$20,$D5,$F8,$29
       .byte $0F,$95,$F3,$A5,$E9,$20,$D5,$F8,$29,$F0,$95,$F8,$A5,$EA,$20,$CB
       .byte $F8,$0A,$0A,$0A,$0A,$15,$F3,$95,$F3,$A5,$E9,$20,$CB,$F8,$4A,$4A
       .byte $4A,$4A,$15,$F8,$95,$F8,$CA,$10,$D1,$A5,$E7,$29,$07,$AA,$BD,$F4
       .byte $FE,$85,$08,$BD,$F8,$FE,$85,$06,$85,$07,$AD,$84,$02,$D0,$FB,$85
       .byte $02,$85,$2A,$85,$01,$BD,$EC,$FE,$85,$09,$AA,$A5,$E8,$29,$70,$4A
       .byte $4A,$4A,$A8,$B9,$E7,$F8,$85,$04,$10,$02,$86,$06,$B9,$E8,$F8,$85
       .byte $05,$10,$02,$86,$07,$A0,$00,$85,$02,$98,$4A,$AA,$B5,$F3,$85,$0E
       .byte $B5,$F8,$85,$0F,$BD,$77,$FF,$85,$1B,$85,$1C,$A2,$00,$C8,$A5,$E6
       .byte $86,$0E,$29,$01,$C0,$0A,$86,$0F,$30,$DD,$49,$01,$85,$F9,$A5,$F2
       .byte $0A,$A5,$E7,$E6,$E6,$D0,$02,$69,$07,$85,$E7,$29,$07,$AA,$86,$F8
       .byte $0A,$65,$F9,$A8,$B9,$8B,$FA,$85,$06,$B9,$8F,$FA,$85,$07,$BD,$F0
       .byte $FE,$85,$08,$A6,$F9,$B5,$DE,$A2,$00,$20,$A2,$F8,$86,$04,$86,$05
       .byte $A6,$F9,$B5,$E0,$A2,$01,$20,$A2,$F8,$A5,$DD,$E8,$20,$A2,$F8,$A6
       .byte $F9,$B5,$D9,$49,$FF,$85,$FA,$B5,$DB,$49,$FF,$85,$FB,$B4,$E2,$B9
       .byte $00,$FF,$85,$F3,$B9,$01,$FF,$85,$F4,$B9,$02,$FF,$85,$F5,$B4,$E4
       .byte $A6,$F8,$BD,$FC,$FE,$85,$02,$85,$2A,$85,$09,$85,$02,$06,$F9,$BD
       .byte $EC,$FE,$85,$09,$B9,$00,$FF,$85,$F6,$B9,$01,$FF,$85,$F7,$B9,$02
       .byte $FF,$85,$F8,$A9,$57,$85,$F9,$38,$E5,$D8,$85,$D8,$A2,$15,$4C,$3A
       .byte $F8,$AE,$84,$02,$D0,$FB,$A9,$2A,$85,$02,$85,$01,$85,$00,$8D,$95
       .byte $02,$A9,$68,$20,$A2,$F8,$E8,$A9,$70,$20,$A2,$F8,$AD,$84,$02,$D0
       .byte $FB,$85,$02,$85,$00,$A9,$28,$8D,$96,$02,$60,$09,$59,$09,$59,$89
       .byte $19,$89,$19,$FE,$FE,$FE,$FF,$00,$01,$02,$02,$02,$02,$02,$01,$00
       .byte $FF,$FE,$FE,$00,$01,$02,$02,$02,$02,$02,$01,$00,$FF,$FE,$FE,$FE
       .byte $FE,$FE,$FF,$80,$40,$20,$10,$08,$04,$02,$01,$C9,$90,$90,$03,$A9
       .byte $FF,$60,$E9,$0F,$90,$F9,$29,$FC,$AA,$BD,$EB,$FE,$A8,$29,$03,$0A
       .byte $0A,$AA,$A5,$F3,$4A,$4A,$C9,$16,$B0,$E5,$85,$F9,$BD,$F2,$FE,$E5
       .byte $F9,$AA,$98,$4A,$4A,$A8,$60,$A5,$DD,$38,$F5,$DF,$90,$F8,$C9,$08
       .byte $B0,$F4,$85,$F9,$A5,$D8,$38,$F5,$DA,$30,$EB,$B4,$E3,$38,$F9,$02
       .byte $FF,$B0,$E3,$C9,$FD,$30,$1B,$A5,$F9,$C9,$02,$30,$15,$C9,$06,$10
       .byte $11,$98,$29,$F8,$C9,$48,$D0,$0A,$A9,$01,$05,$E7,$85,$E7,$A0,$03
       .byte $D0,$0E,$A5,$E7,$29,$F8,$85,$E7,$20,$AC,$FB,$A0,$01,$B0,$01,$C8
       .byte $A9,$D0,$85,$D8,$85,$19,$A9,$50,$D5,$E3,$95,$E3,$98,$B0,$05,$60
       .byte $A9,$01,$A0,$04,$18,$F8,$65,$E9,$85,$E9,$90,$14,$65,$EA,$D8,$85
       .byte $EA,$A5,$E8,$29,$70,$C9,$60,$10,$07,$A9,$10,$A8,$65,$E8,$85,$E8
       .byte $D8,$98,$29,$1C,$05,$F2,$85,$F2,$60,$A9,$3C,$85,$E2,$A9,$80,$05
       .byte $F1,$85,$F1,$60,$A4,$E6,$B9,$00,$F8,$C9,$98,$90,$02,$29,$7F,$95
       .byte $DF,$A9,$E8,$95,$DA,$B9,$01,$F8,$45,$E6,$45,$D9,$C9,$98,$90,$02
       .byte $29,$7F,$95,$EE,$B9,$02,$F8,$45,$DE,$45,$DD,$4A,$C9,$57,$90,$02
       .byte $29,$3F,$38,$E9,$0E,$95,$EB,$A9,$48,$95,$E3,$60,$B4,$E3,$98,$29
       .byte $F8,$C9,$48,$86,$F5,$D0,$20,$B5,$DA,$79,$02,$FF,$38,$E9,$03,$85
       .byte $F3,$B5,$DF,$18,$69,$03,$20,$BB,$FA,$30,$0C,$B9,$B3,$FA,$15,$80
       .byte $D5,$80,$18,$95,$80,$D0,$01,$38,$A6,$F5,$B0,$06,$B5,$E3,$29,$F7
       .byte $95,$E3,$60,$78,$D8,$A9,$00,$AA,$95,$00,$9A,$E8,$D0,$FA,$A9,$38
       .byte $85,$E8,$A9,$48,$85,$E3,$85,$E4,$85,$E5,$4E,$82,$02,$A9,$80,$24
       .byte $F2,$B0,$0F,$70,$DE,$85,$F2,$A9,$96,$85,$E9,$A9,$99,$85,$EA,$4C
       .byte $2F,$F9,$10,$FB,$A5,$F2,$09,$40,$85,$F2,$A6,$D8,$10,$10,$29,$1F
       .byte $85,$19,$F0,$0A,$C6,$F2,$85,$17,$A9,$0C,$85,$15,$85,$19,$A2,$02
       .byte $A5,$F1,$30,$57,$18,$A5,$DE,$69,$04,$38,$F5,$DF,$90,$34,$C9,$0A
       .byte $B0,$30,$A5,$D9,$69,$04,$38,$F5,$DA,$30,$27,$38,$E9,$03,$B4,$E3
       .byte $D9,$02,$FF,$10,$1D,$C0,$3C,$10,$0C,$A5,$E7,$29,$3F,$85,$E7,$A9
       .byte $20,$85,$16,$10,$0B,$20,$40,$FB,$20,$69,$FB,$20,$AC,$FB,$A9,$50
       .byte $95,$E3,$CA,$10,$BF,$A5,$E4,$05,$E3,$C9,$50,$10,$0E,$A5,$E5,$C9
       .byte $08,$10,$08,$85,$18,$A9,$06,$85,$1A,$85,$16,$A5,$E6,$29,$03,$AA
       .byte $A8,$D0,$06,$2C,$82,$02,$50,$34,$E8,$CA,$B5,$E3,$C9,$50,$30,$1F
       .byte $88,$30,$29,$69,$03,$95,$E3,$F6,$DA,$A0,$08,$84,$16,$4A,$E9,$33
       .byte $49,$FF,$A8,$B9,$00,$F8,$85,$18,$C8,$84,$1A,$F0,$2C,$D0,$0D,$B4
       .byte $EE,$B5,$EB,$C0,$C0,$D0,$0E,$20,$AC,$FB,$B0,$03,$4C,$6C,$FD,$A4
       .byte $DE,$A5,$D9,$E9,$0C,$84,$FA,$85,$FB,$B5,$DF,$C5,$FA,$D0,$73,$B5
       .byte $DA,$C5,$FB,$D0,$75,$C9,$E9,$10,$32,$E0,$02,$D0,$29,$24,$E7,$10
       .byte $03,$4C,$27,$F9,$50,$20,$A5,$E7,$49,$C0,$85,$E7,$A0,$00,$84,$E5
       .byte $A5,$E6,$29,$04,$D0,$02,$A0,$97,$84,$E1,$84,$F0,$A0,$E8,$84,$DC
       .byte $A0,$60,$84,$ED,$D0,$56,$20,$74,$FB,$D0,$51,$B4,$E3,$C0,$3C,$10
       .byte $04,$A0,$E7,$D0,$29,$20,$AC,$FB,$B0,$1F,$A4,$E6,$2C,$82,$02,$10
       .byte $0B,$B9,$00,$F8,$30,$13,$29,$1F,$C5,$EA,$90,$0D,$B9,$01,$F8,$C9
       .byte $98,$90,$02,$29,$7F,$A0,$E7,$30,$03,$A9,$C0,$A8,$95,$EE,$94,$EB
       .byte $D0,$1A,$90,$04,$D6,$DF,$B0,$02,$F6,$DF,$B5,$DA,$C5,$FB,$30,$04
       .byte $D6,$DA,$D6,$DA,$F6,$DA,$B5,$E3,$49,$04,$95,$E3,$A5,$E6,$A6,$F1
       .byte $10,$32,$29,$03,$D0,$2C,$A5,$E2,$38,$E9,$04,$85,$E2,$D0,$1A,$85
       .byte $1A,$85,$DE,$85,$F1,$A5,$E8,$2C,$EE,$FE,$D0,$03,$4C,$27,$F9,$E9
       .byte $10,$85,$E8,$A9,$52,$85,$D9,$D0,$09,$4A,$85,$18,$A9,$0F,$85,$16
       .byte $85,$1A,$D0,$53,$4A,$B0,$50,$AC,$80,$02,$A6,$3C,$30,$18,$4A,$B0
       .byte $2C,$A5,$E2,$2C,$80,$02,$30,$04,$69,$04,$90,$04,$70,$1F,$E9,$03
       .byte $29,$3C,$85,$E2,$10,$17,$A6,$DE,$98,$30,$08,$E0,$97,$B0,$0E,$E6
       .byte $DE,$D0,$0A,$29,$40,$D0,$06,$E0,$01,$90,$02,$C6,$DE,$98,$A6,$D9
       .byte $29,$20,$D0,$08,$E0,$52,$B0,$0F,$E6,$D9,$D0,$0B,$98,$29,$10,$D0
       .byte $06,$E0,$01,$90,$02,$C6,$D9,$A5,$D9,$18,$69,$04,$85,$F3,$A5,$DE
       .byte $69,$05,$85,$FA,$20,$BB,$FA,$30,$07,$B9,$B3,$FA,$35,$80,$D0,$32
       .byte $A6,$DE,$E8,$8A,$85,$FB,$20,$BB,$FA,$30,$07,$B9,$B3,$FA,$35,$80
       .byte $D0,$20,$A5,$D9,$85,$F3,$A5,$FA,$20,$BB,$FA,$30,$07,$B9,$B3,$FA
       .byte $35,$80,$D0,$0E,$A5,$FB,$20,$BB,$FA,$30,$13,$B9,$B3,$FA,$35,$80
       .byte $F0,$0C,$49,$FF,$35,$80,$95,$80,$20,$40,$FB,$20,$69,$FB,$20,$61
       .byte $FA,$A5,$F1,$30,$34,$A6,$3C,$30,$08,$A9,$80,$05,$E8,$85,$E8,$30
       .byte $28,$A5,$E8,$10,$24,$29,$70,$85,$E8,$A5,$E2,$4A,$4A,$05,$E8,$85
       .byte $E8,$A5,$D9,$69,$02,$85,$D8,$A5,$DE,$69,$03,$85,$DD,$A9,$0F,$85
       .byte $15,$A9,$08,$85,$19,$85,$F1,$D0,$5F,$A5,$D8,$30,$5B,$85,$F3,$A5
       .byte $F1,$29,$7F,$E6,$F1,$4A,$4A,$C9,$1F,$90,$02,$A9,$1F,$85,$17,$A5
       .byte $DD,$20,$BB,$FA,$30,$19,$B5,$80,$39,$B3,$FA,$F0,$12,$49,$FF,$35
       .byte $80,$A8,$A5,$E7,$4A,$90,$05,$94,$80,$20,$40,$FB,$38,$B0,$17,$A2
       .byte $02,$20,$E7,$FA,$CA,$10,$FA,$A5,$E8,$29,$0F,$AA,$BD,$93,$FA,$18
       .byte $65,$D8,$C9,$57,$90,$02,$A9,$D0,$85,$D8,$B0,$0C,$BD,$A3,$FA,$18
       .byte $65,$DD,$C9,$A0,$B0,$F0,$85,$DD,$4C,$38,$F9,$00,$00,$00,$70,$04
       .byte $C5,$33,$16,$08,$15,$15,$2C,$0C,$09,$09,$42,$10,$A5,$A5,$58,$14
       .byte $68,$FF,$05,$18,$6D,$FF,$05,$1C,$72,$FF,$05,$1D,$77,$FF,$05,$19
       .byte $7C,$FF,$05,$15,$81,$FF,$05,$11,$86,$FF,$05,$0D,$8B,$FF,$05,$09
       .byte $90,$FF,$05,$05,$95,$FF,$05,$01,$9A,$FF,$05,$0E,$9F,$FF,$05,$0A
       .byte $A4,$FF,$05,$06,$A9,$FF,$05,$02,$AE,$FF,$05,$03,$B3,$FF,$05,$07
       .byte $B8,$FF,$0F,$0B,$C7,$FF,$0F,$0F,$D6,$FF,$12,$13,$E8,$FF,$12,$17
       .byte $00,$F8,$10,$1B,$3A,$F8,$0E,$1F,$69,$F8,$0E,$1E,$1F,$F8,$0C,$1A
       .byte $14,$F8,$0A,$16,$3B,$F8,$07,$12,$10,$10,$38,$38,$7C,$08,$18,$38
       .byte $78,$18,$04,$18,$78,$30,$10,$02,$7C,$38,$30,$00,$40,$70,$7E,$70
       .byte $40,$00,$30,$38,$7C,$02,$10,$30,$78,$18,$04,$18,$78,$38,$18,$08
       .byte $7C,$38,$38,$10,$10,$30,$3C,$38,$30,$20,$10,$18,$3C,$30,$40,$00
       .byte $18,$38,$7C,$80,$04,$1C,$FC,$1C,$04,$80,$7C,$38,$18,$00,$40,$30
       .byte $3C,$18,$10,$20,$30,$38,$3C,$30,$42,$24,$19,$FE,$3C,$FC,$3F,$3C
       .byte $7F,$98,$3C,$5A,$3C,$42,$42,$42,$24,$98,$7F,$3C,$3F,$FC,$3C,$FE
       .byte $19,$3C,$5A,$3C,$42,$42,$42,$24,$19,$FE,$3C,$FC,$3F,$3C,$7F,$98
       .byte $3C,$5A,$3C,$42,$7E,$3C,$3C,$3C,$42,$24,$98,$7F,$3C,$3F,$FC,$3C
       .byte $FE,$19,$3C,$5A,$3C,$42,$7E,$3C,$3C,$3C,$E3,$FB,$E3,$FB,$E3,$FB
LF800: STY    $FB     
LF802: NOP            
LF803: STA    $011C   
       JMP    LF84D   
LF809: STY    $FA     
       NOP            
LF80C: DEC    $F9     
       BMI    LF879   
       STA    $011D   
       LDA    #$00    
       STA    PF0     
       STA    $011B   
       BPL    LF826   
LF81C: STA    ENAM0   
       LDA    #$00    
       STA    PF0     
       LDA    ($F3),Y 
       STA    GRP0    
LF826: LDA    $80,X   
       STA    PF1     
       LDA    $96,X   
       STA    PF2     
       LDA    $AC,X   
       STA    PF0     
       LDY    $C2,X   
       STY    PF1     
       AND    #$0F    
       STA    PF2     
LF83A: LDA    #$00    
       LDY    $FB     
       INY            
       STY    $FB     
       STA    PF0     
       BMI    LF800   
       CPY    $F8     
       BPL    LF803   
       LDA    ($F6),Y 
       STA    GRP1    
LF84D: LDA    $F9     
       CMP    $D8     
       PHP            
       LSR            
       LSR            
       TAX            
       LDA    $80,X   
       STA    PF1     
       LDA    $96,X   
       STA    PF2     
       LDA    $AC,X   
       STA    PF0     
       LDY    $C2,X   
       STY    PF1     
       AND    #$0F    
       STA    PF2     
       LDY    $FA     
       PLA            
       INY            
       STY    $FA     
       BMI    LF809   
       CPY    $F5     
       BPL    LF80C   
       DEC    $F9     
       BPL    LF81C   
LF879: LDA    #$00    
       STA    PF0     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    PF1     
       STA    PF2     
       LDA    $E7     
       AND    #$07    
       TAX            
       LDA    LFEFC,X 
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$57    
       SEC            
       SBC    $D8     
       STA    $D8     
       LDA    #$1F    
       STA    TIM64T  
       JMP    LFBFA   
LF8A2: CPX    #$02    
       ADC    #$10    
       TAY            
       AND    #$0F    
       STA    $F3     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $F3     
       CMP    #$0F    
       BCC    LF8BB   
       SBC    #$0F    
       INY            
LF8BB: EOR    #$07    
       ASL            
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LF8C5: DEY            
       BPL    LF8C5   
       STA    RESP0,X 
       RTS            

LF8CB: AND    #$F0    
       LSR            
       LSR            
       STA    $FD     
       LSR            
       LSR            
       BCC    LF8DB   
LF8D5: AND    #$0F    
       STA    $FD     
       ASL            
       ASL            
LF8DB: ADC    $FD     
       STA    $FD     
       TXA            
       ADC    $FD     
       TAY            
       LDA    LF8F5,Y 
       RTS            

LF8E7: .byte $80
LF8E8: .byte $80,$00,$80,$00,$00,$01,$00,$01,$01,$03,$01,$03,$03
LF8F5: .byte $24,$5A,$5A,$5A,$24,$24,$24,$24,$24,$24,$7E,$42,$7E,$18,$7E,$7E
       .byte $42,$7E,$42,$7E,$5A,$5A,$7E,$42,$42,$7E,$18,$7E,$42,$7E,$7E,$18
       .byte $7E,$5A,$7E,$7E,$42,$42,$42,$42,$7E,$5A,$7E,$5A,$7E,$7E,$5A,$7E
       .byte $42,$7E
LF927: LDA    #$40    
       STA    $F2     
       STA    AUDV0   
       STA    AUDV1   
LF92F: JSR    LFA61   
       LDA    $E7     
       AND    #$07    
       STA    $E7     
LF938: LDX    #$04    
LF93A: LDA    $EA     
       JSR    LF8D5   
       AND    #$0F    
       STA    $F3,X   
       LDA    $E9     
       JSR    LF8D5   
       AND    #$F0    
       STA    $F8,X   
       LDA    $EA     
       JSR    LF8CB   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F3,X   
       STA    $F3,X   
       LDA    $E9     
       JSR    LF8CB   
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $F8,X   
       STA    $F8,X   
       DEX            
       BPL    LF93A   
       LDA    $E7     
       AND    #$07    
       TAX            
       LDA    LFEF4,X 
       STA    COLUPF  
       LDA    LFEF8,X 
       STA    COLUP0  
       STA    COLUP1  
LF97A: LDA    INTIM   
       BNE    LF97A   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDA    LFEEC,X 
       STA    COLUBK  
       TAX            
       LDA    $E8     
       AND    #$70    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF8E7,Y 
       STA    NUSIZ0  
       BPL    LF99C   
       STX    COLUP0  
LF99C: LDA    LF8E8,Y 
       STA    NUSIZ1  
       BPL    LF9A5   
       STX    COLUP1  
LF9A5: LDY    #$00    
LF9A7: STA    WSYNC   
       TYA            
       LSR            
       TAX            
       LDA    $F3,X   
       STA    PF1     
       LDA    $F8,X   
       STA    PF2     
       LDA    LFF77,X 
       STA    GRP0    
       STA    GRP1    
       LDX    #$00    
       INY            
       LDA    $E6     
       STX    PF1     
       AND    #$01    
       CPY    #$0A    
       STX    PF2     
       BMI    LF9A7   
       EOR    #$01    
       STA    $F9     
       LDA    $F2     
       ASL            
       LDA    $E7     
       INC    $E6     
       BNE    LF9D9   
       ADC    #$07    
LF9D9: STA    $E7     
       AND    #$07    
       TAX            
       STX    $F8     
       ASL            
       ADC    $F9     
       TAY            
       LDA    LFA8B,Y 
       STA    COLUP0  
       LDA    LFA8F,Y 
       STA    COLUP1  
       LDA    LFEF0,X 
       STA    COLUPF  
       LDX    $F9     
       LDA    $DE,X   
       LDX    #$00    
       JSR    LF8A2   
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    $F9     
       LDA    $E0,X   
       LDX    #$01    
       JSR    LF8A2   
       LDA    $DD     
       INX            
       JSR    LF8A2   
       LDX    $F9     
       LDA    $D9,X   
       EOR    #$FF    
       STA    $FA     
       LDA    $DB,X   
       EOR    #$FF    
       STA    $FB     
       LDY    $E2,X   
       LDA    LFF00,Y 
       STA    $F3     
       LDA    LFF01,Y 
       STA    $F4     
       LDA    LFF02,Y 
       STA    $F5     
       LDY    $E4,X   
       LDX    $F8     
       LDA    LFEFC,X 
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       STA    WSYNC   
       ASL    $F9     
       LDA    LFEEC,X 
       STA    COLUBK  
       LDA    LFF00,Y 
       STA    $F6     
       LDA    LFF01,Y 
       STA    $F7     
       LDA    LFF02,Y 
       STA    $F8     
       LDA    #$57    
       STA    $F9     
       SEC            
       SBC    $D8     
       STA    $D8     
       LDX    #$15    
       JMP    LF83A   
LFA61: LDX    INTIM   
       BNE    LFA61   
       LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       LDA    #$68    
       JSR    LF8A2   
       INX            
       LDA    #$70    
       JSR    LF8A2   
LFA7C: LDA    INTIM   
       BNE    LFA7C   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$28    
       STA    TIM64T  
       RTS            

LFA8B: .byte $09,$59,$09,$59
LFA8F: .byte $89,$19,$89,$19
LFA93: .byte $FE,$FE,$FE,$FF,$00,$01,$02,$02,$02,$02,$02,$01,$00,$FF,$FE,$FE
LFAA3: .byte $00,$01,$02,$02,$02,$02,$02,$01,$00,$FF,$FE,$FE,$FE,$FE,$FE,$FF
LFAB3: .byte $80,$40,$20,$10,$08,$04,$02,$01
LFABB: CMP    #$90    
       BCC    LFAC2   
LFABF: LDA    #$FF    
       RTS            

LFAC2: SBC    #$0F    
       BCC    LFABF   
       AND    #$FC    
       TAX            
       LDA    LFEEB,X 
       TAY            
       AND    #$03    
       ASL            
       ASL            
       TAX            
       LDA    $F3     
       LSR            
       LSR            
       CMP    #$16    
       BCS    LFABF   
       STA    $F9     
       LDA    LFEF2,X 
       SBC    $F9     
       TAX            
       TYA            
       LSR            
       LSR            
       TAY            
LFAE6: RTS            

LFAE7: LDA    $DD     
       SEC            
       SBC    $DF,X   
       BCC    LFAE6   
       CMP    #$08    
       BCS    LFAE6   
       STA    $F9     
       LDA    $D8     
       SEC            
       SBC    $DA,X   
       BMI    LFAE6   
       LDY    $E3,X   
       SEC            
       SBC    LFF02,Y 
       BCS    LFAE6   
       CMP    #$FD    
       BMI    LFB22   
       LDA    $F9     
       CMP    #$02    
       BMI    LFB22   
       CMP    #$06    
       BPL    LFB22   
       TYA            
       AND    #$F8    
       CMP    #$48    
       BNE    LFB22   
       LDA    #$01    
       ORA    $E7     
       STA    $E7     
       LDY    #$03    
       BNE    LFB30   
LFB22: LDA    $E7     
       AND    #$F8    
       STA    $E7     
       JSR    LFBAC   
       LDY    #$01    
       BCS    LFB30   
       INY            
LFB30: LDA    #$D0    
       STA    $D8     
       STA    AUDV0   
       LDA    #$50    
       CMP    $E3,X   
       STA    $E3,X   
       TYA            
       BCS    LFB44   
       RTS            

LFB40: LDA    #$01    
       LDY    #$04    
LFB44: CLC            
       SED            
       ADC    $E9     
       STA    $E9     
       BCC    LFB60   
       ADC    $EA     
       CLD            
       STA    $EA     
       LDA    $E8     
       AND    #$70    
       CMP    #$60    
       BPL    LFB60   
       LDA    #$10    
       TAY            
       ADC    $E8     
       STA    $E8     
LFB60: CLD            
       TYA            
       AND    #$1C    
       ORA    $F2     
       STA    $F2     
       RTS            

LFB69: LDA    #$3C    
       STA    $E2     
       LDA    #$80    
       ORA    $F1     
       STA    $F1     
       RTS            

LFB74: LDY    $E6     
       LDA    LF800,Y 
       CMP    #$98    
       BCC    LFB7F   
       AND    #$7F    
LFB7F: STA    $DF,X   
       LDA    #$E8    
       STA    $DA,X   
       LDA    LF801,Y 
       EOR    $E6     
       EOR    $D9     
       CMP    #$98    
       BCC    LFB92   
       AND    #$7F    
LFB92: STA    $EE,X   
       LDA    LF802,Y 
       EOR    $DE     
       EOR    $DD     
       LSR            
       CMP    #$57    
       BCC    LFBA2   
       AND    #$3F    
LFBA2: SEC            
       SBC    #$0E    
       STA    $EB,X   
       LDA    #$48    
       STA    $E3,X   
       RTS            

LFBAC: LDY    $E3,X   
       TYA            
       AND    #$F8    
       CMP    #$48    
       STX    $F5     
       BNE    LFBD7   
       LDA    $DA,X   
       ADC    LFF02,Y 
       SEC            
       SBC    #$03    
       STA    $F3     
       LDA    $DF,X   
       CLC            
       ADC    #$03    
       JSR    LFABB   
       BMI    LFBD7   
       LDA    LFAB3,Y 
       ORA    $80,X   
       CMP    $80,X   
       CLC            
       STA    $80,X   
       BNE    LFBD8   
LFBD7: SEC            
LFBD8: LDX    $F5     
       BCS    LFBE2   
       LDA    $E3,X   
       AND    #$F7    
       STA    $E3,X   
LFBE2: RTS            


START:
LFBE3: SEI            
       CLD            
       LDA    #$00    
       TAX            
LFBE8: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LFBE8   
       LDA    #$38    
       STA    $E8     
       LDA    #$48    
       STA    $E3     
       STA    $E4     
       STA    $E5     
LFBFA: LSR    SWCHB   
       LDA    #$80    
       BIT    $F2     
       BCS    LFC12   
       BVS    LFBE3   
       STA    $F2     
       LDA    #$96    
       STA    $E9     
       LDA    #$99    
       STA    $EA     
LFC0F: JMP    LF92F   
LFC12: BPL    LFC0F   
       LDA    $F2     
       ORA    #$40    
       STA    $F2     
       LDX    $D8     
       BPL    LFC2E   
       AND    #$1F    
       STA    AUDV0   
       BEQ    LFC2E   
       DEC    $F2     
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       STA    AUDV0   
LFC2E: LDX    #$02    
       LDA    $F1     
       BMI    LFC8B   
LFC34: CLC            
       LDA    $DE     
       ADC    #$04    
       SEC            
       SBC    $DF,X   
       BCC    LFC72   
       CMP    #$0A    
       BCS    LFC72   
       LDA    $D9     
       ADC    #$04    
       SEC            
       SBC    $DA,X   
       BMI    LFC72   
       SEC            
       SBC    #$03    
       LDY    $E3,X   
       CMP    LFF02,Y 
       BPL    LFC72   
       CPY    #$3C    
       BPL    LFC65   
       LDA    $E7     
       AND    #$3F    
       STA    $E7     
       LDA    #$20    
       STA    AUDC1   
       BPL    LFC70   
LFC65: JSR    LFB40   
       JSR    LFB69   
       JSR    LFBAC   
       LDA    #$50    
LFC70: STA    $E3,X   
LFC72: DEX            
       BPL    LFC34   
       LDA    $E4     
       ORA    $E3     
       CMP    #$50    
       BPL    LFC8B   
       LDA    $E5     
       CMP    #$08    
       BPL    LFC8B   
       STA    AUDF1   
       LDA    #$06    
       STA    AUDV1   
       STA    AUDC1   
LFC8B: LDA    $E6     
       AND    #$03    
       TAX            
       TAY            
       BNE    LFC99   
       BIT    SWCHB   
       BVC    LFCCC   
       INX            
LFC99: DEX            
       LDA    $E3,X   
       CMP    #$50    
       BMI    LFCBF   
       DEY            
       BMI    LFCCC   
       ADC    #$03    
       STA    $E3,X   
       INC    $DA,X   
       LDY    #$08    
       STY    AUDC1   
       LSR            
       SBC    #$33    
       EOR    #$FF    
       TAY            
       LDA    LF800,Y 
       STA    AUDF1   
       INY            
       STY    AUDV1   
       BEQ    LFCE9   
       BNE    LFCCC   
LFCBF: LDY    $EE,X   
       LDA    $EB,X   
       CPY    #$C0    
       BNE    LFCD5   
       JSR    LFBAC   
       BCS    LFCCF   
LFCCC: JMP    LFD6C   
LFCCF: LDY    $DE     
       LDA    $D9     
       SBC    #$0C    
LFCD5: STY    $FA     
       STA    $FB     
       LDA    $DF,X   
       CMP    $FA     
       BNE    LFD52   
       LDA    $DA,X   
       CMP    $FB     
       BNE    LFD5A   
       CMP    #$E9    
       BPL    LFD1B   
LFCE9: CPX    #$02    
       BNE    LFD16   
       BIT    $E7     
       BPL    LFCF4   
       JMP    LF927   
LFCF4: BVC    LFD16   
       LDA    $E7     
       EOR    #$C0    
       STA    $E7     
       LDY    #$00    
       STY    $E5     
       LDA    $E6     
       AND    #$04    
       BNE    LFD08   
       LDY    #$97    
LFD08: STY    $E1     
       STY    $F0     
       LDY    #$E8    
       STY    $DC     
       LDY    #$60    
       STY    $ED     
       BNE    LFD6C   
LFD16: JSR    LFB74   
       BNE    LFD6C   
LFD1B: LDY    $E3,X   
       CPY    #$3C    
       BPL    LFD25   
       LDY    #$E7    
       BNE    LFD4E   
LFD25: JSR    LFBAC   
       BCS    LFD49   
       LDY    $E6     
       BIT    SWCHB   
       BPL    LFD3C   
       LDA    LF800,Y 
       BMI    LFD49   
       AND    #$1F    
       CMP    $EA     
       BCC    LFD49   
LFD3C: LDA    LF801,Y 
       CMP    #$98    
       BCC    LFD45   
       AND    #$7F    
LFD45: LDY    #$E7    
       BMI    LFD4C   
LFD49: LDA    #$C0    
       TAY            
LFD4C: STA    $EE,X   
LFD4E: STY    $EB,X   
       BNE    LFD6C   
LFD52: BCC    LFD58   
       DEC    $DF,X   
       BCS    LFD5A   
LFD58: INC    $DF,X   
LFD5A: LDA    $DA,X   
       CMP    $FB     
       BMI    LFD64   
       DEC    $DA,X   
       DEC    $DA,X   
LFD64: INC    $DA,X   
       LDA    $E3,X   
       EOR    #$04    
       STA    $E3,X   
LFD6C: LDA    $E6     
       LDX    $F1     
       BPL    LFDA4   
       AND    #$03    
       BNE    LFDA2   
       LDA    $E2     
       SEC            
       SBC    #$04    
       STA    $E2     
       BNE    LFD99   
       STA    AUDV1   
       STA    $DE     
       STA    $F1     
       LDA    $E8     
       BIT    LFEEE   
       BNE    LFD8F   
       JMP    LF927   
LFD8F: SBC    #$10    
       STA    $E8     
       LDA    #$52    
       STA    $D9     
       BNE    LFDA2   
LFD99: LSR            
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDC1   
       STA    AUDV1   
LFDA2: BNE    LFDF7   
LFDA4: LSR            
       BCS    LFDF7   
       LDY    SWCHA   
       LDX    INPT4   
       BMI    LFDC6   
       LSR            
       BCS    LFDDD   
       LDA    $E2     
       BIT    SWCHA   
       BMI    LFDBC   
       ADC    #$04    
       BCC    LFDC0   
LFDBC: BVS    LFDDD   
       SBC    #$03    
LFDC0: AND    #$3C    
       STA    $E2     
       BPL    LFDDD   
LFDC6: LDX    $DE     
       TYA            
       BMI    LFDD3   
       CPX    #$97    
       BCS    LFDDD   
       INC    $DE     
       BNE    LFDDD   
LFDD3: AND    #$40    
       BNE    LFDDD   
       CPX    #$01    
       BCC    LFDDD   
       DEC    $DE     
LFDDD: TYA            
       LDX    $D9     
       AND    #$20    
       BNE    LFDEC   
       CPX    #$52    
       BCS    LFDF7   
       INC    $D9     
       BNE    LFDF7   
LFDEC: TYA            
       AND    #$10    
       BNE    LFDF7   
       CPX    #$01    
       BCC    LFDF7   
       DEC    $D9     
LFDF7: LDA    $D9     
       CLC            
       ADC    #$04    
       STA    $F3     
       LDA    $DE     
       ADC    #$05    
       STA    $FA     
       JSR    LFABB   
       BMI    LFE10   
       LDA    LFAB3,Y 
       AND    $80,X   
       BNE    LFE42   
LFE10: LDX    $DE     
       INX            
       TXA            
       STA    $FB     
       JSR    LFABB   
       BMI    LFE22   
       LDA    LFAB3,Y 
       AND    $80,X   
       BNE    LFE42   
LFE22: LDA    $D9     
       STA    $F3     
       LDA    $FA     
       JSR    LFABB   
       BMI    LFE34   
       LDA    LFAB3,Y 
       AND    $80,X   
       BNE    LFE42   
LFE34: LDA    $FB     
       JSR    LFABB   
       BMI    LFE4E   
       LDA    LFAB3,Y 
       AND    $80,X   
       BEQ    LFE4E   
LFE42: EOR    #$FF    
       AND    $80,X   
       STA    $80,X   
       JSR    LFB40   
       JSR    LFB69   
LFE4E: JSR    LFA61   
       LDA    $F1     
       BMI    LFE89   
       LDX    INPT4   
       BMI    LFE61   
       LDA    #$80    
       ORA    $E8     
       STA    $E8     
       BMI    LFE89   
LFE61: LDA    $E8     
       BPL    LFE89   
       AND    #$70    
       STA    $E8     
       LDA    $E2     
       LSR            
       LSR            
       ORA    $E8     
       STA    $E8     
       LDA    $D9     
       ADC    #$02    
       STA    $D8     
       LDA    $DE     
       ADC    #$03    
       STA    $DD     
       LDA    #$0F    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       STA    $F1     
       BNE    LFEE8   
LFE89: LDA    $D8     
       BMI    LFEE8   
       STA    $F3     
       LDA    $F1     
       AND    #$7F    
       INC    $F1     
       LSR            
       LSR            
       CMP    #$1F    
       BCC    LFE9D   
       LDA    #$1F    
LFE9D: STA    AUDF0   
       LDA    $DD     
       JSR    LFABB   
       BMI    LFEBF   
       LDA    $80,X   
       AND    LFAB3,Y 
       BEQ    LFEBF   
       EOR    #$FF    
       AND    $80,X   
       TAY            
       LDA    $E7     
       LSR            
       BCC    LFEBC   
       STY    $80,X   
       JSR    LFB40   
LFEBC: SEC            
       BCS    LFED6   
LFEBF: LDX    #$02    
LFEC1: JSR    LFAE7   
       DEX            
       BPL    LFEC1   
       LDA    $E8     
       AND    #$0F    
       TAX            
       LDA    LFA93,X 
       CLC            
       ADC    $D8     
       CMP    #$57    
       BCC    LFED8   
LFED6: LDA    #$D0    
LFED8: STA    $D8     
       BCS    LFEE8   
       LDA    LFAA3,X 
       CLC            
       ADC    $DD     
       CMP    #$A0    
       BCS    LFED6   
       STA    $DD     
LFEE8: JMP    LF938   
LFEEB: .byte $00
LFEEC: .byte $00,$00
LFEEE: .byte $70,$04
LFEF0: .byte $C5,$33
LFEF2: .byte $16,$08
LFEF4: .byte $15,$15,$2C,$0C
LFEF8: .byte $09,$09,$42,$10
LFEFC: .byte $A5,$A5,$58,$14
LFF00: .byte $68
LFF01: .byte $FF
LFF02: .byte $05,$18,$6D,$FF,$05,$1C,$72,$FF,$05,$1D,$77,$FF,$05,$19,$7C,$FF
       .byte $05,$15,$81,$FF,$05,$11,$86,$FF,$05,$0D,$8B,$FF,$05,$09,$90,$FF
       .byte $05,$05,$95,$FF,$05,$01,$9A,$FF,$05,$0E,$9F,$FF,$05,$0A,$A4,$FF
       .byte $05,$06,$A9,$FF,$05,$02,$AE,$FF,$05,$03,$B3,$FF,$05,$07,$B8,$FF
       .byte $0F,$0B,$C7,$FF,$0F,$0F,$D6,$FF,$12,$13,$E8,$FF,$12,$17,$00,$F8
       .byte $10,$1B,$3A,$F8,$0E,$1F,$69,$F8,$0E,$1E,$1F,$F8,$0C,$1A,$14,$F8
       .byte $0A,$16,$3B,$F8,$07,$12,$10,$10,$38,$38,$7C,$08,$18,$38,$78,$18
       .byte $04,$18,$78,$30,$10
LFF77: .byte $02,$7C,$38,$30,$00,$40,$70,$7E,$70,$40,$00,$30,$38,$7C,$02,$10
       .byte $30,$78,$18,$04,$18,$78,$38,$18,$08,$7C,$38,$38,$10,$10,$30,$3C
       .byte $38,$30,$20,$10,$18,$3C,$30,$40,$00,$18,$38,$7C,$80,$04,$1C,$FC
       .byte $1C,$04,$80,$7C,$38,$18,$00,$40,$30,$3C,$18,$10,$20,$30,$38,$3C
       .byte $30,$42,$24,$19,$FE,$3C,$FC,$3F,$3C,$7F,$98,$3C,$5A,$3C,$42,$42
       .byte $42,$24,$98,$7F,$3C,$3F,$FC,$3C,$FE,$19,$3C,$5A,$3C,$42,$42,$42
       .byte $24,$19,$FE,$3C,$FC,$3F,$3C,$7F,$98,$3C,$5A,$3C,$42,$7E,$3C,$3C
       .byte $3C,$42,$24,$98,$7F,$3C,$3F,$FC,$3C,$FE,$19,$3C,$5A,$3C,$42,$7E
       .byte $3C,$3C,$3C,$E3,$FB,$E3,$FB,$E3,$FB
