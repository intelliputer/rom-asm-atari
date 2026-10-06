; Disassembly of roms/Infiltrate.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Infiltrate.bin
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
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXPPMM  =  $37
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
L92B6   =   $92B6
L993B   =   $993B
L993C   =   $993C

       ORG $9000

START:
       JMP    L9369   
L9003: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$7E,$DB,$DB,$FF,$A5,$74,$04,$0E,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
L9095: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L909F: .byte $00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$18,$3C,$18,$FE,$1A,$18,$24,$24,$6C,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$52,$A4,$01,$01,$A0,$01,$80,$01,$52,$2C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$3C,$FF,$18,$66,$C3,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L91EA: LDX    #$0B    
       STX    $EE     
       LDA    #$01    
       STA    $F0     
       LDY    #$00    
       STY    $F2     
       LDA    #$09    
       STA    $F1     
L91FA: LDA    $E9     
       BNE    L9204   
       LDA    L9095,X 
       JMP    L9207   
L9204: LDA    L909F,X 
L9207: STA    ENABL   
L9209: STY    WSYNC   
       LDA    L959D,Y 
       ADC    $E8     
       STA    COLUPF  
       LDA    $F4     
       STA    PF0     
       LDA    $F5     
       STA    PF1     
       LDA    $F6     
       STA    PF2     
       LDA    $F7     
       STA    PF0     
       LDA    $F8     
       STA    PF1     
       LDY    $F2     
       LDA    $F9     
       STA    PF2     
       LDA    $F4     
       STA    PF0     
       LDA    $F5     
       STA    PF1     
       LDA    $F0     
       CMP.wy $0080,Y 
       BMI    L92AA   
       LDA.wy $008D,Y 
       LDX    $99,Y   
       EOR    $F4,X   
       STA    $F4,X   
       INC    $F2     
       LDY    $F0     
L9248: LDA    $F6     
       STA    PF2     
       LDA    ($E1),Y 
       STA    GRP1    
       LDA    ($DF),Y 
       LDX    $F7     
       STX    PF0     
       LDX    $F8     
       STX    PF1     
       LDX    $F9     
       STX    PF2     
       STA    GRP0    
       INC    $F0     
       DEC    $F1     
       BPL    L9209   
       STY    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    $EE     
       LDA    $F4     
       EOR    L92B6,X 
       STA    $F4     
       LDA    $F5     
       EOR    L92C1,X 
       STA    $F5     
       LDA    $F6     
       EOR    L92CC,X 
       STA    $F6     
       LDA    $F7     
       EOR    L92D7,X 
       STA    $F7     
       LDA    $F8     
       EOR    L92E2,X 
       STA    $F8     
       LDA    $F9     
       EOR    L92ED,X 
       STA    $F9     
       LDA    L9310,X 
       STA    $F1     
       DEC    $EE     
       BMI    L92A9   
       DEX            
       JMP    L91FA   
L92A9: RTS            

L92AA: LDY    $F0     
       LDA    ($E3),Y 
       STA    ENAM0   
       LDA    ($E5),Y 
       STA    ENAM1   
       JMP    L9248   
L92B7: .byte $FF,$5F,$1F,$1F,$1F,$1F,$1F,$FF,$FF,$FF
L92C1: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$D7,$C7,$C7
L92CC: .byte $C7,$FF,$FF,$FF,$EB,$E3,$E3,$E3,$E3,$E3,$FF
L92D7: .byte $FF,$80,$80,$80,$FF,$FF,$FF,$FF,$FF,$FF,$FF
L92E2: .byte $FF,$FF,$FF,$FF,$FF,$FF,$EB,$E3,$E3,$E3,$E3
L92ED: .byte $E3,$8F,$8F,$8F,$8F,$8F,$FF,$FF,$FF,$FF,$FF,$FF
L92F9: .byte $00,$03,$01,$04,$02,$05,$00,$03,$01,$04,$02,$05,$00,$03,$01,$04
       .byte $02,$05,$00,$03,$01,$04,$00
L9310: .byte $03,$03,$08,$03,$08,$03,$08,$03,$08,$03,$08,$03
L931C: .byte $3F,$18,$32,$4C,$25,$4C
L9322: .byte $25
L9323: .byte $0B,$18,$3F,$0B,$32
L9328: .byte $8F,$38,$88,$FF,$FF,$7A,$3A,$7A,$FF
L9331: .byte $3E,$92,$FF,$3E,$5E,$92,$FF,$5E,$92,$FF,$5E,$B6,$FF,$76,$B6,$76
       .byte $B6,$FF
L9343: .byte $51,$A5,$FF,$51,$71,$A5,$3D,$71,$A5,$3D,$71,$FF,$3D,$89,$FF,$89
       .byte $FF
L9354: .byte $FF,$01,$02,$03,$01,$02,$02,$FF,$04,$04,$01,$02,$01,$02,$FF
L9363: .byte $0B,$18,$25,$32,$3F,$4C
L9369: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L9370: STA    $80,X   
       INX            
       BNE    L9370   
       JSR    L9489   
       JSR    L94A4   
L937B: LDA    #$1E    
       STA    WSYNC   
       STA    TIM64T  
       JSR    L96BC   
       JSR    L94DF   
       JSR    L9534   
       LDA    #$00    
       LDX    $AB     
       BMI    L9393   
       LDA    #$3C    
