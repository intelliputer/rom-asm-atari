; Disassembly of roms/Tacscan.bin
; Disassembled Tue Oct  6 15:30:25 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Tacscan.bin
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
PF2     =  $0F
RESP0   =  $10
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
INPT3   =  $3B
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDX    #$28    
       LDA    #$00    
LF006: STA    NUSIZ0,X
       DEX            
       BPL    LF006   
       TXS            
LF00C: STA    VSYNC,X 
       DEX            
       BMI    LF00C   
       DEC    $F7     
LF013: LDX    #$06    
       STX    $E1     
LF017: LDA    LFFDD,X 
       STA    $E2,X   
       LDA    LFFE4,X 
       STA    $E9,X   
       DEX            
       BPL    LF017   
       LDA    #$7F    
       STA    $B1     
       STA    CTRLPF  
       LDY    #$FF    
       STY    $DD     
       STY    $BE     
       STY    $88     
       LDA    #$00    
       STA    $A9     
       STA    $AF     
       STA    $AC     
       STA    $CE     
       STA    $B6     
       LDX    #$0B    
LF040: STY    $CF,X   
       DEX            
       STA    $CF,X   
       DEX            
       BPL    LF040   
       LDX    #$03    
       STX    $B8     
       INX            
LF04D: ADC    #$19    
       STA    $98,X   
       STY    $8A,X   
       STY    $9E,X   
       STY    $C0,X   
       DEX            
       BPL    LF04D   
       LDA    #$01    
       STA    $B7     
       STA    $A4     
       LDA    #$46    
       STA    $B9     
       LDA    #$3E    
       STA    $BA     
LF068: JMP    LF85E   
LF06B: LDA    $F7     
       BMI    LF072   
       JMP    LFACC   
LF072: LDA    INTIM   
       BNE    LF072   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$25    
       STA    TIM64T  
       LDA    #$C4    
       STA    $B0     
       LDA    #$20    
       STA    HMBL    
       LDY    #$5A    
       STY    $F3     
       STY    $D9     
       STA    WSYNC   
       STA    RESBL   
       STA    HMOVE   
       LDA    $80     
       ADC    $A7     
       CLC            
       STA    COLUBK  
       LDA    #$00    
       STA    HMBL    
       LDA    $B9     
       BPL    LF0BF   
       LDA    $BA     
       BPL    LF0BF   
       LDA    #$FF    
       STA    $F7     
LF0BF: LDA    $F7     
       BPL    LF0C9   
       JMP    LFBD0   
LF0C6: JMP    LF1E0   
LF0C9: LDA    $AC     
       STA    $F9     
       INC    $F9     
       AND    #$03    
       TAX            
       LDA    LFE15,X 
       STA    $80     
       LDA    LFE19,X 
       STA    $87     
       LDA    LFEFC,X 
       STA    $97     
       LDA    $A4     
       CMP    #$01    
       BNE    LF0C6   
       LDA    $88     
       BPL    LF0C6   
       LDA    $AD     
       BPL    LF0C6   
       CMP    #$FF    
       BNE    LF144   
       LDX    #$04    
LF0F5: LDA    $C0,X   
       BEQ    LF0FF   
       DEX            
       BPL    LF0F5   
       JMP    LF1B4   
LF0FF: LDA    $81     
       BNE    LF113   
       LDY    #$5A    
       STY    $81     
       LDX    #$08    
LF109: LDA    $CF,X   
       STY    $CF,X   
       STA    $F2,X   
       DEX            
       DEX            
       BPL    LF109   
LF113: LDA    #$00    
       STA    $D9     
       STA    $D7     
       LDY    $B6     
       CPY    #$0A    
       BCC    LF128   
       TYA            
       SBC    #$0A    
       TAY            
       LDA    #$09    
       JSR    LF55C   
LF128: LDA    LFFF2,Y 
       JSR    LF558   
       LDA    $D9     
       STA    $96     
       LDA    #$5A    
       STA    $D9     
       DEC    $AD     
       LDA    #$FF    
       STA    $BE     
       STA    $9F     
       STA    $9E     
       LDA    #$4E    
       STA    $99     
LF144: LDA    #$01    
       STA    $A8     
       STA    $F9     
       LDA    $9F     
       CMP    #$C5    
       BCS    LF160   
       AND    #$03    
       BNE    LF160   
       LDA    $F0     
       BMI    LF15E   
       BEQ    LF160   
       DEC    $99     
       BNE    LF160   
LF15E: INC    $99     
LF160: LDA    $9F     
       CMP    #$23    
       BNE    LF183   
       LDX    #$00    
       LDA    $99     
LF16A: CMP    LFFD3,X 
       BCC    LF1CB   
       CMP    LFFD8,X 
       BCS    LF17C   
       LDY    $C0,X   
       BNE    LF1CB   
       STA    $C0,X   
       BEQ    LF1A4   
LF17C: CPX    #$01    
       BEQ    LF1CB   
       INX            
       BPL    LF16A   
LF183: CMP    #$14    
       BNE    LF1CB   
       LDA    $99     
       LDX    #$02    
LF18B: CMP    LFFD3,X 
       BCC    LF1B4   
       CMP    LFFD8,X 
       BCS    LF19D   
       LDY    $C0,X   
       BNE    LF1B4   
       STA    $C0,X   
       BEQ    LF1A4   
LF19D: CPX    #$04    
       BEQ    LF1B4   
       INX            
       BPL    LF18B   
LF1A4: LDA    #$00    
       STA    $95     
       DEC    $B6     
       LDA    $B6     
       BEQ    LF1B4   
       LDA    #$FF    
       STA    $AD     
       BNE    LF1DB   
LF1B4: LDA    $81     
       BEQ    LF1C6   
       LDX    #$08    
LF1BA: LDA    $F2,X   
       STA    $CF,X   
       STX    $96     
       STX    $81     
       DEX            
       DEX            
       BPL    LF1BA   
LF1C6: JSR    LFBB4   
       BPL    LF1E0   
LF1CB: LDA    $9F     
       CMP    #$C5    
       BNE    LF1DB   
       DEC    $95     
       LDX    $E1     
       LDA    $E9,X   
       CMP    #$A8    
       BCS    LF248   
LF1DB: DEC    $9F     
       JMP    LF248   
