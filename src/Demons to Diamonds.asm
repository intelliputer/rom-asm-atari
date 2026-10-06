; Disassembly of roms/Demons to Diamonds.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Demons to Diamonds.bin
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
PF0     =  $0D
PF1     =  $0E
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT0   =  $38
INPT1   =  $39
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
       STA    SWACNT  
LF008: STA    VSYNC,X 
       INX            
       BNE    LF008   
       DEX            
       STX    $DB     
       TXS            
       JSR    LFB52   
       JMP    LF369   
LF017: STA    WSYNC   
       LDA    #$82    
       EOR    $EC     
       AND    #$F7    
       STA    COLUBK  
       LDX    #$05    
LF023: DEX            
       BPL    LF023   
       STA    RESP0   
       STA    RESP1   
       LDA    #$70    
       STA    HMP0    
       LDA    #$00    
       STA    HMP1    
       LDA    $C4     
       EOR    $EC     
       AND    $ED     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
LF042: LDA    ($F0),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    ($F2),Y 
       STA    GRP0    
       LDA    ($F4),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    ($F6),Y 
       STA    GRP1    
       LDA    $D2     
       STA    PF1     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA    PF1     
       STA    WSYNC   
       DEY            
       BPL    LF042   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       INC    $CC     
       LDA    $DB     
       AND    #$20    
       BEQ    LF0AD   
       LDX    #$01    
LF07B: STA    WSYNC   
       INC    $CC     
       DEX            
       BPL    LF07B   
       STA    WSYNC   
       STA    $EE     
       LDA    #$04    
       EOR    $EC     
       AND    #$F7    
       STA    COLUBK  
       LDA    #$70    
       STA    PF0     
       LDX    #$03    
LF094: INC    $CC     
       STA    WSYNC   
       DEX            
       BPL    LF094   
       LDA    $EC     
       AND    #$F7    
       STA    COLUBK  
       LDX    #$06    
LF0A3: INC    $CC     
       STA    WSYNC   
       DEX            
       BPL    LF0A3   
       JMP    LF132   
LF0AD: LDX    $C6     
       LDA    LFF58,X 
       STA    WSYNC   
       STA    $EE     
       AND    #$0F    
       TAY            
       LDA    $EE     
       INC    $CC     
LF0BD: DEY            
       BPL    LF0BD   
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       LDA    $EE     
       AND    #$0F    
       TAY            
       LDA    $EE     
       INC    $CC     
LF0CF: DEY            
       BPL    LF0CF   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$04    
       EOR    $EC     
       AND    #$F7    
       STA    COLUBK  
       LDA    #$70    
       STA    PF0     
       LDX    #$04    
       LDY    #$09    
       LDA    $C0     
       EOR    $EC     
       AND    $ED     
       STA    COLUP0  
       LDA    $C1     
       EOR    $EC     
       AND    $ED     
       STA    COLUP1  
LF0FA: DEY            
       INC    $CC     
       LDA    LFC5B,Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    LFC64,Y 
       STA    GRP1    
       DEX            
       BNE    LF0FA   
       LDA    $EC     
       AND    #$F7    
       STA    COLUBK  
       LDX    #$05    
LF114: DEY            
       INC    $CC     
       LDA    LFC5B,Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    LFC64,Y 
       STA    GRP1    
       DEX            
       BNE    LF114   
       INC    $CC     
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       INC    $CC     
       STA    WSYNC   
LF132: LDX    #$07    
       LDA    LFCDB   
       EOR    $EC     
       AND    #$F7    
       STA    COLUBK  
LF13D: LDA    INPT0   
       BMI    LF145   
       LDA    $CC     
       STA    $CD     
LF145: LDA    INPT1   
       BMI    LF14D   
       LDA    $CC     
       STA    $CE     
LF14D: INC    $CC     
       LDY    $88,X   
       LDA    LFF58,Y 
       STA    $EE     
       LDY    $80,X   
       LDA    LFF58,Y 
       STA    WSYNC   
       STA    $EF     
       AND    #$0F    
       TAY            
       LDA    $EF     
       INC    $CC     
LF166: DEY            
       BPL    LF166   
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       LDA    $EE     
       AND    #$0F    
       TAY            
       LDA    $EE     
       INC    $CC     
LF178: DEY            
       BPL    LF178   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B0,X   
       EOR    $EC     
       AND    $ED     
       STA    COLUP0  
       LDA    $B8,X   
       EOR    $EC     
       AND    $ED     
       STA    COLUP1  
       LDY    #$0D    
       LDA    $90,X   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C8     
       LDA    $98,X   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $CA     
       INC    $CC     
LF1A7: STA    WSYNC   
       LDA    ($C8),Y 
       STA    GRP0    
       LDA    ($CA),Y 
       STA    GRP1    
       LDA    INPT0   
       BMI    LF1B9   
       LDA    $CC     
       STA    $CD     
LF1B9: LDA    INPT1   
       BMI    LF1C1   
       LDA    $CC     
       STA    $CE     
LF1C1: LDA    $CC     
       CMP    $D8     
       BCC    LF1D5   
       CMP    $D9     
       BCS    LF1D1   
       LDA    $CF     
       STA    ENABL   
       BPL    LF1D5   
LF1D1: LDA    #$00    
       STA    ENABL   
LF1D5: INC    $CC     
       DEY            
       BPL    LF1A7   
       LDA    LFCD3,X 
       STA    WSYNC   
       EOR    $EC     
       AND    #$F7    
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       DEX            
       BMI    LF1F1   
       JMP    LF13D   
LF1F1: LDA    INPT0   
       BMI    LF1F9   
       LDA    $CC     
       STA    $CD     
LF1F9: LDA    INPT1   
       BMI    LF201   
       LDA    $CC     
       STA    $CE     
