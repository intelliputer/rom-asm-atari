; Disassembly of roms/Atlantis2.BIN
; Disassembled Tue Oct  6 15:19:36 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Atlantis2.BIN
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
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
$0285   =  $0285
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
       STX    $D3     
       LDA    #$01    
       STA    $8E     
       STA    $C5     
       STA    $C6     
       STA    $EF     
       JSR    L1CAF   
L101B: LDA    #$02    
       STA    VBLANK  
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDA    SWCHB   
       ROR    $8E     
       BCS    L103D   
       LSR            
       BCS    L106B   
       ROL            
L103D: LSR            
       ROL    $8E     
       LSR            
       BIT    $8C     
       BCC    L1049   
       ROL    $8C     
       BNE    L10A3   
L1049: BPL    L1060   
L104B: LDA    $FA     
       AND    #$1F    
       STA    $8C     
       INC    $8D     
       LDA    $8D     
       CMP    #$01    
       BNE    L1068   
       LDA    #$00    
       STA    $8D     
       JMP    L1068   
L1060: LDA    $8C     
       EOR    $FA     
       AND    #$1F    
       BEQ    L104B   
L1068: JMP    L1075   
L106B: LDA    #$01    
       STA    $8E     
       STA    $D3     
       STA    $F9     
       BNE    L107B   
L1075: LDA    #$00    
       STA    $F9     
       STA    $D3     
L107B: LDA    #$0A    
       STA    $F4     
       STA    $F0     
       LDA    #$01    
       STA    $F7     
       JSR    L1CAF   
       LDA    #$00    
       STA    $EF     
       STA    $EE     
       STA    $EC     
       STA    $F6     
       STA    $F5     
       STA    $A1     
       STA    $A2     
       STA    $A3     
       STA    $DB     
       LDX    #$06    
L109E: STA    $D4,X   
       DEX            
       BPL    L109E   
L10A3: LDA    $D3     
       BMI    L10AB   
       BNE    L10D5   
       BEQ    L10C5   
L10AB: DEC    $F2     
       BNE    L10C5   
       DEC    $F3     
       BNE    L10C5   
       JSR    L1CAF   
       LDA    #$00    
       STA    $EE     
       STA    $D3     
       STA    $F5     
       LDX    #$06    
L10C0: STA    $D4,X   
       DEX            
       BPL    L10C0   
L10C5: LDX    #$00    
       STX    $EC     
       STX    $BE     
       STX    $C4     
       LDA    $E0     
       BNE    L10D5   
       LDA    REFP1   
       BPL    L106B   
L10D5: LDX    #$0A    
L10D7: LDA    #$1F    
       STA    $81,X   
       LDA    #$64    
       STA    $80,X   
       DEX            
       DEX            
       BPL    L10D7   
       LDA    $EF     
       BEQ    L10F6   
       LDX    #$0A    
       LDA    #$6E    
L10EB: STA    $80,X   
       CLC            
       ADC    #$0A    
       DEX            
       DEX            
       BPL    L10EB   
       BMI    L113F   
L10F6: LDA    $F9     
       BNE    L1106   
       LDA    $8D     
       CLC            
       ADC    #$01    
       JSR    L1EE8   
       STA    $80     
       BNE    L113F   
L1106: LDX    #$00    
       STX    $9E     
       LDX    #$02    
       LDY    #$08    
L110E: LDA    $A1,X   
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    L1EE8   
       BNE    L111D   
       LDA    $9E     
       BEQ    L1124   
L111D: INC    $9E     
       LDA    $8F     
       STA.wy $0082,Y 
L1124: LDA    $A1,X   
       AND    #$0F    
       JSR    L1EE8   
       BNE    L1131   
       LDA    $9E     
       BEQ    L1138   
L1131: INC    $9E     
       LDA    $8F     
       STA.wy $0080,Y 
L1138: DEX            
       DEY            
       DEY            
       DEY            
       DEY            
       BPL    L110E   
L113F: LDX    #$06    
       STX    $F1     
L1143: LDA    $D4,X   
       BEQ    L117D   
       CMP    #$05    
       BEQ    L1155   
       LDA    $FA     
       AND    #$07    
       BNE    L1161   
       INC    $D4,X   
       BPL    L1161   
L1155: DEC    $F1     
       BPL    L1161   
       LDA    $F8     
       BNE    L1161   
       LDA    #$FF    
       STA    $D3     
L1161: LDY    $D4,X   
       DEY            
       CPX    #$06    
       BNE    L1174   
       LDA    L1E52,Y 
       STA    $9B     
       LDA    L1E57,Y 
       STA    $9C     
       BNE    L1196   
L1174: LDA    L1E4D,Y 
       STA    $91     
       STA    $95,X   
       BNE    L1196   
L117D: LDY    L1E38,X 
       LDA    $FA     
       AND    L1E46,X 
       BNE    L118A   
       LDY    L1E3F,X 
L118A: STY    $91     
       STY    $95,X   
       CPX    #$06    
       BNE    L1196   
       LDA    #$08    
       STA    $9C     
L1196: DEX            
       BPL    L1143   
       LDA    #$1D    
       STA    $92     
       STA    $94     
       LDX    #$02    
L11A1: LDY    #$98    
       LDA    $D3     
       BMI    L11B1   
       LDY    #$80    
       LDA    $DD,X   
       BEQ    L11B1   
       DEC    $DD,X   
       LDY    #$88    
L11B1: STY    $93,X   
       DEX            
       DEX            
       BPL    L11A1   
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$30    
       STA    PF0     
       LDA    #$00    
       STA    COLUPF  
       STA    PF1     
       STA    PF2     
       LDA    #$03    
       STA    $A9     
