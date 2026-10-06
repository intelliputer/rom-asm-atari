; Disassembly of roms/Gas Hog.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Gas Hog.bin
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
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP0FB  =  $32
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       LDA    #$00    
       TAX            
LF004: STA    VSYNC,X 
       INX            
       BNE    LF004   
       DEX            
       STX    $AC     
       STX    $99     
       STX    $AB     
       TXS            
       DEX            
       STX    $93     
       STX    $9F     
       STX    $AE     
       STX    $81     
       STX    $83     
       STX    $BD     
       STX    $DF     
       DEX            
       STX    $D4     
       INC    $8F     
       INC    $8E     
       INC    $DD     
       LDA    SWCHB   
       AND    #$08    
       STA    $8B     
       LDA    #$0F    
       STA    $A9     
       STA    $D8     
       STA    $DC     
       LDA    #$58    
       STA    $C3     
       LDA    #$1E    
       STA    $A0     
       STA    $A1     
       STA    $C8     
       LDA    #$31    
       STA    $EE     
       LDX    #$06    
       STX    $89     
       STX    $8C     
       STA    $FC     
       DEX            
LF051: LDA    LFD5C,X 
       STA    $F0,X   
       STA    $F6,X   
       DEX            
       BPL    LF051   
LF05B: LDX    #$2A    
       STA    WSYNC   
       STX    VBLANK  
       STX    VSYNC   
       STX    TIM8T   
       LDX    #$01    
       LDY    #$02    
LF06A: LDA    $84,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00BE,Y 
       LDA    $84,X   
       AND    #$F0    
       LSR            
       STA.wy $00BF,Y 
       DEY            
       DEY            
       DEX            
       BPL    LF06A   
       LDA    $BA     
       BPL    LF094   
       LDY    $C9     
       LDA    LFE70,Y 
       STA    AUDC1   
       LDA    #$09    
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
LF094: DEC    $C9     
       BPL    LF0A4   
       LDA    #$03    
       STA    $C9     
       LDA    $BA     
       BPL    LF0A4   
       LDY    #$01    
       STY    $BA     
LF0A4: LDX    #$2D    
LF0A6: LDA    INTIM   
       BNE    LF0A6   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       LDA    $8A     
       BMI    LF0C4   
       INC    $E1     
       BNE    LF0EA   
       INC    $8A     
       BPL    LF0EA   
       LDA    #$7D    
       STA    $8A     
       BNE    LF0D6   
LF0C4: LDA    SWCHB   
       AND    #$08    
       CMP    $8B     
       BEQ    LF0E6   
       ASL            
       STA    AUDV1   
       STA    AUDV0   
       LDA    $C9     
       BNE    LF0DB   
LF0D6: JSR    LFEF6   
       INC    $C2     
LF0DB: LDA    #$00    
       JSR    LFE58   
       JMP    LF56A   
LF0E3: JMP    LF4DE   
LF0E6: LDA    #$00    
       STA    $C2     
LF0EA: LDA    INPT4   
       BMI    LF0F6   
       LDA    $DB     
       BNE    LF154   
       LDA    $8A     
       BPL    LF10E   
LF0F6: LDA    SWCHB   
       LSR            
       BCS    LF100   
       INC    $D6     
       BNE    LF0E3   
LF100: LDY    $D6     
       BNE    LF10E   
       LSR            
       BCS    LF154   
       LDY    #$00    
       STY    $8A     
       DEY            
       BMI    LF112   
LF10E: LDY    #$FF    
       STY    $8A     
LF112: STY    $AC     
       STY    $CB     
       INY            
       STY    $D6     
       STY    AUDV1   
       STY    AUDV0   
       STY    $D9     
       STY    $DB     
       STY    $BA     
       STY    $BB     
       STY    $EF     
       STY    $84     
       STY    $85     
       STY    $C5     
       STY    $CA     
       TYA            
       JSR    LFDE6   
       LDA    #$7D    
       STA    $D3     
       LDA    #$58    
       STA    $C3     
       LDA    #$1E    
       STA    $A0     
       LDA    #$31    
       STA    $EE     
       LDA    #$0F    
       STA    $DC     
       STA    $A9     
       LSR            
       STA    $8C     
       LDA    #$04    
       STA    $C7     
       LDA    #$01    
       STA    $CC     
LF154: LDY    $DB     
       BEQ    LF1BD   
       DEC    $8A     
       BPL    LF1BD   
       DEC    $DB     
       DEY            
       LDX    #$05    
       STX    AUDC0   
       STX    AUDC1   
       LDA    $A9     
       CMP    #$A0    
       BCC    LF180   
       JSR    LFEF6   
       LDA    #$01    
       STA    $8A     
       JSR    LFED8   
       LDA    #$0C    
       STA    AUDC1   
       TYA            
       STA    AUDF0   
       TYA            
       INY            
       BNE    LF18C   
LF180: LDA    #$06    
       STA    $8A     
       TYA            
       EOR    #$09    
       STA    AUDF0   
       TYA            
       EOR    #$22    
LF18C: STA    AUDF1   
       LDA    #$0F    
       STA    AUDV0   
       STA    AUDV1   
       DEY            
       BNE    LF1BD   
       STY    $C5     
       STY    $DB     
       STY    AUDV1   
       STY    AUDV0   
       LDA    $A9     
       CMP    #$A0    
       BNE    LF1BD   
       LDA    #$0F    
       STA    $DC     
       STA    $A9     
       STY    $CA     
       STY    $C5     
       STY    $BB     
       INC    $D9     
       LDA    $D3     
       CLC            
       ADC    #$04    
       STA    $D3     
       DEY            
       STY    $8A     
LF1BD: LDA    $A2     
       LDY    $8D     
       BEQ    LF1DD   
       BPL    LF1CE   
       SEC            
       SBC    #$04    
       STA    $A2     
       BMI    LF1D7   
       BPL    LF1DD   
LF1CE: CLC            
       ADC    #$04    
       STA    $A2     
       CMP    #$92    
       BCC    LF1DD   
LF1D7: LDA    #$00    
       STA    $8D     
       STA    $AF     
LF1DD: LDY    $AC     
       BMI    LF1E4   
       JMP    LF26B   
