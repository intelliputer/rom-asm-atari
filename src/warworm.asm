; Disassembly of roms/warworm.bin
; Disassembled Tue Oct  6 15:24:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/warworm.bin
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
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXM0FB  =  $34
CXM1FB  =  $35
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: LDA    #$00    
LF002: STA    $F6     
       STA    $F7     
       LDA    $DD     
       CMP    $FC     
       BNE    LF010   
       LDA    $DE     
       STA    $F6     
LF010: LDA    $E0     
       CMP    $FC     
       BNE    LF01A   
       LDA    $E1     
       STA    $F7     
LF01A: LDA    #$03    
       STA    $E9     
       LDX    $FC     
       LDA    $80,X   
       LDY    $97,X   
LF024: STA    WSYNC   
       STA    PF1     
       STY    $010F   
       LDY    $F6     
       LDA    LFCF1,Y 
       STA    GRP0    
       LDY    $F7     
       LDA    LFCF1,Y 
       STA    GRP1    
       INC    $F7     
       INC    $F6     
       LDA    $C5,X   
       LDY    $AE,X   
       STY    PF2     
       STA    PF1     
       LDA    $80,X   
       LDY    $97,X   
       STA    WSYNC   
       STA    PF1     
       STY    $010F   
       LDY    $F8     
       LDA    LFE70,Y 
       STA    ENAM0   
       LDY    $F9     
       LDA    LFE70,Y 
       STA    ENAM1   
       INC    $F8     
       INC    $F9     
       LDA    $C5,X   
       LDY    $AE,X   
       STY    PF2     
       STA    PF1     
       LDA    $80,X   
       LDY    $97,X   
       DEC    $E9     
       BNE    LF024   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF1     
       STA    PF2     
       DEC    $FC     
       BPL    LF002   
       RTS            

LF081: .byte $A9,$00,$A2,$5C,$95,$80,$CA,$10,$FB,$60
LF08B: TXA            
       AND    #$18    
       BNE    LF09C   
       JSR    LF144   
       ORA.wy $0080,Y 
       STA.wy $0080,Y 
       JMP    LF0C9   
LF09C: CMP    #$08    
       BNE    LF0AC   
       JSR    LF151   
       ORA.wy $0097,Y 
       STA.wy $0097,Y 
       JMP    LF0C9   
LF0AC: CMP    #$10    
       BNE    LF0BC   
       JSR    LF144   
       ORA.wy $00AE,Y 
       STA.wy $00AE,Y 
       JMP    LF0C9   
LF0BC: CMP    #$18    
       BNE    LF0C9   
       JSR    LF151   
       ORA.wy $00C5,Y 
       STA.wy $00C5,Y 
LF0C9: RTS            

LF0CA: TXA            
       AND    #$18    
       BNE    LF0DD   
       JSR    LF144   
       EOR    #$FF    
       AND.wy $0080,Y 
       STA.wy $0080,Y 
       JMP    LF110   
LF0DD: CMP    #$08    
       BNE    LF0EF   
       JSR    LF151   
       EOR    #$FF    
       AND.wy $0097,Y 
       STA.wy $0097,Y 
       JMP    LF110   
LF0EF: CMP    #$10    
       BNE    LF101   
       JSR    LF144   
       EOR    #$FF    
       AND.wy $00AE,Y 
       STA.wy $00AE,Y 
       JMP    LF110   
LF101: CMP    #$18    
       BNE    LF110   
       JSR    LF151   
       EOR    #$FF    
       AND.wy $00C5,Y 
       STA.wy $00C5,Y 
LF110: RTS            

LF111: TXA            
       AND    #$18    
       BNE    LF11F   
       JSR    LF144   
       AND.wy $0080,Y 
       JMP    LF143   
LF11F: CMP    #$08    
       BNE    LF12C   
       JSR    LF151   
       AND.wy $0097,Y 
       JMP    LF143   
LF12C: CMP    #$10    
       BNE    LF139   
       JSR    LF144   
       AND.wy $00AE,Y 
       JMP    LF143   
LF139: CMP    #$18    
       BNE    LF143   
       JSR    LF151   
       AND.wy $00C5,Y 
LF143: RTS            

LF144: TXA            
       AND    #$07    
       TAX            
       INX            
       SEC            
       LDA    #$00    
LF14C: ROR            
       DEX            
       BNE    LF14C   
       RTS            

LF151: TXA            
       AND    #$07    
       TAX            
       INX            
       SEC            
       LDA    #$00    
LF159: ROL            
       DEX            
       BNE    LF159   
       RTS            

LF15E: CLC            
       ROL            
       ROL            
       TAX            
       LDA    LFF6B,X 
       STA    $F6     
       LDA    LFF6C,X 
       STA    $F7     
       LDA    LFF6D,X 
       STA    $F8     
       LDA    LFF6E,X 
       STA    $F9     
       LDY    #$16    
LF178: LDA    ($F6),Y 
       STA.wy $0080,Y 
       STA.wy $00C5,Y 
       LDA    ($F8),Y 
       STA.wy $0097,Y 
       STA.wy $00AE,Y 
       DEY            
       BPL    LF178   
       RTS            

LF18C: LDX    #$0F    
LF18E: LDA    LFE34,X 
       STA    $80,X   
       LDA    LFE43,X 
       STA    $97,X   
       LDA    LFE52,X 
       STA    $AE,X   
       LDA    LFE61,X 
       STA    $C5,X   
       DEX            
       BPL    LF18E   
       RTS            

LF1A6: LDA    #$02    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       RTS            

LF1C0: LDA    INTIM   
       BNE    LF1C0   
       RTS            

LF1C6: LDA    #$02    
       STA    WSYNC   
       STA    HMCLR   
       STA    VBLANK  
       LDA    #$24    
       STA    TIM64T  
       RTS            

