; Disassembly of roms/Star Voyager.bin
; Disassembled Tue Oct  6 15:24:46 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Star Voyager.bin
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
VDELBL  =  $27
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
$0285   =  $0285
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $1000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L1007: STA    VSYNC,X 
       INX            
       BNE    L1007   
       LDA    #$8D    
       STA    $B1     
       INC    $C1     
       LDY    #$06    
L1014: LDX    L1FF4,Y 
       STX    $97,Y   
       DEY            
       BPL    L1014   
       STY    $80     
       STY    $E7     
L1020: LDY    #$FF    
       STA    WSYNC   
       STY    VSYNC   
       STA    WSYNC   
       LDA    SWCHB   
       AND    #$02    
       BEQ    L1036   
       ROL    $81     
       SEC            
       ROR    $81     
       BNE    L104B   
L1036: STA    $9D     
       BIT    $81     
       BPL    L104B   
       LDA    $81     
       EOR    #$01    
       AND    #$7F    
       STA    $81     
       TAX            
       INX            
       STX    $9E     
       INX            
       STX    $9B     
L104B: STA    WSYNC   
       LDX    #$00    
       STX    ENABL   
       STX    $F2     
       BIT    INPT4   
       BPL    L105A   
       SEC            
       ROR    $AC     
L105A: LDA    $A6     
       LSR            
       BCS    L1068   
       LDA    SWCHB   
       ASL            
       ASL            
       TXA            
       ROL            
       STA    $C8     
L1068: LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       JSR    L1732   
       LDX    #$00    
       LDA    #$05    
       STA    CTRLPF  
       INC    $9A     
       BNE    L1098   
       LDA    $9B     
       BEQ    L1088   
L1084: INC    $9B     
       BEQ    L1084   
L1088: DEX            
       STX    $97     
       INX            
       STX    $8D     
       INC    $AB     
       BNE    L1098   
       LDA    #$F3    
       STA    $80     
       INC    $9B     
L1098: LDA    $93     
       CMP    #$10    
       BCC    L10A2   
       LDA    $8A     
       STA    COLUP0  
L10A2: LDA    $A6     
       ROR            
       BCC    L10AD   
       LDA    $8B     
       EOR    $9A     
       STA    COLUP1  
L10AD: STA    WSYNC   
L10AF: BIT    $0285   
       BPL    L10AF   
       STA    CXCLR   
       STA    WSYNC   
       STX    VBLANK  
       DEX            
       STX    PF2     
       STA    WSYNC   
       STX    PF0     
       STX    PF1     
       LDA    $F3     
       STA    HMBL    
       LDY    $E8     
       NOP            
L10CA: DEY            
       BPL    L10CA   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDY    $83     
       BEQ    L10E1   
       DEY            
       LDA    ($95),Y 
       STA    GRP1    
       JMP    L10E4   
L10E1: JSR    L1AC5   
L10E4: LDY    $84     
       BEQ    L10F0   
       DEY            
       LDA    ($93),Y 
       STA    GRP0    
       JMP    L10F3   
L10F0: JSR    L1AC5   
L10F3: PHA            
       PLA            
       INX            
       STA    RESM1   
       LDY    $83     
       NOP            
       STX    $8E     
       LDA    $DD     
       STA    $90     
       TXA            
       STA    HMCLR   
       STA    PF2     
       STA    PF1     
       BEQ    L1117   
L110A: LDA    #$00    
       STA    $8F     
       LDY    $91     
L1110: DEY            
       BPL    L1110   
       STA    RESBL   
L1115: STA    WSYNC   
L1117: STX    HMOVE   
       LDY    $83     
       CPX    $A8     
       BCC    L1126   
       CPX    $AA     
       BCS    L1126   
       LDA    ($95),Y 
       INY            
L1126: STA    GRP1    
       STY    $83     
       LDA    #$00    
       CPX    #$28    
       BNE    L1132   
       LDA    #$40    
L1132: STA    PF2     
       LDA    #$00    
       CPX    $A7     
       BCC    L1144   
       CPX    $A9     
       BCS    L1144   
       LDY    $84     
       LDA    ($93),Y 
       INC    $84     
L1144: INX            
       LDY    $92     
       STY    HMBL    
       STA    WSYNC   
       STA    GRP0    
       BIT    $8F     
       BMI    L110A   
       LDA    #$00    
       STA    HMBL    
       CPX    $90     
       BNE    L115B   
       LDA    #$02    
L115B: STA    ENABL   
       DEX            
       CPX    $90     
       BNE    L118C   
       DEC    $8F     
       INC    $8E     
       LDY    $8E     
       LDA.wy $00DD,Y 
       STA    $90     
       LDA.wy $00E8,Y 
       STA    $91     
       LDA.wy $00F3,Y 
       STA    $92     
       INX            
L1178: LDA    #$00    
       CPX    #$4F    
       BCC    L1115   
       STA    WSYNC   
       BEQ    L11AE   
L1182: LDA    $98     
       STA    HMM1    
       LDA    #$02    
       STA    ENAM1   
       BNE    L1178   
L118C: LDA    $90     
       BNE    L1199   
       INX            
       STX    $90     
       CPX    $97     
       BCS    L1182   
       BNE    L1178   
L1199: INX            
       CPX    $97     
       BCS    L1182   
       INX            
       CPX    $90     
       BNE    L11AA   
       LDY    $8E     
       LDA.wy $00D3,Y 
       STA    VDELBL  
L11AA: DEX            
       JMP    L1178   
L11AE: STA    GRP0    
       STA    GRP1    
       LDA    #$FF    
       STA    PF2     
       STA    PF1     
       BIT    $97     
       BMI    L11C6   
       LDA    $9A     
       CMP    #$F4    
       BCS    L11C6   
       LDA    #$42    
       STA    COLUPF  
L11C6: LDA    $88     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $8C     
       STA    COLUBK  
       LDA    #$41    
       STA    TIM8T   
       LDA    $9E     
       AND    #$F0    
       LSR            
       BNE    L11DE   
       LDA    #$50    
