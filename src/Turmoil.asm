; Disassembly of roms/Turmoil.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Turmoil.bin
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
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
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
       STA    $ED     
       LDA    #$FC    
       STA    $BC     
       LDA    #$9B    
       STA    $EE     
       LDA    #$FD    
       STA    $EF     
       LDA    #$FE    
       STA    $94     
       STA    $D9     
       LDA    #$08    
       STA    $F3     
       LDA    #$01    
       STA    $80     
       STA    CTRLPF  
       LDA    #$05    
       STA    $8E     
       LDA    #$4A    
       STA    $98     
       LDA    #$0A    
       STA    $A7     
       LDA    #$14    
       STA    $8F     
       LDA    #$18    
       STA    $90     
       LDA    #$6E    
       STA    $91     
       LDA    #$FD    
       STA    $92     
       LDA    #$0C    
       STA    $83     
       LDA    #$FD    
       STA    $84     
       LDA    #$01    
       STA    $C7     
       JSR    LFBBF   
LF05A: LDX    #$2A    
       STA    WSYNC   
       STX    VBLANK  
       STX    VSYNC   
       STX    TIM8T   
       INC    $FC     
       LDA    $89     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $85     
       LDA    $89     
       AND    #$F0    
       LSR            
       STA    $86     
       LDA    $8A     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $87     
       LDA    $8A     
       AND    #$F0    
       LSR            
       STA    $88     
       INC    $93     
       LDA    $B8     
       BMI    LF093   
       INC    $F4     
       LDA    #$00    
       STA    $CB     
LF093: LDX    #$3B    
LF095: LDA    INTIM   
       BNE    LF095   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       LDA    $B8     
       BPL    LF0BE   
       LDA    SWCHB   
       AND    #$08    
       CMP    $ED     
       BEQ    LF0BE   
       LDA    #$00    
       STA    AUDV1   
       STA    AUDV0   
       LDA    $90     
       CLC            
       ADC    #$10    
       STA    $90     
       JMP    LF74F   
LF0BE: LDX    #$06    
       LDA    $FA     
       CMP    #$01    
       BEQ    LF0D6   
       LDA    $C9     
       LDY    $EA     
       CMP    LFF97,Y 
       BCC    LF11A   
LF0CF: LDA    $BE,X   
       BNE    LF11A   
       DEX            
       BPL    LF0CF   
LF0D6: LDA    #$00    
       STA    $C9     
       STA    $FC     
       LDA    #$01    
       STA    $8E     
       LDA    #$4A    
       STA    $98     
       LDA    #$00    
       STA    $F1     
       STA    $8D     
       STA    $96     
       STA    $F5     
       LDA    $B8     
       BPL    LF0FE   
       INC    $EA     
       LDA    $EA     
       CMP    #$09    
       BCC    LF0FE   
       LDA    #$08    
       STA    $EA     
LF0FE: INC    $B9     
       LDA    $B9     
       CMP    #$07    
       BCC    LF10A   
       LDA    #$06    
       STA    $B9     
LF10A: TAY            
       LDA    LFFEB,Y 
       STA    $A7     
       LDA    #$FF    
       STA    $CA     
       BEQ    LF127   
       STA    $FA     
       BMI    LF127   
LF11A: LDA    $C9     
       LDY    $EA     
       CMP    LFF97,Y 
       BCC    LF127   
       LDA    #$FF    
       STA    $C8     
LF127: LDA    $CA     
       BEQ    LF197   
       DEC    $CA     
       BEQ    LF149   
       TAY            
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
       STA    AUDF1   
       TYA            
       AND    #$0F    
       STA    AUDV1   
       STA    AUDV0   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$07    
       STA    AUDC1   
       JMP    LF72F   
LF149: LDA    #$00    
       STA    AUDV1   
       STA    AUDV0   
       STA    $CA     
       STA    $C8     
       STA    $F5     
       STA    $F4     
       STA    $FA     
       STA    $A0     
       STA    $A1     
       STA    $A2     
       STA    $A3     
       STA    $A4     
       STA    $A5     
       STA    $A6     
       STA    $D2     
       LDA    #$0C    
       STA    $83     
       LDA    #$FD    
       STA    $84     
       LDX    #$01    
       STX    $8E     
       LDX    #$FF    
       TXS            
       JSR    LFBBF   
       LDA    $EA     
       CMP    #$03    
       BCC    LF185   
       LDA    $CB     
       BEQ    LF18F   
LF185: LDA    #$78    
       STA    $90     
       LDA    #$00    
       STA    $CB     
       BEQ    LF197   
LF18F: LDA    #$FF    
       STA    $CB     
       LDA    #$00    
       STA    $90     
LF197: LDA    $C5     
       BEQ    LF217   
       DEC    $8F     
       BNE    LF1C4   
       LDA    #$06    
       STA    $8F     
       INC    $C5     
       LDA    $C5     
       TAY            
       LDA    #$04    
       STA    AUDC0   
       LDA    #$05    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV0   
       STA    AUDV1   
       TYA            
       EOR    #$0F    
       STA    AUDF0   
       TYA            
       EOR    #$08    
       STA    AUDF1   
       CPY    #$30    
       BCS    LF1C7   
LF1C4: JMP    LF21F   
LF1C7: LDA    #$0C    
       STA    $83     
       LDA    #$FD    
       STA    $84     
       LDA    #$00    
       STA    AUDV1   
       STA    AUDV0   
       STA    $C5     
       STA    $B8     
       STA    $EA     
       STA    $C9     
       LDX    #$FF    
       TXS            
       JSR    LFBBF   
       LDA    #$78    
       STA    $90     
       LDA    $CC     
       CMP    $88     
       BCC    LF207   
       BNE    LF217   
       LDA    $CD     
       CMP    $87     
       BCC    LF207   
       BNE    LF217   
       LDA    $CE     
       CMP    $86     
       BCC    LF207   
       BNE    LF217   
       LDA    $CF     
       CMP    $85     
       BCC    LF207   
       BNE    LF217   
