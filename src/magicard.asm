; Disassembly of roms/magicard.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/magicard.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
COLUPF  =  $08
CTRLPF  =  $0A
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
INPT0   =  $38
INPT1   =  $39
INPT2   =  $3A
INPT3   =  $3B
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F800
LF800: .byte $09,$CA,$00,$00,$00,$CC,$1C,$00,$69,$C8,$01,$00,$00,$CC,$1C,$00
       .byte $53,$CA,$00,$00,$00,$CD,$1D,$00,$11,$CF,$00,$00,$00,$CD,$1D,$00
       .byte $A7,$12,$00,$00,$3D,$14,$D4,$00,$79,$10
LF82A: .byte $81,$00,$3C,$14,$D4,$00,$43,$12,$00,$00,$00,$15,$D5,$00,$A1,$17
       .byte $00,$00,$00,$15,$D5,$00,$91,$8A,$00,$00,$00,$8C,$C4,$00,$61,$88
       .byte $51,$00,$9C,$8C,$C4,$00,$5B,$8A,$00,$00
LF854: .byte $00,$8D,$C5,$00,$21,$8F,$00,$00,$00,$8D,$C5,$00,$99,$0A,$00,$00
       .byte $00,$0C,$DC,$00,$71,$08,$89,$00,$9B,$0C,$DC,$00,$63,$0A,$00,$00
       .byte $00,$0D,$DD,$00,$B1,$0F,$00,$00,$00,$0D
LF87E: .byte $DD,$00,$00,$EA,$00,$00,$FC,$EC,$F4,$00,$39,$00,$D1,$00,$FC,$EC
       .byte $F4,$00,$23,$EA,$00,$00,$FD,$ED,$F6,$00,$E1,$EF,$D9,$00,$00,$ED
       .byte $00,$00,$B8,$AA,$B0,$00,$BC,$AC,$B4,$00
LF8A8: .byte $C1,$A8,$B9,$00,$BC,$AC,$B4,$00,$2B,$AA,$00,$00,$BD,$AD,$B6,$00
       .byte $29,$AF,$C9,$00,$BD,$AD,$B7,$00,$78,$6A,$00,$00,$7C,$6C,$84,$00
       .byte $49,$68,$31,$00,$7C,$6C,$84,$00,$4B,$6A,$00,$00,$00,$6D,$85,$00
       .byte $19,$6F,$00,$00,$00,$6D,$85,$00,$70,$E2,$00,$00,$74,$E4,$94,$00
       .byte $41,$E0,$59,$00,$74,$E4,$94,$00,$33,$E2,$00,$00,$00,$E5,$95,$00
       .byte $A9,$E7,$00,$00,$00,$E5,$95,$00,$40,$40,$40,$00,$40,$0A,$AA,$00
       .byte $A0,$00,$4E,$2C,$44,$86,$4E,$44,$4A,$04,$0A,$06,$82,$44,$44,$44
       .byte $82,$00,$44,$EA,$44,$00,$00,$00,$E0,$04,$08,$00,$20,$40,$80,$04
       .byte $44,$4A,$4A,$4A,$44,$EE,$22,$EE,$28,$EE,$EA,$8A,$EE,$22,$E2,$EE
       .byte $28,$2E,$2A,$2E,$EE,$AA,$EE,$2A,$2E,$00,$44,$00,$44,$80,$02,$E4
       .byte $08,$E4,$02,$C8,$24,$42,$04,$48,$E0,$AE,$EE,$AE,$A0,$0C,$0A,$EC
       .byte $8A,$EC,$E2,$82,$EE,$8A,$EE,$EE,$A8,$EE,$28,$E8,$4A,$0A,$4E,$4A
       .byte $4A,$82,$82,$A2,$CA,$AE,$A8,$E8,$A8,$A8,$AE,$00,$00,$E8,$AE,$EA
       .byte $0E,$EA,$AE,$E8,$28,$60,$88,$4C,$2A,$C8,$04,$0E,$A4,$A4,$E2,$A0
       .byte $A0,$AA,$EA,$A4,$A0,$A0,$4A,$44,$4A,$6E,$42,$44,$48,$6E,$C0,$48
       .byte $44,$42,$C0,$04,$0A,$00,$04,$E4,$49,$4C,$4C,$41,$44,$43,$41,$4E
       .byte $44,$41,$53,$4C,$42,$43,$43,$42,$43,$53,$42,$45,$51,$42,$49,$54
       .byte $42,$4D,$49,$42,$4E,$45,$42,$50,$4C,$42,$56,$43,$42,$56,$53,$43
       .byte $4D,$50,$43,$50,$58,$43,$50,$59,$44,$45,$43,$45,$4F,$52,$49,$4E
       .byte $43,$4A,$4D,$50,$4A,$53,$52,$4C,$44,$41,$4C,$44,$58,$4C,$44,$59
       .byte $4C,$53,$52,$4F,$52,$41,$52,$4F,$4C,$52,$4F,$52,$53,$42,$43,$53
       .byte $54,$41,$53,$54,$58,$53,$54,$59,$41,$53,$4C,$42,$52,$4B,$43,$4C
       .byte $43,$43,$4C,$44,$43,$4C,$49,$43,$4C,$56,$44,$45,$58,$44,$45,$59
       .byte $49,$4E,$58,$49,$4E,$59,$4C,$53,$52,$4E,$4F,$50,$50,$48,$41,$50
       .byte $48,$50,$50,$4C,$41,$50,$4C,$50,$52,$4F,$4C,$52,$4F,$52,$52,$54
       .byte $49,$52,$54,$53,$53,$45,$43,$53,$45,$44,$53,$45,$49,$54,$41,$58
       .byte $54,$41,$59,$54,$53,$58,$54,$58,$41,$54,$58,$53,$54,$59,$41,$20
       .byte $49,$20,$20,$58,$29,$20,$52,$5A,$20,$5A,$58,$5A,$59,$29,$59,$28
       .byte $29,$20,$41,$20,$58,$20,$59
