; Disassembly of roms/Imagic Selector.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Imagic Selector.bin
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
RESP1   =  $11
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
$0285   =  $0285
TIM64T  =  $0296

       ORG $1000
L1000: .byte $78,$D8,$A2,$FF,$9A,$E8,$8A,$95,$00,$E8,$D0,$FB,$86,$D3,$A9,$01
       .byte $85,$8E,$85,$C5,$85,$C6,$85,$EF,$20,$AF,$1C,$A9,$02,$85,$01,$85
       .byte $02,$85,$00,$85,$02,$85,$02,$85,$02,$A9,$00,$85,$00,$A9,$2C,$8D
       .byte $96,$02,$AD,$82,$02,$66,$8E,$B0,$04,$4A,$B0,$2F,$2A,$4A,$26,$8E
       .byte $4A,$24,$8C,$90,$04,$26,$8C,$D0,$5A,$10,$15,$A5,$FA,$29,$1F,$85
       .byte $8C,$E6,$8D,$A5,$8D,$C9,$01,$D0,$0F,$A9,$00,$85,$8D,$4C,$68,$10
       .byte $A5,$8C,$45,$FA,$29,$1F,$F0,$E3,$4C,$75,$10,$A9,$01,$85,$8E,$85
       .byte $D3,$85,$F9,$D0,$06,$A9,$00,$85,$F9,$85,$D3,$A9,$0A,$85,$F4,$85
       .byte $F0,$A9,$01,$85,$F7,$20,$AF,$1C,$A9,$00,$85,$EF,$85,$EE,$85,$EC
       .byte $85,$F6,$85,$F5,$85,$A1,$85,$A2,$85,$A3,$85,$DB,$A2,$06,$95,$D4
       .byte $CA,$10,$FB,$A5,$D3,$30,$04,$D0,$2C,$F0,$1A,$C6,$F2,$D0,$16,$C6
       .byte $F3,$D0,$12,$20,$AF,$1C,$A9,$00,$85,$EE,$85,$D3,$85,$F5,$A2,$06
       .byte $95,$D4,$CA,$10,$FB,$A2,$00,$86,$EC,$86,$BE,$86,$C4,$A5,$E0,$D0
       .byte $04,$A5,$0C,$10,$96,$A2,$0A,$A9,$1F,$95,$81,$A9,$64,$95,$80,$CA
       .byte $CA,$10,$F4,$A5,$EF,$F0,$0F,$A2,$0A,$A9,$6E,$95,$80,$18,$69,$0A
       .byte $CA,$CA,$10,$F7,$30,$49,$A5,$F9,$D0,$0C,$A5,$8D,$18,$69,$01,$20
       .byte $E8,$1E,$85,$80,$D0,$39,$A2,$00,$86,$9E,$A2,$02,$A0,$08,$B5,$A1
       .byte $4A,$4A,$4A,$4A,$20,$E8,$1E,$D0,$04,$A5,$9E,$F0,$07,$E6,$9E,$A5
       .byte $8F,$99,$82,$00,$B5,$A1,$29,$0F,$20,$E8,$1E,$D0,$04,$A5,$9E,$F0
       .byte $07,$E6,$9E,$A5,$8F,$99,$80,$00,$CA,$88,$88,$88,$88,$10,$CF,$A2
       .byte $06,$86,$F1,$B5,$D4,$F0,$36,$C9,$05,$F0,$0A,$A5,$FA,$29,$07,$D0
       .byte $10,$F6,$D4,$10,$0C,$C6,$F1,$10,$08,$A5,$F8,$D0,$04,$A9,$FF,$85
       .byte $D3,$B4,$D4,$88,$E0,$06,$D0,$0C,$B9,$52,$1E,$85,$9B,$B9,$57,$1E
       .byte $85,$9C,$D0,$22,$B9,$4D,$1E,$85,$91,$95,$95,$D0,$19,$BC,$38,$1E
       .byte $A5,$FA,$3D,$46,$1E,$D0,$03,$BC,$3F,$1E,$84,$91,$94,$95,$E0,$06
       .byte $D0,$04,$A9,$08,$85,$9C,$CA,$10,$AA,$A9,$1D,$85,$92,$85,$94,$A2
       .byte $02,$A0,$98,$A5,$D3,$30,$0A,$A0,$80,$B5,$DD,$F0,$04,$D6,$DD,$A0
       .byte $88,$94,$93,$CA,$CA,$10,$EA,$A9,$05,$85,$0A,$A9,$30,$85,$0D,$A9
       .byte $00,$85,$08,$85,$0E,$85,$0F,$A9,$03,$85,$A9,$A6,$A9,$B5,$A4,$38
       .byte $E9,$08,$C9,$F7,$90,$02,$A9,$00,$A2,$00,$20,$82,$1E,$A5,$A9,$0A
       .byte $AA,$A5,$8F,$95,$AA,$A5,$90,$95,$AB,$A6,$A9,$B5,$A4,$A2,$01,$20
       .byte $82,$1E,$A5,$A9,$0A,$AA,$A5,$8F,$95,$B2,$A5,$90,$95,$B3,$C6,$A9
       .byte $10,$C9,$A5,$BE,$F0,$04,$A5,$A4,$85,$BE,$A2,$04,$B5,$BA,$20,$C2
       .byte $1F,$CA,$E0,$02,$B0,$F6,$85,$02,$85,$2A,$85,$02,$85,$2B,$A5,$FA
       .byte $29,$07,$D0,$0C,$A5,$C5,$29,$06,$D0,$02,$A9,$02,$49,$A0,$85,$A0
       .byte $A0,$00,$A5,$E0,$F0,$08,$29,$01,$F0,$02,$A0,$0F,$C6,$E0,$84,$09
       .byte $E6,$FA,$D0,$08,$E6,$FB,$D0,$04,$A9,$F3,$85,$FC,$2C,$85,$02,$10
       .byte $FB,$85,$02,$A9,$00,$85,$2C,$85,$01,$85,$04,$85,$05,$A5,$D3,$30
       .byte $07,$A5,$DB,$30,$06,$4C,$02,$14,$4C,$6E,$13,$A5,$FA,$29,$07,$D0
       .byte $20,$E6,$DB,$A5,$DB,$C9,$85,$90,$18,$A2,$03,$A9,$07,$95,$C7,$A9
       .byte $00,$95,$A4,$CA,$10,$F5,$85,$BE,$85,$DB,$85,$BC,$85,$BD,$4C,$04
       .byte $14,$A5,$DB,$29,$07,$AA,$85,$02,$BD,$80,$1C,$85,$AA,$BD,$85,$1C
       .byte $85,$AC,$A9,$1C,$85,$AB,$85,$AD,$BD,$A0,$1C,$85,$AE,$BD,$A5,$1C
       .byte $85,$B0,$BD,$AA,$1C,$85,$B2,$A4,$DC,$B9,$F8,$1F,$38,$FD,$99,$1C
       .byte $85,$B4,$A9,$00,$85,$0D,$A9,$08,$85,$0C,$85,$02,$A9,$3E,$E0,$04
       .byte $D0,$08,$A5,$FA,$29,$0E,$49,$0F,$09,$30,$85,$06,$85,$07,$85,$08
       .byte $85,$02,$A5,$C0,$18,$7D,$8A,$1C,$85,$BF,$18,$7D,$8F,$1C,$85,$BD
       .byte $38,$FD,$94,$1C,$85,$BE,$38,$FD,$9B,$1C,$85,$BC,$A2,$04,$A5,$C0
       .byte $20,$C2,$1F,$CA,$A5,$BF,$20,$C2,$1F,$CA,$A5,$BE,$20,$C2,$1F,$CA
       .byte $A5,$BD,$20,$C2,$1F,$CA,$A5,$BC,$20,$C2,$1F,$85,$02,$85,$2A,$85
       .byte $02,$A2,$C0,$85,$02,$8A,$38,$E5,$B4,$A8,$25,$AE,$D0,$22,$98,$25
       .byte $B0,$F0,$04,$98,$45,$B2,$A8,$B1,$AC,$85,$1D,$85,$1E,$0A,$85,$1F
       .byte $B1,$AA,$CA,$E0,$6B,$F0,$10,$85,$02,$85,$1B,$85,$1C,$4C,$25,$13
       .byte $CA,$E0,$6B,$D0,$CE,$85,$02,$85,$02,$A9,$00,$85,$1B,$85,$1C,$85
       .byte $1D,$85,$1E,$85,$1F,$A5,$E4,$85,$08,$85,$02,$4C,$74,$15,$A0,$AA
       .byte $A5,$FA,$29,$02,$F0,$02,$A0,$B2,$84,$AA,$85,$02,$A9,$1F,$85,$AB
       .byte $A9,$DE,$85,$06,$A9,$00,$85,$E6,$85,$E7,$85,$E8,$A5,$FA,$29,$0F
       .byte $D0,$10,$A5,$E3,$F0,$02,$C6,$E3,$A5,$E3,$A8,$B9,$BA,$1F,$85,$E4
       .byte $85,$E5,$85,$02,$A5,$E2,$D0,$22,$A5,$A1,$A5,$A1,$A5,$A1,$A5,$A1
       .byte $A5,$A1,$A5,$A1,$A5,$A1,$A9,$3F,$85,$E9,$85,$F3,$A9,$8F,$85,$E0
       .byte $85,$EB,$A9,$02,$85,$ED,$A9,$4B,$85,$E1,$C9,$80,$B0,$02,$E6,$E2
       .byte $A5,$E1,$C9,$D2,$B0,$02,$E6,$E1,$A2,$00,$85,$02,$86,$0D,$A5,$E2
       .byte $20,$C2,$1F,$85,$02,$85,$2A,$85,$02,$A2,$C0,$85,$02,$8A,$38,$E5
       .byte $E1,$A8,$29,$F8,$D0,$04,$B1,$AA,$85,$1B,$CA,$E0,$61,$D0,$EC,$4C
       .byte $57,$13,$85,$02,$85,$02,$A9,$1D,$85,$90,$85,$9F,$A9,$C0,$85,$C3
       .byte $A9,$03,$85,$A9,$A2,$1E,$9A,$A5,$A9,$0A,$AA,$B4,$AA,$B5,$AB,$C6
       .byte $C3,$A6,$C3,$85,$02,$E4,$BB,$08,$EC,$BA,$00,$08,$88,$10,$FD,$85
       .byte $20,$85,$10,$85,$02,$68,$68,$C6,$C3,$A6,$C3,$E4,$BB,$08,$E4,$BA
       .byte $08,$68,$68,$A5,$A9,$0A,$AA,$B4,$B2,$B5,$B3,$C6,$C3,$A6,$C3,$85
       .byte $02,$E4,$BB,$08,$EC,$BA,$00,$08,$88,$10,$FD,$85,$21,$85,$11,$85
       .byte $02,$85,$2A,$68,$68,$C6,$C3,$A6,$C3,$E4,$BB,$08,$E4,$BA,$08,$68
       .byte $68,$A2,$FF,$9A,$C6,$C3,$20,$B1,$1E,$A9,$98,$85,$8F,$85,$9E,$A5
       .byte $C7,$10,$0B,$29,$07,$C5,$A9,$D0,$10,$A5,$CF,$4C,$D9,$14,$29,$07
       .byte $C5,$A9,$D0,$05,$A5,$CF,$4C,$EC,$14,$A5,$C8,$10,$0B,$29,$07,$C5
       .byte $A9,$D0,$10,$A5,$D0,$4C,$D9,$14,$29,$07,$C5,$A9,$D0,$05,$A5,$D0
       .byte $4C,$EC,$14,$A5,$C9,$10,$0B,$29,$07,$C5,$A9,$D0,$10,$A5,$D1,$4C
       .byte $D9,$14,$29,$07,$C5,$A9,$D0,$05,$A5,$D1,$4C,$EC,$14,$A5,$CA,$10
       .byte $13,$29,$07,$C5,$A9,$D0,$1E,$A5,$D2,$85,$9E,$18,$69,$08,$85,$8F
       .byte $A0,$08,$D0,$11,$29,$07,$C5,$A9,$D0,$0B,$A5,$D2,$85,$8F,$18,$69
       .byte $08,$85,$9E,$A0,$00,$84,$0B,$84,$0C,$A2,$1E,$9A,$A6,$C3,$A0,$07
       .byte $AD,$1F,$1E,$85,$02,$85,$06,$85,$07,$B1,$8F,$85,$1B,$B1,$9E,$85
       .byte $1C,$E4,$BB,$08,$E4,$BA,$08,$68,$68,$B9,$17,$1E,$CA,$88,$10,$E3
       .byte $85,$02,$A9,$00,$85,$1B,$85,$1C,$E4,$BB,$08,$E4,$BA,$08,$68,$68
       .byte $86,$C3,$C6,$A9,$30,$03,$4C,$14,$14,$85,$02,$C6,$C3,$A6,$C3,$E4
       .byte $BB,$08,$E4,$BA,$08,$68,$68,$A9,$10,$85,$0A,$A0,$02,$A5,$D3,$F0
       .byte $04,$A5,$BE,$D0,$01,$A8,$A5,$FA,$29,$01,$D0,$01,$A8,$84,$1F,$A9
       .byte $00,$85,$0D,$A5,$E4,$25,$FC,$85,$08,$C6,$C3,$A2,$FF,$9A,$20,$B1
       .byte $1E,$20,$B1,$1E,$A2,$1E,$9A,$A9,$00,$85,$04,$85,$05,$85,$1D,$85
       .byte $1E,$85,$0B,$A9,$14,$85,$0A,$A0,$08,$84,$0C,$A6,$C3,$85,$02,$88
       .byte $10,$FD,$85,$10,$E4,$BB,$08,$E4,$BA,$08,$68,$68,$CA,$A0,$0D,$85
       .byte $02,$88,$10,$FD,$85,$11,$E4,$BB,$08,$E4,$BA,$08,$68,$68,$CA,$A9
       .byte $60,$85,$20,$A9,$10,$85,$21,$85,$02,$85,$2A,$E4,$BB,$08,$E4,$BA
       .byte $08,$68,$68,$CA,$A0,$07,$AD,$2F,$1E,$85,$06,$AD,$27,$1E,$85,$02
       .byte $85,$07,$B1,$91,$85,$1B,$B1,$93,$85,$1C,$E4,$BB,$08,$E4,$BA,$08
       .byte $68,$68,$B9,$27,$1E,$85,$06,$B9,$1F,$1E,$CA,$88,$10,$E0,$85,$02
       .byte $A9,$00,$85,$1B,$85,$1C,$E4,$BB,$08,$E4,$BA,$08,$68,$68,$A9,$00
       .byte $85,$0C,$A5,$E6,$85,$0F,$A0,$08,$A2,$FF,$9A,$85,$02,$85,$10,$88
       .byte $10,$FD,$85,$11,$A9,$00,$85,$1D,$85,$1E,$A9,$30,$85,$20,$A9,$50
       .byte $85,$21,$A5,$95,$85,$91,$A5,$96,$85,$93,$85,$02,$85,$2A,$A0,$07
       .byte $AE,$37,$1E,$AD,$27,$1E,$85,$02,$85,$06,$86,$07,$B1,$91,$85,$1B
       .byte $B1,$93,$85,$1C,$B9,$1F,$1E,$BE,$2F,$1E,$88,$10,$E9,$85,$02,$A5
       .byte $A0,$85,$09,$A9,$00,$85,$1B,$85,$1C,$A5,$E7,$85,$0D,$A5,$E8,$85
       .byte $0F,$A5,$A0,$49,$04,$A0,$06,$85,$02,$85,$09,$88,$10,$FD,$85,$10
       .byte $A5,$A0,$A0,$0C,$85,$02,$85,$09,$88,$10,$FD,$85,$11,$A9,$D0,$85
       .byte $20,$A9,$50,$85,$21,$A9,$A0,$85,$09,$A5,$97,$85,$91,$A5,$98,$85
       .byte $93,$85,$02,$85,$2A,$A5,$E5,$25,$FC,$85,$08,$A9,$BC,$85,$06,$A9
       .byte $7E,$85,$07,$A0,$07,$85,$02,$B1,$91,$85,$1B,$B1,$93,$85,$1C,$88
       .byte $10,$F3,$85,$02,$A9,$00,$85,$1B,$85,$1C,$A9,$F8,$85,$0F,$A9,$08
       .byte $85,$0C,$A0,$05,$85,$02,$88,$10,$FD,$85,$10,$85,$11,$A9,$B0,$85
       .byte $20,$A9,$C0,$85,$21,$A5,$99,$85,$91,$85,$02,$85,$2A,$A0,$07,$85
       .byte $02,$B1,$91,$85,$1B,$85,$1C,$B9,$00,$1E,$85,$06,$85,$07,$88,$10
       .byte $EE,$85,$02,$A9,$00,$85,$1B,$85,$1C,$A9,$70,$85,$0D,$A9,$07,$85
       .byte $0E,$A9,$FB,$85,$0F,$A0,$09,$85,$02,$88,$10,$FD,$85,$10,$85,$11
       .byte $A9,$D0,$85,$20,$A9,$E0,$85,$21,$A5,$9A,$85,$91,$85,$02,$85,$2A
       .byte $A0,$07,$85,$02,$C0,$03,$B0,$0C,$A9,$F0,$85,$0D,$A9,$0F,$85,$0E
       .byte $A9,$FF,$85,$0F,$B1,$91,$85,$1B,$85,$1C,$B9,$08,$1E,$85,$06,$85
       .byte $07,$88,$10,$DE,$85,$02,$A9,$00,$85,$1B,$85,$1C,$85,$0C,$A0,$04
       .byte $85,$02,$88,$10,$FD,$85,$10,$85,$11,$A9,$20,$85,$20,$A9,$30,$85
       .byte $21,$A5,$9B,$85,$91,$A5,$9C,$85,$93,$85,$02,$85,$2A,$A0,$07,$85
       .byte $02,$B1,$91,$85,$1B,$B1,$93,$85,$1C,$B9,$10,$1E,$85,$06,$85,$07
       .byte $88,$10,$EC,$85,$02,$85,$2B,$A9,$FF,$85,$0E,$A9,$00,$85,$1B,$85
       .byte $1C,$85,$1D,$85,$1E,$85,$1F,$A9,$00,$85,$09,$A0,$06,$85,$02,$88
       .byte $10,$FB,$A9,$00,$85,$0A,$A9,$3E,$25,$FC,$85,$07,$85,$06,$A9,$03
       .byte $85,$04,$85,$05,$A0,$06,$85,$02,$88,$10,$FD,$EA,$85,$10,$85,$11
       .byte $A9,$00,$85,$21,$A9,$F0,$85,$20,$A9,$01,$85,$25,$85,$26,$85,$02
       .byte $85,$2A,$A9,$C2,$25,$FC,$85,$08,$A9,$09,$85,$91,$A4,$91,$B1,$8A
       .byte $85,$1B,$85,$02,$B1,$88,$85,$1C,$B1,$86,$85,$1B,$B1,$84,$85,$93
       .byte $B1,$82,$AA,$B1,$80,$A8,$A5,$93,$85,$1C,$86,$1B,$84,$1C,$84,$1B

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
L1805: STA    VSYNC,X 
       TXS            
       INX            
       BNE    L1805   
       LDA    #$01    
       STA    CTRLPF  
       JSR    L1B88   
