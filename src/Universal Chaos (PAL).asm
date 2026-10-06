; Disassembly of roms/Universal Chaos (PAL).bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Universal Chaos (PAL).bin
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
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $1000

START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L1007: STA    VSYNC,X 
       INX            
       BNE    L1007   
       LDX    #$2B    
       JSR    L125D   
       LDX    #$01    
       STX    CTRLPF  
       INX            
       STX    $AD     
       LDA    #$1F    
       STA    $B5     
       LDX    #$05    
       LDA    #$06    
L1020: STA    $E0,X   
       LDY    #$1E    
       STY    $CC,X   
       DEX            
       BPL    L1020   
       LDX    #$05    
L102B: LDA    L1BFC,X 
       STA    $9A,X   
       LDA    L1C02,X 
       STA    $B6,X   
       DEX            
       BPL    L102B   
L1038: LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       INC    $B0     
       LDA    $B0     
       AND    #$03    
       BNE    L104D   
       INC    $B1     
L104D: LDA    $AD     
       CMP    #$02    
       BEQ    L1056   
       JSR    L143B   
L1056: LDA    INTIM   
       BNE    L1056   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$33    
       STA    TIM64T  
       LDA    $B0     
       LSR            
       BCC    L1074   
       JSR    L18ED   
       BEQ    L1074   
       JSR    L16DD   
       JSR    L1838   
L1074: LDX    #$04    
       LDA    #$78    
       STA    $BF     
L107A: STA    $C1,X   
       DEX            
       BPL    L107A   
       LDA    #$1E    
       STA    $C0     
       LDA    $86     
       BEQ    L10AE   
       LDA    $BC     
       BEQ    L10AE   
L108B: INX            
       SEC            
       SBC    #$1E    
       BCS    L108B   
       EOR    #$FF    
       ADC    #$79    
       CPX    #$05    
       BEQ    L109D   
       STA    $C1,X   
       BNE    L109F   
L109D: STA    $BF     
L109F: STA    WSYNC   
       LDA    $BD     
       STA    HMM0    
       AND    #$0F    
       NOP            
       TAX            
L10A9: DEX            
       BNE    L10A9   
       STA    RESM0   
L10AE: JSR    L167A   
       JSR    L195C   
       JSR    L1A30   
       JSR    L1A90   
       JSR    L1B29   
       JSR    L1266   
L10C0: LDA    INTIM   
       BNE    L10C0   
       STA    WSYNC   
       STA    VBLANK  
       JSR    L12DA   
       LDA    #$FF    
       LDX    #$24    
       STA    WSYNC   
       STA    VBLANK  
       STX    TIM64T  
       LDA    $AD     
       BPL    L114D   
       LDA    $B0     
       LSR            
       BCS    L1121   
       JSR    L1628   
       JSR    L14BD   
       LDX    #$00    
       LDY    #$00    
L10EA: LDA    $8D,X   
       BEQ    L10FC   
       STA.wy $008D,Y 
       LDA    $87,X   
       STA.wy $0087,Y 
       LDA    $93,X   
       STA.wy $0093,Y 
       INY            
L10FC: INX            
       CPX    #$06    
       BNE    L10EA   
       STY    $E6     
       LDA    $AC     
       AND    #$01    
       TAX            
       LDA    $A0,X   
       AND    #$F0    
       ORA    $E6     
       STA    $A0,X   
       CPY    #$06    
       BEQ    L111F   
       LDX    #$00    
L1116: STX    $8D,Y   
       STX    $93,Y   
       INY            
       CPY    #$06    
       BNE    L1116   
L111F: BPL    L114A   
L1121: JSR    L17B2   
       JSR    L17DE   
       JSR    L18CF   
       LDA    $A4     
       STA    $E6     
       LDA    $A3     
       STA    $E7     
       LDA    #$00    
       LDX    #$08    
L1136: LSR    $E6     
       BCC    L113D   
       CLC            
       ADC    $E7     
L113D: ROR            
       ROR    $A3     
       DEX            
       BNE    L1136   
       CLC            
       LDA    $A3     
       ADC    $A5     
       STA    $A3     
L114A: JSR    L15A1   
L114D: LDY    #$00    
       LDA    $B8     
       CMP    #$83    
       BNE    L1160   
       LDA    $B2     
       LSR            
       AND    #$0C    
       LDX    #$0C    
       LDY    #$0C    
       BNE    L1178   
L1160: LDA    $AD     
       BPL    L1178   
       LDA    $B1     
       LDX    $AE     
L1168: LSR            
       DEX            
       BPL    L1168   
       BCS    L1178   
       LDY    #$08    
       AND    #$0F    
       TAX            
       LDA    L11CF,X 
       LDX    #$01    
L1178: STA    AUDF0   
       STX    AUDC0   
       STY    AUDV0   
       LDA    $82     
       CMP    #$04    
       LDA    $B4     
       BCS    L118C   
       LDA    $86     
       BNE    L1192   
       LDA    $B3     
L118C: LSR            
       LSR            
       LSR            
       LSR            
       BNE    L11AB   
L1192: LDA    $AD     
       BPL    L11B4   
       LDY    #$05    
L1198: LDX    $93,Y   
       CPX    #$04    
       BCS    L11A4   
       DEY            
       BPL    L1198   
       INY            
       BEQ    L11B0   
L11A4: LDA    #$0C    
       CPX    #$05    
       BNE    L11AB   
       LSR            
L11AB: TAY            
       LDX    #$02    
       LDA    #$0E    
