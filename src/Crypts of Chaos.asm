; Disassembly of roms/Crypts of Chaos.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Crypts of Chaos.bin
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
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $18,$24,$24,$24,$24,$18,$1C,$08,$08,$08,$18,$08,$3C,$30,$08,$24
       .byte $24,$18,$18,$24,$08,$08,$24,$18,$04,$04,$04,$3E,$14,$0C,$18,$24
       .byte $04,$38,$20,$3C,$18,$24,$38,$20,$24,$18,$10,$10,$08,$08,$24,$3C
       .byte $38,$24,$18,$18,$24,$1C,$04,$04,$04,$1C,$14,$1C,$00,$00,$00,$00
       .byte $00,$00,$10,$A8,$A8
LF045: .byte $D5
LF046: .byte $82
LF047: .byte $E5
LF048: .byte $10,$20,$40,$80
LF04C: .byte $09,$11,$19,$21,$29,$2D,$2F,$5F,$61,$63,$67,$6B,$6F,$77,$83,$06
       .byte $0E,$16,$1E,$26,$2A,$2C,$5C,$5E,$60,$64,$68,$6C,$74,$83
LF06A: .byte $00,$E0,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$E0,$00
       .byte $C0,$E0,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$E0,$C0
       .byte $00,$E0,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$E0,$00
       .byte $80,$F0,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F8,$80
       .byte $C0,$E0,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$FF,$E0,$C0
       .byte $C0,$F0,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F8,$FF,$FF
       .byte $80,$F0,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F8,$80
       .byte $C0,$E0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$FF,$C0
       .byte $C0,$E0,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$E0,$FF,$C0
       .byte $C0,$F0,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$F8,$E0,$C0
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$EF,$FF,$FF,$FD,$F9,$FD,$FF,$FF,$FF,$FF
LF11A: .byte $00,$00,$00,$00,$03,$0F,$1F,$3F,$FF,$1F,$0F,$03,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$03,$0F,$1F,$3F,$1F,$0F,$FF,$03,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$03,$0F,$1F,$3F,$1F,$0F,$03,$FF,$00,$00,$00,$00
       .byte $00,$00,$00,$01,$07,$0F,$1F,$3F,$1F,$0F,$07,$03,$FF,$00,$00,$00
       .byte $00,$00,$00,$00,$03,$0F,$1F,$3F,$1F,$0F,$03,$00,$00,$FF,$00,$00
       .byte $00,$00,$00,$01,$07,$0F,$1F,$3F,$1F,$0F,$07,$03,$00,$00,$FF,$FF
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00
       .byte $00,$00,$00,$00,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$00,$00,$00,$FF,$00
       .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00
       .byte $FF,$FF,$FF,$F7,$FF,$0F,$FF,$FF,$FF,$FF,$FF,$EF,$FF,$FE,$FF,$FF
LF1CA: .byte $00,$32,$83,$00,$00,$00,$00,$46,$00,$AA,$00,$00,$5B,$00,$00,$00
       .byte $31,$00,$00,$4A,$00,$00,$54,$00,$00,$1A,$00,$1C,$00,$00,$2B,$00
LF1EA: .byte $F1,$00,$00,$00,$3B,$34,$45,$00,$49,$00,$00,$A2,$7D,$00,$70,$2B
       .byte $4D,$00,$39,$2C,$00,$00,$00,$42,$59,$00,$00,$60,$67,$00,$B5,$5A
LF20A: .byte $00,$00,$31,$82,$00,$00,$47,$00,$00,$00,$A9,$5C,$00,$00,$00,$00
       .byte $00,$30,$4B,$00,$56,$00,$00,$00,$00,$00,$19,$2E,$1B,$00,$00,$00
LF22A: .byte $00,$F0,$00,$3C,$35,$46,$00,$00,$76,$48,$A3,$2F,$00,$7C,$00,$00
       .byte $00,$3A,$47,$00,$2B,$48,$00,$00,$63,$58,$5F,$00,$00,$B6,$00,$64
LF24A: .byte $00,$30,$22,$00,$06,$06,$01,$13,$00,$36,$0A,$08,$20,$11,$0E,$0A
       .byte $20,$12,$12,$26,$01,$0A,$17,$12,$00,$22,$1A,$22,$1A,$00,$2E,$01
LF26A: .byte $00,$01,$1D,$31,$14,$0A,$1E,$0C,$01,$06,$32,$26,$0E,$00,$00,$12
       .byte $01,$0F,$24,$10,$14,$14,$00,$26,$01,$18,$20,$1A,$22,$0E,$0E,$00
LF28A: .byte $3C,$00,$06,$02,$0E,$1C,$2E,$14,$22,$0E,$10,$3A,$1E,$00,$40,$46
       .byte $1E,$0A,$1A,$0A,$00,$0A,$20,$2C,$24,$0C,$0C,$3E,$3E,$04,$2C,$22
LF2AA: .byte $00,$3E,$1A,$2E,$20,$12,$00,$0A,$26,$3A,$34,$0A,$14,$34,$08,$00
       .byte $00,$2E,$1E,$0A,$16,$12,$2A,$0C,$2A,$42,$42,$10,$10,$32,$0A,$28
LF2CA: .byte $01,$01,$42,$80,$80,$80,$80,$40,$40,$40,$80,$80,$46,$46,$40,$80
       .byte $80,$44,$44,$80,$80,$80,$46,$44,$44,$44,$80,$44,$80,$45,$45,$80
LF2EA: .byte $80,$80,$41,$80,$80,$80,$80,$45,$80,$80,$43,$43,$80,$80,$80,$43
       .byte $41,$80,$80,$80,$80,$41,$47,$80,$80,$80,$41,$80,$41,$80,$80,$41
LF30A: .byte $80,$80,$80,$80,$44,$47,$80,$80,$80,$80,$80,$80,$80,$03,$41,$44
       .byte $42,$42,$80,$80,$03,$80,$03,$43,$80,$42,$42,$43,$43,$80,$43,$03
