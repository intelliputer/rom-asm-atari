; Disassembly of roms/Mission 3000 A.D..bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Mission 3000 A.D..bin
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
RESM0   =  $12
RESM1   =  $13
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$22    
       STA    $A7     
       STA    TIM64T  
       LDA    #$01    
       STA    $A5     
       LDA    #$00    
       STA    $81     
       STA    $8B     
       LDA    #$78    
       STA    $8F     
       JSR    $742B   
LF023: LDA    INTIM   
       BNE    LF023   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    VBLANK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$43    
       STA    TIM64T  
       LDA    SWCHB   
       AND    #$02    
       BNE    LF06C   
       LDX    #$01    
       STX    $A7     
       STX    $A5     
       LDA    #$00    
       STA    $8B     
       STA    $BF     
       STA    $C0     
       STA    $81     
LF06C: LDA    SWCHB   
       AND    #$01    
       BNE    LF0A8   
       LDA    #$00    
       STA    $8B     
       STA    $8D     
       STA    $A7     
       STA    $BF     
       STA    $81     
       STA    $C0     
       STA    $C1     
       STA    $82     
       LDA    #$06    
       STA    $80     
LF089: JSR    $742B   
       LDA    $A5     
       JSR    $751C   
       STA    $A1     
       DEC    $A1     
       LDA    #$50    
       STA    $9F     
       LDA    #$24    
       STA    $A0     
       LDA    #$FF    
       STA    $E0     
       STA    $A9     
       STA    $A3     
       JMP    $70E7   
LF0A8: LDA    #$FE    
       STA    $E0     
       LDA    $81     
       BEQ    LF0C5   
       LDA    #$FF    
       STA    $B1     
       STA    $B4     
       STA    $B7     
       STA    $BA     
       STA    $BD     
       STA    $A0     
       LDA    #$61    
       STA    $9E     
       JMP    $70E7   
LF0C5: LDA    $A7     
       BNE    LF089   
       LDA    $82     
       BEQ    LF0D2   
       DEC    $82     
       JMP    $7089   
LF0D2: JSR    $7837   
       LDA    $AE     
       AND    #$01    
       BEQ    LF0E1   
       JSR    $7A66   
       JMP    $70E4   
LF0E1: JSR    $76C6   
LF0E4: JSR    $7AD4   
LF0E7: LDA    $B9     
       LDX    #$02    
       JSR    $7EE2   
       LDA    $BC     
       LDX    #$03    
       JSR    $7EE2   
       LDA    $8E     
       LDX    #$04    
       JSR    $7EE2   
LF0FC: LDA    INTIM   
       BNE    LF0FC   
       LDA    #$6A    
       LDX    #$00    
       LDY    #$C6    
       JSR    $7456   
       LDA    $81     
       AND    #$F3    
       ORA    #$01    
       STA    COLUBK  
       LDA    #$AE    
       STA    TIM64T  
       LDA    #$1C    
       STA    $D4     
       LDA    #$48    
       STA    $D8     
       LDA    #$FE    
       STA    $D7     
       LDX    #$FF    
       STX    $A6     
       LDA    $81     
       BEQ    LF12D   
       LDX    #$00    
LF12D: STX    ENABL   
       LDA    #$00    
       STA    $DB     
       STA    $DC     
       LDX    #$00    
       STX    COLUPF  
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
LF141: DEC    $D8     
       BMI    LF193   
       LDA    $D8     
       CMP    $A0,X   
       BEQ    LF1BE   
       CMP    $A6,X   
       BNE    LF152   
       JMP    $7207   
LF152: LDY    #$FF    
       CMP    $BA     
       BNE    LF15A   
       STY    ENAM0   
LF15A: CMP    $BD     
       BNE    LF160   
       STY    ENAM1   
LF160: LDA    #$80    
       STA    WSYNC   
       STA    HMBL    
       LDY    $DB     
       BEQ    LF176   
       CPY    #$08    
       BNE    LF170   
       STA    HMCLR   
LF170: LDA    ($DF),Y 
       STA    GRP0    
       DEC    $DB     
LF176: LDY    $DC     
       BEQ    LF196   
       CPY    #$08    
       BNE    LF180   
       STA    HMCLR   
LF180: LDA    ($D6),Y 
       STA    GRP1    
       DEC    $DC     
       LDA    #$00    
       STA    ENAM1   
       STA    ENAM0   
       STA    WSYNC   
       STA    HMOVE   
       JMP    $7141   
LF193: JMP    $723D   
LF196: LDA    $DB     
       BNE    LF1F7   
       LDY    $D4     
       LDA    $D8     
       AND    #$03    
       STY    COLUPF  
       BEQ    LF1A8   
       LDA    #$00    
       STA    COLUPF  
LF1A8: SEC            
       LDA    $D4     
       SBC    #$06    
       STA    $D4     
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       JMP    $7141   
LF1BE: LDY    #$00    
       STY    GRP0    
       LDY    #$10    
       LDA    $A1,X   
       STA    $DF     
       CMP    #$51    
       BCS    LF1CE   
       LDY    #$15    
LF1CE: STY    NUSIZ0  
       ORA    #$0A    
       STA    COLUP0  
       LDA    $9F,X   
       INX            
       INX            
       INX            
       STA    HMCLR   
       STA    WSYNC   
       SEC            
LF1DE: SBC    #$0F    
       BCS    LF1DE   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0    
       STA    RESP0   
       LDY    #$08    
       STY    $DB     
       STA    WSYNC   
       STA    HMOVE   
       JMP    $7141   
LF1F7: LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
       STA    HMOVE   
       JMP    $7141   
LF204: .byte $4C,$3F,$71
LF207: LDY    #$00    
       STY    GRP1    
       LDY    #$10    
       LDA    $A7,X   
       STA    $D6     
       CMP    #$51    
       BCS    LF217   
       LDY    #$15    
LF217: STY    NUSIZ1  
       ORA    #$0A    
       STA    COLUP1  
       LDA    $A5,X   
       STA    HMCLR   
       STA    WSYNC   
       SEC            
LF224: SBC    #$0F    
       BCS    LF224   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP1    
       STA    RESP1   
       LDY    #$08    
       STY    $DC     
       STA    WSYNC   
       STA    HMOVE   
       JMP    $7141   
