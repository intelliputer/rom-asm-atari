; Disassembly of roms/Burning Desire.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Burning Desire.bin
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
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXP0FB  =  $32
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       STA    SWACNT  
       STA    SWBCNT  
       LDA    #$30    
       STA    $D7     
LF015: LDY    #$00    
       LDA    ($D6),Y 
       CLC            
       ADC    $93     
       STA    $93     
       INC    $D6     
       BNE    LF015   
       INC    $D7     
       LDA    $D7     
       CMP    #$40    
       BNE    LF015   
       LDA    #$00    
       CMP    $93     
       BEQ    LF033   
       JMP    LF0B8   
LF033: JSR    LFAE4   
LF036: LDA    #$20    
       STA    TIM64T  
       INC    $80     
       LDA    SWCHA   
       STA    $8B     
       JSR    LF53B   
       JSR    LF42A   
       JSR    LF4DD   
       JSR    LF4F9   
       JSR    LF4AD   
       JSR    LF4C5   
       JSR    LF493   
       JSR    LF467   
       JSR    LFB82   
       JSR    LF8BB   
       JSR    LF58B   
LF063: LDA    INTIM   
       BNE    LF063   
       LDA    #$02    
       STA    VBLANK  
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$17    
       STA    TIM64T  
       JSR    LFAC9   
       JSR    LF6F4   
       JSR    LF6E2   
       JSR    LFA16   
       JSR    LF787   
       JSR    LF928   
       BIT    $D0     
       BMI    LF09F   
       BVC    LF09F   
       JSR    LF7CB   
       JSR    LF0C3   
LF09F: JSR    LF759   
       JSR    LF71B   
       JSR    LF70B   
       JSR    LF877   
       JSR    LFA9D   
       LDA    $B5     
       STA    COLUBK  
       JSR    LF0E9   
       JMP    LF036   
LF0B8: LDA    #$09    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       JMP    LF000   
LF0C3: LDA    $CD     
       BEQ    LF0D6   
       LDA    $80     
       AND    #$08    
       BNE    LF0D1   
       LDA    #$00    
       BEQ    LF0D3   
LF0D1: LDA    #$30    
LF0D3: STA    $B5     
       RTS            

LF0D6: LDA    $8C     
       BEQ    LF0E0   
       LDX    #$00    
       LDY    #$28    
       BNE    LF0E4   
LF0E0: LDX    #$96    
       LDY    #$E6    
LF0E4: STX    $B5     
       STY    $CA     
       RTS            

LF0E9: LDA    INTIM   
       BNE    LF0E9   
       STA    HMCLR   
       STA    CXCLR   
       LDA    #$11    
       STA    CTRLPF  
       JSR    LF3D4   
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$00    
       LDA    #$00    
       TAX            
       STA    $C3     
LF106: STX    $C4     
       LDA.wy $00EC,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       BEQ    LF114   
       INC    $C3     
LF114: LDA    $C3     
       BNE    LF11A   
       LDX    #$0A    
LF11A: LDA    LFF7F,X 
       LDX    $C4     
       STA    $E0,X   
       INX            
       INX            
       STX    $C4     
       LDA.wy $00EC,Y 
       AND    #$0F    
       TAX            
       BEQ    LF12F   
       INC    $C3     
LF12F: LDA    $C3     
       BNE    LF135   
       LDX    #$0A    
LF135: LDA    LFF7F,X 
       LDX    $C4     
       STA    $E0,X   
       INX            
       INX            
       INY            
       CPY    #$03    
       BCC    LF106   
       LDA    $C3     
       BNE    LF14B   
       LDA    #$40    
       STA    $EA     
LF14B: LDX    $83     
       LDA    LFF7F,X 
       STA    $E0     
       LDA    #$FF    
       LDX    #$0A    
LF156: STA    $E1,X   
       DEX            
       DEX            
       BPL    LF156   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    WSYNC   
       JSR    LF3F3   
       STA    WSYNC   
       LDA    $81     
       STA    $C0     
       LDX    #$00    
       LDA    #$32    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $D3     
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$FE    
       STA    PF2     
LF17F: LDA    $C0     
       CMP    #$08    
       LDY    #$00    
       STY    $C0     
       BCC    LF18F   
       SBC    #$08    
       STA    $C0     
       LDA    #$08    
LF18F: STA    $E0,X   
       INX            
       INX            
       CPX    #$0C    
       BNE    LF17F   
       LDA    #$00    
       JSR    LF3F5   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       LDA    #$07    
       STA    NUSIZ1  
       LDA    #$28    
       STA    TIM8T   
       LDA    $A4     
       LDX    #$01    
       JSR    LFAB2   
       DEX            
       LDA    $A4     
       CLC            
       ADC    #$08    
       JSR    LFAB2   
LF1BD: LDA    INTIM   
       BNE    LF1BD   
       STA    WSYNC   
       STA    HMOVE   
       STA    PF2     
       LDA    #$9A    
       STA    COLUPF  
       LDX    #$07    
       LDA    $8C     
       BNE    LF1D5   
       JMP    LF387   
LF1D5: LDA    $BC     
       STA    COLUP1  
LF1D9: STA    WSYNC   
       TXA            
       SEC            
       SBC    $B2     
       TAY            
       AND    #$F0    
       BEQ    LF1E8   
       LDA    #$00    
       BEQ    LF1EA   
LF1E8: LDA    ($9A),Y 
LF1EA: STA    GRP1    
       TXA            
       SBC    $B7     
       AND    #$FC    
       BEQ    LF1F7   
       LDA    #$00    
       BEQ    LF1F9   
LF1F7: LDA    #$02    
LF1F9: STA    ENABL   
       INX            
       CPX    $B4     
       BCC    LF1D9   
