; Disassembly of roms/PizzaChef.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/PizzaChef.bin
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
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INTIM   =  $0284

       ORG $F000
LF000: LDA    #$00    
       LDX    #$0F    
       STA    NUSIZ0  
       LDA    $87     
       ROR            
       BCS    LF01A   
LF00B: LDA    LFEB3,X 
       STA    $EC,X   
       LDA    LFCFC,X 
       STA    $D9,X   
       DEX            
       BPL    LF00B   
       BMI    LF027   
LF01A: LDA    LFEC3,X 
       STA    $EC,X   
       LDA    LFCEC,X 
       STA    $D9,X   
       DEX            
       BPL    LF01A   
LF027: STA    WSYNC   
       LDA    $91     
       SEC            
LF02C: SBC    #$0F    
       BPL    LF02C   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP1    
       LDY    $94     
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFED3,Y 
       STA    COLUBK  
       LDY    $87     
       LDA    $93     
       AND    #$07    
       BNE    LF053   
       TYA            
       EOR    #$10    
       STA    $87     
       TAY            
LF053: TYA            
       LSR            
       STA    REFP1   
       TYA            
       ROR            
       BCS    LF06A   
       ROL            
       BMI    LF06A   
       LDA    #$E7    
       STA    $DA     
       LDA    #$24    
       STA    $DB     
       LDA    #$00    
       STA    $DC     
LF06A: LDA    #$06    
       LDY    $94     
       CPY    #$03    
       BNE    LF075   
       CLC            
       ADC    #$03    
LF075: STA    $D8     
       LDA    $90     
       ROL            
       STA    $9F     
       LDX    $92     
       LDA    #$01    
       STA    CTRLPF  
       JMP    LF092   
LF085: .byte $A9,$00,$85,$0E,$85,$26,$C6,$D8,$10,$03,$4C,$91,$F3
LF092: DEX            
       CPX    #$10    
       LDY    #$00    
       BCS    LF09D   
       LDY    $D9,X   
       LDA    $EC,X   
LF09D: STA    WSYNC   
       STA    COLUP1  
       STY    GRP1    
       LDA    #$00    
       STA    GRP0    
       LDY    $D8     
       STY    PF0     
       BIT    $87     
       BVS    LF0C1   
       LDA.wy $00A7,Y 
       STA    $D0     
       LDA.wy $00A0,Y 
       STA    $D2     
       LDA.wy $00AE,Y 
       STA    $9E     
       JMP    LF0D0   
LF0C1: LDA.wy $00BC,Y 
       STA    $D0     
       LDA.wy $00B5,Y 
       STA    $D2     
       LDA.wy $00C3,Y 
       STA    $9E     
LF0D0: JSR    LFBD7   
       STA    WSYNC   
       STY    GRP1    
       STA    COLUP1  
       LDA    $9E     
       SEC            
LF0DC: SBC    #$0F    
       BPL    LF0DC   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0    
       STA    RESP0   
       STA    WSYNC   
       DEX            
       CPX    #$10    
       BCS    LF0FB   
       LDA    $EC,X   
       STA    COLUP1  
       LDA    $D9,X   
       STA    GRP1    
       BCC    LF100   
LF0FB: LDA    ($80),Y 
       JSR    LFE5D   
LF100: LDA    #$80    
       STA.w  $0021   
       LDY    #$08    
LF107: DEY            
       BNE    LF107   
       STA    HMOVE   
       DEX            
       CPX    #$10    
       BCS    LF119   
       LDA    $D9,X   
       STA    GRP1    
       LDA    $EC,X   
       STA    COLUP1  
LF119: LDA    #$08    
       ROL    $9F     
       BCC    LF120   
       ROR            
LF120: STA    REFP0   
       LDY    $94     
       LDA    LFFB6,Y 
       STA    $9D     
       LDA    LFFBB,Y 
       STA    $9E     
       DEX            
       CPX    #$10    
       STA    WSYNC   
       BCS    LF13D   
       LDA    $D9,X   
       STA    GRP1    
       LDA    $EC,X   
       STA    COLUP1  
