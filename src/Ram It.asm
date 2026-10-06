; Disassembly of roms/Ram It.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Ram It.bin
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
REFP0   =  $0B
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
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
CXCLR   =  $2C
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284

       ORG $F000
LF000: .byte $18,$18,$18,$18,$18,$18,$18,$18,$18,$3C,$FE,$FE,$FE,$FE,$3C,$18
       .byte $18,$18,$18,$18,$18,$18,$18,$18
LF018: .byte $00,$40,$A0,$A0,$A0,$A0,$A0,$40,$00,$E0,$40,$40,$40,$40,$C0,$40
       .byte $00,$E0,$80,$80,$40,$20,$A0,$40,$00,$40,$A0,$20,$40,$20,$A0,$40
       .byte $00,$20,$20,$20,$E0,$A0,$A0,$80,$00,$C0,$20,$20,$C0,$80,$80,$E0
       .byte $00,$40,$A0,$A0,$C0,$80,$A0,$40,$00,$80,$80,$80,$40,$20,$20,$E0
       .byte $00,$40,$A0,$A0,$40,$A0,$A0,$40,$00,$40,$A0,$20,$60,$A0,$A0,$40
       .byte $00,$00,$00,$00,$00,$00,$00
LF06F: .byte $00,$00,$F0,$00,$00,$00,$00
LF076: .byte $10,$00,$10,$00,$00,$00,$00,$F0,$00,$0A,$0A,$0A,$0A,$0A,$0A,$0A
       .byte $0A,$0A,$0A,$0A,$08,$0A
LF08C: .byte $44,$00,$1F,$00,$19,$1A,$1B,$02,$19,$00,$18,$FF,$FF
LF099: .byte $FF,$00,$FF,$00,$A6,$28,$AE,$AA,$24,$20,$26,$29,$0B
LF0A6: .byte $09,$06,$00,$99,$04,$C4,$2A,$4A,$8A,$6A,$00,$76,$21,$23
LF0B4: .byte $65,$22,$00,$E0,$00,$C0,$20,$40,$80,$60,$00,$27,$54,$22,$51,$26
       .byte $00
LF0C5: .byte $00,$00,$00,$00,$00,$80,$80,$80,$C0,$E0,$F8
LF0D0: .byte $00,$00,$00,$00,$00,$01,$01,$01,$03,$07,$1F,$90
LF0DC: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90
LF0EB: .byte $B7
LF0EC: .byte $F5,$20,$F5,$22,$F5,$B9,$F5,$00,$44,$AA,$AA,$AA,$AA,$AA,$44,$A0
       .byte $85,$A0,$90,$A0,$04,$04,$04,$04,$04,$04,$04,$04,$28,$26,$08,$06
       .byte $04,$02,$26,$28,$04,$04,$04,$04,$04,$04,$04,$04,$00,$6F,$31,$31
       .byte $31,$3F,$36,$33,$31,$30,$78,$00,$FF,$FF,$3F,$00,$00,$80,$80,$80
       .byte $04,$0A,$0A,$C5,$F0,$7E,$00,$FF,$FF,$FF,$00,$00,$00,$00,$00,$28
       .byte $54,$44,$44,$00,$00,$00,$FF,$FF,$FF,$00,$1F,$1B,$13,$03,$03,$03
       .byte $03,$13,$1B,$1F,$00,$FF,$FF,$FF,$00,$E0,$60,$24,$0E,$04,$04,$04
       .byte $24,$60,$E0,$00,$FF,$FF,$FC,$00,$44,$44,$44,$44,$44,$44,$44,$44
       .byte $44,$44,$44,$28,$28,$04,$00,$01,$08,$05,$04,$04,$08,$01,$12,$0C
       .byte $08,$01,$1F,$03,$0C,$01,$1D,$07,$0C,$01,$1A,$27,$08,$A7,$C4,$96
       .byte $36,$F4,$44,$89,$5C,$64,$B9,$E4,$34,$04
LF196: .byte $04
LF197: .byte $20
LF198: .byte $E0
LF199: .byte $07
LF19A: .byte $05
LF19B: .byte $E0,$15,$A0,$B0,$08,$05,$E0,$15,$C0,$D8,$0B,$08,$00
LF1A8: .byte $87,$8F,$97,$9F,$A7,$AF,$04,$0C,$01,$08,$0F,$0C,$01,$04,$07,$0C
       .byte $01,$02,$7F,$3F,$03,$02
LF1BE: .byte $7F,$3F,$1F,$0F,$07,$03,$01,$01,$00,$40,$A0,$A0,$A0,$40,$00,$E0
       .byte $40,$40,$C0,$40,$00,$E0,$80,$40,$20,$C0,$00,$C0,$20,$40,$20,$C0
LF1DE: .byte $C6,$CC,$D2,$D8,$00,$00,$00,$00,$88,$54,$10,$08,$10,$14,$08,$00
       .byte $FF,$00,$00,$20,$30,$38,$3C,$3E,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F
       .byte $3F,$3F,$00,$00,$00,$00,$00,$00,$00,$00,$07,$07,$07,$07,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$01,$03,$07,$0F,$1F,$3F,$7F,$FF,$00,$7F
       .byte $08,$08,$09,$0A,$0A,$0A,$0A,$0A,$09,$00,$7F,$00,$00,$00,$00,$20
       .byte $B0,$A8,$A8,$A8,$A8,$30,$20,$AF,$20,$00,$30,$48,$40,$41,$22,$12
       .byte $0A,$0A,$4A,$31,$00,$FF,$00,$00,$00,$00,$12,$A9,$29,$29,$29,$A9
       .byte $11,$00,$FF,$00,$00

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF25A: STA    VSYNC,X 
       INX            
       BNE    LF25A   
       STY    $C3     
       LDA    #$07    
       STA    $D0     
       LDA    #$02    
       STA    $B0     
       LDX    #$F0    
       STX    $F4     
       STX    $E6     
       INX            
       STX    $E8     
       INX            
       STX    $EA     
       JMP    LF8EA   
