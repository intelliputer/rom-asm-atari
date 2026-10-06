; Disassembly of roms/Quick Step!.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Quick Step!.bin
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
SWCHA   =  $0280
SWCHB   =  $0282
$0285   =  $0285
TIM64T  =  $0296

       ORG $1000
L1000: LDY    #$00    
       STY    $D7     
       LDX    #$00    
L1006: LDA    ($D6,X) 
       STA    ($D8),Y 
       BNE    L1013   
       INY            
       CPY    #$04    
       BNE    L1006   
       BEQ    L101F   
L1013: INY            
       CLC            
       ADC    #$02    
       STA    ($D8),Y 
       STA    ($D8),Y 
       CPY    #$03    
       BNE    L1013   
L101F: DEC    $DC     
       BMI    L1035   
       LDY    #$00    
       LDA    $D6     
       CLC            
       ADC    #$05    
       STA    $D6     
       LDA    $D8     
       SEC            
       SBC    #$04    
       STA    $D8     
       BNE    L1006   
L1035: LDY    #$0F    
       LDA    $94     
       BNE    L103E   
       LDY    L1ED8   
L103E: JSR    L1A89   
       STA    WSYNC   
       LDX    #$01    
L1045: JSR    L1D8C   
       DEX            
       BPL    L1045   
       LDX    #$0F    
       STA    WSYNC   
       STX    COLUBK  
       LDX    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       LDX    #$01    
L105B: LDY    #$08    
       LDA    $CE,X   
       BMI    L1063   
       LDY    #$00    
L1063: STY    REFP0,X 
       DEX            
       BPL    L105B   
       LDA    #$89    
       STA    $D8     
       STA    WSYNC   
       LDX    $D8     
       LDA    $B1     
       STA    COLUP0  
       LDA    $B2     
       STA    COLUP1  
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    PF0     
       STA    $D5     
       LDA    $97     
       AND    #$1F    
       TAY            
       CMP    #$17    
       BCC    L10A4   
       SBC    #$17    
       TAY            
       LDX    L1DF7,Y 
       LDA    $EB,X   
       STA    COLUPF  
       LDX    #$89    
       LDA    L1EB9,Y 
       STA    $D6     
       LDA    L1EC2,Y 
       STA    $D7     
       JMP.ind ($00D6)
L10A4: DEX            
       INC    $CA     
       INC    $CB     
       DEY            
       BMI    L10B1   
       STA    WSYNC   
       JMP    L10A4   
L10B1: LDA    #$00    
       STA    WSYNC   
       JMP    L12B2   
L10B8: INC    $D5     
       LDA    #$00    
       INC    $CA     
       BMI    L10C4   
       LDY    $CA     
       LDA    ($BD),Y 
L10C4: STA    GRP0    
       DEX            
       BEQ    L1136   
       LDA    $CA     
       SEC            
       SBC    #$10    
       BMI    L10D4   
       LDA    #$80    
       STA    $CA     
L10D4: LDA    #$00    
       INC    $CB     
       BMI    L10DE   
       LDY    $CB     
       LDA    ($BF),Y 
L10DE: LDY    #$06    
       STY    $DB     
       STA    WSYNC   
       STA    GRP1    
       LDA    #$00    
       INC    $CA     
       BMI    L10F0   
       LDY    $CA     
       LDA    ($BD),Y 
L10F0: STA    GRP0    
       DEX            
       BEQ    L1136   
       LDA    $CB     
       SEC            
       SBC    #$10    
       BMI    L1100   
       LDA    #$80    
       STA    $CB     
L1100: LDY    $D5     
       LDA.wy $0080,Y 
       STA    $F7     
       LDA    #$00    
       INC    $CB     
       BMI    L1111   
       LDY    $CB     
       LDA    ($BF),Y 
L1111: STA    WSYNC   
       STA    GRP1    
       LDY    $D5     
       LDA.wy $0080,Y 
       BEQ    L111F   
       CLC            
       ADC    #$02    
L111F: STA    $F8     
       BEQ    L1125   
       ADC    #$02    
L1125: STA    $F9     
       LDA    #$00    
       INC    $CA     
       BMI    L1131   
       LDY    $CA     
       LDA    ($BD),Y 
L1131: STA    GRP0    
       DEX            
       BNE    L1139   
L1136: JMP    L1931   
L1139: LDA    #$00    
       INC    $CB     
       BMI    L1143   
       LDY    $CB     
       LDA    ($BF),Y 
L1143: STA    WSYNC   
       STA    GRP1    
       LDA    #$00    
       INC    $CA     
       BMI    L1151   
       LDY    $CA     
       LDA    ($BD),Y 
L1151: STA    GRP0    
       DEX            
       BEQ    L1136   
       LDY    $D5     
       LDA.wy $0080,Y 
       BEQ    L1160   
       CLC            
       ADC    #$06    
L1160: STA    $FA     
       LDA.wy $0085,Y 
       STA    $F3     
       LDA    #$00    
       INC    $CB     
       BMI    L1171   
       LDY    $CB     
       LDA    ($BF),Y 
L1171: STA    WSYNC   
       STA    GRP1    
       LDA    #$00    
       INC    $CA     
       BMI    L117F   
       LDY    $CA     
       LDA    ($BD),Y 
L117F: STA    GRP0    
       DEX            
L1182: BEQ    L1136   
       LDY    $D5     
       LDA.wy $0085,Y 
       BEQ    L118E   
       CLC            
       ADC    #$02    
L118E: STA    $F4     
       BEQ    L1194   
       ADC    #$02    
L1194: STA    $F5     
       LDA    #$00    
       INC    $CB     
       BMI    L11A0   
       LDY    $CB     
       LDA    ($BF),Y 
L11A0: STA    GRP1    
       LDA    #$00    
       INC    $CA     
       BMI    L11AC   
       LDY    $CA     
       LDA    ($BD),Y 
L11AC: STA    GRP0    
       DEX            
       BEQ    L1182   
       LDY    $D5     
       LDA.wy $0085,Y 
       BEQ    L11BA   
       ADC    #$06    
L11BA: STA    $F6     
       LDA.wy $008A,Y 
       STA    $EF     
       BEQ    L11C6   
       CLC            
       ADC    #$02    
L11C6: STA    $F0     
       LDA    #$00    
       INC    $CB     
       BMI    L11D2   
       LDY    $CB     
       LDA    ($BF),Y 
