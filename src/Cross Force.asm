; Disassembly of roms/Cross Force.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Cross Force.bin
;

      processor 6502
VSYNC   =  $00
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       LDA    INTIM   
       STA    $BE     
       STA    $BF     
       LDA    #$04    
       STA    $CF     
       LDX    #$0A    
       STX    $D3     
LF019: STA    $A3,X   
       STA    $B3,X   
       DEX            
       BPL    LF019   
       TXS            
       STX    $E3     
       LDA    #$FF    
       STA    $C1     
       STA    $C3     
       STA    $C5     
       STA    $CD     
       LDA    #$FE    
       STA    $91     
       STA    $93     
       LDA    #$00    
       JMP    LF456   
LF038: STA    WSYNC   
       STA    CXCLR   
       LDA    #$F4    
       STA    TIM64T  
       LDA    $8F     
       BEQ    LF04D   
       DEC    $8F     
       LDA    $D1     
       AND    #$10    
       BNE    LF06C   
LF04D: LDA    $E1     
       BEQ    LF06F   
       LDA    $D1     
       AND    #$03    
       BNE    LF06F   
       DEC    $E1     
       LDA    $E1     
       CMP    #$19    
       BCC    LF06F   
       LDA    #$42    
       STA    COLUBK  
       LDY    #$AF    
LF065: STA    WSYNC   
       DEY            
       BNE    LF065   
       STY    COLUBK  
LF06C: JMP    LF305   
LF06F: STA    WSYNC   
       LDA    #$0F    
       BIT    $B1     
       BPL    LF079   
       LDA    #$14    
LF079: STA    COLUP1  
       LDX    $CF     
       BNE    LF080   
       TXA            
LF080: STA    COLUP0  
       LDA    #$03    
       STA    NUSIZ0  
       LSR            
       STA    NUSIZ1  
       LSR            
       STA    HMP0    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       LDX    #$07    
LF094: DEX            
       BNE    LF094   
       STA    RESP0   
       STA    RESP1   
       LDY    #$07    
LF09D: STA    WSYNC   
       STA    HMOVE   
       LDA    ($CC),Y 
       STA    GRP0    
       LDA    ($C4),Y 
       STA    GRP1    
       STY    $E6     
       LDX    LFF55,Y 
       LDA    ($C2),Y 
       STA    $E8     
       LDA    ($C0),Y 
       LDY    $E8     
       STY    GRP0    
       STA    GRP1    
       STX    GRP0    
       STA    HMCLR   
       LDY    $E6     
       DEY            
       BPL    LF09D   
       INY            
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       STY    NUSIZ0  
       STY    NUSIZ1  
       BIT    $D2     
       BPL    LF0DD   
       LDA    $D1     
       EOR    #$02    
       AND    #$23    
       BNE    LF0DD   
       JMP    LF1B5   
LF0DD: LDA    $E2     
       LSR            
       STA    REFP0   
       STA    REFP1   
       JSR    LFCD2   
       SEC            
       STA    WSYNC   
       LDA    $BC     
       LDX    #$04    
       LDY    #$00    
       STA    HMP0,X  
       AND    #$0F    
LF0F4: ADC    #$FE    
       BCS    LF0F4   
       STA    RESP0,X 
       STA    WSYNC   
       LDA    #$FE    
       STA    $81     
       LDA    $8E     
       BEQ    LF119   
       LDA    $D1     
       ASL            
       ASL            
       AND    #$F0    
       LDX    $8F     
       BEQ    LF110   
       LDA    #$46    
LF110: LDY    #$C0    
       STA    WSYNC   
       LDX    #$04    
       JMP    LF121   
LF119: STA    WSYNC   
       STY    PF1     
       STY    PF2     
       LDA    #$0F    
LF121: STA    COLUPF  
       STY    PF0     
       JSR    LF71E   
       STA    WSYNC   
       LDA    CXP0FB  
       AND    #$40    
       STA    $E0     
       BIT    CXPPMM  
       BPL    LF136   
       INC    $E0     
LF136: LDA    $D5     
       AND    #$03    
       CMP    #$01    
       BNE    LF140   
       LDY    #$07    
LF140: STY    NUSIZ1  
       LDA    #$FD    
       STA    $81     
       LDX    #$06    
       JSR    LF71E   
       STA    WSYNC   
       LDA    $D5     
       AND    #$03    
       CMP    #$02    
       BNE    LF157   
       LDY    #$07    
LF157: STY    NUSIZ1  
       LDA    $9E     
       STA    $AE     
       LDA    $9F     
       STA    $AF     
       CLC            
       LDX    #$04    
       STA    WSYNC   
       LDA    $B3     
       JSR    LF778   
       STA    WSYNC   
       LDX    #$08    
       JSR    LF71E   
       STA    WSYNC   
       LDA    $D5     
       AND    #$03    
       CMP    #$03    
       BNE    LF17E   
       LDY    #$07    
LF17E: STY    NUSIZ1  
       LDX    #$0A    
       JSR    LF71E   
       STA    WSYNC   
       STA    CXCLR   
       LDA    #$FE    
       STA    $81     
       STY    NUSIZ1  
       LDX    #$0C    
       JSR    LF71E   
       STA    WSYNC   
       JSR    LFCD2   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STY    PF0     
       STY    REFP0   
       STY    REFP1   
       STY    ENABL   
       LDA    $B4     
       BNE    LF1B2   
       STA    PF1     
       STA    PF2     
       JMP    LF305   
LF1B2: JMP    LF22C   
LF1B5: LDX    #$02    
       STA    WSYNC   
       LDA    $A3     
       JSR    LF778   
       STA    WSYNC   
       LDA    #$AF    
       STA    COLUP0  
       LDX    #$13    
