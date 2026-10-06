; Disassembly of roms/Cosmic Ark (CCE).bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Cosmic Ark (CCE).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
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
HMM0    =  $22
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
L1000: LDX    #$04    
L1002: LDA    $80,X   
       JSR    L1319   
       DEX            
       BPL    L1002   
       LDA    $B8     
       AND    #$08    
       BEQ    L1018   
       LDA    $B4     
       AND    #$07    
       TAY            
       LDA    L1E6B,Y 
L1018: STA    NUSIZ0  
L101A: BIT    $0285   
       BPL    L101A   
       STA    WSYNC   
       LDX    #$02    
       LDA    $80,X   
       JSR    L1319   
       STA    $D0     
       STA    WSYNC   
       STA    HMOVE   
       JSR    L1BDC   
       STA    HMM0    
       LDA    #$00    
       BIT    $B8     
       BVC    L103B   
       LDA    #$A0    
L103B: STA    COLUBK  
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       STA    REFP0   
       STA    REFP1   
       STA    CXCLR   
       LDA    #$02    
       STA    ENAM0   
       LDA    $F0     
       STA    COLUP1  
       LDA    #$15    
       STA    CTRLPF  
       STA    REFP1   
       LDX    #$B8    
L1059: STX    WSYNC   
       TXA            
       SEC            
       SBC    $9D     
       TAY            
       AND    #$F8    
       BNE    L1069   
       LDA    ($9F),Y 
       JMP    L106B   
L1069: LDA    #$00    
L106B: STA    GRP1    
       TXA            
       EOR    $B4     
       STA    COLUP0  
       LDY    #$01    
       TXA            
       SEC            
       SBC    $9A     
       AND    #$F8    
       BNE    L107D   
       INY            
L107D: STY    ENAM1   
       DEX            
       CPX    $C9     
       BNE    L1059   
       LDA    #$12    
       STA    $B6     
L1088: STA    WSYNC   
       LDY    $B6     
       LDA.wy $0087,Y 
       STA    PF2     
       LDA    L1FC6,Y 
       STA    COLUPF  
       TXA            
       EOR    $B4     
       STA    COLUP0  
       TXA            
       SEC            
       SBC    $9D     
       TAY            
       AND    #$F8    
       BNE    L10A9   
       LDA    ($9F),Y 
       JMP    L10AB   
L10A9: LDA    #$00    
L10AB: STA    GRP1    
       LDY    #$01    
       CPX    $9A     
       BNE    L10B4   
       INY            
L10B4: STY    ENAM1   
       DEX            
       DEC    $B6     
       BPL    L1088   
       STA    WSYNC   
       LDA    RSYNC   
       PHA            
       BIT    $B8     
       BVS    L10C7   
       JMP    L1164   
L10C7: LDA    $D0     
       STA    HMM0    
       LDA    $CF     
       STX    $B7     
       LDX    #$01    
       JSR    L1319   
       STA    WSYNC   
       STA    HMOVE   
       JSR    L1BDC   
       STA    HMM0    
       LDA    #$10    
       STA    NUSIZ1  
       LDA    $B7     
       SEC            
       SBC    #$03    
       TAX            
       LDA    $EA     
       STA    COLUP1  
       LDA    #$00    
       STA    WSYNC   
       STA    PF2     
       BEQ    L1122   
L10F3: STA    WSYNC   
       STA    GRP1    
       CPX    $D9     
       BEQ    L10FF   
       BCC    L110F   
       BCS    L1119   
L10FF: LDA    #$30    
       BIT    $DA     
       BPL    L1111   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       BNE    L1119   
L110F: LDA    #$10    
L1111: STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
L1119: LDY    #$02    
       CPX    $D6     
       BCC    L1120   
       DEY            
L1120: STY    ENABL   
L1122: TXA            
       SEC            
       SBC    $A3     
       TAY            
       AND    #$F8    
       BNE    L1130   
       LDA    ($CD),Y 
       JMP    L1132   
L1130: LDA    #$00    
L1132: DEX            
       CPX    #$13    
       BEQ    L1195   
       STA    WSYNC   
       STA    GRP1    
       TXA            
       EOR    $B4     
       STA    COLUP0  
       LDY    #$01    
       TXA            
       SEC            
       SBC    $DB     
       AND    #$F8    
       BNE    L114B   
       INY            
L114B: STY    ENAM1   
       TXA            
       SEC            
       SBC    $A3     
       TAY            
       AND    #$F8    
       BNE    L115B   
       LDA    ($CD),Y 
       JMP    L115D   
L115B: LDA    #$00    
L115D: DEX            
       CPX    #$13    
       BNE    L10F3   
       BEQ    L1195   
L1164: LDA    #$00    
       STA    WSYNC   
       STA    PF2     
L116A: STA    WSYNC   
       TXA            
       SEC            
       SBC    $9D     
       TAY            
       AND    #$F8    
       BNE    L117A   
       LDA    ($9F),Y 
       JMP    L117C   
L117A: LDA    #$00    
L117C: STA    GRP1    
       TXA            
       EOR    $B4     
       STA    COLUP0  
       LDY    #$01    
       TXA            
       SEC            
       SBC    $9A     
       AND    #$F8    
       BNE    L118E   
       INY            
L118E: STY    ENAM1   
       DEX            
       CPX    #$15    
       BNE    L116A   
L1195: LDA    #$00    
       STA    ENAM0   
       STA    GRP1    
       BIT    $B8     
       BVS    L11A6   
       STA    ENAM1   
       STA    WSYNC   
       JMP    L1225   
L11A6: LDX    #$00    
       LDA    $D4     
       JSR    L1319   
       STA    WSYNC   
       INX            
       LDA    $D5     
       JSR    L1319   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$2E    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$11    
       STY    CTRLPF  
       LDY    #$08    
       BIT    $A8     
       BMI    L11D0   
       DEY            
L11D0: STY    REFP0   
       LDY    #$08    
       BIT    $A9     
       BMI    L11D9   
       DEY            
L11D9: STY    REFP1   
       LDX    #$0A    
       LDY    $A1     
       LDA    L1E49,Y 
       STA    $B6     
       LDY    $B9     
