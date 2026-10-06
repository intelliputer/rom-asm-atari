; Disassembly of roms/Rescue Terra I.bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Rescue Terra I.bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP0FB  =  $32
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $1000
L1000: LDA    #$04    
       STA    $E3     
       LDA    #$93    
       STA    $86     
       LDY    $BF     
L100A: LDA    ($86),Y 
       TAX            
       TXS            
       LDA    ($84),Y 
       TAX            
       LDA    ($82),Y 
       STA    $E1     
       LDA    ($80),Y 
       STA    WSYNC   
       STA    ENAM0   
       STX    GRP0    
       TSX            
       STX    GRP1    
       LDX    #$00    
       LDA    $E1     
       STA    ($BB,X) 
       DEY            
       BPL    L100A   
       LDX    $E3     
       BMI    L1092   
       LDA    $90,X   
       STA    $80     
       LDA    $97,X   
       STA    $84     
       LDA    $A7,X   
       STA    HMP1    
       AND    #$0F    
       SEC            
       SBC    #$04    
       TAX            
       LDY    #$17    
       STA    WSYNC   
       LDA    ($84),Y 
       STA    GRP0    
       LDA    ($80),Y 
       STA    ENAM0   
L104B: DEX            
       BNE    L104B   
       STA    RESP1   
       STA    WSYNC   
       DEY            
       LDA    ($80),Y 
       STA    ENAM0   
       LDA    ($84),Y 
       STA    GRP0    
       LDX    $E3     
       LDA    CXM0P   
       AND    #$C0    
       STA    $E1     
       LDA    CXPPMM  
       LSR            
       LSR            
       ORA    $E1     
       STA    $98,X   
       LDA    $B6,X   
       STA    $86     
       LDA    $A2,X   
       STA    COLUP1  
       LDA    $89,X   
       STA    $82     
       DEY            
       LDA    ($80),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       LDA    ($84),Y 
       STA    GRP0    
       DEC    $E3     
       LDA    $EC     
       ORA    CXP0FB  
       STA    $EC     
       STA    CXCLR   
       DEY            
       JMP    L100A   
L1092: LDA    $8F     
       STA    $80     
       LDA    $96     
       STA    $84     
       LDA    #$17    
       SEC            
       SBC    $BF     
       TAY            
L10A0: LDA    ($84),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($80),Y 
       STA    ENAM0   
       DEY            
       BPL    L10A0   
       TXS            
       INX            
       STX    GRP1    
       STX    REFP0   
       LDA    CXM0P   
       AND    #$C0    
       STA    $E1     
       LDA    CXPPMM  
       LSR            
       LSR            
       ORA    $E1     
       STA    $97     
       STX    COLUP0  
       STX    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$07    
       STA    WSYNC   
L10CF: DEX            
       BNE    L10CF   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STX    HMP1    
       DEX            
       STX    HMP0    
       LDA    $CE     
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    $F6     
       STA    COLUBK  
       STA    WSYNC   
       INX            
       STX    PF2     
       JSR    L1BD9   
       INX            
       STX    GRP0    
       STX    GRP1    
       LDX    #$02    
L10FD: LDA    $AE,X   
       STA    $DB,X   
       DEX            
       BPL    L10FD   
       STA    WSYNC   
       STX    PF2     
       JSR    L1BB6   
       JSR    L1BD9   
       INX            
       STX    GRP0    
       STX    GRP1    
       LDX    #$02    
L1115: LDA    $B1,X   
       STA    $DB,X   
       DEX            
       BPL    L1115   
       STA    WSYNC   
       STX    PF2     
       JSR    L1BB6   
       LDA    $F3     
       BMI    L1133   
       LDX    #$06    
L1129: LDA    #$80    
       ORA    $CF,X   
       STA    $CF,X   
       DEX            
       DEX            
       BNE    L1129   
L1133: JSR    L1BD9   
       INX            
       STX    GRP0    
       STX    GRP1    
       LDA    $EC     
       BPL    L1142   
       JSR    L1C3B   
L1142: STA    WSYNC   
       LDA    #$FF    
       STA    PF2     
       LDA    #$24    
       STA    TIM64T  
L114D: LDA    $CD     
       AND    #$03    
       STA    $E1     
       INC    $CD     
       LDX    #$04    
L1157: LDA    $97,X   
       BPL    L11BB   
       LDY    $B6,X   
       BMI    L11BB   
       PHA            
       LDA    $E8     
       AND    #$03    
       CMP    #$03    
       BEQ    L116E   
       LDY    $E1     
       CPY    #$02    
       BCS    L11BA   
L116E: CMP    #$02    
       BCS    L118C   
       LDA    $B6,X   
       BNE    L117C   
       LDA    #$25    
       LDY    #$02    
       BNE    L1198   
L117C: CMP    #$15    
       BNE    L1186   
       LDA    #$75    
       LDY    #$02    
       BNE    L1198   
L1186: LDA    #$25    
       LDY    #$01    
       BNE    L1198   
L118C: BNE    L1194   
       LDA    #$25    
       LDY    #$04    
       BNE    L1198   
L1194: LDA    #$50    
       LDY    #$06    
L1198: JSR    L1B94   
       LDA    $F1     
       BPL    L11AB   
       LDA    $E8     
       AND    #$03    
       CMP    #$03    
       BEQ    L11AB   
       LDA    #$5F    
       STA    $F1     
L11AB: LDY    $E1     
       LDA    #$00    
       STA.wy $00C8,Y 
       LDA    #$A3    
       STA    $B6,X   
       LDA    #$0F    
       STA    $A2,X   
L11BA: PLA            
L11BB: ASL            
       BPL    L11D0   
       LDY    $E7     
       BNE    L11D0   
       LDY    $E1     
       CPY    #$02    
       BCC    L11D0   
       PHA            
       STA.wy $00C8,Y 
       JSR    L1C3B   
       PLA            
L11D0: ASL            
       BPL    L11E8   
       LDY    $B6,X   
       BMI    L11E8   
       LDY    $E7     
       BNE    L11E8   
       PHA            
       LDA    #$A3    
       STA    $B6,X   
       LDA    #$0F    
       STA    $A2,X   
       JSR    L1C3B   
       PLA            
