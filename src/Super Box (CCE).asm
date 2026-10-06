; Disassembly of roms/Super Box (CCE).bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf7 roms/Super Box (CCE).bin
;

      processor 6502
$00     =  $00
INPTCTRL =  $01
$02     =  $02
INPT4   =  $0C
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
SWCHA   =  $0280
SWCHB   =  $0282
LF0F7   =   $F0F7
LF1E0   =   $F1E0
LF2F9   =   $F2F9
LF45F   =   $F45F
LF58A   =   $F58A
LFAF9   =   $FAF9

       ORG $C000
LC000: .byte $78,$2C,$F9,$FF,$85,$02,$85,$2A,$20,$0F,$B3,$20,$0F,$B3,$85,$2B
       .byte $4C,$CC,$BF,$85,$20,$85,$21,$A5,$85,$A9,$00,$85,$09,$85,$02,$85
       .byte $2A,$A9,$00,$85,$85,$A5,$A3,$C9,$04,$66,$85,$A5,$83,$4A,$4A,$4A
       .byte $A2,$8E,$8E,$09,$00,$85,$2B,$29,$01,$A2,$00,$24,$85,$10,$04,$AA
       .byte $4C,$46,$B0,$AD,$80,$02,$BD,$CF,$B5,$85,$F4,$A5,$85,$A9,$00,$85
       .byte $09,$BD,$D1,$B5,$85,$F6,$85,$02,$85,$2A,$A2,$FF,$A9,$8C,$86,$0F
       .byte $85,$08,$A9,$0F,$85,$0E,$A9,$00,$85,$25,$85,$26,$A9,$B5,$85,$86
       .byte $A9,$49,$A6,$9F,$E0,$04,$D0,$09,$A5,$83,$4A,$29,$01,$AA,$BD,$D3
       .byte $B5,$85,$85,$A9,$B5,$85,$F5,$85,$F7,$85,$02,$85,$2A,$B9,$00,$B5
       .byte $85,$08,$B1,$F4,$85,$1B,$B1,$F6,$85,$1C,$A9,$00,$85,$07,$B1,$85
       .byte $BE,$B8,$B5,$20,$0F,$B3,$8D,$1C,$00
