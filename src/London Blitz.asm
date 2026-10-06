; Disassembly of roms/London Blitz.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/London Blitz.bin
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
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $1000
L1000: .byte $0A,$0A,$0A,$0A,$1D,$0B,$0B,$2A,$70
L1009: .byte $3C,$7E,$E7,$C3,$99,$3C,$7E,$E7,$C3,$99,$3C,$7E,$E7,$C3,$99,$3C
       .byte $7E,$E7,$E7,$DB,$E7,$C7,$BB,$83,$83,$83,$01,$01,$AB,$6D,$45,$AB
L1029: .byte $EF,$E0,$18,$07
L102D: .byte $00
L102E: .byte $02
L102F: .byte $0E
L1030: .byte $07
L1031: .byte $11,$00,$0A,$1F,$04,$02,$00,$0A,$1F,$08,$01,$00,$0F,$16,$0A,$10
       .byte $01,$08,$1F,$0F,$20,$00,$0C,$1F,$0A,$01,$01,$05,$15,$05,$05,$01
       .byte $05,$10,$0F
L1054: .byte $10,$20,$08,$01
L1058: .byte $05,$0A,$0F,$13,$0C,$0C,$0C,$0C,$08
L1061: .byte $B6,$B6,$34,$34,$1A,$1A,$0A,$0A,$0F
L106A: .byte $C0,$F0,$FC,$FE
L106E: .byte $FF,$C4,$D5,$C0,$F5,$C4,$D6,$C0,$FB,$C8,$DF,$D8,$C2,$DE,$C1,$D5
       .byte $C4,$D9,$CB,$D9,$C4,$DD,$C1,$FD,$C0,$D7,$C0,$D7,$C0,$FD,$C0,$D5
       .byte $F5,$C0,$DD,$C0,$DD,$C0,$EE,$D1,$C4,$F1,$C4,$DF,$C0,$DE,$C2,$FA
       .byte $CA,$E0,$CF,$F0,$CA,$EA,$C1,$D4,$C7,$F8,$C5,$F5,$C0,$DB,$D9,$C4
       .byte $F5
L10AF: .byte $FF,$02,$D6,$40,$7B,$48,$DD,$00,$6D,$0C,$ED,$01,$DD,$0C,$61,$0D
       .byte $6C,$69,$0B,$69,$04,$6D,$01,$D4,$D6,$D6,$00,$FA,$88,$A5,$94,$F5
       .byte $05,$F8,$AB,$00,$AB,$F8,$05,$F5,$94,$A5,$88,$7B,$41,$15,$B1,$3F
       .byte $81,$2C,$8E,$D1,$D5,$14,$C3,$D8,$1A,$40,$BA,$09,$54,$05,$68,$4E
       .byte $E8,$FF
L10F1: .byte $80,$40,$20,$10,$08,$04,$02,$01
L10F9: .byte $40,$10,$04,$01
L10FD: .byte $24,$24,$1C,$40
L1101: .byte $FF,$00,$CC,$00,$CC,$C3,$CC,$00,$CC,$CC,$CF,$00,$CF,$CC,$CC,$00
       .byte $CC,$CC,$00,$CF,$CF,$CF,$00,$3C,$3C,$3C,$00,$3F,$30,$33,$30,$3F
       .byte $00,$3F,$33,$00,$33,$3F,$00,$3F,$30,$33,$30,$0F,$CC,$C0,$F3,$00
       .byte $33,$00,$33,$30,$33,$00,$33,$30,$03,$F0,$CF,$00,$CC,$0F,$C0,$3C
       .byte $30
L1142: .byte $FF,$88,$EB,$00,$AE,$00,$EE
L1149: .byte $00,$BA,$0A,$BB,$00,$BB,$00,$B7
L1151: .byte $85,$AD,$AD,$00,$7F,$00,$6D,$25,$90,$A5,$AD,$05,$DD,$41,$2F,$A1
       .byte $AD,$2D,$C0,$77,$00,$77,$C0,$2D,$A0,$AA,$28,$45,$D0,$05,$B0,$B5
       .byte $6A,$6A,$6A,$00,$6A,$6A,$6A,$9A,$28,$AB,$2C,$81,$2C,$83,$34,$95
       .byte $75,$80
L1183: .byte $FF,$D1,$C5,$DC,$DB,$C0,$F7,$C0,$DD,$C5,$DD,$C0,$DD,$C0,$FE,$C2
       .byte $DA,$C2,$DC,$C5,$D5,$D0,$CE,$E0,$CA,$DA,$C2,$DE,$C0,$DF,$C0,$FE
       .byte $D6,$C0,$DE,$C0,$DE,$C0,$EA,$C0,$D5,$C0,$EA,$C0,$EA,$C0,$EA,$C1
       .byte $EC,$CF,$E0,$CF,$EC,$C1,$FD,$C0,$DA,$C2,$DB,$C2,$D8,$CB,$E8,$CA
       .byte $D8,$FF
L11C5: .byte $05
L11C6: .byte $00,$00,$00,$00,$00,$20,$60,$FF,$60,$20,$00,$00,$00
L11D3: .byte $00,$00,$20,$70,$70,$70,$20,$70,$00
L11DC: .byte $00,$10,$10,$38,$38,$7C,$10,$10,$10,$10,$10,$10,$10,$10,$10,$00
L11EC: .byte $4D,$66,$71,$79
L11F0: .byte $4E,$52,$53
L11F3: .byte $53,$C0,$20
L11F6: .byte $06,$0C,$03,$0A,$14,$10,$12,$02,$07,$0E,$0C,$15,$00,$17,$05,$0D
       .byte $0B,$01,$14,$08,$11,$09,$13,$05,$0B,$11,$0A,$0F,$04,$03,$16,$0E
L1216: .byte $02,$04,$08,$10,$20,$40,$70,$20,$70,$70,$70,$70,$60,$00,$7C,$38
       .byte $10,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$5C,$08,$00
