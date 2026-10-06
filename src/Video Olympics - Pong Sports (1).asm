; Disassembly of roms/Video Olympics - Pong Sports (1).bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Video Olympics - Pong Sports (1).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
COLUP0  =  $06
CTRLPF  =  $0A
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELBL  =  $27
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT0   =  $38
INPT2   =  $3A
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    $8D,X   
       INX            
       BNE    LF007   
LF00C: LDA    #$A2    
       STA    WSYNC   
       STA    TIM8T   
       LDX    #$01    
LF015: LDY    $8D,X   
       TXA            
       ASL            
       TAX            
       TYA            
       LDY    #$00    
       BEQ    LF023   
LF01F: INY            
       SEC            
       SBC    #$0A    
LF023: CMP    #$0A    
       BPL    LF01F   
       STA    $80     
       ASL            
       ASL            
       ADC    $80     
       ADC    #$CA    
       STA    $C5,X   
       TYA            
       STA    $80     
       ASL            
       ASL            
       ADC    $80     
       ADC    #$CA    
       STA    $C9,X   
       DEX            
       DEX            
       BPL    LF015   
       LDA    #$3F    
       LDY    #$00    
       BIT    $8C     
       BEQ    LF071   
       BMI    LF059   
       LDA    #$20    
       SBC    $8D     
       SBC    $8E     
       CMP    #$02    
       BPL    LF056   
       LDA    #$02    
LF056: TAX            
       BPL    LF065   
LF059: LDA    $BA     
       BMI    LF060   
       JSR    LF432   
LF060: ASL            
       ASL            
       ADC    #$18    
       TAX            
LF065: BIT    $8C     
       LDA    #$04    
       BVS    LF06D   
       LDA    #$0C    
LF06D: DEC    $8C     
       LDY    #$0F    
LF071: STY    AUDV0   
       STX    AUDF0   
       STA    AUDC0   
       JSR    LF23A   
       INC    $88     
       BNE    LF082   
       INC    $89     
       INC    $8A     
LF082: LDA    #$20    
       BIT    $97     
       BEQ    LF094   
       BIT    $94     
       BVS    LF094   
       ADC    $B9     
       STA    $B9     
       BCC    LF094   
       INC    $B8     
LF094: LDA    INTIM   
       BNE    LF094   
       LDX    #$03    
       STX    WSYNC   
       STX    VSYNC   
       STA    HMCLR   
LF0A1: LDA    SWCHA   
       AND    LF6B4,X 
       BEQ    LF0AB   
       LDA    #$C0    
LF0AB: STA    $BF,X   
       CPX    $92     
       BNE    LF0B3   
       STA    $C3     
LF0B3: CPX    $93     
       BNE    LF0B9   
       STA    $C4     
LF0B9: TAY            
       BNE    LF0C6   
       BIT    $98     
       BVC    LF0C6   
       LDA    $B2,X   
       SBC    #$32    
       STA    $B2,X   
LF0C6: DEX            
       BPL    LF0A1   
       INX            
       STX    WSYNC   
       STX    VSYNC   
       LDA    #$20    
       STA    TIM64T  
       LDA    SWCHB   
       TAY            
       EOR    $8F     
       STY    $8F     
       AND    #$02    
       BEQ    LF0E1   
       STX    $88     
LF0E1: LDA    $88     
       AND    #$1F    
       BEQ    LF0E9   
       LDA    #$02    
LF0E9: ORA    SWCHB   
       EOR    #$03    
       AND    #$03    
       LSR            
       BCS    LF113   
       LSR            
       BIT    $90     
       BMI    LF129   
LF0F8: STA    $8C     
       STA    $B6     
       BCC    LF109   
       STA    $8A     
       ADC    $96     
       CMP    #$32    
       BMI    LF107   
       TXA            
LF107: STA    $96     
LF109: STX    $90     
       LDX    $96     
       INX            
       STX    $8D     
       JMP    LF1AD   
LF113: STX    $8D     
       STX    $8E     
       STX    $8C     
       INX            
       STX    $89     
       STX    $C3     
       LDA    #$FF    
       STA    $90     
       STA    $92     
       LDA    #$3C    
       STA    $8B     
       CLC            
LF129: BCS    LF0F8   
       LDX    $89     
       BEQ    LF109   
       LDX    #$14    
       CPX    $8D     
       BMI    LF1AD   
       CPX    $8E     
       BMI    LF1AD   
       STA    $8A     
       LDX    $8B     
       BEQ    LF181   
       STA    $B6     
       DEC    $8B     
       BNE    LF1AD   
       INC    $8B     
       LDA    #$10    
       BIT    $97     
       BNE    LF153   
       LDA    $C3     
       AND    $C4     
       BMI    LF1AD   
