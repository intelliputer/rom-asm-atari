; Disassembly of roms/Carnival.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Carnival.bin
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
AUDF1   =  $18
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
TIM8T   =  $0295

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
       LDX    #$37    
       JSR    LFF54   
LF011: LDA    #$E8    
       STA    TIM8T   
       LDA    REFP1   
       AND    #$80    
       BNE    LF034   
       CPX    #$00    
       BEQ    LF028   
       STA    $A9     
       LDX    #$7E    
       STX    $A2     
       BNE    LF08E   
LF028: LDX    $C9     
       BEQ    LF07F   
       LDX    #$00    
       LDA    $83     
       CMP    #$7A    
       BEQ    LF07F   
LF034: INC    $CC     
       DEC    $CD     
       BPL    LF040   
       LDA    #$0C    
       STA    $CD     
       BNE    LF034   
LF040: DEC    $CE     
       BPL    LF04A   
       LDA    #$07    
       STA    $CE     
       BNE    LF034   
LF04A: INC    $CF     
       LDA    $CF     
       AND    #$0F    
       CMP    #$0F    
       BNE    LF074   
       LDA    $D9     
       BEQ    LF05C   
       DEC    $D9     
       BNE    LF074   
LF05C: DEC    $D8     
       BPL    LF064   
       LDA    #$1B    
       STA    $D8     
LF064: LDX    #$0A    
       LDA    $D8     
       CMP    #$13    
       BEQ    LF072   
       CMP    #$08    
       BNE    LF074   
       LDX    #$06    
LF072: STX    $D9     
LF074: LDA    SWCHB   
       AND    #$01    
       BNE    LF0A3   
       LDX    $D3     
       BNE    LF0C6   
LF07F: STX    $D4     
       LDA    $D5     
       STA    $F0     
       LDX    #$37    
       STX    $D2     
LF089: JSR    LFF54   
       STX    $D3     
LF08E: STX    $C9     
LF090: STX    $CB     
       LDX    #$00    
       STX    $EC     
       STX    $DB     
       STX    $EB     
       STX    $E8     
       STX    $E6     
       STX    $EE     
       JMP    LF44C   
LF0A3: LDA    SWCHB   
       AND    #$02    
       BNE    LF0C2   
       LDX    $D3     
       BNE    LF0C6   
       INX            
       STX    $85     
       LDA    #$7A    
       STA    $83     
       STA    $D3     
       STA    $C9     
       LDA    $D5     
       EOR    #$02    
       STA    $D5     
       CLC            
       BPL    LF0F0   
LF0C2: LDA    #$00    
       STA    $D3     
LF0C6: LDX    #$00    
       INC    $DA     
       BNE    LF113   
       LDA    $EB     
       BEQ    LF0D6   
       LDA    $D5     
       EOR    #$02    
       STA    $D5     
LF0D6: LDA    $EC     
       BEQ    LF100   
       CMP    #$E0    
       BCS    LF100   
       DEC    $EC     
       LDA    $EC     
       BNE    LF0E8   
       LDX    #$29    
       BNE    LF089   
LF0E8: CMP    #$DE    
       BNE    LF100   
       LDX    #$01    
       STX    $EC     
LF0F0: LDA    #$5C    
       LDX    #$0C    
LF0F4: STA    $96,X   
       DEX            
       DEX            
       BNE    LF0F4   
       LDA    #$47    
       STA    $81     
       BCC    LF090   
LF100: INC    $DB     
       LDA    $DB     
       CMP    #$2D    
       BNE    LF113   
       STX    $EB     
       LDX    #$37    
       JSR    LFF54   
       INX            
       JMP    LF08E   
LF113: BIT    COLUP0  
       BPL    LF134   
       LDA    $84     
       CMP    #$3F    
       BCS    LF132   
       LDA    $B7     
       CMP    #$10    
       BCC    LF132   
       LDA    $90     
       CMP    #$14    
       BEQ    LF132   
       LDA    $E9     
       STA    $D0     
       LDA    #$14    
       JSR    LFDD4   
LF132: STX    $B7     
LF134: BIT    WSYNC   
       BVS    LF13D   
       INX            
       BIT    RSYNC   
       BVC    LF1AD   
LF13D: STX    $C8     
       LDA    #$04    
       JSR    LFDD4   
       LDX    #$00    
       LDA    $B7     
       STX    $B7     
       CMP    #$68    
       BCC    LF154   
       LDA    #$4F    
       STA    $81     
       BNE    LF1AD   
LF154: LDX    #$01    
       CMP    #$54    
       BCS    LF17E   
       INX            
       CMP    #$3F    
       BCS    LF17E   
       INX            
       CMP    #$17    
       BCS    LF17E   
       LDX    #$20    
       LDY    #$48    
       LDA    $FD     
       CMP    $86     
       BNE    LF172   
       LDY    #$5C    
       LDX    #$80    
LF172: STX    $D0     
       STA    $86     
       DEC    $85     
       TYA            
       JSR    LFDD4   
       BVS    LF1AD   
LF17E: STX    $D0     
       ASL    $D0     
       LDA    $D0     
       SBC    #$01    
       CLC            
       ADC    $C8     
       STA    $C8     
       ASL            
       TAX            
       LDA    $98,X   
       CMP    #$7E    
       BNE    LF19F   
       LDY    #$00    
       STY    $CB     
       LDA    #$28    
       STA    $DB     
       STA    $EB     
       BNE    LF1A5   
LF19F: LDY    #$F8    
       CMP    #$30    
       BNE    LF1B0   
LF1A5: STY    $D0     
       BEQ    LF1B0   
       LDA    #$5C    
       STA    $98,X   
LF1AD: JMP    LF225   
LF1B0: STX    $D7     
       LDY    $C8     
       LDX    $A4,Y   
       LDA    LFD56,X 
       STA    $D6     
       LDA.wy $0092,Y 
       LDY    #$00    
       CLC            
       ADC    #$0A    
