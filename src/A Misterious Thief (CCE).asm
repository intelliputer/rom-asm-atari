; Disassembly of roms/A Misterious Thief (CCE).bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/A Misterious Thief (CCE).bin
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
CXM1P   =  $31
CXPPMM  =  $37
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
       JSR    L1D4C   
       LDA    $82     
       BNE    L101C   
       LDX    #$01    
       STX    $82     
       STX    $88     
       JMP    L1786   
L101C: LDX    #$02    
L101E: LDA    L1BDA,X 
       EOR    $86     
       AND    $87     
       STA    $89,X   
       DEX            
       BPL    L101E   
       LDA    $81     
       AND    #$01    
       TAX            
       LDA    $F0,X   
       STA    $E1     
       LDA    $F2,X   
       JSR    L1D03   
       STA    $B0     
       DEX            
       DEX            
       DEX            
       TXA            
       ORA    $B0     
       STA    $B0     
       LDY    #$07    
       LDA    $81     
       LSR            
       BCC    L107A   
       LDA    $F3     
       SBC    #$04    
L104D: CMP    #$1D    
       BCC    L1056   
       SBC    #$1C    
       JMP    L104D   
L1056: STA    $8E     
L1058: LDA    ($B1),Y 
       LDX    $F5     
       BEQ    L1068   
       LDX    #$07    
L1060: ROR            
       ROL    $8F     
       DEX            
       BPL    L1060   
       LDA    $8F     
L1068: LDX    $8E     
       AND    L1DB6,X 
       STA.wy $00A0,Y 
       LDA    ($B3),Y 
       STA.wy $00A8,Y 
       DEY            
       BPL    L1058   
       BMI    L1087   
L107A: LDA    ($BF),Y 
       STA.wy $00A0,Y 
       LDA    ($C1),Y 
       STA.wy $00A8,Y 
       DEY            
       BPL    L107A   
L1087: INY            
       LDA    $DA     
       BEQ    L1095   
       LDX    #$07    
L108E: STY    $A0,X   
       DEX            
       BPL    L108E   
       STY    $8B     
L1095: LDA    $E9     
       BNE    L10B4   
       LDA    $81     
       BNE    L10B4   
       LDA    $D4     
       LDY    $FA     
       LDX    $F8,Y   
       CPX    #$02    
       BCS    L10AD   
       AND    #$03    
       BEQ    L10B1   
       BNE    L10B4   
L10AD: AND    #$01    
       BNE    L10B4   
L10B1: JSR    L1DD3   
L10B4: LDA    $88     
       AND    #$07    
       TAX            
       LDA    L1BDD,X 
       STA    $E5     
       LDY    #$03    
L10C0: LDA.wy $00C7,Y 
       JSR    L1D03   
       STA.wy $00CB,Y 
       DEX            
       DEX            
       TXA            
       ORA.wy $00CB,Y 
       STA.wy $00CB,Y 
       DEY            
       BPL    L10C0   
       LDA    $81     
       AND    #$0F    
       BNE    L10EE   
       LDX    $82     
       LDA    $E8     
       STA    $82     
       JSR    L1BFD   
       LDA    $82     
       STA    $E8     
       AND    #$0F    
       STA    $BD     
       STX    $82     
L10EE: LDA    $E8     
       CMP    #$9F    
       BCC    L10F6   
       SBC    #$9F    
L10F6: JSR    L1D03   
       STA    $8C     
       TXA            
       ORA    $8C     
       STA    $8C     
       LDA    $EF     
       JSR    L1D03   
       STA    $E4     
       TXA            
       ORA    $E4     
       STA    $E4     
       LDA    $EC     
       JSR    L1D03   
       STA    $E3     
       TXA            
       ORA    $E3     
       STA    $E3     
L1118: LDA    INTIM   
       BNE    L1118   
       STA    WSYNC   
       STA    VBLANK  
       STA    COLUPF  
       STA    COLUBK  
       STA    $D3     
       STA    WSYNC   
       LDX    $FA     
       LDA    $89,X   
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    $D0     
       STA    $D1     
       STA    $D2     
       LDA    #$13    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP1    
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
L1150: STY    $8E     
       LDA    ($9B),Y 
       STA    WSYNC   
       STA    $8F     
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    GRP1    
       LDA    ($95),Y 
       STA    GRP0    
       LDA    ($99),Y 
       TAX            
       LDA    ($97),Y 
       LDY    $8F     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $8E     
       DEY            
       BPL    L1150   
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
       LDA    $8C     
       STA    HMBL    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L1194: DEX            
       BPL    L1194   
       STA.w  $0014   
       STA    WSYNC   
       LDA    $E4     
       STA    HMP1    
       AND    #$0F    
       TAX            
       LDA    $E3     
       STA    HMP0    
       AND    #$0F    
       TAY            
       STA    WSYNC   
L11AC: DEY            
       BPL    L11AC   
       STA.w  $0010   
       STA    WSYNC   
L11B4: DEX            
       BPL    L11B4   
       STA.w  $0011   
       STA    WSYNC   
       LDA    $E5     
       STA    HMM1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L11C5: DEX            
       BPL    L11C5   
       STA.w  $0013   
       LDX    $FA     
       LDA    $BB,X   
       PHA            
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$17    
       STA    VDELP0  
       STA    ENABL   
       STA    $8E     
       LDA    $F6     
       STA    REFP0   
       LDA    $E2     
       STA    REFP1   
       LDY    $EA     
       LDX    $EE     
       PLA            
       STA    HMCLR   
       BNE    L1223   
L11ED: LDA    #$00    
       CPY    #$10    
       BCS    L11F5   
       LDA    ($B5),Y 
L11F5: STA    GRP0    
       LDA    #$00    
       CPX    #$08    
       BCS    L1200   
       LDA    L1E78,X 
