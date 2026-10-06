; Disassembly of roms/Death Trap.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Death Trap.bin
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
PF0     =  $0D
PF1     =  $0E
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXM1FB  =  $35
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $1000
L1000: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $1E,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$30,$30,$18,$18,$0C,$0C,$46,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$70,$F8,$F8,$70,$20
       .byte $00,$00,$D8,$D8,$20,$20,$D8,$D8,$00,$00,$F8,$F8,$D8,$D8,$F8,$F8
       .byte $38,$7C,$7C,$28,$28,$91,$91,$92,$F4,$94,$94,$64,$78,$84,$B4,$A4
       .byte $B4,$84,$78,$12,$12,$92,$5E,$52,$52,$4C,$98,$A5,$85,$9C,$A5,$A5
       .byte $98,$E6,$89,$89,$89,$89,$89,$86,$C6,$29,$21,$C2,$21,$29
L109E: .byte $C6
L109F: .byte $38,$87
L10A1: .byte $1A,$C6,$38,$87,$25,$25,$25,$3D,$25,$25,$25,$77,$44,$44,$44,$44
       .byte $44,$44,$4C,$54,$54,$54,$64,$44
L10B9: .byte $8A,$1B,$D8,$39
L10BD: .byte $3F,$5F,$9F,$1F,$7F,$BF,$75,$83,$91,$B2,$A5,$AC,$50,$7C,$8A,$98
       .byte $50
L10CE: .byte $50,$03,$0C,$30,$C0,$30
L10D4: .byte $0C,$02,$06,$0E,$3E
L10D9: .byte $FE,$00,$18,$3C,$7E,$BD,$BD
L10E0: .byte $BD,$00,$00,$10,$10,$1C,$38,$08,$08,$00,$00,$00,$24,$66,$66,$66
       .byte $66,$66,$66,$66,$66,$66,$66
L10F7: .byte $18,$3C,$7C,$FE,$7F,$FF,$FE,$7E,$7C
L1100: .byte $38,$18,$3C,$7E,$FF,$FF,$FF,$FF,$7E,$3C,$18,$00,$3C,$7E,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
L1117: .byte $34,$C9,$64,$8A
L111B: .byte $0F,$03,$0F,$03,$00,$00,$00,$00,$00,$20,$31,$31,$3F,$31,$31,$1F
       .byte $0F,$00,$04,$08,$01,$22,$41,$82,$24,$68,$61,$E2,$64,$68,$C3,$97
       .byte $20,$40,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $FF,$FF,$E1,$E4,$E7,$E7,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0
       .byte $E0,$E1,$FF,$FF,$10,$10,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
       .byte $18,$98,$D8,$D8,$FF,$FF,$C0,$C0,$C7,$CF,$CC,$CF,$CF,$CC,$CF,$C7
       .byte $C0,$C0,$81,$02,$00,$00,$00,$00,$00,$90,$99,$98,$9F,$98,$98,$1F
       .byte $0F,$20,$42,$84,$08,$10,$20,$00,$40,$60,$60,$60,$60,$60,$FC,$FE
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$41,$63,$66,$7C,$62,$63,$7F
       .byte $3F,$00,$00,$20,$E0,$E0,$00,$00,$C8,$8C,$0C,$0F,$0C,$0C,$87,$C3
       .byte $08,$10,$20,$41,$0C,$1E,$1E,$3F,$1E,$9E,$0C,$20,$80,$C0,$C0,$C0
       .byte $80,$00,$00,$00,$00,$00,$00,$00,$41,$63,$63,$7F,$7F,$63,$63,$41
       .byte $00,$00,$00,$00
L11DF: .byte $00,$7E,$FF,$FF,$FF,$E7,$24,$24,$00,$00,$00
L11EA: .byte $00
L11EB: .byte $0F
L11EC: .byte $08
L11ED: .byte $06
L11EE: .byte $2F
L11EF: .byte $1A,$00,$0F,$0C,$0A,$50,$63,$01,$0C,$0B,$0C,$04,$00,$01,$0F,$0C
       .byte $0A,$09,$40,$01,$08,$12,$12,$14,$5E,$01,$08,$01,$0C,$09,$14,$00
       .byte $0A,$1C,$0A,$0D,$0D,$00,$08,$08,$0C,$0D,$00,$00,$08,$1D,$07,$01
       .byte $00,$01,$14,$16,$0A,$03,$00,$00,$01,$07,$0C,$03,$A1,$00,$0E,$0A
       .byte $09,$03,$41
L1232: .byte $6D,$B6,$DB,$DB
L1236: .byte $00,$06,$06,$0F,$06,$06,$06,$06
L123E: .byte $40,$20,$F0,$D0,$C0,$80,$60
L1245: .byte $4D,$58,$64,$73,$82,$90,$9C,$A7,$00,$00,$00,$00,$00,$10,$38,$7C
       .byte $38,$10,$00,$00,$00,$00,$00,$00,$18,$18,$38,$7C,$38,$18,$18,$00
       .byte $00,$00,$00,$10,$38,$7C,$FE,$FE,$7C,$38,$10,$00,$00,$00,$00,$18
       .byte $3C,$3C,$7E,$7E,$7F,$FF,$FF,$7E,$7E,$7E,$3C,$3C,$18,$00,$00,$00
       .byte $18,$08,$1C,$3E,$1E,$1C,$3C,$3E,$1C,$08,$0C,$00,$00,$18,$18,$7E
       .byte $7E,$FF,$FF,$7E,$7E,$18,$18,$00,$00,$00,$00,$00,$04,$0E,$1E,$0F
       .byte $07,$02,$00,$00,$00,$00,$00,$00,$18,$3C,$3C,$3C,$18,$00,$00,$00
       .byte $00,$00
