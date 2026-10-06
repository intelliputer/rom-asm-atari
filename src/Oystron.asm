; Disassembly of roms/Oystron.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Oystron.bin
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
PF1     =  $0E
PF2     =  $0F
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP1FB  =  $33
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF006: STA    VSYNC,X 
       INX            
       BNE    LF006   
       STA    SWBCNT  
       STA    SWACNT  
       LDA    #$FD    
       STA    $D2     
       LDA    #$FF    
       STA    $C3     
       LDA    #$01    
       STA    $E2     
       STA    $EB     
       STA    $BC     
       STA    $DF     
       LDA    #$80    
       STA    $E5     
       LDA    #$08    
       STA    $DD     
       STA    $E7     
       JSR    LFCA9   
       LDA    #$02    
       STA    $D4     
       LDA    #$B9    
       STA    $D3     
       STA    $DE     
LF03A: LDX    #$00    
       LDA    #$02    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       LDX    $BC     
       LDA    LFFC4,X 
       STA    TIM64T  
       LDA    SWCHB   
       AND    #$80    
       ASL            
       NOP            
       STA    RESM1   
       ROL            
       STA    $BC     
       LDA    $A0     
       STA    $D9     
       LDA    $A1     
       STA    $DA     
       CLC            
       LDA    $A0     
       ADC    #$05    
       STA    $A0     
       BCC    LF075   
       INC    $A1     
LF075: LDA    $ED     
       BEQ    LF08F   
       BIT    $E5     
       BMI    LF08D   
       BIT    $D0     
       BMI    LF08D   
       LSR            
       LSR            
       STA    AUDV1   
       LDA    #$09    
       STA    AUDC1   
       LDA    $A0     
       STA    AUDF1   
LF08D: DEC    $ED     
LF08F: LDA    $A0     
       LSR            
       STA    $D1     
       LDA    INPT4   
       AND    #$80    
       TAX            
       EOR    #$FF    
       BIT    $E5     
       BMI    LF0A3   
       BIT    $D0     
       BPL    LF0A5   
LF0A3: AND    $EA     
LF0A5: STX    $EA     
       LSR            
       ORA    $EA     
       STA    $EA     
       LDA    SWCHB   
       EOR    #$FF    
       AND    $E6     
       TAX            
       BIT    $E5     
       BPL    LF12A   
       AND    #$02    
       BEQ    LF0D0   
       LDA    #$00    
       STA    $EB     
       INC    $E5     
       LDA    $E5     
       CMP    #$83    
       BCC    LF0CC   
       LDA    #$80    
       STA    $E5     
LF0CC: LDA    #$05    
       STA    $D7     
LF0D0: TXA            
       AND    #$01    
       BNE    LF0D9   
       BIT    $EA     
       BVC    LF113   
LF0D9: LDA    $E5     
       AND    #$7F    
       STA    $E5     
       ASL            
       ASL            
       STA    $E7     
       LDY    #$08    
       LDA    #$80    
LF0E7: STA.wy $00A7,Y 
       DEY            
       BNE    LF0E7   
       STY    $D0     
       STY    $EB     
       STY    $D3     
       STY    $E3     
       STY    $D4     
       STY    $F5     
       STY    $DB     
       INY            
       STY    $E2     
       LDX    #$05    
       BIT    SWCHA   
       BMI    LF10B   
       LDA    #$0E    
       STA    $DB     
       STX    $E3     
LF10B: DEX            
       STX    $F2     
       STX    $D5     
       JSR    LFCA9   
LF113: LDA    $A1     
       EOR    $DA     
       AND    #$08    
       BEQ    LF127   
       INC    $EB     
       LDA    $DC     
       STA    $C1     
       LDA    $EB     
       AND    #$03    
       STA    $EB     
LF127: JMP    LF142   
LF12A: AND    #$02    
       BEQ    LF13D   
       LDA    SWCHB   
       STA    $E6     
       LDX    #$00    
       STX    $D5     
       INX            
       STX    $EB     
       JMP    LF32C   
LF13D: TXA            
       AND    #$01    
       BNE    LF0D9   
LF142: LDX    #$0C    
       LDA    $E0     
       BEQ    LF14A   
       LDX    #$00    
LF14A: LDA    $CF     
       BEQ    LF15A   
       LDA    $B2     
       CMP    #$08    
       BCS    LF15A   
       LDA    $D6     
       ASL            
       ORA    #$22    
       TAX            
LF15A: STX    COLUP0  
       LDA    $E0     
       BNE    LF17B   
       LDA    $E9     
       BNE    LF17B   
       LDA    $D7     
       BMI    LF17B   
       LSR            
       STA    AUDV0   
       STA    AUDF0   
       LDA    #$0E    
       STA    AUDC0   
       DEC    $D7     
       BPL    LF17B   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDC0   
LF17B: LDA    $ED     
       BNE    LF1B6   
       LDA    $E5     
       BMI    LF1B6   
       LDA    $E1     
       TAX            
       AND    #$0F    
       BEQ    LF1A4   
       LSR            
       STA    AUDF1   
       STA    AUDV1   
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC1   
       DEC    $E1     
       LDA    $E1     
       AND    #$0F    
       BNE    LF1B6   
       STA    AUDV1   
       STA    $E1     
       BEQ    LF1B6   
LF1A4: LDA    #$06    
       STA    AUDC1   
       LDA    $A0     
       ASL            
       ADC    $F5     
       ADC    $E2     
       LSR            
       STA    AUDF1   
       LDA    #$02    
       STA    AUDV1   
LF1B6: LDA    SWCHB   
       STA    $E6     
       JSR    LF6E2   
       JSR    LFB39   
       LDX    $9C     
       LDA    LFE00,X 
       STA    WSYNC   
       STA    HMP0    
       AND    #$0F    
       TAY            
LF1CD: DEY            
       BPL    LF1CD   
       STA    RESP0   
       LDX    $C5     
       LDA    LFFEB,X 
       STA    REFP0   
       LDX    $A6     
       LDA    LFE00,X 
       STA    WSYNC   
       STA    HMM0    
       AND    #$0F    
       TAY            
