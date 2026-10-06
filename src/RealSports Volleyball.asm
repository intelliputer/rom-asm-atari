; Disassembly of roms/RealSports Volleyball.bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/RealSports Volleyball.bin
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
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF007: STA    WSYNC,X 
       DEX            
       BNE    LF007   
       JSR    LFB67   
       LDA    #$FF    
       STA    $B8     
       STA    $BA     
       JSR    LFB67   
       JSR    LFB49   
       JSR    LFA73   
LF01E: JSR    LF06C   
       JSR    LF091   
       JSR    LF11A   
       JSR    LF15E   
       JSR    LF263   
       JSR    LF2C3   
       JSR    LF35E   
       JSR    LF49C   
       JSR    LF528   
       JSR    LF5A0   
       JSR    LF628   
       JSR    LF66B   
       JSR    LF6BB   
       JSR    LF712   
LF048: LDA    INTIM   
       BNE    LF048   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMOVE   
       JSR    LF77B   
       LDA    #$24    
       STA    TIM64T  
       JSR    LF958   
       JSR    LF9C2   
       JSR    LFA2E   
LF064: LDA    INTIM   
       BNE    LF064   
       JMP    LF01E   
LF06C: LDA    #$FF    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       LDA    #$30    
       STA    TIM64T  
       LDY    #$00    
       STY    VSYNC   
       LDX    #$7F    
       STX    VBLANK  
       INC    $CD     
       JSR    LFB52   
       LDA    $D7     
       STA    $D5     
       LDA    $D8     
       STA    $D6     
       RTS            

LF091: STY    $80     
       LDA    #$10    
       STA    $DB     
       STA    $DC     
       LDA    #$56    
       STA    $D0     
       LDX    #$01    
       LDA    SWCHA   
       CMP    #$FF    
       BEQ    LF0A8   
       STA    $80     
LF0A8: LDA    $CE,X   
       SEC            
       SBC    $D2     
       BPL    LF0B4   
       CLC            
       ADC    #$0A    
       BMI    LF0D4   
LF0B4: CMP    #$0A    
       BCS    LF0D4   
       LDA    $9F     
       BPL    LF0D4   
       LDA    $D3     
       CMP    #$12    
       BCS    LF0D4   
       LDA    $86,X   
       BNE    LF0D4   
       LDA    $88,X   
       BNE    LF0D4   
       LDA    $99     
       BEQ    LF0D4   
       LDA    $B1     
       BNE    LF0D4   
       INC    $86,X   
LF0D4: CPX    #$01    
       BNE    LF0E4   
       CPX    $BB     
       BNE    LF0E4   
       LDA    $87     
       BEQ    LF0FE   
       LDA    $B8     
       BNE    LF0E6   
LF0E4: LDA    INPT4,X 
LF0E6: BMI    LF10E   
       STA    $80     
       LDA    $AE,X   
       BNE    LF114   
       INC    $AE,X   
       LDA    #$00    
       STA    $86,X   
       LDA    $99     
       BNE    LF102   
       LDA    $8A,X   
       BNE    LF0FE   
       INC    $8A,X   
LF0FE: DEX            
       BPL    LF0A8   
       RTS            

LF102: LDA    $88,X   
       BNE    LF0FE   
       STA    $86,X   
       LDA    #$01    
       STA    $88,X   
       BNE    LF0FE   
LF10E: LDA    #$00    
       STA    $AE,X   
       BEQ    LF0FE   
LF114: LDA    #$02    
       STA    $AE,X   
       BNE    LF0FE   
LF11A: LDA    #$01    
       STA    $96     
       STA    $97     
       LDX    #$00    
       LDA    $BB     
       CMP    #$02    
       BEQ    LF134   
       SED            
       LDA    $BC     
       SEC            
       SBC    $BD     
       SBC    #$05    
       BMI    LF134   
       STX    $97     
LF134: CLD            
       LDA    SWCHB   
       AND    #$40    
       BNE    LF13E   
       STX    $96     
LF13E: LDA    SWCHB   
       BMI    LF145   
       STX    $97     
LF145: LDA    $BA     
       AND    #$01    
       EOR    #$01    
       STA    $BB     
       INC    $BB     
       LDA    $82     
       BNE    LF155   
       STX    $92     
LF155: LDA    $80     
       BEQ    LF15D   
       LDA    #$78    
       STA    $82     
LF15D: RTS            

LF15E: LDA    SWCHA   
       AND    #$F0    
       STA    $DF     
       JSR    LF16D   
       STY    $E0     
       JMP    LF1E1   
LF16D: LDY    #$00    
       LDX    #$01    
       CPX    $BB     
       BNE    LF1DA   
       LDY    #$0F    
       LDA    $B1     
       BNE    LF1E0   
       LDA    $D2     
       CMP    #$52    
       BCS    LF199   
       LDA    $CF     
       CMP    #$87    
       BCC    LF1D7   
       BEQ    LF18B   
       BCS    LF1D4   
LF18B: LDA    #$FF    
       STA    $95     
       LDA    $D6     
       CMP    #$3A    
       BCC    LF1C6   
       BEQ    LF1E0   
       BCS    LF1C1   
LF199: LDA    $D8     
       STA    $B5     
       LDA    $CF     
       STA    $B6     
       LDA    $A2     
       CMP    #$26    
       BCS    LF1B2   
       LDA    $DA     
       STA    $B5     
       LDA    $CF     
       CLC            
       ADC    #$08    
       STA    $B6     
LF1B2: LDA    $E7     
       BNE    LF1C8   
       LDA    $D4     
       CLC            
       ADC    #$05    
       CMP    $B5     
       BEQ    LF1C8   
       BCS    LF1C6   
LF1C1: DEC    $D8     
       JMP    LF1C8   
