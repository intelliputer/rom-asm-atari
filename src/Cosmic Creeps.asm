; Disassembly of roms/Cosmic Creeps.bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Cosmic Creeps.bin
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
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
RESMP0  =  $28
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $3000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
L3005: STA    VSYNC,X 
       INX            
       BNE    L3005   
       DEX            
       TXS            
       JMP    L3290   
L300F: LDX    #$04    
L3011: DEX            
       BPL    L3011   
       LDA    ($CB),Y 
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($CD),Y 
       STA    GRP0    
       LDA    ($CF),Y 
       STA    GRP1    
       LDA    ($D1),Y 
       TAX            
       LDA    ($D3),Y 
       STX    GRP0    
       STA    GRP1    
       DEY            
       BNE    L300F   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    #$06    
L3036: DEX            
       BPL    L3036   
       STA    WSYNC   
       RTS            

L303C: LDY    $B6     
       LDA    ($E9),Y 
       STA    PF2     
       LDA    L3B00,X 
       BEQ    L3075   
       DEX            
       STA    WSYNC   
       STA    COLUP1  
       LDA    L3A01,X 
       STA    GRP1    
L3051: LDA    ($EB),Y 
       STA    PF1     
       LDY    $CF     
       LDA    L3B00,Y 
       STA    COLUP0  
       BEQ    L306D   
       LDA    L39FF,Y 
       STA    GRP0    
L3063: DEY            
L3064: STY    $CF     
       DEC    $B6     
       BNE    L303C   
       JMP    L3212   
L306D: LDA    $B6     
       CMP    $80     
       BEQ    L3063   
       BNE    L3064   
L3075: STA    WSYNC   
       STA    GRP1    
       CPY    $81     
       BNE    L3051   
       LDA    ($EB),Y 
       STA    PF1     
       DEX            
       LDY    $CF     
       LDA    L3B00,Y 
       STA    COLUP0  
       BEQ    L306D   
       LDA    L39FF,Y 
       STA    GRP0    
       DEY            
       STY    $CF     
       DEC    $B6     
       BNE    L303C   
       JMP    L3212   
L309A: STY    $D5     
       STA    $D6     
       LDY    #$00    
L30A0: LDA    L3123,X 
       STA.wy $00CA,Y 
       INX            
       INY            
       CPY    #$0B    
       BMI    L30A0   
       LDY    $D6     
L30AE: DEY            
       BMI    L30B6   
       STA    WSYNC   
       JMP    L30AE   
L30B6: LDA    $CA     
       SEC            
       SBC    $D6     
       STA    $CA     
       LDY    #$08    
L30BF: LDA.wy $00CB,Y 
       CLC            
       ADC    $D6     
       STA.wy $00CB,Y 
       DEY            
       DEY            
       BPL    L30BF   
       LDA    $D5     
       STA    HMP0    
       CLC            
       ADC    #$10    
       STA    HMP1    
       AND    #$0F    
       TAY            
       TAX            
       INX            
       INX            
       STA    WSYNC   
L30DD: DEY            
       BPL    L30DD   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    $CA     
       LDA    $D5     
       EOR    #$FF    
       AND    #$F0    
       CLC            
       ADC    #$70    
       CMP    #$70    
       BCC    L311A   
       CMP    #$D0    
       BCC    L3110   
       INX            
       STA    WSYNC   
L310A: DEX            
       BPL    L310A   
       JMP    L300F   
L3110: STA    WSYNC   
       NOP            
       NOP            
L3114: DEX            
       BPL    L3114   
       JMP    L300F   
L311A: STA    WSYNC   
       NOP            
L311D: DEX            
       BPL    L311D   
       JMP    L300F   
L3123: .byte $12,$4C,$3C,$00,$3C,$13,$3C,$26,$3C,$39,$3C,$0C,$5F,$3C,$6C,$3C
       .byte $79,$3C,$86,$3C,$93,$3C
L3139: LDA    $B8     
       JSR    L3DEA   
       STA    $BB     
       LDA    $B9     
       JSR    L3DEA   
       STA    $BC     
       LDX    $B4     
       JSR    L3855   
       LDY    #$02    
L314E: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $00C4,Y 
       AND    #$F0    
       LSR            
       ADC    #$00    
       STA    $CA,X   
       LDA    #$00    
       ADC    #$3D    
       STA    $CB,X   
       LDA.wy $00C4,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$00    
       STA    $CC,X   
       LDA    #$00    
       ADC    #$3D    
       STA    $CD,X   
       DEY            
       BPL    L314E   
       LDX    #$00    
L3179: LDA    $CA,X   
       BNE    L318B   
       LDA    #$EC    
       STA    $CA,X   
       LDA    #$3E    
       STA    $CB,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    L3179   