L1812: LDX    #$02    
       STX    VBLANK  
       STX    WSYNC   
       STX    VSYNC   
       STX    WSYNC   
       STX    WSYNC   
       STX    WSYNC   
       DEX            
       STX    VSYNC   
       LDA    #$00    
       STA    VBLANK  
       LDA    #$2C    
       STA    TIM64T  
       INC    $80     
       BNE    L1832   
       INC    $81     
L1832: LDA    $A1     
       CMP    #$06    
       BEQ    L1889   
       LDA    $80     
       AND    #$01    
       BNE    L1873   
       LDA    $AF     
       CMP    #$FF    
       BEQ    L184A   
       SEC            
       ROR    $AF     
       JMP    L1873   
L184A: LDA    #$00    
       STA    $AF     
       LDA    $A1     
       ASL            
       TAX            
       ASL            
       ASL            
       ASL            
       STA    $A2,X   
       LDA    #$1E    
       STA    $A3,X   
       INC    $A1     
       LDA    $A1     
       CMP    #$06    
       BNE    L1869   
       LDA    #$02    
       STA    $B0     
       BNE    L1889   
L1869: ASL            
       TAX            
       LDA    #$91    
       STA    $A2,X   
       LDA    #$00    
       STA    $A3,X   
L1873: LDA    $A1     
       ASL            
       ASL            
       ASL            
       ASL            
       LDX    #$00    
       TAY            
