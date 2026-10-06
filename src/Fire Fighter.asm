; Disassembly of roms/Fire Fighter.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Fire Fighter.bin
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
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $1000
L1000: LDA    #$09    
       SEC            
       SBC    $98     
       BMI    L1012   
       TAY            
L1008: LDX    #$0C    
L100A: STA    WSYNC   
       DEX            
       BNE    L100A   
       DEY            
       BPL    L1008   
L1012: LDY    #$07    
       LDX    #$00    
       STX    NUSIZ1  
L1018: STA    WSYNC   
       LDA    $88     
       AND    #$C0    
       BNE    L102B   
       LDA    ($D4),Y 
       STA    GRP1    
       LDA    L1EF8,Y 
       AND    $D2     
       STA    COLUP1  
L102B: DEY            
       BPL    L1018   
       LDY    #$06    
L1030: STA    WSYNC   
       LDA    L11AF,Y 
       STA    PF0     
       LDA    L11BD,Y 
       AND    $D2     
       STA    COLUPF  
       STX    GRP1    
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       JSR    L13FF   
       STA    PF0     
       LDA    L11B6,Y 
       STA    PF1     
       STX    PF2     
       DEY            
       BPL    L1030   
       STX    PF0     
       STX    PF1     
       STA    WSYNC   
       JSR    L13F9   
       STA    RESP1   
       LDA    #$20    
       STA    HMP1    
       LDA    #$06    
       STA    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D2     
       AND    #$01    
       TAY            
       LDA    L11C4,Y 
       STA    COLUPF  
       JSR    L13F9   
       LDA    ($D4,X) 
       LDA    $D4,X   
       STX    HMP1    
       LDX    $98     
       LDA    $C6,X   
       LSR            
       LDA    #$FF    
       STA    PF0     
       BCS    L108E   
       LDX    $DD     
       BCC    L10CD   
L108E: LDX    #$00    
       BCS    L10D5   
L1092: LDA    L11D0,Y 
       STA    COLUP1,X
       LDA    #$3F    
       STA    PF1,X   
L109B: STA    HMOVE   
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       LDA    #$FC    
       STA    PF2     
       LDA    ($92),Y 
       STA    GRP1    
       LDA    ($94),Y 
       STX    PF1     
       STA    GRP1    
       LDA    ($8E),Y 
       STA    ENABL   
       STA    HMBL    
       STX    PF2     
       DEY            
       BPL    L1092   
       STX    GRP1    
       PHA            
       PLA            
       JMP.ind ($008A)
L10C5: .byte $85,$2A,$A9,$B4,$85,$8C,$D0,$0D
L10CD: STA    HMOVE   
       LDA    #$00    
       STA    $8C     
       BEQ    L10DA   
L10D5: STA    HMOVE   
       PLA            
       STA    $8C,X   
L10DA: LDY    #$0B    
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       STA    PF0     
       DEC    $99     
       BPL    L10EF   
       JMP    L1262   
L10EF: LDA    ($8E),Y 
       STA    ENABL   
       STX    PF1     
       STA    HMBL    
       STX    PF2     
       LDX    $99     
       LDA    $A6,X   
       STA    $90     
       LDA    $B0,X   
       STA    $92     
       NOP            
       STA    HMOVE   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDY    #$0A    
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($8E),Y 
       STA    ENABL   
       STA    HMBL    
       LDA    $BA,X   
       STA    $94     
       LSR            
       LSR            
       LSR            
       LSR            
       LDY    #$00    
       STY    PF1     
       STY    PF2     
       PHA            
       PLA            
       LDA    #$00    
       LDY    #$08    
       LDA    ($8E),Y 
       STA    $F2     
       NOP            
       STA    HMOVE   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDY    #$09    
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($8E),Y 
       STA    ENABL   
       STA    HMBL    
       LDA    $C6,X   
       TAY            
       LSR            
       LSR            
       TAX            
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    L1EE8,Y 
       STA    $8A     
       LDA    $D9,X   
       STA    $8E     
       LDA    $DC,X   
       STA    $8F     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDY    #$08    
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    $F2     
       STA    ENABL   
       STA    HMBL    
       LDY    #$07    
       LDA    $99     
       NOP            
       EOR    $E1     
       BEQ    L1195   
       LDX    #$00    
       STX    PF1     
       STX    PF2     
       LDA    L11D0,Y 
       STA    COLUP1,X
       LDA    #$C0    
       STA    PF0     
       LDA    #$3F    
       STA    PF1     
       LDA    ($D4),Y 
       JMP    L109B   
L1195: LDX    #$00    
       STX    PF1     
       STX    PF2     
       LDA    L1EF8,Y 
       STA    COLUP1  
       LDA    #$C0    
       STA    PF0     
       LDA    #$3F    
       STA    PF1     
       LDA    #$00    
       STA    $91     
       JMP    L1200   
L11AF: .byte $E0,$E0,$00,$FF,$FF,$FF,$FF
L11B6: .byte $80,$80,$00,$C0,$C0,$C0,$C0
L11BD: .byte $06,$06,$00,$0A,$0A,$0A,$0A
L11C4: .byte $08,$02
L11C6: .byte $66,$70,$78,$75,$7B,$7B,$7B,$7F,$7A,$7D
L11D0: .byte $44,$44,$46,$34,$34,$38,$1A,$1E
L11D8: .byte $0C,$0C,$0A,$06,$06,$05,$04,$04,$03,$03
L11E2: .byte $14,$0A,$08,$05,$05,$05,$03,$03,$03
L11EB: .byte $03
L11EC: .byte $18,$24,$30,$3C,$48,$54,$60,$6C,$78,$83
L11F6: .byte $04,$04,$03,$05,$04,$04,$04,$03,$05,$04
L1200: STA    HMOVE   
       LDA    ($8C),Y 
       STA    GRP0    
       BIT    $88     
       BPL    L121F   
       BVS    L1233   
       STX    GRP1    
       LDA    #$FC    
       STA    PF2     
       LDA    ($8E),Y 
       STA    ENABL   
       STA    HMBL    
       LDA    ($90),Y 
       STA    GRP1,X  
       JMP    L1245   
