; Disassembly of roms/M.A.S.H..bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/M.A.S.H..bin
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
REFP0   =  $0B
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESBL   =  $14
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
GRP0    =  $1B
GRP1    =  $1C
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM0FB  =  $34
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $00,$1E,$33,$33,$33,$33,$33,$1E,$00,$3F,$0C,$0C,$0C,$0C,$3C,$1C
       .byte $00,$3F,$30,$30,$1E,$03,$23,$3E,$00,$1E,$23,$03,$06,$03,$23,$1E
       .byte $00,$06,$06,$3F,$26,$16,$0E,$06,$00,$3E,$23,$03,$3E,$30,$30,$3F
       .byte $00,$1E,$33,$33,$3E,$30,$31,$1E,$00,$0C,$0C,$0C,$06,$03,$21,$3F
       .byte $00,$1E,$33,$33,$1E,$33,$33,$1E,$00,$1E,$23,$03,$1F,$33,$33,$1E
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$C6,$C6,$D6,$D6,$FE,$EE,$C6
       .byte $00,$0C,$0C,$0C,$0F,$AC,$47,$A3,$00,$C0,$C1,$C0,$C0,$D5,$89,$14
       .byte $00,$F0,$18,$18,$F0,$82,$89,$F2,$00,$33,$33,$33,$3F,$B3,$33,$B3
       .byte $00,$C7,$C4,$C7,$F4,$C7,$C0,$F0,$00,$55,$77,$66,$55,$77,$00,$00
       .byte $00,$72,$42,$72,$42,$77,$02,$00,$00,$18,$18,$18,$1E,$18,$18,$1E
       .byte $00,$AE,$A8,$E8,$A8,$EE,$00,$00,$00,$E4,$80,$E4,$84,$E4,$04,$04
       .byte $03,$06
LF0B2: .byte $32,$2F,$32,$43,$36,$30,$40,$33,$43,$3D,$2C,$33,$40,$34,$40,$47
LF0C2: .byte $3E,$17,$1C,$20,$30,$3A,$41,$12,$3A,$30,$24,$27,$12,$34,$24,$24
LF0D2: JSR    LF699   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$00    
       JSR    LFCF5   
       LDA    $96     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
       STY    $FC     
       JSR    LF699   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDX    $81     
       CPX    #$04    
       BCS    LF0FF   
       LDA    #$05    
LF0FF: STA    NUSIZ0  
       LDX    #$1D    
       TXS            
       LDA    #$F2    
       STA    $9C     
       LDA    #$F1    
       STA    $9A     
       LDX    #$2E    
       LDY    #$FD    
       STX    $99     
       STY    $9B     
       LDA    $D3     
       STA    $9D     
       LDY    #$59    
       LDA    $80     
       AND    #$20    
       BEQ    LF123   
       JMP    LF600   
LF123: TAX            
       LDA    #$0B    
       STA    WSYNC   
       STA    HMOVE   
       STA    $9E     
       BNE    LF130   
       LDX    $FC     
LF130: LDA    LF39A,Y 
       AND    $95     
       STA    COLUBK  
       STX    PF1     
       LDA    LF458,Y 
       STA    PF2     
       DEY            
       STA    HMCLR   
       CPY    #$4C    
       BEQ    LF162   
       LDA    LF33B,Y 
       STA    $FC     
       LDA    LF38E,Y 
       LDX    LF46B,Y 
       AND    $95     
       STX    PF2     
       LDX    LF462,Y 
       STX    PF1     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       JMP.ind ($009B)
LF162: LDA    $94     
       STA    COLUPF  
       LDA    #$D1    
       JMP    LF1F8   
LF16B: .byte $A6,$9F,$BD,$48,$F5,$85,$1B,$B9,$8E,$F3,$85,$1F,$85,$2B,$85,$24
       .byte $0A,$0A,$85,$0A,$88,$C4,$BF,$08,$68,$C4,$A1,$B0,$20,$BD,$64,$F5
       .byte $D0,$10,$B9,$8F,$F3,$D0,$1A,$A9,$D1,$85,$02,$85,$2A,$85,$99,$6C
       .byte $9B,$00,$E6,$9F,$85,$02,$85,$2A,$85,$1B,$6C,$9B,$00,$C0,$00,$F0
       .byte $09,$85,$02,$85,$2A,$A5,$A6,$6C,$9B,$00,$4C,$4A,$F9,$88,$A6,$FC
       .byte $A5,$FD,$CA,$10,$FD,$85,$2B,$85,$20,$85,$10,$A9,$6B,$85,$02,$85
       .byte $2A,$85,$99,$6C,$9B,$00,$A9,$00,$85,$1D
LF1D5: LDX    $9D     
       BEQ    LF1F1   
       LDA    $D0,X   
       STA    $9D     
       LDA    $91,X   
       STA    COLUP0  
       LDA    $83,X   
       STA    $9F     
       LDA    $AD,X   
       STA    REFP0   
       STA    $FD     
       AND    #$07    
       STA    $FC     
       LDA    $BC,X   
LF1F1: STA    $A1     
       DEY            
       STA    HMCLR   
       LDA    #$B8    
LF1F8: STA    WSYNC   
       STA    HMOVE   
       STA    $99     
       JMP.ind ($009B)
