; Disassembly of roms/Shuttle Orbiter.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Shuttle Orbiter.bin
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
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $1000
L1000: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $1E,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$30,$30,$18,$18,$0C,$0C,$46,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$18,$18,$00,$00,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$A4,$AA,$EA,$AA,$4A,$42,$99,$91,$99,$42,$00,$AE,$A8,$E8
       .byte $A8,$48,$11,$11,$17,$15,$17,$00,$F4,$94,$95,$96,$F4,$77,$51,$73
       .byte $51,$77,$00,$85,$85,$87,$85,$85,$00,$00,$00,$00,$00,$00,$5B,$52
       .byte $52,$52,$52
L1093: .byte $00,$08,$1C,$1C,$3E,$3E,$3E,$3E,$3E,$3E,$1C,$5D,$5D,$5D,$5D,$5D
       .byte $5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D,$5D,$6B,$77,$7F,$3E
       .byte $3E,$1C,$08
L10B6: .byte $0F,$3D,$1D,$0D,$0D,$0D,$0D,$0F,$0F,$0F,$0F,$0F,$0F,$07,$07,$02
L10C6: .byte $20,$20,$20,$20,$20,$20,$20,$20,$21,$21,$21,$21,$21,$22,$22,$22
       .byte $23,$23,$23,$24,$24,$25,$25,$26,$26,$27,$28,$29,$29,$2A,$2B,$2C
       .byte $2D,$2E,$30,$31,$32,$34,$36,$38,$3A,$3C,$3E,$41,$44,$47,$4B,$4F
       .byte $54,$59,$5F,$66,$6E,$78,$84,$92,$A4,$BB,$DA,$05,$46,$B3,$8C,$18
       .byte $FF
L1107: .byte $01,$01,$01,$02,$05,$7F
L110D: .byte $40,$C0,$80,$00
L1111: .byte $12,$12,$12,$12,$10,$10,$0D,$0D,$09,$09
L111B: .byte $A0,$42,$FC,$0A
L111F: .byte $01,$05,$02
L1122: .byte $02
L1123: .byte $7F,$7F,$7F,$7F,$3F,$7F,$3F,$3F,$3F,$3F
L112D: .byte $7F
L112E: .byte $7F,$7F,$3F,$3F,$7F,$3F,$7F,$7F,$3F,$7F
L1138: .byte $7F
L1139: .byte $7F,$3F,$7F,$3F,$7F,$7F,$3F,$7F,$7F,$3F
L1143: .byte $7F
L1144: .byte $3F,$7F,$3F,$7F,$3F,$7F,$7F,$7F,$3F,$3F,$7F,$38,$7C,$F6,$FE,$76
       .byte $FE,$7E,$C6,$BA,$44,$38,$6C,$EE,$EE,$EE,$FE,$C6,$BA,$7C,$38,$38
       .byte $7C,$FE,$BA,$FE,$BA,$FE,$C6,$BA,$44,$38,$6C,$EE,$EE,$EE,$FE,$C6
       .byte $BA,$7C,$38,$38,$7C,$DE,$FE,$DC,$FE,$FC,$C6,$BA,$44,$38,$6C,$EE
       .byte $EE,$EE,$FE,$C6,$BA,$7C,$38,$38,$7C,$EE,$FE,$EE,$FE,$FE,$C6,$BA
       .byte $44,$38,$6C,$EE,$EE,$EE,$FE,$C6,$BA,$7C,$38,$00,$04,$04,$04,$04
       .byte $04,$04,$04,$7E,$FF,$7F,$FF,$7E,$04,$04,$04,$04,$04,$04,$04,$00
       .byte $08,$0C,$0E,$0E,$06,$06,$04,$7E,$FF,$7F,$FF,$7E,$04,$0C,$0C,$0E
       .byte $0E,$06,$02,$00,$00,$1F,$1F,$1F,$1F,$04,$04,$7E,$FF,$7F,$FF,$7E
       .byte $04,$04,$1F,$1F,$1F,$1F,$00,$00,$02,$06,$0E,$0E,$0C,$0C,$04,$7E
       .byte $FF,$7F,$FF,$7E,$04,$06,$06,$0E,$0E,$0C,$08
L11EF: .byte $2C,$2C,$2C,$2C,$90,$90,$90,$90,$4F,$63,$77,$8B,$9F,$B3,$C7,$DB
L11FF: .byte $13,$13,$13,$13,$00,$00,$00,$00,$11,$11,$11,$11,$11,$11,$11,$11
L120F: .byte $FF,$FF,$EB,$EB,$E3,$EB,$E3,$FF,$E3,$FB,$E3,$EF,$E3,$FF,$E3,$EB
       .byte $EB,$EB,$EB,$FF,$FF
L1224: .byte $00,$03,$00,$03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$03,$00,$00
       .byte $00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$03,$00,$00,$03,$00,$00
       .byte $03,$00,$00,$00,$00,$03,$00,$00,$00,$03,$00,$03,$00,$00,$00,$03
       .byte $00,$00,$03,$00,$00,$00,$03,$00,$03,$00,$00,$00,$03,$00,$00,$00
       .byte $00,$00,$03,$00,$00,$03,$00,$00,$03,$00,$00,$00,$03,$00,$03,$00
       .byte $00,$03,$00,$03,$00,$00,$00,$00,$00,$03,$00,$00,$00,$03,$00,$00
       .byte $00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$03,$00,$00,$03,$00,$00
       .byte $03,$00,$00,$00,$00,$03,$00,$00,$00,$03,$00,$03,$00,$00,$00,$03
       .byte $00,$00,$03,$00,$00,$00,$03,$00,$03,$00,$00,$00,$03,$00,$00,$00
       .byte $00,$00,$03,$00,$00,$03,$00,$00,$03,$00,$00,$00,$03,$00,$03,$00
       .byte $0C,$00,$00,$0C,$00,$00,$00,$00,$00,$0C,$00,$00,$00,$0C,$00,$00
       .byte $00,$0C,$00,$0C,$00,$00,$0C,$00,$00,$00,$00,$00,$0C,$00,$00,$0C
       .byte $00,$00,$00,$00,$0C,$00,$00,$00,$0C,$00,$00,$00,$00,$0C,$00,$0C
       .byte $00