L11CB: LDX    $A9     
       LDA    $A4,X   
       SEC            
       SBC    #$08    
       CMP    #$F7    
       BCC    L11D8   
       LDA    #$00    
L11D8: LDX    #$00    
       JSR    L1E82   
       LDA    $A9     
       ASL            
       TAX            
       LDA    $8F     
       STA    $AA,X   
       LDA    $90     
       STA    $AB,X   
       LDX    $A9     
       LDA    $A4,X   
       LDX    #$01    
       JSR    L1E82   
       LDA    $A9     
       ASL            
       TAX            
       LDA    $8F     
       STA    $B2,X   
       LDA    $90     
       STA    $B3,X   
       DEC    $A9     
       BPL    L11CB   
       LDA    $BE     
       BEQ    L120A   
       LDA    $A4     
       STA    $BE     
L120A: LDX    #$04    
L120C: LDA    $BA,X   
       JSR    L1FC2   
       DEX            
       CPX    #$02    
       BCS    L120C   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    $FA     
       AND    #$07    
       BNE    L1230   
       LDA    $C5     
       AND    #$06    
       BNE    L122C   
       LDA    #$02    
L122C: EOR    #$A0    
       STA    $A0     
L1230: LDY    #$00    
       LDA    $E0     
       BEQ    L123E   
       AND    #$01    
       BEQ    L123C   
       LDY    #$0F    
L123C: DEC    $E0     
L123E: STY    COLUBK  
       INC    $FA     
       BNE    L124C   
       INC    $FB     
       BNE    L124C   
       LDA    #$F3    
       STA    $FC     
L124C: BIT    $0285   
       BPL    L124C   
       STA    WSYNC   
       LDA    #$00    
       STA    CXCLR   
       STA    VBLANK  
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $D3     
       BMI    L1268   
       LDA    $DB     
       BMI    L126B   
       JMP    L1402   
L1268: JMP    L136E   
L126B: LDA    $FA     
       AND    #$07    
       BNE    L1291   
       INC    $DB     
       LDA    $DB     
       CMP    #$85    
       BCC    L1291   
       LDX    #$03    
L127B: LDA    #$07    
       STA    $C7,X   
       LDA    #$00    
       STA    $A4,X   
       DEX            
       BPL    L127B   
       STA    $BE     
       STA    $DB     
       STA    $BC     
       STA    $BD     
       JMP    L1404   
L1291: LDA    $DB     
       AND    #$07    
       TAX            
       STA    WSYNC   
       LDA    L1C80,X 
       STA    $AA     
       LDA    L1C85,X 
       STA    $AC     
       LDA    #$1C    
       STA    $AB     
       STA    $AD     
       LDA    L1CA0,X 
       STA    $AE     
       LDA    L1CA5,X 
       STA    $B0     
       LDA    L1CAA,X 
       STA    $B2     
       LDY    $DC     
       LDA    L1FF8,Y 
       SEC            
       SBC    L1C99,X 
       STA    $B4     
       LDA    #$00    
       STA    PF0     
       LDA    #$08    
       STA    REFP1   
       STA    WSYNC   
       LDA    #$3E    
       CPX    #$04    
       BNE    L12DA   
       LDA    $FA     
       AND    #$0E    
       EOR    #$0F    
       ORA    #$30    
L12DA: STA    COLUP0  
       STA    COLUP1  
       STA    COLUPF  
       STA    WSYNC   
       LDA    $C0     
       CLC            
       ADC    L1C8A,X 
       STA    $BF     
       CLC            
       ADC    L1C8F,X 
       STA    $BD     
       SEC            
       SBC    L1C94,X 
       STA    $BE     
       SEC            
       SBC    L1C9B,X 
       STA    $BC     
       LDX    #$04    
       LDA    $C0     
       JSR    L1FC2   
       DEX            
       LDA    $BF     
       JSR    L1FC2   
       DEX            
       LDA    $BE     
       JSR    L1FC2   
       DEX            
       LDA    $BD     
       JSR    L1FC2   
       DEX            
       LDA    $BC     
       JSR    L1FC2   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDX    #$C0    
L1323: STA    WSYNC   
L1325: TXA            
       SEC            
       SBC    $B4     
       TAY            
       AND    $AE     
       BNE    L1350   
       TYA            
       AND    $B0     
       BEQ    L1337   
       TYA            
       EOR    $B2     
       TAY            
L1337: LDA    ($AC),Y 
       STA    ENAM0   
       STA    ENAM1   
       ASL            
       STA    ENABL   
       LDA    ($AA),Y 
       DEX            
       CPX    #$6B    
       BEQ    L1357   
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       JMP    L1325   
L1350: DEX            
       CPX    #$6B    
       BNE    L1323   
       STA    WSYNC   
L1357: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       LDA    $E4     
       STA    COLUPF  
       STA    WSYNC   
       JMP    L1574   
L136E: LDY    #$AA    
       LDA    $FA     
       AND    #$02    
       BEQ    L1378   
       LDY    #$B2    
L1378: STY    $AA     
       STA    WSYNC   
       LDA    #$1F    
       STA    $AB     
       LDA    #$DE    
       STA    COLUP0  
       LDA    #$00    
       STA    $E6     
       STA    $E7     
       STA    $E8     
       LDA    $FA     
       AND    #$0F    
       BNE    L13A2   
       LDA    $E3     
       BEQ    L1398   
       DEC    $E3     
L1398: LDA    $E3     
       TAY            
       LDA    L1FBA,Y 
       STA    $E4     
       STA    $E5     
