; Disassembly of roms/SkelPPAL.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/SkelPPAL.bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
$2D     =  $2D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $1000
L1000: .byte $53,$6B,$65,$6C,$65,$74,$6F,$6E,$2B,$28,$63,$29,$32,$4B,$32,$26
       .byte $33,$20,$45,$72,$69,$63,$20,$42,$61,$6C,$6C,$00
L101C: STA    WSYNC   
       LDA    ($80),Y 
       STA    PF0     
       CPY    $96     
       BCC    L102C   
       CPY    $97     
       BCS    L102C   
       LDA    #$02    
L102C: STA    ENABL   
       STX    PF1     
       STX    PF2     
       LDA    ($88),Y 
       STA    PF0     
       INY            
       LDA    $98     
       CMP    #$01    
       BEQ    L1043   
       CPY    #$18    
       BNE    L101C   
       BEQ    L1062   
L1043: CPY    #$12    
       BCC    L101C   
       LDX    #$FF    
       CPY    #$18    
       BNE    L101C   
       STA    WSYNC   
       LDA    #$80    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDX    #$B4    
       JSR    L1E6F   
       DEX            
       JMP    L11C5   
L1062: STA    WSYNC   
       TXA            
       AND    #$0F    
       ORA    ($82),Y 
       STA    PF1     
       STX    PF2     
       LDX    #$80    
       STX    PF0     
       LDX    #$04    
L1073: DEX            
       BNE    L1073   
       AND    #$0F    
       ORA    ($8A),Y 
       STA    PF1     
       INY            
       LDA    $98     
       CMP    #$02    
       BEQ    L1089   
       CPY    #$30    
       BNE    L1062   
       BEQ    L10A5   
L1089: CPY    #$2A    
       BCC    L1062   
       DEX            
       CPY    #$30    
       BNE    L1062   
       STA    WSYNC   
       LDA    #$10    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       LDX    #$84    
       JSR    L1E6F   
       DEX            
       JMP    L1199   
L10A5: STA    WSYNC   
       LDA    ($84),Y 
       STA    PF1     
       STX    PF2     
       LDX    #$05    
       CPY    $94     
       BCC    L10BD   
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDX    #$02    
L10BD: DEX            
       BNE    L10BD   
       LDA    ($8C),Y 
       STA    PF1     
       INY            
       LDA    $98     
       CMP    #$03    
       BEQ    L10D3   
       CPY    #$48    
       BNE    L10A5   
       LDA    #$00    
       BEQ    L1108   
L10D3: CPY    #$42    
       BCC    L10A5   
       DEX            
       CPY    #$48    
       BNE    L10A5   
       STA    WSYNC   
       LDA    #$11    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       LDX    #$54    
       JSR    L1E6F   
       DEX            
       JMP    L116D   
L10EF: INX            
       TYA            
       CLC            
       ADC    $AC     
       CMP    $AE     
       BNE    L10FA   
       STX    $99     
L10FA: TAY            
       LDA    $B2     
       AND    L1900,Y 
       RTS            

L1101: LDX    #$03    
L1103: DEX            
       BNE    L1103   
       BEQ    L1122   
L1108: STA    WSYNC   
       AND    #$F0    
       ORA    ($86),Y 
       STA    PF2     
       LDX    #$11    
       STX    PF1     
       CPY    $94     
       BCC    L1101   
       TAX            
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       TXA            
L1122: AND    #$F0    
       ORA    ($8E),Y 
       STA    PF2     
       INY            
       LDA    $98     
       CMP    #$04    
       BEQ    L1135   
       CPY    #$60    
       BNE    L1108   
       BEQ    L113F   
L1135: CPY    #$5A    
       BCC    L1108   
       LDA    #$FF    
       CPY    #$60    
       BNE    L1108   
L113F: STA    WSYNC   
       LDA    #$08    
       STA    PF2     
       LDX    #$24    
       JSR    L1E6F   
       DEX            
L114B: STA    WSYNC   
       LDA    ($86),Y 
       STA    PF2     
       LDX    #$04    
       CPY    $95     
       BCS    L1161   
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDX    #$01    
L1161: DEX            
       BPL    L1161   
       LDA    ($8E),Y 
       STA    PF2     
       INY            
       CPY    #$9C    
       BNE    L114B   
L116D: STA    WSYNC   
       LDA    ($84),Y 
       STA    PF1     
       STX    PF2     
       LDX    #$04    
       CPY    $95     
       BCS    L1185   
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDX    #$01    
L1185: DEX            
       BPL    L1185   
       LDA    ($8C),Y 
       STA    PF1     
       INY            
       CPY    #$A2    
       BCC    L116D   
       LDX    #$00    
       CPY    #$B4    
       BNE    L116D   
       LDX    #$FF    
