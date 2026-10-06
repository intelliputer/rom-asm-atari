; Disassembly of roms/Corrida da Matematica (CCE).bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Corrida da Matematica (CCE).bin
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
HMM0    =  $22
VDELP0  =  $25
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       LDX    #$00    
       TXA            
LF003: STA    VSYNC,X 
       INX            
       BNE    LF003   
       STX    SWACNT  
       DEX            
       TXS            
       STX    $87     
       SEI            
       CLD            
       LDA    #$0F    
       STA    $C2     
       LDX    #$01    
       STX    $F5     
       STX    $CA     
       STX    $E1     
       STX    $E9     
       STX    $EA     
       LDA    #$04    
       STA    $E2     
       LDY    #$31    
       TXA            
       STY    CTRLPF  
LF02A: STA    VDELP0,X
       STA    $8A,X   
       DEX            
       BPL    LF02A   
       LDX    #$1A    
       LDA    #$F3    
LF035: SEC            
       SBC    #$09    
       STA    $A5,X   
       DEX            
       BPL    LF035   
       LDA    #$F3    
       STA    $E8     
       LDX    #$03    
       LDA    #$0A    
LF045: STA    $C4,X   
       DEX            
       BPL    LF045   
LF04A: LDA    #$02    
       STA    HMCLR   
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       TAY            
       LDX    $C3     
       LDA    LFF64,X 
       SEC            
LF05B: INY            
       SBC    #$0F    
       BCS    LF05B   
       STA    WSYNC   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $FB     
       LDX    #$00    
       STA    WSYNC   
       STX    VSYNC   
       LDX    #$05    
LF074: DEX            
       BPL    LF074   
       LDA    #$F0    
       STA    RESP0   
       STA    RESP1   
       STA    HMP0    
       LDA    $FB     
       STA    WSYNC   
LF083: DEY            
       BPL    LF083   
       STA    RESM0   
       STA    HMM0    
       STA    WSYNC   
       STA    HMOVE   
       INC    $80     
       BNE    LF09C   
       INC    $E2     
       LDA    $E2     
       CMP    #$FF    
       BNE    LF09C   
       STA    $87     
LF09C: LDX    #$2B    
       STX    TIM64T  
       LDX    #$07    
       LDY    #$0D    
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF0B0   
       LDX    #$F7    
       LDY    #$06    
LF0B0: LDA    $87     
       BMI    LF0B6   
       LDX    #$FF    
LF0B6: AND    $E2     
       STA    $FA     
       STX    $FB     
       LDX    #$06    
LF0BE: LDA    LFFB8,Y 
       EOR    $FA     
       AND    $FB     
       STA    $EE,X   
       DEY            
       DEX            
       BPL    LF0BE   
       LDA    SWCHB   
       ROR            
       BCS    LF108   
       LDA    $80     
       STA    $C1     
       LDX    #$0F    
       STX    $C2     
       LDY    #$FF    
       STY    $F7     
       INY            
       CPY    $C8     
       BEQ    LF128   
       LDX    #$06    
LF0E4: STY    $E1,X   
       STY    $81,X   
       DEX            
       BPL    LF0E4   
       STY    $D1     
       INY            
       STY    $8A     
       STY    $8B     
       LDY    #$01    
       JSR    LFB92   
       LDA    #$00    
       LDX    $C9     
       CPX    #$01    
       BEQ    LF103   
       LDA    $80     
       AND    #$01    
LF103: STA    $D0     
       JMP    LF144   
LF108: ROR            
       BCS    LF140   
       DEC    $CA     
       BNE    LF144   
       LDA    #$1E    
       STA    $CA     
       LDA    #$01    
       STA    $E9     
       STA    $EA     
       LDY    #$FF    
       STY    $87     
       STY    $F7     
       INY            
       STY    $DF     
       STY    $E0     
       STY    $D9     
       STY    $E7     
LF128: LDY    $C8     
       LDX    #$02    
       LDA    $C9     
       CMP    #$01    
       BEQ    LF134   
       INY            
       DEX            
LF134: STX    $C9     
       CPY    #$0A    
       BNE    LF13C   
       LDY    #$01    
LF13C: STY    $C8     
       BNE    LF144   
LF140: LDX    #$01    
       STX    $CA     
LF144: LDX    #$02    
       STX    $FB     
       LDA    $EE     
       STA    COLUBK  
       LDA    $F2     
       STA    COLUPF  
       LDX    #$0A    
       LDA    #$FD    
LF154: STA    $99,X   
       DEX            
       DEX            
       BPL    LF154   
       LDA    $E7     
       BEQ    LF177   
       LDA    $B9     
       STA    $98     
       STA    $A2     
       LDA    $A6     
       STA    $9A     
       LDA    $A9     
       STA    $9C     
       LDA    $AA     
       STA    $9E     
       LDA    $AB     
       STA    $A0     
       JMP    LF469   
LF177: LDA    $C8     
       SEC            
LF17A: SBC    #$03    
       BEQ    LF180   
       BCS    LF17A   
LF180: CLC            
       ADC    #$03    
       STA    $CB     
       LDA    $87     
       BEQ    LF1A1   
       LDA    $B9     
       LDX    $C8     
       BNE    LF192   
       JMP    LF45B   
LF192: LDA    $AF,X   
       STA    $98     
       LDX    $C9     
       LDA    $AF,X   
       STA    $A2     
       LDA    $B9     
       JMP    LF461   
LF1A1: LDA    $B9     
       LDX    $D2     
       BEQ    LF1AA   
       JMP    LF45B   
LF1AA: LDX    $C2     
       BMI    LF1B1   
       JMP    LF397   
LF1B1: LDA    $D7     
       BEQ    LF1B8   
       JMP    LF285   