LF23D: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
LF249: LDA    INTIM   
       BNE    LF249   
       STA    WSYNC   
       LDA    $AE     
       AND    #$01    
       BEQ    LF25A   
       LDY    #$00    
       BEQ    LF25C   
LF25A: LDY    #$02    
LF25C: LDA.wy $0091,Y 
       STA    $D5     
       LDA.wy $0095,Y 
       STA    $D7     
       LDA.wy $0099,Y 
       STA    $D9     
       CLC            
       LDA.wy $0094,Y 
       ADC    #$32    
       STA    $DE     
       CLC            
       LDA.wy $0098,Y 
       ADC    #$32    
       STA    $DC     
       CLC            
       LDA.wy $0090,Y 
       ADC    #$32    
       STA    WSYNC   
       SEC            
LF284: SBC    #$0F    
       BCS    LF284   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM0    
       STA    RESM0   
       LDA    $DE     
       STA    WSYNC   
       SEC            
LF297: SBC    #$0F    
       BCS    LF297   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM1    
       STA    RESM1   
       LDA    $DC     
       STA    WSYNC   
       SEC            
LF2AA: SBC    #$0F    
       BCS    LF2AA   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP1    
       STA    RESP1   
       LDA    $9C     
       LSR            
       STA    WSYNC   
       LSR            
       CLC            
       ADC    #$32    
       STA    $DE     
       LDA    $9D     
       LSR            
       LSR            
       LSR            
       ORA    #$01    
       STA    $DF     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$1C    
       STA    $D8     
       LDA    #$15    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    COLUP1  
       LDA    $DE     
       LDX    #$00    
       JSR    $7EE2   
       LDA    $8F     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    #$FF    
       STA    PF2     
       LDA    #$49    
       STA    COLUPF  
LF2F5: STA    WSYNC   
       STA    HMCLR   
       DEC    $D8     
       BMI    LF33B   
       LDX    #$00    
       LDA    $D8     
       CMP    $D5     
       BNE    LF307   
       LDX    #$FF    
LF307: STX    ENAM0   
       LDX    #$00    
       CMP    $D7     
       BNE    LF311   
       LDX    #$FF    
LF311: STX    ENAM1   
       LDX    #$00    
       CMP    $D9     
       BNE    LF31B   
       LDX    #$80    
LF31B: STX    GRP1    
       LDX    #$00    
       CMP    $DF     
       BNE    LF32E   
       LDX    #$82    
       STX    COLUP0  
       LDX    #$80    
       STX    GRP0    
       JMP    $7332   
LF32E: STX    GRP0    
       STX    COLUP0  
LF332: STA    WSYNC   
       DEC    $D8     
       BMI    LF33B   
       JMP    $72F5   
LF33B: LDA    #$00    
       STA    PF2     
       STA    COLUBK  
       STA    COLUPF  
       STA    GRP0    
       STA    COLUP0  
       LDA    #$88    
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$00    
       LDY    #$04    
       LDX    $80     
       BEQ    LF36B   
       CPX    #$08    
       BCC    LF35D   
       LDX    #$08    
       STX    $80     
LF35D: SEC            
       ROR            
       ROR            
       DEX            
       BEQ    LF36B   
       DEY            
       BNE    LF35D   
       TAY            
       LDA    #$00    
       BEQ    LF372   
LF36B: STA    WSYNC   
       TAY            
       LDA    #$00    
       BEQ    LF378   
LF372: SEC            
       ROL            
       ROL            
       DEX            
       BNE    LF372   
LF378: TAX            
       LDA    #$06    
       STA    $D4     
LF37D: STA    WSYNC   
       DEC.w  $00D4   
       BEQ    LF3A1   
       LDA    #$00    
       STA.w  $000D   
       STY.w  $000E   
       STX.w  $000F   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA.w  $000E   
       STA.w  $000F   
       JMP    $737D   
LF3A1: LDA    #$38    
       STA    TIM64T  
       SEC            
       LDA    $81     
       BEQ    LF3C1   
       SBC    #$02    
       STA    $81     
LF3AF: INC    $AE     
       LDA    $AE     
       CMP    #$04    
       BNE    LF3BE   
       LDA    #$01    
       STA    $AE     
       JSR    $7CE9   
LF3BE: JMP    $7023   
LF3C1: LDA    $82     
       BEQ    LF3C8   
       JMP    $73AF   
LF3C8: LDA    $8B     
       BEQ    LF3D3   
       CMP    #$50    
       BCS    LF3D3   
       JSR    $7CF4   
LF3D3: INC    $AE     
       LDA    $AE     
       CMP    #$04    
       BCC    LF3DF   
       LDA    #$00    
       STA    $AE     
LF3DF: AND    #$01    
       BEQ    LF3EC   
       JSR    $79C7   
       JSR    $7B5A   
       JMP    $7023   
LF3EC: LDA    $AE     
       BEQ    LF422   
       LDA    SWCHA   
       ASL            
       BCS    LF401   
       DEC    $8E     
       BNE    LF3FE   
       LDA    #$A0    
       STA    $8E     
LF3FE: JMP    $740D   
LF401: INC    $8E     
       LDA    $8E     
       CMP    #$A1    
       BCC    LF40D   
       LDA    #$00    
       STA    $8E     
LF40D: INC    $8C     
       JSR    $7CE9   
       JSR    $7F58   
       LDA    $8B     
       CMP    #$A0    
       BCS    LF41F   
       LDA    #$00    
       STA    AUDV0   
LF41F: JMP    $7023   
LF422: JSR    $776F   
       JSR    $7913   
       JMP    $7023   
LF42B: STA    CXCLR   
       LDA    #$FF    
       LDX    #$00    
       STX    $8C     
LF433: STA    $B1,X   
       INX            
       INX            
       INX            
       CPX    #$0C    
       BNE    LF433   
       STA    $BA     
       STA    $BD     
       STA    $A0     
       STA    $EB     
       STA    $EE     
       STA    $E2     
       STA    $E8     
       STA    $F1     
       STA    $E5     
       LDA    #$61    
       STA    $9E     
       JSR    $786C   
       RTS            