L9393: STA    REFP0   
       LDA    L9328   
       STA    COLUP0  
       LDA    $CC     
       LDX    #$00    
       JSR    L9800   
       LDX    #$01    
       LDA    $DD     
       AND    #$01    
       BEQ    L93AA   
       INX            
L93AA: STX    $EC     
       LDA    L9328,X 
       LDY    $D8,X   
       CPY    #$01    
       BMI    L93B8   
       LDA    L9323,Y 
L93B8: STA    COLUP1  
       LDA    $CC,X   
       LDX    #$01    
       JSR    L9800   
       LDY    #$00    
       LDA    $DE     
       AND    #$04    
       BNE    L93CB   
       LDY    #$3C    
L93CB: STY    REFP1   
       LDA    #$00    
       STA    COLUBK  
L93D1: LDA    INTIM   
       BNE    L93D1   
       LDX    #$FF    
       LDA    #$00    
       STX    WSYNC   
       STX    VBLANK  
       STX    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$22    
       STA    TIM64T  
       LDX    #$02    
L93EF: LDA    $D8,X   
       BNE    L93FA   
       DEX            
       BPL    L93EF   
       LDA    $DC     
       BPL    L9400   
L93FA: JSR    L98E7   
       JMP    L942A   
L9400: LDA    #$4B    
       CLC            
       ADC    #$58    
       LDY    #$90    
       LDX    #$06    
L9409: STA    $DF,X   
       STY    $E0,X   
       DEX            
       DEX            
       BPL    L9409   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       LDA    $DE     
       BNE    L9421   
       LDA    $E8     
       ADC    #$12    
       STA    $E8     
L9421: LDA    $DC     
       AND    #$40    
       BNE    L942A   
       JSR    L97D7   
L942A: LDA    #$00    
       STA    $F4     
       STA    $F5     
       STA    $F6     
       STA    $F7     
       STA    $F8     
       STA    $F9     
L9438: LDA    INTIM   
       BNE    L9438   
       STA    CXCLR   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDA    #$10    
       STA.w  $0004   
       LDA    #$20    
       STA.w  $0005   
       LDX    $EC     
       LDA    $D2,X   
       BPL    L9475   
       LDA    $D8,X   
       BNE    L9475   
       LDA    $DC     
       AND    #$3F    
       CMP    #$03    
       BMI    L9475   
       CMP    #$06    
       BMI    L9469   
       CMP    #$09    
       BMI    L9475   
L9469: LDA    #$4B    
       CLC            
       ADC    #$58    
       STA    $E1     
       LDA    #$90    
       STA.w  $00E2   
L9475: LDA    #$00    
       STA    WSYNC   
       STA    WSYNC   
       STA    HMCLR   
       STA    ENABL   
       LDX    #$20    
       STX    CTRLPF  
       JSR    L91EA   
       JMP    L95EC   
L9489: LDX    #$00    
       LDY    #$00    
L948D: LDA    L9578,Y 
       BMI    L94DE   
       STA    $80,X   
       INY            
       LDA    L9578,Y 
       STA    $99,X   
       INY            
       LDA    L9578,Y 
       STA    $8D,X   
       INY            
       INX            
       BNE    L948D   
L94A4: LDX    #$05    
L94A6: LDA    #$FE    
       STA    $C6,X   
       LDA    L931C,X 
       STA    $C0,X   
       DEX            
       BPL    L94A6   
       LDA    #$00    
       STA    $DD     
       STA    $DB     
       LDA    #$02    
       STA    $D6     
       STA    $D7     
       LDA    #$FF    
       STA    $D2     
       STA    $D3     
       STA    $D4     
       LDA    #$4C    
       STA    $CF     
       LDA    #$0B    
       STA    $D0     
       STA    $D1     
       LDA    #$2F    
       STA    $CC     
       STA    $CD     
       LDA    #$B9    
       STA    $CE     
       LDA    #$7F    
       STA    $8C     
L94DE: RTS            

L94DF: LDY    $DD     
       LDX    L92F9,Y 
       LDA    $C0,X   
       STA    $EE     
       LDA    $C6,X   
       STA    $F3     
       LDA    $C0,X   
       CMP    L931C,X 
       BMI    L94F9   
       LDA    #$FE    
       STA    $C6,X   
       BNE    L9504   
L94F9: CMP    L9322,X 
       BEQ    L9500   
       BPL    L9504   
L9500: LDA    #$02    
       STA    $C6,X   
L9504: LDA    $C0,X   
       CLC            
       ADC    $C6,X   
       CLC            
       ADC    #$03    
       STA    $C0,X   
       STX    $EF     
       LDY    #$0B    
       LDA    #$02    
       STA    $F1     
L9516: LDA.wy $0099,Y 
       CMP    $EF     
       BNE    L952B   
       LDA    $C0,X   
       STA.wy $0080,Y 
       SEC            
       SBC    #$03    
       STA    $C0,X   
       DEC    $F1     
       BEQ    L952E   
L952B: DEY            
       BPL    L9516   
L952E: CLC            
       ADC    #$03    
       STA    $C0,X   
       RTS            

L9534: LDX    #$00    
L9536: LDA    $81,X   
       CMP    $80,X   
       BPL    L9572   
       LDA    $80,X   
       STA    $F4     
       LDA    $99,X   
       STA    $F5     
       LDA    $8D,X   
       STA    $F6     
