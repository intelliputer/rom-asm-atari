; Disassembly of roms/Tps.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Tps.bin
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
ENAM1   =  $1E
HMP1    =  $21
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
LF000: LDA    $E8     
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF009: STA    VSYNC,X 
       DEX            
       BNE    LF009   
       LDA    LFFF5   
       STA    $CE     
       LDA    LFFF6   
       STA    $CF     
       LDA    LFFF7   
       STA    $D0     
       LDA    #$03    
       STA    $D7     
       LDA    #$07    
       STA    $A5     
       LDA    #$FD    
       STA    $DB     
       LDA    #$09    
       STA    $AA     
       JSR    LFC1F   
       JSR    LFC35   
       LDA    #$04    
       STA    $A8     
       LDA    #$C8    
       STA    $D9     
       LDA    #$05    
       STA    CTRLPF  
LF03F: JSR    LF079   
       INC    $80     
       LDA    $80     
       TAY            
       AND    #$01    
       STA    $E7     
       TYA            
       ADC    $E5     
       STA    $E5     
       LDA    $E4     
       BEQ    LF05C   
       LDA    REFP1   
       ORA    #$7F    
       EOR    #$FF    
       STA    $E4     
LF05C: JSR    LF08B   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF06F   
       LDX    #$FF    
LF068: NOP            
       DEX            
       BNE    LF068   
       JMP    LF000   
LF06F: JSR    LF31E   
       JSR    LF860   
       JMP    LF03F   
LF078: .byte $60
LF079: LDA    #$02    
       LDY    #$2D    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STY    TIM64T  
       STY    VSYNC   
       RTS            

LF08B: STA    HMCLR   
       LDA    $AC     
       JSR    LFCAA   
       STY    $81     
       ORA    $81     
       STA    $AE     
       LDA    $B0     
       BEQ    LF0AD   
       LDA    $E7     
       CLC            
       ADC    $B0     
       STA    $B0     
       LDA    $B0     
       CMP    #$B9    
       BNE    LF0AD   
       LDA    #$00    
       STA    $B0     
LF0AD: STA    $B3     
       LDA    $A8     
       CMP    #$0B    
       BNE    LF0B6   
       RTS            

LF0B6: LDA    $D9     
       BEQ    LF0BB   
       RTS            

LF0BB: LDA    $A8     
       CMP    #$0A    
       BEQ    LF0F3   
       LDA    $E8     
       CMP    #$0F    
       BEQ    LF0F3   
       CMP    #$1F    
       BEQ    LF0DA   
       CMP    #$3F    
       BEQ    LF0E5   
       LDA    $80     
       AND    $E8     
       BNE    LF0F3   
       INC    $AD     
       JMP    LF0F3   
LF0DA: LDA    $80     
       AND    #$07    
       BNE    LF0F3   
       DEC    $AD     
       JMP    LF0F3   
LF0E5: LDA    $80     
       AND    #$03    
       BNE    LF0F3   
       DEC    $AD     
       JMP    LF0F3   
LF0F0: .byte $4C,$35,$F1
LF0F3: LDA    $A8     
       CMP    #$06    
       BEQ    LF135   
       CMP    #$09    
       BEQ    LF135   
       LDA    $80     
       AND    #$03    
       BEQ    LF106   
       JMP    LF261   
LF106: LDA    $A9     
       BEQ    LF121   
LF10A: INC    $AB     
       LDA    $AB     
       CMP    #$03    
       BNE    LF135   
       LDA    #$00    
       STA    $AB     
       INC    $AA     
       LDA    $AA     
       CMP    #$13    
       BNE    LF135   
       JSR    LF317   
LF121: DEC    $AB     
       BPL    LF135   
       LDA    #$02    
       STA    $AB     
       DEC    $AA     
       LDA    $AA     
       BPL    LF135   
       JSR    LF317   
       JMP    LF10A   
LF135: LDY    $AD     
       LDX    #$0D    
       LDA    $AB     
       CMP    #$02    
       BEQ    LF199   
       CMP    #$01    
       BEQ    LF172   
LF143: LDA    LFF0E,X 
       ROL            
       LDA    LFF38,X 
       ROL            
       PHP            
       STA    $81     
       LDA    LFE00,Y 
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $81     
       STA    $97,X   
       LDA    LFF2A,X 
       PLP            
       ROL            
       STA    $81     
       LDA    LFE00,Y 
       LSR            
       LSR            
       LSR            
       ORA    $81     
       STA    $89,X   
       DEY            
       DEX            
       BPL    LF143   
       JMP    LF261   
LF172: LDA    LFF2A,X 
       STA    $81     
       LDA    LFE00,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $81     
       STA    $89,X   
       LDA    LFF38,X 
       STA    $81     
       LDA    LFE00,Y 
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $81     
       STA    $97,X   
       DEY            
       DEX            
       BPL    LF172   
       JMP    LF261   
LF199: LDA    LFF1C,X 
       ROR            
       LDA    LFF2A,X 
       ROR            
       PHP            
       STA    $81     
       LDA    LFE00,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $81     
       STA    $89,X   
       LDA    LFF38,X 
       PLP            
       ROR            
       STA    $81     
       LDA    LFE00,Y 
       ASL            
       ASL            
       ASL            
       ORA    $81     
       STA    $97,X   
       DEY            
       DEX            
       BPL    LF199   
       JMP    LF261   