LF456: STA    WSYNC   
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$D0    
       STA    HMP0    
       LDA    #$A0    
       STA    HMP1    
       NOP            
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    RESP0   
       LDA.wx $00BF,X 
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    $D4     
       LDA    $BF,X   
       AND    #$0F    
       JSR    $751C   
       STA    $D6     
       LDA    $C0,X   
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    $D8     
       LDA    $C0,X   
       AND    #$0F    
       JSR    $751C   
       STA    $DA     
       STY    COLUBK  
       LDA    $C1,X   
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    $DC     
       STA    HMCLR   
       LDA    $C1,X   
       AND    #$0F    
       JSR    $751C   
       STA    $DE     
       LDY    #$07    
       LDA    #$FF    
       STA    $D5     
       STA    $D7     
       STA    $D9     
       STA    $DB     
       STA    $DD     
       STA    $DF     
       LDX    #$00    
       LDA    $D4     
       CMP    #$08    
       BNE    LF4EB   
       STX    $D4     
       LDA    $D6     
       CMP    #$08    
       BNE    LF4EB   
       STX    $D6     
       LDA    $D8     
       CMP    #$08    
       BNE    LF4EB   
       STX    $D8     
       LDA    $DA     
       CMP    #$08    
       BNE    LF4EB   
       STX    $DA     
       LDA    $DC     
       CMP    #$08    
       BNE    LF4EB   
       STX    $DC     
LF4EB: STA    WSYNC   
       LDA    ($D6),Y 
       TAX            
       LDA    ($D4),Y 
       STA    GRP0    
       LDA    ($DA),Y 
       STA    GRP1    
       LDA    ($DE),Y 
       PHA            
       STX    GRP0    
       LDA    ($D8),Y 
       STA    GRP0    
       LDA    ($DC),Y 
       STA    GRP1    
       PLA            
       STA    GRP1    
       DEY            
       BNE    LF4EB   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       RTS            

LF51C: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$08    
       RTS            

LF523: LDA    $B2,X   
       CMP    #$91    
       BEQ    LF55D   
       CMP    #$99    
       BEQ    LF559   
       CMP    #$A1    
       BEQ    LF555   
       CMP    #$A9    
       BEQ    LF551   
       CMP    #$B1    
       BEQ    LF54D   
       CMP    #$B9    
       BEQ    LF549   
       CMP    #$C1    
       BEQ    LF545   
       LDA    #$FE    
       BNE    LF565   
LF545: LDA    #$00    
       BEQ    LF565   
LF549: LDA    #$02    
       BNE    LF565   
LF54D: LDA    #$02    
       BNE    LF55F   
LF551: LDA    #$02    
       BNE    LF56B   
LF555: LDA    #$00    
       BEQ    LF56B   
LF559: LDA    #$FE    
       BNE    LF56B   
LF55D: LDA    #$FE    
LF55F: STA    $D9     
       LDA    #$00    
       BEQ    LF56F   
LF565: STA    $D9     
       LDA    #$FF    
       BNE    LF56F   
LF56B: STA    $D9     
       LDA    #$01    
LF56F: STA    $D5     
       LDA    SWCHB   
       AND    #$40    
       BEQ    LF57E   
       LDA    $8C     
       AND    #$01    
       BNE    LF597   
LF57E: LDA    $8F     
       CMP    #$58    
       BEQ    LF597   
       CMP    #$B6    
       BEQ    LF5A4   
       LDA    $D5     
       BEQ    LF5A4   
       BMI    LF592   
       INC    $D5     
       BNE    LF5A4   
LF592: DEC    $D5     
       JMP    $75A4   
LF597: LDA    $D9     
       BEQ    LF5A4   
       BMI    LF5A2   
       DEC    $D9     
       JMP    $75A4   
LF5A2: INC    $D9     
LF5A4: SEC            
       LDA.wy $0083,Y 
       SBC    #$01    
       STA.wy $0083,Y 
       BNE    LF5D3   
       LDA    $8C     
       ADC    $DE,X   
       AND    #$17    
       ORA    #$07    
       STA.wy $0083,Y 
       LDA    $D9     
       BNE    LF5D6   
       LDA    $B1,X   
       ADC    $8C     
       AND    #$03    
       CMP    #$02    
       BCC    LF5CC   
       LDA    #$02    
       BNE    LF5CE   
LF5CC: LDA    #$FE    
LF5CE: STA    $D9     
       JMP    $7601   
LF5D3: JMP    $7637   
LF5D6: LDA    $D5     
       BNE    LF5EF   
       LDA    $B1,X   
       ADC    $8C     
       AND    #$03    
       CMP    #$02    
       BCC    LF5E8   
       LDA    #$01    
       BNE    LF5EA   
LF5E8: LDA    #$FF    
LF5EA: STA    $D5     
       JMP    $7601   
LF5EF: LDA    $B1,X   
       ADC    $8C     
       AND    #$03    
       CMP    #$02    
       BCC    LF5FD   
       LDA    #$00    
       BEQ    LF5EA   
LF5FD: LDA    #$00    
       BEQ    LF5CE   
LF601: LDA    $D9     
       BEQ    LF619   
       BMI    LF625   
       LDA    $D5     
       BEQ    LF611   
       BMI    LF615   
       LDA    #$A9    
       BNE    LF635   
LF611: LDA    #$B1    
       BNE    LF635   
LF615: LDA    #$B9    
       BNE    LF635   
LF619: LDA    $D5     
       BMI    LF621   
       LDA    #$A1    
       BNE    LF635   
LF621: LDA    #$C1    
       BNE    LF635   
LF625: LDA    $D5     
       BEQ    LF62F   
       BMI    LF633   
       LDA    #$99    
       BNE    LF635   
LF62F: LDA    #$91    
       BNE    LF635   
LF633: LDA    #$C9    
LF635: STA    $B2,X   
LF637: STY    $DE     
       LDA    SWCHA   
       ASL            
       BCS    LF64D   
       LDY    $D9     
       BPL    LF649   
       LDY    #$00    
       STY    $D9     
       BEQ    LF64D   
LF649: LDA    #$FE    
       STA    $D9     
LF64D: ASL            
       BCS    LF65E   
       LDY    $D9     
       BMI    LF65A   
       LDY    #$00    
       STY    $D9     
       BEQ    LF65E   
LF65A: LDA    #$02    
       STA    $D9     
LF65E: ASL            
       BCS    LF66F   
       LDY    $D5     
       BMI    LF66B   
       LDY    #$00    
       STY    $D5     
       BEQ    LF66F   