L9548: LDA    $81,X   
       STA    $80,X   
       LDA    $9A,X   
       STA    $99,X   
       LDA    $8E,X   
       STA    $8D,X   
       INX            
       LDA    $F4     
       CPX    #$0B    
       BEQ    L955F   
       CMP    $81,X   
       BPL    L9548   
L955F: STA    $80,X   
       LDA    $F5     
       STA    $99,X   
       LDA    $F6     
       STA    $8D,X   
       TXA            
       SEC            
       SBC    #$04    
       TAX            
       BPL    L9536   
       BMI    L9534   
L9572: INX            
       CPX    #$0B    
       BNE    L9536   
       RTS            

L9578: .byte $14,$01,$38,$17,$01,$28,$23,$04,$1C,$26,$04,$14,$30,$02,$1C,$33
       .byte $02,$14,$3B,$00,$E0,$3E,$00,$A0,$44,$05,$70,$47,$05,$50,$4A,$03
       .byte $70,$4D,$03,$50,$FF
L959D: .byte $74,$74,$76,$76,$78,$78,$7A,$7A,$7A,$7E,$7E,$74,$74,$7E,$14,$14
       .byte $16,$16,$18,$18,$1A,$1A,$1E,$1E,$14,$14,$1E,$D4,$D4,$D6,$D6,$D8
       .byte $D8,$DA,$DA,$DE,$DE,$D4,$D4,$DE,$24,$24,$26,$26,$28,$28,$2A,$2A
       .byte $2E,$2E,$24,$24,$2E,$44,$44,$46,$46,$48,$48,$4A,$4A,$4E,$4E,$44
       .byte $44,$4E,$14,$14,$16,$16,$18,$18,$1A,$1A,$1E,$1E,$14,$14,$1E
L95EC: LDA    #$00    
       STA    COLUBK  
       STA    REFP0   
       STA    REFP1   
       LDA    #$7E    
       ADC    $E8     
       STA    COLUP0  
       STA    COLUP1  
       LDX    $E7     
       LDA    $B2,X   
       BPL    L9604   
       LDA    #$00    
L9604: ASL            
       STA    $EC     
       LDA    #$B0    
       LDX    #$0A    
       LDY    #$96    
L960D: CPX    $EC     
       BPL    L9613   
       LDA    #$B8    
L9613: STA    $F0,X   
       STY    $F1,X   
       DEX            
       DEX            
       BPL    L960D   
       LDA    #$74    
       ADC    $E8     
       STA    $EC     
       JSR    L9762   
       LDY    $E7     
       LDA    L97D5,Y 
       ADC    $E8     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    $EF     
       LDA    #$F0    
       STA    $EE     
       LDA    $E7     
       CLC            
       ADC    #$0A    
       TAY            
       AND    #$01    
       BEQ    L9643   
       DEC    $EE     
L9643: LDX    $B4,Y   
       LDA    L97C9,X 
       STA    ($EE),Y 
       DEY            
       DEY            
       BPL    L9643   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       LDA    #$00    
       STA    $EC     
       JSR    L978F   
       JMP    L937B   
L9660: .byte $3C,$7E,$66,$66,$66,$66,$7E,$3C,$3C,$3C,$18,$18,$18,$18,$38,$18
       .byte $7E,$7E,$60,$7C,$3E,$06,$7E,$3C,$3C,$7E,$06,$0C,$0C,$06,$7E,$3C
       .byte $0C,$0C,$7E,$7E,$6C,$6C,$3C,$1C,$3C,$7E,$06,$7E,$7C,$60,$7E,$7E
       .byte $3C,$7E,$66,$7E,$7C,$60,$7E,$3C,$60,$30,$18,$0C,$06,$06,$7E,$7E
       .byte $3C,$7E,$66,$3C,$3C,$66,$7E,$3C,$3C,$7E,$06,$3E,$7E,$66,$7E,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FE,$38,$38,$10
L96BC: INC    $DD     
       LDA    $DD     
       AND    #$01    
       BEQ    L96C6   
       INC    $DE     
L96C6: LDA    $DD     
       CMP    #$18    
       BNE    L96D0   
       LDA    #$00    
       STA    $DD     
L96D0: LDA    SWCHB   
       AND    #$01    
       BEQ    L971F   
       LDA    $DE     
       AND    #$0F    
       BNE    L971E   
       LDA    SWCHB   
       AND    #$02    
       BEQ    L9700   
       LDA    $DD     
       AND    #$01    
       BEQ    L971E   
       LDA    $DC     
       AND    #$40    
       BEQ    L971E   
       LDA    $DC     
       AND    #$3F    
       CMP    #$06    
       BMI    L971E   
       LDA    #$01    
       SEC            
       SBC    $E7     
       STA    $E7     
       RTS            

L9700: LDA    #$00    
       STA    $E8     
       STA    $B2     
       STA    $E7     
       LDA    #$01    
       STA    $DE     
       LDA    $DC     
       BMI    L971A   
       INC    $DC     
       LDA    $DC     
       CMP    #$0C    
       BMI    L971A   
       LDA    #$00    
L971A: AND    #$3F    
       STA    $DC     
L971E: RTS            

L971F: LDA    #$00    
       LDX    #$05    
L9723: STA    AUDC0,X 
       DEX            
       BPL    L9723   
       LDX    #$0B    
