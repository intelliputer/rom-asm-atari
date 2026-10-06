; Disassembly of roms/Ghost Manor (1).bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Ghost Manor (1).bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LFE2B   =   $FE2B
LFE4D   =   $FE4D
LFFE8   =   $FFE8

       ORG $F000
LF000: .byte $00,$18,$10,$38,$FE,$7C,$38,$30,$10,$1E,$1A,$51,$78,$70,$38,$38
       .byte $10,$00,$60,$0C,$00,$7C,$78,$30,$10,$10,$1E,$1A,$51,$78,$70,$38
       .byte $38,$10,$00,$44,$82,$38,$FC,$78,$30,$10,$10,$1E,$1A,$11,$78,$70
       .byte $78,$38,$10,$00,$0C,$80,$80,$1C,$F8,$78,$30,$10,$1E
LF03D: .byte $1A,$11,$78,$70,$78,$38,$10,$00,$18,$30,$00,$18,$7C,$38,$30,$10
       .byte $1E,$1A,$51,$78,$70,$38,$38,$10,$6C
LF056: .byte $5C,$0C,$AC,$AC,$AC,$AC,$A8,$AC,$AC,$AC,$3C,$3C,$1C,$1C,$1C,$1C
LF066: .byte $11,$22,$33,$44,$F0,$F0,$F0,$F0,$00,$3C,$38,$38,$38,$78,$7C,$7C
       .byte $7C,$3E,$3E,$19,$3C,$7C,$74,$7E,$38,$00,$60,$46,$8B,$2D,$7E,$3E
       .byte $7C,$7C,$3E,$3E,$19,$3C,$7C,$74,$7E,$38,$00,$46,$8B,$AD,$AE,$7E
       .byte $7C,$7C,$7C,$3E,$3E,$19,$3C,$7C,$74,$7E,$38,$00,$9E,$80,$B8,$BC
       .byte $1C,$3C,$7C,$7C,$3E
LF0AB: .byte $3E,$19,$3C,$7C,$74,$7E,$38,$00,$3C,$78,$00,$3C,$1E,$3E,$7C,$7C
       .byte $3E,$3E,$19,$3C,$7C,$74,$7E,$38,$46,$46,$48,$48,$48,$48,$48,$98
       .byte $8C,$8C,$8C,$3C,$3C,$3C,$3C,$48,$48
LF0D4: .byte $7F,$90,$A1,$B2,$F0,$F0,$F0,$F0
LF0DC: .byte $5C,$34,$45,$45,$41,$41
LF0E2: .byte $FD,$D7,$D9,$D9,$DB,$DB
LF0E8: .byte $F0,$80,$00,$00,$00,$00,$00,$00
LF0F0: .byte $FF,$FF,$FF,$FF,$1F,$07,$01,$00
LF0F8: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FE,$03,$03,$03,$03,$03,$03,$03,$03
       .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$00,$07,$00,$00,$07,$0F
       .byte $0A,$0F,$15,$15,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$42,$99,$A1
       .byte $A1,$99,$42,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$44,$4C,$40
       .byte $40,$44,$38,$00,$00,$00,$00,$00,$CF,$A7,$C8,$AF,$C7,$A8,$CF,$A7
       .byte $C8,$AF,$C7,$A8,$CF,$A7,$C8,$AF,$C0,$AF,$00,$F7,$03,$02,$F0,$F8
       .byte $A8,$F9,$54,$54,$00,$00,$00,$00,$00,$00,$00,$00,$1E,$21,$48,$4C
       .byte $4A,$4C,$21,$1E,$44,$44,$44,$54,$54,$6C,$44,$00,$44,$44,$44,$7C
       .byte $44,$44,$44,$00,$00,$00,$00,$00,$D7,$97,$57,$D6,$97,$5B,$EB,$8B
       .byte $75,$F4,$83,$78,$FC,$87,$78,$FF,$00,$FF,$00,$FF,$FF,$AA,$00,$00
       .byte $00,$FF,$00,$00,$00,$00,$00,$00,$00,$22,$14,$08,$14,$22,$80,$88
       .byte $88,$8B,$0A,$0B,$44,$44,$7C,$44,$44,$28,$10,$00,$38,$44,$44,$44
       .byte $44,$44,$38,$00,$00,$00,$00,$00,$75,$74,$75,$35,$74,$6B,$6D,$68
       .byte $57,$37,$C0,$1F,$3F,$E0,$1F,$FF,$00,$FF,$00,$FF,$FF,$AA,$00,$00
       .byte $00,$FF,$00,$00,$00,$00,$00,$00,$00,$64,$94,$95,$96,$64,$00,$BB
       .byte $A8,$BB,$A8,$BB,$44,$4C,$4C,$54,$64,$64,$44,$00,$38,$44,$04,$38
       .byte $40,$44,$38,$00,$00,$00,$00,$00,$F9,$F2,$09,$FA,$F1,$0A,$F9,$F2
       .byte $09,$FA,$F1,$0A,$F9,$F2,$09,$FA,$01,$FA,$00,$F7,$E0,$A0,$07,$0F
       .byte $0A,$CF,$15,$15,$00,$00,$00,$00,$00,$4C,$D2,$52,$52,$4C,$00,$80
       .byte $80,$80,$80,$80,$38,$44,$44,$44,$44,$44,$38,$00,$10,$10,$10,$10
       .byte $10,$10,$7C,$00,$00,$00,$00,$00,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0
       .byte $E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$C0,$00,$F0,$00,$00,$F0,$F8
       .byte $A8,$F8,$54,$54,$00,$00,$00,$00,$00,$88,$50,$20,$50,$88,$00,$00
       .byte $00,$00,$00,$00,$44,$48,$50,$78,$44,$44,$78,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LF280: .byte $BA,$8A,$92,$92,$92
