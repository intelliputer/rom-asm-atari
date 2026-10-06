; Disassembly of roms/Super Challenge Baseball.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Super Challenge Baseball.bin
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
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMM0    =  $22
HMM1    =  $23
VDELP0  =  $25
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF00A   =   $F00A
LF788   =   $F788
LF9E3   =   $F9E3

       ORG $F000
LF000: NOP            
       NOP            
       BPL    LF022   
LF004: STA.w  $002B   
       BPL    LF02A   
LF009: STA    HMCLR   
       TYA            
       AND    #$F8    
       EOR    #$FF    
       ADC    #$C8    
       STA    $8C     
       BNE    LF038   
LF016: STA    WSYNC   
       STA    HMOVE   
       LDA    ($80),Y 
       BPL    LF000   
       LDA    ($8A),Y 
       STA    GRP0    
LF022: LDA    ($82),Y 
       BPL    LF004   
       LDA    ($8E),Y 
       STA    GRP1    
LF02A: LDA    ($84),Y 
       BPL    LF009   
       LDA    ($90),Y 
       STA    HMM1    
       STA    ENAM1   
       ASL            
       ASL            
       STA    NUSIZ1  
LF038: LDA    ($8C),Y 
       STA    HMM0    
       STA    ENAM0   
       ASL            
       ASL            
       STA    NUSIZ0  
       STA    HMOVE   
       LDA    LFF00,Y 
       ASL            
       ASL            
       EOR    $9B     
       STA    PF0     
       LDA    ($86),Y 
       STA    ENABL   
       LDA    LFF68,Y 
       EOR    $9B     
       STA    PF1     
       LDA    LFF69,Y 
       EOR    $9B     
       STA    PF2     
       BCS    LF0D1   
       LDX    #$00    
       LDA    ($82),Y 
       BEQ    LF071   
       LDA    ($84),Y 
       BEQ    LF097   
       LDA    ($80),Y 
       BNE    LF0E4   
       BEQ    LF0C5   
LF071: LDA    $88     
       STA    $82     
       LDA    $92     
       STA    $8E     
       NOP            
       INY            
       STA    HMCLR   
       STA    HMOVE   
       LDA    ($80),Y 
       BPL    LF093   
       LDA    ($8A),Y 
       STA    GRP0    
LF087: STX    $88     
       LDX    #$01    
       LDA    $99     
       STA.w  $0095   
       JMP    LF0F9   
LF093: NOP            
       NOP            
       BPL    LF087   
LF097: PLA            
       PHA            
       INY            
       STA    HMCLR   
       STA    HMOVE   
       LDA    ($80),Y 
       BPL    LF0BD   
       LDA    ($8A),Y 
       STA    GRP0    
LF0A6: LDA    ($82),Y 
       BPL    LF0C1   
       LDA    ($8E),Y 
       STA    GRP1    
LF0AE: LDA    $89     
       STA    $84     
       LDA    $93     
       STA    $90     
       STX    $89     
       LDX    #$03    
       JMP    LF178   
LF0BD: NOP            
       NOP            
       BPL    LF0A6   
LF0C1: NOP            
       NOP            
       BPL    LF0AE   
LF0C5: STA    HMCLR   
       STA    HMOVE   
       STX    $80     
       INY            
       PLA            
       PHA            
       JMP    LF0F1   
LF0D1: INC    $9E     
       LDX    $9E     
       CPX    $9A     
       BNE    LF0DD   
       LDA    #$70    
       BNE    LF0E0   
LF0DD: LDA    LFFF0,X 
LF0E0: STA    $96     
       LDX    #$02    
LF0E4: INY            
       STA    HMCLR   
       STA    HMOVE   
       LDA    ($80),Y 
       BPL    LF164   
       LDA    ($8A),Y 
       STA    GRP0    
LF0F1: LDA    ($82),Y 
LF0F3: BPL    LF167   
       LDA    ($8E),Y 
       STA    GRP1    
LF0F9: LDA    ($84),Y 
       BPL    LF16A   
       LDA    ($90),Y 
       STA    HMM1    
       STA    ENAM1   
       ASL            
       ASL            
       STA    NUSIZ1  
LF107: LDA    ($8C),Y 
       STA    HMM0    
       STA    ENAM0   
       ASL            
       ASL            
       STA    NUSIZ0  
       STA    HMOVE   
       LDA    $94,X   
       BEQ    LF151   
       AND    #$0F    
       CMP    #$05    
       BCS    LF133   
       SEC            
LF11E: SBC    #$01    
       BPL    LF11E   
       STA    RESP0,X 
       LDA    ($86),Y 
       STA    ENABL   
       STA    HMCLR   
       LDA    $94,X   
       STA    HMP0,X  
       INY            
       SEC            
       JMP    LF016   
LF133: LDA    ($86),Y 
       STA    ENABL   
       INY            
       STA    HMCLR   
       LDA    $94,X   
       STA    HMP0,X  
       AND    #$0F    
       SBC    #$04    
LF142: SBC    #$01    
       BNE    LF142   
       STA.wx $0010,X 
       JMP    LF016   
LF14C: .byte $95,$10,$4C,$16,$F0
LF151: CPY    #$5F    
       BEQ    LF17B   
       LDA    ($86),Y 
       BNE    LF15B   
       STA    $86     
LF15B: STA    ENABL   
       INY            
       STA    HMCLR   
       SEC            
       JMP    LF016   
LF164: NOP            
       BPL    LF0F1   
LF167: NOP            
       BPL    LF0F9   
LF16A: CPY    $9F     
       BNE    LF176   
       STX    $94     
       LDA    $3F     
       LDX    #$04    
       BNE    LF107   
LF176: DEC    $3F     
LF178: NOP            
       BNE    LF107   
LF17B: STX    VBLANK  
       LDX    #$1E    
       STX    TIM64T  
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       RTS            

LF189: LDY    #$0C    
LF18B: LDX    LF197,Y 
       LDA    LF1A4,Y 
       STA    VSYNC,X 
       DEY            
       BPL    LF18B   
       RTS            

LF197: .byte $81,$83,$85,$87,$8B,$8F,$91,$8D,$A7,$AB,$A5,$A9,$0A
LF1A4: .byte $FF,$FF,$FF,$FF,$FE,$FE,$FF,$FF,$FE,$FE,$FE,$FE,$11
LF1B1: LDY    #$01    
LF1B3: TYA            
       ASL            
       TAX            
       LDA.wy $00B6,Y 
       AND    #$F0    
       LSR            
       ADC    #$32    
       STA    $A4,X   
       LDA.wy $00B6,Y 
       AND    #$0F    
       JSR    LF2E7   
       STA    $A8,X   
       DEY            
       BPL    LF1B3   