LF201: INC    $CC     
       LDX    $C7     
       LDA    LFF58,X 
       STA    WSYNC   
       STA    $EE     
       AND    #$0F    
       TAY            
       LDA    $EE     
       INC    $CC     
LF213: DEY            
       BPL    LF213   
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       LDA    $EE     
       AND    #$0F    
       TAY            
       LDA    $EE     
       INC    $CC     
LF225: DEY            
       BPL    LF225   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$07    
       LDY    #$09    
       LDA    $C2     
       EOR    $EC     
       AND    $ED     
       STA    COLUP0  
       LDA    $C3     
       EOR    $EC     
       AND    $ED     
       STA    COLUP1  
       LDA    #$00    
       STA    ENABL   
LF248: DEY            
       LDA    INPT0   
       BMI    LF251   
       LDA    $CC     
       STA    $CD     
LF251: LDA    INPT1   
       BMI    LF259   
       LDA    $CC     
       STA    $CE     
LF259: INC    $CC     
       LDA    LFC6D,Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    LFC76,Y 
       STA    GRP1    
       DEX            
       BNE    LF248   
       LDA    #$04    
       EOR    $EC     
       AND    #$F7    
       STA    COLUBK  
       LDX    #$02    
LF274: DEY            
       LDA    INPT0   
       BMI    LF27D   
       LDA    $CC     
       STA    $CD     
LF27D: LDA    INPT1   
       BMI    LF285   
       LDA    $CC     
       STA    $CE     
LF285: INC    $CC     
       LDA    LFC6D,Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    LFC76,Y 
       STA    GRP1    
       DEX            
       BNE    LF274   
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       LDA    $DB     
       AND    #$10    
       BEQ    LF30B   
       STA    WSYNC   
       STX    PF0     
       LDA    #$82    
       EOR    $EC     
       AND    $ED     
       STA    COLUBK  
       LDA    $C5     
       EOR    $EC     
       AND    $ED     
       STA    COLUP0  
       STA    COLUP1  
       NOP            
       LDA    #$F0    
       STA    HMP0    
       LDX    #$00    
       STX    HMP1    
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$CB    
       STA    NUSIZ0  
       LDX    #$01    
       STX    NUSIZ1  
       LDX    #$07    
LF2D3: STX    $EF     
       STA    WSYNC   
       LDY    #$02    
LF2D9: DEY            
       BNE    LF2D9   
       STA    $EE     
       LDA    LFD9D,X 
       STA    GRP0    
       LDA    LFDA4,X 
       STA    GRP1    
       LDY    LFDAB,X 
       LDA    LFDB2,X 
       STA    $EE     
       LDA    LFDB9,X 
       LDX    $EE     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       LDX    $EF     
       DEX            
       BNE    LF2D3   
       STX    GRP0    
       STX    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       JMP    LF369   
LF30B: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDA    #$82    
       EOR    $EC     
       AND    #$F7    
       STA    COLUBK  
       LDX    #$04    
LF31B: DEX            
       BPL    LF31B   
       STA    RESP0   
       STA    RESP1   
       LDA    #$70    
       STA    HMP0    
       LDA    #$00    
       STA    HMP1    
       LDA    $C5     
       EOR    $EC     
       AND    $ED     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
LF33A: LDA    ($F8),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    ($FA),Y 
       STA    GRP0    
       LDA    ($FC),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    ($FE),Y 
       STA    GRP1    
       LDA    $D3     
       STA    PF1     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA    PF1     
       STA    WSYNC   
       DEY            
       BPL    LF33A   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
LF369: LDX    #$00    
       STX    COLUBK  
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$25    
       STA    TIM64T  
       LDA    #$82    
       STA    VBLANK  
       STX    AUDV0   
       INC    $EA     
       BNE    LF390   
       INC    $EB     
       LDA    #$30    
       CMP    $EB     
       BNE    LF390   
       LDA    $DB     
       ORA    #$08    
       STA    $DB     
LF390: JSR    LFB3F   
       BCS    LF398   
       JMP    LF777   
LF398: LDA    $EA     
       LSR            
       BCS    LF3DA   
       LSR            
       BCS    LF3B8   
       LDA    $D0     
       BMI    LF3AA   
       LDA    $D1     
       BMI    LF3C2   
       BPL    LF3DA   
LF3AA: LDA    $C6     
       STA    $DA     
       LDA    #$08    
       STA    $D8     
       LDA    $D4     
       STA    $D9     
       BNE    LF3CE   
LF3B8: LDA    $D1     
       BMI    LF3C2   
       LDA    $D0     
       BMI    LF3AA   
       BPL    LF3DA   
LF3C2: LDA    $C7     
       STA    $DA     
       LDA    #$B0    
       STA    $D9     
       LDA    $D5     
       STA    $D8     
LF3CE: LDA    #$02    
       STA    $CF     
       BNE    LF3F1   
LF3D4: LDA    #$00    
       STA    $CF     
       BEQ    LF3F1   
LF3DA: LDA    $DE     
       BPL    LF3D4   
       LDA    $DE     
       AND    #$0F    
       TAX            
       LDA    $80,X   
       STA    $DA     
       LDA    $D6     
       STA    $D8     
       LDA    $D7     
       STA    $D9     
       BNE    LF3CE   
LF3F1: LDA    $EA     
       LSR            
       BCC    LF3F9   
       JMP    LF442   
LF3F9: LDA    $D0     
       BPL    LF43F   
       LDA    $C6     
       CLC            
       ADC    #$09    
       STA    $EE     
       LDX    #$07    
