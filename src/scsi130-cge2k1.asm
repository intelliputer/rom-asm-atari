; Disassembly of roms/scsi130-cge2k1.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/scsi130-cge2k1.bin
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
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $53,$43,$53,$49,$63,$69,$64,$65,$20,$76,$31,$2E,$33,$2C,$20,$43
       .byte $47,$45,$32,$4B,$31,$20,$53,$70,$65,$63,$69,$61,$6C,$20,$52,$65
       .byte $6C,$65,$61,$73,$65,$2C,$20,$4A,$75,$6C,$79,$20,$32,$39,$2C,$20
       .byte $32,$30,$30,$31,$2C,$20,$43,$6F,$70,$79,$72,$69,$67,$68,$74,$20
       .byte $4A,$2E,$20,$47,$72,$61,$6E,$64,$20

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF050: STA    VSYNC,X 
       DEX            
       BNE    LF050   
       JSR    LF4E7   
LF058: JSR    LF06A   
       JSR    LF08C   
       JSR    LF0B4   
       JSR    LF191   
       JSR    LF405   
       JMP    LF058   
LF06A: LDA    #$82    
       STA    VBLANK  
       LDA    #$02    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$02    
       STA    VBLANK  
       LDA    #$2C    
       STA    TIM64T  
       RTS            

LF08C: LDA    SWCHB   
       LSR            
       ROR            
       BMI    LF0A4   
       LDA    #$01    
       STA    $E8     
       STA    $EA     
       JSR    LF511   
       JSR    LF5C1   
       LDA    #$01    
       STA    $E9     
       RTS            

LF0A4: LDA    SWCHB   
       ASL            
       BMI    LF0AF   
       LDA    #$00    
       JMP    LF0B1   
LF0AF: LDA    #$05    
LF0B1: STA    $F1     
       RTS            

LF0B4: JSR    LF707   
       LDA    #$01    
       STA    $83     
       LDA    $E2     
       BNE    LF0C2   
       JSR    LF61F   
LF0C2: LDA    $84     
       BNE    LF0CE   
       LDA    $E9     
       BEQ    LF0DA   
       LDA    #$0F    
       STA    $84     
LF0CE: DEC    $84     
       BNE    LF0DA   
       LDA    SWCHA   
       BMI    LF0DA   
       JSR    LF5E5   
LF0DA: LDX    #$09    
LF0DC: LDA    $85,X   
       CLC            
       ADC    $99,X   
       STA    $85,X   
       CMP    #$08    
       BCC    LF0EE   
       CMP    #$9E    
       BCS    LF0F8   
       JMP    LF110   
LF0EE: LDA    #$08    
       SEC            
       SBC    $85,X   
       CLC            
       ADC    #$08    
       STA    $85,X   
LF0F8: LDA    #$08    
       STA    $85,X   
       LDA    $D1     
       CMP    $BD,X   
       BNE    LF110   
       LDA    $E9     
       BNE    LF110   
       LDA    #$2E    
       STA    $EF     
       JSR    LF6CA   
       JSR    LF6A7   
LF110: LDA    $85,X   
       JSR    LF724   
       STA    $8F,X   
       DEX            
       BPL    LF0DC   
       LDA    #$00    
       STA    $A4     
       STA    $A5     
       LDA    #$08    
       STA    $AF     
       LDA    $A3     
       STA    $B0     
       LDA    SWCHA   
       AND    #$0C    
       BNE    LF160   
       LDA    #$90    
       STA    $D6     
       LDA    #$FD    
       STA    $D7     
       LDA    #$A0    
       STA    $D8     
       LDA    #$FD    
       STA    $D9     
       LDA    #$98    
       STA    $DA     
       LDA    #$FD    
       STA    $DB     
       LDA    #$88    
       STA    $DC     
       LDA    #$FD    
       STA    $DD     
       LDA    #$A8    
       STA    $DE     
       LDA    #$FD    
       STA    $DF     
       LDA    #$80    
       STA    $E0     
       LDA    #$FD    
       STA    $E1     
       RTS            

LF160: LDX    #$02    
       LDY    #$0A    
LF164: LDA    $D3,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$00    
       STA.wy $00D6,Y 
       LDA    #$00    
       ADC    #$FD    
       STA.wy $00D7,Y 
       DEY            
       DEY            
       LDA    $D3,X   
       AND    #$F0    
       LSR            
       ADC    #$00    
       STA.wy $00D6,Y 
       LDA    #$00    
       ADC    #$FD    
       STA.wy $00D7,Y 
       DEY            
       DEY            
       DEX            
       BPL    LF164   
       RTS            

