; Disassembly of roms/EuchrePAL.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/EuchrePAL.bin
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
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
T1024T  =  $0297

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF007: STA    VSYNC,X 
       DEX            
       BNE    LF007   
       STA    SWACNT  
       LDA    #$6D    
       LDX    #$03    
LF013: STA    $A9,X   
       DEX            
       BPL    LF013   
       LDA    #$80    
       LDX    #$18    
LF01C: DEX            
       STA    $84,X   
       BNE    LF01C   
       JSR    LF6F0   
LF024: LDA    #$FF    
       STA    $B0     
       LDA    #$00    
       STA    $B8     
LF02C: LDA    #$02    
       STA    VBLANK  
       LDA    #$02    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$35    
       STA    TIM64T  
       JSR    LFF54   
       LDA    INPT4   
       BPL    LF052   
       LDA    #$00    
       BEQ    LF05E   
LF052: LDA    $B8     
       CMP    #$00    
       BNE    LF05C   
       LDA    #$01    
       BNE    LF05E   
LF05C: LDA    #$02    
LF05E: STA    $B8     
       LDA    $C0     
       BEQ    LF06A   
       DEC    $C0     
       LDA    #$00    
       BEQ    LF08D   
LF06A: LDA    SWCHA   
       ASL            
       BCC    LF07F   
       ASL            
       BCC    LF087   
       ASL            
       BCC    LF07F   
       ASL            
       BCC    LF087   
       LDA    #$00    
       STA    $C0     
       BEQ    LF08D   
LF07F: LDA    #$0C    
       STA    $C0     
       LDA    #$01    
       BNE    LF08D   
LF087: LDA    #$0C    
       STA    $C0     
       LDA    #$FF    
LF08D: STA    $B9     
       LDA    #$00    
       LDX    $B2     
       BNE    LF0C1   
       LDX    $B0     
       BMI    LF0C1   
       LDX    $B1     
       CPX    #$06    
       BEQ    LF0A3   
       CPX    #$08    
       BNE    LF0A7   
LF0A3: LDA    #$01    
       BNE    LF0C1   
LF0A7: CPX    #$05    
       BNE    LF0B3   
       LDX    $BF     
       BPL    LF0C1   
       LDA    #$02    
       BNE    LF0C1   
LF0B3: CPX    #$07    
       BNE    LF0C1   
       LDX    $BF     
       BMI    LF0BF   
       LDA    #$03    
       BNE    LF0C1   
LF0BF: LDA    #$02    
LF0C1: STA    $C1     
       LDA    $CF     
       BMI    LF0DB   
       DEC    $CF     
       LDX    $CE     
       LDA    LFFEF,X 
       STA    AUDF0   
       LDA    LFFF3,X 
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       BNE    LF0DF   
LF0DB: LDA    #$00    
       STA    AUDV0   
LF0DF: LDA    INTIM   
       BNE    LF0DF   
       STA    WSYNC   
       STA    VBLANK  
       LDA    $B1     
       CMP    #$03    
       BNE    LF11F   
       LDA    #$11    
       STA    T1024T  
       LDA    #$00    
       STA    $A7     
       LDY    #$17    
LF0F9: JSR    LFF66   
       AND    #$1F    
       CMP    #$18    
       BMI    LF10C   
       LDX    $A7     
       CPX    #$06    
       BPL    LF119   
       INC    $A7     
       BPL    LF0F9   
LF10C: TAX            
       LDA.wy $0084,Y 
       PHA            
       LDA    $84,X   
       STA.wy $0084,Y 
       PLA            
       STA    $84,X   
LF119: DEY            
       BPL    LF0F9   
       JMP    LF3A8   
LF11F: LDA    #$DA    
       EOR    $CC     
       STA    COLUP0  
       LDA    #$64    
       EOR    $CC     
       STA    COLUP1  
       LDY    #$01    
       JSR    LFDBD   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $80     
       LDX    #$9C    
       JSR    LFF85   
       LDA    $81     
       LDX    #$9E    
       JSR    LFF85   
       LDX    #$01    
       JSR    LFD82   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$08    
       STA    REFP0   
       LDY    #$03    
       JSR    LFDBD   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $82     
       LDX    #$9C    
       JSR    LFF81   
       LDA    $83     
       LDX    #$9E    
       JSR    LFF81   
       LDX    #$00    
       JSR    LFD82   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    REFP0   
       STA    WSYNC   
       LDA    $B1     
       CMP    #$0B    
       BEQ    LF1B8   
       CMP    #$08    
       BCS    LF1A8   
       CMP    #$05    
       BEQ    LF1C4   
       CMP    #$07    
       BEQ    LF1C4   
       CMP    #$06    
       BEQ    LF1BC   
LF19B: LDA    #$00    
LF19D: LDX    #$9C    
       JSR    LFFA9   
       LDA    #$00    
       LDY    #$0F    
       BNE    LF1D7   
LF1A8: LDA    $BC     
       LDX    #$9C    
       JSR    LFF8D   
       LDA    #$00    
       LDX    $B3     
       LDY    LFDD9,X 
       BNE    LF1D7   
LF1B8: LDA    #$06    
       BNE    LF19D   
