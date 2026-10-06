; Disassembly of roms/Yar's Revenge (1).bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Yar's Revenge (1).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
REFP1   =  $0C
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
AUDV0   =  $19
AUDV1   =  $1A
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $E8,$A4,$9D,$E4,$9F,$85,$02,$90,$05,$88,$F0,$02,$84,$9D,$B1,$A3
       .byte $85,$1C,$A9,$00,$85,$0F,$E4,$9A,$24,$9A,$B0,$02,$10,$14,$A4,$9B
       .byte $88,$10,$04,$A0,$07,$C6,$9C,$84,$9B,$A4,$9C,$30,$05,$B9,$81,$00
       .byte $85,$0F,$E8,$A9,$00,$A4,$A9,$E4,$AA,$85,$02,$85,$0F,$90,$05,$88
       .byte $F0,$02,$84,$A9,$B1,$AC,$85,$1B,$E4,$9A,$90,$19,$A4,$9B,$88,$30
       .byte $05,$EA,$A9,$00,$F0,$04,$A0,$07,$C6,$9C,$84,$9B,$A4,$9C,$30,$05
       .byte $B9,$81,$00,$85,$0F,$E0,$C0,$90,$97,$4C,$57,$F2,$E8,$A4,$9D,$E4
       .byte $9F,$85,$02,$90,$05,$88,$F0,$02,$84,$9D,$B1,$A3,$85,$1C,$8A,$A2
       .byte $1F,$9A,$AA,$A8,$51,$E9,$25,$91,$85,$0F,$29,$F7,$85,$08,$A0,$00
       .byte $8A,$E5,$98,$30,$05,$C9,$06,$B0,$01,$98,$08,$84,$0F,$E8,$A4,$A9
       .byte $E4,$AA,$85,$02,$90,$05,$88,$F0,$02,$84,$A9,$B1,$AC,$85,$1B,$8A
       .byte $49,$FF,$A8,$51,$E9,$25,$91,$F0,$05,$85,$0F,$4C,$C2,$F0,$A9,$5A
       .byte $85,$08,$E4,$A5,$08,$E4,$AE,$08,$A9,$00,$85,$0F,$E0,$C0,$90,$9C
       .byte $A2,$FF,$9A,$4C,$57,$F2,$85,$02,$E8,$A9,$01,$85,$1B,$85,$06,$E4
       .byte $B7,$90,$04,$E4,$B8,$90,$0C,$A9,$00,$85,$0D,$85,$0E,$85,$0F,$85
       .byte $09,$F0,$10,$8A,$A8,$B1,$E9,$85,$0D,$85,$0E,$85,$0F,$85,$08,$A5
       .byte $E9,$85,$09,$E8,$A4,$9D,$E4,$9F,$85,$02,$90,$05,$88,$F0,$02,$84
       .byte $9D,$B1,$A3,$85,$1C,$E0,$C0,$D0,$BD,$4C,$57,$F2,$A2,$06,$85,$02
       .byte $CA,$10,$FD,$EA,$85,$10,$85,$11,$A9,$F0,$85,$20,$A5,$E9,$D0,$04
       .byte $A9,$F7,$85,$F2,$85,$02,$85,$2A,$A9,$00,$85,$0B,$85,$0C,$85,$B7
       .byte $A9,$7C,$25,$F2,$85,$06,$85,$07,$A2,$0A,$A9,$FE,$95,$BE,$CA,$CA
       .byte $10,$FA,$A9,$E0,$85,$EC,$A2,$27,$CA,$85,$02,$D0,$FB,$86,$1B,$86
       .byte $1C,$A9,$03,$85,$04,$85,$05,$85,$25,$85,$26,$A5,$B7,$6A,$B0,$5D
       .byte $A9,$08,$24,$80,$70,$04,$F0,$25,$10,$23,$A5,$F1,$F0,$04,$A0,$0B
       .byte $D0,$02,$A0,$05,$A2,$0A,$A9,$08,$24,$80,$F0,$05,$B9,$FB,$F3,$D0
       .byte $03,$B9,$01,$F4,$95,$BD,$CA,$88,$CA,$10,$EB,$30,$4F,$A2,$00,$A0
       .byte $00,$B1,$EC,$29,$F0,$4A,$95,$BD,$B1,$EC,$29,$0F,$0A,$0A,$0A,$E8
       .byte $E8,$95,$BD,$C8,$E8,$E8,$C0,$03,$D0,$E7,$A0,$00,$A2,$50,$B9,$BD
       .byte $00,$D0,$08,$96,$BD,$C8,$C8,$C0,$09,$90,$F3,$D0,$1F,$A9,$50,$85
       .byte $BD,$85,$BF,$85,$C1,$85,$C3,$85,$C5,$A0,$03,$B1,$EC,$29,$F0,$D0
       .byte $06,$24,$80,$70,$02,$A9,$A0,$4A,$85,$C7,$85,$02,$A9,$06,$85,$EA
       .byte $A4,$EA,$B1,$BD,$85,$1B,$85,$02,$B1,$BF,$85,$1C,$B1,$C1,$85,$1B
       .byte $B1,$C3,$85,$B2,$B1,$C5,$AA,$B1,$C7,$A8,$A5,$B2,$85,$1C,$86,$1B
       .byte $84,$1C,$84,$1B,$C6,$EA,$10,$D8,$A9,$00,$85,$1B,$85,$1C,$85,$25
       .byte $85,$26,$85,$04,$85,$05,$E6,$B7,$A9,$FC,$24,$B7,$D0,$22,$A2,$11
       .byte $A9,$02,$C5,$B7,$D0,$17,$A2,$71,$4A,$24,$80,$F0,$15,$70,$13,$A9
       .byte $E4,$85,$EC,$A9,$FE,$25,$F2,$85,$06,$85,$07,$A2,$23,$4C,$58,$F1
       .byte $A2,$29,$85,$02,$CA,$D0,$FB,$85,$02,$A9,$02,$85,$01,$A2,$00,$86
       .byte $0D,$86,$0E,$86,$0F,$A9,$22,$8D,$96,$02,$A5,$95,$29,$07,$C9,$06
       .byte $D0,$3D,$24,$80,$70,$39,$A5,$EB,$29,$01,$AA,$B5,$3C,$30,$30,$A9
       .byte $20,$05,$94,$85,$94,$A9,$00,$A8,$20,$C1,$FE,$A5,$93,$85,$07,$A5
       .byte $95,$29,$F8,$09,$30,$85,$95,$A5,$EB,$29,$FB,$85,$EB,$6A,$90,$0C
       .byte $6A,$B0,$09,$A9,$02,$05,$EB,$85,$EB,$4C,$09,$FD,$4C,$C7,$F6,$A9
       .byte $04,$24,$EB,$D0,$F7,$A5,$E9,$6A,$B0,$6A,$24,$A8,$30,$4C,$24,$97
       .byte $30,$35,$24,$33,$10,$31,$A5,$9F,$69,$07,$85,$B4,$A5,$A0,$38,$E9
       .byte $07,$85,$A0,$69,$0B,$85,$B3,$20,$63,$FD,$90,$11,$E6,$F0,$A9,$01
       .byte $05,$A7,$85,$A7,$20,$A6,$FD,$A9,$01,$A8,$20,$C1,$FE,$A9,$70,$85
       .byte $21,$A9,$40,$05,$A7,$85,$A7,$24,$37,$10,$0F,$24,$94,$30,$0E,$A5
       .byte $DE,$D0,$0A,$20,$A6,$FD,$E6,$F0,$E6,$F0,$4C,$0D,$F4,$A9,$3F,$25
       .byte $94,$85,$94,$E6,$E8,$E6,$E8,$A9,$20,$05,$95,$85,$95,$26,$97,$38
       .byte $66,$97,$D0,$E6,$24,$30,$10,$0E,$24,$B5,$70,$0A,$26,$97,$38,$66
       .byte $97,$26,$B5,$18,$66,$B5,$24,$34,$50,$18,$20,$EE,$FE,$90,$13,$A9
       .byte $20,$24,$96,$F0,$0D,$A5,$96,$29,$1F,$09,$80,$85,$96,$26,$B5,$18
       .byte $66,$B5,$24,$33,$10,$06,$A9,$40,$05,$B5,$D0,$04,$A9,$BF,$25,$B5
       .byte $85,$B5,$24,$33,$50,$28,$A5,$96,$29,$20,$F0,$22,$A9,$06,$25,$80
       .byte $C9,$06,$D0,$0D,$24,$EB,$10,$09,$A5,$F0,$69,$03,$85,$F0,$4C,$86
       .byte $F3,$26,$97,$38,$66,$97,$A9,$1F,$25,$96,$09,$80,$85,$96,$24,$32
       .byte $50,$66,$A9,$20,$25,$96,$F0,$60,$A0,$01,$A9,$10,$24,$94,$10,$14
       .byte $0A,$50,$11,$09,$40,$E6,$F1,$48,$A5,$9E,$18,$69,$10,$C9,$A0,$B0
       .byte $02,$85,$9E,$68,$20,$C1,$FE,$A5,$9E,$A0,$03,$91,$EE,$A9,$3F,$25
       .byte $94,$85,$94,$E6,$E8,$E6,$E8,$A9,$1F,$25,$96,$09,$80,$85,$96,$A9
       .byte $10,$24,$94,$F0,$11,$A6,$92,$F0,$05,$C6,$92,$4C,$E6,$F3,$A8,$A9
       .byte $FE,$45,$91,$85,$91,$98,$45,$94,$85,$94,$A9,$C0,$05,$A8,$85,$A8
       .byte $A9,$00,$85,$B7,$A9,$C1,$85,$B8,$4C,$F7,$F2,$50,$7F,$86,$8D,$94
       .byte $9B,$28,$63,$6A,$63,$71,$78,$A2,$28,$A9,$A9,$28,$A2,$A9,$10,$25
       .byte $96,$F0,$3E,$A5,$A6,$85,$B3,$A5,$A5,$85,$B4,$20,$63,$FD,$90,$31
       .byte $A9,$EF,$85,$29,$25,$96,$85,$96,$66,$A7,$38,$26,$A7,$E8,$E0,$08
       .byte $B0,$1F,$88,$30,$03,$20,$83,$FD,$C8,$C0,$10,$B0,$14,$20,$83,$FD
       .byte $C8,$C0,$10,$B0,$0C,$20,$83,$FD,$88,$E8,$E0,$08,$B0,$03,$20,$83
       .byte $FD,$A9,$20,$25,$96,$F0,$24,$A5,$99,$85,$B3,$A5,$98,$69,$03,$85
       .byte $B4,$20,$63,$FD,$90,$15,$A9,$04,$25,$80,$F0,$07,$26,$EB,$38,$66
       .byte $EB,$D0,$08,$A5,$96,$29,$1F,$09,$80,$85,$96,$A9,$08,$24,$EB,$D0
       .byte $09,$AD,$82,$02,$6A,$B0,$64,$6A,$90,$61,$A9,$07,$25,$80,$85,$80