L11B0: CPY    #$00    
       BNE    L11F4   
L11B4: LDA    $BE     
       AND    #$0E    
       TAY            
       BEQ    L11DF   
       EOR    #$0E    
       TAX            
       LDA    $B0     
       LSR            
       BCS    L11CA   
       LDA    $BE     
       SEC            
       SBC    #$02    
       STA    $BE     
L11CA: TXA            
       LDX    #$0F    
       BNE    L11F4   
L11CF: .byte $14 ;.NOP
       .byte $14 ;.NOP
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $14 ;.NOP
       .byte $14 ;.NOP
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       .byte $12 ;.JAM
       .byte $12 ;.JAM
       .byte $1C ;.NOP
       .byte $1C ;.NOP
       .byte $12 ;.JAM
       .byte $12 ;.JAM
       .byte $1C ;.NOP
       .byte $1C ;.NOP
L11DF: LDA    $81     
       BEQ    L11F4   
       LDA    $B4     
       BNE    L11F4   
       LDA    $B0     
       CMP    #$40    
       BCS    L11F4   
       AND    #$0E    
       LSR            
       LDY    #$06    
       LDX    #$07    
L11F4: STA    AUDF1   
       STX    AUDC1   
       STY    AUDV1   
       LDA    $AD     
       BMI    L1253   
       BNE    L1216   
       LDA    $B0     
       AND    #$7F    
       BNE    L120E   
       LDA    $AC     
       BPL    L120E   
       EOR    #$01    
       STA    $AC     
L120E: LDA    INPT4   
       BPL    L121C   
       LDA    INPT5   
       BPL    L121C   
L1216: LDA    SWCHB   
       LSR            
       BCS    L122B   
L121C: LDX    #$2B    
       LDA    $AC     
       AND    #$FE    
       STA    $AC     
       JSR    L125D   
       STX    $AD     
       BMI    L1253   
L122B: LSR            
       BCS    L1253   
       LDA    $B0     
       AND    #$0F    
       BNE    L1253   
       LDX    #$05    
L1236: LDA    L1BF1,X 
       STA    $9A,X   
       DEX            
       BPL    L1236   
       LDY    #$08    
       INX            
       LDA    $B0     
       AND    #$10    
       BNE    L124B   
       LDX    #$80    
       LDY    #$10    
L124B: STX    $AC     
       STY    $9B     
       LDA    #$02    
       STA    $AD     
L1253: LDA    INTIM   
       BNE    L1253   
       JMP    L1038   
L125B: .byte $74,$32
L125D: LDA    L1C0C,X 
       STA    $80,X   
       DEX            
       BPL    L125D   
       RTS            

L1266: STA    WSYNC   
       STA    CXCLR   
       LDA    $CB     
       STA    $EE     
       LDA    $D9     
       STA    $F0     
       LDA    $D2     
       STA    COLUP0  
       LDA    #$32    
       STA    COLUP1  
       LDA    $D3     
       STA    HMP0    
       AND    #$0F    
       TAY            
       LDA    $E5     
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
       LDA    #$05    
       STA    $F4     
       LDA    $D1     
       STA    $EF     
L1292: DEY            
       BNE    L1292   
       STA    RESP0   
       STA    WSYNC   
       NOP            
       NOP            
       LDA    #$10    
       STA    NUSIZ0  
       LDY    #$12    
L12A1: DEX            
       BNE    L12A1   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $DF     
       STA    $F1     
       LSR            
       LSR            
       STA    REFP1   
       LDA    $D1     
       STA    $EF     
       LSR            
       LSR            
       STA    REFP0   
       LDA    #$1E    
       STA    $E8     
       LDA    #$78    
       STA    $E7     
       LDA    $AC     
       AND    #$01    
       TAX            
       LDA    $A0,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       DEX            
       LDA    L1FE9,X 
       STA    COLUBK  
       LDA    L1FF2,X 
       STA    COLUPF  
       RTS            

L12DA: STA    WSYNC   
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    L1EB7,Y 
       STA    PF0     
       LDA    L1ED5,Y 
       STA    PF1     
       STA    PF2     
       LDA    ($BF),Y 
       STA    ENAM0   
       LDA    ($E7),Y 
       CPY    #$17    
       BCS    L12F8   
       STA    ENABL   
L12F8: LDA    ($F0),Y 
       DEY            
       LDX    $F4     
       BNE    L1306   
       CPY    #$0A    
       BCS    L1306   
       JMP    L1383   
L1306: CPY    #$03    
       STA    GRP1    
       BNE    L12DA   
       STA    HMCLR   
       STA    WSYNC   
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    ($F0),Y 
       STA    GRP1    
       DEX            
       STX    $F4     
       LDA    $CC,X   
       STA    $F2     
       DEY            
       LDA    ($F0),Y 
       STA    $F3     
       STA    WSYNC   
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    ($F0),Y 
       DEY            
       STA    GRP1    
       LDA    ($BF),Y 
       STA    ENAM0   
       LDA    ($F0),Y 
       STA    $F3     
       LDX    $F4     
       LDA    $D4,X   
       STA    $F0     
       LDA    $C1,X   
       STA    $BF     
       LDA    $E0,X   
       STA    HMP1    
       AND    #$0F    
       TAX            
       LDA    ($EE),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    $F3     
       STA    GRP1    
       DEY            
