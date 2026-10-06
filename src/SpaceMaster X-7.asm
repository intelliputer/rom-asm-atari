; Disassembly of roms/SpaceMaster X-7.bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/SpaceMaster X-7.bin
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
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP0FB  =  $32
CXP1FB  =  $33
CXM0FB  =  $34
CXM1FB  =  $35
CXBLPF  =  $36
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       DEX            
       TXS            
       LDA    INTIM   
       STA    $FD     
       ROR            
       ROR            
       STA    $C2     
       STX    $9A     
       DEX            
       STX    $A8     
       STX    $BE     
       DEX            
       STX    $B5     
       STX    $F8     
       STX    $E4     
       STX    $E6     
       STX    $E8     
       STX    $EA     
       STX    $EC     
       STX    $EE     
       DEX            
       STX    $90     
       LDA    #$E0    
       STA    $C3     
       LDA    #$80    
       STA    $84     
       LDA    SWCHB   
       AND    #$08    
       STA    $F9     
LF03F: LDX    #$2A    
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STX    TIM8T   
       LDX    #$02    
       LDY    #$08    
LF050: LDA    $E0,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ORA    #$80    
       STA.wy $00E3,Y 
       LDA    $E0,X   
       AND    #$F0    
       LSR            
       ORA    #$80    
       STA.wy $00E5,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LF050   
       LDX    #$08    
       LDY    #$D0    
LF071: LDA    $E5,X   
       CMP    #$80    
       BNE    LF07D   
       STY    $E5,X   
       DEX            
       DEX            
       BPL    LF071   
LF07D: LDX    #$2F    
LF07F: LDA    INTIM   
       BNE    LF07F   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       INC    $FB     
       BNE    LF099   
       INC    $D0     
       INC    $D0     
       BNE    LF099   
       LDA    #$01    
       STA    $D9     
LF099: LDA    $D9     
       BEQ    LF0A9   
       LDA    $FB     
       BNE    LF0A9   
       INC    $DB     
       LDA    $DB     
       ORA    #$08    
       STA    $DB     
LF0A9: LDA    SWCHB   
       AND    #$08    
       CMP    $F9     
       BEQ    LF0CD   
       LDA    $D9     
       BEQ    LF0BA   
       ORA    #$81    
       STA    $D9     
LF0BA: LDA    #$00    
       STA    AUDV1   
       STA    AUDV0   
       LDA    INPT4   
       BMI    LF0CA   
       LDA    $F9     
       EOR    #$08    
       STA    $F9     
LF0CA: JMP    LF6BE   
LF0CD: LDA    $D9     
       BPL    LF0D5   
       LDA    #$00    
       STA    $D9     
LF0D5: BNE    LF0DB   
       LDA    #$00    
       STA    $DB     
LF0DB: LDA    $84     
       BPL    LF0E8   
       DEC    $84     
       LDA    #$08    
       STA    $82     
       JMP    LF0FC   
LF0E8: LDA    $84     
       BEQ    LF0F0   
       LDA    INPT4   
       BPL    LF0F6   
LF0F0: LDA    SWCHB   
       LSR            
       BCS    LF12E   
LF0F6: LDA    #$00    
       STA    $84     
       STA    $82     
LF0FC: LDA    #$01    
       STA    $80     
       STA    $81     
       JSR    LFBC7   
       LDA    #$4E    
       STA    $C6     
       LDA    #$04    
       STA    $83     
       LDX    #$07    
       LDA    #$00    
LF111: STA    $91,X   
       STA    $88,X   
       STA    $A0,X   
       STA    $B6,X   
       STA    $AD,X   
       DEX            
       BPL    LF111   
       STA    AUDV0   
       STA    AUDV1   
       LDX    #$12    
LF124: STA    $D0,X   
       DEX            
       BPL    LF124   
       STA    CXCLR   
       JMP    LF6BE   
LF12E: LDA    $DE     
       BEQ    LF143   
       DEC    $DE     
       BNE    LF143   
       LDX    #$01    
       STX    $84     
       DEX            
       STX    AUDV0   
       STX    AUDV1   
       LDA    #$04    
       STA    $83     
LF143: LDA    $92     
       BEQ    LF14B   
       ORA    #$80    
       STA    $92     
LF14B: LDA    $97     
       BEQ    LF153   
       ORA    #$80    
       STA    $97     
LF153: LDA    $82     
       LSR            
       LSR            
       BNE    LF15C   
       JMP    LF1E4   
LF15C: CMP    #$08    
       BCC    LF162   
       LDA    #$07    
LF162: TAY            
       LDA    $EF     
       AND    LFD18,Y 
       CMP    LFD18,Y 
       BNE    LF1E4   
       LDA    $D5     
       BNE    LF1E4   
       LDA    $80     
       CMP    #$0C    
       BCC    LF1E4   
       LDA    $C6     
       CMP    #$42    
       BCS    LF1B6   
       CMP    #$3C    
       BCS    LF1E4   
       LDX    #$01    
LF183: LDA    $96,X   
       BNE    LF18C   
       DEX            
       BPL    LF183   
       BMI    LF198   
LF18C: DEC    $96,X   
       LDA    $96,X   
       CMP    #$C0    
       BCS    LF198   
       LDA    #$00    
       STA    $96,X   
