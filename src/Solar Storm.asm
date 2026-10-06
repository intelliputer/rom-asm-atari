; Disassembly of roms/Solar Storm.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Solar Storm.bin
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
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
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
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
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
       JSR    L181E   
       LDA    #$01    
       STA    $94     
       STA    $E5     
       LDA    #$FE    
       STA    $82     
       LDA    #$C0    
       STA    $9F     
L101D: LDA    #$82    
       STA    VBLANK  
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDX    #$2D    
       STX    TIM64T  
       STA    $C4     
       DEC    $96     
       BPL    L103C   
       INC    $96     
L103C: LDA    SWCHB   
       LSR            
       BCC    L1047   
       LSR            
       BCS    L107C   
       BCC    L1054   
L1047: JSR    L181E   
       LDA    #$B0    
       STA    $9F     
       LDA    #$01    
       STA    $82     
       BNE    L107C   
L1054: LDA    $96     
       BNE    L107C   
       LDA    #$1F    
       STA    $96     
       LDA    $97     
       EOR    #$01    
       STA    $97     
       LDA    #$00    
       STA    $82     
       LDX    #$0A    
       LDA    #$74    
L106A: STA    $83,X   
       DEX            
       BPL    L106A   
       LDA    $97     
       CLC            
       ADC    #$01    
       JSR    L1FAB   
       STA    $87     
       JSR    L181E   
L107C: LDX    #$0A    
L107E: LDA    #$1C    
       STA    $84,X   
       LDA    #$1D    
       STA    $D2,X   
       DEX            
       DEX            
       BPL    L107E   
       LDY    #$00    
       LDX    $93     
       LDA    $82     
       BEQ    L10D6   
       CMP    #$FF    
       BNE    L10A2   
       LDA    $97     
       BEQ    L10A2   
       LDA    $80     
       BPL    L10A2   
       TXA            
       EOR    #$01    
       TAX            
L10A2: LDA    L1CE4,X 
       STA    COLUP0  
       STA    COLUP1  
L10A9: LDA    $8F,X   
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    L1FAB   
       STA.wy $0085,Y 
       LDA    $8F,X   
       AND    #$0F    
       JSR    L1FAB   
       STA.wy $0083,Y 
       INY            
       INY            
       INY            
       INY            
       INX            
       INX            
       CPX    #$04    
       BCC    L10A9   
       LDA    #$74    
       STA    $8B     
       LDX    $93     
       LDA    $CF,X   
       JSR    L1FAB   
       STA    $8D     
L10D6: LDA    $82     
       CMP    #$FE    
       BNE    L10ED   
       LDX    #$0A    
       LDA    #$84    
L10E0: LDY    #$1C    
       STY    $84,X   
       STA    $83,X   
       CLC            
       ADC    #$0A    
       DEX            
       DEX            
       BPL    L10E0   
L10ED: LDA    $E5     
       BEQ    L10F4   
       JMP    L18A1   
L10F4: LDX    $93     
       LDA    $82     
       BMI    L112C   
       CMP    #$02    
       BNE    L1116   
       LDA    $E1     
       CMP    #$2C    
       BEQ    L1116   
       CMP    #$1C    
       BEQ    L1116   
       LDA    #$03    
       STA    $CC     
       AND    $80     
       BNE    L1148   
       DEC    $E1     
       DEC    $9F     
       BNE    L1148   
L1116: LDA    $9F     
       CMP    #$C0    
       BEQ    L1148   
       CMP    #$E0    
       BCC    L1134   
       LDA    $80     
       AND    #$07    
       BNE    L1148   
       LDA    #$F0    
       CMP    $9F     
       BNE    L1146   
L112C: LDA    #$3C    
       STA    $E1     
       LDA    #$C0    
       BNE    L1146   
L1134: LDA    L1CE6,X 
       STA    $E1     
       LDA    #$00    
       STA    $CC     
       LDA    $80     
       LSR            
       AND    #$01    
       TAX            
       LDA    L1DB8,X 
L1146: STA    $9F     
L1148: LDA    #$1E    
       STA    $A0     
       LDA    #$1F    
       STA    $E2     
       LDA    #$1E    
       STA    $BF     
       LDY    #$04    
L1156: LDA.wy $00B3,Y 
       BEQ    L1187   
       CMP    #$E0    
       BCC    L1173   
       LDA    $80     
       AND    #$07    
       BNE    L1187   
       LDA    #$F0    
       CMP.wy $00B3,Y 
       BNE    L1184   
       LDA    #$F0    
       STA.wy $00A4,Y 
       BNE    L1187   
L1173: JSR    L1BFA   
       LDA    $80     
       LSR            
       LSR            
       AND    #$01    
       CLC            
       ADC    L1DA0,X 
       TAX            
       LDA    L1DB8,X 
L1184: STA.wy $00B3,Y 
L1187: DEY            
       BPL    L1156   
       LDY    #$00    
L118C: LDA.wy $00A4,Y 
       CMP    #$F0    
       BNE    L11B4   
       TYA            
L1194: LDX    $A5,Y   
       STX    $A4,Y   
       LDX    $AA,Y   
       STX    $A9,Y   
       LDX    $B4,Y   
       STX    $B3,Y   
       LDX    $B9,Y   
       STX    $B8,Y   
       INY            
       CPY    #$04    
       BNE    L1194   
       LDX    #$F0    
       STX    $A8     
       LDX    #$00    
       STX    $BC     
       STX    $AD     
       TAY            
L11B4: INY            
       CPY    #$04    
       BCC    L118C   
       LDA    $DF     
       BNE    L11BF   
       LDA    $A2     
L11BF: CLC            
       ADC    #$04    
       JSR    L1881   
       STA    HMM0    
       STA    WSYNC   
       JSR    L1FB5   
       AND    #$0F    
       TAY            