L1199: STA    WSYNC   
       LDA    ($82),Y 
       STA    PF1     
       STX    PF2     
       LDX    #$04    
       CPY    $95     
       BCS    L11B1   
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDX    #$01    
L11B1: DEX            
       BPL    L11B1   
       LDA    ($8A),Y 
       STA    PF1     
       INY            
       CPY    #$BA    
       BCC    L1199   
       LDX    #$00    
       CPY    #$CC    
       BNE    L1199   
       LDX    #$FF    
L11C5: STA    WSYNC   
       LDA    ($80),Y 
       STA    PF0     
       CPY    $96     
       BCC    L11D5   
       CPY    $97     
       BCS    L11D5   
       LDA    #$02    
L11D5: STA    ENABL   
       STX    PF1     
       STX    PF2     
       LDA    ($88),Y 
       STA    PF0     
       INY            
       CPY    #$D2    
       BCC    L11C5   
       LDX    #$00    
       CPY    #$E4    
       BNE    L11C5   
       JSR    L1B12   
L11ED: LDA    #$24    
       STA    WSYNC   
       STA    TIM64T  
       STY    GRP0    
       STY    GRP1    
       LDX    $9B     
       BEQ    L1203   
       DEX            
       BNE    L1203   
       STX    AUDV0   
       STX    AUDV1   
L1203: STX    $9B     
       LDA    $A4     
       BPL    L120D   
       LDA    $9A     
       BNE    L1227   
L120D: LDA    $9C     
       CMP    #$2D    
       BCS    L122B   
       LDA    $B3     
       STA    COLUPF  
       LDA    $A4     
       LSR            
       ADC    $A4     
       ADC    #$10    
       LSR            
       LSR            
       LSR            
       CMP    #$0E    
       BCC    L1227   
       LDA    #$0E    
L1227: STA    COLUP0  
       STA    COLUP1  
L122B: LDA    REFP1   
       AND    #$80    
       CMP    $9D     
       BNE    L1282   
       LDX    $9E     
       STA    $9E     
       BPL    L1282   
       ASL            
       BCS    L1282   
       LDA    $9C     
       BNE    L1282   
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDV0   
       STA    AUDV1   
       STA    $9B     
       LDA    $99     
       AND    #$03    
       BEQ    L1276   
       LDA    #$00    
       SEC            
       SBC    $AC     
       STA    $A1     
       LDA    $9A     
       AND    $BD     
       STA    $9C     
       LDA    $A4     
       SEC            
       SBC    $9C     
       STA    $A4     
       ADC    $A4     
       ADC    #$20    
       AND    #$F0    
       ORA    $9C     
       STA    COLUP0  
       STA    COLUP1  
L1276: LDA    $B3     
       AND    #$0F    
       STA    COLUPF  
       LDA    #$32    
       STA    $9C     
       BNE    L1282   
L1282: LDA    SWCHA   
       ORA    #$0F    
       CMP    $9F     
       BNE    L12D9   
       LDX    $A0     
       CPX    #$FF    
       BNE    L12AC   
       CMP    #$EF    
       BEQ    L12C3   
       CMP    #$7F    
       BEQ    L12B4   
       CMP    #$BF    
       BNE    L12D9   
       STA    $A0     
       LDX    $AC     
       LDA    #$00    
       SEC            
       SBC    $AD     
       STX    $AD     
       STA    $AC     
       BNE    L12D9   
L12AC: CMP    #$FF    
       BNE    L12D9   
       STA    $A0     
       BEQ    L12D9   
L12B4: STA    $A0     
       LDX    $AD     
       LDA    #$00    
       SEC            
       SBC    $AC     
       STX    $AC     
       STA    $AD     
       BNE    L12D9   
L12C3: STA    $A0     
       LDA    $98     
       CMP    #$01    
       BEQ    L12D9   
       LDA    $AB     
       CLC            
       ADC    $AC     
       STA    $AB     
       CMP    $AE     
       BNE    L12D9   
       JSR    L1F09   
L12D9: LDA    $A4     
       BMI    L12E1   
       DEC    $A6     
       BEQ    L12E4   
L12E1: JMP    L1449   
L12E4: LDA    $A8     
       SEC            
       SBC    $A7     
       STA    $A8     
       BCS    L130D   
       ADC    #$32    
       STA    $A8     
       LDA    $A9     
       SEC            
       SBC    $A7     
       STA    $A9     
       BCS    L130D   
       ADC    #$50    
       STA    $A9     
       LDA    $AA     
       SEC            
       SBC    $A7     
       STA    $AA     
       BCS    L130D   
       ADC    #$50    
       STA    $AA     
       DEC    $A7     
L130D: LDA    $A7     
       STA    $A6     
       LDA    $AE     
       CMP    $AB     
       BNE    L131A   
       JMP    L1412   
L131A: LDA    $A1     
       BEQ    L134D   
       LDX    #$00    
       STX    $A1     
       CMP    $AF     
       BNE    L1329   
       JMP    L1407   
L1329: STA    $AF     
       CMP    #$01    
       BEQ    L1337   
       BMI    L133D   
       LDA    #$FF    
       STA    $B0     
       BNE    L12E1   