LF153: LDA    #$00    
       STA    $8B     
       STA    $91     
       STA    $B9     
       LDA    #$48    
       STA    $8C     
       LDA    #$80    
       STA    $B1     
       STA    $95     
       STA    $B6     
       LDA    #$01    
       BIT    $B8     
       BPL    LF16F   
       LDA    #$FF    
LF16F: STA    $B8     
       LDA    #$01    
       BIT    $9A     
       BMI    LF17D   
       AND    $92     
       BNE    LF17D   
       LDA    #$FF    
LF17D: STA    $BA     
       BNE    LF1AA   
LF181: LDA    $B1     
       SBC    #$01    
       BPL    LF189   
       EOR    #$FF    
LF189: LSR            
       LSR            
       TAX            
       STA    $80     
       LDA    $B6     
       CLC            
       ADC    #$02    
       BPL    LF197   
       EOR    #$FF    
LF197: LSR            
       LSR            
       LSR            
       TAY            
       JMP.ind ($00A1)
LF19E: .byte $24,$36,$10,$05,$A9,$00,$6C,$A3,$00,$20,$5F,$F4
LF1AA: JSR    LF554   
LF1AD: LDA    $98     
       ASL            
       STA    $84     
       LDX    #$03    
LF1B4: LDA    $BB,X   
       LDY    $A9,X   
       BMI    LF1C5   
       BIT    $9A     
       BVC    LF1BF   
       LSR            
LF1BF: STA    $B2,X   
       LDA    $AD,X   
       BNE    LF1DD   
LF1C5: EOR    #$FF    
       CMP    #$38    
       BCS    LF1CD   
       LDA    #$38    
LF1CD: CMP    #$B6    
       BCC    LF1D3   
       LDA    #$B6    
LF1D3: BIT    $84     
       BVC    LF1DB   
       LSR            
       ADC    LF6C0,X 
LF1DB: STA    $AD,X   
LF1DD: JSR    LF445   
       DEX            
       BPL    LF1B4   
       LDA    $88     
       AND    #$07    
       TAY            
       AND    #$01    
       STA    $80     
       LDA    #$10    
       BIT    $97     
       BEQ    LF206   
       LDA    $95     
       CPY    #$00    
       BEQ    LF202   
       CMP    $B6     
       BEQ    LF202   
       BCS    LF200   
       ADC    #$05    
LF200: SBC    #$02    
LF202: STA    $95     
       STA    $B2     
LF206: LDA    $92     
       TAX            
       EOR    #$02    
       STA    $93     
       BMI    LF21F   
       BIT    $9A     
       BPL    LF21F   
       LDA    #$1C    
       AND    $88     
       BNE    LF21F   
       STA    $B2,X   
       LDX    $93     
       STA    $B2,X   
LF21F: LDA    INTIM   
       BNE    LF21F   
       STA    CXCLR   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDY    #$07    
       JSR    LF5B8   
       JSR    LF585   
       JSR    LF5D0   
       JMP    LF00C   
LF23A: LDA    $96     
       AND    #$3E    
       TAX            
       LDA    LF713,X 
       STA    $98     
       LDA    LF712,X 
       STA    $97     
       AND    #$07    
       STA    $80     
       ASL            
       ASL            
       ASL            
       ADC    $80     
       ADC    #$08    
       TAY            
       LDX    #$08    
LF257: LDA    LF659,Y 
       STA    $9B,X   
       DEY            
       DEX            
       BPL    LF257   
       LDA    $8A     
       BRK            
       NOP            
       STA    $80     
       LDX    #$FF    
       LDA    #$08    
       BIT    SWCHB   
       BNE    LF271   
       LDX    #$0F    
LF271: STX    $81     
       LDX    #$03    
       LDY    #$07    
LF277: CLC            
       LDA.wy $009B,Y 
       BIT    $81     
       BMI    LF282   
       LDA    LF698,X 
LF282: ADC    $80     
       AND    $81     
       STA    COLUP0,X
       DEY            
       DEY            
       DEX            
       BPL    LF277   
       LDA    #$F3    
       STA    $A4     
       STA    $A2     
       LDA    #$F7    
       STA    $C6     
       STA    $C8     
       STA    $CA     
       STA    $CC     
       STA    $9C     
       STA    $9E     
       LDX    $9F     
       CPX    #$C9    
       BNE    LF2A9   
       LDA    #$00    
