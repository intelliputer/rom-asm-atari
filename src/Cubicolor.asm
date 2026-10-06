; Disassembly of roms/Cubicolor.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Cubicolor.bin
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
CTRLPF  =  $0A
REFP1   =  $0C
PF0     =  $0D
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
SWCHA   =  $0280
SWCHB   =  $0282
$0285   =  $0285
TIM64T  =  $0296

       ORG $1000
L1000: .byte $78,$D8,$A2,$FF,$9A,$E8,$8A,$95,$00,$E8,$D0,$FB,$A9,$01,$85,$A8
       .byte $85,$A7,$A9,$FF,$85,$82,$A9,$50,$85,$AC,$20,$AE,$19,$A9,$1D,$85
       .byte $E4,$A9,$9E,$85,$E3,$A9,$AF,$85,$E5,$A9,$1D,$85,$E6,$A9,$02,$85
       .byte $01,$85,$02,$85,$00,$85,$02,$85,$02,$85,$02,$A9,$00,$85,$00,$A2
       .byte $2C,$8E,$96,$02,$85,$01,$AD,$82,$02,$66,$A8,$B0,$04,$4A,$B0,$2F
       .byte $2A,$4A,$26,$A8,$4A,$24,$A9,$90,$04,$26,$A9,$D0,$52,$10,$15,$A5
       .byte $80,$29,$1F,$85,$A9,$E6,$AA,$A5,$AA,$C9,$09,$D0,$0F,$A9,$00,$85
       .byte $AA,$4C,$7C,$10,$A5,$A9,$45,$80,$29,$1F,$F0,$E3,$4C,$90,$10,$20
       .byte $AE,$19,$A9,$01,$85,$A8,$85,$82,$85,$B2,$A9,$03,$85,$9D,$D0,$1F
       .byte $A9,$00,$85,$82,$A2,$0A,$A9,$78,$95,$83,$CA,$10,$FB,$A5,$AA,$18
       .byte $69,$01,$0A,$0A,$85,$BA,$0A,$18,$65,$BA,$85,$87,$20,$AE,$19,$A2
       .byte $0A,$A9,$1D,$95,$84,$CA,$CA,$10,$FA,$A5,$82,$F0,$43,$A2,$02,$A0
       .byte $0A,$B5,$A4,$29,$0F,$0A,$0A,$85,$BA,$0A,$18,$65,$BA,$99,$81,$00
       .byte $B5,$A4,$29,$F0,$4A,$85,$BA,$4A,$18,$65,$BA,$99,$83,$00,$88,$88
       .byte $88,$88,$CA,$10,$DC,$A5,$82,$10,$17,$A2,$0A,$A9,$1E,$95,$84,$CA
       .byte $CA,$10,$F8,$A2,$0A,$A9,$00,$95,$83,$18,$69,$0C,$CA,$CA,$10,$F7
       .byte $A9,$1F,$85,$90,$85,$92,$85,$94,$85,$96,$85,$98,$85,$9A,$A9,$3F
       .byte $A6,$A0,$30,$02,$A9,$07,$25,$80,$D0,$31,$A5,$9D,$30,$1A,$E6,$A0
       .byte $A6,$A0,$30,$18,$D0,$0C,$A9,$00,$85,$B2,$A5,$9B,$45,$9C,$29,$01
       .byte $85,$9F,$E0,$20,$90,$18,$86,$B2,$A2,$F4,$86,$A0,$8A,$18,$69,$0C
       .byte $A8,$B9,$00,$1C,$85,$93,$B9,$0C,$1C,$85,$95,$4C,$85,$11,$E0,$08
       .byte $F0,$08,$E0,$10,$F0,$04,$E0,$18,$D0,$06,$A5,$9F,$49,$01,$85,$9F
       .byte $8A,$29,$07,$A8,$C9,$05,$D0,$07,$20,$EB,$18,$A9,$12,$85,$B5,$A5
       .byte $9F,$D0,$09,$A9,$31,$85,$93,$B9,$18,$1C,$D0,$07,$B9,$18,$1C,$85
       .byte $93,$A9,$31,$85,$95,$A4,$9B,$8A,$30,$06,$29,$07,$C9,$04,$F0,$18
       .byte $B9,$20,$1C,$85,$99,$B9,$32,$1C,$85,$97,$A4,$9C,$B9,$32,$1C,$85
       .byte $91,$B9,$20,$1C,$85,$8F,$D0,$26,$A5,$9F,$D0,$0C,$B9,$29,$1C,$85
       .byte $99,$B9,$3B,$1C,$85,$97,$D0,$E2,$B9,$20,$1C,$85,$99,$B9,$32,$1C
       .byte $85,$97,$A4,$9C,$B9,$3B,$1C,$85,$91,$B9,$29,$1C,$85,$8F,$A9,$1E
       .byte $85,$A2,$A5,$80,$29,$03,$D0,$11,$E6,$A3,$A6,$A3,$E0,$0A,$90,$04
       .byte $A2,$00,$86,$A3,$BD,$84,$1D,$85,$A1,$A9,$1B,$85,$DA,$A4,$E1,$A5
       .byte $80,$29,$03,$D0,$07,$88,$10,$02,$A0,$02,$84,$E1,$B1,$E3,$85,$D9
       .byte $B1,$E5,$85,$E2,$A5,$82,$C9,$01,$F0,$03,$4C,$B0,$12,$A5,$A0,$10
       .byte $F9,$AD,$80,$02,$29,$40,$D0,$08,$A5,$AC,$C9,$06,$90,$11,$C6,$AC
       .byte $AD,$80,$02,$29,$80,$D0,$08,$A5,$AC,$C9,$82,$B0,$02,$E6,$AC,$A5
       .byte $0C,$10,$04,$85,$E8,$30,$22,$C5,$E8,$F0,$1E,$85,$E8,$A5,$AE,$C9
       .byte $E0,$D0,$16,$A5,$9D,$30,$12,$20,$EB,$18,$A5,$AC,$18,$69,$0D,$85
       .byte $AD,$A9,$05,$85,$AE,$A9,$1F,$85,$B3,$A2,$02,$E0,$00,$D0,$04,$A5
       .byte $E0,$F0,$27,$E0,$01,$D0,$06,$A5,$EA,$C9,$08,$90,$1D,$B5,$D5,$F0
       .byte $0A,$D6,$D1,$B5,$D1,$C9,$09,$B0,$11,$90,$09,$F6,$D1,$B5,$D1,$DD
       .byte $54,$1C,$90,$06,$B5,$D5,$49,$08,$95,$D5,$CA,$10,$CE,$A5,$80,$29
       .byte $1F,$D0,$1D,$C6,$E7,$10,$04,$A9,$07,$85,$E7,$A6,$E7,$BD,$6F,$1C
       .byte $85,$D4,$8A,$29,$01,$F0,$02,$A9,$08,$85,$D8,$BD,$77,$1C,$85,$DD
       .byte $A5,$AE,$C9,$E0,$F0,$0F,$A5,$AE,$18,$69,$05,$85,$AE,$C9,$96,$90
       .byte $04,$A9,$E0,$85,$AE,$A9,$1A,$85,$C4,$85,$C6,$85,$C8,$85,$CA,$A0
       .byte $20,$A5,$E0,$6A,$90,$02,$A0,$10,$A6,$D5,$F0,$04,$84,$C3,$D0,$02
       .byte $84,$C9,$A0,$20,$6A,$90,$02,$A0,$18,$A6,$D5,$F0,$04,$84,$C5,$D0
       .byte $02,$84,$C7,$A0,$20,$6A,$90,$02,$A0,$18,$A6,$D5,$F0,$04,$84,$C7
       .byte $D0,$02,$84,$C5,$A0,$00,$A5,$80,$29,$08,$D0,$02,$A0,$08,$A6,$D5
       .byte $F0,$04,$84,$C9,$D0,$02,$84,$C3,$A5,$AD,$20,$DB,$19,$85,$24,$EA
       .byte $85,$02,$20,$AD,$19,$29,$0F,$A8,$88,$10,$FD,$85,$14,$85,$02,$85
       .byte $2A,$85,$02,$A9,$00,$85,$24,$A5,$AC,$20,$DB,$19,$85,$AB,$A2,$03
       .byte $B5,$D1,$20,$DB,$19,$95,$CD,$CA,$10,$F6,$E6,$80,$D0,$02,$E6,$81
       .byte $2C,$85,$02,$10,$FB,$85,$02,$A9,$00,$85,$09,$A9,$28,$85,$08,$A9
       .byte $FF,$85,$0D,$85,$0E,$85,$0F,$85,$02,$85,$02,$A9,$01,$85,$0A,$A9
       .byte $76,$85,$08,$A9,$C0,$85,$0D,$A9,$FF,$85,$0E,$85,$0F,$A9,$5C,$85
       .byte $07,$85,$06,$A9,$03,$85,$04,$85,$05,$A0,$06,$85,$02,$88,$10,$FD
       .byte $EA,$85,$10,$85,$11,$A9,$E0,$85,$20,$A9,$F0,$85,$21,$A9,$01,$85
       .byte $25,$85,$26,$85,$02,$85,$2A,$A9,$0B,$85,$BA,$A4,$BA,$B1,$8D,$85
       .byte $1B,$85,$02,$B1,$8B,$85,$1C,$B1,$89,$85,$1B,$B1,$87,$85,$BC,$B1
       .byte $85,$AA,$B1,$83,$A8,$A5,$BC,$85,$1C,$86,$1B,$84,$1C,$84,$1B,$C6
       .byte $BA,$10,$D8,$A9,$00,$85,$1B,$85,$1C,$85,$1B,$85,$1C,$85,$25,$85
       .byte $26,$85,$04,$85,$05,$A0,$08,$85,$02,$88,$10,$FD,$85,$10,$A0,$08
       .byte $85,$02,$88,$10,$FD,$85,$11,$A0,$08,$85,$02,$88,$10,$FD,$85,$12
       .byte $85,$13,$A9,$20,$85,$20,$85,$21,$A9,$20,$85,$22,$85,$23,$A9,$54
       .byte $85,$06,$A9,$5C,$85,$07,$85,$02,$85,$2A,$A9,$00,$85,$0F,$A9,$F0
       .byte $85,$0E,$85,$02,$A9,$18,$85,$1C,$85,$02,$85,$02,$A9,$3C,$85,$1C
       .byte $85,$02,$A9,$C0,$85,$0E,$A9,$00,$A6,$9D,$E0,$03,$90,$02,$A9,$18
       .byte $85,$1B,$85,$02,$A9,$7E,$85,$1C,$A9,$00,$85,$1B,$85,$02,$A9,$00
       .byte $A6,$9D,$E0,$02,$90,$02,$A9,$18,$85,$1B,$85,$02,$A9,$FF,$85,$1C
       .byte $A9,$00,$85,$1B,$85,$02,$A9,$00,$85,$0E,$A9,$00,$A6,$9D,$E0,$01
       .byte $90,$02,$A9,$18,$85,$1B,$85,$02,$A9,$00,$85,$1B,$A9,$5C,$85,$06
       .byte $A9,$02,$85,$1D,$85,$1E,$85,$02,$A9,$00,$85,$1D,$85,$1E,$A9,$54
       .byte $85,$07,$85,$02,$A9,$80,$85,$0F,$A9,$00,$85,$1C,$A9,$08,$85,$0C
       .byte $A9,$03,$85,$04,$85,$05,$A9,$AE,$85,$06,$85,$07,$85,$02,$A0,$06
       .byte $85,$02,$88,$10,$FD,$EA,$85,$10,$85,$11,$A9,$E0,$85,$20,$A9,$F0
       .byte $85,$21,$A9,$01,$85,$25,$85,$26,$4C,$00,$15,$18,$80,$20,$21,$9C
       .byte $20,$20,$48,$B1,$00,$11,$EB,$30,$08,$00,$3A,$A8,$40,$00,$DA,$B0
       .byte $20,$18,$A9,$35,$11,$00,$01,$70,$88,$18,$AB,$0C,$10,$00,$4D,$BC
       .byte $02,$10,$2C,$38,$08,$00,$FD,$7B,$C1,$00,$F9,$C1,$06,$00,$E9,$2D
       .byte $85,$02,$85,$2A,$A9,$07,$85,$BA,$A4,$BA,$B1,$99,$85,$1B,$85,$02
       .byte $B1,$97,$85,$1C,$B1,$95,$85,$1B,$B1,$93,$85,$BC,$B1,$91,$AA,$B1
       .byte $8F,$A8,$A5,$BC,$85,$1C,$86,$1B,$84,$1C,$84,$1B,$C6,$BA,$10,$D8
       .byte $A9,$00,$85,$1B,$85,$1C,$85,$1B,$85,$1C,$85,$25,$85,$26,$85,$04
       .byte $85,$05,$85,$0C,$A0,$08,$85,$02,$88,$10,$FD,$85,$10,$A9,$20,$85
       .byte $20,$85,$02,$85,$2A,$A9,$05,$85,$0A,$A2,$1F,$9A,$A0,$07,$A2,$8A
       .byte $86,$02,$A9,$00,$85,$0F,$B1,$A1,$85,$1B,$8A,$E5,$AE,$29,$FC,$08
       .byte $68,$CA,$88,$10,$EB,$85,$02,$86,$C2,$A9,$00,$85,$1B,$85,$1C,$A5
       .byte $DB,$85,$BC,$A5,$D6,$85,$C0,$A9,$24,$85,$BE,$A9,$0F,$85,$BA,$A5
       .byte $CE,$A2,$FF,$9A,$20,$2E,$19,$A9,$03,$85,$0E,$A9,$30,$85,$0F,$A5
       .byte $D8,$85,$C0,$A9,$1A,$85,$DA,$A9,$40,$85,$D9,$A9,$64,$85,$BE,$A9
       .byte $0B,$85,$BA,$A5,$DD,$85,$BC,$A5,$D0,$A2,$FF,$9A,$20,$2E,$19,$A9
       .byte $FF,$85,$0E,$A9,$00,$85,$0F,$A2,$1F,$9A,$C6,$C2,$C6,$C2,$A9,$70
       .byte $8D,$95,$02,$A5,$CD,$4A,$4A,$4A,$4A,$AA,$BD,$44,$1C,$85,$CB,$A9
       .byte $16,$85,$CC,$A9,$E8,$85,$06,$85,$07,$A5,$D5,$85,$0B,$85,$0C,$A9
       .byte $01,$85,$04,$85,$05,$A5,$CD,$85,$20,$85,$02,$18,$69,$10,$85,$21
       .byte $EA,$29,$0F,$A8,$84,$B8,$88,$10,$FD,$85,$10,$85,$11,$85,$02,$85
       .byte $2A,$A4,$B8,$88,$10,$FD,$6C,$CB,$00,$A9,$A9,$A9,$A9,$AD,$A5,$EA
       .byte $2C,$AD,$19,$2C,$AD,$19,$2C,$AD,$19,$EA,$A0,$07,$A5,$C2,$38,$E5
       .byte $AE,$29,$FC,$08,$68,$C6,$C2,$B1,$C5,$B1,$C7,$B1,$C9,$B1,$C9,$85
       .byte $1B,$B1,$C7,$85,$1C,$B1,$C5,$AA,$B1,$C3,$86,$1B,$85,$1C,$88,$10
       .byte $DB,$C8,$84,$1B,$84,$1C,$AD,$84,$02,$D0,$FB,$85,$02,$A9,$1A,$85
       .byte $08,$A9,$FF,$85,$0E,$85,$0F,$A9,$00,$85,$0B,$85,$0C,$85,$02,$85
       .byte $02,$A9,$AA,$85,$0F,$A9,$55,$85,$0E,$85,$02,$C6,$C2,$C6,$C2,$C6
       .byte $C2,$C6,$C2,$85,$02,$A9,$48,$85,$08,$A9,$00,$85,$0E,$85,$0F,$85
       .byte $04,$85,$05,$A5,$E2,$85,$D9,$A5,$DC,$85,$BC,$A9,$14,$85,$BE,$A5
       .byte $D7,$85,$C0,$A9,$07,$85,$BA,$A5,$CF,$A2,$FF,$9A,$20,$2E,$19,$85
       .byte $02,$A5,$AB,$29,$0F,$A8,$EA,$EA,$EA,$A5,$AB,$88,$10,$FD,$85,$20
       .byte $85,$10,$85,$02,$85,$2A,$85,$02,$A9,$00,$85,$0B,$85,$0C,$85,$BA
       .byte $A9,$28,$85,$06,$A2,$1F,$9A,$A6,$C2,$86,$02,$A5,$BA,$85,$1B,$8A
       .byte $38,$E5,$AE,$29,$FC,$08,$68,$E0,$0C,$B0,$05,$BD,$48,$1E,$85,$BA
       .byte $CA,$10,$E6,$85,$02,$A9,$00,$85,$1F,$85,$1B,$85,$1C,$85,$02,$85
       .byte $02,$A2,$FF,$9A,$86,$0E,$86,$0F,$86,$0D,$A9,$28,$85,$08,$85,$02
       .byte $A9,$00,$85,$0A,$A5,$B2,$F0,$0C,$A5,$80,$29,$08,$D0,$06,$A0,$28
       .byte $A2,$0F,$D0,$04,$A0,$0F,$A2,$28,$85,$02,$A9,$30,$85,$0D,$84,$08
       .byte $86,$09,$A9,$CC,$85,$0E,$A9,$33,$85,$0F,$A9,$23,$8D,$96,$02,$A5
       .byte $AE,$C9,$87,$D0,$1A,$A6,$AD,$E0,$4C,$90,$14,$E0,$54,$B0,$10,$A5
       .byte $A0,$10,$0C,$A9,$F4,$85,$A0,$20,$25,$19,$A9,$10,$20,$17,$19,$A5
       .byte $AD,$C9,$30,$90,$56,$C9,$70,$B0,$52,$A5,$AE,$C9,$4B,$D0,$4C,$A0
       .byte $03,$A5,$D1,$C5,$AD,$B0,$44,$18,$69,$08,$C5,$AD,$90,$3A,$98,$A6
       .byte $D5,$F0,$02,$49,$03,$AA,$BD,$58,$1C,$25,$E0,$F0,$2E,$45,$E0,$85
       .byte $E0,$BD,$5C,$1C,$20,$17,$19,$E0,$02,$D0,$02,$E6,$E9,$E0,$00,$D0
       .byte $12,$A9,$00,$85,$E0,$A2,$08,$A5,$A7,$29,$08,$85,$D5,$F0,$02,$A2
       .byte $78,$86,$D1,$20,$25,$19,$D0,$03,$88,$10,$BC,$A2,$02,$A5,$AE,$DD
       .byte $6C,$1C,$D0,$7A,$B5,$D2,$C5,$AD,$B0,$74,$18,$69,$08,$C5,$AD,$90
       .byte $6D,$B4,$EB,$A9,$05,$E0,$02,$F0,$0A,$B9,$60,$1C,$E0,$00,$F0,$03
       .byte $B9,$64,$1C,$20,$17,$19,$20,$25,$19,$E0,$02,$F0,$43,$20,$E1,$18
       .byte $A5,$A7,$E0,$00,$F0,$18,$29,$07,$A8,$29,$06,$0A,$C5,$E9,$F0,$02

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
L1805: STA    VSYNC,X 
       TXS            
       INX            
       BNE    L1805   
       INX            
       STX    CTRLPF  
       STX    $DE     
       STX    $EA     
       STX    $E0     
       JSR    L1E04   
       LDA    #$60    
       STA    $EC     
       LDY    #$1F    
       LDX    #$0A    
       LDA    #$AA    
