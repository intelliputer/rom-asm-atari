; Disassembly of roms/Demon Attack (Activision).bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Demon Attack (Activision).bin
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
REFP1   =  $0C
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
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $1000
L1000: LDY    #$00    
       STA    WSYNC   
       LDA.wy $0096,Y 
       STA    HMBL    
       AND    #$0F    
       TAY            
       NOP            
       NOP            
L100E: DEY            
       BPL    L100E   
       LDA    $BD,X   
       STA    RESBL   
       LDA    $D2     
       AND    $D1     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       STA    WSYNC   
L1027: DEY            
       BNE    L1027   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STY    HMP1    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $BC     
       STA    COLUBK  
       LDA    #$1E    
       STA    $C1     
       STA    $C3     
L1049: LDA    INTIM   
       BNE    L1049   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       STA    CXCLR   
       LDA    #$09    
       STA    $DC     
L105A: LDY    $DC     
       LDA    ($DD),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($DF),Y 
       STA    GRP1    
       LDA    ($E1),Y 
       STA    GRP0    
       LDA    ($E3),Y 
       STA    $BF     
       LDA    ($E5),Y 
       TAX            
       LDA    ($E7),Y 
       TAY            
       LDA    $BF     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $DC     
       BPL    L105A   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    VDELP0  
       STY    VDELP1  
       LDA    #$08    
       STA    REFP1   
       LDX    #$A5    
       DEY            
       STY    $BF     
L1095: INC    $BF     
       STA    WSYNC   
       LDY.w  $00BF   
       LDA.wy $008D,Y 
       STA    HMP0    
       AND    #$0F    
       TAY            
L10A4: DEY            
       BPL    L10A4   
       LDY    $BF     
       STA    RESP0   
       STA    WSYNC   
       LDA.wy $0091,Y 
       STA    HMP1    
       AND    #$0F    
       TAY            
       NOP            
       NOP            
L10B7: DEY            
       BPL    L10B7   
       LDY    $BF     
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       CPY    #$03    
       BEQ    L1117   
       LDA.wy $009D,Y 
       ASL            
       ASL            
       ASL            
       STA    $C0     
       LDA.wy $00A1,Y 
       ASL            
       ASL            
       ASL            
       STA    $C2     
       LDA.wy $00C5,Y 
       STA    $C4     
       LDA    #$00    
       CPY    $97     
       BNE    L10E3   
       LDA    #$07    
L10E3: STA    NUSIZ0  
       STA    NUSIZ1  
       DEX            
       DEX            
       DEX            
L10EA: STA    WSYNC   
       TXA            
       SEC            
       SBC    $C4     
       TAY            
       AND    #$F8    
       BNE    L1103   
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    ($CD),Y 
       STA    COLUP0  
       STA    COLUP1  
L1103: TXA            
       SEC            
       SBC    $95     
       LDY    #$01    
       AND    #$F8    
       BNE    L110E   
       INY            
L110E: STY    ENABL   
       DEX            
       CPX    $C4     
       BCC    L1095   
       BCS    L10EA   
L1117: LDA    $D3     
       AND    $D1     
       STA    COLUP0  
       LDA    CXPPMM  
       STA    $DC     
       LDA    $99     
       BNE    L1168   
       STA    REFP1   
       STA    NUSIZ0  
       STA    NUSIZ1  
       BIT    $EB     
       BPL    L1132   
       JMP    L11B2   
L1132: LDA    $B3     
       ASL            
       ASL            
       ASL            
       STA    $C0     
L1139: STA    WSYNC   
       CPX    #$0C    
       BCS    L1144   
       LDA    L1D88,X 
       STA    GRP0    
L1144: TXA            
       SEC            
       SBC    $C8     
       TAY            
       AND    #$F8    
       BNE    L1155   
       LDA    ($C0),Y 
       STA    GRP1    
       LDA    ($CD),Y 
       STA    COLUP1  
L1155: TXA            
       SEC            
       SBC    $95     
       LDY    #$01    
       AND    #$F8    
       BNE    L1160   
       INY            
L1160: STY    ENABL   
       DEX            
       BPL    L1139   
       JMP    L11F0   
L1168: AND    #$38    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L1DBC,Y 
       STA    $C0     
       LDA    #$1D    
       STA    $C1     
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
L117D: STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       TXA            
       LDY    #$01    
       SEC            
       SBC    $95     
       AND    #$F8    
       BNE    L118E   
       INY            
L118E: STY    ENABL   
       TXA            
       LSR            
       LSR            
       BCS    L11A8   
       LSR            
       TAY            
       BCS    L11A8   
       CPY    #$05    
       BCS    L11A8   
       LDA    L1DEC,Y 
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($C0),Y 
       BCC    L11AA   
L11A8: LDA    #$00    
L11AA: DEX            
       BPL    L117D   
       INX            
       STX    REFP1   
       BEQ    L11F0   
L11B2: LDA    #$4E    
       STA    COLUP1  
       LDA    CXP1FB  
       STA    $BF     
L11BA: STA    WSYNC   
       CPX    #$0C    
       BCS    L11C5   
       LDA    L1D88,X 
       STA    GRP0    
L11C5: TXA            
       SEC            
       SBC    $95     
       LDY    #$01    
       AND    #$F8    
       BNE    L11D0   
       INY            
L11D0: STY    ENABL   
       TXA            
       CMP    #$50    
       BCS    L11ED   
       LSR            
       LSR            
       LSR            
       TAY            
       TXA            
       EOR    #$FF    
       EOR    $BD     
       AND    $EC     
       BEQ    L11E8   
       LDA    #$00    
       BEQ    L11EB   
L11E8: LDA.wy $00A5,Y 
L11EB: STA    GRP1    
L11ED: DEX            
       BPL    L11BA   
L11F0: LDX    #$00    
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       STX    HMP0    
       LDA    #$10    
       STA    HMP1    
       LDA    $F7     
       AND    $D1     
       STA    $E7     
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       BIT    $F8     
       BMI    L1212   
       LDX    $ED     
L1212: LDY    $F2,X   
       LDA    L1DAE,Y 
       STA    NUSIZ0  
       LDA    L1DB5,Y 
       STA    NUSIZ1  
       LDX    $D4     
       STX    COLUP0  
       STX    COLUP1  
       LDX    #$06    
       LDA    $E7     