L12F5: .byte $00,$03,$03,$00,$0C,$00,$00,$00,$00,$0C,$00,$0C,$00,$00,$00,$0C
       .byte $00,$00,$00,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
L1357: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$FE,$1F,$FE,$FC,$C0,$80,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
L139F: .byte $00,$00,$00,$00,$00,$00,$00,$00,$1C,$1C,$3E,$3E,$3E,$7F,$7F,$7F
       .byte $7F,$FF,$FF,$FF,$FF,$FF,$FF,$C4,$E6,$CD,$FF,$FF,$F3,$F9,$FF,$FF
       .byte $EF,$7F,$7F,$7B,$7F,$2E,$3E,$3E,$1C,$1C
L13C9: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $02,$00,$00,$00,$00,$00,$00,$00,$00,$00
L13F3: .byte $00,$00,$00,$00,$00
L13F8: .byte $00
L13F9: .byte $00,$00,$92,$92,$92,$92,$92,$92,$92,$92,$92,$92,$92,$92,$92,$92
       .byte $92,$0D,$0D,$0D,$94,$94,$0D,$0D,$94,$94,$0D,$27,$27,$0D,$27,$27
       .byte $95,$95,$0B,$0B,$98,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F
L142B: .byte $0F,$1A,$4A,$BA
L142F: .byte $28,$28,$46,$B6
L1433: .byte $03,$0A,$0A,$0A
L1437: CLC            
       ADC    #$03    
       STA    WSYNC   
       SEC            
L143D: SBC    #$0F    
       BCS    L143D   
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

L1450: LDA    #$10    
       LDY    #$57    
       LDX    #$0A    
L1456: STA    $ED,X   
       STY    $EC,X   
       DEX            
       DEX            
       BPL    L1456   
       RTS            

L145F: STA    $E9     
       AND    #$F0    
       LSR            
       STA    $EC,X   
       LDA    $E9     
L1468: AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $EE,X   
       RTS            

L1470: STA    $E9     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$07    
       STA    VDELP0  
       STA    VDELP1  
L147E: LDY    $E9     
       LDA    ($F6),Y 
       STA    $EA     
       STA    WSYNC   
       LDA    ($F4),Y 
       TAX            
       LDA    ($EC),Y 
       NOP            
       STA    GRP0    
       LDA    ($EE),Y 
       STA    GRP1    
       LDA    ($F0),Y 
       STA    GRP0    
       LDA    ($F2),Y 
       LDY    $EA     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $E9     
       BPL    L147E   
       LDA    #$00    
       STA    VDELP0  
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    GRP0    
       STA    VDELP1  
       RTS            

L14B7: LDY    #$98    
       LDA    $D2     
       BEQ    L14BF   
       LDY    #$0F    
L14BF: STA    WSYNC   
       STY    COLUBK  
       JSR    L19BB   
       LDX    #$00    
       LDA    #$35    
       JSR    L1437   
       INX            
       LDA    #$3D    
       JSR    L1437   
       DEX            
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       LDA    #$01    
       STA    CTRLPF  
       LDY    #$64    
       LDA    $E1     
       ORA    $E2     
       BNE    L14E8   
       LDY    #$44    
L14E8: STY    COLUPF  
       STA    WSYNC   
       LDY    #$06    
       STY    COLUBK  
       LDA    #$FC    
       STA    PF2     
       LDA    #$9C    
       STA    COLUP0  
       STA    COLUP1  
       JSR    L1450   
       LDX    #$02    
       LDA    $CB     
       JSR    L145F   
       LDA    #$50    
       STA    $F2     
       LDX    #$08    
       LDA    $CA     
       JSR    L145F   
       LDA    #$07    
       JSR    L1470   
       STA    WSYNC   
       JSR    L1450   
       LDX    #$04    
       LDA    $CC     
       CMP    #$0A    
       BCC    L1536   
       AND    #$0F    
       TAY            
       LDA    $CD     
       JSR    L1468   
       TYA            
       CMP    #$0A    
       BCS    L1542   
       LDX    #$08    
       JSR    L1468   
       JMP    L1542   
L1536: LDA    $E1     
       JSR    L145F   
       LDX    #$08    
       LDA    $E2     
       JSR    L145F   
L1542: LDA    #$07    
       JSR    L1470   
       LDX    #$04    
       JSR    L17D8   
       STA    PF2     
       RTS            

L154F: LDA    $D2     
       BEQ    L15A6   
       LDA    #$00    
       STA    $E0     
       STA    $DF     
       LDA    $C2     
       CMP    #$05    
       BPL    L1563   
       INC    $C2     
       BNE    L15A3   
L1563: LDX    $D6     
       CPX    #$43    
       BCC    L1574   
       LDA    SWCHA   
       AND    #$40    
       BNE    L1574   
       STA    $C2     
       DEC    $D6     
L1574: CPX    #$52    
       BCS    L1583   
       LDA    SWCHA   
       AND    #$80    
       BNE    L1583   
       STA    $C2     
       INC    $D6     
L1583: LDY    $D7     
       CPY    #$2A    
       BCC    L1594   
       LDA    SWCHA   
       AND    #$20    
       BNE    L1594   
       STA    $C2     
       DEC    $D7     
