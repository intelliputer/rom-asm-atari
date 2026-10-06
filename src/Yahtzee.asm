; Disassembly of roms/Yahtzee.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Yahtzee.bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDC1   =  $16
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
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $1000
L1000: BIT    $85     
       BPL    L1007   
       JMP    L11C5   
L1007: LDA    INTIM   
       BNE    L1007   
       STA    WSYNC   
       LDA    #$00    
       STA    VBLANK  
       LDA    #$00    
       STA    NUSIZ0  
       STA    WSYNC   
       LDX    #$01    
       LDY    #$0F    
L101C: STA    WSYNC   
       LDA    ($86),Y 
       STA    GRP0    
       LDA    $91     
       STA    COLUP0  
       STA    RESP0   
       STX    NUSIZ0  
       LDA    $92     
       NOP            
       NOP            
       NOP            
       STA    COLUP0  
       LDA    ($88),Y 
       STA    GRP0    
       STA    RESP0   
       STX    NUSIZ0  
       LDA    $93     
       NOP            
       STA    COLUP0  
       LDA    ($8A),Y 
       STA    GRP0    
       STA    RESP0   
       STX    NUSIZ0  
       DEY            
       BPL    L101C   
       LDX    #$01    
       LDY    #$0F    
L104D: STA    WSYNC   
       LDA    $94     
       STA    COLUP0  
       PHA            
       PLA            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($8C),Y 
       STA    GRP0    
       STA    RESP0   
       STX    NUSIZ0  
       LDA    $95     
       NOP            
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    GRP0    
       STA    RESP0   
       STX    NUSIZ0  
       DEY            
       BPL    L104D   
       LDX    #$68    
       LDA    #$0E    
       STA    $A0     
       LDA    $A3     
       BEQ    L10F9   
       DEC    $A3     
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    HMCLR   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$10    
       STA    RESP0   
       STA    RESP1   
       STA    HMP1    
L109B: LDA    #$06    
       STA    $80     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       LDY    $A0     
       STA    WSYNC   
       LDA    $C3     
       STA    COLUBK  
       LDA    L1CE3,Y 
       STA    COLUP0  
       STA    COLUP1  
       DEC    $A0     
       STA    WSYNC   
       LDA    $C3     
       CPY    $9E     
       BNE    L10C2   
       LDA    #$04    
L10C2: STA    COLUBK  
L10C4: STA    WSYNC   
       STA    HMOVE   
       LDA    L1C00,X 
       STA    GRP0    
       LDA    L1C69,X 
       STA    GRP1    
       LDA    L1D00,X 
       STA    GRP0    
       LDA    L1E00,X 
       TAY            
       LDA    L1D69,X 
       STA    GRP1    
       STY    GRP0    
       STA    GRP1    
       STA    HMCLR   
       DEX            
       BMI    L10EF   
       DEC    $80     
       BPL    L10C4   
       BMI    L109B   
L10EF: INX            
       STX    VDELP0  
       STX    VDELP1  
       STX    GRP0    
       STX    GRP1    
       RTS            

L10F9: INC    $A3     
       STA    WSYNC   
       LDY    #$00    
       STY    NUSIZ0  
       INY            
       STY    HMCLR   
       STY    NUSIZ1  
       LDY    #$07    
L1108: DEY            
       BNE    L1108   
       LDA    #$10    
       STA    RESP1   
       STA    RESP0   
       STA    HMP0    
L1113: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $C3     
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$07    
       STA    $80     
       LDA    L1EB6   
       LDY    $A0     
       CPY    #$02    
       BNE    L1137   
       LDX    $DA     
       LDA    $C3     
       BEQ    L1143   
       LDX    $DB     
       JMP    L1143   
L1137: LDY    $A0     
       BNE    L1146   
       LDX    $B3     
       LDA    $C3     
       BEQ    L1143   
       LDX    $D3     
L1143: LDA    L1EB6,X 
L1146: STA    $B5     
       LDA    L1CE3,Y 
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($C0),Y 
       PHA            
       AND    #$F0    
       CLC            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       STA    WSYNC   
       LDA    L1EC0,X 
       STA    $B4     
       LDA    $C3     
       CPY    $9E     
       BNE    L1169   
       LDA    #$04    