L13A2: STA    WSYNC   
       LDA    $E2     
       BNE    L13CA   
       LDA    $A1     
       LDA    $A1     
       LDA    $A1     
       LDA    $A1     
       LDA    $A1     
       LDA    $A1     
       LDA    $A1     
       LDA    #$3F    
       STA    $E9     
       STA    $F3     
       LDA    #$8F    
       STA    $E0     
       STA    $EB     
       LDA    #$02    
       STA    $ED     
       LDA    #$4B    
       STA    $E1     
L13CA: CMP    #$80    
       BCS    L13D0   
       INC    $E2     
L13D0: LDA    $E1     
       CMP    #$D2    
       BCS    L13D8   
       INC    $E1     
L13D8: LDX    #$00    
       STA    WSYNC   
       STX    PF0     
       LDA    $E2     
       JSR    L1FC2   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDX    #$C0    
L13EB: STA    WSYNC   
       TXA            
       SEC            
       SBC    $E1     
       TAY            
       AND    #$F8    
       BNE    L13FA   
       LDA    ($AA),Y 
       STA    GRP0    
L13FA: DEX            
       CPX    #$61    
       BNE    L13EB   
       JMP    L1357   
L1402: STA    WSYNC   
L1404: STA    WSYNC   
       LDA    #$1D    
       STA    $90     
       STA    $9F     
       LDA    #$C0    
       STA    $C3     
       LDA    #$03    
       STA    $A9     
L1414: LDX    #$1E    
       TXS            
       LDA    $A9     
       ASL            
       TAX            
       LDY    $AA,X   
       LDA    $AB,X   
       DEC    $C3     
       LDX    $C3     
       STA    WSYNC   
       CPX    $BB     
       PHP            
       CPX.w  $00BA   
       PHP            
L142C: DEY            
       BPL    L142C   
       STA    HMP0    
       STA    RESP0   
       STA    WSYNC   
       PLA            
       PLA            
       DEC    $C3     
       LDX    $C3     
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       LDA    $A9     
       ASL            
       TAX            
       LDY    $B2,X   
       LDA    $B3,X   
       DEC    $C3     
       LDX    $C3     
       STA    WSYNC   
       CPX    $BB     
       PHP            
       CPX.w  $00BA   
       PHP            
L1458: DEY            
       BPL    L1458   
       STA    HMP1    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       PLA            
       PLA            
       DEC    $C3     
       LDX    $C3     
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       LDX    #$FF    
       TXS            
       DEC    $C3     
       JSR    L1EB1   
       LDA    #$98    
       STA    $8F     
       STA    $9E     
       LDA    $C7     
       BPL    L148E   
       AND    #$07    
       CMP    $A9     
       BNE    L1499   
       LDA    $CF     
       JMP    L14D9   
L148E: AND    #$07    
       CMP    $A9     
       BNE    L1499   
       LDA    $CF     
       JMP    L14EC   
L1499: LDA    $C8     
       BPL    L14A8   
       AND    #$07    
       CMP    $A9     
       BNE    L14B3   
       LDA    $D0     
       JMP    L14D9   
L14A8: AND    #$07    
       CMP    $A9     
       BNE    L14B3   
       LDA    $D0     
       JMP    L14EC   
L14B3: LDA    $C9     
       BPL    L14C2   
       AND    #$07    
       CMP    $A9     
       BNE    L14CD   
       LDA    $D1     
       JMP    L14D9   
L14C2: AND    #$07    
       CMP    $A9     
       BNE    L14CD   
       LDA    $D1     
       JMP    L14EC   
L14CD: LDA    $CA     
       BPL    L14E4   
       AND    #$07    
       CMP    $A9     
       BNE    L14F5   
       LDA    $D2     
L14D9: STA    $9E     
       CLC            
       ADC    #$08    
       STA    $8F     
       LDY    #$08    
       BNE    L14F5   
L14E4: AND    #$07    
       CMP    $A9     
       BNE    L14F5   
       LDA    $D2     
L14EC: STA    $8F     
       CLC            
       ADC    #$08    
       STA    $9E     
       LDY    #$00    
L14F5: STY    REFP0   
       STY    REFP1   
       LDX    #$1E    
       TXS            
       LDX    $C3     
       LDY    #$07    
       LDA    L1E1F   
L1503: STA    WSYNC   
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($8F),Y 
       STA    GRP0    
       LDA    ($9E),Y 
       STA    GRP1    
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       LDA    L1E17,Y 
       DEX            
       DEY            
       BPL    L1503   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       STX    $C3     
       DEC    $A9     
       BMI    L1539   
       JMP    L1414   
L1539: STA    WSYNC   
       DEC    $C3     
       LDX    $C3     
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       LDA    #$10    
       STA    CTRLPF  
       LDY    #$02    
       LDA    $D3     
       BEQ    L1555   
       LDA    $BE     
       BNE    L1556   
L1555: TAY            
L1556: LDA    $FA     
       AND    #$01    
       BNE    L155D   
       TAY            
L155D: STY    ENABL   
       LDA    #$00    
       STA    PF0     
       LDA    $E4     
       AND    $FC     
       STA    COLUPF  
       DEC    $C3     
       LDX    #$FF    
       TXS            
       JSR    L1EB1   
       JSR    L1EB1   
L1574: LDX    #$1E    
       TXS            
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    ENAM0   
       STA    ENAM1   
       STA    REFP0   
       LDA    #$14    
       STA    CTRLPF  
       LDY    #$08    
       STY    REFP1   
       LDX    $C3     
       STA    WSYNC   
L158F: DEY            
       BPL    L158F   
       STA    RESP0   
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       DEX            
       LDY    #$0D    
       STA    WSYNC   
L15A1: DEY            
       BPL    L15A1   
       STA    RESP1   
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       DEX            
       LDA    #$60    
       STA    HMP0    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       DEX            
       LDY    #$07    
       LDA    L1E2F   
       STA    COLUP0  
       LDA    L1E27   
