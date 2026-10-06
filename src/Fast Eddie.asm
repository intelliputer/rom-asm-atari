; Disassembly of roms/Fast Eddie.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Fast Eddie.bin
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
REFP1   =  $0C
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
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
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
       LDA    SWCHB   
       AND    #$08    
       STA    $F8     
       LDA    #$03    
       STA    $B2     
       STA    $B5     
       STA    $DA     
       LDY    #$FB    
       STY    $C4     
       STY    $CB     
       STY    $BC     
       INY            
       STY    $C9     
       STY    $C2     
       LDA    #$FE    
       STA    $BA     
       STA    $BE     
       STA    $C0     
       LDA    #$97    
       STA    $99     
       STA    $B7     
       LDY    #$0E    
LF038: LDA    LFEFB,Y 
       STA.wy $0080,Y 
       DEY            
       BPL    LF038   
       INY            
       JSR    LFA5D   
LF045: LDX    #$2A    
       STA    WSYNC   
       STX    VBLANK  
       STX    VSYNC   
       STX    TIM8T   
       LDA    $EA     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $E4     
       LDA    $EA     
       AND    #$F0    
       LSR            
       STA    $E5     
       LDA    $EB     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $E6     
       LDA    $EB     
       AND    #$F0    
       LSR            
       STA    $E7     
       LDA    $B7     
       CLC            
       ADC    #$62    
       STA    $FB     
       LDX    #$27    
LF079: LDA    INTIM   
       BNE    LF079   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       LDA    $F0     
       BPL    LF0A0   
       LDA    SWCHB   
       AND    #$08    
       CMP    $F8     
       BEQ    LF0A0   
       LDX    #$00    
       STX    AUDV1   
       STX    AUDV0   
       LDX    #$FF    
       TXS            
       JSR    LFFE9   
       BNE    LF0E5   
LF0A0: DEC    $B1     
       INC    $F4     
       BNE    LF0AC   
       LDA    $81     
       BNE    LF0AC   
       INC    $81     
LF0AC: LDA    $E3     
       BPL    LF0B3   
       JMP    LF154   
LF0B3: AND    #$03    
       CMP    #$03    
       BNE    LF0CE   
       SED            
       LDY    $DC     
       DEY            
       TYA            
       ORA    #$01    
       CLC            
       ADC    $EA     
       STA    $EA     
       LDA    $EB     
       ADC    #$00    
       STA    $EB     
       CLD            
       INC    $EE     
LF0CE: DEC    $E3     
       LDX    #$00    
       STX    AUDV1   
       DEX            
       TXS            
       JSR    LFFE9   
       LDA    #$0D    
       STA    AUDC0   
       LDA    $E3     
       STA    AUDF0   
       STA    AUDV0   
       BMI    LF0E8   
LF0E5: JMP    LF686   
LF0E8: LDA    LFF34   
       STA    $C1     
       LDA    LFF28   
       STA    $BD     
       STA    $C9     
       LDA    #$82    
       STA    $CA     
       LDA    #$4A    
       STA    $8E     
       LDY    #$00    
       LDX    #$FF    
       TXS            
       JSR    LFA5D   
       LDY    #$00    
       STY    $F4     
       STY    $81     
       STY    AUDV0   
       STY    AUDV1   
       STY    $DD     
       STY    $DF     
       STY    $E1     
       STY    $F1     
       STY    $F2     
       INY            
       STY    $D6     
       STY    $FC     
       STY    $F9     
       STY    $D4     
       INC    $B2     
       LDY    $B2     
       CPY    #$04    
       BCC    LF12C   
       DEY            
       STY    $B2     
LF12C: INC    $DC     
       LDY    $DC     
       CPY    #$06    
       BEQ    LF138   
       CPY    #$0B    
       BCC    LF14C   
LF138: INC    $EF     
       LDA    $EF     
       CMP    #$08    
       BCC    LF144   
       LDA    #$03    
       STA    $EF     
LF144: CPY    #$06    
       BEQ    LF14A   
       LDY    #$01    
LF14A: STY    $DC     
LF14C: STY    $E0     
       STY    $DE     
       LDA    #$09    
       STA    $86     
LF154: LDA    INPT4   
       BMI    LF160   
       LDA    $F5     
       BNE    LF160   
       LDA    $F0     
       BPL    LF166   
LF160: LDA    SWCHB   
       LSR            
       BCS    LF1C2   
LF166: LDY    #$FF    
       STY    $F3     
       STY    $F0     
       INY            
       STY    AUDV1   
       STY    AUDV0   
       STY    $EA     
       STY    $EB     
       STY    $D9     
       STY    $F4     
       STY    $81     
       STY    $DD     
       STY    $DE     
       STY    $E0     
       STY    $F5     
       STY    $B0     
       STY    $EE     
       INY            
       STY    $D6     
       STY    $FC     
       STY    $DC     
       STY    $DF     
       STY    $E1     
       STY    $D4     
       LDA    #$03    
       STA    $B2     
       LDA    LFF34   
       STA    $C1     
       LDA    LFF29   
       STA    $BD     
       STA    $C9     
       STA    $E3     
       LDA    #$47    
       STA    $B7     
       LDA    #$0E    
       STA    $C3     
       LDA    #$FC    
       STA    $C4     
       LDA    #$82    
       STA    $CA     
       LDA    #$09    
       STA    $86     
       LDA    #$4A    
       STA    $8E     
       STA    $85     
       BPL    LF1D2   
