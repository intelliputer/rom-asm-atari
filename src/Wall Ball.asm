; Disassembly of roms/Wall Ball.bin
; Disassembled Tue Oct  6 15:30:32 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Wall Ball.bin
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
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $1000
L1000: .byte $7E,$42,$42,$42,$42,$42,$42,$7E,$1C,$1C,$1C,$08,$08,$08,$08,$18
       .byte $7E,$40,$40,$7E,$02,$02,$22,$3E,$7E,$06,$06,$7C,$04,$04,$04,$7C
       .byte $06,$06,$06,$7E,$66,$66,$60,$60,$7E,$02,$02,$7E,$40,$40,$44,$7C
       .byte $7E,$42,$42,$7E,$40,$40,$48,$78,$08,$08,$08,$08,$04,$02,$42,$7E
       .byte $7E,$66,$66,$7E,$24,$24,$24,$3C,$06,$06,$06,$7E,$42,$42,$42,$7E
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$24,$6A,$66,$6A,$24,$18
       .byte $06,$06,$0D,$ED,$CD,$C0,$C0,$C0,$3C,$46,$0E,$1C,$38,$60,$62,$3C
       .byte $3E,$72,$72,$76,$70,$70,$70,$3E,$10,$00,$00,$10,$10,$10,$10,$10
L1080: .byte $10
L1081: .byte $00,$00,$00,$00,$00,$F0,$00,$10,$F0,$00,$10,$F0,$00,$30,$F0,$00
       .byte $30,$F0,$00,$70,$F0,$00,$70,$00,$00,$F0,$F2,$00,$F0,$F2,$01,$80
       .byte $F2,$01,$80,$F2,$01,$C0,$F2,$01,$C0,$F2,$01,$E0,$F2,$01,$E0,$00
       .byte $01,$F0,$F4,$01,$F0,$F4,$01,$F8,$F4,$01,$F8,$F4,$01,$FC,$F4,$01
       .byte $FC,$F4,$01,$FE,$00,$01,$FE,$F6,$01,$FF,$F6,$01,$FF,$F6,$02,$01
       .byte $F6,$02,$01,$00,$02,$03,$F8,$02,$03,$F8,$02,$07,$00,$02,$07,$FA
       .byte $02,$0F,$00
L10E4: .byte $02,$07,$BA,$02,$07,$00,$02,$03,$B8,$02,$03,$B8,$02,$01,$00,$02
       .byte $01,$B6,$02,$00,$B6,$09,$00,$B6,$01,$FE,$B6,$01,$FE,$00,$01,$FC
       .byte $B4,$01,$FC,$B4,$01,$F8,$B4,$01,$F8,$B4,$01,$F0,$B4,$01,$F0,$B4
       .byte $01,$E0,$00,$01,$E0,$B2,$01,$C0,$B2,$01,$C0,$B2,$01,$80,$B2,$01
       .byte $80,$B2,$01,$00,$B2,$01,$00,$B2,$00,$70,$00,$00,$70,$B0,$00,$30
       .byte $B0,$00,$30,$B0,$00,$10,$B0,$00,$10,$B0,$00,$00,$B0,$00,$00,$00
L1144: .byte $FF,$81,$81,$81,$81,$81,$81,$81,$81,$81,$81,$81,$81,$81,$81,$81
       .byte $FF,$00,$00,$00,$7E,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42
       .byte $7E,$00,$00,$00
L1168: .byte $00,$00,$01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$06,$06,$07,$07
       .byte $08
L1179: .byte $7F,$3F,$BF,$9F,$DF,$CF,$EF,$E7,$F7,$F3,$FB,$F9,$FD,$FC,$FE,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$38,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$7C,$38
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$7C
       .byte $7C,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18
       .byte $3C,$7E,$7E,$3C,$18,$00,$00,$00,$00,$00,$00