LF191: LDA    #$00    
       STA    COLUBK  
LF195: LDA    INTIM   
       BNE    LF195   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    WSYNC   
       LDA    $EA     
       BEQ    LF1AB   
       JMP    LF27C   
LF1AB: LDA    #$E4    
       STA    TIM64T  
       LDX    #$1E    
LF1B2: STA    WSYNC   
       DEX            
       BNE    LF1B2   
       CLC            
       LDA    $F2     
       ADC    #$02    
       STA    $F2     
       STA    $F3     
       STA    COLUPF  
       LDY    #$0A    
       LDX    #$07    
LF1C6: STA    WSYNC   
       LDA    LFDD8,X 
       STA    PF0     
       LDA    LFDE0,X 
       STA    PF1     
       LDA    LFDE8,X 
       STA    PF2     
       INC    $F3     
       NOP            
       LDA    LFDF0,X 
       STA    PF0     
       LDA    LFDF8,X 
       STA    PF1     
       LDA    LFE00,X 
       STA    PF2     
       LDA    $F3     
       LDA    $F3     
       STA    COLUPF  
       DEY            
       BNE    LF1C6   
       LDY    #$0A    
       DEX            
       BPL    LF1C6   
       LDY    #$00    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDX    #$20    
LF201: STA    WSYNC   
       DEX            
       BNE    LF201   
       LDX    #$01    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    #$0E    
       STA    COLUP0  
       STA    COLUP1  
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDA    #$00    
       STA    HMP0    
       LDX    #$10    
LF22B: STA    WSYNC   
       STA    HMOVE   
       LDA    LFE08,X 
       STA    GRP0    
       LDA    LFE19,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LFE3B,X 
       TAY            
       LDA    LFE2A,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFE08,X 
       STA    GRP0    
       LDA    LFE19,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LFE3B,X 
       TAY            
       LDA    LFE2A,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF22B   
LF276: LDA    INTIM   
       BNE    LF276   
       RTS            

LF27C: LDA    $D1     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       LDX    #$16    
LF28C: DEX            
       BNE    LF28C   
       STA    RESP0   
       STA    WSYNC   
       LDX    #$16    
LF295: DEX            
       BNE    LF295   
       NOP            
       STA    RESP1   
       STA    HMCLR   
       LDA    #$A0    
       STA    HMP1    
       LDA    #$C0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$07    
       STA    $82     
       LDX    #$09    
LF2B1: DEX            
       BNE    LF2B1   
       NOP            
       NOP            
       NOP            
       TSX            
       STX    $81     
LF2BA: LDY    $82     
       LDA    ($D6),Y 
       STA    GRP0    
       BIT    VSYNC   
       LDA    ($D8),Y 
       STA    GRP1    
       LDA    ($E0),Y 
       TAX            
       TXS            
       LDA    ($DA),Y 
       STA    $80     
       LDA    ($DC),Y 
       TAX            
       LDA    ($DE),Y 
       LDY    $80     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       TSX            
       STX    GRP1    
       DEC    $82     
       BPL    LF2BA   
       LDX    $81     
       TXS            
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$94    
       JSR    LF724   
       STA    WSYNC   
       STA    HMP0    
       AND    #$0F    
       TAY            
LF2F7: DEY            
       BPL    LF2F7   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $F1     
       STX    NUSIZ0  
       LDX    #$00    
       STX    NUSIZ1  
       LDA    $D1     
       STA    COLUP0  
       STA    HMCLR   
       LDA    #$00    
       STA    COLUPF  
       STA    PF1     
       STA    PF2     
       LDA    #$30    
       STA    PF0     
       LDA    #$05    
       STA    CTRLPF  
LF31E: LDA    $B0     
       CMP    #$08    
       BCC    LF328   
       LDX    #$00    
       BEQ    LF32E   
LF328: LDA    $AF     
       SEC            
       SBC    $A3     
       TAX            
LF32E: STX    $80     
       LDY    $A4     
       LDA    COLUP1  
       STA.wy $00B3,Y 
       LDA.wy $00BD,Y 
       STA    COLUP1  
       LDA.wy $008F,Y 
       LDY    $E8     
       BEQ    LF346   
       LDY    LFDBA,X 
LF346: STA    WSYNC   
       STY    GRP0    
       STA    HMP1    
       AND    #$0F    
       TAY            