LF1C2: LDA    $F3     
       BPL    LF1D5   
       STA    $F0     
       LDY    #$00    
       STY    $F3     
       LDX    #$FF    
       TXS            
       JSR    LFA5D   
LF1D2: JMP    LF686   
LF1D5: LDA    SWCHB   
       LSR            
       LSR            
       BCC    LF1E4   
       STA    $FD     
       LDA    $F0     
       BPL    LF204   
       BMI    LF21C   
LF1E4: LDA    $FD     
       BPL    LF1F1   
       LDA    $F0     
       CLC            
       ADC    #$03    
       STA    $F0     
       BPL    LF204   
LF1F1: LDY    #$FF    
       STY    $FD     
       INY            
       STY    $F0     
       INC    $EF     
       LDA    $EF     
       CMP    #$08    
       BCC    LF204   
       LDA    #$00    
       STA    $EF     
LF204: LDY    $EF     
       LDA    LFF74,Y 
       STA    $B3     
       LDA    #$FE    
       STA    $B4     
       INC    $F0     
       BPL    LF21C   
       LDX    #$00    
       STX    $F0     
       DEX            
       TXS            
       JSR    LFFE9   
LF21C: JMP    LF27F   
LF21F: INC    $B5     
       LDA    $B5     
       LSR            
       BCS    LF246   
       LDA    #$0E    
       STA    $C3     
       LDA    #$FC    
       STA    $C4     
       INC    $D5     
       LDA    #$00    
       STA    AUDV1   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$04    
       STA    AUDC0   
       LDA    $D5     
       STA    AUDF0   
       INC    $B7     
       CMP    #$11    
       BCS    LF249   
LF246: JMP    LF686   
LF249: LDY    #$FF    
       STY    $C9     
       INY            
       STY    $F2     
       STY    $D5     
       STY    AUDV0   
       STY    AUDV1   
       STY    $D9     
       STY    $81     
       STY    $F1     
       STY    $F4     
       STY    $EE     
       STY    $B0     
       INY            
       STY    $B5     
       STY    $D4     
       LDA    #$D6    
       STA    $C3     
       LDA    #$FB    
       STA    $C4     
       LDA    #$82    
       STA    $CA     
       LDA    $F7     
       STA    $B7     
       LDA    #$4A    
       STA    $8E     
       LDA    #$09    
       STA    $86     
LF27F: LDA    $D7     
       BEQ    LF293   
       STA    AUDV1   
       STA    AUDC1   
       LDY    #$00    
       STY    AUDF1   
       DEC    $D7     
       DEC    $D7     
       BNE    LF293   
       STY    AUDV1   
LF293: LDA    $F5     
       BEQ    LF2B6   
       STA    AUDF1   
       LDA    $F6     
       EOR    #$0F    
       STA    AUDV1   
       LSR            
       STA    AUDC1   
       DEC    $F6     
       BPL    LF2B6   
       LDA    #$05    
       STA    $F6     
       DEC    $F5     
       BNE    LF2B6   
       LDA    #$00    
       STA    AUDV1   
       STA    AUDV0   
       STA    $EF     
LF2B6: LDA    $C9     
       BMI    LF2DF   
       LDA    $D7     
       BNE    LF2DF   
       LDA    $F0     
       BPL    LF2DF   
       LDA    $CD     
       CMP    #$05    
       BCC    LF2DB   
       CLC            
       ADC    $B5     
       STA    AUDF1   
       LDA    $B5     
       EOR    #$07    
       ORA    #$08    
       STA    AUDV1   
       LDA    #$0D    
       STA    AUDC1   
       BNE    LF2DF   
LF2DB: LDA    #$00    
       STA    AUDV1   
LF2DF: LDA    $F2     
       BPL    LF2E6   
       JMP    LF21F   
LF2E6: LDA    $F1     
       CMP    #$04    
       BNE    LF30D   
       LDY    #$FF    
       STY    $F2     
       LDA    $B7     
       STA    $F7     
       DEC    $B2     
       BPL    LF30D   
       LDA    #$03    
       STA    $B2     
       STA    $F0     
       LDA    #$27    
       STA    $F7     
       LDA    #$1E    
       STA    $F5     
       LDA    #$0A    
       STA    $F6     
       INY            
       STY    $D7     
LF30D: LDA    $DD     
       BNE    LF314   
       JMP    LF3B1   
LF314: BPL    LF36E   
       LDA    $ED     
       BEQ    LF32B   
       LDY    $E2     
       LDA    $DC     
       CMP    #$0B    
       BCC    LF324   
       LDA    #$0A    
LF324: STA.wy $00DD,Y 
       LDA    #$00    
       STA    $ED     
LF32B: LDA    $FC     
       CLC            
       ADC    #$0A    
       CMP    #$13    
       BCC    LF336   
       LDA    #$13    
LF336: LDY    $D4     
       STA.wy $00DD,Y 
       LDA    $FC     
       STA    $E2     
       CMP    #$0A    
       BCC    LF347   
       LDA    #$09    
       STA    $E2     
LF347: SED            
       LDA    $EA     
       CLC            
       ADC    $E2     
       STA    $EA     
       LDA    $EB     
       ADC    #$00    
       STA    $EB     
       CLD            
       STY    $E2     
       INC    $FC     
       LDA    #$69    
       STA    $F9     
       STA    $DD     
       LDX    $D6     
       CPX    #$0A    
       BCS    LF36E   
       INX            
       STX    $D6     
       LDA    LFF33,X 
       STA    $C1     
