; Disassembly of roms/Alien.bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Alien.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
CTRLPF  =  $0A
PF0     =  $0D
RESM0   =  $12
RESM1   =  $13
AUDV0   =  $19
HMM0    =  $22
HMM1    =  $23
HMOVE   =  $2A
INPT4   =  $3C
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $00,$1E,$33,$33,$33,$33,$33,$1E,$00,$3F,$0C,$0C,$0C,$0C,$3C,$1C
       .byte $00,$3F,$30,$30,$1E,$03,$23,$3E,$00,$1E,$23,$03,$06,$03,$23,$1E
       .byte $00,$06,$06,$3F,$26,$16,$0E,$06,$00,$3E,$23,$03,$3E,$30,$30,$3F
       .byte $00,$1E,$33,$33,$3E,$30,$31,$1E,$00,$0C,$0C,$0C,$06,$03,$21,$3F
       .byte $00,$1E,$33,$33,$1E,$33,$33,$1E,$00,$1E,$23,$03,$1F,$33,$33,$1E
       .byte $00,$21,$21,$21,$3F,$21,$21,$3F,$00,$07,$04,$04,$04,$04,$04,$04
       .byte $00,$C1,$01,$01,$01,$01,$01,$01,$00,$07,$04,$04,$07,$04,$04,$07
       .byte $00,$E0,$00,$00,$E0,$00,$00,$E0,$00,$83,$87,$8D,$99,$B1,$E1,$C1
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$B9,$59,$F2,$85,$0E,$A6,$9E,$BD
       .byte $08,$F5,$85,$1B,$B9,$AE,$F2,$85,$0F,$85,$2B,$88,$C4,$8F,$B0,$28
       .byte $BD,$05,$F4,$F0,$0B,$E6,$9E,$85,$02,$85,$2A,$85,$1B,$6C,$93,$00
       .byte $B9,$04,$F3,$29,$08,$F0,$11,$A6,$9C,$B5,$F5,$85,$06,$A9,$EA,$85
       .byte $02,$85,$2A,$85,$91,$6C,$93,$00,$C0,$0B,$B0,$15,$4C,$D2,$F1,$A9
       .byte $88,$85,$91,$A6,$84,$A5,$86,$CA,$10,$FD,$85,$10,$85,$2B,$85,$20
       .byte $88,$85,$02,$85,$2A,$85,$3E,$6C,$93,$00,$B9,$59,$F2,$85,$0E,$B9
       .byte $AE,$F2,$85,$0F,$A6,$9C,$B5,$A3,$85,$9E,$B5,$AA,$85,$8F,$85,$2B
       .byte $88,$B5,$B7,$85,$86,$85,$0B,$29,$07,$85,$84,$B5,$95,$85,$9C,$A9
       .byte $CF,$85,$02,$85,$2A,$85,$91,$6C,$93,$00,$A6,$FC,$BD,$08,$F5,$85
       .byte $1C,$C4,$90,$85,$2B,$B0,$25,$BD,$05,$F4,$F0,$32,$E6,$FC,$AA,$B9
       .byte $04,$F3,$85,$22,$85,$23,$4A,$B0,$19,$A5,$8C,$4A,$85,$1D,$4A,$85
       .byte $8C,$85,$1E,$85,$02,$85,$2A,$86,$1C,$6C,$91,$00,$EA,$E6,$3E,$4C
       .byte $2E,$F1,$68,$85,$8C,$85,$02,$85,$2A,$86,$1C,$6C,$91,$00,$AA,$B9
       .byte $04,$F3,$85,$22,$85,$23,$4A,$B0,$E9,$4A,$90,$CD,$A9,$7F,$85,$93
       .byte $A5,$8C,$4A,$85,$1D,$4A,$85,$02,$85,$2A,$85,$1E,$6C,$91,$00,$A6
       .byte $9D,$B5,$F5,$85,$07,$B5,$A3,$85,$FC,$B5,$AA,$85,$90,$85,$2B,$B5
       .byte $B7,$85,$8A,$85,$0C,$29,$07,$85,$88,$B5,$95,$85,$9D,$A9,$70,$85
       .byte $23,$85,$22,$85,$1D,$A2,$B0,$85,$1E,$85,$2A,$86,$93,$6C,$91,$00
       .byte $A9,$1A,$85,$93,$A6,$88,$A5,$8A,$CA,$10,$FD,$85,$11,$85,$2B,$85
       .byte $21,$85,$02,$85,$2A,$85,$3E,$6C,$91,$00,$00,$00,$00,$00,$01,$01
       .byte $03,$03,$85,$02,$85,$2A,$A9,$F0,$85,$84,$85,$86,$85,$88,$85,$8A
       .byte $85,$8C,$85,$8E,$A9,$07,$85,$10,$85,$11,$A2,$10,$86,$21,$86,$0B
       .byte $86,$0C,$85,$02,$85,$2A,$85,$8F,$4A,$85,$04,$85,$05,$4A,$85,$25
       .byte $85,$26,$A5,$FB,$85,$06,$85,$07,$85,$2B,$A4,$8F,$B1,$8D,$85,$90
       .byte $B1,$8B,$AA,$B1,$83,$85,$02,$85,$2A,$85,$1B,$B1,$85,$85,$1C,$B1
       .byte $87,$85,$1B,$B1,$89,$A4,$90,$85,$1C,$86,$1B,$84,$1C,$85,$1B,$C6
       .byte $8F,$10,$D7,$85,$02,$85,$2A,$A9,$00,$85,$25,$85,$26,$A6,$C0,$BD
       .byte $CA,$F1,$85,$04,$BD,$C9,$F1,$85,$05,$A0,$07,$85,$02,$85,$2A,$B9
       .byte $E2,$F3,$E0,$02,$90,$08,$85,$1B,$E0,$03,$90,$02,$85,$1C,$88,$10
       .byte $EA,$4C,$51,$F7,$FF,$80,$80,$80,$80,$80,$80,$80,$80,$9C,$94,$94
       .byte $9C,$80,$80,$80,$80,$80,$80,$80,$80,$9F,$90,$90,$9F,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$F3,$92,$92,$F3,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$F3,$92,$92,$F2,$82,$82,$82,$82,$82,$82,$82,$82,$92,$92,$92
       .byte $93,$90,$90,$90,$90,$90,$90,$90,$90,$9F,$90,$90,$9F,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$FF,$FF,$FF,$FF,$7F,$40,$40,$40,$40,$40,$40
       .byte $40,$40,$CF,$49,$49,$CF,$01,$01,$01,$01,$01,$01,$01,$01,$F9,$09
       .byte $09,$F9,$80,$80,$80,$80,$80,$80,$80,$80,$9F,$90,$90,$9F,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$F9,$09,$09,$F9,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$9F,$90,$90,$9F,$80,$80,$80,$80,$80,$80,$80,$80,$F9,$09
       .byte $09,$F9,$00
