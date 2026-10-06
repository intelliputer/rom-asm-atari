; Disassembly of roms/Fire Spinner.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Fire Spinner.bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $1000

START:
       SEI            
       CLD            
       LDX    #$00    
L1004: LDA    #$00    
L1006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    L1006   
       JSR    L1D64   
       LDA    $80     
       BNE    L101A   
L1013: LDX    #$01    
       STX    $80     
       JMP    L1818   
L101A: LDX    #$0C    
L101C: LDA    L103A,X 
       EOR    $96     
       AND    $97     
       STA    $81,X   
       DEX            
       BPL    L101C   
       LDX    #$05    
       LDY    $A9     
       LDA    $A8     
       BEQ    L104D   
L1030: LDA    L1047,X 
       STA    $8E,X   
       DEX            
       BPL    L1030   
       BMI    L1071   
L103A: BIT    $F403   
       CPX    #$70    
       BEQ    L1013   
       .byte $E2 ;.NOP
       SBC    $B3     
       BCS    L1046   
L1046: .byte $44 ;.NOP
L1047: .byte $43 ;.SRE
       .byte $47 ;.SRE
       LSR            
       EOR    $0F4F   
L104D: LDA    $95     
       AND    #$1F    
       BNE    L1060   
       LDA    $94     
       BNE    L1060   
       INY            
       CPY    #$04    
       BCC    L105E   
       LDY    #$00    
L105E: STY    $A9     
L1060: LDA    L1085,Y 
       TAY            
L1064: LDA    L1089,Y 
       EOR    $96     
       AND    $97     
       STA    $8E,X   
       INY            
       DEX            
       BPL    L1064   
L1071: LDA    $AA     
       BEQ    L10A1   
       LDX    $AB     
       LDA    L107D,X 
       JMP    L10A6   
L107D: .byte $0F,$1F,$1F,$2F,$0F,$3F,$3F,$2F
L1085: .byte $00,$06,$0C,$12
L1089: .byte $4C,$3C,$3B,$38,$36,$32,$5F,$5D,$5A,$58,$54,$50,$6F,$7D,$78,$75
       .byte $72,$70,$0F,$9C,$99,$97,$94,$92
L10A1: LDX    $AC     
       LDA    L10C5,X 
L10A6: STA    $AD     
       LDX    $AF     
       LDA    L10C9,X 
       STA    $B1     
       LDA    L10CF,X 
       STA    $B3     
       LDA    $94     
       LSR            
       BCC    L10F5   
       LDA    $B5     
       BEQ    L10DC   
       BPL    L10D1   
       JSR    L1D1D   
       JMP    L110B   
L10C5: .byte $4F,$5F,$6F,$7F
L10C9: .byte $8F,$9F,$AF,$BF,$CF,$DF
L10CF: .byte $EF,$FF
L10D1: LDX    $B6     
       LDA    L10D9,X 
       JMP    L110B   
L10D9: .byte $B0,$B8,$90
L10DC: LDA    $AA     
       BEQ    L10F0   
       LDX    $B7     
       LDA    L10E8,X 
       JMP    L110B   
L10E8: .byte $90,$98,$A0,$A8,$B0,$B8,$C0,$C8
L10F0: LDA    #$50    
       JMP    L110B   
L10F5: LDA    $BA     
       BEQ    L1109   
       BPL    L1101   
       JSR    L1D1D   
       JMP    L110B   
L1101: LDX    $BB     
       LDA    L10D9,X 
       JMP    L110B   
L1109: LDA    #$50    
L110B: STA    $BF     
       LDA    $94     
       LSR            
       LDA    $BD     
       BCC    L1116   
       LDA    $B8     
L1116: JSR    L1CFE   
       STA    $C2     
       TXA            
       ORA    $C2     
       STA    $C2     
       LDA    $C4     
       JSR    L1CFE   
       STA    $C5     
       TXA            
       ORA    $C5     
       STA    $C5     
       LDA    $C6     
       JSR    L1CFE   
       STA    $C7     
       TXA            
       ORA    $C7     
       STA    $C7     
       LDA    $94     
       LSR            
       BCC    L114A   
       LDA    $B5     
       BEQ    L1145   
       BMI    L1151   
       BPL    L114C   
L1145: LDA    $DD     
       JMP    L114C   
L114A: LDA    $BC     
L114C: STA    $C1     
       JMP    L1155   
L1151: LDA    #$00    
       BEQ    L114C   
L1155: LDA    INTIM   
       BNE    L1155   
       STA    WSYNC   
       STA    VBLANK  
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    COLUPF  
       STA    CTRLPF  
       STA    WSYNC   
       LDA    $81     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $8C     
       STA    COLUBK  
       LDA    #$00    
       STA    $CA     
       STA    $CB     
       LDA    #$13    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP1    
       NOP            
       STA.w  $0010   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
L1196: STY    $98     
       LDA    ($A4),Y 
       STA    WSYNC   
       STA    $99     
       LDA    ($9A),Y 
       STA    GRP0    
       LDA    ($9C),Y 
       STA    GRP1    
       LDA    ($9E),Y 
       STA    GRP0    
       LDA    ($A2),Y 
       TAX            
       LDA    ($A0),Y 
       LDY    $99     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $98     
       DEY            
       BPL    L1196   
       INY            
       STA    WSYNC   
       STY    HMCLR   
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDA    $C8     
       LSR            
       BCS    L11D9   
       JMP    L140F   
L11D9: LDA    $82     
       STA    COLUPF  
       LDX    $C9     
       LDY    L1C42,X 
       LDX    #$05    