L11CF: DEY            
       BPL    L11CF   
       STA    RESM0   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$00    
       STA    HMM0    
       LDA    $A2     
       JSR    L1881   
       STA    $A3     
       LDX    #$04    
L11E7: LDA    $A9,X   
       JSR    L1881   
       STA    $AE,X   
       DEX            
       BPL    L11E7   
       LDY    #$04    
L11F3: LDX    $A4,Y   
       CPX    #$F0    
       BNE    L11FC   
       DEY            
       BPL    L11F3   
L11FC: STY    $BD     
       LDA    $82     
       CMP    #$03    
       BNE    L120C   
       LDX    #$42    
       LDA    $80     
       AND    #$01    
       BEQ    L1216   
L120C: LDX    $EC     
       BNE    L1216   
       LDX    $C7     
       BEQ    L1216   
       LDX    #$10    
L1216: STX    COLUBK  
       INC    $80     
       BNE    L121E   
       INC    $81     
L121E: BIT    $0285   
       BPL    L121E   
       STA    WSYNC   
       LDA    #$00    
       STA    VBLANK  
       STA    PF0     
       STA    ENAM0   
       STA    WSYNC   
       STA    REFP0   
       STA    REFP1   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       STA    WSYNC   
L1241: DEY            
       BPL    L1241   
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
       LDA    #$09    
       STA    $9B     
L125F: LDY    $9B     
       LDA    ($8D),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    ($89),Y 
       STA    GRP0    
       LDA    ($87),Y 
       STA    $9C     
       LDA    ($85),Y 
       TAX            
       LDA    ($83),Y 
       TAY            
       LDA    $9C     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $9B     
       BPL    L125F   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $E5     
       BEQ    L12A2   
       JMP    L1AAB   
L12A2: LDA    $A3     
       STA    HMP0    
       STA    WSYNC   
       JSR    L1FB5   
       AND    #$0F    
       TAY            
L12AE: DEY            
       BPL    L12AE   
       STA    RESP0   
       STA    WSYNC   
       LDA    #$0E    
       STA    COLUP0  
       LDY    $BD     
       LDA.wy $00B3,Y 
       STA    $BE     
       LDA.wy $00AE,Y 
       STA    HMP1    
       STA    WSYNC   
       JSR    L1FB5   
       AND    #$0F    
       TAY            
L12CD: DEY            
       BPL    L12CD   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$A0    
       CPX    $C7     
       BCS    L12E0   
       LDA    #$02    
       STA    ENAM0   
L12E0: STA    WSYNC   
       LDA    #$00    
       STA    HMP0    
       LDA    $C1     
       AND    #$07    
       TAY            
       LDA    L1D98,Y 
       STA    $E3     
       LDA    #$44    
       STA    COLUP1  
       LDA    $BD     
       BPL    L12FB   
       JMP    L1399   
L12FB: STA    WSYNC   
       LDY    $BD     
       TXA            
       SEC            
       SBC.wy $00A4,Y 
       TAY            
       BEQ    L1357   
       AND    #$F0    
       BNE    L1313   
       LDA    ($BE),Y 
       STA    GRP1    
       LDA    ($E3),Y 
       STA    COLUP1  
L1313: CPX    $9E     
       BCS    L131B   
       LDA    #$40    
       STA    PF0     
L131B: LDY    $93     
       LDA.wy $0008,Y 
       BMI    L1324   
       STX    $C4     
L1324: DEX            
       CPX    #$0F    
       BNE    L12FB   
       LDA    $DF     
       BNE    L1331   
       LDA    #$00    
       STA    ENAM0   
L1331: STX    WSYNC   
       TXA            
       TAY            
       LDA    ($9F),Y 
       STA    GRP0    
       LDA    ($E1),Y 
       STA    COLUP0  
       LDY    $BD     
       TXA            
       SEC            
       SBC.wy $00A4,Y 
       TAY            
       AND    #$F0    
       BNE    L1351   
       LDA    ($BE),Y 
       STA    GRP1    
       LDA    ($E3),Y 
       STA    COLUP1  
L1351: DEX            
       BPL    L1331   
       JMP    L13D1   
L1357: DEX            
       CPX    #$0F    
       BEQ    L13B9   
       DEC    $BD     
       LDY    $BD     
       BMI    L1399   
       LDA.wy $00B3,Y 
       STA    $BE     
       LDA.wy $00AE,Y 
       STA    HMP1    
       DEX            
       STX    $9C     
       LDX    $93     
       STA    WSYNC   
       AND    #$0F    
       TAY            
       LDA    COLUPF,X
       BMI    L1395   
       LDA    $9C     
       STA    $C4     
L137E: DEY            
       BPL    L137E   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $9C     
       DEX            
       CPX    $C7     
       BCS    L1392   
       LDA    #$02    
       STA    ENAM0   
L1392: JMP    L12FB   
L1395: NOP            
       JMP    L137E   
L1399: STA    WSYNC   
       CPX    $9E     
       BCS    L13A3   
       LDA    #$40    
       STA    PF0     
L13A3: LDY    $93     
       LDA.wy $0008,Y 
       BMI    L13AC   
       STX    $C4     
L13AC: CPX    $C7     
       BCS    L13B4   
       LDA    #$02    
       STA    ENAM0   
L13B4: DEX            
       CPX    #$10    
       BCS    L1399   
L13B9: LDY    #$0F    
       LDA    $DF     
       BNE    L13C3   
       LDA    #$00    
       STA    ENAM0   
L13C3: STX    WSYNC   
       LDA    ($9F),Y 
       STA    GRP0    
       LDA    ($E1),Y 
       STA    COLUP0  
       DEY            
       DEX            
       BPL    L13C3   
L13D1: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    $93     
       LDA    #$1D    
       STA    $DE     
       LDY    #$88    
       LDA    $C5,X   
       CMP    #$40    
       BCC    L13E9   
       LDY    #$80    
