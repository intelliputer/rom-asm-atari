; Disassembly of roms/Mega Force.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Mega Force.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
AUDC1   =  $16
AUDF1   =  $18
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $00,$1E,$33,$33,$33,$33,$33,$1E,$00,$3F,$0C,$0C,$0C,$0C,$3C,$1C
       .byte $00,$3F,$30,$30,$1E,$03,$23,$3E,$00,$1E,$23,$03,$06,$03,$23,$1E
       .byte $00,$06,$06,$3F,$26,$16,$0E,$06,$00,$3E,$23,$03,$3E,$30,$30,$3F
       .byte $00,$1E,$33,$33,$3E,$30,$31,$1E,$00,$0C,$0C,$0C,$06,$03,$21,$3F
       .byte $00,$1E,$33,$33,$1E,$33,$33,$1E,$00,$1E,$23,$03,$1F,$33,$33,$1E
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$C3,$C0,$F8,$C3,$C0,$F8
       .byte $00,$97,$94,$94,$F4,$94,$90,$F0,$00,$75,$47,$76,$45,$77,$00,$00
       .byte $00,$22,$20,$22,$22,$72,$02,$02,$00,$E7,$B4,$97,$94,$97,$B0,$E0
       .byte $00,$4E,$48,$6E,$48,$6E,$00,$00,$00,$B6,$B5,$F5,$D5,$D6,$00,$00
       .byte $00,$42,$66,$3C,$5A,$3C,$00,$18,$00,$8B,$AA,$AB,$AA,$FB,$D8,$88
       .byte $00,$BA,$2A,$BB,$22,$BB,$00,$00,$00,$8C,$8C,$8C,$8F,$8C,$0C,$0F
       .byte $00,$75,$57,$56,$55,$77,$00,$00,$00,$77,$44,$47,$44,$77,$00,$00
LF0C0: JSR    LF18D   
       STA    WSYNC   
       LDA    #$07    
       STA    $A5     
       LDA    #$50    
       STA    $91     
       LDA    $99     
       STA    $95     
       LDA    $9A     
       STA    $93     
       LDA    #$58    
       STA    $97     
       LDA    #$90    
       STA    $8D     
       LDA    $C6     
       ASL            
       ASL            
       ASL            
       STA    $8F     
       JSR    LF18D   
       STA    WSYNC   
       LDA    #$00    
       STA    NUSIZ0  
       STA    VDELP0  
       STA    VDELP1  
       STA    $94     
       STA    CXCLR   
       STA    $8E     
       LDY    #$56    
       LDA    #$F1    
       STA    $90     
       STA    $96     
       LDA    #$F2    
       STA    $92     
       LDA    #$05    
       STA    $91     
       STA    WSYNC   
       LDA    $8C     
       STA    COLUBK  
       LDX    #$1D    
       TXS            
       BNE    LF129   
       LDX    $93     
       LDA    LF2F6,X 
       STA    GRP0    
       DEY            
       BEQ    LF151   
       CPY    $95     
       BCS    LF139   
       LDA    LF381,X 
       BNE    LF142   
       CPY    #$05    
       BCC    LF139   
LF129: LDA    #$7A    
       STA    $8F     
       INC    $DA     
       LDX    $DA     
       LDA    $83,X   
       STA    COLUP0  
       LDA    $BA,X   
       AND    #$0F    
LF139: STA    WSYNC   
       STA    HMCLR   
       STA    $A5     
       JMP.ind ($0091)
LF142: INC    $93     
       LDX    $98     
       STX    NUSIZ0  
       STA    WSYNC   
       STA    HMCLR   
       STA    GRP0    
       JMP.ind ($0091)
LF151: JMP    LF821   
LF154: .byte $A6,$DA,$B5,$B0,$85,$95,$88,$85,$2B,$B5,$BA,$85,$20,$B5,$D1,$85
       .byte $0B,$85,$98,$A5,$30,$95,$BA,$85,$2C,$B5,$A7,$A2,$12,$85,$02,$85
       .byte $93,$86,$8F,$6C,$91,$00,$A6,$A5,$A9,$54,$88,$CA,$10,$FD,$85,$10
       .byte $85,$02,$85,$2B,$85,$8F,$6C,$91,$00
LF18D: LDY    $A5     
       LDA    ($8D),Y 
       STA    WSYNC   
       STA    $A6     
       LDA    ($8F),Y 
       TAX            
       LDA    ($97),Y 
       STA    GRP0    
       LDA    ($95),Y 
       STA    GRP1    
       LDA    ($93),Y 
       STA    GRP0    
       LDA    ($91),Y 
       LDY    $A6     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $A5     
       BPL    LF18D   
       RTS            

LF1B5: .byte $26,$48,$42,$46,$56,$5A,$2E,$1C,$88,$84,$00,$00,$FF,$FF,$FF,$FF
       .byte $00,$FF,$FF,$F0,$00,$00,$70,$70,$50,$50,$40,$30,$20,$20,$00,$00
       .byte $90,$90,$B0,$D0,$D0,$D0,$E0,$00,$00,$24,$40,$44,$40,$58,$3C,$0C
       .byte $8A,$86,$00,$00,$70,$70,$60,$40,$40,$00,$20,$10,$00,$00,$90,$90
       .byte $A0,$C0,$D0,$00,$E0,$F0,$00,$00,$FF,$FF,$FF,$FF,$00,$FF,$FF,$FF
       .byte $A6,$94,$BD,$F6,$F2,$85,$1C,$C4,$BA,$08,$68,$C4,$96,$B0,$20,$BD
       .byte $81,$F3,$D0,$2A,$C0,$14,$90,$1D,$A6,$8E,$B5,$BE,$29,$0F,$85,$A6
       .byte $A9,$77,$85,$91,$A9,$00,$85,$02,$85,$2A,$85,$1D,$6C,$8F,$00,$A9
       .byte $CE,$C0,$2D,$F0,$ED,$85,$02,$85,$2A,$85,$FF,$6C,$8F,$00,$E6,$94
       .byte $85,$02,$85,$2A,$85,$1C,$6C,$8F,$00,$C4,$BA,$08,$68,$A6,$8E,$E6
       .byte $8E,$B5,$AB,$85,$94,$B5,$B4,$85,$96,$B5,$BE,$85,$21,$B5,$D5,$85
       .byte $0C,$85,$05,$B5,$87,$85,$07,$A9,$05,$85,$02,$85,$2A,$85,$91,$6C
       .byte $8F,$00,$A6,$A6,$A9,$4E,$CA,$10,$FD,$85,$11,$85,$02,$85,$2A,$85
       .byte $91,$6C,$8F,$00,$B9,$BA,$F1,$45,$A1,$25,$83,$A6,$93,$85,$02,$85
       .byte $2A,$85,$09,$BD,$F6,$F2,$85,$1B,$B9,$D8,$F1,$85,$1C,$B9,$C4,$F1
       .byte $85,$2B,$85,$21,$B9,$CE,$F1,$85,$23,$88,$C4,$95,$B0,$3F,$BD,$81
       .byte $F3,$F0,$06,$A6,$98,$86,$04,$E6,$93,$AA,$B9,$92,$F1,$85,$02,$85
       .byte $2A,$86,$1B,$45,$A1,$25,$83,$85,$09,$B9,$9C,$F1,$85,$1C,$85,$1E
       .byte $C4,$BA,$08,$68,$B9,$A6,$F1,$85,$21,$B9,$B0,$F1,$85,$23,$C0,$23
       .byte $D0,$A2,$A9,$05,$85,$02,$85,$2A,$85,$91,$6C,$8F,$00,$A9,$00,$F0
       .byte $C8