L12B7: .byte $34,$0F,$1A,$0F,$34,$0F,$66,$1A
L12BF: .byte $00,$00,$00,$01,$01,$03,$03
L12C6: .byte $00,$00,$00,$00,$01,$01,$03
L12CD: LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       LDA    #$3C    
       JSR    L193A   
       INX            
       LDA    #$44    
       JSR    L193A   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L12E3: LDA    INTIM   
       CMP    #$58    
       BNE    L12E3   
       LDX    #$00    
       STX    GRP0    
       LDA    #$50    
       JSR    L193A   
       INX            
       LDA    #$50    
       JSR    L193A   
       STA    WSYNC   
       STA    HMOVE   
       JSR    L175E   
       STA    HMCLR   
       LDX    $CC     
       LDA    L1117,X 
       STA    COLUP0  
       LDA    L111B,X 
       STA    COLUP1  
       LDX    #$16    
L1310: STA    WSYNC   
       LDA    L10E0,X 
       STA    GRP0    
       LDA    L1100,X 
       STA    GRP1    
       DEX            
       BNE    L1310   
       STX    GRP1    
       JMP    L1485   
L1324: JSR    L1531   
       LDA    #$FF    
       STA    TIM64T  
       LDA    #$11    
       JSR    L1AF0   
L1331: LDA    INTIM   
       CMP    #$E0    
       BNE    L1331   
       LDY    #$00    
       STY    GRP0    
       JSR    L1AF9   
       STA    HMCLR   
       LDX    $CC     
       LDA    L10B9,X 
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$01    
       STX    CTRLPF  
       DEX            
       STA    WSYNC   
       STX    COLUPF  
       LDA    #$FE    
       STA    PF2     
       LDA    #$E5    
       STA    WSYNC   
       STA    PF1     
       LDX    #$09    
L135F: STA    WSYNC   
       DEX            
       BNE    L135F   
       LDA    #$1F    
       JSR    L18E7   
       LDX    #$09    
L136B: STA    WSYNC   
       DEX            
       BNE    L136B   
       STA    PF2     
       LDA    $A9     
       BMI    L1390   
       BNE    L138D   
       LDA    $AA     
       BMI    L13BA   
       LDA    $91     
       AND    #$07    
       BNE    L13BA   
       LDA    $83     
       LSR            
       BCS    L1393   
       LSR            
       BCS    L13A8   
       JMP    L13BA   
L138D: JMP    L1485   
L1390: JMP    L12E3   
L1393: LDA    $AB     
       CMP    #$58    
       BEQ    L13BA   
       SEC            
       LDA    $AB     
       SBC    #$08    
       STA    $AB     
       LDY    #$0C    
       JSR    L173B   
       JMP    L13BA   
L13A8: LDA    $AB     
       CMP    #$68    
       BEQ    L13BA   
       CLC            
       LDA    $AB     
       ADC    #$08    
       STA    $AB     
       LDY    #$0C    
       JSR    L173B   
L13BA: LDA    $AB     
       STA    $C0     
       LDA    $CE     
       CMP    #$65    
       BNE    L13DC   
       LDA    $91     
       AND    #$0F    
       CMP    #$0F    
       BMI    L13EF   
       LDY    #$24    
       JSR    L173B   
       INC    $CD     
       LDA    $CD     
       CMP    #$0F    
       BNE    L13EF   
       JMP    L14E9   
L13DC: LDA    $AA     
       BMI    L13ED   
       LDA    $83     
       AND    #$08    
       BEQ    L13EF   
       LDY    #$0C    
       JSR    L173B   
       DEC    $AA     
L13ED: INC    $CE     
L13EF: LDA    INTIM   
       CMP    #$7B    
       BNE    L13EF   
       STA    WSYNC   
       LDX    #$00    
       LDA    $CE     
       JSR    L193A   
       INX            
       LDA    #$60    
       JSR    L193A   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$05    
       STA    NUSIZ1  
       LDA    $CE     
       CMP    #$65    
       BNE    L1418   
       LDA    $91     
       JMP    L141D   
L1418: LDX    $CC     
       LDA    L109F,X 
L141D: STA    $EF     
       LDA    $CD     
       STA    COLUP1  
       LDX    #$0A    
       STA    HMCLR   
L1427: STA    WSYNC   
       LDA    $E0,X   
       STA    GRP0    
       CPX    #$04    
       BNE    L1435   
       LDA    #$0F    
       BNE    L1437   
L1435: LDA    $EF     
L1437: STA    COLUP0  
       LDA    L10F7,X 
       STA    GRP1    
       DEX            
       BPL    L1427   
       STA    WSYNC   
       INX            
       STX    GRP1    
       LDA    #$10    
       JSR    L1AF0   
       LDA    $B3     
       BMI    L1485   
       LDA    $8E     
       BNE    L1458   
       LDY    #$36    
       JSR    L173B   
L1458: LDA    INTIM   
       CMP    #$4C    
       BNE    L1458   
       LDX    #$00    
       LDA    #$50    
       STA    $8E     
       JSR    L193A   
       LDX    $CC     
       LDA    L10A1,X 
       STA    COLUP0  
       STA    WSYNC   
       STA    HMOVE   
       JSR    L175E   
       STA    HMCLR   
       LDY    #$07    
L147A: STA    WSYNC   
       LDA    ($C0),Y 
       STA    GRP0    
       DEY            
       BNE    L147A   
       STA    WSYNC   
L1485: LDA    #$10    
       JSR    L1AF0   
L148A: LDA    INTIM   
       CMP    #$30    
       BNE    L148A   
       JSR    L12CD   
       LDX    $CC     
       LDA    L10A1,X 
       STA    COLUP0  
       STA    COLUP1  
       LDA    $A9     
       BNE    L14AB   
       LDY    #$06    
       JSR    L1AF9   
       LDA    #$06    
       JMP    L14C4   
