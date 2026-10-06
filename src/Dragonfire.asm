; Disassembly of roms/Dragonfire.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Dragonfire.bin
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
RESBL   =  $14
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
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
$0285   =  $0285
TIM8T   =  $0295
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
       DEC    $86     
       LDA    #$11    
       STA    CTRLPF  
       STA    $81     
       JSR    L14CD   
       LDA    #$96    
       STA    $9E     
       STA    $9F     
       STA    $80     
L101E: LDA    #$02    
       STA    VBLANK  
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$1D    
       STA    $DB     
       LDA    #$1C    
       STA    $DD     
       LDA    #$1F    
       STA    $D7     
       LDA    #$1E    
       STA    $D9     
       LDA    $89     
       ASL            
       ASL            
       LDA    $A9     
       ROL            
       ROL            
       AND    #$03    
       TAX            
       LDA    $9C     
       CLC            
       ADC    L1F9C,X 
       STA    $9D     
       LDA    $80     
       ROR            
       ROR            
       ROR            
       EOR    $81     
       ASL            
       ASL            
       ROL    $80     
       ROL    $81     
       LDA    $80     
       STA    WSYNC   
       LDA    $EC     
       EOR    #$0C    
       AND    $86     
       STA    COLUPF  
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDX    $A0     
       LDA    $92,X   
       BPL    L10BE   
       LDA    #$96    
       STA    $9F     
       STA    $9E     
       LDY    $EE     
       DEY            
       BEQ    L108A   
       LDX    #$04    
       CPX    $ED     
       BEQ    L10BE   
       JSR    L1ACF   
       JMP    L10BE   
L108A: LDA    $8C     
       LSR            
       BCS    L10A0   
L108F: JSR    L14CD   
       STA    $92     
       STA    $93     
       STA    $87     
       LDA    #$96    
       STA    $9F     
       STA    $9E     
       BNE    L10BE   
L10A0: LDA    $92     
       BPL    L10B3   
       LDA    $93     
       BMI    L108F   
L10A8: LDA    $A0     
       EOR    #$01    
       STA    $A0     
       JSR    L14CD   
       BEQ    L10BE   
L10B3: LDY    $A1     
       INY            
       CPY    #$09    
       BCS    L10A8   
       STY    $A1     
       BCC    L10A8   
L10BE: LDA    $A2     
       AND    #$07    
       TAY            
       AND    #$01    
       BNE    L111D   
       LDA    $D5     
       CMP    #$60    
       BCC    L10F0   
       CPY    #$00    
       BNE    L111D   
       ADC    #$0F    
       CMP    #$81    
       BCC    L10EB   
       LDA    #$8C    
       STA    $9E     
       LDA    #$00    
       STA    $9F     
       STA    $A8     
       LDA    #$80    
       STA    $88     
       LDX    $A0     
       DEC    $92,X   
       LDA    #$00    
L10EB: STA    $D5     
       JMP    L111D   
L10F0: BIT    $87     
       BMI    L1109   
       LDA    SWCHA   
       LDX    $A0     
       BEQ    L10FF   
       ASL            
       ASL            
       ASL            
       ASL            
L10FF: AND    #$20    
       BNE    L1109   
       STA    $A7     
       LDA    #$30    
       BNE    L111B   
L1109: LDA    $A7     
       ORA    $A8     
       BNE    L1113   
L110F: LDA    #$00    
       BEQ    L111B   
L1113: LDA    $D5     
       CMP    #$20    
       BCS    L110F   
       ADC    #$10    
L111B: STA    $D5     
L111D: BIT    $82     
       BVC    L1133   
       LDA    $8C     
       AND    #$01    
       LSR            
       STA    $AC     
       ADC    #$01    
       STA    $AA     
       LDA    $8C     
       LSR            
       TAX            
       INX            
       STX    $AE     
L1133: LDX    #$00    
       STX    $8D     
L1137: LDY    $C1,X   
       CPY    #$D0    
       BNE    L1146   
       INC    $8D     
L113F: INX            
       CPX    #$05    
       BNE    L1137   
       BEQ    L115F   
L1146: LDA    $8D     
       BEQ    L113F   
L114A: LDA    $D0,X   
       PHA            
       LDA    $97,X   
       DEX            
       STA    $97,X   
       PLA            
       STA    $D0,X   
       STY    $C1,X   
       INX            
       INX            
       LDY    $C1,X   
       CPX    #$05    
       BNE    L114A   
L115F: LDX    #$08    
       LDA    #$8C    
L1163: CMP    $C7,X   
       BNE    L1170   
       DEX            
       BNE    L1163   
       LDA    #$82    
       STA    $CF     
       STX    $B8     
L1170: BIT    $87     
       BPL    L11D3   
       LDX    #$FF    
       LDA    $9F     
       BEQ    L11D3   
L117A: INX            
       CPX    #$04    
       BCS    L11D3   
       LDA    $C1,X   
       CMP    #$D0    
       BNE    L117A   
       CPX    #$00    
       BEQ    L1191   
       DEX            
       LDA    $C1,X   
       CMP    #$2A    
       BCC    L11D3   
       INX            
L1191: LDA    $9C     
       ADC    #$14    
       BIT    $A9     
       BPL    L119B   
       SBC    #$12    
L119B: STA    $8D     
       CMP    $9E     
       BCC    L11A5   
       SBC    $9E     
       BCS    L11AA   
L11A5: LDA    $9E     
       SEC            
       SBC    $8D     
L11AA: CMP    #$14    
       BCS    L11D3   
       LDA    $8D     
       STA    $97,X   
       LDA    #$10    
       STA    $DE     
       LDA    #$40    
       STA    $89     
       STX    $8E     
       LDX    #$00    
       JSR    L1ACF   
       LDX    $8E     
       LDA    #$11    
       STA    $83     
       LDA    #$0A    
       STA    $84     
       LDA    #$00    
       STA    $C1,X   
       LDA    #$40    
       STA    $D0,X   