L1200: STA    WSYNC   
       STA    GRP1    
       LDA    L1F60,X 
       STA    COLUP1  
       LDA    ($B7),Y 
       STA    COLUP0  
       LDA    $BD     
       CMP    $8E     
       BNE    L1217   
       LDA    $81     
       BNE    L1219   
L1217: LDA    #$00    
L1219: STA    COLUPF  
       DEY            
       DEX            
       DEC    $8E     
       BNE    L11ED   
       BEQ    L1256   
L1223: LDA    #$00    
       CPY    #$10    
       BCS    L122B   
       LDA    ($B5),Y 
L122B: STA    GRP0    
       LDA    #$00    
       CPX    #$08    
       BCS    L1236   
       LDA    L1F68,X 
L1236: STA    WSYNC   
       STA    GRP1    
       LDA    #$0F    
       STA    COLUP1  
       LDA    ($B7),Y 
       STA    COLUP0  
       LDA    $BD     
       CMP    $8E     
       BNE    L124C   
       LDA    $81     
       BNE    L124E   
L124C: LDA    #$00    
L124E: STA    COLUPF  
       DEX            
       DEY            
       DEC    $8E     
       BNE    L1223   
L1256: LDX    $8E     
       STX    VDELP0  
       STX    COLUPF  
       LDX    #$0F    
L125E: LDA    #$00    
       CPY    #$10    
       BCS    L1266   
       LDA    ($B5),Y 
L1266: STA    WSYNC   
       STA    GRP0    
       LDA    ($B7),Y 
       STA    COLUP0  
       LDA    #$00    
       STA    GRP1    
       STA    ENABL   
       DEY            
       DEX            
       CPX    #$04    
       BNE    L125E   
       LDA    #$EE    
       STA    PF0     
       STA    PF2     
       LDA    #$77    
       STA    PF1     
L1284: LDA    #$00    
       CPY    #$10    
       BCS    L128C   
       LDA    ($B5),Y 
L128C: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($B7),Y 
       STA    COLUP0  
       LDA    #$44    
       STA    CTRLPF  
       STA    COLUPF  
       DEY            
       DEX            
       BPL    L1284   
       LDX    $FA     
       LDA    $BB,X   
       BNE    L12AA   
       LDA    COLUP1  
       STA    $D3     
L12AA: LDX    #$03    
       STX    $91     
L12AE: STA    WSYNC   
       LDA    #$00    
       STA    CXCLR   
       STA    GRP1    
       STA    GRP0    
       STA    COLUP1  
       STA    COLUPF  
       STA    CTRLPF  
       LDA    #$30    
       STA    PF0     
       STA    NUSIZ1  
       LDA    #$18    
       STA    PF2     
       LDA    #$63    
       STA    PF1     
       CPX    $EB     
       BEQ    L12D2   
       LDA    #$00    
L12D2: STA    ENAM1   
       LDA    L1BE9,X 
       EOR    $86     
       PHA            
       LDA    L1BE5,X 
       STA    HMP1    
       AND    #$0F    
       TAX            
       PLA            
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       LDA    #$1A    
       STA    COLUBK  
       LDA    #$64    
       STA    COLUP1  
L12F1: DEX            
       BPL    L12F1   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    GRP1    
       TYA            
       SEC            
       SBC    #$05    
       TAY            
       JSR    L1D1E   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$60    
       STA    PF0     
       LDA    #$31    
       STA    PF1     
       STA    PF2     
       LDA    #$00    
       TAX            
       STX    REFP1   
       CPY    #$10    
       BCS    L1321   
       LDA    ($B5),Y 
L1321: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($B7),Y 
       STA    COLUP0  
       TXA            
       DEY            
       CPY    #$10    
       BCS    L1333   
       LDA    ($B5),Y 
L1333: STA    WSYNC   
       STA    GRP0    
       LDA    ($B7),Y 
       STA    COLUP0  
       STX    GRP1    
       STX    COLUPF  
       STX    COLUBK  
       STX    ENAM1   
       LDA    CXM1P   
       BMI    L134B   
       LDA    CXPPMM  
       BPL    L134D   
L134B: INC    $D0     
L134D: STX    PF0     
       STX    CXCLR   
       LDA    $B0     
       STA    HMP1    
       AND    #$0F    
       TAX            
       DEY            
       CPY    #$10    
       BCC    L136B   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    COLUP0  
       LDA    #$F1    
       STA    PF1     
       BNE    L1379   
L136B: LDA    ($B5),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($B7),Y 
       STA    COLUP0  
       LDA    #$F1    
       STA    PF1     
L1379: DEX            
       BPL    L1379   
       STA    RESP1   
       STA    WSYNC   
       LDA    #$00    
       DEY            
       CPY    #$10    
       BCS    L1389   
       LDA    ($B5),Y 
L1389: STA    GRP0    
       LDA    ($B7),Y 
       STA    COLUP0  
       INX            
       STX    GRP1    
       LDX    #$07    
       LDA    #$01    
       STA    CTRLPF  
       STA    VDELP0  
L139A: LDA    #$00    
       DEY            
       CPY    #$10    
       BCS    L13A3   
       LDA    ($B5),Y 
L13A3: STA    GRP0    
       LDA    $91     
       CMP    $E1     
       BNE    L13CC   
       LDA    ($B7),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       LDA    $A0,X   
       STA    GRP1    
       LDA    $A8,X   
       STA    COLUP1  
       LDA    #$C2    
       EOR    $86     
       STA    COLUPF  
       LDA    #$C7    
       STA    PF2     
       STA    HMCLR   
       DEX            
       BPL    L139A   
       BMI    L13E9   