LF200: TXA            
       SEC            
       SBC    $B4     
       TAY            
       AND    #$E0    
       STA    WSYNC   
       BEQ    LF211   
       LDA    #$00    
       STA    GRP1    
       BEQ    LF219   
LF211: LDA    LFDC0,Y 
       STA    GRP1    
       LDA    LFDE0,Y 
LF219: STA    GRP0    
       LDA    #$00    
       STA    NUSIZ1  
       LDA    $BB     
       STA    COLUP1  
       STA    COLUP0  
       TXA            
       SEC            
       SBC    $B7     
       AND    #$FC    
       BEQ    LF231   
       LDA    #$00    
       BEQ    LF233   
LF231: LDA    #$02    
LF233: STA    ENABL   
       INX            
       CPX    $B1     
       BCC    LF200   
       LDA    #$02    
       STA    ENAM0   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       LDA    $F4     
       STA    HMP1    
       TXA            
       SEC            
       SBC    $B7     
       AND    #$FC    
       BEQ    LF256   
       LDA    #$00    
       BEQ    LF259   
LF256: LDA    #$02    
       NOP            
LF259: STA    ENABL   
       INX            
       LDA    $82     
       BEQ    LF263   
       NOP            
       NOP            
       NOP            
LF263: NOP            
       STA    RESP1   
       STA    WSYNC   
       LDA    $F5     
       STA    HMP0    
       TXA            
       SEC            
       SBC    $B7     
       AND    #$FC    
       BEQ    LF278   
       LDA    #$00    
       BEQ    LF27B   
LF278: LDA    #$02    
       NOP            
LF27B: STA    ENABL   
       INX            
       JSR    LFA9C   
       NOP            
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    ENAM0   
       LDA    $82     
       BEQ    LF298   
       TXA            
       SEC            
       SBC    $B7     
       AND    #$FC    
       BEQ    LF29C   
LF298: LDA    #$00    
       BEQ    LF29E   
LF29C: LDA    #$02    
LF29E: STA    ENABL   
       INX            
       LDA    #$38    
       STA    COLUP0  
       LDA    #$52    
       STA    COLUP1  
       LDA    $87     
       STA    REFP1   
LF2AD: TXA            
       SEC            
       SBC    $B3     
       TAY            
       AND    #$E0    
       STA    WSYNC   
       BEQ    LF2BC   
       LDA    #$00    
       BEQ    LF2BE   
LF2BC: LDA    ($94),Y 
LF2BE: STA    GRP0    
       TXA            
       SBC    $B8     
       TAY            
       AND    #$E0    
       BEQ    LF2CC   
       LDA    #$00    
       BEQ    LF2CF   
LF2CC: LDA    LFEE0,Y 
LF2CF: STA    GRP1    
       LDY    $82     
       SEC            
       TXA            
       SBC.wy $00B6,Y 
       AND    #$FC    
       BEQ    LF2E0   
       LDA    #$00    
       BEQ    LF2E2   
LF2E0: LDA    #$02    
LF2E2: STA.wy $001E,Y 
       INX            
       CPX    #$90    
       BNE    LF2AD   
       LDA    #$22    
       STA    COLUPF  
       LDA    #$F0    
       STA    PF2     
       STA    WSYNC   
       LDX    #$00    
       STX    GRP1    
       NOP            
       LDA    $F2     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF300: DEY            
       BPL    LF300   
       STA    RESP0   
       STX    GRP0    
       STX    ENAM1   
       STX    ENABL   
       LDA    $BD     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDX    #$01    
       NOP            
       LDA    $F2,X   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
LF31D: DEY            
       BPL    LF31D   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       LDA    $9D     
       STA    REFP1   
       LDA    $9C     
       STA    REFP0   
       LDX    #$00    
LF330: TXA            
       TAY            
       LDA    ($96),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($98),Y 
       STA    GRP1    
       LDA    LFCC0,Y 
       STA    PF2     
       INX            
       CPX    #$20    
       BCC    LF330   
LF346: STA    WSYNC   
       LDA    $CA     
       STA    COLUBK  
       STA    HMCLR   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    REFP0   
       STA    REFP1   
       STA    PF2     
       JSR    LF3D4   
       LDX    #$0A    
       LDY    #$05    
LF363: LDA    #$FF    
       STA    $E1,X   
       LDA    LFF2C,Y 
       STA    $E0,X   
       DEX            
       DEX            
       DEY            
       BPL    LF363   
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       STA    GRP0    
       STA    GRP1    
       JSR    LF3F3   
       STA    WSYNC   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       RTS            

LF387: LDX    #$37    
       LDA    $B5     
       STA    COLUBK  
LF38D: STA    WSYNC   
       DEX            
       BPL    LF38D   
       LDX    #$2D    
       LDA    #$38    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $CA     
       STA    COLUBK  
LF39E: STA    WSYNC   
       DEX            
       BPL    LF39E   
       LDA    #$00    
       STA    WSYNC   
       STA    HMCLR   
       STA    REFP1   
       LDA    $8F     
       LDX    #$0A    
LF3AF: STA    $E1,X   
       DEX            
       DEX            
       BPL    LF3AF   
       LDA    #$A0    
       LDX    #$0A    
LF3B9: STA    $E0,X   
       SEC            
       SBC    #$20    
       DEX            
       DEX            
       BPL    LF3B9   
       JSR    LF3D4   
       LDA    #$1F    
       JSR    LF3F5   
       LDX    #$1F    
LF3CC: STA    WSYNC   
       DEX            
       BPL    LF3CC   
       JMP    LF346   
LF3D4: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$F0    
       STA    HMP0    
       LDY    #$07    
       STA    WSYNC   
LF3E6: DEY            
       BNE    LF3E6   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF3F3: LDA    #$06    
