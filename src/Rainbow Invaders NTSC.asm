; Disassembly of roms/Rainbow Invaders NTSC.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Rainbow Invaders NTSC.bin
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
CXP0FB  =  $32
CXP1FB  =  $33
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
L1146   =   $1146
L1148   =   $1148
L114A   =   $114A
L1AA5   =   $1AA5

       ORG $1000
L1000: STA    $CE     
       BNE    L1008   
       LDA    #$FF    
       BNE    L100A   
L1008: LDA    #$00    
L100A: LDX    $B6     
       CPX    #$09    
       BNE    L1012   
       LDA    $CE     
L1012: STA    COLUPF  
       STA    CXCLR   
       LDA    $8B     
       AND    #$7F    
       STA    $F5     
       STA    WSYNC   
       LDA    $B0     
       AND    #$03    
       TAX            
       LDA    $8C,X   
       STA    $F7     
       LDA    $86,X   
       STA    $F8     
       CPX    #$01    
       BNE    L1039   
       LDA    $B7     
       BEQ    L1039   
       LDA    $B0     
       AND    #$10    
       STA    CTRLPF  
L1039: STA    WSYNC   
       LDA    $A5     
       AND    #$01    
       EOR    #$FF    
       CLC            
       ADC    #$C1    
       STA    $CC     
       LDA    #$12    
       STA    $CD     
       LDX    #$0A    
       LDA    #$1D    
L104E: STA    $C1,X   
       DEX            
       DEX            
       BPL    L104E   
       LDX    #$00    
       STX    VDELP0  
       STX    NUSIZ0  
       STA    HMCLR   
       LDA    $8A     
       JSR    L1F00   
       STA    WSYNC   
       STA    HMP0    
       LDA    $F8     
       LDX    #$04    
       JSR    L1F00   
       STA    WSYNC   
       STA    HMBL    
       LDA    #$06    
       STA    $CF     
       LDX    #$0A    
       LDY    #$05    
L1078: LDA.wy $00D0,Y 
       STA    $C0,X   
       DEX            
       DEX            
       DEY            
       BPL    L1078   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$06    
       STA    NUSIZ1  
       LDA    #$1D    
       STA    $D1     
       LDA    $B0     
       AND    #$0C    
       PHA            
       LSR            
       LSR            
       STA    $CE     
       PLA            
       CLC            
       ADC    $CE     
       CLC            
       ADC    #$B7    
       LDX    $A6     
       BNE    L10A7   
       LDA    #$00    
       JMP    L10AE   
L10A7: CPX    #$01    
       BEQ    L10AE   
       CLC            
       ADC    #$14    
L10AE: STA    $D0     
       LDY    #$04    
L10B2: STA    WSYNC   
       LDA    ($D0),Y 
       STA    GRP0    
       LDA    L1FEB,Y 
       STA    COLUP0  
       TYA            
       AND    #$01    
       BNE    L10C9   
       STY    $CE     
       JSR    L1528   
       LDY    $CE     
L10C9: DEY            
       BPL    L10B2   
       INY            
       STY    GRP0    
       STA    WSYNC   
       STA    HMCLR   
       LDA    $A2     
       BEQ    L1124   
       LDX    #$06    
       STX    NUSIZ0  
       INX            
       STX    VDELP0  
       LDX    #$00    
       LDA    $85     
       JSR    L1F00   
       STA    WSYNC   
       STA    HMP0    
       JSR    L1528   
       INX            
       LDA    $85     
       CLC            
       ADC    #$10    
       CMP    #$7F    
       BCC    L10F8   
       LDA    #$00    
L10F8: JSR    L1F00   
       STA    WSYNC   
       STA    HMP1    
       JSR    L1528   
       LDA    $AE     
       STA    WSYNC   
       STA    HMOVE   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$03    
       BMI    L1131   
       CMP    #$06    
       BMI    L112C   
       CMP    #$08    
       BMI    L1127   
       CMP    #$09    
       BEQ    L1140   
       CMP    #$0D    
       BMI    L113B   
       BPL    L1136   
L1124: JMP    L1CE6   
L1127: STA    WSYNC   
       JMP    L114A   
L112C: STA    WSYNC   
       JMP    L1149   
L1131: STA    WSYNC   
       JMP    L1148   
L1136: STA    WSYNC   
       JMP    L1147   
L113B: STA    WSYNC   
       JMP    L1146   
L1140: STA    WSYNC   
       JMP    L1145   
L1145: LDA    #$A9    
L1147: LDA    #$A9    
L1149: LDA    $EAA5   
       NOP            
       NOP            
       NOP            
       LDA    $AE     
       AND    #$0F    
       TAY            
       BEQ    L1177   
       DEY            
       BEQ    L1177   
       DEY            
       BEQ    L1177   
       DEY            
       BEQ    L1177   
       DEY            
       BEQ    L1177   
       DEY            
       BEQ    L1177   
       DEY            
       BEQ    L1177   
       DEY            
       BEQ    L1177   
       DEY            
       BEQ    L1177   
       DEY            
       BEQ    L1177   
       DEY            
       BEQ    L1177   
       DEY            
       BEQ    L1177   
L1177: DEC    $F5     
       BMI    L118C   
       LDY    #$0E    
       JSR    L153E   
       NOP            
       JSR    L1528   
       LDY    #$02    
       JSR    L153E   
       JMP    L1177   
L118C: JSR    L1541   
       NOP            
       LDY    $CE     
       JMP    L1300   
L1195: .byte $00,$18,$18,$3C,$3C,$18
L119B: .byte $03,$00,$02,$50,$02,$00,$01,$50,$01,$00,$00,$50
L11A7: .byte $7E,$6E,$5E,$4E,$3E,$2E,$00
L11AE: .byte $00,$00,$01,$03
L11B2: .byte $FF,$00
L11B4: .byte $0A,$14,$1E,$28
L11B8: .byte $0A,$7E
L11BA: .byte $01,$FF
L11BC: .byte $00,$0A,$1A,$2A,$3A,$4A,$5A,$6A,$7A,$8A,$9A,$AA,$BA,$CA,$DA,$EA
       .byte $FA
L11CD: .byte $00,$22,$FF,$FF,$22,$FF,$FF,$18,$0A,$22,$3C,$0A,$FF,$FF,$18,$3C
       .byte $22