LF1D4: DEY            
       STA    WSYNC   
       BNE    LF1D4   
       RTS            

LF1DA: LDA    $F2     
       ROL            
       ROL            
       EOR    $F2     
       ROL            
       ROL            
       ROL    $F1     
       ROL    $F2     
       RTS            

LF1E7: LDA    $E7     
       BNE    LF228   
       LDA    $F5     
       BEQ    LF1F3   
       DEC    $F5     
       BPL    LF228   
LF1F3: LDA    $F3     
       AND    #$08    
       BNE    LF1FD   
       BIT    INPT5   
       BMI    LF228   
LF1FD: LDA    #$01    
       STA    AUDF1   
       LDA    #$06    
       STA    AUDV1   
       LDA    #$14    
       STA    $ED     
       LDA    $E1     
       STA    $E7     
       LDA    $DF     
       STA    $E5     
       LDA    $E0     
       STA    $E6     
       LDA    #$00    
       STA    RESMP1  
       LDA    #$09    
       CMP    $E7     
       BMI    LF224   
       LDA    #$10    
       JMP    LF226   
LF224: LDA    #$00    
LF226: STA    NUSIZ1  
LF228: RTS            

LF229: LDA    $E1     
       BEQ    LF27A   
       LDX    $DF     
       LDY    $E0     
       CMP    #$03    
       BNE    LF240   
       TYA            
       LDY    $FA     
LF238: DEX            
       DEY            
       BPL    LF238   
       TAY            
       JMP    LF265   
LF240: CMP    #$09    
       BNE    LF24E   
       TYA            
       LDY    $FA     
LF247: INX            
       DEY            
       BPL    LF247   
       TAY            
       BPL    LF265   
LF24E: CMP    #$06    
       BNE    LF25D   
       TXA            
       LDX    $FA     
LF255: INY            
       DEX            
       BPL    LF255   
       TAX            
       JMP    LF265   
LF25D: TXA            
       LDX    $FA     
LF260: DEY            
       DEX            
       BPL    LF260   
       TAX            
LF265: BMI    LF27A   
       CPY    #$17    
       BPL    LF27A   
       CPX    #$20    
       BPL    LF27A   
       JSR    LF111   
       BEQ    LF27A   
       JSR    LF1E7   
       JMP    LF280   
LF27A: LDA    $F5     
       BEQ    LF280   
       DEC    $F5     
LF280: RTS            

LF281: LDA    $E9     
       CMP    #$0F    
       BNE    LF2AA   
       LDA    $DF     
       SEC            
       SBC    $DC     
       CMP    #$01    
       BNE    LF293   
       JMP    LF31E   
LF293: CMP    #$FF    
       BNE    LF29A   
       JMP    LF31E   
LF29A: LDA    $E0     
       SEC            
       SBC    $DD     
       CMP    #$01    
       BEQ    LF31E   
       CMP    #$FF    
       BEQ    LF31E   
       JMP    LF355   
LF2AA: LDA    $E9     
       CMP    #$0E    
       BNE    LF2C7   
       LDA    $E3     
       CMP    $E0     
       BEQ    LF2BC   
       LDA    $E2     
       CMP    $DF     
       BNE    LF2C4   
LF2BC: LDA    $E1     
       EOR    $E4     
       CMP    #$0A    
       BEQ    LF31E   
LF2C4: JMP    LF355   
LF2C7: LDX    $DF     
       LDY    $E0     
       LDA    $E1     
       CMP    #$03    
       BNE    LF2DC   
       TYA            
       LDY    $E9     
LF2D4: DEX            
       DEY            
       BPL    LF2D4   
       TAY            
       JMP    LF301   
LF2DC: CMP    #$09    
       BNE    LF2EA   
       TYA            
       LDY    $E9     
LF2E3: INX            
       DEY            
       BPL    LF2E3   
       TAY            
       BPL    LF301   
LF2EA: CMP    #$06    
       BNE    LF2F9   
       TXA            
       LDX    $E9     
LF2F1: INY            
       DEX            
       BPL    LF2F1   
       TAX            
       JMP    LF301   
LF2F9: TXA            
       LDX    $E9     
LF2FC: DEY            
       DEX            
       BPL    LF2FC   
       TAX            
LF301: CPY    #$00    
       BMI    LF318   
       CPX    #$00    
       BMI    LF318   
       CPY    #$17    
       BPL    LF318   
       CPX    #$20    
       BPL    LF318   
       JSR    LF111   
       BEQ    LF347   
       BNE    LF31E   
LF318: LDA    $F3     
       AND    #$20    
       BNE    LF347   
LF31E: LDA    #$01    
       BIT    $DF     
       BNE    LF331   
       CLC            
       LDA    $E1     
       ADC    #$03    
       CMP    #$0F    
       BNE    LF33A   
       LDA    #$03    
       BNE    LF33A   
LF331: SEC            
       LDA    $E1     
       SBC    #$03    
       BNE    LF33A   
       LDA    #$0C    
LF33A: STA    $E1     
       LDA    $E9     
       BNE    LF344   
       LDA    #$FF    
       STA    $F9     
LF344: JMP    LF355   
LF347: LDA    $E9     
       BEQ    LF355   
       LDA    $F1     
       CMP    #$03    
       BPL    LF355   
       CMP    #$0A    
       BPL    LF31E   
LF355: RTS            


START:
       SEI            
       CLD            
       LDX    #$00    
LF35A: TXA            
       EOR    #$01    
       AND    #$01    
       TAY            
       LDA    VSYNC,X 
       EOR.wy $00F1,Y 
       STA.wy $00F1,Y 
       LDA    #$00    
       STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF35A   
       LDA    $F1     
       ORA    $F2     
       BNE    LF378   
       INC    $F1     
