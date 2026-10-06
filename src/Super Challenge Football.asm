; Disassembly of roms/Super Challenge Football.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Super Challenge Football.bin
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
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LFDA2   =   $FDA2

       ORG $F000
LF000: .byte $70,$50,$50,$50,$70,$27,$25,$25,$25,$27,$77,$15,$75,$45,$77,$77
       .byte $15,$75,$15,$77,$57,$55,$75,$15,$17,$77,$45,$75,$15,$77,$70,$40
       .byte $70,$50,$70,$70,$10,$10,$10,$10,$70,$50,$70,$50,$70,$70,$50,$70
       .byte $10,$70,$1E,$10,$16,$12,$1E
LF037: .byte $07,$05,$05,$05,$07
LF03C: .byte $02,$02,$02,$02,$02,$07,$01,$07,$04,$07,$07,$01,$07,$01,$07,$05
       .byte $05,$07,$01,$01,$07,$04,$07,$01,$07,$07,$04,$07,$05,$07,$07,$01
       .byte $01,$01,$01,$07,$05,$07,$05,$07,$07,$05,$07,$01,$07,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LF07C: .byte $CC,$C4,$C4,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8
       .byte $C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C4,$C4,$C8,$C8,$C8
       .byte $C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8
       .byte $C8,$C4,$C4,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8
       .byte $C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C4,$C4,$CC,$82,$80,$7C,$7C
LF0CB: .byte $E0,$A0,$A0,$A0,$E0,$40,$40,$40,$40,$40,$E0,$80,$E0,$20,$E0,$E0
       .byte $80,$E0,$80,$E0,$A0,$A0,$E0,$80,$80,$E0,$20,$E0,$80,$E0,$E0,$20
       .byte $E0,$A0,$E0,$E0,$80,$80,$80,$80,$E0,$A0,$E0,$A0,$E0,$E0,$A0,$E0
       .byte $80,$E0,$00,$00,$00
LF100: STA    HMCLR   
       LDX    $E0     
       TYA            
       CMP    $A2,X   
       BCC    LF12D   
       LDA    $B7,X   
       STA    $F2     
       LDA    $DF,X   
LF10F: STA    $EA     
LF111: LDX    LF07C,Y 
       LDA    WSYNC,X 
       STA    PF2     
       LDA    VSYNC,X 
       STA    PF0     
       LDA    VBLANK,X
       STA    PF1     
       STA    HMOVE   
       LDA    ($F6),Y 
       BPL    LF13F   
       LDA    ($F0),Y 
       STA    GRP1    
       JMP.ind ($00EC)
LF12D: CPY    #$42    
       BNE    LF13B   
       LDA.w  $0080   
       AND    #$20    
       BEQ    LF111   
       JMP    LFDFA   
LF13B: LDA    #$00    
       BEQ    LF10F   
LF13F: BEQ    LF144   
       NOP            
       BNE    LF147   
LF144: STA.w  $00F6   
LF147: JMP.ind ($00EC)
LF14A: .byte $85,$12,$85,$2B,$A6,$E0,$10,$08,$A6,$E0,$EA,$85,$12,$8D,$2B,$00
       .byte $B5,$97,$8D,$22,$00,$A9,$FF,$D0,$AC,$85,$2B,$A6,$E0,$B5,$97,$85
       .byte $12,$4C,$5C,$F1,$85,$2B,$A6,$E0,$B5,$97,$85,$22,$A9,$FF,$85,$12
       .byte $EA,$EA,$D0,$91,$85,$2B,$A6,$E0,$B5,$97,$85,$22,$A9,$FF,$85,$EA
       .byte $EA,$85,$12,$EA,$D0,$81,$85,$2B,$A6,$E0,$B5,$97,$A2,$FF,$86,$EA
       .byte $95,$23,$EA,$BE,$7C,$F0,$85,$12,$B5,$02,$8D,$0F,$00,$4C,$18,$F1
       .byte $85,$2B,$A6,$E0,$B5,$97,$85,$22,$A9,$FF,$85,$EA,$BE,$7C,$F0,$B5
       .byte $02,$EA,$EA,$85,$12,$4C,$16,$F1,$85,$2B,$A6,$E0,$B5,$97,$85,$22
       .byte $A9,$FF,$85,$EA,$BE,$7C,$F0,$B5,$02,$85,$0F,$B5,$00,$EA,$85,$12
       .byte $EA,$4C,$1A,$F1,$85,$2B,$A6,$E0,$B5,$97,$85,$22,$A9,$FF,$85,$EA
       .byte $BE,$7C,$F0,$B5,$02,$85,$0F,$B5,$00,$85,$0D,$EA,$EA,$85,$12,$4C
       .byte $1C,$F1,$4C,$0E,$F3,$BE,$7C,$F0,$B5,$02,$85,$0F,$B5,$00,$85,$0D
       .byte $B5,$01,$85,$0E,$B1,$F6,$30,$06,$A5,$E0,$A2,$00,$F0,$03,$B1,$F0
       .byte $AA,$85,$2B,$B1,$F2,$D0,$10,$A9,$00,$85,$EA,$85,$2A,$86,$1C,$EA
       .byte $85,$1D,$C6,$E0,$6C,$EC,$00,$85,$22,$85,$2A,$86,$1C,$85,$1D,$0A
       .byte $0A,$8D,$04,$00,$6C,$EC,$00,$B1,$FA,$10,$35,$85,$1F,$C0,$4A,$B0
       .byte $35,$C8,$85,$2B,$A6,$E5,$98,$D5,$A2,$90,$08,$B5,$B7,$85,$F4,$B5
       .byte $DF,$85,$EC,$B1,$F8,$85,$02,$85,$2A,$EA,$EA,$10,$07,$B1,$EE,$85
       .byte $1B,$6C,$EA,$00,$EA,$D0,$05,$85,$F8,$6C,$EA,$00,$EA,$6C,$EA,$00
       .byte $85,$FA,$C0,$4A,$90,$CB,$4C,$4E,$FE,$B1,$FA,$B1,$FA,$B1,$FA,$85
       .byte $13,$85,$2B,$B1,$FA,$85,$1F,$C8,$A6,$E5,$B5,$97,$85,$23,$A9,$DF
       .byte $85,$EC,$B1,$F8,$85,$02,$8D,$2A,$00,$4C,$65,$F2,$B1,$FA,$B1,$FA
       .byte $85,$2B,$B1,$FA,$85,$1F,$C8,$A6,$E5,$B5,$97,$85,$13,$85,$23,$A9
       .byte $DF,$D0,$9E,$B1,$FA,$B1,$FA,$85,$2B,$B1,$FA,$85,$1F,$C8,$A6,$E5
       .byte $B5,$97,$85,$23,$A9,$DF,$85,$EC,$B1,$F8,$18,$85,$13,$90,$86,$85
       .byte $23,$0A,$0A,$D0,$15,$B1,$FA,$85,$1F,$30,$02,$85,$FA,$C8,$85,$2B
       .byte $B1,$F4,$D0,$EB,$C6,$E5,$A2,$41,$86,$EC,$AA,$B1,$F8,$30,$04,$A9
       .byte $00,$F0,$02,$B1,$EE,$85,$02,$85,$2A,$85,$1B,$86,$05,$B1,$F4,$85
       .byte $1E,$6C,$EA,$00,$85,$2B,$A6,$E0,$B5,$97,$85,$22,$A9,$FF,$85,$EA
       .byte $BE,$7C,$F0,$B5,$01,$85,$0E,$B5,$00,$85,$0D,$B5,$02,$EA,$85,$12
       .byte $85,$0F,$EA,$85,$2A,$B1,$F6,$10,$07,$B1,$F0,$85,$1C,$6C,$EC,$00
       .byte $EA,$EA,$10,$F9
