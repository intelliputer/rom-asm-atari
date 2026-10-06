; Disassembly of roms/Shootin' Gallery.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Shootin' Gallery.bin
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
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
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
       LDA    #$01    
       STA    $A9     
       STA    $A7     
       LDA    #$FE    
       STA    $82     
       LDA    #$50    
       STA    $AD     
       JSR    L1A8C   
       LDA    #$02    
       STA    VBLANK  
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDX    #$2C    
       STX    TIM64T  
       STA    VBLANK  
       LDA    $82     
       BPL    L1045   
       LDA    REFP1   
       BMI    L1045   
       LDA    SWCHA   
       CMP    #$EF    
       BEQ    L107E   
L1045: LDA    SWCHB   
       ROR    $A9     
       BCS    L1050   
       LSR            
       BCS    L107E   
       ROL            
L1050: LSR            
       ROL    $A9     
       LSR            
       BIT    $AA     
       BCC    L105C   
       ROL    $AA     
       BNE    L10AE   
L105C: BPL    L1073   
L105E: LDA    $80     
       AND    #$1F    
       STA    $AA     
       INC    $AB     
       LDA    $AB     
       CMP    #$04    
       BNE    L107B   
       LDA    #$00    
       STA    $AB     
       JMP    L107B   
L1073: LDA    $AA     
       EOR    $80     
       AND    #$1F    
       BEQ    L105E   
L107B: JMP    L108F   
L107E: JSR    L1A8C   
       LDA    #$01    
       STA    $A9     
       STA    $82     
       STA    $B3     
       LDA    #$03    
       STA    $9D     
       BNE    L10AE   
L108F: LDA    #$00    
       STA    $82     
       LDX    #$0A    
       LDA    #$78    
L1097: STA    $83,X   
       DEX            
       BPL    L1097   
       LDA    $AB     
       CLC            
       ADC    #$01    
       ASL            
       ASL            
       STA    $BB     
       ASL            
       CLC            
       ADC    $BB     
       STA    $87     
       JSR    L1A8C   
L10AE: LDX    #$0A    
       LDA    #$1D    
L10B2: STA    $84,X   
       DEX            
       DEX            
       BPL    L10B2   
       LDA    $82     
       BEQ    L1101   
       LDX    #$02    
       LDY    #$0A    
L10C0: LDA    $A4,X   
       AND    #$0F    
       ASL            
       ASL            
       STA    $BB     
       ASL            
       CLC            
       ADC    $BB     
       STA.wy $0081,Y 
       LDA    $A4,X   
       AND    #$F0    
       LSR            
       STA    $BB     
       LSR            
       CLC            
       ADC    $BB     
       STA.wy $0083,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    L10C0   
       LDA    $82     
       CMP    #$FE    
       BNE    L1101   
       LDX    #$0A    
L10EC: LDA    #$1E    
       STA    $84,X   
       DEX            
       DEX            
       BPL    L10EC   
       LDX    #$0A    
       LDA    #$00    
L10F8: STA    $83,X   
       CLC            
       ADC    #$0C    
       DEX            
       DEX            
       BPL    L10F8   
L1101: LDX    #$0A    
       LDA    #$1F    
L1105: STA    $90,X   
       DEX            
       DEX            
       BPL    L1105   
       LDA    $F1     
       BEQ    L1112   
       JMP    L118F   
L1112: LDA    #$3F    
       LDX    $A0     
       BMI    L111A   
       LDA    #$07    
L111A: AND    $80     
       BNE    L1155   
       LDA    $9D     
       BMI    L1142   
       INC    $A0     
       LDX    $A0     
       BMI    L1146   
       BNE    L113E   
       LDA    $AB     
       BEQ    L1142   
       CMP    #$01    
       BEQ    L1142   
       LDA    #$00    
       STA    $B3     
       LDA    $9B     
       EOR    $9C     
       AND    #$01    
       STA    $9F     
L113E: CPX    #$20    
       BCC    L1158   
L1142: LDX    #$F4    
       STX    $A0     
L1146: TXA            
       CLC            
       ADC    #$0C    
       TAY            
       LDA    L1CC0,Y 
       STA    $93     
       LDA    L1CCC,Y 
       STA    $95     
L1155: JMP    L118F   
L1158: CPX    #$08    
       BEQ    L1164   
       CPX    #$10    
       BEQ    L1164   
       CPX    #$18    
       BNE    L116A   
L1164: LDA    $9F     
       EOR    #$01    
       STA    $9F     
L116A: TXA            
       AND    #$07    
       TAY            
       CMP    #$05    
       BNE    L1179   
       JSR    L19D9   
       LDA    #$12    
       STA    $B6     
L1179: LDA    $9F     
       BNE    L1186   
       LDA    #$31    
       STA    $93     
       LDA    L1DCA,Y 
       BNE    L118D   
L1186: LDA    L1DCA,Y 
       STA    $93     
       LDA    #$31    
L118D: STA    $95     
L118F: LDY    $9B     
       TXA            
       BMI    L119A   
       AND    #$07    
       CMP    #$04    
       BEQ    L11B2   