L121F: LDA    ($90),Y 
       STA    GRP1    
       LDA    #$FC    
       STA    PF2     
       STX    GRP1    
       NOP            
       LDA    ($8E),Y 
       STA    ENABL   
       STA    HMBL    
       JMP    L1245   
L1233: STX    GRP1    
       LDA    #$FC    
       STA    PF2     
       LDA    ($90),Y 
       STA    GRP1    
       LDA    ($8E),Y 
       STA    ENABL   
       STA    HMBL    
       STX    GRP1    
L1245: STX    PF1     
       STX    PF2     
       DEY            
       BPL    L1257   
       NOP            
       NOP            
       LDA    #$1E    
       STA    $91     
       STX    GRP1    
       JMP.ind ($008A)
L1257: LDA    L1EF8,Y 
       STA    COLUP1,X
       LDA    #$3F    
       STA    PF1     
       BNE    L1200   
L1262: LDA    ($8E),Y 
       STA    ENABL   
       STX    PF1     
       STA    HMBL    
       STX    PF2     
       LDA    $FF     
       STA    $8C     
       LDX    #$FF    
       TXS            
       INX            
       DEY            
L1275: STA    WSYNC   
L1277: STA    HMOVE   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    $D1     
       BNE    L1290   
       CPY    $D3     
       BEQ    L128C   
       LDA    $D4,X   
       JMP    L1296   
L128C: STY    $D1     
       BEQ    L1296   
L1290: LDA    ($8C),Y 
       STA    GRP0    
       STA    $D1     
L1296: LDA    ($8E),Y 
       STA    ENABL   
       STA    HMBL    
       DEY            
       CPY    #$07    
       BEQ    L12AF   
       CPY    #$05    
       BEQ    L12C2   
       STX    PF1     
       STX    PF2     
       LDA    $D7     
       STA    NUSIZ1  
       BPL    L1275   
L12AF: STX    PF1     
       STX    PF2     
       LDX    $C5     
       LDA    $D9,X   
       STA    $8E     
       LDA    $DC,X   
       STA    $8F     
       LDX    #$00    
       NOP            
       BEQ    L1277   
L12C2: STX    PF1     
       STX    PF2     
       LDA    #$08    
       AND    $D2     
       STA    COLUP1  
       LDA    #$04    
       AND    $D2     
       STA    COLUPF  
       STX    ENABL   
L12D4: STA    HMOVE   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    $D1     
       BNE    L12ED   
       CPY    $D3     
       BEQ    L12E9   
       LDA    $D4,X   
       JMP    L12F3   
L12E9: STY    $D1     
       BEQ    L12F3   
L12ED: LDA    ($8C),Y 
       STA    GRP0    
       STA    $D1     
L12F3: LDA    ($8E),Y 
       STA    ENAM1   
       STA    HMM1    
       DEY            
       BMI    L132F   
       BNE    L131D   
       LDA    #$80    
       STA    PF1     
       STX    PF2     
       LDA    $D3     
       BNE    L1316   
       LDA    #$1F    
       STA    $8C     
       LDA    #$1F    
       STA    $8D     
       LDA    #$2E    
       STA    COLUP0  
       BNE    L12D4   
L1316: PHA            
       PLA            
       LDA    ($D4,X) 
       JMP    L12D4   
L131D: LDA    #$80    
       STA    PF1     
       STX    PF2     
       PHA            
       PLA            
       LDA    L1FC0,Y 
       AND    $D2     
       STA    COLUPF,X
       JMP    L12D4   
L132F: LDA    #$C0    
       STA    PF1     
       STX    PF2     
       LDY    #$0B    
       LDA    $8C     
       SEC            
       SBC    #$0C    
       STA    $8C     
       STA    WSYNC   
L1340: STA    HMOVE   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    $D1     
       BNE    L1352   
       PHA            
       PLA            
       NOP            
       JMP    L1358   
L1352: LDA    ($8C),Y 
       STA    GRP0    
       STA    $D1     
L1358: LDA    ($8E),Y 
       STA    ENAM1   
       STA    HMM1    
       DEY            
       CPY    #$07    
       BNE    L1377   
       LDA    #$C0    
       STA    PF1     
       STX    PF2     
       LDX    $C4     
       LDA    $D9,X   
       STA    $8E     
       LDA    $DC,X   
       STA    $8F     
       LDX    $DD     
       BEQ    L1340   
L1377: LDA    L1CB7,Y 
       STA    PF1     
       STX    PF2     
       CPY    #$00    
       BEQ    L138E   
       LDA    $D4     
       LDA    L1FC6,Y 
       AND    $D2     
       STA    COLUPF  
       JMP    L1340   
L138E: NOP            
       LDA    L1FC6,Y 
       AND    $D2     
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    ($8C),Y 
       STX    GRP0    
       NOP            
       LDA    ($8E),Y 
       STA    ENAM1   
       STA    HMM1    
       LDA    #$60    
       STA    HMP0    
       LDA    #$70    
       STA    HMP1    
       LDA    #$F8    
       STA    PF1     
       STX    PF2     
       STX    REFP0   
       LDA    $D4,X   
       LDA    $D4,X   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    #$46    
       AND    $D2     
       STA    COLUP0  
       STA    COLUP1  
       JSR    L13FD   
       LDX    #$0F    
       LDA    #$F8    
       STA    PF1     
       JSR    L13FF   
       LDA    #$00    
       STA    PF2     
       LDY    #$01    
       STY    NUSIZ0  
       STA    ENAM1   
       STY    NUSIZ1  
       JMP    L1400   