LF3F5: STA    $C2     
LF3F7: LDY    $C2     
       LDA    ($E0),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($E2),Y 
       STA    GRP1    
       LDA    ($E4),Y 
       STA    GRP0    
       LDA    ($E6),Y 
       STA    $C1     
       LDA    ($E8),Y 
       TAX            
       LDA    ($EA),Y 
       TAY            
       LDA    $C1     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $C2     
       BPL    LF3F7   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       RTS            

LF42A: LDA    $CC     
       BEQ    LF454   
       DEC    $DD     
       BNE    LF454   
       LDA    $DC     
       BEQ    LF455   
       LDA    #$00    
       STA    $DC     
       LDY    $DB     
       CPY    #$0B    
       BEQ    LF461   
       LDA    LFFE2,Y 
       STA    $DD     
       LDA    LFFD7,Y 
       INC    $DB     
       LDY    #$0A    
       LDX    #$05    
LF44E: STX    AUDC0   
       STA    AUDF0   
LF452: STY    AUDV0   
LF454: RTS            

LF455: LDA    #$01    
       STA    $DC     
       LDA    #$04    
       STA    $DD     
       LDY    #$00    
       BEQ    LF452   
LF461: LDY    #$00    
       STY    $CC     
       BEQ    LF452   
LF467: LDA    $CD     
       BEQ    LF454   
       INC    $DE     
       LDA    $DE     
       CMP    #$7F    
       BCS    LF47B   
       LDX    #$08    
       LDA    $DE     
       LDY    #$0A    
       BNE    LF44E   
LF47B: DEC    $83     
       LDA    $83     
       BNE    LF485   
       LDA    #$80    
       ORA    $D0     
LF485: LDA    #$80    
       STA    $C8     
       LDY    #$00    
       STY    $CD     
       STY    $DE     
       STY    $D8     
       BEQ    LF452   
LF493: LDA    $CE     
       BEQ    LF454   
       LDY    #$08    
       INC    $DF     
       LDA    $DF     
       CMP    #$04    
       BCC    LF4A7   
       LDY    #$00    
       STY    $DF     
       STY    $CE     
LF4A7: LDA    $DF     
       LDX    #$0C    
       BNE    LF44E   
LF4AD: LDA    $F7     
       BEQ    LF52C   
       DEC    $F8     
       LDY    $F8     
       BNE    LF4BF   
       LDY    #$10    
       STY    $F8     
       LDA    #$00    
       STA    $F7     
LF4BF: LDA    #$05    
       LDX    #$09    
       BNE    LF50F   
LF4C5: LDA    $CF     
       BEQ    LF52C   
       INC    $EF     
       LDY    $EF     
       CPY    #$10    
       BNE    LF4D7   
       LDY    #$00    
       STY    $EF     
       STY    $CF     
LF4D7: LDA    #$08    
       LDX    #$08    
       BNE    LF50F   
LF4DD: LDA    $80     
       AND    #$07    
       TAX            
       LDA    $8B     
       EOR    #$FF    
       AND    #$F0    
       BEQ    LF4F0   
       TXA            
       ORA    #$04    
       JMP    LF4F1   
LF4F0: TXA            
LF4F1: ADC    #$1A    
       LDY    #$08    
       LDX    #$08    
       BNE    LF50F   
LF4F9: LDA    $AE     
       BEQ    LF52C   
       DEC    $B0     
       LDA    $B0     
       TAY            
       CPY    #$07    
       BCC    LF531   
       AND    #$01    
       BEQ    LF52D   
       LDX    #$06    
LF50C: TYA            
       LDY    #$0F    
LF50F: STX    AUDC1   
       STA    AUDF1   
       BIT    $D0     
       BMI    LF535   
       BVC    LF535   
       LDA    $8C     
       BEQ    LF535   
       LDA    $CC     
       ORA    $CD     
       BNE    LF535   
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF535   
LF52A: STY    AUDV1   
LF52C: RTS            

LF52D: LDX    #$00    
       BEQ    LF50C   
LF531: LDA    #$1F    
       STA    $B0     
LF535: LDY    #$00    
       STY    $AE     
       BEQ    LF52A   
LF53B: LDA    SWCHB   
       LSR            
       BCC    LF553   
       LSR            
       BCC    LF556   
       BIT    $D0     
       BMI    LF54A   
       BVS    LF54E   
LF54A: BIT    INPT4   
       BPL    LF553   
LF54E: LDA    #$00    
       STA    $91     
       RTS            

LF553: JMP    LFB3B   
LF556: INC    $90     
       LDA    $90     
       AND    #$3F    
       BEQ    LF562   
       LDA    $91     
       BNE    LF56A   
LF562: INC    $92     
       LDA    #$01    
       STA    $91     
       STA    $90     
LF56A: LDA    $92     
       AND    #$07    
       TAX            
       INX            
       STX    $EE     
       LDA    #$00    
       STA    $ED     
       STA    AUDV0   
       LDA    #$0A    
       STA    $83     
       LDA    #$28    
       STA    $CA     
       LDA    #$00    
       STA    $B5     
       STA    $D0     
       STA    $CD     
       STA    $CC     
       RTS            

LF58B: LDA    #$01    
       EOR    $82     
       STA    $82     
       TAX            
       LDA    $A8,X   
       STA    $A2     
       LDA    $B9,X   
       STA    $B8     
       LDX    #$03    
LF59C: LDA    $A0,X   
       JSR    LFA83   
       DEX            
       BPL    LF59C   
       LDA    #$2A    
       STA    $D3     
       LDA    $8C     
       BNE    LF5C6   
       LDA    $80     
       AND    #$10    
       BEQ    LF5B6   
       LDA    #$FC    
       BNE    LF5B8   