L1169: STA    COLUBK  
       LDY    $B4     
       CPY    #$07    
       BNE    L1181   
       LDA    $A0     
       BEQ    L1179   
       CMP    #$02    
       BNE    L117F   
L1179: LDA    $B5     
       CMP    #$B5    
       BNE    L1181   
L117F: LDY    #$4D    
L1181: PLA            
       AND    #$0F    
       TAX            
       LDA    L1EC0,X 
       TAX            
       JMP    L11A7   
L118C: STY    $B4     
       LDY    #$00    
       LDA    ($B5),Y 
       LDY    $B4     
       DEC    $B5     
       STA    GRP1    
       LDA    L1E69,Y 
       STA    GRP0    
       PHA            
       PLA            
       NOP            
       LDA    L1E69,X 
       STA    GRP1    
       STA    HMCLR   
L11A7: STA    WSYNC   
       STA    HMOVE   
       DEX            
       DEY            
       DEC    $80     
       BPL    L118C   
       DEC    $A0     
       BMI    L11B8   
       JMP    L1113   
L11B8: LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       RTS            

L11C5: LDA    INTIM   
       BNE    L11C5   
       STA    WSYNC   
       LDA    #$40    
       STA    VBLANK  
       LDA    #$00    
       STA    CTRLPF  
       LDA    $80     
       PHA            
       LDX    #$40    
L11D9: STA    WSYNC   
       DEX            
       BNE    L11D9   
       LDX    #$18    
L11E0: LDA    $80     
       INC    $80     
       STA    WSYNC   
       STA    COLUPF  
       LDA    L1F00,X 
       STA    PF0     
       LDA    L1F18,X 
       STA    PF1     
       LDA    L1F30,X 
       STA    PF2     
       PHA            
       PLA            
       LDA    L1F48,X 
       STA    PF0     
       LDA    L1F60,X 
       NOP            
       STA    PF1     
       LDA    L1F78,X 
       NOP            
       NOP            
       DEX            
       STA    PF2     
       BNE    L11E0   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDY    #$44    
L1216: STA    WSYNC   
       DEY            
       BNE    L1216   
       STA    WSYNC   
       LDX    #$02    
       LDA    #$03    
L1221: DEX            
       BNE    L1221   
       STX    GRP0    
       STX    GRP1    
       STA    HMCLR   
       STA    NUSIZ0  
       INX            
       STX    NUSIZ1  
       STX    VDELP0  
       STX    VDELP1  
       LDA    #$10    
       STA    RESP0   
       STA    RESP1   
       STA    HMP1    
       LDY    #$0F    
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       LDA    $80     
       STA    COLUP0  
       STA    COLUP1  
L124B: STA    WSYNC   
       STA    HMOVE   
       LDA    ($B9),Y 
       STA    GRP0    
       LDA    ($BB),Y 
       STA    GRP1    
       LDA    ($BD),Y 
       STA    GRP0    
       LDA    ($D8),Y 
       TAX            
       LDA    ($D6),Y 
       NOP            
       NOP            
       STA    GRP1    
       STX    GRP0    
       STA    GRP1    
       STA    HMCLR   
       DEY            
       BPL    L124B   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       PLA            
       STA    $80     
       LDA    #$40    
       STA    VBLANK  
       RTS            


START:
L127C: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
L1283: STA    VSYNC,X 
       DEX            
       BNE    L1283   
       JSR    L16EF   
L128B: LDX    #$00    
       LDA    #$02    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDA    #$00    
       STA    CXCLR   
       STA    WSYNC   
       STA    VSYNC   
       LDA    SWCHB   
       AND    #$01    
       BNE    L12B2   
       JMP    L127C   
L12B2: JSR    L12C2   
       JSR    L1000   
       LDX    #$1E    
L12BA: STA    WSYNC   
       DEX            
       BNE    L12BA   
       JMP    L128B   
L12C2: LDY    #$01    
       JSR    L1761   
       BIT    $85     
       BPL    L1302   
       LDA    REFP1   
       STA    $85     
       DEC    $81     
       BNE    L1301   
       INC    $80     
       LDA    #$03    
       STA    $81     
       DEC    $B4     
       BNE    L1301   
       LDA    #$02    
       STA    $B4     
       DEC    $D6     
       DEC    $D8     
       DEC    $BD     
       DEC    $BB     
       DEC    $B9     
       BNE    L1301   
       LDA    #$12    
       STA    $B9     
       LDA    #$34    
       STA    $BB     
       LDA    #$56    
       STA    $BD     
       LDA    #$78    
       STA    $D6     
       LDA    #$9A    
       STA    $D8     
