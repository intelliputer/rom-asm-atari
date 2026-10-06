; Disassembly of roms/Time Race.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Time Race.bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $3000
L3000: .byte $B7,$A0,$B3,$B0,$B0,$A0,$B7,$A0,$B3,$B0,$B0,$A0,$B7,$A0,$B9,$B0
       .byte $B0,$A0,$B7,$A0,$B9,$B0,$B0,$A0,$B7,$A0,$B9,$B0,$B0,$A0,$B7,$A0
       .byte $B9,$B0,$A0,$A0,$B5,$A0,$C4,$B0,$A0,$A0,$B5,$A0,$C4,$B0,$A0,$00
       .byte $8C,$2E,$76,$2E,$A6,$2E,$C4,$2E,$AD,$AD,$AD,$AD,$AD,$A0,$CE,$C5
       .byte $D8,$D4,$A0,$CF,$C2,$CA,$C5,$C3,$D4,$A0,$C6,$C9,$CC,$C5,$A0,$CE
       .byte $C1,$CD,$C5,$A0,$C9,$D3,$A0,$8D,$D3,$CF,$D5,$D2,$C3,$C5,$A0,$C6
       .byte $C9,$CC,$C5,$BA,$A0,$AA,$AA,$A0,$CF,$CF,$D0,$D3,$A1,$A0,$C4,$CF
       .byte $D3,$A0,$C5,$D2,$D2,$CF,$D2,$A1,$A0,$C3,$CF,$C4,$C5,$BD,$87,$87
       .byte $87,$A8,$01,$AC,$D8,$A9,$02,$A3,$01,$06,$A3,$03,$06,$A8,$01,$A9
       .byte $AC,$D9,$0A,$C1,$16,$01,$AC,$D8,$0C,$03,$AC,$D9,$0E,$03,$AC,$D8
       .byte $10,$A8,$03,$A9,$12,$01,$AC,$D9,$14,$01,$04,$03,$08,$00,$41,$44
       .byte $C3,$00,$FF,$5D,$41,$4E,$C4,$00,$FF,$1D,$41,$53,$CC,$04,$AA,$FE
       .byte $42,$43,$C3,$08,$00,$90,$42,$4C,$D4,$08,$00,$90,$42,$47,$C5,$08
       .byte $00,$B0,$42,$43,$D3,$08,$00,$B0,$42,$45,$D1,$08,$00,$F0,$42,$4D
       .byte $C9,$08,$00,$30,$42,$4E,$C5,$08,$00,$D0,$42,$50,$CC,$08,$00,$10
       .byte $42,$56,$C3,$08,$00,$50,$42,$56,$D3,$08,$00,$70,$42,$49,$D4,$00
       .byte $0A,$1C,$42,$52,$CB,$10,$00,$00,$43,$4C,$C3,$10,$00,$18,$43,$4C
       .byte $C4,$10,$00,$D8,$43,$4C,$C9,$10,$00,$58,$43,$4C,$D6,$10,$00,$B8
       .byte $43,$4D,$D0,$00,$FF,$BD,$43,$50,$D8,$00,$0E,$DC,$43,$50,$D9,$00
       .byte $0E,$BC,$44,$45,$C3,$00,$AA,$BE,$44,$45,$D8,$10,$00,$CA,$44,$45
       .byte $D9,$10,$00,$88,$45,$4F,$D2,$00,$FF,$3D,$49,$4E,$C3,$00,$AA,$DE
       .byte $49,$4E,$D8,$10,$00,$E8,$49,$4E,$D9,$10,$00,$C8,$4A,$4D,$D0,$01
       .byte $08,$3C,$4A,$53,$D2,$00,$08,$10,$4C,$44,$C1,$00,$FF,$9D,$4C,$44
       .byte $D8,$02,$4E,$9E,$4C,$44,$D9,$00,$AE,$9C,$4C,$53,$D2,$04,$AA,$3E
       .byte $4E,$4F,$D0,$10,$00,$EA,$4F,$52,$C1,$00,$FF,$FD,$50,$48,$C1,$10
       .byte $00,$48,$50,$48,$D0,$10,$00,$08,$50,$4C,$C1,$10,$00,$68,$50,$4C
       .byte $D0,$10,$00,$28,$52,$4F,$CC,$04,$AA,$1E,$52,$4F,$D2,$04,$AA,$5E
       .byte $52,$54,$C9,$10,$00,$40,$52,$54,$D3,$10,$00,$60,$53,$42,$C3,$00
       .byte $FF,$DD,$53,$45,$C3,$10,$00,$38,$53,$45,$C4,$10,$00,$F8,$53,$45
       .byte $C9,$10,$00,$78,$53,$54,$C1,$00,$FB,$7D,$53,$54,$D8,$02,$0A,$7E
       .byte $53,$54,$D9,$00,$2A,$7C,$54,$41,$D8,$10,$00,$AA,$54,$41,$D9,$10
       .byte $00,$A8,$54,$59,$C1,$10,$00,$98,$54,$53,$D8,$10,$00,$BA,$54,$58
       .byte $C1,$10,$00,$8A,$54,$58,$D3,$10,$00,$9A,$45,$51,$D5,$81,$15,$55
       .byte $4F,$52,$C7,$81,$15,$92,$4F,$42,$CA,$81,$16,$79,$4C,$53,$D4,$80
       .byte $17,$07,$44,$46,$C2,$80,$17,$14,$50,$41,$47,$C5,$80,$17,$DD,$41
       .byte $53,$C3,$80,$18,$2B,$44,$43,$C9,$80,$18,$86,$44,$57,$A0,$80,$18
       .byte $B4,$4D,$53,$C2,$80,$18,$A0,$44,$44,$C2,$80,$18,$DD,$44,$53,$A0
       .byte $81,$16,$B3,$52,$45,$D0,$80,$19,$08,$43,$48,$D2,$80,$19,$2B,$53
       .byte $4B,$D0,$80,$19,$36,$44,$53,$45,$43,$D4,$80,$19,$5C,$44,$45,$4E
       .byte $C4,$80,$19,$80,$44,$4F,$A0,$81,$19,$AB,$45,$4C,$53,$C5,$80,$19
       .byte $BD,$46,$49,$CE,$80,$19,$C9,$43,$48,$CE,$80,$19,$D0,$52,$45,$CC
       .byte $80,$1A,$B4,$45,$58,$54,$52,$CE,$81,$1A,$F6,$45,$4E,$54,$52,$D9
       .byte $81,$1A,$BF,$53,$42,$54,$CC,$80,$17,$F2,$00,$00,$00,$00,$00,$04
       .byte $08,$0C,$10,$14,$18,$1C,$20,$30,$18,$0C,$00,$00,$00,$00,$35,$69
       .byte $38,$01,$BF,$00,$01,$10,$00,$01,$3C,$43,$00,$19,$3C,$FF,$00,$00
       .byte $02,$00,$03,$60,$3A,$3C,$33,$61,$3A,$60,$3A,$06,$00,$FC,$3F,$4E
       .byte $38,$00,$FE,$A0,$FF,$04,$06,$57,$3C,$7C,$00,$7D,$00,$7D,$00,$7C
       .byte $00,$00,$00,$7D,$00,$59,$3A,$5D,$3A,$5B,$3A,$5F,$3A,$00,$80,$80
       .byte $54,$20,$A5,$00,$17,$20,$8C,$2E,$00,$96,$BB,$B5,$A2,$A0,$C7,$FF
       .byte $FF,$BF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$BF,$FF,$BF,$BF,$FF
       .byte $FF,$BF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$BF,$FF,$BF,$BF,$FF
       .byte $FF,$BF,$A0,$C4,$D7,$A0,$D3,$D4,$C1,$D2,$D4,$8D,$8D,$8D,$C1,$AD
       .byte $C3,$CF,$CC,$CF,$D2,$8D,$C4,$A0,$C6,$CC,$C1,$D3,$C8,$8D,$A0,$D0
       .byte $CC,$C1,$D9,$8D,$C9,$D0,$8D,$AE,$8D,$C3,$C9,$D4,$D9,$8D,$C5,$A0
       .byte $A3,$8D,$CA,$F0,$83,$90,$A5,$82,$CA,$F0,$83,$90,$A5,$82,$85,$F0
       .byte $E5,$90,$F5,$82,$85,$F0,$E5,$90,$F5,$82,$85,$A2,$E5,$AC,$F5,$F9
       .byte $85,$A2,$E5,$AC,$F5,$F9,$C1,$A2,$93,$AC,$A9,$F9,$C1,$A2,$93,$AC
       .byte $A9,$F9,$C1,$CF,$93,$82,$A9,$F0,$C1,$CF,$93,$82,$A9,$F0,$A5,$CF
       .byte $C8,$82,$87,$F0,$A5,$CF,$C8,$82,$87,$F0,$A5,$AE,$C8,$85,$87,$F0
       .byte $A5,$AE,$C8,$85,$87,$F0,$E0,$AE,$A0,$85,$AE,$F0,$E0,$AE,$A0,$85
       .byte $AE,$ED,$E0,$FC,$A0,$D0,$AE,$ED,$E0,$FC,$A0,$D0,$AE,$ED,$F5,$FC
       .byte $D2,$D0,$8A,$ED,$F5,$FC,$D2,$D0,$8A,$CA,$F5,$83,$D2,$A5,$8A,$CA
       .byte $F5,$83,$D2,$A5,$8A,$CA,$F0,$83,$90,$A5,$82,$CA,$F0,$83,$90,$A5
       .byte $82,$85,$F0,$E5,$90,$F5,$82,$85,$F0,$E5,$90,$F5,$E8,$89,$89,$C5
       .byte $85,$CC,$CF,$8A,$91,$C9,$85,$CC,$CF,$8A,$91,$A0,$85,$80,$CF,$BC
       .byte $91,$A0,$85,$80,$CF,$BC,$A0,$A0,$F0,$80,$85,$BC,$A0,$A0,$F0,$80
       .byte $85,$BC,$A0,$A0,$F0,$81,$85,$80,$A0,$A0,$F0,$81,$85,$80,$85,$A0
       .byte $EE,$FF,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
       .byte $A0,$A0,$AC,$A0,$A0,$A0,$C8,$A0,$AC,$A0,$A0,$A0,$C8,$A0,$AC,$DA
       .byte $A0,$AA,$C8,$A0,$AC,$DA,$A0,$AA,$C8,$A0,$A0,$DA,$C5,$AA,$A0,$A0
       .byte $A0,$DA,$C5,$AA,$A0,$C5,$A0,$B5,$C5,$A0,$A0,$C5,$A0,$B5,$C5,$A0
       .byte $A0,$C5,$B6,$B5,$A0,$A0,$A0,$C5,$B6,$B5,$A0,$A0,$A0,$D4,$B6,$B5
       .byte $A0,$A0,$A0,$D4,$B6,$B5,$A0,$A0,$A0,$D4,$A0,$B5,$A0,$A0,$A0,$D4
       .byte $A0,$B5,$A0,$A0,$A0,$D3,$A0,$A0,$A0,$A0,$A0,$D3,$A0,$A0,$A0,$A0
       .byte $A0,$D3,$B2,$A0,$A0,$A0,$A0,$D3,$B2,$A0,$A0,$A0,$A0,$A0,$B2,$A0
       .byte $A0,$A0,$A0,$A0,$B2,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
       .byte $A0,$A0,$A0,$A0,$A0,$AC,$A0,$A0,$A0,$C8,$A0,$AC,$A0,$A0,$A0,$C8
       .byte $A0,$AC,$DA,$A0,$AA,$C8,$A0,$AC,$DA,$A0,$AA,$C8,$A0,$A0,$DA,$C5
       .byte $AA,$A0,$A0,$A0,$DA,$C5,$AA,$A0,$C5,$A0,$B5,$C5,$A0,$A0,$C5,$A0
       .byte $B5,$C5,$A0,$A0,$C5,$B6,$B5,$A0,$A0,$A0,$C5,$A0,$CC,$C4,$C1,$A0
       .byte $D3,$D4,$C1,$D2,$D4,$21,$00,$36,$CC,$B5,$C6,$B9,$21,$1C,$3C,$CC
       .byte $B0,$B0,$B9,$21,$09,$36,$CC,$B0,$B2,$B0,$21,$20,$36,$CC,$B0,$B3
       .byte $B8,$21,$38,$36,$CC,$B0,$B3,$C6,$21,$3F,$36,$CC,$B0,$B4,$B5,$21
       .byte $45,$36,$CC,$B0,$B5,$B7,$21,$57,$36,$CC,$B0,$B5,$C6,$21,$5F,$36
       .byte $CC,$B0,$B7,$B6,$21,$76,$36,$CC,$B0,$B7,$C1,$21,$7A,$36,$CC,$B0
       .byte $B7,$C3,$21,$7C,$36,$CC,$B0,$B9,$B4,$21,$94,$36,$CC,$B0,$C1,$B1
       .byte $21,$A1,$36,$CC,$B0,$C1,$B3,$21,$A3,$36,$CC,$B3,$C1,$C4,$21,$AD
       .byte $39,$CC,$B0,$C1,$B6,$21,$A6,$36,$CC,$B0,$C3,$B8,$21,$C6,$36,$CC
       .byte $B0,$C4,$C1,$21,$D6,$36,$CC,$B0,$C5,$C5,$21,$EA,$36,$CC,$B1,$B0
       .byte $B2,$21,$FE,$36,$CC,$B1,$B1,$B0,$21,$0C,$37,$CC,$B1,$B2,$C4,$21
       .byte $2D,$37,$CC,$B1,$B4,$B2,$21,$42,$37,$CC,$B1,$B5,$B1,$21,$51,$37
       .byte $CC,$B1,$B5,$C2,$21,$5B,$37,$CC,$B5,$B8,$B0,$21,$A3,$3B,$CC,$B6
       .byte $B0,$C5,$21,$31,$3C,$CC,$B1,$B8,$B1,$21,$81,$37,$CC,$B1,$B9,$B5
       .byte $21,$95,$37,$CC,$B1,$B9,$C6,$21,$9F,$37,$CC,$B1,$C1,$C5,$21,$AE
       .byte $37,$CC,$B1,$C3,$B8,$21,$C8,$37,$CC,$B1,$C3,$C6,$21,$CF,$37,$CC
       .byte $B1,$C4,$C1,$21,$DA,$37,$CC,$B1,$C4,$C5,$21,$DE,$37,$CC,$B7,$B0

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       DEX            
       JSR    L3C1C   