LF5B6: LDA    #$FD    
LF5B8: STA    $8F     
       LDA    $CC     
       BNE    LF5C6   
       LDA    #$01    
       STA    $8C     
       LDA    #$C0    
       STA    $C8     
LF5C6: LDA    #$49    
       STA    $A3     
       BIT    $D0     
       BMI    LF5DA   
       BVC    LF5DA   
       LDA    SWCHB   
       AND    #$08    
       BNE    LF5DA   
       JMP    LF68E   
LF5DA: INC    $8A     
       LDA    $82     
       BNE    LF5E4   
       LDY    #$C0    
       BNE    LF5E6   
LF5E4: LDY    #$D0    
LF5E6: STY    $9A     
       LDA    $CD     
       ORA    $CC     
       BNE    LF61A   
       BIT    $D0     
       BMI    LF5F4   
       BVS    LF5FA   
LF5F4: JSR    LF805   
       JMP    LF60D   
LF5FA: JSR    LF824   
       LDA    $81     
       CMP    #$10    
       BCS    LF60D   
       LDA    $80     
       AND    #$08    
       BNE    LF60D   
       LDY    $B5     
       STY    $D3     
LF60D: JSR    LF88B   
       JSR    LF9ED   
       LDA    $DA     
       BEQ    LF61A   
       JSR    LF9DA   
LF61A: JSR    LF79E   
       LDA    $CC     
       BNE    LF65F   
       JSR    LF945   
       JSR    LF95F   
       LDA    #$FF    
       STA    $E2     
       LDA    #$C7    
       STA    $E1     
       LDX    $AF     
       BNE    LF637   
       LDA    $CF     
       BNE    LF63C   
LF637: LDX    #$00    
       JSR    LF991   
LF63C: LDA    $AF     
       BEQ    LF644   
       LDA    $CF     
       BNE    LF64D   
LF644: LDX    #$01    
       LDA    #$CF    
       STA    $E1     
       JSR    LF991   
LF64D: LDA    $80     
       AND    #$10    
       BEQ    LF655   
       LDA    #$08    
LF655: STA    $87     
       JSR    LF9CD   
       JSR    LF97D   
       LDA    $CD     
LF65F: BNE    LF685   
       LDA    #$3F    
       AND    $8D     
       BNE    LF67F   
       LDA    $CC     
       BNE    LF67F   
       DEC    $81     
       BNE    LF67F   
       BIT    $D0     
       BMI    LF67B   
       BVC    LF67B   
       LDA    #$01    
       STA    $CD     
       BNE    LF67F   
LF67B: LDA    #$30    
       STA    $81     
LF67F: JSR    LFA33   
       JSR    LFA53   
LF685: JSR    LFA75   
       JSR    LF907   
       JSR    LF68F   
LF68E: RTS            

LF68F: LDA    $C5     
       BEQ    LF6E1   
       CMP    #$01    
       BNE    LF6B1   
       DEC    $C7     
       BEQ    LF6AB   
       LDA    #$45    
       STA    $A8     
       LDA    #$4D    
       STA    $A9     
       LDA    #$70    
       STA    $B9     
       STA    $BA     
       BNE    LF6E1   
LF6AB: INC    $C5     
       LDA    #$10    
       STA    $C7     
LF6B1: LDA    $C5     
       CMP    #$02    
       BNE    LF6CB   
       DEC    $C7     
       BNE    LF6E1   
       DEC    $A8     
       INC    $A9     
       LDA    #$10    
       STA    $C7     
       LDA    $A8     
       CMP    #$3D    
       BNE    LF6E1   
       INC    $C5     
LF6CB: LDA    $C5     
       CMP    #$03    
       BNE    LF6E1   
       LDA    $82     
       BNE    LF6E1   
       DEC    $B3     
       LDA    $B3     
       CMP    #$75    
       BCS    LF6E1   
       LDA    #$00    
       STA    $C5     
LF6E1: RTS            

LF6E2: BIT    CXM1P   
       BPL    LF6F3   
       LDA    #$71    
       STA    $B9     
       STA    $BA     
       LDX    #$00    
       STX    $DA     
       INX            
       STX    $AE     
LF6F3: RTS            

LF6F4: BIT    CXPPMM  
       BPL    LF70A   
       LDA    #$01    
       STA    $C5     
       LDA    #$10    
       STA    $C7     
       LDA    #$90    
       STA    $B3     
       LDA    #$70    
       STA    $B9     
       STA    $BA     
LF70A: RTS            

LF70B: LDA    $D8     
       BEQ    LF71A   
       LDA    $B1     
       CLC            
       ADC    #$03    
       STA    $B3     
       LDA    #$40    
       STA    $94     
LF71A: RTS            

LF71B: LDA    $D8     
       BEQ    LF758   
       LDA    $B3     
       CMP    #$50    
       BCS    LF758   
       LDA    $CD     
       BNE    LF758   
       LDA    #$00    
       STA    $8C     
       STA    $D8     
       STA    $DB     
       SED            
       CLC            
       LDA    $EE     
       ADC    #$01    
       STA    $EE     
       LDA    $ED     
       ADC    #$00    
       STA    $ED     
       CLD            
       LDA    #$01    
       STA    $CC     
       STA    $DD     
       LDA    $83     
       CMP    #$09    
       BCS    LF74E   
       INC    $83     
LF74E: INC    $88     
       LDA    #$07    
       CMP    $88     
       BCS    LF758   
       STA    $88     
LF758: RTS            

LF759: LDA    $C6     
       BEQ    LF783   
       LDA    $A4     
       CLC            
       ADC    #$0A    
       CMP    $A3     
       BCC    LF783   
       SBC    $A3     
       CMP    #$03    
       BCS    LF783   
       BIT    SWCHB   
       BVS    LF775   
       CMP    #$01    
       BNE    LF783   