LF303: .byte $00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$80
       .byte $88,$28,$79,$0C,$78,$82,$80,$28,$71,$00,$78,$8A,$88,$28,$79,$0C
       .byte $78,$82,$80,$28,$71,$00,$78,$8A,$88,$28,$79,$0C,$78,$82,$80,$28
       .byte $71,$00,$78,$8A,$88,$28,$79,$0C,$78,$82,$80,$28,$71,$00,$78,$8A
       .byte $88,$28,$79,$0C,$78,$82,$80,$28,$71,$00,$78,$8A,$88,$28,$79,$0C
       .byte $78,$82,$80,$28,$71,$00,$78,$8A,$88,$28,$09,$0C,$0A,$02,$0A,$0A
       .byte $A6,$FC,$BD,$08,$F5,$85,$1C,$C0,$5C,$85,$2B,$B0,$20,$C4,$90,$B0
       .byte $16,$BD,$05,$F4,$F0,$0B,$E6,$FC,$85,$02,$85,$2A,$85,$1C,$6C,$91
       .byte $00,$E6,$9D,$A9,$9D,$85,$93,$A9,$00,$C0,$0B,$D0,$04,$A5,$F8,$29
       .byte $F4,$85,$02,$85,$2A,$85,$08,$6C,$91,$00,$A6,$9D,$B5,$F5,$85,$07
       .byte $BD,$F8,$F4,$85,$90,$B5,$C9,$85,$FC,$B5,$C1,$85,$8A,$29,$0F,$85
       .byte $88,$A5,$37,$95,$D1,$85,$2C,$BD,$00,$F5,$85,$0C,$85,$05,$A9,$CC
       .byte $85,$02,$85,$2A,$85,$93,$6C,$91,$00,$A6,$88,$A5,$8A,$CA,$10,$FD
       .byte $85,$11,$85,$21,$A9,$63,$85,$02,$85,$2A,$85,$93,$6C,$91,$00,$00
       .byte $C0,$60,$F8,$60,$C0,$00,$00
LF3EA: .byte $FF,$0E,$FF,$94,$BE,$18,$FF,$90,$FF,$0C,$FF,$44,$7F,$FF,$C0,$FF
       .byte $A4,$F4,$60,$FF,$24,$FF,$C0,$FF,$88,$F8,$00,$00,$08,$42,$80,$81
       .byte $4A,$10,$00,$08,$14,$22,$10,$10,$00,$10,$28,$04,$08,$00,$10,$20
       .byte $20,$00,$2E,$1F,$7C,$B0,$73,$7C,$00,$2C,$1A,$78,$36,$38,$00,$00
       .byte $08,$1C,$30,$38,$00,$00,$00,$08,$6B,$08,$08,$6B,$08,$00,$3C,$24
       .byte $C9,$A6,$41,$E3,$00,$18,$2C,$42,$74,$4A,$74,$00,$18,$24,$04,$14
       .byte $20,$34,$00,$10,$08,$10,$10,$08,$10,$00,$16,$5D,$30,$70,$7D,$88
       .byte $84,$00,$0A,$3D,$F0,$70,$7D,$50,$50,$00,$18,$18,$3E,$58,$3E,$61
       .byte $81,$00,$18,$18,$18,$3C,$1C,$34,$24,$00,$42,$FF,$42,$00,$0F,$34
       .byte $3C,$00,$2A,$7F,$2A,$00,$1F,$5A,$E8,$00,$19,$54,$14,$00,$70,$FF
       .byte $70,$00,$08,$3E,$08,$00,$18,$18,$18,$18,$18,$18,$18,$00,$24,$BD
       .byte $24,$00,$16,$5D,$30,$70,$3D,$20,$20,$00,$30,$FF,$30,$00