LF1E4: CPY    #$FD    
       BNE    LF228   
       LDA    $A0     
       CMP    #$18    
       BCS    LF1F7   
       LDY    #$00    
       STY    $EF     
       DEY            
       STY    $AC     
       BMI    LF20A   
LF1F7: LDA    $CD     
       BEQ    LF20D   
       LDA    $EE     
       CMP    #$33    
       BCC    LF215   
       LDA    $89     
       LSR            
       BCS    LF20A   
       DEC    $EE     
       INC    $A0     
LF20A: JMP    LF27D   
LF20D: LDA    $EE     
       CMP    #$44    
       BCC    LF21E   
       INC    $CD     
LF215: LDA    $89     
       LSR            
       BCS    LF27D   
       DEC    $A0     
       BNE    LF27D   
LF21E: INC    $EE     
       INC    $EE     
       CMP    #$22    
       BCC    LF27D   
       DEC    $A0     
LF228: CPY    #$FE    
       BNE    LF27D   
       LDA    $EE     
       CMP    #$28    
       BEQ    LF236   
       CMP    #$29    
       BNE    LF241   
LF236: LDY    $A8     
       LDX    #$02    
       CPY    $A0     
       BCC    LF23F   
       DEX            
LF23F: STX    $EA     
LF241: CMP    #$01    
       BNE    LF255   
       INC    $A0     
       LDA    $A0     
       CMP    #$64    
       BCC    LF27D   
       INC    $AC     
       LDA    #$08    
       STA    $EF     
       BNE    LF27D   
LF255: DEC    $EE     
       DEC    $EE     
       LDA    $EE     
       CMP    #$18    
       BCC    LF261   
       DEC    $A0     
LF261: CMP    #$02    
       BCS    LF27D   
       LDA    #$01    
       STA    $EE     
       BNE    LF27D   
LF26B: DEC    $D7     
       BPL    LF27D   
       LDA    #$03    
       STA    $D7     
       LDA    $EE     
       CLC            
       ADC    LFD6E,Y 
       STA    $EE     
       DEC    $AC     
LF27D: LDA    $8E     
       LSR            
       BCC    LF2A0   
       LDA    $CC     
       BEQ    LF2A3   
       BMI    LF296   
       INC    $C8     
       LDX    $C8     
       CPX    #$30    
       BNE    LF2A0   
       LDA    #$FF    
       STA    $CC     
       INC    $C5     
LF296: DEC    $C8     
       LDX    $C8     
       CPX    #$0A    
       BNE    LF2A0   
       INC    $CC     
LF2A0: JMP    LF302   
LF2A3: LDY    $D8     
       LDA    $A1     
       CLC            
       ADC    LFD8D,Y 
       STA    $A1     
       LDA    $C8     
       CLC            
       ADC    LFD9D,Y 
       STA    $C8     
       DEC    $DA     
       BPL    LF2C1   
       DEC    $D8     
       BPL    LF2CF   
       LDA    #$0F    
       STA    $D8     
LF2C1: LDA    $E0     
       BEQ    LF2CB   
       INC    $A1     
       INC    $A1     
       BNE    LF2CF   
LF2CB: DEC    $A1     
       DEC    $A1     
LF2CF: LDA    $A1     
       CMP    #$6A    
       BCC    LF2DF   
       LDA    #$69    
       STA    $A1     
       LDA    #$00    
       STA    $E0     
       BEQ    LF2E9   
LF2DF: CMP    #$04    
       BCS    LF2EC   
       LDA    #$05    
       STA    $A1     
       STA    $E0     
LF2E9: JSR    LFF7C   
LF2EC: LDA    $C8     
       CMP    #$28    
       BCC    LF2F8   
       LDA    #$27    
       STA    $C8     
       BNE    LF2E9   
LF2F8: CMP    #$05    
       BCS    LF302   
       LDA    #$05    
       STA    $C8     
       BNE    LF2E9   
LF302: DEC    $8E     
       BPL    LF31E   
       LDA    #$0E    
       STA    $8E     
       LDA    $AC     
       BPL    LF31E   
       LDA    $EE     
       CMP    #$01    
       BEQ    LF31C   
       CMP    #$31    
       BEQ    LF31C   
       DEC    $EE     
       BNE    LF31E   
LF31C: INC    $EE     
LF31E: DEC    $89     
       BMI    LF325   
       JMP    LF410   
LF325: DEC    $8F     
       BNE    LF389   
       LDA    #$18    
       STA    $8F     
       LDA    $8A     
       BPL    LF389   
       LDA    $BB     
       BNE    LF389   
       DEC    $DC     
       LDA    $EF     
       BNE    LF381   
       LDA    $DB     
       BNE    LF389   
       INC    $A9     
       LDY    #$00    
       LDA    $A9     
       CMP    #$A0    
       BNE    LF359   
       TYA            
       STA    $8A     
       STA    $BA     
       JSR    LFDE6   
       STA    $DC     
       LDA    #$FA    
       STA    $DB     
       STA    $CB     
LF359: AND    #$1F    
       CMP    #$1C    
       BNE    LF389   
       LDA    $A9     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $CA     
       AND    LFD57,Y 
       BNE    LF37D   
       LDA    $CA     
       ORA    LFD57,Y 
       STA    $CA     
       LDA    $C7     
       CMP    #$09    
       BCS    LF389   
       INC    $C7     
LF37D: INC    $CC     
       BNE    LF389   
LF381: LDA    $A9     
       CMP    #$10    
       BCC    LF389   
       DEC    $A9     
LF389: LDA    $8C     
       STA    $89     
       LDA    $A3     
       BNE    LF399   
       DEC    $DD     
       BNE    LF3DA   
       INC    $DD     
       BNE    LF3DA   
LF399: CMP    #$85    
       BNE    LF3A5   
       DEC    $DD     
       BNE    LF3DA   
       DEC    $A3     
       BNE    LF3DA   