L11D3: INC    $A2     
       BNE    L11F6   
       BIT    $82     
       BVS    L11EA   
       BIT    $87     
       BVS    L11EA   
       LDA    $8C     
       LSR            
       BCC    L11EA   
       LDA    $A0     
       EOR    #$01    
       STA    $A0     
L11EA: INC    $A3     
       BNE    L11F6   
       LDA    #$F3    
       STA    $86     
       LDA    #$00    
       STA    $87     
L11F6: LDA    #$00    
       STA    $8D     
       BIT    $87     
       BPL    L124A   
       LDA    $D5     
       CMP    #$60    
       BCS    L124A   
       LDA    $9F     
       BEQ    L124A   
       SEC            
       SBC    #$10    
       BCC    L120F   
       STA    $8D     
L120F: CLC            
       ADC    #$20    
       STA    $8E     
       LDX    #$04    
L1216: LDA    $C1,X   
       CMP    #$D0    
       BEQ    L1224   
       CMP    $8D     
       BCC    L1224   
       CMP    $8E     
       BCC    L1229   
L1224: DEX            
       BPL    L1216   
       BMI    L124A   
L1229: LDA    $9E     
       SBC    #$06    
       BCC    L1233   
       CMP    $97,X   
       BCS    L1224   
L1233: ADC    #$0C    
       CMP    $97,X   
       BCC    L1224   
       LDA    #$78    
       STA    $C7     
       LDA    #$D0    
       STA    $C1,X   
       LDA    #$60    
       STA    $D5     
       LDX    #$03    
       JSR    L1ACF   
L124A: LDX    #$07    
L124C: LDA    $97,X   
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $97,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $8D     
       CLC            
       ADC    $97,X   
       AND    #$0F    
       SEC            
       SBC    #$07    
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $8D     
       STA    $B9,X   
       DEX            
       BPL    L124C   
       STA    WSYNC   
       LDA    $BF     
       STA    HMBL    
       AND    #$0F    
       TAY            
       NOP            
       NOP            
       NOP            
L127C: DEY            
       BPL    L127C   
       STA    RESBL   
       LDA    $BE     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L1DEB,Y 
       STA    $E8     
       LDA    #$16    
       STA    $E9     
       LDA    $A2     
       LSR            
       BCS    L12A4   
       LDA    $B9     
       LDX    #$01    
       STX    $95     
       LDX    $D0     
       LDY    $C1     
       CPY    #$D0    
       BNE    L12AE   
L12A4: LDA    $C0     
       LDX    #$05    
       STX    $95     
       LDX    $D5     
       LDY    $9F     
L12AE: STA    WSYNC   
       STX    $DC     
       STX    $D8     
       STY    $C6     
       STA    HMP0    
       AND    #$0F    
       TAY            
L12BB: DEY            
       BPL    L12BB   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       STY    $91     
       INY            
       STY    NUSIZ1  
       STY    NUSIZ0  
       LDY    #$09    
       STY    $94     
       LDX    #$96    
       LDY    #$00    
       STY    $96     
       LDA    $8A     
       STA    REFP0   
       STA    HMCLR   
L12DB: BIT    $0285   
       BPL    L12DB   
       STA    WSYNC   
       STY    VBLANK  
       STY    COLUBK  
       BIT    $87     
       BMI    L12F7   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDA    #$C8    
       STA    TIM64T  
       BNE    L1317   
L12F7: LDY    #$03    
L12F9: STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    L1AE2,Y 
       STA    PF0     
       LDA    L1AE6,Y 
       STA    PF1     
       LDA    L1AEA,Y 
       STA.w  $000F   
       DEY            
       BPL    L12F9   
       NOP            
       NOP            
       JMP    L151D   
L1317: LDA    #$15    
       STA    CTRLPF  
       LDA    #$1C    
       STA    $E1     
       LDX    #$90    
       LDA    $A2     
       AND    #$04    
       BNE    L1329   
       LDX    #$9F    
L1329: STX    $E0     
       LDX    #$0E    
       STX    $8D     
       LDY    #$0A    
L1331: LDX    #$07    
L1333: STA    WSYNC   
       LDA    L1FB9,Y 
       STA    PF0     
       LDA    L1FC4,Y 
       STA    PF1     
       DEX            
       BPL    L1333   
       DEY            
       BPL    L1331   
       INY            
       STA    $8E     
       LDA    $D3     
       STA    $8F     
       AND    #$0F    
       STA    $90     
       STA    WSYNC   
       NOP            
       NOP            
       LDA    $D4     
       LDX    #$19    
       STA    HMP1    
       AND    #$0F    
       TAY            
L135D: DEY            
       BPL    L135D   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
L1366: STA    WSYNC   
       STA    COLUP0  
       LDA    $8E     
       STA    GRP0    
       LDY    $8D     
       LDA    ($E0),Y 
       STA    GRP1    
       LDA    #$44    
       STA    COLUP1  
       LDA    $8F     
       STA    HMP1    
L137C: TXA            
       SEC            
       SBC    $C6     
       TAY            
       AND    #$F0    
       BNE    L138B   
       LDA    ($DC),Y 
       STA    $8E     
       LDA    ($D8),Y 
L138B: DEX            
       BMI    L13BA   
       DEC    $8D     
       BPL    L1366   
       STA    WSYNC   
       STA    COLUP0  
       LDA    $8E     
       STA    GRP0    
       LDY    $90     
       TXA            
       SEC            
L139E: DEY            
       BPL    L139E   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       SBC    $C6     
       TAY            
       LDA    ($DC),Y 
       STA    GRP0    
       LDA    ($D8),Y 
       STA    COLUP0  
       DEX            
       LDY    #$09    
       STY    $8D     
       JMP    L137C   
L13BA: LDA    WSYNC   
       STA    WSYNC   
       STA    $91     
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STX    REFP0   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDY    #$11    
       NOP            
       STA    RESP1   
       STY    CTRLPF  
       LDA    #$03    
       STA    NUSIZ1  
       STA    NUSIZ0  
       LDX    $A1     
       LDA    L1FA0,X 
       STA    RESP0   
       AND    $86     
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$09    
       STA    WSYNC   
       LDA    $EC     
       EOR    #$02    
       AND    $86     
       STA    COLUPF  
       STA    WSYNC   