LF1E5: DEY            
       BPL    LF1E5   
       STA    RESM0   
       LDX    $A7     
       LDA    LFE00,X 
       STA    WSYNC   
       STA    HMBL    
       AND    #$0F    
       TAY            
LF1F6: DEY            
       BPL    LF1F6   
       STA    RESBL   
       LDA    #$40    
       CLC            
       ADC    $F5     
       STA    HMM1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    $84     
       STA    $83     
       STA    $86     
       LDX    #$07    
LF210: LDA    $B3,X   
       BMI    LF217   
       JSR    LF849   
LF217: DEX            
       BPL    LF210   
       JSR    LF959   
       LDA    $E9     
       BEQ    LF252   
       LDA    $A0     
       AND    #$20    
       BEQ    LF229   
       LDA    #$FF    
LF229: LDY    $E8     
       STA.wy $00A8,Y 
       LSR            
       LSR            
       LSR            
       STA    AUDV0   
       LDA    #$42    
       STA    AUDF0   
       LDA    #$44    
       STA    AUDC0   
       DEC    $E9     
       LDA    $E9     
       BNE    LF289   
       STA    AUDV0   
       STA.wy $00A8,Y 
       CPY    #$08    
       BCS    LF252   
       LDA    $E3     
       CMP    #$06    
       BEQ    LF252   
       INC    $E3     
LF252: LDA    $B2     
       CMP    #$08    
       BCS    LF289   
       TAX            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $B1     
       TAY            
       LDA.wy $00A8,Y 
       AND    LFED0,X 
       BNE    LF289   
       BIT    $EA     
       BVC    LF289   
       LDA    $CF     
       BEQ    LF289   
       LDA    #$0F    
       STA    $EE     
       LDA.wy $00A8,Y 
       ORA    LFED0,X 
       STA.wy $00A8,Y 
       CMP    #$FF    
       BNE    LF287   
       LDA    #$50    
       STA    $E9     
       STY    $E8     
LF287: DEC    $CF     
LF289: LDA    $EE     
       BMI    LF28F   
       DEC    $EE     
LF28F: BIT    $E5     
       BMI    LF2EB   
       LDA    $D4     
       CMP    $F2     
       BCC    LF2B5   
       CMP    #$75    
       BCC    LF2A3   
       LDA    #$05    
       STA    $F2     
       BNE    LF2B5   
LF2A3: LDA    $F2     
       SED            
       ADC    #$04    
       CLD            
       STA    $F2     
       INC    $D5     
       LDA    #$08    
       STA    $E8     
       LDA    #$4B    
       STA    $E9     
LF2B5: LDA    $9F     
       BPL    LF2EB   
       LDX    $B1     
       LDA    $B3,X   
       AND    #$3F    
       CMP    #$08    
       BNE    LF2DB   
       LDA    #$0F    
       STA    $EF     
       LDA    #$48    
       STA    $E1     
       INC    $CF     
       TXA            
       TAY            
       LDA    #$C0    
       STA.wy $00B3,Y 
       LDA    #$FF    
       STA.wy $0088,Y 
       BNE    LF2EB   
LF2DB: CMP    #$04    
       BEQ    LF2EB   
       CMP    #$05    
       BEQ    LF2EB   
       LDA    $E0     
       BNE    LF2EB   
       LDA    #$EF    
       STA    $E0     
LF2EB: LDA    $E0     
       BEQ    LF346   
       AND    #$0F    
       BEQ    LF30F   
       EOR    #$FF    
       STA    AUDV0   
       LDA    #$40    
       STA    AUDF0   
       LDA    $E0     
       AND    #$01    
       CLC            
       ADC    #$07    
       STA    AUDC0   
       LDA    $D6     
       AND    #$03    
       BEQ    LF346   
       DEC    $E0     
       JMP    LF346   
LF30F: LDA    #$00    
       STA    $E0     
       STA    AUDV0   
       DEC    $D5     
       BEQ    LF32C   
       JSR    LFCA9   
       BIT    $D0     
       BPL    LF346   
       LDA    #$0B    
       STA    $DB     
       STA    $E2     
       LDA    #$00    
       STA    $D0     
       BEQ    LF346   
LF32C: LDA    $E5     
       ORA    #$80    
       STA    $E5     
       STA    $A4     
       STA    $A5     
       LDA    #$00    
       STA    $DB     
       STA    $9C     
       STA    $D0     
       STA    AUDV0   
       STA    AUDV1   
       STA    $C1     
       STA    $E2     
LF346: LDA    $EF     
       BEQ    LF34C   
       DEC    $EF     
LF34C: LDY    #$00    
       STY    $9E     
       STY    $9F     
       STY    $A3     
       STY    COLUP1  
       STY    $86     
       LDA    $99     
       STA    $A2     
       LDA    $E0     
       BIT    $E5     
       BPL    LF366   
       LDA    $C1     
       STA    COLUP0  
LF366: TAX            
       LDA    $C6     
       CMP    #$FF    
       BEQ    LF36E   
       TAX            
LF36E: STX    $87     
       LDA    $F7     
       BEQ    LF37D   
       LDX    #$FF    
       STX    $87     
       STX    COLUP0  
       INX            
       STX    $F7     
LF37D: LDA    INTIM   
       BNE    LF37D   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       LDX    #$08    
LF38A: STA    WSYNC   
       TXA            
       ORA    #$60    
       ORA    $EF     
       STA    COLUBK  
       DEX            
       BPL    LF38A   
       STA    WSYNC   
       STX    CXCLR   
       LDA    $87     
       STA    COLUBK  
       LDY    #$08    
       STY    $80     
       JMP    LF4D0   
LF3A5: LDA    #$07    
       CMP    $A2     
       BCC    LF3B2   
       LDA    LFEB1,Y 
       SBC    $99     
       STA    $A3     
LF3B2: LDA    #$09    
       LDX    $88,Y   
       CPX    #$90    
       BCS    LF3BD   
       LDA    LFE00,X 
LF3BD: LDX    $A3     
       LDY    LFF00,X 
       LDX    #$00    
       STA    WSYNC   
       STY    GRP0    
       STX    GRP1    
       STA    HMP1    
       AND    #$0F    
       TAY            
