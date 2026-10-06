; Disassembly of roms/Survival Run.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Survival Run.bin
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
VDELP0  =  $25
VDELP1  =  $26
VDELBL  =  $27
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF300   =   $F300
LF3A2   =   $F3A2
LF4B8   =   $F4B8
LF584   =   $F584
LF5B1   =   $F5B1
LF5DE   =   $F5DE
LF5E8   =   $F5E8
LF5F5   =   $F5F5
LF64F   =   $F64F
LF664   =   $F664
LF697   =   $F697
LF6B0   =   $F6B0
LF777   =   $F777
LF7B3   =   $F7B3
LF8B7   =   $F8B7
LFFA9   =   $FFA9

       ORG $F000

START:
LF000: CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF006: STA    VSYNC,X 
       DEX            
       BNE    LF006   
       LDA    #$07    
       STA    $86     
       DEX            
       TXA            
       LDY    #$0B    
LF013: STA.wy $00F0,Y 
       DEY            
       BPL    LF013   
       LDA    SWCHB   
       STA    $CC     
       STX    $C7     
       LDA    #$01    
       STA    $CD     
       STA    $CE     
       STA    $E9     
LF028: LDY    #$02    
       LDX    #$1C    
       LDA    #$00    
       STA    WSYNC   
       STY    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STY    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       INC    $A0     
       LDA    $A0     
       CMP    #$3C    
       BNE    LF05D   
       LDA    #$00    
       STA    $A0     
       INC    $A1     
       LDX    $A1     
       CPX    #$3C    
       BNE    LF05D   
       LDA    #$00    
       STA    $A1     
       INC    $A2     
LF05D: LDA    $CC     
       STA    $C8     
       LDA    SWCHB   
       STA    $CC     
       JSR    LF978   
       LDA    $C7     
       CMP    #$FF    
       BEQ    LF071   
       BNE    LF078   
LF071: LDA    #$00    
       STA    $C7     
       JMP    LF101   
LF078: LDY    $C7     
       LDA    LFCC0,Y 
       STA    $94     
       LDA    LFCC4,Y 
       STA    $95     
       JMP.ind ($0094)
LF087: LDX    #$00    
       STX    $DB     
       INX            
       STX    $DC     
       STX    $DF     
       STX    $DA     
       LDA    #$4E    
       STA    $81     
       LDA    #$45    
       STA    $84     
       LDA    $A0     
       ROR            
       ROR            
       ROR            
       EOR    $9C     
       STA    $DE     
       RTS            

LF0A4: LDY    #$FF    
       STY    $E5     
       LDX    #$82    
       LDA    $CB     
       AND    #$01    
       BEQ    LF0B2   
       LDX    #$8D    
LF0B2: STX    $E4     
       STY    $E7     
       LDX    #$82    
       LDA    $CB     
       AND    #$02    
       BEQ    LF0C0   
       LDX    #$8D    
LF0C0: STX    $E6     
       RTS            

LF0C3: .byte $20,$12,$FB,$A5,$CC,$29,$02,$F0,$08,$A5,$C8,$29,$02,$D0,$02,$E6
       .byte $C6,$A5,$C6,$C9,$05,$D0,$04,$A9,$00,$85,$C6,$A5,$3C,$10,$03,$4C
       .byte $53,$F4,$A2,$01,$86,$C7,$A5,$C6,$85,$8F,$85,$DD,$CA,$86,$CD,$86
       .byte $CE,$20,$87,$F0,$A0,$05,$A9,$00,$99,$9A,$00,$88,$10,$FA
LF101: LDY    #$05    
       STY    $C0     
       STY    $8E     
       STY    $82     
       LDY    #$00    
       STY    $E2     
       STY    $BC     
       STY    $E3     
       STY    $A7     
       STY    $A9     
       STY    $BE     
       STY    $C2     
       STY    $EE     
       INY            
       STY    $C4     
       STY    $BF     
       LDA    #$FF    
       STA    $EA     
       STA    $EB     
       STA    $A5     
       JSR    LFB31   
       JSR    LF0A4   
       JSR    LF8FA   
       JSR    LF915   
       LDA    LFC07   
       STA    $A4     
       LDA    #$3C    
       STA    $85     
       LDA    #$8B    
       STA    $BD     
LF141: JSR    LF92F   
       JSR    LFA36   
       LDA    $8D     
       BEQ    LF1A9   
       LDX    #$00    
       STX    $C2     
       LDA    $A9     
       BNE    LF174   
       LDA    $8C     
       BPL    LF1A7   
       LDA    $A7     
       BNE    LF189   
       JSR    LFA60   
       LDA    $9C     
       ADC    #$02    
       ADC    $C6     
       STA    $9C     
LF166: LDA    #$05    
       STA    $CE     
       DEC    $8F     
       BEQ    LF171   
       JSR    LF087   
LF171: JMP    LF1A9   
LF174: LDA    $D9     
       AND    #$80    
       BEQ    LF1A7   
       STX    $A9     
       JSR    LFA60   
       LDA    $9C     
       ADC    #$05    
       ADC    $C6     
       STA    $9C     
       BNE    LF166   
LF189: DEC    $A6     
       BNE    LF1A7   
       JSR    LFA60   
       LDA    $9D     
       ADC    $C6     
       ADC    #$05    
       STA    $9D     
       JSR    LFB12   
       JSR    LF0A4   
       INC    $C6     
       LDA    #$04    
       STA    $CD     
       JMP    LF101   
LF1A7: STX    $8D     
LF1A9: LDA    $C2     
       BNE    LF1DB   
       LDA    $CD     
       BNE    LF1DB   
       LDA    INPT4   
       BMI    LF1DB   
       LDA    #$03    
       STA    $CD     
       STA    $E9     
       DEC    $8E     
       BNE    LF1C5   
       DEC    $BD     
       LDA    #$07    
       STA    $8E     