L13F0: .byte $0A,$0A,$0A,$0A,$0A,$0A,$0A,$60,$4A
L13F9: LSR            
       LSR            
       LSR            
       LSR            
L13FD: LSR            
       LSR            
L13FF: RTS            

L1400: TXA            
       AND    #$08    
       BEQ    L140B   
       LDA    #$E0    
       LDY    #$F8    
       BNE    L1410   
L140B: LDA    #$FF    
       LDY    #$FC    
       NOP            
L1410: STA    PF0     
       STY    $F2     
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    L1DED,X 
       STA    GRP0    
       LDA    L1DDD,X 
       STA    GRP1    
       LDA    #$FF    
       STA    PF0     
       LDA    $F2     
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       LDA    L1DCD,X 
       LDY    L1DBD,X 
       STA    GRP0    
       STY    GRP1    
       DEX            
       BPL    L1400   
       LDA    #$04    
       AND    $D2     
       STA    COLUPF  
       LDY    #$FF    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       INY            
       STY    GRP1    
       STY    GRP1    
       LDA    $EE     
       LSR            
       AND    #$78    
       STA    $F6     
       LDA    $EE     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $F4     
       LDA    #$50    
       BIT    $EC     
       BPL    L1468   
       LDA    #$60    
L1468: STA    $F8     
       LDA    $EF     
       LSR            
       AND    #$78    
       STA    $FC     
       LDA    $EF     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $FA     
       LDA    $EB     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F2     
       LDA    #$60    
       SEC            
       SBC    $F2     
       STA    $FE     
       LDA    #$1D    
       STA    $F5     
       STA    $F7     
       STA    $F9     
       STA    $FB     
       STA    $FD     
       STA    $FF     
       STA    WSYNC   
       LDA    #$10    
       AND    $D2     
       STA    COLUPF  
       LDA    #$9A    
       AND    $D2     
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       STA    WSYNC   
L14B1: DEY            
       BPL    L14B1   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$08    
L14CB: DEY            
       STY    $F2     
       LDA    ($FE),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($FC),Y 
       STA    GRP1    
       LDA    ($FA),Y 
       STA    GRP0    
       LDA    ($F8),Y 
       STA    $F3     
       LDA    ($F6),Y 
       TAX            
       LDA    ($F4),Y 
       TAY            
       LDA    $F3     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $F2     
       BNE    L14CB   
       STY    GRP0    
       STY    GRP1    
       STY    VDELP0  
       STY    VDELP1  
       STY    NUSIZ0  
       STA    WSYNC   
       LDA    #$23    
       STA    TIM64T  
       INC    $80     
       BNE    L1515   
       INC    $81     
       BNE    L1515   
       BIT    $EC     
       BVC    L1515   
       LDA    #$81    
       STA    $EC     
L1515: JSR    L1C45   
       LDA    SWCHA   
       STA    $FC     
       LDA    SWCHB   
       ROR    $EC     
       BCS    L1528   
       LSR            
       BCS    L155B   
       ROL            
L1528: LSR            
       ROL    $EC     
       LSR            
       PHP            
       BCS    L1564   
       BIT    $F0     
       BPL    L1564   
       INC    $F0     
       PLP            
       JSR    L1C5E   
       STX    $E1     
       LDA    #$C1    
       STA    $EC     
L153F: LDA    $F0     
       AND    #$0F    
       CMP    #$09    
       BNE    L1549   
       LDA    #$00    
L1549: STA    $F0     
       EOR    #$FF    
       CLC            
       ADC    #$0B    
       CMP    #$02    
       BNE    L1556   
       LDA    #$03    
L1556: STA    $98     
       JMP    L1A17   
L155B: LDA    #$FE    
       STA    $D2     
       JSR    L1C52   
       BNE    L153F   
L1564: ROL    $F0     
       PLP            
       ROR    $F0     
       BIT    $EC     
       BPL    L15A7   
       LDA    #$CC    
       STA    $EF     
       LDA    $F0     
       ORA    #$C0    
       STA    $EE     
       INC    $EE     
       LDA    #$00    
       STA    $EB     
       LDA    #$F3    
       BVC    L1583   
       LDA    #$FE    
L1583: STA    $D2     
       STA    $E1     
       BIT    REFP1   
       BPL    L155B   
       JSR    L1C83   
       BNE    L15CE   
L1590: LDA    $83     
       AND    #$04    
       BEQ    L15A1   
       LDA    $F1     
       BNE    L15CE   
       JSR    L1C83   
       STX    $E1     
       BNE    L15CE   
L15A1: BIT    REFP1   
       BPL    L155B   
       BMI    L15CE   
L15A7: BVS    L1590   
       LDX    $ED     
       INX            
       CPX    #$38    
       BCC    L15CB   
       LDX    #$00    
       SED            
       LDA    $EE     
       ADC    #$00    
       STA    $EE     
       CMP    #$60    
       BCC    L15CB   
       STX    $EE     
       LDA    $EF     
       ADC    #$00    
       STA    $EF     
       BCC    L15CB   
       LDA    #$81    
       STA    $EC     
L15CB: STX    $ED     
       CLD            
L15CE: BIT    $EC     
       BMI    L1626   
       LDA    $83     
       AND    #$04    
       BEQ    L1624   
       LDY    #$00    
       STY    AUDV0   
       LDA    $80     
       AND    #$03    
       BNE    L1621   
       LDA    $96     
       SEC            
       SBC    #$20    
       BMI    L15EF   
       STA    $96     
       BEQ    L161F   
       BPL    L1619   