L1228: STA    WSYNC   
       STA    COLUBK  
       DEX            
       BMI    L1247   
       LDA    L1D9C,X 
       CPY    #$00    
       BEQ    L123E   
       STA    GRP0    
       CPY    #$02    
       BCC    L123E   
       STA    GRP1    
L123E: DEC    $E7     
       DEC    $E7     
       LDA    $E7     
       JMP    L1228   
L1247: JMP    L187A   

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L1251: STA    VSYNC,X 
       INX            
       BNE    L1251   
       INX            
       STX    $EA     
       JSR    L1AA7   
       LDA    #$AB    
       STA    $81     
       LDA    #$CD    
       STA    $83     
       LDA    #$EA    
       STA    $85     
       STA    $D5     
       LDX    #$0A    
       LDA    #$1F    
L126E: STA    $DE,X   
       DEX            
       DEX            
       BPL    L126E   
       JMP    L145A   
L1277: LDA    #$02    
       STA    VBLANK  
       LDX    #$19    
       STA    WSYNC   
       STX    TIM8T   
       STA    VSYNC   
       LDX    #$00    
       BIT    $F1     
       BMI    L128E   
       STX    $B5     
       BPL    L1292   
L128E: LDA    $99     
       BNE    L12A7   
L1292: LDA    $B5     
       AND    #$0F    
       ASL            
       TAY            
       LDA    L12A2,Y 
       PHA            
       LDA    L12A1,Y 
       PHA            
       RTS            

L12A1: .byte $D1
L12A2: .byte $12,$CB,$12,$B1,$12
L12A7: LSR            
       LSR            
       TAX            
       LDA    $99     
       AND    #$1F    
       LDY    #$08    
       BNE    L12D2   
       LDA    $CF     
       ASL            
       TAX            
       LDA    $CF     
       EOR    #$FF    
       AND    #$07    
       LDY    #$0F    
       DEC    $CF     
       BPL    L12D2   
       LDA    $B5     
       AND    #$F0    
       STA    $B5     
       LDX    #$00    
       BEQ    L12D2   
       LDX    #$0C    
       LDA    $BB     
       LDY    #$08    
L12D2: STX    AUDV0   
       STY    AUDC0   
       STA    AUDF0   
       LDX    #$00    
       LDA    $F4     
       BNE    L131D   
       LDA    $B5     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L12F0,Y 
       PHA            
       LDA    L12EF,Y 
       PHA            
       RTS            

L12EF: .byte $87
L12F0: .byte $13,$5B,$13,$4E,$13,$F6,$12,$C6,$D0,$A5,$D0,$D0,$08,$85,$B5,$A9
       .byte $4C,$85,$F7,$D0,$12,$A8,$4A,$4A,$4A,$AA,$E6,$F7,$B9,$00,$1E,$29
       .byte $07,$85,$17,$69,$05,$86,$19,$A0,$0C,$84,$15,$D0,$6B
L131D: DEC    $F4     
       LDA    $F4     
       BNE    L1330   
       LDX    $ED     
       BIT    $F8     
       BPL    L132B   
       LDX    #$00    
L132B: INC    $F2,X   
       INX            
       STX    $BA     
L1330: CMP    #$3D    
       BCS    L1388   
       EOR    #$FF    
       STA    $D4     
       EOR    #$FF    
       LSR            
       LSR            
       TAY            
       LDA    L1FEC,Y 
       BEQ    L1388   
       TAY            
       LDA    $F4     
       AND    #$03    
       ASL            
       ASL            
       TAX            
       TYA            
       LDY    #$04    
       BNE    L1388   
       LDX    #$08    
       LDY    $D0     
       INC    $D0     
       LDA    L1E00,Y 
       AND    #$07    
       BPL    L137F   
       LDA    $BD     
       EOR    #$FF    
       AND    #$0F    
       SEC            
       SBC    #$04    
       BCC    L1388   
       TAX            
       BIT    $B2     
       BMI    L1383   
       LDA    $BD     
       AND    #$10    
       BEQ    L1376   
       LDX    #$00    
       BEQ    L1388   
L1376: LDA    #$14    
       SEC            
       SBC    $9B     
       CLC            
       ADC    L1FA2,X 
L137F: LDY    #$0C    
       BNE    L1388   
L1383: LDA    L1F96,X 
       LDY    #$04    
L1388: STX    AUDV1   
       STY    AUDC1   
       STA    AUDF1   
L138E: LDA    INTIM   
       BNE    L138E   
       STA    VSYNC   
       STA    WSYNC   
       LDA    #$2D    
       STA    TIM64T  
       INC    $BD     
       BNE    L13BC   
       INC    $B9     
       BIT    $CC     
       BMI    L13B2   
       LDA    $B9     
       BNE    L13AE   
       LDA    #$F3    
       STA    $D1     
L13AE: LDA    $F5     
       BNE    L13B6   
L13B2: BIT    $F8     
       BPL    L13BC   
L13B6: LDA    $ED     
       EOR    #$01    
       STA    $ED     
L13BC: LDA    $D5     
       ASL            
       EOR    $D5     
       ASL            
       ASL            
       ROL    $D5     
       LDA    SWCHB   
       ROR    $9C     
       BCS    L13D0   
       LSR            
       BCS    L141C   
       ROL            
L13D0: LSR            
       ROL    $9C     
       LSR            
       BIT    $E9     
       BCC    L13DC   
       ROL    $E9     
       BNE    L1405   
L13DC: BPL    L13FD   
L13DE: LDA    $BD     
       AND    #$1F    
       STA    $E9     
       JSR    L1AA7   
       JSR    L1AD2   
       SED            
       LDA    $EA     
       CLC            
       ADC    #$01    
       CLD            
       STA    $EA     
       CMP    #$11    
       BNE    L1405   
       LDA    #$01    
       STA    $EA     
       BNE    L1405   
L13FD: LDA    $E9     
       EOR    $BD     
       AND    #$1F    
       BEQ    L13DE   
L1405: BIT    $CC     
       BMI    L1419   
       LDA    $B5     
       CMP    #$30    
       BEQ    L1419   
       LDA    INPT4   
       BPL    L1417   
       BIT    $F9     
       BPL    L141C   
