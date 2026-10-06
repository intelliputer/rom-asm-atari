; Disassembly of roms/Parachute.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Parachute.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LFE95   =   $FE95

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$0C    
       STA    $DA     
       LDA    #$7A    
       STA    $D6     
       LDA    #$25    
       STA    $DC     
       JSR    LFF5C   
LF01A: JSR    LFE47   
       LDX    #$04    
LF01F: LDA    $B3,X   
       AND    #$07    
       STA    $B8     
       LDA    $AE,X   
       JSR    LFF33   
       ORA    $B8     
       STA    $8F,X   
       DEY            
       DEY            
       DEY            
       TYA            
       CMP    #$06    
       BCC    LF03B   
       SEC            
       SBC    #$06    
       EOR    #$FF    
LF03B: STA    $8A,X   
       DEX            
       BPL    LF01F   
       LDA    $BC     
       JSR    LFF33   
       LDX    #$01    
       JSR    LFF52   
       LDA    #$0F    
       STA    COLUP1  
       LDA    #$0F    
       STA    $BA     
       LDA    $D5     
       JSR    LFF33   
       LDX    #$04    
       JSR    LFF52   
       LDY    $BD     
       CPY    #$19    
       BCC    LF082   
       LDA    $C6     
       BPL    LF06A   
       LDY    #$00    
       BEQ    LF072   
LF06A: LDA    $80     
       LSR            
       LSR            
       LSR            
       AND    #$01    
       TAY            
LF072: LDA    LFBE4,Y 
       STA    $8B     
       LDA    #$FB    
       STA    $8C     
       LDA    #$80    
       LDX    #$03    
       JMP    LF086   
LF082: LDA    #$C0    
       LDX    #$00    
LF086: STX    $94     
       STA    $BF     
       LDA    $8F,X   
       STA    HMP0    
       STA    NUSIZ0  
       LDA    $AE,X   
       JSR    LFF33   
       STA    WSYNC   
LF097: DEY            
       BPL    LF097   
       STA.w  $0010   
       LDA    $A4,X   
       STA    $88     
       LDA    $9F,X   
       STA    $85     
       LDA    $9A,X   
       STA    $83     
       LDY    #$00    
       LDA    $A9,X   
       STA    $89     
       CMP    #$E6    
       BCC    LF0C0   
LF0B3: INY            
       INC    $89     
       BNE    LF0B3   
       STY    $81     
       LDA    $A4     
       SBC    $81     
       STA    $88     
LF0C0: LDA    INTIM   
       BNE    LF0C0   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDX    #$00    
       STX    NUSIZ1  
       STX    $82     
       LDA    $BE     
       STA    WSYNC   
       STA    COLUBK  
       STA    CXCLR   
       STA    HMCLR   
LF0DB: CPX    $BB     
       BCC    LF0EB   
       LDY    $BA     
       BMI    LF0EB   
       LDA    LFB1A,Y 
       STA    $82     
       DEY            
       STY    $BA     
LF0EB: CPX    $89     
       BCC    LF10E   
       LDY    $88     
       BMI    LF134   
       DEC    $88     
       STA    LF000,X 
       LDA    ($85),Y 
       STA    COLUP0  
       LDA    ($83),Y 
LF0FE: STA    WSYNC   
       STA    GRP0    
       LDA    $82     
       STA    GRP1    
LF106: INX            
       CPX    $BF     
       BNE    LF0DB   
LF10B: JMP    LF222   
LF10E: LDA    #$00    
       BEQ    LF0FE   
LF112: LDA    #$FF    
       STA    $88     
       LDA    #$05    
       STA    $94     
       LDA    #$00    
       CPX    $BB     
       BCC    LF12A   
       LDY    $BA     
       BMI    LF12A   
       LDA    LFB1A,Y 
       DEY            
       STY    $BA     
LF12A: STA    WSYNC   
       STA    GRP1    
       LDA    #$00    
       STA    $82     
       BEQ    LF106   
LF134: STA    WSYNC   
       LDA    $82     
       STA    GRP1    
       INX            
       CPX    $BF     
       BEQ    LF10B   
       INC    $94     
       LDY    $94     
       CPY    #$05    
       BCS    LF112   
       LDA.wy $009A,Y 
       STA    $83     
       LDA.wy $008A,Y 
       STA    $81     
       LDA.wy $008F,Y 
       STA    $B8     
       LDA    #$00    
       CPX    $BB     
       BCC    LF166   
       LDY    $BA     
       BMI    LF166   
       LDA    LFB1A,Y 
       DEY            
       STY    $BA     
LF166: STA    WSYNC   
       STA    GRP1    
       INX            
       CPX    $BF     
       BEQ    LF18C   
       LDY    $81     
       BMI    LF19D   
LF173: DEY            
       BPL    LF173   
       STA.w  $0010   
       LDA    #$00    
       CPX    $BB     
       BCC    LF189   
       LDY    $BA     
       BMI    LF189   
       LDA    LFB1A,Y 
       DEY            
       STY    $BA     
LF189: JMP    LF1B7   
LF18C: JMP    LF222   
LF18F: STA    LF000,X 
LF192: ASL    LF000,X 
       NOP            
       LDA    #$00    
       LDY    $81     
       JMP    LF1B2   
LF19D: LDA    #$00    
       CPX    $BB     
       BCC    LF18F   
       LDY    $BA     
       BMI    LF192   
       ASL    LF000   
       LDA    LFB1A,Y 
       DEY            
       STY    $BA     
       LDY    $81     
LF1B2: INY            
       BMI    LF1B2   
       STA    RESP0   