L15EF: LDX    $F1     
       LDA    L1CC2,X 
       BPL    L1611   
       LDA    $83     
       AND    #$FB    
       STA    $83     
       LDA    $F0     
       AND    #$0F    
       CMP    #$08    
       BNE    L1626   
       LDA    $98     
       CMP    #$0A    
       BEQ    L1626   
       INC    $98     
       JSR    L1C5E   
       BNE    L1621   
L1611: STA    AUDF1   
       AND    #$60    
       STA    $96     
       INC    $F1     
L1619: LDA    #$0C    
       STA    AUDC1   
       LDY    #$08    
L161F: STY    AUDV1   
L1621: JMP    L1A17   
L1624: BVC    L162E   
L1626: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       BEQ    L1621   
L162E: LDY    #$00    
       LDX    #$1D    
L1632: LDA    $A6,X   
       BMI    L163B   
       AND    #$08    
       BNE    L163B   
       INY            
L163B: DEX            
       BPL    L1632   
       TYA            
       BEQ    L1657   
       LSR            
       LSR            
       BNE    L1647   
       LDA    #$01    
L1647: STA    $F2     
       LDA    $89     
       AND    #$0F    
L164D: CMP    $F2     
       BEQ    L1657   
       BCC    L1657   
       SBC    $F2     
       BCS    L164D   
L1657: STA    AUDV0   
       LDA    $83     
       LSR            
       BCC    L1675   
       LDA    $F1     
       BMI    L1670   
       STA    AUDV1   
       DEC    $F1     
       LDA    #$01    
       STA    AUDC1   
       LDA    #$15    
       STA    AUDF1   
       BNE    L1672   
L1670: DEC    $83     
L1672: JMP    L1681   
L1675: LSR            
       BCC    L167D   
       JSR    L1CCE   
       BNE    L1681   
L167D: LDA    #$00    
       STA    AUDV1   
L1681: LDX    $E1     
       LDA    $80     
       AND    #$0F    
       BEQ    L169D   
       BIT    SWCHB   
       BVC    L169A   
       AND    #$07    
       BEQ    L169D   
       CPX    #$03    
       BCC    L169A   
       CMP    #$07    
       BEQ    L169D   
L169A: JMP    L172C   
L169D: LDX    $E1     
       BEQ    L169A   
       BMI    L169A   
       DEX            
       LDA    $A6,X   
       AND    $B0,X   
       AND    $BA,X   
       AND    #$08    
       BEQ    L16B8   
       LDA    #$08    
       STA    $A7,X   
       LDA    #$E3    
       STA    $A6,X   
       DEC    $E1     
L16B8: LDA    #$00    
       STA    $F3     
       LDA    $89     
       AND    #$03    
       BEQ    L169A   
       TAX            
       DEX            
       LDA    L1FEE,X 
       STA    $F2     
       LDA    $83     
       AND    L1FF1,X 
       BNE    L1712   
       LDA    $84,X   
       BEQ    L16D9   
       DEC    $84,X   
       JMP    L172C   
L16D9: LDY    $98     
       DEY            
       LDA    ($F2),Y 
       AND    #$0F    
       BNE    L16EB   
       LDA    $83     
       ORA    L1FF1,X 
       STA    $83     
       BNE    L172C   
L16EB: LDA    ($F2),Y 
       BMI    L16F3   
       AND    #$08    
       BEQ    L16F8   
L16F3: DEY            
       BMI    L172C   
       BPL    L16EB   
L16F8: LDA    ($F2),Y 
       AND    #$0F    
       BNE    L170E   
       INY            
       CPY    $E1     
       BCC    L170E   
       INC    $E1     
       LDA    $89     
       AND    #$70    
       ORA    #$08    
       STA.wy $00A6,Y 
L170E: LDA    #$FF    
       BNE    L1723   
L1712: LDY    #$00    
L1714: LDA    ($F2),Y 
       AND    #$08    
       BEQ    L1721   
       INY            
       CPY    $98     
       BCS    L172C   
       BCC    L1714   
L1721: LDA    #$01    
L1723: STA    $F4     
       LDA    ($F2),Y 
       CLC            
       ADC    $F4     
       STA    ($F2),Y 
L172C: LDA    $80     
       AND    #$07    
       CMP    #$05    
       BNE    L1744   
       LDX    #$1D    
       CLC            
L1737: LDA    $A6,X   
       BMI    L1741   
       ADC    #$10    
       AND    #$7F    
       STA    $A6,X   
L1741: DEX            
       BPL    L1737   
L1744: LDA    $80     
       AND    #$03    
       CMP    #$03    
       BNE    L17A6   
       LDA    $83     
       AND    #$FD    
       STA    $83     
       LDA    $D0     
       AND    #$70    
       BNE    L17A6   
       BIT    REFP1   
       BMI    L17A6   
       LDA    $80     
       AND    #$07    
       CMP    #$03    
       BNE    L1781   
       LDA    $D8     
       CMP    #$14    
       BCS    L1781   
       BIT    $FC     
       BMI    L1779   
       LDX    $82     
       INX            
       CPX    $98     
       BCS    L1779   
       INC    $82     
       BPL    L1781   
L1779: BVS    L1781   
       LDA    $82     
       BEQ    L1781   
       DEC    $82     
L1781: LDX    $82     
       LDA    $FC     
       ASL            
       ASL            
       ASL            
       BCS    L1794   
       LDY    $D8     
       CPY    #$10    
       BEQ    L1794   
       DEC    $D8     
       BNE    L17A0   
L1794: ASL            
       BCS    L17A6   
       LDA    $D8     
       CMP    L11EC,X 
       BEQ    L17A6   
       INC    $D8     
L17A0: LDA    $83     
       ORA    #$02    
       STA    $83     
L17A6: LDA    $80     
       LSR            
       BCS    L17AE   