L1301: RTS            

L1302: LDA    $C3     
       BEQ    L1309   
       JMP    L14A9   
L1309: LDX    #$0F    
       LDY    #$0E    
L130D: LDA.wy $00A4,Y 
       CMP    #$AA    
       BEQ    L1321   
       DEX            
       BNE    L131E   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

L131E: DEY            
       BPL    L130D   
L1321: DEC    $A1     
       BNE    L1351   
       LDA    #$08    
       STA    $A1     
       LDA    SWCHA   
       EOR    #$FF    
       STA    $80     
       AND    #$F0    
       BEQ    L1351   
       LDY    $98     
       CPY    #$00    
       BEQ    L1348   
       PHA            
       LDX    #$0E    
       LDA.wy $0090,Y 
       LSR            
       BCC    L1345   
       LDX    #$C9    
L1345: STX    $90,Y   
       PLA            
L1348: JSR    L16BA   
       STA    $96     
       LDA    ($96),Y 
       STA    $98     
L1351: LDA    $BF     
       BEQ    L1386   
       BIT    REFP1   
       BPL    L1360   
       LDA    #$00    
       STA    $A2     
       JMP    L1409   
L1360: LDA    $A2     
       BNE    L13B4   
       INC    $A2     
       LDA    #$08    
       STA    AUDV1   
       LDA    #$02    
       STA    AUDC1   
       LDA    #$05    
       STA    AUDF1   
       STA    $B8     
       LDX    $98     
       INC    $90,X   
       CPX    #$00    
       BNE    L13B4   
       LDY    $9E     
       CPY    #$0F    
       BNE    L1388   
       LDA    $81     
       BNE    L13B4   
L1386: BEQ    L1400   
L1388: LDA.wy $00A4,Y 
       CMP    #$AA    
       BEQ    L13B6   
       CPY    #$02    
       BNE    L13A6   
       LDA.wy $00A4,Y 
       CLC            
       ADC    $DA     
       BEQ    L13A6   
       STY    $A0     
       JSR    L1654   
       LDY    $A0     
       CMP    #$00    
       BNE    L13B6   
L13A6: LDA    #$08    
       STA    AUDV1   
       LDA    #$0F    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDF1   
       STA    $B8     
L13B4: BNE    L1409   
L13B6: LDA    #$00    
       STA    $BF     
       LDA    #$0E    
       LDX    #$04    
L13BE: STA    $91,X   
       DEX            
       BPL    L13BE   
       TYA            
       CMP    #$08    
       BMI    L13CB   
       JSR    L15FE   
L13CB: CMP    #$07    
       BNE    L13D6   
       LDA    #$03    
       STA    $A0     
       JSR    L159A   
L13D6: CMP    #$06    
       BNE    L13E1   
L13DA: LDA    #$04    
       STA    $A0     
       JSR    L159A   
L13E1: CMP    #$05    
       BNE    L13E8   
       JSR    L15C9   
L13E8: CMP    #$04    
       BNE    L13EF   
       JSR    L162E   
L13EF: CMP    #$03    
       BNE    L13F6   
       JSR    L1639   
L13F6: CMP    #$02    
       BNE    L13FD   
       JSR    L1644   
L13FD: JSR    L15BB   
L1400: LDA    $BF     
       CMP    #$03    
       BEQ    L1409   
       JSR    L1778   
L1409: LDX    $98     
       INC    $90,X   
       INC    $90,X   
       LDA    $81     
       BEQ    L1416   
       JSR    L178C   
L1416: LDA    #$00    
       STA    $80     
       LDY    #$0E    
       LDA    $DA     
       STA    $B3     
       LDA    #$A4    
       LDX    $C3     
       BEQ    L142C   
       LDA    $DB     
       STA    $B3     
       LDA    #$C4    
L142C: STA    $C0     
L142E: LDA    ($C0),Y 
       CMP    #$AA    
       BEQ    L1442   
       SED            
       CLC            
       ADC    $80     
       STA    $80     
       BCC    L1442   
       LDA    #$00    
       ADC    $B3     
       STA    $B3     