LF207: LDA    $88     
       STA    $CC     
       LDA    $87     
       STA    $CD     
       LDA    $86     
       STA    $CE     
       LDA    $85     
       STA    $CF     
LF217: LDA    INPT4   
       BMI    LF21F   
       LDA    $B8     
       BPL    LF225   
LF21F: LDA    SWCHB   
       LSR            
       BCS    LF24F   
LF225: LDY    #$FF    
       STY    $E1     
       STY    $B8     
       INY            
       STY    $D4     
       STY    $D5     
       STY    $89     
       STY    $8A     
       STY    AUDV1   
       STY    AUDV0   
       STY    $C5     
       STY    $CA     
       STY    $C8     
       INY            
       STY    $CB     
       STY    $8E     
       LDA    #$03    
       STA    $B9     
       LDA    LFFEE   
       STA    $A7     
       JMP    LF72F   
LF24F: LDA    $E1     
       BPL    LF278   
       STA    $B8     
       LDX    #$FF    
       TXS            
       JSR    LFBBF   
       LDA    #$00    
       STA    $E1     
       STA    $F4     
       STA    $C9     
       LDA    #$01    
       STA    $FA     
       LDA    $EA     
       STA    $D0     
       DEC    $EA     
       LDA    #$0C    
       STA    $83     
       LDA    #$FD    
       STA    $84     
       JMP    LF72F   
LF278: LDA    $C5     
       BEQ    LF27F   
       JMP    LF74F   
LF27F: LDA    SWCHB   
       LSR            
       LSR            
       BCC    LF28A   
       STA    $C6     
       BPL    LF2CB   
LF28A: LDA    #$00    
       STA    AUDV1   
       STA    AUDV0   
       STA    $D4     
       STA    $F5     
       LDA    #$4A    
       STA    $98     
       LDA    #$0C    
       STA    $83     
       LDA    #$FD    
       STA    $84     
       LDA    #$78    
       STA    $90     
       LDA    $C6     
       BPL    LF2B5   
       LDA    $B8     
       CLC            
       ADC    #$03    
       STA    $B8     
       BPL    LF2CB   
       LDA    #$00    
       STA    $B8     
LF2B5: INC    $EA     
       LDA    $EA     
       CMP    #$09    
       BCC    LF2C1   
       LDA    #$00    
       STA    $EA     
LF2C1: LDA    #$FF    
       STA    $C6     
       LDX    #$FF    
       TXS            
       JSR    LFBBF   
LF2CB: LDA    $F5     
       BNE    LF315   
       LDA    $F4     
       BPL    LF2D7   
       LDA    $B8     
       BMI    LF2DA   
LF2D7: JMP    LF388   
LF2DA: LDY    $8E     
       LDA.wy $00BD,Y 
       CMP    #$03    
       BNE    LF310   
       STA    $F4     
       LDA    #$50    
       STA    $D3     
       LDA    #$00    
       STA    $D4     
       LDA    #$0C    
       STA.wy $00BD,Y 
       LDA    $98     
       CMP    #$4A    
       BCS    LF304   
       LDA    #$9B    
       STA.wy $0098,Y 
       LDA    #$10    
       STA.wy $00D9,Y 
       BNE    LF2D7   
LF304: LDA    #$06    
       STA.wy $0098,Y 
       LDA    #$11    
       STA.wy $00D9,Y 
       BNE    LF2D7   
LF310: LDA    #$00    
       STA.wy $00BD,Y 
LF315: LDA    $8F     
       CMP    #$02    
       BEQ    LF31F   
       CMP    #$08    
       BNE    LF38C   
LF31F: INC    $F5     
       LDA    $CB     
       BNE    LF327   
       INC    $90     
LF327: LDA    $F5     
       TAY            
       LDA    #$0D    
       STA    AUDC0   
       LDA    #$04    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV0   
       STA    AUDV1   
       TYA            
       EOR    #$0F    
       STA    AUDF0   
       TYA            
       EOR    #$08    
       STA    AUDF1   
       CPY    #$17    
       BCS    LF351   
       LDA    LFFA1,Y 
       STA    $83     
       LDA    #$FF    
       STA    $84     
       BMI    LF38C   
LF351: LDA    #$0C    
       STA    $83     
       LDA    #$FD    
       STA    $84     
       LDA    #$00    
       STA    $D3     
       STA    $F1     
       STA    $F0     
       STA    $CA     
       STA    AUDV0   
       STA    AUDV1   
       STA    $F5     
       STA    $F4     
       STA    $FC     
       LDA    #$0A    
       STA    $F0     
       LDA    #$4A    
       STA    $98     
       LDA    $CB     
       BNE    LF37D   
       LDA    #$78    
       STA    $90     
LF37D: DEC    $B9     
       BPL    LF388   
       LDY    #$00    
       STY    $B9     
       INY            
       STY    $C5     
LF388: LDA    #$0C    
       STA    $83     
LF38C: LDY    $B9     
       LDA    LFFEB,Y 
       SEC            
       SBC    $EA     
       STA    $A7     
       LDX    #$07    
LF398: LDA    $F2     
       AND    LFEAD,X 
       BNE    LF3A2   