LF201: .byte $A6,$A0,$BD,$78,$F4,$85,$1C,$BD,$18,$F5,$25,$FE,$85,$07,$B9,$2F
       .byte $F3,$F0,$2E,$85,$0A,$10,$02,$69,$28,$85,$2B,$85,$24,$BD,$48,$F4
       .byte $C9,$F5,$D0,$0F,$A5,$D9,$85,$9B,$A9,$00,$85,$02,$85,$2A,$85,$1C
       .byte $6C,$99,$00,$E6,$A0,$85,$02,$85,$2A,$85,$1C,$6C,$99,$00,$E8,$86
       .byte $9E,$A9,$FD,$85,$D9,$A9,$62,$D0,$DD,$A6,$A3,$A5,$A4,$CA,$10,$FD
       .byte $85,$2B,$85,$21,$85,$11,$A9,$01,$85,$02,$85,$2A,$85,$9B,$6C,$99
       .byte $00,$B9,$2F,$F3,$85,$0A,$A6,$9E,$24,$37,$10,$04,$84,$E0,$86,$E1
       .byte $24,$32,$50,$02,$84,$E2,$85,$2C,$C0,$0D,$F0,$A8,$B5,$B0,$A2,$AE
       .byte $85,$2B,$85,$21,$86,$9B,$B9,$2F,$F3,$10,$02,$69,$28,$85,$02,$85
       .byte $2A,$85,$24,$6C,$99,$00,$A6,$9E,$E0,$0A,$B0,$18,$B5,$B0,$BE,$2F
       .byte $F3,$F0,$9B,$86,$0A,$C0,$12,$90,$DD,$A2,$EC,$D0,$D3,$B9,$2F,$F3
       .byte $85,$0A,$A6,$9E,$C6,$9E,$B5,$86,$85,$A0,$BD,$30,$F3,$45,$A5,$25
       .byte $83,$85,$FE,$B5,$B0,$A2,$01,$D0,$B7,$B9,$2F,$F3,$85,$0A,$A6,$9E
       .byte $85,$11,$B5,$B0,$85,$2B,$85,$21,$BD,$80,$F5,$A2,$EC,$85,$0C,$85
       .byte $05,$E6,$FF,$C9,$00,$D0,$02,$85,$11,$B0,$99,$B9,$2F,$F3,$85,$0A
       .byte $A6,$9E,$B5,$B0,$0A,$0A,$0A,$0A,$A2,$62,$D0,$84,$A6,$9E,$C6,$9E
       .byte $B5,$B0,$85,$0C,$85,$A4,$29,$07,$85,$A3,$85,$2B,$B5,$86,$85,$A0
       .byte $BD,$30,$F3,$45,$A5,$25,$83,$85,$FE,$A9,$4A,$85,$9B,$BD,$2E,$F3
       .byte $45,$A5,$25,$83,$85,$02,$85,$2A,$85,$09,$6C,$99,$00,$14,$16,$FF
       .byte $FF,$8A,$7E,$8E,$9E,$78,$1F,$BC,$DF,$FF
LF33B: .byte $FF,$01,$00,$11,$21,$E9,$D1,$01,$81,$81,$81,$81,$11,$21,$E9,$D1
       .byte $01,$81,$81,$81,$11,$21,$E9,$D1,$01,$71,$71,$71,$71,$11,$21,$E9
       .byte $D1,$01,$81,$81,$81,$11,$21,$E9,$D1,$01,$81,$81,$81,$81,$11,$21
       .byte $E9,$D1,$01,$71,$71,$71,$11,$21,$E9,$D1,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00
       .byte $FF,$1F,$07
LF38E: .byte $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LF39A: .byte $00,$00,$00,$00,$DE,$FA,$16,$16,$02,$01,$01,$00,$80,$DE,$FA,$16
       .byte $16,$02,$01,$01,$00,$DE,$FA,$16,$16,$02,$01,$01,$00,$70,$DE,$FA
       .byte $16,$16,$02,$01,$01,$00,$DE,$FA,$16,$16,$02,$01,$01,$00,$80,$DE
       .byte $FA,$16,$16,$02,$01,$01,$00,$DE,$FA,$16,$16,$02,$01,$01,$00,$00
       .byte $00,$C2,$02,$52,$3C,$1C,$38,$56,$56,$C4,$74,$72,$72,$C2,$C2,$02
       .byte $4A,$2E,$2A,$48,$46,$66,$64,$72,$72,$72,$01,$0A,$0A,$0A,$FA,$0A
       .byte $FA,$0B,$0A,$0A,$0A,$FA,$0A,$EB,$0A,$0B,$0A,$0A,$0B,$0A,$1A,$0A
       .byte $FA,$0A,$CB,$90,$00,$01,$F6,$07,$07,$0E,$0F,$0F,$1E,$0B,$1A,$FA
       .byte $1F,$1F,$0E,$1F,$0E,$1E,$0F,$1F,$0E,$1F,$1E,$0E,$1E,$1E,$2E,$0F
       .byte $0B,$1A,$0A,$1B,$2A,$0B,$00,$00,$01,$1A,$1A,$1B,$1B,$2A,$1B,$FA
       .byte $0B,$FA,$0B,$0B,$0B,$FB,$0A,$0B,$0A,$0A,$0B,$0A,$1A,$01,$00,$00
       .byte $00,$F5,$00,$00,$00,$00,$00,$DB,$66,$F5,$7F,$FE,$BA,$F5