L11DE: .byte $00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$00,$00,$00,$00,$02,$00
       .byte $00
L11EF: LDA    $AB     
       LSR            
       LSR            
       TAY            
       LDA    $B0     
       AND    L1EEA,Y 
       BNE    L1203   
       LDA    $81     
       AND    #$0F    
       TAY            
       INY            
       STY    $B7     
L1203: RTS            

L1204: LDA    SWCHB   
       TAX            
       AND    #$01    
       BNE    L120F   
       JMP    L1BC5   
L120F: LDY    #$00    
       TXA            
       AND    #$02    
       BNE    L1234   
       LDA    $B1     
       BEQ    L121D   
       DEC    $B1     
       RTS            

L121D: STY    $A8     
       LDA    $80     
       BNE    L1227   
       LDA    $82     
       BNE    L1230   
L1227: CLC            
       ADC    #$01    
       CMP    #$06    
       BNE    L1230   
       LDA    #$01    
L1230: STA    $80     
       LDY    #$3C    
L1234: STY    $B1     
       RTS            

L1237: LDA    $80     
       BEQ    L1253   
       LDY    #$00    
L123D: LDA    #$00    
       STA.wy $00BE,Y 
       LDA    #$1D    
       STA.wy $00BF,Y 
       INY            
       INY            
       CPY    #$0C    
       BNE    L123D   
       LDA    $80     
       JSR    L126F   
       RTS            

L1253: LDX    #$03    
       LDY    #$0C    
L1257: LDA    $B1,X   
       STA    $CE     
       AND    #$0F    
       JSR    L126F   
       LDA    $CE     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    L126F   
       DEX            
       BNE    L1257   
       STX    $CA     
       RTS            

L126F: ASL            
       STA    $CF     
       ASL            
       CLC            
       ADC    $CF     
       STA.wy $00BE,Y 
       LDA    #$1E    
       STA.wy $00BF,Y 
       DEY            
       DEY            
       RTS            

L1281: SED            
       CLC            
L1283: ADC    $B3     
       STA    $B3     
       LDA    $B2     
       ADC    #$00    
       CMP    $B2     
       BEQ    L1297   
       PHA            
       AND    #$01    
       BNE    L1296   
       INC    $B4     
L1296: PLA            
L1297: STA    $B2     
       CLD            
       RTS            

L129B: LDA    $81     
       STA    $B8     
       JMP    L18A0   
L12A2: .byte $FF,$01
L12A4: .byte $32,$3C
L12A6: .byte $01,$02,$04,$08,$10,$20
L12AC: .byte $01,$03,$07,$0F,$1F,$3F
L12B2: .byte $00,$02,$04,$06,$08,$06,$04,$02,$00,$00,$00,$00,$00,$00,$F4,$F4
       .byte $F6,$F6,$92,$94,$92,$94,$94,$96,$34,$34,$44,$44,$44,$44,$46,$46
       .byte $48,$48,$E8,$E8,$E8,$98,$96,$96,$98,$98,$9A,$9A,$64,$66,$66,$68
       .byte $C4,$C4,$C6,$C6,$C8,$C8,$B4,$B4,$FF,$FF,$B4,$B4,$B6,$B6,$B8,$B8
       .byte $42,$42,$44,$44,$DC,$DC,$DA,$DA,$DC,$DC,$00,$00,$00,$00
L1300: LDY    #$09    
       LDA    ($CC),Y 
       STA    COLUP0  
       STA    COLUP1  
L1308: LDA    ($CA),Y 
       TAX            
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    ($C4),Y 
       STA    GRP0    
       LDA    ($C6),Y 
       STA    GRP1    
       LDA    ($C8),Y 
       STA    GRP0    
       TXA            
       STA    GRP1    
       STA    GRP0    
       LDA    L11B2   
       LDX    $F7     
       DEX            
       BMI    L1332   
       CPX    #$02    
       BPL    L1334   
       BMI    L1336   
L1332: NOP            
       NOP            
L1334: LDA    #$00    
L1336: STA    ENABL   
       STX    $F7     
       DEY            
       NOP            
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    ($C4),Y 
       STA    GRP0    
       LDA    ($C6),Y 
       STA    GRP1    
       LDA    ($C8),Y 
       STA    GRP0    
       LDA    ($CA),Y 
       STA    GRP1    
       STA    GRP0    
       DEY            
       LDA    ($CC),Y 
       STA    COLUP0  
       STA    COLUP1  
       CPY    #$00    
       BPL    L1308   
       INY            
       NOP            
       STY    GRP0    
       STY    GRP1    
       STY    COLUP0  
       STY    COLUP1  
       STY    COLUP1  
       LDX    #$02    
L136F: DEX            
       BNE    L136F   
       NOP            
       NOP            
       STX    GRP0    
       STX    GRP1    
       LDA    $CC     
       CLC            
       ADC    #$0A    
       STA    $CC     
       JSR    L1528   
       LDA    $CF     
       TAX            
       CLC            
       ADC    #$06    
       STA    $CF     
       LDA    #$00    
       STA    $F5     
       DEC    $F4     
       BEQ    L1400   
       BMI    L1400   
       LDA    $D0,X   
       STA    $C0     
       LDA    $D1,X   
       STA    $C2     
       LDA    $D2,X   
       STA    $C4     
       LDA    $D3,X   
       STA    $C6     
       LDA    $D4,X   
       STA    $C8     
       LDA    $D5,X   
       STA    $CA     
       LDY    #$07    
       JSR    L153E   
       NOP            
       JSR    L1528   
       LDY    #$01    
       JSR    L153E   
       STA    HMCLR   
       STA    HMCLR   
       JMP    L1177   
L13C1: LDA    $A8     
       BEQ    L13E6   
       LDA    $83     
       CMP    #$02    
       BCS    L13D9   
       JSR    L1957   
       LDA    $A0     
       CMP    #$01    
       BEQ    L13E3   
       LDA    $81     
       STA    $B8     
       RTS            

L13D9: LDA    $A2     
       BNE    L13E6   
       LDA    $A1     
       BNE    L13E6   
       INC    $AB     
L13E3: JMP    L1BE0   
L13E6: RTS            

L13E7: LDA    $81     
       BNE    L13ED   
       LDA    #$FF    
