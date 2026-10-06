; Disassembly of roms/Video Olympics - Pong Sports (2).bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Video Olympics - Pong Sports (2).bin
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
       .byte $55,$77,$55,$77,$77,$55,$77,$11,$11,$00,$F0,$38,$F4,$78,$D8,$A2
       .byte $FF,$9A,$E8,$8A,$95,$8D,$E8,$D0,$FB,$A9,$A2,$85,$02,$8D,$95,$02
       .byte $A2,$01,$B4,$8D,$8A,$0A,$AA,$98,$A0,$00,$F0,$04,$C8,$38,$E9,$0A
       .byte $C9,$0A,$10,$F8,$85,$80,$0A,$0A,$65,$80,$69,$CA,$95,$C5,$98,$85
       .byte $80,$0A,$0A,$65,$80,$69,$CA,$95,$C9,$CA,$CA,$10,$D5,$A9,$3F,$A0
       .byte $00,$24,$8C,$F0,$29,$30,$0F,$A9,$20,$E5,$8D,$E5,$8E,$C9,$02,$10
       .byte $02,$A9,$02,$AA,$10,$0C,$A5,$BA,$30,$03,$20,$32,$F4,$0A,$0A,$69
       .byte $18,$AA,$24,$8C,$A9,$04,$70,$02,$A9,$0C,$C6,$8C,$A0,$0F,$84,$19
       .byte $86,$17,$85,$15,$20,$3A,$F2,$E6,$88,$D0,$04,$E6,$89,$E6,$8A,$A9
       .byte $20,$24,$97,$F0,$0C,$24,$94,$70,$08,$65,$B9,$85,$B9,$90,$02,$E6
       .byte $B8,$AD,$84,$02,$D0,$FB,$A2,$03,$86,$02,$86,$00,$85,$2B,$AD,$80
       .byte $02,$3D,$B4,$F6,$F0,$02,$A9,$C0,$95,$BF,$E4,$92,$D0,$02,$85,$C3
       .byte $E4,$93,$D0,$02,$85,$C4,$A8,$D0,$0A,$24,$98,$50,$06,$B5,$B2,$E9
       .byte $32,$95,$B2,$CA,$10,$D8,$E8,$86,$02,$86,$00,$A9,$20,$8D,$96,$02
       .byte $AD,$82,$02,$A8,$45,$8F,$84,$8F,$29,$02,$F0,$02,$86,$88,$A5,$88
       .byte $29,$1F,$F0,$02,$A9,$02,$0D,$82,$02,$49,$03,$29,$03,$4A,$B0,$20
       .byte $4A,$24,$90,$30,$31,$85,$8C,$85,$B6,$90,$0B,$85,$8A,$65,$96,$C9
       .byte $32,$30,$01,$8A,$85,$96,$86,$90,$A6,$96,$E8,$86,$8D,$4C,$AD,$F1
       .byte $86,$8D,$86,$8E,$86,$8C,$E8,$86,$89,$86,$C3,$A9,$FF,$85,$90,$85
       .byte $92,$A9,$3C,$85,$8B,$18,$B0,$CD,$A6,$89,$F0,$DA,$A2,$14,$E4,$8D
       .byte $30,$78,$E4,$8E,$30,$74,$85,$8A,$A6,$8B,$F0,$42,$85,$B6,$C6,$8B
       .byte $D0,$68,$E6,$8B,$A9,$10,$24,$97,$D0,$06,$A5,$C3,$25,$C4,$30,$5A
       .byte $A9,$00,$85,$8B,$85,$91,$85,$B9,$A9,$48,$85,$8C,$A9,$80,$85,$B1
       .byte $85,$95,$85,$B6,$A9,$01,$24,$B8,$10,$02,$A9,$FF,$85,$B8,$A9,$01
       .byte $24,$9A,$30,$06,$25,$92,$D0,$02,$A9,$FF,$85,$BA,$D0,$29,$A5,$B1
       .byte $E9,$01,$10,$02,$49,$FF,$4A,$4A,$AA,$85,$80,$A5,$B6,$18,$69,$02
       .byte $10,$02,$49,$FF,$4A,$4A,$4A,$A8,$6C,$A1,$00,$24,$36,$10,$05,$A9
       .byte $00,$6C,$A3,$00,$20,$5F,$F4,$20,$54,$F5,$A5,$98,$0A,$85,$84,$A2
       .byte $03,$B5,$BB,$B4,$A9,$30,$0B,$24,$9A,$50,$01,$4A,$95,$B2,$B5,$AD
       .byte $D0,$18,$49,$FF,$C9,$38,$B0,$02,$A9,$38,$C9,$B6,$90,$02,$A9,$B6
       .byte $24,$84,$50,$04,$4A,$7D,$C0,$F6,$95,$AD,$20,$45,$F4,$CA,$10,$D1
       .byte $A5,$88,$29,$07,$A8,$29,$01,$85,$80,$A9,$10,$24,$97,$F0,$14,$A5
       .byte $95,$C0,$00,$F0,$0A,$C5,$B6,$F0,$06,$B0,$02,$69,$05,$E9,$02,$85
       .byte $95,$85,$B2,$A5,$92,$AA,$49,$02,$85,$93,$30,$10,$24,$9A,$10,$0C
       .byte $A9,$1C,$25,$88,$D0,$06,$95,$B2,$A6,$93,$95,$B2,$AD,$84,$02,$D0
       .byte $FB,$85,$2C,$85,$02,$85,$2A,$85,$01,$A0,$07,$20,$B8,$F5,$20,$85
       .byte $F5,$20,$D0,$F5,$4C,$0C,$F0,$A5,$96,$29,$3E,$AA,$BD,$13,$F7,$85
       .byte $98,$BD,$12,$F7,$85,$97,$29,$07,$85,$80,$0A,$0A,$0A,$65,$80,$69
       .byte $08,$A8,$A2,$08,$B9,$59,$F6,$95,$9B,$88,$CA,$10,$F7,$A5,$8A,$00
       .byte $EA,$85,$80,$A2,$FF,$A9,$08,$2C,$82,$02,$D0,$02,$A2,$0F,$86,$81
       .byte $A2,$03,$A0,$07,$18,$B9,$9B,$00,$24,$81,$30,$03,$BD,$98,$F6,$65
       .byte $80,$25,$81,$95,$06,$88,$88,$CA,$10,$EA,$A9,$F3,$85,$A4,$85,$A2
       .byte $A9,$F7,$85,$C6,$85,$C8,$85,$CA,$85,$CC,$85,$9C,$85,$9E,$A6,$9F
       .byte $E0,$C9,$D0,$02,$A9,$00,$85,$A0,$A5,$96,$29,$01,$AA,$B5,$97,$29
       .byte $3F,$95,$97,$A5,$98,$29,$1F,$0A,$A8,$B9,$C5,$F6,$85,$9A,$B9,$C4
       .byte $F6,$85,$99,$29,$C0,$00,$EA,$4A,$AA,$A8,$A9,$00,$24,$9A,$70,$02
       .byte $A9,$C0,$85,$80,$2C,$82,$02,$10,$01,$C8,$50,$01,$E8,$86,$81,$A2
       .byte $01,$20,$21,$F3,$CA,$A4,$81,$20,$21,$F3,$A5,$97,$4A,$4A,$85,$28
       .byte $85,$29,$A5,$99,$85,$A9,$85,$AA,$0A,$85,$AB,$85,$AC,$A9,$03,$AA
       .byte $05,$9A,$29,$3F,$A8,$B5,$A9,$0A,$B9,$E2,$F6,$B0,$04,$95,$AD,$90
       .byte $02,$95,$B2,$88,$CA,$10,$EE,$86,$01,$A0,$03,$4C,$B8,$F5,$B9,$9C
       .byte $F6,$05,$99,$95,$04,$B9,$A4,$F6,$05,$80,$95,$A5,$B9,$AC,$F6,$05
       .byte $80,$95,$A7,$60,$24,$B6,$10,$65,$C0,$07,$30,$4B,$24,$36,$10,$5D
       .byte $E0,$1F,$D0,$59,$24,$BA,$10,$5A,$30,$5C,$A5,$92,$30,$4F,$24,$BA
       .byte $10,$4B,$A6,$B1,$E0,$B4,$90,$06,$29,$01,$AA,$4C,$AB,$F3,$A8,$29
       .byte $01,$49,$01,$AA,$B9,$32,$00,$A4,$93,$19,$32,$00,$0A,$10,$2E,$30
       .byte $37,$C0,$0D,$30,$28,$E0,$12,$F0,$0E,$C0,$04,$D0,$06,$24,$B6,$10
       .byte $25,$30,$1F,$E0,$0D,$10,$16,$24,$B1,$30,$17,$10,$19,$24,$36,$10
       .byte $0C,$C0,$0C,$D0,$08,$E0,$10,$30,$04,$24,$B8,$10,$EA,$A6,$80,$4C
       .byte $9E,$F1,$A2,$00,$F0,$02,$A2,$01,$F6,$8D,$86,$92,$A9,$3F,$85,$8B
       .byte $A9,$0F,$85,$8C,$4C,$AD,$F1,$C0,$0C,$D0,$28,$E0,$11,$30,$24,$E6
       .byte $B6,$09,$C0,$D0,$3C,$C0,$0C,$30,$1A,$E0,$11,$30,$16,$E0,$14,$10
       .byte $12,$E0,$12,$F0,$02,$09,$80,$C0,$0C,$D0,$26,$09,$40,$C0,$0A,$D0
       .byte $02,$09,$40,$E0,$0E,$10,$0B,$09,$80,$A6,$B1,$10,$02,$CA,$CA,$E8
       .byte $86,$B1,$C0,$06,$10,$0B,$09,$40,$A4,$B6,$10,$02,$88,$88,$C8,$84
       .byte $B6,$85,$82,$0A,$85,$94,$6A,$D0,$03,$4C,$A7,$F1,$10,$03,$20,$08
       .byte $F5,$24,$82,$50,$03,$20,$22,$F4,$A9,$84,$85,$8C,$4C,$AA,$F1,$A5
       .byte $B9,$20,$32,$F4,$85,$B9,$A5,$B8,$49,$FF,$69,$00,$85,$B8,$60,$49
       .byte $FF,$38,$69,$00,$60,$0A,$69,$00,$0A,$69,$00,$0A,$69,$00,$0A,$69
       .byte $00,$40,$38,$E9,$2F,$A0,$02,$C8,$E9,$0F,$B0,$FB,$49,$FF,$E9,$06
       .byte $00,$EA,$84,$02,$88,$10,$FD,$95,$10,$95,$20,$60,$A2,$03,$B5,$32
       .byte $0A,$30,$07,$CA,$10,$F8,$E8,$86,$94,$60,$24,$97,$50,$31,$B4,$B2
       .byte $B5,$A9,$10,$02,$B4,$AD,$24,$94,$70,$06,$84,$95,$A9,$54,$85,$8C
       .byte $B5,$BF,$49,$40,$25,$97,$85,$94,$F0,$15,$98,$38,$E5,$95,$84,$95
       .byte $18,$B4,$A9,$10,$05,$65,$B1,$85,$B1,$60,$65,$B6,$85,$B6,$60,$A9
       .byte $C4,$85,$8C,$E6,$91,$86,$92,$24,$98,$30,$10,$A5,$9A,$29,$03,$A8
       .byte $A5,$91,$F0,$19,$39,$BC,$F6,$D0,$14,$F0,$04,$B5,$BF,$D0,$0E,$A4
       .byte $BA,$20,$10,$F5,$84,$BA,$A4,$B8,$20,$10,$F5,$84,$B8,$B5,$A9,$30
       .byte $4E,$A9,$08,$35,$A5,$85,$80,$49,$08,$4A,$69,$03,$75,$B2,$E5,$B6
       .byte $29,$3F,$4A,$C9,$10,$90,$02,$09,$E0,$20,$32,$F4,$A4,$80,$D0,$03
       .byte $C9,$80,$6A,$85,$B8,$24,$9A,$38,$30,$02,$8A,$4A,$A5,$BA,$90,$02
       .byte $49,$80,$10,$01,$60,$A5,$BA,$20,$32,$F4,$85,$BA,$60,$10,$08,$88
       .byte $C0,$FC,$B0,$02,$A0,$FC,$60,$C8,$C0,$05,$30,$02,$A0,$04,$60,$8A
       .byte $29,$02,$A8,$85,$82,$AD,$82,$02,$3D,$B8,$F6,$F0,$01,$C8,$85,$81
       .byte $B5,$AD,$18,$79,$50,$F5,$E5,$B1,$85,$80,$A4,$82,$D0,$03,$C9,$80
       .byte $6A,$A4,$81,$D0,$03,$C9,$80,$6A,$85,$BA,$4C,$22,$F4,$0C,$07,$04
       .byte $02,$A5,$B1,$24,$94,$70,$25,$18,$A5,$B9,$65,$B7,$85,$B7,$A9,$00
       .byte $24,$97,$10,$06,$24,$C3,$30,$02,$A5,$B8,$65,$B8,$18,$65,$B6,$85
       .byte $B6,$49,$01,$85,$27,$38,$A5,$B1,$E5,$BA,$85,$B1,$A2,$04,$20,$45
       .byte $F4,$60,$A2,$02,$86,$0A,$A8,$CA,$85,$02,$B1,$C5,$29,$0F,$85,$87
       .byte $B1,$C9,$29,$F0,$05,$87,$85,$0E,$B1,$C7,$29,$0F,$85,$87,$B1,$CB
       .byte $29,$F0,$05,$87,$25,$90,$85,$0E,$8A,$E8,$29,$03,$D0,$DA,$C8,$C0
       .byte $05,$D0,$D5,$A0,$02,$A9,$00,$85,$0D,$85,$0E,$85,$0F,$85,$1B,$85
       .byte $1C,$85,$1D,$85,$1E,$85,$1F,$84,$02,$88,$D0,$E9,$60,$BA,$86,$81
       .byte $A2,$1D,$9A,$A2,$26,$A9,$15,$85,$0A,$86,$84,$86,$85,$8A,$A0,$F0
       .byte $38,$E5,$B3,$25,$A6,$F0,$02,$A0,$00,$8A,$E8,$38,$E5,$B4,$25,$A7
       .byte $08,$84,$1C,$8A,$4A,$4A,$4A,$A8,$B1,$9B,$85,$0D,$B1,$9D,$85,$0E
       .byte $B1,$9F,$85,$0F,$E8,$8A,$A2,$1F,$9A,$AA,$A0,$F0,$38,$E5,$B2,$25
       .byte $A5,$F0,$02,$A0,$00,$8A,$38,$E5,$B6,$29,$FC,$08,$86,$02,$84,$1B
       .byte $8A,$38,$E5,$B5,$25,$A8,$08,$A4,$80,$B9,$38,$00,$30,$02,$86,$84
       .byte $B9,$3A,$00,$30,$02,$86,$85,$E0,$DC,$D0,$A2,$A6,$81,$9A,$A4,$80
       .byte $A5,$85,$18,$79,$BD,$00,$6A,$99,$BD,$00,$A5,$84,$18,$79,$BB,$00
       .byte $6A,$99,$BB,$00,$60,$00,$56,$38,$56,$C8,$56,$0F,$86,$22,$F5,$40
       .byte $18,$56,$76,$56,$0F,$86,$C3,$E0,$6C,$D6,$82,$28,$56,$00,$74,$9A
       .byte $C8,$40,$18,$56,$76,$C9,$0F,$7C,$C3,$E0,$6C,$38,$56,$76,$56,$2C
       .byte $4D,$22,$E6,$6C,$2C,$56,$9A,$98,$0F,$37,$00,$E6,$6C,$2C,$AE,$C8
       .byte $56,$9A,$90,$22,$BA,$0C,$00,$0E,$06,$20,$20,$30,$20,$27,$25,$37
       .byte $25,$30,$38,$30,$38,$3C,$3C,$3C,$3C,$32,$3A,$3C,$3C,$32,$3A,$3C
       .byte $3C,$80,$40,$08,$04,$40,$80,$40,$80,$FF,$03,$07,$0F,$18,$60,$1B
       .byte $65,$20,$01,$24,$06,$20,$09,$24,$0D,$20,$12,$24,$17,$24,$4E,$22
       .byte $5B,$20,$1D,$24,$21,$26,$22,$20,$5F,$A5,$26,$20,$A9,$E5,$2E,$40
       .byte $BC,$41,$BD,$36,$86,$37,$87,$40,$BC,$69,$91,$9C,$C0,$9D,$C1,$40
       .byte $BC,$95,$69,$46,$76,$67,$57,$46,$96,$87,$57,$54,$A8,$8D,$71,$54
       .byte $68,$55,$69,$38,$C0,$40,$BC,$A8,$A8,$90,$90,$B8,$B8,$98,$98,$98
       .byte $80,$88,$80,$80,$80,$80,$82,$88,$81,$80,$81,$89,$83,$81,$84,$41
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