L13CC: LDA    ($B7),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       LDA    #$00    
       STA    GRP1    
       LDA    #$C2    
       EOR    $86     
       STA    COLUPF  
       LDA    #$C7    
       STA    PF2     
       NOP            
       NOP            
       STA    HMCLR   
       DEX            
       BPL    L139A   
L13E9: INX            
       TXA            
       DEY            
       CPY    #$10    
       BCS    L13F2   
       LDA    ($B5),Y 
L13F2: STA    GRP0    
       LDA    ($B7),Y 
       STA    WSYNC   
       STA    COLUP0  
       STX    GRP1    
       STX    COLUPF  
       STX    VDELP0  
       STX    REFP1   
       STX    CTRLPF  
       LDA    CXPPMM  
       BPL    L1414   
       LDA    $81     
       AND    #$01    
       BEQ    L1412   
       INC    $D2     
       BNE    L1414   
L1412: INC    $D1     
L1414: LDX    $91     
       LDA    $CB,X   
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    CXCLR   
       DEY            
       CPY    #$10    
       BCC    L142E   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    COLUP0  
       BEQ    L1438   
L142E: LDA    ($B5),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($B7),Y 
       STA    COLUP0  
L1438: DEX            
       BPL    L1438   
       STA    RESP1   
       STA    WSYNC   
       LDA    #$00    
       DEY            
       CPY    #$10    
       BCS    L1448   
       LDA    ($B5),Y 
L1448: STA    GRP0    
       LDA    ($B7),Y 
       STA    COLUP0  
       LDX    #$00    
       STX    GRP1    
       LDA    $8B     
       STA    COLUP1  
       LDA    #$07    
       STA    VDELP0  
       LDX    $91     
       LDA    $C3,X   
       STA    REFP1   
       LDA    #$00    
       TAX            
       DEY            
       CPY    #$10    
       BCS    L146A   
       LDA    ($B5),Y 
L146A: STA    GRP0    
       LDA    ($B7),Y 
       STA    WSYNC   
       STA    COLUP0  
       STX    GRP1    
       STY    $93     
       LDX    $91     
       LDY    $D5,X   
       LDA    L1D47,Y 
       CPX    #$00    
       BNE    L148B   
       LDX    $FA     
       LDY    $F8,X   
       CPY    #$01    
       BCS    L148B   
       LDA    #$07    
L148B: STA    $B9     
       LDX    #$07    
       STX    $8E     
       LDY    $93     
L1493: LDA    #$00    
       TAX            
       DEY            
       CPY    #$10    
       BCS    L149D   
       LDA    ($B5),Y 
L149D: STA    GRP0    
       LDA    ($B7),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       LDA    ($B9,X) 
       STA    GRP1    
       DEC    $B9     
       DEC    $8E     
       NOP            
       STA    HMCLR   
       BPL    L1493   
       STX    VDELP0  
       LDA    CXPPMM  
       BPL    L14BC   
       INC    $D2     
L14BC: DEC    $91     
       BMI    L14C5   
       LDX    $91     
       JMP    L12AE   
L14C5: STA    WSYNC   
       STX    GRP1    
       STX    GRP0    
       STX    GRP1    
       STX    CXCLR   
       LDX    $FA     
       LDA    $89,X   
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$13    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP1    
       STA.w  $0010   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$92    
       EOR    $86     
       STA    COLUPF  
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$58    
       STA    $97     
       LDA    $E7     
       AND    #$F0    
       LSR            
       ADC    #$00    
       STA    $93     
       LDA    $E7     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $95     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$50    
       STA    $91     
       LDA    $E6     
       AND    #$F0    
       LSR            
       ADC    #$00    
       STA    $99     
       LDA    $E6     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $9B     
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
L154C: STY    $8E     
       LDA    ($9B),Y 
       STA    WSYNC   
       STA    $8F     
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    GRP1    
       LDA    ($95),Y 
       STA    GRP0    
       LDA    ($99),Y 
       TAX            
       LDA    ($97),Y 
       LDY    $8F     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $8E     
       DEY            
       BPL    L154C   
       INY            
       STA    WSYNC   
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDX    $FA     
       LDY    $9D,X   
       LDA    L1BED,Y 
       STA    NUSIZ1  
       LSR            
       LSR            
       LSR            
       LSR            
       STA    NUSIZ0  
       LDX    #$08    
L1598: LDA    L1BF4,X 
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       LDA    #$00    
       CPY    #$02    
       BCS    L15A9   
       STA    GRP1    
L15A9: CPY    #$00    
       BNE    L15AF   
       STA    GRP0    
L15AF: DEX            
       BPL    L1598   
       INX            
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       LDA    #$13    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP1    
       LDA    #$C7    
       EOR    $86     
       STA    COLUP0  
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    COLUP1  
       LDA    #$07    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    HMOVE   
       STA    $91     
       LDA    $DA     
       BEQ    L1627   
       CMP    #$40    
       BCC    L15EC   
       LDA    #$07    
       BNE    L15F1   
L15EC: LSR            
       LSR            
       LSR            
       AND    #$07    
L15F1: TAY            
L15F2: LDX    L1ED0,Y 
       STY    $93     
       STA    WSYNC   
       LDA    L1ED8,Y 
       STA    $95     
       LDA    L1EB0,Y 
       STA    GRP0    
       LDA    L1EB8,Y 
       STA    GRP1    
       LDA    L1EC0,Y 
       STA    GRP0    
       LDA    L1EC8,Y 
       LDY    $95     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $93     
       DEY            
       BPL    L1621   
       LDY    #$07    
L1621: DEC    $91     
       BPL    L15F2   
       BMI    L162E   
L1627: LDX    #$07    
L1629: STA    WSYNC   
       DEX            
       BPL    L1629   