LF3CF: DEY            
       BPL    LF3CF   
       STA    RESP1   
       LDY    $80     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$0C    
       STA    NUSIZ1  
       STA    COLUP1  
       LDA    $86     
       STA    ENAM1   
       LDA.wy $00B3,Y 
       BPL    LF3EA   
       TXA            
LF3EA: AND    #$BF    
       TAX            
       ASL            
       ADC    $F0     
       TAY            
       LDA    LFFA8,Y 
       STA    $C2     
       LDA    LFEB9,X 
       STA    $81     
       STA    COLUP1  
       LDX    #$00    
       STX    CXCLR   
       LDY    $80     
       LDA.wy $00C7,Y 
       STA    NUSIZ1  
       STX    ENAM1   
       STA    WSYNC   
       LDX    $A3     
       INX            
       LDA    LFF00,X 
       STA    GRP0    
       LDY    #$06    
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    $81     
       AND    #$F0    
       STA    $84     
       LDY    $80     
       LDA.wy $00A8,Y 
       AND    #$55    
       STA    $83     
       LDA.wy $00A8,Y 
       AND    #$AA    
       STA    $82     
       LDA    $99     
       SEC            
       SBC    LFEB1,Y 
       BPL    LF43D   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF43D: STA    $A2     
       STA    WSYNC   
       LDA    $87     
       CPY    $F3     
       BNE    LF449   
       LDA    $A0     
LF449: STA    COLUBK  
       LDA.wy $00B3,Y 
       ASL            
       BCC    LF458   
       ASL            
       BCS    LF458   
       LDA    #$FF    
       BNE    LF45A   
LF458: LDA    #$00    
LF45A: STA    $85     
       INX            
       LDY    #$05    
       TYA            
LF460: AND    $BD     
       STA    ENAM0   
       TYA            
       AND    $BE     
       STA    ENABL   
       LDA    LFF00,X 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    $82     
       STA    PF1     
       LDA    LFFC6,Y 
       EOR    $EE     
       STA    COLUPF  
       LDA    $83     
       STA    PF2     
       LDA    $81     
       STA    COLUP1  
       BIT    $81     
       LDA    #$00    
       STA    PF1     
       BIT    $81     
       STA    PF2     
       INX            
       STA    $A3     
       LDA    #$02    
       STA    $86     
       LDA    $82     
       STA    WSYNC   
       STA    PF1     
       LDA    $83     
       STA    PF2     
       TYA            
       ASL            
       ORA    $84     
       STA    $81     
       DEY            
       JSR    LF78D   
       LDA    ($D1),Y 
       AND    $85     
       AND    $ED     
       STA    PF1     
       STA    PF2     
       TYA            
       BNE    LF460   
       LDA    $87     
       STY    WSYNC   
       STA    COLUBK  
       STY    PF1     
       STY    PF2     
       LDA    LFF00,X 
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    $81     
       STA    COLUP1  
LF4D0: LDY    $80     
       DEY            
       LDA    #$02    
       LDX    #$00    
       CPY    $A4     
       BNE    LF4DC   
       TAX            
LF4DC: STX    $BD     
       LDX    #$00    
       CPY    $A5     
       BNE    LF4E5   
       TAX            
LF4E5: STX    $BE     
       LDA    $9F     
       ORA    COLUP1  
       STA    $9F     
       STA    WSYNC   
       LDA    CXM0P   
       ASL            
       LDA    CXP1FB  
       AND    #$40    
       ROL            
       ORA    $9E     
       STA    $9E     
       STY    $80     
       TYA            
       BMI    LF503   
       JMP    LF3A5   
LF503: LDX    #$00    
       STX    WSYNC   
       STX    GRP0    
       STX    GRP1    
       STX    ENAM1   
       LDA    $D5     
       CMP    #$05    
       BCC    LF515   
       LDA    #$04    
LF515: STA    $81     
LF517: STA    WSYNC   
       TXA            
       ORA    #$60    
       ORA    $EF     
       STA    COLUBK  
       INX            
       CPX    #$09    
       BCC    LF517   
       STY    $C6     
       STY    COLUP0  
       LDA    $A0     
       ASL            
       LDA    #$00    
       STA    REFP0   
       ADC    $81     
       TAY            
       INC    $D6     
       LDA    $D6     
       AND    #$07    
       STA    $D6     
       LSR            
       LSR            
       STA    RESP0   
       STA    $F0     
       LDA    $F6     
       EOR    #$01    
       STA    $F6     
       LDA    LFD5E,Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    $DB     
       CMP    #$0F    
       BCC    LF561   
       SBC    #$0E    
       ASL            
       ORA    #$F0    
       ORA    $D6     
       STA    $C6     
       STA    $E1     
       LDA    #$0F    
LF561: TAX            
       STA    WSYNC   
       CPX    #$08    
       BCS    LF573   
       LDA    LFEC8,X 
       STA    $81     
       LDA    #$00    
       STA    $82     
       BEQ    LF584   
LF573: TXA            
       AND    #$07    
       EOR    #$07    
       TAX            
       LDA    LFEC8,X 
       EOR    #$FF    
       STA    $82     
       LDA    #$FF    
       STA    $81     
LF584: LDY    #$02    
LF586: LDX    $81     
       STA    WSYNC   
       LDA    $82     
       STX    PF1     
       STA    PF2     
       PHA            
       PLA            
       NOP            
       LDA    $C6     
       STA    COLUPF  
       LDA    #$00    
       STA    COLUBK  
       PHA            
       PLA            
       NOP            
       LDA    #$68    
       ORA    $EF     
       LDX    #$00    
       STA    COLUBK  
       STX    PF1     
       STX    PF2     
       DEY            
       BPL    LF586   
       STA    WSYNC   
       STX    PF1     
       STX    PF2     
       STX    GRP0    
       DEX            
       BIT    $EC     
       BVS    LF5C0   
       INC    $EC     
       TXA            
       EOR    $D6     
       TAX            