LF406: LDA    $EE     
       SEC            
       SBC    $80,X   
       CMP    #$12    
       BCS    LF41F   
       LDA    $D4     
       CMP    LFCDC,X 
       BCC    LF41F   
       LDA    $90,X   
       AND    #$40    
       BNE    LF41F   
       JMP    LF490   
LF41F: DEX            
       BPL    LF406   
       LDX    #$0F    
LF424: LDA    $EE     
       SEC            
       SBC    $80,X   
       CMP    #$12    
       BCS    LF43A   
       LDA    $D4     
       CMP    LFCD4,X 
       BCC    LF43A   
       LDA    $90,X   
       AND    #$40    
       BEQ    LF490   
LF43A: DEX            
       CPX    #$07    
       BNE    LF424   
LF43F: JMP    LF583   
LF442: LDA    $D1     
       BPL    LF48A   
       LDA    $C7     
       CLC            
       ADC    #$09    
       STA    $EE     
       LDX    #$00    
LF44F: LDA    $EE     
       SEC            
       SBC    $80,X   
       CMP    #$12    
       BCS    LF468   
       LDA    LFCE4,X 
       CMP    $D5     
       BCC    LF468   
       LDA    $90,X   
       AND    #$40    
       BNE    LF468   
       JMP    LF510   
LF468: INX            
       CPX    #$08    
       BNE    LF44F   
       LDX    #$08    
LF46F: LDA    $EE     
       SEC            
       SBC    $80,X   
       CMP    #$12    
       BCS    LF485   
       LDA    LFCDC,X 
       CMP    $D5     
       BCC    LF485   
       LDA    $90,X   
       AND    #$40    
       BEQ    LF48D   
LF485: INX            
       CPX    #$10    
       BNE    LF46F   
LF48A: JMP    LF583   
LF48D: JMP    LF510   
LF490: LDA    $D0     
       BMI    LF497   
       JMP    LF583   
LF497: LDA    $90,X   
       AND    #$68    
       BNE    LF4E5   
       LDA    $B0,X   
       CMP    #$7C    
       BNE    LF4CB   
       LDA    #$0F    
       STA    $B0,X   
       LDA    $EA     
       LSR            
       LSR            
       AND    #$01    
       TAY            
       LDA    LFD32,Y 
       STA    $80,X   
       LDA    LFD34,Y 
       STA    $90,X   
       LDA    #$00    
       STA    $A0,X   
       STX    $EE     
       SEC            
       LDA    #$0F    
       SBC    $EE     
       AND    #$07    
       TAY            
       LDA    LFD96,Y 
       BNE    LF501   
LF4CB: LDA    $EA     
       ASL            
       AND    #$80    
       ORA    #$0A    
       STA    $90,X   
       LDA    #$08    
       STA    $B0,X   
       LDY    $DC     
       INY            
       LDA    LFCF1,Y 
       LSR            
       AND    $EA     
       STA    $A0,X   
       BEQ    LF508   
LF4E5: LDA    $90,X   
       AND    #$6E    
       CMP    #$08    
       BNE    LF508   
       LDA    #$6B    
       STA    $90,X   
       STX    $EE     
       LDA    #$0F    
       SBC    $EE     
       AND    #$07    
       TAY            
       LDA    LFD96,Y 
       ASL            
       ASL            
       ASL            
       ASL            
LF501: LDY    #$00    
       LDX    #$00    
       JSR    LFC29   
LF508: LDA    $D0     
       ORA    #$20    
       STA    $D0     
       BNE    LF583   
LF510: LDA    $D1     
       BMI    LF517   
       JMP    LF583   
LF517: LDA    $90,X   
       AND    #$68    
       BNE    LF55F   
       LDA    $B0,X   
       CMP    #$40    
       BNE    LF545   
       LDA    #$0F    
       STA    $B0,X   
       LDA    $EA     
       LSR            
       LSR            
       AND    #$01    
       TAY            
       LDA    LFD32,Y 
       STA    $80,X   
       LDA    LFD34,Y 
       STA    $90,X   
       LDA    #$00    
       STA    $A0,X   
       TXA            
       AND    #$07    
       TAY            
       LDA    LFD96,Y 
       BNE    LF576   
LF545: LDA    $EA     
       ASL            
       AND    #$80    
       ORA    #$0A    
       STA    $90,X   
       LDA    #$08    
       STA    $B0,X   
       LDY    $DC     
       INY            
       LDA    LFCF1,Y 
       LSR            
       AND    $EA     
       STA    $A0,X   
       BEQ    LF57D   
LF55F: LDA    $90,X   
       AND    #$6E    
       CMP    #$08    
       BNE    LF57D   
       LDA    #$6B    
       STA    $90,X   
       TXA            
       AND    #$07    
       TAY            
       LDA    LFD96,Y 
       ASL            
       ASL            
       ASL            
       ASL            
LF576: LDY    #$02    
       LDX    #$00    
       JSR    LFC29   
LF57D: LDA    $D1     
       ORA    #$20    
       STA    $D1     
LF583: LDA    $DE     
       BPL    LF5CA   
       LDA    $DE     
       AND    #$0F    
       TAX            
       LDA    $D6     
       CMP    #$09    
       BCS    LF5AD   
       LDA    #$00    
       STA    $DE     
       LDA    $DB     
       AND    #$20    
       BNE    LF5CA   
       LDA    $80,X   
       CLC            
       ADC    #$08    
       SEC            
       SBC    $C6     
       BMI    LF5CA   
       AND    #$F0    
       BNE    LF5CA   
       TAX            
       BEQ    LF5C7   
LF5AD: LDA    $D7     
       CMP    #$B0    
       BCC    LF5CA   
       LDA    #$00    
       STA    $DE     
       LDA    $80,X   
       CLC            
       ADC    #$08    
       SEC            
       SBC    $C7     
       BMI    LF5CA   
       AND    #$F0    
       BNE    LF5CA   
       LDX    #$01    