LF285: .byte $F2,$F2,$F2,$F2,$F2,$00,$20,$20,$20,$20,$20,$70,$20,$00,$22,$22
       .byte $22,$22,$22,$77,$22,$00,$7E,$66,$5A,$5A,$66,$7E,$00,$00,$00,$40
       .byte $BF,$A7,$45,$00,$00,$00,$3E,$7D,$1F,$18,$18,$00,$18,$00,$18,$18
       .byte $18,$18,$7E,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LF2E0: .byte $00,$20,$40,$60,$80,$A0,$C0,$E0
LF2E8: .byte $08,$28,$48,$68,$88,$A8,$C8,$E8
LF2F0: .byte $10,$30,$50,$70,$90,$B0,$D0,$F0
LF2F8: .byte $18,$38,$58,$78,$98,$B8,$D8,$F8,$41,$42,$44,$48,$50,$60,$40,$FF
       .byte $82,$42,$22,$12,$0A,$06,$02,$FF,$FF,$7F,$7F,$5F,$4F,$47,$43,$41
       .byte $FF,$FE,$FE,$FA,$FA,$E2,$C2,$82,$41,$43,$44,$48,$50,$60,$40,$FF
       .byte $82,$C2,$22,$12,$0A,$06,$02,$FF,$FF,$7F,$7F,$5F,$4F,$47,$42,$41
       .byte $FF,$FE,$FE,$FA,$F2,$E2,$42,$82,$41,$43,$47,$48,$50,$60,$40,$FF
       .byte $82,$C2,$E2,$12,$0A,$06,$02,$FF,$FF,$7F,$7F,$5F,$4F,$44,$42,$41
       .byte $FF,$FE,$FE,$FA,$F2,$22,$42,$82,$41,$43,$47,$4F,$50,$60,$40,$FF
       .byte $82,$C2,$E2,$F2,$0A,$06,$02,$FF,$FF,$7F,$7F,$5F,$48,$44,$42,$41
       .byte $FF,$FE,$FE,$FA,$12,$22,$42,$82,$41,$43,$47,$4F,$5F,$60,$40,$FF
       .byte $82,$C2,$E2,$F2,$FA,$06,$02,$FF,$FF,$7F,$7F,$50,$48,$44,$42,$41
       .byte $FF,$FE,$FE,$0A,$12,$22,$42,$82,$41,$43,$47,$4F,$5F,$7F,$40,$FF
       .byte $82,$C2,$E2,$F2,$FA,$FE,$02,$FF,$FF,$7F,$60,$50,$48,$44,$42,$41
       .byte $FF,$FE,$06,$0A,$12,$22,$42,$82,$41,$43,$47,$4F,$5F,$7F,$40,$FF
       .byte $82,$C2,$E2,$F2,$FA,$FE,$02,$FF,$FF,$43,$60,$50,$48,$44,$42,$41
       .byte $FF,$C0,$86,$0A,$12,$22,$42,$82,$41,$43,$47,$4F,$5F,$7F,$7F,$FF
       .byte $82,$C2,$E2,$F2,$FA,$FE,$FE,$FF,$FF,$40,$60,$50,$48,$44,$42,$41
       .byte $FF,$02,$06,$0A,$12,$22,$42,$82
