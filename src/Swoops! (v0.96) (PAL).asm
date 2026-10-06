; Disassembly of roms/Swoops! (v0.96) (PAL).bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Swoops! (v0.96) (PAL).bin
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
CTRLPF  =  $0A
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LFC1E   =   $FC1E
LFC35   =   $FC35
LFE08   =   $FE08

       ORG $F000
LF000: .byte $A2,$05,$BD,$BD,$F3,$95,$C7,$CA,$10,$F8,$AE,$82,$02,$86,$D8,$A2
       .byte $C6,$38,$90,$0F,$A5,$C7,$24,$D8,$50,$07,$45,$D9,$D0,$03,$4D,$84
       .byte $02,$85,$D7,$85,$C7,$A9,$00,$9A,$BA,$48,$D0,$FC,$A2,$F8,$9A,$A9
       .byte $4C,$85,$C0,$A9,$62,$20,$73,$F3,$AE,$84,$02,$10,$FB,$85,$2B,$A0
       .byte $38,$A9,$34,$85,$0A,$A9,$0E,$85,$1F,$85,$02,$85,$00,$4A,$D0,$F9
       .byte $8C,$96,$02,$A5,$BA,$24,$BE,$30,$2A,$24,$BF,$10,$0A,$C9,$A0,$90
       .byte $22,$A2,$D0,$86,$BE,$B0,$1C,$A4,$C0,$A9,$39,$E5,$BA,$90,$0D,$88
       .byte $30,$11,$A9,$FE,$C6,$C0,$D0,$08,$A2,$B1,$86,$B6,$A2,$39,$86,$BA
       .byte $20,$C2,$F2,$20,$A5,$F3,$AC,$84,$02,$D0,$FB,$A2,$0C,$A5,$C9,$F0
       .byte $04,$B0,$08,$90,$08,$A5,$D9,$10,$04,$A0,$06,$A2,$66,$86,$06,$86
       .byte $07,$A2,$03,$A9,$F3,$95,$CD,$95,$D1,$CA,$84,$D5,$B9,$C5,$00,$48
       .byte $4A,$4A,$4A,$4A,$A8,$B9,$FC,$F3,$95,$CD,$68,$29,$0F,$A8,$B9,$FC
       .byte $F3,$95,$D1,$A4,$D5,$C8,$CA,$10,$DA,$A9,$99,$85,$D6,$A0,$05,$88
       .byte $A5,$C9,$85,$02,$A2,$12,$86,$D5,$85,$01,$85,$1B,$B1,$D3,$85,$1C
       .byte $EA,$B3,$D1,$B1,$CF,$85,$1B,$B1,$CD,$85,$1B,$86,$1C,$46,$D6,$B0
       .byte $DE,$D0,$DD,$84,$1C,$84,$1B,$A5,$BA,$20,$8C,$F3,$A9,$DC,$E5,$B6
       .byte $85,$D4,$69,$10,$A6,$B8,$10,$02,$69,$0D,$85,$CD,$84,$04,$85,$2B
       .byte $A0,$67,$84,$05,$84,$26,$A5,$BC,$30,$08,$A0,$4A,$05,$BD,$F0,$02
       .byte $A0,$2E,$84,$06,$A0,$D1,$A2,$06,$A9,$0B,$C7,$D4,$85,$02,$B0,$03
       .byte $A9,$00,$2C,$B1,$CD,$85,$1B,$BD,$C2,$F3,$25,$C8,$85,$07,$88,$C0
       .byte $96,$B0,$E5,$CA,$D0,$E2,$A9,$0B,$C7,$D4,$B0,$02,$8A,$2C,$B1,$CD
       .byte $86,$1C,$24,$07,$30,$01,$2C,$84,$CA,$88,$85,$2C,$A6,$D5,$F0,$2C
       .byte $C6,$D5,$85,$1B,$B5,$A3,$85,$1C,$B5,$91,$85,$21,$29,$0F,$F0,$05
       .byte $38,$E9,$01,$D0,$FC,$8D,$11,$00,$85,$02,$85,$2A,$85,$07,$AA,$A9
       .byte $0B,$C7,$D4,$90,$02,$B3,$CD,$86,$1B,$88,$D0,$9A,$A9,$2E,$8D,$96