L1234: .byte $FE,$F0,$E0
L1237: .byte $E0,$72,$B4
L123A: .byte $26,$00,$60,$60,$F0,$F0,$60,$60,$00
L1243: .byte $05
L1244: .byte $B0,$B8,$B8,$B8,$78,$78,$78,$F8,$F8,$04,$74,$70,$70,$70,$B0,$B0
       .byte $B0,$F8,$F8,$08,$40,$68,$68,$68,$A8,$A8,$A8,$F0,$F0,$09,$30,$60
       .byte $60,$60,$A0,$A0,$A0,$F8,$F8,$06,$28,$58,$58,$58,$98,$98,$E8,$E8
       .byte $E8,$03,$20,$90,$90,$50,$50,$50,$E0,$E0,$E0,$04,$18,$50,$E0,$E0
       .byte $E0,$E0,$90,$90,$90
L1289: .byte $01,$02,$00,$01,$00,$02,$01,$00,$02,$01
L1293: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    SWCHB   
       LSR            
       BCS    L12A2   
       JMP    L14E0   
L12A2: STA    WSYNC   
       LDY    $D2     
       BPL    L12BF   
       LDA    #$00    
       LDX    $83     
       BNE    L12DD   
       LDY    #$01    
       LDA    INPT5   
       BPL    L12B9   
       DEY            
       LDA    INPT4   
       BMI    L12DF   
L12B9: STY    $D2     
       LDA    #$80    
       STA    $83     
L12BF: LDA    SWCHA   
       CPY    #$00    
       BNE    L12CA   
       LSR            
       LSR            
       LSR            
       LSR            
L12CA: AND    #$0F    
       EOR    #$0F    
       STA    $E6     
       LDA    $83     
       BNE    L12DF   
       TAX            
       LDA.wy $003C,Y 
       BMI    L12DF   
       TXA            
       ORA    #$80    
L12DD: STA    $E6     
L12DF: STA    WSYNC   
       LDX    #$01    
L12E3: LDA    $DC,X   
       BNE    L12ED   
       LDA    #$00    
       STA    AUDV0,X 
       BEQ    L12EF   
L12ED: DEC    $DC,X   
L12EF: DEX            
       BPL    L12E3   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       LDA    $99     
       BMI    L1335   
       LDA    $8C     
       ORA    #$07    
       CMP    $D3     
       BPL    L130E   
       LDA    $D3     
       AND    #$38    
       STA    $8C     
       CMP    #$38    
       BPL    L1327   
L130E: LDA    $D3     
       BMI    L1323   
       LDA    $99     
       BEQ    L1335   
       SEC            
       LDA    $8C     
       SBC    #$08    
       STA    $D3     
       ORA    #$07    
       CMP    $8D     
       BPL    L1327   
L1323: LDA    #$00    
       STA    $D3     
L1327: PLA            
       PLA            
       LDA    #$15    
       PHA            
       LDA    #$00    
       PHA            
       LDA    #$FF    
       STA    $99     
       STA    $83     
L1335: STA    WSYNC   
       LDA    $99     
       BPL    L1348   
       INC    $96     
       BNE    L1348   
       INC    $97     
       LDA    $97     
       BPL    L1348   
       JMP    L14E0   
L1348: STA    WSYNC   
       LDA    $98     
       BEQ    L1350   
       DEC    $98     
L1350: LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$21    
       STA    TIM64T  
       INC    $80     
       BNE    L1361   
       INC    $81     
L1361: LDA    $83     
       BEQ    L1367   
       DEC    $83     
L1367: LDA    $D2     
       BMI    L136F   
       LDA    $99     
       BEQ    L1372   
L136F: JMP    L1486   
L1372: LDX    #$07    
L1374: LDA    $9A,X   
       BEQ    L13AF   
       LDY    $B2,X   
       BNE    L1382   
       LDA    $80     
       AND    #$07    
       BNE    L13AF   
L1382: DEC    $BA,X   
       BNE    L13AF   
       TYA            
       BEQ    L1393   
       DEC    $B2,X   
       BEQ    L13AF   
       LDA    $82     
       STA    $BA,X   
       BNE    L13AF   
L1393: JSR    L14B2   
       LDA    #$00    
       STA    $9A,X   
       STX    $E7     
       LDY    #$14    
       JSR    L149A   
       LDA    #$1F    
       STA    $98     
       LDX    $E7     
       CPX    $DA     
       BNE    L13AF   
       LDA    #$01    
       STA    $99     
L13AF: DEX            
       BPL    L1374   
       LDA    $E4     
       BEQ    L13C5   
       DEC    $E5     
       BEQ    L13BD   
L13BA: JMP    L1486   
L13BD: LDA    $D4     
       STA    $E5     
       DEC    $E4     
       BNE    L13BA   
L13C5: LDA    #$F5    
       STA    $E4     
       LDX    #$07    
L13CB: LDA    $9A,X   
       BEQ    L13D5   
       DEX            
       BPL    L13CB   
       JMP    L1486   
L13D5: STX    $E7     
       LDA    $D3     
       AND    #$F8    
       STA    $E8     
       LSR            
       LSR            
       CLC            
       ADC    $E8     
       STA    $E8     
       TAY            
       LDA    L1243,Y 
       STA    $D4     
       LDA    L1244,Y 
       STA    $82     
       STA    $BA,X   
       LDA    $80     
       ADC    $81     
       ADC    $D9     
       AND    #$3F    
       TAY            
       INY            
       ADC    $D3     
       ADC    $D9     
L13FF: AND    #$1F    
       CLC            
       ADC    #$02    
       TAX            
       STX    $E9     
       JSR    L1F65   
       BEQ    L1413   
L140C: INC    $E9     
       LDA    $E9     
       JMP    L13FF   
L1413: LDX    #$07    
L1415: TYA            
       CMP    $A2,X   
       BNE    L1420   
       LDA    $AA,X   
       CMP    $E9     
       BEQ    L140C   