L318B: LDA    RESMP0  
       STA    COLUP0  
       STA    COLUP1  
       JSR    L3888   
       LDA    #$42    
       STA    COLUPF  
       LDA    #$01    
       STA    CTRLPF  
       LDA    $F5     
       STA    COLUBK  
L31A0: LDA    INTIM   
       BNE    L31A0   
       LDA    $F4     
       STA    VBLANK  
       LDA    #$F6    
       STA    WSYNC   
       STA    TIM64T  
       LDY    #$07    
       JSR    L3CCE   
       LDX    #$0B    
       LDY    $BB     
       LDA    #$00    
       JSR    L309A   
       JSR    L3CBD   
       STA    WSYNC   
       LDA    #$DF    
       STA    HMM0    
       STA    RESMP0  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    RESMP0  
       LDA    $B5     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $CA     
       LDA    $90     
       EOR    #$FF    
       AND    $CA     
       ASL            
       STA    ENAM0   
       LDA    #$01    
       STA    NUSIZ0  
       STA    VDELP0  
       JSR    L38A9   
       LDA    #$71    
       STA    $B6     
       LDX    $83     
       LDY    $82     
       STY    $CF     
       LDA    $86     
       STA    REFP0   
       LDA    $87     
       STA    REFP1   
       STA    WSYNC   
       LDA    $E8     
       STA    PF1     
       LDA    $E7     
       STA    PF2     
       LDA    #$00    
       STA    NUSIZ0  
       STA    ENAM0   
       STA    WSYNC   
       JMP    L303C   
L3212: STA    WSYNC   
       JSR    L3CBD   
       STA    WSYNC   
       LDA    $E7     
       STA    PF1     
       LDA    $E8     
       STA    PF2     
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    REFP0   
       STA    REFP1   
       JSR    L3888   
       LDX    #$00    
       LDY    $BC     
       LDA    $BD     
       JSR    L309A   
       JSR    L3CBD   
       LDX    #$00    
       JSR    L3CA0   
       JSR    L3888   
       LDA    #$44    
       STA    COLUBK  
       LDY    #$0D    
       JSR    L3CCE   
       LDA    #$FF    
       STA    VBLANK  
       RTS            

L3252: LDA    $F2     
       BEQ    L327A   
       LDA    SWCHA   
       CMP    $F2     
       BEQ    L3267   
       STA    $F2     
       LDA    #$28    
       STA    $F3     
       LDA    #$00    
       STA    $F4     
L3267: INC    $B5     
       BNE    L3279   
       DEC    $F3     
       BNE    L3279   
       LDA    #$FF    
       EOR    $F4     
       STA    $F4     
       LDA    #$01    
       STA    $F3     
L3279: RTS            

L327A: INC    $B5     
       LDA    $B9     
       STA    $B8     
       RTS            

L3281: .byte $A5,$F2,$F0,$03,$AD,$80,$02
L3288: RTS            

L3289: LDA    $F2     
       BEQ    L3288   
       LDA    INPT4   
       RTS            

L3290: LDA    INTIM   
       STA    $E8     
       JSR    L3DA3   
       LDA    #$40    
       STA    $B8     
       STA    $B7     
       LDA    #$60    
       STA    $B9     
       LDA    #$FF    
       STA    $BA     
L32A6: JSR    L38C7   
L32A9: LDA    #$02    
       STA    $EF     
       STA    $F0     
       LDA    #$07    
       STA    $ED     
       STA    $EE     
       LDA    #$FD    
       STA    $C1     
       LDA    #$00    
       STA    $C7     
       STA    $C8     
       STA    $C9     
L32C1: LDA    #$00    
       STA    $BD     
       STA    $C4     
       STA    $C5     
       STA    $C6     
       STA    $F5     
       STA    $C2     
       LDX    #$03    
L32D1: LDA    L3FF8,X 
       STA    $90,X   
       JSR    L3816   
       LDA    #$00    
       STA    $88,X   
       STA    $8C,X   
       STA    $A4,X   
       STA    $A8,X   
       STA    $94,X   
       DEX            
       BPL    L32D1   
L32E8: JSR    L3252   
       LDA    $B5     
       ASL            
       AND    #$02    
       STA    $B4     
       JSR    L38DE   
       JSR    L3139   
L32F8: LDA    INTIM   
       BNE    L32F8   
       LDA    #$0A    
       STA    WSYNC   
       STA    TIM64T  
       JSR    L3DE0   
       JSR    L3DA3   
       JSR    L33D3   
       JSR    L3823   
       LDA    $C2     
       BNE    L332C   
       JSR    L37CC   
       JSR    L37F8   
       LDX    $B4     
L331C: JSR    L33E4   
       JSR    L33FB   
       LDX    $B4     
       INX            
       STX    $B4     
       TXA            
       AND    #$01    
       BNE    L331C   
L332C: LDA    SWCHB   
       LSR            
       BCS    L3339   
       LDA    #$CC    
       STA    $F2     
       JMP    L32A9   
