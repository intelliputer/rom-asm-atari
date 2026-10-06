; Disassembly of roms/Soccer (Unlicensed).bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Soccer (Unlicensed).bin
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
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
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
LFDBD   =   $FDBD

       ORG $F000
LF000: .byte $70,$50,$50,$50,$70,$20,$20,$20,$20,$20,$70,$10,$70,$40,$70,$70
       .byte $10,$70,$10,$70,$50,$50,$70,$10,$10,$70,$40,$70,$10,$70,$70,$40
       .byte $70,$50,$70,$70,$10,$10,$10,$10,$70,$50,$70,$50,$70,$70,$50,$70
       .byte $10,$70
LF032: .byte $07,$05,$05,$05,$07,$02,$02,$02,$02,$02,$07,$01,$07,$04,$07,$07
       .byte $01,$07,$01,$07,$05,$05,$07,$01,$01,$07,$04,$07,$01,$07,$07,$04
       .byte $07,$05,$07,$07,$01,$01,$01,$01,$07,$05,$07,$05,$07,$07,$05,$07
       .byte $01,$07,$80,$80,$80,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$82,$82,$80,$70,$70
LF0CC: .byte $E0,$A0,$A0,$A0,$E0,$40,$40,$40,$40,$40,$E0,$80,$E0,$20,$E0,$E0
       .byte $80,$E0,$80,$E0,$A0,$A0,$E0,$80,$80,$E0,$20,$E0,$80,$E0,$E0,$20
       .byte $E0,$A0,$E0,$E0,$80,$80,$80,$80,$E0,$A0,$E0,$A0,$E0,$E0,$A0,$E0
       .byte $80,$E0,$FF,$FF
LF100: STA    HMCLR   
       LDX    $D5     
       TYA            
       CMP    $9A,X   
       BCC    LF135   
       LDA    $BD,X   
       STA    $DF     
       LDA    $CC,X   
       DEC    $3F     
LF111: STA    $D7     
LF113: LDA    ($C8),Y 
       STA    PF2     
       LDA    ($C6),Y 
       STA    PF1     
       LDA    ($E3),Y 
       STA    HMOVE   
       NOP            
       NOP            
       BPL    LF12A   
       LDA    ($DD),Y 
       STA    GRP1    
       JMP.ind ($00D9)
LF12A: BEQ    LF12F   
       NOP            
       BNE    LF132   
LF12F: STA.w  $00E3   
LF132: JMP.ind ($00D9)
LF135: JSR    LFE27   
       STA    $3F     
       BCC    LF113   
       STA    RESM0   
       STA    HMCLR   
       LDX    $D5     
       BPL    LF14C   
       LDX    $D5     
       NOP            
       STA    RESM0   
       STA.w  $002B   
LF14C: LDA    $91,X   
LF14E: STA.w  $0022   
       LDA    #$EA    
       DEC    $3F     
       BNE    LF111   
       STA    HMCLR   
       LDX    $D5     
       LDA    $91,X   
       STA    RESM0   
       JMP    LF14E   