L15CE: STA    WSYNC   
       STA    COLUP1  
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    GRP1    
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       LDA    L1E27,Y 
       STA    COLUP0  
       LDA    L1E1F,Y 
       DEX            
       DEY            
       BPL    L15CE   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       LDA    #$00    
       STA    REFP1   
       LDA    $E6     
       STA    PF2     
       LDY    #$08    
       LDX    #$FF    
       TXS            
       STA    WSYNC   
       STA    RESP0   
L160F: DEY            
       BPL    L160F   
       STA    RESP1   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$30    
       STA    HMP0    
       LDA    #$50    
       STA    HMP1    
       LDA    $95     
       STA    $91     
       LDA    $96     
       STA    $93     
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       LDX    L1E37   
       LDA    L1E27   
L1636: STA    WSYNC   
       STA    COLUP0  
       STX    COLUP1  
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    GRP1    
       LDA    L1E1F,Y 
       LDX    L1E2F,Y 
       DEY            
       BPL    L1636   
       STA    WSYNC   
       LDA    $A0     
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $E7     
       STA    PF0     
       LDA    $E8     
       STA    PF2     
       LDA    $A0     
       EOR    #$04    
       LDY    #$06    
       STA    WSYNC   
       STA    COLUBK  
L166B: DEY            
       BPL    L166B   
       STA    RESP0   
       LDA    $A0     
       LDY    #$0C    
       STA    WSYNC   
       STA    COLUBK  
L1678: DEY            
       BPL    L1678   
       STA    RESP1   
       LDA    #$D0    
       STA    HMP0    
       LDA    #$50    
       STA    HMP1    
       LDA    #$A0    
       STA    COLUBK  
       LDA    $97     
       STA    $91     
       LDA    $98     
       STA    $93     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E5     
       AND    $FC     
       STA    COLUPF  
       LDA    #$BC    
       STA    COLUP0  
       LDA    #$7E    
       STA    COLUP1  
       LDY    #$07    
L16A5: STA    WSYNC   
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    GRP1    
       DEY            
       BPL    L16A5   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$F8    
       STA    PF2     
       LDA    #$08    
       STA    REFP1   
       LDY    #$05    
       STA    WSYNC   
L16C6: DEY            
       BPL    L16C6   
       STA    RESP0   
       STA    RESP1   
       LDA    #$B0    
       STA    HMP0    
       LDA    #$C0    
       STA    HMP1    
       LDA    $99     
       STA    $91     
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
L16DF: STA    WSYNC   
       LDA    ($91),Y 
       STA    GRP0    
       STA    GRP1    
       LDA    L1E00,Y 
       STA    COLUP0  
       STA    COLUP1  
       DEY            
       BPL    L16DF   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$70    
       STA    PF0     
       LDA    #$07    
       STA    PF1     
       LDA    #$FB    
       STA    PF2     
       LDY    #$09    
       STA    WSYNC   
L1709: DEY            
       BPL    L1709   
       STA    RESP0   
       STA    RESP1   
       LDA    #$D0    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       LDA    $9A     
       STA    $91     
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
L1722: STA    WSYNC   
       CPY    #$03    
       BCS    L1734   
       LDA    #$F0    
       STA    PF0     
       LDA    #$0F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
L1734: LDA    ($91),Y 
       STA    GRP0    
       STA    GRP1    
       LDA    L1E08,Y 
       STA    COLUP0  
       STA    COLUP1  
       DEY            
       BPL    L1722   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    REFP1   
       LDY    #$04    
       STA    WSYNC   
L1752: DEY            
       BPL    L1752   
       STA    RESP0   
       STA    RESP1   
       LDA    #$20    
       STA    HMP0    
       LDA    #$30    
       STA    HMP1    
       LDA    $9B     
       STA    $91     
       LDA    $9C     
       STA    $93     
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
L176F: STA    WSYNC   
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    GRP1    
       LDA    L1E10,Y 
       STA    COLUP0  
       STA    COLUP1  
       DEY            
       BPL    L176F   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$FF    
       STA    PF1     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       LDA    #$00    
       STA    COLUBK  
       LDY    #$06    
L179D: STA    WSYNC   
       DEY            
       BPL    L179D   
       LDA    #$00    
       STA    CTRLPF  
       LDA    #$3E    
       AND    $FC     
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       STA    WSYNC   
L17B8: DEY            
       BPL    L17B8   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$00    
       STA    HMP1    
       LDA    #$F0    
       STA    HMP0    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$C2    
       AND    $FC     
       STA    COLUPF  
       LDA    #$09    
       STA    $91     
L17DC: LDY    $91     
       LDA    ($8A),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($88),Y 
       STA    GRP1    
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($84),Y 
       STA    $93     
       LDA    ($82),Y 
       TAX            
       LDA    ($80),Y 
       TAY            
       LDA    $93     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $91     
       BPL    L17DC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$1F    
       STA    TIM64T  
       LDA    $D3     
       CMP    #$01    
       BNE    L186C   
       LDA    $DB     
       BMI    L186C   
       LDA    REFP1   
       BPL    L1825   
       STA    $C4     
       BNE    L1857   
L1825: LDA    $C4     
       BPL    L1857   
       LDX    #$01    
       LDY    #$02    
       STY    $C4     
       CPY    $8D     
       BEQ    L184F   
       LDA    SWCHA   
       BMI    L183C   
       LDY    #$00    
       BEQ    L184B   
L183C: AND    #$40    
       BEQ    L184B   
       LDA    $8D     
       CMP    #$01    
       BEQ    L186C   
       LDA    $D4     
       BNE    L186C   
       DEY            
L184B: LDA    $BB     
       BEQ    L1854   
L184F: DEX            
       LDA    $BA     
       BNE    L1857   