L3339: LDA    $C2     
       BNE    L3348   
       LDA    $DA     
       BNE    L3345   
       LDA    #$02    
       STA    $DA     
L3345: JMP    L32E8   
L3348: LDA    $C2     
       CMP    #$01    
       BNE    L336C   
       LDA    #$05    
       LDX    #$FF    
       JSR    L33DB   
       BNE    L3383   
       LDA    #$68    
       BNE    L337D   
L335B: LDX    #$02    
       SED            
       CLC            
L335F: LDA    $C4,X   
       ADC    $C7,X   
       STA    $C4,X   
       STA    $C7,X   
       DEX            
       BPL    L335F   
       CLD            
       RTS            

L336C: LDA    $C2     
       CMP    #$02    
       BNE    L3386   
       LDA    #$06    
       LDX    #$80    
       JSR    L33DB   
       BNE    L3383   
       LDA    #$B8    
L337D: JSR    L36DB   
       JSR    L335B   
L3383: JMP    L32E8   
L3386: LDA    $C2     
       CMP    #$04    
       BNE    L3396   
       LDA    #$00    
       LDX    #$20    
       JSR    L33DB   
       JMP    L32E8   
L3396: LDA    $F1     
       BNE    L33C8   
       STA    $F5     
       JSR    L3289   
       BMI    L33D0   
       LDA    $C2     
       CMP    #$05    
       BNE    L33C5   
       LDX    $EF     
       INX            
       CPX    #$05    
       BCS    L33B0   
       STX    $EF     
L33B0: LDX    $F0     
       INX            
       CPX    #$05    
       BCS    L33B9   
       STX    $F0     
L33B9: LDX    $ED     
       DEX            
       CPX    #$01    
       BCC    L33C2   
       STX    $ED     
L33C2: JMP    L32C1   
L33C5: JMP    L32A6   
L33C8: LDA    $C2     
       CMP    #$05    
       BEQ    L33D0   
       INC    $F5     
L33D0: JMP    L32E8   
L33D3: LDX    $F1     
       BEQ    L33DA   
       DEX            
       STX    $F1     
L33DA: RTS            

L33DB: LDY    $F1     
       BNE    L33E3   
       STA    $C2     
       STX    $F1     
L33E3: RTS            

L33E4: LDA    $90,X   
       ASL            
       TAY            
       LDA    L33F2,Y 
       PHA            
       LDA    L33F1,Y 
       PHA            
       RTS            

L33F1: .byte $48
L33F2: .byte $35,$29,$36,$7A,$36,$84,$36,$C0,$36
L33FB: LDA    $94,X   
       BEQ    L3411   
       LDA    $88,X   
       CLC            
       ADC    $A4,X   
       STA    $88,X   
       LDA    $8C,X   
       CLC            
       ADC    $A8,X   
       STA    $8C,X   
       JSR    L36ED   
       RTS            

L3411: LDA    #$00    
       STA    $8C,X   
       LDA    $90,X   
       ASL            
       TAY            
       LDA    L3423,Y 
       PHA            
       LDA    L3422,Y 
       PHA            
       RTS            

