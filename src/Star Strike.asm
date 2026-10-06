; Disassembly of roms/Star Strike.bin
; Disassembled Tue Oct  6 15:24:46 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Star Strike.bin
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
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $4D,$41,$54,$54,$45,$4C,$20,$4D,$41,$54,$54,$45,$4C,$20,$4D,$41
       .byte $54,$54,$45,$4C,$20,$4D,$41,$54,$54,$45,$4C,$20,$4D,$41,$54,$54
       .byte $45,$4C,$20
LF023: .byte $09,$09,$01,$01,$3D,$3D,$3D,$3D,$3D,$3D,$3D,$01,$3D,$3D,$21,$00
LF033: .byte $21,$11,$69,$15,$7D,$61,$61,$00,$71,$51,$7D,$7D,$45,$45,$69,$69
LF043: .byte $0C,$08,$04,$00,$0C,$08,$04,$00,$00,$00
LF04D: .byte $20,$0C,$30
LF050: .byte $30,$0C,$20,$20,$18,$1C,$04,$00,$3C,$14,$0C,$10,$3C,$18,$08,$3C
       .byte $82,$82,$80,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$18,$00,$00,$00,$00,$00,$00,$08,$08,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$04,$00,$04,$00,$04,$00,$04,$00
LF09A: .byte $00,$70,$00,$70,$00,$70,$00,$00,$70,$00,$00
LF0A5: .byte $05,$35,$35,$35,$25,$25,$25,$15,$05
LF0AE: .byte $64,$38,$20,$0C
LF0B2: .byte $08,$00,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$FF,$00,$FF,$00,$FF
       .byte $00,$FF,$00,$FF,$00,$00,$00,$00,$F0,$00,$F0,$00,$F0,$F8,$00,$08
       .byte $00,$08,$F0,$08,$F0,$0F
LF0E8: .byte $33,$F1,$01,$F1,$B7,$F0,$B6,$F0,$00,$F1,$32,$F1
LF0F4: .byte $BA,$BA
LF0F6: .byte $B6,$B6,$BA,$BA,$43,$20,$31,$39,$38,$32,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$0F
       .byte $FF,$0F,$FF,$0F,$FC,$0F,$FC,$0F,$FC,$0F,$FC,$0F,$FC,$0F,$FC,$0F
       .byte $FC,$0F,$FC,$FF,$00,$FF,$00,$00,$FF,$00,$FF,$FF,$00,$10,$00,$10
       .byte $00,$10,$00,$10,$00,$10,$FF,$10,$FF,$10,$FF,$10,$FF,$10,$FF,$10
       .byte $FF,$10,$FF,$10,$FF,$10,$00,$10,$00,$10,$00,$10,$00,$00,$00,$00
       .byte $FE,$00,$FE,$00,$FE,$F0,$0E,$F0,$0E,$00,$0F,$00,$0F,$F0,$00,$14
       .byte $6B,$14,$08,$08,$08,$08,$00,$1C,$6B,$14,$08,$08,$08,$08,$00,$00
       .byte $00,$00,$18,$24,$3C,$18,$00,$00,$00,$3C,$66,$5A,$3C,$18,$00,$00
       .byte $3C,$66,$C3,$BD,$7E,$3C,$00,$00,$00,$00,$00,$18,$3C,$18,$00,$00
       .byte $00,$00,$18,$3C,$3C,$18,$00,$00,$18,$3C,$7E,$7E,$3C,$18,$00,$00
       .byte $00,$00,$3C,$7E,$7E,$3C,$00,$00,$3C,$7E,$FF,$FF,$7E,$3C,$00,$00
       .byte $3F,$3F,$3C,$70,$60,$80,$00,$00,$7F,$7F,$3E,$1C,$08,$08,$00,$00
       .byte $7F,$7F,$3C,$38,$30,$20
LF1CC: LDX    #$F1    
       STX    $82     
       STX    $C7     
       DEX            
       STX    $86     
       STX    $CB     
       LDA    $EE     
       CMP    #$05    
       BEQ    LF20C   
       LDA    #$84    
       STA    $C2     
       LDX    #$04    
       LDA    $94     
LF1E5: CMP    LF2B4,X 
       BCS    LF1ED   
       DEX            
       BNE    LF1E5   
LF1ED: LDA    LF2BD,X 
       STA    $C8     
       LDA    LF2B0,X 
       STA    $C6     
       LDX    #$00    
       LDA    $E2     
       BNE    LF204   
       LDA    $95     
       CMP    #$36    
       BMI    LF204   
       INX            
LF204: LDA    LF2B9,X 
       STA    $81     
       JMP    LF225   
LF20C: INC    $82     
       INC    $C7     
       LDX    #$00    
       LDA    $F4     
       CMP    #$0F    
       BPL    LF219   
       INX            
LF219: LDA    LF2BB,X 
       STA    $C2     
       LDA    LF2A4,X 
       STA    $81     
       STA    $C6     
LF225: LDA    #$88    
       STA    $CC     
       LDA    $EF     
       CMP    #$05    
       BEQ    LF277   
       CMP    #$06    
       BEQ    LF277   
       LDX    #$00    
       CMP    #$07    
       BMI    LF241   
       LDA    $99     
       ORA    #$CC    
       STA    $CC     
       LDX    #$04    
LF241: LDY    $99     
       LDA    LFD6D,Y 
       CMP    #$14    
       BEQ    LF259   
       INC    $86     
       INC    $CB     
       INX            
       CMP    #$20    
       BMI    LF259   
       INX            
       CMP    #$31    
       BMI    LF259   
       INX            
LF259: LDA    $E4     
       BEQ    LF263   
       CPY    #$33    
       BMI    LF265   
       LDA    #$84    