LF278: LDA    ($00,X) 
       LDA    $B0     
       CMP    #$02    
       BNE    LF2D4   
       LDA    $C5     
       BMI    LF2E3   
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP1    
       LDA    #$F0    
       STA    HMP0    
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$0F    
       STX    COLUP0  
       STX    COLUP1  
       LDX    #$0F    
       BNE    LF2B9   
LF2A2: LDA    LF08C,X 
       STA    GRP0    
       LDA    LF099,X 
       STA    GRP1    
       LDA    ($00,X) 
       LDA    ($00,X) 
       LDA    ($00,X) 
       NOP            
       NOP            
       PLA            
       STA    GRP0    
       STY    GRP1    
LF2B9: LDA    LF0A6,X 
       PHA            
       LDY    LF0B4,X 
       STA    WSYNC   
       DEX            
       BNE    LF2A2   
       STX    GRP0    
       STX    GRP1    
       PLA            
       LDX    #$04    
LF2CC: STA    WSYNC   
       DEX            
       BNE    LF2CC   
       JMP    LF41A   
LF2D4: LDA    $C5     
       AND    #$3C    
       ORA    $C6     
       ORA    $B6     
       BNE    LF2E3   
       LDY    #$14    
       JMP    LF3CA   
LF2E3: LDX    $CB     
       STA    WSYNC   
       NOP            
LF2E8: DEX            
       BNE    LF2E8   
       LDA    SWCHB   
       STA    RESP0   
       STA.w  $0011   
       STA    WSYNC   
       LDX    $C2     
       LDY    LF196,X 
       LDA    $C7     
       LSR            
       BCS    LF30A   
       TXA            
       BNE    LF30A   
       LDA    $BB     
       ORA    $BC     
       BEQ    LF30A   
       LDY    #$00    
LF30A: STY    NUSIZ0  
       STY    NUSIZ1  
       STY    $F8     
       LDA    LF19B,X 
       STA    HMP0    
       LDA    LF197,X 
       STA    HMP1    
       LDA    LF198,X 
       STA    HMM0    
       STA    HMM1    
       CMP    #$E0    
       PHP            
       STA    WSYNC   
       STA    HMOVE   
       CMP    #$D8    
       BEQ    LF334   
       LDX    #$78    
       LDY    #$80    
       LDA    #$88    
       BNE    LF33A   
LF334: LDX    #$C8    
       LDY    #$90    
       LDA    #$98    
LF33A: STX    COLUP0  
       STX    COLUP1  
       STY    $BE     
       STA    $C0     
       LDA    #$01    
       STA    $BF     
       STA    $C1     
       STX    HMCLR   
       STA    WSYNC   
       LDX    #$02    
       PLP            
       BEQ    LF37E   
       STA    WSYNC   
       STX    ENAM0   
       STX    ENAM1   
       LDY    #$07    
LF359: LDA    ($BE),Y 
       STA    GRP0    
       LDA    ($C0),Y 
       STA    GRP1    
       LDA    LF06F,Y 
       ASL            
       STA    HMM0    
       LDA    LF076,Y 
       ASL            
       STA    HMM1    
       BEQ    LF376   
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       BNE    LF359   
LF376: STA    WSYNC   
       DEY            
       BNE    LF359   
       DEX            
       BNE    LF3BD   
LF37E: STA    WSYNC   
       STX    ENAM0   
       STX    ENAM1   
       LDX    #$07    
LF386: LDA    #$78    
LF388: STA    COLUP0  
       STA    COLUP1  
       LDA    $0180,X 
       LDY    $0188,X 
       STA    GRP0    
       STY    GRP1    
       LDA    $0190,X 
       LDY    LF06F,X 
       STY    HMM0    
       LDY    $0198,X 
       STA    GRP0    
       LDA    #$C8    
       STY    GRP1    
       STA    COLUP0  
       STA    COLUP1  
       LDA    LF076,X 
       STA    HMM1    
       BEQ    LF3BB   
       LDA    #$78    
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    LF388   
LF3BB: STA    WSYNC   
LF3BD: DEX            
       BNE    LF386   
       STX    GRP0    
       STX    GRP1    
       STX    ENAM0   
       STX    ENAM1   
       LDY    #$08    
LF3CA: STA    WSYNC   
LF3CC: CPY    #$06    
       BCC    LF3FB   
       LDA    #$0B    
       STA    COLUP0  
       LDA    #$D0    
       STA    HMP0    
       LDA    #$F1    
       STA    $BF     
       STA    $C1     
       LDA    SWCHB   
       STA    RESP0   
       LDX    #$04    
       LDA    $F8     
       CMP    #$04    
       BEQ    LF3F2   
       LDA    $C7     
       LSR            
       BCS    LF3F2   
       LDX    #$00    
LF3F2: STX    NUSIZ0  
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       BNE    LF3CC   
LF3FB: LDX    $C8     
       LDA    LF1DE,X 
       STA    $BE     
       LDA    ($BE),Y 
       STA    GRP0    
       LDX    $C9     
       LDA    LF1DE,X 
       STA    $C0     
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($00,X) 
       LDA    ($00,X) 
       LDX    #$00    
       DEY            
       BNE    LF3CA   
LF41A: STX    NUSIZ0  
       STX    NUSIZ1  
       STX    COLUP0  
       STX    COLUP1  
       STA    WSYNC   
       LDX    #$05    
LF426: DEX            
       BNE    LF426   
       STA.w  $0010   
       LDX    #$05    
LF42E: DEX            
       BNE    LF42E   
       LDA    #$30    
       STA.w  $0011   
       STA    HMP0    
       LDA    #$B0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       TXA            
       LDX    #$1F    
LF445: STA    $80,X   
       DEX            
       BPL    LF445   
       LDA    $CD     
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $CD     
       AND    #$07    
       STA    $80,X   
       CLC            
       ADC    #$08    
       STA    $7F,X   
       LDA    $CF     
       CMP    #$8C    
       BCC    LF465   
       CMP    #$92    
       BCC    LF47C   
