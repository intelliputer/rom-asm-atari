; Disassembly of roms/Frogflys.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Frogflys.bin
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
PF1     =  $0E
PF2     =  $0F
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMOVE   =  $2A
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF8E3   =   $F8E3

       ORG $F000
LF000: STY    $85     
       LDA    ($A8),Y 
       ASL            
       STA    ENABL   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($A6),Y 
       STA    ENAM1   
       LDA    ($A0),Y 
       BPL    LF057   
       LDA    ($A2),Y 
       BPL    LF066   
       LDY    $83     
       LDA    ($AA),Y 
       STA    GRP0    
       DEY            
       LDA    ($AA),Y 
LF020: TAX            
       LDA    ($AC),Y 
       STA    GRP1    
       DEY            
       LDA    ($AC),Y 
LF028: STA    $81     
       STY    $83     
       LDY    $85     
LF02E: LDA    ($96),Y 
       EOR    $80     
       STA    PF2     
       LDA    ($94),Y 
       EOR    $80     
       STA    PF1     
       LDA    ($92),Y 
       EOR    $80     
       STA    PF0     
       STX    GRP0    
       LDX    LFEB5,Y 
       LDA    $98,X   
       STA    COLUBK  
       LDA    $9C,X   
       STA    COLUPF  
       LDA    $81     
       STA    GRP1    
       DEY            
       BNE    LF000   
       JMP    LF106   
LF057: LDA    ($A2),Y 
       BPL    LF079   
       LDY    $83     
       LDA    #$00    
       STA    GRP0    
       DEY            
       NOP            
       NOP            
       BNE    LF020   
LF066: LDY    $83     
       LDA    ($AA),Y 
       STA    GRP0    
       DEY            
       LDA    ($AA),Y 
LF06F: TAX            
       LDA    #$00    
       STA    GRP1    
       DEY            
       NOP            
       NOP            
       BNE    LF028   
LF079: LDY    $83     
       LDA    #$00    
       STA    GRP0    
       DEY            
       NOP            
       NOP            
       JMP    LF06F   
LF085: LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    CTRLPF  
       LDA    $87     
       STA    COLUBK  
       LDX    #$04    
       CLC            
LF0A0: LDA    $92,X   
       ADC    #$0A    
       STA    $92,X   
       DEX            
       DEX            
       BPL    LF0A0   
       STA    WSYNC   
       LDA    #$00    
       STA    VBLANK  
       LDY    #$04    
       STA    WSYNC   
       STA    WSYNC   
LF0B6: LDX    #$03    
LF0B8: STA    WSYNC   
       LDA    $88     
       STA    COLUPF  
       LDA    ($8A),Y 
       EOR    ($8C),Y 
       STA    PF1     
       JSR    LF13A   
       NOP            
       LDA    $89     
       STA    COLUPF  
       LDA    ($8E),Y 
       EOR    ($90),Y 
       STA    PF1     
       DEX            
       BNE    LF0B8   
       DEY            
       BPL    LF0B6   
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       TAX            
       STA    $81     
       LDA    #$31    
       STA    CTRLPF  
       LDY    #$93    
       STY    $83     
       LDY    #$4A    
       STY    $85     
       STA    WSYNC   
       LDA    $87     
       STA    COLUPF  
       STA    WSYNC   
       STA    WSYNC   
       JSR    LF13A   
       JSR    LF13A   
       JSR    LF13A   
       NOP            
       LDA    $87     
       JMP    LF02E   
LF106: LDX    #$04    
       SEC            
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
LF10F: LDA    $92,X   
       SBC    #$0A    
       STA    $92,X   
       DEX            
       DEX            
       BPL    LF10F   
       LDY    #$0A    
LF11B: STA    WSYNC   
       LDA    ($92),Y 
       EOR    $80     
       STA    PF0     
       LDA    ($94),Y 
       EOR    $80     
       STA    PF1     
       LDA    ($96),Y 
       EOR    $80     
       STA    PF2     
       STA    WSYNC   
       DEY            
       BPL    LF11B   
       STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
LF13A: RTS            

LF13B: CLC            
       ADC    #$05    
       TAY            
       AND    #$0F    
       STA    $AE,X   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $AE,X   
       CMP    #$0F    
       BCC    LF153   
       SBC    #$0F    
       INY            
LF153: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    $AE,X   
       ORA    $AE,X   
       STA    $AE,X   
       RTS            