LF1C3: CMP    $84     
       BCS    LF1D7   
LF1C7: CLC            
       ADC    $D6     
       CMP    #$A1    
       BCC    LF1D0   
       SBC    #$A0    
LF1D0: INY            
       CPY    #$03    
       BEQ    LF1AD   
       BNE    LF1C3   
LF1D7: SBC    #$10    
       CMP    $84     
       BCC    LF1E2   
       ADC    #$0F    
       JMP    LF1C7   
LF1E2: TXA            
       ASL            
       ASL            
       STY    $D6     
       ADC    $D6     
       TAX            
       LDY    LFDE2,X 
       CPY    #$FF    
       BCC    LF20D   
       LDA    #$5C    
       LDX    $D7     
       STA    $98,X   
       LDX    $C8     
       LDA    $91     
       CPX    #$02    
       BEQ    LF203   
       CPX    #$03    
       BNE    LF207   
LF203: EOR    #$FF    
       SBC    #$5F    
LF207: ADC    LFF1C,X 
       JMP    LF219   
LF20D: LDX    $C8     
       TYA            
       AND    #$0F    
       STA    $A4,X   
       TYA            
       AND    #$F0    
       ADC    $92,X   
LF219: CMP    #$A1    
       BCC    LF21F   
       SBC    #$A0    
LF21F: STA    $92,X   
       LDA    #$00    
       STA    $B1,X   
LF225: STA    CXCLR   
       LDA    $D0     
       BEQ    LF299   
       LDX    $AC     
       LDY    #$00    
       CMP    #$0F    
       BCC    LF27F   
       CMP    #$90    
       BCC    LF284   
       CMP    #$F0    
       BCS    LF257   
       AND    #$70    
       SED            
       SEC            
       STA    $D0     
       LDA    $AE,X   
       SBC    $D0     
       STA    $AE,X   
       STY    $D0     
       LDA    $AD,X   
       SBC    $D0     
       STA    $AD,X   
       BCS    LF296   
       STY    $AE,X   
       STY    $AD,X   
       BCC    LF296   
LF257: AND    #$0F    
       CMP    #$0A    
       BCC    LF26D   
       AND    #$07    
       STA    $D0     
       LDA    $83     
       SBC    $D0     
       STA    $83     
       BCS    LF296   
       STY    $83     
       BCC    LF296   
LF26D: ADC    $83     
       CMP    #$28    
       BCC    LF275   
       LDA    #$28    
LF275: STA    $83     
       LDX    $C9     
       BEQ    LF296   
       STX    $CB     
       BNE    LF296   
LF27F: SBC    #$00    
       CLC            
       ADC    $AA     
LF284: SED            
       ADC    $AE,X   
       STA    $AE,X   
       TYA            
       ADC    $AD,X   
       BCC    LF290   
       LDY    #$28    
LF290: STY    $EB     
       STA    $AD,X   
       LDY    #$00    
LF296: STY    $D0     
       CLD            
LF299: LDX    #$05    
LF29B: LDY    #$00    
       STY    $B9,X   
       DEX            
       BPL    LF29B   
       LDA    $83     
       BNE    LF2C6   
       STA    $EE     
       LDX    $D4     
       BNE    LF2C6   
       STA    $CB     
       LDX    $EC     
       BNE    LF2C6   
       LDX    $F0     
       BEQ    LF2BE   
       JSR    LFCE6   
       STA    $DA     
       TYA            
       STA    $F0     
LF2BE: LDX    $C9     
       BNE    LF2C6   
       LDX    #$2C    
       STX    $DB     
LF2C6: DEY            
       LDX    #$05    
LF2C9: CMP    LFD50,X 
       BCC    LF2D3   
       STY    $B9,X   
       DEX            
       BNE    LF2C9   
LF2D3: STX    $C8     
       TAX            
       LDA    LFF2B,X 
       LDX    $C8     
       STA    $B9,X   
       LDA    $CB     
       BNE    LF2E9   
       LDA    $83     
       BNE    LF2E9   
       LDA    $D4     
       BEQ    LF347   
LF2E9: LDA    $90     
       CMP    #$14    
       BEQ    LF34F   
       LDA    $E6     
       BNE    LF318   
       LDA    $CD     
       CMP    #$06    
       BNE    LF349   
       LDY    #$FE    
       LDX    $CC     
       CPX    #$04    
       BCS    LF349   
       STY    $E6     
       LDA    LFB0D,X 
       STA    $E9     
       STX    $E7     
       LDA    LFE58,X 
       STA    $87     
       LDA    LFAFF,X 
       STA    $89     
       ASL    $E7     
       ASL    $E7     
LF318: INC    $E8     
       LDA    $E8     
       BEQ    LF347   
       LDX    #$00    
       CMP    #$30    
       BEQ    LF333   
       INX            
       CMP    #$60    
       BEQ    LF333   
       INX            
       CMP    #$90    
       BEQ    LF333   
       INX            
       CMP    #$C0    
       BNE    LF34F   
LF333: TXA            
       CLC            
       ADC    $E7     
       TAX            
       LDA    LFE40,X 
       STA    $E9     
       LDA    LFE8E,X 
       STA    $87     
       LDA    LFE9E,X 
       BNE    LF34D   
LF347: STA    $E6     
LF349: LDA    #$4F    
       STA    $87     
LF34D: STA    $89     
LF34F: LDA    $EE     
       BEQ    LF355   
       BNE    LF387   
LF355: LDA    $C9     
       BNE    LF37F   
       LDX    #$96    
       LDA    $CA     
       BNE    LF361   
       LDX    #$0C    
LF361: CPX    $82     
       BNE    LF367   
       EOR    #$01    
LF367: STA    $CA     
       LDA    #$AE    
       STA    $D4     
       LDX    $B7     
       BNE    LF379   
       STA    $B7     
       LDA    $82     
       ADC    #$02    
       STA    $84     
LF379: LDA    $CA     
       BEQ    LF39F   
       BNE    LF3AB   