LC0A9: .byte $86,$07,$88,$10,$DB,$85,$02,$85,$2A,$C8,$84,$0E,$84,$0F,$84,$1F
       .byte $A9,$06,$85,$09,$20,$00,$B4,$A9,$06,$85,$08,$A2,$FF,$86,$0D,$86
       .byte $0E,$A9,$05,$85,$0A,$85,$04,$85,$02,$85,$2A,$86,$0F,$A5,$C0,$29
       .byte $0F,$AA,$CA,$10,$FD,$85,$10,$85,$02,$85,$2A,$A5,$C1,$85,$06,$A9
       .byte $02,$85,$09,$A2,$04,$A5,$C0,$85,$20,$85,$02,$85,$2A,$A9,$FF,$85
       .byte $1B,$A9,$F0,$85,$0E,$20,$0F,$B3,$20,$0F,$B3,$85,$2B,$CA,$10,$E9
       .byte $85,$02,$85,$2A,$A9,$06,$85,$09,$E8,$86,$0D,$86,$0E,$86,$0F,$86
       .byte $1B,$86,$04,$A2,$01,$86,$0A,$A9,$B8,$85,$86,$85,$88,$85,$8A,$85
       .byte $8C,$85,$02,$85,$2A,$A0,$00,$84,$1B,$84,$1C,$84,$1B,$A9,$80,$85
       .byte $08,$84,$25,$84,$26,$A2,$10,$A5,$99,$29,$F0,$85,$10,$85,$11,$4A
       .byte $D0,$02,$A9,$80,$85,$85,$86,$20,$86,$21,$A2,$03,$A0,$04,$84,$04
       .byte $84,$05,$A5,$99,$29,$0F,$0A,$85,$02,$85,$2A,$86,$0E,$A2,$07,$86
       .byte $0F,$A2,$07,$0A,$0A,$85,$87,$A5,$9A,$29,$F0,$4A,$D0,$02,$A9,$80
       .byte $85,$89,$A0,$03,$86,$0E,$84,$0F,$A5,$9A,$29,$0F,$0A,$0A,$0A,$85
       .byte $8B,$A0,$07,$85,$2B,$85,$02,$85,$2A,$B1,$85,$85,$1B,$B1,$87,$85
       .byte $1C,$A9,$03,$85,$0E,$A9,$07,$85,$0F,$A2,$03,$A5,$85,$A9,$07,$85
       .byte $0E,$86,$0F,$B1,$89,$85,$1B,$B1,$8B,$85,$1C,$A2,$1E,$86,$06,$86
       .byte $07,$88,$10,$D1,$85,$02,$85,$2A,$C8,$84,$1B,$84,$1C,$84,$1B,$A9
       .byte $0E,$85,$06,$A9,$03,$85,$0E,$A9,$07,$85,$0F,$A2,$07,$A9,$03,$20
       .byte $0F,$B3,$85,$10,$86,$0E,$85,$0F,$A9,$30,$85,$20,$84,$04,$84,$05
       .byte $85,$02,$85,$2A,$A9,$03,$85,$0E,$A9,$07,$85,$0F,$A9,$03,$A2,$07
       .byte $20,$0F,$B3,$20,$0F,$B3,$86,$0E,$85,$0F,$85,$2B,$85,$02,$85,$2A
       .byte $84,$0E,$A0,$80,$84,$0F,$A9,$40,$85,$08,$A5,$98,$29,$0F,$0A,$0A
       .byte $0A,$85,$85,$A9,$C0,$20,$0F,$B3,$8D,$0F,$00,$A0,$07,$85,$02,$85
       .byte $2A,$B1,$85,$85,$1B,$A9,$80,$85,$0F,$20,$0F,$B3,$20,$0F,$B3,$A5
       .byte $85,$A9,$C0,$85,$0F,$88,$10,$E5,$85,$02,$85,$2A,$C8,$84,$1B,$84
       .byte $1C,$84,$1B,$A9,$80,$85,$0F,$20,$0F,$B3,$20,$0F,$B3,$A9,$C0,$85
       .byte $0F,$85,$02,$85,$2A,$84,$0E,$84,$0F,$85,$02,$85,$2A,$84,$09,$A9
       .byte $29,$A2,$82,$85,$02,$8D,$96,$02,$86,$01,$4C,$DE,$BF,$A9,$00,$85
       .byte $09,$85,$08,$A9,$FF,$85,$0D,$A9,$F0,$85,$0E,$A2,$0D,$85,$02,$85
       .byte $2A,$CA,$10,$F9,$20,$00,$B4,$A2,$0E,$85,$02,$85,$2A,$CA,$10,$F9
       .byte $A5,$E8,$85,$85,$85,$02,$85,$2A,$A5,$EA,$85,$87,$A5,$E9,$85,$86
       .byte $A5,$EB,$EA,$85,$88,$A9,$00,$85,$0B,$A9,$08,$85,$0C,$A9,$30,$85
       .byte $20,$85,$10,$A9,$40,$85,$21,$A9,$00,$85,$25,$85,$11,$85,$26,$20
       .byte $04,$B0,$A9,$00,$85,$0D,$85,$0E,$4C,$68,$B2,$85,$02,$85,$2A,$A5
       .byte $F0,$85,$C2,$A5,$F1,$85,$C3,$A5,$F2,$85,$C4,$A5,$F3,$85,$C5,$A5
       .byte $F4,$85,$C6,$A5,$F5,$85,$C7,$A5,$F6,$85,$C8,$A5,$F7,$85,$C9,$A5
       .byte $F8,$85,$CA,$A5,$F9,$85,$CB,$85,$02,$85,$2A,$A5,$FA,$85,$CC,$A5
       .byte $FB,$85,$CD,$20,$00,$B4,$60,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$A2,$FF,$85,$02,$85,$2A,$86,$26,$86
       .byte $25,$A0,$F3,$84,$0C,$84,$04,$A9,$0E,$85,$06,$85,$07,$A9,$00,$85
       .byte $1C,$85,$1B,$85,$0B,$8D,$10,$00,$85,$11,$84,$20,$84,$05,$AD,$80
       .byte $02,$EA,$A9,$07,$85,$86,$EA,$D0,$02,$85,$2B,$A4,$86,$B1,$C2,$85
       .byte $1B,$85,$2A,$B1,$CA,$85,$85,$B1,$C8,$AA,$B1,$C4,$85,$1C,$B1,$C6
       .byte $85,$1B,$B1,$CC,$A4,$85,$86,$1C,$84,$1B,$85,$1C,$85,$1B,$C6,$86
       .byte $10,$D7,$A9,$00,$85,$1B,$85,$1C,$85,$1B,$85,$02,$85,$2A,$85,$25
       .byte $85,$26,$85,$04,$85,$05,$60,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$02,$02,$02,$12,$12,$12,$12,$12
       .byte $12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$00,$86
       .byte $88,$8A,$00,$00,$00,$00,$FC,$FC,$FF,$FF,$33,$33,$7B,$7B,$7F,$7F
       .byte $7F,$04,$0E,$1F,$1F,$1F,$1F,$0E,$04,$00,$00,$00,$00,$FC,$FC,$FF
       .byte $FF,$33,$33,$7B,$7B,$7F,$7F,$7F,$10,$38,$7C,$7C,$7C,$7C,$38,$10
       .byte $00,$00,$00,$00,$FC,$30,$30,$78,$78,$78,$30,$00,$7F,$7F,$7F,$08
       .byte $1C,$3E,$3E,$3E,$3E,$1C,$08,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$7E,$18,$18,$3C,$3C,$3C,$3C,$7E,$3C,$3C,$18,$00,$00,$00,$00
       .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$7E,$18,$18,$3C,$3C,$3C,$3C,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FE,$FE,$FE
       .byte $FE,$FE,$FE,$FE,$FF,$FF,$33,$33,$7B,$7B,$7B,$7B,$FF,$78,$78,$30
       .byte $00,$00,$00,$00,$FF,$FF,$FF,$7E,$18,$18,$3C,$3C,$3C,$3C,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$0A
       .byte $0C,$0E,$0E,$0C,$08,$0A,$77,$A9,$60,$92,$32,$1B,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$3C,$66,$66,$66,$66,$66,$3C,$00,$3C
       .byte $18,$18,$18,$18,$38,$18,$00,$7E,$60,$60,$3C,$06,$46,$3C,$00,$3C
       .byte $46,$06,$0C,$06,$46,$3C,$00,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$7C
       .byte $46,$06,$7C,$60,$60,$7E,$00,$3C,$66,$66,$7C,$60,$62,$3C,$00,$18
       .byte $18,$18,$0C,$06,$42,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C
       .byte $46,$06,$3E,$66,$66,$3C,$00,$24,$24,$24,$3C,$24,$24,$3C,$00,$38
       .byte $24,$24,$38,$24,$24,$38,$00,$3C,$24,$20,$20,$20,$24,$3C,$00,$38
       .byte $24,$24,$24,$24,$24,$38,$00,$3C,$20,$20,$38,$20,$20,$3C,$00,$20
       .byte $20,$20,$38,$20,$20,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$18,$00,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07
       .byte $0F,$4C,$AC,$4C,$0C,$0F,$07,$C7,$EF,$EC,$0C,$0C,$EC,$EF,$C7,$C7
       .byte $EF,$EC,$0C,$0F,$EC,$EF,$C7,$C0,$E0,$E4,$0A,$E4,$E0,$E0,$C0,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$12,$12,$12,$13,$12,$12,$39,$00,$AB
       .byte $AA,$AA,$B3,$AA,$AA,$2B,$00,$82,$02,$02,$03,$02,$02,$81,$00,$82
       .byte $82,$82,$83,$82,$82,$03,$00,$BB,$A0,$A0,$31,$A2,$A2,$39,$00,$10
       .byte $90,$90,$10,$10,$10,$B8,$00,$2A,$2A,$2A,$33,$2B,$2A,$2A,$00,$48
       .byte $55,$D5,$D5,$55,$55,$48,$00,$D4,$14,$14,$19,$14,$14,$D4,$00,$08
       .byte $15,$15,$D5,$15,$15,$09,$00,$88,$48,$48,$48,$48,$48,$5C,$00,$48
       .byte $48,$00,$48,$48,$48,$48,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$12,$12,$12,$13,$12,$12,$3A,$00,$90
       .byte $A8,$A8,$28,$A8,$A8,$90,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$4A,$4A,$4A,$4E,$4A,$4A,$EA,$00,$E1
       .byte $82,$82,$C2,$82,$82,$E2,$00,$4E,$A4,$A4,$A4,$24,$24,$2E,$00,$94
       .byte $94,$B5,$F7,$D6,$94,$94,$00,$BA,$A2,$A2,$B3,$A2,$A2,$BB,$00,$95
       .byte $95,$80,$15,$95,$95,$15,$00,$45,$4A,$4A,$4A,$48,$48,$E8,$00,$10
       .byte $A8,$A8,$A8,$A8,$A8,$90,$00,$00,$00,$00,$00,$00,$00,$00,$00,$8E
       .byte $88,$88,$C8,$A8,$A8,$C8,$00,$A4,$A4,$A4,$E4,$AA,$AA,$4A,$00,$EA
       .byte $8A,$8A,$CC,$8A,$8A,$EC,$00,$49,$A9,$AB,$AF,$AD,$A9,$49,$00,$70
       .byte $40,$40,$60,$40,$40,$70,$00,$00,$00,$00,$00,$00,$00,$00,$00,$8E
       .byte $88,$88,$C8,$A8,$A8,$C8,$00,$A4,$A4,$A4,$E4,$AA,$AA,$4A,$00,$EA
       .byte $8A,$8A,$CC,$8A,$8A,$EC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$CA,$AA,$AA,$AC,$AA,$AA,$CC,$00,$A5
       .byte $AA,$AA,$EA,$A8,$A8,$48,$00,$00,$80,$80,$80,$80,$80,$80,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$4A
       .byte $AA,$AA,$2E,$2A,$2A,$24,$00,$CC,$AA,$AA,$CC,$AA,$AA,$CC,$00,$E9
       .byte $49,$4B,$4F,$4D,$49,$E9,$00,$00,$00,$00,$00,$00,$40,$40,$00,$4A
       .byte $AA,$AA,$2E,$2A,$2A,$24,$00,$6A,$8A,$8A,$8C,$8A,$8A,$6A,$00,$0E
       .byte $04,$04,$04,$04,$04,$0E,$00,$A4,$AA,$AA,$CA,$AA,$AA,$C4,$00,$90
       .byte $90,$B0,$F0,$D0,$90,$90,$00,$8E,$84,$84,$C4,$84,$84,$EE,$00,$C4
       .byte $24,$24,$44,$84,$84,$6E,$00,$C0,$20,$20,$40,$80,$80,$60,$00,$EE
       .byte $88,$88,$8C,$88,$88,$8E,$00,$84,$84,$84,$C4,$84,$84,$EE,$00,$41
       .byte $42,$42,$42,$A2,$A2,$A1,$00,$0E,$88,$88,$88,$88,$A8,$28,$00,$EA
       .byte $8A,$8A,$CE,$8A,$8A,$E4,$00,$A4,$A4,$A4,$C4,$AA,$AA,$CA,$00,$08
       .byte $08,$0A,$0F,$0D,$08,$08,$00,$A9,$AA,$AA,$BA,$AA,$AA,$91,$00,$A9
       .byte $2A,$2A,$3A,$2A,$2A,$A9,$00,$04,$84,$85,$87,$86,$84,$04,$00,$55
       .byte $55,$55,$DD,$D5,$55,$49,$00,$20,$20,$60,$E0,$A0,$20,$20,$00,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$EA,$EA,$EA,$4C,$13,$B0,$EA,$EA,$EA
       .byte $4C,$76,$B2,$2C,$F8,$FF,$4C,$6E,$D1,$EA,$EA,$EA,$4C,$D4,$B2,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$2C,$F9,$FF,$4C,$E1,$FF,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$00,$B0,$00,$B0,$00,$B0,$78,$2C,$F9,$FF,$85,$02,$85,$2A,$20
       .byte $0F,$B3,$20,$0F,$B3,$85,$2B,$4C,$CC,$BF,$85,$20,$85,$21,$A5,$85
       .byte $A9,$00,$85,$09,$85,$02,$85,$2A,$A9,$00,$85,$85,$A5,$A3,$C9,$04
       .byte $66,$85,$A5,$83,$4A,$4A,$4A,$A2,$8E,$8E,$09,$00,$85,$2B,$29,$01
       .byte $A2,$00,$24,$85,$10,$04,$AA,$4C,$46,$B0,$AD,$80,$02,$BD,$CF,$B5
       .byte $85,$F4,$A5,$85,$A9,$00,$85,$09,$BD,$D1,$B5,$85,$F6,$85,$02,$85
       .byte $2A,$A2,$FF,$A9,$8C,$86,$0F,$85,$08,$A9,$0F,$85,$0E,$A9,$00,$85
       .byte $25,$85,$26,$A9,$B5,$85,$86,$A9,$49,$A6,$9F,$E0,$04,$D0,$09,$A5
       .byte $83,$4A,$29,$01,$AA,$BD,$D3,$B5,$85,$85,$A9,$B5,$85,$F5,$85,$F7
       .byte $85,$02,$85,$2A,$B9,$00,$B5,$85,$08,$B1,$F4,$85,$1B,$B1,$F6,$85
       .byte $1C,$A9,$00,$85,$07,$B1,$85,$BE,$B8,$B5,$20,$0F,$B3,$8D,$1C,$00
       .byte $86,$07,$88,$10,$DB,$85,$02,$85,$2A,$C8,$84,$0E,$84,$0F,$84,$1F
       .byte $A9,$06,$85,$09,$20,$00,$B4,$A9,$06,$85,$08,$A2,$FF,$86,$0D,$86
       .byte $0E,$A9,$05,$85,$0A,$85,$04,$85,$02,$85,$2A,$86,$0F,$A5,$C0,$29
       .byte $0F,$AA,$CA,$10,$FD,$85,$10,$85,$02,$85,$2A,$A5,$C1,$85,$06,$A9
       .byte $02,$85,$09,$A2,$04,$A5,$C0,$85,$20,$85,$02,$85,$2A,$A9,$FF,$85
       .byte $1B,$A9,$F0,$85,$0E,$20,$0F,$B3,$20,$0F,$B3,$85,$2B,$CA,$10,$E9
       .byte $85,$02,$85,$2A,$A9,$06,$85,$09,$E8,$86,$0D,$86,$0E,$86,$0F,$86
       .byte $1B,$86,$04,$A2,$01,$86,$0A,$A9,$B8,$85,$86,$85,$88,$85,$8A,$85
       .byte $8C,$85,$02,$85,$2A,$A0,$00,$84,$1B,$84,$1C,$84,$1B,$A9,$80,$85
       .byte $08,$84,$25,$84,$26,$A2,$10,$A5,$99,$29,$F0,$85,$10,$85,$11,$4A
       .byte $D0,$02,$A9,$80,$85,$85,$86,$20,$86,$21,$A2,$03,$A0,$04,$84,$04
       .byte $84,$05,$A5,$99,$29,$0F,$0A,$85,$02,$85,$2A,$86,$0E,$A2,$07,$86
       .byte $0F,$A2,$07,$0A,$0A,$85,$87,$A5,$9A,$29,$F0,$4A,$D0,$02,$A9,$80
       .byte $85,$89,$A0,$03,$86,$0E,$84,$0F,$A5,$9A,$29,$0F,$0A,$0A,$0A,$85
       .byte $8B,$A0,$07,$85,$2B,$85,$02,$85,$2A,$B1,$85,$85,$1B,$B1,$87,$85
       .byte $1C,$A9,$03,$85,$0E,$A9,$07,$85,$0F,$A2,$03,$A5,$85,$A9,$07,$85
       .byte $0E,$86,$0F,$B1,$89,$85,$1B,$B1,$8B,$85,$1C,$A2,$1E,$86,$06,$86
       .byte $07,$88,$10,$D1,$85,$02,$85,$2A,$C8,$84,$1B,$84,$1C,$84,$1B,$A9
       .byte $0E,$85,$06,$A9,$03,$85,$0E,$A9,$07,$85,$0F,$A2,$07,$A9,$03,$20
       .byte $0F,$B3,$85,$10,$86,$0E,$85,$0F,$A9,$30,$85,$20,$84,$04,$84,$05
       .byte $85,$02,$85,$2A,$A9,$03,$85,$0E,$A9,$07,$85,$0F,$A9,$03,$A2,$07
       .byte $20,$0F,$B3,$20,$0F,$B3,$86,$0E,$85,$0F,$85,$2B,$85,$02,$85,$2A
       .byte $84,$0E,$A0,$80,$84,$0F,$A9,$40,$85,$08,$A5,$98,$29,$0F,$0A,$0A
       .byte $0A,$85,$85,$A9,$C0,$20,$0F,$B3,$8D,$0F,$00,$A0,$07,$85,$02,$85
       .byte $2A,$B1,$85,$85,$1B,$A9,$80,$85,$0F,$20,$0F,$B3,$20,$0F,$B3,$A5
       .byte $85,$A9,$C0,$85,$0F,$88,$10,$E5,$85,$02,$85,$2A,$C8,$84,$1B,$84
       .byte $1C,$84,$1B,$A9,$80,$85,$0F,$20,$0F,$B3,$20,$0F,$B3,$A9,$C0,$85
       .byte $0F,$85,$02,$85,$2A,$84,$0E,$84,$0F,$85,$02,$85,$2A,$84,$09,$A9
       .byte $29,$A2,$82,$85,$02,$8D,$96,$02,$86,$01,$4C,$DE,$BF,$A9,$00,$85
       .byte $09,$85,$08,$A9,$FF,$85,$0D,$A9,$F0,$85,$0E,$A2,$0D,$85,$02,$85
       .byte $2A,$CA,$10,$F9,$20,$00,$B4,$A2,$0E,$85,$02,$85,$2A,$CA,$10,$F9
       .byte $A5,$E8,$85,$85,$85,$02,$85,$2A,$A5,$EA,$85,$87,$A5,$E9,$85,$86
       .byte $A5,$EB,$EA,$85,$88,$A9,$00,$85,$0B,$A9,$08,$85,$0C,$A9,$30,$85
       .byte $20,$85,$10,$A9,$40,$85,$21,$A9,$00,$85,$25,$85,$11,$85,$26,$20
       .byte $04,$B0,$A9,$00,$85,$0D,$85,$0E,$4C,$68,$B2,$85,$02,$85,$2A,$A5
       .byte $F0,$85,$C2,$A5,$F1,$85,$C3,$A5,$F2,$85,$C4,$A5,$F3,$85,$C5,$A5
       .byte $F4,$85,$C6,$A5,$F5,$85,$C7,$A5,$F6,$85,$C8,$A5,$F7,$85,$C9,$A5
       .byte $F8,$85,$CA,$A5,$F9,$85,$CB,$85,$02,$85,$2A,$A5,$FA,$85,$CC,$A5
       .byte $FB,$85,$CD,$20,$00,$B4,$60,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$A2,$FF,$85,$02,$85,$2A,$86,$26,$86
       .byte $25,$A0,$F3,$84,$0C,$84,$04,$A9,$0E,$85,$06,$85,$07,$A9,$00,$85
       .byte $1C,$85,$1B,$85,$0B,$8D,$10,$00,$85,$11,$84,$20,$84,$05,$AD,$80
       .byte $02,$EA,$A9,$07,$85,$86,$EA,$D0,$02,$85,$2B,$A4,$86,$B1,$C2,$85
       .byte $1B,$85,$2A,$B1,$CA,$85,$85,$B1,$C8,$AA,$B1,$C4,$85,$1C,$B1,$C6
       .byte $85,$1B,$B1,$CC,$A4,$85,$86,$1C,$84,$1B,$85,$1C,$85,$1B,$C6,$86
       .byte $10,$D7,$A9,$00,$85,$1B,$85,$1C,$85,$1B,$85,$02,$85,$2A,$85,$25
       .byte $85,$26,$85,$04,$85,$05,$60,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$02,$02,$02,$12,$12,$12,$12,$12
       .byte $12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$00,$86
       .byte $88,$8A,$00,$00,$00,$00,$FC,$FC,$FF,$FF,$33,$33,$7B,$7B,$7F,$7F
       .byte $7F,$04,$0E,$1F,$1F,$1F,$1F,$0E,$04,$00,$00,$00,$00,$FC,$FC,$FF
       .byte $FF,$33,$33,$7B,$7B,$7F,$7F,$7F,$10,$38,$7C,$7C,$7C,$7C,$38,$10
       .byte $00,$00,$00,$00,$FC,$30,$30,$78,$78,$78,$30,$00,$7F,$7F,$7F,$08
       .byte $1C,$3E,$3E,$3E,$3E,$1C,$08,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$7E,$18,$18,$3C,$3C,$3C,$3C,$7E,$3C,$3C,$18,$00,$00,$00,$00
       .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$7E,$18,$18,$3C,$3C,$3C,$3C,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FE,$FE,$FE
       .byte $FE,$FE,$FE,$FE,$FF,$FF,$33,$33,$7B,$7B,$7B,$7B,$FF,$78,$78,$30
       .byte $00,$00,$00,$00,$FF,$FF,$FF,$7E,$18,$18,$3C,$3C,$3C,$3C,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$0A
       .byte $0C,$0E,$0E,$0C,$08,$0A,$77,$A9,$60,$92,$32,$1B,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$3C,$66,$66,$66,$66,$66,$3C,$00,$3C
       .byte $18,$18,$18,$18,$38,$18,$00,$7E,$60,$60,$3C,$06,$46,$3C,$00,$3C
       .byte $46,$06,$0C,$06,$46,$3C,$00,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$7C
       .byte $46,$06,$7C,$60,$60,$7E,$00,$3C,$66,$66,$7C,$60,$62,$3C,$00,$18
       .byte $18,$18,$0C,$06,$42,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C
       .byte $46,$06,$3E,$66,$66,$3C,$00,$24,$24,$24,$3C,$24,$24,$3C,$00,$38
       .byte $24,$24,$38,$24,$24,$38,$00,$3C,$24,$20,$20,$20,$24,$3C,$00,$38
       .byte $24,$24,$24,$24,$24,$38,$00,$3C,$20,$20,$38,$20,$20,$3C,$00,$20
       .byte $20,$20,$38,$20,$20,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$18,$00,$18,$18,$00,$00,$38,$44,$BA,$A2,$A2,$BA,$44,$38,$A4
       .byte $A4,$A4,$E4,$A4,$A4,$4E,$00,$AA,$AA,$AA,$EC,$AA,$AA,$4C,$00,$E0
       .byte $40,$40,$40,$40,$40,$E0,$00,$EE,$42,$42,$4E,$4A,$CA,$4E,$00,$E4
       .byte $A4,$A4,$E2,$A2,$A2,$EE,$00,$12,$12,$12,$13,$12,$12,$39,$00,$AB
       .byte $AA,$AA,$B3,$AA,$AA,$2B,$00,$82,$02,$02,$03,$02,$02,$81,$00,$82
       .byte $82,$82,$83,$82,$82,$03,$00,$BB,$A0,$A0,$31,$A2,$A2,$39,$00,$10
       .byte $90,$90,$10,$10,$10,$B8,$00,$2A,$2A,$2A,$33,$2B,$2A,$2A,$00,$48
       .byte $55,$D5,$D5,$55,$55,$48,$00,$D4,$14,$14,$19,$14,$14,$D4,$00,$08
       .byte $15,$15,$D5,$15,$15,$09,$00,$88,$48,$48,$48,$48,$48,$5C,$00,$48
       .byte $48,$00,$48,$48,$48,$48,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$12,$12,$12,$13,$12,$12,$3A,$00,$90
       .byte $A8,$A8,$28,$A8,$A8,$90,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$4A,$4A,$4A,$4E,$4A,$4A,$EA,$00,$E1
       .byte $82,$82,$C2,$82,$82,$E2,$00,$4E,$A4,$A4,$A4,$24,$24,$2E,$00,$94
       .byte $94,$B5,$F7,$D6,$94,$94,$00,$BA,$A2,$A2,$B3,$A2,$A2,$BB,$00,$95
       .byte $95,$80,$15,$95,$95,$15,$00,$45,$4A,$4A,$4A,$48,$48,$E8,$00,$10
       .byte $A8,$A8,$A8,$A8,$A8,$90,$00,$00,$00,$00,$00,$00,$00,$00,$00,$8E
       .byte $88,$88,$C8,$A8,$A8,$C8,$00,$A4,$A4,$A4,$E4,$AA,$AA,$4A,$00,$EA
       .byte $8A,$8A,$CC,$8A,$8A,$EC,$00,$49,$A9,$AB,$AF,$AD,$A9,$49,$00,$70
       .byte $40,$40,$60,$40,$40,$70,$00,$00,$00,$00,$00,$00,$00,$00,$00,$8E
       .byte $88,$88,$C8,$A8,$A8,$C8,$00,$A4,$A4,$A4,$E4,$AA,$AA,$4A,$00,$EA
       .byte $8A,$8A,$CC,$8A,$8A,$EC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$CA,$AA,$AA,$AC,$AA,$AA,$CC,$00,$A5
       .byte $AA,$AA,$EA,$A8,$A8,$48,$00,$00,$80,$80,$80,$80,$80,$80,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$4A
       .byte $AA,$AA,$2E,$2A,$2A,$24,$00,$CC,$AA,$AA,$CC,$AA,$AA,$CC,$00,$E9
       .byte $49,$4B,$4F,$4D,$49,$E9,$00,$00,$00,$00,$00,$00,$40,$40,$00,$4A
       .byte $AA,$AA,$2E,$2A,$2A,$24,$00,$6A,$8A,$8A,$8C,$8A,$8A,$6A,$00,$0E
       .byte $04,$04,$04,$04,$04,$0E,$00,$A4,$AA,$AA,$CA,$AA,$AA,$C4,$00,$90
       .byte $90,$B0,$F0,$D0,$90,$90,$00,$8E,$84,$84,$C4,$84,$84,$EE,$00,$C4
       .byte $24,$24,$44,$84,$84,$6E,$00,$C0,$20,$20,$40,$80,$80,$60,$00,$EE
       .byte $88,$88,$8C,$88,$88,$8E,$00,$84,$84,$84,$C4,$84,$84,$EE,$00,$41
       .byte $42,$42,$42,$A2,$A2,$A1,$00,$0E,$88,$88,$88,$88,$A8,$28,$00,$EA
       .byte $8A,$8A,$CE,$8A,$8A,$E4,$00,$A4,$A4,$A4,$C4,$AA,$AA,$CA,$00,$08
       .byte $08,$0A,$0F,$0D,$08,$08,$00,$A9,$AA,$AA,$BA,$AA,$AA,$91,$00,$A9
       .byte $2A,$2A,$3A,$2A,$2A,$A9,$00,$04,$84,$85,$87,$86,$84,$04,$00,$55
       .byte $55,$55,$DD,$D5,$55,$49,$00,$20,$20,$60,$E0,$A0,$20,$20,$00,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$EA,$EA,$EA,$4C,$13,$B0,$EA,$EA,$EA
       .byte $4C,$76,$B2,$2C,$F8,$FF,$4C,$6E,$D1,$EA,$EA,$EA,$4C,$D4,$B2,$EA
       .byte $EA,$EA