LF32A: .byte $80,$80,$80,$80,$43,$46,$03,$03,$01,$42,$42,$47,$47,$80,$80,$45
       .byte $01,$01,$80,$80,$80,$40,$80,$45,$01,$40,$40,$46,$46,$47,$46,$80
LF34A: .byte $38,$A8,$90,$FE,$38,$6C,$44,$C6,$B8,$A8,$90,$7E,$38,$44,$C4,$02
       .byte $38,$A9,$92,$7C,$38,$6C,$44,$86,$20,$F8,$7C,$FE,$7E,$6F,$66,$CC
       .byte $5C,$36,$FF,$87,$4F,$7E,$49,$DB,$24,$5A,$7F,$43,$67,$3E,$49,$DB
       .byte $04,$6A,$F1,$61,$02,$1C,$22,$5C,$30,$7C,$32,$02,$3C,$42,$24,$58
       .byte $18,$3C,$18,$08,$10,$08,$12,$3C,$1C,$3C,$5E,$5E,$3E,$7C,$0C,$38
       .byte $3C,$7E,$56,$7C,$6E,$7E,$0C,$78,$3C,$7E,$5A,$7E,$66,$3C,$20,$3C
       .byte $18,$18,$28,$24,$24,$7E,$FF,$FF,$18,$38,$3C,$7C,$64,$66,$FF,$FF
       .byte $10,$18,$38,$7C,$64,$66,$FE,$FF,$18,$7E,$7F,$FF,$BD,$DA,$66,$18
       .byte $18,$7E,$7F,$C3,$A5,$DA,$66,$18,$18,$66,$5B,$A5,$A5,$DA,$66,$18
       .byte $09,$4A,$7E,$3C,$18,$18,$1C,$3C,$0A,$0A,$FE,$3C,$18,$18,$1C,$3C
       .byte $08,$09,$3E,$5C,$18,$18,$38,$3C,$5E,$C8,$53,$BD,$3E,$1E,$11,$22
       .byte $4C,$DE,$C8,$3B,$1D,$1E,$24,$4C,$0E,$5C,$D3,$F9,$1E,$1C,$22,$24
LF40A: .byte $60,$50,$40,$30,$20,$10
LF410: .byte $DB,$6B,$4D,$8D,$59,$7D,$5D,$2D
LF418: .byte $31,$2E,$2B,$28,$1F,$14,$0F,$04,$0F,$04,$0B,$04,$5A
LF425: .byte $10,$20,$FF,$20,$10,$00
LF42B: .byte $18,$24,$42,$42,$24,$18
LF431: .byte $04,$01,$FC,$01,$04,$00
LF437: .byte $1C,$22,$22,$14,$08,$04
LF43D: .byte $38,$54,$BA,$92,$54,$38
LF443: .byte $44,$4E,$44,$44,$24,$18
LF449: .byte $0E,$01,$09,$04,$04,$0F,$07,$09
LF451: .byte $1D,$1A,$03,$0A,$18,$08,$18,$1F
LF459: .byte $08,$01,$04,$00,$04,$04,$01,$04
LF461: .byte $04,$04,$08,$08,$04,$0C
LF467: .byte $08,$04,$07,$04,$08,$10
LF46D: .byte $1F,$12,$1F,$1F,$0C,$12

START:
       SEI            
       CLD            
       LDY    #$01    
       STY    $EB     
LF479: LDY    $EB     
       LDA    #$00    
       TAX            
LF47E: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF47E   
       STY    $EB     
       DEX            
       STX    $C9     
       LDA    #$3F    
       STA    $CA     
       LDA    #$42    
       STA    $8A     
       LDA    #$18    
       LDX    $EB     
       BEQ    LF4A3   
       LDA    #$00    
LF499: LSR    $C9     
       LSR    $CA     
       CLC            
       ADC    #$06    
       DEX            
       BNE    LF499   
LF4A3: STA    $88     
       STA    $EA     
       LDA    $EB     
       ASL            
       ASL            
       STA    $C2     
       LDA    #$31    
       STA    CTRLPF  
       LDA    #$24    
       STA    $B7     
       STA    $B5     
       LDA    #$10    
       STA    $DE     
       STA    $E6     
       LDA    #$3C    
       STA    $82     
       STA    $84     
       STA    $86     
       STA    $D6     
       STA    $D2     
       LDA    #$F0    
       STA    $81     
       STA    $83     
       STA    $85     
       STA    $87     
       STA    $89     
       STA    $8B     
       LDA    SWCHB   
       LSR            
       BCS    LF4E5   
       LDA    #$36    
       STA    $8A     
       STX    $88     
       INC    $C0     
LF4E5: DEC    $C0     
       JSR    LFE53   
       JSR    LFC14   
       JSR    LFE88   
       DEC    $C4     
       JMP    LF6EE   
LF4F5: LDX    $D0     
       BEQ    LF502   
       DEC    $D0     
       LDA    $BF     
       AND    #$80    
       STA    $BF     
       RTS            

LF502: LDY    #$03    
       LDA    LF048,Y 
       AND    SWCHA   
       BEQ    LF525   
       LDA    LF047,Y 
       AND    SWCHA   
       BEQ    LF539   
       LDA    LF046,Y 
       AND    SWCHA   
       BEQ    LF568   
       LDA    LF045,Y 
       AND    SWCHA   
       BEQ    LF56D   
       RTS            

LF525: LDA    $BF     
       CLC            
       ADC    #$01    
       STA    $BF     
       BMI    LF563   
       INC    $B5     
       LDA    #$8C    
       CMP    $B5     
       BCC    LF54A   
LF536: INC    $D0     
       RTS            

LF539: LDA    $BF     
       CLC            
       ADC    #$02    
       STA    $BF     
       BMI    LF563   
       DEC    $B5     
       LDA    #$0A    
       CMP    $B5     
       BCC    LF536   