L1420: DEX            
       BPL    L1415   
       LDX    $E7     
       STY    $A2,X   
       LDA    $E9     
       STA    $AA,X   
       LDA    #$00    
       STA    $CA,X   
       LDA    #$FF    
       STA    $B2,X   
       LDY    $80     
       LDA    L14E0,Y 
       AND    #$0E    
       LSR            
       CLC            
       ADC    #$02    
       ADC    $E8     
       TAY            
       LDA    L1243,Y 
       STA    $9A,X   
       AND    #$C0    
       LDY    $80     
       LDA    $D9     
       ADC    $D8     
       ADC    L14E1,Y 
       AND    #$07    
       TAY            
       ORA    $9A,X   
       STA    $9A,X   
       TYA            
       JSR    L14C5   
       LDX    $E7     
       STA    $C2,X   
       LDA    $9A,X   
       CMP    #$80    
       BCC    L1481   
       LDX    $80     
       LDA    L14FE,X 
       ADC    $D9     
       AND    #$1F    
       STA    $86     
       ADC    $D8     
       ADC    L15FE,X 
       AND    #$1F    
       STA    $87     
       JSR    L14CC   
       LDX    $E7     
       STA    $C2,X   
L1481: LDY    #$19    
       JSR    L149A   
L1486: LDX    INTIM   
       BNE    L1486   
       STX    VBLANK  
       STA    WSYNC   
       RTS            

L1490: JSR    L1486   
       LDA    #$08    
       STA    TIM64T  
       BNE    L1486   
L149A: LDX    L102D,Y 
       LDA    L102E,Y 
       STA    AUDC0,X 
       LDA    L102F,Y 
       STA    AUDF0,X 
       LDA    L1030,Y 
       STA    AUDV0,X 
       LDA    L1031,Y 
       STA    $DC,X   
       RTS            

L14B2: LDA    $9A,X   
       AND    #$C0    
       CMP    #$80    
       BEQ    L14C2   
       CMP    #$40    
       BEQ    L14C0   
       DEC    $D3     
L14C0: DEC    $D3     
L14C2: DEC    $D3     
       RTS            

L14C5: ASL            
       TAY            
       STY    $86     
       INY            
       STY    $87     
L14CC: LDX    $86     
       LDA    L11F6,X 
       ASL            
       ASL            
       ASL            
       STA    $86     
       LDX    $87     
       LDA    L11F6,X 
       LSR            
       LSR            
       ORA    $86     
       RTS            


START:
L14E0: SEI            
L14E1: CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L14E7: STA    VSYNC,X 
       DEX            
       BNE    L14E7   
       LDA    #$80    
       STA    $D2     
       STA    $84     
       STA    $83     
       STA    $E4     
       LDA    #$10    
       STA    $D9     
       LDA    #$23    
       STA    $D8     
L14FE: JSR    L1293   
       STX    COLUPF  
       DEX            
       STX    TIM64T  
       LDA    #$C1    
       STA    CTRLPF  
       STA    PF2     
       LDA    $99     
       BNE    L151A   
       LDA    $81     
       AND    #$F7    
       ORA    #$80    
       JMP    L151F   
L151A: LDX    $98     
       LDA    L1149,X 
L151F: STA    COLUBK  
       LDA    $80     
       AND    #$0F    
       BNE    L1577   
       LDA    $E6     
       BPL    L154D   
       LDA    $99     
       BEQ    L1536   
       LDA    #$80    
       STA    $D2     
       JMP    L14E0   
L1536: LDA    $D8     
       STA    $88     
       LDA    #$00    
       STA    $E4     
       STA    CTRLPF  
       LDA    $8C     
       AND    #$F0    
       STA    $8C     
       LDA    #$80    
       STA    $83     
       JMP    L15FE   
L154D: LDA    $99     
       BNE    L1577   
       LDA    $E6     
       AND    #$01    
       BEQ    L155F   
       CLC            
       LDA    $D3     
       ADC    #$08    
       JMP    L156A   
L155F: LDA    $E6     
       AND    #$02    
       BEQ    L1577   
       SEC            
       LDA    $D3     
       SBC    #$08    
L156A: TAY            
       AND    #$38    
       CMP    #$38    
       BEQ    L1577   
       STY    $D3     
       STY    $8D     
       STY    $8C     
L1577: JSR    L1580   
       JSR    L1490   
       JMP    L14FE   
L1580: LDA    INTIM   
       CMP    #$28    
       BNE    L1580   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$50    
       LDX    #$00    
       STX    NUSIZ0  
       JSR    L1FE6   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D2     
       BPL    L15A7   
       LDA    #$11    
       STA    $D6     
       LDX    #$08    
       LDA    $80     
       CLC            
       BCC    L15B8   
L15A7: LDA    #$10    
       STA    $D6     
       LDA    $D3     
       AND    #$38    
       LSR            
       LSR            
       LSR            
       TAX            
       CPX    #$05    
       LDA    L1061,X 
L15B8: STA    COLUP0  
       LDA    L1000,X 
       STA    $D5     
       LDY    L1058,X 
L15C2: STA    WSYNC   
       BCC    L15CA   
       STY    $E7     
       LDY    #$01    
L15CA: LDA    ($D5),Y 
       EOR    #$FF    
       STA    GRP0    
       BCC    L15D4   
       LDY    $E7     
L15D4: DEY            
       BPL    L15C2   
       INY            
       STY    GRP0    
       LDA    $D2     
       BMI    L15FD   
L15DE: LDA    INTIM   
       CMP    #$08    
       BNE    L15DE   
       LDA    $D3     
       AND    #$07    
       TAX            
       LDA    L10F1,X 
       SEC            
       SBC    #$01    
       EOR    #$FF    
       ASL            
       STA    WSYNC   
       STA    GRP0    
       STA    WSYNC   
       STA    WSYNC   
       STY    GRP0    
L15FD: RTS            

L15FE: JSR    L1293   
       DEX            
       STX    TIM64T  
       LDA    #$05    
       STA    NUSIZ1  
       LDA    #$80    
       STA    COLUBK  
       LDA    #$53    
       LDX    #$01    
       JSR    L1FE6   
       LDA    $80     
       ROR            
       BCC    L162E   
       ROR            
       ROR            
       AND    #$07    
       TAX            
       LDA    $9A,X   
       BNE    L1626   
       LDA    #$7F    
       BNE    L1628   
L1626: LDA    $A2,X   
L1628: STA    $95     
       LDA    $AA,X   
       BNE    L1630   
L162E: LDA    $D9     
L1630: ASL            
       ASL            
       CLC            
       ADC    #$14    
       LDX    #$00    
       JSR    L1FE6   
       STA    WSYNC   
       STA    HMOVE   
       SEC            
       LDA    $88     
       SBC    #$0A    
       BPL    L1649   
       LDA    #$00    
       BEQ    L164F   