L1353: DEX            
       BNE    L1353   
       STA    RESP1   
       STX    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($EE),Y 
       STA    GRP0    
       STX    GRP1    
       LDX    $F4     
       LDA    $DA,X   
       STA    $F1     
       LSR            
       LSR            
       STA    REFP1   
       LDA    $C6,X   
       STA    $EE     
       LDA    $F2     
       STA    $EF     
       LSR            
       LSR            
       STA    REFP0   
       LDA    $E9,X   
       STA    $E7     
       LDY    #$1D    
       JMP    L12DA   
L1383: STA    WSYNC   
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       INX            
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    $AC     
       AND    #$01    
       TAX            
       LDA    $B2     
       BEQ    L13A8   
       TAX            
L13A8: LDA    L125B,X 
       ORA    #$30    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$07    
       STX    $E7     
       STA    WSYNC   
L13B7: DEX            
       BNE    L13B7   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    HMCLR   
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       STX    REFP0   
       STX    REFP1   
       LDX    #$05    
       LDY    $99     
L13D3: LDA    $9A,X   
       PHA            
       TXA            
       ASL            
       TAX            
       PLA            
       STA    $BF,X   
       STY    $C0,X   
       TXA            
       LSR            
       TAX            
       DEX            
       BPL    L13D3   
       JSR    L140A   
       LDX    #$05    
       LDY    $B5     
L13EB: LDA    $B6,X   
       PHA            
       TXA            
       ASL            
       TAX            
       PLA            
       STA    $BF,X   
       STY    $C0,X   
       TXA            
       LSR            
       TAX            
       DEX            
       BPL    L13EB   
       LDY    #$07    
       STY    $E7     
       JSR    L140A   
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ1  
       RTS            

L140A: LDY    $E7     
       LDA    ($BF),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($C1),Y 
       STA    GRP1    
       LDA    ($C3),Y 
       STA    GRP0    
       LDA    ($C5),Y 
       STA    $E8     
       LDA    ($C7),Y 
       TAX            
       LDA    ($C9),Y 
       TAY            
       LDA    $E8     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $E7     
       BPL    L140A   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

L143B: LDY    #$04    
       LDA    $AC     
       LSR            
       BCC    L1443   
       INY            
L1443: TYA            
       AND    #$06    
       TAX            
       LDA.wy $00A6,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $9B,X   
       LDA.wy $00A6,Y 
       AND    #$F0    
       LSR            
       STA    $9A,X   
       DEY            
       DEY            
       BPL    L1443   
       LDY    #$50    
       LDX    #$00    
L1461: LDA    $9A,X   
       BNE    L146C   
       STY    $9A,X   
       INX            
       CPX    #$05    
       BNE    L1461   
L146C: RTS            

L146D: STY    $E7     
       STA    $E6     
       CLC            
       ADC    $E7     
       LDY    $E7     
       BPL    L1484   
       LDY    $E6     
       BPL    L1493   
       TAY            
       BMI    L1493   
       CLC            
       ADC    #$F1    
       BNE    L1493   
L1484: LDY    $E6     
       BMI    L1493   
       TAY            
       AND    #$F0    
       CMP    #$70    
       TYA            
       BCC    L1493   
       CLC            
       ADC    #$0F    
L1493: TAY            
       JSR    L14A7   
       CMP    #$25    
       BCC    L14A1   
       CMP    #$BE    
       BCS    L14A4   
       TYA            
       RTS            

L14A1: LDA    #$12    
       RTS            

L14A4: LDA    #$8B    
       RTS            

L14A7: STA    $E6     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E7     
       LDA    $E6     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E7     
       RTS            

L14BD: LDA    $81     
       BEQ    L150D   
       STA    $E7     
       LDA    $80     
       JSR    L1A17   
       BNE    L14F2   
       BIT    $B0     
       BVS    L14DB   
L14CE: LDX    #$02    
       LDA    $81     
       CMP    $85     
       BEQ    L14DB   
       BCS    L14F0   
       INX            
       BPL    L14F0   
L14DB: LDX    #$00    
       LDA    $80     
       JSR    L14A7   
       STA    $E8     
       LDA    $84     
       JSR    L14A7   
       CMP    $E8     
       BEQ    L14CE   
       BCS    L14F0   
       INX            
L14F0: STX    $82     
L14F2: LDX    $82     
       CPX    #$04    
       BCS    L150D   
       LDA    L1BCF,X 
       TAY            
       LSR            
       BCC    L150E   
       CLC            
       TYA            
       ADC    $81     
       CMP    #$A1    
       BCS    L150D   
       CMP    #$0A    
       BCC    L150D   
       STA    $81     
L150D: RTS            

L150E: LDA    $80     
       JSR    L146D   
       STA    $80     
       RTS            

L1516: LDY    $82     
       LDA    #$1D    
       CPY    #$01    
       BNE    L1520   
       LDA    #$3D    
L1520: ORA    #$40    
       STA    $E8     
       LDA    $81     
       BEQ    L1572   
       LDX    L1FE1,Y 
       STX    $E6     
       LDY    $80     
       STY    $D3     
       LDY    #$78    
       STY    $D2     
       LDX    #$00    
L1537: SEC            
       SBC    #$1E    
       BCC    L153F   
       INX            
       BPL    L1537   
L153F: EOR    #$FF    
       STA    $E9     
       CLC            
       JSR    L1573   
       DEX            
       BMI    L1552   
       LDA    $CC,X   
       AND    #$7F    
       ORA    #$40    
       STA    $CC,X   