L13ED: ASL            
       ASL            
       ASL            
       EOR    $81     
       ASL            
       ROL    $81     
       LDA    $81     
       RTS            

L13F8: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1400: LDX    #$00    
L1402: LDY    #$10    
       JSR    L153E   
       JSR    L1528   
       JSR    L1541   
       NOP            
       LDA    $84     
       DEC    $F6     
       BPL    L1402   
L1414: JSR    L1F00   
       STA    WSYNC   
       STX    NUSIZ0  
       STX    HMCLR   
       STX    VDELP0  
       STA    HMP0    
       DEC    $F7     
       JSR    L1528   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B0     
       AND    #$03    
       BEQ    L1432   
       STA    CXCLR   
L1432: LDX    #$00    
       LDA    $A9     
       BEQ    L1441   
       CMP    #$1E    
       BCC    L1441   
       LDA    $B0     
       JMP    L1449   
L1441: LDA    $A0     
       CMP    #$01    
       BEQ    L144E   
       LDA    $AA     
L1449: AND    #$01    
       BNE    L144E   
       DEX            
L144E: STX    $CF     
       LDX    #$0C    
       JMP    L145A   
L1455: .byte $A4,$81
L1457: JSR    L1528   
L145A: STA    WSYNC   
       LDA    $A0     
       BNE    L146B   
       LDA    L1FDF,X 
       STA    COLUP0  
       LDA    L1DAA,X 
       JMP    L1474   
L146B: DEY            
       LDA    L1000,Y 
       STA    COLUP0  
       AND    L1DAA,X 
L1474: AND    $CF     
       STA    GRP0    
       DEX            
       BMI    L1482   
       TXA            
       AND    #$01    
       BNE    L1457   
       BEQ    L145A   
L1482: STA    WSYNC   
       LDA    CXP0FB  
       STA    $A4     
       JSR    L1528   
       LDX    #$05    
       STA    RESP1   
L148F: STA    WSYNC   
       LDY    $AF     
       INC    $AF     
       LDA    L1000,Y 
       STA    COLUP0  
       AND    L1195,X 
       AND    $CF     
       STA    GRP0    
       TXA            
       AND    #$01    
       BNE    L14A9   
       JSR    L1528   
L14A9: DEX            
       BNE    L148F   
       STA    WSYNC   
       STX    GRP0    
       STX    ENABL   
       STX    COLUBK  
       STX    $CE     
       STA    RESP0   
       LDA    $B4     
       AND    #$0F    
       BEQ    L14CB   
       CMP    #$0F    
       BEQ    L14CB   
       TAX            
       DEC    $CE     
       CMP    #$03    
       BMI    L14CB   
       LDX    #$03    
L14CB: LDA    L11AE,X 
       STA    NUSIZ0  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUP0  
       STA    NUSIZ1  
       STA    VDELP1  
       LDA    $B7     
       TAY            
       LDA    L11BC,Y 
       STA    COLUP1  
       DEY            
       TYA            
       CLC            
       ASL            
       STA    $CF     
       ASL            
       ADC    $CF     
       ADC    #$86    
       STA    $C0     
       LDA    #$1C    
       STA    $C1     
       LDA    #$07    
       STA    COLUP0  
       LDY    #$05    
L14F9: STA    WSYNC   
       LDA    ($C0),Y 
       STA    GRP1    
       LDA    L1DDF,Y 
       AND    $CE     
       STA    GRP0    
       DEY            
       BPL    L14F9   
       LDA    $B6     
       CMP    #$0F    
       BCC    L1517   
       LDX    $BA     
       LDA    $90,X   
       ORA    $BB     
       STA    $90,X   
L1517: STA    WSYNC   
       LDA    #$19    
       STA    TIM64T  
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    COLUP0  
       STY    COLUP1  
       RTS            

L1528: LDA    #$FF    
       LDY    $F7     
       DEY            
       BMI    L1535   
       CPY    #$02    
       BPL    L1537   
       BMI    L1539   
L1535: NOP            
       NOP            
L1537: LDA    #$00    
L1539: STA    ENABL   
       STY    $F7     
       RTS            

L153E: DEY            
       BNE    L153E   
L1541: RTS            

L1542: LDX    #$02    
       STX    VBLANK  
       STX    WSYNC   
       STX    VSYNC   
       JSR    L1204   
       STA    WSYNC   
       STA    WSYNC   
       INC    $AF     
       INC    $B0     
       LDA    $A8     
       BNE    L1566   
       JSR    L1EE0   
       LDA    $B0     
       CMP    #$80    
       BNE    L1566   
       LDA    $81     
       STA    $B8     
L1566: LDX    #$00    
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$2E    
       STA    TIM64T  
       LDY    #$06    
L1573: LDA.wy $008F,Y 
       ORA.wy $0095,Y 
       BNE    L157E   
       DEY            
       BNE    L1573   
L157E: STY    $F4     
       LDA    $8B     
       AND    #$7F    
       ASL            
       STA    $CE     
       TYA            
       ASL            
       STA    $CF     
       ASL            
       ADC    $CF     
       ASL            
       ADC    $CF     
       ADC    $CE     
       EOR    #$FF    
       SEC            
       ADC    #$8A    
       LSR            
       STA    $F6     
       STA    $83     
       JSR    L1F13   
       LDA    $B6     
       BEQ    L15EB   
       LDX    $B5     
       BMI    L15D5   
       DEX            
       STX    $B5     
       BNE    L15D5   
       DEC    $B9     
       LDX    $B9     
       STX    $B5     
       BNE    L15C4   
       LDA    $B6     
       CMP    #$10    
       BNE    L15C0   
       JSR    L1957   
       LDX    #$00    
L15C0: STX    $B6     
       BEQ    L15D5   
L15C4: LDA    $B8     
       BEQ    L15CE   
       LDY    #$00    
       STY    $B8     
       BEQ    L15D5   
L15CE: LDY    $B6     
       LDA    L11BC,Y 
       STA    $B8     
L15D5: LDA    $B6     
       CMP    #$0F    
       BCC    L15EB   
       LDA    $B0     
       AND    #$01    
       BEQ    L15EB   
       LDX    $BA     
       LDA    $BB     
       EOR    #$FF    
       AND    $90,X   
       STA    $90,X   