LF160: LDX    #$04    
LF162: STA    WSYNC   
       LDA    $AE,X   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
LF16B: DEY            
       BPL    LF16B   
       DEX            
       STA    RESP1,X 
       BPL    LF162   
       STA    WSYNC   
       STA    HMOVE   
       RTS            


START:
LF178: SEI            
       CLD            
LF17A: LDA    SWCHB   
       LSR            
       BCC    LF17A   
       LDY    INTIM   
       LDA    #$00    
       TAX            
LF186: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF186   
       STY    $E4     
       JSR    LF758   
       JSR    LF21D   
LF194: LDA    #$1E    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCC    LF178   
       JSR    LF6BE   
       JSR    LF7BE   
       INC    $B3     
LF1A7: LDA    INTIM   
       BNE    LF1A7   
       LDX    #$03    
       STA    WSYNC   
       STX    VSYNC   
LF1B2: STA    WSYNC   
       DEX            
       BNE    LF1B2   
       STX    VSYNC   
       LDA    #$30    
       STA    TIM64T  
       JSR    LF758   
       JSR    LF5B4   
       JSR    LF293   
       JSR    LF55C   
       JSR    LF5FD   
       JSR    LF8F0   
       JSR    LFA7E   
       JSR    LF933   
       STA    CXCLR   
LF1D8: LDA    INTIM   
       BNE    LF1D8   
       JSR    LF085   
       JMP    LF194   
LF1E3: .byte $26,$06,$07,$88,$89,$B8,$B7,$BD,$BE,$92,$93,$94,$95,$96,$97,$8B
       .byte $8D,$8F,$91,$A9,$AB,$AD,$D7,$D8,$D3,$D4,$DB,$DC,$C4
LF200: .byte $01,$04,$32,$06,$36,$1A,$07,$0A,$0A,$00,$FD,$55,$FD,$AA,$FD,$FB
       .byte $FB,$FB,$FB,$FE,$FC,$FC,$07,$07,$20,$6E,$B7,$B7,$08
LF21D: LDY    #$1C    
LF21F: LDA    LF200,Y 
       LDX    LF1E3,Y 
       STA    VSYNC,X 
       DEY            
       BPL    LF21F   
       RTS            

LF22B: .byte $04,$02,$02,$FE,$FC,$FA,$06,$06,$04,$06,$06,$06,$04,$02,$02,$02
       .byte $08,$04,$04,$FC,$F8,$F4,$0C,$0C,$08,$0C,$0C,$0C,$08,$04,$04,$04
       .byte $0B,$05,$05,$FB,$F5,$F1,$0F,$0F,$0B,$0F,$0F,$0F,$0B,$05,$05,$05
       .byte $0A,$0D,$12,$80,$C9,$DB,$ED,$FF,$00,$00,$81,$81,$81,$81,$6F,$6F
       .byte $6F,$6F,$5D,$5D,$5D,$5D,$00,$00,$00,$00,$4B,$4B,$4B,$4B
LF279: .byte $A7,$44,$79,$B6,$C4,$F3,$65,$0F,$9A,$9B,$C6,$ED,$FE
LF286: .byte $F2,$F4,$F4,$F4,$F4,$F4,$F3,$F4,$F3,$F3,$F3,$F3,$F3
LF293: LDA    $B3     
       AND    #$01    
       TAX            
       LDY    $C5,X   
       LDA    LF279,Y 
       STA    $B5     
       LDA    LF286,Y 
       STA    $B6     
       JMP.ind ($00B5)