LF66B: LDA    #$02    
       STA    $D5     
LF66F: ASL            
       BCS    LF680   
       LDY    $D5     
       BPL    LF67C   
       LDY    #$00    
       STY    $D5     
       BEQ    LF680   
LF67C: LDA    #$FE    
       STA    $D5     
LF680: LDY    $DE     
       LDA    $D9     
       BNE    LF693   
       LDA    $D5     
       BNE    LF693   
       LDA    #$01    
       STA.wy $0083,Y 
       STA    $D9     
       STA    $D5     
LF693: CLC            
       LDA    $B1,X   
       ADC    $D5     
       STA    $B1,X   
       CLC            
       LDA    $B0,X   
       ADC    $D9     
       CMP    #$F0    
       BCS    LF6A9   
       CMP    #$94    
       BCC    LF6AF   
       BCS    LF6AD   
LF6A9: LDA    #$93    
       BNE    LF6AF   
LF6AD: LDA    #$02    
LF6AF: STA    $B0,X   
       LDA    $B1,X   
       CMP    #$F0    
       BCS    LF6BD   
       CMP    #$49    
       BCC    LF6C5   
       BCS    LF6C1   
LF6BD: LDA    #$47    
       BNE    LF6C3   
LF6C1: LDA    #$01    
LF6C3: STA    $B1,X   
LF6C5: RTS            

LF6C6: LDA    $83     
       CMP    #$01    
       BNE    LF6E0   
       LDA    $84     
       CMP    #$01    
       BNE    LF6E0   
       LDA    #$02    
       STA    $84     
       LDA    $85     
       CMP    #$01    
       BNE    LF6E0   
       LDA    #$03    
       STA    $85     
LF6E0: LDX    #$00    
       LDY    #$00    
LF6E4: LDA    $B1,X   
       CMP    #$FF    
       BEQ    LF706   
       LDA    $B2,X   
       CMP    #$D9    
       BNE    LF6F6   
       LDA    #$FF    
       STA    $B1,X   
       BNE    LF706   
LF6F6: CMP    #$D1    
       BNE    LF703   
       JSR    $7755   
       LDA    #$D9    
       STA    $B2,X   
       BNE    LF706   
LF703: JSR    $7523   
LF706: INY            
       INX            
       INX            
       INX            
       CPX    #$09    
       BNE    LF6E4   
       LDA    $8B     
       CMP    #$A0    
       BCS    LF754   
       LDA    $AE     
       BNE    LF754   
       LDA    $8F     
       CMP    #$58    
       BEQ    LF754   
       CMP    #$68    
       BEQ    LF72C   
       LDA    $8C     
       AND    #$03    
       BNE    LF754   
       LDA    #$0C    
       BNE    LF74A   
LF72C: LDA    $F6     
       CMP    #$13    
       BEQ    LF73E   
       CMP    #$11    
       BEQ    LF742   
       CMP    #$0F    
       BEQ    LF746   
       LDA    #$13    
       BNE    LF748   
LF73E: LDA    #$11    
       BNE    LF748   
LF742: LDA    #$0F    
       BNE    LF748   
LF746: LDA    #$0E    
LF748: STA    $F6     
LF74A: STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
LF754: RTS            

LF755: LDA    SWCHA   
       ASL            
       BCS    LF75D   
       DEC    $B0,X   
LF75D: ASL            
       BCS    LF762   
       INC    $B0,X   
LF762: ASL            
       BCS    LF767   
       INC    $B1,X   
LF767: ASL            
       BCS    LF76C   
       DEC    $B1,X   
LF76C: JMP    $7693   
LF76F: LDA    SWCHA   
       AND    #$F0    
       CMP    #$70    
       BEQ    LF797   
       CMP    #$B0    
       BEQ    LF79B   
       CMP    #$D0    
       BEQ    LF79F   
       CMP    #$E0    
       BEQ    LF7A3   
       CMP    #$50    
       BEQ    LF7A7   
       CMP    #$60    
       BEQ    LF7AB   
       CMP    #$90    
       BEQ    LF7AF   
       CMP    #$A0    
       BEQ    LF7B3   
       JMP    $77B9   
LF797: LDA    #$71    
       BNE    LF7B5   
LF79B: LDA    #$51    
       BNE    LF7B5   
LF79F: LDA    #$81    
       BNE    LF7B5   
LF7A3: LDA    #$61    
       BNE    LF7B5   
LF7A7: LDA    #$79    
       BNE    LF7B5   
LF7AB: LDA    #$69    
       BNE    LF7B5   
LF7AF: LDA    #$89    
       BNE    LF7B5   
LF7B3: LDA    #$59    
LF7B5: STA    $F5     
       STA    $9E     
LF7B9: LDA.w  $000C   
       AND    #$80    
       BNE    LF7CC   
       LDA    $BA     
       CMP    #$FF    
       BEQ    LF7CD   
       LDA    $BD     
       CMP    #$FF    
       BEQ    LF7D1   
LF7CC: RTS            

LF7CD: LDX    #$00    
       BEQ    LF7D3   
LF7D1: LDX    #$03    
LF7D3: LDA    #$54    
       STA    $B9,X   
       LDA    #$20    
       STA    $BA,X   
       LDA    $9E     
       STA    $BB,X   
       LDA    $8B     
       BNE    LF7E7   
       LDA    #$44    
       STA    $8B     
LF7E7: RTS            

LF7E8: CMP    #$89    
       BEQ    LF80B   
       CMP    #$81    
       BEQ    LF80F   
       CMP    #$79    
       BEQ    LF816   
       CMP    #$71    
       BEQ    LF81D   
       CMP    #$69    
       BEQ    LF824   
       CMP    #$61    
       BEQ    LF828   
       CMP    #$59    
       BEQ    LF82F   
       DEC    $D6     
       DEC    $D6     
       JMP    $7836   
LF80B: DEC    $D6     
       DEC    $D6     
LF80F: DEC    $D7     
       DEC    $D7     
       JMP    $7836   
LF816: INC    $D6     
       INC    $D6     
       JMP    $780F   
LF81D: INC    $D6     
       INC    $D6     
       JMP    $7836   
LF824: INC    $D6     
       INC    $D6     
LF828: INC    $D7     
       INC    $D7     
       JMP    $7836   
