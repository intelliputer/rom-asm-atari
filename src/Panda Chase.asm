; Disassembly of roms/Panda Chase.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Panda Chase.bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM1   =  $13
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP1FB  =  $33
CXM1FB  =  $35
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       JSR    LF83B   
       LDA    #$FF    
       STA    $DB     
       STA    $F0     
       LDX    #$0A    
       LDA    #$FC    
LF019: STA    $AF,X   
       DEX            
       DEX            
       BPL    LF019   
       LDA    #$FE    
       STA    $A4     
LF023: LDY    #$FF    
       STY    VSYNC   
       STY    VBLANK  
       LDA    #$17    
       STA    TIM8T   
       INC    $DC     
       DEC    $DD     
       INC    $DE     
       INC    $DF     
LF036: LDY    INTIM   
       BNE    LF036   
       STY    WSYNC   
       STY    VSYNC   
       LDA    #$1C    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF077   
       LDA    $EB     
       BMI    LF050   
LF04E: DEC    $EB     
LF050: LDA    $C6     
       STA    $EF     
       LDX    #$9C    
       LDA    #$00    
LF058: STA    $4E,X   
       DEX            
       BNE    LF058   
       LDA    $EF     
       STA    $C6     
       JSR    LF069   
       JSR    LF83B   
       BPL    LF0CC   
LF069: CLC            
       ADC    #$01    
       CMP    #$0A    
       BCC    LF074   
       SBC    #$0A    
       ORA    #$10    
LF074: STA    $AA     
       RTS            

LF077: LDX    #$00    
       LSR            
       BCS    LF09B   
       LDA    $EB     
       BPL    LF04E   
       LDA    $DA     
       BEQ    LF088   
       DEC    $DA     
       BPL    LF09D   
LF088: STX    $A9     
       STX    $A8     
       INC    $EF     
       LDA    $EF     
       AND    #$0F    
       STA    $EF     
       STA    $C6     
       JSR    LF069   
       LDX    #$1E    
LF09B: STX    $DA     
LF09D: LDA    $E9     
       BMI    LF0DF   
       LDA    INPT4   
       BMI    LF0BF   
       LDA    $EB     
       BPL    LF04E   
       LDA    $C6     
       STA    $EF     
       LDA    #$30    
       STA    $80     
       LDA    #$FF    
       STA    $E9     
       INC    $EB     
       LDY    #$00    
       STY    $AA     
       STY    $E5     
       BEQ    LF0CC   
LF0BF: LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BEQ    LF0CA   
       LDY    #$FF    
LF0CA: STY    $E5     
LF0CC: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JSR    LF424   
       LDX    #$01    
       STX    CTRLPF  
       INX            
       STX    $A7     
       JMP    LF550   
LF0DF: LDA    $C4     
       BNE    LF104   
       LDA    $DB     
       BPL    LF10A   
       LDA    LFC3D   
       STA    $9A     
       LDA    LFC3E   
       STA    $9B     
       LDA    LFC3F   
       STA    $F6     
       LDA    LFC40   
       STA    $F7     
       LDA    #$00    
       STA    $F5     
       STA    $DB     
       JMP    LF10A   
LF104: LDA    #$FF    
       STA    $F5     
       STA    $DB     
LF10A: LDX    $F0     
       BPL    LF111   
       INX            
       STX    $CA     
LF111: LDA    $CB     
       CMP    $CA     
       BEQ    LF131   
       BCC    LF131   
       STA    $CA     
       TAY            
       LDA    LFC41,Y 
       STA    $F1     
       INY            
       INY            
       INY            
       INY            
       INY            
       LDA    LFC41,Y 
       STA    $F2     
       LDA    #$00    
       STA    $F0     
       STA    AUDV1   
LF131: LDA    #$00    
       STA    $CB     
       LDY    $F0     
       BMI    LF159   
       BNE    LF157   
       LDA    ($F1),Y 
       STA    AUDV0   
       BEQ    LF157   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0   
       INY            
       LDA    ($F1),Y 
       STA    AUDF0   
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F0     
       INC    $F1     
       INC    $F1     
LF157: DEC    $F0     
LF159: LDY    $DB     
       BMI    LF1A2   
       BNE    LF185   
       LDA    ($9A),Y 
       BEQ    LF19D   
       PHA            
       AND    #$0F    
       TAY            
       LDA    LFE88,Y 
       BNE    LF16E   
       STA    AUDV1   
LF16E: STA    AUDF1   
       STA    $FB     
       LDA    #$05    
       STA    AUDC1   
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F3     
       STA    $F4     
       INC    $9A     
       LDY    #$0A    
       STY    $DB     
LF185: DEC    $F4     
       BNE    LF19F   
       LDA    $F3     
       STA    $F4     
       DEY            
       STY    $DB     
       LDA    $FB     
       BEQ    LF199   
       INY            
       INY            
       INY            
       INY            
       TYA            
LF199: STA    AUDV1   
       BPL    LF19F   
LF19D: DEC    $DB     
LF19F: JSR    LF8F0   
LF1A2: LDA    $E6     
       BPL    LF1A9   
       JMP    LF4F9   