LF1C6: STA    WSYNC   
       DEX            
       BNE    LF1C6   
       STX    $E6     
       LDA    $D1     
       LSR            
       LSR            
       AND    #$07    
       TAX            
       LDA    LFF43,X 
       STA    $E8     
       SEC            
       SBC    #$79    
       EOR    #$FF    
       STA    $C6     
       LDA    $D2     
       AND    #$FD    
       CPX    #$03    
       BCS    LF1EA   
       ORA    #$02    
LF1EA: STA    $D2     
       LDX    #$F0    
       LDA    $D0     
       AND    #$01    
       BEQ    LF1F6   
       LDX    #$10    
LF1F6: STX    $EA     
       LDY    #$7A    
LF1FA: STA    WSYNC   
       STA    HMOVE   
       DEC    $E8     
       BNE    LF208   
       LDA    $D2     
       EOR    #$02    
       STA    $D2     
LF208: DEC    $C6     
       BNE    LF212   
       LDA    $D2     
       EOR    #$02    
       STA    $D2     
LF212: LDA    $D2     
       STA    ENAM0   
       LDX    #$00    
       LDA    $E6     
       ADC    $D0     
       STA    $E6     
       BCC    LF222   
       LDX    $EA     
LF222: STX    HMM0    
       DEY            
       BNE    LF1FA   
       STY    ENAM0   
       JMP    LF305   
LF22C: STY    COLUPF  
       STA    WSYNC   
       INY            
       STY    CTRLPF  
       LDX    $E4     
       LDA    LFDE8,X 
       STA    PF1     
       LDA    LFFAA,X 
       STA    PF2     
       CPX    #$03    
       BCS    LF24B   
       LDA    $D1     
       AND    #$08    
       BNE    LF24B   
       STA    PF2     
LF24B: LDA    #$46    
       STA    COLUP0  
       LDA    #$C6    
       STA    COLUP1  
       LDA    #$1A    
       STA    $E6     
       LDX    #$00    
       SEC            
       STA    WSYNC   
       LDA    #$05    
       JSR    LF778   
       LDA    #$89    
       STA    WSYNC   
       INX            
       JSR    LF778   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$04    
LF26F: STA    WSYNC   
       LDA    LFFA5,Y 
       STA    GRP0    
       LDA    LFDF5,Y 
       STA    GRP1    
       LDX    #$06    
LF27D: DEX            
       BNE    LF27D   
       LDA    $E6     
       STA    COLUPF  
       LDX    #$02    
LF286: DEX            
       BNE    LF286   
       DEY            
       STX    COLUPF  
       BPL    LF26F   
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       LDX    #$03    
LF296: DEX            
       BNE    LF296   
       STA    RESP0   
       LDA    $B4     
       AND    #$FD    
       TAX            
       CPX    #$04    
       BNE    LF2A5   
       DEX            
LF2A5: STX    NUSIZ0  
       LDY    #$07    
LF2A9: STA    WSYNC   
       LDA    LFEBD,Y 
       STA    GRP0    
       LDA    LFEAD,Y 
       LDX    $B4     
       CPX    #$02    
       BCS    LF2BB   
       LDA    #$00    
LF2BB: STA    COLUP0  
       DEY            
       BPL    LF2A9   
       STA    WSYNC   
       INY            
       STY    GRP0    
       LDX    $E5     
       LDA    LFDE8,X 
       STA    PF1     
       LDA    LFFAA,X 
       STA    PF2     
       LDA    #$8A    
       CPX    #$0A    
       BCC    LF2D9   
       LDA    #$48    
LF2D9: STA    $E6     
       LDA    #$48    
       STA    COLUP1  
       LDY    #$04    
LF2E1: STA    WSYNC   
       LDA    LFDFA,Y 
       STA    GRP1    
       NOP            
       NOP            
       STX    $3F     
       LDX    #$06    
LF2EE: DEX            
       BNE    LF2EE   
       LDA    $E6     
       STA    COLUPF  
       LDX    #$02    
LF2F7: DEX            
       BNE    LF2F7   
       DEY            
       STX    COLUPF  
       BPL    LF2E1   
       STX    GRP1    
       STX    PF1     
       STX    PF2     
LF305: LDA    INTIM   
       BNE    LF305   
       LDA    #$1D    
       STA    TIM64T  
       INC    $E2     
       LDA    SWCHB   
       AND    #$08    
       BNE    LF322   
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDV0   
       STA    AUDV1   
       BEQ    LF361   
LF322: LDA    $D1     
       BNE    LF333   
       LDA    $B4     
       BNE    LF333   
       LDA    $D4     
       AND    #$02    
       BEQ    LF333   
       JSR    LFFC0   
LF333: DEC    $EB     
       BPL    LF349   
       LDA    $E5     
       CMP    #$02    
       BCC    LF345   
       CMP    #$0A    
       BNE    LF343   
       DEC    $E5     
LF343: DEC    $E5     
LF345: LDA    #$3C    
       STA    $EB     
LF349: LDX    #$00    
       JSR    LF783   
       INX            
       JSR    LF783   
       BIT    $D2     
       BPL    LF36E   
       LDA    $D1     
       AND    #$E7    
       CMP    #$03    
       BNE    LF364   
       JSR    LF852   
LF361: JMP    LF3BB   
LF364: CMP    #$07    
       BNE    LF36E   
       JSR    LF8D2   
       JMP    LF3BB   
LF36E: LDA    $CF     
       CMP    #$03    
       BCS    LF37A   
       LDA    $D1     
       AND    #$01    
       BEQ    LF3BB   
LF37A: LDY    #$01    
       STY    $C6     
       DEY            
       STY    $C8     
LF381: LDX    $A6,Y   
       JSR    LF7C5   
       LDY    $C8     
       STX    $A6,Y   
       INC    $C8     
       LDY    $C8     
       CPY    #$06    
       BCC    LF381   
       LDA    #$01    
       STA    $C6     
       LDY    #$00    
LF398: LDX    $B6,Y   
       LDA    $BF     
       AND    $C6     
       BEQ    LF3A8   
       INX            
       CPX    #$13    
       BCC    LF3B2   
       DEX            
       BNE    LF3AC   