LF39F: JMP    LF430   
LF3A2: LDA    #$B4    
       STA    $A0,X   
       LDA    $F2     
       EOR    LFEAD,X 
       STA    $F2     
       LDA    $BE,X   
       TAY            
       CMP    #$03    
       BEQ    LF39F   
       CMP    #$0A    
       BEQ    LF3D1   
       LDA    $B8     
       BPL    LF3CE   
       INC    $C9     
       SED            
       LDA    $89     
       CLC            
       ADC    LFEB5,Y 
       STA    $89     
       LDA    $8A     
       ADC    #$00    
       STA    $8A     
       CLD            
LF3CE: JMP    LF40E   
LF3D1: LDA    $DA,X   
       AND    #$01    
       BEQ    LF3E9   
       LDA    $99,X   
       CMP    #$0E    
       BCC    LF430   
       CMP    #$55    
       BCS    LF3FB   
       SEC            
       SBC    #$08    
       STA    $99,X   
       JMP    LF430   
LF3E9: LDA    $99,X   
       CMP    #$91    
       BCS    LF430   
       CMP    #$4B    
       BCC    LF3FB   
       CLC            
       ADC    #$08    
       STA    $99,X   
       JMP    LF430   
LF3FB: LDA    $B8     
       BPL    LF40E   
       SED            
       LDA    $89     
       CLC            
       ADC    #$05    
       STA    $89     
       LDA    $8A     
       ADC    #$00    
       STA    $8A     
       CLD            
LF40E: LDA    #$0B    
       STA    $BE,X   
       LDA    $DA,X   
       AND    #$01    
       BEQ    LF424   
       LDA    $BE,X   
       CMP    #$55    
       BCS    LF430   
       LDA    $DA,X   
       EOR    #$01    
       STA    $DA,X   
LF424: LDA    $99,X   
       CMP    #$55    
       BCC    LF430   
       LDA    $DA,X   
       EOR    #$01    
       STA    $DA,X   
LF430: LDA    $A0,X   
       BEQ    LF445   
       CLC            
       ADC    $E3,X   
       STA    $A0,X   
       CMP    #$9E    
       BCS    LF441   
       CMP    #$01    
       BCS    LF445   
LF441: LDA    #$00    
       STA    $A0,X   
LF445: DEX            
       BMI    LF44B   
       JMP    LF398   
LF44B: LDA    $82     
       CLC            
       ADC    #$18    
       STA    $82     
       BPL    LF45B   
       LDA    #$6C    
       STA    $D8     
       JMP    LF45F   
LF45B: LDA    #$79    
       STA    $D8     
LF45F: INC    $80     
       LDX    #$06    
LF463: LDA    $BE,X   
       CMP    #$0B    
       BNE    LF483   
       LDA    $99,X   
       CMP    #$5F    
       BCS    LF47D   
       CMP    #$41    
       BCC    LF47D   
       LDA    #$00    
       STA    $BE,X   
       LDA    #$A0    
       STA    $99,X   
       BMI    LF483   
LF47D: LDA    $DA,X   
       AND    #$0F    
       STA    $DA,X   
LF483: DEX            
       BPL    LF463   
       LDX    #$06    
LF488: LDA    $DA,X   
       CMP    #$FF    
       BEQ    LF49C   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E2     
       AND    $80     
       CMP    $E2     
       BNE    LF510   
       LDA    $99,X   
LF49C: BEQ    LF510   
       LDY    $BE,X   
       CPY    #$01    
       BNE    LF4AA   
       INC    $C7     
       INC    $C7     
       INC    $C7     
LF4AA: LDA    $DA,X   
       AND    #$01    
       BEQ    LF4B8   
       LDA    $99,X   
       CLC            
       ADC    $C7     
       JMP    LF4BD   
LF4B8: LDA    $99,X   
       SEC            
       SBC    $C7     
LF4BD: STA    $99,X   
       CPY    #$01    
       BNE    LF4C9   
       DEC    $C7     
       DEC    $C7     
       DEC    $C7     
LF4C9: CMP    #$C8    
       BCS    LF500   
       CMP    #$9B    
       BCS    LF4D5   
       CMP    #$06    
       BCS    LF510   
LF4D5: LDA    $BE,X   
       CMP    #$0A    
       BEQ    LF4EF   
       CMP    #$01    
       BNE    LF4E5   
       LDA    #$05    
       STA    $96     
       BNE    LF4EF   
LF4E5: CMP    #$09    
       BNE    LF500   
       LDA    #$0A    
       STA    $BE,X   
       STA    $F1     
LF4EF: LDA    $DA,X   
       EOR    #$01    
       STA    $DA,X   
       LDA    $F5     
       BEQ    LF510   
       LDA    #$00    
       STA    $BE,X   
       JMP    LF510   
LF500: STX    $80     
       LDA    #$00    
       STA    $99,X   
       STA    $BE,X   
       LDX    #$FF    
       TXS            
       JSR    LFB43   
       LDX    $80     
LF510: DEX            
       BMI    LF516   
       JMP    LF488   
LF516: INC    $BA     
       BPL    LF54F   
       LDA    #$00    
       STA    $BA     
       LDA    $D4     
       BEQ    LF53E   
       DEC    $D4     
       BNE    LF53E   
       LDX    $D5     
       LDA    #$01    
       STA    $BE,X   
       LDA    $99,X   
       CMP    #$50    
       BCS    LF53A   
       INC    $99,X   
       LDA    #$01    
       STA    $DA,X   
       BNE    LF53E   
LF53A: LDA    #$00    
       STA    $DA,X   
LF53E: LDA    $CB     
       BEQ    LF548   
       LDA    #$00    
       STA    $90     
       BEQ    LF54F   
LF548: LDA    $90     
       CLC            
       ADC    #$10    
       STA    $90     