L11D2: STA    WSYNC   
       STA    GRP1    
       LDA    #$00    
       INC    $CA     
       BMI    L11E0   
       LDY    $CA     
       LDA    ($BD),Y 
L11E0: STA    GRP0    
       DEX            
       BEQ    L1241   
       LDY    $D5     
       LDA.wy $008A,Y 
       BEQ    L11EE   
       ADC    #$04    
L11EE: STA    $F1     
       BEQ    L11F4   
       ADC    #$02    
L11F4: STA    $F2     
       LDA    #$00    
       INC    $CB     
       BMI    L1200   
       LDY    $CB     
       LDA    ($BF),Y 
L1200: STA    WSYNC   
       STA    GRP1    
       LDA    #$00    
       INC    $CA     
       BMI    L120E   
       LDY    $CA     
       LDA    ($BD),Y 
L120E: STA    GRP0    
       DEX            
       BEQ    L1241   
       LDY    $D5     
       LDA.wy $008F,Y 
       STA    $EB     
       BEQ    L121E   
       ADC    #$02    
L121E: STA    $EC     
       BEQ    L1224   
       ADC    #$02    
L1224: STA    $ED     
       LDA    #$00    
       INC    $CB     
       BMI    L1230   
       LDY    $CB     
       LDA    ($BF),Y 
L1230: STA    WSYNC   
       STA    GRP1    
       LDA    #$00    
       INC    $CA     
       BMI    L123E   
       LDY    $CA     
       LDA    ($BD),Y 
L123E: STA    GRP0    
       DEX            
L1241: BEQ    L1296   
       LDY    $D5     
       LDA.wy $008F,Y 
       BEQ    L124C   
       ADC    #$06    
L124C: STA    $EE     
       LDA    #$00    
       INC    $CB     
       BMI    L1258   
       LDY    $CB     
       LDA    ($BF),Y 
L1258: STA    WSYNC   
       STA    GRP1    
       LDA    #$00    
       INC    $CA     
       BMI    L1266   
       LDY    $CA     
       LDA    ($BD),Y 
L1266: STA    GRP0    
       DEX            
       BNE    L126E   
       JMP    L1931   
L126E: LDA    $CA     
       SEC            
       SBC    #$10    
       BMI    L1279   
       LDA    #$80    
       STA    $CA     
L1279: LDA    #$00    
       INC    $CB     
       BMI    L1283   
       LDY    $CB     
       LDA    ($BF),Y 
L1283: STA    WSYNC   
       STA    GRP1    
       LDA    #$00    
       INC    $CA     
       BMI    L1291   
       LDY    $CA     
       LDA    ($BD),Y 
L1291: STA    GRP0    
       DEX            
       BNE    L1299   
L1296: JMP    L1931   
L1299: LDA    $CB     
       SEC            
       SBC    #$10    
       BMI    L12A4   
       LDA    #$80    
       STA    $CB     
L12A4: LDA    #$00    
       INC    $CB     
       BMI    L12AE   
       LDY    $CB     
       LDA    ($BF),Y 
L12AE: DEC    $DB     
       BPL    L1258   
L12B2: LDY    $EB     
       STY    COLUPF  
       STA    GRP1    
       STA    WSYNC   
       INC    $CA     
       BPL    L12C7   
       NOP            
       NOP            
       LDA    #$00    
       STA    GRP0    
       JMP    L12CD   
L12C7: LDY    $CA     
       LDA    ($BD),Y 
       STA    GRP0    
L12CD: DEX            
       BNE    L12D9   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       JMP    L1931   
L12D9: LDA    #$3C    
       STA    PF1     
       STA    PF2     
       LDA    $EF     
       STA    COLUPF  
       LDY    $F3     
       LDA    $F7     
       INC    $CB     
       STY    COLUPF  
       BPL    L12F8   
       NOP            
       STA    COLUPF  
       NOP            
       LDA    #$00    
       STA    GRP1    
       JMP    L1300   
L12F8: LDY    $CB     
       STA    COLUPF  
       LDA    ($BF),Y 
       STA    GRP1    
L1300: LDA.w  $00EB   
       STA    COLUPF  
       INC    $CA     
       BPL    L1312   
       NOP            
       NOP            
       LDA    #$00    
       STA    GRP0    
       JMP    L1318   
L1312: LDY    $CA     
       LDA    ($BD),Y 
       STA    GRP0    
L1318: DEX            
       BNE    L1322   
       STX    PF1     
       STX    PF2     
       JMP    L1931   
L1322: LDA    #$18    
       STA    PF1     
       STA    PF2     
       LDA    $EF     
       STA    COLUPF  
       LDY    $F3     
       LDA    $F7     
       INC    $CB     
       STY    COLUPF  
       BPL    L1341   
       NOP            
       STA    COLUPF  
       NOP            
       LDA    #$00    
       STA    GRP1    
       JMP    L1349   
L1341: LDY    $CB     
       STA    COLUPF  
       LDA    ($BF),Y 
       STA    GRP1    
L1349: LDA.w  $00EC   
       STA    COLUPF  
       INC    $CA     
       BPL    L135B   
       NOP            
       NOP            
       LDA    #$00    
       STA    GRP0    
       JMP    L1361   
L135B: LDY    $CA     
       LDA    ($BD),Y 
       STA    GRP0    
L1361: DEX            
       BNE    L136B   
       STX    PF1     
       STX    PF2     
       JMP    L1931   
L136B: LDA    #$3C    
       STA    PF1     
       STA    PF2     
       LDA    $F0     
       STA    COLUPF  
       LDY    $F4     
       LDA    $F8     
       INC    $CB     
       STY    COLUPF  
       BPL    L138A   
       NOP            
       STA    COLUPF  
       NOP            
       LDA    #$00    
       STA    GRP1    
       JMP    L1392   
L138A: LDY    $CB     
       STA    COLUPF  
       LDA    ($BF),Y 
       STA    GRP1    
L1392: LDA.w  $00EC   
       STA    COLUPF  
       INC    $CA     
       BPL    L13A4   
       NOP            
       NOP            
       LDA    #$00    
       STA    GRP0    
       JMP    L13AA   
L13A4: LDY    $CA     
       LDA    ($BD),Y 
       STA    GRP0    
L13AA: DEX            
       BNE    L13B4   
       STX    PF1     
       STX    PF2     
       JMP    L1931   