L3609: LDA    $A5     
       STA    COLUBK  
       INC    $DC     
       DEC    $DD     
       INC    $DE     
       INC    $DF     
       LDY    #$FF    
       STY    VSYNC   
       STY    VBLANK  
       LDA    #$27    
       STA    TIM8T   
L3620: LDY    INTIM   
       BNE    L3620   
       STY    WSYNC   
       STY    VSYNC   
       LDA    #$36    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    L3645   
       LDA    $E9     
       BMI    L363F   
L3638: DEC    $E9     
       LDX    #$E9    
       JSR    L3C1C   
L363F: LDA    #$00    
       STA    $AA     
       BEQ    L36A3   
L3645: LDX    #$00    
       LSR            
       BCS    L367A   
       LDA    $E9     
       BMI    L3657   
       LDX    #$E9    
       JSR    L3C1C   
       DEC    $E9     
       BMI    L36A3   
L3657: LDA    $DA     
       BEQ    L365F   
       DEC    $DA     
       BPL    L367C   
L365F: STX    $A9     
       STX    $A8     
       INC    $ED     
       LDA    $ED     
       AND    #$0F    
       STA    $ED     
       CLC            
       ADC    #$01    
       CMP    #$0A    
       BCC    L3676   
       SBC    #$0A    
       ORA    #$10    