L119A: LDA    L1CD8,Y 
       STA    $99     
       LDA    L1CEA,Y 
       STA    $97     
L11A4: LDY    $9C     
       LDA    L1CEA,Y 
       STA    $91     
       LDA    L1CD8,Y 
       STA    $8F     
       BNE    L11D8   
L11B2: LDA    $9F     
       BNE    L11C2   
       LDA    L1CE1,Y 
       STA    $99     
       LDA    L1CF3,Y 
       STA    $97     
       BNE    L11A4   
L11C2: LDA    L1CD8,Y 
       STA    $99     
       LDA    L1CEA,Y 
       STA    $97     
       LDY    $9C     
       LDA    L1CF3,Y 
       STA    $91     
       LDA    L1CE1,Y 
       STA    $8F     
L11D8: LDA    #$1E    
       STA    $A2     
       LDA    $80     
       AND    #$03    
       BNE    L11F3   
       INC    $A3     
       LDX    $A3     
       CPX    #$0A    
       BCC    L11EE   
       LDX    #$00    
       STX    $A3     
L11EE: LDA    L1D84,X 
       STA    $A1     
L11F3: LDA    #$1C    
       STA    $DA     
       LDY    $E1     
       LDA    $80     
       AND    #$03    
       BNE    L1206   
       DEY            
       BPL    L1204   
       LDY    #$02    
L1204: STY    $E1     
L1206: LDA    ($E3),Y 
       STA    $D9     
       LDA    ($E5),Y 
       STA    $E2     
       LDA    $82     
       CMP    #$01    
       BEQ    L1217   
L1214: JMP    L126E   
L1217: LDA    $A0     
       BPL    L1214   
       LDA    $F1     
       BNE    L1214   
       LDA    SWCHA   
       AND    #$40    
       BNE    L122E   
       LDA    $AD     
       CMP    #$06    
       BCC    L123D   
       DEC    $AD     
L122E: LDA    SWCHA   
       AND    #$80    
       BNE    L123D   
       LDA    $AD     
       CMP    #$82    
       BCS    L123D   
       INC    $AD     
L123D: LDA    REFP1   
       BPL    L1245   
       STA    $E8     
       BMI    L126E   
L1245: CMP    $E8     
       BEQ    L126E   
       STA    $E8     
       LDA    $AF     
       CMP    #$E0    
       BNE    L126E   
       LDA    SWCHA   
       AND    #$10    
       BEQ    L126E   
       LDA    $9D     
       BMI    L126E   
       JSR    L19D9   
       LDA    $AD     
       CLC            
       ADC    #$0D    
       STA    $AE     
       LDA    #$05    
       STA    $AF     
       LDA    #$1F    
       STA    $B4     
L126E: LDX    #$02    
L1270: CPX    #$00    
       BNE    L1278   
       LDA    $E0     
       BEQ    L12B1   
L1278: CPX    #$01    
       BNE    L1282   
       LDA    $AB     
       CMP    $EA     
       BCS    L12B1   
L1282: LDA    $D5,X   
       BEQ    L1299   
       LDA    $ED,X   
       SEC            
       SBC    $EB     
       STA    $ED,X   
       LDA    $D1,X   
       SBC    $EC     
       STA    $D1,X   
       CMP    #$09    
       BCS    L12B1   
       BCC    L12AB   
L1299: LDA    $ED,X   
       CLC            
       ADC    $EB     
       STA    $ED,X   
       LDA    $D1,X   
       ADC    $EC     
       STA    $D1,X   
       CMP    L1DE2,X 
       BCC    L12B1   
L12AB: LDA    $D5,X   
       EOR    #$08    
       STA    $D5,X   
L12B1: DEX            
       BPL    L1270   
       LDA    $80     
       AND    #$1F    
       BNE    L12E7   
       LDA    $F4     
       BNE    L12C4   
L12BE: DEC    $E7     
       BPL    L12D2   
       INC    $F4     
L12C4: INC    $E7     
       LDA    $E7     
       CMP    #$08    
       BCC    L12D2   
       LDA    #$00    
       STA    $F4     
       BEQ    L12BE   
L12D2: LDX    $E7     
       LDA    L1DF0,X 
       STA    $D4     
       TXA            
       AND    #$01    
       BEQ    L12E0   
       LDA    #$08    
L12E0: STA    $D8     
       LDA    L1DF8,X 
       STA    $DD     
L12E7: LDA    $AF     
       CMP    #$E0    
       BEQ    L12FC   
       LDA    $AF     
       CLC            
       ADC    #$05    
       STA    $AF     
       CMP    #$96    
       BCC    L12FC   
       LDA    #$E0    
       STA    $AF     
L12FC: LDA    #$1B    
       STA    $C4     
       STA    $C6     
       STA    $C8     
       STA    $CA     
       LDY    #$20    
       LDA    $E0     
       ROR            
       BCC    L130F   
       LDY    #$10    
L130F: LDX    $D5     
       BEQ    L1317   
       STY    $C3     
       BNE    L1319   
L1317: STY    $C9     
L1319: LDY    #$20    
       ROR            
       BCC    L1320   
       LDY    #$18    