LF775: LDA    $B3     
       SEC            
       SBC    $B1     
       AND    #$F8    
       BNE    LF783   
       LDA    #$01    
LF780: STA    $D8     
       RTS            

LF783: LDA    #$00    
       BEQ    LF780   
LF787: LDA    $D8     
       BNE    LF79D   
       LDA    #$80    
       CMP    $B9     
       BCS    LF799   
       CMP    $BA     
       BCS    LF799   
       LDA    #$01    
       BNE    LF79B   
LF799: LDA    #$00    
LF79B: STA    $C6     
LF79D: RTS            

LF79E: LDA    $D8     
       BNE    LF7CA   
       LDA    $C5     
       BNE    LF7CA   
       LDA    $80     
       AND    #$08    
       BNE    LF7B6   
       LDA    #$00    
       STA    $94     
       LDA    #$75    
       STA    $B3     
       BNE    LF7BE   
LF7B6: LDA    #$20    
       STA    $94     
       LDA    #$72    
       STA    $B3     
LF7BE: LDA    $C6     
       BNE    LF7CA   
       LDA    #$40    
       STA    $94     
       LDA    #$75    
       STA    $B3     
LF7CA: RTS            

LF7CB: SEC            
       LDA    $A4     
       SBC    #$03    
       STA    $E1     
       CLC            
       ADC    #$17    
       STA    $E2     
       CLC            
       LDA    $B4     
       ADC    #$0E    
       STA    $E3     
       ADC    #$13    
       STA    $E4     
       LDY    $A7     
       CPY    $E1     
       BCC    LF804   
       CPY    $E2     
       BCS    LF804   
       LDY    $B7     
       CPY    $E3     
       BCC    LF804   
       CPY    $E4     
       BCS    LF804   
       BIT    CXP0FB  
       BVS    LF7FE   
       BIT    CXP1FB  
       BVC    LF804   
LF7FE: LDA    #$01    
       STA    $CD     
       STA    $F6     
LF804: RTS            

LF805: LDA    $C9     
       BEQ    LF817   
       INC    $A4     
       LDA    $A4     
       CMP    #$70    
       BCC    LF823   
       LDA    #$00    
       STA    $C9     
       BEQ    LF823   
LF817: DEC    $A4     
       LDA    $A4     
       CMP    #$10    
       BCS    LF823   
       LDA    #$01    
       STA    $C9     
LF823: RTS            

LF824: LDY    #$00    
       ASL    $8B     
       BCS    LF832   
       LDA    $A4     
       CLC            
       ADC    LFF9D,Y 
       STA    $A4     
LF832: ASL    $8B     
       BCS    LF83E   
       LDA    $A4     
       SEC            
       SBC    LFF9D,Y 
       STA    $A4     
LF83E: ASL    $8B     
       BCS    LF84A   
       LDA    $B2     
       CLC            
       ADC    LFF95,Y 
       STA    $B2     
LF84A: ASL    $8B     
       BCS    LF856   
       LDA    $B2     
       SEC            
       SBC    LFF95,Y 
       STA    $B2     
LF856: LDY    #$07    
       CPY    $A4     
       BCC    LF85E   
       STY    $A4     
LF85E: LDY    #$78    
       CPY    $A4     
       BCS    LF866   
       STY    $A4     
LF866: LDY    #$07    
       CPY    $B2     
       BCC    LF86E   
       STY    $B2     
LF86E: LDY    #$3D    
       CPY    $B2     
       BCS    LF876   
       STY    $B2     
LF876: RTS            

LF877: LDA    $B2     
       CLC            
       ADC    #$10    
       STA    $B4     
       CLC            
       ADC    #$20    
       STA    $B1     
       LDA    $A4     
       CLC            
       ADC    #$0C    
       STA    $A5     
       RTS            

LF88B: LDA    $B7     
       LDY    $88     
       SEC            
       SBC    LFF95,Y 
       STA    $B7     
       LDA    $89     
       CMP    $8A     
       BNE    LF8A6   
       LDA    $A7     
       CLC            
       ADC    ($F0),Y 
       STA    $A7     
       LDA    #$00    
       STA    $8A     
LF8A6: LDA    $B7     
       CMP    #$07    
       BCC    LF8B6   
       LDA    $A7     
       CMP    #$01    
       BCC    LF8B6   
       CMP    #$98    
       BCC    LF8BA   
LF8B6: LDA    #$01    
       STA    $F6     
LF8BA: RTS            

LF8BB: LDA    $F6     
       BEQ    LF906   
       LDA    $CD     
       BNE    LF8CB   
       LDA    #$00    
       STA    $F6     
       LDA    #$01    
       STA    $CF     
LF8CB: LDA    #$92    
       STA    $B7     
       LDX    $82     
       STX    $AF     
       LDA    $D1,X   
       BEQ    LF8DF   
       LDA    #$01    
       STA    $F6     
       LDA    #$00    
       STA    $CF     
LF8DF: LDA    $A0,X   
       STA    $A7     
       LDA    LFF93,X 
       STA    $F0     
       INC    $89     
       LDA    $89     
       CMP    #$04    
       BCC    LF902   
       LDY    $88     
       CPY    #$02    
       BCC    LF8FE   
       CPY    #$04    
       BCS    LF8FE   
       LDA    #$02    
       BNE    LF900   
LF8FE: LDA    #$01    
LF900: STA    $89     
LF902: LDA    #$00    
       STA    $8A     
LF906: RTS            

LF907: LDA    $D1     
       BEQ    LF917   
       LDA    #$01    
       STA    $F7     
       DEC    $BE     
       BNE    LF917   
       LDA    #$00    
       STA    $D1     
LF917: LDA    $D2     
       BEQ    LF927   
       LDA    #$01    
       STA    $F7     
       DEC    $CB     
       BNE    LF927   
       LDA    #$00    
       STA    $D2     