LF400: .byte $00,$00,$00,$00,$00,$00,$00,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
       .byte $FC,$FC,$FC,$78,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1E,$1E
       .byte $1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$0C,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LF442: .byte $00,$00,$00,$00,$00,$00,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0
       .byte $E0,$E0,$E0,$E0,$C0,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$38,$10,$00,$00,$00,$00,$00,$07
       .byte $C7,$C7,$C7,$C7,$C0,$C0,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LF484: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$CA,$00,$1A,$18,$14,$12,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$54,$7C,$7C,$7C,$7C,$44,$7C,$7C,$54,$54,$7C,$38,$10
       .byte $00,$00,$00,$00,$54,$7C,$7C,$7C,$7C,$44,$5C,$7C,$54,$74,$7C,$38
       .byte $10,$00,$0D,$FD,$ED,$DD,$CD,$BD,$AD,$9D,$8D,$7D,$6D,$5D,$4D,$3D
       .byte $2D,$1D,$0D,$C6,$44,$44,$6C,$28,$39,$55,$7E,$82,$7C,$90,$B8,$28
       .byte $7C,$54,$7C,$00,$00,$C0,$46,$44,$6C,$38,$54,$7C,$92,$7C,$92,$B9
       .byte $A1,$7D,$68,$7C,$00,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
       .byte $0C,$0C,$0C,$0C,$0C,$0C
LF52A: .byte $80,$7F,$7E,$7A,$68,$5E,$54,$4F,$4B,$48,$44,$3C,$34,$2C,$20,$18
       .byte $15,$13,$12,$14,$18,$1B,$20,$25,$2A,$2F,$35,$3A,$3F,$44,$49,$4E
       .byte $53,$58,$5D,$62,$67,$6C,$70,$73,$75,$73,$70,$6D,$68,$63,$60,$5C
       .byte $56,$50,$4A,$44,$40,$3C,$38,$34,$30,$2F,$31,$35,$3E,$4F,$60,$70
LF56A: .byte $10,$08,$06,$04,$03,$05,$06,$07,$05,$04,$04,$03,$04,$06,$08,$07
       .byte $05,$04,$06,$0A,$18,$1C,$1F,$1D,$1A,$18,$19,$1B,$1D,$1F,$20,$1E
       .byte $1C,$1A,$1C,$19,$17,$16,$18,$19,$1B,$1E,$21,$24,$27,$2A,$2D,$2F
       .byte $2E,$2D,$2C,$2A,$2C,$2E,$2F,$2D,$2B,$2A,$27,$24,$20,$1C,$18,$14
LF5AA: .byte $10,$83,$42,$76,$54,$69,$48,$04,$01,$01,$02,$02,$01,$01,$01,$02
LF5BA: .byte $27,$41,$00,$00,$00,$20,$50,$03,$22,$0F,$04,$A0,$08,$08,$0F,$10
       .byte $9B,$03,$10,$0F,$07,$00,$08,$20,$01,$0C,$96,$08,$08,$08,$00,$91
       .byte $08,$1F,$04,$08,$28,$03,$03,$0F,$02,$2D,$03,$01,$0F,$28,$00,$03
       .byte $00,$0F,$01,$91,$0F,$04,$0F,$20,$2D,$0F,$00,$0F,$03,$69,$0C,$02
       .byte $0F,$10,$46,$0C,$10,$08,$01,$4B,$0C,$11,$08,$01,$50,$0C,$12,$08
       .byte $03,$55,$0C,$14,$04,$33,$5A,$00,$00,$00,$04,$5F,$0C,$04,$04,$01
       .byte $64,$0C,$05,$06,$06,$69,$0C,$06,$04,$50,$6E,$00,$00,$00,$11,$73
       .byte $08,$04,$06,$1A,$78,$00,$00,$00,$20,$7D,$0E,$04,$06,$20,$82,$0E
       .byte $03,$08,$20,$87,$0E,$02,$08,$20,$8C,$0E,$03,$08,$20,$91,$0E,$04
       .byte $06,$01,$00,$00,$00,$00,$01,$73,$0E,$08,$0F,$18,$00,$03,$0C,$08
       .byte $01,$A5,$04,$08,$0F,$01,$AA,$04,$09,$0D,$08,$AF,$04,$0B,$08,$08
       .byte $41,$04,$0E,$04