LF198: LDX    #$01    
LF19A: LDA    $91,X   
       BNE    LF1A5   
       INX            
       CPX    #$03    
       BCC    LF19A   
       BCS    LF1E4   
LF1A5: INC    $91,X   
       JSR    LFBB1   
       LDA    $91,X   
       CMP    #$E0    
       BCC    LF1E4   
       LDA    #$00    
       STA    $91,X   
       BEQ    LF1E4   
LF1B6: LDX    #$02    
LF1B8: LDA    $91,X   
       BEQ    LF1C5   
       CMP    #$D1    
       BCS    LF1CB   
       DEX            
       BNE    LF1B8   
       BEQ    LF1CD   
LF1C5: LDA    #$E0    
       STA    $91,X   
       BMI    LF1CD   
LF1CB: DEC    $91,X   
LF1CD: LDX    #$05    
LF1CF: LDA    $91,X   
       BEQ    LF1DC   
       CMP    #$D0    
       BCC    LF1E2   
       INX            
       CPX    #$07    
       BCC    LF1CF   
LF1DC: LDA    #$C0    
       STA    $91,X   
       BMI    LF1E4   
LF1E2: INC    $91,X   
LF1E4: LDA    $92     
       AND    #$7F    
       STA    $92     
       LDA    $97     
       AND    #$7F    
       STA    $97     
       LDA    $80     
       CMP    #$0B    
       BNE    LF1FE   
       LDA    #$10    
       STA    $94     
       LDA    #$30    
       STA    $95     
LF1FE: LDA    $D8     
       BEQ    LF220   
       BPL    LF216   
       INC    $DC     
       INC    $DC     
       LDA    $DC     
       CMP    #$B0    
       BNE    LF220   
       LDA    #$00    
       STA    $D1     
       STA    $D8     
       BEQ    LF220   
LF216: DEC    $D8     
       BNE    LF220   
       DEC    $D8     
       LDA    #$A0    
       STA    $DC     
LF220: JSR    LFBA2   
       CMP    #$F0    
       BCC    LF289   
       LDA    $D1     
       ORA    $D8     
       ORA    $D5     
       ORA    $DE     
       BNE    LF289   
       JSR    LFBA2   
       AND    #$07    
       TAY            
       LDA    LFFF0,Y 
       STA    $DC     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $82     
       CMP    LFBF1,X 
       BCS    LF24D   
       LDA    #$00    
       STA    $DC     
LF24D: LDA    #$40    
       STA    $FC     
       JSR    LFBA2   
       AND    #$07    
       TAY            
       LDA    LFDF0,Y 
       STA    $CC     
       LDA    LFDF8,Y 
       STA    $CD     
       JSR    LFBA2   
       STA    $C8     
       JSR    LFBA2   
       STA    $C9     
       LDA    $82     
       LSR            
       LSR            
       CMP    #$08    
       BCC    LF275   
       LDA    #$07    
LF275: TAY            
       LDA    LFD10,Y 
       STA    $D1     
       LDA    #$00    
       STA    $9F     
       STA    $9E     
       LDA    #$3E    
       STA    $CE     
       LDA    #$38    
       STA    $CF     
LF289: LDA    $D6     
       BEQ    LF28F   
       DEC    $D6     
LF28F: LDA    $84     
       BEQ    LF296   
       JMP    LF324   
LF296: LDA    $80     
       STA    AUDV0   
       LSR            
       LSR            
       EOR    #$07    
       STA    AUDF0   
       LDA    #$08    
       STA    AUDC0   
       LDA    $D2     
       BEQ    LF2BC   
       LDA    $C1     
       EOR    $C0     
       ORA    #$10    
       STA    AUDF0   
       LDA    $EF     
       LSR            
       LSR            
       ORA    #$0C    
       STA    AUDV0   
       LDA    #$0D    
       STA    AUDC0   
LF2BC: LDA    $D7     
       ORA    $D8     
       BEQ    LF2CE   
       LSR            
       LSR            
       STA    AUDV0   
       ORA    #$10    
       STA    AUDF0   
       LDA    #$07    
       STA    AUDC0   
LF2CE: LDA    $D1     
       BEQ    LF2E1   
       LDA    $DC     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC1   
       ASL            
       ORA    $D1     
       STA    AUDF1   
       EOR    $EF     
LF2E1: STA    AUDV1   
       LDA    $D5     
       ORA    $D6     
       BEQ    LF2FE   
       LSR            
       LSR            
       LSR            
       ORA    #$08    
       STA    AUDV1   
       LSR            
       STA    AUDV0   
       STA    AUDF0   
       ASL            
       STA    AUDF1   
       LDA    #$07    
       STA    AUDC0   
       STA    AUDC1   
LF2FE: LDA    $DF     
       BEQ    LF30C   
       STA    AUDV0   
       LDA    #$1C    
       STA    AUDC0   
       STA    AUDF0   
       DEC    $DF     
LF30C: LDA    $DE     
       BEQ    LF324   
       LSR            
       STA    AUDV0   
       LSR            
       STA    AUDV1   
       LSR            
       STA    AUDF0   
       LSR            
       STA    AUDF1   
       LDA    #$07    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDC1   
LF324: LDA    CXP1FB  
       ASL            
       BPL    LF34A   
       LDA    $DC     
       CMP    #$A0    
       BCS    LF34A   
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFEE0,Y 
       STA    $9B     
       LDA    LFEE8,Y 
       STA    $9C     
       JSR    LFD40   
       LDA    #$10    
       STA    $D8     
       LDA    #$C0    
       STA    $DC     