LF162: .byte $85,$2B,$A6,$D5,$B5,$91,$85,$22,$EA,$85,$12,$68,$48,$A9,$EA,$D0
       .byte $9E,$85,$2B,$A6,$D5,$B5,$91,$85,$22,$C6,$3F,$A9,$EA,$85,$12,$EA
       .byte $EA,$D0,$8C,$85,$2B,$A6,$D5,$B5,$91,$85,$22,$A9,$EA,$85,$D7,$68
       .byte $48,$85,$12,$EA,$4C,$13,$F1,$85,$2B,$A6,$D5,$B5,$91,$85,$22,$A9
       .byte $EA,$85,$D7,$B1,$C8,$85,$3F,$EA,$EA,$85,$12,$EA,$4C,$15,$F1,$85
       .byte $2B,$A6,$D5,$B5,$91,$85,$22,$A9,$EA,$85,$D7,$B1,$C6,$AA,$B1,$C8
       .byte $C6,$3F,$85,$12,$85,$0F,$8A,$4C,$19,$F1,$85,$2B,$A6,$D5,$B5,$91
       .byte $85,$22,$A9,$EA,$85,$D7,$C6,$3F,$B1,$C6,$AA,$B1,$C8,$85,$0F,$8A
       .byte $85,$12,$4C,$19,$F1,$4C,$33,$F3,$B1,$E3,$30,$06,$A5,$D5,$A2,$00
       .byte $F0,$03,$B1,$DD,$AA,$EA,$EA,$85,$2B,$B1,$DF,$D0,$1A,$C6,$3F,$B1
       .byte $C8,$85,$0F,$B1,$C6,$85,$0E,$A9,$00,$85,$D7,$85,$2A,$86,$1C,$EA
       .byte $85,$1D,$C6,$D5,$6C,$D9,$00,$85,$22,$B1,$C8,$85,$0F,$B1,$C6,$85
       .byte $0E,$B1,$DF,$85,$2A,$86,$1C,$85,$1D,$0A,$0A,$85,$04,$6C,$D9,$00
       .byte $B1,$E7,$10,$35,$85,$1F,$C0,$55,$B0,$35,$C8,$85,$2B,$A6,$D1,$98
       .byte $D5,$9A,$90,$08,$B5,$BD,$85,$E1,$B5,$CC,$85,$D9,$B1,$E5,$85,$02
       .byte $85,$2A,$EA,$EA,$10,$07,$B1,$DB,$85,$1B,$6C,$D7,$00,$EA,$D0,$05
       .byte $85,$E5,$6C,$D7,$00,$EA,$6C,$D7,$00,$85,$E7,$C0,$55,$90,$CB,$4C
       .byte $1B,$FE,$B1,$E7,$B1,$E7,$B1,$E7,$85,$13,$85,$2B,$B1,$E7,$85,$1F
       .byte $C8,$A6,$D1,$B5,$91,$85,$23,$A9,$D0,$85,$D9,$B1,$E5,$85,$02,$8D
       .byte $2A,$00,$4C,$56,$F2,$B1,$E7,$B1,$E7,$85,$2B,$B1,$E7,$85,$1F,$C8
       .byte $A6,$D1,$B5,$91,$85,$13,$85,$23,$A9,$D0,$D0,$9E,$B1,$E7,$B1,$E7
       .byte $85,$2B,$B1,$E7,$85,$1F,$C8,$A6,$D1,$B5,$91,$85,$23,$A9,$D0,$85
       .byte $D9,$B1,$E5,$18,$85,$13,$90,$86,$85,$23,$0A,$0A,$D0,$15,$B1,$E7
       .byte $85,$1F,$30,$29,$85,$E7,$C8,$85,$2B,$B1,$E1,$D0,$EB,$C6,$D1,$A2
       .byte $32,$86,$D9,$AA,$B1,$E5,$30,$04,$A9,$00,$F0,$02,$B1,$DB,$85,$02
       .byte $85,$2A,$85,$1B,$86,$05,$B1,$E1,$85,$1E,$6C,$D7,$00,$C0,$55,$B0
       .byte $2D,$C8,$8D,$2B,$00,$B1,$E1,$D0,$1F,$C6,$D1,$A2,$32,$8E,$D9,$00
       .byte $AA,$B1,$E5,$30,$04,$A5,$D6,$F0,$02,$B1,$DB,$85,$2A,$85,$1B,$86
       .byte $05,$B1,$E1,$85,$1E,$6C,$D7,$00,$85,$23,$0A,$0A,$D0,$E2,$4C,$71
       .byte $F2,$85,$2B,$A6,$D5,$B5,$91,$85,$22,$A9,$EA,$85,$D7,$EA,$B1,$C8
       .byte $AA,$B1,$C6,$86,$0F,$AA,$B1,$E3,$85,$12,$86,$0E,$4C,$1D,$F1
LF351: .byte $3C,$44,$57,$62,$73,$85,$99,$B1,$CC,$E7
LF35B: .byte $7A,$78,$76,$74,$9B,$99,$97,$B2,$B0,$AE

START:
LF365: CLD            
       LDX    #$00    
       TXA            
LF369: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF369   
       JSR    LFE28   
LF372: LDA    #$3E    
       STA    TIM64T  
       JSR    LF55F   
LF37A: LDA    INTIM   
       BPL    LF37A   
       STA    WSYNC   
       LDX    #$03    
       STX    VSYNC   
LF385: STA    WSYNC   
       DEX            
       BNE    LF385   
       STX    VSYNC   
       LDA    #$4A    
       STA    TIM64T  
       JSR    LF7F1   
       JSR    LF832   
       JSR    LF880   
       LDA    SWCHB   
       LSR            
       BCC    LF365   
       JSR    LF3F0   
LF3A3: LDA    INTIM   
       BPL    LF3A3   
       JSR    LFC42   
       JMP    LF372   
LF3AE: TAY            
       AND    #$0F    
       STA    $CE     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       SEC            
       ADC    $CE     
       CMP    #$10    
       BCC    LF3C3   
       SBC    #$0F    
       INY            
LF3C3: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    $CE     
       ORA    $CE     
       RTS            

LF3CE: TAX            
       LSR            
       LSR            
       LSR            
       STA    $CE     
       TXA            
       LDX    $CE     
       ASL    $CE     
       AND    #$07    
       SEC            
       SBC    $CE     
       BCS    LF3E5   