L1417: STA    $F9     
L1419: JMP    L14DC   
L141C: LDX    #$FF    
       STX    $F1     
       STX    $CC     
       STX    $BE     
       INX            
       LDY    $EA     
       DEY            
       TYA            
       LDY    #$00    
       STY    $F8     
       CMP    #$08    
       BCS    L1442   
       LSR            
       BCC    L1435   
       INY            
L1435: LSR            
       BCC    L1439   
       DEX            
L1439: LSR            
       BCC    L144A   
       LDA    #$0B    
       STA    $BE     
       BNE    L144A   
L1442: DEX            
       STX    $F8     
       CMP    #$08    
       BNE    L144A   
       INX            
L144A: STX    $F6     
       STY    $F5     
       STY    $ED     
       LDA    #$03    
       STA    $F2     
       STA    $F3     
       LDX    #$81    
       BNE    L145C   
L145A: LDX    #$87    
L145C: LDA    #$00    
L145E: STA    VSYNC,X 
       INX            
       CPX    #$BD    
       BNE    L145E   
       BIT    $F8     
       BMI    L147C   
       LDA    $F5     
       BEQ    L147C   
       LDA    $ED     
       EOR    #$01    
       TAX            
       LDA    $F2,X   
       BMI    L147C   
       STX    $ED     
       CPX    #$00    
       BNE    L147E   
L147C: INC    $BE     
L147E: LDA    $BE     
       CMP    #$54    
L1482: BEQ    L1482   
       STA    $80     
       CMP    #$0C    
       BCC    L1496   
L148A: SBC    #$0C    
       CMP    #$0C    
       BCS    L148A   
       STA    $80     
       AND    #$03    
       ADC    #$08    
L1496: STA    $F0     
       LSR            
       TAX            
       LDA    #$2C    
       SEC            
       SBC    $F0     
       SBC    $F0     
       STA    $98     
       LDA    L1DF1,X 
       STA    $EB     
       LDY    #$01    
       AND    #$20    
       BEQ    L14B0   
       LDY    #$81    
L14B0: TYA            
       ORA    $9C     
       STA    $9C     
       LDA    #$04    
       BIT    $EB     
       BVC    L14BD   
       LDA    #$00    
L14BD: STA    $EC     
       LDA    L1DF7,X 
       STA    $EE     
       LDA    $BE     
       SEC            
L14C7: SBC    #$07    
       BCS    L14C7   
       ADC    #$07    
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$AE    
       STA    $CD     
       LDA    #$1F    
       STA    $CE     
       JSR    L1AA7   
L14DC: BIT    $F1     
       BPL    L14E7   
       BIT    $CC     
       BMI    L14E7   
       JMP    L1822   
L14E7: LDA    $BD     
       AND    #$07    
       TAY            
       LDX    L1D94,Y 
       BMI    L1535   
       CPX    #$03    
       BNE    L14FF   
       LDA    $B3     
       JSR    L1B28   
       STA    $B3     
       JMP    L1533   
L14FF: LDA    $B6,X   
       BPL    L152C   
       LDA    $9D,X   
       CMP    $A1,X   
       BNE    L1515   
       CMP    #$05    
       BCC    L1515   
       JSR    L1B03   
       STA    $9D,X   
       JMP    L1533   
L1515: LDA    #$BF    
       STA    $BF     
       LDA    $9D,X   
       JSR    L1B03   
       STA    $9D,X   
       LDA    #$DF    
       STA    $BF     
       LDA    $A1,X   
       JSR    L1B03   
       JMP    L1533   
L152C: LDA    $9D,X   
       JSR    L1B28   
       STA    $9D,X   
L1533: STA    $A1,X   
L1535: LDA    $99     
       BNE    L15AB   
       BIT    $B2     
       BMI    L154F   
       LDA    $B8     
       AND    #$60    
       BEQ    L154F   
       CMP    #$60    
       BEQ    L154F   
       JSR    L1D31   
       BCS    L154F   
       JSR    L1BB8   
L154F: BIT    $F1     
       BMI    L155D   
       LDX    #$06    
       BIT    $BD     
       BVC    L156B   
       LDX    #$0A    
       BNE    L156B   
L155D: LDA    SWCHA   
       LDX    $ED     
       BNE    L1568   
       LSR            
       LSR            
       LSR            
       LSR            
L1568: AND    #$0F    
       TAX            
L156B: LDY    #$01    
       BIT    $F6     
       BPL    L1572   
       INY            
L1572: LDA    $90     
       CPX    #$08    
       BCC    L158B   
       BEQ    L15AB   
       CPX    #$0C    
       BCS    L15AB   
       CMP    #$31    
       BEQ    L15AB   
       CMP    #$21    
       BEQ    L15AB   
       JSR    L1CDE   
       BEQ    L159A   
L158B: CPX    #$05    
       BCC    L15AB   
       CMP    #$C8    
       BEQ    L15AB   
       CMP    #$D8    
       BEQ    L15AB   
       JSR    L1CCF   
L159A: STA    $90     
       BIT    $F6     
       BMI    L15A4   
       BIT    $9C     
       BVS    L15AB   
L15A4: LDY    #$01    
       JSR    L1CCF   
       STA    $96     
L15AB: BIT    $9C     
       BVS    L15D5   
       LDA    $99     
       BNE    L15E3   
       BIT    $F1     
       BPL    L15BD   
       LDX    $ED     
       LDA    INPT4,X 
       BMI    L15E3   
L15BD: LDA    $9C     
       ORA    #$40    
       STA    $9C     
       LDA    $97     
       BPL    L15E3   
       LDA    $B5     
       AND    #$F0    
       ORA    #$02    
       STA    $B5     
       LDA    #$07    
       STA    $CF     
       BNE    L15E3   
L15D5: LDA    $95     
       CLC            
       ADC    $EE     
       STA    $95     
       CMP    #$A0    
       BCC    L15E3   
       JSR    L1CED   
L15E3: LDY    $BB     
       BNE    L1635   
       LDX    #$02    
L15E9: LDA    $AF,X   
       AND    #$C0    
       BEQ    L161C   
       INY            