LF2F6: .byte $00,$00,$1C,$B4,$FF,$03,$A8,$00,$00,$1C,$B4,$FF,$03,$00,$00,$18
       .byte $1C,$3B,$AD,$42,$00,$00,$18,$1C,$3B,$4A,$A5,$00,$00,$6C,$6C,$00
       .byte $00,$3C,$CC,$3C,$00,$00,$3C,$33,$3C,$00,$00,$7E,$29,$08,$18,$10
       .byte $30,$60,$00,$00,$3C,$E3,$A3,$AF,$AB,$AB,$BF,$AF,$AF,$BF,$AF,$A3
       .byte $00,$00,$10,$28,$6C,$EE,$BA,$38,$00,$00,$7F,$00,$00,$00,$5A,$66
       .byte $00,$00,$10,$38,$7C,$FE,$FE,$38,$FE,$FF,$AB,$AB,$FF,$C7,$C7,$00
       .byte $00,$10,$38,$7C,$FE,$FE,$7C,$7C,$EE,$D6,$D6,$FF,$FF,$AB,$AB,$AB
       .byte $00,$00,$10,$09,$54,$10,$04,$00,$00,$20,$48,$48,$28,$00,$00,$04
       .byte $10,$10,$00,$00,$08,$08,$00,$00,$60,$60,$00
LF381: .byte $00,$04,$38,$D6,$FE,$56,$50,$00,$04,$38,$D6,$FE,$06,$00,$08,$10
       .byte $36,$7A,$42,$A5,$00,$08,$10,$36,$7A,$A5,$42,$00,$48,$FF,$48,$00
       .byte $18,$FF,$FF,$18,$00,$18,$FF,$FF,$18,$00,$1C,$9B,$28,$08,$10,$30
       .byte $20,$60,$00,$18,$7E,$EF,$EF,$FF,$EB,$E3,$E3,$E3,$E3,$EF,$EF,$FF
       .byte $00,$10,$38,$38,$FE,$FE,$92,$28,$00,$1E,$FF,$00,$18,$3C,$3C,$42
       .byte $00,$10,$10,$38,$FE,$FE,$7C,$7C,$FE,$AB,$AB,$AB,$EF,$C7,$C7,$00
       .byte $10,$10,$38,$FE,$FE,$FE,$38,$7C,$D6,$FE,$D6,$FF,$AB,$AB,$AB,$AB
       .byte $00,$08,$42,$80,$81,$4A,$10,$00,$08,$14,$22,$10,$10,$00,$10,$28
       .byte $04,$08,$00,$10,$20,$20,$00,$30,$FF,$30,$00
LF40C: .byte $80
LF40D: .byte $80
LF40E: .byte $40,$20,$10,$08,$04,$02,$01,$02
LF416: .byte $00,$30,$30,$31,$30,$31,$32,$33
LF41E: .byte $80,$40,$20
LF421: .byte $4E,$42,$38
LF424: LDX    $DE     
       STA    $DE     
       CPX    #$08    
       BCS    LF44C   
       LDA    $A7     
       BPL    LF432   
       LDA    #$00    
LF432: AND    #$07    
       TAY            
       LDA    LF416,Y 
       AND    $A7     
       STA    $A6     
       LDA    $A2     
       AND    #$07    
       TAY            
       LDA    LF416,Y 
       AND    $A2     
       ASL            
       ASL            
       ORA    $A6     
       STA    $E0,X   
LF44C: TXA            
       TAY            
       LDX    #$02    
LF450: CPY    #$08    
       BCS    LF49A   
       LDA    $E8,X   
       AND    LF40D,Y 
       BEQ    LF49A   
       LDA    $A5     
       BMI    LF474   
       LDA    $CA,X   
       CMP    #$30    
       BCC    LF49A   
       LDA    $D5,X   
       ORA    #$80    
       STA    $D5,X   
       LDA    #$01    
       STA    $98     
       LDA    LF40E,Y 
       BNE    LF484   
LF474: LDA    $CA,X   
       CMP    #$C4    
       BCS    LF49A   
       TYA            
       BEQ    LF4B1   
       LDA    #$10    
       STA    $98     
       LDA    LF40C,Y 
LF484: EOR    $E8,X   
       CMP    $E8,X   
       BCS    LF492   
       LDA    $F1     
       ADC    $98     
       STA    $F1     
       LDA    $E8,X   
LF492: EOR    LF40D,Y 
       STA    $E8,X   
       JMP    LF4B1   
LF49A: LDA    LF41E,X 
       BIT    SWCHB   
       BPL    LF4A4   
       LDA    #$90    
LF4A4: STA    $D5,X   
       LDA    LF421,X 
       STA    $B4,X   
       LDA    $A5     
       EOR    #$E0    
       STA    $CA,X   