LF1C8: LDA    $A8     
       CMP    #$07    
       BEQ    LF1DA   
       CMP    #$09    
       BNE    LF1D3   
       RTS            

LF1D3: LDA    #$7E    
       STA    $DA     
       JMP    LF1E8   
LF1DA: LDA    $D8     
       LDY    #$05    
       CMP    #$05    
       BPL    LF1E3   
       TAY            
LF1E3: LDA    LFD78,Y 
       STA    $DA     
LF1E8: LDX    #$07    
       LDA    #$00    
       STA    $81     
LF1EE: TXA            
       TAY            
       LDA    $80     
       CLC            
       ADC    #$01    
       AND    ($DA),Y 
       BEQ    LF1FE   
       LDA    $B4,X   
       JMP    LF244   
LF1FE: LDA    $B4,X   
       BEQ    LF244   
       LDA    $A6     
       BEQ    LF22B   
       LDA    $B0     
       BNE    LF22B   
       LDA    $A8     
       CMP    #$07    
       BNE    LF22B   
       LDA    LFFB0,X 
       CLC            
       ADC    #$20    
       CMP    $AD     
       BPL    LF22B   
       LDA    $B4,X   
       CMP    #$28    
       BMI    LF22B   
       CMP    #$78    
       BPL    LF22B   
       LDA    LFFB0,X 
       STA    $B0     
       STX    $B2     
LF22B: LDA    $81     
       AND    #$01    
       BEQ    LF23C   
       INC    $B4,X   
       LDA    $B4,X   
       CMP    #$90    
       BEQ    LF25A   
       JMP    LF244   
LF23C: DEC    $B4,X   
       LDA    $B4,X   
       CMP    #$01    
       BEQ    LF253   
LF244: INC    $81     
       JSR    LFCAA   
       STY    $82     
       ORA    $82     
       STA    $BE,X   
       DEX            
       BPL    LF1EE   
       RTS            

LF253: LDA    #$90    
       STA    $B4,X   
       JMP    LF244   
LF25A: LDA    #$01    
       STA    $B4,X   
       JMP    LF244   
LF261: LDA    $E7     
       BEQ    LF268   
       JMP    LF1C8   
LF268: LDX    #$02    
LF26A: LDA    $D1,X   
       BEQ    LF2AE   
       LDA    $A6     
       BNE    LF296   
       LDA    $A8     
       CMP    #$08    
       BNE    LF296   
       LDA    $CE,X   
       CPX    #$02    
       BNE    LF281   
       CLC            
       ADC    #$1D    
LF281: SEC            
       SBC    #$04    
       CMP    $AC     
       BMI    LF28F   
       LDA    #$01    
       STA    $D1,X   
       JMP    LF2C6   
LF28F: LDA    #$02    
       STA    $D1,X   
       JMP    LF2AE   
LF296: LDA    $80     
       AND    #$0F    
       BNE    LF2AE   
       STX    $81     
       LDA    $80     
       ADC    $E5     
       ADC    $81     
       ADC    #$0D    
       ADC    $B4,X   
       AND    #$03    
       BEQ    LF2AE   
       STA    $D1,X   
LF2AE: LDA    $D1,X   
       CMP    #$02    
       BNE    LF2C6   
       INC    $CE,X   
       LDA    $CE,X   
       CMP    LFFF5,X 
       BMI    LF2D9   
       LDA    #$03    
       DEC    $CE,X   
       STA    $D1,X   
       JMP    LF2D9   
LF2C6: CMP    #$01    
       BNE    LF2D9   
       DEC    $CE,X   
       LDA    $CE,X   
       CMP    LFFF2,X 
       BPL    LF2D9   
       LDA    #$03    
       INC    $CE,X   
       STA    $D1,X   
LF2D9: DEX            
       BMI    LF2DF   
       JMP    LF26A   
LF2DF: LDX    #$02    
LF2E1: LDA    $CE,X   
       JSR    LFCAA   
       STY    $81     
       ORA    $81     
       STA    $D4,X   
       DEX            
       BPL    LF2E1   
       LDA    $80     
       AND    #$08    
       STA    $81     
       LDA    $D1     
       TAY            
       LDA    LFDE5,Y 
       CLC            
       ADC    $81     
       STA    $CA     
       LDA    $D2     
       TAY            
       LDA    LFDE5,Y 
       CLC            
       ADC    $81     
       STA    $C8     
       LDA    $D3     
       TAY            
       LDA    LFDE5,Y 
       CLC            
       ADC    $81     
       STA    $CC     
       RTS            

LF317: LDA    $A9     
       EOR    #$01    
       STA    $A9     
       RTS            

LF31E: LDA    INTIM   
       BNE    LF31E   
       STA    WSYNC   
       STA    VBLANK  
       JSR    LFC56   
       STA    WSYNC   
       LDA    #$30    
       STA    COLUBK  
       LDA    #$F0    
       STA    PF0     
       AND    #$80    
       STA    PF1     
       LDA    #$30    
       STA    COLUPF  
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       JSR    LFCC9   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDA    #$00    
       STA    $81     
       JSR    LFCCA   
       STA    WSYNC   
       LDA    #$FE    
       STA    $DD     
       STA    $E3     
       LDA    #$00    
       STA    $DC     
       LDA    $E2     
       LDA    #$FD    
       STA    $DF     
       STA    $E1     
       LDA    $87     
       ASL            
       ASL            
       ASL            
       STA    $DE     
       LDA    $88     
       ASL            
       ASL            
       ASL            
       STA    $E0     
       LDA    #$80    
       STA    $81     
       JSR    LFCCA   
       LDA    $A8     
       CMP    #$03    
       BMI    LF3D7   
       CMP    #$04    
       BEQ    LF38A   
       JMP    LF412   