L13F6: STA    WSYNC   
       LDA    L1E90,X 
       STA    GRP1    
       STA    GRP0    
       DEX            
       BPL    L13F6   
       STA    WSYNC   
       LDY    #$80    
       STY    PF1     
       STY    PF2     
       LDY    #$14    
L140C: STA    WSYNC   
       DEY            
       BPL    L140C   
       LDA    $F1     
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$84    
       AND    $86     
       STA    COLUBK  
       JMP    L16AE   
L1420: LDA    $D5     
       CMP    #$60    
       BCS    L142F   
       LDA    $9E     
       CMP    #$0C    
       BCS    L142F   
       JMP    L1AB8   
L142F: LDX    #$01    
L1431: LDY    $D1,X   
       BEQ    L1442   
       DEC    $D1,X   
       BNE    L146C   
       STX    $8E     
       LDX    #$00    
       JSR    L1ACF   
       LDX    $8E     
L1442: TXA            
       TAY            
       LDA    $D3,X   
L1446: SEC            
       SBC    #$10    
       BVC    L144E   
       SEC            
       SBC    #$0F    
L144E: CMP    #$CA    
       BNE    L1454   
       LDA    #$60    
L1454: CMP    #$40    
       BNE    L1467   
       LDA    $80     
       AND    #$1F    
       ADC    $A1     
       EOR    #$3F    
       ASL            
       STA    $D1,X   
       LDA    #$40    
       BNE    L146A   
L1467: DEY            
       BPL    L1446   
L146A: STA    $D3,X   
L146C: DEX            
       BPL    L1431   
       BIT    $87     
       BVC    L14A7   
       LDA    $A8     
       BNE    L1490   
       LDY    $D5     
       CPY    #$60    
       BCS    L14A7   
       LDX    $A0     
       LDY    REFP1,X 
       BMI    L1490   
       LDX    #$02    
       JSR    L1ACF   
       LDA    #$0C    
       STA    $EF     
       LDA    #$01    
       STA    $A8     
L1490: CLC            
       ADC    $9F     
       STA    $9F     
       BNE    L1499   
       STA    $A8     
L1499: CMP    #$09    
       BCC    L14A7   
       DEC    $9F     
       DEC    $EF     
       BNE    L14A7   
       LDY    #$FF    
       STY    $A8     
L14A7: LDA    $D5     
       CMP    #$60    
       BCS    L14CA   
       BIT    COLUP1  
       BPL    L14CA   
       BIT    $91     
       BMI    L14CA   
       LDA    #$60    
       STA    $D5     
       LDX    #$03    
       JSR    L1ACF   
       LDA    #$4A    
       STA    $D4     
       STA    $D3     
       LDA    #$00    
       STA    $D1     
       STA    $D2     
L14CA: STA    CXCLR   
       RTS            

L14CD: ROL    $87     
       CLC            
       ROR    $87     
       LDA    #$60    
       STA    $D4     
       STA    $D3     
       LDA    #$8C    
       STA    $9E     
       LDA    #$08    
       STA    $85     
       LDX    #$04    
       LDA    #$D0    
L14E4: STA    $C1,X   
       DEX            
       BPL    L14E4   
       LDA    #$00    
       STA    $D2     
       STA    $D1     
       STA    $A7     
       STA    $A8     
       STA    $9F     
       STA    $89     
       RTS            

L14F8: .byte $00,$00,$00,$00,$00,$00,$00,$00
L1500: NOP            
       NOP            
       LDA    #$00    
       STA    $8E     
       BEQ    L152C   
L1508: JMP    L1627   
L150B: STA    COLUP0  
       LDA    $8E     
       STA    GRP0    
       LDA    ($DA),Y 
       STA    GRP1    
       LDA    ($D6),Y 
       STA    COLUP1  
       JSR    L1CE0   
       DEX            
L151D: TXA            
       SEC            
       SBC    $C6     
       TAY            
       AND    #$F0    
       BNE    L1500   
       LDA    ($DC),Y 
       STA    $8E     
       LDA    ($D8),Y 
L152C: DEC    $96     
       LDY    $96     
       BPL    L150B   
       DEC    $94     
       BMI    L1508   
       STA    COLUP0  
       LDA    $8E     
       STA    GRP0    
       LDY    $94     
       LDA    COLUP1  
       BPL    L1544   
       STY    $91     
L1544: STY    CXCLR   
       LDA.wy $00C7,Y 
       STA    $DA     
       STA    $D6     
       LDA.wy $00B0,Y 
       STA    HMP1    
       DEX            
       AND    #$0F    
       STA    $8D     
       JMP    L1563   
L155A: LDA    #$00    
       TAY            
       BEQ    L1570   
L155F: LDA    #$00    
       BEQ    L1591   
L1563: TXA            
       SEC            
       SBC    $C6     
       TAY            
       AND    #$F0    
       BNE    L155A   
       LDA    ($DC),Y 
       STA    GRP0    
L1570: STA    WSYNC   
       LDA    ($D8),Y 
       STA    COLUP0  
       DEX            
       SEC            
       TXA            
       LDY    $8D     
L157B: DEY            
       BPL    L157B   
       STA    RESP1   
       SBC    $C6     
       STA    WSYNC   
       TAY            
       AND    #$F0    
       BNE    L155F   
       LDA    ($D8),Y 
       STA    COLUP0  
       LDA    ($DC),Y 
       STA    GRP0    
L1591: STA    $8E     
       TXA            
       LDY    $95     
       DEX            
       CMP    $C6     
       BCS    L15E4   
       CPY    #$05    
       BEQ    L15A6   
       LDA.wy $00C1,Y 
       CMP    #$D0    
       BNE    L15B7   