L1442: CLD            
       DEY            
       BNE    L142E   
       LDA    $B3     
       CLC            
       ADC    $80     
       BEQ    L1451   
       LDA    $80     
       STA    ($C0),Y 
L1451: LDA    #$00    
       STA    $80     
       STA    $A0     
       LDX    #$05    
       LDY    #$0E    
       SED            
L145C: LDA    ($C0),Y 
       CMP    #$AA    
       BEQ    L1469   
       INC    $A0     
       CLC            
       ADC    $80     
       STA    $80     
L1469: DEY            
       DEX            
       BPL    L145C   
       LDY    #$08    
       LDA    $80     
       CMP    #$63    
       BCC    L1479   
       LDA    #$35    
       STA    ($C0),Y 
L1479: LDA    $A0     
       CMP    #$06    
       BNE    L1489   
       LDA    ($C0),Y 
       CMP    #$AA    
       BNE    L1489   
       LDA    #$00    
       STA    ($C0),Y 
L1489: CLD            
       LDA    $B7     
       BEQ    L149C   
       LDA    $82     
       STA    AUDV0   
       STA    AUDC0   
       DEC    $B7     
       BNE    L149C   
       LDA    #$00    
       STA    AUDV0   
L149C: LDA    $B8     
       BEQ    L14A8   
       DEC    $B8     
       BNE    L14A8   
       LDA    #$00    
       STA    AUDV1   
L14A8: RTS            

L14A9: LDA    $81     
       BEQ    L14B0   
       JMP    L1409   
L14B0: LDA    $C2     
       BEQ    L14C0   
       DEC    $C2     
       JMP    L1416   
L14B9: .byte $A5,$BF,$D0,$03,$4C,$00,$14
L14C0: LDY    #$02    
       STY    $9E     
L14C4: LDA.wy $00C4,Y 
       CMP    #$AA    
       BNE    L14E3   
       TYA            
       JSR    L13E1   
       CMP    #$00    
       BEQ    L14E3   
       LDY    $9E     
       STA.wy $00C4,Y 
L14D8: LDA    #$00    
       STA    $BF     
       LDA    #$1E    
       STA    $C2     
       JMP    L1416   
L14E3: INC    $9E     
       LDY    $9E     
       CPY    #$06    
       BNE    L14C4   
       JSR    L14F1   
       JMP    L14F4   
L14F1: JSR    L15C9   
L14F4: LDA    $BF     
       CMP    #$03    
       BEQ    L1574   
       LDA    #$C9    
       LDY    #$04    
L14FE: STA.wy $0091,Y 
       DEY            
       BPL    L14FE   
       CPX    #$02    
       BNE    L1523   
       LDA    $C9     
       CMP    #$AA    
       BNE    L1523   
       LDY    #$04    
       LDX    #$0E    
L1512: LDA.wy $00B9,Y 
       BNE    L1519   
       STX    $91,Y   
L1519: DEY            
       BPL    L1512   
L151C: LDA    #$1E    
       STA    $C2     
       JMP    L1400   
L1523: LDX    $80     
       BEQ    L155D   
       LDA    $B4     
       EOR    #$0F    
       AND    #$0F    
       TAY            
       CPX    #$02    
       BNE    L1539   
       LDA.wy $00C4,Y 
       CMP    #$AA    
       BNE    L154B   
L1539: LDY    #$04    
       LDX    #$0E    
L153D: LDA.wy $00B9,Y 
       CMP    $B4     
       BEQ    L1546   
       STX    $91,Y   
L1546: DEY            
       BPL    L153D   
       BMI    L151C   
L154B: LDY    #$04    
L154D: LDA.wy $00B9,Y 
       BEQ    L155A   
       CMP    $B4     
       BEQ    L155A   
       STA    $B4     
       BNE    L1539   
L155A: DEY            
       BPL    L154D   
L155D: LDX    #$04    
L155F: LDA    $B9,X   
       STA    $B4     
       EOR    #$0F    
       AND    #$0F    
       TAY            
       LDA.wy $00C4,Y 
       CMP    #$AA    
       BEQ    L1539   
       DEX            
       BPL    L155F   
       BMI    L1539   
L1574: LDX    $80     
       BEQ    L1594   
       CPX    #$06    
       BNE    L1597   
       LDA    $CA     
       CMP    #$AA    
       BNE    L158A   
       JSR    L13DA   
       STA    $CA     
       JMP    L14D8   