LF54F: LDA    $B8     
       BMI    LF556   
       JMP    LF60C   
LF556: LDA    $F5     
       BEQ    LF55D   
       JMP    LF60C   
LF55D: LDA    $D3     
       BEQ    LF595   
       ASL            
       ASL            
       STA    AUDF0   
       EOR    #$28    
       STA    AUDF1   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$04    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV1   
       STA    AUDV0   
       SED            
       LDA    $89     
       CLC            
       ADC    #$01    
       STA    $89     
       LDA    $8A     
       ADC    #$00    
       STA    $8A     
       CLD            
       DEC    $D3     
       BNE    LF592   
       LDA    #$00    
       STA    AUDV1   
       STA    AUDV0   
       INC    $D2     
LF592: JMP    LF60C   
LF595: LDA    $96     
       BEQ    LF5AB   
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$01    
       STA    AUDC0   
       DEC    $96     
       BNE    LF5AB   
       LDA    #$00    
       STA    AUDV0   
LF5AB: LDA    $8D     
       BEQ    LF5C3   
       EOR    #$1F    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       DEC    $8D     
       BNE    LF5C3   
       LDA    #$00    
       STA    AUDV0   
LF5C3: LDA    $F1     
       BEQ    LF5DF   
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC1   
       INC    $F1     
       LDA    $F1     
       CMP    #$1E    
       BNE    LF60C   
       LDA    #$00    
       STA    $F1     
       STA    AUDV1   
LF5DF: LDA    $F0     
       BEQ    LF5F5   
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       DEC    $F0     
       BNE    LF5F5   
       LDA    #$00    
       STA    AUDV1   
LF5F5: LDA    $FB     
       BEQ    LF60C   
       LSR            
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
       DEC    $FB     
       BNE    LF60C   
       LDA    #$00    
       STA    AUDV1   
LF60C: DEC    $8F     
       BPL    LF628   
       LDA    #$09    
       STA    $8F     
       LDA    #$FD    
       STA    $F8     
       LDA    $F7     
       CMP    #$A9    
       BNE    LF624   
       LDA    #$B3    
       STA    $F7     
       BNE    LF628   
LF624: LDA    #$A9    
       STA    $F7     
LF628: LDA    $F5     
       BEQ    LF62F   
       JMP    LF72F   
LF62F: LDA    $B8     
       BMI    LF63B   
       LDA    $94     
       LDX    #$03    
       STX    $95     
       BNE    LF645   
LF63B: LDA    SWCHA   
       CMP    #$FF    
       BNE    LF645   
       JMP    LF6F7   
LF645: INC    $94     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       TAY            
       AND    #$08    
       BEQ    LF674   
       LDX    $8E     
       LDA    $BD,X   
       CMP    #$03    
       BEQ    LF660   
       LDA    $98     
       CMP    #$4A    
       BEQ    LF66E   
LF660: LDA    $98     
       CMP    #$90    
       BCS    LF66E   
       LDA    $B8     
       BPL    LF66E   
       INC    $98     
       INC    $98     
LF66E: LDA    #$00    
       STA    $F3     
       BEQ    LF699   
LF674: TYA            
       AND    #$04    
       BEQ    LF699   
       LDX    $8E     
       LDA    $BD,X   
       CMP    #$03    
       BEQ    LF687   
       LDA    $98     
       CMP    #$4A    
       BEQ    LF695   
LF687: LDA    $98     
       CMP    #$08    
       BCC    LF695   
       LDA    $B8     
       BPL    LF695   
       DEC    $98     
       DEC    $98     
LF695: LDA    #$08    
       STA    $F3     
LF699: TYA            
       AND    #$01    
       BEQ    LF6CC   
       INC    $95     
       LDA    $95     
       CMP    #$04    
       BCC    LF6F7   
       LDA    #$00    
       STA    $95     
       STA    $FC     
       LDA    #$0E    
       STA    $96     
       LDA    $98     
       CMP    #$46    
       BCC    LF6F7   
       CMP    #$50    
       BCS    LF6F7   
       LDA    #$4A    
       STA    $98     
       INC    $8E     
       LDA    $8E     
       CMP    #$07    
       BCC    LF6F7   
       LDA    #$07    
       STA    $8E     
       BPL    LF6F7   
LF6CC: TYA            
       AND    #$02    
       BEQ    LF6F7   
       INC    $95     
       LDA    $95     
       CMP    #$04    
       BCC    LF6F7   
       LDA    #$0E    
       STA    $96     
       LDA    #$00    
       STA    $95     
       STA    $FC     
       LDA    $98     
       CMP    #$46    
       BCC    LF6F7   
       CMP    #$4F    
       BCS    LF6F7   
       LDA    #$4A    
       STA    $98     
       DEC    $8E     
       BNE    LF6F7   
       INC    $8E     
LF6F7: LDA    $B8     
       BPL    LF6FF   
       LDA    INPT4   
       BMI    LF72F   
LF6FF: LDA    $98     
       CMP    #$4A    
       BNE    LF72F   
       LDY    $8E     
       INC    $94     
       DEY            
       LDA.wy $00A0,Y 
       BNE    LF72F   
       LDA.wy $00BE,Y 
       CMP    #$03    
       BEQ    LF72F   
       LDA    #$4E    
       STA.wy $00A0,Y 
       LDA    #$0E    
       STA    $8D     
       LDA    $F3     
       BNE    LF72A   
       LDA    #$04    
       STA.wy $00E3,Y 
       BPL    LF72F   
LF72A: LDA    #$FC    
       STA.wy $00E3,Y 
LF72F: LDY    #$0F    
LF731: LDA.wy $0098,Y 
       LDX    #$01    