LF263: STA    $CC     
LF265: LDA    LF29C,X 
       STA    $85     
       LDA    LF043,X 
       LSR            
       LSR            
       STA    $E5     
       LDA    LF2A6,X 
       STA    $CA     
       RTS            

LF277: LDX    #$08    
       LDA    $F5     
       CMP    #$0F    
       BPL    LF280   
       INX            
LF280: LDA    #$F2    
       STA    $86     
       STA    $CB     
       LDA    LF2B3,X 
       JMP    LF263   
LF28C: .byte $00,$00,$40,$12,$2C,$B4,$2E,$55,$00,$00,$09,$40,$14,$20,$89,$20
LF29C: .byte $0A,$14,$1C,$24,$0A,$2C,$34,$3C
LF2A4: .byte $2C,$34
LF2A6: .byte $08,$2C,$44,$4C,$08,$2C,$34,$3C,$2C,$34
LF2B0: .byte $54,$64,$5C
LF2B3: .byte $64
LF2B4: .byte $54,$19,$38,$60,$80
LF2B9: .byte $04,$0C
LF2BB: .byte $8E,$44
LF2BD: .byte $3B,$52,$52,$52,$3B,$44,$2E,$41,$4B,$45,$52,$53
LF2C9: SEC            
       SBC    #$03    
       JMP    LF2D2   
LF2CF: CLC            
       ADC    #$06    
LF2D2: PHA            
       AND    #$0F    
       STA    $8D     
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $8E     
       CLC            
       ADC    $8D     
       CMP    #$0F    
       BCC    LF2E9   
       SBC    #$0F    
       INC    $8E     
LF2E9: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $8E     
       STA    VSYNC,X 
       RTS            

LF2F4: .byte $A2,$04
LF2F6: STA    WSYNC   
       LDA    $90,X   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
       LDA    $80     
LF301: DEY            
       BPL    LF301   
       STA    RESP0,X 
       DEX            
       BPL    LF2F6   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF30E: .byte $A9,$00,$85,$02,$85,$2A,$85,$1B,$A5,$B3,$4C,$D8,$F3,$A9,$00,$85
       .byte $02,$85,$2A,$85,$1C,$A5,$B3,$4C,$08,$F4,$B1,$85,$85,$02,$85,$2A
       .byte $85,$1C,$86,$09,$B1,$AC,$85,$0D,$B1,$AE,$85,$0E,$B1,$B0,$85,$0F
       .byte $EA,$EA,$A5,$B4,$85,$09,$B1,$CF,$85,$1D,$8E,$09,$00,$B1,$83,$10
       .byte $BF,$B1,$81,$85,$02,$85,$2A,$85,$1B,$D0,$BF,$E6,$B5,$A6,$B5,$B5
       .byte $B6,$85,$83,$B5,$BA,$85,$81,$B5,$BE,$85,$82,$A5,$B4,$85,$09,$88
       .byte $F0,$77,$A6,$B3,$EA,$86,$09,$B1,$87,$10,$A2,$B1,$85,$85,$02,$85
       .byte $2A,$85,$1C,$D0,$A2,$A5,$C9,$85,$87,$A5,$CA,$85,$85,$A5,$CB,$85
       .byte $86,$A5,$CD,$85,$07,$EA,$A5,$B4,$A5,$B4,$85,$09,$B1,$CF,$A6,$B3
       .byte $8E,$09,$00,$85,$1D,$B1,$83,$10,$46,$B1,$81,$85,$02,$85,$2A,$85
       .byte $1B,$D0,$46,$E6,$B5,$A6,$B5,$B5,$B6,$85,$83,$B5,$BA,$85,$81,$B5
       .byte $BE,$85,$82,$A5,$B4,$85,$09,$A6,$B3,$88,$C0,$29,$EA,$86,$09,$90
       .byte $69,$B1,$87,$10,$15,$B1,$85,$4C,$2A,$F3,$EA,$A6,$B5,$B5,$C2,$85
       .byte $06,$EA,$EA,$EA,$EA,$EA,$4C,$69,$F3,$60,$A9,$00,$4C,$2A,$F3,$A9
       .byte $00,$85,$02,$85,$2A,$85,$1B,$F0,$00,$EA,$A6,$B5,$B5,$C2,$85,$06
       .byte $A6,$B3,$EA,$EA,$EA,$EA,$EA,$4C,$C1,$F3,$A5,$B3,$A5,$B3,$EA,$EA
       .byte $A5,$B3,$A5,$B3,$EA,$EA,$EA,$4C,$96,$F3,$A9,$00,$F0,$22,$A9,$00
       .byte $85,$02,$85,$2A,$85,$1B,$A6,$B5,$B5,$C2,$85,$06,$4C,$78,$F4,$A9
       .byte $00,$85,$02,$85,$2A,$85,$1C,$4C,$A0,$F4,$B1,$87,$10,$DC,$B1,$85
       .byte $85,$02,$85,$2A,$85,$1C,$B1,$AC,$85,$0D,$B1,$AE,$85,$0E,$B1,$B0
       .byte $85,$0F,$B1,$CF,$85,$1D,$B1,$83,$10,$C4,$B1,$81,$D0,$C2,$E6,$B5
       .byte $A6,$B5,$B5,$B6,$85,$83,$A9,$00,$85,$02,$85,$2A,$85,$1B,$B5,$BA
       .byte $85,$81,$B5,$BE,$85,$82,$B5,$C2,$85,$06,$B1,$D1,$10,$05,$B1,$D3
       .byte $4A,$85,$1E,$88,$B1,$87,$10,$A7,$B1,$85,$85,$02,$85,$2A,$85,$1C
       .byte $D0,$10,$A5,$C9,$85,$87,$A5,$CA,$85,$85,$A5,$CB,$85,$86,$A5,$CD
       .byte $85,$07,$B1,$CF,$85,$1D,$B1,$83,$10,$31,$B1,$81,$D0,$2F,$E6,$B5
       .byte $A6,$B5,$A9,$00,$85,$02,$85,$2A,$85,$1B,$B5,$B6,$85,$83,$B5,$BA
       .byte $85,$81,$B5,$BE,$85,$82,$B1,$D1,$10,$05,$B1,$D3,$4A,$85,$1E,$88
       .byte $F0,$21,$B1,$87,$10,$18,$B1,$85,$4C,$3E,$F4,$A9,$00,$85,$02,$85
       .byte $2A,$85,$1B,$A6,$B5,$B5,$C2,$85,$06,$A9,$00,$4C,$C4,$F4,$A9,$00
       .byte $4C,$3E,$F4,$A4,$EA,$F0,$0B,$85,$02,$85,$2A,$85,$02,$85,$2A,$88
       .byte $D0,$F5,$60,$00