LF1BC: LDA    $B2     
       BNE    LF19B   
       LDA    #$12    
       BNE    LF19D   
LF1C4: STA    WSYNC   
       LDA    $B2     
       LDX    #$9C    
       JSR    LFF89   
       LDA    $BF     
       AND    #$03    
       TAX            
       LDA    LFF12,X 
       LDY    #$05    
LF1D7: LDX    #$9E    
       JSR    LFFA9   
       TYA            
       JSR    LFDBD   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$46    
       EOR    $CC     
       STA    COLUP0  
       STA    COLUP1  
       JSR    LFD49   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDY    #$07    
       JSR    LFDBD   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$50    
       EOR    $CC     
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$0F    
       EOR    $CC     
       STA    COLUPF  
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$0F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       LDA    $9A     
       LDX    #$9C    
       LDY    #$9E    
       JSR    LFD1E   
       STA    COLUP0  
       STA    COLUP1  
       JSR    LFD49   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $99     
       LDX    #$9C    
       LDY    #$A0    
       JSR    LFD1E   
       STA    COLUP0  
       LDA    $9B     
       LDX    #$9E    
       LDY    #$A2    
       JSR    LFD1E   
       STA    COLUP1  
       LDY    #$09    
       JSR    LFDBD   
       JSR    LFD5B   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       JSR    LFDBD   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $98     
       LDX    #$9C    
       LDY    #$9E    
       JSR    LFD1E   
       STA    COLUP0  
       STA    COLUP1  
       JSR    LFD49   
       LDA    #$04    
       STA    TIM64T  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
LF288: LDA    INTIM   
       BNE    LF288   
       STA    WSYNC   
       LDA    #$09    
       STA    TIM64T  
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    COLUBK  
LF2A4: LDA    INTIM   
       BNE    LF2A4   
       LDA    #$00    
       STA    $A4     
LF2AD: LDA    #$04    
       STA    TIM64T  
       LDA    #$00    
       STA    PF2     
       STA    COLUBK  
       LDX    $A4     
       LDA    $84,X   
       LDX    #$9C    
       LDY    #$9E    
       JSR    LFD1E   
       STA    COLUP0  
       STA    COLUP1  
LF2C7: LDA    INTIM   
       BNE    LF2C7   
       LDA    #$F0    
       STA    PF2     
       STA    WSYNC   
       LDA    #$00    
       LDX    $C1     
       CPX    #$01    
       BNE    LF2E4   
       LDX    $A4     
       CPX    $B0     
       BNE    LF2E4   
       LDA    #$D2    
       EOR    $CC     
LF2E4: STA    WSYNC   
       STA    COLUBK  
       JSR    LFD49   
       LDA    #$00    
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       INC    $A4     
       LDA    $A4     
       CMP    #$05    
       BNE    LF2AD   
       LDA    #$0D    
       STA    TIM64T  
       LDA    #$00    
       STA    PF2     
       STA    COLUBK  
       EOR    $CC     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$0B    
       JSR    LFDBD   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$AE    
       LDA    $C1     
       CMP    #$02    
       BEQ    LF329   
       CMP    #$03    
       BEQ    LF32D   
       LDY    #$00    
       BEQ    LF32F   
LF329: LDY    #$01    
       BNE    LF32F   
LF32D: LDY    #$02    
LF32F: JSR    LFFB5   
       JSR    LFFC4   
LF335: LDA    INTIM   
       BNE    LF335   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$13    
       STA    TIM64T  
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$28    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JSR    LFD99   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $C1     
       AND    #$02    
       BNE    LF372   
       LDA    #$00    
       BEQ    LF374   
LF372: LDA    #$C0    
LF374: PHA            
       LDA    #$28    
       STA    COLUP0  
       LDX    $B0     
       LDA    LFF1A,X 
       LDX    #$00    
       JSR    LFF71   
       STA    WSYNC   
       STA    HMOVE   
       PLA            
       STA    GRP0    
       STA    WSYNC   
       STA    WSYNC   
       STX    GRP0    
LF390: LDA    INTIM   
       BNE    LF390   
       LDY    #$2A    
       STY    TIM64T  
       STA    WSYNC   
       STA    COLUP0  
       STA    COLUP1  
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
LF3A8: LDA    INTIM   
       BNE    LF3A8   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2A    
       STA    TIM64T  
       LDA    #$02    
       STA    VBLANK  
       LDA    SWCHB   
       AND    #$01    
       BNE    LF3C9   
       JSR    LF6C1   
       JMP    LF024   
LF3C9: LDX    $B1     
       LDA    LFDDE,X 
       STA    $A6     
       LDA    LFDEA,X 
       STA    $A7     
       JSR    LFDDB   
LF3D8: LDA    INTIM   
       BNE    LF3D8   
       STA    WSYNC   
       JMP    LF02C   