L15EB: LDA    $A5     
       AND    #$01    
       TAX            
       LDA    L12A4,X 
       STA    $C1     
       LDA    #$00    
       STA    $C0     
       LDA    $B0     
       AND    #$18    
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    L11B4,X 
       STA    $C2     
       LDX    #$00    
       STX    $C4     
       STX    $C3     
L160C: LDX    $C3     
       LDA    $90,X   
       STA    $CE     
       LDA    $96,X   
       ASL            
       STA    $CF     
       LDX    #$06    
       STX    $C5     
       LDX    $C4     
L161D: LDA    $CE     
       AND    #$01    
       ORA    $CF     
       AND    #$03    
       TAY            
       LDA.wy $00C0,Y 
       STA    $D0,X   
       INX            
       LSR    $CE     
       LDA    $CF     
       LSR            
       AND    #$FE    
       STA    $CF     
       DEC    $C5     
       BNE    L161D   
       LDA    $C1     
       CLC            
       ADC    #$14    
       STA    $C1     
       STX    $C4     
       LDX    $C3     
       INX            
       STX    $C3     
       CPX    #$06    
       BNE    L160C   
       JSR    L1237   
       INX            
       STX    CTRLPF  
       LDY    #$03    
       STY    VDELP0  
       STY    VDELP1  
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDA    #$05    
       STA    $CC     
       LDA    #$3F    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       JSR    L153E   
       LDA    #$E0    
       STA    HMP0    
       LDA    #$F0    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
L1676: LDA    INTIM   
       BPL    L1676   
       STY    VBLANK  
       STY    GRP0    
       LDA    $B8     
       STA    COLUBK  
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$09    
       JSR    L153E   
       LDA    $CE     
L168E: LDY    $CC     
       LDA    ($C8),Y 
       TAX            
       LDA    ($CA),Y 
       STA    $CD     
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    ($C4),Y 
       STA    HMCLR   
       STA    GRP0    
       LDA    ($C6),Y 
       LDY    $CD     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       STA    HMCLR   
       DEC    $CC     
       BPL    L168E   
       STA    WSYNC   
       LDX    #$00    
       LDY    $B6     
       LDA    L11BC,Y 
       ORA    $B8     
       STA    COLUBK  
       STX    GRP1    
       STX    GRP0    
       STX    GRP1    
       JSR    L1000   
       JSR    L13E7   
       LDA    $B6     
       CMP    #$0F    
       BNE    L16DF   
       LDA    $B0     
       AND    #$7F    
       BNE    L16DF   
       JSR    L1F30   
L16DF: JSR    L1E3C   
       LDA    $AA     
       BNE    L16FD   
       LDA    $AB     
       CMP    #$1C    
       BNE    L16EF   
       JMP    L129B   
L16EF: LDA    $A0     
       BNE    L16FA   
       LDA    $A8     
       BNE    L1700   
       JMP    L189D   
L16FA: JMP    L17EE   
L16FD: JMP    L18A0   
L1700: LDA    $B6     
       CMP    #$07    
       BEQ    L1742   
       LDX    $AB     
       CPX    #$14    
       BCC    L1710   
       LDX    #$01    
       BNE    L171B   
L1710: INX            
       STX    $CE     
       LDX    #$01    
       LDA    $A2     
       CMP    $CE     
       BCS    L1722   
L171B: LDA    $85     
       AND    #$01    
       BNE    L1722   
       INX            
L1722: STX    $CE     
       LDA    $B6     
       CMP    #$08    
       BNE    L1732   
       LDA    $B0     
       AND    #$01    
       BEQ    L1742   
       BNE    L1745   
L1732: LDX    $A3     
       BEQ    L1745   
       DEX            
       BEQ    L1740   
       LDA    $AB     
       CMP    #$18    
       BCC    L1740   
       DEX            
L1740: STX    $A3     
L1742: JMP    L17A3   
L1745: LDA    $BC     
       CMP    #$04    
       BCC    L1753   
       LDA    #$04    
       STA    $BC     
       LDA    #$03    
       STA    $BD     
L1753: LDA    $A2     
       STA    $A3     
       INC    $A5     
       LDA    $8B     
       TAY            
       AND    #$03    
       BNE    L177D   
       TYA            
       AND    #$80    
       BNE    L1797   
       JSR    L194B   
       STA    $CF     
       LDX    #$05    
L176C: LDA    L12A6,X 
       AND    $CF     
       BNE    L1776   
       DEX            
       BPL    L176C   
L1776: LDA    $85     
       CMP    L11A7,X 
       BNE    L1790   
L177D: LDA    $8B     
       CLC            
       ADC    #$02    
       STA    $8B     
       TAY            
       AND    #$03    
       BNE    L17A3   
       TYA            
       EOR    #$80    
       STA    $8B     
       BNE    L17A3   
L1790: CLC            
       ADC    $CE     
L1793: STA    $85     
       BNE    L17A3   
L1797: LDA    $85     
       CMP    #$0A    
       BEQ    L177D   
       SEC            
       SBC    $CE     
       JMP    L1793   
L17A3: LDY    $A6     
       BEQ    L17AD   
       CPY    #$01    
       BEQ    L17D3   
       BNE    L17EE   
L17AD: LDX    $AC     
       BEQ    L17EE   
       LDA    $81     
       CMP    #$01    
       BNE    L17EE   
       LDA    $B0     
       AND    #$0F    
       BNE    L17EE   
       DEC    $AC     
       INY            
       STY    $A6     
       LDA    $84     
       AND    #$01    
       TAX            
       LDA    L11B8,X 
       STA    $8A     
       LDA    L11BA,X 
       STA    $A7     
       BNE    L17EE   
L17D3: LDA    $B0     
       AND    #$03    
       BNE    L17EE   
       LDX    #$00    
       LDA    $8A     
       CLC            
       ADC    $A7     
       STA    $8A     
       CMP    #$0A    
       BEQ    L17EA   
       CMP    #$7E    
       BNE    L17EE   
L17EA: LDA    #$00    
       STA    $A6     
L17EE: JSR    L1979   
       LDA    $A0     
       BEQ    L17F8   
L17F5: JMP    L188B   
L17F8: LDA    $A9     
       BEQ    L1800   
       DEC    $A9     
       BNE    L17F5   