L11E4: STA    WSYNC   
       LDA    $8E,X   
       STA    COLUBK  
       LDA    L1C47,Y 
       STA    PF0     
       INY            
       LDA    L1C47,Y 
       STA    PF1     
       INY            
       LDA    L1C47,Y 
       STA    PF2     
       INY            
       STA    WSYNC   
       DEX            
       BPL    L11E4   
       INX            
       LDA    $82     
       STA    WSYNC   
       STA    COLUBK  
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STA    WSYNC   
       LDA    $C2     
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDA    $C7     
       STA    HMP1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
L1220: DEY            
       BPL    L1220   
       STA.w  $0011   
       STA    WSYNC   
L1228: DEX            
       BPL    L1228   
       STA.w  $0010   
       STA    WSYNC   
       LDA    $83     
       STA    COLUPF  
       LDA    #$44    
       STA    PF0     
       STA    PF2     
       LSR            
       STA    PF1     
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    $84     
       STA    COLUPF  
       LDA    #$EE    
       STA    PF0     
       STA    PF2     
       LSR            
       STA    PF1     
       STA    WSYNC   
       STA    WSYNC   
       SEC            
       LDA    #$BB    
       STA    PF0     
       STA    PF2     
       ROR            
       STA    PF1     
       STA    WSYNC   
       LDA    $B0     
       STA    REFP1   
       LDA    $C1     
       STA    REFP0   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$38    
       EOR    $96     
       AND    $97     
       STA    COLUP0  
       LDA    #$07    
       STA    $9A     
       STA    WSYNC   
       LDY    $BE     
       LDA    $94     
       LSR            
       BCC    L1283   
       LDY    $B9     
L1283: JSR    L1D36   
       LDA    $84     
       STA    COLUBK  
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       DEC    $9A     
       BPL    L1283   
       LDA    $B1     
       STA    $98     
       LDA    $B3     
       STA    $99     
       LDA    #$0F    
       STA    $9A     
L12A2: JSR    L1D36   
       LDA    ($B1,X) 
       STA    GRP1    
       LDA    ($B3,X) 
       STA    COLUP1  
       DEC    $B1     
       DEC    $B3     
       DEC    $9A     
       BPL    L12A2   
       LDA    #$07    
       STA    $9A     
L12B9: JSR    L1D36   
       LDA    $85     
       STA    COLUBK  
       STX    GRP1    
       DEC    $9A     
       BPL    L12B9   
       LDA    $94     
       LSR            
       BCC    L12CF   
       LDA    CXPPMM  
       STA    $CB     
L12CF: STA    CXCLR   
       LDX    $83     
       JSR    L1D36   
       STX    COLUPF  
       LDA    #$AA    
       STA    PF1     
       LSR            
       STA    PF0     
       STA    PF2     
       LDA    $98     
       STA    $B1     
       LDA    $99     
       STA    $B3     
       LDX    #$02    
L12EB: JSR    L1D36   
       LDA    $86     
       STA    COLUPF  
       DEX            
       BPL    L12EB   
       LDX    #$02    
L12F7: JSR    L1D36   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEX            
       BPL    L12F7   
       LDX    #$01    
       STX    CTRLPF  
L1309: JSR    L1D36   
       LDA    $82     
       STA    COLUPF  
       LDA    $86     
       STA    COLUBK  
       DEX            
       BPL    L1309   
       LDX    #$03    
L1319: JSR    L1D36   
       LDA    $8A     
       STA    COLUPF  
       LDA    #$00    
       STA    PF0     
       LDA    #$3F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       DEX            
       BPL    L1319   
       LDX    #$01    
L1331: JSR    L1D36   
       LDA    $8B     
       STA    COLUPF  
       LDA    #$7F    
       STA    PF1     
       DEX            
       BPL    L1331   
       LDX    #$01    
L1341: JSR    L1D36   
       LDA    #$FF    
       STA    PF1     
       DEX            
       BPL    L1341   
       LDX    #$01    
L134D: JSR    L1D36   
       LDA    #$80    
       STA    PF0     
       DEX            
       BPL    L134D   
       LDX    #$01    
L1359: JSR    L1D36   
       LDA    #$C0    
       STA    PF0     
       DEX            
       BPL    L1359   
       LDX    #$01    
L1365: JSR    L1D36   
       LDA    #$E0    
       STA    PF0     
       LDA    #$7F    
       STA    PF2     
       DEX            
       BPL    L1365   
       LDX    #$01    
L1375: JSR    L1D36   
       LDA    $87     
       STA    COLUPF  
       LDA    #$F0    
       STA    PF0     
       LDA    #$3F    
       STA    PF2     
       DEX            
       BPL    L1375   
       LDX    #$0C    
L1389: JSR    L1D36   
       LDA    $88     
       STA    COLUPF  
       LDA    #$1F    
       STA    PF2     
       DEX            
       BPL    L1389   
       LDX    #$01    
L1399: JSR    L1D36   
       LDA    $89     
       STA    COLUPF  
       LDA    #$AA    
       STA    PF0     
       LSR            
       STA    PF1     
       LDA    #$0A    
       STA    PF2     
       DEX            
       BPL    L1399   
       LDX    #$01    
L13B0: JSR    L1D36   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       LDA    #$1F    
       STA    PF2     
       DEX            
       BPL    L13B0   
       LDX    #$03    
L13C2: JSR    L1D36   
       LDA    #$AA    
       STA    PF1     
       LSR            
       STA    PF0     
       LDA    #$15    
       STA    PF2     
       DEX            
       BPL    L13C2   
       LDX    #$01    