L14AB: JSR    L1506   
       LDA    $AB     
       STA    $C0     
       LDX    $CC     
       LDA    L109F,X 
       STA    COLUP0  
       STA    COLUP1  
       LDA    $83     
       BPL    L14C2   
       JMP    L1A8A   
L14C2: LDA    #$07    
L14C4: STA    HMCLR   
       STA    WSYNC   
       JSR    L18E7   
       STA    WSYNC   
       LDY    #$0C    
       JSR    L1AF9   
       STA    WSYNC   
       STA    WSYNC   
       LDA    $A9     
       BNE    L14E5   
       STA    WSYNC   
       STA    GRP1    
       STA    GRP0    
       LDA    #$06    
       JSR    L18E7   
L14E5: LDA    #$00    
       STA    PF1     
L14E9: LDA    INTIM   
       BNE    L14E9   
       LDA    #$10    
       STA    TIM64T  
L14F3: LDA    INTIM   
       BNE    L14F3   
       LDA    $CD     
       CMP    #$0F    
       BNE    L1503   
       INC    $B4     
       JMP    L1B08   
L1503: JMP    L1324   
L1506: LDX    #$02    
L1508: TXA            
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
       BPL    L1508   
       INX            
L1522: LDA    $C0,X   
       BNE    L1530   
       LDA    #$50    
       STA    $C0,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    L1522   
L1530: RTS            

L1531: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    SWCHB   
       LSR            
       BCS    L1540   
       JMP    L1A8A   
L1540: STA    WSYNC   
       LDX    $B3     
       BPL    L155D   
       LDA    $B1     
       BNE    L1580   
       LDY    #$01    
       LDA    INPT5   
       BPL    L1555   
       DEY            
       LDA    INPT4   
       BMI    L1580   
L1555: STY    $B3     
       TYA            
       TAX            
       LDA    #$FF    
       STA    $B1     
L155D: LDA    SWCHA   
       CPX    #$00    
       BNE    L1568   
       LSR            
       LSR            
       LSR            
       LSR            
L1568: AND    #$0F    
       EOR    #$0F    
       BEQ    L1570   
       ORA    #$40    
L1570: STA    $83     
       TAY            
       LDA    $B1     
       BNE    L1580   
       LDA    INPT4,X 
       BMI    L1580   
       TYA            
       ORA    #$80    
       STA    $83     
L1580: STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       LDA    #$21    
       STA    TIM64T  
       LDA    #$87    
       STA    COLUBK  
       STA    COLUPF  
       INC    $91     
       BNE    L15A5   
       INC    $90     
L15A5: LDA    $B1     
       BEQ    L15AB   
       DEC    $B1     
L15AB: LDA    $B4     
       BNE    L15B2   
       JMP    L1676   
L15B2: LDA    $A9     
       BPL    L15BE   
       LDA    $91     
       LSR            
       BCS    L15BE   
       JSR    L1781   
L15BE: LDA    $A9     
       BEQ    L15C5   
       JMP    L1656   
L15C5: LDA    $AB     
       CMP    #$58    
       BEQ    L15E1   
       LDA    $91     
       AND    #$03    
       BNE    L15E1   
       INC    $D4     
       BNE    L15E1   
       INC    $A8     
       LDA    $A8     
       CMP    #$07    
       BMI    L15E1   
       LDA    #$06    
       STA    $A8     
L15E1: LDA    $91     
       AND    #$7F    
       BNE    L15F7   
       LDA    $BB     
       CMP    #$5D    
       BPL    L15F7   
       LDA    $D8     
       AND    #$03    
       BNE    L15F5   
       DEC    $CF     
L15F5: INC    $D8     
L15F7: SEC            
       LDA    $8F     
       SBC    #$04    
       CMP    $A7     
       BMI    L1609   
       SEC            
       LDA    $D8     
       SBC    #$05    
       CMP    $A7     
       BMI    L1611   
L1609: INC    $A9     
       INC    $A9     
       LDA    #$FF    
       STA    $B1     
L1611: LDA    $DF     
       BEQ    L162A   
       LDA    $91     
       AND    #$3F    
       BNE    L162A   
       CLC            
       SED            
       LDA    $A8     
       ADC    $DA     
       STA    $DA     
       LDA    #$00    
       ADC    $D9     
       STA    $D9     
       CLD            
L162A: LDA    $91     
       AND    #$03    
       BNE    L1632   
       DEC    $DE     
L1632: LDA    $DE     
       BNE    L1656   
       SED            
       SEC            
       LDA    $82     
       SBC    #$90    
       STA    $82     
       LDA    $81     
       SBC    #$00    
       STA    $81     
       LDA    $80     
       SBC    #$00    
       STA    $80     
       CLD            
       LDA    #$FF    
       STA    $DE     
       DEC    $8F     
       LDY    #$00    
       JSR    L173B   
L1656: LDA    $DA     
       BNE    L1661   
       LDA    $D9     
       BNE    L1661   
       JMP    L1676   
L1661: SED            
       LDA    $DA     
       CLC            
       ADC    $82     
       STA    $82     
       LDA    $81     
       ADC    $D9     
       STA    $81     
       LDA    $80     
       ADC    #$00    
       STA    $80     
       CLD            
L1676: LDA    #$10    
       JSR    L1AF0   
       LDX    #$00    
       STX    $DA     
       STX    $D9     
       LDA    $80     
       CMP    #$99    
       BNE    L168D   
       STX    $80     
       STX    $81     
       STX    $82     
L168D: INX            
L168E: LDA    $8A,X   
       BEQ    L16FB   
       DEC    $8A,X   
       BNE    L16C3   
       LDA    $8C,X   
       BPL    L16A9   
       CLC            
       LDA    $84,X   
       ADC    #$06    
       TAY            
       STX    $92     
       JSR    L173B   
       LDX    $92     
       BPL    L16FB   