L1594: CPY    #$35    
       BCS    L15A3   
       LDA    SWCHA   
       AND    #$10    
       BNE    L15A3   
       STA    $C2     
       INC    $D7     
L15A3: JMP    L15E2   
L15A6: TAX            
       TAY            
       LDA    #$29    
       STA    $D7     
       LDA    #$42    
       STA    $D6     
       LDA    $CC     
       CMP    #$0A    
       BCS    L15DE   
       LDA    SWCHA   
       AND    #$40    
       BNE    L15BF   
       LDX    #$FE    
L15BF: LDA    SWCHA   
       AND    #$80    
       BNE    L15C8   
       LDX    #$02    
L15C8: LDA    SWCHA   
       AND    #$10    
       BNE    L15D3   
       LDY    #$01    
       LDX    #$04    
L15D3: LDA    SWCHA   
       AND    #$20    
       BNE    L15DE   
       LDY    #$FF    
       LDX    #$04    
L15DE: STX    $E0     
       STY    $DF     
L15E2: LDX    $DC     
       BNE    L15EC   
       STX    $DD     
       STX    $DE     
       BEQ    L15EF   
L15EC: DEX            
       STX    $DC     
L15EF: LDX    #$03    
L15F1: LDA    $8C,X   
       SEC            
       SBC    L1433,X 
       STA    $EC     
       LDA    $88,X   
       SBC    #$00    
       LSR            
       ROR    $EC     
       LSR            
       ROR    $EC     
       LSR            
       ROR    $EC     
       SEC            
       LDA    #$E0    
       SBC    $EC     
       CPX    #$00    
       BNE    L1615   
       CLC            
       ADC    $E0     
       CLC            
       ADC    $DD     
L1615: CLC            
       ADC    $84,X   
       STA    $84,X   
       LDA    $80,X   
       ADC    #$00    
       STA    $80,X   
       DEX            
       BPL    L15F1   
       LDA    $DF     
       SEC            
       SBC    $DE     
       STA    $ED     
       AND    #$80    
       BEQ    L1630   
       LDA    #$FF    
L1630: STA    $EC     
       CLC            
       LDA    $8C     
       ADC    $ED     
       STA    $8C     
       LDA    $88     
       ADC    $EC     
       STA    $88     
       CMP    #$06    
       BCC    L1647   
       LDY    #$00    
       STY    $8C     
L1647: CMP    #$02    
       BCS    L1653   
       LDA    #$80    
       CMP    $8C     
       BCC    L1653   
       STA    $8C     
L1653: LDA    $DF     
       ASL            
       ASL            
       STA    $DE     
       RTS            

L165A: BIT    INPT4   
       BPL    L1663   
       LDA    #$02    
       STA    $D3     
L1662: RTS            

L1663: BIT    $D3     
       BMI    L1662   
       DEC    $D3     
       RTS            

L166A: INC    $C2     
       LDA    $C2     
       AND    #$01    
       STA    $C2     
       CLC            
       ADC    #$02    
       STA    $C4     
       LDA    #$02    
       STA    $F2     
L167B: LDY    $F2     
       LDX    $C2,Y   
       STX    $EF     
       LDA    L142B,X 
       STA.wy $00C6,Y 
       LDA    $80,X   
       STA    $F1     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAX            
       LDA    L110D,X 
       STA    $F3     
       LDA    $F1     
       JSR    L17DE   
       STA    $F0     
       BIT    $F3     
       BPL    L16A6   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L16A6: CLC            
       ADC    #$50    
       LDX    $F2     
       STA    $C3,X   
       LDA    $F1     
       CLC            
       ADC    #$40    
       JSR    L17DE   
       LSR            
       STA    $F1     
       BIT    $F3     
       BVC    L16C1   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L16C1: CLC            
       ADC    #$19    
       STA    $EC     
       CMP    #$1A    
       BCC    L16E0   
       LDA    $F0     
       CMP    #$0A    
       BCS    L16E0   
       TAX            
       LDA    $F1     
       CMP    L1111,X 
       BCS    L16E0   
       LDX    $F2     
       LDA    #$33    
       STA    $EC     
       STA    $C3,X   
L16E0: LDX    $F2     
       LDA    #$F7    
       SEC            
       SBC    $EC     
       STA    $E5,X   
       LDA    #$12    
       SBC    #$00    
       STA    $E6,X   
       DEC    $F2     
       DEC    $F2     
       BPL    L167B   
       LDX    #$01    
       LDA    #$46    
       JSR    L1437   
       LDA    #$15    
       STA    NUSIZ1  
       INX            
       LDA    $C3     
       JSR    L1437   
       LDA    $C6     
       STA    COLUP0  
       LDA    #$10    
       STA    NUSIZ0  
       INX            
       LDA    #$58    
       JSR    L1437   
       LDA    #$14    
       STA    CTRLPF  
       INX            
       LDA    $C5     
       JSR    L1437   
       LDA    $C8     
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$31    
       STY    $EF     
L172A: LDA    INTIM   
       BNE    L172A   
L172F: LDY    $EF     
       LDX    L139F,Y 
       STX    $EC     
       LDX    L13C9,Y 
       STX    $ED     
       LDX    L13F3,Y 
       STX    $EE     
       LDA    ($E5),Y 
       TAX            
       LDA    ($E7),Y 
       LDY    $EC     
       STA    WSYNC   
       STA    ENABL   
       STX    ENAM0   
       STY    GRP1    
       LDA    $ED     
       STA    ENAM1   
       LDA    $EE     
       STA    COLUP1  
       DEC    $EF     
       BPL    L172F   
       JSR    L19BB   
       LDX    #$06    
       JSR    L17D8   
       INX            
       LDY    $C4     
