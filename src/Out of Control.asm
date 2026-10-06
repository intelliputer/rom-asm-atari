; Disassembly of roms/Out of Control.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Out of Control.bin
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
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
VDELBL  =  $27
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $1000
L1000: .byte $E3,$5D,$5D,$DD,$DD,$5D,$5D,$E3,$E3,$77,$77,$F7,$F7,$77,$67,$F7
       .byte $C1,$5F,$5F,$C1,$FD,$7D,$5D,$E3,$E3,$5D,$7D,$FB,$FB,$7D,$5D,$E3
       .byte $FB,$7B,$7B,$FB,$C1,$5B,$5B,$DB,$E3,$5D,$7D,$FD,$C3,$5F,$5F,$C1
       .byte $E3,$5D,$5D,$DD,$C3,$5F,$5D,$E3,$EF,$6F,$77,$F7,$FB,$7B,$5D,$C1
       .byte $E3,$5D,$5D,$E3,$E3,$5D,$5D,$E3,$E3,$5D,$7D,$E1,$DD,$5D,$5D,$E3
       .byte $3C,$3C,$E6,$E7,$7F,$3F,$3F,$7F,$7E,$7E,$FF,$7F,$FF,$3E,$1E,$0F
       .byte $00,$3C,$3C,$FE,$FF,$7F,$33,$33,$7F,$7E,$7E,$FF,$7F,$FF,$3E,$1E
       .byte $0F,$00,$3C,$3C,$FE,$FF,$7F,$3F,$3F,$7F,$66,$66,$FF,$7F,$FF,$3E
       .byte $1E,$0F,$00,$3C,$3C,$FE,$FF,$7F,$3F,$3F,$7F,$7E,$7E,$FF,$73,$F3
       .byte $3E,$1E,$0F,$00
L1094: .byte $3A,$8A,$38,$88,$36,$86,$34
L109B: .byte $00,$08,$08,$08,$00,$00,$00,$00,$FE,$FE,$7C,$7C,$7C,$38,$38,$38
       .byte $38,$10,$10,$10,$00,$00,$00,$00,$00,$10,$10,$18,$18,$3C,$3E,$3E
       .byte $3F,$78,$78,$60,$80,$80,$00,$00,$00,$00,$00,$00,$00,$03,$03,$0F
       .byte $3F,$FF,$FF,$3F,$0F,$03,$03,$00,$00,$00,$00,$00,$00,$80,$80,$60
       .byte $78,$78,$3F,$3E,$3E,$3C,$18,$18,$10,$10,$00,$00,$00,$00,$00,$10
       .byte $10,$10,$38,$38,$38,$38,$7C,$7C,$7C,$FE,$FE,$00,$00,$00
L10F9: .byte $E7,$D5,$C3,$B1,$A0,$B1,$C3,$D5
L1101: .byte $04,$02,$00,$02,$04,$07,$0A,$07
L1109: .byte $00,$03,$06,$0A,$0D,$0A,$06,$03,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00
L112D: .byte $00,$00,$00,$00,$80,$80,$80,$80
L1135: .byte $08,$27,$48,$27,$27,$5A,$25,$72,$42,$06,$24,$48,$65,$08,$24,$50
       .byte $5A,$40,$18,$24
L1149: .byte $50,$50,$50,$62,$62,$62,$62,$62,$62,$63,$50,$50,$50,$62,$62,$61
       .byte $63,$60,$62,$51,$50
L115E: .byte $30,$30,$30,$40,$30,$30,$30,$30,$46,$30,$30,$30,$30,$40,$30,$30
       .byte $30,$30,$46,$2E,$00,$C7
L1174: .byte $37,$67,$CA,$D7,$33,$98,$47,$39,$C7,$35,$47,$29,$2C,$28,$84,$99
       .byte $54,$3A,$2E,$86,$42,$24,$76,$83,$94,$1A,$0F,$65,$88,$35,$75,$18
       .byte $55,$47,$67,$27,$16,$AA,$24,$55,$56,$A9,$64,$40,$65,$48,$16
L11A3: .byte $04,$05,$02,$06,$03,$04,$07,$02,$02,$03,$02,$00,$02,$04,$02,$02
       .byte $07,$02,$02,$02
L11B7: .byte $09,$09,$08,$18,$08,$09,$09,$08,$18,$08,$09,$09,$10,$18,$08,$09
       .byte $09,$08,$18,$08,$3C,$3C,$3C,$FF,$FF,$3C,$3C,$3C,$00,$C0,$C0,$60
       .byte $18,$18,$06,$03,$03,$00,$18,$18,$FF,$FF,$FF,$FF,$18,$18,$00,$03
       .byte $03,$06,$18,$18,$60,$C0,$C0,$00
L11EF: .byte $13,$13,$11,$13,$12,$13,$13,$11,$13,$12,$13,$13,$10,$13,$12,$13
       .byte $13,$11,$13,$12,$5B,$81,$42,$93,$74,$35,$86,$27,$28,$69,$9A,$7B
       .byte $2C,$1D,$6E,$2F,$10,$11,$12,$13,$09,$11,$03,$04,$53,$13,$84,$12
       .byte $38,$63,$93,$75,$61,$71,$64,$10,$AE,$2F,$4B,$12,$76,$31,$76,$51
       .byte $26,$81,$26,$41,$7A,$4B,$5A,$69,$81,$25,$54,$13,$41,$66,$39,$72
       .byte $89,$23,$13,$10,$14,$14,$14,$14,$03,$03,$03,$07,$07,$07,$07,$0F
       .byte $0F,$0F,$0F,$1F,$1F,$1F,$1F,$39,$39,$39,$30,$70,$70,$70,$E0,$E0
       .byte $E0,$E0,$70,$70,$70,$30,$39,$39,$39,$1F,$1F,$1F,$1F,$0F,$0F,$0F
       .byte $0F,$07,$07,$07,$07,$03,$03,$03,$7E,$7E,$7E,$7E,$03,$03,$00,$C0
       .byte $C0,$7E,$7E,$7E,$7E,$C0,$C0,$00,$30,$30,$7E,$7E,$7E,$7E,$30,$30
       .byte $00,$0C,$0C,$7E,$7E,$7E,$7E,$0C,$0C,$00,$0B,$13