L11F4: .byte $0A,$15,$20,$2A,$34,$3E,$48,$52,$5C,$66,$70,$7A,$84,$8F,$9A,$48
       .byte $43,$3F,$3A,$36,$31,$2D,$28,$24,$1F,$1A,$16,$11,$0D,$08,$04,$00
       .byte $0E,$18,$22,$2C,$35,$3F,$48,$52,$5B,$65,$6E,$78,$81,$8B,$96,$46
       .byte $41,$3D,$39,$35,$30,$2C,$28,$24,$1F,$1B,$17,$12,$0E,$0A,$06,$02
       .byte $12,$1C,$25,$2E,$37,$40,$49,$52,$5B,$64,$6D,$76,$7F,$88,$92,$44
       .byte $40,$3C,$38,$34,$30,$2C,$28,$24,$20,$1C,$18,$14,$10,$0C,$08,$04
       .byte $16,$1F,$27,$30,$38,$41,$49,$52,$5A,$63,$6B,$74,$7C,$85,$8E,$42
       .byte $3E,$3A,$36,$32,$2E,$2B,$27,$24,$20,$1D,$19,$16,$12,$0E,$0A,$06
       .byte $1A,$22,$2A,$32,$3A,$42,$4A,$52,$5A,$62,$6A,$72,$7A,$82,$8A,$40
       .byte $3C,$38,$34,$30,$2D,$2A,$27,$24,$21,$1E,$1B,$18,$14,$10,$0C,$08
       .byte $1E,$25,$2D,$34,$3C,$43,$4B,$52,$59,$60,$68,$6F,$77,$7E,$86,$3E
       .byte $3A,$37,$34,$31,$2D,$2A,$27,$24,$20,$1D,$1A,$17,$13,$10,$0C,$0A
       .byte $22,$29,$30,$37,$3E,$45,$4C,$52,$58,$5F,$66,$6D,$74,$7B,$82,$3C
       .byte $39,$36,$33,$30,$2D,$2A,$27,$24,$21,$1E,$1B,$18,$15,$12,$0F,$0C
       .byte $26,$2C,$33,$39,$40,$46,$4C,$52,$57,$5D,$64,$6A,$72,$77,$7E,$3A
       .byte $37,$34,$31,$2E,$2B,$29,$26,$24,$21,$1F,$1C,$1A,$17,$14,$11,$0E
       .byte $2A,$30,$36,$3C,$42,$48,$4D,$52,$57,$5C,$62,$68,$6E,$74,$7A,$38
       .byte $35,$32,$2F,$2C,$2A,$28,$26,$24,$22,$20,$1E,$1C,$19,$16,$13,$10
       .byte $2E,$33,$39,$3E,$44,$49,$4D,$52,$56,$5B,$60,$65,$6B,$70,$76,$36
       .byte $33,$31,$2E,$2C,$2A,$28,$26,$24,$22,$20,$1E,$1C,$19,$17,$14,$12
       .byte $32,$37,$3C,$41,$46,$4A,$4E,$52,$56,$5A,$5E,$63,$68,$6D,$72,$34
       .byte $32,$30,$2E,$2C,$2A,$28,$26,$24,$22,$20,$1E,$1C,$1A,$18,$16,$14
       .byte $36,$3A,$3F,$43,$47,$4B,$4E,$52,$55,$59,$5C,$60,$65,$69,$6E,$32
       .byte $30,$2E,$2C,$2A,$28,$27,$25,$24,$22,$21,$1F,$1E,$1C,$1A,$18,$16
       .byte $3A,$3E,$42,$46,$49,$4C,$4F,$52,$55,$58,$5B,$5E,$62,$66,$6A,$30
       .byte $2E,$2C,$2A,$28,$27,$26,$25,$24,$23,$22,$21,$20,$1E,$1C,$1A,$18
       .byte $3E,$41,$45,$48,$4A,$4D,$4F,$52,$55,$57,$59,$5C,$5F,$62,$65,$2D
       .byte $2C,$2B,$29,$28,$27,$26,$25,$24,$23,$22,$21,$20,$1E,$1D,$1B,$1A
       .byte $42,$44,$47,$49,$4B,$4D,$4F,$52,$54,$55,$57,$5A,$5C,$5E,$60,$2C
       .byte $2B,$2A,$29,$28,$27,$26,$25,$24,$23,$22,$21,$20,$1F,$1E,$1D,$1C
L13D4: .byte $F4,$11,$E2,$11,$14,$12,$D0,$11,$34,$12,$D0,$11,$54,$12,$D0,$11
       .byte $74,$12,$D0,$11,$94,$12,$D0,$11,$B4,$12,$BE,$11,$D4,$12,$BE,$11
       .byte $F4,$12,$BE,$11,$14,$13,$AC,$11,$34,$13,$AC,$11,$54,$13,$AC,$11
       .byte $74,$13,$9A,$11,$94,$13,$9A,$11,$B4,$13,$88,$11
L1410: .byte $F0,$95,$95,$95,$FF,$95,$95,$95,$05,$05
L141A: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C
       .byte $0D,$0E,$0F,$10,$11,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L14B5: .byte $80,$06,$99,$12,$00,$82,$06,$99,$10,$12,$C2,$05,$50,$0E,$00,$C4
       .byte $05,$40,$0C,$12,$F6,$04,$30,$0A,$00,$F4,$04,$20,$08,$12,$33,$03
       .byte $15,$06,$00,$30,$03,$10,$04,$12,$50,$03,$06,$00,$12
L14E2: .byte $00,$05,$0A,$0F,$14,$19,$1E,$23,$28
L14EB: .byte $13,$00,$10,$00,$06,$50,$05,$00,$02,$50,$01,$00,$00,$50,$00,$25
       .byte $00,$10,$00,$05,$00,$02,$00,$01,$00,$01,$00
L1506: .byte $01,$00,$01,$1A,$24,$2B,$30

START:
L150D: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L1514: STA    VSYNC,X 
       INX            
       BNE    L1514   
       LDA    #$01    
       STA    $E6     
       LDA    #$00    
       STA    SWACNT  
       STA    SWBCNT  
       LDA    #$80    
       STA    $B6     
       LDA    L1080   
       STA    $A0     
       STA    $A2     
       STA    $A4     
       STA    $A6     
       STA    $A8     
       STA    $AA     
       LDA    #$01    
       STA    $C5     
       STA    $9B     
       STA    $9A     
       LDA    #$0A    
       STA    $AF     
       LDA    #$24    
       STA    $B0     
       LDA    #$10    
       STA    $B3     
       LDA    #$09    
       STA    $BC     
       LDA    #$08    
       STA    $BB     
       LDA    #$01    
       STA    $BD     
       LDA    #$01    
       STA    $BE     
       LDX    #$00    
L155E: LDA    L1410,X 
       STA    $88,X   
       INX            
       CPX    #$0A    
       BMI    L155E   
       LDA    #$FF    
       STA    $E3     
       JSR    L1F4B   