LF1B8: LDA    $D8     
       BNE    LF1BF   
       JMP    LF307   
LF1BF: LDA    $D4     
       CMP    #$03    
       BNE    LF1E4   
       LDA    $C5     
       CMP    #$0A    
       BNE    LF1D4   
       LDA    $CE     
       CMP    $C4     
       BNE    LF1D4   
       JMP    LF22C   
LF1D4: LDA    $CE     
       STA    $C4     
       LDX    #$03    
LF1DA: LDA    #$0A    
       STA    $C4,X   
       DEX            
       BNE    LF1DA   
       JMP    LF264   
LF1E4: LDX    #$02    
       LDA    $D6     
       BEQ    LF1F0   
       DEX            
       AND    #$F0    
       BEQ    LF1F0   
       DEX            
LF1F0: LDA    $D5     
       AND    #$0F    
       PHA            
       INC    $DA     
       LDA    $D5     
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF203   
       CPX    #$02    
       BEQ    LF21E   
LF203: PHA            
       INC    $DA     
       CPX    #$02    
       BEQ    LF21E   
       LDA    $D6     
       AND    #$0F    
       PHA            
       INC    $DA     
       CPX    #$01    
       BEQ    LF21E   
       LDA    $D6     
       LSR            
       LSR            
       LSR            
       LSR            
       PHA            
       INC    $DA     
LF21E: LDX    #$00    
LF220: PLA            
       STA    $DB,X   
       CMP    $C4,X   
       BNE    LF242   
       INX            
       CPX    $DA     
       BNE    LF220   
LF22C: LDX    #$01    
       STX    $D9     
       LDX    $D0     
       LDY    $DF,X   
       CPY    #$09    
       BNE    LF23C   
       LDY    #$FF    
       INC    $E9,X   
LF23C: INY            
       STY    $DF,X   
       JMP    LF279   
LF242: STX    $FA     
       LDX    #$03    
       LDA    #$0A    
LF248: STA    $C4,X   
       DEX            
       BPL    LF248   
       LDX    $FA     
LF24F: LDA    $DB,X   
       STA    $C4,X   
       DEX            
       BPL    LF24F   
       LDX    $FA     
       INX            
LF259: CPX    $DA     
       BEQ    LF264   
       PLA            
       STA    $C4,X   
       INX            
       JMP    LF259   
LF264: LDY    #$80    
       STY    $D9     
       LDY    #$04    
       JSR    LFB92   
       LDX    $D0     
       LDA    $DF,X   
       CMP    #$02    
       BCC    LF279   
       SBC    #$02    
       STA    $DF,X   
LF279: LDX    #$00    
       STX    $DA     
       STX    $D8     
       INX            
       STX    $E1     
       JMP    LF307   
LF285: LDA    #$00    
       STA    $D5     
       STA    $D6     
       LDA    $D4     
       BEQ    LF298   
       CMP    #$02    
       BCC    LF2A7   
       BEQ    LF2B2   
       JMP    LF2E5   
LF298: LDA    $CD     
       CLC            
       SED            
       ADC    $CE     
       STA    $D5     
       BCC    LF2A4   
       INC    $D6     
LF2A4: JMP    LF304   
LF2A7: LDA    $CD     
       SEC            
       SED            
       SBC    $CE     
       STA    $D5     
       JMP    LF304   
LF2B2: LDA    $CD     
       BEQ    LF305   
       LDA    $CE     
       AND    #$0F    
       STA    $CE     
       BEQ    LF305   
       TAX            
       LDA    $D5     
       CLC            
       SED            
LF2C3: ADC    $CD     
       BCC    LF2D0   
       TAY            
       LDA    $D6     
       CLC            
       ADC    #$01    
       STA    $D6     
       TYA            
LF2D0: DEX            
       BNE    LF2C3   
       STA    $D5     
       LDA    $80     
       ROR            
       BCS    LF304   
       LDY    $CD     
       LDA    $CE     
       STY    $CE     
       STA    $CD     
       JMP    LF304   
LF2E5: LDY    $CD     
       BNE    LF2EB   
       INC    $CD     
LF2EB: LDA    $CE     
       AND    #$0F    
       STA    $CE     
       BEQ    LF305   
       TAX            
       LDA    $D5     
       CLC            
       SED            
LF2F8: ADC    $CD     
       BCC    LF2FF   
       INC    $D6     
       CLC            
LF2FF: DEX            
       BNE    LF2F8   
       STA    $D5     
LF304: CLD            
LF305: DEC    $D7     
LF307: LDX    $D4     
       CPX    #$03    
       BNE    LF358   
       LDX    $D6     
       BNE    LF313   
       LDX    #$0A    
LF313: LDA    $AF,X   
       STA    $98     
       LDA    $D5     
       AND    #$0F    
       TAX            
       LDA    $AF,X   
       STA    $9C     
       LDA    $D5     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       CPX    #$00    
       BNE    LF331   
       LDA    $D6     
       BNE    LF331   
       LDX    #$0A    
LF331: LDA    $AF,X   
       STA    $9A     
       LDA    $CD     
       AND    #$0F    
       TAX            
       LDA    $AF,X   
       STA    $A2     
       LDA    $CD     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       CPX    #$00    
       BNE    LF34B   
       LDX    #$0A    
LF34B: LDA    $AF,X   
       STA    $A0     
       LDX    $D4     
       LDA    $BC,X   
       STA    $9E     
       JMP    LF469   
LF358: LDA    $BC,X   
       STA    $9C     
       LDA    $CD     
       AND    #$0F    
       TAX            
       LDA    $AF,X   
       STA    $9A     
       LDA    $CD     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       CPX    #$00    
       BNE    LF372   
       LDX    #$0A    