LF66E: .byte $18,$05,$03,$0F,$0A,$18,$0A,$03,$0C,$0A,$18,$0F,$03,$0A,$0A,$18
       .byte $14,$03,$07,$0A,$30,$19,$03,$09,$0A,$0C,$1E,$03,$0A,$0A,$0C,$23
       .byte $03,$0B,$0A,$0C,$28,$03,$0C,$0A,$0C,$00,$03,$0D,$0A,$30,$32,$0C
       .byte $1D,$0F,$04,$37,$0C,$1D,$00,$08,$3C,$0C,$1D,$0A,$60,$41,$0C,$15
       .byte $0F,$30,$46,$0C,$1D,$0F,$04,$4B,$0C,$15,$00,$0C,$50,$0C,$15,$0C
       .byte $48,$55,$0C,$11,$0F,$30,$5A,$0C,$1D,$0F,$0C,$5F,$0C,$1D,$0A,$60
       .byte $C8,$0C,$15,$0F,$20,$69,$04,$1D,$0F,$10,$6E,$04,$0E,$0F,$10,$73
       .byte $04,$11,$0F,$20,$78,$04,$13,$0F,$08,$7D,$04,$15,$00,$08,$82,$04
       .byte $15,$0F,$20,$87,$04,$17,$0F,$10,$8C,$04,$15,$0F,$10,$91,$04,$13
       .byte $0F,$60,$C8,$04,$1D,$0F,$20,$9B,$04,$1D,$0F,$10,$A0,$04,$13,$0F
       .byte $10,$A5,$04,$15,$0F,$20,$AA,$04,$17,$0F,$08,$AF,$04,$1A,$00,$08
       .byte $B4,$04,$1A,$0F,$20,$B9,$04,$1D,$0F,$10,$BE,$04,$1A,$0F,$10,$C3
       .byte $04,$17,$0F,$60,$C8,$0C,$13,$0F,$7E,$C8,$00,$00,$00,$00,$00,$00
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
       .byte $00,$00
LF800: .byte $0A,$12,$1A,$22,$2A,$32,$3A,$42,$4A,$52,$1C,$22,$32,$2A,$26,$22
       .byte $1C,$00,$1C,$08,$08,$08,$08,$18,$08,$00,$3E,$20,$10,$0C,$02,$22
       .byte $1C,$00,$1C,$22,$02,$0C,$02,$22,$1C,$00,$04,$04,$3E,$24,$14,$0C
       .byte $04,$00,$1C,$22,$02,$02,$3C,$20,$3E,$00,$1C,$22,$22,$3C,$20,$10
       .byte $0C,$00,$10,$10,$10,$08,$04,$02,$3E,$00,$1C,$22,$22,$1C,$22,$22
       .byte $1C,$00,$18,$04,$02,$1E,$22,$22,$1C,$00
LF85A: LDA    #$3C    
       STA    $C0     
       LDA    #$7C    
       STA    $C2     
       LDA    #$BC    
       STA    $C4     
       LDA    #$FC    
       STA    $C6     
       LDA    #$3C    
       STA    $C8     
       LDA    #$7C    
       STA    $CA     
       LDA    #$F1    
       STA    $C1     
       STA    $C3     
       STA    $C5     
       STA    $C7     
       LDA    #$F2    
       STA    $C9     
       STA    $CB     
       RTS            


START:
LF883: CLD            
       SEI            
       LDA    #$00    
       TAX            
LF888: STA    VSYNC,X 
       DEX            
       BNE    LF888   
       DEX            
       TXS            
       LDA    #$07    
       STA    $BB     
       STA    $BA     
       LDA    #$18    
       STA    $8D     
       INC    $CF     
       LDA    #$00    
       STA    $DA     
       JSR    LF85A   
LF8A2: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    CTRLPF  
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDA    #$90    
       EOR    $BD     
       STA    COLUBK  
       LDA    #$D4    
       EOR    $BD     
       STA    COLUPF  
       LDA    $CF     
       BNE    LF8D7   
       LDA    #$FC    
       EOR    $BD     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
       JSR    LFF57   
       LDY    #$33    
       BNE    LF8D9   
LF8D7: LDY    #$3C    
LF8D9: STA    WSYNC   
       DEY            
       CPY    $CF     
       BNE    LF8D9   
       LDA    #$36    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LFF57   
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$08    
       STA    REFP1   
       LDY    #$07    
LF8FD: LDA    LF0F8,Y 
       STA    PF2     
       LDA    LF0F0,Y 
       STA    PF1     
       LDA    LF0E8,Y 
       STA    PF0     
       STA    WSYNC   
       DEY            
       BNE    LF8FD   
       LDA    #$D4    
       EOR    $BD     
       STA    COLUBK  
       LDA    #$08    
       EOR    $BD     
       STA    COLUPF  
       LDA    #$00    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       LDA    #$7F    
       STA    PF2     
       LDX    #$07    
LF92B: STX    WSYNC   
       DEX            
       BNE    LF92B   
       STX    PF1     
       STX    PF2     
       LDA    #$38    
       STA    $88     
       LDA    #$48    
       STA    $89     
       JSR    LFF3B   
       INX            
       JSR    LFF3B   
       STX    WSYNC   
       STX    WSYNC   
       LDX    #$3C    
       LDY    #$3C    
       CLV            
