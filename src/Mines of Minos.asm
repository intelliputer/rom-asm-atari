; Disassembly of roms/Mines of Minos.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Mines of Minos.bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
CXCLR   =  $2C
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       LDY    #$00    
LF003: CLD            
       LDA    #$00    
       TAX            
LF007: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF007   
       DEX            
       TXA            
       LDX    #$0A    
LF011: STA    $8A,X   
       DEX            
       DEX            
       BPL    LF011   
       CPY    #$00    
       BNE    LF023   
       STA    $99     
       LDA    #$01    
       JSR    LF8F1   
       INY            
LF023: DEY            
       STY    $A5     
       TYA            
       AND    #$01    
       BEQ    LF031   
       LDA    $85     
       ORA    #$40    
       STA    $85     
LF031: TYA            
       LSR            
       TAX            
       LDA    LFF5F,X 
       STA    $D8     
       LDA    #$07    
       STA    $AC     
       STA    $9F     
       LDA    #$44    
       STA    $C1     
       LDA    #$12    
       STA    $BB     
       LDA    #$1B    
       STA    $B5     
       LDX    #$03    
LF04D: LDA    #$29    
       STA    $B0,X   
       LDA    #$F0    
       STA    $C9,X   
       LDA    LF8D4,X 
       STA    $BC,X   
       LDA    #$11    
       STA    $C2,X   
       JSR    LF8D8   
       LDA    #$01    
       STA    $80,X   
       DEX            
       BPL    LF04D   
       DEC    $80     
       STA    $9A     
       STA    $9D     
       LDA    #$F8    
       STA    $CE     
       LDA    #$10    
       STA    $95     
       STA    $A8     
       LDA    SWCHB   
       STA    $DA     
LF07D: LDA    SWCHB   
       TAY            
       EOR    $DA     
       AND    $DA     
       STA    $CF     
       AND    #$01    
       BEQ    LF091   
       LDY    $A5     
       INY            
       JMP    LF003   
LF091: LDA    $CF     
       AND    #$02    
       BEQ    LF0B4   
       LDX    $A5     
       INX            
       CPX    #$0C    
       BNE    LF0A0   
       LDX    #$00    
LF0A0: STX    $A5     
       LDA    #$00    
       STA    $87     
       STA    $86     
       SED            
       CLC            
LF0AA: ADC    #$01    
       DEX            
       BPL    LF0AA   
       STX    $99     
       STA    $88     
       CLD            
LF0B4: STY    $DA     
       LDA    #$00    
       STA    $AE     
       JSR    LF135   
       LDA    $C6     
       AND    #$0F    
       LSR            
       TAX            
       LDA    LFED1,X 
       STA    $9B     
       LDX    $D7     
       CPX    #$04    
       BNE    LF0D3   
       LDX    $9F     
       ORA    LF91C,X 
LF0D3: STA    $9E     
       JSR    LF584   
       STA    CXCLR   
       JSR    LF85B   
       LDX    $D7     
       CPX    #$04    
       BNE    LF11F   
       BIT    $99     
       BMI    LF11F   
       BIT    COLUP1  
       BPL    LF11F   
       LDA    #$01    
       LDX    $BC     
       CPX    #$54    
       BPL    LF0F9   
       ASL            
       CPX    #$34    
       BPL    LF0F9   
       ASL            
LF0F9: EOR    $9F     
       STA    $9F     
       TAX            
       BNE    LF10A   
       DEC    $99     
       STA    $81     
       STA    $82     
       STA    $83     
       BNE    LF114   
LF10A: LDA    #$47    
       STA    $80     
       LDA    $85     
       ORA    #$01    
       STA    $85     
LF114: LDA    LF924,X 
       STA    $BD     
       LDA    #$80    
       STA    $AA     
       STA    $AB     
LF11F: LDA    #$02    
       STA    $AE     
       JSR    LF135   
       LDA    #$10    
       STA    $9B     
       STA    $9E     
       JSR    LF584   
       JSR    LF93D   
       JMP    LF07D   
LF135: LDA    SWCHA   
       STA    $E2     
       LDX    #$04    
       STX    $A9     
       LDX    $99     
       BPL    LF143   
LF142: RTS            

LF143: LDA    $85     
       LSR            
       BCS    LF142   
       LDA    $AE     
       BNE    LF157   
       BIT    SWCHB   
       BPL    LF155   
       LDA    #$01    
       STA    $A9     
LF155: BVS    LF1D0   
LF157: JSR    LFEAC   
       CPX    #$00    
       BEQ    LF168   
       LDX    #$00    
       LDA    $85     
       EOR    #$80    
       STA    $85     
       BMI    LF1D0   
LF168: JSR    LFB7A   
LF16B: CPX    #$01    
       BNE    LF175   
       LDY    $D7     
       CPY    #$04    
       BEQ    LF1D0   
LF175: LDA    $80,X   
       AND    #$07    
       TAY            
       LDA    LFC19,Y 
       STA    $CF     
       CMP    #$06    
       BNE    LF1D3   
       LDA    $C9,X   
       CLC            
       ADC    $BC,X   
       CMP    #$84    
       BCC    LF192   
       LDA    #$FD    
       STA    $C9,X   
       BNE    LF19A   
LF192: CMP    #$05    
       BCS    LF1CE   
       LDA    #$03    
       STA    $C9,X   
LF19A: LDA    $B0,X   
       CMP    #$07    
       BEQ    LF1B8   
       CMP    #$2D    
       BEQ    LF1C2   
       LDY    $D7     
       CPY    #$04    
       BNE    LF1B2   
       CMP    #$15    
       BEQ    LF1B8   
       CMP    #$21    
       BEQ    LF1C2   
LF1B2: LDA    $80,X   
       AND    #$08    
       BNE    LF1C2   
LF1B8: INC    $B0,X   
       INC    $B0,X   
       LDA    $80,X   
       AND    #$F7    
       BNE    LF1CA   
LF1C2: DEC    $B0,X   
       DEC    $B0,X   
       LDA    $80,X   
       ORA    #$08    