LF1B7: STA    WSYNC   
       STA    GRP1    
       INX            
       CPX    $BF     
       BEQ    LF1F2   
       LDY    $94     
       LDA.wy $00A4,Y 
       STA    $88     
       LDA.wy $009F,Y 
       STA    $85     
       LDA.wy $00A9,Y 
       STA    $89     
       LDA    $B8     
       STA    HMP0    
       STA    NUSIZ0  
       LDA    #$00    
       CPX    $BB     
       BCC    LF1E7   
       LDY    $BA     
       BMI    LF1E7   
       LDA    LFB1A,Y 
       DEY            
       STY    $BA     
LF1E7: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       INX            
       CPX    $BF     
       BNE    LF1F5   
LF1F2: JMP    LF222   
LF1F5: LDA    #$00    
       CPX    $BB     
       BCC    LF1FF   
       LDY    $BA     
       BPL    LF205   
LF1FF: LDA    #$00    
       STA    $82     
       BEQ    LF20B   
LF205: LDA    LFB1A,Y 
       DEY            
       STY    $BA     
LF20B: LDY    #$02    
LF20D: DEY            
       BPL    LF20D   
       STA    WSYNC   
       STA    GRP1    
       LDA    #$00    
       STA    $82     
       STA    HMCLR   
       INX            
       CPX    $BF     
       BEQ    LF222   
       JMP    LF0DB   
LF222: LDA    $BD     
       CMP    #$19    
       BCS    LF22B   
       JMP    LF343   
LF22B: LDA    #$01    
       STA    CTRLPF  
       LDA    #$00    
       STA    GRP0    
       CPX    $BB     
       BCC    LF240   
       LDY    $BA     
       BMI    LF240   
       LDA    LFB1A,Y 
       DEC    $BA     
LF240: STA    WSYNC   
       STA    GRP1    
       LDA    #$28    
       STA    $81     
       INX            
       LDY    $8A     
       BMI    LF26F   
LF24D: DEY            
       BPL    LF24D   
       STA.w  $0010   
       LDA    #$00    
       CPX    $BB     
       BCC    LF262   
       LDY    $BA     
       BMI    LF262   
       LDA    LFB1A,Y 
       DEC    $BA     
LF262: JMP    LF288   
LF265: STA    LF000,X 
LF268: LDA    $81     
       LDA    #$00    
       JMP    LF281   
LF26F: ASL    LF000   
       LDA    #$00    
       CPX    $BB     
       BCC    LF265   
       LDY    $BA     
       BMI    LF268   
       LDA    LFB1A,Y 
       DEC    $BA     
LF281: LDY    $8A     
LF283: INY            
       BMI    LF283   
       STA    RESP0   
LF288: STA    WSYNC   
       STA    GRP1    
       LDY    $81     
       LDA    LFBFD,Y 
       STA    PF0     
       LDA    LFC51,Y 
       STA    COLUPF  
       LDA    LFC27,Y 
       STA    PF1     
       LDA    $C6     
       STA    REFP0   
       LDA    $8F     
       STA    HMP0    
       STA    NUSIZ0  
       INX            
       DEC    $81     
       LDA    #$00    
       CPX    $BB     
       BCC    LF2B9   
       LDY    $BA     
       BMI    LF2B9   
       LDA    LFB1A,Y 
       DEC    $BA     
LF2B9: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDY    $81     
       LDA    LFBFD,Y 
       STA    PF0     
       LDA    LFC27,Y 
       STA    PF1     
       INX            
       DEC    $81     
       LDY    #$02    
LF2D0: DEY            
       BPL    LF2D0   
       LDA    #$00    
       CPX    $BB     
       BCC    LF2E2   
       LDY    $BA     
       BMI    LF2E2   
       LDA    LFB1A,Y 
       DEC    $BA     
LF2E2: STA    WSYNC   
       STA    GRP1    
       LDY    $81     
       LDA    LFBFD,Y 
       STA    PF0     
       LDA    LFC51,Y 
       STA    COLUPF  
       LDA    LFC27,Y 
       STA    PF1     
       LDA    #$16    
       STA    $B8     
       INX            
       LDA    #$00    
       CPX    $BB     
       BCC    LF30B   
       LDY    $BA     
       BMI    LF30B   
       LDA    LFB1A,Y 
       DEC    $BA     
LF30B: STA    HMCLR   
       DEC    $81     
       BPL    LF2E2   
LF311: STA    WSYNC   
       STA    GRP1    
       LDY    $B8     
       LDA    ($8B),Y 
       STA    GRP0    
       LDA    LFBE6,Y 
       STA    COLUP0  
       LDA    LFB66,Y 
       STA    PF2     
       LDA    LFB7E,Y 
       STA    COLUPF  
       DEC    $B8     
       INX            
       CPX    #$C0    
       BEQ    LF343   
       LDA    #$00    
       CPX    $BB     
       BCC    LF311   
       LDY    $BA     
       BMI    LF311   
       LDA    LFB1A,Y 
       DEC    $BA     
       JMP    LF311   
LF343: LDA    #$0D    
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$00    
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    COLUPF  
       STA    PF0     
       STA    PF1     
       JSR    LFF50   
       STA    RESP0   
       STA    RESP1   
       STA    ENABL   
       LDA    #$10    
       STA    HMP0    
       STA    REFP0   
       LDA    #$20    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $81     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    GRP0    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$29    
       STA    COLUP0  
       STA    COLUP1  
LF386: LDY    $81     
       LDA    ($C7),Y 
       STA    $B8     
       STA    WSYNC   
       LDA    ($C9),Y 
       TAX            
       STA    LF000,X 
       LDA    #$00    
       STA    GRP0    
       LDA    ($CF),Y 
       STA    GRP1    
       LDA    ($CD),Y 
       STA    GRP0    
       LDA    ($CB),Y 
       LDY    $B8     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $81     
       BPL    LF386   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP1    
       STA    GRP0    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$07    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP1    
       LDY    #$08    
       STY    $81     
       LDA    #$4A    
       STA    COLUPF  
       LDA    #$11    
       STA    CTRLPF  