LF94C: STA    WSYNC   
       CPY    $CF     
       BCS    LF95D   
       LDA    LF400,X 
       STA    PF1     
       LDA    LF442,X 
       STA    PF2     
       DEX            
LF95D: STA    WSYNC   
       CPY    #$29    
       BCS    LF981   
       CPY    $8D     
       BCC    LF981   
       LDA    LF056,Y 
       STA    GRP0    
       LDA    LF0AB,Y 
       EOR    $BD     
       STA    COLUP0  
       LDA    $EFE8,Y 
       STA    GRP1    
       LDA    LF03D,Y 
       EOR    $BD     
       STA    COLUP1  
       BVC    LF987   
LF981: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
LF987: DEY            
       BNE    LF94C   
       STY    PF1     
       STY    PF2     
       LDA    #$20    
       STA    TIM64T  
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       INC    $CE     
       LDA    $CE     
       CMP    #$06    
       BNE    LF9E6   
       LDA    #$00    
       STA    $CE     
       BIT    $82     
       BPL    LF9D8   
       LDA    $CF     
       BNE    LF9C4   
       INC    $BD     
       BEQ    LF9C1   
       JSR    LFA9C   
       BIT    INPT4   
       BPL    LF9C1   
       BIT    SWCHA   
       BPL    LF9C1   
       BVC    LF9C1   
       BNE    LF9E6   
LF9C1: JMP    LF883   
LF9C4: INC    $C0     
       INC    $C2     
       INC    $C4     
       INC    $C6     
       INC    $C8     
       INC    $CA     
       DEC    $CF     
       BVC    LF9E6   
       INC    $8D     
       BPL    LF9E6   
LF9D8: DEC    $C0     
       DEC    $C2     
       DEC    $C4     
       DEC    $C6     
       DEC    $C8     
       DEC    $CA     
       INC    $CF     
LF9E6: LDY    INTIM   
       BNE    LF9E6   
       LDA    #$02    
       STA    WSYNC   
       LDY    #$3C    
       CPY    $CF     
       BEQ    LFA1D   
       STA    VSYNC   
       STA    WSYNC   
       LDA    SWCHB   
       AND    #$01    
       BEQ    LF9C1   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STY    VSYNC   
       LDA    #$23    
       STA    TIM64T  
       JSR    LFF23   
       JSR    LFA71   
LFA13: LDA    INTIM   
       BNE    LFA13   
       STA    VBLANK  
       JMP    LF8A2   
LFA1D: JMP    LFAED   
LFA20: BIT    $82     
       BVS    LFA32   
       LDA    #$00    
       STA    $DC     
       STA    $DD     
       LDA    #$64    
       STA    $DA     
       LDA    #$96    
       BNE    LFA38   
LFA32: LDA    #$2D    
       STA    $DA     
       LDA    #$C8    
LFA38: STA    $DB     
       LDA    #$00    
       STA    $C0     
       LDA    #$40    
       STA    $C2     
       LDA    #$80    
       STA    $C4     
       LDA    #$C0    
       STA    $C6     
       LDA    #$00    
       STA    $C8     
       LDA    #$40    
       STA    $CA     
       LDA    #$F1    
       STA    $C1     
       STA    $C3     
       STA    $C5     
       STA    $C7     
       LDA    #$F2    
       STA    $C9     
       STA    $CB     
       LDA    #$3B    
       STA    $CF     
       LDA    #$00    
       STA    $BD     
       LDA    #$18    
       STA    $8D     
       JMP    LF8A2   
LFA71: LDX    #$01    
LFA73: DEC    $DC,X   
       BPL    LFA90   
       LDY    $DA,X   
       LDA    LF66E,Y 
       STA    $DC,X   
       INY            
       LDA    LF66E,Y 
       STA    $DA,X   
LFA84: INY            
       LDA    LF66E,Y 
       STA    AUDC0,X 
       INX            
       INX            
       CPX    #$06    
       BCC    LFA84   
LFA90: LDA    $DC,X   
       CMP    #$0F    
       BCS    LFA98   
       STA    AUDV0,X 
LFA98: DEX            
       BEQ    LFA73   
       RTS            

LFA9C: LDA    $86     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF800,X 
       STA    $C0     
       LDA    $86     
       AND    #$0F    
       TAX            
       LDA    LF800,X 
       STA    $C2     
       LDA    $85     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF800,X 
       STA    $C4     
       LDA    $85     
       AND    #$0F    
       TAX            
       LDA    LF800,X 
       STA    $C6     
       LDA    $84     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF800,X 
       STA    $C8     
       LDA    $84     
       AND    #$0F    
       TAX            
       LDA    LF800,X 
       STA    $CA     
       LDA    #$F8    
       STA    $C1     
       STA    $C3     
       STA    $C5     
       STA    $C7     
       STA    $C9     
       STA    $CB     
       RTS            