LF37F: LDA    $CB     
       BNE    LF38A   
       LDA    $D4     
       BNE    LF38A   
LF387: JMP    LF448   
LF38A: LDA    SWCHA   
       LDX    $AC     
       BEQ    LF395   
       ASL            
       ASL            
       ASL            
       ASL            
LF395: AND    #$F0    
       CMP    #$D0    
       BCS    LF3B3   
       AND    #$80    
       BEQ    LF3AB   
LF39F: LDA    $82     
       DEC    $82     
       CMP    #$0C    
       BNE    LF3B3   
LF3A7: STA    $82     
       BCS    LF3B3   
LF3AB: LDA    $82     
       INC    $82     
       CMP    #$96    
       BEQ    LF3A7   
LF3B3: LDY    #$01    
       LDX    $AA     
       LDA    $80     
       CMP    LFF15,X 
       BCS    LF3C0   
       DEC    $D1     
LF3C0: DEC    $D1     
       BPL    LF3F6   
       LDA    #$02    
       STA    $D1     
       LDX    #$06    
LF3CA: INC    $91,X   
       LDA    $91,X   
       CMP    #$A1    
       BNE    LF3DE   
       STY    $91,X   
       LDA    $9C,X   
       CMP    #$7E    
       BNE    LF3DE   
       LDA    #$00    
       STA    $A2     
LF3DE: DEX            
       BMI    LF3E9   
       CPX    #$04    
       BNE    LF3CA   
       LDX    #$02    
       BNE    LF3CA   
LF3E9: LDY    #$A0    
       LDX    #$01    
LF3ED: DEC    $94,X   
       BNE    LF3F3   
       STY    $94,X   
LF3F3: DEX            
       BPL    LF3ED   
LF3F6: LDA    $D4     
       BEQ    LF409   
       LDA    $B7     
       SEC            
       SBC    #$05    
       STA    $B7     
       BCS    LF409   
       LDA    #$00    
       STA    $D4     
       STA    $B7     
LF409: LDA    $AC     
       LSR            
       TAX            
       LDA    REFP1,X 
       AND    #$80    
       BNE    LF438   
       LDA    $D2     
       BNE    LF43C   
       DEC    $D2     
       LDA    $D4     
       BNE    LF43C   
       STA    $DB     
       DEC    $D4     
       LDA    $82     
       ADC    #$02    
       STA    $84     
       LDA    #$A9    
       STA    $B7     
       LDA    #$38    
       JSR    LFDD4   
       DEC    $83     
       BPL    LF438   
       LDA    #$00    
       STA    $83     
LF438: LDA    #$00    
       STA    $D2     
LF43C: LDA    $83     
       CMP    #$0B    
       BCS    LF448   
       LDA    $CF     
       AND    #$20    
       BNE    LF44A   
LF448: LDA    #$00    
LF44A: STA    $B8     
LF44C: LDX    #$08    
       LDA    $B7     
       STA    $C8     
LF452: LDA    $C8     
       SEC            
       SBC    #$15    
       STA    $C8     
       BPL    LF461   
       ADC    #$1D    
       CMP    #$3A    
       BCC    LF463   
LF461: LDA    #$1C    
LF463: STA    $DC,X   
       DEX            
       BPL    LF452   
       LDA    #$FF    
       STA    $E5     
       LDX    #$06    
       LDA    $EB     
       BNE    LF488   
       LDA    $C9     
       BEQ    LF4D7   
       LDA    $CB     
       BNE    LF4A0   
       LDA    $EC     
       BEQ    LF484   
       CMP    #$DF    
       BEQ    LF4EE   
       BNE    LF4A0   
LF484: LDA    $83     
       BEQ    LF48E   
LF488: LDA    $EE     
       BEQ    LF4FC   
       BNE    LF4A0   
LF48E: LDA    $D5     
       BEQ    LF4A0   
       LDA    #$7F    
       BIT    $DA     
       BNE    LF49E   
       LDA    $AC     
       EOR    #$02    
       STA    $AC     
LF49E: BVC    LF4F8   
LF4A0: LDY    $AC     
LF4A2: LDA.wy $00AD,Y 
       AND    #$F0    
       LSR            
       STA    $C1,X   
       LDA    #$FD    
       STA    $C2,X   
       DEX            
       DEX            
       LDA.wy $00AD,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $C1,X   
       LDA    #$FD    
       STA    $C2,X   
       INY            
       DEX            
       DEX            
       BPL    LF4A2   
       LDA    #$00    
       STA    $BF     
       LDA    #$FD    
       STA    $C0     
       LDX    #$50    
       LDA    $AC     
       BEQ    LF4D3   
       LDX    #$A6    
LF4D3: STX    $8D     
       BCC    LF51B   
LF4D7: LDA    #$63    
       CLC            
       ADC    $D8     
       LDY    #$FD    
       STA    $8D     
       LDX    #$08    
LF4E2: STA    $BF,X   
       STY    $C0,X   
       ADC    #$13    
       DEX            
       DEX            
       BPL    LF4E2   
       BMI    LF51B   
LF4EE: LDA    $DA     
       AND    #$20    
       BEQ    LF4F8   
       LDA    #$63    
       BNE    LF500   
LF4F8: LDX    $AC     
       BPL    LF4FE   
LF4FC: LDX    $D5     
LF4FE: LDA    #$6B    
LF500: STA    $8D     
       LDA    #$AD    
       CPX    #$02    
       BEQ    LF50A   
       LDA    #$5D    
LF50A: CLC            
       ADC    $EB     
       LDY    #$FF    
       LDX    #$08    
LF511: STA    $BF,X   
       STY    $C0,X   
       ADC    #$08    
       DEX            
       DEX            
       BPL    LF511   
LF51B: LDX    INTIM   
       BNE    LF51B   
       STX    WSYNC   
       STX    VBLANK  
       STX    REFP0   
       STX    REFP1   
       INX            
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STX    HMCLR   
       NOP            
       LDY    #$90    
       STY    HMP0    
       LDY    #$07    
       STA    RESP0   
       LDX    #$8A    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
