; Disassembly of roms/Fantastic Voyage.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Fantastic Voyage.bin
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
PF0     =  $0D
PF1     =  $0E
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
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP1FB  =  $33
CXM0FB  =  $34
CXM1FB  =  $35
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM1T   =  $0294
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDA    #$FF    
       STA    TIM1T   
       STA    WSYNC   
       LDY    INTIM   
       LDA    #$00    
       TAX            
LF00F: STA    VSYNC,X 
       INX            
       BNE    LF00F   
       DEX            
       TXS            
       LDA    #$80    
       STA    $D9     
       STX    $C4     
       STX    $C6     
       STX    $C8     
       STX    $CA     
       STX    $CC     
       STX    $CE     
       LDA    #$01    
       STA    CTRLPF  
       STA    $DA     
       STA    $EF     
       STA    $A6     
       STY    $FE     
       INY            
       TYA            
       ROL            
       STA    $FF     
       DEX            
       STX    $A4     
       STX    $99     
       DEX            
       STX    $AA     
       LDA    #$30    
       STA    PF0     
       LDA    SWCHB   
       AND    #$08    
       STA    $D8     
LF04A: LDX    #$2A    
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STX    TIM8T   
       LDA    $D9     
       BEQ    LF06B   
       LDA    $E7     
       AND    #$7F    
       CMP    #$7F    
       BNE    LF067   
       INC    $DB     
       NOP            
       NOP            
LF067: LDA    $DA     
       STA    $C0     
LF06B: LDX    #$02    
       LDY    #$08    
LF06F: LDA    $C0,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00C3,Y 
       LDA    $C0,X   
       AND    #$F0    
       LSR            
       STA.wy $00C5,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LF06F   
       LDX    #$0A    
       LDY    #$50    
LF08C: LDA    $C3,X   
       BNE    LF096   
       STY    $C3,X   
       DEX            
       DEX            
       BPL    LF08C   
LF096: LDX    #$24    
LF098: LDA    INTIM   
       BNE    LF098   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       LDA    SWCHB   
       AND    #$08    
       CMP    $D8     
       BNE    LF0B9   
       LDA    $DD     
       BEQ    LF0CC   
       LDA    #$00    
       STA    $DD     
       STA    $DB     
       BEQ    LF0CC   
LF0B9: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       INC    $FF     
       LDA    $FF     
       AND    #$F8    
       ORA    #$01    
       STA    $DD     
       JMP    LF685   
LF0CC: LDA    $D9     
       BPL    LF0D6   
       LDA    #$08    
       STA    $D9     
       BNE    LF0F3   
LF0D6: LDA    SWCHB   
       LSR            
       BCC    LF0EB   
       LDA    $D9     
       ORA    $E8     
       BEQ    LF0E8   
       BMI    LF0E8   
       LDA    INPT4   
       BPL    LF0EB   
LF0E8: JMP    LF134   
LF0EB: LDA    #$00    
       STA    $D9     
       LDA    #$4F    
       STA    $F8     
LF0F3: LDA    #$33    
       STA    $B5     
       LDA    #$D3    
       STA    $AB     
       LDA    #$08    
       STA    $FD     
       LDA    #$38    
       STA    $FC     
       LDA    #$58    
       STA    $A5     
       LDA    #$01    
       STA    $A6     
       STA    $A8     
       LDX    #$07    
LF10F: LDA    #$00    
       STA    $9A,X   
       STA    $80,X   
       DEX            
       BPL    LF10F   
       STA    $A2     
       LDX    #$13    
LF11C: STA    $DB,X   
       DEX            
       BPL    LF11C   
       STA    $C0     
       STA    $C1     
       STA    $C2     
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$1F    
       STA    $B6     
       STA    $AD     
       LSR            
       STA    $B7     
LF134: LDA    SWCHB   
       LSR            
       LSR            
       BCC    LF145   
       LDA    $D9     
       BEQ    LF16C   
       LDA    #$04    
       STA    $D9     
       BNE    LF16C   
LF145: LDA    $D9     
       BNE    LF14F   
       LDA    #$80    
       STA    $D9     
       BMI    LF16C   
LF14F: CMP    #$04    
       BNE    LF159   
       LDA    #$80    
       STA    $D9     
       BMI    LF160   
LF159: CLC            
       ADC    #$02    
       STA    $D9     
       BPL    LF16C   
LF160: INC    $DA     
       LDA    $DA     
       CMP    #$07    
       BNE    LF16C   
       LDA    #$01    
       STA    $DA     
LF16C: LDA    $E8     
       BNE    LF179   
       LDA    $F9     
       CLC            
       ADC    $E6     
       STA    $F9     
       BCS    LF17C   
LF179: JMP    LF3D9   
LF17C: LDA    $E2     
       CMP    #$04    
       BNE    LF18E   
       DEC    $B5     
       LDA    $B5     
       CMP    #$18    
       BCS    LF18E   
       LDA    #$18    
       STA    $B5     
LF18E: INC    $FD     
       LDA    $FD     
       CMP    #$10    
       BCS    LF199   
       JMP    LF3B3   
LF199: LDA    $B6     
       SEC            
       SBC    #$10    
       STA    $B6     
       LDA    $E4     
       CMP    #$E0    
       BCS    LF1C1   
       LDA    $DA     
       LSR            
       BCS    LF1B5   
       LDA    $E2     
       CMP    #$05    
       BEQ    LF1B5   
       INC    $E4     
       BNE    LF1C8   
LF1B5: LDA    $E2     
       CMP    #$0F    
       BNE    LF1C1   
       INC    $E4     
       INC    $E4     
       BNE    LF1C8   
