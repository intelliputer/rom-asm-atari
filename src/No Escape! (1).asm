; Disassembly of roms/No Escape! (1).bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/No Escape! (1).bin
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
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM1   =  $13
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
$0285   =  $0285
TIM64T  =  $0296

       ORG $1000
L1000: .byte $04,$24,$24,$28,$28,$28,$18,$10,$B9,$91,$BD,$7E,$08,$18,$24,$18
       .byte $10,$18,$18,$08,$10,$18,$18,$10,$3C,$14,$3C,$18,$10,$30,$48,$30
       .byte $22,$22,$44,$44,$48,$28,$10,$78,$52,$7E,$3A,$1C,$30,$48,$30,$00
       .byte $00,$06,$32,$1C,$18,$18,$19,$1D,$1F,$8F,$9B,$DF,$FF,$EF,$3D,$15
       .byte $31,$1B,$33,$D7,$57,$53,$7B,$1F,$1F,$07,$02,$86,$FC,$DC,$3C,$14
       .byte $30,$18,$30,$D1,$53,$57,$7B,$1F,$1F,$07,$02,$8E,$FC,$EC,$3C,$14
       .byte $80,$CC,$E7,$65,$7F,$7F,$7E,$EE,$0F,$0E,$0E,$1C,$24,$4C,$0C,$00
       .byte $22,$3A,$AA,$EA,$EE,$7E,$7E,$EF,$8E,$2E,$3C,$04,$0C,$0C,$00,$00
       .byte $44,$44,$C6,$E6,$6E,$7E,$7E,$FE,$8F,$2E,$2E,$3C,$04,$0C,$0C,$00
       .byte $CC,$48,$78,$78,$F1,$61,$E1,$6D,$EF,$7B,$F8,$78,$3C,$1F,$0D,$06
       .byte $78,$30,$70,$70,$F0,$60,$E1,$61,$ED,$7D,$FF,$7B,$3C,$1F,$0D,$06
       .byte $C0,$68,$78,$71,$61,$E1,$61,$E7,$7C,$F8,$78,$F0,$7E,$3E,$1A,$0C
       .byte $7C,$E6,$E3,$71,$79,$38,$30,$7A,$7A,$3E,$18,$3C,$97,$FD,$52,$DB
       .byte $3E,$73,$71,$7B,$7A,$30,$30,$FC,$7C,$3C,$18,$3C,$DF,$7C,$D7,$30
       .byte $3E,$72,$7B,$79,$39,$B0,$B4,$BA,$FE,$7C,$18,$3C,$56,$FE,$2E,$6A
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $38,$6C,$C6,$C6,$C6,$C6,$6C,$38,$18,$18,$18,$18,$18,$18,$18,$38
       .byte $FE,$C0,$60,$30,$18,$0C,$CC,$FC,$FE,$06,$0C,$18,$38,$0C,$06,$7E
       .byte $0C,$0C,$0C,$FE,$CC,$6C,$3C,$1C,$FE,$FE,$02,$02,$7E,$60,$60,$7C
       .byte $3C,$66,$C2,$FE,$60,$30,$18,$0C,$06,$06,$06,$06,$06,$06,$86,$FE
       .byte $FE,$82,$82,$FE,$7C,$44,$44,$7C,$60,$30,$1C,$06,$FE,$C6,$6C,$38
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$10,$32,$26,$2C,$38,$5C,$DC,$FF
       .byte $5F,$0F,$01,$03,$1E,$0C,$7C,$F0,$00,$14,$3C,$28,$38,$9C,$DC,$FF
       .byte $7F,$1F,$01,$1F,$0E,$FC,$78,$00,$00,$00,$C0,$58,$54,$44,$EC,$F8
       .byte $F8,$F8,$F8,$FC,$DF,$CE,$64,$60,$00,$00,$00,$C0,$5C,$54,$CC,$F8
       .byte $F8,$F8,$F8,$FC,$DF,$DE,$64,$60
L1198: LDA    $CC     
       LSR            
       BCC    L11C3   
       JSR    L1CB3   
       BCS    L11C4   
       LDA    $CC     
       BMI    L11C3   
       LDA    #$81    
       STA    $CC     
       LDA    #$00    
       STA    $C7     
       LDA    #$3F    
       STA    $C8     
       LDA    #$F0    
       LDY    #$61    
       LDX    #$05    
L11B8: CMP    $BF,X   
       BEQ    L11BE   
       STY    $BF,X   
L11BE: DEX            
       STX    $B8     
       BPL    L11B8   
L11C3: RTS            

L11C4: LDA    $CC     
       LSR            
       LSR            
       BCS    L11F1   
       LDA    #$00    
       STA    $C8     
       STA    $C7     
       INC    $BC     
       LDA    $BC     
       CMP    #$76    
       BNE    L11DF   
       LDA    #$03    
       STA    $CC     
       JMP    L1E70   
L11DF: AND    #$03    
       BNE    L11F0   
       LDX    #$06    
L11E5: LSR    $CD,X   
       ROL    $D4,X   
       LSR    $E2,X   
       ROL    $DB,X   
       DEX            
       BPL    L11E5   
L11F0: RTS            

L11F1: LSR            
       BCS    L1209   
       LDA    #$78    
       STA    $CA     
       LDA    #$58    
       STA    $C5     
       LDA    #$11    
       STA    $C6     
       LDA    #$14    
       STA    $AD     
       LDA    #$0F    
       STA    $CC     
       RTS            

L1209: LSR            
       LSR            
       BCS    L1253   
       LDA    $F1     
       AND    #$06    
       BNE    L1253   
       LDA    $BC     
       CMP    #$02    
       BEQ    L1227   
       LDA    $F1     
       LSR            
       BCS    L1220   
       INC    $AD     
L1220: DEC    $BC     
       DEC    $BC     
       JMP    L1253   
L1227: LDA    $BB     
       BEQ    L122F   
       DEC    $BB     
       BNE    L1253   
L122F: LDA    $F0     
       LSR            
       BCC    L1243   
       LDA    $F2     
       BEQ    L1253   
       JSR    L1372   