LF4A8: .byte $E3,$90,$75,$75,$C5,$B0,$06,$00,$59,$D5,$55,$55,$D5,$55,$0C,$00
       .byte $79,$D5,$65,$30,$D5,$75,$0C,$00,$9A,$75,$C5,$90,$75,$C5,$0A,$00
       .byte $53,$57,$06,$02,$53,$57,$06,$00,$F5,$75,$D5,$D5,$75,$F5,$05,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$5B,$3C,$5D,$55,$6D,$59,$0E,$00
       .byte $00,$04,$09,$00,$03,$08,$00,$02,$07,$0C,$01,$06,$0B,$00,$05,$0A
       .byte $5A,$50,$46,$3C,$32,$28,$1E,$00,$00,$0A,$02,$0A,$02,$0A,$02,$00
       .byte $00,$00,$10,$09,$54,$10,$04,$00,$00,$20,$48,$48,$28,$00,$00,$04
       .byte $10,$10,$00,$00,$08,$08,$00,$00,$3F,$5D,$34,$E0,$76,$00,$00,$3E
       .byte $18,$72,$3C,$00,$00,$00,$1C,$38,$2C,$00,$00,$00,$00,$49,$22,$CB
       .byte $22,$49,$00,$00,$24,$6E,$83,$E3,$9D,$00,$00,$28,$62,$54,$22,$5A
       .byte $00,$00,$14,$30,$28,$14,$08,$00,$00,$00,$10,$00,$00,$10,$00,$00
       .byte $1F,$74,$30,$74,$DF,$8C,$00,$00,$2F,$B4,$30,$74,$77,$50,$00,$00
       .byte $10,$12,$7C,$18,$6F,$C1,$00,$00,$10,$10,$3C,$38,$34,$24,$00,$00
       .byte $99,$99,$00,$00,$F6,$18,$00,$00,$1C,$1C,$00,$00,$39,$98,$00,$00
       .byte $3E,$14,$00,$00,$38,$38,$00,$00,$08,$08,$00,$00,$10,$10,$18,$18
       .byte $18,$18,$00,$00,$B4,$2D,$00,$00,$1F,$74,$30,$74,$27,$20,$00,$00
       .byte $7C,$7C,$00

START:
       SEI            
       CLD            
       LDX    #$00    
       LDY    #$80    
       LDA    #$00    
LF5B3: STA    VSYNC,X 
       INX            
       BNE    LF5B3   
       STY    $80     
       DEC    $F4     
       LDX    $81     
       TYA            
       BPL    LF5C6   
       LDA    LFF70,X 
       STA    $8D     
LF5C6: LDA    LFF74,X 
       STA    $C0     
       LDA    LFF7C,X 
       STA    $DC     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$88    
       STA    $91     
       LDA    #$F0    
       STA    $92     
       LDA    #$80    
       LDX    #$08    
LF5E0: STA    $83,X   
       DEX            
       BPL    LF5E0   
       CPY    #$80    
       BNE    LF5F3   
       LDX    #$0B    
LF5EB: SEC            
       SBC    #$04    
       STA    $83,X   
       DEX            
       BPL    LF5EB   
LF5F3: LDA    #$1A    
       STA    $93     
       LDA    #$F1    
       STA    $94     
       LDX    #$1A    
LF5FD: LDA    LF3EA,X 
       STA    $C1,X   
       DEX            
       BPL    LF5FD   
       LDA    #$03    
       STA    $E7     
       LDX    #$43    
       LDA    #$00    
       STA    $DD     
       STA    PF0     
       STX    $AD     
       LDA    #$3C    
       STA    $B4     
       STA    $B6     
       LDA    #$74    
       STA    $BC     
       LDX    #$03    
       STX    $A2     
       INX            
       STX    $E6     
       LDX    #$00    
       STX    $E8     
       STX    $AA     
       STX    $AB     
       STX    $AC     
       STX    $AF     
       STX    $EB     
       STX    AUDV0   
       DEX            
       TXS            
       LDA    #$1E    
       STA    $EA     
LF63A: LDX    INTIM   
       BNE    LF63A   
       DEX            
       LDA    #$31    
       STA    WSYNC   
       STX    VSYNC   
       STA    TIM64T  
       LDX    #$77    
       LDA    $BE     
       AND    #$08    
       BEQ    LF653   
       LDX    #$87    
LF653: STX    $A7     
       STA    WSYNC   
       LDA    $BE     
       AND    #$01    
       TAY            
       LDA    LFE45,Y 
       STA    HMM0    
       LDA    LFE47,Y 
       STA    HMM1    
       LDX    LFE49,Y 
       STA    WSYNC   
LF66B: DEX            
       BPL    LF66B   
       STA    RESM0   
       PLA            
       PHA            
       STA    RESM1   
       STA    WSYNC   
       INX            
       STX    VSYNC   
       LDX    $E7     
       LDA    LFEE3,X 
       STA    $B5     
       LDY    LFFF6,X 
       LDA    $80     
       BNE    LF6B6   
       LDA    $F4     
       BEQ    LF6B6   
       LDA    INPT4   
       BMI    LF6B6   
       LDA    $BA     
       STA    $BB     
       AND    #$08    
       EOR    #$08    
       BNE    LF69B   
       LDA    #$F8    