LF1CD: LDA    INTIM   
       BPL    LF1CD   
       STX    $9E     
       STX    HMCLR   
       LDY    $9F     
       BNE    LF205   
       LDA    $9B     
       STA    PF0     
       STA    PF1     
       STA    PF2     
       AND    #$DC    
       EOR    #$D4    
       STA    COLUBK  
       EOR    #$DC    
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDX    $9C     
       STX    REFP0   
       LDX    #$04    
LF1F8: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    LF1F8   
       STX    $94     
       SEC            
       JMP    LF016   
LF205: LDA    #$D4    
       STA    COLUBK  
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STX    WSYNC   
       STX    HMOVE   
       STX    VBLANK  
       LDA    #$01    
       STA    VDELP0  
       STA    REFP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$20    
       STA    $A0     
       LDA    #$90    
       STA    $A1     
       LDA    $A2     
       LDY    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
LF237: LDA    $A0     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($A6),Y 
       STA    GRP0    
       LDA    ($AA),Y 
       STA    GRP1    
       LDA    ($A4),Y 
       STA    GRP0    
       LDA    ($A8),Y 
       STA    GRP1    
       LDA    $A1     
       STA    COLUP0  
       STA    COLUP1  
       INX            
       LDA    LF2EC,X 
       STA.w  $001F   
       BMI    LF265   
       BEQ    LF2A8   
       LSR            
       LSR            
       TAY            
       STA    HMOVE   
       BPL    LF237   
LF265: LDA    #$0E    
       STA    $A0     
       STA    $A1     
       STA    HMOVE   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       LDA    $B8     
       JSR    LF2E7   
       STA.w  $0010   
       STA.w  $0011   
       STA    $A6     
       LDA    $B9     
       JSR    LF2E7   
       STA    $AA     
       LDA    $BB     
       STA    HMOVE   
       LSR            
       CLC            
       ADC    #$01    
       JSR    LF2E7   
       STA    $A8     
       LDA    $BA     
       JSR    LF2E7   
       STA    $A4     
       LDA    #$02    
       STA    NUSIZ0  
       STA    NUSIZ1  
       JSR    LF2EC   
       STA    HMOVE   
       BNE    LF237   
LF2A8: STA    GRP0    
       STA    GRP1    
       STA    HMOVE   
       LDX    #$02    
       STX    ENAM0   
       LDX    #$10    
       STX    NUSIZ0  
       LDX    $A2     
       STX    COLUP0  
       LDX    $A3     
       STX    COLUP1  
       LDX    $9C     
       STX    REFP0   
       INC    $9E     
       STA    VDELP0  
       STA    NUSIZ1  
       LDY    #$09    
       JSR    LF2E7   
       LDA    $9B     
       STA    PF2     
       STA    PF1     
       STA    PF0     
       STA    HMOVE   
       AND    #$DC    
       EOR    #$D4    
       STA    COLUBK  
       EOR    #$DC    
       STA.w  $0008   
       LDX    #$01    
       JMP    LF0F3   
LF2E7: ASL            
       ASL            
       ASL            
       ADC    #$32    
LF2EC: RTS            

LF2ED: .byte $01,$04,$04,$0A,$0A,$0C,$0C,$12,$12,$16,$16,$82,$06,$0A,$0E,$10
       .byte $14,$00

START:
LF2FF: SEI            
       CLD            
       LDA    #$00    
       TAX            
LF304: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF304   
       JSR    LF189   
       JSR    LF96F   
LF310: INC    $B1     
       LDA    SWCHB   
       LSR            
       BCC    LF2FF   
       JSR    LFA6E   
       JSR    LF358   
       JSR    LF71D   
       JSR    LF9F3   
       JSR    LFA24   
       JSR    LF3C0   
LF32A: LDA    INTIM   
       BNE    LF32A   
       LDX    #$03    
       STA    WSYNC   
       STX    VSYNC   
LF335: STA    WSYNC   
       DEX            
       BNE    LF335   
       STX    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       JSR    LF4CE   
       JSR    LF788   
       JSR    LFD07   
       JSR    LF666   
       JSR    LFB32   
       STA    CXCLR   
       JSR    LF1B1   
       JMP    LF310   
LF358: LDA    $E0     
       CLC            
       ADC    #$17    
       AND    #$1F    
       STA    $E0     
       LDX    #$05    
LF363: LDA    $CA,X   
       CLC            
       ADC    $E0     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$04    
       SEC            
       SBC    #$04    
       CLC            
       ADC    $BE,X   
       CMP    #$92    
       BCS    LF3AC   
       STA    $BE,X   
LF37B: LDA    $D0,X   
       CLC            
       ADC    $E0     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$04    
       SEC            
       SBC    #$04    
       CLC            
       ADC    $C4,X   
       CMP    #$59    
       BCS    LF3AF   
       STA    $C4,X   
LF393: DEX            
       BPL    LF363   
LF396: LDA    $AE     
       BPL    LF3AB   
       LDA    $BF     
       STA    $BE     
       LDA    $C5     
       CLC            
       ADC    #$03    
       CMP    #$58    
       BCC    LF3A9   
       LDA    #$57    
LF3A9: STA    $C4     
LF3AB: RTS            

LF3AC: TXA            
       BNE    LF37B   
LF3AF: TXA            
       BNE    LF393   
       STA    $CA     
       STA    $D0     
       BEQ    LF396   
LF3B8: STA    $43     
       BRK            
       .byte $43 ;.SRE
LF3BC: AND    ($3C,X) 
       AND    ($02,X) 
LF3C0: LDY    $AE     
       BPL    LF3F2   
       LDA    $B1     
       LSR            
       AND    #$03    
       TAX            
       BCC    LF3F3   
       LDA    $DC,X   
       SBC    #$0A    
       CMP    #$E1    
       BCC    LF3DB   
       TXA            
       BNE    LF3F2   
       LDA    $DC,X   
       BPL    LF3F2   
LF3DB: LDA    $C6,X   
       BMI    LF3F2   
       SEC            
       SBC    $C5     
       ADC    #$06    
       CMP    #$0E    
       BCS    LF3F2   
       LDA    $C0,X   
       SBC    $BF     
       ADC    #$07    
       CMP    #$0E    
       BCC    LF41A   