L1649: CMP    #$2F    
       BMI    L164F   
       LDA    #$2E    
L164F: TAX            
       STX    $85     
       CLC            
       ADC    #$0A    
       STA    $88     
       LDA    #$C4    
       STA    COLUPF  
       STA    COLUP1  
       LDY    #$34    
       LDA    $80     
       ROR            
       BCC    L1666   
       LDY    #$0F    
L1666: STY    COLUP0  
       STA    HMCLR   
L166A: LDA    INTIM   
       CMP    #$F0    
       BNE    L166A   
       LDA    #$FF    
       STA    WSYNC   
       JSR    L16FB   
       LDA    #$14    
       STA    $86     
L167C: LDY    #$08    
L167E: STA    WSYNC   
       LDA    L106E,X 
       STA    PF1     
       LDA    L10AF,X 
       STA    PF2     
       LDA    L1101,X 
       STA    GRP1    
       LDA    $80     
       ROR            
       BCC    L169E   
       CPX    $95     
       BNE    L16A7   
       LDA    L11D3,Y 
       JMP    L16A5   
L169E: CPX    $D8     
       BNE    L16A7   
       LDA    L123A,Y 
L16A5: STA    GRP0    
L16A7: LDA    L1142,X 
       STA    PF1     
       LDA    L1183,X 
       STA    PF2     
       DEY            
       BNE    L167E   
       INX            
       DEC    $86     
       BNE    L167C   
       LDY    #$00    
       STY    GRP0    
       LDA    #$FF    
       STA    WSYNC   
       JSR    L16FB   
       LDA    #$00    
       STA    WSYNC   
       JSR    L16FB   
       LDA    $80     
       AND    #$03    
       BNE    L16F2   
       LDA    $E6     
       BPL    L16DC   
L16D5: LDA    #$40    
       STA    $83     
       JMP    L1702   
L16DC: JSR    L149A   
       LDA    $E6     
       AND    #$02    
       BEQ    L16EA   
       INC    $88     
       JMP    L16F2   
L16EA: LDA    $E6     
       AND    #$01    
       BEQ    L16F2   
       DEC    $88     
L16F2: JSR    L1580   
       JSR    L1490   
       JMP    L15FE   
L16FB: STA    PF1     
       STA    PF2     
       STA    GRP1    
       RTS            

L1702: JSR    L1293   
       DEX            
       STX    TIM64T  
       STX    REFP1   
       STX    $DA     
       LDY    $98     
       LDA    L1151,Y 
       STA    WSYNC   
       STA    COLUBK  
       STA    COLUP0  
       STA    COLUP1  
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    ENAM0   
       STX    ENAM1   
       STX    $85     
       STX    $87     
       STX    $88     
       STX    $89     
       STX    $8A     
       LDA    #$74    
       LDX    #$01    
       STX    CTRLPF  
       JSR    L1FE6   
       LDA    $80     
       AND    #$01    
       BNE    L174C   
       LDA    #$35    
       LDX    #$02    
       JSR    L1FE6   
       LDA    #$76    
       INX            
       JSR    L1FE6   
       JMP    L1759   
L174C: LDA    #$45    
       LDX    #$02    
       JSR    L1FE6   
       LDA    #$65    
       INX            
       JSR    L1FE6   
L1759: LDA    #$FF    
       STA    $86     
L175D: LDA    $84     
       AND    #$A0    
       BEQ    L1786   
       LDA    $84     
       BPL    L1777   
       LDA    $D8     
       SEC            
       SBC    $85     
       TAY            
       LDX    $86     
       TXA            
       CLC            
       ADC    $D9     
       TAX            
       JMP    L17A8   
L1777: LDA    $D8     
       CLC            
       ADC    $85     
       TAY            
       LDA    $D9     
       SEC            
       SBC    $86     
       TAX            
       JMP    L17A8   
L1786: LDA    $84     
       AND    #$10    
       BNE    L179C   
       LDA    $D9     
       CLC            
       ADC    $85     
       TAX            
       LDY    $86     
       TYA            
       CLC            
       ADC    $D8     
       TAY            
       JMP    L17A8   
L179C: LDA    $D9     
       SEC            
       SBC    $85     
       TAX            
       LDA    $D8     
       SEC            
       SBC    $86     
       TAY            
L17A8: JSR    L1F65   
       LDX    $85     
       ASL    $87,X   
       CMP    #$00    
       BEQ    L17B5   
       INC    $87,X   
L17B5: LDX    #$07    
L17B7: LDA    $9A,X   
       BEQ    L17D9   
       LDA    $8E     
       CMP    $AA,X   
       BNE    L17D9   
       TYA            
       CMP    $A2,X   
       BNE    L17D9   
       LDA    $85     
       ORA    $86     
       BNE    L17CE   
       STX    $DA     
L17CE: LDX    $85     
       LDA    #$08    
       ORA    $87,X   
       STA    $87,X   
       JMP    L17DC   
L17D9: DEX            
       BPL    L17B7   
L17DC: INC    $86     
       LDA    $86     
       CMP    #$02    
       BEQ    L17E7   
       JMP    L175D   
L17E7: INC    $85     
       LDA    $85     
       CMP    #$04    
       BEQ    L17F2   
       JMP    L1759   
L17F2: LDX    #$00    
       STX    $85     
       STX    $86     
       STX    $8B     
       JSR    L1B56   
       LDA    $88     
       STA    $85     
       JSR    L1B56   
       LDA    $89     
       STA    $86     
       JSR    L1B56   
       LDA    $8A     
       STA    $8B     
       JSR    L1B56   
L1812: LDA    INTIM   
       CMP    #$AE    
       BNE    L1812   
       STA    WSYNC   
       LDA    #$50    
       LDX    #$00    
       JSR    L1FE6   
       STA    WSYNC   
       STA    HMOVE   
       BRK            
       NOP            
       STX    NUSIZ0  
       LDA    #$0F    
       STA    COLUP0  
       STA    HMCLR   
       LDA    $84     
       AND    #$A0    
       BEQ    L1850   
       BPL    L183B   
       INX            
       BNE    L183D   