L162E: STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    HMCLR   
       LDA    $DA     
       BEQ    L1648   
       DEC    $DA     
       BNE    L1648   
       DEC    $DA     
L1648: LDA    #$16    
       STA    WSYNC   
       LDX    #$82    
       STA    TIM64T  
       STX    VBLANK  
       LDY    #$02    
L1655: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $00DB,Y 
       AND    #$F0    
       LSR            
       ADC    #$00    
       STA    $91,X   
       LDA.wy $00DB,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $93,X   
       DEY            
       BPL    L1655   
       LDX    #$00    
L1672: LDA    $91,X   
       EOR    #$00    
       BNE    L1682   
       LDA    #$50    
       STA    $91,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    L1672   
L1682: LDA    $DA     
       BEQ    L1697   
       LDA    $80     
       LSR            
       BCC    L1694   
       LDA    $81     
       AND    #$7F    
       BNE    L1694   
       JSR    L1DA2   
L1694: JMP    L170F   
L1697: LDX    $FA     
       LDA    $BB,X   
       BNE    L170F   
       LDA    $E9     
       CMP    #$FF    
       BEQ    L170F   
       LDA    $81     
       AND    #$03    
       BNE    L16B6   
       LDA    #$0A    
       STA    AUDF1   
       LDA    #$02    
L16AF: STA    AUDC1   
       STA    AUDV1   
       JMP    L16BA   
L16B6: LDA    #$00    
       BEQ    L16AF   
L16BA: LDX    $EE     
       LDA    $81     
       AND    #$7F    
       BNE    L16EF   
       JSR    L1BFD   
       LDA    $82     
       BPL    L16D1   
       CPX    #$0F    
       BCC    L16D7   
       DEX            
       DEX            
       BNE    L16D7   
L16D1: CPX    #$16    
       BCS    L16D7   
       INX            
       INX            
L16D7: STX    $EE     
       LDA    $81     
       BNE    L16EF   
       LDA    $D4     
       AND    #$01    
       BEQ    L16EF   
       LDA    $82     
       BPL    L16EB   
       LDX    #$08    
       BNE    L16ED   
L16EB: LDX    #$00    
L16ED: STX    $E2     
L16EF: LDY    $EF     
       LDA    $81     
       AND    #$03    
       BNE    L170D   
       LDA    $E2     
       BNE    L1704   
       DEY            
       CPY    #$10    
       BCS    L170D   
       LDX    #$08    
       BNE    L170B   
L1704: INY            
       CPY    #$94    
       BCC    L170D   
       LDX    #$00    
L170B: STX    $E2     
L170D: STY    $EF     
L170F: LDA    INTIM   
       BNE    L170F   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    L172D   
       INC    $D4     
       BNE    L172D   
       SEC            
       ROR    $D4     
L172D: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    L1738   
       LDY    #$0F    
L1738: TYA            
       LDY    #$00    
       BIT    $D4     
       BPL    L1743   
       AND    #$F7    
       LDY    $D4     
L1743: STY    $86     
       ASL    $86     
       STA    $87     
       LDA    #$26    
       STA    WSYNC   
       STA    TIM64T  
       LDA    SWCHA   
       TAY            
       AND    #$0F    
       STA    $85     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $84     
       INY            
       BEQ    L1766   
       LDA    #$00    
       STA    $D4     
L1766: LDA    SWCHB   
       LSR            
       BCS    L1777   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       LDX    #$9F    
       JMP    L1004   
L1777: LDY    #$00    
       LSR            
       BCS    L17A2   
       LDA    $83     
       BEQ    L1784   
       DEC    $83     
       BPL    L17A4   
L1784: INC    $80     
L1786: LDA    $80     
       AND    #$01    
       STA    $80     
       STA    $D4     
       LDY    #$00    
       STY    $DB     
       STY    $DC     
       STY    AUDV0   
       STY    AUDV1   
       TAY            
       INY            
       STY    $DD     
       LDA    #$FF    
       STA    $DA     
       LDY    #$1E    
L17A2: STY    $83     
L17A4: LDA    $DA     
       BEQ    L17AA   
       BNE    L181A   
L17AA: LDA    $D9     
       LSR            
       BCS    L181D   
       LSR            
       BCS    L17EE   
       LSR            
       BCS    L17B8   
       JMP    L186C   
L17B8: LDA    $E6     
       ADC    #$05    
       STA    $E6     
       CMP    #$60    
       BCC    L17DC   
       LDA    #$00    
       STA    $E6     
       INC    $E7     
       LDA    $E7     
       CMP    #$05    
       BNE    L17DC   
       LDA    $D9     
       EOR    #$04    
       STA    $D9     
       LDA    #$00    
       STA    AUDV0   
       STA    $9F     
       BEQ    L181A   
L17DC: INC    $9F     
       LDA    $9F     
       LSR            
       LSR            
       EOR    #$FF    
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       STA    AUDV0   
       BNE    L181A   
L17EE: JSR    L1CA2   
       LDA    #$10    
       JSR    L1CB6   
       LDA    $E6     
       ORA    $E7     
       BEQ    L180E   
       DEC    $9F     
       LDA    $9F     
       AND    #$0E    
       STA    AUDF0   
       LDA    #$04    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       BNE    L181A   
L180E: LDA    $D9     
       EOR    #$02    
       STA    $D9     
       LDA    #$00    
       STA    $9F     
       STA    AUDV0   
L181A: JMP    L101C   
L181D: LDA    $D9     
       EOR    #$01    
       STA    $D9     
       LDY    $FA     
       LDX    $F8,Y   
       CPX    #$02    
       BCS    L1838   
       LDA    SWCHB   
       LDY    $FA     
       BNE    L1833   
       ASL            
L1833: ASL            
       BCC    L1838   
       LDX    #$02    