LF1C1: LDA    $E4     
       CLC            
       ADC    #$04    
       STA    $E4     
LF1C8: BNE    LF1FF   
       INC    $E2     
       LDY    $E2     
       LDX    $E9     
       BNE    LF1D8   
       CPY    #$02    
       BNE    LF1E0   
       INY            
       INY            
LF1D8: DEX            
       BNE    LF1E0   
       CPY    #$03    
       BNE    LF1E0   
       INY            
LF1E0: STY    $E2     
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    #$0F    
       STA    $F8     
       LDA    $E3     
       AND    #$0F    
       STA    $DC     
       LDA    $E2     
       CMP    #$06    
       BNE    LF1FF   
       LDA    #$00    
       STA    $E2     
       STA    $E0     
       INC    $E9     
LF1FF: LDA    $80     
       STA    $ED     
       LDA    $F0     
       STA    $EF     
       LDY    $A2     
       LDA    $9A     
       STA    $A2     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFC0,X 
       BEQ    LF21A   
       STA    $DE     
LF21A: CLC            
       ADC    $E5     
       STA    $E5     
       BCC    LF233   
       LDA    #$00    
       STA    $E5     
       LDA    $E3     
       CMP    #$10    
       BEQ    LF233   
       BCC    LF231   
       DEC    $E3     
       BPL    LF233   
LF231: INC    $E3     
LF233: LDX    #$00    
LF235: LDA    $81,X   
       STA    $80,X   
       LDA    $9B,X   
       STA    $9A,X   
       LDA    $F1,X   
       STA    $F0,X   
       LDA    $B9,X   
       STA    $B8,X   
       INX            
       CPX    #$08    
       BCC    LF235   
       LDA    $FE     
       AND    #$07    
       TAX            
       LDA    LFEB0,X 
       STA    $87     
       LDA    $FC     
       CMP    #$18    
       BCS    LF26A   
       LDA    #$10    
       STA    $87     
       LDA    $A1     
       CMP    #$40    
       BNE    LF282   
       LDA    #$00    
       STA    $A1     
       BEQ    LF282   
LF26A: CMP    #$58    
       BCC    LF282   
       LDA    $87     
       CMP    #$10    
       BNE    LF282   
       LDA    #$F0    
       STA    $87     
       LDA    $A1     
       CMP    #$70    
       BNE    LF282   
       LDA    #$00    
       STA    $87     
LF282: LDA    $FE     
       LSR            
       ROR    $AC     
       LDA    $E0     
       BEQ    LF2A0   
       LDA    $E2     
       CMP    #$05    
       BEQ    LF2A0   
       LDA    #$00    
       STA    $E0     
       LDA    #$50    
       STA    $A1     
       LDA    #$00    
       STA    $BF     
       JMP    LF30A   
LF2A0: LDA    $A6     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDY    #$02    
LF2A9: LDA    $9A,X   
       CMP    #$40    
       BNE    LF2B7   
       LDA    $B8,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $B8,X   
LF2B7: INX            
       CPX    #$08    
       BEQ    LF2BF   
       DEY            
       BPL    LF2A9   
LF2BF: LDX    $E2     
       CPX    #$03    
       BNE    LF2D5   
       LDA    $FE     
       AND    #$03    
       TAX            
       LDA    LFDD8,X 
       TAX            
       BNE    LF2D5   
       LDA    $87     
       BEQ    LF2D5   
       INX            
LF2D5: LDA    LFDC1,X 
       CMP    #$40    
       BNE    LF2E2   
       LDY    $87     
       BEQ    LF2E2   
       LDA    #$00    
LF2E2: STA    $A1     
       LDA    LFDC8,X 
       STA    $BF     
       LDA    $E2     
       BEQ    LF30A   
       LDA    $DA     
       CMP    #$03    
       BCC    LF2F7   
       CMP    #$05    
       BCC    LF30A   
LF2F7: LDX    $E9     
       CPX    #$08    
       BCC    LF2FF   
       LDX    #$07    
LF2FF: LDA    LFFE8,X 
       CMP    $FE     
       BCS    LF30A   
       LDA    #$00    
       STA    $A1     
LF30A: LDA    $E2     
       CMP    #$05    
       BNE    LF340   
       LDA    $E4     
       CMP    #$38    
       BNE    LF328   
       LDA    #$00    
       STA    $87     
       STA    $A1     
       LDA    $FC     
       CMP    #$50    
       BCC    LF340   
       LDA    #$F0    
       STA    $87     
       BNE    LF340   
LF328: CMP    #$3C    
       BNE    LF338   
       LDA    #$70    
       STA    $A1     
       LDA    #$FF    
       STA    $BF     
       LDA    #$10    
       STA    $87     
LF338: CMP    #$40    
       BCC    LF340   
       LDA    #$00    
       STA    $A1     
LF340: LDA    $A1     
       CMP    #$40    
       BNE    LF351   
       LDA    $FC     
       SEC            
       SBC    #$0C    
       BCS    LF356   
       LDA    #$00    
       BEQ    LF356   
LF351: LDA    $FC     
       CLC            
       ADC    #$04    
LF356: LDX    #$00    
LF358: CMP    #$0F    
       BCC    LF362   
       SEC            
       SBC    #$0F    
       INX            
       BNE    LF358   
LF362: STX    $F7     
       TAX            
       LDA    LFEC0,X 
       ORA    $F7     
       STA    $F7     
       LDA    #$00    
       STA    $FD     
       LDA    $E2     
       CMP    #$05    
       BEQ    LF3A1   
       LDA    $EB     
       LSR            
       BCC    LF381   
       LDA    $EA     
       CMP    #$B0    
       BCS    LF387   
LF381: LDA    $FE     
       CMP    #$FB    
       BCC    LF3A1   