L11E6: DEY            
       BMI    L11F0   
       STA    WSYNC   
       DEX            
       BNE    L11E6   
       BEQ    L121E   
L11F0: LDY    #$00    
       STY    ENAM1   
L11F4: STA    WSYNC   
       LDA    $B6     
       ORA    L1E24,Y 
       STA    COLUPF  
       LDA    L1FD9,Y 
       STA    PF0     
       LDA    L1FE3,Y 
       STA    PF1     
       LDA    L1FED,Y 
       STA    PF2     
       LDA    ($DE),Y 
       BIT    $A8     
       BVC    L1214   
       STA    GRP0    
L1214: BIT    $A9     
       BVC    L121A   
       STA    GRP1    
L121A: INY            
       DEX            
       BNE    L11F4   
L121E: LDA    $B6     
       STA    COLUBK  
       JMP    L12F4   
L1225: LDA    #$2C    
       AND    $F2     
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$8C    
       AND    $F2     
       STA    COLUPF  
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$05    
       STA    WSYNC   
       LDA    #$FF    
       STA    PF2     
L1245: DEY            
       BPL    L1245   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       LDX    #$00    
       STX    HMP1    
       INX            
       STX    VDELP0  
       STX    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       STX    PF2     
       STA    WSYNC   
       LDA    #$09    
       STA    $B7     
L1266: LDY    $B7     
       LDA    ($BD),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($BF),Y 
       STA    GRP1    
       LDA    ($C1),Y 
       STA    GRP0    
       LDA    ($C3),Y 
       STA    $B6     
       LDA    ($C5),Y 
       TAX            
       LDA    ($C7),Y 
       TAY            
       LDA    $B6     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $B7     
       BPL    L1266   
       LDX    #$00    
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       LDA    $AD     
       AND    #$07    
       STA    $B6     
       LDA    $AD     
       LSR            
       LSR            
       LSR            
       TAY            
       BEQ    L12AD   
       LDA    #$B2    
L12A6: STA    $BD,X   
       INX            
       INX            
       DEY            
       BNE    L12A6   
L12AD: LDA    #$AA    
       CLC            
       ADC    $B6     
       STA    $BD,X   
       INX            
       INX            
       LDA    #$AA    
L12B8: CPX    #$0C    
       BEQ    L12C2   
       STA    $BD,X   
       INX            
       INX            
       BNE    L12B8   
L12C2: LDA    #$44    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$02    
       STA    $B7     
L12CC: LDY    #$00    
       LDA    ($BD),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($BF),Y 
       STA    GRP1    
       LDA    ($C1),Y 
       STA    GRP0    
       LDA    ($C3),Y 
       STA    $B6     
       LDA    ($C5),Y 
       TAX            
       LDA    ($C7),Y 
       TAY            
       LDA    $B6     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $B7     
       BPL    L12CC   
L12F4: LDX    #$00    
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STA    WSYNC   
       STX    PF0     
       STX    PF1     
       STX    ENABL   
       STX    VDELP0  
       STX    VDELP1  
       BIT    $B8     
       BVS    L1312   
       LDA    #$FF    
       STA    PF2     
L1312: STA    WSYNC   
       STX    PF2     
       JMP    L1866   
L1319: STA    $B6     
       INC    $B6     
       CPX    #$02    
       BCC    L1323   
       INC    $B6     
L1323: LDA    $B6     
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $B6     
       TAY            
       PLA            
       AND    #$0F    
       CLC            
       ADC    $B6     
       CMP    #$0F    
       BCC    L133A   
       SBC    #$0F    
       INY            
L133A: SEC            
       SBC    #$08    
       EOR    #$FF    
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
L1347: DEY            
       BPL    L1347   
       STA    $B6     
       STA    RESP0,X 
       STA    WSYNC   
       RTS            


START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L1358: STA    VSYNC,X 
       INX            
       BNE    L1358   
       DEC    $F2     
       LDA    #$1F    
       LDX    #$0B    
L1363: STA    $BD,X   
       DEX            
       DEX            
       BPL    L1363   
       LDA    #$01    
       STA    $B8     
       STA    $CC     
       STA    $BC     
       LDA    #$1D    
       STA    $CE     
       LDA    #$1E    
       STA    $DF     
       LDA    #$02    
       STA    $BA     
       JSR    L1D0C   
       JSR    L1D45   
L1383: LDA    #$02    
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
       INC    $B4     
       BNE    L13AC   
       INC    $B5     
       BNE    L13AC   
       BIT    $DD     
       BVS    L13A8   
       BMI    L13AC   
L13A8: LDA    #$F3    
       STA    $F2     
L13AC: LDA    $CC     
       ASL            
       EOR    $CC     
       ASL            
       ASL            
       ROL    $CC     
       BIT    $DD     
       BVS    L13BB   
       BMI    L13BF   
L13BB: LDA    REFP1   
       BPL    L1400   
L13BF: LDA    SWCHB   
       ROR    $B8     
       BCS    L13CA   
       LSR            
       BCS    L1400   
       ROL            
L13CA: LSR            
       ROL    $B8     
       LSR            
       BIT    $BB     
       BCC    L13D6   
       ROL    $BB     
       BNE    L141F   
L13D6: BPL    L13F5   
       LDA    $DD     
       ORA    #$60    
       STA    $DD     
       JSR    L1BE1   
L13E1: LDA    $B4     
       AND    #$1F    
       STA    $BB     
       INC    $BC     
       LDA    $BC     
       CMP    #$07    
       BNE    L13FD   
       LDA    #$01    
       STA    $BC     
       BNE    L13FD   
L13F5: LDA    $BB     
       EOR    $B4     
       AND    #$1F    
       BEQ    L13E1   
L13FD: JMP    L1802   
L1400: LDY    $BC     
       LDA    L1428,Y 
       STA    $EC     
       LDA    #$FF    
       STA    $F2     
       LDX    #$80    
       STX    $DD     
       JSR    L1BE1   
       JSR    L1D0C   
       JSR    L1D45   
       JSR    L1C01   
       LDA    #$28    
       STA    $AD     
L141F: LDA    $DD     
       AND    #$20    
       BEQ    L142F   
       JMP    L1802   