LF190: .byte $02,$86,$26,$85,$01,$A5,$B7,$E5,$B9,$A5,$B6,$E5,$B8,$E9,$10,$90
       .byte $27,$E5,$CA,$90,$23,$A9,$47,$A2,$06,$24,$D8,$30,$0A,$E5,$B9,$A8
       .byte $8A,$E5,$B8,$4A,$AA,$98,$6A,$85,$B9,$86,$B8,$A9,$0C,$85,$BE,$A9
       .byte $95,$A0,$99,$20,$75,$F3,$90,$48,$A7,$BE,$F0,$61,$10,$4F,$CA,$0A
       .byte $10,$19,$A0,$04,$0A,$D0,$4D,$A5,$C8,$69,$4F,$85,$C8,$A4,$C4,$C0
       .byte $09,$B0,$03,$E6,$C4,$38,$A2,$C3,$4C,$12,$F0,$D0,$17,$A5,$D7,$46
       .byte $C9,$46,$C9,$D0,$F1,$20,$A5,$F3,$90,$04,$86,$CC,$84,$CB,$A2,$00
       .byte $86,$C0,$E6,$BE,$8A,$85,$09,$4A,$4A,$AA,$A0,$03,$A9,$0C,$D0,$15
       .byte $A9,$00,$85,$C6,$85,$C5,$A9,$B8,$85,$BE,$4C,$A8,$F2,$CA,$8A,$A0
       .byte $0C,$69,$13,$24,$8A,$86,$19,$84,$15,$85,$17,$C6,$BE,$A0,$FF,$84
       .byte $CA,$A2,$03,$AD,$82,$02,$4A,$B0,$04,$24,$FC,$10,$2D,$4A,$B0,$03
       .byte $4C,$B7,$FC,$A5,$C0,$30,$10,$D0,$D1,$24,$0C,$30,$CD,$A5,$C9,$D0
       .byte $04,$24,$FC,$10,$15,$C6,$C0,$24,$BE,$30,$BF,$A9,$B2,$A2,$B8,$20
       .byte $78,$F3,$20,$84,$F3,$C9,$EE,$B0,$AD,$A0,$00,$A9,$22,$2C,$80,$02
       .byte $10,$06,$98,$70,$03,$88,$A9,$DE,$A2,$BC,$20,$78,$F3,$0A,$A0,$00
       .byte $A9,$0B,$B0,$03,$88,$A9,$F5,$20,$78,$F3,$90,$01,$88,$C8,$F0,$14
       .byte $A8,$49,$02,$D0,$02,$85,$BD,$20,$84,$F3,$C9,$08,$B0,$0A,$A9,$08
       .byte $85,$BA,$A0,$00,$84,$BC,$84,$BD,$A9,$20,$20,$8C,$F3,$85,$14,$A9
       .byte $73,$85,$24,$85,$04,$E8,$86,$05,$A9,$34,$20,$8E,$F3,$E6,$D9,$4C
       .byte $38,$F0,$85,$CD,$0A,$0A,$0A,$0A,$85,$CE,$A5,$C1,$18,$65,$CD,$29
       .byte $03,$85,$C1,$66,$CF,$30,$19,$24,$CE,$70,$4C,$A6,$C4,$BD,$B3,$F3
       .byte $AA,$29,$03,$C0,$33,$D0,$02,$69,$02,$A8,$8A,$A2,$C2,$20,$78,$F3
       .byte $46,$CF,$A2,$11,$B4,$A4,$F0,$21,$B5,$80,$18,$65,$CD,$B0,$05,$69
       .byte $04,$16,$A4,$18,$95,$80,$B5,$92,$B0,$07,$E9,$3F,$50,$02,$69,$F0
       .byte $38,$E5,$CE,$50,$02,$69,$0F,$95,$92,$24,$CF,$70,$4D,$A0,$FF,$B5
       .byte $A4,$F0,$04,$C8,$0A,$D0,$FC,$A5,$C7,$4A,$90,$02,$49,$B4,$85,$C7
       .byte $70,$A9,$C8,$F0,$14,$D9,$05,$F4,$B0,$30,$98,$0A,$0A,$75,$80,$E5
       .byte $C1,$C9,$96,$D0,$25,$A9,$FE,$B0,$1A,$24,$C2,$30,$1D,$29,$7F,$C5
       .byte $C2,$B0,$17,$E6,$BF,$A4,$C1,$B9,$AF,$F3,$95,$92,$98,$69,$97,$95
       .byte $80,$A9,$F9,$65,$C2,$85,$C2,$38,$76,$A4,$CA,$10,$87,$24,$CF,$70
       .byte $12,$A9,$01,$A0,$00,$A2,$C5,$F8,$18,$75,$01,$95,$01,$98,$75,$00
       .byte $95,$00,$D8,$60,$B5,$01,$B4,$00,$CA,$CA,$D0,$EC,$A2,$00,$38,$85
       .byte $02,$E9,$0F,$B0,$FC,$49,$07,$0A,$0A,$0A,$0A,$95,$20,$9D,$10,$00
       .byte $85,$02,$85,$2A,$60,$A7,$C6,$E5,$CC,$A5,$C5,$A8,$E5,$CB,$60,$1A
       .byte $0A,$FA,$EA,$96,$6A,$46,$22,$FD,$DD,$C1,$A5,$89,$71,$FF,$2E,$55
       .byte $FF,$01,$07,$F0,$F2,$F6,$FA,$FE,$0E,$00,$02,$00,$02,$00,$02,$3C
       .byte $42,$00,$42,$3C,$02,$3C,$02,$3C,$42,$3C,$42,$3C,$40,$3C,$02,$3C
       .byte $40,$3C,$00,$38,$7C,$7C,$FE,$C6,$BA,$FE,$FE,$D6,$54,$7C,$38,$00
       .byte $38,$7C,$44,$BA,$FE,$FE,$D6,$D6,$FE,$7C,$7C,$38,$CF,$C9,$DB,$D3
       .byte $CD,$DD,$D9,$CB,$D7,$D5,$DB,$D5,$CD,$C0,$AB,$80,$00,$A2,$C5,$A9
       .byte $00,$9A,$BA,$48,$D0,$FC,$A2,$F8,$9A,$A2,$09,$BD,$B8,$F7,$95,$B8
       .byte $CA,$D0,$F8,$A9,$D6,$20,$77,$F7,$85,$AD,$D8,$AE,$84,$02,$10,$FB
       .byte $A9,$87,$85,$01,$0A,$85,$02,$85,$00,$85,$0A,$4A,$D0,$F7,$85,$01
       .byte $A2,$46,$8E,$96,$02,$E6,$D3,$A6,$C0,$E0,$99,$90,$0A,$46,$B8,$85
       .byte $C0,$85,$BD,$A9,$5F,$85,$B3,$A7,$B3,$F0,$14,$0A,$F0,$11,$A0,$0C
       .byte $8A,$69,$12,$10,$04,$A9,$0C,$E5,$B4,$C6,$B3,$84,$15,$85,$17,$86
       .byte $19,$A9,$3E,$20,$8C,$F3,$A2,$7C,$B5,$45,$38,$F5,$47,$B5,$44,$A8
       .byte $F5,$46,$90,$06,$B5,$45,$95,$47,$94,$46,$E8,$E8,$10,$EA,$85,$2B
       .byte $A2,$01,$86,$05,$86,$04,$A9,$46,$20,$8E,$F3,$AC,$84,$02,$D0,$FB
       .byte $A2,$66,$24,$B8