LF36E: DEC    $F9     
       BNE    LF3B1   
       LDX    #$00    
       LDY    $E2     
       STX    $DD,Y   
       INX            
       STX    $F9     
       LDY    $B5     
       DEY            
       BEQ    LF3B1   
       LDA.wy $00DD,Y 
       BNE    LF3B1   
       CPY    $D4     
       BEQ    LF3B1   
       DEX            
       STX    $F9     
       STX    AUDV0   
       STX    $DD     
       LDA    $D6     
       CMP    #$0A    
       BCS    LF3CC   
       LDA    $DC     
       CMP    #$0B    
       BCC    LF39E   
       LDA    #$0A    
LF39E: STA.wy $00DD,Y 
       LDX    LFDEB,Y 
       LDA    $85     
       CLC            
       ADC    #$1E    
       CMP    #$96    
       BCC    LF3AF   
       LDA    #$96    
LF3AF: STA    $85,X   
LF3B1: LDA    $F9     
       BEQ    LF3CC   
       SEC            
       SBC    #$41    
       BCS    LF3C0   
       LDA    #$00    
       STA    AUDV0   
       BEQ    LF3CC   
LF3C0: LSR            
       LSR            
       STA    AUDF0   
       EOR    #$08    
       STA    AUDV0   
       LDA    #$0D    
       STA    AUDC0   
LF3CC: LDA    $D9     
       BEQ    LF3D7   
       DEC    $DA     
       BEQ    LF3DA   
       JMP    LF5D0   
LF3D7: JMP    LF44E   
LF3DA: LDA    #$0A    
       STA    $DA     
       LDA    $D8     
       BEQ    LF415   
       LDY    $CD     
       LDA    LFDF0,Y 
       STA    $C3     
       LDA    #$FC    
       STA    $C4     
       LDA    LFDF2,Y 
       STA    $CA     
       LDA    LFF0A,Y 
       STA    REFP1   
       STA    $EC     
       INY            
       STY    $CD     
       CPY    #$03    
       BCC    LF412   
       INC    $D4     
       LDA    #$00    
       STA    $D9     
       LDA    #$82    
       STA    $CA     
       LDA    #$D6    
       STA    $C3     
       LDA    #$FB    
       STA    $C4     
LF412: JMP    LF5D0   
LF415: LDY    $CD     
       CPY    #$01    
       BNE    LF41D   
       DEC    $D4     
LF41D: LDA    LFDF0,Y 
       STA    $C3     
       LDA    #$FC    
       STA    $C4     
       LDA    LFDF2,Y 
       STA    $CA     
       LDA    LFF0A,Y 
       STA    REFP1   
       STA    $EC     
       DEC    $CD     
       LDA    $CD     
       CMP    #$FE    
       BNE    LF412   
       LDA    #$00    
       STA    $D9     
       LDA    #$D6    
       STA    $C3     
       LDA    #$FB    
       STA    $C4     
       STA    $C9     
       LDA    #$82    
       STA    $CA     
       BNE    LF412   
LF44E: LDA    $C9     
       BPL    LF455   
       JMP    LF49D   
LF455: LDA    $8E     
       CLC            
       ADC    $CE     
       STA    $8E     
       CMP    #$08    
       BCS    LF466   
       LDA    #$08    
       STA    $8E     
       BNE    LF46E   
LF466: CMP    #$95    
       BCC    LF46E   
       LDA    #$95    
       STA    $8E     
LF46E: DEC    $CC     
       BNE    LF49A   
       LDA    #$06    
       STA    $CC     
       DEC    $CD     
       BMI    LF48C   
       LDY    $CD     
       LDA    LFF11,Y 
       STA    $C3     
       LDA    LFF17,Y 
       STA    $CA     
       LDA    #$FB    
       STA    $C4     
       BMI    LF49A   
LF48C: LDA    #$D6    
       STA    $C3     
       LDA    #$FB    
       STA    $C4     
       STA    $C9     
       LDA    #$82    
       STA    $CA     
LF49A: JMP    LF5D0   
LF49D: LDA    $F0     
       BMI    LF4B4   
       LDA    $86     
       LDY    $81     
       BMI    LF4AE   
       CMP    #$32    
       BEQ    LF4B8   
LF4AB: JMP    LF5C4   
LF4AE: CMP    #$5A    
       BEQ    LF4B8   
       BNE    LF4AB   
LF4B4: LDA    INPT4   
       BMI    LF4C0   
LF4B8: STA    $C9     
       LDA    #$06    
       STA    $CD     
       STA    $CC     
LF4C0: LDA    $F0     
       BPL    LF4AB   
       LDA    SWCHA   
       CMP    #$FF    
       BEQ    LF4AB   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       AND    #$08    
       BNE    LF4EC   
       LDX    #$00    
       STX    REFP1   
       STX    $EC     
       INX            
       STX    $CE     
       INC    $8E     
       LDA    $8E     
       CMP    #$95    
       BCC    LF4E9   
       LDA    #$95    
       STA    $8E     
LF4E9: JMP    LF5A6   
LF4EC: TYA            
       AND    #$04    
       BNE    LF509   
       LDA    #$08    
       STA    REFP1   
       STA    $EC     
       DEC    $8E     
       LDA    #$FF    
       STA    $CE     
       LDA    $8E     
       CMP    #$08    
       BCS    LF4E9   
       LDA    #$08    
       STA    $8E     
       BPL    LF4E9   