LF378: LDX    #$FF    
       TXS            
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$00    
       STA    $F3     
       LDA    #$C8    
       STA    COLUPF  
LF387: JSR    LF1A6   
       LDA    #$00    
       STA    $DE     
       STA    $E1     
       STA    $F8     
       STA    $F9     
       LDA    SWCHB   
       AND    #$01    
       BNE    LF39E   
       JMP    LF5F3   
LF39E: LDA    SWCHB   
       AND    #$02    
       BNE    LF3A8   
       JMP    LF440   
LF3A8: JSR    LF1DA   
       JSR    LF1C0   
       STA    WSYNC   
       STA    VBLANK  
       JSR    LFF8B   
       STA    WSYNC   
       LDA    #$FF    
       STA    COLUBK  
       LDY    #$09    
       JSR    LF1D4   
       LDA    #$00    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$1C    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$02    
       STA    COLUPF  
       LDA    #$FE    
       STA    PF2     
       LDA    #$50    
       STA    $F6     
       LDA    #$FD    
       STA    $F7     
       LDA    #$11    
       JSR    LFFE7   
       LDA    #$18    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$F2    
       STA    $F6     
       LDA    #$FD    
       STA    $F7     
       LDA    #$06    
       JSR    LFFE7   
       STA    WSYNC   
       LDA    #$C8    
       STA    COLUPF  
       LDA    #$00    
       STA    PF2     
       JSR    LF18C   
       LDA    #$0E    
       STA    $FC     
       JSR    LF000   
       LDY    #$0A    
       JSR    LF1D4   
       LDA    #$FF    
       STA    COLUBK  
       LDY    #$08    
       JSR    LF1D4   
       LDA    #$00    
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$06    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$28    
       STA    $F6     
       LDA    #$FE    
       STA    $F7     
       LDA    #$06    
       JSR    LFFE7   
       STA    WSYNC   
       JSR    LF1C6   
       JSR    LF1C0   
       JMP    LF387   
LF440: LDA    #$1E    
       STA    $F4     
       LDA    #$8E    
       STA    COLUPF  
       LDX    #$0B    
       STX    $DD     
       STX    $E0     
LF44E: JSR    LF1A6   
       LDA    $F4     
       BEQ    LF457   
       DEC    $F4     
LF457: LDA    #$00    
       STA    RESMP0  
       STA    RESMP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    AUDV0   
       STA    AUDV1   
       STA    WSYNC   
       LDX    #$04    
LF469: DEX            
       BNE    LF469   
       NOP            
       STA    RESP0   
       NOP            
       NOP            
       NOP            
       STA    RESM0   
       LDX    #$04    
LF476: DEX            
       BNE    LF476   
       STA    RESM1   
       NOP            
       STA    $0111   
       LDA    #$D0    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       LDA    #$A0    
       STA    HMM1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$36    
       STA    COLUP0  
       LDA    #$C6    
       STA    COLUP1  
       LDA    $F4     
       BNE    LF4DB   
       LDA    #$10    
       BIT    SWCHA   
       BNE    LF4AC   
       CLC            
       LDA    #$08    
       ADC    $F3     
       STA    $F3     
       JMP    LF4D7   
LF4AC: LDA    #$20    
       BIT    SWCHA   
       BNE    LF4BD   
       SEC            
       LDA    $F3     
       SBC    #$08    
       STA    $F3     
       JMP    LF4D7   
LF4BD: LDA    SWCHB   
       AND    #$02    
       BNE    LF4DE   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF4D1   
       INC    $F3     
       LDA    #$0A    
       BNE    LF4D9   
LF4D1: LDA    $F4     
       BNE    LF4DB   
       INC    $F3     
LF4D7: LDA    #$14    
LF4D9: STA    $F4     
LF4DB: JMP    LF4E8   
LF4DE: LDA    SWCHB   
       AND    #$01    
       BNE    LF4E8   
       JMP    LF5F3   
LF4E8: LDA    #$07    
       AND    $F3     
       JSR    LF15E   
       LDA    $F3     
       AND    #$10    
       BEQ    LF51D   
       LDY    #$16    
LF4F7: LDA.wy $0080,Y 
       ORA    #$10    
       STA.wy $0080,Y 
       LDA.wy $00C5,Y 
       ORA    #$10    
       STA.wy $00C5,Y 
       LDA.wy $0097,Y 
       ORA    #$10    
       STA.wy $0097,Y 
       LDA.wy $00AE,Y 
       ORA    #$10    
       STA.wy $00AE,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       BPL    LF4F7   
LF51D: LDA    $F3     
       AND    #$80    
       BEQ    LF529   
       LDA    #$80    
       STA    $8B     
       STA    $D0     
LF529: LDA    #$09    
       STA    $DE     
       LDA    $F3     
       AND    #$08    
       BNE    LF53E   
       LDA    #$03    
       STA    $E1     
       LDA    #$21    
       STA    $F9     
       JMP    LF546   
LF53E: LDA    #$00    
       STA    $E1     
       LDA    #$43    
       STA    $F9     
LF546: LDA    $F3     
       AND    #$40    
       BEQ    LF554   
       LDA    #$43    
       STA    $F8     
       STA    $F9     
       BNE    LF558   
LF554: LDA    #$21    
       STA    $F8     
LF558: JSR    LF1C0   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       LDA    #$8E    
       STA    COLUBK  
       LDA    $F3     
       AND    #$20    
       BNE    LF56F   
       LDA    #$80    
       BNE    LF571   
LF56F: LDA    #$00    
LF571: STA    PF0     
       LDY    #$07    
       JSR    LF1D4   
       STA    WSYNC   
       LDA    #$02    
       STA    COLUBK  
       LDA    #$16    
       STA    $FC     
       JSR    LF000   
       STA    WSYNC   
       LDA    #$8E    
       STA    COLUBK  
       LDY    #$07    
       JSR    LF1D4   
       LDA    #$00    
       STA    PF0     
       LDA    #$00    
       STA    COLUBK  
       STA    WSYNC   
       LDX    #$07    