LF736: CMP    #$0F    
       BCC    LF740   
       SEC            
       SBC    #$0F    
       INX            
       BNE    LF736   
LF740: STX    $A8,Y   
       TAX            
       LDA    LFFD4,X 
       ORA.wy $00A8,Y 
       STA.wy $00A8,Y 
       DEY            
       BPL    LF731   
LF74F: LDA    INTIM   
       BNE    LF74F   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$07    
       STA    $81     
       LDX    #$D4    
LF75E: STA    WSYNC   
       CPX    #$D4    
       BEQ    LF774   
LF764: DEX            
       BEQ    LF76A   
       JMP    LF75E   
LF76A: LDA    #$00    
       STA    COLUPF  
       JMP    LF05A   
LF771: JMP    LF7F4   
LF774: LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDA    $B8     
       BMI    LF771   
       LDA    $90     
       CMP    #$78    
       BCS    LF771   
       STA    HMCLR   
       LDA    $F4     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$04    
       STA    WSYNC   
LF790: DEX            
       BNE    LF790   
       NOP            
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
       STA    $8C     
       STA    VDELP0  
       STA    VDELP1  
LF7B3: LDY    $8C     
       LDA    LFF28,Y 
       STA.w  $008B   
       STA    WSYNC   
       LDA    LFF20,Y 
       TAX            
       LDA    LFF00,Y 
       NOP            
       BIT    $FF     
       STA    GRP0    
       LDA    LFF08,Y 
       STA.w  $001C   
       LDA    LFF10,Y 
       STA.w  $001B   
       LDA    LFF18,Y 
       LDY.w  $008B   
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $8C     
       BPL    LF7B3   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       JMP    LF898   
LF7F4: STA    HMCLR   
       LDA    #$0F    
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
       BIT    $FF     
       BIT    $FF     
       NOP            
       BIT    $FF     
LF815: DEX            
       BNE    LF815   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $8B     
       LDA    #$FE    
       STA    $8C     
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDA    $B8     
       BMI    LF842   
       LDA    $90     
       CMP    #$B8    
       BCC    LF842   
       LDA    #$38    
       STA    COLUP0  
       STA    COLUP1  
       BPL    LF86E   
LF842: LDY    $85     
       LDA    ($8B),Y 
       TAX            
       LDY    $88     
       STA    WSYNC   
       NOP            
       LDA    ($8B),Y 
       LDY    $87     
       STA    GRP0    
       LDA    ($8B),Y 
       STA    GRP1    
       LDY    $86     
       LDA    ($8B),Y 
       STA    $E2     
       LDY    #$00    
       LDA    ($8B),Y 
       LDY    $E2     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       DEC    $8B     
       BPL    LF842   
       BMI    LF898   
LF86E: LDY    $CF     
       LDA    ($8B),Y 
       TAX            
       LDY    $CC     
       STA    WSYNC   
       NOP            
       LDA    ($8B),Y 
       LDY    $CD     
       STA    GRP0    
       LDA    ($8B),Y 
       STA    GRP1    
       LDY    $CE     
       LDA    ($8B),Y 
       STA    $E2     
       LDY    #$00    
       LDA    ($8B),Y 
       LDY    $E2     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       DEC    $8B     
       BPL    LF86E   
LF898: LDA    #$00    
       STA    NUSIZ1  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       LDA    $FA     
       BNE    LF8AB   
       JMP    LF952   
LF8AB: STA    WSYNC   
       LDA    #$00    
       STA    NUSIZ0  
       LDA    #$08    
       STA    $FB     
       LDA    #$0F    
       STA    COLUP0  
       STA    WSYNC   
       LDY    $EA     
       LDA    LFEC2,Y 
       STA    $8B     
       LDA    #$FE    
       STA    $8C     
       STA    WSYNC   
       DEC    $F7     
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       INC    $F8     
       LDX    #$90    
       LDY    $F7     
       LDA    $F8     
       STA    $F9     
       LDA    #$C8    
       STA    PF0     
       LDA    #$3C    
       STA    PF1     
       LDA    #$2C    
       STA    PF2     
       BIT    $FF     
       BIT    $FF     
       NOP            
       STA    RESP1   
       STA.w  $0010   
       STA    COLUP1  
       LDA    #$07    
       STA    NUSIZ1  
LF8FA: DEC    $F9     
       LDA    $F9     
       STA    WSYNC   
       STA    COLUPF  
       DEY            
       STY    COLUBK  
       CPX    #$3C    
       BNE    LF911   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       BEQ    LF93D   
LF911: BCC    LF93D   
       CPX    #$5A    
       BCS    LF93D   
       CPX    #$50    
       BCC    LF927   
       LDA    #$FF    
       STA    GRP1    
       LDA    #$00    
       STA    GRP0    
       STA    COLUP1  
       BEQ    LF93D   
LF927: CPX    #$48    
       BCC    LF939   
       STY    $A0     
       LDY    $FB     
       LDA    ($8B),Y 
       STA    GRP0    
       DEC    $FB     
       LDY    $A0     
       BNE    LF93D   
LF939: LDA    #$00    
       STA    GRP0    
LF93D: DEX            
       BNE    LF8FA   
       STA    WSYNC   
       STX    COLUPF  
       STX    COLUBK  
       STX    NUSIZ1  
       LDX    #$04    
LF94A: STA    WSYNC   
       DEX            
       BNE    LF94A   
       JMP    LFA31   
LF952: LDA    #$30    
       STA    NUSIZ0  
       LDA    $A8     
       STA    HMP0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
       LDA    $F3     
       STA    REFP0   
       LDA    $A8     
       NOP            
       BIT    $FF     
       BIT    $FF     