LF372: LDA    $AF,X   
       STA    $98     
       LDA    $CE     
       AND    #$0F    
       TAX            
       LDA    $AF,X   
       STA    $A0     
       LDA    $CE     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       CPX    #$00    
       BNE    LF38C   
       LDX    #$0A    
LF38C: LDA    $AF,X   
       STA    $9E     
       LDA    $B9     
       STA    $A2     
       JMP    LF469   
LF397: LDA    $84     
       BEQ    LF407   
       LDX    $D0     
       CPX    #$01    
       BNE    LF407   
       LDA    $C9     
       CMP    #$01    
       BNE    LF407   
       LDA    $EB     
       BNE    LF407   
       LDA    $EC     
       BEQ    LF3BB   
       DEC    $EC     
       BNE    LF407   
       LDA    #$01    
       STA    $D9     
       STA    $EB     
       BNE    LF407   
LF3BB: LDA    #$50    
       STA    $EC     
       LDA    $E4     
       BMI    LF3FB   
       LDY    #$03    
       LDA    $84     
       CMP    #$02    
       BCC    LF3F0   
       LDA    $82     
       CMP    #$10    
       BEQ    LF3FB   
       CMP    #$18    
       BEQ    LF3FB   
       CMP    #$0F    
       BEQ    LF3FD   
       CMP    #$17    
       BEQ    LF3FD   
       CMP    #$1F    
       BEQ    LF3FD   
       LDA    $81     
       SEC            
       SBC    $82     
       CMP    #$02    
       BEQ    LF3FB   
       CMP    #$03    
       BEQ    LF3FD   
       BPL    LF3FD   
LF3F0: LDA    $80     
       CLC            
       AND    #$02    
       LSR            
       ADC    #$02    
       TAY            
       BNE    LF3FD   
LF3FB: LDY    #$02    
LF3FD: STY    $85     
       STY    $86     
       LDA    #$01    
       STA    $E1     
       BNE    LF411   
LF407: LDA    $E3,X   
       BMI    LF450   
       LDA    $81,X   
       CMP    #$1F    
       BEQ    LF42E   
LF411: LDA    #$02    
       CMP    $85     
       BCC    LF445   
       BEQ    LF459   
       LDA    $B1     
       STA    $98     
       LDA    $A6     
       STA    $9E     
       LDA    $A5     
       STA    $9C     
       LDA    $B2     
       STA    $A2     
       LDA    $B9     
       JMP    LF465   
LF42E: LDA    $F8     
       CMP    #$0C    
       BEQ    LF439   
       LDY    #$0C    
       JSR    LFB92   
LF439: LDX    #$01    
       STX    $E1     
       STX    $D1     
       STX    $86     
       LDX    #$03    
       STX    $F6     
LF445: LDA    $B2     
       STA    $A2     
       LDA    $B9     
       STA    $98     
       JMP    LF461   
LF450: LDX    #$01    
       STX    $E1     
       STX    $D1     
       INX            
       STX    $F6     
LF459: LDA    $B1     
LF45B: STA    $98     
       LDA    $B9     
       STA    $A2     
LF461: STA    $9C     
       STA    $9E     
LF465: STA    $9A     
       STA    $A0     
LF469: LDA    INTIM   
       BNE    LF469   
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$07    
       STX    TIM64T  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    $E1     
       BNE    LF4AB   
       LDY    $D0     
       BEQ    LF493   
       LDA    SWCHA   
       AND    #$0F    
       CMP    #$0B    
       BEQ    LF49D   
       BCC    LF49F   
       JMP    LF4AB   
LF493: BIT    SWCHA   
       BPL    LF49F   
       BVC    LF49D   
       JMP    LF4AB   
LF49D: LDX    #$02    
LF49F: STX    $85     
       STX    $F6     
       STX    $D1     
       LDA    $C2     
       BMI    LF4AB   
       STX    $86     
LF4AB: LDA    $F3     
       LDY    $E7     
       BNE    LF4BD   
       LDY    $87     
       BNE    LF4BD   
       LDA    $F0     
       LDY    $D0     
       BEQ    LF4BD   
       LDA    $F1     
LF4BD: STA    COLUP0  
       STA    COLUP1  
       LDA    $F7     
       BMI    LF4DF   
       LDX    $D0     
       BNE    LF4D8   
       BIT    SWCHB   
       BVC    LF4DF   
LF4CE: DEC    $ED     
       BNE    LF4DF   
       DEC    $F7     
       BNE    LF4DF   
       BEQ    LF4FA   
LF4D8: LDA    SWCHB   
       BPL    LF4DF   
       BMI    LF4CE   
LF4DF: LDA    $D1     
       BEQ    LF525   
       LDA    $D0     
       BNE    LF4EE   
       LDX    INPT4   
       BMI    LF525   
       JMP    LF4F2   
LF4EE: LDX    INPT5   
       BMI    LF525   
LF4F2: DEC    $C2     
       LDA    $C2     
       AND    #$0F    
       BNE    LF525   
LF4FA: LDX    #$FF    
       STX    $F7     
       LDA    #$00    
       STA    $ED     
       STA    $D1     
       STA    $85     
       STA    $C3     
       STA    $E1     
       LDY    $C2     
       BPL    LF514   
       LDX    #$01    
       STX    $D8     
       BNE    LF525   
LF514: LDX    #$8F    
       STX    $CF     
       STX    $C2     
       LDY    #$02    
       LDX    $D0     
       BEQ    LF522   
       LDY    #$03    
LF522: JSR    LFB92   
LF525: LDA    INTIM   
       BNE    LF525   
       STA    WSYNC   
       LDA    #$08    
       STA    $A4     