LF4B1: DEX            
       BPL    LF450   
       LDX    $DE     
       LDA    LF600,X 
       AND    #$0F    
       CPX    #$08    
       BCS    LF4C1   
       LDA    $E0,X   
LF4C1: TAY            
       AND    #$33    
       ORA    #$44    
       BCC    LF4CA   
       ORA    #$A0    
LF4CA: STA    $A7     
       TYA            
       LSR            
       LSR            
       AND    #$33    
       ORA    #$04    
       STA    $A2     
LF4D5: LDX    #$FF    
       STX    $B9     
       INX            
       STX    $B0     
       STX    $EB     
       STX    $A4     
       RTS            

LF4E1: .byte $00,$ED,$F8,$C6,$86,$45,$E6,$06,$06,$05,$05,$04,$03,$03,$02,$02
       .byte $02,$00,$E0,$F8,$04,$28,$EA,$1A,$B8,$00,$E2,$F3,$2F,$1F,$2F,$1F
       .byte $2F,$F8,$E2,$3F,$4F,$5F,$5B,$6D,$7C,$8C,$9C,$AA,$BA,$CA,$F8,$E9
       .byte $0E,$1E,$2E,$3F,$4F,$5A,$6B,$7C,$8C,$9D,$AD,$BE,$CF,$DF,$DF,$DE
       .byte $DE,$DE,$DE,$DE,$DD,$DD,$DD,$DC,$DC,$DA,$DA,$DA,$DA,$D9,$D9,$D7
       .byte $B7,$A7,$F3,$97,$89,$77,$66,$55,$44,$33,$22,$21,$00,$E0,$F2,$22
       .byte $00,$E3,$FC,$12,$22,$32,$42,$32,$22,$12,$00,$E0,$F2,$82,$00,$E1
       .byte $F8,$12,$24,$36,$48,$5A,$4C,$3E,$E8,$F8,$0A,$19,$28,$37,$46,$35
       .byte $25,$34,$44,$53,$43,$32,$22,$12,$02,$00,$ED,$F3,$53,$00

START:
       SEI            
       CLD            
       LDX    #$00    
       LDY    #$C0    
LF575: LDA    #$00    
LF577: STA    VSYNC,X 
       INX            
       BNE    LF577   
       STY    $80     
       LDY    $81     
       LDX    LFFE8,Y 
       LDA    LFFC0,Y 
       AND    #$0F    
       STA    $C6     
       LDA    #$15    
       STA    CTRLPF  
LF58E: STX    $DF     
       LDA    #$5F    
       STA    $E0     
       LDX    #$FF    
       STX    $E7     
       STX    $DE     
       LDY    $DF     
       INX            
LF59D: LDA    LFF52,Y 
       STA    $E1,X   
       INY            
       INX            
       CPX    #$06    
       BCC    LF59D   
       LDA    $DF     
       SBC    #$FA    
       LSR            
       TAY            
       LDX    #$02    
LF5B0: DEY            
       LDA    LFF67,Y 
       STA    $E8,X   
       DEX            
       BPL    LF5B0   
LF5B9: LDA    LFF8D,Y 
       STA    $99     
       LDA    #$D3    
       STA    $C9     
       STA    $BA     
       STA    $B2     
       LDA    #$1F    
       STA    $B1     
       LDA    #$30    
       STA    $EC     
       STA    PF0     
       LDA    #$A0    
       STA    $C7     
       LDX    #$48    
       STX    $9A     
       STX    $CD     
       DEX            
       STX    $D1     
       LDA    #$29    
       STA    $B7     
       LDA    #$36    
       STA    $D8     
       LDX    #$FF    
       TXS            
       TXA            
       JSR    LF424   
       STX    $D2     
       STX    $DC     
       STX    $DD     
       STX    $F9     
       STX    $B8     
       STX    $B3     
LF5F8: LDX    INTIM   
       BNE    LF5F8   
       DEX            
       LDA    #$2D    
LF600: STA    WSYNC   
       STX    VSYNC   
       STA    TIM64T  
       LDX    #$02    
LF609: STA    WSYNC   
       LDY    $F5,X   
       LDA    LF4E1,Y 
       BNE    LF620   
       LDY    $F7,X   
       BEQ    LF635   
       BIT    $80     
       BMI    LF635   
       STY    $F5,X   
       STA    $F7,X   
       BPL    LF640   
LF620: INC    $F5,X   
       CMP    #$F0    
       BCC    LF62A   
       STA    RESBL,X 
       BCS    LF640   
LF62A: CMP    #$E0    
       BCC    LF635   
       AND    #$0F    
       ASL            
       STA    $F9,X   
       BCC    LF640   
LF635: STA    AUDF1,X 
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $F9,X   
       STA    AUDC1,X 
LF640: DEX            
       BNE    LF609   
       STA    WSYNC   
       STX    VSYNC   
       JSR    LFB64   
       LDA    $99     
       CMP    #$10    
       BCS    LF65A   
       LDA    #$8A    
       STA    $F8     
       LDA    $A3     
       AND    $84     
       STA    $84     
LF65A: LDY    $B2     
       BPL    LF686   
       LDA    INPT4   
       BMI    LF686   
       LDA    $80     
       AND    #$88    
       BNE    LF686   
       STA    $A4     
       LDY    #$1C    
       STY    $A9     
       LDA    #$0E    
       STA    $DB     
       LDA    $B1     
       SBC    #$02    
       STA    $B2     
       LDA    $C7     
       STA    $C8     
       LDA    $D2     
       STA    $D3     
       LDA    #$01    
       STA    $F6     
       BPL    LF6C9   
LF686: LDA    $DB     
       BEQ    LF68C   
       DEC    $DB     
LF68C: LSR            
       TAX            
       CPY    #$2F    
       BCS    LF69A   
       LDY    LFEBF,X 
       LDA    LFEB7,X 
       BCC    LF69F   
LF69A: LDY    LFEAF,X 
       LDA    #$00    
LF69F: CLC            
       ADC    $B2     
       STA    $B2     
       BMI    LF6C2   
       LDA    LFEA7,X 
       AND    $83     
       STA    $85     
       TYA            
       LDY    $D3     
       CPY    #$08    
       BCC    LF6B6   
       EOR    #$FF    
