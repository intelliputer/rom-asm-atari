; Disassembly of roms/Malagai.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Malagai.bin
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
ENAM1   =  $1E
HMP0    =  $20
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
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
       TXA            
L1005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    L1005   
       LDA    #$AA    
       STA    $EA     
       LDA    #$C4    
       STA    $D4     
L1013: JSR    L102B   
       JSR    L1BA0   
       JSR    L13E3   
       JSR    L157B   
       JSR    L104E   
       JSR    L1A6E   
       JSR    L1864   
       JMP    L1013   
L102B: LDX    INTIM   
       BNE    L102B   
       STX    HMCLR   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STX    WSYNC   
       STX    VSYNC   
       LDA    #$28    
       STA    TIM64T  
       RTS            

L104E: LDX    #$07    
       STX    $B7     
       STX    $B8     
       LDX    #$01    
L1056: LDA    #$01    
       CLC            
       ADC    $BE,X   
       LDY    #$02    
       SEC            
L105E: INY            
       SBC    #$0F    
       BCS    L105E   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    $D5,X   
       STA    $D7,X   
       DEX            
       BPL    L1056   
       LDA    #$50    
       LDX    #$01    
L1076: LDY    #$08    
       STA    WSYNC   
L107A: DEY            
       BPL    L107A   
       NOP            
       STA    RESM0,X 
       STA    HMM0,X  
       DEX            
       BPL    L1076   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       INX            
       BIT    $B6     
       BPL    L1099   
       INX            
L1099: LDA    L1FCE,X 
       AND    $E3     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D4     
       AND    #$04    
       BEQ    L10BC   
       LDX    #$08    
       LDY    #$04    
L10B0: LDA    L1E30,Y 
       STA    $F0,X   
       DEX            
       DEX            
       DEY            
       BPL    L10B0   
       BMI    L10F6   
L10BC: LDX    #$00    
       BIT    $B6     
       BPL    L10C3   
       INX            
L10C3: LDA    $E8,X   
       STA    $F1     
       LDX    #$08    
L10C9: AND    #$03    
       TAY            
       BEQ    L10D9   
       LDA    $B6     
       AND    #$07    
       LSR            
       BEQ    L10DB   
       LDY    #$04    
       BNE    L10DB   
L10D9: LDY    #$0F    
L10DB: LDA    L1F1B,Y 
       STA    $F0,X   
       LDA    $F1     
       LSR            
       LSR            
       CPX    #$04    
       BNE    L10EA   
       LSR            
       LSR            
L10EA: DEX            
       DEX            
       DEX            
       DEX            
       BPL    L10C9   
       LDA    #$71    
       STA    $F2     
       STA    $F6     
L10F6: LDA    $E4     
       AND    $E3     
       STA    COLUPF  
L10FC: LDA    INTIM   
       BNE    L10FC   
       STA    WSYNC   
       STA    HMCLR   
       STA    VBLANK  
       STA    COLUBK  
       JSR    L13A0   
       JSR    L132D   
       LDA    #$06    
       STA    TIM64T  
       LDX    #$01    
L1116: LDY    $D5,X   
       LDA    $D7,X   
       STA    WSYNC   
L111C: DEY            
       BPL    L111C   
       STA    RESP0,X 
       STA    HMP0,X  
       DEX            
       BPL    L1116   
       LDA    $CA     
       ASL            
       ASL            
       ASL            
       STA    REFP0   
L112D: LDX    INTIM   
       BNE    L112D   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E5     
       STA    COLUP0  
       LDA    $E6     
       STA    COLUP1  
       LDA    #$30    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$00    
       BIT    $E7     
       BVC    L114B   
       DEY            
L114B: STY    $D7     
       LDA    #$31    
       STA    CTRLPF  
       LDA    #$FF    
       LDY    #$7F    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STY    PF2     
       STX    $F1     
       STX    $F2     
       INX            
       JSR    L1338   
       JSR    L1338   
       LDY    $B2     
       BIT    $E7     
       BMI    L1170   
       LDY    #$00    
L1170: STY    $F3     
       LDY    #$0E    
       STY    $B9     
       JSR    L1338   
       JSR    L137A   
       JSR    L135F   
       JSR    L135F   
       LDA    #$00    
       DEC    $F3     
       BMI    L118A   
       LDA    #$FF    
L118A: STA    $F1     
       JSR    L135F   
       LDA    #$00    
       STA    $F1     
       JSR    L135F   
       LDA    #$00    
       DEC    $F3     
       BMI    L119E   
       LDA    #$FF    
L119E: STA    $F1     
       JSR    L135F   
       LDA    #$00    
       STA    $F1     
       JSR    L135F   
       LDA    #$00    
       DEC    $F3     
       BMI    L11B2   
       LDA    #$FF    
L11B2: STA    $F1     
       JSR    L135F   
       LDA    #$00    
       STA    $F1     
       JSR    L1338   
       DEC    $B9     
L11C0: JSR    L137A   
       JSR    L135F   
       JSR    L1338   
       DEC    $B9     
       BNE    L11D3   
       LDA    $D7     
       STA    ENAM0   
       STA    $F2     
L11D3: JSR    L137A   
       JSR    L135F   
       JSR    L1350   
       JSR    L1338   
       DEC    $B9     
       BPL    L11C0   
       LDY    #$00    
       STY    WSYNC   
       STY    GRP1    
       STY    $F2     
       STY    $F1     
       STX    $F3     
       LDX    #$FF    
       LDA    $D4     
       LSR            
       BCC    L11F8   
       LDA    #$80    
L11F8: ORA    #$7F    
       STY    WSYNC   
       STX    PF0     
       STY    GRP0    
       STY    ENAM0   
       STX    PF1     
       STA    PF2     
       LDX    $F3     
       JSR    L1362   
       JSR    L135F   
       LDY    #$03    
       LDA    #$00    
       STA    WSYNC   
       STA    REFP0   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STY    NUSIZ0  
       STY    NUSIZ1  
       STY    VDELP0  
       STY    VDELP1  
       JSR    L13D8   
       LDX    #$00    
       BIT    $B6     
       BVS    L1232   
       BPL    L1237   
       INX            
       BNE    L1237   
