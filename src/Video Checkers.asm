; Disassembly of roms/Video Checkers.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Video Checkers.bin
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
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: LDX    #$04    
LF002: LDY    #$02    
LF004: STA    WSYNC   
       LDA    $DA,X   
       STA    PF1     
       LDA    $D0,X   
       STA    GRP0    
       LDA    $D5,X   
       STA    GRP1    
       LDA    #$00    
       CPX    #$02    
       BNE    LF019   
       TXA            
LF019: STA    ENAM0   
       LDA    $DF,X   
       DEY            
       STA    PF1     
       BNE    LF004   
       DEX            
       BPL    LF002   
       LDA    $F3     
       STA    WSYNC   
       STA    COLUP1  
       LDA    #$31    
       STA    CTRLPF  
       STY    PF1     
       STY    GRP0    
       STY    GRP1    
       LDA    #$E0    
       STA    HMBL    
       TXA            
       STA    HMM1    
       STA    $D9     
       STA    RESP1   
       LDX    #$06    
       STX    NUSIZ0  
       STY    HMP1    
       STA    RESP0   
       LDX    #$30    
       STX    NUSIZ1  
       STA    $DB     
       STA    $DD     
       STA    $DF     
       LDA    #$10    
       STA    HMP0    
       STA    RESBL   
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $BA     
       STA    COLUBK  
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$C0    
       STA    HMP1    
       STA    HMP0    
       LDY    #$1F    
LF06E: STY    $E0     
       LDX    #$06    
LF072: LDA.wy $0080,Y 
       BMI    LF080   
       STA    $D8,X   
       LDA    $CE     
       JMP    LF086   
LF07E: BCS    LF0D0   
LF080: AND    #$7F    
       STA    $D8,X   
       LDA    $CF     
LF086: STA    $D0,X   
       INY            
       DEX            
       DEX            
       BPL    LF072   
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF09C   
       SEC            
       LDA    #$C3    
       LDX    #$03    
       LDY    #$02    
       BCS    LF0A2   
LF09C: CLC            
       LDA    #$3C    
       TAX            
       LDY    #$00    
LF0A2: STA    PF2     
       STX    PF1     
       STY    ENAM1   
       STY    ENABL   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$40    
       BCS    LF0B6   
       LDA    #$C0    
LF0B6: STA    HMP0    
       STA    HMP1    
       LDY    #$0F    
LF0BC: STA    WSYNC   
       LDA    $D0     
       STA    COLUP1  
       LDA    ($D8),Y 
       STA    GRP1    
       LDA    $D2     
       STA    COLUP0  
       LDA    ($DA),Y 
       STA    GRP0    
       BCS    LF07E   
LF0D0: LDA    $F3     
       STA    COLUP1  
       LDX    $D4     
       LDA    ($DC),Y 
       STX    COLUP0  
       STA    GRP0    
       LDX    $D6     
       LDA    ($DE),Y 
       STA    GRP0    
       STX    COLUP0  
       DEY            
       BPL    LF0BC   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    GRP1    
       STY    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       PHP            
       LDA    $E0     
       SBC    #$04    
       PLP            
       TAY            
       BMI    LF125   
       JMP    LF06E   

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF105: STA    VSYNC,X 
       INX            
       BNE    LF105   
       DEX            
       TXS            
       INC    $B0     
       LDA    SWCHB   
       STA    $C2     
       AND    #$40    
       STA    $EC     
       LDX    #$30    
       STX    AUDF1   
       INX            
       STX    CTRLPF  
       LDX    #$04    
       STX    AUDC1   
       JSR    LF986   
LF125: STA    WSYNC   
       LDX    #$25    
       STA    WSYNC   
       STX    TIM64T  
       LDX    #$00    
       STX    PF2     
       STX    PF1     
       INC    $C3     
       BNE    LF140   
       INC    $EE     
       BNE    LF140   
       LDA    #$00    
       STA    $EF     
LF140: LDA    $E5     
       BEQ    LF14E   
       CLC            
       JSR    LF9D2   
       LDX    $E8     
       LDA    #$00    
       STA    $80,X   
LF14E: LDX    $E9     
       LDA    $E4     
       STA    $80,X   
       LDX    $AB     
       LDA    $A3     
       STA    $80,X   
       LDA    $F0     
       BNE    LF1CD   
       LDA    SWCHB   
       TAX            
       EOR    $C2     
       STX    $C2     
       BPL    LF1CA   
       LDX    #$02    
       LDA    $AD     
       BMI    LF175   
LF16E: LDA    #$22    
       SEC            
       SBC    $AB,X   
       STA    $AB,X   
LF175: DEX            
       BPL    LF16E   
       LDA    #$22    
       SEC            
       SBC    $E8     
       STA    $E8     
       LDA    #$22    
       SEC            
       SBC    $E9     
       STA    $E9     
       LDX    #$23    
LF188: LDA    $80,X   
       BEQ    LF190   
       EOR    #$80    
       STA    $80,X   
LF190: DEX            
       BPL    LF188   
       LDA    $E4     
       BEQ    LF19B   
       EOR    #$80    
       STA    $E4     
LF19B: LDX    #$10    
       LDY    #$00    
LF19F: LDA    $92,X   
       PHA            
       LDA.wy $0080,Y 
       STA    $92,X   
       PLA            
       STA.wy $0080,Y 
       INY            
       DEX            
       BPL    LF19F   
       JSR    LFB18   
       LDA    $B1     
       LDX    $B2     
       STX    $B1     
       STA    $B2     
       LDA    $A9     
       LDX    $AA     
       STX    $A9     
       STA    $AA     
       LDA    $AE     
       LDX    $AF     
       STX    $AE     
       STA    $AF     
LF1CA: JSR    LF948   
LF1CD: LDA    #$03    
LF1CF: LDX    INTIM   
       BNE    LF1CF   
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STX    AUDC0   
       STA    CTRLPF  
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$2C    
       STA    WSYNC   
       STX    VSYNC   
       STY    TIM64T  
       LDA    $F0     
       BEQ    LF1F2   
       JMP    LF7DA   
LF1F2: LDA    $C2     
       LDX    $EC     
       BNE    LF25F   
       AND    #$40    
       BNE    LF24A   
       LDA    $E6     
       BEQ    LF213   
       LDX    $EF     
       BEQ    LF210   
       DEC    $F1     
       LDX    $F1     
       STX    $EF     
       BEQ    LF20E   
       LDX    $C3     