LF387: LDA    $A1     
       CMP    #$70    
       BEQ    LF3A1   
       LDA    $A0     
       CMP    #$80    
       BEQ    LF3A1   
       LDA    $9F     
       CMP    #$80    
       BEQ    LF3A1   
       LDA    #$80    
       STA    $A1     
       LDA    #$01    
       STA    $BF     
LF3A1: LDA    $E4     
       CMP    #$E0    
       BCC    LF3AB   
       LDA    #$00    
       STA    $A1     
LF3AB: LDA    $EE     
       BEQ    LF3B3   
       LDA    #$00    
       STA    $A1     
LF3B3: LDA    $EE     
       BEQ    LF3CD   
       INC    $B5     
       LDX    $E9     
       CPX    #$08    
       BCC    LF3C1   
       LDX    #$07    
LF3C1: LDA    $B5     
       CMP    LFFE0,X 
       BCC    LF3CD   
       LDA    LFFE0,X 
       STA    $B5     
LF3CD: LDA    $87     
       BEQ    LF3D9   
       BPL    LF3D7   
       DEC    $FC     
       DEC    $FC     
LF3D7: INC    $FC     
LF3D9: LDA    $FC     
       LDX    #$01    
LF3DD: CMP    #$0F    
       BCC    LF3E7   
       SEC            
       SBC    #$0F    
       INX            
       BNE    LF3DD   
LF3E7: STX    $FB     
       TAX            
       LDA    LFEC0,X 
       ORA    $FB     
       STA    $FB     
       LDA    $FC     
       CLC            
       ADC    $B5     
       LDX    #$01    
LF3F8: CMP    #$0F    
       BCC    LF402   
       SEC            
       SBC    #$0F    
       INX            
       BNE    LF3F8   
LF402: STX    $B4     
       TAX            
       LDA    LFEC0,X 
       ORA    $B4     
       STA    $B4     
       LDX    #$10    
       LDA    #$00    
LF410: STA    $88,X   
       DEX            
       BPL    LF410   
       LDA    $A6     
       CLC            
       ADC    $FD     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $A6     
       CLC            
       ADC    $FD     
       AND    #$0F    
       TAY            
       LDA    LFED0,Y 
       LDY    $EC     
       BEQ    LF43A   
       STA    $FA     
       TYA            
       LSR            
       LSR            
       TAY            
       LDA    LFFF8,Y 
       CLC            
       ADC    $FA     
LF43A: STA    $88,X   
       EOR    #$10    
       INX            
       STA    $88,X   
       LDX    #$01    
       LDA    $A5     
LF445: CMP    #$0F    
       BCC    LF44F   
       SEC            
       SBC    #$0F    
       INX            
       BNE    LF445   
LF44F: STX    $B3     
       TAX            
       LDA    LFEC0,X 
       ORA    $B3     
       STA    $B3     
       LDA    $A8     
       BEQ    LF483   
       CMP    #$01    
       BEQ    LF483   
       LDA    $A7     
       CLC            
       ADC    $FD     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $A7     
       CLC            
       ADC    $FD     
       AND    #$0F    
       TAY            
       LDA    LFED0,Y 
       ORA    #$60    
       STA    $90,X   
       EOR    #$10    
       INX            
       CPX    #$09    
       BEQ    LF483   
       STA    $90,X   
LF483: LDA    #$00    
       STA    HMBL    
       LDA    $E1     
       BEQ    LF49D   
       STA    AUDC1   
       LSR            
       LSR            
       STA    AUDV1   
       LDA    #$0D    
       STA    AUDF1   
       DEC    $E1     
       BNE    LF49D   
       LDA    #$00    
       STA    $E1     
LF49D: LDA    $A8     
       BEQ    LF4BC   
       LSR            
       ASL            
       ASL            
       EOR    #$0C    
       STA    AUDF0   
       LDA    $A8     
       LSR            
       LSR            
       AND    #$07    
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       DEC    $A8     
       BNE    LF4BC   
       LDA    #$00    
       STA    AUDV0   
LF4BC: LDA    $E8     
       BEQ    LF4C2   
       BPL    LF4D9   
LF4C2: LDA    $E3     
       CMP    #$10    
       BCC    LF4D9   
       SEC            
       SBC    $AD     
       CMP    #$04    
       BCS    LF4D9   
       LDA    #$0D    
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       BNE    LF4E1   
LF4D9: LDA    $E1     
       BNE    LF4E1   
       LDA    #$00    
       STA    AUDV1   
LF4E1: LDA    $EC     
       BEQ    LF4F9   
       ORA    #$0C    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$07    
       STA    AUDC0   
       DEC    $EC     
       BNE    LF4F9   
       LDA    #$00    
       STA    AUDV0   
LF4F9: LDA    SWCHB   
       LSR            
       BCC    LF55E   
       LDA    $F8     
       BEQ    LF55E   
       LSR            
       TAX            
       LDA    LFCC8,X 
       STA    AUDF0   
       SEC            
       SBC    #$04    
       STA    AUDF1   
       LDA    #$0D    
       STA    AUDC0   
       LDA    #$07    
       STA    AUDC1   
       LDA    $F8     
       STA    AUDV0   
       EOR    #$FF    
       STA    AUDV1   
       LDA    $E7     
       AND    #$03    
       CMP    #$03    
       BNE    LF55E   
       LDY    $E2     
       BEQ    LF54C   
       LDA    $D9     
       ORA    $E8     
       BNE    LF54C   
       LDX    $DC     
