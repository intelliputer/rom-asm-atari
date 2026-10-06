; Disassembly of roms/Riddle of the Sphinx.bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Riddle of the Sphinx.bin
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
REFP1   =  $0C
PF0     =  $0D
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
       LDX    #$1B    
       STX    $90     
       STX    $92     
       STX    $85     
       INX            
       STX    $84     
       STX    $94     
       STX    $96     
       LDA    #$12    
       STA    $89     
       JSR    L1ADA   
       LDA    #$80    
       STA    $82     
L1025: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       LDX    #$0B    
       LDA    #$1D    
       BIT    $82     
       BPL    L1035   
       LDA    #$1F    
L1035: STA    $E6,X   
       DEX            
       DEX            
       BPL    L1035   
       LDA    $81     
       AND    $83     
       STA    COLUBK  
       INC    $86     
       STA    WSYNC   
       BNE    L106D   
       INC    $87     
       BNE    L104F   
       LDA    #$F3    
       STA    $83     
L104F: LDA    $82     
       AND    #$FB    
       STA    $82     
       AND    #$02    
       LSR            
       AND    $87     
       LSR            
       BCC    L106D   
       DEC    $9D     
       BPL    L1063   
       INC    $9D     
L1063: SED            
       LDA    $9E     
       ADC    #$00    
       BCS    L106C   
       STA    $9E     
L106C: CLD            
L106D: INX            
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$30    
       STA    TIM64T  
       LDA    $82     
       AND    #$02    
       BEQ    L10D9   
       LDX    #$06    
       LDA    $86     
       BIT    SWCHB   
       AND    #$07    
       BVC    L1089   
       LSR            
L1089: BNE    L10D9   
L108B: LDA    $D2,X   
       CMP    #$D0    
       BEQ    L10D6   
       LDA    $CB,X   
       CMP    #$70    
       BCC    L10D6   
       CMP    #$C0    
       BCS    L10D6   
       CMP    #$90    
       BNE    L10BC   
       LDA    $86     
       AND    #$3F    
       ORA    $98     
       BNE    L10BC   
       LDA    $D2,X   
       CMP    #$F0    
       BCS    L10BC   
       STA    $9A     
       LDA    $C4,X   
       STA    $98     
       LDY    #$00    
       STY    $E1     
       JSR    L19A4   
       STY    $9B     
L10BC: JSR    L1947   
       LDA    $86     
       AND    #$0F    
       BNE    L10D6   
       LDA    $D9,X   
       STA    $E1     
       JSR    L19A4   
       LDA    $CB,X   
       SEC            
       SBC    #$B0    
       BNE    L10D4   
       TAY            
L10D4: STY    $D9,X   
L10D6: DEX            
       BPL    L108B   
L10D9: LDA    $86     
       AND    #$0F    
       BNE    L10FA   
       LDX    $9C     
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       BCS    L10EE   
       DEX            
       BPL    L10EE   
       LDX    #$0B    
L10EE: LSR            
       BCS    L10F8   
       INX            
       CPX    #$0C    
       BCC    L10F8   
       LDX    #$00    
L10F8: STX    $9C     
L10FA: LDA    SWCHB   
       LSR            
       PHP            
       LSR            
       BCC    L110A   
       LDA    #$40    
       ORA    $82     
       STA    $82     
       BNE    L1129   
L110A: BIT    $82     
       BVC    L1129   
       LDX    $80     
       INX            
       CPX    #$03    
       BNE    L1117   
       LDX    #$00    
L1117: STX    $80     
       LDA    #$00    
       STA    $82     
       JSR    L1ADA   
       LDX    $80     
       INX            
       TXA            
       ASL            
       ASL            
       ASL            
       STA    $B0     
L1129: PLP            
       BCS    L115E   
       JSR    L1ADA   
       LDY    #$80    
       LDX    #$FE    
       LDA    $80     
       LSR            
       BCC    L113A   
       LDX    #$D6    
L113A: LSR            
       BCC    L1141   
       LDX    #$36    
       LDY    #$90    
L1141: STX    $AA     
       STY    $B0     
       LDA    #$03    
       STA    $82     
       JSR    L1FDC   
       TAX            
       LDA    $86     
       BNE    L1152   
       TXA            
L1152: STA    $84     
       AND    #$03    
       CMP    #$03    
       BNE    L115C   
       LDA    #$02    
L115C: STA    $AB     
L115E: LDA    $9D     
       CMP    #$09    
       BCC    L1176   
       CMP    #$09    
       BCC    L116A   
       LDA    #$09    
L116A: STA    $9D     
       LDA    #$FD    
       AND    $82     
       STA    $82     
       LDA    #$F6    
       STA    $81     
L1176: LDA    $82     
       AND    #$02    
       BEQ    L11EC   
       LDX    $A0     
       INX            
       CPX    #$38    
       BCC    L1198   
       LDX    #$00    
       SED            
       LDA    $A1     
       ADC    #$00    
       STA    $A1     
       CMP    #$60    
       BCC    L1198   
       STX    $A1     
       LDA    $A2     
       ADC    #$00    
       STA    $A2     
L1198: STX    $A0     
       CLD            
       BIT    PF0     
       BMI    L11C5   
       LDX    $9C     
       LDA    SWCHA   
       LSR            
       LSR            
       BCS    L11AE   
       LDA    #$58    
       STA    $B0,X   
       BNE    L11C5   
L11AE: LDA    $B0,X   
       SEC            
       SBC    #$58    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L1FCB,Y 
       STA    $E0     
       LDA    #$1F    
       STA    $E1     
       LDA    #$58    
       JMP.ind ($00E0)
L11C5: BIT    REFP1   
       BMI    L11EC   
       LDY    $97     
       BNE    L11EC   
       LDA    $9D     
       ASL            
       ASL            
       ASL            
       ADC    $9E     
       BCS    L11DA   
       CMP    #$68    
       BCC    L11DC   