LF5C0: TXA            
       LDX    $EB     
       DEX            
       BNE    LF5CE   
       LDX    $A0     
       BMI    LF5CE   
       EOR    #$FF    
       EOR    $A0     
LF5CE: STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDX    $EB     
       BNE    LF5FC   
       STX    $85     
       LDA    $D3     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $84     
       LDA    $D3     
       AND    #$F0    
       LSR            
       STA    $83     
       LDA    $D4     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $82     
       LDA    $D4     
       AND    #$F0    
       LSR            
       STA    $81     
       BCC    LF616   
LF5FC: DEX            
       LDA    LFEAB,X 
       STA    $81     
       LDA    LFEAE,X 
       STA    $82     
       LDA    LFE00,X 
       STA    $83     
       LDA    LFE03,X 
       STA    $84     
       LDA    LFFF1,X 
       STA    $85     
LF616: STA    WSYNC   
       LDA    #$10    
       STA    HMP1    
       LDX    #$06    
       STA    WSYNC   
       LDA    #$00    
       STA    REFP1   
       STA    CTRLPF  
LF626: DEX            
       BNE    LF626   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $D1     
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
LF63D: LDY    $84     
       LDA    ($D1),Y 
       TAX            
       LDY    $81     
       STA    WSYNC   
       LDA    ($D1),Y 
       LDY    $82     
       STA    GRP0    
       LDA    ($D1),Y 
       STA    GRP1    
       LDY    $83     
       LDA    ($D1),Y 
       STA    $86     
       LDY    $85     
       LDA    ($D1),Y 
       LDY    $86     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       DEC    $D1     
       BPL    LF63D   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    #$07    
       STX    $D1     
LF672: DEX            
       BPL    LF672   
       STA    RESP0   
       LDA    #$20    
       STA    NUSIZ0  
       LDA    #$5C    
       STA    COLUP0  
       LDA    $E3     
       BIT    $E5     
       BPL    LF68C   
       LDA    $E5     
       AND    #$03    
       CLC            
       ADC    #$01    
LF68C: ASL            
       ASL            
       ASL            
       TAY            
LF690: LDA    ($D1),Y 
       STA    WSYNC   
       STA    GRP0    
       DEC    $D1     
       BPL    LF690   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       LDX    $BC     
       LDA    LFFFA,X 
       SEC            
       SBC    #$B3    
       TAY            
       STA    WSYNC   
LF6AB: STA    WSYNC   
       DEY            
       BNE    LF6AB   
       STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDX    $BC     
       LDA    LFFFE,X 
       STA    TIM64T  
       LDA    #$20    
       STA    CTRLPF  
       LDX    $F6     
       BEQ    LF6CE   
       BIT    $9E     
       BPL    LF6D5   
       BMI    LF6D2   
LF6CE: ROR    $9E     
       BCC    LF6D5   
LF6D2: JSR    LFBB0   
LF6D5: JSR    LFA39   
LF6D8: LDA    INTIM   
       BNE    LF6D8   
       STA    WSYNC   
       JMP    LF03A   
LF6E2: LDA    $E0     
       BEQ    LF6E7   
LF6E6: RTS            

LF6E7: LDA    $E5     
       BMI    LF6E6   
       BIT    SWCHA   
       BMI    LF6FF   
       LDA    #$00    
       STA    $C5     
       LDA    $9D     
       CMP    #$0C    
       BEQ    LF6FC   
       INC    $9D     
LF6FC: JMP    LF721   
LF6FF: BVS    LF710   
       LDA    #$01    
       STA    $C5     
       LDA    $9D     
       CMP    #$F4    
       BEQ    LF70D   
       DEC    $9D     
LF70D: JMP    LF721   
LF710: LDA    $F6     
       BEQ    LF721   
       LDA    $9D     
       BEQ    LF721   
       BMI    LF71F   
       DEC    $9D     
       JMP    LF721   
LF71F: INC    $9D     
LF721: LDA    SWCHA   
       AND    #$20    
       BNE    LF733   
       LDA    $9A     
       CMP    #$0C    
       BEQ    LF730   
       INC    $9A     
LF730: JMP    LF762   
LF733: LDA    SWCHA   
       AND    #$10    
       BNE    LF745   
       LDA    $9A     
       CMP    #$F4    
       BEQ    LF742   
       DEC    $9A     
LF742: JMP    LF762   
LF745: LDA    $9A     
       BEQ    LF762   
       CMP    #$01    
       BEQ    LF751   
       CMP    #$FF    
       BNE    LF757   
LF751: LDA    $99     
       AND    #$07    
       BNE    LF762   
LF757: BIT    $9A     
       BMI    LF760   
       DEC    $9A     
       JMP    LF762   
LF760: INC    $9A     
LF762: LDY    #$00    
       STY    $83     
       JSR    LF78E   
       LDY    #$03    
       LDA    #$7F    
       STA    $83     
       JSR    LF78E   
       LDA    $9C     
       SEC            
       SBC    #$20    
       LSR            
       LSR            
       LSR            
       STA    $B2     
       LDA    $99     
       CLC            
       ADC    #$04    
       LSR            
       LSR            
       LSR            
       STA    $81     
       LDA    #$07    
       SEC            
       SBC    $81     
       STA    $B1     
LF78D: RTS            

LF78E: LDA    #$00    
       LDX    $9A,Y   
       BPL    LF796   
       EOR    #$FF    
LF796: STA    $82     
       TXA            
       ASL            
       ASL            
       STA    $84     
       ASL            
       ASL            
       CLC            
       ADC    $84     
       CLC            
       ADC.wy $0098,Y 
       STA.wy $0098,Y 
       LDA.wy $0099,Y 
       ADC    $82     
       STA.wy $0099,Y 
       BPL    LF7BB   
       LDA    $83     
       STA.wy $0099,Y 
       JMP    LF7D3   
LF7BB: LDA.wy $0099,Y 
       CPY    #$00    
       BEQ    LF7CA   
       CMP    #$23    
       BCS    LF7E9   
       LDA    #$23    
       BNE    LF7D0   
LF7CA: CMP    #$39    
       BCC    LF7E9   
       LDA    #$38    