L972A: STA    $A5,X   
       STA    $B4,X   
       DEX            
       BPL    L972A   
       STA    $E8     
       STA    $D8     
       STA    $D9     
       STA    $DA     
       STA    $E7     
       JSR    L94A4   
       LDA    $DC     
       ORA    #$80    
       AND    #$8F    
       STA    $DC     
       AND    #$3F    
       SEC            
L9749: SBC    #$03    
       BCS    L9749   
       ADC    #$03    
       ASL            
       ASL            
       STA    $EA     
       STA    $EB     
       LDA    #$02    
       STA    $B2     
       STA    $B3     
       LDA    #$71    
       LDX    #$04    
       JMP    L9800   
L9762: STA    WSYNC   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$0A    
       JSR    L97C8   
       STA    HMCLR   
       STA    WSYNC   
L9773: DEX            
       BNE    L9773   
       STA    RESP0   
       LDX    #$0A    
       STA    WSYNC   
L977C: DEX            
       BNE    L977C   
       STA    RESP1   
       LDA    #$60    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$03    
L978F: STA    WSYNC   
       LDA    ($F0),Y 
       STA    GRP0    
       LDA    ($F2),Y 
       STA    GRP1    
       STY    $EF     
       LDA    ($F8),Y 
       STA    $EE     
       LDA    ($FA),Y 
       TAX            
       TXS            
       LDA    ($F6),Y 
       TAX            
       LDA    ($F4),Y 
       LDY    $EE     
       STA    GRP0    
       STX    GRP1    
       TSX            
       STY    GRP0    
       STX    GRP1    
       LDY    $EF     
       DEY            
       BPL    L978F   
       LDA    $EC     
       STA    COLUBK  
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDX    #$FD    
       TXS            
L97C8: RTS            

L97C9: .byte $60,$68,$70,$78,$80,$88,$90,$98,$A0,$A8,$B0,$B8
L97D5: .byte $18,$7F
L97D7: LDA    #$0A    
       LDX    #$0B    
L97DB: STA    $B4,X   
       DEX            
       BNE    L97DB   
       LDA    $DC     
       CMP    #$06    
       BPL    L97F0   
       CLC            
       ADC    #$01    
       STA    $BA     
       LDA    #$01    
       STA    $B4     
       RTS            

L97F0: SEC            
       SBC    #$05    
       STA    $BA     
       LDA    #$02    
       STA    $B4     
       RTS            

L97FA: .byte $00,$00,$00,$00,$00,$00
L9800: JMP    L9CED   
L9803: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$48,$10,$28,$92,$21,$58,$82,$54,$28,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$18,$3C,$18,$BE,$59,$1A,$78,$47,$C1,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00
L98E7: JSR    L9E68   
       LDA    $DD     
       AND    #$01    
       BNE    L98F6   
       JSR    L9A4B   
       JMP    L9935   
L98F6: LDA    #$1C    
       STA    AUDC0   
       LDA    $ED     
       BNE    L9913   
       LDA    $D5     
       BEQ    L9923   
       LDX    #$02    
       LDA    $DE     
       AND    #$02    
       BEQ    L990B   
       INX            
L990B: STX    AUDF0   
       LDA    #$02    
       STA    AUDV0   
       BNE    L9923   
L9913: LDX    #$05    
       AND    #$08    
       BEQ    L991B   
       LDX    #$07    
L991B: STX    AUDF0   
       LDA    #$08    
       STA    AUDV0   
       DEC    $ED     
L9923: JSR    L99A4   
       LDA    $D8     
       BEQ    L9930   
       BMI    L9930   
       LDA    #$7F    
       STA    COLUBK  
L9930: LDX    #$00    
       JSR    L9C49   
L9935: LDX    #$01    
       JSR    L9C49   
       JMP    L9D19   
L993D: .byte $AF,$90,$53,$98
L9941: .byte $56
L9942: .byte $91,$03,$98,$01,$91,$AF,$90,$03,$90
L994B: .byte $80,$08
L994D: .byte $40,$04
L994F: .byte $F0,$0F
L9951: .byte $D0,$0D
L9953: .byte $40,$80
L9955: LDA    $D8     
       BNE    L996D   
       LDX    $E7     
       LDY    $DB     
       LDA    SWCHA   
       AND    L994B,X 
       BEQ    L9972   
       LDA    SWCHA   
       AND    L994D,X 
       BEQ    L9985   
L996D: LDA    #$00    
       STA    $D5     
L9971: RTS            

L9972: LDA    #$01    
       STA    $AB     
       CPY    #$01    
       BEQ    L996D   
       LDA    #$03    
       CPY    #$02    
       BNE    L9996   
       CLC            
       ADC    #$03    
       BNE    L9996   
L9985: LDA    #$FF    
       STA    $AB     
       CPY    #$02    
       BEQ    L996D   
       LDA    #$FD    
       CPY    #$01    
       BNE    L9996   
       SEC            
       SBC    #$03    
L9996: LDY    $D2     
       BPL    L9971   
       STA    $D5     
       LDA    #$00    
       STA    $DB     
       RTS            