LF458: .byte $FC,$FF,$BD,$F5,$C0,$7E,$3C,$F5,$7F,$FE
LF462: .byte $7C,$F5,$FC,$FF,$5A,$F5,$C1,$7F,$3D
LF46B: .byte $F5,$3C,$DF,$DB,$F5,$00,$00,$00,$00,$00,$00,$00,$F5,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$18,$7E,$3C,$42,$60,$F8,$54,$54,$F8,$F3,$5A
       .byte $42,$80,$ED,$43,$30,$60,$F8,$AA,$AA,$F8,$F3,$BD,$A5,$80,$EC,$42
       .byte $30,$18,$7E,$8F,$FB,$00,$00,$00,$00,$00,$00,$00,$00,$7F,$0F,$03
       .byte $00,$00,$00,$00,$00,$00,$00,$3F,$0F,$03,$00,$00,$00,$00,$00,$00
       .byte $1F,$07,$01,$00,$00,$00,$00,$00,$00,$80,$80,$80,$80,$C4,$C4,$C2
       .byte $02,$02,$02,$02,$03,$83,$40,$40,$40,$40,$40,$40,$40,$80,$80,$C0
       .byte $C0,$00,$00,$00,$80,$D0,$D0,$F0,$F0,$F0,$F0,$E0,$E0,$E0,$F0,$F6
       .byte $F4,$F4,$F4,$F4,$F0,$F0,$F6,$F6,$F4,$F4,$F4,$90,$F8,$FF,$FF,$C0
       .byte $80,$80,$80,$00,$00,$00,$00,$C0,$80,$80,$00,$C0,$80,$40,$60,$AB
       .byte $92,$80,$92,$80,$4E,$4E,$40,$40,$00,$30,$10,$00,$0C,$00,$00,$00
       .byte $2E
LF51C: .byte $1C,$3E,$00,$00,$1E,$3C,$CA,$2E,$4E,$4E,$00,$00,$3E,$0E,$00,$00
       .byte $1E,$1E,$1E,$1E,$4E,$4E,$00,$00,$3E,$0E,$00,$00,$1E,$1E,$1E,$1E
       .byte $FF,$FC,$FA,$F8
LF540: .byte $01,$21,$01,$06,$02,$21,$02,$06,$00,$00,$18,$CE,$19,$04,$00,$00
       .byte $0F,$CE,$19,$04,$00,$00,$F3,$F3,$00,$00,$36,$CE,$1F,$04,$00,$00
       .byte $08,$CE,$1F,$04,$00,$78,$88,$79,$0F,$0E,$00,$0C,$88,$79,$0F,$0E
       .byte $00,$E0,$7E,$E0,$00,$63,$88,$7F,$0E,$0E,$00,$1C,$88,$7F,$0E,$0E
       .byte $00,$00,$00,$00,$05,$00,$00,$05,$00,$00,$00,$00,$F1,$00,$F0,$01
       .byte $00,$00,$00,$F0,$01,$00,$50,$70,$00,$00,$00,$00,$11,$00,$11,$00
       .byte $00,$66,$77,$00,$FB,$00,$00,$00,$00,$00,$D3,$00,$FF,$FD,$9F,$FF
       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$FF,$00,$FF,$1F,$3F,$33,$00,$FF
       .byte $00,$FF,$EE,$00,$00,$00,$00,$FF,$FF,$EE,$00,$EE,$DD,$11,$22,$11
       .byte $00,$00,$00,$FF,$00,$00,$00,$EE,$00,$EE,$00,$00,$C5,$00,$80,$C0
       .byte $40,$C0,$40,$C0,$40,$80,$C0,$E0,$A0,$80,$B0,$90,$B8,$A8,$24,$34
       .byte $F4,$F6,$F2,$BA,$8A,$8B,$DB,$D9,$D8,$80,$D0,$90,$F0,$70,$60,$00
LF600: STA    WSYNC   
       STA    HMOVE   
       LDA    #$F6    
       STA    $9C     
       LDA    #$0F    
       STA    $9B     
       JMP    LF1D5   
LF60F: .byte $A5,$98,$85,$09,$A9,$25,$85,$05,$A0,$57,$A9,$15,$85,$A2,$85,$04
       .byte $A5,$97,$85,$07,$85,$08,$85,$11,$85,$13,$85,$14,$85,$02,$85,$2A
       .byte $A9,$73,$85,$9B,$4C,$B9,$F1,$4C,$4A,$F9,$85,$02,$85,$2A,$85,$1B
       .byte $08,$68,$88,$F0,$F2,$B9,$F3,$F3,$85,$21,$4A,$90,$02,$E6,$A2,$B9
       .byte $87,$F5,$85,$23,$0A,$0A,$0A,$0A,$85,$24,$C4,$A1,$A9,$00,$B0,$07
       .byte $BD,$64,$F5,$F0,$02,$E6,$9F,$85,$02,$85,$2A,$85,$1B,$A6,$A2,$BD
       .byte $C8,$F5,$85,$0F,$B9,$C2,$F4,$85,$1C,$B9,$F3,$F3,$85,$1F,$85,$1E
       .byte $0A,$0A,$29,$30,$09,$01,$85,$0A,$C0,$1D,$D0,$02,$84,$1E,$85,$2B
       .byte $A6,$9F,$BD,$48,$F5,$C4,$BF,$4C,$39,$F6
LF699: LDY    $FC     
       LDA    ($99),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    $FD     
       LDA    ($9B),Y 
       TAX            
       LDA    ($A3),Y 
       STA    GRP0    
       LDA    ($A1),Y 
       STA    GRP1    
       LDA    ($9F),Y 
       STA    GRP0    
       LDA    ($9D),Y 
       LDY    $FD     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $FC     
       BPL    LF699   
       RTS            


START:
       SEI            
       CLD            
       LDX    #$00    
       LDY    #$CA    
       LDA    #$00    