LF5C7: JSR    LFC3A   
LF5CA: LDA    $E5     
       ORA    $E6     
       BNE    LF5D4   
       LDA    $DB     
       BMI    LF5E3   
LF5D4: LDA    $D0     
       AND    #$1F    
       STA    $D0     
       LDA    $D1     
       AND    #$1F    
       STA    $D1     
       JMP    LF704   
LF5E3: LDA    SWCHA   
       BMI    LF634   
       LDA    $DB     
       AND    #$20    
       BNE    LF634   
       LDA    #$00    
       STA    $EB     
       LDA    $DB     
       AND    #$F7    
       STA    $DB     
       LDA    $D0     
       AND    #$20    
       BNE    LF634   
       LDA    $D0     
       BMI    LF60C   
       AND    #$40    
       BNE    LF63E   
       LDA    $D0     
       ORA    #$C0    
       STA    $D0     
LF60C: LDA    $D4     
       CLC            
       ADC    #$09    
       STA    $D4     
       LSR            
       STA    AUDF0   
       LDA    #$08    
       STA    AUDV0   
       LDA    $D4     
       CMP    #$B0    
       BCC    LF63E   
       LDA    $DB     
       LSR            
       BCC    LF634   
       LDA    $C6     
       ADC    #$08    
       SBC    $C7     
       CMP    #$12    
       BCS    LF634   
       LDX    #$01    
       JSR    LFC3A   
LF634: LDA    $D0     
       AND    #$5F    
       STA    $D0     
       LDA    #$0F    
       STA    $D4     
LF63E: LDA    SWCHA   
       ASL            
       BMI    LF68A   
       LDA    #$00    
       STA    $EB     
       LDA    $DB     
       AND    #$F7    
       STA    $DB     
       LDA    $D1     
       AND    #$20    
       BNE    LF68A   
       LDA    $D1     
       BMI    LF662   
       AND    #$40    
       BNE    LF694   
       LDA    $D1     
       ORA    #$C0    
       STA    $D1     
LF662: LDA    $D5     
       SEC            
       SBC    #$09    
       STA    $D5     
       LSR            
       STA    AUDF0   
       LDA    #$08    
       STA    AUDV0   
       LDA    $D5     
       CMP    #$08    
       BCS    LF694   
       LDA    $DB     
       LSR            
       BCC    LF68A   
       LDA    $C7     
       ADC    #$08    
       SBC    $C6     
       CMP    #$12    
       BCS    LF68A   
       LDX    #$00    
       JSR    LFC3A   
LF68A: LDA    $D1     
       AND    #$5F    
       STA    $D1     
       LDA    #$AF    
       STA    $D5     
LF694: LDA    $D0     
       AND    #$40    
       BEQ    LF6A5   
       LDA    SWCHA   
       BPL    LF6A5   
       LDA    $D0     
       AND    #$BF    
       STA    $D0     
LF6A5: LDA    $D1     
       AND    #$40    
       BEQ    LF6B7   
       LDA    SWCHA   
       ASL            
       BPL    LF6B7   
       LDA    $D1     
       AND    #$BF    
       STA    $D1     
LF6B7: LDA    $DE     
       BPL    LF704   
       LDA    #$08    
       STA    $EE     
       LDA    $DB     
       ASL            
       BPL    LF6C6   
       LSR    $EE     
LF6C6: LDA    $DE     
       AND    #$20    
       BEQ    LF6E6   
       LDA    SWCHB   
       ASL            
       BMI    LF6D6   
       DEC    $EE     
       DEC    $EE     
LF6D6: LDA    $D6     
       CMP    #$09    
       BCC    LF6FD   
       SBC    $EE     
       STA    $D6     
       ADC    #$08    
       STA    $D7     
       BNE    LF6FD   
LF6E6: LDA    SWCHB   
       BMI    LF6EF   
       DEC    $EE     
       DEC    $EE     
LF6EF: LDA    $D7     
       CMP    #$B5    
       BCS    LF6FD   
       ADC    $EE     
       STA    $D7     
       SBC    #$08    
       STA    $D6     
LF6FD: LSR            
       STA    AUDF0   
       LDA    #$08    
       STA    AUDV0   
LF704: LDX    #$01    
LF706: LDA    $D0,X   
       AND    #$10    
       BNE    LF72C   
       SEC            
       LDA    #$B9    
       SBC    $CD,X   
       CMP    #$0E    
       BCS    LF717   
       LDA    #$0E    
LF717: CMP    #$88    
       BCC    LF71D   
       LDA    #$87    
LF71D: SEC            
       SBC    $C6,X   
       PHP            
       LSR            
       PLP            
       BPL    LF727   
       ORA    #$80    
LF727: CLC            
       ADC    $C6,X   
       STA    $C6,X   
LF72C: DEX            
       BPL    LF706   
       LDA    $E5     
       ORA    $E6     
       BNE    LF777   
       LDA    $DB     
       AND    #$FD    
       STA    $EF     
       ORA    #$02    
       STA    $DB     
       LDX    #$0F    
LF741: LDA    #$00    
       STA    $EE     
       LDA    $90,X   
       AND    #$60    
       BNE    LF774   
       LDA    $EF     
       STA    $DB     
       LDA    $EA     
       AND    #$0F    
       TAY            
       LDA    LFC7F,Y 
       AND    $A0,X   
       BEQ    LF75D   
       INC    $EE     
LF75D: LDA    $A0,X   
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $EE     
       BEQ    LF774   
       LDY    $90,X   
       BPL    LF770   
       EOR    #$FF    
       ADC    #$01    
LF770: ADC    $80,X   
       STA    $80,X   
LF774: DEX            
       BPL    LF741   