LF38A: JSR    LFCF2   
       LDA    #$50    
       STA    $DC     
       LDA    #$58    
       STA    $DE     
       LDA    #$60    
       STA    $E0     
       LDA    #$68    
       STA    $E2     
       LDA    #$FD    
       STA    $DD     
       STA    $DF     
       STA    $E1     
       STA    $E3     
       LDY    #$12    
       JSR    LFFEC   
       JSR    LFCCA   
       LDX    $D8     
       INX            
       TXA            
       ASL            
       ASL            
       ASL            
       STA    $E0     
       LDA    #$FD    
       STA    $E1     
       STA    $DF     
       LDA    #$00    
       STA    $DC     
       STA    $DE     
       STA    $E2     
       LDA    #$FE    
       STA    $DD     
       STA    $E3     
       LDY    #$05    
       JSR    LFFEC   
       JSR    LFCCA   
       JMP    LF402   
LF3D7: JSR    LFCF2   
       LDA    #$C7    
       STA    $DC     
       LDA    #$CF    
       STA    $DE     
       LDA    #$D7    
       STA    $E0     
       LDA    #$DF    
       STA    $E2     
       LDA    #$FF    
       STA    $DD     
       STA    $DF     
       STA    $E1     
       STA    $E3     
       LDY    #$21    
       JSR    LFFEC   
       JSR    LFCCA   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
LF402: LDY    #$51    
       JSR    LFFEC   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$05    
       JMP    LF5A3   
LF412: STA    WSYNC   
       LDA    #$F4    
       STA    $DD     
       STA    WSYNC   
       LDA    $AA     
       LSR            
       STA    $81     
       LDA    #$38    
       SEC            
       SBC    $81     
       STA    $DC     
       LDA    $AA     
       AND    #$01    
       BNE    LF42C   
LF42C: JMP.ind ($00DC)
LF42F: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$85,$10,$85,$11,$A9,$10,$85
       .byte $21,$85,$02,$85,$2A,$A5,$AA,$4A,$85,$81,$A9,$89,$38,$E5,$81,$85
       .byte $DC,$A9,$F4,$85,$DD,$A4,$AB,$B9,$E6,$FF,$85,$DE,$B9,$E9,$FF,$85
       .byte $E0,$A9,$FF,$85,$DF,$85,$E1,$A0,$0D,$84,$07,$B1,$DE,$85,$02,$84
       .byte $06,$85,$1B,$B9,$89,$00,$85,$1C,$A5,$AA,$29,$01,$D0,$00,$6C,$DC
       .byte $00,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$B1,$E0,$AA,$B9,$97,$00
       .byte $85,$1B,$86,$1C,$88,$10,$D2,$85,$02,$A9,$30,$85,$06,$85,$07,$A5
       .byte $AE,$85,$20,$29,$0F,$A8,$85,$02,$88,$10,$FD,$85,$10,$85,$02,$85
       .byte $2A,$A9,$00,$85,$1B,$85,$1C,$85,$05,$85,$04,$A5,$AD,$E9,$10,$85
       .byte $82,$A5,$B3,$85,$DE,$A9,$00,$85,$81,$20,$2D,$F8,$85,$02,$A4,$82
       .byte $C6,$82,$B9,$00,$FE,$85,$1B,$84,$06,$85,$2B,$85,$2C,$A9,$01,$85
       .byte $26,$A2,$07,$85,$02,$A4,$82,$C6,$82,$B9,$00,$FE,$85,$1B,$84,$06
       .byte $B5,$BE,$85,$21,$29,$0F,$A8,$86,$81,$A6,$DE,$C6,$DE,$BD,$00,$FE
       .byte $85,$1E,$A6,$82,$C6,$82,$BD,$00,$FE,$EA,$EA,$EA,$86,$06,$85,$1B
       .byte $85,$02,$88,$10,$FD,$85,$11,$85,$02,$85,$2A,$A4,$82,$C6,$82,$B9
       .byte $00,$FE,$85,$1B,$84,$06,$A5,$A6,$29,$08,$18,$65,$81,$A8,$B9,$BC
       .byte $FD,$85,$DC,$A9,$FF,$85,$DD,$A5,$A6,$D0,$0D,$A5,$81,$29,$01,$18
       .byte $65,$A7,$A8,$B9,$74,$FD,$85,$05,$A0,$07,$85,$02,$A6,$82,$C6,$82
       .byte $BD,$00,$FE,$85,$1B,$86,$06,$A6,$DE,$C6,$DE,$BD,$00,$FE,$85,$1E
       .byte $A5,$81,$C5,$B2,$D0,$04,$A9,$02,$85,$29,$98,$0A,$45,$80,$AA,$B1
       .byte $DC,$85,$1C,$86,$07,$88,$10,$D2,$85,$02,$A9,$00,$85,$29,$85,$05
       .byte $A4,$82,$C6,$82,$B9,$00,$FE,$85,$1B,$84,$06,$A4,$DE,$C6,$DE,$B9
       .byte $00,$FE,$85,$1E,$A6,$81,$8A,$29,$01,$18,$69,$07,$85,$0C,$CA,$30
       .byte $03,$4C,$E2,$F4