LF530: LDY    $A4     
       LDA    ($98),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($9A),Y 
       STA    GRP1    
       LDA    ($9C),Y 
       STA    GRP0    
       LDA    ($9E),Y 
       STA    $FA     
       LDA    ($A0),Y 
       TAX            
       LDA    ($A2),Y 
       TAY            
       LDA    $FA     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $A4     
       BPL    LF530   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    WSYNC   
       DEC    $FB     
       BNE    LF569   
       JMP    LF60C   
LF569: LDX    #$06    
       STX    TIM64T  
       LDA    $E7     
       BNE    LF583   
       LDA    $87     
       BEQ    LF596   
       LDX    $C8     
       BEQ    LF5DE   
       LDA    $B9     
       STA    $98     
       STA    $A2     
       JMP    LF525   
LF583: LDA    $A5     
       STA    $9A     
       LDA    $E8     
       STA    $9C     
       LDA    $AB     
       STA    $9E     
       LDA    $A6     
       STA    $A0     
       JMP    LF525   
LF596: LDA    $D2     
       BEQ    LF5AD   
       LDX    #$0A    
       LDA    $B9     
LF59E: STA    $98,X   
       DEX            
       DEX            
       BPL    LF59E   
       LDX    $D3     
       LDY    $AF,X   
       STY    $9C     
       JMP    LF525   
LF5AD: LDA    $C2     
       BPL    LF5F3   
       LDY    #$03    
       STY    $FA     
       LDA    $BA     
       STA    $98     
LF5B9: LDY    $FA     
       LDX    $C4,Y   
       TYA            
       ASL            
       LDY    $AF,X   
       TAX            
       STY    $9A,X   
       DEC    $FA     
       BPL    LF5B9   
       LDA    $B9     
       STA    $A2     
       LDA    $E1     
       BNE    LF5DB   
       LDA    $80     
       AND    #$0F    
       CMP    #$0F    
       BNE    LF5DB   
       JSR    LFAD8   
LF5DB: JMP    LF525   
LF5DE: LDY    #$05    
       LDX    #$0A    
LF5E2: LDA    LFBF7,Y 
       STA    $98,X   
       LDA    #$FB    
       STA    $99,X   
       DEX            
       DEX            
       DEY            
       BPL    LF5E2   
       JMP    LF525   
LF5F3: LDA    $A7     
       STA    $98     
       STA    $A2     
       LDA    $A8     
       STA    $9A     
       LDA    $A9     
       STA    $9C     
       LDA    $AA     
       STA    $9E     
       LDA    $AB     
       STA    $A0     
       JMP    LF525   
LF60C: LDA    #$0E    
       STA    TIM64T  
       STA    WSYNC   
       LDA    #$30    
       STA    NUSIZ0  
       LDX    $87     
       BNE    LF623   
       LDX    $C2     
       BPL    LF623   
       LDA    #$02    
       STA    ENAM0   
LF623: LDX    #$01    
LF625: LDY    $83,X   
       CPY    #$09    
       BNE    LF62C   
       DEY            
LF62C: LDA    LFE04,Y 
       STA    NUSIZ0,X
       DEX            
       BPL    LF625   
       INX            
       STA    WSYNC   
       STX    ENAM0   
       LDX    #$01    
LF63B: LDA    $8E,X   
       CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $FA     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $FA     
       CMP    #$0F    
       BCC    LF655   
       SBC    #$0F    
       INY            
LF655: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF65F: DEY            
       BPL    LF65F   
       STA    RESP0,X 
       DEX            
       BPL    LF63B   
       STA    WSYNC   
       STA    HMOVE   
       INX            
       STX    COLUBK  
       LDX    #$01    
LF670: LDA    $E3,X   
       CMP    #$01    
       BEQ    LF683   
       DEX            
       BPL    LF670   
       LDA    $F0     
       STA    COLUP0  
LF67D: LDA    $F1     
       STA    COLUP1  
       BNE    LF695   
LF683: CPX    #$00    
       BNE    LF68D   
       LDX    $F4     
       STX    COLUP0  
       BNE    LF67D   
LF68D: LDA    $F4     
       STA    COLUP1  
       LDA    $F0     
       STA    COLUP0  
LF695: STA    WSYNC   
       LDY    $EF     
       STY    COLUBK  
LF69B: LDA    INTIM   
       BNE    LF69B   
       LDX    #$00    
LF6A2: STA    WSYNC   
       STA    GRP0    
       LDA    LFE25,X 
       STA    PF1     
       LDA    LFE6D,X 
       STA    PF2     
       CPX    #$47    
       BEQ    LF706   
       DEC    $FA     
       INC    $FA     
       LDA    $FA     
       LDA    LFEB5,X 
       STA    PF1     
       LDA    LFCB9,X 
       STA    PF2     
       DEC    $97     
       BPL    LF6FE   
       LDY    $91     
       BMI    LF6FE   
       LDA    ($94),Y 
       DEC    $91     
LF6D0: STA    WSYNC   
       STA    GRP1    
       LDA    LFE25,X 
       STA    PF1     
       LDA    LFE6D,X 
       STA    PF2     
       DEC    $FA     
       INC    $FA     
       DEC    $FA     
       LDA    LFEB5,X 
       STA    PF1     
       LDA    LFCB9,X 
       INX            
       STA    PF2     
       DEC    $96     
       BPL    LF702   
       LDY    $90     
       BMI    LF702   
       LDA    ($92),Y 
       DEC    $90     
       JMP    LF6A2   
LF6FE: LDA    #$00    
       BEQ    LF6D0   
LF702: LDA    #$00    
       BEQ    LF6A2   