LF3E0: DEX            
       ADC    #$0A    
       BCC    LF3E0   
LF3E5: RTS            

LF3E6: .byte $00,$05,$0A,$0F,$14,$19,$1E,$23,$28,$2D
LF3F0: LDY    #$01    
LF3F2: LDA.wy $0082,Y 
       LDX    #$00    
       CMP    #$64    
       BCC    LF3FF   
       LDX    #$02    
       SBC    #$64    
LF3FF: STX    $D9,Y   
       JSR    LF3CE   
       STA    $CE     
       LDA    LF3E6,X 
       BNE    LF40D   
       LDA    #$6C    
LF40D: STA.wy $00DB,Y 
       LDX    $CE     
       LDA    LF3E6,X 
       STA.wy $00DD,Y 
       DEY            
       BPL    LF3F2   
       LDA    $CC     
       JSR    LF3CE   
       LDY    LF3E6,X 
       STY    $E2     
       TAX            
       LDA    LF3E6,X 
       STA    $E4     
       LDA    $80     
       JSR    LF3CE   
       LDY    LF3E6,X 
       STY    $E6     
       TAX            
       LDA    LF3E6,X 
       STA    $E8     
       RTS            

LF43C: .byte $A5,$CA,$D0,$12,$A5,$85,$29,$07,$D0,$0C,$C6,$80,$10,$08,$C6,$CC
       .byte $30,$05,$A9,$3B,$85,$80,$60,$A9,$00,$85,$80,$85,$CC,$A5,$81,$49
       .byte $01,$F0,$10,$85,$81,$A9,$05,$85,$CB,$A9,$04,$85,$CA,$A9,$2D,$85
       .byte $CC,$D0,$04,$A9,$06,$85,$CA,$4C,$3F,$FF,$A0,$02,$A5,$85,$29,$03
       .byte $0A,$AA,$E8,$A9,$0E,$85,$CE,$A9,$7E,$85,$CF,$98,$48,$20,$A0,$F4
       .byte $E8,$68,$A8,$88,$D0,$F5,$24,$CB,$10,$2C,$A9,$83,$85,$CF,$E6,$CE
       .byte $E6,$CE,$A2,$00,$A5,$CE,$D5,$88,$F0,$1C,$B0,$06,$A5,$CF,$D5,$88
       .byte $B0,$14,$95,$88,$20,$AE,$F3,$95,$91,$A0,$00,$8A,$D0,$06,$A5,$AC
       .byte $20,$FD,$F6,$A8,$94,$AC,$60,$A0,$00,$A9,$0E,$38,$E5,$C6,$B0,$0C
       .byte $A0,$80,$A9,$9C,$38,$E5,$C6,$B0,$ED,$18,$69,$4F,$85,$D4,$84,$D3
       .byte $A0,$02,$A5,$85,$29,$03,$0A,$AA,$E8,$B5,$9A,$38,$E5,$D4,$6A,$45
       .byte $D3,$30,$10,$A5,$D4,$95,$9A,$A9,$07,$85,$CA,$98,$48,$8A,$20,$7E
       .byte $F7,$68,$A8,$E8,$88,$D0,$E2,$A5,$CA,$D0,$BB,$24,$CB,$10,$B7,$24
       .byte $D3,$10,$07,$A5,$D4,$18,$69,$04,$85,$D4,$A5,$9A,$38,$E5,$D4,$F0
       .byte $A5,$6A,$45,$D3,$30,$A0,$A5,$A3,$20,$FD,$F6,$85,$A3,$A5,$88,$C9
       .byte $3C,$90,$2B,$C9,$5A,$B0,$27,$A5,$D3,$0A,$2A,$45,$81,$49,$01,$AA
       .byte $F6,$82,$A9,$04,$85,$CA,$A9,$A0,$85,$88,$A9,$00,$85,$AC,$85,$A3
       .byte $A5,$D4,$85,$9A,$8A,$0A,$2A,$49,$05,$85,$CB,$4C,$3F,$FF,$A5,$D4
       .byte $85,$9A,$60
LF55F: INC    $A7     
       LDA    $CA     
       ASL            
       TAX            
       LDA    LF573,X 
       STA    $CE     
       INX            
       LDA    LF573,X 
       STA    $CF     
       JMP.ind ($00CE)