LF59C: DEX            
       BNE    LF59C   
       NOP            
       STA    $0110   
       NOP            
       NOP            
       STA    $0111   
       LDA    #$F6    
       STA    COLUP0  
       LDA    #$36    
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$08    
       STA    PF2     
       STA    WSYNC   
       LDA    #$07    
       STA    NUSIZ0  
       LDA    $F3     
       AND    #$F8    
       STA    GRP0    
       LDA    #$00    
       STA    $FA     
       LDA    #$FD    
       STA    $FB     
       LDA    $F3     
       AND    #$07    
       ASL            
       ASL            
       ASL            
       TAY            
       LDX    #$08    
LF5D4: STA    WSYNC   
       LDA    ($FA),Y 
       STA    GRP1    
       INY            
       DEX            
       BNE    LF5D4   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    PF2     
       JSR    LF1C6   
       JSR    LF1C0   
       JMP    LF44E   
LF5F3: LDA    #$17    
       STA    AUDF0   
       LDA    #$00    
       STA    AUDV0   
       LDA    #$02    
       STA    AUDC0   
       LDA    #$01    
       STA    AUDF1   
       LDA    #$00    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$00    
       STA    $EF     
       LDA    #$00    
       STA    $F0     
LF613: LDA    #$0C    
       STA    $F4     
       STA    $F5     
       LDA    $EF     
       CMP    #$99    
       BEQ    LF628   
       LDA    $F0     
       CMP    #$99    
       BEQ    LF62E   
       JMP    LF69D   
LF628: LDA    #$36    
       STA    $DC     
       BNE    LF632   
LF62E: LDA    #$C6    
       STA    $DC     
LF632: CLD            
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$3C    
       STA    $F4     
LF63D: JSR    LF1A6   
       LDA    #$00    
       STA    $DE     
       STA    $E1     
       STA    $F8     
       STA    $F9     
       DEC    $F4     
       LDA    $F4     
       CMP    #$1E    
       BMI    LF65D   
       LDA    #$00    
       STA    COLUPF  
       LDA    $DC     
       STA    COLUBK  
       JMP    LF66D   
LF65D: LDA    $DC     
       STA    COLUPF  
       LDA    #$00    
       STA    COLUBK  
       LDA    $F4     
       BNE    LF66D   
       LDA    #$3C    
       STA    $F4     
LF66D: LDA    SWCHB   
       AND    #$02    
       BNE    LF677   
       JMP    LF440   
LF677: JSR    LF1C0   
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$28    
       JSR    LF1D4   
       JSR    LF18C   
       LDA    #$0E    
       STA    $FC     
       JSR    LF000   
       LDY    #$28    
       JSR    LF1D4   
       STA    WSYNC   
       JSR    LF1C6   
       JSR    LF1C0   
       JMP    LF63D   
LF69D: LDA    #$00    
       STA    $E8     
       LDA    #$07    
       AND    $F3     
       JSR    LF15E   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $F3     
       AND    #$40    
       BNE    LF6C2   
       LDA    #$00    
       STA    $DC     
       STA    $E2     
       LDA    #$1F    
       STA    $DF     
       STA    $E5     
       BNE    LF6CE   
LF6C2: LDA    #$03    
       STA    $DC     
       STA    $E2     
       LDA    #$1C    
       STA    $DF     
       STA    $E5     
LF6CE: LDX    #$0B    
       STX    $DD     
       STX    $E3     
       STX    $E0     
       STX    $E6     
       LDA    #$09    
       STA    $DE     
       LDX    #$03    
       STX    $E1     
       LDA    #$00    
       STA    $E4     
       STA    $E7     
       LDA    #$03    
       STA    $EA     
       STA    $EB     
       CLC            
       LDA    $EB     
       ADC    $EB     
       ADC    $EB     
       STA    $EC     
       BIT    SWCHB   
       BVS    LF6FC   
       ROL    $EC     
LF6FC: LDA    #$02    
       STA    RESMP0  
       STA    RESMP1  
       LDA    #$8E    
       STA    COLUPF  
LF706: JSR    LF1A6   
       LDA    $DC     
       STA    $F6     
       LDA    $DF     
       STA    $F7     
       LDX    #$1F    
LF713: DEC    $F6     
       BPL    LF71A   
       JMP    LF71E   
LF71A: LDA    #$C0    
       STA    HMP0    
LF71E: DEC    $F7     
       BPL    LF725   
       JMP    LF729   
LF725: LDA    #$C0    
       STA    HMP1    
LF729: STA    WSYNC   
       STA    HMOVE   
LF72D: LDY    #$01    
       DEY            
       BNE    LF72D   
       STA    HMCLR   
       DEX            
       BNE    LF713   
       LDA    #$36    
       STA    COLUP0  
       LDA    #$C6    
       STA    COLUP1  
       JSR    LF1C0   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$8E    
       STA    COLUBK  
       LDA    #$FF    
       STA    PF0     
       LDA    #$08    
       STA    TIM64T  
       LDA    $DE     
       BNE    LF75E   
       JMP    LF7C8   
LF75E: LDA    $E1     
       BNE    LF765   
       JMP    LF7C8   
LF765: LDA    $F3     
       AND    #$40    
       BEQ    LF76E   
       JMP    LF7C8   
LF76E: LDA    $E4     
       BNE    LF7A9   
       LDA    $F4     
       BEQ    LF77A   
       DEC    $F4     
       BPL    LF7A9   