L3676: STA    $AA     
       LDX    #$1E    
L367A: STX    $DA     
L367C: LDA    $E8     
       BMI    L36A6   
       LDA    INPT4   
       BMI    L3694   
       LDA    $E9     
       BPL    L3638   
       LDA    #$FF    
       STA    $E8     
       LDA    #$00    
       STA    $E9     
       STA    $AA     
       BEQ    L36A3   
L3694: LDY    #$00    
       LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BEQ    L36A1   
       LDY    #$FF    
L36A1: STY    $E4     
L36A3: JMP    L39AD   
L36A6: LDA    $E5     
       BMI    L36FE   
       LDA    SWCHA   
       STA    $BA     
       LDA    $ED     
       AND    #$04    
       BEQ    L36D6   
       LDA    $BA     
       ASL            
       BMI    L36C6   
       INC    $DE     
       DEC    $9B     
       LDA    #$04    
       CMP    $9B     
       BCC    L36C6   
       STA    $9B     
L36C6: LDA    $BA     
       BMI    L36D6   
       INC    $DC     
       INC    $9B     
       LDA    #$91    
       CMP    $9B     
       BCS    L36D6   
       STA    $9B     
L36D6: LDA    $BA     
       AND    #$20    
       BNE    L36EA   
       INC    $DC     
       DEC    $9A     
       DEC    $9A     
       LDA    #$15    
       CMP    $9A     
       BCC    L36EA   
       STA    $9A     