LF6CB: STA    VSYNC,X 
       INX            
       BNE    LF6CB   
       STY    $80     
       LDY    #$99    
       BIT    SWCHB   
       BMI    LF6DB   
       STY    $AB     
LF6DB: BVS    LF6DF   
       STY    $AA     
LF6DF: LDA    #$44    
       STA    $F6     
       LDA    #$A5    
       STA    $EE     
       STA    $EF     
       LDA    #$38    
       STA    $C4     
       STA    $C6     
       LDA    #$00    
       STA    $E8     
       STA    $E9     
       STA    $EA     
       STA    $DA     
       LDA    #$2F    
       STA    $90     
       LDX    #$FF    
       TXS            
       INX            
       LDA    #$80    
       STA    $BF     
       STA    $E3     
       LSR            
       STA    $EC     
       LDY    #$08    
       LDA    $81     
       AND    #$07    
       STA    $81     
       LSR            
       ROR            
       ROR            
       STA    $F3     
       BPL    LF71D   
       LDY    #$00    
       LDX    #$68    
LF71D: STX    $C3     
       STX    $AF     
       JSR    LFEAF   
       JSR    LFB62   
LF727: LDX    INTIM   
       BNE    LF727   
       DEX            
       LDA    #$2C    
       STA    WSYNC   
       STX    VSYNC   
       STA    TIM64T  
       LDX    #$02    
LF738: STA    WSYNC   
       LDY    $F3,X   
       LDA    LFF02,Y 
       BNE    LF753   
       BIT    $80     
       BMI    LF775   
       LDY    $F5,X   
       STY    $F3,X   
       LDY    $F9,X   
       STY    $F5,X   
       BIT    $A7     
       BMI    LF775   
       BPL    LF777   
LF753: INC    $F3,X   
       CMP    #$10    
       BEQ    LF775   
       BCS    LF75F   
       STA    RESBL,X 
       BCC    LF777   
LF75F: STA    AUDC1,X 
       LSR            
       LSR            
       LSR            
       CPY    #$44    
       BCC    LF774   
       ORA    #$07    
       DEC    $F8     
       AND    $F8     
       STA    $F8     
       BEQ    LF774   
       DEC    $F3,X   
LF774: LSR            
LF775: STA    AUDF1,X 
LF777: DEX            
       BNE    LF738   
       STA    WSYNC   
       STX    VSYNC   
       DEX            
       STX    $9D     
       LDX    #$07    
LF783: LDA    $88,X   
       CMP    #$08    
       BNE    LF7A8   
       LDA    $C8,X   
       SBC    $C3     
       BCS    LF791   
       EOR    #$FF    
LF791: STA    $9A     
       LDA    LFFAC,X 
       SEC            
       SBC    $BE     
       BCS    LF79D   
       EOR    #$FF    
LF79D: ASL            
       ADC    $9A     
       CMP    $9D     
       BCS    LF7A8   
       STA    $9D     
       STX    $E7     
LF7A8: DEX            
       BPL    LF783   
       LDY    #$97    
       BIT    $F3     
       BMI    LF7F3   
       LDA    $EA     
       BEQ    LF7CB   
       CMP    #$05    
       BCS    LF7C7   
       LDA    $E4     
       BPL    LF7C1   
       CMP    #$FE    
       BCC    LF7CB   
LF7C1: LDA    $AD     
       CMP    #$20    
       BCS    LF7CB   
LF7C7: LDA    #$05    
       STA    $E7     
LF7CB: LDA    $E8     
       CMP    #$1E    
       BNE    LF7D8   
       LDA    #$0E    
       STA    $E8     
       JSR    LFB59   
LF7D8: LDA    $EC     
       BNE    LF7E7   
       LDA    $EB     
       CMP    #$06    
       BCC    LF7E7   
       LDY    #$08    
       JSR    LFEAF   
LF7E7: LDA    #$24    
       STA    $8A     
       STA    $8D     
       LDA    #$03    
       STA    $90     
       LDY    #$CA    
LF7F3: STY    $D9     
       JSR    LFD2F   
       BIT    $F3     
       BPL    LF834   
       LDX    #$02    
LF7FE: LDA    $BC,X   
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF7B,Y 
       STA    $ED,X   
       DEX            
       BNE    LF7FE   
       STX    $BA     
       LDA    $C6     
       STA    $D0     
       SEC            
       SBC    $CF     
       LDX    #$03    
LF817: CMP    LFF99,X 
       BCS    LF81F   
       DEX            
       BCC    LF817   
LF81F: ADC    LFFA4,X 
       AND    #$0F    
       ORA    LFFA8,X 
       STA    $B9     
       LDY    $D4     
       CLC            
       LDA    $DB     
       ADC    LFF9D,Y 
       STA    $DB     
       ROR            
LF834: BPL    LF88A   
       DEC    $90     
       LDX    $DA     
       INC    $DA     
       CPX    #$07    
       BNE    LF88A   
       LDY    $90     
       LDX    #$00    
       STX    $DA     
       STX    $90     
LF848: LDA    $C9,X   
       STA    $C8,X   
       LDA    $B3,X   
       STA    $B2,X   
       LDA    $89,X   
       STA    $88,X   
       ORA    $90     
       STA    $90     
       INX            
       CPX    #$08    
       BCC    LF848   
       LDX    #$08    
       CPY    #$03    
       BEQ    LF865   
       LDX    #$00    
LF865: STX    $8F     
       LDY    #$0B    
       LDA    $80     
       AND    #$A8    
       BNE    LF886   
       LDA    $E8     
       LSR            
       LSR            
       LSR            
       STA    $D4     
       CMP    #$05    
       BCC    LF888   
       LDA    $90     
       BNE    LF886   
       LDA    #$0F    
       STA    $80     
       LDA    #$40    
       STA    $EC     