L17AB: JMP    L18B5   
L17AE: LDA    $D0     
       AND    #$FD    
       STA    $D0     
       AND    #$70    
       BNE    L181E   
       BIT    REFP1   
       BPL    L17AB   
       BIT    $FC     
       BMI    L17EC   
       LDA    $D0     
       AND    #$F7    
       STA    $D0     
       LDA    $DF     
       CMP    #$6C    
       BEQ    L17D4   
       INC    $DF     
L17CE: INC    $D0     
       INC    $D0     
       BNE    L17AB   
L17D4: LDA    $D0     
       AND    #$8F    
       ORA    #$22    
L17DA: STA    $D0     
       LDA    #$34    
       STA    $E2     
       LDA    #$0F    
       STA    $F1     
       LDA    $83     
       ORA    #$01    
       STA    $83     
       BNE    L17AB   
L17EC: BVS    L17FE   
       LDA    $D0     
       ORA    #$08    
       STA    $D0     
       LDA    $DF     
       CMP    #$08    
       BEQ    L17AB   
       DEC    $DF     
       BNE    L17CE   
L17FE: LDA    $FC     
       AND    #$10    
       BNE    L17AB   
       LDA    $DF     
       CMP    #$5D    
       BCS    L17AB   
       LDA    $EB     
       CMP    #$10    
       BCC    L17AB   
       LDA    $D0     
       AND    #$8B    
       ORA    #$40    
       STA    $D0     
       LDA    #$10    
       STA    $E0     
       BNE    L17AB   
L181E: CMP    #$10    
       BNE    L1857   
       LDA    $D0     
       ORA    #$08    
       STA    $D0     
       LDA    $E0     
       CMP    #$01    
       BNE    L183A   
       BIT    $FC     
       BVS    L1844   
       LDA    $D0     
       AND    #$8F    
       ORA    #$32    
       BNE    L17DA   
L183A: LDA    $FC     
       AND    #$20    
       BNE    L1844   
       DEC    $E0     
L1842: BNE    L17CE   
L1844: LDA    $FC     
       AND    #$10    
       BNE    L1871   
       LDA    $E0     
       CLC            
       ADC    #$08    
       CMP    $D8     
       BCS    L1871   
       INC    $E0     
       BNE    L1842   
L1857: CMP    #$20    
       BNE    L1874   
       INC    $DF     
       LDY    #$1A    
L185F: JSR    L1FD1   
       BEQ    L1867   
       JMP    L17CE   
L1867: LDA    $D0     
       STY    $F2     
       AND    #$8F    
       ORA    $F2     
       STA    $D0     
L1871: JMP    L18B5   
L1874: CMP    #$30    
       BNE    L187E   
       DEC    $DF     
       LDY    #$02    
       BNE    L185F   
L187E: LDA    $FC     
       ASL            
       ASL            
       BMI    L1894   
L1884: DEC    $E0     
L1886: DEC    $E0     
       DEC    $E0     
       LDA    $E0     
       CMP    #$10    
       BCS    L18AD   
       LDY    #$00    
       BEQ    L1867   
L1894: ASL            
       BMI    L1886   
       LDA    $EB     
       CMP    #$10    
       BCC    L1884   
       INC    $E0     
       INC    $E0     
       LDX    $98     
       LDY    L11EB,X 
       DEY            
       CPY    $E0     
       BCS    L18AD   
       STY    $E0     
L18AD: LDA    $80     
       AND    #$E0    
       BNE    L18B5   
       DEC    $EB     
L18B5: LDA    $80     
       AND    #$03    
       BEQ    L18C7   
       CMP    #$02    
       BNE    L18C7   
       LDA    $D0     
       AND    #$70    
       CMP    #$40    
       BEQ    L18CA   
L18C7: JMP    L192B   
L18CA: LDA    $DF     
       ADC    #$02    
       JSR    L1D68   
       CMP    #$09    
       BCC    L1925   
       CMP    #$11    
       BCS    L1925   
       LDA    L1DFD,X 
       STA    $F2     
       STX    $F3     
       LDA    $E0     
       JSR    L1C9A   
       CMP    #$08    
       BCS    L1925   
       STX    $F4     
       DEX            
       TXA            
       ADC    $F2     
       TAX            
       LDA    $A6,X   
       BMI    L191C   
       AND    #$0F    
       CMP    #$08    
       BEQ    L191C   
       INC    $A6,X   
       LDX    $F3     
       LDA    L1FEE,X 
       STA    $F2     
       LDA    #$00    
       STA    $F3     
       LDY    $F4     
L1909: CPY    $98     
       BCS    L1918   
       LDA    ($F2),Y 
       BMI    L1915   
       AND    #$08    
       BEQ    L191C   
L1915: INY            
       BPL    L1909   
L1918: LDA    #$40    
       STA    $84,X   
L191C: LDA    $D0     
       AND    #$FB    
       STA    $D0     
       JMP    L192B   
L1925: LDA    $D0     
       ORA    #$04    
       STA    $D0     
L192B: LDA    $80     
       AND    #$07    
       CMP    #$01    
       BEQ    L1936   
L1933: JMP    L1A10   
L1936: LDA    $E1     
       CMP    $98     
       BCS    L1979   
       LDA    $D0     
       AND    #$70    
       CMP    #$10    
       BNE    L1979   
       LDX    $82     
       CPX    $E1     
       BNE    L1954   
       LDA    $E0     
       CLC            
       ADC    #$09    
       CMP    L11EC,X 
       BCS    L195F   
L1954: LDA    $D6     
       SEC            
       SBC    #$50    
       BEQ    L19A9   
       BCC    L1994   
       BCS    L19A1   