L3422: .byte $2B
L3423: .byte $34,$48,$34,$6E,$34,$C1,$34,$09,$35,$20,$81,$32,$29,$10,$D0,$39
       .byte $A5,$B9,$18,$69,$08,$95,$88,$A9,$00,$20,$16,$38,$A9,$17,$95,$8C
       .byte $E6,$BD,$A9,$2A,$D0,$1C,$20,$89,$32,$A5,$3C,$30,$1C,$A5,$B8,$18
       .byte $69,$08,$95,$88,$A9,$70,$95,$8C,$A9,$00,$95,$A4,$A5,$C1,$95,$A8
       .byte $A9,$52,$20,$DB,$36,$A9,$02,$95,$94,$4C,$09,$35,$20,$A3,$3D,$A5
       .byte $E7,$29,$0F,$D0,$49,$A9,$37,$95,$88,$A5,$E7,$C9,$71,$90,$03,$4A
       .byte $D0,$F9,$C9,$16,$B0,$02,$A9,$16,$95,$8C,$A5,$E8,$29,$0F,$C5,$EF
       .byte $90,$03,$4A,$D0,$F9,$A8,$D0,$02,$A9,$01,$95,$A4,$A5,$E7,$29,$10
       .byte $D0,$09,$38,$F5,$A4,$95,$A4,$A9,$B9,$95,$88,$A9,$00,$95,$A8,$A9
       .byte $01,$95,$94,$20,$5B,$37,$F0,$06,$A9,$00,$95,$94,$95,$8C,$60,$20
       .byte $A3,$3D,$A9,$37,$95,$88,$A9,$18,$95,$8C,$A5,$F1,$D0,$16,$A5,$8D
       .byte $C9,$40,$B0,$10,$A5,$E7,$29,$07,$C5,$F0,$90,$04,$4A,$4C,$DB,$34
       .byte $C9,$00,$D0,$02,$A5,$F0,$95,$A4,$A9,$01,$95,$94,$20,$5B,$37,$F0
       .byte $07,$A9,$00,$95,$94,$95,$8C,$60,$A5,$D9,$D0,$0A,$B4,$90,$B9,$04
       .byte $35,$4C,$DB,$36,$22,$2A,$60,$A5,$F1,$D0,$07,$20,$81,$32,$29,$10
       .byte $D0,$05,$E6,$BD,$4C,$C2,$34,$60,$A0,$00,$A9,$36,$D5,$88,$90,$05
       .byte $95,$88,$F6,$88,$C8,$A9,$BB,$D5,$88,$B0,$03,$95,$88,$C8,$A9,$15
       .byte $D5,$8C,$90,$05,$95,$8C,$F6,$8C,$C8,$A9,$71,$D5,$8C,$B0,$05,$95
       .byte $8C,$D6,$8C,$C8,$98,$60,$B5,$94,$C9,$02,$D0,$03,$20,$2D,$37,$B5
       .byte $94,$C9,$02,$D0,$1C,$20,$5B,$37,$F0,$17,$B9,$A4,$00,$95,$A4,$A9
       .byte $00,$95,$A8,$A9,$05,$20,$16,$38,$A9,$22,$20,$DB,$36,$A9,$01,$95
       .byte $94,$B5,$94,$C9,$02,$D0,$2D,$20,$A2,$37,$F0,$28,$A9,$05,$20,$16
       .byte $38,$A9,$22,$20,$DB,$36,$A9,$01,$95,$94,$A8,$B5,$88,$C9,$78,$90
       .byte $02,$A0,$FF,$94,$A4,$A9,$01,$B4,$8C,$C0,$2A,$90,$05,$A9,$00,$38
       .byte $F5,$A8,$95,$A8,$20,$1B,$35,$F0,$0A,$B5,$94,$C9,$02,$F0,$04,$A9
       .byte $00,$95,$94,$B5,$94,$C9,$02,$D0,$69,$B5,$8C,$C9,$20,$B0,$1F,$C9
       .byte $72,$90,$1B,$A9,$01,$95,$94,$A8,$A5,$E7,$10,$02,$A0,$FF,$94,$A4
       .byte $A9,$00,$95,$A8,$A9,$05,$20,$16,$38,$A9,$22,$20,$DB,$36,$B5,$8C
       .byte $C9,$70,$90,$3E,$B5,$88,$38,$E5,$B8,$C9,$04,$90,$35,$C9,$0D,$B0
       .byte $31,$A9,$00,$95,$94,$A9,$01,$95,$90,$20,$16,$38,$A0,$03,$A9,$00
       .byte $99,$94,$00,$99,$8C,$00,$98,$AA,$B9,$26,$36,$95,$90,$20,$16,$38
       .byte $A6,$B4,$88,$D0,$E9,$A9,$04,$85,$C2,$A9,$80,$85,$F1,$A9,$9E,$4C
       .byte $DB,$36,$60,$01,$04,$03,$03,$B5,$94,$C9,$02,$D0,$47,$20,$5B,$37
       .byte $F0,$39,$B9,$90,$00,$C9,$03,$D0,$07,$A9,$01,$20,$46,$38,$A6,$B4
       .byte $A9,$01,$95,$94,$A9,$00,$95,$A4,$95,$A8,$99,$A4,$00,$99,$A8,$00
       .byte $A9,$07,$20,$16,$38,$98,$AA,$A9,$06,$20,$16,$38,$A6,$B4,$A9,$5A
       .byte $20,$E4,$36,$A9,$00,$20,$DB,$36,$4C,$77,$36,$20,$1B,$35,$F0,$04
       .byte $A9,$00,$95,$94,$20,$B0,$37,$60,$20,$1B,$35,$F0,$04,$A9,$00,$95
       .byte $94,$60,$20,$1B,$35,$F0,$31,$B5,$8C,$18,$69,$16,$C9,$71,$B0,$0C
       .byte $95,$8C,$B5,$A4,$49,$FF,$18,$69,$01,$95,$A4,$60,$A9,$00,$95,$A8
       .byte $95,$A4,$B5,$90,$C9,$04,$D0,$11,$A9,$15,$20,$46,$38,$A6,$B4,$A9
       .byte $32,$20,$DB,$36,$A9,$00,$95,$94,$60,$A9,$02,$85,$C2,$60,$20,$5B
       .byte $37,$F0,$BF,$A9,$01,$95,$94,$A9,$00,$95,$A4,$95,$A8,$A9,$06,$20
       .byte $16,$38,$A9,$5A,$20,$E4,$36,$60