L183B: LDX    #$0E    
L183D: STA    WSYNC   
       LDA    L11DC,X 
       STA    GRP0    
       BEQ    L1865   
       LDA    $84     
       BPL    L184D   
       INX            
       BPL    L183D   
L184D: DEX            
       BPL    L183D   
L1850: LDA    $84     
       AND    #$40    
       BEQ    L1857   
       DEX            
L1857: STX    REFP0   
       LDX    #$0E    
L185B: STA    WSYNC   
       LDA    L11C6,X 
       STA    GRP0    
       DEX            
       BPL    L185B   
L1865: TAX            
       LDA    #$15    
       JSR    L1FE6   
       STA    WSYNC   
       STA    HMOVE   
       STX    REFP0   
       BRK            
       NOP            
       LDA    #$07    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    $98     
       LDA    L1151,Y 
       STA    COLUP0  
       STA    HMCLR   
       LDA    #$C0    
       STA    HMP0    
       LDA    #$40    
       STA    HMP1    
       DEX            
       STX    GRP0    
       STX    GRP1    
       STX    ENAM0   
       STX    ENAM1   
       STX    PF0     
       LDX    #$08    
       LDY    #$00    
       JSR    L1BD4   
       LDY    #$04    
       LDX    #$FF    
       STA    WSYNC   
       STA    HMOVE   
       LDA.wy $00E7,Y 
       STA    PF1     
       LDA.wy $00E8,Y 
       STA    PF2     
       AND    #$30    
       BEQ    L18B3   
       INX            
L18B3: STX    GRP0    
       STX    GRP1    
       LDX    #$FF    
       LDA.wy $00E9,Y 
       AND    #$30    
       BEQ    L18C1   
       INX            
L18C1: LDA.wy $00E9,Y 
       STA    PF2     
       LDA.wy $00EA,Y 
       STA    PF1     
       STX    GRP1    
       STX    GRP0    
       LDX    #$03    
       JSR    L1BD4   
       LDY    #$08    
       LDX    #$F0    
       STA    WSYNC   
       STA    HMOVE   
       LDA.wy $00E7,Y 
       STA    PF1     
       LDA.wy $00E8,Y 
       STA    PF2     
       AND    #$C0    
       BEQ    L18EC   
       LDX    #$00    
L18EC: STX    GRP0    
       STX    GRP1    
       LDA.wy $00E9,Y 
       LDX    #$F0    
       AND    #$C0    
       BEQ    L18FB   
       LDX    #$00    
L18FB: LDA.wy $00E9,Y 
       STA    PF2     
       LDA.wy $00EA,Y 
       STA    PF1     
       STX    GRP1    
       STX    GRP0    
       LDX    #$01    
       JSR    L1BD4   
       STX    HMP0    
       STX    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F3     
       STA    PF1     
       LDA    $F4     
       STA    PF2     
       LDY    #$0C    
       LDX    #$F0    
       LDA.wy $00E8,Y 
       AND    #$C0    
       BEQ    L192B   
       LDX    #$00    
L192B: STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       NOP            
       LDA    $F5     
       STA    PF2     
       LDA    $F6     
       STA    PF1     
       LDX    #$0E    
       JSR    L1BD4   
       LDY    #$08    
       LDX    #$F0    
       LDA    #$03    
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       NOP            
       LDA    $EF     
       STA    PF1     
       LDA    $F0     
       STA    PF2     
       AND    #$C0    
       BEQ    L195A   
       LDX    #$00    
L195A: LDA    #$03    
       STA    COLUP0  
       STA    COLUP1  
       STX    GRP0    
       STX    GRP1    
       LDA.wy $00E9,Y 
       STA    PF2     
       LDX    $EA,Y   
       STX    PF1     
       LDX    #$F0    
       AND    #$C0    
       BEQ    L1975   
       LDX    #$00    
L1975: STA    WSYNC   
       STA    HMOVE   
       LDA    $EF     
       STA    PF1     
       LDA    $F0     
       STA    PF2     
       STX    GRP1    
       STX    GRP0    
       LDX    #$08    
       LDA    #$10    
       STA    HMP0    
       LDA    #$F0    
       STA    HMP1    
       PHA            
       PLA            
       NOP            
       LDA    $F1     
       STA    PF2     
       LDA    $F2     
       STA    PF1     
       JSR    L1BD4   
       LDY    #$04    
       LDX    #$FF    
       STA    WSYNC   
       STA    HMOVE   
       LDA.wy $00E7,Y 
       STA    PF1     
       LDA.wy $00E8,Y 
       STA    PF2     
       LDA.wy $00E8,Y 
       AND    #$30    
       BEQ    L19B7   
       INX            
L19B7: STX    GRP0    
       STX    GRP1    
       LDA.wy $00E9,Y 
       LDX    #$FF    
       AND    #$30    
       BEQ    L19C5   
       INX            
L19C5: LDA.wy $00E9,Y 
       STA    PF2     
       LDA.wy $00EA,Y 
       STA    PF1     
       STX    GRP1    
       STX    GRP0    
       LDX    #$10    
       JSR    L1BD4   
       STA    WSYNC   
       STA    HMOVE   
       LDA.wy $00E7,Y 
       STA    PF1     
       LDA.wy $00E8,Y 
       STA    PF2     
       LDY    #$FF    
       STY    GRP0    
       STY    GRP1    
       INY            
       PHA            
       PLA            
       LDA.wy $00E9,Y 
       STA    PF2     
       LDA.wy $00EA,Y 
       STA    PF1     
       LDX    #$1D    
       JSR    L1BD4   
       STA    WSYNC   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    COLUBK  
       STX    ENAM0   
       STX    ENAM1   
       STX    GRP0    
       STX    GRP1    
       STX    NUSIZ0  
       STX    NUSIZ1  
       JSR    L1A9B   
       JSR    L1580   
       JSR    L1490   
       LDA    $87     
       ORA    $88     
       ORA    $89     
       ORA    $8A     
       AND    #$10    
       BNE    L1A2C   
       JMP    L1702   