L11DE: STA    $F3     
       STA    WSYNC   
       LDA    #$1D    
       STA    $F4     
       STA    $F6     
       STA    $F8     
       STA    $FA     
       LDA    #$F0    
       STA    HMP0    
       LDX    #$00    
       STX    ENAM1   
       LDA    $9E     
       AND    #$0F    
       ASL            
       STA    RESP0   
       STA    RESP1   
       ASL            
       ASL            
       STA    $F5,X   
       STA    RESBL   
       LDA    $9B     
       BNE    L1219   
       LDA    $82     
       AND    #$F0    
       LSR            
       STA    $F7     
       LDA    $82     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $F9     
       BCC    L1232   
L1219: LDA    $9C     
       ADC    #$10    
       BCC    L1221   
       LDA    #$FF    
L1221: LSR            
       LSR            
       LSR            
       LSR            
       AND    #$0E    
       TAX            
       LDA    L1DD8,X 
       STA    $F7     
       LDA    L1DD9,X 
       STA    $F9     
L1232: LDA    $BE     
       BNE    L124C   
       LDA    $B2     
       CMP    #$06    
       BCC    L1240   
       CMP    #$8E    
       BCC    L1244   
L1240: LDA    #$F0    
       BNE    L1252   
L1244: CMP    #$82    
       BCS    L1250   
       LDA    #$00    
       BEQ    L1252   
L124C: AND    #$F0    
       BNE    L1252   
L1250: LDA    #$10    
L1252: EOR    #$FF    
       CLC            
       ADC    #$10    
       AND    #$F0    
       CMP    #$90    
       BNE    L125F   
       LDA    #$A0    
L125F: CMP    #$80    
       BNE    L1265   
       LDA    #$70    
L1265: STA    HMBL    
       LDA    $C2     
       BNE    L1281   
       LDA    $B6     
       CMP    #$C0    
       BCC    L1275   
       LDA    #$F0    
       BNE    L1287   
L1275: CMP    #$83    
       BCC    L127D   
       LDA    #$20    
       BNE    L1287   
L127D: LDA    #$00    
       BEQ    L1287   
L1281: CMP    #$20    
       BCS    L1287   
       LDA    #$20    
L1287: EOR    #$80    
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$07    
       TAX            
       CPX    #$07    
       BNE    L1296   
       DEX            
L1296: LDA    $9A     
       AND    #$10    
       BEQ    L129E   
       LDX    #$FE    
L129E: STX    $C7     
       INC    $C7     
       LDA    $C1     
       BNE    L12BC   
       LDA    $B5     
       CMP    #$C0    
       BCC    L12B0   
       LDA    #$F0    
       BNE    L12C2   
L12B0: CMP    #$83    
       BCC    L12B8   
       LDA    #$20    
       BNE    L12C2   
L12B8: LDA    #$00    
       BEQ    L12C2   
L12BC: CMP    #$20    
       BCS    L12C2   
       LDA    #$20    
L12C2: EOR    #$80    
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$07    
       CMP    #$07    
       BNE    L12D1   
       LDA    #$06    
L12D1: TAX            
       LDA    $A6     
       LSR            
       BCC    L12D9   
       LDX    #$FF    
L12D9: STX    $C6     
       LDA    $BD     
       BNE    L12F5   
       LDA    $B1     
       CMP    #$06    
       BCC    L12E9   
       CMP    #$8E    
       BCC    L12ED   
L12E9: LDA    #$F0    
       BNE    L12FB   
L12ED: CMP    #$82    
       BCS    L12F9   
       LDA    #$00    
       BEQ    L12FB   
L12F5: AND    #$F0    
       BNE    L12FB   
L12F9: LDA    #$10    
L12FB: EOR    #$80    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    L1CE8,X 
       LDY    #$00    
       CPX    #$08    
       BCS    L1311   
       STA    $83     
       STY    $84     
       BCC    L1315   
L1311: STA    $84     
       STY    $83     
L1315: LDA    #$80    
       LDY    #$01    
       LDX    #$08    
L131B: STA    $DD,X   
       STY    $E8,X   
       DEX            
       BPL    L131B   
       INX            
       STX    $E1     
       STX    $EC     
       DEX            
       STX    $E5     
       LDA    #$7F    
       STA    $F0     
       STA    $E8     
       STX    $DD     
       LDX    $C6     
       BMI    L1343   
       INX            
       LDA    $83     
       ORA    $DD,X   
       STA    $DD,X   
       LDA    $84     
       ORA    $E8,X   
       STA    $E8,X   
L1343: BIT    $0285   
       BPL    L1343   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$1F    
       TXS            
       LDX    #$01    
       STX    CTRLPF  
       DEX            
       LDY    #$06    
       LDA    $9D     
       LSR            
       BCC    L135E   
       INX            
       LDY    #$03    
L135E: STY    NUSIZ0  
       STY    NUSIZ1  
       STX    VDELP0  
       STX    VDELP1  
       STX    VDELBL  
       BCS    L1375   
       LDY    #$08    
       LDA    ($F7),Y 
       TAX            
       LDA    #$3F    
       STA    PF2     
       BNE    L13BC   
L1375: LDA    #$80    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$0B    
       STA    $84     
L1387: LDY    $84     
       LDA    L1C7D,Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    L1C86,Y 
       STA.w  $001C   
       LDA    L1C92,Y 
       NOP            
       STA    GRP0    
       LDA    L1C9E,Y 
       STA    $85     
       LDA    L1CAA,Y 
       NOP            
       TAX            
       LDA    L1CB6,Y 
       TAY            
       LDA    $85     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $84     
       BPL    L1387   
       LDY    #$07    
       BNE    L140A   
L13BC: STA    WSYNC   
       NOP            
       CPY    $C7     
       PHP            
       PLA            
       LDA    ($F3),Y 
       STA    GRP0    
       LDA    ($F5),Y 
       STA    GRP1    
       LDA.wy $00DD,Y 
       NOP            
       NOP            
       STA    GRP0    
       LDA.wy $00E8,Y 
       STA    GRP1    
       LDA    ($F9),Y 
       STX    GRP0    
       STA    GRP1    
       LDA    ($F7),Y 
       TAX            
       STA    WSYNC   
       NOP            
       CPY    $C7     
       PHP            
       PLA            
       LDA    ($F3),Y 
       STA    GRP0    
       LDA    ($F5),Y 
       STA    GRP1    
       LDA.wy $00DD,Y 
       NOP            
       NOP            
       STA    GRP0    
       LDA.wy $00E8,Y 
       STA    GRP1    
       LDA    ($F9),Y 
       STX    GRP0    
       STA    GRP1    
       DEY            
       LDA    ($F7),Y 
       TAX            
       TYA            
       BPL    L13BC   
       LDY    #$03    