LF20E: STX    AUDV1   
LF210: JMP    LF76A   
LF213: LDX    $B0     
       LDA    $F2     
       BEQ    LF238   
       DEC    $F2     
       BNE    LF210   
       CPX    #$10    
       BNE    LF23C   
       JSR    LF9EC   
       BEQ    LF28A   
       LDA    $AB     
       LDX    $E8     
       STA    $E8     
       STX    $AB     
       LDA    $80,X   
       STA    $A3     
       JSR    LFAE6   
       JMP    LF7DA   
LF238: CPX    #$10    
       BEQ    LF240   
LF23C: LDX    $BB     
       BMI    LF243   
LF240: JMP    LF5AB   
LF243: JSR    LF9EC   
       BEQ    LF28A   
       BNE    LF28D   
LF24A: STA    $EC     
       JSR    LFEE5   
       JSR    LFAF7   
       STY    $A4     
       JSR    LFAE6   
       STY    AUDV1   
       STY    $E7     
       STY    $A5     
       BEQ    LF263   
LF25F: AND    #$40    
       STA    $EC     
LF263: JSR    LFAFF   
       LDX    $AB     
       LDA    $80,X   
       BEQ    LF270   
       AND    #$80    
       STA    $BB     
LF270: LDX    #$00    
       STX    $E6     
       STX    $E5     
       LDX    $EC     
       BNE    LF240   
       JSR    LFAF7   
       LDX    $B0     
       CPX    #$10    
       BEQ    LF287   
       LDA    $BB     
       BMI    LF28A   
LF287: JSR    LF9EC   
LF28A: JMP    LF7DA   
LF28D: LDX    #$01    
       STX    $BC     
       STX    $DE     
       STX    $DF     
       DEX            
       STX    $A6     
       STX    VBLANK  
       STX    $C4     
       LDA    #$80    
       STA    $EB     
       STA    $EC     
       STA    $BF     
       LDA    $C2     
       ROR            
       BCS    LF2BC   
       LDA    $C3     
       AND    #$07    
       TAX            
       LDA    LFF6E,X 
       STA    $C5     
       AND    #$3F    
       STA    $AC     
       STA    $E8     
       JMP    LF55E   
LF2BC: LDA    SWCHB   
       ROR            
       BCS    LF2CD   
       ROL            
       JSR    LF591   
       LDA    #$1E    
       STA    $F0     
       JMP    LF1CA   
LF2CD: LDA    $A6     
       STA    $A8     
       LDA    $A5     
       STA    $A7     
       LDX    $C0     
LF2D7: LDA    $80,X   
       BEQ    LF2DF   
       EOR    $BB     
       BPL    LF2E2   
LF2DF: JMP    LF4E8   
LF2E2: STX    $AC     
       JSR    LFA26   
LF2E7: LDA    $80,X   
       STA    $A3     
       JSR    LFACD   
       BCS    LF330   
       TAX            
       LDA    $A5     
       BNE    LF328   
       LDA    $80,X   
       BNE    LF330   
       STX    $AD     
       STY    $BE     
       LDA    $A3     
       JSR    LFEC0   
       STA    $80,X   
       LDA    #$00    
       LDX    $AC     
       STA    $80,X   
       JSR    LFBD2   
       BCS    LF31B   
       LDA    $A3     
       AND    #$30    
       ORA    $BE     
       JSR    LFEB3   
       JMP    LF376   
LF31B: JSR    LFB18   
       JSR    LFB66   
       LDA    #$00    
       STA    $A5     
       JMP    LF44E   
LF328: LDA    $80,X   
       BEQ    LF330   
       EOR    $BB     
       BMI    LF333   
LF330: JMP    LF4D6   
LF333: STX    $BD     
       JSR    LFACD   
       BCS    LF330   
       TAX            
       LDA    $80,X   
       BNE    LF330   
       STX    $AD     
       STY    $BE     
       LDA    $A3     
       JSR    LFFDF   
       STA    $80,X   
       LDY    #$00    
       LDX    $AC     
       STY    $80,X   
       LDX    $BD     
       LDA    $80,X   
       ASL            
       ASL            
       ORA    $BD     
       STA    $BD     
       STY    $80,X   
       JSR    LFE55   
       LDA    $A5     
       BEQ    LF36A   
       LDX    $AD     
       JSR    LFA31   
       BCC    LF38C   
LF36A: LDA    #$00    
       STA    $A6     
       JSR    LFBD2   
       BCS    LF387   
       JSR    LFEA3   
LF376: LDA    $DC,X   
       STA    $DE,X   
       LDA    $E9,X   
       STA    $EB,X   
       LDA    #$00    
       STA    $BF     
       STA    $A6     
       JMP    LF2BC   
LF387: JSR    LFB18   
       BCS    LF39B   
LF38C: LDA    #$08    
       STA    $A6     
       JSR    LFB18   
       JSR    LFBE9   
       JSR    LFB18   
       BCC    LF3A8   
LF39B: LDA    $BD     
       AND    #$3F    
       TAX            
       LDA    $BD     
       JSR    LFB40   
       JMP    LF44E   
LF3A8: JSR    LFEA3   
       LDA    $BF     
       AND    #$80    
       STA    $BF     
       LDA    $DD,X   
       STA    $DE,X   
       LDA    $EA,X   
       STA    $EB,X   
       LDA    $DC,X   
       STA    $DD,X   
       LDA    $E9,X   
       STA    $EA,X   
       JMP    LF2BC   
LF3C4: DEC    $BC     
       LDX    $BC     
       LDA    $C7,X   
       AND    #$3F    
       STA    $AC     
       LDA    $D2,X   
       AND    #$08    
       STA    $A8     
       LDA    $D2,X   
       AND    #$04    
       STA    $A7     
       LDA    $D2,X   
       AND    #$03    
       STA    $BE     
       LDA    $A7     
       BNE    LF40D   
       JSR    LFB18   
       LDA    $A8     
       STA    $A6     
       LDA    $A7     
       STA    $A5     
       LDA    $D2,X   
       AND    #$30    
       ORA    $BB     
       STA    $A3     
       LDA    $C7,X   
       AND    #$C0    
       STA    $BF     
       LDA    $AC     
       LDY    $BE     
       CLC            
       ADC    LFF66,Y 
       STA    $AD     
       JSR    LFB66   
       JMP    LF419   
LF40D: LDY    $A6     
       BNE    LF421   
       JSR    LFB18   
       LDA    $C7,X   
       JSR    LFB1F   
LF419: ASL    $C4     
       CLC            
       ROR    $C4     
       JMP    LF44E   
LF421: LDA    $DE,X   
       STA    $DD,X   
       LDA    $EB,X   
       STA    $EA,X   
       LDA    $EC,X   
       STA    $EB,X   
       LDA    $DF,X   
       STA    $DE,X   
       LDA    $C4     
       BPL    LF43B   
       JSR    LFB23   
       JMP    LF50E   