L1A2C: JSR    L1293   
       DEX            
       STX    TIM64T  
       LDA    #$34    
       STA    COLUP0  
       LDA    #$00    
       STA    COLUBK  
       LDX    #$03    
L1A3D: LDA    INTIM   
       CMP    L11EC,X 
       BNE    L1A3D   
       STX    $8E     
       CPX    #$02    
       BEQ    L1A59   
       LDA    L11F0,X 
       LDX    #$00    
       JSR    L1FE6   
       LDX    $8E     
       STA    WSYNC   
       STA    HMOVE   
L1A59: LDA    #$00    
L1A5B: CPX    #$00    
       BEQ    L1A65   
       CLC            
       ADC    #$04    
       DEX            
       BNE    L1A5B   
L1A65: TAX            
       LDA    $E8,X   
       LDX    $8E     
       AND    #$80    
       BNE    L1A8F   
       LDA    L11C5,X 
       STA    NUSIZ0  
       LDA    $87,X   
       AND    #$10    
       BEQ    L1A8F   
       LDY    #$00    
       LDA    #$12    
       STA    $DF     
       LDA    L10FD,X 
       STA    $DE     
L1A84: STA    WSYNC   
       LDA    ($DE),Y 
       STA    GRP0    
       INY            
       CMP    #$00    
       BNE    L1A84   
L1A8F: DEX            
       BPL    L1A3D   
       JSR    L1A9B   
       JSR    L1490   
       JMP    L1702   
L1A9B: LDA    $80     
       AND    #$07    
       BEQ    L1AA2   
       RTS            

L1AA2: LDY    #$00    
       JSR    L149A   
       LDA    $E6     
       BPL    L1AD1   
       LDA    #$40    
       STA    $83     
       LDA    $D8     
       STA    $88     
       PLA            
       PLA            
       STX    CTRLPF  
       STX    NUSIZ0  
       STX    NUSIZ1  
       STX    REFP1   
       LDA    $87     
       AND    #$10    
       BEQ    L1ACE   
       LDA    #$00    
       STA    $D7     
       LDA    #$80    
       STA    $83     
       JMP    L1BF7   
L1ACE: JMP    L15FE   
L1AD1: LDA    $E6     
       AND    #$0F    
       BNE    L1ADA   
       JMP    L1B55   
L1ADA: AND    #$03    
       BEQ    L1B2F   
       LDY    #$0F    
       JSR    L149A   
       LDX    $D9     
       STX    $8B     
       LDY    $D8     
       LDA    $E6     
       AND    #$01    
       BEQ    L1B11   
       LDA    $84     
       BPL    L1AF7   
L1AF3: DEY            
       JMP    L1B21   
L1AF7: AND    #$40    
       BEQ    L1B01   
L1AFB: INX            
       STX    $8B     
       JMP    L1B21   
L1B01: LDA    $84     
       AND    #$20    
       BEQ    L1B0B   
L1B07: INY            
       JMP    L1B21   
L1B0B: DEX            
       STX    $8B     
       JMP    L1B21   
L1B11: LDA    $84     
       BMI    L1B07   
       AND    #$40    
       BNE    L1B0B   
       LDA    $84     
       AND    #$20    
       BNE    L1AF3   
       BEQ    L1AFB   
L1B21: JSR    L1F65   
       CMP    #$00    
       BNE    L1B2E   
       STY    $D8     
       LDX    $8B     
       STX    $D9     
L1B2E: RTS            

L1B2F: LDA    $84     
       AND    #$F0    
       STA    $84     
       LDA    $E6     
       AND    #$04    
       BNE    L1B4A   
       LSR    $84     
       LDA    $84     
       AND    #$08    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $84     
       STA    $84     
       RTS            

L1B4A: CLC            
       ASL    $84     
       BCC    L1B55   
       LDA    $84     
       ORA    #$10    
       STA    $84     
L1B55: RTS            

L1B56: LDA    $87     
       ORA    $85     
       ORA    $86     
       ORA    $8B     
       TAY            
       AND    #$04    
       BEQ    L1B65   
       LDA    #$FF    
L1B65: STA    $E7,X   
       TYA            
       AND    #$01    
       BEQ    L1B6E   
       LDA    #$FF    
L1B6E: STA    $EA,X   
       TYA            
       AND    #$02    
       BEQ    L1B77   
       LDA    #$C0    
L1B77: STA    $E8,X   
       STA    $E9,X   
       LDA    $87     
       ORA    $85     
       ASL            
       ORA    $85     
       ORA    $86     
       ORA    $8B     
       AND    #$04    
       BEQ    L1B90   
       LDA    $E8,X   
       ORA    #$0F    
       STA    $E8,X   
L1B90: LDA    $87     
       ORA    $85     
       ORA    $86     
       ASL            
       ORA    $86     
       ORA    $8B     
       AND    #$04    
       BEQ    L1BA5   
       LDA    $E8,X   
       ORA    #$30    
       STA    $E8,X   
L1BA5: LDA    $87     
       ORA    $85     
       LSR            
       ORA    $85     
       ORA    $86     
       ORA    $8B     
       AND    #$01    
       BEQ    L1BBA   
       LDA    $E9,X   
       ORA    #$0F    
       STA    $E9,X   
L1BBA: LDA    $87     
       ORA    $85     
       ORA    $86     
       LSR            
       ORA    $86     
       ORA    $8B     
       AND    #$01    
       BEQ    L1BCF   
       LDA    $E9,X   
       ORA    #$30    
       STA    $E9,X   
L1BCF: INX            
       INX            
       INX            
       INX            
       RTS            

L1BD4: STA    WSYNC   
       STA    HMOVE   
       LDA    #$F4    
       STA    COLUPF  
       LDA.wy $00E7,Y 
       STA    PF1     
       LDA.wy $00E8,Y 
       STA    PF2     
       BRK            
       NOP            
       NOP            
       LDA.wy $00E9,Y 
       STA    PF2     
       LDA.wy $00EA,Y 
       STA    PF1     
       DEX            
       BNE    L1BD4   
       RTS            