L11E8: DEX            
       BMI    L11EE   
       JMP    L1157   
L11EE: INX            
       STX    $EC     
       JSR    L1B60   
       LDA    $E8     
       AND    #$10    
       BEQ    L1221   
       LDA    $E6     
       BNE    L1221   
       LDA    $CD     
       AND    #$02    
       BNE    L1221   
       LDA    $B2     
       CMP    $F0     
       BEQ    L1221   
       SED            
       LDA    $B3     
       SEC            
       SBC    #$01    
       STA    $B3     
       LDA    $B2     
       SBC    #$00    
       STA    $B2     
       CLD            
       BCS    L1221   
       LDA    #$00    
       STA    $B2     
       STA    $B3     
L1221: LDY    $E7     
       BEQ    L1228   
       JMP    L13C4   
L1228: LDX    #$00    
       LDA    SWCHA   
       BMI    L1233   
       LDY    #$10    
       LDX    #$60    
L1233: ASL            
       BMI    L123A   
       LDY    #$F0    
       LDX    #$AF    
L123A: PHA            
       LDA    $E8     
       AND    #$03    
       LSR            
       BEQ    L1245   
       TXA            
       BEQ    L1247   
L1245: STA    $ED     
L1247: LDA    $E8     
       AND    #$04    
       BEQ    L1253   
       PLA            
       ASL            
       ASL            
       ASL            
       ASL            
       PHA            
L1253: PLA            
       ASL            
       BMI    L125F   
       LDX    $F8     
       CPX    #$74    
       BCS    L1274   
       INC    $F8     
L125F: ASL            
       BMI    L1274   
       LDX    #$05    
       LDA    $E8     
       AND    #$03    
       CMP    #$02    
       BCC    L126E   
       LDX    #$32    
L126E: CPX    $F8     
       BCS    L1274   
       DEC    $F8     
L1274: LDA    $BD     
       JSR    L1B0D   
       STA    $BD     
       LDA    $E8     
       AND    #$03    
       LSR            
       BEQ    L129C   
       BCS    L1287   
       JMP    L13C4   
L1287: LDA    $BD     
       AND    #$0F    
       LDY    #$8B    
       CMP    #$0C    
       BCS    L1297   
       LDY    #$67    
       CMP    #$07    
       BCS    L1299   
L1297: STY    $BD     
L1299: JMP    L13C4   
L129C: LDA    $BD     
       JSR    L1FD1   
       STA    $BD     
       LDA    $F3     
       BEQ    L12B6   
       LDA    $E8     
       BEQ    L12B0   
       AND    #$03    
       LSR            
       BEQ    L12B6   
L12B0: JMP    L13C4   
L12B3: JMP    L1388   
L12B6: LDA    $CD     
       LSR            
       LDA    $EF     
       BNE    L12BF   
       BCC    L12B3   
L12BF: LDX    $BF     
       DEX            
       LDA    $EF     
       BPL    L12C9   
       BCC    L12C9   
       DEX            
L12C9: STX    $BF     
       TXA            
       BPL    L12B3   
       LDA    #$17    
       CPX    #$FF    
       BEQ    L12D6   
       LDA    #$16    
L12D6: STA    $BF     
       LDY    $BA     
       LDX    #$03    
L12DC: LDA    $B6,X   
       STA    $B7,X   
       LDA    $A7,X   
       STA    $A8,X   
       LDA    $A2,X   
       STA    $A3,X   
       LDA    $9D,X   
       STA    $9E,X   
       LDA    $89,X   
       STA    $8A,X   
       DEX            
       BPL    L12DC   
       LDA    #$72    
       STA    $89     
       STY    $B6     
       LDA    $F3     
       BEQ    L1304   
       TYA            
       BPL    L1343   
       LDA    $E6     
       BNE    L1343   
L1304: LDY    #$93    
       LDX    #$7D    
       LDA    $BE     
       LSR            
       BCC    L131C   
L130D: LDY    #$93    
       INX            
       BMI    L1336   
       LDY    $EA     
       BEQ    L131C   
       DEC    $EA     
       LDY    #$21    
       BNE    L1336   
L131C: LSR            
       LDA    $EB     
       BCS    L132E   
       CMP    #$0F    
       BCC    L132E   
       SEC            
       SBC    #$10    
       STA    $EB     
       LDY    #$00    
       BEQ    L1336   
L132E: AND    #$0F    
       BEQ    L130D   
       DEC    $EB     
       LDY    #$15    
L1336: STY    $B6     
       LDA    #$10    
       STA    $A2     
       LDX    #$72    
       STX    $89     
       JSR    L1C1F   
L1343: LDA    $BE     
       EOR    $C8     
       AND    #$07    
       TAX            
       LDA    $A8     
       AND    #$0F    
       CMP    L1FC9,X 
       BNE    L1359   
       INX            
       INX            
       TXA            
       AND    #$07    
       TAX            
L1359: LDA    $BD     
       AND    #$F0    
       ORA    L1FC9,X 
       STA    $A7     
       LDA    $E8     
       AND    #$03    
       BEQ    L137A   
       LDA    #$00    
       LDX    $B6     
       CPX    #$15    
       BNE    L1382   
       LDA    #$F0    
       LDX    $BE     
       BMI    L1382   
       LDA    #$10    
       BNE    L1382   
L137A: LDA    $BE     
       AND    #$07    
       TAX            
       LDA    L1EE7,X 
L1382: STA    $9D     
       LDA    #$24    
       STA    $A2     
L1388: LDA    $E8     
       AND    #$03    
       BNE    L1394   
       LDA    $CD     
       AND    #$03    
       BNE    L13C4   
L1394: LDX    #$04    
L1396: LDY    $9D,X   
       BEQ    L13C1   
       LDA    $BE     
       STX    $E1     
       EOR    $E1     
       BNE    L13A8   
       TYA            
       EOR    #$E0    
       TAY            
       STY    $9D,X   
L13A8: LDA    $A7,X   
       JSR    L1B0D   
       STA    $A7,X   
       AND    #$0F    
       CMP    #$0D    
       BCC    L13B9   
       LDA    #$F0    
       BNE    L13BF   