LF573: .byte $85,$F5,$22,$F6,$ED,$F8,$CE,$FE,$40,$FE,$73,$FE,$47,$FF,$E3,$FE
       .byte $E7,$FE,$20,$51,$F9,$20,$E9,$F5,$A5,$A6,$49,$80,$85,$A6,$30,$0F
       .byte $20,$DB,$FF,$20,$3C,$F4,$20,$76,$F4,$20,$10,$F7,$4C,$6A,$F7,$E6
       .byte $85,$20,$B9,$F9,$20,$C3,$F4,$20,$47,$F6,$4C,$B0,$F5,$A5,$CA,$D0
       .byte $17,$A6,$CB,$30,$13,$A5,$0D,$E0,$05,$F0,$02,$A5,$0C,$29,$80,$D0
       .byte $08,$A9,$01,$85,$CA,$20,$DC,$F9,$60,$B5,$9A,$18,$69,$05,$85,$9A
       .byte $A0,$08,$B5,$B5,$29,$08,$F0,$02,$A0,$00,$98,$18,$75,$88,$85,$88
       .byte $20,$AE,$F3,$85,$91,$60,$A2,$FF,$A5,$86,$F0,$02,$C6,$86,$24,$CB
       .byte $10,$03,$A8,$F0,$0E,$C9,$32,$B0,$1C,$E8,$A5,$CB,$29,$07,$C9,$01
       .byte $F0,$01,$E8,$86,$CE,$A0,$03,$B9,$02,$00,$29,$40,$F0,$04,$C4,$CE
       .byte $D0,$04,$88,$10,$F2,$60,$A5,$CA,$D0,$04,$A9,$02,$85,$CA,$60,$A9
       .byte $01,$85,$CE,$A6,$CB,$20,$03,$F7,$29,$07,$20,$AD,$F6,$A5,$CE,$85
       .byte $AC,$A5,$CF,$85,$A3,$A5,$CB,$09,$80,$85,$CB,$A9,$00,$85,$CA,$A9
       .byte $3C,$85,$86,$60,$A5,$84,$29,$07,$85,$CE,$AD,$80,$02,$29,$0F,$20
       .byte $E2,$F6,$85,$CF,$A5,$84,$4A,$4A,$4A,$4A,$29,$07,$85,$CE,$AD,$80
       .byte $02,$4A,$4A,$4A,$4A,$20,$E2,$F6,$0A,$0A,$0A,$0A,$05,$CF,$85,$84
       .byte $A2,$05,$A5,$85,$29,$01,$D0,$02,$A2,$01,$20,$03,$F7,$86,$D3,$AA
       .byte $29,$08,$D0,$15,$A9,$00,$A4,$CB,$C4,$D3,$D0,$02,$A9,$02,$85,$CE
       .byte $8A,$29,$07,$20,$AD,$F6,$4C,$A2,$F6,$A9,$00,$85,$CE,$85,$CF,$A6
       .byte $D3,$A5,$CE,$95,$AC,$A5,$CF,$95,$A3,$60,$06,$CE,$48,$29,$01,$18
       .byte $65,$CE,$AA,$68,$48,$38,$E9,$02,$20,$C7,$F6,$85,$CE,$68,$20,$C7
       .byte $F6,$85,$CF,$60,$85,$D0,$29,$03,$F0,$0E,$BD,$DC,$F6,$66,$D0,$66
       .byte $D0,$66,$D0,$B0,$03,$20,$FD,$F6,$60,$18,$11,$28,$1C,$14,$0E,$AA
       .byte $BD,$ED,$F6,$C9,$08,$D0,$02,$05,$CE,$60,$08,$08,$08,$08,$08,$07
       .byte $01,$00,$08,$05,$03,$04,$08,$06,$02,$08
LF6FD: EOR    #$FF    
       CLC            
       ADC    #$01    
       RTS            

LF703: .byte $A5,$84,$E0,$04,$B0,$04,$4A,$4A,$4A,$4A,$29,$0F,$60,$A2,$08,$A5
       .byte $85,$29,$01,$F0,$0B,$A2,$04,$A5,$A5,$18,$69,$09,$29,$0F,$85,$A5
       .byte $A5,$A5,$29,$0F,$85,$CF,$B5,$AC,$20,$5C,$F7,$75,$88,$95,$88,$20
       .byte $AE,$F3,$95,$91,$E0,$05,$F0,$04,$E0,$02,$10,$15,$B5,$A3,$20,$5C
       .byte $F7,$85,$CE,$75,$9A,$95,$9A,$8A,$F0,$07,$B5,$BD,$38,$E5,$CE,$95
       .byte $BD,$CA,$30,$04,$E0,$04,$D0,$CE,$60,$18,$65,$A5,$4A,$4A,$4A,$4A
       .byte $49,$08,$38,$E9,$08,$18,$60,$A5,$85,$0A,$29,$07,$18,$69,$01,$48
       .byte $20,$7E,$F7,$68,$18,$69,$01,$20,$7E,$F7,$60