LF465: LDA    $D2     
       BEQ    LF47C   
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $D2     
       AND    #$07    
       STA    $90,X   
       CLC            
       ADC    #$08    
       CMP    #$0D    
       BCS    LF47C   
       STA    $8F,X   
LF47C: STA    WSYNC   
       LDX    #$0A    
LF480: STA    WSYNC   
       LDA    #$24    
       STA    COLUPF  
       LDA    LF0C5,X 
       STA    GRP0    
       LDA    LF0D0,X 
       STA    GRP1    
       DEX            
       BNE    LF480   
       LDA    $CC     
       STA    REFP0   
       LDX    #$0B    
       LDA    $B6     
       BEQ    LF49F   
       LDX    #$00    
LF49F: STX    COLUP1  
       STA    WSYNC   
       LDA    #$05    
       STA    CTRLPF  
       LDX    $D0     
LF4A9: DEX            
       BNE    LF4A9   
       STA    RESP1   
       LDA    $D1     
       STA    HMP1    
       STA    WSYNC   
       LDA    VSYNC   
       LDA    ($00),Y 
       LDA    $B0     
       CMP    #$02    
       BNE    LF4D8   
       LDA    $B6     
       LSR            
       BCS    LF4DB   
       LDA    #$03    
       STA    NUSIZ0  
       LSR            
       STA    NUSIZ1  
       LDA    #$E0    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       LDA    #$D0    
       STA    HMP0    
       BNE    LF4E6   
LF4D8: LDA    ($00),Y 
       NOP            
LF4DB: NOP            
       LDA    ($00,X) 
       LDA    ($00,X) 
       LDA    #$C0    
       STA    HMP0    
       STA    RESP0   
LF4E6: STA    WSYNC   
       STA    HMOVE   
       STY    CXCLR   
       JMP.ind ($00D6)