L11DA: LDA    #$68    
L11DC: STA    $E1     
       LDA    #$6A    
       SBC    $E1     
       STA    $9F     
       LDY    #$00    
       STY    $99     
       LDY    $AF     
       STY    $97     
L11EC: LDA    $86     
       LSR            
       PHP            
       ROL            
       AND    #$03    
       BNE    L121D   
       LDA    $98     
       BEQ    L121D   
       LDA    $9B     
       BEQ    L121D   
       STA    $E0     
       ASL            
       LDA    $98     
       JSR    L1397   
       BCC    L120D   
       LDA    #$01    
       STA    $E0     
       LDA    #$00    
L120D: STA    $98     
       ROR    $E0     
       BCS    L121D   
       PHA            
       LDA    $9B     
       ASL            
       PLA            
       JSR    L1397   
       STA    $98     
L121D: LDX    $99     
       INX            
       PLP            
       PHP            
       BCS    L1225   
       INX            
L1225: DEC    $9F     
       BEQ    L122D   
       CPX    #$80    
       BCC    L1231   
L122D: LDX    #$00    
       STX    $97     
L1231: STX    $99     
       LDX    $9A     
       DEX            
       PLP            
       BCC    L123A   
       DEX            
L123A: CPX    #$EA    
       BCC    L1246   
       CPX    #$F0    
       BCS    L1246   
       LDX    #$00    
       STX    $98     
L1246: STX    $9A     
       LDX    #$00    
       STX    $E0     
L124C: LDY    $D2,X   
       CPY    #$D0    
       BNE    L125B   
       INC    $E0     
L1254: INX            
       CPX    #$07    
       BNE    L124C   
       BEQ    L127C   
L125B: LDA    $E0     
       BEQ    L1254   
L125F: LDA    $CB,X   
       PHA            
       LDA    $C4,X   
       PHA            
       LDA    $D9,X   
       DEX            
       STA    $D9,X   
       PLA            
       STA    $C4,X   
       PLA            
       STA    $CB,X   
       STY    $D2,X   
       INX            
       INX            
       CPX    #$07    
       BEQ    L127C   
       LDY    $D2,X   
       BCC    L125F   
L127C: LDX    #$00    
L127E: LDY    $D2,X   
       BEQ    L128A   
       CPY    #$F0    
       BCS    L128A   
       CPY    #$D0    
       BNE    L128C   
L128A: LDY    #$01    
L128C: INX            
       CPX    #$07    
       BEQ    L1296   
       DEY            
       STY    $BC,X   
       BPL    L127E   
L1296: LDX    #$00    
       STX    COLUPF  
       LDA    $86     
       LSR            
       BCS    L12B3   
       LDY    $99     
       LDA    $97     
       BNE    L12B9   
L12A5: LDA    #$0E    
       AND    $83     
       STA    COLUPF  
       LDA    $AF     
       LDX    #$20    
       LDY    #$01    
       BNE    L12B9   
L12B3: LDY    $9A     
       LDA    $98     
       BEQ    L12A5   
L12B9: STA    WSYNC   
       STX    CTRLPF  
       NOP            
       STX    CTRLPF  
       STY    $AC     
       STA    HMBL    
       AND    #$0F    
       TAY            
L12C7: DEY            
       BPL    L12C7   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A7     
       BEQ    L130B   
       CMP    #$01    
       BNE    L12EC   
       JSR    L1FDC   
       AND    #$07    
       ORA    #$03    
       TAY            
       LDA    $86     
       AND    #$03    
       BEQ    L12E8   
       LDA    #$0F    
L12E8: LDX    #$05    
       BNE    L1300   
L12EC: CMP    #$02    
       BNE    L12F6   
       LDY    $A9     
       LDX    #$05    
       LDA    #$0F    
L12F6: CMP    #$03    
       BNE    L1300   
       LDA    #$0F    
       LDX    #$0C    
       LDY    #$1F    
L1300: CMP    #$04    
       BNE    L130B   
       LDX    #$0D    
       LDY    #$04    
       LDA    $A9     
       ASL            
L130B: STA    AUDV1   
       STX    AUDC1   
       STY    AUDF1   
       DEC    $A9     
       BPL    L131B   
       LDA    #$00    
       STA    AUDV1   
       STA    $A7     
L131B: LDX    $A6     
       DEX            
       BPL    L1321   
       INX            
L1321: STX    $A6     
       LDA    L1F25,X 
       STA    AUDV0   
       JSR    L1FDC   
L132B: LDA    INTIM   
       BNE    L132B   
       STA    WSYNC   
       STA    VBLANK  
       STA    $E4     
       STA    $AE     
       STA    $E1     
       STA    $E0     
       LDA    $8C     
       CMP    #$10    
       BCC    L1349   
       SBC    #$10    
       TAY            
       STY    $E0     
       LDA    #$10    
L1349: STA    $E5     
       LDX    #$1F    
       TXS            
       STA    HMCLR   
       LDX    #$80    
       STX    $AD     
       STX    $BC     
       JMP    L1400   
L1359: LDX    #$02    
       SED            
L135C: CLC            
       ADC    $A3,X   
       STA    $A3,X   
       BCC    L1368   
       LDA    #$01    
       DEX            
       BPL    L135C   
L1368: CLD            
       RTS            

L136A: LDX    #$02    
       STA    $E0     
       SED            
L136F: SEC            
       LDA    $A3,X   
       SBC    $E0     
       STA    $A3,X   
       BCS    L138D   
       LDA    #$01    
       STA    $E0     
       CPX    #$02    
       BNE    L138A   
       LDA    $A4     
       ORA    $A3     
       BNE    L138A   
       STA    $A5     
       BEQ    L138D   
L138A: DEX            
       BPL    L136F   
L138D: CLD            
       LDX    #$03    
       STX    $A7     
       LDX    #$10    
       STX    $A9     
       RTS            

L1397: TAY            
       BCS    L13AB   
       CMP    #$00    
       BEQ    L13AA   
       CLC            
       ADC    #$10    
       BPL    L13A9   
       CMP    #$90    
       BCS    L13A9   
       SBC    #$F0    