L1800: LDA    #$01    
       STA    $CE     
       LDX    $B6     
       CPX    #$0B    
       BEQ    L17F5   
       CPX    #$01    
       BEQ    L181A   
       CPX    #$03    
       BNE    L1814   
       STX    $CE     
L1814: LDA    $B0     
       AND    $CE     
       BNE    L17F5   
L181A: LDY    #$00    
       STY    $CE     
       CPX    #$02    
       BNE    L1825   
       DEY            
       STY    $CE     
L1825: LDA    INPT4   
       AND    #$80    
       STA    $CF     
       BNE    L1855   
       LDA    $BE     
       BEQ    L1855   
       LDA    $AB     
       CMP    #$14    
       BCS    L1844   
       LDA    $B6     
       CMP    #$0A    
       BEQ    L1844   
       LDA    SWCHB   
       AND    #$40    
       BEQ    L184A   
L1844: LDA    $8C     
       CMP    #$FF    
       BNE    L1855   
L184A: LDA    #$4B    
       STA    $8C     
       LDA    $84     
       CLC            
       ADC    #$04    
       STA    $86     
L1855: LDA    $CF     
       STA    $BE     
       LDX    $84     
       LDA    #$40    
       EOR    $CE     
       AND    #$C0    
       TAY            
       LDA    #$80    
       EOR    $CE     
       AND    #$C0    
       STA    $CF     
       STY    $CE     
       LDA    SWCHA   
       BIT    $CE     
       BEQ    L1884   
       BIT    $CF     
       BEQ    L187D   
       AND    #$20    
       BEQ    L188E   
       BNE    L188B   
L187D: CPX    #$7E    
       BEQ    L188B   
       INX            
       BNE    L1889   
L1884: CPX    #$0A    
       BEQ    L188B   
       DEX            
L1889: STX    $84     
L188B: JMP    L189D   
L188E: LDA    SWCHB   
       AND    #$80    
       BNE    L189D   
       LDA    $A9     
       BNE    L189D   
       LDA    #$5A    
       STA    $A9     
L189D: JSR    L1A8A   
L18A0: LDA    $A2     
       BEQ    L18D8   
       JSR    L194B   
       STA    $CE     
L18A9: LDA    L12A6,X 
       AND    $CE     
       BNE    L18B7   
       INX            
       CPX    #$06    
       BNE    L18A9   
       BEQ    L18D8   
L18B7: STX    $CE     
       CPX    #$00    
       BEQ    L18D8   
       LDY    $CE     
L18BF: LDX    #$05    
L18C1: LSR    $90,X   
       LSR    $96,X   
       DEX            
       BPL    L18C1   
       LSR    $BB     
       DEY            
       BNE    L18BF   
       LDA    $CE     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $85     
       STA    $85     
L18D8: LDX    $AA     
       BNE    L1902   
       LDA    $A0     
       BEQ    L1916   
       CMP    #$01    
       BEQ    L18E8   
       DEC    $A0     
       BNE    L1916   
L18E8: LDA    $8C     
       CMP    #$FF    
       BNE    L1916   
       LDA    $A8     
       BPL    L18F6   
       INC    $A8     
       BEQ    L1916   
L18F6: LDA    #$64    
       STA    $8D     
       STA    $8E     
       STA    $8F     
       STA    $AA     
       BNE    L1916   
L1902: DEX            
       STX    $AA     
       CPX    #$32    
       BPL    L1916   
       LDX    #$00    
       STX    $A0     
       STX    $A6     
       LDA    $A8     
       BNE    L1916   
       INX            
       STX    $A0     
L1916: LDX    $A6     
       BEQ    L1925   
       CPX    #$01    
       BEQ    L1925   
       DEX            
       CPX    #$01    
       BNE    L1925   
       LDX    #$00    
L1925: STX    $A6     
       DEC    $A1     
       BNE    L1940   
       LDX    #$05    
L192D: LDA    $96,X   
       BEQ    L193D   
       LDY    #$06    
L1933: LSR            
       BCC    L1938   
       DEC    $A2     
L1938: DEY            
       BNE    L1933   
       STA    $96,X   
L193D: DEX            
       BPL    L192D   
L1940: JSR    L13C1   
L1943: LDA    INTIM   
       BPL    L1943   
       JMP    L1542   
L194B: LDX    #$06    
       LDA    #$00    
L194F: ORA    $8F,X   
       ORA    $95,X   
       DEX            
       BNE    L194F   
       RTS            

L1957: LDA    $A0     
       BNE    L1978   
       STA    $B8     
       STA    $B6     
       STA    $B7     
       STA    $A9     
       LDA    $B4     
       AND    #$0F    
       TAX            
       LDA    #$32    
       CPX    #$00    
       BNE    L1974   
       ASL            
       DEX            
       STX    $A8     
       BNE    L1976   
L1974: DEC    $B4     
L1976: STA    $A0     
L1978: RTS            

L1979: LDA    $B0     
       AND    #$03    
       TAX            
       BEQ    L19C2   
       LDA    $A9     
       BEQ    L1988   
       CMP    #$1E    
       BCS    L19C2   
L1988: LDA    $A4     
       AND    #$40    
       BEQ    L19C1   
       CPX    #$01    
       BNE    L19BE   
       LDA    $A0     
       BNE    L19BE   
       LDA    $B7     
       BEQ    L19BE   
L199A: TAY            
       STY    $B6     
       LDA    L11BC,Y 
       STA    $B8     
       LDA    L11CD,Y 
       STA    $B5     
       STA    $B9     
       LDA    #$60    
       STA    $8D     
       LDA    L11DE,Y 
       STA    $BC     
       LDA    #$05    
       STA    $BD     
       CPY    #$0F    
       BCC    L19BD   
       JSR    L1C4C   
L19BD: RTS            

L19BE: JSR    L1957   
L19C1: RTS            

L19C2: LDA    $8C     
       CMP    #$05    
       BCS    L19DE   
       LDA    $A4     
       AND    #$40    
       BEQ    L19DD   
       LDA    $A6     
       CMP    #$01    
       BNE    L19DD   
       LDA    #$64    
       STA    $A6     
       LDA    #$05    
       JSR    L1281   
L19DD: RTS            