LF4EF: .byte $A0,$80,$85,$02,$A5,$F5,$85,$0E,$A9,$00,$85,$0F,$B1,$00,$98,$38
       .byte $E9,$01,$C4,$B1,$90,$14,$EA,$85,$09,$B1,$00,$A1,$00,$A1,$00,$A1
       .byte $00,$A1,$00,$A9,$00,$85,$09,$88,$D0,$D8,$A6,$F0,$A4,$DA,$6C,$D8
       .byte $00,$A0,$20,$85,$02,$A9,$00,$85,$0F,$A9,$30,$85,$0E,$88,$D0,$F3
       .byte $85,$02,$A5,$00,$B9,$7E,$F0,$85,$06,$85,$07,$B9,$1C,$F2,$85,$1B
       .byte $B9,$29,$F2,$85,$1C,$B9,$37,$F2,$BE,$E2,$F1,$9A,$BE,$44,$F2,$8D
       .byte $1B,$00,$86,$1C,$BA,$86,$1B,$C8,$C4,$EB,$D0,$D4,$A4,$EC,$D0,$03
       .byte $4C,$B6,$F6,$A2,$07,$85,$02,$A9,$30,$85,$0E,$38,$A5,$EC,$E9,$06
       .byte $30,$06,$85,$BE,$C4,$BE,$90,$23,$A9,$01,$85,$04,$4A,$85,$05,$A9
       .byte $E0,$85,$20,$85,$21,$A9,$30,$85,$0E,$88,$D0,$03,$4C,$B6,$F6,$C6
       .byte $BE,$C4,$BE,$F0,$D0,$85,$02,$85,$2A,$D0,$CC,$BD,$A0,$01,$85,$1B
       .byte $BD,$A8,$01,$85,$1C,$A9,$30,$85,$0E,$BD,$18,$F0,$85,$1B,$8A,$F0
       .byte $01,$CA,$88,$D0,$B0,$4C,$B6,$F6,$A0,$26,$85,$02,$A9,$00,$85,$0F
       .byte $A9,$30,$85,$0E,$88,$D0,$F3,$85,$02,$A5,$00,$B9,$63,$F1,$85,$06
       .byte $85,$07,$B9,$18,$F1,$85,$1B,$B9,$27,$F1,$85,$1C,$B9,$36,$F1,$BE
       .byte $54,$F1,$9A,$BE,$45,$F1,$8D,$1B,$00,$86,$1C,$BA,$86,$1B,$C8,$C0
       .byte $10,$D0,$D4,$A0,$4A,$D0,$03,$4C,$B6,$F6,$85,$02,$88,$D0,$FB,$4C
       .byte $B6,$F6,$A4,$F1,$B5,$7F,$85,$E5,$85,$E7,$85,$02,$B1,$E5,$85,$1B
       .byte $B1,$E7,$85,$06,$C8,$C0,$08,$D0,$F1,$A0,$00,$CA,$D0,$05,$4C,$B6
       .byte $F6,$A2,$10,$85,$02,$A9,$00,$85,$0E,$85,$0F,$B4,$8F,$B9,$00,$F2
       .byte $85,$1C,$84,$E9,$B4,$7F,$B9,$00,$F0,$85,$1B,$B9,$00,$F1,$85,$06
       .byte $84,$E7,$84,$E5,$B5,$9F,$4A,$4A,$4A,$4A,$A8,$B9,$F0,$F1,$85,$BE
       .byte $B9,$0D,$F2,$85,$BF,$A4,$E9,$B9,$01,$F2,$85,$1C,$A4,$E5,$B9,$01
       .byte $F0,$85,$1B,$B9,$01,$F1,$85,$06,$B5,$9F,$29,$0F,$A8,$B9,$F0,$F1
       .byte $85,$C0,$B9,$0D,$F2,$85,$C1,$BD,$85,$F1,$05,$F9,$85,$08,$A0,$02
       .byte $A5,$33,$10,$04,$86,$EE,$86,$2C,$85,$02,$B1,$E9,$85,$1C,$B1,$E5
       .byte $85,$1B,$A5,$BE,$85,$0E,$B1,$E7,$85,$06,$A5,$BF,$85,$0F,$A5,$C0
       .byte $85,$0E,$A5,$C1,$85,$0F,$C8,$C0,$08,$D0,$DD,$CA,$F0,$03,$4C,$22
       .byte $F6,$A5,$33,$10,$02,$85,$EE,$85,$02,$A9,$3F,$85,$0E,$A9,$FF,$85
       .byte $0F,$A9,$24,$85,$08,$A2,$00,$86,$1B,$86,$1C,$AD,$82,$02,$85,$10
       .byte $A9,$B0,$85,$21,$A9,$30,$85,$20,$86,$04,$86,$05,$86,$0B,$86,$06
       .byte $86,$07,$AD,$82,$02,$85,$11,$85,$02,$85,$2A,$A2,$01,$85,$02,$A9
       .byte $01,$85,$0A,$BD,$C4,$F0,$85,$1B,$BD,$CF,$F0,$85,$1C,$E8,$E0,$0C
       .byte $D0,$EB,$A2,$06,$CA,$D0,$FD,$86,$1B,$A9,$04,$85,$04,$86,$08,$86
       .byte $1C,$85,$02,$A9,$A0,$85,$20,$A9,$F0,$85,$81,$85,$83,$A5,$BD,$29
       .byte $F0,$4A,$69,$18,$85,$80,$A5,$BD,$29,$0F,$0A,$0A,$0A,$69,$18,$A2
       .byte $B0,$85,$10,$85,$11,$85,$82,$86,$21,$A2,$68,$A5,$BD,$D0,$02,$86
       .byte $82,$C9,$10,$B0,$02,$86,$80,$85,$02,$85,$2A,$A2,$0D,$A4,$B6,$30
       .byte $18,$C9,$11,$B0,$14,$A2,$46,$C9,$06,$B0,$0E,$A5,$C5,$29,$1C,$D0
       .byte $08,$A5,$B0,$C9,$02,$F0,$02,$A2,$00,$86,$BE,$A0,$07,$B1,$F3,$4A
       .byte $29,$3F,$85,$BF,$B1,$F3,$29,$C0,$05,$BF,$99,$88,$00,$88,$10,$ED
       .byte $A2,$25,$A0,$07,$85,$02,$A5,$BE,$85,$06,$85,$07,$E0,$22,$B0,$1F
       .byte $B1,$82,$4A,$4A,$4A,$4A,$11,$80,$85,$1B,$B9,$F3,$F0,$85,$1C,$B9
       .byte $88,$00,$8D,$1B,$00,$A9,$1A,$85,$06,$85,$07,$98,$F0,$01,$88,$CA
       .byte $D0,$D2,$A2,$FF,$9A,$85,$02,$86,$01,$86,$00,$A4,$CA,$85,$02,$EA
       .byte $88,$D0,$FD,$85,$13,$A4,$CA,$85,$02,$EA,$88,$D0,$FD,$85,$12,$85
       .byte $02,$84,$00,$A9,$2A,$8D,$96,$02,$20,$F2,$FE,$A6,$C7,$E8,$8A,$0A
       .byte $0A,$0A,$69,$18,$85,$F3,$A5,$B2,$F0,$0A,$C6,$B2,$A9,$00,$85,$C5
       .byte $A5,$B5,$85,$C4,$E6,$C5,$D0,$38,$E6,$C4,$A5,$C4,$C9,$02,$90,$30
       .byte $A5,$B0,$C9,$02,$D0,$2A,$A5,$DB,$F0,$02,$85,$FA,$A9,$81,$85,$B1
       .byte $A9,$00,$85,$C4,$E6,$DB,$A5,$DB,$29,$01,$85,$DB,$0A,$AA,$BD,$EF
       .byte $F0,$85,$D8,$BD,$F0,$F0,$85,$D9,$A9,$F4,$85,$D7,$A9,$EF,$85,$D6
       .byte $A6,$B1,$CA,$CA,$CA,$CA,$8A,$29,$07,$49,$07,$85,$F1,$8A,$4A,$4A
       .byte $4A,$85,$F0,$E6,$F0,$A5,$B1,$F0,$54,$C6,$B1,$A6,$B1,$E0,$01,$D0
       .byte $03,$4C,$EA,$F8,$A5,$B6,$F0,$0B,$A9,$00,$85,$DA,$E0,$02,$F0,$7A
       .byte $4C,$11,$F9,$A5,$DB,$D0,$45,$A5,$B1,$C9,$81,$B0,$30,$38,$E9,$02
       .byte $10,$02,$A9,$00,$85,$BE,$AA,$E0,$0F,$90,$02,$A2,$0F,$86,$EB,$C9
       .byte $10,$90,$0B,$38,$E9,$0F,$C9,$51,$90,$06,$A9,$51,$D0,$02,$A9,$00
       .byte $85,$EC,$A5,$BE,$C9,$61,$90,$07,$38,$E9,$60,$85,$DA,$D0,$73,$AA
       .byte $F0,$38,$A9,$00,$85,$DA,$A2,$2F,$A0,$F5,$D0,$38,$38,$A5,$B1,$E9
       .byte $02,$10,$02,$A9,$00,$C9,$5B,$90,$07,$38,$E9,$5A,$85,$DA,$D0,$52
       .byte $C9,$4B,$90,$11,$38,$E9,$4A,$85,$DA,$A9,$10,$E5,$DA,$85,$DA,$A2
       .byte $C6,$A0,$F5,$D0,$0F,$85,$DA,$AA,$D0,$06,$A2,$B6,$A0,$F6,$D0,$04
       .byte $A2,$F9,$A0,$F5,$84,$D9,$86,$D8,$4C,$11,$F9
LF8EA: LDA    $DB     
       ASL            
       TAX            
       LDA    LF0EB,X 
       STA    $D6     
       LDA    LF0EC,X 
       STA    $D7     
       LDA    #$30    
       STA    $F5     
       LDA    #$00    
       STA    $B6     
       STA    $CC     
       LDA    #$0F    
       STA    $EB     
       LDA    #$51    
       STA    $EC     
       LDA    $FA     
       BEQ    LF911   
       JMP    LFB2A   