LF1C6: INC    $D8     
LF1C8: LDA    $D1     
       CMP    #$50    
       BCC    LF1E0   
       CMP    $B6     
       BEQ    LF1E0   
       BCS    LF1D7   
LF1D4: LDY    #$0B    
       RTS            

LF1D7: LDY    #$07    
       RTS            

LF1DA: LDA    SWCHA   
       AND    #$0F    
       TAY            
LF1E0: RTS            

LF1E1: LDA    $DF,X   
       STA    $B3     
       CMP    LFF76,X 
       BEQ    LF248   
       LDA    $8C,X   
       BNE    LF1F0   
       INC    $8C,X   
LF1F0: LDA    $B3     
       AND    LFF78,X 
       BNE    LF202   
       LDA    #$00    
       STA    $94,X   
       JSR    LFB0D   
       BNE    LF202   
       INC    $CE,X   
LF202: LDA    $B3     
       AND    LFF7A,X 
       BNE    LF21A   
       LDA    #$FF    
       STA    $94,X   
       JSR    LFB0D   
       BNE    LF21A   
       DEC    $CE,X   
       LDA    $EB,X   
       BEQ    LF21A   
       DEC    $EB,X   
LF21A: LDA    $B3     
       AND    LFF7C,X 
       BNE    LF228   
       JSR    LFB0D   
       BNE    LF228   
       DEC    $D7,X   
LF228: LDA    $B3     
       AND    LFF7E,X 
       BNE    LF236   
       JSR    LFB0D   
       BNE    LF236   
       INC    $D7,X   
LF236: LDA    #$44    
       CMP    $D7,X   
       BCS    LF23E   
       STA    $D7,X   
LF23E: LDA    #$2B    
       CMP    $D7,X   
       BCC    LF251   
       STA    $D7,X   
       BCS    LF251   
LF248: CPX    $BB     
       BEQ    LF251   
       LDA    LFD68,X 
       STA    $94,X   
LF251: LDA    $B0     
       BEQ    LF258   
       LDA    LFF36,X 
LF258: LDA    $92     
       BNE    LF262   
       DEX            
       BMI    LF262   
       JMP    LF1E1   
LF262: RTS            

LF263: LDY    #$01    
LF265: LDA    #$33    
       CMP.wy $00D5,Y 
       BCC    LF26F   
       STA.wy $00D5,Y 
LF26F: LDA.wy $00D7,Y 
       SEC            
       SBC    #$1B    
       STA.wy $00D9,Y 
       LDX    #$08    
       LDA.wy $00CE,Y 
       CMP    LFF6C,Y 
       BCC    LF28A   
       LDA    LFF6E,Y 
       SEC            
       SBC.wy $00CE,Y 
       TAX            
LF28A: LDA.wy $00CE,Y 
       CMP    LFF6E,Y 
       BCC    LF29C   
       LDA    LFF6E,Y 
       STA.wy $00CE,Y 
       LDX    #$00    
       STX    $8C,Y   
LF29C: LDA.wy $00CE,Y 
       CMP    LFF70,Y 
       BCC    LF2AB   
       LDA    #$08    
       STA.wy $00EB,Y 
       BNE    LF2B9   
LF2AB: LDA    LFF72,Y 
       STA.wy $00CE,Y 
       LDX    $EB,Y   
       CPX    #$00    
       BNE    LF2B9   
       STX    $8C,Y   
LF2B9: LDA    LFF43,X 
       STA.wy $00E9,Y 
       DEY            
       BPL    LF265   
LF2C2: RTS            

LF2C3: LDA    $B9     
       TAX            
       EOR    #$01    
       TAY            
       LDA    #$00    
       STA    $E7     
       LDA    $D2     
       CMP    #$55    
       BEQ    LF2D7   
       CMP    #$56    
       BNE    LF2D9   
LF2D7: STA    $ED     
LF2D9: LDA    $99     
       BNE    LF2C2   
       LDA    $B1     
       BNE    LF2C2   
       LDA    $92     
       BEQ    LF2EC   
       LDX    #$01    
       STX    $B9     
       LDA    #$00    
       TAY            
LF2EC: LDA    CXM1P   
       AND    LFF74,X 
       BNE    LF2F7   
       JSR    LFBB4   
       RTS            

LF2F7: CPX    $BB     
       BNE    LF309   
       LDA    $8B     
       BNE    LF309   
       LDA    $CD     
       AND    #$EE    
       BNE    LF30F   
       STA    $87     
       STX    $8B     
LF309: LDA    $8A,X   
       CMP    #$05    
       BEQ    LF336   
LF30F: LDA    $D5,X   
       SEC            
       SBC    #$0C    
       STA    $A2     
       LDA    #$07    
       STA    $D3     
       STA    $E7     
       STA    $A1     
       LDA    LFF3F,X 
       STA    $CE,X   
       LDA    LFF41,X 
       STA    $D2     
       LDA    LFF30,X 
       STA    $94,X   
       LDA    #$00    
       STA    $8C,X   
       LDA    #$20    
       STA    $DB,X   
       RTS            

LF336: STX    $B2     
       LDA    #$00    
       STA    $86,X   
       STA    $88,X   
       LDA    #$01    
       STA    $9F     
       LDA    #$EC    
       STA    $9E     
       LDA    #$03    
       STA    $84     
       LDA    $D2     
       STA    $9D     
       LDA    LFF2C,X 
       STA    $9B     
       LDA    LFF2E,X 
       STA    $9A     
       STA    $99     
       JSR    LFB2C   
LF35D: RTS            

LF35E: LDA    $99     
       BEQ    LF35D   
       LDA    $9E     
       SEC            
       SBC    #$0F    
       STA    $9E     
       BCS    LF36D   
       DEC    $9F     
LF36D: LDA    $CD     
       AND    #$03    
       BEQ    LF382   
       LDA    $9E     
       CLC            
       ADC    $A0     
       STA    $A0     
       LDA    $9F     
       ADC    $A1     
       STA    $A1     
       STA    $D3     