LF13D: JMP.ind ($009D)
LF140: .byte $A0,$11,$A5,$D8,$C9,$06,$B0,$07,$C9,$01,$90,$09,$4C,$70,$F1,$A9
       .byte $93,$A0,$43,$10,$04,$A9,$F3,$A0,$C3,$85,$9D,$84,$9E,$20,$D7,$FB
       .byte $85,$02,$84,$1C,$85,$07,$A9,$28,$85,$08,$A9,$F1,$85,$0D,$30,$0B
       .byte $20,$D7,$FB,$85,$02,$85,$07,$84,$1C,$A9,$01,$85,$26,$A9,$00,$85
       .byte $1B,$A0,$0F,$CA,$E0,$10,$B0,$06,$B5,$D9,$85,$1C,$B5,$EC,$85,$02
       .byte $85,$07,$B1,$D2,$85,$1B,$A5,$9D,$85,$08,$B1,$D0,$85,$06,$A5,$9E
       .byte $85,$08,$88,$10,$DE,$A9,$00,$85,$0D,$4C,$E0,$F2,$A4,$D8,$A9,$00
       .byte $C0,$06,$90,$02,$A9,$F0,$85,$9D,$A9,$28,$85,$08,$20,$D7,$FB,$85
       .byte $02,$84,$1C,$85,$07,$A5,$87,$2A,$30,$20,$A9,$09,$85,$9E,$20,$D7
       .byte $FB,$85,$02,$84,$1C,$85,$07,$A9,$00,$85,$0D,$20,$5D,$FE,$A5,$9D
       .byte $85,$0D,$C6,$9E,$10,$E8,$A0,$05,$10,$02,$A0,$0F,$CA,$E0,$10,$85
       .byte $02,$B0,$08,$B5,$D9,$85,$1C,$B5,$EC,$85,$07,$A9,$01,$85,$0D,$4A
       .byte $85,$1B,$2A,$85,$26,$20,$5D,$FE,$A5,$9D,$85,$0D,$CA,$E0,$10,$B0
       .byte $06,$B5,$D9,$85,$1C,$B5,$EC,$85,$02,$85,$07,$B1,$D2,$85,$1B,$A9
       .byte $00,$85,$0D,$B1,$D0,$85,$06,$A5,$9D,$85,$0D,$88,$10,$DE,$4C,$85
       .byte $F0,$A9,$28,$85,$08,$A9,$00,$A4,$D8,$C0,$01,$B0,$02,$A9,$F0,$85
       .byte $9D,$20,$D7,$FB,$85,$02,$84,$1C,$85,$07,$A0,$00,$A5,$87,$2A,$10
       .byte $02,$A0,$07,$84,$04,$4C,$CA,$F1,$A4,$D8,$C0,$06,$90,$1A,$A9,$48
       .byte $85,$9D,$20,$D7,$FB,$85,$02,$85,$07,$84,$1C,$C6,$9D,$10,$F3,$A9
       .byte $84,$85,$06,$4C,$85,$F0,$85,$1B,$A9,$07,$45,$D8,$85,$9D,$A0,$0A
       .byte $CA,$E0,$10,$B0,$0D,$85,$02,$B5,$D9,$85,$1C,$B5,$EC,$85,$07,$4C
       .byte $9A,$F2,$85,$02,$20,$5D,$FE,$18,$A5,$9E,$A9,$43,$85,$09,$A5,$9D
       .byte $E9,$01,$D0,$FC,$A9,$C3,$85,$09,$88,$10,$D5,$85,$02,$20,$D7,$FB
       .byte $85,$07,$84,$1C,$A5,$D8,$C9,$03,$A9,$00,$B0,$02,$A9,$DB,$C6,$D8
       .byte $10,$B4,$A9,$43,$85,$02,$85,$09,$A9,$00,$85,$1B,$A9,$05,$D0,$10
       .byte $A4,$D8,$C0,$03,$24,$87,$70,$7E,$90,$57,$98,$6A,$90,$14,$A9,$0A
       .byte $85,$9D,$20,$D7,$FB,$85,$02,$84,$1C,$85,$07,$C6,$9D,$10,$F3,$4C
       .byte $85,$F0,$85,$02,$CA,$E0,$10,$B0,$06,$B5,$D9,$85,$1C,$B5,$EC,$A9
       .byte $08,$24,$87,$F0,$06,$A9,$58,$C4,$8C,$F0,$02,$A9,$74,$85,$08,$A9
       .byte $08,$85,$9D,$20,$D7,$FB,$85,$02,$85,$07,$84,$1C,$A4,$9D,$B1,$D2
       .byte $85,$0E,$48,$68,$AD,$82,$00,$C6,$9D,$85,$0E,$10,$E6,$A9,$00,$10
       .byte $AF,$C0,$02,$B0,$A9,$A9,$1A,$85,$9D,$20,$D7,$FB,$85,$02,$85,$07
       .byte $84,$1C,$A9,$2C,$85,$08,$A9,$F0,$85,$0D,$EA,$A9,$00,$C6,$9D,$85
       .byte $0D,$10,$E6,$4C,$91,$F3,$A5,$D0,$85,$08,$20,$D7,$FB,$85,$02,$85
       .byte $07,$84,$1C,$A0,$F0,$A5,$D8,$F0,$04,$C9,$09,$D0,$02,$A0,$00,$84
       .byte $9E,$A9,$09,$85,$9D,$20,$D7,$FB,$85,$02,$85,$07,$84,$1C,$A9,$00
       .byte $85,$0E,$20,$5D,$FE,$A5,$9E,$C6,$9D,$8D,$0E,$01,$10,$E7,$4C,$85
       .byte $F0,$A9,$20,$A0,$00,$84,$04,$84,$0D,$85,$02,$84,$0C,$84,$0B,$84
       .byte $2B,$84,$1B,$84,$1C,$24,$87,$85,$02,$D0,$4D,$A9,$06,$85,$09,$A6
       .byte $8D,$BD,$98,$FF,$85,$F0,$A9,$FD,$85,$F1,$85,$F5,$BD,$9C,$FF,$85
       .byte $F2,$85,$10,$A9,$FE,$85,$F3,$85,$F7,$A6,$8E,$BD,$A0,$FF,$85,$11
       .byte $85,$F4,$BD,$AB,$FF,$85,$F6,$A0,$05,$85,$02,$B1,$F0,$85,$1B,$B1
       .byte $F2,$85,$06,$B1,$F4,$85,$1C,$B1,$F6,$85,$07,$88,$10,$EB,$85,$02
       .byte $C8,$84,$1B,$84,$1C,$4C,$7E,$F4,$A9,$00,$AA,$85,$9E,$A9,$88,$85
       .byte $9F,$85,$02,$8A,$86,$1B,$A5,$9E,$85,$09,$A5,$9F,$85,$06,$85,$07
       .byte $A9,$13,$85,$04,$EA,$85,$21,$85,$10,$85,$11,$85,$05,$85,$25,$85
       .byte $26,$85,$02,$85,$2A,$A2,$07,$86,$9E,$A5,$D4,$29,$0F,$C9,$08,$90
       .byte $01,$8A,$AA,$BC,$39,$FF,$86,$9D,$85,$02,$BD,$41,$FF,$85,$9F,$BD
       .byte $D8,$FE,$85,$1B,$BD,$15,$FF,$85,$1C,$BD,$1D,$FF,$85,$1B,$BD,$31
       .byte $FF,$A6,$9F,$85,$1C,$84,$1B,$86,$1C,$85,$1B,$A6,$9D,$CA,$10,$02
       .byte $A2,$07,$C6,$9E,$10,$CD,$A5,$93,$29,$07,$D0,$08,$C6,$D4,$10,$04
       .byte $A9,$0F,$85,$D4,$A9,$00,$85,$25,$85,$26,$85,$1B,$85,$1C,$A9,$20
       .byte $8D,$96,$02,$E6,$98,$30,$04,$A9,$00,$85,$98,$C6,$93,$10,$17,$A9
       .byte $20,$24,$87,$D0,$11,$A5,$97,$F0,$02,$C6,$97,$A9,$3F,$85,$93,$A9
       .byte $01,$85,$9D,$20,$7A,$FB,$D8,$AD,$84,$02,$D0,$FA,$A0,$02,$84,$02
       .byte $84,$01,$84,$00,$84,$02,$84,$02,$84,$02,$85,$00,$A9,$27,$8D,$96
       .byte $02,$AD,$80,$02,$49,$FF,$29,$F0,$85,$D6,$F0,$07,$A9,$80,$05,$87
       .byte $4C,$D7,$F4,$A9,$7F,$25,$87,$85,$87,$AD,$82,$02,$85,$86,$6A,$90
       .byte $5B,$6A,$B0,$03,$4C,$74,$F5,$A9,$20,$24,$87,$F0,$08,$A9,$7F,$25
       .byte $87,$85,$87,$D0,$7C,$A5,$87,$6A,$90,$03,$4C,$A8,$F5,$A9,$00,$85
       .byte $98,$A5,$33,$10,$07,$20,$89,$FC,$09,$80,$85,$96,$A5,$37,$10,$07
       .byte $20,$89,$FC,$09,$80,$85,$95,$A5,$94,$C9,$05,$B0,$54,$A9,$00,$A4
       .byte $95,$30,$09,$A4,$96,$30,$03,$4C,$B5,$F5,$69,$05,$65,$94,$AA,$BD
       .byte $C0,$FF,$85,$9D,$BD,$C9,$FF,$85,$9E,$6C,$9D,$00,$A5,$98,$D0,$31
       .byte $85,$15,$85,$16,$85,$81,$85,$83,$85,$8E,$85,$8D,$85,$97,$85,$9C
       .byte $85,$94,$85,$9A,$20,$B3,$FB,$A9,$04,$85,$87,$45,$D5,$85,$D5,$A5
       .byte $80,$0A,$0A,$65,$80,$A8,$A2,$04,$B9,$B1,$FD,$95,$CB,$C8,$CA,$10
       .byte $F7,$4C,$A7,$F7,$A5,$98,$D0,$2E,$E6,$80,$A5,$80,$C9,$1A,$90,$04
       .byte $A9,$01,$85,$80,$78,$D8,$A4,$D5,$A2,$87,$20,$DC,$FF,$84,$D5,$85
       .byte $83,$A9,$DF,$85,$98,$A9,$BF,$25,$81,$85,$81