L140A: LDX    #$FF    
       STX    PF2     
       TXS            
       INX            
       STX    GRP0    
       STX    GRP1    
L1414: STA    WSYNC   
       DEY            
       BPL    L1414   
       LDA    #$02    
       STA    VBLANK  
       LDA    #$20    
       STA    TIM64T  
       BIT    $9F     
       BMI    L145D   
       BVC    L145D   
       BIT    $A0     
       BMI    L145D   
       BVC    L145D   
       TXA            
       ORA    $BF     
       ORA    $BB     
       ORA    $BC     
       ORA    $C0     
       BNE    L145D   
       LDA    $AF     
       SEC            
       SBC    $B0     
       CMP    #$F9    
       BCS    L1446   
       CMP    #$07    
       BCS    L145D   
L1446: LDA    $B3     
       SEC            
       SBC    $B4     
       CMP    #$F9    
       BCS    L1453   
       CMP    #$07    
       BCS    L145D   
L1453: LDA    #$C0    
       STA    $9F     
       STA    $A0     
       LDA    #$BA    
       STA    $A3     
L145D: LDY    #$FF    
       LDA    #$1C    
       STA    $87     
       LDX    #$D6    
       LDA    SWCHB   
       AND    #$08    
       BNE    L1470   
       LDX    #$DF    
       LDY    #$0F    
L1470: STX    $86     
       STY    $83     
       LDX    $C5     
       LDA    L1EE0,X 
       LDY    #$08    
       BNE    L147F   
L147D: LDA    ($86),Y 
L147F: AND    $80     
       AND    $83     
       CPY    #$06    
       BCS    L148C   
       STA.wy $0087,Y 
       BCC    L148F   
L148C: STA.wy $0000,Y 
L148F: DEY            
       BNE    L147D   
       LDA    $A2     
       ASL            
       ASL            
       ASL            
       TAY            
       LDA    $9A     
       AND    #$03    
       BEQ    L14A4   
       BIT    $8D     
       BPL    L14A4   
       LDY    #$42    
L14A4: TYA            
       AND    $80     
       AND    $83     
       STA    COLUBK  
       LDX    #$00    
       LDA    $A3     
       BNE    L14BD   
       LDA    $A5     
       BEQ    L14BD   
       STA    $A4     
       LDA    #$04    
       STA    AUDC1   
       STX    $A5     
L14BD: INX            
L14BE: LDY    $A3,X   
       BNE    L14D4   
       LDA    $9B     
       BNE    L1515   
       LDA    #$08    
       STA    AUDC0,X 
       LDA    #$01    
       STA    AUDV0,X 
       LDA    #$0B    
       STA    AUDF0,X 
       BNE    L151B   
L14D4: CPY    #$FF    
       BEQ    L1519   
       CPY    #$BB    
       BCC    L14F4   
       LDA    $9A     
       AND    #$07    
       BNE    L1519   
       LDA    #$0F    
       STA    AUDV1   
       LDA    L1F00,Y 
       BMI    L1515   
       BNE    L14EF   
       STA    AUDV1   
L14EF: STA    AUDF1   
       DEY            
       BNE    L1519   
L14F4: CPY    #$6B    
       BCC    L14FF   
       LDA    $9B     
       ROL            
       AND    $9A     
       BNE    L1519   
L14FF: LDA    L1F00,Y 
       BMI    L1515   
       STA    AUDF0,X 
       DEY            
       LDA    L1F00,Y 
       STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       DEY            
       BNE    L1519   
L1515: LDY    #$00    
       STY    AUDV0,X 
L1519: STY    $A3,X   
L151B: DEX            
       BPL    L14BE   
       BIT    CXM1P   
       BVC    L1531   
       BIT    $A1     
       BMI    L1531   
       JSR    L1EE7   
       LDA    #$C0    
       STA    $A1     
       STA    $97     
       BNE    L154C   
L1531: BIT    CXM1P   
       BPL    L1550   
       LDX    #$01    
       BIT    $9F     
       BVC    L1546   
       DEX            
       BIT    $A0     
       BVC    L1546   
       LDA    $9A     
       ROR            
       BCC    L1546   
       INX            
L1546: LDA    #$C0    
       ORA    $9F,X   
       STA    $9F,X   
L154C: LDA    #$BA    
       STA    $A3     
L1550: BIT    $9F     
       BVC    L157C   
       BMI    L157C   
       LDY    #$FF    
       STY    $84     
       LDY    #$FD    
       BIT    $A6     
       BMI    L1562   
       LDY    #$03    
L1562: STY    $83     
       LDX    #$00    
       JSR    L1654   
       STX    $BF     
       STX    $BB     
       LDX    $B7     
       INX            
       STX    $B7     
       CPX    #$1B    
       BNE    L157C   
       LDA    #$C3    
       STA    $9F     
       STA    $B3     
L157C: BIT    $A0     
       BVC    L158B   
       BMI    L158B   
       DEC    $B8     
       BNE    L158B   
       LDX    #$01    
       JSR    L1C1E   
L158B: LDA    SWCHA   
       JSR    L1DE8   
       STX    $83     
       STY    $84     
       TXA            
       ORA    $84     
       BEQ    L159C   
       LSR    $AB     
L159C: LDA    $9A     
       LSR            
       BCC    L15EA   
       LDA    $9B     
       CMP    #$01    
       BEQ    L160B   
       LDX    #$13    
L15A9: LDA    $C9,X   
       BEQ    L15E5   
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L1CC2,Y 
       BNE    L15BE   
       ORA    $9A     
       AND    #$06    
       BNE    L15E5   
       EOR    #$01    