LF69B: CLC            
       ADC    $B4     
       CMP    #$77    
       BCS    LF6B6   
       STA    $B5     
       LDA    #$4E    
       AND    $9E     
       STA    $F8     
       DEC    $F4     
       LDA    #$9F    
       STA    $A7     
       STA    $EC     
       LDY    $AD     
       DEY            
       DEY            
LF6B6: STY    $AE     
       JSR    LFA44   
       LDX    #$04    
LF6BD: LDA    $B1,X   
       LDY    #$FF    
LF6C1: INY            
       SEC            
       SBC    #$0F    
       BCS    LF6C1   
       STY    $84     
       SBC    #$00    
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $86     
       LDA    $9F,X   
       LSR            
       BCS    LF6DE   
       ASL            
       ASL            
       ASL            
       JMP    LF6E0   
LF6DE: LDA    $B7,X   
LF6E0: AND    #$08    
       ORA    $86     
       ORA    $84     
       STA    $B7,X   
       DEX            
       BPL    LF6BD   
       INX            
       JSR    LF939   
       STA    $9C     
       TAX            
       LDA    $AA,X   
       CMP    #$2C    
       BCC    LF6FD   
       SBC.wy $00AA,Y 
       CMP    #$26    
LF6FD: LDA    #$00    
       ROR            
       ORA    $9C     
       STA    $ED     
       LDX    #$03    
       JSR    LF939   
       CLC            
       ADC    #$03    
       STA    $9D     
       LDY    #$07    
       JSR    LF902   
       LDY    #$08    
       JSR    LF902   
       LDX    #$C0    
       LDA    $BE     
       LSR            
       BCC    LF721   
       LDX    #$CD    
LF721: TXS            
       LDA    $80     
       AND    #$20    
       BEQ    LF730   
       LDA    #$FF    
       STA    $9D     
       LDA    #$03    
       STA    $9C     
LF730: LDA    #$00    
       STA    $9E     
       STA    $FC     
       STA    $8C     
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$60    
       STY    $8F     
       STY    $90     
       DEY            
LF743: LDA    INTIM   
       BNE    LF743   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       JMP.ind ($0091)
LF751: .byte $A9,$27,$85,$02,$8D,$96,$02,$A2,$FF,$86,$01,$9A,$AD,$82,$02,$29
       .byte $08,$D0,$02,$A2,$0D,$8A,$A0,$00,$24,$80,$50,$06,$A4,$BF,$09,$02
       .byte $29,$F6,$85,$9E,$84,$84,$A5,$E8,$D0,$14,$A2,$08,$BD,$3C,$FE,$45
       .byte $84,$25,$9E,$95,$F5,$E0,$07,$90,$02,$95,$01,$CA,$10,$EE,$A0,$01
       .byte $46,$80,$A5,$BE,$49,$3B,$D0,$01,$18,$AD,$82,$02,$49,$FF,$29,$03
       .byte $F0,$15,$B0,$14,$C9,$02,$90,$0A,$A5,$81,$69,$00,$29,$03,$85,$81
       .byte $A0,$81,$A2,$83,$4C,$B1,$F5,$18,$26,$80,$20,$F6,$FB,$20,$9A,$FC
       .byte $A5,$80,$30,$7C,$A5,$EA,$D0,$78,$A2,$03,$20,$06,$FE,$AA,$90,$04
       .byte $A9,$FF,$85,$E5,$A5,$A2,$29,$03,$A8,$49,$02,$85,$8E,$B0,$03,$BE
       .byte $99,$FE,$A5,$80,$29,$20,$F0,$04,$A2,$0A,$A0,$00,$AD,$80,$02,$49
       .byte $FF,$29,$F0,$F0,$02,$84,$BF,$19,$91,$FE,$3D,$75,$FE,$F0,$41,$85
       .byte $84,$C8,$B9,$91,$FE,$25,$84,$F0,$F8,$66,$E1,$A5,$DC,$29,$FE,$0A
       .byte $0A,$AA,$98,$29,$03,$85,$86,$45,$8E,$D0,$04,$A0,$7F,$84,$EC,$4A
       .byte $BD,$AC,$FE,$B0,$12,$BD,$A8,$FE,$A4,$F3,$D0,$0B,$BD,$AB,$FE,$24
       .byte $E1,$30,$04,$A5,$A2,$29,$FC,$05,$86,$85,$A2,$A2,$03,$20,$09,$FA
       .byte $A2,$03,$E4,$E6,$D0,$13,$A9,$00,$85,$A6,$A5,$EA,$29,$18,$4A,$4A
       .byte $1D,$3E,$FF,$A8,$B9,$4D,$FF,$D0,$29,$B5,$AA,$C9,$37,$D0,$12,$B5
       .byte $B1,$C9,$05,$90,$06,$C9,$73,$90,$08,$49,$77,$A8,$B9,$60,$FF,$D0
       .byte $11,$A5,$BE,$E0,$03,$F0,$01,$4A,$29,$0C,$4A,$1D,$3E,$FF,$A8,$B9
       .byte $45,$FF,$95,$A3,$CA,$10,$BB,$E6,$BE,$D0,$08,$E6,$BF,$10,$04,$A9
       .byte $C0,$85,$80,$A5,$BE,$4A,$B0,$60,$A5,$EA,$F0,$29,$C6,$EA,$D0,$58
       .byte $A6,$E6,$A0,$00,$94,$AA,$84,$ED,$A5,$80,$29,$10,$F0,$05,$84,$80
       .byte $4C,$F3,$F5,$E0,$03,$D0,$0E,$88,$84,$F4,$C6,$C0,$D0,$04,$A9,$C0
       .byte $85,$80,$4C,$09,$F6,$A5,$EB,$F0,$02,$C6,$EB,$A9,$04,$85,$E6,$A5
       .byte $E8,$F0,$1D,$C6,$E8,$C9,$3C,$B0,$17,$A0,$0F,$29,$08,$D0,$05,$A9
       .byte $8B,$25,$9E,$A8,$A2,$02,$B5,$F5,$4A,$90,$02,$94,$F5,$CA,$10,$F6
       .byte $C6,$DD,$D0,$04,$A9,$00,$85,$AF,$20,$55,$FD,$20,$71,$F9,$4C,$3A
       .byte $F6