LF1E0: LDA    $DF     
       BEQ    LF248   
       DEC    $DF     
       LDA    #$1E    
       STA    $B3     
       LDA    #$00    
       STA    $A8     
       LDA    $B9     
       LDY    $B2     
       BMI    LF1FD   
       CLC            
       ADC    #$04    
       CPY    #$00    
       BEQ    LF1FD   
       ADC    #$04    
LF1FD: STA    $C5     
       LDY    $C0     
       BEQ    LF208   
       STA    $C7     
       CLC            
       ADC    #$10    
LF208: LDY    $C1     
       BEQ    LF20E   
       STA    $C8     
LF20E: LDA    $BA     
       LDY    $B2     
       BMI    LF21D   
       CLC            
       ADC    #$04    
       CPY    #$00    
       BEQ    LF21D   
       ADC    #$04    
LF21D: STA    $C6     
       LDY    $C2     
       BEQ    LF227   
       STA    $C9     
       ADC    #$10    
LF227: LDX    $C3     
       BEQ    LF22F   
       STA    $CA     
       LDY    #$01    
LF22F: CPY    #$00    
       BEQ    LF236   
       CLC            
       ADC    #$10    
LF236: LDX    $C4     
       BEQ    LF23C   
       STA    $CB     
LF23C: LDA    #$1B    
       STA    $BE     
       LDA    $B7     
       STA    $B4     
       LDA    $B8     
       STA    $B5     
LF248: LDX    $88     
LF24A: BMI    LF26E   
       LDY    $F0     
       BEQ    LF26E   
       BMI    LF25F   
       LDA    $8E,X   
       BNE    LF25A   
       LDA    #$A1    
       STA    $8E,X   
LF25A: DEC    $8E,X   
       JMP    LF26B   
LF25F: LDA    $8E,X   
       CMP    #$A0    
       BNE    LF269   
       LDA    #$FF    
       STA    $8E,X   
LF269: INC    $8E,X   
LF26B: DEX            
       BPL    LF24A   
LF26E: JSR    LFB5C   
       LDA    $AE     
       BMI    LF292   
       LDY    #$74    
       LDX    #$05    
       CMP    #$06    
       BCC    LF281   
       LDY    #$67    
       LDX    #$07    
LF281: LDA    $F7     
       CMP    #$02    
       BCC    LF28E   
       STY    $F3
       BCS    LF290   
LF28B: JMP    LF581   
LF28E: STY    $D9     
LF290: STX    $98     
LF292: DEC    $9D     
       LDA    $9D     
       CMP    #$FB    
       BNE    LF29E   
       LDA    #$03    
       STA    $9D     
LF29E: LDX    $A4     
       DEX            
       STX    $A3     
       LDX    $E1     
       STX    $E0     
       LDX    #$05    
LF2A9: DEX            
       BEQ    LF2B9   
       LDA    $81,X   
       BEQ    LF2A9   
       CMP    #$01    
       BNE    LF2A9   
       DEC    $81,X   
       JSR    LF784   
LF2B9: LDA    $BE     
       CMP    #$FF    
       BNE    LF2C5   
       LDA    $88     
       BMI    LF28B   
       BPL    LF341   
LF2C5: LDA    $BE     
       ADC    #$06    
       STA    $BE     
       LDA    $B2     
       AND    #$01    
       BEQ    LF2D5   
       INC    $BE     
       INC    $BE     
LF2D5: LDA    $BE     
       CMP    #$C5    
       BCC    LF2E1   
       LDA    #$FF    
       STA    $BE     
       STA    $B3     
LF2E1: LDA    $BE     
       SEC            
       SBC    #$0E    
       STA    $BF     
       LDX    $A4     
LF2EA: DEX            
       BEQ    LF341   
       STX    $F1     
       LDA    $81,X   
       BNE    LF2EA   
       LDA    $9E,X   
       CMP    $BE     
       BCC    LF319   
       SBC    #$16    
       CMP    $BE     
       BCS    LF319   
       LDA    $98,X   
       LDX    #$01    
LF303: LDY    $C0,X   
       BEQ    LF316   
       CMP    $C7,X   
       BEQ    LF352   
       BCS    LF319   
       ADC    #$0B    
       CMP    $C7,X   
       BCS    LF352   
       SEC            
       SBC    #$0B    
LF316: DEX            
       BEQ    LF303   
LF319: LDX    $F1     
       LDA    $9E,X   
       CMP    $BF     
       BCC    LF2EA   
       SBC    #$16    
       CMP    $BF     
       BCS    LF2EA   
       LDA    $98,X   
       LDX    #$02    
LF32B: LDY    $C2,X   
       BEQ    LF33E   
       CMP    $C9,X   
       BEQ    LF352   
       BCS    LF341   
       ADC    #$0B    
       CMP    $C9,X   
       BCS    LF352   
       SEC            
       SBC    #$0B    
LF33E: DEX            
       BPL    LF32B   
LF341: LDA    $A8     
       BNE    LF3B9   
       LDA    $C5     
       LDX    #$02    
       JSR    LFE00   
       STA    WSYNC   
       STA    HMOVE   
       BMI    LF3BC   
LF352: LDX    $F1     
       LDA    $9E,X   
       CMP    $BD     
       BNE    LF36B   
       LDA    #$2D    
       JSR    LF568   
       LDA    #$0E    
       STA    $F5     
       STA    $AB     
       STA    $AF     
       LDA    #$00    
       STA    $BD     
LF36B: INC    $86     
       LDX    $AC     
       LDA    LFFF3,X 
       JSR    LF568   
       LDA    $AD     
       BNE    LF39F   
       LDA    $B6     
       CMP    #$13    
       BEQ    LF381   
       INC    $B6     
LF381: LDX    $AC     
       CPX    #$03    
       BCC    LF38F   
       LDA    #$12    
       JSR    LF560   
       JMP    LF395   
LF38F: LDA    LFDF8,X 
       JSR    LF564   
LF395: LDA    #$2D    
       STA    $F5     
       INC    $CE     
       LDA    #$00    
       STA    $BD     
LF39F: LDA    $AD     
       BMI    LF3A5   
       DEC    $AD     
LF3A5: LDX    $F1     
       LDA    #$0F    
       STA    $81,X   
       LDA    #$0E    
       STA    $A7     
       LDA    #$0F    
       STA    $A5     
       LDA    #$FF    
       STA    $B3     
       DEC    $A3     
LF3B9: JMP    LF581   
LF3BC: LDY    #$00    
LF3BE: LDX    $88     
       BMI    LF3FF   