LF43B: LDA    $C7,X   
       BIT    $BF     
       BPL    LF448   
       BVC    LF448   
       JSR    LFE6E   
       LDA    $BF     
LF448: JSR    LFB1F   
       JMP    LF4D4   
LF44E: LDX    $BC     
       BIT    $BF     
       BPL    LF45A   
       INC    $DF,X   
       BNE    LF45A   
       INC    $EC,X   
LF45A: LDA    $DE,X   
       CLC            
       ADC    $DF,X   
       STA    $B3     
       LDA    $EB,X   
       ADC    $EC,X   
       BVC    LF469   
       LDA    $EB,X   
LF469: BMI    LF49F   
       BVS    LF49C   
       BNE    LF49C   
       BIT    $BF     
       BPL    LF49C   
       LDA    $B3     
       BNE    LF49C   
       LDA    $C3     
       TAY            
       BNE    LF480   
       LDA    #$62    
       STA    $C3     
LF480: ROL            
       ROL    $C3     
       ROL            
       ROL            
       AND    #$01    
       EOR    $C3     
       STA    $C3     
       LDA    $C4     
       AND    #$7F    
       CMP    #$05    
       BCS    LF495   
       INC    $C4     
LF495: TAX            
       TYA            
       CMP    LFEEE,X 
       BCC    LF4BB   
LF49C: JMP    LF4D4   
LF49F: LDA    #$00    
       SEC            
       SBC    $DF,X   
       STA    $DE,X   
       LDA    #$00    
       SBC    $EC,X   
       STA    $EB,X   
       LDA    $DE,X   
       CLC            
       ADC    $DD,X   
       LDA    $EB,X   
       ADC    $EA,X   
       BVC    LF4B9   
       LDA    $EB,X   
LF4B9: BPL    LF50E   
LF4BB: LDA    $BF     
       ORA    #$40    
       STA    $BF     
       BPL    LF4D4   
       LDA    #$00    
       STA    $C4     
       LDA    #$FF    
       LDX    $A5     
       BEQ    LF4CF   
       LDA    $BC     
LF4CF: STA    $A4     
       JSR    LFE6E   
LF4D4: LDY    $BE     
LF4D6: LDX    $AC     
       DEY            
       BMI    LF4E8   
       CPY    #$01    
       BNE    LF4E5   
       LDA    $80,X   
       CMP    #$10    
       BEQ    LF4E8   
LF4E5: JMP    LF2E7   
LF4E8: DEC    $C1     
       BNE    LF504   
       LDA    SWCHB   
       AND    #$08    
       BNE    LF4FA   
       LDA    $BC     
       ASL            
       AND    #$06    
       BPL    LF502   
LF4FA: LDA    $BC     
       ROR            
       ROR            
       ROR            
       ROR            
       ORA    #$02    
LF502: STA    COLUBK  
LF504: LDA    $A6     
       BNE    LF519   
       DEX            
       BMI    LF519   
       JMP    LF2D7   
LF50E: ASL    $C4     
       SEC            
       ROR    $C4     
       LDA    $BF     
       AND    #$80    
       STA    $BF     
LF519: LDA    $BC     
       CMP    #$01    
       BEQ    LF522   
       JMP    LF3C4   
LF522: LDA    $C5     
       AND    #$3F    
       STA    $AC     
       STA    $E8     
       LDX    $A4     
       BMI    LF55E   
       DEC    $A4     
       STA    $B3     
       LDA    #$00    
       STA    $B4     
       ASL    $C5     
       ROL            
       ASL    $C5     
       ROL            
       TAY            
       JSR    LFB84   
       BCS    LF550   
       LDA    $C7     
       PHA            
       LDA    $C6     
       JSR    LFBB9   
       PLA            
       BCS    LF550   
       JSR    LFBB9   
LF550: LDX    $AC     
       LDA    $80,X   
       PHA            
       LDA    #$00    
       STA    $80,X   
       LDA    $B3     
       JMP    LF572   
LF55E: TAX            
       LDA    $80,X   
       PHA            
       LDA    #$00    
       STA    $80,X   
       ASL    $C5     
       ROL            
       ASL    $C5     
       ROL            
       TAY            
       TXA            
       CLC            
       ADC    LFF66,Y 
LF572: TAX            
       STA    $AD     
       STA    $E9     
       PLA            
       JSR    LFEC0   
       STA    $80,X   
       STA    $E4     
       JSR    LF58E   
       LDX    $AB     
       LDA    $80,X   
       STA    $A3     
       JSR    LF9EC   
       JMP    LF7DA   
LF58E: LDA    SWCHB   
LF591: STA    $C2     
       AND    #$40    
       STA    $EC     
       JSR    LFAF7   
       INY            
       STY    $A6     
       STY    $BB     
       STY    $E7     
       STY    $ED     
       STY    $E6     
       STY    $F2     
       INY            
       STY    $E5     
       RTS            

LF5AB: LDA    $EC     
       BEQ    LF600   
       LDA    INPT4   
       BPL    LF5B7   
       CLC            
       JMP    LF6DB   
LF5B7: LDA    $C3     
       AND    #$1F    
       BNE    LF614   
       LDA    $A3     
       LDX    #$04    
LF5C1: CMP    LFF4E,X 
       BEQ    LF5C9   
       DEX            
       BPL    LF5C1   
LF5C9: LDA    $A9     
       CLC            
       ADC    LFF3E,X 
       STA    $A9     
       LDA    $AA     
       CLC            
       ADC    LFF40,X 
       STA    $AA     
       LDA    $AE     
       CLC            
       ADC    LFF43,X 
       STA    $AE     
       LDA    $AF     
       CLC            
       ADC    LFF45,X 
       STA    $AF     
       DEX            
       BPL    LF5EE   
       LDX    #$04    
LF5EE: LDA    LFF4E,X 
       LDX    $AB     
       JSR    LFEC0   
       STA    $A3     
       STA    $80,X   
       JSR    LFAF7   
       JMP    LF6CE   
LF600: LDA    $BB     
       ASL            
       ROL            
       TAY            
       LDA.wy $003C,Y 
       TAY            
       EOR    $EA     
       BMI    LF628   
       TYA            
       BMI    LF617   
       LDA    $ED     
       BNE    LF66B   
LF614: JMP    LF76A   
LF617: LDA    $ED     
       BPL    LF621   
       LDA    $BB     
       ROL            
       JMP    LF6E1   
LF621: LDA    #$00    
       STA    $ED     