LF59B: JSR    LFBB3   
       LDA    #$64    
       STA    $87     
       LDA    #$0F    
       STA    $D4     
       BNE    LF5B2   
       LDA    $97     
       BNE    LF5B2   
       LDA    #$FE    
       AND    $87     
       STA    $87     
LF5B2: JMP    LF7A7   
LF5B5: .byte $A9,$04,$C5,$94,$F0,$02,$D0,$F5,$A5,$D6,$29,$C0,$85,$D6,$A0,$05
       .byte $A5,$91,$D9,$B2,$FC,$90,$02,$B0,$2B,$D9,$B8,$FC,$90,$09,$F0,$3C
       .byte $98,$AA,$20,$E4,$FB,$D0,$1D,$D9,$BE,$FC,$90,$11,$98,$18,$69,$06
       .byte $AA,$A5,$91,$D9,$C4,$FC,$F0,$28,$20,$E4,$FB,$D0,$07,$88,$10,$D2
       .byte $C9,$00,$F0,$03,$4C,$A7,$F7,$A9,$BF,$25,$D6,$85,$D6,$A5,$8E,$D0
       .byte $F3,$A9,$78,$85,$91,$A9,$9A,$85,$92,$4C,$08,$F7,$E6,$91,$10,$05
       .byte $20,$ED,$FB,$10,$00,$A9,$02,$85,$97,$4A,$05,$87,$85,$87,$A9,$07
       .byte $85,$81,$A9,$40,$85,$85,$A9,$0A,$85,$9D,$20,$7A,$FB,$D0,$C5,$A5
       .byte $92,$69,$0F,$85,$92,$A5,$91,$E9,$0C,$85,$91,$24,$86,$70,$04,$A9
       .byte $00,$85,$8E,$A9,$01,$05,$87,$85,$87,$A9,$07,$85,$81,$A9,$40,$85
       .byte $85,$A9,$02,$85,$97,$D0,$5B,$24,$87,$70,$06,$A6,$3C,$10,$0C,$30
       .byte $51,$24,$86,$70,$DE,$A9,$00,$85,$8D,$F0,$D8,$A5,$95,$A0,$03,$29
       .byte $0F,$AA,$B5,$A0,$D9,$98,$FF,$F0,$03,$88,$D0,$F8,$84,$8D,$A9,$58
       .byte $95,$A0,$D0,$2E,$24,$87,$70,$A7,$A5,$3C,$10,$02,$30,$24,$A0,$0A
       .byte $A5,$95,$29,$0F,$AA,$B5,$A0,$D9,$A0,$FF,$F0,$03,$88,$D0,$F8,$88
       .byte $B9,$E2,$FC,$C5,$8D,$F0,$02,$D0,$09,$C8,$84,$8F,$84,$8E,$A9,$58
       .byte $95,$A0,$4C,$A7,$F7,$A5,$D6,$29,$40,$85,$D6,$A5,$3C,$10,$02,$30
       .byte $F1,$A9,$00,$85,$8E,$F0,$EB,$A5,$96,$29,$0F,$C9,$03,$B0,$10,$A5
       .byte $91,$C9,$50,$B0,$04,$E6,$94,$D0,$2E,$A9,$04,$85,$94,$D0,$28,$A5
       .byte $91,$C9,$50,$B0,$06,$A9,$02,$85,$94,$D0,$1C,$A9,$03,$85,$94,$D0
       .byte $16,$A9,$04,$85,$91,$A9,$9A,$85,$92,$D0,$08,$A9,$04,$85,$91,$A9
       .byte $18,$85,$92,$A9,$00,$85,$94,$A9,$04,$05,$87,$85,$87,$D0,$A3,$A5
       .byte $96,$29,$0F,$A8,$A9,$40,$24,$87,$D0,$49,$C0,$03,$90,$3B,$20,$C8
       .byte $FB,$A5,$3C,$30,$7D,$A5,$9C,$C9,$08,$D0,$77,$C4,$8C,$D0,$10,$A9
       .byte $28,$05,$87,$85,$87,$A9,$0F,$85,$D4,$A9,$B2,$85,$81,$D0,$63,$C6
       .byte $9C,$A6,$8F,$CA,$E0,$05,$B0,$04,$F6,$CB,$B0,$56,$8A,$E9,$05,$AA
       .byte $18,$B5,$CB,$69,$10,$95,$CB,$D0,$49,$A9,$78,$85,$91,$A9,$18,$85
       .byte $92,$D0,$A0,$20,$C8,$FB,$A5,$3C,$30,$38,$88,$C4,$9C,$90,$33,$A6
       .byte $8E,$F0,$2F,$CA,$E0,$05,$B0,$0D,$B5,$CB,$29,$0F,$F0,$04,$D6,$CB
       .byte $10,$10,$4C,$DE,$F6,$8A,$E9,$05,$AA,$B5,$CB,$38,$E9,$10,$90,$F2
       .byte $95,$CB,$E6,$9C,$A9,$00,$85,$8E,$A9,$01,$85,$81,$A9,$80,$05,$89
       .byte $85,$89