LFAED: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       LDA    $D8     
       SED            
       CLC            
       ADC    $84     
       STA    $84     
       LDA    $E8     
       ADC    $85     
       STA    $85     
       LDA    $E9     
       ADC    $86     
       STA    $86     
       CLD            
       LDA    SWCHB   
       AND    #$01    
       BNE    LFB12   
       JMP    LF883   
LFB12: STA    WSYNC   
       INC    $83     
       LDA    $83     
       LSR            
       LSR            
       STA    $CE     
       TAX            
       AND    #$03    
       TAY            
       LDA    #$08    
       BIT    SWCHB   
       BNE    LFB47   
       LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BNE    LFB36   
       LDA    #$6E    
       STA    $D0     
       BNE    LFB3B   
LFB36: LDA    LF0D4,Y 
       STA    $D0     
LFB3B: LDA    #$C3    
       STA    $D2     
       LDA    #$F0    
       STA    $D3     
       STA    $D1     
       BNE    LFB65   
LFB47: LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BNE    LFB56   
       LDA    #$00    
       STA    $D0     
       BCS    LFB5B   
LFB56: LDA    LF066,Y 
       STA    $D0     
LFB5B: LDA    #$55    
       STA    $D2     
       LDA    #$F0    
       STA    $D1     
       STA    $D3     
LFB65: BIT    $82     
       STA    WSYNC   
       BMI    LFBBE   
       LDA    $88     
       BIT    SWCHA   
       BMI    LFB82   
       CMP    #$86    
       BCS    LFB82   
       INC    $88     
       LDA    $87     
       AND    #$10    
       STA    $87     
       LDA    #$80    
       STA    $CF     
LFB82: BVS    LFB94   
       CMP    #$04    
       BCC    LFB94   
       DEC    $88     
       LDA    $87     
       ORA    #$08    
       STA    $87     
       LDA    #$40    
       STA    $CF     
LFB94: LDA    #$20    
       BIT    SWCHA   
       BNE    LFBA9   
       ORA    $CF     
       STA    $CF     
       LDA    $8D     
       CMP    #$03    
       BCC    LFBA9   
       SBC    #$01    
       STA    $8D     
LFBA9: LDA    #$10    
       BIT    SWCHA   
       BNE    LFBBE   
       ORA    $CF     
       STA    $CF     
       LDA    $8D     
       CMP    $DE     
       BCS    LFBBE   
       ADC    #$01    
       STA    $8D     
LFBBE: STA    WSYNC   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    CTRLPF  
       LDA    LF484,X 
       BNE    LFBD5   
       LDA    #$90    
LFBD5: STA    COLUBK  
       STA    $BD     
       LDA    #$D4    
       STA    COLUPF  
       LDA    #$0C    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    REFP0   
       STA    REFP1   
       STA    WSYNC   
       STA    VSYNC   
       STA    $D8     
       STA    $E8     
       STA    $E9     
       LDA    #$24    
       STA    TIM64T  
       LDA    $83     
       BNE    LFC18   
       DEC    $BA     
       BNE    LFC18   
       DEC    $BB     
       BNE    LFC14   
       LDA    #$C0    
       STA    $82     
LFC14: LDA    #$07    
       STA    $BA     
LFC18: JSR    LFF23   
       JSR    LFA9C   
       LDA    $CF     
       BEQ    LFC2E   
       LDA    $CE     
       AND    #$03    
       BNE    LFC2E   
       STA    $DC     
       LDA    #$1E    
       STA    $DA     
LFC2E: JSR    LFF00   
LFC31: LDA    INTIM   
       BNE    LFC31   
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    VBLANK  
       BIT    $B8     
       BVC    LFC48   
       BPL    LFC48   
       LDA    #$01    
       BNE    LFC52   
LFC48: BVS    LFC50   
       BMI    LFC50   
       LDA    #$07    
       BNE    LFC52   
LFC50: LDA    #$03    
LFC52: AND    $83     
       BNE    LFC70   
       LDA    $89     
       CMP    $88     
       BCS    LFC66   
       ADC    #$01    
       STA    $89     
       LDA    $87     
       AND    #$08    
       BCC    LFC6E   
LFC66: SBC    #$01    
       STA    $89     
       LDA    $87     
       ORA    #$10    