LF5A3: STA    WSYNC   
       LDY    $82     
       DEC    $82     
       LDA    LFE00,Y 
       STA    GRP0    
       STY    COLUP0  
       LDA    $A8     
       CMP    #$05    
       BEQ    LF5CC   
       CMP    #$0B    
       BEQ    LF5CC   
       LDA    COLUP1  
       AND    #$80    
       BNE    LF5C9   
       LDA    VBLANK  
       AND    #$80    
       BNE    LF5C9   
       JMP    LF5CC   
LF5C9: JSR    LFBA1   
LF5CC: LDA    #$00    
       STA    REFP1   
       STA    CXCLR   
       STA    ENAM1   
       STA    WSYNC   
       LDY    $82     
       DEC    $82     
       LDA    LFE00,Y 
       STA    GRP0    
       STY    COLUP0  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    $D4     
       AND    #$0F    
       SEC            
       SBC    #$04    
       TAY            
       LDA    $D4     
       STA    HMP1    
       LDA    $D1     
       ASL            
       ASL            
       STA    REFP1   
       STA    WSYNC   
       LDX    $82     
       DEC    $82     
       LDA    LFE00,X 
       STA    GRP0    
       STX    COLUP0  
LF606: DEY            
       BPL    LF606   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $82     
       DEC    $82     
       LDA    LFE00,X 
       STA    GRP0    
       STX    COLUP0  
       LDY    #$07    
LF61C: STA    WSYNC   
       LDX    $82     
       DEC    $82     
       LDA    LFE00,X 
       STA    GRP0    
       STX    COLUP0  
       LDA    ($CA),Y 
       STA    GRP1    
       TYA            
       ORA    #$F0    
       STA    COLUP1  
       DEY            
       BPL    LF61C   
       LDA    #$00    
       STA    GRP1    
       STA    WSYNC   
       LDY    $82     
       DEC    $82     
       LDA    LFE00,Y 
       STA    GRP0    
       STY    COLUP0  
       LDA    #$BF    
       STA    COLUPF  
       LDA    #$F0    
       STA    PF2     
       LDA    #$1A    
       STA    COLUP1  
       LDA    $D5     
       AND    #$0F    
       SEC            
       SBC    #$04    
       TAY            
       LDA    $D5     
       STA    HMP1    
       LDA    $D2     
       ASL            
       ASL            
       STA    REFP1   
       STA    WSYNC   
       LDX    $82     
       DEC    $82     
       LDA    LFE00,X 
       STA    GRP0    
       STX    COLUP0  
LF671: DEY            
       BPL    LF671   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $82     
       DEC    $82     
       LDA    LFE00,X 
       STA    GRP0    
       STX    COLUP0  
       LDY    #$07    
LF687: STA    WSYNC   
       LDX    $82     
       DEC    $82     
       LDA    LFE00,X 
       STA    GRP0    
       STX    COLUP0  
       TYA            
       ORA    #$80    
       STA    COLUP1  
       LDA    ($C8),Y 
       STA    GRP1    
       TYA            
       ASL            
       ORA    #$B0    
       STA    COLUPF  
       DEY            
       BPL    LF687   
       LDA    #$88    
       STA    COLUP1  
       LDX    #$00    
       STA    WSYNC   
       LDY    $82     
       DEC    $82     
       LDA    LFE00,Y 
       STA    GRP0    
       STY    COLUP0  
       LDA    #$BF    
       STA    COLUPF  
       LDA    #$1F    
       STA    PF1     
       LDA    #$E1    
       STA    PF2     
       LDA    $D6     
       AND    #$0F    
       SEC            
       SBC    #$0D    
       TAY            
       LDA    $D6     
       STX    PF1     
       STX    PF2     
       STA    HMP1    
       LDA    $D3     
       ASL            
       ASL            
       STA    REFP1   
       STA    WSYNC   
       LDX    $82     
       DEC    $82     
       LDA    LFE00,X 
       STA    GRP0    
       STX    COLUP0  
       LDA    #$1F    
       STA    PF1     
       LDA    #$E1    
       STA    PF2     
       JSR    LFCC8   
       LDA    #$00    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
LF6FB: DEY            
       BPL    LF6FB   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $82     
       DEC    $82     
       LDA    LFE00,X 
       STA    GRP0    
       STX    COLUP0  
       LDA    #$1F    
       STA    PF1     
       LDA    #$E1    
       STA    PF2     
       JSR    LFCC7   
       LDA    #$00    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       LDY    #$07    
LF724: STA    WSYNC   
       LDX    $82     
       DEC    $82     
       LDA    LFE00,X 
       STA    GRP0    
       STX    COLUP0  
       LDA    #$1F    
       STA    PF1     
       LDA    #$E1    
       STA    PF2     
       TYA            
       ORA    #$A0    
       STA    COLUP1  
       LDA    ($CC),Y 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA    PF2     
       STA    PF1     
       TYA            
       ASL            
       ORA    #$B0    
       STA    COLUPF  
       DEY            
       BPL    LF724   
       LDX    #$05    
LF756: STA    WSYNC   
       LDY    $82     
       DEC    $82     
       LDA    LFE00,Y 
       STA    GRP0    
       STY    COLUP0  
       LDA    #$BF    
       STA    COLUPF  
       LDA    #$0F    
       STA    PF1     
       LDA    #$C0    
       STA    PF2     
       DEX            
       BNE    LF756   
       LDX    #$07    