LF3F2: RTS            

LF3F3: LDY    $DC,X   
       CPY    #$0A    
       BCC    LF3F2   
LF3F9: LDY    $C6,X   
       BMI    LF3F2   
       DEX            
       BPL    LF3F9   
       TAX            
       LDA    $AE     
       AND    #$08    
       BNE    LF3F2   
       LDA    $C5     
       SBC    LF3BC,X 
       CMP    #$09    
       BCS    LF3F2   
       LDA    $BF     
       SEC            
       SBC    LF3B8,X 
       CMP    #$09    
       BCS    LF3F2   
LF41A: JMP    LF954   
LF41D: .byte $00,$07
LF41F: .byte $0A,$07,$00,$F9,$F6,$F9,$00,$07
LF427: .byte $00,$01
LF429: .byte $01,$01,$00,$FF,$FF,$FF,$00,$01
LF431: .byte $46,$1A,$82,$50,$0B,$47,$8C,$00,$47
LF43A: .byte $58,$50,$48,$40,$38,$30,$28,$00,$00
LF443: .byte $00,$00,$00,$0A,$10,$00,$08,$00,$0A
LF44C: .byte $00,$00,$00,$E5,$F2,$00,$F4,$00,$00
LF455: .byte $00,$00,$00,$00,$DA,$00,$F4,$00,$12
LF45E: .byte $46,$1A,$82,$47,$04,$47,$89,$00,$47
LF467: .byte $58,$50,$48,$40,$25,$30,$25,$00
LF46F: .byte $06,$06,$03,$04
LF473: .byte $08,$02,$00,$01,$08
LF478: DEC    $DB     
       BNE    LF4CD   
       DEX            
       STX    $CB     
       STX    $D1     
       LDX    $9A     
       LDA    LF45E,X 
       STA    $BF     
       LDA    LF467,X 
       STA    $C5     
       RTS            

LF48E: BCC    LF4CD   
       AND    #$10    
       BEQ    LF4CD   
       LDA    $AE     
       EOR    #$E0    
       STA    $AE     
       LDA    #$F2    
       STA    $D0     
       LDA    #$00    
       STA    $CA     
       LDA    #$28    
       STA    $D6     
       LDX    #$04    
       JMP    LFA55   
LF4AB: LDA    $C4     
       CMP    #$14    
       BCC    LF4CD   
       LDA    $B1     
       LSR            
       BCS    LF4CD   
       TAX            
       LDA    LF427,Y 
       ADC    $D0     
       CMP    #$F6    
       BCS    LF4C2   
       STA    $D0     
LF4C2: TXA            
       LSR            
       BCS    LF4CD   
       LDA    LF429,Y 
       ADC    $CA     
       STA    $CA     
LF4CD: RTS            

LF4CE: LDX    $DB     
       BNE    LF478   
       LDA    $AF     
       LSR            
       BCS    LF4CD   
       LDX    $B4     
       LDA    $E4,X   
       BMI    LF507   
       LDY    $E6,X   
       BPL    LF4F0   
       INY            
       STY    $CB     
       STY    $D1     
       LDA    $E1     
       STY    $E1     
       BPL    LF4CD   
       LDY    #$05    
       BPL    LF552   
LF4F0: LDA    $AE     
       ASL            
       BMI    LF48E   
       ASL            
       BMI    LF4AB   
       LDA    LF41F,Y 
       STA    $CB     
       LDA    LF41D,Y 
       STA    $D1     
LF502: LDA    #$00    
       STA    $9F     
       RTS            

LF507: LDA    $AE     
       AND    #$21    
       BNE    LF4CD   
       STA    $CB     
       STA    $D1     
       LDA    $E6,X   
       BMI    LF52C   
       INC    $AE     
       LSR            
       BCS    LF533   
       TAX            
       INX            
       LDY    LF46F,X 
       CPX    $E1     
       BNE    LF538   
       CPY    $9A     
       BNE    LF54F   
       LDA    $AE     
       BPL    LF54C   
       RTS            

LF52C: LDA    $E1     
       BNE    LF537   
       DEC    $E1     
       RTS            

LF533: LDA    #$05    
       STA    $E1     
LF537: RTS            

LF538: LDA    $AE     
       BMI    LF542   
       LDA    $E1     
       CMP    #$06    
       BEQ    LF537   
LF542: STX    $E1     
       CPY    $9A     
       BNE    LF54F   
       LDA    $AE     
       BMI    LF54F   
LF54C: LDY    LF473,X 
LF54F: JSR    LF502   
LF552: CPY    $9A     
       BNE    LF561   
       CPY    #$05    
       BNE    LF537   
       LDA    $AE     
       BPL    LF537   
       ASL            
       BMI    LF537   
LF561: LDA    #$40    
       STA    $D6     
       LDA    $AE     
       AND    #$BF    
       STA    $AE     
       BPL    LF5D1   
       LDX    #$06    
       STX    $E1     
       CPY    #$05    
       BNE    LF57D   
       ORA    #$50    
       STA    $AE     
       LDA    #$98    
       STA    $D6     
LF57D: LDA    LF443,Y 
       STA    $DB     
       LDA    LF44C,Y 
       STA    $CB     
       LDA    LF455,Y 
       STA    $D1     
       LDA    LF45E,Y 
       SEC            
       SBC    $BE     
       ROR            
       EOR    #$80    
       STA    $CA     
       BPL    LF59B   
       EOR    #$FF    
LF59B: STA    $AD     
       LDA    LF467,Y 
       CLC            
       SBC    $C4     
       TAX            
       ROL            
       TXA            
       ROR            
       STA    $D0     
       BPL    LF5AD   
       EOR    #$FF    
LF5AD: CMP    $AD     
       BCS    LF5B6   
       LDX    $AD     
       STA    $AD     
       TXA            
LF5B6: ASL            
       ADC    $AD     
       LDX    $C4     
       CPX    #$48    
       BCC    LF5C1   
       ADC    #$0A    
LF5C1: CMP    #$55    
       BCS    LF5F2   
       CMP    #$3C    
       BCS    LF5D4   
       CMP    #$24    
       BCS    LF601   
       ASL    $CA     
       ASL    $D0     
LF5D1: JMP    LF601   
LF5D4: JSR    LF601   
       LDX    #$06    