LF3A8: DEX            
       BPL    LF3B2   
       INX            
LF3AC: LDA    $BF     
       EOR    $C6     
       STA    $BF     
LF3B2: ASL    $C6     
       STX    $B6,Y   
       INY            
       CPY    #$06    
       BCC    LF398   
LF3BB: LDA    INTIM   
       BNE    LF3BB   
       LDX    #$82    
       STX    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$28    
       STA    TIM64T  
       LDA    $B2     
       STA    $9E     
       ADC    #$08    
       STA    $9F     
       LDA    $B0     
       STA    $AE     
       ADC    #$08    
       STA    $AF     
       LDA    $D1     
       EOR    #$FF    
       AND    #$05    
       BNE    LF3F2   
       LDA    SWCHB   
       AND    #$08    
       STA    $E3     
       BEQ    LF40D   
LF3F2: JSR    LF9A8   
       INC    $D1     
       LDA    $D1     
       AND    #$03    
       BEQ    LF410   
       AND    #$01    
       BEQ    LF404   
       JMP    LF652   
LF404: JSR    LFCA1   
       JSR    LFA3F   
       JSR    LFA8D   
LF40D: JMP    LF716   
LF410: LDA    $ED     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF4B,X 
       STA    $CC     
       LDA    $ED     
       AND    #$0F    
       TAX            
       LDA    LFF4B,X 
       STA    $C4     
       LDA    $EC     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF4B,X 
       STA    $C2     
       LDA    $EC     
       AND    #$0F    
       TAX            
       LDA    LFF4B,X 
       STA    $C0     
       LDA    SWCHB   
       AND    #$01    
       BNE    LF490   
LF447: LDX    $D4     
       INX            
       STX    $EC     
       LDA    #$FF    
       STA    $F7     
LF450: LDA    #$00    
       STA    $CF     
       STA    $D3     
LF456: STA    $D5     
       STA    $CE     
       STA    $ED     
       STA    $EE     
       STA    $EF     
       STA    $B1     
       STA    $8E     
       STA    $E1     
       LDA    #$01    
       STA    $E9     
       STA    $E5     
       STA    $F6     
       LDA    #$FF    
       STA    $B0     
       STA    $B2     
       LDA    #$04    
       STA    $B4     
       STA    $DC     
       STA    $DD     
       LDA    #$14    
       STA    $F2     
       LDA    #$BD    
       STA    $8C     
       LDA    #$CD    
       STA    $84     
       LDA    #$0C    
       STA    $E4     
       LDA    #$05    
       STA    $E7     
LF490: LDA    $F4     
       ADC    $AC     
       ADC    $D1     
       STA    $F4     
       LSR            
       LSR            
       AND    #$01    
       STA    $E6     
       LDA    $D1     
       AND    #$1C    
LF4A2: CLC            
       ADC    #$FC    
       BMI    LF4AB   
       ASL    $E6     
       BPL    LF4A2   
LF4AB: LDA    $E6     
       BIT    $D1     
       BVC    LF4B8   
       EOR    $BE     
       STA    $BE     
       JMP    LF4BC   
LF4B8: EOR    $BF     
       STA    $BF     
LF4BC: LDA    $8F     
       BNE    LF4C4   
       LDA    $E1     
       BEQ    LF4C7   
LF4C4: JMP    LF528   
LF4C7: LDA    $F4     
       AND    #$07    
       BNE    LF4D1   
       BIT    $F7     
       BPL    LF4DE   
LF4D1: BIT    $B1     
       BPL    LF4DA   
       BIT    INPT5   
       JMP    LF4DC   
LF4DA: BIT    INPT4   
LF4DC: BMI    LF528   
LF4DE: LDA    $B4     
       BNE    LF4E5   
       JMP    LF450   
LF4E5: LDX    $CF     
       BNE    LF4ED   
       STX    $EC     
       BEQ    LF545   
LF4ED: BIT    $D2     
       BMI    LF528   
       LDX    $E5     
       CPX    #$0A    
       BCS    LF528   
       LDA    $F2     
       BEQ    LF4FD   
       DEC    $F2     
LF4FD: LDA    #$00    
       STA    $D1     
       LDA    #$80    
       STA    $D2     
       INC    $E5     
       LDX    $E5     
       CPX    #$0A    
       BCC    LF511   
       LDX    #$0C    
       STX    $E5     
LF511: DEC    $E7     
       BNE    LF524   
       LDA    #$03    
       STA    $E7     
       DEC    $E4     
       BNE    LF524   
       LDA    #$0C    
       STA    $E4     
       JMP    LF63A   
LF524: LDA    #$07    
       STA    $DE     
LF528: LDA    $D1     
       SEC            
       SBC    #$24    
       BNE    LF531   
       STA    $D2     
LF531: LDA    $D3     
       BNE    LF54C   
       LDA    $CE     
       BNE    LF54C   
       LDA    $D5     
       BNE    LF54C   
       LDX    $CF     
       BEQ    LF54C   
       CPX    #$08    
       BEQ    LF546   
LF545: INX            
LF546: STX    $CF     
       LDA    #$0A    
       STA    $D3     
LF54C: BIT    $B2     
       BPL    LF590   
       LDA    #$82    
       STA    $B2     
       LDA    $A7     
       AND    #$01    
       BNE    LF575   
       LDA    $D5     
       AND    #$1C    
       BEQ    LF590   
       LDA    $D5     
       AND    #$14    
       BEQ    LF56C   
       LDA    $BA     
       LDX    $AA     
       BNE    LF570   
LF56C: LDX    $AB     
       LDA    $BB     
LF570: SBC    #$1A    
       JMP    LF57F   
LF575: LDA    $CE     
       AND    #$28    
       BEQ    LF590   
       LDX    $A8     
       LDA    $B8     
LF57F: EOR    #$FF    
       ADC    #$11    
       STA    $B2     
       TXA            
       JSR    LF7F4   
       ADC    #$05    
       JSR    LF7F0   
       STA    $B3     