L13A9: CLC            
L13AA: RTS            

L13AB: CMP    #$88    
       BEQ    L13AA   
       SEC            
       SBC    #$10    
       BMI    L13BA   
       CMP    #$70    
       BCC    L13BA   
       ADC    #$F0    
L13BA: CLC            
       RTS            

L13BC: LDY    #$08    
L13BE: DEY            
       STY    $E1     
       LDA    ($F0),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($EE),Y 
       STA    GRP1    
       LDA    ($EC),Y 
       STA    GRP0    
       LDA    ($EA),Y 
       STA    $E2     
       LDA    ($E8),Y 
       TAX            
       LDA    ($E6),Y 
       TAY            
       LDA    $E2     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $E1     
       BNE    L13BE   
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       RTS            

L13F0: .byte $23,$7D,$D3,$6F,$15,$56,$00,$CF,$92,$AA,$C4,$B1,$8F,$00,$00,$00
L1400: STA    WSYNC   
       STA    CXCLR   
       NOP            
       LDY    $8A     
       INY            
       STY    $8B     
       CPX    $AC     
       PHP            
       PLA            
       DEX            
       BEQ    L1429   
       LDA    $E0     
       BEQ    L1441   
       DEC    $E0     
       BPL    L1400   
L1419: NOP            
       NOP            
       LDA    $E0     
       LDA    #$00    
       BEQ    L1450   
L1421: LDA    #$00    
       STA    $E1     
       LDA    $81     
       BNE    L1485   
L1429: JMP    L1599   
L142C: STA    COLUP1  
       LDA    $E1     
       STA    GRP1    
       LDA    ($8F),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    COLUP0  
       CPX    $AC     
       PHP            
       PLA            
       DEX            
       BEQ    L1429   
L1441: TXA            
       SEC            
       SBC    $AD     
       TAY            
       AND    #$F0    
       BNE    L1419   
       LDA    ($91),Y 
       STA    $E1     
       LDA    ($95),Y 
L1450: DEC    $E4     
       LDY    $E4     
       BPL    L142C   
       DEC    $8B     
       STA    COLUP1  
       LDA    $E1     
       STA    GRP1    
       CPX    $AC     
       PHP            
       PLA            
       LDY    $8B     
       LDA    ($88),Y 
       AND    #$07    
       STA    $E0     
       TYA            
       AND    #$0F    
       STA    $E2     
       AND    #$06    
       STA    NUSIZ0  
       DEX            
       BEQ    L1429   
       TXA            
       SEC            
       SBC    $AD     
       TAY            
       AND    #$F0    
       BNE    L1421   
       LDA    ($91),Y 
       STA    $E1     
       LDA    ($95),Y 
L1485: STA    COLUP1  
       LDA    $E1     
       STA    GRP1    
       CPX    $AC     
       PHP            
       PLA            
       LDA    $E2     
       BEQ    L14B2   
       LDY    $8B     
       LDA    ($88),Y 
       LSR            
       AND    #$07    
       TAY            
       LDA    L1DE8,Y 
       STA    $93     
       STA    $8F     
       DEX            
       BNE    L14C3   
L14A5: JMP    L1599   
L14A8: LDA    #$00    
       LDY    #$00    
       BEQ    L14D0   
L14AE: LDA    #$00    
       BEQ    L14F8   
L14B2: LDA    $8B     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L1DF0,Y 
       STA    $93     
       STA    $8F     
       DEX            
       BEQ    L14A5   
L14C3: TXA            
       SEC            
       SBC    $AD     
       TAY            
       AND    #$F0    
       BNE    L14A8   
       LDA    ($91),Y 
       STA    GRP1    
L14D0: CPX    $AC     
       STA    WSYNC   
       PHP            
       NOP            
       LDA    ($95),Y 
       STA    COLUP1  
       LDY    $E0     
       DEX            
       BEQ    L1546   
L14DF: DEY            
       BPL    L14DF   
       STA    RESP0   
       PLA            
       SEC            
       TXA            
       SBC    $AD     
       STA    WSYNC   
       TAY            
       AND    #$F0    
       BNE    L14AE   
       LDA    ($95),Y 
       STA    COLUP1  
       LDA    ($91),Y 
       STA    GRP1    
L14F8: STA    $E1     
       CPX    $AC     
       PHP            
       PLA            
       DEX            
       BEQ    L1546   
       LDY    $AE     
       TXA            
       CMP.wy $00BC,Y 
       BCS    L1549   
       LDA.wy $00CB,Y 
       STA    $91     
       STA    $95     
       LDA.wy $00D2,Y 
       STA    $AD     
       LDA    $E5     
       STA    $E4     
       LDA.wy $00C4,Y 
       INY            
       STY    $AE     
       STA    WSYNC   
       STA    HMP1    
       AND    #$0F    
       TAY            
       CPX    $AC     
       PHP            
       DEX            
       BEQ    L1599   
L152C: DEY            
       BPL    L152C   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       PLA            
       CPX    $AC     
       PHP            
       PLA            
       DEX            
       BEQ    L1599   
       LDA    #$10    
       STA    $E5     
       NOP            
       NOP            
       JMP    L1441   
L1546: JMP    L1599   
L1549: TXA            
       SEC            
       SBC    $AD     
       TAY            
       AND    #$F0    
       BNE    L1556   
       LDA    ($91),Y 
       STA    $E1     
L1556: STA    WSYNC   
       LDA    $E1     
       STA    GRP1    
       LDA    ($95),Y 
       STA    COLUP1  
       CPX    $AC     
       PHP            
       PLA            
       DEX            
       BEQ    L1599   
       TXA            
       SEC            
       SBC    $AD     
       TAY            
       AND    #$F0    
       BNE    L1595   
       LDA    ($91),Y 
       STA    $E1     