L1320: LDX    $D5     
       BEQ    L1328   
       STY    $C5     
       BNE    L132A   
L1328: STY    $C7     
L132A: LDY    #$20    
       ROR            
       BCC    L1331   
       LDY    #$18    
L1331: LDX    $D5     
       BEQ    L1339   
       STY    $C7     
       BNE    L133B   
L1339: STY    $C5     
L133B: LDY    #$00    
       LDA    $80     
       AND    #$08    
       BNE    L1345   
       LDY    #$08    
L1345: LDX    $D5     
       BEQ    L134D   
       STY    $C9     
       BNE    L134F   
L134D: STY    $C3     
L134F: LDA    $AE     
       JSR    L1ADD   
       STA    HMBL    
       NOP            
       STA    WSYNC   
       JSR    L1A8B   
       AND    #$0F    
       TAY            
L135F: DEY            
       BPL    L135F   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$00    
       STA    HMBL    
       LDA    $AD     
       JSR    L1ADD   
       STA    $AC     
       LDX    #$03    
L1377: LDA    $D1,X   
       JSR    L1ADD   
       STA    $CD,X   
       DEX            
       BPL    L1377   
       INC    $80     
       BNE    L1387   
       INC    $81     
L1387: BIT    $0285   
       BPL    L1387   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$D4    
       STA    COLUPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$24    
       STA    COLUPF  
       LDA    #$C0    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    #$1C    
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       STA    WSYNC   
L13C4: DEY            
       BPL    L13C4   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$E0    
       STA    HMP0    
       LDA    #$F0    
       STA    HMP1    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$0B    
       STA    $BB     
L13E2: LDY    $BB     
       LDA    ($8D),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    ($89),Y 
       STA    GRP0    
       LDA    ($87),Y 
       STA    $BD     
       LDA    ($85),Y 
       TAX            
       LDA    ($83),Y 
       TAY            
       LDA    $BD     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $BB     
       BPL    L13E2   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$08    
       STA    WSYNC   
L1420: DEY            
       BPL    L1420   
       STA    RESP0   
       LDY    #$08    
       STA    WSYNC   
L1429: DEY            
       BPL    L1429   
       STA    RESP1   
       LDY    #$08    
       STA    WSYNC   
L1432: DEY            
       BPL    L1432   
       STA    RESM0   
       STA    RESM1   
       LDA    #$20    
       STA    HMP0    
       STA    HMP1    
       LDA    #$20    
       STA    HMM0    
       STA    HMM1    
       LDA    #$4E    
       STA    COLUP0  
       LDA    #$C6    
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF2     
       LDA    #$F0    
       STA    PF1     
       STA    WSYNC   
       LDA    #$18    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$3C    
       STA    GRP1    
       STA    WSYNC   
       LDA    #$C0    
       STA    PF1     
       LDA    #$00    
       LDX    $9D     
       BMI    L1479   
       CPX    #$03    
       BCC    L1479   
       LDA    #$18    
L1479: STA    GRP0    
       STA    WSYNC   
       LDA    #$7E    
       STA    GRP1    
       LDA    #$00    
       STA    GRP0    
       STA    WSYNC   
       LDA    #$00    
       LDX    $9D     
       BMI    L1493   
       CPX    #$02    
       BCC    L1493   
       LDA    #$18    
L1493: STA    GRP0    
       STA    WSYNC   
       LDA    #$FF    
       STA    GRP1    
       LDA    #$00    
       STA    GRP0    
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       LDA    #$00    
       LDX    $9D     
       BMI    L14B1   
       CPX    #$01    
       BCC    L14B1   
       LDA    #$18    
L14B1: STA    GRP0    
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       LDA    #$C6    
       STA    COLUP0  
       LDA    #$02    
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$84    
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$80    
       STA    PF2     
       LDA    #$00    
       STA    GRP1    
       LDA    #$08    
       STA    REFP1   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$1C    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDY    #$06    
       STA    WSYNC   
L14EF: DEY            
       BPL    L14EF   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$E0    
       STA    HMP0    
       LDA    #$F0    
       STA    HMP1    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $BB     
L150D: LDY    $BB     
       LDA    ($99),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($97),Y 
       STA    GRP1    
       LDA    ($95),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    $BD     
       LDA    ($91),Y 
       TAX            
       LDA    ($8F),Y 
       TAY            
       LDA    $BD     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $BB     
       BPL    L150D   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    REFP1   
       LDY    #$08    
       STA    WSYNC   
L154D: DEY            
       BPL    L154D   
       STA    RESP0   
       LDA    #$20    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$05    
       STA    CTRLPF  
       LDX    #$1F    
       TXS            
       LDY    #$07    
       LDX    #$8A    