L1337: LDA    #$10    
       STA    $B0     
       BNE    L12E1   
L133D: CMP    #$FF    
       BEQ    L1347   
       LDA    #$01    
       STA    $B0     
       BNE    L12E1   
L1347: LDA    #$F0    
       STA    $B0     
       BNE    L12E1   
L134D: LDX    #$00    
       LDA    $AE     
       CLC            
       ADC    $AF     
       TAY            
       LDA    $B2     
       AND    L1900,Y 
       BNE    L1388   
       INX            
       LDA    #$01    
       BIT    $AF     
       BNE    L136F   
       LDA    $AB     
       SEC            
       SBC    $AE     
       AND    #$0F    
       BNE    L1388   
       JMP    L1407   
L136F: BMI    L137D   
       LDA    $AB     
       SEC            
       SBC    $AE     
       AND    #$F0    
       BNE    L1388   
       JMP    L1407   
L137D: LDA    $AE     
       SEC            
       SBC    $AB     
       AND    #$F0    
       BNE    L1388   
       BEQ    L1407   
L1388: LDA    $AE     
       CLC            
       ADC    $B0     
       TAY            
       LDA    $B2     
       AND    L1900,Y 
       BNE    L1397   
       INX            
       INX            
L1397: LDA    $AE     
       SEC            
       SBC    $B0     
       TAY            
       LDA    $B2     
       AND    L1900,Y 
       BNE    L13A8   
       INX            
       INX            
       INX            
       INX            
L13A8: CPX    #$00    
       BEQ    L13C4   
       DEX            
       BEQ    L1407   
       DEX            
       BEQ    L13D5   
       DEX            
       BEQ    L13E5   
       DEX            
       BEQ    L13EB   
       DEX            
       BEQ    L13FB   
       DEX            
       BEQ    L1401   
       BIT    $9A     
       BPL    L1407   
       BMI    L1401   
L13C4: LDA    #$00    
       SEC            
       SBC    $AF     
       STA    $AF     
       LDA    #$00    
       SEC            
       SBC    $B0     
       STA    $B0     
       JMP    L1449   
L13D5: LDX    $B0     
       LDA    #$00    
       SEC            
       SBC    $AF     
       STX    $AF     
       STA    $B0     
       STX    $A1     
       JMP    L1449   
L13E5: BIT    $9A     
       BPL    L1407   
       BMI    L13D5   
L13EB: LDX    $AF     
       LDA    #$00    
       SEC            
       SBC    $B0     
       STX    $B0     
       STA    $AF     
       STA    $A1     
       JMP    L1449   
L13FB: BIT    $9A     
       BPL    L1407   
       BMI    L13EB   
L1401: BIT    $9A     
       BVC    L13D5   
       BVS    L13EB   
L1407: LDA    $AE     
       CLC            
       ADC    $AF     
       STA    $AE     
       CMP    $AB     
       BNE    L1417   
L1412: JSR    L1F09   
       BNE    L1449   
L1417: LDA    $9B     
       BNE    L1449   
       JSR    L1C60   
       JSR    L1AE4   
       STY    $A3     
       JSR    L1A60   
       LDA    #$01    
       STA    AUDC0   
       STA    AUDC1   
       LDA    $9A     
       ORA    #$1E    
       STA    AUDF0   
       STA    AUDF1   
       CPX    #$F1    
       BPL    L143A   
       LDX    #$F1    
L143A: STX    AUDV0   
       CPY    #$F1    
       BPL    L1442   
       LDY    #$F1    
L1442: STY    AUDV1   
       LDA    $A6     
       LSR            
       STA    $9B     
L1449: JSR    L173B   
       LDA    $A4     
       BPL    L14B7   
       LDA    $9C     
       BNE    L14B7   
       LDA    $BA     
       CLC            
       ADC    #$05    
       CMP    #$6C    
       BNE    L1466   
       LDA    $B8     
       CLC            
       ADC    #$05    
       STA    $B8     
       LDA    #$3A    
L1466: STA    $BA     
       LDX    $A5     
       INX            
       STX    $A5     
       STX    $A4     
       LDX    $B3     
       INX            
       TXA            
       AND    #$0F    
       CMP    $BC     
       BNE    L1489   
       TXA            
       SBC    $BC     
       ADC    #$12    
       STA    $B3     
       LDX    #$0B    
       ASL    $B2     
       BNE    L14B4   
       JMP    L1D02   
L1489: STX    $B3     
       LDA    #$00    
       STA    $AE     
       JSR    L1C60   
       BPL    L1499   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L1499: BIT    $A3     
       BPL    L14A2   
       SEC            
       SBC    $A3     
       BPL    L14A5   
L14A2: CLC            
       ADC    $A3     
L14A5: CMP    #$07    
       BPL    L14AD   
       LDA    #$78    
       STA    $AE     
L14AD: LDA    SWCHB   
       BMI    L14B7   
       LDX    #$05    