L123B: LDX    #$00    
       STX    $F2     
       INX            
       STX    $F0     
       RTS            

L1243: JSR    L1372   
       LDX    $90     
       LDA    $EA,X   
       BEQ    L123B   
       LDA    #$02    
       STA    $F0     
       JMP    L14C0   
L1253: RTS            

L1254: .byte $C2,$42,$4E,$58,$50,$70,$30,$30,$70,$78,$3C,$38,$60,$60,$60,$00
       .byte $60,$20,$24,$3C,$38,$30,$30,$30,$30,$70,$38,$30,$60,$60,$60,$00
       .byte $18,$28,$18,$38,$70,$70,$30,$30,$30,$F4,$B4,$38,$60,$60,$60,$00
L1284: .byte $0F,$1F,$3F,$7F,$FF
L1289: LDA    $F1     
       LSR            
       BCC    L1293   
       LDA    #$00    
       STA    $93     
L1292: RTS            

L1293: LDA    $A6     
       AND    #$02    
       BEQ    L12EA   
       LDA    $93     
       BNE    L1292   
       LDX    $90     
       LDA    SWCHB   
       AND    L1FFA,X 
       BEQ    L12AD   
       LDA    $F0     
       AND    #$80    
       BNE    L12D6   
L12AD: LDA    $80     
       INC    $80     
       AND    #$03    
       BNE    L12C0   
       JSR    L1E70   
       LDA    $80     
       CMP    #$11    
       BCS    L12C1   
       INC    $81     
L12C0: RTS            

L12C1: DEC    $81     
       BNE    L12C0   
       LDA    #$00    
       STA    $CC     
       LDA    #$12    
       STA    $C6     
       LDA    #$54    
       STA    $C5     
       SEC            
       LDX    $90     
       ROR    $EA,X   
L12D6: LDA    #$7F    
       AND    $F0     
       STA    $F0     
       LDA    #$00    
       STA    $80     
       STA    $86     
       LDA    #$22    
       STA    $B4     
       LDA    #$01    
       STA    $A6     
L12EA: LDA    $B4     
       CMP    #$A0    
       BCS    L1327   
       LDA    #$A5    
       STA    $93     
       JSR    L1B2A   
       LDA    #$00    
       STA    $93     
       STA    $95     
       STA    $B6     
       STA    $B7     
       BCC    L130B   
       LDA    $B4     
       CLC            
       ADC    #$04    
       STA    $B4     
       RTS            

L130B: LDA    $EC     
       LSR            
       CMP    #$08    
       BCC    L1314   
       LDA    #$08    
L1314: TAY            
       INC    $86     
       LDA    $86     
       CMP    L1FE7,Y 
       BCC    L1322   
       LDA    #$99    
       BNE    L1324   
L1322: LDA    #$05    
L1324: JMP    L1E57   
L1327: LDA    #$A1    
       STA    $BF     
       LDA    $F0     
       EOR    #$02    
       STA    $F0     
       LDA    #$0F    
       STA    $BD     
       LDA    $EC     
       LSR            
       STA    $86     
       LDA    #$00    
       STA    $A6     
       STA    $AC     
       JSR    L1B16   
       JSR    L1372   
       BCC    L1371   
       LDA    $83     
       SED            
       ADC    #$00    
       CLD            
       STA    $83     
       INC    $EC     
       LDA    $ED     
       BPL    L1358   
       EOR    #$FF    
L1358: CLC            
       ADC    #$04    
       CMP    #$30    
       BCS    L1361   
       STA    $ED     
L1361: LDA    $BE     
       CMP    #$07    
       BCS    L1369   
       INC    $BE     
L1369: DEC    $EF     
       BPL    L1371   
       LDA    #$10    
       STA    $EF     
L1371: RTS            

L1372: LDA    $F0     
       LSR            
       LDA    $90     
       BNE    L138B   
       LDA    $EE     
       AND    #$01    
       BEQ    L1395   
       BCS    L1385   
       LDA    $EB     
       BEQ    L1395   
L1385: LDA    #$01    
       STA    $90     
       CLC            
       RTS            

L138B: BCS    L1391   
       LDA    $EA     
       BEQ    L1395   
L1391: LDA    #$00    
       STA    $90     
L1395: SEC            
       RTS            

L1397: LDA    $F1     
       LSR            
       PHP            
       BCS    L13A1   
       LDA    $95     
       BCC    L13A3   
L13A1: LDA    $93     
L13A3: BNE    L13BC   
L13A5: PLP            
       LDA    $AE,X   
       CMP    #$16    
       BMI    L13B0   
       CMP    #$83    
       BMI    L13B9   
L13B0: LDA    $ED     
       EOR    #$FF    
       SEC            
       ADC    #$00    
       STA    $ED     
L13B9: LDA    $ED     
       RTS            

L13BC: LDA    $EC     
       BEQ    L13A5   
       LDA    $AE,X   
       ADC    #$14    
       PLP            
       BCS    L13CB   
       SEC            
       SBC    $B6     
       RTS            

L13CB: SBC    $B4     
       RTS            

L13CE: LDA    $C7,X   
       LSR            
       EOR    $C7,X   
       AND    L13DB,Y 
       EOR    $C7,X   
       STA    $C7,X   
       RTS            

L13DB: .byte $FF,$FE,$FC,$F8,$F0
L13E0: LDA    #$00    
       TAX            
L13E3: STA    NUSIZ1,X
       STA    $80,X   
       INX            
       CPX    #$25    
       BNE    L13E3   
       RTS            

L13ED: .byte $00,$00,$00,$00,$00,$00,$00,$00,$48,$20,$30,$40,$48,$50,$54,$40
       .byte $00,$00,$00,$FF,$20,$20,$0F,$01,$1F,$04,$91,$F0,$F0,$F0,$F0,$F0
       .byte $54,$12,$0F,$00,$FF,$58,$01,$00
L1415: LDA    #$02    
       STA    VBLANK  
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$33    
       STA    TIM64T  
       INC    $F1     
       BNE    L1438   
       INC    $F2     