L99A1: JMP    L9A30   
L99A4: LDA    $A5     
       BNE    L99D6   
       LDX    $E7     
       LDA    $027C,X 
       BMI    L99A1   
       LDA    $B1     
       ORA    $D8     
       BNE    L99A1   
       LDA    $D2     
       BPL    L99A1   
       LDA    $CC     
       STA    $A5     
       LDA    $CF     
       STA    $A7     
       LDA    #$06    
       LDY    $AB     
       BPL    L99D0   
       LDA    $A5     
       CLC            
       ADC    #$08    
       STA    $A5     
       LDA    #$FA    
L99D0: STA    $A9     
       LDA    #$04    
       STA    $AD     
L99D6: LDA    $AD     
       AND    #$1E    
       CMP    #$1E    
       BEQ    L99E0   
       INC    $AD     
L99E0: LDY    $AF     
       BNE    L99F0   
       LDA    #$06    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    $AD     
       STA    AUDF0   
L99F0: LDY    #$00    
L99F2: LDA.wy $00A5,Y 
       CLC            
       ADC.wy $00A9,Y 
       BPL    L9A01   
       CMP    #$CD    
       BMI    L9A05   
       BPL    L9A32   
L9A01: CMP    #$2F    
       BMI    L9A32   
L9A05: STA.wy $00A5,Y 
       STY    $F8     
       LDA    #$02    
       CLC            
       ADC    $F8     
       TAX            
       LDA.wy $00A5,Y 
       JSR    L9CED   
       LDY    $F8     
       LDA    #$4F    
       SEC            
       SBC.wy $00A7,Y 
L9A1E: CLC            
       ADC    #$58    
       STY    $F8     
       ASL    $F8     
       LDY    $F8     
       STA.wy $00E3,Y 
       LDA    #$90    
       STA.wy $00E4,Y 
       RTS            

L9A30: LDY    #$00    
L9A32: LDX    #$00    
       LDA.wy $00AF,Y 
       BNE    L9A45   
       CPY    #$00    
       BNE    L9A43   
       LDA    $ED     
       ORA    $D5     
       BNE    L9A45   
L9A43: STX    AUDV0,Y 
L9A45: STX    $A5,Y   
       LDA    #$4B    
       BNE    L9A1E   
L9A4B: LDA    $A6     
       BNE    L9AAC   
       LDX    #$01    
L9A51: LDA    $CF     
       EOR    $D0,X   
       AND    #$FC    
       BNE    L9A65   
       LDA    $D9,X   
       BNE    L9A65   
       LDA    $D3,X   
       BMI    L9A6C   
       LDA    $D2     
       BMI    L9A6C   
L9A65: DEX            
       BPL    L9A51   
L9A68: LDY    #$01    
       BNE    L9A32   
L9A6C: LDY    $E7     
       LDA.wy $00EA,Y 
       TAY            
       LDA    L9FDF,Y 
       AND    #$30    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L9FF2,Y 
       AND    $DE     
       BNE    L9A68   
       LDA    $CD,X   
       LSR            
       STA    $AA     
       LDA    $CD,X   
       SEC            
       SBC    #$04    
       STA    $A6     
       LDY    #$06    
       LDA    $CC     
       LSR            
       CMP    $AA     
       BPL    L9AA1   
       LDA    $A6     
       CLC            
       ADC    #$10    
       STA    $A6     
       LDY    #$FA    
L9AA1: TYA            
       STA    $AA     
       LDA    $D0,X   
       STA    $A8     
       LDA    #$03    
       STA    $AE     
L9AAC: LDY    $E7     
       LDA    SWCHB   
       AND    L9953,Y 
       BNE    L9AC1   
       LDY    #$01    
       LDA    $AE     
       CMP    #$07    
       BMI    L9AC1   
       JMP    L9A32   
L9AC1: LDA    $DD     
       AND    #$02    
       BNE    L9AC9   
       INC    $AE     
L9AC9: LDA    $B0     
       BNE    L9AD9   
       LDA    $AE     
       STA    AUDF1   
       LDA    #$06    
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
L9AD9: LDY    #$01    
       JMP    L99F2   
L9ADE: LDX    $F4     
       BNE    L9B16   
       LDA    $D8     
       BNE    L9B16   
       LDX    #$03    
       STX    $B1     
       LDY    $E7     
       LDA    SWCHA   
       AND    L994F,Y 
       CMP    L9951,Y 
       BEQ    L9B08   
       LDA    #$00    
       STA    $B1     
       LDX    #$01    
       LDA    $D5     
       BEQ    L9B08   
       LDA    $DD     
       AND    #$02    
       BEQ    L9B08   
       INX            
L9B08: TXA            
       ASL            
       TAX            
       LDA    L993B,X 
       STA    $F5     
       LDA    L993C,X 
       STA    $F6     
       RTS            

L9B16: LDX    $F7     
       LDA    $D8,X   
       BNE    L9B1F   
       JMP    L9C22   
L9B1F: BMI    L9B62   
       TAY            
       LDA    L9354,Y 
       BMI    L9B4C   
       ASL            
       TAY            
       LDA    L9941,Y 
       STA    $F5     
       LDA    L9942,Y 
       STA    $F6     
       LDA    $DD     
       AND    #$06    
       BNE    L9B3B   
       INC    $D8,X   
L9B3B: LDX    $F4     
       INC    $AF,X   
       LDA    $AF,X   
       STA    AUDF0,X 
       LDA    #$0F    
       STA    AUDV0,X 
       LDA    #$08    
       STA    AUDC0,X 
       RTS            