LF33E: .byte $4A,$52,$63,$6E,$7E,$90,$AA,$C2,$DE,$FC
LF348: .byte $89,$87,$85,$83,$AA,$A8,$A6,$C1,$BF,$BD,$20,$FC,$F9,$A9,$50,$85
       .byte $8C,$A9,$64,$85,$89,$20,$C3,$F3,$4C,$C7,$F9

START:
LF363: CLD            
       LDX    #$00    
       TXA            
LF367: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF367   
LF36D: LDA    #$1C    
       STA    TIM64T  
       JSR    LF67C   
       LDA    INTIM   
       CMP    #$0D    
       BCC    LF384   
       INC    $82     
       JSR    LF556   
       JSR    LFB00   
LF384: LDA    INTIM   
       BPL    LF384   
       STA    WSYNC   
       LDX    #$03    
       STX    VSYNC   
LF38F: STA    WSYNC   
       DEX            
       BNE    LF38F   
       STX    VSYNC   
       LDA    #$27    
       STA    TIM64T  
       JSR    LF610   
       BCS    LF3A3   
       JSR    LF445   
LF3A3: LDA    SWCHB   
       LSR            
       BCC    LF363   
       JSR    LFBF5   
LF3AC: LDA    INTIM   
       BPL    LF3AC   
       JSR    LFC42   
       STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       BNE    LF36D   
LF3BC: TAX            
       EOR    $AA,X   
       BRK            
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       INC    $07A2,X 
LF3C5: LDA    LF3BC,X 
       STA    $C4,X   
       DEX            
       BPL    LF3C5   
LF3CD: JSR    LF420   
       LDA    $89     
       STA    $E2     
       LSR            
       JSR    LF5EE   
       STX    $E3     
       LSR    $E2     
       ROL            
       ASL            
       ASL            
       EOR    #$FF    
       ADC    #$4D    
       JSR    LF5A4   
       STA    $CB     
       LDA    $E3     
       LDX    #$CF    
       JSR    LF405   
       INX            
       LDA    $89     
       LSR            
       TAY            
       LDA    $E3     
       CLC            
       ADC    #$01    
       CPY    #$0A    
       BNE    LF3FF   
       LDA    #$00    
LF3FF: CPY    #$5A    
       BNE    LF405   
       LDA    #$02    
LF405: CMP    #$06    
       BCC    LF40D   
       EOR    #$FF    
       ADC    #$0A    
LF40D: LDY    #$0E    
       STA    $E1     
       ASL            
       ASL            
       BNE    LF419   
       LDY    #$2A    
       LDA    #$32    
LF419: STY    WSYNC,X 
       ADC    $E1     
       STA    VSYNC,X 
       RTS            

LF420: LDX    #$01    
       LDA    #$14    
LF424: CLC            
       ADC    $8A,X   
       JSR    LF5D0   
       SEC            
       SBC    $89     
       CMP    #$28    
       BCS    LF439   
       ASL            
       ASL            
       ADC    #$02    
       CMP    #$96    
       BCC    LF43B   
LF439: LDA    #$FF    
LF43B: JSR    LF5A4   
       STA    $C2,X   
       DEX            
       TXA            
       BPL    LF424   
       RTS            

LF445: LDX    #$01    
       LDA    $81     
       ASL            
       ASL            
       LDA    #$00    
       ROL            
       EOR    $82     
       SEC            
       ROR            
       BCS    LF456   
       LDX    #$06    