LFA6F: LDA    INTIM   
       BNE    LFA6F   
       STA    WSYNC   
       STA    VBLANK  
       STA    CTRLPF  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $8A     
       STA    $82     
       LDA    $8B     
       STA    $83     
       LDA    #$FF    
       STA    SWACNT  
       STA    $8A     
       STA    $8B     
       LDA    #$EE    
       STA    SWCHA   
       LDX    #$00    
       BEQ    LFABA   
LFA9A: LDA    $8B     
       BPL    LFAB6   
       DEC    $8B     
       LDA    INPT2   
       BPL    LFAB0   
       DEC    $8B     
       LDA    INPT3   
       BPL    LFAB0   
       DEC    $8B     
       LDA    INPT5   
       BMI    LFAB6   
LFAB0: LDA    #$FF    
       EOR    $8B     
       STA    $8B     
LFAB6: SEC            
       ROL    SWCHA   
LFABA: LDY    #$04    
LFABC: STA    WSYNC   
       LDA    $F000,X 
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF0     
       LDA    $F02A,X 
       STA    PF1     
       LDA    $F054,X 
       STA    PF2     
       LDA    $F000,X 
       STA    PF0     
       LDA    $F07E,X 
       STA    PF1     
       LDA    $F0A8,X 
       DEY            
       STA    PF2     
       BNE    LFABC   
       INX            
       LDA    #$00    
       CPX    #$21    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       BMI    LFAF8   
       CPX    #$2A    
       BPL    LFB20   
       BMI    LFABA   
LFAF8: TXA            
       AND    #$07    
       BEQ    LFA9A   
       AND    #$03    
       BNE    LFABA   
       LDA    $8A     
       BPL    LFB1D   
       DEC    $8A     
       LDA    INPT0   
       BPL    LFB17   
       DEC    $8A     
       LDA    INPT1   
       BPL    LFB17   
       DEC    $8A     
       LDA    INPT4   
       BMI    LFB1D   
LFB17: LDA    #$FF    
       EOR    $8A     
       STA    $8A     
LFB1D: JMP    LFABA   
LFB20: LDX    #$10    
LFB22: STA    WSYNC   
       DEX            
       BNE    LFB22   
       LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       LDX    #$01    
LFB34: LDA    $8A,X   
       BMI    LFB4C   
       CMP    #$0B    
       BMI    LFB46   
       BNE    LFB42   
       LDA    #$00    
       BEQ    LFB44   
LFB42: LDA    #$0B    
LFB44: STA    $8A,X   
LFB46: CMP    $82,X   
       BNE    LFB4C   
       LDA    #$FF    
LFB4C: STA    $82,X   
       DEX            
       BPL    LFB34   
       LDA    SWCHB   
       LSR            
LFB55: LDA    INTIM   
       BNE    LFB55   
       STA    WSYNC   
       STA    VSYNC   
       BCS    LFB61   
       BRK            
LFB61: LDA    #$24    
       STA    TIM64T  
       RTS            