LF3E2: .byte $A9,$05,$85,$B1,$A9,$FF,$85,$CA,$85,$CB,$20,$F0,$F3,$60,$A5,$B4
       .byte $18,$69,$01,$29,$03,$85,$B2,$A2,$FF,$86,$BF,$86,$E1,$E8,$86,$B0
       .byte $60,$A6,$B2,$F0,$67,$A5,$BF,$30,$05,$C6,$B5,$F0,$15,$60,$20,$13
       .byte $FD,$A5,$D2,$29,$03,$85,$D1,$20,$D5,$F9,$20,$E0,$FA,$A9,$4B,$85
       .byte $B5,$60,$A5,$BF,$F0,$30,$A5,$B2,$85,$D0,$29,$01,$85,$B3,$A5,$D2
       .byte $29,$03,$85,$BC,$20,$E3,$FC,$A5,$BF,$C9,$02,$D0,$15,$A6,$D0,$BD
       .byte $23,$FF,$C5,$B4,$D0,$0C,$A6,$B4,$B5,$98,$09,$80,$95,$98,$20,$12
       .byte $F7,$60,$20,$DA,$F5,$60,$A5,$B2,$C5,$B4,$F0,$0C,$18,$69,$01,$29
       .byte $03,$85,$B2,$A9,$FF,$85,$BF,$60,$20,$C1,$F4,$60,$A5,$BF,$30,$05
       .byte $C6,$CD,$F0,$AE,$60,$A5,$B8,$C9,$01,$D0,$11,$20,$DD,$FF,$A5,$B0
       .byte $85,$BF,$F0,$04,$A5,$B4,$F0,$9A,$20,$D1,$F5,$60,$A2,$03,$20,$94
       .byte $F4,$60,$86,$A5,$A5,$B9,$18,$65,$B0,$30,$08,$C5,$A5,$D0,$09,$A9
       .byte $00,$F0,$05,$A5,$A5,$38,$E9,$01,$85,$B0,$E0,$05,$D0,$06,$A8,$B9
       .byte $84,$00,$30,$E0,$60,$A2,$FF,$E8,$B5,$84,$30,$FB,$86,$B0,$60,$A9
       .byte $07,$85,$B1,$A9,$04,$85,$D1,$A6,$B4,$B5,$98,$09,$80,$95,$98,$29
       .byte $03,$85,$CA,$B5,$98,$29,$1C,$C9,$08,$D0,$04,$A5,$CA,$85,$CB,$20
       .byte $F0,$F3,$60,$A6,$B2,$D0,$03,$4C,$75,$F5,$A5,$BF,$30,$05,$C6,$B5
       .byte $F0,$52,$60,$A5,$D1,$C9,$04,$D0,$07,$A0,$FF,$84,$D4,$C8,$84,$D3
       .byte $20,$13,$FD,$C6,$D1,$A5,$D1,$30,$1A,$C5,$CA,$F0,$09,$85,$D1,$20
       .byte $D5,$F9,$A5,$D5,$10,$02,$A9,$00,$C5,$D3,$90,$06,$85,$D3,$A5,$D1
       .byte $85,$D4,$60,$A5,$D3,$85,$D5,$20,$E0,$FA,$A5,$BF,$D0,$11,$A5,$B2
       .byte $C5,$B4,$D0,$0B,$AD,$82,$02,$29,$40,$F0,$04,$A9,$01,$85,$BF,$A9
       .byte $4B,$85,$B5,$60,$A5,$BF,$F0,$15,$A5,$B2,$85,$D0,$29,$01,$85,$B3
       .byte $A5,$D4,$29,$03,$85,$BC,$20,$E3,$FC,$20,$12,$F7,$60,$A5,$B2,$C5
       .byte $B4,$F0,$0C,$18,$69,$01,$29,$03,$85,$B2,$A9,$FF,$85,$BF,$60,$20
       .byte $88,$F9,$60,$A5,$BF,$F0,$28,$10,$2B,$A5,$B8,$C9,$01,$D0,$44,$20
       .byte $DD,$FF,$A5,$B0,$85,$BF,$D0,$33,$AD,$82,$02,$29,$40,$F0,$0C,$A5
       .byte $B4,$D0,$08,$20,$E6,$FF,$A9,$FF,$85,$BF,$60,$20,$D1,$F5,$60,$C6
       .byte $CD,$F0,$A1,$60,$A5,$B8,$C9,$01,$D0,$1F,$A5,$B0,$C5,$CA,$F0,$07
       .byte $85,$D4,$20,$DD,$FF,$D0,$8D,$20,$E6,$FF,$60,$A2,$FF,$86,$D4,$E8
       .byte $86,$B0,$60,$A2,$03,$20,$94,$F4,$60,$A2,$04,$20,$94,$F4,$60,$A9
       .byte $4B,$85,$CD,$A9,$FF,$85,$B0,$60,$A9,$06,$85,$B1,$A6,$B4,$86,$B2
       .byte $20,$13,$FD,$A9,$00,$85,$B0,$60,$A5,$B4,$F0,$67,$A9,$00,$85,$BA
       .byte $A6,$BE,$86,$BB,$B5,$84,$29,$1C,$49,$1C,$85,$D6,$B5,$84,$29,$03
       .byte $C5,$BC,$F0,$3A,$A5,$D6,$09,$20,$85,$D6,$B5,$84,$29,$1C,$C9,$14
       .byte $F0,$2C,$B5,$84,$29,$03,$85,$A5,$86,$A6,$A9,$00,$85,$D7,$A6,$BE
       .byte $B5,$84,$29,$03,$C5,$A5,$D0,$02,$E6,$D7,$CA,$E4,$BD,$10,$F1,$A6
       .byte $A6,$A5,$D7,$C9,$01,$D0,$07,$A5,$D6,$18,$69,$20,$85,$D6,$A5,$D6
       .byte $C5,$BA,$90,$06,$A5,$D6,$85,$BA,$86,$BB,$CA,$E4,$BD,$10,$A5,$A5
       .byte $BB,$10,$16,$A5,$B8,$C9,$01,$D0,$0A,$20,$DD,$FF,$A5,$B0,$18,$65
       .byte $BD,$10,$06,$A2,$05,$20,$94,$F4,$60,$AA,$B5,$84,$48,$8A,$A8,$A6
       .byte $B4,$B5,$98,$48,$98,$AA,$68,$95,$84,$A6,$B4,$68,$09,$80,$95,$98
       .byte $86,$E1,$20,$12,$F7,$60,$A9,$03,$85,$B1,$A9,$08,$85,$B2,$A2,$17
       .byte $BD,$F6,$FE,$95,$84,$CA,$10,$F8,$60,$C6,$B2,$10,$03,$20,$A3,$F6
       .byte $60,$A9,$04,$85,$B1,$60,$A2,$13,$B5,$84,$29,$7F,$95,$84,$CA,$10
       .byte $F7,$A6,$B4,$B5,$98,$29,$7F,$95,$98,$85,$D2,$20,$E2,$F3,$60