L1766: LDA.wy $008C,Y 
       STA    $F3     
       LDA.wy $0088,Y 
       ASL    $F3     
       ROL            
       ASL    $F3     
       ROL            
       ASL    $F3     
       ROL            
       SEC            
       SBC    #$08    
       STA    $EC,X   
       LDY    $C2     
       STA    WSYNC   
       DEX            
       BEQ    L1766   
       LDX    #$01    
       LDA    #$47    
       JSR    L1437   
       INX            
       LDA    $C2     
       ASL            
       CLC            
       ADC    #$4D    
       JSR    L1437   
       INX            
       INX            
       LDA    $C4     
       ASL            
       CLC            
       ADC    #$4D    
       JSR    L1437   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$98    
       STA    COLUP1  
       LDA    #$FF    
       STA    GRP1    
       STA    WSYNC   
       LDY    #$27    
L17AF: LDX    #$81    
       TYA            
       AND    #$03    
       BNE    L17B8   
       LDX    #$C3    
L17B8: STX    $EE     
       LDA    #$00    
       CPY    $EC     
       BCS    L17C2   
       LDA    #$FF    
L17C2: LDX    #$00    
       CPY    $ED     
       BCS    L17CA   
       LDX    #$FF    
L17CA: STA    WSYNC   
       STA    ENAM0   
       STX    ENABL   
       LDA    $EE     
       STA    GRP1    
       DEY            
       BNE    L17AF   
       RTS            

L17D8: STA    WSYNC   
       DEX            
       BNE    L17D8   
       RTS            

L17DE: AND    #$7F    
       CMP    #$41    
       BCC    L17E9   
       EOR    #$FF    
       CLC            
       ADC    #$81    
L17E9: TAX            
       LDA    L10C6,X 
       STA    $EA     
       LDA    #$00    
       CPX    #$3B    
       BCC    L17FC   
       TXA            
       SBC    #$3B    
       TAX            
       LDA    L1107,X 
L17FC: STA    $ED     
       LDX    $EF     
       LDA    $88,X   
       STA    $EC     
       LDA    $8C,X   
       STA    $E9     
       LDA    #$00    
       STA    $EE     
       STA    $EB     
       LDY    #$10    
L1810: ROL    $E9     
       ROL    $EC     
       ROL    $EB     
       ROL    $EE     
       SEC            
       LDA    $EB     
       SBC    $EA     
       TAX            
       LDA    $EE     
       SBC    $ED     
       BCC    L1828   
       STA    $EE     
       STX    $EB     
L1828: DEY            
       BNE    L1810   
       LDA    $E9     
       ROL            
       RTS            

L182F: LDA    #$05    
       STA    NUSIZ0  
       LDA    $C7     
       AND    #$03    
       BNE    L1858   
       CLC            
       LDA    #$24    
       ADC    $E6     
       STA    $E7     
       LDA    #$12    
       ADC    #$00    
       STA    $E8     
       LDA    #$70    
       STA    $E5     
       LDA    $D8     
       STA    $C5     
       LDA    #$00    
       STA    CTRLPF  
       STA    $EF     
       LDA    #$0F    
       BNE    L1894   
L1858: LDY    #$2C    
       STY    $E7     
       LDY    #$13    
       STY    $E8     
       STY    $EF     
       LDY    #$00    
       STY    $E5     
       CMP    #$02    
       BNE    L1882   
       LDA    $DF     
       BEQ    L1876   
       LDA    #$D0    
       STA    $E7     
       LDA    #$12    
       STA    $E8     
L1876: LDA    #$38    
       STA    $C5     
       LDA    #$10    
       STA    CTRLPF  
       LDA    #$1C    
       BNE    L1894   
L1882: LDA    #$03    
       STA    $E7     
       LDA    #$13    
       STA    $E8     
       LDA    #$3A    
       STA    $C5     
       LDA    #$14    
       STA    CTRLPF  
       LDA    #$6A    
L1894: STA    COLUPF  
       RTS            

L1897: LSR            
       LSR            
       AND    #$15    
       CMP    #$15    
       BEQ    L18A1   
       LDA    #$25    
L18A1: STA    $F4,X   
       DEX            
       RTS            

L18A5: JSR    L182F   
       LDY    $CE     
       STY    $EB     
       BEQ    L18B3   
       LDA    #$02    
       STA    $EB     
       DEY            
L18B3: LDX    #$03    
       LDA    L1123,Y 
       JSR    L1897   
       LDA    L112E,Y 
       JSR    L1897   
       LDA    L1139,Y 
       JSR    L1897   
       LDA    L1144,Y 
       JSR    L1897   
       LDX    $C3     
       LDA    L142F,X 
       STA    COLUP1  
       TXA            
       ASL            
       ASL            
       STA    $EC     
       LDA    $C7     
       LSR            
       LSR            
       LSR            
       AND    #$03    
       CLC            
       ADC    $EC     
       TAX            
       LDA    L11EF,X 
       STA    $E9     
       LDA    L11FF,X 
       STA    $EA     
       LDX    #$00    
       LDA    #$3A    
       JSR    L1437   
       INX            
       LDA    $E0     
       JSR    L1437   
       INX            
       LDA    $D6     
       TAY            
       JSR    L1437   
       INX            
       INY            
       INY            
       TYA            
       JSR    L1437   
       INX            
       LDA    $C5     
       JSR    L1437   
       STA    WSYNC   
       STA    HMOVE   
       SEC            
       LDA    #$50    
       SBC    $D5     
       BMI    L191C   
       LDA    #$00    
L191C: CLC            
       ADC    #$14    
       STA    $EE     
       LDA    #$04    
       LDY    $D2     
       BNE    L1929   
       LDA    #$02    