LF382: LDA    $9A     
       CLC            
       ADC    $9C     
       STA    $9C     
       LDA    $9B     
       ADC    $9D     
       STA    $9D     
       STA    $D2     
       LDA    $CD     
       AND    #$07    
       BNE    LF3A4   
       LDA    $A2     
       SEC            
       SBC    $AC     
       STA    $A2     
       BPL    LF3A4   
       LDA    #$00    
       STA    $A2     
LF3A4: LDA    $B1     
       BEQ    LF3DA   
       LDA    $D3     
       BPL    LF3D9   
       LDX    $B1     
       LDA    LFF3C,X 
       STA    $9F     
       LDA    #$1E    
       STA    $9E     
       LDA    #$01    
       STA    $84     
       LDA    #$00    
       STA    $D3     
       STA    $A1     
       DEC    $B1     
       BEQ    LF3D1   
       LDA    $D2     
       CMP    #$A0    
       BCS    LF3D1   
       LDA    $D2     
       CMP    #$07    
       BCS    LF3D9   
LF3D1: LDA    #$00    
       STA    $B1     
       STA    $99     
       STA    $84     
LF3D9: RTS            

LF3DA: LDA    $D3     
       CMP    #$11    
       BCS    LF3ED   
       LDA    $D4     
       CMP    #$46    
       BCS    LF3ED   
       LDA    CXM1P   
       AND    LFF74,Y 
       BNE    LF406   
LF3ED: LDA    $B0     
       BEQ    LF3D9   
       JSR    LFB12   
       CMP    $A3     
       BEQ    LF3D9   
       LDA    $D3     
       CMP    #$11    
       BCS    LF405   
       LDA    CXM1P   
       AND    LFF74,X 
       BNE    LF410   
LF405: RTS            

LF406: LDA    #$03    
       STA    $B0     
       STY    $B9     
       TXA            
       TAY            
       LDX    $B9     
LF410: LDA    #$00    
       STA    $ED     
       JSR    LFB12   
       STA    $A3     
       LDA    $88,X   
       BEQ    LF449   
       LDA    $D2     
       CPX    #$01    
       BEQ    LF427   
       CMP    #$28    
       BCC    LF449   
LF427: CMP    #$78    
       BCS    LF449   
       LDA    #$01    
       STA    $9F     
       LDA    #$0A    
       STA    $9E     
       LDA    #$02    
       STA    $84     
       LDA    LFF38,X 
       STA    $9B     
       LDA    LFF3A,X 
       STA    $9A     
       LDA    #$00    
       STA    $B0     
       JSR    LFB2C   
       RTS            

LF449: LDA    #$04    
       STA    $84     
       LDX    $B9     
       LDA    $BA     
       CMP    #$03    
       BCS    LF482   
       LDA    #$02    
       STA    $9F     
       LDA    #$65    
       STA    $9E     
       LDX    $A3     
       LDA    LFF2A,X 
       STA    $AC     
       LDX    $B9     
       LDA    $D9,X   
       CMP    #$13    
       BCS    LF474   
       LDA    $AC     
       BPL    LF474   
       LDA    #$FC    
       STA    $AC     
LF474: LDA    LFF30,X 
       STA    $9B     
       LDA    LFF32,X 
       STA    $9A     
       DEC    $B0     
       BNE    LF49B   
LF482: LDA    LFF34,X 
       STA    $9B     
       LDA    LFF36,X 
       STA    $9A     
       LDA    #$01    
       STA    $9F     
       LDA    #$C8    
       STA    $9E     
       JSR    LFB2C   
       LDA    #$00    
       STA    $B0     
LF49B: RTS            

LF49C: LDA    $B1     
       BNE    LF4A4   
       LDA    $E6     
       BMI    LF4E9   
LF4A4: LDA    $D3     
       BPL    LF49B   
       LDA    $99     
       BEQ    LF49B   
       LDA    #$02    
       STA    $B1     
       LDA    #$00    
       STA    $D3     
       STX    $AD     
       LDA    $ED     
       BNE    LF4BC   
       STY    $AD     
LF4BC: LDA    $D2     
       CMP    #$A0    
       BCS    LF4D0   
       CMP    #$0A    
       BCC    LF4D0   
       LDA    $A2     
       CMP    #$06    
       BCC    LF4D0   
       CMP    #$3C    
       BCC    LF4D6   
LF4D0: STY    $AD     
       LDA    #$05    
       STA    $84     
LF4D6: LDX    $AD     
       LDA    #$00    
       STA    $B0     
       CPX    $B2     
       BNE    LF516   
       LDA    $92     
       BNE    LF516   
       LDA    #$FF    
       STA    $E6     
       RTS            

LF4E9: LDA    #$06    
       STA    $84     
       STA    $E6     
       LDX    $AD     
       LDA    $BC,X   
       SED            
       CLC            
       ADC    #$01    
       STA    $BC,X   
       CLD            
       CMP    #$15    
       BCC    LF516   
       LDA    $BC     
       SEC            
       SBC    $BD     
       BMI    LF50B   
       CMP    #$02    
       BCC    LF516   
       BCS    LF51D   
LF50B: LDA    $BD     
       SEC            
       SBC    $BC     
       CMP    #$02    
       BCC    LF516   
       BCS    LF51D   
LF516: STX    $B9     
       LDA    $B8     
       STA    $E8     
       RTS            

LF51D: LDA    #$01    
       STA    $93     
       JSR    LFB9A   
       JSR    LFA73   
       RTS            

LF528: LDX    #$01    
LF52A: LDA    $86,X   
       BEQ    LF53E   
       TAY            
       LDA    $CD     
       AND    #$03    
       BNE    LF537   
       INC    $86,X   