LF533: SED            
       LDA    $C0     
       CLC            
       ADC    LFDF0,X 
       STA    $C0     
       LDA    $C1     
       ADC    #$00    
       STA    $C1     
       LDA    $C2     
       ADC    #$00    
       STA    $C2     
       CLD            
       DEY            
       BNE    LF533   
LF54C: DEC    $F8     
       LDA    $F8     
       AND    #$0F    
       CMP    #$0F    
       BNE    LF55E   
       LDA    #$00    
       STA    $F8     
       STA    AUDV1   
       STA    AUDV0   
LF55E: LDA    $EE     
       BEQ    LF5CE   
       BPL    LF57A   
       LSR            
       STA    AUDF0   
       LSR            
       STA    AUDF1   
       LSR            
       STA    AUDV0   
       LSR            
       STA    AUDV1   
       LDA    #$07    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDC1   
       BNE    LF5C0   
LF57A: LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFCF8,X 
       STA    AUDF0   
       ASL            
       STA    AUDF1   
       LDA    #$0D    
       STA    AUDC0   
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV0   
       STA    AUDV1   
       LDA    $EE     
       AND    #$0F    
       BNE    LF5C0   
       LDA    $D9     
       ORA    $E8     
       BNE    LF5C0   
       LDX    $DC     
       LDY    $E9     
       CPY    #$10    
       BCC    LF5A9   
       LDY    #$0F    
LF5A9: LDA    LFDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       SED            
       CLC            
       ADC    $C1     
       STA    $C1     
       LDA    $C2     
       ADC    #$00    
       STA    $C2     
       CLD            
       DEY            
       BPL    LF5A9   
LF5C0: DEC    $EE     
       BNE    LF5CE   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$DC    
       STA    $E4     
LF5CE: LDA    $E7     
       LSR            
       BCC    LF5EA   
       LDA    $E8     
       BEQ    LF5EA   
       BPL    LF5DE   
       DEC    $E8     
       JMP    LF5EA   
LF5DE: DEC    $E8     
       LDA    $E8     
       AND    #$1F    
       ORA    #$10    
       STA    $E8     
       STA    $DB     
LF5EA: LDA    $E7     
       LSR            
       BCC    LF610   
       LDA    $AB     
       SEC            
       SBC    #$10    
       STA    $AB     
       AND    #$F0    
       CMP    #$80    
       BNE    LF606   
       INC    $AB     
       LDA    $AB     
       AND    #$0F    
       ORA    #$70    
       STA    $AB     
LF606: LDA    $AB     
       CMP    #$B7    
       BNE    LF610   
       LDA    #$53    
       STA    $AB     
LF610: LDA    $AD     
       CMP    $E3     
       BCC    LF61D   
       BEQ    LF622   
       DEC    $AD     
       JMP    LF629   
LF61D: INC    $AD     
       JMP    LF629   
LF622: LDA    #$20    
       SEC            
       SBC    $E3     
       STA    $E3     
LF629: LDA    $E7     
       AND    #$07    
       CMP    #$07    
       BNE    LF64D   
       LDX    #$08    
LF633: LDA    $9A,X   
       CMP    #$C1    
       BCS    LF64A   
       CMP    #$90    
       BCC    LF64A   
       BNE    LF645   
       LDA    #$00    
       STA    $9A,X   
       BEQ    LF64A   
LF645: SEC            
       SBC    #$10    
       STA    $9A,X   
LF64A: DEX            
       BPL    LF633   
LF64D: LDA    $DE     
       BEQ    LF66D   
       DEC    $DE     
       CMP    #$0F    
       BNE    LF66D   
       LDA    $E3     
       CMP    #$10    
       BEQ    LF66D   
       BCS    LF666   
       LDA    #$20    
       SEC            
       SBC    $E3     
       STA    $E3     
LF666: LDA    $E3     
       SEC            
       SBC    #$02    
       STA    $AD     
LF66D: LDA    $E3     
       CMP    #$10    
       BNE    LF685   
       LDA    $D9     
       BEQ    LF67D   
       LDA    #$80    
       STA    $D9     
       BMI    LF685   
LF67D: LDA    $E8     
       BNE    LF685   
       LDA    #$FF    
       STA    $E8     
LF685: LDA    INTIM   
       BNE    LF685   
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$04    
LF690: DEX            
       BNE    LF690   
       LDA    #$10    
       STA    HMP1    
       NOP            
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       LDA    $DB     
       EOR    $DD     
       STA    $DB     
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$9C    
       EOR    $DB     
       ORA    $E1     
       LDY    $F8     
       BEQ    LF6C1   
       LDA    #$3C    
LF6C1: LDY    $EE     
       BEQ    LF6C9   
       BMI    LF6C9   
       LDA    #$6C    
LF6C9: STA    COLUP0  
       STA    COLUP1  
       LDA    #$07    
       STA    $CF     
       STA    VDELP0  
       STA    VDELP1  
LF6D5: LDY    $CF     
       LDA    ($C3),Y 
       STA    $FA     
       LDA    ($C5),Y 
       STA    WSYNC   
       TAX            
       LDA    ($CD),Y 
       STA    GRP0    
       LDA    ($CB),Y 
       STA    GRP1    
       BIT    $FF     
       LDA    ($C9),Y 
       STA    GRP0    
       LDA    ($C7),Y 
       LDY    $FA     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $CF     
       BPL    LF6D5   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $F7     
       LDY    $FD     
       BNE    LF712   
       LDA    $F6     
LF712: STA    WSYNC   
       STA    HMP1    
       AND    #$0F    
       TAX            
       LDA    $B6     
       EOR    $DB     
       STA    $B6     
       STA    COLUP0  
       NOP            
LF722: DEX            
       BPL    LF722   
       STA    RESP1   
       STA    WSYNC   
       STA    COLUP1  
       LDA    $B3     
       STA    HMP0    
       BIT    $FF     
       AND    #$0F    
       TAX            