LF590: LDA    $B0     
       BPL    LF5BF   
       LDA    #$FF    
       STA    $B0     
       LDA    $CE     
       AND    #$07    
       BEQ    LF5BF   
       LDA    $CE     
       AND    #$05    
       BEQ    LF5AA   
       LDX    $B6     
       LDA    $A6     
       BNE    LF5AE   
LF5AA: LDX    $B7     
       LDA    $A7     
LF5AE: JSR    LF7F4   
       SBC    #$06    
       JSR    LF7F0   
       STA    $BC     
       TXA            
       EOR    #$FF    
       ADC    #$2D    
       STA    $B0     
LF5BF: LDA    $CF     
       LSR            
       TAX            
       INX            
LF5C4: DEC    $B0     
       INC    $B2     
       DEX            
       BPL    LF5C4   
       LDX    $E1     
       DEX            
       BNE    LF626   
       LDA    $B4     
       BEQ    LF5D6   
       DEC    $B4     
LF5D6: BIT    $F7     
       BMI    LF5E6   
       INC    $B4     
       LDY    $CF     
       CPY    #$08    
       BNE    LF5E4   
       STX    $CF     
LF5E4: INC    $CF     
LF5E6: LDA    #$02    
       STA    $DE     
       LDA    $D4     
       AND    #$02    
       BEQ    LF602   
       LDA    $F8     
       BEQ    LF5F9   
       DEC    $F8     
       JMP    LF602   
LF5F9: LDA    $B1     
       BMI    LF5FF   
       INC    $B4     
LF5FF: JSR    LFFC0   
LF602: LDA    #$0C    
       STA    $E4     
       LDX    #$01    
       STX    $E5     
       LDX    #$0A    
       STX    $D3     
       LDX    #$55    
       STX    $AC     
       LDA    $B4     
       BNE    LF626   
       LDA    #$C5    
       STA    $84     
       STA    $8C     
       LDA    #$C8    
       STA    $8F     
       LDA    #$36    
       STA    $DE     
       STA    $8E     
LF626: LDA    $B4     
       BEQ    LF64F   
       LDA    $E0     
       BNE    LF636   
       BIT    CXPPMM  
       BMI    LF636   
       BIT    CXP0FB  
       BVC    LF64F   
LF636: LDA    $E1     
       BNE    LF64F   
LF63A: LDA    #$2A    
       STA    $E1     
       LDX    #$00    
       STX    $D5     
       STX    $CE     
       DEX            
       STX    $D3     
       STX    $B0     
       STX    $B2     
       LDA    #$12    
       STA    $DE     
LF64F: JMP    LF716   
LF652: LDX    $AC     
       BIT    $F7     
       BMI    LF662   
       LDA    #$80    
       STA    $C6     
       JSR    LF7C5   
       JMP    LF68C   
LF662: LDY    SWCHA   
       BIT    $B1     
       BPL    LF67D   
       BIT    SWCHB   
       BPL    LF674   
       LDA    $D1     
       AND    #$02    
       BEQ    LF68E   
LF674: TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       TAY            
       JMP    LF688   
LF67D: BIT    SWCHB   
       BVC    LF688   
       LDA    $D1     
       AND    #$02    
       BEQ    LF68E   
LF688: TYA            
       JSR    LFFDF   
LF68C: STX    $AC     
LF68E: LDA    SWCHB   
       AND    #$02    
       BNE    LF6A8   
       LDA    $D4     
       BMI    LF6AE   
       ORA    #$80    
       CMP    #$83    
       BNE    LF6A1   
       LDA    #$7F    
LF6A1: TAX            
       INX            
       STX    $D4     
       JMP    LF447   
LF6A8: LDA    $D4     
       AND    #$7F    
       STA    $D4     
LF6AE: BIT    $F7     
       BPL    LF6BA   
       AND    #$01    
       BEQ    LF6C6   
       LDA    $AC     
       BNE    LF6D5   
LF6BA: LDX    $A4     
       LDA    #$40    
       STA    $C6     
       JSR    LF7C5   
       TXA            
       BNE    LF6D5   
LF6C6: LDA    $AC     
       JSR    LF7F4   
       STA    $E8     
       LDA    #$BF    
       SEC            
       SBC    $E8     
       JSR    LF7F0   
LF6D5: STA    $A4     
       JSR    LF7F4   
       STA    $E8     
       SEC            
       SBC    #$0A    
       JSR    LF7F0   
       STA    $A3     
       LDA    $AC     
       JSR    LF7F4   
       SEC            
       SBC    $E8     
       BCC    LF6F2   
       ASL            
       JMP    LF6FA   
LF6F2: EOR    #$FF    
       CLC            
       ADC    #$01    
       ASL            
       ORA    #$01    
LF6FA: STA    $D0     
       LDA    #$AD    
       STA    $9C     
       LDX    #$9B    
       LDA    $E1     
       BEQ    LF714   
       LDX    #$E7    
       CMP    #$19    
       BCC    LF710   
       AND    #$02    
       BEQ    LF712   
LF710: LDX    #$C5    
LF712: STX    $9C     
LF714: STX    $94     
LF716: LDA    INTIM   
       BNE    LF716   
       JMP    LF038   
LF71E: LDA    $80,X   
       STA    $80     
       LDA    $81,X   
       STA    $82     
       LDA    $90,X   
       STA    $90     
       LDA    $91,X   
       STA    $92     
       LDA    $A0,X   
       STA    $A0     
       LDA    $A1,X   
       STA    $A2     
       CLC            
       LDX    #$00    
       STA    WSYNC   
       LDA    $A0     
       JSR    LF778   
       INX            
       STA    WSYNC   
       LDA    $A2     
       JSR    LF778   
       LDY    #$19    