LF1A9: LDA    $83     
       BEQ    LF1C0   
       LDA    $DF     
       AND    #$0F    
       BNE    LF1D3   
       LDX    $80     
       BEQ    LF1D6   
       LDA    #$01    
       JSR    LFFB3   
       DEC    $83     
       BNE    LF1D3   
LF1C0: LDA    $DF     
       AND    #$3F    
       BNE    LF1D3   
       LDX    $80     
       BEQ    LF1D6   
       DEX            
       TXA            
       STA    $80     
       LDA    #$02    
       JSR    LF846   
LF1D3: JMP    LF1D9   
LF1D6: JMP    LF2B9   
LF1D9: LDA    $92     
       SEC            
       SBC    #$08    
       STA    $D5     
       LDA    $93     
       CLC            
       ADC    #$04    
       STA    $D6     
       LDX    $C4     
       BNE    LF258   
       LDA    #$05    
       STA    CTRLPF  
       LDA    CXM1FB  
       ASL            
       BCC    LF255   
       LDA    $DF     
       AND    #$3F    
       ADC    #$10    
       STA    $87     
       LDA    $D5     
       CMP    #$9C    
       BCS    LF20E   
       CMP    #$70    
       BCS    LF223   
       CMP    #$46    
       BCS    LF20E   
       CMP    #$26    
       BCS    LF223   
LF20E: INX            
       LDA    #$01    
       STA    $CB     
LF213: STX    $C4     
       LDA    #$98    
       STA    $92     
       LDA    #$34    
       STA    $93     
       LDA    #$81    
LF21F: STA    $C3     
       BNE    LF255   
LF223: LDA    $DD     
       LSR            
       BCC    LF24C   
       INX            
       INX            
       STX    $C4     
       LDA    #$01    
       STA    $CB     
       LDA    #$34    
       STA    $83     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$14    
       STA    $92     
       STA    $87     
       LDA    #$50    
       STA    $93     
       JSR    LF838   
       JSR    LF839   
       LDA    #$01    
       BNE    LF21F   
LF24C: INX            
       INX            
       INX            
       LDA    #$01    
       STA    $CB     
       BNE    LF213   
LF255: JMP    LF2DF   
LF258: TXA            
       CMP    #$02    
       BEQ    LF29E   
       LDA    $92     
       CMP    #$14    
       BEQ    LF29E   
       LDA    $C3     
       ASL            
       BCS    LF29E   
       LDA    CXP1FB  
       ASL            
       BCS    LF275   
       LDA    $C3     
       AND    #$1C    
       BEQ    LF296   
       BNE    LF29E   
LF275: DEX            
       LDA    LFC00,X 
       STA    $E7     
       LDA    LFC03,X 
       STA    $E8     
       LDY    #$00    
LF282: LDA    ($E7),Y 
       BEQ    LF296   
       SEC            
       SBC    $92     
       CMP    #$03    
       BCC    LF290   
       INY            
       BNE    LF282   
LF290: LDA    #$01    
       STA    $C3     
       BNE    LF29E   
LF296: LDA    #$81    
       STA    $C3     
       LDA    #$03    
       STA    $CB     
LF29E: LDA    CXPPMM  
       ASL            
       BCC    LF2DF   
       LDA    $92     
       CMP    #$64    
       BCC    LF2B9   
       LDA    $C4     
       CMP    #$01    
       BEQ    LF2CD   
       LDA    #$81    
       STA    $C3     
       LDA    #$03    
       STA    $CB     
       BNE    LF2DF   
LF2B9: LDX    #$FF    
       STX    $E6     
       INX            
       STX    $C3     
       STX    $83     
       LDA    #$30    
       STA    $80     
       LDA    #$05    
       STA    $CB     
       JMP    LF4F9   
LF2CD: LDA    #$0F    
       STA    $83     
       LDA    #$60    
       JSR    LF846   
       LDX    #$00    
       STX    $C3     
       STX    $C4     
       JSR    LF83D   
LF2DF: LDA    $C3     
       BPL    LF2F7   
       INC    $DC     
       DEC    $92     
       DEC    $92     
       DEC    $92     
       LDA    #$14    
       CMP    $92     
       BCC    LF33E   
       STA    $92     
       LDA    #$01    
       STA    $C3     
LF2F7: LDA    SWCHA   
       STA    $BA     
       LDA    $DC     
       LSR            
       BCC    LF333   
       LDA    #$00    
       STA    $81     
       LDA    SWCHA   
       STA    $BA     
       ASL            
       BMI    LF31E   
       JSR    LF823   
       LDA    #$01    
       STA    $81     
       DEC    $93     
       LDA    #$06    
       CMP    $93     
       BCC    LF31E   
       STA    $93     
LF31E: LDA    $BA     
       BMI    LF333   
       JSR    LF823   
       LDA    #$02    
       STA    $81     
       INC    $93     
       LDA    #$90    
       CMP    $93     
       BCS    LF333   
       STA    $93     
LF333: LDA    $C3     
       LSR            
       BCC    LF35F   
       LSR            
       BCS    LF347   
       LDX    #$03    
LF33D: LSR            
LF33E: BCC    LF386   
       INC    $92     
       DEX            
       BNE    LF33D   
       BEQ    LF386   