LF34A: LDA    $D7     
       ORA    $D5     
       BNE    LF374   
       LDA    $D4     
       BPL    LF35A   
       LDA    #$00    
       STA    $D1     
       BEQ    LF370   
LF35A: LDA    $D8     
       BNE    LF374   
       LDA    CXPPMM  
       BPL    LF374   
       LDA    $DC     
       CMP    #$A0    
       BCS    LF374   
       LDA    #$C0    
       STA    $DC     
       LDA    #$10    
       STA    $D8     
LF370: LDA    #$3F    
       STA    $D7     
LF374: LDA    CXM0FB  
       ORA    CXM1FB  
       ASL            
       BPL    LF382   
       LDA    #$00    
       STA    $D2     
       JSR    LFBB1   
LF382: LDA    $84     
       BEQ    LF38E   
       LDA    $EF     
       AND    #$7F    
       CMP    #$7F    
       BEQ    LF3A0   
LF38E: LDA    CXBLPF  
       BPL    LF3E3   
       LDA    #$00    
       STA    $D2     
       LDA    $C1     
       CMP    #$48    
       BCS    LF3E3   
       CMP    #$2F    
       BCC    LF3E3   
LF3A0: LDA    $D6     
       BNE    LF3A8   
       LDA    #$18    
       STA    $D6     
LF3A8: LDA    #$25    
       STA    $9B     
       LDA    #$00    
       STA    $9C     
       JSR    LFD40   
       DEC    $C6     
       LDA    $C6     
       CMP    #$30    
       BCS    LF3E3   
       LDA    #$30    
       STA    $C6     
       LDA    $D5     
       BNE    LF3E3   
       LDA    #$FE    
       STA    $D5     
       LDA    #$00    
       STA    $D1     
       LDA    $84     
       BNE    LF3E3   
       SED            
       LDA    $DA     
       CLC            
       ADC    #$01    
       STA    $DA     
       CLD            
       INC    $82     
       LSR            
       BCS    LF3E3   
       INC    $83     
       LDA    #$40    
       STA    $DF     
LF3E3: LDA    $D7     
       BEQ    LF3F8   
       DEC    $D7     
       BNE    LF3F8   
       JSR    LFBC7   
       DEC    $83     
       BPL    LF3F8   
       INC    $83     
       LDA    #$F0    
       STA    $DE     
LF3F8: LDA    $84     
       BEQ    LF403   
       LDA    $EF     
       EOR    $C0     
       JMP    LF406   
LF403: LDA    SWCHA   
LF406: STA    $9B     
       AND    #$F0    
       CMP    #$F0    
       BEQ    LF462   
       AND    #$C0    
       BEQ    LF462   
       LDA    $9B     
       AND    #$30    
       BEQ    LF462   
       LDA    $9B     
       STA    $C3     
       LDA    $84     
       BNE    LF426   
       LDA    #$00    
       STA    $D0     
       STA    $D9     
LF426: BIT    INPT4   
       BPL    LF462   
       LDA    $D7     
       ORA    $DE     
       BNE    LF462   
       LDA    $9B     
       AND    #$10    
       BNE    LF440   
       INC    $AB     
       LDA    $AB     
       CMP    #$70    
       BCC    LF440   
       DEC    $AB     
LF440: LDA    $9B     
       AND    #$20    
       BNE    LF44C   
       DEC    $AB     
       BNE    LF44C   
       INC    $AB     
LF44C: LDA    $9B     
       BMI    LF456   
       INC    $AA     
       BPL    LF456   
       DEC    $AA     
LF456: LDA    $9B     
       AND    #$40    
       BNE    LF462   
       DEC    $AA     
       BPL    LF462   
       INC    $AA     
LF462: LDA    $D2     
       ORA    $D7     
       ORA    $DE     
       BNE    LF4AA   
       LDA    $84     
       BEQ    LF477   
       LDA    $FD     
       CMP    #$F0    
       BCC    LF4AA   
       JMP    LF481   
LF477: LDA    INPT4   
       BMI    LF4AA   
       LDA    #$00    
       STA    $D0     
       STA    $D9     
LF481: LDA    $C3     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       STA    $D2     
       DEC    $C2     
       TAX            
       LDA    LFD20,X 
       STA    $C4     
       LDA    LFBE2,X 
       STA    $C5     
       LDA    $AB     
       BIT    $C4     
       BEQ    LF4A1   
       SEC            
       SBC    #$02    
LF4A1: STA    $C1     
       LDA    $AA     
       CLC            
       ADC    #$03    
       STA    $C0     
LF4AA: LDA    $D2     
       BEQ    LF4F4   
       STA    $9B     
       LSR    $9B     
       BCC    LF4C1   
       LDA    $C1     
       CLC            
       ADC    #$04    
       STA    $C1     
       BPL    LF4C1   
       LDA    #$00    
       STA    $D2     
LF4C1: LSR    $9B     
       BCC    LF4D2   
       LDA    $C1     
       SEC            
       SBC    #$04    
       STA    $C1     
       BPL    LF4D2   
       LDA    #$00    
       STA    $D2     
LF4D2: LSR    $9B     
       BCC    LF4E3   
       LDA    $C0     
       SEC            
       SBC    #$04    
       STA    $C0     
       BPL    LF4E3   
       LDA    #$00    
       STA    $D2     