L19DE: LDA    $A4     
       ORA    CXP1FB  
       AND    #$40    
       BEQ    L19C1   
       LDA    $86     
       LDA    $85     
       SEC            
       SBC    #$01    
       JSR    L1A82   
       LDA    $8B     
       AND    #$7F    
       ASL            
       CLC            
       ADC    #$16    
       STA    $C2     
       LDA    $8C     
       ASL            
       STA    $C3     
       LDX    #$00    
       LDA    $C2     
L1A03: CMP    $C3     
       BCS    L1A0E   
       INX            
       CLC            
       ADC    #$0E    
       JMP    L1A03   
L1A0E: LDA    $B6     
       CMP    #$0E    
       BEQ    L1A18   
       LDA    #$FF    
       STA    $8C     
L1A18: LDA    #$01    
       STA    $C7     
L1A1C: LDA    $86     
       CMP    $C0     
       BCC    L1A71   
       CMP    $C1     
       BCS    L1A71   
       LDA    $C7     
       ORA    $96,X   
       STA    $96,X   
       LDA    $C7     
       EOR    #$3F    
       AND    $90,X   
       STA    $90,X   
       LDA    #$14    
       STA    $A1     
       LDA    $B6     
       CMP    #$0F    
       BCC    L1A4E   
       CPX    $BA     
       BNE    L1A4E   
       LDA    $96,X   
       AND    $BB     
       BEQ    L1A4E   
       LDA    #$00    
       STA    $B6     
       STA    $B8     
L1A4E: TXA            
       ASL            
       TAX            
       INX            
       SED            
       CLC            
       LDA    $B4     
       ADC    L119B,X 
       STA    $B4     
       DEX            
       LDA    L119B,X 
       JSR    L1283   
       LDA    $BC     
       CMP    #$04    
       BCC    L1A70   
       LDA    #$03    
       STA    $BC     
       LDA    #$08    
       STA    $BD     
L1A70: RTS            

L1A71: JSR    L1A7D   
       ASL    $C7     
       LDA    $C7     
       CMP    #$40    
       BNE    L1A1C   
       RTS            

L1A7D: LDA    $C0     
       CLC            
       ADC    #$10    
L1A82: STA    $C0     
       CLC            
       ADC    #$0B    
       STA    $C1     
       RTS            

L1A8A: LDA    #$01    
       STA    $CE     
       LDA    $B6     
       CMP    #$01    
       BEQ    L1AA0   
       CMP    #$03    
       BNE    L1A9A   
       STA    $CE     
L1A9A: LDA    $B0     
       AND    $CE     
       BNE    L1AD4   
L1AA0: LDX    $8C     
       CPX    #$FF    
       BEQ    L1AC9   
       DEX            
       BPL    L1AC9   
       LDA    $B6     
       CMP    #$0A    
       BNE    L1AB2   
       JSR    L1F30   
L1AB2: LDX    #$FF    
       LDA    $AB     
       CMP    #$14    
       BCC    L1AC9   
       STX    $8C     
       LDA    $81     
       AND    #$0F    
       CLC            
       ADC    #$01    
       JSR    L199A   
       JMP    L1ACB   
L1AC9: STX    $8C     
L1ACB: LDA    $B6     
       CMP    #$0D    
       BNE    L1AD4   
       JSR    L1FAC   
L1AD4: LDA    $B0     
       AND    #$03    
       BEQ    L1B18   
       TAX            
       LDA    $8C,X   
       CLC            
       ADC    $9C,X   
       CMP    #$5F    
       BPL    L1B20   
       STA    $8C,X   
       LDA    $AB     
       CMP    #$04    
       BCC    L1AF4   
       CMP    #$0C    
       BCC    L1AFE   
       CMP    #$14    
       BCC    L1B03   
L1AF4: LDA    $B6     
       CMP    #$06    
       BEQ    L1B03   
       CMP    #$0C    
       BNE    L1B18   
L1AFE: JSR    L1FAE   
       BNE    L1B18   
L1B03: LDA    $84     
       CLC            
       ADC    #$04    
       STA    $CE     
       LDA    $86,X   
       TAY            
       CMP    $CE     
       BCS    L1B14   
       INY            
       BNE    L1B15   
L1B14: DEY            
L1B15: TYA            
       STA    $86,X   
L1B18: LDA    $B7     
       BEQ    L1B1F   
       JSR    L11EF   
L1B1F: RTS            

L1B20: LDA    $AD     
       BEQ    L1B28   
       DEC    $AD     
       BNE    L1B18   
L1B28: LDA    $B6     
       CMP    #$04    
       BEQ    L1B18   
       LDA    $A0     
       BNE    L1B18   
       STX    $C4     
       LDA    $81     
       AND    #$07    
       CMP    #$06    
       BCS    L1B18   
       TAX            
       LDA    L12A6,X 
       STA    $C5     
       LDX    #$05    
L1B44: LDA    $90,X   
       AND    $C5     
       BNE    L1B4F   
       DEX            
       BPL    L1B44   
       BMI    L1B18   
L1B4F: LDA    $8B     
       AND    #$7F    
       CLC            
       ADC    #$04    
L1B56: CLC            
       ADC    #$07    
       DEX            
       BPL    L1B56   
       LDX    $C4     
       STA    $8C,X   
       LDY    #$00    
       LDA    $C5     
L1B64: CMP    #$01    
       BEQ    L1B6C   
       LSR            
       INY            
       BNE    L1B64   
L1B6C: TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       TAY            
       CLC            
       ADC    $85     
       CLC            
       ADC    #$04    
       LDX    $C4     
       STA    $86,X   
       LDA    #$05    
       STA    $AD     
       LDA    $B6     
       CMP    #$05    
       BEQ    L1B9A   
       LDA    $AB     
       CMP    #$08    
       BCC    L1B9E   
       CMP    #$0C    
       BCC    L1B9A   
       CMP    #$10    
       BCC    L1B9E   
       CMP    #$14    
       BCC    L1B9A   
       BCS    L1B9E   
L1B9A: LDA    #$04    
       BNE    L1BA5   
L1B9E: LDA    $81     
       AND    #$03    
       CLC            
       ADC    #$01    
L1BA5: STA    $9C,X   
       CPX    #$01    
       BNE    L1BBC   
       LDA    $81     
       TAY            
       AND    #$03    
       BNE    L1BBF   
       TYA            
       AND    #$0F    
       CLC            
       ADC    #$01    
       STA    $B7     
       STX    $9D     