L15BE: CLC            
       ADC    $C8     
       CPY    #$0A    
       BCS    L15C9   
       EOR    #$FF    
       ADC    #$01    
L15C9: CLC            
       ADC    $C9,X   
       LDY    #$01    
       CPX    #$0A    
       BCS    L15D3   
       DEY            
L15D3: CLC            
       ADC.wy $0083,Y 
       CMP    #$97    
       BCC    L15E3   
       LDA    #$00    
       CPX    #$0A    
       BCS    L15E3   
       STA    $D3,X   
L15E3: STA    $C9,X   
L15E5: DEX            
       BPL    L15A9   
       BMI    L160B   
L15EA: LDX    #$03    
L15EC: LDA    $9F,X   
       AND    #$40    
       BEQ    L15F5   
       JSR    L1654   
L15F5: DEX            
       BPL    L15EC   
       BIT    $A1     
       BVC    L160B   
       BMI    L160B   
       LDX    $AD     
       STX    $83     
       LDX    $AE     
       STX    $84     
       LDX    #$02    
       JSR    L1654   
L160B: LDA    CXPPMM  
       BPL    L1631   
       BIT    $A0     
       BVC    L161C   
       BIT    $9F     
       BVC    L1631   
       LDA    $9A     
       LSR            
       BCC    L1631   
L161C: BIT    $A1     
       BMI    L1631   
       LDA    #$C0    
       STA    $A1     
       STA    $9F     
       LDA    #$00    
       STA    $A6     
       LDA    #$BA    
       STA    $A3     
       JSR    L1EE7   
L1631: LDA    $81     
       LSR            
       BCC    L164C   
       LDA    $9A     
       AND    #$0F    
       BEQ    L164C   
       LDX    #$01    
L163E: LDY    $AD,X   
       BEQ    L1649   
       BMI    L1646   
       DEY            
       DEY            
L1646: INY            
       STY    $AD,X   
L1649: DEX            
       BPL    L163E   
L164C: BIT    $0285   
       BPL    L164C   
       JMP    L1020   
L1654: LDA    $BB,X   
       BNE    L168F   
       LDA    $AF,X   
       CMP    #$8E    
       PHP            
       CLC            
       ADC    $83     
       CMP    #$F0    
       BCC    L166A   
       SBC    #$60    
       PLP            
       JMP    L168A   
L166A: CMP    #$A0    
       BCC    L1675   
       CLC            
       ADC    #$60    
       PLP            
       JMP    L168A   
L1675: PLP            
       BCS    L1680   
       CMP    #$8E    
       BCC    L168A   
       LDY    #$01    
       BNE    L1686   
L1680: CMP    #$8E    
       BCS    L168A   
       LDY    #$FF    
L1686: STY    $BB,X   
       LDA    #$8E    
L168A: STA    $AF,X   
       JMP    L16B4   
L168F: LDA    $BB,X   
       PHP            
       CLC            
       ADC    $83     
       BVC    L169D   
       PLP            
       LDA    $BB,X   
       JMP    L16B2   
L169D: PLP            
       BMI    L16A9   
       TAY            
       BEQ    L16A5   
       BPL    L16B2   
L16A5: LDY    #$8D    
       BNE    L16AE   
L16A9: TAY            
       BMI    L16B2   
       LDY    #$8E    
L16AE: STY    $AF,X   
       LDA    #$00    
L16B2: STA    $BB,X   
L16B4: LDA    $BF,X   
       BNE    L16DE   
       LDA    $B3,X   
       CLC            
       ADC    $84     
       CMP    #$B8    
       PHP            
       CMP    #$A0    
       BCS    L16C8   
       PLP            
       JMP    L16D9   
L16C8: PLP            
       BCS    L16CF   
       LDY    #$01    
       BNE    L16D5   
L16CF: CMP    #$C0    
       BCS    L16D9   
       LDY    #$FF    
L16D5: STY    $BF,X   
       LDA    #$C0    
L16D9: STA    $B3,X   
       JMP    L1702   
L16DE: LDA    $BF,X   
       PHP            
       CLC            
       ADC    $84     
       BVC    L16EB   
       PLP            
       LDA    $BF,X   
       BNE    L1700   
L16EB: PLP            
       BMI    L16F7   
       TAY            
       BEQ    L16F3   
       BPL    L1700   
L16F3: LDY    #$9F    
       BNE    L16FC   
L16F7: TAY            
       BMI    L1700   
       LDY    #$C0    
L16FC: STY    $B3,X   
       LDA    #$00    
L1700: STA    $BF,X   
L1702: RTS            

L1703: LDA    #$C0    
       STA    $B3     
       STA    $B4     
       STA    $B5     
       STA    $BA     
       LDX    #$8E    
       LDY    #$C0    
       BIT    SWCHB   
       BVS    L171A   
       LDX    #$3B    
       LDY    #$3B    
L171A: STX    $B2     
       STY    $B6     
       JSR    L1BB8   
       BIT    SWCHB   
       BVS    L1728   
       LDA    #$00    
L1728: STA    $C2     
       ASL            
       STA    $BE     
       LDA    #$40    
       STA    $A2     
       RTS            

L1732: LDA    $9A     
       LSR            
       BCS    L173A   
       JMP    L1994   
L173A: LDA    $9B     
       CMP    #$02    
       BCC    L1744   
       BIT    INPT4   
       BPL    L174A   
L1744: LDA    SWCHB   
       LSR            
       BCS    L1760   
L174A: LDX    #$99    
       STX    $82     
       LDA    #$00    
       LDX    #$2B    
L1752: STA    $9A,X   
       DEX            
       BNE    L1752   
       DEX            
       STX    $80     
       JSR    L1703   
       JMP    L1A40   
L1760: LDA    $98     
       EOR    #$F0    
       CLC            
       ADC    #$10    
       STA    $98     
       BIT    SWCHB   
       BVS    L1777   
       LDA    $9A     
       AND    #$02    
       BEQ    L1777   
       JMP    L1844   
L1777: LDA    $A6     
       LSR            
       BCS    L177F   
       JMP    L181C   