LF734: DEX            
       BNE    LF734   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    $FB     
       STA    HMM0    
       NOP            
       AND    #$0F    
       TAX            
       LDA    #$10    
       STA    NUSIZ1  
LF74B: DEX            
       BNE    LF74B   
       STA    RESM0   
       LDA    #$00    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       LDA    $B4     
       STA    HMM1    
       ROL    LF000,X 
       AND    #$0F    
       TAX            
LF762: DEX            
       BNE    LF762   
       STA    RESM1   
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A1     
       STA    $A9     
       LDA    #$00    
       STA    $A3     
       STA    WSYNC   
       LDA    #$FF    
       EOR    $DB     
       EOR    $DE     
       STA    COLUBK  
       STA    WSYNC   
       LDX    $E2     
       CPX    #$05    
       BNE    LF78B   
       LDA    #$15    
       STA    NUSIZ1  
LF78B: STA    WSYNC   
       LDA    LFDD0,X 
       EOR    $DB     
       ORA    $EC     
       EOR    $EE     
       STA    COLUBK  
       STA    WSYNC   
       LDX    #$07    
       LDA    $80,X   
       STA    HMM0    
       STA    HMM1    
       LDA    #$FF    
       STA    ENAM0   
       STA    ENAM1   
       LDY    $FD     
       BEQ    LF81C   
       CPY    #$01    
       BEQ    LF805   
       CPY    #$02    
       BEQ    LF7DB   
LF7B4: STA    WSYNC   
       STA    HMOVE   
       LDA    ($A9),Y 
       STA    GRP1    
       LDA    ($A3),Y 
       STA    GRP0    
       LDA    ($98),Y 
       STA    ENABL   
       DEY            
       CPY    #$03    
       BCS    LF7B4   
       LDA    CXP1FB  
       ASL            
       ASL            
       ROR    $AF     
       LDA    CXM0P   
       ORA    $B0     
       STA    $B0     
       LDA    CXM1P   
       ORA    $B1     
       STA    $B1     
LF7DB: STA    WSYNC   
       STA    HMOVE   
       LDA    ($A3),Y 
       STA    GRP0    
       LDA    ($98),Y 
       STA    ENABL   
       DEY            
       LDA    CXPPMM  
       ASL            
       ROR    $B2     
       LDA    CXM0P   
       AND    #$80    
       STA    $D0,X   
       LDA    CXM1P   
       AND    #$40    
       ORA    $D0,X   
       STA    $D0,X   
       LDA    CXM0FB  
       ORA    CXM1FB  
       ORA    $AE     
       STA    $AE     
       STA    CXCLR   
LF805: LDA    ($A3),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $EF,X   
       NOP            
       NOP            
       STA    HMP1    
       AND    #$0F    
       TAY            
LF816: DEY            
       BPL    LF816   
       STA    RESP1   
       INY            
LF81C: STA    WSYNC   
       STA    HMOVE   
       LDA    ($A3),Y 
       STA    GRP0    
       LDY    #$0F    
       DEX            
       BMI    LF84D   
       LDA    $89,X   
       STA    $A3     
       LDA    $91,X   
       STA    $98     
       LDA    $9A,X   
       STA    $A9     
       LDA    $80,X   
       STA    HMM0    
       STA    HMM1    
       LDA    #$00    
       STA    HMP1    
       LDA    $B6     
       CLC            
       ADC    #$10    
       STA    $B6     
       STA    COLUP0  
       STA    COLUP1  
       JMP    LF7B4   
LF84D: LDA    $ED     
       STA    HMM0    
       STA    HMM1    
       LDA    #$00    
       STA    HMP1    
       LDA    $A2     
       STA    $A9     
       LDA    $B6     
       CLC            
       ADC    #$10    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $88     
       STA    $A3     
       LDY    #$0F    
       LDA    ($A3),Y 
       STA    GRP0    
       LDA    ($A9),Y 
       STA    GRP1    
       LDA    #$10    
       SEC            
       SBC    $FD     
       TAX            
       LDA    #$00    
       STA    ENABL   
       DEY            
LF881: STA    WSYNC   
       STA    HMOVE   
       LDA    ($A9),Y 
       STA    GRP1    
       LDA    ($A3),Y 
       STA    GRP0    
       DEY            
       BPL    LF891   
       INY            
LF891: DEX            
       BNE    LF881   
       LDA    $E7     
       LSR            
       BCC    LF89E   
       LDA    $EA     
       JMP    LF8A0   
LF89E: LDA    $EB     
LF8A0: CMP    #$70    
       BCC    LF8AC   
       LDA    #$08    
       STA    REFP0   
       LDA    #$70    
       STA    HMP0    
LF8AC: STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    GRP1    
       STA    GRP0    
       LDA    #$FF    
       EOR    $DB     
       EOR    $DE     
       STA    COLUBK  
       STA.w  $0010   
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$10    
       STA    NUSIZ0  
       LDA    $DF     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $C3     
       BIT    $FF     
       BIT    $FF     
       NOP            
       STA    RESP1   
       STA    WSYNC   
       BIT    $FF     
       BIT    $FF     
       LDA    $AB     
       STA    HMM0    
       AND    #$0F    
       TAX            
LF8E8: DEX            
       BPL    LF8E8   
       STA    RESM0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$24    
       EOR    $DB     
       STA    COLUBK  
       LDA    #$9C    
       EOR    $DB     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$20    
       LDA    $AD     
       AND    #$7F    
       STA    $FA     
       LDA    $E7     
       LSR            
       BCC    LF911   
       LDA    $EA     
       JMP    LF913   