L1BF7: JSR    L1293   
       LDA    #$FF    
       STA    TIM64T  
       LDA    #$34    
       STA    COLUPF  
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$10    
       STA    NUSIZ0  
       LDX    $98     
       LDA    L1149,X 
       STA    COLUBK  
       LDA    #$70    
       LDX    #$00    
       JSR    L1FE6   
       LDA    #$30    
       INX            
       STX    CTRLPF  
       JSR    L1FE6   
       LDA    #$54    
       INX            
       JSR    L1FE6   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $80     
       AND    #$0F    
       BEQ    L1C34   
       JMP    L1D52   
L1C34: LDA    $E6     
       BPL    L1C41   
       LDX    $DA     
       LDA    $B2,X   
       BEQ    L1C41   
L1C3E: JMP    L16D5   
L1C41: LDX    $DA     
       LDA    $9A,X   
       BPL    L1C4A   
       JMP    L1CDB   
L1C4A: AND    #$07    
       STA    $F0     
       LDA    $80     
       ROL            
       LDA    $81     
       ROL            
       CLC            
       ADC    $F0     
       AND    #$0F    
       JSR    L14C5   
       LDX    $DA     
       STA    $CA,X   
       LDA    $E6     
       BMI    L1C68   
       AND    #$0C    
       BNE    L1C6B   
L1C68: JMP    L1D3E   
L1C6B: LDA    $B2,X   
       BEQ    L1C7C   
       LDA    $D3     
       CMP    #$30    
       BMI    L1C7C   
       LDY    #$00    
       STY    $B2,X   
       DEY            
       STY    $BA,X   
L1C7C: LDA    $C2,X   
       CMP    $CA,X   
       BEQ    L1CBD   
       LDA    $9A,X   
       AND    #$38    
       LSR            
       LSR            
       LSR            
       TAY            
       CMP    #$07    
       BEQ    L1CA4   
       DEY            
       BPL    L1CA4   
       JSR    L14B2   
       LDX    #$01    
       STX    $99     
       LDY    #$14    
       JSR    L149A   
       LDA    #$3F    
       STA    $98     
       JMP    L1D3E   
L1CA4: LDA    $9A,X   
       AND    #$C7    
       STA    $9A,X   
       TYA            
       ASL            
       ASL            
       ASL            
       ORA    $9A,X   
       STA    $9A,X   
       LDY    #$1E    
       JSR    L149A   
       DEX            
       STX    $DB     
       JMP    L1D3E   
L1CBD: LDA    $9A,X   
       AND    #$C0    
       CMP    #$80    
       BEQ    L1CCD   
       CMP    #$40    
       BEQ    L1CCB   
       INC    $D3     
L1CCB: INC    $D3     
L1CCD: INC    $D3     
       LDA    #$00    
       STA    $9A,X   
       LDY    #$23    
       JSR    L149A   
       JMP    L1C3E   
L1CDB: LDA    $E6     
       TAY            
       AND    #$01    
       BEQ    L1CE4   
       INC    $D7     
L1CE4: TYA            
       AND    #$02    
       BEQ    L1CEB   
       DEC    $D7     
L1CEB: LDA    $D7     
       AND    #$03    
       STA    $D7     
       TAY            
       BNE    L1CFD   
       LDA    $E6     
       AND    #$0C    
       BEQ    L1D3E   
       JMP    L1C6B   
L1CFD: LDA    $E6     
       AND    #$04    
       BEQ    L1D18   
       CPY    #$02    
       BNE    L1D0F   
       LDA    $CA,X   
       AND    #$18    
       CMP    #$18    
       BEQ    L1D3E   
L1D0F: LDA    $CA,X   
       CLC            
       ADC    L1054,Y 
       JMP    L1D29   
L1D18: LDA    $E6     
       AND    #$08    
       BEQ    L1D3E   
       LDA    $CA,X   
       AND    L1029,Y 
       BEQ    L1D3E   
       SEC            
       SBC    L1054,Y 
L1D29: AND    L1029,Y 
       CMP    L11F3,Y 
       BCS    L1D3E   
       STA    $86     
       LDA    L1029,Y 
       EOR    #$FF    
       AND    $CA,X   
       ORA    $86     
       STA    $CA,X   
L1D3E: LDX    #$00    
       LDA    $80     
       AND    #$10    
       BNE    L1D4D   
       LDY    #$0A    
       JSR    L149A   
       BNE    L1D52   
L1D4D: LDY    #$05    
       JSR    L149A   
L1D52: LDA    INTIM   
       CMP    #$E8    
       BNE    L1D52   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$F0    
       STA    HMP1    
       LDA    #$10    
       STA    HMP0    
       STA    WSYNC   
       LDX    #$FF    
       STX    GRP0    
       STX    GRP1    
       STX    ENAM0   
       LDA    #$7E    
       STA    PF2     
       LDX    #$18    
L1D75: CPX    #$0E    
       BMI    L1D85   
       STA    WSYNC   
       CPX    #$10    
       BPL    L1D9A   
       LDA    #$7C    
       STA    PF2     
       BPL    L1D9A   
L1D85: STA    WSYNC   
       STA    HMOVE   
       LDA    #$E0    
       STA    HMP1    
       LDA    #$20    
       STA    HMP0    
       TXA            
       LSR            
       LSR            
       TAY            
       LDA    L1234,Y 
       STA    PF2     
L1D9A: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    L1D75   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$04    
       STA    NUSIZ0  
       LDA    #$07    
       STA    NUSIZ1  
       STX    GRP1    
       STX    ENAM0   
       LDX    #$04    
       LDY    #$07    
L1DB7: STA    WSYNC   
       LDA    L106A,X 
       STA    PF2     
       JSR    L1FD6   
       STA    WSYNC   
       JSR    L1FD4   
       DEX            
       BPL    L1DB7   
       STA    WSYNC   
       LDA    #$07    
       STA    COLUPF  
       LDX    #$FF    
       STX    PF2     
L1DD3: LDA    INTIM   
       CMP    #$94    
       BNE    L1DD3   
       STA    HMCLR   
       INX            
       STX    GRP1    
       LDA    #$43    
       INX            
       JSR    L1FE6   
       LDX    $DA     
       LDA    $B2,X   
       BNE    L1DED   
       LDA    $BA,X   
L1DED: LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$45    
       LDX    #$02    
       JSR    L1FE6   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    $85     