LF456: LDY    #$04    
       STY    $E7     
       JSR    LF480   
       BIT    $80     
       BPL    LF47C   
       JSR    LF8E6   
       LDA    $A2,X   
       CLC            
       ADC    #$03    
       STA    $A2     
       LDA    $AD,X   
       LDY    #$01    
       AND    #$08    
       BNE    LF475   
       LDY    #$07    
LF475: TYA            
       ADC    $8C,X   
       LDX    #$00    
       BEQ    LF4DA   
LF47C: LDX    #$00    
       LDA    $82     
LF480: STA    $E6     
       EOR    #$FF    
       SEC            
       ADC    #$00    
       AND    $E6     
       STA    $E6     
LF48B: LDA    LF54B,X 
       STA    $E2     
       AND    $D4     
       STA    $E3     
       JSR    LF50C   
       CLC            
       ADC    $A2,X   
       BMI    LF4CB   
       CMP    LF540,X 
       BCS    LF4CB   
       STA    $E1     
       BIT    $E2     
       TAY            
       BVC    LF4B0   
       BEQ    LF4CB   
       ADC    #$09    
       CMP    $A1,X   
       BCS    LF4CB   
LF4B0: BIT    $E2     
       BPL    LF4BC   
       LDA    $A3,X   
       ADC    #$09    
       CMP    $E1     
       BCS    LF4CB   
LF4BC: CPX    #$00    
       BEQ    LF4C9   
       LDA    $A2,X   
       SBC    $E1     
       CLC            
       ADC    $B7,X   
       STA    $B7,X   
LF4C9: STY    $A2,X   
LF4CB: JSR    LF510   
       JSR    LF4D7   
       INX            
       DEC    $E7     
       BPL    LF48B   
       RTS            

LF4D7: CLC            
       ADC    $8C,X   
LF4DA: CMP    #$96    
       BCC    LF4FE   
       LDY    #$89    
       CMP    #$B5    
       BCC    LF4F4   
       CMP    #$D8    
       BCS    LF4EC   
       LDA    #$B4    
       BNE    LF4F4   
LF4EC: LDY    #$60    
       CMP    #$E2    
       BCS    LF4F4   
       LDA    #$E2    
LF4F4: STA    $8C,X   
       STY    $97,X   
       LDA    $AD,X   
       ORA    #$40    
       BNE    LF509   
LF4FE: STA    $8C,X   
       JSR    LF5A4   
       STA    $97,X   
       LDA    $AD,X   
       AND    #$BF    
LF509: STA    $AD,X   
       RTS            

LF50C: LDA    #$0C    
       BNE    LF512   
LF510: LDA    #$00    
LF512: LDY    $AD,X   
       BMI    LF535   
       CLC            
       ADC    $AD,X   
       STA    $E1     
       AND    #$07    
       TAY            
       LDA    LF538,Y 
       LDY    $E3     
       BEQ    LF526   
       ASL            
LF526: AND    $E6     
       BEQ    LF534   
       LDA    $E1     
       AND    #$08    
       LSR            
       LSR            
       EOR    #$02    
       SBC    #$00    
LF534: RTS            

LF535: LDA    #$00    
       RTS            

LF538: .byte $00,$46,$AD,$B7,$FF,$B7,$AD,$46
LF540: .byte $48,$44,$41,$41,$41,$41,$44,$41,$41,$41,$41
LF54B: .byte $00,$20,$81,$C2,$C4,$48,$10,$81,$C2,$C4,$48
LF556: LDA    $82     
       AND    #$07    
       ASL            
       TAX            
       JSR    LF560   
       INX            
LF560: TXA            
       BEQ    LF5A3   
       CMP    #$0B    
       BCS    LF5A3   
       LDA    $AD,X   
       AND    #$CF    
       STA    $E1     
       BPL    LF573   
       LDA    #$20    
       BNE    LF580   
LF573: EOR    $AD,X   
       ADC    #$10    
       AND    #$30    
       ORA    $E1     
       STA    $AD,X   
       AND    #$30    
       LSR            
LF580: ADC    #$83    
       SBC    $A2,X   
       CPX    #$06    
       BEQ    LF5A1   
       CPX    #$01    
       BEQ    LF5A1   
       BIT    $E1     
       BVC    LF592   
       ADC    #$06    
LF592: STA    $E1     
       LDA    $AD,X   
       AND    #$08    
       BEQ    LF59C   
       LDA    #$28    
LF59C: CLC            
       ADC    $E1     
       ADC    #$26    
LF5A1: STA    $B7,X   
LF5A3: RTS            

LF5A4: TAY            
       AND    #$0F    
       STA    $E1     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       SEC            
       ADC    $E1     
       CMP    #$10    
       BCC    LF5B9   
       SBC    #$0F    
       INY            
LF5B9: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    $E1     
       ORA    $E1     
       RTS            

LF5C4: .byte $A5,$81,$0A,$A5,$8C,$E9,$02,$4A,$4A,$18,$65,$89
LF5D0: BIT    $81     
       BPL    LF5D9   
       EOR    #$FF    
       SEC            
       ADC    #$F0    
LF5D9: RTS            

LF5DA: .byte $A5,$81,$49,$C0,$85,$81,$A9,$F0,$38,$E5,$8A,$85,$8A,$A9,$F0,$E5
       .byte $8B,$85,$8B,$60
LF5EE: TAX            
       LSR            
       LSR            
       LSR            
       STA    $E1     
       TXA            
       LDX    $E1     
       ASL    $E1     
       AND    #$07    
       SEC            
       SBC    $E1     
       BCS    LF605   
LF600: DEX            
       ADC    #$0A    
       BCC    LF600   
LF605: RTS            