LF96A: DEX            
       BNE    LF96A   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STX    HMP0    
LF977: LDY    $81     
       LDA.wy $00AF,Y 
       AND    #$0F    
       TAX            
       STA    WSYNC   
       LDA.wy $00AF,Y 
       STA    HMM0    
       STA    CXCLR   
       LDA    $90     
       STA    COLUPF  
LF98C: DEX            
       BNE    LF98C   
       STA    RESM0   
       STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       LDA    LFFE3,Y 
       STA    PF2     
       LDA.wy $00A8,Y 
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
       LDA.wy $00A8,Y 
       NOP            
       NOP            
       NOP            
       NOP            
       BIT    $FF     
LF9B1: DEX            
       BNE    LF9B1   
       STA    RESP1   
       STA    WSYNC   
       LDA.wy $009F,Y 
       BEQ    LF9C7   
       LDA    #$93    
       STA    $EB     
       LDA    #$FE    
       STA    $EC     
       BMI    LF9CF   
LF9C7: LDA    #$B6    
       STA    $EB     
       LDA    #$FC    
       STA    $EC     
LF9CF: LDA.wy $00BD,Y 
       TAY            
       CPY    #$09    
       BEQ    LF9E6   
       CPY    #$0C    
       BEQ    LF9E6   
       CPY    #$0B    
       BCC    LF9ED   
       LDA    #$8D    
       STA    $EE     
       JMP    LF9F1   
LF9E6: LDA    #$7D    
       STA    $EE     
       JMP    LF9F1   
LF9ED: LDA    #$9B    
       STA    $EE     
LF9F1: LDA    ($D8),Y 
       STA    $BB     
       LDY    $81     
       LDA.wy $00D9,Y 
       AND    #$01    
       BNE    LFA04   
       LDA    #$08    
       STA    REFP1   
       BPL    LFA08   
LFA04: LDA    #$00    
       STA    REFP1   
LFA08: CPY    $8E     
       BEQ    LFA16   
       LDA    #$B6    
       STA    $D6     
       LDA    #$FC    
       STA    $D7     
       BMI    LFA1E   
LFA16: LDA    $83     
       STA    $D6     
       LDA    $84     
       STA    $D7     
LFA1E: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEC    $81     
       BMI    LFA31   
       JMP    LFB06   
LFA31: LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDA    $B8     
       BMI    LFAA5   
       LDA    $F7     
       LDY    $EA     
       LDA    LFEC2,Y 
       STA    $8B     
       LDA    #$FE    
       STA    $8C     
       LDA    #$C5    
       STA    HMP0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
       BIT    $FF     
       NOP            
       NOP            
       BIT    $FF     
       BIT    $FF     
       BIT    $FF     
       BIT    $FF     
LFA5D: DEX            
       BNE    LFA5D   
       STA    RESP0   
       STA    WSYNC   
       LDA    $90     
       CMP    #$78    
       BCC    LFA8A   
       LDY    #$08    
LFA6C: LDA    #$0F    
       STA    WSYNC   
       STA    COLUP0  
       LDA    ($8B),Y 
       STA    GRP0    
       DEY            
       BPL    LFA6C   
       LDA    #$00    
       STA    GRP0    
       STA    WSYNC   
       STA    WSYNC   
LFA81: STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JMP    LFB01   
LFA8A: LDY    #$09    
LFA8C: STA    WSYNC   
       LDA    LFDBD,Y 
       STA    COLUP0  
       LDA    ($F7),Y 
       STA    GRP0    
       DEY            
       BPL    LFA8C   
       STA    WSYNC   
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA    GRP0    
       BEQ    LFA81   
LFAA5: LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDY    $B9     
       LDA    LFE50,Y 
       STA    $8B     
       LDA    LFE5E,Y 
       STA    $8C     
       LDA    LFE57,Y 
       STA    $D6     
       LDA    LFE65,Y 
       STA    $D7     
       LDA    $B7     
       STA    HMP0    
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
       LDY    $B9     
       LDA    LFD1A,Y 
       STA    NUSIZ0  
       LDA    LFD21,Y 
       STA    NUSIZ1  
LFAD8: DEX            
       BNE    LFAD8   
       STA    RESP0   
       NOP            
       NOP            
       BIT    $FF     
       BIT    $FF     
       BIT    $FF     
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$0C    
LFAED: LDA    ($8B),Y 
       LDX    LFD6E,Y 
       STA    WSYNC   
       STA    GRP0    
       STX    COLUP0  
       STX    COLUP1  
       LDA    ($D6),Y 
       STA    GRP1    
       DEY            
       BPL    LFAED   
LFB01: LDX    #$17    
       JMP    LF764   
LFB06: LDY    #$0E    
LFB08: LDA    ($EE),Y 
       TAX            
       LDA    ($D6),Y 
       STA    $E2     
       LDA    ($EB),Y 
       STA    $F9     
       LDA    ($BB),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    LFD6E,Y 
       STA    COLUP0  
       LDA    $F9     
       STA    ENAM0   
       LDA    $E2     
       STX    COLUP1  
       STA    GRP0    
       DEY            
       BPL    LFB08   
       LDA    CXPPMM  
       BPL    LFB33   
       STA    $F4     
       BMI    LFB40   
LFB33: LDA    CXM0P   
       BPL    LFB40   
       LDY    $81     
       LDA    $F2     
       ORA    LFEAD,Y 
       STA    $F2     
LFB40: JMP    LF977   
LFB43: LDX    $8E     
       DEX            
       LDA    $99,X   
       BNE    LFB58   
       LDA    $FC     
       BPL    LFB58   
       LDA    #$19    
       STA    $FB     
       LDA    #$0C    
       STA    $FC     
       BNE    LFB78   