LF537: LDA    LFCBD,Y 
       BNE    LF58E   
       STA    $86,X   
LF53E: LDA    $88,X   
       BEQ    LF564   
       TAY            
       LDA    $D5,X   
       CLC            
       ADC    #$03    
       STA    $D5,X   
       LDA    $D9,X   
       CLC            
       ADC    #$03    
       STA    $D9,X   
       LDA    #$00    
       STA    $8A,X   
       LDA    $CD     
       AND    #$01    
       BNE    LF55D   
       INC    $88,X   
LF55D: LDA    LFCBD,Y 
       BNE    LF58E   
       STA    $88,X   
LF564: LDA    $8A,X   
       BEQ    LF578   
       TAY            
       LDA    $CD     
       AND    #$03    
       BNE    LF571   
       INC    $8A,X   
LF571: LDA    LFCBD,Y 
       BNE    LF58E   
       STA    $8A,X   
LF578: LDA    $8C,X   
       BEQ    LF594   
       TAY            
       LDA    $CD     
       AND    #$03    
       BNE    LF585   
       INC    $8C,X   
LF585: LDA    LFCBD,Y 
       BNE    LF592   
       STA    $8C,X   
       BEQ    LF594   
LF58E: LDY    #$00    
       STY    $8C,X   
LF592: STA    $DB,X   
LF594: DEX            
       BPL    LF52A   
       LDA    $DB     
       STA    $DD     
       LDA    $DC     
       STA    $DE     
       RTS            

LF5A0: LDA    $92     
       BEQ    LF5AE   
       LDA    $82     
       BEQ    LF5AE   
       LDA    $AE     
       CMP    #$01    
       BEQ    LF5B4   
LF5AE: LDA    SWCHB   
       ROR            
       BCS    LF5C4   
LF5B4: LDA    $BA     
       BPL    LF5BC   
       INC    $BA     
       INC    $BA     
LF5BC: JSR    LFB67   
       JSR    LFB49   
       BEQ    LF5F4   
LF5C4: ROR            
       BCC    LF5CD   
       LDX    #$01    
       STX    $98     
       BNE    LF5F4   
LF5CD: JSR    LFA73   
       DEC    $98     
       BPL    LF5F4   
       LDA    #$2D    
       STA    $98     
       LDA    $BA     
       BPL    LF5DE   
       INC    $BA     
LF5DE: INC    $BA     
       LDX    #$78    
       STX    $82     
       LDX    #$00    
       STX    $CD     
       STX    $93     
       LDA    $BA     
       CMP    #$05    
       BCC    LF5F4   
       LDA    #$01    
       STA    $BA     
LF5F4: LDX    $F1     
       STX    COLUP1  
       LDA    $F6     
       EOR    #$03    
       STA    COLUBK  
       LDA    #$25    
       STA    CTRLPF  
       LDA    #$00    
       STA    NUSIZ0  
       LDA    #$10    
       STA    NUSIZ1  
       LDA    $94     
       STA    REFP0   
       LDA    $95     
       STA    REFP1   
       LDA    $E4     
       CMP    #$51    
       BCS    LF627   
       SEC            
       SBC    #$08    
       AND    #$0F    
       STA    $B3     
       LDA    $F6     
       AND    #$F0    
       EOR    $B3     
       STA    COLUBK  
LF627: RTS            

LF628: LDA    $D2     
       BEQ    LF630   
       CMP    #$A0    
       BCC    LF634   
LF630: LDA    #$04    
       STA    $D2     
LF634: CLC            
       ADC    #$01    
       STA    $D1     
       LDA    $A2     
       CLC            
       ADC    $D3     
       STA    $D4     
       LDA    $A2     
       STA    $B3     
       LDA    #$5F    
       SEC            
       SBC    $D4     
       STA    $A6     
       STA    $A8     
       LDA    #$FC    
       STA    $A7     
       STA    $A9     
       STA    $AB     
       LDA    $A6     
       STA    $AA     
       LDA    $99     
       BEQ    LF66A   
       LDA    $E4     
       CMP    #$49    
       BEQ    LF66A   
       LDA    #$5F    
       SEC            
       SBC    $B3     
       STA    $AA     
LF66A: RTS            

LF66B: LDX    #$01    
LF66D: LDA    #$C6    
       STA    $B3,X   
       LDY    #$FC    
       LDA    $99     
       BEQ    LF67D   
       LDA    #$E7    
       STA    $B3     
       LDY    #$FC    
LF67D: LDA    $86,X   
       BEQ    LF687   
       LDA    #$E7    
       STA    $B3,X   
       LDY    #$FC    
LF687: LDA    $88,X   
       BEQ    LF691   
       LDA    #$68    
       STA    $B3,X   
       LDY    #$FD    
LF691: LDA    $8A,X   
       BEQ    LF69B   
       LDA    #$68    
       STA    $B3,X   
       LDY    #$FD    
LF69B: LDA    $8C,X   
       BEQ    LF6A5   
       LDA    #$E9    
       STA    $B3,X   
       LDY    #$FD    
LF6A5: STY    $B5,X   
       DEX            
       BPL    LF66D   
       LDA    $B3     
       STA    $8E     
       LDA    $B5     
       STA    $8F     
       LDA    $B4     
       STA    $90     
       LDA    $B6     
       STA    $91     
       RTS            

LF6BB: LDA    $CE     
       STA    $B3     
       LDA    #$00    
       STA    REFP0   
       LDA    #$0D    
       STA    $DB     
       LDA    $D5     
       STA    $E5     
       LDA    #$41    
       STA    $CE     
       LDA    $E4     
       CMP    #$49    
       BEQ    LF6ED   
       LDA    $92     
       BNE    LF6E8   
       LDX    $81     
       CPX    $83     
       BEQ    LF6E8   
       TXA            
       AND    #$07    
       BNE    LF6E8   
       STX    $83     
       DEC    $E4     