LF490: LDX    #$FF    
       TXS            
       LDA    #$00    
LF495: STA    VSYNC,X 
       DEX            
       CPX    #$DB    
       BCS    LF495   
       STA    $94     
       STA    AUDV1   
       STA    AUDV0   
       STA    SWACNT  
       LDA    #$96    
       ORA    $95     
       STA    $95     
       LDA    $80     
       BMI    LF4C0   
       ROR            
       LDA    #$04    
       BCC    LF4B6   
       ORA    #$40    
LF4B6: STA    $EB     
       LDA    #$40    
       STA    $9E     
       STA    $E3     
       STA    $E7     
LF4C0: LDA    #$7C    
       STA    $93     
       STA    COLUP1  
       LDA    #$FE    
       STA    $DB     
       LDA    #$E0    
       STA    $EE     
       LDA    #$DF    
       STA    $AC     
       LDA    #$FF    
       STA    $AD     
       LDA    #$FE    
       STA    $91     
       STA    $D9     
       LDX    #$04    
       JSR    LFEEE   
       BEQ    LF4E4   
       DEX            
LF4E4: STX    $92     
       STX    $DA     
       JMP    LFD09   
LF4EB: .byte $A9,$10,$24,$94,$F0,$17,$A9,$03,$25,$E9,$D0,$11,$A2,$0E,$18,$36
       .byte $82,$76,$81,$CA,$CA,$10,$F8,$A5,$90,$69,$00,$85,$90,$24,$80,$70
       .byte $02,$10,$09,$A9,$00,$85,$19,$85,$1A,$4C,$28,$F6,$24,$A8,$30,$43
       .byte $A5,$A7,$6A,$90,$0A,$A9,$03,$85,$17,$A9,$0A,$85,$19,$D0,$28,$24
       .byte $94,$30,$0E,$A9,$0E,$85,$15,$25,$E8,$85,$19,$A9,$07,$85,$17,$D0
       .byte $73,$50,$16,$A5,$E9,$6A,$B0,$6C,$A6,$B0,$F0,$68,$E8,$86,$17,$86
       .byte $B0,$A9,$0C,$85,$19,$A9,$08,$D0,$59,$A5,$E9,$85,$17,$A9,$05,$85
       .byte $19,$D0,$4F,$A5,$A8,$29,$20,$F0,$3F,$A5,$E9,$6A,$90,$46,$A5,$E9
       .byte $85,$17,$A9,$08,$85,$15,$A5,$B8,$4A,$4A,$85,$19,$E6,$B7,$C6,$B8
       .byte $A6,$B7,$E4,$B8,$90,$2E,$A5,$95,$09,$36,$85,$95,$A0,$00,$24,$37
       .byte $10,$0F,$A9,$20,$24,$9F,$10,$09,$D0,$07,$A5,$F1,$F0,$03,$4C,$78
       .byte $F7,$84,$F1,$84,$A8,$4C,$09,$FD,$A5,$E9,$0A,$0A,$85,$17,$A9,$0D
       .byte $85,$19,$85,$15,$24,$97,$30,$3C,$24,$A7,$30,$0A,$50,$10,$A9,$04
       .byte $85,$1A,$85,$18,$D0,$65,$A9,$0C,$85,$1A,$85,$18,$D0,$5D,$A9,$20
       .byte $24,$96,$F0,$0A,$A5,$99,$85,$1A,$A9,$0D,$85,$18,$D0,$4D,$A0,$0C
       .byte $A6,$A2,$F0,$02,$A0,$0A,$24,$B5,$50,$02,$A0,$04,$84,$18,$A9,$03
       .byte $85,$1A,$D0,$37,$70,$0E,$A9,$0D,$85,$1A,$A5,$E9,$09,$1C,$85,$18
       .byte $A9,$05,$D0,$27,$A9,$20,$24,$97,$D0,$12,$A9,$0F,$24,$E9,$F0,$02
       .byte $A9,$05,$85,$1A,$A9,$03,$85,$18,$A9,$0D,$D0,$0F,$A5,$E9,$09,$0C
       .byte $85,$1A,$A6,$B1,$E8,$86,$18,$86,$B1,$A9,$08,$85,$16,$24,$97,$30
       .byte $03,$4C,$C7,$F6,$A9,$FF,$85,$98,$85,$F2,$A9,$1F,$85,$29,$25,$96
       .byte $09,$80,$85,$96,$A9,$02,$85,$28,$A9,$00,$85,$A2,$85,$21,$85,$DF
       .byte $50,$7A,$A5,$97,$29,$20,$D0,$08,$A5,$E9,$29,$0F,$F0,$08,$D0,$6C
       .byte $A5,$E9,$29,$03,$D0,$66,$A5,$A3,$18,$69,$09,$85,$A3,$C9,$47,$D0
       .byte $06,$A9,$20,$05,$97,$85,$97,$A5,$A3,$C9,$62,$D0,$4F,$26,$B5,$18
       .byte $66,$B5,$E6,$E8,$E6,$E8,$A9,$3F,$25,$94,$85,$94,$A9,$00,$85,$97
       .byte $85,$F0,$A9,$F0,$25,$9E,$F0,$1C,$38,$E9,$10,$85,$9E,$20,$CC,$FD
       .byte $A5,$9E,$29,$F0,$D0,$0E,$20,$CC,$FD,$A5,$9E,$29,$F0,$D0,$05,$26
       .byte $80,$38,$66,$80,$A9,$6A,$85,$A3,$A9,$FF,$85,$A4,$A5,$95,$29,$F8
       .byte $09,$46,$85,$95,$A9,$01,$85,$E9,$A9,$0E,$85,$B1