LF509: TYA            
       AND    #$01    
       BNE    LF552   
       LDY    $D4     
       LDA.wy $00CF,Y 
       TAX            
       TAY            
       DEY            
       DEY            
       TYA            
       CMP    $8E     
       BCS    LF523   
       CLC            
       ADC    #$0C    
       CMP    $8E     
       BCS    LF536   
LF523: TXA            
       CLC            
       ADC    #$50    
       TAY            
       DEY            
       DEY            
       TYA            
       CMP    $8E     
       BCS    LF4E9   
       CLC            
       ADC    #$0C    
       CMP    $8E     
       BCC    LF5A6   
LF536: LDA    $D4     
       CMP    #$05    
       BCS    LF5A6   
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       STY    $8E     
       STY    $D8     
       STA    $D9     
       LDA    #$00    
       STA    $CD     
       LDA    #$40    
       STA    $D7     
       BPL    LF573   
LF552: TYA            
       AND    #$02    
       BNE    LF5A6   
       LDY    $D4     
       DEY            
       LDA.wy $00CF,Y 
       TAY            
       TAX            
       DEY            
       DEY            
       TYA            
       CMP    $8E     
       BCS    LF576   
       CLC            
       ADC    #$0C    
       CMP    $8E     
       BCC    LF576   
       LDA    $D4     
       CMP    #$01    
       BNE    LF58F   
LF573: JMP    LF5D0   
LF576: TXA            
       CLC            
       ADC    #$50    
       TAY            
       DEY            
       DEY            
       TYA            
       CMP    $8E     
       BCS    LF5A6   
       CLC            
       ADC    #$0C    
       CMP    $8E     
       BCC    LF5A6   
       LDA    $D4     
       CMP    #$01    
       BEQ    LF5D0   
LF58F: STA    $D9     
       LDX    #$00    
       STX    $D8     
       INX            
       STX    $CD     
       INY            
       INY            
       INY            
       INY            
       INY            
       INY            
       STY    $8E     
       LDA    #$40    
       STA    $D7     
       BNE    LF5D0   
LF5A6: LDA    $B5     
       CMP    #$01    
       BNE    LF5D0   
       LDA    $B6     
       BEQ    LF5BA   
       LDA    #$D6    
       STA    $C3     
       LDA    #$FB    
       STA    $C4     
       BMI    LF5D0   
LF5BA: LDA    #$F2    
       STA    $C3     
       LDA    #$FB    
       STA    $C4     
       BMI    LF5D0   
LF5C4: LDA    #$0E    
       STA    $C3     
       LDA    #$FC    
       STA    $C4     
       LDA    #$00    
       STA    $CE     
LF5D0: LDY    #$04    
LF5D2: LDA.wy $0085,Y 
       CLC            
       ADC.wy $0080,Y 
       STA.wy $0085,Y 
       CMP    #$09    
       BCS    LF5ED   
       INC    $B0     
       BNE    LF5E6   
       INC    $EE     
LF5E6: LDA    #$01    
       STA.wy $0080,Y 
       BNE    LF608   
LF5ED: LDX    $EF     
       LDA    LFFF1,X 
       STA    $E8     
       LDA    #$FA    
       STA    $E9     
       LDA    ($E8),Y 
       TAX            
       LDA.wy $0085,Y 
       CMP    LFF7D,X 
       BCC    LF608   
       LDA    #$FF    
       STA.wy $0080,Y 
LF608: DEY            
       BPL    LF5D2   
       DEC    $B5     
       BNE    LF65A   
       INC    $8C     
       LDA    $8C     
       CMP    #$B0    
       BNE    LF61B   
       LDA    #$10    
       STA    $8C     
LF61B: DEC    $8B     
       LDA    $8B     
       CMP    #$0F    
       BNE    LF627   
       LDA    #$AF    
       STA    $8B     
LF627: LDA    $BC     
       CLC            
       ADC    #$10    
       STA    $BC     
       LDA    #$05    
       STA    $B5     
       LDA    $B6     
       BEQ    LF649   
       LDA    #$50    
       STA    $B9     
       LDX    $D6     
       LDA    LFF1D,X 
       STA    $BD     
       LDA    #$7B    
       STA    $BF     
       DEC    $B6     
       BEQ    LF65A   
LF649: LDA    #$6C    
       STA    $B9     
       LDX    $D6     
       LDA    LFF28,X 
       STA    $BD     
       LDA    #$A7    
       STA    $BF     
       INC    $B6     
LF65A: LDY    #$09    
       LDA    $EF     
       ORA    $EE     
       BNE    LF668   
       LDA    #$54    
       STA    $87     
       STY    $89     
LF668: LDA.wy $0085,Y 
       LDX    #$01    
LF66D: CMP    #$0F    
       BCC    LF677   
       SEC            
       SBC    #$0F    
       INX            
       BNE    LF66D   
LF677: STX    $8F,Y   
       TAX            
       LDA    LFDD8,X 
       ORA.wy $008F,Y 
       STA.wy $008F,Y 
       DEY            
       BPL    LF668   
LF686: LDA    INTIM   
       BNE    LF686   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$00    
       STA    GRP0    
       STA    REFP1   
       STA    $B8     
       STA    $AF     
       STA    HMP1    
       STA    CXCLR   
       LDX    #$DC    
LF69F: STA    WSYNC   
       CPX    #$DB    
       BEQ    LF6AB   
       JMP    LF79C   
LF6A8: JMP    LF729   
LF6AB: LDA    $F0     
       BMI    LF6A8   
       LDA    $B7     
       CMP    #$87    
       BCC    LF6A8   
       BEQ    LF6B9   
       BCS    LF6BF   