LF3A5: LDA    $A3     
       SEC            
       SBC    #$04    
       STA    $A3     
       LDA    $AC     
       CMP    #$FD    
       BEQ    LF3D2   
       LDA    $EE     
       CMP    #$31    
       BCC    LF3D2   
       CMP    #$34    
       BCS    LF3D2   
       LDA    $A3     
       SBC    #$06    
       CMP    $A0     
       BCS    LF3D2   
       ADC    #$13    
       CMP    $A0     
       BCC    LF3D2   
       LDA    #$FE    
       STA    $AC     
       LDA    #$00    
       STA    AUDV0   
LF3D2: LDA    $A3     
       BNE    LF3DA   
       LDA    #$08    
       STA    $DD     
LF3DA: LDA    $BB     
       BNE    LF3E2   
       DEC    $A6     
       INC    $A8     
LF3E2: LDX    #$01    
LF3E4: LDA    $F4,X   
       SEC            
       ROR            
       STA    $F4,X   
       ROL    $F2,X   
       ROR    $F0,X   
       LDA    $F0,X   
       AND    #$08    
       BNE    LF3FA   
       LDA    #$7F    
       AND    $F4,X   
       STA    $F4,X   
LF3FA: LDA    $F6,X   
       ORA    #$08    
       ROL            
       STA    $F6,X   
       ROR    $F8,X   
       ROL    $FA,X   
       BCS    LF40D   
       LDA    #$E0    
       AND    $F6,X   
       STA    $F6,X   
LF40D: DEX            
       BEQ    LF3E4   
LF410: LDY    $AC     
       INY            
       BMI    LF41D   
       LDA    $8A     
       BPL    LF41D   
       LDA    $BB     
       BEQ    LF420   
LF41D: JMP    LF4DE   
LF420: LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       TAY            
       AND    #$08    
       BEQ    LF466   
       LDX    $EE     
       DEC    $FC     
       BNE    LF44C   
       LDA    #$05    
       STA    $FC     
       LDA    $8C     
       CPX    #$15    
       BCS    LF446   
       CMP    #$07    
       BCS    LF44C   
       INC    $8C     
       BNE    LF44C   
LF446: CMP    #$01    
       BEQ    LF44C   
       DEC    $8C     
LF44C: INC    $A0     
       LDA    $A0     
       CPX    #$15    
       BCS    LF45E   
       CMP    #$64    
       BCC    LF4A5   
       LDA    #$63    
LF45A: STA    $A0     
       BNE    LF41D   
LF45E: CMP    #$55    
       BCC    LF4A5   
       LDA    #$54    
       BNE    LF45A   
LF466: TYA            
       AND    #$04    
       BEQ    LF4A5   
       LDX    $EE     
       DEC    $FC     
       BNE    LF48B   
       INC    $87     
       LDA    #$04    
       STA    $FC     
       LDA    $8C     
       CPX    #$15    
       BCS    LF485   
       CMP    #$01    
       BEQ    LF48B   
       DEC    $8C     
       BNE    LF48B   
LF485: CMP    #$07    
       BCS    LF48B   
       INC    $8C     
LF48B: DEC    $A0     
       LDA    $A0     
       CPX    #$15    
       BCS    LF49D   
       CMP    #$30    
       BCS    LF4A5   
       LDA    #$30    
LF499: STA    $A0     
       BNE    LF4DE   
LF49D: CMP    #$18    
       BCS    LF4A5   
       LDA    #$18    
       BNE    LF499   
LF4A5: TYA            
       AND    #$01    
       BEQ    LF4DE   
       LDA    $AC     
       BPL    LF4DE   
       LDA    $DD     
       BNE    LF4D6   
       LDA    $EE     
       CMP    #$30    
       BCS    LF4D6   
       LDA    $A0     
       LDY    $8C     
       ADC    LFD4F,Y 
       CMP    $A3     
       BCC    LF4D6   
       SEC            
       SBC    #$11    
       CMP    $A3     
       BCS    LF4D6   
       LDA    #$00    
       STA    $CD     
       STA    $D2     
       LDA    #$FD    
       STA    $AC     
       BMI    LF4DE   
LF4D6: LDA    $AC     
       BPL    LF4DE   
       LDA    #$0E    
       STA    $AC     
LF4DE: LDA    #$00    
       JSR    LFE58   
       LDA    $CB     
       BMI    LF4F5   
       JSR    LFFEC   
       STA    $9A,X   
       INX            
       CPX    #$05    
       BCS    LF4F5   
       EOR    #$10    
       STA    $9A,X   
LF4F5: LDA    $EE     
       JSR    LFFEC   
       LDY    $BB     
       BEQ    LF501   
       SEC            
       SBC    #$01    
LF501: STA    $94,X   
       INX            
       CPX    #$05    
       BCS    LF50C   
       EOR    #$10    
       STA    $94,X   
LF50C: LDA    $C8     
       JSR    LFFEC   
       STA    $90,X   
       INX            
       CPX    #$03    
       BCS    LF51C   
       EOR    #$10    
       STA    $90,X   
LF51C: LDA    $BB     
       BNE    LF56A   
       LDA    INPT4   
       BMI    LF56A   
       LDY    $AC     
       INY            
       BMI    LF56A   
       LDA    $8D     
       BNE    LF56A   
       LDA    #$0F    
       STA    $BA     
       LDA    $A0     
       CLC            
       ADC    #$11    
       STA    $A2     
       LDA    $EE     
       CMP    #$30    
       BCS    LF553   
       LDY    #$02    
       STY    $AF     
       CMP    #$0C    
       BCS    LF548   
       LSR    $AF     
LF548: LDA    $A0     
       SEC            
       SBC    #$06    
       STA    $A2     
       DEC    $8D     
       BMI    LF55F   
LF553: INC    $8D     
       LDY    #$10    
       STY    $AF     
       CMP    #$3C    
       BCS    LF55F   
       LSR    $AF     
LF55F: LDA    #$70    
       LDY    $AC     
       INY            
       CLC            
       ADC    LFEE6,Y 
       STA    $EB     
LF56A: LDY    #$09    
LF56C: LDA.wy $00A0,Y 
       LDX    #$01    
LF571: CMP    #$0F    
       BCC    LF57B   
       SEC            
       SBC    #$0F    
       INX            
       BNE    LF571   