LF77A: BIT    INPT4   
       BMI    LF7A9   
       LDA    #$01    
       STA    AUDF1   
       LDA    #$06    
       STA    AUDV1   
       LDA    #$14    
       STA    $ED     
       LDA    $DE     
       STA    $E4     
       LDA    $DC     
       STA    $E2     
       LDA    $DD     
       STA    $E3     
       LDA    #$00    
       STA    RESMP0  
       LDA    #$09    
       CMP    $E4     
       BMI    LF7A5   
       LDA    #$10    
       JMP    LF7A7   
LF7A5: LDA    #$00    
LF7A7: STA    NUSIZ0  
LF7A9: LDA    $F3     
       AND    #$08    
       BEQ    LF7C5   
       LDA    $F9     
       CMP    #$FF    
       BNE    LF7BB   
       JSR    LF1E7   
       JMP    LF7C8   
LF7BB: LDA    #$05    
       STA    $FA     
       JSR    LF229   
       JMP    LF7C8   
LF7C5: JSR    LF1E7   
LF7C8: CLC            
       LDA    $E3     
       STA    $F8     
       ROL            
       ADC    $F8     
       STA    $F8     
       LDA    $E6     
       STA    $F9     
       ROL            
       ADC    $F9     
       STA    $F9     
       JSR    LF1C0   
       STA    WSYNC   
       LDA    #$02    
       STA    COLUBK  
       LDA    #$00    
       LDA    #$16    
       STA    $FC     
       JSR    LF000   
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
       LDA    #$8E    
       STA    COLUBK  
       LDA    #$08    
       STA    TIM64T  
       CLC            
       LDA    $EF     
       STA    $F6     
       LDA    #$F0    
       AND    $F6     
       ROR            
       STA    $F6     
       LDA    $EF     
       STA    $F7     
       LDA    #$0F    
       AND    $F7     
       ROL            
       ROL            
       ROL            
       STA    $F7     
       LDA    $F0     
       STA    $F8     
       LDA    #$F0    
       AND    $F8     
       ROR            
       STA    $F8     
       LDA    $F0     
       STA    $F9     
       LDA    #$0F    
       AND    $F9     
       ROL            
       ROL            
       ROL            
       STA    $F9     
       LDA    #$34    
       STA    $FC     
       LDA    #$C4    
       STA    $FD     
       JSR    LF1C0   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    PF0     
       LDA    #$08    
       STA    $E9     
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       LDA    #$00    
       STA    $FA     
       LDA    #$FD    
       STA    $FB     
       STA    WSYNC   
       NOP            
LF857: DEY            
       BNE    LF857   
       STA    RESP0   
       STA    RESP1   
       LDX    $FD     
LF860: STA    WSYNC   
       LDA    $FC     
       STA    COLUP0  
       STA    COLUP1  
       LDY    $F6     
       LDA    ($FA),Y 
       STA    GRP0    
       LDY    $F7     
       LDA    ($FA),Y 
       STA    GRP1    
       LDY    $F8     
       LDA    ($FA),Y 
       STA    GRP0    
       STX    COLUP0  
       LDY    $F9     
       LDA    ($FA),Y 
       STA    GRP1    
       STX    COLUP1  
       INC    $FA     
       DEC    $E9     
       BNE    LF860   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$36    
       STA    COLUP0  
       LDA    #$C6    
       STA    COLUP1  
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       STA    RESP0   
       STA    RESP1   
       LDA    #$A0    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$B0    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$00    
       STA    HMP0    
       STA    HMP1    
       JSR    LF1C6   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF8D1   
       JMP    LF5F3   
LF8D1: LDA    SWCHB   
       AND    #$02    
       BNE    LF8DB   
       JMP    LF440   
LF8DB: LDA    $DE     
       BNE    LF8E2   
       JMP    LFCC8   
LF8E2: LDA    $E1     
       BNE    LF8E9   
       JMP    LFCC8   
LF8E9: LDA    #$10    
       BIT    SWCHA   
       BEQ    LF903   
       BPL    LF907   
       BVS    LF8F8   
       LDA    #$03    
       BNE    LF909   
LF8F8: LDA    #$20    
       BIT    SWCHA   
       BNE    LF917   
       LDA    #$0C    
       BNE    LF909   
LF903: LDA    #$06    
       BNE    LF909   
LF907: LDA    #$09    
LF909: BIT    $F3     
       BMI    LF915   
       TAX            
       EOR    $DE     
       CMP    #$0A    
       BEQ    LF917   
       TXA            
LF915: STA    $DE     
LF917: LDA    $F3     
       AND    #$08    
       BEQ    LF956   
       LDA    $EC     
       CMP    #$01    
       BNE    LF953   
       LDA    $EB     
       CMP    #$01    
       BNE    LF953   
       LDA    #$0F    
       STA    $E9     
       JSR    LF281   
       LDA    #$0E    
       STA    $E9     
       JSR    LF281   
       LDA    #$02    
       STA    $E9     
       JSR    LF281   
       LDA    #$00    
       STA    $E9     
       JSR    LF281   
       LDA    #$00    
       STA    $E9     
       JSR    LF281   
       LDA    #$00    
       STA    $E9     
       JSR    LF281   
LF953: JMP    LF98B   
LF956: LDA    SWCHA   
       ROL            
       ROL            
       ROL            
       ROL            
       STA    $F6     
       LDA    #$10    
       BIT    $F6     
       BEQ    LF977   
       BPL    LF97B   
       BVS    LF96D   
       LDA    #$03    
       BNE    LF97D   
LF96D: LDA    #$20    
       BIT    $F6     
       BNE    LF98B   
       LDA    #$0C    
       BNE    LF97D   
LF977: LDA    #$06    
       BNE    LF97D   
LF97B: LDA    #$09    
LF97D: BIT    $F3     
       BMI    LF989   
       TAX            
       EOR    $E1     
       CMP    #$0A    
       BEQ    LF98B   
       TXA            