LF3C2: LDA.wy $009E,Y 
       CMP    $8A,X   
       BCC    LF3D4   
       SBC    #$13    
       CMP    $8A,X   
       BCS    LF3D4   
       DEY            
       STY    $A3     
       BPL    LF3DE   
LF3D4: DEX            
       BPL    LF3C2   
       CPY    $A3     
       BCS    LF3DE   
       INY            
       BPL    LF3BE   
LF3DE: LDY    #$00    
LF3E0: LDX    $88     
LF3E2: LDA.wy $00E9,Y 
       CMP    $8A,X   
       BCC    LF3F5   
       SBC    #$05    
       CMP    $8A,X   
       BCS    LF3F5   
       DEY            
       STY    $E0     
       JMP    LF3FF   
LF3F5: DEX            
       BPL    LF3E2   
       CPY    $E0     
       BCS    LF3FF   
       INY            
       BPL    LF3E0   
LF3FF: LDA    INTIM   
       BNE    LF3FF   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMM0    
       LDA    #$02    
       STA    ENABL   
       STA    WSYNC   
LF412: LDA    $B0     
       LDX    $E0     
       BMI    LF421   
       CMP    $E9,X   
       BNE    LF421   
       JSR    LF51E   
       BPL    LF412   
LF421: LDX    #$00    
       CMP    $8A     
       BEQ    LF45B   
       CMP    $8B     
       BEQ    LF45A   
       CMP    $8C     
       BEQ    LF459   
       CMP    $8D     
       BEQ    LF458   
       CMP    $BE     
       BEQ    LF481   
       LDX    $A3     
       CMP    $9E,X   
       BNE    LF447   
       STA    WSYNC   
       SEC            
       SBC    #$11    
       STA    $B0     
       JSR    LFD38   
LF447: DEC    $B0     
       STA    WSYNC   
       BNE    LF412   
       LDA    $BC     
       STA    $BB     
       LDA    #$01    
       STA    $A8     
       JMP    LF69F   
LF458: INX            
LF459: INX            
LF45A: INX            
LF45B: STA    WSYNC   
       SEC            
       SBC    #$0B    
       STA    $B0     
       LDA    #$0F    
       STA    COLUP0  
       LDA    $8E,X   
       LDX    #$00    
       JSR    LFE00   
       STA    WSYNC   
       STA    HMOVE   
       STX    NUSIZ0  
       LDX    #$06    
LF475: LDA    LFECB,X 
       STA    WSYNC   
       STA    GRP0    
       DEX            
       BMI    LF447   
       BPL    LF475   
LF481: LDA    #$0F    
       STA    COLUP0  
       LDA    $B4     
       STA    WSYNC   
       LDX    $B2     
       BEQ    LF490   
       CLC            
       ADC    #$10    
LF490: STA    NUSIZ0  
       LDA    #$00    
       LDX    $B2     
       BEQ    LF49F   
       BPL    LF49C   
       LDA    #$E0    
LF49C: CLC            
       ADC    #$10    
LF49F: STA    HMM0    
       LDA    #$02    
       LDX    $B4     
       BPL    LF4A9   
       LDA    #$00    
LF4A9: STA    ENAM0   
       LDA    $B0     
       SEC            
       SBC    #$19    
       STA    $B0     
       LDY    #$00    
       LDX    #$09    
LF4B6: STA    WSYNC   
       STA    HMOVE   
       CPX    #$05    
       BNE    LF4C4   
       LDA    $B2     
       BEQ    LF4C4   
       STY    ENAM0   
LF4C4: DEX            
       BPL    LF4B6   
       STY    ENAM0   
       LDA    $B5     
       LDX    $B2     
       BEQ    LF4D2   
       CLC            
       ADC    #$10    
LF4D2: STA    NUSIZ0  
       LDA    $C6     
       LDX    #$02    
       JSR    LFE00   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$02    
       LDX    $B5     
       BPL    LF4E7   
       LDA    #$00    
LF4E7: STA    WSYNC   
       STA    ENAM0   
       LDA    #$00    
       LDX    $B2     
       BEQ    LF4F8   
       BPL    LF4F5   
       LDA    #$E0    
LF4F5: CLC            
       ADC    #$10    
LF4F8: STA    HMM0    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$03    
LF500: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BPL    LF500   
       INX            
       LDA    $B2     
       BEQ    LF50E   
       STX    ENAM0   
LF50E: LDY    #$03    
LF510: STA    WSYNC   
       STA    HMOVE   
       DEY            
       BPL    LF510   
       STX    ENAM0   
       STA    WSYNC   
       JMP    LF412   
LF51E: LDA    $E2,X   
       LDX    #$01    
       JSR    LFE00   
       LDA    INPT3   
       BMI    LF52D   
       INC    $BB     
       INC    $BB     
LF52D: STA    WSYNC   
       STA    HMOVE   
       JSR    LFFEB   
       DEC    $E0     
       LDA    $B0     
       SEC            
       SBC    #$05    
       STA    $B0     
       LDA    #$0F    
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ1  
       LDA    #$10    
       STA    WSYNC   
       STA    GRP1    
       JSR    LFFEB   
       JSR    LFFEB   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP1    
       RTS            

LF558: LDX    #$0A    
       BNE    LF56A   
LF55C: LDX    #$08    
       BNE    LF56A   
LF560: LDX    #$02    
       BNE    LF56A   
LF564: LDX    #$04    
       BNE    LF56A   
LF568: LDX    #$06    
LF56A: STX    $F7     
LF56C: CLC            
       ADC    $CF,X   
       SEC            
       SBC    #$5A    
       BCC    LF57C   
       STA    $CF,X   
       LDA    #$09    
       DEX            
       DEX            
       BPL    LF56C   
LF57C: ADC    #$5A    
       STA    $CF,X   
       RTS            

LF581: LDA    #$01    
       STA    $A8     
       LDA    $A4     
       CMP    #$01    
       BNE    LF5A4   
       LDA    $AD     
       CMP    #$F0    
       BCC    LF5A4   
       CMP    #$FF    
       BEQ    LF5A4   
       LDA    $9F     
       CMP    #$C5    
       BCS    LF5A4   
       AND    #$01    
       BNE    LF5A2   
       JMP    LF70E   
LF5A2: INC    $AD     
LF5A4: LDA    $B7     
       STA    NUSIZ0  
       LDA    $B9     
       LDX    #$00    
       STA    WSYNC   
       JSR    LFE00   
       STA    WSYNC   
       STA    HMOVE   