LF6C7: LDA    INTIM   
       BNE    LF6C7   
       STA    WSYNC   
       STA    CXCLR   
       LDA    #$00    
       STA    $A7     
       STA    $DE     
       LDA    #$10    
       BIT    $95     
       BEQ    LF6E6   
       LDA    #$64    
       STA    $9F     
       LDA    #$BF    
       AND    $B5     
       STA    $B5     
LF6E6: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       LDA    #$10    
       BIT    $95     
       BEQ    LF6FC   
       LDA    #$10    
       STA    HMP1    
       LDA    #$05    
       STA    $A0     
LF6FC: BIT    $96     
       BPL    LF708   
       LDA    #$00    
       STA    HMBL    
       LDA    #$01    
       STA    $99     
LF708: LDA    #$20    
       AND    $95     
       BEQ    LF721   
       LDA    $9A     
       CLC            
       ADC    #$35    
       STA    $AA     
       LDA    #$96    
       STA    $AB     
       LDA    #$FF    
       STA    $AD     
       LDA    #$DF    
       STA    $AC     
LF721: STA    WSYNC   
       BIT    $96     
       BPL    LF72C   
       STA    RESBL   
       NOP            
       BMI    LF72E   
LF72C: PHA            
       PLA            
LF72E: LDA    #$10    
       AND    $95     
       BEQ    LF73E   
       STA    RESP1   
       EOR    #$FF    
       AND    $95     
       STA    $95     
       BNE    LF746   