LF2A7: .byte $A5,$B4,$D0,$75,$20,$F5,$F6,$20,$1F,$F7,$B4,$E0,$30,$4F,$B5,$C3
       .byte $30,$36,$29,$08,$F0,$0B,$C0,$02,$F0,$06,$C0,$06,$D0,$03,$A0,$04
       .byte $C8,$A9,$01,$95,$C5,$A9,$1B,$95,$C1,$94,$C9,$B9,$2B,$F2,$95,$CB
       .byte $B9,$33,$F2,$95,$CF,$F6,$D7,$B5,$C3,$29,$F7,$C0,$06,$B0,$06,$C0
       .byte $03,$90,$02,$09,$08,$95,$C3,$60,$B5,$C3,$A0,$0A,$29,$08,$F0,$02
       .byte $A0,$F6,$94,$CB,$A9,$1A,$95,$CF,$A9,$07,$95,$C5,$60,$B5,$C3,$29
       .byte $40,$F0,$E4,$A5,$B3,$29,$0E,$D0,$DE,$D6,$BF,$D0,$DA,$20,$81,$F7
       .byte $29,$07,$18,$69,$01,$95,$BF,$10,$CF,$B5,$C3,$09,$02,$29,$F7,$A0
       .byte $14,$CA,$F0,$04,$09,$08,$A0,$EC,$95,$C4,$94,$CC,$B5,$D4,$E8,$F0
       .byte $05,$A9,$94,$38,$F5,$D3,$4A,$4A,$4A,$4A,$A8,$B9,$5C,$F3,$95,$CF
       .byte $A9,$06,$95,$C5,$8A,$49,$01,$A8,$B9,$C5,$00,$C9,$06,$D0,$98,$A0
       .byte $06,$20,$18,$F9,$60,$0A,$0B,$0C,$0D,$0E,$0F,$10,$11,$12,$B5,$CB
       .byte $F0,$12,$B5,$D3,$C9,$93,$B0,$0C,$20,$1B,$F5,$A5,$B3,$29,$02,$D0
       .byte $E3,$D6,$CF,$60,$A9,$00,$95,$CF,$95,$D7,$8A,$49,$01,$A8,$B9,$C5
       .byte $00,$C9,$06,$D0,$CF,$B9,$D7,$00,$D0,$CA,$A9,$09,$85,$C5,$A9,$08
       .byte $85,$C6,$60,$60,$A5,$D9,$05,$DA,$D0,$BA,$A9,$0A,$85,$C5,$A9,$80
       .byte $85,$B4,$A9,$FF,$85,$06,$85,$07,$A5,$C3,$29,$F7,$85,$C3,$A9,$9B
       .byte $85,$D5,$A9,$38,$85,$D9,$A9,$FA,$85,$CD,$A9,$00,$85,$D1,$60,$A5
       .byte $D5,$C9,$80,$B0,$F9,$A9,$0B,$85,$C5,$A9,$8A,$85,$D3,$A9,$92,$85
       .byte $D4,$A9,$3C,$85,$D7,$85,$D8,$A9,$FA,$85,$CB,$85,$CC,$A9,$93,$85
       .byte $DB,$A9,$A5,$85,$DC,$60,$A5,$D3,$C9,$48,$B0,$D2,$A9,$0C,$85,$C5
       .byte $A9,$00,$85,$CB,$85,$CC,$60,$A5,$CD,$D0,$C3,$A9,$00,$85,$D9,$A9
       .byte $08,$85,$C5,$60,$20,$2B,$62,$6E,$20,$1B,$F5,$20,$31,$F5,$D6,$CF
       .byte $B5,$D7,$C9,$08,$B0,$5B,$A9,$07,$95,$D7,$A9,$00,$95,$C5,$B5,$C3
       .byte $49,$08,$95,$C3,$BC,$0B,$F4,$29,$08,$F0,$03,$BC,$0D,$F4,$94,$D3
       .byte $A9,$B7,$95,$DB,$A9,$00,$95,$CB,$95,$CF,$95,$C7,$60,$20,$1B,$F5
       .byte $20,$31,$F5,$D6,$C1,$F0,$26,$B5,$C1,$B4,$C9,$C9,$17,$D0,$0C,$B9
       .byte $3B,$F2,$95,$CB,$B9,$43,$F2,$95,$CF,$D0,$0E,$C9,$13,$D0,$0A,$B9
       .byte $4B,$F2,$95,$CB,$B9,$53,$F2,$95,$CF,$B5,$E0,$10,$04,$A9,$02,$95
       .byte $C5,$60,$20,$1B,$F5,$20,$31,$F5,$D6,$CF,$B5,$D7,$C9,$08,$B0,$F1
       .byte $A9,$07,$95,$D7,$A9,$00,$95,$C5,$A9,$B7,$95,$DB,$A9,$00,$95,$CB
       .byte $95,$CF,$20,$46,$F5,$B0,$17,$A9,$03,$95,$C5,$B5,$C3,$09,$02,$95
       .byte $C3,$A9,$F4,$95,$CF,$A9,$00,$95,$C7,$A0,$03,$20,$18,$F9,$60,$B5
       .byte $D7,$D0,$FB,$95,$CF,$A9,$17,$95,$C1,$A9,$04,$95,$C5,$D6,$C1,$F0
       .byte $0E,$B4,$C1,$B9,$62,$F2,$F0,$04,$95,$DB,$A9,$09,$95,$D7,$60,$A9
       .byte $05,$95,$C5,$A9,$04,$95,$D7,$A9,$B7,$95,$DB,$B5,$C3,$49,$08,$95
       .byte $C3,$A0,$04,$29,$08,$F0,$02,$A0,$FC,$94,$CB,$60,$20,$46,$F5,$90
       .byte $FA,$A9,$00,$95,$C5,$B5,$CB,$36,$CB,$6A,$CA,$F0,$03,$36,$CC,$6A
       .byte $E8,$75,$D3,$95,$D3,$A9,$07,$95,$D7,$A9,$00,$95,$CB,$B5,$C3,$29
       .byte $FD,$95,$C3,$60,$B5,$D7,$30,$11,$C9,$08,$30,$0D,$A0,$FF,$C8,$D9
       .byte $5B,$F2,$B0,$FA,$B9,$5F,$F2,$95,$DB,$60,$B5,$D3,$A0,$07,$C9,$07
       .byte $90,$06,$C9,$90,$90,$08,$A0,$8F,$94,$D3,$A9,$00,$95,$CB,$60,$B5
       .byte $D3,$C9,$0D,$90,$0C,$C9,$44,$90,$0A,$C9,$52,$90,$04,$C9,$89,$90
       .byte $02,$18,$60,$38,$60