L15A6: LDA    $C0     
       STA    HMP0    
       AND    #$0F    
       STA    $8F     
       LDA    $9F     
       STA    $C6     
       LDA    $D5     
       JMP    L15C6   
L15B7: STA    $C6     
       LDA.wy $00B9,Y 
       STA    HMP0    
       AND    #$0F    
       STA    $8F     
       LDA.wy $00D0,Y 
       INY            
L15C6: STA    WSYNC   
       STA    $DC     
       STA    $D8     
       STY    $95     
       LDY    $8F     
       NOP            
       DEX            
L15D2: DEY            
       BPL    L15D2   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       JMP    L1615   
L15E1: .byte $4C,$27,$16
L15E4: TXA            
       SEC            
       SBC    $C6     
       TAY            
       AND    #$F0    
       BNE    L15F1   
       LDA    ($DC),Y 
       STA    $8E     
L15F1: STA    WSYNC   
       LDA    $8E     
       STA    GRP0    
       LDA    ($D8),Y 
       STA    COLUP0  
       DEX            
       TXA            
       SEC            
       SBC    $C6     
       TAY            
       AND    #$F0    
       BNE    L1623   
       LDA    ($DC),Y 
       STA    $8E     
L1609: LDA    ($D8),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       LDA    $8E     
       STA    GRP0    
L1615: DEX            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$0A    
       STA    $96     
       STA    HMCLR   
       JMP    L151D   
L1623: LDY    #$00    
       BEQ    L1609   
L1627: LDA    $89     
       ROL            
       ROL            
       ROL            
       ROL            
       STA    ENABL   
       LDX    $A1     
       LDA    #$4C    
       STA    COLUPF  
       LDY    #$00    
       STY    GRP0    
       LDA    #$C0    
       STA    TIM8T   
       INY            
       STY    NUSIZ1  
       STY    NUSIZ0  
       LDA    $BE     
       STA    WSYNC   
       STA    HMP1    
       CLC            
       ADC    #$10    
       STA    HMP0    
       NOP            
       AND    #$0F    
       TAY            
L1652: DEY            
       BPL    L1652   
       STA    RESP1   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       TAY            
L165E: DEY            
       BPL    L165E   
       JMP.ind ($00E8)
L1664: .byte $A9,$A9,$A9,$A9,$AD,$A5,$EA,$BD,$A0,$1F,$25,$86,$85,$07,$85,$06
       .byte $EA,$A0,$0F,$C4,$83,$B0,$0A,$C4,$84,$2A,$2A,$EA,$85,$1F,$4C,$8B
       .byte $16,$A5,$86,$A9,$00,$F0,$F5,$A5,$A9,$85,$0C,$85,$0B,$EA,$EA,$EA
       .byte $EA,$B1,$E6,$85,$1C,$B1,$E4,$85,$1B,$B1,$E2,$AA,$B1,$E0,$86,$1C
       .byte $85,$1B,$88,$10,$CE,$C8,$84,$1C,$84,$1B
L16AE: LDA    INTIM   
       BNE    L16AE   
       STA    WSYNC   
       LDA    $EC     
       STA    COLUPF  
       LDX    #$FF    
       STX    PF1     
       STX    PF0     
       STX    PF2     
       LDA    #$04    
       CLC            
       ADC    $A0     
       TAY            
       LDA    #$8C    
       STA    $8F     
       LDA    #$1D    
       STA    $E1     
       STA    $E3     
       STA    $E5     
       STA    $E7     
       STA    $E9     
       STA    $EB     
       STA    HMCLR   
       LDX    #$0B    
L16DD: DEX            
       LDA.wy $00AA,Y 
       STY    $8D     
       PHA            
       AND    #$F0    
       LSR            
       ADC    #$96    
       CMP    #$96    
       BNE    L16F1   
       LDA    $8F     
       BNE    L16F5   
L16F1: LDY    #$96    
       STY    $8F     
L16F5: STA    $E0,X   
       DEX            
       PLA            
       DEX            
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$96    
       CMP    #$96    
       BNE    L1709   
       LDA    $8F     
       BNE    L1711   
L1709: BIT    $82     
       BVS    L1711   
       LDY    #$96    
       STY    $8F     
L1711: STA    $E0,X   
       DEX            
       CPX    #$04    
       BCS    L1720   
       BIT    $82     
       BVS    L1720   
       LDY    #$96    
       STY    $8F     
L1720: LDY    $8D     
       DEY            
       DEY            
       BPL    L16DD   
       STA    WSYNC   
       LDY    #$01    
       LDX    $A0     
       LDA    L1F90,X 
       AND    $86     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    REFP1   
       STA    REFP0   
       LDA    #$03    
       STA    NUSIZ1  
       STA    NUSIZ0  
       LDA    #$F0    
       STA    RESP1   
       STA    RESP0   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STY    VDELP1  
       STY    VDELP0  
       LDY    #$07    
       JSR    L1CAE   
       LDX    $A0     
       LDY    $92,X   
       LDX    #$0A    
       LDA    #$E6    
L175E: DEY            
       BPL    L1763   
       LDA    #$8C    
L1763: STA    $E0,X   
       DEX            
       DEX            
       BPL    L175E   
       LDY    #$04    
       JSR    L1CAE   
       STY    VDELP1  
       STY    VDELP0  
       LDA    #$23    
       STA    TIM64T  
       LDA    #$02    
       STA    VBLANK  
       LDY    $A1     
       LDA    L1AEE,Y 
       AND    $86     
       STA    $EC     
       LDA    $F0     
       BEQ    L178A   
       DEC    $F0     
L178A: BIT    $87     
       BMI    L1794   
       JSR    L1420   
       JMP    L180C   
L1794: LDA    $A2     
       LSR            
       BCC    L180C   
       LDX    #$FF    
       BIT    COLUP1  
       BMI    L17A3   
       LDX    $91     
       BMI    L180C   