LF7D0: STA.wy $0099,Y 
LF7D3: BIT    SWCHB   
       BVS    LF7DE   
       LDA    #$00    
       STA.wy $009A,Y 
       RTS            

LF7DE: LDA.wy $009A,Y 
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA.wy $009A,Y 
LF7E9: RTS            

LF7EA: LDA    #$10    
       SEC            
       SBC    $88,X   
       CLC            
       ADC    #$10    
       STA    $88,X   
       LDA    $C7,X   
       EOR    #$80    
       STA    $C7,X   
       LDA    $85     
       BNE    LF81A   
       LDA    $B3,X   
       CMP    #$08    
       BNE    LF81B   
       LDA    $E7     
       CMP    #$04    
       BCC    LF81A   
       JSR    LFEE8   
       ROR            
       BCC    LF81A   
       LDA    $E2     
       BIT    $D0     
       BPL    LF818   
       LDA    #$01    
LF818: STA    $B3,X   
LF81A: RTS            

LF81B: BIT    $D0     
       BMI    LF81A   
       LDA    $A8,X   
       BEQ    LF81A   
       ASL            
       BCC    LF82C   
       BIT    $F3     
       BPL    LF82C   
       STX    $F3     
LF82C: ASL            
       AND    #$A8    
       STA    $81     
       LDA    $A8,X   
       ASL            
       AND    #$02    
       ORA    $81     
       STA    $81     
       LDA    $A8,X   
       LSR            
       LSR            
       AND    #$15    
       ORA    $81     
       STA    $A8,X   
       LDA    #$01    
       STA    $85     
       RTS            

LF849: AND    #$BF    
       TAY            
       LDA    LFFCC,Y 
       STA    $81     
       LDA    LFFDA,Y 
       STA    $82     
       JMP.ind ($0081)
LF859: .byte $60,$A5,$A0,$29,$07,$D0,$1B,$F6,$B3,$B5,$B3,$C9,$06,$90,$13,$A9
       .byte $C0,$E4,$F3,$D0,$07,$0A,$85,$F3,$A9,$08,$D0,$04,$A0,$FF,$94,$88
       .byte $95,$B3,$60,$A5,$83,$D0,$28,$E4,$F3,$F0,$24,$A5,$A0,$30,$0B,$8A
       .byte $F0,$1D,$A8,$88,$B9,$B3,$00,$30,$0D,$60,$8A,$C9,$07,$F0,$10,$A8
       .byte $C8,$B9,$B3,$00,$10,$09,$20,$BE,$FD,$A9,$07,$95,$B3,$85,$83,$60
       .byte $A5,$84,$D0,$0E,$A5,$A0,$29,$07,$D0,$08,$B5,$B3,$09,$C0,$95,$B3
       .byte $85,$84,$60,$A5,$83,$D0,$FB,$A5,$F4,$F0,$07,$A9,$0A,$95,$B3,$4C
       .byte $E6,$FC,$A5,$9C,$38,$E9,$10,$D5,$88,$B0,$06,$B5,$C7,$09,$80,$D0
       .byte $04,$B5,$C7,$29,$7F,$95,$C7,$A5,$D6,$D0,$30,$8A,$A8,$24,$D0,$50
       .byte $04,$C8,$4C,$EF,$F8,$88,$B9,$B3,$00,$10,$0B,$98,$C9,$07,$B0,$04
       .byte $F0,$04,$D0,$0B,$A0,$07,$A5,$D0,$49,$40,$85,$D0,$4C,$14,$F9,$B9
       .byte $B3,$00,$10,$07,$20,$BE,$FD,$A9,$01,$85,$83,$60,$60,$B5,$C7,$30
       .byte $10,$B5,$A8,$F0,$0C,$B5,$88,$C9,$1C,$90,$06,$B5,$C7,$09,$80,$95
       .byte $C7,$60,$60,$B5,$88,$C9,$30,$B0,$0B,$24,$D0,$30,$06,$A5,$E7,$C9
       .byte $02,$B0,$0C,$60,$C9,$40,$90,$EA,$B5,$C7,$09,$80,$95,$C7,$60,$A5
       .byte $F6,$F0,$DF,$B5,$C7,$49,$80,$95,$C7,$A5,$E9,$D0,$D5,$4C,$D2,$FC
LF959: LDA    $E4     
       BEQ    LF95E   
       RTS            

LF95E: LDA    $DB     
       SEC            
       SBC    #$0F    
       TAX            
       BMI    LF99B   
       LDA    #$F9    
       STA    $82     
       LDA    LFDF2,X 
       STA    $81     
       JMP.ind ($0081)
LF972: .byte $24,$D0,$30,$25,$A9,$00,$85,$F4,$A9,$09,$D0,$32,$A9,$01,$85,$F4
       .byte $D0,$17,$A5,$A0,$85,$F5,$4C,$9B,$F9,$A2,$00,$86,$F5,$86,$1A,$86
       .byte $DB,$A5,$E7,$C9,$0F,$B0,$02,$E6,$E7
LF99B: LDA    $A1     
       EOR    $DA     
       AND    #$10    
       BEQ    LF9B2   
       LDA    $E5     
       BMI    LF9A9   
       INC    $DB     
LF9A9: JSR    LFEE2   
       TAY            
       LDA    LFE9E,Y 
       STA    $E2     
LF9B2: LDA    $A1     
       AND    #$04    
       BNE    LF9C0   
       LDX    $D6     
       LDA    $B3,X   
       AND    #$40    
       BNE    LF9C1   
LF9C0: RTS            

LF9C1: JSR    LFEE8   
       ROR            
       BCS    LFA26   
       LDA    #$1C    
       STA    $ED     
       BIT    $D0     
       BPL    LF9D7   
       LDA    $D8     
       CMP    #$01    
       BCS    LFA26   
       BCC    LF9E1   
LF9D7: LDA    $E7     
       LSR            
       CLC            
       ADC    #$01    
       CMP    $D8     
       BCC    LFA26   
LF9E1: LDA    $E2     
       CMP    #$09    
       BNE    LF9F3   
       LDA    #$FF    
       STA    $A4     
       STA    $A5     
       LDY    #$C0    
       STY    $D0     
       LDA    #$09    