LDFDB: NOP            
       NOP            
       NOP            
       BIT    LFFF9   
       JMP    LFFE1   
LDFE4: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$00,$B0,$00,$B0,$00,$B0,$78,$2C,$F9,$FF
       .byte $85,$20,$85,$04,$A6,$09,$B1,$F6,$85,$21,$85,$05,$85,$2A,$B1,$CE
       .byte $85,$1B,$EA,$A2,$00,$86,$09,$B1,$D6,$85,$06,$B1,$EE,$EA,$85,$07
       .byte $B1,$E6,$85,$1C,$B1,$DE,$A2,$1A,$88,$D0,$D5,$8D,$20,$00,$85,$04
       .byte $B1,$F6,$86,$08,$85,$21,$85,$05,$85,$2A,$B1,$CE,$85,$1B,$B1,$D6
       .byte $86,$1F,$A2,$08,$86,$0E,$8D,$06,$00,$B1,$EE,$85,$07,$B1,$E6,$85
       .byte $1C,$B1,$DE,$A2,$00,$A4,$85,$A0,$16,$85,$20,$85,$04,$A6,$09,$B1
       .byte $F8,$85,$21,$85,$05,$85,$2A,$B1,$D0,$85,$1B,$B1,$D8,$BE,$8F,$D4
       .byte $EA,$85,$06,$B1,$F0,$A6,$09,$85,$07,$B1,$E8,$85,$1C,$B1,$E0,$A2
       .byte $00,$88,$84,$85,$85,$20,$85,$04,$A6,$09,$B1,$F8,$85,$21,$85,$05
       .byte $85,$2A,$B1,$D0,$85,$1B,$B1,$D8,$BE,$8F,$D4,$A2,$40,$85,$06,$B1
       .byte $F0,$86,$09,$85,$07,$B1,$E8,$85,$1C,$B1,$E0,$A2,$00,$88,$84,$85
       .byte $85,$20,$85,$04,$86,$09,$B1,$F8,$85,$21,$85,$05,$85,$2A,$B1,$D0
       .byte $85,$1B,$B1,$D8,$BE,$8F,$D4,$A2,$00,$85,$06,$B1,$F0,$86,$09,$85
       .byte $07,$B1,$E8,$85,$1C,$B1,$E0,$A2,$40,$88,$84,$85,$85,$20,$85,$04
       .byte $B1,$F8,$86,$08,$85,$21,$85,$05,$85,$2A,$B1,$D0,$85,$1B,$B1,$D8
       .byte $A2,$00,$8E,$09,$00,$85,$06,$B1,$F0,$4C,$00,$D1,$85,$07,$A6,$09
       .byte $B1,$E8,$85,$1C,$B1,$E0,$A2,$00,$88,$85,$20,$85,$04,$86,$09,$B1
       .byte $F8,$85,$21,$85,$05,$85,$2A,$B1,$D0,$85,$1B,$B1,$D8,$BE,$8F,$D4
       .byte $EA,$85,$06,$B1,$F0,$86,$09,$85,$07,$B1,$E8,$85,$1C,$B1,$E0,$A2
       .byte $00,$88,$D0,$D5,$8D,$20,$00,$85,$04,$86,$09,$B1,$F8,$85,$21,$85
       .byte $05,$85,$2A,$B1,$D0,$85,$1B,$B1,$D8,$BE,$8F,$D4,$EA,$85,$06,$B1
       .byte $F0,$86,$09,$85,$07,$B1,$E8,$85,$1C,$B1,$E0,$A2,$00,$4C,$00,$D2
       .byte $A2,$0C,$85,$02,$85,$2A,$CA,$10,$F9,$60,$85,$02,$85,$2A,$A9,$02
       .byte $85,$09,$20,$64,$D1,$20,$9C,$D1,$A5,$EC,$85,$85,$A5,$EE,$85,$87
       .byte $A5,$ED,$85,$86,$A5,$EF,$85,$88,$20,$64,$D1,$20,$9C,$D1,$20,$64
       .byte $D1,$A9,$00,$85,$09,$4C,$D2,$DF,$A0,$28,$85,$02,$85,$2A,$B9,$18
       .byte $D5,$85,$1B,$85,$1C,$B1,$85,$85,$06,$B9,$17,$D6,$AA,$85,$20,$B1
       .byte $87,$85,$07,$B9,$57,$D6,$85,$21,$86,$04,$85,$89,$85,$89,$85,$05
       .byte $88,$10,$D7,$85,$02,$85,$2A,$A9,$00,$85,$1B,$85,$1C,$85,$1B,$60
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$A0,$16,$85,$20
       .byte $85,$04,$86,$09,$B1,$FA,$85,$21,$85,$05,$85,$2A,$B1,$D2,$85,$1B
       .byte $B1,$DA,$BE,$00,$D3,$EA,$85,$06,$B1,$F2,$86,$09,$85,$07,$B1,$EA
       .byte $85,$1C,$B1,$E2,$A2,$00,$88,$D0,$D5,$8D,$20,$00,$85,$04,$86,$09
       .byte $B1,$FA,$85,$21,$85,$05,$85,$2A,$B1,$D2,$85,$1B,$B1,$DA,$BE,$00
       .byte $D3,$EA,$85,$06,$B1,$F2,$86,$09,$85,$07,$B1,$EA,$85,$1C,$B1,$E2
       .byte $A2,$00,$A0,$1A,$84,$08,$85,$20,$85,$04,$86,$09,$A0,$16,$B1,$FC
       .byte $8D,$21,$00,$85,$2A,$85,$05,$B1,$D4,$85,$1B,$B1,$DC,$A2,$8E,$8D
       .byte $06,$00,$B1,$F4,$86,$09,$85,$07,$B1,$EC,$85,$1C,$B1,$E4,$A2,$00
       .byte $88,$84,$85,$85,$20,$85,$04,$86,$09,$B1,$FC,$85,$21,$85,$05,$85
       .byte $2A,$B1,$D4,$85,$1B,$B1,$DC,$BE,$00,$D4,$10,$1E,$85,$06,$B1,$F4
       .byte $86,$09,$85,$07,$B1,$EC,$85,$1C,$B1,$E4,$A2,$00,$88,$10,$D4,$A0
       .byte $03,$A9,$00,$85,$1C,$86,$09,$4C,$D6,$D6,$86,$06,$86,$07,$8E,$09
       .byte $00,$4C,$A8,$D2,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$8E,$8E,$8E,$8E
       .byte $8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E
       .byte $8C,$8A,$88,$00,$00,$00,$00,$00,$00,$F0,$00,$00,$00,$00,$10,$00
       .byte $00,$00,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$90,$05
       .byte $05,$75,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$67,$E7,$E6,$C6,$E7,$63,$C7,$E7,$67,$73,$77,$3F,$3F
       .byte $3E,$1C,$7E,$7E,$7E,$7E,$7E,$1C,$4E,$F6,$F6,$96,$E6,$FF,$7E,$7E
       .byte $7A,$7C,$38,$38,$3C,$38,$3C,$3E,$38,$3C,$18,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$4A,$46,$46,$46,$48,$48,$48
       .byte $1A,$1A,$1A,$1A,$1A,$1A,$46,$48,$4A,$4A,$4A,$4A,$4A,$4A,$48,$48
       .byte $46,$44,$46,$48,$48,$48,$48,$48,$14,$12,$00,$00,$00,$00,$00,$00
       .byte $10,$00