L1438: LDA    SWCHB   
       TAX            
       AND    #$08    
       TAY            
       LDA    $F0     
       LSR            
       BCS    L144F   
       TYA            
       EOR    $82     
       BEQ    L144F   
       LDA    #$80    
       ORA    $EF     
       STA    $EF     
L144F: STY    $82     
       TXA            
       ROR    $CB     
       BCS    L145A   
       LSR            
       BCS    L1499   
       ROL            
L145A: LSR            
       ROL    $CB     
       LSR            
       BIT    $E9     
       BCC    L1467   
       ROL    $E9     
       JMP    L14E7   
L1467: BPL    L147A   
L1469: LDA    $F1     
       AND    #$1F    
       STA    $E9     
       INC    $EE     
       LDA    $EE     
       AND    #$07    
       STA    $EE     
       JMP    L1482   
L147A: LDA    $E9     
       EOR    $F1     
       AND    #$1F    
       BEQ    L1469   
L1482: JMP    L14D5   

START:
       SEI            
       CLD            
       LDA    #$00    
       STA    $EE     
       STA    $EB     
       LDA    #$1C    
       STA    $ED     
       STA    $EC     
       LDA    #$03    
       STA    $F0     
       BNE    L14AF   
L1499: LDX    #$02    
       STX    $F0     
       LDA    $EE     
       LSR            
       TAY            
       ASL            
       ASL            
       STA    $EC     
       LDA    L1FEF,Y 
       STA    $ED     
       LDA    L1FF3,Y 
       STA    $EF     
L14AF: LDX    #$FF    
       TXS            
       JSR    L13E0   
       LDX    #$F0    
       STX    $EA     
       LDA    $EE     
       LSR            
       BCC    L14C0   
       STX    $EB     
L14C0: LDX    #$27    
L14C2: LDA    L13ED,X 
       STA    $A5,X   
       DEX            
       BPL    L14C2   
       TXS            
       JSR    L1B16   
L14CE: LDX    #$01    
       STX    CTRLPF  
       JMP    L1585   
L14D5: JSR    L13E0   
       LDA    $EE     
       CLC            
       ADC    #$01    
       STA    $8C     
       STA    $8F     
       LDA    #$01    
       STA    $F0     
       BNE    L14CE   
L14E7: LDA    $A6     
       BEQ    L14F4   
       JSR    L1CC5   
       JSR    L1289   
       JMP    L1585   
L14F4: LDA    $F0     
       LSR            
       BCC    L14FD   
       LDA    REFP1   
       BPL    L1499   
L14FD: STA    HMCLR   
       LDA    $CC     
       LSR            
       BCC    L1512   
       LDA    #$00    
       STA    $93     
       STA    $94     
       STA    $88     
       JSR    L1198   
       JMP    L1585   
L1512: JSR    L1CB3   
       BCC    L151D   
       LDA    #$03    
       STA    $A6     
       BNE    L1539   
L151D: JSR    L1AF3   
       JSR    L1397   
       JSR    L1CF6   
L1526: INC    $A2     
       LDX    $A2     
       CPX    #$06    
       BEQ    L1539   
       LDA    $AE,X   
       SEC            
       SBC    $AD,X   
       JSR    L1CF6   
       JMP    L1526   
L1539: JSR    L1CC5   
       LDA    $F1     
       LSR            
       BCC    L1547   
       JSR    L1B2A   
       JMP    L1585   
L1547: LDX    #$05    
L1549: LDA    $A7,X   
       BEQ    L1582   
       INC    $A5     
       DEC    $A7,X   
       BNE    L1582   
       TXA            
       TAY            
L1555: LDA    $A8,X   
       STA    $A7,X   
       LDA    $C0,X   
       STA    $BF,X   
       LDA    $AF,X   
       STA    $AE,X   
       CPX    #$04    
       BNE    L157B   
       DEC    $B8     
       LDA    #$00    
       STA    $A5     
       LDA    #$F0    
       STA    $C4     
       LDX    #$00    
       JSR    L13CE   
       INX            
       JSR    L13CE   
       JMP    L1585   
L157B: INX            
       CPX    #$05    
       BNE    L1555   
       BEQ    L1585   
L1582: DEX            
       BPL    L1549   
L1585: JSR    L1CC5   
       JSR    L1BBB   
       LDA    L1A8A   
       STA    COLUPF  
       LDX    #$08    
L1592: LDA    $AD,X   
       STA    $92     
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $92     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $91     
       CLC            
       ADC    $92     
       AND    #$0F    
       SEC            
       SBC    #$07    
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $91     
       STA    $97,X   
       DEX            
       BPL    L1592   
       STA    WSYNC   
       LDA    $9E     
       STA    HMBL    
       AND    #$0F    
       TAY            
L15C1: DEY            
       BPL    L15C1   
       STY    RESBL   
       STA    WSYNC   
       LDA    $9F     
       STA    HMM1    
       AND    #$0F    
       TAY            
L15CF: DEY            
       BPL    L15CF   
       STA    RESM1   
       STY    WSYNC   
       STA    RESP0   
       LDA    #$D0    
       STA    HMP0    
       LDA    #$70    
       STA    HMP1    
       LDY    #$0A    
L15E2: DEY            
       BPL    L15E2   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
L15F1: BIT    $0285   
       BPL    L15F1   
       STA    WSYNC   
       LDA    #$00    
       STA    VBLANK  
       STA    HMCLR   
       STA    NUSIZ0  
       LDX    #$1F    
       TXS            
       LDX    #$9D    
       STX    CXCLR   
       STX    WSYNC   
       LDY    $BC     
L160B: STY    WSYNC   
       DEX            
       DEY            
       BNE    L160B   
       LDA    $CC     
       AND    #$08    
       BEQ    L162E   
       LDA    $CA     
       STA    $F4     
       LDA    #$11    
       STA    $F5     
       LDA    #$F0    
       STA    $FC     
       LDA    #$10    
       STA    $FD     
       LDA    #$DB    
       STA    $FA     
       JMP    L179F   