LF989: STA    $E1     
LF98B: LDA    $ED     
       BEQ    LF997   
       DEC    $ED     
       BNE    LF997   
       LDA    #$00    
       STA    AUDV1   
LF997: LDA    $F3     
       AND    #$10    
       BEQ    LF9B8   
       DEC    $EE     
       BNE    LF9B8   
       LDA    #$12    
       STA    $EE     
       LDA    $F1     
       AND    #$1F    
       TAX            
       LDA    $F2     
       AND    #$1F    
       CMP    #$15    
       BMI    LF9B4   
       CLC            
       ROR            
LF9B4: TAY            
       JSR    LF08B   
LF9B8: DEC    $EB     
       BEQ    LF9BF   
       JMP    LFAFA   
LF9BF: INC    $E8     
       BNE    LF9C9   
       DEC    $EA     
       BNE    LF9C9   
       INC    $EA     
LF9C9: CLV            
       LDA    $EA     
       STA    $EB     
       BIT    CXM0FB  
       BPL    LF9E7   
       LDX    $E2     
       LDY    $E3     
       JSR    LF0CA   
       LDA    #$0E    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       LDA    #$0A    
       STA    $ED     
       BPL    LFA35   
LF9E7: LDA    $E4     
       BEQ    LFA61   
       LDA    $E2     
       CMP    $DF     
       BNE    LF9F7   
       LDA    $E3     
       CMP    $E0     
       BEQ    LFA4D   
LF9F7: LDA    $E4     
       CMP    #$03    
       BNE    LFA0B   
       LDA    #$00    
       CMP    $E2     
       BEQ    LFA35   
       DEC    $E2     
       LDA    #$40    
       STA    HMM0    
       BPL    LFA41   
LFA0B: CMP    #$09    
       BNE    LFA1D   
       LDA    #$1F    
       CMP    $E2     
       BEQ    LFA35   
       INC    $E2     
       LDA    #$C0    
       STA    HMM0    
       BMI    LFA41   
LFA1D: CMP    #$06    
       BNE    LFA2B   
       LDA    #$16    
       CMP    $E3     
       BEQ    LFA35   
       INC    $E3     
       BPL    LFA41   
LFA2B: LDA    #$00    
       CMP    $E3     
       BEQ    LFA35   
       DEC    $E3     
       BPL    LFA41   
LFA35: LDA    #$00    
       STA    $E4     
       LDA    #$02    
       STA    RESMP0  
       LDA    #$0C    
       STA    $F4     
LFA41: LDA    $E2     
       CMP    $DF     
       BNE    LFA61   
       LDA    $E3     
       CMP    $E0     
       BNE    LFA61   
LFA4D: SED            
       CLC            
       LDA    #$01    
       ADC    $EF     
       STA    $EF     
       CLD            
       LDA    #$00    
       STA    $E1     
       LDA    #$3C    
       STA    $F4     
       JMP    LFCC8   
LFA61: BIT    CXM1FB  
       BPL    LFA7A   
       LDX    $E5     
       LDY    $E6     
       JSR    LF0CA   
       LDA    #$0E    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       LDA    #$0A    
       STA    $ED     
       BPL    LFAC8   
LFA7A: LDA    $E7     
       BEQ    LFAF6   
       LDA    $E5     
       CMP    $DC     
       BNE    LFA8A   
       LDA    $E6     
       CMP    $DD     
       BEQ    LFAE2   
LFA8A: LDA    $E7     
       CMP    #$03    
       BNE    LFA9E   
       LDA    #$00    
       CMP    $E5     
       BEQ    LFAC8   
       DEC    $E5     
       LDA    #$40    
       STA    HMM1    
       BPL    LFAD6   
LFA9E: CMP    #$09    
       BNE    LFAB0   
       LDA    #$1F    
       CMP    $E5     
       BEQ    LFAC8   
       INC    $E5     
       LDA    #$C0    
       STA    HMM1    
       BMI    LFAD6   
LFAB0: CMP    #$06    
       BNE    LFABE   
       LDA    #$16    
       CMP    $E6     
       BEQ    LFAC8   
       INC    $E6     
       BPL    LFAD6   
LFABE: LDA    #$00    
       CMP    $E6     
       BEQ    LFAC8   
       DEC    $E6     
       BPL    LFAD6   
LFAC8: LDA    #$00    
       STA    $E7     
       LDA    #$02    
       STA    RESMP1  
       LDA    #$0C    
       STA    $F5     
       BPL    LFAF6   
LFAD6: LDA    $E5     
       CMP    $DC     
       BNE    LFAF6   
       LDA    $E6     
       CMP    $DD     
       BNE    LFAF6   
LFAE2: SED            
       CLC            
       LDA    #$01    
       ADC    $F0     
       STA    $F0     
       CLD            
       LDA    #$00    
       STA    $DE     
       LDA    #$3C    
       STA    $F4     
       JMP    LFCC8   
LFAF6: LDA    #$00    
       STA    AUDV0   
LFAFA: DEC    $EC     
       BEQ    LFB01   
       JMP    LFCD8   
LFB01: CLC            
       LDA    $EB     
       ADC    $EB     
       ADC    $EB     
       STA    $EC     
       BIT    SWCHB   
       BVS    LFB11   
       ROL    $EC     
LFB11: LDX    $DC     
       LDY    $DD     
       JSR    LF08B   
       LDX    $DF     
       LDY    $E0     
       JSR    LF08B   
       LDA    #$20    
       AND    $F3     
       BEQ    LFB28   
       JMP    LFBDF   
LFB28: BIT    CXP0FB  
       BPL    LFB2F   
       JMP    LFB6F   