L1821: STY    $C8,X   
       STA    $C7,X   
       SEC            
       SBC    #$0A    
       DEX            
       DEX            
       BPL    L1821   
L182C: LDY    #$02    
       STY    VBLANK  
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       DEY            
       STY    VSYNC   
       LDA    #$2B    
       STA    TIM64T  
       INC    $80     
       BNE    L184E   
       INC    $81     
       BNE    L184E   
       LDA    #$F3    
       STA    $F1     
L184E: BIT    $EC     
       BPL    L1877   
       INC    $8A     
       LDA    $8A     
       CMP    #$3C    
       BNE    L1877   
       LDY    #$00    
       STY    $8A     
       LDA    $89     
       SED            
       CLC            
       ADC    #$01    
       CLD            
       STA    $89     
       CMP    #$60    
       BNE    L1877   
       STY    $89     
       INC    $88     
       LDA    $88     
       CMP    #$0A    
       BNE    L1877   
       STY    $88     
L1877: LDA    $EC     
       AND    #$08    
       BEQ    L1892   
       INC.w  $00DC   
       BNE    L1888   
       LDA    $DE     
       EOR    #$80    
       STA    $DE     
L1888: BIT    $DE     
       BPL    L1892   
       LDA    REFP1   
       AND    PF0     
       BPL    L18CC   