LF54A: STA    $B5     
       LDA    $C8     
       BNE    LF536   
       LDA    #$40    
       STA    $D0     
       LDA    #$10    
       STA    $A1     
       LSR            
       STA    $9F     
       LSR            
       STA    $A6     
       STA    $9D     
       JMP    LFDDD   
LF563: LDX    #$20    
       STX    $D0     
       RTS            

LF568: LDA    #$80    
       STA    $BF     
       RTS            

LF56D: LDA    #$40    
       STA    $BF     
       INC    $D0     
       RTS            

LF574: STA    WSYNC   
       PHA            
       PLA            
       PHA            
       PLA            
       PHA            
       PLA            
       PHA            
       PLA            
       PHA            
       PLA            
       PHA            
       PLA            
       PHA            
       PLA            
       PHA            
       PLA            
       STA    RESP0   
       STA    RESP1   
       STA    HMCLR   
       STY    WSYNC   
       LDA    $D6     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $D7     
       STA    COLUBK  
       STA    CXCLR   
       LDA    #$10    
       STA    HMP1    
       STY    WSYNC   
       STA    HMOVE   
       LDY    #$05    
LF5A4: STA    WSYNC   
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($88),Y 
       STA    GRP1    
       LDX    #$01    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($84),Y 
       STA    GRP1    
       LDA    ($82),Y 
       TAX            
       LDA    ($80),Y 
       STX    GRP0    
       STA    GRP1    
       DEY            
       BPL    LF5A4   
       INY            
       STY    GRP0    
       STY    GRP1    
       STX    WSYNC   
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    $D2     
       STA    COLUP0  
       LDA    $DB     
       STA    NUSIZ1  
       LDX    #$02    
LF5E7: LDA    $AB,X   
       LDY    $B0,X   
       JSR    LFA6F   
       DEX            
       BPL    LF5E7   
       STX    WSYNC   
       STY    WSYNC   
LF5F5: LDA    $C8     
       STA    PF0     
       LDA    $D5     
       STA    COLUBK  
       LDA    $D4     
       STA    COLUPF  
       LDA    #$00    
       STA    $BB     
       STA    $A9     
       STA    $A8     
       STA    $BE     
       LDA    $BD     
       STA    REFP1   
       LDA    $D3     
       STA    COLUP1  
       LDY    #$88    
       PLA            
       STA    $BC     
       STA    WSYNC   
LF61A: DEY            
       BEQ    LF665   
       CPY    $AA     
       BCS    LF62B   
       LDX    $BE     
       LDA    $8C,X   
       STA    $A7     
       BEQ    LF62B   
       INC    $BE     
LF62B: CPY    $BC     
       BNE    LF648   
       LDX    $DE     
       LDA    LF06A,X 
       STA    $A9     
       LDA    LF11A,X 
       STA    $A8     
       LDX    $A7     
       STA    WSYNC   
       STX    GRP1    
       INC    $DE     
       PLA            
       STA    $BC     
       BNE    LF61A   
LF648: CPY    $BA     
       BCS    LF650   
       LDA    #$03    
       STA    $BB     
LF650: LDX    $A9     
       LDA    $A8     
       STA    WSYNC   
       STX    PF1     
       STA    PF2     
       LDA    $A7     
       STA    GRP1    
       LDA    $BB     
       STA    GRP0    
       JMP    LF61A   
LF665: STY    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $D7     
       STA    COLUBK  
       STA    HMCLR   
       LDX    #$FF    
       TXS            
       LDY    #$03    
       STY    GRP0    
       STY    WSYNC   
       STY    WSYNC   
       INX            
       STX    GRP0    
       STX    WSYNC   
       LDA    $D3     
       STA    COLUP0  
       STA    COLUP1  
       STY    WSYNC   
       STY    ENAM0   
       STY    WSYNC   
       STY    WSYNC   
       STX    ENAM0   
       STX    REFP1   
       STX    REFP0   
       STA    WSYNC   
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$03    
LF6A3: DEX            
       BPL    LF6A3   
       STA    RESP0   
       NOP            
       STA    RESP1   
       STA    WSYNC   
       STY    WSYNC   
       STY    HMOVE   
       LDX    #$05    
LF6B3: STA    WSYNC   
       LDA    LF437,X 
       STA    GRP0    
       LDA    LF425,X 
       STA    GRP1    
       PHA            
       PLA            
       NOP            
       LDA    LF431,X 
       TAY            
       LDA    LF42B,X 
       STY    GRP0    
       NOP            
       NOP            
       STA    GRP1    
       LDA    LF43D,X 
       STA    GRP0    
       LDA    LF443,X 
       STA    GRP1    
       DEX            
       BPL    LF6B3   
       STX    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       LDY    #$02    
LF6E6: STY    WSYNC   
       DEY            
       BPL    LF6E6   
       JMP    LF84A   
LF6EE: LDX    INTIM   
       BNE    LF6EE   
       DEX            
       LDA    #$43    
       STA    WSYNC   
       STA    TIM64T  
       STX    VBLANK  
       STX    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       INX            
       STX    VSYNC   
       LDA    #$00    
       STA    $C3     
       STA    $CE     
       STA    REFP1   
       LDX    $C0     
       INX            
       BEQ    LF74C   
       LDA    $E9     
       BEQ    LF743   
       INC    $E9     
       LDA    CXPPMM  
       BPL    LF743   
       LDA    $D2     
       CMP    #$0F    
       BEQ    LF731   
       LDX    $AA     
       DEX            
       DEX            
       STX    $BA     
       LDA    $C6     
       AND    #$02    
       BNE    LF743   
LF731: JSR    LFC06   
       AND    #$1F    
       STA    $B3     
       LDA    $C1     
       SEC            
       SBC    $B3     
       BPL    LF741   
       LDA    #$00    
LF741: STA    $C1     
LF743: JSR    LF983   
       JSR    LFD4A   
       JSR    LFB00   