L1929: STA    $ED     
L192B: LDA    INTIM   
       BNE    L192B   
       STA    CXCLR   
       STA    HMCLR   
       LDY    #$4F    
       STY    $EC     
       LDA    $E5     
       STA    HMBL    
L193C: LDX    L1357,Y 
       STX    $F1     
       LDA    ($E7),Y 
       STA    $F3     
       LDX    #$05    
       LDA    $EF     
       STA    WSYNC   
       STA    HMOVE   
       BNE    L1951   
       STA    ENABL   
L1951: STX    $F0     
       STX    $F2     
       CPY    $D7     
       BCS    L196A   
       DEC    $ED     
       BMI    L196A   
       LDX    $ED     
       LDA    $F4,X   
       STA    $F0     
       LDA    L12F5,X 
       STA    $F2     
       LDX    $EB     
L196A: LDA    #$00    
       CPY    $D5     
       BCS    L1978   
       DEC    $EE     
       BMI    L1978   
       LDY    $EE     
       LDA    ($E9),Y 
L1978: LDY    $F3     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       STY    ENABL   
       STX    ENAM1   
       LDA    $F0     
       STA    NUSIZ1  
       LDA    $F1     
       STA    GRP0    
       LDA    $F2     
       STA    ENAM0   
       LDY    $EC     
       LDX    L13F9,Y 
       STX    COLUP0  
       DEC    $EC     
       BPL    L193C   
       BIT    CXPPMM  
       BPL    L19A6   
       LDA    #$04    
       STA    $DC     
       JSR    L19C5   
L19A6: BIT    CXM1P   
       BVC    L19BB   
       LDA    $C3     
       LSR            
       BCC    L19BB   
       LDA    #$0B    
       STA    $CE     
       STA    $F8     
       LDA    $D6     
       BEQ    L19BB   
       DEC    $D6     
L19BB: LDA    #$00    
       LDX    #$04    
L19BF: STA    GRP0,X  
       DEX            
       BPL    L19BF   
       RTS            

L19C5: LDA    #$0F    
       STA    $F8     
       LDA    $E3     
       BMI    L19D2   
       CLC            
       ADC    #$04    
       STA    $E3     
L19D2: LDX    #$0B    
       LDA    $CE     
       BEQ    L19E0   
       LDA    $D9     
       BEQ    L19E0   
       LDA    #$0B    
       STA    $D9     
L19E0: LDA    $C7     
       AND    #$03    
       BNE    L19FB   
       LDA    $D2     
       BNE    L19F5   
       LDA    $CE     
       BEQ    L19F5   
       CMP    #$0B    
       BEQ    L19F5   
       STX    $CE     
       RTS            

L19F5: LDA    $D9     
       BEQ    L19FB   
       STX    $D9     
L19FB: RTS            

L19FC: LDX    #$03    
L19FE: SEC            
       LDA    $8C,X   
       SBC    $8C     
       STA    $D5     
       LDA    $88,X   
       SBC    $88     
       BEQ    L1A17   
       CMP    #$FF    
       BNE    L1A5F   
       LDA    $D5     
       CMP    #$D5    
       BCC    L1A5F   
       BCS    L1A1D   
L1A17: LDA    $D5     
       CMP    #$35    
       BCS    L1A5F   
L1A1D: CLC            
       ADC    #$2B    
       STA    $D5     
       SEC            
       LDA    $84,X   
       SBC    $84     
       STA    $E0     
       LDA    $80,X   
       SBC    $80     
       LSR            
       ROR    $E0     
       LSR            
       ROR    $E0     
       LSR            
       ROR    $E0     
       LSR            
       ROR    $E0     
       CMP    #$00    
       BEQ    L1A4D   
       CMP    #$0F    
       BNE    L1A5F   
       LDY    #$24    
       STY    $DD     
       LDA    $E0     
       CMP    #$C4    
       BCC    L1A5F   
       BCS    L1A57   
L1A4D: LDY    #$DC    
       STY    $DD     
       LDA    $E0     
       CMP    #$5C    
       BCS    L1A5F   
L1A57: CLC            
       ADC    #$3C    
       STA    $E0     
       JMP    L1A68   
L1A5F: DEX            
       BNE    L19FE   
       STX    $E0     
       STX    $D5     
       STX    $DD     
L1A68: STX    $C3     
       INC    $D5     
       RTS            

L1A6D: LDA    #$2C    
       STA    TIM64T  
       LDX    #$00    
       LDA    $F9     
       BEQ    L1A84   
       DEC    $F9     
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$0B    
       STA    AUDF1   
       LDX    #$0F    
L1A84: LDA    $F8     
       BEQ    L1A93   
       TAX            
       DEC    $F8     
       LDA    #$08    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDF1   
L1A93: STX    AUDV1   
       LDA    SWCHB   
       AND    #$08    
       BNE    L1AA1   
       STA    AUDV0   
       JMP    L1B93   
L1AA1: LDA    $CC     
       CMP    #$0A    
       BCS    L1ACC   
       DEC    $C9     
       BPL    L1ACC   
       LDA    #$3B    
       STA    $C9     
       SED            
       LDA    $CA     
       ADC    #$01    
       STA    $CA     
       CMP    #$60    
       BNE    L1ACC   
       LDA    #$00    
       STA    $CA     
       CLC            
       LDA    $CB     
       ADC    #$01    
       STA    $CB     
       CMP    #$90    
       BNE    L1ACC   
       JSR    L1D48   
L1ACC: CLD            
       JSR    L154F   
       LDY    #$00    
       LDA    $DF     
       BNE    L1AE4   
       LDA    $E0     
       BEQ    L1AFC   
       LDY    #$03    
       LDA    $C7     
       AND    #$03    
       BNE    L1AFC   
       BEQ    L1AE6   