LF1C5: JSR    LFA36   
       LDX    #$01    
       STX    $C2     
       DEX            
       STX    $C1     
       LDA    $80     
       STA    $C3     
       LDA    $83     
       STA    $E0     
       LDA    #$A5    
       STA    $EF     
LF1DB: LDA    $C2     
       BEQ    LF20B   
       LDA    $C1     
       EOR    #$01    
       STA    $C1     
       BEQ    LF20B   
       LDA    $EF     
       LDX    #$01    
       SEC            
       SBC    #$14    
       BCC    LF1F8   
       CMP    $E0     
       BCC    LF1F8   
       STA    $EF     
       BCS    LF201   
LF1F8: STX    $8D     
       LDA    $E0     
       STA    $EF     
       DEX            
       STX    $CD     
LF201: LDA    #$FF    
       STA    $89     
       LDA    #$CD    
       STA    $88     
       BNE    LF20E   
LF20B: JSR    LFB39   
LF20E: LDA    $A9     
       BEQ    LF215   
       JMP    LFE50   
LF215: LDA    $EE     
       BEQ    LF237   
       LDA    $CE     
       BNE    LF23F   
       LDA    #$00    
       STA    $EE     
       LDY    $C6     
       LDA    LFFD2,Y 
       STA    $94     
       LDA    $BD     
       SEC            
       SBC    $94     
       STA    $BD     
       LDA    #$FF    
       STA    $EA     
       STA    $EB     
       BNE    LF23F   
LF237: LDA    $CE     
       BNE    LF23F   
       LDA    #$02    
       STA    $CE     
LF23F: LDY    $DA     
       BNE    LF246   
LF243: JMP    LF349   
LF246: LDA    $EE     
       BEQ    LF24C   
       BNE    LF243   
LF24C: DEC    $DC     
       BEQ    LF253   
       JMP    LF323   
LF253: LDY    $C6     
       LDX    $A7     
       BEQ    LF262   
       LDA    LFC2E,Y 
       STA    $99     
       LDA    #$04    
       BPL    LF269   
LF262: LDA    #$01    
       STA    $99     
       LDA    LFCB7,Y 
LF269: STA    $DC     
       ASL    $DB     
       LDA    $DE     
       AND    #$40    
       BNE    LF28F   
       LDA    $81     
       SEC            
       SBC    $99     
       STA    $81     
       LDA    #$3C    
       CMP    $DB     
       BCC    LF282   
       LDA    $DB     
LF282: STA    $94     
       LDA    #$4E    
       SEC            
       SBC    $94     
       CMP    $81     
       BCS    LF2AA   
       BCC    LF2B0   
LF28F: LDA    $81     
       ADC    $99     
       STA    $81     
       LDA    #$3C    
       CMP    $DB     
       BCC    LF29D   
       LDA    $DB     
LF29D: STA    $94     
       LDA    #$4E    
       CLC            
       ADC    $94     
       CMP    $81     
       BCC    LF2AA   
       BCS    LF2B0   
LF2AA: LDA    $DE     
       EOR    #$40    
       STA    $DE     
LF2B0: LSR    $DB     
       LDA    $DF     
       CMP    #$04    
       BCS    LF2BC   
       LDA    #$01    
       STA    $DF     
LF2BC: DEC    $DF     
       BNE    LF323   
       INC    $DB     
       INC    $DB     
       LDA    $DE     
       AND    #$80    
       BNE    LF2D4   
       LDA    #$45    
       SEC            
       SBC    $DB     
       STA    $84     
       JMP    LF2DB   
LF2D4: LDA    #$45    
       CLC            
       ADC    $DB     
       STA    $84     
LF2DB: LDA    $DE     
       EOR    #$40    
       STA    $DE     
       LDA    $A0     
       ADC    $9C     
       AND    #$17    
       STA    $DF     
       LDA    $DB     
       CMP    #$13    
       BCC    LF317   
       LDA    #$01    
       STA    $EE     
       LDA    $A7     
       BNE    LF2FD   
       LDA    $DE     
       AND    #$40    
       BEQ    LF300   
LF2FD: LDA    #$06    
       BIT    $01A9   
       ADC    $81     
       STA    $ED     
       LDA    $84     
       AND    #$FC    
       CLC            
       ADC    $87     
       STA    $EA     
       LDA    #$FF    
       STA    $EB     
       LDA    #$06    
       STA    $CE     
LF317: LDA    $DB     
       CMP    #$46    
       BCC    LF323   
       JSR    LFA60   
       JSR    LF087   
LF323: LDA    $DB     
       LDY    #$00    
       CMP    #$06    
       BCC    LF33B   
       INY            
       CMP    #$0A    
       BCC    LF33B   
       INY            
       CMP    #$0E    
       BCC    LF33B   
       INY            
       CMP    #$14    
       BCC    LF33B   
       INY            
LF33B: LDA    LFCAD,Y 
       STA    $8A     
       LDA    #$FC    
       STA    $8B     
       LDA    LFCB2,Y 
       STA    $87     
LF349: LDA    $A7     
       BEQ    LF350   
       JMP    LF3F0   
LF350: LDA    $A0     
       CMP    #$1D    
       BEQ    LF35C   
       CMP    #$01    
       BEQ    LF35C   
       BNE    LF394   
LF35C: DEC    $A4     
       BEQ    LF362   
       BNE    LF394   
LF362: JSR    LF946   
       LDY    $BD     
       CPY    #$8B    
       BCS    LF36D   
       INC    $BD     
LF36D: INC    $A5     
       LDY    $A5     
       LDA    ($96),Y 
       TAX            
       AND    #$0F    
       STA    $82     
       TXA            
       AND    #$F0    
       BEQ    LF383   
       CMP    #$F0    
       BEQ    LF397   
       BNE    LF3CF   
LF383: LDA    ($98),Y 
       LDY    $E3     
       CLC            
       ADC    LFC13,Y 
       STA    $85     
       LDY    $C6     
       LDA    LFC07,Y 
       STA    $A4     