L156F: JSR    L18D6   
       LDA    $C3     
       AND    #$F0    
       BNE    L15B2   
       LDA    $B6     
       BMI    L15B2   
       LDA    #$02    
       STA    VBLANK  
       LDA    $C3     
       ORA    #$F0    
       STA    $C3     
       LDA    #$48    
       STA    $DC     
       LDA    #$34    
       STA    $B3     
       LDA    $99     
       AND    #$0F    
       STA    $99     
       LDA    #$00    
       STA    $98     
       STA    $97     
       STA    $96     
       STA    $DD     
       LDA    $E3     
       BPL    L15A6   
       LDA    #$07    
       STA    $E3     
L15A6: DEC    $E3     
       LDA    #$00    
       STA    $9A     
       JSR    L1F4B   
       JSR    L1E17   
L15B2: LDA    #$27    
       STA    TIM64T  
       LDA    $C3     
       BNE    L1601   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       LDA    $C2     
       BMI    L1601   
       LDA    $C1     
       BPL    L1601   
       LDA    #$04    
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$0E    
       STA    AUDC0   
       LDA    #$04    
       STA    AUDC1   
       LDX    $DA     
       LDA    L150D,X 
       STA    $96     
       INX            
       LDA    L150D,X 
       STA    $97     
       INX            
       LDA    L150D,X 
       STA    $98     
       EOR    #$F9    
       STA    AUDF0   
       STA    AUDF1   
       INX            
       TXA            
       STA    $DA     
       JSR    L1C70   
       LDA    #$00    
       STA    $E5     
       LDA    #$01    
       STA    $9A     
       STA    $9B     
L1601: LDA    $C1     
       BNE    L1607   
       INC    $E6     
L1607: LDA    $DA     
       CMP    $E4     
       BNE    L1622   
       LDA    $E5     
       BNE    L1622   
       LDA    #$FF    
       STA    $E5     
       JSR    L1F4B   
       LDA    $E3     
       CMP    #$07    
       BCC    L1622   
       LDA    #$FF    
       STA    $E3     
L1622: LDA    $DA     
       STA    $E4     
       LDA    $C3     
       AND    #$F0    
       BEQ    L1638   
       LDA    $9E     
       CMP    #$01    
       BNE    L1635   
       JSR    L1F4B   
L1635: JSR    L18B2   
L1638: JSR    L1C70   
       LDA    $C3     
       AND    #$0F    
       BEQ    L1648   
       LDA    #$00    
       STA    $BA     
       JMP    L1651   
L1648: JSR    L1C90   
       JSR    L1A87   
       JSR    L1D28   
L1651: JSR    L196F   
       LDA    $99     
       EOR    #$0F    
       STA    $99     
       AND    #$0F    
       BNE    L168A   
       LDA    $AE     
       STA    $D9     
       LDY    #$11    
       LDA    $9C     
       BEQ    L167F   
       LDA    $9E     
       BNE    L167F   
       LDA    $C3     
       AND    #$0F    
       BNE    L1674   
       DEC    $9C     
L1674: LDA    #$00    
L1676: STA.wy $00C7,Y 
       DEY            
       BNE    L1676   
       JMP    L169B   
L167F: LDA    ($B1),Y 
       STA.wy $00C7,Y 
       DEY            
       BPL    L167F   
       JMP    L169B   
L168A: LDA    $B0     
       STA    $D9     
       LDX    #$11    
       LDY    $E2     
L1692: LDA    L1144,Y 
       STA    $C7,X   
       INY            
       DEX            
       BPL    L1692   
L169B: LDA    INTIM   
       BNE    L169B   
       LDA    #$F0    
       STA    TIM64T  
       LDA    #$00    
       STA    COLUPF  
       LDA    SWCHB   
       AND    #$08    
       BEQ    L16B4   
       LDA    $95     
       BEQ    L16BE   
L16B4: LDA    $E6     
       CMP    #$01    
       BNE    L16BE   
       LDA    #$00    
       BEQ    L16C0   
L16BE: LDA    #$FF    
L16C0: STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$07    
       JSR    L1A2C   
       LDA    $C3     
       AND    #$F0    
       BEQ    L16E0   
       LDA    SWCHB   
       AND    #$08    
       BEQ    L16E0   
       LDA    $95     
       BEQ    L16E8   
L16E0: LDA    $E6     
       BNE    L16E8   
       LDA    #$02    
       STA    VBLANK  
L16E8: LDA    $96     
       PHA            
       LDA    $97     
       PHA            
       LDA    $98     
       PHA            
       LDA    #$C0    
       ORA    $87     
       CLC            
       ADC    #$01    
       STA    $96     
       LDA    #$AB    
       STA    $97     
       LDA    $9D     
       STA    $98     
       JSR    L1C70   
       PLA            
       STA    $98     
       PLA            
       STA    $97     
       PLA            
       STA    $96     
       LDA    #$26    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$07    
       JSR    L1A2C   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$00    
       STA    COLUP1  
       LDA    #$FF    
       STA    COLUP0  
       LDA    $99     
       AND    #$0F    
       BNE    L173A   
       LDA    #$00    
       JMP    L173C   
L173A: LDA    #$37    
L173C: STA    NUSIZ0  
       LDA    #$E1    
       STA    CTRLPF  
       LDA    #$00    
       STA    GRP0    
       STA    ENAM0   
       STA    ENABL   
       STA    WSYNC   
       LDA    #$A0    
       LDX    #$01    
       JSR    L1A71   
       LDA    $99     
       AND    #$0F    
       BEQ    L1763   
       LDA    $AF     
       LDX    #$00    
       JSR    L1A71   
       JMP    L176A   