LF5D9: LDA    $CA,X   
       STA    $AC     
       TAY            
       ROL            
       ROR    $AC     
       TYA            
       ROL            
       ROR    $AC     
       TYA            
       SEC            
       SBC    $AC     
       STA    $CA,X   
       TXA            
       EOR    #$06    
       TAX            
       BEQ    LF5D9   
       RTS            

LF5F2: TAX            
       LDA    $CA     
       ROL            
       ROR    $CA     
       LDA    $D0     
       ROL            
       ROR    $D0     
       CPX    #$64    
       BCS    LF5D4   
LF601: ASL    $AE     
       LSR    $AE     
       LDA    LF431,Y 
       STA    $BF     
       LDA    LF43A,Y 
       STA    $C5     
       STY    $9A     
       RTS            

LF612: LDA    $B1     
       AND    #$07    
       BNE    LF61E   
       LDA    $9B     
       EOR    #$FF    
       STA    $9B     
LF61E: LDA    $AF     
       AND    #$08    
       BEQ    LF682   
       EOR    $AF     
       STA    $AF     
       LDA    $AE     
       BMI    LF682   
       JSR    LF6C3   
       BPL    LF682   
       LDX    #$01    
       LDA    $AF     
       AND    #$20    
       BEQ    LF663   
       LDA    $AF     
       EOR    #$30    
       STA    $AF     
       LDX    $BD     
       BMI    LF64D   
       LDA    LFBDE,X 
       STA    $CC,X   
       LDA    LFBE2,X 
       STA    $D2,X   
LF64D: JSR    LF9A7   
       LDX    #$03    
LF652: LDA    $C6,X   
       BMI    LF65E   
       ASL    $CC,X   
       ASL    $D2,X   
       LSR    $DC,X   
       INC    $DC,X   
LF65E: DEX            
       BPL    LF652   
       LDX    #$09    
LF663: JMP    LFA55   
LF666: LDA    $CA     
       ORA    $D0     
       BEQ    LF612   
       LDA    COLUP0  
       BPL    LF676   
       LDA    $9B     
       EOR    #$FF    
       STA    $9B     
LF676: LDA    $AF     
       AND    #$08    
       BEQ    LF682   
       LDA    $B3     
       BEQ    LF683   
       DEC    $B3     
LF682: RTS            

LF683: LDA    $B1     
       AND    #$07    
       BNE    LF6C3   
       LDA    $D0     
       ASL            
       ADC    $E0     
       LSR            
       EOR    #$08    
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$FF    
       ADC    $D0     
       STA    $D0     
       BEQ    LF6BA   
       LDA    $E0     
       LSR            
       CLC            
       ADC    $CA     
       BMI    LF6AF   
       EOR    #$08    
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$FF    
       BMI    LF6B5   
LF6AF: LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
LF6B5: ADC    $CA     
       STA    $CA     
LF6B9: RTS            

LF6BA: STA    $CA     
       LDA    $AF     
       AND    #$F7    
       STA    $AF     
       RTS            

LF6C3: LDA    #$1F    
       CMP    $C4     
       BMI    LF6B9   
       LDA    $BE     
       SBC    #$4B    
       BPL    LF6D5   
       LDA    #$43    
       SBC    $BE     
       BMI    LF6B9   
LF6D5: LSR            
       CMP    $C4     
       BMI    LF6B9   
       LDA    $B9     
       CMP    #$02    
       BEQ    LF6E2   
       INC    $B9     
LF6E2: LDA    $AF     
       AND    #$F7    
       ORA    #$40    
       STA    $AF     
       JSR    LF9A7   
       LDX    #$04    
LF6EF: LDA    $C5,X   
       BMI    LF70D   
       LDA    #$00    
       SEC            
       SBC    LFBDD,X 
       STA    $CB,X   
       LDA    #$00    
       SEC            
       SBC    LFBE1,X 
       STA    $D1,X   
       LDA    LFBE5,X 
       SEC            
       SBC    $DB,X   
       ADC    #$00    
       STA    $DB,X   
LF70D: DEX            
       BNE    LF6EF   
       RTS            

LF711: .byte $78,$80,$78,$88
LF715: .byte $28,$30,$28,$38
LF719: .byte $48,$50,$58,$60
LF71D: LDA    $B1     
       LSR            
       LSR            
       LSR            
       AND    #$03    
       TAY            
       LDA    $B1     
       AND    #$03    
       TAX            
       BCC    LF741   
       LSR            
       BNE    LF733   
       INY            
       INY            
       INY            
       INY            
LF733: LDA    $C6,X   
       BMI    LF740   
       LDA    $D2,X   
       BEQ    LF740   
       LDA    LF711,Y 
       STA    $D7,X   
LF740: RTS            

LF741: BNE    LF740   
       LDA    $AE     
       AND    #$60    
       BNE    LF740   
       LDA    $CB     
       BNE    LF759   
       LDA    #$40    
       LDX    $D1     
       BEQ    LF756   
       LDA    LF715,Y 
LF756: STA    $D6     
       RTS            

LF759: BPL    LF75D   
       LDX    #$08    
LF75D: STX    $9C     
       LDA    LF719,Y 
       BNE    LF756   
LF764: ORA    $0A0C   
       .byte $07 ;.SLO
       .byte $04 ;.NOP
       BRK            
       BPL    LF77B   
       .byte $0C ;.NOP
       ORA    #$03    
       .byte $FF ;.ISB
       ORA    ($0F),Y 
       .byte $0C ;.NOP
       .byte $07 ;.SLO
       ORA    ($FB,X) 
LF776: BRK            
       .byte $04 ;.NOP
       .byte $07 ;.SLO
       ASL            
       .byte $0C ;.NOP
LF77B: ORA    $04FF   
       PHP            
LF77F: .byte $0C ;.NOP
       .byte $0F ;.SLO
       BPL    LF77F   
       .byte $02 ;.JAM
       .byte $07 ;.SLO
       .byte $0C ;.NOP
       .byte $0F ;.SLO
       ORA    ($A5),Y 
       LDX    $100A   
       ASL            
       LDX    $C4     
       CPX    #$48    
       BCS    LF797   
       LDX    #$0D    
       STX    $9F     
LF797: AND    #$30    
       BEQ    LF7B3   
       LDX    $B5     
       LDA    $E6,X   
       LDX    #$01    
       LDY    #$5A    
       CMP    #$02    
       BEQ    LF7AF   
       CMP    #$06    
       BNE    LF7B3   
       LDX    #$07    
       LDY    #$28    