LF55C: LDA    $B3     
       AND    #$01    
       TAX            
       LDA    $C7,X   
       BEQ    LF568   
       DEC    $C7,X   
       RTS            

LF568: LDA    $C3,X   
       AND    #$C0    
       BEQ    LF59B   
       LDY    #$01    
LF570: LDA    $D7,X   
       SEC            
       SBC.wy $00D9,Y 
       CLC            
       ADC    #$01    
       CMP    #$05    
       BCS    LF598   
       LDA.wy $00D5,Y 
       SBC    $D3,X   
       CMP    #$06    
       BCC    LF598   
       PHA            
       LDA    $C3,X   
       LSR            
       LSR            
       LSR            
       LSR            
       PLA            
       BCS    LF594   
       SBC    #$05    
       EOR    #$FF    
LF594: CMP    #$F6    
       BCS    LF5A6   
LF598: DEY            
       BEQ    LF570   
LF59B: LDY    $DD,X   
       LDA    REFP1,X 
       STA    $DD,X   
       BMI    LF5B3   
       TYA            
       BPL    LF5B3   
LF5A6: LDA    $C3,X   
       AND    #$02    
       BNE    LF5B3   
       LDA    #$08    
       STA    $C7,X   
       JSR    LFA74   
LF5B3: RTS            

LF5B4: LDA    $DF     
       CLC            
       ADC    #$0B    
       AND    #$0F    
       STA    $DF     
       LDX    #$03    
LF5BF: LDA    $CB,X   
       CLC            
       ADC    $DF     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$08    
       SEC            
       SBC    #$08    
       CLC            
       ADC    $D3,X   
       CMP    #$9C    
       BCS    LF5D8   
       STA    $D3,X   
       BCC    LF5DC   
LF5D8: LDA    #$00    
       STA    $CB,X   
LF5DC: LDA    $CF,X   
       CLC            
       ADC    $DF     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$08    
       SEC            
       SBC    #$08    
       CLC            
       ADC    $D7,X   
       CMP    #$4A    
       BCS    LF5F3   
       STA    $D7,X   
LF5F3: DEX            
       BPL    LF5BF   
       RTS            

LF5F7: .byte $10,$20
LF5F9: .byte $39,$31
LF5FB: .byte $3F,$0F
LF5FD: LDA    $B4     
       BMI    LF62A   
       LDA    $B3     
       LSR            
       LSR            
       LSR            
       AND    #$01    
       TAX            
       LDA    $C3     
       ORA    $C4     
       ASL            
       LDA    #$00    
       ROL            
       TAY            
       LDA    $CD,X   
       BNE    LF62B   
       LDA    $D9,X   
       BEQ    LF64A   
       LDA    #$00    
       STA    $D9,X   
       STA    $D1,X   
       JSR    LF781   
       AND    #$07    
       CLC            
       ADC    #$02    
       STA    $B9,X   
LF62A: RTS            

LF62B: LDA    $D9,X   
       CMP    LF5F7,Y 
       BCS    LF636   
       LDA    #$00    
       BPL    LF63D   
LF636: CMP    LF5F9,Y 
       BCC    LF64A   
       LDA    #$80    