L1552: INX            
       LDA    $E9     
       CMP    #$0A    
       BCC    L1561   
       LDA    $CC,X   
       ORA    #$40    
       STA    $CC,X   
       BNE    L1572   
L1561: INX            
       CPX    #$06    
       BCS    L1572   
       SEC            
       ADC    #$1E    
       JSR    L1573   
       LDA    $CC,X   
       ORA    #$40    
       STA    $CC,X   
L1572: RTS            

L1573: ADC    $E6     
       STA    $EA     
       LDY    #$02    
       LDA    $C6,X   
L157B: CMP    L1EF3,Y 
       BEQ    L159B   
       DEY            
       BPL    L157B   
       STY    $EB     
       LDA    $CC,X   
       ORA    #$40    
       STA    $CC,X   
       LDA    $B0     
       LSR            
       BCS    L159A   
L1590: LDA    $EA     
       STA    $C6,X   
       LDA    $E8     
       AND    $EB     
       STA    $CC,X   
L159A: RTS            

L159B: LDA    #$BF    
       STA    $EB     
       BNE    L1590   
L15A1: LDA    $AC     
       AND    #$01    
       TAX            
       LDA    $A0,X   
       TAX            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CMP    #$07    
       BCC    L15BA   
       LDY    #$07    
       LDA    $B0     
       LSR            
       BCS    L15BA   
       DEY            
L15BA: STY    $EA     
       TXA            
       AND    #$0F    
       TAX            
       LDA    $B0     
       AND    L161D,X 
       BNE    L161D   
       LDA    #$1B    
       STA    $E9     
       LDX    #$05    
L15CD: LDA    $8D,X   
       BEQ    L161A   
       LDA    $93,X   
       CMP    #$04    
       BCC    L15ED   
       LDA    $B0     
       AND    #$07    
       BNE    L161A   
       INC    $93,X   
       LDA    $93,X   
       CMP    #$06    
       BNE    L161A   
       LDA    #$00    
       STA    $8D,X   
       STA    $93,X   
       BEQ    L161A   
L15ED: TAY            
       LDA    L1624,Y 
       STA    $E8     
       CPY    #$02    
       BCS    L1605   
       LDY    $EA     
       LDA    ($E8),Y 
       TAY            
       LDA    $87,X   
       JSR    L146D   
       STA    $87,X   
       BNE    L161A   
L1605: LDY    $EA     
       LDA    ($E8),Y 
       CLC            
       ADC    $8D,X   
       CMP    #$A0    
       BCC    L1612   
       LDA    #$A0    
L1612: CMP    #$0A    
       BCS    L1618   
       LDA    #$0A    
L1618: STA    $8D,X   
L161A: DEX            
       BPL    L15CD   
L161D: RTS            

L161E: .byte $00,$01,$01,$03,$03,$03
L1624: .byte $DB,$D4,$E2,$E9
L1628: LDY    $AF     
L162A: LDA.wy $0093,Y 
       CMP    #$04    
       BCS    L1636   
       LDA.wy $008D,Y 
       BNE    L163B   
L1636: DEY            
       BPL    L162A   
       BMI    L1679   
L163B: STA    $E7     
       LDA.wy $0087,Y 
       JSR    L1A17   
       BNE    L1679   
       LDA    #$00    
       STA    $E9     
       BIT    $B0     
       BVS    L1661   
L164D: LDX    #$02    
       LDA    $E9     
       BNE    L1679   
       STX    $E9     
       LDA.wy $008D,Y 
       CMP    $85     
       BEQ    L1661   
       BCS    L1677   
       INX            
       BPL    L1677   
L1661: LDX    #$01    
       LDA.wy $0087,Y 
       JSR    L14A7   
       STA    $E8     
       LDA    $84     
       JSR    L14A7   
       CMP    $E8     
       BEQ    L164D   
       BCS    L1677   
       DEX            
L1677: STX    $93,Y   
L1679: RTS            

L167A: LDX    #$00    
       LDA    $AD     
       BMI    L1685   
       STX    $BE     
       STX    $BC     
       RTS            

L1685: LDA    $BE     
       LSR            
       BCS    L16AC   
L168A: STX    $BC     
       LDA    $AC     
       AND    #$01    
       TAX            
       LDA    $84     
       STA    $BD     
       LDA    $86     
       AND    #$F0    
       STA    $BE     
       LDY    INPT4,X 
       BMI    L16AB   
       ORA    #$0F    
       STA    $BE     
       LDA    $85     
       BEQ    L16AB   
       ADC    #$04    
       STA    $BC     
L16AB: RTS            

L16AC: LDY    #$E0    
       LDA    $BE     
       BPL    L16B7   
       ASL            
       BMI    L16C7   
       LDY    #$20    
L16B7: LDA    $BD     
       JSR    L146D   
       STA    $BD     
       CMP    #$12    
       BEQ    L168A   
       CMP    #$8B    
       BEQ    L168A   
       RTS            

L16C7: LDY    #$02    
       ASL            
       BMI    L16CE   
       LDY    #$FE    
L16CE: CLC            
       TYA            
       ADC    $BC     
       STA    $BC     
       CMP    #$0D    
       BCC    L168A   
       CMP    #$A5    
       BCS    L168A   
       RTS            

L16DD: LDA    $86     
       BEQ    L1720   
       LDA    $81     
       BEQ    L170D   
       LDA    $82     
       CMP    #$04    
       BCS    L170D   
       LDA    $81     
       SBC    $85     
       CMP    #$02    
       BCC    L16F7   
       CMP    #$FA    
       BCC    L170D   