LF546: LDA    ($8D),Y 
       STA    COLUP1  
       STA    WSYNC   
       STA    COLUP0  
       LDA    ($C7),Y 
       STA    GRP0    
       LDA    ($C5),Y 
       STA    GRP1    
       LDA    ($C3),Y 
       STA    GRP0    
       LDA    ($C1),Y 
       TAX            
       LDA    ($BF),Y 
       STY    $D6     
       LDY    #$00    
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $D6     
       DEY            
       BPL    LF546   
       STX    WSYNC   
       STA    HMCLR   
       INY            
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       LDX    #$04    
       LDA    $84     
       JSR    LFBBE   
       INX            
       STX    NUSIZ1  
       STX    NUSIZ0  
       LDY    #$0D    
       LDA    #$D0    
       STA    HMP0    
       LDX    $FD     
       LDA    LFB03,X 
       STA    COLUP0  
       STA    COLUP1  
       NOP            
       STA    RESP0   
       NOP            
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       JSR    LFCA7   
       LDA    #$EA    
       STA    COLUPF  
       STA    REFP1   
LF5AD: LDA    ($E4),Y 
       STA    WSYNC   
       STA    HMCLR   
       STA    ENABL   
       LDA    ($F9),Y 
       STA    GRP0    
       LDA    ($FB),Y 
       STA    GRP1    
       DEY            
       CPY    #$07    
       BNE    LF5AD   
       LDY    #$14    
       LDA    $E3     
       STA    $E4     
LF5C8: LDA    ($F9),Y 
       TAX            
       LDA    ($E4),Y 
       STA    WSYNC   
       STA    ENABL   
       STX    GRP0    
       LDA    ($FB),Y 
       STA    GRP1    
       DEY            
       CPY    #$0D    
       BNE    LF5C8   
       STA    RESP0   
       LDX    #$B0    
       STA    RESP1   
       LDA    #$A0    
       STA    HMP1    
       STX    HMP0    
       LDX    #$48    
       LDA    $90     
       CMP    #$14    
       BNE    LF5FA   
       LDX    #$38    
       LDA    $CF     
       AND    #$10    
       BEQ    LF5FA   
       LDX    #$00    
LF5FA: STX    COLUP0  
       STX    COLUP1  
       LDA    ($E4),Y 
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFCCF   
       STX    REFP1   
LF609: LDA    ($E4),Y 
       STA    $C8     
       LDA    ($87),Y 
       LDX    #$00    
       STX    PF2     
       STX    PF0     
       TAX            
       LDA    ($89),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    $C8     
       STX    GRP0    
       STA    ENABL   
       DEY            
       LDA    #$C0    
       STA    PF2     
       NOP            
       NOP            
       LDX    #$FF    
       STX    PF0     
       CPY    #$03    
       BNE    LF609   
       INX            
       STX    PF0     
       STX    PF2     
       STA    WSYNC   
       LDA    ($E4),Y 
       JSR    LFCCF   
       STX    NUSIZ1  
       STX    NUSIZ0  
       LDA    #$02    
       STA    CTRLPF  
       LDA    #$08    
       STA    COLUP1  
       LDX    #$98    
       LDA    $90     
       CMP    #$14    
       BNE    LF653   
       LDX    #$38    
LF653: STX    COLUP0  
LF655: LDA    ($E4),Y 
       STA    WSYNC   
       STA    ENABL   
       LDX    #$00    
       LDA    $E6     
       BEQ    LF66B   
       STA    PF1     
       LDA    #$80    
       STA    PF0     
       STX    PF2     
       BNE    LF673   
LF66B: STA    PF0     
       STA    PF1     
       STA    PF2     
       NOP            
       NOP            
LF673: JSR    LFBD3   
       LDA    ($E4),Y 
       STX    PF0     
       LDA    #$1F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       DEY            
       BNE    LF655   
       STA    WSYNC   
       LDA    ($E4),Y 
       STA    ENABL   
       STY    PF1     
       STY    PF2     
       LDY    #$0F    
       LDA    $E2     
       STA    $E4     
       LDA    $96     
       JSR    LFBBE   
       INX            
       LDA    $97     
       JSR    LFBBE   
       LDA    ($A0),Y 
       STA    COLUP0  
       LDA    ($A2),Y 
       STA    COLUP1  
       LDA    $A8     
       STA    NUSIZ0  
       LDA    $A9     
       JSR    LFCC1   
LF6B1: LDA    ($E4),Y 
       STA    $C8     
       LDA    ($A0),Y 
       TAX            
       LDA    ($A2),Y 
       JSR    LFCD9   
       BPL    LF6B1   
       LDY    #$10    
       LDA    $E1     
       STA    $E4     
       STA    WSYNC   
       LDA    ($E4),Y 
       JSR    LFCCF   
       LDA    $94     
       JSR    LFBBE   
       INX            
       LDA    $95     
       JSR    LFBBE   
       LDA    ($9C),Y 
       STA    COLUP0  
       LDA    ($9E),Y 
       STA    COLUP1  
       LDA    $A6     
       STA    NUSIZ0  
       LDA    $A7     
       LDX    #$00    
       JSR    LFCC3   
LF6EA: LDA    ($E4),Y 
       STA    $C8     
       LDA    ($9C),Y 
       TAX            
       LDA    ($9E),Y 
       JSR    LFCD9   
       BPL    LF6EA   
       LDY    #$10    
       LDA    $E0     
       STA    $E4     
       STA    WSYNC   
       LDA    ($E4),Y 
       JSR    LFCCF   
       LDA    $92     
       JSR    LFBBE   
       INX            
       LDA    $93     
       JSR    LFBBE   
       LDA    ($98),Y 
       STA    COLUP0  
       LDA    ($9A),Y 
       STA    COLUP1  
       LDA    $A4     
       STA    NUSIZ0  
       LDA    $A5     
       JSR    LFCC1   