LF74C: LDA    $DE     
       SEC            
       SBC    #$10    
       STA    $DE     
       LDX    $AA     
       BEQ    LF7C6   
       LDA    $CF     
       CMP    #$A8    
       BCC    LF77B   
       CPX    #$3C    
       BCC    LF767   
       LDA    #$18    
       STA    $8C     
       BNE    LF783   
LF767: LDY    #$00    
       CPX    #$1C    
       BCC    LF774   
       TAX            
       LDA    #$05    
       STA    $DB     
       BNE    LF7A3   
LF774: TAX            
       LDA    #$07    
       STA    $DB     
       BNE    LF7B6   
LF77B: CPX    #$38    
       BCC    LF78B   
       LDA    #$10    
       STA    $8C     
LF783: LDA    #$00    
       STA    $8D     
       STA    $DB     
       BEQ    LF7C6   
LF78B: CPX    #$1C    
       BCC    LF795   
       BNE    LF793   
       INC    $A2     
LF793: BCS    LF799   
LF795: LDA    #$05    
       STA    $DB     
LF799: LDX    $CF     
       LDY    #$00    
       LDA    $DB     
       CMP    #$05    
       BCS    LF7B6   
LF7A3: LDA    LF34A,X 
       STA.wy $008C,Y 
       INX            
       INY            
       CPY    #$08    
       BNE    LF7A3   
       LDA    #$00    
       STA.wy $008C,Y 
       BEQ    LF7C6   
LF7B6: LDA    LF34A,X 
       STA.wy $008C,Y 
       INY            
       STA.wy $008C,Y 
       INX            
       INY            
       CPY    #$10    
       BNE    LF7B6   
LF7C6: LDX    #$02    
LF7C8: LDY    $B5,X   
       JSR    LF96A   
       STA    $AB,X   
       STY    $B0,X   
       DEX            
       BPL    LF7C8   
       LDX    #$00    
       LDA    $DE     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LSR            
       BCC    LF7E2   
       LDX    #$0F    
LF7E2: LDA    LF418,Y 
       STA    $E8     
       LDA    $D4     
       CMP    #$30    
       BNE    LF7FD   
       LDA    $DC     
       CMP    #$03    
       BEQ    LF7F9   
       LDA    #$08    
       STA    $E8     
       BNE    LF7FD   
LF7F9: LDA    #$6A    
       STA    $E8     
LF7FD: LDA    LF04C,X 
       CMP    $E8     
       BCC    LF80B   
       LDA    $E8     
       LDY    #$FF    
       STY    $E8     
       DEX            
LF80B: PHA            
       CMP    #$83    
       BEQ    LF813   
       INX            
       BPL    LF7FD   
LF813: INC    $DA     
       BNE    LF833   
       LDX    #$00    
       BIT    SWCHB   
       BPL    LF81F   
       INX            
LF81F: BVC    LF822   
       INX            
LF822: JSR    LFC06   
       AND    #$03    
       BNE    LF830   
       LDA    $AA     
       BNE    LF833   
       JSR    LFE88   
LF830: DEX            
       BPL    LF822   
LF833: LDX    #$05    
LF835: LDA    $9D,X   
       STA    AUDC0,X 
       DEX            
       BPL    LF835   
LF83C: STA    CXCLR   
       LDA    INTIM   
       BNE    LF83C   
       STA    WSYNC   
       STA    VBLANK  
       JMP    LF574   
LF84A: STA    WSYNC   
       LDA    #$FF    
       STA    VBLANK  
       LDA    #$23    
       STA    TIM64T  
       DEC    $E6     
       BPL    LF872   
       INC    $E6     
       LDA    SWCHB   
       LSR            
       BCC    LF86F   
       LSR            
       BCS    LF872   
       LDX    $EB     
       INX            
       CPX    #$04    
       BNE    LF86D   
       LDX    #$00    
LF86D: STX    $EB     
LF86F: JMP    LF479   
LF872: LDX    $C0     
       INX            
       BNE    LF8AF   
       LDA    #$00    
       STA    $A1     
       STA    $A2     
       JSR    LFF46   
       LDA    $DA     
       AND    #$0F    
       BNE    LF8AC   
       LDA    $CF     
       CLC            
       ADC    #$08    
       CMP    #$C0    
       BNE    LF890   
       TXA            
LF890: STA    $CF     
       LDA    $DA     
       BNE    LF8AC   
       LDX    #$05    
LF898: LDA    $D2,X   
       CLC            
       ADC    #$09    
       AND    #$F7    
       STA    $D2,X   
       DEX            
       BPL    LF898   
       LDA    $EA     
       STA    $88     
       LDA    #$42    
       STA    $8A     
LF8AC: JMP    LF6EE   
LF8AF: JSR    LFCD8   
       LDA    $AA     
       BEQ    LF92C   
       INC    $A4     
       LDA    $D9     
       AND    #$07    
       TAX            
       BEQ    LF92C   
       CMP    #$01    
       BNE    LF8E2   
       LDA    $A2     
       CMP    #$03    
       BCS    LF8D5   
       LDA    $A4     
       CMP    #$10    
       BCS    LF92C   
       LDA    #$02    
       STA    $A2     
       BNE    LF92C   
LF8D5: JSR    LFC06   
       AND    #$3F    
       BNE    LF92C   
       LDA    #$10    
       STA    $A2     
       BNE    LF92C   
LF8E2: CMP    #$02    
       BEQ    LF92C   
       CMP    #$03    
       BNE    LF8FA   
       LDA    $A4     
       AND    #$07    
       CMP    #$03    
       BCS    LF8F6   
       INC    $A0     
       BPL    LF92C   
LF8F6: DEC    $A0     
       BPL    LF92C   
LF8FA: CMP    #$04    
       BNE    LF90D   
       LDA    $A4     
       AND    #$07    
       BNE    LF92C   
       JSR    LFC06   
       STA    $A0     
       STA    $A2     
       BNE    LF92C   