LF5B5: LDA    INTIM   
       BNE    LF5B5   
       STA    $BB     
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMP0    
       LDA    #$02    
       STA    ENABL   
       LDA    $F7     
       BPL    LF5CF   
       JMP    LFBF9   
LF5CF: STA    WSYNC   
LF5D1: LDA    $B0     
       LDX    $A3     
       BEQ    LF5ED   
       CMP    $9E,X   
       BNE    LF5ED   
       SEC            
       SBC    #$11    
       STA    $B0     
       STA    WSYNC   
       LDA    INPT3   
       BMI    LF5E8   
       INC    $BB     
LF5E8: JSR    LFD38   
       BMI    LF5FC   
LF5ED: CMP    #$29    
       BEQ    LF61F   
       LDX    $E0     
       BMI    LF5FC   
       CMP    $E9,X   
       BNE    LF5FC   
       JSR    LF51E   
LF5FC: DEC    $B0     
       LDA    INPT3   
       BMI    LF604   
       INC    $BB     
LF604: STA    WSYNC   
       JMP    LF5D1   
LF609: JSR    LFED2   
       BMI    LF641   
LF60E: STA    WSYNC   
       STX    PF2     
       STX    COLUPF  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JSR    LFED2   
       BMI    LF66B   
LF61F: LDA    $AE     
       BMI    LF629   
       LDA    #$28    
       EOR    $AE     
       STA    COLUP1  
LF629: LDX    $98     
       STX    NUSIZ1  
       LDX    #$01    
       LDA    $A6     
       STA    WSYNC   
       JSR    LFE00   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B9     
       BMI    LF609   
       JSR    LFD00   
LF641: LDA    $AD     
       BPL    LF64B   
       LDA    #$60    
       STA    PF2     
       DEC    COLUPF  
LF64B: LDA    $B8     
       STA    NUSIZ0  
       LDA    $F3     
       STA    $D9     
       LDX    #$00    
       STX    HMP1    
       LDA    $BA     
       BMI    LF60E   
       STA    WSYNC   
       STX    PF2     
       STX    COLUPF  
       JSR    LFE00   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFD00   
LF66B: STA    WSYNC   
       LDA    $AD     
       BPL    LF67B   
       LDA    #$98    
       STA    PF2     
       CMP    ($8A,X) 
       CMP    ($8A,X) 
       DEC    COLUPF  
LF67B: STA    WSYNC   
       LDA    #$00    
       STA    PF2     
       STA    COLUPF  
       STA    WSYNC   
       STA    WSYNC   
       LDA    INPT3   
       BMI    LF68F   
       LDA    #$F0    
       STA    $BB     
LF68F: STA    WSYNC   
       LDA    $88     
       BPL    LF69B   
       LDA    $BE     
       CMP    #$FF    
       BEQ    LF69F   
LF69B: LDA    #$00    
       STA    $A8     
LF69F: LDA    $87     
       STA    COLUBK  
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    REFP0   
       STX    REFP1   
       LDA    #$3A    
       JSR    LFE00   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $96     
       STA    $D9     
       LDX    #$01    
       STX    VDELP0  
       STX    VDELP1  
       LDA    #$42    
       JSR    LFE00   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$08    
LF6D3: STY    $94     
       LDA    ($D9),Y 
       STA    $F1     
       STA    WSYNC   
       LDA    ($CF),Y 
       STA    GRP0    
       LDA    ($D1),Y 
       STA    GRP1    
       LDA    ($D3),Y 
       STA    GRP0    
       LDA    ($D5),Y 
       NOP            
       TAX            
       LDA    ($D7),Y 
       LDY    $F1     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $94     
       DEY            
       BPL    LF6D3   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    #$18    
       STA    TIM64T  
       JMP    LF068   
LF70E: DEC    $AD     
       LDA    $BB     
       STA    $BC     
LF714: LDA    INTIM   
       BNE    LF714   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    NUSIZ0  
       LDX    #$08    
       STX    COLUP0  
       LDA    #$02    
       STA    ENABL   
LF72D: LDA    $B0     
       CMP    $9F     
       BNE    LF768   
       LDA    $99     
       LDX    #$00    
       JSR    LFE00   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B0     
       SEC            
       SBC    #$10    
       STA    $B0     
       LDY    #$0C    
LF747: CPY    #$04    
       BNE    LF755   
       LDA    $AC     
       AND    #$03    
       TAX            
       LDA    LFCFB,X 
       STA    COLUP0  
LF755: LDA    LFF81,Y 
       LDX    $9D     
       BMI    LF75F   
       LDA    LFF8E,Y 
LF75F: STA    WSYNC   
       STA    GRP0    
       DEY            
       BPL    LF747   
       BMI    LF72D   
LF768: LDX    $E0     
       BMI    LF773   
       CMP    $E9,X   
       BNE    LF773   
       JSR    LF51E   
LF773: STA    WSYNC   
       DEC    $B0     
       BNE    LF72D   
       LDA    $BC     
       STA    $BB     
       LDA    #$00    
       STA    $DF     
       JMP    LF69F   
LF784: CPX    #$04    
       BEQ    LF797   
       LDA    $99,X   
       STA    $98,X   
       LDA    $9F,X   
       STA    $9E,X   
       LDA    $82,X   
       STA    $81,X   
       INX            
       BPL    LF784   
LF797: LDA    $99     
       CLC            
       ADC    #$3F    
       CMP    #$9A    
       BCC    LF7A2   
       AND    #$7F    
LF7A2: CMP    #$08    
       BCS    LF7A8   
       ADC    #$08    
LF7A8: STA    $9C     
       LDA    $CE     
       AND    #$03    
       TAX            
       LDA    LFEF8,X 
       STA    $A2     
       DEC    $A4     
       LDA    #$00    
       STA    $85     
       RTS            

LF7BB: LDA    $F7     
       BMI    LF7C9   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF7C9   
       JMP    LF000   
LF7C9: LDX    #$08    
       LDA    $BB     
       STA    $BC     
       LDY    #$00    
       CMP    #$05    
       BCS    LF7DB   
       INY            
       INY            
LF7D7: LDA    #$B5    
       BNE    LF80D   
LF7DB: CMP    #$09    
       BCC    LF809   
       CMP    #$32    
       BCS    LF7E8   
       INY            
LF7E4: LDA    #$9B    
       BNE    LF80D   