LF34F: DEY            
       BPL    LF34F   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$F4    
       STA    COLUBK  
       LDA    $AF     
       STA    $A5     
       CLC            
       ADC    #$08    
       STA    $AF     
       LDA    $A3     
       SEC            
       SBC    $A5     
       BPL    LF371   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF371: STA    $B0     
       LDX    $80     
       INX            
       LDA    #$00    
       STA    CXCLR   
       LDY    #$06    
LF37C: LDA    #$00    
       STA    WSYNC   
       LDA    #$F2    
       STA    COLUBK  
       LDA    LFDD1,Y 
       STA    GRP1    
       LDA    $E8     
       BEQ    LF390   
       LDA    LFDBA,X 
LF390: STA    GRP0    
       LDA    COLUPF  
       BMI    LF398   
       INC    $83     
LF398: STA    WSYNC   
       INX            
       DEY            
       BPL    LF37C   
       INC    $A4     
       LDA    $A4     
       CMP    #$0A    
       BCS    LF3A9   
       JMP    LF31E   
LF3A9: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$F4    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDY    #$07    
LF3BD: STA    WSYNC   
       DEY            
       BNE    LF3BD   
       LDA    #$30    
       STA    CTRLPF  
       LDX    #$07    
LF3C8: STA    WSYNC   
       LDA    #$C6    
       STA    COLUPF  
       LDA    #$34    
       STA    COLUBK  
       LDA    $E2     
       STA    PF0     
       LDA    $E3     
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       STA    PF2     
       NOP            
       LDY    $D1     
       STA    COLUBK  
       STY    COLUPF  
       LDA    $E5     
       STA    PF0     
       LDA    $E6     
       STA    PF1     
       LDA    $E7     
       STA    PF2     
       DEX            
       BNE    LF3C8   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$00    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       RTS            

LF405: LDA    #$23    
       STA    TIM64T  
       LDA    $E8     
       BNE    LF411   
       JMP    LF471   
LF411: LDX    $83     
       LDA    SWCHB   
       BPL    LF46F   
       CPX    #$0E    
       BPL    LF421   
       LDX    #$00    
       JMP    LF46F   
LF421: CPX    #$15    
       BPL    LF42A   
       LDX    #$08    
       JMP    LF46F   
LF42A: CPX    #$1C    
       BPL    LF433   
       LDX    #$10    
       JMP    LF46F   
LF433: CPX    #$23    
       BPL    LF43C   
       LDX    #$18    
       JMP    LF46F   
LF43C: CPX    #$2A    
       BPL    LF445   
       LDX    #$20    
       JMP    LF46F   
LF445: CPX    #$31    
       BPL    LF44E   
       LDX    #$28    
       JMP    LF46F   
LF44E: CPX    #$38    
       BPL    LF457   
       LDX    #$30    
       JMP    LF46F   
LF457: CPX    #$3F    
       BPL    LF460   
       LDX    #$38    
       JMP    LF46F   
LF460: CPX    #$46    
       BPL    LF469   
       LDX    #$40    
       JMP    LF46F   
LF469: CPX    #$4D    
       BPL    LF46F   
       LDX    #$48    
LF46F: STX    $A3     
LF471: LDA    $E8     
       BEQ    LF4DE   
       LDA    $E9     
       BNE    LF4DE   
       LDA    $B1     
       BNE    LF499   
       LDA    SWCHA   
       BMI    LF4DE   
       LDX    #$09    
       LDA    #$00    
LF486: ORA    $B3,X   
       DEX            
       BPL    LF486   
       CMP    #$00    
       BMI    LF49B   
       JSR    LF6CA   
       LDA    #$14    
       STA    $B1     
       JMP    LF4DE   
LF499: DEC    $B1     
LF49B: LDX    #$09    
LF49D: LDA    $B2     
       BNE    LF4D5   
       LDA    $B3,X   
       BPL    LF4D7   
       STX    $80     
       DEX            
       BPL    LF4AC   
       LDX    #$09    
LF4AC: LDA    $D1     
       CMP    $BD,X   
       BEQ    LF4BC   
       JSR    LF6A7   
       LDA    #$5C    
       STA    $EF     
       JMP    LF4DE   
LF4BC: LDA    #$00    
       STA    $85,X   
       STA    $99,X   
       LDA    #$8F    
       STA    $EF     
       JSR    LF6DE   
       JSR    LF5B2   
       JSR    LF549   
       LDA    #$14    
       STA    $B2     
       LDX    $80     