L36EA: LDA    $BA     
       AND    #$10    
       BNE    L36FE   
       DEC    $DD     
       INC    $9A     
       INC    $9A     
       LDA    #$99    
       CMP    $9A     
       BCS    L36FE   
       STA    $9A     
L36FE: LDA    $ED     
       AND    #$08    
       BEQ    L370C   
       LDA    CXPPMM  
       BPL    L370C   
       LDA    $9A     
       BNE    L375B   
L370C: LDA    $E7     
       BMI    L372D   
       STA    AUDV0   
       LDX    $9A     
       DEX            
       DEX            
       DEX            
       DEX            
       DEX            
       DEX            
       STX    $D5     
       LDA    $9B     
       CLC            
       ADC    #$10    
       STA    $D6     
       LDA    INPT4   
       ORA    $E5     
       BMI    L3795   
       DEC    $E7     
       DEC    $D5     
L372D: INC    $DC     
       LDA    #$09    
       STA    AUDV0   
       STA    AUDC0   
       LDA    $D6     
       CLC            
       ADC    #$06    
       CMP    #$A2    
       BCC    L3742   
       LDA    #$01    
       STA    $D5     
L3742: STA    $D6     
       LDA    $E1     
       CLC            
       ADC    #$03    
       CMP    #$82    
       BCC    L3751   
       INC    $E7     
       LDA    #$00    
L3751: STA    $E1     
       STA    AUDF0   
       LDA    CXM1P   
       BPL    L3781   
       LDA    $D5     
L375B: JSR    L3BA3   
       LDA    $AB,X   
       BMI    L3781   
       ORA    #$80    
       STA    $AB,X   
       LDA    #$15    
       STA    AUDF0   
       STA    $D5     
       LDA    #$02    
       STA    $C8,X   
       LDA    #$00    
       STA    $CB,X   
       STA    $E7     
       STA    $D6     
       STA    $E1     
       JSR    L3C31   
       LDA    #$0F    
       STA    AUDC0   
L3781: LDA    $E7     
       BPL    L3795   
       LDA    $D5     
       LSR            
       BCS    L3795   
       LDA    $ED     
       LSR            
       BCC    L3795   
       LDA    $9A     
       SBC    #$07    
       STA    $D5     
L3795: DEC    $DB     
       BPL    L37AE   
       LDA    #$08    
       STA    $DB     
       LDX    #$02    
L379F: LDA    $8E,X   
       AND    #$10    
       ADC    #$FE    
       ROR    $94,X   
       ROL    $91,X   
       ROR    $8E,X   
       DEX            
       BPL    L379F   
L37AE: LDA    $E5     
       BPL    L3819   
       DEC    $E2     
       BPL    L3816   
       LDX    #$02    
       STX    $E2     
       LDX    $E3     
       INX            
       CPX    #$10    
       BCC    L37F2   
       CLC            
       LDY    #$00    
       STY    AUDC1   
       LDX    #$02    
L37C8: STY    $C5,X   
       LDA    $AB,X   
       BCS    L37CF   
       LSR            
L37CF: DEX            
       BPL    L37C8   
       BCS    L3816   
       DEC    $A7     
       BPL    L37DA   
       STY    $E8     
L37DA: STY    $E5     
       LDX    #$07    
L37DE: LDA    L3F05,X 
       STA    $7F,X   
       DEX            
       BNE    L37DE   
       STX    AUDC1   
       LDA    #$04    
       STA    $9B     
       LDA    #$15    
       STA    $9A     
       BNE    L3816   
L37F2: CPX    #$05    
       BCS    L3809   
       LDY    #$05    
       LDA    #$3E    
       STA    $BB     
       LDA    L3E50,X 
       STA    $BA     
L3801: LDA    ($BA),Y 
       STA.wy $0080,Y 
       DEY            
       BPL    L3801   
L3809: STX    $E3     
       TXA            
       STA    AUDF1   
       EOR    #$FF    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
L3816: JMP    L3831   
L3819: LDY    #$D5    
       LDA    #$08    
       AND    $DF     
       BEQ    L3823   
       LDY    #$AB    
L3823: STY    $84     
       LDY    #$FF    
       LDA    #$10    
       AND    $DF     
       BEQ    L382F   
       LDY    #$2C    
L382F: STY    $8C     
L3831: LDX    #$02    
L3833: LDA    $AB,X   
       LSR            
       BCS    L383B   
       JMP    L38C1   