L16A9: CPX    #$01    
       BEQ    L16BD   
       LDA    $A9     
       BNE    L16BD   
       LDA    #$03    
       STA    AUDC0   
       STA    AUDV0   
       LDA    $CF     
       STA    AUDF0   
       BNE    L16FB   
L16BD: LDA    #$00    
       STA    AUDV0,X 
       BEQ    L16FB   
L16C3: LDA    $8C,X   
       AND    #$7F    
       BEQ    L16FB   
       TAY            
       AND    #$07    
       ASL            
       AND    $8A,X   
       BNE    L16FB   
       TYA            
       AND    #$40    
       BNE    L16DB   
       INC    $88,X   
       JMP    L16E2   
L16DB: TYA            
       AND    #$20    
       BNE    L16E6   
       DEC    $88,X   
L16E2: LDA    $88,X   
       STA    AUDV0,X 
L16E6: TYA            
       AND    #$10    
       BNE    L16F0   
       INC    $86,X   
       JMP    L16F7   
L16F0: TYA            
       AND    #$08    
       BNE    L16FB   
       DEC    $86,X   
L16F7: LDA    $86,X   
       STA    AUDF0,X 
L16FB: DEX            
       BPL    L168E   
       LDA    $B4     
       BNE    L171F   
       LDA    $90     
       AND    #$03    
       BNE    L1718   
       LDA    $91     
       BNE    L1718   
       INC    $CC     
       LDA    $CC     
       CMP    #$04    
       BMI    L1718   
       LDA    #$00    
       STA    $CC     
L1718: LDX    $CC     
       LDA    L109E,X 
       STA    COLUBK  
L171F: LDA    $A9     
       CMP    #$01    
       BPL    L1731   
       LDA    $91     
       LSR            
       LSR            
       AND    #$03    
       TAX            
       LDA    L1232,X 
       STA    $E4     
L1731: LDA    INTIM   
       BNE    L1731   
       STA    WSYNC   
       STA    VBLANK  
       RTS            

L173B: LDX    L11EA,Y 
       STY    $84,X   
       LDA    L11EB,Y 
       STA    AUDC0,X 
       LDA    L11EC,Y 
       STA    AUDF0,X 
       STA    $86,X   
       LDA    L11ED,Y 
       STA    AUDV0,X 
       STA    $88,X   
       LDA    L11EE,Y 
       STA    $8A,X   
       LDA    L11EF,Y 
       STA    $8C,X   
       RTS            

L175E: PHA            
       PLA            
       PHA            
       PLA            
       PHA            
       PLA            
       PHA            
       PLA            
       PHA            
       PLA            
       RTS            

L1769: BCC    L1770   
       LDA    #$80    
       STA    $A4     
       RTS            

L1770: LDA    #$00    
       STA    $A4     
       RTS            

L1775: BCC    L177C   
       LDA    #$80    
       STA    $A5     
       RTS            

L177C: LDA    #$00    
       STA    $A5     
       RTS            

L1781: LDA    $83     
       AND    #$04    
       BEQ    L1793   
       DEC    $A6     
       DEC    $A6     
       LDA    $DD     
       CMP    #$08    
       BCC    L1793   
       DEC    $A6     
L1793: LDA    $83     
       AND    #$08    
       BEQ    L17A5   
       INC    $A6     
       INC    $A6     
       LDA    $DD     
       CMP    #$08    
       BCC    L17A5   
       INC    $A6     
L17A5: LDA    $83     
       LSR            
       BCC    L17BA   
       LDA    $A7     
       CMP    #$6C    
       BCS    L17D0   
       INC    $A7     
       LDA    $DD     
       CMP    #$08    
       BCC    L17BA   
       INC    $A7     
L17BA: LDA    $83     
       AND    #$02    
       BEQ    L17D0   
       LDA    $A7     
       CMP    #$20    
       BCC    L17D0   
       DEC    $A7     
       LDA    $DD     
       CMP    #$08    
       BCC    L17D0   
       DEC    $A7     
L17D0: INC    $DD     
       LDA    $83     
       AND    #$0F    
       BNE    L17DC   
       LDA    #$00    
       STA    $DD     
L17DC: LDA    $A6     
       JSR    L17E4   
       STA    $A6     
       RTS            

L17E4: CMP    #$A0    
       BCC    L17F3   
       CMP    #$F0    
       BCC    L17F1   
       CLC            
       ADC    #$A0    
       BNE    L17F3   
L17F1: AND    #$0F    
L17F3: RTS            

L17F4: SEC            
       LDA    $B5     
       SBC    $B9     
       BCC    L1804   
       CMP    #$04    
       BCS    L1804   
       LDA    $B7     
       STA    ENAM1   
       RTS            

L1804: LDA    #$00    
       STA    ENAM1   
       RTS            

L1809: SEC            
       LDA    $D6     
       SBC    $B9     
       BCC    L181E   
       CMP    #$0F    
       BCS    L181E   
       STY    $D7     
       TAY            
       LDA    ($AD),Y 
       STA    GRP1    
       LDY    $D7     
       RTS            

L181E: LDA    #$00    
       STA    GRP1    
       RTS            

L1823: LDA    $91     
       AND    #$07    
       BEQ    L182C   
       JMP    L18E6   
L182C: ASL    $94     
       JSR    L1769   
       LSR    $95     
       JSR    L1775   
       LDA    $95     
       ORA    $A4     
       STA    $95     
       ASL    $96     
       JSR    L1769   
       LDA    $A5     
       BEQ    L1847   
       INC    $96     
L1847: ASL    $97     
       JSR    L1775   
       LDA    $A4     
       BEQ    L1856   
       LDA    $97     
       ORA    #$10    
       STA    $97     