LF911: LDY    #$06    
       LDA    $B0     
       CMP    #$02    
       BNE    LF921   
       LDA    $B6     
       BEQ    LF934   
       LDY    #$04    
       BNE    LF934   
LF921: LDY    #$04    
       LDA    $B2     
       BNE    LF934   
       LDA    $B0     
       ASL            
       TAY            
       STY    $BF     
       CLC            
       ADC    #$02    
       STA    $C0     
       BNE    LF93A   
LF934: STY    $C0     
       LDY    #$00    
       STY    $BF     
LF93A: LDX    LF1A8,Y 
       TXS            
       LDA.wy $00B7,Y 
       AND    #$F0    
       BNE    LF956   
       LDA    $BF     
       AND    #$01    
       BEQ    LF954   
       LDA.wy $00B6,Y 
       BEQ    LF954   
       LDA    #$00    
       BEQ    LF956   
LF954: LDA    #$A0    
LF956: LSR            
       CLC            
       ADC    #$07    
       TAX            
       LDA.wy $00B7,Y 
       AND    #$0F    
       BNE    LF977   
       LDA    $BF     
       AND    #$01    
       EOR    #$01    
       BEQ    LF977   
       LDA.wy $00B7,Y 
       AND    #$F0    
       BEQ    LF975   
       LDA    #$00    
       BEQ    LF977   
LF975: LDA    #$0A    
LF977: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$07    
       TAY            
       LDA    #$08    
       STA    $BE     
LF982: LDA    LF018,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    LF018,X 
       PHA            
       DEX            
       DEY            
       DEC    $BE     
       BNE    LF982   
       INC    $BF     
       LDY    $BF     
       CPY    $C0     
       BNE    LF93A   
       LDX    #$FF    
       TXS            
       LDA    $B6     
       CMP    #$80    
       BNE    LF9AF   
       LDA    $DB     
       BEQ    LF9AF   
       LDA    $F9     
       SBC    #$20    
       JMP    LF9B6   
LF9AF: LDA    $B5     
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
LF9B6: STA    $F9     
       LDA    $B6     
       BMI    LF9D3   
       CMP    #$01    
       BNE    LF9D0   
       LDA    $C5     
       CMP    #$5D    
       BCS    LFA0C   
       JSR    LFFA8   
       LDA    #$05    
       STA    $E4     
LF9CD: JMP    LFEAF   
LF9D0: JMP    LFAA0   
LF9D3: CMP    #$81    
       BEQ    LF9CD   
       LDX    $C5     
       CPX    #$04    
       BEQ    LF9E0   
       JMP    LFAC8   
LF9E0: LDX    #$00    
       JSR    LFF79   
       LDX    #$07    
       LDA    $BD     
       LSR            
       BCC    LF9F1   
       LSR            
       CLC            
       ADC    #$07    
       TAX            
LF9F1: STX    $E4     
       JSR    LFFB2   
       LDA    #$10    
       JSR    LFF5D   
       JSR    LFF9C   
       BEQ    LFA03   
       JMP    LFEAF   
LFA03: LDA    $FB     
       BNE    LFA0C   
       STA    $B6     
       JMP    LFA96   
LFA0C: LDA    $FA     
       BNE    LFA41   
       LDX    $B0     
       DEC    $C8,X   
       TXA            
       EOR    #$01    
       TAY            
       LDA.wy $00C8,Y 
       BNE    LFA23   
       LDA    $C8,X   
       BEQ    LFA41   
       LDY    $B0     
LFA23: STY    $B0     
       LDA    $B5     
       STA    $B3,X   
       LDA.wy $00B3,Y 
       STA    $B5     
       LDA    #$45    
       STA    $CD     
       STA    $CE     
       JSR    LFF8E   
       JSR    LFF73   
       LDA    #$00    
       STA    $B6     
       JMP    LFEE6   
LFA41: LDX    #$00    
       JSR    LFF79   
       STX    $F5     
       INX            
       STX    $ED     
       LDA    #$81    
       STA    $B6     
       INX            
       LDA    $FA     
       BEQ    LFA60   
       LDA    #$00    
       STA    $FA     
       STA    $ED     
       STA    $C8     
       STA    $C9     
       BEQ    LFA7A   
LFA60: LDA    $B7,X   
       CMP    $BB     
       BCC    LFA76   
       BNE    LFA6E   
       LDA    $B8,X   
       CMP    $BC     
       BCC    LFA76   
LFA6E: LDA    $B7,X   
       STA    $BB     
       LDA    $B8,X   
       STA    $BC     
LFA76: DEX            
       DEX            
       BPL    LFA60   
LFA7A: LDA    #$02    
       STA    $B0     
       LDA    #$F4    
       STA    $D7     
       LDA    #$EF    
       STA    $D6     
       LDA    #$F6    
       STA    $D9     
       LDA    #$01    
       STA    $D8     
       LDA    #$10    
       STA    $F0     
       LDA    #$80    
       STA    $B1     
LFA96: LDA    #$50    
       STA    $BD     
       JSR    LFF73   
       JMP    LFEAF   
LFAA0: LDA    $C5     
       AND    #$04    
       BNE    LFAC8   
       LDA    $B6     
       AND    #$7E    
       BEQ    LFAC8   
       SEC            
       SBC    #$02    
       STA    $B6     
       LDA    #$01    
       JSR    LFF9E   
       BNE    LFABC   
       LDA    #$99    
       STA    $BD     
LFABC: LDA    $C3     
       AND    #$07    
       STA    $E4     
       JSR    LFFA8   
       JMP    LFEAF   
LFAC8: LDX    $B0     
       CPX    #$02    
       BNE    LFAD0   
       LDX    #$00    
LFAD0: LDA    INPT4,X 
       BPL    LFAD8   
       LDA    #$00    
       STA    $ED     