L14B4: JSR    L1606   
L14B7: LDX    #$00    
       STX    $99     
       LDY    $AB     
       JSR    L10EF   
       BNE    L14D2   
       JSR    L10EF   
       BNE    L14D2   
       JSR    L10EF   
       BNE    L14D2   
       JSR    L10EF   
       BNE    L14D2   
       INX            
L14D2: STX    $98     
       LDA    $AB     
       CLC            
       ADC    $AD     
       LDX    #$8B    
L14DB: JSR    L15F8   
       CPX    #$90    
       BNE    L14DB   
       LDA    $AB     
       SEC            
       SBC    $AD     
       LDX    #$83    
L14E9: JSR    L15F8   
       CPX    #$88    
       BNE    L14E9   
       LDX    #$8B    
       LDY    #$88    
L14F4: JSR    L1B50   
       CPY    #$90    
       BNE    L14F4   
       LDX    #$83    
       LDY    #$80    
L14FF: JSR    L1B50   
       CPY    #$88    
       BNE    L14FF   
       LDA    SWCHB   
       ASL            
       BPL    L1512   
       STA    $96     
       STA    $97     
       BNE    L151B   
L1512: JSR    L1C60   
       JSR    L1AE4   
       JSR    L1700   
L151B: LDA    $99     
       AND    #$03    
       BNE    L152A   
       STA    $95     
       SBC    #$01    
       STA    $94     
       JMP    L15B8   
L152A: SEC            
       SBC    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       TAY            
       LDA    L160F,Y 
       STA    HMCLR   
       STA    HMP0    
       LDA    L1610,Y 
       STA    $94     
       LDA    L1611,Y 
       STA    $95     
       LDA    L1612,Y 
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $AC     
       CMP    $AF     
       BEQ    L1571   
       CMP    $B0     
       BEQ    L1583   
       CLC            
       ADC    $AF     
       BEQ    L159B   
       LDA    L1617,Y 
       STA    $92     
       LDA    L1618,Y 
       STA    $93     
       LDA    L1619,Y 
       STA    $90     
       LDA    L161A,Y 
       STA    $91     
       LDA    #$18    
       BNE    L15AB   
L1571: LDA    L1615,Y 
       STA    $90     
       STA    $92     
       LDA    L1616,Y 
       STA    $91     
       STA    $93     
       LDA    #$08    
       BNE    L15AB   
L1583: LDA    L1617,Y 
       STA    $90     
       LDA    L1618,Y 
       STA    $91     
       LDA    L1619,Y 
       STA    $92     
       LDA    L161A,Y 
       STA    $93     
       LDA    #$00    
       BEQ    L15AB   
L159B: LDA    L1613,Y 
       STA    $90     
       STA    $92     
       LDA    L1614,Y 
       STA    $91     
       STA    $93     
       LDA    #$08    
L15AB: STA    WSYNC   
       STA    HMOVE   
       STA    REFP1   
       LSR            
       STA    REFP0   
       STA    WSYNC   
       STA    HMOVE   
L15B8: JSR    L1EE4   
       LDA    REFP1   
       AND    #$80    
       STA    $9D     
       LDX    $9C     
       BEQ    L15C8   
       DEX            
       STX    $9C     
L15C8: LDA    SWCHA   
       ORA    #$0F    
       STA    $9F     
       LDY    #$00    
       LDX    #$00    
       JMP    L101C   

START:
       SEI            
       CLD            
       LDA    #$00    
       LDX    #$44    
L15DC: STA    VSYNC,X 
       INX            
       BNE    L15DC   
       DEX            
       TXS            
       STX    COLUPF  
       LDA    #$55    
       STA    $99     
       LDY    #$0D    
       STY    $A3     
       LDA    #$2E    
       STA    $95     
       LDA    #$3B    
       STA    $94     
       JMP    L1D26   
L15F8: TAY            
       LDA    $B2     
       AND    L1900,Y 
       STA    VSYNC,X 
       INX            
       TYA            
       CLC            
       ADC    $AC     
       RTS            

L1606: LDA    L1CE3,X 
       STA    $A5,X   
       DEX            
       BNE    L1606   
       RTS            