L1892: LDA    SWCHB   
       ROR    $DE     
       BCS    L189D   
       LSR            
       BCS    L18C2   
       ROL            
L189D: LSR            
       ROL    $DE     
       LSR            
       BIT    $DF     
       BCC    L18A9   
       ROL    $DF     
       BNE    L18ED   
L18A9: BPL    L18BF   
       LDA    #$10    
       STA    $EC     
       STA    $DF     
       LDX    #$01    
       STX    $DE     
       INC    $E0     
       LDA    $E0     
       CMP    #$04    
       BNE    L18BF   
       STX    $E0     
L18BF: JMP    L18ED   
L18C2: LDA    #$00    
       STA    $EE     
       STA    $EF     
L18C8: LDA    #$C1    
       BNE    L18D3   
L18CC: BIT    SWCHB   
       BPL    L18C8   
       LDA    #$81    
L18D3: STA    $DE     
       LDY    $E0     
       LDA    L1FBD,Y 
       STA    $F0     
       LDA    $80     
       ORA    #$01    
       STA    $EA     
       LDA    $81     
       STA    $EB     
       JSR    L1E04   
       LDA    #$80    
       STA    $EC     
L18ED: JSR    L1DB1   
       BIT    $DE     
       BVC    L1927   
       LDA    $80     
       TAX            
       BPL    L18FC   
       INX            
       STX    $DE     