LF774: STA    WSYNC   
       LDY    $82     
       DEC    $82     
       LDA    LFE00,Y 
       STA    GRP0    
       STY    COLUP0  
       TXA            
       ASL            
       ORA    #$B0    
       STA    COLUPF  
       DEX            
       BNE    LF774   
       STX    GRP0    
       STX    GRP1    
       STA    WSYNC   
       LDY    #$01    
       LDX    $82     
LF794: STA    WSYNC   
       LDA    $E5     
       EOR    $82     
       AND    #$7F    
       STA    PF1     
       LDA    $E5     
       STY    $81     
       EOR    $81     
       STA    PF2     
       LDA    $E5     
       STA    COLUPF  
       LDA    LFE00,X 
       DEX            
       STA    GRP0    
       STX    COLUP0  
       DEY            
       BNE    LF794   
       STA    WSYNC   
       STY    GRP0    
       STY    COLUPF  
       STY    PF1     
       STY    PF2     
       STY    REFP1   
       STA    WSYNC   
       JSR    LFCBF   
       STA    RESP0   
       JSR    LFCC7   
       STA.w  $0011   
       LDA    #$C8    
       STA    $81     
       LDA    #$19    
       STA    $82     
       LDX    $D7     
       BEQ    LF7E3   
       LDA    LFD70,X 
       STA    NUSIZ0  
       LDA    #$59    
       STA    $81     
LF7E3: LDX    $A7     
       BEQ    LF7F0   
       LDA    LFD70,X 
       STA    NUSIZ1  
       LDA    #$08    
       STA    $82     
LF7F0: LDY    #$0A    
LF7F2: STA    WSYNC   
       LDX    $81     
       DEC    $81     
       LDA    LFE00,X 
       STA    GRP0    
       STX    COLUP0  
       LDA    $A7     
       BEQ    LF811   
       LDX    $82     
       DEC    $82     
       LDA    LFF90,X 
       STA    GRP1    
       LDX    $81     
       INX            
       STX    COLUP1  
LF811: DEY            
       BNE    LF7F2   
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    COLUPF  
       STY    COLUBK  
       STY    VDELP1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       RTS            

LF82D: .byte $A2,$04,$85,$02,$E6,$81,$A5,$81,$0A,$09,$30,$45,$D9,$85,$09,$85
       .byte $08,$A4,$82,$C6,$82,$B9,$00,$FE,$85,$1B,$84,$06,$85,$02,$A4,$82
       .byte $C6,$82,$B9,$00,$FE,$85,$1B,$84,$06,$CA,$D0,$D6,$60
LF85A: .byte $96,$BB,$F6,$7B,$3F,$2D
LF860: LDA    #$23    
       STA    TIM64T  
       LDA    $D9     
       BNE    LF86C   
       JMP    LF957   
LF86C: LDY    $A8     
       LDA    LF85A,Y 
       STA    $DC     
       LDA    LFDCC,Y 
       STA    $DD     
       JMP.ind ($00DC)
LF87B: .byte $C6,$D9,$F0,$0D,$A5,$A6,$49,$FF,$85,$A6,$85,$16,$85,$1A,$4C,$57
       .byte $F9,$20,$C3,$FB,$A9,$08,$85,$A8,$4C,$57,$F9,$A5,$80,$29,$03,$18
       .byte $0A,$85,$17,$0A,$85,$15,$0A,$85,$19,$C6,$D9,$F0,$03,$4C,$57,$F9
       .byte $A0,$FA,$20,$41,$FC,$A9,$01,$85,$A8,$A9,$5A,$85,$D9,$4C,$57,$F9
       .byte $A5,$E7,$85,$15,$D0,$03,$4C,$57,$F9,$A5,$88,$D0,$07,$A5,$87,$D0
       .byte $03,$4C,$D4,$F8,$A0,$01,$20,$41,$FC,$20,$80,$FC,$A9,$0A,$85,$19
       .byte $A5,$D9,$29,$07,$85,$17,$C6,$D9,$A5,$88,$D0,$70,$A5,$87,$D0,$6C
       .byte $A9,$02,$85,$A8,$A9,$29,$85,$D9,$4C,$57,$F9,$A5,$E7,$F0,$5D,$A5
       .byte $A7,$F0,$22,$A9,$0D,$85,$15,$A5,$D9,$29,$0C,$85,$17,$85,$19,$C6
       .byte $D9,$D0,$49,$A4,$D8,$B9,$B6,$FD,$A8,$20,$41,$FC,$C6,$A7,$A9,$1F
       .byte $85,$D9,$4C,$57,$F9,$E6,$D8,$A9,$04,$85,$A8,$A9,$FA,$85,$D9,$4C
       .byte $57,$F9,$A9,$08,$85,$15,$85,$17,$85,$19,$C6,$D9,$D0,$1E,$20,$B2
       .byte $FB,$4C,$57,$F9,$C6,$D9,$F0,$11,$A5,$D9,$29,$07,$0A,$85,$15,$A5
       .byte $D9,$29,$0F,$0A,$85,$19,$4C,$57,$F9,$20,$FA,$FB
LF957: JSR    LFBD4   
       LDA    $A8     
       CMP    #$08    
       BNE    LF96C   
       JSR    LFBC3   
       LDA    COLUP1  
       AND    #$80    
       BEQ    LF96C   
       JMP    LF9C9   
LF96C: LDA    $A8     
       CMP    #$07    
       BEQ    LF975   
       JMP    LFA51   