L15F0: DEX            
       BPL    L15E9   
       CPY    #$00    
       BNE    L1633   
       BIT    $B2     
       BMI    L1633   
       LDA    $99     
       ORA    $F4     
       BNE    L1635   
       LDX    $ED     
       BIT    $F8     
       BPL    L1609   
       LDX    #$00    
L1609: LDA    $BA     
       BNE    L1619   
       LDA    $F2,X   
       CMP    #$06    
       BCS    L1619   
       LDA    #$48    
       STA    $F4     
       BNE    L1633   
L1619: JMP    L145A   
L161C: BIT    $F1     
       BPL    L1626   
       LDA    $9B     
       CMP    #$08    
       BEQ    L15F0   
L1626: LDA    $D5     
       AND    #$1F    
       ORA    #$01    
       STA    $BB     
       JSR    L1D09   
       STA    $C5,X   
L1633: STX    $97     
L1635: LDA    $BD     
       AND    #$03    
       BEQ    L166B   
       TAX            
       DEX            
       JSR    L1D09   
       CMP    $C5,X   
       BCS    L1648   
       DEC    $C5,X   
       BNE    L164A   
L1648: INC    $C5,X   
L164A: LDA    $D5     
       CPX    #$02    
       BNE    L1661   
       LDA    $8D,X   
       JSR    L1D3D   
       BIT    $9C     
       BVC    L166B   
       LDA    $95     
       CMP    $C7     
       BCC    L1665   
       BCS    L166B   
L1661: AND    #$07    
       BNE    L166B   
L1665: LDA    $AF,X   
       EOR    #$10    
       STA    $AF,X   
L166B: JSR    L1C33   
       BIT    $9C     
       BPL    L16BA   
       LDX    #$02    
L1674: LDA    $B6,X   
       AND    #$20    
       BEQ    L16B7   
       LDA    $B6,X   
       AND    #$08    
       BEQ    L16B7   
       LDY    #$01    
       LDA    $B6,X   
       AND    #$10    
       BEQ    L16A6   
       LDA    $91,X   
       CMP    #$C9    
       BEQ    L1696   
       JSR    L1CCF   
       STA    $91,X   
       JMP    L16B1   
L1696: LDA    $B6,X   
       EOR    #$10    
       STA    $B6,X   
       LDA    $AF,X   
       AND    #$F0    
       ORA    #$01    
       STA    $AF,X   
       BNE    L16B1   
L16A6: LDA    $91,X   
       CMP    #$71    
       BEQ    L1696   
       JSR    L1CDE   
       STA    $91,X   
L16B1: LDA    $B6,X   
       AND    #$F7    
       STA    $B6,X   
L16B7: DEX            
       BPL    L1674   
L16BA: LDA    $98     
       BIT    $B2     
       BPL    L16C5   
       LDA    $C8     
       CLC            
       ADC    #$0C    
L16C5: STA    $DC     
       LDA    $C5     
       CMP    #$97    
       BCC    L16CF   
       LDA    #$97    
L16CF: CMP    #$48    
       BCS    L16D5   
       LDA    #$48    
L16D5: STA    $C5     
       SEC            
       SBC    #$0C    
       CMP    $C6     
       BCS    L16E0   
       STA    $C6     
L16E0: LDA    $C6     
       SEC            
       SBC    #$0C    
       CMP    $C7     
       BCS    L16EB   
       STA    $C7     
L16EB: LDA    $C7     
       CMP    $DC     
       BCS    L16F5   
       LDA    $DC     
       STA    $C7     
L16F5: LDA    $EB     
       AND    #$10    
       BEQ    L1712   
       LDA    $99     
       BNE    L1712   
       LDA    $97     
       CMP    #$02    
       BEQ    L1712   
       BIT    $B2     
       BMI    L1712   
       LDA    $8F     
       LDY    #$04    
       JSR    L1CCF   
       STA    $94     
L1712: LDX    $97     
       BMI    L1744   
       LDA    $BB     
       BEQ    L1783   
       DEC    $BB     
       BNE    L1783   
       LDA    $AF,X   
       AND    #$C0    
       BEQ    L1747   
       LDA    #$90    
       STA    $AF,X   
       LDA    #$4C    
       STA    $D4     
       LDA    #$10    
       STA    $B5     
       LDA    $80     
       LSR            
       TAY            
       LDA    L1B9F,Y 
       STA    $9D,X   
       STA    $A1,X   
       LDA    $8D,X   
       LDY    #$08    
       JSR    L1CCF   
       STA    $91,X   
L1744: JMP    L17CF   
L1747: INC    $9B     
       LDA    $AF,X   
       ORA    #$40    
       STA    $AF,X   
       LDA    $D5     
       AND    #$7C    
       CLC            
       ADC    #$10    
       STA    $DC     
       LSR            
       STA    $D6     
       LDA    #$A0    
       SEC            
       SBC    $DC     
       LSR            
       STA    $D7     
       LDY    #$00    
       STY    $D8     
       STY    $D9     
       STY    $DA     
       STY    $DB     
       STY    $B6,X   
       LDA    #$70    
       STA    $8D,X   
       LDA    #$A9    
       STA    $91,X   
       LDA    #$20    
       STA    $BB     
       LDA    $B5     
       AND    #$F0    
       ORA    #$01    
       STA    $B5     
L1783: LDA    $AF,X   
       AND    #$C0    
       CMP    #$40    
       BNE    L17CF   
       LDY    $D8     
       LDA    $87,X   
       CLC            
       ADC    $D9     
       STA    $87,X   
       BCC    L1797   
       INY            
L1797: CPY    #$00    
       BEQ    L17A2   
       LDA    $8D,X   
       JSR    L1CCF   
       STA    $8D,X   
L17A2: LDY    $DA     
       LDA    $8A,X   
       CLC            
       ADC    $DB     
       STA    $8A,X   
       BCC    L17AE   
       INY            
L17AE: CPY    #$00    
       BEQ    L17B9   
       LDA    $91,X   
       JSR    L1CDE   
       STA    $91,X   
L17B9: LDA    $D9     
       CLC            
       ADC    $D6     
       STA    $D9     
       BCC    L17C4   
       INC    $D8     
L17C4: LDA    $DB     
       CLC            
       ADC    $D7     
       STA    $DB     
       BCC    L17CF   
       INC    $DA     