LF82F: DEC    $D6     
       DEC    $D6     
       JMP    $7828   
LF836: RTS            

LF837: LDX    #$00    
LF839: LDA    $B9,X   
       STA    $D6     
       LDA    $BA,X   
       CMP    #$FF    
       BEQ    LF864   
       STA    $D7     
       LDA    $BB,X   
       JSR    $77E8   
       LDA    $D6     
       CMP    #$98    
       BCS    LF85C   
       CMP    #$02    
       BCC    LF85C   
       STA    $B9,X   
       LDA    $D7     
       CMP    #$46    
       BCC    LF862   
LF85C: LDA    #$00    
       STA    $B9,X   
       LDA    #$FF    
LF862: STA    $BA,X   
LF864: INX            
       INX            
       INX            
       CPX    #$03    
       BEQ    LF839   
       RTS            

LF86C: LDY    #$00    
       LDA    #$06    
       STA    $DD     
       LDA    $A5     
       CMP    #$01    
       BEQ    LF89C   
       CMP    #$02    
       BEQ    LF898   
       CMP    #$03    
       BEQ    LF894   
       CMP    #$04    
       BEQ    LF890   
       CMP    #$06    
       BEQ    LF88C   
       LDX    #$04    
       BNE    LF89E   
LF88C: LDX    #$04    
       BNE    LF8F4   
LF890: LDX    #$02    
       BNE    LF8F4   
LF894: LDX    #$02    
       BNE    LF89E   
LF898: LDX    #$00    
       BEQ    LF8F4   
LF89C: LDX    #$00    
LF89E: DEC    $DD     
LF8A0: LDA    $7A40,X 
       STA.wy $00C2,Y 
       LDA    $7A41,X 
       STA.wy $00C3,Y 
       LDA    #$11    
       STA.wy $00C4,Y 
       TXA            
       CLC            
       ADC    #$08    
       TAX            
       INY            
       INY            
       INY            
       DEC    $DD     
       BNE    LF8A0   
       LDA    #$E8    
       STA    $D1     
       LDA    #$43    
       STA    $D2     
LF8C5: LDA    #$19    
       STA    $D3     
       STA    $CA     
       STA    $C7     
       LDY    #$00    
       LDX    #$00    
LF8D1: LDA    $C2,X   
       LSR            
       LSR            
       STA.wy $0090,Y 
       LDA    $C3,X   
       LSR            
       LSR            
       LSR            
       ORA    #$01    
       STA.wy $0091,Y 
       INX            
       INX            
       INX            
       INY            
       INY            
       CPX    #$12    
       BNE    LF8D1   
       LDA    #$28    
       STA    $9C     
       LDA    #$24    
       STA    $9D     
       RTS            

LF8F4: LDA    $7A40,X 
       STA.wy $00C2,Y 
       LDA    $7A41,X 
       STA.wy $00C3,Y 
       LDA    #$11    
       STA.wy $00C4,Y 
       TXA            
       CLC            
       ADC    #$06    
       TAX            
       INY            
       INY            
       INY            
       DEC    $DD     
       BNE    LF8F4   
       BEQ    LF8C5   
LF913: LDX    #$00    
LF915: LDA    $C3,X   
       CMP    #$FF    
       BEQ    LF980   
       LDA    SWCHA   
       ASL            
       BCS    LF923   
       DEC    $C2,X   
LF923: ASL            
       BCS    LF928   
       INC    $C2,X   
LF928: ASL            
       BCS    LF92D   
       INC    $C3,X   
LF92D: ASL            
       BCS    LF932   
       DEC    $C3,X   
LF932: LDA    $C2,X   
       CMP    #$02    
       BCC    LF940   
       CMP    #$F1    
       BCC    LF944   
       LDA    #$02    
       BNE    LF942   
LF940: LDA    #$F0    
LF942: STA    $C2,X   
LF944: LDA    $C3,X   
       CMP    #$F0    
       BCS    LF952   
       CMP    #$D8    
       BCC    LF956   
       LDA    #$00    
       BEQ    LF954   
LF952: LDA    #$D7    
LF954: STA    $C3,X   
LF956: LDA    $8C     
       AND    #$03    
       BNE    LF980   
       LDA    $C4,X   
       CMP    #$11    
       BEQ    LF97C   
       CMP    #$19    
       BEQ    LF978   
       CMP    #$31    
       BEQ    LF974   
       LDA    #$00    
       STA    $C2,X   
       LDA    #$FF    
       STA    $C3,X   
       BNE    LF980   
LF974: LDA    #$39    
       BNE    LF97E   
LF978: LDA    #$11    
       BNE    LF97E   
LF97C: LDA    #$19    
LF97E: STA    $C4,X   
LF980: INX            
       INX            
       INX            
       CPX    #$12    
       BNE    LF915   
       LDA    SWCHA   
       ASL            
       BCS    LF98F   
       INC    $9C     
LF98F: ASL            
       BCS    LF994   
       DEC    $9C     
LF994: ASL            
       BCS    LF999   
       DEC    $9D     
LF999: ASL            
       BCS    LF99E   
       INC    $9D     
LF99E: LDA    $9C     
       CMP    #$F8    
       BCS    LF9AF   
       CMP    #$F1    
       BCS    LF9AB   
       JMP    $79B3   
LF9AB: LDA    #$00    
       BEQ    LF9B1   
LF9AF: LDA    #$F0    
LF9B1: STA    $9C     
LF9B3: LDA    $9D     
       CMP    #$F0    
       BCS    LF9C2   
       CMP    #$D8    
       BCS    LF9BE   
       RTS            

LF9BE: LDA    #$00    
       BEQ    LF9C4   
LF9C2: LDA    #$D7    
LF9C4: STA    $9D     
       RTS            

LF9C7: LDX    #$00    
       LDA    #$FF    
LF9CB: STA    $EB,X   
       INX            
       INX            
       INX            
       CPX    #$09    
       BNE    LF9CB   
       LDY    #$00    
       LDX    #$00    
LF9D8: LDA    $C2,X   
       CMP    #$4B    
       BCS    LF9E7   
       LDA    $C3,X   
       CMP    #$48    
       BCS    LF9E7   
       JSR    $7A22   