LF2A9: STA    $A0     
       LDA    $96     
       AND    #$01    
       TAX            
       LDA    $97,X   
       AND    #$3F    
       STA    $97,X   
       LDA    $98     
       AND    #$1F    
       ASL            
       TAY            
       LDA    LF6C5,Y 
       STA    $9A     
       LDA    LF6C4,Y 
       STA    $99     
       AND    #$C0    
       BRK            
       NOP            
       LSR            
       TAX            
       TAY            
       LDA    #$00    
       BIT    $9A     
       BVS    LF2D5   
       LDA    #$C0    
LF2D5: STA    $80     
       BIT    SWCHB   
       BPL    LF2DD   
       INY            
LF2DD: BVC    LF2E0   
       INX            
LF2E0: STX    $81     
       LDX    #$01    
       JSR    LF321   
       DEX            
       LDY    $81     
       JSR    LF321   
       LDA    $97     
       LSR            
       LSR            
       STA    RESMP0  
       STA    RESMP1  
       LDA    $99     
       STA    $A9     
       STA    $AA     
       ASL            
       STA    $AB     
       STA    $AC     
       LDA    #$03    
       TAX            
       ORA    $9A     
       AND    #$3F    
       TAY            
LF308: LDA    $A9,X   
       ASL            
       LDA    LF6E2,Y 
       BCS    LF314   
       STA    $AD,X   
       BCC    LF316   
LF314: STA    $B2,X   
LF316: DEY            
       DEX            
       BPL    LF308   
       STX    VBLANK  
       LDY    #$03    
       JMP    LF5B8   
LF321: LDA    LF69C,Y 
       ORA    $99     
       STA    NUSIZ0,X
       LDA    LF6A4,Y 
       ORA    $80     
       STA    $A5,X   
       LDA    LF6AC,Y 
       ORA    $80     
       STA    $A7,X   
       RTS            

LF337: .byte $24,$B6,$10,$65,$C0,$07,$30,$4B,$24,$36,$10,$5D,$E0,$1F,$D0,$59
       .byte $24,$BA,$10,$5A,$30,$5C,$A5,$92,$30,$4F,$24,$BA,$10,$4B,$A6,$B1
       .byte $E0,$B4,$90,$06,$29,$01,$AA,$4C,$AB,$F3,$A8,$29,$01,$49,$01,$AA
       .byte $B9,$32,$00,$A4,$93,$19,$32,$00,$0A,$10,$2E,$30,$37,$C0,$0D,$30
       .byte $28,$E0,$12,$F0,$0E,$C0,$04,$D0,$06,$24,$B6,$10,$25,$30,$1F,$E0
       .byte $0D,$10,$16,$24,$B1,$30,$17,$10,$19,$24,$36,$10,$0C,$C0,$0C,$D0
       .byte $08,$E0,$10,$30,$04,$24,$B8,$10,$EA,$A6,$80,$4C,$9E,$F1,$A2,$00
       .byte $F0,$02,$A2,$01,$F6,$8D,$86,$92,$A9,$3F,$85,$8B,$A9,$0F,$85,$8C
       .byte $4C,$AD,$F1,$C0,$0C,$D0,$28,$E0,$11,$30,$24,$E6,$B6,$09,$C0,$D0
       .byte $3C,$C0,$0C,$30,$1A,$E0,$11,$30,$16,$E0,$14,$10,$12,$E0,$12,$F0
       .byte $02,$09,$80,$C0,$0C,$D0,$26,$09,$40,$C0,$0A,$D0,$02,$09,$40,$E0
       .byte $0E,$10,$0B,$09,$80,$A6,$B1,$10,$02,$CA,$CA,$E8,$86,$B1,$C0,$06
       .byte $10,$0B,$09,$40,$A4,$B6,$10,$02,$88,$88,$C8,$84,$B6,$85,$82,$0A
       .byte $85,$94,$6A,$D0,$03,$4C,$A7,$F1,$10,$03,$20,$08,$F5,$24,$82,$50
       .byte $03,$20,$22,$F4,$A9,$84,$85,$8C,$4C,$AA,$F1,$A5,$B9,$20,$32,$F4
       .byte $85,$B9,$A5,$B8,$49,$FF,$69,$00,$85,$B8,$60
LF432: EOR    #$FF    
       SEC            
       ADC    #$00    
       RTS            

LF438: .byte $0A,$69,$00,$0A,$69,$00,$0A,$69,$00,$0A,$69,$00,$40
LF445: SEC            
       SBC    #$2F    
       LDY    #$02    