L13B9: CMP    #$08    
       BCS    L13C1   
       LDA    #$10    
L13BF: STA    $9D,X   
L13C1: DEX            
       BPL    L1396   
L13C4: LDX    #$04    
       LDA    $CD     
       AND    #$0F    
       STA    $E1     
L13CC: LDA    $A2,X   
       CMP    #$10    
       BCS    L13E6   
       TAY            
       DEY            
       TYA            
       CMP    #$08    
       BCS    L140B   
       TYA            
       BEQ    L13E0   
       LDY    #$C4    
       BNE    L13E2   
L13E0: LDY    #$93    
L13E2: STY    $B6,X   
       BNE    L140B   
L13E6: LDA    $B6,X   
       CMP    #$15    
       BNE    L13F8   
       LDY    #$97    
       LDA    $CD     
       AND    #$08    
       BNE    L13F6   
       LDY    #$9F    
L13F6: STY    $89,X   
L13F8: TAY            
       BNE    L1407   
       LDY    #$86    
       LDA    $CD     
       AND    #$0C    
       BNE    L1405   
       LDY    #$B5    
L1405: STY    $89,X   
L1407: LDA    #$10    
       ORA    $E1     
L140B: STA    $A2,X   
       DEX            
       BPL    L13CC   
       LDA    $F5     
       CMP    #$39    
       BCS    L141E   
       LDA    #$F4    
       STA    $CE     
       LDA    #$18    
       STA    $F6     
L141E: INC    $E9     
       LDA    $BD     
       AND    #$F0    
       BEQ    L142C   
       LDA    $F8     
       AND    #$0F    
       BNE    L1433   
L142C: LDA    $E9     
       LDX    $C2     
       JSR    L1B87   
L1433: LDA    INTIM   
       BNE    L1433   
       LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    VSYNC   
       STA    TIM8T   
       LDA    $F3     
       BEQ    L1452   
       LDA    $E8     
       AND    #$60    
       BNE    L1452   
L144F: JMP    L151F   
L1452: LDA    $CD     
       AND    #$03    
       TAX            
       STX    $E3     
       LDY    $C8,X   
       BNE    L144F   
       LSR            
       BEQ    L14B8   
       LDA    $E8     
       AND    #$03    
       CMP    #$03    
       BEQ    L14B8   
       CMP    #$02    
       BNE    L1494   
       LDA    $BA     
       CMP    #$60    
       BNE    L144F   
       LDA    $CA     
       BNE    L147A   
       LDA    $CB     
       BEQ    L147E   
L147A: CMP    #$32    
       BCC    L144F   
L147E: LDA    $BE     
       AND    #$07    
       BNE    L144F   
       LDA    $AB     
       STA    $C0,X   
       LDA    #$1F    
       STA    $F1     
       LDA    #$14    
       ADC    $BF     
       STA    $C8,X   
       BNE    L144F   
L1494: LDA    $BE     
       AND    #$03    
       TAY            
       LDA.wy $00B6,Y 
       CMP    #$17    
       BCS    L144F   
       LDA    #$1F    
       STA    $F1     
       LDA    L1FE2,Y 
       CLC            
       ADC    $BF     
       STA    $C8,X   
       LDA.wy $00A7,Y 
       LDY    #$80    
       JSR    L1B0D   
       STA    $C0,X   
       BNE    L144F   
L14B8: LDA    $E7     
       BNE    L151F   
       LDA    $E6     
       BNE    L151F   
       LDY    INPT4   
       LDA    $E8     
       AND    #$04    
       BEQ    L14CE   
       LDA    $CD     
       BMI    L14CE   
       LDY    INPT5   
L14CE: TYA            
       BMI    L151F   
       LDA    $E8     
       AND    #$03    
       LSR            
       BNE    L14FC   
       LDA    $C8     
       BNE    L14E0   
       LDA    $C9     
       BEQ    L14E9   
L14E0: SEC            
       SBC    #$1E    
       BMI    L151F   
       CMP    $F8     
       BCC    L151F   
L14E9: LDA    $F8     
       STA    $C8,X   
       LDA    #$1F    
       STA    $F2     
       LDA    $BD     
       LDY    #$50    
       JSR    L1B0D   
       STA    $C0,X   
       BNE    L151F   
L14FC: LDX    $E3     
       LDA    $F8     
       STA    $C8,X   
       LDA    #$1F    
       STA    $F2     
       LDA    $BD     
       CPX    #$02    
       BCC    L1519   
       LDY    #$70    
       LDA    $ED     
       BPL    L1514   
       LDY    #$90    
L1514: LDA    $BD     
       JSR    L1B0D   
L1519: STA    $C0,X   
       LDA    $ED     
       STA    $C4,X   
L151F: LDX    $E3     
       LDA    $E8     
       AND    #$03    
       TAY            
       LDA    $C8,X   
       BEQ    L156B   
       CPY    #$03    
       BEQ    L1536   
       CPX    #$02    
       BCS    L1552   
       CPY    #$02    
       BCC    L155C   
L1536: LDY    $C0,X   
       DEY            
       LDA    $C4,X   
       BMI    L153F   
       INY            
       INY            
L153F: STY    $C0,X   
       TYA            
       AND    #$0F    
       CMP    #$04    
       BEQ    L154C   
       CMP    #$0D    
       BNE    L156B   
L154C: LDA    #$00    
       STA    $C8,X   
       BEQ    L156B   
L1552: LDA    #$FB    
       CPY    #$02    
       BNE    L155E   
       LDA    #$05    
       BNE    L155E   
L155C: LDA    #$0B    
L155E: STA    $E1     
       LDA    $C8,X   
       CLC            
       ADC    $E1     
       BPL    L1569   
       LDA    #$00    
L1569: STA    $C8,X   
L156B: LDA    INTIM   
       BNE    L156B   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$25    
       STA    TIM64T  
       LDA    $F3     
       BEQ    L15A7   
       LDA    $E6     
       BEQ    L15A7   
       CMP    #$20    
       BCS    L15A7   
       LDX    $E8     
       BEQ    L15A4   
       LDX    #$00    
       STX    AUDV0   
       LDX    #$06    
       LDY    #$08    
       CMP    #$10    
       BCS    L15A1   
       LDY    #$0F    
       CMP    #$01    
       BCS    L15A1   
       LDX    #$00    