L383B: DEC    $BC,X   
       BPL    L3881   
       LDA    $C5,X   
       STA    $BC,X   
       LDA    $BF,X   
       CMP    #$04    
       BCS    L386D   
       LDA    $ED     
       AND    #$02    
       BEQ    L386D   
       LDA    $DC,X   
       CMP    #$D0    
       BCS    L386D   
       BPL    L3862   
       DEC    $97,X   
       LDA    L3E60,X 
       CMP    $97,X   
       BCC    L386D   
       BCS    L386B   
L3862: INC    $97,X   
       LDA    L3E5D,X 
       CMP    $97,X   
       BCS    L386D   
L386B: STA    $97,X   
L386D: DEC    $C2,X   
       BNE    L3881   
L3871: LDA    #$3C    
       STA    $9C,X   
       LDA    $AB,X   
       AND    #$7E    
       STA    $AB,X   
       LDA    #$20    
       STA    $BC,X   
       BNE    L38BE   
L3881: LDA    $AB,X   
       BPL    L38AC   
       DEC    $C8,X   
       BPL    L38A9   
       LDA    #$02    
       STA    $C8,X   
       INC    $CB,X   
       LDY    $CB,X   
       CPY    #$10    
       BCS    L3871   
       CPY    #$05    
       BCS    L38A2   
       LDA    L3E4C,Y 
       STA    $9C,X   
       LDA    #$F3    
       STA    $CE,X   
L38A2: TYA            
       STA    AUDF0   
       EOR    #$FF    
       STA    AUDV0   
L38A9: JMP    L38BE   
L38AC: LDY    $BF,X   
       LDA    #$02    
       AND    $DF     
       BEQ    L38B9   
       LDA    L3E35,Y 
       BNE    L38BC   
L38B9: LDA    L3E3D,Y 
L38BC: STA    $9C,X   
L38BE: JMP    L390A   
L38C1: LDA    $E5     
       BMI    L390A   
       DEC    $BC,X   
       BPL    L390A   
       LDA    $DC,X   
       AND    #$0F    
       STA    $BA     
       LDA    L3E5D,X 
       SBC    $BA     
       STA    $97,X   
       LDA    $DC,X   
       AND    #$02    
       STA    $C5,X   
       LDA    $DC,X   
       LSR            
       LSR            
       LSR            
       LSR            
       CPX    #$00    
       BEQ    L38E8   
       AND    #$03    
L38E8: AND    #$07    
       STA    $BF,X   
       TAY            
       LDA    L3E55,Y 
       STA    $AB,X   
       CPY    #$04    
       BCC    L38FC   
       LDA    #$1F    
       STA    $97     
       STX    $C5     
L38FC: LDA    L3E35,Y 
       STA    $9C,X   
       LDA    L3E45,Y 
       STA    $CE,X   
       LDA    #$98    
       STA    $C2,X   
L390A: DEX            
       BMI    L3910   
       JMP    L3833   
L3910: LDA    $E5     
       BMI    L3976   
       LDA    $E6     
       BPL    L3944   
       LDY    $D4     
       LDA    SWCHB   
       ASL            
       BPL    L3921   
       DEY            
L3921: TYA            
       SEC            
       SBC    #$05    
       CMP    #$05    
       BCS    L392D   
       LDA    #$10    
       STA    $D3     
L392D: STA    $D4     
       DEC    $E0     
       BNE    L3935   
       INC    $E6     
L3935: LDA    $E0     
       LSR            
       LSR            
       LSR            
       STA    AUDV1   
       LDA    #$07    
       STA    AUDC1   
       STA    AUDF1   
       BNE    L3976   
L3944: LDA    #$40    
       STA    $E0     
       STA    AUDC1   
       LDY    SWCHB   
       BMI    L3955   
       LDA    #$A0    
       CMP    $DC     
       BCS    L3976   
L3955: LDA    $9A     
       JSR    L3BA3   
       LDA    $AB,X   
       BMI    L3976   
       AND    #$05    
       EOR    #$05    
       BNE    L3976   
       LDA    $C2,X   
       CMP    $9B     
       BCC    L3976   
       STA    $D4     
       LDA    $97,X   
       SBC    #$03    
       ORA    #$01    
       STA    $D3     
       DEC    $E6     
L3976: LDA    $ED     
       AND    #$08    
       BEQ    L3980   
       LDA    CXPPMM  
       BMI    L3985   
L3980: LDA    CXP1FB  
       ASL            
       BPL    L3995   
L3985: LDA    $E5     
       BMI    L3995   
       DEC    $E5     
       LDA    #$00    
       STA    $E6     
       STA    $E3     
       LDA    #$FF    
       STA    $D3     
L3995: LDX    #$FF    
L3997: INX            
       CPX    #$03    
       BEQ    L39A4   
       LDA    $AB,X   
       CMP    $EA,X   
       BCC    L39AD   
       BEQ    L3997   
L39A4: LDX    #$02    
L39A6: LDA    $A8,X   
       STA    $EA,X   
       DEX            
       BPL    L39A6   
L39AD: LDX    #$0A    
       LDY    #$00    
       LDA    $E4     
       BPL    L39B7   
       LDY    #$42    
L39B7: LDA.wy $00A8,Y 
       AND    #$F0    
       LSR            
       ADC    #$A1    
       STA    $AE,X   
       LDA    #$3E    
       STA    $AF,X   
       DEX            
       DEX            
       LDA.wy $00A8,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$A1    
       STA    $AE,X   
       LDA    #$3E    
       STA    $AF,X   
       INY            
       DEX            
       DEX            
       BPL    L39B7   
       LDX    #$08    
       LDY    #$F1    
L39E0: LDA    $B0,X   
       CMP    #$A1    
       BNE    L39EC   
       STY    $B0,X   
       DEX            
       DEX            
       BPL    L39E0   