L160F: .byte $70
L1610: .byte $53
L1611: .byte $C0
L1612: .byte $07
L1613: .byte $1B
L1614: .byte $1B
L1615: .byte $1B
L1616: .byte $16
L1617: .byte $40
L1618: .byte $1D
L1619: .byte $13
L161A: .byte $1F,$45,$72,$69,$63,$F0,$5F,$A8,$05,$0F,$17,$58,$17,$3D,$1D,$58
       .byte $18,$42,$61,$6C,$6C,$B0,$6B,$90,$00,$70,$1B,$70,$16,$3A,$1D,$68
       .byte $1F,$FF,$C3,$C3,$C3,$FF,$18,$18,$18,$18,$18,$FF,$C0,$FF,$03,$FF
       .byte $FF,$03,$0F,$03,$FF,$03,$03,$FF,$C3,$C0,$FF,$03,$FF,$C0,$FF,$FF
       .byte $C3,$FF,$C0,$C0,$18,$0C,$06,$03,$FF,$FF,$C3,$FF,$C3,$FF,$03,$03
       .byte $FF,$C3,$FF,$FF,$03,$03,$03,$07,$07,$07,$07,$07,$07,$07,$07,$07
       .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$3F,$3F,$3F,$5F
       .byte $5F,$5F,$4F,$4F,$4F,$41,$41,$41,$4F,$4F,$4F,$41,$41,$41,$4F,$4F
       .byte $4F,$21,$21,$21,$2F,$2F,$2F,$21,$21,$21,$27,$27,$27,$53,$53,$53
       .byte $51,$51,$51,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$04,$04,$04,$02,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$1E,$1E,$1E
       .byte $00,$03,$07,$07,$07,$03,$03,$03,$01,$3F,$5F,$4F,$41,$4F,$41,$4F
       .byte $21,$2F,$21,$27,$53,$51,$02,$02,$02,$02,$02,$02,$02,$04,$02,$02
       .byte $02,$02,$02,$02,$1E,$00
L1700: TXA            
       BEQ    L1709   
       BMI    L170D   
       LDA    #$03    
       BNE    L170F   
L1709: LDA    #$6C    
       BNE    L170F   
L170D: LDA    #$D5    
L170F: STA    $96     
       CLC            
       ADC    #$0C    
       STA    $97     
       TYA            
       BEQ    L1721   
       BPL    L1727   
       LDA    #$60    
       LDY    #$03    
       BNE    L172B   
L1721: LDA    #$40    
       LDY    #$06    
       BNE    L172B   
L1727: LDA    #$20    
       LDY    #$09    
L172B: STY    WSYNC   
       STY    RESBL   
L172F: DEY            
       STY    RESBL   
       BNE    L172F   
       STA    WSYNC   
       STA    HMBL    
       STA    HMOVE   
       RTS            

L173B: JSR    L1EE4   
       LDA    #$02    
       STA    VSYNC   
       JSR    L18AA   
       LDA    #$31    
       STA    CTRLPF  
       STA    WSYNC   
       LDX    #$08    
L174D: DEX            
       BNE    L174D   
       STA    RESP0   
       LDA    #$60    
       STA    RESP1   
       STA    HMP0    
       LDA    #$40    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$2F    
       STA    WSYNC   
       STA    TIM64T  
       LDA    #$00    
       STA    VSYNC   
       STA    HMCLR   
       RTS            

L176E: .byte $03,$03,$07,$07,$05,$05,$06,$06,$03,$03,$02,$02,$03,$03,$01,$01
       .byte $3F,$3F,$41,$41,$4F,$4F,$41,$41,$4F,$4F,$41,$41,$4F,$4F,$21,$21
       .byte $2F,$2F,$21,$21,$27,$27,$53,$53,$51,$51,$02,$02,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$04,$04,$02,$02,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$02,$02,$1E,$1E,$00,$03,$03,$07,$07,$07,$07,$07
       .byte $07,$03,$03,$03,$03,$03,$03,$01,$01,$3F,$3F,$5F,$5F,$4F,$4F,$41
       .byte $41,$4F,$4F,$41,$41,$4F,$4F,$21,$21,$2F,$2F,$21,$21,$27,$27,$53
       .byte $53,$51,$51,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $02,$04,$04,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$1E
       .byte $1E,$00
L1800: .byte $ED
L1801: .byte $4B
L1802: .byte $C5
L1803: .byte $BA
L1804: .byte $04,$28,$52,$44,$2B,$24,$E8,$63,$C4,$2A,$75,$88,$52,$44,$2A,$26
       .byte $E9,$4B,$DD,$3A,$04,$00,$00,$00,$00,$00,$01,$00,$38,$80,$00,$01
       .byte $00,$48,$80,$00,$0A,$00,$38,$00,$00,$04,$00,$48,$00,$00,$04,$00
       .byte $38,$00,$00,$00,$00,$00,$00,$00,$FE,$73,$39,$19,$10,$12,$49,$04
       .byte $A5,$10,$7E,$71,$04,$3D,$10,$12,$49,$04,$A5,$10,$FE,$4B,$39,$25
       .byte $F7,$FF,$FF,$F8,$FF,$F8,$30,$00,$CC,$60,$CC,$30,$3F,$78,$60,$78
       .byte $30,$03,$E0,$60,$E0,$F0,$FF,$E0,$60,$E0,$00,$00,$00,$00,$00,$33
       .byte $03,$FC,$03,$FC,$33,$03,$0C,$03,$0C,$F3,$FF,$0C,$03,$0C,$03,$60
       .byte $0C,$03,$0C,$0F,$60,$FC,$FF,$FC,$00,$00,$00,$00,$00,$33,$03,$FC
       .byte $07,$FC,$33,$63,$80,$1B,$80,$B3,$9B,$80,$63,$80,$7B,$07,$80,$83
       .byte $80,$37,$03,$FC,$03,$FC