L1856: LSR    $98     
       JSR    L1769   
       LDA    $98     
       ORA    $A5     
       STA    $98     
       ASL    $99     
       JSR    L1775   
       LDA    $A4     
       BEQ    L186C   
       INC    $99     
L186C: LSR    $9A     
       JSR    L1769   
       LDA    $9A     
       ORA    $A5     
       STA    $9A     
       LSR    $9B     
       JSR    L1775   
       LDA    $9B     
       ORA    $A4     
       STA    $9B     
       LDA    $A5     
       BEQ    L1888   
       INC    $94     
L1888: LSR    $9C     
       JSR    L1769   
       ASL    $9D     
       JSR    L1775   
       LDA    $A4     
       BEQ    L1898   
       INC    $9D     
L1898: ASL    $9E     
       JSR    L1769   
       LDA    $A5     
       BEQ    L18A3   
       INC    $9E     
L18A3: LSR    $9F     
       JSR    L1775   
       LDA    $9F     
       ORA    $A4     
       STA    $9F     
       ASL    $A0     
       JSR    L1769   
       LDA    $A5     
       BEQ    L18B9   
       INC    $A0     
L18B9: LSR    $A1     
       LDA    $A1     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    L1775   
       LDA    $A1     
       ORA    $A4     
       STA    $A1     
       LSR    $A2     
       JSR    L1769   
       LDA    $A2     
       ORA    $A5     
       STA    $A2     
       ASL    $A3     
       JSR    L1775   
       LDA    $A4     
       BEQ    L18E0   
       INC    $A3     
L18E0: LDA    $9C     
       ORA    $A5     
       STA    $9C     
L18E6: RTS            

L18E7: STA    $92     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$07    
       STA    VDELP0  
       STA    VDELP1  
L18F5: LDY    $92     
       LDA    ($CA),Y 
       STA    $93     
       STA    WSYNC   
       LDA    ($C8),Y 
       TAX            
       LDA    ($C0),Y 
       NOP            
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
       DEC    $92     
       BPL    L18F5   
       LDA    #$00    
       STA    VDELP0  
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP1  
       STA    COLUP0  
       STA    COLUP1  
       RTS            

L1930: .byte $1B,$EA,$A5,$F5,$85,$0F,$A5,$F6,$85,$0E
L193A: STA    WSYNC   
       SEC            
L193D: SBC    #$0F    
       BCS    L193D   
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

L1950: LDA    INTIM   
       CMP    #$1F    
       BNE    L1950   
       LDA    #$00    
       STA    ENAM1   
       JSR    L12CD   
       JSR    L1506   
       LDA    $AB     
       STA    $C0     
       STA    HMCLR   
       LDA    #$16    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$07    
       JSR    L18E7   
       STA    WSYNC   
       JMP    L1F15   
L1979: LDA    #$FF    
       STA    $DE     
       SED            
       CLC            
       LDA    $DC     
       ADC    #$10    
       STA    $DC     
       LDA    $DB     
       ADC    #$00    
       STA    $DB     
       CLD            
       LDA    $DC     
       STA    $DA     
       LDA    $DB     
       STA    $D9     
       RTS            

L1995: LDA    $B8     
       CMP    #$60    
       BMI    L19CF   
       JSR    L1979   
       LDA    $BB     
       CMP    #$5E    
       BEQ    L19F4   
       BMI    L19BC   
       LDA    $AB     
       CMP    #$68    
       BEQ    L19C6   
       LDA    $A0     
       AND    #$18    
       CMP    #$18    
       BEQ    L19BD   
       LDA    $A0     
       ORA    #$18    
       STA    $A0     
L19BA: DEC    $BB     
L19BC: RTS            

L19BD: LDA    $A0     
       ORA    #$1C    
       STA    $A0     
       DEC    $BB     
       RTS            

L19C6: LDA    $A0     
       ORA    #$08    
       STA    $A0     
       JMP    L19BA   
L19CF: CMP    #$40    
       BMI    L1A17   
       LDA    $BB     
       CMP    #$53    
       BNE    L19F7   
       JSR    L1979   
       LDA    #$FF    
       STA    $B1     
       LDA    #$00    
       STA    $D1     
       LDA    $D9     
       ORA    #$50    
       STA    $D9     
       DEC    $D6     
       LDY    #$06    
       JSR    L173B   
       DEC    $A9     
       RTS            

L19F4: JMP    L1A77   
L19F7: LDA    $BA     
       CMP    #$29    
       BMI    L1A16   
       LDA    $BB     
       CMP    #$5E    
       BPL    L1A16   
       JSR    L1979   
       LDA    #$34    
       STA    $D2     
       INC    $D0     
       LDA    $D0     
       LSR            
       BCC    L1A14   
       JMP    L1A4B   
L1A14: DEC    $BB     
L1A16: RTS            

L1A17: CMP    #$20    
       BMI    L1A4D   
       JSR    L1979   
       LDA    $BA     
       CMP    #$28    
       BEQ    L1A57   
       BPL    L1A4D   
       LDA    $AB     
       CMP    #$68    
       BEQ    L1A4E   
       LDA    $95     
       LSR            
       BCS    L1A34   
       JMP    L1A3F   
L1A34: LDA    $96     
       LSR            
       BCC    L1A3F   
       LDA    $95     
       ORA    #$02    
       STA    $95     
L1A3F: LDA    $95     
       ORA    #$01    
       STA    $95     
       LDA    $96     
       ORA    #$01    
       STA    $96     
L1A4B: INC    $BA     
L1A4D: RTS            

L1A4E: LDA    $96     
       ORA    #$01    
       STA    $96     
       JMP    L1A4B   
L1A57: LDA    $D9     
       ORA    #$20    
       STA    $D9     
       INC    $BA     
       LDA    $BB     
       CMP    #$5E    
       BMI    L1A6E   
       LDA    #$70    
       STA    $BF     
       LDA    #$00    
       STA    $BE     
       RTS            