LF502: CPX    $E1     
       BPL    LF522   
       STX    $E1     
       LDA    LF523,X 
       STA    $8B     
       LDA    LF04D,X 
       LSR            
       LSR            
       STA    AUDC0   
LF514: LDA    LF023,X 
       LSR            
       LSR            
       STA    AUDV0   
       LDA    LF033,X 
       LSR            
       LSR            
       STA    AUDF0   
LF522: RTS            

LF523: .byte $78,$04,$78,$20,$03,$1E,$0F,$0E
LF52B: LDA    $8B     
       BEQ    LF551   
       LDX    $E1     
       CPX    #$00    
       BEQ    LF5A1   
       CPX    #$01    
       BEQ    LF593   
       CPX    #$02    
       BEQ    LF5B2   
       CPX    #$03    
       BEQ    LF55A   
       CPX    #$04    
       BEQ    LF571   
       CPX    #$05    
       BEQ    LF57F   
       CPX    #$06    
       BEQ    LF57F   
       CPX    #$07    
       BEQ    LF565   
LF551: LDA    #$0A    
       STA    $E1     
LF555: LDA    #$00    
       STA    AUDV0   
       RTS            

LF55A: DEC    $8B     
       AND    #$04    
       BEQ    LF555   
       LDA    #$0A    
       STA    AUDV0   
       RTS            

LF565: STA    AUDV0   
       LDA    #$0F    
       SEC            
       SBC    $8B     
       STA    AUDF0   
       DEC    $8B     
       RTS            

LF571: JSR    LFDB9   
       AND    #$0F    
       STA    AUDV0   
       LDA    $EB     
       BNE    LF57E   
       DEC    $8B     
LF57E: RTS            

LF57F: CMP    #$10    
       BPL    LF590   
       LSR            
       LSR            
       TAX            
       LDA    LF5C3,X 
       STA    AUDF0   
       LDA    LF5C7,X 
       STA    AUDV0   
LF590: DEC    $8B     
       RTS            

LF593: LDA    $E4     
       SEC            
       SBC    #$12    
       BMI    LF590   
       LSR            
       STA    AUDF0   
       LSR            
       STA    AUDV0   
       RTS            

LF5A1: LDA    $D9     
       CLC            
       ADC    #$72    
       STA    AUDV0   
       BEQ    LF5AE   
       ASL            
       STA    AUDF0   
       RTS            

LF5AE: LDA    #$06    
       STA    AUDC0   
LF5B2: LDA    $8B     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    LF0B2,X 
       DEC    $8B     
       TAX            
       JMP    LF514   
LF5C3: .byte $1F,$1D,$1B,$19
LF5C7: .byte $01,$03,$07,$0A,$00
LF5CC: STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       JMP    LFA00   
LF5D5: STA    WSYNC   
       STA    HMOVE   
       LDA    #$58    
       SEC            
       SBC    $EA     
       TAY            
       LDA    #$0A    
       STA    COLUPF  
       LDA    $EA     
       BNE    LF5EB   
       INC    $8C     
       DEC    $8C     
LF5EB: STA    RESBL   
       LDA    $F0     
       BNE    LF5FC   
       LDA    #$F1    
       STA    $D5     
       LDA    #$F4    
       STA    $D6     
       JMP    LF604   
LF5FC: LDA    #$2A    
       STA    $D5     
       LDA    #$F3    
       STA    $D6     
LF604: LDA    #$70    
       STA    HMBL    
LF608: LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       JMP    LF643   
LF613: LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       JMP    LF671   
LF61E: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       BNE    LF643   
       CPY    $F2     
       BEQ    LF62E   
       LDA    LFC4F,Y 
       ASL            
LF62E: STA    ENABL   
       LDA    $C9     
       STA    $87     
       LDA    $CA     
       STA    $85     
       LDA    $CB     
       STA    $86     
       LDA    $CD     
       STA    COLUP1  
       JMP    LF64F   
LF643: LDA    #$00    
       CPY    $F2     
       BEQ    LF64D   
       LDA    LFC4F,Y 
       ASL            
LF64D: STA    ENABL   
LF64F: LDA    ($CF),Y 
       STA    ENAM0   
       LDA    ($83),Y 
       BPL    LF613   
       LDA    ($81),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       BNE    LF671   
       STA    ENABL   
       INC    $B5     
       LDA    $B7     
       STA    $83     
       LDA    $BB     
       STA    $81     
       LDA    $BF     
       STA    $82     
LF671: LDA    #$00    
       STA    ENABL   
       DEY            
       LDA    ($87),Y 
       BPL    LF68C   
       CPY    $F0     
       BEQ    LF683   
       LDA    ($85),Y 
       JMP    LF61E   
LF683: LDA    $B2     
       STA    COLUPF  
       LDA    ($85),Y 
       JMP.ind ($00D5)