L129B: .byte $B0,$9C,$A6,$B0,$74,$7E,$88,$92,$CB,$D4,$DD,$E6,$0C,$29,$42,$5B
       .byte $7E,$87,$90,$75,$9C,$A6,$9C,$A6,$74,$7E,$88,$92,$E6,$DD,$D4,$CB
       .byte $0C,$42,$29,$5B,$7E,$87,$90,$75,$A6,$9C,$B0,$A6,$74,$7E,$88,$92
       .byte $50,$61,$72,$83,$5B,$42,$29,$0C,$75,$90,$87,$7E,$9C,$9C,$A6,$A6
       .byte $74,$7E,$88,$92,$DD,$CB,$D4,$E6,$0C,$29,$42,$5B,$7E,$87,$90,$75
       .byte $14,$14,$14,$14,$02
L12F0: .byte $4E,$16,$1F,$18,$9D,$1B,$C0,$17,$B6,$18,$FA,$13,$93,$13,$B9,$1F
       .byte $56,$1C,$EF,$12,$97,$19,$03,$12,$69,$1F,$99,$12,$18,$3C,$3C,$FF
       .byte $FF,$99,$99,$99,$99,$FF,$FF,$FF,$FF,$C0,$C0,$C0,$FF,$FF,$FF,$EE
       .byte $CC,$88,$88,$88,$00,$14,$14,$14,$14,$18,$3C,$3C,$FF,$FF,$A5,$A5
       .byte $A5,$A5,$FF,$FF,$FF,$FF,$30,$30,$30,$FF,$FF,$FF,$DB,$DB,$92,$92
       .byte $92,$00,$18,$3C,$3C,$FF,$FF,$C3,$C3,$C3,$C3,$FF,$FF,$FF,$FF,$0C
       .byte $0C,$0C,$FF,$FF,$FF,$24,$24,$24,$24,$24,$00,$18,$3C,$3C,$FF,$FF
       .byte $DB,$DB,$DB,$DB,$FF,$FF,$FF,$FF,$03,$03,$03,$FF,$FF,$FF,$77,$33
       .byte $11,$11,$11,$00,$18,$3C,$7E,$FF,$F9,$FF,$7E,$3C,$18,$00,$18,$3C
       .byte $7E,$FF,$E7,$FF,$7E,$3C,$18,$00,$18,$3C,$7E,$FF,$9F,$FF,$7E,$3C
       .byte $18,$00,$18,$3C,$6E,$DF,$81,$DF,$6E,$3C,$18,$00,$81,$18,$3C,$66
       .byte $42,$66,$3C,$18,$81,$00,$7E,$E7,$C3,$81,$81,$81,$C3,$E7,$7E,$00
       .byte $81,$42,$18,$18,$3C,$18,$18,$42,$81,$00,$14,$14,$14,$14
L13BE: .byte $01
L13BF: .byte $08
L13C0: .byte $01
L13C1: .byte $03
L13C2: .byte $02
L13C3: .byte $00,$00,$0F,$13,$0C,$15,$3F,$00,$05,$10,$0C,$05,$33,$01,$05,$06
       .byte $0C,$04,$01,$00,$0C,$0C,$0C,$02,$00,$00,$07,$07,$07,$07,$43,$00
       .byte $06,$18,$0E,$05,$93,$00,$0C,$1F,$0D,$05,$09,$01,$05,$0F,$0A,$10
       .byte $80,$01,$05,$14,$0A,$10,$80,$01,$05,$1C,$0A,$10,$80,$01,$05,$08
       .byte $0A,$30,$00,$31,$59,$10,$63,$9A,$13,$95,$98,$08,$07,$02,$0F,$11
       .byte $0E,$12,$03,$7D,$42,$2C,$89,$54,$A9,$54,$29,$74,$34,$13,$14,$14
       .byte $14,$14
L1425: .byte $02,$01,$02,$02,$02,$01,$01,$02,$02,$18,$3C,$7E,$FF,$99,$99,$FF
       .byte $FF,$99,$99,$FF,$7E,$3C,$18,$00,$18,$24,$42,$81,$81,$81,$81,$81
       .byte $42,$24,$18,$00,$02,$40,$88,$40,$01,$80,$08,$20,$00
L1452: .byte $2E,$49,$3D
L1455: LDX    #$00    
       LDA    $A8     
       JSR    L1AA1   
       LDX    $94     
       LDA    L1109,X 
       CLC            
       ADC    #$11    
       STA    $AA     
       LDA    L1101,X 
       CLC            
       ADC    $A8     
       LDX    #$04    
       JSR    L1AA1   
       STA    WSYNC   
       STA    HMOVE   
       STA    CXCLR   
       LDX    #$B6    
       STX    $D6     
       RTS            

L147C: LDX    #$02    
L147E: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $80,X   
       AND    #$F0    
       LSR            
       STA.wy $00C0,Y 
       LDA    $80,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00C2,Y 
       DEX            
       BPL    L147E   
       RTS            

L1498: .byte $8F,$11,$35,$11,$3F,$11,$99,$11,$2B,$12,$0B,$12,$1B,$12,$23,$12
       .byte $2B,$12,$33,$12,$39,$12,$8F,$11,$39,$12,$0B,$12
L14B4: .byte $99,$11,$99,$11,$99,$11,$8F,$11,$0B,$12,$2B,$12,$33,$12,$23,$12
       .byte $8F,$11,$0B,$12,$2B,$12,$23,$12,$33,$12,$16,$14
L14D0: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    SWCHB   
       LSR            
       BCS    L14E1   
L14DC: LDY    $BA     
       JMP    L1AC2   
L14E1: STA    WSYNC   
       LDX    $B3     
       BPL    L14FE   
       LDA    $B1     
       BNE    L1521   
       LDY    #$01    
       LDA    INPT5   
       BPL    L14F6   
       DEY            
       LDA    INPT4   
       BMI    L1521   