LF625: JMP    LF6D8   
LF628: STY    $EA     
       TYA            
       BMI    LF625   
       LDA    $E7     
       BNE    LF677   
       JSR    LFAE6   
       LDX    $AB     
       JSR    LFA31   
       BCC    LF641   
       BEQ    LF65C   
       LDA    $A5     
       BNE    LF65C   
LF641: INC    $E7     
       LDX    $AB     
       STX    $E9     
       LDA    $80,X   
       STA    $A3     
       STA    $E4     
       LDA    #$00    
       STA    $A6     
       JSR    LFAF7   
       LDA    #$30    
       JSR    LFFEB   
       JMP    LF7DA   
LF65C: LDA    #$01    
LF65E: STA    $ED     
       JSR    LFAF7   
       LDA    $A5     
       BEQ    LF66B   
       LDA    #$BB    
       STA    $AD     
LF66B: LDA    #$30    
       LDX    #$08    
       LDY    #$0F    
       JSR    LFFEF   
       JMP    LF76A   
LF677: LDX    $AB     
       LDA    #$00    
       STA    $80,X   
       CPX    $E9     
       BNE    LF68F   
       LDY    $A6     
       BNE    LF65C   
       JSR    LFEE2   
       LDA    $A3     
       STA    $80,X   
       JMP    LF6CE   
LF68F: LDY    $A5     
       BEQ    LF6BC   
       TXA            
       LDY    $BE     
       CLC            
       ADC    LFF66,Y 
       TAX            
       LDA    $80,X   
       LDY    #$00    
       STY    $80,X   
       ASL            
       ASL            
       JSR    LFE55   
       JSR    LFFD1   
       BCS    LF6BF   
       JSR    LFA31   
       BCS    LF6BF   
       STX    $AB     
       LDA    #$BB    
       STA    $AD     
       STA    $E7     
       STA    $A6     
       BNE    LF6D2   
LF6BC: JSR    LFFD1   
LF6BF: STX    $AB     
       JSR    LFAF7   
       INY            
       STY    $A5     
       JSR    LFB18   
       LDA    #$2D    
       STA    $F2     
LF6CE: LDA    #$00    
       STA    $E7     
LF6D2: JSR    LFFE9   
       JMP    LF7DA   
LF6D8: LDA    $BB     
       ROL            
LF6DB: LDA    $C3     
       AND    #$1F    
       BNE    LF708   
LF6E1: LDA    SWCHA   
       BCS    LF6EA   
       LSR            
       LSR            
       LSR            
       LSR            
LF6EA: AND    #$0F    
       CMP    #$0F    
       BEQ    LF708   
       JSR    LFAF7   
       LDX    $E9     
       LDY    $E7     
       BNE    LF6FE   
       JSR    LFEE2   
       LDX    $AB     
LF6FE: LDY    #$03    
LF700: CMP    LFF62,Y 
       BEQ    LF70B   
       DEY            
       BPL    LF700   
LF708: JMP    LF766   
LF70B: JSR    LFACD   
       BCC    LF715   
LF710: LDA    #$80    
       JMP    LF65E   
LF715: TAX            
       LDA    $E7     
       BNE    LF723   
       LDA    $80,X   
       STA    $A3     
       STX    $AB     
       JMP    LF75F   
LF723: LDA    $A5     
       BEQ    LF735   
       LDA    $80,X   
       BEQ    LF710   
       EOR    $BB     
       BPL    LF710   
       JSR    LFACD   
       BCS    LF710   
       TAX            
LF735: CPX    $AB     
       BEQ    LF755   
       LDA    $E9     
       CMP    $AB     
       BNE    LF710   
       LDA    $80,X   
       BNE    LF710   
       LDA    $A3     
       CMP    #$10    
       BNE    LF74D   
       CPY    #$02    
       BCC    LF710   
LF74D: CMP    #$90    
       BNE    LF755   
       CPY    #$02    
       BCS    LF710   
LF755: LDA    $80,X   
       STA    $E4     
       STX    $E9     
       STX    $AD     
       STY    $BE     
LF75F: LDA    #$30    
       LDY    #$0E    
       JSR    LFFED   
LF766: LDA    #$00    
       STA    $ED     
LF76A: LDA    $C3     
       AND    #$10    
       BNE    LF797   
       LDA    $E5     
       BEQ    LF7DA   
       SEC            
       JSR    LF9D2   
       LDX    $E8     
       LDA    #$B0    
       STA    $80,X   
       LDX    $E9     
       LDA    #$00    
       STA    $80,X   
       LDX    $AB     
       CPX    $E9     
       BNE    LF7DA   
       LDA    #$30    
       LDY    $BB     
       BPL    LF792   
       LDA    #$B0    
LF792: STA    $80,X   
       JMP    LF7DA   
LF797: LDA    $E6     
       BEQ    LF7A7   
       LDA    $E5     
       BEQ    LF7C1   
       LDX    $E8     
       LDA    #$B0    
       STA    $80,X   
       BNE    LF7C1   
LF7A7: LDX    $AB     
       LDA    #$00    
       LDY    $F2     
       BNE    LF7BF   
       LDA    $E5     
       BEQ    LF7B7   
       CPX    $E9     
       BEQ    LF7C1   
LF7B7: LDA    #$30    
       LDY    $BB     
       BPL    LF7BF   
       LDA    #$B0    
LF7BF: STA    $80,X   
LF7C1: LDA    $E7     
       BEQ    LF7DA   
       LDX    $E9     
       LDY    $A3     
       CPY    $E4     
       BNE    LF7D8   
       LDA    $C3     
       ROR            
       EOR    $C3     
       AND    #$04    
       BNE    LF7D8   
       LDY    #$00    
LF7D8: STY    $80,X   
LF7DA: LDY    #$01    
       LDX    $B0     
       STX    $F6     
       CPX    #$10    
       BNE    LF7E5   
       INY            
LF7E5: STY    $F7     
       LDA    $F2     
       BNE    LF7F8   
       LDX    $AB     
       LDA    $E5     
       BEQ    LF7F3   
       LDX    $AC     
LF7F3: JSR    LFA91   
       STA    $F4     
LF7F8: LDX    $AD     
       JSR    LFA91   
       STA    $F5     
       LDX    #$00    
       STX    $CF     
       LDA    #$FF    
       STA    $B4     
       STA    $B6     
       LDA    #$E4    
       LDX    #$03    
LF80D: SEC            
       SBC    #$05    
       STA    $CE     
       LDA    $F4,X   
       AND    #$0F    
       STA    $B5     
       ASL            
       ASL            
       ADC    $B5     
       ADC    #$8C    
       STA    $B3     
       LDA    $F4,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $B5     
       LSR            
       LSR            
       ADC    $B5     
       ADC    #$8C    
       STA    $B5     
       LDY    #$04    