LF73E: STA    $B4     
       STA    $B4     
       STA    $B4     
       NOP            
       NOP            
LF746: INC    $E9     
       LDA    #$09    
       STA    $9D     
       LDA    #$0A    
       STA    $A9     
       LDA    #$20    
       AND    $95     
       BEQ    LF762   
       EOR    #$FF    
       AND    $95     
       STA    $95     
       LDA    #$30    
       STA    HMP0    
       STA    RESP0   
LF762: STA    WSYNC   
       STA    HMOVE   
       LDA    #$7F    
       AND    $96     
       STA    $96     
       BIT    $80     
       BVS    LF794   
       LDA    #$02    
       BIT    SWCHB   
       BNE    LF794   
       LSR            
       STA    COLUBK  
       STA    $E9     
       LDA    #$FF    
       STA    $F2     
       LDA    #$07    
       AND    $80     
       ORA    #$E0    
       STA    $80     
       LDA    $95     
       ORA    #$06    
       STA    $95     
       LDA    #$A0    
       STA    $A8     
       STA    $EB     
LF794: LDX    #$2A    
       LDA    #$00    
       STA    WSYNC   
       STX    TIM64T  
       STA    VSYNC   
       STA    HMCLR   
       BIT    $80     
       BVS    LF7D4   
       BPL    LF809   
       BIT    INPT4   
       BMI    LF7B3   
       LDA    #$08    
       ORA    $EB     
       STA    $EB     
       BNE    LF809   
LF7B3: LDA    $E9     
       BNE    LF809   
       LDA    #$F8    
       AND    $95     
       ORA    #$30    
       STA    $95     
       LDA    $DD     
       ADC    #$B4    
       LDX    #$02    
       STX    $92     
LF7C7: STA    COLUP1,X
       ADC    #$55    
       AND    #$F7    
       DEX            
       BPL    LF7C7   
       STA    $DD     
       BMI    LF809   
LF7D4: LDA    #$02    
       BIT    SWCHB   
       BEQ    LF7E3   
       LDA    #$CF    
       AND    $80     
       STA    $80     
       BNE    LF801   
LF7E3: LDA    #$20    
       BIT    $80     
       BNE    LF7F3   
       ORA    $80     
       STA    $80     
       LDA    #$00    
       STA    $E9     
       BEQ    LF7F9   
LF7F3: LDA    $E9     
       AND    #$1F    
       BNE    LF801   
LF7F9: INC    $80     
       LDA    #$E7    
       AND    $80     
       STA    $80     
LF801: LDA    $80     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $E3     
LF809: LDA    $95     
       AND    #$07    
       CMP    #$06    
       BNE    LF814   
       JMP    LFCB0   
LF814: BIT    $97     
       BPL    LF847   
       BVC    LF81D   
LF81A: JMP    LF958   
LF81D: LDA    $9E     
       AND    #$0F    
       CMP    #$08    
       BNE    LF841   
       LDA    $E9     
       AND    #$3F    
       BNE    LF81A   
       LDA    #$02    
       ORA    $E9     
       STA    $E9     
       LDA    $97     
       ORA    #$40    
       STA    $97     
       LDA    #$35    
       STA    $A3     
       LDA    #$FF    
       STA    $A4     
       BNE    LF81A   
LF841: LDA    #$00    
       STA    $EA     
       BEQ    LF872   
LF847: BIT    $80     
       BMI    LF81A   
       BVS    LF81A   
       LDA    SWCHA   
       EOR    #$FF    
       TAX            
       BNE    LF85A   
       STA    $EA     
LF857: JMP    LF8AA   
LF85A: LDA    $EB     
       ROR            
       TXA            
       BCS    LF864   
       LSR            
       LSR            
       LSR            
       LSR            
LF864: AND    #$0F    
       STA    $EA     
       BEQ    LF857   
       TAX            
       LDA    LFE58,X 
       TAY            
       JMP    LF87F   
LF872: LDA    $E9     
       AND    #$03    
       BNE    LF8AA   
       LDA    $9E     
       AND    #$0F    
       TAY            
       DEY            
       DEY            
LF87F: TYA            
       AND    #$0F    
       STA    $B2     
       LSR            
       TAY            
       LDA    $9E     
       AND    #$F0    
       ORA    $B2     
       STA    $9E     
       LDA    LFF62,Y 
       CLC            
       ADC    #$6A    
       STA    $A3     
       LDA    #$FF    
       ADC    #$00    
       STA    $A4     
       LDA    $95     
       ORA    #$40    
       STA    $95     
       TYA            
       ASL            
       AND    #$08    
       EOR    #$08    
       STA    REFP1   