LF902: LDA    $BE     
       STA    $88     
LF906: STY    $84     
LF908: LDX    $84     
       LDY    $95,X   
       LDX    $95,Y   
       CPX    #$06    
       BEQ    LF938   
       LDA.wy $00AA,Y 
       SEC            
       SBC    LFF65,Y 
       CMP    $AA,X   
       BCS    LF906   
       TYA            
       CMP.wy $0095,Y 
       BCS    LF92D   
       LSR    $88     
       BCS    LF931   
LF927: LDY    $84     
       STX    $95,Y   
       BPL    LF908   
LF92D: LSR    $88     
       BCS    LF927   
LF931: LDA    $95,X   
       STA.wy $0095,Y 
       BPL    LF908   
LF938: RTS            

LF939: STX    $84     
       LDA    $AA,X   
       CMP    $AB,X   
       ROL    $86     
       CMP    $AC,X   
       ROL    $86     
       LDA    $AB,X   
       CMP    $AC,X   
       LDA    $86     
       ROL            
       AND    #$07    
       TAY            
       INX            
       INX            
       LDA    LFE6B,Y 
LF954: STA    $86     
       AND    #$03    
       CMP    #$03    
       BNE    LF962   
       TXA            
       TAY            
       LDA    #$06    
       BNE    LF965   
LF962: CLC            
       ADC    $84     
LF965: STA    $95,X   
       LDA    $86     
       LSR            
       LSR            
       DEX            
       CPX    $84     
       BPL    LF954   
       RTS            

LF971: .byte $24,$80,$30,$0B,$A4,$EE,$B9,$80,$FF,$D0,$0A,$A5,$F1,$85,$EE,$A9
       .byte $00,$85,$F1,$F0,$16,$E6,$EE,$C9,$F0,$90,$04,$85,$16,$B0,$17,$C9
       .byte $E0,$90,$08,$29,$0F,$0A,$85,$F2,$4C,$A7,$F9,$85,$1A,$4A,$4A,$4A
       .byte $4A,$18,$65,$F2,$85,$18,$A5,$80,$29,$80,$30,$27,$A5,$E8,$F0,$26
       .byte $C5,$EF,$90,$14,$A9,$04,$85,$15,$85,$19,$A6,$F0,$E8,$E0,$1C,$90
       .byte $02,$A2,$0B,$86,$F0,$86,$17,$60,$A9,$0F,$85,$17,$4A,$85,$15,$A5
       .byte $BE,$29,$07,$85,$19,$60,$A9,$04,$85,$15,$A5,$DB,$4A,$4A,$4A,$4A
       .byte $4A,$AA,$A9,$01,$A4,$EA,$D0,$02,$85,$19,$A4,$F0,$30,$0B,$C8,$98
       .byte $DD,$BC,$FF,$90,$0A,$09,$80,$30,$06,$88,$30,$02,$A0,$00,$98,$85
       .byte $F0,$18,$7D,$BD,$FF,$85,$17,$60
LFA09: LDA    $9F,X   
       AND    #$FC    
       CLC            
       ADC    $E2,X   
       STA    $E2,X   
       BCC    LFA43   
       LDA    $DE,X   
       AND    #$3F    
       STA    $DE,X   
       LDA    $9F,X   
       AND    #$03    
       TAY            
       LDA    $AA,X   
       BEQ    LFA43   
       CLC            
       ADC    LFF78,Y 
       CMP    #$13    
       BCC    LFA2D   
       STA    $AA,X   
LFA2D: LDA    $B1,X   
       CLC            
       ADC    LFF79,Y 
       CMP    #$78    
       BCC    LFA41   
       BNE    LFA3B   
       LDA    #$00    
LFA3B: AND    #$77    
       LDY    #$12    
       STY    $F1     
LFA41: STA    $B1,X   
LFA43: RTS            

LFA44: INC    $82     
       LDX    $82     
       LDA    LFA44,X 
       STA    $90     
       LDA    $EA     
       BNE    LFA8D   
       LDA    $DC     
       AND    #$FE    
       ASL            
       ASL            
       STA    $8F     
       LDX    #$02    
LFA5B: LDA    $EB     
       BNE    LFA8E   
       LDA    $AA,X   
       BNE    LFA8E   
       TXA            
       BEQ    LFA6A   
       LDA    $AA     
       BEQ    LFA6E   
LFA6A: LDA    $ED     
       BPL    LFA88   