L13D5: JSR    L1D36   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       LDA    #$1F    
       STA    PF2     
       DEX            
       BPL    L13D5   
       LDX    #$01    
L13E7: JSR    L1D36   
       LDA    #$AA    
       STA    PF0     
       LSR            
       STA    PF1     
       LDA    #$0A    
       STA    PF2     
       DEX            
       BPL    L13E7   
       LDX    #$10    
L13FA: JSR    L1D36   
       LDA    $8A     
       STA    COLUPF  
       LDA    #$00    
L1403: STA    PF0     
       STA    PF1     
       STA    PF2     
       DEX            
       BPL    L13FA   
       JMP    L159F   
L140F: LDA    $8D     
       STA    COLUPF  
       LDA    #$01    
       STA    CTRLPF  
       STA    WSYNC   
       LDA    #$10    
       STA    PF0     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$30    
       STA    PF0     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$70    
       STA    PF0     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$F0    
       STA    PF0     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$80    
       STA    PF1     
       LDA    $C2     
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDA    $C7     
       STA    HMP1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
L144D: DEY            
       BPL    L144D   
       STA.w  $0011   
       STA    WSYNC   
L1455: DEX            
       BPL    L1455   
       STA.w  $0010   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B0     
       STA    REFP1   
       LDA    $C1     
       STA    REFP0   
       LDX    #$05    
L1469: STA    WSYNC   
       DEX            
       BPL    L1469   
       STA    WSYNC   
       LDA    #$A8    
       STA    PF1     
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$80    
       STA    PF1     
       STA    WSYNC   
       LDY    $BE     
       LDA    $94     
       LSR            
       BCC    L148D   
       LDY    $B9     
L148D: LDX    #$03    
L148F: LDA    #$01    
       STA    $9A     
L1493: JSR    L1D36   
       LDA    L1D9D,X 
       STA    PF1     
       DEC    $9A     
       BPL    L1493   
       DEX            
       BPL    L148F   
       INX            
       LDA    $B1     
       STA    $98     
       LDA    $B3     
       STA    $99     
       LDA    #$03    
       STA    $9A     
L14AF: LDA    #$01    
       STA    $9C     
L14B3: LDA    #$00    
       DEY            
       CPY    #$08    
       BCS    L14BC   
       LDA    ($BF),Y 
L14BC: STA    WSYNC   
       STA    GRP0    
       LDA    #$FF    
       STA    PF1     
       LDA    ($B1,X) 
       STA    GRP1    
       LDA    ($B3,X) 
       STA    COLUP1  
       DEC    $B1     
       DEC    $B3     
       DEC    $9C     
       BPL    L14B3   
       LDA    #$01    
       STA    $9C     
L14D8: LDA    #$00    
       DEY            
       CPY    #$08    
       BCS    L14E1   
       LDA    ($BF),Y 
L14E1: STA    WSYNC   
       STA    GRP0    
       LDA    #$87    
       STA    PF1     
       LDA    ($B1,X) 
       STA    GRP1    
       LDA    ($B3,X) 
       STA    COLUP1  
       DEC    $B1     
       DEC    $B3     
       DEC    $9C     
       BPL    L14D8   
       DEC    $9A     
       BPL    L14AF   
       LDA    $98     
       STA    $B1     
       LDA    $99     
       STA    $B3     
       LDA    #$01    
       STA    $9A     
L1509: JSR    L1D36   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       STX    GRP1    
       DEC    $9A     
       BPL    L1509   
       LDA    $94     
       LSR            
       BCC    L1521   
       LDA    CXPPMM  
       STA    $CB     
L1521: STA    CXCLR   
       LDA    #$01    
       STA    $9A     
L1527: JSR    L1D36   
       LDA    #$87    
       STA    PF1     
       DEC    $9A     
       BPL    L1527   
       LDX    #$06    
L1534: LDA    #$01    
       STA    $9A     
L1538: JSR    L1D36   
       LDA    L1DA1,X 
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       DEC    $9A     
       BPL    L1538   
       DEX            
       BPL    L1534   
       LDX    #$0F    
L154D: JSR    L1D36   
       LDA    #$80    
       STA    PF1     
       DEX            
       BPL    L154D   
       LDX    #$03    
L1559: JSR    L1D36   
       LDA    #$00    
       STA    PF1     
       DEX            
       BPL    L1559   
       LDX    #$03    
L1565: JSR    L1D36   
       LDA    #$70    
       STA    PF0     
       DEX            
       BPL    L1565   
       LDX    #$03    
L1571: JSR    L1D36   
       LDA    #$30    
       STA    PF0     
       DEX            
       BPL    L1571   
       LDX    #$03    
L157D: JSR    L1D36   
       LDA    #$10    
       STA    PF0     
       DEX            
       BPL    L157D   
       LDX    #$01    
L1589: LDA    #$0B    
       STA    $9A     
L158D: JSR    L1D36   
       LDA    #$00    
       STA    PF0     
       LDA    $8C     
       STA    COLUBK  
       DEC    $9A     
       BPL    L158D   
       DEX            
       BPL    L1589   
L159F: LDA    $C5     
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L15A8: DEX            
       BPL    L15A8   
       STA.w  $0011   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $DD     
       STA    REFP1   
       DEY            
       DEY            
       LDX    #$07    
L15BA: JSR    L1D36   
       DEX            
       BPL    L15BA   
       INX            
       LDA    $AD     
       STA    $98     
       LDA    $CD     
       STA    $99     
       LDA    #$0F    
       STA    $9A     
L15CD: LDA    #$00    
       DEY            
       CPY    #$08    
       BCS    L15D6   
       LDA    ($BF),Y 