LFAD8: LDA    SWCHB   
       AND    #$02    
       BEQ    LFAE5   
       LDA    #$00    
       STA    $F2     
       BEQ    LFB0E   
LFAE5: LDX    $F2     
       BEQ    LFAEF   
       CPX    #$30    
       BCC    LFAF7   
       LDX    #$13    
LFAEF: INC    $C7     
       LDA    $C7     
       AND    #$07    
       STA    $C7     
LFAF7: INX            
       STX    $F2     
       LDA    #$02    
       STA    $B0     
       JSR    LFF73   
       STX    $DB     
       LDA    #$F5    
       STA    $D7     
       LDA    #$B7    
       STA    $D6     
       JMP    LFEAF   
LFB0E: LDA    SWCHB   
       LSR            
       BCC    LFB26   
       LDA    INPT4   
       BMI    LFB64   
       LDA    $FA     
       BNE    LFB26   
       LDA    $B0     
       CMP    #$02    
       BNE    LFB64   
       LDA    $ED     
       BNE    LFB85   
LFB26: LDA    #$00    
       STA    $FA     
LFB2A: JSR    LFF73   
       STX    $B0     
       STX    $B3     
       STX    $B4     
       STX    $B5     
       STX    $B2     
       STX    $B1     
       STX    $B6     
       STX    $B7     
       STX    $B8     
       STX    $B9     
       STX    $BA     
       LDX    #$03    
       STX    $C8     
       LDA    $C7     
       LSR            
       BCS    LFB4E   
       LDX    #$00    
LFB4E: STX    $C9     
       LDA    #$45    
       STA    $CE     
       STA    $CD     
       LDA    #$20    
       STA    $D6     
       LDA    #$F6    
       STA    $D7     
       LDA    $FA     
       BNE    LFB72   
       BEQ    LFB80   
LFB64: LDX    $B0     
       LDA    INPT4,X 
       BMI    LFB85   
       LDA    $C6     
       ORA    $ED     
       ORA    $B6     
       BNE    LFB85   
LFB72: LDA    #$01    
       STA    $C6     
       LSR            
       STA    $F2     
       ROR            
       STA    $F6     
       LDA    #$7D    
       STA    $B2     
LFB80: JSR    LFF8E   
       BNE    LFBB1   
LFB85: LDA    $C7     
       LSR            
       BCC    LFB8E   
       LDA    $B2     
       BNE    LFB99   
LFB8E: LDX    #$06    
       LDA    $B0     
       BEQ    LFB9B   
       LDX    #$0C    
       LSR            
       BCS    LFB9B   
LFB99: LDX    #$00    
LFB9B: STX    $C2     
       LDA    LF199,X 
       STA    $CA     
       LDA    LF19A,X 
       STA    $CB     
       LDA    $F2     
       BNE    LFBB1   
       LDA    $B0     
       CMP    #$02    
       BNE    LFBB4   
LFBB1: JMP    LFEAF   
LFBB4: LDA    $FA     
       BEQ    LFBCE   
       LDA    $C5     
       AND    #$0F    
       BNE    LFBC4   
       JSR    LFEF2   
       JMP    LFBD8   
LFBC4: LDA    #$FF    
       LDX    $B2     
       BEQ    LFBD9   
       LDA    #$EE    
       BNE    LFBD9   
LFBCE: LDA    SWCHA   
       LDX    $B0     
       BEQ    LFBD9   
       ASL            
       ASL            
       ASL            
LFBD8: ASL            
LFBD9: TAX            
       BMI    LFBE1   
       ASL            
       LDX    #$08    
       BNE    LFBE6   
LFBE1: ASL            
       BMI    LFC25   
       LDX    #$00    
LFBE6: CPX    $CC     
       BEQ    LFC25   
       PHA            
       LDA    $CD     
       LSR            
       LSR            
       LSR            
       ASL            
       CPX    #$08    
       BNE    LFBF7   
       ADC    #$00    
LFBF7: STX    $BE     
       STA    $C0     
       JSR    LFF31   
       LDA    $CD     
       AND    #$07    
       CMP    #$03    
       BCC    LFC0E   
       CPX    #$0E    
       BEQ    LFC20   
       CMP    #$04    
       BCS    LFC1A   
LFC0E: LDA    $C0     
       SEC            
       SBC    #$02    
       JSR    LFF31   
       CPX    #$0E    
       BEQ    LFC20   
LFC1A: LDX    $BE     
       STX    $CC     
       BPL    LFC24   
LFC20: LDA    #$00    
       STA    $CE     
LFC24: PLA            
LFC25: ASL            
       STA    $BF     
       BMI    LFC37   
       CLC            
       LDA    $CD     
       ADC    #$FD    
       CMP    #$09    
       BCS    LFC49   
       LDA    #$09    
       BNE    LFC49   
LFC37: ASL            
       BPL    LFC3E   
       LDA    $CD     
       BNE    LFC76   
LFC3E: CLC            
       LDA    $CD     
       ADC    #$03    
       CMP    #$7F    
       BCC    LFC49   
       LDA    #$7F    
LFC49: STA    $BE     
       LSR            
       LSR            
       LSR            
       ASL            
       LDX    $CC     
       BEQ    LFC56   
       CLC            
       ADC    #$01    
LFC56: LDX    $BF     
       BMI    LFC5D   
       SEC            
       SBC    #$02    
LFC5D: JSR    LFF31   
       CPX    #$0E    
       BNE    LFC74   
       LDA    $BE     
       AND    #$F8    
       LDX    $BF     
       BMI    LFC70   
       ORA    #$04    
       BNE    LFC7C   
LFC70: ORA    #$02    
       BNE    LFC7C   
LFC74: LDA    $BE     
LFC76: LDY    #$00    
       CMP    $CE     
       BEQ    LFC8F   