LF4E3: LSR    $9B     
       BCC    LF4F4   
       LDA    $C0     
       CLC            
       ADC    #$04    
       STA    $C0     
       BPL    LF4F4   
       LDA    #$00    
       STA    $D2     
LF4F4: INC    $EF     
       LDA    $82     
       LSR            
       LSR            
       CMP    #$08    
       BCC    LF500   
       LDA    #$07    
LF500: TAY            
       LDA    $EF     
       AND    LFED0,Y 
       CMP    LFED0,Y 
       BNE    LF529   
       LDA    $EF     
       STA    $CA     
       LDA    $80     
       CLC            
       ADC    $81     
       STA    $80     
       CMP    #$3F    
       BEQ    LF522   
       CMP    #$0C    
       BNE    LF529   
       LDA    $81     
       BPL    LF529   
LF522: LDA    #$00    
       SEC            
       SBC    $81     
       STA    $81     
LF529: LDA    #$7F    
       SEC            
       SBC    $80     
       JSR    LFB8D   
       STA    $86     
       LDA    $80     
       JSR    LFB8D   
       STA    $87     
       LDA    #$00    
       SEC            
       SBC    $80     
       STA    $85     
       LDA    $D8     
       BNE    LF54F   
       LDA    $D1     
       BEQ    LF54F   
       CMP    #$01    
       BEQ    LF552   
       DEC    $D1     
LF54F: JMP    LF62B   
LF552: LDA    $DC     
       CMP    #$20    
       BEQ    LF582   
       CMP    #$60    
       BEQ    LF582   
       CMP    #$80    
       BNE    LF5C0   
       LDA    $EF     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$03    
       TAY            
       LDA    LFD38,Y 
       STA    $9B     
       LDA    LFD3C,Y 
       STA    $9C     
       LDY    $FC     
       LDA    $EF     
       AND    #$03    
       CMP    #$03    
       BNE    LF57F   
       DEC    $FC     
LF57F: JMP    LF59C   
LF582: LDA    $AA     
       STA    $9B     
       LDA    $AB     
       STA    $9C     
       LDA    $82     
       CLC            
       ADC    #$03    
       LSR            
       LSR            
       CMP    #$08    
       BCC    LF597   
       LDA    #$07    
LF597: TAY            
       LDA    LFD00,Y 
       TAY            
LF59C: LDX    #$01    
LF59E: LDA    $CE,X   
       CMP    $9B,X   
       BEQ    LF5BD   
       BCC    LF5B3   
       LDA    $CC,X   
       CMP    #$FE    
       BEQ    LF5BD   
       TYA            
       JSR    LFEF0   
       JMP    LF5BD   
LF5B3: LDA    $CC,X   
       CMP    #$02    
       BEQ    LF5BD   
       TYA            
       JSR    LFD64   
LF5BD: DEX            
       BPL    LF59E   
LF5C0: LDA    $C8     
       CLC            
       ADC    $9E     
       STA    $9E     
       LDA    $CC     
       ADC    $CE     
       STA    $CE     
       BPL    LF5F4   
       LDA    $DC     
       CMP    #$60    
       BEQ    LF5D9   
       CMP    #$40    
       BNE    LF5F0   
LF5D9: LDA    #$00    
       SEC            
       SBC    $C8     
       STA    $C8     
       LDA    #$00    
       SBC    $CC     
       STA    $CC     
       LDA    #$FF    
       SEC            
       SBC    $CE     
       STA    $CE     
       JMP    LF5F4   
LF5F0: LDA    #$00    
       STA    $D1     
LF5F4: LDA    $C9     
       CLC            
       ADC    $9F     
       STA    $9F     
       LDA    $CD     
       ADC    $CF     
       STA    $CF     
       BMI    LF60B   
       CMP    #$72    
       BCC    LF62B   
       DEC    $CF     
       DEC    $CF     
LF60B: LDA    $DC     
       CMP    #$60    
       BEQ    LF615   
       CMP    #$40    
       BNE    LF627   
LF615: LDA    #$00    
       SEC            
       SBC    $C9     
       STA    $C9     
       LDA    #$00    
       SBC    $CD     
       STA    $CD     
       INC    $CF     
       JMP    LF62B   
LF627: LDA    #$00    
       STA    $D1     
LF62B: LDA    $D5     
       BNE    LF632   
       JMP    LF6BE   
LF632: CMP    #$E0    
       BNE    LF63C   
       LDA    #$70    
       STA    $93     
       STA    $96     
LF63C: CMP    #$D0    
       BNE    LF646   
       LDA    #$90    
       STA    $92     
       STA    $97     
LF646: CMP    #$C0    
       BNE    LF650   
       LDA    #$B0    
       STA    $91     
       STA    $98     
LF650: LDX    #$03    
LF652: LDA    $91,X   
       AND    #$F0    
       STA    $9B     
       LDA    $91,X   
       CLC            
       ADC    #$01    
       AND    #$0F    
       ORA    $9B     
       STA    $91,X   
       DEX            
       BPL    LF652   
       LDX    #$03    