L162E: LDY    #$06    
L1630: LDA    L1A83,Y 
       STY    WSYNC   
       CPX    $93     
       PHP            
       CPX    $94     
       PHP            
       AND    $C9     
       STA.w  $0008   
       LDA.wy $00CD,Y 
       STA    PF1     
       LDA.wy $00D4,Y 
       STA    PF2     
       PLA            
       PLA            
       LDA.wy $00DB,Y 
       STA    PF2     
       LDA.wy $00E2,Y 
       STA    PF1     
       DEX            
       CPX    #$91    
       BNE    L165F   
       LDA    #$E0    
       STA    PF0     
L165F: LDA    L1A83,Y 
       STY    WSYNC   
       CPX    $93     
       PHP            
       CPX    $94     
       PHP            
       AND    $C9     
       STA.w  $0008   
       LDA.wy $00CD,Y 
       STA    PF1     
       LDA.wy $00D4,Y 
       STA    PF2     
       PLA            
       PLA            
       LDA.wy $00DB,Y 
       STA    PF2     
       LDA.wy $00E2,Y 
       STA    PF1     
       DEX            
       DEY            
       BPL    L1630   
L1689: LDA    L1BF4,Y 
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       CPX    $93     
       PHP            
       CPX    $94     
       PHP            
       PLA            
       PLA            
       DEX            
       DEY            
       CPY    #$FB    
       BNE    L1689   
       LDY    $A5     
L16AA: STA    WSYNC   
       LDA    #$40    
       STA    PF0     
       LDA    #$0F    
       STA    COLUPF  
       CPX    $93     
       PHP            
       CPX    $94     
       PHP            
       PLA            
       PLA            
       DEX            
       DEY            
       BPL    L16AA   
       LDA    $BC     
       CMP    #$01    
       BEQ    L16C9   
       JMP    L1768   
L16C9: LDA    $EC     
       AND    #$07    
       TAY            
       LDA    L1AEB,Y 
       STA    $F6     
       LDA    #$1A    
       STA    $F7     
       LDA    #$05    
       STA    $A2     
L16DB: STX    WSYNC   
       CPX    $93     
       PHP            
       CPX    $94     
       PHP            
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       PLA            
       PLA            
       DEX            
       STX    $91     
       LDX    $A2     
       LDA    $BF,X   
       STA    $F4     
       LSR            
       BCS    L16FB   
       LDA    #$10    
       BCC    L16FD   
L16FB: LDA    #$1D    
L16FD: STA    $F5     
       LDA    $98,X   
       STA    HMP0    
       AND    #$0F    
       TAY            
       LDX    $91     
       STX    WSYNC   
       CPX    $93     
       PHP            
       CPX    $94     
       PHP            
       PLA            
L1711: DEY            
       BPL    L1711   
       STY    RESP0   
       PLA            
       DEX            
       STX    CXCLR   
       STX    WSYNC   
       STY    HMOVE   
       CPX    $93     
       PHP            
       CPX    $94     
       PHP            
       PLA            
       PLA            
       DEX            
       LDY    $A2     
       LDA.wy $00A7,Y 
       BNE    L1757   
       LDY    #$0F    
L1730: CPX    $93     
       STX    WSYNC   
       PHP            
       CPX    $94     
       PHP            
       LDA    ($F4),Y 
       STA    GRP0    
       LDA    ($F6),Y 
       STA    COLUP0  
       PLA            
       PLA            
       DEX            
       DEY            
       BPL    L1730   
L1746: LDA    VBLANK  
       ASL            
       ROR    $E7     
       LDA    WSYNC   
       ASL            
       ASL            
       ROR    $E6     
       DEC    $A2     
       BMI    L1768   
       BPL    L16DB   
L1757: TAY            
L1758: STX    WSYNC   
       CPX    $93     
       PHP            
       CPX    $94     
       PHP            
       PLA            
       PLA            
       DEX            
       DEY            
       BPL    L1758   
       BMI    L1746   
L1768: STX    WSYNC   
       CPX    $93     
       PHP            
       CPX    $94     
       PHP            
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       PLA            
       PLA            
       DEX            
       CPX    #$13    
       BNE    L1768   
       LDA    $C5     
       LDA    #$F0    
       STA    $F4     
       LDA    #$10    
       STA    $F5     
       LDA    #$73    
       STA    $FC     
       LDA    #$1A    
       STA    $FD     
       LDA    #$CB    
       STA    $FA     
       LDA    $88     
       BMI    L179B   
       LDA    #$FF    
       BNE    L179D   
L179B: LDA    #$00    
L179D: STA    REFP1   
L179F: LDA    #$1A    
       STA    $FB     
       LDA    $97     
       STY    WSYNC   
       STA    HMP1    
       CLC            
       ADC    #$10    
       STA    HMP0    
       AND    #$0F    
       TAY            
L17B1: DEY            
       BPL    L17B1   
       STA    RESP1   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       CPX    $93     
       PHP            
       CPX    $94     
       PHP            
       PLA            
       PLA            
       DEX            
       STA    CXCLR   
       LDY    $BB     
       BEQ    L17F5   
L17CB: LDA    ($FA),Y 
       STA    $92     
       LDA    ($C5),Y 
       STA    $91     
       LDA    ($F4),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    $92     
       STA    COLUP1  
       LDA    $91     
       STA    GRP1    
       LDA    ($FC),Y 
       STA    PF0     
       CPX    $93     
       PHP            
       CPX    $94     
       PHP            
       PLA            
       PLA            
       DEX            
       DEY            
       BPL    L17CB   
       CPX    #$02    
       BEQ    L1800   
L17F5: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       DEX            
       BNE    L17F5   
L1800: STX    WSYNC   
       LDX    #$FF    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       TXS            
       LDA    #$C4    
       STA    COLUPF  
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    ENAM1   
       STX    ENABL   
       STX    REFP0   
       STX    REFP1   
       LDA    #$09    
       STA    TIM64T  
       LDA    #$FE    
       STA    $D2     
       LDA    $90     
       BEQ    L182B   
       LDA    #$06    
L182B: STA    $D1     
       LDA    #$06    
       STA    $D3     
       LDA    #$FB    
       STA    $E8     