L13E9: STY    $DD     
       STA    WSYNC   
       LDA    #$48    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $80     
       AND    #$01    
       TAX            
       LDA    L1CE0,X 
       STA    HMP0    
       LDA    L1CE2,X 
       NOP            
       STA    HMP1    
       STA    RESP0   
       NOP            
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       LDA    ($DD),Y 
L1416: STA    WSYNC   
       STA    COLUP0  
       STA    COLUP1  
       NOP            
       LDA    ($DB),Y 
       STA    GRP0    
       LDA    ($D9),Y 
       STA    GRP1    
       LDA    ($D3),Y 
       TAX            
       LDA    ($D7),Y 
       STA    GRP0    
       LDA    ($D5),Y 
       STA    GRP1    
       STX    GRP0    
       LDA    ($D1),Y 
       STA    GRP1    
       LDA    ($DD),Y 
       DEY            
       BPL    L1416   
L143B: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    $DF     
       STA    ENAM0   
       STA    $EC     
       LDA    #$28    
       STA    COLUP1  
       LDA    #$20    
       STA    TIM64T  
       LDA    $E5     
       BEQ    L145B   
       JMP    L19E3   
L145B: LDA    $82     
       CMP    #$01    
       BNE    L14C1   
       LDA    $C2     
       BNE    L14C1   
       LDY    #$04    
L1467: LDA.wy $00A4,Y 
       CMP    #$F0    
       BNE    L14C1   
       DEY            
       BPL    L1467   
       LDX    $93     
       LDA    $CF,X   
       BEQ    L148C   
       LDA    $91,X   
       CMP    $E8,X   
       BCC    L148C   
       SED            
       LDA    $E8,X   
       CLC            
       ADC    #$05    
       STA    $E8,X   
       CLD            
       LDA    #$01    
       STA    $E5     
       BNE    L14D5   
L148C: LDA    $97     
       BEQ    L149F   
       LDA    $93     
       EOR    #$01    
       TAY            
       LDX    $CF,Y   
       BEQ    L149F   
       STA    $93     
       LDA    $93     
       BNE    L14AB   
L149F: INC    $C1     
       LDA    $C1     
       CMP    #$10    
       BCC    L14AB   
       LDA    #$0C    
       STA    $C1     
L14AB: LDA    $C1     
       CLC            
       ADC    #$0A    
       STA    $C2     
       LDX    $C1     
       LDA    L1F3C,X 
       STA    $C0     
       LDA    #$02    
       STA    $82     
       LDA    #$BF    
       STA    $CB     
L14C1: LDA    $82     
       CMP    #$02    
       BNE    L14D5   
       LDA    $CB     
       CMP    #$4F    
       BEQ    L14D1   
       DEC    $CB     
       BNE    L14D5   
L14D1: LDA    #$01    
       STA    $82     
L14D5: LDA    $82     
       BMI    L14E1   
       CMP    #$01    
       BNE    L153C   
       LDA    $C2     
       BEQ    L153C   
L14E1: DEC    $C3     
       BNE    L153C   
       DEC    $C2     
       LDX    $C1     
       LDA    L1C64,X 
       STA    $C3     
       LDY    #$00    
L14F0: LDA.wy $00A4,Y 
       CMP    #$F0    
       BEQ    L14FE   
       INY            
       CPY    #$05    
       BNE    L14F0   
       BEQ    L153C   
L14FE: LDA    #$A0    
       STA.wy $00A4,Y 
       LDX    #$10    
       LDA    $94     
       AND    #$1F    
       CMP    $C1     
       BCS    L1513   
       LDA    #$3C    
       STA    $EA     
       LDX    #$00    
L1513: STX    $B3,Y   
       LDA    $94     
       CMP    #$8C    
       BCC    L151C   
       LSR            
L151C: CMP    #$0C    
       BCS    L1522   
       LDA    #$0C    
L1522: STA.wy $00A9,Y 
       LDX    $C1     
       LDA    L1F4C,X 
       LDX    $B3,Y   
       BNE    L1530   
       LDA    #$11    
L1530: BIT    $94     
       BPL    L1539   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L1539: STA.wy $00B8,Y 
L153C: LDA    $C0     
       JSR    L186D   
       STA    $9B     
       LDY    #$04    
L1545: LDA.wy $00A4,Y 
       CMP    #$F0    
       BEQ    L1591   
       LDA.wy $00A4,Y 
       SEC            
       SBC    $9B     
       TAX            
       CLC            
       ADC    #$0F    
       CMP    #$B1    
       BCC    L156B   
       LDA    #$05    
       LDX    $B3,Y   
       BEQ    L1566   
       JSR    L1BFA   
       LDA    L1DA8,X 
L1566: JSR    L1FD3   
       LDX    #$F0    
L156B: STX    $A4,Y   
       STY    $9C     
       LDA.wy $00B8,Y 
       JSR    L186D   
       LDY    $9C     
       CLC            
       ADC.wy $00A9,Y 
       STA.wy $00A9,Y 
       CMP    #$8C    
       BCS    L1586   
       CMP    #$0C    
       BCS    L1591   
L1586: LDA.wy $00B8,Y 
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA.wy $00B8,Y 
L1591: DEY            
       BPL    L1545   
       LDY    $93     
       LDA    SWCHA   
       AND    L1F00,Y 
       BNE    L15CB   
       LDA    $CA     
       BNE    L15CF   
       LDA    $82     
       BEQ    L15A8   
       BPL    L15B7   
L15A8: JSR    L181E   
       LDA    #$01    
       STA    $82     
       STA    $CA     
       LDA    #$B0    
       STA    $9F     
       BNE    L1629   
L15B7: LDA    $9F     
       CMP    #$C0    
       BEQ    L15CB   
       CMP    #$E0    
       BCS    L15CB   
       LDA    #$01    
       STA    $CA     
       LDA    #$0D    
       STA    $CD     
       BNE    L15D2   
L15CB: LDA    #$00    
       STA    $CA     