L39EC: LDA    #$FF    
       STA    CXCLR   
L39F0: LDX    INTIM   
       BNE    L39F0   
       STX    WSYNC   
       STX    VBLANK  
       LDX    #$00    
       LDA    $A3     
       STA    $BA     
       LDY    #$07    
       JSR    L3BC2   
       LDX    #$01    
       LDA    $9B     
       JSR    L3BAC   
       LDX    #$03    
       LDA    $D6     
       JSR    L3BAC   
       INX            
       LDA    $D4     
       JSR    L3BAC   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$05    
       STA    NUSIZ1  
       LDA    #$0E    
       STA    COLUPF  
       LDX    #$00    
       STX    NUSIZ0  
       STX    WSYNC   
       STX    CTRLPF  
       LDA    #$03    
       STA    $D7     
       LDA    #$99    
       STA    $D9     
L3A38: LDA    $D7     
       BEQ    L3A9E   
       TAY            
       LDA    $D9     
       AND    #$FE    
       CMP    $D5     
       PHP            
       CMP    $9A     
       BCS    L3A53   
       LDA    $87,X   
       STA    $BA     
       LDA    $80,X   
       BEQ    L3A51   
       INX            
L3A51: STA    $BB     
L3A53: LDA.wy $00C1,Y 
       STA    WSYNC   
       SEC            
L3A59: SBC    #$0F    
       BCS    L3A59   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       NOP            
       ADC    #$90    
       STA    RESP0   
       STA    WSYNC   
       STA    HMP0    
       LDA    $BB     
       STA    GRP1    
       LDA    $BA     
       STA    COLUP1  
       PLA            
       STA    ENAM1   
       LDY    $D7     
       LDA.wy $009B,Y 
       STA    $9F     
       LDA.wy $00CD,Y 
       STA    $A1     
       LDA    L3AFC,Y 
       STA    $D8     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D9     
       SEC            
       SBC    #$03    
       STA    $D9     
       LDA.wy $0096,Y 
       STA    $D1     
       LDY    #$00    
       DEC    $D7     
       BPL    L3AD2   
L3A9E: JMP    L3B00   
L3AA1: DEC    $D9     
       LDA    $D9     
       CMP    $D8     
       BEQ    L3A38   
       LSR            
       BCC    L3AD2   
       LDA    $D3     
       CMP    $D9     
       PHP            
       PLA            
       STA    ENABL   
       LDA    $D1     
       CMP    $D9     
       BCC    L3AC5   
       LDA    ($A1),Y 
       STA    $BA     
       LDA    ($9F),Y 
       BEQ    L3AC7   
       INY            
       BNE    L3AC7   
L3AC5: LDA    #$00    
L3AC7: STA    WSYNC   
       STA    GRP0    
       LDA    $BA     
       STA    COLUP0  
       JMP    L3AA1   
L3AD2: LDA    $D5     
       CMP    $D9     
       PHP            
       PLA            
       STA    ENAM1   
       LDA    $D9     
       CMP    $9A     
       BCS    L3AEB   
       LDA    $87,X   
       STA    $BA     
       LDA    $80,X   
       BEQ    L3AF1   
       INX            
       BNE    L3AF1   
L3AEB: LDA    #$BC    
       STA    $BA     
       LDA    #$00    
L3AF1: STA    WSYNC   
       STA    GRP1    
       LDA    $BA     
       STA    COLUP1  
       JMP    L3AA1   
L3AFC: .byte $00,$06,$33,$65
L3B00: NOP            
       JSR    L3B98   
       LDA    $A4     
       STA    COLUPF  
       LDX    #$00    
L3B0A: LDA    $8E,X   
       STA    WSYNC   
       STA    PF0     
       LDA    $91,X   
       STA    PF1     
       LDA    $94,X   
       STA    PF2     
       INX            
L3B19: DEC    $D9     
       LDA    $D9     
       BEQ    L3B40   
       LSR            
       BCC    L3B0A   
       LDA    $D1     
       CMP    $D9     
       BCC    L3B33   
       LDA    ($A1),Y 
       STA    $BA     
       LDA    ($9F),Y 
       BEQ    L3B35   
       INY            
       BNE    L3B35   
L3B33: LDA    #$00    
L3B35: STA    WSYNC   
       STA    GRP0    
       LDA    $BA     
       STA    COLUP0  
       JMP    L3B19   
L3B40: STA    WSYNC   
       LDA    $A4     
       STA    COLUBK  
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    #$0A    
       LDA    $E8     
       BPL    L3B65   
       LDY    $A7     
L3B56: LDA    #$F9    
       DEY            
       BPL    L3B5D   
       LDA    #$F1    
L3B5D: STA    $AE,X   
       DEX            
       DEX            
       BPL    L3B56   
       BNE    L3B6F   
L3B65: LDA    #$F1    
L3B67: STA    $AE,X   
       NOP            
       NOP            
       DEX            
       DEX            
       BPL    L3B67   
L3B6F: LDY    $A6     
       STY    $BA     
       LDX    #$00    
       LDY    #$04    
       JSR    L3BC2   
       LDX    #$0A    
       LDA    #$00    
       CLC            
L3B7F: STA    $AE,X   
       ADC    #$08    
       DEX            
       DEX            
       BPL    L3B7F   
       LDX    #$00    
       LDY    #$07    
       JSR    L3BC2   
       LDX    #$0F    
L3B90: STA    WSYNC   
       DEX            
       BNE    L3B90   
       JMP    L3609   