LF927: RTS            

LF928: LDA    $B6     
       CMP    #$90    
       BCC    LF944   
       LDX    #$01    
LF930: LDA    $A6     
       SEC            
       SBC    $A0,X   
       AND    #$F8    
       BNE    LF93D   
       LDA    #$01    
       STA    $D1,X   
LF93D: DEX            
       BPL    LF930   
       LDA    #$00    
       STA    $DA     
LF944: RTS            

LF945: LDY    $88     
       LDA    LFFBD,Y 
       STA    $C0     
       STA    $C1     
       LDA    $D1     
       BEQ    LF956   
       LDA    #$00    
       STA    $C0     
LF956: LDA    $D2     
       BEQ    LF95E   
       LDA    #$00    
       STA    $C1     
LF95E: RTS            

LF95F: LDX    #$01    
LF961: TXA            
       ASL            
       TAY            
       LDA    $C0,X   
       CLC            
       ADC    #$01    
       AND    $80     
       BNE    LF974   
       LDA    #$60    
       STA.wy $0096,Y 
       BNE    LF979   
LF974: LDA    #$A0    
       STA.wy $0096,Y 
LF979: DEX            
       BPL    LF961   
       RTS            

LF97D: LDA    $CF     
       BEQ    LF990   
       LDA    $AF     
       TAY            
       ASL            
       TAX            
       LDA    LFFC5,Y 
       STA.wy $009C,Y 
       LDA    #$80    
       STA    $96,X   
LF990: RTS            

LF991: LDA    $80     
       AND    $C0,X   
       BNE    LF9CC   
       LDA    $85,X   
       BNE    LF9B0   
       INC    $A0,X   
       LDA    $A0,X   
       CMP    $AC,X   
       BCC    LF9CC   
       INC    $9E,X   
       LDY    $9E,X   
       LDA    ($E1),Y 
       STA    $AA,X   
       LDA    #$08    
       STA    $85,X   
       RTS            

LF9B0: DEC    $A0,X   
       LDA    $A0,X   
       CMP    $AA,X   
       BCS    LF9CC   
       INC    $9E,X   
       LDY    $9E,X   
       CPY    #$08    
       BCC    LF9C4   
       LDY    #$00    
       STY    $9E,X   
LF9C4: LDA    ($E1),Y 
       STA    $AC,X   
       LDA    #$00    
       STA    $85,X   
LF9CC: RTS            

LF9CD: LDA    $85     
       EOR    #$FF    
       STA    $9C     
       LDA    $86     
       EOR    #$FF    
       STA    $9D     
       RTS            

LF9DA: LDA    $B6     
       LDX    $88     
       CLC            
       ADC    LFF8B,X 
       STA    $B6     
       CMP    #$90    
       BCC    LF9EC   
       LDA    #$00    
       STA    $DA     
LF9EC: RTS            

LF9ED: LDA    $DA     
       BNE    LFA15   
       LDA    $A4     
       CLC            
       ADC    #$04    
       STA    $A6     
       LDA    $B4     
       CLC            
       ADC    #$1E    
       STA    $B6     
       BIT    $D0     
       BMI    LFA09   
       BVC    LFA09   
       BIT    INPT4   
       BMI    LFA15   
LFA09: LDA    #$01    
       STA    $DA     
       BIT    $D0     
       BMI    LFA15   
       BVC    LFA15   
       STA    $CE     
LFA15: RTS            

LFA16: LDX    #$01    
LFA18: LDA    $A6     
       SEC            
       SBC    $A8,X   
       BCC    LFA2F   
       AND    #$F8    
       BNE    LFA2F   
       LDA    $B6     
       CMP    $B9,X   
       BCC    LFA2F   
       LDA    #$00    
       STA    $DA     
       INC    $B9,X   
LFA2F: DEX            
       BPL    LFA18   
       RTS            

LFA33: LDA    $C5     
       BNE    LFA52   
       INC    $8D     
       LDA    $8D     
       AND    #$7F    
       BNE    LFA52   
       INC    $8E     
       LDA    $8E     
       LDX    $88     
       CMP    LFFAD,X 
       BCC    LFA52   
       INC    $A8     
       DEC    $A9     
       LDA    #$00    
       STA    $8E     
LFA52: RTS            

LFA53: INC    $BF     
       LDA    $BF     
       LDX    $88     
       CMP    LFFB5,X 
       BNE    LFA74   
       DEC    $B9     
       DEC    $BA     
       LDY    #$70    
       CPY    $B9     
       BCC    LFA6A   
       STY    $B9     
LFA6A: CPY    $BA     
       BCC    LFA70   
       STY    $BA     
LFA70: LDA    #$00    
       STA    $BF     
LFA74: RTS            

LFA75: LDA    $80     
       AND    #$08    
       BNE    LFA82   
       LDA    $B8     
       CLC            
       ADC    #$04    
       STA    $B8     
LFA82: RTS            

LFA83: CLC            
       ADC    #$01    
       SEC            
       LDY    #$FF    
LFA89: INY            
       SBC    #$0F    
       BCS    LFA89   
       STY    $F2,X   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F2,X   
       STA    $F2,X   
LFA9C: RTS            

LFA9D: STA    WSYNC   
       STA    HMCLR   
       LDX    #$04    
LFAA3: LDA    $A3,X   
       JSR    LFAB2   
       DEX            
       CPX    #$02    
       BCS    LFAA3   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFAB2: CLC            
       ADC    #$02    
       SEC            
       STA    WSYNC   
LFAB8: SBC    #$0F    
       BCS    LFAB8   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    RESP0,X 
       RTS            