L13B4: LDA    #$18    
       STA    PF1     
       STA    PF2     
       LDA    $F1     
       STA    COLUPF  
       LDY    $F5     
       LDA    $F9     
       INC    $CB     
       STY    COLUPF  
       BPL    L13D3   
       NOP            
       STA    COLUPF  
       NOP            
       LDA    #$00    
       STA    GRP1    
       JMP    L13DB   
L13D3: LDY    $CB     
       STA    COLUPF  
       LDA    ($BF),Y 
       STA    GRP1    
L13DB: LDA.w  $00ED   
       STA    COLUPF  
       INC    $CA     
       BPL    L13ED   
       NOP            
       NOP            
       LDA    #$00    
       STA    GRP0    
       JMP    L13F3   
L13ED: LDY    $CA     
       LDA    ($BD),Y 
       STA    GRP0    
L13F3: DEX            
       BNE    L13FD   
       STX    PF1     
       STX    PF2     
       JMP    L1931   
L13FD: LDA    #$3C    
       STA    PF1     
       STA    PF2     
       LDA    $F1     
       STA    COLUPF  
       LDY    $F5     
       LDA    $F9     
       INC    $CB     
       STY    COLUPF  
       BPL    L141C   
       NOP            
       STA    COLUPF  
       NOP            
       LDA    #$00    
       STA    GRP1    
       JMP    L1424   
L141C: LDY    $CB     
       STA    COLUPF  
       LDA    ($BF),Y 
       STA    GRP1    
L1424: LDA.w  $00ED   
       STA    COLUPF  
       INC    $CA     
       BPL    L1436   
       NOP            
       NOP            
       LDA    #$00    
       STA    GRP0    
       JMP    L143C   
L1436: LDY    $CA     
       LDA    ($BD),Y 
       STA    GRP0    
L143C: DEX            
       BNE    L1446   
       STX    PF1     
       STX    PF2     
       JMP    L1931   
L1446: LDA    #$18    
       STA    PF1     
       STA    PF2     
       LDA    $F2     
       STA    COLUPF  
       LDY    $F6     
       LDA    $FA     
       INC    $CB     
       STY    COLUPF  
       BPL    L1465   
       NOP            
       STA    COLUPF  
       NOP            
       LDA    #$00    
       STA    GRP1    
       JMP    L146D   
L1465: LDY    $CB     
       STA    COLUPF  
       LDA    ($BF),Y 
       STA    GRP1    
L146D: LDA.w  $00EE   
       STA    COLUPF  
       INC    $CA     
       BPL    L147F   
       NOP            
       NOP            
       LDA    #$00    
       STA    GRP0    
       JMP    L1485   
L147F: LDY    $CA     
       LDA    ($BD),Y 
       STA    GRP0    
L1485: DEX            
       BNE    L148F   
       STX    PF1     
       STX    PF2     
       JMP    L1931   
L148F: LDA    #$3C    
       STA    PF1     
       STA    PF2     
       LDA    $F2     
       STA    COLUPF  
       LDY    $F6     
       LDA    $FA     
       INC    $CB     
       STY    COLUPF  
       BPL    L14AE   
       NOP            
       STA    COLUPF  
       NOP            
       LDA    #$00    
       STA    GRP1    
       JMP    L14B6   
L14AE: LDY    $CB     
       STA    COLUPF  
       LDA    ($BF),Y 
       STA    GRP1    
L14B6: LDA.w  $00EE   
       STA    COLUPF  
       INC    $CA     
       BPL    L14C8   
       NOP            
       NOP            
       LDA    #$00    
       STA    GRP0    
       JMP    L14CE   
L14C8: LDY    $CA     
       LDA    ($BD),Y 
       STA    GRP0    
L14CE: DEX            
       BNE    L14D8   
       STX    PF1     
       STX    PF2     
       JMP    L1931   
L14D8: LDA    #$18    
       STA    PF1     
       STA    PF2     
       LDA    $F2     
       STA    COLUPF  
       LDY    $F6     
       LDA    $FA     
       INC    $CB     
       STY    COLUPF  
       BPL    L14F7   
       NOP            
       STA    COLUPF  
       NOP            
       LDA    #$00    
       STA    GRP1    
       JMP    L14FF   
L14F7: LDY    $CB     
       STA    COLUPF  
       LDA    ($BF),Y 
       STA    GRP1    
L14FF: LDA.w  $00EE   
       STA    COLUPF  
       INC    $CA     
       BPL    L1511   
       NOP            
       NOP            
       LDA    #$00    
       STA    GRP0    
       JMP    L1517   
L1511: LDY    $CA     
       LDA    ($BD),Y 
       STA    GRP0    
L1517: DEX            
       BNE    L1521   
       STX    PF1     
       STX    PF2     
       JMP    L1931   
L1521: LDA    #$3C    
       STA    PF1     
       STA    PF2     
       LDA    $F2     
       STA    COLUPF  
       LDY    $F6     
       LDA    $FA     
       INC    $CB     
       STY    COLUPF  
       BPL    L1540   
       NOP            
       STA    COLUPF  
       NOP            
       LDA    #$00    
       STA    GRP1    
       JMP    L1548   
L1540: LDY    $CB     
       STA    COLUPF  
       LDA    ($BF),Y 
       STA    GRP1    
L1548: LDA    #$00    
       STA    PF1     
       STA    PF2     
       JMP    L10B8   

START:
L1551: SEI            
       CLD            
       LDX    #$00    
       TXA            
L1556: STA    VSYNC,X 
       TXS            
       INX            
       BNE    L1556   
       STA    $B6     
       INX            
       STX    $B3     
       STX    $94     
       LDA    #$03    
       STA    $96     
       STA    $BB     
       LDX    #$13    
L156B: JSR    L1AAC   
       STA    $80,X   
       DEX            
       BPL    L156B   
       JSR    L1CAC   
L1576: LDX    #$03    
       STX    VBLANK  
       STX    WSYNC   
       STX    VSYNC   
L157E: STX    WSYNC   
       DEX            
       BNE    L157E   
       STX    VSYNC   
       STX    VBLANK  
       LDA    #$2A    
       STA    TIM64T  
       LDA    $AE     
       BEQ    L159C   
       LDA    $94     
       BNE    L1598   
       LDA    $B6     
       BPL    L159C   
L1598: LDA    REFP1   
       BPL    L15E0   