L3B98: LDX    #$30    
L3B9A: STA    WSYNC   
       NOP            
       NOP            
       NOP            
       DEX            
       BPL    L3B9A   
       RTS            

L3BA3: LDX    #$FF    
L3BA5: INX            
       SEC            
       SBC    #$34    
       BPL    L3BA5   
       RTS            

L3BAC: STA    WSYNC   
       SEC            
L3BAF: SBC    #$0F    
       BCS    L3BAF   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       RTS            

L3BC2: STX    GRP0    
       STX    GRP1    
       STX    WSYNC   
       LDA    #$3B    
       JSR    L3BAC   
       LDA    #$43    
       INX            
       JSR    L3BAC   
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    #$01    
       STX    VDELP0  
       STX    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $BA     
       STA    COLUP0  
       STA    COLUP1  
L3BE9: LDA    ($AE),Y 
       STA    $BA     
       STA    WSYNC   
       LDA    ($B8),Y 
       STA    GRP0    
       LDA    ($B6),Y 
       STA    GRP1    
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    ($B2),Y 
       TAX            
       LDA    ($B0),Y 
       STY    $BB     
       LDY    $BA     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $BB     
       DEY            
       BPL    L3BE9   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

L3C1C: LDA    #$00    
L3C1E: DEX            
       STA    VSYNC,X 
       CPX    #$4F    
       BCS    L3C1E   
       LDY    #$2A    
L3C27: LDA    L3F06,Y 
       STA.wy $0080,Y 
       DEY            
       BPL    L3C27   
       RTS            

L3C31: LDY    $BF,X   
       LDA    L3EFE,Y 
       SED            
       CMP    #$90    
       LDY    $A9     
       LDX    #$02    
L3C3D: ADC    $A8,X   
       STA    $A8,X   
       LDA    #$00    
       DEX            
       BPL    L3C3D   
       CLD            
       TYA            
       EOR    $A9     
       AND    #$F0    
       BEQ    L3C57   
       LDY    $A7     
       INY            
       CPY    #$07    
       BCS    L3C57   
       STY    $A7     
L3C57: RTS            

L3C58: .byte $A0,$CC,$B5,$B8,$B9,$8D,$AA,$B1,$B3,$A0,$B2,$B3,$A0,$C4,$C9,$D3
       .byte $D0,$CC,$C1,$D9,$A0,$C2,$D5,$CC,$CC,$C5,$D4,$8D,$A0,$CC,$C4,$D8
       .byte $A0,$A3,$A4,$B0,$B3,$8D,$A0,$CC,$C4,$C1,$A0,$A4,$C4,$B6,$8D,$A0
       .byte $CA,$D3,$D2,$A0,$CC,$B5,$B8,$B9,$8D,$AA,$B1,$B4,$A0,$B2,$B4,$A0
       .byte $C4,$C9,$D3,$D0,$CC,$C1,$D9,$A0,$C5,$CE,$C9,$CD,$D9,$A0,$C2,$D5
       .byte $CC,$CC,$C5,$D4,$8D,$A0,$C9,$CE,$D8,$8D,$A0,$CC,$C4,$C1,$A0,$A4
       .byte $C4,$B4,$8D,$A0,$CA,$D3,$D2,$A0,$CC,$B5,$B8,$B9,$8D,$A0,$D3,$D4
       .byte $C1,$A0,$A4,$B0,$B2,$8D,$A0,$D3,$D4,$C1,$A0,$A4,$B2,$C1,$8D,$A0
       .byte $D3,$D4,$C1,$A0,$A4,$B0,$B2,$8D,$A0,$D3,$D4,$C1,$A0,$A4,$B2,$C2
       .byte $8D,$A0,$CC,$C4,$C1,$A0,$A3,$A4,$B0,$B5,$8D,$A0,$D3,$D4,$C1,$A0
       .byte $A4,$B0,$B5,$8D,$A0,$CC,$C4,$C1,$A0,$A3,$A4,$B0,$C5,$8D,$A0,$D3
       .byte $D4,$C1,$A0,$A4,$B0,$B8,$8D,$A0,$CC,$C4,$D8,$A0,$A3,$A4,$B0,$B0
       .byte $8D,$A0,$D3,$D4,$D8,$A0,$A4,$B0,$B4,$8D,$A0,$D3,$D4,$D8,$A0,$A4
       .byte $B0,$B2,$8D,$A0,$D3,$D4,$D8,$A0,$A4,$B0,$C1,$8D,$A0,$CC,$C4,$C1
       .byte $A0,$A3,$A4,$B0,$B3,$8D,$A0,$D3,$D4,$C1,$A0,$A4,$C4,$B7,$8D,$A0
       .byte $CC,$C4,$C1,$A0,$A3,$A4,$B9,$B9,$8D,$A0,$D3,$D4,$C1,$A0,$A4,$C4
       .byte $B9,$8D,$CC,$B4,$B3,$B8,$A0,$CC,$C4,$C1,$A0,$A4,$C4,$B7,$8D,$A0
       .byte $C2,$C5,$D1,$A0,$CC,$B4,$B9,$C5,$8D,$A0,$D4,$C1,$D9,$8D,$A0,$CC
       .byte $C4,$C1,$A0,$A4,$C4,$B9,$8D,$A0,$C1,$CE,$C4,$A0,$A3,$A4,$C6,$C5
       .byte $8D,$A0,$C3,$CD,$D0,$A0,$A4,$C4,$B5,$8D,$A0,$D0,$C8,$D0,$8D,$A0
       .byte $C3,$CD,$D0,$A0,$A4,$B9,$C1,$8D,$A0,$C2,$C3,$D3,$A0,$CC,$B4,$B5
       .byte $B3,$8D,$A0,$CC,$C4,$C1,$A0,$A4,$B8,$B7,$AC,$D8,$8D,$A0,$D3,$D4
       .byte $C1,$A0,$A4,$C2,$C1,$8D,$A0,$CC,$C4,$C1,$A0,$A4,$B8,$B0,$AC,$D8
       .byte $8D,$A0,$C2,$C5,$D1,$A0,$CC,$B4,$B5,$B1,$8D,$A0,$C9,$CE,$D8,$8D
       .byte $CC,$B4,$B5,$B1,$A0,$D3,$D4,$C1,$A0,$A4,$C2,$C2,$8D,$CC,$B4,$B5
       .byte $B3,$A0,$CC,$C4,$C1,$A0,$A4,$B0,$B0,$C3,$B1,$AC,$D9,$8D,$A0,$D3
       .byte $D4,$C1,$A0,$A4,$B0,$B2,$8D,$A0,$00,$1C,$22,$2E,$20,$22,$1C,$00
       .byte $00,$73,$8A,$8A,$8A,$8A,$72,$00,$00,$DD,$09,$09,$09,$09,$1C,$00
       .byte $00,$11,$11,$F1,$11,$11,$E7,$00,$00,$11,$11,$1F,$11,$11,$D1,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3E35: .byte $31,$3D,$44,$58,$66,$73,$80,$80