LF1CA: STA    $80,X   
       BNE    LF1D0   
LF1CE: STA    $BC,X   
LF1D0: JMP    LF28E   
LF1D3: LDA    $E2     
       LDY    $CF     
       BEQ    LF1E4   
       LDY    $B6,X   
       CPY    #$12    
       BEQ    LF1E4   
       ROL            
       ROL            
       JMP    LF1FA   
LF1E4: ROL            
       BCS    LF1EF   
       INC    $BC,X   
       BIT    $CF     
       BVC    LF1EF   
       INC    $BC,X   
LF1EF: ROL            
       BCS    LF1FA   
       DEC    $BC,X   
       BIT    $CF     
       BVC    LF1FA   
       DEC    $BC,X   
LF1FA: TAY            
       LDA    $CF     
       BEQ    LF207   
       LDA    $BC,X   
       AND    #$0F    
       CMP    #$04    
       BNE    LF269   
LF207: TYA            
       ROL            
       BCS    LF248   
       TAY            
       LDA    $B0,X   
       CMP    #$07    
       BMI    LF247   
       LDA    $B6,X   
       BNE    LF21E   
       LDA    #$20    
       STA    $B6,X   
       DEC    $B0,X   
       DEC    $B0,X   
LF21E: DEC    $B6,X   
       BIT    $CF     
       BPL    LF226   
       DEC    $B6,X   
LF226: CPX    #$00    
       BNE    LF247   
       JSR    LFCA0   
       CMP    #$50    
       BPL    LF247   
       LDA    $E9     
       CMP    #$1E    
       BPL    LF247   
       LDA    $F9     
       BNE    LF243   
       INC    $E9     
       LDA    #$10    
       STA    $F9     
       DEC    $EB     
LF243: DEC    $F9     
       LDX    #$00    
LF247: TYA            
LF248: ROL            
       BCS    LF28E   
       LDA    $B0,X   
       CMP    #$2F    
       BPL    LF28E   
       INC    $B6,X   
       BIT    $CF     
       BPL    LF259   
       INC    $B6,X   
LF259: LDA    $B6,X   
       CMP    #$20    
       BNE    LF267   
       LDA    #$00    
       STA    $B6,X   
       INC    $B0,X   
       INC    $B0,X   
LF267: CPX    #$00    
LF269: BNE    LF28E   
       JSR    LFCA0   
       CMP    #$70    
       BMI    LF28E   
       LDA    $E9     
       BNE    LF27C   
       LDA    $F9     
       CMP    #$0F    
       BEQ    LF28E   
LF27C: INC    $F9     
       LDA    $F9     
       CMP    #$10    
       BNE    LF28C   
       DEC    $E9     
       LDA    #$00    
       STA    $F9     
       INC    $EB     
LF28C: LDX    #$00    
LF28E: INX            
       CPX    $A9     
       BNE    LF294   
       RTS            

LF294: LDA    $85     
       AND    LFEEB,X 
       BNE    LF28E   
       BIT    $85     
       BVC    LF2AF   
       CPX    $9A     
       BNE    LF2AF   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $E2     
       JMP    LF168   
LF2AF: LDA    $80,X   
       AND    #$07    
       CMP    #$06    
       BEQ    LF2DA   
       CMP    #$02    
       BNE    LF2C5   
       LDA    $AE     
       BEQ    LF28E   
       JSR    LFC4F   
       JMP    LF16B   
LF2C5: LDA    #$00    
       STA    $E2     
       JSR    LFB7A   
       LDA    $E2     
       ORA    $C9,X   
       CMP    #$F0    
       BEQ    LF2DD   
       CPY    #$03    
       BPL    LF2ED   
       STA    $E2     
LF2DA: JMP    LF16B   
LF2DD: CPY    #$02    
       BPL    LF2ED   
       BMI    LF2E7   
LF2E3: INX            
       STX    $A9     
       DEX            
LF2E7: LDA    $E2     
       STA    $C9,X   
       BNE    LF2DA   
LF2ED: LDA    ($C8),Y 
       AND    #$3C    
       BNE    LF2F8   
       LDA    $E2     
       JMP    LF306   
LF2F8: LDA    $C9,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFC17,Y 
       ORA    $E2     
       STA    $E2     
LF306: STA    $E1     
       JSR    LFC04   
       CPY    #$01    
       BEQ    LF2E3   
       JSR    LFC4F   
       LDA    $E2     
       ORA    $E1     
       STA    $E2     
       JSR    LFC04   
       LDA    $E1     
       CPY    #$01    
       BEQ    LF2E3   
       BMI    LF325   
       LDA    $E2     
LF325: STA    $E2     
       LDA    ($C8),Y 
       INC    $C8     
LF32B: AND    #$03    
       STA    $CF     
       TAY            
       LDA    LFCB8,Y 
       ORA    $E2     
       STA    $E2     
       JSR    LFC04   
       CPY    #$01    
       BEQ    LF2E3   
       INC    $CF     
       LDA    $CF     
       BNE    LF32B   
LF344: LDY    $84     
       INY            
       CPY    #$08    
       BNE    LF350   
       JSR    LFC87   
       LDY    #$00    
LF350: STY    $84     
       LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BNE    LF367   
       LDA    #$01    
       STA    $AD     
       LDA    $80     
       ORA    #$07    
       AND    #$7F    
       STA    $80     
LF367: LDA    $B4     
       BNE    LF398   
       DEC    $AC     
       BNE    LF398   
       LDY    $AD     
       INY            
       CPY    #$03    
       BNE    LF378   
       LDY    #$00    
LF378: STY    $AD     
       LDA    LF92C,Y 
       STA    AUDC1   
       LDA    LF933,Y 
       STA    AUDV1   
       JSR    LFEAC   
       CPX    #$00    
       BEQ    LF38E   
       INY            
       INY            
       INY            
LF38E: LDA    LF92E,Y 
       STA    AUDF1   
       LDA    LF936,Y 
       STA    $AC     