LF777: LDX    INTIM   
       BNE    LF777   
       LDX    #$02    
       STX    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$29    
       STA    TIM64T  
       LDA    $E5     
       ORA    $E6     
       BNE    LF7B4   
       LDX    #$0F    
LF799: LDA    $90,X   
       AND    #$60    
       BNE    LF7B1   
       LDA    $90,X   
       AND    #$0F    
       TAY            
       LDA    $80,X   
       CMP    LFFEA,Y 
       BEQ    LF7AD   
       BCS    LF7BD   
LF7AD: CMP    #$0E    
       BCC    LF7B7   
LF7B1: DEX            
       BPL    LF799   
LF7B4: JMP    LF824   
LF7B7: LDA    #$0E    
       STA    $80,X   
       BNE    LF7C2   
LF7BD: LDA    LFFEA,Y 
       STA    $80,X   
LF7C2: LDA    $DB     
       BPL    LF81E   
       AND    #$08    
       BNE    LF81E   
       LDA    #$22    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDV0   
       LDA    $90,X   
       AND    #$7C    
       BNE    LF810   
       LDA    $B0,X   
       EOR    #$3C    
       STA    $B0,X   
       LDA    LFCAB,X 
       TAY            
       LDA.wy $0090,Y 
       CMP    #$6F    
       BEQ    LF7F4   
       LDA    LFCB3,X 
       TAY            
       LDA.wy $0090,Y 
       CMP    #$6F    
       BNE    LF81E   
LF7F4: LDA    $90,X   
       EOR    #$80    
       STA.wy $0090,Y 
       LDA    $80,X   
       STA.wy $0080,Y 
       LDA    $B0,X   
       STA.wy $00B0,Y 
       LDA    $A0,X   
       STA.wy $00A0,Y 
       LDA    #$6B    
       STA    $90,X   
       BPL    LF824   
LF810: LDA    $90,X   
       AND    #$6E    
       CMP    #$08    
       BNE    LF81E   
       LDA    #$6B    
       STA    $90,X   
       BNE    LF824   
LF81E: LDA    $90,X   
       EOR    #$80    
       STA    $90,X   
LF824: LDA    $E5     
       ORA    $E6     
       BEQ    LF82D   
       JMP    LF960   
LF82D: LDA    $DB     
       AND    #$04    
       BEQ    LF880   
       JSR    LFC0B   
       CMP    #$20    
       BCS    LF880   
       JSR    LFC0B   
       AND    #$0F    
       TAY            
       LDA.wy $0090,Y 
       CMP    #$6F    
       BNE    LF880   
       LDX    $DC     
       LDA    LFD02,X 
       AND    LFD12,Y 
       BEQ    LF880   
       JSR    LFC0B   
       AND    #$80    
       ORA    #$04    
       STA.wy $0090,Y 
       JSR    LFC0B   
       LDX    $DC     
       AND    LFCF1,X 
       ADC    #$03    
       STA.wy $00A0,Y 
       JSR    LFC0B   
       BMI    LF871   
       LDA    #$40    
       BPL    LF873   
LF871: LDA    #$7C    
LF873: STA.wy $00B0,Y 
       LDA    #$45    
       STA.wy $0080,Y 
       INC    $DD     
       JMP    LF960   
LF880: LDA    $DB     
       BPL    LF8B8   
       AND    #$08    
       BNE    LF8B8   
       LDA    $DE     
       BMI    LF8B8   
       JSR    LFC0B   
       AND    #$0F    
       TAY            
       LDA.wy $0090,Y 
       AND    #$0F    
       CMP    #$0A    
       BNE    LF8B8   
       STY    $EE     
       TYA            
       AND    #$07    
       TAY            
       LDA    LFCDC,Y 
       ADC    #$07    
       STA    $D6     
       STA    $D7     
       JSR    LFC0B   
       AND    #$20    
       ORA    $EE     
       ORA    #$80    
       STA    $DE     
       JMP    LF960   
LF8B8: LDA    $EA     
       AND    #$03    
       BNE    LF8D8   
       JSR    LFC0B   
       AND    #$0F    
       TAY            
       LDA.wy $0090,Y 
       AND    #$7E    
       CMP    #$08    
       BNE    LF8D8   
       LDA    $EA     
       AND    #$0F    
       ADC    #$18    
       STA.wy $00A0,Y 
       BNE    LF8F5   
LF8D8: LDA.wy $0090,Y 
       AND    #$0F    
       CMP    #$0A    
       BNE    LF8F5   
       LDA    $DB     
       AND    #$04    
       BEQ    LF8ED   
       LDA    $EA     
       AND    #$1F    
       BNE    LF8F5   
LF8ED: LDA    #$6B    
       STA.wy $0090,Y 
       JMP    LF960   
LF8F5: LDA    $DB     
       AND    #$04    
       BEQ    LF93A   
       JSR    LFC0B   
       CMP    #$20    
       BCS    LF93A   
       JSR    LFC0B   
       AND    #$0F    
       TAY            
       LDA.wy $0090,Y 
       CMP    #$6F    
       BNE    LF93A   
       LDA    $DC     
       SBC    #$04    
       BCC    LF93A   
       TAX            
       LDA    LFD02,X 
       AND    LFD12,Y 
       BEQ    LF93A   
LF91E: LDA    $EA     
       ASL            
       AND    #$08    
       ORA    #$0A    
       STA.wy $0090,Y 
       LDA    #$08    
       STA.wy $00B0,Y 
       INX            
       LDA    LFCF1,X 
       LSR            
       AND    $EA     
       STA.wy $00A0,Y 
       JMP    LF960   