L15CF: JMP    L1629   
L15D2: LDY    #$00    
L15D4: LDA    $A2     
       CLC            
       ADC    #$04    
       TAX            
       CMP.wy $00A9,Y 
       BCC    L1620   
       LDA.wy $00A9,Y 
       CLC            
       ADC    #$0A    
       STA    $9B     
       CPX    $9B     
       BCS    L1620   
       LDX    $B3,Y   
       BNE    L1606   
       LDX    #$04    
       LDA    #$E0    
L15F3: STA    $B3,X   
       DEX            
       BPL    L15F3   
       LDA    #$46    
       STA    $C3     
       STA    $EC     
       LDA    #$3F    
       STA    $CE     
       LDA    #$50    
       BNE    L1610   
L1606: CPX    #$E0    
       BCS    L1620   
       JSR    L1BFA   
       LDA    L1DB0,X 
L1610: JSR    L1FB6   
       LDA.wy $00A4,Y 
       LDX    #$3F    
       STX    $CE     
       LDX    #$E0    
       STX    $B3,Y   
       BNE    L162B   
L1620: INY            
       CPY    #$05    
       BNE    L15D4   
       LDA    #$A7    
       BNE    L162B   
L1629: LDA    #$00    
L162B: STA    $C7     
       LDA    $82     
       CMP    #$01    
       BNE    L168C   
       LDA    $C1     
       LSR            
       BCS    L168C   
       DEC    $EB     
       BNE    L168C   
       AND    #$07    
       TAY            
       LDA    L1F72,Y 
       STA    $EB     
       LDA    $C2     
       BEQ    L168C   
       LDY    #$04    
L164A: LDA.wy $00A4,Y 
       CMP    #$F0    
       BNE    L1656   
       DEY            
       BPL    L164A   
       BMI    L168C   
L1656: LDA.wy $00B3,Y 
       BEQ    L168C   
       CMP    #$E0    
       BCS    L168C   
       LDA.wy $00A4,Y 
       STA    $C7     
       LDA    #$0D    
       STA    $CD     
       LDA.wy $00A9,Y 
       STA    $DF     
       CLC            
       ADC    #$04    
       TAX            
       CMP    $A2     
       BCC    L168C   
       LDA    $A2     
       CLC            
       ADC    #$0A    
       STA    $9B     
       CPX    $9B     
       BCS    L168C   
       LDA    $9F     
       CMP    #$C0    
       BEQ    L168C   
       CMP    #$E0    
       BCS    L168C   
       BCC    L16C7   
L168C: LDA    $82     
       CMP    #$01    
       BNE    L16DB   
       LDA    $9F     
       CMP    #$C0    
       BEQ    L16DB   
       CMP    #$E0    
       BCS    L16DB   
       LDY    #$04    
L169E: LDA.wy $00B3,Y 
       CMP    #$E0    
       BCS    L16C2   
       LDA.wy $00A4,Y 
       CMP    #$F0    
       BEQ    L16C2   
       CMP    #$0E    
       BCS    L16C2   
       LDA    $A2     
       SEC            
       SBC    #$07    
       CMP.wy $00A9,Y 
       BCS    L16C2   
       CLC            
       ADC    #$0E    
       CMP.wy $00A9,Y 
       BCS    L16C7   
L16C2: DEY            
       BPL    L169E   
       BMI    L16DB   
L16C7: JSR    L1FC6   
       LDA    #$00    
       STA    $C2     
       LDX    $93     
       LDA    $CF,X   
       BEQ    L16DB   
       DEC    $CF,X   
       BNE    L16DB   
       JSR    L1FE2   
L16DB: LDA    $82     
       BMI    L16FE   
       LDA    $9F     
       CMP    #$E0    
       BCS    L16FE   
       LDA    $C4     
       SEC            
       SBC    #$10    
       CMP    #$09    
       BCS    L16F2   
       LDA    #$09    
       BNE    L16F8   
L16F2: CMP    #$91    
       BCC    L16F8   
       LDA    #$90    
L16F8: CLC            
       ADC    $A2     
       ROR            
       STA    $A2     
L16FE: LDA    $82     
       CMP    #$03    
       BNE    L1726   
       DEC    $CB     
       BNE    L1726   
       LDA    $97     
       BEQ    L1716   
       LDX    #$01    
       LDA    $CF     
       BNE    L1724   
       LDA    $D0     
       BNE    L1724   
L1716: LDA    #$05    
       STA    $C1     
       LDA    L1F41   
       STA    $C0     
       LDX    #$00    
       STX    $93     
       DEX            
L1724: STX    $82     
L1726: LDA    $80     
       AND    #$1C    
       LSR            
       LSR            
       TAX            
       LDY    L1CE8,X 
       STY    $D7     
       STY    $D5     
       INY            
       INY            
       STY    $D9     
       STY    $D3     
       INY            
       INY            
       STY    $DB     
       STY    $D1     
       JSR    L1FA2   
       TAY            
       CPY    #$06    
       BCC    L174C   
       LDA    $94     
       BNE    L174F   
L174C: LDA    L1F5C,Y 
L174F: STA    COLUPF  
       LDA    $82     
       CMP    #$03    
       BEQ    L1765   
       CMP    #$01    
       BNE    L176B   
       LDA    $80     
       BNE    L176B   
       LDA    $C5,X   
       CMP    #$28    
       BCC    L176B   
L1765: LDA    $C5,X   
       BEQ    L176B   
       DEC    $C5,X   
L176B: LDA    $C5,X   
       CLC            
       ADC    $C8     
       STA    $9E     
L1772: LDA    $82     
       CMP    #$03    
       BEQ    L179D   
       JSR    L1FA2   
       TAY            
       LDA    L1F6A,Y 
       AND    $80     
       BNE    L179D   
       LDA    $C9     
       BMI    L1791   
       INC    $C8     
       LDA    $C8     
       CMP    #$10    
       BCC    L179D   
       BCS    L1797   