L1428: .byte $00,$00,$80,$40,$00,$80,$40
L142F: LDA    $B8     
       AND    #$20    
       BEQ    L148D   
       INC    $C9     
       BIT    $B8     
       BVC    L1449   
       LDA    $B4     
       AND    #$07    
       BNE    L1449   
       LDA    $B9     
       CMP    #$0A    
       BEQ    L1449   
       INC    $B9     
L1449: LDA    $C9     
       CMP    #$B7    
       BNE    L148D   
       LDA    $B8     
       AND    #$CF    
       BIT    $EC     
       BPL    L1461   
       STA    $B8     
       INC    $A1     
       JSR    L1D7B   
       JMP    L146D   
L1461: EOR    #$40    
       STA    $B8     
       BIT    $B8     
       BVC    L146D   
       ORA    #$10    
       STA    $B8     
L146D: LDA    #$26    
       STA    $CA     
       BIT    $B8     
       BVS    L148D   
       LDA    $AA     
       CMP    #$02    
       BCC    L148A   
       INC    $A1     
       LDA    #$00    
       STA    $AA     
       TAY            
       LDX    #$10    
       JSR    L1CEA   
       JSR    L1D7B   
L148A: JSR    L1C01   
L148D: LDA    $CA     
       BEQ    L14D4   
       BMI    L14D4   
       LSR            
       CMP    #$13    
       BCS    L14A4   
       TAY            
       LDX    L1E2E,Y 
       LDA    L1FB3,X 
       STA    $87,X   
       JMP    L14D2   
L14A4: DEC    $C9     
       BIT    $B8     
       BVC    L14B6   
       LDA    $B4     
       AND    #$07    
       BNE    L14B6   
       LDA    $B9     
       BEQ    L14B6   
       DEC    $B9     
L14B6: LDA    $C9     
       CMP    #$68    
       BNE    L14D2   
       LDA    #$80    
       STA    $CA     
       LDA    #$00    
       STA    $A4     
       BIT    $B8     
       BVC    L14D4   
       LDA    #$4C    
       STA    $CF     
       LDA    #$56    
       STA    $A3     
       BNE    L14D4   
L14D2: INC    $CA     
L14D4: LDA    $AB     
       BEQ    L14F8   
       AND    #$F8    
       CLC            
       ADC    #$E8    
       TAY            
       DEC    $AB     
       BNE    L1502   
       LDA    #$4C    
       STA    $CF     
       LDA    #$56    
       STA    $A3     
       ROL    $B8     
       CLC            
       ROR    $B8     
       LDA    $AA     
       BEQ    L1502   
       JSR    L1C39   
       DEC    $AA     
L14F8: LDY    #$D8    
       LDA    $B4     
       AND    #$02    
       BEQ    L1502   
       LDY    #$E0    
L1502: STY    $CD     
       LDA    $CA     
       BPL    L150F   
       LDA    $9E     
       BNE    L150F   
       JSR    L1C4B   
L150F: LDY    $9E     
       BEQ    L157E   
       LDX    $D7     
       LDA    $D1     
       CLC            
       ADC    $D8     
       STA    $D1     
       BCC    L151F   
       INX            
L151F: STX    $B6     
       LDA    $D8     
       CMP    #$80    
       BCS    L152B   
       LDA    $D7     
       BEQ    L1537   
L152B: LDA    $D8     
       SEC            
       SBC    L1FF7,Y 
       STA    $D8     
       BCS    L1537   
       DEC    $D7     
L1537: LDX    #$00    
       BIT    $EE     
       BPL    L1548   
       LDA    $EF     
       AND    #$07    
       TAX            
       LDA    L1DC2,X 
       TAX            
       INC    $EF     
L1548: CPY    #$01    
       BEQ    L156A   
       CPY    #$02    
       BEQ    L1571   
       CPY    #$03    
       BEQ    L155B   
       LDA    $9D     
       CLC            
       ADC    $B6     
       BNE    L1560   
L155B: LDA    $9D     
       SEC            
       SBC    $B6     
L1560: STA    $9D     
       TXA            
       CLC            
       ADC    $81     
       STA    $81     
       BNE    L157E   
L156A: LDA    $81     
       CLC            
       ADC    $B6     
       BNE    L1576   
L1571: LDA    $81     
       SEC            
       SBC    $B6     
L1576: STA    $81     
       TXA            
       CLC            
       ADC    $9D     
       STA    $9D     
L157E: LDY    #$00    
       STY    $D6     
       BIT    $B8     
       BPL    L15C5   
       LDA    $AB     
       BNE    L1593   
       JSR    L1BF1   
       LDA    REFP1,X 
       STA    $ED     
       BPL    L15A3   
L1593: LDA    $A5     
       AND    #$DF    
       STA    $A5     
       LDA    $DC     
       BPL    L15C5   
       LDA    #$40    
       STA    $DC     
       BNE    L15C5   
L15A3: LDA    $A3     
       CMP    #$4E    
       BCS    L15C5   
       LDA    $A5     
       AND    #$BF    
       ORA    #$20    
       STA    $A5     
       LDA    $B4     
       LSR            
       BCC    L15C9   
       LDA    $CF     
       CLC            
       ADC    #$03    
       STA    $84     
       LDY    $A3     
       STY    $D6     
       CPY    #$00    
       BNE    L15C9   
L15C5: LDA    $CA     
       BMI    L15CC   
L15C9: JMP    L16E9   
L15CC: BIT    $DD     
       BPL    L15C9   
       JSR    L1BF1   
       LDA    SWCHA   
       CPX    #$01    
       BEQ    L15DE   
       LSR            
       LSR            
       LSR            
       LSR            
L15DE: AND    #$0F    
       BIT    $B8     
       BMI    L1649   
       BVS    L15EA   
       LDY    $AD     
       BEQ    L15C9   
L15EA: CMP    $CB     
       BEQ    L15C9   
       STA    $CB     
       CMP    #$0B    
       BEQ    L1623   
       CMP    #$07    
       BEQ    L1641   
       CMP    #$0E    
       BEQ    L1602   
       CMP    #$0D    
       BEQ    L1610   
L1600: BNE    L15C9   
L1602: LDA    #$60    
       STA    $9A     
       LDA    #$03    