LE3C6: .byte $00,$00,$00,$F0,$00,$00,$00,$10,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$D0,$05,$05,$35,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$8E,$8E,$70,$70,$8E,$8E
       .byte $8E,$8E,$8E,$8E,$8E,$0E,$0E,$8E,$8E,$8E,$8E,$8E,$8E,$8C,$40,$40
       .byte $8E,$40,$40,$40,$40,$40,$40,$40,$36,$38,$3A,$3A,$3A,$3A,$38,$40
       .byte $40,$40,$40,$40,$40,$38,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$38,$36
       .byte $34,$36,$38,$3A,$3A,$3A,$3A,$38,$36,$C0,$C0,$C0,$C0,$1E,$1E,$1E
       .byte $36,$36,$36,$36,$36,$36,$36,$34,$C0,$C0,$C0,$C0,$C0,$34,$36,$36
       .byte $36,$36,$36,$36,$36,$36,$34,$32,$32,$34,$36,$36,$36,$36,$36,$1A
       .byte $1C,$80,$80,$80,$80,$0E,$0E,$0E,$12,$14,$14,$14,$14,$14,$12,$80
       .byte $80,$80,$80,$80,$80,$80,$12,$14,$14,$14,$14,$14,$14,$14,$14,$14
       .byte $14,$14,$14,$14,$14,$14,$14,$14,$12,$86,$00,$00,$70,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$0E,$00,$00,$00,$00,$00,$00,$00,$00,$40,$00
       .byte $88,$8A,$8C,$8E,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$67,$E7,$E6,$C6,$E7,$63,$73,$33,$33,$33,$77,$77,$7F,$7E
       .byte $3C,$7E,$7E,$7E,$7E,$7E,$1E,$6E,$76,$FA,$DB,$EB,$F7,$3A,$3A,$3A
       .byte $7C,$38,$38,$3C,$38,$3C,$3E,$38,$3C,$18,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$1E,$3E,$3C,$38,$3C,$1C,$1C,$1C,$1E,$1E,$1E,$3E,$3C,$7C,$3C
       .byte $7E,$7E,$7E,$7E,$7E,$1E,$6E,$76,$FA,$DB,$EB,$F7,$3A,$3A,$3A,$7C
       .byte $38,$38,$3C,$38,$3C,$3E,$38,$3C,$18,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $67,$E7,$E6,$C6,$E7,$63,$73,$33,$33,$33,$77,$77,$7F,$7E,$3C,$7E
       .byte $7E,$7E,$7E,$7E,$1E,$66,$7A,$FA,$C7,$FF,$FF,$7C,$7C,$7C,$7C,$38
       .byte $38,$3C,$38,$3C,$3E,$38,$3C,$18,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$B0,$05,$05,$55
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$B0,$05,$05,$55
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$1E,$3E,$3C,$38,$3C,$1C,$1C,$1C,$1E,$1E,$1E,$3E,$3C,$7C,$3C
       .byte $7E,$7E,$7E,$7E,$7E,$1E,$66,$7A,$FA,$C7,$FF,$FF,$7C,$7C,$7C,$7C
       .byte $38,$38,$3C,$38,$3C,$3E,$38,$3C,$18,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $85,$1B,$85,$2B,$A0,$1A,$85,$2A,$A9,$06,$85,$04,$85,$05,$85,$0B
       .byte $85,$0C,$A9,$00,$85,$06,$AD,$80,$02,$EA,$A9,$8E,$85,$09,$85,$10
       .byte $A9,$70,$85,$11,$4C,$C0,$DF,$85,$02,$85,$2A,$86,$01,$24,$84,$50
       .byte $03,$4C,$C6,$DF,$A9,$00,$85,$09,$85,$02,$85,$2A,$A9,$FF,$85,$1D
       .byte $85,$1E,$A9,$02,$85,$06,$85,$07,$EA,$AD,$80,$02,$EA,$A9,$80,$A2
       .byte $70,$85,$20,$85,$10,$86,$21,$85,$12,$A0,$03,$AD,$80,$02,$85,$13
       .byte $85,$11,$85,$02,$85,$2A,$20,$6D,$D1,$20,$6D,$D1,$85,$2B,$88,$10
       .byte $F1,$A0,$0A,$85,$02,$85,$2A,$B9,$E1,$DB,$85,$0F,$B9,$D6,$DB,$85
       .byte $06,$85,$07,$85,$08,$B9,$09,$D8,$85,$1B,$B9,$14,$D8,$85,$1C,$85
       .byte $1D,$85,$1E,$88,$10,$DD,$85,$02,$85,$2A,$A9,$01,$85,$0A,$A9,$1A
       .byte $A5,$85,$A9,$01,$85,$26,$85,$85,$AD,$80,$02,$AD,$80,$02,$85,$14
       .byte $85,$02,$85,$2A,$A5,$85,$A5,$B2,$29,$0F,$AA,$CA,$10,$FD,$85,$10
       .byte $85,$02,$85,$2A,$A5,$85,$A5,$B3,$29,$0F,$AA,$CA,$10,$FD,$85,$11
       .byte $85,$02,$85,$2A,$AD,$80,$02,$AD,$80,$02,$20,$6D,$D1,$A9,$10,$A6
       .byte $B2,$A4,$B3,$85,$24,$86,$20,$84,$21,$85,$02,$85,$2A,$A0,$0D,$A5
       .byte $B4,$85,$0B,$A5,$B5,$85,$0C,$A9,$00,$85,$1F,$A2,$00,$86,$0E,$A5
       .byte $85,$85,$2B,$4C,$24,$D0,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $02,$02,$02,$00,$7F,$FF,$FF,$7F,$3F,$1F,$0F,$07,$03,$01,$00,$FE
       .byte $FF,$FF,$FE,$FC,$F8,$F0,$E0,$C0,$80,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $F0,$00,$00,$F0,$00,$00,$F0,$00,$00,$00,$00,$00,$B0,$15,$05,$55
       .byte $20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$10,$00,$00,$10,$00,$00,$10,$00,$00,$00,$00,$00,$B0,$F5
       .byte $05,$55,$E0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$F0,$F0,$00,$F0,$00,$F0,$00,$F0,$00,$50,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$10,$10,$00,$10,$00,$10,$00,$10,$00,$B0,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $F0,$00,$00,$F0,$00,$00,$F0,$00,$00,$00,$00,$00,$00,$10,$00,$00
       .byte $20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $10,$00,$00,$10,$00,$00,$10,$00,$00,$00,$00,$00,$00,$F0,$00,$00
       .byte $E0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$8E,$8E,$8E,$8E,$8E,$8E
       .byte $8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8C,$8A
       .byte $88,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$00
       .byte $10,$00,$20,$A0,$05,$15,$15,$05,$05,$45,$30,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$CE,$EC,$66,$66,$63,$63,$63,$EF,$FF,$7F,$7E,$7E
       .byte $7E,$7C,$3F,$B8,$B8,$B8,$FA,$FE,$7C,$F8,$70,$78,$F8,$F0,$F8,$E0
       .byte $60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$F0,$F0,$00,$F0
       .byte $00,$E0,$C0,$05,$F5,$F5,$05,$05,$75,$D0,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$8E,$8E,$0A,$09,$08,$07,$06,$05,$04,$03,$00,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$8E,$8E,$8E,$8E,$8E,$8E
       .byte $8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8C,$8A
       .byte $88,$00,$00,$00,$00,$00,$00,$F0,$00,$00,$00,$00,$10,$00,$00,$00
       .byte $F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$90,$05,$05
       .byte $05,$65,$00,$00,$00,$00,$00,$00,$00,$30,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$67,$E7,$E6,$C6,$E7,$63,$C7,$E7,$67,$73,$77,$3F,$3F,$3E,$1C
       .byte $7E,$7E,$7E,$7E,$7E,$1C,$3E,$3E,$3E,$7E,$FE,$B8,$7E,$3C,$3E,$36
       .byte $32,$38,$3C,$38,$3C,$3E,$38,$3C,$18,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$00,$00,$00,$00,$F0,$00,$00,$00,$10
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$D0,$05,$05,$05
       .byte $45,$00,$00,$00,$00,$00,$00,$00,$D0,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$8E,$8E,$8E,$8E,$8E,$8E
       .byte $8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8C,$8A
       .byte $88,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$A0,$05,$65,$00,$00,$00,$00,$00
       .byte $F0,$00,$00,$00,$00,$00,$00,$00,$00,$20,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$67,$E7,$E6,$C6,$E7,$63,$73,$33,$33,$33,$77,$77,$7F,$7E,$3C
       .byte $7E,$7E,$7E,$7E,$7E,$3E,$7E,$60,$1E,$3E,$78,$76,$3E,$3E,$3C,$3C
       .byte $38,$38,$3C,$38,$3C,$3E,$38,$3C,$18,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$10,$00,$00,$C0,$05,$45,$00,$00,$00,$00,$00,$10
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$E0,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$67,$E7,$E6,$C6,$E7,$63,$73,$33,$33,$33,$77,$77,$7F,$7E,$3C
       .byte $7E,$7E,$7E,$7E,$7E,$7C,$7C,$7C,$7C,$7C,$70,$EE,$FF,$FF,$FB,$FB
       .byte $F9,$E3,$F3,$E3,$F0,$F8,$E0,$F0,$60,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$48,$46,$48,$48,$1A,$1A
       .byte $1A,$1A,$46,$48,$4A,$4A,$4A,$4A,$4A,$48,$48,$46,$44,$46,$48,$48
       .byte $12,$00,$00,$00,$40,$40,$40,$40,$40,$40,$38,$3A,$3A,$3A,$40,$40
       .byte $40,$40,$38,$3A,$3A,$3A,$3A,$3A,$3A,$38,$38,$36,$38,$3A,$3A,$3A
       .byte $38,$00,$00,$00,$C0,$C0,$C0,$1E,$1E,$1E,$36,$36,$36,$36,$C0,$C0
       .byte $C0,$C0,$36,$36,$36,$36,$36,$36,$36,$34,$32,$36,$36,$36,$36,$36
       .byte $1A,$00,$00,$00,$80,$80,$80,$0E,$0E,$0E,$12,$14,$14,$12,$80,$80
       .byte $80,$80,$12,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14
       .byte $12,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$B0,$05,$05,$55
       .byte $F0,$F0,$00,$F0,$00,$F0,$00,$F0,$00,$50,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$B0,$05,$05,$55
       .byte $10,$10,$00,$10,$00,$10,$00,$10,$00,$B0,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$2C,$F6,$FF,$4C,$13,$B0
       .byte $2C,$F6,$FF,$4C,$76,$B2,$EA,$EA,$EA,$4C,$6E,$D1,$2C,$F6,$FF,$4C
       .byte $D4,$B2,$EA,$EA,$EA,$4C,$FD,$D6,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$00,$D0,$00,$D0,$00,$D0