L9B4C: LDA    #$F6    
       STA    $D8,X   
       LDA    #$FF    
       STA    $D2,X   
       LDA    #$04    
       STA    $CF,X   
       LDY    $F4     
       LDA    #$00    
       STA.wy $0019,Y 
       STA.wy $00AF,Y 
L9B62: LDA    #$58    
       STA    $F5     
       LDA    #$90    
       STA    $F6     
       INC    $D8,X   
       BEQ    L9B6F   
       RTS            

L9B6F: CPX    #$00    
       BNE    L9BC0   
       LDA    #$32    
       STA    $CC     
       STA    $CD     
       LDA    #$B9    
       STA    $CE     
       LDA    #$4C    
       STA    $CF     
       LDA    #$0B    
       STA    $D0     
       STA    $D1     
       LDA    #$00    
       STA    $A6     
       STA    $ED     
       STA    $DB     
       STA    $D9     
       STA    $DA     
       STA    $E9     
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$FF    
       STA    $D3     
       STA    $D4     
       LDA    #$02    
       STA    $D6     
       STA    $D7     
       LDA    $DC     
       AND    #$3F    
       CMP    #$06    
       BMI    L9BB9   
       LDA    #$01    
       SEC            
       SBC    $E7     
       TAX            
       LDA    $B2,X   
       BMI    L9BB9   
       STX    $E7     
L9BB9: LDA    #$71    
       LDX    #$04    
       JMP    L9CED   
L9BC0: LDA    #$00    
       STA    $F9     
       LDY    $E7     
       LDA.wy $00EA,Y 
       TAY            
       LDA    L9FDF,Y 
       AND    #$03    
       TAY            
       LDA    $DE     
       AND    L9FEC,Y 
       BNE    L9BD9   
       INC    $F9     
L9BD9: LDA    $DD     
       LSR            
       LSR            
L9BDD: CMP    $D2     
       BEQ    L9C0A   
       CMP    $D3     
       BEQ    L9C0A   
       CMP    $D4     
       BEQ    L9C0A   
       TAY            
       LDA    $F9     
       BEQ    L9BFC   
       LDA    $CF     
       CMP    L9322,Y 
       BMI    L9C09   
       CMP    L931C,Y 
       BEQ    L9BFC   
       BPL    L9C09   
L9BFC: STY    $D2,X   
       LDA    L9FF6,Y 
       STA    $CC,X   
       LDA.wy $00C0,Y 
       STA    $CF,X   
       RTS            

L9C09: TYA            
L9C0A: CLC            
       ADC    #$01    
       LDY    $F9     
       BEQ    L9C18   
       INY            
       CPY    #$04    
       BNE    L9C18   
       LDY    #$00    
L9C18: STY    $F9     
       CMP    #$06    
       BNE    L9BDD   
       LDA    #$00    
       BEQ    L9BDD   
L9C22: LDA    #$03    
       STA    $F5     
       LDA    #$90    
       STA    $F6     
       RTS            

L9C2B: CMP    #$00    
       BPL    L9C37   
       CMP    #$C2    
       BMI    L9C48   
       LDA    #$C2    
       BNE    L9C3D   
L9C37: CMP    #$2F    
       BPL    L9C48   
       LDA    #$2F    
L9C3D: STA    $CC,X   
       LDA    $D5,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $D5,X   
L9C48: RTS            

L9C49: STX    $F4     
       CPX    #$00    
       BNE    L9C56   
       JSR    L9955   
       LDX    #$00    
       BEQ    L9C5F   
L9C56: LDX    #$01    
       LDA    $DD     
       AND    #$01    
       BEQ    L9C5F   
       INX            
L9C5F: STX    $F7     
       JSR    L9ADE   
       LDX    $F7     
       LDA    $D5,X   
       BEQ    L9C72   
       CLC            
       ADC    $CC,X   
       STA    $CC,X   
       JSR    L9C2B   
L9C72: LDA    #$4F    
       SEC            
       SBC    $CF,X   
       CLC            
       ADC    $F5     
       BCC    L9C7E   
       INC    $F6     
L9C7E: LDX    $F4     
       BEQ    L9C83   
       INX            
L9C83: STA    $DF,X   
       LDA    $F6     
       STA    $E0,X   
       LDX    $F7     
       LDA    $D5,X   
       BNE    L9C90   
       RTS            

L9C90: LDA    $CF,X   
       STA    $F9     
       LDX    #$05    
       LDY    #$0F    
L9C98: LDA    $F9     
       EOR    L9363,X 
       AND    #$FE    
       BEQ    L9CA8   
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    L9C98   
       RTS            

L9CA8: LDX    $F7     
       LDA    $CC,X   
       STA    $F9     
       LDX    #$03    
L9CB0: LDA    $F9     
       EOR    L9331,Y 
       AND    #$FC    
       BNE    L9CBD   
       LDA    #$01    
       BNE    L9CCF   
L9CBD: LDA    $F9     
       EOR    L9343,Y 
       AND    #$FC    
       BNE    L9CCA   
       LDA    #$02    
       BNE    L9CCF   
L9CCA: INY            
       DEX            
       BNE    L9CB0   
       RTS            

L9CCF: LDX    $F7     
       PHA            
       CMP    #$01    
       BEQ    L9CDB   
       LDA    L9343,Y 
       BNE    L9CDE   