L1A6E: LDA    #$50    
       STA    $BF     
       LDA    #$7E    
       STA    $B2     
       RTS            

L1A77: LDA    $D9     
       ORA    #$20    
       STA    $D9     
       DEC    $BB     
       LDA    $BA     
       CMP    #$29    
       BPL    L1A6E   
       LDA    #$00    
       STA    $BE     
       RTS            


START:
L1A8A: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L1A91: STA    VSYNC,X 
       INX            
       BNE    L1A91   
       DEX            
       STX    $DE     
       LDA    #$FE    
       STA    $B2     
       LDA    #$60    
       STA    $AB     
       LDA    #$80    
       STA    $B3     
       LDA    #$39    
       STA    $CE     
       LDA    #$5A    
       STA    $A7     
       STA    $B5     
       LDA    #$65    
       STA    $B6     
       STA    $A6     
       LDA    #$13    
       STA    $BA     
       LDA    #$73    
       STA    $BB     
       LDA    #$25    
       STA    $D8     
       LDA    #$30    
       STA    $BF     
       LDA    #$0F    
       STA    $D1     
       LDA    #$1E    
       STA    $D2     
       STA    $CF     
       LDA    #$12    
       STA    $AE     
       LDA    #$20    
       STA    $B1     
       LDX    #$06    
       STX    $A8     
       LDA    #$04    
       STA    $BE     
       LDX    #$0A    
L1AE1: LDA    L11DF,X 
       STA    $E1,X   
       DEX            
       BPL    L1AE1   
       LDA    #$6F    
       STA    $8F     
       JMP    L1324   
L1AF0: LDX    #$0A    
L1AF2: STA    $C1,X   
       DEX            
       DEX            
       BPL    L1AF2   
       RTS            

L1AF9: LDX    #$00    
L1AFB: LDA    L10BD,Y 
       STA    $C0,X   
       INY            
       INX            
       INX            
       CPX    #$0C    
       BNE    L1AFB   
       RTS            

L1B08: JSR    L1531   
       LDX    #$FF    
       STX    TIM64T  
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    CXCLR   
       LDA    #$39    
       STA    $CE     
       INX            
       STX    $CD     
       STX    $B8     
       LDA    $D2     
       STA    COLUBK  
       LDA    #$07    
       STA    CTRLPF  
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $BA     
       JSR    L193A   
       INX            
       LDA    $BB     
       JSR    L193A   
       INX            
       LDA    #$4A    
       JSR    L193A   
       INX            
       LDA    #$5F    
       JSR    L193A   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$85    
       STA    COLUPF  
       LDX    #$09    
       LDA    #$19    
       STA    COLUP0  
       STA    COLUP1  
       JSR    L175E   
       STA    HMCLR   
L1B59: STA    WSYNC   
       LDY    #$FF    
       STY    GRP0    
       STY    GRP1    
       STY    ENAM0   
       STY    ENAM1   
       INY            
       STY    PF2     
       DEX            
       BNE    L1B59   
       DEX            
       STX    PF2     
       LDA    $D1     
       STA    COLUP0  
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    ENAM0   
       STX    ENAM1   
       STX    COLUBK  
       INX            
       STX    CTRLPF  
       LDA    #$10    
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    #$87    
       STA    COLUPF  
       SEC            
       LDA    #$80    
       SBC    $A7     
       STA    $AC     
       LDA    #$27    
       STA    COLUP1  
       LDX    #$03    
       LDA    $B6     
       CLC            
       ADC    #$04    
       JSR    L193A   
       LDA    $BE     
       STA    NUSIZ0  
       LDA    $BF     
       LDX    #$00    
       JSR    L193A   
       LDA    $D6     
       CMP    #$20    
       BPL    L1BF9   
       LDA    $A9     
       BNE    L1BCC   
       LDA    $DF     
       BEQ    L1BCC   
       LDA    $AB     
       CMP    #$58    
       BEQ    L1BD6   
       CMP    #$60    
       BEQ    L1BCF   
       LDA    $91     
       ROL            
       LDA    $90     
       ROL            
       AND    #$03    
L1BCA: BEQ    L1BD6   
L1BCC: JMP    L1C5A   
L1BCF: LDA    $91     
       AND    #$80    
       JMP    L1BCA   
L1BD6: LDA    #$A0    
       STA    $D6     
       LDA    $BE     
       BNE    L1BE3   
       LDA    $BF     
       JMP    L1BF0   
L1BE3: LDA    $A6     
       CMP    #$54    
       BPL    L1BEE   
       LDA    #$30    
       JMP    L1BF0   
L1BEE: LDA    #$70    
L1BF0: STA    $AF     
       STA    $D5     
       LDY    #$3C    
       JSR    L173B   
L1BF9: DEC    $D6     
       LDA    $D5     
       JSR    L17E4   
       STA    $D5     
       LDX    #$01    
       JSR    L193A   
       STA    WSYNC   
       LDX    #$04    
       LDA    $AF     
       CLC            
       ADC    #$04    
       JSR    L193A   
       LDA    #$00    
       STA    ENABL   
       LDY    #$00    
       STY    GRP0    
       LDA    $D6     
       CMP    #$8A    
       BPL    L1C5A   
       LDA    $D5     
       CMP    $A6     
       BEQ    L1C5A   
       BPL    L1C43   
       LDA    $91     
       AND    #$07    
       BNE    L1C31   
       INC    $D5     
L1C31: INC    $D5     
       SEC            
       LDA    $A6     
       SBC    $D5     
       CMP    #$20    
       BMI    L1C5A   
       INC    $D6     
       INC    $D5     
       JMP    L1C5A   
L1C43: LDA    $91     
       AND    #$07    
       BNE    L1C4B   
       DEC    $D5     