L1763: LDA    $AD     
       LDX    #$00    
       JSR    L1A71   
L176A: LDA    #$06    
       LDX    #$04    
       JSR    L1A71   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$E0    
       STA    GRP1    
       LDA    #$FF    
       STA    ENABL   
       LDA    #$10    
       STA    HMBL    
       LDA    #$F0    
       STA    HMP1    
       LDY    #$00    
       STY    HMP0    
       LDA    #$00    
       STA    NUSIZ1  
L178D: CPY    #$63    
       BCS    L17AB   
       STA    WSYNC   
       STA    HMOVE   
       LDX    L1081,Y 
       INY            
       LDA    L1081,Y 
       STA    PF0,X   
       INY            
       LDA    L1081,Y 
       STA    COLUBK  
       INY            
       JSR    L1F39   
       JMP    L178D   
L17AB: LDA    #$00    
       STA    GRP1    
       STA    ENABL   
       LDA    #$00    
       STA    HMP1    
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $DF     
       STA    COLUP1  
       LDY    #$00    
L17C1: LDA    #$37    
       STA    NUSIZ1  
       CPY    #$12    
       BCS    L17DD   
       TYA            
       LSR            
       TAX            
       LDA    $88,X   
       STA    GRP1    
       INY            
       JSR    L1F39   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       JMP    L17C1   
L17DD: LDA    #$20    
       STA    HMP1    
       LDY    #$00    
       LDA    #$F0    
       STA    HMBL    
       LDA    #$00    
       STA    GRP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    ENABL   
       LDA    #$F0    
       STA    GRP1    
       LDA    #$00    
       STA    NUSIZ1  
       LDA    #$00    
       STA    COLUP1  
       LDY    #$00    
       LDA    #$10    
       STA    HMP1    
L1805: CPY    #$5F    
       BCS    L1823   
       STA    WSYNC   
       STA    HMOVE   
       LDX    L10E4,Y 
       INY            
       LDA    L10E4,Y 
       STA    PF0,X   
       INY            
       LDA    L10E4,Y 
       STA    COLUBK  
       INY            
       JSR    L1F39   
       JMP    L1805   
L1823: LDA    INTIM   
       BNE    L1823   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       LDA    #$38    
       LDX    #$00    
       JSR    L1A71   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$44    
       LDX    #$01    
       JSR    L1A71   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $C3     
       BEQ    L18A7   
       LDA    #$28    
       STA    TIM64T  
       LDA    #$B6    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $96     
       PHA            
       LDA    $97     
       PHA            
       LDA    $98     
       PHA            
       LDA    #$D0    
       ORA    $9B     
       STA    $96     
       LDA    #$AA    
       STA    $97     
       LDA    #$E0    
       ORA    $9A     
       STA    $98     
       STA    $98     
       JSR    L1C70   
       PLA            
       STA    $98     
       PLA            
       STA    $97     
       PLA            
       STA    $96     
       LDA    #$07    
       JSR    L1A2C   
L187F: LDA    #$00    
       LDX    #$06    
L1883: STA    $80,X   
       DEX            
       BPL    L1883   
       LDX    #$04    
L188A: STA    GRP0,X  
       DEX            
       BPL    L188A   
       LDX    #$03    
L1891: STA    COLUP0,X
       DEX            
       BPL    L1891   
       LDX    #$02    
L1898: STA    PF0,X   
       DEX            
       BPL    L1898   
       STA    WSYNC   
L189F: LDA    INTIM   
       BNE    L189F   
       JMP    L156F   
L18A7: LDA    #$28    
       STA    TIM64T  
       JSR    L1E2B   
       JMP    L187F   
L18B2: LDX    $DD     
L18B4: TXA            
       BEQ    L18D1   
       SED            
       CLC            
       LDA    $98     
       ADC    $93     
       STA    $98     
       LDA    $97     
       ADC    $94     
       STA    $97     
       LDA    $96     
       ADC    #$00    
       STA    $96     
       CLC            
       CLD            
       DEX            
       JMP    L18B4   
L18D1: LDA    #$00    
       STA    $DD     
       RTS            

L18D6: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    SWCHB   
       AND    #$01    
       BNE    L18E6   
       JMP    L150D   
L18E6: LDA    SWCHB   
       AND    #$08    
       BNE    L18F6   
       LDA    $C3     
       ORA    #$0F    
       STA    $C3     
       JMP    L18FC   
L18F6: LDA    $C3     
       AND    #$F0    
       STA    $C3     
L18FC: LDA    $95     
       BEQ    L1904   
       LDA    #$FE    
       STA    $9E     
L1904: LDA    $9E     
       BEQ    L1919   
       LDA    $C3     
       ORA    #$0F    
       STA    $C3     
       DEC    $9E     
       BNE    L1919   
       LDA    $9C     
       BNE    L1919   
       JSR    L1E17   
L1919: LDA    #$02    
       STA    WSYNC   
       LDX    $B6     
       BPL    L1931   
       LDY    #$00    
       LDA    INPT4   
       BPL    L192D   
       LDY    #$01    
       LDA    INPT5   
       BMI    L1954   
L192D: STY    $B6     
       TYA            
       TAX            