LF832: LDA    ($B3),Y 
       EOR    ($B5),Y 
       AND    #$0F    
       EOR    ($B5),Y 
       STA    ($CE),Y 
       DEY            
       BPL    LF832   
       LDA    $CE     
       DEX            
       BPL    LF80D   
       LDX    #$05    
LF846: LDA    $DE,X   
       LDY    #$07    
LF84A: ROL            
       ROR    $DE,X   
       DEY            
       BPL    LF84A   
       DEX            
       BNE    LF846   
       LDA    #$15    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$F0    
       STA    HMP0    
       LDA    #$30    
       STA    HMP1    
       LDA    #$C0    
       STA    HMM0    
       STA    WSYNC   
       LDY    #$08    
LF869: DEY            
       BNE    LF869   
       STA    RESP0   
       NOP            
       STA    RESM0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$00    
       LDA    $C2     
       AND    #$08    
       BNE    LF8BD   
       LDA    #$0F    
       LDY    $EF     
       BNE    LF889   
       LDX    $EE     
       LDA    #$07    
LF889: STA    $B3     
       TXA            
       EOR    #$06    
       AND    $B3     
       STA    $F3     
       STA    COLUPF  
       STA    COLUBK  
       TXA            
       EOR    #$0A    
       AND    $B3     
       STA    $BA     
       TXA            
       EOR    #$0C    
       AND    $B3     
       STA    $CF     
       TXA            
       AND    $B3     
       STA    $CE     
       LDY    $B1     
       CPY    #$36    
       BEQ    LF8B6   
       LDY    $CF     
       STY    $CE     
       STA    $CF     
       TYA            
LF8B6: STA    COLUP0  
       STA    COLUP1  
       JMP    LF913   
LF8BD: LDA    #$FF    
       LDY    $EF     
       BNE    LF8CC   
       LDA    $EE     
       ROL            
       ROL            
       ROL            
       ROL            
       TAX            
       LDA    #$F7    
LF8CC: STA    $B3     
       TXA            
       EOR    #$92    
       LDY    $B1     
       CPY    #$36    
       BEQ    LF8DA   
       TXA            
       EOR    #$0C    
LF8DA: AND    $B3     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$00    
       LDA    $B0     
       AND    #$0F    
       CMP    #$05    
       BCC    LF8EC   
       LDY    #$03    
LF8EC: TXA            
       EOR    LFFCB,Y 
       AND    $B3     
       STA    $F3     
       STA    COLUPF  
       LDA    $EF     
       BNE    LF8FB   
       INY            
LF8FB: TXA            
       EOR    LFFCC,Y 
       AND    $B3     
       STA    COLUBK  
       STA    $BA     
       TXA            
       EOR    $B1     
       AND    $B3     
       STA    $CE     
       TXA            
       EOR    $B2     
       AND    $B3     
       STA    $CF     
LF913: LDA    $E6     
       BEQ    LF929   
       LDA    $C3     
       AND    #$10    
       BNE    LF929   
       LDA    $F3     
       LDX    $BB     
       BMI    LF927   
       STA    $CF     
       BPL    LF929   
LF927: STA    $CE     
LF929: LDY    $F0     
       BEQ    LF93C   
       LDY    #$02    
       DEC    $F0     
       BNE    LF93C   
       LDA    $B0     
       CMP    #$10    
       BEQ    LF93C   
       JSR    LFFE9   
LF93C: LDX    INTIM   
       BNE    LF93C   
       STA    WSYNC   
       STY    VBLANK  
       JMP    LF000   
LF948: LDA    $C2     
       ROR            
       ROR            
       BCS    LF971   
       DEC    $EB     
       BNE    LF970   
       LDA    #$2D    
       STA    $EB     
       SED            
       LDA    $B0     
       CLC            
       ADC    #$01    
       CMP    #$20    
       BNE    LF962   
       LDA    #$01    
LF962: STA    $B0     
       CLD            
       LDA    $E6     
       BNE    LF96C   
       JSR    LFAF7   
LF96C: LDY    #$00    
       STY    AUDV1   
LF970: RTS            

LF971: ASL            
       BCS    LF9CD   
       LDA    #$00    
       LDX    #$2F    
LF978: STA    $80,X   
       DEX            
       BPL    LF978   
       STA    AUDV1   
       LDX    #$03    
LF981: STA    $E4,X   
       DEX            
       BPL    LF981   
LF986: JSR    LFAF7   
       STY    $A4     
       JSR    LFEE5   
       LDA    $EC     
       BNE    LF9A9   
       LDA    #$10    
       LDY    #$90    
       LDX    #$0D    
LF998: STA    $7F,X   
       STY    $95,X   
       DEX            
       BNE    LF998   
       STX    $88     
       STX    $9A     
       LDA    #$18    
       STA    $AA     
       STA    $A9     
LF9A9: LDX    #$0B    
       LDY    #$17    
       LDA    $B0     
       CMP    #$10    
       BNE    LF9BB   
       LDA    $BB     
       BPL    LF9BB   
       LDX    #$17    
       LDY    #$0B    
LF9BB: STX    $AB     
       STY    $E8     
       LDA    $80,X   
       STA    $A3     
       LDA    #$80    
       STA    $EA     
       JSR    LFAFF   
       JSR    LFAE6   
LF9CD: LDX    #$01    
       STX    $EB     
       RTS            

LF9D2: LDY    $A4     
       BMI    LF9EB   
LF9D6: LDA    #$10    
       LDX    $C5,Y   
       BPL    LF9E2   
       TXA            
       AND    #$7F    
       TAX            
       LDA    #$20    
LF9E2: BCS    LF9E6   
       LDA    #$00    
LF9E6: STA    $80,X   
       DEY            
       BPL    LF9D6   
LF9EB: RTS            

LF9EC: LDA    #$80    
       STA    $EA     
       LDA    #$00    
       STA    $A6     
       JSR    LFA02   
       BNE    LFA01   
       INC    $E6     
       LDA    #$80    
       STA    $F1     
       LDA    #$00    
LFA01: RTS            

LFA02: LDA    #$1E    
       STA    $F0     
       LDA    #$02    
       STA    VBLANK  
LFA0A: LDA    #$00    
       STA    $B6     
       LDA    #$04    
       STA    $A5     
       LDX    #$22    
LFA14: JSR    LFA31   
       BEQ    LFA1D   
       INC    $B6     
       BCC    LFA23   
LFA1D: DEX            
       BPL    LFA14   
       INX            
       STX    $A5     
LFA23: LDY    $B6     
       RTS            