LF6B9: LDX    #$FF    
       TXS            
       JSR    LFFE9   
LF6BF: STA    HMCLR   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$04    
       STA    WSYNC   
LF6CB: DEX            
       BNE    LF6CB   
       NOP            
       ROL    LF000,X 
       NOP            
       LDA    #$10    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$07    
       STA    $E9     
       STA    VDELP0  
       STA    VDELP1  
LF6ED: LDY    $E9     
       LDA    LFFE1,Y 
       STA.w  $00E8   
       STA    WSYNC   
       LDA    LFFD9,Y 
       TAX            
       LDA    LFFB9,Y 
       BIT    $FF     
       STA    GRP0    
       LDA    LFFC1,Y 
       STA.w  $001C   
       LDA    LFFC9,Y 
       STA.w  $001B   
       LDA    LFFD1,Y 
       LDY.w  $00E8   
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $E9     
       BPL    LF6ED   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       JMP    LF787   
LF729: STA    HMCLR   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$04    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       LDA    #$00    
       STA    NUSIZ0  
       STA    REFP1   
       ROL    LF000,X 
       NOP            
LF743: DEX            
       BNE    LF743   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $E8     
       LDA    #$FE    
       STA    $E9     
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
LF75E: LDY    $E4     
       LDA    ($E8),Y 
       TAX            
       LDY    $E7     
       STA    WSYNC   
       LDA    ($E8),Y 
       LDY    $E6     
       STA    GRP0    
       LDA    ($E8),Y 
       STA    GRP1    
       LDY    $E5     
       LDA    ($E8),Y 
       STA    $C7     
       LDY    #$00    
       LDA    ($E8),Y 
       LDY    $C7     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       DEC    $E8     
       BPL    LF75E   
LF787: LDA    #$00    
       STA    NUSIZ1  
       STA    GRP0    
       STA    GRP1    
       LDX    #$D3    
       LDA    #$04    
       STA    $E4     
       LDA    #$08    
       STA    $E5     
       JMP    LF69F   
LF79C: CPX    #$D2    
       BNE    LF7EE   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDY    $B2     
       LDA    LFDE7,Y 
       STA    WSYNC   
       STA    PF2     
       LDA    $FB     
       STA    COLUPF  
       LDY    #$04    
LF7B5: DEY            
       BPL    LF7B5   
       LDY    $B2     
       LDA    LFF0D,Y 
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    PF0     
       LDY    $B2     
       LDA    LFDE7,Y 
       STA    WSYNC   
       BIT    $FF     
       STA    PF2     
       LDA    $FB     
       STA    COLUPF  
       LDY    #$03    
LF7D8: DEY            
       BPL    LF7D8   
       LDY    $B2     
       LDA    LFF0D,Y 
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       DEX            
       DEX            
       STA    COLUPF  
LF7EE: CPX    #$CF    
       BEQ    LF7F5   
       JMP    LF8FA   
LF7F5: TXS            
       LDA    $F0     
       BMI    LF7FE   
       LDA    #$C5    
       STA    $8F     
LF7FE: LDA    #$00    
       STA    NUSIZ0  
       LDA    $8F     
       STA    HMP0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
       LDA    $8F     
       EOR    ($FC,X) 
       ROL    LF000,X 
LF812: DEX            
       BNE    LF812   
       STA    RESP0   
       STA    WSYNC   
       LDA    $98     
       STA    HMP1    
       AND    #$0F    
       STA    $E6     
       STA    WSYNC   
       LDX    $E6     
       BIT    $FF     
       LDA    $98     
       ROL    LF000,X 
LF82C: DEX            
       BNE    LF82C   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $EC     
       STA    REFP1   
       STA    WSYNC   
       LDA    #$00    
       STA    HMP1    
       LDA    $F0     
       BMI    LF862   
       TSX            
       LDY    #$08    
LF846: STA    WSYNC   
       LDA    #$0F    
       STA    COLUP0  
       LDA    ($B3),Y 
       STA    GRP0    
       DEX            
       DEY            
       BPL    LF846   
       INY            
       STY    GRP0    
       LDY    #$14    
LF859: STA    WSYNC   
       DEX            
       DEY            
       BPL    LF859   
       JMP    LF8F0   
LF862: LDA    $D4     
       CMP    #$05    
       BNE    LF875   
       LDA    $C3     
       CLC            
       ADC    $D5     
       STA    $C5     
       LDA    $C4     
       STA    $C6     
       BMI    LF87D   
LF875: LDA    #$30    
       STA    $C5     
       LDA    #$FD    
       STA    $C6     
LF87D: TSX            
       LDY    #$1A    
LF880: LDA    ($C5),Y 
       STA    $C7     
       LDA    ($BD),Y 
       STA    $C8     
       LDA    ($CA),Y 
       STA    WSYNC   
       STA    COLUP1  
       LDA    $C7     
       STA    GRP1    
       LDA    ($C1),Y 
       STA    COLUP0  
       LDA    $C8     
       STA    GRP0    
       DEX            
       DEY            
       CPY    #$09    
       BNE    LF8BF   
       STA    WSYNC   
       STA    WSYNC   
       LDA    $F2     
       BMI    LF8BA   
       LDA    CXPPMM  
       BPL    LF8BA   
       LDA    $D6     
       CMP    #$0A    
       BCC    LF8BA   
       LDA    $E3     
       BPL    LF8BA   
       LDA    #$7D    
       STA    $E3     