L1838: STX    $F8,Y   
       LDA    #$5A    
       STA    $EC     
       LDA    #$00    
       STA    $EB     
       STA    $E2     
       LDA    #$97    
       STA    $EA     
       LDA    #$70    
       STA    $B5     
       STA    $EF     
       LDA    #$E0    
       STA    $B7     
       LDA    #$3B    
       STA    $F7     
       LDA    #$08    
       STA    $EE     
       JSR    L1BFD   
       JSR    L1C4F   
       JSR    L1C0D   
       JSR    L1C2D   
       JSR    L1C81   
       JMP    L101C   
L186C: LDX    $E9     
       CPX    #$40    
       BCS    L18D1   
       CPX    #$00    
       BNE    L18AE   
       LDX    $FA     
       LDA    REFP1,X 
       TAY            
       EOR    $FB     
       AND    $FB     
       STY    $FB     
       BPL    L1891   
       LDA    $84,X   
       AND    #$0C    
       STA    $90     
       LDA    #$01    
       STA    $E9     
       STA    $9F     
       BNE    L18EB   
L1891: LDY    $EC     
       LDA    $84,X   
       AND    #$08    
       BNE    L189E   
       CPY    #$98    
       BCS    L189E   
       INY            
L189E: LDA    $84,X   
       AND    #$04    
       BNE    L18A9   
       CPY    #$09    
       BCC    L18A9   
       DEY            
L18A9: STY    $EC     
       JMP    L18EB   
L18AE: LDA    $EA     
       SEC            
       SBC    L1FD0,X 
       STA    $EA     
       INC    $E9     
       LDA    $E9     
       CMP    #$24    
       BCC    L18C2   
       LDA    #$00    
       STA    $9F     
L18C2: STA    $E9     
       LDX    $FA     
       LDA    $84,X   
       AND    #$F3    
       ORA    $90     
       STA    $84,X   
       JMP    L1891   
L18D1: CPX    #$70    
       BCS    L18EB   
       LDA    $EA     
       SEC            
       SBC    L1F90,X 
       STA    $EA     
       INC    $E9     
       LDA    $E9     
       CMP    #$64    
       BCC    L18EB   
       LDA    #$00    
       STA    $9F     
       STA    $E9     
L18EB: LDA    $E9     
       CMP    #$F0    
       BEQ    L18FD   
       LDA    $D2     
       BEQ    L1930   
       LDA    #$01    
       STA    $9F     
       LDA    #$F0    
       STA    $E9     
L18FD: LDA    $9F     
       CMP    #$50    
       BCS    L1918   
       LDA    $9F     
       CMP    #$40    
       BCC    L190B   
       LDA    #$00    
L190B: LSR            
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$04    
       STA    AUDV0   
       BNE    L194C   
L1918: LDA    #$05    
       STA    $D9     
       JSR    L1D87   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $E6     
       STA    $E7     
       STA    $9F     
       STA    $E9     
       JMP    L101C   
L1930: LDA    $E9     
       CMP    #$E0    
       BEQ    L1946   
       LDA    $D1     
       BEQ    L1965   
       LDA    $E9     
       STA    $8D     
       LDA    #$41    
       STA    $9F     
       LDA    #$E0    
       STA    $E9     
L1946: LDA    $9F     
       CMP    #$46    
       BCS    L194F   
L194C: JMP    L19CF   
L194F: JSR    L1CEA   
       JSR    L1BFD   
       JSR    L1C4F   
       JSR    L1C0D   
       LDA    $8D     
       STA    $E9     
       LDA    #$00    
       STA    $9F     
       BEQ    L19CF   
L1965: LDA    $E9     
       CMP    #$D0    
       BEQ    L1987   
       LDA    $D0     
       BEQ    L19B9   
       LDX    $FA     
       LDA    $84,X   
       AND    #$01    
       BNE    L19B9   
       LDA    #$21    
       STA    $9F     
       LDA    #$C0    
       STA    $B5     
       LDA    #$F0    
       STA    $B7     
       LDA    #$D0    
       STA    $E9     
L1987: LDA    $9F     
       CMP    #$41    
       BCC    L19CF   
       INC    $EB     
       JSR    L1DD3   
       LDA    $EA     
       SEC            
       SBC    #$14    
       STA    $EA     
       LDA    #$70    
       STA    $B5     
       LDA    #$E0    
       STA    $B7     
       LDA    $EC     
       CMP    #$0D    
       BCS    L19A9   
       LDA    #$0B    
L19A9: CMP    #$8B    
       BCC    L19AF   
       LDA    #$8C    
L19AF: STA    $EC     
       LDA    #$00    
       STA    $9F     
       STA    $E9     
       BEQ    L19CF   
L19B9: LDA    $D3     
       BPL    L19CF   
       LDA    $E9     
       CMP    #$FF    
       BEQ    L19CF   
       LDA    #$01    
       STA    $ED     
       LDA    #$08    
       STA    $8D     
       LDA    #$FF    
       STA    $E9     
L19CF: LDA    $E9     
       CMP    #$F0    
       BCC    L19D8   
       JMP    L1B0F   
L19D8: CMP    #$00    
       BNE    L1A0B   
       LDX    $FA     
       LDA    $84,X   
       AND    #$02    
       BNE    L1A0B   
       LDA    $EB     
       TAX            
       TAY            
       LDA    $EC     
       CMP    L1D22,X 
       BCC    L19F0   
       DEY            
L19F0: CMP    L1D27,X 
       BCS    L19F6   
       DEY            
L19F6: STY    $EB     
       CPX    $EB     
       BEQ    L1A0B   
       LDA    #$5A    
       STA    $E9     
       LDA    #$11    
       STA    $9F     
       LDA    $EA     
       CLC            
       ADC    #$15    
       STA    $EA     