LF77E: TAX            
       LDA    $B5,X   
       AND    #$FC    
       STA    $CE     
       EOR    $B5,X   
       CLC            
       ADC    #$01    
       AND    #$03    
       STA    $CF     
       LDA    $AC,X   
       CPX    #$05    
       BEQ    LF798   
       CPX    #$02    
       BCS    LF79A   
LF798: ORA    $A3,X   
LF79A: CMP    #$00    
       BEQ    LF7D0   
       LDA    $CF     
       ASL            
       ASL            
       ASL            
       STA    $D0     
       CPX    #$01    
       BEQ    LF7BA   
       CPX    #$05    
       BEQ    LF7BA   
       LDA    #$91    
       TAY            
       LDA    $AC,X   
       BPL    LF7E1   
       LDA    #$B9    
       TAY            
       JMP    LF7E1   
LF7BA: LDA    $CE     
       AND    #$F7    
       STA    $CE     
       LDA    #$6B    
       TAY            
       LDA    $AC,X   
       BPL    LF7E1   
       LDA    $CE     
       ORA    #$08    
       STA    $CE     
       JMP    LF7E1   
LF7D0: LDA    #$8B    
       CPX    #$01    
       BEQ    LF7DC   
       CPX    #$05    
       BEQ    LF7DC   
       LDA    #$B1    
LF7DC: TAY            
       LDA    #$00    
       STA    $D0     
LF7E1: TYA            
       CLC            
       ADC    $D0     
       SEC            
       SBC    $9A,X   
       STA    $BD,X   
       LDA    $CE     
       ORA    $CF     
       STA    $B5,X   
       RTS            

LF7F1: LDA    $C6     
       LSR            
       LSR            
       EOR    #$FF    
       SEC            
       ADC    #$3F    
       CMP    $9A     
       BEQ    LF831   
       BCS    LF804   
       LDA    #$01    
       BNE    LF806   
LF804: LDA    #$FF    
LF806: STA    $CE     
       CLC            
       ADC    $C6     
       CMP    #$AB    
       BCS    LF831   
       STA    $C6     
       STA    $C8     
       LDX    #$08    
LF815: LDA    $9A,X   
       CMP    #$5A    
       BCS    LF827   
       SEC            
       SBC    $CE     
       STA    $9A,X   
       LDA    $BD,X   
       CLC            
       ADC    $CE     
       STA    $BD,X   
LF827: DEX            
       BNE    LF815   
       LDA    $9A     
       SEC            
       SBC    $CE     
       STA    $9A     
LF831: RTS            

LF832: LDA    $CA     
       BEQ    LF83A   
       CMP    #$04    
       BNE    LF861   
LF83A: LDX    #$08    
LF83C: LDA    $9A,X   
       BEQ    LF844   
       CMP    #$E0    
       BCC    LF84A   
LF844: JSR    LF862   
       JMP    LF853   
LF84A: LDA    $9A,X   
       CMP    #$53    
       BCC    LF85E   
       JSR    LF871   
LF853: LDY    #$07    
       LDA    $CA     
       BEQ    LF85B   
       LDY    #$08    
LF85B: STY    $CA     
       RTS            

LF85E: DEX            
       BNE    LF83C   
LF861: RTS            

LF862: LDA    $9A,X   
       CLC            
       ADC    #$52    
       STA    $9A,X   
       LDA    $BD,X   
       SEC            
       SBC    #$52    
       STA    $BD,X   
       RTS            

LF871: LDA    $9A,X   
       SEC            
       SBC    #$52    
       STA    $9A,X   
       LDA    $BD,X   
       CLC            
       ADC    #$52    
       STA    $BD,X   
       RTS            

LF880: LDX    #$08    
       JSR    LF88B   
       LDX    #$04    
       JSR    LF88B   
       RTS            

LF88B: TXA            
       TAY            
       DEY            
       LDA    $99,X   
       CMP    $9A,X   
       BCS    LF8A4   
       LDA    $98,X   
       CMP    $99,X   
       BCS    LF8A1   
       DEY            
       JSR    LF8C1   
       JMP    LF8BA   
LF8A1: JSR    LF8C1   
LF8A4: LDA    $98,X   
       CMP    $99,X   
       BCS    LF8BA   
       DEX            
       DEY            
       JSR    LF8C1   
       INX            
       INY            
       LDA    $99,X   
       CMP    $9A,X   
       BCS    LF8BA   
       JSR    LF8C1   
LF8BA: RTS            

LF8BB: .byte $88,$91,$9A,$AC,$B5,$BD
LF8C1: STX    $CE     
       STY    $CF     
       LDA    #$05    
       STA    $D0     
       LDA    #$00    
       STA    $D2     