LF394: JMP    LF3F0   
LF397: INC    $E3     
       LDA    $E3     
       CMP    #$06    
       BNE    LF3B5   
       LDX    #$01    
       STX    $8F     
       STX    $A7     
       LDA    $C6     
       ADC    #$0A    
       STA    $A6     
       JSR    LF087   
       LDA    #$40    
       STA    $84     
       JMP    LF141   
LF3B5: LDX    #$00    
       STX    $E2     
       INC    $85     
       LDY    $C6     
       CPY    #$0A    
       BCC    LF3C5   
       LDY    #$09    
       STY    $C6     
LF3C5: LDA    LFC07,Y 
       STA    $A4     
       DEX            
       STX    $A5     
       BNE    LF394   
LF3CF: LDA    #$02    
       STA    $C7     
       LDA    #$00    
       STA    $BC     
       STA    $C2     
       LDA    ($98),Y 
       LDY    $E3     
       CLC            
       ADC    LFC13,Y 
       STA    $85     
       LDY    $C6     
       LDA    LFFC4,Y 
       STA    $C9     
       JSR    LFA60   
       JMP    LF40F   
LF3F0: DEC    $BF     
       BNE    LF401   
       JSR    LF8CD   
       JSR    LF8E0   
       LDY    $C6     
       LDA    LFC0A,Y 
       STA    $BF     
LF401: DEC    $C4     
       BNE    LF40F   
       JSR    LF8ED   
       LDY    $C6     
       LDA    LFC0A,Y 
       STA    $C4     
LF40F: JSR    LF92F   
       LDA    SWCHA   
       ASL            
       BCC    LF41A   
       DEC    $80     
LF41A: ASL            
       BCC    LF41F   
       INC    $80     
LF41F: ASL            
       BCC    LF426   
       DEC    $83     
       DEC    $83     
LF426: ASL            
       BCC    LF42D   
       INC    $83     
       INC    $83     
LF42D: LDX    #$04    
       LDA    $83     
       CMP    #$04    
       BCC    LF43B   
       CMP    #$8C    
       BCC    LF43D   
       LDX    #$8B    
LF43B: STX    $83     
LF43D: LDX    #$14    
       LDA    $80     
       CMP    #$0B    
       BCC    LF44B   
       CMP    #$96    
       BCC    LF453   
       LDX    #$80    
LF44B: STX    $80     
       LDX    #$08    
       STX    $CE     
       DEC    $BD     
LF453: LDX    #$00    
       STX    $AA     
       STX    $BA     
       STX    $A3     
       STX    VDELP0  
       STX    VDELP1  
       INX            
       STX    CTRLPF  
       LDX    #$44    
       STX    COLUBK  
       JSR    LFA46   
       LDY    #$0A    
       LDX    #$05    
LF46D: LDA    $9A,X   
       ASL            
       ASL            
       ASL            
       STA.wy $00F0,Y 
       DEY            
       DEY            
       DEX            
       BPL    LF46D   
       INX            
LF47B: LDA    INTIM   
       BNE    LF47B   
       STX    WSYNC   
       STX    VSYNC   
       STX    WSYNC   
       STX    VBLANK  
       LDA    $ED     
       LDX    #$13    
       LDY    #$23    
       JSR    LFEDE   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    $C7     
       BEQ    LF4F5   
       LDX    #$00    
       STX    $A2     
       JSR    LFF98   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$08    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $BC     
       ROR            
       BCC    LF4B8   
       LDA    #$44    
       BIT    $0FA9   
       STA    COLUPF  
       LDY    #$0A    
       LDX    #$00    
       STX    VDELBL  
LF4C2: STA    WSYNC   
       LDA    ($E4),Y 
       STA    GRP0    
       LDA    ($E6),Y 
       STA    GRP1    
       CPY    $82     
       BNE    LF4D5   
       DEX            
       STX    ENABL   
       BNE    LF4D9   
LF4D5: LDX    #$00    
       STX    ENABL   
LF4D9: STA    WSYNC   
       LDA    ($E4),Y 
       STA    GRP0    
       LDA    ($E6),Y 
       STA    GRP1    
       CPY    $82     
       BNE    LF4EC   
       DEX            
       STX    ENABL   
       BNE    LF4F0   
LF4EC: LDA    #$00    
       STA    ENABL   
LF4F0: DEY            
       BPL    LF4C2   
       BMI    LF522   
LF4F5: JSR    LFFB6   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       LDX    $C6     
       INX            
       TXA            
       ASL            
       ASL            
       ASL            
       STA    $94     
       LDA    #$FF    
       STA    $95     
       STA    WSYNC   
       LDY    #$07    
LF517: STA    WSYNC   
       LDA    ($94),Y 
       STA    GRP0    
       STA    WSYNC   
       DEY            
       BPL    LF517   
LF522: LDA    #$0D    
       STA    WSYNC   
       STA    TIM64T  
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDA    $C7     
       CMP    #$01    
       BNE    LF55F   
       LDA    $C2     
       BEQ    LF55F   
       LDA    $C1     
       BEQ    LF55F   
       LDX    $80     
       LDY    $83     
       LDA    $EF     
       STA    $83     
       LDA    $C3     
       STA    $80     
       STX    $C3     
       STY    $EF     
       LDA    #$44    
       STA    COLUP0  
       LDA    #$05    
       STA    $86     
       BNE    LF567   
LF55F: LDA    #$0F    
       STA    COLUP0  
       LDA    #$07    
       STA    $86     
LF567: LDA    $80     
       LDX    #$10    
       LDY    #$20    
       JSR    LFEDE   
       LDA    $81     
       LDX    #$11    
       LDY    #$21    
       JSR    LFEDE   
       LDA    $C5     
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $C7     
       CMP    #$03    
       BEQ    LF58E   
       CMP    #$02    
       BNE    LF591   
       JMP    LF6F4   