L14F6: STY    $B3     
       TYA            
       TAX            
       LDA    #$60    
       STA    $B1     
L14FE: LDA    SWCHA   
       CPX    #$00    
       BNE    L1509   
       LSR            
       LSR            
       LSR            
       LSR            
L1509: AND    #$0F    
       EOR    #$0F    
       BEQ    L1511   
       ORA    #$40    
L1511: STA    $83     
       TAY            
       LDA    $B1     
       BNE    L1521   
       LDA    INPT4,X 
       BMI    L1521   
       TYA            
       ORA    #$80    
       STA    $83     
L1521: STA    WSYNC   
       LDA    $B3     
       BMI    L1532   
       LDA    $A2     
       BNE    L1532   
       LDY    #$12    
       STY    $A2     
       JSR    L19DA   
L1532: LDX    #$01    
       STX    CTRLPF  
       INX            
       STX    WSYNC   
       STX    VSYNC   
       LDA    #$1E    
       JSR    L1AA1   
       LDA    #$00    
       STA    COLUPF  
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       LDA    #$21    
       STA    TIM64T  
       INC    $91     
       LDA    $B1     
       BEQ    L1557   
       DEC    $B1     
L1557: DEX            
L1558: LDA    $8A,X   
       BEQ    L15B1   
       DEC    $8A,X   
       BNE    L1579   
       LDA    $8C,X   
       BPL    L1573   
       CLC            
       LDA    $84,X   
       ADC    #$06    
       TAY            
       STX    $92     
       JSR    L19DA   
       LDX    $92     
       BPL    L15B1   
L1573: LDA    #$00    
       STA    AUDV0,X 
       BEQ    L15B1   
L1579: LDA    $8C,X   
       AND    #$7F    
       BEQ    L15B1   
       TAY            
       AND    #$07    
       ASL            
       AND    $8A,X   
       BNE    L15B1   
       TYA            
       AND    #$40    
       BNE    L1591   
       INC    $88,X   
       JMP    L1598   
L1591: TYA            
       AND    #$20    
       BNE    L159C   
       DEC    $88,X   
L1598: LDA    $88,X   
       STA    AUDV0,X 
L159C: TYA            
       AND    #$10    
       BNE    L15A6   
       INC    $86,X   
       JMP    L15AD   
L15A6: TYA            
       AND    #$08    
       BNE    L15B1   
       DEC    $86,X   
L15AD: LDA    $86,X   
       STA    AUDF0,X 
L15B1: DEX            
       BPL    L1558   
       LDA    $AE     
       BEQ    L15BB   
       JMP    L1636   
L15BB: LDA    $91     
       AND    #$0F    
       BNE    L15EA   
       LDA    $83     
       LSR            
       BCC    L15D5   
       SED            
       LDA    $BA     
       CLC            
       ADC    #$01    
       CLD            
       CMP    #$29    
       BCC    L15E3   
       LDA    #$01    
       BNE    L15E3   
L15D5: LSR            
       BCC    L15EA   
       SED            
       LDA    $BA     
       SEC            
       SBC    #$01    
       CLD            
       BNE    L15E3   
       LDA    #$28    
L15E3: STA    $BA     
       LDY    #$18    
       JSR    L19DA   
L15EA: LDA    $BA     
       CMP    #$20    
       BCC    L15F5   
       LDY    #$0C    
       JMP    L15FB   
L15F5: CMP    #$10    
       BCC    L1600   
       LDY    #$06    
L15FB: STY    $A4     
       SEC            
       SBC    $A4     
L1600: TAX            
       DEX            
       TXA            
       LSR            
       PHA            
       ASL            
       TAX            
       INX            
       LDY    #$01    
L160A: LDA    L12F0,X 
       STA.wy $00B6,Y 
       LDA    L1498,X 
       STA.wy $00CD,Y 
       LDA    L14B4,X 
       STA.wy $00DD,Y 
       DEX            
       DEY            
       BPL    L160A   
       PLA            
       TAX            
       LDY    L1640,X 
       STY    $B9     
       INY            
       INY            
       STY    $B8     
       LDA    $83     
       BPL    L164E   
       LDY    #$1E    
       STY    $AE     
       JSR    L19DA   
L1636: LDA    SWCHB   
       AND    #$08    
       BNE    L1651   
       JMP    L1712   
L1640: .byte $0A,$0E,$16,$1B,$23,$27,$27,$2F,$33,$36,$3F,$40,$48,$52
L164E: JMP    L16F4   
L1651: LDA    $E6     
       BEQ    L165C   
       JMP    L16DF   
L1658: .byte $14,$14,$14,$14
L165C: SED            
       LDY    #$00    
       LDX    $8F     
       LDA    L1425,X 
       STA    $A4     
       INC    $8F     
       LDA    $8F     
       CMP    #$09    
       BNE    L1670   
       STY    $8F     
L1670: LDA    $82     
       CLC            
       ADC    $A4     
       STA    $82     
       BCC    L168F   
       STY    $82     
       LDA    $81     
       CLC            
       ADC    #$01    
       STA    $81     
       CMP    #$60    
       BNE    L168F   
       STY    $81     
       LDA    $80     
       CLC            
       ADC    #$01    
       STA    $80     
L168F: LDX    $80     
       CPX    #$60    
       BNE    L16A3   
       LDX    #$59    
       STX    $80     
       STX    $81     
       LDA    #$99    
       STA    $82     
       INC    $E6     
       INC    $B2     
L16A3: CLD            
       LDA    $D5     
       CMP    #$02    
       BEQ    L16B5   
       JSR    L18FA   
       JSR    L18FA   
       LDA    $BA     
       LSR            
       BCC    L16B8   
L16B5: JSR    L18FA   
L16B8: LDX    #$01    
L16BA: CLC            
       LDA    $E2,X   
       ADC    $A6,X   
       STA    $A6,X   
       LDA    $E4,X   
       PHP            
       ADC    $A8,X   
       STA    $A8,X   
       CPX    #$01    
       BNE    L16D6   
       PLP            
       LDA    $E4,X   
       ADC    $96     
       STA    $96     
       JMP    L16D7   