LF3D4: LDY    $81     
       LDA    LFCF1,Y 
       STA    $B8     
       STA    WSYNC   
       STA    ENABL   
       LDA    LFCFA,Y 
       TAX            
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    LFD27,Y 
       STA.w  $001C   
       LDA    ($D3),Y 
       STA    GRP0    
       LDA    LFD03,Y 
       LDY    $B8     
       STA.w  $001C   
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $81     
       BPL    LF3D4   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    ENABL   
       NOP            
       LDA    #$21    
       STA    TIM64T  
       LDA    $D9     
       EOR    #$01    
       BNE    LF425   
       LDA    REFP1   
       BMI    LF43C   
       LDA    #$80    
       STA    $D9     
LF425: LDA    SWCHB   
       LSR            
       BCS    LF45B   
       LDA    #$A7    
       STA    $D6     
       LDA    #$00    
       STA    $D1     
       STA    $D2     
       STA    $DB     
       STA    $DE     
       JSR    LFECA   
LF43C: LDA    #$01    
       STA    $D9     
       LDA    $D8     
       STA    $BD     
       LDA    #$00    
       STA    $DD     
       STA    $E3     
       STA    $E4     
       STA    $E5     
       STA    AUDV0   
       STA    AUDV1   
       JSR    LFF62   
       JSR    LFE00   
       JMP    LF7D4   
LF45B: LSR            
       BCC    LF460   
       BCS    LF491   
LF460: LDA    #$00    
       STA    $D9     
       LDA    $80     
       AND    #$07    
       BNE    LF491   
       CLC            
       LDA    $D8     
       ADC    #$05    
       CMP    #$0F    
       BCC    LF475   
       LDA    #$04    
LF475: STA    $D8     
       LDX    #$25    
       LDY    #$0C    
       CMP    #$05    
       BCC    LF48B   
       LDX    #$1B    
       LDY    #$15    
       CMP    #$0A    
       BCC    LF48B   
       LDX    #$17    
       LDY    #$1E    
LF48B: STY    $DA     
       STY    $D3     
       STX    $DC     
LF491: NOP            
LF492: LDA    $D9     
       BMI    LF4E7   
       EOR    #$02    
       BEQ    LF4B4   
       LDY    #$04    
       LDX    #$09    
LF49E: LDA    #$FD    
       STA    $C7,X   
       DEX            
       LDA    LF4DE,Y 
       STA    $C7,X   
       DEX            
       DEY            
       BPL    LF49E   
       LDA    #$7A    
       STA    $D6     
       LDA    #$FC    
       STA    $D7     
LF4B4: LDA    $E3     
       BNE    LF4D8   
       STA    $DF     
       STA    $E0     
       LDA    #$1C    
       STA    $E1     
       LDA    #$1B    
       STA    $E2     
       LDA    $80     
       AND    #$03    
       TAY            
       LDA    LF97C,Y 
       STA    AUDV0   
       STA    AUDV1   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0   
       STA    AUDC1   
LF4D8: JSR    LFF9A   
       JMP    LF637   
LF4DE: .byte $5E,$56,$4E,$46,$3E
LF4E3: .byte $00,$05,$0A,$0F
LF4E7: LDA    COLUP1  
       BPL    LF560   
       LDA    $BD     
       CMP    #$14    
       BCS    LF51D   
       LDX    #$04    
LF4F3: LDA    $95,X   
       BNE    LF516   
LF4F7: SEC            
       LDA    $A9,X   
       ADC    $A4,X   
       STA    $81     
       LDY    #$03    
LF500: CLC            
       LDA    $BB     
       ADC    LF4E3,Y 
       CMP    $A9,X   
       BCC    LF511   
       CMP    $81     
       BCS    LF511   
LF50E: JMP    LF5DA   
LF511: DEY            
       BPL    LF500   
       BMI    LF51A   
LF516: CMP    #$02    
       BEQ    LF4F7   
LF51A: DEX            
       BPL    LF4F3   
LF51D: LDY    $BB     
       CPY    #$0A    
       BCC    LF50E   
       CPY    #$B0    
       BCS    LF50E   
       LDA    $E3     
       BNE    LF535   
       STA    $DF     
       STA    $E0     
       STA    $E2     
       LDA    #$01    
       STA    $E1     
LF535: JSR    LFF9A   
       LDA    $E3     
       BEQ    LF548   
       LDA    $BE     
       ADC    #$4F    
       STA    $BE     
       JSR    LFECA   
       JMP    LF87A   
LF548: LDA    $D6     
       SEC            
       SBC    #$09    
       STA    $D6     
       CMP    #$83    
       BNE    LF55A   
       LDA    #$02    
       STA    $D9     
       JMP    LF492   
LF55A: JSR    LFECA   
       JMP    LF43C   
LF560: LDA    RSYNC   
       BPL    LF5DA   
       LDA    $BC     
       CMP    #$30    
       BCC    LF51D   
       CMP    #$68    
       BCS    LF51D   
       LDA    $BB     
       LDY    #$C8    
       CMP    #$A5    
       BCC    LF584   
       LDY    #$50    
       CMP    #$A9    
       BCC    LF584   
       LDY    #$3C    
       CMP    #$AD    
       BCC    LF584   
       LDY    #$28    
LF584: CPY    $DB     
       BNE    LF58E   
       JSR    LF5BA   
       JMP    LF43C   
LF58E: INC    $DB     
       JSR    LF5A9   
       LDA    $E3     
       BNE    LF5A3   
       STA    $DF     
       STA    $E0     
       LDA    #$09    
       STA    $E2     
       LDA    #$0A    
       STA    $E1     