LF8AA: LDX    #$00    
       LDA    $EA     
       BEQ    LF8B2   
       LDX    #$03    
LF8B2: STX    $A2     
       LDA    #$10    
       BIT    $96     
       BNE    LF8C4   
       LDA    $A0     
       CLC            
       ADC    #$04    
       STA    $A6     
       JMP    LF8FE   
LF8C4: LDA    $96     
       AND    #$0F    
       TAY            
       LDA    LFF25,Y 
       STA    HMM1    
       AND    #$0F    
       CMP    #$08    
       BMI    LF8D6   
       ORA    #$F0    
LF8D6: CLC            
       ADC    $A5     
       TAX            
       BEQ    LF8E0   
       CPX    #$C0    
       BCC    LF8EB   
LF8E0: LDA    #$EF    
       STA    RESMP1  
       AND    $96     
       STA    $96     
       SEC            
       BCS    LF8FE   
LF8EB: STX    $A5     
       LDA    LFF25,Y 
       JSR    LFEB0   
       ADC    $A6     
       TAX            
       BEQ    LF8E0   
       CPX    #$A1    
       BCS    LF8E0   
       STX    $A6     
LF8FE: LDA    $E9     
       ROR            
       BCC    LF958   
       LDX    $A2     
       BEQ    LF958   
       LDA    $9E     
       AND    #$0F    
       TAY            
       LDA    LFF25,Y 
       STA    $B3     
       STA    HMP1    
       AND    #$0F    
       CMP    #$08    
       BMI    LF91B   
       ORA    #$F0    
LF91B: CLC            
       ADC    $9F     
       TAX            
       CPX    #$04    
       BCS    LF927   
       LDX    #$AE    
       BNE    LF92D   
LF927: CPX    #$AE    
       BCC    LF92D   
       LDX    #$04    
LF92D: STX    $9F     
       STX    VDELP1  
       LDA    $B3     
       JSR    LFEB0   
       ADC    $A0     
       TAX            
       CPX    #$98    
       BCC    LF943   
LF93D: LDA    #$00    
       STA    HMP1    
       BEQ    LF958   
LF943: CPX    #$05    
       BCS    LF956   
       LDA    #$04    
       CMP    $F0     
       BCS    LF93D   
       INC    $DF     
       JSR    LFDA6   
       DEC    $DF     
       BEQ    LF93D   
LF956: STX    $A0     
LF958: BIT    $97     
       BMI    LF980   
       LDA    #$03    
       AND    $E9     
       BEQ    LF96A   
       LDX    $A2     
       BEQ    LF980   
       CMP    #$02    
       BNE    LF980   
LF96A: LDA    $A3     
       BIT    $95     
       BVC    LF975   
       CLC            
       ADC    #$2D    
       BNE    LF978   
LF975: SEC            
       SBC    #$2D    
LF978: STA    $A3     
       LDA    $95     
       EOR    #$40    
       STA    $95     
LF980: BIT    $A8     
       BVS    LF9BC   
       LDA    $94     
       BMI    LF9BF   
       TAY            
       LDA    $80     
       BMI    LF9BC   
       LDX    $E8     
       CPX    #$34    
       BEQ    LF9A1   
       LDA    #$20    
       BIT    $80     
       BEQ    LF9BC   
       CPX    #$86    
       BEQ    LF9A1   
       CPX    #$D8    
       BNE    LF9BC   
LF9A1: TYA            
       ORA    #$80    
       STA    $94     
LF9A6: LDA    #$FF    
       STA    $AD     
       LDA    #$C4    
       STA    $AC     
       LDA    #$20    
       BIT    $80     
       BEQ    LF9BC   
       LDA    $E9     
       ROR            
       BCC    LF9BC   
       ROR            
       BCS    LF9DF   
LF9BC: JMP    LFAF0   
LF9BF: LDA    $E9     
       ROR            
       BCS    LF9CF   
       LDA    #$09    
       CLC            
       ADC    $AC     
       CMP    #$DF    
       BEQ    LF9A6   
       STA    $AC     
LF9CF: BIT    $97     
       BMI    LF9BC   
       BIT    $94     
       BVS    LFA48   
       LDX    $E9     
       BEQ    LF9DF   
       CPX    #$80    
       BNE    LF9BC   
LF9DF: LDA    $9F     
       CMP    #$0A    
       BMI    LF9E7   
       SBC    #$09    
LF9E7: LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$05    
       BMI    LF9F2   
       AND    #$04    
LF9F2: CLC            
       ADC    #$0A    
       TAY            
       LDX    $A0     
       CPX    #$91    
       BCC    LFA0A   
       LDX    $9F     
       CPX    #$5F    
       BCC    LFA06   
       LDY    #$00    
       BEQ    LFA30   
LFA06: LDY    #$08    
       BNE    LFA30   
LFA0A: CPX    #$30    
       BCS    LFA1E   
       LDX    $9F     
       CPX    #$42    
       BCS    LFA17   
       INY            
       BNE    LFA30   
LFA17: CPX    #$7C    
       BCC    LFA30   
       DEY            
       BNE    LFA30   
LFA1E: CPX    #$6B    
       BCC    LFA30   
       LDX    $9F     
       CPX    #$53    
       BCS    LFA2B   
       DEY            
       BNE    LFA30   
LFA2B: CPX    #$6B    
       BCC    LFA30   
       INY            
LFA30: LDA    #$F0    
       AND    $94     
       STA    $94     
       TYA            
       ORA    $94     
       ORA    #$40    
       STA    $94     
       LDA    #$CF    
       AND    $EB     
       STA    $EB     
       INC    $B0     
       JMP    LFAF0   