LF7A7: CLD            
       LDA    $87     
       EOR    #$40    
       STA    $87     
       AND    #$04    
       BEQ    LF7B8   
       JSR    LFF25   
       INX            
       STX    $88     
LF7B8: LDA    #$20    
       BIT    $87     
       BNE    LF7C4   
       LDY    $94     
       CPY    #$05    
       BCC    LF7C7   
LF7C4: JMP    LFA12   
LF7C7: LDA    LFFD2,Y 
       STA    $9D     
       LDA    LFFD7,Y 
       STA    $9E     
       JMP.ind ($009D)
LF7D4: .byte $A9,$04,$24,$87,$F0,$08,$A9,$10,$05,$89,$85,$89,$D0,$09,$A9,$01
       .byte $25,$93,$F0,$03,$20,$E5,$FE,$A5,$87,$09,$40,$85,$87,$A2,$00,$A5
       .byte $93,$3D,$45,$FC,$F0,$04,$A5,$88,$D0,$07,$20,$53,$FE,$85,$EA,$85
       .byte $90,$A5,$88,$DD,$47,$FC,$B0,$3D,$20,$53,$FE,$E9,$07,$B0,$FC,$69
       .byte $07,$A8,$B9,$B5,$00,$C9,$58,$D0,$EF,$BD,$49,$FC,$99,$B5,$00,$BD
       .byte $4B,$FC,$99,$BC,$00,$E6,$88,$A9,$10,$24,$89,$F0,$04,$A9,$4B,$D0
       .byte $0F,$84,$9F,$20,$3C,$FC,$25,$90,$D0,$04,$A9,$02,$D0,$02,$A9,$78
       .byte $99,$C3,$00,$D0,$BC,$A9,$EF,$25,$89,$85,$89,$A5,$87,$29,$FB,$85
       .byte $87,$A5,$93,$6A,$B0,$1B,$A9,$03,$24,$87,$F0,$18,$A9,$01,$24,$87
       .byte $D0,$0F,$A5,$D6,$C5,$EB,$F0,$09,$A9,$FD,$25,$87,$85,$87,$4C,$78
       .byte $F8,$4C,$12,$FA,$A5,$D6,$29,$C0,$F0,$1B,$A4,$91,$24,$D6,$30,$0C
       .byte $88,$88,$C0,$FE,$D0,$06,$A0,$00,$84,$91,$F0,$09,$C8,$C0,$82,$90
       .byte $02,$A0,$81,$84,$91,$A5,$D6,$29,$30,$F0,$D6,$A4,$92,$A9,$20,$24
       .byte $D6,$D0,$0B,$88,$C0,$0F,$B0,$02,$A0,$0F,$84,$92,$D0,$C3,$C8,$C0
       .byte $A2,$90,$02,$A0,$A1,$84,$92,$4C,$12,$FA,$A9,$04,$24,$87,$D0,$1A
       .byte $24,$87,$50,$0C,$A5,$EA,$85,$90,$20,$E5,$FE,$A2,$01,$4C,$F3,$F7
       .byte $A5,$90,$85,$EA,$A9,$00,$85,$90,$F0,$4C,$A0,$03,$A9,$10,$05,$89
       .byte $85,$89,$20,$53,$FE,$29,$07,$C9,$07,$F0,$F7,$AA,$B5,$A0,$C9,$58
       .byte $D0,$F0,$B9,$98,$FF,$95,$A0,$B9,$9C,$FF,$95,$A7,$A5,$D5,$C9,$6E
       .byte $90,$03,$4A,$10,$F9,$95,$AE,$88,$D0,$D8,$A9,$78,$85,$91,$A9,$18
       .byte $85,$92,$D0,$B7,$A9,$04,$24,$87,$D0,$0F,$24,$87,$50,$04,$A9,$07
       .byte $D0,$02,$A9,$05,$85,$D7,$4C,$4F,$F8,$A2,$06,$20,$53,$FE,$29,$1F
       .byte $38,$E9,$0A,$B0,$FC,$69,$0B,$A8,$B9,$A0,$FF,$95,$A0,$B9,$AB,$FF
       .byte $95,$A7,$A5,$D5,$45,$93,$29,$3F,$95,$AE,$CA,$10,$DE,$A2,$06,$A5
       .byte $D5,$29,$1F,$85,$9F,$A9,$35,$65,$9F,$95,$B5,$A9,$AC,$95,$BC,$20
       .byte $53,$FE,$C9,$32,$B0,$01,$0A,$C9,$64,$90,$03,$4A,$10,$F9,$95,$C3
       .byte $CA,$10,$DC,$A9,$78,$85,$91,$A9,$9B,$85,$92,$4C,$4F,$F8,$A9,$04
       .byte $24,$87,$F0,$20,$A9,$2C,$85,$A8,$85,$A6,$85,$A4,$20,$53,$FE,$29
       .byte $03,$0A,$C9,$03,$B0,$02,$A9,$08,$85,$8C,$A9,$04,$85,$91,$A9,$9A
       .byte $85,$92,$D0,$49,$A2,$08,$86,$9E,$E8,$86,$9D,$A5,$9D,$AA,$0A,$65
       .byte $9D,$0A,$A8,$B9,$5E,$FE,$A8,$E0,$05,$B0,$11,$B5,$CB,$29,$0F,$38
       .byte $E9,$01,$90,$1A,$A6,$9E,$94,$BC,$C6,$9E,$B0,$F4,$8A,$E9,$05,$AA
       .byte $B5,$CB,$E9,$10,$90,$08,$A6,$9E,$94,$BC,$C6,$9E,$B0,$F4,$C6,$9D
       .byte $10,$C9,$A6,$9E,$F0,$07,$A9,$33,$95,$BC,$CA,$D0,$FB,$4C,$4F,$F8
       .byte $A9,$04,$24,$87,$D0,$09,$A5,$87,$09,$40,$85,$87,$4C,$4F,$F8,$A9
       .byte $78,$85,$C8,$A9,$01,$85,$91,$A9,$54,$85,$92,$4C,$4F,$F8