LF8BA: STA    WSYNC   
       DEX            
       DEX            
       DEX            
LF8BF: CPY    #$03    
       BNE    LF880   
LF8C3: LDA    ($C5),Y 
       STA    $C7     
       LDA    ($BF),Y 
       STA    $C8     
       LDA    ($CA),Y 
       STA    WSYNC   
       STA    COLUP1  
       LDA    $C7     
       STA    GRP1    
       LDA    LFC55,Y 
       STA    COLUP0  
       LDA    $C8     
       STA    GRP0    
       DEX            
       DEY            
       BPL    LF8C3   
       LDA    CXPPMM  
       BPL    LF8F0   
       LDA    $F2     
       BMI    LF8F0   
       LDA    #$04    
       STA    $F1     
       STA    $D7     
LF8F0: DEX            
       STA    WSYNC   
       STY    PF0     
       INY            
       STY    GRP0    
       STY    GRP1    
LF8FA: BEQ    LF905   
       DEX            
       BEQ    LF902   
       JMP    LF69F   
LF902: JMP    LF045   
LF905: LDA    $B7     
       STA    COLUPF  
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
LF911: STA    CXCLR   
       JMP    LFA2B   
LF916: LDY    #$1A    
       NOP            
       NOP            
       LDA    $BC     
       STA    COLUP0  
       LDA    $D4     
       CMP    $E4     
       BNE    LF932   
       LDA    $C3     
       CLC            
       ADC    $D5     
       STA    $C5     
       LDA    $C4     
       STA    $C6     
       JMP    LF93A   
LF932: LDA    #$30    
       STA    $C5     
       LDA    #$FD    
       STA    $C6     
LF93A: EOR    ($FC,X) 
       EOR    ($FC,X) 
       LDA    #$00    
       STA    PF0     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $FB     
       STA    COLUPF  
       LDA    ($9A),Y 
       STA    PF1     
       LDA    ($9C),Y 
       STA    PF2     
       DEY            
LF953: STA    WSYNC   
       LDA    ($B3),Y 
       STA    GRP0    
       LDA    ($C5),Y 
       STA    GRP1    
       LDA    ($CA),Y 
       STA    COLUP1  
       LDA    ($9C),Y 
       STA    PF2     
       LDA    ($9A),Y 
       STA    PF1     
       LDA    $FB     
       STA    COLUPF  
       NOP            
       DEX            
       DEY            
       CPY    #$0A    
       BNE    LF953   
       LDA    CXPPMM  
       BPL    LF996   
       LDY    $D4     
       LDA.wy $00DD,Y 
       BEQ    LF994   
       CMP    #$0B    
       BCS    LF994   
       LDA    $DD     
       BEQ    LF989   
       STA    $ED     
LF989: LDX    #$FF    
       STX    $DD     
       LDY    $D4     
       INX            
       STX    $DD,Y   
       STA    CXCLR   
LF994: LDY    #$0A    
LF996: TXS            
       LDA    ($9A),Y 
       STA    $C7     
       LDA    ($C5),Y 
       TAX            
       LDA    LFE5F,Y 
       STA    WSYNC   
       STA    COLUP0  
       LDA    ($CA),Y 
       STA    COLUP1  
       STX    GRP1    
       LDA    ($B9),Y 
       STA    GRP0    
       LDA    $C7     
       STA    PF1     
       LDA    ($9C),Y 
       STA    PF2     
       CPY    #$0A    
       BNE    LF9BE   
       JMP    LFF85   
LF9BE: TSX            
       DEX            
       DEY            
       BPL    LF996   
       TXS            
       LDX    $E4     
       DEC    $E4     
       DEC    $E5     
       LDA    $B7     
       NOP            
       INY            
       STY    GRP0    
       STY    GRP1    
       STA    COLUPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDY    $AF     
       INY            
       INY            
       INY            
       INY            
       STY    $AF     
       LDA.wy $009A,Y 
       STA    $9A     
       LDA.wy $009C,Y 
       STA    $9C     
       LDA.wy $009B,Y 
       STA    $9B     
       LDA.wy $009D,Y 
       STA    $9D     
       CPX    #$01    
       BNE    LF9FE   
       STA    WSYNC   
LF9FE: CPX    $D4     
       BNE    LFA12   
       LDA    CXPPMM  
       BPL    LFA0E   
       LDA    $D9     
       BNE    LFA12   
       INC    $F1     
       BNE    LFA12   
LFA0E: LDA    #$00    
       STA    $F1     
LFA12: CPY    #$10    
       BCS    LFA1A   
       TSX            
       JMP    LF911   
LFA1A: STA    WSYNC   
       TSX            
       DEX            
       LDX    #$18    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUPF  
       JMP    LF69F   
LFA2B: LDY    $E4     
       LDA.wy $00DD,Y 
       TAY            
       LDA    LFED3,Y 
       STA    $B3     
       LDA    LFEE7,Y 
       STA    $B4     
       LDY    $E5     
       LDA    #$00    
       TXS            
       STA    NUSIZ0  
       LDA.wy $008F,Y 
       STA    HMP0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
       LDA.wy $008F,Y 
       NOP            
       NOP            
       NOP            
LFA52: DEX            
       BNE    LFA52   
       STA    RESP0   
       STA    WSYNC   
       TSX            
       JMP    LF916   
LFA5D: LDX    #$04    
LFA5F: STX    $CE     
       JMP    LFDC7   