L187C: LDA    L1E00,Y 
       AND    $AF     
       STA    $91,X   
       INY            
       INX            
       CPX    #$10    
       BNE    L187C   
L1889: LDA    $B0     
       BEQ    L18BA   
       LDA    $B0     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L1BFD,Y 
       STA    $B1     
       INC    $B0     
       BNE    L18A1   
       LDA    #$01    
       STA    $AE     
L18A1: LDY    #$00    
       LDA    $B0     
       AND    #$04    
       BEQ    L18AB   
       LDY    #$70    
L18AB: TYA            
       LDY    #$00    
L18AE: STA.wy $00A2,Y 
       CLC            
       ADC    #$10    
       INY            
       INY            
       CPY    #$0C    
       BNE    L18AE   
L18BA: LDA    $AE     
       BEQ    L1915   
       LDA    $80     
       AND    #$07    
       BNE    L1915   
       INC    $AE     
       LDA    $AE     
       CMP    #$04    
       BNE    L18D2   
       LDA    #$88    
       STA    $B2     
       BNE    L1915   
L18D2: CMP    #$0C    
       BNE    L18DC   
       LDA    #$44    
       STA    $B3     
       BNE    L1915   
L18DC: CMP    #$14    
       BNE    L18E6   
       LDA    #$A8    
       STA    $B5     
       BNE    L1915   