LF9E7: INX            
       INX            
       INX            
       CPX    #$12    
       BNE    LF9D8   
       LDA    $A5     
       CMP    #$02    
       BEQ    LFA03   
       CMP    #$05    
       BEQ    LFA03   
       CMP    #$03    
       BEQ    LFA07   
       CMP    #$06    
       BEQ    LFA07   
       JMP    $7A21   
LFA03: LDX    #$10    
       BNE    LFA09   
LFA07: LDX    #$30    
LFA09: LDA    $EC     
       CMP    #$31    
       BCS    LFA15   
       CLC            
       TXA            
       ADC    $EC     
       STA    $EC     
LFA15: LDA    $EF     
       CMP    #$31    
       BCS    LFA21   
       CLC            
       TXA            
       ADC    $EF     
       STA    $EF     
LFA21: RTS            

LFA22: STA.wy $00EB,Y 
       LDA    $C4,X   
       STA.wy $00EC,Y 
       LDA    $C2,X   
       ASL            
       CMP    #$02    
       BCS    LFA33   
       LDA    #$02    
LFA33: CMP    #$94    
       BCC    LFA39   
       LDA    #$93    
LFA39: STA.wy $00EA,Y 
       INY            
       INY            
       INY            
       RTS            

LFA40: .byte $10
LFA41: .byte $08,$48,$0C,$59,$24,$74,$28,$93,$20,$BE,$3A,$28,$B6,$6D,$4F,$8F
       .byte $5E,$AC,$6B,$C4,$50,$D8,$43,$26,$78,$45,$94,$6A,$6A,$84,$B9,$95
       .byte $83,$AC,$8E,$C1,$B8
LFA66: LDA    #$50    
       STA    $F3     
       LDA    #$24    
       STA    $F4     
       LDA    $9E     
       STA    $F5     
       LDX    #$00    
LFA74: LDA    $B0,X   
       STA    $E1,X   
       INX            
       CPX    #$09    
       BNE    LFA74   
       LDX    #$00    
LFA7F: INC    $E2,X   
       INX            
       INX            
       INX            
       CPX    #$15    
       BNE    LFA7F   
       LDA    #$12    
       STA    $D5     
LFA8C: LDX    #$00    
LFA8E: LDA    $E2,X   
       CMP    $E5,X   
       BCS    LFAB8   
       LDA    $E4,X   
       STA    $D9     
       LDA    $E1,X   
       STA    $E4,X   
       LDA    $D9     
       STA    $E1,X   
       LDA    $E5,X   
       STA    $D9     
       LDA    $E2,X   
       STA    $E5,X   
       LDA    $D9     
       STA    $E2,X   
       LDA    $E6,X   
       STA    $D9     
       LDA    $E3,X   
       STA    $E6,X   
       LDA    $D9     
       STA    $E3,X   
LFAB8: INX            
       INX            
       INX            
       CPX    $D5     
       BNE    LFA8E   
       SEC            
       LDA    $D5     
       SBC    #$03    
       STA    $D5     
       BNE    LFA8C   
       LDX    #$00    
LFACA: DEC    $E2,X   
       INX            
       INX            
       INX            
       CPX    #$15    
       BNE    LFACA   
       RTS            

LFAD4: LDA    #$FF    
       STA    $A6     
       STA    $AC     
       STA    $AF     
       LDY    #$00    
       LDA    $AE     
       AND    #$01    
       BEQ    LFAE8   
       LDX    #$00    
       BEQ    LFAEA   
LFAE8: LDX    #$03    
LFAEA: LDA    $E1,X   
       STA.wy $009F,Y 
       LDA    $E2,X   
       STA.wy $00A0,Y 
       LDA    $E3,X   
       STA.wy $00A1,Y 
       CLC            
       TXA            
       ADC    #$0C    
       TAX            
       INY            
       INY            
       INY            
       CPY    #$03    
       BEQ    LFAEA   
       LDA    $AE     
       AND    #$01    
       BEQ    LFB0F   
       LDX    #$06    
       BNE    LFB11   
LFB0F: LDX    #$09    
LFB11: LDA    $E1,X   
       STA    $A8     
       LDA    $E2,X   
       STA    $A9     
       LDA    $E3,X   
       STA    $AA     
       LDA    $A1     
       CMP    $9E     
       BNE    LFB3A   
       LDA    $A3     
       CMP    #$FF    
       BEQ    LFB50   
       SEC            
       LDA    $A0     
       SBC    $A3     
       CMP    #$04    
       BCS    LFB51   
       SEC            
       LDA    $A3     
       SBC    #$03    
       STA    $A3     
       RTS            

LFB3A: LDA    $AA     
       CMP    $9E     
       BNE    LFB50   
       LDA    $A3     
       CMP    $A9     
       BCC    LFB48   
       DEC    $A3     
LFB48: LDA    $A9     
       CMP    $A0     
       BCC    LFB50   
       INC    $A0     
LFB50: RTS            

LFB51: LDA    $A3     
       CMP    $A9     
       BCC    LFB50   
       DEC    $A3     
       RTS            

LFB5A: LDA.w  $0000   
       AND    #$C0    
       BEQ    LFB66   
       LDY    #$00    
       JSR    $7C16   
LFB66: LDA.w  $0001   
       AND    #$C0    
       BEQ    LFB72   
       LDY    #$03    
       JSR    $7C16   
LFB72: STA    CXCLR   
       LDX    #$00    
LFB76: LDA    $B2,X   
       CMP    #$D1    
       BEQ    LFB9A   
       CMP    #$D9    
       BEQ    LFB9A   
       SEC            
       LDA    $B0,X   
       SBC    #$50    
       CMP    #$07    
       BCC    LFB8D   
       CMP    #$F9    
       BCC    LFB9A   
LFB8D: SEC            
       LDA    $B1,X   
       SBC    #$24    
       CMP    #$06    
       BCC    LFBA4   
       CMP    #$FA    
       BCS    LFBA4   
LFB9A: INX            
       INX            
       INX            
       CPX    #$09    
       BNE    LFB76   
       JMP    $7BBC   
LFBA4: LDA    #$D1    
       STA    $B2,X   
       LDA    #$89    
       STA    $9E     
       LDA    #$AA    
       STA    $8B     
       LDA    #$E0    
       STA    $81     
       DEC    $80     
       BNE    LFBBC   
       LDA    #$04    
       STA    $A7     