LFA6E: LDA    #$61    
       STA    $9F,X   
       LDA    #$3C    
       STA    $B1,X   
       LDA    #$13    
       STA    $AA,X   
       LDA    LFE3C,X 
       AND    $9E     
       STA    $F5,X   
       LDY    $8F     
       LDA    LFEAD,Y 
       STA    $EB     
LFA88: DEX            
       BPL    LFA5B   
       LSR    $EC     
LFA8D: RTS            

LFA8E: JSR    LFE06   
       BCC    LFA96   
       JMP    LFB22   
LFA96: LDA    $A2     
       EOR    $DC     
       AND    #$03    
       ADC    LFF6A,X 
       LDY    $DB     
       CPY    #$02    
       BEQ    LFAAC   
       LDA    LFF6D,X 
       CPY    #$44    
       BNE    LFAAE   
LFAAC: STA    $DE,X   
LFAAE: LDA    $B1,X   
       CMP    #$3C    
       BNE    LFACC   
       LDA    $AA,X   
       CMP    #$18    
       BNE    LFACC   
       LDA    $EB     
       BPL    LFAC4   
       DEC    $AA,X   
       LDA    #$43    
       BNE    LFB1A   
LFAC4: LDA    #$10    
       STA    $EB     
       INC    $AA,X   
       BNE    LFB1C   
LFACC: LDA    $F5,X   
       LSR            
       LDA    #$07    
       BCS    LFB10   
       BIT    $EC     
       BVS    LFB0E   
       LDY    LFE73,X 
       LDA    $AA,X   
       ADC    #$05    
       SBC.wy $00AA,Y 
       CMP    #$0B    
       BCS    LFAFE   
       LDA    $B1,X   
       ADC    #$05    
       SBC.wy $00B1,Y 
       CMP    #$0B    
       BCS    LFAFE   
       TXA            
       BNE    LFB0E   
       LDA    $A0     
       AND    #$03    
       LDY    $8F     
       ORA    LFEAE,Y 
       STA    $A0     
LFAFE: LDA    $AA,X   
       CMP    #$37    
       BNE    LFB1C   
       LDA    $B1,X   
       CMP    #$0F    
       BCC    LFB0E   
       CMP    #$69    
       BCC    LFB1C   
LFB0E: LDA    #$06    
LFB10: ORA    $8F     
       TAY            
       LDA    $9F,X   
       AND    #$03    
       ORA    LFEA8,Y 
LFB1A: STA    $9F,X   
LFB1C: JSR    LFA09   
       JMP    LFA88   
LFB22: LDY    $DE,X   
       BMI    LFB1C   
       STA    $84     
       LDA    $81     
       CMP    #$03    
       BEQ    LFB34   
       LDA    $F5,X   
       AND    #$01    
       BEQ    LFB38   
LFB34: LDA    #$02    
       LDY    #$00    
LFB38: STA    $86     
       LDA    #$00    
       STA    $88     
       TXA            
       EOR    $ED     
       BMI    LFB53   
       BEQ    LFB4D   
       LDA    $95,X   
       CMP    #$06    
       BNE    LFB53   
       LDA    #$02    
LFB4D: EOR    #$02    
       STA    $86     
       BPL    LFB6D   
LFB53: LDA    LFEEA,Y 
       BNE    LFB5A   
       LDA    $AD     
LFB5A: CMP    $AA,X   
       BNE    LFB60   
       INC    $86     
LFB60: ROL    $86     
       ASL    $86     
       LDA    LFF04,Y 
       BNE    LFB8A   
       LDA    $E8     
       BNE    LFB88   
LFB6D: SEC            
       LDA    $AD     
       SBC    #$0D    
       CMP    $AA,X   
       BCS    LFB88   
       ADC    #$1A    
       CMP    $AA,X   
       BCC    LFB88   
       TXA            
       EOR    $DC     
       ASL            
       EOR    $9F,X   
       AND    #$03    
       BNE    LFB88   
       DEC    $88     
LFB88: LDA    $B4     
LFB8A: CMP    $B1,X   
       BNE    LFB90   
       INC    $86     
LFB90: ROL    $86     
       LDA    $9F,X   
       AND    #$03    
       CPX    #$01    
       LDY    $EC     
       BMI    LFBA4   
       BCS    LFBA0   
       BNE    LFBA2   
LFBA0: EOR    #$02    
LFBA2: ORA    $88     
LFBA4: STA    $88     
       LDA    #$80    
       LDY    $86     
       CPY    #$0F    
       BNE    LFBB4   
       LDA    $A2     
       AND    #$01    
       ADC    #$00    
LFBB4: CLC            
       ADC    $DE,X   
       STA    $DE,X   
       BIT    SWCHB   
       TXA            
       BVC    LFBC3   
       LDA    $90     
       AND    #$01    
LFBC3: BNE    LFBC9   
       TYA            
       ORA    #$08    
       TAY            
LFBC9: LDA    LFF1E,Y 
LFBCC: STA    $8A     
       AND    #$03    
       TAY            
       CPY    $88     
       BEQ    LFBDC   
       LDA    LFF41,Y 
       AND    $84     
       BNE    LFBE6   
LFBDC: LDY    $88     
       LDA    $8A     
       BEQ    LFBE6   
       LSR            
       LSR            
       BPL    LFBCC   