L1A0B: LDY    #$03    
L1A0D: CPY    #$00    
       BEQ    L1A15   
       CPY    $EB     
       BEQ    L1A41   
L1A15: LDA.wy $00D5,Y 
       BEQ    L1A81   
       LDX    $C7,Y   
       LDA    $81     
       AND    #$01    
       BNE    L1A81   
L1A22: CPX    #$94    
       BCC    L1A2A   
       LDA    #$00    
       BEQ    L1A30   
L1A2A: CPX    #$0C    
       BCS    L1A33   
       LDA    #$08    
L1A30: STA.wy $00C3,Y 
L1A33: LDA.wy $00C3,Y 
       BNE    L1A3B   
       DEX            
       BNE    L1A3C   
L1A3B: INX            
L1A3C: STX    $C7,Y   
       JMP    L1A76   
L1A41: LDX    $FA     
       LDA    $F8,X   
       TAX            
       CMP    #$04    
       BCS    L1A53   
       LDA    $BE     
       ADC    L1DDD,X 
       STA    $BE     
       BCC    L1A81   
L1A53: LDX    $C7,Y   
       LDA    $E9     
       BNE    L1A22   
       CPX    $EC     
       BCS    L1A62   
       INX            
       LDA    #$08    
       BNE    L1A65   
L1A62: DEX            
       LDA    #$00    
L1A65: STA.wy $00C3,Y 
       CPX    #$94    
       BCC    L1A6E   
       LDX    #$94    
L1A6E: CPX    #$0C    
       BCS    L1A74   
       LDX    #$0C    
L1A74: STX    $C7,Y   
L1A76: LDX    $D5,Y   
       INX            
       CPX    #$05    
       BCC    L1A7F   
       LDX    #$01    
L1A7F: STX    $D5,Y   
L1A81: DEY            
       BPL    L1A0D   
       LDA    $EB     
       CMP    $F1     
       BEQ    L1AD9   
       LDA    $81     
       BNE    L1AAF   
       LDY    $FA     
       LDX    $F8,Y   
       LDA    $D4     
       CPX    #$02    
       BCS    L1A9E   
       AND    #$03    
       BNE    L1AAF   
       BEQ    L1AA2   
L1A9E: AND    #$01    
       BEQ    L1AAF   
L1AA2: LDY    $F1     
       CPY    $EB     
       BCS    L1AD2   
       CPY    #$03    
       BCS    L1AD7   
       INY            
       BNE    L1AD7   
L1AAF: LDA    $81     
       AND    #$03    
       BNE    L1B0F   
       LDX    $F3     
       LDA    $F5     
       BEQ    L1AC4   
       CPX    #$08    
       BCS    L1AC1   
       LDA    #$00    
L1AC1: DEX            
       BNE    L1ACB   
L1AC4: CPX    #$93    
       BCC    L1ACA   
       LDA    #$08    
L1ACA: INX            
L1ACB: STX    $F3     
       STA    $F5     
       JMP    L1B0F   
L1AD2: CPY    #$02    
       BCC    L1AD7   
       DEY            
L1AD7: STY    $F1     
L1AD9: LDY    $FA     
       LDX    $F8,Y   
       LDA    $81     
       CPX    #$04    
       BCS    L1AF1   
       CPX    #$02    
       BCS    L1AED   
       AND    #$03    
       BNE    L1B0F   
       BEQ    L1AF1   
L1AED: AND    #$01    
       BNE    L1B0F   
L1AF1: LDY    $F3     
       CPY    $EC     
       BCS    L1AFC   
       INY            
       LDA    #$00    
       BEQ    L1AFF   
L1AFC: DEY            
       LDA    #$08    
L1AFF: STA    $F5     
       CPY    #$93    
       BCC    L1B07   
       LDY    #$93    
L1B07: CPY    #$08    
       BCS    L1B0D   
       LDY    #$08    
L1B0D: STY    $F3     
L1B0F: LDY    $F0     
       CPY    $F1     
       BNE    L1B2F   
       LDA    $F2     
       CMP    $F3     
       BCS    L1B22   
       LDA    $F3     
       SBC    $F2     
       JMP    L1B24   
L1B22: SBC    $F3     
L1B24: AND    #$F8    
       BNE    L1B2F   
       INY            
       CPY    #$04    
       BCC    L1B2F   
       DEY            
       DEY            
L1B2F: STY    $F0     
       LDA    $E9     
       BNE    L1B6E   
       LDX    $FA     
       LDA    $84,X   
       AND    #$08    
       BNE    L1B41   
       LDA    #$08    
       BNE    L1B49   
L1B41: LDA    $84,X   
       AND    #$04    
       BNE    L1B4E   
       LDA    #$00    
L1B49: STA    $F6     
       JMP    L1B52   
L1B4E: LDX    #$00    
       BEQ    L1B65   
L1B52: LDX    $CF     
       CPX    #$00    
       BEQ    L1B5E   
       LDA    $81     
       AND    #$03    
       BNE    L1B65   
L1B5E: INX            
       CPX    #$04    
       BCC    L1B65   
       LDX    #$01    
L1B65: STX    $CF     
       LDA    L1D2C,X 
       STA    $B5     
       BNE    L1B76   
L1B6E: CMP    #$70    
       BCS    L1B76   
       LDX    #$04    
       BNE    L1B65   
L1B76: LDA    $9F     
       BEQ    L1B7C   
       INC    $9F     