LF6B6: ADC    $C8     
       STA    $C8     
       CMP    #$30    
       BCC    LF6C2   
       CMP    #$D0    
       BCC    LF6C9   
LF6C2: LDX    #$00    
       STX    $A9     
       DEX            
       STX    $B2     
LF6C9: LDX    #$0A    
LF6CB: LDA    LFF71,X 
       LSR            
       LDA    $C7,X   
       BCC    LF6D5   
       LDA    $8B,X   
LF6D5: SEC            
       SBC    #$30    
       CMP    #$94    
       BCC    LF6F0   
       CPX    #$08    
       BEQ    LF6E4   
       CPX    #$03    
       BCS    LF6E8   
LF6E4: LDA    #$89    
       BNE    LF70F   
LF6E8: CMP    #$A0    
       BCC    LF6F0   
       LDA    #$FA    
       BNE    LF70F   
LF6F0: TAY            
       AND    #$0F    
       STA    $A5     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $A5     
       CMP    #$0F    
       BCC    LF705   
       SBC    #$0F    
       INY            
LF705: STY    $A5     
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $A5     
LF70F: STA    $BB,X   
       DEX            
       BPL    LF6CB   
       LDX    #$05    
       STX    $A5     
       INX            
       LDA    $80     
       ROL            
       BMI    LF74A   
       BIT    $A3     
       BVS    LF748   
       BCS    LF74A   
       LDA    $E8     
       ORA    $E9     
       ORA    $EA     
       LDY    #$40    
       LDX    #$0C    
       CMP    #$40    
       BCS    LF73D   
       LDY    $DE     
       AND    LF40E,Y 
       BEQ    LF748   
       LDX    #$12    
       LDY    #$44    
LF73D: LDA    $E0     
       BEQ    LF742   
       TYA            
LF742: AND    $83     
       STA    COLUBK  
       BPL    LF74A   
LF748: LDX    #$00    
LF74A: LDY    #$0A    
LF74C: LDA    $9B,X   
       BEQ    LF752   
       STX    $A5     
LF752: CPX    $A5     
       BCS    LF758   
       LDA    #$50    
LF758: CPX    #$06    
       BCC    LF766   
       LDA    LFEC4,X 
       BNE    LF766   
       ADC    $81     
       ASL            
       ASL            
       ASL            
LF766: STA.wy $008D,Y 
       INX            
       DEY            
       DEY            
       BPL    LF74C   
       LDA    $B3     
       STA    $FD     
       LDA    $A9     
       STA    $EE     
       LDA    #$00    
       STA    COLUPF  
       LDX    $B9     
       CPX    #$80    
       ROL            
       CPX    #$23    
       BCC    LF787   
       LDX    #$34    
       CPX    $B1     
LF787: ROL            
       LDX    $B2     
       STX    $FC     
       CPX    #$80    
       ROL            
       TAX            
       LDA    $A3     
       AND    LFF1A,X 
       TAY            
       AND    #$01    
       STA    $DA     
       BNE    LF79E   
       STA    $A9     
LF79E: TYA            
       CMP    LFF89,X 
       BNE    LF7B0   
       LDA    $B9     
       STA    $B2     
       LDA    $B0     
       STA    $A9     
       LDA    $C3     
       STA    $BC     
LF7B0: LDA    $B3     
       CLC            
       ADC    #$09    
       CMP    $B2     
       BCC    LF7CD   
       LDA    $A3     
       DEX            
       BPL    LF7BF   
       LSR            
LF7BF: LSR            
       LDY    #$00    
       BCS    LF7CB   
       STY    $A9     
       DEY            
       STY    $B2     
       BNE    LF7CD   
LF7CB: STY    $B3     
LF7CD: LDX    INTIM   
       BNE    LF7CD   
       STA    WSYNC   
       LDA    $C5     
       STA    HMM1    
       AND    #$0F    
       TAY            
       INC    $FF,X   
LF7DD: DEY            
       BPL    LF7DD   
       STA    RESM1   
       STA    WSYNC   
       LDA    $C4     
       STA    HMM0    
       AND    #$0F    
       TAY            
       DEC    $FF,X   
LF7ED: DEY            
       BPL    LF7ED   
       STA    RESM0   
       STA    WSYNC   
       STX    VBLANK  
       LDA    #$F0    
       STA    $8E     
       STA    $90     
       STA    $92     
       STA    $94     
       STA    $96     
       STA    $98     
       LDA    #$07    
       STA    $A5     
       NOP            
       LSR            
       LDX    #$10    
       STX    HMP1    
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ1  
       STA    NUSIZ0  
       STA    VDELP0  
       STA    VDELP1  
       JMP    LF0C0   
LF821: LDA    #$23    
       STA    WSYNC   
       STA    TIM64T  
       LDX    #$FF    
       STX    VBLANK  
       TXS            
       STX    $95     
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STX    ENAM0   
       STX    $A1     
       STX    REFP0   
       STX    REFP1   
       LDA    $FC     
       CMP    $B2     
       BEQ    LF846   
       STX    $BD     
LF846: STA    $B2     
       LDA    $FD     
       STA    $B3     
       LDA    $EE     
       STA    $A9     
       INC    $82     
       LDX    $82     
       LDA    LFC59,X 
       EOR    $A3     
       STA    $96     
       INC    $A3     
       BNE    LF866   
       INC    $A4     
       BNE    LF866   
       SEC            
       ROR    $A4     
LF866: LDA    SWCHB   
       AND    #$08    
       ASL            
       SBC    #$00    
       EOR    #$F0    
       LDY    $A4     
       BPL    LF878   
       STY    $A1     
       AND    #$F7    
LF878: STA    $83     
       ASL    $A1     
       LDX    #$0C    
LF87E: LDA    $A1     
       EOR    LFE9A,X 
       AND    $83     
       STA    $84,X   
       CPX    #$09    
       BCC    LF88D   
       STA    $FD,X   
LF88D: DEX            
       BPL    LF87E   
       LDA    SWCHB   
       EOR    #$FF    
       LDY    #$09    
       LSR    $80     
       AND    #$03    
       BEQ    LF8B0   
       BCS    LF8B1   
       LSR            
       BEQ    LF8AB   
       CLC            
       ADC    $81     
       AND    #$03    
       STA    $81     
       LDY    #$C9    