LF57B: STX    $B0,Y   
       TAX            
       LDA    LFE79,X 
       ORA.wy $00B0,Y 
       STA.wy $00B0,Y 
       DEY            
       BPL    LF56C   
       STA    WSYNC   
       BIT    $FF     
       LDA    $B4     
       STA    HMBL    
       AND    #$0F    
       TAX            
LF595: DEX            
       BPL    LF595   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
LF59E: LDA    INTIM   
       BNE    LF59E   
       STA    WSYNC   
       STA    VBLANK  
       STA    CXCLR   
       LDY    #$00    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STY    $C6     
       STY    $C4     
       STY    $CE     
       STY    $CF     
       STY    $D0     
       STY    COLUPF  
       JMP    LF94B   
LF5C0: STA    WSYNC   
LF5C2: DEX            
       BEQ    LF626   
       CPX    #$25    
       BNE    LF5DE   
       STA    WSYNC   
       LDY    #$0B    
LF5CD: STA    WSYNC   
       LDA    LFF0E,Y 
       STA    GRP0    
       LDA    LFF4E,Y 
       EOR    $C2     
       STA    COLUP0  
       DEY            
       BPL    LF5CD   
LF5DE: CPX    #$23    
       BNE    LF5C0   
       STA    WSYNC   
       LDA    #$0A    
       STA    COLUPF  
       LDY    #$FF    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STA    WSYNC   
       INY            
       STY    GRP1    
       STY    ENAM1   
       STY    REFP0   
       STA    WSYNC   
       STY    NUSIZ0  
       STY    NUSIZ1  
       STY    COLUBK  
       STY    COLUPF  
       INY            
LF604: DEY            
       BPL    LF604   
       NOP            
       LDA    $C7     
       ASL            
       ASL            
       ASL            
       LDY    #$07    
       STA    $86     
       LDA    #$2C    
       EOR    $C2     
       STA    RESP1   
       STA    COLUP1  
       STA    WSYNC   
       STA    WSYNC   
LF61D: STA    WSYNC   
       LDA    ($86),Y 
       STA    GRP1    
       DEY            
       BPL    LF61D   
LF626: LDA    #$22    
       STA    WSYNC   
       STA    TIM64T  
       LDA    $D6     
       BNE    LF63A   
       LDA    SWCHB   
       AND    #$08    
       CMP    $8B     
       BEQ    LF643   
LF63A: LDA    #$00    
       STA    AUDV1   
       STA    AUDV0   
       JMP    LF943   
LF643: LDA    $BB     
       BNE    LF69B   
       LDA    $EE     
       CMP    #$30    
       BCS    LF651   
       CMP    #$14    
       BCS    LF69B   
LF651: LDA    $FD     
       ASL            
       BPL    LF65A   
       STA    $CB     
       BMI    LF69E   
LF65A: LDX    #$00    
       LDA    $C4     
       BPL    LF666   
       LDY    $E3     
       STX    $E3     
       BPL    LF682   
LF666: LDA    $CE     
       BPL    LF670   
       LDY    $E4     
       STX    $E4     
       BPL    LF682   
LF670: LDA    $CF     
       BPL    LF67A   
       LDY    $E5     
       STX    $E5     
       BPL    LF682   
LF67A: LDA    $D0     
       BPL    LF6AD   
       LDY    $E6     
       STX    $E6     
LF682: LDA    LFDCD,Y 
       BEQ    LF69E   
       BPL    LF694   
       JSR    LFEF6   
       LDA    #$14    
       INC    $D2     
       STA    $DC     
       BPL    LF697   
LF694: JSR    LFED8   
LF697: LDA    #$32    
       STA    $E2     
LF69B: JMP    LF710   
LF69E: LDA    #$96    
       STA    $BB     
       LDA    #$00    
       STA    AUDV0   
       STA    $BA     
       STA    $8C     
       JMP    LF80D   
LF6AD: LDA    $C6     
       ORA    CXM0P   
       BPL    LF710   
       LDX    #$00    
       LDA    $AF     
       CMP    #$01    
       BNE    LF6C1   
       LDY    $E6     
       STX    $E6     
       BPL    LF6D9   
LF6C1: CMP    #$02    
       BNE    LF6CB   
       LDY    $E5     
       STX    $E5     
       BPL    LF6D9   
LF6CB: CMP    #$08    
       BNE    LF6D5   
       LDY    $E4     
       STX    $E4     
       BPL    LF6D9   
LF6D5: LDY    $E3     
       STX    $E3     
LF6D9: LDA    LFDBD,Y 
       BPL    LF6E3   
       LDA    #$0F    
       STA    $E5     
       TXA            
LF6E3: CMP    #$10    
       BCC    LF705   
       AND    #$0F    
       STA    $FD     
       SED            
       LDA    $84     
       SEC            
       SBC    $FD     
       STA    $84     
       LDA    $85     
       SBC    #$00    
       STA    $85     
       BCS    LF701   
       LDA    #$00    
       STA    $84     
       STA    $85     
LF701: CLD            
       JMP    LF70C   
LF705: JSR    LFED8   
       LDA    #$0F    
       STA    $D1     
LF70C: STX    $8D     
       STX    $AF     
LF710: LDA    $8A     
       BMI    LF717   
       JMP    LF812   
LF717: LDA    $BB     
       BEQ    LF790   
       LSR            
       LSR            
       LSR            
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    #$FF    
       STA    $AC     
       LDY    #$08    
       LDA    $DC     
       BPL    LF730   
       LDY    #$0C    
LF730: LDA    $BB     
       CMP    #$55    
       BCS    LF740   
       LDY    #$05    
       LDX    #$1E    
       STX    $A0     
       LDX    #$00    
       STX    $EF     
LF740: STY    AUDC1   
       LDY    #$01    
       STY    $8E     
       CMP    #$4C    
       BCS    LF75B   
       LSR            
       BCS    LF769   
       DEC    $EE     
       LDA    $EE     
       CMP    #$2F    
       BNE    LF769   
       LDA    #$30    
       STA    $EE     
       BNE    LF769   
LF75B: INC    $EE     
       INC    $EE     
       LDA    $EE     
       CMP    #$4F    
       BCC    LF769   
       LDA    #$4F    
       STA    $EE     
LF769: DEC    $BB     
       BEQ    LF770   
       JMP    LF80D   