LFB67: LDX    $8E     
       LDA    $98,X   
       AND    #$7F    
       SEC            
       SBC    #$20    
       AND    #$3F    
       STA    $92     
       LSR            
       STA    $82     
       ASL            
       ASL            
       CLC            
       ADC    $82     
       STA    $82     
       LDA    #$F9    
       STA    $83     
       LDA    #$00    
       LDX    $8E     
       CPX    #$05    
       BEQ    LFB8F   
       BPL    LFB8D   
       INX            
LFB8D: TXA            
       LSR            
LFB8F: STA    $91     
       TAX            
       LDA    LFC27,X 
       LDX    $8F     
       CLC            
       ADC    LFC2C,X 
       STA    $90     
       LDA    $92     
       LSR            
       LDA    #$0F    
       BCC    LFBA6   
       LDA    #$F0    
LFBA6: STA    $92     
       LDY    #$04    
LFBAA: LDA    ($82),Y 
       AND    $92     
       STA    $0193,Y 
       DEY            
       BPL    LFBAA   
       LDX    #$04    
       LDY    $8E     
       LDA    LFC33,Y 
       STA    $92     
       BPL    LFBCE   
       BCC    LFBF2   
LFBC1: LDA    $93,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $93,X   
       DEX            
       BPL    LFBC1   
       BMI    LFBF2   
LFBCE: BCS    LFBDB   
LFBD0: LDA    $93,X   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $93,X   
       DEX            
       BPL    LFBD0   
LFBDB: LSR    $91     
       BCS    LFC07   
       LDX    #$04    
LFBE1: LDA    #$00    
       LDY    #$03    
LFBE5: ASL    $93,X   
       ROR            
       DEY            
       BPL    LFBE5   
       STA    $93,X   
       DEX            
       BPL    LFBE1   
       BMI    LFC07   
LFBF2: LSR    $91     
       BCS    LFC07   
       LDX    #$04    
LFBF8: LDA    #$00    
       LDY    #$03    
LFBFC: LSR    $93,X   
       ROL            
LFBFF: DEY            
       BPL    LFBFC   
       STA    $93,X   
       DEX            
       BPL    LFBF8   
LFC07: LDA    #$F0    
       STA    $91     
       LDA    $90     
       STA    $82     
       LDA    #$F4    
       STA    $83     
       LDY    #$05    
       LDA    #$00    
       STA    ($82),Y 
       DEY            
LFC1A: LDA    ($90),Y 
       AND    $92     
       ORA    $0193,Y 
       STA    ($82),Y 
       DEY            
       BPL    LFC1A   
       RTS            

LFC27: .byte $00,$2A,$54,$7E,$A8
LFC2C: .byte $00,$06,$0C,$12,$18,$1E,$24
LFC33: .byte $F0,$0F,$F0,$F0,$0F,$0F,$0F,$F0,$F0,$0F,$10,$02,$A9,$01,$C9,$01
       .byte $F0,$06,$C9,$08,$10,$03,$A9,$02,$60,$A9,$03,$60,$86,$93,$AA,$48
       .byte $BD,$00,$F8,$D0,$07,$A2
LFC59: .byte $FF,$68,$8A,$A6,$93,$60,$29,$07,$AA,$C9,$02,$30,$F4,$C9,$06,$F0
       .byte $F0,$30,$04,$A2,$0B,$D0,$EA,$C9,$02,$D0,$03,$68,$4A,$48,$68,$29
       .byte $08,$F0,$DF,$8A,$18,$69,$05,$AA,$D0,$D8,$86,$93,$AA,$BD,$00,$F8
       .byte $AA,$4A,$4A,$4A,$48,$8A,$29,$07,$C9,$01,$D0,$04,$68,$09,$20,$48
       .byte $68,$A6,$93,$60,$A9,$01,$18,$65,$86,$85,$86,$90,$02,$E6,$87,$C5
       .byte $8C,$D0,$04,$A5,$87,$C5,$8D,$60
LFCB1: PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LFCBA   
       PLA            
LFCBA: AND    #$0F    
       ORA    #$30    
       CMP    #$3A    
       BMI    LFCC4   
       ADC    #$06    
LFCC4: STA    $98,X   
       INX            
       RTS            

LFCC8: LDA    #$09    
       STA    $8E     
LFCCC: JSR    LFA6F   
       LDX    #$FF    
       LDA    $82     
       BMI    LFCD7   
       STX    $8A     
LFCD7: LDA    $83     
       BMI    LFCDD   
       STX    $8B     