L16F7: LDA    $80     
       JSR    L14A7   
       STA    $E8     
       LDA    $84     
       JSR    L14A7   
       SBC    $E8     
       CMP    #$02    
       BCC    L1718   
       CMP    #$FA    
       BCS    L1718   
L170D: LDA    $85     
       STA    $E9     
       LDA    $84     
       JSR    L189F   
       BMI    L1734   
L1718: LDA    #$02    
       STA    $AD     
       LDA    #$00    
       STA    $86     
L1720: SEC            
       LDA    $B3     
       SBC    #$04    
       STA    $B3     
       BNE    L1737   
       LDX    #$06    
       JSR    L125D   
       LDA    $AD     
       BEQ    L1734   
       STX    $AD     
L1734: RTS            

L1735: .byte $FF,$F0
L1737: LDA    $B3     
       CMP    #$80    
       BNE    L17AD   
       LDA    $AC     
       AND    #$01    
       TAY            
       LDA    L1735,Y 
       CLC            
       ADC    $A2     
       STA    $A2     
L174A: LDA    $A2     
       BEQ    L1756   
       LDX    $AC     
       BMI    L175A   
       AND    #$0F    
       BNE    L1769   
L1756: STA    $AD     
       BEQ    L1769   
L175A: TXA            
       EOR    #$01    
       STA    $AC     
       AND    #$01    
       TAX            
       LDA    $A2     
       AND    L17AE,X 
       BEQ    L174A   
L1769: LDA    #$00    
       LDX    #$05    
L176D: STA    $8D,X   
       DEX            
       BPL    L176D   
       LDA    $AC     
       AND    #$01    
       TAX            
       STX    $E8     
       LDA    $A0,X   
       AND    #$0F    
       TAX            
       DEX            
       LDY    #$12    
L1781: LDA    L1C19,X 
       STA    $8D,X   
       STY    $87,X   
       LDA    #$01    
       STA    $93,X   
       DEX            
       BPL    L1781   
       LDA    $AD     
       BEQ    L17AD   
       LDX    #$05    
L1795: LDA    L1BF2,X 
       STA    $9A,X   
       LDA    L1BF6,X 
       STA    $B6,X   
       DEX            
       BPL    L1795   
       LDX    $E8     
       LDA    L17B0,X 
       STA    $9E     
       LDA    #$02    
       STA    $AD     
L17AD: RTS            

L17AE: .byte $0F,$F0
L17B0: .byte $08,$10
L17B2: LDX    #$05    
       LDA    #$50    
L17B6: STA    $B6,X   
       DEX            
       BPL    L17B6   
       LDA    $AC     
       LSR            
       LDA    $A2     
       BCC    L17C6   
       LSR            
       LSR            
       LSR            
       LSR            
L17C6: AND    #$0F    
       TAY            
       DEY            
       DEY            
       BMI    L17DD   
       CPY    #$06    
       BCC    L17D3   
       LDY    #$05    
L17D3: LDA    #$A3    
L17D5: LDX    L1FDB,Y 
       STA    $B6,X   
       DEY            
       BPL    L17D5   
L17DD: RTS            

L17DE: LDA    $BE     
       LSR            
       BCC    L182D   
       LDA    $BC     
       SBC    #$04    
       STA    $E9     
       LDA    $BD     
       JSR    L189F   
       BMI    L182D   
       LDA    #$00    
       STA    $BE     
       LDA    #$04    
       STA    $93,X   
       LDA    $AC     
       AND    #$01    
       TAX            
       LDA    $A0,X   
       AND    #$F0    
       SED            
       CLC            
       ADC    $AA,X   
       STA    $AA,X   
       BCC    L182C   
       LDA    #$00    
L180B: SED            
       ADC    $A8,X   
       STA    $A8,X   
       BCC    L182C   
       LDA    #$00    
       ADC    $A6,X   
       STA    $A6,X   
       LDY    #$07    
L181A: CMP    L1830,Y 
       BEQ    L1824   
       DEY            
       BPL    L181A   
       BMI    L182C   
L1824: LDA    L182E,X 
       CLC            
       ADC    $A2     
       STA    $A2     
L182C: CLD            
L182D: RTS            

L182E: .byte $01,$10
L1830: .byte $01,$02,$04,$06,$09,$12,$15,$18
L1838: LDA    $82     
       CMP    #$04    
       BCS    L1884   
       LDA    $81     
       BEQ    L1896   
       SBC    $BC     
       CMP    #$02    
       BCC    L184C   
       CMP    #$FA    
       BCC    L1896   
L184C: LDA    $BD     
       JSR    L14A7   
       STA    $E8     
       LDA    $80     
       JSR    L14A7   
       SBC    $E8     
       CMP    #$02    
       BCC    L1862   
       CMP    #$FA    
       BCC    L1896   
L1862: LDA    #$02    
       STA    $AD     
       LDA    #$00    
       STA    $BE     
       STA    $BC     
       LDA    $B0     
       LSR            
       LSR            
       AND    #$03    
       TAY            
       LDA    L1897,Y 
       STA    $82     
       LDA    $AC     
       AND    #$01    
       TAX            
       CLC            
       LDA    L189B,Y 
       JSR    L180B   
L1884: SEC            
       LDA    $B4     
       SBC    #$04    
       STA    $B4     
       BNE    L1896   
       LDX    #$00    
       STX    $81     
       STX    $82     
       DEX            
       STX    $AD     