L1791: DEC    $C8     
       LDA    $C8     
       BPL    L179D   
L1797: LDA    $C9     
       EOR    #$80    
       STA    $C9     
L179D: LDY    #$00    
       LDA    $82     
       BEQ    L17F2   
       BMI    L17F2   
       LDA    #$0A    
       STA    AUDC1   
       STA    AUDC0   
       LDA    $C8     
       TAY            
       AND    #$08    
       BEQ    L17B6   
       TYA            
       EOR    #$0F    
       TAY            
L17B6: STY    AUDV0   
       JSR    L1FA2   
       TAX            
       LDA    L1F62,X 
       TAX            
       STX    AUDF0   
       LDA    $80     
       AND    #$04    
       BNE    L17C9   
       DEX            
L17C9: LDA    $CD     
       BEQ    L17DE   
       DEC    $CD     
       LDY    #$07    
       LDX    #$1F    
       LDA    $80     
       LSR            
       BCC    L17DA   
       LDX    #$00    
L17DA: LDA    #$01    
       STA    AUDC1   
L17DE: LDA    $EA     
       BEQ    L17F2   
       LDX    #$04    
       STX    AUDC1   
       DEC    $EA     
       LDY    #$00    
       LDA    $80     
       AND    #$03    
       BNE    L17F2   
       LDY    #$0C    
L17F2: STX    AUDF1   
       STY    AUDV1   
       LDA    $CC     
       BEQ    L1801   
       TAY            
       LDA    #$08    
       STA    AUDC0   
       LDX    #$1F    
L1801: LDA    $CE     
       BEQ    L180F   
       LSR            
       LSR            
       TAX            
       TAY            
       DEC    $CE     
       LDA    #$02    
       STA    AUDC0   
L180F: STX    AUDF0   
       STY    AUDV0   
       JSR    L1DF2   
L1816: BIT    $0285   
       BPL    L1816   
       JMP    L101D   
L181E: LDA    #$46    
       STA    $A2     
       LDY    #$05    
       STY    $E8     
       STY    $E9     
       LDY    #$04    
       STY    $CF     
       STY    $D0     
L182E: LDA    #$F0    
       STA.wy $00A4,Y 
       DEY            
       BPL    L182E   
       LDA    #$00    
       STA    $C1     
       STA    $EA     
       STA    $8F     
       STA    $90     
       STA    $91     
       STA    $92     
       STA    $E6     
       STA    $E7     
       STA    $93     
       STA    $E5     
       LDA    #$0A    
       STA    $C2     
       LDA    #$48    
       STA    $C3     
       LDA    #$08    
       STA    $C0     
       LDA    #$20    
       STA    $C5     
       STA    $C6     
       LDA    #$C8    
       STA    COLUPF  
       LDA    #$1F    
       STA    $E4     
       LDA    #$80    
       STA    $CB     
       STA    $EB     
       RTS            

L186D: TAX            
       LDA    $80     
       AND    #$07    
       TAY            
       TXA            
       CLC            
       ADC    L1DEA,Y 
       LSR            
       LSR            
       LSR            
       EOR    #$10    
       SEC            
       SBC    #$10    
       RTS            

L1881: STA    $9B     
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $9B     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $9A     
       CLC            
       ADC    $9B     
       AND    #$0F    
       SEC            
       SBC    #$07    
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $9A     
       RTS            

L18A1: LDA    $E5     
       CMP    #$01    
       BNE    L18BC   
       INC    $E5     
       LDA    #$00    
       STA    $9D     
       LDA    #$09    
       STA    $F1     
       LDA    #$50    
       STA    $EE     
       STA    $EF     
       STA    $ED     
       JSR    L1CF0   
L18BC: LDA    #$1D    
       STA    $DA     
       STA    $DC     
       LDA    #$C8    
       STA    $D9     
       LDA    #$D8    
       STA    $DB     
       LDA    #$1C    
       STA    $D6     
       STA    $D8     
       STA    $D2     
       LDA    $82     
       CMP    #$FE    
       BNE    L18DF   
       LDA    SWCHA   
       BPL    L18FB   
       BMI    L1902   
L18DF: LDA    $F1     
       JSR    L1FAB   
       STA    $8D     
       DEC    $ED     
       BPL    L1902   
       LDX    $93     
       LDY    $E6,X   
       LDA    L1D90,Y 
       STA    $ED     
       DEC    $F1     
       BPL    L1902   
       LDA    #$02    
       STA    $82     
L18FB: LDA    #$00    
       STA    $E5     
       JMP    L10F4   
L1902: LDA    $80     
       LSR            
       AND    #$01    
       TAX            
       LDA    L1DC0,X 
       LDY    #$74    
       CPY    $D5     
       BEQ    L1913   
       STA    $D5     
L1913: CPY    $D7     
       BEQ    L1919   
       STA    $D7     
L1919: LDA    L1DC2,X 
       STA    $D1     
       INC    $A9     
       LDA    $A9     
       CMP    #$8C    
       BCC    L1928   
       LDA    #$0A    
L1928: STA    $A9     
       JSR    L1881   
       STA    $AE     
       DEC    $AA     
       LDA    $AA     
       CMP    #$0A    
       BCS    L1939   
       LDA    #$8C    
L1939: STA    $AA     
       JSR    L1881   
       STA    $AF     
       LDA    $AB     
       JSR    L1881   
       STA    $B0     
       LDA    $AC     
       JSR    L1881   
       STA    $B1     
       INC    $B6     
       LDA    $B6     
       AND    #$0F    
       TAX            
       LDA    L1F8A,X 
       STA    $B3     
       LDA    L1F7A,X 
       STA    HMM0    
       STA    WSYNC   
       JSR    L1FB5   
       AND    #$0F    
       TAY            