L36DB: STA    $D9     
       LDA    #$00    
       STA    $D7     
       STA    $E5     
       RTS            

L36E4: .byte $85,$DA,$A9,$00,$85,$D8,$85,$E6,$60
L36ED: DEC    $A0,X   
       BNE    L3712   
       INC    $9C,X   
       JSR    L3713   
       LDA    $AC,X   
       BNE    L3701   
       LDA    #$00    
       STA    $9C,X   
       JSR    L3713   
L3701: LDA    $AC,X   
       CMP    #$01    
       BNE    L3712   
       LDA    #$00    
       STA    $94,X   
       STA    $8C,X   
       LDA    $90,X   
       JSR    L3816   
L3712: RTS            

L3713: STY    $CF     
       LDA    $98,X   
       ASL            
       TAY            
       LDA    L39B9,Y 
       STA    $A0,X   
       LDA    L39B8,Y 
       CLC            
       ADC    $9C,X   
       TAY            
       LDA    L39C8,Y 
       STA    $AC,X   
       LDY    $CF     
       RTS            

L372D: .byte $A9,$00,$95,$A4,$95,$A8,$20,$81,$32,$4A,$4A,$4A,$4A,$29,$0F,$85
       .byte $CA,$A0,$03,$B9,$E8,$39,$25,$CA,$D0,$10,$B9,$EC,$39,$18,$75,$A4
       .byte $95,$A4,$B9,$F0,$39,$18,$75,$A8,$95,$A8,$88,$10,$E6,$60,$A0,$03
       .byte $C4,$B4,$F0,$31,$B9,$94,$00,$F0,$2C,$B9,$88,$00,$38,$F5,$88,$20
       .byte $98,$37,$C9,$08,$B0,$1F,$B9,$8C,$00,$38,$F5,$8C,$20,$98,$37,$C9
       .byte $0C,$B0,$12,$B9,$98,$00,$C9,$06,$F0,$0B,$C9,$07,$F0,$07,$C9,$01
       .byte $F0,$03,$A9,$01,$60,$88,$10,$C8,$A9,$00,$60,$09,$00,$10,$05,$49
       .byte $FF,$18,$69,$01,$60,$BC,$F4,$39,$B9,$32,$00,$29,$80,$30,$01,$60
       .byte $A9,$01,$60,$A4,$B8,$20,$81,$32,$0A,$B0,$01,$C8,$0A,$B0,$01,$88
       .byte $C0,$31,$B0,$02,$A0,$31,$C0,$B1,$90,$02,$A0,$B1,$84,$B8,$60
L37CC: LDA    $B5     
       AND    #$03    
       BNE    L37F7   
       LDA    $BA     
       CLC            
       ADC    $B9     
       CMP    #$31    
       BCS    L37E6   
       LDA    #$00    
       SEC            
       SBC    $BA     
       STA    $BA     
       INC    $BD     
       LDA    #$31    
L37E6: CMP    #$B1    
       BCC    L37F5   
       LDA    #$00    
       SEC            
       SBC    $BA     
       STA    $BA     
       INC    $BD     
       LDA    #$B1    
L37F5: STA    $B9     
L37F7: RTS            

L37F8: LDA    $BD     
       CMP    #$11    
       BCC    L3815   
       LDA    #$11    
       STA    $BD     
       LDA    $C4     
       BNE    L3811   
       LDA    $C5     
       CMP    #$50    
       BCS    L3811   
       LDA    #$02    
       STA    $C2     
       RTS            

L3811: LDA    #$01    
       STA    $C2     
L3815: RTS            

L3816: STA    $98,X   
       LDA    #$01    
       STA    $A0,X   
       LDA    #$00    
       STA    $9C,X   
       JMP    L3713   
L3823: LDA    INTIM   
       BNE    L3823   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2F    
       STA    TIM64T  
       RTS            

L3846: .byte $A2,$01,$F8,$18,$75,$C4,$95,$C4,$A9,$00,$CA,$10,$F7,$D8,$60
L3855: LDY    #$00    
L3857: STY    $BE     
       LDA    $88,X   
       JSR    L3DEA   
       LDY    $BE     
       STA.wy $0084,Y 
       LDA    $8C,X   
       STA.wy $0080,Y 
       LDA    $A4,X   
       BEQ    L3877   
       BMI    L3873   
       LDA    #$00    
       JMP    L3875   
L3873: LDA    #$08    
L3875: STA    $B0,X   
L3877: LDA    $B0,X   
       STA.wy $0086,Y 
       LDA    $AC,X   
       STA.wy $0082,Y 
       INY            
       INX            
       CPY    #$02    
       BNE    L3857   
       RTS            

L3888: STA    WSYNC   
       LDA    #$D3    
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDA    #$E1    
       STA    HMP1    
       STA    VDELP0  
       STA    VDELP1  