L16D6: PLP            
L16D7: DEX            
       BPL    L16BA   
       JSR    L18B2   
       BPL    L16F4   
L16DF: LDA    $E6     
       CMP    #$02    
       BPL    L16ED   
       INC    $E6     
       LDA    #$FF    
       STA    $B1     
       BMI    L16F4   
L16ED: LDA    $83     
       BPL    L16F4   
       JMP    L14DC   
L16F4: LDA    $B5     
       BEQ    L1706   
       LDA    $97     
       CMP    #$04    
       BEQ    L1702   
       DEC    $97     
       BPL    L1712   
L1702: DEC    $B5     
       BPL    L1712   
L1706: LDA    $97     
       CMP    #$7A    
       BEQ    L1710   
       INC    $97     
       BPL    L1712   
L1710: INC    $B5     
L1712: JSR    L18ED   
       LDA    #$87    
       STA    COLUP0  
       LDA    $A8     
       BMI    L1725   
       CMP    #$07    
       BCS    L1725   
       LDA    #$06    
       BNE    L172B   
L1725: CMP    #$9A    
       BCC    L1730   
       LDA    #$9A    
L172B: STA    $A8     
       JSR    L18AD   
L1730: LDA    SWCHB   
       AND    #$08    
       BNE    L173C   
       INC    $A3     
       JMP    L1740   
L173C: LDA    #$0F    
       STA    $A3     
L1740: LDX    #$03    
       LDA    #$3D    
       JSR    L1AA1   
       LDA    $D5     
       BEQ    L174E   
       JMP    L1841   
L174E: LDA    $9A     
       BEQ    L1786   
       LDA    $9E     
       BNE    L1786   
       LDA    $AD     
       BNE    L1771   
       LDA    $B4     
       BEQ    L1771   
       CMP    #$01    
       BEQ    L176B   
       LDX    $9B     
       INX            
       CPX    $B4     
       BNE    L176B   
       DEC    $B4     
L176B: DEC    $B4     
       LDA    #$01    
       STA    $AD     
L1771: LDY    #$00    
       STY    $E2     
       STY    $E3     
       STY    $E4     
       STY    $E5     
       LDY    #$06    
       JSR    L19DA   
       LDA    #$30    
       STA    $9E     
       BNE    L178C   
L1786: LDA    $9E     
       BEQ    L178C   
       DEC    $9E     
L178C: LDX    $9B     
       CPX    $B8     
       BNE    L17A1   
       LDA    $A9     
       CMP    #$22    
       BCC    L17A1   
       LDA    #$23    
       STA    $A9     
       LDA    #$35    
       JSR    L18A7   
L17A1: LDA    $9B     
       BNE    L17B4   
       LDA    $A9     
       CMP    #$13    
       BPL    L17B4   
       LDA    #$12    
       STA    $A9     
       LDA    #$24    
       JSR    L18A7   
L17B4: LDA    $96     
       BEQ    L1800   
       BMI    L17DF   
L17BA: INC    $9D     
       DEC    $96     
       LDA    $96     
       BNE    L17BA   
       LDY    $9C     
       JSR    L1AB7   
       TAX            
       LDA    $9D     
       CLC            
       ADC    #$16    
       SEC            
       SBC    L1149,X 
       BEQ    L1800   
       BMI    L1800   
       STA    $9D     
       INC    $9C     
       BPL    L1800   
       .byte $14 ;.NOP
       .byte $14 ;.NOP
       .byte $14 ;.NOP
       .byte $14 ;.NOP
L17DF: DEC    $9D     
       INC    $96     
       LDA    $96     
       BNE    L17DF   
       LDA    $9D     
       CMP    #$01    
       BPL    L1800   
       DEC    $9C     
       LDY    $9C     
       JSR    L1AB7   
       TAX            
       LDA    $9D     
       CLC            
       ADC    L1149,X 
       SEC            
       SBC    #$16    
       STA    $9D     
L1800: LDY    $9B     
       JSR    L1AB7   
       TAX            
       LDA    $A9     
       CMP    #$12    
       BMI    L1818   
       LDA    L1149,X 
       SEC            
       SBC    #$05    
       CMP    $A9     
       BMI    L1831   
       BPL    L183E   
L1818: DEC    $9B     
       LDY    $9B     
       JSR    L1AB7   
       TAX            
       LDA    $A9     
       SEC            
       SBC    #$16    
       CLC            
       ADC    L1149,X 
       STA    $A9     
       BPL    L183E   
       .byte $14 ;.NOP
       .byte $14 ;.NOP
       .byte $14 ;.NOP
       .byte $14 ;.NOP
L1831: LDA    $A9     
       SEC            
       SBC    L1149,X 
       CLC            
       ADC    #$16    
       STA    $A9     
       INC    $9B     
L183E: JMP    L1889   
L1841: LDA    $A9     
       BMI    L184D   
       CMP    #$13    
       BCS    L1858   
       LDA    #$12    
       BNE    L1853   
L184D: CMP    #$B5    
       BCC    L1858   
       LDA    #$B5    
L1853: STA    $A9     
       JSR    L18AD   
L1858: LDA    #$14    
       STA    $BC     
       LDX    #$00    
       LDA    $CC     
       BEQ    L186A   
       CMP    #$0A    
       BCC    L1867   
       INX            
L1867: INX            
       DEC    $CC     
L186A: LDA    L1452,X 
       STA    $BB     
       LDA    $BF     
       BNE    L1889   
       LDA    $CC     
       BNE    L1889   
       LDY    $D8     
       CPY    #$0A    
       BNE    L187F   
       INC    $D5     
L187F: LDA    ($CD),Y 
       STA    $BE     
       LDA    ($DD),Y 
       STA    $BD     
       STY    $BF     
L1889: LDA    $83     
       BNE    L1897   
       LDA    $91     
       AND    #$FF    
       BNE    L189B   
       INC    $D7     
       BNE    L189B   