LF9F3: ORA    #$80    
       STA    $B3,X   
       LDA    #$98    
       STA    $88,X   
       BIT    $D0     
       BPL    LFA05   
       LDA    #$C0    
       STA    $C7,X   
       BNE    LFA38   
LFA05: JSR    LFEE2   
       TAY            
       LDA    LFEDA,Y 
       STA    $81     
       JSR    LFEE2   
       LSR            
       STA    $82     
       LDA    $E7     
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $82     
       TAY            
       LDA    LFED8,Y 
       ORA    $81     
       STA    $C7,X   
       BNE    LFA38   
LFA26: LDA    #$8A    
       STA    $B3,X   
       LDA    #$98    
       STA    $88,X   
       JSR    LFEE2   
       LSR            
       TAY            
       LDA    LFEDE,Y 
       STA    $C7,X   
LFA38: RTS            

LFA39: LDA    $E4     
       BEQ    LFA42   
       DEC    $E4     
       JMP    LFB38   
LFA42: LDX    #$07    
       LDA    #$00    
       STA    $85     
       STA    $D8     
LFA4A: LDA    $B3,X   
       TAY            
       AND    #$3F    
       CMP    #$0A    
       BEQ    LFA5E   
       CMP    #$0D    
       BEQ    LFA5E   
       TYA            
       AND    #$40    
       BNE    LFA5E   
       INC    $D8     
LFA5E: TYA            
       CMP    #$07    
       BEQ    LFA67   
       AND    #$40    
       BEQ    LFA6A   
LFA67: JMP    LFB06   
LFA6A: LDA    $88,X   
       CMP    #$90    
       BCC    LFA8E   
       LDA    $C7,X   
       BMI    LFA8E   
       LDA    $B3,X   
       AND    #$3F    
       CMP    #$08    
       BEQ    LFA86   
       ORA    #$C0    
       CPX    $F3     
       BNE    LFA8C   
       LDA    #$80    
       STA    $F3     
LFA86: LDA    #$E0    
       STA    $C7,X   
       LDA    #$8D    
LFA8C: STA    $B3,X   
LFA8E: LDY    #$00    
       LDA    $C7,X   
       BPL    LFA96   
       LDY    #$FF    
LFA96: STY    $82     
       AND    #$60    
       ASL            
       ROL            
       ROL            
       ROL            
       TAY            
       LDA    LFEA7,Y 
       EOR    $82     
       STA    $81     
       LDA    $F5     
       BEQ    LFAAE   
       ASL    $81     
       ROL    $82     
LFAAE: LDA    $90,X   
       ADC    $81     
       STA    $90,X   
       LDA    $88,X   
       ADC    $82     
       STA    $88,X   
       LDA    $88,X   
       CMP    #$90    
       BCS    LFB00   
       CMP    #$10    
       BCS    LFAFA   
       LDA    $B3,X   
       CMP    #$0A    
       BEQ    LFAF6   
       CMP    #$0D    
       BEQ    LFAF6   
       CMP    #$0C    
       BEQ    LFAE6   
       CMP    #$08    
       BNE    LFAE0   
       LDA    $F6     
       BEQ    LFAE0   
       LDA    $E7     
       CMP    #$0C    
       BCS    LFAF6   
LFAE0: JSR    LF7EA   
       JMP    LFAFA   
LFAE6: LDA    #$00    
       STA    $A8,X   
       LDA    #$04    
       STA    $B3,X   
       STA    $F7     
       LDA    #$88    
       STA    $E1     
       BNE    LFAFA   
LFAF6: LDA    #$40    
       STA    $B3,X   
LFAFA: LDA    $B3,X   
       AND    #$7F    
       BPL    LFB04   
LFB00: LDA    $B3,X   
       ORA    #$80    
LFB04: STA    $B3,X   
LFB06: LDA    $88,X   
       CMP    #$80    
       BCC    LFB15   
       LDA    $C7,X   
       AND    #$F8    
       STA    $C7,X   
       JMP    LFB32   
LFB15: LDA    $C7,X   
       AND    #$18    
       LSR            
       LSR            
       LSR            
       STA    $81     
       LDA    $C7,X   
       AND    #$F8    
       ORA    $81     
       STA    $C7,X   
       LDA    $88,X   
       CMP    #$70    
       BCC    LFB32   
       LDA    $C7,X   
       AND    #$FD    
       STA    $C7,X   
LFB32: DEX            
       BMI    LFB38   
       JMP    LFA4A   
LFB38: RTS            

LFB39: LDA    $E5     
       BMI    LFBAF   
       LDA    $C1     
       BMI    LFB46   
       DEC    $C1     
       JMP    LFB8C   
LFB46: BIT    $EA     
       BVC    LFB8C   
       BIT    $D0     
       BPL    LFB52   
       LDA    $E3     
       BEQ    LFB8C   
LFB52: LDX    #$01    
LFB54: LDA    $A4,X   
       BMI    LFB5D   
       DEX            
       BPL    LFB54   
       BMI    LFB8C   
LFB5D: LDA    $B1     
       STA    $A4,X   
       LDY    $C5     
       LDA    $9C     
       CLC            
       ADC    LFFEA,Y 
       STA    $A6,X   
       BIT    $D0     
       BMI    LFB7E   
       LDA    LFFE8,Y 
       STA    $BF,X   
       LDA    #$0A    
       STA    $D7     
       LDA    #$04    
       STA    $C1     
       BNE    LFB8C   
LFB7E: LDA    #$00    
       STA    $BF,X   
       LDA    #$1F    
       STA    $D7     
       LDA    #$08    
       STA    $C1     
       DEC    $E3     
LFB8C: LDY    #$01    
LFB8E: LDA.wy $00A4,Y 
       BMI    LFBAC   
       LDA.wy $00A6,Y 
       CLC            
       ADC.wy $00BF,Y 
       STA.wy $00A6,Y 
       CMP    #$9E    
       BCC    LFBA8   
LFBA1: LDA    #$FF    
       STA.wy $00A4,Y 
       BNE    LFBAC   