LFAC9: LDA    $83     
       BNE    LFAE3   
       LDA    #$80    
       ORA    $D0     
       STA    $D0     
       LDA    #$0B    
       STA    $83     
       LDA    #$28    
       STA    $CA     
       LDA    #$00    
       STA    $B5     
       LDA    #$C0    
       STA    $C8     
LFAE3: RTS            

LFAE4: LDA    #$FF    
       STA    $F1     
       LDA    #$FE    
       STA    $97     
       STA    $99     
       LDX    #$FE    
       STX    $9B     
       LDA    #$FE    
       STA    $95     
       LDA    #$60    
       STA    $96     
       STA    $98     
       LDY    #$D0    
       STY    $9A     
       LDA    #$40    
       STA    $94     
       LDA    #$34    
       STA    $AC     
       LDA    #$90    
       STA    $AD     
       LDA    #$20    
       STA    $A0     
       LDA    #$80    
       STA    $A1     
       LDA    #$01    
       STA    $8C     
       STA    $CC     
       STA    $EE     
       LDA    #$C0    
       STA    $C8     
       LDA    #$30    
       STA    $81     
       LDA    #$58    
       STA    $BB     
       LDA    #$28    
       STA    $CA     
       LDA    #$A8    
       STA    $BD     
       LDA    #$E2    
       STA    $BC     
       LDA    #$0A    
       STA    $83     
       STA    $DD     
       RTS            

LFB3B: LDA    #$40    
       STA    $D0     
       LDA    #$01    
       STA    $8C     
       STA    $CC     
       LDA    $92     
       AND    #$07    
       STA    $88     
       LDA    #$C0    
       STA    $C8     
       LDA    #$1F    
       STA    $B0     
       LDA    #$10    
       STA    $F8     
       LDA    #$03    
       STA    $DD     
       STA    $83     
       LDA    #$00    
       STA    AUDV0   
       STA    $EE     
       STA    $ED     
       STA    $DB     
       STA    $D1     
       STA    $D2     
       STA    $DA     
       STA    $D8     
       STA    $C6     
       STA    $DE     
       STA    $CD     
       STA    $CE     
       STA    $CF     
       STA    $F7     
       STA    $C5     
       LDA    #$00    
       STA    $B5     
       RTS            

LFB82: LDA    #$FF    
       BIT    $C8     
       BEQ    LFBB6   
       BPL    LFB9A   
       LDA    #$30    
       STA    $81     
       LDA    #$75    
       STA    $B3     
       LDA    #$20    
       STA    $B2     
       LDA    #$40    
       STA    $A4     
LFB9A: BVC    LFBAA   
       LDA    #$70    
       STA    $B9     
       STA    $BA     
       LDA    #$3D    
       STA    $A8     
       LDA    #$55    
       STA    $A9     
LFBAA: LDA    #$01    
       STA    $F6     
       LDA    $CC     
       BNE    LFBB6   
       LDA    #$00    
       STA    $C8     
LFBB6: RTS            

LFBB7: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$FE,$7E,$3E,$1E,$0E,$0E,$06
       .byte $06,$06,$07,$07,$07,$07,$07,$07,$03,$03,$03,$03,$03,$03,$01,$01
       .byte $01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$03,$03,$03
       .byte $03,$07,$07,$07,$07,$06,$8D,$8B,$8F,$CF,$DF,$DF,$DF,$FF,$FF,$FE
       .byte $FE,$FE,$FE,$FC,$FC,$F8,$78,$70,$30,$7F,$FC,$FB,$F7,$7F,$DE,$BD
       .byte $7B,$F7,$CF,$B9,$58,$D8,$C8,$CC,$C6,$86,$82,$80,$00,$01,$01,$03
       .byte $03,$03,$03,$03,$05,$0E,$0F,$07,$01,$FF,$0F,$F7,$FB,$FB,$03,$FB
       .byte $FF,$FD,$FE,$FF,$7E,$39,$07,$07,$0F,$0F,$0F,$07,$06,$86,$CD,$FF
       .byte $F7,$EB,$EB,$DD,$BE,$7F,$FF,$F3,$F1,$DF,$BF,$70,$77,$B9,$DE,$EF
       .byte $EF,$F7,$F7,$7B,$BB,$BD,$AE,$AF,$6F,$6F,$5F,$7F,$EF,$E7,$C3,$C1
       .byte $C1,$80,$B0,$70,$F8,$C8,$84,$80,$00,$FF,$FF,$1E,$DC,$E8,$F0,$00
       .byte $E0,$F0,$FC,$FC,$FE,$FE,$FF,$7F,$BF,$DF,$FF,$FF,$FF,$FF,$FE,$FC
       .byte $F8,$F0,$00,$00,$00,$00,$00,$00,$00
LFCC0: .byte $F0,$90,$F0,$60,$F0,$D0,$F0,$B0,$F0,$50,$F0,$10,$F0,$B0,$F0,$C0
       .byte $F0,$A0,$F0,$A0,$F0,$70,$F0,$50,$F0,$10,$F0,$30,$F0,$E0,$F0,$F0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $F8,$7C,$3E,$1E,$0E,$0E,$06,$06,$06,$07,$07,$07,$07,$07,$07,$03
       .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$01,$01,$01,$00,$00,$00
       .byte $00,$00,$00,$00,$01,$01,$03,$03,$06,$07,$05,$07,$06,$8D,$8B,$8F
       .byte $CF,$DF,$DF,$DF,$FF,$FE,$FE,$FE,$FC,$FC,$F8,$F8,$F0,$F0,$60,$60
       .byte $1F,$3C,$7B,$F7,$EF,$DE,$BD,$7B,$F7,$CF,$BD,$78,$DC,$CE,$9F,$9F
       .byte $9F,$1F,$1E,$2D,$73,$7F,$3F,$0F,$01,$00,$00,$00,$00,$00,$00,$00
       .byte $EC,$17,$FB,$FD,$FE,$02,$FD,$FE,$FF,$FF,$F8,$77,$2F,$0F,$1F,$F8
       .byte $FF,$BD,$7B,$D7,$EE,$FE,$FC,$9C,$88,$00,$00,$00,$00,$00,$00,$00
       .byte $BF,$FF,$60,$77,$FB,$FC,$7F,$3F,$DF,$DF,$AF,$2F,$D7,$AF,$7B,$FD
       .byte $3E,$DF,$EF,$87,$07,$03,$03,$01,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $FF,$FE,$3C,$F8,$D0,$E0,$70,$A0,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$FF
       .byte $FF,$7F,$FF,$FF,$FF,$FF,$FE,$FE,$FC,$F8,$78,$00,$00,$00,$00,$00