L18FC: AND    #$0F    
       TAY            
       LDX    L1FEA,Y 
       STX    $90     
       BMI    L1927   
L1906: JSR    L1DB1   
       AND    #$07    
       CMP    #$06    
       BCS    L1906   
       TAX            
       LDA    L1FD1,X 
       LDY    #$00    
       LDX    #$08    
L1917: CMP    $E1,X   
       BNE    L191C   
       INY            
L191C: DEX            
       BPL    L1917   
       CPY    #$04    
       BCS    L1906   
       LDX    $90     
       STA    $E1,X   
L1927: LDA    $80     
       AND    #$03    
       BNE    L193F   
       LDA    $EC     
       AND    #$40    
       BEQ    L1936   
       JSR    L1E26   
L1936: LDA    $EC     
       AND    #$20    
       BEQ    L193F   
       JSR    L1E3E   
L193F: BIT    $EC     
       BPL    L1975   
       INC    $ED     
       LDA    $ED     
       CMP    #$03    
       BNE    L1975   
       LDA    #$00    
       STA    $ED     
       LDA    $80     
       AND    #$01    
       TAX            
       LDA    $F0     
       CPX    #$01    
       BNE    L1961   
       LDY    $E0     
       CPY    #$03    
       BEQ    L1975   
       ASL            