L18E6: CMP    #$1C    
       BNE    L18F0   
       LDA    #$C8    
       STA    $B6     
       BNE    L1915   
L18F0: CMP    #$24    
       BNE    L18FA   
       LDA    #$38    
       STA    $B4     
       BNE    L1915   
L18FA: CMP    #$3E    
       BNE    L1915   
       LDA    #$00    
       STA    $A1     
       STA    $AE     
       STA    $AF     
       STA    $B0     
       STA    $B2     
       STA    $B3     
       STA    $B4     
       STA    $B6     
       STA    $B5     
       JSR    L1B88   
L1915: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       STA    WSYNC   
L191F: DEY            
       BPL    L191F   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
L192F: BIT    $0285   
       BPL    L192F   
       STA    WSYNC   
       LDA    #$4C    
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$08    
       STA    COLUBK  
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDY    #$08    
L1948: STA    WSYNC   
       DEY            
       BPL    L1948   
       LDA    #$42    
       STA    COLUBK  
       LDY    #$03    
L1953: STA    WSYNC   
       DEY            
       BPL    L1953   
       STA    WSYNC   
       JSR    L1BA3   
       JSR    L1B53   
       LDY    #$04    
L1962: STA    WSYNC   
       DEY            
       BPL    L1962   
       LDA    #$08    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$36    
       STA    COLUBK  
       STA    WSYNC   
       JSR    L1BCB   
       LDA    #$3C    
       STA    COLUP0  
       STA    COLUP1  
       JSR    L1B53   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$08    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$1A    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$08    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$C2    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$08    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$82    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$08    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$62    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$08    
       STA    COLUBK  
       STA    COLUPF  
       LDA    #$10    
       STA    PF0     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    $B1     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDX    #$0B    