L1232: LDA    $B6     
       AND    #$01    
       TAX            
L1237: LDA    L1FCE,X 
       AND    $E3     
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUPF  
       LDA    $D4     
       LDY    #$00    
       LSR            
       BCC    L124F   
       AND    #$10    
       BEQ    L124F   
       LDY    $AE     
L124F: LDA    L1F71,Y 
       LDX    L1FED,Y 
       STA    WSYNC   
       STA    PF1     
       STX    PF2     
       LDA    #$30    
       STA    TIM64T  
       LDX    #$00    
       STX    HMCLR   
       LDX    #$06    
       STA    WSYNC   
L1268: DEX            
       BNE    L1268   
       ASL    $F0,X   
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       LDX    #$00    
       STA    WSYNC   
       STX    PF1     
       STX    PF2     
       STA    HMOVE   
       LDA    #$71    
       LDX    #$08    
L1283: STA    $F0,X   
       DEX            
       DEX            
       BPL    L1283   
       LDY    #$80    
       JSR    L1CB0   
       BEQ    L1296   
       LDA    #$71    
       STA    $F0     
       BNE    L12C5   
L1296: BIT    $B6     
       BVS    L12AE   
       LDY    $B1     
       BEQ    L12C5   
       DEY            
       BEQ    L12C5   
       LDA    #$6A    
       LDX    #$00    
L12A5: STA    $F0,X   
       INX            
       INX            
       DEY            
       BNE    L12A5   
       BEQ    L12C5   
L12AE: LDA    $B6     
       AND    #$01    
       TAX            
       INX            
       LDA    L1F20,X 
       STA    $F0     
       LDA    $B6     
       AND    #$0F    
       LSR            
       TAX            
       INX            
       LDA    L1F20,X 
       STA    $F8     
L12C5: JSR    L13A0   
       LDY    #$9C    
       JSR    L1CB0   
       BMI    L132A   
       LDY    #$04    
       BIT    $B6     
       BPL    L12D6   
       INY            
L12D6: LDX    #$08    
       LDA    #$00    
       STA    $FA     
       BEQ    L12F8   
L12DE: LDA.wy $00CE,Y 
       JSR    L1CC3   
       TAX            
       BEQ    L12E9   
       INC    $FA     
L12E9: LDA    $FA     
       BNE    L12EF   
       LDX    #$0A    
L12EF: LDA    L1F20,X 
       LDX    $FB     
       STA    $F0,X   
       DEX            
       DEX            
L12F8: STX    $FB     
       LDA.wy $00CE,Y 
       AND    #$0F    
       TAX            
       BEQ    L1304   
       INC    $FA     
L1304: LDA    $FA     
       BNE    L130A   
       LDX    #$0A    
L130A: LDA    L1F20,X 
       LDX    $FB     
       STA    $F0,X   
       DEX            
       DEX            
       STX    $FB     
       DEY            
       DEY            
       BPL    L12DE   
       LDA    $FA     
       BNE    L132A   
       LDA    $D4     
       LSR            
       BCC    L1326   
       LDA    #$2B    
       BNE    L1328   
L1326: LDA    #$71    
L1328: STA    $F0     
L132A: JSR    L13A0   
L132D: LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       RTS            

L1338: LDA    #$00    
       CPX    $BA     
       BCC    L1346   
       LDY    $B7     
       BMI    L1346   
       LDA    ($BC),Y 
       DEC    $B7     
L1346: INX            
       LDY    $F1     
       STA    WSYNC   
       STA    GRP0    
       STY    ENAM1   
       RTS            

L1350: JSR    L135F   
       JSR    L135F   
       JSR    L135F   
       JSR    L135F   
       JSR    L135F   
L135F: JSR    L1338   
L1362: LDA    #$00    
       CPX    $BB     
       BCC    L1370   
       LDY    $B8     
       BMI    L1370   
       LDA    ($C0),Y 
       DEC    $B8     
L1370: INX            
       LDY    $F2     
       STA    WSYNC   
       STA    GRP1    
       STY    ENAM0   
       RTS            

L137A: LDA    #$00    
       CPX    $BB     
       BCC    L1388   
       LDY    $B8     
       BMI    L1388   
       LDA    ($C0),Y 
       DEC    $B8     
L1388: STX    $F0     
       LDX    $B9     
       LDY    $80,X   
       STY    WSYNC   
       STA    GRP1    
       STY    PF0     
       LDA    $8F,X   
       STA    PF1     
       LDA    $9E,X   
       STA    PF2     
       LDX    $F0     
       INX            
       RTS            

L13A0: LDA    #$1F    
       LDX    #$09    
L13A4: STA    $F0,X   
       DEX            
       DEX            
       BPL    L13A4   
       LDA    #$06    
       STA    $FA     
L13AE: LDY    $FA     
       LDA    #$00    
       STA    GRP0    
       STA    GRP0    
       STA    WSYNC   
       LDA    ($F8),Y 
       STA    GRP1    
       LDA    ($F6),Y 
       STA    GRP0    
       LDA    ($F4),Y 
       STA    $FB     
       LDA    ($F2),Y 
       TAX            
       LDA    ($F0),Y 
       TAY            
       LDA    $FB     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $FA     
       BPL    L13AE   
L13D8: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       RTS            

L13E3: LDA    $D4     
       LSR            
       BCS    L13F6   
L13E8: LDA    #$00    
       LDX    #$05    
L13EC: STA    AUDC0,X 
       DEX            
       BPL    L13EC   
       STA    $DC     
       STA    $DE     
L13F5: RTS            

L13F6: JSR    L1CC3   
       TAY            
       BEQ    L13F5   
       CMP    #$01    
       BNE    L1403   
       JMP    L14AD   
L1403: CMP    #$02    
       BEQ    L1463   
       CMP    #$03    
       BNE    L140E   
       JMP    L14B2   
L140E: CMP    #$06    
       BMI    L13F5   
       BEQ    L1463   
       STY    $E1     
       LDY    #$00    
       STY    $D9     
       STY    AUDC0   
       STY    AUDF0   
       STY    AUDV0   
       LDX    #$04    
       STX    AUDV1   
       LDA    $CA     
       CMP    $E0     
       BNE    L1434   
       DEC    $DE     
       BPL    L1462   
       DEC    $DF     
       BPL    L1457   
       LDA    $CA     