L1961: ASL            
       BMI    L1975   
       LDA    SWCHA   
       CPX    #$01    
       BEQ    L196F   
       LSR            
       LSR            
       LSR            
       LSR            
L196F: AND    #$0F    
       LDY    $D7,X   
       BEQ    L1978   
L1975: JMP    L1A1D   
L1978: LDY    REFP1,X 
       BMI    L19B6   
       STX    $81     
       LDY    #$FF    
       STY    $F1     
       CMP    #$0E    
       BEQ    L1992   
       CMP    #$0D    
       BEQ    L1992   
       CMP    #$0B    
       BEQ    L1992   
       CMP    #$07    
       BNE    L1975   
L1992: STA    $90     
       LDA    $D3,X   
       JSR    L1E58   
       BCS    L1975   
       LDA    $84,X   
       SED            
       CLC            
       ADC    #$01    
       CLD            
       STA    $84,X   
       BCC    L19A8   
       INC    $86,X   
L19A8: LDA    $90     
       STA    $D7,X   
       LDA    #$40    
       STA    $DA,X   
       LDA    #$00    
       STA    $DC,X   
       BEQ    L1975   
L19B6: LDY    #$00    
       STY    $D7,X   
       LDY    $D3,X   
       STY    $90     
       LDX    $90     
       LSR            
       BCS    L19CA   
       LDX    L1ECA,Y 
       STX    $91     
       LDY    $91     
L19CA: LSR            
       BCS    L19D4   
       LDX    L1EE3,Y 
       STX    $91     
       LDY    $91     
L19D4: LSR            
       BCS    L19DE   
       LDX    L1EB1,Y 
       STX    $91     
       LDY    $91     
L19DE: LSR            
       BCS    L19E8   
       LDX    L1E98,Y 
       STX    $91     
       LDY    $91     
L19E8: CPX    $90     
       BEQ    L1A1D   
       LDY    $90     
       STX    $91     
       LDA    $80     
       AND    #$01    
       TAX            
       LDA    #$80    
       STA    $DA,X   
       LDA    #$03    
       STA    $DC,X   
       TXA            
       LDX    $91     
       CMP    #$01    
       BEQ    L1A12   
       LDA    $82     
       STA.wy $00AE,Y 
       LDA    $AE,X   
       STA    $82     
       STX    $D3     
       JMP    L1A1D   
L1A12: LDA    $83     
       STA.wy $0095,Y 
       LDA    $95,X   
       STA    $83     
       STX    $D4     
L1A1D: LDY    #$8C    
       STY    $D9     
       LDY    #$00    
       LDA    $80     
       AND    #$02    
       BNE    L1A34   
       LDX    $D3     
       STY    $AE,X   
L1A2D: LDX    $D4     
       STY    $95,X   
       JMP    L1A3F   