L1931: LDA    SWCHA   
       CPX    #$00    
       BNE    L193C   
       LSR            
       LSR            
       LSR            
       LSR            
L193C: AND    #$0F    
       EOR    #$0F    
       BEQ    L1944   
       ORA    #$40    
L1944: STA    $B7     
       TAY            
       LDA    INPT4,X 
       BMI    L1954   
       TYA            
       ORA    #$80    
       STA    $B7     
       LDA    #$FF    
       STA    $E5     
L1954: STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$00    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    VBLANK  
       INC    $C2     
       DEC    $C1     
       RTS            

L196F: LDA    $C3     
       BNE    L1976   
       JMP    L1A2B   
L1976: AND    #$0F    
       BEQ    L197D   
       JMP    L1A16   
L197D: LDA    $9C     
       BEQ    L1997   
       AND    #$F0    
       BNE    L1988   
       JMP    L1A16   
L1988: LDA    #$01    
       STA    AUDF0   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$0A    
       STA    AUDV0   
       JMP    L1A2B   
L1997: LDA    #$20    
       BIT    $BA     
       BPL    L19CD   
       LDA    $BA     
       AND    #$04    
       BNE    L19B8   
       LDA    #$0A    
       STA    AUDC1   
       LDA    #$08    
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDC0   
       STA    AUDV0   
       STA    AUDV1   
       JMP    L1A27   
L19B8: LDA    #$04    
       STA    AUDC0   
       STA    AUDC1   
       LDA    #$08    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDF1   
       STA    AUDV0   
       STA    AUDV1   
       JMP    L1A27   
L19CD: BVC    L19FD   
       LDA    $BA     
       AND    #$08    
       BNE    L19E8   
       LDA    #$0A    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDC1   
       STA    AUDV0   
       STA    AUDV1   
       JMP    L1A27   
L19E8: LDA    #$05    
L19EA: STA    AUDC0   
       LDA    #$0A    
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDC1   
       STA    AUDF0   
       STA    AUDV0   
       STA    AUDV1   
       JMP    L1A27   
L19FD: BEQ    L1A16   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$0A    
       STA    AUDC1   
       LDA    #$05    
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$0B    
       STA    AUDV0   
       STA    AUDV1   
       JMP    L1A27   
L1A16: LDA    $9C     
       CMP    #$01    
       LDA    #$0A    
       BEQ    L19EA   
       LDA    #$00    
       LDX    #$05    
L1A22: STA    AUDC0,X 
       DEX            
       BNE    L1A22   
L1A27: LDA    #$00    
       STA    $BA     
L1A2B: RTS            

L1A2C: STA    $80     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$07    
       STA    VDELP0  
       STA    VDELP1  
L1A3A: LDY    $80     
       LDA    ($A9),Y 
       STA    $81     
       STA    WSYNC   
       LDA    ($A7),Y 
       TAX            
       LDA    ($9F),Y 
       NOP            
       STA    GRP0    
       LDA    ($A1),Y 
       STA    GRP1    
       LDA    ($A3),Y 
       STA    GRP0    
       LDA    ($A5),Y 
       LDY    $81     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $80     
       BPL    L1A3A   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       RTS            

L1A71: STA    WSYNC   
       SEC            
L1A74: SBC    #$0F    
       BCS    L1A74   
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

L1A87: LDA    #$00    
       STA    $AB     
       LDA    #$0C    
       BIT    $B7     
       BPL    L1A93   
       STA    $AB     
L1A93: BVC    L1ADD   
       BEQ    L1AB7   
       LDA    $B7     
       AND    #$08    
       BEQ    L1AAA   
       LDA    $AF     
       CLC            
       ADC    #$04    
       CMP    #$8A    
       BNE    L1AB5   
       LDA    #$86    
       BNE    L1AB5   
L1AAA: SEC            
       LDA    $AF     
       SBC    #$04    
       CMP    #$06    
       BNE    L1AB5   
       LDA    #$0A    
L1AB5: STA    $AF     
L1AB7: LDA    #$03    
       BIT    $B7     
       BEQ    L1ADD   
       LDA    $B7     
       AND    #$01    
       BEQ    L1AD0   
       LDA    $B0     
       CLC            
       ADC    #$02    
       CMP    #$46    
       BNE    L1ADB   
       LDA    #$44    
       BNE    L1ADB   
L1AD0: LDA    $B0     
       SEC            
       SBC    #$02    
       CMP    #$02    
       BNE    L1ADB   
       LDA    #$04    
L1ADB: STA    $B0     
L1ADD: RTS            

L1ADE: LDA    $C3     
       BNE    L1AE4   
       BEQ    L1AE8   
L1AE4: LDA    $B3     
       BEQ    L1AEB   
L1AE8: JMP    L1C66   
L1AEB: LDA    #$00    
       STA    $86     
       LDA    $AD     
       STA    $80     
       CLC            
       ADC    #$07    
       STA    $81     
       LDA    $E2     
       BNE    L1B15   
       LDA    $AF     
       TAX            
       STA    $82     
       CLC            
       ADC    #$04
       STA    $83     
       TXA            
       CLC            
       ADC    #$20    
       STA    $84     
       TXA            
       CLC            
       ADC    #$1C    
       STA    $85     
       JMP    L1B2F   