LF347: LDX    #$03    
LF349: LSR            
       BCC    LF351   
       DEC    $92     
       DEX            
       BNE    LF349   
LF351: LDA    #$14    
       CMP    $92     
       BCC    LF386   
       STA    $92     
       LDA    #$01    
       STA    $C3     
       BNE    LF386   
LF35F: LDA    $BA     
       AND    #$20    
       BNE    LF372   
       JSR    LF823   
       DEC    $92     
       LDA    #$19    
       CMP    $92     
       BCC    LF372   
       STA    $92     
LF372: LDA    $BA     
       AND    #$10    
       BNE    LF386   
       JSR    LF823   
       INC    $92     
       LDA    #$BE    
       CMP    $92     
       BCS    LF386   
       JSR    LF823   
LF386: LDA    $C3     
       LSR            
       BCC    LF3CC   
       AND    #$4E    
       BNE    LF3A7   
       LDA    INPT4   
       ASL            
       BCS    LF3CC   
       LDA    #$1D    
       STA    $C3     
       INC    $92     
       INC    $92     
       LDY    #$02    
       STY    $CB     
       STY    $91     
       INY            
       STY    $90     
       BNE    LF3CC   
LF3A7: LDA    $90     
       BEQ    LF3CC   
       DEC    $91     
       BNE    LF3CC   
       DEC    $90     
       BNE    LF3B9   
       LDA    #$07    
       STA    $C3     
       BNE    LF3CC   
LF3B9: LDA    $90     
       LSR            
       BCC    LF3C4   
       LDA    #$05    
       LDX    #$0E    
       BNE    LF3C8   
LF3C4: LDA    #$0D    
       LDX    #$05    
LF3C8: STA    $C3     
       STX    $91     
LF3CC: LDY    $C4     
       LDA    LFEA0,Y 
       STA    $E0     
       LDA    $EF     
       AND    #$0F    
       TAY            
       LDA    $E0     
       CPY    #$05    
       BCC    LF3E6   
       CPY    #$0A    
       BCC    LF3EA   
       AND    #$F9    
       BNE    LF3EC   
LF3E6: AND    #$FB    
       BNE    LF3EC   
LF3EA: AND    #$FD    
LF3EC: STA    $E0     
       LDA    $C4     
       CMP    #$02    
       BNE    LF402   
       LDA    $93     
       CMP    #$07    
       BCC    LF413   
       CMP    #$90    
       BCC    LF41E   
       LDA    #$00    
       BEQ    LF413   
LF402: CMP    #$03    
       BNE    LF41E   
       LDA    $92     
       CMP    #$99    
       BCC    LF41E   
       LDA    #$99    
       JSR    LF846   
       LDA    #$0A    
LF413: STA    $83     
       LDX    #$00    
       STX    $C3     
       STX    $C4     
       JSR    LF83D   
LF41E: JSR    LF424   
       JMP    LF44D   
LF424: LDX    #$00    
       LDY    $C4     
LF428: LDA    LFC18,Y 
       STA    $9E,X   
       INY            
       INY            
       INY            
       INY            
       LDA    LFC18,Y 
       STA    $98,X   
       INY            
       INY            
       INY            
       INY            
       LDA    LFC18,Y 
       STA    $AC,X   
       INX            
       CPX    #$02    
       BEQ    LF44C   
       CLC            
       LDA    #$0C    
       ADC    $C4     
       TAY            
       BNE    LF428   
LF44C: RTS            

LF44D: LDA    $C4     
       BEQ    LF485   
       CMP    #$01    
       BEQ    LF48F   
       CMP    #$02    
       BEQ    LF4A5   
       LDA    #$06    
       STA    $C7     
       LDA    #$70    
       STA    $C0     
       LDA    $EF     
       AND    #$0F    
       TAX            
       LSR            
       BCC    LF469   
LF469: INC    $C1     
       DEC    $C2     
       TXA            
LF46E: CMP    #$05    
       BCC    LF47E   
       CMP    #$0A    
       BCC    LF47A   
       LDA    #$02    
       BNE    LF480   
LF47A: LDA    #$04    
       BNE    LF480   
LF47E: LDA    #$00    
LF480: STA    $C8     
       JMP    LF4AB   
LF485: LDA    #$88    
       STA    $C1     
       STA    $C2     
       STA    $C8     
       BNE    LF4BF   
LF48F: LDA    #$80    
       STA    $C1     
       LDA    #$70    
       STA    $C0     
LF497: LDA    $EF     
       AND    #$0F    
       TAX            
       LSR            
       BCC    LF49F   
LF49F: DEC    $C2     
       TXA            
       JMP    LF46E   
LF4A5: LDA    #$9E    
       STA    $C1     
       BNE    LF497   
LF4AB: LDA    #$A4    
       CMP    $C1     
       BCS    LF4B5   
       LDA    #$00    
       STA    $C1     
LF4B5: LDA    #$02    
       CMP    $C2     
       BCC    LF4BF   
       LDA    #$A4    
       STA    $C2     
LF4BF: LDY    $C4     
       BEQ    LF4F9   
       DEY            
       BEQ    LF4CD   
       DEY            
       BEQ    LF4D1   
       LDY    #$0C    
       BNE    LF4D3   