LF5A3: JSR    LFF9A   
       JMP    LF87A   
LF5A9: CLC            
       LDA    $D1     
       ADC    #$05    
       STA    $D1     
       LDA    $D2     
       ADC    #$00    
       STA    $D2     
       JSR    LFECA   
       RTS            

LF5BA: LDX    $DE     
       LDA    $D2     
       CMP    LFD30,X 
       BCC    LF5D5   
       BNE    LF5CC   
       LDA    $D1     
       CMP    LFD37,X 
       BCC    LF5D5   
LF5CC: INC    $DE     
       LDA    $D6     
       CLC            
       ADC    #$09    
       STA    $D6     
LF5D5: LDA    #$00    
       STA    $DB     
       RTS            

LF5DA: LDY    $BB     
       CPY    $DD     
       BCC    LF5F4   
       LDA    $D5     
       CMP    #$44    
       BCC    LF5EE   
       DEC    $D5     
       JSR    LF5A9   
       JSR    LF5BA   
LF5EE: LDA    $DD     
       ADC    $DC     
       STA    $DD     
LF5F4: LDA    $BD     
       CMP    #$0F    
       BCS    LF614   
       LDX    #$00    
       LDA    $E4     
       BNE    LF60E   
       STA    $E6     
       LDA    #$12    
       STA    $E8     
       LDA    #$7A    
       STA    AUDV0   
       LDA    #$07    
       STA    AUDC0   
LF60E: JSR    LF89A   
       JMP    LF618   
LF614: LDA    #$00    
       STA    AUDV0   
LF618: LDX    #$01    
       LDA    $E5     
       BNE    LF634   
       STA    $E7     
       LDA    #$1B    
       STA    $E9     
       LDA    $80     
       AND    #$03    
       TAY            
       LDA    LF97C,Y 
       STA    AUDV1   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC1   
LF634: JSR    LF89A   
LF637: NOP            
       LDA    $BD     
       CMP    #$19    
       BCS    LF644   
       LDX    $BB     
       CPX    #$C0    
       BCS    LF647   
LF644: JMP    LF6B6   
LF647: INC    $BD     
       LDX    #$00    
       STX    $DD     
       STX    $BB     
       LDX    #$04    
       LDA    $BD     
       CMP    #$05    
       BCC    LF6A5   
       LDX    #$09    
       CMP    #$0A    
       BCC    LF6A5   
       LDX    #$0E    
       CMP    #$0F    
       BCC    LF6A5   
       LDX    #$13    
       CMP    #$14    
       BCC    LF6A5   
       LDX    #$18    
       CMP    #$19    
       BCC    LF6A5   
       LDA    #$00    
       STA    $A9     
       STA    $AA     
       STA    $AB     
       LDA    #$28    
       STA    $AC     
       LDA    #$6E    
       STA    $AD     
       LDA    #$50    
       STA    $AE     
       STA    $B1     
       STA    $B2     
       LDA    #$0A    
       STA    $C0     
       LDA    #$50    
       STA    $C1     
       LDA    #$30    
       STA    $C2     
       LDA    #$70    
       STA    $C4     
       STA    $C3     
       LDX    #$04    
       LDY    #$04    
LF69D: STY    $95,X   
       DEY            
       DEX            
       BPL    LF69D   
       LDX    #$1D    
LF6A5: STX    $BD     
       STX    $81     
       LDA    $80     
       AND    #$03    
       TAY            
       LDA    LF6D7,Y 
       STA    $BE     
       JSR    LFE00   
LF6B6: LDA    $D2     
       CMP    #$80    
       BCS    LF6CC   
       LDA    $80     
       LDX    $BD     
       CPX    #$05    
       BCC    LF6DB   
       CPX    #$0A    
       BCC    LF6E2   
       AND    #$01    
       BNE    LF6DF   
LF6CC: INC    $BB     
       LDA    $BD     
       CMP    #$19    
       BCS    LF6E8   
       JMP    LF775   
LF6D7: .byte $A9,$AA,$9A,$BB
LF6DB: AND    #$07    
       BEQ    LF6CC   
LF6DF: JMP    LF7D4   
LF6E2: AND    #$03    
       BEQ    LF6CC   
       BNE    LF6DF   
LF6E8: LDA    $89     
       ADC    $C5     
       AND    #$07    
       TAX            
       LDA    $AC     
       CMP    $C0     
       BCS    LF6FA   
       INC    $AC     
       JMP    LF706   
LF6FA: BEQ    LF701   
       DEC    $AC     
       JMP    LF706   
LF701: LDA    LFB8E,X 
       STA    $C0     
LF706: LDA    $AD     
       CMP    $C1     
       BCS    LF711   
       INC    $AD     
       JMP    LF71D   
LF711: BEQ    LF718   
       DEC    $AD     
       JMP    LF71D   
LF718: LDA    LFB96,X 
       STA    $C1     
LF71D: LDA    $B1     
       CMP    $C2     
       BCS    LF728   
       INC    $B1     
       JMP    LF734   
LF728: BEQ    LF72F   
       DEC    $B1     
       JMP    LF734   
LF72F: LDA    LFB9E,X 
       STA    $C2     
LF734: LDA    $B2     
       CMP    $C3     
       BCS    LF73F   
       INC    $B2     
       JMP    LF74B   
LF73F: BEQ    LF746   
       DEC    $B2     
       JMP    LF74B   
LF746: LDA    LFBA6,X 
       STA    $C3     
LF74B: LDA    $AE     
       CMP    $C4     
       BCS    LF75A   
       INC    $AE     
       LDA    #$08    
       STA    $C6     
       JMP    LF770   