LF4A4: .byte $30,$09,$A0,$04,$24,$D3,$70,$07,$A0,$02,$18,$B0,$02,$A2,$0A,$86
       .byte $06,$86,$07,$A2,$03,$20,$93,$F7,$A9,$99,$85,$D2,$A0,$05,$88,$85
       .byte $02,$A5,$AC,$85,$B6,$A5,$BB,$85,$08,$B1,$CE,$85,$1C,$B3,$CC,$B1
       .byte $C8,$85,$1B,$B1,$C6,$46,$D2,$85,$1B,$86,$1C,$B0,$E1,$D0,$E0,$84
       .byte $07,$84,$1B,$A5,$D7,$20,$8C,$F3,$A9,$C0,$85,$0D,$A5,$82,$85,$0E
       .byte $A9,$F3,$85,$C7,$A9,$C7,$E5,$BE,$85,$CA,$69,$24,$24,$AF,$10,$02
       .byte $69,$0D,$38,$85,$C6,$84,$04,$88,$84,$05,$84,$1C,$85,$2B,$A5,$BD
       .byte $85,$06,$A0,$BC,$D0,$44,$B5,$A2,$85,$CC,$B5,$8E,$85,$CB,$B5,$98
       .byte $AA,$4C,$4F,$F5,$CA,$B1,$C6,$85,$02,$90,$02,$85,$1B,$C4,$B1,$A5
       .byte $BC,$B0,$02,$85,$08,$A5,$CB,$3D,$C1,$F7,$E4,$CC,$B0,$02,$85,$07
       .byte $24,$0A,$30,$04,$84,$D8,$86,$D9,$88,$F0,$38,$A9,$0C,$C7,$CA,$8A
       .byte $D0,$D2,$90,$02,$B3,$C6,$C6,$B6,$38,$88,$85,$02,$F0,$25,$86,$1B
       .byte $A6,$B6,$B5,$84,$E9,$0F,$B0,$FC,$49,$07,$0A,$0A,$0A,$0A,$85,$11
       .byte $85,$21,$A9,$0C,$C7,$CA,$85,$02,$85,$2A,$B1,$C6,$90,$02,$85,$1B
       .byte $88,$D0,$93,$85,$02,$84,$0D,$84,$0E,$84,$1C,$A9,$38,$8D,$96,$02
       .byte $AD,$82,$02,$4A,$90,$06,$4A,$B0,$0C,$4C,$B7,$FC,$24,$FC,$30,$05
LF5A4: .byte $A2,$C3,$4C,$0F,$F4,$24,$B8,$30,$0B,$70,$6C,$A9,$08,$2C,$80,$02
       .byte $D0,$65,$66,$B8,$A0,$FF,$A9,$FA,$E5,$80,$A2,$AF,$20,$FD,$F6,$49
       .byte $FF,$30,$02,$18,$C8,$20,$FE,$F6,$A4,$BE,$C0,$AC,$A8,$30,$04,$A0
       .byte $1C,$C4,$BE,$A6,$B0,$B0,$12,$49,$FF,$A8,$8A,$49,$FF,$A2,$BE,$20
       .byte $FD,$F6,$A5,$B0,$0A,$AA,$A5,$AF,$2A,$A8,$8A,$A2,$AD,$20,$FD,$F6
       .byte $A6,$AC,$A8,$38,$F5,$98,$85,$D2,$98,$38,$E5,$D5,$90,$17,$24,$AF
       .byte $30,$08,$A8,$E6,$AC,$20,$75,$F7,$90,$09,$C6,$AC,$20,$75,$F7,$98
       .byte $65,$D5,$A8,$84,$AD,$94,$98,$A5,$B1,$38,$E5,$D2,$AA,$E9,$BC,$90
       .byte $29,$24,$D2,$30,$02,$69,$77,$AA,$A5,$BB,$C5,$BC,$B0,$16,$46,$B2
       .byte $90,$12,$69,$03,$C6,$BA,$10,$0C,$A0,$07,$84,$BA,$C4,$80,$90,$04
       .byte $E6,$80,$66,$82,$A4,$BC,$84,$BB,$85,$BC,$86,$B1,$A5,$D9,$F0,$18
       .byte $A5,$80,$0A,$0A,$85,$81,$69,$10,$C5,$D8,$B0,$0A,$49,$FF,$69,$9A
       .byte $C5,$D8,$90,$02,$A5,$D8,$85,$D7,$A6,$80,$86,$C6,$A6,$AC,$A9,$BF
       .byte $38,$E5,$BE,$E9,$02,$90,$05,$F5,$98,$CA,$B0,$F7,$75,$A3,$B0,$04
       .byte $69,$08,$90,$01,$E8,$E4,$B7,$E8,$86,$B7,$90,$0E,$B5,$83,$69,$0D
       .byte $E5,$D7,$69,$24,$B5,$A1,$F0,$02,$B0,$78,$A5,$B6,$D0,$71,$A9,$11
       .byte $CD,$84,$02,$B0,$6A,$00,$4A,$38,$65,$81,$A8,$65,$81