LF6E8: LDA    $E4     
       STA    $D5     
       RTS            

LF6ED: LDA    $EE     
       CMP    #$A0    
       BEQ    LF70D   
       LDA    #$4D    
       STA    $D5     
       LDA    #$16    
       STA    $DB     
       LDA    $CD     
       AND    #$20    
       BNE    LF701   
LF701: LDA    $CD     
       AND    #$07    
       BNE    LF70D   
       LDA    $B8     
       BMI    LF70D   
       INC    $EE     
LF70D: LDA    $EE     
       STA    $CE     
       RTS            

LF712: LDX    #$04    
LF714: LDY    #$00    
       LDA    $CE,X   
       CMP    #$52    
       BCC    LF720   
       SBC    #$4B    
       LDY    #$05    
LF720: CPX    #$02    
       ADC    #$02    
LF724: INY            
       SBC    #$0F    
       BCS    LF724   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LF735: DEY            
       BPL    LF735   
       STA    RESP0,X 
       DEX            
       BPL    LF714   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       LDA    $B3     
       STA    $CE     
       CPX    #$02    
       ADC    #$02    
LF74B: INY            
       SBC    #$0F    
       BCS    LF74B   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $E2     
       STY    $E3     
       STA    HMCLR   
       STA    CXCLR   
       LDA    $F5     
       STA    COLUP0  
       LDY    $E1     
       LDA    $CD     
       AND    #$1F    
       BNE    LF76E   
       LDY    $B8     
LF76E: STY    $E1     
       STY    $B5     
       LDA    $EE     
       BEQ    LF77A   
       LDA    $F0     
       STA    COLUP0  
LF77A: RTS            

LF77B: LDX    #$5A    
LF77D: TXA            
       TAY            
       LDA    ($A8),Y 
       LDY    $DB     
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM1   
       CPX    $D5     
       BCS    LF798   
       LDA    LFF55,Y 
       CMP    #$EE    
       BEQ    LF798   
       DEC    $DB     
       STA    GRP0    
LF798: TXA            
       TAY            
       LDA    ($A6),Y 
       ASL            
       TAY            
       CPX    $D5     
       DEX            
       STA    WSYNC   
       STA    HMOVE   
       STY    ENABL   
       BCS    LF7B6   
       LDY    $DB     
       LDA    LFF55,Y 
       CMP    #$EE    
       BEQ    LF7B6   
       DEC    $DB     
       STA    GRP0    
LF7B6: CPX    #$4A    
       BCS    LF77D   
       LDY    #$49    
LF7BC: LDX    $F6     
       ROR    $B5     
       BCS    LF7C5   
       JMP    LF7C7   
LF7C5: LDX    $F2     
LF7C7: STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       LDA    #$00    
       STA    GRP0    
       LDA    ($A8),Y 
       STA    ENAM1   
       LDX    $F6     
       ROR    $B5     
       BCS    LF7DE   
       JMP    LF7E0   
LF7DE: LDX    $F2     
LF7E0: LDA    #$00    
       STA    HMP0    
       LDA    ($A6),Y 
       ASL            
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       STA    ENABL   
       DEY            
       CPY    #$46    
       BCS    LF7BC   
       LDA    #$20    
       STA    CTRLPF  
       LDA    $E5     
       STA    $D5     
       LDA    $DD     
       STA    $DB     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($A8),Y 
       STA    ENAM1   
       LDA    ($A6),Y 
       ASL            
       STA    WSYNC   
       STA    HMOVE   
       STA    ENABL   
       NOP            
       NOP            
       LDX    $E3     
LF815: DEX            
       BPL    LF815   
       STA    RESP0   
       LDA    $E2     
       STA    HMP0    
       LDA    $94     
       STA    REFP0   
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($A8),Y 
       STA    ENAM1   
       LDA    $F3     
       STA    COLUPF  
       LDA    #$00    
       STA    NUSIZ0  
       LDA    $F2     
       AND    #$CF    
       STA    COLUP0  
       LDA    #$FF    
       STA    ENAM0   
       LDA    #$20    
       STA    PF0     
       LDX    #$00    
       LDA    #$70    
       STA    HMP0    
       LDA    $F4     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    ($A6),Y 
       ASL            
       STX    PF0     
       STA    ENABL   
       DEY            
       LDA    #$20    
       STA    PF0     
       TYA            
       TAX            
       LDA    $F4     
       STA    $B4     
       STA    HMCLR   
LF863: JSR    LFA78   
       CPX    #$3F    
       BCS    LF863   
       LDA    $F0     
       STA    $B4     
       JSR    LFA78   
       LDA    #$00    
       STA    PF0     
       LDA    #$24    
       STA    CTRLPF  
LF879: JSR    LFABF   
       CPX    #$23    
       BNE    LF879   
       LDA    #$10    
       STA    HMM0    
       TXA            
       TAY            
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       LDA    ($A8),Y 
       STA    ENAM1   
       LDA    $D9     
       STA    $D5     
       LDA    $DA     
       STA    $D6     
       LDA    $E9     
       STA    HMP0    
       LDA    $EA     
       STA    HMP1    
       LDA    #$FF    
       STA    HMM0    
       TXA            
       TAY            
       LDA    ($AA),Y 
       LSR            
       STA    $B3     
       LDA    ($A6),Y 
       ASL            
       ORA    $B3     
       STA    WSYNC   
       STA    HMOVE   
       STA    ENABL   
       LDA    $DD     
       STA    $DB     
       LDA    $DE     
       STA    $DC     
       DEX            
       LDA    #$00    
       STA    HMP0    
       STA    HMP1    
LF8C9: JSR    LFABF   
       CPX    #$08    
       BNE    LF8C9   
       LDA    $F0     
       STA    $B4     
       JSR    LFA78   
       LDA    $F4     
       STA    $B4     
       STA    HMCLR   