LF6C1: LDA    #$00    
       STA    $B1     
       STA    $CC     
       RTS            

LF6C8: .byte $A9,$00,$85,$80,$85,$81,$20,$66,$FF,$29,$03,$85,$B4,$20,$D9,$F6
       .byte $60,$A9,$01,$85,$B1,$60,$A9,$00,$85,$82,$85,$83,$E6,$B4,$A5,$B4
       .byte $29,$03,$85,$B4,$20,$88,$F6,$60
LF6F0: LDA    #$02    
       STA    $B1     
       LDX    #$00    
       STX    $CD     
       DEX            
       STX    $CF     
       RTS            

LF6FC: .byte $A5,$B8,$C9,$01,$D0,$06,$20,$C1,$F6,$4C,$24,$F0,$C6,$CD,$D0,$05
       .byte $20,$66,$FF,$85,$CC,$60,$A9,$00,$85,$D1,$A5,$BF,$C9,$02,$F0,$08
       .byte $A9,$04,$85,$D8,$A9,$FF,$30,$09,$A9,$03,$85,$D8,$A6,$D0,$BD,$23
       .byte $FF,$85,$D5,$A5,$B4,$18,$69,$01,$29,$03,$C5,$D5,$F0,$F7,$85,$D2
       .byte $85,$B2,$F0,$0C,$A9,$00,$A6,$D0,$F0,$04,$A6,$E1,$D0,$02,$A9,$4B
       .byte $85,$CD,$A9,$00,$A2,$03,$95,$C6,$CA,$10,$FB,$A6,$CA,$30,$04,$A9
       .byte $01,$95,$C6,$A5,$CB,$49,$01,$C5,$BC,$D0,$06,$A9,$BB,$A2,$06,$D0
       .byte $04,$A9,$FB,$A2,$07,$85,$C5,$86,$C4,$A9,$1C,$85,$C3,$A9,$08,$85
       .byte $B1,$A5,$B2,$D0,$03,$20,$B7,$F4,$A9,$00,$85,$D7,$85,$E2,$A9,$4B
       .byte $85,$B5,$60,$A6,$B2,$F0,$6A,$A5,$CD,$F0,$03,$C6,$CD,$60,$B5,$98
       .byte $30,$34,$C6,$B5,$F0,$01,$60,$E6,$D7,$A5,$D7,$C5,$D8,$F0,$23,$A9
       .byte $00,$85,$E2,$A5,$B2,$D0,$04,$A0,$4B,$84,$CD,$18,$69,$01,$29,$03
       .byte $C5,$D5,$F0,$F7,$85,$B2,$A5,$B2,$D0,$03,$20,$B7,$F4,$A9,$4B,$85
       .byte $B5,$60,$20,$9D,$F8,$60,$A6,$B2,$20,$13,$FD,$A5,$E2,$F0,$0E,$A6
       .byte $D7,$F0,$05,$20,$9F,$FC,$10,$43,$20,$B3,$FB,$10,$3E,$20,$40,$FB
       .byte $A6,$D7,$F0,$05,$20,$E2,$FB,$30,$03,$20,$55,$FB,$A9,$01,$85,$E2
       .byte $60,$A5,$B8,$C9,$01,$D0,$1E,$A6,$B2,$20,$13,$FD,$A5,$B0,$18,$65
       .byte $BD,$85,$DA,$20,$97,$F9,$F0,$09,$20,$DD,$FF,$A9,$FF,$85,$B0,$30
       .byte $0A,$20,$E6,$FF,$60,$A2,$05,$20,$94,$F4,$60,$A6,$DA,$B5,$84,$85
       .byte $D9,$A5,$D7,$D0,$0E,$A5,$D9,$85,$DC,$29,$03,$85,$D3,$A5,$B2,$85
       .byte $D6,$10,$4A,$A5,$D9,$29,$03,$C5,$BC,$F0,$24,$C5,$D3,$D0,$3E,$A5
       .byte $DC,$29,$03,$C5,$BC,$F0,$36,$A5,$DC,$29,$1C,$85,$A5,$A5,$D9,$29
       .byte $1C,$C5,$A5,$30,$28,$A5,$D9,$85,$DC,$A5,$B2,$85,$D6,$10,$1E,$A5
       .byte $DC,$29,$03,$C5,$BC,$D0,$0E,$A5,$DC,$29,$1C,$85,$A5,$A5,$D9,$29
       .byte $1C,$C5,$A5,$30,$08,$A5,$D9,$85,$DC,$A5,$B2,$85,$D6,$A6,$B2,$A5
       .byte $D9,$95,$98,$A6,$DA,$09,$80,$95,$84,$A5,$B2,$D0,$03,$4C,$A3,$F7
       .byte $60,$A9,$09,$85,$B1,$A5,$D6,$29,$01,$AA,$F6,$82,$A9,$00,$85,$E2
       .byte $A9,$25,$85,$B5,$60,$C6,$B5,$F0,$01,$60,$A5,$E2,$D0,$3C,$E6,$E2
       .byte $E6,$B5,$A2,$03,$B5,$98,$30,$1C,$29,$03,$A8,$A9,$01,$99,$C6,$00
       .byte $C4,$BC,$D0,$10,$C6,$C4,$B5,$98,$29,$1C,$4A,$4A,$A8,$A5,$C5,$39
       .byte $44,$FF,$85,$C5,$CA,$10,$DD,$A2,$07,$A5,$C5,$3D,$4C,$FF,$F0,$06
       .byte $8A,$0A,$0A,$85,$C3,$60,$CA,$10,$F0,$60,$A2,$03,$B5,$98,$09,$FF
       .byte $95,$98,$CA,$10,$F7,$A9,$00,$85,$D7,$E6,$D1,$A5,$D1,$C9,$05,$F0
       .byte $0A,$A5,$D6,$85,$D2,$85,$B2,$20,$79,$F7,$60,$A9,$80,$A2,$04,$95
       .byte $84,$CA,$10,$FB,$20,$24,$F9,$60,$A9,$0A,$85,$B1,$A6,$B3,$B5,$82
       .byte $C9,$03,$30,$08,$C9,$05,$F0,$0C,$A9,$01,$D0,$10,$8A,$49,$01,$AA
       .byte $A9,$02,$D0,$08,$A5,$D5,$C9,$FF,$F0,$F6,$A9,$04,$85,$E8,$86,$E7
       .byte $86,$CE,$A9,$10,$85,$B5,$60,$A5,$E8,$F0,$1D,$C6,$B5,$A5,$B5,$C9
       .byte $04,$F0,$05,$C9,$00,$F0,$0A,$60,$A6,$E7,$F6,$80,$A5,$B5,$85,$CF
       .byte $60,$C6,$E8,$A9,$10,$85,$B5,$60,$A5,$80,$C9,$0A,$10,$0A,$A5,$81
       .byte $C9,$0A,$10,$04,$20,$88,$F9,$60,$20,$F0,$F6,$60,$A9,$0B,$85,$B1
       .byte $60,$A5,$B8,$C9,$01,$D0,$03,$20,$D9,$F6,$60,$A6,$DA,$B5,$84,$10
       .byte $03,$A9,$00,$60,$A5,$B2,$C5,$D2,$F0,$2C,$B5,$84,$29,$03,$C5,$D3
       .byte $F0,$24,$A9,$00,$85,$DB,$A6,$BE,$B5,$84,$29,$80,$C9,$80,$F0,$0A
       .byte $B5,$84,$29,$03,$C5,$D3,$D0,$02,$E6,$DB,$CA,$E4,$BD,$10,$E9,$A5
       .byte $DB,$F0,$03,$A9,$00,$60,$A9,$01,$60,$A9,$00,$85,$C2,$85,$D8,$85
       .byte $D5,$85,$DF,$A5,$D1,$09,$08,$29,$1F,$85,$B6,$49,$01,$85,$B7,$A6
       .byte $BE,$B5,$84,$29,$03,$C5,$D1,$D0,$0E,$B5,$84,$20,$CE,$FA,$18,$65
       .byte $D5,$85,$D5,$E6,$C2,$D0,$0C,$B5,$84,$29,$1F,$C5,$B7,$D0,$04,$A9
       .byte $06,$D0,$EB,$CA,$E4,$BD,$10,$D9,$A0,$03,$A9,$00,$85,$D7,$85,$DD
       .byte $A6,$BE,$C4,$D1,$F0,$2B,$84,$A5,$B5,$84,$C5,$B7,$F0,$12,$29,$03
       .byte $C5,$A5,$D0,$0C,$E6,$D7,$B5,$84,$29,$1C,$C9,$14,$D0,$02,$E6,$DD
       .byte $CA,$E4,$BD,$10,$DD,$A5,$D7,$C9,$01,$D0,$06,$A5,$DD,$F0,$02,$E6
       .byte $D8,$88,$10,$C6,$A6,$C2,$BD,$34,$FF,$18,$A6,$D8,$7D,$3A,$FF,$18
       .byte $65,$D5,$85,$D5,$A5,$B1,$C9,$05,$D0,$31,$A5,$B4,$45,$B2,$29,$01
       .byte $D0,$0C,$A5,$B4,$C5,$B2,$D0,$23,$A9,$01,$85,$DF,$D0,$04,$A9,$02
       .byte $85,$DF,$A5,$D2,$20,$CE,$FA,$85,$A5,$A5,$DF,$C9,$01,$F0,$11,$A5
       .byte $D5,$38,$E5,$A5,$38,$E9,$03,$30,$03,$85,$D5,$60,$A9,$00,$F0,$F9
       .byte $A5,$D5,$18,$65,$A5,$85,$D5,$A5,$C2,$C9,$03,$30,$EE,$F0,$0D,$C9
       .byte $05,$F0,$0D,$A9,$03,$18,$65,$D5,$85,$D5,$D0,$04,$A9,$04,$D0,$F5
       .byte $A5,$C2,$18,$65,$D8,$C9,$05,$D0,$D2,$A5,$D5,$38,$E9,$02,$30,$CC
       .byte $10,$C7,$29,$1F,$C5,$B7,$F0,$09,$29,$1C,$4A,$4A,$A8,$B9,$3E,$FF
       .byte $60,$A9,$06,$60,$A5,$D5,$C9,$15,$10,$10,$C9,$14,$F0,$10,$C9,$0E
       .byte $10,$17,$C9,$0D,$F0,$17,$A9,$00,$F0,$47,$A9,$02,$D0,$43,$A5,$B4
       .byte $18,$69,$01,$29,$03,$C5,$B2,$F0,$F1,$A9,$01,$D0,$34,$A5,$B2,$29
       .byte $01,$F0,$06,$A6,$81,$A4,$80,$10,$04,$A6,$80,$A4,$81,$E0,$09,$D0
       .byte $0C,$C0,$08,$10,$18,$C0,$06,$30,$14,$A9,$01,$D0,$14,$E0,$06,$D0
       .byte $0C,$C0,$04,$10,$08,$C0,$02,$30,$04,$A9,$01,$D0,$04,$A9,$00,$F0
       .byte $00,$85,$BF,$60,$A2,$04,$86,$A7,$8A,$18,$65,$BD,$85,$DA,$20,$97
       .byte $F9,$A6,$A7,$95,$DD,$CA,$10,$EE,$60,$A9,$00,$85,$C2,$A9,$FF,$85
       .byte $E7,$85,$E9,$A5,$BE,$85,$A5,$A2,$04,$B5,$DD,$F0,$44,$86,$A6,$A6
       .byte $A5,$B5,$84,$29,$1C,$85,$E4,$B5,$84,$A6,$A6,$29,$03,$C5,$BC,$D0
       .byte $13,$E6,$C2,$A5,$E4,$A4,$E9,$30,$04,$C5,$EA,$30,$24,$85,$EA,$86
       .byte $E9,$4C,$AD,$FB,$A8,$B9,$C6,$00,$D0,$04,$A9,$20,$D0,$02,$A9,$22
       .byte $18,$65,$E4,$85,$E4,$A4,$E7,$30,$04,$C5,$E8,$30,$04,$85,$E8,$86
       .byte $E7,$C6,$A5,$CA,$10,$B3,$60,$A5,$E9,$30,$21,$A5,$BF,$C9,$02,$D0
       .byte $06,$A5,$B2,$C5,$D0,$F0,$11,$A5,$EA,$C5,$C3,$D0,$0F,$A5,$C4,$4A
       .byte $85,$A8,$A5,$C2,$C5,$A8,$30,$04,$A5,$E9,$10,$04,$A5,$E7,$30,$F8
       .byte $18,$65,$BD,$85,$DA,$60,$A9,$FF,$85,$E7,$85,$E9,$85,$EB,$85,$ED
       .byte $A5,$DC,$29,$1C,$85,$E3,$A5,$DC,$29,$03,$C5,$BC,$F0,$04,$A9,$20
       .byte $D0,$02,$A9,$40,$18,$65,$E3,$85,$E3,$A4,$B2,$B9,$23,$FF,$C5,$D6
       .byte $D0,$04,$A9,$00,$F0,$02,$A9,$01,$85,$E5,$A4,$D1,$B9,$1E,$FF,$85
       .byte $E6,$A5,$BE,$85,$A5,$A2,$04,$B5,$DD,$F0,$72,$86,$A6,$A6,$A5,$B5
       .byte $84,$29,$1C,$85,$E4,$B5,$84,$A6,$A6,$29,$03,$C5,$BC,$F0,$08,$C5
       .byte $D3,$D0,$0D,$A9,$20,$D0,$02,$A9,$40,$18,$65,$E4,$85,$E4,$D0,$02
       .byte $A5,$E4,$A4,$EB,$30,$04,$C5,$EC,$10,$04,$85,$EC,$86,$EB,$C5,$E3
       .byte $30,$3B,$A4,$E7,$30,$04,$C5,$E8,$30,$04,$85,$E8,$86,$E7,$A4,$E9
       .byte $30,$04,$C5,$EA,$10,$04,$85,$EA,$86,$E9,$C9,$40,$30,$1F,$A4,$D3
       .byte $C4,$BC,$F0,$19,$A4,$ED,$30,$0A,$C5,$E6,$F0,$06,$30,$0B,$C5,$EE
       .byte $10,$0B,$85,$EE,$86,$ED,$4C,$99,$FC,$C5,$EE,$10,$F5,$C6,$A5,$CA
       .byte $10,$85,$60,$A5,$D7,$C9,$01,$D0,$10,$A5,$E7,$30,$08,$A5,$ED,$10
       .byte $30,$A5,$E7,$10,$2C,$A5,$EB,$10,$28,$C9,$02,$D0,$1C,$A5,$E5,$D0
       .byte $E8,$A5,$E3,$C9,$30,$30,$E2,$D0,$06,$A5,$ED,$10,$DC,$30,$E6,$C9
       .byte $40,$30,$E2,$C9,$54,$10,$DE,$30,$D0,$A5,$E5,$F0,$D8,$A5,$E9,$30
       .byte $D4,$18,$65,$BD,$85,$DA,$60,$A5,$BC,$09,$08,$85,$B6,$49,$01,$85
       .byte $B7,$A2,$17,$B5,$84,$29,$1F,$C5,$B6,$D0,$06,$A5,$BC,$09,$1C,$D0
       .byte $08,$C5,$B7,$D0,$0E,$A5,$BC,$09,$18,$85,$A8,$B5,$84,$29,$E0,$05
       .byte $A8,$95,$84,$CA,$10,$DD,$60,$BD,$27,$FF,$85,$BD,$18,$69,$04,$85
       .byte $BE,$60