LF6B1: .byte $C9,$5A,$B0,$ED,$C6,$83,$10,$06,$A9,$05,$85,$83,$E6,$B2,$A2,$27
       .byte $B5,$83,$95,$84,$CA,$D0,$F9,$84,$84,$E6,$AC,$E6,$B7,$00,$A2,$BE
       .byte $38,$6A,$65,$80,$F0,$0C,$A2,$8E,$86,$8E,$B0,$0B,$29,$07,$A8,$BE
       .byte $DA,$F7,$86,$8E,$00,$C9,$15,$A9,$0C,$90,$01,$4A,$85,$A2,$00,$4A
       .byte $69,$28,$85,$98,$A9,$96,$A0,$99,$F8,$A2,$C0,$48,$18,$75,$01,$95
       .byte $01,$98,$75,$00,$95,$00,$E0,$C0,$D0,$79,$68,$C6,$C6,$10,$EC,$2C
       .byte $84,$C0,$4C,$2A,$F4,$A0,$FF,$24,$AF,$30,$02,$A9,$06,$E9,$06,$95
       .byte $A1,$F0,$11,$98,$45,$B0,$85,$B0,$98,$45,$AF,$85,$AF,$A2,$0D,$86
       .byte $B3,$4C,$CC,$F5,$A9,$8F,$85,$B3,$B5,$8D,$A6,$AF,$CA,$10,$08,$E8
       .byte $E8,$30,$04,$A2,$00,$86,$B0,$86,$AF,$C8,$D9,$D8,$F7,$D0,$FA,$A9
       .byte $0A,$88,$30,$16,$88,$30,$B9,$F0,$12,$98,$C5,$B5,$85,$B5,$D0,$08
       .byte $A5,$D6,$C9,$07,$B0,$02,$69,$03,$85,$D6,$A8,$84,$B4,$B9,$CD,$F7
       .byte $A0,$00,$F0,$84,$A5,$D4,$95,$98,$A6,$AC,$B5,$98,$85,$D4,$18,$69
       .byte $02,$85,$D5,$60,$C6,$F7,$A5,$B9,$4A,$90,$02,$49,$B4,$85,$B9,$45
       .byte $D3,$40
LF793: LDA    #$FB    
       STA    $C6,X   
       STA    $CC,X   
       DEX            
       STY    $D2     
       LDA.wy $00C0,Y 
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFB4A,Y 
       STA    $C6,X   
       PLA            
       AND    #$0F    
       TAY            
       LDA    LFB4A,Y 
       STA    $CC,X   
       LDY    $D2     
       INY            
       DEX            
       BPL    LF793   
       RTS            