L1434: AND    #$07    
       TAY            
       LDA    $CA     
       STA    $E0     
       AND    #$80    
       BNE    L1443   
       LDY    #$08    
       LDX    #$0C    
L1443: LDA    #$E8    
       CLC            
       ADC    L1DA8,Y 
       STA    $DA     
       LDA    #$1D    
       ADC    #$00    
       STA    $DB     
       LDA    #$07    
       STA    $DF     
       STX    AUDC1   
L1457: LDY    $DF     
       LDA    ($DA),Y 
       STA    AUDF1   
       JSR    L1CC3   
       STA    $DE     
L1462: RTS            

L1463: CPY    $E1     
       BEQ    L1487   
       STY    $E1     
       LDA    #$00    
       STA    $D9     
       LDA    #$04    
       STA    AUDC0   
       STA    $DC     
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$06    
       STA    AUDV0   
       STA    AUDV1   
       LDY    #$0F    
       STY    $DD     
       BNE    L1491   
L1483: LDA    #$04    
L1485: STA    $DC     
L1487: BIT    $D9     
       BMI    L1462   
       DEC    $DC     
       BPL    L1462   
       DEC    $DD     
L1491: LDA    $DD     
       BMI    L1497   
       EOR    #$0F    
L1497: AND    #$0F    
       STA    AUDF0   
       STA    AUDF1   
       BEQ    L14A7   
       CMP    #$0F    
       BNE    L1483   
       LDA    #$20    
       BNE    L1485   
L14A7: LDA    $DD     
       BPL    L1483   
       BMI    L14DD   
L14AD: STY    $E1     
       JMP    L152E   
L14B2: CPY    $E1     
       BNE    L14BA   
       BIT    $D9     
       BMI    L14FA   
L14BA: JSR    L155A   
       LDA    #$8A    
       AND    $D4     
       CMP    #$02    
       BNE    L14FB   
       CPY    $E1     
       BEQ    L14D5   
       STY    $E1     
       LDA    #$00    
       STA    $D9     
       LDA    #$0E    
       STA    $DF     
       BNE    L14E4   
L14D5: DEC    $DE     
       BPL    L14FA   
       DEC    $DF     
       BPL    L14E4   
L14DD: LDA    #$80    
       STA    $D9     
       JMP    L13E8   
L14E4: LDY    $DF     
       LDA    L1E10,Y 
       STA    AUDF1   
       JSR    L1CC3   
       STA    AUDV1   
       LDA    L1E1F,Y 
       STA    AUDC1   
       JSR    L1CC3   
       STA    $DE     
L14FA: RTS            

L14FB: LDA    $D4     
       AND    #$10    
       BNE    L152E   
       CPY    $E1     
       BEQ    L1521   
       STY    $E1     
       LDA    #$00    
       STA    $D9     
       LDA    #$06    
       STA    AUDV1   
       LDA    #$0F    
       STA    AUDC1   
       LDA    #$0D    
       STA    $DF     
L1517: LDA    $DF     
       EOR    #$0F    
       STA    AUDF1   
       LDA    #$0D    
       STA    $DE     
L1521: DEC    $DE     
       BPL    L14FA   
       DEC    $DF     
       BPL    L1517   
       LDA    #$80    
       STA    $D9     
       RTS            

L152E: LDA    #$06    
       STA    AUDC1   
       BIT    $D9     
       BVS    L1546   
       LDA    #$40    
       STA    $D9     
       LDA    #$FF    
       STA    $DF     
       STA    $E0     
L1540: LDA    #$09    
       STA    $DE     
       INC    $DF     
L1546: DEC    $DE     
       BMI    L1540   
       LDA    $DF     
       AND    #$03    
       TAY            
       LDA    L1DE4,Y 
       STA    AUDF1   
       JSR    L1CC3   
       STA    AUDV1   
       RTS            

L155A: LDA    #$04    
       STA    AUDC0   
       LDX    #$00    
       LDA    $EA     
       BEQ    L1568   
       CMP    #$3C    
       BCC    L1574   
L1568: LDA    $AD     
       AND    #$07    
       BEQ    L1574   
       AND    #$03    
       BNE    L1574   
       LDX    #$0F    
L1574: STX    AUDF0   
       LDA    #$08    
       STA    AUDV0   
       RTS            

L157B: LDA    $AD     
       LSR            
       BCS    L15E6   
       LDA    $EA     
       BNE    L1591   
       LDA    $D4     
       LSR            
       BCS    L1591   
       LDA    #$FF    
       CMP    $C3     
       BEQ    L1591   
       STA    $C2     
L1591: LDA    $C2     
       STA    $BA     
       LDA    $C6     
       STA    $BE     
       LDA    L1DD0   
       AND    $E3     
       STA    $E5     
       LDA    $D4     
       AND    #$30    
       CMP    #$20    
       BEQ    L15B7   
       LDA    #$C8    
       TAX            
       LDA    #$1C    
       STX    $F1     
       STA    $F2     
       JSR    L1C69   
       JMP    L15DA   
L15B7: LDA    #$E8    
       STA    $F1     
       LDA    #$1C    
       STA    $F2     
       LDA    #$08    
       STA    $F3     
       LDX    $EA     
       CPX    #$B4    
       BPL    L15DA   
       JSR    L1C7E   
       CPX    #$78    
       BPL    L15DA   
       JSR    L1C7E   
       CPX    #$3C    
       BPL    L15DA   
       JSR    L1C7E   
L15DA: LDX    #$02    
L15DC: LDA    $F1     
       STA    $BC     
       LDA    $F2     
       STA    $BD     
       BNE    L15F9   
L15E6: LDX    #$01    
       JSR    L1C22   
       STA    $BE     
       STY    $BA     
       LDA    $F0     
       AND    $E3     
       STA    $E5     
       LDX    #$03    
       BNE    L15DC   
