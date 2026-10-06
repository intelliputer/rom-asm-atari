; Disassembly of roms/Basketball (4k version).bin
; Disassembled Tue Oct  6 15:21:06 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Basketball (4k version).bin
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
       LDY    #$07    
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
       LDA    #$33    
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
LF7FE: .byte $03,$F7,$86,$F6,$A9,$F7,$85,$F2,$A2,$03,$86,$F4,$B5,$87,$29,$0F
       .byte $85,$F3,$0A,$0A,$18,$65,$F3,$69,$A1,$85,$F1,$8A,$0A,$0A,$65,$F4
       .byte $69,$DA,$85,$F5,$A0,$04,$B1,$F1,$29,$0F,$91,$F5,$88,$10,$F7,$B5
       .byte $87,$29,$F0,$4A,$4A,$85,$F3,$4A,$4A,$65,$F3,$69,$A1,$85,$F1,$A0
       .byte $04,$B1,$F1,$29,$F0,$11,$F5,$91,$F5,$88,$10,$F5,$CA,$10,$BB,$A2
       .byte $05,$B5,$E8,$A0,$07,$2A,$76,$E8,$88,$10,$FA,$CA,$D0,$F3,$60,$B5
       .byte $AF,$18,$69,$37,$48,$4A,$4A,$4A,$4A,$A8,$68,$29,$0F,$84,$F1,$18
       .byte $65,$F1,$C9,$0F,$90,$03,$E9,$0F,$C8,$C9,$08,$49,$0F,$B0,$03,$69
       .byte $01,$88,$0A,$0A,$0A,$0A,$84,$02,$88,$10,$FD,$95,$0F,$85,$02,$95
       .byte $1F,$CA,$D0,$CB,$85,$02,$85,$2A,$85,$02,$86,$2B,$60,$A9,$32,$85
       .byte $B2,$A9,$6E,$85,$B3,$A9,$3E,$85,$B0,$A9,$4E,$85,$B1,$A2,$05,$86
       .byte $0B,$86,$0C,$86,$04,$86,$05,$20,$5D,$F0,$A0,$F7,$84,$F1,$A0,$00
       .byte $A9,$36,$85,$F7,$AD,$82,$02,$29,$08,$D0,$0A,$A9,$0A,$85,$F7,$A9
       .byte $07,$85,$F1,$A0,$04,$B9,$F0,$F7,$24,$81,$70,$04,$45,$BA,$25,$F1
       .byte $95,$06,$95,$F2,$24,$81,$50,$02,$A5,$F7,$85,$D3,$C8,$E8,$E0,$04
       .byte $90,$E3,$CA,$86,$0A,$AE,$84,$02,$D0,$FB,$86,$02,$86,$01,$A0,$EE
       .byte $A9,$F1,$85,$F1,$85,$02,$A5,$F2,$85,$06,$B5,$E4,$85,$0E,$B5,$DA
       .byte $85,$1B,$B5,$DF,$85,$1C,$C8,$C4,$F1,$A5,$F4,$85,$06,$85,$07,$B5
       .byte $E9,$85,$0E,$A5,$F3,$85,$07,$90,$DB,$E8,$98,$18,$69,$03,$85,$F1
       .byte $30,$D2,$A6,$F2,$86,$06,$85,$04,$85,$05,$85,$0E,$85,$1B,$85,$1C
       .byte $A2,$02,$A5,$D6,$85,$B0,$A5,$D7,$20,$5F,$F0,$A5,$D8,$85,$0B,$A5
       .byte $D9,$85,$0C,$A9,$21,$85,$0A,$A0,$0E,$84,$8E,$A0,$00,$85,$02,$85
       .byte $2A,$84,$1C,$A0,$02,$38,$A5,$CF,$E5,$8E,$29,$F8,$F0,$02,$A0,$00
       .byte $84,$1F,$84,$22,$84,$23,$18,$A5,$8E,$69,$02,$85,$8E,$4A,$4A,$4A
       .byte $AA,$BC,$D7,$F7,$38,$A5,$CD,$E5,$8E,$4A,$AA,$29,$F0,$F0,$04,$A9
       .byte $00,$F0,$02,$B5,$8F,$EA,$85,$2A,$85,$1B,$84,$0E,$A5,$8E,$C9,$5A
       .byte $90,$08,$A6,$D3,$86,$09,$86,$1D,$86,$1E,$38,$A5,$CE,$E5,$8E,$4A
       .byte $AA,$29,$F0,$F0,$04,$A0,$00,$F0,$02,$B4,$9F,$A5,$8E,$C9,$B4,$B0
       .byte $0E,$29,$03,$D0,$98,$A2,$10,$86,$22,$A2,$F0,$86,$23,$D0,$8E,$A9
       .byte $00,$A0,$01,$85,$02,$85,$09,$A2,$05,$95,$1A,$CA,$D0,$FB,$88,$D0
       .byte $F2,$20,$00,$F0,$A9,$2A,$85,$02,$85,$01,$85,$00,$8D,$95,$02,$AE
       .byte $84,$02,$D0,$FB,$86,$02,$86,$00,$A9,$33,$8D,$96,$02,$D0,$51,$78
       .byte $D8,$A2,$FF,$9A,$E8,$86,$81,$86,$82,$A2,$BB,$86,$8A,$A2,$B1,$86
       .byte $89,$A2,$2A,$86,$AF,$A0,$00,$94,$43,$CA,$D0,$FB,$A2,$0D,$94,$B9
       .byte $CA,$D0,$FB,$84,$88,$A9,$4A,$85,$87,$A9,$87,$A2,$0A,$86,$B9,$95
       .byte $C6,$CA,$D0,$FB,$A9,$54,$85,$D6,$85,$16,$A9,$46,$85,$D7,$A9,$4F
       .byte $85,$B4,$C6,$C2,$A2,$10,$86,$BA,$CA,$86,$EF,$86,$D8,$4C,$9B,$F0
       .byte $E6,$80,$AD,$82,$02,$6A,$B0,$0A,$CA,$86,$81,$E8,$86,$89,$86,$8A
       .byte $F0,$AF,$A5,$83,$F0,$02,$E6,$83,$A5,$80,$29,$3F,$D0,$1E,$24,$81
       .byte $10,$14,$38,$F8,$A5,$88,$E9,$01,$B0,$09,$38,$A5,$87,$E9,$10,$85
       .byte $87,$A9,$59,$85,$88,$D8,$E6,$BA,$D0,$02,$85,$81,$AD,$82,$02,$49
       .byte $FF,$29,$02,$D0,$04,$85,$83,$F0,$21,$24,$83,$30,$1D,$A9,$C0,$85
       .byte $83,$E6,$82,$A5,$82,$C9,$02,$D0,$04,$A9,$00,$85,$82,$18,$69,$B1
       .byte $85,$89,$A9,$BB,$85,$8A,$A9,$00,$85,$81,$A5,$D2,$85,$F1,$AD,$80
       .byte $02,$85,$D2,$A6,$82,$D0,$03,$4C,$59,$F3,$A2,$00,$29,$0F,$85,$F3
       .byte $A5,$F1,$29,$F0,$05,$F3,$85,$D2,$A5,$BC,$30,$1F,$38,$A5,$D6,$E5
       .byte $B4,$29,$FE,$D0,$0D,$38,$A5,$CD,$E5,$D0,$90,$06,$65,$AF,$29,$C0
       .byte $F0,$6F,$8A,$18,$65,$B4,$A8,$A6,$D0,$D0,$34,$29,$01,$F0,$04,$A9
       .byte $03,$D0,$F0,$24,$BC,$50,$06,$C6,$D1,$10,$56,$D0,$4E,$A5,$80,$AA
       .byte $38,$29,$3F,$09,$10,$A8,$E5,$D6,$90,$15,$A5,$CD,$E9,$87,$B0,$04
       .byte $49,$FF,$69,$01,$18,$65,$D6,$4A,$4A,$85,$D1,$A2,$00,$F0,$32,$A5
       .byte $80,$25,$EF,$D0,$26,$A5,$D2,$09,$F0,$85,$D2,$38,$8A,$E5,$CD,$A5
       .byte $D2,$B0,$04,$29,$EF,$90,$02,$29,$DF,$85,$D2,$38,$98,$E5,$D6,$A5
       .byte $D2,$B0,$04,$29,$BF,$90,$02,$29,$7F,$85,$D2,$A2,$00,$B5,$3C,$30
       .byte $1E,$B4,$B5,$30,$33,$88,$94,$B5,$8A,$09,$80,$C5,$BC,$D0,$08,$09
       .byte $C0,$85,$BC,$84,$BE,$D0,$21,$B4,$C4,$D0,$02,$F6,$C4,$D0,$19,$B5
       .byte $B5,$10,$15,$A0,$00,$94,$B5,$8A,$09,$C0,$C5,$BC,$D0,$0A,$84,$BC
       .byte $A5,$BD,$29,$BF,$05,$B7,$85,$BD,$E8,$E0,$01,$F0,$C0,$A2,$00,$86
       .byte $C0,$86,$C1,$E8,$B4,$C4,$D0,$54,$B4,$B5,$30,$50,$A5,$D2,$E0,$00
       .byte $D0,$04,$4A,$4A,$4A,$4A,$29,$0F,$85,$F1,$A5,$80,$29,$03,$D0,$10
       .byte $E0,$01,$F0,$07,$2C,$82,$02,$70,$33,$50,$05,$2C,$82,$02,$30,$2C
       .byte $A5,$F1,$C9,$0F,$F0,$02,$95,$C0,$4A,$4A,$A8,$B9,$F7,$F7,$F0,$02
       .byte $95,$C2,$18,$75,$D6,$95,$D6,$A5,$F1,$29,$03,$A8,$B9,$F7,$F7,$18
       .byte $75,$CD,$C9,$B4,$B0,$06,$C9,$5A,$90,$02,$95,$CD,$CA,$F0,$A5,$A2
       .byte $01,$B5,$32,$29,$40,$F0,$3E,$38,$B5,$CD,$E5,$D0,$B0,$04,$49,$FF
       .byte $69,$01,$A4,$B8,$D0,$2F,$24,$BC,$10,$1D,$29,$FE,$D0,$27,$A5,$80
       .byte $29,$01,$85,$F1,$E4,$F1,$D0,$1D,$8A,$86,$F0,$09,$80,$85,$BC,$A9
       .byte $40,$85,$BD,$85,$D4,$D0,$11,$B4,$C4,$F0,$06,$29,$E0,$F0,$E9,$D0
       .byte $04,$29,$F0,$F0,$E3,$CA,$10,$B9,$24,$BC,$30,$03,$4C,$1D,$F5,$70
       .byte $20,$A6,$F0,$B5,$CD,$85,$D0,$38,$B5,$D6,$FD,$FE,$F7,$85,$B4,$A5
       .byte $D4,$29,$0F,$C9,$08,$90,$02,$49,$0F,$0A,$85,$AF,$E6,$D4,$4C,$F4
       .byte $F5,$A5,$80,$29,$03,$D0,$33,$85,$BF,$E6,$BE,$A5,$BE,$29,$0F,$C9
       .byte $08,$90,$02,$49,$0F,$AA,$18,$69,$07,$85,$B9,$BD,$97,$F7,$85,$AF
       .byte $A5,$F0,$D0,$0C,$E6,$AF,$18,$A5,$D6,$7D,$E8,$F7,$E9,$02,$D0,$08
       .byte $38,$A5,$D7,$69,$09,$FD,$E8,$F7,$85,$B4,$A0,$80,$A6,$F0,$B5,$CD
       .byte $85,$D0,$38,$B5,$D6,$FD,$9F,$F7,$B0,$06,$49,$FF,$69,$01,$A0,$00
       .byte $85,$F1,$84,$BD,$A0,$00,$38,$B5,$CD,$E9,$87,$B0,$06,$49,$FF,$69
       .byte $01,$A0,$40,$84,$B7,$85,$F2,$A2,$02,$B5,$F0,$C9,$04,$B0,$02,$A9
       .byte $04,$95,$F0,$CA,$D0,$F3,$46,$F2,$46,$F1,$A2,$01,$B5,$F1,$C9,$02
       .byte $F0,$1E,$C9,$03,$F0,$05,$CA,$F0,$F3,$D0,$EB,$A9,$02,$95,$F1,$8A
       .byte $49,$01,$AA,$B5,$F1,$4A,$4A,$85,$F3,$B5,$F1,$38,$E5,$F3,$95,$F1
       .byte $A5,$F1,$85,$CB,$85,$CC,$A5,$F2,$85,$C9,$85,$CA,$4C,$F4,$F5,$24
       .byte $36,$10,$47,$A5,$D0,$C9,$78,$90,$41,$C9,$96,$B0,$3D,$A5,$AF,$C9
       .byte $46,$B0,$25,$C9,$36,$90,$33,$A2,$00,$A5,$B4,$C9,$50,$90,$01,$E8
       .byte $8A,$09,$80,$85,$BB,$85,$C9,$85,$CB,$BD,$9F,$F7,$85,$B4,$85,$EE
       .byte $A9,$87,$85,$D0,$A9,$0C,$85,$B9,$24,$C6,$30,$12,$A9,$80,$85,$C6
       .byte $45,$BD,$85,$BD,$A9,$02,$85,$C7,$D0,$04,$A9,$00,$85,$C6,$A5,$BB
       .byte $10,$37,$A4,$AF,$C0,$1E,$B0,$31,$29,$01,$AA,$85,$BB,$A0,$08,$84
       .byte $C8,$49,$01,$A8,$A5,$EE,$99,$D6,$00,$A9,$87,$99,$CD,$00,$A0,$50
       .byte $94,$D6,$A5,$81,$F0,$13,$18,$F8,$B5,$89,$69,$02,$95,$89,$D8,$8A
       .byte $F0,$04,$46,$EF,$D0,$03,$38,$26,$EF,$C6,$CA,$D0,$0E,$A5,$C9,$85
       .byte $CA,$C6,$B4,$24,$BD,$30,$04,$E6,$B4,$E6,$B4,$C6,$CC,$D0,$0E,$A5
       .byte $CB,$85,$CC,$C6,$D0,$24,$BD,$50,$04,$E6,$D0,$E6,$D0,$A5,$80,$29
       .byte $03,$D0,$23,$18,$A5,$AF,$85,$D5,$65,$B9,$38,$E5,$BF,$B0,$13,$A5
       .byte $B9,$4A,$4A,$85,$F1,$38,$A5,$B9,$E5,$F1,$85,$B9,$A9,$FF,$85,$BF
       .byte $A9,$00,$85,$AF,$E6,$BF,$85,$2C,$A0,$00,$24,$BB,$30,$0A,$A5,$AF
       .byte $C5,$D5,$B0,$05,$C9,$28,$90,$01,$88,$84,$B8,$38,$A5,$D0,$E5,$AF
       .byte $85,$CF,$A5,$AF,$C9,$02,$B0,$04,$A9,$02,$85,$C7,$A9,$1F,$85,$17
       .byte $A9,$0F,$85,$15,$85,$18,$C6,$C7,$10,$04,$A9,$00,$E6,$C7,$85,$19
       .byte $A9,$08,$C6,$C8,$10,$04,$A9,$00,$E6,$C8,$85,$1A,$A5,$81,$D0,$04
       .byte $85,$19,$85,$1A,$A2,$01,$A9,$F7,$85,$F2,$85,$F4,$A9,$00,$85,$F6
       .byte $A5,$80,$29,$04,$D0,$02,$95,$C0,$B5,$C0,$F0,$04,$A9,$6F,$D0,$02
       .byte $A9,$77,$85,$F1,$A5,$BC,$10,$1A,$29,$01,$86,$F5,$C5,$F5,$D0,$12
       .byte $A5,$AF,$C9,$0C,$90,$0C,$C9,$20,$B0,$04,$A0,$87,$D0,$06,$A0,$8F
       .byte $D0,$02,$A0,$7F,$84,$F3,$A0,$07,$A9,$8F,$CA,$D0,$02,$A9,$9F,$E8
       .byte $85,$F5,$B1,$F1,$91,$F5,$A5,$F5,$18,$69,$08,$85,$F5,$B1,$F3,$91
       .byte $F5,$88,$10,$E4,$CA,$F0,$A9,$A5,$BC,$49,$80,$85,$F2,$A2,$01,$B4
       .byte $D6,$B5,$CD,$4A,$4A,$85,$F1,$18,$69,$5E,$E0,$00,$F0,$04,$E4,$F2
       .byte $F0,$02,$A9,$8D,$D5,$D6,$B0,$01,$A8,$38,$A9,$38,$E5,$F1,$E0,$01
       .byte $F0,$04,$E4,$F2,$F0,$02,$A9,$0C,$D5,$D6,$90,$01,$A8,$94,$D6,$CA
       .byte $10,$CD,$A6,$AF,$A9,$00,$A4,$B4,$C0,$0A,$B0,$05,$AA,$A9,$80,$A0
       .byte $0A,$C0,$96,$90,$05,$AA,$A9,$80,$A0,$95,$45,$BD,$85,$BD,$84,$B4
       .byte $86,$AF,$A5,$D0,$C9,$5A,$B0,$02,$A9,$5A,$C9,$B4,$90,$02,$A9,$B4
       .byte $85,$D0,$A2,$01,$A0,$FF,$A9,$01,$24,$BC,$30,$0C,$B5,$C2,$30,$01
       .byte $C8,$94,$D8,$CA,$F0,$EE,$D0,$20,$D0,$10,$84,$C2,$84,$D8,$A5,$D6
       .byte $C5,$D7,$90,$01,$C8,$84,$D9,$4C,$46,$F7,$C8,$84,$D9,$84,$C3,$A5
       .byte $D6,$C5,$D7,$90,$01,$88,$84,$D8,$A2,$01,$B5,$C4,$F0,$18,$F6,$C4
       .byte $B5,$C4,$C9,$1E,$B0,$0C,$C9,$10,$B0,$04,$A9,$FD,$D0,$08,$A9,$03
       .byte $D0,$04,$A9,$00,$95,$C4,$18,$75,$CD,$95,$CD,$CA,$F0,$DC,$4C,$9B
       .byte $F0,$E0,$87,$84,$84,$FC,$E0,$C0,$E0,$F0,$C0,$C0,$E0,$C0,$C0,$C0
       .byte $E0,$E3,$EE,$F8,$F0,$C0,$E0,$F0,$E0,$E0,$EE,$FB,$F1,$C0,$E0,$F0
       .byte $E0,$C0,$E0,$F0,$FC,$C4,$E4,$F4,$E6,$1A,$1A,$1C,$1E,$20,$22,$22
       .byte $22,$16,$86,$EE,$AA,$AA,$AA,$EE,$22,$22,$22,$22,$22,$EE,$22,$EE
       .byte $88,$EE,$EE,$22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22
       .byte $EE,$EE,$88,$EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE
       .byte $EE,$AA,$EE,$22,$EE,$00,$04,$00,$04,$00,$00,$00,$00,$00,$00,$00
       .byte $80,$80,$E0,$80,$80,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00
       .byte $02,$04,$DA,$64,$8A,$00,$06,$0F,$0E,$00,$01,$FF,$00,$EA,$FD,$F1
       .byte $03,$F7