LFA64: LDX    $CE     
       SEC            
       LDA    $99     
       BPL    LFA99   
       LDA    $B1     
       BPL    LFA7F   
       LDA    #$3E    
       STA.wy $009A,Y 
       LDA    #$FF    
       STA.wy $009B,Y 
       LDA    #$11    
       STA    $CF,X   
       BCS    LFA8D   
LFA7F: LDA    #$59    
       STA.wy $009A,Y 
       LDA    #$FF    
       STA.wy $009B,Y 
       LDA    #$21    
       STA    $CF,X   
LFA8D: LDA    #$30    
       STA.wy $009C,Y 
       LDA    #$FD    
       STA.wy $009D,Y 
       BCS    LFAC5   
LFA99: LDA    $B1     
       BPL    LFAAD   
       LDA    #$3E    
       STA.wy $009C,Y 
       LDA    #$FF    
       STA.wy $009D,Y 
       LDA    #$41    
       STA    $CF,X   
       BCS    LFABB   
LFAAD: LDA    #$59    
       STA.wy $009C,Y 
       LDA    #$FF    
       STA.wy $009D,Y 
       LDA    #$31    
       STA    $CF,X   
LFABB: LDA    #$30    
       STA.wy $009A,Y 
       LDA    #$FD    
       STA.wy $009B,Y 
LFAC5: INY            
       INY            
       INY            
       DEX            
       INY            
       CPY    #$10    
       BNE    LFA5F   
       LDY    #$03    
LFAD0: LDA.wy $009A,Y 
       STA.wy $00AA,Y 
       DEY            
       BPL    LFAD0   
       RTS            

LFADA: .byte $00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$04,$05,$04,$00,$00,$02
       .byte $01,$04,$00,$00,$05,$07,$04,$00,$00,$03,$05,$04,$00,$00,$02,$05
       .byte $06,$00,$05,$02,$03,$06,$00,$00,$00,$00,$1A,$1A,$1A,$1A,$C7,$C7
       .byte $C7,$C7,$C7,$C7,$C7,$C7,$1C,$1C,$1C,$8F,$8F,$00,$00,$00,$00,$00
       .byte $00,$00,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$C7,$C7,$C7
       .byte $C7,$C7,$C7,$C7,$C7,$1C,$1C,$1C,$8F,$8F,$00,$00,$00,$00,$1A,$1A
       .byte $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$C7,$C7,$C7,$C7
       .byte $C7,$C7,$C7,$C7,$1C,$1C,$1C,$8F,$8F,$8F,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$3E,$3E,$38,$7C,$FE,$F0,$E0,$E6,$E6,$E6,$7C
       .byte $38,$3C,$38,$7C,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$1A,$1A,$1A,$1A,$1A,$1A,$C7,$C7
       .byte $C7,$C7,$C7,$C7,$C7,$1C,$1C,$1C,$8F,$8F,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$C7,$C7
       .byte $C7,$C7,$C7,$C7,$C7,$1C,$1C,$8F,$8F,$8F,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$C7,$C7
       .byte $C7,$C7,$C7,$C7,$C7,$C7,$1C,$1C,$8F,$8F,$00,$00,$07,$07,$74,$74
       .byte $44,$44,$7C,$FE,$F0,$E0,$E6,$E6,$7C,$38,$3C,$38,$7C,$38,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$70,$70,$47,$47,$44,$44,$7C,$FE
       .byte $F0,$E0,$E6,$E6,$7C,$38,$3C,$38,$7C,$38,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$3E,$3E,$38,$38,$38,$38,$7C,$FE,$F0,$E0,$E6,$E6
       .byte $7C,$38,$3C,$38,$7C,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$70
       .byte $70,$10,$17,$17,$14,$3E,$7F,$7F,$7F,$7F,$7F,$3E,$1C,$1C,$1C,$3E
       .byte $1C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFC55: .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$26,$26,$26,$26,$26,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$0F,$0F,$0F,$0F,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$36,$36,$1C,$7F,$49,$1C,$1C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$E6,$49,$49,$49,$49,$C9,$46,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3E,$36,$2A,$36,$1C,$08,$1C,$1C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$38,$7C,$C6,$82,$00,$6C,$6C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$8C,$DE,$FF,$7E,$FB,$DE,$8C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$7E,$D5,$AB,$7E,$38,$7F,$68,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$C0,$C0,$FF,$FF,$C0,$40,$20,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$08,$08,$1C,$3E,$3E,$2E,$3E,$1C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$FC,$FC,$FC,$FE,$4B,$48,$30,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$1C,$08,$6B,$7F,$7F,$3E,$1C,$08,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$08,$1C,$3E,$7F,$7F,$7F,$36,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$72,$45,$45,$25,$15,$15
       .byte $62,$00,$00,$00,$00,$00,$00,$00,$00,$00,$62,$15,$15,$65,$15,$15
       .byte $62,$00,$00,$00,$00,$00,$00,$00,$00,$00,$22,$25,$25,$F5,$A5,$A5
       .byte $A2,$00,$00,$00,$00,$00,$00,$00,$00,$00,$62,$15,$15,$15,$65,$45
       .byte $72,$00,$00,$00,$00,$00,$00,$00,$00,$00,$62,$95,$95,$E5,$85,$85
       .byte $62,$00,$00,$00,$00,$00,$00,$00,$00,$00,$42,$45,$45,$25,$15,$15
       .byte $72,$00,$00,$00,$00,$00,$00,$00,$00,$00,$22,$55,$55,$25,$55,$55
       .byte $22,$00,$00,$00,$00,$00,$00,$00,$00,$00,$22,$55,$15,$35,$55,$55
       .byte $22,$00