L15F9: JSR    L1C22   
       STA    $BF     
       STY    $BB     
       LDA    $F0     
       AND    $E3     
       STA    $E6     
       LDA    $F1     
       STA    $C0     
       LDA    $F2     
       STA    $C1     
       LDA    #$8A    
       AND    $D4     
       CMP    #$02    
       BNE    L1647   
       LDA    $EA     
       BNE    L1647   
       LDA    #$03    
       STA    $B2     
       LDA    #$20    
       ORA    $B6     
       STA    $B6     
       LDY    $B0     
       LDA    L1FD0,Y 
       STA    $B0     
       BNE    L1634   
       LDY    #$03    
       JSR    L1B7D   
       INC    $B1     
L1634: LDA    #$CF    
       AND    $D4     
       ORA    #$80    
       STA    $D4     
       LDA    #$AA    
       STA    $EA     
       JSR    L1C01   
       LDA    #$FF    
       STA    $C2     
L1647: LDX    #$02    
       LDA    #$0F    
       BIT    $B6     
       BPL    L1651   
       LDA    #$F0    
L1651: STA    $F0     
L1653: LDA    $B0,X   
       BIT    $B6     
       BMI    L165D   
       ASL            
       ASL            
       ASL            
       ASL            
L165D: STA    $F1,X   
       DEX            
       BPL    L1653   
       LDX    #$02    
L1664: LDA    $B3,X   
       AND    $F0     
       ORA    $F1,X   
       STA    $B3,X   
       DEX            
       BPL    L1664   
       LDA    $D4     
       LSR            
       BCS    L167A   
       LDA    #$00    
       STA    $E7     
       BEQ    L1694   
L167A: LDA    $B1     
       BNE    L1694   
       LDA    $EA     
       BNE    L1694   
       LDA    $B6     
       LSR            
       BCC    L168E   
       LDA    $B4     
       BEQ    L168E   
       JMP    L1781   
L168E: STA    $B5     
       LDA    #$F0    
       STA    $D4     
L1694: LDA    $D4     
       AND    #$20    
       BNE    L1701   
       LDX    $EA     
       CPX    #$2D    
       BMI    L16BE   
       LDY    #$00    
       CPX    #$7B    
       BPL    L16AB   
       STY    $E4     
       JMP    L1701   
L16AB: STY    NUSIZ1,X
       DEY            
       LDX    #$03    
L16B0: STY    $C2,X   
       DEX            
       BPL    L16B0   
       LDA    #$0F    
       AND    $E7     
       STA    $E7     
       JMP    L1701   
L16BE: LDA    $B1     
       CMP    #$07    
       BNE    L16D4   
       LDA    #$FF    
       STA    $C3     
       STA    $C4     
       STA    $C5     
       LDA    #$40    
       STA    $C2     
       LDA    #$00    
       BEQ    L168E   
L16D4: LDX    #$00    
       LDA    $EA     
L16D8: CMP    #$0F    
       BMI    L16E2   
       INX            
       SEC            
       SBC    #$0F    
       BPL    L16D8   
L16E2: CMP    #$07    
       BCC    L16EA   
       EOR    #$0F    
       SBC    #$01    
L16EA: CLC            
       LDY    $B0     
       ADC    L1FC6,Y 
       ADC    L1FC9,X 
       LDX    L1DCD,Y 
       TAY            
       LDA    L1E40,Y 
       LDY    $EA     
       STA.wy $0080,Y 
       STX    $E4     
L1701: LDA    $D4     
       AND    #$10    
       BNE    L170B   
       LDA    $EA     
       BEQ    L170E   
L170B: JMP    L17C7   
L170E: LDA    $B6     
       LSR            
       BCC    L1719   
       LDA    $D4     
       AND    #$20    
       BNE    L1781   
L1719: LDA    #$7C    
       STA    $C2     
       LDA    #$4C    
       STA    $C6     
       LDA    $AD     
       LSR            
       LDA    $AF     
       AND    #$03    
       BCS    L172C   
       ADC    #$02    
L172C: TAY            
       LDA    L1DBB,Y 
       ORA    L1DC1,Y 
       ORA    L1DC7,Y 
       STA    $F0     
       LDX    #$02    
L173A: AND    #$03    
       TAY            
       DEY            
       LDA    L1DB1,Y 
       STA    $C3,X   
       LDA    L1DB4,Y 
       STA    $C7,X   
       DEX            
       BMI    L1753   
       LSR    $F0     
       LSR    $F0     
       LDA    $F0     
       BNE    L173A   
L1753: LDY    #$00    
       LDX    #$03    
L1757: STY    $CA,X   
       DEX            
       BPL    L1757   
       LDA    $D4     
       AND    #$04    
       BNE    L1764   
       STX    $EA     
L1764: JSR    L1C91   
       LDA    #$F8    
       ORA    $D4     
       AND    #$FD    
       STA    $D4     
       LSR            
       BCC    L1778   
       LDA    #$C0    
       ORA    $E7     
       BNE    L177C   
L1778: LDA    #$0F    
       AND    $E7     
L177C: STA    $E7     
       JMP    L17C7   
L1781: LDA    $B6     
       AND    #$20    
       BNE    L17C7   
       LDA    #$0F    
       BIT    $B6     
       BPL    L178F   
       LDA    #$F0    
L178F: AND    $B4     
       BEQ    L1719   
       LDA    #$80    
       EOR    $B6     
       STA    $B6     
       LDA    $B5     
       LDX    #$01    
       BIT    $B6     
       BMI    L17A5   
       DEX            
       JSR    L1CC3   
L17A5: AND    #$03    
       EOR    #$03    
       TAY            
       LDA    $E8,X   
L17AC: CPY    #$00    
       BEQ    L17B5   
       LSR            
       LSR            
       DEY            
       BNE    L17AC   
L17B5: AND    #$03    
       STA    $E7     
       LDA    #$AA    
       STA    $EA     
       LDA    #$28    
       STA    $EB     
       LDA    #$CF    
       AND    $D4     
       STA    $D4     
L17C7: LDA    SWCHB   
       LSR            
       BCC    L17E3   
       LSR            
       BCC    L1814   
       LDY    #$FF    
       AND    #$02    
       BNE    L17D8   
       LDY    #$0F    
L17D8: STY    $E3     
       LDA    $D4     
       LSR            
       BCS    L1830   
       LDA    INPT4   
       BMI    L1830   