LF75A: BEQ    LF765   
       DEC    $AE     
       LDA    #$00    
       STA    $C6     
       JMP    LF770   
LF765: LDA    LFBAE,X 
       STA    $C4     
       LDA    $C6     
       ORA    #$80    
       STA    $C6     
LF770: INC    $C5     
       JMP    LF7A8   
LF775: LDX    #$04    
LF777: LDA    $95,X   
       AND    #$01    
       BEQ    LF78B   
       LDY    $AE,X   
       INY            
       CPY    #$A1    
       BCS    LF794   
LF784: STY    $AE,X   
       DEX            
       BPL    LF777   
       BMI    LF798   
LF78B: LDY    $AE,X   
       DEY            
       BNE    LF784   
       LDY    #$A0    
       BNE    LF784   
LF794: LDY    #$01    
       BNE    LF784   
LF798: LDA    $D2     
       CMP    #$04    
       BCC    LF7A8   
       LDX    #$04    
LF7A0: LDY    $A9,X   
       DEY            
       STY    $A9,X   
       DEX            
       BPL    LF7A0   
LF7A8: LDA    SWCHA   
       ASL            
       BCC    LF7B4   
       ASL            
       BCC    LF7C4   
       JMP    LF7D4   
LF7B4: LDY    $BC     
       INY            
       CPY    #$95    
       BCS    LF7C0   
LF7BB: STY    $BC     
       JMP    LF7D4   
LF7C0: LDY    #$95    
       BNE    LF7BB   
LF7C4: LDY    $BC     
       DEY            
       CPY    #$01    
       BCC    LF7D0   
LF7CB: STY    $BC     
       JMP    LF7D4   
LF7D0: LDY    #$01    
       BNE    LF7CB   
LF7D4: LDY    $BD     
       STY    $81     
       LDX    #$04    
LF7DA: LDA    $95,X   
       CMP    #$01    
       BNE    LF7EF   
       LDY    $81     
       CPY    #$04    
       BEQ    LF7EA   
       CPY    #$0E    
       BNE    LF805   
LF7EA: LDA    $80     
       JMP    LF809   
LF7EF: CMP    #$03    
       BNE    LF7FB   
       LDY    $81     
       CPY    #$04    
       BEQ    LF7EA   
       BNE    LF805   
LF7FB: CMP    #$04    
       BNE    LF805   
       LDY    $81     
       CPY    #$0F    
       BCC    LF7EA   
LF805: LDA    $80     
       LSR            
       LSR            
LF809: LSR            
       AND    #$01    
       TAY            
       LDA    LFAAC,Y 
       STA    $B8     
       LDA    $95,X   
       LDY    $BD     
       CPY    #$05    
       BCC    LF834   
       ADC    #$04    
       CPY    #$0A    
       BCC    LF834   
       ADC    #$04    
       CPY    #$0F    
       BCC    LF834   
       ADC    #$04    
       CPY    #$14    
       BCC    LF834   
       ADC    #$04    
       CPY    #$19    
       BCC    LF834   
       ADC    #$04    
LF834: TAY            
       LDA    ($B8),Y 
       STA    $9A,X   
       DEC    $BD     
       DEX            
       BPL    LF7DA   
       LDA    $81     
       STA    $BD     
       LDA    $80     
       LDX    $BD     
       CPX    #$05    
       BCC    LF86E   
       CPX    #$0A    
       BCC    LF874   
       AND    #$03    
       BNE    LF866   
LF852: LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       BCC    LF869   
       ASL            
       BCS    LF866   
       LDY    $BB     
       DEY            
       BNE    LF864   
       LDY    #$00    
LF864: STY    $BB     
LF866: JMP    LF87A   
LF869: INC    $BB     
       JMP    LF87A   
LF86E: AND    #$0F    
       BEQ    LF852   
       BNE    LF866   
LF874: AND    #$07    
       BEQ    LF852   
       BNE    LF866   
LF87A: NOP            
LF87B: LDA    INTIM   
       BNE    LF87B   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $80     
       LDA    #$39    
       STA    TIM64T  
       JMP    LF01A   
LF89A: LDA    $E6,X   
       BEQ    LF8A3   
       DEC    $E6,X   
       BMI    LF8A3   
       RTS            

LF8A3: LDY    $E8,X   
       LDA    LF908,Y 
       STA    $E4,X   
       BNE    LF8B1   
       DEC    $E8,X   
       JMP    LF8BE   
LF8B1: STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF900,Y 
       STA    $E6,X   
LF8BE: INC    $E8,X   
       RTS            

LF8C1: .byte $CE,$4F,$50,$45,$CE,$41,$50,$50,$45,$4E,$C4,$52,$45,$4E,$41,$4D
       .byte $C5,$43,$41,$54,$41,$4C,$4F,$C7,$4D,$4F,$CE,$4E,$4F,$4D,$4F,$CE
       .byte $50,$52,$A3,$49,$4E,$A3,$4D,$41,$58,$46,$49,$4C,$45,$D3,$46,$D0
       .byte $49,$4E,$D4,$42,$53,$41,$56,$C5,$42,$4C,$4F,$41,$C4,$42,$52
LF900: .byte $00,$01,$03,$07,$0F,$1F,$3F,$7F
LF908: .byte $BF,$BF,$BF,$9F,$9F,$7F,$7F,$7F,$00,$77,$6F,$77,$6F,$77,$6F,$77
       .byte $6F,$00,$BD,$BF,$BD,$BF,$BD,$BF,$BD,$BF,$00,$97,$95,$B3,$8E,$8F
       .byte $91,$B3,$BA,$9A,$97,$B5,$91,$93,$95,$B7,$97,$95,$B3,$8E,$8F,$8E
       .byte $AC,$B1,$8E,$8E,$AF,$93,$8F,$8C,$AE,$97,$95,$B3,$8E,$8F,$91,$B3
       .byte $BA,$9A,$97,$B5,$91,$93,$95,$B7,$97,$95,$B3,$8E,$8F,$8E,$AC,$B1
       .byte $8E,$8E,$AF,$93,$8F,$8C,$AE,$97,$95,$00