L3E3D: .byte $31,$3D,$4E,$5F,$66,$73,$8B,$8B
L3E45: .byte $8B,$BC,$C2,$CB,$D1,$DD,$E9
L3E4C: .byte $E9,$96,$9F,$A8
L3E50: .byte $3C,$63,$69,$6F,$F1
L3E55: .byte $0B,$0F,$0F,$0F,$01,$01,$05,$07
L3E5D: .byte $34,$67,$9A
L3E60: .byte $1A,$4D,$7F,$18,$3C,$7E,$3C,$18,$00,$81,$24,$18,$24,$81,$00,$24
       .byte $81,$42,$81,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$1E,$22,$26,$20,$1C,$7C,$44,$44,$44,$7C,$F9,$81,$81
       .byte $81,$81,$91,$9F,$91,$8A,$84,$08,$08,$08,$08,$3E,$44,$44,$7C,$44
       .byte $44,$3C,$66,$66,$66,$66,$66,$66,$3C,$18,$18,$18,$18,$18,$18,$18
       .byte $18,$7E,$60,$30,$18,$0C,$06,$66,$3C,$3C,$66,$46,$06,$3C,$06,$66
       .byte $3C,$0C,$0C,$7E,$4C,$6C,$3C,$1C,$0C,$1C,$32,$02,$02,$3C,$30,$30
       .byte $3E,$3C,$66,$66,$66,$78,$60,$62,$3C,$18,$18,$18,$18,$18,$0C,$46
       .byte $3E,$3C,$66,$66,$66,$18,$66,$66,$3C,$18,$66,$06,$1E,$66,$66,$66
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$FE,$94,$38,$10,$10
L3EFE: .byte $50,$99,$99,$99,$50,$50,$99
L3F05: .byte $99
L3F06: .byte $18,$18,$3C,$66,$FF,$24,$00,$3E,$B8,$B4,$B8,$BC,$3E,$BC,$C7,$E5
       .byte $EF,$1C,$5C,$5E,$C0,$CE,$DB,$30,$50,$85,$15,$05,$3C,$3C,$3C,$3C
       .byte $3F,$3C,$3F,$08,$2F,$AA,$08,$02,$00,$00,$01,$18,$18,$18,$99,$5A
       .byte $3C,$FF,$FF,$3C,$00,$00,$00,$38,$7C,$11,$13,$7F,$FF,$00,$08,$18
       .byte $3A,$7D,$DA,$7D,$3A,$18,$08,$00,$08,$18,$3D,$7A,$DD,$7A,$3D,$18
       .byte $08,$00,$18,$3C,$7E,$7E,$E7,$DB,$00,$18,$3C,$7E,$7E,$E7,$BD,$00
       .byte $20,$A8,$70,$20,$73,$DA,$72,$FB,$FF,$AE,$FA,$53,$00,$20,$A8,$70
       .byte $20,$73,$DA,$72,$FB,$FF,$AE,$FA,$53,$00,$02,$06,$7E,$FE,$00,$00
       .byte $00,$00,$00,$00,$00,$02,$06,$7E,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $81,$66,$7E,$3C,$3C,$7E,$66,$81,$00,$81,$24,$42,$18,$18,$42,$24
       .byte $81,$00,$24,$81,$42,$81,$81,$42,$81,$24,$00,$3A,$3A,$3B,$3B,$3C
       .byte $3C,$4A,$4B,$4C,$4D,$4E,$6E,$FF,$6E,$FF,$6E,$FF,$6E,$FF,$BC,$3E
       .byte $B8,$3E,$B4,$3E,$B0,$3E,$BC,$3E,$B8,$3E,$BC,$3E,$BC,$3E,$66,$66
       .byte $66,$66,$66,$66,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E,$3E
       .byte $3C,$3C,$3C,$3C,$4A,$4A,$4A,$9A,$9A,$9A,$9A,$4A,$4A,$3C,$3C,$3C
       .byte $3C,$4A,$4A,$4A,$9A,$9A,$00,$36,$00,$36