LF7BA: .byte $07,$20,$22,$2C,$66,$00,$03,$00,$F0,$F4,$F8,$FC,$FE,$00,$02,$04
       .byte $08,$0C,$0E,$00,$01,$02,$03,$02,$04,$06,$09,$22,$48,$75,$BE,$8E
       .byte $0E,$5E,$2E,$4E,$5E,$5E,$2E,$5E,$A0,$25,$A2,$D8,$A9,$00,$9A,$BA
       .byte $48,$D0,$FC,$A2,$F8,$9A,$AD,$82,$02,$85,$E7,$B9,$7B,$FB,$99,$B5
       .byte $00,$88,$D0,$F7,$A2,$0B,$A9,$FB,$95,$DB,$CA,$D0,$FB,$AC,$84,$02
       .byte $D0,$FB,$A2,$34,$A9,$10,$85,$05,$85,$04,$A9,$1C,$85,$0A,$4A,$85
       .byte $02,$85,$00,$4A,$D0,$F9,$8E,$96,$02,$A2,$05,$85,$02,$B5,$CC,$E9
       .byte $0F,$B0,$FC,$49,$07,$0A,$0A,$0A,$0A,$9D,$0F,$00,$95,$1F,$CA,$D0
       .byte $EA,$AD,$80,$02,$0A,$0A,$0A,$0A,$25,$3C,$0A,$08,$A5,$98,$90,$01
       .byte $4A,$4A,$4A,$A9,$B2,$90,$02,$A9,$D1,$E5,$C9,$85,$E3,$69,$0F,$85
       .byte $E5,$A6,$D8,$E8,$8A,$A2,$B1,$29,$C8,$D0,$04,$A2,$F2,$A0,$FB,$8A
       .byte $84,$A0,$A0,$00,$E5,$C9,$85,$9F,$20,$34,$FB,$A9,$66,$A6,$D8,$F0
       .byte $05,$A6,$98,$10,$10,$18,$B0,$0F,$A9,$0E,$24,$E7,$10,$02,$A9,$89
       .byte $50,$02,$69,$4B,$2C,$A0,$3C,$85,$E8,$A2,$03,$CA,$84,$CF,$B9,$9D
       .byte $00,$48,$4A,$4A,$4A,$4A,$A8,$B9,$4A,$FB,$95,$DB,$68,$29,$0F,$A8
       .byte $B9,$4A,$FB,$95,$DF,$A4,$CF,$C8,$CA,$10,$E0,$A5,$D8,$F0,$0B,$C9
       .byte $FF,$F0,$27,$C9,$20,$90,$32,$E8,$B0,$33,$A5,$98,$0A,$D0,$1B,$B0
       .byte $0A,$A5,$9A,$69,$20,$90,$02,$69,$0F,$85,$9A,$A2,$CB,$A9,$2C,$A0
       .byte $03,$20,$3D,$FB,$C9,$72,$90,$02,$85,$CB,$A5,$98,$29,$07,$28,$08
       .byte $B0,$02,$09,$04,$0A,$69,$14,$A2,$08,$85,$18,$86,$16,$86,$1A,$AC
       .byte $84,$02,$D0,$FB,$85,$02,$85,$2A,$84,$01,$20,$18,$FB,$A0,$9C,$85
       .byte $02,$A2,$08,$BD,$5B,$FB,$05,$9A,$85,$08,$B5,$AF,$85,$0D,$B5,$B7
       .byte $85,$0E,$B5,$BF,$85,$0F,$98,$E5,$C9,$69,$10,$B0,$05,$20,$8F,$F9
       .byte $F0,$0D,$B1,$E5,$85,$1C,$B1,$E3,$85,$1B,$B1,$9F,$8D,$06,$00,$85
       .byte $07,$88,$CA,$D0,$CE,$86,$0D,$86,$0E,$86,$0F,$20,$96,$F9,$A1,$E3
       .byte $A5,$9A,$49,$3A,$85,$08,$AA,$86,$07,$98,$E5,$C9,$69,$10,$90,$3E
       .byte $B1,$E5,$85,$1C,$B1,$E3,$85,$1B,$B1,$9F,$85,$06,$85,$07,$98,$E5
       .byte $D3,$65,$D5,$8A,$69,$FF,$85,$1F,$98,$E5,$D2,$65,$D4,$8A,$69,$FF
       .byte $85,$1E,$88,$C0,$08,$D0,$D0,$A2,$00,$98,$E5,$C9,$69,$10,$B0,$13
       .byte $20,$8F,$F9,$F0,$1B,$A9,$00,$8D,$1C,$00,$85,$1B,$38,$60,$20,$8F
       .byte $F9,$F0,$CB,$B1,$E5,$85,$1C,$B1,$E3,$85,$1B,$B1,$9F,$8D,$06,$00
       .byte $85,$07,$B9,$53,$FB,$05,$9A,$85,$08,$B5,$B0,$85,$0D,$B5,$B8,$85
       .byte $0E,$B5,$C0,$85,$0F,$E8,$88,$D0,$C0,$84,$1B,$84,$1C,$20,$18,$FB
       .byte $85,$02,$84,$0D,$84,$0E,$84,$0F,$C8,$84,$04,$84,$05,$A0,$05,$A5
       .byte $E8,$85,$06,$85,$07,$A9,$99,$85,$E3,$88,$85,$02,$B1,$DD,$85,$1C
       .byte $B1,$E1,$85,$1B,$B3,$DF,$B1,$DB,$85,$1C,$86,$1B,$46,$E3,$B0,$E9
       .byte $D0,$E8,$84,$1C,$84,$1B,$A9,$28,$8D,$96,$02,$AD,$82,$02,$29,$02
       .byte $D0,$03,$4C,$B7,$FC,$28,$A6,$D8,$F0,$0E,$10,$1F,$B0,$54,$E8,$F0
       .byte $04,$24,$FC,$30,$4D,$A0,$22,$00,$A5,$32,$05,$33,$29,$C0,$F0,$0F
       .byte $20,$34,$FB,$90,$06,$A5,$9D,$86,$DA,$85,$D9,$E6,$D8,$D0,$33,$A2
       .byte $9B,$A9,$2A,$90,$03,$A9,$CB,$88,$20,$3D,$FB,$30,$01,$88,$A5,$9C
       .byte $29,$E0,$0A,$45,$9B,$29,$E0,$45,$9B,$2A,$2A,$2A,$49,$FF,$20,$3D
       .byte $FB,$A8,$A2,$C9,$A5,$9C,$20,$3D,$FB,$A5,$99,$18,$65,$CB,$85,$99
       .byte $B0,$03,$4C,$13,$FB,$98,$A2,$9D,$F8,$20,$3E,$FB,$D8,$A2,$08,$B5
       .byte $AF,$29,$10,$C9,$10,$76,$BF,$36,$B7,$76,$AF,$CA,$D0,$F1,$E8,$B5
       .byte $D0,$38,$E9,$04,$B0,$03,$98,$95,$D2,$95,$D0,$24,$E7,$10,$15,$B5
       .byte $D2,$F0,$11,$16,$D6,$90,$07,$D6,$D2,$F5,$D4,$69,$87,$2C,$F6,$D2
       .byte $C9,$94,$76,$D6,$CA,$10,$D8,$A4,$D1,$F0,$08,$A5,$D0,$F0,$12,$C5
       .byte $D1,$B0,$0E,$A2,$08,$B5,$CF,$B4,$CE,$95,$CE,$94,$CF,$CA,$CA,$D0
       .byte $F4,$A5,$D2,$D0,$44,$C0,$53,$B0,$40,$24,$E7,$A5,$C8,$4A,$90,$02
       .byte $49,$B2,$85,$C8,$C0,$30,$50,$02,$45,$CA,$90,$02,$30,$2B,$0A,$4A
       .byte $69,$0D,$65,$D4,$C9,$96,$B0,$E1,$A8,$E5,$D3,$85,$D6,$B0,$02,$49
       .byte $FF,$0A,$B0,$06,$65,$D5,$C9,$8C,$90,$0F,$84,$D2,$A9,$9E,$85,$D0
       .byte $A4,$D5,$C0,$5C,$B0,$01,$C8,$84,$D4,$E6,$98,$4C,$07,$F8,$A2,$1F
       .byte $85,$02,$8A,$29,$0F,$A8,$B9,$54,$FB,$05,$9A,$85,$08,$A9,$FF,$85
       .byte $0D,$85,$0E,$85,$0F,$CA,$10,$E8,$38,$60,$A7,$9E,$E5,$DA,$A5,$9D
       .byte $E5,$D9,$60,$18,$75,$01,$95,$01,$98,$A0,$00,$75,$00,$95,$00,$60