L159C: LDA    SWCHB   
       ROR    $B3     
       BCS    L15A7   
       LSR            
       BCS    L15E0   
       ROL            
L15A7: LSR            
       ROL    $B3     
       LSR            
       BIT    $B4     
       BCC    L15B3   
       ROL    $B4     
       BNE    L1604   
L15B3: BPL    L15D6   
L15B5: LDA    $AD     
       AND    #$1F    
       STA    $B4     
       STA    $94     
       JSR    L1CAC   
       JSR    L1FEA   
       STA    $B6     
       LDX    #$03    
       STX    $96     
L15C9: STA    $9B,X   
       DEX            
       BPL    L15C9   
       LDA    $B5     
       EOR    #$01    
       STA    $B5     
       BPL    L1604   
L15D6: LDA    $B4     
       EOR    $AD     
       AND    #$1F    
       BEQ    L15B5   
       BNE    L1604   
L15E0: JSR    L1CAC   
       LDY    #$01    
       STY    $B3     
       STY    $B9     
       INY            
       STY    $B6     
       LDY    #$05    
       STY    $A3     
       STY    $AB     
       STY    $AC     
       INY            
       STY    $A1     
       STY    $A2     
       LDA    #$00    
       LDX    #$20    
L15FD: STA    $80,X   
       DEX            
       BPL    L15FD   
       STX    $A9     
L1604: INC    $AD     
       BNE    L1613   
       INC    $AE     
       BNE    L1613   
       LDA    $B6     
       BPL    L1613   
       JMP    L1551   
L1613: LDA    $94     
       BEQ    L1620   
L1617: LDY    #$00    
       STY    AUDV0   
       STY    AUDV1   
       JMP    L16B9   
L1620: LDX    #$04    
L1622: LDA    $C1,X   
       BEQ    L1631   
       DEC    $C1,X   
       BNE    L1631   
       LDA    L1ED1,X 
       AND    $98     
       STA    $98     
L1631: DEX            
       BPL    L1622   
       LDA    $98     
       TAY            
       BEQ    L1617   
       LSR            
       BCC    L1652   
       LDA    #$FF    
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       STA    AUDC0   
       LDA    #$04    
       STA    AUDV1   
       LDA    $C4     
       EOR    #$FF    
       LDY    #$0B    
       BNE    L16B5   
L1652: LSR            
       BCC    L166A   
       LDA    #$00    
       STA    AUDV1   
       LDA    $C5     
       AND    #$10    
       TAY            
       BEQ    L16B7   
       LDY    #$0A    
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$09    
       BNE    L16B5   
L166A: LSR            
       BCC    L1677   
       LDA    #$00    
       STA    AUDV1   
       LDA    #$08    
       STA    $D8     
       BNE    L167E   
L1677: LSR            
       BCC    L1688   
       LDA    #$0F    
       STA    $D8     
L167E: LDA    $AD     
       AND    #$0F    
       LSR            
       TAY            
       LDA    $D8     
       BNE    L16AD   
L1688: LSR            
       BCC    L1691   
       LDY    $C2     
       LDA    #$0C    
       BNE    L16AD   
L1691: LSR            
       BCC    L16A8   
       LDA    #$02    
       STA    AUDC0   
       LDY    $C1     
       STY    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$04    
       STA    AUDV1   
       LDA    #$00    
       BEQ    L16B5   
L16A8: LSR            
       BCC    L16B9   
       LDA    #$09    
L16AD: LDX    #$0C    
       STX    AUDC0   
       LDX    #$00    
       STX    AUDV1   
L16B5: STA    AUDF0   
L16B7: STY    AUDV0   
L16B9: LDA    $B6     
       CMP    #$8F    
       BNE    L1702   
       LDA    $AA     
       BMI    L16CF   
       DEC    $AA     
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$03    
       STA    AUDF0   
L16CF: LDA    $AD     
       AND    #$1F    
       BNE    L1702   
       LDX    #$01    
L16D7: LDA    $AB,X   
       BMI    L16FF   
       CMP    #$0A    
       BEQ    L16FF   
       LDA    #$10    
       STA    $AA     
       SED            
       LDA    #$02    
       JSR    L1FB9   
       DEC    $AB,X   
       BPL    L16FF   
       LDA    #$80    
       STA    $B6     
       LDA    #$00    
       STA    $AD     
       STA    $AE     
       LDA    #$0A    
       STA    $AB     
       STA    $AC     
       BNE    L1702   
L16FF: DEX            
       BPL    L16D7   
L1702: LDA    $AD     
       AND    $96     
       BEQ    L170B   
L1708: JMP    L183F   
L170B: INC    $97     
       LDX    #$01    
L170F: LDA    $B7,X   
       AND    #$09    
       BNE    L1719   
       DEC    $C6,X   
       DEC    $D0,X   
L1719: DEX            
       BPL    L170F   
       LDA    $97     
       AND    #$1F    
       CMP    #$17    
       BNE    L1708   
       INC    $A4     
       INC    $A5     
       LDA    $94     
       BNE    L1784   
       DEC    $A3     
       BNE    L1784   
       LDA    $B6     
       CMP    #$01    
       BNE    L173C   
       LDA    #$02    
       LDY    #$04    
       BNE    L1744   
L173C: CMP    #$00    
       BNE    L1750   
       LDA    #$01    
       LDY    #$09    
L1744: STA    $B6     
       STY    $A3     
       LDA    #$00    
       STA    $96     
       STA    $95     
       BEQ    L1784   
L1750: CMP    #$02    
       BNE    L1784   
       LDA    #$00    
       STA    $B6     
       INC    $A9     
       LDA    $A9     
       CMP    #$05    
       BNE    L1764   
       LDA    #$02    
       STA    $A9     
L1764: LDY    #$00    
       STY    $95     
       TAY            
       CMP    #$03    
       BCC    L1771   
       LDA    #$FF    
       STA    $95     
L1771: LDA    L1AC1,Y 
       STA    $96     
       LDA    L1AC5,Y 
       STA    $AA     
       LDA    L1FF1,Y 
       STA    $A3     
       LDA    #$00    
       STA    $98     
L1784: LDA    #$04    
       STA    $D8     
       LDX    #$92    
L178A: LDY    #$04    
L178C: LDA    VSYNC,X 
       CMP    #$02    
       BNE    L1794   
       LDA    #$44    