LF68C: CPY    $F0     
       BEQ    LF693   
       JMP    LF608   
LF693: LDA    $B2     
       STA    COLUPF  
       LDA    #$00    
       JMP.ind ($00D5)
LF69C: LDA    $EC     
       BNE    LF6DB   
       LDA    #$64    
       STA    $9A     
       STA    $9B     
       LDA    #$0F    
       STA    $9C     
       LDA    #$00    
       STA    $A8     
       LDA    $95     
       CMP    #$36    
       BPL    LF6DD   
       LDA    $EE     
       BMI    LF6DD   
       LDA    REFP1   
       BMI    LF6DD   
       LDA    $E7     
       CLC            
       ADC    #$02    
       STA    $9A     
       LDA    $E8     
       STA    $9B     
       LDA    #$32    
       STA    $9C     
       LDA    #$23    
       STA    $EC     
       LDA    #$E2    
       STA    $A8     
       LDX    #$07    
       JSR    LF502   
       JMP    LF6DD   
LF6DB: DEC    $EC     
LF6DD: LDA    $ED     
       BNE    LF716   
       LDA    #$64    
       STA    $9D     
       STA    $9E     
       LDA    #$0F    
       STA    $9F     
       LDA    #$00    
       STA    $AB     
       RTS            

LF6F0: .byte $A5,$ED,$D0,$21,$C6,$E9,$A9,$02,$18,$65,$97,$85,$9D,$A5,$98,$38
       .byte $E9,$01,$85,$9E,$A5,$99,$85,$9F,$A9,$1D,$85,$ED,$A9,$F1,$85,$AB
       .byte $A2,$07,$20,$02,$F5,$60
LF716: DEC    $ED     
       RTS            


START:
       SEI            
       CLD            
       LDY    #$00    
LF71D: LDX    #$00    
       TXA            
LF720: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF720   
       STY    $F3     
       LDA    #$50    
       STA    $94     
       LSR            
       STA    $95     
       LDA    SWCHB   
       STA    $F6     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       STA    $E6     
       TAX            
       LDA    LF8AC,X 
       STA    $DF     
       STA    $DE     
       LDA    #$FF    
       STA    $DC     
       STA    $F5     
       LDA    #$13    
       STA    $D7     
       STA    $8C     
       LDA    #$30    
       STA    $F0     
       LDA    #$48    
       STA    $DD     
       INY            
LF758: STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       LDA    #$20    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCC    LF71D   
       INC    $89     
       JSR    LF7BA   
       JSR    LFDD0   
       JSR    LF84C   
       JSR    LF1CC   
       JSR    LF52B   
       JSR    LF9A6   
       JSR    LF9BA   
       JSR    LFAF1   
       JSR    LFAD4   
       JSR    LF69C   
       JSR    LFB85   
       JSR    LFDAB   
       JSR    LFF4E   
LF792: LDA    INTIM   
       BPL    LF792   
       STA    WSYNC   
       LDX    #$03    
       STX    VSYNC   
LF79D: STA    WSYNC   
       DEX            
       BNE    LF79D   
       STX    VSYNC   
       LDA    #$2F    
       STA    TIM64T  
       JSR    LFC4F   
       JSR    LF8B0   
LF7AF: LDA    INTIM   
       BNE    LF7AF   
       JSR    LF5CC   
       JMP    LF758   
LF7BA: LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF050,Y 
       LSR            
       LSR            
       STA    $8A     
       LDA    $EE     
       BPL    LF7DB   
LF7CD: LDA    #$FF    
       STA    $EE     
       LDA    #$28    
       STA    $94     
       LDA    #$00    
       STA    $95     
       BEQ    LF807   
LF7DB: CMP    #$05    
       BEQ    LF801   
       CMP    #$03    
       BEQ    LF80E   
       CMP    #$07    
       BEQ    LF81D   
LF7E7: LDA    $8A     
       CMP    #$0F    
       BEQ    LF807   
       TAY            
       LDA    LF842,Y 
       STA    $A0     
       LDA    LF844,Y 
       STA    $A1     
       LDA    $E2     
       BEQ    LF800   
       LDA    #$00    
       STA    $A0     
LF800: RTS            

LF801: LDA    $F4     
       BEQ    LF7CD   
       DEC    $F4     
LF807: LDA    #$00    
       STA    $A0     
       STA    $A1     
       RTS            

LF80E: DEC    $F4     
       BEQ    LF818   
       LDA    #$06    
       STA    $8A     
       BNE    LF829   
LF818: LDA    #$00    
       STA    $EE     
       RTS            

LF81D: DEC    $F4     
       BEQ    LF818   
       LDA    $8A     
       EOR    $8C     
       AND    #$07    
       STA    $8A     
LF829: LDA    $94     
       CMP    #$0F    
       BMI    LF7E7   
       CMP    #$8E    
       BCS    LF7E7   
       LDA    $89     
       AND    #$02    
       SEC            
       SBC    #$01    
       CLC            
       ADC    $94     
       STA    $94     
       JMP    LF7E7   
LF842: .byte $14,$0E
LF844: .byte $00,$F2,$EC,$F2,$00,$0E,$14,$0E
LF84C: LDA    $8F     
       CLC            
       ADC    #$17    
       AND    #$1F    
       STA    $8F     
       LDX    #$0B    
LF857: LDA    $A0,X   
       BPL    LF870   
       CLC            
       EOR    #$FF    
       ADC    #$01    
       CLC            
       ADC    $8F     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$FF    
       CLC            
       ADC    #$01    
       JMP    LF878   
LF870: CLC            
       ADC    $8F     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
LF878: CLC            
       ADC    $94,X   
       CMP    LF8A0,X 
       BNE    LF886   
       SEC            
       SBC    #$01    
       JMP    LF88E   