LF90D: CMP    #$05    
       BNE    LF921   
       LDA    $CD     
       CLC            
       ADC    #$08    
       STA    $A0     
       LDA    $CD     
       CLC            
       ADC    #$04    
       STA    $A2     
       BNE    LF92C   
LF921: CMP    #$06    
       BEQ    LF92C   
       LDA    $CF     
       CLC            
       ADC    #$07    
       STA    $A2     
LF92C: JSR    LF4F5   
       LDA    $BF     
       BPL    LF964   
       CMP    #$82    
       BEQ    LF951   
       CMP    #$81    
       BNE    LF964   
       LDA    $B7     
       CLC            
       ADC    #$10    
       CMP    #$84    
       BNE    LF94A   
       LDA    #$FF    
       STA    $C0     
       LDA    #$24    
LF94A: STA    $B7     
       INC    $C0     
       JMP    LF964   
LF951: LDA    $B7     
       SEC            
       SBC    #$10    
       CMP    #$14    
       BNE    LF960   
       LDA    #$06    
       STA    $C0     
       LDA    #$74    
LF960: STA    $B7     
       DEC    $C0     
LF964: JSR    LFF46   
       JMP    LF6EE   
LF96A: INY            
       TYA            
       AND    #$0F    
       STA    $B3     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $B3     
       CMP    #$0F    
       BCC    LF980   
       SBC    #$0F    
       INY            
LF980: EOR    #$07    
       RTS            

LF983: LDA    $B9     
       BEQ    LF98D   
       DEC    $B9     
       JSR    LFA83   
       RTS            

LF98D: LDA    INPT4   
       BPL    LF992   
       RTS            

LF992: LDA    $CC     
       BEQ    LF997   
       RTS            

LF997: LDA    $C0     
       STA    $A6     
       BNE    LF9BA   
       LDA    $C4     
       AND    $C5     
       BNE    LF9A4   
       RTS            

LF9A4: LDA    $DE     
       CMP    #$90    
       BCS    LF9AB   
       RTS            

LF9AB: LDA    $C4     
       EOR    $C5     
       STA    $C4     
       JSR    LFBEB   
       STA    $C3     
       STA    $CE     
       BNE    LF9D1   
LF9BA: CMP    #$01    
       BNE    LF9D3   
       LDA    #$0F    
       STA    $D2     
       ASL            
       STA    $BA     
       LDA    $C6     
       AND    #$01    
       BNE    LF9CD   
LF9CB: DEC    $E9     
LF9CD: LDA    #$20    
       STA    $B9     
LF9D1: BNE    LFA28   
LF9D3: CMP    #$02    
       BNE    LF9E7   
       LDY    $C9     
       BNE    LF9DC   
       RTS            

LF9DC: DEC    $C9     
       LDA    #$8F    
       STA    $BA     
       LSR            
       STA    $D2     
       BNE    LF9CB   
LF9E7: CMP    #$03    
       BNE    LFA2A   
       LDY    $CA     
       BNE    LF9F0   
       RTS            

LF9F0: LDA    #$10    
       STA    $CC     
       DEC    $CA     
       LDA    #$22    
       STA    $B9     
       LDA    $C6     
       AND    #$04    
       BNE    LFA24   
       JSR    LFC06   
       AND    #$3F    
       STA    $B3     
       LDA    $C1     
       CMP    $B3     
       BCS    LFA18   
       LDX    #$00    
       TXA            
       SEC            
       SBC    $C1     
       STX    $C1     
       JMP    LFA22   
LFA18: SEC            
       SBC    $B3     
       STA    $C1     
       LDA    $CB     
       SEC            
       SBC    $B3     
LFA22: STA    $CB     
LFA24: LDA    $D4     
       STA    $D1     
LFA28: BNE    LFA59   
LFA2A: CMP    #$04    
       BNE    LFA4A   
       LDA    $AA     
       BEQ    LFA59   
       LDA    $C6     
       AND    #$08    
       BEQ    LFA39   
       RTS            

LFA39: LDA    $D4     
       CMP    #$52    
       BNE    LFA40   
       RTS            

LFA40: LDY    #$00    
       STY    $AA     
       STY    $A2     
       STA    $B9     
       BEQ    LFA59   
LFA4A: LDA    #$1E    
       STA    $B9     
       LDA    $AA     
       BEQ    LFA56   
       DEC    $A6     
       BPL    LFA59   
LFA56: JSR    LFCD3   
LFA59: LDX    $C0     
LFA5B: LDA    LF461,X 
       STA    $9D     
       LDA    LF467,X 
       STA    $9F     
       LDA    LF46D,X 
       STA    $A1     
       LDA    #$00    
       STA    $A4     
       RTS            

LFA6F: STA    WSYNC   
       STA    HMCLR   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LFA79: DEY            
       BPL    LFA79   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFA83: LDX    $B9     
       LDA    $A6     
       CMP    #$05    
       BEQ    LFAC2   
       CMP    #$03    
       BEQ    LFAA6   
       CPX    #$12    
       BCC    LFA9E   
       CMP    #$00    
       BEQ    LFAFF   
       CMP    #$01    
       BEQ    LFAA3   
       DEC    $D2     
       RTS            

LFA9E: LDA    #$00    
       STA    $BA     
       RTS            

LFAA3: DEC    $BA     
       RTS            

LFAA6: LDA    $DA     
       LSR            
       BCS    LFAAC   
       RTS            

LFAAC: LDA    $D1     
       CLC            
       ADC    $CC     
       STA    $D4     
       LDA    $CC     
       STA    $D5     
       DEC    $CC     
       BPL    LFAC1   
       LDX    #$00    
       STX    $A6     
       STX    $CC     
LFAC1: RTS            

LFAC2: CPX    #$01    
       BNE    LFAFF   
       STX    $D0     
       LDA    $DD     
       STA    $B4     
       LDA    #$40    
       STA    $BF     
       JSR    LFDDD   
       LDA    $DD     
       SEC            
       SBC    $B4     
       PHA            
       LDA    $DF     
       BMI    LFAE0   
       ASL            
       BNE    LFAE1   