LF668: LDA    $95,X   
       AND    #$F0    
       STA    $9B     
       LDA    $95,X   
       SEC            
       SBC    #$01    
       AND    #$0F    
       ORA    $9B     
       STA    $95,X   
       DEX            
       BPL    LF668   
       LDA    $D5     
       CMP    #$A0    
       BCS    LF6A2   
       AND    #$0F    
       CMP    #$0E    
       BNE    LF6A2   
       LDA    #$00    
       STA    $9B     
       STA    $9C     
       LDY    $82     
LF690: LDA    $9C     
       SED            
       CLC            
       ADC    #$01    
       STA    $9C     
       CLD            
       DEY            
       DEY            
       DEY            
       DEY            
       BPL    LF690   
       JSR    LFD40   
LF6A2: DEC    $D5     
       DEC    $D5     
       BNE    LF6BE   
       LDA    #$00    
       LDX    #$07    
LF6AC: STA    $91,X   
       DEX            
       BPL    LF6AC   
       LDA    #$4E    
       STA    $C6     
       LDA    #$01    
       STA    $81     
       STA    $80     
       JSR    LFBC7   
LF6BE: LDA    $C6     
       JSR    LFB8D   
       STA    $FA     
       LDX    #$07    
LF6C7: LDA    #$00    
       STA    $A0,X   
       STA    $B6,X   
       STA    $88,X   
       STA    $AD,X   
       LDA    #$10    
       STA    $F0,X   
       DEX            
       BPL    LF6C7   
       LDA    $AA     
       JSR    LFB8D   
       STA    $AC     
       LDA    $AB     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $AB     
       AND    #$0F    
       TAY            
       LDA    LFCF0,Y 
       LDY    $D7     
       BEQ    LF705   
       STA    $9B     
       TYA            
       AND    #$03    
       CMP    #$03    
       BNE    LF701   
       LDA    $9B     
       ORA    #$60    
       BNE    LF705   
LF701: LDA    $9B     
       ORA    #$80    
LF705: STA    $A0,X   
       EOR    #$10    
       INX            
       CPX    #$08    
       BCS    LF710   
       STA    $A0,X   
LF710: LDA    $C0     
       JSR    LFB8D   
       STA    $BF     
       LDA    $D2     
       BEQ    LF739   
       LDA    $C1     
       BMI    LF739   
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $C1     
       AND    #$0F    
       TAY            
       LDA    LFCF0,Y 
       ORA    $C5     
       STA    $B6,X   
       INX            
       CPX    #$08    
       BCS    LF739   
       EOR    #$10    
       STA    $B6,X   
LF739: LDA    $D1     
       BEQ    LF772   
       LDA    $CE     
       JSR    LFB8D   
       STA    $CB     
       LDA    $CF     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $CF     
       AND    #$0F    
       TAY            
       LDA    LFCF0,Y 
       ORA    $DC     
       STA    $88,X   
       INX            
       CPX    #$08    
       BCS    LF760   
       EOR    #$10    
       STA    $88,X   
LF760: LDA    $D8     
       BPL    LF772   
       DEX            
       LDA    $DC     
       STA    $88,X   
       INX            
       CPX    #$08    
       BCS    LF772   
       EOR    #$0F    
       STA    $88,X   
LF772: LDA    $D5     
       BEQ    LF779   
       JMP    LF822   
LF779: LDA    $80     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $80     
       AND    #$0F    
       STA    $B1,X   
       LDA    #$10    
LF788: DEX            
       BMI    LF78F   
       STA    $B1,X   
       BPL    LF788   
LF78F: LDA    $B4     
       STA    $AD     
       LDA    $B3     
       STA    $AE     
       LDA    $B2     
       STA    $AF     
       LDA    $B1     
       STA    $B0     
       LDA    $80     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $B1,X   
       EOR    #$1F    
       STA    $B1,X   
       LDA    SWCHB   
       AND    #$08    
       CMP    $F9     
       BNE    LF7FE   
       LDA    $80     
       CMP    #$0C    
       BCS    LF7BE   
       JMP    LF822   
LF7BE: LDA    $82     
       CLC            
       ADC    #$02    
       LSR            
       LSR            
       CMP    #$08    
       BCC    LF7CB   
       LDA    #$07    
LF7CB: TAY            
       LDA    $EF     
       AND    LFED8,Y 
       CMP    LFED8,Y 
       BNE    LF7FE   
       LDA    $C7     
       BMI    LF7ED   
       INC    $D3     
       BMI    LF7FE   
       LDA    $D3     
       CLC            
       ADC    #$11    
       CMP    $80     
       BCC    LF7FE   
       LDA    #$FF    
       STA    $C7     
       BMI    LF7FE   
LF7ED: DEC    $D3     
       BPL    LF7FE   
       LDA    $D3     
       SEC            
       SBC    #$02    
       CMP    $85     
       BCS    LF7FE   
       LDA    #$00    
       STA    $C7     
LF7FE: LDA    $D3     
       CLC            
       ADC    #$40    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       CPX    #$08    
       BCS    LF822   
       LDA    $D3     
       AND    #$0F    
       TAY            
       LDA    LFCF0,Y 
       CLC            
       ADC    #$10    
       STA    $F0,X   
       INX            
       CPX    #$08    
       BCS    LF822   
       EOR    #$10    
       STA    $F0,X   
LF822: STA    WSYNC   
       BIT    $FF     
       NOP            
       ROL    LF000,X 
       LDA    $86     
       STA    HMM0    
       AND    #$0F    
       TAX            