LFD1E: STA    $A5     
       STY    $A6     
       AND    #$1C    
       LSR            
       LSR            
       JSR    LFF91   
       LDA    $A5     
       AND    #$60    
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       LDX    $A6     
       JSR    LFF8D   
       LDA    $A5     
       BMI    LFD44   
       AND    #$03    
       TAX            
       LDA    LFF30,X 
       EOR    $CC     
       RTS            

LFD44: LDA    #$0F    
       EOR    $CC     
       RTS            

LFD49: LDY    #$05    
LFD4B: STA    WSYNC   
       LDA    ($9C),Y 
       STA    GRP0    
       LDA    ($9E),Y 
       STA    GRP1    
       DEY            
       BPL    LFD4B   
       STA    WSYNC   
       RTS            

LFD5B: STA    WSYNC   
       STA    HMOVE   
       LDY    #$05    
LFD61: NOP            
       NOP            
       ROR    $A5     
       ROR    $A5     
       LDA    ($A0),Y 
       TAX            
       LDA    ($9C),Y 
       STA    GRP0    
       STX    GRP0    
       PHA            
       LDA    ($A2),Y 
       TAX            
       LDA    ($9E),Y 
       STA    GRP1    
       NOP            
       STX    GRP1    
       PLA            
       STA    WSYNC   
       DEY            
       BPL    LFD61   
       RTS            