L1B7C: LDX    $ED     
       BEQ    L1BBB   
       LDA    L1D31,X 
       STA    AUDF1   
       LDA    L1DE0,X 
       AND    #$0F    
       STA    AUDC1   
       LDA    #$08    
       STA    AUDV1   
       DEC    $8D     
       BNE    L1BBB   
       INX            
       STX    $ED     
       LDA    L1DE0,X 
       AND    #$F0    
       LSR            
       STA    $8D     
       CPX    #$16    
       BCC    L1BBB   
       LDX    $FA     
       INC    $F8,X   
       LDA    #$07    
       STA    $D9     
       LDA    #$FF    
       STA    $9F     
       STA    $BB,X   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $ED     
       STA    $E9     
L1BBB: DEC    $F7     
       BPL    L1BD7   
       LDA    #$3B    
       STA    $F7     
       JSR    L1CA2   
       LDA    $E6     
       ORA    $E7     
       BNE    L1BD7   
       STA    $E9     
       STA    $9F     
       LDA    #$05    
       STA    $D9     
       JSR    L1D87   
L1BD7: JMP    L101C   
L1BDA: .byte $0F,$78,$4A
L1BDD: .byte $25,$25,$36,$47,$58,$69,$7A,$9A
L1BE5: .byte $30,$4A,$30,$4A
L1BE9: .byte $32,$92,$32,$92
L1BED: .byte $00,$00,$00,$10,$11,$31,$33
L1BF4: .byte $C6,$44,$28,$10,$92,$54,$38,$10,$10
L1BFD: LDA    $82     
       ASL            
       EOR    $82     
       ASL            
       EOR    $82     
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
       RTS            

L1C0D: LDA    $82     
       AND    #$0C    
       LSR            
       LSR            
       BNE    L1C17   
       LDA    #$02    
L1C17: STA    $F0     
       LDA    $82     
       AND    #$0E    
       LSR            
       TAX            
       LDA    L1C25,X 
       STA    $F2     
       RTS            

L1C25: .byte $14,$30,$30,$4C,$4C,$68,$68,$84
L1C2D: LDA    $82     
       LDX    #$03    
L1C31: CMP    #$85    
       BCC    L1C37   
       LDA    #$70    
L1C37: CMP    #$20    
       BCS    L1C3D   
       LDA    #$40    
L1C3D: STA    $C7,X   
       LDY    #$00    
       STY    $D5,X   
       ROR            
       DEX            
       BPL    L1C31   
       INY            
       STY    $D5     
       LDA    #$80    
       STA    $C7     
       RTS            

L1C4F: LDX    $FA     
L1C51: LDA    $82     
       AND    #$07    
       TAY            
       LDA    L1FF4,Y 
       AND    $BB,X   
       BNE    L1C66   
       LDA    $BB,X   
       BEQ    L1C69   
       INC    $82     
       JMP    L1C51   
L1C66: LDA    L1C71,Y 
L1C69: STA    $BF     
       LDA    L1C79,Y 
       STA    $C1     
       RTS            

L1C71: .byte $38,$40,$48,$50,$58,$60,$68,$70
L1C79: .byte $80,$88,$88,$88,$90,$88,$98,$A0
L1C81: LDA    $82     
       LSR            
       AND    #$03    
       BNE    L1C8A   
       LDA    #$01    
L1C8A: STA    $F1     
       LDA    $82     
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAX            
       LDA    L1C25,X 
       STA    $F3     
       LDA    #$A8    
       STA    $B3     
       LDA    #$30    
       STA    $B1     
       RTS            

L1CA2: SED            
       LDA    $E6     
       SEC            
       SBC    #$01    
       BCS    L1CAC   
       LDA    #$59    
L1CAC: STA    $E6     
       LDA    $E7     
       SBC    #$00    
       STA    $E7     
       CLD            
       RTS            

L1CB6: SED            
       CLC            
       ADC    $DD     
       STA    $DD     
       BCC    L1CE8   
       LDA    $DC     
       ADC    #$00    
L1CC2: STA    $DC     
       LDA    $DB     
       ADC    #$00    
       BCC    L1CD2   
       LDA    #$99    
       STA    $DC     
       STA    $DD     
       INC    $DA     
L1CD2: STA    $DB     
       LDA    $DC     
       AND    #$FF    
       BNE    L1CE8   
       LDY    $FA     
       LDA.wy $009D,Y 
       CMP    #$06    
       BCS    L1CE8   
       ADC    #$01    
       STA.wy $009D,Y 
L1CE8: CLD            
       RTS            

L1CEA: LDX    $FA     
       LDA    $82     
       AND    #$07    
       TAY            
       LDA    L1FF4,Y 
       EOR    $BB,X   
       STA    $BB,X   
       TYA            
       CLC            
       ADC    #$01    
       SED            
       ADC    $DC     
       JSR    L1CC2   
       RTS            

L1D03: CLC            
       ADC    #$2E    
       TAX            
       AND    #$0F    
       STA    $8E     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       CLC            
       ADC    $8E     
       CMP    #$0F    
       BCC    L1D1B   
       SBC    #$0F    
       INX            
L1D1B: EOR    #$07    
       ASL            
L1D1E: ASL            
       ASL            
       ASL            
       RTS            

L1D22: .byte $99,$99,$97,$99,$97
L1D27: .byte $07,$0B,$07,$0B,$07
L1D2C: .byte $70,$80,$90,$A0,$B0
L1D31: .byte $C0,$0C,$0F,$13,$16,$11,$0C,$0F,$13,$17,$1A,$14,$11,$13,$17,$1F
       .byte $1A,$17,$14,$17,$1B,$0B
L1D47: .byte $0F,$17,$1F,$27,$2F
L1D4C: LDX    #$0B    
       LDY    #$1F    