LF8CD: LDX    $D0     
       LDA    LF8BB,X 
       STA    $D1     
       LDY    $CE     
       LDA    ($D1),Y 
       TAX            
       LDY    $CF     
       LDA    ($D1),Y 
       LDY    $CE     
       STA    ($D1),Y 
       LDY    $CF     
       TXA            
       STA    ($D1),Y 
       DEC    $D0     
       BPL    LF8CD   
       LDX    $CE     
       RTS            

LF8ED: .byte $A6,$87,$A0,$08,$E8,$E0,$09,$30,$02,$A2,$01,$A5,$9A,$38,$F5,$9A
       .byte $E0,$01,$F0,$07,$E0,$05,$F0,$03,$38,$E9,$02,$18,$69,$02,$30,$12
       .byte $C9,$0C,$B0,$0E,$A5,$88,$38,$F5,$88,$18,$69,$02,$30,$04,$C9,$0C
       .byte $90,$05,$88,$D0,$CF,$F0,$24,$86,$87,$A0,$01,$E0,$05,$30,$02,$A0
       .byte $05,$84,$CB,$98,$48,$8A,$48,$20,$C1,$F8,$68,$20,$7E,$F7,$68,$20
       .byte $7E,$F7,$20,$DC,$F9,$A9,$00,$85,$AC,$85,$A3,$A9,$3C,$85,$86,$A9
       .byte $07,$85,$CA,$60,$A5,$A7,$29,$07,$C9,$02,$30,$5F,$AA,$C9,$05,$30
       .byte $01,$E8,$24,$CB,$10,$41,$A5,$9A,$38,$F5,$9A,$85,$CE,$C9,$00,$30
       .byte $04,$C9,$0C,$30,$08,$A4,$A3,$F0,$2E,$45,$A3,$10,$2A,$A0,$00,$A5
       .byte $AC,$F0,$11,$A5,$CE,$38,$E9,$04,$A8,$A5,$AC,$45,$CE,$10,$05,$98
       .byte $20,$FD,$F6,$A8,$98,$18,$65,$88,$A0,$18,$38,$F5,$88,$38,$E9,$04
       .byte $10,$02,$A0,$E8,$94,$AC,$60,$20,$DB,$FF,$29,$0F,$F0,$0B,$A8,$A9
       .byte $18,$C0,$02,$F0,$04,$B0,$04,$A9,$E8,$95,$AC,$60,$A9,$FF,$18,$65
       .byte $A9,$30,$05,$85,$A9,$85,$19,$60,$A5,$85,$29,$07,$D0,$25,$A6,$CB
       .byte $30,$21,$B5,$AC,$15,$A3,$F0,$1B,$20,$DB,$FF,$29,$03,$D0,$14,$20
       .byte $DB,$FF,$29,$03,$18,$69,$14,$85,$17,$A9,$08,$85,$19,$85,$A9,$A9
       .byte $0E,$85,$15,$60,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
       .byte $FF,$A4,$A4,$C4,$C4,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84
       .byte $84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$87
       .byte $87,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$FF,$FF,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$87,$87,$84,$84,$84,$84,$84,$84,$84,$84,$84
       .byte $84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84,$84
       .byte $84,$C4,$C4,$A4,$A4,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$F8,$F8,$08,$08,$08,$08,$08,$08,$08,$08,$FF
       .byte $FF,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$FE,$FE,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
       .byte $FF,$20,$20,$40,$40,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$80,$80,$40,$40,$20,$20,$20,$20,$10,$10
       .byte $10,$10,$1F,$1F,$10,$10,$10,$10,$20,$20,$20,$20,$40,$40,$80,$80
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80
       .byte $80,$40,$40,$20,$20,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$FE,$FE,$02,$02,$02,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$02,$FF,$FF,$08,$08,$08,$08,$08,$08,$08,$08,$F8
       .byte $F8,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF
LFC42: LDA    #$C7    
       SEC            
       SBC    $9A     
       STA    $E7     
       LDA    $9B     
       PHA            
       EOR    #$FF    
       SEC            
       ADC    #$64    
       STA    $E5     
       LDA    $9F     
       PHA            
       EOR    #$FF    
       SEC            
       ADC    #$64    
       STA    $E3     
       LDX    #$02    
LFC5F: LDA    $93,X   
       AND    #$0F    
       TAY            
       LDA    LF351,Y 
       STA    $CE,X   
       LDA    $97,X   
       AND    #$0F    
       TAY            
       LDA    LF35B,Y 
       STA    $D2,X   
       DEX            
       BPL    LFC5F   
       STX    $9B     
       STX    $9F     
       STA    WSYNC   
       LDA    #$10    
       STA    CTRLPF  
       LDA    #$28    
       STA    COLUP0  
       LDA    #$90    
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
       STA    $E0     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$B8    
       STA    COLUBK  
       STA    COLUPF  
       LDA    #$00    
       STA    VBLANK  
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    REFP0   
       STA    REFP1   
       LDX    $E2     
       LDA    LF0CC,X 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDY    #$05    
       STA    HMCLR   