LF886: CMP    LF894,X 
       BNE    LF88E   
       CLC            
       ADC    #$01    
LF88E: STA    $94,X   
       DEX            
       BPL    LF857   
       RTS            

LF894: .byte $0A,$14,$0F,$81,$81,$0F,$81,$81,$0F,$81,$81,$0F
LF8A0: .byte $93,$54,$5A,$7E,$0E,$4B,$7E,$7E,$7E,$7E,$7E,$7E
LF8AC: .byte $10,$06,$08,$04
LF8B0: LDX    #$90    
       LDA    $94     
       CMP    #$38    
       BCC    LF8BB   
       SEC            
       SBC    #$02    
LF8BB: JSR    LF2CF   
       INX            
       LDA    $E3     
       JSR    LF2CF   
       INX            
       LDA    $CE     
       JSR    LF2C9   
       INX            
       LDY    $DB     
       LDA    LF9F8,Y 
       JSR    LF2C9   
       LDX    #$D8    
       LDA    $D7     
       JSR    LF2C9   
       LDX    #$03    
       JSR    LF2F6   
       LDA    #$F0    
       STA    $84     
       STA    $88     
       STA    $D0     
       STA    $D2     
       LDA    $95     
       STA    $83     
       CLC            
       ADC    $81     
       STA    $81     
       BCC    LF8F6   
       INC    $82     
LF8F6: LDA    $E4     
       STA    $87     
       CLC            
       ADC    $85     
       STA    $85     
       BCC    LF903   
       INC    $86     
LF903: LDX    $C8     
       LDA    $96     
       BNE    LF90C   
       TXA            
       LDX    #$00    
LF90C: STA    $B7     
       STX    $B8     
       LDY    $DB     
       LDA    LF9EF,Y 
       STA    $D1     
       LDX    #$01    
       LDA    $E2     
       BEQ    LF92D   
       LDA    $BA,X   
       CLC            
       ADC    $96     
       STA    $BA,X   
       BCC    LF928   
       INC    $BE,X   
LF928: LDA    #$0C    
       STA    $C2,X   
       INX            
LF92D: LDA    $C6     
       CLC            
       ADC    $B6,X   
       STA    $BA,X   
       BCC    LF938   
       INC    $C7     
LF938: LDA    $C7     
       STA    $BE,X   
       LDA    #$B2    
       STA    $C2,X   
       STA    $CD     
       LDA    $CA     
       CLC            
       ADC    $C9     
       STA    $CA     
       BCC    LF94D   
       INC    $CB     
LF94D: LDY    $DB     
       LDA    $DC     
       AND    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    LF9E7,Y 
       CLC            
       ADC    LF9EF,Y 
       STA    $D3     
       LDA    #$F0    
       ADC    #$00    
       STA    $D4     
       LDY    #$00    
       LDX    #$07    
LF96B: STY    COLUPF,X
       DEX            
       BPL    LF96B   
       STY    GRP0    
       STY    GRP1    
       STY    $B4     
       STY    $B5     
       INY            
       STY    CTRLPF  
       LDA    $E0     
       AND    #$03    
       TAX            
       LDA    LF0F4,X 
       CLC            
       ADC    $F1     
       STA    $B2     
       LDA    LF0F6,X 
       CLC            
       ADC    $F1     
       STA    $B3     
       LDY    #$05    
       TXA            
       LDX    #$0B    
       AND    #$01    
       BNE    LF99B   
       LDX    #$05    
LF99B: LDA    LF0E8,X 
       STA.wy $00AC,Y 
       DEX            
       DEY            
       BPL    LF99B   
       RTS            

LF9A6: LDA    $DE     
       BEQ    LF9AD   
       DEC    $DE     
       RTS            

LF9AD: LDA    $DF     
       STA    $DE     
       INC    $E0     
       LDA    $DB     
       BEQ    LF9B9   
       DEC    $DB     
LF9B9: RTS            

LF9BA: LDA    $DE     
       CMP    $DF     
       BNE    LF9D7   
       LDA    $DC     
       BEQ    LF9D7   
       LDA    $DD     
       BNE    LF9D8   
       LDA    $DC     
       ASL            
       ADC    #$00    
       STA    $DC     
       LDA    #$29    
       STA    $DD     
       LDA    #$08    
       STA    $DB     
LF9D7: RTS            

LF9D8: DEC    $DD     
       CMP    #$08    
       BNE    LF9D7   
       LDA    $EE     
       BMI    LF9D7   
       LDX    #$03    
       JMP    LF502   
LF9E7: .byte $1A,$21,$21,$21,$20,$1F,$1D,$1B
LF9EF: .byte $05,$5A,$53,$4B,$46,$42,$40,$3F,$05
LF9F8: .byte $52,$52,$52,$52,$54,$54,$54,$55
LFA00: LDA    $D8     
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       AND    #$0F    
       TAX            
LFA0C: DEX            
       BPL    LFA0C   
       STA    RESP1   
       STA    RESP0   
       LDA    $D8     
       STA    HMP1    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$0A    
       LDA    #$72    
       CLC            
       ADC    $D9     
       STA    COLUP1  
       BEQ    LFA2D   
       LDA    #$D4    
       CLC            
       ADC    $D9     
LFA2D: STA    COLUP0  
       LDA    #$07    
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       STA    HMP1    
       LDA    #$20    
       STA    HMP0    
LFA3D: STA    WSYNC   
       STA    HMOVE   
       LDA    $B4     
       STA    COLUBK  
       LDA    LFABE,Y 
       STA    GRP0    
       LDA    LFAC9,Y 
       STA    GRP1    
       JSR    LFADF   
       LDA    #$00    
       STA    HMP0    
       LDA    LF09A,Y 
       ASL            
       STA    HMP1    
       DEY            
       BPL    LFA3D   
       LDA    $90     
       LDX    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STX    GRP1    
       AND    #$0F    
       TAY            