L1896: RTS            

L1897: .byte $04,$05,$06,$05
L189B: .byte $01,$03,$05,$03
L189F: JSR    L14A7   
       STA    $E8     
       LDX    #$05    
L18A6: LDA    $93,X   
       CMP    #$04    
       BCS    L18C9   
       LDA    $8D,X   
       BEQ    L18C9   
       SBC    $E9     
       CMP    #$02    
       BCC    L18BA   
       CMP    #$FA    
       BCC    L18C9   
L18BA: LDA    $87,X   
       JSR    L14A7   
       SBC    $E8     
       CMP    #$02    
       BCC    L18CD   
       CMP    #$FA    
       BCS    L18CD   
L18C9: DEX            
       BPL    L18A6   
       RTS            

L18CD: TXA            
       RTS            

L18CF: LDA    $81     
       BEQ    L18E8   
       STA    $E9     
       LDA    $80     
       JSR    L189F   
       BMI    L18E8   
       LDA    $93,X   
       CMP    #$04    
       BCS    L18E8   
       TAY            
       LDA    L18E9,Y 
       STA    $93,X   
L18E8: RTS            

L18E9: .byte $01,$00,$03,$02
L18ED: LDA    $AC     
       STA    $E9     
       AND    #$01    
       TAY            
       STY    $E7     
       LDA.wy $00A0,Y 
       AND    #$0F    
       BNE    L195B   
       LDA    #$02    
       STA    $AD     
       LDX    #$04    
L1903: LDA    $A6,X   
       STA    $E6,X   
       DEX            
       DEX            
       BPL    L1903   
       LDX    #$00    
       STX    $AC     
       STX    $AA     
       LDA    #$AA    
       STA    $A6     
       LDA.wy $00A0,Y 
       STA    $A8     
       JSR    L143B   
       LDX    #$04    
L191F: LDA    $E6,X   
       STA    $A6,X   
       DEX            
       DEX            
       BPL    L191F   
       LDX    #$05    
L1929: LDA    L1C06,X 
       STA    $B6,X   
       DEX            
       BPL    L1929   
       LDA    $E9     
       STA    $AC     
       SEC            
       LDA    $B2     
       SBC    #$08    
       STA    $B2     
       BNE    L195B   
       LDX    $E7     
       LDA    $A0,X   
       AND    #$F0    
       CLC            
       JSR    L180B   
       LDA    $A0,X   
       CMP    #$90    
       BCS    L1953   
       CLC            
       ADC    #$10    
       STA    $A0,X   
L1953: LDX    #$1A    
       JSR    L125D   
       STX    $AD     
       INX            
L195B: RTS            

L195C: LDA    #$1E    
       STA    $E8     
       LDA    $AD     
       BPL    L19BF   
       LDA    $AC     
       LSR            
       LDA    SWCHA   
       BCC    L1970   
       ASL            
       ASL            
       ASL            
       ASL            
L1970: AND    #$F0    
       TAY            
       CMP    #$F0    
       BEQ    L19BF   
       TAX            
       LDA    $B0     
       ORA    #$01    
       STA    $A5     
       AND    #$FD    
       STA    $A4     
       TXA            
       LDX    #$FF    
       EOR    $86     
       BEQ    L1993   
       LDX    #$01    
       CMP    #$C0    
       BEQ    L1993   
       CMP    #$30    
       BNE    L19B2   
L1993: STX    $E6     
       LDX    $AE     
       LDA    $B0     
       AND    L1EF7,X 
       BNE    L19BF   
       TXA            
       CLC            
       ADC    $E6     
       BPL    L19A6   
       LDA    #$00    
L19A6: STA    $AE     
       CMP    #$03    
       BNE    L19BF   
       STY    $86     
       DEC    $AE     
       BNE    L19BF   
L19B2: LDA    $85     
       STA    $E7     
       LDA    $84     
       JSR    L1A17   
       BNE    L19BF   
       STY    $86     
L19BF: LDA    $86     
       BNE    L19D2   
       LDA    #$1C    
       STA    $E8     
       LDX    #$B0    
       BIT    $B3     
       BVS    L19CF   
       LDX    #$D8    
L19CF: STX    $C6     
       RTS            

L19D2: LDX    #$04    
L19D4: DEX            
       ASL            
       BCS    L19D4   
       LDA    L1EF3,X 
       STA    $C6     
       CPX    #$02    
       BNE    L19E5   
       LDA    #$3E    
       STA    $E8     
L19E5: LDA    $B0     
       AND    $AE     
       BNE    L1A0C   
       LDA    $AD     
       BPL    L1A0C   
       LDY    L1BD2,X 
       TYA            
       LSR            
       BCC    L1A05   
       CLC            
       TYA            
       ADC    $85     
       CMP    #$A1    
       BCS    L1A0C   
       CMP    #$0A    
       BCC    L1A0C   
       STA    $85     
       RTS            

L1A05: LDA    $84     
       JSR    L146D   
       STA    $84     
L1A0C: RTS            

L1A0D: .byte $12,$03,$F4,$E5,$D6,$C7,$B8,$A9,$9A,$8B
L1A17: LDX    #$09    
L1A19: CMP    L1A0D,X 
       BEQ    L1A23   
       DEX            
       BPL    L1A19   
       BMI    L1A2F   
L1A23: LDX    #$05    
       LDA    $E7     
L1A27: CMP    L1C19,X 
       BEQ    L1A2F   
       DEX            
       BPL    L1A27   
L1A2F: RTS            