L1565: STX    WSYNC   
       LDA    #$00    
       STA    PF2     
       LDA    ($A1),Y 
       STA    GRP0    
       TXA            
       SBC    $AF     
       AND    #$FC    
       PHP            
       PLA            
       DEX            
       DEY            
       BPL    L1565   
       STA    WSYNC   
       STX    $C2     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $DB     
       STA    $BD     
       LDA    $D6     
       STA    $C1     
       LDA    #$A6    
       STA    $BF     
       LDA    #$0F    
       STA    $BB     
       LDA    $CE     
       LDX    #$FF    
       TXS            
       JSR    L1A0C   
       LDA    #$06    
       STA    PF1     
       LDA    #$18    
       STA    PF2     
       LDA    $D8     
       STA    $C1     
       LDA    #$1B    
       STA    $DA     
       LDA    #$40    
       STA    $D9     
       LDA    #$66    
       STA    $BF     
       LDA    #$0B    
       STA    $BB     
       LDA    $DD     
       STA    $BD     
       LDA    $D0     
       LDX    #$FF    
       TXS            
       JSR    L1A0C   
       LDA    #$FF    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       LDX    #$1F    
       TXS            
       DEC    $C2     
       DEC    $C2     
       LDA    #$70    
       STA    TIM8T   
       LDA    $CD     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    L1DD2,X 
       STA    $CB     
       LDA    #$16    
       STA    $CC     
       LDA    #$3A    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $D5     
       STA    REFP0   
       STA    REFP1   
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $CD     
       STA    HMP0    
       STA    WSYNC   
       CLC            
       ADC    #$10    
       STA    HMP1    
       NOP            
       AND    #$0F    
       TAY            
       STY    $B9     
L160B: DEY            
       BPL    L160B   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $B9     
L1618: DEY            
       BPL    L1618   
       JMP.ind ($00CB)