L1794: STA    VBLANK,X
       DEX            
       DEY            
       BNE    L178C   
       DEX            
       DEC    $D8     
       BNE    L178A   
       LDA    $94     
       BEQ    L17B4   
       LDY    #$0F    
L17A5: JSR    L1AAC   
       STA.wy $0080,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEY            
       BPL    L17A5   
       BMI    L17E4   
L17B4: LDY    #$02    
       STY    $85     
       LDA    $B6     
       BPL    L17C2   
       LDY    #$00    
       STY    $85     
       BEQ    L17C8   
L17C2: CMP    #$01    
       BNE    L17C8   
       LDY    #$00    
L17C8: STY    $80     
       STY    $8A     
       STY    $8F     
       LDA    $95     
       BEQ    L17E4   
       LDA    $A3     
       CMP    #$01    
       BEQ    L17E4   
       LDA    $BC     
       AND    #$30    
       JSR    L1DC6   
       LDA    #$00    
       TAY            
       STA    ($ED),Y 
L17E4: LDA    $B6     
       BNE    L183F   
       LDA    #$01    
       LDY    $96     
       BNE    L17F0   
       LDA    #$04    
L17F0: CMP    $A3     
       BNE    L17FC   
       LDA    #$02    
       STA    $98     
       LDA    #$A0    
       STA    $C5     
L17FC: LDA    $95     
       BNE    L183F   
       LDA    $BB     
       AND    #$40    
       BNE    L180C   
       LDA    #$38    
       STA    $DB     
       BNE    L181A   
L180C: LDA    #$08    
       STA    $DB     
       LDA    #$04    
       ORA    $98     
       STA    $98     
       LDA    #$30    
       STA    $C3     
L181A: JSR    L1AB6   
       LDA    $BC     
       AND    #$03    
       TAX            
       LDA    L1EB3,X 
       TAX            
       STX    $DC     
       LDA    $BB     
       AND    #$30    
       ORA    $DC     
       CMP    $A4     
       BEQ    L183F   
       CMP    $A5     
       BEQ    L183F   
       JSR    L1DC6   
       BEQ    L183F   
       LDA    $DB     
       STA    ($ED),Y 
L183F: LDX    #$01    
L1841: LDA    $99,X   
       BEQ    L18B2   
       DEC    $99,X   
       BEQ    L186D   
       LDA    #$FA    
       CLC            
       ADC    $CC,X   
       STA    $CC,X   
       JSR    L1EEE   
       CLC            
       ADC    $C6,X   
       STA    $C6,X   
       LDA    $CE,X   
       JSR    L1EEE   
       CLC            
       ADC    $C8,X   
       CMP    #$22    
       BCC    L186A   
       CMP    #$8A    
       BCS    L186A   
       STA    $C8,X   
L186A: JMP    L18B2   
L186D: LDA    #$00    
       STA    $CC,X   
       LDA    $D0,X   
       STA    $C6,X   
       LDA    $D2,X   
       STA    $C8,X   
       LDA    $A4     
       CMP    $A5     
       BEQ    L1885   
       JSR    L1F04   
       JMP    L18B2   
L1885: LDA    $B7     
       CMP    #$04    
       BNE    L1897   
       LDA    #$02    
       STA    $B7     
       LDA    #$90    
       STA    $A0     
       LDY    #$00    
       BEQ    L18A7   
L1897: LDA    $B8     
       CMP    #$04    
       BNE    L18B2   
       LDA    #$02    
       STA    $B8     
       LDA    #$90    
       STA    $9F     
       LDY    #$01    
L18A7: LDA    #$F7    
       AND    $98     
       STA    $98     
       LDA    #$10    
       JSR    L1FA5   
L18B2: LDA    $B7,X   
       CMP    #$08    
       BNE    L18C6   
       DEC    $C6,X   
       LDA    $C6,X   
       CMP    #$79    
       BCS    L18EE   
       JSR    L1C9A   
       JMP    L18EE   
L18C6: AND    #$01    
       BNE    L18EE   
       LDA    $C6,X   
       CMP    #$50    
       BCC    L18EE   
       CMP    #$83    
       BCS    L18EE   
       LDA    $B7,X   
       AND    #$04    
       BEQ    L18E0   
       LDA    #$F7    
       AND    $98     
       STA    $98     
L18E0: LDA    #$08    
       STA    $B7,X   
       LDA    #$01    
       ORA    $98     
       STA    $98     
       LDA    #$10    
       STA    $C4     
L18EE: JSR    L1ACA   
       LDA    $C6,X   
       STA    $CA,X   
       DEX            
       BMI    L18FB   
       JMP    L1841   
L18FB: LDA    $97     
       AND    #$1F    
       CMP    #$07    
       BNE    L1906   
       JSR    L1CD6   
L1906: LDA    $94     
       BEQ    L190F   
       LDY    $B5     
       INY            
       STY    $9D     
L190F: JSR    L1A1B   
       LDY    #$00    
       JSR    L1F65   
L1917: BIT    $0285   
       BPL    L1917   
       STA    WSYNC   
       LDX    #$01    
       STX    CTRLPF  
       LDA    #$03    
       STA    $DC     
       LDA    #$80    
       STA    $D6     
       LDA    #$F7    
       STA    $D8     
       JMP    L1000   
L1931: LDX    #$0F    
       LDA    #$00    
       STA    WSYNC   
       STX    COLUBK  
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       LDX    #$3E    
       STX    TIM64T  
       STA    REFP0   
       STA    REFP1   
       STA    WSYNC   
       STA    COLUBK  
       JSR    L1A1B   
       LDA    $94     
       BEQ    L1966   
       LDX    #$0A    
       LDA    #$5C    
L1959: STA    $DF,X   
       CLC            
       ADC    #$08    
       DEX            
       DEX            
       BPL    L1959   
       LDY    #$0F    
       BNE    L196E   
L1966: LDY    #$01    
       JSR    L1F65   
       LDY    L1ED9   
L196E: JSR    L1A89   
       LDX    #$01    
L1973: LDA    $AF,X   
       BEQ    L1985   
       DEC    $AF,X   
       BNE    L1985   
       LDA    #$F7    
       AND    $98     
       STA    $98     
       LDA    #$02    
       STA    $B7,X   
L1985: LDA    $B7,X   
       AND    #$01    
       BEQ    L1991   
       JSR    L1CC4   
       JMP    L19B6   