L15D6: STA    WSYNC   
       STA    GRP0    
       LDA    ($AD,X) 
       STA    GRP1    
       LDA    ($CD,X) 
       STA    COLUP1  
       DEC    $AD     
       DEC    $CD     
       DEC    $9A     
       BPL    L15CD   
       LDA    #$06    
       STA    $9A     
L15EE: JSR    L1D36   
       STX    GRP1    
       DEC    $9A     
       BPL    L15EE   
       STA    WSYNC   
       STX    COLUBK  
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STX    HMCLR   
       LDA    $98     
       STA    $AD     
       LDA    $99     
       STA    $CD     
       STX    REFP0   
       STX    REFP1   
       LDA    $94     
       LSR            
       BCC    L1618   
       LDA    $B5     
       BPL    L161C   
L1618: LDA    CXPPMM  
       STA    $CA     
L161C: LDA    $D0     
       AND    #$F0    
       LSR            
       ADC    #$00    
       STA    $9C     
       LDA    $D0     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $9E     
       LDA    #$58    
       STA    $A0     
       LDA    #$50    
       STA    $9A     
       LDA    $CF     
       AND    #$F0    
       LSR            
       ADC    #$00    
       STA    $A2     
       LDA    $CF     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $A4     
       STA    WSYNC   
       LDA    #$00    
       STA    CTRLPF  
       STA    CXCLR   
       LDA    #$2C    
       EOR    $96     
       AND    $97     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$13    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP1    
       NOP            
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
L1672: STY    $98     
       LDA    ($A4),Y 
       STA    WSYNC   
       STA    $99     
       LDA    ($9A),Y 
       STA    GRP0    
       LDA    ($9C),Y 
       STA    GRP1    
       LDA    ($9E),Y 
       STA    GRP0    
       LDA    ($A2),Y 
       TAX            
       LDA    ($A0),Y 
       LDY    $99     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $98     
       DEY            
       BPL    L1672   
       INY            
       STA    WSYNC   
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    HMCLR   
       LDY    $D2     
       LDA    L1C7D,Y 
       STA    NUSIZ1  
       LSR            
       LSR            
       LSR            
       LSR            
       STA    NUSIZ0  
       LDA    #$38    
       EOR    $96     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$07    
L16C0: LDA    L1FB8,X 
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       LDA    #$00    
       CPY    #$02    
       BCS    L16D1   
       STA    GRP1    
L16D1: CPY    #$00    
       BNE    L16D7   
       STA    GRP0    
L16D7: DEX            
       BPL    L16C0   
       INX            
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       LDA    #$13    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP1    
       LDA    #$0F    
       EOR    $96     
       STA    COLUP0  
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    COLUP1  
       LDA    #$07    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       STA    $9A     
       LDA    $D3     
       BEQ    L174B   
       CMP    #$40    
       BCC    L1710   
       LDA    #$07    
       BNE    L1715   
L1710: LSR            
       LSR            
       LSR            
       AND    #$07    
L1715: TAY            
L1716: LDX    L1F80,Y 
       STY    $9C     
       STA    WSYNC   
       LDA    L1F88,Y 
       STA    $9E     
       LDA    L1F60,Y 
       STA    GRP0    
       LDA    L1F68,Y 
       STA    GRP1    
       LDA    L1F70,Y 
       STA    GRP0    
       LDA    L1F78,Y 
       LDY    $9E     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $9C     
       DEY            
       BPL    L1745   
       LDY    #$07    
L1745: DEC    $9A     
       BPL    L1716   
       BMI    L1752   
L174B: LDX    #$07    
L174D: STA    WSYNC   
       DEX            
       BPL    L174D   
L1752: STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    HMCLR   
       LDA    $D3     
       BEQ    L176C   
       DEC    $D3     
       BNE    L176C   
       DEC    $D3     
L176C: LDA    #$26    
       STA    WSYNC   
       STA    TIM64T  
       STA    VBLANK  
       LDY    #$02    
L1777: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $00D4,Y 
       AND    #$F0    
       LSR            
       ADC    #$00    
       STA    $9A,X   
       LDA.wy $00D4,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $9C,X   
       DEY            
       BPL    L1777   
       LDX    #$00    
L1794: LDA    $9A,X   
       EOR    #$00    
       BNE    L17A4   
       LDA    #$50    
       STA    $9A,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    L1794   
L17A4: LDA    INTIM   
       BNE    L17A4   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $94     
       BNE    L17C2   
       INC    $95     
       BNE    L17C2   
       SEC            
       ROR    $95     
L17C2: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    L17CD   
       LDY    #$0F    
L17CD: TYA            
       LDY    #$00    
       BIT    $95     
       BPL    L17D8   
       AND    #$F7    
       LDY    $95     
L17D8: STY    $96     
       ASL    $96     
       STA    $97     
       LDA    #$26    
       STA    WSYNC   
       STA    TIM64T  
       LDA    SWCHA   
       TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $A6     
       INY            
       BEQ    L17F8   
       LDA    $95     
       AND    #$3F    
       STA    $95     
L17F8: LDA    SWCHB   
       LSR            
       BCS    L1809   
       LDX    #$A8    
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JMP    L1004   
L1809: LDY    #$00    
       LSR            
       BCS    L1834   
       LDA    $E0     
       BEQ    L1816   
       DEC    $E0     
       BPL    L1836   