LF74A: STA    WSYNC   
       STA    HMOVE   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($90),Y 
       STA    COLUP0  
       LDA    ($92),Y 
       STA    COLUP1  
       LDA    #$02    
       DEC    $AE     
       BNE    LF766   
       STA    ENABL   
LF766: DEC    $AF     
       BNE    LF76D   
       ASL            
       STA    ENABL   
LF76D: STA    HMCLR   
       DEY            
       BPL    LF74A   
       INY            
       STY    GRP1    
       STY    GRP0    
       RTS            

LF778: STA    HMP0,X  
       AND    #$0F    
LF77C: ADC    #$FE    
       BCS    LF77C   
       STA    RESP0,X 
       RTS            

LF783: LDA    #$40    
       STA    $E6     
       DEC    $DC,X   
       BNE    LF7B8   
       INC    $DE,X   
LF78D: LDY    $DE,X   
       LDA    LFE00,Y 
       BNE    LF79E   
       CPX    #$00    
       BEQ    LF7B9   
LF798: LDA    #$00    
       STA    $DE,X   
       BEQ    LF78D   
LF79E: STA    AUDF0,X 
       CLC            
LF7A1: ADC    #$20    
       BCS    LF7A9   
       LSR    $E6     
       BCC    LF7A1   
LF7A9: LDA    $E6     
       STA    $DC,X   
       LDA    LFF00,Y 
       STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
LF7B8: RTS            

LF7B9: LDY    $E5     
       CPY    #$0A    
       BCC    LF798   
       LDA    #$1E    
       STA    $DE,X   
       BNE    LF78D   
LF7C5: TXA            
       JSR    LF7F4   
       TAX            
       LDA    $BE     
       AND    $C6     
       BNE    LF7D8   
       DEX            
       CPX    #$22    
       BCS    LF7E8   
       INX            
       BNE    LF7DE   
LF7D8: INX            
       CPX    #$9F    
       BCC    LF7E8   
       DEX            
LF7DE: LDA    $C6     
       CMP    #$F0    
       BCS    LF7EA   
       EOR    $BE     
       STA    $BE     
LF7E8: ASL    $C6     
LF7EA: TXA            
       JSR    LF7F0   
       TAX            
       RTS            

LF7F0: EOR    #$07    
       BNE    LF7F6   
LF7F4: EOR    #$70    
LF7F6: TAY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $E6     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $E6     
       RTS            

LF805: ADC    #$22    
LF807: ADC    #$1E    
LF809: ADC    #$16    
       STA    $C6     
       STX    $E8     
       LDA    $AC     
       JSR    LF7F4   
       STA    $EA     
       LDA    $D0     
       AND    #$FE    
       STA    $E6     
       LDA    #$00    
       LDX    #$08    
LF820: LSR    $E6     
       BCC    LF827   
       CLC            
       ADC    $C6     
LF827: ROR            
       DEX            
       BNE    LF820   
       TAX            
       LDA    $D0     
       AND    #$01    
       BNE    LF836   
       TXA            
       EOR    #$FF    
       TAX            
LF836: TXA            
       CLC            
       ADC    $EA     
       STA    $C6     
       LDA    $E8     
       JSR    LF7F4   
       CLC            
       ADC    #$03    
       CMP    $C6     
       BCC    LF850   
       SBC    #$0B    
       CMP    $C6     
       BCS    LF850   
       SEC            
       RTS            

LF850: CLC            
       RTS            

LF852: LDX    $A7     
       LDA    $B7     
       JSR    LF805   
       BCC    LF874   
       LDA    #$E7    
       STA    $97     
       LDA    $CE     
       AND    #$02    
       BEQ    LF874   
       EOR    $CE     
       ORA    #$40    
       STA    $CE     
       LDA    $A7     
       AND    #$0F    
       STA    $A7     
       JMP    LF964   
LF874: LDX    $AB     
       LDA    $BB     
       JSR    LF809   
       BCC    LF896   
       LDA    #$E7    
       STA    $9B     
       LDA    $D5     
       AND    #$08    
       BEQ    LF896   
       EOR    $D5     
       ORA    #$40    
       STA    $D5     
       LDA    $AB     
       AND    #$0F    
       STA    $AB     
       JMP    LF964   
LF896: LDX    $A6     
       LDA    $B6     
       JSR    LF805   
       BCC    LF8D1   
       LDA    #$E7    
       STA    $96     
       LDA    $CE     
       AND    #$04    
       BEQ    LF8C4   
       EOR    $CE     
       STA    $CE     
       BIT    $F0     
       BMI    LF8CE   
       LDA    $A6     
       CLC            
       ADC    #$01    
       STA    $A7     
       ADC    #$FE    
       STA    $A6     
       LDA    $CE     
       ORA    #$03    
       STA    $CE     
       BNE    LF8FE   
LF8C4: LDA    $CE     
       AND    #$01    
       BEQ    LF8D1   
       EOR    $CE     
       STA    $CE     
LF8CE: JMP    LF964   
LF8D1: RTS            

LF8D2: LDX    $AA     
       LDA    $BA     
       JSR    LF809   
       BCC    LF911   
       LDA    #$E7    
       STA    $9A     
       LDA    $D5     
       AND    #$10    
       BEQ    LF904   
       EOR    $D5     
       STA    $D5     
       BIT    $F0     
       BMI    LF8CE   
       LDA    $AA     
       CLC            
       ADC    #$01    
       STA    $AA     
       ADC    #$FE    
       STA    $AB     
       LDA    $D5     
       ORA    #$0C    
       STA    $D5     
LF8FE: LDA    #$1A    
       STA    $BE     
       BNE    LF963   
LF904: LDA    $D5     
       AND    #$04    
       BEQ    LF911   
       EOR    $D5     
       STA    $D5     
       JMP    LF964   