L1A30: LDA    $C6     
       STA    $E6     
       LDY    $E8     
       LDX    #$05    
L1A38: STY    $CC,X   
       LDA    $E6     
       STA    $C6,X   
       DEX            
       BPL    L1A38   
       LDA    $81     
       BEQ    L1A4D   
       LDA    $B0     
       LSR            
       BCS    L1A4D   
       JMP    L1516   
L1A4D: INX            
       LDA    #$D6    
       STA    $D2     
       LDA    $84     
       STA    $D3     
       LDA    $85     
       BEQ    L1A86   
L1A5A: SEC            
       SBC    #$1E    
       BCC    L1A62   
       INX            
       BPL    L1A5A   
L1A62: EOR    #$FF    
       TAY            
       SEC            
       JSR    L1A87   
       TYA            
       CMP    #$1A    
       BCC    L1A72   
       LDA    $E8     
       BNE    L1A81   
L1A72: CMP    #$09    
       BCS    L1A86   
       SEC            
       ADC    #$1E    
       INX            
       CPX    #$06    
       BEQ    L1A86   
       JSR    L1A87   
L1A81: DEX            
       ORA    #$80    
       STA    $CC,X   
L1A86: RTS            

L1A87: ADC    $E6     
       STA    $C6,X   
       LDA    $E8     
       STA    $CC,X   
       RTS            

L1A90: LDA    $B0     
       AND    #$01    
       BNE    L1A9E   
       DEC    $AF     
       BPL    L1A9E   
       LDX    #$05    
       STX    $AF     
L1A9E: ORA    #$04    
       TAY            
L1AA1: LDX    #$FF    
       STX    $EC     
       LDA    #$38    
       STA.wy $00D4,Y 
L1AAA: INX            
       LDA    #$00    
       STA    $E6,X   
       LDA    $8D,X   
       CMP    L1B1D,Y 
       BCC    L1AC3   
       CMP    L1B23,Y 
       BCS    L1AC3   
       TXA            
       INC    $EC     
       LDX    $EC     
       STA    $E6,X   
       TAX            
L1AC3: CPX    #$05    
       BNE    L1AAA   
       LDX    $AF     
       LDA    $EC     
       BMI    L1B12   
       BEQ    L1AE7   
       CMP    #$01    
       BNE    L1AD8   
       TXA            
       AND    #$01    
       BPL    L1AE7   
L1AD8: CMP    $AF     
       BCS    L1AE8   
       SEC            
L1ADD: SBC    $AF     
       EOR    #$FF    
       CMP    $EC     
       BEQ    L1AE7   
       BCS    L1ADD   
L1AE7: TAX            
L1AE8: LDA    $E6,X   
       TAX            
       LDA    $87,X   
       STA.wy $00E0,Y 
       LDA    $8D,X   
       PHA            
       LDA    $93,X   
       TAX            
       LDA    L1B17,X 
       STA    $EC     
       LDA    #$1C    
       CPX    #$00    
       BNE    L1B03   
       ORA    #$20    
L1B03: STA.wy $00DA,Y 
       PLA            
       SEC            
       SBC    L1EFA,Y 
       EOR    #$FF    
       ADC    $EC     
       STA.wy $00D4,Y 
L1B12: DEY            
       DEY            
       BPL    L1AA1   
       RTS            

L1B17: .byte $38,$38,$60,$88,$B0,$D8
L1B1D: .byte $01,$14,$33,$52,$71,$90
L1B23: .byte $1F,$3E,$5D,$7C,$9B,$AA
L1B29: LDX    #$04    
       LDY    #$78    
L1B2D: STY    $E9,X   
       DEX            
       BPL    L1B2D   
       LDA    $83     
       TAX            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $EE     
       TXA            
       AND    #$0F    
       STA    $EF     
       LDA    $AD     
       BPL    L1B92   
       LDA    $81     
       BNE    L1B92   
       LDA    $B0     
       AND    #$0F    
       BNE    L1B77   
       TXA            
       BNE    L1B61   
       LDA    $A3     
       CMP    #$28    
       BCS    L1B92   
       AND    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       BEQ    L1B92   
       STA    $83     
L1B61: LDX    $EF     
       INX            
       CPX    #$07    
       BEQ    L1B93   
       STX    $EF     
       LDA    $83     
       AND    #$F0    
       ORA    $EF     
       STA    $83     
       LDA    L1BAC,X 
       STA    CTRLPF  
L1B77: LDA    #$92    
       LDX    $EE     
       BEQ    L1B92   
       LDY    L1BB2,X 
       STA.wy $00E9,Y 
       STA    WSYNC   
       LDA    L1BB9,X 
       STA    HMBL    
       AND    #$0F    
       TAX            
L1B8D: DEX            
       BNE    L1B8D   
       STA    RESBL   
L1B92: RTS            

L1B93: LDX    $EE     
       LDA    L1BC0,X 
       STA    $80     
       LDA    L1BC7,X 
       STA    $81     
       LDX    #$02    
       BIT    $B0     
       BVS    L1BA6   
       INX            
L1BA6: STX    $82     
       LDA    #$00    
       STA    $83     
L1BAC: RTS            