LFB4A: .byte $69,$63,$75,$6D,$67,$77,$73,$65,$71,$6F,$00,$02,$04,$06,$08,$0A
       .byte $0C,$0E,$0E,$0C,$0A,$08,$06,$04,$02,$00,$0C,$00,$0C,$00,$0C,$78
       .byte $CC,$00,$CC,$78,$0C,$78,$0C,$78,$CC,$78,$CC,$78,$C0,$78,$0C,$78
       .byte $C0,$78,$10,$B0,$00,$00,$00,$01,$23,$77,$FF,$FF,$04,$0E,$1F,$3F
       .byte $7F,$FF,$FF,$FF,$68,$56,$00,$35,$FD,$10,$08,$00,$00,$00,$00,$00
       .byte $30,$31,$00,$80,$FF,$01,$12,$F8,$94,$90,$F8,$FE,$FF,$CF,$87,$06
       .byte $08,$90,$E0,$C0,$80,$C0,$C0,$03,$00,$00,$01,$03,$03,$07,$07,$CF
       .byte $FB,$FF,$C3,$81,$00,$00,$7F,$F8,$94,$90,$F8,$FE,$FF,$CF,$87,$06
       .byte $08,$90,$E0,$C0,$80,$FF,$80,$03,$00,$00,$01,$03,$03,$07,$07,$8F
       .byte $FB,$FF,$C3,$81,$00,$01,$01,$4C,$4A,$46,$B4,$B6,$B8,$4C,$62,$64
       .byte $66,$68,$64,$60,$46,$08,$08
LFBF1: TXA            
       ASL            
       ASL            
       ASL            
       TAY            
       LDA    LFEF7,Y 
       STA    $C5     
       LDX    #$0C    
LFBFD: LDA    $C5     
       STA    $C5,X   
       INY            
       LDA    LFEF7,Y 
       STA    $C4,X   
       DEX            
       DEX            
       BPL    LFBFD   
       LDY    #$08    
LFC0D: STA    WSYNC   
       DEY            
       BPL    LFC0D   
LFC12: LDY    #$09    
LFC14: DEY            
       BNE    LFC14   
       LDA    $C3     
       CMP    $87     
       BEQ    LFC1E   
       BIT    $84A4   
       LDX    #$0C    
LFC22: LDA    $C4     
       AND    LFF34,Y 
       PHA            
       INY            
       DEX            
       BNE    LFC22   
       LDA    $C3     
       BMI    LFC6F   
       CMP    $87     
       BEQ    LFC35   
       BIT    $CA     
       LDY    #$0A    
       STY    $C4     
       LDA    #$FC    
       STA    PF2     
       PLA            
       STX    PF1     
LFC41: STA    COLUPF  
       LDA    ($CA),Y 
       STA    GRP0    
       LDA    ($D0),Y 
       STA    GRP1    
       LDA    ($C8),Y 
       STA    GRP0    
       LDA    ($CE),Y 
       STA    $C5     
       .byte $B3 ;.LAX
       DEC    $B1     
       CPY    $C5A4   
       STY    GRP1    
       STX    GRP0    
       STA    GRP1    
       STA    GRP0    
       PLA            
       DEC    $C4     
       LDY.w  $00C4   
       BPL    LFC41   
       INY            
       STY    PF1     
       STY    PF2     
       RTS            