L19EB: LDA    $A2,X   
       STA    $85,X   
       DEX            
       BPL    L19EB   
       STA    WSYNC   
       LDA    #$0F    
       STA    $83     
L19F8: LDY    $83     
       LDA    ($85),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($87),Y 
       STA    GRP1    
       LDA    ($89),Y 
       STA    GRP0    
       LDA    ($8B),Y 
       STA    $84     
       LDA    ($8D),Y 
       TAX            
       LDA    ($8F),Y 
       TAY            
       LDA    $84     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $83     
       BPL    L19F8   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       LDA    #$1F    
       JSR    L1BBE   
       LDA    #$90    
       STA    $85     
       LDA    #$98    
       STA    $87     
       LDA    #$A0    
       STA    $89     
       LDA    #$A8    
       STA    $8B     
       LDA    #$B0    
       STA    $8D     
       LDA    #$B8    
       STA    $8F     
       LDA    $B2     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JSR    L1B53   
       LDA    #$C0    
       STA    $85     
       LDA    #$C8    
       STA    $87     
       LDA    #$D0    
       STA    $89     
       LDA    #$D8    
       STA    $8B     
       LDA    #$E0    
       STA    $8D     
       LDA    #$E8    
       STA    $8F     
       LDA    $B3     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JSR    L1B53   
       JSR    L1BA3   
       LDA    #$1D    
       JSR    L1BBE   
       JSR    L1BCB   
       LDA    $B5     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JSR    L1B53   
       JSR    L1BE4   
       LDA    $B6     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JSR    L1B53   
       LDA    $B4     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JSR    L1BA3   
       STA    WSYNC   
       JSR    L1B53   
       LDY    #$09    