L195F: LDA    $D6     
       CMP    #$58    
       BNE    L1994   
       LDA    #$00    
       STA    $96     
       STA    $F1     
       STA    $81     
       LDA    $83     
       ORA    #$04    
       STA    $83     
       LDA    #$41    
       STA    $EC     
       BNE    L1933   
L1979: DEC    $88     
       LDA    $88     
       AND    #$0F    
       CMP    #$0F    
       BNE    L1988   
       JSR    L1C45   
       STA    $88     
L1988: LDA    $88     
       AND    #$10    
       BEQ    L19A1   
       LDA    $D6     
       CMP    #$58    
       BEQ    L1998   
L1994: INC    $D6     
       BNE    L19A9   
L1998: LDA    $88     
       EOR    #$10    
       STA    $88     
       JMP    L19A9   
L19A1: LDA    $D6     
       CMP    #$08    
       BEQ    L1998   
       DEC    $D6     
L19A9: LDA    $80     
       AND    #$38    
       CLC            
       ADC    #$7D    
       STA    $D4     
       LDY    #$00    
       LDA    $E1     
       CMP    $98     
       BCC    L19C9   
       STY    $F2     
       LDA    $88     
       AND    #$3F    
       ORA    $F2     
       STA    $88     
       JSR    L1CAD   
       BMI    L1A10   
L19C9: LDA    $D6     
       JSR    L1D68   
       STA    $F3     
       LDA    $88     
       AND    #$3F    
       ORA    L1CCB,X 
       STA    $88     
       LDA    $F3     
       BEQ    L1A07   
       CMP    #$10    
       BCS    L1A07   
       CMP    #$09    
       BCC    L19EB   
       EOR    #$FF    
       ADC    #$08    
       AND    #$0F    
L19EB: CLC            
       ADC    #$EF    
       STA    $F3     
       LDA    #$4C    
       STA    $F2     
       LDA    #$13    
       STA    $F4     
       LDY    #$07    
L19FA: LDA    ($D4),Y 
       JSR.w  $00F2   
       STA.wy $00E3,Y 
       DEY            
       BPL    L19FA   
       BMI    L1A0A   
L1A07: JSR    L1CAD   
L1A0A: LDX    $E1     
       LDA    #$E3    
       STA    $A6,X   
L1A10: LDA    $D6     
       LDX    #$01    
       JSR    L1C2B   
L1A17: LDA    INTIM   
       BNE    L1A17   
L1A1C: LDX    #$02    
       STX    VBLANK  
       STX    WSYNC   
       STX    VSYNC   
       STX    WSYNC   
       STX    WSYNC   
       STX    WSYNC   
       STA    VSYNC   
       LDX    #$2C    
       STX    TIM64T  
       LDX    $98     
       STX    $99     
       LDX    $82     
       BNE    L1A3B   
       LDA    #$10    
L1A3B: STA    CTRLPF  
       STA    $D7     
       LDA    L1ED4,X 
       STA    $DB     
       STA    $8E     
       LDA    $D8     
       JSR    L1C9A   
       STX    $F2     
       STA    $F3     
       LDX    $82     
       STX    $FF     
       INC    $FF     
       INC    $FF     
       LDA    L11D8,X 
       STA    $F4     
       LDA    #$62    
       LDY    #$00    
       LDX    #$0B    
L1A62: CPX    $F2     
       BEQ    L1A71   
       CPX    $FF     
       BCS    L1A6C   
       ADC    $F4     
L1A6C: STY    $C4,X   
       DEX            
       BPL    L1A62   
L1A71: STA    $FF     
       LDA    #$04    
       STA    $C4,X   
       LDA    #$08    
L1A79: DEX            
       BMI    L1A80   
       STA    $C4,X   
       BPL    L1A79   
L1A80: LSR    $C5     
       LSR    $C5     
       LSR    $C4     
       LSR    $C4     
       LDA    $DE     
       STA    $8F     
       LDY    #$08    
L1A8E: LDA    ($8E),Y 
       DEC    $F3     
       BPL    L1A96   
       AND    #$FD    
L1A96: STA.wy $009A,Y 
       CPY    #$07    
       BEQ    L1AA6   
       INY            
       CPY    #$0C    
       BNE    L1A8E   
       LDY    #$00    
       BEQ    L1A8E   
L1AA6: LDA    $FF     
       LDX    #$04    
       JSR    L1C2B   
       LDX    $82     
       LDA    L11C6,X 
       LDY    $C5     
       BNE    L1ABA   
       CLC            
       ADC    L11E2,X 
L1ABA: LDX    #$03    
       JSR    L1C2B   
       LDA    #$2E    
       AND    $D2     
       STA    COLUP0  
       LDA    $D0     
       AND    #$70    
       BNE    L1AD6   
       LDA    #$01    
       STA    $E0     
       LDX    $DF     
L1AD1: JSR    L1CD9   
       BCC    L1B38   
L1AD6: CMP    #$20    
       BEQ    L1ADE   
       CMP    #$30    
       BNE    L1AE2   
L1ADE: LDA    #$02    
       BNE    L1AD1   
L1AE2: CMP    #$40    
       BNE    L1B01   
       LDA    #$9E    
       AND    $D2     
       STA    COLUP0  
       LDX    #$A8    
       LDA    $D0     
       AND    #$04    
       BEQ    L1AFC   
       LDA    $80     
       AND    #$04    
       BEQ    L1AFC   
       LDX    #$86    
L1AFC: STX    $8C     
       JMP    L1B38   
L1B01: LDX    $E0     
       JSR    L1CD9   
       LDA    $E0     
       JSR    L1C9A   
       STX    $F2     
       STA    $F3     
       LDX    $82     
       LDA    #$00    
       CLC            
L1B14: DEC    $F2     
       BMI    L1B1D   
       ADC    L11D8,X 
       BNE    L1B14   
L1B1D: STA    $F4     
       LDY    $F3     