LF706: STA    WSYNC   
       LDY    #$00    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STY    GRP0    
       STY    GRP1    
       LDA    #$00    
       LDY    $F8     
       LDX    $87     
       BMI    LF763   
       LDA    $F9     
       BEQ    LF763   
       DEC    $F9     
       LDA    LFFC5,Y 
       STA    AUDC0   
       LDA    LFFDA,Y 
       STA    AUDV0   
       LDA    LFFD1,Y 
       STA    WSYNC   
       CPY    #$0A    
       BNE    LF74A   
       LDX    $C0     
       LDA    #$04    
       STA    AUDC1   
       LDA    #$08    
       STA    AUDV1   
       LDA    LFBB4,X 
       STA    AUDF1   
       LDA    LFBA7,X 
       JMP    LF75E   
LF74A: CPY    #$05    
       BNE    LF758   
       LDX    $D0     
       LDA    $8A,X   
       CLC            
       ADC    #$0E    
       JMP    LF75E   
LF758: CPY    #$0B    
       BCC    LF75E   
       LDA    $F9     
LF75E: STA    AUDF0   
       JMP    LF77C   
LF763: STA    WSYNC   
       CPY    #$0A    
       BNE    LF778   
       LDX    $C0     
       BEQ    LF778   
       DEX            
       STX    $C0     
       LDA    LFB9A,X 
       STA    $F9     
       JMP    LF77C   
LF778: STA    AUDV0   
       STA    AUDV1   
LF77C: LDX    #$04    
LF77E: STA    WSYNC   
       DEX            
       BNE    LF77E   
       LDA    #$25    
       STA    TIM64T  
       LDA    #$02    
       STA    VBLANK  
       LDA    $CF     
       BNE    LF793   
       JMP    LF866   
LF793: SED            
       LDA    $CB     
       LDX    $F6     
       CPX    #$03    
       BNE    LF79F   
       CLC            
       ADC    $CB     
LF79F: ADC    $CB     
       STA    $CC     
       ADC    $CC     
       STA    $CC     
       LDX    #$01    
LF7A9: JSR    LFB4F   
       LDY    $CB     
       CPY    #$01    
       BNE    LF7B4   
       AND    #$0F    
LF7B4: CMP    $CC     
       BEQ    LF7BF   
       BCC    LF7BF   
       SBC    $CC     
       JMP    LF7B4   
LF7BF: STA    $CD,X   
       AND    #$0F    
       CMP    #$0A    
       BCC    LF7D3   
       SBC    #$08    
       STA    $FA     
       LDA    $CD,X   
       AND    #$F0    
       ORA    $FA     
       STA    $CD,X   
LF7D3: DEX            
       BPL    LF7A9   
       LDX    $D0     
       LDA    $E3,X   
       BMI    LF806   
       LDA    $80     
       ROR            
       BCC    LF7EB   
       LDA    $DF,X   
       CLC            
       ADC    $CD     
       STA    $CD     
       JMP    LF7F1   
LF7EB: LDA    $DF,X   
       ADC    $CE     
       STA    $CE     
LF7F1: LDY    $E9,X   
       STY    $FA     
       LDX    #$01    
LF7F7: LDA    #$00    
       CLC            
LF7FA: ADC    $CD,X   
       DEY            
       BNE    LF7FA   
       STA    $CD,X   
       LDY    $FA     
       DEX            
       BPL    LF7F7   
LF806: CLD            
       LDA    $C0     
       LDX    $C8     
       CPX    #$07    
       BCC    LF813   
       AND    #$03    
       BPL    LF81C   
LF813: AND    #$01    
       CPX    #$04    
       BCC    LF81C   
       CLC            
       ADC    #$02    
LF81C: STA    $D4     
       CMP    #$01    
       BNE    LF82E   
       LDY    $CD     
       CPY    $CE     
       BCS    LF82E   
       LDA    $CE     
       STA    $CD     
       STY    $CE     
LF82E: INC    $D7     
       LDA    #$00    
       STA    $CF     
       LDX    $D0     
       BNE    LF846   
       BIT    SWCHB   
       BVC    LF84D   
LF83D: LDY    $D4     
       LDA    LFFF3,Y 
       STA    $F7     
       BNE    LF84D   
LF846: LDA    SWCHB   
       BPL    LF84D   
       BMI    LF83D   
LF84D: LDX    #$03    
       LDA    #$0A    
LF851: STA    $C4,X   
       DEX            
       BPL    LF851   
       LDX    #$0C    
       STX    $C5     
       LDX    $D0     
       LDA    $81,X   
       CMP    #$1E    
       BNE    LF866   
       LDA    #$02    
       STA    $86     
LF866: LDX    #$01    
LF868: LDY    $83,X   
       BNE    LF871   
       JSR    LFA62   
       LDY    $83,X   
LF871: LDA    LFE0C,Y 
       STA    $90,X   
       LDA    $8C,X   
       STA    $96,X   
       DEX            
       BPL    LF868   
       LDA    $E7     
       BEQ    LF89C   
       LDX    #$01    
LF883: LDA    $E3,X   
       CMP    #$01    
       BEQ    LF88C   
       DEX            
       BPL    LF883   
LF88C: LDY    $83,X   
       JSR    LFA8A   
       LDY    $C0     
       BNE    LF899   
       LDA    #$FF    
       STA    $87     
LF899: JMP    LFA58   
LF89C: LDA    $D9     
       BNE    LF8A3   
       JMP    LFA25   
LF8A3: BPL    LF8BB   
       DEC    $ED     
       BEQ    LF8AC   
       JMP    LFA25   
LF8AC: LDX    #$00    
       STX    $E1     
       STX    $D9     
       STX    $EB     
       LDX    #$0F    
       STX    $C2     
       JMP    LF9D6   
LF8BB: LDA    $80     
       ROR            
       BCS    LF8C3   
       JMP    LFA58   