LF721: LDA    ($E4),Y 
       STA    $C8     
       LDA    ($98),Y 
       TAX            
       LDA    ($9A),Y 
       JSR    LFCD9   
       BPL    LF721   
       INY            
       STA    WSYNC   
       LDA    ($E4),Y 
       JSR    LFCCF   
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    $EF     
       BIT    $AB     
       BMI    LF744   
       CLC            
       ADC    #$08    
LF744: TAY            
       JSR    LFBBE   
       INX            
       TYA            
       LDY    #$00    
       CLC            
       ADC    #$08    
       BIT    $AB     
       BMI    LF757   
       SBC    #$0F    
       LDY    #$08    
LF757: JSR    LFBBE   
       STY    REFP0   
       STY    REFP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$03    
       LDA    #$18    
       STA    COLUP0  
       STA    COLUP1  
LF76A: LDY    #$14    
       LDA    $DC,X   
       STA    $E4     
       LDA    $F2,X   
       STA    $F5     
       CMP    #$8C    
       BEQ    LF77B   
       CLC            
       ADC    #$23    
LF77B: STA    $F7     
LF77D: LDA    ($E4),Y 
       STA    WSYNC   
       STA    ENABL   
       LDA    ($F5),Y 
       STA    GRP0    
       LDA    ($F7),Y 
       STA    GRP1    
       DEY            
       BPL    LF77D   
       DEX            
       BNE    LF76A   
       LDY    #$14    
       LDA    $DC,X   
       STA    $E4     
       LDA    $F2,X   
       STA    $F5     
       CMP    #$8C    
       BEQ    LF7A2   
       CLC            
       ADC    #$23    
LF7A2: STA    $F7     
LF7A4: LDA    ($E4),Y 
       STA    WSYNC   
       STA    ENABL   
       LDA    ($F5),Y 
       STA    GRP0    
       LDA    ($F7),Y 
       STA    GRP1    
       DEY            
       CPY    #$0C    
       BNE    LF7A4   
       LDA    $ED     
       INX            
       JSR    LFBBE   
       DEX            
       STX    ENABL   
       STX    CTRLPF  
       STX    NUSIZ0  
       STX    REFP0   
       STX    NUSIZ1  
       STX    GRP1    
       LDA    #$B7    
       STA    COLUP0  
       LDA    $82     
       JSR    LFBBE   
       LDX    #$0D    
       STA    WSYNC   
       STA    HMOVE   
LF7D9: STA    WSYNC   
       LDA    LFD5D,X 
       STA    GRP0    
       DEX            
       BPL    LF7D9   
       STA    WSYNC   
       LDA    $B8     
       BEQ    LF7F2   
       LDX    #$0B    
LF7EB: STA    WSYNC   
       DEX            
       BNE    LF7EB   
       BEQ    LF83A   
LF7F2: JSR    LFCA7   
       LDY    #$06    
       LDX    $AA     
       LDA    LFDF5,X 
       STA    COLUPF  
       LDA    #$E8    
       STA    COLUP1  
LF802: LDA    ($8B),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    $BE     
       CPY    #$06    
       BEQ    LF826   
       STA    PF0     
       LDA    $BD     
       STA    PF1     
       LDA    $BC     
       STA    PF2     
       LDA    ($8B),Y 
       LDA    $BB     
       STA    PF0     
       LDA    $BA     
       STA    PF1     
       LDA    $B9     
       STA    PF2     
LF826: DEY            
       BNE    LF802   
       LDA    ($8B),Y 
       STA    WSYNC   
       STY    COLUPF  
       STA    GRP1    
       STA    WSYNC   
       STY    GRP1    
       STA    WSYNC   
       JSR    LFCA7   
LF83A: LDX    #$B9    
       STX    TIM8T   
       LDA    $8F     
       CMP    #$FE    
       BNE    LF84C   
       LDX    #$00    
       STX    $EA     
       DEX            
       STX    $8F     
LF84C: LDA    $90     
       BEQ    LF883   
       STA    AUDC0   
       AND    #$F0    
       TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFB11,X 
       INC    $EA     
       CMP    $EA     
       BNE    LF896   
       LDA    #$00    
       STA    $EA     
       INC    $8F     
       TYA            
       CLC            
       ADC    $8F     
       TAX            
       LDA    LFAC7,X 
       BEQ    LF883   
       STA    AUDF0   
       LSR            
       LSR            
       LSR            
       LSR            
       LDX    $CB     
       BNE    LF87E   
       TXA            
LF87E: STA    AUDV0   
       JMP    LF896   
LF883: LDX    #$00    
       LDA    $90     
       CMP    #$14    
       BNE    LF88F   
       STX    $E6     
       STX    $E8     
LF88F: STX    AUDV0   
       STX    $90     
       DEX            
       STX    $8F     
LF896: LDX    #$00    
       LDA    $EE     
       BEQ    LF8D0   
       CMP    #$0B    
       BNE    LF8AC   
       STX    $CF     
       LDA    $83     
       ASL            
       ASL            
       SBC    #$00    
       STA    $ED     
       BNE    LF8B8   
LF8AC: LDA    $CF     
       CMP    #$0A    
       BEQ    LF8C0   
       CMP    #$14    
       BNE    LF8D4   
       STX    $CF     
LF8B8: DEC    $EE     
       BEQ    LF8D0   
       DEC    $83     
       BEQ    LF8D0   
LF8C0: LDA    $8B     
       LDX    #$AE    
       CMP    #$AE    
       BNE    LF8CA   
       LDX    #$B5    
LF8CA: DEC    $ED     
       DEC    $ED     
       BNE    LF8D2   
LF8D0: LDX    #$5C    
LF8D2: STX    $8B     
LF8D4: LDX    #$03    
       LDA    $81     
       STA    $C8     
LF8DA: LDA    $C8     
       SEC            
       SBC    #$15    
       STA    $C8     
       BPL    LF8EE   
       CMP    #$DD    
       BCC    LF8EE   
       ADC    #$22    
       CLC            
       ADC    $F1     
       BVC    LF8F0   