LF58E: JMP    LF7C4   
LF591: LDA    $A9     
       BNE    LF5B7   
       LDA    $A7     
       BEQ    LF5B1   
       LDA    #$FE    
       STA    $8B     
       LDA    #$33    
       STA    $8A     
       LDA    $A6     
       ASL            
       ADC    #$50    
       STA    COLUP1  
       LDX    #$35    
       STX    NUSIZ1  
       LDX    #$10    
       STX    $87     
       BIT    $1FA9   
       STA    COLUP1  
       BNE    LF5C7   
LF5B7: LDA    $A8     
       STA    NUSIZ1  
       LDY    #$1F    
       LDA    $A0     
       AND    #$01    
       BEQ    LF5C5   
       LDY    #$49    
LF5C5: STY    COLUP1  
LF5C7: LDY    #$00    
       LDX    #$01    
       STY    $A3     
       STY    $EC     
       LDA    $DA     
       BEQ    LF5DE   
       LDA    $DE     
       AND    #$40    
       BNE    LF5DE   
       LDA    #$08    
       STA    REFP1   
       BIT    $0C84   
       LDA    $83     
       ROR            
       BCC    LF5E8   
       STX    VDELP0  
       BIT    $2584   
       ASL            
       STA    $97     
       LDA    $84     
       ROR            
       BCC    LF5F5   
       STX    VDELP1  
       BIT    $2684   
       ASL            
       STA    $98     
       LDY    $BC     
       LDA    LFE21,Y 
       STA    $94     
       LDA    LFE27,Y 
       STA    $95     
       LDA    LFE2D,Y 
       STA    $96     
       LDA    $A3     
       ASL            
       LDY    $AA     
       LDA    ($92),Y 
       TAY            
       LDA.wy $00AB,Y 
       INC    $AA     
       STA    CXCLR   
LF61A: LDX    INTIM   
       BNE    LF61A   
LF61F: STA    WSYNC   
       STA    COLUBK  
       BPL    LF627   
LF625: STA    WSYNC   
LF627: LDY    $A3     
       LDA    LFDBD,Y 
       AND    $94     
       STA    PF0     
       LDA    LFDE3,Y 
       AND    $95     
       STA    PF1     
       LDA    LFF50,Y 
       AND    $96     
       STA    PF2     
       LDA    $EC     
       TAX            
       SEC            
       SBC    $97     
       BCC    LF64F   
       LSR            
       CMP    $86     
       BCS    LF64F   
       TAY            
       LDA    ($88),Y 
       BIT.w  $00A9   
       STA    WSYNC   
       STA    GRP0    
       TXA            
       SEC            
       SBC    $98     
       BCC    LF664   
       LSR            
       CMP    $87     
       BCS    LF664   
       TAY            
       LDA    ($8A),Y 
       BIT.w  $00A9   
       STA    GRP1    
       INC    $EC     
       INC    $EC     
       INC    $A3     
       LDA    $EC     
       STA    WSYNC   
       CMP    $EA     
       BCC    LF67E   
       LDX    #$02    
       STX    ENAM1   
       CMP    $EB     
       BCC    LF682   
LF67E: LDX    #$00    
       STX    ENAM1   
LF682: LDX    $A3     
LF684: CPX    #$25    
       BEQ    LF6CB   
       TAX            
       SEC            
       SBC    $97     
       BCC    LF697   
       LSR            
       CMP    $86     
       BCS    LF697   
       TAY            
       LDA    ($88),Y 
       BIT.w  $00A9   
       INC    $EC     
       INC    $EC     
       STA    WSYNC   
       STA    GRP0    
       TXA            
       SEC            
       SBC    $98     
       BCC    LF6B0   
       LSR            
       CMP    $87     
       BCS    LF6B0   
       TAY            
       LDA    ($8A),Y 
       BIT.w  $00A9   
       STA    GRP1    
       LDA    $A3     
       ASL            
       LDY    $AA     
       CMP    ($90),Y 
       BNE    LF6C8   
       LDA    ($92),Y 
       TAY            
       LDA.wy $00AB,Y 
       INC    $AA     
       JMP    LF61F   
LF6C8: JMP    LF625   
LF6CB: LDA    #$00    
       STA    $8C     
       STA    WSYNC   
       LDA    $C2     
       BEQ    LF6F1   
       LDA    $C1     
       BEQ    LF6F1   
       LDX    $80     
       LDY    $83     
       LDA    $EF     
       STA    $83     
       LDA    $C3     
       STA    $80     
       STX    $C3     
       STY    $EF     
       LDA    CXM1P   
       STA    $D9     
       LDA    CXPPMM  
       STA    $8C     
LF6F1: JMP    LF7FF   
LF6F4: LDY    $BC     
       LDA    LFCEC,Y 
       STA    $94     
       LDA    LFCDA,Y 
       STA    $95     
       LDA    LFCC8,Y 
       STA    $96     
       LDA    LFCFF,Y 
       STA    $99     
       LDA    $83     
       AND    #$FE    
       STA    $E1     
       LDA    #$00    
       STA    VDELP0  
       LDA    #$11    
       SEC            
       SBC    $BC     
       STA    $97     
       LDA    #$14    
       CLC            
       ADC    $BC     
       STA    $98     
       LDA    #$1F    
       STA    COLUP0  
       LDY    #$00    
       STY    $A3     
       STY    $EC     
       STY    $BB     
       LDA    ($92),Y 
       TAX            
       LDA    $AB,X   
       LDX    #$00    
LF735: LDY    INTIM   
       BNE    LF735   
       STA    WSYNC   
       STA    COLUBK  
LF73E: LDY    $A3     
       LDA    LFDBD,Y 
       AND    $94     
       STA    PF0     
       LDA    LFDE3,Y 
       AND    $95     
       STA    PF1     
       STA    WSYNC   
       LDA    LFF50,Y 
       AND    $96     
       CPY    $97     
       BEQ    LF761   
       BCC    LF763   
       CPY    $98     
       BEQ    LF761   
       BCS    LF763   