L15A1: TYA            
       LDY    #$04    
L15A4: JMP    L1640   
L15A7: LDA    $F2     
       BMI    L15E9   
       CMP    #$20    
       BCS    L15C9   
       LDX    #$06    
       CMP    #$17    
       BCC    L15B7   
       LDX    #$08    
L15B7: STX    AUDC0   
       EOR    #$1F    
       STA    AUDF0   
       LDA    $F2     
       LSR            
       LSR            
       LSR            
       STA    AUDV0   
       DEC    $F2     
       JMP    L15E9   
L15C9: LDX    #$03    
       STX    AUDC0   
       ROR            
       STA    AUDV0   
       ROL            
       EOR    #$1F    
       TAX            
       AND    #$04    
       BEQ    L15DA   
       STX    AUDF0   
L15DA: LDX    $F2     
       DEX            
       CPX    #$40    
       BNE    L15E3   
       LDX    #$FF    
L15E3: STX    $F2     
       LDX    #$00    
       BEQ    L1644   
L15E9: LDA    $F1     
       BPL    L1613   
       LDX    $E8     
       BEQ    L1644   
       TXA            
       LDY    #$02    
       LDX    #$04    
       AND    #$03    
       CMP    #$03    
       BNE    L160A   
       LDX    $E7     
       BNE    L1640   
       LDY    $E6     
       BNE    L1640   
       TAY            
       LDA    $CD     
       AND    #$07    
       TAX            
L160A: LDA    $F8     
       LSR            
       LSR            
       EOR    #$1F    
       JMP    L1640   
L1613: CMP    #$20    
       BCS    L1625   
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $F1     
       EOR    #$1F    
       DEC    $F1     
       LDY    #$0D    
       BNE    L1640   
L1625: LDX    $F1     
       DEX            
       CPX    #$40    
       BNE    L162E   
       LDX    #$FF    
L162E: STX    $F1     
       LSR            
       TAX            
       LDA    $F1     
       EOR    #$1F    
       TAY            
       AND    #$04    
       BNE    L163D   
       LDY    #$FF    
L163D: TYA            
       LDY    #$02    
L1640: STY    AUDC1   
       STA    AUDF1   
L1644: STX    AUDV1   
       LDA    $E8     
       AND    #$03    
       CMP    #$02    
       BEQ    L1656   
       BCS    L1653   
       JMP    L17C8   
L1653: JMP    L1761   
L1656: LDA    $CD     
       AND    #$1F    
       BNE    L1666   
       LDA    $BE     
       AND    #$03    
       TAX            
       LDA    L1EEF,X 
       STA    $F4     
L1666: LDA    $BF     
       CLC            
       ADC    $F4     
       STA    $BF     
       LDX    #$00    
       LDY    #$01    
       CMP    #$20    
       BCS    L167D   
       LDX    #$17    
       LDY    #$FF    
       CMP    #$18    
       BCC    L1681   
L167D: STY    $F4     
       STX    $BF     
L1681: LDX    #$02    
L1683: LDA    $B6,X   
       CMP    #$93    
       BNE    L16B8   
       LDA    $EA     
       BEQ    L16BB   
       LDY    $BE     
       BMI    L169E   
       CMP    #$10    
       BCC    L16BB   
       SEC            
       SBC    #$10    
       STA    $EA     
       LDA    #$6B    
       BNE    L16A6   
L169E: AND    #$0F    
       BEQ    L16BB   
       DEC    $EA     
       LDA    #$60    
L16A6: STA    $B6,X   
       LDA    #$3E    
       STA    $A7,X   
       LDA    #$F0    
       STA    $9D,X   
       LDA    #$01    
       STA    $9F,X   
       LDA    #$24    
       STA    $A2,X   
L16B8: DEX            
       BNE    L1683   
L16BB: LDX    #$02    
L16BD: LDY    $9F,X   
       LDA    $B6,X   
       BMI    L1703   
       CLC            
       ADC    $9F,X   
       CMP    #$68    
       BCS    L16DE   
       CMP    #$66    
       BCC    L16D4   
       LDY    #$FF    
       LDA    #$65    
       BNE    L16F0   
L16D4: CMP    #$60    
       BCS    L16F0   
       LDY    #$01    
       LDA    #$60    
       BNE    L16F0   
L16DE: CMP    #$7A    
       BCC    L16E8   
       LDY    #$FF    
       LDA    #$79    
       BNE    L16F0   
L16E8: CMP    #$6B    
       BCS    L16F0   
       LDY    #$01    
       LDA    #$6B    
L16F0: STA    $B6,X   
       STY    $9F,X   
       LDY    #$45    
       CMP    #$66    
       BCC    L16FC   
       LDY    #$36    
L16FC: STY    $E1     
       CLC            
       ADC    $E1     
       STA    $89,X   
L1703: DEX            
       BNE    L16BD   
       LDX    #$02    
L1708: LDA    $CD     
       LSR            
       LDY    #$F0    
       LDA    $EF     
       BNE    L1713   
       BCC    L1744   
L1713: BPL    L1717   
       LDY    #$E0    
L1717: LDA    $A7,X   
       JSR    L1B0D   
       CMP    #$65    
       BEQ    L1724   
       CMP    #$84    
       BNE    L1742   
L1724: LDA    #$55    
       LDY    $BA     
       BPL    L1740   
       LDY    $B6,X   
       BMI    L1742   
       CPY    #$67    
       BCS    L1740   
       LDY    #$60    
       STY    $BA     
       STA    $AB     
       LDY    #$A4    
       STY    $8D     
       LDY    #$93    
       STY    $B6,X   
L1740: LDA    #$3E    
L1742: STA    $A7,X   
L1744: DEX            
       BNE    L1708   
       LDA    $AB     
       LDY    #$10    
       JSR    L1B0D   
       CMP    #$2E    
       BNE    L175C   
       LDY    #$93    
       CPY    $BA     
       BEQ    L175C   
       STY    $BA     
       INC    $EA     