L161E: .byte $A9,$A9,$A9,$A9,$AD,$A5,$EA,$2C,$8B,$1A,$2C,$8B,$1A,$2C,$8B,$1A
       .byte $EA,$A0,$07,$A5,$C2,$38,$E5,$AF,$29,$FC,$08,$68,$C6,$C2,$B1,$C5
       .byte $B1,$C7,$B1,$C9,$B1,$C9,$85,$1B,$B1,$C7,$85,$1C,$B1,$C5,$AA,$B1
       .byte $C3,$86,$1B,$85,$1C,$88,$10,$DB,$C8,$84,$1B,$84,$1C,$AD,$84,$02
       .byte $D0,$FB,$85,$02,$A9,$1A,$85,$08,$A9,$FF,$85,$0E,$85,$0F,$A9,$00
       .byte $85,$0B,$85,$0C,$85,$02,$85,$02,$A9,$AA,$85,$0F,$A9,$55,$85,$0E
       .byte $85,$02,$C6,$C2,$C6,$C2,$C6,$C2,$C6,$C2,$85,$02,$A9,$D4,$85,$08
       .byte $A9,$00,$85,$0E,$85,$0F,$85,$04,$85,$05,$A5,$E2,$85,$D9,$A5,$DC
       .byte $85,$BD,$A9,$22,$85,$BF,$A5,$D7,$85,$C1,$A9,$07,$85,$BB,$A5,$CF
       .byte $A2,$FF,$9A,$20,$0C,$1A,$85,$02,$A5,$AC,$29,$0F,$A8,$EA,$EA,$EA
       .byte $A5,$AC,$88,$10,$FD,$85,$20,$85,$10,$85,$02,$85,$2A,$85,$02,$A9
       .byte $00,$85,$0B,$85,$0C,$85,$BB,$A9,$C8,$85,$06,$A2,$1F,$9A,$A6,$C2
       .byte $86,$02,$A5,$BB,$85,$1B,$8A,$38,$E5,$AF,$29,$FC,$08,$68,$E0,$14
       .byte $B0,$0A,$8A,$38,$E9,$08,$A8,$B9,$48,$1E,$85,$BB,$CA,$E0,$08,$B0
       .byte $DF,$85,$02,$85,$1B,$85,$02,$A9,$00,$85,$1F,$85,$1B,$85,$1C,$85
       .byte $02,$A2,$FF,$9A,$86,$0E,$86,$0F,$86,$0D,$A9,$72,$85,$08,$85,$02
       .byte $A9,$00,$85,$0A,$A5,$B3,$F0,$0C,$A5,$80,$29,$08,$D0,$06,$A0,$24
       .byte $A2,$0F,$D0,$04,$A0,$0F,$A2,$26,$85,$02,$A9,$30,$85,$0D,$84,$08
       .byte $86,$09,$A9,$CC,$85,$0E,$A9,$33,$85,$0F,$A9,$23,$8D,$96,$02,$A5
       .byte $AF,$C9,$87,$D0,$1A,$A6,$AE,$E0,$4C,$90,$14,$E0,$54,$B0,$10,$A5
       .byte $A0,$10,$0C,$A9,$F4,$85,$A0,$20,$F5,$1E,$A9,$01,$20,$FE,$19,$A5
       .byte $AE,$C9,$30,$90,$58,$C9,$70,$B0,$54,$A5,$AF,$C9,$4B,$D0,$4E,$A0
       .byte $03,$A5,$D1,$C5,$AE,$B0,$46,$18,$69,$08,$C5,$AE,$90,$3C,$98,$A6
       .byte $D5,$F0,$02,$49,$03,$AA,$BD,$DE,$1E,$25,$E0,$F0,$30,$45,$E0,$85
       .byte $E0,$BD,$E2,$1E,$20,$FE,$19,$E0,$03,$D0,$04,$86,$B3,$E6,$E9,$E0
       .byte $00,$D0,$12,$A9,$00,$85,$E0,$A2,$08,$A5,$A7,$29,$08,$85,$D5,$F0
       .byte $02,$A2,$78,$86,$D1,$20,$F5,$1E,$D0,$03,$88,$10,$BA,$A2,$02,$A5
       .byte $AF,$DD,$E8,$1E,$F0,$03,$4C,$75,$18,$B5,$D2,$C5,$AE,$B0,$F7,$18
       .byte $69,$08,$C5,$AE,$90,$F0,$A9,$05,$E0,$02,$F0,$20,$A0,$00,$A5,$EA
       .byte $C9,$06,$90,$02,$A0,$01,$B9,$E6,$1E,$E0,$00,$F0,$0F,$A5,$E9,$29
       .byte $FE,$4A,$C9,$04,$90,$02,$A9,$04,$A8,$B9,$E6,$1D,$20,$FE,$19,$20
       .byte $F5,$1E,$E0,$02,$F0,$49,$20,$CB,$19,$A5,$A7,$E0,$00,$F0,$20,$29
       .byte $07,$D9,$EB,$1D,$B0,$F0,$A8,$B9,$8E,$1D,$85,$DC,$E6,$F3,$A5,$F3
       .byte $C9,$0F,$90,$02,$A9,$0F,$85,$F3,$B9,$A7,$1D,$85,$E5,$D0,$14,$29
       .byte $03,$A4,$EA,$C0,$06,$B0,$01,$4A,$A8,$B9,$96,$1D,$85,$DB,$B9,$9A
       .byte $1D,$85,$E3,$B5,$D6,$49,$08,$95,$D6,$F0,$06,$A0,$90,$D0,$04,$E6
       .byte $EA,$A0,$08,$94,$D2,$A5,$AB,$C9,$03,$D0,$04,$E0,$02,$D0,$08,$A5
       .byte $E0,$D0,$04,$A9,$0F,$85,$E0,$CA,$30,$03,$4C,$CD,$17,$A5,$A0,$10
       .byte $75,$A5,$A6,$C9,$08,$90,$02,$A9,$08,$4A,$AA,$BD,$EB,$1E,$85,$EC
       .byte $BD,$F0,$1E,$85,$EB,$C5,$F2,$F0,$0A,$85,$F2,$A5,$F3,$0A,$0A,$0A
       .byte $0A,$85,$F1,$A5,$AB,$C9,$01,$F0,$0C,$C9,$03,$F0,$08,$A9,$00,$85
       .byte $EC,$A9,$80,$85,$EB,$A5,$F1,$F0,$3D,$29,$0F,$D0,$39,$A9,$04,$85
       .byte $F3,$A5,$9D,$30,$19,$A5,$9E,$D0,$27,$A5,$9C,$18,$69,$01,$C9,$09
       .byte $90,$16,$A5,$9D,$C9,$03,$90,$06,$A9,$00,$85,$F1,$F0,$18,$E6,$9D
       .byte $A9,$00,$85,$9B,$A9,$01,$85,$B3,$85,$9C,$A9,$01,$85,$9E,$D0,$06
       .byte $A9,$00,$85,$9E,$E6,$9B,$A6,$B1,$A4,$B3,$F0,$37,$A0,$00,$A5,$80
       .byte $29,$03,$D0,$3A,$A5,$B2,$38,$E9,$20,$30,$06,$85,$B2,$F0,$24,$10
       .byte $1A,$BD,$54,$1E,$10,$08,$A9,$00,$85,$B1,$85,$B3,$F0,$20,$85,$18
       .byte $29,$60,$85,$B2,$BD,$81,$1E,$85,$17,$E6,$B1,$A9,$0C,$85,$16,$85
       .byte $15,$A0,$08,$84,$1A,$BD,$81,$1E,$D0,$02,$A0,$00,$84,$19,$A5,$B4
       .byte $F0,$12,$A9,$08,$85,$15,$A5,$80,$29,$01,$F0,$02,$C6,$B4,$A5,$B4
       .byte $85,$17,$85,$19,$A5,$F1,$F0,$18,$A9,$04,$85,$15,$A9,$18,$85,$17
       .byte $A5,$F1,$29,$0F,$85,$19,$A9,$00,$C6,$F1,$D0,$02,$A9,$01,$85,$B3
       .byte $A5,$B5,$F0,$0E,$A9,$04,$85,$15,$A9,$18,$85,$17,$A5,$B5,$85,$19
       .byte $C6,$B5,$A5,$B6,$F0,$20,$A9,$04,$85,$15,$A0,$13,$A2,$0F,$A5,$B6
       .byte $C9,$0C,$B0,$0C,$A0,$18,$C9,$08,$B0,$04,$C9,$04,$B0,$02,$A2,$00
       .byte $86,$19,$84,$17,$C6,$B6,$20,$CB,$19,$A5,$82,$C9,$01,$D0,$16,$A5
       .byte $9D,$10,$12,$A6,$AF,$E0,$E0,$D0,$0C,$85,$82,$A9,$08,$85,$D1,$85
       .byte $D2,$85,$D3,$85,$D4,$2C,$85,$02,$10,$FB,$4C,$1D,$10,$A5,$A7,$6A
       .byte $6A,$6A,$45,$A8,$0A,$0A,$26,$A7,$26,$A8,$60