L3899: DEX            
       BNE    L3899   
       STX    RESP0   
       STX    RESP1   
       STX    GRP0    
       STX    GRP1    
       STX    WSYNC   
       STX    HMOVE   
       RTS            

L38A9: STA    HMCLR   
       LDX    #$01    
L38AD: LDA    $84,X   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
L38B6: DEY            
       BPL    L38B6   
       STA    RESP0,X 
       STA    WSYNC   
       DEX            
       BPL    L38AD   
       STA    WSYNC   
       STA    HMOVE   
       STA    CXCLR   
       RTS            

L38C7: LDA    $E7     
       STA    $E9     
       LDA    $E8     
       AND    #$1F    
       CLC            
       ADC    #$71    
       CLC            
       ADC    $E7     
       STA    $EB     
       LDA    #$3E    
       STA    $EA     
       STA    $EC     
       RTS            

L38DE: DEC    $EE     
       BNE    L38EA   
       LDA    $ED     
       STA    $EE     
       INC    $E9     
       INC    $EB     
L38EA: RTS            

L38EB: .byte $2A,$50,$3D,$5D,$3D,$6B,$3D,$79,$3D,$87,$3D,$95,$3D
L38F8: .byte $00,$00,$00,$42,$08,$12,$02,$00,$00,$21,$08,$12,$01,$00,$00,$8A
       .byte $08,$1A,$01,$00,$00,$FF,$08,$1A,$02,$00,$00,$09,$08,$1A,$00,$00
       .byte $00,$00,$05,$03,$08,$10,$00,$0F,$00,$00,$05,$03,$04,$0F,$1C,$08
       .byte $00,$00,$01,$01,$04,$08,$00,$01,$01,$01,$04,$08,$00,$01,$01,$01
       .byte $04,$08,$00,$01,$01,$01,$04,$08,$00,$01,$01,$01,$04,$08,$00,$01
       .byte $00,$00,$06,$05,$08,$1F,$03,$0E,$00,$00,$09,$03,$08,$03,$00,$06
       .byte $09,$07,$08,$08,$1E,$0E,$00,$00,$01,$03,$0C,$18,$0C,$02,$01,$01
       .byte $0C,$18,$0C,$01,$01,$01,$0C,$18,$0C,$01,$01,$01,$0C,$16,$0C,$01
       .byte $01,$03,$0C,$14,$0C,$02,$01,$03,$0C,$13,$0C,$02,$01,$03,$0C,$11
       .byte $0C,$02,$01,$0C,$0C,$0C,$0C,$02,$01,$0C,$0C,$0E,$0C,$02,$01,$03
       .byte $0C,$11,$0C,$02,$01,$0C,$0C,$0F,$0C,$02,$01,$03,$0C,$13,$0C,$02
       .byte $01,$0A,$0C,$11,$0C,$06,$00,$00,$09,$06,$0F,$08,$08,$1E,$00,$00
L39B8: .byte $00
L39B9: .byte $05,$08,$01,$0D,$05,$11,$05,$06,$05,$03,$0F,$14,$03,$1B,$03
L39C8: .byte $15,$2A,$00,$3F,$15,$00,$FD,$00,$49,$53,$5D,$67,$00,$75,$83,$91
       .byte $00,$A6,$BB,$00,$C9,$D7,$E5,$C9,$D7,$E5,$C9,$D7,$E5,$C9,$D7,$01
       .byte $08,$04,$02,$01,$01,$FF,$00,$00,$00,$00,$FF,$01,$00,$01,$00,$01
       .byte $00,$FF,$01,$00,$01,$00,$01
L39FF: .byte $FF,$00
L3A01: .byte $FE,$CC,$4C,$7E,$82,$FE,$FE,$7E,$BE,$FE,$3C,$18,$7C,$7E,$DE,$CC
       .byte $FC,$7E,$3C,$00,$00,$BA,$CC,$4C,$7E,$82,$FE,$FE,$7E,$BE,$FE,$3C
       .byte $18,$7C,$7E,$DE,$CC,$FC,$7E,$3C,$00,$00,$3C,$7E,$FC,$CC,$DE,$7E
       .byte $7C,$18,$3C,$FE,$BE,$7E,$FE,$FE,$82,$7E,$4C,$CC,$FE,$00,$00,$2C
       .byte $04,$E6,$98,$19,$67,$28,$30,$00,$00,$18,$28,$4A,$F9,$9F,$50,$32
       .byte $1C,$00,$00,$28,$1C,$51,$3F,$F8,$8C,$1A,$2C,$00,$00,$10,$CA,$65
       .byte $18,$5A,$34,$4A,$44,$00,$00,$40,$80,$10,$58,$3C,$3C,$3C,$78,$10
       .byte $80,$20,$00,$00,$00,$20,$00,$10,$58,$3C,$3E,$3E,$1C,$48,$00,$20
       .byte $80,$00,$00,$00,$80,$20,$5C,$3E,$3E,$3E,$BC,$50,$00,$20,$00,$00
       .byte $00,$FC,$D8,$D8,$FE,$BE,$5E,$DE,$FE,$7E,$7C,$7C,$6C,$FE,$F7,$FE
       .byte $7C,$39,$05,$04,$00,$00,$FC,$D8,$D8,$FE,$BE,$5E,$DE,$FE,$7E,$7C
       .byte $7C,$7C,$FE,$F7,$FE,$7C,$39,$05,$04,$00,$00,$10,$04,$48,$02,$24
       .byte $90,$20,$14,$40,$00,$00,$00,$00,$00,$00,$24,$90,$20,$14,$40,$02
       .byte $94,$04,$08,$00,$00,$00,$00,$4A,$04,$24,$80,$21,$04,$40,$42,$94
       .byte $04,$00,$00,$00,$00,$46,$C3,$62,$00,$67,$66,$7E,$7E,$F8,$FC,$FF
       .byte $7E,$7E,$38,$1C,$1E,$3E,$5E,$7F,$7F,$3E,$1C,$00,$00,$FF,$FF