L1AC3: STA    WSYNC   
       DEY            
       BNE    L1AC3   
       LDA    #$08    
       STA    COLUBK  
       LDA    #$1F    
       JSR    L1BBE   
       LDA    #$00    
       STA    PF0     
       JSR    L1BE4   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       JSR    L1B53   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$42    
       STA    COLUPF  
       LDA    #$FF    
       STA    PF2     
       LDA    #$FF    
       STA    PF1     
       LDY    #$05    
L1AF7: STA    WSYNC   
       DEY            
       BNE    L1AF7   
       LDA    #$08    
       STA    COLUPF  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$7F    
       STA    PF1     
       LDA    #$36    
       STA    COLUPF  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$08    
       STA    COLUPF  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$1A    
       STA    COLUPF  
       LDA    #$3F    
       STA    PF1     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$08    
       STA    COLUPF  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$C2    
       STA    COLUPF  
       LDA    #$1F    
       STA    PF1     
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    #$23    
       STA    TIM64T  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
L1B4B: BIT    $0285   
       BPL    L1B4B   
       JMP    L1812   
L1B53: LDA    #$07    
       STA    $83     
L1B57: LDY    $83     
       LDA    ($85),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($87),Y 
       STA    GRP1    
       LDA    ($89),Y 
       STA    GRP0    
       LDA    ($8B),Y 
       STA    $84     
       LDA    ($8D),Y 
       TAX            
       LDA    ($8F),Y 
       TAY            
       LDA    $84     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $83     
       BPL    L1B57   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