L19D9: LDA    $9D     
       BMI    L19FD   
       LDA    $9E     
       BNE    L19E6   
       INC    $9E     
       DEC    $9B     
       RTS            

L19E6: LDA    #$00    
       STA    $9E     
       DEC    $9C     
       BNE    L19FD   
       DEC    $9D     
       BPL    L19F7   
       LDA    #$00    
       STA    $B3     
       RTS            

L19F7: LDA    #$08    
       STA    $9B     
       STA    $9C     
L19FD: RTS            

L19FE: .byte $F8,$18,$65,$A5,$85,$A5,$A9,$00,$65,$A6,$85,$A6,$D8,$60
L1A0C: STA    HMP0    
       STA    WSYNC   
       CLC            
       ADC    #$10    
       STA    HMP1    
       NOP            
       AND    #$0F    
       TAY            
       STY    $B9     
L1A1B: DEY            
       BPL    L1A1B   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$03    
       LDA    $C1     
       STA    REFP0   
       LDX    #$1F    
       TXS            
       LDX    $C2     
       DEX            
       DEX            
       DEX            
L1A34: STX    WSYNC   
       TXA            
       SEC            
       SBC    $AF     
       AND    #$FC    
       PHP            
       PLA            
       DEX            
       DEY            
       BPL    L1A34   
       LDA    $BD     
       STA    COLUP0  
       LDY    $BB     
L1A48: STA    WSYNC   
       LDA    ($D9),Y 
       STA    GRP0    
       TXA            
       SEC            
       SBC    $AF     
       AND    #$FC    
       PHP            
       PLA            
       DEX            
       DEY            
       BPL    L1A48   
       STA    WSYNC   
       LDA    $BF     
       STA    COLUPF  
       STY    PF1     
       STY    PF2     
       INY            
       STY    GRP0    
       STA    WSYNC   
       CLC            
       ADC    #$10    
       STA    COLUPF  
       STA    WSYNC   
       CLC            
       ADC    #$10    
       STA    COLUPF  
       STA    WSYNC   
       CLC            
       ADC    #$10    
       STA    COLUPF  
       DEX            
       DEX            
       DEX            
       DEX            
       STX    $C2     
       LDX    #$FD    
       TXS            
       STA    WSYNC   
       STY    PF1     
       STY    PF2     
L1A8B: RTS            

L1A8C: LDA    #$FF    
       STA    $9D     
       LDA    #$08    
       STA    $9B     
       STA    $9C     
       STA    $D1     
       STA    $D2     
       STA    $D3     
       STA    $D4     
       LDA    #$E0    
       STA    $AF     
       LDA    #$80    
       STA    $F2     
       LDA    #$F4    
       STA    $A0     
       LDA    #$00    
       STA    $A4     
       STA    $A5     
       STA    $A6     
       STA    $F1     
       STA    $E9     
       STA    $EA     
       STA    $E0     
       STA    $B3     
       STA    $B1     
       STA    $B2     
       STA    $9E     
       LDA    #$9E    
       STA    $E3     
       LDA    #$AF    
       STA    $E5     
       LDA    #$1D    
       STA    $E4     
       STA    $E6     
       LDA    #$04    
       STA    $F3     
       LDA    #$18    
       STA    $DC     
       LDA    #$F8    
       STA    $DB     
       RTS            

L1ADD: STA    $BB     
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $BB     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $B9     
       CLC            
       ADC    $BB     
       AND    #$0F    
       SEC            
       SBC    #$07    
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $B9     
       RTS            