LFDC0: .byte $01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00
       .byte $03,$07,$03,$21,$71,$DB,$EF,$FF,$CF,$EB,$A9,$E8,$29,$22,$04,$08
LFDE0: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C
       .byte $8C,$C8,$8B,$6B,$FA,$FA,$F6,$FE,$FC,$D0,$D0,$90,$10,$10,$10,$10
       .byte $09,$AF,$2B,$AF,$BD,$9B,$86,$4C,$3F,$36,$7C,$F8,$70,$38,$04,$3C
       .byte $40,$0E,$3F,$C7,$87,$76,$14,$04,$02,$02,$0E,$00,$00,$00,$00,$00
       .byte $09,$2F,$2B,$2F,$3D,$9B,$86,$FC,$1F,$36,$7C,$F8,$78,$3C,$02,$04
       .byte $1A,$17,$0F,$1F,$26,$6C,$48,$4E,$62,$20,$E0,$00,$00,$00,$00,$00
       .byte $09,$AF,$2B,$AF,$BD,$9B,$86,$4E,$3E,$37,$72,$F0,$70,$38,$04,$3C
       .byte $40,$0E,$3F,$C7,$87,$76,$14,$04,$02,$02,$0E,$00,$00,$00,$00,$00
       .byte $0F,$1C,$3C,$3F,$1C,$74,$87,$04,$1F,$05,$05,$05,$25,$22,$1D,$03
       .byte $06,$06,$7F,$07,$1F,$38,$2C,$67,$43,$61,$22,$30,$10,$10,$10,$70
       .byte $10,$10,$08,$08,$24,$24,$A8,$AC,$BC,$BE,$9C,$7E,$54,$2A,$15,$98
       .byte $CC,$36,$1A,$06,$0E,$7C,$0E,$7F,$8E,$EC,$28,$04,$02,$02,$04,$0C
       .byte $05,$0A,$1C,$3D,$3E,$1C,$75,$86,$34,$1E,$47,$65,$23,$1F,$03,$47
       .byte $27,$16,$0E,$07,$3F,$7F,$C7,$86,$6C,$28,$2C,$44,$06,$02,$02,$0E
       .byte $38,$38,$E0,$E0,$20,$20,$73,$73,$FE,$FE,$F8,$70,$20,$20,$70,$70
       .byte $E0,$E0,$38,$38,$20,$20,$73,$73,$FE,$FE,$F8,$70,$20,$20,$70,$70
LFEE0: .byte $08,$10,$51,$5A,$4A,$89,$49,$2A,$29,$A5,$85,$89,$4B,$4A,$9A,$92
       .byte $52,$5E,$3C,$3D,$8D,$5E,$5E,$5E,$3D,$1D,$4D,$9E,$BE,$7C,$39,$1E
       .byte $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$82,$82,$82,$F2,$9A,$9A,$F2
       .byte $6E,$A2,$AE,$6A,$0A,$00,$00,$94,$94,$F6,$95,$90,$F0,$60,$23,$55
       .byte $55,$25,$00,$00,$00,$53,$55,$55,$63,$01,$01,$01
LFF2C: .byte $39,$09,$10,$17,$1E,$25,$10,$54,$38,$10,$38,$54,$10,$00,$00,$00
       .byte $00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$3C,$46,$06,$0C,$06,$46
       .byte $3C,$66,$66,$3C,$66,$66,$3C,$46,$06,$3E,$66,$66,$3C,$66,$66,$7C
       .byte $60,$62,$3C,$18,$18,$08,$04,$02,$62,$7E,$60,$60,$3C,$06,$46,$7C
       .byte $46,$06,$7C,$60,$60,$7E,$18,$18,$18,$18,$78,$38,$0C,$0C,$7E,$4C
       .byte $2C,$1C,$0C
LFF7F: .byte $40,$71,$65,$46,$78,$6B,$58,$5F,$4C,$52,$39,$32
LFF8B: .byte $01,$01,$02,$02,$03,$03,$04,$04
LFF93: .byte $9D,$A5
LFF95: .byte $01,$01,$02,$02,$02,$02,$02,$02
LFF9D: .byte $01,$01,$02,$02,$02,$02,$02,$02,$FF,$FF,$FE,$FE,$FE,$FE,$FE,$FE
LFFAD: .byte $04,$03,$04,$03,$04,$03,$02,$01
LFFB5: .byte $7F,$5F,$3F,$37,$2F,$27,$1F,$1F
LFFBD: .byte $07,$03,$07,$03,$07,$03,$03,$01
LFFC5: .byte $08,$00,$34,$10,$2F,$03,$20,$14,$24,$02,$90,$70,$84,$62,$74,$5F
       .byte $8F,$66
LFFD7: .byte $1B,$1B,$14,$12,$10,$10,$10,$0F,$18,$18,$12
LFFE2: .byte $0C,$0C,$0C,$0C,$1C,$04,$04,$0C,$0C,$0C,$1C,$44,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$F0,$00,$F0