LF93A: LDA    $DB     
       AND    #$24    
       EOR    #$24    
       BNE    LF960   
       JSR    LFC0B   
       CMP    #$05    
       BCS    LF960   
       JSR    LFC0B   
       AND    #$0F    
       TAY            
       LDA.wy $0090,Y 
       CMP    #$6F    
       BNE    LF960   
       LDX    $DC     
       LDA    LFD02,X 
       AND    LFD22,Y 
       BNE    LF91E   
LF960: LDA    $DB     
       AND    #$04    
       BEQ    LF977   
       LDX    $DC     
       LDA    LFC9B,X 
       CMP    $DD     
       BCS    LF991   
       LDA    $DB     
       AND    #$F9    
       STA    $DB     
       BEQ    LF991   
LF977: LDA    $DB     
       AND    #$02    
       BEQ    LF991   
       LDA    $DD     
       BEQ    LF991   
       LDA    #$00    
       STA    $DD     
       LDA    $DC     
       CMP    #$0F    
       BEQ    LF98D   
       INC    $DC     
LF98D: LDA    #$10    
       STA    $E7     
LF991: LDA    $EA     
       AND    #$03    
       BNE    LF9A7   
       LDA    $E7     
       BEQ    LF9A7   
       STA    $EC     
       DEC    $E7     
       BNE    LF9A7   
       LDA    $DB     
       ORA    #$04    
       STA    $DB     
LF9A7: LDA    $E5     
       BEQ    LF9D5   
       LDA    $EA     
       AND    #$07    
       BNE    LF9D2   
       LDA    #$03    
       STA    AUDC1   
       DEC    $E5     
       LDX    $E5     
       LDA    LFD56,X 
       STA    AUDF1   
       LDA    LFD66,X 
       STA    AUDV1   
       TXA            
       BNE    LF9D2   
       LDA    $D0     
       AND    #$0F    
       STA    $D0     
       LDA    $D1     
       AND    #$0F    
       STA    $D1     
LF9D2: JMP    LFA24   
LF9D5: LDA    $E6     
       BEQ    LFA24   
       LDA    $EA     
       AND    #$03    
       BNE    LFA24   
       DEC    $E6     
       LDX    $E6     
       LDA    #$0C    
       STA    AUDC1   
       LDA    LFD76,X 
       STA    AUDF1   
       LDA    LFD86,X 
       STA    AUDV1   
       TXA            
       BNE    LFA24   
       LDA    $D0     
       AND    #$0F    
       BNE    LFA01   
       INX            
       LDA    $D1     
       AND    #$0F    
       BEQ    LFA1C   
LFA01: DEC    $D0,X   
       LDA    #$10    
       STA    $E6     
       TXA            
       ASL            
       STA    $EE     
       LDY    $DC     
       LDA    LFD36,Y 
       TAX            
       LDA    LFD46,Y 
       LDY    $EE     
       JSR    LFC29   
       JMP    LFA24   
LFA1C: LDA    $DB     
       AND    #$63    
       ORA    #$08    
       STA    $DB     
LFA24: LDA    $EA     
       AND    #$07    
       TAX            
       LDA    $90,X   
       AND    #$0F    
       TAY            
       LDA    $90,X   
       AND    #$F0    
       ORA    LFCC3,Y 
       STA    $90,X   
       LDA    $98,X   
       AND    #$0F    
       TAY            
       LDA    $98,X   
       AND    #$F0    
       ORA    LFCC3,Y 
       STA    $98,X   
       LDA    #$FF    
       STA    $FF     
       STA    $FD     
       STA    $FB     
       STA    $F9     
       STA    $F7     
       STA    $F5     
       STA    $F3     
       STA    $F1     
       LDA    #$50    
       STA    $F0     
       STA    $F2     
       STA    $F4     
       STA    $F8     
       STA    $FA     
       STA    $FC     
       LDA    #$00    
       STA    $F6     
       STA    $FE     
       STA    $EE     
       STA    $EF     
       LDA    $E1     
       AND    #$F0    
       BEQ    LFA7A   
       STA    $EE     
       LSR            
       STA    $F0     
LFA7A: LDA    $E1     
       AND    #$0F    
       TAX            
       ORA    $EE     
       BEQ    LFA8B   
       STA    $EE     
       TXA            
       ASL            
       ASL            
       ASL            
       STA    $F2     
LFA8B: LDA    $E2     
       AND    #$F0    
       TAX            
       ORA    $EE     
       BEQ    LFA9A   
       STA    $EE     
       TXA            
       LSR            
       STA    $F4     
LFA9A: LDA    $E2     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $F6     
       LDA    $E3     
       AND    #$F0    
       BEQ    LFAAE   
       STA    $EF     
       LSR            
       STA    $F8     
LFAAE: LDA    $E3     
       AND    #$0F    
       TAX            
       ORA    $EF     
       BEQ    LFABF   
       STA    $EF     
       TXA            
       ASL            
       ASL            
       ASL            
       STA    $FA     
LFABF: LDA    $E4     
       AND    #$F0    
       TAX            
       ORA    $EF     
       BEQ    LFACE   
       STA    $EF     
       TXA            
       LSR            
       STA    $FC     
LFACE: LDA    $E4     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $FE     
       LDA    $E7     
       BNE    LFAF1   
       LDY    #$FF    
       LDA    $DB     
       AND    #$08    
       BNE    LFAE7   
       STA    $EC     
       BEQ    LFAEF   
LFAE7: LDY    #$F7    
       LDA    $EA     
       BNE    LFAEF   
       INC    $EC     
LFAEF: STY    $ED     
LFAF1: LDA    $CF     
       BEQ    LFB0F   
       LDA    #$08    
       CLC            
       ADC    $DA     
       STA    WSYNC   
       TAX            
       LDA    LFF58,X 
       STA    HMBL    
       AND    #$0F    
       TAY            
       NOP            