LF911: LDA    $EB     
LF913: LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFD0,X 
       TAX            
       LDA    #$10    
       STA    $CF     
       STA    WSYNC   
       STA    WSYNC   
LF924: STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       LDA    LFF50,X 
       STA    GRP0    
       LDA    LFE90,Y 
       STA    PF1     
       CPY    $FA     
       BNE    LF93C   
       LDA    #$FF    
       STA    ENAM0   
LF93C: DEX            
       DEC    $CF     
       BPL    LF943   
       LDX    #$00    
LF943: CPY    #$10    
       BCC    LF954   
       STY    $C6     
       TYA            
       AND    #$0F    
       LSR            
       TAY            
       LDA    ($C3),Y 
       STA    GRP1    
       LDY    $C6     
LF954: DEY            
       BPL    LF924   
       LDX    #$00    
       STX    ENAM0   
       STX    ENAM1   
       STX    GRP0    
       STX    GRP1    
       DEX            
       STX    $C6     
       LDX    #$28    
       STA    WSYNC   
       STX    TIM64T  
       LDA    #$00    
       STA    REFP0   
       STA    COLUBK  
       LDA    $DD     
       BEQ    LF978   
       JMP    LFCB5   
LF978: LDA    $FF     
       LSR            
       LDA    $FE     
       ROR            
       EOR    $FF     
       LDY    $FE     
       STA    $FE     
       STY    $FF     
       LDA    $A6     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFF0,X 
       STA    $E6     
       LDA    $AE     
       ORA    CXM0FB  
       ORA    CXM1FB  
       ASL            
       ASL            
       BCC    LF9A0   
       LDA    #$01    
       STA    $A8     
LF9A0: LDA    $AF     
       BNE    LF9A7   
       JMP    LFA94   
LF9A7: LDX    #$07    
LF9A9: LSR            
       BCS    LF9AF   
       DEX            
       BPL    LF9A9   
LF9AF: LDA    $9A,X   
       STA    $FA     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    #$01    
       STA    $A8     
       INC    $FF     
       LDA    $D9     
       ORA    $E8     
       BNE    LF9DB   
       SED            
       LDA    LFEE0,Y 
       CLC            
       ADC    $C0     
       STA    $C0     
       LDA    LFEF0,Y 
       ADC    $C1     
       STA    $C1     
       LDA    $C2     
       ADC    #$00    
       STA    $C2     
       CLD            
LF9DB: LDA    $FA     
       CMP    #$D0    
       BCC    LF9F1   
       DEC    $9A,X   
       DEC    $9A,X   
       LDA    $9A,X   
       CMP    #$DA    
       BNE    LFA35   
       LDA    #$00    
       STA    $9A,X   
       BEQ    LFA35   
LF9F1: CMP    #$40    
       BCC    LFA08   
       CMP    #$60    
       BEQ    LFA35   
       CMP    #$90    
       BCC    LFA00   
       JMP    LFA94   
LFA00: LDA    #$A0    
       STA    $9A,X   
       STA    $B8,X   
       BNE    LFA35   
LFA08: SEC            
       SBC    #$10    
       STA    $9A,X   
       BNE    LFA15   
       LDA    #$A0    
       STA    $9A,X   
       STA    $B8,X   
LFA15: LDA    #$0F    
       STA    $DE     
       LDA    #$40    
       CLC            
       ADC    $E5     
       STA    $E5     
       BCC    LFA35   
       LDA    #$00    
       STA    $E5     
       LDA    $E3     
       CMP    #$10    
       BEQ    LFA35   
       BCC    LFA33   
       DEC    $E3     
       JMP    LFA35   
LFA33: INC    $E3     
LFA35: LDA    #$30    
       STA    $E1     
       LDA    $FA     
       CMP    #$70    
       BNE    LFA7E   
       LDA    $B6     
       CLC            
       ADC    #$70    
       STA    $B6     
       DEC    $B7     
       BEQ    LFA50   
       LDA    #$70    
       STA    $9A,X   
       BNE    LFA94   
LFA50: LDA    #$0F    
       STA    $B7     
       LDA    #$FF    
       STA    $EE     
       SED            
       LDA    $DF     
       CLC            
       ADC    #$01    
       STA    $DF     
       CLD            
       LDA    #$B0    
       STA    $9A,X   
       LDA    $E3     
       CMP    #$10    
       BCS    LFA70   
       LDA    #$20    
       SEC            
       SBC    $E3     
LFA70: AND    #$0F    
       STA    $DC     
       LDA    #$00    
       STA    $EB     
       STA    $EA     
       STA    $E3     
       BEQ    LFA94   
LFA7E: CMP    #$80    
       BNE    LFA94   
       LDA    $E3     
       AND    #$0F    
       BEQ    LFA94   
       LDA    $E3     
       CMP    #$10    
       BCC    LFA92   
       INC    $E3     
       BNE    LFA94   
LFA92: DEC    $E3     
LFA94: LDA    $E8     
       BNE    LFAEB   
       LDA    $B2     
       BNE    LFAA4   
       LDA    CXPPMM  
       BPL    LFAEB   
       LDX    #$08    
       BNE    LFAAC   
LFAA4: LDX    #$07    
LFAA6: LSR            
       BCS    LFAAC   
       DEX            
       BPL    LFAA6   
LFAAC: LDA    $9A,X   
       CMP    #$90    
       BCC    LFAB6   
       CMP    #$C1    
       BCC    LFAEB   
LFAB6: LDA    #$0F    
       STA    $EC     
       LDA    $9A,X   
       CMP    #$70    
       BNE    LFACA   
       LDA    #$80    
       STA    $EC     
       LDA    #$10    
       STA    $E3     
       BNE    LFAEB   