LFAE0: LSR            
LFAE1: STA    $DF     
       JSR    LFDDD   
       ASL    $BF     
       PLA            
       BEQ    LFAFF   
       STA    $E0     
       LDA    $DD     
       CLC            
       ADC    $E0     
       STA    $DD     
       LDA    $E2     
       STA    $E7     
       LDA    #$FF    
       STA    $C8     
       JMP    LFC14   
LFAFF: RTS            

LFB00: LDA    $AA     
       BNE    LFB05   
       RTS            

LFB05: LDA    $C1     
       BNE    LFB17   
       LDA    #$00    
       STA    $AA     
       STA    $8C     
       STA    $A2     
       JSR    LFBEB   
       STA    $CE     
       RTS            

LFB17: DEC    $B8     
       BEQ    LFB93   
       JSR    LFA83   
       LDA    $DA     
       AND    #$0F    
       BEQ    LFB25   
       RTS            

LFB25: JSR    LFC06   
       LDA    $B6     
       LDX    $AE     
       BMI    LFB38   
       CMP    #$70    
       BCS    LFB40   
       INC    $B6     
       INC    $B6     
       BNE    LFB40   
LFB38: CMP    #$30    
       BCC    LFB40   
       DEC    $B6     
       DEC    $B6     
LFB40: LDA    $AA     
       CMP    #$18    
       BCC    LFB56   
       CMP    #$38    
       BNE    LFB4E   
       INC    $D3     
       INC    $A2     
LFB4E: DEC    $AA     
       LDA    INPT4   
       BMI    LFB56   
       DEC    $AA     
LFB56: BIT    $CD     
       BVC    LFB67   
       LDA    $CD     
       EOR    #$C0    
       STA    $CD     
       LDA    $BD     
       EOR    #$08    
       STA    $BD     
       RTS            

LFB67: LDX    $CD     
       BMI    LFB7F   
       INX            
       LDA    $CF     
       CLC            
       ADC    #$08    
       STA    $CF     
       CPX    #$02    
       BEQ    LFB7A   
       STX    $CD     
       RTS            

LFB7A: LDA    #$42    
       STA    $CD     
       RTS            

LFB7F: DEX            
       LDA    $CF     
       SEC            
       SBC    #$08    
       STA    $CF     
       CPX    #$80    
       BEQ    LFB8E   
       STX    $CD     
       RTS            

LFB8E: LDA    #$00    
       STA    $CD     
       RTS            

LFB93: LDA    $C6     
       AND    #$10    
       BEQ    LFB9F   
       INC    $C1     
       BEQ    LFB9F   
       DEC    $C1     
LFB9F: LDA    $C6     
       BPL    LFBD4   
       LDA    $CC     
       BEQ    LFBA8   
       RTS            

LFBA8: LDA    $B9     
       CMP    #$12    
       BCC    LFBAF   
       RTS            

LFBAF: LDX    #$03    
       JSR    LFA5B   
       LDA    $AA     
       CMP    #$38    
       BCC    LFBBB   
       RTS            

LFBBB: LDY    #$50    
       STY    $B8     
       JSR    LFBE3   
       JSR    LFA24   
       LDA    #$44    
       STA    $D5     
       STA    $D4     
       LDA    #$0F    
       STA    $CC     
       LDA    #$03    
       STA    $A6     
       RTS            

LFBD4: DEC    $A0     
       INC    $A2     
       LDY    #$23    
       STY    $B8     
       LDA    $AA     
       CMP    #$20    
       BCC    LFBE3   
       RTS            

LFBE3: JSR    LFC06   
       AND    #$0F    
       STA    $CB     
       RTS            

LFBEB: LDA    $D9     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $B3     
       LDA    $D9     
       AND    #$F0    
       LSR            
       LSR            
       CLC            
       ADC    $B3     
       CLC            
       ADC    $C2     
       CLC            
       ADC    #$01    
       STA    $A5     
       RTS            

LFC06: INC    $AF     
       LDY    $AF     
       LDA    LF5F5,Y 
       EOR    $AE     
       EOR    $DA     
       STA    $AE     
       RTS            

LFC14: LDA    $C8     
       BEQ    LFC1C   
       LDA    #$D2    
       STA    $D4     
LFC1C: LDA    $DD     
       BIT    $DC     
       BPL    LFC5D   
       CMP    #$01    
       BCS    LFC2F   
       LDA    #$A0    
       STA    $DE     
       LDA    #$34    
       STA    $D4     
       RTS            

LFC2F: CMP    #$02    
       BCS    LFC38   
       LDA    #$90    
       STA    $DE     
       RTS            

LFC38: CMP    #$03    
       BCS    LFC41   
       LDA    #$70    
       STA    $DE     
       RTS            

LFC41: SEC            
       SBC    #$03    
LFC44: CMP    #$04    
       BCS    LFC4A   
       BCC    LFC56   
LFC4A: SEC            
       SBC    #$04    
LFC4D: CMP    #$06    
       BCC    LFC56   
       SEC            
       SBC    #$06    
       BPL    LFC4D   
LFC56: TAX            
       LDA    LF40A,X 
       STA    $DE     
       RTS            

LFC5D: BVC    LFCA4   
       CMP    #$02    
       BCS    LFC8D   
       LDX    #$52    
       STX    $D4     
       CMP    #$01    
       BCS    LFC70   
       LDA    #$A0    
       STA    $DE     
       RTS            

LFC70: LDA    $DC     
       AND    #$07    
       TAX            
       LDA    #$01    
LFC77: DEX            
       BMI    LFC7D   
       ASL            
       BNE    LFC77   
LFC7D: STA    $C5     
       LDA    #$90    
       STA    $DE     
       LDA    $C4     
       AND    $C5     
       BEQ    LFC8C   
       JMP    LFE88   
LFC8C: RTS            

LFC8D: CMP    #$03    
       BCS    LFC96   
       LDA    #$80    
       STA    $DE     
       RTS            