L1C4B: DEC    $D5     
       SEC            
       LDA    $D5     
       SBC    $A6     
       CMP    #$20    
       BMI    L1C5A   
       INC    $D6     
       DEC    $D5     
L1C5A: LDA    $91     
       LSR            
       LSR            
       AND    #$07    
       TAX            
       LDA    L1245,X 
       STA    $AD     
L1C66: LDA    INTIM   
       CMP    #$DA    
       BNE    L1C66   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$83    
       STA    COLUPF  
       LDA    $91     
       LSR            
       LSR            
       AND    #$07    
       STA    $93     
       JSR    L175E   
       STA    HMCLR   
       STY    PF0     
       LDA    $B2     
       STA    PF2     
       LDY    #$05    
       LDA    #$B1    
       STA    $B9     
L1C8E: LDA    L10D4,Y 
       STA    PF1     
       LDX    #$06    
L1C95: DEC    $B9     
       SEC            
       LDA    $B5     
       SBC    $B9     
       BCC    L1CA9   
       CMP    #$04    
       BCS    L1CA9   
       LDA    $B7     
       STA    ENAM1   
       JMP    L1CAD   
L1CA9: LDA    #$00    
       STA    ENAM1   
L1CAD: STX    $92     
       TXA            
       CLC            
       LDA    $93     
       ADC    $92     
       TAX            
       STA    WSYNC   
       LDA    L10CE,X 
       STA    GRP0    
       LDX    $92     
       DEX            
       BNE    L1C95   
       DEY            
       BNE    L1C8E   
       STY    PF1     
       LDA    #$83    
       STA    COLUP0  
       LDA    #$FF    
       STA    GRP0    
       LDX    #$02    
L1CD1: STA    WSYNC   
       DEC    $B9     
       JSR    L17F4   
       DEX            
       BNE    L1CD1   
       STA    WSYNC   
       DEC    $B9     
       STX    PF2     
       LDA    #$37    
       STA    COLUP0  
       LDA    #$0F    
       STA    COLUPF  
       LDA    #$10    
       STA    CTRLPF  
       LDY    #$07    
L1CEF: STA    WSYNC   
       DEC    $B9     
       LDA    L10D9,Y 
       STA    GRP0    
       JSR    L17F4   
       DEY            
       BNE    L1CEF   
       LDA    CXM1P   
       BPL    L1D06   
       LDA    $B6     
       STA    $B8     
L1D06: LDA    $A9     
       BMI    L1D19   
       CMP    #$01    
       BEQ    L1D19   
       LDA    $91     
       LSR            
       BCC    L1D16   
       JMP    L1D19   
L1D16: JMP    L1DBD   
L1D19: LDY    #$FF    
       LDA    $DF     
       BEQ    L1D25   
       LDA    $D6     
       CMP    #$90    
       BCS    L1D27   
L1D25: LDY    #$00    
L1D27: STY    ENABL   
       LDA    #$00    
       STA    ENAM1   
       TAX            
       LDA    $A6     
       JSR    L193A   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $AC     
       LDA    #$00    
       STA    NUSIZ0  
       LDA    $91     
       LSR            
       LSR            
       AND    #$07    
       TAX            
       LDA    L12B7,X 
       STA    COLUP1  
       JSR    L175E   
       STA    HMCLR   
L1D4E: STA    WSYNC   
       DEC    $B9     
       JSR    L1809   
       LDA    #$00    
       STA    ENABL   
       DEY            
       BNE    L1D4E   
       LDY    #$07    
       LDX    $A8     
L1D60: DEC    $B9     
       JSR    L1809   
       LDA.wy $00E1,Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    L1236,Y 
       ORA    L123E,X 
       STA    COLUP0  
       DEY            
       BPL    L1D60   
L1D77: STA    WSYNC   
       DEC    $B9     
       JSR    L1809   
       LDA    INTIM   
       CMP    #$28    
       BPL    L1D77   
       LDA    $D3     
       BNE    L1DAE   
       LDA    CXPPMM  
       AND    #$80    
       BEQ    L1DB0   
       LDA    #$30    
       STA    $D3     
       LDY    #$2A    
       JSR    L173B   
       LDA    #$00    
       STA    $D4     
       DEC    $A8     
       BPL    L1DB0   
       INC    $A9     
       INC    $A9     
       LDA    #$FF    
       STA    $B1     
       ASL            
       STA    $A8     
       JMP    L1DB0   
L1DAE: DEC    $D3     
L1DB0: LDA    #$00    
       STA    GRP1    
       STA    ENABL   
       STA    GRP0    
       STA    ENAM0   
       JMP    L1950   
L1DBD: LDY    #$04    
       LDA    #$00    
       STA    ENABL   
       STA    GRP0    
       STA    GRP1    
       LDX    #$05    
L1DC9: STA    WSYNC   
       LDA    #$0F    
       STA    COLUPF  
       DEC    $B9     
       JSR    L17F4   
       DEX            
       BNE    L1DC9   
L1DD7: LDA    $BC     
       STA    WSYNC   
       STA    COLUBK  
       DEC    $B9     
       LDA    $94     
       STA    PF0     
       LDA    $95     
       STA    PF1     
       LDA    $96,X   
       STA    PF2     
       LDA    $97,X   
       STA    PF0     
       LDA    $98,X   
       STA    PF1     
       LDA    $99,X   
       STA    PF2     
       DEC    $B9     
       CPY    #$03    
       BNE    L1E01   
       LDA    #$00    
       STA    ENAM1   
L1E01: DEY            
       BNE    L1DD7   
       STA    WSYNC   
       DEC    $B9     
       STY    COLUBK  
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDX    #$04    
L1E12: STA    WSYNC   
       DEC    $B9     
       JSR    L17F4   
       DEX            
       BNE    L1E12   
       LDY    #$04    
       LDX    #$08    