LFBE6: STY    $9F,X   
       TXA            
       ORA    $8F     
       TAY            
       LDA    LFEA8,Y 
       ORA    $9F,X   
       STA    $9F,X   
       JMP    LFA88   
LFBF6: .byte $A4,$AD,$B9,$03,$F3,$29,$F0,$D0,$10,$98,$4A,$29,$0F,$AA,$A5,$B4
       .byte $4A,$4A,$A8,$B9,$4B,$FE,$A8,$10,$01,$60,$BD,$E8,$F4,$C0,$06,$90
       .byte $02,$69,$0C,$AA,$B5,$C1,$39,$85,$FE,$85,$F3,$F0,$EC,$55,$C1,$95
       .byte $C1,$A9,$01,$85,$F1,$A9,$18,$20,$E3,$FD,$E6,$DB,$A5,$DB,$C9,$28
       .byte $F0,$04,$C9,$50,$D0,$17,$A6,$DC,$BC,$9D,$FE,$A6,$81,$E0,$02,$90
       .byte $02,$A0,$7B,$84,$A8,$A0,$D2,$84,$DD,$A0,$42,$84,$AF,$C9,$6A,$D0
       .byte $B8,$A6,$DC,$E0,$0A,$F0,$02,$E6,$DC,$E0,$01,$D0,$02,$E6,$C0,$A9
       .byte $1A,$20,$E3,$FD,$A9,$83,$85,$C9,$A9,$84,$85,$C1,$A9,$00,$85,$E7
       .byte $85,$DB,$A9,$21,$85,$80,$A2,$05,$A5,$BE,$5D,$F6,$FB,$29,$F7,$09
       .byte $01,$95,$C2,$CA,$10,$F2,$A9,$F3,$85,$94,$A9,$63,$85,$93,$8A,$A2
       .byte $13,$4C,$0D,$F6,$A5,$80,$29,$A0,$05,$EA,$D0,$7A,$18,$A5,$B4,$69
       .byte $02,$85,$86,$E9,$03,$85,$88,$18,$A5,$AD,$69,$02,$85,$8A,$E9,$03
       .byte $85,$8C,$A2,$05,$B5,$B1,$C5,$86,$B0,$0E,$C5,$88,$90,$0A,$B5,$AA
       .byte $C5,$8A,$B0,$04,$C5,$8C,$B0,$01,$18,$90,$02,$8A,$A8,$26,$84,$CA
       .byte $10,$E2,$A5,$84,$29,$20,$F0,$10,$A9,$23,$85,$F1,$A9,$00,$85,$AF
       .byte $A6,$DC,$BD,$55,$FF,$4C,$E3,$FD,$A5,$84,$29,$10,$F0,$29,$C6,$E7
       .byte $A9,$18,$20,$E3,$FD,$A6,$DC,$2C,$82,$02,$10,$02,$A2,$0A,$BD,$D8
       .byte $FE,$85,$E8,$85,$EF,$A2,$00,$86,$E9,$CA,$86,$EC,$A9,$8B,$25,$9E
       .byte $85,$F5,$85,$F6,$85,$F7,$60,$A5,$84,$29,$07,$F0,$31,$A9,$1E,$85
       .byte $EA,$B9,$F5,$00,$4A,$A9,$00,$90,$18,$85,$F0,$A5,$E8,$30,$02,$A9
       .byte $10,$29,$7F,$85,$EF,$84,$E6,$A6,$E9,$E6,$E9,$BD,$E7,$FE,$4C,$E3
       .byte $FD,$85,$19,$99,$AA,$00,$A9,$41,$85,$F1,$A9,$03,$85,$E6,$60,$A5
       .byte $80,$29,$20,$F0,$32,$A9,$00,$85,$09,$A2,$06,$A5,$A3,$95,$CA,$CA
       .byte $10,$FB,$A5,$EA,$D0,$21,$A9,$30,$85,$80,$A6,$DD,$E0,$3C,$B0,$04
       .byte $A9,$68,$85,$DB,$CA,$D0,$11,$A9,$03,$85,$E6,$A9,$41,$85,$F1,$A9
       .byte $00,$85,$19,$A9,$1E,$85,$EA,$60,$A5,$D2,$10,$10,$A9,$00,$85,$C9
       .byte $A6,$DC,$BD,$55,$FF,$20,$E3,$FD,$A9,$23,$D0,$E1,$A2,$05,$B5,$D3
       .byte $30,$D5,$CA,$10,$F9,$24,$E0,$70,$DE,$A9,$40,$85,$E0,$A2,$05,$8A
       .byte $4A,$B5,$C2,$90,$12,$E9,$10,$30,$06,$C9,$70,$90,$02,$69,$F0,$C9
       .byte $08,$D0,$02,$A9,$D0,$D0,$10,$69,$10,$10,$06,$C9,$90,$B0,$02,$69
       .byte $0F,$C9,$D0,$D0,$02,$A9,$08,$95,$C2,$CA,$10,$D3,$60,$A8,$29,$0F
       .byte $AA,$98,$4A,$29,$F8,$18,$75,$83,$C9,$80,$B0,$0F,$C9,$50,$90,$0D
       .byte $E9,$50,$95,$83,$A9,$08,$CA,$CA,$10,$EB,$60,$E9,$80,$95,$83,$60