LF8C3: LDX    $D0     
       LDY    $83,X   
       LDA    $E3,X   
       BPL    LF8E4   
       JSR    LFA8A   
       LDA    #$00    
       STA    $D9     
       STA    $D2     
       STA    $E1     
       STA    $85     
       LDA    #$08    
       STA    $E3,X   
       LDY    #$06    
       JSR    LFB92   
       JMP    LF9D2   
LF8E4: CMP    #$08    
       BNE    LF8F6   
       LDA    $E5     
       STA    $8E,X   
       LDA    $E6     
       STA    $8C,X   
       STA    $96,X   
       LDA    #$00    
       STA    $E3,X   
LF8F6: LDA    $81,X   
       CMP    $88,X   
       BNE    LF909   
       CPY    #$08    
       BNE    LF906   
       JSR    LFA67   
       JMP    LF909   
LF906: JSR    LFA60   
LF909: LDY    $83,X   
       LDA    LFE0C,Y 
       STA    $90,X   
       LDA    $81,X   
       CMP    #$08    
       BEQ    LF91C   
       CMP    #$09    
       BEQ    LF91C   
       BNE    LF920   
LF91C: LDA    #$64    
       STA    $8E,X   
LF920: CPY    #$08    
       BEQ    LF937   
       LDA    LFDFB,Y 
       CMP    $8A,X   
       BCS    LF937   
       INC    $81,X   
       LDA    $86     
       BEQ    LF933   
       DEC    $86     
LF933: LDA    #$00    
       STA    $8A,X   
LF937: LDA    LFF03,Y 
       CLC            
       ADC    $8E,X   
       STA    $8E,X   
       LDA    LFF0B,Y 
       CLC            
       ADC    $8C,X   
       STA    $8C,X   
       STA    $96,X   
       INC    $8A,X   
       LDY    #$05    
       JSR    LFB92   
       LDA    $86     
       BEQ    LF957   
       JMP    LFA58   
LF957: LDA    #$00    
       STA    $D2     
       STA    $D9     
       STA    $E1     
       STA    $EB     
       STA    $85     
       LDA    $81,X   
       CMP    #$10    
       BEQ    LF9D2   
       CMP    #$12    
       BNE    LF970   
       JMP    LFA18   
LF970: CMP    #$14    
       BEQ    LF9D2   
       CMP    #$1A    
       BNE    LF97B   
       JMP    LFA18   
LF97B: CMP    #$1B    
       BEQ    LF9D2   
       LDA    $81     
       CMP    #$09    
       BCC    LF9C2   
       CMP    $82     
       BNE    LF9C2   
       CPX    #$01    
       BEQ    LF991   
       LDX    #$01    
       BNE    LF993   
LF991: LDX    #$00    
LF993: LDA    $8E,X   
       STA    $E5     
       LDA    $8C,X   
       STA    $E6     
       LDA    $81     
       SEC            
       SBC    #$08    
       TAY            
       LDA    LFF80,Y 
       STA    $8C,X   
       STA    $96,X   
       LDA    LFF68,Y 
       STA    $8E,X   
       JSR    LFB61   
       LDA    #$80    
       STA    $E3,X   
       LDY    #$07    
       JSR    LFB92   
       LDY    $DF,X   
       CPY    #$00    
       BEQ    LF9C2   
       DEY            
       STY    $DF,X   
LF9C2: LDX    $D0     
       LDA    $81,X   
       CMP    #$11    
       BEQ    LFA1C   
       CMP    #$15    
       BEQ    LFA1C   
       CMP    #$1C    
       BEQ    LFA1C   
LF9D2: LDA    #$0F    
       STA    $C2     
LF9D6: LDX    #$01    
LF9D8: LDY    $83,X   
       CPY    #$08    
       BEQ    LF9E7   
       CPY    #$09    
       BEQ    LF9E7   
       DEX            
       BPL    LF9D8   
       BMI    LFA07   
LF9E7: LDY    $C8     
       CPY    #$04    
       BCS    LF9EF   
       INC    $E9,X   
LF9EF: LDA    #$01    
       STA    $E3,X   
       STA    $E1     
       STA    $E7     
       LDY    #$0A    
       STY    $F8     
       LDX    #$0C    
       STX    $C0     
       LDA    LFB9A,X 
       STA    $F9     
       JMP    LFA58   
LFA07: LDX    #$01    
       LDA    $D0     
       BEQ    LFA0F   
       LDX    #$00    
LFA0F: STX    $D0     
       LDY    #$00    
       STY    $D1     
       JMP    LFA58   
LFA18: LDA    #$01    
       STA    $D2     
LFA1C: LDA    #$0F    
       STA    $C2     
       LDY    #$0B    
       JSR    LFB92   
LFA25: LDA    $D2     
       BEQ    LFA58   
       DEC    $ED     
       LDA    $ED     
       BNE    LFA42   
       JSR    LFB4F   
       AND    #$03    
       CLC            
       ADC    #$01    
       STA    $D3     
       STA    $86     
       INC    $D9     
       INC    $E1     
       JMP    LFA58   
LFA42: AND    #$03    
       CMP    #$03    
       BNE    LFA58   
       LDY    $D3     
       CPY    #$04    
       BNE    LFA50   
       LDY    #$00    
LFA50: INY            
       STY    $D3     
       LDY    #$08    
       JSR    LFB92   
LFA58: LDA    INTIM   
       BNE    LFA58   
       JMP    LF04A   
LFA60: DEC    $86     
LFA62: INY            
       STY    $83,X   
       INC    $81,X   
LFA67: LDA    LFEFB,Y 
       STA    $88,X   
       LDA    LFE14,Y 
       CPY    #$02    
       BNE    LFA79   
       CPX    #$00    
       BEQ    LFA79   
       LDA    #$68    
LFA79: STA    $8E,X   
       LDA    LFE1C,Y 
       CPY    #$02    
       BCS    LFA88   
       CPX    #$00    
       BEQ    LFA88   
       LDA    #$41    