L1AFD: .byte $00,$00,$00,$72,$EF,$7E,$7E,$52,$F2,$00,$04,$72,$DF,$7E,$7E,$52
       .byte $F2,$02,$10,$66,$FF,$7E,$5A,$7E,$FF,$20,$00,$66,$FF,$AA,$FE,$AA
       .byte $AA,$FE,$00,$66,$FF,$00,$00,$00,$00,$00,$00,$FE,$7F,$3D,$1B,$02
       .byte $02,$02,$05,$FE,$7F,$79,$33,$02,$02,$05,$00,$7F,$7F,$3E,$1A,$02
       .byte $05,$00,$00,$00,$00,$1F,$38,$78,$BF,$9C,$8C,$9E,$8C,$A0,$60,$7B
       .byte $F6,$7C,$3E,$0E,$1C,$34,$24,$7B,$F6,$7C,$3E,$0E,$1C,$1A,$32,$7B
       .byte $76,$FC,$3E,$0E,$1C,$34,$24,$E3,$C2,$7E,$3C,$7E,$EB,$7E,$5A,$8C
       .byte $88,$EC,$7C,$7E,$EB,$7E,$5A,$30,$26,$3C,$64,$7E,$EB,$7E,$5A,$24
       .byte $7C,$FE,$87,$44,$20,$00,$00,$42,$7C,$FF,$46,$24,$10,$00,$00,$18
       .byte $7C,$FF,$86,$64,$10,$00,$00,$FB,$F2,$FE,$7E,$7F,$30,$1F,$14,$FB
       .byte $FE,$FF,$7F,$70,$30,$1F,$00,$FB,$F2,$FE,$7E,$7F,$30,$1F,$14,$68
       .byte $6B,$7D,$7F,$FF,$FD,$7F,$3C,$29,$E5,$7D,$7F,$FF,$FD,$7F,$3C,$55
       .byte $6D,$FD,$7F,$FF,$FD,$7F,$3C,$7C,$FE,$D6,$7C,$38,$10,$10,$7C,$7C
       .byte $FE,$D6,$7C,$38,$10,$10,$10,$44,$FE,$D6,$7C,$38,$10,$10,$10,$EE
       .byte $AA,$AA,$AA,$AA,$3B,$03,$00,$EE,$AA,$AA,$2A,$2A,$2A,$2B,$3B,$EF
       .byte $A9,$29,$2B,$2A,$3A,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$66,$3C,$34,$34,$34,$B5,$F7,$7E,$3C,$18,$1C,$18,$00
       .byte $00,$00,$00,$63,$3E,$34,$34,$34,$34,$34,$7E,$7E,$DB,$9D,$18,$00
       .byte $00,$00,$00,$36,$3C,$34,$34,$34,$B5,$FF,$7E,$18,$1C,$18,$00,$00
       .byte $00,$00,$00,$7D,$FF,$FF,$BE,$9E,$0E,$0C,$1C,$18,$10,$00,$38,$7C
       .byte $38,$00,$00,$7D,$FF,$FF,$BE,$9E,$1E,$0E,$0C,$1C,$18,$10,$00,$00
       .byte $38,$7C,$38,$7D,$FF,$FF,$BE,$9E,$1E,$0E,$0C,$1C,$18,$10,$38,$7C
       .byte $38,$00,$00,$EE,$A8,$24,$6C,$7E,$7E,$3D,$3F,$1E,$0E,$06,$06,$06
       .byte $07,$04,$04,$EE,$AC,$AC,$7E,$7E,$3D,$3F,$1E,$0E,$06,$06,$06,$07
       .byte $04,$04,$00,$00,$00,$EE,$AC,$AC,$7E,$7E,$3E,$3E,$1E,$0E,$06,$06
       .byte $06,$07,$04,$38,$70,$78,$F8,$FC,$FE,$FC,$DE,$CF,$C7,$C2,$E0,$60
       .byte $6C,$3C,$38,$00,$38,$70,$78,$F8,$FC,$FE,$FC,$DE,$CF,$E7,$62,$6C
       .byte $3C,$38,$00,$20,$40,$60,$70,$F8,$FE,$FC,$DC,$DE,$CF,$67,$62,$70
       .byte $30,$3C,$1C
L1CC0: .byte $01,$01,$01,$01,$01,$01,$01,$39,$41,$49,$51,$59
L1CCC: .byte $01,$09,$11,$19,$21,$29,$31,$31,$31,$31,$31,$31
L1CD8: .byte $F1,$F1,$F1,$F1,$F1,$99,$91,$89,$81
L1CE1: .byte $F1,$F1,$F1,$F1,$F1,$B9,$B1,$A9,$A1
L1CEA: .byte $F1,$D1,$C9,$C1,$A1,$A1,$A1,$A1,$A1
L1CF3: .byte $F1,$E9,$E1,$D9,$81,$81,$81,$81,$81,$00,$00,$00,$00,$18,$3C,$3C
       .byte $24,$24,$24,$24,$24,$24,$3C,$3C,$18,$1C,$1C,$1C,$08,$08,$08,$08
       .byte $08,$18,$18,$18,$08,$3C,$3C,$3C,$24,$20,$10,$08,$24,$24,$3C,$38
       .byte $18,$18,$3C,$3C,$24,$04,$04,$18,$08,$24,$3C,$3C,$3C,$1C,$1C,$1C
       .byte $08,$08,$3C,$28,$28,$28,$18,$18,$08,$18,$3C,$3C,$24,$24,$04,$34
       .byte $2C,$20,$3C,$3C,$3C,$18,$3C,$3C,$24,$24,$34,$2C,$20,$24,$3C,$3C
       .byte $18,$18,$18,$18,$18,$18,$08,$08,$24,$24,$3C,$3C,$3C,$18,$3C,$3C
       .byte $24,$24,$24,$18,$24,$24,$3C,$3C,$18,$18,$3C,$3C,$24,$04,$04,$1C
       .byte $24,$24,$3C,$3C,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00