LFACA: LDA    #$00    
       STA    $9A,X   
       LDA    $DA     
       CMP    #$05    
       BCC    LFADD   
       LDA    $E5     
       CLC            
       ADC    #$08    
       STA    $E5     
       BCC    LFAEB   
LFADD: LDA    $E3     
       CMP    #$10    
       BEQ    LFAEB   
       BCC    LFAE9   
       DEC    $E3     
       BPL    LFAEB   
LFAE9: INC    $E3     
LFAEB: LDA    $B0     
       ORA    CXM0P   
       ASL            
       ASL            
       BCC    LFB00   
       INC    $A5     
       STA    CXCLR   
       INC    $E0     
       LDA    #$08    
       STA    $DE     
       JMP    LFB7C   
LFB00: LDA    $B1     
       ORA    CXM1P   
       BPL    LFB13   
       DEC    $A5     
       INC    $E0     
       LDA    #$08    
       STA    $DE     
       STA    CXCLR   
       JMP    LFB7C   
LFB13: STA    CXCLR   
       LDA    $EC     
       ORA    $E8     
       BEQ    LFB1E   
       JMP    LFBC0   
LFB1E: LDA    $E7     
       LSR            
       BCC    LFB26   
       JMP    LFB7C   
LFB26: LDA    $D9     
       BEQ    LFB3B   
       LDA    $E7     
       EOR    $FE     
       AND    #$3F    
       STA    $FA     
       LDA    $E7     
       AND    #$C0    
       ORA    $FA     
       JMP    LFB3E   
LFB3B: LDA    SWCHA   
LFB3E: STA    $FA     
       AND    #$10    
       BNE    LFB50   
       INC    $A6     
       LDA    $A6     
       CMP    #$60    
       BCC    LFB50   
       LDA    #$5F    
       STA    $A6     
LFB50: LDA    $FA     
       AND    #$20    
       BNE    LFB60   
       DEC    $A6     
       DEC    $A6     
       BPL    LFB60   
       INC    $A6     
       INC    $A6     
LFB60: LDA    $FA     
       AND    #$40    
       BNE    LFB6C   
       DEC    $A5     
       BNE    LFB6C   
       INC    $A5     
LFB6C: LDA    $FA     
       BMI    LFB7C   
       INC    $A5     
       LDA    $A5     
       CMP    #$A0    
       BCC    LFB7C   
       LDA    #$9F    
       STA    $A5     
LFB7C: LDA    $D9     
       BEQ    LFB85   
       LDA    $FE     
       JMP    LFB87   
LFB85: LDA    INPT4   
LFB87: BMI    LFBC0   
       LDA    $A8     
       BNE    LFBC0   
       LDA    $B3     
       SEC            
       SBC    #$10    
       STA    $FA     
       AND    #$F0    
       CMP    #$80    
       BNE    LFBA5   
       LDA    $B3     
       CLC            
       ADC    #$01    
       AND    #$0F    
       ORA    #$70    
       STA    $FA     
LFBA5: LDA    $FA     
       STA    HMBL    
       STA    WSYNC   
       NOP            
       AND    #$0F    
       TAX            
       LDA    $A6     
       STA    $A7     
       LDA    #$FF    
       STA    $A8     
LFBB7: DEX            
       BNE    LFBB7   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
LFBC0: LDA    $A8     
       BEQ    LFBD2   
       INC    $A7     
       INC    $A7     
       INC    $A7     
       LDA    $A7     
       BPL    LFBD2   
       LDA    #$01    
       STA    $A8     
LFBD2: INC    $E7     
       LDA    $EB     
       CLC            
       ADC    #$04    
       STA    $EB     
       CMP    #$C0    
       BCC    LFC12   
       AND    #$01    
       STA    $EB     
       LDA    $EA     
       CLC            
       ADC    #$10    
       STA    $EA     
       CMP    #$C0    
       BCC    LFC12   
       LDA    #$00    
       STA    $EA     
       LDA    $EB     
       EOR    #$01    
       STA    $EB     
       LDA    $DA     
       CMP    #$05    
       BCS    LFC12   
       ORA    $EB     
       LSR            
       BCC    LFC12   
       LDA    $E3     
       CMP    #$10    
       BEQ    LFC12   
       BCC    LFC10   
       DEC    $E3     
       JMP    LFC12   
LFC10: INC    $E3     
LFC12: LDX    #$07    
       LDA    $AC     
       STA    $FA     
LFC18: LDA    $B8,X   
       BMI    LFC22   
       AND    $E7     
       CMP    $B8,X   
       BEQ    LFC25   
LFC22: JMP    LFCA3   
LFC25: LDA    $D0,X   
       BPL    LFC32   
       LDA    LFEB8,X 
       EOR    #$FF    
       AND    $AC     
       STA    $AC     
LFC32: LDA    $D0,X   
       ASL            
       ASL            
       BCC    LFC45   
       LDA    LFEB8,X 
       ORA    $AC     
       STA    $AC     
       LDA    $9A,X   
       CMP    #$40    
       BEQ    LFCA3   
LFC45: CPX    #$07    
       BEQ    LFCA3   
       LDA    LFEB8,X 
       AND    $AC     
       BNE    LFC7B   
       LDA    $F0,X   
       SEC            
       SBC    #$10    
       STA    $F0,X   
       AND    #$F0    
       CMP    #$80    
       BNE    LFCA3   
       INC    $F0,X   
       LDA    $F0,X   
       AND    #$0F    
       ORA    #$70    
       STA    $F0,X   
       AND    #$0F    
       CMP    #$09    
       BCC    LFCA3   
       LDA    LFEB8,X 
       EOR    $AC     
       STA    $AC     
       LDA    #$98    
       STA    $F0,X   
       JMP    LFCA3   