LFCDD: JSR    LFB67   
       DEC    $8E     
       BPL    LFCCC   
       RTS            

LFCE5: .byte $A0,$3F,$20,$EE,$FC,$C8,$8C,$81,$02,$0E,$84,$02,$D0,$FB,$8C,$80
       .byte $02,$8D,$96,$02,$60,$A9,$1C,$85,$93,$AA,$20,$E5,$FC,$CA,$D0,$FA
       .byte $E6,$93,$D0,$F5,$A2,$08,$86,$93,$A1,$7E,$85,$90,$46,$90,$A9,$10
       .byte $90,$04,$E6,$93,$A9,$08,$20,$E5,$FC,$A5,$93,$CA,$D0,$02,$85,$90
       .byte $10,$EA,$A9,$1C,$20,$E5,$FC,$20,$9D,$FC,$D0,$D8,$4C,$77,$FF,$A9
       .byte $00,$85,$93,$8D,$81,$02,$A0,$FB,$AD,$80,$02,$10,$FB,$AE,$84,$02
       .byte $A9,$AA,$8D,$96,$02,$AD,$80,$02,$30,$FB,$8A,$10,$0C,$C9,$93,$90
       .byte $02,$E6,$93,$66,$90,$C8,$B8,$50,$DF,$98,$30,$D3,$26,$90,$46,$93
       .byte $B0,$CA,$A9,$04,$AA,$05,$87,$85,$92,$A5,$86,$85,$91,$A5,$90,$81
       .byte $8D,$20,$9D,$FC,$D0,$B9,$F0,$B4
LFD7D: ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       LDX    #$04    
LFD84: ROL    $80     
       ROL    $81     
       ROL            
       DEX            
       BNE    LFD84   
       RTS            

LFD8D: .byte $20,$6F,$FA,$A0,$35,$D0,$05,$20,$6F,$FA,$A0,$34,$B9,$D2,$EF,$99
       .byte $CC,$F3,$C8,$F0,$F2,$C8,$D0,$F4,$20,$6F,$FA,$A2,$06,$86,$8F
LFDAC: LDX    #$0A    
       LDA    #$20    
LFDB0: DEX            
       STA    $98,X   
       BNE    LFDB0   
       RTS            

LFDB6: .byte $20,$8D,$FD,$A2,$02,$A5,$87,$20,$B1,$FC,$A5,$86,$20,$B1,$FC,$20
       .byte $C8,$FC,$20,$8D,$FD,$B1,$86,$48,$20,$83,$FC,$85,$90,$68,$20,$4F
       .byte $FC,$48,$A5,$90,$0A,$65,$90,$A8,$B9,$A0,$F9,$95,$98,$C8,$E8,$E0
       .byte $03,$30,$F5,$68,$48,$0A,$10,$02,$A9,$02,$A8,$B9,$57,$FA,$95,$98
       .byte $E8,$C8,$E0,$05,$30,$F5,$E8,$68,$48,$C9,$03,$D0,$01,$AA,$48,$68
       .byte $20,$3D,$FC,$48,$A8,$88,$F0,$09,$B1,$86,$85,$90,$20,$B1,$FC,$D0
       .byte $F4,$68,$20,$9F,$FC,$68,$C9,$03,$D0,$15,$E8,$18,$A5,$90,$10,$02
       .byte $A0,$FF,$65,$86,$48,$98,$65,$87,$20,$B1,$FC,$68,$20,$B1,$FC,$4C
       .byte $74,$FF,$20,$8D,$FD,$A5,$87,$20,$B1,$FC,$A5,$86,$20,$B1,$FC,$B1
       .byte $86,$E8,$20,$B1,$FC,$C8,$C0,$02,$30,$F5,$A9,$02,$20,$9F,$FC,$4C
       .byte $74,$FF,$6C,$84,$01
LFE5B: .byte $43,$4D,$58,$32

START:
       CLI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
       LDX    #$2A    
LFE68: STA    $7F,X   
       STA    $43,X   
       DEX            
       BNE    LFE68   
       LDX    #$D2    
LFE71: STA    $F3FF,X 
       DEX            
       BNE    LFE71   
       STA    SWBCNT  
       JSR    LFDAC   
       LDA    #$55    
       STA    COLUPF  
       LDX    #$03    
       STX    AUDF0   
LFE85: LDA    LFE5B,X 
       STA    $9B,X   
       DEX            
       BPL    LFE85   
       STX    AUDV0   
       LDA    #$03    
       STA    $8F     
       JSR    LFCC8   