L1897: LDA    #$00    
       STA    $D7     
L189B: LDX    INTIM   
       BNE    L189B   
       STX    WSYNC   
       STX    VBLANK  
       STX    $9A     
       RTS            

L18A7: STA    $9D     
       LDA    #$00    
       STA    $96     
L18AD: LDA    #$37    
       STA    COLUP0  
       RTS            

L18B2: LDA    $91     
       AND    #$03    
       BNE    L18ED   
       LDA    $83     
       AND    #$08    
       BEQ    L18DD   
       INC    $94     
       LDA    $94     
       CMP    #$08    
       BNE    L18CA   
       LDA    #$00    
       STA    $94     
L18CA: JMP    L18ED   
L18CD: .byte $13,$01,$0B,$10,$06,$01,$0B,$10,$06,$01,$0C,$12,$14,$14,$14,$14
L18DD: LDA    $83     
       AND    #$04    
       BEQ    L18ED   
       DEC    $94     
       LDA    $94     
       BPL    L18ED   
       LDA    #$07    
       STA    $94     
L18ED: LDX    $94     
       LDA    L10F9,X 
       STA    $E0     
       LDA    L109B,X 
       STA    REFP0   
       RTS            

L18FA: LDA    $83     
       BPL    L194E   
       LDA    #$0F    
       STA    COLUPF  
       LDY    #$00    
       JSR    L19DA   
       LDX    $94     
       BNE    L190E   
       JSR    L1977   
L190E: CPX    #$01    
       BNE    L1918   
       JSR    L19A3   
       JSR    L1977   
L1918: CPX    #$02    
       BNE    L191F   
       JSR    L19A3   
L191F: CPX    #$03    
       BNE    L1929   
       JSR    L19A3   
       JSR    L1989   
L1929: CPX    #$04    
       BNE    L1930   
       JSR    L1989   
L1930: CPX    #$05    
       BNE    L193A   
       JSR    L19B5   
       JSR    L1989   
L193A: CPX    #$06    
       BNE    L1941   
       JSR    L19B5   
L1941: CPX    #$07    
       BNE    L194E   
       JSR    L1977   
       JSR    L19B5   
       JMP    L1976   
L194E: LDA    $91     
       AND    #$0F    
       BNE    L1976   
       LDA    $E4     
       BPL    L195E   
       JSR    L19A3   
       JMP    L1965   
L195E: LDA    $E2     
       BEQ    L1965   
       JSR    L19B5   
L1965: LDA    $E5     
       BPL    L196F   
       JSR    L1977   
       JMP    L1976   
L196F: LDA    $E3     
       BEQ    L1976   
       JSR    L1989   
L1976: RTS            

L1977: INC    $E3     
       BNE    L1980   
       INC    $E5     
       JMP    L1988   
L1980: LDA    $E5     
       CMP    #$06    
       BNE    L1988   
       DEC    $E3     
L1988: RTS            

L1989: LDA    $E3     
       BNE    L198F   
       INC    $E3     
L198F: DEC    $E3     
       BNE    L199A   
       DEC    $E5     
       DEC    $E3     
       JMP    L19A2   
L199A: LDA    $E5     
       CMP    #$FA    
       BNE    L19A2   
       INC    $E3     
L19A2: RTS            

L19A3: INC    $E2     
       BNE    L19AC   
       INC    $E4     
       JMP    L19B4   
L19AC: LDA    $E4     
       CMP    #$06    
       BNE    L19B4   
       DEC    $E2     
L19B4: RTS            

L19B5: LDA    $E2     
       BNE    L19BB   
       INC    $E2     
L19BB: DEC    $E2     
       BNE    L19C6   
       DEC    $E4     
       DEC    $E2     
       JMP    L19CE   
L19C6: LDA    $E4     
       CMP    #$FA    
       BNE    L19CE   
       INC    $E2     
L19CE: RTS            

L19CF: .byte $0B,$06,$01,$06,$0B,$06,$01,$14,$14,$14,$14
L19DA: LDA    $D7     
       CMP    #$F0    
       BCS    L1A02   
       LDX    L13BE,Y 
       STY    $84,X   
       LDA    L13BF,Y 
       STA    AUDC0,X 
       LDA    L13C0,Y 
       STA    AUDF0,X 
       STA    $86,X   
       LDA    L13C1,Y 
       STA    AUDV0,X 
       STA    $88,X   
       LDA    L13C2,Y 
       STA    $8A,X   
       LDA    L13C3,Y 
       STA    $8C,X   
L1A02: RTS            

L1A03: .byte $14,$14,$14,$14
L1A07: LDA    CXPPMM  
       AND    #$80    
       STA    $9A     
       LDX    #$00    
       STX    COLUPF  
       STX    GRP0    
       STX    GRP1    
       STX    REFP0   
       STX    REFP1   
L1A19: LDA    INTIM   
       CMP    #$18    
       BNE    L1A19   
       LDA    #$3E    
       JSR    L1AA1   
       LDA    #$10    
       JSR    L1AF7   
       LDX    #$01    
       LDA    #$45    
       JSR    L1AA1   
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       STX    COLUP0  
       STX    COLUP1  
       JSR    L147C   
       STA    HMCLR   
       STA    WSYNC   
       LDY    #$FC    
       STY    PF2     
       LDA    #$13    
       STA    ENAM0   
       STA    ENAM1   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$FE    
L1A51: INX            
       TXA            
       PHA            
       CPX    #$06    
       BNE    L1A51   
       LDA    #$07    
       STA    $92     
       STA    VDELP0  
       STA    VDELP1  
       STA    VDELBL  
       LDX    $A3     
       STX    COLUPF  
L1A66: TAY            
       LDA    ($CA),Y 
       STA    $93     
       STA    WSYNC   
       LDA    ($C8),Y 
       ORA    L112D,Y 
       TAX            
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    ($C4),Y 
       STA    GRP0    
       LDA    ($C6),Y 
       LDY    $93     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       PLA            
       BPL    L1A66   
       LDA    #$00    
       STA    PF2     
       STA    ENAM0   
       STA    ENAM1   
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP1  
       RTS            