L9CDB: LDA    L9331,Y 
L9CDE: STA    $CC,X   
       PLA            
       TAY            
       LDA    #$00    
       STA    $D5,X   
       CPX    #$00    
       BNE    L9CEC   
       STY    $DB     
L9CEC: RTS            

L9CED: CMP    #$00    
       BNE    L9CF3   
       LDA    #$2F    
L9CF3: SEC            
       SBC    #$2F    
       LDY    #$02    
L9CF8: INY            
       SBC    #$0F    
       BCS    L9CF8   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       STY    WSYNC   
L9D0F: DEY            
       BPL    L9D0F   
       STA.wx $0010,X 
       STA.wx $0020,X 
       RTS            

L9D19: LDX    $DD     
       LDA    L92F9,X 
       LDY    #$03    
L9D20: DEY            
       BPL    L9D26   
       JMP    L9E13   
L9D26: CMP.wy $00D2,Y 
       BNE    L9D20   
       TAX            
       LDA    $C0,X   
       STA.wy $00CF,Y 
       LDA    $C0,X   
       STY    $F8     
       LDY    #$06    
L9D37: DEY            
       BMI    L9CEC   
       LDA    $C0,X   
       EOR    L9363,Y 
       AND    #$FE    
       BNE    L9D37   
       LDA    L9363,Y 
       STA    $EF     
       LDY    $F8     
       LDA.wy $00D8,Y 
       BNE    L9D72   
       LDY    $F8     
       BNE    L9D73   
       LDA    SWCHA   
       LDY    $E7     
       AND    L994D,Y 
       BNE    L9D64   
       LDY    #$00    
       CPX    #$00    
       BNE    L9DD3   
       RTS            

L9D64: LDA    SWCHA   
       AND    L994B,Y 
       BNE    L9D72   
       LDY    #$00    
       CPX    #$05    
       BNE    L9DD7   
L9D72: RTS            

L9D73: LDY    $E7     
       LDA.wy $00EA,Y 
       TAY            
       LDA    L9FDF,Y 
       AND    #$0C    
       LSR            
       LSR            
       TAY            
       LDA    $DE     
       AND    L9FEE,Y 
       BNE    L9DBF   
       LDY    $F8     
       LDA    $CF     
       EOR    $C0,X   
       AND    #$FE    
       BNE    L9DA1   
       LDA    $CC     
       LSR            
       STA    $F9     
       LDA.wy $00CC,Y 
       LSR            
       CMP    $F9     
       BMI    L9DD7   
       BPL    L9DD3   
L9DA1: LDA    $CF     
       CMP    L9322,X 
       BMI    L9DB7   
       CMP    L931C,X 
       BEQ    L9D72   
       BMI    L9D72   
       LDA    $EF     
       CMP    L931C,X 
       BEQ    L9DC5   
       RTS            

L9DB7: LDA    $EF     
       CMP    L9322,X 
       BEQ    L9DC5   
       RTS            

L9DBF: LDA    $DE     
       AND    #$04    
       BNE    L9D72   
L9DC5: CPX    #$00    
       BEQ    L9DD7   
       CPX    #$05    
       BEQ    L9DD3   
       LDA    $DE     
       AND    #$08    
       BNE    L9DD7   
L9DD3: LDA    #$F4    
       BNE    L9DD9   
L9DD7: LDA    #$0C    
L9DD9: STA    $F9     
       LDY    $F8     
       LDA.wy $00CC,Y 
       CLC            
       ADC    $F9     
       STA.wy $00CC,Y 
       LDA    $EF     
       STA.wy $00CF,Y 
       LDX    $E7     
       LDA    $EA,X   
       TAX            
       LDA    L9FDF,X 
       AND    #$C0    
       CLC            
       ROL            
       ROL            
       ROL            
       ADC    #$01    
       LDX    $F9     
       BPL    L9E04   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L9E04: STA.wy $00D5,Y 
       LDA    #$FF    
       STA.wy $00D2,Y 
       CPY    #$00    
       BNE    L9E1B   
       STY    $DB     
       RTS            

L9E13: TAX            
       LDA    $C0,X   
       LDY    #$06    
L9E18: DEY            
       BPL    L9E1C   
L9E1B: RTS            

L9E1C: LDA    $C0,X   
       EOR    L9363,Y 
       AND    #$FE    
       BNE    L9E18   
       LDY    #$03    
L9E27: DEY            
       BMI    L9E1B   
       LDA.wy $00D5,Y 
       BNE    L9E27   
       LDA.wy $00D2,Y 
       BPL    L9E27   
       LDA.wy $00CF,Y 
       EOR    $C0,X   
       AND    #$FE    
       BNE    L9E27   
       LDA.wy $00CC,Y 
       SEC            
       SBC    L9FF6,X 
       BPL    L9E4B   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L9E4B: CMP    #$0C    
       BPL    L9E27   
       LDA.wy $00D8,Y 
       BEQ    L9E55   
       RTS            

L9E55: LDA    L9FF6,X 
       STA.wy $00CC,Y 
       STX    $D2,Y   
       LDA    $EE     
       STA    $C0,X   
       LDA    $F3     
       STA    $C6,X   
       RTS            