L17CF: BIT    $EB     
       BPL    L1822   
       LDY    $F0     
       INC    $9A     
       LDA    $9A     
       CMP    L1DA2,Y 
       BNE    L1822   
       JSR    L1AE6   
       LDX    #$00    
       STX    $9A     
L17E5: LDA    $A6,X   
       STA    $A5,X   
       INX            
       CPX    #$09    
       BNE    L17E5   
       LDA    $C7     
       LSR            
       LSR            
       LSR            
       TAX            
       CPX    #$0A    
       BCC    L17FA   
       LDX    #$09    
L17FA: LDA    $B4     
       BNE    L1802   
       LDX    #$09    
       BNE    L1820   
L1802: DEC    $B4     
       BIT    $EB     
       BVC    L1812   
       LDA    #$81    
       BIT    $B8     
       BPL    L1820   
       LDA    #$80    
       BNE    L1820   
L1812: LDA    #$0F    
       BIT    $B8     
       BPL    L181A   
       LDA    #$03    
L181A: AND    $D5     
       TAY            
       LDA    L1EE0,Y 
L1820: STA    $A5,X   
L1822: LDX    #$00    
       TXA            
       BIT    $F1     
       BPL    L183D   
       BIT    $CC     
       BVS    L183D   
       JSR    L1C11   
       LDA    $EA     
       JSR    L1C11   
       LDA    #$AA    
       JSR    L1C11   
       JMP    L1851   
L183D: LDY    $ED     
       LDA.wy $0081,Y 
       JSR    L1C11   
       LDA.wy $0083,Y 
       JSR    L1C11   
       LDA.wy $0085,Y 
       JSR    L1C11   
L1851: LDX    #$00    
L1853: LDA    $DD,X   
       BNE    L1861   
       LDA    #$64    
       STA    $DD,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    L1853   
L1861: LDX    $B5     
       CPX    #$30    
       BNE    L186B   
       LDA    $BC     
       BCS    L1870   
L186B: LDY    $ED     
       LDA    L1ACE,Y 
L1870: STA    $D3     
       LDA    L1AD0,Y 
       STA    $D2     
       JMP    L1000   
L187A: LDA    #$26    
       STA    TIM64T  
       BIT    $EB     
       BMI    L1887   
       LDA    CXP1FB  
       STA    $BF     
L1887: LDA    CXPPMM  
       BPL    L18B5   
       BIT    $DC     
       BMI    L18B5   
       LDA    #$40    
       STA    $99     
       STA    $BA     
       LDA    $90     
       LDY    #$04    
       JSR    L1CDE   
       STA    $90     
       LDY    #$08    
       JSR    L1CCF   
       STA    $94     
       STY    $B4     
       STY    $B2     
       LDA    $EB     
       ORA    #$80    
       STA    $EB     
       BIT    $9C     
       BVS    L18B5   
       STY    COLUPF  
L18B5: LDA    $99     
       BEQ    L191F   
       DEC    $99     
       BNE    L1915   
       LDA    #$6E    
       STA    COLUPF  
       LDA    #$05    
       STA    $90     
       JSR    L1CED   
       BIT    $F1     
       BPL    L1915   
       LDX    $ED     
       BIT    $F8     
       BPL    L18DF   
       TXA            
       EOR    #$01    
       TAY            
       LDX    #$05    
       LDA    #$00    
       JSR    L1A85   
       LDX    #$00    
L18DF: DEC    $F2,X   
       BPL    L1915   
       LDA    $F5     
       BEQ    L18FF   
       TXA            
       EOR    #$01    
       TAX            
       LDA    $F2,X   
       BMI    L18FF   
       LDA    #$08    
       STA    $9B     
       STY    $AF     
       STY    $B0     
       STY    $B1     
       STY    $BB     
       STY    $B2     
       BPL    L1915   
L18FF: STX    COLUPF  
       STX    $D3     
       JSR    L1AD2   
       LDA    #$40    
       STA    $CC     
       LDA    #$30    
       STA    $B5     
       LDA    #$78    
       STA    $D0     
       JMP    L1A7D   
L1915: LDA    $99     
       CMP    #$30    
       BCC    L191F   
       AND    #$0F    
       STA    $BC     
L191F: BIT    $9C     
       BVS    L1926   
L1923: JMP    L19D6   
L1926: LDA    CXP0FB  
       ORA    $BF     
       AND    #$40    
       BEQ    L1942   
       LDX    #$00    
       LDA    $95     
       CMP    #$0D    
       BCC    L1923   
       CLC            
       ADC    #$08    
L1939: CMP    $C5,X   
       BCS    L1944   
       INX            
       CPX    #$04    
       BNE    L1939   
L1942: BEQ    L1923   
L1944: CPX    $97     
       BEQ    L1923   
       LDA    #$03    
       CPX    #$03    
       BNE    L195E   
       BIT    $EB     
       BMI    L1923   
       CMP    $B3     
       BCS    L1923   
       STA    $B3     
       LDY    #$04    
       STY    $DC     
       BCC    L1998   
L195E: LDY    $B6,X   
       BPL    L197E   
       LDY    #$02    
       STY    $DC     
       BIT    CXP0FB  
       BVS    L1976   
       BIT    $BF     
       BVC    L19D6   
       CMP    $A1,X   
       BCS    L19D6   
       STA    $A1,X   
       BVS    L19A0   
L1976: CMP    $9D,X   
       BCS    L19D6   
       STA    $9D,X   
       BVS    L19A0   
L197E: LDY    #$01    
       STY    $DC     
       BIT    $9C     
       BMI    L198C   
       CMP    $9D,X   
       BCS    L19D6   
       BCC    L1994   
L198C: LDA    #$18    
       LDY    $9D,X   
       CPY    #$16    
       BCS    L19D6   
L1994: STA    $9D,X   
       STA    $A1,X   
L1998: LDA    $AF,X   
       AND    #$3F    
       ORA    #$C0    
       STA    $AF,X   
L19A0: JSR    L1CED   
       BIT    $F1     
       BPL    L19D6   
       LDX    #$00    
       LDA    $F0     
       LSR            
       TAY            
       TXA            
       SED            