L1B88: LDA    #$60    
       LDY    #$1E    
       LDX    #$0A    
L1B8E: STY    $A3,X   
       STA    $A2,X   
       DEX            
       DEX            
       BPL    L1B8E   
       LDA    #$91    
       STA    $A2     
       LDA    #$00    
       STA    $A3     
       LDA    #$2C    
       STA    $B1     
       RTS            

L1BA3: LDA    #$00    
       STA    $85     
       LDA    #$08    
       STA    $87     
       LDA    #$10    
       STA    $89     
       LDA    #$18    
       STA    $8B     
       LDA    #$20    
       STA    $8D     
       LDA    #$28    
       STA    $8F     
       RTS            

L1BBC: .byte $A9,$1F
L1BBE: STA    $86     
       STA    $88     
       STA    $8A     
       STA    $8C     
       STA    $8E     
       STA    $90     
       RTS            

L1BCB: LDA    #$30    
       STA    $85     
       LDA    #$38    
       STA    $87     
       LDA    #$40    
       STA    $89     
       LDA    #$48    
       STA    $8B     
       LDA    #$50    
       STA    $8D     
       LDA    #$58    
       STA    $8F     
       RTS            

L1BE4: LDA    #$60    
       STA    $85     
       LDA    #$68    
       STA    $87     
       LDA    #$70    
       STA    $89     
       LDA    #$78    
       STA    $8B     
       LDA    #$80    
       STA    $8D     
       LDA    #$88    
       STA    $8F     
       RTS            

L1BFD: .byte $2C,$2A,$28,$38,$48,$58,$68,$78,$88,$28,$2A,$2C,$2C,$2F,$2F,$2C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$30,$30,$30,$32,$37,$37,$3D,$18,$60,$62,$62,$62,$63
       .byte $63,$E2,$C0,$00,$5C,$50,$D0,$D8,$50,$5D,$00,$00,$91,$9B,$9F,$95
       .byte $91,$D1,$00,$00,$7A,$4A,$4A,$4B,$4A,$7B,$00,$00,$52,$D6,$9C,$DC
       .byte $56,$D2,$00,$7E,$E0,$C0,$C0,$C0,$C0,$E0,$7E,$7E,$E3,$C1,$C1,$C1
       .byte $C1,$E3,$7E,$7E,$60,$60,$60,$60,$60,$60,$60,$FC,$C1,$C1,$C1,$F9
       .byte $C1,$C1,$FC,$FE,$C0,$80,$80,$80,$80,$C0,$FE,$7E,$E3,$C1,$C1,$C1
       .byte $C1,$E3,$7E,$84,$84,$84,$E7,$B4,$94,$B4,$E3,$A5,$AD,$A9,$B9,$AD
       .byte $A5,$AD,$39,$2E,$68,$48,$CE,$C8,$48,$68,$2E,$93,$B2,$A2,$E2,$B3
       .byte $92,$B2,$E3,$92,$D6,$54,$DC,$D6,$52,$D6,$9C,$ED,$A4,$A4,$A4,$AC
       .byte $A8,$A8,$EC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00