L1854: JSR    L1ECF   
L1857: LDA    $8D     
       CMP    #$02    
       BNE    L186C   
       LDA    PF0     
       BMI    L186C   
       LDX    #$01    
       LDY    #$00    
       LDA    $BB     
       BNE    L186C   
       JSR    L1ECF   
L186C: LDX    #$01    
L186E: LDA    $BA,X   
       BEQ    L1891   
       LDA    $BC,X   
       CLC            
       ADC    $C1,X   
       STA    $BC,X   
       INC    $BA,X   
       INC    $BA,X   
       LDY    $C1,X   
       BNE    L1883   
       INC    $BA,X   
L1883: LDA    $BA,X   
       CMP    #$BC    
       BCC    L1891   
       LDA    #$00    
       STA    $BA,X   
       STA    $BC,X   
       BEQ    L1891   
L1891: DEX            
       BPL    L186E   
       LDY    #$01    
L1896: LDX    #$03    
L1898: LDA    $A4,X   
       SEC            
       SBC.wy $00BC,Y 
       BPL    L18A5   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L18A5: CMP    #$09    
       BCC    L18AC   
       JMP    L1932   
L18AC: LDA    L1E69,X 
       SEC            
       SBC.wy $00BA,Y 
       BPL    L18BA   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L18BA: CMP    #$04    
       BCS    L1932   
       STY    $90     
       LDY    #$03    
L18C2: LDA.wy $00C7,Y 
       AND    #$47    
       STA    $8F     
       CPX    $8F     
       BNE    L1927   
       LDA.wy $00CF,Y 
       CMP    #$50    
       BNE    L18F8   
       LDA    #$10    
       JSR    L1CDB   
       LDA    #$80    
       STA    $DB     
       STX    $DC     
       LDA    $E0     
       BNE    L18E7   
       LDA    #$20    
       STA    $E0     
L18E7: LDA    $A4,X   
       STA    $C0     
       LDA    #$00    
       STA    $BA     
       STA    $BB     
       STA    $EC     
       SEC            
       LDA    #$3F    
       BNE    L1908   
L18F8: LDA.wy $00C7,Y 
       ORA    #$40    
       STA.wy $00C7,Y 
       LDA    #$01    
       JSR    L1CDB   
       CLC            
       LDA    #$2F    
L1908: STA    $E9     
       LDY    $90     
       LDA.wy $00C1,Y 
       BEQ    L191A   
       LDA    #$01    
       BCC    L1917   
       LDA    #$10    
L1917: JSR    L1CDB   
L191A: CPX    #$00    
       BNE    L1920   
       STX    $BE     
L1920: LDA    #$00    
       STA.wy $00BA,Y 
       BEQ    L192C   
L1927: DEY            
       BPL    L18C2   
       LDY    $90     
L192C: DEY            
       BMI    L1938   
       JMP    L1896   
L1932: DEX            
       BMI    L192C   
       JMP    L1898   
L1938: LDA    $DB     
       BMI    L1973   
       LDX    #$06    
L193E: LDA    L1E74,X 
       SEC            
       SBC    $BE     
       BPL    L194B   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L194B: CMP    L1E7B,X 
       BCS    L1970   
       CPX    #$00    
       BEQ    L1958   
       LDA    $D4     
       BEQ    L1970   
L1958: LDA    $D4,X   
       BNE    L1970   
       STA    $BE     
       STA    $F0     
       INC    $D4,X   
       LDA    #$3F    
       STA    $E9     
       LDA    $E0     
       BNE    L1973   
       LDA    #$03    
       STA    $E0     
       BNE    L1973   
L1970: DEX            
       BPL    L193E   
L1973: LDA    $DB     
       BMI    L197B   
       LDA    $D3     
       BPL    L197E   
L197B: JMP    L1A68   
L197E: LDY    #$03    
L1980: LDA    #$03    
       STA    $90     
       LDA.wy $00A4,Y 
       BEQ    L198C   
       JMP    L1A24   
L198C: LDX    $90     
       LDA    $C7,X   
       AND    #$03    
       STA    $8F     
       CPY    $8F     
       BEQ    L199F   
L1998: DEC    $90     
       BPL    L198C   
L199C: JMP    L1A1E   
L199F: LDA    $C7,X   
       AND    #$04    
       BEQ    L1998   
       CPY    #$03    
       BNE    L19FB   
       LDA    $D3     
       BEQ    L19B1   
       LDA    $F0     
       BEQ    L1998   
L19B1: LDA    $FA     
       AND    #$1F    
       BNE    L199C   
       LDA    $C5     
       AND    #$80    
       ORA    $C7,X   
       STA    $C7,X   
       DEC    $F0     
       LDA    $C5     
       AND    #$03    
       CLC            
       ADC    $EE     
       TAX            
       LDA    L1EF3,X 
       STA    $9E     
       LDA    $C6     
       AND    #$03    
       TAX            
L19D3: LDA    L1E65,X 
       LDX    $90     
       STA    $CF,X   
       CMP    #$50    
       BNE    L19EA   
       LDX    #$01    
       LDA    $F5     
       BEQ    L19D3   
       INC    $9E     
       DEC    $F5     
       STA    $EC     
L19EA: LDX    $90     
       LDA    $C7,X   
       BMI    L19F7   
       LDA    #$00    
       SEC            
       SBC    $9E     
       STA    $9E     
L19F7: LDA    $9E     
       STA    $CB,X   
L19FB: LDA    $C7,X   
       AND    #$FB    
       STA    $C7,X   
       LDA    $C7,X   
       BPL    L1A09   
       LDA    #$08    
       BNE    L1A0B   