LFBA8: CMP    #$1F    
       BCC    LFBA1   
LFBAC: DEY            
       BPL    LFB8E   
LFBAF: RTS            

LFBB0: LDY    $A4,X   
       STY    $82     
       LDA    #$FF    
       STA    $A4,X   
       LDA.wy $00B3,Y 
       CMP    #$0A    
       BNE    LFBEE   
       LDA    $A0     
       AND    #$01    
       ASL            
       SBC    #$00    
       CLC            
       ADC.wy $0088,Y 
       STA.wy $0088,Y 
       LDA    $E7     
       LSR            
       LSR            
       TAY            
       LDA    $D6     
       AND    LFFED,Y 
       BNE    LFBE9   
       LDY    $82     
       LDX    #$08    
       STX    $B3,Y   
       STX    $F7     
       LDA    $E1     
       BNE    LFBE9   
       LDA    #$6F    
       STA    $E1     
LFBE9: LDA    #$01    
       JMP    LFDD2   
LFBEE: CMP    #$08    
       BNE    LFBF7   
       LDA    #$66    
       STA    $E1     
       RTS            

LFBF7: CMP    #$09    
       BNE    LFC06   
       JSR    LFCE6   
       LDA    #$D0    
       JSR    LFDD2   
       JMP    LFC4D   
LFC06: CMP    #$0B    
       BNE    LFC11   
       LDA    $BF,X   
       BMI    LFC4D   
       STA    $F7     
LFC10: RTS            

LFC11: CMP    #$04    
       BEQ    LFC10   
       CMP    #$05    
       BEQ    LFC10   
       CMP    #$0D    
       BNE    LFC2B   
       LDA    $BF,X   
       ASL            
       ASL            
       STA    $E1     
       CLC            
       ADC.wy $0088,Y 
       STA.wy $0088,Y 
       RTS            

LFC2B: CMP    #$02    
       BEQ    LFC33   
       CMP    #$03    
       BNE    LFC4D   
LFC33: LDA    #$03    
       STA.wy $00B3,Y 
       LDA.wy $00C7,Y 
       EOR    #$80    
       STA.wy $00C7,Y 
       DEC    $F1     
       BPL    LFC10   
       LDA    $E7     
       LSR            
       LSR            
       CLC            
       ADC    #$01    
       STA    $F1     
LFC4D: LDA    $A6,X   
       SEC            
       SBC    #$10    
       CMP.wy $0088,Y 
       BCS    LFC5B   
       LDA    #$00    
       BEQ    LFC63   
LFC5B: SEC            
       SBC.wy $0088,Y 
       LSR            
       LSR            
       AND    #$3C    
LFC63: STA    $81     
       LDA.wy $00C7,Y 
       AND    #$18    
       LSR            
       LSR            
       LSR            
       ADC    $81     
       TAX            
       LDA.wy $00C7,Y 
       AND    #$E7    
       ORA    LFDB2,X 
       STA.wy $00C7,Y 
       LDA    LFDB2,X 
       AND    #$07    
       ASL            
       ASL            
       ASL            
       ADC.wy $0088,Y 
       STA.wy $0088,Y 
       LDA    #$88    
       STA    $E1     
       LDA.wy $00C7,Y 
       AND    #$18    
       CMP    #$18    
       BNE    LFCA8   
       LDA    #$03    
       JSR    LFDD2   
       LDA    #$04    
       STA.wy $00B3,Y 
       LDA.wy $00C7,Y 
       AND    #$E7    
       STA.wy $00C7,Y 
LFCA8: RTS            

LFCA9: LDA    #$18    
       STA    $99     
       LSR            
       STA    $9C     
       LDY    #$07    
       LDA    #$00    
       STA    $9D     
       STA    $9A     
       STA    $CF     
       STA    $C5     
       STA    $F5     
       STA    $9F     
       LDA    #$C0    
LFCC2: STA.wy $00B3,Y 
       DEY            
       BPL    LFCC2   
       ASL            
       STA    $E4     
       STA    $F3     
       STA    $A4     
       STA    $A5     
       RTS            

LFCD2: .byte $A5,$AF,$85,$81,$A0,$06,$B9,$A8,$00,$99,$A9,$00,$88,$10,$F7,$A5
       .byte $81,$85,$A8,$60
LFCE6: LDA    $E3     
       ASL            
       ASL            
       ASL            
       ASL            
       JSR    LFDD2   
       LDA    #$00    
       STA    $D0     
       STA    $E3     
       LDA    #$01    
       STA    $E2     
       LDA    #$13    
       STA    $DB     
       RTS            

LFCFE: .byte $FF,$FF,$3E,$63,$63,$63,$63,$63,$63,$3E,$1E,$0C,$0C,$0C,$0C,$0C
       .byte $1C,$0C,$7F,$60,$60,$3E,$03,$03,$43,$3E,$3E,$43,$03,$03,$1E,$03
       .byte $43,$3E,$06,$06,$06,$3F,$26,$16,$0E,$06,$3E,$43,$03,$03,$7E,$60
       .byte $60,$7F,$3E,$63,$63,$63,$7E,$60,$60,$3E,$30,$30,$10,$08,$04,$02
       .byte $41,$7F,$3E,$63,$63,$63,$3E,$63,$63,$3E,$3E,$43,$03,$3F,$63,$63
       .byte $63,$3E,$7E,$81,$99,$A1,$A1,$99,$81,$7E,$18,$18,$00,$00,$00,$00
LFD5E: .byte $00,$00,$80,$A0,$A8,$AA,$00,$89,$8A,$CB,$A2,$A9,$A0,$C0,$00,$A4
       .byte $2A,$2A,$2A,$94,$00,$00,$33,$44,$43,$40,$43,$40,$30,$00,$92,$AA
       .byte $AA,$A8,$2A,$00,$00,$A7,$A9,$A7,$A1,$C6,$00,$00,$61,$D1,$D1,$D1
       .byte $D3,$D3,$D3,$63,$8E,$8D,$81,$81,$CF,$4C,$4C,$47,$18,$18,$18,$18
       .byte $18,$18,$18,$3C,$D1,$D3,$D3,$E3,$E3,$D3,$D3,$E1,$8D,$4D,$4D,$4D
       .byte $4D,$4D,$4D,$8E