LFD82: LDY    #$05    
       STX    $A8     
LFD86: LDX    $A8     
LFD88: STA    WSYNC   
       LDA    ($9C),Y 
       STA    GRP0    
       LDA    ($9E),Y 
       STA    GRP1    
       DEX            
       BPL    LFD88   
       DEY            
       BPL    LFD86   
       RTS            

LFD99: LDY    #$05    
LFD9B: STA    WSYNC   
       STY    $A6     
       LDA    ($9C),Y 
       STA    GRP0    
       LDA    ($9E),Y 
       STA    GRP1    
       LDA    ($A0),Y 
       TAX            
       LDA    ($A2),Y 
       TAY            
       ROR    $A5     
       LDA    VSYNC   
       LDA    VSYNC   
       STX    GRP0    
       STY    GRP1    
       LDY    $A6     
       DEY            
       BPL    LFD9B   
       RTS            

LFDBD: LDX    #$01    
LFDBF: LDA    LFDCA,Y 
       JSR    LFF71   
       DEY            
       DEX            
       BPL    LFDBF   
       RTS            

LFDCA: .byte $31,$97,$F1,$97,$35,$B5,$75,$66,$A2,$57,$C4,$35,$A2,$48,$F5
LFDD9: .byte $0D,$0E
LFDDB: JMP.ind ($00A6)
LFDDE: .byte $C8,$DE,$FC,$9B,$A8,$03,$EA,$E5,$8F,$B1,$53,$8D
LFDEA: .byte $F6,$F6,$F6,$F6,$F6,$F4,$F5,$F4,$F7,$F8,$F9,$F9,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$7C,$66,$66,$66
       .byte $66,$7C,$60,$60,$7C,$66,$66,$7C,$3C,$06,$06,$3C,$60,$3C,$3C,$66
       .byte $66,$66,$66,$66,$3C,$46,$06,$3E,$66,$3C,$EE,$5B,$5B,$5B,$DB,$4E
       .byte $3C,$66,$06,$06,$06,$0E,$3A,$64,$6A,$66,$66,$3C,$66,$66,$6C,$78
       .byte $6C,$66,$66,$66,$7E,$66,$3C,$18,$3C,$66,$06,$06,$06,$0E,$3C,$66
       .byte $06,$06,$06,$0E,$10,$38,$7C,$FE,$EE,$44,$18,$3C,$7E,$7E,$3C,$18
       .byte $18,$7E,$FF,$18,$3C,$18,$38,$BA,$FE,$7C,$38,$10,$18,$3C,$7E,$DB
       .byte $18,$18,$30,$60,$FF,$FF,$60,$30,$18,$18,$DB,$7E,$3C,$18,$0C,$06
       .byte $FF,$FF,$06,$0C,$00,$77,$55,$55,$55,$77,$00,$77,$52,$52,$56,$72
       .byte $00,$77,$54,$57,$51,$77,$00,$77,$51,$53,$51,$77,$00,$71,$51,$57
       .byte $55,$71,$00,$77,$51,$57,$54,$77,$00,$77,$55,$57,$54,$77,$00,$74
       .byte $54,$52,$51,$77,$00,$77,$55,$52,$55,$77,$00,$77,$51,$57,$55,$77
       .byte $00,$77,$25,$25,$65,$27,$00,$77,$22,$22,$66,$22,$00,$77,$24,$27
       .byte $61,$27,$00,$77,$21,$23,$61,$27,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$01,$01,$00,$00,$00,$00,$05,$05,$01,$01,$00,$00,$05,$05
       .byte $05,$05,$00,$00,$05,$05,$05,$05,$02,$02,$05,$05,$80,$84,$88,$8C
       .byte $90,$94,$A1,$A5,$A9,$AD,$B1,$B5,$C2,$C6,$CA,$CE,$D2,$D6,$E3,$E7
       .byte $EB,$EF,$F3,$F7,$00,$00,$00,$00