L1A09: LDA    #$98    
L1A0B: STA.wy $00A4,Y 
       CPY    #$00    
       BNE    L1A1E   
       STA    $BE     
       LDA    $CF,X   
       CMP    #$50    
       BNE    L1A1E   
       LDA    #$00    
       STA    $EC     
L1A1E: DEY            
       BMI    L1A68   
       JMP    L1980   
L1A24: LDX    $90     
       LDA    $C7,X   
       AND    #$07    
       STA    $8F     
       CPY    $8F     
       BNE    L1A62   
       LDA    $C7,X   
       AND    #$40    
       BNE    L1A1E   
       LDA.wy $00A4,Y 
       CLC            
       ADC    $CB,X   
       STA.wy $00A4,Y 
       CMP    #$08    
       BCC    L1A47   
       CMP    #$98    
       BCC    L1A1E   
L1A47: LDA    #$00    
       STA.wy $00A4,Y 
       CPY    #$00    
       BNE    L1A58   
       STA    $BE     
       LDA    #$07    
       STA    $C7,X   
       BNE    L1A1E   
L1A58: DEC    $C7,X   
       LDA    #$04    
       ORA    $C7,X   
       STA    $C7,X   
       BNE    L1A1E   
L1A62: DEC    $90     
       BPL    L1A24   
       BMI    L1A1E   
L1A68: CLC            
       LDA    $C6     
       AND    #$40    
       ROL            
       ROL            
       ROL            
       STA    $8F     
       LDA    $C5     
       AND    #$01    
       EOR    $8F     
       ROR            
       ROL    $C5     
       ROL    $C6     
       LDA    $C6     
       AND    #$7F    
       STA    $C6     
       LDY    #$00    
       LDA    $D3     
       CMP    #$01    
       BNE    L1A93   
       LDX    #$1F    
       LDY    #$02    
       LDA    #$0F    
       STA    AUDC0   
L1A93: LDA    $E9     
       BEQ    L1AA1   
       LSR            
       LSR            
       TAX            
       TAY            
       DEC    $E9     
       LDA    #$02    
       STA    AUDC0   
L1AA1: STX    AUDF0   
       STY    AUDV0   
       LDY    #$00    
       LDA    $EA     
       BEQ    L1ABB   
       EOR    #$1F    
       TAX            
       LDA    $EA     
       LSR            
       LSR            
       TAY            
       DEC    $EA     
       LDA    #$06    
       STA    AUDC1   
       BNE    L1B0F   
L1ABB: LDA    $EB     
       BEQ    L1ACF   
       DEC    $EB     
       LDA    $EB     
       AND    $ED     
       BEQ    L1ACF   
       LDA    #$04    
       STA    AUDC1   
       LDX    #$0A    
       LDY    #$08    
L1ACF: LDA    $EC     
       BEQ    L1AED   
       LDA    $E9     
       BNE    L1AED   
       LDA    #$0D    
       STA    AUDC0   
       STA    AUDC1   
       LDY    #$06    
       STY    AUDV0   
       LDX    #$19    
       STX    AUDF0   
       LDA    $FA     
       AND    #$04    
       BNE    L1AED   
       LDX    #$18    
L1AED: LDA    $BE     
       BEQ    L1B0F   
       LDA    $D3     
       BEQ    L1B0F   
       LDA    $DB     
       BMI    L1B0F   
       LDA    #$01    
       STA    AUDC1   
       STA    AUDC0   
       LDY    #$06    
       STY    AUDV0   
       LDX    #$1F    
       STX    AUDF0   
       LDA    $FA     
       AND    #$04    
       BNE    L1B0F   
       LDX    #$1E    
L1B0F: STX    AUDF1   
       STY    AUDV1   
       LDA    $D3     
       CMP    #$02    
       BNE    L1B72   
       LDA    $F2     
       CMP    #$4F    
       BNE    L1B3E   
       LDA    $F8     
       BEQ    L1B36   
       LDX    #$00    
L1B25: LDA    $D4,X   
       BEQ    L1B31   
       LDA    #$00    
       STA    $D4,X   
       DEC    $F8     
       BEQ    L1B36   
L1B31: INX            
       CPX    #$07    
       BNE    L1B25   
L1B36: LDA    #$40    
       STA    $EB     
       LDA    #$08    
       STA    $ED     
L1B3E: DEC    $F2     
       BNE    L1B9F   
       JSR    L1CAF   
       LDA    #$01    
       STA    $D3     
       LDA    $F4     
       CLC            
       ADC    #$02    
       STA    $F4     
       STA    $F0     
       INC    $F6     
       LDA    $F6     
       STA    $F5     
       LDA    $8D     
       CMP    #$03    
       BNE    L1B64   
       LDA    $F5     
       AND    #$07    
       BNE    L1B9F   
L1B64: INC    $EE     
       LDA    $EE     
       CMP    #$08    
       BCC    L1B9F   
       LDA    #$08    
       STA    $EE     
       BNE    L1B9F   
L1B72: CMP    #$01    
       BNE    L1BA3   
       LDA    $F0     
       BNE    L1B9F   
       LDX    #$03    
L1B7C: LDA    $C7,X   
       CMP    #$07    
       BNE    L1B9F   
       DEX            
       BPL    L1B7C   
       LDA    #$02    
       STA    $D3     
       LDX    $F1     
       BMI    L1B97   
       LDA    L1E6D,X 
       JSR    L1CDB   
       LDA    #$18    
       STA    $EB     
L1B97: LDA    #$02    
       STA    $ED     
       LDA    #$9F    
       STA    $F2     
L1B9F: LDA    #$FF    
       STA    $FC     