L177F: LDX    $BA     
       DEX            
       BNE    L17E5   
       LDA    $A2     
       AND    #$0F    
       CMP    #$0A    
       BCS    L17E9   
       ADC    #$03    
       STA    $83     
       STA    AUDV0   
       LDA    #$18    
       SBC    $83     
       STA    AUDF0   
       LDA    #$FF    
       STA    $A3     
       LDY    $C5     
       LDA    $C2     
       ORA    $BE     
       BNE    L180A   
       LDA    $B2     
       CMP    #$1F    
       BCC    L180A   
       CMP    #$57    
       BCS    L180A   
       LDX    $B6     
       CPX    #$0B    
       BCC    L180A   
       CPX    #$6B    
       BCS    L180A   
       CMP    #$33    
       BCC    L17CA   
       CMP    #$43    
       BCS    L17CA   
       CPX    #$2B    
       BCC    L17CA   
       CPX    #$4B    
       BCS    L17CA   
       BCC    L17CF   
L17CA: JSR    L1C61   
       BNE    L180A   
L17CF: LDX    #$08    
       STX    AUDC0   
       LDX    #$07    
       INC    $A2     
       INC    $C8     
       SED            
       LDA    $82     
       ADC    #$11    
       BCC    L17E2   
       LDA    #$99    
L17E2: STA    $82     
       CLD            
L17E5: STX    $BA     
       BNE    L1819   
L17E9: LDY    $C5     
       INY            
       CPY    #$07    
       BNE    L1801   
       LDY    #$01    
       STY    $9A     
       INC    $9B     
       LDA    #$04    
       STA    AUDC1   
       LDA    #$F3    
       STA    $A4     
       DEY            
       BEQ    L180A   
L1801: LDA    #$0A    
       CLC            
       ADC    $9C     
       BCS    L180A   
       STA    $9C     
L180A: STY    $C5     
       JSR    L1703   
       LDA    #$00    
       STA    $A1     
       STA    $C8     
       STA    $A6     
       STA    $A3     
L1819: JMP    L1991   
L181C: BIT    $A1     
       BVC    L1844   
       BMI    L1844   
       LDX    $B9     
       BEQ    L1844   
       DEX            
       STX    $B9     
       CPX    #$18    
       BCS    L1833   
       LDA    $A6     
       ORA    #$20    
       STA    $A6     
L1833: CPX    #$00    
       BNE    L1844   
       LDX    #$02    
       JSR    L1C1E   
       LDA    #$00    
       STA    $A6     
       STA    $A9     
       STA    $AA     
L1844: LDA    $81     
       LSR            
       BCC    L1875   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       JSR    L1DE8   
       STX    $85     
       LDX    #$00    
       JSR    L1C51   
       DEY            
       TYA            
       EOR    #$FF    
       STA    $85     
       INX            
       JSR    L1C51   
       LDA    $A6     
       LSR            
       BCS    L1872   
       BIT    INPT5   
       BMI    L1872   
       LDA    #$00    
       JMP    L18DD   
L1872: JMP    L18FA   
L1875: LDY    #$01    
       LDX    #$00    
       LDA    $9A     
       AND    #$06    
       BNE    L18D2   
       JSR    L1BB8   
       AND    #$07    
       PHP            
       LDA    $A6     
       PLP            
       BNE    L188C   
       EOR    #$40    
L188C: STA    $A6     
       AND    #$40    
       BEQ    L18A9   
       LDA    $BD     
       BEQ    L189A   
       BMI    L18A6   
       BPL    L18A4   
L189A: LDA    $B1     
       CMP    #$3B    
       BCC    L18A6   
       CMP    #$8E    
       BCS    L18A6   
L18A4: LDY    #$FF    
L18A6: JMP    L18BE   
L18A9: LDA    $C1     
       BEQ    L18B1   
       BMI    L18BD   
       BPL    L18BB   
L18B1: LDA    $B5     
       CMP    #$3B    
       BCC    L18BD   
       CMP    #$C1    
       BCS    L18BD   
L18BB: LDY    #$FF    
L18BD: INX            
L18BE: STY    $85     
       LDA    $A6     
       AND    #$20    
       BEQ    L18CF   
       LDA    $85     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $85     
L18CF: JSR    L1C51   
L18D2: LDA    $9A     
       AND    #$02    
       BNE    L18FA   
       JSR    L1BB8   
       AND    #$79    
L18DD: ORA    $BD     
       ORA    $C1     
       ORA    $A0     
       BNE    L18FA   
       BIT    $A1     
       BMI    L18FA   
       LDA    $B9     
       LSR            
       STA    $B8     
       LDA    $B1     
       STA    $B0     
       LDA    $B5     
       STA    $B4     
       LDA    #$40    
       STA    $A0     
L18FA: LDA    $A6     
       AND    #$01    
       ORA    $9B     
       BNE    L1931   
       BIT    $AC     
       BPL    L1918   
       BIT    INPT4   
       BMI    L1918   
       BIT    SWCHB   
       BMI    L1915   
       JSR    L1BC2   
       JMP    L1918   
L1915: JSR    L1BFF   
L1918: LDA    $81     
       LSR            
       BCS    L192F   
       BIT    INPT5   
       BMI    L192F   
       BIT    SWCHB   
       BMI    L192C   
       JSR    L1BFF   
       JMP    L192F   
L192C: JSR    L1BC2   
L192F: LDA    $A1     
L1931: BNE    L1991   
       STA    $A6     
       LDA    #$40    
       STA    $A1     
       JSR    L1BB8   
       TAY            
       LDA    $81     
       LSR            
       TYA            
       BCC    L1959   
       AND    #$3F    
       ADC    #$31    
       STA    $B5     
       TYA            
       LSR            
       AND    #$3F    
       ADC    #$31    
       STA    $B1     
       LDA    #$00    
       STA    $BD     
       STA    $C1     
       BEQ    L1967   
L1959: STA    $BD     
       ROR            
       ROR            
       STA    $C1     
       LDA    #$C0    
       STA    $B5     
       LDA    #$8E    
       STA    $B1     
L1967: LDY    #$FF    
       STY    $B9     
       INY            
       STY    $AD     
       STY    $AE     
       STY    $C3     
       LDX    $C5     
       INX            
       CPX    $C4     
       BCC    L1983   
       LDA    #$04    
       STA    AUDC1   
       LDA    #$CF    
       INC    $C4     
       BNE    L198F   