LFF12: .byte $0C,$18,$3C,$00,$4E,$54,$5A,$60
LFF1A: .byte $94,$05,$76,$F6,$44,$4C,$54,$5C,$5C,$02,$03,$00,$01,$00,$05,$0A
       .byte $0F
LFF2B: .byte $00,$08,$0C,$10,$1E
LFF30: .byte $64,$64,$00,$00,$00,$00,$00,$01,$04,$07,$00,$03,$05,$06,$01,$01
       .byte $08,$02,$02,$04,$FA,$F9,$FB,$F3,$EB,$DB,$BB,$7B,$01,$02,$00,$08
       .byte $10,$20,$40,$80
LFF54: LDA    $AC     
       ASL            
       ASL            
       ASL            
       EOR    $AC     
       ASL            
       ASL            
       ROL    $A9     
       ROL    $AA     
       ROL    $AB     
       ROL    $AC     
       RTS            

LFF66: LDX    #$08    
LFF68: JSR    LFF54   
       DEX            
       BNE    LFF68   
       LDA    $A9     
       RTS            

LFF71: STA    WSYNC   
       ROR    $A5     
       STA    HMP0,X  
       AND    #$0F    
       SEC            
LFF7A: SBC    #$01    
       BPL    LFF7A   
       STA    RESP0,X 
       RTS            