LFA12: LDX    #$FF    
       STX    $9E     
       LDX    #$00    
       BIT    $81     
       BPL    LFA48   
       LDA    #$49    
       STA    $9D     
       LDA    $81     
       AND    #$3F    
       BNE    LFA3A   
       LDA    $83     
       BEQ    LFA30   
LFA2A: JSR    LFC31   
       JMP    LFA7F   
LFA30: LDA    #$F2    
       BIT    $81     
       BVC    LFA40   
       STA    $81     
       BEQ    LFA7F   
LFA3A: JSR    LFBF8   
       JMP    LFA7F   
LFA40: LDY    #$00    
       STY    AUDC0   
       STY    $81     
       BEQ    LFA7F   
LFA48: LDA    $87     
       LSR            
       BCC    LFA5F   
       LDA    #$7F    
LFA4F: STA    $9D     
       LDA    $81     
       BNE    LFA3A   
       LDA    $83     
       BNE    LFA2A   
       ASL    $89     
       LSR    $89     
       BEQ    LFA40   
LFA5F: BIT    $87     
       BMI    LFA6D   
       BIT    $89     
       BMI    LFA69   
       BPL    LFA40   
LFA69: LDA    #$57    
       BNE    LFA4F   
LFA6D: LDA    #$7B    
       STA    $9D     
       LDA    $81     
       BNE    LFA3A   
       LDA    $83     
       BNE    LFA2A   
       LDA    #$04    
       STA    $81     
       BNE    LFA3A   