START:
       SEI            
       BIT    LFFF9   
       CLD            
       LDX    #$FF    
       TXS            
       STX    $8D     
       INX            
       STX    $8E     
       LDA    #$00    
       STA    $B6     
       LDA    #$03    
       STA    $B7     
       LDA    #$80    
       STA    $BE     
LF019: LDA    #$00    
LF01B: STA    $00,X   
       INX            
       CPX    #$8D    
       BCC    LF01B   
       JSR    LFC6C   
       LSR    $D6     
       LDA    $80     
       BNE    LF02D   
       INC    $80     
LF02D: LDA    #$04    
       JSR    LFBC7   
       JMP    LF475   
LF035: LDY    SWCHA   
       INY            
       BEQ    LF03F   
       LDY    #$00    
       STY    $81     
LF03F: LDA    SWCHB   
       BIT    $8D     
       BPL    LF04A   
       LDX    INPT4   
       BPL    LF0B1   
LF04A: LDX    #$03    
       CPX    $96     
       BEQ    LF054   
       CPX    $97     
       BNE    LF05E   
LF054: LDX    $AA     
       CPX    #$C0    
       BCS    LF05E   
       LDX    INPT4   
       BPL    LF0B1   
LF05E: LSR            
       BIT    $84     
       BVC    LF06B   
       LDX    $E0     
       BEQ    LF06B   
       INC    $E0     
       BMI    LF0B9   
LF06B: BCC    LF0B1   
       LSR            
       BCS    LF0CA   
       LDA    $8F     
       BEQ    LF078   
       DEC    $8F     
       BPL    LF0D4   
LF078: BIT    $84     
       BVC    LF082   
       LDA    $BE     
       EOR    #$80    
       STA    $BE     
LF082: LDA    #$02    
       STA    $A2     
       BIT    $8D     
       BPL    LF08C   
       STA    $A3     
LF08C: LDX    #$07    
       LDA    #$00    
       STA    $8D     
LF092: STA    $E0,X   
       DEX            
       BPL    LF092   
       LDA    #$C0    
       STA    $D7     
       STA    $84     
       BNE    LF0A3   
       STY    AUDV0   
       STY    AUDV1   
LF0A3: STY    $9F     
       LDA    #$40    
       BIT    $8E     
       BVS    LF0AD   
       STA    $8E     
LF0AD: LDY    #$25    
       BNE    LF0CA   
LF0B1: BIT    $8E     
       BMI    LF0D4   
       BIT    $84     
       BVS    LF0D4   
LF0B9: STY    $8D     
       LDX    #$81    
       LDA    #$C0    
       STA    $8E     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF019   
LF0CA: STY    $8F     
       BIT    $8E     
       BPL    LF0D4   
       LDA    #$40    
       STA    $8E     
LF0D4: LDA    $8D     
       EOR    #$FF    
       STA    $89     
       BIT    $A2     
       BMI    LF10A   
       LDA    $83     
       AND    #$0F    
       BNE    LF13F   
LF0E4: LDA    $A3     
       CMP    $A2     
       BEQ    LF0EE   
       BCS    LF0F7   
       BCC    LF0F4   
LF0EE: LDA    #$02    
       STA    $A2     
       BNE    LF107   
LF0F4: INC    $A3     
       BIT    $A3C6   
       LDA    $A3     
       AND    $89     
       STA    AUDV1   
       LDA    #$1F    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC1   
LF107: JMP    LF13F   
LF10A: LDA    #$04    
       STA    AUDC1   
       LDY    $BA     
       LDA    LFE15,Y 
       BEQ    LF126   
       STA    AUDF1   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$0E    
       AND    $89     
       STA    AUDV1   
       INC    $BA     
       JMP    LF13F   
LF126: STA    AUDV1   
       STA    $BA     
       DEC    $BB     
       BPL    LF13F   
       LDA    $80     
       AND    #$03    
       STA    $BB     
       LDA    #$0A    
       STA    $A2     
       LDA    #$02    
       STA    $A3     
       JMP    LF0E4   
LF13F: LDA    $9F     
       BNE    LF14D   
LF143: LDA    #$00    
       STA    AUDV0   
       STA    $9F     
       STA    $BC     
       BEQ    LF17C   
LF14D: TAX            
       ASL            
       TAY            
       DEC    $BD     
       BPL    LF15B   
       LDA    LFE80,X 
       STA    $BD     
       INC    $BC     
LF15B: LDA    LFE70,Y 
       STA    $85     
       LDA    LFE71,Y 
       STA    $86     
       LDA    LFE7B,X 
       STA    AUDC0   
       LDY    $BC     
       LDA    ($85),Y 
       BEQ    LF143   
       STA    AUDF0   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$0E    
       AND    $89     
       STA    AUDV0   
LF17C: BIT    $84     
       BVC    LF19C   
       LDX    $E3     
       LDA    LFDB1,X 
       JSR    LFC7F   
       LDX    #$0B    
LF18A: LDA    $C2,X   
       STA    $F0,X   
       DEX            
       BPL    LF18A   
       LDA    #$06    
       BIT    $BE     
       BMI    LF1A2   
       LDA    #$05    
       JMP    LF1A2   
LF19C: BIT    $8D     
       BPL    LF1A8   
       LDA    #$00    
LF1A2: JSR    LFC7F   
       JMP    LF202   
LF1A8: LDA    $B1     
       BPL    LF1A2   
       LDA    #$B8    
       STA    $C3     
       STA    $C5     
       STA    $C7     
       STA    $C9     
       STA    $CB     
       STA    $CD     
       LDA    #$80    
       STA    $C2     
       STA    $CC     
       LDX    $AF     
       BEQ    LF1E7   
       STA    $C4     
       STA    $CA     
       SED            
       LDA    #$11    
       SEC            
       SBC    $AF     
       CLD            
       STA    $85     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $C8     
       LDA    $85     
       AND    #$F0    
       BEQ    LF1E0   
       LSR            
       BIT    $80A9   
       STA    $C6     
       JMP    LF202   
LF1E7: LDA    #$88    
       STA    $C6     
       LDA    $A0     
       ASL            
       ASL            
       ASL            
       STA    $C4     
       LDA    $A1     
       AND    #$F0    
       LSR            
       STA    $C8     
       LDA    $A1     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $CA     
LF202: BIT    $84     
       BVS    LF209   
       JMP    LF2B8   
LF209: LDA    $E0     
       BNE    LF28B   
       LDA    SWCHA   
       LDX    $E1     
       BEQ    LF21C   
       BIT    $BE     
       BPL    LF21C   
       LDX    #$00    
       BEQ    LF21E   
LF21C: LDX    $E1     
LF21E: JSR    LFBE6   
       DEC    $E2     
       BPL    LF249   
       LDA    #$00    
       STA    $E2     
       CPY    #$04    
       BEQ    LF249   
       LDA    $E3     
       ASL            
       ASL            
       STA    $85     
       TYA            
       CLC            
       ADC    $85     
       TAX            
       LDA    LFDD5,X 
       BMI    LF249   
       TAX            
       LDY    $E4,X   
       BMI    LF249   
       STA    $E3     
       LDA    #$05    
       JSR    LFBC7   
LF249: LDX    $E1     
       BIT    $BE     
       BPL    LF251   
       LDX    #$00    
LF251: BIT    $D7     
       BPL    LF287   
       LDY    INPT4,X 
       STY    $D7     
       BMI    LF28B   
       LDA    #$08    
       STA    $E2     
       LDA    $E3     
       LDX    $E1     
       STA    $B6,X   
       LDA    #$05    
       JSR    LFBC7   
       LDX    $E3     
       LDA    #$80    
       STA    $E4,X   
       LDA    $E1     
       BNE    LF281   
       LDA    $E3     
       CLC            
       ADC    #$01    
       AND    #$03    
       STA    $E3     
       INC    $E1     
       BNE    LF28B   
LF281: LDA    #$40    
       STA    $E0     
       BNE    LF28B   
LF287: LDA    INPT4,X 
       STA    $D7     
LF28B: LDX    #$07    
LF28D: LDA    LFDCD,X 
       STA    $E8,X   
       DEX            
       BPL    LF28D   
       LDX    #$03    
LF297: TXA            
       ASL            
       TAY            
       LDA    $E4,X   
       BMI    LF2A8   
       CPX    $E3     
       BNE    LF2B2   
       LDA    $83     
       AND    #$10    
       BNE    LF2B2   
LF2A8: LDA    #$DC    
       STA.wy $00E8,Y 
       LDA    #$D7    
       STA.wy $00E9,Y 
LF2B2: DEX            
       BPL    LF297   
       JMP    LF595   
LF2B8: LDA    $90     
       LDX    #$00    
       SEC            
       SBC    $91     
       BCS    LF2C7   
       EOR    #$FF    
       ADC    #$01    
       LDX    #$40    
LF2C7: STX    $D6     
       TAY            
       CMP    #$0C    
       BCS    LF2FD   
       BIT    $8D     
       BMI    LF2D6   
       CMP    #$03    
       BCC    LF2FD   
LF2D6: SBC    #$0B    
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $CF     
       LDA    #$80    
       ORA    $D6     
       STA    $D6     
       LDA    $92     
       SEC            
       SBC    $93     
       BCS    LF2F0   
       EOR    #$FF    
       ADC    #$01    
LF2F0: CMP    #$04    
       LDA    $D6     
       BCS    LF2F9   
       ORA    #$80    
       BIT    $7F29   
       STA    $D6     
LF2FD: BIT    $D6     
       BMI    LF307   
       LDA    #$00    
       STA    $AD     
       STA    $AE     
LF307: BIT    $8D     
       BMI    LF361   
       LDA    #$03    
       CMP    $96     
       BEQ    LF361   
       CMP    $97     
       BEQ    LF361   
       LDA    $83     
       AND    #$0F    
       BNE    LF361   
       LDA    $A1     
       ORA    $A0     
       BEQ    LF361   
       SED            
       LDA    $9F     
       BEQ    LF32A   
       CMP    #$05    
       BNE    LF37F   