L1BBC: JMP    L1B18   
L1BBF: DEX            
       STX    $B7     
       JMP    L1B18   
L1BC5: LDX    #$FF    
       TXS            
       JSR    L1DE5   
       LDA    $80     
       BNE    L1BD1   
       LDA    $82     
L1BD1: STA    $82     
       ASL            
       ASL            
       SEC            
       SBC    #$04    
       STA    $AB     
       STX    $80     
       LDA    #$03    
       STA    $B4     
L1BE0: LDA    #$64    
       STA    $AA     
       LDA    $AB     
       CMP    #$1C    
       BEQ    L1C03   
       CMP    #$14    
       BCC    L1BF0   
       LDA    $81     
L1BF0: AND    #$03    
       ASL            
       ASL            
       STA    $8B     
       LDX    #$05    
L1BF8: LDA    #$3F    
       STA    $90,X   
       LDA    #$00    
       STA    $96,X   
       DEX            
       BPL    L1BF8   
L1C03: LDX    #$FF    
       STX    $8C     
       TXS            
       INX            
       STX    $A5     
       STX    $A6     
       STX    $B5     
       STX    $B6     
       STX    $B7     
       STX    $B8     
       STX    $B9     
       LDX    #$02    
       STX    $AC     
       STX    $A8     
       LDX    #$06    
       STX    $F4     
       LDX    #$24    
       STX    $A2     
       STX    $A3     
       LDX    #$0B    
       STX    $85     
       LDX    #$44    
       STX    $84     
       LDX    #$5F    
       STX    $8D     
       STX    $8E     
       STX    $8F     
       JMP    L1542   

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       JSR    L1DE5   
       INX            
       STX    $80     
       LDA    #$44    
       STA    $84     
       JMP    L1542   
L1C4C: LDA    #$05    
       STA    $CF     
       JSR    L1FCE   
       LDY    #$05    
L1C55: LDA    $90,X   
       BEQ    L1C75   
       STA    $CE     
       LDA    $81     
       AND    #$07    
       CMP    #$06    
       BCC    L1C66   
       SEC            
       SBC    #$06    
L1C66: TAY            
L1C67: LDA    $CE     
       AND    L12A6,Y 
       BNE    L1C7E   
       DEY            
       BPL    L1C67   
       LDY    #$05    
       BNE    L1C67   
L1C75: DEX            
       BPL    L1C7A   
       LDX    #$05    
L1C7A: DEY            
       BPL    L1C55   
       RTS            

L1C7E: STX    $BA     
       LDA    L12A6,Y 
       STA    $BB     
       RTS            

L1C86: .byte $24,$42,$81,$42,$24,$00,$81,$42,$24,$42,$81,$00,$00,$00,$28,$44
       .byte $28,$00,$82,$82,$92,$AA,$82,$82,$10,$28,$44,$10,$28,$44,$47,$03
       .byte $45,$48,$48,$48,$82,$AA,$92,$BA,$BA,$92,$00,$8A,$44,$2E,$4E,$84
       .byte $44,$0A,$40,$20,$AA,$44,$00,$0A,$A4,$4E,$0E,$04,$AA,$AA,$92,$92
       .byte $BA,$92,$47,$03,$45,$28,$A8,$48,$48,$08,$48,$25,$A3,$47,$80,$00
       .byte $A2,$94,$88,$80,$40,$0A,$44,$2E,$AE,$44,$80,$14,$88,$9C,$9C,$88
L1CE6: LDX    #$47    
L1CE8: STA    WSYNC   
       STA    WSYNC   
       DEX            
       BPL    L1CE8   
       LDA    $84     
       INX            
       JMP    L1414   
L1CF5: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$64,$15,$6A,$5A,$32,$0D,$4A,$20,$36,$28,$28
       .byte $50,$29,$5E,$29,$39,$72,$29,$22,$14,$04,$65,$6A,$58,$0C,$21,$49
       .byte $28,$14,$48,$44,$01,$42,$54,$00,$21,$04,$08,$12,$48,$42,$42,$42
       .byte $24,$24,$7E,$DB,$DB,$7E,$3C,$24,$24,$42,$42,$24,$7E,$5A,$5A,$3C
       .byte $18,$24,$42,$66,$42,$24,$7E,$5A,$5A,$3C,$24,$42,$81,$C3,$99,$66
       .byte $7E,$5A,$5A,$3C,$42,$55,$22,$24,$18,$3C,$6A,$42,$3C,$18,$00,$AA
       .byte $44,$24,$14,$18,$3C,$56,$42,$3C,$18,$00,$81,$99,$66,$3C,$5A,$5A
       .byte $BD,$3C,$00,$00,$5A,$5A,$3C,$3C,$3C,$5A,$5A,$BD,$00,$00,$C3,$7E
       .byte $81,$81,$AB,$FF,$99,$66,$00,$00,$66,$7E,$54,$AA,$FF,$DB,$99,$66
       .byte $00,$81,$AD,$5A,$10,$1C,$32,$32,$3A,$3E,$1C,$66,$AA,$11,$10,$38
       .byte $7C,$4C,$4C,$6C,$38
L1DAA: .byte $00,$00,$42,$81,$99,$FF,$FF,$5A,$18,$99,$7E,$3C,$18,$3C,$7E,$C9
       .byte $7E,$3C,$3C,$7E,$A5,$7E,$3C,$3C,$7E,$93,$7E,$3C,$3C,$7E,$C9,$7E
       .byte $3C,$94,$64,$15,$D8,$AE,$0A,$CA,$B3,$C9,$6A,$62,$AB,$D6,$5E,$2E
       .byte $93,$72,$92,$6A,$34
L1DDF: .byte $28,$28,$10,$10,$38,$10
L1DE5: LDX    #$7A    
       LDA    #$00    
L1DE9: STA    $83,X   
       DEX            
       BNE    L1DE9   
       LDX    #$7F    
L1DF0: STA    VSYNC,X 
       DEX            
       BNE    L1DF0   
       LDA    #$F0    
       STA    $BD     
       DEC    $8C     
       RTS            