L1E00: JSR    L1FB8   
       LDY    $85     
       LDA    $CA,X   
       AND    L1029,Y 
       STA    $86     
       LDA    L1029,Y 
L1E0F: CLC            
       LSR            
       BCS    L1E18   
       LSR    $86     
       JMP    L1E0F   
L1E18: LDY    $86     
       LDA    $85     
       CMP    #$02    
       BNE    L1E21   
       INY            
L1E21: LDA    L1216,Y 
       STA    WSYNC   
       STA    GRP1    
       STA    $86     
       STA    WSYNC   
       STA    WSYNC   
       LDA    $85     
       AND    #$01    
       TAY            
       LDA    L1009,Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    $86     
       STA    WSYNC   
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       DEC    $85     
       BNE    L1E00   
       STA    HMCLR   
       LDA    #$E0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $DB     
       BNE    L1EAB   
       LDX    $DA     
       LDY    #$03    
L1E5E: LDA    $C2,X   
       AND    L1029,Y 
       STA    $EA     
       LDA    $CA,X   
       AND    L1029,Y 
       SEC            
       CMP    $EA     
       BCC    L1E79   
       BEQ    L1E75   
       LDA    #$C5    
       BNE    L1E7B   
L1E75: LDA    #$00    
       BEQ    L1E7B   
L1E79: LDA    #$34    
L1E7B: STA.wy $00EA,Y 
       STA.wy $00ED,Y 
       DEY            
       BNE    L1E5E   
       LDA    $9A,X   
       CMP    #$C0    
       BCC    L1EA7   
       AND    #$07    
       TAX            
       CPX    #$02    
       BNE    L1E92   
       DEX            
L1E92: STX    $F1     
       LDY    #$02    
L1E96: LDX    $F1     
       LDA    L1289,X 
       TAX            
       LDA    $EE,X   
       STA.wy $00EB,Y 
       INC    $F1     
       DEY            
       BPL    L1E96   
       TYA            
L1EA7: STA    $DB     
       BNE    L1EAF   
L1EAB: STA    WSYNC   
       STA    WSYNC   
L1EAF: LDY    #$06    
L1EB1: STA    WSYNC   
       STY    $85     
       LDX    $EC     
       LDY    $EB     
       LDA    #$54    
       STA    GRP1    
       BRK            
       NOP            
       PHA            
       PLA            
       LDA    $ED     
       STA    COLUP1  
       STX    COLUP1  
       STY    COLUP1  
       LDY    $85     
       DEY            
       BNE    L1EB1   
       STY    GRP1    
       STA    WSYNC   
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$0C    
       LDX    $DA     
L1EDE: STA    WSYNC   
       STA    HMOVE   
       LDA    #$C6    
       STA    COLUP1  
       LDA    $B2,X   
       BNE    L1EF0   
       LDA    #$1A    
       STA    COLUP1  
       BNE    L1EF2   
L1EF0: PHA            
       PLA            
L1EF2: LDA    #$FF    
       STA    GRP1    
       STA    ENAM0   
       STA    HMCLR   
       BRK            
       NOP            
       LDA    #$00    
       STA    ENAM0   
       DEY            
       BNE    L1EDE   
       STA    WSYNC   
       STY    ENAM0   
       STY    GRP1    
L1F09: LDA    INTIM   
       CMP    #$50    
       BNE    L1F09   
       STA    WSYNC   
       LDA    #$05    
       STA    COLUPF  
       STY    NUSIZ1  
       LDX    #$04    
       LDY    #$34    
L1F1C: STA    WSYNC   
       LDA    L106A,X 
       STA    PF2     
       JSR    L1FD6   
       STA    WSYNC   
       JSR    L1FD4   
       DEX            
       BPL    L1F1C   
       STA    WSYNC   
       STX    PF2     
       LDA    #$34    
       STA    COLUPF  
       LDX    #$0C    
L1F38: STA    WSYNC   
       DEX            
       BPL    L1F38   
       STA    WSYNC   
       LDA    #$84    
       STA    COLUPF  
       LDX    #$FF    
       STX    PF0     
       STX    PF1     
       INX            
       STX    GRP0    
       STX    NUSIZ0  
       STA    WSYNC   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    NUSIZ1  
       STX    GRP1    
       STX    ENAM0   
       JSR    L1580   
       JSR    L1490   
       JMP    L1BF7   
L1F65: TXA            
       STX    $8E     
       CMP    #$1C    
       BMI    L1F7B   
       SEC            
       SBC    #$1C    
       EOR    #$07    
       TAX            
       LDA    L1183,Y 
       AND    L10F1,X 
       JMP    L1FB7   
L1F7B: CMP    #$14    
       BMI    L1F8C   
       SEC            
       SBC    #$14    
       TAX            
       LDA    L1142,Y 
       AND    L10F1,X 
       JMP    L1FB7   
L1F8C: CMP    #$10    
       BMI    L1F9D   
       SEC            
       SBC    #$10    
       TAX            
       LDA    L1101,Y 
       AND    L10F9,X 
       JMP    L1FB7   
L1F9D: CMP    #$08    
       BMI    L1FB0   
       SEC            
       SBC    #$08    
       EOR    #$07    
       TAX            
       LDA    L10AF,Y 
       AND    L10F1,X 
       JMP    L1FB7   
L1FB0: TAX            
       LDA    L106E,Y 
       AND    L10F1,X 
L1FB7: RTS            

L1FB8: LDA    $D7     
       LDX    $DA     
       AND    #$03    
       CMP    $85     
       BNE    L1FC6   
       LDA    #$0F    
       BNE    L1FD1   
L1FC6: LDA    $9A,X   
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
       LDA    L1237,Y 
L1FD1: STA    COLUP1  
       RTS            

L1FD4: PHA            
       PLA            
L1FD6: BRK            
       NOP            
       LDA    $8F,X   
       STY    COLUBK  
       BRK            
       NOP            
       LDA    #$00    
       STA    COLUBK  
       RTS            

L1FE3: .byte $66,$8F,$40
L1FE6: STA    WSYNC   
       SEC            
L1FE9: SBC    #$0F    
       BCS    L1FE9   
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

L1FFC: .byte $E0,$14,$E3,$1F