LF831: DEX            
       BPL    LF831   
       STA    RESM0   
       STA    WSYNC   
       BIT    $FF     
       NOP            
       ROL    LF000,X 
       LDA    $87     
       STA    HMM1    
       AND    #$0F    
       TAX            
LF845: DEX            
       BPL    LF845   
       STA    RESM1   
       STA    WSYNC   
       NOP            
       NOP            
       ROL    LF000,X 
       LDA    $BF     
       STA    HMBL    
       AND    #$0F    
       TAX            
LF858: DEX            
       BPL    LF858   
       STA    RESBL   
       LDX    $D2     
       LDA    LFBD7,X 
       STA    CTRLPF  
       LDA    #$FF    
       STA    $A9     
       LDA    $D9     
       BEQ    LF874   
       LDA    #$F7    
       STA    $A9     
       AND    $CA     
       STA    $CA     
LF874: LDA    INTIM   
       BNE    LF874   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$52    
       EOR    $DB     
       EOR    $D7     
       AND    $A9     
       STA    COLUBK  
       STA    CXCLR   
       STA    WSYNC   
       LDX    #$05    
LF88D: DEX            
       BNE    LF88D   
       LDA    #$10    
       STA    HMP1    
       ROL    LF000,X 
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$28    
       EOR    $DB     
       EOR    $D5     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$07    
       STA    $9C     
       STA    VDELP0  
       STA    VDELP1  
LF8B7: LDY    $9C     
       LDA    ($E3),Y 
       STA    $9B     
       STA    WSYNC   
       LDA    ($E5),Y 
       TAX            
       LDA    ($ED),Y 
       STA    GRP0    
       LDA    ($EB),Y 
       STA    GRP1    
       BIT    $FF     
       LDA    ($E9),Y 
       STA    GRP0    
       LDA    ($E7),Y 
       LDY    $9B     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $9C     
       BPL    LF8B7   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    HMCLR   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $CA     
       ORA    #$08    
       EOR    #$F0    
       EOR    $DB     
       STA    COLUP0  
       EOR    #$C0    
       STA    COLUP1  
       STA    WSYNC   
       LDA    $EF     
       STA    REFP1   
       BIT    $FF     
       NOP            
       LDA    $AC     
       STA    HMP0    
       AND    #$0F    
       TAX            
LF90A: DEX            
       BPL    LF90A   
       STA    RESP0   
       STA    WSYNC   
       NOP            
       NOP            
       ROL    LF000,X 
       LDA    $CB     
       STA    HMP1    
       AND    #$0F    
       TAX            
LF91D: DEX            
       BPL    LF91D   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$32    
       EOR    $DB     
       EOR    $D8     
       AND    $A9     
       STA    COLUBK  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF0     
       LDA    $D6     
       ORA    $DE     
       EOR    $DB     
       AND    $A9     
       STA    COLUBK  
       LDA    $CA     
       EOR    $DB     
       EOR    $D5     
       AND    $A9     
       STA    COLUPF  
       LDX    #$07    
       LDA    #$10    
       STA    HMM0    
       LDA    #$F0    
       STA    HMM1    
       LDA    $98     
       STA    $99     
       LDA    $B4     
       STA    $B4     
       LDA    $F7     
       STA    $F7     
       LDY    #$0F    
LF968: STA    WSYNC   
LF96A: STA    HMOVE   
       LDA    ($A7),Y 
       STA    GRP0    
       LDA    ($8F),Y 
       STA    GRP1    
       LDA    ($B4),Y 
       AND    ($F7),Y 
       STA    ENAM0   
       STA    ENAM1   
       LDA    ($99),Y 
       STA    PF2     
       LDA    ($BD),Y 
       STA    ENABL   
       STA    HMP1    
       BEQ    LF98C   
       LDA    $C4     
       STA    HMBL    
LF98C: DEY            
       BNE    LF968   
       LDA    $90,X   
       STA    $99     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($A7),Y 
       STA    GRP0    
       LDA    ($8F),Y 
       STA    GRP1    
       LDA    $EF,X   
       STA    $F7     
       LDA    LFD07,X 
       STA    HMM0    
       EOR    #$E0    
       STA    HMM1    
       LDA    $9F,X   
       STA    $A7     
       LDA    $B5,X   
       STA    $BD     
       LDA    $87,X   
       STA    $8F     
       LDA    $AC,X   
       STA    $B4     
       LDY    #$0F    
       NOP            
       DEX            
       BPL    LF96A   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    PF2     
       STA    COLUPF  
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       LDA    #$66    
       EOR    $DB     
       EOR    $D8     
       AND    $A9     
       STA    COLUBK  
       LDA    #$00    
       STA    GRP1    
       LDA    CXM0P   
       ASL            
       ORA    CXM1P   
       ORA    CXP0FB  
       STA    $D4     
       STA    WSYNC   
       LDA    #$F0    
       STA    HMM0    
       LDX    #$05    
LF9F3: DEX            
       BPL    LF9F3   
       BIT    $FF     
       STA    RESM0   
       STA    WSYNC   
       LDA    #$00    
       EOR    $DB     
       AND    $A9     
       STA    COLUBK  
       STA    PF0     
       STA    WSYNC   
       LDA    #$30    
       STA    HMP0    
       LDX    #$05    