L1835: LDA    $D1     
       LSR            
       TAX            
       LDA    $8A,X   
       BCC    L1844   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       BCC    L1847   
L1844: LSR            
       AND    #$78    
L1847: BNE    L1853   
       LDY    $E8     
       BPL    L1853   
       INC    $E8     
       LDA    #$50    
       BNE    L1855   
L1853: STA    $E8     
L1855: LDX    $D2     
       STA    VSYNC,X 
       DEC    $D2     
       DEC    $D2     
       INC    $D1     
       LDA    #$11    
       STA    VBLANK,X
       DEC    $D3     
       BNE    L1835   
L1867: LDA    #$07    
       STA    $92     
       BIT    $0285   
       BPL    L1867   
       STY    WSYNC   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    HMCLR   
       LDX    $90     
       LDA    L1FFE,X 
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       STA    WSYNC   
L188D: DEY            
       BPL    L188D   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
L18A3: LDY    $92     
       LDA    ($FE),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($FC),Y 
       STA    GRP1    
       LDA    ($FA),Y 
       STA    GRP0    
       LDA    ($F8),Y 
       STA    $91     
       LDA    ($F6),Y 
       TAX            
       LDA    ($F4),Y 
       TAY            
       LDA    $91     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $92     
       BPL    L18A3   
       STY    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$07    
       STA    NUSIZ1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDX    $81     
       LDA    L1284,X 
       STA    PF2     
       LDA    #$05    
       STA    CTRLPF  
       STA    WSYNC   
       LDX    $90     
       LDA    $EA,X   
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       LDX    #$FF    
       STX    PF2     
       STA    WSYNC   
       LDA    #$21    
       STA    TIM64T  
       CLC            
       ROR    $E7     
       ROR    $E7     
       ROR    $E6     
       ROR    $E6     
       LDA    $F1     
       LSR            
       BCC    L1940   
       LDX    #$21    
       STX    CTRLPF  
       DEX            
       STX    NUSIZ1  
       JSR    L1C3B   
       LDX    #$00    
       JSR    L1E79   
       LDA    $B4     
       STA    $F6     
       LDX    #$01    
       STX    $91     
       JSR    L1E26   
       BCS    L1935   
       DEX            
       JSR    L1E26   
L1935: JSR    L1DBB   
       LDA    VBLANK  
       AND    #$40    
       BEQ    L1995   
       BNE    L1984   
L1940: LDX    #$01    
       STX    CTRLPF  
       DEX            
       STX    NUSIZ1  
       JSR    L1E10   
       INX            
       JSR    L1E10   
       LDX    #$00    
       JSR    L1E79   
       LDX    #$01    
       JSR    L1E79   
       DEC    $BD     
       BNE    L1978   
       LDA    $F0     
       AND    #$02    
       BEQ    L1978   
       INC    $B8     
       LDX    $B8     
       LDA    #$A1    
       STA    $BF,X   
       LDA    #$09    
       STA    $BD     
       CPX    #$05    
       BNE    L1978   
       LDA    $F0     
       EOR    #$02    
       STA    $F0     
L1978: LDA    VBLANK  
       AND    #$40    
       BNE    L1984   
       LDA    RSYNC   
       AND    #$40    
       BEQ    L1995   
L1984: LDA    #$40    
       STA    $A3     
       LDA    $C5     
       LSR            
       BCS    L1995   
       LDA    #$61    
       STA    $C5     
       LDA    #$1D    
       STA    $C6     
L1995: STA    CXCLR   
       LDY    #$02    
L1999: LDX    L1FF7,Y 
       LDA    VSYNC,X 
       STA    $91     
       LDA    VBLANK,X
       PHA            
       LDA    WSYNC,X 
       STA    VSYNC,X 
       LDA    RSYNC,X 
       STA    VBLANK,X
       LDA    $91     
       STA    WSYNC,X 
       PLA            
       STA    RSYNC,X 
       DEY            
       BPL    L1999   
       LDA    $F1     
       AND    #$07    
       CMP    #$07    
       BNE    L1A31   
       LDX    #$05    
L19BF: LDA    $BF,X   
       LSR            
       BCS    L19E1   
       ROL            
       CMP    #$F0    
       BEQ    L19E4   
       CLC            
       ADC    #$10    
       LDY    #$04    
L19CE: CMP    L1DB1,Y 
       BNE    L19D9   
       LDA    L1DB6,Y 
       JMP    L19DC   
L19D9: DEY            
       BPL    L19CE   
L19DC: STA    $BF,X   
       JMP    L19E4   
L19E1: JSR    L1EBA   
L19E4: DEX            
       BPL    L19BF   
       LDA    $CC     
       AND    #$02    
       BNE    L1A31   
       LDA    $C5     
       LSR            
       BCC    L1A12   
       ROL            
       ADC    #$10    
       CMP    #$B1    
       BNE    L1A2F   
       LDA    #$80    
       ORA    $F0     
       STA    $F0     
       CLC            
       LDX    $90     
       ROL    $EA,X   
       BNE    L1A1C   
       LDA    #$01    
       STA    $CC     
       LDA    #$10    
       STA    $C6     
       LDA    #$F0    
       BNE    L1A2F   
L1A12: LDA    $C5     
       CMP    #$F0    
       BEQ    L1A2F   
       LDA    $88     
       BNE    L1A24   
L1A1C: LDA    #$12    
       STA    $C6     
       LDA    #$74    
       BNE    L1A2F   
L1A24: LDA    $C5     
       CLC            
       ADC    #$10    
       CMP    #$84    
       BNE    L1A2F   
       LDA    #$54    
L1A2F: STA    $C5     
L1A31: LDA    $CC     
       AND    #$08    
       BEQ    L1A53   
       LDA    $F1     
       AND    #$07    
       BNE    L1A53   
       LDA    $CA     
       CLC            
       ADC    #$10    
       STA    $CA     
       LDA    $C5     
       CLC            
       ADC    #$10    
       CMP    #$78    
       BNE    L1A51   
       STA    $CA     
       LDA    #$58    