L17E3: LDA    #$33    
       STA    $B4     
       STA    $B5     
       LDA    #$C9    
       STA    $D4     
       LDA    #$AA    
       STA    $EA     
       LDA    #$28    
       STA    $EB     
       LDA    #$00    
       LDX    #$05    
L17F9: STA    $CE,X   
       DEX            
       BPL    L17F9   
       STA    $B3     
       STA    $B0     
       STA    $EC     
       LDA    $B6     
       AND    #$0F    
       ORA    #$20    
       STA    $B6     
       JSR    L1C01   
       INX            
       STA    $E8,X   
       BNE    L1830   
L1814: LDA    $AD     
       AND    #$1F    
       BNE    L1830   
       INC    $B6     
       LDA    $B6     
       AND    #$0F    
       CMP    #$06    
       BNE    L1826   
       LDA    #$00    
L1826: ORA    #$40    
       STA    $B6     
       LDA    #$F0    
       STA    $C2     
       STA    $D4     
L1830: LDX    #$02    
L1832: LDA    $B3,X   
       BIT    $B6     
       BMI    L183B   
       JSR    L1CC3   
L183B: AND    #$0F    
       STA    $B0,X   
       DEX            
       BPL    L1832   
       BIT    $D4     
       BMI    L1863   
       LDA    $EA     
       BNE    L1863   
       LDA    $B6     
       AND    #$04    
       BNE    L1863   
       LDA    $AD     
       AND    #$0F    
       BNE    L1863   
       LDA    $D4     
       LSR            
       LSR            
       LDA    #$40    
       BCC    L185F   
       ASL            
L185F: EOR    $E7     
       STA    $E7     
L1863: RTS            

L1864: BIT    $E2     
       BPL    L1871   
       LDY    $EF     
       LDX    L1DB7,Y 
       STX    $EF     
       BNE    L187A   
L1871: LDA    $AD     
       LDX    #$03    
       AND    #$01    
       BNE    L187A   
       DEX            
L187A: LDY    #$00    
       STY    $BD     
       STX    $BE     
       LDA    $C2,X   
       SEC            
       SBC    #$04    
L1885: BEQ    L1890   
       INY            
       SBC    #$14    
       BPL    L1885   
       LDA    #$03    
       STA    $BD     
L1890: STY    $C1     
       LDA    $C6,X   
       AND    #$03    
       BEQ    L189E   
       LDA    $BD     
       ORA    #$0C    
       STA    $BD     
L189E: LDA    $BD     
       BNE    L18F2   
       LDA    $C6,X   
       CMP    #$4D    
       PHP            
       BMI    L18AE   
       LDA    #$98    
       SEC            
       SBC    $C6,X   
L18AE: LSR            
       LSR            
       LSR            
       PHP            
       LDX    $B0     
       LDY    $C1     
       CLC            
       ADC    L1FD2,X 
       ADC    L1FE6,Y 
       TAY            
       LDA    L1E88,Y 
       PLP            
       BCS    L18C7   
       JSR    L1CC3   
L18C7: AND    #$0F    
       STA    $BD     
       LDY    #$03    
       CPY    $C1     
       BPL    L18DF   
       AND    #$03    
       BEQ    L18DF   
       CMP    #$03    
       BEQ    L18DF   
       LDA    #$03    
       EOR    $BD     
       STA    $BD     
L18DF: PLP            
       BMI    L18F2   
       LDA    $BD     
       LSR            
       LSR            
       BEQ    L18F2   
       CMP    #$03    
       BEQ    L18F2   
       LDA    #$0C    
       EOR    $BD     
       STA    $BD     
L18F2: LDA    $EA     
       BEQ    L18F7   
       RTS            

L18F7: LDA    #$4C    
       LDX    $BE     
       CMP    $C6,X   
       BNE    L1926   
       LDY    $C1     
       CPY    #$01    
       BNE    L190F   
       CPX    #$00    
       BNE    L1920   
       LDA    $D4     
       AND    #$08    
       BEQ    L1920   
L190F: LDA    #$81    
       CPX    #$00    
       BNE    L1918   
       CLC            
       ADC    #$0D    
L1918: CMP    $C2,X   
       BCS    L1926   
       LDA    #$0D    
       BNE    L1922   
L1920: LDA    #$0E    
L1922: AND    $BD     
       STA    $BD     
L1926: LDX    $BE     
       BNE    L192D   
       JMP    L19DF   
L192D: LDA    $EC     
       BEQ    L1934   
L1931: JMP    L1A58   
L1934: LDA    $C3     
       CMP    #$FF    
       BEQ    L1931   
       LDY    #$03    
       LDA    $C2     
       CMP    $C2,X   
       BEQ    L1946   
       BCS    L1945   
       DEY            
L1945: DEY            
L1946: STY    $BE     
       LDY    #$03    
       LDA    $C6     
       CMP    $C6,X   
       BEQ    L1954   
       BCS    L1953   
       DEY            
L1953: DEY            
L1954: TYA            
       ASL            
       ASL            
       ORA    $BE     
       BIT    $D4     
       BPL    L1963   
       CMP    #$0F    
       BEQ    L1963   
       EOR    #$0F    
L1963: AND    $BD     
       STA    $BF     
       LDA    $CA,X   
       AND    #$04    
       BNE    L1971   
       LDA    #$03    
       BNE    L1973   
L1971: LDA    #$0C    
L1973: AND    $BF     
       BNE    L1997   
       LDA    $CA,X   
       AND    #$07    
       TAY            
       LDA    L1FD5,Y 
       AND    $BD     
       BNE    L1994   
L1983: LDA    $AF     
       AND    #$07    
       TAY            
       LDA    L1FD5,Y 
       AND    $BD     
       BNE    L1994   
       INC    $AF     
       JMP    L1983   
L1994: JMP    L1A23   
L1997: BIT    $D4     
       BPL    L1994   
       INC    $AF     
       TAY            
       LDA    $AF     
       AND    #$01    
       BEQ    L19A7   
       TYA            
       BNE    L1994   
L19A7: LDY    $BF     
       LDA    L1DD4,Y 
       BEQ    L19C9   
       TAY            
       BPL    L19CC   
       TXA            
       AND    $AF     
       BEQ    L19BA   
       LDA    #$03    
       BNE    L19BC   