LFA6E: DEY            
       BPL    LFA6E   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $91     
       AND    #$0F    
       TAY            
       NOP            
LFA7D: DEY            
       BPL    LFA7D   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $C2     
       STA    COLUP0  
       LDA    $CC     
       STA    COLUP1  
       LDA    #$15    
       STA    NUSIZ0  
       LDA    $90     
       STA    HMP0    
       LDA    $91     
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $94     
       CMP    #$38    
       BCS    LFAA8   
       LDA    #$08    
       STA    REFP0   
LFAA8: JSR    LFADF   
       LDA    #$00    
       STA    CXCLR   
       LDY    $DB     
       LDA    LF0A5,Y 
       STA    NUSIZ1  
       JSR    LFADF   
       STA    HMCLR   
       JMP    LF5D5   
LFABE: .byte $38,$00,$00,$18,$18,$1C,$1C,$1E,$1E,$FF,$FF
LFAC9: .byte $E0,$F0,$F0,$F8,$F8,$FC,$FC,$FC,$FE,$FE,$FE
LFAD4: LDA.w  $00EE   
       BMI    LFAE0   
       LDA    $DA     
       BEQ    LFAE0   
       DEC    $DA     
LFADF: RTS            

LFAE0: LDA    $D7     
       CMP    #$50    
       BPL    LFAE8   
       INC    $D7     
LFAE8: LDY    $E6     
       LDA    LF0AE,Y 
       ASL            
       STA    $DA     
       RTS            

LFAF1: JSR    LFB75   
       LDA    $E2     
       BNE    LFB1D   
       STA    $96     
       LDA    $95     
       CMP    #$36    
       BMI    LFB04   
       LDA    REFP1   
       BPL    LFB05   
LFB04: RTS            

LFB05: LDA    $95     
       CLC            
       ADC    #$08    
       STA    $96     
       LDA    #$15    
       STA    $E2     
       LDA    #$16    
       STA    $A2     
LFB14: LDA    #$12    
       STA    $BB     
       LDA    #$F0    
       STA    $BF     
       RTS            

LFB1D: LDA    $C8     
       CLC            
       ADC    #$02    
       CMP    $96     
       BEQ    LFB2A   
       BPL    LFB14   
       STA    $96     
LFB2A: LDA    #$00    
       STA    $A2     
       LDA    #$0D    
       STA    $BB     
       LDA    #$FB    
       STA    $BF     
       LDA    $E2     
       CMP    #$14    
       BNE    LFB41   
       LDX    #$06    
       JSR    LF502   
LFB41: LDY    $DB     
       CPY    #$02    
       BNE    LFB6A   
       LDA    LF9F8,Y 
       SEC            
       SBC    #$06    
       SEC            
       SBC    $94     
       CLC            
       ADC    #$0A    
       BMI    LFB6A   
       CMP    #$14    
       BPL    LFB6A   
       LDA    $DC     
       LSR            
       BCC    LFB6A   
       ASL            
       STA    $DC     
       LDA    #$78    
       STA    $EB     
       LDX    #$04    
       JSR    LF502   
LFB6A: DEC    $E2     
       RTS            

LFB6D: .byte $00,$00,$00,$1C,$3E,$7F,$3E,$1C
LFB75: LDA    $EB     
       BEQ    LFB82   
       LDA    $89     
       AND    #$02    
       STA    $EA     
       DEC    $EB     
       RTS            

LFB82: STA    $EA     
       RTS            

LFB85: LDY    #$01    
       LDX    $E4     
       BEQ    LFB91   
       INX            
       INX            
       CPX    $C9     
       BPL    LFB9C   
LFB91: DEY            
LFB92: LDX    $95     
       BEQ    LFBB3   
       INX            
       INX            
       CPX    $C8     
       BMI    LFBB3   
LFB9C: LDA    #$05    
       CMP.wy $00EE,Y 
       BEQ    LFBB0   
       STA.wy $00EE,Y 
       LDA    #$1E    
       STA.wy $00F4,Y 
       LDX    #$05    
       JSR    LF502   
LFBB0: DEY            
       BEQ    LFB92   
LFBB3: LDA    $89     
       AND    #$01    
       BEQ    LFBDD   
       LDA    VSYNC   
       BPL    LFC0E   
       LDA    $99     
       SEC            
       SBC    $9C     
       CLC            
       ADC    #$01    
       BMI    LFC0E   
       CMP    #$02    
       BPL    LFC0E   
       LDA    $EF     
       CMP    #$05    
       BEQ    LFC0E   
       LDA    #$06    
       STA    $EF     
       LDA    #$1D    
       STA    $F5     
       LDX    #$05    
       BNE    LFC0B   
LFBDD: LDA    $EE     
       BNE    LFC0E   
       LDA    VSYNC   
       AND    #$40    
       BEQ    LFC0E   
       LDA    $9F     
       SEC            
       SBC    #$31    
       BMI    LFC0E   
       CMP    #$02    
       BPL    LFC0E   
       LDA    $9E     
       SEC            
       SBC    $E8     
       CMP    #$05    
       BPL    LFC0E   
       INC    $8C     
       LDA    $8C     
       STA    $F4     
       LDA    #$03    
       INC    $E9     
       INC    $E9     
       STA    $EE     
       LDX    #$06    