L18AA: LDA    $9A     
       BEQ    L18B1   
       LSR            
       BCC    L18B3   
L18B1: EOR    #$A9    
L18B3: STA    $9A     
       RTS            

L18B6: .byte $FF,$70,$70,$F8,$F8,$B8,$B8,$78,$78,$F8,$F8,$78,$78,$D0,$D0,$10
       .byte $10,$78,$78,$F8,$F8,$F8,$F8,$08,$08,$F8,$F8,$08,$08,$F8,$F8,$08
       .byte $08,$38,$38,$08,$08,$38,$38,$38,$38,$38,$38,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$20,$20,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$70,$70,$00
L1900: .byte $00,$00,$05,$61,$75,$0B,$CA,$51,$93,$01,$1E,$40,$A8,$61,$C9,$BA
       .byte $45,$FA,$1E,$82,$0D,$BD,$62,$24,$1D,$E4,$2A,$D3,$9C,$33,$55,$26
       .byte $41,$C2,$03,$70,$42,$05,$31,$8E,$5C,$77,$20,$74,$50,$21,$89,$81
       .byte $39,$36,$09,$95,$3A,$8A,$40,$61,$D4,$50,$88,$53,$CB,$67,$72,$16
       .byte $44,$84,$6A,$04,$45,$E9,$16,$98,$1A,$23,$05,$37,$43,$58,$90,$29
       .byte $CA,$31,$D1,$92,$7C,$43,$17,$64,$41,$84,$5C,$92,$0B,$A4,$13,$C5
       .byte $10,$3F,$7D,$11,$C0,$42,$AA,$66,$BB,$02,$21,$60,$76,$60,$AA,$0E
       .byte $30,$F4,$01,$87,$68,$55,$93,$50,$00,$44,$9F,$08,$C1,$A8,$35,$40
       .byte $E9,$E2,$08,$71,$E2,$43,$3D,$54,$FB,$40,$76,$22,$96,$06,$52,$D8
       .byte $7F,$03,$16,$D0,$5C,$81,$09,$82,$45,$81,$08,$83,$6C,$41,$A9,$74
       .byte $46,$80,$68,$41,$3B,$B5,$57,$B2,$2C,$B6,$75,$12,$20,$92,$06,$8B
       .byte $41,$B9,$16,$C7,$07,$50,$1B,$42,$21,$61,$58,$D0,$4D,$31,$C8,$30
       .byte $14,$4B,$82,$BA,$01,$F8,$B6,$4A,$97,$C9,$46,$71,$C7,$46,$46,$49
       .byte $86,$23,$57,$0C,$42,$55,$14,$05,$21,$30,$84,$49,$75,$4C,$F1,$30
       .byte $40,$38,$94,$24,$F3,$DC,$7E,$D3,$09,$CE,$11,$23,$83,$4A,$62,$2D
       .byte $C3,$7C,$97,$48,$C2,$00,$35,$31,$3D,$40,$E0,$6D,$33,$07,$94,$10
       .byte $10,$10,$10,$10,$10,$10,$20,$20,$20,$20,$20,$20,$40,$40,$40,$40
       .byte $40,$40,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$40,$40
       .byte $40,$40,$40,$40,$20,$20,$20,$20,$20,$20,$10,$10,$10,$10,$10,$10
       .byte $18,$18,$18,$18,$18,$18,$14,$14,$14,$14,$14,$14,$12,$12,$12,$12
       .byte $12,$12,$11,$11,$11,$11,$11,$11,$01,$01,$01,$01,$01,$01,$02,$02
       .byte $02,$02,$02,$02,$04,$04,$04,$04,$04,$04,$08,$08,$08,$08,$08,$08
L1A60: TXA            
       BMI    L1A6A   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       BMI    L1A6B   
L1A6A: ASL            
L1A6B: STA    $A2     
       TYA            
       BPL    L1A79   
       CLC            
       ADC    $A2     
       TAX            
       CLC            
       ADC    $A3     
       TAY            
       RTS            

L1A79: LDA    $A2     
       SEC            
       SBC    $A3     
       TAY            
       SEC            
       SBC    $A3     
       TAX            
       RTS            

L1A84: .byte $F8,$F8,$F8,$F8,$F8,$F8,$04,$04,$04,$04,$04,$04,$02,$02,$02,$02
       .byte $02,$02,$01,$01,$01,$01,$01,$01,$11,$11,$11,$11,$11,$11,$12,$12
       .byte $12,$12,$12,$12,$14,$14,$14,$14,$14,$14,$18,$18,$18,$18,$18,$18
       .byte $1F,$1F,$1F,$1F,$1F,$1F,$20,$20,$20,$20,$20,$20,$40,$40,$40,$40
       .byte $40,$40,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$40,$40
       .byte $40,$40,$40,$40,$20,$20,$20,$20,$20,$20,$10,$10,$10,$10,$10,$10