LFA26: LDY    #$03    
       LDA    $80,X   
       CMP    #$90    
       BNE    LFA30   
       LDY    #$01    
LFA30: RTS            

LFA31: LDY    #$00    
       STY    $B5     
       LDA    $80,X   
       BEQ    LFA7D   
       EOR    $BB     
       BMI    LFA7D   
       STX    $B4     
       JSR    LFA26   
LFA42: JSR    LFACD   
       BCS    LFA6E   
       TAX            
       LDA    $80,X   
       BNE    LFA59   
       TXA            
       LDA    $B6     
       BNE    LFA55   
       LDX    $B4     
       STX    $C0     
LFA55: INC    $B5     
       BNE    LFA6E   
LFA59: EOR    $BB     
       BPL    LFA6E   
       JSR    LFACD   
       BCS    LFA6E   
       TAX            
       LDA    $80,X   
       BNE    LFA6E   
       LDX    $B4     
       STX    $C0     
       LDY    #$01    
       RTS            

LFA6E: LDX    $B4     
       DEY            
       BMI    LFA7D   
       CPY    #$01    
       BNE    LFA42   
       LDA    $80,X   
       CMP    #$10    
       BNE    LFA42   
LFA7D: SEC            
       LDY    $B5     
       RTS            

LFA81: CPX    #$08    
       BCC    LFA90   
       DEX            
       CPX    #$10    
       BCC    LFA90   
       DEX            
       CPX    #$18    
       BCC    LFA90   
       DEX            
LFA90: RTS            

LFA91: TXA            
       BPL    LFA9E   
       LDA    $C3     
       AND    #$10    
       BEQ    LFA9C   
       LDX    #$AA    
LFA9C: TXA            
       RTS            

LFA9E: JSR    LFA81   
       LDA    $C2     
       LDY    $B1     
       CPY    #$36    
       BNE    LFAAF   
       AND    #$08    
       BEQ    LFAB3   
       BNE    LFABA   
LFAAF: AND    #$08    
       BEQ    LFABA   
LFAB3: TXA            
       SEC            
       SBC    #$20    
       EOR    #$FF    
       TAX            
LFABA: INX            
       TXA            
       LDY    #$00    
LFABE: CMP    #$0A    
       BCC    LFAC9   
       SBC    #$0A    
       INY            
       BNE    LFABE   
LFAC7: ADC    #$10    
LFAC9: DEY            
       BPL    LFAC7   
       RTS            

LFACD: TXA            
       CLC            
       ADC    LFF66,Y 
       CMP    #$23    
       BCS    LFAE4   
       CMP    #$1A    
       BEQ    LFAE4   
       CMP    #$11    
       BEQ    LFAE4   
       CMP    #$08    
       BEQ    LFAE4   
       CLC            
       RTS            

LFAE4: SEC            
       RTS            

LFAE6: LDY    $A5     
       BEQ    LFAEE   
       LDY    #$BB    
       BNE    LFAF0   
LFAEE: LDY    #$AA    
LFAF0: STY    $AD     
       LDY    #$00    
       STY    $E5     
       RTS            

LFAF7: LDY    #$00    
       STY    $EE     
       DEY            
       STY    $EF     
       RTS            

LFAFF: LDY    $C2     
       BPL    LFB0B   
       LDA    #$80    
       LDX    #$0C    
       LDY    #$36    
       BNE    LFB11   
LFB0B: LDA    #$00    
       LDX    #$36    
       LDY    #$0C    
LFB11: STA    $BB     
       STX    $B1     
       STY    $B2     
       RTS            

LFB18: LDA    $BB     
       EOR    #$80    
       STA    $BB     
       RTS            

LFB1F: AND    #$C0    
       STA    $BF     
LFB23: LDX    $BC     
       LDA    $D2,X   
       AND    #$30    
       ORA    $BB     
       STA    $A3     
       LDA    $D2,X   
       PHA            
       LDA    $AC     
       LDY    $BE     
       CLC            
       ADC    LFF66,Y 
       TAX            
       CLC            
       ADC    LFF66,Y 
       STA    $AD     
       PLA            
LFB40: LDY    #$02    
       ROL            
       LDA    #$90    
       BCC    LFB4A   
       INY            
       LDA    #$A0    
LFB4A: EOR    $BB     
       STA    $80,X   
       AND    #$80    
       ASL            
       ROL            
       TAX            
       TYA            
       ADC    $A9,X   
       STA    $A9,X   
       CPY    #$03    
       BNE    LFB5E   
       INC    $AE,X   
LFB5E: LDA    $A7     
       STA    $A5     
       LDA    $A8     
       STA    $A6     
LFB66: LDX    $AD     
       LDA    $80,X   
       CMP    $A3     
       BEQ    LFB77   
       LDA    $BB     
       ASL            
       ROL            
       TAX            
       DEC    $A9,X   
       DEC    $AE,X   
LFB77: LDX    $AD     
       LDA    #$00    
       STA    $80,X   
       LDX    $AC     
       LDA    $A3     
       STA    $80,X   
       RTS            

LFB84: LDA    $B3     
       CLC            
       ADC    LFF66,Y 
       PHA            
       TAX            
       LDA    $80,X   
       DEC    $A9     
       DEC    $A9     
       CMP    #$20    
       BNE    LFB9A   
       DEC    $A9     
       DEC    $AE     
LFB9A: PHA            
       LDA    #$00    
       STA    $80,X   
       PLA            
       TAX            
       PLA            
       PHA            
       CPX    #$20    
       BNE    LFBA9   
       ORA    #$80    
LFBA9: LDX    $B4     
       STA    $C5,X   
       INC    $B4     
       PLA            
       CLC            
       ADC    LFF66,Y 
       STA    $B3     
       CPX    $A4     
       RTS            

LFBB9: STA    $B6     
       LDA    #$03    
       STA    $B5     
LFBBF: LDA    #$00    
       ASL    $B6     
       ROL            
       ASL    $B6     
       ROL            
       TAY            
       JSR    LFB84   
       BCS    LFBD1   
       DEC    $B5     
       BPL    LFBBF   
LFBD1: RTS            

LFBD2: JSR    LFB18   
       JSR    LFA0A   
       BNE    LFBE9   
       LDX    $BC     
       TXA            
       CLC            
       ADC    #$02    
       STA    $DF,X   
       LDA    #$80    
       STA    $EC,X   
       JMP    LFE3E   
LFBE9: LDA    $BC     
       CMP    #$0B    
       BCC    LFC11   
       JSR    LFC21   
       LDA    $A5     
       BEQ    LFC0F   
       LDY    #$00    
       LDX    $BC     
       LDA    $EC,X   
       BPL    LFC00   
       LDY    #$02    