LFC0B: JSR    LF502   
LFC0E: LDA    $EF     
       CMP    #$07    
       BMI    LFC4E   
       LDA    COLUP1  
       BPL    LFC4E   
       LDA    $99     
       SEC            
       SBC    #$31    
       BMI    LFC4E   
       CMP    #$02    
       BPL    LFC4E   
       LDA    $98     
       SEC            
       SBC    $E8     
       CLC            
       ADC    #$02    
       BMI    LFC4E   
       CMP    #$04    
       BPL    LFC4E   
       LDA    $EE     
       BMI    LFC43   
       CMP    #$05    
       BEQ    LFC43   
       LDA    #$07    
       STA    $EE     
       LDA    #$FF    
       STA    $F4     
       INC    $8C     
LFC43: LDA    #$1E    
       STA    $F5     
       LDX    #$05    
       STX    $EF     
       JSR    LF502   
LFC4E: RTS            

LFC4F: LDA    $89     
       AND    #$01    
       BEQ    LFC8C   
       LDY    #$05    
       STY    $8D     
       LDA    $94     
       SEC            
       SBC    #$50    
       BPL    LFC80   
       JSR    LFD12   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LFC68: STA    $E7     
       LDA    $95     
       SEC            
       SBC    #$2C    
       BPL    LFC86   
       JSR    LFD12   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LFC79: STA    $E8     
       LDX    #$9D    
       JMP    LFCE7   
LFC80: JSR    LFD17   
       JMP    LFC68   
LFC86: JSR    LFD17   
       JMP    LFC79   
LFC8C: LDA    $EF     
       BMI    LFCD9   
       LDX    $99     
       LDY    LFD6D,X 
       STY    $8D     
       LDX    #$97    
       JSR    LFD0E   
       JSR    LFD49   
       BCS    LFCD9   
       STA    $E3     
       INX            
       JSR    LFD0E   
       JSR    LFD61   
       BCS    LFCD9   
       CLC            
       ADC    $E5     
       STA    $E4     
       LDA    $97     
       BPL    LFCBA   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LFCBA: LDX    #$04    
       CMP    #$11    
       BPL    LFCC2   
       LDX    #$0B    
LFCC2: TXA            
       JSR    LFD17   
       CMP    #$00    
       BMI    LFCE1   
       CLC            
       ADC    #$30    
       CLC            
       ADC    $E5     
       CMP    #$68    
       BPL    LFCE1   
       STA    $C9     
       JMP    LFCE5   
LFCD9: LDA    #$50    
       STA    $E3     
       LDA    #$00    
       STA    $E4     
LFCE1: LDA    #$00    
       STA    $C9     
LFCE5: LDX    #$9A    
LFCE7: LDY    WSYNC,X 
       LDA    LFD6D,Y 
       STA    $8D     
       JSR    LFD0E   
       JSR    LFD49   
       BCS    LFD05   
       STA    $CE     
       INX            
       JSR    LFD0E   
       JSR    LFD61   
       BCS    LFD04   
       STA    $CF     
       RTS            

LFD04: DEX            
LFD05: LDA    #$50    
       STA    $CE     
       LDA    #$00    
       STA    $CF     
       RTS            

LFD0E: LDA    VSYNC,X 
       BPL    LFD17   
LFD12: EOR    #$FF    
       CLC            
       ADC    #$01    
LFD17: STA    $AE     
       LDY    $8D     
       STY    $AF     
       STY    $8E     
       LDY    #$04    
       LDA    #$00    
LFD23: LSR    $8E     
       BCC    LFD2A   
       CLC            
       ADC    $AE     
LFD2A: LSR            
       DEY            
       BNE    LFD23   
       STA    $8E     
       LDA    #$00    
       ASL    $AF     
       LDY    #$03    
LFD36: ASL            
       BCS    LFD48   
       ASL    $AF     
       BCC    LFD42   
       CLC            
       ADC    $AE     
       BCS    LFD48   
LFD42: DEY            
       BNE    LFD36   
       CLC            
       ADC    $8E     
LFD48: RTS            

LFD49: CMP    #$00    
       BMI    LFD5F   
       CMP    #$46    
       BPL    LFD5F   
       LDY    VSYNC,X 
       BPL    LFD5A   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LFD5A: CLC            
       ADC    #$50    
       CLC            
       RTS            

LFD5F: SEC            
       RTS            

LFD61: CMP    #$00    
       BMI    LFD77   
       CMP    #$34    
       BPL    LFD77   
       LDY    VSYNC,X 
       BPL    LFD72   
LFD6D: EOR    #$FF    
       CLC            
       ADC    #$01    
LFD72: CLC            
       ADC    #$2C    
       CLC            
       RTS            

LFD77: SEC            
       RTS            

LFD79: .byte $13,$13,$14,$14,$14,$15,$15,$15,$16,$16,$17,$17,$18,$18,$19,$19
       .byte $1A,$1A,$1B,$1B,$1C,$1D,$1E,$1E,$1F,$20,$21,$22,$23,$24,$25,$26
       .byte $28,$29,$2A,$2C,$2E,$30,$32,$34,$36,$39,$3C,$3F,$42,$46,$4B,$50
       .byte $50,$50
LFDAB: LDA    $89     
       AND    #$07    
       BNE    LFDB8   
       JSR    LFDB9   
       AND    #$7F    
       STA    $F2     
LFDB8: RTS            

LFDB9: LDA    $F3     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $F3     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $F3     
       CLC            
       ADC    #$95    
       EOR    $89     
       STA    $F3     
       RTS            

LFDD0: LDX    $EF     
       BMI    LFE22   
       LDA    LFDDF,X 
       PHA            
       LDA    LFDE9,X 
       PHA            
       LDA    $F5     
       RTS            