LFA48: LDA    $94     
       AND    #$0F    
       TAY            
       JSR    LFEEE   
       BEQ    LFA54   
       BCS    LFA59   
LFA54: LDA    LFF25,Y 
       BNE    LFA60   
LFA59: TYA            
       EOR    #$08    
       TAY            
       LDA    LFFEA,Y 
LFA60: STA    $EA     
       STA    HMP0    
       AND    #$0F    
       CMP    #$08    
       BMI    LFA6C   
       ORA    #$F0    
LFA6C: CLC            
       ADC    $AA     
       TAX            
       CPX    #$AE    
       BCC    LFA8E   
LFA74: LDA    #$3F    
       AND    $94     
       STA    $94     
       LDA    #$20    
       ORA    $95     
       STA    $95     
       INC    $DE     
       INC    $E8     
       INC    $E8     
       LDA    #$00    
       STA    $B0     
       STA    AUDV0   
       BEQ    LFAF0   
LFA8E: STX    $AA     
       LDA    $EA     
       JSR    LFEB0   
       ADC    $AB     
       TAX            
       BEQ    LFA74   
       CPX    #$A1    
       BCS    LFA74   
       STX    $AB     
       LDA    #$10    
       BIT    $80     
       BEQ    LFAF0   
       LDA    #$10    
       BIT    $EB     
       BNE    LFACA   
       LDA    $A0     
       SBC    $AB     
       BPL    LFAB4   
       EOR    #$FF    
LFAB4: CMP    #$07    
       BPL    LFACA   
       LDA    $94     
       AND    #$F0    
       LDX    $9F     
       CPX    $AA     
       BCS    LFAC4   
       ORA    #$08    
LFAC4: STA    $94     
       LDA    #$10    
       BNE    LFAEC   
LFACA: LDA    #$20    
       BIT    $EB     
       BNE    LFAF0   
       LDA    $9F     
       SBC    $AA     
       BPL    LFAD8   
       EOR    #$FF    
LFAD8: CMP    #$07    
       BPL    LFAF0   
       LDX    $AB     
       CPX    $A0     
       BCC    LFAF0   
       LDA    $94     
       AND    #$F0    
       ORA    #$0C    
       STA    $94     
       LDA    #$20    
LFAEC: ORA    $EB     
       STA    $EB     
LFAF0: LDA    $E9     
       ROR            
       BCC    LFAF8   
       JMP    LFBD6   
LFAF8: BIT    $97     
       BPL    LFAFF   
       JMP    LFB95   
LFAFF: LDA    $B5     
       BMI    LFB24   
       LDX    #$02    
       STX    RESMP0  
       BIT    $94     
       BMI    LFB67   
       LDA    #$20    
       AND    $95     
       BNE    LFB67   
       ROL    $B5     
       SEC            
       ROR    $B5     
       LDA    $AA     
       ADC    #$05    
       AND    #$FE    
       STA    $AE     
       LDA    #$9A    
       STA    $AF     
       BNE    LFB67   
LFB24: LDA    #$20    
       STA    RESMP0  
       STA    NUSIZ0  
       LDA    $B6     
       LDY    $92     
       CLC            
       ADC    LFF08,Y 
       STA    $B6     
       BCC    LFB67   
       LDA    $9F     
       CLC            
       ADC    #$08    
       TAX            
       LDA    $AE     
       CPX    $AE     
       BEQ    LFB4C   
       BCC    LFB48   
       ADC    #$01    
       BNE    LFB4A   
LFB48: SBC    #$01    
LFB4A: STA    $AE     
LFB4C: LDA    $A0     
       ADC    #$02    
       TAX            
       LDA    $AF     
       CPX    $AF     
       BEQ    LFB67   
       BCC    LFB5F   
       ADC    #$00    
       LDY    #$F0    
       BNE    LFB63   
LFB5F: SBC    #$00    
       LDY    #$10    
LFB63: STA    $AF     
       STY    HMM0    
LFB67: LDX    $9A     
       LDA    #$08    
       AND    $95     
       BNE    LFB82   
       INX            
       BIT    $94     
       BVS    LFB76   
       INC    $AA     
LFB76: CPX    #$3F    
       BMI    LFB93   
       LDA    #$08    
       ORA    $95     
       STA    $95     
       BNE    LFB93   
LFB82: DEX            
       BIT    $94     
       BVS    LFB89   
       DEC    $AA     
LFB89: CPX    #$02    
       BPL    LFB93   
       LDA    #$F7    
       AND    $95     
       STA    $95     
LFB93: STX    $9A     
LFB95: LDA    #$0F    
       STA    $9C     
       LDA    #$07    
       STA    $9B     
       LDA    $95     
       AND    #$F8    
       ORA    #$00    
       STA    $95     
       LDA    $B5     
       AND    #$FB    
       STA    $B5     
       STA    CTRLPF  
       LDA    #$07    
       AND    $E9     
       BNE    LFBC5   
LFBB3: BIT    $94     
       BMI    LFBC5   
       LDA    $E8     
       CLC            
       ADC    #$02    
       TAX            
       STX    $E8     
       AND    #$0E    
       BEQ    LFBB3   
       STX    COLUP0  
LFBC5: LDA    $80     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$03    
       TAX            
       LDY    LFFF3,X 
       STY    COLUPF  
       JMP    LFCB0   