LF886: LDY    #$2F    
LF888: STY    $90     
LF88A: LDA    $A6     
       AND    #$01    
       STA    $A3     
       LDA    $BE     
       CMP    $BD     
       ROL    $A3     
       SEC            
       SBC    $BD     
       BCS    LF89F   
       EOR    #$FF    
       ADC    #$01    
LF89F: CMP    #$10    
       LDA    $A3     
       ROL            
       TAY            
       LDA    LF540,Y 
       LDX    #$02    
LF8AA: TAY            
       AND    #$03    
       STA    $D1,X   
       TYA            
       LSR            
       LSR            
       DEX            
       BPL    LF8AA   
       JSR    LFA76   
       LDX    #$05    
LF8BA: LDA    $C2,X   
       TAY            
       AND    #$0F    
       STA    $A3     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $A3     
       CMP    #$0F    
       BCC    LF8D1   
       SBC    #$0F    
       INY            
LF8D1: STY    $A3     
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $A3     
       STA    $A3     
       LDY    LFFF3,X 
       LDA.wy $00AE,Y 
       AND    #$08    
       ORA    $A3     
       STA.wy $00AE,Y 
       DEX            
       BPL    LF8BA   
       JSR    LFCC4   
LF8F0: LDY    INTIM   
       BNE    LF8F0   
       STA    WSYNC   
       PHA            
       PLA            
       PHA            
       PLA            
       LDA    $BC     
       STA    HMM0    
       AND    #$07    
       TAX            
LF902: DEX            
       BPL    LF902   
       STA    RESM0   
       STA    WSYNC   
       STA    HMOVE   
       STY    VBLANK  
       LDA    #$F0    
       STA    $9A     
       STA    $9C     
       STA    $9E     
       STA    $A0     
       STA    $A2     
       STA    $A4     
       LDA    #$07    
       STA    HMCLR   
       NOP            
       LDY    #$03    
       LDX    #$10    
       STX    HMP1    
       STA    RESP0   
       STA    RESP1   
       BIT    $F3     
       BMI    LF92F   
       INY            
LF92F: STA    WSYNC   
       STA    HMOVE   
       STA    $FC     
       LSR            
       STA    NUSIZ1  
       STA    NUSIZ0  
       STA    VDELP0  
       STA    VDELP1  
       STA    CXCLR   
       STA    HMCLR   
LF942: DEY            
       BPL    LF942   
       STY    RESBL   
       JMP    LF0D2   
LF94A: .byte $A9,$1F,$85,$02,$8D,$96,$02,$A2,$FF,$86,$01,$9A,$E8,$86,$A5,$86
       .byte $0B,$86,$0C,$E6,$82,$A6,$82,$BD,$2F,$FD,$45,$A6,$85,$A2,$E6,$A6
       .byte $D0,$07,$E6,$A7,$D0,$03,$38,$66,$A7,$AD,$82,$02,$29,$08,$0A,$A8
       .byte $E9,$00,$49,$F0,$A6,$A7,$10,$04,$86,$A5,$29,$F7,$85,$83,$06,$A5
       .byte $A2,$0B,$A5,$A5,$59,$C4,$FF,$25,$83,$95,$91,$E0,$08,$90,$02,$95
       .byte $FE,$C8,$CA,$D0,$ED,$C6,$EC,$D0,$1F,$86,$FA,$86,$F2,$A5,$80,$A8
       .byte $29,$14,$F0,$0F,$C9,$10,$90,$03,$4C,$FD,$F6,$98,$49,$20,$85,$80
       .byte $4C,$E9,$F6,$98,$29,$F2,$85,$80,$A0,$0B,$AD,$82,$02,$49,$FF,$46
       .byte $80,$29,$03,$F0,$0E,$B0,$17,$4A,$F0,$04,$E6,$81,$A0,$CB,$A2,$A5
       .byte $4C,$C9,$F6,$24,$80,$50,$06,$A5,$3C,$25,$3D,$10,$F1,$18,$26,$80
       .byte $20,$B8,$FB,$A9,$04,$AA,$25,$A6,$4A,$4A,$85,$9A,$8A,$0A,$05,$9A
       .byte $A8,$B5,$E9,$C9,$05,$B9,$85,$FF,$90,$0B,$E0,$02,$B0,$07,$A9,$30
       .byte $85,$F7,$B9,$8F,$FF,$BC,$F3,$FF,$99,$84,$00,$CA,$10,$DE,$2C,$82
       .byte $02,$70,$08,$C6,$E5,$10,$2F,$A5,$E4,$85,$E5,$A0,$00,$A6,$E7,$BD
       .byte $AC,$FF,$38,$E5,$DA,$C5,$BE,$D0,$01,$C8,$98,$2A,$0A,$85,$99,$B5
       .byte $C8,$C9,$07,$90,$02,$E9,$06,$C5,$C3,$D0,$02,$E6,$99,$A5,$99,$2A
       .byte $AA,$BD,$B5,$FF,$85,$E6,$A5,$BE,$E5,$BF,$C9,$2F,$B0,$18,$A5,$C7
       .byte $69,$06,$E5,$C3,$C9,$19,$B0,$0E,$C9,$0C,$A5,$E6,$29,$03,$09,$04
       .byte $B0,$02,$49,$0C,$85,$E6,$20,$FC,$FD,$4C,$27,$F7