L158A: LDA    $B4     
       EOR    #$0F    
       AND    #$0F    
       TAY            
       LDA.wy $00C4,Y 
L1594: JMP    L1539   
L1597: JMP    L1539   
L159A: LDY    #$04    
L159C: LDA    #$00    
       STA    $80     
       LDX    #$04    
       LDA.wy $0099,Y 
L15A5: CMP    $99,X   
       BNE    L15AB   
       INC    $80     
L15AB: DEX            
       BPL    L15A5   
       LDX    $80     
       CPX    $A0     
       BCS    L15BB   
       DEY            
       BPL    L159C   
       LDA    #$00    
       BEQ    L1619   
L15BB: LDX    #$04    
       SED            
       LDA    #$00    
       CLC            
L15C1: ADC    $99,X   
       DEX            
       BPL    L15C1   
       CLD            
       BMI    L1619   
L15C9: LDA    #$00    
       STA    $80     
       STA    $A0     
       LDY    #$04    
L15D1: STA.wy $00B9,Y 
       DEY            
       BPL    L15D1   
       LDY    #$04    
L15D9: TYA            
       TAX            
       DEX            
       LDA.wy $0099,Y 
L15DF: CMP    $99,X   
       BNE    L15EC   
       INC    $80     
       STA.wy $00B9,Y 
       STA    $B9,X   
       STA    $B4     
L15EC: DEX            
       BPL    L15DF   
       DEY            
       BNE    L15D9   
       LDA    #$00    
       LDX    $80     
       CPX    #$04    
       BNE    L1619   
       LDA    #$25    
       BNE    L1619   
L15FE: EOR    #$0F    
       AND    #$0F    
       STA    $80     
       LDY    #$00    
       LDX    #$04    
L1608: LDA    $80     
       CMP    $99,X   
       BNE    L1615   
       TYA            
       SED            
       CLC            
       ADC    $80     
       TAY            
       CLD            
L1615: DEX            
       BPL    L1608   
       TYA            
L1619: TAY            
       PLA            
       PLA            
       TYA            
       LDY    $C3     
       BEQ    L1622   
       RTS            

L1622: LDY    $9E     
       STA.wy $00A4,Y 
       LDA    #$0F    
       STA    $9E     
       JMP    L1409   
L162E: JSR    L166D   
       CPX    #$03    
       BCC    L1619   
       LDA    #$30    
       BNE    L1619   
L1639: JSR    L166D   
       CPX    #$04    
       BCC    L1619   
       LDA    #$40    
       BNE    L1619   
L1644: JSR    L1654   
       LDY    $A6     
       CPY    #$AA    
       BEQ    L1619   
       INC    $DA     
       LDA    $A6     
       JMP    L1619   
L1654: LDY    #$00    
       LDX    #$04    
L1658: LDA    $99,X   
       DEX            
       BMI    L1664   
       CMP    $99,X   
       BNE    L1658   
       INY            
       BNE    L1658   
L1664: LDA    #$00    
       CPY    #$04    
       BNE    L166C   
       LDA    #$50    
L166C: RTS            

L166D: LDX    #$04    
L166F: LDA    $99,X   
       STA    $B9,X   
       DEX            
       BPL    L166F   
L1676: LDA    #$00    
       STA    $80     
       LDX    #$04    
L167C: LDA    $B9,X   
       TAY            
       DEX            
       BMI    L1695   
       CMP    $B9,X   
       BCC    L167C   
       BEQ    L167C   
       LDA    $B9,X   
       INX            
       STA    $B9,X   
       DEX            
       TYA            
       STA    $B9,X   
       INC    $80     
       BNE    L167C   
L1695: LDA    $80     
       BNE    L1676   
       LDX    #$04    
L169B: LDA    $B9,X   
       DEX            
       BMI    L16B5   
       CMP    $B9,X   
       BEQ    L169B   
       CLC            
       ADC    #$01    
       CMP    $B9,X   
       BEQ    L16B1   
       CPX    #$03    
       BEQ    L169B   
       BNE    L16B5   
L16B1: INC    $80     
       BNE    L169B   
L16B5: LDA    #$00    
       LDX    $80     
       RTS            