L17A3: INX            
       STX    $91     
       LDA    $91     
       BNE    L17C0   
       LDA    $A7     
       BMI    L180C   
       BEQ    L180C   
       LDA    #$00    
       STA    $9F     
       STA    $A8     
       LDA    #$80    
       STA    $88     
       LDA    #$78    
       STA    $C7     
       BNE    L180C   
L17C0: LDA    $C7,X   
       CMP    #$82    
       BNE    L17F1   
       LDA    #$01    
       JSR    L1CE1   
       LDX    #$07    
       JSR    L1ACF   
       LDA    $8C     
       LSR            
       BCC    L17E3   
       LDA    $A0     
       EOR    #$01    
       TAX            
       LDY    $92,X   
       BMI    L17E3   
       TAX            
       STA    $A0     
       BNE    L17EC   
L17E3: LDY    $A1     
       INY            
       CPY    #$09    
       BCS    L17EC   
       STY    $A1     
L17EC: JSR    L14CD   
       BEQ    L180C   
L17F1: LDY    #$FF    
       LDA    $C7,X   
L17F5: INY            
       CMP    L1CF9,Y 
       BCS    L17F5   
       LDA    #$8C    
       STA    $C7,X   
       LDX    L1E3C,Y 
       JSR    L1ACF   
       LDA    L1ADE,Y 
       ASL            
       JSR    L1CE1   
L180C: STA    CXCLR   
       LDY    $DE     
       BEQ    L1816   
       DEC    $DE     
       BNE    L1821   
L1816: LDA    #$00    
       STA    $89     
       LDY    #$06    
       STY    $83     
       DEY            
       STY    $84     
L1821: LDA    SWCHB   
       ASL            
       LDX    $A0     
       BNE    L182A   
       ASL            
L182A: LDY    $A1     
       LDA    #$00    
       ADC    L1AF7,Y 
       STA    $8D     
       LDX    #$04    
L1835: LDA    $C1,X   
       CMP    #$D0    
       BEQ    L1845   
       ADC    $8D     
       CMP    #$95    
       BCC    L1843   
       LDA    #$D0    
L1843: STA    $C1,X   
L1845: DEX            
       BPL    L1835   
       BIT    $87     
       BVS    L1850   
       BIT    REFP1   
       BPL    L187B   
L1850: LDA    SWCHB   
       LSR            
       BCC    L187B   
       LSR            
       BCS    L189F   
       LDA    $F0     
       BNE    L189B   
       LDA    #$1F    
       STA    $F0     
       LDA    #$00    
       STA    $A0     
       STA    $87     
       LDA    #$96    
       STA    $9E     
       STA    $9F     
       LDA    #$C0    
       STA    $82     
       INC    $8C     
       LDA    $8C     
       AND    #$07    
       STA    $8C     
       BPL    L189B   
L187B: LDA    #$81    
       STA    $82     
       LDX    #$18    
       LDA    #$00    
L1883: STA    $97,X   
       DEX            
       BPL    L1883   
       LDA    #$06    
       STA    $92     
       STA    $93     
       JSR    L14CD   
       LDA    #$40    
       STA    $87     
       LDA    $8C     
       AND    #$FE    
       STA    $A1     
L189B: LDA    #$FF    
       STA    $86     
L189F: LDA    $A1     
       LSR            
       TAX            
       INX            
       INX            
       STX    $8F     
       LDA    $A2     
       AND    #$03    
       BNE    L18EE   
       LDX    $9E     
       LDA    $9F     
       BNE    L18B5   
       LDX    #$50    
L18B5: STX    $8E     
       LDA    $9C     
       LDX    $A9     
       BMI    L18BF   
       ADC    #$19    
L18BF: LDY    $A1     
       CMP    $8E     
       BCS    L18D6   
       STA    $8D     
       LDA    $8E     
       SEC            
       SBC    $8D     
       CMP    L1FA9,Y 
       BCC    L18EE   
L18D1: INX            
       BEQ    L18D1   
       BNE    L18E1   
L18D6: SEC            
       SBC    $8E     
       CMP    L1FA9,Y 
       BCC    L18EE   
L18DE: DEX            
       BEQ    L18DE   
L18E1: TXA            
       BPL    L18E8   
       EOR    #$FF    
       ADC    #$00    
L18E8: CMP    $8F     
       BCS    L18EE   
       STX    $A9     
L18EE: LDA    $A9     
       CLC            
       ADC    $9C     
       CMP    #$81    
       BCS    L18FB   
       STA    $9C     
       BCC    L1905   
L18FB: LDX    #$01    
       BIT    $A9     
       BMI    L1903   
       LDX    #$FF    
L1903: STX    $A9     
L1905: LDA    $DF     
       ROR            
       ROR            
       ROR            
       AND    #$C0    
       LDX    #$10    
       BIT    $89     
       BVC    L1918   
       LDA    #$C0    
       LDY    $A9     
       BVS    L1920   
L1918: LDY    $A9     
       BNE    L1920   
       LDA    #$80    
       BMI    L1927   
L1920: BPL    L1927   
       CLC            
       ADC    #$30    
       LDX    #$F0    
L1927: STX    $8D     
       LDX    #$07    
       LDY    #$1B    
L192D: STY    $E0,X   
       DEX            
       STA    $E0,X   
       CLC            
       ADC    $8D     
       DEX            
       BPL    L192D   
       LDA    $A2     
       AND    #$03    
       BNE    L1946   
       DEC    $DF     
       BPL    L1946   
       LDA    #$02    
       STA    $DF     
L1946: LDA    SWCHA   
       LDX    $A0     
       BEQ    L1951   
       ASL            
       ASL            
       ASL            
       ASL            
L1951: LDX    #$00    
       LDY    #$00    
       BIT    $87     
       BVC    L1997   
       PHA            
       LDA    $ED     
       CMP    #$03    
       PLA            
       BCS    L1997   
       PHA            
       LDA    $D5     
       CMP    #$60    
       PLA            
       BCS    L1997   
       BIT    $87     
       BPL    L1987   
       BIT    $88     
       BPL    L1987   
       AND    #$F0    
       CMP    #$B0    
       BNE    L1997   
       LDA    #$82    
       STA    $C7     
       LDA    #$10    
       STA    $9F     
       LDA    #$88    
       STA    $9E     
       LDA    #$00    
       STA    $88     