L1AA1: STA    WSYNC   
       SEC            
L1AA4: SBC    #$0F    
       BCS    L1AA4   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       RTS            

L1AB7: LDA    ($B6),Y 
       CMP    #$15    
       BCC    L1ABF   
       AND    #$0F    
L1ABF: RTS            


START:
       LDY    #$01    
L1AC2: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L1AC9: STA    VSYNC,X 
       INX            
       BNE    L1AC9   
       INX            
       STX    $9C     
       CPY    #$00    
       BNE    L1AD6   
       INY            
L1AD6: STY    $BA     
       LDA    #$80    
       STA    $B3     
       LDA    #$10    
       STA    $E1     
       LDA    #$50    
       STA    $A8     
       LDA    #$11    
       STA    $AB     
       LDA    #$13    
       STA    $A9     
       LDA    #$25    
       STA    $97     
       STA    $9D     
       STA    $B1     
       JMP    L1C90   
L1AF7: LDX    #$0A    
L1AF9: STA    $C1,X   
       DEX            
       DEX            
       BPL    L1AF9   
       RTS            

L1B00: LDY    $95     
       LDA    $A9     
       CMP    L115E,Y 
       STA    WSYNC   
       BCC    L1B19   
       LDA    L115E,Y 
       CLC            
       ADC    #$05    
       CMP    $A9     
       BCC    L1B19   
       LDA    $A8     
       STA    $9F     
L1B19: LDA    L1149,Y 
       SEC            
       SBC    $D6     
       CMP    #$01    
       BPL    L1B2D   
       LDA    $D6     
       SEC            
       SBC    L1149,Y 
       STA    $D6     
       LDA    #$00    
L1B2D: STA    $8E     
       LDA    L11A3,Y 
       CMP    #$03    
       BNE    L1B3A   
       LDA    $97     
       BNE    L1B3D   
L1B3A: LDA    L1135,Y 
L1B3D: LDX    #$01    
       JSR    L1AA1   
       DEX            
       TYA            
       LSR            
       BCC    L1B49   
       LDX    #$08    
L1B49: STX    REFP1   
       LDA    $B4     
       CMP    $A1     
       BNE    L1B59   
       CMP    $B9     
       BEQ    L1B59   
       LDA    #$0F    
       BNE    L1B5C   
L1B59: LDA    L1174,Y 
L1B5C: STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    L1149,Y 
       SEC            
       SBC    #$06    
       TAX            
       LDA    L115E,Y 
       STA    $99     
       LDA    L11A3,Y 
       STA    NUSIZ1  
       LDA    $A5     
       ASL            
       TAY            
       LDA.wy $00C0,Y 
       STA    $DB     
       LDA.wy $00C1,Y 
       STA    $DC     
       STA    HMCLR   
       LDY    #$00    
L1B85: STA    WSYNC   
       CPX    $99     
       BCS    L1BB7   
       LDA    ($DB),Y 
       STA    GRP1    
       BEQ    L1B93   
       INC    $DB     
L1B93: TXA            
       SEC            
       SBC    $A9     
       BPL    L1BA9   
       CMP    #$EF    
       BCC    L1BA9   
       LDA    ($E0),Y 
       STA    GRP0    
       LDA    ($AA),Y 
       STA    ENABL   
       INC    $E0     
       INC    $AA     
L1BA9: DEX            
       CPX    $8E     
       BPL    L1B85   
       CPX    #$FF    
       BNE    L1BE5   
       RTS            

L1BB3: .byte $14,$14,$14,$14
L1BB7: STY    GRP1    
       BCS    L1B93   
L1BBB: LDA    $A5     
       BNE    L1BCD   
       LDX    $9D     
       CPX    #$07    
       BPL    L1BCD   
L1BC5: STA    WSYNC   
       DEC    $D6     
       DEX            
       BNE    L1BC5   
       RTS            

L1BCD: STA    WSYNC   
       LDX    #$00    
       LDA    $95     
       LSR            
       BCC    L1BD8   
       LDX    #$08    
L1BD8: STX    REFP1   
       LDA    $D6     
       SEC            
       SBC    #$06    
       STA    $D6     
       BEQ    L1BE5   
       BCS    L1BE8   
L1BE5: JMP    L1DE3   
L1BE8: LDY    #$00    
       LDA    $A1     
       CMP    $9B     
       PHP            
       BMI    L1BF3   
       LDY    #$16    
L1BF3: STY    $AC     
       LDY    $95     
       LDA    L11A3,Y 
       CMP    #$03    
       BNE    L1C02   
       LDA    $97     
       BNE    L1C05   
L1C02: LDA    L1135,Y 
L1C05: LDX    #$01    
       JSR    L1AA1   
       LDX    $95     
       LDA    $B4     
       CMP    $A1     
       BNE    L1C1A   
       CMP    $B9     
       BEQ    L1C1A   
       LDA    #$0F    
       BNE    L1C1D   
L1C1A: LDA    L1174,X 
L1C1D: STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDX    $95     
       LDA    $A5     
       BNE    L1C30   
       LDA    $9D     
       CLC            
       ADC    #$10    
       BNE    L1C36   
L1C30: LDA    L1149,X 
       SEC            
       SBC    #$06    
L1C36: PLP            
       BPL    L1C3C   
       SEC            
       SBC    #$16    
L1C3C: TAY            
       CMP    L115E,X 
       BPL    L1C61   
       STA    $A4     
       SEC            
       LDA    L115E,X 
       SBC    $A4     
       CMP    L11B7,X 
       BMI    L1C52   
       LDA    L11B7,X 
L1C52: CLC            
       PHA            
       LDA    $A5     
       ASL            
       TAX            
       PLA            
       ADC    $C0,X   
       STA    $C0,X   
       INC    $AC     
       LDX    $95     