LFDC7: LDA    $99     
       ROR            
       LDA    $B1     
       ROR            
       EOR    $99     
       LDX    $B1     
       STA    $B1     
       STX    $99     
       JMP    LFA64   
LFDD8: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90
LFDE7: .byte $00,$E0,$0E,$EE
LFDEB: .byte $00,$05,$06,$07,$08
LFDF0: .byte $35,$31
LFDF2: .byte $9E,$BA,$B0,$A0,$90,$00,$E0,$0E,$EE,$00,$05,$06,$07,$08,$3E,$63
       .byte $63,$63,$63,$63,$63,$3E,$1E,$0C,$0C,$0C,$0C,$0C,$1C,$0C,$7F,$60
       .byte $60,$3E,$03,$03,$43,$3E,$3E,$43,$03,$03,$1E,$03,$43,$3E,$06,$06
       .byte $06,$7F,$26,$16,$0E,$06,$3E,$43,$03,$03,$7E,$60,$60,$7F,$3E,$63
       .byte $63,$63,$7E,$60,$60,$3E,$30,$30,$10,$08,$04,$02,$41,$7F,$3E,$63
       .byte $63,$63,$3E,$63,$63,$3E,$3E,$43,$03,$3F,$63,$63,$63,$3E,$07,$07
       .byte $E4,$E4,$24,$FF,$DB,$DB,$7E,$3C,$00,$00,$00,$00,$00
LFE5F: .byte $0F,$0F,$0F,$0F,$0F,$98,$98,$98,$98,$98,$98,$00,$00,$E0,$E0,$27
       .byte $27,$24,$FF,$DB,$DB,$7E,$3C,$00,$00,$00,$00,$00,$07,$07,$E4,$E4
       .byte $24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24
       .byte $24,$FF,$DB,$DB,$7E,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $02,$A7,$AD,$FD,$07,$02,$00,$00,$E0,$E0,$27,$27,$24,$24,$24,$24
       .byte $24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$24,$FF,$DB,$DB
       .byte $7E,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$A7,$AD,$FD
       .byte $07,$02,$00,$00
LFED3: .byte $30,$15,$B5,$C5,$95,$E5,$F5,$05,$A5,$D5,$75,$85,$3C,$4C,$5C,$6C
       .byte $7C,$8C,$9C,$AC
LFEE7: .byte $FD,$FD,$FC,$FC,$FC,$FC,$FC,$FD,$FC,$FC,$FC,$FC,$FD,$FD,$FD,$FD
       .byte $FD,$FD,$FD,$FD
LFEFB: .byte $01,$00,$FF,$01,$FF,$52,$05,$1F,$48,$65,$46,$78,$23,$32,$4A
LFF0A: .byte $00,$08,$00
LFF0D: .byte $00,$00,$EE,$EE
LFF11: .byte $5A,$57,$54,$54,$54,$57
LFF17: .byte $00,$1C,$38,$38,$38,$1C
LFF1D: .byte $7C,$7D,$7E,$7F,$80,$81,$82,$83,$84,$85,$8B
LFF28: .byte $A8
LFF29: .byte $A9,$AA,$AB,$AC,$AD,$AE,$AF,$B0,$B1,$B7
LFF33: .byte $56
LFF34: .byte $57,$58,$59,$5A,$5B,$5C,$5D,$5E,$5F,$65,$90,$90,$90,$90,$90,$90
       .byte $90,$F0,$F0,$90,$90,$90,$F0,$F0,$90,$90,$90,$90,$90,$90,$F0,$F0
       .byte $90,$90,$90,$90,$90,$09,$09,$09,$09,$09,$09,$09,$0F,$0F,$09,$09
       .byte $09,$0F,$0F,$09,$09,$09,$09,$09,$09,$0F,$0F,$09,$09,$09,$09,$09
LFF74: .byte $07,$0F,$17,$1F,$27,$2F,$37,$3F,$47
LFF7D: .byte $94,$85,$75,$75,$94,$8A,$94,$7B
LFF85: LDY    $EF     
       LDA    LFFF1,Y 
       STA    $B3     
       LDA    #$FA    
       STA    $B4     
       LDY    $E4     
       LDA    ($B3),Y 
       STA    NUSIZ0  
       LDA.wy $008F,Y 
       STA    HMP0    
       AND    #$0F    
       STA    $E6     
       STA    WSYNC   
       LDX    $E6     
       STA    CXCLR   
       LDA.wy $008F,Y 
       NOP            
       NOP            
LFFAA: DEX            
       BNE    LFFAA   
       NOP            
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$0A    
       JMP    LF9BE   
LFFB9: .byte $84,$84,$84,$F7,$84,$84,$F3,$00
LFFC1: .byte $B8,$84,$84,$98,$A0,$A0,$1D,$00
LFFC9: .byte $40,$40,$40,$40,$40,$40,$F0,$00
LFFD1: .byte $1E,$10,$10,$1E,$10,$10,$1E,$00
LFFD9: .byte $E7,$94,$94,$94,$94,$94,$E7,$00
LFFE1: .byte $2F,$A8,$A8,$AF,$A8,$A8,$2F,$00
LFFE9: LDA    $B7     
       CLC            
       ADC    #$10    
       STA    $B7     
       RTS            

LFFF1: .byte $DA,$DD,$E2,$E7,$EC,$F1,$F6,$FB,$FB,$00,$00,$00,$F0,$00,$F0