L1AE4: LDY    #$06    
L1AE6: JSR    L1D2C   
       LDA    $C7     
       LSR            
       BCC    L1AFC   
       LDA    $CE     
       BEQ    L1AF5   
       JSR    L1D2C   
L1AF5: LDA    $D9     
       BEQ    L1AFC   
       JSR    L1D2C   
L1AFC: STY    AUDV0   
       CLC            
       LDA    $E3     
       ADC    $E4     
       STA    $E4     
       BCC    L1B0A   
       JSR    L1D2C   
L1B0A: BIT    INPT4   
       BMI    L1B28   
       LDA    $D2     
       BEQ    L1B36   
       LDA    $CD     
       BEQ    L1B19   
       CLC            
       ADC    #$01    
L1B19: CMP    $D0     
       BCS    L1B36   
       LDA    $C7     
       AND    #$07    
       BNE    L1B36   
       DEC    $D0     
       JMP    L1B36   
L1B28: LDA    $D0     
       CMP    #$40    
       BCS    L1B36   
       LDA    $C7     
       AND    #$03    
       BNE    L1B36   
       INC    $D0     
L1B36: CLC            
       LDA    $D1     
       ADC    $D0     
       STA    $D1     
       BCC    L1B67   
       LDY    $90     
       LDX    #$01    
L1B43: LDA    $90,X   
       STA    $8F,X   
       INX            
       CPX    #$28    
       BCC    L1B43   
       STY    $B7     
       INC    $CF     
       LDA    $CF     
       AND    #$03    
       STA    $CF     
       BNE    L1B67   
       LDY    $B8     
       LDX    #$01    
L1B5C: LDA    $B8,X   
       STA    $B7,X   
       INX            
       CPX    #$0A    
       BCC    L1B5C   
       STY    $C1     
L1B67: LDX    $D8     
       CLC            
       LDA    $E6     
       ADC    $DF     
       BPL    L1B72   
       LDA    #$4F    
L1B72: CMP    #$50    
       BCC    L1B78   
       LDA    #$00    
L1B78: STA    $E6     
       LDA    #$F2    
       LDY    $DF     
       BEQ    L1B88   
       BMI    L1B84   
       LDA    #$0E    
L1B84: CLC            
       ADC    $D8     
       TAX            
L1B88: LDA    $C7     
       LSR            
       BCC    L1B8E   
       DEX            
L1B8E: JSR    L1D4F   
       STA    $D8     
L1B93: JSR    L19FC   
       TXA            
       BNE    L1BA0   
       LDX    $D2     
       BNE    L1BA0   
       JMP    L1CE2   
L1BA0: JSR    L165A   
       LDA    $D3     
       BNE    L1BD0   
       LDA    $D2     
       BNE    L1BB9   
       LDA    $C3     
       CMP    #$03    
       BEQ    L1BD0   
       INC    $D2     
       LDA    #$0C    
       STA    $F9     
       BNE    L1BD0   
L1BB9: LDA    $D7     
       CMP    #$2B    
       BCS    L1BD0   
       LDA    $D6     
       CMP    #$47    
       BCS    L1BD0   
       LDA    #$00    
       STA    $D2     
       JSR    L1D23   
       LDA    #$0C    
       STA    $F9     
L1BD0: LDA    INTIM   
       BNE    L1BD0   
       JSR    L1E33   
       LDA    #$23    
       STA    TIM64T  
       LDX    $C3     
       DEX            
       BNE    L1BF0   
       LDA    $CE     
       BEQ    L1BEE   
       CMP    #$0B    
       BNE    L1BF8   
       LDA    $D9     
       BEQ    L1C65   
L1BEE: LDA    $D2     
L1BF0: BNE    L1C65   
       JSR    L1D23   
       JMP    L1C65   
L1BF8: SEC            
       LDA    $E0     
       SBC    $D6     
       STA    $ED     
       CMP    #$02    
       BCS    L1C65   
       SEC            
       LDA    $D5     
       SBC    $D7     
       CMP    #$11    
       BCS    L1C65   
       STA    $EC     
       AND    #$03    
       CMP    $CF     
       BNE    L1C5B   
       SEC            
       LDA    #$13    
       SBC    $EC     
       TAX            
       LSR            
       LSR            
       TAY            
       LDA.wy $00B8,Y 
       CMP    $CE     
       BNE    L1C5B   
       LDA    #$00    
       STA.wy $00B8,Y 
       STA    $CE     
       CLC            
       LDA    $DB     
       ADC    #$15    
       CMP    #$AB    
       BCS    L1C36   
       STA    $DB     
L1C36: LDA    #$02    
       STA    $F9     
       INC    $CC     
       LDA    $CC     
       CMP    #$0A    
       BNE    L1C4D   
       LDY    #$14    
L1C44: LDA    L120F,Y 
       STA.wy $00A3,Y 
       DEY            
       BPL    L1C44   
L1C4D: LDY    #$04    
L1C4F: LDA    $90,X   
       ORA    #$C0    
       STA    $90,X   
       DEX            
       DEY            
       BNE    L1C4F   
       BEQ    L1C65   
L1C5B: LDA    $ED     
       BNE    L1C65   
       LDA    #$0B    
       STA    $CE     
       STA    $F8     
L1C65: LDA    $CE     
       BEQ    L1C6D   
       CMP    #$0B    
       BNE    L1CAB   
L1C6D: LDA    $C3     
       CMP    #$02    
       BNE    L1CAB   
       SEC            
       LDA    $D5     
       SBC    $D7     
       CMP    #$07    
       BCS    L1CAB   
       CMP    #$04    
       BCC    L1CAB   
       LDA    $D6     
       SBC    $E0     
       CMP    #$08    
       BEQ    L1C8C   
       CMP    #$09    
       BNE    L1CAB   