L1B15: LDA    $AF     
       TAX            
       CLC            
       ADC    #$04    
       STA    $82     
       TXA            
       CLC            
       ADC    #$08    
       STA    $83     
       TXA            
       CLC            
       ADC    #$1C    
       STA    $84     
       TXA            
       CLC            
       ADC    #$18    
       STA    $85     
L1B2F: LDA    $81     
       CMP    $82     
       BCS    L1B37   
       BCC    L1B3F   
L1B37: LDA    $80     
       CMP    $84     
       BEQ    L1B42   
       BCC    L1B42   
L1B3F: JMP    L1C3E   
L1B42: LDA    $80     
       CMP    $83     
       BCC    L1B4C   
       BEQ    L1B4C   
       BNE    L1B53   
L1B4C: LDA    #$01    
       STA    $86     
L1B50: JMP    L1B5F   
L1B53: LDA    $81     
       CMP    $85     
       BCS    L1B5B   
       BCC    L1B50   
L1B5B: LDA    #$04    
       STA    $86     
L1B5F: LDA    $AE     
       CLC            
       ADC    #$0C    
       STA    $80     
       SEC            
       SBC    #$05    
       STA    $81     
       LDA    $E2     
       BNE    L1B8B   
       LDA    $B0     
       CLC            
       ADC    #$11    
       STA    $82     
       TAX            
       SEC            
       SBC    #$01    
       STA    $83     
       TXA            
       SEC            
       SBC    #$11    
       STA    $84     
       TXA            
       SEC            
       SBC    #$10    
       STA    $85     
       JMP    L1BA8   
L1B8B: LDA    $B0     
       CLC            
       ADC    #$11    
       TAX            
       SEC            
       SBC    #$01    
       STA    $82     
       TXA            
       SEC            
       SBC    #$02    
       STA    $83     
       TXA            
       SEC            
       SBC    #$0F    
       STA    $84     
       TXA            
       SEC            
       SBC    #$0E    
       STA    $85     
L1BA8: LDA    $81     
       CMP    $82     
       BEQ    L1BB2   
       BCC    L1BB2   
       BCS    L1BB8   
L1BB2: LDA    $80     
       CMP    $84     
       BCS    L1BBB   
L1BB8: JMP    L1C3E   
L1BBB: LDA    $80     
       CMP    $83     
       BCC    L1BCA   
       LDA    $86     
       ORA    #$40    
       STA    $86     
L1BC7: JMP    L1BD8   
L1BCA: LDA    $85     
       CMP    $81     
       BCS    L1BD2   
       BCC    L1BC7   
L1BD2: LDA    $86     
       ORA    #$10    
       STA    $86     
L1BD8: LDA    $86     
       AND    #$0F    
       BEQ    L1C0A   
       CMP    #$04    
       BEQ    L1BF9   
       LDA    $BD     
       BEQ    L1BEF   
       BMI    L1BEF   
       LDA    #$FE    
       STA    $BD     
       JMP    L1C0A   
L1BEF: LDA    $BD     
       SEC            
       SBC    #$01    
       STA    $BD     
L1BF6: JMP    L1C0A   
L1BF9: LDA    $BD     
       BPL    L1C03   
       LDA    #$02    
       STA    $BD     
       BNE    L1BF6   
L1C03: LDA    $BD     
       CLC            
       ADC    #$01    
       STA    $BD     
L1C0A: LDA    $86     
       AND    #$F0    
       BEQ    L1C66   
       CMP    #$40    
       BEQ    L1C28   
       LDA    $BE     
       BPL    L1C1E   
       LDA    #$02    
       STA    $BE     
       BNE    L1C25   
L1C1E: LDA    $BE     
       CLC            
       ADC    #$01    
       STA    $BE     
L1C25: JMP    L1C66   
L1C28: LDA    $BE     
       BEQ    L1C34   
       BMI    L1C34   
       LDA    #$FE    
       STA    $BE     
       BNE    L1C25   
L1C34: LDA    $BE     
       SEC            
       SBC    #$01    
       STA    $BE     
       JMP    L1C66   
L1C3E: LDA    $9C     
       BNE    L1C66   
       SED            
       LDA    $9D     
       SEC            
       SBC    #$01    
       STA    $9D     
       CLD            
       CMP    #$00    
       BNE    L1C5B   
       LDA    #$FF    
       STA    $95     
       STA    $9E     
       LDA    #$00    
       STA    $C1     
       STA    $C2     
L1C5B: LDX    $DE     
       LDA    L1506,X 
       STA    $9C     
       LDA    #$1E    
       STA    $9E     
L1C66: LDX    #$06    
       LDA    #$00    
L1C6A: STA    $80,X   
       DEX            
       BPL    L1C6A   
       RTS            

L1C70: LDX    #$00    
       LDY    #$00    
L1C74: LDA    $96,X   
       AND    #$F0    
       LSR            
       STA.wy $009F,Y 
       INY            
       INY            
       LDA    $96,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $009F,Y 
       INY            
       INY            
       INX            
       CPX    #$03    
       BNE    L1C74   
       RTS            

L1C90: DEC    $C5     
       BEQ    L1CA1   
       LDA    $C3     
       AND    #$F0    
       BNE    L1C9E   
       LDA    $B9     
       STA    $B7     
L1C9E: JMP    L1D27   
L1CA1: LDA    $DE     
       STA    $C5     
       JSR    L1ADE   
       LDA    $9E     
       BNE    L1C9E   
       JSR    L1DA2   
       JSR    L1E0B   