LFC00: LDA    LFFC8,Y 
       CLC            
       ADC    $DF,X   
       STA    $DF,X   
       LDA    LFFC9,Y 
       ADC    $EC,X   
       STA    $EC,X   
LFC0F: SEC            
       RTS            

LFC11: LDX    $A5     
       BEQ    LFC17   
LFC15: CLC            
       RTS            

LFC17: LDA    $B0     
       AND    #$0F    
       CMP    $BC     
       BEQ    LFC21   
       BCS    LFC15   
LFC21: LDX    $A9     
       LDY    $AA     
       STX    $B8     
       STY    $B6     
       LDA    #$00    
       STA    $B5     
       LDX    #$11    
       CLC            
LFC30: ROL    $B5     
       ROL    $B6     
       DEX            
       BEQ    LFC40   
       ROL            
       CMP    $B8     
       BCC    LFC30   
       SBC    $B8     
       BCS    LFC30   
LFC40: LDA    #$00    
       STA    $B4     
       ASL    $B5     
       ROL    $B6     
       ASL    $B5     
       ROL    $B6     
       ASL    $B5     
       ROL    $B6     
       ASL    $B5     
       ROL    $B6     
       BCS    LFC58   
       BPL    LFC63   
LFC58: LDA    #$F2    
       STA    $B5     
       LDA    #$7F    
       STA    $B6     
       JMP    LFE1E   
LFC63: LDA    #$FF    
       STA    $B9     
       LDA    $A9     
       SEC            
       SBC    $AE     
       CMP    #$08    
       BCC    LFC73   
LFC70: JMP    LFD14   
LFC73: ADC    $AF     
       SEC            
       SBC    $AA     
       BCS    LFC70   
       LDX    #$22    
LFC7C: STX    $B9     
       LDA    $80,X   
       BEQ    LFCE6   
       AND    #$20    
       BNE    LFC93   
       JSR    LFA81   
       TXA            
       LSR            
       LSR            
       CLC            
       ADC    $B4     
       STA    $B4     
       LDX    $B9     
LFC93: LDA    $80,X   
       BMI    LFCE6   
       JSR    LFA81   
       TXA            
       LSR            
       LSR            
       STA    $B7     
       EOR    #$01    
       ROR            
       TXA            
       ROL            
       AND    #$07    
       STA    $B8     
       LDX    #$22    
LFCAA: LDA    $80,X   
       BPL    LFCE3   
       TXA            
       PHA            
       JSR    LFA81   
       TXA            
       LSR            
       LSR            
       SEC            
       SBC    $B7     
       BPL    LFCC0   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LFCC0: STA    $B3     
       TXA            
       LSR            
       LSR            
       EOR    #$01    
       ROR            
       TXA            
       ROL            
       AND    #$07    
       SEC            
       SBC    $B8     
       BPL    LFCD6   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LFCD6: CMP    $B3     
       BCS    LFCDC   
       LDA    $B3     
LFCDC: CLC            
       ADC    $B4     
       STA    $B4     
       PLA            
       TAX            
LFCE3: DEX            
       BPL    LFCAA   
LFCE6: LDX    $B9     
       DEX            
       BPL    LFC7C   
       LDA    $B5     
       SEC            
       SBC    $B4     
       STA    $B5     
       BCS    LFCF6   
       DEC    $B6     
LFCF6: LDA    #$00    
       STA    $B4     
       LDY    #$0D    
LFCFC: LDX    LFF7E,Y 
       LDA    $80,X   
       BEQ    LFD11   
       ROL            
       AND    #$40    
       BEQ    LFD11   
       BCC    LFD0F   
       INC    $B4     
       JMP    LFD11   
LFD0F: DEC    $B4     
LFD11: DEY            
       BPL    LFCFC   
LFD14: LDA    $B0     
       AND    #$0E    
       BNE    LFD1D   
LFD1A: JMP    LFE1E   
LFD1D: LDA    $AE     
       ASL            
       ADC    $AE     
       CMP    $A9     
       BEQ    LFD49   
       LDA    #$00    
       LDY    $9F     
       BPL    LFD2E   
       ORA    #$08    
LFD2E: LDY    $A0     
       BPL    LFD34   
       ORA    #$04    
LFD34: LDY    $A1     
       BPL    LFD3A   
       ORA    #$02    
LFD3A: LDY    $A2     
       BPL    LFD40   
       ORA    #$01    
LFD40: TAX            
       LDA    LFF52,X 
       CLC            
       ADC    $B4     
       STA    $B4     
LFD49: LDA    $AF     
       ASL            
       ADC    $AF     
       CMP    $AA     
       BEQ    LFD7D   
       LDA    #$00    
       LDY    $83     
       BEQ    LFD5C   
       BMI    LFD5C   
       ORA    #$08    
LFD5C: LDY    $82     
       BEQ    LFD64   
       BMI    LFD64   
       ORA    #$04    
LFD64: LDY    $81     
       BEQ    LFD6C   
       BMI    LFD6C   
       ORA    #$02    
LFD6C: LDY    $80     
       BEQ    LFD74   
       BMI    LFD74   
       ORA    #$01    
LFD74: TAX            
       LDA    $B4     
       SEC            
       SBC    LFF52,X 
       STA    $B4     
LFD7D: LDA    $B0     
       AND    #$0F    
       CMP    #$03    
       BCC    LFD1A   
       LDA    #$20    
       LDX    #$FC    
       LDY    $A9     
       CPY    $AA     
       BEQ    LFD95   
       BCC    LFD95   
       LDA    #$A0    
       LDX    #$04    
LFD95: STA    $B8     
       STX    $B3     
       LDY    #$00    
       LDA    $80     
       BEQ    LFDA4   
       EOR    $B8     
       BNE    LFDB8   
       INY            
LFDA4: LDA    $84     
       BEQ    LFDAD   
       EOR    $B8     
       BNE    LFDB8   
       INY            
LFDAD: CPY    #$01    
       BNE    LFDB8   
       LDA    $B4     
       CLC            
       ADC    $B3     
       STA    $B4     
LFDB8: LDY    #$00    
       LDA    $9E     
       BEQ    LFDC3   
       EOR    $B8     
       BNE    LFDD7   
       INY            
LFDC3: LDA    $A2     
       BEQ    LFDCC   
       EOR    $B8     
       BNE    LFDD7   
       INY            
LFDCC: CPY    #$01    
       BNE    LFDD7   
       LDA    $B4     
       CLC            
       ADC    $B3     
       STA    $B4     
LFDD7: LDA    $B9     
       BEQ    LFDE7   
       LDA    $93     
       BPL    LFDE1   
       INC    $B4     