L1816: INC    $A7     
L1818: LDA    $A7     
       AND    #$01    
       STA    $A7     
       STA    $95     
       LDY    #$00    
       STY    $D4     
       STY    $D5     
       STY    AUDV0   
       STY    AUDV1   
       TAY            
       INY            
       STY    $D6     
       LDA    #$FF    
       STA    $D3     
       LDY    #$1E    
L1834: STY    $E0     
L1836: LDA    $D3     
       BEQ    L183D   
       JMP    L101A   
L183D: LDA    $DE     
       LSR            
       BCS    L184B   
       LSR            
       BCS    L187E   
       LSR            
       BCS    L18B5   
       JMP    L18EF   
L184B: LDA    $DE     
       EOR    #$01    
       STA    $DE     
       LDA    #$00    
       STA    $DD     
       STA    $B0     
       STA    $AA     
       STA    $B5     
       STA    $BA     
       STA    $AC     
       STA    $AB     
       STA    $B7     
       STA    $DA     
       STA    $DF     
       STA    $DC     
       LDA    #$80    
       STA    $C4     
       LDA    #$32    
       STA    $C6     
       LDA    #$3B    
       STA    $D1     
       LDA    #$FF    
       STA    $B9     
       STA    $BE     
       JMP    L101A   
L187E: JSR    L1CD8   
       LDX    $C9     
       LDA    L18B0,X 
       JSR    L1D44   
       LDA    $CF     
       ORA    $D0     
       BEQ    L18A1   
       DEC    $DB     
       LDA    $DB     
       AND    #$0E    
       STA    AUDF0   
       LDA    #$04    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       BNE    L18AD   
L18A1: LDA    $DE     
       EOR    #$02    
       STA    $DE     
       LDA    #$00    
       STA    $DB     
       STA    AUDV0   
L18AD: JMP    L101A   
L18B0: .byte $10,$20,$30,$40,$50
L18B5: LDA    $CF     
       ADC    #$05    
       STA    $CF     
       CMP    #$60    
       BCC    L18DC   
       LDA    #$00    
       STA    $CF     
       INC    $D0     
       LDX    $C9     
       LDA    $D0     
       CMP    L18EA,X 
       BNE    L18DC   
       LDA    $DE     
       EOR    #$04    
       STA    $DE     
       LDA    #$00    
       STA    AUDV0   
       STA    $DB     
       BEQ    L18AD   
L18DC: DEC    $DB     
       LDA    $DB     
       STA    AUDV0   
       LDA    #$04    
       STA    AUDC0   
       STA    AUDF0   
       BNE    L18AD   
L18EA: ORA    NUSIZ0  
       .byte $03 ;.SLO
       .byte $02 ;.JAM
       .byte $02 ;.JAM
L18EF: LDA    $C3     
       BEQ    L190C   
       CMP    #$1E    
       BNE    L1908   
       LDX    #$00    
       STX    $C3     
       DEC    $D2     
       BNE    L1902   
       DEX            
       STX    $D3     
L1902: LDA    #$05    
       STA    $DE     
       BNE    L1934   
L1908: INC    $C3     
       BNE    L1934   
L190C: LDA    $CC     
       BEQ    L1969   
       CMP    #$FF    
       BNE    L1937   
       LDA    $E1     
       STA    $96     
       LDA    #$07    
       STA    $DE     
       INC    $C8     
       LDA    $C8     
       CMP    #$04    
       BCC    L1926   
       LDA    #$04    
L1926: STA    $C9     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $E2     
       STA    $CC     
       STA    $A8     
L1934: JMP    L101A   
L1937: INC    $CC     
       LDA    $CC     
       AND    #$1F    
       BNE    L195B   
       LDX    $E2     
       LDA    #$08    
       STA    AUDC0   
       STA    AUDC1   
       LDA    #$15    
       STA    AUDF0   
       LDA    #$14    
       STA    AUDF1   
       LDA    L1DA8,X 
       STA    AUDV0   
       LDA    L1DAF,X 
       STA    AUDV1   
       INC    $E2     
L195B: LDA    $CC     
       AND    #$03    
       BNE    L1934   
       JSR    L1CEC   
       STA    $96     
       JMP    L1934   
L1969: LDX    #$80    
       LDA    $CA     
       BPL    L197E   
       LDA    $94     
       LSR            
       BCC    L1978   
       STX    $B5     
       BCS    L197A   
L1978: STX    $BA     
L197A: INC    $C3     
       BNE    L1934   
L197E: LDA    $CB     
       BPL    L198E   
       LDA    $96     
       STA    $E1     
       STX    $B5     
       INC    $CC     
       INC    $A8     
       BNE    L1934   
L198E: LDA    $B5     
       BNE    L19B0   
       LDA    $AA     
       BNE    L19B3   
       LDA    $A6     
       AND    #$01    
       BNE    L19AC   
       INC    $DC     
       LDA    $DC     
       CMP    #$1E    
       BCS    L19A7   
       JMP    L1B55   
L19A7: STA    $AA     
       JMP    L1A35   
L19AC: LDA    #$00    
       STA    $DC     
L19B0: JMP    L1A8D   
L19B3: LDA    $A6     
       LDX    $DA     
       AND    L19DF,X 
       BNE    L19CF   
       INX            
       CPX    #$04    
       BCC    L19C3   
       LDX    #$00    
L19C3: STX    $DA     
       LDA    $DC     
       ADC    #$1E    
       BCC    L19CD   
       LDA    #$FF    
L19CD: STA    $DC     
L19CF: DEC    $DC     
       BNE    L19E3   
       LDA    #$00    
       STA    $AA     
       STA    $DA     
       STA    $AB     
       STA    $AC     
       BEQ    L1A35   