LFC7C: LDX    $DC     
       BMI    LFC91   
       LDX    #$0C    
       STX    AUDC0   
       TAX            
       LSR            
       LSR            
       LSR            
       EOR    #$1F    
       STA    AUDF0   
       TXA            
       LDY    #$07    
LFC8F: STY    $DC     
LFC91: STA    $CD     
       STA    $CE     
       LDA    $C6     
       BNE    LFC9C   
       JMP    LFD47   
LFC9C: LDA    $B2     
       BEQ    LFCB5   
       AND    #$0F    
       ADC    #$05    
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $C3     
       AND    #$0F    
       ADC    #$04    
       STA    AUDF1   
       JMP    LFEE6   
LFCB5: LDX    $F6     
       BMI    LFCDC   
       LDA    $C4     
       LSR            
       BCS    LFCCB   
       LDA    $F6     
       LDX    $F7     
       JSR    LFF40   
       LDA    #$80    
       STA    $F6     
       BNE    LFD06   
LFCCB: LDX    $F7     
       LDA    $C5     
       AND    #$02    
       BNE    LFCD4   
       TAX            
LFCD4: LDA    $F6     
       JSR    LFF40   
       JMP    LFD06   
LFCDC: LDA    $C7     
       LDX    $FA     
       BEQ    LFCE6   
       LDA    #$07    
       BNE    LFCEA   
LFCE6: CMP    #$02    
       BCC    LFD06   
LFCEA: LSR            
       TAX            
       LDA    $C5     
       AND    LF1BE,X 
       BNE    LFD06   
       LDA    $C3     
       AND    #$1F    
       STA    $BE     
       JSR    LFF31   
       CPX    #$04    
       BCC    LFD06   
       STX    $F7     
       LDA    $BE     
       STA    $F6     
LFD06: LDA    $C7     
       LDX    $FA     
       BEQ    LFD0E   
       LDA    #$07    
LFD0E: CLC            
       ADC    $C4     
       LSR            
       CMP    #$08    
       BCC    LFD18   
       LDA    #$07    
LFD18: TAX            
       LDA    LF1BE,X 
       AND    $C5     
       BNE    LFD47   
       LDA    $C3     
       AND    #$03    
       STA    $C0     
       JSR    LFEF2   
       LSR            
       AND    #$1F    
       STA    $BF     
       CMP    $F6     
       BEQ    LFD47   
       JSR    LFF31   
       BEQ    LFD47   
       TXA            
       CLC            
       ADC    $C0     
       CMP    #$0E    
       BCC    LFD41   
       LDA    #$0E    
LFD41: TAX            
       LDA    $BF     
       JSR    LFF40   
LFD47: LDA    $EE     
       BEQ    LFDAE   
       BPL    LFD4F   
       LDA    #$00    
LFD4F: JSR    LFFB2   
       TAX            
       LDA    $C3     
       AND    #$07    
       STA    $E4     
       TXA            
       ASL            
       LDX    $CF     
       CPX    #$8C    
       BCC    LFD63   
       ADC    #$00    
LFD63: STA    $C0     
       JSR    LFF31   
       STX    $BF     
       DEX            
       LDA    $C0     
       JSR    LFF40   
       JSR    LFF5B   
       LDA    $C0     
       JSR    LFFBF   
       LDA    $C0     
       CLC            
       ADC    #$02    
       CMP    #$20    
       BCS    LFDC1   
       STA    $C0     
       JSR    LFF31   
       CPX    $BF     
       BNE    LFDC1   
       LDA    $D2     
       AND    #$07    
       CMP    #$01    
       BNE    LFDC1   
       LDA    $D2     
       LSR            
       LSR            
       LSR            
       CMP    $EE     
       BEQ    LFDC1   
       DEX            
       LDA    $C0     
       JSR    LFF40   
       JSR    LFF5B   
       LDA    $C0     
       JSR    LFFBF   
       JSR    LFFA8   
       BNE    LFDC1   
LFDAE: CLC            
       LDA    $CF     
       ADC    $D4     
       CMP    #$58    
       BCC    LFDC1   
       CMP    #$C8    
       BCS    LFDC1   
       LDX    $D4     
       BNE    LFDC9   
       BEQ    LFDC7   
LFDC1: LDA    #$00    
       STA    $EE     
       STA    $D4     
LFDC7: LDA    #$8F    
LFDC9: STA    $CF     
       JSR    LFF10   
       STA    $D1     
       TXA            
       SEC            
       SBC    #$02    
       STA    $D0     
       LDA    $FA     
       BNE    LFDE7   
       LDA    $C6     
       BNE    LFDE1   
       JMP    LFE7B   
LFDE1: LDX    $B0     
       LDA    INPT4,X 
       BMI    LFE2A   
LFDE7: LDA    $D4     
       ORA    $ED     
       ORA    $DF     
       BNE    LFE2A   
       LDX    #$8E    
       LDA    $CC     
       BNE    LFDF7   
       LDX    #$8F    
LFDF7: STX    $CF     
       LDA    #$14    
       STA    $DF     
       LDA    #$F1    
       STA    $DE     
       LDA    #$72    
       STA    $DD     
       LDX    $CD     
       DEX            
       DEX            
       STX    $D2     
       LDA    $C7     
       LDX    $FA     
       BEQ    LFE13   
       LDA    #$07    
LFE13: LSR            
       CLC            
       ADC    #$02    
       CMP    #$03    
       BCS    LFE1F   
       LDA    #$03    
       BCC    LFE1F   
LFE1F: LDX    $CC     
       BNE    LFE28   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LFE28: STA    $D4     
LFE2A: LDA    $B6     
       BNE    LFE7B   
       LDA    #$00    
       STA    $FB     
       LDX    #$10    
LFE34: LDA    $9F,X   
       BEQ    LFE80   
       CMP    #$E0    
       BEQ    LFE7E   
       CMP    #$0E    
       BEQ    LFE7E   
       CMP    #$EE    
       BEQ    LFE7E   
       LDA    $C5     
       AND    #$3F    
       STA    $BF     
       CMP    #$03    
       BCC    LFE56   
       BNE    LFE7B   
       LDA    #$00    
       STA    $DC     
       BEQ    LFE7B   