LF606: .byte $00,$05,$0A,$0F,$14,$19,$1E,$23,$28,$2D
LF610: LDA    $82     
       EOR    #$01    
       AND    #$03    
       BNE    LF67A   
       TAX            
       LDA    #$FF    
       BIT    $80     
       BVC    LF62A   
       LDY    $89     
       CPY    $D5     
       BEQ    LF67A   
       INX            
       BCS    LF634   
       BCC    LF636   
LF62A: LDY    $8C     
       CPY    #$7D    
       BCS    LF636   
       CPY    #$1A    
       BCS    LF67A   
LF634: LDA    #$01    
LF636: STA    $E4     
       EOR    #$FF    
       SEC            
       ADC    $89     
       CMP    #$C2    
       BCS    LF67A   
       CMP    #$0A    
       BCC    LF67A   
       STA    $89     
LF647: LDA    $E4     
       ASL            
       ASL            
       JSR    LF4D7   
       INX            
       CPX    #$0B    
       BCC    LF647   
       JSR    LF3CD   
       JSR    LFB16   
       BIT    $E4     
       BPL    LF66B   
       LDA    $C8     
       AND    #$10    
       CMP    #$10    
       ROR    $CA     
       ROL    $C9     
       ROR    $C8     
       SEC            
       RTS            

LF66B: LDA    $C8     
       ASL            
       ROR    $C9     
       ROL    $CA     
       AND    #$E0    
       ADC    #$0F    
       STA    $C8     
       SEC            
       RTS            

LF67A: CLC            
       RTS            

LF67C: LDA    $80     
       AND    #$0F    
       CLC            
       ADC    #$09    
       TAX            
       JSR    LF68E   
       BCC    LF696   
       LDA    LF696,X 
       STA    $80     
LF68E: LDA    LF69E,X 
       PHA            
       LDA    LF6AF,X 
       PHA            
LF696: RTS            

LF697: .byte $41,$22,$03,$14,$95,$16,$07
LF69E: .byte $08,$F6,$F7,$F8,$F8,$F8,$F8,$F9,$F9,$F3,$F6,$F7,$F8,$F8,$F8,$F9
       .byte $F9
LF6AF: .byte $FA,$C0,$16,$2E,$2F,$87,$FA,$80,$FB,$51,$FB,$63,$1E,$3F,$47,$2E
       .byte $93,$12,$A9,$1D,$C5,$A2,$B0,$06,$A9,$30,$C5,$A2,$B0,$02,$85,$A2
       .byte $A9,$30,$85,$D6,$A5,$8A,$38,$E9,$0B,$85,$D5,$C9,$C1,$90,$0C,$E9
       .byte $C1,$0A,$0A,$65,$D6,$85,$D6,$A9,$C1,$85,$D5,$24,$81,$10,$0D,$A9
       .byte $CB,$38,$E5,$D5,$85,$D5,$A9,$9C,$E5,$D6,$85,$D6,$60,$A5,$8C,$C5
       .byte $D6,$F0,$0C,$A9,$01,$90,$02,$A9,$FE,$65,$8C,$85,$8C,$18,$60,$A5
       .byte $89,$C5,$D5,$D0,$F8,$A2,$02,$60,$A9,$05,$85,$D5,$0A,$85,$DA,$AA
       .byte $20,$01,$F8,$09,$40,$D0,$07,$A5,$E4,$88,$10,$06,$49,$09,$85,$E4
       .byte $A0,$04,$95,$AD,$4A,$B9,$15,$F8,$B0,$02,$49,$FF,$18,$65,$8C,$24
       .byte $81,$10,$03,$38,$E9,$08,$95,$8C,$A5,$A2,$38,$E9,$1D,$C9,$0B,$90
       .byte $02,$E9,$0D,$79,$1A,$F8,$95,$A2,$20,$60,$F5,$CA,$D0,$C9,$86,$AE
       .byte $86,$B3,$86,$DF,$60,$A5,$D5,$25,$DA,$10,$04,$A2,$03,$38,$60,$A9
       .byte $C0,$A0,$01,$20,$79,$F7,$A9,$80,$A0,$06,$20,$03,$F8,$B6,$D4,$30
       .byte $10,$F0,$6C,$B5,$A2,$18,$69,$02,$D9,$A2,$00,$F0,$06,$A9,$00,$95
       .byte $D4,$18,$60,$A5,$E2,$99,$AD,$00,$AD,$80,$02,$C0,$06,$F0,$04,$4A
       .byte $4A,$4A,$4A,$29,$0F,$84,$E3,$A8,$B9,$B3,$F8,$10,$13,$24,$E1,$10
       .byte $DE,$20,$27,$F8,$30,$D9,$D5,$D4,$B0,$46,$86,$DF,$A9,$03,$D0,$10
       .byte $4A,$4A,$B0,$3C,$D5,$D4,$B0,$38,$4A,$90,$02,$45,$E5,$2A,$29,$03
       .byte $95,$D4,$A5,$E2,$95,$AD,$CA,$E4,$E3,$F0,$08,$A4,$E3,$96,$D4,$A0
       .byte $08,$D0,$02,$A0,$00,$A9,$00,$95,$D4,$A6,$E3,$94,$AD,$18,$60,$B9
       .byte $A2,$00,$E5,$A2,$C9,$F9,$D0,$08,$CA,$96,$D4,$A5,$E2,$99,$AD,$00
       .byte $18,$60,$A9,$C0,$45,$81,$0A,$26,$E5,$85,$E1,$45,$81,$29,$80,$30
       .byte $02,$A9,$89,$85,$E2,$60,$F2,$FA,$FA,$FA,$FA,$1A,$2C,$20,$14,$08
       .byte $20,$27,$F8,$49,$80,$0A,$A2,$04,$24,$81,$A5,$0C,$50,$02,$A5,$0D
       .byte $60,$A9,$0D,$85,$D5,$24,$81,$10,$02,$A9,$03,$85,$AD,$A9,$7A,$85
       .byte $DA,$E6,$DA,$A2,$05,$A5,$DA,$0A,$60,$20,$C4,$F5,$A8,$20,$27,$F8
       .byte $30,$11,$A5,$D5,$D0,$13,$A6,$DF,$CA,$30,$0E,$C4,$8A,$B0,$0A,$A2
       .byte $06,$38,$60,$A5,$D5,$F0,$02,$C6,$D5,$C0,$DC,$B0,$57,$C0,$0B,$90
       .byte $5A,$A9,$05,$24,$81,$50,$02,$A9,$0A,$25,$E0,$F0,$0D,$E6,$88,$C0
       .byte $15,$90,$48,$20,$CC,$FB,$A2,$07,$38,$60,$A5,$DA,$F0,$02,$E6,$DA
       .byte $20,$15,$FA,$AD,$80,$02,$48,$4A,$4A,$4A,$4A,$A2,$01,$20,$A4,$F8
       .byte $68,$29,$0F,$A2,$06,$A8,$B9,$B3,$F8,$10,$02,$15,$AD,$85,$E1,$B5
       .byte $AD,$29,$70,$05,$E1,$95,$AD,$18,$60,$06,$02,$04,$80,$0A,$0E,$0C
       .byte $80,$08,$00,$80,$20,$E6,$F8,$A9,$07,$D0,$05,$20,$F2,$F8,$A9,$02
       .byte $18,$79,$85,$00,$C9,$C8,$90,$02,$A9,$C7,$99,$85,$00,$A9,$00,$85
       .byte $D3,$20,$DA,$F5,$4C,$E1,$F9