LFBBC: LDY    #$00    
       LDX    #$00    
LFBC0: LDA    $C4,X   
       CMP    #$31    
       BEQ    LFBE9   
       CMP    #$39    
       BEQ    LFBE9   
       SEC            
       LDA    $C3,X   
       SBC    #$24    
       CMP    #$08    
       BCC    LFBD7   
       CMP    #$F8    
       BCC    LFBE9   
LFBD7: LDA    $C2,X   
       CMP    #$4D    
       BCS    LFBE9   
       ASL            
       SEC            
       SBC    #$50    
       CMP    #$0B    
       BCC    LFBF5   
       CMP    #$F5    
       BCS    LFBF5   
LFBE9: INY            
       INY            
       INX            
       INX            
       INX            
       CPX    #$12    
       BNE    LFBC0   
       JMP    $7CC6   
LFBF5: LDA    #$31    
       STA    $C4,X   
       LDA    #$FF    
       STA.wy $0091,Y 
       LDA    #$89    
       STA    $9E     
       LDA    #$AA    
       STA    $8B     
       LDA    #$E0    
       STA    $81     
       DEC    $80     
       BNE    LFC13   
       LDA    #$04    
       STA    $A7     
       RTS            

LFC13: JMP    $7CC6   
LFC16: LDX    #$00    
LFC18: LDA    $B2,X   
       CMP    #$D1    
       BEQ    LFC3E   
       CMP    #$D9    
       BEQ    LFC3E   
       SEC            
       LDA    $B0,X   
       SBC.wy $00B9,Y 
       CMP    #$08    
       BCC    LFC30   
       CMP    #$F8    
       BCC    LFC3E   
LFC30: SEC            
       LDA    $B1,X   
       SBC.wy $00BA,Y 
       CMP    #$07    
       BCC    LFC48   
       CMP    #$F9    
       BCS    LFC48   
LFC3E: INX            
       INX            
       INX            
       CPX    #$09    
       BNE    LFC18   
       JMP    $7C6A   
LFC48: LDA    #$D1    
       STA    $B2,X   
       LDA    #$FF    
       STA.wy $00BA,Y 
       LDA    $8B     
       CMP    #$82    
       BCS    LFC5B   
       LDA    #$88    
       STA    $8B     
LFC5B: LDA    #$01    
       CLC            
       SED            
       ADC    $C0     
       STA    $C0     
       LDA    $BF     
       ADC    #$00    
       STA    $BF     
       CLD            
LFC6A: LDX    #$00    
       STX    $D9     
LFC6E: LDA    $C4,X   
       CMP    #$31    
       BEQ    LFC99   
       CMP    #$39    
       BEQ    LFC99   
       SEC            
       LDA    $C3,X   
       SBC.wy $00BA,Y 
       CMP    #$09    
       BCC    LFC86   
       CMP    #$F9    
       BCC    LFC99   
LFC86: LDA    $C2,X   
       CMP    #$4D    
       BCS    LFC99   
       ASL            
       SEC            
       SBC.wy $00B9,Y 
       CMP    #$11    
       BCC    LFCA5   
       CMP    #$F0    
       BCS    LFCA5   
LFC99: INC    $D9     
       INC    $D9     
       INX            
       INX            
       INX            
       CPX    #$12    
       BNE    LFC6E   
       RTS            

LFCA5: LDA    #$31    
       STA    $C4,X   
       LDA    #$FF    
       STA.wy $00BA,Y 
       LDX    $D9     
       STA    $91,X   
       LDA    #$AA    
       STA    $8B     
       LDA    #$05    
       CLC            
       SED            
       ADC    $C0     
       STA    $C0     
       LDA    $BF     
       ADC    #$00    
       STA    $BF     
       CLD            
       RTS            

LFCC6: LDX    #$00    
LFCC8: LDA    $91,X   
       CMP    #$FF    
       BNE    LFCE8   
       INX            
       INX            
       CPX    #$0C    
       BNE    LFCC8   
       STA    $A0     
       INC    $A5     
       LDA    $A5     
       CMP    #$07    
       BNE    LFCE2   
       LDA    #$01    
       STA    $A5     
LFCE2: INC    $80     
       LDA    #$C7    
       STA    $82     
LFCE8: RTS            

LFCE9: LDA    $8B     
       CMP    #$A0    
       BCS    LFD45   
       CMP    #$80    
       BCS    LFD1B   
       RTS            

LFCF4: CMP    #$44    
       BNE    LFD00   
       LDA    #$07    
       STA    $8A     
       LDA    #$41    
       STA    $8B     
LFD00: LDA    #$04    
       STA    AUDC1   
       LDA    #$08    
       STA    AUDV1   
       INC    $8A     
       INC    $8A     
       LDA    $8A     
       CMP    #$18    
       BCC    LFD18   
       LDA    #$00    
       STA    $8B     
       STA    AUDV1   
LFD18: STA    AUDF1   
       RTS            

LFD1B: CMP    #$88    
       BNE    LFD27   
       LDA    #$04    
       STA    $89     
       LDA    #$81    
       STA    $8B     
LFD27: LDA    #$04    
       STA    AUDC1   
       LDX    $89     
       LDA    $7D41,X 
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       DEC    $89     
       BPL    LFD40   
       LDA    #$00    
       STA    $8B     
       STA    AUDV1   
LFD40: RTS            

LFD41: .byte $0F,$0E,$13,$11
LFD45: CMP    #$AA    
       BNE    LFD55   
       LDA    #$A1    
       STA    $8B     
       LDA    #$10    
       STA    $86     
       LDA    #$1F    
       STA    $87     
LFD55: LDA    #$08    
       STA    AUDC0   
       LDA    #$03    
       STA    AUDC1   
       INC    $F7     
       LDA    $86     
       CMP    #$09    
       BCS    LFD88   
       LDA    $F7     
       AND    #$03    
       BEQ    LFD6E   
       JMP    $7D99   
LFD6E: LDA    $86     
       CMP    #$04    
       BCS    LFD7A   
       LDA    #$00    
       STA    $8B     
       BEQ    LFD95   
LFD7A: SEC            
       SBC    #$01    
       STA    $86     
       STA    AUDV0   
       AND    #$01    
       STA    AUDV1   
       JMP    $7D99   