L1B21: LDA    ($8E),Y 
       BPL    L1B27   
       INC    $F4     
L1B27: DEY            
       BPL    L1B21   
       LDX    $82     
       BNE    L1B30   
       ASL    $F4     
L1B30: LDA    L1EDE,X 
       SEC            
       SBC    $F4     
       STA    $DF     
L1B38: ROR    $D0     
       CLC            
       ROL    $D0     
       LDX    #$FF    
       STX    $D3     
       INX            
       STX    $D1     
       LDA    $E0     
       JSR    L1C9A   
       TAY            
       CPY    #$0C    
       BNE    L1B51   
       INX            
       LDY    #$00    
L1B51: CPX    #$02    
       BCS    L1B5F   
       CPX    #$00    
       BEQ    L1B6A   
       CPY    #$0A    
       BCS    L1B5F   
       STX    $D1     
L1B5F: INC    $C6,X   
       CPY    #$0B    
       BEQ    L1B76   
       DEX            
L1B66: INC    $C6,X   
       BNE    L1B76   
L1B6A: CPY    #$0A    
       BCC    L1B72   
       STY    $D1     
       BCS    L1B66   
L1B72: STY    $D3     
       INC    $D3     
L1B76: LDA    $D0     
       AND    #$70    
       CMP    #$40    
       BNE    L1B8F   
       LDA    #$00    
       STA    $D3     
       SBC    #$01    
       STA    $D1     
L1B86: DEX            
       BMI    L1B8F   
       INC    $C6,X   
       INC    $C6,X   
       BNE    L1B86   
L1B8F: LDA    $8C     
       SEC            
       STY    $F2     
       SBC    $F2     
       STA    $8C     
       LDA    $D0     
       STA    REFP0   
       LDA    $DF     
       LDX    #$00    
       JSR    L1C2B   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       STX    $8E     
       LDA    #$1F    
       STA    $8F     
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    $E0     
       LDA    $8C     
       STA    $FD     
       CPX    #$0C    
       BCS    L1BC7   
       STA    $FE     
       STA    $FF     
       BCC    L1BE1   
L1BC7: SBC    #$0C    
       STA    $FE     
       CPX    #$18    
       BCS    L1BD3   
       STA    $FF     
       BCC    L1BE1   
L1BD3: LDX    #$00    
       LDA    $D0     
       AND    #$70    
       CMP    #$40    
       BNE    L1BDF   
       LDX    #$B4    
L1BDF: STX    $FF     
L1BE1: LDX    #$FC    
       TXS            
L1BE4: LDA    INTIM   
       BNE    L1BE4   
       STA    WSYNC   
       STA    VBLANK  
       JMP    L1000   

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
L1BF5: STA    VSYNC,X 
       TXS            
       INX            
       BNE    L1BF5   
       LDA    #$9A    
       STA    $DA     
       LDX    #$1F    
       STX    $8D     
       STX    $DC     
       DEX            
       STX    $91     
       STX    $93     
       STX    $95     
       STX    $DE     
       DEX            
       STX    $D5     
       LDX    #$10    
       STX    $8B     
       STX    AUDF0   
       LDA    #$08    
       STA    AUDC0   
       STA    $F1     
       JSR    L1C52   
       LDA    #$0A    
       STA    $98     
       LDA    #$C1    
       STA    $EC     
       JMP    L1A1C   
L1C2B: LDY    #$02    
       SEC            
L1C2E: INY            
       SBC    #$0F    
       BCS    L1C2E   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    WSYNC   
L1C3D: DEY            
       BPL    L1C3D   
       STA    RESP0,X 
       STA    HMP0,X  
       RTS            

L1C45: LDA    $87     
       LSR            
       EOR    $89     
       LSR            
       ROL    $89     
       ROR    $87     
       LDA    $89     
       RTS            

L1C52: LDA    #$82    
       STA    $EB     
       LDA    #$00    
       STA    $ED     
       STA    $EE     
       STA    $EF     
L1C5E: LDA    #$7D    
       STA    $D4     
       LDA    #$10    
       STA    $D8     
       LDA    #$00    
       LDX    #$08    
L1C6A: STA    $80,X   
       DEX            
       BPL    L1C6A   
       LDA    #$01    
       STA    $E0     
       STA    $E1     
       STA    $EC     
       LDA    #$18    
       STA    $D0     
       LDA    #$30    
       STA    $D6     
       STA    $89     
       STX    $87     
L1C83: LDX    #$1D    
L1C85: JSR    L1C45   
       AND    #$70    
       ORA    #$08    
       STA    $A6,X   
       DEX            
       BPL    L1C85   
       LDA    #$07    
       STA    $A6     
       STA    $B0     
       STA    $BA     
       RTS            

L1C9A: LDX    #$00    
L1C9C: CMP    #$0D    
       BCC    L1CA5   
       SBC    #$0C    
       INX            
       BPL    L1C9C   
L1CA5: CMP    #$00    
       BNE    L1CAC   
       DEX            
       LDA    #$0C    
L1CAC: RTS            

L1CAD: LDX    #$07    
       LDA    #$00    
L1CB1: STA    $E3,X   
       DEX            
       BPL    L1CB1   
       RTS            

L1CB7: .byte $F8,$F8,$C0,$C0,$C0,$C0,$C0,$00,$C0,$C0,$C0
L1CC2: .byte $31,$54,$34,$34,$37,$34,$73,$74,$80
L1CCB: .byte $40,$C0,$80
L1CCE: LDY    #$1C    
       STY    AUDF1   
       LDY    #$0A    
       STY    AUDC1   
       STY    AUDV1   
       RTS            

L1CD9: LDA    $D0     
       AND    #$02    
       BNE    L1CE0   
       TAX            