LFC6E: STA    $87     
LFC70: STA    WSYNC   
       LDY    #$07    
       JSR    LFF57   
       LDX    $BB     
       LDA    LF2E0,X 
       STA    $C4     
       LDA    LF2E8,X 
       STA    $C6     
       LDA    #$F3    
       STA    $C5     
       STA    $C7     
       LDA    #$BA    
       STA    $C0     
       STA    $C2     
       STA    $C8     
       STA    $CA     
       LDA    #$F2    
       STA    $C1     
       STA    $C3     
       STA    $C9     
       STA    $CB     
       LDA    $D9     
       CMP    #$03    
       BNE    LFCA7   
       LDX    #$B2    
       STX    $C8     
LFCA7: CMP    #$02    
       BCC    LFCAF   
       LDA    #$B2    
       STA    $CA     
LFCAF: LDA    $80     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       CPX    #$05    
       BCC    LFCBC   
       LDX    #$04    
LFCBC: LDA    LF280,X 
       STA    $C0     
       LDA    LF285,X 
       STA    $C1     
       DEX            
       DEX            
       BMI    LFCD4   
       LDA    LF280,X 
       STA    $C2     
       LDA    LF285,X 
       STA    $C3     
LFCD4: LDY    #$07    
       JSR    LFF57   
       LDX    $BB     
       LDA    LF2F0,X 
       STA    $C4     
       LDA    LF2F8,X 
       STA    $C6     
       LDA    #$F3    
       STA    $C5     
       STA    $C7     
       LDA    #$BA    
       STA    $C8     
       STA    $CA     
       LDA    #$F2    
       STA    $C9     
       STA    $CB     
       BIT    $B8     
       BVS    LFCFF   
       LDA    #$AA    
       STA    $C8     
LFCFF: LDA    $D9     
       BEQ    LFD07   
       LDA    #$B2    
       STA    $CA     
LFD07: LDA    $80     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF800,X 
       STA    $C0     
       LDA    $80     
       AND    #$0F    
       TAX            
       LDA    LF800,X 
       STA    $C2     
       LDA    #$F8    
       STA    $C1     
       STA    $C3     
       LDY    #$07    
       JSR    LFF57   
       LDX    $82     
       BEQ    LFD5C   
       BPL    LFD44   
       DEC    $B9     
       BPL    LFD36   
       LDA    #$1E    
       STA    $B9     
LFD36: BNE    LFD3B   
       JMP    LFA20   
LFD3B: DEC    $83     
       LDA    $82     
       AND    #$07    
       BEQ    LFD5C   
       TAX            
LFD44: STY    NUSIZ0  
       STY    NUSIZ1  
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       LDY    LF0DC,X 
       LDA    LF0E2,X 
       JMP    LFFE1   
LFD59: .byte $4C,$20,$FA
LFD5C: LDA    #$00    
       STA    $C0     
       LDA    #$40    
       STA    $C2     
       LDA    #$80    
       STA    $C4     
       LDA    #$C0    
       STA    $C6     
       LDA    #$00    
       STA    $C8     
       LDA    #$40    
       STA    $CA     
       LDA    #$F1    
       STA    $C1     
       STA    $C3     
       STA    $C5     
       STA    $C7     
       LDA    #$F2    
       STA    $C9     
       STA    $CB     
       LDA    #$36    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$2C    
       STY    $DE     
       LDA    SWCHB   
       STA    $B8     
       BPL    LFDA7   
       LDA    #$19    
       STA    $D6     
       LDA    #$F5    
       STA    $D7     
       LDA    #$F7    
       STA    $D4     
       LDA    #$F4    
       STA    $D5     
       BNE    LFDB7   
LFDA7: LDA    #$E6    
       STA    $D6     
       LDA    #$F4    
       STA    $D7     
       LDA    #$C4    
       STA    $D4     
       LDA    #$F4    
       STA    $D5     
LFDB7: LDY    #$1B    
       JSR    LFF57   
       STY    NUSIZ0  
       STY    NUSIZ1  
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       LDY    #$07    
LFDCA: LDA    LF0F8,Y 
       STA    PF2     
       LDA    LF0F0,Y 
       STA    PF1     
       LDA    LF0E8,Y 
       STA    PF0     
       STA    WSYNC   
       DEY            
       BNE    LFDCA   
       LDA    #$D4    
       STA    COLUBK  
       LDA    #$08    
       STA    COLUPF  
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       LDA    #$7F    
       STA    PF2     
       LDX    #$00    
       JSR    LFF3B   
       LDA    $87     
       STA    REFP0   
       LSR            
       STA    REFP1   
       LDX    $CE     
       LDA    LF52A,X 
       STA    $89     
       LDA    LF56A,X 
       STA    $8E     
       LDX    #$01    
       JSR    LFF3B   
       LDX    #$41    