LF63D: EOR    $D1,X   
       BPL    LF64A   
       LDA    $D1,X   
       EOR    #$FF    
       STA    $D1,X   
       ASL            
       ROR    $D1,X   
LF64A: LDA    $B3     
       AND    #$07    
       BNE    LF6BD   
       DEC    $B9,X   
       BPL    LF6BD   
       LDA    $D9,X   
       BNE    LF688   
       LDA    $B4     
       BNE    LF6BD   
       JSR    LF781   
       AND    #$0F    
       CLC            
       ADC    #$06    
       LSR            
       PHA            
       LDA    #$00    
       BCC    LF670   
       PLA            
       SBC    #$13    
       PHA            
       LDA    #$9A    
LF670: STA    $D5,X   
       PLA            
       STA    $CD,X   
LF675: JSR    LF781   
       AND    LF5FB,Y 
       CLC            
       ADC    LF5F7,Y 
       CMP    LF5F9,Y 
       BCS    LF675   
       STA    $D9,X   
       BNE    LF6A6   
LF688: JSR    LF781   
       CMP    #$C0    
       PHP            
       AND    #$07    
       CLC            
       ADC    #$04    
       PLP            
       LDY    $B4     
       BEQ    LF699   
       CLC            
LF699: LDY    $CD,X   
       BMI    LF6A0   
       BCC    LF6A4   
       CLC            
LF6A0: BCS    LF6A4   
       EOR    #$FF    
LF6A4: STA    $CD,X   
LF6A6: JSR    LF781   
       TAY            
       AND    #$0F    
       SEC            
       SBC    #$08    
       STA    $D1,X   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       CLC            
       ADC    #$08    
       STA    $B9,X   
LF6BD: RTS            

LF6BE: LDY    #$00    
       LDA    NUSIZ0  
       ASL            
       BMI    LF6CB   
       LDA    NUSIZ1  
       ASL            
       BPL    LF6F4   
       INY            
LF6CB: TYA            
       EOR    $B3     
       AND    #$01    
       TAY            
       LDX    $E5     
       LDA.wy $00D5,Y 
       CLC            
       SBC    $D3,X   
       CMP    #$06    
       BCC    LF6F4   
       JSR    LFA6A   
       LDA    $BB,X   
       SED            
       ADC    #$02    
       CLD            
       BCC    LF6EA   
       LDA    #$99    
LF6EA: STA    $BB,X   
       LDX    #$00    
       STX    $CD,Y   
       LDX    #$50    
       STX    $D9,Y   
LF6F4: RTS            

LF6F5: .byte $AD,$82,$02,$2A,$CA,$F0,$01,$2A,$E8,$B5,$C3,$10,$09,$90,$04,$29
       .byte $7F,$95,$C3,$60,$20,$6E,$B0,$FB,$09,$80,$29,$F7,$CA,$30,$02,$09
       .byte $08,$E8,$95,$C3,$BD,$09,$F7,$95,$D3,$60,$A5,$B3,$4A,$29,$1F,$D0
       .byte $21,$2A,$AA,$D6,$BD,$D0,$1B,$B5,$C3,$29,$40,$D0,$15,$09,$40,$29
       .byte $F7,$CA,$30,$02,$09,$08,$E8,$95,$C3,$BD,$09,$F7,$95,$D3,$A9,$02
       .byte $95,$BF,$60
LF748: .byte $FF,$FF,$FF,$FF,$FF,$07,$01,$00,$FF,$05,$03,$04,$FF,$06,$02,$FF
LF758: LDA    SWCHA   
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       LDX    #$00    
       JSR    LF769   
       PLA            
       AND    #$0F    
       INX            
LF769: CMP    $E2,X   
       STA    $E2,X   
       BNE    LF776   
       TAY            
       LDA    LF748,Y 
       STA    $E0,X   
       RTS            

LF776: LDA    #$0F    
       STA    $BD,X   
       LDA    $C3,X   
       AND    #$BF    
       STA    $C3,X   
       RTS            

LF781: LDA    $E4     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $E4     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $E4     
       CLC            
       ADC    #$95    
       STA    $E4     
LF795: RTS            

LF796: .byte $04,$06,$08,$08,$08,$08,$06,$04
LF79E: .byte $C4,$E4,$C6,$C6
LF7A2: .byte $00,$00,$00,$70,$90,$90,$90,$70,$92,$92,$92,$72,$94,$94,$94,$72
       .byte $96,$96,$96,$74,$98,$98,$98,$74,$9A,$9A,$9A,$74