LF8EE: LDA    #$8C    
LF8F0: STA    $F2,X   
       DEX            
       BPL    LF8DA   
       LDA    #$FC    
       STA    $F6     
       STA    $F8     
       LDA    $83     
       BEQ    LF903   
       LDA    $D1     
       BEQ    LF906   
LF903: JMP    LFA54   
LF906: LDA    $81     
       CMP    #$4F    
       BEQ    LF941   
       LDA    $AB     
       AND    #$0F    
       CLC            
       ADC    $81     
       STA    $81     
       CMP    #$37    
       BNE    LF923   
       LDA    #$4F    
       STA    $81     
       LDA    #$0B    
       STA    $EE     
       BNE    LF941   
LF923: BIT    $AB     
       BMI    LF92D   
       BVC    LF96B   
       INC    $EF     
       BNE    LF92F   
LF92D: DEC    $EF     
LF92F: LDA    $EF     
       CMP    #$10    
       BCC    LF939   
       CMP    #$90    
       BCC    LF96B   
LF939: LDA    $AB     
       EOR    #$E0    
       STA    $AB     
       BNE    LF96B   
LF941: LDX    $EE     
       BNE    LF9A9   
       LDA    $CC     
       CMP    #$D0    
       BCC    LF981   
       LDA    $98     
       BEQ    LF954   
       INX            
       LDA    $9A     
       BNE    LF981   
LF954: LDA    $92,X   
       CMP    #$28    
       BCC    LF981   
       CMP    #$78    
       BCS    LF981   
       STA    $EF     
       TXA            
       ASL            
       TAX            
       LDA    #$5C    
       STA    $98,X   
       LDA    #$00    
       STA    $81     
LF96B: LDA    $CC     
       CMP    #$09    
       BCS    LF981   
       LDX    $CE     
       LDA    LFEBC,X 
       STA    $AB     
       LDA    LFEC4,X 
       STA    $F1     
       LDA    #$B0    
       STA    $CC     
LF981: LDX    #$0A    
       LDY    #$06    
LF985: LDA    $98,X   
       CMP    #$5C    
       BEQ    LF991   
LF98B: DEX            
       DEX            
       BPL    LF985   
       BMI    LF9EE   
LF991: DEY            
       BNE    LF9AB   
       LDA    $81     
       CMP    #$4F    
       BNE    LF9AB   
       LDA    $85     
       BNE    LF9AB   
       STY    $CB     
       LDA    $EC     
       BNE    LFA1B   
       DEY            
       STY    $EC     
       STY    $DA     
LF9A9: BNE    LFA1B   
LF9AB: STX    $C8     
       TXA            
       LSR            
       TAX            
       LDA    $92,X   
       LDX    $C8     
       CMP    #$04    
       BNE    LF98B   
       LDX    $AA     
       LDA    LFF11,X 
       LDX    $C8     
       CMP    $CC     
       BCC    LF98B   
       LDA    $CF     
       EOR    $CE     
       STA    $D6     
       LDA    $80     
       BEQ    LF9CF   
       DEC    $80     
LF9CF: AND    #$37    
       AND    $D6     
       TAY            
       CPX    #$03    
       BCS    LF9E1   
       TXA            
       BEQ    LF9E0   
       TYA            
       AND    #$30    
       BNE    LF9E1   
LF9E0: TAY            
LF9E1: TYA            
       AND    #$30    
       STA    $98,X   
       TXA            
       LSR            
       TAX            
       TYA            
       AND    #$07    
       STA    $B1,X   
LF9EE: LDX    #$06    
LF9F0: DEX            
       BMI    LFA1B   
       LDA    $B1,X   
       BEQ    LF9F0   
       TAY            
       TXA            
       AND    #$02    
       BEQ    LFA06   
       LDA    $92,X   
       CMP    LFF08,Y 
       BNE    LF9F0   
       BEQ    LFA11   
LFA06: LDA    $92,X   
       CMP    LFEFF,Y 
       BNE    LF9F0   
       LDA    #$04    
       STA    $92,X   
LFA11: LDA    LFDCA,Y 
       STA    $A4,X   
       LDA    LFF22,Y 
       STA    $B1,X   
LFA1B: LDX    #$02    
       LDA    $91     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$03    
       STA    $FD     
LFA27: LDA    $85     
       BNE    LFA2F   
LFA2B: LDA    #$54    
       BNE    LFA4A   
LFA2F: LDA    $90     
       CMP    #$48    
       BEQ    LFA2B   
       LDA    $91     
       AND    #$0C    
       LSR            
       LSR            
       CPX    #$02    
       BNE    LFA41   
       EOR    #$03    
LFA41: TAY            
       LDA    #$B7    
LFA44: CLC            
       ADC    #$0D    
       DEY            
       BPL    LFA44   
LFA4A: STA    $F9,X   
       LDA    #$FE    
       STA    $FA,X   
       DEX            
       DEX            
       BPL    LFA27   
LFA54: LDA    $C9     
       BEQ    LFAA8   
       LDA    $EC     
       CMP    #$E0    
       BCC    LFA90   
       LDA    #$05    
       LDX    $DA     
       CPX    #$08    
       BNE    LFAA8   
       STA    $DA     
       DEC    $83     
       BPL    LFA7A   
       JSR    LFCE6   
       LDX    $D5     
       BNE    LFA76   
       INX            
       STX    $EC     
LFA76: LDA    #$00    
       STA    $83     
LFA7A: STA    $D0     
       STA    AUDV1   
       LDA    $83     
       AND    #$01    
       BEQ    LFAA8   
       DEC    $EC     
       LDA    $EC     
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       BNE    LFAA8   
LFA90: LDX    #$00    
       LDA    $CB     
       BEQ    LFAA4   
       LDA    $81     
       CMP    #$4F    
       BEQ    LFAA4   
       LDA    $91     
       AND    #$07    
       STA    AUDF1   
       LDX    #$05    