LF911: LDX    $A8     
       LDA    $B8     
       JSR    LF807   
       BCC    LF94C   
       LDA    #$E7    
       STA    $98     
       LDA    $CE     
       AND    #$20    
       BEQ    LF93F   
       EOR    $CE     
       STA    $CE     
       BIT    $F0     
       BMI    LF8CE   
       LDA    $A8     
       CLC            
       ADC    #$01    
       STA    $A9     
       ADC    #$FE    
       STA    $A8     
       LDA    $CE     
       ORA    #$18    
       STA    $CE     
       BNE    LF8FE   
LF93F: LDA    $CE     
       AND    #$08    
       BEQ    LF94C   
       EOR    $CE     
       STA    $CE     
       JMP    LF964   
LF94C: LDX    $A9     
       LDA    $B9     
       JSR    LF807   
       BCC    LF9A7   
       LDA    #$E7    
       STA    $99     
       LDA    $CE     
       AND    #$10    
       BEQ    LF995   
       EOR    $CE     
       STA    $CE     
LF963: NOP            
LF964: SED            
       LDA    $CF     
       CLC            
       ADC    $EC     
       STA    $EC     
       BCC    LF98F   
       LDA    #$00    
       ADC    $ED     
       STA    $ED     
       AND    #$F0    
       JSR    LF7F6   
       CMP    $F6     
       BNE    LF98F   
       INC    $F6     
       LDX    $B4     
       CPX    #$04    
       BEQ    LF98F   
       INC    $B4     
       LDA    $D4     
       AND    #$02    
       BEQ    LF98F   
       INC    $F8     
LF98F: CLD            
       LDA    #$18    
       STA    $DE     
       RTS            

LF995: LDA    $D5     
       AND    #$20    
       BEQ    LF9A7   
       EOR    $D5     
       STA    $D5     
       LDA    #$0C    
       STA    $E4     
       LDA    #$2D    
       STA    $DF     
LF9A7: RTS            

LF9A8: LDA    $D5     
       AND    #$03    
       BEQ    LFA01   
       TAX            
       DEX            
       BNE    LF9D8   
       LDA    $BE     
       ORA    #$02    
       STA    $BE     
       LDA    $A7     
       JSR    LF7F4   
       CMP    #$98    
       BCC    LF9CE   
       LDA    $A7     
       STA    $A6     
       LDA    $CE     
       ORA    #$04    
       STA    $CE     
       JSR    LFA3A   
LF9CE: LDA    $A7     
       JSR    LFA2E   
       STA    $A7     
       JMP    LFA25   
LF9D8: DEX            
       BNE    LFA02   
       LDA    $BE     
       ORA    #$08    
       STA    $BE     
       LDA    $A9     
       JSR    LF7F4   
       CMP    #$98    
       BCC    LF9F7   
       LDA    $A9     
       STA    $A8     
       LDA    $CE     
       ORA    #$20    
       STA    $CE     
       JSR    LFA3A   
LF9F7: LDA    $A9     
       JSR    LFA2E   
       STA    $A9     
       JMP    LFA25   
LFA01: RTS            

LFA02: LDA    $BE     
       ORA    #$20    
       STA    $BE     
       LDA    $AB     
       JSR    LF7F4   
       CMP    #$98    
       BCC    LFA1E   
       LDA    $AB     
       STA    $AA     
       LDA    $D5     
       ORA    #$10    
       STA    $D5     
       JSR    LFA3A   
LFA1E: LDA    $AB     
       JSR    LFA2E   
       STA    $AB     
LFA25: BCC    LFA01   
       LDA    $D5     
       AND    #$FC    
       STA    $D5     
       RTS            

LFA2E: JSR    LF7F4   
       ADC    #$02    
       TAX            
       JSR    LF7F0   
       CPX    #$9F    
       RTS            

LFA3A: LDA    #$2A    
       STA    $DF     
       RTS            

LFA3F: LDA    $D3     
       AND    #$3F    
       BEQ    LFA8C   
       LDA    $DE     
       BNE    LFA8C   
       LDA    $E1     
       BNE    LFA8C   
       LDX    $D5     
       TXA            
       AND    #$03    
       BNE    LFA8C   
       LDY    $CE     
       TXA            
       AND    #$5C    
       BNE    LFA64   
       LDA    #$71    
       STA    $AB     
       TXA            
       ORA    #$03    
       BNE    LFA84   
LFA64: TYA            
       AND    #$38    
       BNE    LFA78   
       LDA    $D5     
       AND    #$20    
       BNE    LFA78   
       LDA    #$71    
       STA    $A9     
       TXA            
       ORA    #$02    
       BNE    LFA84   
LFA78: TYA            
       AND    #$47    
       BNE    LFA8C   
       LDA    #$71    
       STA    $A7     
       TXA            
       ORA    #$01    
LFA84: STA    $D5     
       DEC    $D3     
       LDA    #$21    
       STA    $DF     
LFA8C: RTS            

LFA8D: LDA    #$FD    
       STA    $81     
       STA    $83     
       LDA    #$D6    
       LDX    #$07    
LFA97: STA    $84,X   
       DEX            
       BNE    LFA97   
       STA    $8D     
       STX    $F0     
       LDX    $CF     
       DEX            
       BNE    LFAAD   
       LDY    #$52    
       LDA    #$80    
       STA    $F0     
       BNE    LFB1F   
LFAAD: DEX            
       BNE    LFAB8   
       LDY    #$5A    
       LDX    #$66    
       LDA    #$6A    
       BNE    LFB1F   
LFAB8: DEX            
       BNE    LFAC3   
       LDY    #$62    
LFABD: LDX    #$80    
       LDA    #$7A    
       BNE    LFB1F   
LFAC3: DEX            
       BNE    LFACA   
       LDY    #$52    
       BNE    LFABD   
LFACA: DEX            
       BNE    LFAD5   
       LDY    #$5A    
LFACF: LDX    #$9A    
       LDA    #$8A    
       BNE    LFB1F   
LFAD5: DEX            
       BNE    LFADC   
       LDY    #$62    
       BNE    LFACF   
LFADC: DEX            
       BNE    LFAE7   
       LDY    #$52    
       LDX    #$B4    
       LDA    #$9A    
       BNE    LFB1F   