L19AF: CLC            
       ADC    L1FE6,Y 
       BCC    L19B6   
       INX            
L19B6: DEC    $DC     
       BNE    L19AF   
       CLD            
       LDY    $ED     
       JSR    L1A85   
       LDA    #$00    
       STA    $B4     
       LDY    $80     
       LDA    L1B9F,Y 
       ASL            
       ASL            
       ASL            
       STA    $D0     
       LDA    $B5     
       AND    #$0F    
       ORA    #$20    
       STA    $B5     
L19D6: LDA    $BD     
       AND    #$03    
       TAX            
       LDA    $AF,X   
       AND    #$F0    
       STA    $DC     
       INC    $AF,X   
       LDA    $AF,X   
       AND    #$0F    
       ORA    $DC     
       STA    $AF,X   
       LDX    #$02    
L19ED: LDA    $AF,X   
       AND    #$C0    
       CMP    #$80    
       BEQ    L19F8   
       JMP    L1A77   
L19F8: LDA    $B4     
       BEQ    L1A00   
       CPX    #$02    
       BEQ    L1A1B   
L1A00: LDA    $AF,X   
       AND    #$07    
       TAY            
       LDA    $C9,X   
       CLC            
       ADC    L1EF0,Y 
       STA    $C9,X   
       BCC    L1A1B   
       LDA    $AF,X   
       AND    #$08    
       BEQ    L1A19   
       INC    $C5,X   
       BNE    L1A1B   
L1A19: DEC    $C5,X   
L1A1B: LDA    $B6,X   
       STA    $DC     
       LDA    $87,X   
       CLC            
       ADC    L1EF8,Y 
       STA    $87,X   
       BCC    L1A77   
       BIT    $DC     
       BPL    L1A35   
       LDA    $B6,X   
       ORA    #$08    
       STA    $B6,X   
       BVC    L1A77   
L1A35: CPX    #$02    
       BNE    L1A3D   
       LDA    $B4     
       BNE    L1A77   
L1A3D: LDY    #$01    
       LDA    $AF,X   
       AND    #$10    
       BEQ    L1A61   
       LDA    $8D,X   
       CMP    #$49    
       BEQ    L1A53   
       JSR    L1CCF   
       STA    $8D,X   
       JMP    L1A6C   
L1A53: LDA    $AF,X   
       EOR    #$10    
       AND    #$F0    
       ORA    #$01    
       STA    $AF,X   
       LDA    $8D,X   
       BNE    L1A6C   
L1A61: LDA    $8D,X   
       CMP    #$71    
       BEQ    L1A53   
       JSR    L1CDE   
       STA    $8D,X   
L1A6C: LDY    $B6,X   
       BNE    L1A77   
       LDY    #$08    
       JSR    L1CCF   
       STA    $91,X   
L1A77: DEX            
       BMI    L1A7D   
       JMP    L19ED   
L1A7D: LDA    INTIM   
       BNE    L1A7D   
       JMP    L1277   
L1A85: SED            
       CLC            
       ADC.wy $0085,Y 
       STA.wy $0085,Y 
       TXA            
       BCC    L1A92   
       ADC    #$00    
L1A92: CLC            
       ADC.wy $0083,Y 
       STA.wy $0083,Y 
       LDA    #$00    
       BCC    L1A9F   
       ADC    #$00    
L1A9F: ADC.wy $0081,Y 
       STA.wy $0081,Y 
       CLD            
       RTS            

L1AA7: LDA    #$05    
       STA    $90     
       LDA    #$F5    
       STA    $96     
       STA    $F9     
       LDA    #$03    
       STA    $95     
       LDA    #$96    
       STA    $C5     
       LDA    #$87    
       STA    $C6     
       LDA    #$78    
       STA    $C7     
       LDA    #$6E    
       STA    COLUPF  
       LDA    #$8C    
       STA    $F7     
       LDA    #$FF    
       STA    $D1     
       RTS            

L1ACE: .byte $56,$F8
L1AD0: .byte $2C,$7A
L1AD2: LDA    #$00    
       STA    $CC     
       LDX    #$9D    
L1AD8: STA    VSYNC,X 
       INX            
       CPX    #$BD    
       BNE    L1AD8   
       STX    $F1     
       STA    $F2     
       STA    $F3     
       RTS            

L1AE6: LDA    $D5     
       STA    $DC     
       LDX    #$07    
L1AEC: LDA    $A5,X   
       BEQ    L1AFF   
       CLC            
       BIT    $DC     
       BPL    L1AF8   
L1AF5: ROR            
       BCC    L1AFB   
L1AF8: ROL            
       BCS    L1AF5   
L1AFB: STA    $A5,X   
       ASL    $DC     
L1AFF: DEX            
       BPL    L1AEC   
       RTS            

L1B03: CMP    #$00    
       BNE    L1B08   
L1B07: RTS            

L1B08: LDY    $AF,X   
       STY    $DC     
       CMP    #$04    
       BCS    L1B21   
       SEC            
       SBC    #$01    
       BNE    L1B07   
       LDA    $B6,X   
       AND    $BF     
       STA    $B6,X   
       AND    #$60    
       BEQ    L1B52   
       BNE    L1B5F   
L1B21: TAY            
       LDA    #$07    
       STA    $BF     
       BNE    L1B7D   
L1B28: LDY    $AF,X   
       STY    $DC     
       BIT    $DC     
       BMI    L1B33   
       BVS    L1B65   
       RTS            

L1B33: BVC    L1B6F   
       SEC            
       SBC    #$01    
       BEQ    L1B52   
       CMP    #$15    
       BNE    L1B64   
       LDA    $DC     
       AND    #$0F    
       ORA    #$80    
       STA    $AF,X   
       LDA    $B6,X   
       ORA    #$F0    
       STA    $B6,X   
       JSR    L1BAF   
       LDA    #$19    
       RTS            

L1B52: LDA    $DC     
       AND    #$3F    
       STA    $AF,X   
       CPX    #$03    
       BNE    L1B5F   
       JSR    L1CC2   
L1B5F: JSR    L1BAF   
       LDA    #$00    
L1B64: RTS            

L1B65: CLC            
       ADC    #$01    
       CMP    #$04    
       BNE    L1B64   
       LDA    #$01    
       RTS            