LFB58: JMP    LFF84   
LFB5B: LDA    $94     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       BEQ    LFB66   
       DEX            
LFB66: LDA    $99,X   
       BEQ    LFB6C   
       LDX    $80     
LFB6C: LDA    $8F     
       LDY    $F5     
       BNE    LFB76   
       LDY    $C8     
       BPL    LFB78   
LFB76: LDA    #$00    
LFB78: TAY            
       STA    $BE,X   
       CMP    #$01    
       BNE    LFB81   
       INC    $BE,X   
LFB81: CMP    #$09    
       BNE    LFB89   
       LDA    #$1E    
       STA    $F0     
LFB89: LDA    $93     
       BPL    LFB98   
       LDA    #$9B    
       STA    $99,X   
       LDA    LFE86,Y 
       STA    $DA,X   
       BPL    LFBA3   
LFB98: LDA    #$06    
       STA    $99,X   
       LDA    #$01    
       ORA    LFE86,Y 
       STA    $DA,X   
LFBA3: CPY    #$03    
       BNE    LFBBB   
       LDA    $D4     
       BNE    LFB76   
       LDA    $D2     
       CMP    #$0F    
       BCS    LFB76   
       LDA    #$02    
       STA    $D4     
       STX    $D5     
       LDA    #$FF    
       STA    $DA,X   
LFBBB: LDA    $80     
       TAX            
       RTS            

LFBBF: LDY    #$06    
       LDX    $EA     
LFBC3: LDA    LFFB9,X 
       STA    $8B     
       LDA    #$FD    
       STA    $8C     
       LDA    ($8B),Y 
       STA.wy $0099,Y 
       LDA    #$00    
       STA.wy $00DA,Y 
       LDA    LFFC2,X 
       STA    $8B     
       LDA    ($8B),Y 
       STA.wy $00BE,Y 
       DEY            
       BPL    LFBC3   
       LDA    LFFCB,X 
       STA    $C7     
       RTS            

LFBE9: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$70,$70,$47,$47,$44,$44,$7C
       .byte $FE,$F0,$E0,$E6,$E6,$7C,$38,$00,$00,$1E,$10,$18,$24,$42,$81,$42
       .byte $24,$18,$08,$78,$00,$00,$00,$78,$08,$18,$3C,$7E,$FF,$7E,$3C,$18
       .byte $10,$1E,$00,$00,$00,$00,$00,$FF,$00,$FF,$00,$FF,$00,$00,$00,$00
       .byte $00,$00,$7E,$D5,$AB,$7E,$18,$F8,$CF,$F8,$18,$7E,$AB,$D5,$7E,$00
       .byte $00,$00,$18,$3C,$66,$C3,$C3,$C3,$66,$3C,$18,$00,$00,$00,$00,$00
       .byte $00,$00,$18,$3C,$3C,$3C,$18,$00,$00,$00,$00,$00,$7E,$AB,$D5,$7E
       .byte $18,$F8,$CF,$F8,$18,$7E,$D5,$AB,$7E,$00,$00,$FF,$42,$24,$18,$18
       .byte $FF,$18,$18,$24,$42,$FF,$00,$00,$00,$81,$C3,$A5,$99,$99,$FF,$99
       .byte $99,$A5,$C3,$81,$00,$00,$FE,$10,$10,$10,$38,$7C,$6C,$7C,$38,$10
       .byte $10,$10,$FE,$00,$00,$00,$FE,$10,$38,$7C,$6C,$7C,$38,$10,$FE,$00
       .byte $00,$00,$00,$00,$00,$60,$78,$BE,$71,$BE,$78,$60,$00,$00,$00,$00
       .byte $00,$00,$00,$60,$B8,$7E,$B1,$7E,$B8,$60,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$18
       .byte $0C,$06,$FF,$FF,$06,$0C,$18,$10,$00,$00,$18,$18,$3C,$7E,$FF,$00
       .byte $00,$00,$FF,$7E,$3C,$18,$18,$00,$12,$24,$22,$94,$FA,$1D,$38,$7C
       .byte $9A,$54,$24,$24,$62,$00,$00,$08,$44,$69,$A5,$DA,$7C,$1E,$29,$6B
       .byte $58,$50,$88,$8A,$8A,$8A,$8A,$8A,$8A,$8A,$0F,$0F,$8A,$8A,$8A,$8A
       .byte $8A,$00,$00,$00,$00,$F8,$E0,$F8,$FE,$FF,$E0,$FF,$FE,$F8,$E0,$F8
       .byte $00
LFD1A: .byte $00,$00,$01,$03,$03,$03,$03
LFD21: .byte $00,$00,$00,$00,$00,$01,$03,$00,$00,$00,$40,$20,$10,$30,$00,$00
       .byte $40,$10,$30,$20,$38,$00,$40,$38,$25,$30,$10,$18,$00,$00,$00,$04
       .byte $05,$06,$05,$00,$00,$04,$04,$05,$06,$05,$00,$05,$05,$06,$06,$04
       .byte $04,$23,$28,$30,$40,$88,$8E,$80,$04,$06,$05,$08,$05,$05,$06,$00
       .byte $00,$00,$00,$20,$40,$10,$00,$00,$00,$00,$06,$04,$03