LF4CD: LDY    #$00    
       BNE    LF4D3   
LF4D1: LDY    #$06    
LF4D3: LDX    #$00    
LF4D5: LDA    $DC     
       LSR            
       LSR            
       LSR            
       LSR            
       BCC    LF4F1   
       INY            
       LDA    LFC06,Y 
       STA    $A0,X   
LF4E3: INY            
       LDA    LFC06,Y 
       STA    $CE,X   
       INX            
       CPX    #$02    
       BEQ    LF4F9   
       INY            
       BNE    LF4D5   
LF4F1: LDA    LFC06,Y 
       STA    $A0,X   
       INY            
       BNE    LF4E3   
LF4F9: LDA    $E6     
       BPL    LF535   
       DEC    $E2     
       BPL    LF535   
       LDX    #$02    
       STX    $E2     
       LDX    $E3     
       INX            
       CPX    #$15    
       BCC    LF52C   
       CLC            
       LDY    #$00    
       DEC    $A7     
       BPL    LF515   
       STY    $E9     
LF515: STY    $E6     
       STY    $C4     
       STY    $E3     
       STY    $E2     
       JSR    LF424   
       LDA    #$40    
       STA    $E0     
       LDX    #$13    
       JSR    LF83D   
       JMP    LF535   
LF52C: CPX    #$05    
       BCS    LF530   
LF530: STX    $E3     
       TXA            
       DEC    $E0     
LF535: JMP    LF538   
LF538: LDX    #$FF    
LF53A: INX            
       CPX    #$03    
       BEQ    LF547   
       LDA    $A8,X   
       CMP    $EC,X   
       BCC    LF550   
       BEQ    LF53A   
LF547: LDX    #$02    
LF549: LDA    $A8,X   
       STA    $EC,X   
       DEX            
       BPL    LF549   
LF550: LDX    #$0A    
       LDY    #$00    
       LDA    $E5     
       BPL    LF55A   
       LDY    #$44    
LF55A: JSR    LF560   
       JMP    LF59A   
LF560: LDA.wy $00A8,Y 
       AND    #$F0    
       LSR            
       ADC    LFC32   
       STA    $AE,X   
       LDA    #$FC    
       STA    $AF,X   
       DEX            
       DEX            
       LDA.wy $00A8,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    LFC32   
       STA    $AE,X   
       LDA    #$FC    
       STA    $AF,X   
       INY            
       DEX            
       DEX            
       BPL    LF560   
       LDX    #$08    
       LDY    LFC3C   
LF58C: LDA    $B0,X   
       CMP    LFC32   
       BNE    LF599   
       STY    $B0,X   
       DEX            
       DEX            
       BPL    LF58C   
LF599: RTS            

LF59A: LDA    #$FF    
       STA    CXCLR   
       LDX    INTIM   
       BNE    LF59A   
       STX    WSYNC   
       STX    VBLANK  
       LDY    #$08    
LF5A9: STA    WSYNC   
       STA    HMOVE   
       DEY            
       BNE    LF5A9   
       LDY    #$07    
       JSR    LF898   
       STA    WSYNC   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDY    #$00    
       STY    NUSIZ1  
       LDA    $EF     
       AND    #$03    
       TAY            
       LDA    $E0     
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF2     
       STA    PF1     
       LDA    #$FF    
       STA    CXCLR   
       LDA    #$F7    
       STA    TIM64T  
       LDA    $93     
       STA    WSYNC   
       STA    HMOVE   
       SEC            
LF5E6: SBC    #$0F    
       BCS    LF5E6   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDX    $94     
       LDA    #$C0    
       STA    $D9     
       LDA    $D2     
       STA    NUSIZ0  
       LDA    $D6     
       STA    WSYNC   
       STA    HMOVE   
       SEC            
LF611: SBC    #$0F    
       BCS    LF611   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMM1    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    $C1     
       STA    WSYNC   
       STA    HMOVE   
       SEC            
LF632: SBC    #$0F    
       BCS    LF632   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    $A0     
       STA    $A3     
       LDA    #$FE    
       STA    $A4     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$02    
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$C8    
       STA    COLUPF  
       LDA    #$36    
       STA    COLUP0  
       LDA    #$08    
       STA    REFP0   
       LDA    $9D     
       STA    $D1     
       LDY    #$00    
       STY    $BD     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $C4     
       BEQ    LF681   
       JMP    LF6CE   
LF681: LDA    $D9     
       DEC    $D9     
       CMP    $92     
       BCS    LF696   
       LDA    LFDFC,X 
       STA    COLUP1  
       LDA    LFEB4,X 
       BEQ    LF694   
       INX            
LF694: STA    GRP1    
LF696: LDA    $D9     
       LSR            
       BCS    LF6AD   
       LDA    $D9     
       CMP    $D5     
       PHP            
       PLA            
       STA    ENAM1   
       LDA    $D9     
       BEQ    LF6CB   
       STA    WSYNC   
       STA    HMOVE   
       BNE    LF681   