L1991: LDA    $AD     
       AND    #$07    
       BNE    L19A3   
       INC    $A7,X   
       LDA    $A7,X   
       CMP    #$03    
       BNE    L19A3   
       LDA    #$00    
       STA    $A7,X   
L19A3: LDA    $A7,X   
       TAY            
       TXA            
       BEQ    L19AE   
       LDA    L1ECE,Y 
       BNE    L19B1   
L19AE: LDA    L1ECB,Y 
L19B1: LDY    #$1E    
       JSR    L1CC8   
L19B6: JSR    L1AB6   
       JSR    L1AB6   
       LDY    L1ED8,X 
       LDA    $B7,X   
       CMP    #$04    
       BNE    L19C9   
       INC    $B1,X   
       LDY    $B1,X   
L19C9: STY    $B1,X   
       DEX            
       BPL    L1973   
       LDX    #$01    
L19D0: LDA    $B6     
       BNE    L1A0E   
       LDA    $B7,X   
       CMP    #$01    
       BNE    L1A0E   
       LDA    $97     
       AND    #$1F    
       BNE    L1A0E   
       LDA    $BB     
       AND    #$33    
       STA    $DF     
       JSR    L1DC6   
       BEQ    L1A0E   
       LDA    #$02    
       STA    $B7,X   
       LDA    $DF     
       STA    $A4,X   
       AND    #$0F    
       TAY            
       LDA    L1EDA,Y 
       STA    $C6,X   
       LDA    $DF     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L1EDE,Y 
       CPX    #$00    
       BEQ    L1A0C   
       CLC            
       ADC    #$09    
L1A0C: STA    $C8,X   
L1A0E: DEX            
       BPL    L19D0   
L1A11: BIT    $0285   
       BPL    L1A11   
       STA    WSYNC   
       JMP    L1576   
L1A1B: LDX    #$0A    
L1A1D: LDA    #$1D    
       STA    $E0,X   
       LDA    #$50    
       STA    $DF,X   
       DEX            
       DEX            
       BPL    L1A1D   
       RTS            

L1A2A: STY    COLUP1  
       STY    COLUP0  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       STA    WSYNC   
L1A38: DEY            
       BPL    L1A38   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       LDA    #$00    
       STA    HMP1    
       LDA    #$07    
       STA    $DB     
       STA    WSYNC   
       STA    HMOVE   
L1A50: LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
L1A56: LDY    $DB     
       LDA    ($E9),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($E7),Y 
       STA    GRP1    
       LDA    ($E5),Y 
       STA    GRP0    
       LDA    ($E3),Y 
       STA    $DC     
       LDA    ($E1),Y 
       TAX            
       LDA    ($DF),Y 
       TAY            
       LDA    $DC     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $DB     
       BPL    L1A56   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       RTS            

L1A89: JSR    L1A2A   
       LDX    $DA     
       LDA    $A1,X   
       AND    #$7F    
       TAY            
       LDX    #$00    
L1A95: DEY            
       BPL    L1A9C   
       LDA    #$50    
       BNE    L1A9E   
L1A9C: LDA    #$0C    
L1A9E: STA    $DF,X   
       INX            
       INX            
       CPX    #$0C    
       BNE    L1A95   
       LDA    #$01    
       STA    $DB     
       BNE    L1A50   
L1AAC: LDA    #$50    
       CLC            
       ADC    $D4     
       ORA    #$04    
       STA    $D4     
       RTS            

L1AB6: LDA    $BC     
       LSR            
       EOR    $BB     
       LSR            
       ROL    $BB     
       ROR    $BC     
       RTS            

L1AC1: .byte $07,$07,$03,$03
L1AC5: .byte $00,$04,$02,$00,$00
L1ACA: LDA    $9F,X   
       BEQ    L1AD1   
       DEC    $9F,X   
       RTS            

L1AD1: LDA    $B7,X   
       AND    #$06    
       BEQ    L1B33   
       LDA    $99,X   
       BNE    L1B33   
       LDA    $94     
       BEQ    L1AF1   
       LDA    $BB,X   
       AND    #$C0    
       BNE    L1B33   
       LDA    $BB,X   
       AND    #$07    
       TAY            
       LDA    L1EB1,Y 
       BEQ    L1B33   
       BNE    L1B34   
L1AF1: LDA    REFP1,X 
       BPL    L1AFB   
       LDA    #$00    
       STA    $B9,X   
       BEQ    L1B15   
L1AFB: LDA    $B9,X   
       BNE    L1B15   
       LDA    #$FF    
       STA    $B9,X   
       LDA    $A1,X   
       BEQ    L1B15   
       BMI    L1B15   
       LDA    $A4     
       CMP    $A5     
       BEQ    L1B15   
       LDA    $A1,X   
       ORA    #$80    
       STA    $A1,X   
L1B15: LDA    $B5     
       BNE    L1B22   
       TXA            
       BEQ    L1B22   
       JSR    L1BF4   
       JMP    L1B2D   
L1B22: LDA    SWCHA   
       CPX    #$00    
       BNE    L1B2D   
       LSR            
       LSR            
       LSR            
       LSR            
L1B2D: AND    #$0F    
       EOR    #$0F    
       BNE    L1B34   
L1B33: RTS            

L1B34: TAY            
       AND    #$01    
       BEQ    L1B4B   
       JSR    L1C8D   
       BEQ    L1B33   
       LDA    #$20    
       JSR    L1BB6   
       DEC    $A4,X   
       LDA    #$44    
       STA    $CC,X   
       BNE    L1B60   
L1B4B: TYA            
       AND    #$02    
       BEQ    L1B6F   
       JSR    L1DE6   
       BEQ    L1B33   
       LDA    #$E0    
       JSR    L1BB6   
       INC    $A4,X   
       LDA    #$26    
       STA    $CC,X   
L1B60: LDA    #$0D    
       STA    $99,X   
       LDA    #$00    
       STA    $CE,X   
       LDA    $C8,X   
       STA    $D2,X   
       JMP    L1BAB   
L1B6F: TYA            
       AND    #$04    
       BEQ    L1B87   
       JSR    L1FCC   
       BEQ    L1BB5   
       JSR    L1BBB   
       LDA    #$10    
       LDY    #$E0    
       JSR    L1BE8   
       LDA    #$ED    
       BNE    L1B9D   
L1B87: TYA            
       AND    #$08    
       BEQ    L1BAB   
       JSR    L1FDA   
       BEQ    L1BB5   
       JSR    L1BBB   
       LDA    #$F0    
       LDY    #$20    
       JSR    L1BE8   
       LDA    #$13    