L1BA3: LDX    #$03    
L1BA5: LDA    $C7,X   
       AND    #$40    
       BEQ    L1BDD   
       LDA    $FA     
       AND    #$07    
       BNE    L1BF3   
       LDA    $C7,X   
       CLC            
       ADC    #$08    
       STA    $C7,X   
       LSR            
       LSR            
       LSR            
       AND    #$07    
       CMP    #$04    
       BNE    L1BD7   
       LDA    $C7,X   
       AND    #$03    
       TAY            
       LDA    #$00    
       STA.wy $00A4,Y 
       CPY    #$00    
       BNE    L1BD1   
       STA    $BE     
L1BD1: LDA    #$07    
       STA    $C7,X   
       BNE    L1BF3   
L1BD7: TAY            
       LDA    L1E52,Y 
       STA    $CF,X   
L1BDD: LDA    $CF,X   
       CMP    #$20    
       BEQ    L1BE7   
       CMP    #$30    
       BNE    L1BF3   
L1BE7: LDY    #$20    
       LDA    $FA     
       AND    #$04    
       BNE    L1BF1   
       LDY    #$30    
L1BF1: STY    $CF,X   
L1BF3: DEX            
       BPL    L1BA5   
L1BF6: BIT    $0285   
       BPL    L1BF6   
       JMP    L101B   
L1BFE: .byte $00,$00,$00,$00,$00,$00,$01,$01,$02,$03,$00,$00,$00,$03,$03,$02
       .byte $03,$01,$00,$02,$00,$05,$12,$07,$0A,$07,$00,$00,$01,$02,$01,$03
       .byte $02,$01,$00,$00,$00,$00,$00,$00,$01,$04,$00,$16,$02,$49,$1C,$0B
       .byte $25,$8E,$00,$00,$00,$00,$00,$01,$00,$00,$02,$01,$00,$02,$02,$00
       .byte $01,$02,$00,$00,$00,$04,$21,$00,$02,$12,$40,$12,$09,$00,$46,$12
       .byte $88,$01,$00,$02,$00,$00,$01,$00,$02,$00,$00,$01,$02,$02,$00,$02
       .byte $01,$00,$00,$00,$00,$02,$00,$40,$00,$00,$00,$02,$00,$00,$20,$00
       .byte $02,$00,$00,$00,$02,$00,$00,$00,$00,$01,$00,$00,$00,$00,$02,$00
       .byte $01,$00
L1C80: .byte $00,$10,$20,$40,$60
L1C85: .byte $08,$18,$30,$50,$70
L1C8A: .byte $01,$01,$01,$02,$03
L1C8F: .byte $01,$01,$01,$02,$04
L1C94: .byte $03,$03,$03,$06,$0A
L1C99: .byte $00,$00
L1C9B: .byte $08,$08,$08,$09,$0B
L1CA0: .byte $F0,$F0,$E0,$E0,$E0
L1CA5: .byte $08,$08,$10,$10,$10
L1CAA: .byte $0F,$0F,$1F,$1F,$1F
L1CAF: LDX    #$03    
L1CB1: LDA    #$00    
       STA    $E1     
       STA    $E2     
       STA    $BE     
       STA    $A4,X   
       LDA    #$07    
       STA    $C7,X   
       STA    $E3     
       DEX            
       BPL    L1CB1   
       STX    $FC     
       LDA    #$BA    
       STA    $E4     
       LDA    #$C6    
       STA    $E5     
       LDA    #$C0    
       STA    $E6     
       LDA    #$30    
       STA    $E7     
       LDA    #$E0    
       STA    $E8     
       RTS            

L1CDB: SED            
       BIT    $D3     
       BMI    L1CF1   
       CLC            
       ADC    $A1     
       STA    $A1     
       LDA    $A2     
       ADC    #$00    
       STA    $A2     
       LDA    $A3     
       ADC    #$00    
       STA    $A3     
L1CF1: CLD            
       RTS            

L1CF3: .byte $EF,$95,$D6,$FF,$F7,$7E,$FB,$BD,$6F,$84,$DE,$FF,$FF,$FF,$7D,$2C
       .byte $2C,$08,$08,$00,$00,$FF,$F6,$D4,$D4,$D0,$C0,$C0,$00,$8F,$8F,$43
       .byte $43,$21,$11,$08,$07,$09,$1B,$FF,$4B,$29,$1D,$09,$09,$00,$00,$07
       .byte $FF,$01,$00,$00,$00,$7E,$F8,$FE,$54,$FE,$3C,$0C,$00,$00,$00,$07
       .byte $FF,$01,$00,$00,$00,$7E,$F8,$FE,$A8,$FE,$3C,$0C,$00,$38,$44,$92
       .byte $BB,$BB,$92,$44,$38,$3E,$1C,$78,$F0,$F0,$78,$1C,$3E,$00,$00,$00
       .byte $0F,$00,$00,$00,$00,$78,$10,$30,$F8,$30,$10,$78,$00,$10,$10,$34
       .byte $10,$34,$10,$34,$18,$08,$08,$2C,$08,$2C,$08,$2C,$18,$90,$60,$90
       .byte $60,$90,$60,$90,$60,$60,$60,$60,$60,$60,$60,$60,$60,$FF,$AB,$95
       .byte $36,$1E,$0C,$06,$03,$FF,$FF,$F5,$3E,$1E,$0C,$06,$00,$5A,$FF,$5A
       .byte $7E,$5A,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $05,$0A,$05,$00,$00,$00,$00,$00,$50,$A8,$50,$00,$00,$00,$09,$12
       .byte $04,$12,$0C,$00,$00,$00,$48,$A4,$10,$A0,$04,$80,$00,$00,$12,$04
       .byte $09,$24,$11,$00,$08,$04,$90,$42,$08,$A0,$50,$A2,$00,$22,$05,$10
       .byte $04,$4A,$04,$22,$00,$02,$48,$A1,$04,$20,$48,$A1,$08,$45,$AA,$3A
       .byte $4D,$98,$22,$08,$00,$00,$25,$A8,$0A,$44,$20,$81,$08,$00,$12,$41
       .byte $24,$01,$44,$01,$14,$20,$01,$80,$00,$82,$00,$00,$41