LF8E6: BIT    $81     
       LDY    #$00    
       LDX    #$01    
       BVC    LF8F1   
LF8EE: INY            
       LDX    #$06    
LF8F1: RTS            

LF8F2: BIT    $81     
       LDY    #$00    
       LDX    #$01    
       BVC    LF8EE   
       RTS            

LF8FB: .byte $A9,$18,$85,$D3,$A4,$DF,$A2,$00,$20,$94,$FA,$20,$E6,$F8,$A4,$DF
       .byte $B9,$8C,$00,$95,$8C,$B9,$A2,$00,$18,$69,$02,$95,$A2,$20,$60,$F5
       .byte $A9,$E2,$24,$81,$10,$02,$A9,$B4,$A6,$DF,$20,$DA,$F4,$A9,$F0,$85
       .byte $DF,$4C,$60,$F5,$20,$89,$F8,$A5,$A2,$F0,$46,$C9,$47,$B0,$42,$A5
       .byte $8C,$F0,$3E,$C9,$95,$F0,$3A,$C6,$DF,$F0,$36,$A5,$DF,$C9,$E6,$B0
       .byte $06,$A9,$03,$25,$E0,$D0,$02,$18,$60,$0A,$0A,$0A,$0A,$24,$D4,$D0
       .byte $20,$0A,$45,$81,$A0,$15,$29,$40,$D0,$0D,$20,$DA,$F5,$E9,$14,$85
       .byte $8B,$A9,$FF,$85,$88,$A0,$12,$84,$D3,$A9,$FF,$85,$DF,$A2,$05,$38
       .byte $60,$A4,$8A,$4C,$7C,$F8,$A2,$0A,$16,$AD,$38,$76,$AD,$CA,$10,$F8
       .byte $84,$8A,$A9,$3C,$85,$D5,$4C,$20,$F4,$C6,$D5,$18,$D0,$55,$A0,$08
       .byte $A5,$8A,$38,$E5,$8B,$90,$04,$C9,$14,$B0,$0D,$A5,$88,$F0,$09,$C9
       .byte $04,$90,$0D,$20,$DA,$F5,$A0,$0C,$A9,$00,$85,$88,$A5,$8A,$85,$8B
       .byte $84,$D3,$A5,$81,$4A,$90,$33,$0A,$85,$81,$E6,$87,$A5,$87,$A2,$08
       .byte $C9,$04,$B0,$1A,$A0,$0F,$84,$83,$4A,$B0,$19,$4A,$A5,$81,$29,$3F
       .byte $90,$02,$09,$C0,$85,$81,$A9,$00,$85,$88,$A0,$3C,$A2,$07,$A9,$27
       .byte $85,$A2,$38,$60,$A5,$81,$49,$80,$85,$81,$20,$20,$F4,$A2,$01,$38
       .byte $60,$A2,$05,$A0,$C0,$A9,$00,$94,$AD,$94,$B2,$94,$8C,$94,$91,$69
       .byte $0A,$95,$A2,$95,$A7,$CA,$D0,$EF,$18,$60,$20,$E6,$F8,$86,$E9,$20
       .byte $F2,$F8,$86,$E8,$A5,$82,$29,$03,$48,$38,$65,$E9,$85,$E7,$AA,$68
       .byte $38,$65,$E8,$85,$E8,$A8,$A5,$DA,$F0,$2B,$BD,$4B,$F5,$24,$D4,$F0
       .byte $24,$B5,$D4,$C9,$03,$F0,$1E,$20,$49,$FA,$A6,$E8,$A4,$E7,$B9,$D4
       .byte $00,$4A,$B0,$05,$0A,$0A,$0A,$90,$08,$D0,$09,$B5,$AD,$49,$08,$29
       .byte $8F,$20,$AC,$F8,$60,$20,$7D,$FA,$A6,$E8,$B5,$D4,$A0,$00,$C9,$03
       .byte $D0,$27,$A5,$DF,$C9,$FF,$F0,$21,$A4,$E9,$24,$80,$10,$1B,$A4,$E7
       .byte $10,$17,$B5,$D4,$C9,$03,$D0,$11,$A9,$04,$24,$81,$10,$02,$A9,$0C
       .byte $24,$80,$30,$02,$09,$80,$4C,$AC,$F8,$B9,$8C,$00,$C0,$00,$D0,$02
       .byte $E9,$03,$69,$1D,$85,$E1,$B9,$A2,$00,$C0,$00,$D0,$02,$E9,$03,$F5
       .byte $A2,$6A,$85,$E4,$49,$80,$10,$02,$49,$FF,$85,$E6,$A8,$B5,$8C,$18
       .byte $69,$1E,$38,$E5,$E1,$6A,$85,$E3,$49,$80,$10,$02,$49,$FF,$C5,$E6
       .byte $90,$03,$85,$E6,$98,$66,$E5,$A0,$02,$85,$E1,$4A,$65,$E1,$C5,$E6
       .byte $B0,$0A,$88,$65,$E1,$46,$E6,$C5,$E6,$B0,$01,$88,$98,$86,$E1,$A2
       .byte $02,$86,$E6,$06,$E6,$16,$E3,$90,$04,$49,$FF,$65,$E6,$CA,$10,$F3
       .byte $A6,$E1,$4C,$AC,$F8