L1983: LDA    #$01    
       STA    $A6     
       STY    $C4     
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$E8    
L198F: STA    $A4     
L1991: JMP    L1A40   
L1994: LDX    #$09    
L1996: LDA    $D3,X   
       BEQ    L19A0   
       DEX            
       BPL    L1996   
       JMP    L1A40   
L19A0: STX    $83     
       LDX    #$09    
L19A4: LDA    $D3,X   
       BEQ    L19AC   
       CMP    #$40    
       BCC    L19BD   
L19AC: DEX            
       BPL    L19A4   
       LDX    #$00    
       LDA    $D3,X   
       BNE    L19B7   
       STA    $83     
L19B7: STX    $84     
       LDA    #$38    
       BNE    L1A05   
L19BD: STA    $85     
       CPX    #$09    
       BNE    L19C9   
       STX    $84     
       LDA    #$60    
       BNE    L1A05   
L19C9: INX            
       STX    $84     
       SEC            
       SBC    $D3,X   
       BEQ    L19FC   
       CMP    $85     
       BNE    L19E3   
       STX    $83     
       CMP    #$88    
       BCC    L19DF   
       LDA    #$00    
       BEQ    L19FC   
L19DF: ADC    #$08    
       BNE    L19FC   
L19E3: CMP    #$F0    
       BCC    L19F2   
       LDA    $D3,X   
       CPX    #$09    
       BNE    L19BD   
       LDA    #$00    
       JMP    L1A05   
L19F2: EOR    #$FF    
       ADC    #$01    
       LSR            
       DEX            
       CLC            
       ADC    $D3,X   
       INX            
L19FC: CPX    $83     
       BEQ    L1A05   
       BCC    L1A05   
       DEC    $84     
       DEX            
L1A05: STA    $85     
       CPX    $83     
       BEQ    L1A31   
       BCC    L1A20   
       LDX    $83     
L1A0F: INX            
       LDY    $D3,X   
       LDA    $C9,X   
       DEX            
       STA    $C9,X   
       STY    $D3,X   
       INX            
       CPX    $84     
       BNE    L1A0F   
       BEQ    L1A31   
L1A20: LDX    $83     
L1A22: DEX            
       LDY    $D3,X   
       LDA    $C9,X   
       INX            
       STY    $D3,X   
       STA    $C9,X   
       DEX            
       CPX    $84     
       BNE    L1A22   
L1A31: LDA    $85     
       LDX    $84     
       STA    $D3,X   
       JSR    L1BB8   
       AND    #$1F    
       ADC    #$40    
       STA    $C9,X   
L1A40: LDA    #$1E    
       STA    $94     
       STA    $96     
       LDX    #$00    
       STX    $86     
       LDA    $9A     
       LSR            
       BCS    L1A53   
       BIT    $9F     
       BVS    L1A5D   
L1A53: INX            
       BIT    $A0     
       BVS    L1A5D   
       DEX            
       BIT    $9F     
       BVC    L1A60   
L1A5D: JSR    L1AC6   
L1A60: LDA    $86     
       PHA            
       LDA    $A6     
       LDX    #$00    
       STX    $86     
       LDX    #$02    
       LSR            
       BCC    L1A6F   
       INX            
L1A6F: JSR    L1AC6   
       LDA    $86     
       STA    $83     
       PLA            
       STA    $84     
       LDX    #$09    
       LDY    #$FF    
L1A7D: LDA    $D3,X   
       BNE    L1A85   
       TYA            
       JMP    L1A87   
L1A85: LDY    #$00    
L1A87: LSR            
       CMP    #$26    
       BEQ    L1A90   
       CMP    #$27    
       BNE    L1A91   
L1A90: TYA            
L1A91: STA    $DD,X   
       DEX            
       BPL    L1A7D   
       LDX    #$09    
L1A98: LDA    $C9,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $86     
       TAY            
       LDA    $C9,X   
       AND    #$0F    
       CLC            
       ADC    $86     
       CMP    #$0F    
       BCC    L1AAF   
       SBC    #$0F    
       INY            
L1AAF: SEC            
       SBC    #$08    
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $F3,X   
       CPY    #$0A    
       BNE    L1AC0   
       LDY    #$00    
L1AC0: STY    $E8,X   
       DEX            
       BPL    L1A98   
L1AC5: RTS            

L1AC6: LDA    $B7,X   
       STX    $83     
       LDY    L1D9A,X 
       LDX    #$00    
L1ACF: CMP    L1D00,Y 
       BCS    L1AD8   
       INY            
       INX            
       BNE    L1ACF   
L1AD8: TXA            
       LDX    $83     
       LDY    $9F,X   
       BPL    L1B1D   
       CPX    #$02    
       BCS    L1AE7   
       INC    $94     
       BNE    L1AE9   
L1AE7: INC    $96     
L1AE9: PHA            
       LDA    $9A     
       AND    #$07    
       BEQ    L1AFC   
       CPX    #$01    
       BNE    L1B0F   
       BIT    $9F     
       BVC    L1B0F   
       CMP    #$01    
       BNE    L1B0F   
L1AFC: INY            
       CPY    #$C4    
       BNE    L1B0F   
       LDA    #$C0    
       STA    $B3,X   
       LDY    #$00    
       STY    $BF,X   
       STY    $BB,X   
       LDA    #$8E    
       STA    $AF,X   
L1B0F: STY    $9F,X   
       PLA            
       CLC            
       ADC    #$02    
       LSR            
       CLC            
       ADC    $9F,X   
       AND    #$3F    
       LDX    #$04    
L1B1D: STA    $84     
       ASL            
       ASL            
       TAY            
       LDA    $84     
       CLC            
       ADC    L1CFA,X 
       TAX            
       LDA    $83     
       AND    #$02    
       STA    $85     
       LDA    L1DB7,X 
       SEC            
       SBC    L1DB6,X 
       STA    $87     
       LDA    L1DB6,X 
       LDX    $85     
       STA    $93,X   
       TXA            
       LSR            
       TAX            
       LDA    L1EC0,Y 
       STA    NUSIZ0,X
       LDX    $83     
       LDA    $B3,X   
       STX    $84     
       LSR    $83     
       LDX    $83     
       STA    VDELP0,X
       CMP    #$C0    
       BCC    L1B5A   
       ROR            
       BMI    L1B5B   