LF398: LDX    #$05    
       LDY    #$00    
       LDA    $85     
       ROR            
       BCS    LF41A   
       AND    #$10    
       BNE    LF3B2   
       JSR    LFDC9   
       BNE    LF41A   
       LDA    $85     
       ORA    #$20    
       STA    $85     
       BNE    LF40D   
LF3B2: LDA    $B6     
       STA    $BB     
       LDA    $BC     
       STA    $C1     
       LDA    $B0     
       STA    $B5     
       CMP    #$07    
       BEQ    LF3C6   
       CMP    #$2D    
       BNE    LF41A   
LF3C6: LDA    $BC     
       CMP    #$44    
       BNE    LF41A   
       LDA    $85     
       AND    #$DF    
       STA    $85     
       LDA    $D8     
       AND    #$03    
       TAX            
LF3D7: LDA    $9C     
       CMP    #$05    
       BEQ    LF3E1   
       INC    $9C     
       BNE    LF3ED   
LF3E1: LDA    #$00    
       STA    $9C     
       LDA    $96     
       CMP    #$06    
       BCS    LF3ED   
       INC    $96     
LF3ED: DEX            
       BPL    LF3D7   
       LDA    ($C8),Y 
       INC    $C8     
       AND    #$06    
       LDY    $B0     
       CPY    #$16    
       BPL    LF3FE   
       ORA    #$01    
LF3FE: TAY            
       LDA    LFCB0,Y 
       STA    $C1     
       LDA    LFEF0,Y 
       STA    $B5     
       LDA    #$12    
       STA    $BB     
LF40D: LDA    #$70    
       STA    $A6     
       JSR    LF8F1   
       LDA    #$0C    
       STA    AUDC0   
       STA    AUDV0   
LF41A: LDY    #$04    
       LDX    #$03    
LF41E: JSR    LFDC9   
       BNE    LF469   
       LDA    LFEEB,X 
       BIT    $85     
       BNE    LF469   
       LDA    #$FF    
       STA    $C6     
       LDA    #$00    
       STA    $B4     
       LDA    $A1,X   
       CLC            
       ADC    $9D     
       STA    $A1,X   
       SEC            
       SBC    #$01    
       CMP    $D7     
       BMI    LF469   
       LDA    LFEEB,X 
       ORA    $85     
       STA    $85     
       LDA    $80,X   
       ORA    #$40    
       STA    $80,X   
       AND    #$07    
       CMP    #$03    
       BNE    LF45B   
       LDA    $96     
       CMP    #$06    
       BEQ    LF45B   
       INC    $96     
LF45B: LDA    #$00    
       STA    $A1,X   
       LDA    #$40    
       STA    $AA     
       LSR            
       JSR    LF8F1   
       LDX    #$01    
LF469: DEX            
       BNE    LF41E   
       LDY    #$00    
       LDX    #$03    
LF470: LDA    $C2,X   
       CMP    #$09    
       BMI    LF4BA   
       JSR    LFDC9   
       BNE    LF4BA   
       BIT    $85     
       BVC    LF499   
       CPX    $9A     
       BNE    LF499   
       LDA    $85     
       AND    LFEEB,X 
       BNE    LF4BA   
       LDA    $85     
       ORA    LFEEB,X 
       STA    $85     
       LDA    $80,X   
       ORA    #$40    
       STA    $80,X   
       BNE    LF4BA   
LF499: LDA    $85     
       ORA    #$01    
       ORA    LFEEB,X 
       AND    #$DF    
       STA    $85     
       LDA    $80     
       ORA    #$40    
       STA    $80     
       LDA    $80,X   
       ORA    #$40    
       STA    $80,X   
       LDA    #$01    
       STA    $B0,X   
       LDA    #$60    
       STA    $AB     
       DEC    $C2     
LF4BA: DEX            
       BNE    LF470   
       LDX    #$03    
LF4BF: LDA    $85     
       AND    LFEEB,X 
       BEQ    LF531   
       LDA    $84     
       BNE    LF531   
       LDA    $80,X   
       ASL            
       BPL    LF53B   
       DEC    $C2,X   
       BNE    LF531   
       LDA    $80,X   
       AND    #$BF    
       STA    $80,X   
       CPX    #$00    
       BNE    LF4ED   
       DEC    $96     
       BPL    LF4E7   
       DEC    $99     
       INC    $96     
       BEQ    LF4EA   
LF4E7: JSR    LF8D8   
LF4EA: JMP    LF5E5   
LF4ED: LDA    ($C8),Y 
       INC    $C8     
       AND    #$03    
       TAY            
       LDA    LFFF6,Y 
       STA    $B0,X   
       LDA    #$12    
       STA    $B6,X   
       LDA    LF8D4,X 
       STA    $BC,X   
       LDA    ($C8),Y 
       AND    #$07    
       LDY    $D7     
       PHA            
       LDA    $01D0,Y 
       CMP    #$1C    
       PLA            
       BCS    LF517   
       ORA    LF820,Y 
       AND    LF536,Y 
LF517: TAY            
       LDA    LF8CD,Y 
       STA    $80,X   
       LDY    #$F0    
       CMP    #$06    
       BNE    LF525   
       LDY    #$03    
LF525: STY    $C9,X   
       CMP    #$03    
       BNE    LF531   
       LDA    $96     
       BEQ    LF531   
       DEC    $96     
LF531: DEX            
       BPL    LF4BF   
       BMI    LF4EA   
LF536: BRK            
       .byte $03 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $07 ;.SLO
LF53B: INC    $C2,X   
       LDA    $C2,X   
       CMP    #$11    
       BNE    LF531   
       LDA    $85     
       EOR    LFEEB,X 
       STA    $85     
       JMP    LF531   
LF54D: LDY    #$00    
       STY    $CF     
       LDA    $B0,X   
       CLC            
       ADC    #$01    
       SEC            
       SBC    $EB     
       BCC    LF581   
       CMP    #$0E    
       BPL    LF581   
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    $B6,X   
       CPX    #$04    
       BPL    LF56E   
       ADC    $C2,X   
       SEC            
       SBC    #$11    