LFAA4: STX    AUDV1   
       STX    AUDC1   
LFAA8: LDX    INTIM   
       BNE    LFAA8   
       LDX    #$02    
       STX    WSYNC   
       STX    VBLANK  
       STX    WSYNC   
       STX    WSYNC   
       STX    VSYNC   
       STX    WSYNC   
       STX    WSYNC   
       LDX    #$00    
       STX    WSYNC   
       STX    VSYNC   
       JMP    LF011   
LFAC6: .byte $00
LFAC7: .byte $F3,$DF,$B3,$93,$73,$53,$53,$53,$33,$33,$33,$33,$33,$33,$00,$00
       .byte $CE,$EE,$CE,$AE,$8E,$AE,$CE,$AE,$8E,$6E,$8E,$AE,$8E,$6E,$4E,$6E
       .byte $8E,$6E,$4E,$2E,$4E,$6E,$4E,$2E,$4E,$6E,$4E,$2E,$2E,$2E,$2E,$00
       .byte $A6,$C6,$E6,$86,$66,$46,$26,$00
LFAFF: .byte $2B,$2B,$58,$58
LFB03: .byte $94,$C2,$64,$24,$E0,$A4,$68,$68,$4F,$00
LFB0D: .byte $F6,$FE,$50,$D0
LFB11: .byte $02,$03,$03,$02,$01,$06,$ED,$CB,$A9,$87,$65,$43,$6F,$00,$00,$00
       .byte $00,$4A,$4A,$4A,$EA,$EA,$E0,$40,$40,$40,$00,$00,$00,$00,$AA,$AA
       .byte $AA,$AA,$AA,$00,$00,$00,$00,$A8,$A8,$A8,$A8,$A8,$00,$00,$00,$00
       .byte $A0,$A0,$A0,$A0,$A0,$00,$00,$00,$00,$80,$80,$80,$80,$80,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$22,$77,$55,$55,$55
       .byte $55,$55,$77,$22,$00,$00,$00,$00,$47,$47,$42,$E2,$E2,$E2,$42,$46
       .byte $42,$00,$00,$00,$00,$47,$47,$44,$E2,$E2,$E1,$45,$47,$42,$00,$00
       .byte $00,$00,$42,$47,$45,$E1,$E3,$E1,$45,$47,$42,$00,$00,$00,$00,$41
       .byte $41,$41,$E7,$E7,$E5,$45,$45,$45,$00,$00,$00,$00,$42,$47,$45,$E1
       .byte $E3,$E4,$44,$47,$47,$00,$00,$00,$00,$0A,$0A,$0A,$EA,$EA,$E0,$E0
       .byte $00,$00,$00,$00,$02,$07,$05,$E1,$E3,$E4,$04,$07,$07
LFBBE: STA    WSYNC   
       SEC            
LFBC1: SBC    #$0F    
       BCS    LFBC1   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
LFBD3: RTS            

LFBD4: .byte $3F,$4F,$54,$28,$51,$08,$0F,$4F,$FB,$4F,$FB,$5C,$FE,$63,$FE,$FE
       .byte $5C,$00,$00,$20,$04,$54,$68,$19,$00,$FE,$10,$FE,$00,$FE,$30,$FE
       .byte $10,$FE,$20,$FE,$00,$03,$06,$04,$06,$06,$01,$91,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $03,$07,$03,$01,$03,$03,$07,$07,$0F,$1F,$1E,$BF,$B1,$E0,$C0,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$C0,$E0,$C0,$80,$C0,$C0,$E0,$E0,$70,$78,$B8,$FD,$CD
       .byte $87,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$0C,$1E,$3F,$3F,$7F,$77,$C7,$CF,$1F,$1F
       .byte $3E,$7B,$71,$E0,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$C0,$E0
       .byte $F0,$70,$78,$BC,$FC,$CE,$87,$03,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00
LFCA7: LDA    #$08    
       STA    COLUPF  
       LDA    #$F0    
       STA    PF0     
       LDX    #$FF    
       STX    PF1     
       STX    PF2     
       INX            
       STX    REFP1   
       STA    WSYNC   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       RTS            

LFCC1: LDX    #$08    
LFCC3: STA    NUSIZ1  
       STX    REFP0   
       STX    REFP1   
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFCCF: LDX    #$00    
       STX    GRP1    
LFCD3: STX    GRP0    
       STA    ENABL   
       DEY            
       RTS            

LFCD9: STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    $C8     
       JMP    LFCD3   
LFCE6: LDA    $AC     
       EOR    $F0     
       STA    $AC     
       BEQ    LFCF2   
       LDA    $F0     
       BNE    LFCFA   
LFCF2: LDA    $AA     
       CMP    #$04    
       BEQ    LFCFA   
       INC    $AA     
LFCFA: LDX    #$DF    
       STX    $EC     
       RTS            

LFCFF: .byte $98,$3C,$66,$66,$66,$66,$66,$3C,$00,$7E,$18,$18,$18,$38,$18,$08
       .byte $00,$7E,$62,$60,$3C,$06,$46,$3C,$00,$3C,$46,$06,$1C,$06,$46,$3C
       .byte $00,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$3C,$46,$06,$7C,$60,$60,$7E
       .byte $00,$3C,$66,$66,$7C,$60,$62,$3C,$00,$30,$30,$18,$0C,$06,$42,$7E
       .byte $00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$3C
       .byte $00