L19BA: LDA    #$0C    
L19BC: AND    $BD     
       STA    $BF     
       TYA            
       AND    #$7F    
       BNE    L19CC   
       LDA    $BF     
       BNE    L1A23   
L19C9: TYA            
       BNE    L1A23   
L19CC: INC    $AF     
       LDA    $AF     
       AND    #$01    
       BEQ    L19DB   
L19D4: CPX    #$02    
       BNE    L1A23   
       ASL            
       BNE    L1A23   
L19DB: LDA    #$04    
       BNE    L19D4   
L19DF: LDA    $EB     
       BEQ    L19E4   
       RTS            

L19E4: LDA    SWCHA   
       EOR    #$FF    
       BIT    $B6     
       BMI    L19F0   
       JSR    L1CC3   
L19F0: AND    #$0F    
       STA    $BF     
       BIT    $CA     
       BMI    L1A00   
       LDA    $BF     
       AND    $BD     
       BEQ    L1A22   
       BNE    L1A23   
L1A00: LDA    $CA     
       AND    #$07    
       TAY            
       LDA    L1FD5,Y 
       STA    $BE     
       EOR    #$0F    
       AND    $BF     
       BEQ    L1A16   
       AND    $BD     
       BEQ    L1A16   
       BNE    L1A23   
L1A16: LDA    $BE     
       AND    $BD     
       BNE    L1A23   
       LDA    #$7F    
       AND    $CA     
       STA    $CA     
L1A22: RTS            

L1A23: TAY            
       AND    #$03    
       BEQ    L1A3E   
       LDY    #$71    
       CMP    #$01    
       BNE    L1A36   
       DEC    $C2,X   
       DEC    $C2,X   
       LDA    #$84    
       BNE    L1A4F   
L1A36: INC    $C2,X   
       INC    $C2,X   
       LDA    #$86    
       BNE    L1A4F   
L1A3E: TYA            
       LDY    #$72    
       CMP    #$04    
       BNE    L1A4B   
       DEC    $C6,X   
       LDA    #$80    
       BNE    L1A4F   
L1A4B: INC    $C6,X   
       LDA    #$81    
L1A4F: STA    $BE     
       TYA            
       AND    $CA,X   
       ORA    $BE     
       STA    $CA,X   
L1A58: BIT    $E2     
       BPL    L1A66   
       TXA            
       BEQ    L1A6D   
       LDA    $AD     
       AND    #$01    
       TAX            
       BEQ    L1A6A   
L1A66: DEX            
       DEX            
       BMI    L1A6D   
L1A6A: JMP    L187A   
L1A6D: RTS            

L1A6E: LDA    $D4     
       LSR            
       BCC    L1A6D   
       LDA    $EA     
       ORA    $EB     
       BNE    L1A6D   
       LDA    $C6     
       CMP    #$4C    
       BEQ    L1A82   
       JMP    L1B09   
L1A82: LDA    #$06    
       LDY    $B2     
       BEQ    L1A8E   
       CLC            
L1A89: ADC    #$04    
       DEY            
       BNE    L1A89   
L1A8E: CMP    $C2     
       BCS    L1A9B   
       LDA    $D4     
       ORA    #$08    
       STA    $D4     
       JMP    L1AF7   
L1A9B: LDA    #$F7    
       AND    $D4     
       STA    $D4     
       LDA    #$7F    
       AND    $CA     
       STA    $CA     
       LDA    $D4     
       BMI    L1B09   
       AND    #$02    
       BEQ    L1B09   
       LDY    #$01    
       JSR    L1B7D   
       DEC    $B2     
       BNE    L1AC0   
       LDY    #$02    
       JSR    L1B7D   
       JMP    L1B5B   
L1AC0: LDX    #$00    
       BIT    $B6     
       BPL    L1AC7   
       INX            
L1AC7: LDY    $B2     
       LDA    #$3C    
       CPY    #$02    
       BEQ    L1AD1   
       ASL            
       ASL            
L1AD1: AND    $E8,X   
       STA    $E8,X   
       TYA            
       EOR    #$03    
       TAY            
       LDA    $E8,X   
L1ADB: LSR            
       LSR            
       DEY            
       BNE    L1ADB   
       AND    #$03    
L1AE2: ORA    #$C0    
       STA    $E7     
       LDA    #$3C    
       STA    $EA     
       STA    $EB     
       LDA    #$FD    
       AND    $D4     
       ORA    #$80    
       STA    $D4     
       JMP    L1C91   
L1AF7: LDA    $C2     
       CMP    #$7E    
       BCC    L1B09   
       LDA    $D4     
       BMI    L1B09   
       AND    #$02    
       BNE    L1B09   
       LDA    $E7     
       BNE    L1AE2   
L1B09: LDA    $EC     
       BNE    L1B5F   
       LDX    #$03    
L1B0F: LDA    $C6     
       SEC            
       SBC    $C6,X   
       BCS    L1B1A   
       EOR    #$FF    
       ADC    #$01    
L1B1A: CMP    #$07    
       BCS    L1B2D   
       LDA    $C2     
       SEC            
       SBC    $C2,X   
       BCS    L1B29   
       EOR    #$FF    
       ADC    #$01    
L1B29: CMP    #$10    
       BCC    L1B31   
L1B2D: DEX            
       BNE    L1B0F   
       RTS            

L1B31: LDA    $D4     
       BPL    L1B60   
       AND    #$3F    
       STA    $D4     
       LDY    #$00    
       JSR    L1B7D   
       LDA    $E7     
       AND    #$03    
       CMP    $F0     
       BNE    L1B57   
       LDA    $B6     
       AND    #$04    
       BNE    L1B51   
       LDY    #$04    
       JSR    L1B7D   
L1B51: LDA    $D4     
       ORA    #$02    
L1B55: STA    $D4     
L1B57: LDA    #$28    
       STA    $EC     
L1B5B: LDA    #$3C    
       STA    $EA     
L1B5F: RTS            

L1B60: DEC    $B1     
       LDA    #$F0    
       STA    $EA     
       LDA    #$28    
       STA    $EB     
       LDA    $B6     
       AND    #$DF    
       STA    $B6     
       LDA    #$EF    
       AND    $D4     
       STA    $D4     
       LDA    #$C0    
       ORA    $E7     
       STA    $E7     
       RTS            