LF7AF: STX    $E2     
       STY    $B3     
LF7B3: LDA    $AE     
       AND    #$30    
       BEQ    LF7EC   
       AND    #$10    
       BEQ    LF7F3   
       LSR            
       AND    $AE     
       BNE    LF7DB   
       JSR    LFC12   
       BCS    LF7EC   
       LDA    $AE     
       EOR    #$18    
       STA    $AE     
       LDA    #$42    
       STA    $C0     
       LDA    #$06    
       STA    $C6     
       LDA    #$00    
       STA    $B9     
       STA    $B8     
LF7DB: ASL            
       EOR    $AE     
       STA    $AE     
       LDA    #$03    
       STA    $E2     
       LDA    #$46    
       STA    $B3     
       LDA    #$68    
       STA    $D7     
LF7EC: RTS            

LF7ED: JMP    LF8D3   
LF7F0: JMP    LFA85   
LF7F3: LDA    $AE     
       AND    #$04    
       BNE    LF80E   
       LDX    $B5     
       LDA    $E4,X   
       BPL    LF820   
       LDA    $AE     
       ORA    #$04    
       STA    $AE     
       LDA    $B1     
       STA    $E3     
       LDX    #$02    
       JSR    LFA55   
LF80E: LDA    $B1     
       EOR    $E3     
       AND    $E2     
       BNE    LF820   
       LDA    $D7     
       CMP    #$90    
       BEQ    LF820   
       ADC    #$08    
       STA    $D7     
LF820: LDA    $D0     
       BEQ    LF7ED   
       LDA    $C4     
       CMP    #$07    
       BNE    LF7EC   
       LDA    $AE     
       AND    #$FD    
       STA    $AE     
       LDY    $BE     
       CPY    #$43    
       BCC    LF83A   
       CPY    #$4C    
       BCC    LF846   
LF83A: ORA    #$02    
       STA    $AE     
       CPY    #$40    
       BCC    LF7F0   
       CPY    #$4F    
       BCS    LF7F0   
LF846: LDA    $D7     
       SBC    #$6F    
       BCC    LF7F0   
       CMP    #$11    
       BCS    LF7F0   
       STA    $AC     
       LDA    $B1     
       SEC            
       SBC    $E3     
       LDX    $E2     
       LSR    $E2     
       LDY    #$00    
       STY    $9F     
       CPX    #$07    
       BEQ    LF878   
       LDY    #$07    
       STY    $E2     
       LDY    #$06    
       PHA            
       LDA    $B1     
       LSR            
       PLA            
       ROL            
       DEX            
       BNE    LF878   
       SEC            
       ROL    $E2     
       LDY    #$0C    
       ASL            
LF878: AND    #$06    
       CLC            
       ADC    $AC     
       LSR            
       CMP    #$06    
       PHP            
       BCC    LF887   
       SBC    #$0C    
       EOR    #$FF    
LF887: STY    $AC     
       ADC    $AC     
       TAY            
       LDA    $B1     
       TAX            
       AND    $E2     
       ADC    LF764,Y 
       PLP            
       BCC    LF899   
       EOR    #$FF    
LF899: STA    $CA     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       AND    $E2     
       ADC    LF776,Y 
       CMP    #$02    
       BPL    LF8AB   
       LDA    #$02    
LF8AB: STA    $D0     
       LDA    #$00    
       STA    $AE     
       TXA            
       LDX    #$08    
       AND    #$88    
       ADC    $E2     
       CMP    #$98    
       BNE    LF8BE   
       LDX    #$28    
LF8BE: STX    $AF     
       LDX    #$03    
       JSR    LFA55   
       JSR    LFC64   
LF8C8: LDA    $AE     
       AND    #$DB    
       STA    $AE     
       LDY    #$08    
       JMP    LF601   
LF8D3: LDA    $AE     
       LDX    $D7     
       CPX    #$68    
       BEQ    LF8E1   
       CPX    #$90    
       BNE    LF8FB   
       AND    #$FD    
LF8E1: PHA            
       JSR    LF8C8   
       PLA            
       AND    #$02    
       BEQ    LF93C   
       LDX    #$05    
       JSR    LFA55   
       INC    $B8     
       LDA    $B8     
       CMP    #$04    
       BEQ    LF8FC   
LF8F7: LDA    $BE     
       STA    $BF     
LF8FB: RTS            

LF8FC: ASL    $AF     
       SEC            
       ROR    $AF     
       JSR    LFC64   
       LDX    $BD     
       BMI    LF912   
       LDA    LFBDE,X 
       STA    $CC,X   
       LDA    LFBE2,X 
       STA    $D2,X   
LF912: JSR    LF9A7   
LF915: INX            
       STX    $B2     
       CPX    #$03    
       BEQ    LF93B   
       LDA    $C6,X   
       BPL    LF915   
LF920: LDA    $C6,X   
       BMI    LF936   
       LDA    #$00    
       STA    $CC,X   
       STA    $D2,X   
       STA    $DC,X   
       LDA    LFBD4,X 
       STA    $C0,X   
       LDA    LFBD9,X 
       STA    $C6,X   
LF936: INX            
       CPX    #$04    
       BNE    LF920   
LF93B: RTS            

LF93C: LDX    #$06    
       JSR    LFA55   
       JSR    LF8F7   
       INC    $B9     
       LDA    $B9     
       CMP    #$03    
       BNE    LF93B   
       LDA    $AE     
       AND    #$F7    
       STA    $AE     
       LDX    #$00    
LF954: JSR    LFBF3   
       JSR    LFDF4   
       LDX    #$07    
       JSR    LFA55   
       INC    $BA     
       LDA    $BA     
       CMP    #$03    
       BNE    LF93B   
       LDA    #$40    
       STA    $E9     
       INC    $BC     
       INC    $BB     
LF96F: LDA    $B4     
       STA    $B5     
       TAX            
       LDY    #$90    
       STY    $A2,X   
       EOR    #$01    
       STA    $B4     
       TAX            
       LDY    #$20    
       STY    $A2,X   
       LDX    #$03    
LF983: JSR    LFBF3   
       STX    $BA     
       DEX            
       BPL    LF983   
       JSR    LF9DA   
       LDA    $BC     
       CMP    #$11    
       BCC    LF9E7   
       DEC    $BB     
       LDX    $B7     
       CPX    $B6     
       BCC    LF9A1   
       BEQ    LF9E7   
       LSR            
       BCS    LF9E7   