LFCD6: STA    WSYNC   
       STA    HMOVE   
       TXA            
       LDX    $E4     
       INC    $E4     
       ORA    LF0CC,X 
       STA    PF2     
       LDX    $E6     
       INC    $E6     
       LDA    LF0CC,X 
       STA    PF0     
       LDA    #$2C    
       STA    COLUPF  
       LDX    $E8     
       LDA    LF000,X 
       NOP            
       STA    PF1     
       LDA    $D9     
       STA    ENAM0   
       LDA    #$B8    
       STA    COLUPF  
       INC    $E8     
       LDX    $DB     
       INC    $DB     
       STA    HMOVE   
       LDA    LF000,X 
       NOP            
       LDX    $DD     
       ORA    LF032,X 
       STA    GRP0    
       LDX    $DC     
       INC    $DC     
       LDA    LF000,X 
       NOP            
       LDX    #$2C    
       STX    COLUPF  
       LDX    $DA     
       STX    ENAM1   
       LDX    $DE     
       INC    $DE     
       ORA    LF032,X 
       STA    GRP1    
       LDA    #$B8    
       STA    COLUPF  
       INC    $DD     
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$02    
LFD39: DEX            
       BNE    LFD39   
       INC    $E2     
       LDX    $E2     
       LDA    LF0CC,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LDX    #$2C    
       STX    COLUPF  
       LSR    $E0     
       LDX    $E0     
       STX    ENABL   
       TAX            
       LDA    #$B8    
       NOP            
       DEY            
       STA    COLUPF  
       BEQ    LFD5D   
       JMP    LFCD6   
LFD5D: STY    GRP0    
       STY    ENAM0   
       STA    WSYNC   
       STA    HMOVE   
       STY    GRP1    
       STY    ENAM1   
       LDA    #$04    
       STA    $D5     
       ASL            
       STA    $D1     
       LDA    #$F0    
       STA    $E6     
       STA    $E4     
       STA    $E8     
       LDA    #$FF    
       STA    $DC     
       STA    $DE     
       STA    $E0     
       STA    $E2     
       LDA    $BE     
       STA    $DB     
       LDA    $C2     
       STA    $DD     
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    $D6     
       STA    WSYNC   
       STA    HMOVE   
       LDX    $81     
       LDA    LFDC1,X 
       STA    PF2     
       LDA    #$6E    
       STA    COLUPF  
       LDA    #$11    
       STA    CTRLPF  
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $B6     
       STA    REFP0   
       LDA    $BA     
       STA    REFP1   
       LDA    $96     
       LDY    #$03    
       STA    WSYNC   
       STA.w  $002A   
       BNE    LFDCA   
       .byte $14 ;.NOP
       BPL    LFDD2   
LFDC1: .byte $80 ;.NOP
       RTS            

LFDC3: STA    WSYNC   
       STA    HMOVE   
       LDA.wy $0090,Y 
LFDCA: LDX    LFDBD,Y 
       AND    #$0F    
       SEC            
LFDD0: SBC    #$01    
LFDD2: BPL    LFDD0   
       DEY            
       STA    VSYNC,X 
       BNE    LFDC3   
       STA    WSYNC   
       STA    HMOVE   
       STY    PF2     
       LDA    #$08    
       STA    COLUPF  
       LDA    #$54    
       STA    COLUBK  
       LDA    $91     
       STA    HMBL    
       LDA    $92     
       STA    HMP0    
       LDA    $96     
       STA    HMP1    
       STA    CXCLR   
       LDA    #$00    
       STA    $D7     
       LDA    #$F1    
       STA    $D8     
       LDA    #$32    
       STA    $D9     
       LDA    #$F2    
       STA    $DA     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($E5),Y 
       BPL    LFE15   
       LDA    ($DB),Y 
       STA.w  $001B   
       JMP    LF100   
LFE15: NOP            
       NOP            
       NOP            
       JMP.ind ($00D7)
LFE1B: .byte $85,$02,$A9,$02,$85,$01,$68,$85,$9F,$68,$85,$9B
LFE27: RTS            

LFE28: LDX    #$CD    
       LDY    #$07    
LFE2C: LDA    LFE38,Y 
       STA    VSYNC,X 
       DEX            
       DEY            
       BPL    LFE2C   
       JMP    LFE69   