LFF81: LDY    #$04    
       BNE    LFF93   
LFF85: LDY    #$03    
       BNE    LFF93   
LFF89: LDY    #$02    
       BNE    LFF93   
LFF8D: LDY    #$01    
       BNE    LFF93   
LFF91: LDY    #$00    
LFF93: CLC            
       ADC    LFF2B,Y 
       ASL            
       STA    $A8     
       ASL            
       CLC            
       ADC    $A8     
       ADC    #$1E    
       STA    VSYNC,X 
       LDA    #$FE    
       ADC    #$00    
       STA    VBLANK,X
       RTS            

LFFA9: CLC            
       ADC    #$00    
       STA    VSYNC,X 
       LDA    #$FE    
       ADC    #$00    
       STA    VBLANK,X
       RTS            

LFFB5: TYA            
       ASL            
       ASL            
       CLC            
       ADC    #$0E    
       STA    VSYNC,X 
       LDA    #$FF    
       ADC    #$00    
       STA    VBLANK,X
       RTS            

LFFC4: LDY    #$04    
LFFC6: DEY            
       STY    $A8     
       LDA    ($AE),Y 
       STA    $A7     
       TYA            
       ASL            
       CLC            
       ADC    #$9C    
       TAX            
       LDA    $A7     
       JSR    LFFA9   
       LDY    $A8     
       BNE    LFFC6   
       RTS            

LFFDD: .byte $A9,$02,$85,$CE,$A9,$02,$85,$CF,$60,$A9,$03,$85,$CE,$A9,$08,$85
       .byte $CF,$60
LFFEF: .byte $17,$14,$13,$04
LFFF3: .byte $05,$1C,$05,$0F,$FF,$00,$00,$A2,$48,$00,$F0,$00,$F0