LF962: .byte $8F,$8F,$8A,$8A,$88,$86,$83,$81,$00,$4F,$4F,$4F,$4F,$4F,$4F,$4F
       .byte $4F,$00,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F
LF97C: .byte $4F,$CF,$1F,$4F,$20,$41,$56,$41,$49,$4C,$41,$42,$4C,$C5,$52,$41
       .byte $4E,$47,$45,$20,$45,$52,$52,$4F,$D2,$57,$52,$49,$54,$45,$20,$50
       .byte $52,$4F,$54,$45,$43,$54,$45,$C4,$45,$4E,$44,$20,$4F,$46,$20,$44
       .byte $41,$54,$C1,$46,$49,$4C,$45,$20,$4E,$4F,$54,$20,$46,$4F,$55,$4E
       .byte $C4,$56,$4F,$4C,$55,$4D,$45,$20,$4D,$49,$53,$4D,$41,$54,$43,$C8
       .byte $49,$2F,$4F,$20,$45,$52,$52,$4F,$D2,$44,$49,$53,$4B,$20,$46,$55
       .byte $4C,$CC,$46,$49,$4C,$45,$20,$4C,$4F,$43,$4B,$45,$C4,$53,$59,$4E
       .byte $54,$41,$58,$20,$45,$52,$52,$4F,$D2,$4E,$4F,$20,$42,$55,$46,$46
       .byte $45,$52,$53,$20,$00,$0F,$08,$1C,$6E,$F6,$FB,$CD,$C1,$3E,$00,$F0
       .byte $20,$71,$BE,$D2,$70,$10,$1E,$00,$00,$40,$30,$78,$FC,$36,$E4,$00
       .byte $18,$18,$18,$18,$24,$3C,$7E,$FF,$FF,$FF,$FF,$7E,$3C,$00,$00,$38
       .byte $7E,$CF,$7C,$38,$00,$00,$00,$00,$00,$18,$24,$C3,$00,$0F,$08,$1D
       .byte $6F,$F7,$FA,$CC,$C0,$3E,$00,$F0,$20,$72,$BE,$D1,$70,$10,$F0,$00
       .byte $C0,$60,$30,$78,$FC,$07,$02,$00,$18,$18,$18,$18,$18,$18,$18,$18
       .byte $18,$18,$18,$18,$18,$00,$00,$1C,$6A,$FF,$E6,$3C,$18,$00,$81,$42
       .byte $24,$18,$00,$00
LFA70: .byte $2A,$00,$2A,$00,$0A,$2A,$1B,$2A,$1B,$0A,$2A,$00,$2A,$13,$0A,$2A
       .byte $13,$2A,$13,$31,$31,$13,$31,$13,$1B,$31,$31,$31,$31,$31,$62,$38
       .byte $62,$38,$42,$62,$53,$62,$53,$42,$62,$38,$62,$4B,$42,$62,$4B,$62
       .byte $4B,$69,$69,$4B,$69,$4B,$53,$69,$69,$69,$69,$69
LFAAC: .byte $70,$8E,$00,$00,$DF,$DF,$DF,$1F,$1F,$DF,$DF,$00,$00,$FF,$FF,$1A
       .byte $1A,$2F,$FF,$FF,$FF,$00,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$00,$2F,$32
       .byte $32,$33,$3F,$38,$49,$49,$2F,$2F,$1F,$1F,$1F,$00,$1F,$1F,$1F,$1F
       .byte $1F,$1F
LFADE: .byte $D7,$AE,$D7,$AE,$B8,$D7,$C9,$D7,$C9,$B8,$C1,$AE,$D7,$C1,$B8,$C1
       .byte $D7,$C1,$C1,$C9,$C9,$C1,$C9,$D7,$C9,$C9,$C9,$C9,$C9,$C9
LFAFC: .byte $2A,$00,$2A,$00,$0A,$D7,$AE,$D7,$AE,$B8,$06,$09,$06,$09,$08,$28
       .byte $46,$64,$82,$A0,$20,$30,$50,$70,$80,$07,$06,$07,$06,$06
LFB1A: .byte $00,$24,$24,$18,$18,$18,$3C,$18,$42,$99,$A5,$FF,$FF,$FF,$7E,$3C
LFB2A: .byte $07,$06,$07,$06,$06,$07,$06,$07,$06,$03,$07,$06,$07,$02,$06,$07
       .byte $06,$07,$06,$04,$04,$06,$06,$03,$02,$00,$00,$00,$06,$06
LFB48: .byte $06,$09,$06,$09,$08,$06,$0D,$06,$0D,$08,$06,$09,$06,$07,$08,$06
       .byte $07,$06,$07,$06,$06,$07,$06,$07,$0D,$00,$00,$00,$06,$06