LF56E: SEC            
       SBC    $F9     
       SEC            
       SBC    #$17    
       CMP    #$B9    
       BCS    LF581   
       TAY            
       CMP    #$AA    
       BCC    LF581   
       SBC    #$A9    
       STA    $CF     
LF581: STY    $FB     
       RTS            

LF584: JSR    LF793   
       DEY            
       STA    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       LDA    #$22    
       STA    TIM8T   
       STY    WSYNC   
       STY    HMOVE   
       LDX    $AB     
       BEQ    LF5A6   
       DEX            
       STX    AUDV0   
       STX    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       STX    $AB     
LF5A6: LDX    $AA     
       BEQ    LF5B5   
       DEX            
       STX    AUDV0   
       LDA    #$08    
       STA    AUDF0   
       STA    AUDC0   
       STX    $AA     
LF5B5: LDA    $AE     
       BNE    LF5BE   
       BIT    SWCHB   
       BVS    LF5D4   
LF5BE: INC    $D5     
       BNE    LF5D4   
       LDA    #$04    
       BIT    $D8     
       BNE    LF5D4   
       LDA    $99     
       BMI    LF5D4   
       LDX    $D7     
       INC    $D0,X   
       BNE    LF5D4   
       DEC    $D0,X   
LF5D4: JSR    LF793   
       STY    WSYNC   
       STY    VSYNC   
       STY    $DC     
       LDA    #$2A    
       STA    TIM64T  
       JMP    LFDEF   
LF5E5: LDA    $BC     
       CMP    #$03    
       BEQ    LF603   
       CMP    #$85    
       BNE    LF64F   
       LDA    #$04    
       STA    $BC     
       LDA    INPT4   
       BMI    LF64F   
       LDA    $A7     
       BEQ    LF64F   
       SEC            
       SBC    #$28    
       DEC    $D7     
       JMP    LF616   
LF603: LDA    #$84    
       STA    $BC     
       LDA    INPT4   
       BMI    LF64F   
       LDA    $A7     
       CMP    #$A0    
       BEQ    LF64F   
       CLC            
       ADC    #$28    
       INC    $D7     
LF616: STA    $A7     
       LDX    #$00    
       STX    $B4     
       DEX            
       STX    $C6     
       LDX    #$03    
LF621: LDA    #$44    
       STA    $BC,X   
       LDA    #$11    
       STA    $C2,X   
       DEX            
       BNE    LF621   
       LDA    $85     
       AND    #$F1    
       STA    $85     
       LDX    $D7     
       CPX    #$04    
       BNE    LF64F   
       LDA    #$F0    
       STA    $CA     
       LDA    #$02    
       STA    $81     
       LDX    $9F     
       LDA    LF924,X 
       STA    $BD     
       LDA    #$1B    
       STA    $B1     
       LDX    #$12    
       STX    $B7     
LF64F: LDA    $E9     
       CLC            
       ADC    $A7     
       STA    $E1     
       ROR            
       BCC    LF65F   
       LDA    $DC     
       EOR    #$08    
       STA    $DC     
LF65F: JSR    LFB33   
       LDX    $AE     
       TXA            
       STA    $E0     
       LSR            
       TAX            
       LDA    $C6     
       AND    #$0F    
       LSR            
       TAY            
       LDA    $C0,X   
       CLC            
       ADC    #$02    
       CPX    #$00    
       BNE    LF67C   
       CLC            
       ADC    LFEC9,Y 
LF67C: JSR    LF830   
       LDA    $F0     
       STA    $F1     
       LDA    $F3     
       STA    $F4     
       TXA            
       CLC            
       ADC    #$04    
       TAX            
       JSR    LF54D   
       LDA    $FB     
       CMP    #$A9    
       BCC    LF697   
       LDA    #$00    
LF697: STA    $DB     
       LDX    $E0     
       TXA            
       CLC            
       ADC    #$02    
       STA    $E0     
LF6A1: TXA            
       AND    #$01    
       TAY            
       LDA    #$00    
       STA    $01E2,Y 
       STA    $011B,Y 
       STA    ENAM0   
       SEC            
       SBC    $C2,X   
       STA    $E6     
       LDA    LFF8D,X 
       CPX    #$00    
       BNE    LF6BD   
       ADC    $AB     
LF6BD: BIT    $85     
       BVC    LF6C8   
       CPX    $9A     
       BNE    LF6C8   
       SEC            
       SBC    #$04    
LF6C8: STA    $01A0,Y 
       JSR    LF54D   
       LDA    $BC,X   
       JSR    LF830   
       LDA    $80,X   
       AND    #$07    
       TAY            
       LDA    LFFEE,Y 
       STA    $F5     
       LDA    LFFE6,Y 
       LDY    $80,X   
       BPL    LF6E7   
       CLC            
       ADC    #$11    
LF6E7: LDY    $F5     
       SEC            
       SBC    $FB     
       BCS    LF6EF   
       DEY            
LF6EF: CLC            
       ADC    $C2,X   
       BCC    LF6F5   
       INY            
LF6F5: STA    $F5     
       STY    $F6     
       LDA    $CF     
       BEQ    LF70D   
       CMP    $C2,X   
       BPL    LF70D   
       CLC            
       ADC    $E6     
       STA    $E6     
       LDA    $FB     
       SEC            
       SBC    $CF     
       STA    $FB     
LF70D: INX            
       CPX    $E0     
       BEQ    LF72D   
       LDA    $E6     
       STA    $E5     
       LDA    $F0     
       STA    $EF     
       LDA    $F3     
       STA    $F2     
       LDA    $FB     
       STA    $FA     
       LDA    $F5     
       STA    $F7     
       LDA    $F6     
       STA    $F8     
       JMP    LF6A1   
LF72D: LDY    #$00    
       STY    COLUPF  
       INY            
       STY    CTRLPF  
       LDY    $F9     
       BEQ    LF74C   
       DEY            
       BEQ    LF748   
       DEY            
       BEQ    LF744   
       STY    $EC     
       LDA    #$C7    
       BNE    LF75A   
LF744: LDA    #$AC    
       BNE    LF75A   