LF770: LDA    #$00    
       STA    AUDV1   
       STA    AUDV0   
       STA    $EF     
       LDA    #$31    
       STA    $EE     
       LDA    #$06    
       STA    $DC     
       STA    $8C     
       DEC    $C7     
       BNE    LF790   
       LDA    #$32    
       STA    $DB     
       LDY    #$00    
       STY    $C7     
       STY    $8A     
LF790: LDA    $CC     
       BEQ    LF7A7   
       LDY    $8E     
       LDA    LFE68,Y 
       LSR            
       LSR            
       STA    AUDC1   
       LDA    #$05    
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       BPL    LF7E1   
LF7A7: LDA    $E2     
       BEQ    LF7BA   
       ASL            
       STA    AUDC1   
       LDA    #$05    
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       DEC    $E2     
       BNE    LF7E1   
LF7BA: LDA    $D1     
       BEQ    LF7CC   
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC1   
       DEC    $D1     
       BNE    LF7E1   
LF7CC: LDY    $C9     
       LDA    LFF31,Y 
       STA    AUDF1   
       LDX    #$04    
       LDA    $DC     
       BMI    LF7DA   
       DEX            
LF7DA: STX    AUDC1   
       LDA    LFF2D,Y 
       STA    AUDV1   
LF7E1: LDY    $BA     
       BEQ    LF7F9   
       BMI    LF7F9   
       LDA    LFE68,Y 
       STA    AUDF0   
       STY    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       DEC    $BA     
       BNE    LF80D   
       DEY            
       STY    AUDV0   
LF7F9: LDY    $AC     
       BMI    LF80D   
       CPY    #$04    
       BCC    LF80D   
       STY    AUDF0   
       DEY            
       DEY            
       DEY            
       DEY            
       STY    AUDV0   
       LDA    #$08    
       STA    AUDC0   
LF80D: LDX    $8E     
       LDY    $AC     
       INY            
LF812: BPL    LF816   
       LDX    #$01    
LF816: CPX    #$0E    
       BNE    LF821   
       LDA    $A9     
       CMP    #$5C    
       BCS    LF821   
       DEX            
LF821: LDY    $E7     
       LDA    $A5     
       CLC            
       ADC    ($D3),Y 
       STA    $A5     
       CMP    #$0F    
       BCC    LF832   
       CMP    #$A1    
       BCC    LF84E   
LF832: STX    $E3     
       LDY    #$A0    
       LDA    $A6     
       CMP    #$1E    
       BCC    LF842   
       CMP    #$32    
       LDA    #$02    
       BCC    LF84A   
LF842: LDA    $C9     
       CMP    #$02    
       BCS    LF84A   
       LDY    #$0F    
LF84A: STY    $A5     
       STA    $E7     
LF84E: LDY    $E8     
       LDA    $A6     
       CLC            
       ADC    ($D3),Y 
       STA    $A6     
       CMP    #$02    
       BCC    LF85F   
       CMP    #$94    
       BCC    LF87F   
LF85F: LDA    $EE     
       CMP    #$14    
       BCS    LF867   
       LDX    #$00    
LF867: STX    $E4     
       LDY    #$93    
       LDA    $A9     
       CMP    #$3C    
       LDA    #$02    
       BCC    LF87B   
       LDA    $C9     
       CMP    #$02    
       BCS    LF87B   
       LDY    #$02    
LF87B: STY    $A6     
       STA    $E8     
LF87F: LDY    $E9     
       LDA    $A7     
       CLC            
       ADC    ($D3),Y 
       STA    $A7     
       CMP    #$0F    
       BCC    LF890   
       CMP    #$A0    
       BCC    LF8BD   
LF890: LDA    $E5     
       CMP    #$0F    
       BNE    LF89F   
       LDA    $BB     
       BNE    LF89F   
       DEC    $E5     
       JMP    LF69E   
LF89F: LDY    $DC     
       BPL    LF8AD   
       CPY    #$F5    
       BCS    LF8AD   
       LDA    $BB     
       BNE    LF8AD   
       LDX    #$0F    
LF8AD: STX    $E5     
       LDY    #$9F    
       LDA    $C9     
       CMP    #$02    
       BCS    LF8B9   
       LDY    #$0F    
LF8B9: STY    $A7     
       STA    $E9     
LF8BD: LDY    $EA     
       LDA    $A8     
       CLC            
       ADC    ($D3),Y 
       STA    $A8     
       CMP    #$07    
       BCC    LF8CE   
       CMP    #$9B    
       BCC    LF8DE   
LF8CE: STX    $E6     
       LDY    #$9A    
       LDA    $C9     
       CMP    #$02    
       BCS    LF8DA   
       LDY    #$07    
LF8DA: STY    $A8     
       STA    $EA     
LF8DE: LDY    $E3     
       LDA    LFDAD,Y 
       STA    $80     
       LDY    $E4     
       LDA    LFDAD,Y 
       STA    $DE     
       LDY    $E5     
       LDA    LFDAD,Y 
       STA    $82     
       LDY    $E6     
       LDA    LFDAD,Y 
       STA    $BC     
       LDA    $A9     
       CMP    #$3C    
       BCC    LF926   
       LDY    $8E     
       LDA    LFF6C,Y 
       TAX            
       LDA    $80     
       CMP    #$98    
       BNE    LF90E   
       STX    $80     
LF90E: LDA    $DE     
       CMP    #$98    
       BNE    LF916   
       STX    $DE     
LF916: LDA    $82     
       CMP    #$98    
       BNE    LF91E   
       STX    $82     
LF91E: LDA    $BC     
       CMP    #$98    
       BNE    LF926   
       STX    $BC     
LF926: LDA    $CB     
       BMI    LF943   
       LDA    $D9     
       BNE    LF93F   
       LDA    $A9     
       CMP    #$3C    
       BCS    LF93B   
       LDA    $89     
       LSR            
       BCS    LF943   
       BCC    LF941   
LF93B: CMP    #$7C    
       BCC    LF941   
LF93F: DEC    $CB     
LF941: DEC    $CB     
LF943: LDA    INTIM   
       BNE    LF943   
       JMP    LF05B   