LFB66: .byte $FE,$FE,$FE,$FE,$F8,$F8,$F8,$F8,$E0,$E0,$E0,$E0,$80,$80,$80,$80
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFB7E: .byte $4A,$4A,$4A,$4A,$0F,$0F,$0F,$0F,$15,$15,$15,$15,$1F,$1F,$1F,$1F
LFB8E: .byte $40,$10,$20,$15,$44,$04,$28,$25
LFB96: .byte $70,$40,$46,$60,$77,$70,$5F,$49
LFB9E: .byte $3F,$00,$10,$60,$8F,$13,$9A,$20
LFBA6: .byte $6D,$03,$2D,$9A,$4F,$29,$19,$55
LFBAE: .byte $4F,$2F,$60,$70,$80,$50,$40,$37,$7E,$7E,$1C,$1C,$1C,$1C,$1C,$7F
       .byte $73,$73,$73,$73,$73,$33,$1D,$7D,$3D,$FD,$7D,$7D,$39,$01,$01,$E7
       .byte $E7,$63,$63,$77,$76,$36,$7F,$5F,$4F,$67,$73,$79,$3F,$1D,$7D,$3D
       .byte $FD,$7D,$7D,$39,$01,$01
LFBE4: .byte $B6,$CD
LFBE6: .byte $00,$15,$15,$15,$15,$38,$38,$38,$38,$39,$36,$48,$37,$37,$19,$19
       .byte $19,$00,$00,$00,$00,$00,$00
LFBFD: .byte $D0,$B0,$D0,$D0,$F0,$E0,$B0,$A0,$B0,$A0,$F0,$E0,$F0,$E0,$A0,$A0
       .byte $A0,$A0,$E0,$E0,$E0,$E0,$E0,$E0,$40,$40,$40,$40,$40,$E0,$40,$40
       .byte $40,$40,$00,$00,$00,$00,$00,$00,$00,$00
LFC27: .byte $C7,$C6,$FE,$EE,$6C,$6C,$6C,$54,$74,$44,$5C,$44,$74,$44,$74,$44
       .byte $5C,$44,$74,$44,$7C,$C8,$28,$26,$28,$38,$28,$38,$28,$38,$38,$10
       .byte $10,$10,$10,$10,$7C,$10,$10,$10,$10,$00
LFC51: .byte $09,$09,$09,$09,$09,$09,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$19,$19,$19,$19,$19,$19,$1F,$1F,$1F,$1F,$1F,$1F
       .byte $29,$29,$29,$29,$29,$2F,$2F,$2F,$2F,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$00,$3C,$18,$18,$18,$18
       .byte $18,$38,$18,$00,$7E,$60,$60,$3C,$06,$06,$46,$3C,$00,$3C,$46,$06
       .byte $0C,$0C,$06,$46,$3C,$00,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$7C
       .byte $46,$06,$06,$7C,$60,$60,$7E,$00,$3C,$66,$66,$66,$7C,$60,$62,$3C
       .byte $00,$18,$18,$18,$18,$0C,$06,$42,$7E,$00,$3C,$66,$66,$3C,$3C,$66
       .byte $66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00
LFCDD: .byte $00,$01,$00,$0A,$00,$64,$00,$E8,$00,$10
LFCE7: .byte $00,$00,$00,$00,$00,$00,$00,$03,$00,$27
LFCF1: .byte $FF,$03,$03,$03,$03,$03,$03,$03,$FF
LFCFA: .byte $FF,$00,$91,$51,$55,$5B,$91,$00,$FF
LFD03: .byte $FF,$00,$88,$55,$55,$55,$88,$00,$FF,$FF,$00,$5C,$45,$5D,$51,$5C
       .byte $00,$FF,$FF,$00,$48,$55,$55,$55,$48,$00,$FF,$FF,$00,$1C,$05,$1D
       .byte $11,$1C,$00,$FF
LFD27: .byte $FF,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$FF
LFD30: .byte $03,$13,$27,$4E,$75,$C3,$FF
LFD37: .byte $E8,$88,$10,$20,$30,$50,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$09
       .byte $48,$C8,$B1,$42,$A8,$68,$20,$89,$AD,$AC,$9C,$B3,$C8,$C8,$D0,$E7
       .byte $AD,$D3,$B5,$AC,$D4,$B5,$20,$89,$AD,$38,$B0,$D1,$20,$FB,$AF,$4C
       .byte $7F,$B3,$38,$20,$DD,$B2,$A9,$00,$A2,$05,$9D,$F0,$B5,$CA,$10,$FA
       .byte $60,$20,$DC,$AB,$A9,$FF,$8D,$F9,$B5,$20,$F7,$AF,$A9,$16,$8D,$9D
       .byte $B3,$20,$2F,$AE,$20,$2F,$AE,$A2,$0B,$BD,$AF,$B3,$20,$ED,$FD,$CA
       .byte $10,$F7,$86,$45,$AD,$F6,$B7,$85,$44,$20,$42,$AE,$20,$2F,$AE,$20
       .byte $2F,$AE,$18,$20,$11,$B0,$B0,$5D,$A2,$00,$8E,$9C,$B3,$BD,$C6,$B4
       .byte $F0,$53,$30,$4A,$A0,$A0,$BD,$C8,$B4,$10,$02,$A0,$AA,$98,$20,$ED
       .byte $FD,$BD,$C8,$B4,$29,$7F,$A0,$07,$0A,$0A,$B0,$03,$88,$D0,$FA,$B9
       .byte $A7,$B3,$20,$ED,$FD,$A9,$A0,$20,$ED
LFE00: LDA    $BD     
       STA    $81     
       LDX    #$04    
LFE06: LDA    $95,X   
       LDY    $BD     
       CPY    #$05    
       BCC    LFE28   
       ADC    #$04    
       CPY    #$0A    
       BCC    LFE28   
       ADC    #$04    
       CPY    #$0F    
       BCC    LFE28   
       ADC    #$04    
       CPY    #$14    
       BCC    LFE28   
       ADC    #$04    
       CPY    #$19    
       BCC    LFE28   
       ADC    #$04    
LFE28: TAY            
       LDA    LFB2A,Y 
       STA    $B3,X   
       LDA    LFB48,Y 
       STA    $A4,X   
       LDA    LFADE,Y 
       STA    $9F,X   
       LDA    LFA70,Y 
       STA    $9A,X   
       DEC    $BD     
       DEX            
       BPL    LFE06   
       LDA    $81     
       STA    $BD     
       RTS            