LF8AB: LDX    #$8D    
       JMP    LF575   
LF8B0: CLC            
LF8B1: ROL    $80     
       LDA    $DF     
       LSR            
       STA    $97     
       TAY            
       LDA    LFF81,Y 
       BCC    LF8C0   
       ADC    #$0E    
LF8C0: ADC    $F2     
       STA    $F2     
       LDA    #$01    
       ADC    #$00    
       STA    $93     
       DEC    $EC     
       BNE    LF90B   
       LDA    $80     
       AND    #$12    
       BEQ    LF8FA   
       CMP    #$04    
       LDA    $80     
       AND    #$E8    
       STA    $80     
       BCS    LF8E1   
       JMP    LF5B9   
LF8E1: LDA    #$0D    
       JSR    LFB49   
       LDA    $E0     
       BNE    LF8F0   
       LDA    $C6     
       BEQ    LF8F0   
       DEC    $C6     
LF8F0: LDX    $DF     
       CPX    #$0F    
       BCS    LF8F7   
       INX            
LF8F7: JMP    LF58E   
LF8FA: LDX    $EB     
       STA    $F9     
       STA    $EB     
       LDA    #$E0    
       DEX            
       BMI    LF907   
       STA    $B2,X   
LF907: AND    $80     
       STA    $80     
LF90B: LDX    #$02    
       LDA    $EF     
       JSR    LF9F6   
       LDX    #$07    
       LDA    #$FF    
       JSR    LF9F6   
       LDA    $A3     
       AND    #$0C    
       LSR            
       LSR            
       TAY            
       STA    $94     
       LDA    LFEE4,Y 
       LDX    $B1     
       CPX    #$2A    
       BCS    LF92E   
       LDA    LFEE8,Y 
LF92E: STA    $A8     
       LDX    $EB     
       CPX    #$08    
       BEQ    LF993   
       LDX    #$00    
       LDY    $B9     
       CPY    #$12    
       BCC    LF96C   
       LDA    #$FF    
       STA    $EF     
       LDA    $CF     
       SBC    $C7     
       BEQ    LF96C   
       BCS    LF954   
       LDX    #$04    
       CPX    $CF     
       BCC    LF952   
       STX    $CF     
LF952: EOR    #$FF    
LF954: INX            
       CPY    #$29    
       BCS    LF96C   
       INX            
       CMP    #$06    
       BCC    LF96C   
       INX            
       LDA    $B1     
       SBC    #$09    
       SBC    $B9     
       BEQ    LF96C   
       INX            
       BCC    LF978   
       DEX            
       DEX            
LF96C: LDY    $97     
       CLC            
       LDA    LFFC0,Y 
       ADC    $F0     
       STA    $F0     
       BCC    LF993   
LF978: LDA    $80     
       AND    #$88    
       BNE    LF9C0   
       CLC            
       LDA    $B9     
       BMI    LF993   
       ADC    LFFC8,X 
       STA    $B9     
       LDY    $F5     
       BNE    LF993   
       LDA    LFFCF,X 
       ADC    $CF     
       STA    $CF     
LF993: LDA    $C4     
       CMP    #$FA    
       BEQ    LF9BC   
       LDA    $DF     
       ASL            
       ASL            
       ASL            
       ORA    #$87    
       ADC    $F3     
       STA    $F3     
       BCC    LF9C0   
       LDX    $ED     
       CLC            
       LDA    $D0     
       ADC    LFF95,X 
       STA    $D0     
       CLC            
       LDA    $BA     
       BMI    LF9C0   
       ADC    LFFA5,X 
       CMP    $B3     
       BCS    LF9BE   
LF9BC: LDA    #$FF    
LF9BE: STA    $BA     
LF9C0: LDX    #$05    
LF9C2: LDY    $DE     
       BPL    LF9CC   
       LDA    $D9     
       ORA    #$08    
       STA    $D9     
LF9CC: LDA    $E5,X   
       CPY    #$08    
       BCC    LF9D4   
       LDA    #$00    
LF9D4: AND    LF40D,Y 
       BEQ    LF9E6   
       CPX    $EB     
       BNE    LF9E1   
       EOR    $E5,X   
       STA    $E5,X   
LF9E1: LDY    $94     
       LDA    LFEEC,Y 
LF9E6: STA    $A8,X   
       JSR    LFD59   
       DEX            
       CPX    #$03    
       BCS    LF9C2   
       JSR    LFCFE   
       JMP    LF5F8   
LF9F6: AND    $A0,X   
       TAY            
       AND    #$0F    
       STA    $A6     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       STY    $A5     
       LDA    LFEF0,Y 
       STA    $A8,X   
       LDA    LFF07,Y 
       CPY    #$08    
       BCC    LFA19   
       LDY    #$06    
       LDA    $A3     
       AND    #$0F    
       ORA    #$10    
LFA19: EOR    $A1     
       AND    $83     
       STA    $84,X   
       LDA    LFF12,Y 
       CLC            
       ADC    $C9     
       STA    $CE     
       LDA    LFEFF,Y 
       LDY    $A6     
       BNE    LFA2F   
       TYA            
LFA2F: STA    $B1,X   
       BEQ    LFA63   
       LDA    #$02    
       CMP    $A5     
       BNE    LFA63   
       LDA    $B9     
       BPL    LFA63   
       TYA            
       AND    $96     
       BEQ    LFA43   
       TAY            
LFA43: LDA    LFFE0,Y 
       ADC    $C9     
       CMP    #$C4    
       BCS    LFA63   
       CMP    #$30    
       BCC    LFA63   
       STA    $CF     
       LDA    LFFB8,Y 
       STA    $EF     
       LDA    #$6F    
       STA    $F9     
       LDA    #$09    
       STA    $B9     
       LDA    #$41    
       STA    $B0     
LFA63: LDY    $A6     
       LDA    LFF3C,Y 
       STA    $D2,X   
       CLC            
       LDA    $C7,X   
       ADC    LFF37,Y 
       STA    $8B,X   
       CMP    LFF0D,X 
       BCC    LFA81   
       LDY    #$02    
       CMP    LFF0E,X 
       BCS    LFA96   
       INY            
       BCC    LFA96   