L16BA: ROL            
       BCS    L16EC   
       ROL            
       BCS    L16E9   
       ROL            
       BCS    L16D8   
       LDA    $98     
       BNE    L16D5   
       LDX    $9E     
       CPX    #$0F    
       BEQ    L16D5   
       LDA    L1DE2,X 
       STA    $9E     
       LDA    #$D6    
       RTS            

L16D5: LDA    #$D5    
       RTS            

L16D8: LDA    $98     
       BNE    L16E6   
       LDX    $9E     
       LDA    L1DD2,X 
       STA    $9E     
       LDA    #$D6    
       RTS            

L16E6: LDA    #$D2    
       RTS            

L16E9: LDA    #$DB    
       RTS            

L16EC: LDA    #$DD    
       RTS            

L16EF: LDA    #$1C    
       STA    $97     
       LDA    #$1E    
       STA    $B6     
       LDA    #$B5    
       STA    $B5     
       LDA    #$03    
       STA    $81     
       LDA    #$02    
       STA    $B4     
       LDA    #$0F    
       STA    $9E     
       LDA    #$80    
       STA    $85     
       LDA    #$AA    
       LDX    #$0E    
L170F: STA    $A4,X   
       STA    $C4,X   
       DEX            
       BPL    L170F   
       LDA    #$6D    
       STA    $82     
       STA    $83     
       STA    $D4     
       STA    $D5     
       LDA    #$00    
       STA    $C3     
       LDA    #$1B    
       STA    $BA     
       STA    $BC     
       STA    $BE     
       STA    $D7     
       STA    $D9     
       LDA    #$12    
       STA    $B9     
       LDA    #$34    
       STA    $BB     
       LDA    #$56    
       STA    $BD     
       LDA    #$78    
       STA    $D6     
       LDA    #$9A    
       STA    $D8     
       LDA    #$0E    
       LDY    #$05    
       LDX    #$04    
L174A: STA    $91,X   
       STY    $86,X   
       DEY            
       DEX            
       BPL    L174A   
       STA    $A1     
       JSR    L178C   
       LDA    #$00    
       STA    SWACNT  
       STA    VBLANK  
       RTS            

L175F: LDY    #$03    
L1761: LDA    $D5     
       ASL            
       ASL            
       ASL            
       EOR    $D5     
       ASL            
       ASL            
       ROL    $82     
       ROL    $83     
       ROL    $D4     
       ROL    $D5     
       DEY            
       BNE    L1761   
       LDA    $82     
       RTS            

L1778: INC    $BF     
       LDA    #$19    
       STA    $81     
       STA    $B7     
       LDA    #$0F    
       STA    AUDC0   
       LDA    #$05    
       STA    AUDV0   
       LDA    #$04    
       STA    $DC     
L178C: LDX    $DC     
       LDA    $91,X   
       LSR            
       BCS    L17AE   
       JSR    L17B9   
       TXA            
       PHA            
       CLC            
       ROL            
       TAX            
       INX            
       LDA    L1FF0,Y 
       STA    $86,X   
       DEY            
       DEX            
       LDA    L1FF0,Y 
       STA    $86,X   
       PLA            
       TAX            
       LDA    $A0     
       STA    $99,X   
L17AE: DEC    $DC     
       BPL    L17B6   
       LDA    #$04    
       STA    $DC     
L17B6: DEC    $81     
       RTS            

L17B9: JSR    L175F   
       AND    #$07    
       BEQ    L17B9   
       STA    $A0     
       EOR    #$07    
       BEQ    L17B9   
       LDA    $A0     
       CLC            
       ROL            
       TAY            
       DEY            
       LDA    $A0     
       RTS            

L17CF: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F2,$8A,$8B,$F2,$8A,$89
       .byte $F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F2,$8A,$8B,$F2
       .byte $8A,$89,$F0,$3E,$20,$20,$3E,$02,$02,$3E,$00,$00,$2F,$28,$E8,$2F
       .byte $28,$48,$8F,$00,$00,$3E,$20,$20,$3E,$02,$02,$3E,$00,$00,$2F,$28
       .byte $E8,$2F,$28,$48,$8F,$71,$8A,$CB,$AA,$9A,$8A,$71,$00,$00,$08,$88
       .byte $88,$08,$94,$A2,$22,$00,$00,$71,$8A,$CB,$AA,$9A,$8A,$71,$00,$00
       .byte $08,$88,$88,$08,$94,$A2,$22,$C7,$28,$2C,$AA,$69,$28,$C7,$00,$00
       .byte $F3,$84,$84,$84,$84,$84,$83,$00,$00,$C7,$28,$2C,$AA,$69,$28,$C7
       .byte $00,$00,$F3,$84,$84,$84,$84,$84,$83,$00,$80,$80,$80,$80,$80,$00
       .byte $00,$00,$91,$53,$55,$55,$55,$59,$91,$00,$00,$00,$80,$80,$80,$80
       .byte $80,$00,$00,$00,$91,$53,$55,$55,$55,$59,$91,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF
L1C00: .byte $00,$00,$00,$00,$00,$00,$00,$7A,$82,$82,$83,$82,$82,$7A,$22,$22
       .byte $23,$22,$52,$89,$88,$F9,$82,$82,$82,$82,$82,$81,$F2,$0A,$0A,$72
       .byte $82,$83,$7A,$81,$82,$82,$FA,$82,$82,$FA,$13,$14,$14,$F4,$94,$94
       .byte $93,$F3,$14,$14,$F4,$14,$14,$F3,$00,$00,$00,$00,$00,$00,$00,$F3
       .byte $08,$08,$78,$80,$80,$7B,$83,$80,$80,$F0,$80,$80,$FB,$81,$82,$82
       .byte $F2,$82,$82,$F9,$22,$22,$22,$23,$22,$22,$FA,$21,$22,$22,$22,$22
       .byte $22,$FA,$89,$8A,$FA,$8A,$8A,$52,$21
L1C69: .byte $04,$04,$04,$04,$04,$04,$1F,$51,$51,$5F,$D1,$51,$4A,$44,$29,$29
       .byte $E9,$2F,$29,$49,$89,$C0,$20,$20,$C0,$00,$00,$E0,$20,$20,$20,$A0
       .byte $A0,$60,$20,$CF,$28,$28,$28,$28,$28,$28,$90,$50,$50,$5F,$50,$50
       .byte $9F,$90,$50,$50,$5F,$50,$50,$9F,$1E,$11,$11,$1E,$11,$11,$1E,$E8
       .byte $88,$85,$82,$85,$88,$E8,$E2,$85,$88,$88,$88,$88,$E8,$C7,$28,$28
       .byte $28,$28,$28,$C8,$28,$29,$2A,$EF,$28,$28,$2F,$C7,$A8,$A8,$A8,$A8
       .byte $28,$27,$EF,$08,$08,$0E,$08,$08,$EF,$01,$04,$04,$05,$00,$00,$00
       .byte $01,$03,$05,$05,$01,$02,$03,$04,$05,$01
L1CE3: .byte $0E,$E8,$D8,$C8,$B8,$A8,$98,$88,$0E,$68,$58,$48,$38,$28,$18,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
L1D00: .byte $38,$44,$44,$44,$44,$44,$39,$44,$4D,$55,$55,$55,$65,$44,$11,$11
       .byte $10,$10,$10,$10,$7D,$F0,$08,$08,$70,$80,$80,$7B,$F0,$08,$08,$70
       .byte $80,$80,$7B,$BE,$20,$20,$20,$20,$20,$20,$45,$48,$50,$60,$50,$48
       .byte $45,$45,$48,$50,$60,$50,$48,$45,$39,$45,$45,$45,$45,$45,$39,$BC
       .byte $82,$02,$1C,$20,$A0,$9E,$3E,$20,$A0,$B8,$A0,$A0,$BE,$22,$A4,$A8
       .byte $BC,$A2,$A2,$BC,$BE,$20,$20,$38,$A0,$A0,$3E,$3C,$82,$82,$9C,$A0
       .byte $A0,$1E,$BC,$02,$02,$1C,$20,$20,$9E
L1D69: .byte $44,$44,$47,$44,$44,$42,$F1,$F7,$04,$04,$07,$04,$04,$F7,$F7,$04
       .byte $84,$47,$24,$14,$F7,$88,$89,$8A,$8F,$88,$88,$EF,$88,$89,$8A,$8F
       .byte $88,$88,$EF,$97,$90,$90,$F3,$94,$94,$93,$F4,$44,$45,$45,$45,$46
       .byte $F4,$F4,$44,$45,$45,$45,$46,$F4,$13,$34,$54,$54,$54,$94,$14,$00
       .byte $00,$00,$00,$00,$00,$00,$F0,$08,$08,$70,$80,$80,$78,$F0,$08,$08
       .byte $70,$80,$80,$78,$FB,$80,$80,$E1,$82,$82,$F9,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