LF975: LDA    COLUP1  
       AND    #$80    
       BEQ    LF9A5   
       LDY    #$00    
       LDA    $AC     
       CMP    #$3A    
       BMI    LF992   
       CMP    #$69    
       BMI    LF99D   
       LDA    #$FE    
       AND    $A5     
       STA    $A5     
       STY    $D3     
       JMP    LF9A5   
LF992: LDA    #$FB    
       AND    $A5     
       STA    $A5     
       STY    $D2     
       JMP    LF9A5   
LF99D: LDA    #$FD    
       AND    $A5     
       STA    $A5     
       STY    $D1     
LF9A5: LDA    WSYNC   
       AND    #$80    
       BNE    LF9AE   
       JMP    LFA51   
LF9AE: JSR    LFBC3   
       LDA    #$01    
       STA    $E4     
       LDA    #$0A    
       STA    AUDC0   
       STA    AUDV0   
       LDA    #$1E    
       STA    AUDF1   
       LDA    $E8     
       BNE    LFA34   
       JSR    LFBA1   
       JMP    LFA51   
LF9C9: LDA    $A5     
       LDY    #$FE    
       LDX    $AD     
       CPX    #$D3    
       BNE    LF9EB   
       LDX    #$02    
       STX    $81     
       AND    $81     
       BEQ    LFA51   
       LDA    $A6     
       BNE    LFA51   
       STY    $CB     
       LDY    #$05    
       JSR    LFC41   
       LDA    #$FD    
       JMP    LFA23   
LF9EB: CPX    #$DE    
       BNE    LFA07   
       LDX    #$04    
       STX    $81     
       AND    $81     
       BEQ    LFA51   
       LDA    $A6     
       BNE    LFA51   
       STY    $C9     
       LDY    #$0F    
       JSR    LFC41   
       LDA    #$FB    
       JMP    LFA23   
LFA07: CPX    #$E9    
       BEQ    LFA0E   
       JMP    LFA51   
LFA0E: LDX    #$01    
       STX    $81     
       AND    $81     
       BEQ    LFA51   
       LDA    $A6     
       BNE    LFA51   
       STY    $CD     
       LDY    #$32    
       JSR    LFC41   
       LDA    #$FE    
LFA23: AND    $A5     
       STA    $A5     
       LDA    #$03    
       STA    $A8     
       LDA    #$5A    
       STA    $D9     
       STA    $E4     
       JMP    LFA51   
LFA34: LDA    #$08    
       STA    $A8     
       LDA    #$0F    
       STA    $E8     
       DEC    $AD     
       DEC    $AD     
       LDA    $AD     
       CMP    #$D3    
       BEQ    LFA51   
       CMP    #$DE    
       BEQ    LFA51   
       CMP    #$E9    
       BEQ    LFA51   
       JSR    LFBA1   
LFA51: LDA    $80     
       AND    #$0F    
       BNE    LFA6A   
       LDA    $A8     
       CMP    #$08    
       BEQ    LFA6A   
       CMP    #$09    
       BEQ    LFA6A   
       CMP    #$03    
       BEQ    LFA6A   
       LDA    $E8     
       LSR            
       STA    $E8     
LFA6A: LDA    $A8     
       CMP    #$0A    
       BEQ    LFA77   
       CMP    #$08    
       BEQ    LFA9E   
       JMP    LFAAD   
LFA77: LDA    $E4     
       BEQ    LFA7E   
       JMP    LFB71   
LFA7E: LDA    REFP1   
       BPL    LFA85   
       JMP    LFB71   
LFA85: LDA    #$06    
       STA    $A8     
       LDA    $AA     
       TAX            
       ADC    #$2F    
LFA8E: ADC    #$02    
       DEX            
       BPL    LFA8E   
       ADC    $AB     
       STA    $AC     
       LDA    #$0F    
       STA    $E8     
       JMP    LFB71   
LFA9E: LDA    $E4     
       BEQ    LFAA5   
       JMP    LFAAD   
LFAA5: LDA    REFP1   
       BMI    LFAAD   
       LDA    #$07    
       STA    $A8     
LFAAD: CMP    #$07    
       BEQ    LFAB8   
       CMP    #$08    
       BEQ    LFAB8   
       JMP    LFB71   
LFAB8: LDA    $AD     
       CMP    #$69    
       BNE    LFAF4   
       LDA    $A8     
       CMP    #$07    
       BEQ    LFACA   
LFAC4: JSR    LFBA1   
       JMP    LFB9B   
LFACA: LDA    $AA     
       TAX            
       ADC    #$2F    
LFACF: ADC    #$02    
       DEX            
       BPL    LFACF   
       ADC    $AB     
       STA    $81     
       SEC            
       SBC    #$06    
       CMP    $AC     
       BPL    LFAC4   
       ADC    #$0C    
       CMP    $AC     
       BMI    LFAC4   
       LDA    $81     
       STA    $AC     
       LDA    #$09    
       STA    $A8     
       LDA    #$3F    
       STA    $E8     
       JMP    LFB9B   
LFAF4: LDA    REFP1   
       BPL    LFB04   
       LDA    SWCHA   
       AND    #$C0    
       CMP    #$C0    
       BNE    LFB04   
       JSR    LFBC3   
LFB04: INC    $E5     
       LDA    $80     
       AND    #$07    
       BNE    LFB31   
       LDA    REFP1   
       BMI    LFB31   
       JSR    LFC6C   
       LDA    $80     
       AND    #$1F    
       BNE    LFB1C   
       JSR    LFC80   