LFC96: CMP    #$04    
       BCS    LFC9F   
       LDA    #$70    
       STA    $DE     
       RTS            

LFC9F: SEC            
       SBC    #$04    
       BPL    LFC44   
LFCA4: LDX    $DC     
       CMP    #$02    
       BCC    LFCAF   
       SEC            
       SBC    #$02    
       BPL    LFC44   
LFCAF: LDY    #$30    
       STY    $D4     
       CPX    #$01    
       BNE    LFCC5   
       CMP    #$01    
       BNE    LFCC0   
       LDA    #$50    
       STA    $DE     
       RTS            

LFCC0: LDA    #$60    
       STA    $DE     
       RTS            

LFCC5: CMP    #$01    
       BNE    LFCCE   
       LDA    #$50    
       STA    $DE     
       RTS            

LFCCE: LDA    #$60    
       STA    $DE     
       RTS            

LFCD3: LDA    #$B0    
       STA    $DE     
       RTS            

LFCD8: LDA    $A1     
       BNE    LFCDD   
       RTS            

LFCDD: LDA    $D0     
       BEQ    LFCF5   
       INC    $A3     
       BIT    $BF     
       BVC    LFCE8   
       RTS            

LFCE8: LDX    $A6     
       BEQ    LFCFA   
       DEX            
       BEQ    LFD10   
       DEX            
       BEQ    LFD21   
       DEX            
       BEQ    LFD38   
LFCF5: INC    $9F     
       DEC    $A1     
       RTS            

LFCFA: LDA    $A3     
       CMP    #$0F    
       BNE    LFD02   
       STX    $A1     
LFD02: LDA    $9F     
       CMP    #$09    
       BCS    LFD0B   
       INC    $9F     
       RTS            

LFD0B: LDA    #$02    
       STA    $9F     
       RTS            

LFD10: LDA    $A3     
       CMP    #$04    
       BCS    LFD17   
       RTS            

LFD17: CMP    #$08    
       BCS    LFD1E   
       INC    $A1     
       RTS            

LFD1E: DEC    $A1     
       RTS            

LFD21: LDA    $BA     
       BNE    LFD28   
       DEC    $A1     
       RTS            

LFD28: LDA    $A3     
       CMP    #$04    
       BCS    LFD31   
       INC    $9F     
       RTS            

LFD31: DEC    $9F     
       AND    #$07    
       STA    $A3     
       RTS            

LFD38: DEC    $A1     
       LDA    $A3     
       CMP    #$05    
       BCS    LFD43   
       DEC    $9F     
       RTS            

LFD43: LDA    #$07    
       STA    $9D     
       INC    $9F     
       RTS            

LFD4A: BIT    $BF     
       BVS    LFD4F   
       RTS            

LFD4F: LDA    $AA     
       BEQ    LFD54   
       RTS            

LFD54: DEC    $E1     
       BMI    LFD59   
       RTS            

LFD59: LDA    #$13    
       STA    $E1     
       DEC    $DD     
       BPL    LFDBB   
       INC    $DD     
       LDA    $DE     
       CMP    #$60    
       BNE    LFDC7   
       LDX    #$01    
       LDA    $DC     
       CMP    #$03    
       BNE    LFD8D   
       LDA    $C4     
       BNE    LFD80   
       LDA    $C9     
       CLC            
       ADC    #$0A    
       STA    $C9     
       INC    $CA     
       INC    $CA     
LFD80: INC    $C2     
       STX    $E0     
       LDA    $E2     
       CLC            
       ADC    #$08    
       AND    #$18    
       BPL    LFDAF   
LFD8D: CMP    #$01    
       BNE    LFDC7   
       STX    $E0     
       DEC    $C2     
       BPL    LFDA8   
       LDA    $EB     
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $CE     
       LDA    #$FF    
       STA    $C0     
       JMP    LF74C   
LFDA8: LDA    $E2     
       SEC            
       SBC    #$08    
       AND    #$18    
LFDAF: STA    $E7     
       LDA    #$C0    
       STA    $DF     
       DEX            
       DEX            
       STX    $C4     
       BMI    LFDC7   
LFDBB: LDA    #$0A    
       STA    $9D     
       LDA    #$02    
       STA    $9F     
       LDA    #$12    
       STA    $A1     
LFDC7: LDX    #$00    
       STX    $A3     
       DEC    $E0     
       BEQ    LFDD5   
       DEX            
       STX    $C8     
       JMP    LFC14   
LFDD5: ASL    $E1     
       ASL    $E1     
       LDA    $E7     
       STA    $E2     
LFDDD: LDX    $E2     
       BIT    $DF     
       BMI    LFDEB   
       LDA    $DF     
       CMP    #$60    
       BEQ    LFDF8   
       BNE    LFE0E   
LFDEB: BVS    LFE03   
       LDA    $BF     
       CMP    #$40    
       BEQ    LFE3F   
       LSR            
       BCS    LFE17   
       BCC    LFE53   
LFDF8: LDA    $BF     
       CMP    #$40    
       BEQ    LFE17   
       LSR            
       BCS    LFE2B   
       BCC    LFE3F   
LFE03: LDA    $BF     
       CMP    #$40    
       BEQ    LFE53   
       LSR            
       BCS    LFE3F   
       BCC    LFE2B   
LFE0E: LDA    $BF     
       CMP    #$40    
       BEQ    LFE2B   
       LSR            
       BCS    LFE53   
LFE17: LDA    LF2CA,X 
       STA    $DC     
       LDA    LF2AA,X 
       STA    $DD     
       LDA    #$60    
       STA    $DF     
       LDA    LF22A,X 
       JMP    LFE64   
LFE2B: LDA    LF32A,X 
       STA    $DC     
       LDA    LF26A,X 
       STA    $DD     
       LDA    #$40    
       STA    $DF     
       LDA    LF20A,X 
       JMP    LFE64   