L1A51: STA    $C5     
L1A53: JSR    L1F3C   
L1A56: BIT    $0285   
       BPL    L1A56   
       JMP    L1415   
L1A5E: .byte $03,$03,$02,$02,$01,$01,$01
L1A65: .byte $FF,$FF,$1F,$07,$00,$00,$00
L1A6C: .byte $FF,$FF,$FF,$FF,$FF,$FC,$F0,$F0,$F0,$F0,$00,$E0,$E0,$E0,$00,$40
       .byte $40,$40,$40,$40,$40,$40,$40
L1A83: .byte $28,$48,$68,$88,$A8,$B8,$D8
L1A8A: .byte $E8,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$0A,$0A,$0A,$0A,$0C,$0C,$1A,$4A
       .byte $1A,$08,$F4,$F6,$F4,$F6,$F8,$F6,$F8,$48,$48,$48,$4A,$46,$4A,$18
       .byte $1A,$44,$46,$44,$84,$86,$88,$88,$86,$88,$88,$48,$4A,$4C,$4A,$3C
       .byte $3E,$98,$98,$98,$D8,$F8,$F8,$F8,$F8,$46,$48,$46,$F4,$F4,$F6,$F8
       .byte $FA,$3C,$3C,$3C,$3C,$3C,$3C,$86,$86,$86,$86,$86,$86,$8C,$8C,$3C
       .byte $1F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F
L1AEB: .byte $8B,$DB,$AB,$BB,$9B,$8B,$AB,$BB
L1AF3: LDA    $F0     
       AND    #$04    
       BEQ    L1B15   
       LDA    $F1     
       LSR            
       BCS    L1B15   
       CLC            
       LDA    $85     
       ADC    #$10    
       SBC    $B7     
       BMI    L1B0C   
       LSR            
       LSR            
       JMP    L1B10   
L1B0C: SEC            
       ROR            
       SEC            
       ROR            
L1B10: CLC            
       ADC    $B7     
       STA    $B7     
L1B15: RTS            

L1B16: LDX    #$06    
L1B18: LDA    L1A65,X 
       STA    $CD,X   
       STA    $E2,X   
       LDA    L1A6C,X 
       STA    $D4,X   
       STA    $DB,X   
       DEX            
       BPL    L1B18   
       RTS            

L1B2A: LDA    $93     
       SEC            
       SBC    #$92    
       BCS    L1B32   
       RTS            

L1B32: LSR            
       CMP    #$07    
       BCC    L1B39   
       LDA    #$06    
L1B39: STA    $91     
       LDA    #$00    
       STA    $FB     
       STA    $F8     
       LDA    $B4     
       SEC            
       SBC    #$22    
       CMP    #$40    
       BCC    L1B50   
       SBC    #$40    
       INC    $F8     
       INC    $F8     
L1B50: CMP    #$20    
       BCC    L1B58   
       SBC    #$20    
       INC    $F8     
L1B58: LSR            
       LSR            
       TAY            
       LDA    $F8     
       LSR            
       BCC    L1B65   
       LDA    L1BAA,Y 
       BNE    L1B68   
L1B65: LDA    L1BB3,Y 
L1B68: TAX            
       LDY    $F8     
       LDA    L1BA6,Y 
       STA    $FA     
       LDY    #$00    
L1B72: TXA            
       AND    ($FA),Y 
       BNE    L1B7F   
       INY            
       CPY    $91     
       BMI    L1B72   
       BEQ    L1B72   
       RTS            

L1B7F: EOR    #$FF    
       AND    ($FA),Y 
       STA    ($FA),Y 
       LDA    $95     
       STA    $96     
       LDA    $B6     
       STA    $B7     
       LDA    $B4     
       CLC            
       ADC    #$02    
       ORA    #$03    
       SEC            
       SBC    #$05    
       STA    $B6     
       TYA            
       ASL            
       ADC    #$92    
       STA    $95     
       LDA    #$00    
       STA    $93     
       JMP    L1E70   
L1BA6: .byte $CD,$D4,$DB,$E2
L1BAA: .byte $01,$02,$04,$08,$10,$20,$40,$80,$80
L1BB3: .byte $80,$40,$20,$10,$08,$04,$02,$01
L1BBB: LDA    $CC     
       BEQ    L1BC0   
       RTS            

L1BC0: LDA    $90     
       LSR            
       LDA    SWCHA   
       BCS    L1BCC   
       LSR            
       LSR            
       LSR            
       LSR            
L1BCC: AND    #$0C    
       CMP    #$0C    
       STA    $91     
       BEQ    L1C0B   
       LDA    $F1     
       LSR            
       BCS    L1C0B   
       LDA    $91     
       LSR            
       LSR            
       LDX    #$FF    
       LSR            
       BCS    L1BE8   
       DEC    $AD     
       LDA    #$FF    
       BNE    L1BEC   
L1BE8: INC    $AD     
       LDA    #$01    
L1BEC: CLC            
       ADC    $88     
       BPL    L1BF8   
       EOR    #$FF    
       CLC            
L1BF4: ADC    #$01    
       LDX    #$FE    
L1BF8: CMP    #$04    
       BCC    L1BFE   
       LDA    #$04    
L1BFE: CPX    #$FF    
       BCS    L1C06   
       EOR    #$FF    
       ADC    #$01    
L1C06: STA    $88     
       JMP    L1C1F   
L1C0B: LDA    $F1     
       AND    #$07    
       CMP    #$07    
       BNE    L1C1F   
       LDA    $88     
       BEQ    L1C1F   
       BMI    L1C1D   
       DEC    $88     
       BPL    L1C1F   
L1C1D: INC    $88     
L1C1F: LDA    $88     
       CLC            
       LDA    $AD     
       CMP    #$14    
       BCS    L1C2E   
       LDA    #$00    
       STA    $88     
       LDA    #$14    
L1C2E: CMP    #$8E    
       BCC    L1C38   
       LDA    #$00    
       STA    $88     
       LDA    #$8E    
L1C38: STA    $AD     
       RTS            