LF748: LDA    #$BB    
       BNE    LF74E   
LF74C: LDA    #$0F    
LF74E: LDY    $DE     
       STY    PF1     
       LDY    $DD     
       STY    PF0     
       LDY    $DF     
       STY    PF2     
LF75A: STA    $ED     
       LDY    #$FA    
       STY    $EE     
       LDX    $D7     
       LDA    $D0,X   
       LDX    #$00    
       SEC            
       SBC    #$10    
       BCC    LF78D   
       LSR            
       LSR            
       CLC            
       ADC    $EB     
       SEC            
       SBC    #$23    
       BMI    LF78D   
       ASL            
       ASL            
       ASL            
       BCS    LF790   
       ASL            
       BCS    LF790   
       STA    $CF     
       LDA    #$92    
       SEC            
       SBC    $CF     
       SEC            
       SBC    $F9     
       CLC            
       ADC    #$0F    
       BEQ    LF790   
       TAX            
LF78D: STX    $D9     
       RTS            

LF790: DEX            
       BNE    LF78D   
LF793: LDY    INTIM   
       BNE    LF793   
       RTS            

LF799: .byte $FF,$FF,$00,$3C,$66,$42,$DB,$99,$BD,$A5,$A5,$A5,$A5,$BD,$99,$DB
       .byte $42,$66,$3C,$00,$00,$18,$3C,$24,$66,$42,$5A,$5A,$5A,$5A,$42,$66
       .byte $24,$3C,$18,$00,$01,$C2,$E6,$25,$3C,$3C,$18,$18,$BC,$67,$67,$BC
       .byte $3C,$6A,$7E,$28,$00,$80,$43,$67,$A4,$3C,$3C,$18,$18,$3D,$FE,$FE
       .byte $3D,$3C,$56,$7E,$14,$00,$00,$00,$00,$00,$20,$70,$70,$F8,$D8,$58
       .byte $74,$23,$51,$A2,$01,$00,$00,$00,$01,$02,$01,$23,$74,$58,$D8,$F8
       .byte $70,$70,$20,$50,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$18,$18,$00,$00,$00,$00,$40,$20,$18,$18,$00
       .byte $00,$00,$18,$58,$20,$18,$18
LF820: .byte $00,$00,$00,$18,$5A,$24,$18,$18,$00,$20,$20,$18,$5A,$24,$18,$18
LF830: LDY    #$01    
       CMP    #$4B    
       BCC    LF83B   
       SEC            
       SBC    #$4B    
       LDY    #$06    
LF83B: SEC            
LF83C: INY            
       SBC    #$0F    
       BCS    LF83C   
       ADC    #$0F    
       STY    $F0     
       TAY            
       LDA    LF84C,Y 
       STA    $F3     
       RTS            

LF84C: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90
LF85B: STY    WSYNC   
       LDX    #$08    
LF85F: DEX            
       BPL    LF85F   
       STY    RESP1   
       STY    WSYNC   
       LDY    $96     
       LDX    LFED9,Y 
       LDA    LFF58,Y 
LF86E: DEX            
       BPL    LF86E   
       STY    RESP0   
       STA    HMP0    
       LDX    $D7     
       INX            
       TXA            
       ASL            
       ASL            
       ASL            
       STA    $8F     
       LDA    $9D     
       ASL            
       ASL            
       ASL            
       STA    $91     
       LDA    $9C     
       ASL            
       ASL            
       ASL            
       STA    $CD     
       JSR    LF793   
       STY    WSYNC   
       STY    VBLANK  
       STY    NUSIZ0  
       LDY    #$06    
       STY    COLUP0  
       INY            
       LDA    #$02    
       STA    NUSIZ1  
LF89E: STY    WSYNC   
       LDA    ($8F),Y 
       STA    GRP1    
       LDX    #$46    
       STX    COLUP1  
       LDA    ($91),Y 
       LDX    #$05    
LF8AC: DEX            
       BPL    LF8AC   
       LDX    #$26    
       STX    COLUP1  
       STA    GRP1    
       DEY            
       BPL    LF89E   
       STY    WSYNC   
       STY    HMOVE   
       INY            
       STY    GRP1    
       LDY    #$07    
LF8C1: STY    WSYNC   
       LDA    ($CD),Y 
       STA    GRP0    
       DEY            
       BNE    LF8C1   
       JMP    LF9BA   
LF8CD: .byte $01,$05,$04,$05,$03,$04,$02
LF8D4: .byte $06,$24,$44,$64
LF8D8: LDA    #$44    
       STA    $BC     
       LDA    #$12    
       STA    $B6     
       LDA    #$0B    
       STA    $B0     
       LDA    #$0F    
       STA    $F9     
       LDA    #$06    
       STA    $EB     
       LDA    #$1D    
       STA    $E9     
       RTS            

LF8F1: SED            
       CLC            
       LDX    #$02    
LF8F5: ADC    $86,X   
       STA    $86,X   
       LDA    #$00    
       DEX            
       BPL    LF8F5   
       LDA    $87     
       CMP    $95     
       BCC    LF911   
       LDX    $9D     
       CPX    #$05    
       BPL    LF911   
       INC    $9D     
LF90C: CLC            
       ADC    $A8     
       STA    $95     
LF911: CLD            
       RTS            

LF913: .byte $03,$05,$06,$05,$07,$05,$02,$05,$00
LF91C: .byte $06,$00,$00,$02,$00,$04,$02,$06
LF924: .byte $14,$64,$44,$44,$24,$24,$24,$24
LF92C: .byte $02,$04
LF92E: .byte $02,$03,$00,$02,$07
LF933: .byte $08,$08,$00
LF936: .byte $02,$02,$0C,$02,$02,$1C,$FF
LF93D: JSR    LF793   
       STY    WSYNC   
       STY    VBLANK  
       LDA    #$07    
       STA    $E4     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$86    
       STA    COLUP0  
       STA    COLUP1  