L1574: LDA    $E5     
       STA    $E4     
       LDA    #$10    
       STA    $E5     
       LDA    ($95),Y 
       STA    WSYNC   
       NOP            
       STA    COLUP1  
       LDA    $E1     
       STA    GRP1    
       CPX    $AC     
       PHP            
       PLA            
       DEX            
       BEQ    L1599   
       LDA    #$10    
       STA    $E5     
       JMP    L1441   
L1595: LDY    #$00    
       BEQ    L1574   
L1599: LDA    $AF     
       STA    HMP0    
       LDY    #$B0    
       STY    $93     
       LDY    #$90    
       STY    $8F     
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       STX    ENABL   
       AND    #$0F    
       TAY            
       NOP            
       NOP            
L15B2: DEY            
       BPL    L15B2   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    WSYNC   
       STA    $E3     
       LDA    RSYNC   
       STA    $E4     
       STA    CXCLR   
       STX    NUSIZ0  
       LDX    #$1F    
       TXS            
       LDX    #$FD    
       LDY    #$0F    
L15CE: LDA    ($8F),Y 
       STA    WSYNC   
       CPX    $AC     
       PHP            
       STA    GRP0    
       LDA    ($93),Y 
       AND    $83     
       STA    COLUP0  
       DEX            
       PLA            
       DEY            
       BPL    L15CE   
       LDA    #$30    
       STA    CTRLPF  
       STA    WSYNC   
       LDA    #$00    
       AND    $83     
       STA    COLUPF  
       LDX    $9C     
       LDA    L1CF3,X 
       STA    HMBL    
       AND    #$0F    
       TAX            
       LDA    #$40    
L15FA: DEX            
       BPL    L15FA   
       STA    RESBL   
       STA    REFP1   
       STA    WSYNC   
       STA    HMP1    
       LDA    #$18    
       AND    $83     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$33    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP0    
       TXS            
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$20    
       LDA    WSYNC   
       STA    RESP0   
       STA    RESP1   
       STA    $E5     
       STA    WSYNC   
       STA    HMOVE   
       STX    TIM8T   
       BIT    $82     
       BMI    L167F   
       LDA    SWCHB   
       ASL            
       AND    #$10    
       BEQ    L165E   
       BCC    L1695   
       LDA    #$58    
       STA    $F0     
       LDA    #$50    
       STA    $EA     
       LDX    #$01    
       LDY    #$06    
L1645: LDA    $A1,X   
       LSR            
       AND    #$78    
       STA.wy $00E8,Y 
       LDA    $A1,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00E6,Y 
       LDY    #$00    
       DEX            
       BPL    L1645   
       BMI    L16CB   
L165E: LDA    #$58    
       STA    $F0     
       STA    $EC     
       STA    $EA     
       LDA    $9D     
       ASL            
       ASL            
       ASL            
       STA    $EE     
       LDA    $9E     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $E6     
       LDA    $9E     
       LSR            
       AND    #$78    
       STA    $E8     
       BPL    L16CB   
L167F: LDY    #$05    
       LDX    #$0A    
L1683: LDA    L1F17,Y 
       STA    $E6,X   
       DEX            
       DEX            
       DEY            
       BPL    L1683   
       LDA    #$0E    
       AND    $83     
       STA    COLUPF  
       BNE    L16CB   
L1695: LDY    #$0A    
       LDX    #$00    
       CLC            
L169A: LDA    $A3,X   
       AND    #$F0    
       BNE    L16A6   
       BCS    L16A6   
       LDA    #$58    
       BNE    L16A8   
L16A6: LSR            
       SEC            
L16A8: STA.wy $00E6,Y 
       DEY            
       DEY            
       LDA    $A3,X   
       AND    #$0F    
       BNE    L16B9   
       BCS    L16B9   
       LDA    #$58    
       BNE    L16BD   
L16B9: ASL            
       ASL            
       ASL            
       SEC            
L16BD: STA.wy $00E6,Y 
       DEY            
       INX            
       TXA            
       AND    #$02    
       BEQ    L16C8   
       SEC            
L16C8: DEY            
       BPL    L169A   
L16CB: BIT    $0285   
       BPL    L16CB   
       JSR    L13BC   
       LDX    #$0A    
L16D5: LDA.wy $00B0,Y 
       STA    $E6,X   
       INY            
       DEX            
       DEX            
       BPL    L16D5   
       LDX    #$00    
       STA    WSYNC   
       LDA    $9C     
       CMP    #$06    
       BCS    L16EB   
       LDX    #$02    
L16EB: STX    ENABL   
       STX    $E0     
       JSR    L13BC   
       STY    ENABL   
       LDY    #$06    
       LDX    #$0A    
L16F8: LDA.wy $00B0,Y 
       STA    $E6,X   
       INY            
       DEX            
       DEX            
       BPL    L16F8   
       LDA    $E0     
       EOR    #$FF    
       STA    WSYNC   
       STA    ENABL   
       JSR    L13BC   
       STY    ENABL   
       STY    NUSIZ0  
       STY    NUSIZ1  
       STY    VDELP0  
       STY    VDELP1  
       DEY            
       STY    REFP1   
       STY    HMCLR   
       STA    WSYNC   
       LDA    #$2B    
       STA    TIM64T  
       LDA    #$02    
       STA    VBLANK  
       LDA    $83     
       CMP    #$F3    
       BNE    L1734   
       INY            
       STY    $E3     
       STY    $E4     
       STY    $E5     
L1734: LDA    $86     
       LSR            
       BCC    L1745   
       LDA    $98     
       BEQ    L1745   
       BIT    $E3     
       BVC    L1745   
       LDA    #$ED    
       STA    $9A     
L1745: BIT    $E5     
       BVC    L1781   
       LDX    $9C     
       LDA    $B0,X   
       CMP    #$80    
       BNE    L1762   
       LDY    $A8     
       INY            
       CPY    #$0A    
       BCC    L175D   
       JSR    L1FA5   
       LDY    #$00    
L175D: STY    $A8     
       JMP    L176F   
L1762: CMP    #$C8    
       BEQ    L1781   
       INC    $9D     
       BIT    SWCHB   
       BVC    L176F   
       INC    $9D     