L1C61: LDA    L115E,X 
       STA    $99     
       LDA    L11A3,X 
       STA    NUSIZ1  
       LDA    $A5     
       ASL            
       TAX            
       STA    HMCLR   
L1C71: STA    WSYNC   
       CPY    $99     
       BCS    L1C7F   
       LDA    ($C0,X) 
       STA    GRP1    
       BEQ    L1C7F   
       INC    $C0,X   
L1C7F: DEC    $D6     
       BEQ    L1C8D   
       DEY            
       CPY    $AC     
       BPL    L1C71   
       RTS            

L1C89: .byte $14,$14,$14,$14
L1C8D: JMP    L1DE3   
L1C90: JSR    L14D0   
       DEX            
       STX    TIM64T  
       LDA    $D7     
       CMP    #$F0    
       BCC    L1CAE   
       LDA    #$F8    
       STA    $D7     
       LDA    SWCHB   
       AND    #$08    
       BEQ    L1CAB   
       JMP    L1EB0   
L1CAB: JMP    L1DE5   
L1CAE: LDA    $B4     
       CMP    $B9     
       BNE    L1CCB   
       LDA    $9B     
       CMP    $B8     
       BNE    L1CCB   
       LDA    $D5     
       BNE    L1CC8   
       STA    $E5     
       STA    $E3     
       LDA    #$52    
       STA    $A9     
       INC    $D5     
L1CC8: JMP    L1E8D   
L1CCB: JSR    L1455   
       LDA    $91     
       LSR            
       LSR            
       LSR            
       AND    #$03    
       STA    $A5     
       LDX    #$00    
       STA    HMCLR   
       LDY    $9C     
       STY    $A1     
       JMP    L1CE6   
L1CE2: DEC    $A1     
       LDY    $A1     
L1CE6: JSR    L1AB7   
       TAY            
       LDA    L11EF,Y 
       STA    $C1,X   
       TYA            
       ASL            
       ASL            
       CLC            
       ADC    $A5     
       TAY            
       LDA    L129B,Y 
       STA    $C0,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    L1CE2   
       LDY    $9C     
       STY    $A1     
       JSR    L1AB7   
       STA    $95     
       LDY    #$00    
       STA    WSYNC   
L1D0E: STY    $A5     
       LDA    $A1     
       CMP    $9B     
       BNE    L1D1C   
       JSR    L1B00   
       JMP    L1D1F   
L1D1C: JSR    L1BBB   
L1D1F: DEC    $A1     
       BMI    L1D34   
       LDY    $A1     
       LDA    ($B6),Y 
       CMP    #$15    
       BCC    L1D2D   
       AND    #$0F    
L1D2D: STA    $95     
       LDY    $A5     
       INY            
       BNE    L1D0E   
L1D34: LDY    #$06    
L1D36: LDA    L1094,Y 
       LDX    #$04    
L1D3B: STA    WSYNC   
       STA    COLUBK  
       DEC    $D6     
       BEQ    L1D50   
       DEX            
       BPL    L1D3B   
       DEY            
       BPL    L1D36   
       LDA    $AE     
       BNE    L1D50   
       JSR    L1D6D   
L1D50: LDA    #$00    
       STA    WSYNC   
       STA    COLUBK  
       JMP    L1DE5   
L1D59: LDX    #$07    
L1D5B: LDA    INTIM   
       CMP    #$30    
       BNE    L1D5B   
L1D62: STA    WSYNC   
       LDA    L1FF4,X 
       STA    GRP0    
       DEX            
       BPL    L1D62   
       RTS            

L1D6D: LDX    #$00    
       STX    VDELP0  
       STX    WSYNC   
       STX    REFP0   
       STX    REFP1   
       STX    COLUBK  
       LDA    #$1A    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $A2     
       CMP    #$12    
       BNE    L1D59   
       LDA    $80     
       STA    $A4     
       LDA    $BA     
       STA    $80     
       LDA    #$44    
       JSR    L1AA1   
       INX            
       LDA    #$53    
       JSR    L1AA1   
       JSR    L147C   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$10    
       JSR    L1AF7   
       LDA    $BA     
       AND    #$F0    
       BNE    L1DB8   
       LDA    $94     
       CMP    #$03    
       BNE    L1DB8   
       LDA    #$EC    
       STA    $C0     
       LDA    #$1F    
       STA    $C1     
L1DB8: LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       STA    HMCLR   
L1DC2: STA    WSYNC   
       LDA    ($C0),Y 
       ORA    #$80    
       EOR    #$FF    
       STA    GRP0    
       LDA    ($C2),Y 
       ORA    #$80    
       EOR    #$FF    
       STA    GRP1    
       DEY            
       BPL    L1DC2   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       LDA    $A4     
       STA    $80     
       RTS            

L1DE3: PLA            
       PLA            
L1DE5: JSR    L1A07   
L1DE8: LDA    INTIM   
       BNE    L1DE8   
       LDA    #$10    
       STA    TIM64T  
       LDA    #$00    
       STA    COLUBK  
       LDA    $B4     
       CMP    $9B     
       BNE    L1E3F   
       LDY    $9B     
       JSR    L1AB7   
       TAY            
       LDX    L1135,Y 
       LDA    L11A3,Y 
       CMP    #$06    
       BEQ    L1E2C   
       CMP    #$03    
       BEQ    L1E2C   
       CMP    #$02    
       BNE    L1E18   
       LDA    #$20    
       BNE    L1E1E   
L1E18: CMP    #$04    
       BNE    L1E4B   
       LDA    #$40    
L1E1E: STA    $A4     
       TXA            
       CMP    $9F     
       BCS    L1E3F   
       CLC            
       ADC    $A4     
       CMP    $9F     
       BCC    L1E3F   
L1E2C: LDA    $9F     
       BEQ    L1E3F   
L1E30: LDA    $9A     
       BNE    L1E3F   
       LDY    #$0C    
       JSR    L19DA   
       LDA    #$00    
       STA    $AD     
       INC    $B4     
L1E3F: LDA    #$00    
       STA    $9F     
L1E43: LDA    INTIM   
       BNE    L1E43   
       JMP    L1C90   