LF952: LDY    $E4     
       LDA    ($93),Y 
       STA    $EA     
       LDA    ($91),Y 
       TAX            
       LDA    ($89),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    ($8D),Y 
       STA    GRP0    
       LDA    ($8F),Y 
       LDY    $EA     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $E4     
       BPL    LF952   
       LDA    #$80    
       STA    HMP1    
       LDA    #$00    
       STA    HMP0    
       STY    WSYNC   
       STA    HMOVE   
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    #$06    
       STA    COLUP0  
       STA    COLUP1  
       LDY    $96     
       LDX    LFF87,Y 
       STX    $97     
       LDA    LFF86,Y 
       STA    $98     
       STA    NUSIZ1  
       LDY    #$07    
LF9A4: STY    WSYNC   
       STX    NUSIZ0  
       LDA    LFEF8,Y 
       BIT    $97     
       BMI    LF9B1   
       STA    GRP0    
LF9B1: BIT    $98     
       BMI    LF9B7   
       STA    GRP1    
LF9B7: DEY            
       BNE    LF9A4   
LF9BA: LDX    #$02    
       STY    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDA    $A0     
       STA    COLUP0  
       LDA    $A1     
       STA    COLUP1  
LF9CA: STY    WSYNC   
       LDA    $F2,X   
       STA    $0120,X 
       LDY    $EF,X   
LF9D3: DEY            
       BNE    LF9D3   
       STY    RESP0,X 
       DEX            
       BPL    LF9CA   
       STY    WSYNC   
       STA    HMOVE   
       LDA    #$10    
       BIT    $D8     
       BEQ    LF9E9   
       LDA    #$00    
       BEQ    LF9EE   
LF9E9: LDX    $D7     
       LDA    LFEE0,X 
LF9EE: ADC    $AA     
       EOR    $99     
       AND    #$F7    
       STA    COLUPF  
       LDX    $D9     
       BEQ    LF9FC   
       LDX    #$84    
LF9FC: STX    COLUBK  
       LDY    $9B     
       STY    NUSIZ0  
       LDY    $9E     
       STY    NUSIZ1  
       LDY    #$A9    
       LDX    $EC     
       LDA    $DE     
       JMP    ($01ED) 
LFA0F: .byte $20,$DB,$FA,$A6,$E1,$BD,$00,$FD,$85,$E0,$A2,$01,$20,$DB,$FA,$C4
       .byte $DB,$B0,$03,$86,$DB,$E8,$86,$1D,$20,$DB,$FA,$A5,$E0,$29,$07,$05
       .byte $DC,$AA,$20,$DB,$FA,$E6,$E1,$BD,$65,$FF,$85,$DF,$20,$DB,$FA,$A5
       .byte $E0,$6A,$6A,$85,$E0,$A2,$01,$20,$DB,$FA,$C4,$DB,$B0,$03,$86,$DB
       .byte $E8,$86,$1D,$20,$DB,$FA,$A5,$E0,$29,$07,$05,$DC,$AA,$20,$DB,$FA
       .byte $BD,$75,$FF,$85,$DE,$C4,$D9,$D0,$04,$A9,$00,$85,$09,$20,$DB,$FA
       .byte $A5,$E0,$6A,$6A,$85,$E0,$A2,$01,$20,$DB,$FA,$C4,$DB,$B0,$03,$86
       .byte $DB,$E8,$86,$1D,$20,$DB,$FA,$A5,$E0,$29,$01,$05,$DC,$AA,$20,$DB
       .byte $FA,$BD,$85,$FF,$85,$DD,$20,$DB,$FA,$A5,$DC,$49,$08,$85,$DC,$A2
       .byte $01,$20,$DB,$FA,$C4,$DB,$B0,$03,$86,$DB,$E8,$86,$1D,$20,$DB,$FA
       .byte $A5,$DE,$48,$A6,$DD,$A5,$DF,$85,$0F,$68,$86,$0D,$84,$02,$85,$0E
       .byte $A5,$E2,$20,$DF,$FA,$4C,$0F,$FA,$20,$DB,$FA,$CA,$D0,$FA,$F0,$DD
       .byte $EA,$A5,$E5,$4C,$F2,$FA,$EA,$A5,$E6,$4C,$07,$FB,$84,$02,$A5,$E2
       .byte $D0,$0B,$C4,$FA,$D0,$EA,$A5,$E5,$85,$E2,$4C,$F2,$FA,$B1,$F7,$85
       .byte $1B,$E6,$E2,$A5,$E3,$D0,$0B,$C4,$FB,$D0,$DB,$A5,$E6,$85,$E3,$4C
       .byte $07,$FB,$B1,$F5,$85,$1C,$E6,$E3,$88,$F0,$01,$60,$84,$1B,$84,$1C
       .byte $84,$1D,$84,$09,$A9,$F0,$85,$20,$84,$21,$84,$02,$84,$0D,$84,$0E
       .byte $84,$0F,$68,$68,$A0,$03,$A9,$25,$8D,$96,$02,$84,$10,$84,$11,$84
       .byte $04,$84,$05,$60
LFB33: JSR    LFB42   
       LDA    $DD     
       STA    PF0     
       LDA    $DE     
       STA    PF1     
       LDA    $DF     
       STA    PF2     
LFB42: LDY    $E1     
       INC    $E1     
       LDA    LFD00,Y 
       STA    $E0     
       AND    #$07    
       ORA    $DC     
       TAY            
       LDA    LFF65,Y 
       STA    $DF     
       LDA    $E0     
       ROR            
       ROR            
       STA    $E0     
       AND    #$07    
       ORA    $DC     
       TAY            
       LDA    LFF75,Y 
       STA    $DE     
       LDA    $E0     
       ROR            
       ROR            
       AND    #$01    
       ORA    $DC     
       TAY            
       LDA    LFF85,Y 
       STA    $DD     
       LDA    $DC     
       EOR    #$08    
       STA    $DC     
       RTS            

LFB7A: LDA    $B6,X   
       CMP    #$12    
       BEQ    LFB94   
       CPX    #$00    
       BEQ    LFBBD   
       BIT    $85     
       BVC    LFB8C   
       CPX    $9A     
       BEQ    LFBBD   