LFAE7: LDA    #$52    
       STA    $E6     
       LDA    #$5A    
       STA    $E8     
       LDA    #$62    
       STA    $EA     
       LDA    #$B4    
       STA    $C6     
       STA    $C7     
       LDA    #$80    
       STA    $C8     
       STA    $C9     
       LDA    #$9A    
       STA    $CA     
       STA    $CB     
       LDA    #$9A    
       STA    $D7     
       LDA    #$7A    
       STA    $D8     
       LDA    #$8A    
       STA    $DA     
       LDA    #$A2    
       STA    $D6     
       LDA    #$82    
       STA    $D9     
       LDA    #$92    
       STA    $DB     
       BNE    LFB40   
LFB1F: STY    $E6     
       STY    $E8     
       STY    $EA     
       STX    $C6     
       STX    $C8     
       STX    $CA     
       STX    $C7     
       STX    $C9     
       STX    $CB     
       STA    $D7     
       STA    $D8     
       STA    $DA     
       CLC            
       ADC    #$08    
       STA    $D6     
       STA    $D9     
       STA    $DB     
LFB40: LDY    $CE     
       TYA            
       AND    #$01    
       BEQ    LFB4C   
       LDX    #$00    
       JSR    LFC93   
LFB4C: TYA            
       AND    #$02    
       BEQ    LFB56   
       LDX    #$01    
       JSR    LFC93   
LFB56: TYA            
       AND    #$04    
       BEQ    LFB60   
       LDX    #$00    
       JSR    LFC88   
LFB60: TYA            
       AND    #$08    
       BEQ    LFB6A   
       LDX    #$02    
       JSR    LFC93   
LFB6A: TYA            
       AND    #$10    
       BEQ    LFB74   
       LDX    #$03    
       JSR    LFC93   
LFB74: TYA            
       AND    #$20    
       BEQ    LFB7E   
       LDX    #$02    
       JSR    LFC88   
LFB7E: TYA            
       AND    #$40    
       BEQ    LFBB1   
       LDA    $BF     
       ORA    #$02    
       STA    $BF     
       SEC            
       LDA    #$D3    
       SBC    $B7     
       STA    $87     
       LDA    #$AA    
       SBC    $B7     
       STA    $97     
       LDA    $B7     
       ADC    #$05    
       STA    $B7     
       CMP    #$17    
       BCC    LFBB1   
       TYA            
       AND    #$BF    
       ORA    #$80    
       STA    $CE     
       LDA    #$00    
       STA    $B5     
       STA    $B7     
       LDX    $A7     
       STX    $A5     
LFBB1: TYA            
       AND    #$80    
       BEQ    LFBD6   
       SEC            
       LDA    #$D3    
       SBC    $B5     
       STA    $85     
       LDA    #$AA    
       SBC    $B5     
       STA    $95     
       LDA    $B5     
       ADC    #$05    
       STA    $B5     
       CMP    #$17    
       BCC    LFBD6   
       TYA            
       AND    #$7F    
       STA    $CE     
       LDA    #$00    
       STA    $B5     
LFBD6: LDY    $D5     
       TYA            
       AND    #$04    
       BEQ    LFBE2   
       LDX    #$04    
       JSR    LFC93   
LFBE2: TYA            
       AND    #$20    
       BEQ    LFBFD   
       LDA    #$12    
       SEC            
       SBC    $B9     
       STA    $89     
       LDX    #$E7    
       LDA    $D1     
       AND    #$08    
       BNE    LFBF8   
       LDX    #$B5    
LFBF8: TXA            
       SBC    $B9     
       STA    $99     
LFBFD: TYA            
       AND    #$08    
       BEQ    LFC07   
       LDX    #$05    
       JSR    LFC93   
LFC07: TYA            
       AND    #$10    
       BEQ    LFC11   
       LDX    #$04    
       JSR    LFC88   
LFC11: TYA            
       AND    #$40    
       BEQ    LFC44   
       LDA    $BF     
       AND    #$DF    
       STA    $BF     
       SEC            
       LDA    #$D3    
       SBC    $BB     
       STA    $8B     
       LDA    #$AA    
       SBC    $BB     
       STA    $9B     
       LDA    $BB     
       SBC    #$06    
       STA    $BB     
       BPL    LFC44   
       TYA            
       AND    #$BF    
       ORA    #$80    
       STA    $D5     
       LDA    #$17    
       STA    $BD     
       LDA    $AB     
       STA    $AD     
       LDA    #$00    
       STA    $BB     
LFC44: TYA            
       AND    #$80    
       BEQ    LFC67   
       SEC            
       LDA    #$D3    
       SBC    $BD     
       STA    $8D     
       LDA    #$AA    
       SBC    $BD     
       STA    $9D     
       LDA    $BD     
       SBC    #$06    
       STA    $BD     
       BPL    LFC67   
       TYA            
       AND    #$7F    
       STA    $D5     
       LDA    #$00    
       STA    $BD     
LFC67: TYA            
       AND    #$03    
       CMP    #$03    
       BNE    LFC72   
       LDX    #$05    
       BNE    LFC7F   
LFC72: CMP    #$02    
       BNE    LFC7A   
       LDX    #$03    
       BNE    LFC7F   
LFC7A: CMP    #$01    
       BNE    LFC87   
       TAX            
LFC7F: LDA    #$2C    
       STA    $86,X   
       LDA    #$44    
       STA    $96,X   
LFC87: RTS            

LFC88: SEC            
       LDA    #$4C    
       SBC    $B6,X   
       STA    $86,X   
       LDA    $E6,X   
       BNE    LFC9C   
LFC93: SEC            
       LDA    $C6,X   
       SBC    $B6,X   
       STA    $86,X   
       LDA    $D6,X   
LFC9C: SBC    $B6,X   
       STA    $96,X   
       RTS            