L1987: ASL            
       BCS    L198B   
       INX            
L198B: ASL            
       BCS    L198F   
       DEX            
L198F: ASL            
       BCS    L1993   
       DEY            
L1993: ASL            
       BCS    L1997   
       INY            
L1997: BIT    $87     
       BMI    L19A5   
       LDA    $DC     
       CMP    #$30    
       BEQ    L19E1   
       LDA    $9F     
       BNE    L19E1   
L19A5: TXA            
       PHP            
       BEQ    L19AB   
       LSR    $A3     
L19AB: TYA            
       PHP            
       LDX    #$01    
       BIT    $87     
       BMI    L19B5   
       PLP            
       DEX            
L19B5: LDA    $A7,X   
       PLP            
       BNE    L19C2   
       ORA    #$00    
       BEQ    L19DE   
       BPL    L19D5   
       BMI    L19CC   
L19C2: PHP            
       CPX    #$00    
       BNE    L19C9   
       STA    $8A     
L19C9: PLP            
       BMI    L19D5   
L19CC: CLC            
       ADC    #$1F    
       BCS    L19DC   
       BVS    L19DE   
       BVC    L19DC   
L19D5: SEC            
       SBC    #$1F    
       BCC    L19DC   
       BVS    L19DE   
L19DC: STA    $A7,X   
L19DE: DEX            
       BPL    L19B5   
L19E1: LDX    #$01    
L19E3: LDY    #$00    
       BIT    $87     
       BPL    L19F1   
       INY            
       LDA    $A1     
       CMP    #$04    
       BCC    L19F1   
       INY            
L19F1: LDA    $A7,X   
       ASL            
       BCS    L1A0F   
L19F6: CLC            
       PHA            
       ADC    $A5,X   
       STA    $A5,X   
       BCC    L1A09   
       LDA    $9E,X   
       ADC    #$00    
       CMP    L1F8C,X 
       BCS    L1A09   
       STA    $9E,X   
L1A09: PLA            
       DEY            
       BPL    L19F6   
       BMI    L1A37   
L1A0F: ROR            
       CMP    #$80    
       BNE    L1A16   
       LDA    #$81    
L1A16: EOR    #$FF    
       CLC            
       ADC    #$01    
       ASL            
       STA    $8D     
L1A1E: LDA    $A5,X   
       SEC            
       SBC    $8D     
       STA    $A5,X   
       BCS    L1A34   
       LDA    $9E,X   
       SBC    #$00    
       BCC    L1A34   
       CMP    L1F8E,X 
       BCC    L1A34   
       STA    $9E,X   
L1A34: DEY            
       BPL    L1A1E   
L1A37: DEX            
       BPL    L19E3   
       LDX    $85     
       BEQ    L1A68   
       LDA    $80     
       AND    #$07    
       CLC            
       ADC    $A1     
       TAY            
       LDA    L1FEB,Y 
       STA    $C7,X   
       LDA    $81     
       AND    #$0F    
       TAY            
       LDA    $81     
       CPY    #$0A    
       BCC    L1A5A   
       AND    #$F7    
       ADC    #$01    
L1A5A: AND    #$EF    
       STA    $B0,X   
       DEC    $85     
       LDA    #$78    
       STA    $C7     
       LDA    #$88    
       STA    $B0     
L1A68: JSR    L1E9A   
       LDA    $A2     
       AND    #$07    
       BNE    L1A79   
       LDA    $80     
       AND    #$07    
       ORA    #$80    
       STA    $F1     
L1A79: BIT    $87     
       BPL    L1AB0   
       LDA    $A2     
       AND    #$03    
       BNE    L1AB0   
       LDX    #$04    
L1A85: LDA    $C1,X   
       CMP    #$D0    
       BEQ    L1A91   
       LDA    $D0,X   
       EOR    #$10    
       STA    $D0,X   
L1A91: DEX            
       BPL    L1A85   
       LDX    #$08    
L1A96: LDA    $C7,X   
       CMP    #$3C    
       BCS    L1AAD   
       LDY    #$06    
L1A9E: DEY            
       CMP    L1FB3,Y 
       BNE    L1A9E   
       TYA            
       EOR    #$01    
       TAY            
       LDA    L1FB3,Y 
       STA    $C7,X   
L1AAD: DEX            
       BPL    L1A96   
L1AB0: BIT    $0285   
       BPL    L1AB0   
       JMP    L101E   
L1AB8: LDA    #$C0    
       STA    $87     
       LDA    #$00    
       STA    COLUBK  
       STA    $A8     
       STA    $9F     
       STA    $9C     
       LDA    #$01    
       STA    $A9     
       LDA    #$80    
       STA    $88     
       RTS            

L1ACF: LDA    L1FD9,X 
       CMP    $ED     
       BCC    L1ADD   
       STA    $ED     
       LDA    L1FE2,X 
       STA    $EE     
L1ADD: RTS            