LFA76: LDA    $80     
       AND    #$20    
       BNE    LFA85   
       LDA    $EE     
       STA    $AC     
       LDA    $EF     
       STA    $AD     
LFA84: RTS            

LFA85: LDX    $ED     
       LDA    #$0D    
       STA    $84,X   
       LDA    $AE,X   
       AND    #$F7    
       STA    $AE,X   
       LDA    LFFF4,X 
       STA    $D3     
       LDA    #$00    
       STA    $D1,X   
       LDA    $F2     
       BEQ    LFAAD   
       LDA    $A2     
       AND    $83     
       STA    $97     
       AND    #$01    
       CLC            
       ADC    #$1E    
       STA    AUDF1   
       LDA    #$1F    
LFAAD: STA    $F7     
       LDA    $80     
       AND    #$88    
       BNE    LFA84   
       LDA    $F1     
       BEQ    LFAC5   
       CLC            
       ADC    $C2,X   
       STA    $C7     
       LDA    $F0     
       CLC            
       ADC    $BD,X   
       STA    $BF     
LFAC5: BIT    CXM0P   
       BVC    LFADF   
       LDA    $F1     
       BNE    LFAD1   
       LDA    #$22    
       STA    $F6     
LFAD1: LDA    $BF     
       SEC            
       SBC    $BD,X   
       STA    $F0     
       LDA    $C7     
       SEC            
       SBC    $C2,X   
       STA    $F1     
LFADF: LDA    $C7     
       CMP    #$26    
       BCC    LFAE9   
       CMP    #$4D    
       BCC    LFAF9   
LFAE9: LDA    $80     
       AND    #$FD    
       STA    $80     
       LDA    #$54    
       STA    $F6     
       JSR    LFED5   
       JSR    LFB6E   
LFAF9: LDY    #$08    
       LDA    $AC,X   
       BIT    SWCHB   
       BVS    LFB05   
       LDA    #$00    
       TAY            
LFB05: STA    $9A     
       LDA    LFFEF,X 
       TAX            
       LDA    $A6     
       AND    #$3F    
       BNE    LFB2A   
       LDA    $81     
       CMP    #$06    
       BEQ    LFB27   
       SEC            
       LDA    $AC,X   
       SED            
       SBC    #$01    
       CLD            
       STA    $AC,X   
       BEQ    LFB47   
       BIT    $F3     
       BVS    LFB2A   
       TYA            
LFB27: JSR    LFED7   
LFB2A: DEC    $F9     
       BPL    LFB38   
       LDA    #$12    
       STA    $F5     
       LDA    $AC,X   
       ASL            
       ASL            
       STA    $F9     
LFB38: LDA    CXM0P   
       ORA    CXM0FB  
       BPL    LFB61   
       LDA    #$80    
       STA    $F2     
       LDA    $9A     
       JSR    LFED7   
LFB47: LDA    #$1C    
       STA    $FA     
       BIT    $F3     
       LDA    #$2E    
       BVC    LFB59   
       LDX    $E8     
       BNE    LFB59   
       INC    $E8     
       LDA    #$3A    
LFB59: ORA    $80     
       STA    $80     
       LDA    #$3F    
       STA    $EC     
LFB61: RTS            

LFB62: LDA    #$15    
       STA    $AC     
       STA    $AD     
       LDA    $ED     
       EOR    #$01    
       STA    $ED     
LFB6E: LDX    #$00    
       STX    $C2     
       STX    $F0     
       STX    $F1     
       LDA    #$1C    
       STA    $BD     
       STA    $C0     
       LDA    #$3E    
       STA    $BE     
       STA    $C1     
       LDA    $81     
       LSR            
       BCS    LFB89   
       STX    $ED     
LFB89: CMP    #$03    
       LDA    $80     
       AND    #$EB    
       BCC    LFB93   
       ORA    #$20    
LFB93: STA    $80     
       LSR            
       LSR            
       AND    #$08    
       BEQ    LFBB7   
       LDA    $82     
       AND    #$0F    
       BCC    LFBA3   
       AND    #$03    
LFBA3: TAY            
       LDA    LF0B2,Y 
       STA    $C7     
       LDA    LF0C2,Y 
       STA    $BF     
       STX    $C3     
       LDA    LFFDF,Y 
       LDX    $ED     
       STA    $AC,X   
LFBB7: RTS            