LF761: EOR    $99     
LF763: STA    PF2     
       STA    WSYNC   
       TXA            
       SEC            
       SBC    $E1     
       BCC    LF777   
       LSR            
       CMP    $86     
       BCS    LF777   
       TAY            
       LDA    LFC93,Y 
       BIT.w  $00A9   
       STA    GRP0    
       INX            
       INX            
       LDA    $A3     
       CMP    $97     
       BCS    LF785   
       BCC    LF795   
LF785: LDA    $98     
       CMP    $A3     
       BCS    LF78D   
       BCC    LF795   
LF78D: STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       BEQ    LF7A1   
LF795: STA    WSYNC   
       LDY    #$00    
       LDA    ($92),Y 
       TAY            
       LDA.wy $00AB,Y 
       STA    COLUBK  
LF7A1: STA    WSYNC   
       TXA            
       SEC            
       SBC    $E1     
       BCC    LF7B3   
       LSR            
       CMP    $86     
       BCS    LF7B3   
       TAY            
       LDA    LFC93,Y 
       BIT.w  $00A9   
       STA    GRP0    
       INX            
       INX            
       INC    $A3     
       LDA    #$25    
       CMP    $A3     
       BEQ    LF7FF   
       JMP    LF73E   
LF7C4: LDY    #$25    
       LDA    #$F0    
       ADC    $A0     
       STA    $94     
       STA    COLUPF  
       ADC    $9A     
       STA    $95     
       LDA    #$C0    
       ADC    $A0     
       STA    $96     
       ADC    #$E7    
       STA    $97     
       LDA    $96     
       STA    $98     
       LDA    $94     
       STA    $99     
LF7E4: STA    WSYNC   
       LDA    ($94),Y 
       STA    PF0     
       LDA    ($96),Y 
       STA    PF1     
       LDA    ($98),Y 
       STA    PF2     
       LDA    $C5     
       STA    COLUPF  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       DEY            
       BPL    LF7E4   
LF7FF: STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    VDELP0  
       STA    VDELP1  
       STA    ENAM1   
       STA    GRP0    
       STA    GRP1    
       STA    COLUP0  
       LDX    #$04    
LF813: STA    REFP0,X 
       DEX            
       BPL    LF813   
       LDA    #$10    
       STA    NUSIZ0  
       LDX    #$C4    
       LDA    $BD     
       CMP    #$53    
       BCS    LF82C   
       LDX    #$1F    
       CMP    #$35    
       BCS    LF82C   
       LDX    #$4A    
LF82C: STX    COLUPF  
       LDA    #$44    
       STA    WSYNC   
       STA    COLUBK  
       LDA    $BD     
       LDX    #$12    
       LDY    #$22    
       JSR    LFEDE   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$7F    
       LDX    #$FF    
       LDY    #$02    
       STA    WSYNC   
       STY    ENAM0   
       STA    PF1     
       STX    PF2     
       LDX    #$05    
LF851: STA    WSYNC   
       DEX            
       BPL    LF851   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    ENAM0   
       JSR    LFFA1   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDY    #$07    
LF877: STY    $99     
       LDA    ($FA),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($F8),Y 
       STA    GRP1    
       LDA    ($F6),Y 
       STA    GRP0    
       LDA    ($F4),Y 
       STA    $98     
       LDA    ($F2),Y 
       TAX            
       LDA    ($F0),Y 
       TAY            
       LDA    $98     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $99     
       DEY            
       BPL    LF877   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       LDA    $CE     
       CMP    #$08    
       BNE    LF8B7   
       LDA    $A0     
       ROR            
       BCC    LF8B7   
       LDX    #$10    
       BIT    $13A2   
LF8B9: STA    WSYNC   
       DEX            
       BPL    LF8B9   
       LDA    $A2     
       CMP    #$50    
       BEQ    LF8C7   
       JMP    LF028   
LF8C7: INX            
       STX    COLUBK  
       JMP    LFFE7   
LF8CD: LDY    $BB     
       LDA    LFBDE,Y 
       STA    $90     
       LDA    LFBE4,Y 
       STA    $92     
       LDA    #$FB    
       STA    $91     
       STA    $93     
       RTS            

LF8E0: INC    $BB     
       LDA    $BB     
       CMP    #$05    
       BNE    LF8EC   
       LDA    #$00    
       STA    $BB     
LF8EC: RTS            

LF8ED: INC    $BC     
       LDA    #$06    
       CMP    $BC     
       BNE    LF8F9   
       LDA    #$00    
       STA    $BC     
LF8F9: RTS            

LF8FA: LDY    $BE     
       LDA    LFBEA,Y 
       STA    $B8     
       STA    $B9     
       CLC            
       ADC    #$03    
       STA    $C5     
       INC    $BE     
       LDA    #$0E    
       CMP    $BE     
       BNE    LF914   
       LDA    #$00    
       STA    $BE     
LF914: RTS            

LF915: LDY    #$00    
LF917: LDA    $B8     
       CLC            
       ADC    LFBF9,Y 
       STA.wy $00AC,Y 
       LDA    $B9     
       CLC            
       ADC    LFC00,Y 
       STA.wy $00B2,Y 
       INY            
       CPY    #$06    
       BNE    LF917   
LF92E: RTS            

LF92F: LDA    $CC     
       AND    #$01    
       BEQ    LF92E   
       LDA    $C8     
       AND    #$01    
       BNE    LF92E   
       PLA            
       PLA            
       LDA    #$FF    
       STA    $CC     
       STA    $C8     
       JMP    LFA72   
LF946: LDY    $E3     
       LDX    #$FC    
       LDA    LFC19,Y 
       TAY            
       LDA.wy $00E4,Y 
       CMP    #$82    
       BEQ    LF967   
       LDY    $E2     
       LDA    LFC84,Y 
       STA    $96     
       STX    $97     
       LDA    LFC8E,Y 
       STA    $98     
       STX    $99     
       BNE    LF977   