L1DD2: .byte $01,$01,$01,$02,$03,$04,$05,$06,$07,$07,$09,$0A,$0B,$0C,$0D,$0E
L1DE2: .byte $01,$02,$03,$04,$05,$06,$07,$09,$09,$0A,$0B,$0C,$0D,$0E,$0F,$0F
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
L1E00: .byte $5F,$50,$D0,$50,$50,$90,$10,$C0,$00,$00,$00,$00,$00,$C0,$DF,$10
       .byte $10,$1C,$10,$10,$DF,$88,$08,$08,$08,$88,$88,$3E,$88,$08,$08,$08
       .byte $88,$88,$3E,$9F,$50,$50,$9C,$10,$10,$DF,$5E,$D1,$51,$51,$51,$51
       .byte $5E,$5E,$D1,$51,$51,$51,$51,$5E,$9E,$41,$41,$4E,$50,$50,$4F,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$C0,$20,$20,$C0,$00,$00,$E0,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
L1E69: .byte $1C,$22,$32,$2A,$26,$22,$1C,$3E,$08,$08,$08,$08,$08,$18,$3E,$20
       .byte $20,$3E,$02,$02,$3E,$3E,$02,$02,$3E,$02,$02,$3E,$02,$02,$02,$3E
       .byte $22,$22,$22,$3E,$02,$02,$3E,$20,$20,$3E,$3E,$22,$22,$3E,$20,$20
       .byte $3E,$02,$02,$02,$02,$02,$02,$3E,$3E,$22,$22,$3E,$22,$22,$3E,$02
       .byte $02,$02,$3E,$22,$22,$3E,$00,$00,$00,$00,$00,$00,$00
L1EB6: .byte $B5,$76,$7D,$84,$8B,$92,$99,$A0,$A7,$AE
L1EC0: .byte $07,$0E,$15,$1C,$23,$2A,$31,$38,$3F,$46,$4D,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
L1F00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
L1F18: .byte $00,$00,$00,$12,$12,$12,$12,$12,$12,$13,$13,$13,$12,$12,$12,$2A
       .byte $2A,$2A,$45,$45,$45,$00,$00,$00
L1F30: .byte $00,$00,$00,$95,$95,$95,$95,$95,$95,$9D,$9D,$9D,$95,$95,$95,$95
       .byte $95,$95,$D4,$D4,$D4,$00,$00,$00
L1F48: .byte $00,$00,$00,$C0,$C0,$C0,$40,$40,$40,$80,$80,$80,$00,$00,$00,$00
       .byte $00,$00,$D0,$D0,$D0,$00,$00,$00
L1F60: .byte $00,$00,$00,$DD,$DD,$DD,$11,$11,$11,$19,$19,$19,$91,$91,$91,$51
       .byte $51,$51,$DD,$DD,$DD,$00,$00,$00
L1F78: .byte $00,$00,$00,$03,$03,$03,$00,$00,$00,$01,$01,$01,$00,$00,$00,$00
       .byte $00,$00,$03,$03,$03,$00,$00,$00,$00,$FF,$FF,$99,$99,$FF,$FF,$99
       .byte $99,$FF,$FF,$99,$99,$FF,$FF,$00,$00,$FF,$FF,$99,$99,$FF,$FF,$E7
       .byte $E7,$FF,$FF,$99,$99,$FF,$FF,$00,$00,$FF,$FF,$99,$99,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$99,$99,$FF,$FF,$00,$00,$FF,$FF,$9F,$9F,$FF,$FF,$E7
       .byte $E7,$FF,$FF,$F9,$F9,$FF,$FF,$00,$00,$FF,$FF,$E7,$E7,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$E7,$E7,$FF,$FF,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$E7
       .byte $E7,$FF,$FF,$FF,$FF,$FF,$FF,$00
L1FF0: .byte $E0,$1F,$D0,$1F,$C0,$1F,$B0,$1F,$A0,$1F,$90,$1F,$7C,$12,$7C,$12
