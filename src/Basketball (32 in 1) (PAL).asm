; Disassembly of roms/Basketball (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:21:06 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Basketball (32 in 1) (PAL).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF1     =  $0E
PF2     =  $0F
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
HMM0    =  $22
HMM1    =  $23
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXBLPF  =  $36
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000
LF000: STX    $F6     
       LDA    #$F7    
       STA    $F2     
       LDX    #$03    
LF008: STX    $F4     
       LDA    $87,X   
       AND    #$0F    
       STA    $F3     
       ASL            
       ASL            
       CLC            
       ADC    $F3     
       ADC    #$A1    
       STA    $F1     
       TXA            
       ASL            
       ASL            
       ADC    $F4     
       ADC    #$DA    
       STA    $F5     
       LDY    #$04    
LF024: LDA    ($F1),Y 
       AND    #$0F    
       STA    ($F5),Y 
       DEY            
       BPL    LF024   
       LDA    $87,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $F3     
       LSR            
       LSR            
       ADC    $F3     
       ADC    #$A1    
       STA    $F1     
       LDY    #$04    
LF03F: LDA    ($F1),Y 
       AND    #$F0    
       ORA    ($F5),Y 
       STA    ($F5),Y 
       DEY            
       BPL    LF03F   
       DEX            
       BPL    LF008   
       LDX    #$05    
LF04F: LDA    $E8,X   
       LDY    #$3A    
LF053: ROL            
       ROR    $E8,X   
       DEY            
       BPL    LF053   
       DEX            
       BNE    LF04F   
       RTS            

LF05D: LDA    $AF,X   
LF05F: CLC            
       ADC    #$37    
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       PLA            
       AND    #$0F    
       STY    $F1     
       CLC            
       ADC    $F1     
       CMP    #$0F    
       BCC    LF077   
       SBC    #$0F    
       INY            
LF077: CMP    #$08    
       EOR    #$0F    
       BCS    LF080   
       ADC    #$01    
       DEY            
LF080: ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF086: DEY            
       BPL    LF086   
       STA    PF2,X   
       STA    WSYNC   
       STA    ENABL,X 
       DEX            
       BNE    LF05D   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STX    HMCLR   
       RTS            

LF09B: LDA    #$32    
       STA    $B2     
       LDA    #$6E    
       STA    $B3     
       LDA    #$3E    
       STA    $B0     
       LDA    #$4E    
       STA    $B1     
       LDX    #$05    
       STX    REFP0   
       STX    REFP1   
       STX    NUSIZ0  
       STX    NUSIZ1  
       JSR    LF05D   
       LDY    #$F7    
       STY    $F1     
       LDY    #$00    
       LDA    #$36    
       STA    $F7     
       LDA    SWCHB   
       AND    #$08    
       BNE    LF0D3   
       LDA    #$0A    
       STA    $F7     
       LDA    #$07    
       STA    $F1     
       LDY    #$04    
LF0D3: LDA    LF7F0,Y 
       BIT    $81     
       BVS    LF0DE   
       EOR    $BA     
       AND    $F1     
LF0DE: STA    COLUP0,X
       STA    $F2,X   
       BIT    $81     
       BVC    LF0E8   
       LDA    $F7     
LF0E8: STA    $D3     
       INY            
       INX            
       CPX    #$04    
       BCC    LF0D3   
       DEX            
       STX    CTRLPF  
LF0F3: LDX    INTIM   
       BNE    LF0F3   
       STX    WSYNC   
       STX    VBLANK  
       LDY    #$EE    
       LDA    #$F1    
       STA    $F1     
LF102: STA    WSYNC   
       LDA    $F2     
       STA    COLUP0  
       LDA    $E4,X   
       STA    PF1     
       LDA    $DA,X   
       STA    GRP0    
       LDA    $DF,X   
       STA    GRP1    
       INY            
       CPY    $F1     
       LDA    $F4     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $E9,X   
       STA    PF1     
       LDA    $F3     
       STA    COLUP1  
       BCC    LF102   
       INX            
       TYA            
       CLC            
       ADC    #$03    
       STA    $F1     
       BMI    LF102   
       LDX    $F2     
       STX    COLUP0  
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    PF1     
       STA    GRP0    
       STA    GRP1    
       LDX    #$02    
       LDA    $D6     
       STA    $B0     
       LDA    $D7     
       JSR    LF05F   
       LDA    $D8     
       STA    REFP0   
       LDA    $D9     
       STA    REFP1   
       LDA    #$21    
       STA    CTRLPF  
       LDY    #$0E    
       STY    $8E     
       LDY    #$00    
LF15B: STA    WSYNC   
       STA    HMOVE   
       STY    GRP1    
       LDY    #$02    
       SEC            
       LDA    $CF     
       SBC    $8E     
       AND    #$F8    
       BEQ    LF16E   
       LDY    #$00    
LF16E: STY    ENABL   
       STY    HMM0    
       STY    HMM1    
       CLC            
       LDA    $8E     
       ADC    #$02    
       STA    $8E     
       LSR            
       LSR            
       LSR            
       TAX            
       LDY    LF7D7,X 
       SEC            
       LDA    $CD     
       SBC    $8E     
       LSR            
       TAX            
       AND    #$F0    
       BEQ    LF191   
       LDA    #$00    
       BEQ    LF193   
LF191: LDA    $8F,X   
LF193: NOP            
       STA    HMOVE   
       STA    GRP0    
       STY    PF1     
       LDA    $8E     
       CMP    #$5A    
       BCC    LF1A8   
       LDX    $D3     
       STX    COLUBK  
       STX    ENAM0   
       STX    ENAM1   
LF1A8: SEC            
       LDA    $CE     
       SBC    $8E     
       LSR            
       TAX            
       AND    #$F0    
       BEQ    LF1B7   
       LDY    #$00    
       BEQ    LF1B9   
LF1B7: LDY    $9F,X   
LF1B9: LDA    $8E     
       CMP    #$B4    
       BCS    LF1CD   
       AND    #$03    
       BNE    LF15B   
       LDX    #$10    
       STX    HMM0    
       LDX    #$F0    
       STX    HMM1    
       BNE    LF15B   
LF1CD: LDA    #$00    
       LDY    #$01    
LF1D1: STA    WSYNC   
       STA    COLUBK  
       LDX    #$05    
LF1D7: STA    AUDV1,X 
       DEX            
       BNE    LF1D7   
       DEY            
       BNE    LF1D1   
       JSR    LF000   
       LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
LF1ED: LDX    INTIM   
       BNE    LF1ED   
       STX    WSYNC   
       STX    VSYNC   
       LDA    #$3E    
       STA    TIM64T  
       BNE    LF24E   

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       STX    $81     
       STX    $82     
       LDX    #$BB    
       STX    $8A     
       LDX    #$B1    
       STX    $89     
LF20F: LDX    #$2A    
       STX    $AF     
       LDY    #$00    
LF215: STY    $43,X   
       DEX            
       BNE    LF215   
       LDX    #$0D    
LF21C: STY    $B9,X   
       DEX            
       BNE    LF21C   
       STY    $88     
       LDA    #$4A    
       STA    $87     
       LDA    #$87    
       LDX    #$0A    
       STX    $B9     
LF22D: STA    $C6,X   
       DEX            
       BNE    LF22D   
       LDA    #$54    
       STA    $D6     
       STA    AUDC1   
       LDA    #$46    
       STA    $D7     
       LDA    #$4F    
       STA    $B4     
       DEC    $C2     
       LDX    #$10    
       STX    $BA     
       DEX            
       STX    $EF     
       STX    $D8     
       JMP    LF09B   
LF24E: INC    $80     
       LDA    SWCHB   
       ROR            
       BCS    LF260   
       DEX            
       STX    $81     
       INX            
       STX    $89     
       STX    $8A     
       BEQ    LF20F   
LF260: LDA    $83     
       BEQ    LF266   
       INC    $83     
LF266: LDA    $80     
       AND    #$3F    
       BNE    LF28A   
       BIT    $81     
       BPL    LF284   
       SEC            
       SED            
       LDA    $88     
       SBC    #$01    
       BCS    LF281   
       SEC            
       LDA    $87     
       SBC    #$10    
       STA    $87     
       LDA    #$59    
LF281: STA    $88     
       CLD            
LF284: INC    $BA     
       BNE    LF28A   
       STA    $81     
LF28A: LDA    SWCHB   
       EOR    #$FF    
       AND    #$02    
       BNE    LF297   
       STA    $83     
       BEQ    LF2B8   
LF297: BIT    $83     
       BMI    LF2B8   
       LDA    #$C0    
       STA    $83     
       INC    $82     
       LDA    $82     
       CMP    #$02    
       BNE    LF2AB   
       LDA    #$00    
       STA    $82     
LF2AB: CLC            
       ADC    #$B1    
       STA    $89     
       LDA    #$BB    
       STA    $8A     
       LDA    #$00    
       STA    $81     
LF2B8: LDA    $D2     
       STA    $F1     
       LDA    SWCHA   
       STA    $D2     
       LDX    $82     
       BNE    LF2C8   
       JMP    LF359   
LF2C8: LDX    #$00    
       AND    #$0F    
       STA    $F3     
       LDA    $F1     
       AND    #$F0    
       ORA    $F3     
       STA    $D2     
       LDA    $BC     
       BMI    LF2F9   
       SEC            
       LDA    $D6     
       SBC    $B4     
       AND    #$FE    
       BNE    LF2F0   
       SEC            
       LDA    $CD     
       SBC    $D0     
       BCC    LF2F0   
       ADC    $AF     
       AND    #$C0    
       BEQ    LF35F   
LF2F0: TXA            
LF2F1: CLC            
       ADC    $B4     
       TAY            
       LDX    $D0     
       BNE    LF32D   
LF2F9: AND    #$01    
       BEQ    LF301   
       LDA    #$03    
       BNE    LF2F1   
LF301: BIT    $BC     
       BVC    LF30B   
       DEC    $D1     
       BPL    LF35F   
       BNE    LF359   
LF30B: LDA    $80     
       TAX            
       SEC            
       AND    #$3F    
       ORA    #$10    
       TAY            
       SBC    $D6     
       BCC    LF32D   
       LDA    $CD     
       SBC    #$87    
       BCS    LF322   
       EOR    #$FF    
       ADC    #$01    
LF322: CLC            
       ADC    $D6     
       LSR            
       LSR            
       STA    $D1     
       LDX    #$00    
       BEQ    LF35F   
LF32D: LDA    $80     
       AND    $EF     
       BNE    LF359   
       LDA    $D2     
       ORA    #$F0    
       STA    $D2     
       SEC            
       TXA            
       SBC    $CD     
       LDA    $D2     
       BCS    LF345   
       AND    #$EF    
       BCC    LF347   
LF345: AND    #$DF    
LF347: STA    $D2     
       SEC            
       TYA            
       SBC    $D6     
       LDA    $D2     
       BCS    LF355   
       AND    #$BF    
       BCC    LF357   
LF355: AND    #$7F    
LF357: STA    $D2     
LF359: LDX    #$00    
LF35B: LDA    INPT4,X 
       BMI    LF37D   
LF35F: LDY    $B5,X   
       BMI    LF396   
       DEY            
       STY    $B5,X   
       TXA            
       ORA    #$80    
       CMP    $BC     
       BNE    LF375   
       ORA    #$C0    
       STA    $BC     
       STY    $BE     
       BNE    LF396   
LF375: LDY    $C4,X   
       BNE    LF37B   
       INC    $C4,X   
LF37B: BNE    LF396   
LF37D: LDA    $B5,X   
       BPL    LF396   
       LDY    #$00    
       STY    $B5,X   
       TXA            
       ORA    #$C0    
       CMP    $BC     
       BNE    LF396   
       STY    $BC     
       LDA    $BD     
       AND    #$BF    
       ORA    $B7     
       STA    $BD     
LF396: INX            
       CPX    #$01    
       BEQ    LF35B   
       LDX    #$00    
       STX    $C0     
       STX    $C1     
       INX            
LF3A2: LDY    $C4,X   
       BNE    LF3FA   
       LDY    $B5,X   
       BMI    LF3FA   
       LDA    $D2     
       CPX    #$00    
       BNE    LF3B4   
       LSR            
       LSR            
       LSR            
       LSR            
LF3B4: AND    #$0F    
       STA    $F1     
       LDA    $80     
       AND    #$03    
       BNE    LF3CE   
       CPX    #$01    
       BEQ    LF3C9   
       BIT    SWCHB   
       BVS    LF3FA   
       BVC    LF3CE   
LF3C9: BIT    SWCHB   
       BMI    LF3FA   
LF3CE: LDA    $F1     
       CMP    #$0F    
       BEQ    LF3D6   
       STA    $C0,X   
LF3D6: LSR            
       LSR            
       TAY            
       LDA    LF7F7,Y 
       BEQ    LF3E0   
       STA    $C2,X   
LF3E0: CLC            
       ADC    $D6,X   
       STA    $D6,X   
       LDA    $F1     
       AND    #$03    
       TAY            
       LDA    LF7F7,Y 
       CLC            
       ADC    $CD,X   
       CMP    #$B4    
       BCS    LF3FA   
       CMP    #$5A    
       BCC    LF3FA   
       STA    $CD,X   
LF3FA: DEX            
       BEQ    LF3A2   
       LDX    #$01    
LF3FF: LDA    CXP0FB,X
       AND    #$40    
       BEQ    LF443   
       SEC            
       LDA    $CD,X   
       SBC    $D0     
       BCS    LF410   
       EOR    #$FF    
       ADC    #$01    
LF410: LDY    $B8     
       BNE    LF443   
       BIT    $BC     
       BPL    LF435   
       AND    #$FE    
       BNE    LF443   
       LDA    $80     
       AND    #$01    
       STA    $F1     
       CPX    $F1     
       BNE    LF443   
LF426: TXA            
       STX    $F0     
       ORA    #$80    
       STA    $BC     
       LDA    #$40    
       STA    $BD     
       STA    $D4     
       BNE    LF446   
LF435: LDY    $C4,X   
       BEQ    LF43F   
       AND    #$E0    
       BEQ    LF426   
       BNE    LF443   
LF43F: AND    #$F0    
       BEQ    LF426   
LF443: DEX            
       BPL    LF3FF   
LF446: BIT    $BC     
       BMI    LF44D   
       JMP    LF51D   
LF44D: BVS    LF46F   
       LDX    $F0     
       LDA    $CD,X   
       STA    $D0     
       SEC            
       LDA    $D6,X   
       SBC    LF7FE,X 
       STA    $B4     
       LDA    $D4     
       AND    #$0F    
       CMP    #$08    
       BCC    LF467   
       EOR    #$0F    
LF467: ASL            
       STA    $AF     
       INC    $D4     
       JMP    LF5F4   
LF46F: LDA    $80     
       AND    #$03    
       BNE    LF4A8   
       STA    $BF     
       INC    $BE     
       LDA    $BE     
       AND    #$0F    
       CMP    #$08    
       BCC    LF483   
       EOR    #$0F    
LF483: TAX            
       CLC            
       ADC    #$07    
       STA    $B9     
       LDA    LF797,X 
       STA    $AF     
       LDA    $F0     
       BNE    LF49E   
       INC    $AF     
       CLC            
       LDA    $D6     
       ADC    LF7E8,X 
       SBC    #$02    
       BNE    LF4A6   
LF49E: SEC            
       LDA    $D7     
       ADC    #$09    
       SBC    LF7E8,X 
LF4A6: STA    $B4     
LF4A8: LDY    #$80    
       LDX    $F0     
       LDA    $CD,X   
       STA    $D0     
       SEC            
       LDA    $D6,X   
       SBC    LF79F,X 
       BCS    LF4BE   
       EOR    #$FF    
       ADC    #$01    
       LDY    #$00    
LF4BE: STA    $F1     
       STY    $BD     
       LDY    #$00    
       SEC            
       LDA    $CD,X   
       SBC    #$87    
       BCS    LF4D1   
       EOR    #$FF    
       ADC    #$01    
       LDY    #$40    
LF4D1: STY    $B7     
       STA    $F2     
       LDX    #$02    
LF4D7: LDA    $F0,X   
       CMP    #$04    
       BCS    LF4DF   
       LDA    #$04    
LF4DF: STA    $F0,X   
       DEX            
       BNE    LF4D7   
LF4E4: LSR    $F2     
       LSR    $F1     
       LDX    #$01    
LF4EA: LDA    $F1,X   
       CMP    #$02    
       BEQ    LF50E   
       CMP    #$03    
       BEQ    LF4F9   
       DEX            
       BEQ    LF4EA   
       BNE    LF4E4   
LF4F9: LDA    #$02    
       STA    $F1,X   
       TXA            
       EOR    #$01    
       TAX            
       LDA    $F1,X   
       LSR            
       LSR            
       STA    $F3     
       LDA    $F1,X   
       SEC            
       SBC    $F3     
       STA    $F1,X   
LF50E: LDA    $F1     
       STA    $CB     
       STA    $CC     
       LDA    $F2     
       STA    $C9     
       STA    $CA     
       JMP    LF5F4   
LF51D: BIT    CXBLPF  
       BPL    LF568   
       LDA    $D0     
       CMP    #$78    
       BCC    LF568   
       CMP    #$96    
       BCS    LF568   
       LDA    $AF     
       CMP    #$46    
       BCS    LF556   
       CMP    #$36    
       BCC    LF568   
       LDX    #$00    
       LDA    $B4     
       CMP    #$50    
       BCC    LF53E   
       INX            
LF53E: TXA            
       ORA    #$80    
       STA    $BB     
       STA    $C9     
       STA    $CB     
       LDA    LF79F,X 
       STA    $B4     
       STA    $EE     
       LDA    #$87    
       STA    $D0     
       LDA    #$0C    
       STA    $B9     
LF556: BIT    $C6     
       BMI    LF56C   
       LDA    #$80    
       STA    $C6     
       EOR    $BD     
       STA    $BD     
       LDA    #$02    
       STA    $C7     
       BNE    LF56C   
LF568: LDA    #$00    
       STA    $C6     
LF56C: LDA    $BB     
       BPL    LF5A7   
       LDY    $AF     
       CPY    #$1E    
       BCS    LF5A7   
       AND    #$01    
       TAX            
       STA    $BB     
       LDY    #$08    
       STY    $C8     
       EOR    #$01    
       TAY            
       LDA    $EE     
       STA.wy $00D6,Y 
       LDA    #$87    
       STA.wy $00CD,Y 
       LDY    #$50    
       STY    $D6,X   
       LDA    $81     
       BEQ    LF5A7   
       CLC            
       SED            
       LDA    $89,X   
       ADC    #$02    
       STA    $89,X   
       CLD            
       TXA            
       BEQ    LF5A4   
       LSR    $EF     
       BNE    LF5A7   
LF5A4: SEC            
       ROL    $EF     
LF5A7: DEC    $CA     
       BNE    LF5B9   
       LDA    $C9     
       STA    $CA     
       DEC    $B4     
       BIT    $BD     
       BMI    LF5B9   
       INC    $B4     
       INC    $B4     
LF5B9: DEC    $CC     
       BNE    LF5CB   
       LDA    $CB     
       STA    $CC     
       DEC    $D0     
       BIT    $BD     
       BVC    LF5CB   
       INC    $D0     
       INC    $D0     
LF5CB: LDA    $80     
       AND    #$03    
       BNE    LF5F4   
       CLC            
       LDA    $AF     
       STA    $D5     
       ADC    $B9     
       SEC            
       SBC    $BF     
       BCS    LF5F0   
       LDA    $B9     
       LSR            
       LSR            
       STA    $F1     
       SEC            
       LDA    $B9     
       SBC    $F1     
       STA    $B9     
       LDA    #$FF    
       STA    $BF     
       LDA    #$00    
LF5F0: STA    $AF     
       INC    $BF     
LF5F4: STA    CXCLR   
       LDY    #$00    
       BIT    $BB     
       BMI    LF606   
       LDA    $AF     
       CMP    $D5     
       BCS    LF607   
       CMP    #$28    
       BCC    LF607   
LF606: DEY            
LF607: STY    $B8     
       SEC            
       LDA    $D0     
       SBC    $AF     
       STA    $CF     
       LDA    $AF     
       CMP    #$02    
       BCS    LF61A   
       LDA    #$02    
       STA    $C7     
LF61A: LDA    #$1F    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDC0   
       STA    AUDF1   
       DEC    $C7     
       BPL    LF62C   
       LDA    #$00    
       INC    $C7     
LF62C: STA    AUDV0   
       LDA    #$08    
       DEC    $C8     
       BPL    LF638   
       LDA    #$00    
       INC    $C8     
LF638: STA    AUDV1   
       LDA    $81     
       BNE    LF642   
       STA    AUDV0   
       STA    AUDV1   
LF642: LDX    #$01    
       LDA    #$F7    
       STA    $F2     
       STA    $F4     
       LDA    #$00    
       STA    $F6     
LF64E: LDA    $80     
       AND    #$04    
       BNE    LF656   
       STA    $C0,X   
LF656: LDA    $C0,X   
       BEQ    LF65E   
       LDA    #$6F    
       BNE    LF660   
LF65E: LDA    #$77    
LF660: STA    $F1     
       LDA    $BC     
       BPL    LF680   
       AND    #$01    
       STX    $F5     
       CMP    $F5     
       BNE    LF680   
       LDA    $AF     
       CMP    #$0C    
       BCC    LF680   
       CMP    #$20    
       BCS    LF67C   
       LDY    #$87    
       BNE    LF682   
LF67C: LDY    #$8F    
       BNE    LF682   
LF680: LDY    #$7F    
LF682: STY    $F3     
       LDY    #$07    
LF686: LDA    #$8F    
       DEX            
       BNE    LF68D   
       LDA    #$9F    
LF68D: INX            
       STA    $F5     
       LDA    ($F1),Y 
       STA    ($F5),Y 
       LDA    $F5     
       CLC            
       ADC    #$08    
       STA    $F5     
       LDA    ($F3),Y 
       STA    ($F5),Y 
       DEY            
       BPL    LF686   
       DEX            
       BEQ    LF64E   
       LDA    $BC     
       EOR    #$80    
       STA    $F2     
       LDX    #$01    
LF6AD: LDY    $D6,X   
       LDA    $CD,X   
       LSR            
       LSR            
       STA    $F1     
       CLC            
       ADC    #$5E    
       CPX    #$00    
       BEQ    LF6C0   
       CPX    $F2     
       BEQ    LF6C2   
LF6C0: LDA    #$8D    
LF6C2: CMP    $D6,X   
       BCS    LF6C7   
       TAY            
LF6C7: SEC            
       LDA    #$38    
       SBC    $F1     
       CPX    #$01    
       BEQ    LF6D4   
       CPX    $F2     
       BEQ    LF6D6   
LF6D4: LDA    #$0C    
LF6D6: CMP    $D6,X   
       BCC    LF6DB   
       TAY            
LF6DB: STY    $D6,X   
       DEX            
       BPL    LF6AD   
       LDX    $AF     
       LDA    #$00    
       LDY    $B4     
       CPY    #$0A    
       BCS    LF6EF   
       TAX            
       LDA    #$80    
       LDY    #$0A    
LF6EF: CPY    #$96    
       BCC    LF6F8   
       TAX            
       LDA    #$80    
       LDY    #$95    
LF6F8: EOR    $BD     
       STA    $BD     
       STY    $B4     
       STX    $AF     
       LDA    $D0     
       CMP    #$5A    
       BCS    LF708   
       LDA    #$5A    
LF708: CMP    #$B4    
       BCC    LF70E   
       LDA    #$B4    
LF70E: STA    $D0     
       LDX    #$01    
LF712: LDY    #$FF    
       LDA    #$01    
       BIT    $BC     
       BMI    LF726   
       LDA    $C2,X   
       BMI    LF71F   
       INY            
LF71F: STY    $D8,X   
       DEX            
       BEQ    LF712   
       BNE    LF746   
LF726: BNE    LF738   
       STY    $C2     
       STY    $D8     
       LDA    $D6     
       CMP    $D7     
       BCC    LF733   
       INY            
LF733: STY    $D9     
       JMP    LF746   
LF738: INY            
       STY    $D9     
       STY    $C3     
       LDA    $D6     
       CMP    $D7     
       BCC    LF744   
       DEY            
LF744: STY    $D8     
LF746: LDX    #$01    
LF748: LDA    $C4,X   
       BEQ    LF764   
       INC    $C4,X   
       LDA    $C4,X   
       CMP    #$1E    
       BCS    LF760   
       CMP    #$10    
       BCS    LF75C   
       LDA    #$FD    
       BNE    LF764   
LF75C: LDA    #$03    
       BNE    LF764   
LF760: LDA    #$00    
       STA    $C4,X   
LF764: CLC            
       ADC    $CD,X   
       STA    $CD,X   
       DEX            
       BEQ    LF748   
       JMP    LF09B   
LF76F: .byte $E0,$87,$84,$84,$FC,$E0,$C0,$E0,$F0,$C0,$C0,$E0,$C0,$C0,$C0,$E0
       .byte $E3,$EE,$F8,$F0,$C0,$E0,$F0,$E0,$E0,$EE,$FB,$F1,$C0,$E0,$F0,$E0
       .byte $C0,$E0,$F0,$FC,$C4,$E4,$F4,$E6
LF797: .byte $1A,$1A,$1C,$1E,$20,$22,$22,$22
LF79F: .byte $16,$86,$EE,$AA,$AA,$AA,$EE,$22,$22,$22,$22,$22,$EE,$22,$EE,$88
       .byte $EE,$EE,$22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE
       .byte $EE,$88,$EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE
       .byte $AA,$EE,$22,$EE,$00,$04,$00,$04
LF7D7: .byte $00,$00,$00,$00,$00,$00,$00,$80,$80,$E0,$80,$80,$80,$80,$80,$80
       .byte $80
LF7E8: .byte $00,$00,$00,$00,$00,$00,$02,$04
LF7F0: .byte $DA,$64,$8A,$00,$06,$0F,$0E
LF7F7: .byte $00,$01,$FF,$00,$EA,$FD,$F1
LF7FE: .byte $03,$F7