L1967: DEY            
       BPL    L1967   
       STA    RESM0   
       STA    WSYNC   
       LDA    $80     
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $B6     
       AND    #$0F    
       TAX            
       LDA    L1F8A,X 
       STA    $B4     
       LDA    L1F7A,X 
       STA    HMM1    
       STA    WSYNC   
       JSR    L1FB5   
       AND    #$0F    
       TAY            
L198C: DEY            
       BPL    L198C   
       STA    RESM1   
       STA    WSYNC   
       LDA    $AD     
       CMP    #$70    
       BCC    L199E   
       SEC            
       SBC    #$30    
       BNE    L19AE   
L199E: CMP    #$60    
       BCC    L19A7   
       SEC            
       SBC    #$20    
       BNE    L19AE   
L19A7: CMP    #$40    
       BCC    L19AE   
       SEC            
       SBC    #$10    
L19AE: LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       STX    $B2     
       LDA    L1F9E,X 
       STA    $B5     
       LDA    L1F9A,X 
       JSR    L1881   
       NOP            
       NOP            
       STA    HMBL    
       STA    WSYNC   
       JSR    L1FB5   
       AND    #$0F    
       TAY            
L19CD: DEY            
       BPL    L19CD   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$00    
       STA    HMM0    
       STA    HMM1    
       STA    HMBL    
       JMP    L11FC   
L19E3: LDA    $C4     
       BEQ    L19E9   
       STA    $AD     
L19E9: LDA    $82     
       CMP    #$FE    
       BEQ    L1A18   
       LDY    $93     
       LDA    SWCHA   
       AND    L1F00,Y 
       BNE    L1A18   
       LDX    #$00    
       LDA    $AD     
       CMP    #$50    
       BCC    L1A02   
       INX            
L1A02: LDA    $EE,X   
       CMP    #$50    
       BNE    L1A18   
       LDY    $B2     
       LDA    #$0D    
       STA    $CD     
       LDA    L1BF6,Y 
       STA    $AB,X   
       LDA    L1DE8,X 
       STA    $EE,X   
L1A18: LDX    #$01    
L1A1A: LDA    $EE,X   
       CMP    #$50    
       BEQ    L1A45   
       CMP    L1BF4,X 
       BNE    L1A2B   
       LDA    #$50    
       STA    $EE,X   
       BNE    L1A45   
L1A2B: CPX    #$00    
       BEQ    L1A35   
       DEC    $EE,X   
       DEC    $EE,X   
       BPL    L1A39   
L1A35: INC    $EE,X   
       INC    $EE,X   
L1A39: LDA    $AB,X   
       CMP    #$50    
       BCC    L1A43   
       INC    $AB,X   
       BNE    L1A45   
L1A43: DEC    $AB,X   
L1A45: DEX            
       BPL    L1A1A   
       LDA    #$74    
       CMP    $D5     
       BNE    L1A5B   
       CMP    $D7     
       BNE    L1A5B   
       LDA    $80     
       AND    #$3F    
       BNE    L1A5B   
       JSR    L1CF0   
L1A5B: LDA    COLUP1  
       BPL    L1A6D   
       LDA    #$50    
       CMP    $EF     
       BEQ    L1A6D   
       STA    $EF     
       LDA    #$74    
       STA    $D7     
       BNE    L1A7D   
L1A6D: LDA    $F0     
       BPL    L1A88   
       LDA    #$50    
       CMP    $EE     
       BEQ    L1A88   
       STA    $EE     
       LDA    #$74    
       STA    $D5     
L1A7D: LDA    #$10    
       JSR    L1FB6   
       INC    $9D     
       LDA    #$3F    
       STA    $CE     
L1A88: LDA    $9D     
       CMP    #$05    
       BNE    L1AA8   
       LDA    #$30    
       STA    $EA     
       LDA    #$50    
       STA    $9D     
       LDX    $93     
       LDA    $E6,X   
       CMP    #$07    
       BCS    L1AA0   
       INC    $E6,X   
L1AA0: LDA    $CF,X   
       CMP    #$08    
       BCS    L1AA8   
       INC    $CF,X   
L1AA8: JMP    L1772   
L1AAB: LDX    #$00    
       STX    $C7     
       LDA    $82     
       CMP    #$FE    
       BEQ    L1AB7   
       LDX    #$0E    
L1AB7: STX    COLUPF  
       STA    CXCLR   
       LDA    #$00    
       STA    CTRLPF  
       STA    COLUBK  
       LDA    $AE     
       STA    HMP0    
       STA    WSYNC   
       JSR    L1FB5   
       AND    #$0F    
       TAY            
L1ACD: DEY            
       BPL    L1ACD   
       STA    RESP0   
       STA    WSYNC   
       LDA    $B0     
       STA    HMP1    
       STA    WSYNC   
       JSR    L1FB5   
       AND    #$0F    
       TAY            
L1AE0: DEY            
       BPL    L1AE0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $93     
       LDX    $E6,Y   
       LDA    L1BEC,X 
       STA    COLUP0  
       LDX    #$AE    
       LDA    #$18    
       STA    COLUP1  
L1AF8: STA    WSYNC   
       TXA            
       SEC            
       SBC    #$98    
       TAY            
       AND    #$F8    
       BNE    L1B07   
       LDA    ($D5),Y 
       STA    GRP0    
L1B07: TXA            
       SEC            
       SBC    $EE     
       TAY            
       AND    #$F8    
       BNE    L1B14   
       LDA    ($D1),Y 
       STA    GRP1    
L1B14: LDY    $93     
       LDA.wy $0008,Y 
       BMI    L1B1D   
       STX    $C4     
L1B1D: DEX            
       CPX    #$6A    
       BNE    L1AF8   
       LDY    #$07    
       STA    WSYNC   