L3B00: .byte $00,$18,$18,$18,$42,$42,$42,$42,$42,$42,$42,$42,$08,$08,$08,$08
       .byte $08,$08,$08,$08,$FF,$00,$18,$18,$18,$42,$42,$42,$42,$42,$42,$42
       .byte $42,$08,$08,$08,$08,$08,$08,$08,$08,$FF,$00,$08,$08,$08,$08,$08
       .byte $08,$08,$08,$42,$42,$42,$42,$42,$42,$42,$42,$18,$18,$18,$FF,$00
       .byte $34,$34,$34,$32,$30,$32,$34,$34,$FF,$00,$34,$34,$34,$32,$30,$32
       .byte $34,$34,$FF,$00,$34,$34,$34,$32,$30,$32,$34,$34,$FF,$00,$36,$35
       .byte $38,$38,$3C,$3A,$38,$38,$FF,$00,$3E,$3E,$36,$36,$36,$36,$36,$36
       .byte $36,$36,$3E,$3E,$FF,$00,$3E,$3E,$36,$36,$36,$36,$36,$36,$36,$36
       .byte $3E,$3E,$FF,$00,$3E,$3E,$36,$36,$36,$36,$36,$36,$36,$36,$3E,$3E
       .byte $FF,$00,$16,$16,$32,$32,$32,$32,$32,$32,$32,$A4,$18,$18,$18,$18
       .byte $16,$16,$16,$FC,$FC,$FF,$00,$16,$16,$32,$32,$32,$32,$32,$32,$32
       .byte $A4,$C6,$C6,$C6,$C6,$C6,$C6,$A6,$3E,$3E,$FF,$00,$EB,$EB,$E6,$E6
       .byte $66,$6A,$34,$32,$66,$E6,$EB,$EB,$FF,$00,$EB,$EB,$E6,$E6,$6C,$36
       .byte $34,$32,$66,$E8,$EC,$EA,$FF,$00,$76,$84,$84,$84,$3A,$3C,$3A,$3C
       .byte $84,$84,$84,$74,$FF,$00,$34,$34,$34,$36,$18,$18,$A6,$A6,$A6,$A6
       .byte $A6,$A6,$A6,$86,$16,$38,$38,$48,$24,$24,$24,$24,$FF,$00,$FF,$FF
       .byte $FF,$FF,$7F,$7F,$7F,$3F,$3F,$3F,$1F,$1F,$0F,$07,$03,$01,$00,$00
       .byte $00,$00,$00,$FF,$FF,$C2,$F0,$F8,$F0,$E7,$DF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$7F,$1F,$03,$00,$FF,$CE,$1F,$FF,$7F,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FE,$F8,$C0,$00,$FF,$0E,$9E,$FE,$FC,$FC,$FC
       .byte $F8,$F8,$F0,$F0,$E0,$C0,$80,$00,$00,$00,$00,$00,$3A,$3A,$3A,$3A
       .byte $3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A,$08
       .byte $3A,$08,$3A,$0A,$0A,$08,$06,$06,$08,$3A,$06,$0C,$04,$06,$03,$01
       .byte $7F,$FF,$7F,$3F,$1C,$0C,$04,$02,$01,$00,$00,$FF,$55,$FF,$FF,$FF
       .byte $FF,$1F,$1F,$08,$0F,$00,$00,$00,$FF,$55,$FF,$FF,$FF,$FF,$F0,$F0
       .byte $20,$E0,$01,$40,$C0,$80,$00,$FC,$FE,$FC,$F8,$70,$60,$40,$80,$00
L3CA0: LDA    L38EB,X 
       STA    COLUP0  
       STA    COLUP1  
       INX            
       LDY    #$00    