LFE56: LDA    #$04    
       STA    AUDC0   
       LDX    #$07    
       LDY    #$8F    
       LDA    $C5     
       AND    #$40    
       BEQ    LFE68   
       LDX    #$09    
       LDY    #$87    
LFE68: STX    AUDF0   
       STY    $DC     
       LDA    $BF     
       BNE    LFE7B   
       JSR    LFF9C   
       BNE    LFE7B   
       INC    $FB     
       LDA    #$01    
       BNE    LFE89   
LFE7B: JMP    LFEAF   
LFE7E: INC    $FB     
LFE80: DEX            
       BNE    LFE34   
       LDA    $F6     
       BPL    LFE7B   
       LDA    #$80    
LFE89: STA    $B6     
       LDA    #$8F    
       STA    $CF     
       LDX    #$00    
       JSR    LFF79   
       LDA    $FB     
       BNE    LFEA3   
       JSR    LFF92   
       LDA    $C7     
       CMP    #$02    
       BCC    LFEA3   
       INC    $B5     
LFEA3: LDA    #$01    
       STA    $ED     
       LDA    $BD     
       CMP    #$50    
       BCC    LFEAF   
       INC    $DB     
LFEAF: LDA    $DC     
       STA    AUDV0   
       LDA    $E0     
       BNE    LFEE0   
       LDA    $DF     
       BNE    LFEBF   
       STA    $E4     
       BEQ    LFEDC   
LFEBF: LDY    $DF     
       LDA    ($DD),Y 
       CLC            
       ADC    $E4     
       STA    AUDF1   
       DEY            
       LDA    ($DD),Y 
       STA    $E0     
       DEY            
       LDA    ($DD),Y 
       STA    AUDC1   
       DEY            
       LDA    ($DD),Y 
       STA    $E2     
       DEY            
       STY    $DF     
       BPL    LFEE2   
LFEDC: LDA    #$00    
       BEQ    LFEE4   
LFEE0: DEC    $E0     
LFEE2: LDA    $E2     
LFEE4: STA    AUDV1   
LFEE6: LDY    INTIM   
       BNE    LFEE6   
       STA    WSYNC   
       STY    VBLANK  
       JMP    LF278   
LFEF2: LDA    $C3     
       AND    #$7F    
       CMP    #$7F    
       BNE    LFEFD   
       LDA    SWCHA   
LFEFD: STA    $BE     
       LSR    $BE     
       LDA    #$00    
       ROL            
       EOR    $BE     
       LSR            
       LDA    $BE     
       BCS    LFF0D   
       ORA    #$40    
LFF0D: STA    $C3     
       RTS            

LFF10: TAY            
       AND    #$0F    
       STA    $BE     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       CLC            
       ADC    $BE     
       CMP    #$0F    
       BCC    LFF25   
       SBC    #$0F    
       INX            
LFF25: TAY            
       LDA    LF0DC,Y 
       CMP    #$70    
       BNE    LFF30   
       DEX            
       LDA    #$80    
LFF30: RTS            

LFF31: LSR            
       TAY            
       LDA.wy $00A0,Y 
       BCS    LFF3C   
       LSR            
       LSR            
       LSR            
       LSR            
LFF3C: AND    #$0F    
       TAX            
       RTS            

LFF40: LSR            
       TAY            
       TXA            
       BCS    LFF4D   
       ASL            
       ASL            
       ASL            
       ASL            
       LDX    #$0F    
       BNE    LFF4F   
LFF4D: LDX    #$F0    
LFF4F: STA    $BE     
       TXA            
       AND.wy $00A0,Y 
       ORA    $BE     
       STA.wy $00A0,Y 
       RTS            

LFF5B: LDA    #$01    
LFF5D: STA    $BE     
       LDA    $B0     
       ASL            
       TAX            
       LDA    $B8,X   
       SED            
       CLC            
       ADC    $BE     
       STA    $B8,X   
       LDA    $B7,X   
       ADC    #$00    
       STA    $B7,X   
       CLD            
       RTS            

LFF73: LDX    #$00    
       STX    $CC     
       STX    $DB     
LFF79: STX    $C6     
       STX    $C4     
       STX    $C5     
       STX    $DC     
       STX    $E2     
       STX    $E0     
       STX    $DF     
       STX    $EE     
       STX    $D2     
       STX    $D4     
       RTS            

LFF8E: LDA    #$50    
       STA    $BD     
LFF92: LDX    #$0F    
       LDA    #$22    
LFF96: STA    $A0,X   
       DEX            
       BPL    LFF96   
       RTS            

LFF9C: LDA    #$99    
LFF9E: CLC            
       SED            
       ADC    $BD     
       STA    $BD     
       CLD            
       CMP    #$00    
       RTS            

LFFA8: LDX    #$B9    
       STX    $DD     
       LDX    #$F1    
       LDY    #$04    
       BNE    LFFBA   
LFFB2: LDX    #$AD    
       STX    $DD     
       LDX    #$F1    
       LDY    #$0C    
LFFBA: STX    $DE     
       STY    $DF     
       RTS            

LFFBF: CMP    $F6     
       BNE    LFFF4   
       LDA    $F7     
       ASL            
       STA    $B6     
       LDX    #$00    
       STX    $C1     
       LDA    $F6     
       JSR    LFF40   
       LDA    #$80    
       STA    $F6     
       LDA    $F7     
       LSR            
       ROR    $C1     
       LSR            
       ROR    $C1     
       STA    $F7     
       LDA    $C5     
       SEC            
       SBC    $C1     
       STA    $C5     
       LDA    $C4     
       SBC    $F7     
       STA    $C4     
       BPL    LFFF4   
       LDA    #$00    
       STA    $C4     
       STA    $C5     
LFFF4: RTS            

LFFF5: .byte $04,$97,$0C,$46,$D3,$39,$57,$53,$F2,$AB,$81