LF6AD: LSR            
       BCS    LF6BC   
       TAY            
       LDA    ($9E),Y 
       STA    PF1     
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF681   
LF6BC: TAY            
       LDA    ($98),Y 
       STA    PF2     
       LDA    ($AC),Y 
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF681   
LF6CB: JMP    LF7AD   
LF6CE: LDA    $D9     
       DEC    $D9     
       CMP    $92     
       BCS    LF6E3   
       LDA    LFDFC,X 
       STA    COLUP1  
       LDA    LFEB4,X 
       BEQ    LF6E1   
       INX            
LF6E1: STA    GRP1    
LF6E3: LDA    $D9     
       LSR            
       BCS    LF6FF   
       LDA    #$81    
       CMP    $D9     
       BCC    LF6F8   
       LDY    $BD     
       LDA    ($A3),Y 
       STA    GRP0    
       BEQ    LF6F8   
       INC    $BD     
LF6F8: STA    WSYNC   
       STA    HMOVE   
       JMP    LF6CE   
LF6FF: LSR            
       BCS    LF713   
       TAY            
       LDA    ($9E),Y 
       STA    PF1     
       LDA    $D9     
       CMP    #$6D    
       BEQ    LF722   
       STA    WSYNC   
       STA    HMOVE   
       BNE    LF6CE   
LF713: TAY            
       LDA    ($98),Y 
       STA    PF2     
       LDA    ($AC),Y 
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF6CE   
LF722: LDA    #$08    
       STA    COLUP0  
       LDA    #$00    
       STA    REFP0   
       STA    GRP0    
       LDA    $C2     
       STA    WSYNC   
       STA    HMOVE   
       SEC            
LF733: SBC    #$0F    
       BCS    LF733   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    #$00    
       STA    $BD     
       LDA    $C8     
       STA    NUSIZ0  
       LDA    $A1     
       STA    $A3     
LF759: LDA    $D9     
       DEC    $D9     
       CMP    $92     
       BCS    LF76E   
       LDA    LFDFC,X 
       STA    COLUP1  
       LDA    LFEB4,X 
       BEQ    LF76C   
       INX            
LF76C: STA    GRP1    
LF76E: LDA    $D9     
       LSR            
       BCS    LF78A   
       LDA    $87     
       CMP    $D9     
       BCC    LF783   
       LDY    $BD     
       LDA    ($A3),Y 
       STA    GRP0    
       BEQ    LF783   
       INC    $BD     
LF783: STA    WSYNC   
       STA    HMOVE   
       JMP    LF759   
LF78A: LSR            
       BCS    LF79E   
       TAY            
       LDA    ($9E),Y 
       STA    PF1     
       LDA    $D9     
       CMP    #$01    
       BEQ    LF7AD   
       STA    WSYNC   
       STA    HMOVE   
       BNE    LF759   
LF79E: TAY            
       LDA    ($98),Y 
       STA    PF2     
       LDA    ($AC),Y 
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF759   
LF7AD: STA    WSYNC   
       STA    HMOVE   
LF7B1: STA    HMOVE   
       LDA    INTIM   
       BNE    LF7B1   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    COLUBK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    REFP0   
       STA    ENAM1   
       LDA    #$28    
       STA    TIM64T  
       STA    WSYNC   
       LDX    #$0A    
       LDA    $E9     
       BPL    LF7FD   
       LDA    $E6     
       BMI    LF7EA   
       JSR    LFED8   
       LDX    #$0A    
       LDY    #$DC    
       JSR    LFF43   
       LDY    #$03    
       JMP    LF80B   
LF7EA: LDY    $A7     
LF7EC: LDA    LFC31   
       DEY            
       BPL    LF7F5   
       LDA    LFC3C   
LF7F5: STA    $AE,X   
       DEX            
       DEX            
       BPL    LF7EC   
       BMI    LF809   
LF7FD: LDA    LFC30   
       CLC            
LF801: STA    $AE,X   
       ADC    #$08    
       DEX            
       DEX            
       BPL    LF801   
LF809: LDY    #$07    
LF80B: LDX    #$00    
       STX    COLUBK  
       STA    WSYNC   
       JSR    LF898   
LF814: LDA    INTIM   
       BNE    LF814   
       LDY    #$02    
LF81B: STA    WSYNC   
       DEY            
       BPL    LF81B   
       JMP    LF023   
LF823: LDA    $E6     
       BMI    LF837   
       LDX    #$00    
       LDA    $DC     
       LSR            
       LSR            
       LSR            
       LSR            
       BCC    LF833   
       BCS    LF835   
LF833: LDX    #$12    
LF835: STX    $94     
LF837: RTS            

LF838: RTS            

LF839: RTS            

LF83A: .byte $60
LF83B: LDX    #$24    
LF83D: LDA    #$78    
       STA    $92     
       LDA    #$48    
       STA    $93     
       RTS            

LF846: SED            
       CMP    #$90    
       LDY    $A9     
       LDX    #$02    
LF84D: ADC    $A8,X   
       STA    $A8,X   
       LDA    #$00    
       DEX            
       BPL    LF84D   
       CLD            
       TYA            
       EOR    $A9     
       AND    #$F0    
       BEQ    LF867   
       LDY    $A7     
       INY            
       CPY    #$07    
       BCS    LF867   
       STY    $A7     
LF867: RTS            

LF868: STA    WSYNC   
       SEC            