L1C3B: LDA    $CC     
       BNE    L1C90   
       LDA    $F0     
       AND    #$02    
       BNE    L1C90   
       LDA    $A6     
       BNE    L1C90   
       LDA    $93     
       BEQ    L1C91   
       CLC            
       ADC    $BE     
       CMP    #$A5    
       BCC    L1C56   
       LDA    #$00    
L1C56: STA    $93     
       LDA    $F1     
       AND    #$06    
       CMP    #$02    
       BNE    L1C6D   
       LDA    $89     
       BEQ    L1C6D   
       BPL    L1C6B   
       INC    $89     
       JMP    L1C6D   
L1C6B: DEC    $89     
L1C6D: LDA    $89     
       CLC            
       ADC    $B4     
       STA    $B4     
       CMP    #$22    
       BCS    L1C7C   
       LDA    #$23    
       BNE    L1C82   
L1C7C: CMP    #$A0    
       BCC    L1C90   
       LDA    #$9F    
L1C82: STA    $B4     
       JSR    L1E70   
       LDA    $89     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $89     
L1C90: RTS            

L1C91: LDX    $90     
       LDA    REFP1,X 
       BMI    L1C90   
       LDA    #$7F    
       AND    $EF     
       STA    $EF     
       LDA    $EC     
       CMP    #$05    
       BCC    L1CA5   
       INC    $86     
L1CA5: LDA    $88     
       STA    $89     
       LDA    $AD     
       ADC    #$11    
       STA    $B4     
       LDA    #$12    
       BNE    L1C56   
L1CB3: LDX    #$00    
L1CB5: LDA    $BF,X   
       CMP    #$F0    
       BNE    L1CC1   
       INX            
       CPX    #$06    
       BNE    L1CB5   
       RTS            

L1CC1: STX    $A2     
       CLC            
       RTS            

L1CC5: LDA    #$00    
       LDX    #$02    
L1CC9: STA    $E6,X   
       STA    $D1,X   
       DEX            
       BPL    L1CC9   
       RTS            

L1CD1: PHA            
       LDA    $F1     
       AND    #$0F    
       TAY            
       PLA            
L1CD8: CLC            
       ADC    L1CE1,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       RTS            

L1CE1: .byte $09,$02,$0B,$04,$0D,$06,$0F,$08,$01,$0A,$03,$0C,$05,$0E,$07,$00
       .byte $7E,$00,$FF
L1CF4: .byte $03,$05
L1CF6: STA    $E7     
       LDA    $E7     
       PHP            
       BPL    L1D02   
       CLC            
       EOR    #$FF    
       ADC    #$01    
L1D02: LDX    #$09    
L1D04: CMP    L1D4C,X 
       BCS    L1D0C   
       DEX            
       BNE    L1D04   
L1D0C: STX    $92     
       LDX    $EC     
       CPX    #$02    
       BCC    L1D1B   
       LDX    $92     
       LDA    L1D56,X 
       BCS    L1D1E   
L1D1B: LDA    L1CF4,X 
L1D1E: JSR    L1CD1   
       PLP            
       BMI    L1D29   
       CLC            
       EOR    #$FF    
       ADC    #$01    
L1D29: STA    $91     
       CMP    #$02    
       BCS    L1D34   
       LDA    $E7     
       BNE    L1D34   
       RTS            

L1D34: LDA    $91     
       CLC            
       LDX    $A2     
       ADC    $AE,X   
       CMP    #$15    
       BPL    L1D43   
       LDA    #$15    
       BEQ    L1D49   
L1D43: CMP    #$83    
       BCC    L1D49   
       LDA    #$83    
L1D49: STA    $AE,X   
       RTS            

L1D4C: .byte $00,$01,$08,$0E,$11,$14,$15,$16,$17,$18
L1D56: .byte $00,$08,$0C,$10,$14,$18,$1C,$20,$24,$28,$59,$81,$81,$81,$81,$81
       .byte $81,$81,$81,$81,$81,$81,$81,$81,$81,$81,$81,$24,$24,$24,$24,$24
       .byte $24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$18,$18,$18,$18,$18
       .byte $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$00,$00,$00,$00,$18
       .byte $18,$18,$18,$18,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$18,$18,$00,$00,$00,$00,$00,$00,$00
L1DB1: .byte $30,$60,$90,$C0,$F0
L1DB6: .byte $00,$30,$60,$90,$C0
L1DBB: LDA    $F0     
       AND    #$02    
       BNE    L1E02   
       LDA    $94     
       BNE    L1E03   
       JSR    L1CB3   
       CPX    #$06    
       BEQ    L1E02   
       LDA    $84     
       CMP    #$02    
       BCS    L1E02   
       LDA    $AD     
       ADC    #$04    
       STA    $85     
       INC    $87     
       LDA    $87     
       AND    #$0F    
       TAY            
       LDA    $86     
       JSR    L1CD8   
       BEQ    L1DE8   
       LDA    #$04    
L1DE8: EOR    $F0     
       AND    #$04    
       EOR    $F0     
       STA    $F0     
       LDX    $A2     
       LDA    $AE,X   
       CLC            
       ADC    #$18    
       STA    $B5     
       LDA    #$0F    
L1DFB: ADC    #$10    
       DEX            
       BPL    L1DFB   
L1E00: STA    $94     
L1E02: RTS            

L1E03: LDA    #$FE    
       CLC            
       ADC    $94     
       CMP    #$9D    
       BCC    L1E00   
       LDA    #$00    
       BEQ    L1E00   
L1E10: LDA    $93,X   
       BEQ    L1E25   
       LDA    #$FF    
       EOR    $BE     
       SEC            
       ROR            
       SEC            
       ADC    $93,X   
       CMP    #$A5    
       BCC    L1E23   
       LDA    #$00    
L1E23: STA    $93,X   
L1E25: RTS            