L1E20: LDA    $BD     
       STA    WSYNC   
       STA    COLUBK  
       DEC    $B9     
       LDA    $94,X   
       STA    PF0     
       LDA    $9B,X   
       STA    PF1     
       LDA    $9A,X   
       STA    PF2     
       LDA    $99,X   
       STA    PF0     
       LDA    $98,X   
       STA    PF1     
       LDA    $97,X   
       STA    PF2     
       CPY    #$03    
       BNE    L1E48   
       LDA    #$00    
       STA    ENAM1   
L1E48: DEY            
       BNE    L1E20   
L1E4B: STA    WSYNC   
       STY    COLUBK  
       STY    PF0     
       STY    PF1     
       STY    PF2     
       DEC    $B9     
       JSR    L17F4   
       LDA    $B9     
       CMP    $8F     
       BPL    L1E4B   
       LDX    #$03    
L1E62: STA    WSYNC   
       LDA    $BC     
       STA    COLUBK  
       DEC    $B9     
       JSR    L17F4   
       DEX            
       BNE    L1E62   
L1E70: STA    WSYNC   
       STX    COLUBK  
       DEC    $B9     
       JSR    L17F4   
       CLC            
       LDA    $B9     
       ADC    #$0A    
       CMP    $D8     
       BPL    L1E70   
       LDA    $91     
       AND    #$E0    
       ORA    #$07    
       LDX    #$04    
L1E8A: STA    WSYNC   
       STA    COLUBK  
       DEX            
       BNE    L1E8A   
       STA    WSYNC   
       STX    COLUBK  
       LDA    $83     
       BMI    L1ED8   
       SEC            
       LDA    $A9     
       BNE    L1EA5   
       JSR    L1781   
       LDA    $E0     
       BNE    L1ECD   
L1EA5: LDX    #$00    
       STX    $E0     
       LDA    $A7     
       STA    $B5     
       LDA    $A6     
       STA    $B6     
       DEX            
       STX    $B7     
       LDA    $83     
       LSR            
       BCC    L1EBB   
       INC    $B5     
L1EBB: LSR            
       BCC    L1EC0   
       DEC    $B5     
L1EC0: LSR            
       BCC    L1EC5   
       DEC    $B6     
L1EC5: LSR            
       BCC    L1ECA   
       INC    $B6     
L1ECA: JMP    L1F0E   
L1ECD: INC    $B5     
       LDA    #$B3    
       CMP    $B5     
       BCC    L1EA5   
       JMP    L1F0E   
L1ED8: LDA    #$01    
       STA    $DF     
       LDA    #$FF    
       STA    $D7     
       LDA    $83     
       AND    #$04    
       BEQ    L1EE8   
       DEC    $B6     
L1EE8: LDA    $83     
       AND    #$08    
       BEQ    L1EF0   
       INC    $B6     
L1EF0: LDA    $83     
       LSR            
       BCC    L1EF7   
       INC    $B5     
L1EF7: LDA    $B6     
       JSR    L17E4   
       STA    $B6     
       INC    $E0     
       LDA    $E0     
       CMP    #$01    
       BNE    L1F0B   
       LDY    #$1E    
       JSR    L173B   
L1F0B: JMP    L1ECD   
L1F0E: LDA    #$00    
       STA    ENAM1   
       JMP    L1950   
L1F15: LDA    #$87    
       STA    COLUP0  
       STA    COLUP1  
       LDX    $A8     
       CPX    #$00    
       BEQ    L1F4F   
       BMI    L1F4F   
       LDA    L12BF,X 
       STA    NUSIZ0  
       LDA    L12C6,X 
       STA    NUSIZ1  
       LDA    #$70    
       STA    $C0     
       CPX    #$01    
       BNE    L1F37   
       LDA    #$50    
L1F37: STA    $C2     
       LDY    #$04    
L1F3B: STA    WSYNC   
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       DEY            
       BPL    L1F3B   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
L1F4F: LDA    INTIM   
       BNE    L1F4F   
       LDA    #$10    
       STA    TIM64T  
       JSR    L1823   
       LDA    CXM1P   
       BPL    L1F68   
       LDY    #$18    
       JSR    L173B   
       JMP    L1F71   
L1F68: LDA    CXM1FB  
       BPL    L1F84   
       LDY    #$12    
       JSR    L173B   
L1F71: LDX    #$00    
       STX    $E0     
       LDA    $A7     
       STA    $B5     
       LDA    $A6     
       STA    $B6     
       DEX            
       STX    $B7     
       LDA    #$0A    
       STA    $B1     
L1F84: JSR    L1995   
       LDA    $91     
       AND    #$F0    
       ORA    #$08    
       STA    $BC     
       EOR    #$F0    
       STA    $BD     
       STA    ENAM0   
       LDA    $A9     
       BMI    L1FC1   
       BNE    L1FA3   
L1F9B: LDA    INTIM   
       BNE    L1F9B   
       JMP    L1B08   
L1FA3: LDA    #$00    
       STA    $83     
       STA    $DF     
       STA    $B7     
       LDA    $91     
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAX            
       LDA    $E1,X   
       LDY    $91     
       AND    L1A8A,Y 
       STA    $E1,X   
       LDY    #$30    
       JSR    L173B   
L1FC1: LDA    $B1     
       BNE    L1F9B   
       LDA    #$80    
       STA    $B1     
       DEC    $B4     
       JMP    L14E9   
L1FCE: .byte $B9,$37,$12,$85,$07,$60,$48,$68,$00,$EA,$B5,$8F,$84,$09,$00,$EA
       .byte $A9,$00,$85,$09,$60,$66,$8F,$40,$85,$02,$38,$E9,$0F,$B0,$FC,$49
       .byte $0F,$0A,$0A,$0A,$0A,$69,$90,$95,$10,$85,$02,$95,$20,$60,$8A,$1A
       .byte $E3,$1F