LF32A: LDA    #$02    
       LDX    #$00    
       CMP    $96     
       BEQ    LF337   
       INX            
       CMP    $97     
       BNE    LF37F   
LF337: TXA            
       EOR    #$01    
       TAY            
       LDA    $AF     
       SEC            
       SBC    #$01    
       BCS    LF364   
       LDA    #$FF    
       STA    $AA     
       LDA    #$0A    
       STA    $A2     
       LDA    #$03    
       STA.wy $0096,Y 
       LDA    #$04    
       STA    $96,X   
       LDA    #$FF    
       STA.wy $00A6,Y 
       LDA    #$04    
       JSR    LFBC7   
       LDA    #$02    
       STA    $B1     
LF361: JMP    LF3D1   
LF364: STA    $AF     
       BIT    $A2     
       BMI    LF37A   
       CMP    #$08    
       BCC    LF37A   
       LDA    #$FF    
       STA    $A2     
       LDA    #$00    
       STA    $BA     
       LDA    #$02    
       STA    $BB     
LF37A: LDA    #$05    
       JSR    LFBC7   
LF37F: LDA    $A1     
       SEC            
       SBC    #$01    
       BCS    LF38E   
       LDA    $A0     
       BEQ    LF38E   
       DEC    $A0     
       LDA    #$59    
LF38E: STA    $A1     
       ORA    $A0     
       BNE    LF3D1   
       BIT    $A2     
       BPL    LF3A0   
       LDA    #$02    
       STA    $A3     
       LDA    #$0A    
       STA    $A2     
LF3A0: LDA    #$00    
       STA    $BA     
       STA    $BB     
       LDA    #$D0    
       STA    $B0     
       LDA    #$01    
       STA    $B1     
       LDA    #$04    
       JSR    LFBC7   
       LDA    #$00    
       STA    $96     
       STA    $97     
       LDA    #$00    
       STA    $AF     
       LDA    #$00    
       STA    $94     
       STA    $95     
       LDA    #$50    
       LDX    #$00    
       JSR    LFB6D   
       LDA    #$50    
       LDX    #$01    
       JSR    LFB6D   
LF3D1: CLD            
       LDA    $BF     
       BEQ    LF3D8   
       DEC    $BF     
LF3D8: LDA    $83     
       LSR            
       BCC    LF3E3   
       LDA    $AA     
       BEQ    LF3E3   
       DEC    $AA     
LF3E3: LDA    $B0     
       BEQ    LF443   
       LDA    $83     
       LSR            
       BCC    LF443   
       LDX    #$01    
LF3EE: LDA    #$01    
       JSR    LFBAF   
       DEX            
       BPL    LF3EE   
       DEC    $B0     
       BNE    LF443   
       STX    $B1     
       LDX    #$01    
LF3FE: SED            
       LDA    $99,X   
       CLC            
       ADC    $9D,X   
       BCC    LF408   
       LDA    #$99    
LF408: STA    $9D,X   
       CLD            
       LDA    $98     
       ASL            
       STA    $85     
       LDA    $A6,X   
       SEC            
       SBC    $85     
       BCS    LF419   
       LDA    #$00    
LF419: STA    $A6,X   
       STA    $AB,X   
       DEX            
       BPL    LF3FE   
       INX            
       STX    $99     
       STX    $9A     
       STX    $9B     
       STX    $9C     
       LDA    #$03    
       STA    $A0     
       LDA    $98     
       CLC            
       ADC    #$01    
       CMP    #$08    
       BCS    LF446   
       STA    $98     
       LDA    #$04    
       JSR    LFBC7   
       LDA    #$00    
       STA    $AD     
       STA    $AE     
LF443: JMP    LF475   
LF446: LDA    $9D     
       STA    $99     
       LDA    $9E     
       STA    $9A     
       LDY    #$03    
       LDX    #$04    
       LDA    $9D     
       CMP    $9E     
       BEQ    LF45F   
       LDA    #$04    
       BCS    LF463   
       LDY    #$04    
       BIT    $07A9   
       LDX    #$03    
LF463: STY    $96     
       STX    $97     
       STA    $B1     
       LDA    #$FF    
       STA    $AA     
       STA    $A6     
       STA    $A7     
       LDA    #$0A    
       STA    $A2     
LF475: LDA    $83     
       AND    #$01    
       TAX            
LF47A: STX    $8A     
       JSR    LFB85   
       LDY    $B8,X   
       STY    $D2     
       JSR    LFBE1   
       STY    $89     
       TXA            
       EOR    #$01    
       STA    $D3     
       TAX            
       JSR    LFB85   
       LDA    SWCHA   
       LDX    $D3     
       JSR    LFBE6   
       LDY    $D3     
       LDA    $92,X   
       SEC            
       SBC.wy $0092,Y 
       CLC            
       ADC    #$03    
       SEC            
       SBC    #$06    
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $CE     
       LDA    $96,X   
       BIT    $8D     
       BPL    LF50C   
       LDA    $80     
       CLC            
       ADC    $90,X   
       ADC    $92,X   
       STA    $85     
       BIT    $D6     
       BPL    LF507   
       LDA    $BF     
       CMP    #$01    
       BNE    LF4CF   
       LDA    $85     
       AND    #$03    
       STA    $BA,X   
       BPL    LF507   
LF4CF: LDA    $BF     
       BEQ    LF4E1   
       CMP    #$04    
       BCS    LF501   
       BIT    $D2     
       BPL    LF4FF   
       LDA    #$00    
       STA    $94,X   
       BCC    LF501   
LF4E1: LDA    $85     
       AND    #$99    
       BNE    LF4EF   
       LDA    $85     
       AND    #$1F    
       STA    $BF     
       BPL    LF507   
LF4EF: LDA    #$0D    
       STA    $BF     
       LDA    $85     
       AND    #$03    
       TAY            
       LDA    LFE10,Y 
       STA    $D4,X   
       STY    $89     
LF4FF: LSR    $B8,X   
LF501: LDA    $96,X   
       LDY    #$00    
       BEQ    LF519   
LF507: JSR    LFD71   
       BMI    LF519   
LF50C: BIT    $BE     
       BPL    LF517   
       CPX    #$01    
       BNE    LF517   
       JMP    LFCD2   
LF517: LDY    INPT4,X 
LF519: STY    $87     
       BMI    LF524   
       LDY    $B0     
       BNE    LF524   
       CLC            
       ADC    #$05    
LF524: ASL            
       TAY            
       LDA    LFF64,Y 
       STA    $85     
       LDA    LFF65,Y 
       STA    $86     
       LDA    $B0     
       BEQ    LF53D   
       LDA    #$00    
       STA    $BF     
       LDA    LF588,X 
       BNE    LF558   
LF53D: LDY    INPT4,X 
       BPL    LF556   
       LDY    $D4,X   
       CPY    #$0F    
       BEQ    LF556   
       BIT    $BE     
       BMI    LF556   
       LDA    $96,X   
       CMP    #$00    
       BNE    LF556   
       LDA    #$04    
       JSR    LFB9A   
LF556: LDA    $D4,X   
LF558: BIT    $8D     
       BMI    LF57B   
       BIT    $BE     
       BPL    LF568   
       CPX    #$01    
       BNE    LF568   
       BIT    $87     
       BPL    LF576   
LF568: STA    $87     
       DEC    $A8,X   
       BPL    LF58A   
       LDA    $DA,X   
       EOR    #$03    
       STA    $A8,X   
       LDA    $87     
LF576: LDY    $89     
       JMP.ind ($0085)
LF57B: LDA    $83     
       LSR            
       LDA    $D4,X   
       BIT    $87     
       BPL    LF576   
       BCC    LF58A   
       BCS    LF576   
LF588: ASL            
       ORA    $A6     
       TXA            
       LDA    $83     
       ROR            
       ROR            
       BPL    LF5B8   
       DEX            
       BMI    LF5BD   
LF595: LDY    $0284   
       BNE    LF595   
       LDA    #$82    
       STA    $02     
       STA    $00     
       STA    $02     
       STA    $02     
       STA    $02     
       LDA    #$00    
       STA    $00     
       LDA    #$37    
       STA    $02     
       STA    $0296   
       BIT    $84     
       BVS    LF5BD   
       JMP    LF47A   
LF5B8: INX            
       CPX    #$02    
       BCC    LF595   
LF5BD: JMP    LF93C   
LF5C0: .byte $24,$85,$10,$67,$30,$04,$24,$85,$30,$61,$A5,$88,$C9,$06,$B0,$5B
       .byte $A5,$86,$C9,$04,$90,$6A,$B0,$53,$C9,$0F,$F0,$4F,$A4,$B0,$D0,$4D
       .byte $A4,$D3,$B5,$92,$38,$F9,$92,$00,$66,$85,$30,$05,$49,$FF,$18,$69
       .byte $01,$85,$86,$B5,$90,$38,$F9,$90,$00,$66,$87,$30,$05,$49,$FF,$18
       .byte $69,$01,$85,$88,$B5,$D4,$29,$01,$F0,$B6,$B5,$D4,$29,$02,$F0,$B6
       .byte $A5,$86,$C9,$04,$B0,$15,$A5,$88,$C9,$06,$B0,$0F,$B5,$D4,$24,$87
       .byte $10,$05,$29,$04,$4C,$29,$F6,$29,$08,$F0,$15,$B5,$D4,$A4,$89,$24
       .byte $BE,$10,$08,$E0,$01,$D0,$04,$A4,$BF,$D0,$05,$56,$B8,$20,$43,$F6
       .byte $4C,$8A,$F5,$85,$D8,$B5,$DA,$85,$D9,$AA,$A5,$D8,$BC,$95,$F6,$A6
       .byte $8A,$C9,$0F,$F0,$2B,$B4,$90,$84,$DE,$B4,$92,$84,$DF,$20,$4A,$FC
       .byte $B4,$90,$C4,$DE,$D0,$06,$B4,$92,$C4,$DF,$F0,$13,$A6,$D9,$BD,$9D
       .byte $F6,$BC,$95,$F6,$25,$83,$D0,$03,$BC,$99,$F6,$A6,$8A,$94,$94,$60
       .byte $A6,$D3,$B5,$0C,$30,$F5,$B5,$D4,$C9,$0F,$F0,$EF,$A6,$8A,$B5,$94
       .byte $C9,$09,$90,$E7,$60