LFB00: BIT    $AD     
       BPL    LFB0C   
       LDA    $82     
       AND    #$0F    
       BNE    LFB27   
       BEQ    LFB12   
LFB0C: LDA    $E0     
       AND    #$40    
       BEQ    LFB27   
LFB12: LDX    #$0A    
       BNE    LFB18   
LFB16: LDX    #$02    
LFB18: LDY    #$03    
LFB1A: LDA    $C4,X   
       EOR    #$FF    
       STA    $C4,X   
       DEX            
       DEY            
       BNE    LFB1A   
       DEX            
       BPL    LFB18   
LFB27: LDA    $82     
       AND    #$0F    
       BNE    LFB52   
       LDA    $80     
       AND    #$10    
       BEQ    LFB52   
       LDA    $84     
       ORA    $83     
       BEQ    LFB52   
       DEC    $84     
       BPL    LFB43   
       LDA    #$3B    
       STA    $84     
       DEC    $83     
LFB43: LDA    $84     
       ORA    $83     
       BNE    LFB52   
       LSR    $81     
       SEC            
       ROL    $81     
       LDA    #$0E    
       STA    $D3     
LFB52: LDA    #$10    
       STA    $D4     
       LDX    #$05    
       LDY    #$0A    
LFB5A: LDA    $A2,X   
       SEC            
       SBC.wy $00A2,Y 
       BMI    LFB64   
       EOR    #$FF    
LFB64: CMP    #$FC    
       BCC    LFB73   
       LDA    $8C,X   
       SBC.wy $008C,Y 
       BMI    LFB71   
       EOR    #$FF    
LFB71: CMP    #$FA    
LFB73: DEX            
       DEY            
       ROL    $D4     
       BCC    LFB5A   
       LDA    $E0     
       AND    #$30    
       ORA    $D4     
       STA    $D4     
       LDA    $80     
       AND    #$10    
       BEQ    LFB9E   
       JSR    LF8F2   
       LDA    $8C,X   
       LDY    #$FA    
       CMP    #$9D    
       BCC    LFB9E   
       CMP    #$B5    
       BCC    LFB9C   
       LDY    #$9C    
       CMP    #$FA    
       BCS    LFB9E   
LFB9C: STY    $8C,X   
LFB9E: LDA    $D3     
       TAX            
       SEC            
       SBC    #$20    
       BCS    LFBCE   
       LDA    LFBD5,X 
       BEQ    LFBC8   
       PHA            
       AND    #$03    
       TAX            
       LDA    LFBD1,X 
       ADC    $D3     
       STA    $D3     
       PLA            
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
       LDA    #$05    
       TAX            
       BCC    LFBC3   
       LDX    #$01    
LFBC3: STX    AUDC0   
LFBC5: STA    AUDV0   
       RTS            

LFBC8: CPX    #$0B    
       BNE    LFBC5   
       LDA    #$09    
LFBCE: STA    $D3     
       RTS            

LFBD1: .byte $01,$21,$A1,$E1
LFBD5: .byte $FA,$CA,$AA,$7A,$7A,$92,$7B,$7B,$00,$21,$28,$00,$A7,$A7,$FF,$FF
       .byte $FF,$00,$A2,$7A,$A2,$7A,$A2,$00,$42,$4A,$52,$5A,$62,$6A,$72,$00
LFBF5: LDY    #$01    
LFBF7: LDA.wy $0085,Y 
       LDX    #$00    
       CMP    #$64    
       BCC    LFC04   
       LDX    #$02    
       SBC    #$64    
LFC04: STX    $EC,Y   
       JSR    LF5EE   
       STA    $E1     
       LDA    LF606,X 
       STA.wy $00EE,Y 
       LDX    $E1     
       LDA    LF606,X 
       STA.wy $00F0,Y 
       DEY            
       BPL    LFBF7   
       LDA    $83     
       LDY    $84     
       LDX    #$00    
       CMP    #$0A    
       BCC    LFC2A   
       LDX    #$08    
       SBC    #$0A    
LFC2A: STX    $F5     
       TAX            
       LDA    LF606,X 
       STA    $F7     
       TYA            
       JSR    LF5EE   
       LDY    LF606,X 
       STY    $F9     
       TAX            
       LDA    LF606,X 
       STA    $FB     
       RTS            