LFB1C: LDA    $E8     
       BNE    LFB25   
       INC    $E8     
       JMP    LFB31   
LFB25: CMP    #$3F    
       BEQ    LFB31   
       ASL            
       ORA    #$01    
       STA    $E8     
       JMP    LFB31   
LFB31: LDA    $80     
       AND    #$03    
       BNE    LFB71   
       LDA    SWCHA   
       CMP    #$7F    
       BEQ    LFB5B   
       CMP    #$BF    
       BNE    LFB71   
       INC    $E5     
       LDA    #$17    
       CMP    $AC     
       BEQ    LFB71   
       DEC    $AC     
       JSR    LFC6C   
       LDA    $80     
       AND    #$3F    
       BNE    LFB71   
       JSR    LFC80   
       JMP    LFB71   
LFB5B: INC    $E5     
       LDA    #$88    
       CMP    $AC     
       BEQ    LFB71   
       JSR    LFC6C   
       INC    $AC     
       LDA    $80     
       AND    #$3F    
       BNE    LFB71   
       JSR    LFC80   
LFB71: LDA    $AD     
       LDX    $A8     
       CPX    #$06    
       BEQ    LFB7D   
       CPX    #$09    
       BEQ    LFB88   
LFB7D: CMP    #$6C    
       BNE    LFB9B   
       LDA    #$07    
       STA    $A8     
       JMP    LFB9B   
LFB88: LDA    $AD     
       CMP    #$5C    
       BNE    LFB9B   
       LDA    #$01    
       STA    $E4     
       LDA    $A6     
       BEQ    LFB98   
       INC    $A7     
LFB98: JSR    LFC1F   
LFB9B: LDA    INTIM   
       BNE    LFB9B   
       RTS            

LFBA1: DEC    $AD     
       DEC    $AD     
       LDA    #$01    
       STA    $E4     
       LDA    #$05    
       STA    $A8     
       LDA    #$64    
       STA    $D9     
       RTS            

LFBB2: .byte $20,$C3,$FB,$A5,$D7,$F0,$05,$C6,$D7,$4C,$1F,$FC,$A9,$0B,$85,$A8
       .byte $60
LFBC3: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDF0   
       STA    AUDF1   
       STA    $E6     
       RTS            

LFBD4: LDA    $A8     
       CMP    #$0A    
       BNE    LFBF9   
       LDA    $A5     
       BNE    LFBF9   
       LDA    $A7     
       BNE    LFBE6   
       JSR    LFBA1   
       RTS            

LFBE6: CMP    #$03    
       BNE    LFBF1   
       LDA    #$00    
       STA    $A8     
       JMP    LFBF5   
LFBF1: LDA    #$01    
       STA    $A8     
LFBF5: LDA    #$C8    
       STA    $D9     
LFBF9: RTS            

LFBFA: .byte $A9,$00,$85,$A9,$85,$A7,$A9,$07,$85,$A5,$A9,$FF,$85,$C9,$85,$CB
       .byte $85,$CD,$A9,$01,$85,$D1,$85,$D2,$85,$D3,$A9,$09,$85,$87,$A9,$09
       .byte $85,$88,$4C,$1F,$FC
LFC1F: LDA    #$00    
       STA    $A6     
       STA    $E6     
       STA    AUDV1   
       STA    AUDV0   
       LDA    #$0F    
       STA    $E8     
       LDA    #$5C    
       STA    $AD     
       LDA    #$0A    
       STA    $A8     
LFC35: LDY    #$07    
LFC37: LDA    LFDD2,Y 
       STA.wy $00B4,Y 
       DEY            
       BPL    LFC37   
       RTS            

LFC41: LDX    #$03    
LFC43: INC    $83,X   
       LDA    $83,X   
       CMP    #$0A    
       BNE    LFC52   
       LDA    #$00    
       STA    $83,X   
       DEX            
       BPL    LFC43   
LFC52: DEY            
       BNE    LFC41   
       RTS            

LFC56: LDX    #$07    
       LDY    #$03    
LFC5A: LDA    #$FD    
       STA    $DC,X   
       DEX            
       LDA.wy $0083,Y 
       ASL            
       ASL            
       ASL            
       STA    $DC,X   
       DEX            
       DEY            
       BPL    LFC5A   
       RTS            

LFC6C: LDA    $E6     
       BNE    LFC7F   
       LDA    #$01    
       STA    $E6     
       LDA    #$08    
       STA    AUDC0   
       ASL            
       STA    AUDF0   
       LDA    #$06    
       STA    AUDV0   
LFC7F: RTS            

LFC80: LDA    #$00    
       CMP    $88     
       BEQ    LFC89   
       DEC    $88     
       RTS            

LFC89: CMP    $87     
       BEQ    LFC94   
       LDA    #$09    
       STA    $88     
       DEC    $87     
       RTS            

LFC94: LDA    $A8     
       CMP    #$01    
       BEQ    LFCA9   
       JSR    LFBA1   
       LDA    $A5     
       BEQ    LFCA9   
       LDA    #$09    
       STA    $87     
       LDA    #$09    
       STA    $88     
LFCA9: RTS            

LFCAA: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $82     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $82     
       CMP    #$0F    
       BMI    LFCC3   
LFCBF: SEC            
       SBC    #$0F    
       INY            
LFCC3: EOR    #$07    
       ASL            
       ASL            
LFCC7: ASL            
LFCC8: ASL            
LFCC9: RTS            