LF94B: STA    HMCLR   
       LDA    #$2C    
       EOR    $C2     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    REFP0   
       LDX    #$04    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       LDA    #$00    
       STA    NUSIZ0  
       STA    REFP1   
       LDA    #$07    
       STA    $86     
       LDA    #$FD    
       NOP            
       NOP            
LF96F: DEX            
       BNE    LF96F   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    $87     
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
LF984: LDY    $BE     
       LDA    ($86),Y 
       TAX            
       LDY    $C1     
       STA    WSYNC   
       NOP            
       LDA    ($86),Y 
       LDY    $C0     
       STA    GRP0    
       LDA    ($86),Y 
       STA    GRP1    
       LDY    $BF     
       LDA    ($86),Y 
       STA    $FD     
       LDY    #$00    
       LDA    ($86),Y 
       LDY    $FD     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       DEC    $86     
       BPL    LF984   
       STA    WSYNC   
       BIT    $FF     
       LDA    $B2     
       STA    HMM0    
       AND    #$0F    
       TAX            
LF9B9: DEX            
       BPL    LF9B9   
       STA    RESM0   
       STA    WSYNC   
       LDA    $B1     
       STA    COLUP1  
       STA    HMP1    
       AND    #$0F    
       TAX            
LF9C9: DEX            
       BPL    LF9C9   
       STA    RESP1   
       STA    WSYNC   
       LDY    $EF     
       LDA    $B0     
       STA    HMP0    
       AND    #$0F    
       TAX            
LF9D9: DEX            
       BPL    LF9D9   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$10    
       STA    CTRLPF  
       STY    REFP0   
       LDA    #$75    
       STA    NUSIZ0  
       LDY    $C5     
       LDA    LFCF2,Y 
       STA    NUSIZ1  
       STA    HMCLR   
       STA    WSYNC   
       LDA    $C3     
       STA    COLUPF  
       LDA    $DB     
       BEQ    LFA0B   
       STA    PF2     
       STA    PF1     
       EOR    #$55    
       STA    COLUPF  
       LDA    #$01    
       STA    CTRLPF  
LFA0B: LDX    #$02    
LFA0D: LDA    $90,X   
       STA    $92     
       ORA    #$20    
       STA    $AD     
       LDA    $9C,X   
       STA    $9E     
       LDY    #$0F    
LFA1B: STA    WSYNC   
       LDA    ($AD),Y 
       STA    COLUP1  
       LDA    ($92),Y 
       STA    GRP1    
       LDA    ($9E),Y 
       STA    ENABL   
       DEY            
       BPL    LFA1B   
       DEX            
       BPL    LFA0D   
       LDA    #$F6    
       EOR    $C3     
       STA    COLUP1  
       STA    WSYNC   
       LDY    $DD     
       LDA    $B5     
       STA    HMP1    
       AND    #$0F    
       TAX            
LFA40: DEX            
       BNE    LFA40   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STX    NUSIZ1  
       LDA    $A3     
       BNE    LFA57   
       LDA    LFDDD,Y 
       STA    $BE     
       JMP    LFA5C   
LFA57: LDA    LFF39,Y 
       STA    $BE     
LFA5C: LDA    $98     
       STA    $98     
       ORA    #$40    
       STA    $AA     
       STA    WSYNC   
       LDA    $9B     
       STA    $9E     
       LDA    $AF     
       AND    #$10    
       BEQ    LFA74   
       LDA    $EB     
       BNE    LFA76   
LFA74: LDA    #$18    
LFA76: STA    $AD     
       LDY    #$0F    
LFA7A: LDA    ($AA),Y 
       TAX            
       LDA    ($98),Y 
       STA    WSYNC   
       STA    GRP0    
       STX    COLUP0  
       LDA    ($80),Y 
       STA    GRP1    
       LDA    ($AD),Y 
       STA    ENAM0   
       LDA    ($9E),Y 
       STA    ENABL   
       DEY            
       BNE    LFA7A   
       LDA    CXM0P   
       ORA    $C6     
       STA    $C6     
       LDA    CXPPMM  
       STA    $C4     
       STA    CXCLR   
       STA    WSYNC   
       LDA    ($AA),Y 
       STA    COLUP0  
       LDA    ($98),Y 
       STA    GRP0    
       LDA    $97     
       STA    $98     
       ORA    #$40    
       STA    $AA     
       LDA    $9A     
       STA    $9E     
       LDA    $AF     
       AND    #$08    
       BEQ    LFAC0   
       LDA    $EB     
       BNE    LFAC2   
LFAC0: LDA    #$18    
LFAC2: STA    $AD     
       LDY    #$0F    
       LDA    ($98),Y 
       TAX            
       LDA    ($AA),Y 
       DEY            
       STX    GRP0    
       STA    WSYNC   
       STA    COLUP0  
       LDA    $B6     
       STA    HMP1    
       AND    #$0F    
       TAX            
LFAD9: DEX            
       BPL    LFAD9   
       STA    RESP1   
LFADE: STA    WSYNC   
       STA    HMOVE   
       LDA    ($AA),Y 
       STA    COLUP0  
       LDA    ($DE),Y 
       STA    GRP1    
       LDA    ($98),Y 
       STA    GRP0    
       LDA    ($AD),Y 
       STA    ENAM0   
       LDA    ($9E),Y 
       STA    ENABL   
       STA    HMCLR   
       DEY            
       BNE    LFADE   
       LDA    CXM0P   
       ORA    $C6     
       STA    $C6     
       LDA    CXPPMM  
       STA    $CE     
       STY    COLUP1  
       STA    WSYNC   
       LDA    ($AA),Y 
       STA    COLUP0  
       LDA    ($98),Y 
       STA    GRP0    
       LDA    $96     
       STA    $98     
       ORA    #$40    
       STA    $AA     
       LDA    $BE     
       STA    GRP1    
       LDY    #$0F    
       LDA    ($AA),Y 
       TAX            
       LDA    CXP0FB  
       STA    $FD     
       LDA    #$07    
       STA    NUSIZ1  
       LDA    ($98),Y 
       DEY            
       STA    GRP0    
       STX    COLUP0  
       STA    WSYNC   
       LDA    $B3     
       STA    HMP1    
       AND    #$0F    
       TAX            