LF967: LDY    $E2     
       LDA    LFC7F,Y 
       STA    $96     
       STX    $97     
       LDA    LFC89,Y 
       STA    $98     
       STX    $99     
LF977: RTS            

LF978: LDX    $CD     
       BEQ    LF9C9   
       CPX    $CF     
       BEQ    LF997   
LF980: STX    $CF     
       LDA    LFD13,X 
       STA    $D5     
       LDA    LFD1C,X 
       STA    $D6     
       LDA    LFD37,X 
       STA    $D1     
       LDY    #$00    
       LDA    ($D5),Y 
       STA    $D3     
LF997: LDA    $D1     
       BEQ    LF980   
       LDY    #$01    
       LDA    ($D5),Y 
       STA    AUDC0   
       INY            
       LDA    ($D5),Y 
       STA    AUDF0   
       INY            
       LDA    ($D5),Y 
       STA    AUDV0   
       DEC    $D3     
       BNE    LF9CE   
       DEC    $D1     
       BEQ    LF9C9   
       LDA    $D5     
       CLC            
       ADC    #$04    
       STA    $D5     
       LDA    $D6     
       ADC    #$00    
       STA    $D6     
       LDY    #$00    
       LDA    ($D5),Y 
       STA    $D3     
       JMP    LF9CE   
LF9C9: LDX    #$00    
       JSR    LFA25   
LF9CE: LDX    $CE     
       BEQ    LFA1F   
       CPX    $D0     
       BEQ    LF9ED   
LF9D6: STX    $D0     
       LDA    LFD25,X 
       STA    $D7     
       LDA    LFD2E,X 
       STA    $D8     
       LDA    LFD40,X 
       STA    $D2     
       LDY    #$00    
       LDA    ($D7),Y 
       STA    $D4     
LF9ED: LDA    $D2     
       BEQ    LF9D6   
       LDY    #$01    
       LDA    ($D7),Y 
       STA    AUDC1   
       INY            
       LDA    ($D7),Y 
       STA    AUDF1   
       INY            
       LDA    ($D7),Y 
       STA    AUDV1   
       DEC    $D4     
       BNE    LFA24   
       DEC    $D2     
       BEQ    LFA1F   
       LDA    $D7     
       CLC            
       ADC    #$04    
       STA    $D7     
       LDA    $D8     
       ADC    #$00    
       STA    $D8     
       LDY    #$00    
       LDA    ($D7),Y 
       STA    $D4     
       JMP    LFA24   
LFA1F: LDX    #$01    
       JSR    LFA25   
LFA24: RTS            

LFA25: LDA    #$00    
       STA    $CD,X   
       STA    $CF,X   
       STA    $D1,X   
       STA    $D3,X   
       STA    AUDC0,X 
       STA    AUDF0,X 
       STA    AUDV0,X 
       RTS            

LFA36: LDA    $BD     
       CMP    #$14    
       BCC    LFA3D   
       RTS            

LFA3D: PLA            
       PLA            
       LDA    #$14    
       STA    $BD     
       JMP    LFAD2   
LFA46: LDX    #$00    
LFA48: LDA    $9A,X   
       CMP    #$0A    
       BCC    LFA57   
LFA4E: INC    $9B,X   
       SEC            
       SBC    #$0A    
       BCC    LFA4E   
       STA    $9A,X   
LFA57: CPX    #$05    
       BEQ    LFA5F   
       INX            
       JMP    LFA48   
LFA5F: RTS            

LFA60: LDX    #$00    
       STX    $8D     
       STX    $EE     
       STX    $DA     
       DEX            
       STX    $EA     
       STX    $84     
       RTS            

LFA6E: .byte $A5,$CD,$D0,$0E
LFA72: JSR    LFA60   
       LDX    #$00    
       STX    $C7     
       LDA    $DD     
       STA    $C6     
       JMP    LF101   
LFA80: .byte $A5,$A0,$85,$BE,$20,$FA,$F8,$20,$15,$F9
LFA8A: JMP    LF40F   
LFA8D: .byte $A9,$02,$85,$E9,$85,$CE,$C6,$C9,$F0,$02,$D0,$F1,$E6,$BC,$A5,$BC
       .byte $C9,$12,$F0,$0D,$A4,$C6,$B9,$C4,$FF,$85,$C9,$20,$2F,$F9,$4C,$0F
       .byte $F4,$A4,$E2,$A5,$80,$C9,$5E,$B0,$0B,$C9,$3E,$90,$03,$4C,$D2,$FA
       .byte $E6,$A5,$10,$04,$E6,$A5,$E6,$A5,$20,$46,$F9,$A4,$A5,$B1,$96,$C9
       .byte $EE,$F0,$02,$D0,$0E
LFAD2: LDX    #$03    
       STX    $C7     
       INX            
       STX    $E9     
       STX    $CD     
       INX            
       STX    $CE     
       BNE    LFA8A   
       LDX    #$01    
       STX    $C7     
       DEX            
       STX    $BC     
       DEX            
       STX    $A5     
       JSR    LF8FA   
       JSR    LF915   
       INC    $E2     
       LDA    $E2     
       ROR            
       BCC    LFAFC   
       JSR    LFE43   
       BNE    LFAFF   
LFAFC: JSR    LF087   
LFAFF: LDA    $9B     
       CLC            
       ADC    #$08    
       STA    $9B     
       LDA    $C6     
       CLC            
       ADC    $E2     
       ADC    #$02    
       STA    $8F     
       JMP    LF362   
LFB12: LDA    $A0     
       EOR    $9B     
       ADC    $9C     
       EOR    INTIM   
       STA    $CB     
       RTS            