L1ADE: .byte $82,$81,$30,$08
L1AE2: .byte $00,$60,$FF,$FF
L1AE6: .byte $00,$DB,$FF,$FF
L1AEA: .byte $00,$B6,$FF,$FF
L1AEE: .byte $0A,$BA,$1A,$DA,$BA,$7A,$CA,$6A,$5A
L1AF7: .byte $02,$02,$02,$02,$02,$03,$03,$03,$04,$2E,$6C,$F9,$FF,$BF,$3F,$7F
       .byte $FF,$F7,$E0,$E0,$60,$30,$19,$1F,$0E,$00,$F0,$FC,$FF,$FF,$FF,$FF
       .byte $8F,$07,$03,$81,$4F,$C3,$9E,$02,$3E,$70,$61,$F9,$F1,$FF,$FF,$FC
       .byte $F8,$F1,$E0,$80,$00,$00,$02,$00,$10,$00,$20,$90,$F8,$FF,$EF,$F8
       .byte $70,$E0,$00,$00,$00,$40,$00,$00,$00,$38,$70,$F8,$7F,$3F,$3F,$FF
       .byte $FF,$F3,$E0,$60,$30,$11,$1F,$0E,$00,$00,$78,$FE,$FF,$FF,$FF,$FF
       .byte $CF,$87,$C3,$47,$C1,$8F,$02,$1E,$00,$EC,$D9,$F9,$F1,$FF,$FF,$FC
       .byte $F8,$F1,$E0,$80,$00,$00,$00,$00,$00,$00,$20,$90,$F8,$FF,$EF,$F9
       .byte $70,$E0,$00,$04,$08,$10,$40,$00,$00,$7E,$30,$71,$7B,$7F,$3F,$7F
       .byte $FF,$F7,$E0,$E0,$60,$30,$19,$1F,$0E,$00,$F0,$FC,$FF,$FF,$FF,$FF
       .byte $8F,$07,$03,$87,$41,$CF,$82,$1E,$21,$38,$61,$E1,$F1,$FF,$FF,$F8
       .byte $F0,$E1,$C0,$80,$00,$00,$00,$00,$00,$00,$20,$90,$F8,$FF,$EF,$F9
       .byte $70,$E1,$02,$04,$04,$08,$00,$00,$00,$7E,$30,$71,$7B,$7F,$3F,$7F
       .byte $FF,$F7,$E0,$E0,$60,$30,$19,$1F,$0E,$00,$F0,$FC,$FF,$FF,$FF,$FF
       .byte $8F,$07,$03,$87,$41,$CF,$82,$1E,$21,$70,$6E,$F8,$FC,$FF,$FF,$FB
       .byte $F1,$EB,$CB,$8F,$06,$03,$03,$07,$0E,$00,$00,$00,$00,$00,$80,$C0
       .byte $C0,$F0,$E0,$E8,$F0,$E0,$30,$10,$18,$00,$C2,$42,$4E,$58,$50,$70
       .byte $30,$30,$70,$78,$3C,$38,$60,$60,$60,$00,$60,$20,$24,$3C,$38,$30
       .byte $30,$30,$30,$70,$38,$30,$60,$60,$60,$00,$18,$28,$18,$38,$70,$70
       .byte $30,$30,$30,$F4,$B4,$38,$60,$60,$60,$00,$7C,$60,$3C,$0E,$0E,$7E
       .byte $04,$0C,$0C,$00,$00,$00,$00,$00,$00,$00,$10,$5A,$1A,$48,$42,$1A
       .byte $3C,$6E,$FE,$3F,$6E,$3A,$3C,$18,$00,$52,$08,$40,$12,$02,$48,$00
       .byte $98,$3D,$7A,$5E,$FE,$74,$19,$24,$08,$00,$00,$00,$00,$C2,$4E,$48
       .byte $7C,$3E,$06,$06,$07,$3F,$03,$06,$06,$00,$00,$00,$30,$31,$99,$FF
       .byte $38,$38,$78,$4C,$4F,$61,$20,$00,$00,$00,$00,$20,$3B,$0A,$0A,$0E
       .byte $9C,$B8,$F0,$FC,$E4,$C4,$C0,$00,$00,$00,$00,$04,$AA,$1F,$4A,$14
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$5E,$07,$2F,$8A,$00
       .byte $00,$00,$00,$00,$00,$00,$00
L1CAE: STY    $8E     
       LDA    ($EA),Y 
       STA    GRP1    
       STA    WSYNC   
       LDA    ($E8),Y 
       STA    GRP0    
       LDA    ($E6),Y 
       STA    GRP1    
       LDA    ($E4),Y 
       STA    $8F     
       LDA    ($E2),Y 
       TAX            
       LDA    ($E0),Y 
       TAY            
       LDA    $8F     
       STA    GRP0    
       STX    GRP1    
       STY    GRP0    
       STY    GRP1    
       LDY    $8E     
       DEY            
       BPL    L1CAE   
       INY            
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
L1CE0: RTS            

L1CE1: SED            
       LDX    $A0     
       BCC    L1CE8   
       INX            
       INX            
L1CE8: CLC            
L1CE9: ADC    $AA,X   
       STA    $AA,X   
       BCC    L1CF7   
       INX            
       INX            
       LDA    #$01    
       CPX    #$06    
       BCC    L1CE9   
L1CF7: CLD            
       RTS            

L1CF9: .byte $28,$46,$5A,$FF,$00,$00,$00,$00,$10,$28,$28,$54,$54,$BA,$54,$28
       .byte $10,$00,$10,$28,$28,$54,$54,$BA,$54,$28,$10,$00,$7E,$7E,$5A,$5A
       .byte $00,$81,$00,$24,$00,$00,$7E,$7E,$5A,$5A,$00,$00,$42,$18,$00,$00
       .byte $7E,$95,$95,$95,$95,$56,$56,$42,$81,$00,$7E,$A9,$A9,$A9,$A9,$6A
       .byte $6A,$42,$81,$00,$7E,$7E,$7E,$66,$FF,$54,$28,$00,$00,$00,$42,$66
       .byte $66,$42,$E7,$BD,$BD,$99,$42,$00,$7C,$38,$10,$38,$10,$38,$6C,$AA
       .byte $AA,$00,$3C,$18,$FE,$BF,$AD,$E1,$00,$00,$00,$00,$7C,$38,$10,$38
       .byte $10,$38,$7C,$FE,$FE,$00,$3C,$7E,$FF,$BF,$DF,$7E,$3C,$3C,$7E,$00
       .byte $FF,$FE,$FF,$DF,$FF,$FE,$FF,$FF,$7E,$00,$8F,$8E,$8F,$8B,$8F,$8E
       .byte $8F,$C7,$7E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$6C,$C6
       .byte $86,$86,$C6,$6C,$38,$08,$1C,$18,$18,$18,$18,$38,$10,$FC,$FE,$62
       .byte $30,$18,$8C,$CC,$78,$3C,$6E,$66,$C6,$1C,$0E,$66,$3C,$08,$1C,$0C
       .byte $FE,$CC,$6C,$3C,$1C,$FC,$8E,$0E,$EE,$BC,$80,$FC,$FC,$7C,$C6,$C6
       .byte $FC,$C0,$C0,$FC,$78,$E0,$E0,$70,$30,$18,$8C,$FE,$7E,$3C,$66,$CE
       .byte $7C,$64,$C6,$7C,$38,$78,$CC,$0E,$7E,$CE,$CE,$CC,$78,$00,$A0,$40
       .byte $E0,$40