L1AE4: LDA    #$01    
       BIT    $AC     
       BEQ    L1AFE   
       BMI    L1AF1   
       LDX    $A2     
       LDY    $A3     
       RTS            

L1AF1: LDA    $A2     
       EOR    #$FF    
       TAX            
       INX            
       LDA    $A3     
       EOR    #$FF    
       TAY            
       INY            
       RTS            

L1AFE: BMI    L1B09   
       LDX    $A3     
       LDA    $A2     
       EOR    #$FF    
       TAY            
       INY            
       RTS            

L1B09: LDA    $A3     
       EOR    #$FF    
       TAX            
       INX            
       LDY    $A2     
       RTS            

L1B12: STA    WSYNC   
       STX    PF0     
       STX    REFP0   
       STX    REFP1   
       LDA    $B3     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$05    
       STA    RESP1   
       STA    RESP0   
       STA    RESP1   
L1B2E: LDX    #$01    
L1B30: STA    WSYNC   
       ROL    $2D     
       ROL    $2D     
       ROL    $2D     
       LDA    ($B8),Y 
       STA.w  $001B   
       LDA    ($BA),Y 
       STA    GRP1    
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    ($B6),Y 
       STA    GRP1    
       DEX            
       BEQ    L1B30   
       DEY            
       BNE    L1B2E   
       RTS            

L1B50: LDA    VSYNC,X 
       BEQ    L1B58   
       LDA    #$1A    
       BNE    L1B62   
L1B58: LDA    VBLANK,X
       BEQ    L1B60   
       LDA    #$1C    
       BNE    L1B62   
L1B60: LDA    #$1E    
L1B62: INX            
       STA.wy $0001,Y 
       LDA    #$00    
       STA.wy $0000,Y 
       INY            
       INY            
       RTS            

L1B6E: .byte $03,$03,$03,$07,$07,$07,$05,$05,$05,$06,$06,$06,$03,$03,$03,$02
       .byte $02,$02,$03,$03,$03,$01,$01,$01,$3F,$3F,$3F,$41,$41,$41,$4F,$4F
       .byte $4F,$41,$41,$41,$4F,$4F,$4F,$41,$41,$41,$4F,$4F,$4F,$21,$21,$21
       .byte $2F,$2F,$2F,$21,$21,$21,$27,$27,$27,$53,$53,$53,$51,$51,$51,$02
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$04,$04,$04,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$1E,$1E,$1E,$00,$03,$07,$05
       .byte $06,$03,$02,$03,$01,$3F,$41,$4F,$41,$4F,$41,$4F,$21,$2F,$21,$27
       .byte $53,$51,$02,$02,$02,$02,$02,$02,$02,$04,$02,$02,$02,$02,$02,$02
       .byte $1E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$F0,$F0,$F0,$F0,$F0,$F0,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$1F,$1F,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$0F,$0F,$0F
       .byte $0F,$0F
L1C60: LDA    $AE     
       SEC            
       SBC    $AB     
       STA    $A2     
       LSR            
       LSR            
       LSR            
       LSR            
       BIT    $B1     
       BEQ    L1C71   
       ORA    #$F0    
L1C71: STA    $A3     
       LDA    $A2     
       BIT    $B1     
       BEQ    L1C7F   
       INC    $A3     
       ORA    #$F0    
       BMI    L1C81   
L1C7F: AND    #$0F    
L1C81: STA    $A2     
       RTS            

L1C84: .byte $FF,$FF,$FF,$FF,$FF,$FF,$04,$04,$04,$04,$04,$04,$02,$02,$02,$02
       .byte $02,$02,$01,$01,$01,$01,$01,$01,$1F,$1F,$1F,$1F,$1F,$1F,$12,$12
       .byte $12,$12,$12,$12,$14,$14,$14,$14,$14,$14,$18,$18,$18,$18,$18,$18
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$20,$20,$20,$20,$20,$20,$40,$40,$40,$40
       .byte $40,$40,$80,$80,$80,$80,$80,$80,$F0,$F0,$F0,$F0,$F0,$F0,$40,$40
       .byte $40,$40,$40,$40,$20,$20,$20,$20,$20,$20,$10,$10,$10,$10,$10
L1CE3: .byte $10,$32,$32,$19,$28,$28,$00,$01,$10,$88,$01,$10,$08,$01,$23,$67
       .byte $16,$67,$16,$3A,$16,$3A,$16,$0D,$0F
L1CFC: LDY    #$8C    
       LDX    #$55    
       BNE    L1D06   
L1D02: LDY    #$D3    
       LDX    #$73    
L1D06: STY    $99     
       STX    $A2     
       LDY    #$13    
       STY    $A3     
       LDA    #$2E    
       STA    $95     
       LDA    #$3B    
       STA    $94     
L1D16: JSR    L1EE4   
       LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       JSR    L18AA   
       STA    WSYNC   
       LDA    $94     