LFB2F: LDA    #$03    
       CMP    $DE     
       BNE    LFB3F   
       LDA    #$00    
       CMP    $DC     
       BEQ    LFB6F   
       DEC    $DC     
       BPL    LFB80   
LFB3F: LDA    #$09    
       CMP    $DE     
       BNE    LFB4F   
       LDA    #$1F    
       CMP    $DC     
       BEQ    LFB6F   
       INC    $DC     
       BPL    LFB80   
LFB4F: LDA    #$06    
       CMP    $DE     
       BNE    LFB5F   
       LDA    #$16    
       CMP    $DD     
       BEQ    LFB6F   
       INC    $DD     
       BPL    LFB80   
LFB5F: LDA    #$0C    
       CMP    $DE     
       BNE    LFB6F   
       LDA    #$00    
       CMP    $DD     
       BEQ    LFB6F   
       DEC    $DD     
       BPL    LFB80   
LFB6F: LDA    #$00    
       STA    $DE     
       SED            
       CLC            
       LDA    #$01    
       ADC    $F0     
       STA    $F0     
       CLD            
       LDA    #$3C    
       STA    $F4     
LFB80: BIT    CXP1FB  
       BPL    LFB87   
       JMP    LFBC7   
LFB87: LDA    #$03    
       CMP    $E1     
       BNE    LFB97   
       LDA    #$00    
       CMP    $DF     
       BEQ    LFBC7   
       DEC    $DF     
       BPL    LFBD8   
LFB97: LDA    #$09    
       CMP    $E1     
       BNE    LFBA7   
       LDA    #$1F    
       CMP    $DF     
       BEQ    LFBC7   
       INC    $DF     
       BPL    LFBD8   
LFBA7: LDA    #$06    
       CMP    $E1     
       BNE    LFBB7   
       LDA    #$16    
       CMP    $E0     
       BEQ    LFBC7   
       INC    $E0     
       BPL    LFBD8   
LFBB7: LDA    #$0C    
       CMP    $E1     
       BNE    LFBC7   
       LDA    #$00    
       CMP    $E0     
       BEQ    LFBC7   
       DEC    $E0     
       BPL    LFBD8   
LFBC7: LDA    #$00    
       STA    $E1     
       SED            
       CLC            
       LDA    #$01    
       ADC    $EF     
       STA    $EF     
       CLD            
       LDA    #$3C    
       STA    $F4     
LFBD8: LDA    #$0F    
       STA    AUDV0   
       JMP    LFCD8   
LFBDF: BIT    CXP0FB  
       BPL    LFBE6   
       JMP    LFC3E   
LFBE6: LDA    #$03    
       CMP    $DE     
       BNE    LFBFC   
       LDA    #$00    
       CMP    $DC     
       BNE    LFBF8   
       LDA    #$1F    
       STA    $DC     
       BPL    LFC4F   
LFBF8: DEC    $DC     
       BPL    LFC4F   
LFBFC: LDA    #$09    
       CMP    $DE     
       BNE    LFC12   
       LDA    #$1F    
       CMP    $DC     
       BNE    LFC0E   
       LDA    #$00    
       STA    $DC     
       BPL    LFC4F   
LFC0E: INC    $DC     
       BPL    LFC4F   
LFC12: LDA    #$06    
       CMP    $DE     
       BNE    LFC28   
       LDA    #$16    
       CMP    $DD     
       BNE    LFC24   
       LDA    #$00    
       STA    $DD     
       BPL    LFC4F   
LFC24: INC    $DD     
       BPL    LFC4F   
LFC28: LDA    #$0C    
       CMP    $DE     
       BNE    LFC3E   
       LDA    #$00    
       CMP    $DD     
       BNE    LFC3A   
       LDA    #$16    
       STA    $DD     
       BPL    LFC4F   
LFC3A: DEC    $DD     
       BPL    LFC4F   
LFC3E: LDA    #$00    
       STA    $DE     
       SED            
       CLC            
       LDA    #$01    
       ADC    $F0     
       STA    $F0     
       CLD            
       LDA    #$3C    
       STA    $F4     
LFC4F: BIT    CXP1FB  
       BPL    LFC56   
       JMP    LFCAE   
LFC56: LDA    #$03    
       CMP    $E1     
       BNE    LFC6C   
       LDA    #$00    
       CMP    $DF     
       BNE    LFC68   
       LDA    #$1F    
       STA    $DF     
       BPL    LFCBF   
LFC68: DEC    $DF     
       BPL    LFCBF   
LFC6C: LDA    #$09    
       CMP    $E1     
       BNE    LFC82   
       LDA    #$1F    
       CMP    $DF     
       BNE    LFC7E   
       LDA    #$00    
       STA    $DF     
       BPL    LFCBF   
LFC7E: INC    $DF     
       BPL    LFCBF   
LFC82: LDA    #$06    
       CMP    $E1     
       BNE    LFC98   
       LDA    #$16    
       CMP    $E0     
       BNE    LFC94   
       LDA    #$00    
       STA    $E0     
       BPL    LFCBF   
LFC94: INC    $E0     
       BPL    LFCBF   
LFC98: LDA    #$0C    
       CMP    $E1     
       BNE    LFCAE   
       LDA    #$00    
       CMP    $E0     
       BNE    LFCAA   
       LDA    #$16    
       STA    $E0     
       BPL    LFCBF   
LFCAA: DEC    $E0     
       BPL    LFCBF   
LFCAE: LDA    #$00    
       STA    $E1     
       SED            
       CLC            
       LDA    #$01    
       ADC    $EF     
       STA    $EF     
       CLD            
       LDA    #$3C    
       STA    $F4     
LFCBF: LDA    #$0F    
       STA    AUDV0   
       STA    CXCLR   
       JMP    LFCD8   
LFCC8: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       DEC    $F4     
       BNE    LFCD8   
       JSR    LF1C0   
       JMP    LF613   