LFDE1: LDA    $94     
       BPL    LFDE7   
       INC    $B4     
LFDE7: LDA    $B0     
       AND    #$0C    
       BEQ    LFE1E   
       LDA    $A9     
       CLC            
       ADC    $AA     
       CMP    #$19    
       BCS    LFE1E   
       LDA    $A9     
       SEC            
       SBC    $AE     
       SEC            
       SBC    $AA     
       CLC            
       ADC    $AF     
       BNE    LFE1E   
       LDY    #$0F    
       LDA    #$00    
       STA    $B3     
LFE09: LDX    LFF75,Y 
       LDA    $80,X   
       BEQ    LFE12   
       INC    $B3     
LFE12: DEY            
       BPL    LFE09   
       ROR    $B3     
       ROR            
       EOR    $BB     
       BMI    LFE1E   
       INC    $B4     
LFE1E: LDX    $BC     
       LDA    $B4     
       CLC            
       ADC    $B5     
       STA    $DF,X   
       LDA    #$00    
       LDY    $B4     
       BPL    LFE2F   
       LDA    #$FF    
LFE2F: ADC    $B6     
       STA    $EC,X   
       LDA    $BB     
       BMI    LFE3E   
       LDA    $B0     
       CMP    #$10    
       BCC    LFE46   
       RTS            

LFE3E: LDX    $BC     
       LDA    $B0     
       CMP    #$10    
       BCC    LFE53   
LFE46: SEC            
       LDA    #$00    
       SBC    $DF,X   
       STA    $DF,X   
       LDA    #$00    
       SBC    $EC,X   
       STA    $EC,X   
LFE53: SEC            
       RTS            

LFE55: LDY    #$FE    
       TAX            
       BPL    LFE5B   
       DEY            
LFE5B: LDA    $BB     
       EOR    #$80    
       ASL            
       ROL            
       TAX            
       TYA            
       ADC    $A9,X   
       STA    $A9,X   
       CPY    #$FD    
       BNE    LFE6D   
       DEC    $AE,X   
LFE6D: RTS            

LFE6E: LDY    #$00    
       LDX    $BC     
       DEX            
       BNE    LFE7F   
       LDA    $BE     
       LSR            
       ROR            
       ROR            
       ORA    $AC     
       STA    $C5     
       RTS            

LFE7F: DEX            
       TXA            
       PHA            
       LSR            
       LSR            
       TAX            
       INX            
       PLA            
       AND    #$03    
       TAY            
       LDA    $BE     
       STY    $B3     
LFE8E: CPY    #$03    
       BCS    LFE97   
       ASL            
       ASL            
       INY            
       BCC    LFE8E   
LFE97: LDY    $B3     
       EOR    $C5,X   
       AND    LFF4A,Y 
       EOR    $C5,X   
       STA    $C5,X   
       RTS            

LFEA3: LDA    $BD     
       AND    #$C0    
       ORA    $A7     
       ORA    $A8     
       ORA    $BE     
       EOR    $A3     
       AND    #$CF    
       EOR    $A3     
LFEB3: INC    $BC     
       LDX    $BC     
       STA    $D1,X   
       LDA    $AC     
       ORA    $BF     
       STA    $C6,X   
       RTS            

LFEC0: CMP    #$90    
       BNE    LFECE   
       CPX    #$04    
       BCS    LFEE0   
       INC    $AA     
       INC    $AF     
       BCC    LFEDA   
LFECE: CMP    #$10    
       BNE    LFEE0   
       CPX    #$1F    
       BCC    LFEE0   
       INC    $A9     
       INC    $AE     
LFEDA: AND    #$80    
       ORA    #$20    
       SEC            
       RTS            

LFEE0: CLC            
       RTS            

LFEE2: JSR    LFAE6   
LFEE5: LDY    #$08    
       STY    $E9     
       LDY    #$00    
       STY    $E4     
       RTS            

LFEEE: .byte $80,$55,$40,$33,$2B,$25,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3C,$3C,$7E,$7E,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$7E
       .byte $3C,$3C,$3C,$3C,$7E,$7E,$C3,$C3,$C3,$C3,$A5,$A5,$A5,$E7,$7E,$7E
       .byte $3C,$3C,$00,$00,$00,$C6,$C6,$6C,$6C,$38,$38,$6C,$6C,$C6,$C6,$00
LFF3E: .byte $00,$00
LFF40: .byte $FD,$01,$02
LFF43: .byte $00,$00
LFF45: .byte $FF,$01,$00,$00,$00
LFF4A: .byte $C0,$30,$0C,$03
LFF4E: .byte $A0,$90,$20,$10
LFF52: .byte $00,$02,$02,$06,$02,$0C,$04,$0C,$02,$06,$08,$0A,$02,$0C,$08,$0C
LFF62: .byte $05,$09,$06,$0A
LFF66: .byte $FB,$FC,$04,$05,$F6,$F8,$08,$0A
LFF6E: .byte $59,$19,$58,$18,$57,$56,$57
LFF75: .byte $17,$06,$07,$0D,$10,$16,$1F,$20,$21
LFF7E: .byte $04,$05,$0E,$0F,$18,$19,$22,$00,$09,$0A,$13,$14,$1D,$1E,$0E,$0A
       .byte $0A,$0A,$0E,$EE,$44,$44,$CC,$44,$EE,$88,$EE,$22,$EE,$EE,$22,$66
       .byte $22,$EE,$22,$22,$EE,$AA,$AA,$EE,$22,$EE,$88,$EE,$EE,$AA,$EE,$88
       .byte $EE,$22,$22,$22,$22,$EE,$EE,$AA,$EE,$AA,$EE,$EE,$22,$EE,$AA,$EE
       .byte $00,$00,$00,$00,$00,$E4,$A4,$27,$25,$27
LFFC8: .byte $E0
LFFC9: .byte $FF,$20
LFFCB: .byte $00
LFFCC: .byte $34,$36,$B0,$26,$26
LFFD1: LDX    $E9     
       LDA    $A3     
       JSR    LFFDF   
       STA    $A3     
       STA    $80,X   
       STA    $E4     
       RTS            

LFFDF: JSR    LFEC0   
       BCC    LFFE8   
       LDY    #$00    
       STY    $A5     
LFFE8: RTS            

LFFE9: LDA    #$36    
LFFEB: LDY    #$04    
LFFED: LDX    #$0F    
LFFEF: STA    AUDF0   
       STX    AUDV0   
       STY    AUDC0   
       RTS            

LFFF6: .byte $00,$00,$00,$00,$00,$00,$00,$F1,$00,$00