L1B9D: STA    $CE,X   
       LDA    #$0F    
       STA    $99,X   
       LDA    #$32    
       STA    $CC,X   
       LDA    $C6,X   
       STA    $D0,X   
L1BAB: LDA    #$20    
       ORA    $98     
       STA    $98     
       LDA    #$08    
       STA    $C1     
L1BB5: RTS            

L1BB6: CLC            
       ADC    $C6,X   
       STA    $D0,X   
L1BBB: STX    $DB     
       LDA    $A4,X   
       STA    $D8     
       TXA            
       EOR    #$01    
       TAX            
       LDA    $A4,X   
       CMP    $D8     
       BNE    L1BCE   
       JSR    L1F04   
L1BCE: LDX    $DB     
       LDA    $A1,X   
       BPL    L1BB5   
       AND    #$7F    
       STA    $A1,X   
       LDA    $A4     
       CMP    $A5     
       BEQ    L1BB5   
       JSR    L1DC4   
       LDA    #$00    
       STA    ($ED),Y 
       DEC    $A1,X   
       RTS            

L1BE8: CLC            
       ADC    $A4,X   
       STA    $A4,X   
       TYA            
       CLC            
       ADC    $C8,X   
       STA    $D2,X   
       RTS            

L1BF4: LDA    #$00    
       STA    $D6     
       JSR    L1C8D   
       BEQ    L1C01   
       LDA    #$01    
       STA    $D6     
L1C01: JSR    L1DE6   
       BEQ    L1C0C   
       LDA    $D6     
       ORA    #$02    
       STA    $D6     
L1C0C: JSR    L1FCC   
       BEQ    L1C17   
       LDA    $D6     
       ORA    #$04    
       STA    $D6     
L1C17: JSR    L1FDA   
       BEQ    L1C22   
       LDA    $D6     
       ORA    #$08    
       STA    $D6     
L1C22: LDA    $D6     
       BNE    L1C2A   
       LDA    #$0F    
       BNE    L1C86   
L1C2A: LDA    $B6     
       CMP    #$01    
       BNE    L1C38   
       LDA    $D6     
       AND    #$01    
       BNE    L1C89   
       BEQ    L1C41   
L1C38: LDA    $BB     
       AND    #$1E    
       BNE    L1C41   
       JSR    L1DDF   
L1C41: LDA    $96     
       BEQ    L1C51   
       LDA    $97     
       AND    #$1F    
       CMP    #$06    
       BCS    L1C57   
       CMP    $AA     
       BCC    L1C57   
L1C51: LDA    $D6     
       AND    #$01    
       BNE    L1C89   
L1C57: LDA    $A6     
       BEQ    L1C7A   
       LDA    $D6     
       AND    #$08    
       BNE    L1C84   
L1C61: JSR    L1DDF   
       LDA    $D6     
       AND    #$02    
       BNE    L1C76   
       LDA    $D6     
       AND    #$01    
       BNE    L1C89   
       LDA    $D6     
       AND    #$04    
       BNE    L1C80   
L1C76: LDA    #$0D    
       BNE    L1C86   
L1C7A: LDA    $D6     
       AND    #$04    
       BEQ    L1C61   
L1C80: LDA    #$0B    
       BNE    L1C86   
L1C84: LDA    #$07    
L1C86: LDX    #$01    
L1C88: RTS            

L1C89: LDA    #$0E    
       BNE    L1C86   
L1C8D: LDA    $A4,X   
       AND    #$0F    
       BEQ    L1C88   
       LDY    $A4,X   
       DEY            
       TYA            
       JMP    L1DC6   
L1C9A: DEC    $AB,X   
       BPL    L1CB2   
       LDY    $94     
       BNE    L1CB2   
       STY    $96     
       LDA    #$0A    
       STA    $AB,X   
       LDA    #$8F    
       STA    $B6     
L1CAC: LDX    #$01    
       JSR    L1CB2   
       DEX            
L1CB2: LDA    #$01    
       STA    $B7,X   
       LDA    #$00    
       STA    $99,X   
       STA    $9F,X   
       STA    $AF,X   
       STA    $98     
       LDA    #$C0    
       STA    $C6,X   
L1CC4: LDA    #$9A    
       LDY    #$1E    
L1CC8: CPX    #$00    
       BNE    L1CD1   
       STA    $BD     
       STY    $BE     
       RTS            

L1CD1: STA    $BF     
       STY    $C0     
       RTS            

L1CD6: LDX    #$0F    
L1CD8: LDA    $84,X   
       CMP    #$C4    
       BNE    L1CE4   
       STX    $DF     
       LDX    #$00    
       BEQ    L1CEC   
L1CE4: CMP    #$74    
       BNE    L1CF3   
       STX    $DF     
       LDX    #$01    
L1CEC: LDA    #$06    
       JSR    L1FA5   
       LDX    $DF     
L1CF3: LDA    #$00    
       STA    $84,X   
       DEX            
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    L1CD8   
       RTS            

L1CFF: .byte $B5,$3E,$7F,$7F,$77,$63,$63,$36,$1C,$7F,$7F,$3E,$1C,$1C,$1C,$3C
       .byte $1C,$7F,$7F,$3D,$1C,$0E,$33,$33,$1E,$3E,$7F,$7F,$63,$03,$0E,$33
       .byte $1E,$0E,$7F,$7F,$66,$36,$1E,$0E,$06,$3C,$7E,$7F,$67,$06,$3C,$33
       .byte $1F,$3E,$7F,$77,$77,$7E,$30,$36,$1C,$7F,$3E,$3C,$1C,$0C,$06,$23
       .byte $3F,$3E,$7F,$77,$36,$1C,$3E,$36,$1C,$3C,$7E,$7F,$67,$07,$3F,$66
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$44,$92
       .byte $A2,$A2,$92,$44,$38,$00,$45,$45,$45,$5D,$55,$5D,$00,$00,$DC,$44
       .byte $44,$DC,$44,$DC,$00,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$94,$93,$94,$94
       .byte $95,$F5,$94,$94,$63,$26,$A9,$A8,$A8,$28,$28,$A9,$26
L1D8C: LDA    $C8,X   
       STA    $D8     
       INC    $D8     
       CPX    #$02    
       BCC    L1D98   
       INC    $D8     