LF7BE: LDX    #$01    
LF7C0: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $BB,X   
       AND    #$0F    
       STA    $AE     
       ASL            
       ASL            
       ADC    $AE     
       ADC    #$32    
       STA.wy $008C,Y 
       LDA    $BB,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $AE     
       LSR            
       LSR            
       ADC    $AE     
       ADC    #$00    
       STA.wy $008A,Y 
       DEX            
       BEQ    LF7C0   
       LDX    #$01    
LF7E9: TXA            
       ASL            
       TAY            
       LDA    #$FE    
       STA.wy $00A1,Y 
       LDA    #$52    
       SEC            
       SBC    $D7,X   
       STA.wy $00A0,Y 
       LDA    #$52    
       SBC    $D9,X   
       STA.wy $00A4,Y 
       LDA    $DB,X   
       SBC    $D7,X   
       SBC    $D7,X   
       STA.wy $00AA,Y 
       LDA    $C3,X   
       AND    #$08    
       STA    REFP0,X 
       DEX            
       BEQ    LF7E9   
       LDA    COLUP0  
       BPL    LF81A   
       LDX    $E5     
       INC    $E6,X   
LF81A: LDA    $B3     
       AND    #$01    
       TAX            
       LDY    $C7,X   
       BNE    LF826   
       EOR    #$01    
       TAX            
LF826: ASL            
       TAY            
       STX    $E5     
       LDA.wy $00A0,Y 
       LDY    $C7,X   
       BEQ    LF850   
       CLC            
       ADC    #$02    
       STA    $A8     
       LDA    $C3,X   
       AND    #$08    
       BNE    LF844   
       LDA    $D3,X   
       CLC            
       ADC    LF795,Y 
       BCC    LF84B   
LF844: LDA    $D3,X   
       SEC            
       SBC    LF795,Y 
       SEC            
LF84B: ADC    #$01    
       JMP    LF856   
LF850: LDA    #$52    
       STA    $A8     
       LDA    #$00    
LF856: PHA            
       LDA    $B7     
       ASL            
       ASL            
       TAY            
       LDA    $E6,X   
       LSR            
       LDX    #$03    
       BCS    LF87C   
       LDA    #$00    
       STA    $80     
LF867: DEY            
       LDA    LF7A2,Y 
       STA    $98,X   
       LDA    LF79E,X 
       STA    $9C,X   
       DEX            
       BPL    LF867   
       LDA    $98     
       STA    $87     
       JMP    LF892   
LF87C: LDA    #$FF    
       STA    $80     
LF880: DEY            
       LDA    LF7A2,Y 
       STA    $9C,X   
       LDA    LF79E,X 
       STA    $98,X   
       DEX            
       BPL    LF880   
       LDA    $9C     
       STA    $87     
LF892: PLA            
       LDX    #$04    
       BPL    LF899   
LF897: LDA    $D3,X   
LF899: JSR    LF13B   
       DEX            
       BPL    LF897   
       LDX    #$FE    
       LDY    #$20    
       LDA    $B3     
       AND    #$02    
       BEQ    LF8C4   
       DEC    $A4     
       DEC    $A6     
       LDX    #$03    
LF8AF: LDA    $CB,X   
       BMI    LF8BB   
       LDA    $D3,X   
       CLC            
       ADC    #$02    
       JSR    LF13B   
LF8BB: DEX            
       CPX    #$02    
       BEQ    LF8AF   
       LDX    #$FF    
       LDY    #$10    
LF8C4: STX    $A5     
       STX    $A7     
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDA    $B3     
       LSR            
       BCS    LF8E1   
       LDX    $B0     
       LDY    $B1     
       STX    $B1     
       STY    $B0     
       LDX    $A4     
       LDY    $A6     
       STX    $A6     
       STY    $A4     
LF8E1: JMP    LF160   
LF8E4: .byte $04,$06,$06,$02,$02
LF8E9: .byte $04,$32,$32,$34,$30,$32,$34
LF8F0: LDA    $B3     
       AND    #$3F    
       BNE    LF913   
       DEC    $B8     
       BNE    LF913   
       LDA    #$1A    
       STA    $B8     
       DEC    $B7     
       BEQ    LF90F   
       LDX    $B7     
       LDA    LF8E3,X 
       STA    $88     
       LDA    LF8E9,X 
       STA    $89     
       RTS            