LF9A1: LDA    #$00    
       STA    $AE     
       STA    $A2     
LF9A7: LDA    $AF     
       ORA    #$01    
       STA    $AF     
       LDA    #$0D    
       STA    $9F     
       LDA    #$F6    
       STA    $C4     
       STA    $C5     
       LDA    #$07    
       STA    $9A     
       JMP    LFE1B   
LF9BE: .byte $BF,$C5,$CB,$D1,$DB,$D6,$9A,$AE,$AF,$BE,$C4,$D0,$BD,$9F
LF9CC: .byte $47,$30,$00,$00,$00,$98,$05,$50,$05,$47,$00,$0E,$FF,$0D
LF9DA: LDY    #$0D    
LF9DC: LDA    LF9CC,Y 
       LDX    LF9BE,Y 
       STA    VSYNC,X 
       DEY            
       BPL    LF9DC   
LF9E7: RTS            

LF9E8: .byte $07,$01,$00,$FF,$05,$03,$04,$FF,$06,$02,$FF
LF9F3: LDA    SWCHA   
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       LDX    #$00    
       JSR    LFA04   
       PLA            
       AND    #$0F    
       INX            
LFA04: TAY            
       LDA    LF9E3,Y 
       STA    $E6,X   
       BPL    LFA14   
       CPX    $B4     
       BNE    LFA14   
       LSR    $AE     
       ASL    $AE     
LFA14: LDA    REFP1,X 
       BPL    LFA1F   
       LDA    $E4,X   
       BPL    LFA1E   
       INC    $E4,X   
LFA1E: RTS            

LFA1F: LDA    #$FB    
       STA    $E4,X   
LFA23: RTS            

LFA24: LDA    $AE     
       AND    #$A0    
       BNE    LFA23   
       LDA    $BE     
       SEC            
       SBC    $BF     
       ADC    #$05    
       CMP    #$0A    
       BCS    LFA23   
       LDA    $C4     
       BMI    LFA23   
       SBC    $C5     
       ADC    #$05    
       CMP    #$0A    
       BCS    LFA23   
       ASL    $AE     
       SEC            
       ROR    $AE     
       LSR    $AF     
       ASL    $AF     
       LDX    #$00    
       STX    $CA     
       STX    $D0     
       INX            
       LDA    $E8     
       BNE    LFA8B   
LFA55: STX    $E8     
       LDA    LFAFF,X 
       STA    $E9     
       LDA    LFAF6,X 
       STA    AUDF0   
       LDA    LFAED,X 
       STA    AUDV0   
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       STX    AUDC0   
       RTS            

LFA6E: LDX    $E8     
       BEQ    LFA8B   
       DEC    $E9     
       BEQ    LFA85   
       LDA    LFADB,X 
       STA    $AC     
       LDA    LFAE4,X 
       STA    $AD     
       LDA    $E9     
       JMP.ind ($00AC)
LFA85: LDA    #$00    
       STA    $E8     
       STA    AUDV0   
LFA8B: RTS            

LFA8C: .byte $C9,$08,$90,$F9,$49,$0F,$10,$F5,$0A,$0A,$10,$F8,$0A,$0A,$69,$03
       .byte $10,$EB,$4A,$4A,$08,$4A,$28,$69,$00,$85,$17,$60,$4A,$4A,$4A,$A9
       .byte $10,$90,$F6,$A9,$17,$10,$F2,$C9,$10,$D0,$D4,$A9,$1F,$10,$EA,$49
       .byte $FF,$38,$69,$0A,$10,$E3,$C9,$10,$90,$C3,$49,$1F,$10,$BF,$A2,$00
       .byte $C9,$28,$F0,$9B,$CA,$C9,$20,$F0,$96,$E9,$15,$C9,$02,$F0,$CA
LFADB: .byte $60,$94,$8C,$98,$9E,$B3,$A8,$BB,$C2
LFAE4: .byte $CA,$FA,$FA,$FA,$FA,$FA,$FA,$FA,$FA
LFAED: .byte $FA,$80,$80,$80,$C9,$15,$48,$FC,$81
LFAF6: .byte $7C,$02,$01,$03,$1F,$14,$08,$02,$0C
LFAFF: .byte $03,$02,$10,$04,$F8,$20,$0C,$08,$20,$30
LFB09: .byte $86,$80,$88,$82,$84,$89
LFB0F: .byte $AC,$8A,$92,$8E,$90,$93
LFB15: .byte $F8,$F8,$20,$34,$34,$20
LFB1B: .byte $94,$99,$95
LFB1E: LDY    #$02    
LFB20: LDA.wy $00BF,Y 
       LDX    LFB1B,Y 
       JSR    LFB8C   
       DEY            
       BPL    LFB20   
       LDA    $BE     
       LDX    #$98    
       BNE    LFB89   
LFB32: LDA    #$75    
       LDX    $9A     
       BNE    LFB3A   
       LDA    #$70    
LFB3A: STA    $96     
       LDY    #$05    
LFB3E: LDA.wy $00C4,Y 
       BPL    LFB46   
       LDA    LFB15,Y 
LFB46: CLC            
       ADC    #$08    
       LDX    LFB09,Y 
       STA    VSYNC,X 
       CLC            
       ADC.wy $00D5,Y 
       LDX    LFB0F,Y 
       STA    VSYNC,X 
       DEY            
       BPL    LFB3E   
       LDA    $C2     
       JSR    LFB87   
       LDX    $9F     
       BEQ    LFB7B   
       LDA    #$22    
       STA    $94     
       LDA    #$A2    
       STA    $95     
       LDA    #$75    
       STA    $98     
       LDA    #$72    
       STA    $96     
       JSR    LFBAE   
       JSR    LFB1E   
       BCC    LFB85   
LFB7B: JSR    LFB1E   
       JSR    LFBAE   
       LDA    $99     
       STA    $95     
LFB85: LDA    $C3     
LFB87: LDX    #$97    
LFB89: CLC            
       ADC    #$04    
LFB8C: PHA            
       AND    #$0F    
       STA    $AC     
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $AD     
       CLC            
       ADC    $AC     
       CMP    #$0F    
       BCC    LFBA3   
       SBC    #$0F    
       INC    $AD     