LFCD8: STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       STA    CXCLR   
       JSR    LF1DA   
LFCE5: LDA    INTIM   
       BNE    LFCE5   
       JMP    LF706   
LFCED: .byte $FF,$FF,$FF,$FF
LFCF1: .byte $00,$00,$00,$1C,$3C,$1C,$18,$3C,$3C,$38,$3C,$38,$3C,$3C,$18,$7E
       .byte $FF,$E7,$C3,$C3,$E7,$FF,$7E,$1C,$3C,$7C,$1C,$1C,$1C,$7F,$7F,$FF
       .byte $FF,$0F,$0F,$FF,$E0,$E0,$FF,$FF,$FF,$07,$07,$FF,$07,$07,$FF,$E7
       .byte $E7,$E7,$E7,$FF,$07,$07,$07,$FF,$FF,$F0,$F0,$FF,$07,$07,$FF,$FF
       .byte $C0,$C0,$FF,$FF,$C7,$C7,$FF,$FF,$FF,$CF,$0F,$0F,$0F,$0F,$0F,$FF
       .byte $C7,$C7,$FF,$FF,$C7,$C7,$FF,$FF,$C7,$C7,$FF,$FF,$07,$07,$FF,$5C
       .byte $FD,$6E,$FD,$80,$FD,$92,$FD,$A4,$FD,$B6,$FD,$00,$00,$0F,$18,$10
       .byte $11,$10,$18,$0F,$00,$00,$FC,$42,$42,$7C,$44,$44,$F8,$00,$00,$8E
       .byte $D1,$51,$D1,$0F,$C0,$80,$00,$00,$75,$89,$89,$89,$79,$00,$00,$00
       .byte $00,$A2,$22,$22,$32,$2D,$00,$00,$00,$00,$03,$04,$14,$94,$63,$00
       .byte $00,$00,$00,$25,$29,$29,$69,$81,$08,$00,$00,$01,$8F,$51,$51,$51
       .byte $8E,$00,$00,$03,$04,$13,$14,$14,$94,$63,$00,$00,$80,$40,$5D,$22
       .byte $22,$22,$22,$00,$00,$80,$40,$C0,$40,$40,$40,$80,$00,$00,$00,$00
       .byte $3C,$40,$7C,$44,$38,$00,$00,$E1,$41,$41,$79,$45,$44,$F8,$03,$04
       .byte $17,$94,$63,$00,$00,$DE,$01,$CE,$50,$8F,$00,$00,$3D,$41,$7D,$45
       .byte $39,$00,$00,$11,$12,$12,$92,$67,$02,$00,$78,$04,$38,$40,$3C,$00
       .byte $00,$C8,$FD,$CF,$FD,$D6,$FD,$DD,$FD,$E4,$FD,$EB,$FD,$00,$00,$00
       .byte $00,$00,$00,$00,$07,$08,$17,$14,$17,$08,$07,$1E,$90,$48,$44,$42
       .byte $92,$0C,$63,$94,$94,$94,$94,$94,$63,$3C,$A0,$90,$88,$84,$A4,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$FE,$FD,$05,$FE,$0C,$FE,$13,$FE,$1A
       .byte $FE,$21,$FE
LFE34: .byte $78,$4E,$4A,$4A,$4A,$42,$02,$00,$3A,$EA,$AB,$AA,$AA,$89,$81
LFE43: .byte $47,$59,$D1,$51,$51,$53,$DC,$00,$40,$4A,$4A,$7B,$2A,$2A,$39
LFE52: .byte $08,$28,$28,$E9,$49,$49,$CF,$00,$85,$95,$95,$F5,$A5,$A5,$E4
LFE61: .byte $1A,$62,$42,$7A,$0A,$1B,$60,$00,$E0,$B4,$94,$D6,$15,$94,$74
LFE70: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$3C,$3C,$3C,$3C,$00,$00,$00,$00,$00,$00,$00,$3C,$3C
       .byte $3C,$3C,$00,$00,$00,$00,$00,$00,$18,$18,$18,$18,$18,$18,$18,$00
       .byte $00,$00,$00,$00,$18,$18,$18,$18,$18,$18,$18,$00,$00,$00,$18,$18
       .byte $00,$00,$00,$00,$18,$18,$00,$00,$00,$00,$00,$18,$18,$00,$00,$00
       .byte $00,$18,$18,$00,$00,$00,$00,$00,$7E,$7E,$7E,$7E,$7E,$7E,$00,$00
       .byte $00,$7E,$7E,$7E,$7E,$7E,$7E,$00,$00,$00,$00
LFF6B: .byte $F8
LFF6C: .byte $FE
LFF6D: .byte $F8
LFF6E: .byte $FE,$F8,$FE,$54,$FF,$26,$FF,$0F,$FF,$0F,$FF,$26,$FF,$3D,$FF,$0F
       .byte $FF,$0F,$FF,$3D,$FF,$26,$FF,$F8,$FE,$0F,$FF,$F8,$FE
LFF8B: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$06    
       LDY    #$00    
       STA    WSYNC   
LFF97: DEX            
       BPL    LFF97   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$D0    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFFAC: LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
LFFB2: LDY    $97     
       LDA    ($80),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($84),Y 
       STA    GRP0    
       LDA    ($86),Y 
       STA    $AE     
       LDA    ($88),Y 
       TAX            
       LDA    ($8A),Y 
       TAY            
       LDA    $AE     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $97     
       BPL    LFFB2   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFFE7: STA    $97     
       LDY    #$0C    
LFFEB: LDA    ($F6),Y 
       STA.wy $0080,Y 
       DEY            
       BPL    LFFEB   
       JSR    LFFAC   
       RTS            

LFFF7: .byte $FF,$00,$00,$00,$00,$56,$F3,$56,$F3