LF86B: SBC    #$0F    
       BCS    LF86B   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       RTS            

LF87E: .byte $85,$02,$85,$2A,$38,$E9,$0F,$B0,$FC,$49,$0F,$0A,$0A,$0A,$0A,$69
       .byte $90,$95,$10,$85,$02,$85,$2A,$95,$20,$60
LF898: STX    GRP0    
       STX    GRP1    
       STX    WSYNC   
       LDA    #$3B    
       JSR    LF868   
       LDA    #$43    
       INX            
       JSR    LF868   
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$68    
       STA    COLUP0  
       STA    COLUP1  
LF8BD: LDA    ($AE),Y 
       STA    $BA     
       STA    WSYNC   
       LDA    ($B8),Y 
       STA    GRP0    
       LDA    ($B6),Y 
       STA    GRP1    
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    ($B2),Y 
       TAX            
       LDA    ($B0),Y 
       STY    $BB     
       LDY    $BA     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $BB     
       DEY            
       BPL    LF8BD   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LF8F0: LDY    $F5     
       BMI    LF936   
       BNE    LF91C   
       LDA    ($F6),Y 
       BEQ    LF934   
       PHA            
       AND    #$0F    
       TAY            
       LDA    LFE88,Y 
       BNE    LF905   
       STA    AUDV0   
LF905: STA    AUDF0   
       STA    $F8     
       LDA    #$05    
       STA    AUDC0   
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F9     
       STA    $FA     
       INC    $F6     
       LDY    #$0A    
       STY    $F5     
LF91C: DEC    $FA     
       BNE    LF936   
       LDA    $F9     
       STA    $FA     
       DEY            
       STY    $F5     
       LDA    $F8     
       BEQ    LF92F   
       INY            
       INY            
       INY            
       TYA            
LF92F: STA    AUDV0   
       JMP    LF936   
LF934: DEC    $F5     
LF936: RTS            

LF937: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$70,$F0,$60,$20
       .byte $00,$00,$00,$07,$03,$01,$01,$03,$01,$00,$00,$00,$00,$00,$10,$38
       .byte $38,$1C,$18,$00,$00,$00,$00,$00,$00,$5C,$5C,$FE,$7C,$38,$10,$00
       .byte $00,$00,$1C,$14,$14,$3E,$1C,$08,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$0F,$06,$02,$03,$07,$03,$01,$00,$00,$00,$00,$20,$70
       .byte $78,$FC,$F8,$F0,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $5C,$5C,$28,$26,$24,$08,$06,$04,$5C,$5C,$5C,$56,$56,$56,$56,$56
       .byte $5C,$5C,$5C,$04,$06,$A6,$A4,$88,$88,$88,$5C,$5C,$5C,$5C,$56,$56
       .byte $56,$56,$56,$56,$56,$5C,$5C,$5C,$5C,$9A,$98,$0E,$0E,$0E,$0E,$5C
       .byte $FF,$00,$FF,$FF,$04,$FE,$FE,$20,$F8,$F8,$F8,$80,$E0,$E0,$E0,$E0
       .byte $E0,$80,$80,$81,$83,$80,$80,$80,$80,$80,$C0,$F0,$80,$80,$80,$80
       .byte $00,$80,$C0,$E0,$F0,$F9,$FF,$BF,$7E,$17,$02,$00,$00,$00,$00,$00
       .byte $07,$01,$01,$01,$00,$00,$00,$C0,$C0,$E0,$E0,$E0,$E0,$F8,$F8,$FC
       .byte $FC,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$FC,$FC,$F8,$F8,$F8,$F8
       .byte $F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF,$FB,$AE,$05,$00,$00,$00,$00,$00
       .byte $26,$26,$26,$26,$26,$26,$24,$24,$24,$24,$24,$24,$24,$22,$22,$22
       .byte $22,$22,$22,$22,$22,$22,$20,$20,$20,$20,$20,$20,$52,$52,$52,$52
       .byte $54,$56,$56,$58,$58,$56,$56,$56,$54,$54,$54,$54,$54,$54,$54,$54
       .byte $54,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$07,$12,$4D,$33,$1A
       .byte $06,$29,$08,$01,$02,$04,$00,$00,$00,$00,$00,$00,$00,$00,$04,$07
       .byte $17,$0D,$03,$05,$03,$09,$26,$59,$26,$13,$2D,$1A,$0F,$07,$2A,$17
       .byte $0C,$17,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$D7,$56
       .byte $55,$55,$52,$52,$52,$4A,$4A,$4A,$49,$49,$49,$49,$49,$49,$79,$5F
       .byte $FF,$D5,$FF,$DF,$FF,$FD,$BA,$EF,$FF,$FF,$ED,$FF,$FF,$FB,$D6,$7D
       .byte $DB,$6C,$43,$45,$47,$49,$4B,$4D,$4F,$2F,$2F,$5D,$5D,$93,$93,$3D
       .byte $3D,$58,$58,$3D,$1F,$58,$3D,$3D,$3D,$3D,$54,$1F,$3D,$57,$57,$58
       .byte $58,$58,$58,$58,$58,$58,$57,$57,$57,$57,$57,$57,$57,$54,$54,$54
       .byte $54,$54,$FF,$38,$38,$38,$00,$00,$00,$00,$00,$E0,$00,$00,$00,$06
       .byte $00,$00,$00,$00,$00,$00,$70,$00,$00,$00,$02,$00,$00,$00,$C0,$C0
       .byte $C0,$F0,$FC,$FC,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$FC,$F0,$F0
       .byte $C0,$C0,$00,$FF,$80,$80,$80,$80,$80,$80,$86,$00,$00,$00,$00,$00
       .byte $00,$40,$00,$00,$00,$00,$00,$86,$00,$00,$00,$00,$00,$00,$3C,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$E3,$E3,$03,$03,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$41,$43,$43,$45,$45,$43,$43,$43,$43,$43,$43,$43
       .byte $43,$43,$43,$43,$43,$43,$43,$43,$43,$43,$43,$43,$43,$43,$43,$43
       .byte $43,$43,$45,$45,$47,$47,$47,$49,$49,$49,$4B,$4B,$4B,$4D,$4D,$4F
       .byte $4F,$2F,$2F,$2F,$00,$81,$75,$65,$55,$3D,$2D,$21,$15,$00,$81,$75
       .byte $65,$65,$65,$49,$39,$21,$21,$21,$31,$4D,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF
LFC00: .byte $7C,$7C,$85
LFC03: .byte $FB,$FB,$FB
LFC06: .byte $21,$2C,$37,$42,$4A,$51,$21,$2C,$37,$59,$60,$67,$6E,$77,$7F,$42
       .byte $4A,$51
LFC18: .byte $37,$C7,$58,$E9,$67,$F7,$89,$1A,$97,$27,$B9,$4B,$F9,$F9,$FA,$FA
       .byte $F9,$F9,$FA,$FB,$F9,$FA,$FA,$FB
LFC30: .byte $4C
LFC31: .byte $D4
LFC32: .byte $7C,$84,$8C,$94,$9C,$A4,$AC,$B4,$BC,$C4
LFC3C: .byte $CC
LFC3D: .byte $79
LFC3E: .byte $FD
LFC3F: .byte $00
LFC40: .byte $FD
LFC41: .byte $00,$B6,$DA,$D5,$B6,$E3,$FD,$FD,$FD,$FD,$FD,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$72,$72,$72,$72
       .byte $72,$72,$3C,$18,$18,$18,$18,$18,$18,$18,$38,$7E,$46,$40,$3C,$0E
       .byte $0E,$4E,$3C,$3E,$4E,$0E,$1C,$1C,$0E,$4E,$3C,$0C,$0C,$7E,$4C,$4C
       .byte $4C,$4C,$4C,$7C,$4E,$0E,$0E,$7C,$40,$40,$7E,$3C,$4E,$4E,$4E,$7C
       .byte $40,$42,$3C,$18,$18,$0C,$0C,$06,$06,$46,$7E,$3C,$4E,$4E,$3C,$3C
       .byte $72,$72,$3C,$3C,$42,$02,$3E,$72,$72,$72,$3C,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$4A,$1C,$28,$28,$3C,$3C,$24,$81,$66,$7E,$3C,$3C
       .byte $7E,$66,$81,$00,$81,$24,$42,$18,$18,$42,$24,$81,$00,$24,$81,$42
       .byte $81,$81,$42,$81,$24,$00,$00,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$11
       .byte $15,$13,$15,$11,$15,$13,$15,$11,$16,$14,$16,$11,$15,$13,$15,$11
       .byte $15,$13,$15,$11,$15,$13,$15,$11,$16,$14,$16,$11,$15,$13,$15,$11
       .byte $15,$13,$15,$11,$15,$13,$15,$11,$16,$14,$16,$11,$15,$13,$15,$11
       .byte $15,$13,$15,$11,$15,$13,$15,$14,$13,$22,$41,$11,$15,$13,$15,$11
       .byte $15,$13,$15,$11,$16,$14,$16,$11,$15,$13,$15,$11,$15,$13,$15,$11
       .byte $15,$13,$15,$11,$16,$14,$16,$11,$15,$13,$15,$11,$15,$13,$15,$11
       .byte $15,$13,$15,$11,$16,$14,$16,$11,$15,$13,$15,$11,$15,$13,$15,$11
       .byte $15,$13,$15,$14,$13,$22,$41,$00,$21,$21,$21,$21,$21,$26,$25,$23
       .byte $21,$21,$21,$21,$21,$26,$45,$28,$28,$27,$25,$26,$26,$25,$23,$21
       .byte $22,$23,$21,$26,$27,$48,$31,$11,$31,$11,$31,$16,$35,$13,$31,$11
       .byte $31,$11,$31,$16,$45,$38,$18,$37,$15,$36,$16,$35,$13,$31,$12,$33
       .byte $11,$36,$17,$48,$00,$81,$F5,$82,$F7,$83,$F7,$85,$F7,$86,$F7,$85
       .byte $F7,$85,$F7,$86,$F7,$87,$F7,$86,$F7,$85,$F7,$84,$F7,$83,$F7,$82
       .byte $F7,$81,$F7,$00,$1F,$8F,$1F,$8D,$00,$1F,$FF,$CA,$C9,$CA,$C8,$CA
       .byte $C9,$00,$1F,$FE,$1F,$FC,$1C,$FA,$1C,$F8,$1A,$FE,$1A,$FC,$17,$FA
       .byte $17,$F8,$14,$FE,$14,$FC,$12,$FA,$12,$F8,$00