L1E4B: TYA            
       LSR            
       BCC    L1E56   
       TXA            
       CMP    $9F     
       BCS    L1E3F   
       BCC    L1E30   
L1E56: DEC    $9F     
       DEX            
       CPX    $9F     
       BCC    L1E3F   
       BCS    L1E30   
L1E5F: STA    WSYNC   
       CPX    $BD     
       BCS    L1E89   
       LDA    ($BB),Y 
       STA    GRP1    
       BEQ    L1E6D   
       INC    $BB     
L1E6D: TXA            
       SEC            
       SBC    $A9     
       BCS    L1E83   
       CMP    #$EF    
       BCC    L1E83   
       LDA    ($E0),Y 
       STA    GRP0    
       LDA    ($AA),Y 
       STA    ENABL   
       INC    $E0     
       INC    $AA     
L1E83: DEX            
       CPX    $8E     
       BNE    L1E5F   
       RTS            

L1E89: STY    GRP1    
       BCS    L1E6D   
L1E8D: LDA    $D5     
       CMP    #$02    
       BNE    L1E96   
       JMP    L1ED2   
L1E96: LDX    #$01    
       LDA    $BE     
       JSR    L1AA1   
       JSR    L1455   
       LDY    #$00    
       LDA    #$C8    
       STA    COLUP1  
       STY    $8E     
       STA    HMCLR   
       JSR    L1E5F   
       JSR    L1A07   
L1EB0: LDA    INTIM   
       BNE    L1EB0   
       LDA    #$10    
       STA    TIM64T  
       LDA    $9A     
       BEQ    L1ECF   
       LDA    $CC     
       BNE    L1ECF   
       STA    $BF     
       INC    $D8     
       LDY    #$24    
       JSR    L19DA   
       LDA    #$18    
       STA    $CC     
L1ECF: JMP    L1E43   
L1ED2: LDY    #$00    
       LDX    #$01    
       LDA    #$40    
       JSR    L1AA1   
       JSR    L1455   
       LDA    #$47    
       STA    $D1     
       LDA    #$73    
       STA    $D3     
       LDA    #$12    
       STA    $D2     
       LDA    #$11    
       STA    $D4     
       LDA    #$07    
       STA    NUSIZ1  
       LDA    #$91    
       STA    $BD     
       LDA    #$90    
       STA    $8E     
       STA    HMCLR   
       JSR    L1E5F   
L1EFF: STA    WSYNC   
       LDA    ($D1),Y 
       STA    GRP1    
       LDA    ($D3),Y 
       STA    COLUP1  
       INC    $D1     
       INC    $D3     
       TXA            
       SEC            
       SBC    $A9     
       BCS    L1F23   
       CMP    #$EF    
       BCC    L1F23   
       LDA    ($E0),Y 
       STA    GRP0    
       LDA    ($AA),Y 
       STA    ENABL   
       INC    $E0     
       INC    $AA     
L1F23: DEX            
       CPX    #$60    
       BNE    L1EFF   
L1F28: STA    WSYNC   
       STY    GRP1    
       TXA            
       SEC            
       SBC    $A9     
       BCS    L1F42   
       CMP    #$EF    
       BCC    L1F42   
       LDA    ($E0),Y 
       STA    GRP0    
       LDA    ($AA),Y 
       STA    ENABL   
       INC    $E0     
       INC    $AA     
L1F42: LDA    $E6     
       BEQ    L1F57   
       LDA    $B2     
       BNE    L1F57   
L1F4A: LDA    INTIM   
       CMP    #$3C    
       BNE    L1F4A   
       JSR    L1D6D   
       JMP    L1F5A   
L1F57: DEX            
       BNE    L1F28   
L1F5A: JSR    L1A07   
L1F5D: LDA    INTIM   
       BNE    L1F5D   
       LDA    #$10    
       STA    TIM64T  
       LDA    $9A     
       BEQ    L1FB5   
       LDY    #$06    
       JSR    L19DA   
       LDA    $A8     
       CMP    #$4A    
       BCC    L1F8C   
       CMP    #$60    
       BCS    L1F8C   
       LDA    $A9     
       CMP    #$7E    
       BCC    L1F8C   
       CMP    #$89    
       BCS    L1F8C   
       LDA    #$6A    
       STA    $A8     
       LDA    #$8A    
       STA    $A9     
L1F8C: LDX    #$03    
L1F8E: LDA    $E2,X   
       EOR    #$FF    
       STA    $E2,X   
       DEX            
       BPL    L1F8E   
       LDA    $A8     
       CMP    #$5A    
       BCS    L1FA1   
       DEC    $A8     
       BNE    L1FA3   
L1FA1: INC    $A8     
L1FA3: LDA    $A9     
       CMP    #$84    
       BCS    L1FAD   
       DEC    $A9     
       BNE    L1FAF   
L1FAD: INC    $A9     
L1FAF: BNE    L1FE1   
       .byte $14 ;.NOP
       .byte $14 ;.NOP
       .byte $14 ;.NOP
       .byte $14 ;.NOP
L1FB5: LDA    $A8     
       CMP    #$4A    
       BCC    L1FE1   
       CMP    #$56    
       BCS    L1FE1   
       LDA    $A9     
       CMP    #$7E    
       BCC    L1FE1   
       CMP    #$89    
       BCS    L1FE1   
       LDX    #$04    
L1FCB: LDA    $E2,X   
       BNE    L1FE1   
       DEX            
       BPL    L1FCB   
       INC    $CF     
       LDY    $CF     
       CPY    #$05    
       BNE    L1FE5   
       INC    $E6     
       LDY    #$30    
       JSR    L19DA   
L1FE1: LDA    #$00    
       STA    $CF     
L1FE5: JMP    L1E43   
L1FE8: .byte $14,$14,$14,$14,$F7,$EB,$DD,$FF,$F7,$F7,$DD,$DD
L1FF4: .byte $95,$95,$95,$FF,$95,$95,$95,$65,$C0,$1A,$FF,$FF