L1B5A: LSR            
L1B5B: CLC            
       ADC    L1EC3,Y 
       STA    $A7,X   
       CMP    #$C0    
       BCC    L1B72   
       PHA            
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $86     
       LDA    #$00    
       STA    $A7,X   
       PLA            
L1B72: CLC            
       ADC    $87     
       CMP    #$C0    
       BCC    L1B7D   
       LDA    #$00    
       STA    $86     
L1B7D: STA    $A9,X   
       LDX    $84     
       LDA    $AF,X   
       CLC            
       ADC    L1EC2,Y 
       CMP    #$A0    
       BCC    L1B8E   
       CLC            
       ADC    #$60    
L1B8E: PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $85     
       TAY            
       PLA            
       AND    #$0F    
       CLC            
       ADC    $85     
       CMP    #$0F    
       BCC    L1BA3   
       SBC    #$0F    
       INY            
L1BA3: SEC            
       SBC    #$08    
       STA    WSYNC   
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       LDX    $83     
       STA    HMP0,X  
L1BB2: DEY            
       BPL    L1BB2   
       STA    RESP0,X 
       RTS            

L1BB8: LDA    $99     
       ASL            
       EOR    $99     
       ASL            
       ASL            
       ROL    $99     
       RTS            

L1BC2: BIT    $9F     
       BVS    L1BFE   
       LDA    $82     
       SED            
       SEC            
       SBC    #$01    
       CLD            
       BCC    L1BFE   
       STA    $82     
       LDA    #$4E    
       STA    $B3     
       LDA    #$40    
       STA    $9F     
       LDA    #$00    
       STA    $B7     
       STA    $BF     
       STA    $BB     
       LDX    #$94    
       LDA    $A6     
       EOR    #$80    
       STA    $A6     
       BPL    L1BED   
       LDX    #$84    
L1BED: STX    $AF     
       LDA    #$8B    
L1BF1: LDX    #$01    
       LDY    $A3,X   
       BEQ    L1BFC   
       DEX            
       LDY    $A3,X   
       BNE    L1BFE   
L1BFC: STA    $A3,X   
L1BFE: RTS            

L1BFF: LDX    #$FF    
       CPX    $97     
       BNE    L1BFE   
       INX            
       STX    $AC     
       SED            
       LDA    $82     
       SBC    #$10    
       CLD            
       BCC    L1BC2   
       STA    $82     
       LDA    #$28    
       STA    $97     
       LDA    #$F0    
       STA    $9A     
       LDA    #$6A    
       BNE    L1BF1   
L1C1E: LDY    #$C3    
       LDA    $AF,X   
       CMP    #$0A    
       BCC    L1C4E   
       CMP    #$6E    
       BCS    L1C4E   
       LDA    $B3,X   
       CMP    #$04    
       BCC    L1C4E   
       CMP    #$68    
       BCS    L1C4E   
       LDA    #$F8    
       STA    $9A     
       SEC            
       ROR    $8D     
       LDA    #$BA    
       STA    $A3     
       SED            
       LDA    $82     
       SBC    #$15    
       STA    $82     
       CLD            
       BCS    L1C4C   
       JSR    L1C61   
L1C4C: LDY    #$C0    
L1C4E: STY    $9F,X   
       RTS            

L1C51: LDA    $AD,X   
       CLC            
       ADC    $85     
       CMP    #$04    
       BEQ    L1C60   
       CMP    #$FC    
       BEQ    L1C60   
       STA    $AD,X   
L1C60: RTS            

L1C61: LDA    #$BA    
       STA    $A3     
       LDA    #$C7    
       STA    $A5     
       LDA    #$80    
       STA    $9A     
       STA    $8D     
       LDA    #$C0    
       STA    $A1     
       STA    $A0     
       LDX    #$01    
       STX    $9B     
       DEX            
       STX    $A6     
       RTS            

L1C7D: .byte $00,$00,$00,$8B,$8A,$BA,$AB,$AA,$BB
L1C86: .byte $00,$00,$00,$B8,$A0,$A0,$B8,$88,$B8,$00,$00,$00
L1C92: .byte $00,$3F,$40,$49,$89,$89,$89,$89,$48,$40,$3F,$00
L1C9E: .byte $00,$FF,$00,$54,$54,$57,$54,$54,$A3,$00,$FF,$00
L1CAA: .byte $00,$FF,$00,$99,$A5,$AD,$A1,$A5,$19,$00,$FF,$00
L1CB6: .byte $00,$FC,$02,$32,$49,$41,$41,$49,$32,$02,$FC,$00
L1CC2: .byte $03,$03,$03,$02,$02,$02,$01,$01,$01,$00,$00,$01,$01,$01,$02,$02
       .byte $02,$03,$03,$03,$00,$C2,$00,$0A,$8A,$1C,$A8,$46,$A8,$00,$02,$00
       .byte $0A,$0A,$0F,$08,$06,$08
L1CE8: .byte $40,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$08,$04,$02,$02
       .byte $00,$00
L1CFA: .byte $00,$04,$08,$10,$19,$5B
L1D00: .byte $00,$FE,$86,$86,$82,$82,$82,$FE,$00,$18,$18,$18,$18,$08,$08,$08
       .byte $00,$FE,$C0,$C0,$FE,$02,$82,$FE,$00,$FE,$86,$06,$7E,$04,$84,$FC
       .byte $00,$0C,$0C,$7E,$44,$44,$44,$40,$00,$FE,$86,$06,$FE,$80,$80,$FE
       .byte $00,$FE,$86,$86,$FE,$80,$82,$FE,$00,$0C,$0C,$0C,$0C,$04,$04,$7C
       .byte $00,$FE,$86,$86,$FE,$44,$44,$7C,$00,$06,$06,$06,$FE,$82,$82,$FE
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$E5,$84,$84,$84,$8E,$00,$00
       .byte $A5,$AA,$EA,$AA,$48,$00,$00,$13,$AA,$AA,$AA,$92,$00,$00,$EA,$AE
       .byte $8A,$AA,$E4,$00,$00,$85,$84,$E4,$A4,$EE,$00,$00,$AC,$EA,$AA,$AA
       .byte $4C,$00,$00,$8A,$88,$A8,$D8,$88,$00,$00,$00,$00,$41,$63,$36,$1C
       .byte $08,$00,$41,$63,$36,$5D,$6B,$36,$1C,$08