LFC42: LDA    #$C7    
       SEC            
       SBC    $A2     
       STA    $FA     
       LDA    $A3     
       PHA            
       EOR    #$FF    
       SEC            
       ADC    #$69    
       BIT    $AE     
       BVC    LFC57   
       LDA    #$00    
LFC57: STA    $F8     
       LDA    $A8     
       PHA            
       EOR    #$FF    
       SEC            
       ADC    #$69    
       BIT    $B3     
       BVC    LFC67   
       LDA    #$00    
LFC67: STA    $F6     
       LDX    #$03    
LFC6B: LDA    $99,X   
       AND    #$0F    
       TAY            
       LDA    LF33E,Y 
       STA    $E1,X   
       LDA    $9E,X   
       AND    #$0F    
       TAY            
       LDA    LF348,Y 
       STA    $E6,X   
       DEX            
       BPL    LFC6B   
       STX    $A3     
       STX    $A8     
       STA    WSYNC   
       LDA    #$10    
       STA    CTRLPF  
       LDA    #$18    
       STA    COLUP0  
       LDA    #$80    
       STA    COLUP1  
       LDA    #$15    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    RESM0   
       STA    RESP0   
       LDA    #$A0    
       STA    HMM0    
       LDA    #$20    
       STA    HMP0    
       STA    HMBL    
       LDA    #$C0    
       LDX    #$40    
       STA    RESBL   
       STA    HMM1    
       STX    HMP1    
       LDA    #$14    
       STA    RESM1   
       STA    RESP1   
       STA    $F3     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$86    
       STA    COLUBK  
       STA    COLUPF  
       LDA    #$00    
       STA    VBLANK  
       STA    GRP0    
       STA    GRP1    
       LDY    #$05    
       STA    HMCLR   
LFCD0: STA    WSYNC   
       STA    HMOVE   
       LDA    $F5     
       LDX    $F7     
       INC    $F7     
       ORA    LF0CB,X 
       STA    PF2     
       LDX    $F9     
       INC    $F9     
       LDA    LF0CB,X 
       STA    PF0     
       LDA    #$1C    
       STA    COLUPF  
       LDX    $FB     
       LDA    LF000,X 
       AND    #$F0    
       STA    PF1     
       LDA    $EC     
       STA    ENAM0   
       LDA    #$86    
       STA    COLUPF  
       INC    $FB     
       LDX    $EE     
       INC    $EE     
       STA    HMOVE   
       LDA    LF000,X 
       AND    #$F0    
       LDX    $F0     
       ORA    LF037,X 
       STA    GRP0    
       LDX    $EF     
       INC    $EF     
       LDA    LF000,X 
       AND    #$F0    
       LDX    #$1C    
       STX    COLUPF  
       LDX    $ED     
       STX    ENAM1   
       LDX    $F1     
       INC    $F1     
       ORA    LF037,X 
       STA    GRP1    
       LDA    #$86    
       STA    COLUPF  
       INC    $F0     
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$06    
LFD37: DEX            
       BNE    LFD37   
       LDA    #$1C    
       STA    COLUPF  
       LSR    $F3     
       LDA    $F3     
       STA    ENABL   
       LDA    #$86    
       LDX    $CC     
       DEY            
       STA    COLUPF  
       BNE    LFCD0   
       STY    GRP0    
       STY    ENAM0   
       STA    WSYNC   
       STA    HMOVE   
       STY    GRP1    
       STY    ENAM1   
       LDA    #$05    
       STA    $E0     
       ASL            
       STA    $E5     
       LDA    #$F0    
       STA    $F9     
       STA    $F7     
       STA    $FB     
       LDA    #$FF    
       STA    $EF     
       STA    $F1     
       STA    $F3     
       STA    $F5     
       LDA    $B8     
       STA    $EE     
       LDA    $BD     
       STA    $F0     
       LDA    $CC     
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       STA    HMOVE   
       AND    #$04    
       EOR    #$C2    
       STA    COLUPF  
       EOR    #$04    
       STA    COLUBK  
       LDA    $AE     
       STA    REFP0   
       LDA    $B3     
       STA    REFP1   
       LDA    $9D     
       LDY    #$03    
       STA    WSYNC   
       STA.w  $002A   
       BNE    LFDAD   
       .byte $14 ;.NOP
       BPL    LFDB7   
LFDA6: STA    WSYNC   
       STA    HMOVE   
       LDA.wy $0096,Y 
LFDAD: LDX    LFDA2,Y 
       AND    #$0F    
       SEC            
LFDB3: SBC    #$01    
       BPL    LFDB3   
LFDB7: DEY            
       STA    VSYNC,X 
       BNE    LFDA6   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $97     
       STA    HMBL    
       LDA    $98     
       STA    HMP0    
       LDA    $9D     
       STA    HMP1    
       STA    CXCLR   
LFDD4: LDA    #$00    
       STA    $EA     
       LDA    #$F1    
       STA    $EB     
       LDA    #$41    
       STA    $EC     
       LDA    #$F2    
       STA    $ED     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($F8),Y 
       BPL    LFDF4   
       LDA    ($EE),Y 
       STA.w  $001B   
       JMP    LF100   
LFDF4: NOP            
       NOP            
       NOP            
       JMP.ind ($00EA)
LFDFA: STA    WSYNC   
       STA    HMOVE   
       LDX    #$00    
       STX    REFP0   
       STX    REFP1   
       STX    $EA     
       LDA    $88     
       ASL            
       ASL            
       ADC    $88     
       TAY            
       LDA    $87     
       ASL            
       ASL            
       ADC    $87     
       STA    $EB     
       LDA    #$18    
       STA    RESP0   
       BIT    $81     
       STA    RESP1   
       BVC    LFE21   
       LDA    #$80    