LFDDF: .byte $FD,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FF
LFDE9: .byte $F2,$C4,$78,$3C,$78,$9B,$BA,$D9,$EC,$00,$D0,$2B,$A5,$EE,$30,$29
       .byte $A5,$E9,$D0,$04,$A9,$0F,$85,$E9,$C9,$07,$10,$20,$C6,$E9,$A9,$07
       .byte $85,$EF,$20,$B9,$FD,$29,$1F,$69,$0A,$85,$F5,$38,$E9,$15,$85,$97
       .byte $A9,$F0,$85,$98,$4C,$AE,$FE,$C6,$F5
LFE22: JMP    LFEA4   
LFE25: .byte $20,$B9,$FD,$29,$1E,$38,$E9,$0F,$85,$97,$A9,$08,$85,$98,$A9,$3B
       .byte $85,$99,$A9,$04,$85,$EF,$D0,$43,$A5,$EE,$30,$1F,$C6,$F5,$F0,$20
       .byte $20,$15,$FF,$A5,$A3,$D0,$02,$E6,$A3,$18,$69,$03,$30,$11,$C9,$06
       .byte $10,$0D,$20,$F0,$F6,$A5,$E9,$C9,$07,$10,$04,$A9,$01,$85,$EF,$60
       .byte $20,$B9,$FD,$C9,$32,$30,$09,$29,$3F,$85,$F5,$A9,$02,$85,$EF,$60
       .byte $A9,$C8,$D0,$1D,$F0,$0A,$C6,$F5,$20,$B2,$FE,$A9,$FA,$85,$A5,$60
       .byte $A5,$99,$DD,$97,$FE,$10,$08,$C6,$EF,$A9,$00,$85,$A5,$F0,$02,$A9
       .byte $0A,$85,$F5,$60,$20,$00,$38,$C6,$F5,$D0,$12,$A9,$00,$85,$EF
LFEA4: LDA    #$00    
       STA    $E4     
       LDA    #$B0    
       STA    $97     
       STA    $98     
       LDA    #$0E    
       STA    $99     
       LDA    #$00    
       STA    $A3     
       STA    $A4     
       STA    $A5     
       RTS            

LFEBB: .byte $C6,$F5,$D0,$F3,$A9,$FF,$85,$F5,$D0,$DB,$20,$B2,$FE,$A5,$98,$30
       .byte $05,$A9,$F6,$85,$A4,$60,$A5,$E4,$F0,$CB,$A9,$08,$85,$A3,$60,$F0
       .byte $05,$C6,$F5,$4C,$15,$FF,$A4,$E6,$B9,$4A,$FF,$85,$A5,$A9,$08,$85
       .byte $EF,$60,$A5,$F6,$10,$03,$20,$15,$FF,$A5,$99,$C9,$3C,$D0,$F2,$A9
       .byte $0F,$85,$F5,$4C,$A0,$FE,$D0,$0F,$A5,$E4,$C9,$0E,$10,$0B,$A9,$FF
       .byte $85,$EF,$A2,$00,$4C,$02,$F5,$C6,$F5,$60,$A5,$EE,$30,$2A,$A2,$01
       .byte $B5,$E7,$38,$F5,$97,$95,$A3,$10,$05,$49,$FF,$18,$69,$01,$C9,$1E
       .byte $30,$08,$B5,$A3,$2A,$76,$A3,$4C,$3F,$FF,$C9,$07,$10,$06,$A4,$F6
       .byte $10,$02,$16,$A3,$CA,$10,$D9,$60,$A9,$05,$85,$A3,$85,$A4,$60,$1E
       .byte $1E,$10,$1E
LFF4E: LDA    $DC     
       BNE    LFFAB   
       STA    $F5     
       LDA    #$FF    
       STA    $EE     
       STA    $EF     
       STA    $EB     
       LDA    $DF     
       CMP    #$01    
       BEQ    LFF6B   
LFF62: LDA    $89     
       AND    #$0F    
       BNE    LFF6A   
       DEC    $DF     
LFF6A: RTS            

LFF6B: LDA    $F1     
       CMP    #$CC    
       BEQ    LFF7F   
       LDA    $89     
       AND    #$0F    
       BNE    LFF96   
       LDA    $F1     
       CLC            
       ADC    #$11    
       STA    $F1     
       RTS            

LFF7F: LDA    $F0     
       CMP    #$0A    
       BMI    LFF90   
       LDA    $89     
       AND    #$03    
       BNE    LFF8F   
       DEC    $F0     
       DEC    $F0     
LFF8F: RTS            

LFF90: LDA    $F0     
       BNE    LFF97   
       STA    $EB     
LFF96: RTS            

LFF97: LDA    #$00    
       STA    $F0     
       LDX    #$02    
       JMP    LF502   
LFFA0: LDA    $EE     
       BPL    LFFAA   
       LDA    $DF     
       CMP    #$04    
       BNE    LFF62   
LFFAA: RTS            

LFFAB: LDA    $D7     
       CMP    #$50    
       BNE    LFF96   
       LDA    $EF     
       BMI    LFFE9   
       CMP    #$09    
       BEQ    LFFA0   
       LDA    $DB     
       CMP    #$01    
       BNE    LFFA0   
       LDA    $DC     
       LSR            
       BCC    LFFA0   
       LDA    #$00    
       STA    $97     
       STA    $A3     
       LDA    #$0B    
       STA    $98     
       LDA    #$38    
       STA    $99     
       LDA    #$F0    
       STA    $A5     
       LDA    #$FA    
       STA    $A4     
       LDA    #$09    
       STA    $EF     
       STA    $F5     
       LDA    #$FF    
       STA    $EE     
       LDX    #$01    
       JMP    LF502   
LFFE9: LDA    $D9     
       CMP    #$8E    
       BEQ    LFFF7   
       LDA    $89     
       AND    #$03    
       BEQ    LFFF7   
       INC    $D9     
LFFF7: RTS            

LFFF8: .byte $00,$00,$19,$F7,$19,$F7,$19,$F7