L1D9A: .byte $9E,$A2,$A6,$AE,$0D,$08,$05,$00,$40,$10,$08,$00,$C0,$B0,$A0,$90
       .byte $10,$0A,$05,$00,$80,$60,$40,$08,$06,$04,$02,$00
L1DB6: .byte $00
L1DB7: .byte $01,$04,$09,$10,$11,$14,$19,$20,$21,$24,$29,$30,$3A,$48,$5A,$70
       .byte $71,$74,$79,$80,$8A,$98,$AA,$C0,$00,$01,$04,$09,$10,$1A,$28,$3A
       .byte $50
L1DD8: .byte $5E
L1DD9: .byte $65,$88,$50,$91,$50,$91,$88,$91,$91,$57,$50,$6C,$73,$7A,$81
L1DE8: LDX    #$00    
       LDY    #$00    
       ASL            
       BCS    L1DF0   
       DEX            
L1DF0: ASL            
       BCS    L1DF4   
       INX            
L1DF4: ASL            
       BCS    L1DF8   
       INY            
L1DF8: ASL            
       BCS    L1DFC   
       DEY            
L1DFC: RTS            

L1DFD: .byte $52,$47,$53,$38,$10,$7C,$10,$38,$7C,$7C,$7C,$38,$7C,$FE,$FE,$FE
       .byte $FE,$FE,$7C,$10,$10,$38,$10,$10,$28,$7C,$28,$10,$10,$54,$38,$FE
       .byte $38,$54,$10,$10,$10,$28,$00,$00,$38,$44,$28,$00,$00,$00,$7C,$C6
       .byte $6C,$00,$00,$00,$00,$10,$38,$6C,$44,$28,$00,$00,$00,$00,$00,$00
       .byte $00,$10,$38,$6C,$D6,$82,$44,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $10,$38,$6C,$54,$54,$44,$6C,$28,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$10,$28,$38,$6C,$FE,$D6,$D6,$82,$82,$C6,$C6,$44,$00,$00
       .byte $00,$00,$00,$10,$38,$28,$38,$7C,$44,$44,$44,$7C,$FE,$82,$82,$82
       .byte $82,$82,$FE,$7C,$7C,$44,$44,$44,$44,$44,$44,$7C,$7C,$FE,$FE,$82
       .byte $82,$82,$82,$82,$82,$82,$82,$82,$82,$FE,$FE,$7C,$7C,$7C,$44,$44
       .byte $44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$7C,$7C,$7C,$FE,$FE,$FE
       .byte $82,$82,$82,$82,$82,$82,$82,$82,$82,$82,$82,$82,$82,$82,$82,$82
       .byte $FE,$FE,$FE
L1EC0: .byte $10,$01
L1EC2: .byte $0C
L1EC3: .byte $0A,$10,$03,$0C,$09,$10,$05,$0C,$08,$10,$07,$0C,$07,$15,$0A,$07
       .byte $06,$15,$0E,$07,$04,$17,$14,$00,$02,$17,$1C,$00,$00
L1EE0: .byte $A8,$0A,$FA,$38,$DA,$6A,$5A
L1EE7: LDA    #$01    
       LDX    $C3     
       BNE    L1EFE   
       STA    $C3     
       SED            
       CLC            
       ADC    $9E     
       STA    $9E     
       CLD            
       LDA    #$05    
       ADC    $9C     
       BCS    L1EFE   
       STA    $9C     
L1EFE: RTS            

L1EFF: .byte $DF
L1F00: .byte $10,$28,$18,$20,$08,$24,$18,$50,$24,$02,$08,$A8,$3C,$52,$24,$20
       .byte $20,$00,$48,$20,$14,$10,$24,$20,$08,$40,$00,$20,$00,$44,$80,$48
       .byte $12,$58,$A2,$20,$48,$00,$80,$00,$00,$00,$04,$20,$00,$10,$00,$28
       .byte $40,$10,$24,$00,$40,$10,$00,$08,$00,$00,$00,$00,$00,$00,$04,$00
       .byte $40,$00,$20,$00,$00,$08,$00,$00,$20,$00,$04,$00,$00,$00,$00,$00
       .byte $FF,$11,$0A,$12,$09,$13,$0B,$14,$0A,$15,$09,$16,$08,$17,$07,$18
       .byte $06,$19,$05,$1A,$04,$1B,$03,$1C,$02,$1D,$01,$FF,$81,$1D,$82,$1C
       .byte $82,$1B,$83,$1B,$83,$1A,$84,$19,$84,$19,$85,$18,$87,$0A,$89,$0A
       .byte $8B,$0B,$8B,$0C,$8B,$0C,$8A,$0D,$87,$0E,$84,$0E,$FF,$21,$0C,$21
       .byte $0C,$21,$0C,$21,$0C,$21,$0C,$21,$0C,$22,$0B,$22,$08,$24,$07,$24
       .byte $07,$24,$07,$25,$08,$28,$08,$28,$09,$28,$09,$2E,$06,$2E,$05,$2F
       .byte $05,$2F,$06,$2F,$06,$27,$07,$2F,$07,$2F,$07,$FF,$18,$18,$18,$00
       .byte $13,$13,$00,$13,$13,$00,$13,$13,$FF,$17,$00,$17,$00,$17,$00,$17
       .byte $FF,$08,$08,$08,$08,$08,$08,$07,$07,$00,$00,$09,$09,$09,$09,$09
       .byte $09,$00,$0C,$0C,$0C,$00,$13,$13,$13,$FF,$13,$13,$13,$17,$00,$13
       .byte $13,$17,$1A,$1D
L1FF4: .byte $FF,$E0,$69,$FF,$02,$11,$01,$01,$00,$10,$00,$10