LF44A: INY            
       SBC    #$0F    
       BCS    LF44A   
       EOR    #$FF    
       SBC    #$06    
       BRK            
       NOP            
       STY    WSYNC   
LF457: DEY            
       BPL    LF457   
       STA    RESP0,X 
       STA    HMP0,X  
       RTS            

LF45F: .byte $A2,$03,$B5,$32,$0A,$30,$07,$CA,$10,$F8,$E8,$86,$94,$60,$24,$97
       .byte $50,$31,$B4,$B2,$B5,$A9,$10,$02,$B4,$AD,$24,$94,$70,$06,$84,$95
       .byte $A9,$54,$85,$8C,$B5,$BF,$49,$40,$25,$97,$85,$94,$F0,$15,$98,$38
       .byte $E5,$95,$84,$95,$18,$B4,$A9,$10,$05,$65,$B1,$85,$B1,$60,$65,$B6
       .byte $85,$B6,$60,$A9,$C4,$85,$8C,$E6,$91,$86,$92,$24,$98,$30,$10,$A5
       .byte $9A,$29,$03,$A8,$A5,$91,$F0,$19,$39,$BC,$F6,$D0,$14,$F0,$04,$B5
       .byte $BF,$D0,$0E,$A4,$BA,$20,$10,$F5,$84,$BA,$A4,$B8,$20,$10,$F5,$84
       .byte $B8,$B5,$A9,$30,$4E,$A9,$08,$35,$A5,$85,$80,$49,$08,$4A,$69,$03
       .byte $75,$B2,$E5,$B6,$29,$3F,$4A,$C9,$10,$90,$02,$09,$E0,$20,$32,$F4
       .byte $A4,$80,$D0,$03,$C9,$80,$6A,$85,$B8,$24,$9A,$38,$30,$02,$8A,$4A
       .byte $A5,$BA,$90,$02,$49,$80,$10,$01,$60,$A5,$BA,$20,$32,$F4,$85,$BA
       .byte $60,$10,$08,$88,$C0,$FC,$B0,$02,$A0,$FC,$60,$C8,$C0,$05,$30,$02
       .byte $A0,$04,$60,$8A,$29,$02,$A8,$85,$82,$AD,$82,$02,$3D,$B8,$F6,$F0
       .byte $01,$C8,$85,$81,$B5,$AD,$18,$79,$50,$F5,$E5,$B1,$85,$80,$A4,$82
       .byte $D0,$03,$C9,$80,$6A,$A4,$81,$D0,$03,$C9,$80,$6A,$85,$BA,$4C,$22
       .byte $F4,$0C,$07,$04,$02
LF554: LDA    $B1     
       BIT    $94     
       BVS    LF57F   
       CLC            
       LDA    $B9     
       ADC    $B7     
       STA    $B7     
       LDA    #$00    
       BIT    $97     
       BPL    LF56D   
       BIT    $C3     
       BMI    LF56D   
       LDA    $B8     
LF56D: ADC    $B8     
       CLC            
       ADC    $B6     
       STA    $B6     
       EOR    #$01    
       STA    VDELBL  
       SEC            
       LDA    $B1     
       SBC    $BA     
       STA    $B1     
LF57F: LDX    #$04    
       JSR    LF445   
       RTS            

LF585: LDX    #$02    
       STX    CTRLPF  
       TAY            
       DEX            
LF58B: STA    WSYNC   
       LDA    ($C5),Y 
       AND    #$0F    
       STA    $87     
       LDA    ($C9),Y 
       AND    #$F0    
       ORA    $87     
       STA    PF1     
       LDA    ($C7),Y 
       AND    #$0F    
       STA    $87     
       LDA    ($CB),Y 
       AND    #$F0    
       ORA    $87     
       AND    $90     
       STA    PF1     
       TXA            
       INX            
       AND    #$03    
       BNE    LF58B   
       INY            
       CPY    #$05    
       BNE    LF58B   
       LDY    #$02    
LF5B8: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STY    WSYNC   
       DEY            
       BNE    LF5B8   
       RTS            

LF5D0: TSX            
       STX    $81     
       LDX    #$1D    
       TXS            
       LDX    #$26    
       LDA    #$15    
       STA    CTRLPF  
       STX    $84     
       STX    $85     
LF5E0: TXA            
       LDY    #$F0    
       SEC            
       SBC    $B3     
       AND    $A6     
       BEQ    LF5EC   
       LDY    #$00    