L1B26: DEY            
       BPL    L1B26   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$B0    
       STA    HMP0    
       LDA    #$D0    
       STA    HMP1    
       LDA    #$08    
       STA    REFP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$44    
       STA    COLUP0  
       STA    COLUP1  
       LDA    COLUP1  
       STA    $F0     
       LDX    #$68    
L1B4A: STA    WSYNC   
       TXA            
       LDX    #$1F    
       TXS            
       TAX            
       SEC            
       SBC    #$50    
       TAY            
       AND    #$F0    
       BNE    L1B65   
       LDA    ($D9),Y 
       STA    GRP0    
       STA    GRP1    
       LDA    ($DB),Y 
       STA    COLUP0  
       STA    COLUP1  
L1B65: CPX    $B5     
       PHP            
       CPX    $B3     
       PHP            
       CPX    $B4     
       PHP            
       DEX            
       CPX    #$48    
       BNE    L1B4A   
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       LDX    #$FF    
       TXS            
       LDA    $AF     
       STA    HMP0    
       STA    WSYNC   
       JSR    L1FB5   
       AND    #$0F    
       TAY            
L1B8C: DEY            
       BPL    L1B8C   
       STA    RESP0   
       STA    WSYNC   
       LDA    $B1     
       STA    HMP1    
       STA    WSYNC   
       JSR    L1FB5   
       AND    #$0F    
       TAY            
L1B9F: DEY            
       BPL    L1B9F   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    REFP1   
       LDA    #$08    
       STA    REFP0   
       LDY    $93     
       LDX    $E6,Y   
       LDA    L1BEC,X 
       STA    COLUP0  
       LDA    #$18    
       STA    COLUP1  
       STA    CXCLR   
       LDX    #$42    
L1BC1: STA    WSYNC   
       TXA            
       SEC            
       SBC    #$10    
       TAY            
       AND    #$F8    
       BNE    L1BD0   
       LDA    ($D7),Y 
       STA    GRP0    
L1BD0: TXA            
       SEC            
       SBC    $EF     
       TAY            
       AND    #$F8    
       BNE    L1BDD   
       LDA    ($D1),Y 
       STA    GRP1    
L1BDD: LDY    $93     
       LDA.wy $0008,Y 
       BMI    L1BE6   
       STX    $C4     
L1BE6: DEX            
       BNE    L1BC1   
       JMP    L143B   
L1BEC: .byte $56,$76,$B6,$46,$F6,$54,$06,$18
L1BF4: .byte $B4,$0A
L1BF6: .byte $49,$55,$55,$49
L1BFA: LDA    $C1     
       AND    #$07    
       TAX            
       RTS            

L1C00: .byte $38,$7C,$EE,$C6,$C6,$C6,$C6,$EE,$7C,$38,$18,$18,$18,$18,$18,$18
       .byte $18,$18,$38,$18,$FE,$FE,$C0,$FC,$FC,$0E,$06,$0E,$FE,$FC,$FC,$FE
       .byte $06,$06,$7E,$3C,$18,$00,$FC,$FE,$18,$18,$18,$00,$FE,$FE,$E0,$70
       .byte $38,$1C,$F8,$FC,$0E,$06,$0E,$FC,$F8,$C0,$FC,$FC,$38,$7C,$EE,$C6
       .byte $C6,$C6,$E0,$70,$38,$1C,$C0,$C0,$E0,$70,$38,$1C,$00,$00,$FC,$FE
       .byte $38,$7C,$EE,$C6,$C6,$EE,$6C,$C6,$EE,$7C,$70,$38,$1C,$0E,$66,$C6
       .byte $C6,$EE,$7C,$38
L1C64: .byte $48,$28,$40,$58,$40,$1C,$24,$40,$20,$28,$30,$20,$1C,$20,$28,$30
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $38,$44,$44,$92,$A2,$A2,$92,$44,$44,$38,$00,$00,$45,$45,$45,$5D
       .byte $55,$5D,$00,$00,$00,$00,$DC,$44,$44,$DC,$44,$DC,$00,$00,$00,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$94,$00,$00,$93,$94,$94,$95,$F4,$94,$94
       .byte $63,$00,$00,$26,$A9,$A8,$A8,$28,$28,$A9,$26,$00,$00,$00,$7C,$28
       .byte $F8,$3E,$17,$78,$00,$00,$BC,$28,$F8,$3E,$17,$B8,$00,$18,$00,$18
       .byte $00,$18,$00,$00,$00,$00,$3C,$00,$3C,$00,$00,$00
L1CE0: .byte $60,$E0
L1CE2: .byte $50,$D0
L1CE4: .byte $4A,$9A
L1CE6: .byte $2C,$1C
L1CE8: .byte $01,$11,$21,$31,$41,$51,$61,$71
L1CF0: LDA    #$C0    
       STA    $D5     
       STA    $D7     
       LDA    #$8C    
       STA    $AA     
       LDA    #$0A    
       STA    $A9     
       RTS            

L1CFF: .byte $F2,$33,$66,$43,$22,$08,$4C,$22,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$67,$76,$67,$2B,$A2,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$E3,$DD,$77,$6B,$2B,$B6,$10,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$DF,$FD,$4E,$6E,$2B,$3A,$51,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$E7,$91,$E7,$94,$E7,$22,$84,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$BF,$FB,$5A,$5E,$CB,$8A,$86,$04,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$CF,$FC,$E6,$EB,$A9,$8B,$42,$10,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$F2,$2F,$7F,$CB,$81,$CB,$60,$10,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$44,$44,$46,$34,$34,$38,$1A,$1E,$00,$A0,$80,$80,$60,$60,$50
       .byte $50