LF8DD: JSR    LFA78   
       CPX    #$00    
       BNE    LF8DD   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F0     
       STA    COLUBK  
       STX    ENAM0   
       STX    ENAM1   
       STX    ENABL   
       STX    GRP0    
       STX    GRP1    
       STX    PF0     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       INX            
       STX    VDELP0  
       STX    VDELP1  
       LDY    #$06    
       STY    $B3     
       STY    WSYNC   
LF909: DEY            
       BPL    LF909   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDA    $F5     
       STA    COLUP0  
       STA    COLUP1  
LF925: LDY    $B3     
       LDA    #$00    
       STA    GRP0    
       STA    WSYNC   
       LDA    ($CB),Y 
       STA    GRP1    
       LDA    ($C9),Y 
       STA    GRP0    
       LDA    ($C7),Y 
       STA    $B4     
       LDA    ($C5),Y 
       TAX            
       LDA    ($C3),Y 
       TAY            
       LDA    $B4     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $B3     
       BPL    LF925   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LF958: LDA    $84     
       BEQ    LF966   
       LDX    $85     
       BNE    LF966   
       TAY            
       LDA    LFE7A,Y 
       STA    $85     
LF966: LDA    $85     
       BEQ    LF98F   
       LDX    $92     
       BNE    LF98F   
       INC    $85     
       INC    $85     
       LDX    $85     
       LDA    LFE81,X 
       STA    AUDF0   
       INX            
       LDA    LFE81,X 
       CMP    #$FF    
       BEQ    LF98F   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0   
       LDA    LFE81,X 
       AND    #$0F    
       STA    AUDV0   
       RTS            

LF98F: LDX    #$00    
       STX    AUDC0   
       STX    AUDF0   
       STX    AUDV0   
       STX    $84     
       STX    $85     
       STX    AUDC1   
       STX    AUDF1   
       STX    AUDV1   
       LDA    $92     
       BNE    LF9C1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$1F    
       STA    AUDF1   
       LDX    $EF     
       LDA    $CD     
       AND    #$3F    
       BNE    LF9BA   
       INX            
       TXA            
       AND    #$0F    
       TAX            
LF9BA: LDA    LFE6A,X 
       STA    AUDV1   
       STX    $EF     
LF9C1: RTS            

LF9C2: LDA    $82     
       BEQ    LF9CE   
       LDA    $92     
       BEQ    LF9CE   
       LDA    $93     
       BEQ    LF9F0   
LF9CE: LDA    $BC     
       AND    #$0F    
       STA    $C1     
       LDA    $BC     
       LSR            
       LSR            
       LSR            
       LSR            
       BEQ    LF9DE   
       STA    $C2     
LF9DE: LDA    $BD     
       AND    #$0F    
       STA    $BE     
       LDA    $BD     
       LSR            
       LSR            
       LSR            
       LSR            
       BEQ    LFA0D   
       STA    $BF     
       BNE    LFA0D   
LF9F0: LDX    #$0A    
       STX    $BF     
       STX    $BE     
       LDY    #$04    
LF9F8: INX            
       STX    $BE,Y   
       DEY            
       BPL    LF9F8   
       LDA    $BA     
       BMI    LFA0D   
       JSR    LFB5E   
       LDA    $BA     
       STA    $C1     
       LDA    $BB     
       STA    $BE     
LFA0D: LDY    #$00    
       LDX    #$00    
LFA11: LDA    $BE,X   
       STA    $B4     
       ASL            
       ASL            
       ASL            
       SEC            
       SBC    $B4     
       CLC            
       ADC    #$80    
       STA.wy $00C3,Y 
       LDA    #$FF    
       STA.wy $00C4,Y 
       INY            
       INY            
       INX            
       CPX    #$05    
       BNE    LFA11   
       RTS            

LFA2E: LDA    $82     
       BNE    LFA36   
       LDA    #$FF    
       STA    $92     
LFA36: LDA    $CD     
       BNE    LFA47   
       INC    $81     
       LDA    $92     
       BNE    LFA47   
       DEC    $82     
       BPL    LFA47   
       JSR    LFA73   
LFA47: LDA    SWCHB   
       LDY    #$F7    
       LDX    #$0F    
       AND    #$08    
       BEQ    LFA54   
       LDX    #$FF    
LFA54: LDA    $92     
       BMI    LFA5A   
       LDY    #$FF    
LFA5A: AND    $81     
       STA    $B5     
       STX    $B6     
       STY    $B7     
       LDX    #$06    
LFA64: LDA    LFBC9,X 
       EOR    $B5     
       AND    $B6     
       AND    $B7     
       STA    $F0,X   
       DEX            
       BPL    LFA64   
       RTS            

LFA73: LDA    #$FF    
       STA    $92     
       RTS            

LFA78: TXA            
       TAY            
       LDA    ($A8),Y 
       LDY    $DB     
       CPX    $D5     
       STX    $B7     
       LDX    $B4     
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       STA    ENAM1   
       LDA    #$00    
       STA    PF0     
       LDA    ($8E),Y 
       BCS    LFA9C   
       CMP    #$FF    
       BEQ    LFA9C   
       DEC    $DB     
       STA    GRP0    
LFA9C: LDX    $B7     
       LDY    $B7     
       LDA    #$20    
       STA    PF0     
       LDA    ($A6),Y 
       ASL            
       CPX    $D6     
       DEX            
       LDY    $DC     
       STA    WSYNC   
       STA    HMOVE   
       STA    ENABL   
       BCS    LFABE   
       LDA    ($90),Y 
       CMP    #$FF    
       BEQ    LFABE   
       DEC    $DC     
       STA    GRP1    
LFABE: RTS            