LFBB8: .byte $A5,$80,$29,$A8,$D0,$F9,$A8,$A5,$E3,$10,$1A,$A6,$81,$E0,$04,$B0
       .byte $14,$A5,$BF,$C9,$4A,$90,$0C,$A5,$C4,$85,$C7,$A9,$01,$85,$BF,$A9
       .byte $29,$85,$F7,$E6,$BF,$A5,$BD,$18,$69,$05,$E5,$BE,$C9,$08,$B0,$21
       .byte $A5,$C2,$69,$0D,$E5,$C3,$C9,$18,$B0,$17,$84,$92,$84,$93,$88,$C9
       .byte $0C,$A9,$02,$90,$02,$A9,$FE,$85,$DC,$49,$FF,$85,$DD,$A9,$02,$85
       .byte $F6,$84,$9F,$A6,$D3,$CA,$B5,$BD,$38,$E5,$E0,$C9,$0B,$B0,$56,$A4
       .byte $E1,$F0,$52,$24,$F3,$30,$37,$98,$DD,$B0,$F0,$D0,$19,$B5,$E9,$F0
       .byte $15,$18,$B5,$EE,$F8,$69,$02,$D8,$C9,$27,$B0,$02,$95,$EE,$A9,$00
       .byte $95,$E9,$A9,$54,$85,$F6,$B9,$87,$00,$C9,$08,$D0,$35,$B5,$E9,$C9
       .byte $05,$B0,$22,$C9,$04,$BD,$59,$FF,$F6,$E9,$E6,$EB,$B0,$02,$A9,$22
       .byte $85,$F6,$A9,$3C,$85,$EC,$BD,$EF,$FF,$85,$ED,$A9,$00,$99,$87,$00
       .byte $E6,$E8,$20,$D5,$FE,$A5,$9F,$30,$11,$B5,$BD,$38,$E5,$E2,$C9,$0E
       .byte $B0,$22,$E0,$01,$24,$F3,$70,$02,$B0,$1A,$E4,$E3,$F0,$16,$B5,$C0
       .byte $95,$BD,$B5,$DC,$0A,$A9,$03,$B0,$02,$A9,$FD,$18,$75,$C2,$C9,$71
       .byte $B0,$02,$95,$C2,$B5,$BD,$38,$E5,$BF,$C9,$05,$B0,$10,$A5,$C7,$E9
       .byte $03,$F5,$C2,$C9,$08,$B0,$06,$A9,$80,$85,$BF,$86,$E3,$B5,$D1,$AA
       .byte $F0,$03,$4C,$0D,$FC,$85,$E0,$85,$E2,$85,$E1,$60
LFCC4: LDA    $F2     
       BNE    LFCD5   
       LDA    $80     
       ROL            
       BMI    LFCD3   
       BIT    $A6     
       BVS    LFCEF   
       BCC    LFCEF   
LFCD3: LDA    #$58    
LFCD5: LDX    $9C     
       STX    $96     
       LDY    #$0A    
LFCDB: STA.wy $0099,Y 
       CMP    #$78    
       BNE    LFCE7   
       LDA    $81     
       ASL            
       ASL            
       ASL            
LFCE7: CLC            
       ADC    #$08    
       DEY            
       DEY            
       BPL    LFCDB   
       RTS            

LFCEF: LDX    #$01    
       LDA    #$50    
       STA    $9D     
LFCF5: LDA    $AA,X   
       ASL            
       ASL            
       ASL            
       AND    #$78    
       STA    $9F     
       LDA    $AA,X   
       LSR            
       AND    #$78    
       BNE    LFD0B   
       LDY    $A8,X   
       BNE    LFD0B   
       LDA    #$50    
LFD0B: STA    $A1     
       LDA    $A8,X   
       BNE    LFD13   
       LDA    #$0A    
LFD13: ASL            
       ASL            
       ASL            
       AND    #$78    
       STA    $A3     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $AC,X   
       ASL            
       ASL            
       ASL            
       AND    #$78    
       STA    $99     
       LDA    $AC,X   
       LSR            
       AND    #$78    
       STA    $9B     
       RTS            

LFD2F: LDA    $80     
       AND    #$08    
       BNE    LFD99   
       LDA    $BB     
       AND    #$08    
       TAX            
       LDY    $D4     
       LDA    $D8     
       AND    #$FC    
       CLC            
       ADC    LFF93,Y 
       STA    $D8     
       AND    #$03    
       ADC    #$00    
       BEQ    LFD6A   
       CPX    #$08    
       BCC    LFD52   
       EOR    #$FF    
LFD52: ADC    $C6     
       STA    $C6     
       CMP    #$04    
       BCC    LFD68   
       CMP    #$76    
       LDA    #$08    
       BCS    LFD68   
       LDA    $C6     
       AND    #$1F    
       BNE    LFD6A   
       LDA    $A2     
LFD68: STA    $BB     
LFD6A: CLC            
       LDA    $D7     
       ADC    #$65    
       STA    $D7     
       BCC    LFD99   
       INC    $82     
       LDA    $C2     
       LDX    $E4     
       BMI    LFD7D   
       LDA    $C3     
LFD7D: BIT    $80     
       BPL    LFD83   
       LDA    $C6     
LFD83: ADC    #$07    
       CMP    $C4     
       BEQ    LFD99   
       LDA    #$FF    
       BCC    LFD8F   
       LDA    #$00    
LFD8F: STA    $B0     
       ADC    $C4     
       CMP    #$76    
       BCS    LFD99   
       STA    $C4     
LFD99: LDY    #$00    
       LDX    $E3     
       BMI    LFDC4   
       SEC            
       LDA    #$4C    
       SBC    $BD,X   
       CMP    #$40    
       BEQ    LFDC7   
       LSR            
       LSR            
       ADC    #$0F    
       STA    AUDF0   
       LDA    #$05    
       STA    $F6     
       LDA    $A2     
       BPL    LFDC4   
       STA    $AE,X   
       DEC    $BD,X   
       STY    $92,X   
       LDA    #$08    
       STA    $B1     
       LDA    #$76    
       STA    $C5     
LFDC4: STY    $87     
       RTS            

LFDC7: LDA    #$08    
       STA    $F6     
       LDA    $B1     
       AND    #$08    
       BEQ    LFDDC   
       DEC    $C5     
       LDA    $C5     
       CMP    $C2,X   
       BNE    LFDDB   
       STY    $B1     
LFDDB: RTS            

LFDDC: LDA    $C5     
       CMP    #$75    
       BCC    LFDF7   
       ROR    $E3     
       LDA    $81     
       AND    #$02    
       BEQ    LFDED   
       LDA    LFFD2,X 
LFDED: STA    $C2,X   
       LDA    LF51C,X 
       STA    $BD,X   
       STA    $C0,X   
       RTS            