LFA7F: LDA    $80     
       CMP    #$0A    
       BCC    LFA8D   
       ADC    #$05    
       CMP    #$1A    
       BCC    LFA8D   
       ADC    #$05    
LFA8D: STA    $9B     
       LDY    #$03    
LFA91: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $0099,Y 
       AND    #$F0    
       LSR            
       LSR            
       STA    $9D     
       LSR            
       ADC    $9D     
       ADC    #$4D    
       STA    $F0,X   
       LDA.wy $0099,Y 
       AND    #$0F    
       ASL            
       STA    $9D     
       ASL            
       ADC    $9D     
       ADC    #$4D    
       STA    $F2,X   
       LDA    #$FC    
       STA    HMCLR   
       STA    $F1,X   
       STA    $F3,X   
       DEY            
       BPL    LFA91   
       STA    WSYNC   
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    CTRLPF  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    GRP0    
       STA    $95     
       STA    $96     
       STA    CXCLR   
       LDA    #$10    
       STA    HMP1    
       STA    HMBL    
       STA    RESP0   
       STA    RESP1   
       STA    RESBL   
       LDA    $F8     
       CMP    #$4D    
       BNE    LFAEF   
       LDA    #$58    
       STA    $F8     
       INC    $F9     
LFAEF: LDA    #$46    
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       STA    COLUPF  
       STA    COLUP1  
LFAFB: LDA    INTIM   
       BNE    LFAFB   
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$0A    
LFB06: STA    WSYNC   
       DEY            
       BPL    LFB06   
       LDY    #$05    
LFB0D: STA    WSYNC   
       LDA    ($F0),Y 
       STA    GRP0    
       LDA    ($F2),Y 
       STA    GRP1    
       LDA    ($F4),Y 
       STA    GRP0    
       CPY    #$04    
       BEQ    LFB27   
       CPY    #$01    
       BEQ    LFB29   
       LDA    $FA     
       BNE    LFB2D   
LFB27: NOP            
       NOP            
LFB29: LDA    #$02    
       STA    ENABL   
LFB2D: LDA    ($F6),Y 
       STA    GRP1    
       STA    GRP0    
       LDA    #$00    
       STA    ENABL   
       DEY            
       BPL    LFB0D   
       STA    WSYNC   
       LDA    #$04    
       STA    NUSIZ0  
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       CMP    ($80,X) 
       LDY    #$05    
       STA    NUSIZ1  
       STA    RESP0   
       STA    RESP1   
LFB54: STA    WSYNC   
       LDA    ($F8),Y 
       STA    GRP0    
       LDA    ($FA),Y 
       STA    GRP1    
       DEC    $9D     
       DEC    $9E     
       INC    $9D     
       INC    $9E     
       LDA    ($FE),Y 
       DEY            
       STA    GRP0    
       BPL    LFB54   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP1    
       STA    NUSIZ0  
       STA    GRP0    
       JMP    LF000   
LFB7A: .byte $F8,$38,$A5,$9A,$E5,$9D,$85,$9A,$B0,$22,$A9,$59,$85,$9A,$38,$A5
       .byte $99,$E9,$01,$85,$99,$B0,$15,$A9,$00,$85,$99,$85,$9A,$D8,$A9,$0F
       .byte $85,$D4,$A9,$20,$05,$87,$85,$87,$A9,$F2,$85,$81,$60,$E9,$A0,$A0
       .byte $B7,$A5,$C6,$C4,$8A,$C2,$A2,$A0,$A0
LFBB3: LDA    #$FD    
       STA    $D3     
       LDA    #$FE    
       STA    $D1     
       LDA    #$26    
       STA    $91     
       LDA    #$43    
       STA    $92     
       LDA    #$20    
       STA    $99     
       RTS            