L176F: LDA    #$ED    
       STA    $9A     
       LDA    #$1F    
       STA    AUDF0   
       LDA    #$01    
       STA    $86     
       STA    AUDC0   
       LDA    #$07    
       STA    $A6     
L1781: LDA    $86     
       LSR            
       BCS    L17DC   
       LDA    $97     
       BEQ    L17DC   
       BIT    $E4     
       BVC    L17D4   
       LDX    #$06    
L1790: LDA    $AC     
       SEC            
       SBC    $D2,X   
       AND    #$F0    
       BEQ    L179E   
       DEX            
       BPL    L1790   
       BMI    L17D4   
L179E: LDY    #$01    
       STY    $9F     
       LDA    $CB,X   
       CMP    #$70    
       BCC    L17D4   
       CMP    #$C0    
       BEQ    L17D4   
       CMP    #$90    
       LDY    #$77    
       BCC    L17BC   
       LDY    #$D0    
       STY    $D2,X   
       CMP    #$B0    
       BNE    L17C3   
       LDY    #$80    
L17BC: TYA            
       JSR    L136A   
       JMP    L17D4   
L17C3: LDA    #$60    
       JSR    L1359   
       LDA    #$17    
       STA    AUDF0   
       LDA    #$01    
       STA    AUDC0   
       LDA    #$07    
       STA    $A6     
L17D4: BIT    $E3     
       BVC    L17DC   
       LDY    #$01    
       STY    $9F     
L17DC: LDA    $82     
       AND    #$06    
       EOR    #$02    
       BNE    L1848   
       LDA    $8A     
       CMP    $8D     
       BEQ    L1848   
       LDA    $86     
       LSR            
       BCS    L17F5   
       LDA    $97     
       BNE    L1848   
       BEQ    L17F9   
L17F5: LDA    $98     
       BNE    L1848   
L17F9: BIT    $E4     
       BVC    L1848   
       LDA    $8A     
       STA    $8D     
       LDA    $82     
       ORA    #$04    
       STA    $82     
       LDA    #$80    
       STA    $86     
       LDX    #$06    
L180D: LDA    $D2,X   
       BEQ    L181A   
       CMP    #$F6    
       BCS    L181A   
       DEX            
       BPL    L180D   
       BMI    L1848   
L181A: LDA    $CB,X   
       PHA            
       CMP    #$70    
       BCS    L1825   
       LDA    #$00    
       STA    $8D     
L1825: LDA    $8A     
       CMP    #$05    
       BNE    L1830   
       LDA    #$60    
       JSR    L1924   
L1830: PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L13F0,Y 
       STA    $E0     
       LDA    #$1E    
       STA    $E1     
       STX    $E2     
       LDX    $9C     
       LDA    $B0,X   
       JMP.ind ($00E0)
L1848: LDA    $83     
       CMP    #$F8    
       BCS    L1853   
       LDX    #$01    
       JMP    L18C4   
L1853: LDA    $82     
       AND    #$02    
       BNE    L185C   
       JMP    L190B   
L185C: LDX    $9C     
       LDA    $B0,X   
       CMP    #$D8    
       BEQ    L187D   
       LDA    $9E     
       LSR            
       LSR            
       LSR            
       LSR            
       ADC    $9D     
       CMP    #$08    
       BCC    L1872   
       LDA    #$07    
L1872: TAX            
       LDA    $86     
       AND    L1DE0,X 
       BEQ    L187D   
       JMP    L190B   
L187D: LDX    #$00    
       LDA    SWCHA   
       ASL            
       ASL            
       BMI    L1887   
       DEX            
L1887: ASL            
       BMI    L188B   
       INX            
L188B: BIT    $E3     
       BVS    L1893   
       BIT    $E4     
       BVC    L18AC   
L1893: LDY    $8C     
       TXA            
       BPL    L18A4   
       CPY    #$06    
       BCC    L18A0   
       CPY    #$13    
       BCC    L18AC   
L18A0: LDX    #$00    
       BEQ    L18AC   
L18A4: CPY    #$13    
       BCS    L18AC   
       CPY    #$05    
       BCS    L18A0   
L18AC: TXA            
       BMI    L18BF   
       LDA    $8A     
       CMP    $AA     
       BNE    L18C4   
       LDX    #$10    
       STX    $A9     
       LDX    #$03    
       STX    $A7     
       LDX    #$00    
L18BF: LDA    $8A     
       BNE    L18C4   
       TAX            
L18C4: TXA            
       CLC            
       ADC    $8C     
       BMI    L18D4   
       CMP    #$16    
       BCC    L18D8   
       LDA    #$00    
       INC    $8A     
       BCS    L18D8   
L18D4: LDA    #$15    
       DEC    $8A     
L18D8: STA    $8C     
       TXA            
       EOR    #$FF    
       CLC            
       ADC    #$01    
       TAY            
       LDX    #$06    
L18E3: TYA            
       CLC            
       ADC    $D2,X   
       CMP    #$F0    
       BCS    L18F1   
       CMP    #$7E    
       BCC    L18F1   
       LDA    #$D0    
L18F1: STA    $D2,X   
       DEX            
       BPL    L18E3   
       JSR    L19CA   
       LDA    $AF     
       BIT    SWCHA   
       CLC            
       BVC    L1904   
       BMI    L190B   
       SEC            
L1904: JSR    L1397   
       LSR    $87     
       STA    $AF     
L190B: STA    WSYNC   
L190D: LDA    INTIM   
       BNE    L190D   
       JMP    L1025   
L1915: .byte $08,$20,$DC,$1F,$28,$29,$07,$90,$02,$09,$08,$A8,$B9,$F0,$1B
L1924: LDX    #$0B    
L1926: CMP    $B0,X   
       CLC            
       BEQ    L1946   
       DEX            
       BPL    L1926   
       INX            
L192F: LDY    $B0,X   
       CPY    #$58    
       BEQ    L193C   
       INX            
       CPX    #$0C    
       BNE    L192F   
       BEQ    L1946   