LF4D5: DEC    $B2     
LF4D7: LDA    #$00    
       STA    $B3,X   
       DEX            
       BPL    LF49D   
LF4DE: JSR    LF637   
LF4E1: LDA    INTIM   
       BNE    LF4E1   
       RTS            

LF4E7: LDA    #$9A    
       STA    $EB     
       STA    $EC     
       STA    $ED     
       STA    $EE     
       JSR    LF511   
       LDX    #$0B    
       LDA    #$00    
LF4F8: STA    $D6,X   
       DEX            
       BPL    LF4F8   
       STA    WSYNC   
       LDY    #$03    
LF501: DEY            
       BNE    LF501   
       STA    RESP0   
       STA    $E8     
       STA    $EA     
       STA    $F2     
       LDA    #$C6    
       STA    $D1     
       RTS            

LF511: LDA    #$00    
       STA    $B1     
       STA    $B2     
       STA    $D2     
       STA    $84     
       STA    $D3     
       STA    $D4     
       STA    $D5     
       STA    $E4     
       STA    $E5     
       STA    $E6     
       STA    $E7     
       STA    $E2     
       STA    $E3     
       STA    $EF     
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       LDX    #$09    
LF53D: STA    $85,X   
       STA    $99,X   
       DEX            
       BPL    LF53D   
       LDA    #$19    
       STA    $F0     
       RTS            

LF549: LDA    $E4     
       CMP    #$0A    
       BNE    LF552   
       JSR    LF5CA   
LF552: LDY    $E4     
       LDA.wy $00C7,Y 
       STA    $D1     
       RTS            

LF55A: LDY    #$09    
       LDA    #$00    
LF55E: STA.wy $0085,Y 
       STA.wy $0099,Y 
       DEY            
       BPL    LF55E   
       LDY    #$09    
LF569: JSR    LF719   
       STA    $80     
LF56E: AND    #$0F    
       CMP    #$0A    
       BMI    LF577   
       CLC            
       SBC    #$09    
LF577: TAX            
       LDA    $85,X   
       BEQ    LF583   
       TXA            
       CLC            
       ADC    #$01    
       JMP    LF56E   
LF583: LDA    LFDB0,X 
       STA.wy $00BD,Y 
       STA    $85,X   
       LDA    $80     
       LSR            
       LSR            
       LSR            
       LSR            
LF591: AND    #$0F    
       CMP    #$0A    
       BMI    LF59A   
       CLC            
       SBC    #$09    
LF59A: TAX            
       LDA    $99,X   
       BEQ    LF5A6   
       TXA            
       CLC            
       ADC    #$01    
       JMP    LF591   
LF5A6: LDA    LFDB0,X 
       STA.wy $00C7,Y 
       STA    $99,X   
       DEY            
       BPL    LF569   
       RTS            

LF5B2: LDX    $E2     
       BEQ    LF5C1   
       JSR    LF6CA   
       LDA    $D3     
       JSR    LF69A   
       JMP    LF5B2   
LF5C1: LDA    #$F0    
       STA    $E2     
       LDA    #$FF    
       STA    $E3     
       RTS            

LF5CA: LDA    #$00    
       STA    $E4     
       STA    $E5     
       STA    $E6     
       STA    $E7     
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       LDA    #$01    
       STA    $E9     
       RTS            

LF5E5: LDA    #$00    
       STA    $E9     
       JSR    LF55A   
       JSR    LF549   
       LDY    #$09    
LF5F1: JSR    LF719   
       AND    #$7F    
       STA.wy $0085,Y 
       CLC            
       LDA    $D3     
       ADC    #$02    
       LSR            
       STA.wy $0099,Y 
       DEY            
       BPL    LF5F1   
       INC    $D3     
       LDA    #$0F    
       STA    AUDC0   
       LDA    #$09    
       STA    AUDV0   
       LDA    $F0     
       CMP    #$05    
       BNE    LF617   
       LDA    #$06    
LF617: SEC            
       SBC    #$01    
       STA    $F0     
       STA    AUDF0   
       RTS            

LF61F: LDA    #$00    
       STA    $E8     
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       LDX    #$09    
LF631: STA    $99,X   
       DEX            
       BPL    LF631   
       RTS            