LFB1E: .byte $A9,$96,$C5,$84,$B0,$0C,$20,$60,$FA,$A5,$BD,$4A,$85,$BD,$A2,$00
       .byte $85,$A7,$60
LFB31: LDA    #$45    
       STA    $83     
       LDA    #$4E    
       STA    $80     
LFB39: LDA    #$FC    
       STA    $89     
       LDA    #$93    
       STA    $88     
       RTS            

LFB42: .byte $00,$06,$10,$18,$1E,$22,$24,$28,$2A,$2E,$34,$3C,$46,$00,$02,$0C
       .byte $14,$1C,$20,$24,$28,$2C,$30,$38,$40,$4A,$00,$08,$12,$1A,$1E,$22
       .byte $24,$28,$2A,$2E,$32,$3A,$44,$00,$06,$10,$18,$1E,$22,$24,$28,$2A
       .byte $2E,$34,$3C,$46,$00,$02,$0C,$14,$1C,$20,$24,$28,$2C,$30,$38,$40
       .byte $4A,$00,$08,$12,$1A,$1E,$22,$24,$28,$2A,$2E,$32,$3A,$44,$09,$03
       .byte $08,$02,$07,$01,$00,$01,$07,$02,$08,$03,$09,$09,$03,$08,$02,$07
       .byte $01,$00,$01,$07,$02,$08,$03,$09,$03,$09,$02,$08,$01,$07,$00,$07
       .byte $01,$08,$02,$09,$03,$03,$09,$02,$08,$01,$07,$00,$07,$01,$08,$02
       .byte $09,$03,$03,$09,$02,$08,$01,$07,$00,$07,$01,$08,$02,$09,$03,$09
       .byte $03,$08,$02,$07,$01,$00,$01,$07,$02,$08,$03,$09
LFBDE: .byte $42,$4F,$5C,$69,$76,$83
LFBE4: .byte $90,$9D,$AA,$B7,$C4,$D1
LFBEA: .byte $80,$70,$60,$50,$40,$30,$20,$90,$A0,$B0,$C0,$D0,$E0,$F0,$10
LFBF9: .byte $09,$0A,$0A,$0C,$0C,$0D,$0D
LFC00: .byte $07,$07,$08,$08,$08,$09,$09
LFC07: .byte $0C,$0A,$0A
LFC0A: .byte $09,$08,$07,$06,$05,$04,$01,$01,$01
LFC13: .byte $3C,$44,$4C,$54,$5C,$64
LFC19: .byte $00,$02,$00,$02,$00,$02,$09,$09,$09,$0A,$0A,$0A,$0B,$0B,$0B,$0B
       .byte $0B,$0B,$0B,$0B,$0C
LFC2E: .byte $01,$02,$03,$05,$07,$08,$08,$08,$08,$05,$05,$15,$EE,$01,$00,$01
       .byte $02,$04,$03,$12,$02,$EE,$02,$02,$02,$02,$02,$02,$12,$03,$EE,$03
       .byte $04,$05,$06,$03,$04,$15,$EE,$04,$06,$06,$06,$F5,$07,$05,$05,$15
       .byte $01,$EE,$00,$01,$02,$06,$07,$18,$EE,$02,$02,$02,$02,$08,$08,$08
       .byte $18,$EE,$03,$03,$04,$05,$06,$07,$06,$15,$04,$EE,$06,$06,$06,$F5
       .byte $07
LFC7F: .byte $37,$3F,$47,$51,$59
LFC84: .byte $5B,$63,$6B,$75,$7D
LFC89: .byte $3C,$44,$4D,$56,$5A
LFC8E: .byte $60,$68,$71,$7A,$7E
LFC93: .byte $10,$10,$00,$C6,$00,$10,$10,$08,$08,$10,$08,$18,$30,$12,$3C,$1A
       .byte $10,$28,$31,$2F,$EE,$9D,$7A,$70,$68,$D0
LFCAD: .byte $9A,$9B,$9D,$A0,$A5
LFCB2: .byte $01,$02,$03,$05,$08
LFCB7: .byte $07,$06,$05,$04,$03,$02,$01,$01,$01
LFCC0: .byte $C3,$41,$8D,$6E
LFCC4: .byte $F0,$F1,$FA,$FA
LFCC8: .byte $1F,$0F,$07,$03,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFCDA: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FE,$FC,$F8,$F0,$E0,$C0,$80,$00,$00
       .byte $00,$00
LFCEC: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $7F,$1F,$1F
LFCFF: .byte $00,$00,$00,$80,$80,$80,$80,$80,$80,$80,$C0,$C0,$C0,$C0,$C0,$E0
       .byte $E0,$E0,$E0,$E0
LFD13: .byte $00,$8D,$49,$4D,$09,$59,$DB,$71,$75
LFD1C: .byte $00,$FD,$FD,$FD,$FE,$FD,$FF,$FD,$FD
LFD25: .byte $00,$76,$49,$4D,$09,$59,$DB,$71,$75
LFD2E: .byte $00,$FF,$FD,$FD,$FE,$FD,$FF,$FD,$FD
LFD37: .byte $00,$0C,$01,$03,$06,$06,$03,$01,$06
LFD40: .byte $00,$03,$01,$03,$06,$06,$03,$01,$06,$FF,$08,$05,$02,$03,$08,$01
       .byte $06,$08,$03,$04,$09,$02,$0F,$05,$0F,$04,$08,$1C,$09,$08,$08,$1C
       .byte $0F,$06,$08,$1C,$0B,$06,$08,$1C,$07,$08,$08,$1C,$04,$09,$08,$1C
       .byte $01,$10,$03,$03,$FF,$02,$03,$08,$09,$04,$03,$09,$0F,$03,$03,$04
       .byte $0B,$03,$03,$04,$07,$08,$03,$02,$04,$06,$03,$01,$01,$20,$04,$09
       .byte $09,$10,$04,$0B,$09,$20,$04,$0E,$09,$20,$04,$0E,$05,$20,$04,$0E
       .byte $02,$20,$04,$13,$09,$10,$04,$17,$09,$20,$04,$0B,$09,$20,$04,$0B
       .byte $05,$20,$04,$0B,$02,$40,$04,$0E,$08,$10,$04,$0E,$03