LFBD6: LDA    $B5     
       ORA    #$04    
       STA    $B5     
       STA    CTRLPF  
       LDA    $95     
       AND    #$F8    
       ORA    #$02    
       STA    $95     
       BIT    $80     
       BMI    LFC53   
       BVS    LFC53   
       BIT    $97     
       BMI    LFC4D   
       BIT    $B5     
       BVS    LFC53   
       LDA    $96     
       TAY            
       LDA    $EB     
       AND    #$01    
       TAX            
       LDA    INPT4,X 
       BMI    LFC4D   
       LDA    #$20    
       BIT    $94     
       BNE    LFC53   
       TYA            
       AND    #$70    
       BNE    LFC2D   
LFC0B: LDA    $9E     
       AND    #$0F    
       TAX            
       LDA    $9F     
       ADC    #$05    
       AND    #$FE    
       STA    $A5     
       LDA    $96     
       AND    #$F0    
       STA    $96     
       STA    RESMP1  
       LDA    #$80    
       ORA    $A7     
       STA    $A7     
       TXA            
       ORA    #$10    
       ORA    $96     
       BNE    LFC43   
LFC2D: CMP    #$60    
       BEQ    LFC0B   
       CMP    #$50    
       BEQ    LFC39   
       CMP    #$40    
       BNE    LFC53   
LFC39: LDA    $9F     
       ADC    #$02    
       STA    $98     
       LDA    #$20    
       ORA    $96     
LFC43: STA    $96     
       LDA    #$20    
       ORA    $94     
       STA    $94     
       BNE    LFC53   
LFC4D: LDA    #$DF    
       AND    $94     
       STA    $94     
LFC53: LDA    #$60    
       BIT    $96     
       BNE    LFC60   
       LDX    #$F0    
       STX    $98     
       JMP    LFCB0   
LFC60: LDA    #$07    
       AND    $E9     
       CMP    #$01    
       BNE    LFC70   
       LDA    $B5     
       EOR    #$10    
       STA    $B5     
       STA    CTRLPF  
LFC70: LDA    #$20    
       AND    $96     
       BNE    LFC7F   
       LDA    $9F     
       ADC    #$02    
       STA    $98     
LFC7C: JMP    LFCB0   
LFC7F: BIT    $EB     
       BMI    LFC95   
       LDA    #$C0    
       STA    HMBL    
       LDA    #$04    
       CLC            
       ADC    $99     
       STA    $99     
       TAX            
       CPX    #$A1    
       BCC    LFC7C   
       BCS    LFCA5   
LFC95: LDA    #$60    
       STA    HMBL    
       LDA    $99     
       SEC            
       SBC    #$06    
       STA    $99     
       TAX            
       CPX    #$06    
       BCS    LFC7C   
LFCA5: LDA    $96     
       AND    #$1F    
       ORA    #$80    
       STA    $96     
       JMP    LFC53   
LFCB0: LDA    INTIM   
       BNE    LFCB0   
       LDA    $AA     
       EOR    #$01    
       STA    VDELP0  
       BIT    $A8     
       BVC    LFCD7   
       LDX    #$04    
       STX    CTRLPF  
       INC    $A8     
       LDA    $A8     
       AND    #$1F    
       CMP    #$1F    
       BNE    LFCDC   
       LDA    #$E0    
       AND    $A8     
       ORA    #$20    
       STA    $A8     
       BNE    LFCDC   
LFCD7: LDA    $95     
       AND    #$07    
       TAX            
LFCDC: LDA    LFF01,X 
       PHA            
       LDA    LFF00,X 
       PHA            
       LDA    #$F0    
       STA    $EA     
       LDX    #$00    
       LDA    #$20    
       AND    $95     
       BNE    LFCF4   
       BIT    $94     
       BPL    LFCF6   
LFCF4: DEC    $A9     
LFCF6: STA    WSYNC   
       STX    VBLANK  
       RTS            


START:
       LDA    #$8A    
       STA    $80     
       SEI            
       CLD            
       LDA    #$22    
       STA    TIM64T  
       JMP    LF490   
LFD09: LDX    #$0F    
LFD0B: LDA    #$10    
       BIT    $94     
       BNE    LFD16   
       LDA    LFF0D,X 
       BNE    LFD18   
LFD16: LDA    #$FF    
LFD18: STA    $81,X   
       DEX            
       BPL    LFD0B   
       STX    $F2     
       STX    $A5     
       STX    $AE     
       STX    $98     
       LDA    #$20    
       STA    $B5     
       LDA    #$80    
       STA    $96     
       LDA    #$F0    
       AND    $9E     
       STA    $9E     
       LDA    #$6A    
       STA    $A3     
       LDA    #$FF    
       STA    $A4     
       LDA    #$F0    
       ORA    $95     
       STA    $95     
       LDA    #$30    
       AND    $94     
       STA    $94     
       LDA    #$E2    
       STA    COLUPF  
       STA    RESMP1  
       LDA    #$00    
       STA    $A8     
       STA    $97     
       STA    COLUBK  
       LDA    #$05    
       STA    $9A     
       STA    $E9     
       CLC            
       ADC    #$35    
       STA    $AA     
       JMP    LF6C7   
LFD63: .byte $A5,$B3,$38,$E9,$80,$90,$3A,$4A,$4A,$AA,$A5,$B4,$38,$E5,$9A,$90
       .byte $30,$4A,$4A,$4A,$C9,$10,$10,$29,$85,$B2,$A9,$0F,$38,$E5,$B2,$A8
       .byte $B9,$81,$00,$3D,$1D,$FF,$F0,$19,$49,$FF,$39,$81,$00,$99,$81,$00
       .byte $86,$EA,$84,$B2,$A9,$69,$A0,$02,$20,$C1,$FE,$A6,$EA,$A4,$B2,$38
       .byte $60,$18,$60