L193C: STA    $B0,X   
       LDA    #$01    
       STA    $A7     
       LDA    #$10    
       STA    $A9     
L1946: RTS            

L1947: LDA    $D9,X   
       BEQ    L1961   
       STA    $E0     
       ASL            
       LDA    $C4,X   
       JSR    L1397   
       ROR    $E0     
       BCS    L195F   
       PHA            
       LDA    $D9,X   
       ASL            
       PLA            
       JSR    L1397   
L195F: STA    $C4,X   
L1961: LDA    $8A     
       AND    #$0F    
       CMP    #$06    
       BEQ    L1971   
       CMP    #$07    
       BEQ    L1971   
       CMP    #$08    
       BNE    L197B   
L1971: LDA    $D2,X   
       CMP    #$F0    
       BCS    L19A1   
       CMP    #$20    
       BCC    L19A1   
L197B: LDA    $D2,X   
       TAY            
       SEC            
       SBC    #$01    
       CMP    #$80    
       BCC    L198D   
       CMP    #$F0    
       BCS    L198D   
       LDA    #$D0    
       BNE    L19A1   
L198D: INX            
       PHA            
       LDA    $D2,X   
       CMP    #$D0    
       BEQ    L199C   
       PLA            
       PHA            
       SEC            
       SBC    $D2,X   
       CMP    #$28    
L199C: PLA            
       BCS    L19A0   
       TYA            
L19A0: DEX            
L19A1: STA    $D2,X   
       RTS            

L19A4: LDY    #$00    
       LDA    $AF     
       AND    #$0F    
       STA    $E0     
       LDA    $C4,X   
       AND    #$0F    
       SEC            
       SBC    $E0     
       BNE    L19BA   
       LDY    $E1     
       JMP    L19C9   
L19BA: BCC    L19C3   
       INY            
       CMP    #$02    
       BCC    L19C2   
       INY            
L19C2: RTS            

L19C3: DEY            
       CMP    #$FF    
       BCS    L19C9   
       DEY            
L19C9: RTS            

L19CA: LDA    #$00    
       STA    $E2     
       TYA            
       BEQ    L1A31   
       BPL    L1A32   
       LDY    $8A     
       TYA            
       AND    #$0F    
       BNE    L19E0   
       LDA    $8C     
       CMP    #$00    
       BEQ    L19F3   
L19E0: INC    $E2     
       TYA            
       AND    #$0F    
       CMP    #$0E    
       BCS    L1A31   
       LDA    $D2     
       CMP    #$D0    
       BEQ    L19F3   
       CMP    #$50    
       BCS    L1A31   
L19F3: LDX    #$FF    
L19F5: INX            
       CPX    #$07    
       BEQ    L1A31   
       LDA    $D2,X   
       CMP    #$D0    
       BNE    L19F5   
       DEX            
       BMI    L1A1C   
L1A03: LDA    $D2,X   
       PHA            
       LDA    $C4,X   
       PHA            
       LDY    $CB,X   
       LDA    $D9,X   
       INX            
       STA    $D9,X   
       STY    $CB,X   
       PLA            
       STA    $C4,X   
       PLA            
       STA    $D2,X   
       DEX            
       DEX            
       BPL    L1A03   
L1A1C: LDX    #$00    
       LDY    $8A     
       LDA    $E2     
       BEQ    L1A2A   
       JSR    L1A85   
       JMP    L1A2D   
L1A2A: JSR    L1AC0   
L1A2D: LDA    #$7A    
       STA    $D2     
L1A31: RTS            

L1A32: LDY    $8A     
       TYA            
       AND    #$0F    
       CMP    #$06    
       BNE    L1A41   
       LDA    $8C     
       CMP    #$04    
       BEQ    L1A53   
L1A41: LDA    $8A     
       AND    #$0F    
       CMP    #$06    
       BEQ    L1A84   
       CMP    #$07    
       BEQ    L1A84   
       CMP    #$08    
       BEQ    L1A84   
       INC    $E2     
L1A53: LDX    #$05    
L1A55: LDA    $D2,X   
       CMP    #$D0    
       BNE    L1A62   
       DEX            
       BPL    L1A55   
       LDA    $E2     
       BNE    L1A7C   
L1A62: LDA    $E2     
       BNE    L1A72   
       INX            
       TYA            
       SEC            
       SBC    #$06    
       TAY            
       JSR    L1AC0   
       JMP    L1A80   
L1A72: LDA    $D2,X   
       CMP    #$20    
       BCC    L1A84   
       CMP    #$F0    
       BCS    L1A84   
L1A7C: INX            
       JSR    L1A85   
L1A80: LDA    #$F2    
       STA    $D2,X   
L1A84: RTS            

L1A85: JSR    L1FDC   
       TAY            
       AND    #$0F    
       CMP    #$09    
       BCC    L1A91   
       LDY    #$55    
L1A91: CMP    #$00    
       BNE    L1A96   
       INY            
L1A96: STY    $C4,X   
       JSR    L1FDC   
       AND    #$0F    
       CMP    #$02    
       BCS    L1AAC   
       BIT    SWCHB   
       BVS    L1AAA   
       LDA    #$00    
       BVC    L1AAC   
L1AAA: LDA    #$01    
L1AAC: TAY            
       CPY    #$0F    
       BNE    L1AB6   
       LSR    $85     
       BCS    L1AB6   
       INY            
L1AB6: LDA    L1FEB,Y 
       STA    $CB,X   
       LDA    #$00    
       STA    $D9,X   
       RTS            

L1AC0: TYA            
       STX    $E3     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    L1DF0,X 
       LDX    $E3     
       STA    $CB,X   
       LDA    ($88),Y 
       AND    #$07    
       TAY            
       LDA    L1F1D,Y 
       STA    $C4,X   
       RTS            

L1ADA: LDX    #$12    
       LDY    #$58    
       LDA    #$00    
L1AE0: STA    $97,X   
       STY    $B0,X   
       DEX            
       BPL    L1AE0   
       STA    $87     
       LDX    #$06    
       LDA    #$D0    