LFD88: LDA    $F7     
       AND    #$01    
       BEQ    LFD99   
       SEC            
       LDA    $86     
       SBC    #$01    
       STA    $86     
LFD95: STA    AUDV0   
       STA    AUDV1   
LFD99: SEC            
       LDA    $87     
       SBC    #$01    
       STA    $87     
       STA    AUDF0   
       LDA    #$15    
       STA    AUDF1   
       RTS            

LFDA7: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$4C,$21,$7A,$A2,$10,$D0,$02
       .byte $A2,$30,$A5,$EC,$C9,$31,$B0,$06,$18,$8A,$65,$EC,$85,$EC,$A5,$EF
       .byte $C9,$31,$B0,$06,$18,$8A,$65,$EF,$85,$EF,$60,$99,$EB,$00,$B5,$C4
       .byte $99,$EC,$00,$B5,$C2,$0A,$C9,$02,$B0,$02,$A9,$02,$C9,$94,$90,$02
       .byte $A9,$93,$99,$EA,$00,$C8,$C8,$C8,$60,$10,$08,$48,$0C,$59,$24,$74
       .byte $28,$93,$20,$BE,$3A,$28,$B6,$6D,$4F,$8F,$5E,$AC,$6B,$C4,$50,$D8
       .byte $43,$26,$78,$45,$94,$6A,$6A,$84,$B9,$FF,$FF,$00,$5A,$3C,$F7,$7E
       .byte $EF,$3C,$5A,$00,$18,$7E,$EF,$7E,$F7,$7E,$18,$00,$18,$3C,$B5,$FF
       .byte $AD,$3C,$18,$00,$18,$3C,$6E,$7E,$76,$3C,$18,$00,$92,$44,$10,$BA
       .byte $10,$44,$92,$00,$00,$08,$00,$41,$00,$08,$00,$00,$24,$FF,$76,$FF
       .byte $6E,$FF,$24,$00,$C3,$7E,$EF,$7E,$F7,$7E,$C3,$00,$0D,$1A,$37,$E5
       .byte $37,$1A,$0D,$00,$AC,$DE,$56,$6C,$72,$FC,$C6,$00,$BA,$6C,$BA,$C6
       .byte $6C,$38,$10,$00,$6A,$F6,$D4,$6C,$9C,$7E,$C6,$00,$B0,$58,$EC,$A7
       .byte $EC,$58,$B0,$00,$C6,$7E,$9C,$6C,$D4,$F6,$6A,$00,$10,$38,$6C,$C6
       .byte $BA,$6C,$BA,$00,$C6,$FC,$72,$6C,$56,$DE,$AC,$00,$00,$7E,$FF,$DB
       .byte $66,$3C,$18,$00,$00,$07,$1E,$3F,$7E,$7D,$EA,$00,$70,$F8,$F4,$FA
       .byte $F4,$F8,$70,$00,$00,$EA,$7D,$7E,$3F,$1E,$07,$00,$00,$18,$3C,$66
       .byte $DB,$FF,$7E,$00,$00,$57,$BE,$7E,$FC,$78,$E0,$00,$1C,$3E,$5E,$BE
       .byte $5E,$3E,$1C,$00,$00,$E0,$78,$FC,$7E,$BE,$57,$00,$00,$00,$00,$10
       .byte $28,$10,$00,$00,$00,$84,$30,$78,$78,$30,$84
LFEE2: SEC            
       STA    WSYNC   
LFEE5: SBC    #$0F    
       BCS    LFEE5   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    RESP0,X 
       RTS            

LFEF4: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$3C,$00,$3C,$18,$18
       .byte $18,$18,$38,$18,$00,$7E,$60,$60,$3C,$06,$46,$3C,$00,$3C,$46,$06
       .byte $1C,$06,$46,$3C,$00,$0C,$0C,$7E,$6C,$3C,$1C,$0C,$00,$7C,$06,$06
       .byte $7C,$60,$60,$7E,$00,$3C,$66,$66,$7C,$60,$62,$3C,$00,$18,$18,$18
       .byte $0C,$06,$66,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$46,$06
       .byte $3E,$66,$66,$3C
LFF58: LDA    $8C     
       AND    #$17    
       CMP    #$17    
       BEQ    LFF61   
       RTS            

LFF61: INC    $8D     
       LDA    $8D     
       CMP    #$20    
       BCC    LFF7F   
       CMP    #$40    
       BCC    LFF83   
       CMP    #$58    
       BCC    LFF87   
       CMP    #$80    
       BCC    LFF7F   
       CMP    #$A0    
       BCC    LFF83   
       CMP    #$B8    
       BCC    LFF87   
       BCS    LFF7F   
LFF7F: LDA    #$58    
       BNE    LFF89   
LFF83: LDA    #$B6    
       BNE    LFF89   
LFF87: LDA    #$68    
LFF89: STA    $8F     
       LDY    #$03    
       STY    $DD     
       LDY    #$00    
       LDX    #$06    
LFF93: LDA    $B1,X   
       CMP    #$FF    
       BEQ    LFF9A   
       INY            
LFF9A: DEX            
       DEX            
       DEX            
       BPL    LFF93   
       CPY    $DD     
       BCS    LFFEE   
LFFA3: INX            
       INX            
       INX            
       LDA    $B1,X   
       CMP    #$FF    
       BNE    LFFA3   
       LDA    $8C     
       AND    #$3F    
       CMP    #$47    
       BCC    LFFB6   
       LDA    #$27    
LFFB6: STA    $B1,X   
       LDA    $8C     
       CMP    #$95    
       BCC    LFFC0   
       AND    #$7F    
LFFC0: STA    $B0,X   
       LDA    $8C     
       AND    #$03    
       BEQ    LFFE6   
       CMP    #$02    
       BEQ    LFFDE   
       BCC    LFFD6   
       LDA    #$02    
       STA    $B0,X   
       LDA    #$B1    
       BNE    LFFEC   
LFFD6: LDA    #$01    
       STA    $B1,X   
       LDA    #$A1    
       BNE    LFFEC   
LFFDE: LDA    #$94    
       STA    $B0,X   
       LDA    #$91    
       BNE    LFFEC   
LFFE6: LDA    #$47    
       STA    $B1,X   
       LDA    #$C1    
LFFEC: STA    $B2,X   
LFFEE: RTS            

LFFEF: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F0,$00
       .byte $F0