LFA88: STA    $8C,X   
LFA8A: CPY    #$05    
       BNE    LFA94   
       LDA    #$19    
       LDY    #$FF    
       BNE    LFAC4   
LFA94: CPY    #$08    
       BCC    LFAB2   
       LDY    $F5     
       LDA    $80     
       AND    #$07    
       CMP    #$07    
       BNE    LFAAB   
       INY            
       CPY    #$05    
       BNE    LFAA9   
       LDY    #$01    
LFAA9: STY    $F5     
LFAAB: LDA    LFF5F,Y 
       LDY    #$FF    
       BNE    LFAC4   
LFAB2: CPY    #$04    
       BNE    LFABC   
       LDA    #$29    
       LDY    #$FF    
       BNE    LFAC4   
LFABC: TYA            
       ROR            
       BCC    LFAD2   
       LDA    #$14    
       LDY    #$FF    
LFAC4: CPX    #$00    
       BEQ    LFACD   
       STA    $94     
       STY    $95     
       RTS            

LFACD: STA    $92     
       STY    $93     
       RTS            

LFAD2: LDA    #$1E    
       LDY    #$FF    
       BNE    LFAC4   
LFAD8: LDY    $C3     
       LDX    $C4,Y   
       LDA    $D0     
       BEQ    LFAF8   
       LDA    SWCHA   
       AND    #$0F    
       CMP    #$0F    
       BEQ    LFB4E   
       STA    $D1     
       CMP    #$0B    
       BCC    LFB26   
       BEQ    LFB35   
       CMP    #$0E    
       BEQ    LFB0E   
       JMP    LFB1F   
LFAF8: LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BEQ    LFB4E   
       LDA    #$20    
       STA    $D1     
       BIT    SWCHA   
       BPL    LFB26   
       BVC    LFB35   
       BEQ    LFB1F   
LFB0E: INX            
       CPX    #$0B    
       BNE    LFB15   
       LDX    #$00    
LFB15: STX    $C4,Y   
       LDY    #$09    
       JSR    LFB92   
       JMP    LFB42   
LFB1F: DEX            
       BPL    LFB15   
       LDX    #$0A    
       BNE    LFB15   
LFB26: LDX    $C4,Y   
       CPX    #$0A    
       BEQ    LFB40   
       INY            
       CPY    #$04    
       BNE    LFB40   
       LDY    #$03    
       BNE    LFB40   
LFB35: LDX    $C3     
       LDA    #$0A    
       STA    $C4,X   
       DEY            
       BPL    LFB40   
       LDY    #$00    
LFB40: STY    $C3     
LFB42: LDX    #$00    
       STX    $E2     
       CPX    $C3     
       BNE    LFB4E   
       LDA    #$0A    
       STA    $C5     
LFB4E: RTS            

LFB4F: LDA    $80     
       STA    $C0     
       LDA    $C0     
       ASL            
       EOR    $C0     
       ASL            
       ASL            
       ROL    $C1     
       ROL    $C0     
       LDA    $C1     
       RTS            

LFB61: LDA    $83,X   
       CMP    #$05    
       BNE    LFB6D   
       LDA    #$9D    
       LDY    #$FF    
       BNE    LFB7E   
LFB6D: CMP    #$04    
       BNE    LFB77   
       LDA    #$AD    
       LDY    #$FF    
       BNE    LFB7E   
LFB77: ROR            
       BCS    LFB8C   
       LDA    #$A2    
       LDY    #$FF    
LFB7E: CPX    #$00    
       BNE    LFB87   
       STA    $92     
       STY    $93     
       RTS            

LFB87: STA    $94     
       STY    $95     
       RTS            

LFB8C: LDA    #$98    
       LDY    #$FF    
       BNE    LFB7E   
LFB92: STY    $F8     
       LDA    LFFE6,Y 
       STA    $F9     
       RTS            

LFB9A: .byte $10,$04,$04,$08,$04,$04,$08,$04,$04,$08,$04,$04,$08
LFBA7: .byte $08,$08,$08,$04,$08,$08,$10,$08,$08,$04,$08,$08,$10
LFBB4: .byte $10,$10,$10,$1F,$10,$10,$1F,$10,$10,$1F,$10,$10,$1F,$07,$0F,$4C
       .byte $AC,$4C,$0F,$07,$00,$00,$C7,$EF,$6C,$0C,$6C,$EF,$C7,$00,$00,$C7
       .byte $EF,$6C,$0F,$6C,$EF,$C7,$00,$00,$C0,$E0,$04,$EA,$64,$E0,$C0,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00