LFD6E: .byte $00,$25,$25,$25,$8B,$89,$0F,$25,$0F,$89,$8B,$25,$25,$25,$00,$0F
       .byte $0F,$8A,$8A,$8A,$8A,$8A,$0F,$0F,$8A,$8A,$8A,$8A,$0F,$0F,$0F,$00
       .byte $2C,$29,$25,$29,$27,$2F,$0F,$2A,$2A,$23,$25,$29,$2C,$00,$38,$48
       .byte $58,$68,$C8,$E8,$25,$E8,$C8,$58,$48,$38,$28,$07,$07,$E4,$E4,$24
       .byte $FF,$DB,$DB,$7E,$3C,$E0,$E0,$27,$27,$24,$FF,$DB,$DB,$7E,$3C
LFDBD: .byte $0F,$0F,$0F,$0F,$0F,$98,$98,$98,$98,$98,$A5,$99,$6A,$A5,$B1,$6A
       .byte $45,$99,$A6,$B1,$85,$B1,$86,$99,$4C,$64,$FA,$70,$60,$50,$40,$30
       .byte $20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$00,$E0,$0E,$EE,$00,$05
       .byte $06,$07,$08,$35,$31,$9E,$BA,$B0,$A0,$90,$00,$E0,$0E,$EE,$00,$05
       .byte $06,$07,$08,$3E,$63,$63,$63,$63,$63,$63,$3E,$1E,$0C,$0C,$0C,$0C
       .byte $0C,$1C,$0C,$7F,$60,$60,$3E,$03,$03,$43,$3E,$3E,$43,$03,$03,$1E
       .byte $03,$43,$3E,$06,$06,$06,$7F,$26,$16,$0E,$06,$3E,$43,$03,$03,$7E
       .byte $60,$60,$7F,$3E,$63,$63,$63,$7E,$60,$60,$3E,$30,$30,$10,$08,$04
       .byte $02,$41,$7F,$3E,$63,$63,$63,$3E,$63,$63,$3E,$3E,$43,$03,$3F,$63
       .byte $63,$63,$3E
LFE50: .byte $B6,$0C,$0C,$0C,$0C,$0C,$0C
LFE57: .byte $B6,$B6,$B6,$B6,$0C,$0C,$0C
LFE5E: .byte $FC,$FD,$FD,$FD,$FD,$FD,$FD
LFE65: .byte $FC,$FC,$FC,$FC,$FD,$FD,$FD,$B6,$46,$62,$38,$7E,$1B,$9A,$62,$00
       .byte $C4,$2A,$E0,$D2,$B6,$46,$70,$46,$8C,$1B,$A8,$70,$0E,$C4,$54,$EE
       .byte $D2
LFE86: .byte $00,$00,$70,$10,$30,$70,$00,$10,$30,$00,$70,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$0B,$16
       .byte $21,$2C,$37,$42,$4D,$58,$63
LFEAD: .byte $01,$02,$04,$08,$10,$20,$40,$80
LFEB5: .byte $00,$10,$02,$06,$06,$01,$03,$01,$04,$10,$05,$00,$08
LFEC2: .byte $07,$0F,$17,$1F,$27,$2F,$37,$3F,$47,$02,$A7,$AD,$FD,$07,$02,$00
       .byte $00,$30,$15,$B5,$C5,$95,$E5,$F5,$05,$A5,$D5,$75,$85,$3C,$4C,$5C
       .byte $6C,$7C,$8C,$9C,$AC,$FD,$FD,$FC,$FC,$FC,$FC,$FC,$FD,$FC,$FC,$FC
       .byte $FC,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD,$01,$00,$FF,$01,$FF
LFF00: .byte $08,$08,$08,$08,$08,$08,$08,$3E
LFF08: .byte $72,$8A,$8A,$8A,$8B,$8A,$8A,$8B
LFF10: .byte $28,$28,$48,$8A,$CA,$2A,$2D,$C8
LFF18: .byte $9C,$A2,$A2,$A2,$A2,$A2,$A2,$9C
LFF20: .byte $FB,$22,$22,$22,$22,$22,$22,$FA
LFF28: .byte $E0,$00,$00,$00,$00,$00,$00,$00,$00,$F8,$F8,$E0,$F8,$FC,$FF,$FF
       .byte $FF,$FC,$F8,$E0,$F8,$F8,$00,$00,$F8,$A0,$98,$84,$AB,$80,$AB,$84
       .byte $98,$A0,$F8,$00,$00,$00,$00,$78,$50,$48,$66,$57,$66,$48,$50,$78
       .byte $00,$00,$00,$00,$00,$00,$38,$30,$2E,$20,$2E,$30,$38,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$18,$1C,$1C,$1C,$18,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$10,$18,$10,$00,$00,$00,$00,$00
LFF84: LDA    $93     
       ROR            
       STA    $93     
       LDA    $94     
       ROR            
       EOR    $93     
       LDX    $94     
       STA    $94     
       STX    $93     
       JMP    LFB5B   
LFF97: .byte $40,$70,$90,$B0,$C0,$D0,$E0,$F0,$F0,$FF
LFFA1: .byte $30,$30,$30,$30,$30,$30,$30,$3E,$4C,$5A,$68,$76,$76,$76,$76,$76
       .byte $76,$76,$76,$76,$68,$5A,$4C,$3E
LFFB9: .byte $60,$28,$2F,$36,$52,$28,$2F,$36,$52
LFFC2: .byte $67,$3D,$44,$4B,$59,$3D,$44,$4B,$59
LFFCB: .byte $01,$01,$01,$01,$01,$02,$02,$02,$02
LFFD4: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90
LFFE3: .byte $FF,$3F,$3F,$3F,$3F,$3F,$3F,$FF
LFFEB: .byte $00,$4A,$42
LFFEE: .byte $3A,$32,$2A,$22,$DD,$E2,$E7,$EC,$F1,$F6,$FB,$FB,$00,$00,$00,$F0
       .byte $00,$F0