LFB06: DEY            
       BPL    LFB06   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
LFB0F: LDA    $D0     
       AND    #$0F    
       TAX            
       LDA    LFCEC,X 
       STA    $D2     
       LDA    $D1     
       AND    #$0F    
       TAX            
       LDA    LFCEC,X 
       STA    $D3     
LFB23: LDA    INTIM   
       BNE    LFB23   
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$09    
       STX    $CC     
       STA    HMCLR   
       STA    CXCLR   
       LDA    #$8A    
       EOR    $EC     
       AND    $ED     
       STA    COLUPF  
       JMP    LF017   
LFB3F: LDA    SWCHB   
       ROR            
       BCC    LFB8F   
       ROR            
       BCC    LFB4E   
       LDX    #$01    
       STX    $E0     
LFB4C: SEC            
       RTS            

LFB4E: DEC    $E0     
       BNE    LFB4C   
LFB52: LDA    #$2D    
       STA    $E0     
       LDA    $DB     
       AND    #$10    
       BEQ    LFB6B   
       SED            
       LDA    $DF     
       CLC            
       ADC    #$01    
       CMP    #$07    
       BNE    LFB68   
       LDA    #$01    
LFB68: STA    $DF     
       CLD            
LFB6B: LDA    #$02    
       STA    $D0     
       LDX    $DF     
       LDA    LFC94,X 
       STA    $DB     
       AND    #$20    
       BEQ    LFB7C   
       DEC    $D0     
LFB7C: LDA    #$00    
       STA    $D1     
       LDA    $DF     
       TAX            
       STA    $E1     
       LDA    #$AA    
       STA    $E2     
       STA    $E3     
       STA    $E4     
       BNE    LFBBE   
LFB8F: DEC    $E0     
       BNE    LFB4C   
       LDX    #$10    
       STX    $E0     
       LDX    $DF     
       LDA    LFC8E,X 
       STA    $DB     
       LDA    #$04    
       STA    $D0     
       STA    $D1     
       LDX    #$00    
       STX    $E1     
       STX    $E2     
       STX    $E3     
       STX    $E4     
       LDA    $DB     
       AND    #$20    
       BEQ    LFBBE   
       LDA    #$AA    
       STA    $E1     
       STA    $E2     
       LDA    #$00    
       STA    $D0     
LFBBE: LDX    #$FE    
       STX    $C9     
       STX    $CB     
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$21    
       STA    CTRLPF  
       LDA    #$04    
       STA    AUDC0   
       STA    CXCLR   
       LDA    #$00    
       STA    $DC     
       STA    $DD     
       STA    $E5     
       STA    $E6     
       STA    $E7     
       STA    $EB     
       STA    AUDV1   
       STA    $DE     
       LDX    #$0F    
       LDA    #$6F    
LFBEA: STA    $90,X   
       DEX            
       BPL    LFBEA   
       LDA    #$0E    
       STA    $87     
       STA    $86     
       STA    $85     
       LDA    #$86    
       STA    $8F     
       STA    $8E     
       STA    $8D     
       LDX    #$05    
LFC01: LDA    LFC55,X 
       STA    $C0,X   
       DEX            
       BPL    LFC01   
       CLC            
       RTS            

LFC0B: LDA    $E8     
       LDX    $E9     
       EOR    LF369,X 
       EOR    LF704,X 
       ASL            
       ADC    #$00    
       EOR    LF777,X 
       INX            
       STX    $E9     
       EOR    $C6     
       EOR    $C7     
       EOR    $EB     
       EOR    $EA     
       STA    $E8     
       RTS            

LFC29: SED            
       CLC            
       ADC.wy $00E2,Y 
       STA.wy $00E2,Y 
       TXA            
       ADC.wy $00E1,Y 
       STA.wy $00E1,Y 
       CLD            
       RTS            

LFC3A: LDA    $D0,X   
       AND    #$0F    
       BNE    LFC46   
       LDA    #$01    
       STA    $E6     
       BNE    LFC48   
LFC46: DEC    $D0,X   
LFC48: STA    $DE     
       LDA    $D0,X   
       ORA    #$10    
       STA    $D0,X   
       LDA    #$10    
       STA    $E5     
       RTS            

LFC55: .byte $E8,$7C,$28,$40,$7C,$46
LFC5B: .byte $00,$42,$C3,$42,$C3,$42,$C3,$00,$00
LFC64: .byte $18,$18,$18,$3C,$18,$3C,$3C,$E7,$C3
LFC6D: .byte $00,$00,$00,$81,$C3,$66,$C3,$00,$00
LFC76: .byte $E7,$BD,$99,$7E,$3C,$18,$3C,$18,$18
LFC7F: .byte $01,$08,$04,$08,$02,$08,$04,$08,$00,$08,$04,$08,$02,$08,$04
LFC8E: .byte $08,$A4,$84,$85,$E4,$C4
LFC94: .byte $C5,$34,$14,$15,$74,$54,$55
LFC9B: .byte $10,$20,$20,$30,$30,$40,$40,$50,$50,$60,$60,$70,$70,$80,$80,$90
LFCAB: .byte $04,$00,$01,$02,$05,$06,$07,$03
LFCB3: .byte $0C,$08,$09,$0A,$0D,$0E,$0F,$0B,$04,$00,$01,$02,$05,$06,$07,$03
LFCC3: .byte $01,$02,$03,$00,$05,$06,$07,$00,$09,$08,$0A,$0C,$0D,$0E,$0F,$0F
LFCD3: .byte $00
LFCD4: .byte $C4,$D6,$D4,$C6,$C6,$D4,$D6
LFCDB: .byte $C4
LFCDC: .byte $99,$87,$75,$63,$51,$3F,$2D,$1B
LFCE4: .byte $A3,$91,$7F,$6D,$5B,$49,$37,$25
LFCEC: .byte $00,$80,$A0,$A8,$AA
LFCF1: .byte $00,$01,$01,$03,$03,$07,$07,$0F,$0F,$1F,$1F,$3F,$3F,$7F,$7F,$FF
       .byte $FF