LFE21: STA    COLUP0  
       STA    COLUP1  
LFE25: STA    WSYNC   
       STA    HMOVE   
       LDX    $EA     
       LDA    LFF6B,X 
       BEQ    LFE46   
       ORA    LF03C,Y 
       STA    GRP0    
       LDA    LFF71,X 
       LDX    $EB     
       ORA    LF03C,X 
       STA    GRP1    
       INC    $EA     
       INC    $EB     
       INY            
       BNE    LFE25   
LFE46: STA    GRP0    
       STA    GRP1    
       LDY    #$46    
       BNE    LFDD4   
       LDA    RSYNC   
       AND    #$40    
       LSR            
       LSR            
       STA    $E0     
       LDA    WSYNC   
       AND    #$40    
       LSR            
       ORA    $E0     
       STA    $E0     
       LDA    NUSIZ1  
       AND    #$40    
       ORA    $E0     
       STA    $E0     
       STA    HMOVE   
       LDA    NUSIZ0  
       AND    #$40    
       ASL            
       ORA    $E0     
       STA    $E0     
       LDA    VSYNC   
       ASL            
       ROR    $E0     
       LDA    VBLANK  
       ASL            
       ROR    $E0     
       LDA    COLUP0  
       ASL            
       ROR    $E0     
       LDA    COLUP1  
       ASL            
       ROR    $E0     
       LDX    #$00    
       LDA    $C2     
       TAY            
       AND    #$0F    
       SEC            
       STX    REFP0   
       STX    REFP1   
       STA    WSYNC   
       STA    HMOVE   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    #$C6    
       STX    COLUBK  
LFEA0: SBC    #$01    
       BPL    LFEA0   
       STA.w  $0010   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $C3     
       TAX            
       AND    #$0F    
       SEC            
LFEB1: SBC    #$01    
       BPL    LFEB1   
       LDA    #$0E    
       STA    COLUP0  
       STA.w  $0011   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$90    
       STA    COLUP1  
       PLA            
       PHA            
       STY    HMP0    
       STX    HMP1    
       LDX    #$05    
LFECC: STA    WSYNC   
       STA    HMOVE   
       LDA    LFF76,X 
       STA    GRP0    
       STA    GRP1    
       CPX    #$01    
       BNE    LFEDF   
       LDA    #$C2    
       STA    COLUBK  
LFEDF: LDA    $CB     
       AND    #$0F    
       DEX            
       STA    HMCLR   
       BPL    LFECC   
       TAX            
       CMP    #$05    
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
LFEF5: DEX            
       BPL    LFEF5   
       LDA    $D1     
       STA    COLUP0  
       LDA    $CB     
       STA    RESP0   
       STA    HMP0    
       STA    HMP1    
       LDY    #$02    
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       NOP            
       NOP            
       STA    $EA     
       STA    RESP1   
       BCS    LFF16   
       STA    WSYNC   
LFF16: STA    HMOVE   
       LDA    #$00    
       BCC    LFF1E   
       LDA    #$F0    
LFF1E: LDX    #$00    
       LDY    $89     
       CPY    #$67    
       BCC    LFF28   
       LDX    #$03    
LFF28: LDY    #$03    
       NOP            
       STA    HMCLR   
       STA    HMP1    
LFF2F: STA    WSYNC   
       STA    HMOVE   
       LDA    LFF7C,X 
       STA    GRP0    
       INX            
       LSR            
       STA    GRP1    
       LDA    $D2     
       STA    COLUP1  
       STA    HMCLR   
       DEY            
       BNE    LFF2F   
       LDX    $CF     
       LDY    $D0     
       BCC    LFF5C   
LFF4B: STA    WSYNC   
       STA    HMOVE   
       LDA    LF000,X 
       ASL            
       STA    GRP0    
       LDA    LF000,Y 
       STA    GRP1    
       INX            
       INY            
LFF5C: STA    WSYNC   
       STA    HMOVE   
       DEC    $EA     
       BPL    LFF4B   
       PLA            
       STA    $A8     
       PLA            
       STA    $A3     
       RTS            

LFF6B: .byte $C0,$A0,$A0,$A0,$C0,$00
LFF71: .byte $E0,$A0,$A0,$A0,$F0
LFF76: .byte $40,$40,$40,$E0,$A0,$E0
LFF7C: .byte $40,$C0,$00,$04,$06,$00,$0C,$1C,$38,$1E,$38,$28,$08,$00,$0C,$1C
       .byte $38,$38,$30,$30,$20,$00,$0C,$1C,$38,$1E,$38,$6C,$40,$00,$0C,$3D
       .byte $5E,$18,$3C,$E2,$02,$00,$06,$1E,$3C,$3F,$38,$68,$4C,$00,$A6,$2A
       .byte $1A,$0A,$06,$16,$02,$00,$A6,$2A,$2A,$EA,$16,$1A,$02,$00,$B6,$2A
       .byte $2E,$FA,$F6,$2A,$D6,$00,$B6,$2A,$1A,$FA,$06,$16,$F2,$00,$B6,$2A
       .byte $1A,$FA,$06,$02,$06,$00,$E6,$0A,$FA,$0A,$E6,$F6,$F2,$00,$E6,$0A
       .byte $EA,$2A,$D6,$1A,$D2,$00,$D6,$0A,$2E,$DA,$F6,$0A,$16,$00,$D6,$0A
       .byte $FA,$1A,$E6,$F6,$02,$00,$D6,$0A,$FA,$1A,$E6,$F2,$16,$00,$63,$F3
       .byte $63,$F3,$63,$F3