LFDB2: .byte $18,$02,$04,$0A,$00,$00,$00,$10,$00,$00,$00,$08,$B5,$B3,$99,$B3
       .byte $00,$B5,$88,$99,$88,$00,$B5,$C7,$99,$C7,$00,$A9,$C0,$95,$B3,$60
LFDD2: BIT    $F5     
       BEQ    LFDD8   
       LDA    #$10    
LFDD8: STA    $81     
       AND    #$7F    
       SED            
       CLC            
       ADC    $D3     
       STA    $D3     
       LDA    #$00    
       BIT    $81     
       BPL    LFDEA   
       LDA    #$01    
LFDEA: STA    $EC     
       ADC    $D4     
       STA    $D4     
       CLD            
       RTS            

LFDF2: .byte $72,$72,$72,$7E,$84,$84,$8B,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFE00: .byte $9A,$48,$73
LFE03: .byte $A2,$48,$7B,$61,$51,$41,$31,$21,$11,$01,$F1,$E1,$D1,$C1,$B1,$A1
       .byte $91,$72,$62,$52,$42,$32,$22,$12,$02,$F2,$E2,$D2,$C2,$B2,$A2,$92
       .byte $73,$63,$53,$43,$33,$23,$13,$03,$F3,$E3,$D3,$C3,$B3,$A3,$93,$74
       .byte $64,$54,$44,$34,$24,$14,$04,$F4,$E4,$D4,$C4,$B4,$A4,$94,$75,$65
       .byte $55,$45,$35,$25,$15,$05,$F5,$E5,$D5,$C5,$B5,$A5,$95,$76,$66,$56
       .byte $46,$36,$26,$16,$06,$F6,$E6,$D6,$C6,$B6,$A6,$96,$77,$67,$57,$47
       .byte $37,$27,$17,$07,$F7,$E7,$D7,$C7,$B7,$A7,$97,$78,$68,$58,$48,$38
       .byte $28,$18,$08,$F8,$E8,$D8,$C8,$B8,$A8,$98,$79,$69,$59,$49,$39,$29
       .byte $19,$09,$F9,$E9,$D9,$C9,$B9,$A9,$99,$7A,$6A,$5A,$4A,$3A,$2A,$1A
       .byte $0A,$FA,$EA,$DA,$CA,$BA,$AA,$9A,$7B,$6B,$5B
LFE9E: .byte $01,$01,$02,$02,$06,$0C,$0C,$0B,$09
LFEA7: .byte $55,$8F,$AF,$CF
LFEAB: .byte $8A,$50,$64
LFEAE: .byte $92,$08,$6C
LFEB1: .byte $40,$38,$30,$28,$20,$18,$10,$08
LFEB9: .byte $FD,$2D,$3D,$3D,$4D,$5D,$6D,$7D,$5D,$9D,$AD,$BD,$CD,$DD,$0D
LFEC8: .byte $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
LFED0: .byte $80,$20,$08,$02,$01,$04,$10,$40
LFED8: .byte $89,$9B
LFEDA: .byte $80,$80,$80,$A0
LFEDE: .byte $80,$A0,$C0,$E0
LFEE2: JSR    LFEE8   
       JSR    LFEE8   
LFEE8: LDA    $DF     
       ASL            
       ASL            
       ASL            
       EOR    $DF     
       ASL            
       ASL            
       ROL    $DC     
       ROL    $DD     
       ROL    $DE     
       ROL    $DF     
       LDA    $DC     
       AND    #$07    
       RTS            

LFEFE: .byte $FF,$FF
LFF00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$7E,$67,$67,$7E,$30
       .byte $00,$00,$00,$00,$00,$00,$00,$3C,$7E,$FF,$FF,$FF,$7E,$3C,$66,$C3
       .byte $C3,$C3,$66,$3C,$81,$C3,$FF,$FF,$FF,$C3,$81,$C3,$FF,$FF,$FF,$C3
       .byte $81,$42,$7E,$3C,$3C,$3C,$7E,$42,$00,$00,$18,$18,$18,$00,$00,$38
       .byte $38,$28,$38,$38,$00,$3C,$5A,$42,$66,$42,$5A,$3C,$18,$00,$00,$81
       .byte $00,$00,$18,$FF,$92,$92,$92,$92,$92,$FF,$24,$24,$24,$24,$24,$FF
       .byte $00,$7E,$81,$81,$81,$7E,$00,$00,$3C,$42,$3C,$00,$00,$3C,$3C,$3C
       .byte $00,$00,$82,$44,$28,$10,$28,$44,$82,$10,$10,$10,$C7,$10,$10,$10
       .byte $3E,$FF,$DE,$FF,$7F,$73,$3E,$60,$C0,$FE,$D5,$FE,$C0,$60,$C0,$FE
       .byte $EA,$FE,$C0,$60,$00,$00,$7D,$FE,$7D,$00,$00,$7D,$FE,$7D,$00,$00
       .byte $00,$FF,$9F,$FF,$F3,$FF,$CF,$FF
LFFA8: .byte $10,$10,$17,$1D,$24,$24,$2A,$31,$38,$3E,$45,$4C,$53,$59,$60,$66
       .byte $6B,$6B,$72,$79,$80,$80,$87,$8D,$94,$9A,$A1,$A1
LFFC4: .byte $2B,$35
LFFC6: .byte $70,$78,$74,$70,$74,$78
LFFCC: .byte $59,$16,$59,$59,$5A,$5A,$7C,$A9,$59,$BC,$59,$2B,$15,$2C
LFFDA: .byte $F8,$F9,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F9,$F9,$F9
LFFE8: .byte $02,$FE
LFFEA: .byte $08
LFFEB: .byte $00,$08
LFFED: .byte $01,$03,$03,$07
LFFF1: .byte $AA,$38,$82,$FF,$FF,$FF,$FF,$FF,$FF
LFFFA: .byte $BF,$E4,$00,$F0
LFFFE: .byte $23,$2A