LFDBD: .byte $1F,$3F,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$7F,$3F,$1F
LFDE3: .byte $00,$00,$00,$00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FE,$FC,$F8,$F0,$E0
       .byte $C0,$80,$00,$00,$00,$00,$11,$08,$1F,$09,$20,$08,$1F,$0F,$18,$08
       .byte $1F,$0B,$18,$08,$1F,$07,$20,$08,$1F,$04,$25,$08,$1F,$01
LFE21: .byte $F0,$F0,$70,$B0,$D0,$E0
LFE27: .byte $BE,$7D,$FB,$F7,$EF,$DE
LFE2D: .byte $5B,$6D,$56,$56,$76,$5B,$10,$08,$10,$08,$18,$5A,$BD,$66,$66,$BD
       .byte $5A,$18,$08,$10,$08,$10
LFE43: LDX    #$01    
       STX    $A9     
       STX    $A6     
       STX    $CA     
       LDA    #$07    
       STA    $CE     
       RTS            

LFE50: DEC    $CA     
       BNE    LFE9E   
       LDY    $C6     
       LDA    LFED5,Y 
       STA    $CA     
       INC    $A6     
       INC    $A6     
       LDA    $A6     
       CMP    #$4C    
       BCS    LFEB4   
       LDY    #$3F    
       LDX    #$37    
       CMP    #$3C    
       BCS    LFE79   
       LDY    #$47    
       LDX    #$25    
       CMP    #$20    
       BCS    LFE79   
       LDY    #$4B    
       LDX    #$10    
LFE79: STX    $A8     
       STY    $81     
       STA    $87     
       LDA    $E3     
       ROR            
       BCC    LFE89   
       TYA            
       SBC    #$0F    
       BNE    LFE8C   
LFE89: TYA            
       ADC    #$28    
LFE8C: STA    $ED     
       LDA    #$4C    
       SEC            
       SBC    $A6     
       STA    $84     
       AND    #$FC    
       STA    $EA     
       CLC            
       ADC    #$08    
       STA    $EB     
LFE9E: LDA    #$F5    
       STA    $8B     
       LDA    #$00    
       CLC            
       ADC    $A0     
       STA    $8A     
       LDA    $CE     
       BNE    LFEB1   
       LDA    #$07    
       STA    $CE     
LFEB1: JMP    LF3F0   
LFEB4: LDX    #$00    
       STX    $A9     
       DEX            
       STX    $EA     
       STX    $EB     
       STX    $84     
       LDA    $C6     
       ADC    #$0A    
       STA    $94     
       LDA    $BD     
       SBC    $94     
       STA    $BD     
       JSR    LF087   
       LDA    #$08    
       STA    $CE     
       JMP    LFEB1   
LFED5: .byte $0A,$09,$08,$06,$04,$03,$02,$01,$01
LFEDE: STY    $E1     
       LDY    #$02    
       SEC            
LFEE3: INY            
       SBC    #$0F    
       BCS    LFEE3   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    WSYNC   
LFEF2: DEY            
       BPL    LFEF2   
       STA    VSYNC,X 
       LDX    $E1     
       STA    VSYNC,X 
       RTS            

LFEFC: .byte $FF,$FF,$00,$00,$FE,$E2,$E2,$E2,$92,$8A,$86,$FE,$7C,$7C,$7C,$10
       .byte $10,$10,$70,$70,$FE,$C0,$C0,$C0,$FE,$02,$02,$FE,$FE,$06,$06,$06
       .byte $FE,$04,$04,$FC,$0C,$0C,$0C,$FE,$84,$84,$84,$84,$FE,$86,$06,$06
       .byte $FE,$80,$80,$FE,$FE,$C2,$C2,$C2,$FE,$80,$80,$F8,$18,$18,$18,$18
       .byte $08,$04,$82,$FE,$FE,$C6,$C6,$C6,$FE,$44,$44,$7C,$06,$06,$06,$06
       .byte $FE,$82,$82,$FE
LFF50: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$07,$0F
       .byte $1F,$3F,$7F,$7F,$3F,$1F,$0F,$07,$03,$01,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$90,$04,$13,$05,$90,$04,$1D,$05,$50,$04
       .byte $13,$03,$FF,$FD,$81,$DD,$DD,$18,$DF,$DD,$81,$FD,$FF,$FF,$FD,$81
       .byte $DD,$DF,$18,$DD,$DD,$81,$FD,$FF
LFF98: LDA    $85     
       LDX    #$14    
       LDY    #$24    
       JSR    LFEDE   
LFFA1: LDA    #$3B    
       LDX    #$10    
       LDY    #$20    
       JSR    LFEDE   
       LDA    #$43    
       LDX    #$11    
       LDY    #$21    
       JSR    LFEDE   
       BNE    LFFBF   
       RTS            

LFFB6: LDA    #$4F    
       LDX    #$10    
       LDY    #$20    
       JSR    LFEDE   
LFFBF: STA    WSYNC   
       STA    HMOVE   
       RTS            

LFFC4: .byte $0B,$08,$07,$05,$05,$04,$04,$03,$03,$24,$18,$3C,$18,$24
LFFD2: .byte $02,$03,$04,$05,$06,$07,$08,$09,$0A,$03,$08,$06,$06,$08,$08,$04
       .byte $09,$02,$0F,$0A,$0F
LFFE7: LDA    SWCHB   
LFFEA: CMP    SWCHB   
       BNE    LFFF5   
       LDX    INPT4   
       BPL    LFFF5   
       BMI    LFFEA   
LFFF5: JMP    LF000   
LFFF8: .byte $FF,$FF,$00,$F0,$00,$F0,$82,$8D