L19DF: ORA    ($04,X) 
       .byte $02 ;.JAM
       PHP            
L19E3: LDA    INPT4   
       BMI    L1A35   
       LDX    $B7     
       LDA    $DD     
       BEQ    L1A04   
       LDA    L19F4,X 
       BNE    L1A1F   
       BEQ    L1A09   
L19F4: BRK            
       .byte $1F ;.SLO
       AND    ($21,X) 
       AND    ($1F,X) 
       BRK            
       BRK            
L19FC: AND    ($1F,X) 
       BRK            
       BRK            
       BRK            
       .byte $1F ;.SLO
       AND    ($21,X) 
L1A04: LDA    L19FC,X 
       BNE    L1A1F   
L1A09: LDA    $DC     
       CMP    #$1E    
       BCC    L1A13   
       LDX    #$01    
       BNE    L1A20   
L1A13: CMP    #$0A    
       BCC    L1A1B   
       LDX    #$03    
       BNE    L1A20   
L1A1B: LDX    #$07    
       BNE    L1A20   
L1A1F: TAX            
L1A20: STX    $D8     
       LDX    #$00    
       STX    $AA     
       STX    $DA     
       STX    $AB     
       STX    $AC     
       INX            
       LDA    $DD     
       BEQ    L1A33   
       LDX    #$09    
L1A33: STX    $B5     
L1A35: LDA    $AA     
       BEQ    L1A75   
       LDA    $DC     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $94     
       AND    L1A78,X 
       BNE    L1A57   
       LDA    $DD     
       BNE    L1A53   
       INC    $B7     
       INC    $AB     
       BNE    L1A57   
L1A53: DEC    $B7     
       DEC    $AB     
L1A57: LDA    $B7     
       AND    #$07    
       STA    $B7     
       LDA    $AB     
       AND    #$07    
       STA    $AB     
       LDA    #$73    
       LDX    $B7     
       CLC            
       ADC    L1A7D,X 
       STA    $B9     
       LDA    $C4     
       CLC            
       ADC    L1A85,X 
       STA    $B8     
L1A75: JMP    L1B55   
L1A78: .byte $0F,$07,$03,$01,$01
L1A7D: .byte $08,$08,$08,$00,$F8,$F8,$F8,$00
L1A85: .byte $F8,$00,$08,$08,$08,$00,$F8,$F8
L1A8D: LDY    $C4     
       LDA    $A6     
       AND    #$08    
       BNE    L1A9A   
       INY            
       LDA    #$08    
       BNE    L1AA3   
L1A9A: LDA    $A6     
       AND    #$04    
       BNE    L1AB8   
       DEY            
       LDA    #$00    
L1AA3: STA    $DD     
       LDX    $AC     
       BEQ    L1AAF   
       LDA    $94     
       AND    #$03    
       BNE    L1ABA   
L1AAF: INX            
       CPX    #$04    
       BCC    L1ABA   
       LDX    #$01    
       BNE    L1ABA   
L1AB8: LDX    #$00    
L1ABA: STX    $AC     
       CPY    #$90    
       BCC    L1AC4   
       LDY    #$90    
       BNE    L1ACA   
L1AC4: CPY    #$08    
       BCS    L1ACA   
       LDY    #$08    
L1ACA: STY    $C4     
       LDA    $B5     
       BEQ    L1ADF   
       BPL    L1AF2   
       LDX    $C9     
       CMP    L1AE2,X 
       BCS    L1AE7   
       INC    $B5     
       LDY    #$00    
       STY    $DC     
L1ADF: JMP    L1B55   
L1AE2: .byte $A0,$B0,$C0,$D0,$E0
L1AE7: LDX    #$FF    
       STX    $B9     
       INX            
       STX    $B5     
       STX    $D7     
       BEQ    L1ADF   
L1AF2: LDX    $C9     
       LDA    $94     
       AND    #$01    
       NOP            
       BNE    L1ADF   
       LDX    $B7     
       LDA    $B5     
       AND    #$08    
       BNE    L1B14   
       LDA    $B8     
       CLC            
       ADC    L1B0C,X 
       JMP    L1B1A   
L1B0C: .byte $03,$05,$03,$00,$FD,$FB,$FD,$00
L1B14: LDA    $B8     
       SEC            
       SBC    L1B0C,X 
L1B1A: JSR    L1CCA   
       STA    $B8     
       LDX    $D8     
       INC    $D8     
       LDA    $B9     
       ADC    L1C86,X 
       STA    $B9     
       CMP    #$7A    
       BCC    L1B34   
       LDA    #$80    
       STA    $B5     
       BNE    L1B55   
L1B34: LDA    L1C86,X 
       TAX            
       JSR    L1D29   
       STA    $B6     
       TXA            
       BNE    L1B42   
       INC    $D7     
L1B42: LDX    $D7     
       BEQ    L1B55   
       CMP    #$17    
       BCC    L1B55   
       LDX    #$FF    
       STX    $B9     
       INX            
       STX    $B5     
       STX    $DC     
       STX    $D7     
L1B55: LDA    $BA     
       BMI    L1BBD   
       CMP    #$04    
       BCS    L1B7E   
       LDA    $94     
       AND    #$0F    
       BNE    L1BCF   
       INC    $BA     
       LDA    #$01    
       STA    $AF     
       STA    $DF     
       LDA    #$17    
       STA    $D9     
       LDA    #$10    
       STA    $BE     
       LDA    $C6     
       STA    $BD     
       LDA    $B0     
       STA    $BC     
       JMP    L1BCF   