LFB8C: LDA    $E2     
       ORA    #$C0    
       STA    $E2     
       BNE    LFBBD   
LFB94: JSR    LFC33   
       STY    $DE     
       LDA    LFD02,Y 
       JSR    LFC27   
       AND    LFC46,Y 
       BEQ    LFBAA   
       LDA    $E2     
       ORA    #$20    
       STA    $E2     
LFBAA: LDY    $DE     
       LDA    LFD00,Y 
       JSR    LFC27   
       AND    LFC46,Y 
       BEQ    LFBBD   
       LDA    $E2     
       ORA    #$10    
       STA    $E2     
LFBBD: LDA    $BC,X   
       AND    #$0F    
       CMP    #$04    
       BEQ    LFBD9   
       CPX    #$00    
       BEQ    LFC02   
       BIT    $85     
       BVC    LFBD1   
       CPX    $9A     
       BEQ    LFC02   
LFBD1: LDA    $E2     
       ORA    #$30    
       STA    $E2     
       BNE    LFC02   
LFBD9: JSR    LFC33   
       STY    $DE     
       LDA    LFD01,Y 
       CPX    #$00    
       BEQ    LFBE7   
       ORA    #$10    
LFBE7: JSR    LFC27   
       AND    LFEE6,Y 
       BEQ    LFBF5   
       LDA    $E2     
       ORA    #$40    
       STA    $E2     
LFBF5: LDA    $DD     
       AND    LFEE7,Y 
       BEQ    LFC02   
       LDA    $E2     
       ORA    #$80    
       STA    $E2     
LFC02: LDA    $E2     
LFC04: LDY    #$00    
       ASL            
       BCS    LFC0A   
       INY            
LFC0A: ASL            
       BCS    LFC0E   
       INY            
LFC0E: ASL            
       BCS    LFC12   
       INY            
LFC12: ASL            
       BCS    LFC16   
       INY            
LFC16: RTS            

LFC17: .byte $00,$00
LFC19: .byte $01,$01,$00,$C0,$80,$40,$06,$01,$80,$80,$10,$10,$20,$00
LFC27: STA    $DD     
       LDA    $BC,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $DD     
       RTS            

LFC33: LDA    $B0,X   
       SEC            
       SBC    #$05    
       LSR            
       STA    $DD     
       LDA    #$14    
       SEC            
       SBC    $DD     
       ASL            
       CLC            
       ADC    $A7     
       TAY            
       RTS            

LFC46: .byte $10,$08,$04,$02,$01,$02,$04,$08,$10
LFC4F: LDA    #$F0    
       STA    $E2     
       LDA    $B0     
       SEC            
       SBC    $B0,X   
       BMI    LFC6B   
       BNE    LFC65   
       LDA    $B6     
       SEC            
       SBC    $B6,X   
       BMI    LFC6B   
       BEQ    LFC6F   
LFC65: LDA    #$E0    
       STA    $E2     
       BNE    LFC6F   
LFC6B: LDA    #$D0    
       STA    $E2     
LFC6F: LDA    $BC     
       SEC            
       SBC    $BC,X   
       BCC    LFC80   
       BEQ    LFC86   
       LDA    $E2     
       AND    #$70    
       STA    $E2     
       BNE    LFC86   
LFC80: LDA    $E2     
       AND    #$B0    
       STA    $E2     
LFC86: RTS            

LFC87: LDX    #$03    
LFC89: LDA    LFEEB,X 
       AND    $85     
       BNE    LFC96   
       LDA    $80,X   
       EOR    #$80    
       STA    $80,X   
LFC96: DEX            
       BPL    LFC89   
       LDA    $80     
       AND    #$F8    
       STA    $80     
       RTS            

LFCA0: LDA    $B0     
       SEC            
       SBC    $EB     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $B6     
       SEC            
       SBC    $F9     
       RTS            

LFCB0: .byte $44,$04,$44,$84,$74,$44,$14,$44
LFCB8: .byte $20,$40,$80,$10,$00,$60,$20,$27,$25,$24,$FF,$81,$A5,$A5,$99,$DB
       .byte $A5,$99,$99,$FF,$22,$00,$06,$04,$E4,$A4,$24,$FF,$A5,$A5,$99,$DB
       .byte $A5,$99,$99,$81,$FF,$44,$00,$55,$55,$55,$55,$FF,$FF,$7E,$7E,$3C
       .byte $3C,$18,$18,$3C,$28,$3C,$18,$00,$AA,$AA,$AA,$AA,$FF,$FF,$7E,$7E
       .byte $3C,$3C,$18,$18,$3C,$14,$3C,$18
LFD00: .byte $1F
LFD01: .byte $10
LFD02: .byte $0D,$18,$06,$19,$04,$15,$1A,$12,$0D,$09,$05,$1A,$02,$15,$18,$17
       .byte $00,$1A,$0F,$18,$05,$0D,$02,$16,$19,$11,$0E,$18,$05,$1F,$04,$11
       .byte $1C,$13,$08,$1D,$06,$10,$1F,$10,$0F,$10,$1B,$16,$00,$1F,$00,$1D
       .byte $06,$18,$0F,$14,$13,$0E,$02,$15,$0C,$10,$0C,$11,$0C,$15,$02,$0E
       .byte $13,$14,$0F,$18,$06,$1D,$00,$1F,$00,$16,$1B,$10,$0F,$10,$1F,$10
       .byte $0E,$09,$00,$17,$18,$13,$19,$16,$03,$1C,$06,$18,$0F,$18,$03,$16
       .byte $18,$13,$0C,$13,$18,$15,$06,$18,$0F,$08,$05,$17,$18,$11,$08,$1E
       .byte $02,$19,$0C,$1B,$02,$1C,$1F,$10,$00,$14,$00,$0C,$03,$14,$00,$14
       .byte $00,$14,$03,$14,$00,$15,$00,$15,$0C,$11,$0C,$15,$00,$15,$00,$15
       .byte $00,$14,$03,$14,$00,$14,$00,$14,$03,$0C,$00,$14,$00,$10,$1F,$10
       .byte $00,$10,$00,$10,$0F,$10,$00,$10,$00,$10,$1E,$10,$00,$10,$07,$10
       .byte $0E,$08,$0E,$10,$07,$10,$00,$10,$1E,$10,$00,$10,$00,$10,$0F,$10
       .byte $00,$10,$00,$10,$00,$10,$1F