LFA0E: DEX            
       BPL    LFA0E   
       BIT    $FF     
       STA    RESP0   
       STA    WSYNC   
       BIT    $FF     
       NOP            
       ROL    LF000,X 
       LDA    $FA     
       STA    HMM1    
       AND    #$0F    
       TAX            
LFA24: DEX            
       BPL    LFA24   
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$28    
       EOR    $DB     
       STA    COLUPF  
       STA    COLUP0  
       LDA    #$F0    
       STA    PF2     
       LDA    #$02    
       STA    NUSIZ0  
       LDA    #$FF    
       STA    ENAM0   
       LDA    #$F8    
       EOR    $DB     
       STA    COLUP1  
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$00    
       STA    PF2     
       LDA    $C6     
       CMP    #$40    
       BCS    LFA61   
       SEC            
       SBC    #$30    
       TAX            
       LDA    #$F0    
       STA    $9D     
       BMI    LFA6B   
LFA61: EOR    #$0F    
       AND    #$0F    
       TAX            
       DEX            
       LDA    #$10    
       STA    $9D     
LFA6B: LDA    LFEB0,X 
       STA    $9B     
       LDA    LFEC0,X 
       STA    $9C     
       STA    WSYNC   
       LDY    #$07    
       LDA    #$00    
       STA    REFP1   
LFA7D: STA    WSYNC   
       STA    HMOVE   
       LDA    LFD70,Y 
       STA    GRP0    
       LDA    #$00    
       ASL    $9B     
       BCC    LFA91   
       LDA    $9D     
       JMP    LFA94   
LFA91: ROL    LF000,X 
LFA94: STA    HMM1    
       CPY    #$06    
       BNE    LFA9E   
       LDA    #$FF    
       STA    ENAM1   
LFA9E: LDA    LFD78,Y 
       ROL    LF000,X 
       STA    GRP0    
       DEY            
       BPL    LFA7D   
       LDY    #$07    
LFAAB: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       LSR    $9C     
       BCC    LFAB7   
       LDA    $9D     
LFAB7: ROL    LF000,X 
       STA    HMM1    
       DEY            
       BPL    LFAAB   
       STA    WSYNC   
       LDA    #$F0    
       STA    PF2     
       LDA    #$00    
       STA    ENAM1   
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    PF2     
       STA    NUSIZ0  
       LDA    #$18    
       EOR    $DB     
       STA    COLUP1  
       EOR    $DF     
       STA    COLUP0  
       STA    RESP0   
       LDA    $DA     
       AND    #$0F    
       STA    $9C     
       LDA    #$02    
       STA    $E3     
       LDA    $DA     
       STA.w  $0014   
       AND    #$F0    
       STA    RESP1   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E5     
       LDA    #$71    
       STA    CTRLPF  
       STA    WSYNC   
       LDA    #$00    
       EOR    $DB     
       AND    $A9     
       STA    WSYNC   
       STA    COLUPF  
       LDA    #$FF    
       STA    PF0     
       LDA    #$32    
       EOR    $DB     
       EOR    $D7     
       AND    $A9     
       STA    COLUBK  
       LDA    $83     
       CMP    #$0A    
       BCC    LFB1E   
       LDA    #$09    
LFB1E: STA    $9B     
LFB20: STA    WSYNC   
       LDA    #$00    
       STA    ENABL   
       LDA    $E5     
       BMI    LFB30   
       BEQ    LFB30   
       LDA    #$FF    
       STA    ENABL   
LFB30: LDX    $9C     
       LDA    LFDE6,X 
       STA    NUSIZ1  
       LDX    $9B     
       LDA    LFDE6,X 
       STA    NUSIZ0  
       LDY    #$03    
LFB40: STA    WSYNC   
       LDA    $9B     
       BEQ    LFB4D   
       BMI    LFB4D   
       LDA    LFFF8,Y 
       STA    GRP0    
LFB4D: LDA    $9C     
       BEQ    LFB58   
       BMI    LFB58   
       LDA    LFBED,Y 
       STA    GRP1    
LFB58: DEY            
       BPL    LFB40   
       LDA    #$00    
       STA    ENABL   
       LDA    $9B     
       SEC            
       SBC    #$03    
       STA    $9B     
       LDA    $9C     
       SEC            
       SBC    #$03    
       STA    $9C     
       DEC    $E5     
       DEC    $E3     
       BPL    LFB20   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       EOR    $DB     
       AND    $A9     
       STA    COLUBK  
       LDY    #$19    
LFB85: STA    WSYNC   
       DEY            
       BPL    LFB85   
       JMP    LF03F   
LFB8D: LDX    #$00    
LFB8F: CMP    #$0F    
       BCC    LFB99   
       SEC            
       SBC    #$0F    
       INX            
       BNE    LFB8F   
LFB99: STX    $9B     
       TAX            
       LDA    LFDD8,X 
       ORA    $9B     
       RTS            

LFBA2: LDA    $C2     
       LSR            
       LDA    $FD     
       ROR            
       EOR    $C2     
       LDY    $FD     
       STA    $FD     
       STY    $C2     
       RTS            

LFBB1: LDA    $DD     
       CLC            
       ADC    #$40    
       STA    $DD     
       BCC    LFBC6   
       INC    $C6     
       LDA    $C6     
       CMP    #$4F    
       BCC    LFBC6   
       LDA    #$4E    
       STA    $C6     
LFBC6: RTS            