L175C: STA    $AB     
       JMP    L17C8   
L1761: LDA    $E7     
       BEQ    L176D   
       DEC    $BF     
       BPL    L17C8   
       INC    $BF     
       BEQ    L17C8   
L176D: LDA    $CD     
       LSR            
       LDA    $EF     
       BNE    L1776   
       BCC    L17B9   
L1776: LDX    $BF     
       INX            
       TAY            
       BPL    L177F   
       BCC    L177F   
       INX            
L177F: STX    $BF     
       LDY    #$01    
       CPX    #$19    
       BEQ    L178C   
       DEY            
       CPX    #$18    
       BNE    L17B9   
L178C: STY    $BF     
       LDX    #$00    
L1790: LDA    $A3,X   
       STA    $A2,X   
       LDA    $A8,X   
       STA    $A7,X   
       LDA    $B7,X   
       STA    $B6,X   
       INX            
       CPX    #$04    
       BNE    L1790   
       LDY    #$36    
       LDX    #$FC    
       CMP    #$36    
       BNE    L17AD   
       LDY    #$4B    
       LDX    #$C7    
L17AD: DEC    $EA     
       BPL    L17B5   
       INC    $EA     
       LDY    #$93    
L17B5: STY    $BA     
       STX    $AB     
L17B9: LDX    #$04    
L17BB: LDY    #$93    
       LDA    $B6,X   
       BMI    L17C3   
       LDY    #$80    
L17C3: STY    $89,X   
       DEX            
       BPL    L17BB   
L17C8: JSR    L1C1F   
       LDX    #$0D    
       LDA    #$42    
L17CF: STA    $8F,X   
       DEX            
       BPL    L17CF   
       STA    $86     
       LDY    #$1F    
       STY    $85     
       LDA    $E8     
       BNE    L17E1   
       JMP    L1863   
L17E1: LDA    $E7     
       BEQ    L1810   
       BPL    L17F7   
       AND    #$0F    
       STA    $B5     
       BNE    L17ED   
L17ED: LDX    #$9D    
       CMP    #$08    
       BCS    L1818   
       LDX    #$BE    
       BNE    L1818   
L17F7: CMP    #$40    
       BNE    L1804   
       LDA    #$00    
       STA    $E7     
       JSR    L1C5B   
       LDA    #$88    
L1804: STA    $B5     
       LDA    $E7     
       CMP    #$4E    
       BCC    L1810   
       LDX    #$BE    
       BNE    L1818   
L1810: LDX    #$08    
       LDA    $E8     
       BMI    L1818   
       LDX    #$29    
L1818: CPX    #$30    
       BCC    L182A   
       LDA    #$1E    
       STA    $85     
       LDA    #$93    
       LDY    #$06    
L1824: STA.wy $0096,Y 
       DEY            
       BPL    L1824   
L182A: LDY    $E7     
       BEQ    L1849   
       DEC    $E7     
       CPY    #$81    
       BNE    L1849   
       LDY    #$00    
       STY    $E7     
       STY    $E8     
       STY    AUDV0   
       STY    AUDV1   
       STY    $F5     
       LDA    INPT4   
       STA    $FA     
       JSR    L1C5B   
       BMI    L1863   
L1849: TXA            
       PHA            
       LDA    $F8     
       JSR    L1ABF   
       STA    $96,X   
       TAY            
       PLA            
       CLC            
       ADC    #$10    
       STA    $E1     
       TYA            
       CMP    $E1     
       BCC    L1863   
       JSR    L1B03   
       STA    $96,X   
L1863: LDA    $CD     
       AND    #$03    
       TAY            
       LDA.wy $00C8,Y 
       BEQ    L1898   
       PHA            
       LDA    $E8     
       AND    #$03    
       CMP    #$03    
       BEQ    L1881   
       LDX    #$08    
       CPY    #$02    
       BCS    L1883   
       LDX    #$4B    
       LSR            
       BEQ    L1883   
L1881: LDX    #$29    
L1883: TXA            
       CLC            
       ADC    #$10    
       STA    $E3     
       PLA            
       JSR    L1ABF   
       STA    $8F,X   
       CMP    $E3     
       BCC    L1898   
       JSR    L1B03   
       STA    $8F,X   
L1898: LDA    $E8     
       BNE    L18B0   
       LDA    $F5     
       CMP    #$06    
       BCC    L18B0   
       LDA    $FA     
       BMI    L18AC   
       LDA    INPT4   
       BPL    L18B0   
       STA    $FA     
L18AC: LDA    INPT4   
       BPL    L18B6   
L18B0: LDA    SWCHB   
       LSR            
       BCS    L18E7   
L18B6: LDX    $B4     
       LDA    L1DC7,X 
       STA    $E8     
       JSR    L1DD2   
       LDA    #$88    
       STA    $E6     
       STA    $F2     
       STA    $F1     
       STA    $F3     
       STA    $B5     
       JSR    L1C5B   
       STA    $E7     
       STA    $EF     
       STA    $EE     
       STA    AUDV0   
       STA    $DE     
       STA    $DF     
       STA    $E0     
       LDX    #$05    
L18DF: LDA    L1A84,X 
       STA    $AE,X   
       DEX            
       BPL    L18DF   
L18E7: LDA    $CD     
       AND    #$0F    
       BNE    L191F   
       LDA    SWCHB   
       AND    #$02    
       BNE    L191F   
       STA    $E8     
       STA    AUDV0   
       JSR    L1C5B   
       LDX    $B4     
       INX            
       CPX    #$0B    
       BNE    L1904   
       LDX    #$01    
L1904: STX    $B4     
       LDA    #$F0    
       STA    $F2     
       STA    $F1     
       STA    $B1     
       LDA    #$12    
       STA    $B2     
       STA    $F3     
       TXA            
       ORA    #$A0    
       CMP    #$AA    
       BNE    L191D   
       LDA    #$10    
L191D: STA    $B3     
L191F: LDX    $F3     
       BNE    L1936   
       LDX    #$0A    
       LDA    #$C0    
L1927: STA    $CF,X   
       SEC            
       SBC    #$08    
       DEX            
       DEX            
       BPL    L1927   
       STX    $EA     
       STX    $EB     
       BMI    L195E   