LF695: .byte $02,$02,$00,$00,$03,$03,$01,$01,$10,$10,$08,$08,$A5,$AA,$F0,$1B
       .byte $C9,$E8,$D0,$05,$A9,$03,$20,$C7,$FB,$20,$71,$FD,$A9,$0A,$85,$A2
       .byte $A9,$00,$85,$BF,$B5,$D4,$A4,$89,$4C,$2F,$F6,$A9,$FF,$85,$8D,$85
       .byte $B1,$85,$A6,$85,$A7,$A9,$00,$85,$96,$85,$97,$A9,$00,$85,$94,$85
       .byte $95,$A2,$03,$BD,$1A,$FF,$95,$90,$CA,$10,$F8,$A9,$00,$85,$BA,$A9
       .byte $03,$85,$BB,$4C,$8A,$F5,$A4,$89,$B9,$F8,$FD,$95,$A8,$A4,$D3,$B5
       .byte $A6,$D9,$A6,$00,$90,$06,$B9,$EC,$FD,$4C,$9A,$FB,$A4,$89,$60,$A9
       .byte $00,$95,$AD,$38,$76,$B8,$4C,$8A,$F5,$20,$EB,$F6,$4C,$08,$F7,$4C
       .byte $8A,$F5,$C9,$0F,$F0,$F9,$24,$D2,$30,$EC,$20,$D6,$FB,$A9,$02,$24
       .byte $85,$70,$02,$A9,$03,$C5,$89,$F0,$04,$B9,$8B,$FE,$2C,$A9,$05,$95
       .byte $94,$C9,$05,$F0,$CA,$24,$D6,$10,$D0,$A0,$05,$A5,$A2,$C9,$02,$F0
       .byte $02,$A0,$0A,$84,$A2,$38,$76,$B8,$A4,$D3,$B9,$94,$00,$C9,$05,$18
       .byte $D0,$01,$38,$66,$86,$C9,$04,$B0,$26,$A4,$89,$A5,$CF,$D9,$A9,$FD
       .byte $90,$1D,$A5,$CE,$D9,$AD,$FD,$A9,$00,$B0,$02,$A9,$01,$85,$87,$B5
       .byte $DA,$49,$FF,$29,$02,$18,$65,$87,$69,$09,$A4,$D3,$99,$94,$00,$20
       .byte $EB,$F6,$A6,$8A,$B5,$DA,$AA,$A9,$00,$18,$79,$F0,$FD,$CA,$10,$FA
       .byte $65,$CF,$69,$05,$85,$87,$A5,$CE,$0A,$65,$87,$85,$87,$A4,$D3,$B9
       .byte $DA,$00,$49,$03,$AA,$A5,$87,$A4,$89,$18,$79,$F0,$FD,$CA,$10,$FA
       .byte $A6,$D3,$24,$BE,$10,$09,$E0,$01,$D0,$05,$2C,$82,$02,$70,$04,$0A
       .byte $4C,$D3,$F7,$85,$88,$A5,$88,$4A,$4A,$EA,$EA,$18,$65,$88,$24,$86
       .byte $10,$01,$4A,$20,$9A,$FB,$A6,$8A,$A9,$00,$95,$AD,$A6,$D3,$F6,$AD
       .byte $A4,$D3,$A6,$8A,$24,$8D,$30,$29,$B9,$AD,$00,$C9,$0C,$90,$22,$A9
       .byte $02,$99,$94,$00,$A9,$03,$95,$96,$A9,$04,$99,$96,$00,$A9,$FF,$85
       .byte $AA,$A9,$04,$20,$C7,$FB,$A9,$0A,$85,$A2,$A9,$03,$85,$B1,$4C,$8A
       .byte $F5,$24,$86,$10,$0C,$A4,$89,$A6,$D3,$B9,$F4,$FD,$85,$87,$4C,$7E
       .byte $F8,$A6,$8A,$A4,$D3,$B9,$A6,$00,$38,$F5,$A6,$B0,$4C,$49,$FF,$69
       .byte $01,$C9,$02,$90,$44,$B9,$B6,$00,$29,$03,$A8,$A5,$89,$D9,$99,$FD
       .byte $D0,$37,$A5,$CF,$D9,$9D,$FD,$90,$30,$A5,$CE,$D9,$A1,$FD,$90,$29
       .byte $D9,$A5,$FD,$B0,$24,$A4,$D3,$B9,$DC,$00,$A4,$98,$D9,$AC,$F8,$A4
       .byte $D3,$90,$16,$4A,$85,$88,$B9,$AB,$00,$38,$E5,$88,$B0,$02,$A9,$00
       .byte $99,$AB,$00,$20,$B4,$F8,$4C,$8A,$F5,$A0,$06,$A9,$00,$F8,$46,$87
       .byte $90,$04,$18,$79,$E5,$FD,$88,$10,$F5,$D8,$20,$6D,$FB,$24,$86,$30
       .byte $0D,$A6,$D3,$A9,$0B,$24,$85,$50,$02,$A9,$07,$20,$4A,$FC,$A4,$89
       .byte $A9,$02,$20,$C7,$FB,$4C,$8A
LF8AC: .byte $F5,$10,$0E,$0C,$0A,$08,$06,$04,$A9,$00,$85,$AD,$85,$AE,$20,$79
       .byte $FB,$A9,$01,$20,$C7,$FB,$A9,$10,$85,$AF,$A9,$02,$99,$96,$00,$A9
       .byte $01,$95,$96,$A9,$06,$99,$94,$00,$A9,$22,$D9,$92,$00,$90,$03,$99
       .byte $92,$00,$60,$A4,$D3,$B9,$92,$00,$C9,$2E,$26,$85,$B9,$90,$00,$C9
       .byte $75,$26,$85,$A5,$85,$29,$03,$AA,$BD,$FE,$F8,$A6,$8A,$A4,$89,$4C
       .byte $2F,$F6,$05,$09,$06,$0A,$4C,$8A,$F5,$A9,$06,$95,$94,$D0,$F7,$24
       .byte $BE,$30,$04,$C9,$0E,$D0,$26,$A5,$AF,$C9,$01,$D0,$20,$B5,$A6,$38
       .byte $A4,$D3,$F9,$A6,$00,$B0,$08,$49,$FF,$69,$01,$C9,$08,$B0,$0E,$A9
       .byte $00,$85,$96,$85,$97,$A9,$00,$95,$94,$A9,$00,$85,$AF,$4C,$8A,$F5
LF93C: LDX    #$01    
LF93E: LDA    $96,X   
       CMP    #$02    
       BEQ    LF94E   
       CMP    #$04    
       BNE    LF952   
       LDA    $94,X   
       CMP    #$06    
       BNE    LF952   
LF94E: TXA            
       LSR            
       BPL    LF959   
LF952: DEX            
       BPL    LF93E   
       LDA    $92     
       CMP    $93     
LF959: BCS    LF95E   
       JSR    LFC21   
LF95E: ROR    $8A     
       LDX    #$01    
LF962: TXA            
       EOR    #$01    
       TAY            
       LDA    $96,X   
       CMP    #$04    
       BEQ    LF970   
       CMP    #$02    
       BNE    LF977   
LF970: LDA    $90,X   
       CMP    #$75    
       JMP    LF97C   
LF977: LDA    $90,X   
       CMP.wy $0090,Y 
LF97C: ROL            
       AND    #$01    
       ASL            
       ASL            
       ASL            
       STA    $B4,X   
       DEX            
       BPL    LF962   
       LDX    #$01    
LF989: LDA    $90,X   
       CLC            
       ADC    LFF60,X 
       LDY    #$FD    
       SEC            
LF992: INY            
       SBC    #$0F    
       BCS    LF992   
       STY    $B2,X   
       EOR    #$0F    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $B2,X   
       STA    $B2,X   
       DEX            
       BPL    LF989   
       BIT    $84     
       BVC    LF9AF   
       JMP    LFACE   
LF9AF: LDA    $94     
       ASL            
       TAX            
       STA    $85     
       LDA    $95     
       ASL            
       TAY            
       STA    $86     
       LDA    LFEBF,X 
       STA    $CF     
       LDA    LFEBF,Y 
       STA    $E7     
       LDA    LFF01,X 
       STA    $DF     
       LDA    LFF01,Y 
       STA    $F7     
       LDA    $B6     
       AND    #$03    
       ASL            
       CLC            
       ADC    LFF78,X 
       ASL            
       TAX            
       STA    $87     
       LDA    LFF3D,X 
       STA    $D7     
       LDA    $B7     
       AND    #$03    
       ASL            
       CLC            
       ADC    LFF78,Y 
       ASL            
       TAY            
       STA    $88     
       LDA    LFF3D,Y 
       STA    $EF     
       LDX    $85     
       LDY    $86     
       LDA    LFEBE,X 
       CLC            
       ADC    $92     
       STA    $CE     
       LDA    LFF00,X 
       CLC            
       ADC    $92     
       STA    $DE     
       LDA    LFEBE,Y 
       CLC            
       ADC    $93     
       STA    $E6     
       LDA    LFF00,Y 
       CLC            
       ADC    $93     
       STA    $F6     
       LDA    $B4     
       BEQ    LFA20   
       LDA    LFED8,X 
       BNE    LFA23   
LFA20: LDA    LFF00,X 
LFA23: CLC            
       ADC    $92     
       STA    $DE     
       LDA    $B5     
       BEQ    LFA31   
       LDA    LFED8,Y 
       BNE    LFA34   
LFA31: LDA    LFF00,Y 
LFA34: CLC            
       ADC    $93     
       STA    $F6     
       LDX    $87     
       LDY    $88     
       LDA    LFF3C,X 
       CLC            
       ADC    $92     
       STA    $D6     
       LDA    LFF3C,Y 
       CLC            
       ADC    $93     
       STA    $EE     
       INC    $CE     
       INC    $D6     
       INC    $EE     
       INC    $F6     
       LDY    #$00    
       STY    $85     
LFA59: TYA            
       ASL            
       CLC            
       ADC    $85     
       TAX            
       LDA    $CE,X   
       SEC            
       SBC    #$17    
       STA    $D0,X   
       LDA    $CF,X   
       STA    $D1,X   
       LDA    $D6,X   
       SEC            
       SBC    #$17    
       STA    $D8,X   
       LDA    $D7,X   
       STA    $D9,X   
       LDA    $DE,X   
       SEC            
       SBC    #$17    
       STA    $E0,X   
       LDA    $DF,X   
       STA    $E1,X   
       INY            
       CPY    #$03    
       BCC    LFA59   
       LDA    $85     
       BNE    LFA90   
       TAY            
       LDA    #$18    
       STA    $85     
       BNE    LFA59   
LFA90: LDX    #$01    
LFA92: STX    $86     
       LDY    #$05    
LFA96: DEY            
       LDA    $92,X   
       CMP    LFE9E,Y 
       BCS    LFA96   
       LDA    LFEA3,Y 
       JSR    LFC01   
       LDA    LFEA8,Y 
       BEQ    LFAAC   
       JSR    LFC01   
LFAAC: DEX            
       BPL    LFA92   
       LDA    #$00    
       STA    $86     
       LDX    #$01    
LFAB5: LDY    $94,X   
       LDA    LFEB1,Y 
       BMI    LFACB   
       LDA    LFEAF,X 
       STA    $85     
       LDY    #$06    
       LDA    #$40    
LFAC5: STA    ($85),Y 
       DEY            
       DEY            
       BPL    LFAC5   
LFACB: DEX            
       BPL    LFAB5   
LFACE: BIT    $8A     
       BMI    LFAD5   
       JSR    LFC21   
LFAD5: LDA    #$80    
       STA    $85     
       LDA    $A7     
       SEC            
       SBC    $A6     
       BEQ    LFAF9   
       ROL    $85     
       BNE    LFAE9   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LFAE9: STA    $87     
       CMP    #$08    
       BCC    LFAF1   
       LDA    #$08    
LFAF1: ASL            
       LDX    $85     
       CLC            
       ADC    LFD97,X 
       BIT    $37A9   
       LDY    #$FD    
       SEC            
LFAFE: INY            
       SBC    #$0F    
       BCS    LFAFE   
       STY    $C0     
       EOR    #$0F    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $C0     
       STA    $C0     
       LDX    $85     
       BMI    LFB39   
       TXA            
       EOR    #$01    
       TAY            
       LDA    $87     
       CMP    #$02    
       BCC    LFB39   
       LDA.wy $00AB,Y 
       SEC            
       SBC.wy $00A6,Y 
       BCS    LFB2A   
       LDA    #$00    
LFB2A: LDY    $98     
       CMP    LF8AC,Y 
       BCC    LFB39   
       LDX    #$02    
       LDA    $83     
       LSR            
       LSR            
       BCC    LFB3B   
LFB39: LDX    #$1E    
LFB3B: STX    $C1     
       INC    $83     
       BNE    LFB54   
       INC    $82     
       LDA    $82     
       AND    #$C7    
       STA    $82     
       AND    #$07    
       BNE    LFB54   
       INC    $81     
       BNE    LFB54   
       SEC            
       ROR    $81     
LFB54: LDA    $80     
       ASL            
       ASL            
       ASL            
       EOR    $80     
       ASL            
       ROL    $80     
       LDA    $81     
       ROL            
       ROL            
       ROL            
       AND    #$02    
LFB65: LDX    $0284   
       BNE    LFB65   
       JMP    LFFD8   