L1D90: .byte $50,$46,$3C,$32,$2D,$28,$23,$20
L1D98: .byte $1C,$00,$1C,$0E,$1C,$1C,$1C,$0E
L1DA0: .byte $06,$02,$06,$04,$0E,$0C,$06,$04
L1DA8: .byte $02,$03,$02,$01,$02,$02,$02,$01
L1DB0: .byte $10,$20,$10,$05,$10,$10,$10,$05
L1DB8: .byte $B0,$D0,$70,$80,$10,$20,$30,$40
L1DC0: .byte $C0,$C8
L1DC2: .byte $D0,$D8,$50,$60,$90,$A0,$00,$01,$07,$0F,$1F,$1F,$3F,$3F,$3F,$3F
       .byte $3F,$1F,$1F,$0F,$07,$01,$44,$44,$46,$46,$38,$38,$3A,$3A,$3A,$3A
       .byte $38,$38,$46,$46,$44,$44
L1DE8: .byte $6A,$42
L1DEA: .byte $05,$02,$07,$04,$01,$06,$03,$00
L1DF2: LDA    $94     
       ROR            
       ROR            
       ROR            
       EOR    $95     
       ASL            
       ASL            
       ROL    $94     
       ROL    $95     
       RTS            

L1E00: .byte $00,$00,$10,$92,$54,$38,$38,$54,$92,$10,$38,$10,$38,$10,$10,$00
       .byte $00,$00,$38,$6C,$5E,$2E,$37,$1B,$0E,$00,$00,$00,$10,$01,$40,$01
       .byte $00,$00,$1C,$3E,$3F,$7F,$DB,$C6,$7C,$01,$48,$08,$08,$40,$08,$40
       .byte $00,$00,$18,$18,$3C,$3C,$66,$7E,$7E,$E7,$C3,$C3,$C3,$C3,$81,$81
       .byte $00,$00,$18,$18,$3C,$3C,$24,$7E,$7E,$E7,$CB,$D3,$CB,$D3,$89,$91
       .byte $00,$00,$00,$00,$81,$99,$DB,$99,$DB,$7E,$FF,$7E,$52,$24,$18,$00
       .byte $00,$00,$18,$81,$99,$DB,$99,$DB,$5A,$7E,$FF,$FF,$4A,$24,$18,$00
       .byte $00,$00,$00,$1C,$3E,$1C,$2A,$42,$28,$2A,$00,$28,$22,$20,$20,$28
       .byte $00,$00,$08,$08,$1C,$7F,$1C,$08,$0A,$42,$20,$02,$48,$28,$02,$20
       .byte $00,$00,$08,$1C,$36,$14,$5D,$5D,$7F,$5D,$1C,$3E,$7F,$5D,$55,$00
       .byte $00,$00,$08,$1C,$36,$14,$5D,$5D,$7F,$5D,$1C,$3E,$7F,$5D,$5D,$55
       .byte $44,$EE,$FE,$BA,$38,$10,$54,$54,$7C,$7C,$28,$38,$10,$10,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $82,$EE,$FE,$BA,$38,$10,$10,$54,$7C,$7C,$28,$38,$10,$10,$00,$00
       .byte $00,$00,$00,$00,$28,$7C,$3A,$1C,$28,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$22,$04,$81,$00,$14,$08,$14,$41,$80,$12,$22,$48,$00,$44
L1F00: .byte $80,$40,$34,$34,$2A,$1C,$2A,$34,$34,$24,$24,$24,$24,$24,$24,$24
       .byte $1C,$1A,$28,$36,$44,$34,$34,$42,$42,$42,$42,$42,$42,$42,$44,$0A
       .byte $44,$66,$66,$66,$88,$88,$88,$88,$C8,$C8,$C8,$1C,$46,$46,$46,$38
       .byte $38,$38,$E8,$E8,$BA,$BA,$BA,$38,$38,$38,$38,$38
L1F3C: .byte $08,$10,$0B,$08,$0F
L1F41: .byte $14,$13,$0B,$0C,$18,$18,$14,$14,$20,$18,$08
L1F4C: .byte $00,$02,$01,$0B,$02,$02,$03,$13,$03,$05,$02,$10,$01,$00,$10,$20
L1F5C: .byte $00,$00,$84,$C6,$1A,$36
L1F62: .byte $1F,$1F,$1C,$18,$14,$12,$10,$0C
L1F6A: .byte $07,$07,$07,$03,$03,$01,$01,$00
L1F72: .byte $80,$70,$60,$50,$40,$30,$25,$20
L1F7A: .byte $B4,$A4,$84,$45,$F5,$A5,$66,$46,$36,$46,$66,$A5,$F5,$45,$84,$A4
L1F8A: .byte $58,$5D,$62,$65,$67,$65,$62,$5D,$58,$53,$4E,$4B,$49,$4B,$4E,$53
L1F9A: .byte $4F,$55,$55,$4F
L1F9E: .byte $65,$65,$4B,$4B
L1FA2: LDX    $93     
       LDA    $C5,X   
       LSR            
       LSR            
       LSR            
       LSR            
       RTS            

L1FAB: ASL            
       STA    $99     
       ASL            
       ASL            
       CLC            
       ADC    $99     
       STA    $99     
L1FB5: RTS            

L1FB6: LDX    $93     
       SED            
       CLC            
       ADC    $8F,X   
       STA    $8F,X   
       LDA    $91,X   
       ADC    #$00    
       STA    $91,X   
       CLD            
       RTS            

L1FC6: LDA    #$3F    
       STA    $CE     
       LDA    #$04    
       STA    $E0     
       LDA    #$E0    
       STA    $9F     
       RTS            

L1FD3: LDX    $82     
       CPX    #$01    
       BNE    L1FFB   
       LDX    $93     
       CLC            
       ADC    $C5,X   
       CMP    #$7F    
       BCC    L1FF9   
L1FE2: LDX    $93     
       LDA    #$00    
       STA    $C2     
       STA    $CF,X   
       LDA    #$07    
       STA    $C8     
       JSR    L1FC6   
       LDA    #$03    
       STA    $82     
       LDA    #$7E    
       STA    $CB     
L1FF9: STA    $C5,X   
L1FFB: RTS            

L1FFC: .byte $00,$10,$00,$10