L1608: STA    $9C     
       LDA    #$50    
       STA    $83     
       BNE    L162F   
L1610: BIT    $B8     
       BVC    L161B   
       ROL    $B8     
       SEC            
       ROR    $B8     
       BNE    L1649   
L161B: LDA    #$5C    
       STA    $9A     
       LDA    #$04    
       BNE    L1608   
L1623: LDA    #$48    
       STA    $83     
       LDA    #$01    
L1629: STA    $9C     
       LDA    #$60    
       STA    $9A     
L162F: LDA    $A4     
       ORA    #$40    
       STA    $A4     
       BIT    $B8     
       BVS    L163B   
       DEC    $AD     
L163B: LDA    #$06    
       STA    $A6     
       BNE    L1600   
L1641: LDA    #$58    
       STA    $83     
       LDA    #$02    
       BNE    L1629   
L1649: LDX    $AB     
       BEQ    L164F   
       LDA    #$0F    
L164F: STA    $B6     
       TAY            
       LDA    $A5     
       AND    #$BF    
       CPY    #$0F    
       BEQ    L165C   
       ORA    #$40    
L165C: STA    $A5     
       LSR    $B6     
       BCS    L16A7   
       LDA    $D2     
       ADC    $E4     
       STA    $D2     
       BCC    L16A7   
       LDA    $A3     
       CMP    #$4D    
       BCC    L167A   
       LDA    $CF     
       CMP    #$4B    
       BCC    L16A7   
       CMP    #$4E    
       BCS    L16A7   
L167A: INC    $A3     
       LDA    $A3     
       CMP    #$56    
       BNE    L16A7   
       LDA    $B8     
       AND    #$7F    
       STA    $B8     
       LDA    $A5     
       AND    #$BF    
       STA    $A5     
       LDA    $AA     
       CMP    #$02    
       BCC    L16A7   
       LDA    $E8     
       BNE    L16A7   
       LDA    $9E     
       BNE    L16A7   
       LDA    $EB     
       BNE    L16A4   
       LDA    #$2F    
       STA    $AD     
L16A4: JSR    L1CBA   
L16A7: LSR    $B6     
       BCS    L16BB   
       LDA    $D2     
       ADC    $E4     
       STA    $D2     
       BCC    L16BB   
       LDA    $A3     
       CMP    #$16    
       BCC    L16BB   
       DEC    $A3     
L16BB: LDA    $A3     
       CMP    #$4E    
       BCS    L16E9   
       LSR    $B6     
       BCS    L16D5   
       LDA    $CF     
       CMP    #$01    
       BEQ    L16D5   
       LDA    $D3     
       ADC    $E4     
       STA    $D3     
       BCC    L16D5   
       DEC    $CF     
L16D5: LSR    $B6     
       BCS    L16E9   
       LDA    $CF     
       CMP    #$96    
       BEQ    L16E9   
       LDA    $D3     
       ADC    $E4     
       STA    $D3     
       BCC    L16E9   
       INC    $CF     
L16E9: LDX    #$00    
       LDA    $9C     
       BEQ    L1739   
       CMP    #$01    
       BEQ    L1719   
       CMP    #$02    
       BEQ    L172C   
       LDX    #$00    
       CMP    #$03    
       BEQ    L170C   
       CMP    #$04    
       BNE    L1739   
       LDA    $9A     
       SEC            
       SBC    #$08    
       STA    $9A     
       BMI    L1724   
       BPL    L1739   
L170C: LDA    $9A     
       CLC            
       ADC    #$08    
       STA    $9A     
       CMP    #$C0    
       BCS    L1724   
       BCC    L1739   
L1719: LDX    #$30    
       LDA    $83     
       SEC            
       SBC    #$08    
       STA    $83     
       BPL    L1739   
L1724: LDX    #$00    
       STX    $9C     
       STX    $9A     
       BEQ    L1739   
L172C: LDX    #$30    
       LDA    $83     
       CLC            
       ADC    #$08    
       STA    $83     
       CMP    #$A0    
       BCS    L1724   
L1739: STX    NUSIZ1  
       LDA    $A2     
       BNE    L174D   
       LDA    $90     
       BEQ    L174D   
       LDA    $B4     
       AND    #$07    
       TAY            
       LDA    L1DD0,Y 
       STA    $90     
L174D: LDA    $A2     
       BNE    L1770   
       LDX    #$FE    
       LDA    $E8     
       BEQ    L175D   
       AND    #$10    
       BEQ    L1764   
       BNE    L1762   
L175D: BIT    SWCHB   
       BVC    L1764   
L1762: LDX    #$FF    
L1764: LDA    $8E     
       BEQ    L176A   
       STX    $8E     
L176A: LDA    $92     
       BEQ    L1770   
       STX    $92     
L1770: LDA    $B8     
       AND    #$08    
       BEQ    L179C   
       LDA    $A2     
       CMP    #$01    
       BNE    L179C   
       LDA    #$1D    
       STA    $A0     
       LDA    #$50    
       STA    $81     
       LDA    #$50    
       STA    $9D     
       LDA    #$DE    
       STA    $F0     
       LDA    #$30    
       STA    $D8     
       LDA    #$FB    
       STA    $D7     
       LDA    #$40    
       STA    $A5     
       LDA    #$FF    
       STA    $AC     
L179C: LDA    $AC     
       BEQ    L17E5   
       LDA    $D8     
       CLC            
       ADC    #$30    
       STA    $D8     
       BCC    L17AB   
       INC    $D7     
L17AB: LDA    $D7     
       BMI    L17B1   
       DEC    $9D     
L17B1: LDA    $D1     
       CLC            
       ADC    $D8     
       STA    $D1     
       LDA    $81     
       ADC    $D7     
       CMP    #$9C    
       BCS    L17C5   
       STA    $81     
       JMP    L17E5   
L17C5: LDA    #$00    
       STA    $AC     
       STA    $9D     
       STA    $A5     
       LDA    #$C0    
       STA    $DD     
       LDA    $B8     
       AND    #$3F    
       STA    $B8     
       LDA    $B2     
       AND    #$F0    
       STA    $B6     
       LDX    $BC     
       DEX            
       TXA            
       ORA    $B6     
       STA    $B2     