L1DFC: .byte $00,$00,$00,$00,$3C,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$38,$18
       .byte $7E,$60,$3C,$06,$46,$3C,$3C,$46,$06,$0C,$46,$3C,$0C,$7E,$4C,$2C
       .byte $1C,$0C,$7C,$06,$06,$7C,$60,$7E,$3C,$66,$66,$7C,$62,$3C,$18,$18
       .byte $0C,$06,$42,$7E,$3C,$66,$66,$3C,$66,$3C,$3C,$46,$3E,$66,$66,$3C
L1E3C: LDX    $BD     
       BMI    L1E55   
       DEX            
       STX    $BD     
       LDX    $BC     
       LDA    L1FF0,X 
       STA    AUDF0   
       LDA    L1FF5,X 
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       BNE    L1E64   
L1E55: TXA            
       AND    #$0F    
       TAX            
       STX    AUDV0   
       BNE    L1E62   
       DEX            
       STX    $BC     
       BNE    L1E64   
L1E62: DEC    $BD     
L1E64: LDA    $A0     
       CMP    #$01    
       BEQ    L1E89   
       CMP    #$00    
       BEQ    L1E89   
       LDA    $A0     
       LSR            
       TAY            
       JSR    L153E   
       STY    AUDC0   
       STY    AUDV1   
       LSR            
       LSR            
       STA    $CE     
       LDA    #$0F    
       SEC            
       SBC    $CE     
       STA    AUDV0   
       LDA    #$1F    
       STA    AUDF0   
       RTS            

L1E89: LDA    $A9     
       BEQ    L1E97   
       LDA    #$0A    
       STA    AUDC1   
       STA    AUDF1   
       LDA    $81     
       BNE    L1EDD   
L1E97: LDA    $A8     
       BEQ    L1EDD   
       LDA    $A6     
       CMP    #$01    
       BEQ    L1EB0   
       CMP    #$00    
       BEQ    L1EC3   
       LDA    $B0     
       AND    #$01    
       BNE    L1EC2   
       LDA    $81     
       JMP    L1EB2   
L1EB0: LDA    $B0     
L1EB2: AND    #$07    
       TAX            
       LDA    L12B2,X 
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$04    
       STA    AUDV1   
L1EC2: RTS            

L1EC3: LDA    $8C     
       BMI    L1EDB   
       CMP    #$4B    
       BCS    L1EDB   
       EOR    #$FF    
       LSR            
       SEC            
       SBC    #$1F    
       STA    AUDF1   
       LDA    #$04    
       STA    AUDV1   
       ASL            
       STA    AUDC1   
       RTS            

L1EDB: LDA    #$00    
L1EDD: STA    AUDV1   
       RTS            

L1EE0: LDA    INPT4   
       AND    #$80    
       BNE    L1EE9   
       JMP    L1BC5   
L1EE9: RTS            

L1EEA: .byte $FF,$7F,$3F,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
L1F00: STA    WSYNC   
       SEC            
L1F03: SBC    #$0F    
       BCS    L1F03   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM0    
       NOP            
       STA    RESP0,X 
       RTS            

L1F13: LDA    $85     
       CLC            
       ADC    #$04    
       LDX    #$FF    
       SEC            
L1F1B: INX            
       SBC    #$0C    
       BCS    L1F1B   
       EOR    #$FF    
       ADC    #$08    
       ASL            
       ASL            
       ASL            
       ASL            
       STX    $AE     
       CLC            
       ADC    $AE     
       STA    $AE     
       RTS            

L1F30: LDX    #$05    
       LDA    $85     
       CLC            
       ADC    #$02    
L1F37: CMP    L11A7,X 
       BCC    L1F3F   
       DEX            
       BNE    L1F37   
L1F3F: LDA    L12AC,X 
       STA    $CE     
       LDX    #$05    
L1F46: LDA    $90,X   
       BNE    L1F4D   
       DEX            
       BNE    L1F46   
L1F4D: STX    $CF     
       BEQ    L1F54   
       JSR    L1FCE   
L1F54: LDY    #$00    
       INC    $CF     
L1F58: LDA    $90,X   
       ORA    $96,X   
       AND    $CE     
       CMP    $CE     
       BEQ    L1F9F   
       LDA    $81     
       AND    #$07    
       CMP    #$06    
       BCC    L1F6D   
       SEC            
       SBC    #$06    
L1F6D: TAY            
L1F6E: LDA    L12A6,Y 
       STA    $BF     
       AND    $CE     
       BEQ    L1F98   
       LDA    $96,X   
       AND    $BF     
       BNE    L1F98   
       LDA    $90,X   
       BIT    $BF     
       BNE    L1F98   
       ORA    $BF     
       STA    $90,X   
       INC    $A2     
       LDA    $BC     
       CMP    #$02    
       BCC    L1F97   
       LDA    #$01    
       STA    $BC     
       LDA    #$03    
       STA    $BD     
L1F97: RTS            

L1F98: DEY            
       BPL    L1F6E   
       LDY    #$05    
       BNE    L1F6E   
L1F9F: INX            
       CPX    $CF     
       BCC    L1FA6   
       LDX    #$00    
L1FA6: INY            
       CPY    $CF     
       BNE    L1F58   
       RTS            

L1FAC: LDX    #$00    
L1FAE: STX    $CE     
       LDA    $81     
       AND    #$01    
       TAY            
       LDA    $86,X   
       CLC            
       ADC    L12A2,Y 
       CMP    #$0A    
       BCS    L1FC3   
       LDA    #$0A    
       BNE    L1FC9   
L1FC3: CMP    #$7F    
       BCC    L1FC9   
       LDA    #$7E    
L1FC9: LDX    $CE     
       STA    $86,X   
       RTS            

L1FCE: LDA    $81     
       AND    #$07    
L1FD2: CMP    $CF     
       BEQ    L1FDD   
       BCC    L1FDD   
       SEC            
       SBC    $CF     
       BNE    L1FD2   
L1FDD: TAX            
       RTS            

L1FDF: .byte $04,$04,$06,$06,$FF,$48,$FF,$48,$54,$56,$58,$5A
L1FEB: .byte $FC,$FA,$A8,$FA,$FC
L1FF0: .byte $18,$18,$01,$08,$18
L1FF5: .byte $09,$0F,$0D,$08,$0E,$FF,$FF,$3A,$1C,$3A,$1C