LFE47: LDA    #$04    
       STA    $B8     
LFE4B: LDX    #$04    
       LDY    #$03    
LFE4F: LDA.wy $00A9,Y 
       ADC.wy $00A4,Y 
       STA    $81     
       LDA    $A9,X   
       ADC    $A4,X   
       CMP    $81     
       BCS    LFEC1   
       LDA    $A9,X   
       STA    $81     
       LDA.wy $00A9,Y 
       STA    $A9,X   
       LDA    $81     
       STA.wy $00A9,Y 
       LDA    $9A,X   
       STA    $81     
       LDA.wy $009A,Y 
       STA    $9A,X   
       LDA    $81     
       STA.wy $009A,Y 
       LDA    $AE,X   
       STA    $81     
       LDA.wy $00AE,Y 
       STA    $AE,X   
       LDA    $81     
       STA.wy $00AE,Y 
       LDA    $A4,X   
       STA    $81     
       LDA.wy $00A4,Y 
       STA    $A4,X   
       LDA    $81     
       STA.wy $00A4,Y 
       LDA    $9F,X   
       STA    $81     
       LDA.wy $009F,Y 
       STA    $9F,X   
       LDA    $81     
       STA.wy $009F,Y 
       LDA    $95,X   
       STA    $81     
       LDA.wy $0095,Y 
       STA    $95,X   
       LDA    $81     
       STA.wy $0095,Y 
       LDA    $B3,X   
       STA    $81     
       LDA.wy $00B3,Y 
       STA    $B3,X   
       LDA    $81     
       STA.wy $00B3,Y 
LFEC1: DEX            
       DEY            
       BPL    LFE4F   
       DEC    $B8     
       BPL    LFE4B   
       RTS            

LFECA: LDA    $D1     
       STA    $92     
       LDA    $D2     
       STA    $93     
       LDA    #$80    
       STA    $91     
       LDX    #$09    
LFED8: LDA    #$00    
       STA    $B8     
LFEDC: SEC            
       LDA    $92     
LFEDF: SBC    LFCDD,X 
       STA    $81     
       LDA    $93     
       SBC    LFCE7,X 
       BCC    LFEF5   
       STA    $93     
       LDA    $81     
       STA    $92     
       INC    $B8     
       BNE    LFEDC   
LFEF5: LDY    $B8     
       CPX    #$01    
       BNE    LFF0A   
LFEFB: LDA    LFF29,Y 
       STA    $C7,X   
       DEX            
       LDA    LFF1F,Y 
       STA    $C7,X   
LFF06: DEX            
       BPL    LFED8   
       RTS            

LFF0A: CPY    #$00    
       BEQ    LFF10   
       STY    $91     
LFF10: BIT    $91     
       BPL    LFEFB   
       LDA    #$FC    
       STA    $C7,X   
       DEX            
       LDA    #$7A    
       STA    $C7,X   
       BNE    LFF06   
LFF1F: .byte $83 ;.SAX
       STY    $9E95   
       .byte $A7 ;.LAX
       BCS    LFEDF   
       .byte $C2 ;.NOP
       .byte $CB ;.SBX
       .byte $D4 ;.NOP
LFF29: .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
       .byte $FC ;.NOP
LFF33: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $81     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $81     
       CMP    #$0F    
       BCC    LFF4B   
       SBC    #$0F    
       INY            
LFF4B: EOR    #$07    
       ASL            
       ASL            
       ASL            
LFF50: ASL            
       RTS            

LFF52: STA    HMP0,X  
       STA    WSYNC   
LFF56: DEY            
       BPL    LFF56   
       STA    RESP0,X 
       RTS            

LFF5C: LDX    #$04    
       STX    $BD     
       STX    $D8     
LFF62: LDA    $DA     
       STA    $D3     
       LDX    #$04    
       LDY    #$04    
LFF6A: STY    $95,X   
       DEY            
       DEX            
       BPL    LFF6A   
       LDA    #$FA    
       STA    $84     
       STA    $86     
       STA    $B9     
       LDX    #$1D    
LFF7A: LDA    LFAFC,X 
       STA    $9A,X   
       DEX            
       BPL    LFF7A   
       INX            
       STX    $BB     
       LDA    #$50    
       STA    $BC     
       LDA    #$A9    
       STA    $BE     
       LDA    #$FD    
       STA    $D4     
       LDA    #$FC    
       STA    $D7     
       LDA    #$65    
       STA    $D5     
       RTS            

LFF9A: LDX    #$01    
LFF9C: LDA    $DF,X   
       BEQ    LFFA4   
       DEC    $DF,X   
       BPL    LFFD2   
LFFA4: LDY    $E1,X   
       LDA    LF908,Y 
       STA    $E3     
       BNE    LFFB2   
       DEC    $E1,X   
       JMP    LFFC8   
LFFB2: STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF900,Y 
       STA    $DF,X   
       BIT    $D9     
       BPL    LFFD0   
       LDY    $E1,X   
       LDA    LF962,Y 
LFFC8: STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
LFFD0: INC    $E1,X   
LFFD2: DEX            
       BPL    LFF9C   
       RTS            

LFFD6: .byte $B5,$8D,$DF,$B5,$18,$60,$20,$E4,$AF,$A9,$01,$4C,$52,$B0,$AC,$CB
       .byte $B5,$AD,$CC,$B5,$8C,$F0,$B7,$8D,$F1,$B7,$AE,$D6,$B5,$AC,$D7,$B5
       .byte $60,$A9,$01,$D0,$02,$A9,$00,$F0,$C3,$AA