L1A34: LDA    $82     
       LDX    $D3     
       STA    $AE,X   
       LDY    $83     
       JMP    L1A2D   
L1A3F: LDX    #$00    
       LDA    $EC     
       BMI    L1AAB   
       AND    #$10    
       BNE    L1A9A   
       LDA    $EC     
       AND    #$08    
       BEQ    L1AAB   
       BIT    SWCHB   
       BVC    L1A63   
       LDA    $84     
       JSR    L1DE2   
       LDA    #$AA    
       JSR    L1DE2   
       LDA    $85     
       JMP    L1A94   
L1A63: LDA    $E0     
       CMP    #$03    
       BNE    L1A7C   
       LDA    $88     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    #$0B    
       JSR    L1DE2   
       LDA    $89     
       JSR    L1DE2   
       JMP    L1AA6   
L1A7C: LDA    $EE     
       CMP    #$10    
       BCS    L1A84   
       ORA    #$A0    
L1A84: JSR    L1DE2   
       LDA    #$AA    
       JSR    L1DE2   
       LDA    $EF     
       CMP    #$10    
       BCS    L1A94   
       ORA    #$A0    
L1A94: JSR    L1DE2   
       JMP    L1AAB   
L1A9A: LDA    #$AA    
       JSR    L1DE2   
       LDA    $E0     
       ORA    #$A0    
       JSR    L1DE2   
L1AA6: LDA    #$AA    
       JSR    L1DE2   
L1AAB: JSR    L1DC1   
L1AAE: BIT    $0285   
       BPL    L1AAE   
       STA    WSYNC   
       LDX    #$00    
       STX    VBLANK  
       STX    $92     
       LDX    #$AD    
       TXS            
       LDA    #$2E    
       AND    $F1     
       STA    COLUPF  
L1AC4: LDY    #$04    
       STY    $93     
       LDA    #$FE    
       STA    PF2     
       INY            
L1ACD: STA    WSYNC   
       DEY            
       BPL    L1ACD   
       LDA    #$02    
       STA    PF2     
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
L1ADC: STA    WSYNC   
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       PLA            
       AND    $F1     
       STA    $8B     
       PLA            
       AND    $F1     
       STA    $8C     
       PLA            
       AND    $F1     
       STA    $8D     
       PLA            
       AND    $F1     
       STA    $8E     
       PLA            
       AND    $F1     
       STA    $8F     
       LDY    #$0B    
L1AFF: STA    WSYNC   
       STY    $90     
       LDA    L1E8C,Y 
       STA    GRP0    
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       LDA    $8B     
       STA    COLUP0  
       LDA    $8C     
       STA    COLUP1  
       STX    $91     
       LDX    $8D     
       LDY    $8E     
       LDA    $8F     
       STX    COLUP0  
       STY    COLUP1  
       STA    COLUP0  
       LDY    $90     
       DEY            
       BPL    L1AFF   
       INY            
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       DEC    $93     
       BPL    L1ADC   
       STA    WSYNC   
       BIT    $DE     
       BPL    L1B99   
       LDA    $92     
       BNE    L1B99   
       LDY    #$24    
       STY    NUSIZ0  
       LDY    #$04    
       STY    NUSIZ1  
       STY    HMM0    
       STA    HMP1    
       LDA    $E1     
       STA    $8B     
       LDA    $E2     
       STA    $8C     
       LDA    $E3     
       STA    $8D     
       LDA    #$F0    
       STA    HMP0    
       LDX    #$FF    
       TXS            
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    RESM0   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$FE    
       STA    PF2     
       JSR    L1D72   
       LDA    #$00    
       STA    PF2     
       LDA    $E4     
       STA    $8B     
       LDA    $E5     
       STA    $8C     
       LDA    $E6     
       STA    $8D     
       JSR    L1D72   
       LDA    $E7     
       STA    $8B     
       LDA    $E8     
       STA    $8C     
       LDA    $E9     
       STA    $8D     
       JSR    L1D72   
       LDA    #$FF    
       STA    $92     
       JMP    L1C16   
L1B99: STA    WSYNC   
       STA    WSYNC   
       LDA    #$FE    
       STA    PF2     
       LDX    #$07    
L1BA3: STA    WSYNC   
       DEX            
       BNE    L1BA3   
       STX    PF2     
       STX    HMP1    
       DEX            
       TXS            
       LDA    $92     
       EOR    #$FF    
       STA    $92     
       BNE    L1BB9   
       JMP    L1C25   
L1BB9: LDA    $D9     
       AND    $F1     
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       STA    WSYNC   
L1BCB: DEY            
       BNE    L1BCB   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       INY            
       STY    VDELP0  
       STY    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$09    
L1BE2: STY    $91     
       LDA    ($C7),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($C9),Y 
       STA    GRP1    
       LDA    ($CB),Y 
       STA    GRP0    
       LDA    ($CD),Y 
       STA    $90     
       LDA    ($CF),Y 
       TAX            
       LDA    ($D1),Y 
       TAY            
       LDA    $90     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $91     
       DEY            
       BPL    L1BE2   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    VDELP0  
       STY    VDELP1  
       STA    WSYNC   
L1C16: LDA    #$CE    
       AND    $F1     
       STA    COLUPF  
       JSR    L1DC1   
       LDX    #$94    
       TXS            
       JMP    L1AC4   