LF90F: INC    $B7     
       INC    $B4     
LF913: RTS            

LF914: LDA    $E8,X   
       BNE    LF931   
LF918: STY    $E8,X   
       LDA    LFA62,Y 
       STA    $EA,X   
       LDA    LFA5B,Y 
       STA    AUDF0,X 
       LDA    LFA54,Y 
       STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       CLC            
       RTS            

LF931: SEC            
       RTS            

LF933: LDX    #$01    
       JSR    LF939   
       DEX            
LF939: LDY    $E8,X   
       BEQ    LF956   
       DEC    $EA,X   
       BEQ    LF950   
       LDA    LFA46,Y 
       STA    $EE     
       LDA    LFA4D,Y 
       STA    $EF     
       LDA    $EA,X   
       JMP.ind ($00EE)
LF950: LDA    #$00    
       STA    $E8,X   
       STA    AUDV0,X 
LF956: RTS            

LF957: .byte $29,$01,$F0,$05,$A9,$00,$95,$19,$60,$B5,$EA,$4A,$4A,$69,$03,$95
       .byte $17,$A9,$0C,$95,$19,$60,$C9,$02,$90,$10,$4A,$18,$69,$02,$95,$17
       .byte $4A,$4A,$49,$07,$38,$E9,$02,$95,$19,$60,$A9,$1F,$95,$17,$A9,$08
       .byte $95,$19,$60,$C9,$38,$90,$0B,$0A,$0A,$49,$FF,$69,$EF,$95,$19,$4C
       .byte $A1,$F9,$C9,$28,$90,$0C,$E9,$28,$95,$19,$A9,$3C,$38,$F5,$EA,$95
       .byte $17,$60,$C9,$14,$90,$10,$4A,$4A,$49,$FF,$69,$0A,$95,$19,$B5,$EA
       .byte $38,$E9,$12,$95,$17,$60,$4A,$4A,$95,$19,$60,$4A,$49,$FF,$B0,$02
       .byte $69,$04,$69,$12,$18,$75,$EC,$95,$17,$60,$C9,$10,$B0,$12,$C9,$04
       .byte $90,$05,$69,$03,$4C,$E2,$F9,$49,$FF,$69,$0C,$18,$75,$EC,$95,$17
       .byte $60,$C9,$01,$F0,$22,$C9,$50,$90,$02,$E9,$50,$C9,$32,$B0,$06,$85
       .byte $EE,$29,$01,$F0,$05,$A9,$00,$95,$19,$60,$A5,$EE,$4A,$4A,$69,$02
       .byte $95,$17,$A9,$0C,$95,$19,$60,$A0,$07,$A2,$01,$20,$18,$F9,$CA,$20
       .byte $18,$F9,$E8,$60,$C9,$01,$D0,$0D,$20,$81,$F7,$45,$B3,$29,$0F,$69
       .byte $82,$85,$EA,$85,$EB,$C9,$20,$B0,$12,$C9,$10,$90,$02,$49,$1F,$4A
       .byte $08,$4A,$95,$19,$28,$8A,$69,$0A,$95,$17,$60,$A9,$00,$95,$19
LFA46: .byte $60,$57,$6D,$8A,$C2,$D1,$E8
LFA4D: .byte $1B,$F9,$F9,$F9,$F9,$F9,$F9
LFA54: .byte $FA,$60,$81,$80,$43,$43,$60
LFA5B: .byte $40,$00,$0A,$00,$1A,$14,$00
LFA62: .byte $0A,$17,$14,$3C,$12,$12,$82,$50
LFA6A: TYA            
       PHA            
       LDY    #$01    
       JSR    LF918   
       PLA            
       TAY            
       RTS            

LFA74: TYA            
       PHA            
       LDY    #$02    
       JSR    LF918   
       PLA            
       TAY            
       RTS            

LFA7E: LDA    $B3     
       AND    #$01    
       TAX            
       JSR    LF781   
       EOR    $B3     
       AND    #$F9    
       BNE    LFAA6   
       JSR    LF781   
       LSR            
       AND    #$03    
       STA    $EC,X   
       LDY    #$04    
       BCS    LFA99   
       INY            
LFA99: JSR    LF914   
       BCS    LFAA6   
       LDA    LFA5B,Y 
       CLC            
       ADC    $EC,X   
       STA    AUDF0,X 
LFAA6: RTS            