LFC7B: LDA    $F0,X   
       CLC            
       ADC    #$10    
       STA    $F0,X   
       AND    #$F0    
       CMP    #$80    
       BNE    LFCA3   
       DEC    $F0,X   
       LDA    $F0,X   
       AND    #$0F    
       ORA    #$90    
       STA    $F0,X   
       AND    #$0F    
       CMP    #$0F    
       BNE    LFCA3   
       LDA    #$70    
       STA    $F0,X   
       LDA    LFEB8,X 
       EOR    $AC     
       STA    $AC     
LFCA3: DEX            
       BMI    LFCA9   
       JMP    LFC18   
LFCA9: LDA    #$00    
       STA    $AE     
       STA    $AF     
       STA    $B0     
       STA    $B1     
       STA    $B2     
LFCB5: LDA    INTIM   
       BNE    LFCB5   
       LDA    #$24    
       EOR    $DB     
       STA    COLUBK  
       LDA    #$00    
       STA    HMP0    
       LDA    $B6     
       ORA    #$0F    
LFCC8: SEC            
       SBC    #$70    
       STA    $B6     
       JMP    LF04A   
LFCD0: .byte $04,$08,$0C,$10,$04,$08,$0C,$10,$14,$08,$16,$0A,$18,$10,$1A,$12
       .byte $10,$14,$10,$14,$10,$14,$10,$14,$10,$11,$12,$13,$14,$15,$16,$17
       .byte $10,$1F,$11,$1E,$12,$1D,$13,$1C
LFCF8: .byte $10,$14,$10,$08,$10,$0C,$10,$0C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$4C
       .byte $4C,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$48
       .byte $44,$44,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$48,$44,$44
       .byte $28,$44,$44,$42,$42,$24,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $A8,$54,$AB,$54,$A8,$00,$00,$00,$00,$00,$00,$00,$10,$38,$10,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$70,$38,$10
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$3C,$7E,$7F
       .byte $3E,$7C,$FE,$FF,$7F,$FE,$FC,$7C,$00,$00,$00,$00,$60,$95,$95,$FF
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$28,$44,$81
       .byte $24,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$00
       .byte $28,$00,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$AA,$55,$AA
       .byte $55,$AA,$55,$AA,$55,$AA,$55,$AA,$00
LFDC1: .byte $40,$30,$E0,$00,$00,$60,$00
LFDC8: .byte $FF,$03,$07,$00,$00,$0F,$00,$00
LFDD0: .byte $46,$66,$26,$86,$56,$C6,$00,$00
LFDD8: .byte $00,$01,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3C,$66,$24,$5A,$A5,$18
LFDF0: .byte $90,$10,$15,$20,$25,$30,$35,$40,$45,$50,$55,$60,$65,$70,$75,$80
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$AA,$AA,$AA,$BA,$BA,$7C,$38,$38,$38,$10,$10,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$50,$04,$54,$80,$01,$81,$82,$25,$00,$82,$C1,$40,$00,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$81,$42,$28,$44,$32,$42,$28,$14,$30,$82,$10,$44,$10,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFE90: .byte $00,$00,$03,$02,$02,$02,$02,$02,$02,$03,$02,$02,$02,$02,$02,$02
       .byte $03,$02,$02,$02,$02,$02,$02,$03,$02,$02,$02,$02,$02,$02,$03,$00
LFEB0: .byte $00,$10,$F0,$00,$00,$00,$F0,$10
LFEB8: .byte $01,$02,$04,$08,$10,$20,$40,$80
LFEC0: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$00
LFED0: .byte $10,$0F,$0E,$0D,$0C,$0B,$0A,$09,$08,$07,$06,$05,$04,$03,$02,$01
LFEE0: .byte $00,$25,$20,$10,$50,$75,$01,$00,$00,$00,$00,$00,$00,$50,$00,$00
LFEF0: .byte $00,$00,$00,$00,$02,$00,$00,$02,$05,$00,$00,$00,$00,$00,$01,$00
       .byte $00,$7F,$43,$43,$43,$41,$41,$7F,$00,$18,$18,$18,$18,$08,$08,$08
       .byte $00,$7F,$60,$60,$7F,$01,$41,$7F,$00,$7F,$43,$03,$3F,$02,$42,$7E
       .byte $00,$06,$06,$06,$7F,$42,$42,$42,$00,$7F,$43,$03,$7F,$40,$40,$7F
       .byte $00,$7F,$43,$43,$7F,$40,$41,$7F,$00,$03,$03,$03,$03,$01,$01,$3F
       .byte $00,$7F,$43,$43,$7F,$22,$22,$3E,$00,$03,$03,$03,$7F,$41,$41,$7F
LFF50: .byte $00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$40,$40,$20,$20,$10,$10
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$80,$60,$18,$06,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FE,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$06,$18,$60,$80,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$10,$10,$20,$20,$40,$40,$80,$80,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$80,$80,$80,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00
LFFC0: .byte $00,$00,$00,$00,$00,$20,$00,$00,$00,$00,$00,$20,$20,$10,$30,$20
LFFD0: .byte $10,$20,$30,$40,$50,$60,$70,$60,$50,$40,$30,$20,$00,$00,$00,$00
LFFE0: .byte $2F,$2C,$29,$26,$24,$22,$20,$1E
LFFE8: .byte $60,$70,$80,$90,$A0,$B0,$C0,$D0
LFFF0: .byte $40,$60,$80,$C0,$E0,$FF,$FF,$FF
LFFF8: .byte $40,$20,$20,$40,$00,$F0,$00,$F0