L1E26: ASL    $91     
       LDA    $B6,X   
       SEC            
       SBC    #$01    
       CMP    $B4     
       BCS    L1E77   
       ADC    #$04    
       CMP    $B4     
       BCC    L1E77   
       LDA    $93     
       BEQ    L1E77   
       LDA    $95,X   
       BEQ    L1E77   
       CMP    #$0A    
       BCC    L1E77   
       SBC    $93     
       STA    $92     
       LDA    $BE     
       ASL            
       CMP    $92     
       BCC    L1E77   
       LDA    #$00    
       STA    $93     
       STA    $95,X   
       SEC            
       LDA    #$02    
L1E57: SED            
       CLC            
       LDX    $90     
       BEQ    L1E5F   
       LDX    #$03    
L1E5F: ADC    $8C,X   
       STA    $8C,X   
       LDA    #$00    
       ADC    $8B,X   
       STA    $8B,X   
       LDA    #$00    
       ADC    $8A,X   
       STA    $8A,X   
       CLD            
L1E70: LDA    #$08    
       ORA    $F0     
       STA    $F0     
       RTS            

L1E77: CLC            
       RTS            

L1E79: LDA    $E6,X   
       BEQ    L1EB9   
       LDA    $F1     
       LSR            
       PHP            
       BCS    L1E8C   
       STX    $91     
       LDA    #$02    
       JSR    L1E57   
       LDX    $91     
L1E8C: LDA    #$00    
       STA    $93,X   
       LDA    $E6,X   
       LDX    #$05    
L1E94: LSR            
       BCS    L1E9A   
       DEX            
       BPL    L1E94   
L1E9A: LDA    L1BAA,X 
       ORA    $C8     
       STA    $C8     
       LDA    #$08    
       STA    $B9     
       LDA    L1BAA,X 
       PLP            
       BCC    L1EAF   
       ORA    $C7     
       BNE    L1EB3   
L1EAF: EOR    #$FF    
       AND    $C7     
L1EB3: STA    $C7     
       LDA    #$61    
       STA    $BF,X   
L1EB9: RTS            

L1EBA: LDA    L1BAA,X 
       AND    $C8     
       BEQ    L1F13   
       LDA    $BF,X   
       CMP    #$A1    
       BNE    L1F0A   
       LDA    L1BAA,X 
       BIT    $C7     
       PHP            
       EOR    #$FF    
       AND    $C8     
       STA    $C8     
       PLP            
       BNE    L1EE9   
       CPX    $B8     
       BNE    L1EE0   
       DEC    $B8     
       LDA    #$00    
       BEQ    L1EE2   
L1EE0: LDA    #$0E    
L1EE2: STA    $A7,X   
       LDA    #$F0    
       STA    $BF,X   
       RTS            

L1EE9: LDA    #$02    
       STA    $BA     
       STX    $91     
       LDX    $B8     
       CPX    #$05    
       BNE    L1EF7   
       BEQ    L1F07   
L1EF7: INC    $B8     
       INX            
       LDA    L1BAA,X 
       EOR    #$FF    
       AND    $C8     
       STA    $C8     
       LDA    #$A1    
       STA    $BF,X   
L1F07: LDX    $91     
       RTS            

L1F0A: INC    $B9     
       CLC            
       ADC    #$10    
       STA    $BF,X   
       BNE    L1F3B   
L1F13: INC    $BA     
       LDA    $BF,X   
       CMP    #$61    
       BNE    L1F36   
       LDA    #$00    
       STA    AUDV1   
       LDA    $83     
       LSR            
       AND    #$07    
       TAY            
       LDA    L1DB6,Y 
       STA    $BF,X   
       LDA    L1BAA,X 
       EOR    #$FF    
       AND    $C7     
       STA    $C7     
       JMP    L1F3B   
L1F36: SEC            
       SBC    #$10    
       STA    $BF,X   
L1F3B: RTS            

L1F3C: LDA    $F0     
       LSR            
       BCC    L1F42   
       RTS            

L1F42: LDA    $C8     
       BEQ    L1F64   
       LDA    $F1     
       LSR            
       BCS    L1F9D   
       INC    $B9     
       LDA    $B9     
       STA    AUDF0   
       STA    AUDV0   
       STA    AUDV1   
       ADC    #$01    
       LSR            
       STA    AUDF1   
       LDA    #$04    
       STA    AUDC1   
       LDA    #$0C    
       STA    AUDC0   
       BNE    L1F9D   
L1F64: LDA    #$00    
       STA    AUDV1   
       LDA    $F1     
       LSR            
       EOR    #$0E    
       AND    #$19    
       ORA    $EF     
       STA    AUDF0   
       AND    #$90    
       PHA            
       LDX    #$00    
       LDY    $B8     
       BMI    L1F90   
       LDX    L1A5E,Y 
       BEQ    L1F90   
       LDA    $F1     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       LSR            
       LSR            
       LSR            
L1F8B: ASL            
       DEX            
       BNE    L1F8B   
       TAX            
L1F90: STX    AUDV0   
       AND    #$0F    
       ORA    $FD     
       STA    $84     
       PLA            
       LDA    #$06    
       STA    AUDC0   
L1F9D: LDA    $F1     
       LSR            
       BCS    L1FB4   
       LDA    $BA     
       CMP    #$00    
       BEQ    L1FB4   
       DEC    $BA     
       STA    AUDF1   
       EOR    #$FF    
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC1   
L1FB4: LDA    $F0     
       AND    #$08    
       BEQ    L1FD1   
       EOR    $F0     
       STA    $F0     
       LDA    #$FF    
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $CB     
       EOR    #$08    
       STA    $CB     
       LSR            
       ORA    #$01    
       STA    AUDF1   
L1FD1: LDA    $A3     
       BEQ    L1FE6   
       LDA    $F1     
       ASL            
       STA    AUDF0   
       DEC    $A3     
       LDA    $A3     
       LSR            
       LSR            
       STA    AUDV0   
       LDA    #$03    
       STA    AUDC0   
L1FE6: RTS            

L1FE7: .byte $93,$92,$91,$8F,$8C,$87,$80,$73
L1FEF: .byte $01,$0C,$14,$1C
L1FF3: .byte $10,$0C,$08,$04
L1FF7: .byte $93,$9E,$B4
L1FFA: .byte $40,$80,$85,$14
L1FFE: .byte $1C,$8C