L17E5: LDA    $AC     
       BEQ    L17F8   
       LDY    #$D8    
       LDA    $B4     
       AND    #$02    
       BNE    L17F3   
       LDY    #$E0    
L17F3: STY    $9F     
       JMP    L1802   
L17F8: LDA    $B4     
       AND    #$18    
       STA    $9F     
       LDA    #$1E    
       STA    $A0     
L1802: LDY    $85     
       LDA    $B4     
       AND    #$07    
       BNE    L1811   
       INY            
       CPY    #$12    
       BNE    L1811   
       LDY    #$00    
L1811: STY    $85     
       LDA    L1E59,Y 
       STA    $82     
       LDX    #$00    
       LDA    $DD     
       AND    #$20    
       BEQ    L1831   
       TXA            
       JSR    L1D23   
       LDA    $BC     
       JSR    L1D23   
       LDA    #$AA    
       JSR    L1D23   
       JMP    L1844   
L1831: BIT    $DD     
       BPL    L1856   
       LDA    $AE     
       JSR    L1D23   
       LDA    $B0     
       JSR    L1D23   
       LDA    $B2     
       JSR    L1D23   
L1844: LDX    #$00    
L1846: LDA    $BD,X   
       BNE    L1863   
       LDA    #$64    
       STA    $BD,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    L1846   
       BEQ    L1863   
L1856: LDA    #$A0    
       LDX    #$0A    
L185A: STA    $BD,X   
       SEC            
       SBC    #$0A    
       DEX            
       DEX            
       BPL    L185A   
L1863: JMP    L1000   
L1866: LDA    #$23    
       STA    TIM64T  
       PLA            
       STA    $B6     
       LDA    $DC     
       BMI    L1892   
       LDX    #$00    
       BIT    WSYNC   
       BVS    L187D   
       INX            
       BIT    RSYNC   
       BVC    L188E   
L187D: STA    $A8,X   
       LDA    #$80    
       STA    $DC     
       LDA    #$06    
       STA    $DB     
       LDA    $CF     
       CLC            
       ADC    #$03    
       STA    $83     
L188E: BIT    VBLANK  
       BVS    L18E3   
L1892: LDA    $B6     
       BPL    L18C7   
       LDA    #$00    
       STA    $CA     
       STA    $A3     
       STA    $A4     
       STA    $A5     
       STA    $DB     
       STA    $DC     
       LDA    $B8     
       AND    #$7F    
       STA    $B8     
       LDA    #$C0    
       STA    $A2     
       BIT    $DD     
       BPL    L1912   
       LDA    $AD     
       SEC            
       SBC    #$0A    
       STA    $AD     
       BCS    L1912   
       LDA    #$00    
       STA    $AD     
       LDA    $B8     
       ORA    #$08    
       STA    $B8     
       BNE    L1912   
L18C7: LDA    $B8     
       AND    $DA     
       BPL    L1918   
       LDA    $A3     
       CMP    $D9     
       BCS    L1918   
       ADC    #$05    
       CMP    $D9     
       BCC    L1918   
       LDA    $AB     
       BNE    L1918   
       LDA    #$17    
       STA    $AB     
       BNE    L1918   
L18E3: LDY    #$00    
       STY    $9A     
       STY    $9C     
       STY    $A7     
       LDX    #$00    
       LDA    #$10    
       BIT    $EE     
       BPL    L18F5   
       LDA    #$30    
L18F5: JSR    L1CEA   
       LDA    $AD     
       CMP    #$2F    
       BEQ    L1900   
       INC    $AD     
L1900: BIT    $EC     
       BPL    L190C   
       LDA    $AD     
       CMP    #$2F    
       BEQ    L190C   
       INC    $AD     
L190C: LDA    $A4     
       AND    #$BF    
       STA    $A4     
L1912: LDA    #$00    
       STA    $9E     
       STA    $9D     
L1918: BIT    $DC     
       BVC    L1930   
       LDA    $DB     
       SEC            
       SBC    #$04    
       STA    $DB     
       CMP    #$06    
       BCS    L1953   
       JSR    L1C39   
       LDA    #$00    
       STA    $DC     
       STA    $DB     
L1930: BIT    $DC     
       BPL    L1953   
       LDA    $B4     
       LSR            
       BCC    L1953   
       INC    $DB     
       LDA    $DB     
       CMP    $A3     
       BNE    L1953   
       LDA    #$00    
       STA    $DC     
       STA    $DB     
       LDA    #$0F    
       STA    $A6     
       LDA    $A4     
       ORA    #$20    
       STA    $A4     
       INC    $AA     
L1953: LDA    $A2     
       BNE    L195A   
       JMP    L19D5   
L195A: CMP    #$97    
       BCS    L1969   
       LSR            
       LSR            
       LSR            
       TAY            
       LDX    L1E2E,Y 
       LDA    #$00    
       STA    $87,X   
L1969: LDA    $B4     
       AND    #$03    
       BNE    L1986   
       LDX    #$12    
       LDY    $CC     
L1973: LDA    $87,X   
       BEQ    L1983   
       LDA    L1000,Y 
       BNE    L197D   
       TYA            
L197D: AND    L1FB3,X 
       STA    $87,X   
       INY            
L1983: DEX            
       BPL    L1973   
L1986: DEC    $A2     
       BNE    L19D5   
       LDA    $B8     
       AND    #$08    
       BEQ    L199E   
       LDA    $B8     
       AND    #$3F    
       STA    $B8     
       LDA    #$00    
       STA    $A4     
       STA    $B5     
       BEQ    L19CF   
L199E: BIT    $DD     
       BPL    L19C3   
       BIT    $B8     
       BVC    L19B0   
       LDA    #$00    
       STA    $AA     
       LDA    $E7     
       STA    $BA     
       BNE    L19B7   
L19B0: LDA    $BA     
       CLC            
       ADC    #$02    
       STA    $BA     
L19B7: LDA    $B8     
       AND    #$3F    
       STA    $B8     
       JSR    L1C05   
       JMP    L19CC   
L19C3: LDA    $B8     
       EOR    #$40    
       STA    $B8     
       JSR    L1C01   
L19CC: JSR    L1D0C   
L19CF: LDA    $B8     
       AND    #$F7    
       STA    $B8     