L1BAD: .byte $01,$11,$21,$01,$11
L1BB2: .byte $21,$02,$04,$02,$03,$04,$02
L1BB9: .byte $04,$FA,$FA,$27,$27,$27,$54
L1BC0: .byte $54,$9A,$9A,$C7,$D6,$C7,$03
L1BC7: .byte $03,$34,$70,$34,$52,$70,$34,$70
L1BCF: .byte $F0,$10,$FF
L1BD2: .byte $01,$FF,$10,$F0,$F0,$F0,$E0,$E0,$E0,$D0,$10,$10,$10,$20,$20,$20
       .byte $30,$FF,$FF,$FF,$FE,$FE,$FE,$FD,$01,$01,$01,$02,$02,$02,$03
L1BF1: .byte $50
L1BF2: .byte $50,$56,$5E,$65
L1BF6: .byte $50,$50,$73,$6C,$7B,$50
L1BFC: .byte $AB,$B3,$BB,$C3,$CB,$D3
L1C02: .byte $50,$50,$50,$50
L1C06: .byte $50,$50,$83,$8B,$93,$9B
L1C0C: .byte $00,$00,$00,$00,$8B,$0A,$E0,$12,$12,$12,$12,$12,$12
L1C19: .byte $A0,$82,$64,$46,$28,$0A,$01,$01,$01,$01,$01,$01,$1F,$00,$00,$00
       .byte $00,$00,$00,$16,$16,$44,$7F,$1D,$A1,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$58,$5E
       .byte $FF,$FD,$FD,$FF,$5E,$58,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$10,$38,$28,$6C,$7C,$FE,$BA,$BA,$7C,$38,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$7C,$BA
       .byte $BA,$FE,$7C,$6C,$28,$38,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$40,$09,$24,$00,$52,$18,$29,$40,$12,$04,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$82,$10,$41
       .byte $00,$04,$10,$42,$08,$80,$21,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$60,$E0,$F2,$76,$3D,$3D,$76,$F2,$E0,$60,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$28,$28
       .byte $10,$38,$7C,$FE,$EE,$EE,$44,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$44,$EE,$EE,$FE,$7C,$38,$10,$28,$28,$10,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$0A,$0A
       .byte $14,$28,$28,$50,$40,$40,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$04,$0A,$0A,$14,$28,$E8,$50,$C0,$40,$C0,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$0A,$0A
       .byte $14,$28,$E8,$50,$C0,$80,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$EE,$EE,$44,$FF,$FD,$FF,$44,$EE,$EE,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$AA,$EE
       .byte $FE,$BA,$38,$BA,$FE,$FE,$BA,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$BA,$FE,$FE,$BA,$38,$BA,$FE,$EE,$AA,$38,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$02,$02
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L1EB7: .byte $60,$60,$60,$60,$60,$60,$60,$60,$60,$E0,$E0,$E0,$E0,$E0,$E0,$E0
       .byte $E0,$E0,$E0,$E0,$E0,$60,$60,$60,$60,$60,$60,$60,$60,$60
L1ED5: .byte $66,$66,$66,$66,$66,$66,$66,$66,$66,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$66,$66,$66,$66,$66,$66,$66,$66,$66
L1EF3: .byte $50,$28,$00,$00
L1EF7: .byte $1F,$0F,$07
L1EFA: .byte $1E,$3C,$5A,$78,$96,$B4,$3C,$7E,$66,$66,$66,$66,$7E,$3C,$3C,$3C
       .byte $18,$18,$18,$18,$38,$18,$7E,$7E,$60,$7C,$3E,$06,$7E,$3C,$3C,$7E
       .byte $06,$0C,$0C,$06,$7E,$3C,$0C,$0C,$7E,$7E,$6C,$6C,$3C,$1C,$3C,$7E
       .byte $06,$7E,$7C,$60,$7E,$7E,$3C,$7E,$66,$7E,$7C,$60,$7E,$3C,$60,$30
       .byte $18,$0C,$06,$06,$7E,$7E,$3C,$7E,$66,$3C,$3C,$66,$7E,$3C,$3C,$7E
       .byte $06,$3E,$7E,$66,$7E,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$22,$22
       .byte $3A,$2A,$2A,$3A,$04,$04,$A4,$EE,$AA,$EA,$40,$00,$00,$E8,$88,$E8
       .byte $AA,$44,$00,$00,$AC,$EE,$AA,$EA,$4C,$00,$00,$AE,$A8,$CE,$AA,$A4
       .byte $E0,$40,$44,$40,$E4,$A4,$A2,$0A,$04,$F9,$F9,$99,$F1,$F1,$99,$F9
       .byte $F9,$E4,$E4,$24,$25,$25,$27,$E6,$E6,$4F,$CF,$C8,$C8,$C8,$48,$48
       .byte $48,$9F,$9F,$81,$9F,$9F,$90,$9F,$9F,$5A,$7E,$5A,$18,$5A,$7E,$5A
       .byte $18,$FC,$84,$B4,$C4,$C4,$B4,$84,$FD,$9D,$9D,$91,$99,$99,$91,$DD
       .byte $DD,$DD,$DD,$11,$19,$19,$11,$1D,$1D,$D5,$D5,$5D,$5D,$15,$15,$DD
       .byte $DD,$17,$17,$54,$56,$F6,$F4,$B7,$17,$70,$70,$10,$70,$70,$40,$70
       .byte $70
L1FDB: .byte $00,$01,$02,$03,$04,$05
L1FE1: .byte $00,$00,$28,$50,$78,$A0,$C8,$A0
L1FE9: .byte $28,$C4,$64,$94,$82,$64,$82,$E8,$28
L1FF2: .byte $80,$00,$80,$00,$60,$00,$E0,$00,$60,$00,$00,$10,$00,$00