LFCCA: LDY    #$07    
LFCCC: TYA            
       ASL            
       ORA    $81     
       STA    COLUP1  
       STA    COLUP0  
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFCC8   
       LDA    ($DC),Y 
       STA    GRP0    
       LDA    ($DE),Y 
       STA    GRP1    
       LDA    ($E2),Y 
       TAX            
       LDA    ($E0),Y 
       STA    GRP0    
       STX    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LFCCC   
       RTS            

LFCF2: LDA    $80     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $81     
       RTS            

LFCFB: .byte $00,$00,$00,$00,$00,$00,$7E,$72,$72,$72,$72,$72,$7E,$00,$1C,$1C
       .byte $1C,$1C,$1C,$1C,$3C,$00,$7E,$40,$7E,$0E,$0E,$4E,$7E,$00,$7E,$4E
       .byte $0E,$1C,$0E,$4E,$7E,$00,$1C,$1C,$7E,$5C,$5C,$5C,$7C,$00,$7E,$4E
       .byte $0E,$7E,$40,$4E,$7E,$00,$7E,$4E,$4E,$7E,$40,$4E,$7E,$00,$0E,$0E
       .byte $0E,$0E,$0E,$4E,$7E,$00,$7E,$4E,$4E,$7E,$72,$72,$7E,$00,$7E,$72
       .byte $02,$7E,$72,$72,$7E,$00,$44,$C9,$D1,$E1,$F1,$C9,$70,$00,$E3,$96
       .byte $96,$96,$96,$96,$E2,$00,$88,$59,$5B,$5A,$5E,$5C,$48,$00,$9C,$B2
       .byte $B1,$B1,$B1,$B2,$9C
LFD70: .byte $00,$00,$01,$03,$01,$00,$01,$01
LFD78: .byte $86,$8E,$96,$9E,$A6,$AE,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
       .byte $03,$07,$03,$07,$03,$07,$07,$03,$07,$07,$03,$07,$07,$03,$03,$07
       .byte $03,$03,$03,$03,$01,$07,$03,$03,$01,$03,$03,$03,$01,$03,$03,$01
       .byte $03,$03,$01,$03,$03,$01,$01,$01,$01,$03,$01,$01,$01,$01,$0A,$14
       .byte $1E,$28,$32,$3C,$78,$78,$70,$70,$78,$78,$70,$78,$88,$80,$88,$80
       .byte $80,$88,$88,$80
LFDCC: .byte $F8,$F8,$F8,$F8,$F9,$F9
LFDD2: .byte $19,$6B,$69,$46,$50,$2D,$41,$5D,$5A,$68,$46,$50,$50,$63,$22,$48
       .byte $76,$64,$33
LFDE5: .byte $A0,$B7,$B7,$90,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFE00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $44,$92,$54,$38,$7C,$FE,$6C,$FE,$7C,$38,$00,$00,$00,$00,$00,$00
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
       .byte $03,$07,$0F,$1D,$3D,$7D,$FB,$FB,$7D,$3F,$0F,$03,$00,$00
LFF0E: .byte $00,$00,$80,$C0,$E0,$F0,$F8,$F8,$F0,$E0,$80,$00,$00,$00
LFF1C: .byte $01,$03,$07,$0E,$1E,$3D,$7D,$7E,$3E,$1F,$07,$01,$00,$00
LFF2A: .byte $FF,$C0,$80,$80,$80,$80,$80,$80,$80,$80,$C0,$E0,$7F,$1F
LFF38: .byte $FF,$07,$03,$02,$02,$03,$03,$02,$02,$03,$07,$0F,$FC,$F0,$00,$80
       .byte $C0,$E0,$F0,$78,$7C,$FC,$F8,$F0,$C0,$00,$00,$00,$00,$01,$03,$07
       .byte $0E,$1E,$3F,$3F,$1F,$0F,$03,$00,$00,$00,$80,$C0,$E0,$70,$B8,$BC
       .byte $7E,$7E,$7C,$F8,$E0,$80,$00,$00,$00,$0C,$12,$21,$41,$42,$44,$38
       .byte $00,$08,$14,$22,$42,$44,$24,$18,$00,$82,$44,$38,$6C,$C6,$6C,$38
       .byte $00,$3C,$7E,$7E,$C3,$C3,$66,$3C
LFF90: .byte $00,$6C,$38,$7C,$00,$38,$38,$00,$00,$28,$28,$38,$38,$44,$BA,$38
       .byte $00,$FF,$8B,$10,$00,$00,$00,$00,$00,$0F,$5B,$24,$02,$00,$00,$00
LFFB0: .byte $AA,$9F,$94,$89,$7E,$73,$68,$00,$0C,$04,$04,$1C,$00,$0C,$0C,$00
       .byte $32,$16,$08,$0C,$00,$18,$18,$70,$C9,$C9,$D1,$F1,$C9,$70,$00,$E2
       .byte $96,$96,$96,$97,$97,$E2,$00,$27,$6C,$EC,$AC,$AC,$2C,$24,$00,$18
       .byte $A4,$86,$86,$9C,$B0,$9C,$00,$1C,$54,$0E,$46,$62
LFFEC: STA    WSYNC   
       DEY            
       BPL    LFFEC   
       RTS            

LFFF2: .byte $47,$24,$5B
LFFF5: .byte $64
LFFF6: .byte $38
LFFF7: .byte $68,$00,$00,$00,$00,$00,$F0,$00,$F0