L1B7D: STX    $F0     
       LDX    #$00    
       BIT    $B6     
       BPL    L1B86   
       INX            
L1B86: SED            
       CLC            
       LDA    $CE,X   
       ADC    L1FDD,Y 
       STA    $CE,X   
       LDA    $D0,X   
       ADC    L1FE2,Y 
       STA    $D0,X   
       LDA    $D2,X   
       ADC    #$00    
       STA    $D2,X   
       CLD            
       LDX    $F0     
       RTS            

L1BA0: INC    $AD     
       LDA    $AD     
       AND    #$3F    
       BNE    L1BC6   
       LDA    $D4     
       BPL    L1BC6   
       LSR            
       BCC    L1BC6   
       LDA    $EA     
       ORA    $EB     
       ORA    $EC     
       BNE    L1BC6   
       DEC    $AE     
       BPL    L1BC6   
       LDA    #$00    
       STA    $AE     
       LDA    #$3F    
       AND    $D4     
       JSR    L1B55   
L1BC6: INC    $AF     
       LDY    $EA     
       BEQ    L1BEA   
       CPY    #$FF    
       BNE    L1BE6   
       LDA    SWCHA   
       BIT    $B6     
       BMI    L1BDA   
       JSR    L1CC3   
L1BDA: AND    #$0F    
       CMP    #$0F    
       BEQ    L1C00   
       LDY    #$01    
       STY    $EA     
       STY    $EB     
L1BE6: DEC    $EA     
       BNE    L1C00   
L1BEA: LDA    $EB     
       BEQ    L1BF2   
       DEC    $EB     
       BEQ    L1BFA   
L1BF2: LDA    $EC     
       BEQ    L1C00   
       DEC    $EC     
       BNE    L1C00   
L1BFA: LDA    #$40    
       ORA    $D4     
       STA    $D4     
L1C00: RTS            

L1C01: LDX    #$00    
       BIT    $B6     
       BPL    L1C08   
       INX            
L1C08: LDA    $AF     
       LSR            
       LDA    $AD     
       AND    #$03    
       BCS    L1C13   
       ADC    #$02    
L1C13: TAY            
       LDA    L1DBB,Y 
       STA    $E7     
       ORA    L1DC1,Y 
       ORA    L1DC7,Y 
       STA    $E8,X   
       RTS            

L1C22: BIT    $D4     
       BMI    L1C35   
       LDA    L1DD3   
       STA    $F0     
       LDA    #$88    
       STA    $F1     
       LDA    #$1D    
       STA    $F2     
       BNE    L1C69   
L1C35: LDA    $B6     
       AND    #$0F    
       LSR            
       TAY            
       LDA    L1DD3   
       CPY    #$02    
       BEQ    L1C45   
       LDA    L1DD0,X 
L1C45: STA    $F0     
       CPY    #$00    
       BNE    L1C61   
       TXA            
       TAY            
       LDA    #$28    
       STA    $F1     
       LDA    #$1D    
       STA    $F2     
       DEY            
       BEQ    L1C69   
       LDA    #$20    
       STA    $F3     
       JSR    L1C80   
       BEQ    L1C69   
L1C61: LDA    #$08    
       STA    $F1     
       LDA    #$1D    
       STA    $F2     
L1C69: LDA    $AD     
       LSR            
       LSR            
       AND    #$03    
       TAY            
       BEQ    L1C79   
       LDA    #$08    
       STA    $F3     
       JSR    L1C80   
L1C79: LDA    $C6,X   
       LDY    $C2,X   
       RTS            

L1C7E: LDY    #$01    
L1C80: LDA    $F1     
       CLC            
       ADC    $F3     
       STA    $F1     
       LDA    $F2     
       ADC    #$00    
       STA    $F2     
       DEY            
       BNE    L1C80   
       RTS            

L1C91: LDX    #$00    
       LDA    #$40    
       STA    $F0     
       LDA    SWCHB   
       BIT    $B6     
       BPL    L1CA0   
       ASL    $F0     
L1CA0: AND    $F0     
       BNE    L1CA5   
       INX            
L1CA5: LDA    L1FCC,X 
       STA    $AE     
       LDA    L1E2E,X 
       STA    $E2     
       RTS            

L1CB0: LDA    $D4     
       AND    #$04    
       BEQ    L1CC2   
       TYA            
       LDX    #$08    
L1CB9: STA    $F0,X   
       CLC            
       ADC    #$07    
       DEX            
       DEX            
       BPL    L1CB9   
L1CC2: RTS            

L1CC3: LSR            
       LSR            
       LSR            
       LSR            
       RTS            

L1CC8: .byte $60,$20,$38,$78,$38,$58,$58,$30,$60,$20,$38,$7A,$3A,$58,$58,$30
       .byte $60,$20,$38,$79,$39,$58,$58,$30,$60,$20,$38,$78,$38,$58,$58,$30
       .byte $18,$24,$42,$81,$81,$42,$24,$18,$00,$18,$24,$42,$42,$24,$18,$00
       .byte $00,$00,$18,$24,$24,$18,$00,$00,$00,$00,$00,$18,$18,$00,$00,$00
       .byte $66,$99,$38,$18,$7E,$99,$A5,$7E,$E7,$18,$18,$1C,$7E,$99,$A5,$7E
       .byte $66,$99,$18,$38,$7E,$99,$A5,$7E,$E7,$18,$1C,$18,$7E,$99,$A5,$7E
       .byte $66,$99,$38,$18,$7E,$81,$81,$7E,$E7,$18,$18,$1C,$7E,$81,$81,$7E
       .byte $66,$99,$18,$38,$7E,$81,$81,$7E,$E7,$18,$1C,$18,$7E,$81,$81,$7E
       .byte $66,$99,$38,$18,$7E,$99,$99,$7E,$E7,$18,$18,$1C,$7E,$99,$99,$7E
       .byte $66,$99,$18,$38,$7E,$99,$99,$7E,$E7,$18,$1C,$18,$7E,$99,$99,$7E
       .byte $66,$99,$38,$18,$7E,$E7,$E7,$7E,$E7,$18,$18,$1C,$7E,$E7,$E7,$7E
       .byte $66,$99,$18,$38,$7E,$E7,$E7,$7E,$E7,$18,$1C,$18,$7E,$E7,$E7,$7E
       .byte $3C,$18,$18,$18,$3C,$7E,$DB,$7E,$7E,$18,$3C,$7E,$DB,$7E,$3C,$18
       .byte $FF,$DB,$7E,$3C,$18,$18,$3C,$7E,$7E,$18,$3C,$7E,$DB,$7E,$3C,$18