L1CE0: TXA            
       AND    #$03    
       STA    $F2     
       CMP    #$01    
       BNE    L1CEC   
       JSR    L1CCE   
L1CEC: ASL            
       ADC    $F2     
       ASL            
       ASL            
       ASL            
       SEC            
       SBC    $F2     
       ADC    #$1E    
       STA    $8C     
       RTS            

L1CFA: .byte $00,$00,$00,$00,$00,$00,$7C,$FE,$C6,$82,$82,$C6,$FE,$7C,$18,$18
       .byte $18,$18,$18,$18,$78,$78,$FE,$FE,$80,$7C,$06,$06,$FE,$F8,$FC,$FE
       .byte $02,$02,$FC,$02,$FE,$FC,$0E,$0E,$04,$FE,$C4,$64,$3C,$1C,$FC,$FE
       .byte $06,$06,$FC,$80,$FE,$FE,$7C,$FE,$86,$FC,$80,$80,$FC,$78,$E0,$70
       .byte $38,$1C,$0E,$06,$FE,$FE,$7C,$FE,$C6,$44,$7C,$C6,$FE,$7C,$7C,$7E
       .byte $02,$02,$7E,$C2,$FE,$7C,$00,$30,$30,$00,$30,$30,$00,$00,$FE,$FE
       .byte $FE,$FE,$FE,$FE,$FE,$FE,$00,$00,$00,$00,$00,$00,$00,$00
L1D68: LDX    #$02    
       CMP    #$48    
       BCC    L1D71   
       SBC    #$48    
       RTS            

L1D71: DEX            
       CMP    #$28    
       BCC    L1D79   
       SBC    #$28    
       RTS            

L1D79: DEX            
       SBC    #$08    
       RTS            

L1D7D: .byte $3C,$3C,$3C,$5A,$52,$5A,$00,$00,$3C,$3C,$3C,$5A,$52,$99,$00,$00
       .byte $3C,$3C,$3C,$5A,$89,$99,$02,$00,$3C,$3C,$3C,$7E,$99,$99,$59,$22
       .byte $3C,$3C,$3C,$7E,$5A,$4A,$99,$00,$3C,$3C,$3C,$5A,$99,$59,$20,$00
       .byte $3C,$3C,$3C,$5A,$89,$D9,$02,$00,$3C,$3C,$3C,$5A,$99,$99,$00,$00
L1DBD: .byte $78,$ED,$D6,$D5,$EE,$7D,$38,$87,$FE,$79,$03,$FB,$F9,$08,$00,$00
L1DCD: .byte $00,$00,$00,$00,$F8,$04,$F3,$F1,$F9,$E3,$E3,$C3,$C3,$8B,$04,$02
L1DDD: .byte $00,$00,$00,$00,$7F,$7B,$00,$FF,$C7,$FB,$C7,$DF,$C7,$FF,$81,$7E
L1DED: .byte $7C,$C6,$AA,$92,$C6,$7C,$83,$FF,$7C,$03,$FF,$FF,$FF,$FF,$80,$7F
L1DFD: .byte $00,$0A,$14,$33,$66,$43,$22,$08,$4C,$22,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$67,$76,$67,$2B,$A2,$04,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$E3,$DD,$77,$6B,$2B,$B6,$10,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$DF,$FD,$4E,$6E,$2B,$3A,$51,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$E7,$91,$E7,$94,$E7,$22,$84,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$BF,$FB,$5A,$5E,$CB,$8A,$86,$04,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$CF,$FC,$E6,$EB,$A9,$8B,$42,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$F2,$2F,$7F,$CB,$81,$CB,$60,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2,$E2,$F2
       .byte $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2,$02,$F2
       .byte $F2,$F2,$F2,$02,$F2,$F2,$F2,$F2,$02,$F2,$02,$F2,$02,$F2,$02,$F2
       .byte $02,$F2,$02,$F2,$02,$F2,$02,$F2,$02,$02,$02,$F2,$02,$F2,$02,$F2
       .byte $02,$02,$F2,$02,$02,$F2,$02,$02,$F2,$02,$02,$F2,$02,$02,$02,$F2
       .byte $02,$02,$02,$F2,$02,$02,$02
L1ED4: .byte $80,$8C,$98,$A4,$A4,$B0,$BC,$BC,$C8,$C8
L1EDE: .byte $80,$7D,$82,$79,$7F,$7F,$7D,$81,$7B,$7E
L1EE8: .byte $CD,$D5,$C5,$C5,$CD,$D5,$C5,$C5,$CD,$D5,$C5,$C5,$CD,$D5,$C5,$C5
L1EF8: .byte $98,$98,$98,$38,$38,$38,$38,$38,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$08,$18
       .byte $18,$18,$3C,$38,$18,$0C,$1E,$04,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$30,$20,$38,$0C,$0C,$38,$28,$38,$0C,$1E,$04,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$46,$74,$14,$1C
       .byte $18,$2C,$3C,$06,$0F,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$23,$3A,$0A,$1E,$18,$18,$1E,$18,$0C,$1E,$04,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$92,$6C,$54,$BA,$54,$6C,$92,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10
L1FC0: .byte $01,$D0,$D0,$12,$12,$01
L1FC6: .byte $E2,$08,$06,$D2,$D2,$D2,$D2,$01,$D2,$D2,$D2
L1FD1: LDX    $82     
       LDA    $E2     
       SEC            
       SBC    L11F6,X 
       STA    $E2     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$04    
       BCC    L1FE6   
       ORA    #$F8    
L1FE6: CLC            
       ADC    $E0     
       STA    $E0     
       CMP    #$01    
       RTS            

L1FEE: .byte $A6,$B0,$BA
L1FF1: .byte $08,$10,$20,$0A,$0A,$85,$F2,$0A,$65,$F2,$60,$F0,$1B,$F0,$1B