L1936: CLC            
       LDA    #$80    
       ADC    #$80    
       TAX            
L193C: LDY    $DE,X   
       BVC    L1951   
       BNE    L1946   
       LDY    #$AA    
       BNE    L1951   
L1946: CLV            
       TYA            
       AND    #$F0    
       BNE    L1951   
       LDA    #$A0    
       ORA    $DE,X   
       TAY            
L1951: STY    $DB,X   
       INX            
       CPX    #$03    
       BNE    L193C   
       JSR    L1BB6   
       DEX            
       STX    PF2     
L195E: LDA    $E6     
       BEQ    L19C5   
       LDA    SWCHB   
       AND    #$08    
       CMP    $F9     
       BEQ    L196D   
       INC    $E6     
L196D: DEC    $E6     
       BNE    L19C5   
       LDA    $E8     
       BEQ    L19C5   
       AND    #$03    
       BNE    L1987   
       JSR    L1C84   
       LDA    #$02    
L197E: ASL            
       DEX            
       BNE    L197E   
       STA    $EA     
       JMP    L19C5   
L1987: CMP    #$01    
       BNE    L19AB   
       JSR    L1C84   
       LDA    #$0A    
       STA    $EA     
       LDA    #$FB    
L1994: CLC            
       ADC    #$05    
       DEX            
       BNE    L1994   
       STA    $EB     
       LDA    #$10    
       SEC            
       SBC    $EE     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $EB     
       STA    $EB     
       BNE    L19C5   
L19AB: CMP    #$02    
       BNE    L19BD   
       JSR    L1C84   
       INX            
       TXA            
       CLC            
       ROL            
       ROL            
       ROL            
       STA    $EA     
       JMP    L19C5   
L19BD: JSR    L1C84   
       TXA            
       ASL            
       ASL            
       STA    $EA     
L19C5: LDA    INTIM   
       BNE    L19C5   
       STA    $EC     
       LDA    $ED     
       STA    REFP0   
       LDA    $E8     
       AND    #$03    
       LSR            
       TAX            
       BEQ    L19F6   
       LDA    #$00    
       LDX    #$30    
       BCS    L19F6   
       LDA    $CD     
       AND    #$03    
       TAY            
       LDA    #$05    
       CPY    #$02    
       BCC    L19F6   
       LDX    #$10    
       LDY    $EF     
       BEQ    L19F6   
       LDX    #$20    
       INY            
       BNE    L19F6   
       LDX    #$30    
L19F6: STA    WSYNC   
       STA    NUSIZ1  
       STX    NUSIZ0  
       STA    WSYNC   
       LDA    $E8     
       BNE    L1A1C   
       LDA    $CD     
       AND    #$1F    
       BNE    L1A1C   
       INC    $F5     
       BPL    L1A1C   
       ROR    $F7     
       ROL    $F6     
       ROL    $F6     
       ROL    $CE     
       ROL    $CE     
       ROL    $F7     
       LDA    #$40    
       STA    $F5     
L1A1C: LDA    $CD     
       AND    #$03    
       TAX            
       LDA    $C0,X   
       STA    HMM0    
       AND    #$0F    
       TAX            
       BNE    L1A2C   
       LDX    #$05    
L1A2C: STA    WSYNC   
L1A2E: DEX            
       BNE    L1A2E   
       STA    RESM0   
       STA    WSYNC   
       LDA    $9C     
       STA    $84     
       LDA    $8E     
       STA    $82     
       LDA    $95     
       STA    $80     
       LDA    $BD     
       STA    HMP0    
       AND    #$0F    
       TAX            
       BNE    L1A4C   
       LDX    #$05    
L1A4C: STA    WSYNC   
L1A4E: DEX            
       BNE    L1A4E   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    $CD     
       LDX    $E8     
       BNE    L1A71   
       LDX    $B1     
       CPX    #$E0    
       BNE    L1A71   
       LDX    $B2     
       BNE    L1A71   
       STA    $CE     
L1A71: ORA    #$10    
       STA    COLUPF  
       STA    WSYNC   
       STA    HMCLR   
       LDA    $B5     
       STA    COLUP0  
       LDA    #$93    
       STA    $82     
       JMP    L1000   
L1A84: .byte $BC,$DA,$04,$E3,$99,$99,$C8,$C5,$C3,$CB

START:
       LDA    #$00    
       TAX            
L1A91: TXS            
       PHA            
       INX            
       BNE    L1A91   
       LDA    #$1D    
       LDY    #$1F    
       LDX    #$0B    
L1A9C: STY    $80,X   
       STA    $CF,X   
       DEX            
       DEX            
       BPL    L1A9C   
       DEY            
       STY    $87     
       LDX    #$15    
L1AA9: LDA    L1FE6,X 
       STA    $A6,X   
       STX    CTRLPF  
       DEX            
       BNE    L1AA9   
       LDA    SWCHB   
       AND    #$08    
       STA    $F9     
       JMP    L114D   
L1ABD: .byte $A2,$08
L1ABF: STA    $E4     
       STX    $E5     
       LDX    #$06    
       LDA    $BF     
       SEC            
       SBC    $E4     
       BCC    L1AD5   
       STA    $E1     
       LDA    #$18    
       SEC            
       SBC    $E1     
       BNE    L1AF8   
L1AD5: LDA    $BF     
       STA    $E1     
       LDA    #$E8    
       STA    $E2     
L1ADD: DEX            
       LDA    $E2     
       CLC            
       ADC    #$18    
       STA    $E2     
       LDA    $E1     
       CLC            
       ADC    #$18    
       STA    $E1     
       CMP    $E4     
       BCC    L1ADD   
       LDA    $E4     
       SEC            
       SBC    $E2     
       SEC            
       SBC    $BF     
L1AF8: CLC            
       ADC    $E5     
       DEX            
       BPL    L1B01   
       CLC            
       ADC    $BF     
L1B01: INX            
       RTS            

L1B03: DEX            
       BNE    L1B09   
       CLC            
       ADC    $BF     
L1B09: SEC            
       SBC    #$18    
       RTS            