LFD02: .byte $08,$08,$04,$04,$02,$02,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
LFD12: .byte $01,$03,$07,$0F,$0F,$07,$03,$01,$01,$03,$07,$0F,$0F,$07,$03,$01
LFD22: .byte $01,$01,$03,$03,$07,$07,$0F,$0F,$01,$01,$03,$03,$07,$07,$0F,$0F
LFD32: .byte $0E,$8C
LFD34: .byte $08,$88
LFD36: .byte $00,$00,$00,$00,$01,$01,$02,$02,$03,$03,$04,$05,$07,$10,$15,$20
LFD46: .byte $10,$20,$30,$50,$00,$50,$00,$50,$00,$50,$00,$00,$50,$00,$00,$00
LFD56: .byte $06,$08,$0A,$06,$08,$0A,$06,$08,$0A,$06,$08,$0A,$06,$08,$0A,$06
LFD66: .byte $00,$01,$01,$02,$02,$03,$03,$04,$05,$06,$07,$08,$0A,$0C,$0E,$0F
LFD76: .byte $02,$06,$02,$06,$02,$06,$02,$06,$02,$06,$02,$06,$02,$06,$02,$06
LFD86: .byte $00,$01,$01,$02,$02,$03,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0D
LFD96: .byte $01,$02,$03,$04,$05,$06,$07
LFD9D: .byte $08,$79,$85,$B5,$A5,$B5,$85
LFDA4: .byte $79,$17,$15,$15,$77,$55,$55
LFDAB: .byte $77,$71,$41,$41,$71,$11,$11
LFDB2: .byte $70,$49,$49,$49,$C9,$49,$49
LFDB9: .byte $BE,$55,$55,$55,$D9,$55,$55,$99,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$46,$54,$7C,$7C,$FE
       .byte $38,$54,$FC,$28,$10,$00,$00,$00,$00,$00,$06,$D4,$7C,$7C,$44,$C6
       .byte $38,$54,$7E,$28,$10,$00,$00,$00,$00,$00,$D0,$7E,$44,$44,$44,$FE
       .byte $38,$54,$FC,$28,$10,$00,$00,$00,$00,$00,$06,$D4,$7C,$7C,$44,$C6
       .byte $38,$54,$7E,$28,$10,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$24,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$24,$3C,$24,$7E,$DB
       .byte $3C,$18,$00,$00,$00,$00,$00,$00,$00,$00,$6C,$28,$38,$7C,$C6,$44
       .byte $38,$54,$54,$28,$00,$00,$00,$00,$00,$00,$00,$20,$70,$A8,$70,$20
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$70,$50,$70,$20
       .byte $00,$00,$00,$00,$00,$00,$00,$42,$24,$18,$18,$66,$00,$3C,$24,$24
       .byte $FF,$DB,$DB,$FF,$7E,$00,$00,$00,$00,$00,$00,$18,$24,$24,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$24,$42,$42,$24,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$24,$42,$81,$81,$42,$24
       .byte $18,$00,$00,$00,$00,$00,$00,$00,$00,$24,$00,$81,$00,$00,$81,$00
       .byte $24,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$04,$0A,$0A,$0A,$0A,$0A,$0A,$04,$0E
       .byte $04,$04,$04,$04,$04,$0C,$04,$0E,$0A,$08,$04,$02,$02,$0A,$04,$04
       .byte $0A,$02,$02,$04,$02,$0A,$04,$02,$02,$02,$02,$0E,$0A,$0A,$0A,$04
       .byte $0A,$02,$02,$0C,$08,$08,$0E,$04,$0A,$0A,$0A,$0C,$08,$0A,$04,$02
       .byte $02,$02,$02,$02,$02,$0A,$0E,$04,$0A,$0A,$0A,$04,$0A,$0A,$04,$04
       .byte $0A,$02,$06,$0A,$0A,$0A,$04,$00,$00,$00,$00,$00,$00,$00,$00
LFF58: .byte $60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$71,$61
       .byte $51,$41,$31,$21,$11,$01,$F1,$E1,$D1,$C1,$B1,$A1,$91,$72,$62,$52
       .byte $42,$32,$22,$12,$02,$F2,$E2,$D2,$C2,$B2,$A2,$92,$73,$63,$53,$43
       .byte $33,$23,$13,$03,$F3,$E3,$D3,$C3,$B3,$A3,$93,$74,$64,$54,$44,$34
       .byte $24,$14,$04,$F4,$E4,$D4,$C4,$B4,$A4,$94,$75,$65,$55,$45,$35,$25
       .byte $15,$05,$F5,$E5,$D5,$C5,$B5,$A5,$95,$76,$66,$56,$46,$36,$26,$16
       .byte $06,$F6,$E6,$D6,$C6,$B6,$A6,$96,$77,$67,$57,$47,$37,$27,$17,$07
       .byte $F7,$E7,$D7,$C7,$B7,$A7,$97,$78,$68,$58,$48,$38,$28,$18,$08,$F8
       .byte $E8,$D8,$C8,$B8,$A8,$98,$79,$69,$59,$49,$39,$29,$19,$09,$F9,$E9
       .byte $D9,$C9
LFFEA: .byte $88,$88,$88,$88,$86,$86,$86,$86,$8C,$8C,$86,$86,$86,$86,$86,$86
       .byte $00,$00,$00,$F0,$00,$F0