LF5EC: TXA            
       INX            
       SEC            
       SBC    $B4     
       AND    $A7     
       PHP            
       STY    GRP1    
       TXA            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    ($9B),Y 
       STA    PF0     
       LDA    ($9D),Y 
       STA    PF1     
       LDA    ($9F),Y 
       STA    PF2     
       INX            
       TXA            
       LDX    #$1F    
       TXS            
       TAX            
       LDY    #$F0    
       SEC            
       SBC    $B2     
       AND    $A5     
       BEQ    LF618   
       LDY    #$00    
LF618: TXA            
       SEC            
       SBC    $B6     
       AND    #$FC    
       PHP            
       STX    WSYNC   
       STY    GRP0    
       TXA            
       SEC            
       SBC    $B5     
       AND    $A8     
       PHP            
       LDY    $80     
       LDA.wy $0038,Y 
       BMI    LF633   
       STX    $84     
LF633: LDA.wy $003A,Y 
       BMI    LF63A   
       STX    $85     
LF63A: CPX    #$DC    
       BNE    LF5E0   
       LDX    $81     
       TXS            
       LDY    $80     
       LDA    $85     
       CLC            
       ADC.wy $00BD,Y 
       ROR            
       STA.wy $00BD,Y 
       LDA    $84     
       CLC            
       ADC.wy $00BB,Y 
       ROR            
       STA.wy $00BB,Y 
       RTS            

LF658: .byte $00
LF659: .byte $56,$38,$56,$C8,$56,$0F,$86,$22,$F5,$40,$18,$56,$76,$56,$0F,$86
       .byte $C3,$E0,$6C,$D6,$82,$28,$56,$00,$74,$9A,$C8,$40,$18,$56,$76,$C9
       .byte $0F,$7C,$C3,$E0,$6C,$38,$56,$76,$56,$2C,$4D,$22,$E6,$6C,$2C,$56
       .byte $9A,$98,$0F,$37,$00,$E6,$6C,$2C,$AE,$C8,$56,$9A,$90,$22,$BA
LF698: .byte $0C,$00,$0E,$06
LF69C: .byte $20,$20,$30,$20,$27,$25,$37,$25
LF6A4: .byte $30,$38,$30,$38,$3C,$3C,$3C,$3C
LF6AC: .byte $32,$3A,$3C,$3C,$32,$3A,$3C,$3C
LF6B4: .byte $80,$40,$08,$04,$40,$80,$40,$80,$FF,$03,$07,$0F
LF6C0: .byte $18,$60,$1B,$65
LF6C4: .byte $20
LF6C5: .byte $01,$24,$06,$20,$09,$24,$0D,$20,$12,$24,$17,$24,$4E,$22,$5B,$20
       .byte $1D,$24,$21,$26,$22,$20,$5F,$A5,$26,$20,$A9,$E5,$2E
LF6E2: .byte $40,$BC,$41,$BD,$36,$86,$37,$87,$40,$BC,$69,$91,$9C,$C0,$9D,$C1
       .byte $40,$BC,$95,$69,$46,$76,$67,$57,$46,$96,$87,$57,$54,$A8,$8D,$71
       .byte $54,$68,$55,$69,$38,$C0,$40,$BC,$A8,$A8,$90,$90,$B8,$B8,$98,$98
LF712: .byte $98
LF713: .byte $80,$88,$80,$80,$80,$80,$82,$88,$81,$80,$81,$89,$83,$81,$84,$41
       .byte $85,$49,$86,$41,$87,$8A,$88,$8A,$89,$4A,$8A,$82,$88,$42,$8B,$43
       .byte $8C,$8C,$8D,$84,$8D,$2D,$6E,$25,$6E,$AE,$2E,$6E,$6E,$A6,$2E,$66
       .byte $6E,$F0,$F0,$30,$30,$30,$30,$30,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$30,$30,$30,$30,$30,$FF,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$30
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$30,$FF,$FF,$00,$00,$00,$00,$00,$00,$70,$40,$40,$40,$40
       .byte $40,$40,$70,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$80,$00,$80,$00,$FF
       .byte $FF,$00,$00,$00,$00,$00,$00,$F0,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$FF,$FF,$07,$05,$05,$05,$07,$22,$22,$22,$22
       .byte $22,$77,$11,$77,$44,$77,$77,$11,$33,$11,$77,$55,$55,$77,$11,$11
       .byte $77,$44,$77,$11,$77,$44,$44,$77,$55,$77,$77,$11,$11,$11,$11,$77
       .byte $55,$77,$55,$77,$77,$55,$77,$11,$11,$00,$F0,$38,$F4