LFE38: .byte $55,$FA,$55,$FB,$04,$01,$2D,$0F,$A9,$A0,$85,$91,$20,$47,$FF,$A5
       .byte $A9,$D0,$1D,$A5,$A7,$29,$03,$D0,$17,$85,$AC,$85,$A3,$85,$86,$A9
       .byte $01,$A6,$C6,$E0,$55,$F0,$0A,$90,$02,$A9,$FF,$18,$65,$9A,$85,$9A
       .byte $60
LFE69: LDA    #$05    
       STA    $CA     
       LDX    $CB     
       LDY    #$00    
       BEQ    LFE8B   
       LDA    #$4B    
       STA    $88     
       JSR    LF3AE   
       STA    $91     
       LDA    #$2B    
       STA    $9A     
       LDA    #$03    
       STA    $CA     
       LDA    $CB     
       EOR    #$04    
       TAX            
       LDY    #$04    
LFE8B: LDA    #$04    
       STA    $D4     
       TXA            
       LSR            
       LSR            
       EOR    $81     
       ROR            
       ROR            
       STA    $D3     
LFE98: LDA    LFFEA,Y 
       BIT    $D3     
       BPL    LFEA2   
       JSR    LF6FD   
LFEA2: CLC            
       ADC    #$26    
       STA    $9A,X   
       TYA            
       PHA            
       LDA    LFFF2,Y 
       STA    $88,X   
       JSR    LF3AE   
       STA    $91,X   
       LDA    #$00    
       STA    $AC,X   
       CPX    #$01    
       BEQ    LFEBF   
       CPX    #$05    
       BNE    LFEC1   
LFEBF: STA    $A3,X   
LFEC1: TXA            
       JSR    LF77E   
       PLA            
       TAY            
       INY            
       INX            
       DEC    $D4     
       BNE    LFE98   
       RTS            

LFECE: .byte $20,$47,$F6,$A6,$CB,$20,$03,$F7,$29,$08,$D0,$08,$85,$CA,$A5,$CB
       .byte $09,$80,$85,$CB,$60,$A9,$00,$F0,$02,$A9,$04,$85,$CA,$A0,$02,$A9
       .byte $0E,$38,$E5,$C6,$90,$01,$A8,$84,$D4,$A2,$02,$20,$FE,$FE,$A2,$06
       .byte $8A,$A8,$C8,$A9,$0A,$20,$0F,$FF,$C8,$A9,$14,$20,$0F,$FF,$E8,$A9
       .byte $0A,$85,$D5,$98,$48,$8A,$48,$B5,$9A,$38,$F9,$9A,$00,$C5,$D5,$B0
       .byte $1B,$84,$CF,$B5,$9A,$38,$E5,$D5,$C5,$D4,$B0,$08,$86,$CF,$B9,$9A
       .byte $00,$18,$65,$D5,$A6,$CF,$95,$9A,$8A,$20,$7E,$F7,$68,$AA,$68,$A8
       .byte $60,$A9,$0C,$85,$15,$A9,$5F,$85,$A9,$A5,$A9,$F0,$14,$C6,$A9,$29
       .byte $0C,$F0,$0E,$A5,$A9,$4A,$4A,$4A,$4A,$AA,$BD,$62,$FF,$85,$17,$A9
       .byte $0A,$85,$19,$60,$09,$09,$07,$09,$07,$09,$FF,$FF,$FF,$18,$18,$7E
       .byte $59,$3C,$26,$60,$00,$18,$18,$7E,$59,$3C,$26,$60,$00,$18,$18,$7E
       .byte $9A,$3C,$64,$06,$00,$18,$18,$7E,$9A,$3C,$64,$06,$00,$18,$18,$7E
       .byte $99,$3C,$24,$66,$00,$A6,$2A,$1A,$0A,$06,$16,$02,$00,$A6,$2A,$2A
       .byte $EA,$16,$1A,$02,$00,$B6,$2A,$2E,$FA,$F6,$2A,$D6,$00,$B6,$2A,$1A
       .byte $FA,$06,$16,$F2,$00,$B6,$06,$16,$1A,$06,$F2,$06,$00,$E6,$0A,$FA
       .byte $0A,$E6,$F6,$F2,$00,$E6,$0A,$EA,$2A,$D6,$1A,$D2,$00,$D6,$0A,$2E
       .byte $DA,$F6,$0A,$16,$00,$D6,$0A,$FA,$1A,$E6,$F6,$02,$00,$A5,$CD,$0A
       .byte $0A,$0A,$45,$CD,$0A,$26,$CD,$A5,$CD,$45,$85,$60
LFFEA: .byte $FD,$FB,$EE,$DF,$F6,$F8,$EE,$E4
LFFF2: .byte $45,$59,$46,$46,$30,$55,$45,$45,$65,$F3,$65,$F3,$65,$F3