LFB3A: DEX            
       BPL    LFB3A   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F1     
       STA    PF0     
       LDA    ($98),Y 
       STA    GRP0    
       LDA    $F3     
       STA    PF1     
       LDA    ($AA),Y 
       STA    COLUP0  
       LDA    $F5     
       STA    PF2     
       DEY            
       LDA    $F0     
       STA    WSYNC   
       STA    PF0     
       LDA    $F2     
       STA    PF1     
       LDA    ($98),Y 
       STA    GRP0    
       LDA    $F4     
       STA    PF2     
       LDA    ($AA),Y 
       STA    COLUP0  
       DEY            
       LDX    #$FF    
       LDA    ($98),Y 
       STA    WSYNC   
       STX    PF0     
       STA    GRP0    
       LDA    ($AA),Y 
       STA    COLUP0  
       STX    PF1     
       STX    PF2     
       DEY            
       STA    CXCLR   
       LDX    $C3     
       DEX            
LFB87: LDA    ($AA),Y 
       STA    WSYNC   
       STA    COLUP0  
       CPY    #$0A    
       BCS    LFB98   
       DEX            
       CPY    #$06    
       BCS    LFB98   
       LDX    #$00    
LFB98: STX    COLUPF  
       LDA    ($98),Y 
       STA    GRP0    
       DEY            
       BNE    LFB87   
       STY    NUSIZ1  
       STY    GRP1    
       LDA    ($98),Y 
       TAX            
       LDA    ($AA),Y 
       STA    WSYNC   
       STA    COLUP0  
       STX    GRP0    
       LDA    $95     
       STA    $98     
       ORA    #$40    
       STA    $AA     
       LDA    $AF     
       AND    #$02    
       BEQ    LFBC2   
       LDA    $EB     
       BNE    LFBC4   
LFBC2: LDA    #$18    
LFBC4: STA    $AD     
       LDY    #$0F    
       LDA    ($98),Y 
       TAX            
       LDA    #$A6    
       EOR    $C3     
       STA    COLUP1  
       LDA    ($AA),Y 
       DEY            
       PHA            
       PLA            
       STX    GRP0    
       STA    WSYNC   
       STA    COLUP0  
       LDA    $B7     
       STA    HMP1    
       AND    #$0F    
       TAX            
LFBE3: DEX            
       BNE    LFBE3   
       STA    RESP1   
LFBE8: STA    WSYNC   
       STA    HMOVE   
       LDA    ($AA),Y 
       STA    COLUP0  
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($98),Y 
       STA    GRP0    
       LDA    ($AD),Y 
       STA    ENAM0   
       STA    HMCLR   
       DEY            
       BNE    LFBE8   
       LDA    CXM0P   
       ORA    $C6     
       STA    $C6     
       LDA    CXPPMM  
       STA    $CF     
       STA    CXCLR   
       STA    WSYNC   
       LDA    ($98),Y 
       STA    GRP0    
       LDA    ($AA),Y 
       STA    COLUP0  
       LDA    $94     
       STA    $98     
       ORA    #$40    
       STA    $AA     
       LDA    $AF     
       AND    #$01    
       BEQ    LFC29   
       LDA    $EB     
       BNE    LFC2B   
LFC29: LDA    #$18    
LFC2B: STA    $AD     
       LDY    #$0F    
       LDA    ($98),Y 
       TAX            
       LDA    ($AA),Y 
       DEY            
       STA    WSYNC   
       STX    GRP0    
       STA    COLUP0  
       LDA    $B8     
       STA    HMP1    
       AND    #$0F    
       TAX            
LFC42: DEX            
       BNE    LFC42   
       STA    RESP1   
LFC47: STA    WSYNC   
       STA    HMOVE   
       LDA    ($98),Y 
       STA    GRP0    
       LDA    ($BC),Y 
       STA    GRP1    
       LDA    ($AA),Y 
       STA    COLUP0  
       LDA    ($AD),Y 
       STA    ENAM0   
       STA    HMCLR   
       DEY            
       BPL    LFC47   
       STA    WSYNC   
       LDX    $C3     
       LDA    $B9     
       STA    HMP0    
       AND    #$0F    
       TAY            
LFC6B: DEY            
       BNE    LFC6B   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$01    
LFC76: STA    WSYNC   
       STX    COLUPF  
       LDA.wy $00F6,Y 
       STA    PF0     
       LDA.wy $00F8,Y 
       STA    PF1     
       LDA.wy $00FA,Y 
       STA    PF2     
       DEY            
       BPL    LFC76   
       STA    WSYNC   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       DEX            
       STX    COLUPF  
       STA    WSYNC   
       STA    WSYNC   
       LDA    CXPPMM  
       STA    $D0     
       STA    WSYNC   
       DEX            
       DEX            
       STX    COLUPF  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$0A    
       STA    COLUPF  
       STA    COLUP1  
       STA    COLUP0  
       BIT    $FF     
       LDA    #$00    
       STA    NUSIZ0  
       LDA    #$06    
       STA    NUSIZ1  
       STA    RESM1   
       STA    WSYNC   
       LDX    #$08    
LFCC3: DEX            
       BNE    LFCC3   
       NOP            
       STA    RESP1   
       LDA    #$02    
       STA    GRP1    
       STA    ENAM1   
       LDY    $8F     
       LDA    $DC     
       BMI    LFCD7   
       BNE    LFCDF   
LFCD7: CPY    #$0A    
       BCC    LFCDF   
       LDA    #$42    
       BNE    LFCE1   
LFCDF: LDA    #$B2    
LFCE1: STA    WSYNC   
       EOR    $C2     
       STA    COLUBK  
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    #$28    
       JMP    LF5C2   
LFCF2: .byte $00,$00,$01,$03,$00,$01,$03,$03
LFCFA: .byte $14,$04,$14,$24,$00,$00,$00,$7F,$43,$43,$43,$41,$41,$7F,$00,$18
       .byte $18,$18,$18,$08,$08,$08,$00,$7F,$60,$60,$7F,$01,$41,$7F,$00,$7F
       .byte $43,$03,$3F,$02,$42,$7E,$00,$06,$06,$06,$7F,$42,$42,$42,$00,$7F
       .byte $43,$03,$7F,$40,$40,$7F,$00,$7F,$43,$43,$7F,$40,$41,$7F,$00,$03
       .byte $03,$03,$03,$01,$01,$3F,$00,$7F,$43,$43,$7F,$22,$22,$3E,$00,$03
       .byte $03,$03,$7F,$41,$41