L1CB2: LDA    $99     
       AND    #$F0    
       BEQ    L1CD3   
       LDA    $B3     
       CMP    #$38    
       BCC    L1CCB   
       LDA    $99     
       EOR    #$F0    
       STA    $99     
       LDA    #$80    
       STA    $BA     
       JMP    L1CB2   
L1CCB: CLC            
       ADC    #$04    
       STA    $B3     
       JMP    L1D03   
L1CD3: LDA    $B3     
       BNE    L1CEF   
       LDA    $99     
       EOR    #$F0    
       STA    $99     
       LDA    $AB     
       BNE    L1CE8   
       LDA    #$40    
       STA    $BA     
       JMP    L1CB2   
L1CE8: LDA    #$48    
       STA    $BA     
       JMP    L1CB2   
L1CEF: SEC            
       SBC    #$04    
       STA    $B3     
       CMP    #$30    
       BNE    L1D03   
       LDX    $87     
       CPX    #$08    
       BNE    L1D03   
       JSR    L1FDA   
       LDA    $B3     
L1D03: TAX            
       LDA    L13D4,X 
       STA    $B4     
       INX            
       LDA    L13D4,X 
       STA    $B5     
       INX            
       LDA    L13D4,X 
       STA    $B1     
       INX            
       LDA    L13D4,X 
       STA    $B2     
       LDY    $BF     
       LDA    ($B4),Y 
       STA    $AD     
       LDY    $C0     
       LDA    ($B4),Y 
       STA    $AE     
L1D27: RTS            

L1D28: LDA    $C3     
       AND    #$F0    
       BEQ    L1D65   
       LDA    $9C     
       BNE    L1D65   
       LDA    $B3     
       CMP    #$38    
       BNE    L1D65   
       LDA    $BC     
       LSR            
       BCS    L1D4F   
       ASL            
       TAX            
       LDA    L1168,X 
       TAX            
       LDY    $BB     
       LDA    L1179,Y 
       AND    $88,X   
       STA    $88,X   
       JMP    L1D65   
L1D4F: ASL            
       TAX            
       LDA    L1168,X 
       TAX            
       LDY    $BB     
       LDA    L1179,Y 
       TAY            
       AND    $88,X   
       STA    $88,X   
       INX            
       TYA            
       AND    $88,X   
       STA    $88,X   
L1D65: LDA    $B3     
       CMP    #$34    
       BNE    L1DA1   
       LDA    #$00    
       STA    $DB     
       LDX    #$08    
L1D71: LDA    $88,X   
       LDY    #$08    
L1D75: LSR            
       BCC    L1D7A   
       INC    $DB     
L1D7A: DEY            
       BNE    L1D75   
       DEX            
       BPL    L1D71   
       LDA    $DC     
       SEC            
       SBC    $DB     
       STA    $DD     
       BEQ    L1D8D   
       LDA    #$84    
       STA    $BA     
L1D8D: LDA    $DB     
       STA    $DC     
       CMP    #$10    
       BCS    L1DA1   
       LDA    #$FF    
       STA    $9E     
       LDA    #$34    
       STA    $B3     
       LDA    #$48    
       STA    $DC     
L1DA1: RTS            

L1DA2: LDA    $B3     
       BNE    L1DBA   
       LDA    $AB     
       BEQ    L1DBA   
       LDA    $9B     
       CMP    #$01    
       BEQ    L1DB4   
       LDA    $9C     
       BNE    L1DBA   
L1DB4: LDA    #$00    
       STA    $BD     
       STA    $BE     
L1DBA: LDA    $BB     
       CLC            
       ADC    $BD     
       STA    $BB     
       BPL    L1DD2   
       LDA    #$00    
       STA    $BB     
       LDA    #$01    
       STA    $BD     
       LDA    #$20    
       STA    $BA     
       JMP    L1DE2   
L1DD2: CMP    #$0F    
       BCC    L1DE2   
       LDA    #$0E    
       STA    $BB     
       LDA    #$FF    
       STA    $BD     
       LDA    #$20    
       STA    $BA     
L1DE2: LDA    $BC     
       CLC            
       ADC    $BE     
       STA    $BC     
       BPL    L1DFA   
       LDA    #$00    
       STA    $BC     
       LDA    #$01    
       STA    $BE     
       LDA    #$20    
       STA    $BA     
       JMP    L1E0A   
L1DFA: CMP    #$11    
       BCC    L1E0A   
       LDA    #$10    
       STA    $BC     
       LDA    #$FF    
       STA    $BE     
       LDA    #$20    
       STA    $BA     
L1E0A: RTS            

L1E0B: LDA    $BC     
       CLC            
       ADC    #$0F    
       STA    $C0     
       LDA    $BB     
       STA    $BF     
       RTS            

L1E17: LDA    #$FF    
       STA    $88     
       LDX    #$00    
L1E1D: LDA    $88,X   
       INX            
       STA    $88,X   
       CPX    #$09    
       BMI    L1E1D   
       LDA    #$FF    
       STA    $88,X   
       RTS            

L1E2B: LDA    $BB     
       STA    $81     
       LDA    $BD     
       STA    $82     
       LDA    $BC     
       STA    $83     
       LDA    $BE     
       STA    $84     
       LDA    $B3     
       LSR            
       LSR            
       BPL    L1E43   
       LDA    #$00    
L1E43: STA    $80     
       LDA    $99     
       AND    #$F0    
       BEQ    L1E4E   
       JMP    L1F06   