L1C25: LDA    #$20    
       STA    TIM64T  
       INX            
       LDA    #$0C    
       STA    AUDC0   
       BIT    $DE     
       BVC    L1C45   
       LDA    $80     
       AND    #$03    
       BNE    L1C3B   
       LDX    #$08    
L1C3B: STX    AUDV0   
       LDA    $EA     
       AND    #$0C    
       STA    AUDF0   
       BPL    L1C91   
L1C45: LDA    $DA     
       CMP    #$20    
       BNE    L1C94   
       LDA    $DC     
       AND    #$07    
       ASL            
       STA    AUDV0   
       LDA    $DC     
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
       DEC    $DC     
       LDA    $DC     
       CMP    #$10    
       BNE    L1C91   
       STX    $DA     
       LDA    $F0     
       BPL    L1C6F   
       STA    $EC     
       AND    #$60    
       CMP    #$60    
       BNE    L1C91   
L1C6F: STX.w  $00DC   
       INX            
       STX    $DE     
       LDA    #$08    
       STA    $EC     
       BIT    $F0     
       BPL    L1C91   
       LDA    $86     
       CMP    $87     
       BCC    L1C8D   
       BNE    L1C8E   
       LDA    $84     
       CMP    $85     
       BEQ    L1C91   
       BCS    L1C8E   
L1C8D: DEX            
L1C8E: JSR    L1D68   
L1C91: JMP    L1CC3   
L1C94: LDX    #$01    
L1C96: LDA    $DA,X   
       ASL            
       BCS    L1CB1   
       ASL            
       BCS    L1CA2   
       LDY    #$00    
       BEQ    L1CB7   
L1CA2: LDY    #$0C    
       LDA    $DC,X   
       LSR            
       BCC    L1CAB   
       LDY    #$04    
L1CAB: INC    $DC,X   
       LDA    #$04    
       BNE    L1CB7   
L1CB1: LDA    #$08    
       STA    $DA,X   
       LDY    #$0C    
L1CB7: STY    AUDV0,X 
       STA    AUDC0,X 
       LDA    L1FFA,X 
       STA    AUDF0,X 
       DEX            
       BPL    L1C96   
L1CC3: LDA    $80     
       AND    #$01    
       TAX            
       LDA    $D7,X   
       BNE    L1CCF   
       JMP    L1D60   
L1CCF: STA    $90     
       LDA    $D3,X   
L1CD3: STA    $91     
       JSR    L1E6D   
       CMP    $D5,X   
       BNE    L1CD3   
       STA    $90     
       LDY    $91     
       STY    $D5,X   
       CPX    #$01    
       BEQ    L1CFB   
       LDA.wy $00AE,Y 
       BNE    L1CED   
       LDA    $82     
L1CED: LDY    $90     
       STA.wy $00AE,Y 
       LDY    $91     
       LDA    #$00    
       STA.wy $00AE,Y 
       BEQ    L1D0E   
L1CFB: LDA.wy $0095,Y 
       BNE    L1D02   
       LDA    $83     
L1D02: LDY    $90     
       STA.wy $0095,Y 
       LDY    $91     
       LDA    #$00    
       STA.wy $0095,Y 
L1D0E: LDA    $D5,X   
       CMP    $D3,X   
       BNE    L1D60   
       LDA    #$00    
       STA    $D7,X   
       STA    $82,X   
       STA    $DA,X   
       TXA            
       ROR            
       ROR            
       STA    $90     
       LDX    #$00    
L1D23: LDY    L1FB4,X 
       LDA    $E1,X   
       BIT    $90     
       BMI    L1D32   
       CMP.wy $00AE,Y 
       JMP    L1D35   
L1D32: CMP.wy $0095,Y 
L1D35: BNE    L1D60   
       INX            
       CPX    #$09    
       BNE    L1D23   
       LDA    #$20    
       STA    $DA     
       LDA    #$00    
       STA    AUDV1   
       LDA    #$80    
       STA    $DC     
       LDA    #$40    
       BIT    $90     
       BPL    L1D50   
       LDA    #$20    
L1D50: STA    $EC     
       ORA    $F0     
       STA    $F0     
       BMI    L1D60   
       LDA    $80     
       AND    #$01    
       TAX            
       JSR    L1D68   
L1D60: BIT    $0285   
       BPL    L1D60   
       JMP    L182C   
L1D68: LDA    $EE,X   
       SED            
       CLC            
       ADC    #$01    
       STA    $EE,X   
       CLD            
       RTS            

L1D72: LDY    #$05    
       LDA    $8C     
       STA    COLUP1  
L1D78: STA    WSYNC   
       LDA    $8B     
       STA    COLUP0  
       LDA    #$0F    
       STA    GRP0    
       LDA    #$3C    
       STA    GRP1    
       LDA    #$02    
       STA    ENAM0   
       NOP            
       NOP            
       NOP            
       LDA    $8D     
       STA    COLUP0  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $8B     
       STA    COLUP0  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $8D     
       STA    COLUP0  
       DEY            
       BNE    L1D78   
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    ENAM0   
       STA    WSYNC   
       RTS            

L1DB1: LDA    $EA     
       ROR            
       ROR            
       ROR            
       EOR    $EB     
       ASL            
       ASL            
       ROL    $EA     
       ROL    $EB     
       LDA    $EA     
       RTS            