LFBC7: LDA    $FD     
       AND    #$03    
       TAX            
       LDA    LFD30,X 
       STA    $AA     
       LDA    LFD34,X 
       STA    $AB     
       RTS            

LFBD7: .byte $11,$11,$11,$11,$31,$11,$11,$11,$31,$11,$11
LFBE2: .byte $20,$40,$40,$20,$20,$40,$40,$20,$20,$40,$40
LFBED: .byte $00,$18,$3C,$18
LFBF1: .byte $00,$02,$04,$08,$06,$3C,$18,$00,$02,$04,$08,$06,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$02,$44,$28,$98,$66,$24,$52,$92,$89,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$08,$30,$0E,$70,$0C,$10,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$18,$60,$80,$60,$18,$06,$01,$06,$18,$60,$80,$60,$18,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$01,$02,$E4,$18,$18,$27,$40,$80,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$3C,$42,$92,$AA,$AA,$A2,$9D,$41,$3E,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$55,$00,$00,$AA,$00,$00,$55,$00,$00,$AA,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$32,$2A,$34,$3C,$74,$A8,$D8,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFCF0: .byte $10,$0F,$0E,$0D,$0C,$0B,$0A,$09,$08,$07,$06,$05,$04,$03,$02,$01
LFD00: .byte $08,$0C,$10,$14,$18,$1C,$20
LFD07: .byte $24,$F0,$F0,$F0,$F0,$10,$10,$10,$10
LFD10: .byte $7F,$6F,$5F,$4F,$42,$3A,$32,$2A
LFD18: .byte $FF,$FF,$7F,$3F,$1F,$0F,$07,$03
LFD20: .byte $00,$00,$00,$00,$00,$F0,$10,$00,$00,$10,$F0,$00,$00,$20,$20,$20
LFD30: .byte $02,$02,$7A,$7A
LFD34: .byte $02,$6F,$6F,$02
LFD38: .byte $42,$82,$42,$02
LFD3C: .byte $82,$42,$02,$42
LFD40: LDA    $84     
       BNE    LFD63   
       SED            
       LDA    $E0     
       CLC            
       ADC    $9B     
       STA    $E0     
       LDA    $E1     
       ADC    $9C     
       STA    $E1     
       CLD            
       BCC    LFD5B   
       INC    $83     
       LDA    #$40    
       STA    $DF     
LFD5B: SED            
       LDA    $E2     
       ADC    #$00    
       STA    $E2     
       CLD            
LFD63: RTS            

LFD64: CLC            
       ADC    $C8,X   
       STA    $C8,X   
       LDA    $CC,X   
       ADC    #$00    
       STA    $CC,X   
       RTS            

LFD70: .byte $00,$00,$00,$00,$00,$07,$00,$00
LFD78: .byte $00,$00,$00,$40,$40,$E0,$40,$40,$00,$7F,$43,$43,$43,$41,$41,$7F
       .byte $00,$18,$18,$18,$18,$08,$08,$08,$00,$7F,$60,$60,$7F,$01,$41,$7F
       .byte $00,$7F,$43,$03,$3F,$02,$42,$7E,$00,$06,$06,$06,$7F,$42,$42,$42
       .byte $00,$7F,$43,$03,$7F,$40,$40,$7F,$00,$7F,$43,$43,$7F,$40,$41,$7F
       .byte $00,$03,$03,$03,$03,$01,$01,$3F,$00,$7F,$43,$43,$7F,$22,$22,$3E
       .byte $00,$03,$03,$03,$7F,$41,$41,$7F,$00,$00,$00,$00,$00,$00,$00,$00
LFDD8: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0
LFDE6: .byte $90,$F0,$F1,$F3,$F3,$F3,$F3,$F3,$F3,$F3
LFDF0: .byte $00,$01,$01,$01,$00,$FF,$FF,$FF
LFDF8: .byte $01,$01,$00,$FF,$FF,$FF,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$92,$54,$38
       .byte $FE,$38,$54,$92,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F
       .byte $0F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$6C,$AA,$C6
       .byte $00,$C6,$AA,$6C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$82,$00,$10,$00
       .byte $38,$00,$10,$00,$82,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFEB0: .byte $FF,$FE,$FB,$EE,$DD,$DB,$6D,$55,$AA,$92,$24,$22,$11,$04,$01,$00
LFEC0: .byte $FF,$FF,$EF,$EF,$BB,$6D,$B6,$55,$A8,$49,$92,$44,$10,$10,$00,$00
LFED0: .byte $0F,$07,$07,$03,$03,$01,$01,$00
LFED8: .byte $07,$03,$03,$03,$01,$01,$00,$00
LFEE0: .byte $25,$00,$50,$00,$00,$00,$00,$00
LFEE8: .byte $00,$01,$00,$04,$02,$00,$00,$00
LFEF0: STA    $9B     
       LDA    $C8,X   
       SEC            
       SBC    $9B     
       STA    $C8,X   
       LDA    $CC,X   
       SBC    #$00    
       STA    $CC,X   
       RTS            

LFF00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$C0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$C0,$00,$80,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$80,$00,$C0,$00,$E0,$00,$E0,$00,$C0,$00,$80,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$50
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$4A
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$04,$00,$06,$00,$07,$00,$07,$00,$06,$00,$04,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFF0: .byte $00,$20,$40,$60,$80,$20,$60,$80
LFFF8: .byte $00,$92,$7C,$92,$00,$F0,$00,$F0