LF637: LDA    $EF     
       BEQ    LF699   
       AND    #$40    
       BNE    LF662   
       LDA    $EF     
       AND    #$20    
       BNE    LF67F   
       LDA    $EF     
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$06    
       STA    AUDF1   
       DEC    $EF     
       LDA    $EF     
       AND    #$0F    
       BNE    LF699   
       LDA    #$00    
       STA    AUDV1   
       STA    $EF     
       JMP    LF699   
LF662: LDA    $EF     
       STA    AUDV1   
       LDA    #$0B    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDC1   
       DEC    $EF     
       LDA    $EF     
       AND    #$0F    
       BNE    LF699   
       LDA    #$00    
       STA    AUDV1   
       STA    $EF     
       JMP    LF699   
LF67F: LDA    $EF     
       STA    AUDV1   
       EOR    #$FF    
       STA    AUDF1   
       LDA    #$05    
       STA    AUDC1   
       DEC    $EF     
       LDA    $EF     
       AND    #$0F    
       BNE    LF699   
       LDA    #$00    
       STA    AUDV1   
       STA    $EF     
LF699: RTS            

LF69A: CLC            
       LDX    #$01    
LF69D: ADC    $D4,X   
       STA    $D4,X   
       LDA    #$00    
       DEX            
       BPL    LF69D   
       RTS            

LF6A7: LDA    $D5     
       BNE    LF6B1   
       ORA    $D4     
       BEQ    LF6B3   
       DEC    $D4     
LF6B1: DEC    $D5     
LF6B3: RTS            

LF6B4: .byte $A5,$E2,$C9,$F0,$F0,$08,$0A,$09,$10,$85,$E2,$4C,$C9,$F6,$A5,$E3
       .byte $4A,$09,$80,$85,$E3,$60
LF6CA: LDA    $E3     
       CMP    #$00    
       BEQ    LF6D6   
       ASL            
       STA    $E3     
       JMP    LF6DD   
LF6D6: LDA    $E2     
       LSR            
       AND    #$F0    
       STA    $E2     
LF6DD: RTS            

LF6DE: INC    $E4     
       LDA    $E5     
       CMP    #$F0    
       BEQ    LF6EF   
       ASL            
       ASL            
       ORA    #$30    
       STA    $E5     
       JMP    LF706   
LF6EF: LDA    $E6     
       CMP    #$FF    
       BEQ    LF6FE   
       LSR            
       LSR            
       ORA    #$C0    
       STA    $E6     
       JMP    LF706   
LF6FE: LDA    $E7     
       ASL            
       ASL            
       ORA    #$03    
       STA    $E7     
LF706: RTS            

LF707: LDA    $EE     
       ASL            
       ASL            
       ASL            
       EOR    $EE     
       ASL            
       ASL            
       ROL    $EB     
       ROL    $EC     
       ROL    $ED     
       ROL    $EE     
       RTS            

LF719: LDX    #$08    
LF71B: JSR    LF707   
       DEX            
       BNE    LF71B   
       LDA    $EB     
       RTS            

LF724: STA    $80     
       BPL    LF730   
       CMP    #$9E    
       BCC    LF730   
       LDA    #$00    
       STA    $80     
LF730: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $80     
       AND    #$0F    
       STY    $80     
       CLC            
       ADC    $80     
       CMP    #$0F    
       BCC    LF745   
       SBC    #$0F    
       INY            
LF745: CMP    #$08    
       EOR    #$0F    
       BCS    LF74E   
       ADC    #$01    
       DEY            
LF74E: INY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $80     
       TYA            
       ORA    $80     
       RTS            

LF759: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C
       .byte $18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C
       .byte $46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C
       .byte $46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18
       .byte $18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C
       .byte $46,$06,$3E,$66,$66,$66,$3C,$66,$66,$66,$7E,$66,$66,$66,$3C,$7C
       .byte $66,$66,$7C,$7C,$66,$66,$7C,$3C,$66,$60,$60,$60,$60,$66,$3C,$7C
       .byte $66,$62,$62,$62,$62,$66,$7C,$7E,$60,$60,$60,$7E,$60,$60,$7E,$60
       .byte $60,$60,$60,$7E,$60,$60,$7E,$18,$18,$18,$18,$10,$10,$10,$10,$7C
       .byte $60,$60,$60,$7C,$04,$04,$7C,$7C,$44,$44,$40,$40,$4C,$4C,$7C,$7C
       .byte $60,$60,$60,$7C,$40,$40,$7C,$7E,$46,$46,$4E,$40,$40,$42,$7E,$32
       .byte $32,$32,$32,$3E,$24,$24,$24