LFBC8: .byte $A9,$02,$24,$87,$D0,$08,$05,$87,$85,$87,$A5,$D6,$85,$EB,$60
LFBD7: DEX            
       CPX    #$10    
       BCS    LFBE1   
       LDA    $EC,X   
       LDY    $D9,X   
       RTS            

LFBE1: LDY    #$00    
       RTS            

LFBE4: .byte $A5,$87,$30,$0F,$A5,$3C,$2A,$B0,$0A,$BD,$CA,$FC,$85,$91,$BD,$D6
       .byte $FC,$85,$92,$60
LFBF8: LDA    $83     
       BNE    LFC31   
       DEC    $81     
       LDA    $81     
       AND    #$3F    
       TAY            
       LDA    ($9D),Y 
       STA    $9F     
       AND    #$0F    
       TAY            
       LDA    LFF8A,Y 
       STA    AUDF0   
       ASL            
       BCC    LFC16   
       LDA    #$0C    
       BNE    LFC1D   
LFC16: ASL            
       LDA    #$04    
       BCC    LFC1D   
       LDA    #$08    
LFC1D: STA    AUDC0   
       LDA    $9F     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       STA    $83     
       LDA    $87     
       LSR            
       BCS    LFC31   
       LDA    #$33    
       STA    $85     
LFC31: DEC    $83     
       DEC    $85     
       LDA    $85     
       LSR            
       LSR            
       STA    AUDV0   
       RTS            

LFC3C: .byte $38,$A9,$00,$2A,$C6,$9F,$10,$FB,$60,$3F,$3E,$03,$03,$0C,$1C,$33
       .byte $43,$3C,$24,$24,$24,$24,$3C,$08,$08,$08,$08,$08,$08,$3C,$20,$3C
       .byte $04,$04,$3C,$3C,$04,$1C,$04,$04,$3C,$08,$08,$3C,$28,$28,$38,$3C
       .byte $04,$04,$3C,$20,$3C,$3C,$24,$24,$3C,$20,$3C,$04,$04,$04,$04,$04
       .byte $3C,$3C,$24,$3C,$24,$24,$3C,$3C,$04,$04,$3C,$24,$3C,$A2,$07,$A5
       .byte $92,$A4,$94,$C0,$03,$90,$0F,$A2,$0A,$E9,$07,$90,$16,$CA,$F0,$11
       .byte $E9,$10,$B0,$F9,$90,$0B,$E9,$0E,$90,$09,$CA,$F0,$04,$E9,$17,$B0
       .byte $F9,$8A,$60,$CA,$8A,$60,$15,$24,$33,$42,$51,$60,$12,$21,$30,$3F
       .byte $4E,$5D,$0C,$1B,$2A,$39,$48,$57,$0E,$1D,$2C,$3B,$4A,$59,$0B,$1A
       .byte $29,$38,$47,$56,$15,$24,$33,$42,$51,$60,$54,$60,$6C,$78,$84,$90
       .byte $60,$6C,$78,$84,$90,$9B,$01,$03,$02,$02,$01,$02,$01,$01,$03,$01
LFCEC: .byte $00,$FF,$FF,$7E,$7E,$7E,$7E,$00,$22,$00,$7E,$42,$C3,$27,$20,$E0
LFCFC: .byte $00,$E0,$20,$27,$C3,$42,$7E,$00,$24,$00,$7E,$7E,$7E,$7E,$FF,$FF
       .byte $EE,$10,$28,$90,$A8,$D6,$2A,$12,$2A,$07,$00,$7C,$00,$28,$00,$38
       .byte $00,$6C,$38,$2F,$39,$39,$39,$35,$00,$D6,$00,$28,$00,$C6,$C6,$C6
       .byte $FC,$FC,$FC,$CC,$CC,$CC,$FC,$FC,$FC,$7F,$FF,$60,$60,$78,$78,$78
       .byte $78,$1E,$1E,$1E,$11,$0E,$CF,$CF,$CF,$FF,$FF,$FF,$5E,$5F,$5F,$50
       .byte $50,$50,$9D,$9E,$9F,$36,$36,$36,$3F,$3F,$3D,$CC,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$7E,$7E
       .byte $3C,$18,$7E,$3E,$1E,$0E,$06,$06,$FF,$FF,$FF,$FF,$00,$00,$7E,$7E
       .byte $66,$66,$7E,$7E,$10,$BC,$7B,$BE,$10,$00,$18,$3C,$7E,$7E,$3C,$18
       .byte $18,$18,$18,$7E,$3C,$18,$66,$66,$7E,$3C,$18,$00,$3C,$3C,$3C,$3C
       .byte $7E,$7E,$7E,$7E,$FF,$7E,$7E,$00,$3F,$3F,$3F,$3F,$FF,$FF,$3C,$7E
       .byte $FF,$FF,$00,$00,$78,$7E,$7A,$7A,$7E,$F8,$00,$40,$00,$04,$00,$02
       .byte $20,$00,$22,$00,$00,$20,$00,$02,$40,$20,$20,$00,$02,$20,$00,$20
       .byte $20,$02,$02,$00,$20,$22,$02,$00,$10,$11,$11,$11,$01,$00,$20,$02
       .byte $22,$00,$00,$20,$00,$02,$04,$00,$00,$04,$04,$00,$00,$20,$00,$04
       .byte $02,$00,$00,$02,$04,$02,$00,$00,$00,$44,$00,$40,$00,$00,$04,$00
       .byte $00,$00,$00,$04,$04,$04,$00,$00,$04,$00,$00,$00,$00,$04,$40,$00
       .byte $20,$00,$24,$00,$00,$00,$02,$22,$02,$00,$10,$01,$12,$12,$22,$00
       .byte $00,$22,$00,$00,$02,$00,$04,$02,$00,$40,$00,$22,$00,$00,$22,$00
       .byte $02,$02,$00,$22,$00,$02,$20,$01,$32,$32,$32,$32,$32,$32,$32,$32
       .byte $0A,$00,$01,$00,$13,$00,$01,$06,$06,$06,$06,$06,$06,$06,$06,$06
       .byte $06,$06,$3A,$06,$06,$06,$06,$A5,$D5,$4A,$45,$D5,$4A,$66,$D5,$A5
       .byte $D5