LFDC9: LDA    $BC,X   
       SEC            
       SBC    $01BC,Y 
       CMP    #$04    
       BCC    LFDD7   
       CMP    #$FD    
       BCC    LFDEE   
LFDD7: LDA    $B0,X   
       CMP    $01B0,Y 
       BNE    LFDEE   
       LDA    $B6,X   
       SEC            
       SBC    $01B6,Y 
       CMP    #$04    
       BCC    LFDEC   
       CMP    #$FD    
       BCC    LFDEE   
LFDEC: LDA    #$00    
LFDEE: RTS            

LFDEF: LDA    INPT4   
       BPL    LFE00   
       BIT    $D8     
       BPL    LFE35   
       LDA    $D8     
       AND    #$7F    
       STA    $D8     
       JMP    LFE35   
LFE00: BIT    $D8     
       BMI    LFE35   
       LDA    #$08    
       BIT    $D8     
       BNE    LFE11   
       JSR    LFEAC   
       CPX    #$00    
       BNE    LFE35   
LFE11: LDA    $B4     
       BNE    LFE35   
       STA    $C6     
       INC    $C6     
       LDA    $D8     
       ORA    #$80    
       STA    $D8     
       LDA    $B0     
       STA    $B4     
       LDA    $B6     
       STA    $BA     
       LDA    $BC     
       STA    $C0     
       LDA    #$06    
       STA    AUDC1   
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
LFE35: LDA    INPT5   
       BPL    LFE46   
       BIT    $D8     
       BVC    LFE5B   
       LDA    $D8     
       AND    #$BF    
       STA    $D8     
       JMP    LFE5B   
LFE46: BIT    $D8     
       BVS    LFE5B   
       LDA    $D8     
       ORA    #$40    
       STA    $D8     
       LDX    $9A     
       INX            
       CPX    #$04    
       BNE    LFE59   
       LDX    #$01    
LFE59: STX    $9A     
LFE5B: LDA    $C6     
       BEQ    LFE69   
       INC    $C6     
       LDA    $C6     
       AND    #$0F    
       STA    AUDV1   
       BPL    LFE6B   
LFE69: STA    $B4     
LFE6B: LDA    $A6     
       BEQ    LFE7F   
       INC    $A6     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF90C,X 
       STA    AUDF0   
       BNE    LFE7F   
       STA    AUDV0   
LFE7F: LDX    #$02    
LFE81: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $86,X   
       AND    #$F0    
       LSR            
       STA    $0189,Y 
       LDA    $86,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $018B,Y 
       DEX            
       BPL    LFE81   
       INX            
LFE9B: LDA    $89,X   
       BNE    LFEA9   
       LDA    #$50    
       STA    $89,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LFE9B   
LFEA9: JMP    LF344   
LFEAC: LDX    $D7     
       LDA    $D0,X   
       LDX    #$00    
       SEC            
       SBC    #$10    
       BCC    LFEC8   
       LSR            
       LSR            
       CLC            
       ADC    #$01    
       STA    $A0     
       LDA    #$2D    
       SEC            
       SBC    $B0     
       CMP    $A0     
       BCS    LFEC8   
       DEX            
LFEC8: RTS            

LFEC9: .byte $00,$00,$00,$00,$00,$FF,$FD,$FF
LFED1: .byte $10,$10,$10,$10,$10,$20,$30,$20
LFED9: .byte $03,$04,$05,$06,$07,$08,$09
LFEE0: .byte $B6,$36,$66,$96,$16,$00
LFEE6: .byte $10
LFEE7: .byte $08,$04,$02,$01
LFEEB: .byte $01,$02,$04,$08,$10
LFEF0: .byte $0F,$27,$13,$27,$09,$2B,$09,$1B
LFEF8: .byte $06,$24,$24,$18,$5A,$24,$18,$18,$3C,$66,$66,$66,$66,$66,$66,$3C
       .byte $3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C
       .byte $3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C
       .byte $18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C
       .byte $3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00,$00,$00,$00,$00,$00
LFF58: .byte $00,$10,$20,$30,$40,$50,$60
LFF5F: .byte $01,$00,$05,$02,$09,$19
LFF65: .byte $66,$E6,$7E,$FE,$67,$E7,$7F,$FF,$00,$60,$06,$66,$00,$60,$06,$66
LFF75: .byte $66,$67,$7E,$7F,$E6,$E7,$FE,$FF,$00,$06,$60,$66,$00,$06,$60,$66
LFF85: .byte $70
LFF86: .byte $F0
LFF87: .byte $80,$00,$00,$02,$02,$06
LFF8D: .byte $06,$76,$26,$46,$00,$03,$36,$63,$C3,$63,$33,$BD,$3C,$BD,$BD,$7E
       .byte $BD,$24,$18,$18,$24,$00,$C0,$6C,$C6,$C3,$C6,$CC,$BD,$3C,$BD,$BD
       .byte $7E,$BD,$24,$18,$18,$24,$00,$66,$C3,$66,$66,$66,$66,$BD,$3C,$BD
       .byte $BD,$7E,$BD,$24,$18,$18,$24,$00,$1A,$1A,$1A,$5A,$5A,$7E,$FF,$FF
       .byte $FF,$FF,$FF,$DF,$DF,$7E,$7E,$3C,$00,$58,$58,$58,$5A,$5A,$7E,$FF
       .byte $FF,$FF,$FF,$FF,$FB,$FB,$7E,$7E,$3C
LFFE6: .byte $91,$BC,$9B,$BC,$DE,$C4,$DE,$B3
LFFEE: .byte $FF,$F7,$F7,$FC,$F7,$FF,$FC,$FF
LFFF6: .byte $21,$1B,$1B,$15,$00,$F0,$00,$F0,$00,$F0