L1AED: STA    $D2,X   
       DEX            
       BPL    L1AED   
       STX    $83     
       LDA    #$0D    
       STA    $8A     
       LDA    #$0E    
       STA    $81     
       RTS            

L1AFD: .byte $00,$00,$00,$00,$AB,$AB,$F8,$67,$75,$7F,$1F,$03,$3B,$3E,$1E,$08
       .byte $0F,$07,$01,$00,$01,$07,$03,$01,$01,$07,$0F,$1F,$3F,$FD,$01,$03
       .byte $02,$01,$02,$00,$FF,$AA,$AA,$AA,$AA,$FD,$7E,$03,$01,$01,$02,$05
       .byte $05,$02,$01,$00,$1F,$07,$20,$20,$20,$20,$20,$A4,$68,$B0,$74,$38
       .byte $D0,$2C,$00,$00,$FF,$BB,$BA,$BA,$BA,$BB,$BB,$BB,$BB,$BB,$BB,$BB
       .byte $11,$FF,$FF,$00,$03,$0F,$3F,$FE,$7F,$3F,$1F,$0F,$07,$03,$01,$04
       .byte $01,$01,$04,$00,$FF,$C6,$EE,$EE,$EE,$EF,$EF,$ED,$EE,$C7,$FF,$C3
       .byte $C1,$82,$06,$00,$6C,$4A,$4A,$7A,$72,$B2,$B2,$BE,$F2,$62,$63,$F0
       .byte $DC,$70,$40,$00,$28,$7C,$38,$38,$38,$38,$10,$D0,$3C,$12,$28,$28
       .byte $28,$38,$38,$00,$D8,$50,$50,$50,$70,$37,$32,$74,$74,$FC,$BC,$78
       .byte $10,$30,$30,$00,$66,$81,$99,$7E,$3C,$7E,$3C,$5A,$18,$18,$1A,$09
       .byte $09,$09,$06,$00,$6C,$24,$2C,$38,$38,$7C,$9A,$7A,$FA,$FE,$7C,$10
       .byte $38,$38,$38,$00,$FF,$38,$10,$10,$10,$10,$10,$10,$11,$92,$54,$39
       .byte $9E,$68,$06,$00,$36,$24,$36,$24,$A4,$A4,$FE,$FF,$FF,$7E,$3A,$12
       .byte $06,$07,$06,$00,$7F,$3E,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
       .byte $1C,$1C,$08,$68,$70,$80,$90,$70,$88,$90,$68,$B0,$B8,$B8,$C0,$C8
       .byte $D8,$B0,$D0,$00,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6
       .byte $F6,$F6,$F6,$00,$42,$48,$48,$46,$46,$44,$44,$42,$42,$40,$00,$44
       .byte $44,$44,$44,$00,$88,$88,$88,$88,$88,$FF,$88,$88,$88,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$00,$76,$76,$E2,$E4,$E2,$E4,$E2,$B8,$B8,$B8,$B8,$B8
       .byte $B8,$B8,$B8,$00,$F0,$44,$54,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8
       .byte $F8,$00,$44,$00,$00,$00,$00,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$FF
       .byte $FF,$FF,$FF,$00,$88,$8C,$8C,$8C,$8C,$8C,$8C,$8C,$8C,$8C,$88,$88
       .byte $88,$88,$88,$00,$18,$18,$18,$44,$44,$18,$18,$18,$18,$18,$00,$00
       .byte $00,$00,$00,$00,$F4,$88,$88,$88,$88,$88,$88,$18,$18,$18,$00,$00
       .byte $00,$8F,$00,$00,$18,$18,$18,$18,$18,$00,$00,$18,$18,$18,$18,$18
       .byte $18,$18,$0F,$00,$44,$44,$44,$00,$44,$00,$44,$00,$44,$00,$00,$00
       .byte $00,$00,$00,$00,$18,$18,$18,$18,$44,$44,$18,$18,$18,$18,$18,$18
       .byte $18,$18,$00,$00,$F2,$F4,$F6,$F4,$F6,$F4,$F6,$F4,$D4,$D4,$D4,$D4
       .byte $D4,$D4,$D4,$00,$F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4,$F4,$F6,$F8,$F4
       .byte $F4,$F4,$F4,$00,$F2,$FA,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6,$F6
       .byte $F8,$FA,$FC,$98,$A0,$A8
L1CF3: .byte $32,$B2,$23,$A3,$14,$94,$32,$B2,$23,$A3,$14,$94,$00,$38,$6C,$44
       .byte $C6,$C6,$44,$6C,$38,$6C,$38,$10,$10,$10,$10,$30,$10,$7E,$30,$18
       .byte $0C,$06,$66,$6C,$38,$7C,$C6,$46,$04,$1C,$46,$C6,$7C,$0A,$04,$04
       .byte $FE,$C4,$64,$30,$18,$FC,$86,$06,$06,$FC,$80,$9C,$F4,$18,$3C,$66
       .byte $C6,$6C,$30,$18,$0C,$A0,$E0,$60,$30,$18,$8C,$E2,$FE,$7C,$C6,$C6
       .byte $7C,$7C,$C6,$44,$38,$30,$18,$0C,$36,$62,$66,$3C,$18,$30,$10,$18
       .byte $00,$30,$10,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$C0,$60
       .byte $34,$14,$1A,$0E,$06,$7C,$FE,$F6,$F6,$6C,$38,$38,$7C,$C0,$B0,$6C
       .byte $52,$2A,$26,$1E,$02,$10,$18,$18,$10,$10,$38,$44,$38,$10,$38,$6C
       .byte $6C,$54,$6C,$6C,$7C,$FE,$6C,$54,$7C,$6C,$54,$6C,$FE,$10,$38,$38
       .byte $10,$10,$10,$10,$10,$FE,$92,$B6,$86,$82,$68,$F2,$7C,$FE,$BA,$C6
       .byte $D6,$D6,$C6,$AA,$7C,$FE,$CE,$EC,$E2,$C6,$2E,$DE,$7C,$10,$10,$10
       .byte $7C,$10,$28,$44,$38,$7C,$D6,$28,$54,$BA,$BA,$92,$44,$00,$38,$10
       .byte $10,$10,$38,$7C,$7C,$10,$38,$44,$00,$82,$00,$44,$10,$00,$38,$54
       .byte $BA,$EE,$BA,$54,$38,$00,$10,$10,$10,$10,$38,$54,$D6