LFD50: .byte $00,$21,$19,$15,$0D,$05
LFD56: .byte $00,$10,$20,$10,$40,$00,$20
LFD5D: .byte $00,$5C,$5C,$3C,$60,$70,$50,$40,$40,$40,$C0,$C0,$40,$40,$FD,$85
       .byte $B5,$A5,$B5,$85,$FD,$00,$00,$00,$00,$0E,$12,$10,$10,$12,$0E,$00
       .byte $00,$77,$15,$15,$77,$55,$55,$77,$00,$00,$00,$00,$6A,$FA,$8A,$8A
       .byte $FB,$6A,$00,$00,$66,$44,$44,$64,$24,$24,$66,$00,$00,$00,$00,$12
       .byte $12,$52,$52,$DC,$10,$00,$00,$ED,$A9,$A9,$A9,$A9,$A9,$E9,$00,$00
       .byte $00,$00,$98,$BD,$A5,$A5,$A5,$A4,$00,$80,$B7,$25,$25,$A5,$25,$25
       .byte $B7,$00,$00,$00,$00,$D4,$F4,$14,$14,$F4,$D4,$04,$04
LFDCA: .byte $00,$01,$02,$01,$04,$01,$02,$02,$03,$06
LFDD4: LDY    $90     
       CPY    #$14    
       BNE    LFDDB   
       RTS            

LFDDB: STA    $90     
       LDA    #$FE    
       STA    $8F     
       RTS            

LFDE2: .byte $FF,$FF,$FF,$FF,$10,$00,$FF,$FF,$20,$00,$FF,$FF,$11,$02,$01,$FF
       .byte $40,$00,$FF
LFDF5: .byte $FF,$92,$C0,$64,$22,$22,$04,$02,$FF,$AC,$88,$1C,$04,$1C,$3E,$63
       .byte $7B,$3F,$3D,$18,$1C,$BE,$7F,$37,$5E,$8C,$18,$FE,$7F,$0F,$9E,$FE
       .byte $7E,$3C,$78,$FC,$6C,$3C,$0C,$0C,$1A,$31,$0A,$66,$3C,$BD,$FF,$FF
       .byte $FF,$FF,$FF,$7E,$F7,$C9,$C9,$FF,$7E,$81,$48,$FF,$E7,$DB,$DB,$E7
       .byte $DB,$DB,$E7,$FF,$00,$00,$00,$00,$00,$00,$0A
LFE40: .byte $F5,$F4,$F3,$F2,$FE,$FE,$FE,$FE,$40,$30,$20,$10,$D0,$D0,$D0,$D0
       .byte $E8,$E8,$E8,$E8,$E8,$E8,$E8,$E8
LFE58: .byte $1E,$A6,$99,$B1,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$A6,$00,$00,$00,$57,$57
       .byte $57,$1A,$1A,$1A,$1A,$1A,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08
       .byte $00,$00,$00,$00,$00,$04
LFE8E: .byte $1E,$1E,$1E,$1E,$A6,$A6,$A6,$A6,$8C,$7F,$72,$65,$B1,$B1,$B1,$B1
LFE9E: .byte $34,$3D,$46,$4F,$2B,$2B,$2B,$2B,$58,$58,$58,$58,$58,$58,$58,$58
       .byte $0C,$1E,$7E,$76,$16,$1E,$0C,$0C,$5E,$3E,$16,$36,$5E,$0C
LFEBC: .byte $91,$90,$01,$91,$71,$01,$71,$70
LFEC4: .byte $46,$00,$00,$46,$46,$00,$46,$00,$C2,$C2,$C1,$C1,$FF,$FF,$08,$02
       .byte $02,$02,$02,$02,$02,$04,$02,$02,$02,$C1,$C1,$30,$30,$30,$38,$08
       .byte $04,$04,$08,$04,$04,$02,$03,$01,$00,$60,$60,$60,$60,$70,$78,$C1
       .byte $E1,$F9,$1D,$07,$03,$01,$01,$01,$01,$C1,$C1
LFEFF: .byte $C1,$14,$24,$14,$44,$14,$24,$24,$14
LFF08: .byte $24,$94,$84,$94,$64,$94,$84,$84,$84
LFF11: .byte $64,$80,$A0,$C0
LFF15: .byte $D0,$21,$2A,$2F,$32,$FF,$FF
LFF1C: .byte $00,$50,$04,$54,$08,$58
LFF22: .byte $00,$00,$00,$08,$00,$08,$09,$00,$00
LFF2B: .byte $00,$10,$30,$70,$F0,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$01,$03,$07
       .byte $0F,$1F,$3F,$7F,$FF,$10,$30,$70,$F0,$80,$C0,$E0,$F0,$F8,$FC,$FE
       .byte $FF,$01,$03,$07,$0F,$1F,$3F,$7F,$FF
LFF54: LDA    LFBD4,X 
       STA    $80,X   
       DEX            
       BPL    LFF54   
       RTS            

LFF5D: .byte $8E,$88,$88,$E8,$A8,$A8,$E8,$00,$A4,$A4,$A4,$EE,$AA,$AA,$EA,$00
       .byte $EA,$8A,$8A,$CC,$8A,$8A,$EE,$00,$0E,$0A,$0A,$0A,$0A,$0A,$0E,$00
       .byte $97,$94,$94,$B6,$D4,$94,$97,$00,$F5,$91,$11,$21,$41,$81,$91,$F1
       .byte $1F,$20,$44,$84,$84,$44,$20,$15,$FF,$00,$47,$44,$44,$44,$44,$F7
       .byte $FF,$00,$4B,$4A,$4A,$7B,$4A,$4B,$FF,$00,$D1,$11,$13,$95,$19,$D1
       .byte $8E,$88,$88,$E8,$A8,$A8,$E8,$00,$A4,$A4,$A4,$EE,$AA,$AA,$EA,$00
       .byte $EA,$8A,$8A,$CC,$8A,$8A,$EE,$00,$08,$09,$09,$09,$09,$09,$1D,$00
       .byte $A7,$55,$55,$55,$55,$15,$17,$00,$8A,$8A,$8A,$CC,$AA,$AA,$CC,$00
       .byte $EE,$AA,$AA,$AA,$A8,$A8,$EE,$00,$AA,$AA,$AA,$CE,$AA,$AA,$C4,$00
       .byte $88,$88,$88,$A8,$A8,$A8,$50,$00,$62,$52,$52,$67,$55,$55,$65,$00
       .byte $F0,$00,$F0