LFAA7: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$70,$50,$50,$50,$70,$20,$20
       .byte $20,$20,$20,$70,$40,$70,$10,$70,$70,$10,$70,$10,$70,$10,$10,$70
       .byte $50,$50,$70,$10,$70,$40,$70,$70,$50,$70,$40,$70,$10,$10,$10,$10
       .byte $70,$70,$50,$70,$50,$70,$70,$10,$70,$50,$70,$07,$05,$05,$05,$07
       .byte $02,$02,$02,$02,$02,$07,$04,$07,$01,$07,$07,$01,$07,$01,$07,$01
       .byte $01,$07,$05,$05,$07,$01,$07,$04,$07,$07,$05,$07,$04,$07,$01,$01
       .byte $01,$01,$07,$07,$05,$07,$05,$07,$07,$01,$07,$05,$07,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$00,$00,$00,$00,$00,$00,$00,$18,$34,$2C,$76,$4C,$4A,$C9,$84
       .byte $00,$20,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$24,$18,$00
       .byte $00,$04,$4A,$02,$20,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$42,$42
       .byte $42,$3C,$00,$00,$40,$82,$10,$00,$00,$00,$00,$00,$00,$00,$3C,$42
       .byte $42,$81,$42,$42,$3C,$00,$00,$00,$00,$00,$00,$3D,$21,$21,$39,$21
       .byte $20,$3C,$00,$00,$11,$11,$11,$11,$11,$11,$7D,$00,$00,$5C,$54,$54
       .byte $54,$9C,$04,$04,$00,$00,$4C,$50,$5C,$54,$C8,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$7D,$7B,$FE,$FE,$FC,$7F,$7F,$3B,$0E,$04,$00
       .byte $00,$00,$00,$00,$00,$0C,$38,$70,$3C,$7B,$7E,$3E,$3F,$1F,$1B,$0E
       .byte $04,$00,$00,$00,$00,$08,$10,$70,$1C,$78,$62,$7C,$78,$3E,$3F,$1F
       .byte $1B,$0E,$04,$00,$00,$00,$20,$20,$30,$08,$18,$70,$66,$7C,$78,$3E
       .byte $3F,$1F,$1B,$0E,$04,$00,$00,$40,$40,$60,$20,$20,$20,$60,$66,$7C
       .byte $78,$3E,$3F,$1F,$1B,$0E,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$30,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$B0,$70,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$70,$B0,$F0
       .byte $F0,$70,$D0,$90,$90,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$10,$10,$30,$30,$70,$70,$E0,$F0,$B0,$30,$F0,$70,$F0
       .byte $F0,$F0,$F0,$E0,$B0,$70,$D0,$F0,$70,$E0,$C0,$00,$80,$00,$01,$03
       .byte $03,$07,$0F,$0F,$1E,$1F,$3F,$3B,$7D,$7E,$E7,$78,$37,$3F,$1E,$1D
       .byte $0F,$0F,$07,$05,$00,$00,$A0,$E0,$E0,$F0,$F0,$B0,$F8,$F9,$FF,$FF
       .byte $E7,$FF,$7E,$FE,$DC,$A8,$FC,$7C,$B4,$EC,$B8,$B8,$A8,$88,$20,$A8
       .byte $A8,$A8,$A8,$A8,$88,$00,$00,$00,$00,$00,$00,$18,$30,$60,$E0,$C3
       .byte $C6,$8F,$DD,$FF,$FF,$56,$FD,$FF,$FF,$FE,$DF,$7D,$EF,$F6,$5B,$BF
       .byte $FA,$EC,$00,$21,$63,$77,$7F,$7F,$7F,$3F,$BE,$FD,$7B,$37,$29,$76
       .byte $7B,$7D,$7E,$3F,$3F,$1F,$0F,$07,$03,$01,$00,$00,$00,$00,$00,$00
       .byte $00,$04,$5E,$FF,$FF,$FE,$FE,$EE,$F6,$FE,$BC,$FC,$E8,$E8,$60,$60
       .byte $20,$20,$00,$20,$20,$20,$20,$20,$20,$20,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$01,$03,$01,$02,$03,$01
       .byte $01,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$80,$80,$80,$80,$80,$80,$80,$82,$83,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
LFEB5: .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
       .byte $03,$03,$03,$03,$03,$03,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $02,$02,$02,$02,$02,$02,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$80,$80,$80,$80,$80,$82,$82,$83,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$78,$F1,$78,$F1,$78,$F1