L19D5: BIT    $B8     
       BVS    L19DC   
       JMP    L1AA2   
L19DC: LDA    $B4     
       AND    #$07    
       BNE    L1A0A   
       INC    $E0     
       LDA    $E0     
       CMP    $E5     
       BNE    L19F4   
       LDA    $B8     
       AND    #$20    
       BNE    L19F4   
       LDA    #$FF    
       STA    $E8     
L19F4: LDA    $DA     
       AND    #$20    
       BNE    L1A0A   
       LDA    $A1     
       CMP    #$01    
       BCC    L1A0A   
       LDA    #$10    
       CMP    $E0     
       BNE    L1A0A   
       LDA    #$60    
       STA    $DA     
L1A0A: LDA    $E9     
       ASL            
       TAY            
       LDA    $B4     
       AND    #$04    
       BNE    L1A15   
       INY            
L1A15: TYA            
       JSR    L1D3C   
       CLC            
       ADC    #$73    
       STA    $DE     
       LDA    $B4     
       AND    #$01    
       TAX            
       LDA    $A8,X   
       BPL    L1A3C   
       LDA    $D4,X   
       BEQ    L1A57   
       DEC    $D4,X   
       LDA    $ED     
       BMI    L1A51   
       LDA    $84     
       CLC            
       ADC    #$03    
       CMP    $D4,X   
       BEQ    L1A57   
       BNE    L1A51   
L1A3C: LDA    $D4,X   
       CMP    #$9B    
       BEQ    L1A57   
       INC    $D4,X   
       LDA    REFP1   
       BMI    L1A51   
       LDA    $D4,X   
       CLC            
       ADC    #$07    
       CMP    $84     
       BEQ    L1A57   
L1A51: LDA    $CC     
       AND    #$07    
       BNE    L1A5D   
L1A57: LDA    $A8,X   
       EOR    #$80    
       STA    $A8,X   
L1A5D: LDA    $DA     
       AND    #$20    
       BEQ    L1AA2   
       LDA    $B4     
       AND    #$03    
       BNE    L1A8A   
       BIT    $DA     
       BVC    L1A80   
       INC    $D9     
       INC    $D9     
       LDA    $D9     
       CMP    #$50    
       BNE    L1A8A   
L1A77: LDA    $DA     
       EOR    #$40    
       STA    $DA     
       JMP    L1A8A   
L1A80: DEC    $D9     
       DEC    $D9     
       LDA    $D9     
       CMP    #$16    
       BEQ    L1A77   
L1A8A: INC    $E1     
       ROL    $DA     
       LDX    $D9     
       CPX    #$16    
       BCC    L1A9C   
       LDA    $E1     
       CMP    $E6     
       CLC            
       BNE    L1AA0   
       SEC            
L1A9C: LDA    #$00    
       STA    $E1     
L1AA0: ROR    $DA     
L1AA2: LDY    #$00    
       BIT    $DD     
       BMI    L1AC7   
       JMP    L1BCE   
L1AAB: LDY    #$08    
       AND    #$10    
       BNE    L1AB3   
       LDY    #$00    
L1AB3: LDX    #$18    
       DEC    $E8     
       BNE    L1AC3   
       LDA    $B8     
       AND    #$EF    
       STA    $B8     
       LDA    #$01    
       STA    $BA     
L1AC3: LDA    #$01    
       BNE    L1AE8   
L1AC7: LDA    $A2     
       BNE    L1B04   
       LDA    $E8     
       BNE    L1AAB   
       LDA    $A4     
       ASL            
       BCS    L1B38   
       ASL            
       BCS    L1B16   
       ASL            
       BCS    L1AF2   
       LDA    $AB     
       BNE    L1AEB   
       BIT    $DA     
       BPL    L1AE8   
       LDY    #$0E    
       LDA    #$08    
       LDX    #$01    
L1AE8: JMP    L1B60   
L1AEB: TAX            
       LSR            
       TAY            
       LDA    #$0C    
       BNE    L1AE8   
L1AF2: LDY    $A6     
       LDX    $A6     
       DEC    $A6     
       BPL    L1B00   
       LDA    $A4     
       AND    #$DF    
       STA    $A4     
L1B00: LDA    #$04    
       BNE    L1AE8   
L1B04: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDX    #$03    
       LDA    $B4     
       LSR            
       BCC    L1B12   
       LDX    #$08    
L1B12: LDA    #$01    
       BNE    L1AE8   
L1B16: LDA    #$08    
       SEC            
       SBC    $A6     
       TAX            
       LDY    $A6     
       LDA    L1B31,Y 
       TAY            
       LDA    #$01    
       DEC    $A6     
       BPL    L1B2E   
       LDA    $A4     
       AND    #$BF    
       STA    $A4     
L1B2E: JMP    L1B60   
L1B31: .byte $00,$04,$08,$0C,$08,$04,$02
L1B38: LDA    $CA     
       BEQ    L1B50   
       LSR            
       CMP    #$13    
       BCS    L1B50   
       LSR            
       TAY            
       LDX    #$10    
       LDA    $B4     
       LSR            
       BCC    L1B4C   
       LDX    #$18    
L1B4C: LDA    #$04    
       BNE    L1B60   
L1B50: LDX    #$08    
       LDA    $B4     
       LSR            
       LSR            
       BCC    L1B5A   
       LDX    #$10    
L1B5A: LDA    #$0C    
       LDY    #$08    
       BNE    L1B60   
L1B60: STY    AUDV0   
       STX    AUDF0   
       STA    AUDC0   
       LDY    #$00    
       LDA    $A5     
       ASL            
       BCS    L1B9B   
       ASL            
       BCS    L1B8B   
       ASL            
       BCS    L1B76   
       JMP    L1BCE   
L1B76: LDY    #$08    
       LDX    #$10    
       BIT    $DC     
       BPL    L1B80   
       LDX    #$04    
L1B80: LDA    $B4     
       AND    #$01    
       BNE    L1B87   
       INX            
L1B87: LDA    #$04    
       BNE    L1BCE   
L1B8B: LDY    #$00    
       LDA    $B4     
       AND    #$02    
       BEQ    L1B95   
       LDY    #$08    