LFB6D: BIT    $8D     
       BMI    LFB83   
       SED            
       CLC            
       ADC    $9B,X   
       STA    $9B,X   
       BCC    LFB83   
       SED            
       LDA    $99,X   
       CLC            
       ADC    #$01    
       BCS    LFB83   
       STA    $99,X   
LFB83: CLD            
       RTS            

LFB85: LDA    $A6,X   
       ROL            
       ROL            
       ROL            
       AND    #$03    
       STA    $DA,X   
       LDA    $AB,X   
       SEC            
       SBC    $A6,X   
       BCS    LFB97   
       LDA    #$00    
LFB97: STA    $DC,X   
       RTS            

LFB9A: BIT    $8D     
       BMI    LFBAE   
       CLC            
       ADC    $A4,X   
       STA    $A4,X   
       BCC    LFBAE   
       LDA    $A6,X   
       SEC            
       SBC    #$01    
       BCC    LFBAE   
       STA    $A6,X   
LFBAE: RTS            

LFBAF: BIT    $8D     
       BMI    LFBC6   
       STA    $87     
       LDA    $A4,X   
       SEC            
       SBC    $87     
       STA    $A4,X   
       BCS    LFBC6   
       LDA    $A6,X   
       ADC    #$01    
       BCS    LFBC6   
       STA    $A6,X   
LFBC6: RTS            

LFBC7: STA    $9F     
       LDA    #$FF    
       STA    $BD     
       STA    $BC     
       RTS            

LFBD0: .byte $A4,$8A,$2C,$A4,$D3,$60,$A5,$D6,$E0,$01,$D0,$02,$49,$40,$85,$85
       .byte $60
LFBE1: LDA    SWCHA   
       LDX    $8A     
LFBE6: BNE    LFBEC   
       LSR            
       LSR            
       LSR            
       LSR            
LFBEC: AND    #$0F    
       STA    $87     
       STA    $D4,X   
       LDX    #$03    
       LDY    #$00    
LFBF6: LSR    $87     
       BCC    LFBFE   
       INY            
       DEX            
       BPL    LFBF6   
LFBFE: LDX    $8A     
       RTS            

LFC01: STY    $85     
       CLC            
       ADC    LFEAD,X 
       TAY            
       LDX    #$02    
LFC0A: LDA    #$D3    
       STA.wy $0001,Y 
       LDA    #$40    
       STA.wy $0000,Y 
       TYA            
       CLC            
       ADC    #$08    
       TAY            
       DEX            
       BPL    LFC0A   
       LDY    $85     
       LDX    $86     
       RTS            

LFC21: LDA    $90     
       LDY    $91     
       STA    $91     
       STY    $90     
       LDA    $92     
       LDY    $93     
       STA    $93     
       STY    $92     
       LDA    $94     
       LDY    $95     
       STA    $95     
       STY    $94     
       LDA    $B6     
       LDY    $B7     
       STA    $B7     
       STY    $B6     
       LDA    $96     
       LDY    $97     
       STA    $97     
       STY    $96     
       RTS            

LFC4A: .byte $A8,$18,$B9,$47,$FF,$75,$92,$C9,$09,$90,$06,$C9,$34,$B0,$02,$95
       .byte $92,$18,$B9,$52,$FF,$75,$90,$C9,$50,$90,$06,$C9,$9A,$B0,$02,$95
       .byte $90,$60
LFC6C: LDX    #$21    
LFC6E: LDA    LFF1A,X 
       STA    $90,X   
       DEX            
       BPL    LFC6E   
       LDA    #$00    
       STA    $BA     
       LDA    #$03    
       STA    $BB     
       RTS            

LFC7F: TAX            
       ASL            
       TAY            
       LDA    LFCBA,X 
       BMI    LFCA9   
LFC87: LDA    LFDB5,Y 
       STA    $C2     
       LDA    LFDB6,Y 
       STA    $C3     
       LDY    #$00    
LFC93: TYA            
       ASL            
       TAX            
       LDA    $C2,X   
       CLC            
       ADC    #$08    
       STA    $C4,X   
       LDA    $C3,X   
       ADC    #$00    
       STA    $C5,X   
       INY            
       CPY    #$05    
       BCC    LFC93   
       RTS            

LFCA9: LDA    $83     
       AND    #$08    
       BNE    LFC87   
       LDX    #$0B    
LFCB1: LDA    LFCC6,X 
       STA    $C2,X   
       DEX            
       BPL    LFCB1   
       RTS            

LFCBA: .byte $00,$FF,$FF,$FF,$FF,$00,$00,$FF,$00,$00,$00,$00
LFCC6: .byte $80,$B8,$80,$B8,$80,$B8,$80,$B8,$80,$B8,$80,$B8
LFCD2: LDA    #$04    
       STA    $85     
       LDA    $96,X   
       CMP    #$00    
       BNE    LFD1B   
       LDA    $BF     
       CMP    #$01    
       BNE    LFCF1   
       LDY    $D3     
       LDA    $80     
       CLC            
       ADC.wy $0090,Y 
       SBC.wy $0092,Y 
       AND    #$03    
       STA    $BB     
LFCF1: LDA    $BF     
       BEQ    LFD06   
       CMP    $85     
       BCS    LFD1B   
       BIT    $D2     
       BPL    LFD60   
       LDY    $DA,X   
       LDA    LF695,Y 
       STA    $94,X   
       BCC    LFD1B   
LFD06: JSR    LFD71   
       LDA    $80     
       AND    #$99    
       BNE    LFD17   
       LDA    $80     
       AND    #$3F    
       STA    $BF     
       BPL    LFD1B   
LFD17: BIT    $D6     
       BMI    LFD22   
LFD1B: LDA    $96,X   
       LDY    #$80    
LFD1F: JMP    LF519   
LFD22: LDY    #$0C    
       STY    $BF     
       LDY    $D3     
       LDA.wy $00A6,Y 
       SEC            
       SBC    $A6,X   
       BCS    LFD51   
       EOR    #$FF    
       ADC    #$01    
       CMP    #$02    
       BCC    LFD51   
       LDA.wy $00AB,Y 
       SEC            
       SBC.wy $00A6,Y 
       BCC    LFD51   
       LDY    $98     
       CMP    LF8AC,Y 
       BCC    LFD51   
       LDY    $B6     
       LDA    LFD99,Y 
       TAY            
       JMP    LFD59   
LFD51: LDA    $80     
       AND    #$03    
       TAY            
       BIT.w  $00A0   
LFD59: LDA    LFE10,Y 
       STA    $D4,X   
       STY    $89     
LFD60: LSR    $B8,X   
       LDA    $96,X   
       LDY    #$00    
       JMP    LFD1F   
LFD69: .byte $00,$01,$02,$02,$00,$01,$03,$03
LFD71: LDY    $BA,X   
       LDA    $92,X   
       CMP    LFDFC,Y 
       BNE    LFD7F   
       LDA    LFE00,Y 
       BPL    LFD89   
LFD7F: LDA    $90,X   
       CMP    LFE04,Y 
       BNE    LFD8B   
       LDA    LFE08,Y 
LFD89: STA    $BA,X   
LFD8B: LDY    $BA,X   
       LDA    LFE0C,Y 
       STA    $D4,X   
       LDA    $96,X   
       LDY    #$80    
       RTS            

LFD97: .byte $37,$87
LFD99: .byte $00,$01,$01,$00,$04,$06,$05,$06,$05,$00,$00,$00,$FF,$FF,$03,$FF
       .byte $01,$02,$02,$02,$02,$80,$03,$03
LFDB1: .byte $08,$09,$0A,$0B
LFDB5: .byte $90
LFDB6: .byte $B8,$C0,$B8,$F0,$B8,$20,$B9,$50,$B9,$80,$B9,$B0,$B9,$E0,$B9,$18
       .byte $BA,$48,$BA,$78,$BA,$A8,$BA
LFDCD: .byte $96,$D3,$17,$D4,$3F,$D4,$67,$D4
LFDD5: .byte $FF,$02,$FF,$01,$FF,$03,$00,$FF,$00,$FF,$FF,$03,$01,$FF,$02,$FF
       .byte $64,$32,$16,$08,$04,$02,$01,$0A,$06,$02,$02,$05,$03,$01,$01,$14
       .byte $0C,$04,$04,$0A,$05,$00,$00
LFDFC: .byte $33,$33,$09,$09
LFE00: .byte $02,$03,$00,$01
LFE04: .byte $99,$50,$99,$50
LFE08: .byte $01,$00,$03,$02
LFE0C: .byte $05,$09,$06,$0A
LFE10: .byte $0E,$0D,$0B,$07,$0F
LFE15: .byte $31,$51,$71,$91,$B1,$D1,$B1,$91,$07,$07,$35,$55,$75,$95,$B5,$D5
       .byte $B5,$95,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
       .byte $07,$00,$FF,$FF,$FF,$FF,$FF,$DF,$DF,$BF,$9F,$7F,$5F,$3F,$3F,$3F
       .byte $00,$8A,$AA,$8A,$6A,$4A,$00,$F8,$F7,$F6,$F5,$F4,$F3,$F2,$F1,$F0
       .byte $EF,$EE,$ED,$EC,$EB,$EA,$E9,$00,$F8,$D8,$B8,$98,$98,$98,$78,$78
       .byte $78,$58,$58,$58,$58,$38,$38,$38,$38,$38,$00
LFE70: .byte $90
LFE71: .byte $00,$37,$FE,$46,$FE,$4C,$FE,$5D,$FE,$70
LFE7B: .byte $FE,$08,$08,$0C,$04
LFE80: .byte $0C,$02,$01,$04,$02,$01,$00,$01,$03,$02,$04,$07,$08,$04,$04,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$0A,$0A,$0A,$0A,$02
LFE9E: .byte $34,$2E,$1D,$17,$06
LFEA3: .byte $D0,$CE,$D4,$D4,$D4
LFEA8: .byte $CE,$00,$CE,$00,$D2
LFEAD: .byte $00,$18
LFEAF: .byte $DE,$F6
LFEB1: .byte $FF,$FF,$00,$00,$FF,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFEBE: .byte $29
LFEBF: .byte $D5,$68,$D5,$A7,$D5,$A8,$D6,$68,$D3,$28,$DE,$68,$DB,$68,$DC,$68
       .byte $DD,$29,$D5,$29,$D5,$A7,$D5,$A7,$D5
LFED8: .byte $69,$D6,$69,$D6,$40,$D3,$40,$D3,$29,$D3,$40,$D3,$29,$DB,$29,$DC
       .byte $29,$DD,$69,$DF,$5B,$D9,$BD,$D9,$69,$DA,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFF00: .byte $29
LFF01: .byte $D6,$29,$D6,$40,$D3,$40,$D3,$D0,$D3,$40,$D3,$A8,$DB,$A8,$DC,$A8
       .byte $DD,$29,$DF,$29,$D9,$7D,$D9,$29,$DA
LFF1A: .byte $50,$99,$0A,$33,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00
       .byte $03,$00,$0A,$00,$00,$00,$FF,$FF,$00,$00,$00,$FF,$FF,$00,$00,$00
       .byte $00,$FF
LFF3C: .byte $A7
LFF3D: .byte $D3,$68,$DE,$28,$D4,$88,$DE,$50,$D4,$A8,$DE,$78,$D4,$C8,$DE,$01
       .byte $FF,$00,$55,$01,$FF,$00,$55,$01,$FF,$00,$01,$01,$01,$55,$FF,$FF
       .byte $FF,$55,$00
LFF60: .byte $00,$00,$3C,$90
LFF64: .byte $D8
LFF65: .byte $F5,$DF,$F8,$0B,$F9,$A1,$F6,$04,$F7,$17,$F7,$DF,$F8,$0B,$F9,$A1
       .byte $F6,$04,$F7
LFF78: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LFFD8: BIT    LFFF8   
       JMP    LDFDB   
LFFDE: .byte $EA,$EA,$EA
LFFE1: JMP    LF035   
LFFE4: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA
LFFF8: .byte $EA
LFFF9: .byte $EA,$00,$F0,$00,$F0,$00,$F0