L1B6F: TAY            
       LDA    $80     
       LSR            
       STA    $BF     
       CPX    #$03    
       BNE    L1B7D   
       LDA    #$07    
       STA    $BF     
L1B7D: LDA    $DC     
       AND    #$20    
       BNE    L1B95   
       INY            
       TYA            
       LDY    $BF     
       CMP    L1BA7,Y 
       BNE    L1B64   
L1B8C: TAY            
       LDA    $DC     
       EOR    #$20    
       STA    $AF,X   
       TYA            
       RTS            

L1B95: DEY            
       TYA            
       LDY    $BF     
       CMP    L1B9F,Y 
       BEQ    L1B8C   
       RTS            

L1B9F: .byte $04,$07,$0A,$0D,$10,$13,$16,$19
L1BA7: .byte $06,$09,$0C,$0F,$12,$15,$18,$1B
L1BAF: LDA    $B5     
       AND    #$0F    
       ORA    #$10    
       STA    $B5     
       RTS            

L1BB8: LDY    $8F     
       LDX    $9F     
       CPX    #$05    
       BCS    L1BC8   
       LDX    $A3     
       LDY    $93     
       CPX    #$05    
       BCC    L1C10   
L1BC8: STY    $94     
       STX    $B3     
       LDA    $EB     
       AND    #$7F    
       STA    $EB     
       LDA    $C7     
       STA    $C8     
       LDA    $B1     
       AND    #$F0    
       STA    $B2     
       LDX    #$01    
L1BDE: LDA    $AF,X   
       STA    $B0,X   
       LDA    $8D,X   
       STA    $8E,X   
       LDA    $91,X   
       STA    $92,X   
       LDA    $9D,X   
       STA    $9E,X   
       LDA    $A1,X   
       STA    $A2,X   
       LDA    $C5,X   
       STA    $C6,X   
       LDA    $B6,X   
       STA    $B7,X   
       DEX            
       BPL    L1BDE   
       LDA    $97     
       BMI    L1C03   
       INC    $97     
L1C03: INX            
       STX    $AF     
       STX    $9D     
       STX    $A1     
       STX    $B6     
       LDA    #$96    
       STA    $C5     
L1C10: RTS            

L1C11: STA    $DC     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    L1C2A   
       STA    $DD,X   
       INX            
       INX            
       LDA    $DC     
       AND    #$0F    
       JSR    L1C2A   
       STA    $DD,X   
       INX            
       INX            
       RTS            

L1C2A: ASL            
       STA    $BF     
       ASL            
       ASL            
       CLC            
       ADC    $BF     
       RTS            

L1C33: LDA    $99     
       BNE    L1C6D   
       BIT    $B2     
       BMI    L1C6E   
       LDA    $9F     
       CMP    #$04    
       BCC    L1C6D   
       LDY    $D5     
       CPY    #$B0    
       BCC    L1C6D   
       LDA    $8F     
       LDY    #$04    
       JSR    L1CCF   
       JSR    L1D31   
       BCS    L1C6D   
       LDY    $C7     
       CPY    #$50    
       BCS    L1C6D   
       STA    $94     
       BIT    $EB     
       BVC    L1C63   
       LDA    #$04    
       BNE    L1C67   
L1C63: LDA    $D5     
       AND    #$07    
L1C67: STA    $B4     
       LDA    #$00    
       STA    $9A     
L1C6D: RTS            

L1C6E: BIT    $B2     
       BVS    L1CCE   
       LDA    $B2     
       AND    #$07    
       BNE    L1C81   
       LDX    #$03    
       LDA    $91,X   
       JSR    L1D3D   
       LDA    #$00    
L1C81: TAY            
       LDA    $C8     
       CLC            
       ADC    L1CB2,Y 
       STA    $C8     
       BEQ    L1CC2   
       LDA    $EF     
       CLC            
       ADC    L1CBA,Y 
       STA    $EF     
       BCC    L1CCE   
       LDY    #$01    
       LDA    $B2     
       AND    #$10    
       BEQ    L1CA6   
       LDA    $94     
       JSR    L1CCF   
       JMP    L1CAF   
L1CA6: LDA    $94     
       CMP    #$71    
       BEQ    L1CAF   
       JSR    L1CDE   
L1CAF: STA    $94     
       RTS            

L1CB2: .byte $FF,$FF,$FF,$FF,$FF,$01,$01,$01
L1CBA: .byte $40,$80,$C0,$FF,$FF,$C0,$80,$40
L1CC2: LDA    #$00    
       STA    $B2     
       STA    $B3     
       LDA    $EB     
       ORA    #$80    
       STA    $EB     
L1CCE: RTS            

L1CCF: SEC            
       SBC    #$10    
       BMI    L1CDA   
       CMP    #$70    
       BCC    L1CDA   
       ADC    #$F0    
L1CDA: DEY            
       BNE    L1CCF   
       RTS            

L1CDE: CLC            
       ADC    #$10    
       BPL    L1CE9   
       CMP    #$90    
       BCS    L1CE9   
       SBC    #$F0    
L1CE9: DEY            
       BNE    L1CDE   
       RTS            

L1CED: LDA    $99     
       BEQ    L1CF5   
       LDA    #$00    
       STA    COLUPF  
L1CF5: LDA    #$03    
       STA    $95     
       LDA    $9C     
       AND    #$BF    
       STA    $9C     
       LDA    $90     
       LDY    #$01    
       JSR    L1CCF   
       STA    $96     
       RTS            

L1D09: CPX    #$00    
       BNE    L1D15   
       LDA    #$97    
       CLC            
       ADC    $C6     
       JMP    L1D2F   
L1D15: CPX    #$01    
       BNE    L1D21   
       LDA    $C5     
       CLC            
       ADC    $C7     
       JMP    L1D2F   
L1D21: LDA    $C6     
       CLC            
       BIT    $B2     
       BPL    L1D2D   
       ADC    $C8     
       JMP    L1D2F   
L1D2D: ADC    $98     
L1D2F: ROR            
       RTS            

L1D31: LDX    #$09    
       SEC            
L1D34: LDY    $A5,X   
       BNE    L1D3C   
       DEX            
       BPL    L1D34   
       CLC            
L1D3C: RTS            