LF7E8: CMP    #$37    
       BCC    LF809   
       LDX    #$00    
       CMP    #$73    
       BCS    LF7F6   
       LDA    #$81    
       BNE    LF80D   
LF7F6: CMP    #$77    
       BCC    LF809   
       CMP    #$E0    
       BCS    LF801   
       DEY            
       BMI    LF7E4   
LF801: CMP    #$AA    
       BCC    LF809   
       DEY            
       DEY            
       BMI    LF7D7   
LF809: LDA    $DE     
       LDY    $F0     
LF80D: STA    $DC     
       STA    $DE     
       STY    $F0     
       LDA    $9D     
       BMI    LF81E   
       LDA    $DC     
       CLC            
       ADC    #$0D    
       STA    $DC     
LF81E: STX    REFP0   
       LDA    SWCHA   
       EOR    $CC     
       BEQ    LF830   
       LDA    SWCHA   
       STA    $CC     
       AND    #$04    
       BEQ    LF838   
LF830: LDA    $BE     
       CMP    #$FF    
       BEQ    LF83E   
       BNE    LF85B   
LF838: LDA    $F0     
       STA    $B2     
       INC    $DF     
LF83E: LDY    $86     
       CPY    #$03    
       BCC    LF857   
       BEQ    LF84A   
       LDA    #$12    
       BPL    LF84C   
LF84A: LDA    #$09    
LF84C: JSR    LF560   
       LDA    #$0E    
       STA    $F5     
       STA    $AB     
       STA    $AF     
LF857: LDA    #$00    
       STA    $86     
LF85B: JMP    LF06B   
LF85E: LDA    $A7     
       BEQ    LF86E   
       DEC    $A7     
       LDA    $A7     
       CMP    #$80    
       BNE    LF86E   
       LDA    #$00    
       STA    $A7     
LF86E: LDY    #$00    
       LDX    #$00    
       LDA    $B1     
       BMI    LF898   
       DEC    $B1     
       AND    #$07    
       BNE    LF87E   
       INC    $AF     
LF87E: LDY    $A9     
       AND    #$01    
       BEQ    LF88E   
       LDA    #$1F    
       CPY    #$1F    
       BNE    LF88C   
       LDA    #$18    
LF88C: STA    $A9     
LF88E: LDX    $AF     
       LDA    #$FF    
       STA    $9F     
       LDA    #$04    
       BNE    LF8BA   
LF898: LDA    $B3     
       BMI    LF8AE   
       CMP    #$1E    
       BNE    LF8A6   
       STY    $A9     
       LDA    #$08    
       STA    AUDC0   
LF8A6: LDX    #$08    
       LDY    $A9     
       DEC    $A9     
       DEC    $B3     
LF8AE: LDA    $A5     
       BMI    LF8BC   
       DEC    $A5     
       LDY    #$1F    
       LDA    #$08    
       LDX    #$0F    
LF8BA: STA    AUDC0   
LF8BC: STY    AUDF0   
       STX    AUDV0   
       LDY    #$00    
       LDX    #$00    
       LDA    $89     
       BMI    LF8D4   
       LDX    $89     
       DEC    $89     
       LDY    $AA     
       INC    $AA     
       LDA    #$0A    
       STA    AUDC1   
LF8D4: LDA    $AE     
       BMI    LF8E2   
       DEC    $AE     
       LDX    #$06    
       LDA    #$07    
       STA    AUDC1   
       LDY    #$0F    
LF8E2: LDA    $F5     
       BEQ    LF90C   
       CMP    #$1E    
       BCC    LF8F4   
       BNE    LF90A   
       STA    $AB     
       LDX    #$0F    
       STX    $AF     
       BNE    LF8FE   
LF8F4: CMP    #$0F    
       BCS    LF8FE   
       DEC    $AB     
       DEC    $AB     
       DEC    $AF     
LF8FE: INC    $AB     
       INC    $AF     
       LDY    $AB     
       LDA    #$0C    
       STA    AUDC1   
       LDX    $AF     
LF90A: DEC    $F5     
LF90C: LDA    $95     
       BEQ    LF918   
       LDX    #$03    
       LDY    #$05    
       LDA    #$08    
       STA    AUDC1   
LF918: STY    AUDF1   
       STX    AUDV1   
       JMP    LF7BB   
LF91F: LDA    $AD     
       BPL    LF933   
       LDX    $A4     
       CPX    #$01    
       BNE    LF933   
       LDA    $88     
       BMI    LF930   
       JMP    LFA05   
LF930: JMP    LFA89   
LF933: LDA    $BD     
       BEQ    LF93C   
       SEC            
       SBC    $F9     
       STA    $BD     
LF93C: LDA    $9F     
       SEC            
       SBC    $F9     
       CMP    #$40    
       BCS    LF94A   
       LDX    #$01    
       JSR    LF784   
LF94A: LDX    $A4     
LF94C: DEX            
       BEQ    LF977   
       LDA    $9E,X   
       SEC            
       SBC    $F9     
       STA    $9E,X   
       LDA    $F0     
       BEQ    LF94C   
       BPL    LF96B   
       INC    $98,X   
       LDA    $98,X   
       CMP    #$A0    
       BCC    LF94C   
       LDA    #$00    
LF966: STA    $98,X   
       JMP    LF94C   
LF96B: DEC    $98,X   
       LDA    $98,X   
       CMP    #$A0    
       BCC    LF94C   
       LDA    #$A0    
       BNE    LF966   
LF977: LDA    $AD     
       BMI    LF9B2   
       LDX    $A4     
       CPX    #$05    
       BEQ    LF9B2   
       LDA    $9E,X   
       CMP    #$C5    
       BNE    LF9B0   
       LDX    $E1     
       LDA    $E9,X   
       CMP    #$A8    
       BCS    LF9B2   
       LDX    $A4     
       DEX            
       BEQ    LF99A   
       LDA    $9E,X   
       CMP    #$A8    
       BCS    LF9B2   
LF99A: LDX    $A4     
       LDA    #$00    
       STA    $81,X   
       INC    $A4     
       LDA    $AD     
       CMP    #$04    
       BNE    LF9B0   
       LDA    $BD     
       BNE    LF9B0   
       LDA    #$C4    
       STA    $BD     
LF9B0: DEC    $9E,X   
LF9B2: LDA    $AD     
       BMI    LFA05   
       LDY    $88     
       CPY    #$03    
       BEQ    LFA05   
       LDY    $A4     