L3CAA: LDA    L38EB,X 
       STA.wy $00CA,Y 
       INX            
       INY            
       CPY    #$0C    
       BMI    L3CAA   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       RTS            

L3CBD: LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    NUSIZ0  
       STA    NUSIZ1  
       RTS            

L3CCE: STY    $C0     
       LDA    ($D4),Y 
       STA    $BF     
       STA    WSYNC   
       LDA    ($CA),Y 
       STA    GRP0    
       LDA    ($CC),Y 
       STA    GRP1    
       LDA    ($CE),Y 
       STA    GRP0    
       LDA    ($D0),Y 
       TAX            
       LDA    ($D2),Y 
       LDY    $BF     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $C0     
       DEY            
       BPL    L3CCE   
       INY            
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

L3D00: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$00,$00,$18,$18,$18,$18,$18,$18,$18,$7E,$FF,$00,$00,$00,$00
       .byte $F2,$82,$F2,$92,$F2,$02,$02,$02,$00,$00,$00,$00,$00,$00,$79,$40
       .byte $79,$49,$79,$00,$00,$00,$00,$00,$00,$00,$03,$00,$E0,$27,$E4,$04
       .byte $E4,$00,$00,$00,$00,$00,$00,$00,$80,$80,$9E,$82,$9E,$90,$9E,$00
       .byte $11,$11,$17,$15,$17,$00,$1E,$21,$2D,$29,$2D,$21,$1E,$00,$77,$54
       .byte $77,$51,$77
L3DA3: LDA    $E8     
       STA    $CE     
       ASL            
       STA    $E8     
       LDA    $E7     
       STA    $CD     
       ROL            
       STA    $E7     
       LDA    $E8     
       ASL            
       STA    $E8     
       LDA    $E7     
       ROL            
       STA    $E7     
       LDA    $E8     
       CLC            
       ADC    $CE     
       STA    $E8     
       LDA    $E7     
       ADC    $CD     
       STA    $E7     
       LDA    $E8     
       CLC            
       ADC    #$19    
       STA    $E8     
       LDA    $E7     
       ADC    #$36    
       STA    $E7     
       LDA    $CE     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $E7     
       STA    $E7     
       RTS            

L3DE0: LDX    #$00    
       JSR    L3F74   
       INX            
       JSR    L3F74   
       RTS            

L3DEA: LDY    #$FF    
       SEC            
L3DED: INY            
       SBC    #$0F    
       BCS    L3DED   
       STY    $CA     
       EOR    #$FF    
       ADC    #$08    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $CA     
       RTS            

L3DFF: .byte $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$18,$30,$D8,$30,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$0E,$06,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $80,$C0,$F0,$C0,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$18,$30,$D8,$30,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$0E,$06,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $80,$C0,$F0,$C0,$80
L3F74: LDY    $D7,X   
       BEQ    L3F7B   
       DEC    $D7,X   
       RTS            

L3F7B: LDA    $E5,X   
       BEQ    L3FBE   
       DEC    $E5,X   
       LDA    $DB,X   
       ASL            
       BCC    L3F88   
       INC    $DD,X   
L3F88: ASL            
       BCC    L3F8D   
       DEC    $DD,X   
L3F8D: ASL            
       BCC    L3F92   
       INC    $DF,X   
L3F92: ASL            
       BCC    L3F97   
       DEC    $DF,X   
L3F97: ASL            
       BCC    L3F9C   
       INC    $E1,X   
L3F9C: ASL            
       BCC    L3FA1   
       DEC    $E1,X   
L3FA1: ASL            
       BCC    L3FA6   
       INC    $E3,X   
L3FA6: ASL            
       BCC    L3FAB   
       DEC    $E3,X   
L3FAB: LDA    $DD,X   
       STA    $D7,X   
       LDA    $DF,X   
       STA    AUDC0,X 
       LDA    $E1,X   
       STA    AUDF0,X 
       LDA    $E3,X   
       STA    AUDV0,X 
       JMP    L3FF7   
L3FBE: LDY    $D9,X   
       LDA    L38F8,Y 
       INY            
       STA    $DB,X   
       LDA    L38F8,Y 
       BEQ    L3FEB   
       INY            
       STA    $DD,X   
       LDA    L38F8,Y 
       INY            
       STA    $DF,X   
       LDA    L38F8,Y 
       INY            
       STA    $E1,X   
       LDA    L38F8,Y 
       INY            
       STA    $E3,X   
       LDA    L38F8,Y 
       INY            
       STA    $E5,X   
       STY    $D9,X   
       JMP    L3FAB   
L3FEB: STA    $E3,X   
       STA    $E5,X   
       STA    AUDV0,X 
       STA    $D9,X   
       LDA    #$05    
       STA    $D7,X   
L3FF7: RTS            

L3FF8: .byte $00,$02,$02,$02,$00,$30,$00,$30