L1D3D: LDY    #$04    
       JSR    L1CCF   
       STA    $BF     
       AND    #$0F    
       STA    $DC     
       LDA    $90     
       AND    #$0F    
       CMP    $DC     
       BNE    L1D7B   
       LDA    SWCHB   
       ASL            
       LDY    $ED     
       BNE    L1D59   
       ASL            
L1D59: LDY    #$FF    
       BCC    L1D5F   
       LDY    #$0F    
L1D5F: STY    $C0     
       LDA    $BF     
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$08    
       EOR    $C0     
       STA    $DC     
       LDA    $90     
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$08    
       EOR    $C0     
       CMP    $DC     
L1D7B: LDA    $AF,X   
       BCC    L1D83   
       ORA    #$10    
       BNE    L1D85   
L1D83: AND    #$EF    
L1D85: STA    $AF,X   
       RTS            

L1D88: .byte $C6,$C6,$C6,$C6,$EE,$EE,$6C,$6C,$28,$28,$28,$28
L1D94: .byte $00,$80,$01,$03,$02,$80,$03,$80
L1D9C: .byte $00,$28,$28,$38,$10,$10
L1DA2: .byte $08,$06,$06,$03,$05,$04,$05,$04,$05,$04,$05,$04
L1DAE: .byte $00,$00,$00,$01,$01,$03,$03
L1DB5: .byte $00,$00,$00,$00,$01,$01,$03
L1DBC: .byte $E7,$E2,$DD,$D8,$D3,$CE,$C9,$C4,$06,$03,$01,$00,$00,$06,$01,$04
       .byte $02,$00,$0A,$00,$02,$10,$04,$10,$02,$04,$40,$10,$00,$10,$82,$44
       .byte $00,$00,$40,$90,$02,$08,$40,$80,$08,$00,$24,$80,$00,$00,$00,$84
L1DEC: .byte $8A,$6A,$4A,$7A,$9A
L1DF1: .byte $80,$C0,$A0,$E0,$B0,$F0
L1DF7: .byte $03,$04,$05,$05,$06,$06,$00,$00,$00
L1E00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$88,$20,$08,$00,$02,$40,$10
       .byte $00,$40,$08,$40,$04,$00,$48,$02,$00,$44,$00,$40,$04,$20,$09,$00
       .byte $00,$03,$07,$0E,$19,$F0,$02,$00,$00,$06,$03,$CE,$71,$00,$04,$00
       .byte $00,$4C,$46,$23,$1F,$02,$01,$08,$00,$10,$21,$22,$24,$14,$0F,$0C
       .byte $00,$40,$82,$84,$64,$1F,$06,$00,$00,$44,$24,$14,$0F,$03,$00,$00
       .byte $00,$36,$1D,$02,$04,$0A,$04,$00,$00,$09,$1E,$32,$24,$08,$0A,$00
       .byte $00,$02,$9F,$B2,$E4,$48,$10,$24,$00,$9F,$8F,$87,$88,$90,$64,$00
       .byte $00,$4F,$98,$8C,$87,$88,$70,$04,$00,$27,$4C,$98,$8C,$87,$48,$32
       .byte $00,$04,$44,$24,$23,$23,$14,$08,$00,$20,$24,$28,$24,$23,$27,$18
       .byte $00,$10,$20,$48,$44,$42,$47,$3F,$00,$00,$00,$00,$01,$01,$00,$00
       .byte $00,$00,$00,$03,$05,$03,$00,$00,$00,$00,$06,$09,$09,$09,$06,$00
       .byte $00,$20,$04,$11,$80,$14,$42,$90,$00,$40,$04,$12,$A0,$14,$40,$84
       .byte $00,$00,$20,$14,$68,$08,$14,$20,$00,$00,$00,$10,$28,$6C,$C6,$82
       .byte $00,$00,$82,$82,$D6,$6C,$00,$00,$00,$00,$44,$82,$82,$C6,$7C,$10
L1EE0: .byte $80,$20,$10,$50,$41,$84,$88,$42,$40,$08,$04,$01,$81,$22,$11,$44
L1EF0: .byte $40,$80,$C0,$F0,$F0,$C0,$80,$40
L1EF8: .byte $FF,$C0,$A0,$80,$80,$A0,$C0,$FF,$3C,$66,$66,$66,$66,$66,$66,$3C
       .byte $00,$00,$3C,$18,$18,$18,$18,$18,$38,$18,$00,$00,$7E,$60,$60,$3C
       .byte $06,$06,$46,$3C,$00,$00,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$00,$00
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$00,$7C,$46,$06,$06,$7C,$60
       .byte $60,$7E,$00,$00,$3C,$66,$66,$66,$7C,$60,$62,$3C,$00,$00,$18,$18
       .byte $18,$18,$0C,$06,$42,$7E,$00,$00,$3C,$66,$66,$3C,$3C,$66,$66,$3C
       .byte $00,$00,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$AD,$A9,$E9,$A9,$ED,$41,$0F,$00,$00,$00
       .byte $50,$58,$5C,$56,$53,$11,$F0,$00,$00,$00,$BA,$8A,$BA,$A2,$3A,$80
       .byte $FE,$00,$00,$00,$E9,$AB,$AF,$AD,$E9,$00,$00,$00,$00,$00
L1F96: .byte $06,$07,$08,$07,$06,$07,$06,$05,$04,$03,$04,$06
L1FA2: .byte $01,$00,$02,$00,$03,$00,$04,$00,$05,$00,$06,$00,$C8,$C8,$88,$48
       .byte $38,$28,$76,$78,$0C,$0C,$8A,$7A,$6A,$5A,$4A,$3A,$48,$48,$48,$78
       .byte $88,$98,$A8,$B8,$C6,$C6,$C6,$C6,$EE,$EE,$6C,$6C,$46,$46,$46,$46
       .byte $3E,$3E,$9C,$9C,$86,$86,$48,$48,$E4,$E4,$28,$28,$38,$38,$48,$48
       .byte $68,$68,$78,$78
L1FE6: .byte $10,$15,$20,$25,$30,$35
L1FEC: .byte $15,$00,$00,$1A,$00,$00,$00,$1C,$17,$1A,$15,$17,$13,$15,$11,$00
       .byte $4A,$12,$4A,$12