LFCA1: LDA    $F2     
       BNE    LFCC3   
       LDA    $CE     
       AND    #$30    
       BNE    LFCC3   
       LDA    $D5     
       AND    #$23    
       BNE    LFCC3   
       LDA    $D5     
       ORA    #$20    
       STA    $D5     
       LDA    #$64    
       STA    $F1     
       LDA    #$19    
       STA    $F2     
       LDA    #$89    
       STA    $A9     
LFCC3: LDA    $F1     
       BEQ    LFCD1   
       DEC    $F1     
       BNE    LFCD1   
       LDA    $D5     
       AND    #$DF    
       STA    $D5     
LFCD1: RTS            

LFCD2: LDA    $E3     
       BEQ    LFCDC   
       LDA    $E1     
       CMP    #$14    
       BCC    LFCE8   
LFCDC: LDA    $E2     
       AND    #$08    
       BNE    LFCEC   
       LDA    #$4A    
       STA    WSYNC   
       BNE    LFCF3   
LFCE8: LDA    $B4     
       BEQ    LFCF3   
LFCEC: STA    WSYNC   
       LDX    $CF     
       LDA    LFFB7,X 
LFCF3: STA    COLUPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       RTS            

LFD00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$18,$DB,$7E,$3C,$3C,$7E,$DB,$18,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$3C,$7E
       .byte $99,$81,$00,$55,$00,$81,$99,$7E,$18,$18,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$7E,$F0,$F0
       .byte $FF,$06,$3C,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$22,$41,$81,$E7,$7E,$7E,$00,$CC,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $60,$20,$26,$24,$FF,$7E,$6A,$3C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$7E,$E1,$E0,$7E,$3C
       .byte $24,$E7,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$07,$1C,$71,$F0,$FC,$7E,$1C,$1B,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFDE8: .byte $00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$07,$0F,$1F
LFDF5: .byte $20,$20,$3C,$20,$3C
LFDFA: .byte $24,$24,$3C,$24,$24,$AA
LFE00: .byte $50,$00,$F0,$A9,$C5,$F7,$00,$4F,$60,$60,$21,$22,$23,$24,$25,$26
       .byte $47,$00,$4F,$4F,$48,$88,$70,$7F,$6F,$70,$74,$9A,$BF,$00,$C5,$A0
       .byte $00,$62,$63,$64,$65,$66,$67,$68,$69,$00,$60,$63,$00,$89,$88,$87
       .byte $86,$85,$84,$83,$82,$00,$B3,$D3,$D3,$D3,$D3,$D3,$D3,$D3,$D3,$D3
       .byte $D3,$D3,$D3,$00,$42,$F6,$FC,$FC,$FC,$FC,$FC,$0F,$FC,$FC,$FC,$FC
       .byte $F6,$42,$84,$44,$0A,$0A,$44,$0A,$88,$84,$90,$92,$94,$96,$98,$9A
       .byte $9C,$9E,$CE,$0C,$CA,$C8,$06,$C4,$C2,$C0,$C4,$C4,$C4,$C4,$C8,$C4
       .byte $00,$0F,$62,$62,$62,$62,$62,$62,$62,$5F,$44,$44,$44,$C4,$96,$C4
       .byte $CA,$CA,$16,$16,$16,$62,$84,$54,$56,$56,$F2,$FA,$FA,$FA,$FA,$F2
       .byte $0C,$42,$EC,$EC,$D8,$D8,$D8,$D8,$D8,$D8,$24,$24,$24,$24,$24,$24
       .byte $24,$0F,$A4,$A4,$A6,$A6,$A6,$A6,$A2,$0F,$4C,$4C,$4C
LFEAD: .byte $84,$84,$8A,$1A,$1A,$8A,$84,$84,$00,$00,$44,$48,$48,$44,$00,$00
LFEBD: .byte $3C,$18,$3D,$A7,$E5,$BC,$18,$3C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3C,$18,$BC,$E5,$A7,$3D,$18,$3C,$4F,$4F,$4F,$4F,$4F,$4F
       .byte $4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F,$4F
       .byte $4F,$4F,$4F
LFF00: .byte $24,$00,$CF,$CF,$CF,$00,$00,$4F,$8F,$00,$8F,$8D,$8B,$89,$87,$85
       .byte $83,$00,$2C,$2C,$86,$8F,$8F,$87,$2F,$2F,$8D,$8B,$87,$00,$C5,$00
       .byte $00,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$00,$1D,$1D,$00,$CF,$CF,$CF
       .byte $CF,$CF,$CF,$CF,$CF,$00,$8F,$8F,$8E,$8D,$8C,$8B,$8A,$89,$88,$87
       .byte $86,$85,$84
LFF43: .byte $10,$20,$30,$01,$10,$20,$30,$00
LFF4B: .byte $55,$5D,$65,$6D,$75,$7D,$85,$8D,$95,$9D
LFF55: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$7E,$18,$18,$18,$18,$78,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
LFFA5: .byte $3C,$20,$3C,$20,$3C
LFFAA: .byte $80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF,$FF,$FF
LFFB7: .byte $A1,$11,$B1,$41,$14,$C1,$81,$51,$62
LFFC0: LDA    $B1     
       EOR    #$80    
       STA    $B1     
       LDA    $EC     
       LDY    $EE     
       STA    $EE     
       STY    $EC     
       LDA    $ED     
       LDY    $EF     
       STA    $EF     
       STY    $ED     
       LDA    $CF     
       LDY    $E9     
       STA    $E9     
       STY    $CF     
       RTS            

LFFDF: STA    $E6     
       BIT    $E6     
       BMI    LFFEF   
       LDA    $BE     
       ORA    #$80    
       STA    $BE     
       LDA    #$FF    
       BNE    LFFF3   
LFFEF: BVS    LFFFB   
       LDA    #$00    
LFFF3: STA    $C6     
       JSR    LF7C5   
       JSR    LF7C5   
LFFFB: RTS            

LFFFC: .byte $00,$F0,$AA,$AA