LFBF7: .byte $C1,$CA,$D3,$DC,$E5,$EE,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFCB9: .byte $FF,$FF,$7F,$FF,$FF,$FF,$7F,$FF,$C3,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$0F,$0F,$07,$0F,$0F,$0F,$0F,$0F,$0C,$0F,$0F,$0F
       .byte $0F,$0F,$07,$0F,$0F,$0F,$0F,$0F,$FF,$FF,$FF,$BF,$7F,$7F,$7F,$BF
       .byte $FE,$FF,$0F,$0F,$0F,$0F,$0F,$0F,$0E,$0F,$0F,$0F,$FF,$FF,$FF,$FF
       .byte $FF,$1F,$FF,$FF,$FE,$FF,$FF,$00,$38,$6C,$C6,$C6,$C6,$6C,$38,$00
       .byte $00,$C6,$CC,$F8,$CC,$C6,$CC,$F8,$00,$00,$7C,$C6,$06,$7C,$C0,$C6
       .byte $7C,$00,$00,$C0,$C0,$F8,$CC,$C6,$CC,$F8,$00,$00,$C6,$C6,$FE,$C6
       .byte $C6,$6C,$38,$00,$00,$3C,$66,$C0,$C0,$C0,$66,$3C,$00,$00,$FE,$C0
       .byte $C0,$FC,$C0,$C0,$FE,$00,$00,$38,$44,$BA,$A2,$BA,$44,$38,$00,$00
       .byte $18,$18,$18,$18,$18,$7E,$7E,$00,$00,$60,$60,$60,$60,$60,$60,$60
       .byte $00,$38,$6C,$C6,$C6,$C6,$C6,$C6,$6C,$38,$3C,$18,$18,$18,$18,$18
       .byte $18,$18,$38,$FE,$C0,$60,$30,$1C,$06,$02,$C6,$7C,$78,$CC,$06,$06
       .byte $0C,$38,$0C,$06,$FE,$06,$06,$06,$FE,$C6,$66,$36,$1E,$0E,$78,$CC
       .byte $06,$06,$0C,$F8,$C0,$C0,$FE,$38,$6C,$C6,$C6,$CC,$F8,$C0,$60,$3C
       .byte $30,$30,$18,$18,$0C,$0C,$06,$C6,$FE,$7C,$C6,$C6,$C6,$6C,$38,$6C
       .byte $6C,$38,$78,$0C,$06,$3E,$66,$C6,$C6,$6C,$38,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$7E,$00,$7E,$00,$00,$00,$30,$00,$30
       .byte $18,$0C,$C6,$C6,$6C,$38,$00,$00,$18,$18,$7E,$18,$18,$00,$00,$00
       .byte $00,$00,$00,$7E,$00,$00,$00,$00,$00,$00,$C6,$6C,$38,$6C,$C6,$00
       .byte $00,$00,$00,$18,$00,$7E,$00,$18,$00,$00,$00,$38,$38,$6C,$6C,$C6
       .byte $C6,$82
LFDFB: .byte $00,$10,$0B,$10,$0B,$10,$0B,$10,$01
LFE04: .byte $35,$35,$30,$35,$30,$35,$30,$35
LFE0C: .byte $35,$04,$0A,$04,$0A,$04,$0A,$04
LFE14: .byte $0A,$18,$60,$67,$84,$7C,$14,$13
LFE1C: .byte $8C,$3B,$39,$15,$17,$29,$24,$01,$02
LFE25: .byte $FF,$7F,$FE,$FF,$FE,$FE,$FC,$FF,$FF,$FF,$F0,$F0,$F0,$70,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$70,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$50,$B0,$B0,$BF,$5F,$FF,$F7,$E3,$EB,$EB,$EB
       .byte $FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$3F,$3F,$3F
       .byte $3F,$3C,$3F,$3F,$3F,$3F,$3F,$00
LFE6D: .byte $FF,$FF,$B7,$63,$6B,$6B,$AA,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$77,$FF,$F7,$F7,$63
       .byte $FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF
       .byte $FF,$7C,$FF,$FF,$FF,$FF,$FF,$00
LFEB5: .byte $7F,$7F,$6F,$7F,$77,$7F,$7B,$7F,$7F,$7F,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF,$7F,$FF,$FF,$FF,$FC,$FF,$F0,$F0
       .byte $F0,$F0,$F0,$70,$F0,$F0,$F0,$F0,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$FF
       .byte $F8,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LFEFB: .byte $00,$05,$09,$0B,$0D,$14,$18,$1F
LFF03: .byte $20,$01,$00,$01,$00,$FF,$00,$01
LFF0B: .byte $00,$00,$FF,$00,$01,$00,$FF,$00,$00,$E3,$50,$AF,$50,$E3,$C7,$0A
       .byte $F5,$0A,$C7,$D6,$EE,$D6,$28,$10,$10,$10,$10,$D6,$D6,$D6,$D6,$D6
       .byte $D6,$10,$10,$10,$10,$28,$D6,$EE,$D6,$10,$10,$10,$10,$10,$0A,$15
       .byte $0A,$15,$0A,$15,$20,$20,$20,$20,$20,$08,$14,$0A,$14,$08,$10,$10
       .byte $10,$10,$10,$10,$50,$A8,$50,$A8,$50,$A8,$08,$08,$08,$08,$08,$10
       .byte $28,$50,$28,$10
LFF5F: .byte $08,$34,$3F,$4A,$55
LFF64: .byte $44,$4C,$54,$5C
LFF68: .byte $54,$54,$68,$78,$92,$92,$7C,$74,$4C,$4C,$36,$26,$14,$04,$04,$04
       .byte $04,$24,$24,$38,$48,$58,$68,$78
LFF80: .byte $18,$15,$0C,$0C,$17,$23,$33,$33,$33,$33,$33,$33,$33,$24,$19,$0D
       .byte $02,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$62,$D6,$B9,$52,$E1,$46,$6B,$9D
       .byte $4A,$87,$56,$EE,$D4,$38,$10,$20,$20,$68,$CC,$66,$12,$12,$66,$CC
       .byte $68,$20,$20,$10,$38,$D4,$EE,$56
LFFB8: .byte $1A,$C4,$30,$A6,$0A,$00,$0F,$0A,$04,$00,$0F,$0A,$00
LFFC5: .byte $0F,$04,$0C,$01,$0A,$09,$0F,$08,$04,$0E,$0C,$05
LFFD1: .byte $0C,$06,$02,$03,$06,$03,$01,$05,$03
LFFDA: .byte $02,$06,$06,$06,$06,$08,$06,$0F,$06,$0F,$08,$08
LFFE6: .byte $08,$10,$10,$10,$3C,$01,$1E,$0A,$01,$01,$FF,$1E,$1E
LFFF3: .byte $0E,$0E,$1C,$1C,$00,$00,$00,$00,$00,$00,$F0,$00,$00