L1DEB: .byte $67,$67,$67,$68,$68,$68,$69,$69,$64,$64,$65,$65,$65,$66,$66,$66
       .byte $00,$00,$00,$00,$00,$00,$C8,$C8,$C8,$C8,$C8,$44,$00,$44,$44,$44
       .byte $44,$44,$18,$18,$12,$00,$C8,$C8,$C8,$C8,$C8,$44,$00,$44,$44,$44
       .byte $44,$44,$18,$18,$12,$00,$C8,$C8,$C8,$C8,$C8,$44,$00,$44,$44,$44
       .byte $44,$44,$18,$18,$12,$00,$C8,$C8,$C8,$44,$44,$44,$44,$18,$18,$00
       .byte $00
L1E3C: .byte $05,$06,$07,$08,$00,$44,$44,$F6,$44,$44,$44,$44,$44,$44,$44,$44
       .byte $44,$44,$44,$42,$00,$44,$44,$F6,$44,$44,$44,$44,$44,$44,$44,$44
       .byte $44,$44,$44,$42,$00,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$44,$00,$44,$44
       .byte $44,$44,$18,$12,$00,$12,$18,$18,$18,$44,$44,$44,$44,$C8,$C8,$C8
       .byte $C8,$18,$18,$12,$00,$C8,$C8,$C8,$C8,$C8,$44,$00,$44,$44,$44,$44
       .byte $18,$18,$18,$12
L1E90: .byte $00,$38,$44,$6C,$D6,$FE,$C6,$82,$82,$00
L1E9A: LDA    $87     
       BEQ    L1ED6   
       LDA    $EE     
       BNE    L1EA6   
       STA    $ED     
       BEQ    L1ED6   
L1EA6: DEC    $EE     
       LDX    $ED     
       LDY    L1FCF,X 
       STY    AUDC1   
       LDY    L1FD4,X 
       DEX            
       BPL    L1EBB   
       LSR            
       LSR            
       LSR            
       JMP    L1ED6   
L1EBB: DEX            
       BMI    L1ED6   
       DEX            
       BMI    L1ED6   
       DEX            
       BPL    L1ECD   
       LDA    $80     
       ORA    #$10    
       TAY            
       LDA    #$08    
       BNE    L1ED6   
L1ECD: LSR            
       EOR    #$1F    
       TAY            
       EOR    #$1F    
       LSR            
       STA    $EC     
L1ED6: STY    AUDF1   
       STA    AUDV1   
       LDY    #$00    
       LDA    $A7     
       ORA    $A8     
       BEQ    L1EF8   
       LDA    $A2     
       AND    #$07    
       BNE    L1EF8   
       BIT    $87     
       BVC    L1EF8   
       BMI    L1EF2   
       LDA    $9F     
       BNE    L1EFC   
L1EF2: LDA    #$1C    
       STA    AUDF0   
       LDY    #$0A    
L1EF8: STY    AUDV0   
       STY    AUDC0   
L1EFC: RTS            

L1EFD: .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF,$88,$88,$88,$FF,$FF,$00,$FA,$FA
       .byte $FA,$FA,$88,$FF,$88,$FA,$FA,$00,$28,$44,$28,$28,$28,$28,$00,$78
       .byte $00,$00,$28,$44,$28,$28,$28,$28,$00,$78,$00,$00,$D8,$88,$88,$88
       .byte $88,$88,$88,$88,$FF,$00,$D8,$88,$88,$88,$88,$88,$88,$88,$FF,$00
       .byte $14,$14,$14,$14,$12,$FC,$FC,$00,$00,$00,$88,$88,$88,$18,$18,$18
       .byte $18,$18,$18,$00,$16,$44,$16,$44,$16,$16,$16,$FF,$FF,$00,$88,$14
       .byte $14,$14,$14,$14,$00,$00,$00,$44,$44,$14,$44,$14,$44,$44,$44,$44
       .byte $14,$00,$18,$88,$18,$18,$18,$18,$88,$88,$18,$00,$12,$12,$16,$12
       .byte $12,$12,$16,$12,$12,$00,$12,$12,$16,$12,$12,$12,$16,$12,$12
L1F8C: .byte $94,$87
L1F8E: .byte $01,$10
L1F90: .byte $00,$44,$00,$10,$1F,$2E,$3D,$4C,$5B,$6A,$79,$88
L1F9C: .byte $1C,$05,$19,$07
L1FA0: .byte $D6,$18,$86,$64,$46,$18,$F6,$02,$0F
L1FA9: .byte $50,$40,$30,$28,$20,$18,$18,$18,$18,$20
L1FB3: .byte $28,$32,$14,$1E,$00,$0A
L1FB9: .byte $70,$70,$F0,$D0,$D0,$D0,$F0,$F0,$50,$00,$00
L1FC4: .byte $00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00
L1FCF: .byte $08,$05,$01,$04,$0C
L1FD4: .byte $1A,$0A,$15,$0A,$10
L1FD9: .byte $00,$01,$02,$03,$04,$01,$01,$01,$01
L1FE2: .byte $1F,$1F,$0F,$0F,$3F,$3F,$2F,$1F,$0F
L1FEB: .byte $64,$5A,$6E,$50,$6E,$46,$50,$64,$5A,$3C,$46,$28,$5A,$0A,$14,$6E
       .byte $F7,$00,$10,$00,$10