LFA81: CMP    #$30    
       BCS    LFA9D   
       LDY    $D2,X   
       CPY    #$03    
       BNE    LFA90   
       CMP    #$20    
       BCS    LFA90   
       DEY            
LFA90: CLC            
       ADC    LFF21,Y 
       STA    $8B,X   
LFA96: LDA    $D2,X   
       AND    LFF25,Y 
       STA    $D2,X   
LFA9D: LDA    $B2     
       BMI    LFAA8   
       SEC            
       SBC    #$04    
       CMP    $B1,X   
       BCC    LFAA9   
LFAA8: RTS            

LFAA9: LDA    $C8     
       ADC    LFF0F,X 
       SEC            
       SBC    $C7,X   
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$04    
       BCS    LFAA8   
       TAY            
       LDA    LFFB5,Y 
       AND    $A0,X   
       BEQ    LFAA8   
       EOR    $A0,X   
       STA    $A0,X   
       INC    $95     
       LDA    #$F0    
       STA    $B2     
       LDA    $B0     
       CMP    #$41    
       BEQ    LFADD   
       LDA    $C8     
       STA    $CF     
       LDA    $B1,X   
       STA    $B9     
       LDA    #$08    
       STA    $EB     
LFADD: LDA    #$21    
       STA    $F7     
       LDY    #$1F    
       STY    $EC     
       LDA    #$04    
       LDY    #$07    
       CPY    $DE     
       BNE    LFAFD   
       LDY    $A2     
       CPY    #$31    
       BCS    LFAFD   
       LDY    $A7     
       CPY    #$71    
       BCS    LFAFD   
       LDA    #$1C    
       ASL    $EC     
LFAFD: ORA    $80     
       STA    $80     
       LDA    $A0,X   
       CMP    #$60    
       BNE    LFB1A   
       LDA    $F4     
       INC    $F4     
       BIT    SWCHB   
       BVC    LFB12   
       EOR    $96     
LFB12: AND    #$0F    
       TAY            
       LDA    LFF71,Y 
       STA    $A0,X   
LFB1A: LDY    $A5     
       LDA    LFF29,Y 
       BPL    LFB2B   
       LDX    $C6     
       INX            
       CPX    #$09    
       BCS    LFB2B   
       STX    $C6     
       ASL            
LFB2B: CLC            
       ADC    $99     
       CMP    #$28    
       BCC    LFB34   
       LDA    #$28    
LFB34: STA    $99     
       LDA    LFFEB,Y 
       BPL    LFB45   
       LDY    #$27    
       STY    $A2     
       LDY    #$07    
       STY    $F1     
       AND    #$3F    
LFB45: LDY    $E0     
       BEQ    LFB63   
LFB49: TAY            
       AND    #$07    
       TAX            
       TYA            
       AND    #$78    
LFB50: CLC            
       ADC    $9B,X   
       CMP    #$50    
       BCC    LFB61   
       SBC    #$50    
       STA    $9B,X   
       LDA    #$08    
       DEX            
       BPL    LFB50   
       RTS            

LFB61: STA    $9B,X   
LFB63: RTS            

LFB64: ASL    $F5     
       LDX    $D2     
       LDY    $DC     
       LDA    $80     
       ROL            
       AND    #$10    
       BNE    LFB63   
       BCS    LFB78   
       LDA    SWCHA   
       EOR    #$FF    
LFB78: STA    $8E     
       AND    #$C0    
       BEQ    LFB8F   
       ROL            
       LDA    #$5D    
       STA    $F8     
       BCS    LFB9A   
       LDX    #$08    
       CPY    #$C0    
       BEQ    LFBA1   
LFB8B: DEY            
       JMP    LFBA1   
LFB8F: LDA    #$6B    
       STA    $F8     
       TYA            
       BEQ    LFBA1   
       BMI    LFBA0   
       BPL    LFB8B   
LFB9A: LDX    #$00    
       CPY    #$40    
       BEQ    LFBA1   
LFBA0: INY            
LFBA1: STY    $DC     
       CPX    $D2     
       BEQ    LFBA9   
       DEC    $F5     
LFBA9: STX    $D2     
       TYA            
       CPY    #$80    
       ROR            
       STA    $A5     
       TYA            
       LDY    #$00    
       CLC            
       ADC    $DD     
       BPL    LFBC5   
LFBB9: CMP    #$DF    
       BCS    LFBC9   
       DEY            
       ADC    #$20    
       BNE    LFBB9   
LFBC2: INY            
       SBC    #$20    
LFBC5: CMP    #$20    
       BCS    LFBC2   
LFBC9: STA    $DD     
       STY    $A6     
       SEC            
       LDA    $C7     
       TAY            
       SBC    $A5     
       AND    #$FE    
       CPX    #$08    
       BEQ    LFBEF   
       CMP    #$36    
       BEQ    LFC03   
       BCC    LFBF5   
LFBDF: CPY    #$37    
       BEQ    LFC03   
       BCC    LFBFB   
LFBE5: DEC    $C7     
       CPY    #$AD    
       BCS    LFC03   
       INC    $A6     
       BCC    LFC03   
LFBEF: CMP    #$B8    
       BEQ    LFC03   
       BCS    LFBDF   
LFBF5: CPY    #$B8    
       BEQ    LFC03   
       BCS    LFBE5   
LFBFB: INC    $C7     
       CPY    #$3B    
       BCC    LFC03   
       DEC    $A6     
LFC03: LDA    $A3     
       AND    #$07    
       BEQ    LFC22   
       LDA    $8E     
       AND    #$30    
       BEQ    LFC22   
       LDX    $B1     
       INX            
       AND    #$10    
       BNE    LFC18   
       DEX            
       DEX            
LFC18: CPX    #$58    
       BCS    LFC22   
       CPX    #$1A    
       BCC    LFC22   
       STX    $B1     
LFC22: LDX    #$08    
LFC24: SEC            
       LDA    $C9,X   
       SBC    $A6     
       CPX    #$04    
       BEQ    LFC31   
       CPX    #$08    
       BNE    LFC3B   
LFC31: CMP    #$30    
       BCC    LFC39   
       CMP    #$D0    
       BCC    LFC3B   