L1DE0: .byte $01,$03,$03,$07,$07,$07,$0F,$1F
L1DE8: .byte $C0,$C0,$E0,$C0,$C0,$D0,$D0,$E0
L1DF0: .byte $30,$50,$30,$10,$30,$60,$30,$50,$C0,$40,$C0,$50,$30,$00,$30,$20
       .byte $C9,$68,$D0,$04,$A9,$96,$D0,$46,$C9,$B8,$D0,$3B,$A9,$78,$20,$24
       .byte $19,$A6,$9C,$10,$19,$C9,$80,$D0,$04,$A9,$D6,$D0,$31,$C9,$B0,$D0
       .byte $26,$F0,$E9,$A4,$AB,$D9,$F0,$1C,$D0,$1D,$A9,$FE,$85,$AA,$A9,$58
       .byte $95,$B0,$A9,$00,$85,$9E,$85,$9D,$A9,$05,$A2,$01,$86,$A7,$20,$5B
       .byte $13,$A9,$20,$85,$A9,$D0,$48,$A9,$20,$20,$6A,$13,$D0,$41,$A4,$80
       .byte $C0,$02,$D0,$3B,$F0,$D6,$C9,$78,$D0,$ED,$A9,$58,$95,$B0,$A0,$02
       .byte $B9,$F0,$1C,$84,$E0,$20,$24,$19,$B0,$25,$A4,$E0,$88,$10,$F1,$A9
       .byte $00,$85,$9E,$A9,$04,$85,$A7,$A9,$07,$85,$A9,$D0,$12,$C9,$70,$D0
       .byte $04,$A9,$56,$D0,$C9,$C9,$88,$D0,$BE,$A9,$00,$85,$9D,$F0,$92,$4C
       .byte $48,$18,$38,$20,$15,$19,$B0,$04,$38,$20,$15,$19,$A9,$00,$85,$9E
       .byte $85,$9D,$A6,$E2,$A9,$D0,$95,$D2,$D0,$E5,$20,$A5,$1F,$E6,$9D,$D0
       .byte $DE,$18,$20,$15,$19,$B0,$0A,$20,$15,$19,$B0,$D3,$A5,$84,$4A,$90
       .byte $E9,$4C,$8F,$1E,$C9,$C8,$F0,$C7,$E6,$9D,$E6,$9D,$4C,$47,$1E,$E6
       .byte $9D,$D0,$F5,$A4,$80,$F0,$04,$C9,$60,$D0,$F1,$A2,$0B,$B5,$B0,$C9
       .byte $E0,$B0,$04,$C9,$98,$B0,$13,$CA,$10,$F3,$A9,$F6,$85,$81,$A9,$05
       .byte $85,$82,$A6,$9C,$A9,$58,$95,$B0,$D0,$C7,$A9,$58,$95,$B0,$A9,$07
       .byte $A2,$01,$20,$5B,$13,$A9,$E0,$85,$86,$A9,$0C,$85,$15,$A9,$04,$85
       .byte $17,$A9,$07,$85,$A6,$D0,$AA
L1F17: .byte $51,$4A,$43,$3C,$35,$2D
L1F1D: .byte $E1,$E2,$E3,$E4,$E5,$E6,$E7,$E8
L1F25: .byte $00,$02,$05,$03,$08,$05,$0C,$0C,$38,$44,$92,$A2,$A2,$92,$44,$38
       .byte $00,$45,$45,$45,$5D,$55,$5D,$00,$DC,$50,$50,$DC,$44,$DC,$00,$AA
       .byte $AA,$AA,$AA,$AA,$94,$00,$93,$94,$F5,$94,$94,$63,$00,$26,$A9,$A8
       .byte $28,$A9,$26,$00,$00,$00,$00,$00,$00,$00,$00,$95,$B0,$A9,$00,$85
       .byte $9E,$F0,$2E,$95,$B0,$A9,$00,$85,$9D,$F0,$26,$A5,$8A,$C5,$8E,$F0
       .byte $20,$85,$8E,$A5,$84,$2C,$82,$02,$70,$01,$0A,$29,$03,$D0,$12,$A9
       .byte $58,$95,$B0,$38,$20,$15,$19,$B0,$08,$A9,$90,$A6,$9C,$95,$B0,$10
       .byte $04,$A5,$A7,$D0,$08,$A9,$04,$85,$A7,$A9,$0F,$85,$A9,$4C,$C5,$11
L1FA5: LDX    #$0B    
       STX    $A9     
       STX    $E0     
L1FAB: LDA    $B0,X   
       CMP    #$80    
       BEQ    L1FBE   
       CMP    $E0     
       BCC    L1FB9   
       STX    $E1     
       STA    $E0     
L1FB9: DEX            
       BPL    L1FAB   
       LDX    $E1     
L1FBE: LDA    #$58    
       STA    $B0,X   
       LDA    #$02    
       STA    $A7     
       LDA    #$00    
       STA    $A8     
       RTS            

L1FCB: .byte $A2,$A2,$60,$68,$A2,$A2,$A2,$70,$A2,$A2,$A2,$A2,$A2,$62,$A2,$6A
       .byte $A2
L1FDC: LDA    $85     
       LSR            
       EOR    $85     
       LSR            
       ROL    $84     
       ROR    $85     
       LDA    $84     
       RTS            

L1FE9: .byte $60,$E0
L1FEB: .byte $B0,$90,$90,$B0,$A0,$90,$90,$90,$90,$B0,$A0,$90,$90,$B0,$A0,$70
       .byte $80,$00,$10,$00,$10