L1C8C: LDA    $C7     
       AND    #$07    
       TAX            
       LDY    #$09    
L1C93: LDA    $B8,X   
       BEQ    L1C9B   
       CMP    $D9     
       BNE    L1CA5   
L1C9B: DEX            
       BPL    L1CA0   
       LDX    #$09    
L1CA0: DEY            
       BPL    L1C93   
       BMI    L1CAB   
L1CA5: STA    $CE     
       LDA    #$01    
       STA    $F9     
L1CAB: LDA    $C3     
       CMP    #$03    
       BNE    L1CDE   
       LDA    $D5     
       CMP    #$30    
       BNE    L1CDE   
       LDA    $E0     
       CMP    #$48    
       BNE    L1CDE   
       LDA    SWCHB   
       AND    #$08    
       BEQ    L1CDE   
       LDA    $E1     
       CMP    #$90    
       BCS    L1CDA   
       SED            
       LDA    $E2     
       ADC    #$04    
       STA    $E2     
       LDA    $E1     
       ADC    #$00    
       STA    $E1     
       JMP    L1CDE   
L1CDA: LDA    #$00    
       STA    $E2     
L1CDE: CLD            
       JMP    L18A5   
L1CE2: LDA    #$00    
       STA    $DD     
       STA    $DE     
L1CE8: LDA    INTIM   
       BNE    L1CE8   
       JSR    L1E33   
       LDA    #$64    
       STA    TIM64T  
       LDA    $CD     
       BEQ    L1D18   
       SEC            
       LDA    $8C     
       SBC    #$BA    
       TAX            
       LDA    $88     
       SBC    #$03    
       BNE    L1D18   
       TXA            
       CMP    #$28    
       BCC    L1D10   
       SBC    #$28    
       CMP    $DB     
       BCS    L1D18   
L1D10: LDA    #$22    
       STA    TIM64T  
       JMP    L1D5F   
L1D18: LDA    #$00    
       STA    $DC     
       LDA    $C9     
       STA    $D4     
       JMP    L166A   
L1D23: LDX    $CE     
       LDY    $D9     
       STX    $D9     
       STY    $CE     
       RTS            

L1D2C: LDA    $CC     
       CMP    #$0A    
       BCS    L1D46   
       LDA    $E1     
       ORA    $E2     
       BEQ    L1D48   
       SED            
       SEC            
       LDA    $E2     
       SBC    #$01    
       STA    $E2     
       LDA    $E1     
       SBC    #$00    
       STA    $E1     
L1D46: CLD            
       RTS            

L1D48: LDA    $CC     
       ORA    #$10    
       STA    $CC     
       RTS            

L1D4F: TXA            
       CMP    #$A0    
       BCC    L1D5E   
       CMP    #$C0    
       BCC    L1D5B   
       ADC    #$9E    
       RTS            

L1D5B: SEC            
       SBC    #$9F    
L1D5E: RTS            

L1D5F: STX    $D5     
       LDA    SWCHB   
       AND    #$08    
       BEQ    L1D9D   
       LDY    #$1C    
       LDA    $DF     
       BEQ    L1D86   
       BPL    L1D73   
       INX            
       LDY    #$E4    
L1D73: CPX    $DB     
       BCS    L1D80   
       TXA            
       ADC    $D4     
       TAX            
       LDA    L1224,X 
       BNE    L1D86   
L1D80: CLC            
       TYA            
       ADC    $DA     
       STA    $DA     
L1D86: LDX    $DA     
       DEX            
       LDY    $CD     
       DEY            
       BEQ    L1D97   
       DEX            
       DEY            
       BNE    L1D97   
       LDA    $C7     
       LSR            
       BCC    L1D98   
L1D97: DEX            
L1D98: JSR    L1D4F   
       STA    $DA     
L1D9D: JSR    L182F   
       LDX    #$00    
       STX    NUSIZ1  
       LDA    #$FC    
       STA    COLUP1  
       LDA    #$3A    
       SEC            
       SBC    $DC     
       JSR    L1437   
       INX            
       LDA    $DA     
       JSR    L1437   
       LDX    #$04    
       LDA    $C7     
       AND    #$03    
       TAY            
       LDA    $C5     
       CPY    #$00    
       BEQ    L1DC6   
       SEC            
       SBC    $DC     
L1DC6: JSR    L1437   
       STA    WSYNC   
       STA    HMOVE   
L1DCD: LDA    INTIM   
       BNE    L1DCD   
       STA    CXCLR   
       STA    HMCLR   
       LDA    $E5     
       STA    HMBL    
       LDY    #$4F    
L1DDC: LDA    ($E7),Y 
       STA    $F3     
       LDA    #$00    
       LDX    $D5     
       CPX    $DB     
       BCS    L1DEF   
       TXA            
       ADC    $D4     
       TAX            
       LDA    L1224,X 
L1DEF: TAX            
       BEQ    L1DF6   
       LDA    #$00    
       BEQ    L1DF8   
L1DF6: LDA    #$70    
L1DF8: STA    HMP1    
       LDA    $F3     
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP1    
       STA    ENABL   
       LDA    L1357,Y 
       STA    GRP0    
       LDA    L13F8,Y 
       STA    COLUP0  
       TYA            
       LSR            
       BCS    L1E14   
       DEC    $D5     
L1E14: LDA    $EF     
       STA    WSYNC   
       STA    HMOVE   
       BNE    L1E1E   
       STA    ENABL   