LFDF7: INC    $C5     
       INC    $C2,X   
       RTS            

LFDFC: .byte $A5,$80,$29,$88,$D0,$F9,$A2,$02,$CA,$30,$F4,$E4,$E3,$F0,$F9,$AD
       .byte $80,$02,$49,$FF,$F0,$02,$86,$A7,$24,$F3,$70,$04,$29,$F0,$05,$E6
       .byte $E0,$01,$F0,$04,$4A,$4A,$4A,$4A,$A0,$38,$29,$0F,$85,$9A,$F0,$02
       .byte $A0,$3F,$84,$FB,$18,$A9,$84,$75,$DE,$95,$DE,$90,$17,$A5,$9A,$29
       .byte $03,$A8,$18,$B5,$BD,$95,$C0,$79,$F0,$FF,$C9,$4C,$B0,$06,$C9,$11
       .byte $90,$02,$95,$BD,$A5,$9A,$4A,$4A,$A8,$A5,$80,$29,$20,$F0,$05,$B9
       .byte $CF,$FF,$95,$DC,$98,$B4,$DC,$4A,$90,$0C,$A9,$08,$95,$AE,$C0,$F1
       .byte $F0,$18,$88,$4C,$86,$FE,$4A,$90,$0C,$A9,$00,$95,$AE,$C0,$0F,$F0
       .byte $09,$C8,$4C,$86,$FE,$98,$30,$F9,$D0,$E8,$98,$10,$02,$49,$FF,$18
       .byte $75,$D5,$C9,$10,$29,$0F,$95,$D5,$90,$14,$A9,$01,$C0,$80,$90,$02
       .byte $49,$FF,$75,$C2,$C9,$72,$90,$04,$A0,$00,$B0,$02,$95,$C2,$94,$DC
       .byte $4C,$04,$FE
LFEAF: INC    $82     
       LDA    $82     
       STA    $9A     
       LDX    #$08    
LFEB7: STY    $87,X   
       LDA    LFF5A,X 
       LSR    $9A     
       BCC    LFEC3   
       LDA    LFF62,X 
LFEC3: STA    $B1,X   
       LDA    LFF6A,X 
       BCC    LFECD   
       LDA    LFF72,X 
LFECD: STA    $C7,X   
       DEX            
       BNE    LFEB7   
       STX    $EB     
       RTS            

LFED5: LDA    $AC,X   
LFED7: SED            
       CLC            
       ADC    #$00    
       TAY            
       CLC            
       ADC    $AA,X   
       STA    $AA,X   
       LDA    #$00    
       ADC    $A8,X   
       CLD            
       CMP    #$10    
       BCC    LFEF4   
       LDA    #$90    
       ORA    $80     
       STA    $80     
       LDA    #$99    
       STA    $AA,X   
LFEF4: STA    $A8,X   
       TYA            
       LSR            
       EOR    LFFF2,X 
       ADC    $E4     
       BVS    LFF01   
       STA    $E4     
LFF01: RTS            

LFF02: .byte $10,$00,$01,$94,$00,$04,$40,$00,$04,$88,$28,$48,$48,$68,$28,$28
       .byte $28,$00,$04,$5E,$5E,$3E,$1E,$1E,$5E,$5E,$3E,$00,$04,$5E,$00,$01
       .byte $FE,$00,$0C,$EB,$CB,$A9,$87,$65,$00,$08,$6F,$52,$35,$38,$1B,$00
       .byte $0F,$1A,$36,$52,$10,$10,$10,$00,$08,$2C,$28,$10,$10,$10,$00,$08
       .byte $28,$10,$10,$00,$0C,$F5,$F8,$7A,$F8,$7A,$F8,$FA,$FD,$00,$0C,$72
       .byte $00,$08,$6E,$00,$0C,$64,$00,$4E
LFF5A: .byte $51,$33,$66,$0C,$11,$66,$0C,$32
LFF62: .byte $77,$99,$FF,$0C,$99,$CC,$0C,$AA
LFF6A: .byte $FF,$52,$45,$08,$57,$43,$08,$51
LFF72: .byte $3F,$77,$64,$08,$74,$6E,$08,$74,$5F
LFF7B: .byte $A0,$A0,$20,$15,$10,$A9,$A8,$A7,$A6,$A5,$01,$07,$07,$01,$0C,$18
       .byte $10,$1C,$14,$20,$11,$17,$11,$17
LFF93: .byte $C0,$01,$81,$C1,$02,$01
LFF99: .byte $00,$0E,$E4,$F3
LFF9D: .byte $4A,$62,$93,$AC,$CD,$62,$62
LFFA4: .byte $F9,$EA,$14,$05
LFFA8: .byte $20,$70,$90,$E0
LFFAC: .byte $11,$1A,$21,$2A,$31,$3A,$41,$4A,$60,$06,$0A,$00,$02,$05,$09,$00
       .byte $01,$00,$00,$00,$00,$04,$08,$00,$00,$04,$0E,$0E,$00,$04,$08,$FF
       .byte $0E,$0E,$08,$00,$F8,$08
LFFD2: .byte $00,$68,$60,$52,$1E,$1E,$84,$4A,$8E,$FF,$AE,$1E,$8E
LFFDF: .byte $15,$25,$20,$25,$50,$30,$25,$50,$35,$40,$45,$65,$45,$80,$50,$65
LFFEF: .byte $01,$00,$01
LFFF2: .byte $FF
LFFF3: .byte $00
LFFF4: .byte $01,$02,$03,$0D,$0E,$FF,$64,$6E,$C3,$F6,$C3,$F6