L1E00: .byte $07,$1F,$38,$73,$63,$63,$E3,$C3,$C3,$C3,$63,$63,$73,$38,$1F,$07
       .byte $FF,$FF,$00,$61,$61,$61,$6D,$6D,$7F,$7F,$7F,$73,$61,$00,$FF,$FF
       .byte $FF,$FF,$00,$B3,$B3,$B3,$B3,$BF,$BF,$B3,$92,$9E,$8C,$00,$FF,$FF
       .byte $FF,$FF,$00,$3E,$67,$63,$63,$67,$67,$60,$63,$63,$3E,$00,$FF,$FF
       .byte $FF,$FF,$00,$63,$6F,$6C,$6C,$6C,$6C,$6C,$6C,$67,$63,$00,$FF,$FF
       .byte $E0,$F8,$1C,$8E,$C6,$C6,$03,$03,$03,$03,$C6,$C6,$8E,$1C,$F8,$E0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $07,$1F,$3F,$7C,$7C,$7C,$FC,$FC,$FC,$FC,$7C,$7C,$7C,$3F,$1F,$07
       .byte $FF,$FF,$FF,$9E,$9E,$9E,$92,$92,$80,$80,$80,$8C,$9E,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$4C,$4C,$4C,$4C,$40,$40,$4C,$6D,$61,$73,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$C1,$98,$9C,$9C,$98,$98,$9F,$9C,$9C,$C1,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$9C,$90,$93,$93,$93,$93,$93,$93,$98,$9C,$FF,$FF,$FF
       .byte $E0,$F8,$FC,$7E,$3E,$3E,$FF,$FF,$FF,$FF,$3E,$3E,$7E,$FC,$F8,$E0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $83,$82,$82,$F2,$9A,$8A,$9A,$F2,$A2,$22,$22,$3E,$22,$22,$36,$1C
       .byte $20,$20,$20,$70,$D8,$88,$88,$88,$10,$11,$11,$39,$6D,$45,$45,$44
       .byte $E3,$B6,$14,$14,$14,$14,$B4,$E4,$92,$D2,$52,$5E,$53,$51,$53,$5E
       .byte $10,$10,$10,$1E,$10,$10,$10,$1F,$44,$44,$44,$7C,$45,$45,$6D,$39
       .byte $43,$E6,$A4,$A4,$B4,$14,$16,$13,$92,$D2,$52,$5E,$53,$51,$D3,$9E
       .byte $44,$44,$44,$44,$44,$44,$44,$5F,$78,$40,$40,$70,$40,$40,$40,$78
       .byte $22,$72,$52,$52,$DA,$8A,$8A,$8A,$E7,$B4,$94,$97,$94,$94,$B4,$E7
       .byte $9C,$36,$22,$22,$22,$22,$36,$9C,$1E,$32,$22,$22,$26,$20,$32,$1E
       .byte $8A,$8A,$8A,$FA,$8A,$8B,$DB,$72,$2F,$28,$28,$2E,$A8,$E8,$68,$2F
       .byte $10,$10,$1F,$08,$08,$05,$07,$02,$5E,$5E,$D0,$90,$90,$1E,$00,$0F
       .byte $91,$91,$91,$93,$92,$96,$84,$FC,$17,$10,$10,$97,$94,$D7,$40,$7F
       .byte $AF,$A9,$A9,$A9,$29,$AF,$00,$E0,$48,$48,$58,$78,$68,$48,$00,$00
       .byte $18,$18,$1F,$0C,$06,$06,$03,$01,$18,$18,$F8,$30,$60,$60,$C7,$87
       .byte $C6,$C6,$C7,$C3,$C1,$C1,$F8,$F8,$06,$06,$FE,$0C,$98,$98,$F0,$60
       .byte $61,$63,$66,$7E,$63,$61,$63,$7E,$98,$18,$18,$18,$18,$98,$18,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$00,$18,$00,$18