LFD4F: .byte $7F,$28,$22,$19,$16,$13,$10,$0C
LFD57: .byte $01,$02,$04,$08,$10
LFD5C: .byte $FF,$11,$E7,$83,$DF,$93,$3A,$38,$36,$34,$32,$30,$30,$30,$32,$34
       .byte $36,$38
LFD6E: .byte $FD,$FD,$FD,$FD,$FE,$FE,$FF,$00,$01,$02,$02,$03,$03,$03,$03,$01
       .byte $01,$FF,$FF,$01,$01,$FF,$FF,$02,$01,$FE,$FF,$02,$02,$FE,$FE
LFD8D: .byte $01,$02,$02,$02,$02,$02,$02,$01,$FF,$FE,$FE,$FE,$FE,$FE,$FE,$FF
LFD9D: .byte $01,$01,$01,$01,$FF,$FF,$FF,$FF,$01,$03,$03,$01,$FF,$FD,$FD,$FF
LFDAD: .byte $18,$18,$98,$98,$A8,$18,$18,$18,$88,$98,$48,$98,$48,$B8,$C8,$38
LFDBD: .byte $00,$00,$03,$03,$15,$00,$00,$00,$12,$03,$05,$03,$05,$19,$05,$FF
LFDCD: .byte $00,$00,$00,$00,$05,$00,$00,$00,$02,$00,$00,$00,$00,$09,$00,$FF
LFDDD: .byte $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF
LFDE6: STA    $E3     
       STA    $E4     
       STA    $E5     
       STA    $E6     
       RTS            

LFDEF: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$18,$3C,$C3,$C3,$DB,$3C,$18,$18,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$8F,$8F,$66,$66,$38,$66,$0F,$0F,$00,$00,$00,$7E,$FF,$DF,$DF
       .byte $DF,$C7,$DF,$DF,$C3,$FF,$7E,$00,$00,$00,$00,$24,$3C,$42,$BD,$BD
       .byte $BD,$42,$3C,$24,$00,$00,$00,$00,$00
LFE58: STA    $90     
       STA    $91     
       STA    $92     
       LDX    #$04    
LFE60: STA    $94,X   
       STA    $9A,X   
       DEX            
       BPL    LFE60   
       RTS            

LFE68: .byte $10,$0D,$0C,$09,$20,$30,$40,$08
LFE70: .byte $01,$08,$05,$08,$62,$85,$6D,$4D,$95
LFE79: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$00
       .byte $00,$00,$72,$45,$45,$25,$15,$15,$62,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$18,$E7,$FF,$5A,$24,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$62,$15,$15,$15,$65,$45,$72,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$22,$55,$15,$35,$55,$55,$22,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FF,$00,$7E,$00,$18,$00,$18,$00,$7E,$00,$FF,$00,$00,$00
LFED8: SED            
       CLC            
       ADC    $84     
       STA    $84     
       LDA    $85     
       ADC    #$00    
       STA    $85     
       CLD            
       RTS            

LFEE6: .byte $00,$FD,$FA,$F7,$02,$02,$00,$FF,$FF,$00,$02,$02,$F7,$FA,$FD,$00
LFEF6: LDA    $C3     
       SEC            
       SBC    #$30    
       STA    $C3     
       RTS            

LFEFE: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFF0E: .byte $00,$00,$66,$66,$FF,$FF,$56,$7C,$7C,$70,$20,$20,$20,$20,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFF2D: .byte $00,$00,$04,$08
LFF31: .byte $2A,$2A,$27,$CA
LFF35: .byte $14,$14,$04,$04
LFF39: .byte $FF,$7F,$3F,$1F,$0F,$07,$03,$00,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$0F
LFF4E: .byte $0F,$0F,$0F,$36,$48,$6A,$0F,$6A,$48,$36,$0F,$0F,$0F,$0F
LFF5C: .byte $10,$0F,$0E,$0D,$0C,$0B,$0A,$09,$08,$07,$06,$05,$04,$03,$02,$01
LFF6C: .byte $98,$98,$96,$96,$94,$94,$92,$92,$92,$94,$94,$96,$96,$98,$98,$98
LFF7C: LDA    $87     
       ROR            
       STA    $87     
       LDA    $88     
       ROR            
       EOR    $87     
       LDX    $88     
       STA    $88     
       STX    $87     
       ORA    #$82    
       STA    $DA     
       LDA    $8A     
       BPL    LFFEB   
       LDA    $CB     
       BPL    LFFEB   
       LDA    $BB     
       BNE    LFFEB   
       LDY    $AC     
       INY            
       BMI    LFFEB   
       LDA    $C8     
       CLC            
       ADC    #$1A    
       STA    $CB     
       LDY    $D7     
       LDX    $C5     
       LDA    LFCF2,X 
       BNE    LFFB5   
       LDA    #$04    
       BNE    LFFC1   
LFFB5: CMP    #$01    
       BNE    LFFBE   
       LDA    LFF35,Y 
       BPL    LFFC1   
LFFBE: LDA    LFCFA,Y 
LFFC1: CLC            
       ADC    $A1     
       STA    $A4     
       LDY    #$03    
       STY    $C9     
       LDY    #$FF    
       STY    $BA     
       LDA    $D2     
       BNE    LFFDB   
       LDA    $A9     
       LSR            
       BCS    LFFDB   
       LDA    $DC     
       BPL    LFFEB   
LFFDB: LDA    $A3     
       ORA    $DD     
       CMP    #$01    
       BNE    LFFEB   
       LDA    #$85    
       STA    $A3     
       LDA    #$06    
       STA    $DD     
LFFEB: RTS            

LFFEC: PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       PLA            
       AND    #$0F    
       TAY            
       LDA    LFF5C,Y 
       RTS            

LFFFA: .byte $00,$00,$00,$F0,$00,$01