L1B0D: STA    $E4     
       STY    $E5     
       SEC            
       SBC    $E5     
       LDY    $E5     
       BMI    L1B26   
       LDY    $E4     
       BPL    L1B36   
       TAY            
       BMI    L1B36   
       INY            
       TYA            
       SEC            
       SBC    #$10    
       BNE    L1B36   
L1B26: LDY    $E4     
       BMI    L1B36   
       TAY            
       AND    #$F0    
       CMP    #$70    
       BCC    L1B37   
       DEY            
       TYA            
       CLC            
       ADC    #$10    
L1B36: TAY            
L1B37: TYA            
       AND    #$0F    
       CMP    #$04    
       BCC    L1B5D   
       BNE    L1B4B   
       TYA            
       BMI    L1B59   
       AND    #$F0    
       CMP    #$40    
       BCC    L1B58   
       BCS    L1B5D   
L1B4B: CMP    #$0E    
       BNE    L1B58   
       TYA            
       BMI    L1B5A   
       AND    #$F0    
       CMP    #$20    
       BCC    L1B5A   
L1B58: TYA            
L1B59: RTS            

L1B5A: LDA    #$2E    
       RTS            

L1B5D: LDA    #$34    
       RTS            

L1B60: LDA    $AC     
       STA    $E1     
       LDA    $BE     
       STA    $E2     
       LDA    #$00    
       LDX    #$08    
L1B6C: LSR    $E1     
       BCC    L1B73   
       CLC            
       ADC    $E2     
L1B73: ROR            
       ROR    $BE     
       DEX            
       BNE    L1B6C   
       CLC            
       LDA    $BE     
       ADC    $AD     
       STA    $BE     
       INC    $CC     
       LDX    $CC     
       BNE    L1B93   
       TAX            
L1B87: ASL            
       SEC            
       ROL            
       STA    $AC     
       TXA            
       SEC            
       ROL            
       STA    $AD     
       BNE    L1B60   
L1B93: RTS            

L1B94: SED            
       CLC            
       ADC    $E0     
       STA    $E0     
       LDA    $E8     
       BEQ    L1BB4   
       TYA            
       ADC    $DF     
       STA    $DF     
       BCC    L1BB4   
       LDA    #$00    
       ADC    $DE     
       STA    $DE     
       LDA    $B0     
       BMI    L1BB4   
       CLC            
       ADC    #$01    
       STA    $B0     
L1BB4: CLD            
       RTS            

L1BB6: LDY    #$08    
       LDX    #$02    
L1BBA: LDA    $DB,X   
       AND    #$F0    
       LSR            
       STA.wy $00CF,Y 
       LDA    $DB,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00D1,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    L1BBA   
       STA    WSYNC   
       INX            
       STX    PF2     
       RTS            

L1BD9: STA    WSYNC   
       LDA    #$FF    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    #$07    
       STA    $E1     
L1BE9: LDY    $E1     
       LDA    ($CF),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($D1),Y 
       STA    GRP1    
       LDA    ($D3),Y 
       STA    GRP0    
       LDA    ($D5),Y 
       STA    $E2     
       LDA    ($D7),Y 
       TAX            
       LDA    ($D9),Y 
       TAY            
       LDA    $E2     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $E1     
       BPL    L1BE9   
       LDX    #$00    
       STX    VDELP0  
       STX    VDELP1  
       DEX            
       STX    GRP0    
       STX    GRP1    
       STA    WSYNC   
       RTS            

L1C1F: LDA    $E6     
       BNE    L1C3A   
       LDX    #$04    
L1C25: LDA    $B6,X   
       CMP    #$93    
       BNE    L1C3A   
       DEX            
       BPL    L1C25   
       LDA    $EA     
       BNE    L1C3A   
       LDA    $EB     
       BNE    L1C3A   
       LDA    #$80    
       STA    $E6     
L1C3A: RTS            

L1C3B: LDA    $E7     
       BNE    L1C5A   
       DEC    $EE     
       SED            
       LDA    $B0     
       SEC            
       SBC    #$01    
       BCS    L1C4B   
       LDA    #$00    
L1C4B: STA    $B0     
       CLD            
       LDA    #$AF    
       BCC    L1C54   
       LDA    #$6F    
L1C54: STA    $E7     
       LDA    #$5F    
       STA    $F2     
L1C5A: RTS            

L1C5B: LDX    #$04    
       LDA    #$93    
L1C5F: STA    $B6,X   
       DEX            
       BPL    L1C5F   
       INX            
       STX    $EA     
       STX    $EB     
       LDA    $83     
       CMP    #$1E    
       BNE    L1C78   
       LDX    #$06    
       LDA    #$93    
L1C73: STA    $88,X   
       DEX            
       BPL    L1C73   
L1C78: LDX    #$03    
       LDA    #$00    
L1C7C: STA    $C8,X   
       DEX            
       BPL    L1C7C   
       STA    $F5     
       RTS            

L1C84: LDA    $E8     
       BEQ    L1CFF   
       INC    $EE     
       LDX    $EE     
       CPX    #$05    
       BNE    L1CDC   
       LDA    $E8     
       AND    #$10    
       BEQ    L1CC8   
       LDA    $EF     
       BMI    L1CA8   
       TAX            
       BEQ    L1C9F   
       LDX    #$FE    
L1C9F: INX            
       STX    $EF     
       LDX    #$01    
       STX    $EE     
       BNE    L1CDC   
L1CA8: INC    $E8     
       LDY    #$00    
       LDA    $B1     
       CMP    #$E0    
       BNE    L1CBA   
       INC    $B1     
       STY    $E8     
       STY    $B2     
       STY    $B3     
L1CBA: STY    $EF     
       STY    $EE     
       DEC    $B1     
       PLA            
       PLA            
       JSR    L1DD2   
       JMP    L19C5   
L1CC8: LDX    #$04    
       LDA    $EF     
       BMI    L1CD8   
       TAX            
       BEQ    L1CD3   
       LDX    #$FE    
L1CD3: INX            
       STX    $EF     
       LDX    #$01    
L1CD8: STX    $EE     
       BNE    L1CFF   
L1CDC: LDA    $E8     
       AND    #$10    
       BEQ    L1CFF   
       LDA    $EF     
       BPL    L1CE8   
       LDA    #$02    