L1D50: STY    $91,X   
       DEX            
       DEX            
       BPL    L1D50   
       STY    $B6     
       STX    $BB     
       STX    $BC     
       INX            
       STX    $EB     
       STX    $E6     
       STX    $E7     
       DEY            
       STY    $BA     
       STY    $B8     
       STY    $C0     
       STY    $B2     
       STY    $B4     
       STY    $C2     
       LDA    #$05    
       STA    $D9     
       LDA    $82     
       STA    $E8     
       LDX    #$03    
       STX    $9D     
       INX            
       LDA    $80     
       LSR            
       BCS    L1D84   
       LDX    #$00    
L1D84: STX    $9E     
       RTS            

L1D87: JSR    L1DA2   
       LDX    $FA     
       LDA    $9D,X   
       BNE    L1D9D   
       JSR    L1DA2   
       LDA    $9D     
       ORA    $9E     
       BNE    L1D9D   
       INC    $DA     
       BNE    L1DA1   
L1D9D: LDX    $FA     
       DEC    $9D,X   
L1DA1: RTS            

L1DA2: LDX    #$02    
L1DA4: LDA    $DB,X   
       LDY    $DE,X   
       STY    $DB,X   
       STA    $DE,X   
       DEX            
       BPL    L1DA4   
       LDA    $FA     
       EOR    #$01    
       STA    $FA     
       RTS            

L1DB6: .byte $00,$00,$00,$00,$00,$01,$03,$07,$0F,$1F,$3F,$7F,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FE,$FC,$F8,$F0,$E0,$C0,$80,$00
L1DD3: LDA    $88     
       LSR            
       EOR    $88     
       LSR            
       LSR            
       ROL    $88     
       RTS            

L1DDD: .byte $81,$AD,$C1
L1DE0: .byte $D0,$14,$14,$24,$14,$14,$24,$14,$14,$24,$14,$14,$24,$14,$14,$24
       .byte $24,$14,$14,$24,$24,$4C,$8C,$A0,$A0,$C8,$A0,$80,$CC,$92,$A0,$A0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$DB,$FD,$7F,$2E,$F1,$72,$10,$00
       .byte $6C,$3C,$3A,$31,$21,$F0,$70,$10,$86,$42,$3E,$3E,$21,$F2,$71,$10
       .byte $22,$41,$3E,$3E,$21,$F1,$72,$10,$66,$22,$3E,$3E,$21,$F1,$72,$10
       .byte $FE,$FE,$FE,$18,$1C,$1E,$1C,$00,$00,$0F,$D0,$70,$D0,$0F,$00,$00
       .byte $7F,$80,$60,$00,$3E,$7F,$5D,$1C,$7E,$3C,$42,$5A,$52,$52,$42,$3C
       .byte $08,$1C,$0A,$3C,$68,$1C,$08,$00,$FF,$FF,$FF,$FF,$FF,$24,$3C,$00
       .byte $E0,$A6,$E9,$11,$21,$41,$22,$1C,$1E,$3F,$7F,$55,$D1,$11,$0E,$00
       .byte $3C,$7E,$FF,$FF,$7E,$18,$3C,$00
L1E78: .byte $60,$10,$FF,$F9,$F8,$70,$20,$D8,$6A,$6A,$6A,$6A,$6A,$6A,$6A,$6A
       .byte $9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$46,$46,$46,$6F,$6F,$6F,$6F,$6F
       .byte $64,$64,$6A,$6A,$6A,$6A,$6A,$6A,$4C,$4C,$4C,$3C,$3C,$3C,$3C,$3C
       .byte $0F,$0F,$0F,$0F,$4A,$4A,$0F,$0F
L1EB0: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1EB8: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1EC0: .byte $07,$0F,$4C,$AC,$4C,$0F,$07,$00
L1EC8: .byte $C7,$EF,$6C,$0C,$6C,$EF,$C7,$00
L1ED0: .byte $C7,$EF,$6C,$0F,$6C,$EF,$C7,$00
L1ED8: .byte $C0,$E0,$04,$EA,$64,$E0,$C0,$00,$5A,$5A,$5A,$5A,$5A,$46,$46,$46
       .byte $5A,$5A,$5A,$5A,$5A,$27,$27,$5A,$00,$00,$00,$00,$46,$46,$5A,$5A
       .byte $5A,$5A,$5A,$5A,$27,$5A,$5A,$5A,$3C,$66,$66,$66,$66,$66,$66,$3C
       .byte $3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C
       .byte $3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C
       .byte $18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C
       .byte $3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$18,$18,$00,$00,$18,$18,$00
L1F60: .byte $B8,$B8,$B8,$B8,$0F,$0F,$0F,$B8
L1F68: .byte $00,$78,$1C,$0C,$0C,$1C,$78,$00,$6C,$24,$24,$24,$2C,$28,$38,$18
       .byte $58,$9A,$99,$59,$3F,$10,$30,$30,$0C,$04,$04,$14,$FC,$88,$E8,$38
       .byte $19,$9A,$5A,$5A,$3C,$10,$30,$30
L1F90: .byte $60,$20,$20,$22,$3E,$78,$18,$18,$18,$1C,$5C,$FC,$BC,$10,$30,$30
       .byte $C0,$40,$40,$41,$4F,$68,$38,$18,$18,$7A,$99,$19,$1F,$10,$30,$30
       .byte $00,$00,$00,$00,$C3,$4E,$48,$78,$58,$9A,$99,$59,$3E,$10,$30,$30
       .byte $00,$00,$00,$00,$0C,$1E,$DE,$76,$06,$06,$1E,$12,$06,$16,$10,$10
L1FD0: .byte $00,$01,$01,$01,$01,$01,$01,$00,$01,$00,$00,$01,$00,$00,$00,$01
       .byte $00,$00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00,$FF,$00,$FF,$00,$FF
       .byte $FF,$FF,$FF,$FF
L1FF4: .byte $01,$02,$04,$08,$10,$20,$40,$80,$00,$10,$00,$10