L9E66: .byte $64,$50
L9E68: LDA    CXP0FB  
       AND    #$40    
       BEQ    L9E87   
       LDA    #$01    
       SEC            
       SBC    $E9     
       STA    $E9     
       TAX            
       LDA    L9E66,X 
       LDX    #$04    
       JSR    L9CED   
       LDA    #$40    
       STA    $ED     
       LDY    #$08    
       JMP    L9F79   
L9E87: LDX    #$02    
L9E89: LDA    $A5     
       SEC            
       SBC    #$05    
       SBC    $CC,X   
       BPL    L9E97   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L9E97: CMP    #$07    
       BPL    L9EAD   
       LDA    $CF,X   
       SEC            
       SBC    #$02    
       CMP    $A7     
       BPL    L9EAD   
       LDA    $CF,X   
       CLC            
       ADC    #$05    
       CMP    $A7     
       BPL    L9EE5   
L9EAD: DEX            
       BNE    L9E89   
       LDA    CXPPMM  
       AND    #$C0    
       CMP    #$80    
       BEQ    L9EFC   
       LDA    $A6     
       SEC            
       SBC    #$05    
       SBC    $CC     
       BPL    L9EC6   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L9EC6: CMP    #$07    
       BPL    L9F46   
       LDY    #$FC    
       LDA    $B1     
       BEQ    L9ED2   
       LDY    #$00    
L9ED2: TYA            
       CLC            
       ADC    $CF     
       CMP    $A8     
       BPL    L9F46   
       LDA    $CF     
       CLC            
       ADC    #$05    
       CMP    $A8     
       BMI    L9F46   
       BPL    L9EFC   
L9EE5: STX    $F4     
       LDA    $D8,X   
       BNE    L9EF6   
       LDY    #$00    
       LDA    $D2,X   
       BMI    L9EF3   
       LDY    #$04    
L9EF3: JSR    L9F79   
L9EF6: LDX    $F4     
       LDY    #$01    
       BNE    L9F24   
L9EFC: LDA    $D8     
       BNE    L9F20   
       LDX    $E7     
       DEC    $B2,X   
       BPL    L9F20   
       LDA    $DC     
       AND    #$3F    
       CMP    #$06    
       BMI    L9F14   
       LDA    $B2     
       AND    $B3     
       BPL    L9F20   
L9F14: LDA    $DC     
       AND    #$7F    
       ORA    #$40    
       STA    $DC     
       LDA    #$01    
       STA    $DE     
L9F20: LDX    #$00    
       LDY    #$00    
L9F24: LDA    $D8,X   
       BNE    L9F3B   
       LDA    #$01    
       CPX    #$00    
       BEQ    L9F30   
       LDA    #$08    
L9F30: STA    $D8,X   
       LDA    #$06    
       STA.wy $00AF,Y 
       LDA    #$00    
       STA    $D5,X   
L9F3B: DEY            
       BEQ    L9F40   
       LDY    #$01    
L9F40: LDA    #$00    
       STA.wy $00A5,Y 
       RTS            

L9F46: LDY    #$01    
L9F48: LDX    #$05    
L9F4A: LDA.wy $00A5,Y 
       SEC            
       SBC    #$05    
       SBC    L9FF6,X 
       BPL    L9F5A   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L9F5A: CMP    #$07    
       BPL    L9F72   
       LDA.wy $00A7,Y 
       SEC            
       SBC    #$06    
       CMP    L931C,X 
       BPL    L9F72   
       CMP    $C0,X   
       BMI    L9F72   
       LDA    #$00    
       STA.wy $00A5,Y 
L9F72: DEX            
       BPL    L9F4A   
       DEY            
       BPL    L9F48   
       RTS            

L9F79: LDX    $E7     
       LDA    $B8,X   
       STA    $F9     
       LDA    $B6,X   
       PHA            
       LDX    #$03    
L9F84: LDA    L9FD4,Y 
       STA    $EF,X   
       INY            
       DEX            
       BPL    L9F84   
       LDA    #$0A    
       CLC            
       ADC    $E7     
       TAX            
       LDY    #$00    
L9F95: LDA    $B4,X   
       CLC            
       ADC.wy $00EF,Y 
       CMP    #$0A    
       BMI    L9FA4   
       SEC            
       SBC    #$0A    
       INC    $B2,X   
L9FA4: STA    $B4,X   
       INY            
       CPY    #$04    
       BNE    L9FB0   
       LDA    #$00    
       STA    $F2     
       DEY            
L9FB0: DEX            
       DEX            
       CPX    #$02    
       BPL    L9F95   
       LDX    $E7     
       LDA    $B8,X   
       CMP    $F9     
       BEQ    L9FC6   
       LDY    $EA,X   
       CPY    #$0C    
       BEQ    L9FC6   
       INC    $EA,X   
L9FC6: PLA            
       CMP    $B6,X   
       BEQ    L9FD3   
       LDY    $B2,X   
       CPY    #$06    
       BEQ    L9FD3   
       INC    $B2,X   
L9FD3: RTS            

L9FD4: .byte $00,$02,$05,$00,$00,$03,$02,$05,$03,$00,$00
L9FDF: .byte $00,$01,$05,$15,$55,$56,$5A,$6A,$AA,$AB,$AF,$BF,$FF
L9FEC: .byte $0F,$0F
L9FEE: .byte $07,$03,$01,$00
L9FF2: .byte $3F,$1F,$0F,$00
L9FF6: .byte $33,$47,$67,$7F,$9B,$BF,$00,$90,$00,$90