L1DA8: .byte $00,$08,$00,$08,$10,$10,$18,$18,$20
L1DB1: .byte $0C,$18,$0C
L1DB4: .byte $04,$4C,$94
L1DB7: .byte $01,$02,$03,$01
L1DBB: .byte $01,$02,$03,$01,$02,$03
L1DC1: .byte $08,$04,$08,$0C,$04,$04
L1DC7: .byte $30,$30,$10,$20,$30,$20
L1DCD: .byte $34,$B4,$A4
L1DD0: .byte $0C,$C8,$68
L1DD3: .byte $38
L1DD4: .byte $00,$00,$00,$41,$00,$80,$80,$81,$00,$80,$80,$81,$40,$82,$82,$83
L1DE4: .byte $CC,$00,$EA,$00,$29,$33,$44,$55,$66,$77,$88,$99,$22,$38,$47,$56
       .byte $65,$74,$83,$92,$28,$36,$45,$53,$42,$33,$34,$25,$28,$3A,$4B,$5C
       .byte $4F,$3C,$3A,$29,$68,$AB,$6D,$8B,$68,$AB,$6D,$8B
L1E10: .byte $EC,$20,$E1,$C2,$A3,$84,$65,$66,$67,$48,$49,$4A,$2B,$2C,$2D
L1E1F: .byte $A4,$24,$18,$18,$18,$28,$28,$28,$28,$28,$28,$28,$38,$38,$38
L1E2E: .byte $FF,$00
L1E30: .byte $43,$37,$3D,$63,$BF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
L1E40: .byte $10,$90,$10,$90,$90,$90,$10,$F0,$00,$E4,$04,$E4,$04,$27,$20,$3C
       .byte $41,$49,$09,$C9,$00,$79,$08,$CF,$10,$90,$90,$90,$10,$90,$10,$F0
       .byte $00,$E4,$04,$27,$20,$E4,$04,$3F,$41,$49,$08,$79,$08,$CF,$00,$79
       .byte $10,$90,$90,$90,$10,$90,$90,$90,$04,$E4,$04,$24,$20,$24,$04,$E4
       .byte $40,$4F,$08,$C9,$01,$C9,$08,$7F
L1E88: .byte $0A,$CC,$CC,$CE,$CC,$60,$0A,$CC,$60,$03,$0B,$CC,$CC,$C7,$00,$30
       .byte $03,$00,$BC,$CD,$03,$00,$AC,$C7,$00,$9C,$CF,$CC,$DC,$CE,$09,$CC
       .byte $70,$09,$CC,$EC,$C5,$00,$AC,$CD,$0A,$CC,$CC,$CE,$CC,$60,$0A,$CC
       .byte $60,$03,$03,$00,$AC,$C7,$00,$9C,$C7,$00,$9C,$CF,$0B,$CC,$50,$0B
       .byte $CC,$EC,$C5,$00,$AC,$CD,$09,$CC,$EC,$C5,$00,$9C,$CE,$CC,$DC,$CE
       .byte $0A,$CC,$CC,$C6,$00,$AC,$CC,$CC,$60,$03,$03,$00,$AC,$C7,$00,$BC
       .byte $C6,$00,$BC,$CD,$0B,$CC,$70,$0B,$CC,$70,$0B,$CC,$FC,$CC,$03,$00
       .byte $9C,$C7,$00,$BC,$C5,$00,$9C,$CE,$66,$99,$18,$7E,$81,$81,$7E,$66
       .byte $99,$18,$7E,$99,$99,$7E,$66,$99,$18,$7E,$E7,$E7,$7E,$66,$99,$18
       .byte $7E,$99,$A5
L1F1B: .byte $7E,$00,$07,$0E,$15
L1F20: .byte $2B,$63,$57,$43,$4A,$5D,$31,$51,$37,$3D,$71,$3C,$66,$66,$66,$66
       .byte $66,$3C,$66,$66,$7C,$60,$62,$3C,$66,$66,$3C,$66,$66,$3C,$46,$06
       .byte $3E,$66,$66,$3C,$46,$06,$0C,$06,$46,$3C,$0C,$0C,$7E,$4C,$2C,$1C
       .byte $0C,$18,$18,$08,$04,$02,$62,$7E,$60,$60,$3C,$06,$46,$7C,$46,$06
       .byte $7C,$60,$60,$7E,$18,$18,$18,$18,$78,$38,$60,$20,$38,$78,$38,$58
       .byte $30
L1F71: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$07,$0F,$1F,$3F,$05
       .byte $05,$05,$07,$05,$05,$02,$49,$4A,$48,$59,$6A,$4A,$49,$14,$AA,$AA
       .byte $22,$22,$A2,$22,$E9,$8A,$8C,$CF,$89,$89,$EF,$11,$2A,$0A,$12,$22
       .byte $2A,$11,$21,$A1,$A1,$B1,$A1,$A1,$3B,$14,$2A,$2A,$22,$22,$22,$A2
       .byte $A9,$AA,$AC,$EF,$A9,$A9,$4F,$70,$40,$40,$60,$40,$40,$70,$78,$84
       .byte $B4,$A4,$B4,$84,$78
L1FC6: .byte $00,$18,$30
L1FC9: .byte $00,$08,$10
L1FCC: .byte $0E,$09
L1FCE: .byte $16,$36
L1FD0: .byte $01,$02
L1FD2: .byte $00,$28,$50
L1FD5: .byte $04,$08,$04,$08,$01,$01,$02,$02
L1FDD: .byte $00,$00,$50,$50,$50
L1FE2: .byte $01,$01,$01,$02
L1FE6: .byte $00,$0A,$14,$1E,$1E,$14,$0A
L1FED: .byte $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
       .byte $10,$00,$10