L1D84: .byte $AE,$B6,$BE,$C6,$CE,$D6,$CE,$C6,$BE,$B6,$18,$0E,$D8,$38,$08,$5A
       .byte $E8,$4A,$F8,$0C,$0E,$3A,$9E,$A1,$A4,$C7,$60,$70,$80,$30,$40,$50
       .byte $00,$10,$20,$AF,$B2,$BB,$B5,$B8,$BE,$C1,$C4,$28,$30,$38,$4C,$54
       .byte $5C,$64,$6C,$74,$7C,$84,$8C,$94,$9C,$A4,$C4,$CC,$D4,$DC,$E4,$EC
       .byte $AC,$B4,$BC,$90,$A0,$B0
L1DCA: .byte $31,$31,$69,$71,$79,$71,$69,$31
L1DD2: .byte $21,$21,$21,$22,$22,$22,$23,$23,$1E,$1E,$1F,$1F,$1F,$20,$20,$20
L1DE2: .byte $78,$90,$90,$90,$01,$01,$05,$10,$15,$02,$02,$04,$06,$08
L1DF0: .byte $1C,$2C,$34,$44,$54,$64,$6C,$7C
L1DF8: .byte $1A,$3A,$68,$8A,$CA,$4A,$6A,$3A,$00,$38,$44,$44,$92,$A2,$A2,$92
       .byte $44,$44,$38,$00,$00,$00,$00,$45,$45,$45,$5D,$55,$5D,$00,$00,$00
       .byte $00,$00,$00,$DC,$50,$50,$DC,$44,$DC,$00,$00,$00,$00,$00,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$94,$00,$00,$00,$00,$93,$94,$94,$95,$F4,$94
       .byte $94,$63,$00,$00,$00,$00,$26,$A9,$A8,$A8,$28,$28,$A9,$26,$00,$00
       .byte $03,$07,$2F,$3F,$14,$1C,$18,$18,$10,$10,$10,$30,$6E,$6F,$30,$2F
       .byte $30,$31,$72,$73,$74,$73,$71,$73,$34,$33,$34,$35,$77,$78,$7A,$78
       .byte $73,$3A,$3A,$7B,$7A,$73,$3A,$3A,$7B,$7A,$3F,$3D,$3B,$3A,$38,$37
       .byte $35,$34,$33,$32,$31,$2F,$71,$73,$80,$0E,$09,$13,$00,$09,$00,$0E
       .byte $09,$13,$09,$0E,$09,$13,$00,$09,$00,$0E,$09,$13,$09,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$C0,$C0,$C0,$40,$60,$20,$A1,$E3,$60,$60
       .byte $60,$20,$20,$30,$91,$D3,$30,$30,$30,$10,$10,$10,$91,$D3,$0C,$0C
       .byte $0C,$08,$08,$08,$89,$CB,$06,$06,$06,$04,$04,$0C,$89,$CB,$03,$03
       .byte $03,$02,$06,$04,$85,$C7,$08,$04,$02,$01,$01,$10,$10,$50,$20,$30
       .byte $6E,$32,$5A,$00,$01,$01,$02,$02,$80,$00,$80,$00,$01,$A9,$0F,$85
       .byte $B5,$A9,$E0,$85,$AF,$60,$00,$00,$00,$01,$04,$01,$09,$09,$01,$04
       .byte $01,$01,$04,$01,$09,$09,$01,$04,$00,$01,$04,$01,$09,$09,$01,$00
       .byte $00,$01,$04,$01,$09,$01,$01,$00,$00,$01,$04,$01,$01,$01,$01,$00
       .byte $00,$01,$00,$01,$01,$01,$01,$00,$00,$00,$00,$01,$01,$01,$01,$00
       .byte $00,$00,$04,$01,$09,$09,$01,$04,$01,$00,$00,$01,$09,$09,$01,$04
       .byte $01,$00,$00,$01,$01,$09,$01,$04,$01,$00,$00,$01,$01,$01,$01,$04
       .byte $01,$00,$00,$01,$01,$01,$01,$00,$01,$00,$00,$01,$01,$01,$01,$00
       .byte $00,$00,$18,$3D,$07,$3D,$19,$00,$00,$00,$60,$F1,$1F,$F1,$61,$00
       .byte $00,$00,$60,$31,$1F,$31,$61,$00,$00,$00,$00,$AA,$AA,$AA,$AA,$00
       .byte $00,$00,$00,$2A,$2A,$2A,$2A,$00,$00,$00,$00,$0A,$0A,$0A,$0A,$00
       .byte $00,$00,$00,$02,$02,$02,$02,$00,$00,$00,$00,$55,$55,$55,$55,$00
       .byte $00,$00,$00,$15,$15,$15,$15,$00,$00,$00,$00,$05,$05,$05,$05,$00
       .byte $00,$00,$00,$01,$01,$01,$01,$00,$00,$00,$00,$54,$54,$54,$54,$00
       .byte $00,$00,$00,$50,$50,$50,$50,$00,$00,$00,$00,$40,$40,$40,$40,$00
       .byte $00,$00,$00,$A8,$A8,$A8,$A8,$00,$00,$00,$00,$A0,$A0,$A0,$A0,$00
       .byte $00,$00,$00,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$10,$00,$10