LFABF: TXA            
       TAY            
       LDA    ($A8),Y 
       LDY    #$10    
       STY    HMM0    
       LDY    $DC     
       CPX    $D6     
       STX    $B7     
       STA    WSYNC   
       STA    HMOVE   
       LDX    $F5     
       STX    COLUBK  
       STA    ENAM1   
       LDA    ($90),Y 
       BCS    LFAE3   
       CMP    #$FF    
       BEQ    LFAE3   
       DEC    $DC     
       STA    GRP1    
LFAE3: LDX    $B7     
       LDY    $B7     
       LDA    ($AA),Y 
       LSR            
       STA    $B3     
       LDA    ($A6),Y 
       ASL            
       ORA    $B3     
       LDY    #$FF    
       STY    HMM0    
       CPX    $D5     
       LDY    $DB     
       DEX            
       STA    WSYNC   
       STA    HMOVE   
       STA    ENABL   
       BCS    LFB0C   
       LDA    ($8E),Y 
       CMP    #$FF    
       BEQ    LFB0C   
       DEC    $DB     
       STA    GRP0    
LFB0C: RTS            

LFB0D: LDA    $CD     
       AND    $96,X   
       RTS            

LFB12: LDA    #$00    
       STA    $B3     
       LDA    $D4     
       SEC            
       SBC    $D5,X   
       CLC            
       ADC    #$16    
       BMI    LFB27   
       CMP    #$28    
       BCS    LFB27   
       JMP    LFB29   
LFB27: INC    $B3     
LFB29: LDA    $B3     
       RTS            

LFB2C: STY    $B6     
       LDA    $B8     
       AND    #$07    
       TAY            
       LDA    LFF4C,Y 
       TAY            
       STY    $AC     
       LDY    $B6     
       LDA    $B8     
       AND    #$1F    
       STA    $B3     
       LDA    $9A     
       CLC            
       ADC    $B3     
       STA    $9A     
       RTS            

LFB49: LDA    #$78    
       STA    $82     
       LDA    #$00    
       STA    $92     
       RTS            

LFB52: LDA    $B8     
       ASL            
       EOR    $B8     
       ASL            
       ASL            
       ROL    $B8     
       LDA    $B8     
       RTS            

LFB5E: LDA    #$0A    
       STA    $BF     
       STA    $C0     
       STA    $C2     
       RTS            

LFB67: LDA    #$00    
       STA    $E7     
       STA    $E6     
       STA    $B0     
       STA    $ED     
       STA    $B1     
       STA    $9C     
       STA    $99     
       STA    $93     
       STA    $BC     
       STA    $BD     
       STA    $84     
       STA    $85     
       STA    $EE     
       TAY            
       LDA    #$58    
       STA    $E4     
       LDA    $B8     
       STA    $E8     
       AND    #$01    
       STA    $B9     
       LDX    #$0D    
LFB92: STY    $85,X   
       DEX            
       BPL    LFB92   
       JSR    LFB5E   
LFB9A: LDA    #$3A    
       STA    $D5     
       STA    $D6     
       STA    $D7     
       STA    $D8     
       LDA    #$1E    
       STA    $CE     
       LDA    #$87    
       STA    $CF     
       LDA    #$00    
       STA    $94     
       LDA    #$FF    
       STA    $95     
LFBB4: LDX    $B9     
       LDA    $E8     
       AND    #$07    
       CLC            
       ADC    #$2E    
       STA    $A2     
       LDA    LFF41,X 
       STA    $D2     
       LDA    #$00    
       STA    $D3     
       RTS            

LFBC9: .byte $00,$44,$B6,$25,$28,$1E,$89,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$02,$03,$0F,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LFCBD: .byte $00,$10,$20,$30,$40,$50,$60,$70,$80,$00,$FF,$00,$3C,$30,$18,$0C
       .byte $1C,$3C,$74,$E4,$F4,$7C,$3E,$06,$00,$00,$FF,$00,$98,$50,$2C,$14
       .byte $14,$28,$38,$38,$38,$FC,$7A,$1A,$18,$00,$00,$FF,$00,$EE,$48,$28
       .byte $18,$39,$72,$E4,$E4,$7C,$3E,$06,$00,$00,$00,$FF,$00,$98,$50,$2C
       .byte $14,$14,$28,$B8,$B8,$B8,$F8,$78,$18,$18,$00,$FF,$00,$4C,$28,$16
       .byte $0A,$0A,$14,$9C,$9C,$9C,$7C,$3C,$18,$18,$00,$FF,$00,$98,$50,$2C
       .byte $14,$14,$28,$B8,$B8,$B8,$F8,$78,$18,$18,$00,$FF,$00,$98,$50,$2C
       .byte $14,$14,$28,$78,$7C,$78,$78,$78,$18,$18,$00,$FF,$00,$98,$50,$2C
       .byte $14,$14,$28,$38,$3A,$7C,$78,$78,$18,$18,$00,$FF,$00,$B0,$A0,$90
       .byte $50,$50,$70,$70,$78,$74,$7C,$F4,$F0,$30,$30,$FF,$00,$B0,$A0,$90
       .byte $50,$50,$70,$70,$70,$78,$7C,$F6,$F3,$30,$30