L1D26: STA    WSYNC   
       STA    TIM64T  
       LDA    #$00    
       STA    VSYNC   
       JSR    L1EE4   
       LDX    $A2     
       BEQ    L1D44   
       TAX            
       JSR    L1B12   
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDY    $A3     
       LDX    $A2     
L1D44: STA    WSYNC   
       LDA    L1801,X 
       STA    PF1     
       LDA    L1802,X 
       STA    PF2     
       LDA    L1800,X 
       STA    PF0     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF0     
       LDA    L1803,X 
       STA    PF1     
       LDA    L1804,X 
       DEY            
       BNE    L1D6D   
       LDY    $A3     
       INX            
       INX            
       INX            
       INX            
       INX            
L1D6D: STA    PF2     
       CPX    $99     
       BNE    L1D44   
       LDA    $95     
       STA    WSYNC   
       STA    TIM64T  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    AUDV0   
       STA    AUDV1   
       LDA    SWCHB   
       AND    #$03    
       CMP    #$03    
       BEQ    L1D16   
       JMP    L1EEC   
L1D92: .byte $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$3F,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $80,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $11,$11,$11,$11,$11,$11,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08,$08
L1E60: STA    WSYNC   
       LDA    #$04    
       CPY    $96     
       BCC    L1E6D   
       CPY    $97     
       BCS    L1E6D   
       LSR            
L1E6D: STA    ENABL   
L1E6F: CPY    $94     
       BCC    L1E7F   
       CPY    $95     
       BCS    L1E7F   
       LDA    ($90),Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
L1E7F: INY            
       DEX            
       BNE    L1E60   
       RTS            

L1E84: .byte $FF,$FF,$FF,$FF,$FF,$FF,$04,$04,$04,$04,$04,$04,$02,$02,$02,$02
       .byte $02,$02,$01,$01,$01,$01,$01,$01,$1F,$1F,$1F,$1F,$1F,$1F,$12,$12
       .byte $12,$12,$12,$12,$14,$14,$14,$14,$14,$14,$18,$18,$18,$18,$18,$18
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$20,$20,$20,$20,$20,$20,$40,$40,$40,$40
       .byte $40,$40,$80,$80,$80,$80,$80,$80,$F0,$F0,$F0,$F0,$F0,$F0,$40,$40
       .byte $40,$40,$40,$40,$20,$20,$20,$20,$20,$20,$10,$10,$10,$10,$10,$10
L1EE4: STA    WSYNC   
       LDA    INTIM   
       BNE    L1EE4   
       RTS            

L1EEC: LDX    #$18    
       JSR    L1606   
       LDA    SWCHB   
       ASL            
       BMI    L1EFB   
       LDA    #$08    
       STA    $BC     
L1EFB: LDA    SWCHB   
       BPL    L1F06   
       LSR    $BD     
       LDA    #$4E    
       STA    $B4     
L1F06: JMP    L11ED   
L1F09: LDA    SWCHB   
       AND    #$08    
       BEQ    L1F5B   
       LDA    $9A     
       ORA    #$F0    
       CMP    #$F6    
       BMI    L1F30   
       STA    $9B     
       ASL            
       ASL            
       CLC            
       ADC    $9B     
       CLC            
       ADC    $B6     
       CMP    #$3A    
       BCC    L1F2C   
       STA    $B6     
       LDA    $B4     
       BCS    L1F37   
L1F2C: ADC    #$32    
       STA    $B6     
L1F30: LDA    $B4     
       SEC            
       SBC    #$05    
       STA    $B4     
L1F37: CMP    #$3A    
       BEQ    L1F57   
       BCC    L1F5B   
L1F3D: LDA    $A6     
       LSR            
       STA    $9B     
       LDA    #$01    
       STA    AUDC0   
       STA    AUDC1   
       LDA    $9A     
       AND    #$03    
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

L1F57: CMP    $B6     
       BNE    L1F3D   
L1F5B: LDA    #$3A    
       STA    $B6     
       STA    $B4     
       PLA            
       PLA            
       JMP    L1CFC   
L1F66: .byte $70,$70,$70,$F8,$F8,$F8,$B8,$B8,$B8,$78,$78,$78,$F8,$F8,$F8,$78
       .byte $78,$78,$D0,$D0,$D0,$10,$10,$10,$78,$78,$78,$F8,$F8,$F8,$F8,$F8
       .byte $F8,$08,$08,$08,$F8,$F8,$F8,$08,$08,$08,$F8,$F8,$F8,$08,$08,$08
       .byte $38,$38,$38,$08,$08,$08,$38,$38,$38,$38,$38,$38,$38,$38,$38,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$20,$20,$20,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$70,$70,$70,$00,$70,$F8,$B8
       .byte $78,$F8,$78,$D0,$10,$78,$F8,$F8,$08,$F8,$08,$F8,$08,$38,$08,$38
       .byte $38,$38,$10,$10,$10,$10,$10,$10,$10,$20,$10,$10,$10,$10,$10,$10
       .byte $70,$00,$05,$40,$F9,$1F,$D6,$15,$F9,$1F