LFDFC: .byte $00,$0C,$0C,$0F,$0F,$0C,$0C,$00,$00,$02,$02,$06,$0C,$0C,$06,$02
       .byte $00,$00,$0C,$0C,$0F,$0F,$0C,$0C,$00,$00,$02,$02,$06,$0C,$0C,$06
       .byte $02,$00,$A4,$AA,$00,$18,$38,$6C,$8E,$1B,$19,$28,$28,$48,$08,$00
       .byte $18,$3C,$76,$51,$98,$18,$14,$12,$10,$10,$00,$5D,$58,$5B,$5B,$5B
       .byte $58,$5B,$5B,$58,$5B,$00,$01,$0D,$5E,$7E,$FE,$37,$51,$00,$0C,$5F
       .byte $7E,$FE,$26,$2C,$00,$12,$34,$56,$78,$9A,$BC,$DE,$00,$3C,$DF,$FE
       .byte $7E,$33,$55,$00,$3C,$5F,$FE,$FE,$36,$22,$00,$92,$82,$72,$62,$51
       .byte $42,$00,$21,$E1,$42,$FC,$3E,$26,$4B,$A9,$00,$E0,$C3,$3C,$3C,$24
       .byte $22,$42,$00,$22,$32,$42,$52,$62,$72,$82,$92,$00
LFE88: .byte $1C,$1A,$17,$14,$13,$11,$0F,$0D,$0C,$0B,$0A,$09,$08,$1E,$1C,$00
       .byte $33,$30,$33,$30,$33,$30,$33,$30
LFEA0: .byte $5F,$8F,$BF,$CF,$01,$05,$0C,$01,$05,$0C,$DC,$E5,$EE,$F7,$F7,$FC
       .byte $FC,$FC,$FC,$FC
LFEB4: .byte $24,$3C,$3C,$28,$28,$1C,$4A,$7F,$FF,$FD,$BD,$BC,$3C,$3E,$36,$36
       .byte $13,$00,$24,$3C,$3C,$28,$28,$1C,$4A,$F7,$FF,$FD,$BD,$3D,$3C,$3E
       .byte $36,$36,$62,$00
LFED8: LDA    $80     
       BEQ    LFEFA   
       CMP    #$30    
       BEQ    LFF03   
       CMP    #$20    
       BEQ    LFF07   
       BCS    LFF12   
       CMP    #$10    
       BEQ    LFF24   
       BCS    LFF2F   
       LDA    #$00    
       STA    $85     
       STA    $86     
       LDX    $80     
       LDA    LFF75,X 
       STA    $84     
       RTS            

LFEFA: LDA    #$00    
LFEFC: STA    $84     
       STA    $85     
       STA    $86     
       RTS            

LFF03: LDA    #$88    
       BNE    LFEFC   
LFF07: LDA    #$88    
       STA    $84     
       STA    $85     
       LDA    #$00    
       STA    $86     
       RTS            

LFF12: LDA    #$88    
       STA    $84     
       STA    $85     
       SEC            
       LDA    $80     
       SBC    #$20    
       TAX            
       LDA    LFF75,X 
       STA    $86     
       RTS            

LFF24: LDA    #$88    
       STA    $84     
       LDA    #$00    
       STA    $85     
       STA    $86     
       RTS            

LFF2F: LDA    #$88    
       STA    $84     
       LDA    #$00    
       STA    $86     
       SEC            
       LDA    $80     
       SBC    #$10    
       TAX            
       LDA    LFF75,X 
       STA    $85     
       RTS            

LFF43: LDA.wy $00A8,Y 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STX    $BA     
       TAX            
       LDA    LFFAA,X 
       LDX    $BA     
       STA    $AE,X   
       LDA    #$FF    
       STA    $AF,X   
       DEX            
       DEX            
       LDA.wy $00A8,Y 
       AND    #$0F    
       STX    $BA     
       TAX            
       LDA    LFFAA,X 
       LDX    $BA     
       STA    $AE,X   
       LDA    #$FF    
       STA    $AF,X   
       INY            
       DEX            
       DEX            
       BPL    LFF43   
       RTS            

LFF75: .byte $10,$10,$20,$30,$40,$50,$60,$70,$80,$81,$82,$83,$84,$85,$86,$87
       .byte $88,$00,$00,$00,$00,$80,$80,$80,$80,$C0,$C0,$C0,$C0,$E0,$E0,$E0
       .byte $E0,$F0,$F0,$F0,$F0,$F8,$F8,$F8,$F8,$FC,$FC,$FC,$FC,$FE,$FE,$FE
       .byte $FE,$FF,$FF,$FF,$FF
LFFAA: .byte $86,$8A,$8E,$92,$96,$9A,$9E,$A2,$A6
LFFB3: CLC            
       ADC    $80     
       CMP    #$30    
       BCC    LFFBC   
       LDA    #$30    
LFFBC: STA    $80     
       RTS            

LFFBF: .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$F0,$00
       .byte $F0