LFBA3: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $AD     
       STA    VSYNC,X 
       RTS            

LFBAE: LDX    #$04    
LFBB0: STA    WSYNC   
       LDA    $94,X   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
       LDA    $80     
LFBBB: DEY            
       BPL    LFBBB   
       DEX            
       STA    RESP1,X 
       BPL    LFBB0   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFBC8: .byte $28
LFBC9: .byte $28,$78,$78
LFBCC: .byte $20,$20,$08,$08
LFBD0: .byte $78,$78,$28,$28
LFBD4: .byte $42
LFBD5: .byte $89,$48,$05,$47
LFBD9: .byte $06
LFBDA: .byte $26,$40,$26
LFBDD: .byte $06
LFBDE: .byte $09
LFBDF: .byte $F8,$F8
LFBE1: .byte $08
LFBE2: .byte $04
LFBE3: .byte $03,$FD
LFBE5: .byte $FC
LFBE6: .byte $FE
LFBE7: .byte $FD,$FC,$FB
LFBEA: .byte $00,$01,$01,$00,$FF,$FF,$FF,$00,$01
LFBF3: LDY    #$00    
       STY    $DC,X   
       STY    $CC,X   
       STY    $D2,X   
       DEY            
       STY    $C6,X   
       LDA    LFBCC,X 
       STA    $D7,X   
       LDA    LFBD0,X 
       STA    $C0,X   
       CPX    $BD     
       BNE    LFC0E   
       STY    $BD     
LFC0E: RTS            

LFC0F: JSR    LFDC4   
LFC12: LDA    $AF     
       AND    #$04    
       BEQ    LFC62   
       LDX    $BD     
       BMI    LFC35   
       BEQ    LFC22   
       LDA    $C5,X   
       BMI    LFC2E   
LFC22: LDA    $DC,X   
       CMP    #$14    
       BCC    LFC0F   
LFC28: SEC            
       RTS            

LFC2A: LDA    $DB,X   
       BNE    LFC28   
LFC2E: DEX            
       BNE    LFC2A   
       LDX    $BD     
       BPL    LFC53   
LFC35: LDA    $DC     
       ORA    $DD     
       ORA    $DE     
       ORA    $DF     
       BNE    LFC28   
       LDX    #$03    
LFC41: LDA    LFBC8,X 
       STA    $D7,X   
       LDA    $BF,X   
       STA    $C0,X   
       LDA    $C5,X   
       STA    $C6,X   
       BPL    LFC53   
       JSR    LFBF3   
LFC53: DEX            
       BNE    LFC41   
       LDA    $AF     
       AND    #$FB    
       STA    $AF     
       JSR    LFBF3   
       JSR    LFDF4   
LFC62: CLC            
       RTS            

LFC64: LDX    $BD     
       BPL    LFC80   
       JSR    LFDF4   
       LDX    #$03    
LFC6D: LDA    $C6,X   
       BMI    LFC80   
       LDA    LFBDE,X 
       STA    $CC,X   
       LDA    LFBE2,X 
       STA    $D2,X   
       LDA    LFBE6,X 
       STA    $DC,X   
LFC80: DEX            
       BPL    LFC6D   
       LDA    $AF     
       ORA    #$04    
       STA    $AF     
       RTS            

LFC8A: LDA    $C0,X   
       STA    $C1,X   
       LDA    $C6,X   
       STA    $C7,X   
       JSR    LFBF3   
       LDA    LFBC9,X 
       STA    $D8,X   
       LDA    LFBDF,X 
       ASL            
       STA    $CD,X   
       LDA    LFBE3,X 
       ASL            
       STA    $D3,X   
       LDA    LFBE7,X 
       LSR            
       STA    $DD,X   
       BPL    LFCCD   
LFCAE: JSR    LFDDF   
       LDX    #$02    
       LDA    $C6     
       AND    $C7     
       AND    $C8     
       BPL    LFCCD   
       JMP    LF9DA   
LFCBE: CPX    #$03    
       BEQ    LFCAE   
       LDA    $C7,X   
       BMI    LFC8A   
       LDA    #$01    
       STA    $DC,X   
       STA    $DD,X   
       INX            
LFCCD: BPL    LFD0D   
LFCCF: LDA    LFBD4,X 
       STA    $C0,X   
       LDA    LFBD9,X 
       STA    $C6,X   
       LDA    $DC     
       ORA    $DD     
       ORA    $DE     
       ORA    $DF     
       BNE    LFD48   
       JSR    LF9DA   
       LDA    $AE     
       ORA    #$08    
       STA    $AE     
       LDA    $AF     
       AND    #$FB    
       STA    $AF     
       JMP    LFDF4   
LFCF5: LDA    $DC     
       ORA    $DD     
       ORA    $DE     
       ORA    $DF     
       BNE    LFD48   
       JSR    LF9DA   
       LDX    $B2     
       JMP    LFC41   
LFD07: LDX    $BD     
       BPL    LFD48   
       LDX    #$03    
LFD0D: LDY    $DC,X   
       BEQ    LFD48   
       DEC    $DC,X   
       BNE    LFD48   
       DEY            
       STY    $CC,X   
       STY    $D2,X   
       LDA    LFBC8,X 
       STA    $D7,X   
       LDA    $AF     
       ASL            
       BMI    LFCCF   
       LDA    LFBD5,X 
       STA    $C0,X   
       LDA    LFBDA,X 
       STA    $C6,X   
       LDA    $AF     
       AND    #$10    
       BNE    LFCBE   
       TXA            
       PHA            
       JSR    LFDF4   
       PLA            
       TAX            
       CPX    #$03    
       BNE    LFD44   
       JSR    LFDDF   
       LDX    #$03    
LFD44: LDA    $AF     
       BMI    LFCF5   
LFD48: DEX            
       BPL    LFD0D   
       LDX    $B5     
       LDY    $E6,X   
       LDX    $BD     
       BMI    LFDC3   
       INY            
       LDA    LFBEA,Y 
       BMI    LFD96   
       BNE    LFD7E   
LFD5B: LDA    $AF     
       AND    #$04    
       BEQ    LFD74   
       LDA    $DC,X   
       CMP    #$73    
       BCC    LFD74   
       TXA            
       BEQ    LFD74   
       LDA    $C5,X   
       BMI    LFD74   
       LDA    $DB,X   
       CMP    #$8C    
       BCC    LFD7E   