LF9BE: DEY            
       BEQ    LFA05   
       LDA.wy $0081,Y 
       BNE    LF9BE   
       LDA.wy $009E,Y 
       LDX    $F9     
LF9CB: DEX            
       BMI    LF9BE   
       CMP    LFFCF,X 
       BNE    LF9CB   
       LDX    $88     
       SEC            
       SBC    #$0A    
       STA    $92     
       LDA.wy $0098,Y 
       STA    $8F,X   
       LDY    $88     
LF9E1: BMI    LF9F7   
       LDA.wy $008A,Y 
       CLC            
       ADC    #$0C    
       CMP    $92     
       BCC    LF9F4   
       SEC            
       SBC    #$19    
       CMP    $92     
       BCC    LFA05   
LF9F4: DEY            
       BPL    LF9E1   
LF9F7: LDA    $92     
       STA    $8B,X   
       LDA    #$0C    
       STA    $89     
       LDA    #$00    
       STA    $AA     
       INC    $88     
LFA05: LDX    $88     
       BPL    LFA0B   
       BMI    LFA89   
LFA0B: LDA    $8A,X   
       CMP    #$C4    
       BCS    LFA1F   
       SEC            
       SBC    $F9     
       SBC    #$01    
       STA    $8A,X   
       CMP    #$0D    
       BCS    LFA1F   
       JSR    LFEDE   
LFA1F: DEX            
       BPL    LFA0B   
       LDA    $AE     
       BPL    LFA89   
       LDY    #$00    
       LDX    #$04    
LFA2A: DEX            
       BMI    LFA89   
       LDA    $8A,X   
       CMP    #$28    
       BCS    LFA2A   
       CMP    #$1F    
       BCC    LFA4B   
       LDA    $8E,X   
       CMP    #$41    
       BCC    LFA89   
       CMP    #$4C    
       BCC    LFA6D   
       CMP    #$51    
       BCC    LFA89   
       CMP    #$5C    
       BCC    LFA6C   
       BCS    LFA89   
LFA4B: CMP    #$16    
       BCS    LFA2A   
       LDA    $8E,X   
       CMP    #$39    
       BCC    LFA89   
       CMP    #$44    
       BCC    LFA6B   
       CMP    #$49    
       BCC    LFA89   
       CMP    #$55    
       BCC    LFA6A   
       CMP    #$59    
       BCC    LFA89   
       CMP    #$65    
       BCS    LFA89   
       INY            
LFA6A: INY            
LFA6B: INY            
LFA6C: INY            
LFA6D: LDA.wy $00C0,Y 
       BEQ    LFA89   
       LDA    LFDFB,Y 
       STA    $A6     
       LDA    #$00    
       STA.wy $00C0,Y 
       STY    $F7     
       JSR    LFEDE   
       LDA    #$0C    
       STA    $AE     
       LDA    #$0F    
       STA    $A7     
LFA89: LDX    #$FF    
       LDY    #$FF    
       LDA    $C1     
       BEQ    LFA94   
       LDX    #$56    
       INY            
LFA94: LDA    $C0     
       BEQ    LFA9B   
       LDX    #$46    
       INY            
LFA9B: STX    $B9     
       STY    $B7     
       LDY    #$FF    
       LDX    #$FF    
       LDA    $C4     
       BEQ    LFAAA   
       INY            
       LDX    #$5E    
LFAAA: LDA    $C3     
       BEQ    LFAB1   
       INY            
       LDX    #$4E    
LFAB1: LDA    $C2     
       BEQ    LFAB8   
       INY            
       LDX    #$3E    
LFAB8: STX    $BA     
       CPY    #$02    
       BEQ    LFAC6   
       CPY    #$01    
       BNE    LFAC7   
       LDA    $C3     
       BNE    LFAC7   
LFAC6: INY            
LFAC7: STY    $B8     
       JMP    LF072   
LFACC: LDA    $E1     
       CMP    #$06    
       BEQ    LFB08   
       LDX    $A4     
       CPX    #$05    
       BNE    LFADB   
       DEX            
       BPL    LFAF4   
LFADB: LDA    $9E,X   
       CMP    #$C5    
       BEQ    LFB08   
       CPX    #$01    
       BNE    LFAF1   
       LDY    $AD     
       BPL    LFAFA   
       LDA    $9F     
       CMP    #$C5    
       BCS    LFAFA   
       BCC    LFAF4   
LFAF1: DEX            
       BEQ    LFAFA   
LFAF4: LDA    $9E,X   
       CMP    #$BC    
       BCS    LFB08   
LFAFA: LDX    $E1     
       LDA    $E9,X   
       CMP    #$B1    
       BCS    LFB08   
       INC    $E1     
       LDA    #$C4    
       STA    $EA,X   
LFB08: LDA    $E9     
       SEC            
       SBC    $F9     
       CMP    #$30    
       BCS    LFB2C   
       LDX    #$00    
       LDY    $E2     
LFB15: LDA    $EA,X   
       SEC            
       SBC    $F9     
       STA    $E9,X   
       LDA    $E3,X   
       STA    $E2,X   
       INX            
       CPX    $E1     
       BNE    LFB15   
       DEC    $E1     
       STY    $E2,X   
       JMP    LFB38   
LFB2C: LDX    $E1     
LFB2E: LDA    $E9,X   
       SEC            
       SBC    $F9     
       STA    $E9,X   
       DEX            
       BPL    LFB2E   
LFB38: LDX    #$06    
LFB3A: LDA    $F0     
       BEQ    LFB59   
       BMI    LFB4A   
       DEC    $E2,X   
       BNE    LFB56   
       LDA    #$A0    
       STA    $E2,X   
       BNE    LFB56   
LFB4A: INC    $E2,X   
       LDA    $E2,X   
       CMP    #$A1    
       BNE    LFB56   
       LDA    #$01    
       STA    $E2,X   
LFB56: DEX            
       BPL    LFB3A   
LFB59: JMP    LF91F   
LFB5C: LDX    #$06    
       LDY    $B2     
       BEQ    LFB88   
       BMI    LFB76   
LFB64: LDA    $C5,X   
       CPY    #$01    
       CLC            
       BEQ    LFB6D   
       ADC    #$01    
LFB6D: ADC    #$02    
       STA    $C5,X   
       DEX            
       BPL    LFB64   
       BMI    LFB9E   
LFB76: LDA    $C5,X   
       SEC            
       CPY    #$FE    
       BNE    LFB7F   
       SBC    #$01    