L1D98: LDA    $D8     
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D8     
       TAY            
       PLA            
       AND    #$0F    
       CLC            
       ADC    $D8     
       CMP    #$0F    
       BCC    L1DAF   
       SBC    #$0F    
       INY            
L1DAF: SEC            
       SBC    #$08    
       EOR    #$FF    
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
L1DBC: DEY            
       BPL    L1DBC   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

L1DC4: LDA    $A4,X   
L1DC6: STA    $E7     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L1EE2,Y 
       STA    $ED     
       LDA    #$00    
       STA    $EE     
       LDA    $E7     
       AND    #$0F    
       TAY            
       INY            
       LDA    ($ED),Y 
       RTS            

L1DDF: LDA    $A6     
       EOR    #$01    
       STA    $A6     
       RTS            

L1DE6: LDA    $C6,X   
       CMP    #$A3    
       BCS    L1DEF   
       LDA    #$00    
       RTS            

L1DEF: LDA    $A4,X   
       CLC            
       ADC    #$01    
       JMP    L1DC6   
L1DF7: .byte $03,$03,$03,$02,$02,$01,$01,$00,$00,$04,$04,$07,$06,$06,$06,$0E
       .byte $1E,$3F,$3D,$7E,$7E,$6C,$24,$A8,$EE,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$04,$04,$07,$06,$06,$06,$0E,$1E,$3F,$3D,$7E
       .byte $7E,$AC,$AC,$EE,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $04,$07,$06,$06,$06,$0E,$1E,$3E,$3E,$7E,$7E,$AC,$AC,$EE,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$3C,$6C,$60
       .byte $E0,$C2,$C7,$CF,$DE,$FC,$FE,$FC,$F8,$78,$70,$38,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$38,$3C,$6C,$62,$E7,$CF,$DE,$FC
       .byte $FE,$FC,$F8,$78,$70,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$1C,$3C,$30,$70,$62,$67,$CF,$DE,$DC,$FC,$FE,$F8,$70
       .byte $60,$40,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L1EB1: .byte $00,$00
L1EB3: .byte $00,$00,$02,$01,$08,$04
L1EB9: .byte $04,$BB,$72,$29,$E0,$97,$4E,$05,$BA
L1EC2: .byte $15,$14,$14,$14,$13,$13,$13,$13,$12
L1ECB: .byte $00,$1B,$37
L1ECE: .byte $53,$6E,$8A
L1ED1: .byte $DF,$EF,$FB,$FE,$FD
L1ED6: .byte $C4,$74
L1ED8: .byte $38
L1ED9: .byte $68
L1EDA: .byte $E9,$C9,$A9,$89
L1EDE: .byte $80,$60,$40,$20
L1EE2: .byte $80,$85,$8A,$8F
L1EE6: .byte $05,$02,$07,$04,$01,$06,$03,$00
L1EEE: STA    $D8     
       LDA    $AD     
       AND    #$07    
       TAY            
       LDA    $D8     
       CLC            
       ADC    L1EE6,Y 
       LSR            
       LSR            
       LSR            
       EOR    #$10    
       SEC            
       SBC    #$10    
       RTS            

L1F04: JSR    L1DC4   
       STY    $E3     
       CMP    #$44    
       BNE    L1F1F   
       LDA    #$10    
       ORA    $98     
       STA    $98     
       LDA    #$07    
       STA    $C2     
       LDA    #$03    
       JSR    L1FA5   
       JMP    L1F5D   
L1F1F: CMP    #$08    
       BNE    L1F46   
       LDA    $B7,X   
       AND    #$04    
       BNE    L1F64   
       TXA            
       EOR    #$01    
       TAY            
       LDA.wy $00B7,Y 
       AND    #$04    
       BNE    L1F64   
       LDA    #$08    
       ORA    $98     
       AND    #$FB    
       STA    $98     
       LDA    #$C0    
       STA    $AF,X   
       LDA    #$04    
       STA    $B7,X   
       BNE    L1F5D   
L1F46: CMP    #$38    
       BNE    L1F5D   
       LDA    $94     
       BNE    L1F5D   
       LDA    #$07    
       JSR    L1FA5   
       LDA    $A1,X   
       AND    #$7F    
       CMP    #$06    
       BEQ    L1F5D   
       INC    $A1,X   
L1F5D: LDA    L1ED6,X 
       LDY    $E3     
       STA    ($ED),Y 
L1F64: RTS            

L1F65: LDA    $94     
       BNE    L1F71   
       LDA.wy $00AB,Y 
       ASL            
       ASL            
       ASL            
       STA    $E9     
L1F71: STY    $DA     
       LDX    #$00    
       LDA.wy $009D,Y 
       JSR    L1F90   
       LDA.wy $009B,Y 
       JSR    L1F90   
       LDX    #$06    
L1F83: LDA    $DF,X   
       BNE    L1F8F   
       LDA    #$50    
       STA    $DF,X   
       DEX            
       DEX            
       BNE    L1F83   
L1F8F: RTS            

L1F90: STA    $D8     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $DF,X   
       INX            
       INX            
       LDA    $D8     
       AND    #$F0    
       LSR            
       STA    $DF,X   
       INX            
       INX            
       RTS            

L1FA5: STA    $E9     
       LDA    $94     
       BNE    L1FCB   
       LDA    $E9     
       SED            
       CLC            
       ADC    $9D,X   
       STA    $9D,X   
       LDA    #$00    
       BCC    L1FB9   
       ADC    #$00    
L1FB9: CLC            
       ADC    $9B,X   
       STA    $9B,X   
       CLD            
       CMP    #$20    
       BNE    L1FCB   
       LDA    $DD,X   
       BNE    L1FCB   
       INC    $AB,X   
       INC    $DD,X   
L1FCB: RTS            

L1FCC: LDA    $A4,X   
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$03    
       BEQ    L1FCB   
       LDA    #$10    
       BNE    L1FE4   
L1FDA: LDA    $A4,X   
       LSR            
       LSR            
       LSR            
       LSR            
       BEQ    L1FCB   
       LDA    #$F0    
L1FE4: CLC            
       ADC    $A4,X   
       JMP    L1DC6   
L1FEA: LDA    #$00    
       STA    $A1     
       STA    $A2     
       RTS            

L1FF1: .byte $03,$08,$0C,$19,$23,$08,$01,$00,$01,$51,$15,$51,$15,$51,$15