LFE3F: LDA    LF24A,X 
       STA    $DD     
       LDA    LF30A,X 
       STA    $DC     
       LDA    #$80    
       STA    $DF     
       LDA    LF1CA,X 
       JMP    LFE64   
LFE53: LDA    #$C0    
       STA    $DF     
       LDA    LF28A,X 
       STA    $DD     
       LDA    LF2EA,X 
       STA    $DC     
       LDA    LF1EA,X 
LFE64: STA    $B3     
       BEQ    LFE73   
       AND    #$07    
       STA    $BB     
       LDA    $E2     
       AND    #$18    
       CLC            
       ADC    $BB     
LFE73: STA    $E7     
       LDA    $B3     
       LSR            
       LSR            
       LSR            
       ASL            
       STA    $E0     
       LDX    #$00    
       STX    $C8     
       LDX    #$72    
       STX    $D4     
       JMP    LFC14   
LFE88: LDA    $C2     
       CMP    #$07    
       BCC    LFE90   
       LDA    #$07    
LFE90: CLC            
       ADC    #$70    
       STA    $B4     
       JSR    LFC06   
       TAX            
       CPX    #$68    
       BCS    LFEA1   
       CPX    #$38    
       BCS    LFEA3   
LFEA1: LDX    #$48    
LFEA3: STX    $B6     
       AND    $B4     
       STA    $D9     
       TAX            
       LDA    #$00    
       STA    $CD     
       CPX    #$5F    
       BCC    LFEBB   
       LDA    #$10    
       CPX    #$6F    
       BCC    LFEBB   
       CLC            
       ADC    #$04    
LFEBB: STA    $B3     
       TXA            
       AND    #$0F    
       TAX            
       TAY            
       LDA    $B3     
       CPX    #$00    
       BEQ    LFEE1   
       CPX    #$05    
       BCS    LFED0   
       ADC    #$08    
       BNE    LFEE1   
LFED0: CLC            
       ADC    #$80    
       CPX    #$06    
       BCC    LFEE1   
       BNE    LFEDE   
       CLC            
       ADC    #$01    
       BNE    LFEE1   
LFEDE: CLC            
       ADC    #$02    
LFEE1: STA    $C6     
       JSR    LFBEB   
       STA    $C1     
       LDA    $D9     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF410,X 
       STA    $D3     
       CPY    #$00    
       BNE    LFEFE   
       LDA    #$00    
       BEQ    LFF30   
LFEFE: CPY    #$01    
       BNE    LFF06   
       LDA    #$18    
       BNE    LFF30   
LFF06: CPY    #$02    
       BNE    LFF0E   
       LDA    #$30    
       BNE    LFF30   
LFF0E: CPY    #$03    
       BNE    LFF16   
       LDA    #$48    
       BNE    LFF30   
LFF16: CPY    #$04    
       BNE    LFF1E   
       LDA    #$60    
       BNE    LFF30   
LFF1E: CPY    #$05    
       BNE    LFF26   
       LDA    #$78    
       BNE    LFF30   
LFF26: CPY    #$06    
       BNE    LFF2E   
       LDA    #$90    
       BNE    LFF30   
LFF2E: LDA    #$A8    
LFF30: STA    $CF     
       LDA    #$40    
       STA    $AA     
       LDA    LF449,Y 
       STA    $9E     
       LDA    LF451,Y 
       STA    $A0     
       LDA    LF459   
       STA    $A2     
       RTS            

LFF46: LDA    $C3     
       BEQ    LFF53   
       LDX    #$2E    
       STX    $D2     
       LSR            
       STA    $BA     
       STX    $B9     
LFF53: LDA    $CE     
       BNE    LFF9A   
       LDA    $E5     
       BNE    LFFA1   
       LDA    $CB     
       BMI    LFF83   
       BEQ    LFF63   
       BPL    LFF6C   
LFF63: LDA    $E4     
       BNE    LFF8A   
       LDA    $E3     
       BNE    LFF73   
       RTS            

LFF6C: LDA    $E3     
       CLC            
       ADC    $CB     
       STA    $E3     
LFF73: LDY    #$0C    
       STY    $B3     
       DEC    $E3     
       DEC    $C7     
       LDA    #$00    
       STA    $CB     
       LDX    #$08    
       BPL    LFFDC   
LFF83: LDA    $E4     
       SEC            
       SBC    $CB     
       STA    $E4     
LFF8A: LDY    #$0C    
       STY    $B3     
       DEC    $E4     
       INC    $C7     
       LDA    #$00    
       STA    $CB     
       LDX    #$08    
       BPL    LFFAB   
LFF9A: LDA    $E5     
       CLC            
       ADC    $CE     
       STA    $E5     
LFFA1: LDX    #$08    
       DEC    $E5     
       STX    $B3     
       BPL    LFFA9   
LFFA9: LDX    #$00    
LFFAB: LDA    $80,X   
       CMP    #$3C    
       BNE    LFFB3   
       LDA    #$00    
LFFB3: CLC            
       ADC    #$06    
       STA    $80,X   
       CMP    #$3C    
       BEQ    LFFBD   
       RTS            

LFFBD: LDA    #$00    
       STA    $80,X   
       INX            
       INX            
       CPX    $B3     
       BNE    LFFAB   
       CPX    #$0C    
       BNE    LFFD9   
       DEX            
       DEX            
       LDA    #$36    
       STA    $80,X   
       DEX            
       DEX            
       STA    $80,X   
       LDA    #$63    
       STA    $C7     
LFFD9: RTS            

LFFDA: .byte $A2,$00
LFFDC: LDA    $80,X   
       SEC            
       SBC    #$06    
       STA    $80,X   
       BMI    LFFE6   
       RTS            

LFFE6: LDA    #$36    
       STA    $80,X   
       INX            
       INX            
       CPX    $B3     
       BNE    LFFDC   
       LDX    #$FF    
       STX    $C0     
       INX            
       STX    $88     
       STX    $8A     
       RTS            

LFFFA: .byte $00,$20,$73,$F4,$73,$F4