L1B95: LDX    #$08    
       LDA    #$04    
       BNE    L1BCE   
L1B9B: LDA    #$10    
       SEC            
       SBC    $A7     
       TAY            
       LDX    $BA     
       DEC    $A7     
       BPL    L1BAD   
       LDA    $A5     
       AND    #$7F    
       STA    $A5     
L1BAD: LDA    #$08    
       BIT    $EE     
       BPL    L1BBD   
       LDA    $B4     
       AND    #$02    
       BNE    L1BBB   
       LDY    #$00    
L1BBB: LDA    #$0C    
L1BBD: CPX    #$00    
       BNE    L1BCE   
       LDX    $F1     
       CPX    #$00    
       BNE    L1BCE   
       LDY    $A7     
       INY            
       LDX    #$02    
       LDA    #$0C    
L1BCE: STY    AUDV1   
       STX    AUDF1   
       STA    AUDC1   
L1BD4: BIT    $0285   
       BPL    L1BD4   
       JMP    L1383   
L1BDC: NOP            
       NOP            
       LDA    #$60    
       RTS            

L1BE1: LDA    #$01    
       STA    $B8     
       LDX    #$80    
       LDA    #$00    
L1BE9: STA    VSYNC,X 
       INX            
       CPX    #$B4    
       BNE    L1BE9   
       RTS            

L1BF1: LDX    #$00    
       BIT    $EC     
       BVC    L1C00   
       LDA    $B8     
       ASL            
       EOR    SWCHB   
       BPL    L1C00   
       INX            
L1C00: RTS            

L1C01: LDA    $E7     
       STA    $BA     
L1C05: LDA    #$40    
       STA    $DA     
       STA    $A8     
       LDA    #$C0    
       STA    $A9     
       LDA    $A1     
       LSR            
       STA    $F1     
L1C14: CMP    #$07    
       BCC    L1C1C   
       SBC    #$07    
       BCS    L1C14   
L1C1C: STA    $E9     
       LDA    #$00    
       STA    $D4     
       STA    $E0     
       STA    $E1     
       STA    $D9     
       STA    $A3     
       STA    $A5     
       LDX    $AA     
       STX    $EB     
       BEQ    L1C34   
       STA    $A9     
L1C34: LDA    #$9B    
       STA    $D5     
       RTS            

L1C39: LDX    #$00    
       BIT    $A8     
       BVC    L1C40   
       INX            
L1C40: LDA    $A8,X   
       ORA    #$40    
       STA    $A8,X   
       LDA    $83     
       STA    $D4,X   
       RTS            

L1C4B: LDY    #$00    
       LDA    $B8     
       AND    #$10    
       BEQ    L1C56   
       JMP    L1CB7   
L1C56: LDA    $CC     
       AND    #$0C    
       BNE    L1C70   
       LDA    $F1     
       BEQ    L1C70   
L1C60: DEC    $F1     
       LDA    #$02    
       STA    $EF     
       LDA    #$4E    
       STA    $F0     
       LDA    $EE     
       ORA    #$80    
       BNE    L1C8B   
L1C70: LDA    $BA     
       BNE    L1C81   
       LDA    $F1     
       BNE    L1C60   
       LDY    #$00    
       STY    $9D     
       STY    $9E     
       JMP    L1CBA   
L1C81: DEC    $BA     
       LDA    #$8E    
       STA    $F0     
       LDA    $EE     
       AND    #$7F    
L1C8B: STA    $EE     
       LDA    $CC     
       AND    #$03    
       TAY            
       BIT    $B8     
       BVC    L1C9B   
       CPY    #$03    
       BNE    L1C9B   
       DEY            
L1C9B: LDA    L1E41,Y 
       STA    $9D     
       LDA    L1E45,Y 
       STA    $81     
       LDA    $E2     
       STA    $D7     
       LDA    $E3     
       STA    $D8     
       ROL    $A5     
       SEC            
       ROR    $A5     
       LDA    #$10    
       STA    $A7     
       INY            
L1CB7: STY    $9E     
       RTS            

L1CBA: LDA    $B8     
       ORA    #$20    
       STA    $B8     
       LDA    $A4     
       ORA    #$80    
       STA    $A4     
       LDA    $AA     
       SEC            
       SBC    $EB     
       TAX            
       LDA    #$00    
       STA    $CA     
       STA    $A3     
       STA    $DA     
       STA    $D9     
L1CD6: DEX            
       BMI    L1CDE   
       CLC            
       ADC    #$0A    
       BNE    L1CD6   
L1CDE: CLC            
       ADC    $AD     
       CMP    #$30    
       BCC    L1CE7   
       LDA    #$2F    
L1CE7: STA    $AD     
       RTS            

L1CEA: SED            
       CLC            
       ADC.wy $00B2,Y 
       STA.wy $00B2,Y 
       TXA            
       BCC    L1CF7   
       ADC    #$00    
L1CF7: CLC            
       ADC.wy $00B0,Y 
       STA.wy $00B0,Y 
       LDA    #$00    
       BCC    L1D04   
       ADC    #$00    
L1D04: ADC.wy $00AE,Y 
       STA.wy $00AE,Y 
       CLD            
       RTS            

L1D0C: LDA    #$B7    
       STA    $C9     
       LDA    #$40    
       STA    $84     
       LDA    #$0A    
       STA    $B9     
       LDA    #$01    
       STA    $CA     
       LDA    $A4     
       ORA    #$80    
       STA    $A4     
       RTS            

L1D23: STA    $B7     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    L1D3C   
       STA    $BD,X   
       INX            
       INX            
       LDA    $B7     
       AND    #$0F    
       JSR    L1D3C   
       STA    $BD,X   
       INX            
       INX            
       RTS            

L1D3C: ASL            
       STA    $B6     
       ASL            
       ASL            
       CLC            
       ADC    $B6     
       RTS            

L1D45: LDA    $BC     
       CMP    #$04    
       LDA    #$02    
       STA    $E2     
       LDA    #$70    
       BCC    L1D53   
       LDA    #$F0    
L1D53: STA    $E3     
       LDA    #$80    
       BCC    L1D5B   
       LDA    #$E0    