LFD68: .byte $00,$FF,$00,$26,$14,$0B,$05,$05,$0A,$0E,$0E,$4E,$BF,$9E,$06,$06
       .byte $00,$FF,$00,$4C,$28,$16,$0A,$0A,$14,$1C,$1C,$1C,$FE,$BD,$8C,$0C
       .byte $00,$FF,$00,$98,$50,$2C,$14,$14,$28,$38,$38,$38,$FC,$7A,$19,$18
       .byte $00,$FF,$00,$98,$50,$2C,$14,$14,$28,$78,$78,$78,$7C,$3A,$19,$1C
       .byte $00,$FF,$00,$98,$50,$2C,$14,$14,$28,$38,$38,$78,$7C,$3A,$1D,$1A
       .byte $00,$FF,$00,$B0,$A0,$90,$50,$50,$70,$70,$70,$70,$70,$79,$7E,$32
       .byte $30,$FF,$00,$B0,$A0,$90,$50,$50,$70,$70,$70,$70,$70,$78,$74,$32
       .byte $30,$FF,$00,$B0,$A0,$90,$50,$50,$70,$70,$74,$74,$74,$78,$70,$30
       .byte $30,$00,$FF,$00,$40,$80,$40,$28,$24,$28,$30,$30,$3C,$78,$38,$0C
       .byte $0C,$00,$FF,$00,$80,$80,$44,$24,$12,$19,$1F,$0C,$1E,$2D,$1C,$06
       .byte $06,$00,$FF,$00,$83,$F2,$12,$12,$16,$18,$18,$3E,$79,$18,$0C,$0C
       .byte $00,$00,$FF,$00,$18,$10,$08,$B4,$52,$14,$18,$18,$18,$3C,$38,$18
       .byte $0C,$0C,$FF,$00,$C0,$80,$40,$A0,$70,$30,$30,$30,$B8,$B4,$70,$18
       .byte $18,$00,$FF,$00,$80,$C0,$20,$14,$14,$12,$12,$1E,$18,$9A,$9D,$78
       .byte $0C,$0C,$FF,$00,$02,$01,$81,$F1,$12,$1C,$18,$18,$38,$5B,$7C,$38
       .byte $0C,$0C,$FF,$00,$60,$40,$20,$90,$F0,$30,$30,$30,$70,$78,$70,$30
       .byte $18,$18
LFE6A: .byte $01,$01,$02,$02,$03,$04,$03,$03,$02,$02,$01,$02,$03,$02,$01,$01
LFE7A: .byte $00,$01,$31,$31,$31,$61,$79
LFE81: .byte $00,$03,$EF,$0A,$EB,$06,$E9,$04,$E7,$08,$E6,$05,$E5,$07,$E5,$06
       .byte $E4,$07,$E4,$06,$E4,$07,$E3,$06,$E3,$07,$E3,$06,$E3,$07,$E2,$06
       .byte $E2,$07,$E2,$06,$E2,$06,$E1,$06,$E1,$06,$E1,$06,$E1,$06,$E1,$FF
       .byte $FF,$0C,$FE,$07,$FE,$0C,$FE,$04,$E7,$08,$E6,$05,$E5,$07,$E5,$06
       .byte $E4,$07,$E4,$06,$E4,$07,$E3,$06,$E3,$07,$E3,$06,$E3,$07,$E2,$06
       .byte $E2,$07,$E2,$06,$E2,$06,$E1,$06,$E1,$06,$E1,$06,$E1,$06,$E1,$FF
       .byte $FF,$1E,$1B,$1E,$1B,$1E,$1B,$1E,$1B,$1E,$1B,$1E,$1B,$1E,$1B,$1E
       .byte $1B,$1E,$1B,$1E,$1B,$1E,$1B,$FF,$FF,$0A,$4F,$0A,$4F,$0A,$4B,$0A
       .byte $48,$0A,$47,$0A,$47,$0A,$46,$0A,$45,$0A,$45,$0A,$46,$0A,$47,$0A
       .byte $47,$0A,$47,$0A,$46,$0A,$45,$0A,$45,$0A,$46,$0A,$46,$0A,$45,$0A
       .byte $44,$0A,$43,$0A,$42,$0A,$41,$FF,$FF
LFF2A: .byte $03,$FD
LFF2C: .byte $01,$FE
LFF2E: .byte $91,$6C
LFF30: .byte $00,$FF
LFF32: .byte $32,$D0
LFF34: .byte $01,$FE
LFF36: .byte $00,$DC
LFF38: .byte $01,$FE
LFF3A: .byte $96,$3C
LFF3C: .byte $00,$00,$01
LFF3F: .byte $0B,$93
LFF41: .byte $10,$92
LFF43: .byte $00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80
LFF4C: .byte $FF,$FF,$00,$01,$02,$01,$00,$FF,$00
LFF55: .byte $EE,$00,$18,$3C,$7E,$7E,$FF,$FF,$FF,$FF,$7E,$7E,$3C,$18,$EE,$00
       .byte $F8,$F8,$F0,$F0,$E0,$C0,$80
LFF6C: .byte $46,$8E
LFF6E: .byte $4E,$96
LFF70: .byte $09,$56
LFF72: .byte $08,$55
LFF74: .byte $80,$40
LFF76: .byte $F0,$0F
LFF78: .byte $80,$08
LFF7A: .byte $40,$04
LFF7C: .byte $20,$02
LFF7E: .byte $10,$01,$7E,$72,$72,$72,$72,$72,$7E,$1C,$1C,$1C,$1C,$1C,$1C,$3C
       .byte $7E,$40,$7E,$0E,$0E,$4E,$7E,$7E,$4E,$0E,$1C,$0E,$4E,$7E,$1C,$1C
       .byte $7E,$5C,$5C,$5C,$7C,$7E,$4E,$0E,$7E,$40,$4E,$7E,$7E,$4E,$4E,$7E
       .byte $40,$4E,$7E,$0E,$0E,$0E,$0E,$0E,$4E,$7E,$7E,$4E,$4E,$7E,$72,$72
       .byte $7E,$7E,$72,$02,$7E,$72,$72,$7E,$00,$00,$00,$00,$00,$00,$00,$79
       .byte $85,$B5,$A5,$B5,$85,$79,$17,$15,$15,$77,$55,$55,$77,$71,$41,$41
       .byte $71,$11,$51,$70,$49,$49,$49,$C9,$49,$49,$BE,$55,$55,$55,$D9,$55
       .byte $55,$99,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$F0
       .byte $00,$F0