L1B7E: LDA    $94     
       LDX    $C9     
       AND    #$01    
       NOP            
       BNE    L1BCF   
       LDA    #$00    
       STA    $AF     
       STA    $DF     
       CLC            
       LDA    $BD     
       LDX    $BC     
       BEQ    L1B98   
       ADC    #$FE    
       BNE    L1B9A   
L1B98: ADC    #$02    
L1B9A: JSR    L1CCA   
       STA    $BD     
       INC    $D9     
       LDX    $D9     
       CLC            
       LDA    $BE     
       ADC    L1C86,X 
       STA    $BE     
       TAX            
       LDA    L1C86,X 
       JSR    L1D29   
       STA    $BB     
       TXA            
       CMP    #$7A    
       BCC    L1BCF   
       LDA    #$80    
       STA    $BA     
L1BBD: LDX    $C9     
       CMP    L1AE2,X 
       BCS    L1BC8   
       INC    $BA     
       BNE    L1BCF   
L1BC8: LDX    #$FF    
       STX    $BE     
       INX            
       STX    $BA     
L1BCF: LDA    $DF     
       BNE    L1C22   
       LDA    $94     
       AND    #$1F    
       BNE    L1BE0   
       JSR    L1CEC   
       AND    #$08    
       STA    $B0     
L1BE0: LDA    $94     
       LDX    $C9     
       AND    #$03    
       NOP            
       BNE    L1C22   
       LDX    $C6     
       LDA    $B0     
       BNE    L1C0A   
       LDA    $C8     
       LSR            
       BCS    L1BFA   
       CPX    #$64    
       BCC    L1C04   
       BCS    L1BFE   
L1BFA: CPX    #$90    
       BCC    L1C04   
L1BFE: LDA    #$08    
       STA    $B0     
       BNE    L1C22   
L1C04: INX            
L1C05: STX    $C6     
       JMP    L1C22   
L1C0A: LDA    $C8     
       LSR            
       BCS    L1C15   
       CPX    #$32    
       BCS    L1C1F   
       BCC    L1C19   
L1C15: CPX    #$10    
       BCS    L1C1F   
L1C19: LDA    #$00    
       STA    $B0     
       BEQ    L1C22   
L1C1F: DEX            
       BNE    L1C05   
L1C22: DEC    $D1     
       BPL    L1C3F   
       LDA    #$3B    
       STA    $D1     
       JSR    L1CD8   
       LDA    $CF     
       ORA    $D0     
       BNE    L1C3F   
       LDA    #$05    
       STA    $DE     
       DEC    $D2     
       BNE    L1C3F   
       LDA    #$FF    
       STA    $D3     
L1C3F: JMP    L101A   
L1C42: .byte $00,$12,$24,$00,$12
L1C47: .byte $00,$40,$02,$00,$E0,$07,$C0,$F9,$0F,$E0,$FF,$1F,$F0,$FF,$3F,$FF
       .byte $FF,$FF,$00,$01,$00,$00,$01,$40,$00,$F9,$44,$00,$F3,$46,$80,$E3
       .byte $73,$F0,$FF,$7F,$00,$80,$00,$00,$86,$10,$00,$8F,$10,$00,$9F,$11
       .byte $80,$DF,$FF,$C0,$FF,$FF
L1C7D: .byte $00,$00,$00,$10,$11,$31,$33,$04,$FC
L1C86: .byte $00,$F6,$F7,$F8,$F9,$F9,$FA,$FA,$FB,$FB,$FB,$FC,$FC,$FC,$FD,$FD
       .byte $FD,$FD,$FE,$FE,$FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00
       .byte $00,$01,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$03,$03,$03
       .byte $03,$04,$04,$04,$05,$05,$05,$06,$06,$08,$09,$0A,$07,$07,$08,$01
       .byte $01,$01,$01,$01
L1CCA: CMP    #$95    
       BCC    L1CD1   
       LDA    #$95    
L1CD0: RTS            

L1CD1: CMP    #$0A    
       BCS    L1CD0   
       LDA    #$0A    
       RTS            

L1CD8: SED            
       LDA    $CF     
       SEC            
       SBC    #$01    
       BCS    L1CE2   
       LDA    #$59    
L1CE2: STA    $CF     
       LDA    $D0     
       SBC    #$00    
       STA    $D0     
       CLD            
       RTS            

L1CEC: LDA    $80     
       ASL            
       EOR    $80     
       ASL            
       EOR    $80     
       ASL            
       ASL            
       EOR    $80     
       ASL            
       ROL    $80     
       LDA    $80     
       RTS            

L1CFE: CLC            
       ADC    #$2E    
       TAX            
       AND    #$0F    
       STA    $98     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       CLC            
       ADC    $98     
       CMP    #$0F    
       BCC    L1D16   
       SBC    #$0F    
       INX            
L1D16: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

L1D1D: LDA    $94     
       AND    #$04    
       BNE    L1D26   
       LDA    #$D0    
       RTS            

L1D26: LDA    #$D8    
       RTS            

L1D29: BEQ    L1D33   
       BPL    L1D30   
       LDA    #$02    
       RTS            

L1D30: LDA    #$00    
       RTS            

L1D33: LDA    #$01    
       RTS            

L1D36: LDA    #$00    
       DEY            
       CPY    #$08    
       BCS    L1D3F   
       LDA    ($BF),Y 
L1D3F: STA    WSYNC   
       STA    GRP0    
       RTS            

L1D44: SED            
       CLC            
       ADC    $D6     
       STA    $D6     
       BCC    L1D62   
       LDA    $D5     
       ADC    #$00    
       STA    $D5     
       LDA    $D4     
       ADC    #$00    
       BCC    L1D60   
       LDA    #$99    
       STA    $D6     
       STA    $D5     
       INC    $D3     