L1E1E: DEY            
       BPL    L1DDC   
       BIT    CXPPMM  
       BPL    L1E30   
       LDA    $DC     
       BNE    L1E30   
       LDA    #$0F    
       STA    $DC     
       JSR    L19C5   
L1E30: JMP    L19BB   
L1E33: LDX    #$02    
       STA    WSYNC   
       STX    VBLANK  
       LDA    SWCHB   
       LSR            
       BCS    L1E42   
       JMP    L1E5B   
L1E42: STA    WSYNC   
       INC    $C7     
       STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       RTS            


START:
L1E5B: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L1E62: STA    VSYNC,X 
       INX            
       BNE    L1E62   
       STA    SWACNT  
       STA    SWBCNT  
       INC    $CD     
       LDA    #$08    
       STA    AUDC0   
       LDA    #$1B    
       STA    $D5     
       LDA    #$1F    
       STA    AUDF0   
L1E7B: JSR    L1E33   
       LDA    #$1E    
       STA    TIM64T  
       BIT    INPT4   
       BMI    L1E8D   
       LDA    #$0F    
       STA    AUDV0   
       STA    $D3     
L1E8D: LDA    $D3     
       BEQ    L1E9C   
       CLC            
       LDA    $E1     
       ADC    #$40    
       STA    $E1     
       BCC    L1E9C   
       INC    $D5     
L1E9C: LDX    #$0F    
       STX    COLUP0  
       STX    COLUP1  
       LDX    #$00    
       LDA    #$47    
       JSR    L1437   
       INX            
       LDA    #$4F    
       JSR    L1437   
       STA    WSYNC   
       STA    HMOVE   
L1EB3: LDA    INTIM   
       BNE    L1EB3   
       SEC            
       LDA    #$50    
       SBC    $D5     
       BMI    L1EC1   
       LDA    #$00    
L1EC1: CLC            
       ADC    #$23    
       STA    $E0     
       LDY    #$4F    
L1EC8: STA    WSYNC   
       LDA    #$00    
       STA    $ED     
       STA    $EE     
       CPY    $D5     
       BCS    L1EFE   
       DEC    $E0     
       BMI    L1EFE   
       LDX    $E0     
       CPX    #$08    
       BCS    L1EE8   
       LDA    #$1C    
       STA    COLUP1  
       LDA    $C7     
       AND    #$03    
       BNE    L1EED   
L1EE8: LDA    L1093,X 
       STA    $EE     
L1EED: SEC            
       LDA    $E0     
       SBC    #$0A    
       BMI    L1EFE   
       CMP    #$10    
       BCS    L1EFE   
       TAX            
       LDA    L10B6,X 
       STA    $ED     
L1EFE: STA    WSYNC   
       LDA    $ED     
       STA    GRP0    
       LDA    $EE     
       STA    GRP1    
       DEY            
       BPL    L1EC8   
       JSR    L19BB   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$06    
       STA    COLUPF  
       LDA    #$F0    
       STA    WSYNC   
       STA    PF2     
       LDX    #$00    
       LDA    #$36    
       JSR    L1437   
       INX            
       LDA    #$3E    
       JSR    L1437   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$24    
       STA    COLUBK  
       DEX            
       STX    PF2     
       LDA    #$2C    
       STA    COLUP0  
       STA    COLUP1  
       JSR    L1450   
       STA    WSYNC   
       LDA    $D3     
       BNE    L1F5D   
       LDA    $C7     
       AND    #$0F    
       BNE    L1F5D   
       LDA    SWCHA   
       AND    #$10    
       BNE    L1F54   
       INC    $CD     
L1F54: LDA    SWCHA   
       AND    #$20    
       BNE    L1F5D   
       DEC    $CD     
L1F5D: LDA    $CD     
       AND    #$03    
       STA    $CD     
       LDX    #$04    
       JSR    L1468   
       LDA    #$07    
       JSR    L1470   
       LDX    #$05    
       JSR    L17D8   
       LDA    #$88    
       LDX    #$08    
L1F76: STA    $EE,X   
       SEC            
       SBC    #$0B    
       DEX            
       DEX            
       BPL    L1F76   
       LDA    #$0A    
       JSR    L1470   
       LDA    $D5     
       BMI    L1F90   
       LDX    #$1F    
       JSR    L17D8   
       JMP    L1E7B   
L1F90: LDA    #$60    
       STA    $E1     
       LDA    #$27    
       STA    $EC     
       STA    $C9     
       LDY    #$0A    
L1F9C: LSR    $C7     
       BCC    L1FAB   
L1FA0: SEC            
       LDA    $EC     
       SBC    #$04    
       BPL    L1FA9   
       LDA    #$27    
L1FA9: STA    $EC     
L1FAB: LDA    $EC     
       LSR            
       LSR            
       TAX            
       LDA    $B8,X   
       BNE    L1FA0   
       STY    $B8,X   
       LDX    $EC     
       LDA    L1122,Y 
       AND    #$67    
       STA    $90,X   
       DEX            
       LDA    L112D,Y 
       STA    $90,X   
       DEX            
       LDA    L1138,Y 
       STA    $90,X   
       DEX            
       LDA    L1143,Y 
       STA    $90,X   
       DEX            
       BPL    L1FD6   
       LDX    #$27    
L1FD6: STX    $EC     
       DEY            
       BNE    L1F9C   
       LDX    #$03    
L1FDD: LDA    L111F,X 
       STA    $88,X   
       LDA    L111B,X 
       STA    $8C,X   
       STA    $80,X   
       DEX            
       BPL    L1FDD   
       LDA    #$2C    
       STA    $DB     
L1FF0: JSR    L1A6D   
       JSR    L14B7   
       JMP    L1FF0   
L1FF9: .byte $F0,$20,$B9,$5B,$1E,$D0,$D6