LFC6F: STA    ENABL   
       STX    COLUPF  
       LDA    #$34    
       STA    CTRLPF  
       PLA            
       PLA            
       LDA    #$99    
       STA    $C5     
       LDY    #$05    
LFC7F: DEY            
LFC80: LDA    ($D0),Y 
       STA    GRP1    
       STA    WSYNC   
       PLA            
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($C8),Y 
       STA    GRP0    
       LDA    ($CE),Y 
       STA    GRP1    
       .byte $B3 ;.LAX
       CPY    $C6B1   
       STA    RESBL   
       LSR    $C5     
       STA    GRP0    
       STX    GRP1    
       STA    GRP0    
       BCS    LFC7F   
       BNE    LFC80   
       PLA            
       STY    COLUP0  
       STY    COLUP1  
       STY    ENABL   
       LDA    #$D0    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFCB7: .byte $A6,$FB,$B5,$01,$B4,$00,$A2,$FE,$20,$77,$F3,$90,$02,$E6,$FD,$A6
       .byte $FC,$10,$09,$E8,$E0,$83,$D0,$02,$A2,$03,$86,$FC,$A2,$F9,$2C

START:
       LDX    #$00    
       CLD            
       LDA    #$00    
       TXS            
LFCDC: PHA            
       TSX            
       BNE    LFCDC   
LFCE0: LDY    #$39    
       LDX    #$F3    
       LDA    #$0E    
LFCE6: STA    WSYNC   
       STA    VSYNC   
       LSR            
       BNE    LFCE6   
       STY    TIM64T  
       TXA            
       TXS            
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       STA    HMP1    
       ASL            
       STA    HMP0    
       STA    RESP0   
       STA    RESP1   
       LDX    #$05    
       LDY    #$3D    
       JSR    LF793   
LFD0A: LDY    INTIM   
       BNE    LFD0A   
       STY    WSYNC   
       STA    HMOVE   
       STY    VBLANK  
       STX    TIM64T  
       STX    $C3     
       LDA    #$0F    
       STA    $C4     
       JSR    LFC12   
       LDA    $80     
       AND    #$03    
       BNE    LFD2F   
       DEC    $84     
       BPL    LFD2F   
       LDY    #$0D    
       STY    $84     
LFD2F: LSR            
       LDY    $83     
       BCS    LFD55   
       LDA    $81     
       ADC    #$20    
       BCC    LFD3C   
       ADC    #$0F    
LFD3C: TAX            
       LDA    $82     
       BMI    LFD4A   
       INY            
       CPY    #$0F    
       BCC    LFD53   
       ORA    #$80    
       BMI    LFD51   
LFD4A: EOR    #$C0    
       DEY            
       BNE    LFD53   
       STX    $81     
LFD51: STA    $82     
LFD53: STY    $83     
LFD55: BEQ    LFDAD   
       LDA    LFF16,Y 
       STA    $C3     
       LSR            
       STA    $C4     
       LDX    LFF25,Y 
LFD62: STA    WSYNC   
       DEX            
       BNE    LFD62   
       LDY    #$07    
       BIT    $82     
       BVC    LFD71   
       LDY    #$FF    
       LDX    #$06    
LFD71: STX    $C6     
LFD73: CPY    $C6     
       BEQ    LFDAD   
       BMI    LFD7B   
       DEY            
       .byte $82 ;.NOP
LFD7B: INY            
       LDX    $81     
LFD7E: STA    WSYNC   
       STX    COLUPF  
       LDA    LFF4D,Y 
       STA    PF0     
       LDA    LFF5A,Y 
       STA    PF1     
       LDA    LFF61,Y 
       STA    PF2     
       NOP            
       LDA    LFF53,Y 
       STA    PF0     
       LDA    $C4     
       ADC    $C3     
       STA    $C4     
       LDA    LFF68,Y 
       STA    PF1     
       LDA    LFF6F,Y 
       STA    PF2     
       BCS    LFD73   
       INX            
       INX            
       BCC    LFD7E   
LFDAD: INC    $80     
       LDY    #$00    
       STY    PF0     
       STY    COLUPF  
       INY            
       STY    CTRLPF  
LFDB8: LDA    INTIM   
       EOR    #$7B    
       BNE    LFDB8   
       TAX            
       LDA    $FC     
       AND    #$7F    
       BPL    LFDCB   
LFDC6: BIT    $FC     
       BPL    LFDCD   
       TXA            
LFDCB: STA    $87     
LFDCD: STX    $C3     
       JSR    LFBF1   
       LDX    $C3     
       INX            
       CPX    #$03    
       BCC    LFDCD   
       BEQ    LFDC6   
       LDX    #$82    
       STA    WSYNC   
       STX    VBLANK  
       LDA    #$32    
       STA    TIM64T  
       LDA    $FC     
       AND    #$0F    
       TAY            
       LDA    SWCHB   
       LSR            
       ROR            
       BCC    LFDFB   
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LFE19   
       ASL            
       ASL            
LFDFB: INC    $85     
       BPL    LFE1B   
       ASL            
       BPL    LFE08   
       DEY            
       BPL    LFE11   
       LDY    #$02    
       BIT    $1190   
       INY            
       CPY    #$04    
       BCC    LFE11   
       LDY    #$00    
LFE11: LDA    #$00    
       STA    $84     
       STY    $FC     
       LDX    #$67    