LFB7F: SBC    #$02    
       STA    $C5,X   
       DEX            
       BPL    LFB76   
       BMI    LFB9E   
LFB88: LDA    $F0     
       BEQ    LFBB3   
       BMI    LFB97   
       LDX    #$06    
LFB90: DEC    $C5,X   
       DEX            
       BPL    LFB90   
       BMI    LFB9E   
LFB97: LDX    #$06    
LFB99: INC    $C5,X   
       DEX            
       BPL    LFB99   
LFB9E: LDA    $B8     
       BPL    LFBA9   
       LDA    $C5     
       CMP    #$98    
       JMP    LFBAD   
LFBA9: LDA    $C6     
       CMP    #$8C    
LFBAD: BCC    LFBB3   
       LDA    #$FF    
       STA    $BE     
LFBB3: RTS            

LFBB4: LDA    #$09    
       STA    $AD     
       LDA    $F7     
       BMI    LFBC8   
       LDA    $CE     
       AND    #$03    
       BNE    LFBC8   
       INC    $AC     
       LDA    #$7F    
       STA    $B1     
LFBC8: LDX    #$FF    
       STX    $9F     
       INX            
       STX    $95     
       RTS            

LFBD0: JSR    LFBB4   
       LDA    $A7     
       STA    $95     
       BEQ    LFBE5   
       BMI    LFBDF   
       LDA    #$01    
       STA    $A7     
LFBDF: DEC    $A7     
       DEC    $A7     
       BNE    LFBF0   
LFBE5: LDA    $DF     
       BEQ    LFBF0   
       DEC    $DF     
       INC    $F7     
       JMP    LF013   
LFBF0: LDA    #$00    
       STA    $DF     
       STA    REFP0   
       JMP    LF5B5   
LFBF9: LDA    #$4A    
       LDX    #$01    
       JSR    LFE00   
       LDA    #$52    
       LDX    #$00    
       JSR    LFE00   
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$27    
       STA    TIM64T  
       LDY    #$09    
       STY    $98     
       STY    $F1     
       LDX    $CE     
LFC1C: DEX            
       BMI    LFC35   
       TYA            
       CLC            
       ADC    $98     
       CMP    #$63    
       BNE    LFC28   
       TYA            
LFC28: STA    $98     
       CMP    #$09    
       BNE    LFC1C   
       CLC            
       ADC    $F1     
       STA    $F1     
       BNE    LFC1C   
LFC35: LDA    INTIM   
       BNE    LFC35   
LFC3A: DEC    $F1     
       DEC    $98     
       LDX    $F1     
       LDA    LFF00,X 
       LDX    $98     
       STA    WSYNC   
       STA    GRP1    
       LDA    LFF00,X 
       STA    GRP0    
       DEY            
       BPL    LFC3A   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       LDA    #$42    
       JSR    LFE00   
       LDA    #$4A    
       LDX    #$01    
       JSR    LFE00   
       STA    WSYNC   
       STA    HMOVE   
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    $93     
       AND    #$F0    
       STA    $92     
       LDX    #$2D    
       JSR    LFCF4   
       LDX    #$0F    
       LDY    $DB     
LFC7A: LDA    $92     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    LFDAB,Y 
       STA    GRP0    
       LDA    LFDBE,Y 
       NOP            
       NOP            
       STA    GRP1    
       LDA    LFDD1,Y 
       INC.w  $0092   
       STA    GRP0    
       LDA    LFDE4,Y 
       NOP            
       STA    GRP1    
       STA    GRP0    
       DEY            
       BPL    LFCA9   
       LDY    #$13    
LFCA9: DEX            
       BPL    LFC7A   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       DEC    $9D     
       BMI    LFCBC   
       BNE    LFCD5   
LFCBC: LDA    #$08    
       STA    $9D     
       DEC    $DB     
       BPL    LFCD5   
       LDA    #$13    
       STA    $DB     
       LDA    $93     
       CLC            
       ADC    #$10    
       STA    $93     
       STA    $87     
       ADC    #$80    
       STA    $80     
LFCD5: LDY    #$23    
LFCD7: STA    WSYNC   
       DEY            
       BNE    LFCD7   
       LDA    $B9     
       LDX    #$00    
       JSR    LFE00   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B7     
       STA    NUSIZ0  
       LDA    #$00    
       STA    WSYNC   
       STA    HMP0    
       JMP    LF61F   
LFCF4: DEX            
LFCF5: STA    WSYNC   
       DEX            
       BPL    LFCF5   
       RTS            

LFCFB: .byte $40,$42,$0F,$0F,$01
LFD00: STA    WSYNC   
       LDY    #$07    
       LDA    SWCHB   
       AND    #$08    
       BNE    LFD0D   
       LDY    #$0E    
LFD0D: LDX    $BE     
       BPL    LFD15   
       LDX    $88     
       BMI    LFD16   
LFD15: INY            
LFD16: STY    COLUP0  
       LDY    #$0D    
LFD1A: DEY            
       BMI    LFD37   
       LDA    ($DC),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($D9),Y 
       STA    GRP1    
       CPY    #$04    
       BNE    LFD1A   
       LDA    $AC     
       AND    #$03    
       TAX            
       LDA    LFCFB,X 
       STA    COLUP0  
       BNE    LFD1A   
LFD37: RTS            

LFD38: LDA    #$00    
       STA    NUSIZ1  
       LDX    $A3     
       LDA    $97     
       LDY    $9E,X   
       CPY    $BD     
       BNE    LFD48   
       ADC    $BD     
LFD48: STA    COLUP1  
       LDA    $98,X   
       LDX    #$01    
       JSR    LFE00   
       LDA    INPT3   
       BMI    LFD5B   
       INC    $BB     
       INC    $BB     
       INC    $BB     
LFD5B: STA    WSYNC   
       STA    HMOVE   
       LDX    $A3     
       DEC    $A3     
       LDA    $81,X   
       BNE    LFD7C   
       LDY    #$0D    
LFD69: DEY            
       BMI    LFDAA   
       LDA    LFEBE,Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    INPT3   
       BMI    LFD79   
       INC    $BB     
LFD79: JMP    LFD69   
LFD7C: DEC    $81,X   
       LDY    #$4F    
       CMP    #$0A    
       BCS    LFD8A   
       LDY    #$05    
       STY    NUSIZ1  
       LDY    #$45    
LFD8A: STY    COLUP1  
       LDY    #$0C    