LFC39: EOR    #$E0    
LFC3B: STA    $C9,X   
       DEX            
       BPL    LFC24   
       SEC            
       SBC    #$D0    
       CLC            
       ADC    $A6     
       LDA    $A6     
       AND    #$80    
       ROL            
       ROL            
       TAY            
       LDA    LFEC6,Y 
       BEQ    LFC59   
       STA    $A5     
       ADC    $DE     
       JMP    LF424   
LFC59: LDA    $80     
       BMI    LFCC2   
       LDX    #$01    
LFC5F: LDY    #$03    
LFC61: LDA.wy $00A8,Y 
       BEQ    LFC70   
       LDA.wy $00B1,Y 
       SEC            
       SBC    #$07    
       CMP    $B1,X   
       BCC    LFC77   
LFC70: INY            
       CPY    #$06    
       BCC    LFC61   
       BCS    LFCC3   
LFC77: ADC    #$0B    
       CMP    $B1,X   
       BCC    LFCC3   
       LDA.wy $00C7,Y 
       SBC    #$0E    
       CMP    $C7,X   
       BCS    LFCC3   
       ADC    #$10    
       CMP    $C7,X   
       BCC    LFCC3   
       CPY    $EB     
       BEQ    LFCC3   
       STY    $EB     
       LDY    #$F0    
       LDA    #$08    
       CMP    $EB     
       BNE    LFC9C   
       STY    $B9     
LFC9C: LDA    #$1A    
       STA    $F7     
       LDA    #$1F    
       STA    $EC     
       TXA            
       BEQ    LFCAE   
       STY    $B2     
       LDA    #$13    
       JMP    LFB45   
LFCAE: LDA    #$1A    
       STA    $F6     
       LDA    #$0A    
       DEC    $C6     
       BPL    LFCBC   
       STA    $C6     
       LDA    #$8A    
LFCBC: STA    $80     
       LDA    #$37    
       STA    $EC     
LFCC2: RTS            

LFCC3: DEX            
       BPL    LFC5F   
       BIT    $BC     
       BVS    LFCAE   
       LDA    $B9     
       BMI    LFCF4   
       CLC            
       ADC    #$07    
       CMP    $B1     
       BCC    LFCF4   
       LDX    #$08    
       CPX    $EB     
       BEQ    LFCF5   
       LDA    #$1F    
       STA    $EC     
       LDA    #$78    
       STA    $F9     
       STX    $EB     
       SEC            
       LDA    $CF     
       SBC    #$06    
       CMP    $C7     
       BCS    LFCF4   
       ADC    #$0C    
       CMP    $C7     
       BCS    LFCAE   
LFCF4: RTS            

LFCF5: SBC    #$04    
       CMP    $B1     
       BCC    LFCF4   
       JMP    LF4D5   
LFCFE: LDA    $80     
       AND    #$88    
       BNE    LFD20   
       LDA    $A3     
       AND    #$3F    
       BNE    LFD20   
       INC    $82     
       LDX    #$01    
LFD0E: SEC            
       LDA    $99,X   
       SBC    #$08    
       BCS    LFD1E   
       LDA    #$48    
       STA    $99,X   
       DEX            
       BPL    LFD0E   
       BMI    LFCAE   
LFD1E: STA    $99,X   
LFD20: LDA    $EC     
       AND    #$1F    
       LSR            
       LSR            
       TAX            
       LDY    LFEDC,X 
       LDA    $80     
       AND    #$02    
       BEQ    LFD32   
       STY    $A8     
LFD32: LDA    $80     
       AND    #$04    
       BEQ    LFD3E   
       LDA    $96     
       AND    #$0E    
       STA    $A1     
LFD3E: LDX    $EB     
       BEQ    LFD58   
       STY    $A8,X   
       LDA    $80     
       AND    #$10    
       BNE    LFD52   
       CPX    #$06    
       BCS    LFD58   
       LDA    $96     
       AND    #$72    
LFD52: ORA    #$40    
       AND    $83     
       STA    $8C     
LFD58: RTS            

LFD59: AND    $95     
       BEQ    LFDC8   
       LDA    $F9     
       BNE    LFD65   
       LDA    #$61    
       STA    $F9     
LFD65: LDY    #$08    
       LDA    $D2,X   
       BMI    LFD72   
       LDY    $CE     
       ASL            
       BPL    LFD72   
       LDY    $C7     
LFD72: STY    $A5     
       LDY    $DE     
       BEQ    LFD7C   
       CPY    #$07    
       BNE    LFD88   
LFD7C: LDA    LFF44,Y 
       EOR    $A5     
       BPL    LFD88   
       LDA    LFF44,Y 
       STA    $A5     
LFD88: LDY    $C7,X   
       CPY    $A5     
       LDA    $93     
       BCC    LFD92   
       EOR    #$FF    
LFD92: ADC    $C7,X   
       CMP    #$FC    
       BCC    LFD9A   
       LDA    #$FA    
LFD9A: CMP    #$04    
       BCS    LFDA0   
       LDA    #$06    
LFDA0: STA    $C7,X   
       CMP    $A5     
       BCC    LFDC8   
       SBC    #$04    
       CMP    $A5     
       BCS    LFDC8   
       LDA    $D2,X   
       BPL    LFDC0   
       LDY    $DE     
       LDA    $E5,X   
       EOR    LF40C,Y 
       CMP    $E5,X   
       BCC    LFDC0   
       EOR    LF40D,Y 
       STA    $E5,X   
LFDC0: LDA    $D2,X   
       AND    #$7F    
       EOR    #$40    
       STA    $D2,X   
LFDC8: LDA    $A3     
       AND    #$03    
       CMP    LFFB3,X 
       BNE    LFE43   
       LDA    $96     
       CMP    #$57    
       BCC    LFE0F   
       LDY    $DE     
       BEQ    LFE0F   
       CPY    #$08    
       BCS    LFE0F   
       LDA    $A3     
       AND    #$BC    
       ASL            
       BNE    LFE0F   
       LDA    $E5,X   
       BMI    LFDFA   
       BCS    LFE0F   
       AND    LFF44,Y 
       STA    $A5     
       EOR    $E5,X   
       ASL            
       ORA    $A5     
       STA    $E5,X   
       BPL    LFE0F   