LFDB0: .byte $06,$18,$24,$34,$48,$54,$84,$A6,$C4,$EE
LFDBA: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$3E,$6B,$08,$08,$08,$6B,$3E
       .byte $00,$00,$00,$00,$00,$00,$00
LFDD1: .byte $00,$7E,$FF,$FF,$FF,$7E,$00
LFDD8: .byte $E0,$20,$20,$00,$E0,$20,$20,$E0
LFDE0: .byte $DF,$D1,$D1,$D0,$D0,$13,$53,$DF
LFDE8: .byte $BE,$B2,$B2,$B0,$BE,$82,$A2,$BE
LFDF0: .byte $D0,$50,$50,$50,$C0,$00,$00,$00
LFDF8: .byte $DB,$5B,$1B,$D3,$D3,$00,$10,$00
LFE00: .byte $7B,$1A,$7A,$5A,$7B,$02,$02,$02
LFE08: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F4,$90,$10,$10,$30,$30
       .byte $00
LFE19: .byte $00,$EF,$CD,$ED,$2D,$2D,$EF,$00,$00,$00,$FB,$9B,$BA,$82,$8B,$F8
       .byte $00
LFE2A: .byte $00,$7B,$6B,$6B,$6A,$6A,$7A,$00,$00,$00,$3D,$35,$3D,$85,$BD,$00
       .byte $00
LFE3B: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$AF,$AD,$AD,$2D,$EF,$01
       .byte $01,$52,$75,$6E,$6E,$69,$6E,$67,$20,$61,$20,$72,$61,$63,$65,$20
       .byte $68,$61,$73,$6E,$27,$74,$20,$63,$68,$61,$6E,$67,$65,$64,$20,$6D
       .byte $75,$63,$68,$20,$69,$6E,$20,$61,$20,$74,$68,$6F,$75,$73,$61,$6E
       .byte $64,$20,$79,$65,$61,$72,$73,$2E,$20,$49,$74,$20,$69,$73,$20,$73
       .byte $74,$69,$6C,$6C,$20,$61,$20,$73,$75,$70,$72,$65,$6D,$65,$20,$74
       .byte $65,$73,$74,$20,$6F,$66,$20,$74,$68,$65,$20,$69,$6E,$64,$69,$76
       .byte $69,$64,$75,$61,$6C,$2E,$20,$57,$68,$65,$6E,$20,$74,$68,$65,$20
       .byte $73,$74,$61,$72,$74,$65,$72,$27,$73,$20,$70,$69,$73,$74,$6F,$6C
       .byte $20,$63,$72,$61,$63,$6B,$73,$2C,$20,$72,$75,$6E,$6E,$65,$72,$73
       .byte $20,$61,$72,$65,$20,$61,$6C,$6F,$6E,$65,$2C,$20,$64,$65,$70,$65
       .byte $6E,$64,$65,$6E,$74,$20,$6F,$6E,$20,$74,$68,$65,$6D,$73,$65,$6C
       .byte $76,$65,$73,$2E,$20,$54,$68,$65,$20,$67,$72,$65,$61,$74,$65,$72
       .byte $20,$74,$68,$65,$69,$72,$20,$70,$68,$79,$73,$69,$63,$61,$6C,$20
       .byte $61,$6E,$64,$20,$6D,$65,$6E,$74,$61,$6C,$20,$63,$6F,$6E,$64,$69
       .byte $74,$69,$6F,$6E,$69,$6E,$67,$2C,$20,$74,$68,$65,$20,$67,$72,$65
       .byte $61,$74,$65,$72,$20,$74,$68,$65,$20,$72,$75,$6E,$6E,$65,$72,$73
       .byte $2E,$20,$54,$68,$65,$20,$69,$6D,$6D,$6F,$72,$74,$61,$6C,$73,$20
       .byte $6F,$66,$20,$74,$68,$65,$20,$74,$72,$61,$63,$6B,$20,$62,$65,$63
       .byte $6F,$6D,$65,$20,$63,$68,$61,$72,$69,$6F,$74,$73,$20,$6F,$66,$20
       .byte $66,$69,$72,$65,$2C,$20,$64,$72,$69,$76,$65,$6E,$20,$62,$79,$20
       .byte $61,$20,$62,$75,$72,$6E,$69,$6E,$67,$20,$64,$65,$73,$69,$72,$65
       .byte $20,$74,$6F,$20,$77,$69,$6E,$2E,$20,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$49,$F0,$49,$F0