L1E4E: LDA    $80     
       BEQ    L1EAB   
       DEC    $80     
       LDA    $81     
       CLC            
       ADC    $82     
       STA    $81     
       BMI    L1E64   
       CMP    #$0F    
       BCS    L1E6B   
       JMP    L1E7E   
L1E64: LDA    #$00    
       STA    $81     
       JMP    L1E6F   
L1E6B: LDA    #$0E    
       STA    $81     
L1E6F: LDA    $82     
       BMI    L1E7A   
       LDA    #$FF    
       STA    $82     
       JMP    L1E7E   
L1E7A: LDA    #$01    
       STA    $82     
L1E7E: LDA    $83     
       CLC            
       ADC    $84     
       STA    $83     
       BMI    L1E8E   
       CMP    #$11    
       BCS    L1E95   
       JMP    L1E4E   
L1E8E: LDA    #$00    
       STA    $83     
       JMP    L1E99   
L1E95: LDA    #$10    
       STA    $83     
L1E99: LDA    $84     
       BMI    L1EA4   
       LDA    #$FF    
       STA    $84     
       JMP    L1E4E   
L1EA4: LDA    #$01    
       STA    $84     
       JMP    L1E4E   
L1EAB: LDA    #$00    
       STA    $B9     
       LDX    $81     
       STX    $86     
       LDA    L11F4,X 
       STA    $81     
       LDA    $83     
       STA    $85     
       CLC            
       ADC    #$0F    
       TAX            
       LDA    L11F4,X 
       STA    $83     
       LDA    $B0     
       CMP    $83     
       BCC    L1EDB   
       SEC            
       SBC    #$04    
       CMP    $83     
       BCC    L1EE1   
       LDA    $B9     
       ORA    #$42    
       STA    $B9     
       JMP    L1EE1   
L1EDB: LDA    $B9     
       ORA    #$41    
       STA    $B9     
L1EE1: LDA    $AF     
       CMP    $81     
       BCC    L1EF0   
       LDA    $B9     
       ORA    #$44    
       STA    $B9     
       JMP    L1EFD   
L1EF0: CLC            
       ADC    #$10    
       CMP    $81     
       BCS    L1EFD   
       LDA    $B9     
       ORA    #$48    
       STA    $B9     
L1EFD: LDA    $B9     
       AND    #$7F    
       STA    $B9     
       JMP    L1F38   
L1F06: LDA    #$00    
       STA    $B9     
       LDA    $AF     
       CMP    #$42    
       BEQ    L1F21   
       BCC    L1F1B   
       LDA    $B9     
       ORA    #$44    
       STA    $B9     
       JMP    L1F21   
L1F1B: LDA    $B9     
       ORA    #$48    
       STA    $B9     
L1F21: LDA    $B0     
       CMP    #$24    
       BEQ    L1F38   
       BCC    L1F32   
       LDA    $B9     
       ORA    #$42    
       STA    $B9     
       JMP    L1F38   
L1F32: LDA    $B9     
       ORA    #$41    
       STA    $B9     
L1F38: RTS            

L1F39: LDX    $D9     
       LDA    L141A,X 
       INX            
       STX    $D9     
       TAX            
       LDA    $C7,X   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       RTS            

L1F4B: LDA    $9C     
       BNE    L1FBB   
       INC    $9A     
       LDA    #$05    
       CMP    $9A     
       BNE    L1F70   
       LDA    #$01    
       STA    $9A     
       INC    $9B     
       LDA    #$06    
       CMP    $9B     
       BNE    L1F7B   
       LDA    #$FF    
       STA    $95     
       LDA    #$0F    
       STA    $9B     
       STA    $9A     
       JMP    L1FD9   
L1F70: LDA    #$04    
       CMP    $9A     
       BNE    L1F7B   
       LDA    #$08    
       JMP    L1F85   
L1F7B: LDA    #$07    
       CMP    $E3     
       BEQ    L1F85   
       INC    $E3     
       LDA    $E3     
L1F85: TAY            
       STA    $87     
       LDX    L14E2,Y 
       LDA    L14B5,X 
       STA    $DF     
       INX            
       LDA    L14B5,X 
       STA    $DE     
       INX            
       LDA    L14B5,X 
       STA    $9D     
       STA    $E0     
       INX            
       LDA    L14B5,X 
       STA    $E1     
       INX            
       LDA    L14B5,X 
       STA    $E2     
       LDX    #$08    
       CPX    $87     
       BNE    L1FBB   
       LDA    $E0     
       SED            
       SEC            
       SBC    $9B     
       CLD            
       STA    $9D     
       STA    $E0     
L1FBB: LDA    $E0     
       SED            
       SEC            
       SBC    $9D     
       CLC            
       CLD            
       CMP    #$04    
       BCC    L1FC9   
       LDA    #$04    
L1FC9: ASL            
       CLC            
       ADC    $E1     
       TAX            
       LDA    L14EB,X 
       STA    $94     
       INX            
       LDA    L14EB,X 
       STA    $93     
L1FD9: RTS            

L1FDA: LDX    #$08    
L1FDC: LDA    $88,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       TAY            
       LDA    $88,X   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STY    $88,X   
       ORA    $88,X   
       STA    $88,X   
       DEX            
       BPL    L1FDC   
       RTS            

L1FF7: .byte $70,$75,$00,$FF,$F2,$0D,$15,$0D,$15