LFD74: LDA    LFBC8,X 
       STA    $D7,X   
       LDA    #$00    
       TAY            
       BEQ    LFDBF   
LFD7E: LDA    LFBDE,X 
       LDY    LFBE2,X 
       DEC    $DC,X   
       BEQ    LFDC4   
       BNE    LFDBF   
LFD8A: LDA    LFBD4,X 
       STA    $C0,X   
       LDA    LFBD9,X 
       STA    $C6,X   
       BPL    LFD5B   
LFD96: TXA            
       BEQ    LFDA3   
       LDA    $C5,X   
       BMI    LFDA9   
       LDA    $AF     
       AND    #$04    
       BEQ    LFDA9   
LFDA3: LDA    $DC,X   
       CMP    #$72    
       BCS    LFD5B   
LFDA9: LDA    $DC,X   
       CMP    LFBE6,X 
       BEQ    LFD8A   
       INC    $DC,X   
       LDA    #$00    
       SEC            
       SBC    LFBE2,X 
       TAY            
       LDA    #$00    
       SEC            
       SBC    LFBDE,X 
LFDBF: STA    $CC,X   
       STY    $D2,X   
LFDC3: RTS            

LFDC4: CPX    #$03    
       BEQ    LFDDF   
       JSR    LFBF3   
       INX            
       STX    $BD     
       LDA    LFBD4,X 
       STA    $C0,X   
       LDA    LFBD9,X 
       STA    $C6,X   
       LDA    LFBE6,X 
       STA    $DC,X   
       BNE    LFD74   
LFDDF: JSR    LFBF3   
       LDX    #$08    
       JSR    LFA55   
       LDX    $B4     
       LDA    $B6,X   
       SED            
       CLC            
       ADC    #$01    
       BCS    LFDF3   
       STA    $B6,X   
LFDF3: CLD            
LFDF4: LDX    $BD     
       BMI    LFDFC   
       LDA    $C6,X   
       BPL    LFE1F   
LFDFC: LDA    SWCHB   
       ASL            
       BPL    LFE1B   
       LDA    $AF     
       AND    #$D0    
       BNE    LFE1B   
       LDX    #$03    
LFE0A: LDY    $C6,X   
       BPL    LFE20   
       DEX            
       BNE    LFE0A   
       LDY    $C6     
       BMI    LFE1B   
       LDA    $AE     
       AND    #$08    
       BEQ    LFE20   
LFE1B: LDX    #$FF    
       STX    $BD     
LFE1F: RTS            

LFE20: LDA    $DC,X   
       BNE    LFE1B   
       STX    $BD     
       LDA    LFBE6,X 
       STA    $DC,X   
       LDA    $AF     
       AND    #$04    
       BNE    LFDC4   
       RTS            

LFE32: .byte $FE,$C6,$D6,$D6,$C6,$FE,$00,$00,$38,$18,$18,$18,$18,$7E,$00,$00
       .byte $7E,$66,$06,$7E,$60,$7E,$00,$00,$7E,$06,$3C,$06,$06,$7E,$00,$00
       .byte $66,$66,$66,$7E,$06,$06,$00,$00,$7E,$60,$7E,$06,$66,$7E,$00,$00
       .byte $7E,$60,$7E,$66,$66,$7E,$00,$00,$7E,$06,$0C,$18,$30,$30,$00,$00
       .byte $7E,$66,$3C,$66,$66,$7E,$00,$00,$7E,$66,$66,$7E,$06,$7E,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$18,$00,$3C,$3C,$18,$18,$18,$00,$18,$00
       .byte $3C,$3C,$18,$10,$10,$00,$18,$00,$3C,$3C,$18,$08,$08,$00,$00,$18
       .byte $24,$5A,$3C,$24,$24,$00,$0C,$00,$18,$1E,$38,$28,$08,$00,$0C,$00
       .byte $38,$38,$30,$30,$20,$00,$0C,$00,$38,$1E,$38,$6C,$40,$00,$0C,$31
       .byte $5E,$18,$3C,$E2,$02,$00,$B0,$80,$B8,$88,$78,$30,$38,$00,$30,$00
       .byte $30,$F8,$38,$20,$30,$00,$30,$00,$70,$7F,$3C,$24,$40,$00,$30,$01
       .byte $32,$3C,$38,$26,$81,$00,$34,$04,$34,$74,$78,$26,$E3,$00,$58,$20
       .byte $1C,$1A,$18,$74,$42,$00,$18,$3C,$5A,$1C,$18,$18,$3C,$00
LFF00: .byte $01,$01,$01,$01,$01,$01,$41,$01,$01,$01,$01,$01,$01,$01,$41,$01
       .byte $01,$01,$01,$01,$01,$01,$41,$01,$01,$01,$01,$01,$01,$01,$41,$01
       .byte $01,$01,$01,$01,$01,$01,$41,$01,$01,$01,$01,$01,$01,$01,$45,$01
       .byte $3D,$01,$3D,$01,$39,$01,$55,$01,$0D,$01,$1D,$01,$39,$01,$31,$01
       .byte $21,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$01,$01,$01,$01,$41,$01,$01,$01,$01,$01,$01,$01,$41,$01
       .byte $82,$82,$80,$80,$80,$80,$80,$80
LFF68: .byte $00
LFF69: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$FC,$00,$FE,$00,$7F,$01
       .byte $FF,$03,$FF,$07,$3F,$0F,$0F,$1F,$07,$3F,$03,$7F,$C1,$FF,$E0,$FE
       .byte $C0,$FC,$80,$F8,$00,$F0,$00,$C0,$00,$E0,$00,$70,$80,$B8,$80,$DC
       .byte $80,$EE,$80,$77,$80,$3B,$C1,$1D,$C3,$0E,$C7,$07,$CE,$03,$DD,$01
       .byte $FB,$00,$F7,$00,$EE,$00,$5C,$00,$38,$00,$70,$00,$E0,$00,$C0,$06
       .byte $04,$1A,$0A,$F6,$06,$06,$04,$06,$04,$1A,$0A,$F6,$06,$06,$04,$06
       .byte $04,$1A,$0A,$F6,$06,$06,$04,$06,$04,$1A,$0A,$F6,$02,$02,$04,$06
       .byte $04,$1A,$0A,$F6,$F2,$02,$04
LFFF0: .byte $35,$72,$98,$E5,$A0,$75,$D9,$70,$75,$00,$FF,$F2,$FF,$F2,$FF,$F2