LFE17: STA    WSYNC   
       TXA            
       SEC            
       SBC    $8D     
       BCC    LFE2B   
       CMP    #$11    
       BCS    LFE2B   
       TAY            
       LDA    ($D2),Y 
       STA    COLUP0  
       LDA    ($D0),Y 
       BIT.w  $00A9   
       STA    GRP0    
       STA    WSYNC   
       LDA    LF400,X 
       STA    PF1     
       LDA    LF442,X 
       STA    PF2     
       TXA            
       SEC            
       SBC    $8E     
       BCC    LFE4D   
       CMP    #$10    
       BCS    LFE4D   
       TAY            
       LDA    ($D6),Y 
       STA    COLUP1  
       LDA    ($D4),Y 
       BIT.w  $00A9   
       STA    GRP1    
       DEX            
       BNE    LFE17   
       LDA    #$20    
       STA    TIM64T  
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       BIT    CXP0FB  
       BPL    LFE9B   
       BIT    CXP1FB  
       BPL    LFE9B   
       BIT    CXPPMM  
       BPL    LFE9B   
       LDA    SWCHA   
       AND    #$C0    
       CMP    #$C0    
       BEQ    LFE9B   
       LDA    $83     
       AND    #$0F    
       BNE    LFE9B   
       LDA    #$10    
       STA    $D8     
       LDA    #$3C    
       STA    $DB     
       LDA    #$00    
       STA    $DD     
       CLC            
       SED            
       LDA    $80     
       ADC    #$01    
       STA    $80     
       CLD            
LFE8F: STA    CXCLR   
LFE91: LDA    INTIM   
       BNE    LFE91   
       STA    $CF     
       JMP    LFAED   
LFE9B: LDA    $80     
       BIT    $B8     
       BPL    LFEA9   
       BVC    LFEB1   
       CMP    #$10    
       BCC    LFE8F   
       BCS    LFEBB   
LFEA9: BVC    LFEB7   
       CMP    #$20    
       BCC    LFE8F   
       BCS    LFEBB   
LFEB1: CMP    #$15    
       BCC    LFE8F   
       BCS    LFEBB   
LFEB7: CMP    #$25    
       BCC    LFE8F   
LFEBB: LDX    #$0F    
LFEBD: LDA    LF5AA,X 
       STA    $90,X   
       DEX            
       BNE    LFEBD   
       LDA    #$04    
       STA    $88     
       LDA    #$50    
       STA    $89     
       LDA    $CE     
       LSR            
       LSR            
       AND    #$03    
       STA    $DF     
       INC    $82     
       BNE    LFE8F   
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
LFF00: LDX    #$01    
LFF02: DEC    $DC,X   
       BPL    LFF1F   
       LDY    $DA,X   
       LDA    LF5BA,Y 
       STA    $DC,X   
       INY            
       LDA    LF5BA,Y 
       STA    $DA,X   
LFF13: INY            
       LDA    LF5BA,Y 
       STA    AUDC0,X 
       INX            
       INX            
       CPX    #$06    
       BCC    LFF13   
LFF1F: DEX            
       BEQ    LFF02   
       RTS            

LFF23: STA    WSYNC   
       LDY    #$06    
LFF27: DEY            
       BPL    LFF27   
       STA    RESP0   
       STA    RESP1   
       LDY    #$D0    
       STY    HMP0    
       LDY    #$E0    
       STY    HMP1    
       STY    WSYNC   
       STA    HMOVE   
       RTS            

LFF3B: SEC            
       STA    WSYNC   
       STA    HMCLR   
       LDA    $88,X   
LFF42: SBC    #$0F    
       BCS    LFF42   
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    RESP0,X 
       ADC    #$80    
       STA    HMP0,X  
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFF57: STY    $CD     
       LDA    ($CA),Y 
       STA    WSYNC   
       STA    $CC     
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    ($C4),Y 
       STA    GRP0    
       LDA    ($C8),Y 
       TAX            
       LDA    ($C6),Y 
       LDY    $CC     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STX    GRP0    
       LDY    $CD     
       DEY            
       BPL    LFF57   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

LFF87: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFE1: STY    $EE     
       STA    $EF     
       LDA    #$AD    
       STA    $EA     
       LDA    #$F9    
       STA    $EB     
       LDA    #$FF    
       STA    $EC     
       LDA    #$4C    
       STA    $ED     
       JMP.w  $00EA   
LFFF8: .byte $83,$F8,$83,$F8,$83,$F8,$83,$F8