LFE5D: RTS            

LFE5E: .byte $3C,$3C,$3C,$3C,$3C,$3C,$1F,$1F,$1F,$1F,$1F,$1F,$C8,$C8,$C8,$C8
       .byte $C8,$C8,$0F,$0F,$0F,$0F,$0F,$0F,$13,$13,$13,$13,$13,$13,$DA,$DA
       .byte $DA,$DA,$DA,$38,$28,$28,$28,$28,$28,$28,$18,$18,$18,$18,$18,$18
       .byte $0A,$0A,$0A,$0A,$0A,$35,$F6,$F6,$F6,$F6,$F6,$F6,$0F,$0F,$0F,$0F
       .byte $84,$84,$38,$38,$38,$38,$38,$38,$1F,$1F,$1F,$1F,$1F,$1F,$88,$88
       .byte $88,$88,$88,$88,$88
LFEB3: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$0F,$0F,$0F,$0F,$0F,$0F
LFEC3: .byte $00,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$00,$00,$00,$00,$00,$00,$00,$00
LFED3: .byte $28,$F3,$93,$43,$C3,$00,$00,$00,$00,$00,$00,$00,$00,$26,$9D,$4C
       .byte $11,$FF,$A2,$06,$A5,$90,$0A,$85,$9D,$B5,$B5,$C9,$58,$F0,$EE,$B5
       .byte $C3,$26,$9D,$90,$03,$E9,$02,$18,$69,$01,$95,$C3,$C9,$79,$90,$06
       .byte $C6,$88,$A9,$58,$95,$B5,$D0,$06,$C6,$88,$A9,$58,$95,$B5,$CA,$10
       .byte $D8,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$0F,$4C,$AC,$4C
       .byte $0F,$07
LFF25: LDX    #$07    
       LDA    #$58    
LFF29: STA    $B5,X   
       STA    $A0,X   
       DEX            
       BPL    LFF29   
       RTS            

LFF31: .byte $00,$C7,$EF,$EC,$0C,$EC,$EF,$C7,$00,$C7,$EF,$EC,$0F,$EC,$EF,$C7
       .byte $00,$C0,$E0,$04,$EA,$E4,$E0,$C0,$F0,$C1,$44,$83,$45,$46,$47,$CA
       .byte $CB,$3A,$9B,$CC,$C0,$CA,$36,$97,$39,$99,$C6,$37,$97,$36,$96,$34
       .byte $94,$D0,$C1,$44,$82,$44,$45,$46,$C6,$C7,$36,$97,$C9,$C0,$C7,$36
       .byte $97,$39,$99,$C6,$37,$97,$36,$96,$34,$94,$66,$67,$69,$6A,$35,$26
       .byte $17,$18,$19,$1A,$1C,$4C,$4A,$4B,$49
LFF8A: .byte $00,$87,$16,$14,$13,$11,$0F,$0E,$0D,$0C,$0B,$0A,$09,$44,$62,$A4
       .byte $AA,$B0,$9A,$9A,$A0,$A6,$62,$68,$6E,$74,$7A,$80,$86,$8C,$92,$98
       .byte $9E,$5E,$5E,$64,$6A,$70,$76,$7C,$82,$88,$8E,$94
LFFB6: .byte $40,$AC,$31,$D0,$58
LFFBB: .byte $F1,$F1,$F2,$F2,$F2,$48,$5C,$89,$B7,$BA,$CC,$F6,$00,$14,$F6,$F6
       .byte $F6,$F6,$F6,$F6,$F6,$F7,$F7
LFFD2: .byte $D4,$BE,$18,$82,$F4
LFFD7: .byte $F7,$F8,$F9,$F9,$F9
LFFDC: LDA    #$00    
LFFDE: STA    VSYNC,X 
       INX            
       CPX    #$FE    
       BNE    LFFDE   
       RTS            


START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       JSR    LFFDC   
       LDA    #$01    
       STA    $80     
       STA    $9B     
       LDA    #$F2    
       STA    $81     
       JMP    LF59B   
LFFFC: .byte $E6,$FF,$E6,$FF