L1D5B: STA    $E4     
       LDA    #$70    
       BCC    L1D63   
       LDA    #$10    
L1D63: STA    $E6     
       LDA    #$70    
       BCC    L1D6B   
       LDA    #$40    
L1D6B: STA    $E5     
       LDA    #$08    
       BCC    L1D73   
       LDA    #$14    
L1D73: STA    $E7     
       LDA    L1DBE   
       STA    $EA     
       RTS            

L1D7B: LDA    $A1     
       AND    #$03    
       BNE    L1D96   
       LDA    $A1     
       LSR            
       LSR            
       AND    #$03    
       TAY            
       LDA    L1DBE,Y 
       STA    $EA     
       LDA    $E4     
       CLC            
       ADC    #$08    
       BCS    L1D96   
       STA    $E4     
L1D96: LDA    $E6     
       SEC            
       SBC    #$08    
       BEQ    L1D9F   
       STA    $E6     
L1D9F: LDA    $E7     
       CMP    #$1E    
       BEQ    L1DA7   
       INC    $E7     
L1DA7: LDA    $E3     
       CLC            
       ADC    #$10    
       STA    $E3     
       BCC    L1DB2   
       INC    $E2     
L1DB2: LDA    $E5     
       CMP    #$30    
       BEQ    L1DBD   
       SEC            
       SBC    #$04    
       STA    $E5     
L1DBD: RTS            

L1DBE: .byte $DE,$8E,$4E,$2E
L1DC2: .byte $FF,$FF,$FF,$FF,$01,$01,$01,$01,$FF,$FF,$FF,$FF,$FF,$FF
L1DD0: .byte $FC,$F8,$F4,$EC,$DC,$BC,$7C,$FC,$00,$18,$FF,$70,$FF,$18,$00,$00
       .byte $00,$18,$FF,$0E,$FF,$18,$00,$00,$00,$20,$04,$81,$00,$20,$08,$81
       .byte $42,$00,$10,$4A,$10,$08,$42,$24,$18,$A5,$00,$A5,$00,$A5,$18,$00
       .byte $00,$3C,$7E,$6F,$5F,$3A,$1E,$0C,$00,$1C,$2E,$76,$FE,$DE,$7C,$18
       .byte $30,$78,$5C,$FA,$F6,$7E,$3C,$00,$18,$3E,$78,$7F,$6E,$74,$38,$00
       .byte $11,$21,$22,$33
L1E24: .byte $0C,$0C,$0C,$0C,$0C,$0A,$08,$06,$04,$02
L1E2E: .byte $09,$08,$0A,$07,$0B,$06,$0C,$05,$0D,$04,$0E,$03,$0F,$02,$10,$01
       .byte $11,$00,$12
L1E41: .byte $5B,$5B,$C0,$00
L1E45: .byte $00,$98,$4C,$4C
L1E49: .byte $C0,$20,$50,$80,$F0,$A0,$C8,$E4,$F0,$44,$88,$64,$30,$50,$90,$00
L1E59: .byte $0D,$1C,$2B,$3A,$49,$58,$67,$76,$85,$94,$85,$76,$67,$58,$49,$3A
       .byte $2B,$1C
L1E6B: .byte $00,$02,$03,$12,$13,$23,$32,$33,$00,$38,$28,$28,$38,$08,$38,$20
       .byte $38,$00,$00,$00,$00,$38,$28,$38,$28,$38,$38,$00,$00,$00,$00,$38
       .byte $10,$10,$38,$28,$08,$08,$00,$00,$00,$00,$38,$10,$38,$28,$20,$20
       .byte $00,$00,$00,$00,$00,$08,$4C,$38,$44,$00,$00,$00,$00,$00,$00,$08
       .byte $0C,$78,$28,$00,$00,$08,$14,$18,$1C,$10,$10,$10,$20,$00,$00,$00
       .byte $08,$14,$18,$1C,$10,$08,$00,$00,$24,$24,$18,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$18,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C
       .byte $18,$3C,$3C,$0C,$04,$00,$00,$00,$18,$3C,$24,$3C,$3C,$30,$20,$00
       .byte $00,$00,$00,$18,$30,$20,$30,$18,$00,$00,$00,$00,$00,$18,$3C,$20
       .byte $3C,$18,$00,$00,$00,$00,$3E,$26,$26,$26,$26,$26,$22,$22,$3E,$00
       .byte $18,$18,$18,$18,$18,$08,$08,$08,$08,$00,$7E,$60,$60,$60,$7E,$02
       .byte $02,$42,$7E,$00,$7E,$46,$46,$06,$06,$3C,$04,$44,$7C,$00,$0C,$0C
       .byte $0C,$7E,$44,$44,$44,$44,$44,$00,$7E,$46,$46,$06,$06,$7E,$40,$40
       .byte $7E,$00,$7E,$46,$46,$46,$7E,$40,$40,$42,$7E,$00,$06,$06,$06,$06
       .byte $06,$06,$06,$02,$3E,$00,$7E,$46,$46,$46,$66,$3C,$24,$24,$3C,$00
       .byte $06,$06,$06,$06,$3E,$22,$22,$22,$3E,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$07,$26
       .byte $56,$26,$06,$07,$03,$00,$00,$E3,$F7,$76,$06,$06,$76,$F7,$E3,$00
       .byte $00,$E3,$F7,$76,$06,$07,$76,$F7,$E3,$00,$00,$E0,$F0,$72,$05,$F2
       .byte $70,$F0,$E0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
L1FB3: .byte $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$FE,$FC,$FE,$FF,$FE,$FC,$F8,$F0
       .byte $E0,$C0,$80
L1FC6: .byte $4E,$4C,$4A,$48,$46,$44,$42,$4E,$42,$0E,$42,$4E,$42,$44,$46,$48
       .byte $4A,$4C,$4E
L1FD9: .byte $10,$10,$10,$10,$10,$10,$30,$FF,$FF,$FF
L1FE3: .byte $00,$00,$00,$00,$00,$30,$79,$FF,$FF,$FF
L1FED: .byte $00,$00,$00,$00,$80,$C0,$F3,$FF,$FF,$FF
L1FF7: .byte $00,$18,$18,$08,$08,$51,$13,$51,$13