L1E00: .byte $3C,$3C,$FC,$FC,$5A,$5A,$CC,$CC
L1E08: .byte $0C,$0C,$8A,$7A,$6A,$5A,$4A,$3A
L1E10: .byte $CA,$8A,$6A,$5A,$2A,$2A,$4E
L1E17: .byte $4E,$64,$A4,$78,$DA,$3A,$56,$18
L1E1F: .byte $98,$FE,$CA,$CA,$98,$56,$18,$3A
L1E27: .byte $3A,$1A,$2A,$3A,$4A,$68,$68,$68
L1E2F: .byte $68,$FC,$C8,$8A,$CB,$4A,$CB,$78
L1E37: .byte $CB
L1E38: .byte $90,$70,$60,$70,$10,$18,$00
L1E3F: .byte $90,$78,$68,$78,$10,$18,$00
L1E46: .byte $04,$04,$02,$04,$04,$04,$04
L1E4D: .byte $E0,$E8,$F0,$F8,$98
L1E52: .byte $A0,$B0,$C0,$D0,$98
L1E57: .byte $A8,$B8,$C8,$D8,$98
L1E5C: .byte $5C,$55,$52
L1E5F: .byte $9A,$4B,$05
L1E62: .byte $FD,$00,$03
L1E65: .byte $20,$40,$20,$50
L1E69: .byte $74,$88,$9C,$B0
L1E6D: .byte $05,$10,$15,$20,$25,$30,$35
L1E74: .byte $4C,$54,$3E,$90,$2E,$68,$1C
L1E7B: .byte $04,$02,$02,$02,$08,$08,$08
L1E82: STA    $8F     
       INC    $8F     
       CPX    #$02    
       BCC    L1E8C   
       INC    $8F     
L1E8C: LDA    $8F     
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $8F     
       TAY            
       PLA            
       AND    #$0F    
       CLC            
       ADC    $8F     
       CMP    #$0F    
       BCC    L1EA3   
       SBC    #$0F    
       INY            
L1EA3: SEC            
       SBC    #$08    
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $90     
       STY    $8F     
       RTS            

L1EB1: LDY    #$06    
       TSX            
       STX    $8F     
       LDX    #$1E    
       TXS            
       LDX    $C3     
L1EBB: STA    WSYNC   
       CPX    $BB     
       PHP            
       CPX    $BA     
       PHP            
       PLA            
       PLA            
       DEX            
       DEY            
       BPL    L1EBB   
       STX    $C3     
       LDX    $8F     
       TXS            
       RTS            

L1ECF: LDA    L1E5C,Y 
       STA    $BA,X   
       LDA    L1E5F,Y 
       STA    $BC,X   
       LDA    L1E62,Y 
       STA    $C1,X   
       LDA    #$1F    
       STA    $EA     
       LDA    #$03    
       STA.wy $00DD,Y 
       RTS            

L1EE8: ASL            
       STA    $8F     
       ASL            
       ASL            
       CLC            
       ADC    $8F     
       STA    $8F     
       RTS            

L1EF3: .byte $01,$01,$02,$02,$03,$03,$04,$04,$05,$05,$05,$06,$00,$78,$FC,$FC
       .byte $FC,$FC,$FC,$FC,$FC,$FC,$78,$38,$10,$10,$10,$10,$10,$10,$10,$30
       .byte $10,$FC,$80,$80,$40,$20,$18,$04,$04,$84,$78,$78,$84,$04,$04,$04
       .byte $18,$04,$04,$84,$78,$08,$08,$FC,$F8,$F8,$78,$38,$38,$18,$08,$78
       .byte $84,$04,$04,$04,$F8,$80,$80,$80,$FC,$78,$FC,$FC,$FC,$FC,$F8,$80
       .byte $80,$84,$78,$20,$20,$20,$20,$20,$10,$08,$04,$84,$FC,$78,$FC,$FC
       .byte $FC,$FC,$78,$FC,$FC,$FC,$78,$78,$84,$04,$04,$7C,$FC,$FC,$FC,$FC
       .byte $78,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$44,$44,$92,$A2
       .byte $A2,$92,$44,$44,$38,$00,$00,$45,$45,$45,$5D,$55,$5D,$00,$00,$00
       .byte $00,$DC,$50,$50,$DC,$44,$DC,$00,$00,$00,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$94,$00,$00,$93,$94,$94,$95,$F4,$94,$94,$63,$00,$00,$26,$A9
       .byte $A8,$A8,$28,$28,$A9,$26,$00,$00,$18,$FF,$70,$FF,$18,$00,$00,$00
       .byte $18,$FF,$0E,$FF,$18,$00,$00
L1FBA: .byte $A0,$A2,$A4,$A6,$A8,$AA,$AC,$AE
L1FC2: STA    $8F     
       INC    $8F     
       CPX    #$02    
       BCC    L1FCC   
       INC    $8F     
L1FCC: LDA    $8F     
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $8F     
       TAY            
       PLA            
       AND    #$0F    
       CLC            
       ADC    $8F     
       CMP    #$0F    
       BCC    L1FE3   
       SBC    #$0F    
       INY            
L1FE3: SEC            
       SBC    #$08    
       EOR    #$FF    
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
L1FF0: DEY            
       BPL    L1FF0   
       STA    $8F     
       STA    RESP0,X 
       RTS            

L1FF8: .byte $78,$8C,$A0,$AC,$00,$10,$00,$10