LFE96: JSR    LFA6F   
       INC    $96     
       LDA    $96     
       AND    #$20    
       STA    $F459   
       LDA    $82     
       BMI    LFF09   
       CMP    #$0A    
       BPL    LFEB0   
LFEAA: JSR    LFD7D   
       JMP    LFEE2   
LFEB0: BNE    LFEBF   
       LDX    $80     
       STX    $81     
       LDX    #$02    
       LDA    ($84,X) 
       STA    $80     
       JMP    LFED1   
LFEBF: LDA    $85     
       AND    #$F3    
       ORA    #$04    
       STA    $92     
       LDA    $84     
       STA    $91     
       LDX    #$00    
       LDA    $80     
       STA    ($91,X) 
LFED1: SEC            
       LDA    $84,X   
       STA    $91     
       ADC    #$00    
       STA    $84,X   
       LDA    $85,X   
       STA    $92     
       ADC    #$00    
       STA    $85,X   
LFEE2: JSR    LFDAC   
       STX    $8F     
       LDA    #$0C    
       STA    AUDC0   
       LDA    $92     
       JSR    LFCB1   
       LDA    $91     
       JSR    LFCB1   
       INX            
       LDA    $81     
       JSR    LFCB1   
       LDA    $80     
       JSR    LFCB1   
       JSR    LFCC8   
       INY            
       STY    AUDC0   
       JMP    LFE96   
LFF09: LDA    $83     
       BMI    LFE96   
       BEQ    LFF77   
       CMP    #$07    
       BPL    LFF18   
       CLC            
       ADC    #$09    
       BNE    LFEAA   
LFF18: BNE    LFF20   
       LDX    #$0C    
       LDY    #$06    
       BNE    LFF3C   
LFF20: CMP    #$09    
       BNE    LFF2A   
       LDX    #$08    
       LDY    #$04    
       BNE    LFF3C   
LFF2A: CMP    #$0A    
       BNE    LFF34   
       LDX    #$06    
       LDY    #$0C    
       BNE    LFF3C   
LFF34: CMP    #$0B    
       BNE    LFF51   
       LDX    #$04    
       LDY    #$08    
LFF3C: LDA    $80     
       STA    $80,X   
       LDA    $81     
       STA    $81,X   
       LDA    $0180,Y 
       STA    $91     
       LDA    $0181,Y 
       STA    $92     
       JMP    LFEE2   
LFF51: LDA    $80     
       STA    $91     
       CLC            
       SBC    $84     
       TAX            
       LDA    $81     
       STA    $92     
       SBC    $85     
       TAY            
       BEQ    LFF6F   
       INY            
       BEQ    LFF67   
LFF65: LDX    #$FF    
LFF67: TXA            
       BPL    LFF65   
LFF6A: STX    $80     
LFF6C: JMP    LFEE2   
LFF6F: TXA            
       BMI    LFF65   
       BPL    LFF6A   
       JSR    LFCC8   
LFF77: JSR    LFA6F   
       LDA    $82     
       BMI    LFF77   
       BEQ    LFF6C   
       ASL            
       TAX            
       DEX            
       DEX            
       CMP    #$0E    
       BPL    LFF9B   
LFF88: LDA    INTIM   
       BNE    LFF88   
       STA    WSYNC   
       STA    VBLANK  
LFF91: LDA    SWCHB   
       LSR            
       BCS    LFF98   
       BRK            
LFF98: LSR            
       BCS    LFF91   
LFF9B: LDA    LFFA8,X 
       STA    $94     
       LDA    LFFA9,X 
       STA    $95     
       JMP    ($0194) 
LFFA8: .byte $58
LFFA9: .byte $FE,$77,$FF,$77,$FF,$FA,$FC,$77,$FF,$34,$FD,$38,$FE,$B6,$FD,$77
       .byte $FF,$77,$FF,$77,$FF,$A5,$8E,$4A,$4A,$A8,$B9,$33,$FC,$49,$FF,$48
       .byte $A9,$00,$C0,$05,$F0,$05,$10,$01,$C8,$98,$4A,$A8,$B9,$27,$FC,$18
       .byte $65,$8F,$85,$90,$98,$4A,$A5,$8E,$29,$03,$B0,$02,$69,$04,$A8,$68
       .byte $39,$EF,$FF,$A4,$90,$60,$88,$44,$22,$11,$11,$22,$44,$88,$91,$8C
       .byte $60,$5F,$FE,$5F,$FE,$5F,$FE