L1CE8: ASL            
       ASL            
       LDX    $EE     
       DEX            
       STX    $E1     
       ORA    $E1     
       TAX            
       LDA    L1EF3,X 
       STA    $B2     
       INX            
       LDA    L1EF3,X 
       STA    $F0     
       LDX    $EE     
L1CFF: RTS            

L1D00: .byte $C3,$81,$99,$99,$99,$99,$81,$C3,$C3,$C3,$E7,$E7,$E7,$E7,$C7,$E7
       .byte $81,$81,$9F,$81,$81,$F9,$81,$81,$81,$81,$F9,$E1,$E1,$F9,$81,$81
       .byte $F3,$F3,$81,$81,$D3,$D3,$E3,$E3,$81,$81,$F9,$81,$81,$9F,$81,$81
       .byte $C3,$81,$9D,$81,$93,$9F,$C3,$E3,$E7,$E7,$E7,$F3,$F3,$B9,$81,$81
       .byte $C3,$81,$99,$81,$C3,$99,$81,$C3,$C7,$C3,$F9,$C9,$81,$99,$81,$C3
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$8A,$8A,$AA,$EA,$8A,$B8,$AB,$8B
       .byte $A2,$AE,$A2,$AA,$EA,$A2,$FE,$FE,$88,$AE,$A8,$A8,$AB,$88,$EF,$EF
       .byte $8F,$85,$95,$97,$95,$95,$87,$8F,$EE,$EE,$EE,$EA,$EA,$E4,$E4,$EE
       .byte $A2,$BB,$A2,$A2,$EE,$A2,$FF,$FF,$28,$AA,$2A,$2A,$FA,$28,$FF,$FF
       .byte $AF,$AF,$AF,$AF,$AF,$8F,$FF,$FF,$D8,$DB,$88,$AA,$A8,$AF,$AF,$A0
       .byte $A9,$AB,$AB,$AB,$8B,$F9,$F3,$00,$17,$57,$57,$55,$51,$FF,$FC,$01
       .byte $1B,$7B,$11,$55,$15,$F5,$04,$FF,$45,$75,$45,$DF,$45,$FF,$00,$FF
       .byte $15,$55,$55,$55,$11,$FF,$01
L1DC7: .byte $FF,$D0,$C0,$C1,$42,$43,$D4,$C4,$C5,$46,$47
L1DD2: LDA    $E8     
       BEQ    L1DFF   
       TAX            
       AND    #$03    
       LSR            
       BNE    L1DE1   
       TXA            
       ORA    #$80    
       BMI    L1DE4   
L1DE1: TXA            
       AND    #$7F    
L1DE4: STA    $E8     
       LDX    #$0F    
       LDY    #$1E    
       AND    #$03    
       CMP    #$03    
       BEQ    L1DF3   
       LDX    #$07    
       INY            
L1DF3: STX    $BB     
       STY    $83     
       LDA    #$37    
       STA    $F8     
       LDA    #$09    
       STA    $BD     
L1DFF: RTS            

L1E00: .byte $00,$4A,$1C,$3A,$1C,$38,$1C,$38,$18,$A5,$BD,$BD,$BD,$FF,$BD,$BD
       .byte $24,$3C,$18,$18,$18,$00,$00,$00,$00,$5D,$3E,$7F,$7F,$2A,$1C,$14
       .byte $14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$58,$74,$5E,$F7,$BF
       .byte $FD,$5F,$76,$3C,$2C,$08,$00,$78,$7C,$6C,$26,$3F,$1F,$1F,$0F,$07
       .byte $03,$03,$03,$03,$07,$87,$CE,$FE,$3C,$F8,$70,$00,$1E,$3E,$36,$64
       .byte $FC,$F8,$F8,$F0,$E0,$C0,$C0,$C0,$C0,$E0,$E1,$73,$7F,$3C,$1F,$0E
       .byte $00,$00,$00,$00,$00,$00,$18,$3C,$FF,$3C,$18,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7F,$FF,$56,$26,$02,$03
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$AA
       .byte $FF,$55,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$28,$14,$08,$5A
       .byte $30,$0C,$30,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$44,$20
       .byte $81,$00,$02,$80,$20,$01,$08,$40,$02,$40,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00
L1EE7: .byte $00,$00,$00,$00,$00,$00,$10,$F0
L1EEF: .byte $00,$01,$01,$FF
L1EF3: .byte $99,$97,$93,$88,$77,$70,$63,$56,$46,$36,$26,$16,$99,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$08,$08,$1C,$14,$3E,$3E,$7F,$77,$55,$41,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$38,$7F,$FC,$C8,$80,$80,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$00,$FF,$FF,$00,$FF,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$D2,$C2,$D2,$D2,$32,$32,$34,$28
       .byte $28,$2B,$2D,$2F,$22,$24,$26,$28,$2A,$2C,$2F,$0F,$0A,$0A,$06,$06
       .byte $06,$0A,$0A,$0A,$0E,$0C,$0A,$08,$F4,$F6,$F8,$FA,$FC,$FF,$FF,$FF
       .byte $2F,$2F,$2F,$2F,$2F,$2F,$2F,$2F,$B6,$D6,$06,$D6,$B6,$18,$B8,$C8
       .byte $D8,$E4,$22,$00,$00,$00,$24,$2A,$86,$88,$8A,$0A,$0A,$06,$06,$06
       .byte $0A,$0A,$0A,$0E,$0C,$0A
L1FC9: .byte $08,$09,$0A,$0B,$0C,$09,$0A,$0B
L1FD1: TAY            
       AND    #$0F    
       CMP    #$07    
       BCS    L1FDB   
       LDA    #$67    
       RTS            

L1FDB: CMP    #$0C    
       BCC    L1FE1   
       LDY    #$8B    
L1FE1: TYA            
L1FE2: RTS            

L1FE3: .byte $48,$30,$18
L1FE6: .byte $00,$05,$05,$05,$05,$05,$05,$05,$AA,$AA,$AA,$F0,$12,$A1,$01,$88
       .byte $93,$93,$93,$93,$93,$07,$8E,$1A,$00,$00