LFE06: LDY    $AA,X   
       LDA    LF303,Y 
       AND    #$04    
       BEQ    LFE29   
       TYA            
       ASL            
       CMP    #$A0    
       BCC    LFE17   
       LDA    #$08    
LFE17: AND    #$38    
       STA    $84     
       LDA    $B1,X   
       LSR            
       BCS    LFE29   
       LSR            
       BCS    LFE29   
       TAY            
       LDA    LFE4B,Y 
       BPL    LFE2B   
LFE29: CLC            
       RTS            

LFE2B: LSR            
       ORA    $84     
       TAY            
       LDA    LF4A8,Y 
       BCC    LFE38   
       LSR            
       LSR            
       LSR            
       LSR            
LFE38: AND    #$0F    
       SEC            
       RTS            

LFE3C: .byte $BE,$1E,$5E,$8E,$4E,$1E,$8E,$60,$84
LFE45: .byte $D0,$A0
LFE47: .byte $D0,$B0
LFE49: .byte $05,$09
LFE4B: .byte $80,$00,$80,$80,$01,$80,$02,$80,$80,$03,$80,$80,$04,$05,$80,$06
       .byte $80,$07,$08,$80,$80,$09,$80,$80,$0A,$80,$0B,$80,$80,$0C,$80,$80
LFE6B: .byte $B1,$78,$C0,$63,$9C,$C0,$2D,$1B
LFE73: .byte $01,$02,$00,$80,$10,$90,$40,$C0,$50,$D0,$20,$A0,$30,$B0,$60,$E0
       .byte $70,$F0,$04,$10,$40,$08,$20,$80,$00,$04,$10,$40,$08,$20,$80,$10
       .byte $40,$20,$80,$10,$40,$20,$05,$0A,$05,$0A,$83,$83,$7B,$7B,$73,$73
       .byte $6F,$6F,$93,$93,$7F
LFEA8: .byte $68,$8C,$78,$70,$90
LFEAD: .byte $B8
LFEAE: .byte $48,$50,$80,$A4,$8C,$84,$A4,$B0,$64,$6C,$98,$C8,$A8,$9C,$CC,$A8
       .byte $80,$88,$B4,$F0,$C4,$BC,$F8,$A0,$90,$A0,$80,$C4,$B4,$88,$D8,$90
       .byte $68,$70,$90,$D8,$C0,$94,$F8,$05,$74,$84,$FC,$81,$C2,$60,$81,$42
       .byte $60,$31,$42,$20,$02
LFEE3: .byte $00,$69,$0D,$3B,$56,$14,$24
LFEEA: .byte $00,$37,$43,$00,$00,$4F,$5B,$37,$37,$00,$00,$2B,$13,$37,$4F,$37
       .byte $2B,$00,$00,$37,$00,$00,$4F,$00,$00,$00
LFF04: .byte $00,$18,$54,$00,$00,$68,$10,$04,$54,$00,$00,$04,$60,$74,$10,$74
       .byte $54,$00,$00,$24,$00,$00,$48,$00,$00,$00
LFF1E: .byte $4B,$63,$B1,$63,$C9,$E1,$E1,$E1,$1B,$93,$B1,$93,$36,$B4,$B1,$B1
       .byte $E1,$C9,$B1,$E1,$63,$4B,$E1,$63,$B1,$39,$B1,$2D,$9C,$1E,$B1,$4B
       .byte $00,$00,$00
LFF41: .byte $01,$02,$04,$08,$4F,$5F,$57,$67,$97,$8B,$57,$67,$2C,$48,$25,$41
       .byte $1E,$3A,$17,$33,$56,$56,$14,$14,$24,$24,$24,$34,$34,$34,$54,$13
       .byte $13,$0E,$08,$01
LFF65: .byte $0C,$0C,$0C,$0F,$0B
LFF6A: .byte $0B,$05,$01
LFF6D: .byte $16,$13,$02
LFF70: .byte $08,$10,$18,$20
LFF74: .byte $03,$02,$03,$06
LFF78: .byte $00
LFF79: .byte $01,$00,$FF
LFF7C: .byte $00,$02,$09,$01,$00,$E7,$F1,$A2,$83,$65,$F8,$C4,$C3,$C2,$10,$10
       .byte $10,$F7,$C4,$C4,$C4,$00,$E6,$F8,$01,$02,$03,$04,$05,$05,$05,$05
       .byte $04,$04,$03,$02,$02,$01,$00,$E4,$F7,$D5,$D7,$C9,$FF,$B9,$A9,$9A
       .byte $8A,$7A,$6A,$5A,$4A,$3A,$2A,$1A,$19,$29,$37,$45,$55,$61,$71,$00
       .byte $0E,$0D,$0C,$0B,$0A,$E0,$F6,$09,$18,$27,$36,$45,$59,$69,$79,$F4
       .byte $89,$99,$A9,$B9,$C9,$D9,$E7,$09,$19,$29,$39,$49,$59,$69,$75,$85
       .byte $95,$A5,$B5,$C5,$D5,$EE,$05,$15,$25,$35,$E2,$FC,$DE,$DD,$CC,$BB
       .byte $AA,$99,$88,$77,$66,$55,$44,$33,$22,$11
LFFF6: .byte $00,$1E,$1E,$5A,$64,$6E,$AB,$F5,$AB,$F5
