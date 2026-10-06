; Disassembly of roms/Flag Capture (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Flag Capture (32 in 1) (PAL).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
COLUP0  =  $06
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       TXS            
       STX    $E7     
       STX    $D8     
       STX    $82     
       STX    $83     
       INX            
       BNE    LF005   
       LDA    #$01    
       STA    $EA     
       STA    $D6     
       STA    $D7     
       LDA    #$15    
       STA    $D9     
LF01F: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$4D    
       STA    TIM64T  
       JSR    LF155   
LF039: LDA    INTIM   
       BNE    LF039   
       STA    WSYNC   
       STA    VBLANK  
       STA    $8A     
       STA    $8B     
       LDA    #$02    
       STA    CTRLPF  
       LDX    #$05    
LF04C: STA    WSYNC   
       LDA    $8A     
       STA    PF1     
       LDY    $AD     
       CPY    #$05    
       BPL    LF05C   
       LDA    #$00    
       BEQ    LF061   
LF05C: LDA    LF788,Y 
       AND    #$F0    
LF061: STA    $8A     
       LDY    $AB     
       LDA    LF788,Y 
       AND    #$0F    
       ORA    $8A     
       STA    $8A     
       LDA    $8B     
       STA    PF1     
       LDY    $AE     
       CPY    #$05    
       BPL    LF07C   
       LDA    #$00    
       BEQ    LF081   
LF07C: LDA    LF788,Y 
       AND    #$F0    
LF081: STA    $8B     
       LDY    $AC     
       LDA    LF788,Y 
       AND    #$0F    
       ORA    $8B     
       STA    $8B     
       LDA    $E7     
       BPL    LF096   
       LDA    #$00    
       STA    $8A     
LF096: DEX            
       BMI    LF0AC   
       LDA    $8A     
       STA    PF1     
       INC    $AB     
       INC    $AD     
       INC    $AC     
       INC    $AE     
       LDA    $8B     
       STA    PF1     
       JMP    LF04C   
LF0AC: LDA    #$00    
       STA    $8B     
       STA    PF1     
       LDA    #$01    
       STA    CTRLPF  
LF0B6: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $8B     
       CMP    #$07    
       BNE    LF0CD   
       JMP    LF146   
LF0CD: LDX    #$00    
       TXA            
       STA    $8A     
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
LF0DE: LDA    $8B     
       CMP    $82,X   
       BNE    LF106   
       LDA    $94,X   
       AND    #$20    
       BEQ    LF0F8   
       TXA            
       ASL            
       TAX            
       LDA    #$00    
       STA    $84,X   
       LDA    #$F7    
       STA    $85,X   
       JMP    LF111   
LF0F8: TXA            
       ASL            
       TAX            
       LDA    $9A,X   
       STA    $84,X   
       LDA    #$F7    
       STA    $85,X   
       JMP    LF111   
LF106: TXA            
       ASL            
       TAX            
       LDA    #$08    
       STA    $84,X   
       LDA    #$F7    
       STA    $85,X   
LF111: INX            
       CPX    #$03    
       BNE    LF0DE   
       LDY    #$00    
LF118: LDA    $E5     
       STA    REFP0   
       LDA    $E6     
       STA    REFP1   
       STA    WSYNC   
       LDA    ($84),Y 
       STA    GRP0    
       LDA    ($86),Y 
       STA    GRP1    
       LDA    #$80    
       STA    PF0     
       LDA    #$99    
       STA    PF1     
       STA    PF2     
       LDA    $8A     
       EOR    #$FF    
       STA    $8A     
       BNE    LF118   
       INY            
       CPY    #$08    
       BNE    LF118   
       INC    $8B     
       JMP    LF0B6   
LF146: STA    WSYNC   
       LDA    #$4C    
       STA    TIM64T  
LF14D: LDA    INTIM   
       BNE    LF14D   
       JMP    LF01F   
LF155: LDA    $EC     
       BEQ    LF163   
       LDA    #$00    
       STA    $EC     
       JSR    LF607   
       JMP    LF24E   
LF163: CLC            
       LDA    $9D     
       ADC    #$01    
       STA    $9D     
       BCC    LF16E   
       INC    $D5     
LF16E: LDA    #$00    
       ADC    $EE     
       STA    $EE     
       BPL    LF182   
       LDA    #$FF    
       STA    $E7     
       LDX    #$01    
LF17C: JSR    LF6F1   
       DEX            
       BPL    LF17C   
LF182: LDA    SWCHB   
       STA    $DE     
       LDX    #$07    
       LDY    #$07    
       AND    #$08    
       BEQ    LF193   
       LDX    #$F7    
       LDY    #$03    
LF193: LDA    $E7     
       BMI    LF199   
       LDX    #$FF    
LF199: AND    $D5     
       STA    $8B     
       STX    $8A     
       LDX    #$03    
LF1A1: LDA    LF6F8,Y 
       EOR    $8B     
       AND    $8A     
       STA    COLUP0,X
       DEY            
       DEX            
       BPL    LF1A1   
       LDX    #$01    
LF1B0: LDA    #$01    
       STA    $DC,X   
       LDA    #$0F    
       STA    $DA,X   
       ROL    $DE     
       BCC    LF1CF   
       LDA    $D0     
       ASL            
       BPL    LF1C7   
       LDA    #$02    
       STA    $DC,X   
       BNE    LF1CF   
LF1C7: LDA    $D0     
       BNE    LF1CF   
       LDA    #$13    
       STA    $DA,X   
LF1CF: DEX            
       BPL    LF1B0   
       LDA    SWCHB   
       LSR            
       BCS    LF1F7   
       LDA    #$00    
       LDX    #$E5    
LF1DC: STA    VSYNC,X 
       INX            
       CPX    #$F0    
       BNE    LF1DC   
       LDA    $D0     
       LSR            
       BCC    LF1EC   
       LDA    #$75    
       STA    $EB     
LF1EC: LDA    #$01    
       STA    $AA     
       STA    $EC     
       JSR    LF5AE   
       BEQ    LF1FE   
LF1F7: LSR            
       LDA    #$FF    
       BCC    LF201   
       STA    $D8     
LF1FE: JMP    LF24E   
LF201: STA    $E7     
       LDA    $D8     
       BMI    LF20D   
       EOR    $9D     
       AND    #$1F    
       BNE    LF24E   
LF20D: LDA    $9D     
       AND    #$1F    
       STA    $D8     
       STA    $94     
       STA    $95     
       INC    $D6     
       SED            
       CLC            
       LDA    $D7     
       ADC    #$01    
       STA    $D7     
       STA    $EA     
       CLD            
       CMP    #$11    
       BNE    LF230   
       LDA    #$01    
       STA    $D7     
       STA    $EA     
       STA    $D6     
LF230: LDY    $D6     
       CPY    #$04    
       BMI    LF23A   
       LDA    #$75    
       BNE    LF23C   
LF23A: LDA    #$15    
LF23C: STA    $D9     
       DEY            
       LDA    #$FF    
       STA    $82     
       STA    $83     
       STA    $91     
       STA    $90     
       LDA    LF7E6,Y 
       STA    $D0     
LF24E: LDX    #$01    
LF250: LDA    $EA,X   
       AND    #$0F    
       STA    $8A     
       ASL            
       ASL            
       CLC            
       ADC    $8A     
       STA    $AB,X   
       LDA    $EA,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $8A     
       LSR            
       LSR            
       CLC            
       ADC    $8A     
       STA    $AD,X   
       LDA    $9E,X   
       ASL            
       ASL            
       ASL            
       STA    $8B     
       TXA            
       ASL            
       TAX            
       LDA    $8B     
       STA    $9A,X   
       TXA            
       LSR            
       TAX            
       DEX            
       BPL    LF250   
       LDA    $93     
       EOR    #$01    
       TAX            
       STA    $93     
       LDA    #$00    
       STA    AUDC0,X 
       LDA    $D0     
       AND    #$81    
       BEQ    LF2BF   
       CPX    $AA     
       BNE    LF29D   
       RTS            

LF296: LDA    #$00    
       STA    $94     
       JMP    LF3AE   
LF29D: LSR            
       BCC    LF2BF   
       INC    $ED     
       LDA    $ED     
       CMP    #$1F    
       BNE    LF2BF   
       LDA    #$00    
       STA    $ED     
       LDA    $EB     
       SED            
       SEC            
       SBC    $DD     
       CLD            
       BMI    LF296   
       STA    $EB     
       BNE    LF2BF   
       LDA    #$3F    
       AND    $94     
       STA    $94     
LF2BF: LDA    $E8,X   
       BEQ    LF2FB   
       DEC    $E8,X   
       BEQ    LF2FE   
       LDA    $D1,X   
       STA    AUDC0,X 
       STA    AUDV0,X 
       LDA    $A6,X   
       CMP    #$02    
       BEQ    LF2D9   
       LDA    $D3,X   
       STA    AUDF0,X 
       BNE    LF2DF   
LF2D9: DEC    $E3,X   
       LDA    $E3,X   
       STA    AUDV0,X 
LF2DF: LDA    $E8,X   
       AND    $A8,X   
       BNE    LF2FB   
       INC    $A4,X   
       LSR    $A4,X   
       BCC    LF2F1   
       LDA    #$01    
       STA    $D3,X   
       BNE    LF2F7   
LF2F1: LDA    #$09    
       STA    $D3,X   
       LDA    $A6,X   
LF2F7: STA    $9E,X   
       ROL    $A4,X   
LF2FB: JMP    LF37B   
LF2FE: LDA    #$00    
       STA    $A4,X   
       LDA    $A6,X   
       STA    $9E,X   
       CMP    #$02    
       BEQ    LF34D   
       LDA    #$1F    
       STA    AUDF0,X 
       STA    AUDV0,X 
       LDA    $D0     
       LSR            
       BCC    LF320   
       LDA    $EB     
       BEQ    LF334   
       JSR    LF657   
       LDX    #$01    
       BNE    LF343   
LF320: JSR    LF657   
       CMP    $D9     
       BPL    LF337   
       LDA    $D0     
       ASL            
       BPL    LF343   
       CPX    #$00    
       BEQ    LF343   
       LDA    $EF     
       BEQ    LF343   
LF334: JMP    LF4DB   
LF337: LDA    $D0     
       BPL    LF334   
       CPX    #$00    
       BNE    LF334   
       LDA    #$01    
       STA    $EF     
LF343: STX    $AA     
       JSR    LF5AE   
       LDA    #$01    
       STA    $EC     
       RTS            

LF34D: LDA    #$0F    
       STA    AUDV0,X 
       TXA            
       EOR    #$01    
       TAY            
       LDA.wy $0082,Y 
       CMP    LF7F0,X 
       BNE    LF365   
       LDA.wy $0080,Y 
       CMP    LF7F2,X 
       BEQ    LF36F   
LF365: LDA    LF7F0,X 
       STA    $82,X   
       LDA    LF7F2,X 
       STA    $80,X   
LF36F: JSR    LF6D9   
       LDA    INPT4,X 
       BMI    LF397   
       STA    $88,X   
       JMP    LF3C8   
LF37B: JSR    LF4E4   
       LDA    $98,X   
       BEQ    LF385   
       DEC    $98,X   
       RTS            

LF385: LDA    $94,X   
       ASL            
       BMI    LF38B   
       RTS            

LF38B: LDA    INPT4,X 
       BMI    LF392   
       JMP    LF3F3   
LF392: AND    $88,X   
       BPL    LF397   
       RTS            

LF397: LDA    $D0     
       ASL            
       BPL    LF3C4   
       JSR    LF657   
       CMP    $D9     
       BMI    LF3C4   
       CPX    #$00    
       BNE    LF3AE   
       LDA    #$01    
       STA    $EF     
       JMP    LF343   
LF3AE: LDA    #$03    
       STA    $9E,X   
       LDA    $91     
       STA    $82,X   
       LDA    $90     
       STA    $80,X   
       LDA    #$00    
       STA    $E5,X   
       JSR    LF6D9   
       JMP    LF4DB   
LF3C4: LDA    #$80    
       STA    $88,X   
LF3C8: LDA    #$20    
       BIT    $D0     
       BEQ    LF3E4   
       STA    $94,X   
       TXA            
       EOR    #$01    
       TAX            
       LDA    #$E0    
       STA    $94,X   
       STA    $88,X   
       LDA    $DA,X   
       STA    $96,X   
       LDA    #$0F    
       STA    $98,X   
       BNE    LF3EC   
LF3E4: LDA    $DA,X   
       STA    $96,X   
       LDA    #$E0    
       STA    $94,X   
LF3EC: LDX    $93     
       LDA    #$00    
       STA    $E5,X   
       RTS            

LF3F3: EOR    $88,X   
       BMI    LF3F8   
       RTS            

LF3F8: LDA    #$00    
       STA    $88,X   
       STA    $EE     
       LDA    #$40    
       STA    $94,X   
       LDA    $82,X   
       STA    $8D     
       LDA    $80,X   
       STA    $8C     
       JSR    LF661   
       STA    $AF     
       CMP    $9B     
       BNE    LF41A   
       LDA    #$03    
       STA    $9E,X   
       JMP    LF4BF   
LF41A: LDA    $AF     
       LSR            
       BCC    LF42B   
       TAY            
       LDA.wy $00B0,Y 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF431   
LF42B: TAY            
       LDA.wy $00B0,Y 
       AND    #$0F    
LF431: STA    $9E,X   
       CMP    #$02    
       BNE    LF44A   
       STA    $A6,X   
       STA    $94,X   
       LDA    #$01    
       STA    $A8,X   
       LDA    #$08    
       STA    $E8,X   
       STA    $D1,X   
       ASL            
       STA    $E3,X   
       BNE    LF482   
LF44A: CMP    #$09    
       BNE    LF484   
       JSR    LF589   
       SEC            
       LDA    $A0     
       SBC    $A2     
       BPL    LF45D   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF45D: STA    $8A     
       SEC            
       LDA    $A1     
       SBC    $A3     
       BPL    LF46B   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF46B: STA    $8B     
       CMP    $8A     
       BCC    LF477   
       BEQ    LF477   
       LDA    $8B     
       STA    $8A     
LF477: LDA    #$08    
       CLC            
       ADC    $8A     
       STA    $9E,X   
       LDA    #$0C    
       STA    AUDC0,X 
LF482: BNE    LF48B   
LF484: CMP    #$04    
       BNE    LF4BF   
       JSR    LF66C   
LF48B: LDA    $D0     
       LSR            
       LSR            
       BCC    LF4BE   
       LSR            
       BCC    LF4A2   
       LDA    #$07    
       STA    $DF     
       LDA    #$05    
       STA    $E0     
       LDA    #$01    
       STA    $E1     
       STA    $E2     
LF4A2: LDX    #$03    
LF4A4: LDA    $8E,X   
       STA    $8A,X   
       DEX            
       BPL    LF4A4   
       JSR    LF55A   
       LDX    #$03    
LF4B0: LDA    $8A,X   
       STA    $8E,X   
       DEX            
       BPL    LF4B0   
       LDX    $93     
       JSR    LF661   
       STA    $9B     
LF4BE: RTS            

LF4BF: STA    $A6,X   
       STA    $94,X   
       LDA    #$20    
       STA    $E8,X   
       LDA    #$07    
       STA    $A8,X   
       LDA    #$09    
       STA    $D1,X   
       STA    $D3,X   
       TXA            
       EOR    #$01    
       TAX            
       JSR    LF6F1   
       LDX    $93     
       RTS            

LF4DB: LDX    #$01    
LF4DD: JSR    LF6F1   
       DEX            
       BPL    LF4DD   
       RTS            

LF4E4: LDA    $96,X   
       BEQ    LF4EB   
       DEC    $96,X   
       RTS            

LF4EB: LDA    $94,X   
       BMI    LF4F0   
       RTS            

LF4F0: LDA    #$00    
       STA    $DF     
       STA    $E0     
       LDA    #$08    
       STA    $E1     
       LDA    #$06    
       STA    $E2     
       LDA    SWCHA   
       EOR    #$FF    
       CPX    #$00    
       BNE    LF50B   
       LSR            
       LSR            
       LSR            
       LSR            
LF50B: AND    #$0F    
       BNE    LF510   
       RTS            

LF510: ASL            
       TAY            
       LDA    #$00    
       STA    $EE     
       LDA    LF7B8,Y 
       STA    $8A     
       INY            
       LDA    LF7B8,Y 
       STA    $8B     
       LDA    $80,X   
       STA    $8C     
       LDA    $82,X   
       STA    $8D     
       JSR    LF55A   
       LDX    $93     
       LDA    #$01    
       STA    AUDC0,X 
       TXA            
       EOR    #$01    
       TAX            
       LDA    $82,X   
       CMP    $8D     
       BNE    LF542   
       LDA    $80,X   
       CMP    $8C     
       BEQ    LF54C   
LF542: LDX    $93     
       LDA    $8C     
       STA    $80,X   
       LDA    $8D     
       STA    $82,X   
LF54C: LDX    $93     
       JSR    LF6D9   
       LDA    #$07    
       STA    $98,X   
       LDA    $DA,X   
       STA    $96,X   
       RTS            

LF55A: LDX    #$01    
LF55C: LDA    $8A,X   
       CLC            
       ADC    $8C,X   
       CMP    LF7FE,X 
       BCC    LF572   
       BEQ    LF576   
       LDA    $E1,X   
       STA    $8C,X   
       CMP    #$01    
       BEQ    LF57C   
       BNE    LF585   
LF572: STA    $8C,X   
       BMI    LF585   
LF576: LDA    $DF,X   
       STA    $8C,X   
       BEQ    LF585   
LF57C: LDA    $8A,X   
       SEC            
       EOR    #$FF    
       ADC    #$00    
       STA    $8A,X   
LF585: DEX            
       BPL    LF55C   
       RTS            

LF589: LDA    #$00    
       STA    $A0     
       LDA    $AF     
LF58F: CMP    #$09    
       BCC    LF599   
       SBC    #$09    
       INC    $A0     
       BNE    LF58F   
LF599: STA    $A1     
       LDA    #$00    
       STA    $A2     
       LDA    $9B     
LF5A1: CMP    #$09    
       BCC    LF5AB   
       SBC    #$09    
       INC    $A2     
       BNE    LF5A1   
LF5AB: STA    $A3     
       RTS            

LF5AE: LDX    #$01    
LF5B0: LDA    #$00    
       STA    $A4,X   
       STA    $E5,X   
       LDA    LF7F0,X 
       STA    $82,X   
       LDA    LF7F2,X 
       STA    $80,X   
       LDA    #$E0    
       STA    $94,X   
       STA    $88,X   
       LDA    $DA,X   
       STA    $96,X   
       STA    $98,X   
       LDA    #$1F    
       STA    AUDF0,X 
       STA    AUDV0,X 
       DEX            
       BPL    LF5B0   
       LDA    $D0     
       AND    #$81    
       BEQ    LF5E7   
       LDX    $AA     
       LDA    #$FF    
       STA    $82,X   
       LDA    #$00    
       STA    $94,X   
       BEQ    LF5F2   
LF5E7: LDA    #$20    
       BIT    $D0     
       BEQ    LF5F2   
       LDX    $AA     
       JSR    LF6F1   
LF5F2: LDX    #$01    
LF5F4: JSR    LF6D9   
       DEX            
       BPL    LF5F4   
       LDY    #$00    
       LDA    #$44    
LF5FE: STA.wy $00B0,Y 
       INY            
       CPY    #$20    
       BNE    LF5FE   
       RTS            

LF607: LDA    $9D     
       AND    #$07    
       TAY            
       LDA    LF7F4,Y 
       TAY            
       LDA    LF7B8,Y 
       STA    $8E     
       INY            
       LDA    LF7B8,Y 
       STA    $8F     
       LDA    $9D     
       AND    #$3F    
       TAY            
       CPY    #$3F    
       BNE    LF626   
       LDY    #$1F    
LF626: STY    $8A     
       STY    $9B     
       JSR    LF589   
       LDA    $A2     
       STA    $91     
       LDA    $A3     
       STA    $90     
       JSR    LF7CE   
       LDX    #$08    
       LDA    #$20    
       STA    $92     
       LDA    #$02    
       STA    $8B     
       JSR    LF6AE   
       LDX    #$1B    
       LDA    #$90    
       STA    $92     
       LDA    #$09    
       STA    $8B     
       JSR    LF6AE   
       LDA    #$00    
       STA    $93     
       RTS            

LF657: SED            
       CLC            
       LDA    $EA,X   
       ADC    $DC,X   
       STA    $EA,X   
       CLD            
       RTS            

LF661: LDA    $8D     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $8D     
       ADC    $8C     
       RTS            

LF66C: JSR    LF589   
       LDA    $A0     
       CMP    $A2     
       BCC    LF695   
       BNE    LF685   
       LDA    $A1     
       CMP    $A3     
       BCC    LF681   
       LDA    #$08    
       STA    $E5,X   
LF681: LDA    #$06    
       BNE    LF6A7   
LF685: LDA    $A3     
       CMP    $A1     
       BEQ    LF6A9   
       BCS    LF691   
       LDA    #$08    
       STA    $E5,X   
LF691: LDA    #$07    
       BNE    LF6A7   
LF695: LDA    $A3     
       CMP    $A1     
       BEQ    LF6A5   
       BCS    LF6A1   
       LDA    #$08    
       STA    $E5,X   
LF6A1: LDA    #$08    
       BNE    LF6A7   
LF6A5: LDA    #$05    
LF6A7: STA    $9E,X   
LF6A9: LDA    #$04    
       STA    AUDC0,X 
       RTS            

LF6AE: LDA    $8A     
       AND    #$01    
       BEQ    LF6C4   
       LDA    $8A     
       LSR            
       TAY            
       LDA.wy $00B0,Y 
       AND    #$0F    
       ORA    $92     
       STA.wy $00B0,Y 
       BNE    LF6D2   
LF6C4: LDA    $8A     
       LSR            
       TAY            
       LDA.wy $00B0,Y 
       AND    #$F0    
       ORA    $8B     
       STA.wy $00B0,Y 
LF6D2: JSR    LF7CE   
       DEX            
       BNE    LF6AE   
       RTS            

LF6D9: LDY    $80,X   
       STA    HMCLR   
       LDA    LF7DD,Y 
       STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
LF6E7: DEY            
       BPL    LF6E7   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF6F1: LDA    #$20    
       AND    $94,X   
       STA    $94,X   
       RTS            

LF6F8: .byte $E6,$46,$0A,$94,$0E,$00,$08,$04,$3C,$18,$FF,$18,$18,$24,$42,$81
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$3C,$7E,$FF,$FF,$7E,$3C
       .byte $00,$7E,$7E,$7E,$40,$40,$40,$40,$10,$38,$54,$92,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$92,$54,$38,$10,$08,$04,$02,$FF,$02,$04,$08,$00
       .byte $1F,$03,$05,$09,$11,$20,$40,$80,$80,$40,$20,$11,$09,$05,$03,$1F
       .byte $00,$08,$18,$28,$08,$08,$08,$3C,$00,$3C,$04,$04,$08,$10,$20,$3C
       .byte $00,$3C,$04,$04,$3C,$04,$04,$3C,$00,$24,$24,$24,$3E,$04,$04,$04
       .byte $00,$3C,$20,$20,$3C,$04,$24,$3C,$38,$20,$20,$3C,$24,$24,$3C,$00
       .byte $00,$3C,$04,$08,$10,$20,$20,$20,$00,$3C,$24,$24,$3C,$24,$24,$3C
LF788: .byte $EE,$AA,$AA,$AA,$EE,$44,$44,$44,$44,$44,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
LF7B8: .byte $22,$EE,$00,$FF,$00,$01,$00,$00,$FF,$00,$FF,$FF,$FF,$01,$00,$00
       .byte $01,$00,$01,$FF,$01,$01
LF7CE: LSR    $8A     
       ROL            
       EOR    $8A     
       LSR            
       BCS    LF7DC   
       LDA    $8A     
       ORA    #$20    
       STA    $8A     
LF7DC: RTS            

LF7DD: .byte $A3,$94,$76,$67,$58,$49,$3A,$2B,$1C
LF7E6: .byte $00,$20,$26,$22,$C0,$C6,$C2,$01,$07,$03
LF7F0: .byte $00,$06
LF7F2: .byte $00,$08
LF7F4: .byte $02,$04,$08,$0A,$0C,$10,$12,$14,$00,$F0
LF7FE: .byte $09,$07