L1D60: STA    $D4     
L1D62: CLD            
       RTS            

L1D64: LDX    #$0B    
       LDY    #$1F    
L1D68: STY    $9A,X   
       DEX            
       DEX            
       BPL    L1D68   
       STY    $C0     
       STY    $CE     
       DEY            
       STY    $AE     
       STY    $B2     
       STY    $B4     
       STX    $B9     
       STX    $BE     
       LDA    #$80    
       STA    $C4     
       LDA    #$32    
       STA    $C6     
       LDA    #$05    
       STA    $DE     
       LDA    #$03    
       STA    $D2     
       LDX    #$00    
       LDA    $A7     
       LSR            
       BCC    L1D96   
       LDX    #$02    
L1D96: STX    $C8     
       LDA    #$EF    
       STA    $CD     
       RTS            

L1D9D: .byte $86,$FC,$80,$F8
L1DA1: .byte $F8,$80,$FC,$84,$FE,$86,$FF
L1DA8: .byte $1B,$1F,$1E,$1A,$06,$08,$08
L1DAF: .byte $1C,$1E,$1D,$18,$04,$06,$06,$98,$A0,$A5,$B9,$A0,$BA,$A4,$80,$B7
       .byte $87,$B1,$89,$B8,$B1,$AF,$B9,$85,$B7,$CC,$B8,$A0,$85,$A0,$C5,$A0
       .byte $8A,$FF,$D3,$85,$A0,$91,$A0,$AC,$B1,$B1,$85,$C4,$AC,$A0,$86,$B2
       .byte $C6,$B1,$AA,$A5,$A0,$A9,$A0,$A0,$A0,$A0,$85,$D0,$E5,$A0,$A0,$FF
       .byte $A0,$F0,$D0,$81,$BA,$A5,$C4,$A0,$98,$CE,$A5,$C1,$A5,$A0,$A4,$B9
       .byte $A0,$76,$33,$67,$CE,$EE,$7C,$3C,$3C,$FE,$FF,$7F,$1D,$3D,$1D,$3B
       .byte $1D,$77,$33,$66,$FC,$FC,$7C,$DC,$FE,$7F,$3F,$1F,$1D,$3C,$1C,$38
       .byte $1C,$38,$18,$38,$6C,$7E,$3C,$3C,$3C,$7F,$FF,$FE,$1C,$3C,$1C,$38
       .byte $18,$70,$32,$32,$6E,$7C,$3E,$DE,$FF,$7F,$3E,$3C,$1C,$3C,$1C,$38
       .byte $18,$77,$33,$63,$C6,$76,$3F,$1E,$3E,$7E,$FF,$FF,$9D,$BD,$9D,$BB
       .byte $DD,$74,$34,$3C,$78,$78,$78,$38,$BD,$FF,$FE,$7C,$38,$78,$38,$70
       .byte $38,$E3,$61,$63,$37,$1E,$07,$07,$3F,$7F,$CE,$9C,$1C,$3C,$1C,$38
       .byte $1C,$71,$37,$27,$6E,$7C,$3C,$FC,$BC,$3D,$7F,$7F,$38,$78,$38,$70
       .byte $38,$FF,$FF,$FF,$FF,$FF,$03,$07,$0E,$0C,$08,$38,$38,$E0,$E0,$80
       .byte $80,$FF,$FF,$FF,$FF,$FF,$03,$FF,$FE,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$A0,$92,$A0,$90,$C3,$A0,$A5,$A0,$A4,$B6,$B9,$BA,$A0,$D2,$A0
       .byte $E8,$A0,$8C,$B0,$A0,$CA,$A0,$81,$A0,$E6,$C6,$A0,$9F,$A0,$A5,$A0
       .byte $A6,$FF,$A0,$A9,$A0,$E7,$A0,$90,$B1,$A0,$CE,$A0,$83,$A0,$E8,$C3
       .byte $A0,$B1,$A0,$A2,$B7,$E6,$B0,$C6,$C5,$A0,$FB,$A0,$E7,$C6,$A0,$FF
       .byte $A0,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$2A,$2B,$2C,$2D,$2E
       .byte $2F,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$2A,$2B,$2C,$2D,$2E
       .byte $2F,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38
       .byte $18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46
       .byte $3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60
       .byte $7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42
       .byte $7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$00,$00,$18,$18
       .byte $00
L1F60: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1F68: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1F70: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1F78: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1F80: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1F88: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$0F,$1F,$0F,$1F,$34,$28
       .byte $28,$04,$1E,$7F,$FF,$5F,$0E,$10,$00,$A0,$70,$78,$BC,$7C,$7C,$38
       .byte $30,$18,$58,$30,$BA,$7C,$7C,$38,$14,$2A,$7E,$FC,$FC,$F8,$60,$00
L1FB8: .byte $1C,$70,$FB,$FC,$F8,$66,$30,$02,$18,$3B,$3E,$3D,$1E,$04,$02,$00
       .byte $1C,$3C,$78,$3C,$1A,$2C,$14,$02,$3C,$7E,$FE,$AE,$26,$42,$4A,$88
       .byte $78,$FC,$FE,$FE,$BF,$17,$85,$21,$61,$61,$61,$61,$61,$61,$56,$56
       .byte $56,$56,$56,$3D,$3D,$3D,$3D,$3D,$FF,$A0,$D3,$A0,$89,$C2,$A0,$C6
       .byte $A0,$F0,$00,$10,$00,$10,$00,$10