L1DC1: STA    WSYNC   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDY    #$04    
L1DCD: DEY            
       BPL    L1DCD   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDA    #$00    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L1DE2: STA    $91     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    L1DFB   
       STA    $C7,X   
       INX            
       INX            
       LDA    $91     
       AND    #$0F    
       JSR    L1DFB   
       STA    $C7,X   
       INX            
       INX            
       RTS            

L1DFB: ASL            
       STA    $90     
       ASL            
       ASL            
       CLC            
       ADC    $90     
       RTS            

L1E04: LDX    #$18    
L1E06: LDA    L1FD1,X 
       STA    $AE,X   
       STA    $95,X   
       DEX            
       BPL    L1E06   
       STX    $F1     
       INX            
       TXA            
L1E14: STA    $80,X   
       INX            
       CPX    #$0A    
       BNE    L1E14   
       LDA    #$0C    
       STA    $D3     
       STA    $D4     
       STA    $D5     
       STA    $D6     
       RTS            

L1E26: LDA    $AE     
       STA    $90     
       LDY    #$0F    
L1E2C: LDX    L1FC0,Y 
       LDA    $AE,X   
       LDX    L1FC1,Y 
       STA    $AE,X   
       DEY            
       BPL    L1E2C   
       LDA    $90     
       STA    $AF     
       RTS            

L1E3E: LDA    $95     
       STA    $90     
       LDY    #$00    
L1E44: LDX    L1FC1,Y 
       LDA    $95,X   
       LDX    L1FC0,Y 
       STA    $95,X   
       INY            
       CPY    #$10    
       BNE    L1E44   
       LDA    $90     
       STA    $9A     
       RTS            

L1E58: STA    $91     
       JSR    L1E6D   
       CMP    $91     
       BNE    L1E63   
       SEC            
       RTS            

L1E63: CMP    $D5,X   
       BNE    L1E69   
       CLC            
       RTS            

L1E69: JSR    L1E58   
       RTS            

L1E6D: TAY            
       LDA    $90     
       CMP    #$0E    
       BNE    L1E78   
       LDA    L1ECA,Y 
       RTS            

L1E78: CMP    #$0D    
       BNE    L1E80   
       LDA    L1EE3,Y 
       RTS            

L1E80: CMP    #$0B    
       BNE    L1E88   
       LDA    L1EB1,Y 
       RTS            

L1E88: LDA    L1E98,Y 
       RTS            

L1E8C: .byte $3E,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$3E
L1E98: .byte $01,$02,$03,$04,$04,$06,$07,$08,$09,$09,$0B,$0C,$0D,$0E,$0E,$10
       .byte $11,$12,$13,$13,$15,$16,$17,$18,$18
L1EB1: .byte $00,$00,$01,$02,$03,$05,$05,$06,$07,$08,$0A,$0A,$0B,$0C,$0D,$0F
       .byte $0F,$10,$11,$12,$14,$14,$15,$16,$17
L1ECA: .byte $00,$01,$02,$03,$04,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A
       .byte $0B,$0C,$0D,$0E,$0F,$10,$11,$12,$13
L1EE3: .byte $05,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F,$10,$11,$12,$13,$14
       .byte $15,$16,$17,$18,$14,$15,$16,$17,$18,$00,$00,$00,$00,$00,$70,$88
       .byte $88,$88,$88,$88,$88,$70,$00,$00,$38,$10,$10,$10,$10,$10,$30,$10
       .byte $00,$00,$F8,$80,$40,$20,$10,$08,$88,$70,$00,$00,$70,$88,$08,$08
       .byte $30,$08,$88,$70,$00,$00,$08,$08,$FC,$88,$48,$28,$18,$08,$00,$00
       .byte $70,$88,$08,$08,$F0,$80,$80,$F8,$00,$00,$70,$88,$88,$88,$F0,$80
       .byte $88,$70,$00,$00,$40,$40,$40,$40,$20,$10,$88,$F8,$00,$00,$70,$88
       .byte $88,$88,$70,$88,$88,$70,$00,$00,$70,$80,$08,$78,$88,$88,$88,$70
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$00
       .byte $00,$18,$18,$00,$00,$38,$44,$44,$92,$A2,$A2,$92,$44,$44,$38,$00
       .byte $00,$45,$45,$45,$5D,$55,$5D,$00,$00,$00,$00,$DC,$50,$50,$DC,$44
       .byte $DC,$00,$00,$00,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$94,$00,$00,$93,$94
       .byte $94,$95,$F4,$94,$94,$63,$00,$00,$26,$A9,$A8,$A8,$28,$28,$A9,$26
       .byte $00
L1FB4: .byte $06,$07,$08,$0B,$0C,$0D,$10,$11,$12
L1FBD: .byte $00,$00,$80
L1FC0: .byte $00
L1FC1: .byte $01,$02,$03,$04,$09,$0E,$13,$18,$17,$16,$15,$14,$0F,$0A,$05,$00
L1FD1: .byte $1E,$26,$84,$0E,$42,$D4,$0E,$26,$84,$0E,$26,$1E,$00,$26,$D4,$42
       .byte $84,$D4,$1E,$84,$0E,$D4,$1E,$42,$42
L1FEA: .byte $01,$FF,$06,$FF,$00,$FF,$04,$FF,$02,$FF,$03,$FF,$07,$08,$FF,$05
L1FFA: .byte $10,$08,$00,$18,$00,$18