LFE19: STX    $85     
LFE1B: LSR    SWCHB   
       BCC    LFE68   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       AND    INPT4   
       BPL    LFE68   
       BIT    $86     
       BPL    LFE6B   
       LDA    $FC     
       CMP    #$03    
       BCC    LFE3B   
       BNE    LFE43   
       LDA    #$80    
       STA    $FC     
LFE3B: LDY    #$00    
       STY    $FD     
       STY    $FE     
       STY    $FF     
LFE43: AND    #$0F    
       TAY            
       LDX    #$04    
LFE48: LDA    LFE59,Y 
       STA    $F7,X   
       INY            
       INY            
       INY            
       DEX            
       BPL    LFE48   
       JMP.ind ($00F7)
LFE56: .byte $6C,$F9,$00
LFE59: .byte $CB,$C4,$D9,$F0,$F7,$F7,$02,$85,$E4,$F0,$F4,$F7,$00,$0D,$E2
LFE68: SEC            
       ROR    $86     
LFE6B: LDA    INTIM   
       BNE    LFE6B   
       JMP    LFCE0   
LFE73: .byte $8D,$75,$F5,$F5,$F5,$8C,$7D,$7D,$7D,$75,$8C,$E1,$EF,$EF,$EF,$EF
       .byte $6F,$AF,$AF,$AF,$AF,$6F,$6D,$6D,$6D,$6D,$6D,$0D,$6D,$6D,$6D,$6D
       .byte $98,$BF,$BE,$BE,$BD,$BC,$8C,$BC,$BC,$BE,$BE,$87,$1D,$0D,$ED,$15
       .byte $05,$04,$A5,$A5,$AD,$0D,$1C,$AE,$AE,$AE,$AE,$AE,$6A,$AA,$A4,$A4
       .byte $AE,$6E,$9B,$6B,$7B,$7B,$78,$7B,$7B,$7B,$78,$6F,$9F,$5B,$5A,$5B
       .byte $43,$DB,$5A,$66,$7E,$FF,$FF,$FF,$36,$D6,$D6,$D6,$36,$F0,$F6,$D6
       .byte $36,$F6,$FE,$DB,$DB,$DB,$DB,$DB,$DB,$C7,$FF,$BD,$BD,$BD,$1B,$6A
       .byte $6A,$6A,$6A,$6A,$6A,$6A,$6A,$6B,$1F,$70,$B7,$D7,$D3,$D7,$D7,$D1
       .byte $DF,$FF,$FF,$FF
LFEF7: .byte $FE,$7E,$94,$AA,$73,$89,$9F,$5F,$FE,$C0,$D6,$EC,$B5,$CB,$E1,$6F
       .byte $FF,$81,$97,$AD,$76,$8C,$A2,$DF,$FF,$C3,$D9,$EF,$B8,$CE,$E4
LFF16: .byte $2F,$FF,$9A,$68,$4F,$40,$36,$30,$2B,$28,$25,$23,$22,$21,$20
LFF25: .byte $20,$25,$23,$20,$1D,$1B,$18,$16,$14,$12,$10,$0F,$0E,$0E,$0D
LFF34: .byte $0D,$F4,$F6,$F8,$FA,$FC,$FE,$FC,$FA,$F8,$F6,$F4,$F2,$F0,$F2,$F4
       .byte $F6,$F8,$FA,$FC,$FE,$FC,$FA,$F8,$F6
LFF4D: .byte $F0,$80,$80,$F0,$10,$10
LFF53: .byte $F0,$80,$80,$C0,$C0,$C0,$F0
LFF5A: .byte $BF,$B5,$B5,$B5,$25,$21,$A1
LFF61: .byte $BE,$A2,$A2,$B2,$B2,$B2,$BE
LFF68: .byte $61,$60,$60,$7D,$45,$45,$7D
LFF6F: .byte $4F,$0C,$4C,$CF,$C0,$C0,$CF,$F8,$F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3
       .byte $F3,$F8,$E6,$66,$E6,$E6,$E6,$E0,$E6,$E6,$E6,$66,$F1,$F7,$EB,$CD
       .byte $CD,$CD,$CD,$CD,$CD,$CD,$CD,$CD,$83,$9F,$9F,$9F,$9F,$87,$9F,$9F
       .byte $9F,$9F,$83,$86,$CE,$CE,$CE,$CE,$CE,$CE,$CE,$8E,$CE,$EE,$6F,$5F
       .byte $3F,$3F,$5F,$6F,$7F,$7F,$7F,$7F,$7F,$03,$F3,$F3,$F3,$F3,$C3,$F7
       .byte $F7,$F7,$F7,$87,$F9,$F9,$F9,$F9,$F9,$18,$FD,$FD,$FD,$FD,$FC,$B9
       .byte $B9,$B9,$B9,$B9,$39,$BB,$BB,$BB,$BB,$20,$9A,$9A,$9A,$9A,$9A,$82
       .byte $BB,$BB,$BB,$BB,$BB,$08,$7B,$7B,$7B,$7B,$7B,$7B,$7B,$7B,$7B,$78
       .byte $26,$A6,$A6,$A6,$A6,$26,$2E,$2E,$2E,$2E,$20,$00,$00,$D6,$FC,$56
       .byte $FE