LFD8E: LDA    LFF67,Y 
LFD91: STA    WSYNC   
       STA    GRP1    
       LDA    INPT3   
       BMI    LFD9B   
       INC    $BB     
LFD9B: DEY            
       BMI    LFDAA   
       LDA    $81,X   
       CMP    #$07    
       BCS    LFD8E   
       LDA    LFF74,Y 
       JMP    LFD91   
LFDAA: RTS            

LFDAB: .byte $00,$FC,$02,$02,$7C,$80,$80,$7E,$00,$00,$00,$7C,$82,$BA,$A2,$BA
       .byte $82,$7C,$00
LFDBE: .byte $00,$FE,$80,$80,$F8,$80,$80,$FE,$00,$00,$00,$70,$20,$20,$23,$24
       .byte $64,$23,$00
LFDD1: .byte $00,$7E,$82,$82,$9E,$80,$82,$7C,$00,$00,$00,$4E,$51,$51,$CE,$51
       .byte $51,$8E,$00
LFDE4: .byte $00,$82,$82,$FE,$82,$82,$44,$38,$00,$00,$00,$7C,$20,$10,$08,$04
       .byte $44,$38,$00,$00
LFDF8: .byte $09,$12,$2D
LFDFB: .byte $46,$56,$3E,$4E,$5E
LFE00: TAY            
       LDA    LFE1D,Y 
       PHA            
       AND    #$0F    
       TAY            
       PLA            
       STA    WSYNC   
LFE0B: DEY            
       BPL    LFE0B   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       RTS            

LFE15: .byte $90,$00,$50,$10
LFE19: .byte $40,$20,$90,$73
LFE1D: .byte $73,$63,$53,$43,$33,$23,$13,$03,$F3,$E3,$D3,$C3,$B3,$A3,$93,$74
       .byte $64,$54,$44,$34,$24,$14,$04,$F4,$E4,$D4,$C4,$B4,$A4,$94,$75,$65
       .byte $55,$45,$35,$25,$15,$05,$F5,$E5,$D5,$C5,$B5,$A5,$95,$76,$66,$56
       .byte $46,$36,$26,$16,$06,$F6,$E6,$D6,$C6,$B6,$A6,$96,$77,$67,$57,$47
       .byte $37,$27,$17,$07,$F7,$E7,$D7,$C7,$B7,$A7,$97,$78,$68,$58,$48,$38
       .byte $28,$18,$08,$F8,$E8,$D8,$C8,$B8,$A8,$98,$79,$69,$59,$49,$39,$29
       .byte $19,$09,$F9,$E9,$D9,$C9,$B9,$A9,$99,$7A,$6A,$5A,$4A,$3A,$2A,$1A
       .byte $0A,$FA,$EA,$DA,$CA,$BA,$AA,$9A,$7B,$6B,$5B,$4B,$3B,$2B,$1B,$0B
       .byte $FB,$EB,$DB,$CB,$BB,$AB,$9B,$7C,$6C,$5C,$4C,$3C,$2C,$1C,$0C,$FC
       .byte $EC,$DC,$CC,$BC,$AC,$9C,$7D,$6D,$5D,$4D,$3D,$2D,$1D,$0D,$FD,$ED
       .byte $DD
LFEBE: .byte $00,$18,$18,$24,$7E,$FF,$FF,$FF,$E7,$C3,$81,$81,$81
LFECB: .byte $00,$42,$42,$42,$42,$42,$42
LFED2: LDY    #$0D    
LFED4: LDA    ($D9),Y 
       STA    WSYNC   
       STA    GRP1    
       DEY            
       BPL    LFED4   
       RTS            

LFEDE: STX    $F1     
       DEC    $88     
LFEE2: CPX    #$03    
       BEQ    LFEF1   
       LDA    $8F,X   
       STA    $8E,X   
       LDA    $8B,X   
       STA    $8A,X   
       INX            
       BPL    LFEE2   
LFEF1: LDA    #$FF    
       STA    $8D     
       LDX    $F1     
       RTS            

LFEF8: .byte $F0,$E0,$D0,$D0
LFEFC: .byte $25,$0F,$D4,$54
LFF00: .byte $7E,$42,$42,$42,$42,$42,$42,$42,$7E,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$7E,$40,$40,$40,$7E,$02,$02,$02,$7E,$7E,$02,$02,$02,$7E
       .byte $02,$02,$02,$7E,$02,$02,$02,$02,$7E,$42,$42,$42,$42,$7E,$02,$02
       .byte $02,$7E,$40,$40,$40,$7E,$7E,$42,$42,$42,$7E,$40,$40,$40,$40,$02
       .byte $02,$02,$02,$02,$02,$02,$02,$7E,$7E,$42,$42,$42,$7E,$42,$42,$42
       .byte $7E,$02,$02,$02,$02,$7E,$42,$42,$42,$7E,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00
LFF67: .byte $00,$20,$92,$00,$24,$05,$40,$22,$00,$24,$80,$00,$21
LFF74: .byte $00,$80,$00,$00,$01,$00,$00,$40,$00,$00,$02,$00,$80
LFF81: .byte $00,$00,$00,$00,$00,$00,$81,$66,$7E,$3C,$3C,$18,$18
LFF8E: .byte $00,$10,$18,$38,$00,$00,$81,$66,$7E,$3C,$3C,$18,$18,$00,$00,$00
       .byte $00,$80,$80,$C0,$60,$78,$7F,$3C,$38,$20,$00,$06,$0E,$0C,$8C,$80
       .byte $C0,$60,$78,$7F,$3C,$38,$20,$00,$00,$00,$00,$80,$80,$C0,$C0,$E0
       .byte $E0,$F0,$F8,$FC,$00,$00,$06,$0E,$8C,$8C,$C0,$C0,$E0,$E0,$F0,$F8
       .byte $FC
LFFCF: .byte $C4,$A6,$4C,$90
LFFD3: .byte $40,$50,$38,$48,$58
LFFD8: .byte $4E,$5E,$47,$57,$67
LFFDD: .byte $1E,$78,$3C,$5A,$96,$2D,$69
LFFE4: .byte $2F,$3D,$4E,$5E,$6F,$80,$90
LFFEB: LDA    INPT3   
       BMI    LFFF1   
       INC    $BB     
LFFF1: RTS            

LFFF2: .byte $00
LFFF3: .byte $09,$12,$1B,$24,$2D,$36,$3F,$48,$51,$00,$F0,$00,$F0