LFDFA: LDA    $E0     
       BEQ    LFE0F   
       LSR            
       EOR    #$08    
       AND    #$0F    
       TAY            
       LDA    #$2E    
       STA    $8C     
       STA    $F7     
       LDA    LFFD8,Y 
       STA    $E0     
LFE0F: LDA    $BA     
       BPL    LFE44   
       LDA    $81     
       CMP    #$03    
       BEQ    LFE44   
       LDA    $A8,X   
       BEQ    LFE44   
       LDA    $BB,X   
       CMP    #$FA    
       BEQ    LFE27   
       LDA    #$12    
       STA    $F9     
LFE27: LDA    $96     
       AND    #$03    
       STA    $ED     
       LDA    $B1,X   
       SBC    #$03    
       STA    $BA     
       CMP    $B1     
       ROL    $ED     
       LDA    $C7,X   
       ADC    #$04    
       STA    $D0     
       SBC    #$08    
       CMP    $C7     
       ROL    $ED     
LFE43: RTS            

LFE44: LDA    $96     
       AND    #$07    
       CMP    $DE     
       BEQ    LFE6F   
       TAY            
       LDA    $E5,X   
       AND    LF40D,Y 
       BNE    LFE6F   
       LDA    $F1     
       BCS    LFE60   
       SBC    #$0F    
       BCC    LFE6F   
       STA    $F1     
       BCS    LFE68   
LFE60: AND    #$0F    
       SBC    #$01    
       BCC    LFE6F   
       DEC    $F1     
LFE68: LDA    LF40D,Y 
       ORA    $E5,X   
       STA    $E5,X   
LFE6F: LDA    $D2,X   
       AND    #$10    
       BEQ    LFE77   
       LDA    #$FE    
LFE77: SEC            
       ADC    $B1,X   
       CMP    LFF49,X 
       BCS    LFE84   
       CMP    LFF4C,X 
       BCS    LFE93   
LFE84: LDA    $D2,X   
       EOR    #$10    
       LDY    $96     
       CPY    #$30    
       BCS    LFE90   
       ORA    #$80    
LFE90: STA    $D2,X   
       RTS            

LFE93: CPX    $EB     
       BEQ    LFE99   
       STA    $B1,X   
LFE99: RTS            

LFE9A: .byte $0E,$4E,$C4,$FE,$8E,$3C,$24,$0E,$84,$4E,$4E,$4E,$82
LFEA7: .byte $7E,$7E,$1C,$1C,$2A,$3A,$48,$58
LFEAF: .byte $06,$06,$05,$04,$03,$02,$01,$09
LFEB7: .byte $FE,$FF,$FF,$FF,$FF,$FF,$FF,$00
LFEBF: .byte $04,$03,$03,$03,$02
LFEC4: .byte $02,$01
LFEC6: .byte $00,$FF,$01,$00,$98,$A0,$A8,$B0,$B8,$00,$50,$78,$80,$88,$50,$50
       .byte $50,$60,$68,$70,$50,$50
LFEDC: .byte $83,$7E,$78,$71,$71,$78,$7E,$83
LFEE4: .byte $01,$08,$01,$08
LFEE8: .byte $0E,$15,$0E,$15
LFEEC: .byte $20,$25,$20,$25
LFEF0: .byte $2A,$51,$41,$51,$49,$60,$33,$60,$1C,$4C,$20,$41,$2A,$0E,$87
LFEFF: .byte $08,$0E,$08,$0E,$03,$11,$0E,$11
LFF07: .byte $C4,$0F,$4E,$00,$82,$1E
LFF0D: .byte $0E
LFF0E: .byte $40
LFF0F: .byte $A6,$B6,$06
LFF12: .byte $00,$00,$AC,$BC,$0A,$0E,$3E,$0E
LFF1A: .byte $01,$00,$03,$01,$01,$00,$01
LFF21: .byte $00,$10,$20,$10
LFF25: .byte $FC,$FC,$FC,$FD
LFF29: .byte $00,$08,$00,$00,$00,$08,$08,$00,$08,$88,$00,$00,$10,$08
LFF37: .byte $00,$20,$10,$10,$00
LFF3C: .byte $00,$00,$00,$01,$00,$02,$01,$03
LFF44: .byte $FF,$7F,$3F,$1F,$0F
LFF49: .byte $07,$03,$01
LFF4C: .byte $56,$4B,$40,$4D,$43,$37
LFF52: .byte $2E,$2F,$A3,$AB,$A6,$AF,$AF,$A7,$AA,$AD,$AE,$A5,$AA,$A6,$A8,$AC
       .byte $AC,$AC,$AC,$AC,$AC
LFF67: .byte $03,$6A,$35,$5E,$3D,$7B,$EF,$7F,$FF,$FF
LFF71: .byte $82,$D2,$A1,$C2,$82,$B2,$D2,$91,$82,$A2,$D2,$B2,$C2,$D2,$82,$92
LFF81: .byte $02,$24,$48,$6C,$90,$B4,$B8,$F0
LFF89: .byte $00,$00,$01,$01
LFF8D: .byte $48,$18,$10,$10,$10,$10,$08,$08
LFF95: .byte $03,$FD,$03,$FD,$02,$FE,$02,$FE,$02,$FE,$02,$FE,$01,$FF,$01,$FF
LFFA5: .byte $01,$01,$FF,$FF,$01,$01,$FF,$FF,$02,$02,$FE,$FE,$02,$02
LFFB3: .byte $FE,$FE
LFFB5: .byte $04,$02,$01
LFFB8: .byte $00,$FE,$FD,$FD,$FB,$FE,$FD,$FB
LFFC0: .byte $44,$63,$84,$98,$A0,$B0,$D0,$E0
LFFC8: .byte $01,$01,$01,$00,$FF,$01,$01
LFFCF: .byte $00,$FF,$FE,$FE,$FE,$01,$02,$02,$02
LFFD8: .byte $40,$50,$52,$59,$52,$59,$59,$5D
LFFE0: .byte $00,$20,$10,$10,$00,$20,$10,$00
LFFE8: .byte $02,$06,$0E
LFFEB: .byte $00,$0B,$1B,$1B,$00,$23,$44,$33,$1B,$33,$CB,$FC,$23,$1B,$00,$64
       .byte $6E,$6F,$F5,$6F,$F5