LFDA6: LDA    $80     
       AND    #$07    
       LSR            
       LSR            
       ADC    #$00    
       ROR            
       EOR    $DF     
       ROR            
       BCS    LFDCB   
       BIT    $96     
       BVS    LFDCB   
       LDA    #$40    
       ORA    $96     
       STA    $96     
       LDA    #$7F    
       AND    $EB     
       STA    $EB     
       LDA    $F0     
       CLC            
       SBC    #$04    
       STA    $F0     
LFDCB: RTS            

LFDCC: .byte $A5,$9E,$A0,$03,$91,$EE,$24,$EB,$50,$29,$A9,$E0,$C5,$EE,$D0,$02
       .byte $A9,$E4,$85,$EE,$B1,$EE,$85,$9E,$A0,$13,$B6,$81,$B9,$C9,$00,$99
       .byte $81,$00,$96,$C9,$88,$10,$F3,$A9,$01,$45,$EB,$85,$EB,$A9,$CF,$25
       .byte $80,$85,$80,$60,$FE,$86,$86,$86,$82,$82,$FE,$00,$18,$18,$18,$18
       .byte $08,$08,$08,$00,$FE,$C0,$C0,$FE,$02,$82,$FE,$00,$FE,$86,$06,$7E
       .byte $02,$82,$FE,$00,$06,$06,$FE,$82,$82,$80,$80,$00,$FE,$86,$06,$FE
       .byte $80,$82,$FE,$00,$FE,$86,$86,$FE,$80,$88,$F8,$00,$06,$06,$06,$06
       .byte $02,$02,$FE,$00,$FE,$82,$82,$FE,$44,$44,$7C,$00,$06,$06,$06,$FE
       .byte $82,$82,$FE,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFE58: .byte $00,$08,$00,$00,$0C,$0A,$0E,$00,$04,$06,$02,$FC,$C0,$C0,$F0,$80
       .byte $80,$FC,$FC,$C0,$C0,$C0,$80,$80,$80,$FE,$F2,$80,$80,$80,$82,$FE
       .byte $18,$18,$18,$18,$10,$10,$FE,$79,$85,$B5,$A5,$B5,$85,$79,$17,$15
       .byte $15,$77,$55,$55,$77,$21,$21,$21,$21,$21,$21,$20,$49,$49,$49,$C9
       .byte $49,$49,$BE,$55,$55,$55,$D9,$55,$55,$99,$82,$82,$82,$FE,$82,$82
       .byte $82,$82,$C6,$AA,$92,$82,$82,$82
LFEB0: LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$08    
       BMI    LFEBA   
       ORA    #$F0    
LFEBA: EOR    #$FF    
       CLC            
       ADC    #$01    
       CLC            
       RTS            

LFEC1: .byte $F8,$18,$71,$EE,$91,$EE,$88,$30,$04,$A9,$00,$F0,$F5,$D8,$C9,$23
       .byte $90,$04,$A9,$30,$D0,$12,$C9,$15,$90,$08,$A9,$CF,$25,$80,$09,$10
       .byte $D0,$08,$C9,$07,$90,$06,$A9,$20,$05,$80,$85,$80,$60
LFEEE: LDA    $80     
       AND    $EB     
       ROR            
       LDA    SWCHB   
       BCS    LFEF9   
       ROL            
LFEF9: ROL            
       LDA    #$06    
       AND    $80     
       RTS            

LFEFF: .byte $00
LFF00: .byte $FF
LFF01: .byte $EF,$6B,$F0,$D5,$F0,$1B,$F1
LFF08: .byte $FF,$7F,$55,$3F,$33
LFF0D: .byte $F0,$F8,$FC,$7E,$3F,$1F,$0F,$0F,$0F,$0F,$1F,$3F,$7E,$FC,$F8,$F0
       .byte $01,$02,$04,$08,$10,$20,$40,$80
LFF25: .byte $04,$F3,$E2,$D1,$C0,$DF,$EE,$FD,$0C,$1D,$2E,$3F,$40,$31,$22,$13
       .byte $00,$00,$00,$1C,$2A,$14,$08,$14,$00,$00,$00,$00,$18,$18,$18,$00
       .byte $00,$00,$00,$00,$10,$28,$14,$2C,$2A,$08,$00,$00,$42,$0C,$20,$8A
       .byte $20,$19,$44,$10,$00,$22,$51,$00,$81,$42,$A3,$94,$62
LFF62: .byte $00,$09,$12,$1B,$24,$1B,$12,$09,$00,$24,$18,$24,$24,$7E,$5A,$DB
       .byte $3C,$00,$20,$30,$ED,$47,$2C,$3F,$17,$36,$00,$02,$0E,$99,$67,$67
       .byte $99,$0E,$02,$00,$36,$17,$3F,$2C,$47,$ED,$30,$20,$00,$3C,$DB,$5A
       .byte $7E,$24,$24,$18,$24,$00,$24,$99,$A5,$E7,$18,$18,$18,$3C,$00,$20
       .byte $37,$EC,$44,$2C,$FF,$87,$06,$00,$38,$08,$99,$67,$67,$99,$08,$38
       .byte $00,$06,$87,$FF,$2C,$44,$EC,$37,$20,$00,$3C,$18,$18,$18,$E7,$A5
       .byte $99,$24,$00,$60,$11,$09,$3A,$5C,$90,$88,$06,$00,$04,$62,$92,$1C
       .byte $38,$49,$46,$20,$00,$18,$06,$64,$99,$99,$26,$20,$18,$00,$0F,$1B
       .byte $33,$E3,$FF,$E3,$33,$1B,$0F,$00
LFFEA: .byte $0A,$2B,$3D,$5E,$60,$52,$33,$25,$06
LFFF3: .byte $32,$06,$74,$58,$00,$00,$00,$FB,$FC,$FB,$FC,$FB,$FC
