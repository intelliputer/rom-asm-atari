; Disassembly of roms/Clown Downtown (PAL).bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Clown Downtown (PAL).bin
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
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$FE    
       STA    $9B     
       STA    $9D     
       STA    $9F     
       STA    $A1     
       LDA    #$08    
       STA    $97     
       LDA    #$1F    
       STA    $98     
       LDA    #$2F    
       STA    $99     
LF021: LDA    #$01    
       STA    $C0     
       STA    $C1     
       LDA    #$0F    
       STA    $D5     
       LDA    #$0F    
       STA    $BF     
       LDA    #$0E    
       STA    $BE     
       LDA    #$0C    
       STA    $BD     
       LDA    #$0D    
       STA    $BC     
LF03B: LDA    #$01    
       STA    $B8     
       LDA    #$02    
       STA    $B9     
       LDA    #$3C    
       STA    $C5     
       LDA    #$FF    
       STA    $B3     
       LDA    #$84    
       STA    $B2     
       LDA    #$FF    
       STA    $B5     
       LDA    #$BB    
       STA    $B4     
       LDA    #$FD    
       STA    $B7     
       LDA    #$9D    
       STA    $B6     
       LDA    #$1F    
       STA    $B0     
       STA    $BB     
       LDA    #$FF    
       STA    $C2     
       LDA    #$FF    
       STA    $D2     
       STA    $D4     
       LDA    #$00    
       STA    AUDV1   
LF073: STA    CXCLR   
       LDA    $A2     
       STA    $C7     
       LDA    $A3     
       STA    $C8     
       LDA    $A4     
       STA    $C9     
       LDA    $A5     
       STA    $CA     
       LDA    #$01    
       STA    $CB     
       STA    $CC     
       LDA    #$07    
       STA    $D6     
LF08F: LDA    INTIM   
       BNE    LF08F   
       STA    WSYNC   
       STA    VBLANK  
       JSR    LF8F0   
       LDX    $81     
       CPX    #$05    
       BNE    LF0A4   
       JMP    LF34E   
LF0A4: LDA    #$01    
       STA    CTRLPF  
       LDA    LFEE6,X 
       JSR    LFA0F   
       STA    WSYNC   
       LDA    LFF09,X 
       BIT    $80     
       BNE    LF0BD   
       LDA    LFEEB,X 
       JMP    LF0C0   
LF0BD: LDA    LFEF0,X 
LF0C0: STA    $82     
       STA    WSYNC   
       LDA    LFEF5,X 
       STA    $86     
       LDA    LFEFA,X 
       STA    $8A     
       LDA    LFEFF,X 
       STA    $8C     
       LDA    $8D     
       STA    $8E     
       LDA    LFF04,X 
       JSR    LF958   
       STA    WSYNC   
       LDX    $81     
       LDY    LFA6C,X 
       JSR    LFA09   
       LDA    LFEDC,X 
       STA    $A9     
       LDA    LFEE1,X 
       STA    $A8     
       JMP.ind ($00A8)
LF0F4: .byte $85,$02,$A9,$18,$85,$08,$A2,$06,$BC,$56,$FD,$BD,$5D,$FD,$85,$02
       .byte $85,$0D,$BD,$64,$FD,$85,$0E,$BD,$6B,$FD,$85,$0F,$20,$09,$FA,$CA
       .byte $10,$E6,$4C,$E0,$F1,$A9,$08,$85,$08,$A0,$0A,$B9,$72,$FD,$85,$02
       .byte $85,$09,$C0,$08,$10,$0F,$B9,$7D,$FD,$85,$0D,$B9,$85,$FD,$85,$0E
       .byte $B9,$8D,$FD,$85,$0F,$88,$10,$E3,$4C,$E0,$F1,$A0,$0F,$20,$09,$FA
       .byte $A9,$02,$85,$08,$A0,$07,$B9,$95,$FD,$85,$02,$85,$0E,$88,$10,$F6
       .byte $A9,$00,$85,$0E,$A9,$97,$85,$02,$85,$09,$4C,$E6,$F2,$A9,$26,$85
       .byte $08,$A0,$07,$B9,$7D,$FD,$85,$02,$85,$0D,$B9,$85,$FD,$85,$0E,$B9
       .byte $8D,$FD,$85,$0F,$88,$10,$EC,$A2,$02,$4C,$E2,$F1,$85,$02,$A9,$0A
       .byte $85,$08,$A9,$00,$85,$AA,$85,$AB,$A0,$10,$A5,$AA,$38,$6A,$85,$AA
       .byte $85,$02,$85,$0F,$A5,$AB,$2A,$85,$0E,$85,$AB,$85,$02,$C0,$0D,$D0
       .byte $04,$A9,$59,$85,$08,$88,$D0,$E2,$A9,$B8,$85,$02,$85,$09,$20,$F7
       .byte $F9,$A2,$04,$20,$5C,$F2,$A0,$05,$20,$09,$FA,$A2,$05,$20,$5C,$F2
       .byte $A9,$B8,$85,$02,$85,$09,$A2,$04,$A9,$08,$24,$80,$D0,$08,$A9,$46
       .byte $20,$AE,$F2,$4C,$98,$F3,$20,$AB,$F2,$4C,$98,$F3,$A6,$81,$BD,$71
       .byte $FA,$85,$02,$85,$09,$BD,$74,$FA,$85,$8E,$BD,$77,$FA,$85,$8F,$BD
       .byte $7A,$FA,$85,$8A,$BD,$7D,$FA,$85,$8B,$85,$02,$BD,$80,$FA,$85,$82
       .byte $BD,$83,$FA,$85,$83,$BD,$86,$FA,$85,$86,$BD,$89,$FA,$85,$87,$BD
       .byte $8C,$FA,$85,$90,$BD,$71,$FA,$20,$98,$F9,$A6,$81,$D0,$02,$85,$02
       .byte $A5,$81,$D0,$03,$4C,$98,$F2,$C9,$03,$F0,$0D,$A2,$01,$20,$5C,$F2
       .byte $A2,$00,$20,$5C,$F2,$4C,$E6,$F2,$A2,$02,$20,$5C,$F2,$A2,$03,$20
       .byte $5C,$F2,$A2,$03,$A9,$08,$24,$80,$D0,$08,$A9,$00,$20,$AE,$F2,$4C
       .byte $98,$F3,$20,$AB,$F2,$4C,$98,$F3,$BD,$95,$FA,$85,$82,$BD,$A1,$FA
       .byte $85,$84,$BD,$9B,$FA,$85,$86,$BD,$A7,$FA,$85,$88,$BD,$AD,$FA,$85
       .byte $8A,$BD,$B3,$FA,$85,$8B,$BD,$B9,$FA,$85,$8E,$BD,$BF,$FA,$85,$8F
       .byte $BD,$8F,$FA,$20,$0F,$FA,$BD,$C5,$FA,$85,$8C,$BD,$CB,$FA,$20,$72
       .byte $F9,$85,$02,$60,$A9,$04,$A2,$00,$85,$02,$85,$09,$A9,$02,$24,$80
       .byte $D0,$05,$A9,$0A,$4C,$AE,$F2,$BD,$D1,$FA,$85,$82,$BD,$DB,$FA,$85
       .byte $8A,$BD,$E0,$FA,$85,$8C,$B5,$91,$85,$8E,$BD,$E5,$FA,$85,$86,$BD
       .byte $D6,$FA,$20,$0F,$FA,$BD,$EA,$FA,$86,$A7,$20,$58,$F9,$A6,$A7,$F0
       .byte $01,$60,$85,$02,$A9,$1E,$85,$02,$85,$09,$85,$02,$A9,$04,$85,$02
       .byte $85,$09,$A6,$81,$85,$02,$BD,$F2,$FB,$20,$0F,$FA,$A5,$98,$85,$82
       .byte $A5,$99,$85,$84,$BD,$01,$FC,$85,$86,$85,$88,$85,$02,$A5,$96,$85
       .byte $8E,$A5,$97,$85,$8F,$A9,$04,$85,$8A,$85,$8B,$BD,$04,$FC,$85,$8C
       .byte $BD,$07,$FC,$20,$72,$F9,$A6,$81,$E0,$02,$F0,$03,$4C,$35,$F3,$A2
       .byte $01,$20,$AB,$F2,$A2,$02,$20,$AB,$F2,$A0,$05,$20,$09,$FA,$4C,$98
       .byte $F3,$8A,$F0,$03,$4C,$98,$F3,$A0,$03,$20,$09,$FA,$A9,$68,$85,$02
       .byte $85,$09,$A0,$07,$20,$09,$FA,$4C,$98,$F3
LF34E: LDA    #$01    
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$00    
       STA    CTRLPF  
       LDA    #$1C    
       JSR    LF9C1   
       LDX    $C4     
       STA    WSYNC   
       STA    COLUPF  
       LDA    LFDF6,X 
       STA    PF0     
       LDA    LFDFA,X 
       STA    PF1     
       LDA    LFDF6,X 
       STA    PF2     
       LDY    #$27    
       JSR    LFA09   
       LDA    #$1C    
       JSR    LF9C1   
       JSR    LF9F7   
       LDA    #$48    
       STA    WSYNC   
       STA    COLUBK  
       LDY    #$0C    
       JSR    LFA09   
       LDY    $C6     
       JSR    LFA09   
       LDA    #$28    
       STA    WSYNC   
       STA    COLUBK  
       JMP    LF39A   
LF398: .byte $A6,$81
LF39A: STA    WSYNC   
       LDX    #$01    
       LDA    $AC     
       JSR    LFA3E   
       DEX            
       STX    NUSIZ0  
       STX    REFP1   
       LDA    $AD     
       JSR    LFA3E   
       LDA    $AE     
       STA    REFP0   
       LDA    $AF     
       STA    NUSIZ1  
       LDY    $C5     
       LDA    $BB     
       STA    $B1     
       LDX    $81     
       LDA    LFAEF,X 
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDX    #$00    
LF3C8: CPY    $B0     
       BCS    LF3D3   
       DEC    $B1     
       BMI    LF3D3   
       LDA    ($B2),Y 
       TAX            
LF3D3: LDA    $81     
       BEQ    LF3E2   
       CPY    #$1B    
       BCS    LF3E0   
       LDA    ($B6),Y 
       JMP    LF3E2   
LF3E0: LDA    #$00    
LF3E2: STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       LDA    LFDD3,Y 
       STA    COLUP1  
       LDA    ($B4),Y 
       STA    COLUP0  
       DEY            
       BPL    LF3C8   
       JSR    LFA00   
       STA    REFP0   
       STA    WSYNC   
       STA    COLUBK  
       LDA    $BF     
       STA    $D0     
       LDA    $BE     
       STA    $C8     
       LDA    $BC     
       STA    $C9     
       LDA    $BD     
       STA    $CA     
       LDA    $C0     
       STA    $CB     
       LDA    $C1     
       STA    $CC     
       LDA    $D5     
       STA    $D6     
       JSR    LF8F0   
       LDA    $D5     
       CMP    #$07    
       BNE    LF427   
       LDY    #$08    
       JSR    LFA09   
LF427: LDA    #$38    
       STA    TIM64T  
LF42C: LDA    INTIM   
       BNE    LF42C   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $80     
       LDA    #$30    
       STA    TIM64T  
       LDY    $DA     
       LDA    LFA68,Y 
       STA    AUDC0   
       LDA    $D0     
       AND    $80     
       BNE    LF481   
       DEC    $CD     
       BPL    LF47D   
       LDA    #$05    
       STA    $CD     
       LDY    $CE     
       LDX    $CF     
       CPX    #$0D    
       BNE    LF473   
       LDX    #$00    
       STX    $CF     
       INC    $DA     
       LDA    $DA     
       CMP    #$04    
       BNE    LF473   
       STX    $DA     
LF473: JSR    LFA22   
       STY    $CE     
       TYA            
       BNE    LF47D   
       INC    $CF     
LF47D: LDA    $CD     
       STA    AUDV0   
LF481: LDX    $81     
       STX    $BA     
       INC    $BA     
       CPX    #$05    
       BNE    LF4C9   
       LDA    #$00    
       STA    AUDV1   
       LDA    #$07    
       AND    $80     
       BNE    LF4A1   
       LDA    $C4     
       CMP    #$03    
       BNE    LF49F   
       LDA    #$FF    
       STA    $C4     
LF49F: INC    $C4     
LF4A1: LDA    #$03    
       AND    $80     
       BNE    LF4BD   
       LDA    $C3     
       CMP    #$03    
       BNE    LF4B1   
       LDA    #$FF    
       STA    $C3     
LF4B1: INC    $C3     
       LDA    $C6     
       CMP    #$31    
       BEQ    LF4BD   
       DEC    $C6     
       INC    $C5     
LF4BD: LDA    $C6     
       CMP    #$31    
       BNE    LF4C6   
       JMP    LF556   
LF4C6: JMP    LF073   
LF4C9: LDA    $80     
       AND    #$03    
       BNE    LF50E   
       LDA    $8D     
       JSR    LF8DE   
       STA    $8D     
       CPX    #$02    
       BEQ    LF4EC   
       CPX    #$03    
       BEQ    LF4FD   
       CPX    #$04    
       BEQ    LF507   
       LDA    $91     
       JSR    LF8E8   
       STA    $91     
       JMP    LF50E   
LF4EC: LDA    $92     
       JSR    LF8DE   
       STA    $92     
       LDA    $93     
       JSR    LF8E8   
       STA    $93     
       JMP    LF50E   
LF4FD: LDA    $94     
       JSR    LF8E8   
       STA    $94     
       JMP    LF50E   
LF507: LDA    $95     
       JSR    LF8E8   
       STA    $95     
LF50E: LDA    LFBEC,X 
       BIT    $80     
       BNE    LF522   
       LDA    LFBF5,X 
       STA    $98     
       LDA    LFBF8,X 
       STA    $99     
       JMP    LF52C   
LF522: LDA    LFBFB,X 
       STA    $98     
       LDA    LFBFE,X 
       STA    $99     
LF52C: LDA    $80     
       AND    LFBEF,X 
       BNE    LF556   
       CPX    #$02    
       BEQ    LF548   
       LDA    $96     
       JSR    LF8DE   
       STA    $96     
       LDA    $97     
       JSR    LF8DE   
       STA    $97     
       JMP    LF556   
LF548: LDA    $96     
       JSR    LF8E8   
       STA    $96     
       LDA    $97     
       JSR    LF8E8   
       STA    $97     
LF556: LDA    $D9     
       BEQ    LF57B   
       DEC    $D7     
       BPL    LF574   
       LDY    $D8     
       BNE    LF569   
       STY    $D7     
       STY    $D9     
       JMP    LF83A   
LF569: LDA    #$0A    
       STA    $D7     
       LDA    LFF60,Y 
       STA    AUDF1   
       DEC    $D8     
LF574: LDA    $D7     
       STA    AUDV1   
       JMP    LF073   
LF57B: LDA    #$01    
       BIT    SWCHB   
       BNE    LF588   
       JSR    LF5C4   
       JMP    LF03B   
LF588: LDA    #$01    
       BIT    $AE     
       BNE    LF5ED   
       LDA    #$10    
       BIT    $AE     
       BEQ    LF5A4   
       LDA    #$80    
       BIT    REFP1   
       BNE    LF59D   
       JMP    LF073   
LF59D: LDA    #$00    
       STA    $AE     
       JMP    LF073   
LF5A4: LDA    #$80    
       BIT    $AE     
       BNE    LF5B7   
       BIT    REFP1   
       BEQ    LF5B1   
       JMP    LF073   
LF5B1: JSR    LFA1D   
       JMP    LF073   
LF5B7: BIT    REFP1   
       BNE    LF5BE   
       JMP    LF073   
LF5BE: JSR    LF5C4   
       JMP    LF073   
LF5C4: LDA    #$01    
       STA    $AE     
       STA    $BD     
       LDA    #$00    
       STA    $81     
       STA    $AD     
       STA    $A2     
       STA    $A3     
       STA    $A5     
       STA    $A4     
       STA    $BC     
       LDA    #$0A    
       STA    $BE     
       LDA    #$0B    
       STA    $BF     
       LDA    #$03    
       STA    $C0     
       STA    $C1     
       LDA    #$07    
       STA    $D5     
       RTS            

LF5ED: LDA    #$04    
       BIT    $AE     
       BEQ    LF5F6   
       JMP    LF6E7   
LF5F6: LDA    #$02    
       BIT    $AE     
       BNE    LF66B   
       LDA    #$80    
       BIT    REFP1   
       BNE    LF636   
       LDA    #$10    
       BIT    $AE     
       BNE    LF63B   
       LDA    #$02    
       JSR    LFA1D   
       LDA    #$04    
       STA    $D8     
       LDA    #$0C    
       STA    AUDC1   
       LDA    $B0     
       CLC            
       ADC    #$15    
       STA    $B0     
       LDA    $B2     
       CLC            
       ADC    #$03    
       STA    $B2     
       LDA    $B4     
       CLC            
       ADC    #$03    
       STA    $B4     
       LDA    #$18    
       STA    $BB     
       LDA    #$10    
       JSR    LFA1D   
       JMP    LF765   
LF636: LDA    #$EF    
       JSR    LFA18   
LF63B: LDA    #$80    
       BIT    SWCHA   
       BNE    LF64A   
       LDA    #$F7    
       JSR    LFA18   
       JMP    LF659   
LF64A: LDA    #$40    
       BIT    SWCHA   
       BEQ    LF654   
       JMP    LF765   
LF654: LDA    #$08    
       JSR    LFA1D   
LF659: LDA    #$04    
       JSR    LFA1D   
       INC    $D8     
       LDA    #$0B    
       STA    AUDC1   
       LDA    #$1C    
       STA    AUDF1   
       JMP    LF6E7   
LF66B: DEC    $D7     
       DEC    $D7     
       BPL    LF685   
       LDY    $D8     
       BNE    LF67A   
       STY    $D7     
       JMP    LF685   
LF67A: LDA    #$0A    
       STA    $D7     
       LDA    LFF5B,Y 
       STA    AUDF1   
       DEC    $D8     
LF685: LDA    $D7     
       STA    AUDV1   
       LDA    $B0     
       CMP    #$3C    
       BNE    LF693   
       LDA    #$FF    
       STA    $B8     
LF693: LDA    #$07    
       AND    $80     
       BNE    LF69C   
       JMP    LF765   
LF69C: SEC            
       LDA    $B2     
       SBC    $B8     
       STA    $B2     
       SEC            
       LDA    $B4     
       SBC    $B8     
       STA    $B4     
       CLC            
       LDA    $B0     
       ADC    $B8     
       STA    $B0     
       CMP    #$1F    
       BNE    LF6CD   
       LDA    #$01    
       STA    $B8     
       LDA    #$F9    
       JSR    LFA18   
       LDA    #$84    
       STA    $B2     
       LDA    #$BB    
       STA    $B4     
       LDA    #$1F    
       STA    $BB     
       JMP    LF765   
LF6CD: LDA    #$08    
       BIT    $AE     
       BNE    LF6DD   
       LDA    #$80    
       BIT    SWCHA   
       BEQ    LF720   
       JMP    LF765   
LF6DD: LDA    #$40    
       BIT    SWCHA   
       BEQ    LF720   
       JMP    LF765   
LF6E7: LDA    $D8     
       BEQ    LF6F4   
       LDA    #$03    
       STA    AUDV1   
       DEC    $D8     
       JMP    LF6F6   
LF6F4: STA    AUDV1   
LF6F6: LDA    #$03    
       AND    $80     
       BEQ    LF6FF   
       JMP    LF765   
LF6FF: LDA    #$20    
       BIT    $AE     
       BNE    LF712   
       JSR    LFA1D   
       LDA    $B2     
       SEC            
       SBC    #$1F    
       STA    $B2     
       JMP    LF720   
LF712: LDA    #$DB    
       JSR    LFA18   
       LDA    $B2     
       CLC            
       ADC    #$1F    
       STA    $B2     
       INC    $D8     
LF720: LDA    #$08    
       BIT    $AE     
       BNE    LF75F   
       LDA    $AD     
       CMP    #$97    
       BNE    LF75A   
       INC    $81     
       SED            
       CLC            
       LDA    $A3     
       ADC    $BD     
       STA    $A3     
       CLC            
       LDA    $A2     
       ADC    $BC     
       STA    $A2     
       LDA    #$00    
       STA    $BC     
       LDA    #$9D    
       STA    $B6     
       LDA    #$00    
       STA    AUDV1   
       LDA    $81     
       CLC            
       ADC    #$01    
       STA    $BD     
       CLD            
       LDA    #$40    
       JSR    LFA1D   
       LDA    #$FF    
       STA    $AD     
LF75A: INC    $AD     
       JMP    LF765   
LF75F: LDA    $AD     
       BEQ    LF765   
       DEC    $AD     
LF765: LDA    $81     
       BNE    LF76C   
       JMP    LF88B   
LF76C: CMP    #$01    
       BNE    LF77B   
       LDA    #$00    
       STA    $AF     
       LDA    #$4F    
       STA    $AC     
       JMP    LF825   
LF77B: CMP    #$02    
       BNE    LF78A   
       LDA    #$04    
       STA    $AF     
       LDA    #$35    
       STA    $AC     
       JMP    LF825   
LF78A: CMP    #$03    
       BNE    LF799   
       LDA    #$06    
       STA    $AF     
       LDA    #$28    
       STA    $AC     
       JMP    LF825   
LF799: CMP    #$06    
       BPL    LF815   
       LDA    #$40    
       BIT    $AE     
       BEQ    LF7E3   
       STA    CXCLR   
       LDA    #$BF    
       JSR    LFA18   
       LDA    $81     
       CMP    #$04    
       BEQ    LF7D8   
       LDA    #$04    
       STA    $AF     
       LDA    #$00    
       STA    $C5     
       LDA    #$6D    
       STA    $C6     
       LDA    #$50    
       STA    $AC     
       LDA    #$1F    
       STA    $B0     
       STA    $BB     
       LDA    #$84    
       STA    $B2     
       LDA    #$BB    
       STA    $B4     
       LDA    #$01    
       STA    $B8     
       JSR    LFA18   
       JMP    LF825   
LF7D8: LDA    #$00    
       STA    $AF     
       LDA    #$97    
       STA    $AC     
       JMP    LF825   
LF7E3: LDA    #$03    
       AND    $80     
       BNE    LF825   
       LDA    #$80    
       BIT    $AE     
       BNE    LF7FC   
       JSR    LFA1D   
       LDA    $B6     
       CLC            
       ADC    #$1B    
       STA    $B6     
       JMP    LF808   
LF7FC: LDA    #$7F    
       JSR    LFA18   
       LDA    $B6     
       SEC            
       SBC    #$1B    
       STA    $B6     
LF808: LDA    $AC     
       BNE    LF810   
       LDA    #$A0    
       STA    $AC     
LF810: DEC    $AC     
       JMP    LF825   
LF815: LDA    $C2     
       CMP    #$1F    
       BEQ    LF81E   
       LSR            
       STA    $C2     
LF81E: LDA    #$00    
       STA    $81     
       JMP    LF850   
LF825: LDA    #$80    
       BIT    COLUP1  
       BEQ    LF88B   
LF82B: LDA    #$FF    
       STA    $D9     
       LDA    #$04    
       STA    $D8     
       LDA    #$0C    
       STA    AUDC1   
       JMP    LF073   
LF83A: LDA    $B9     
       BNE    LF84C   
       LDA    #$00    
       STA    $81     
       STA    $AD     
       LDA    #$10    
       JSR    LFA18   
       JMP    LF021   
LF84C: DEC    $B9     
       LDA    #$00    
LF850: STA    $AD     
       STA    $BC     
       LDA    #$1F    
       STA    $B0     
       STA    $BB     
       LDA    #$84    
       STA    $B2     
       LDA    #$BB    
       STA    $B4     
       LDA    #$9D    
       STA    $B6     
       LDA    #$01    
       STA    $B8     
       LDA    #$11    
       JSR    LFA18   
       LDA    #$40    
       JSR    LFA1D   
       LDA    #$00    
       STA    AUDV1   
       LDX    $B9     
       LDA    LFAF5,X 
       STA    $C0     
       LDA    LFAF8,X 
       STA    $C1     
       LDA    $81     
       CLC            
       ADC    #$01    
       STA    $BD     
LF88B: LDA    $C2     
       AND    $80     
       BNE    LF8B9   
       LDA    $BD     
       BNE    LF8A2   
       LDA    $BA     
       CMP    $BC     
       BMI    LF8A2   
       LDA    #$00    
       STA    $BC     
       JMP    LF82B   
LF8A2: SED            
       LDA    $BC     
       SEC            
       SBC    $BA     
       STA    $BC     
       LDA    $BD     
       SBC    #$00    
       AND    #$0F    
       STA    $BD     
       LDA    $BC     
       AND    #$0F    
       STA    $BC     
       CLD            
LF8B9: LDX    #$00    
LF8BB: LDA    $A2,X   
       AND    #$F0    
       BEQ    LF8D0   
       LDA    $A2,X   
       AND    #$0F    
       STA    $A2,X   
       SED            
       LDA    $A3,X   
       CLC            
       ADC    #$01    
       STA    $A3,X   
       CLD            
LF8D0: INX            
       CPX    #$03    
       BMI    LF8BB   
       LDA    $A5     
       AND    #$0F    
       STA    $A5     
       JMP    LF073   
LF8DE: CMP    #$9F    
       BNE    LF8E4   
       LDA    #$FF    
LF8E4: CLC            
       ADC    #$01    
       RTS            

LF8E8: BNE    LF8EC   
       LDA    #$A0    
LF8EC: SEC            
       SBC    #$01    
       RTS            

LF8F0: LDX    $C7     
       LDA    LFDFE,X 
       STA    $9A     
       LDX    $C8     
       LDA    LFDFE,X 
       STA    $9C     
       LDX    $C9     
       LDA    LFDFE,X 
       STA    $9E     
       LDX    $CA     
       LDA    LFDFE,X 
       STA    $A0     
       LDX    #$08    
       STA    HMCLR   
       STA    WSYNC   
LF912: DEX            
       BNE    LF912   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $CB     
       STA    NUSIZ0  
       LDA    $CC     
       STA    NUSIZ1  
       LDX    $81     
       LDA    LFE0E,X 
       STA    COLUP0  
       STA    COLUP1  
       LDY    $D6     
LF934: STA    WSYNC   
       LDA    ($A0),Y 
       STA    GRP0    
       LDA    ($9E),Y 
       STA    GRP1    
       LDA    ($9C),Y 
       TAX            
       LDA    ($9A),Y 
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STX    GRP0    
       STA    GRP1    
       STA    GRP0    
       DEY            
       BPL    LF934   
       JSR    LFA00   
       RTS            

LF958: JSR    LF9DC   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $8C     
LF961: LDA    ($82),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($86),Y 
       STA    COLUP0  
       DEY            
       BPL    LF961   
       JSR    LFA00   
       RTS            

LF972: .byte $20,$DC,$F9,$20,$EC,$F9,$85,$02,$85,$2A,$A4,$8C,$B1,$82,$AA,$B1
       .byte $84,$85,$02,$86,$1B,$85,$1C,$B1,$86,$85,$06,$B1,$88,$85,$07,$88
       .byte $10,$EA,$20,$00,$FA,$60,$20,$DC,$F9,$20,$EC,$F9,$20,$F7,$F9,$A0
       .byte $07,$B1,$82,$85,$02,$85,$1B,$85,$1C,$B1,$86,$85,$06,$85,$07,$98
       .byte $C9,$03,$D0,$04,$A5,$90,$85,$09,$88,$10,$E6,$20,$00,$FA,$60
LF9C1: LDX    $C3     
       STA    WSYNC   
       STA    COLUPF  
       LDA    LFDEE,X 
       STA    PF0     
       LDA    LFDF2,X 
       STA    PF1     
       LDA    LFDEE,X 
       STA    PF2     
       LDY    #$03    
       JSR    LFA09   
       RTS            

LF9DC: STA    WSYNC   
       STA    COLUBK  
       LDA    $8A     
       STA    NUSIZ0  
       LDX    #$00    
       LDA    $8E     
       JSR    LFA3E   
       RTS            

LF9EC: .byte $A5,$8B,$85,$05,$E8,$A5,$8F,$20,$3E,$FA,$60
LF9F7: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       RTS            

LFA00: LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       RTS            

LFA09: STA    WSYNC   
       DEY            
       BNE    LFA09   
       RTS            

LFA0F: STA    $83     
       STA    $85     
       STA    $87     
       STA    $89     
       RTS            

LFA18: AND    $AE     
       STA    $AE     
       RTS            

LFA1D: ORA    $AE     
       STA    $AE     
       RTS            

LFA22: LDA    LFEB4,X 
       STA    $D1     
       LDA    LFEC1,X 
       STA    $D3     
       LDA    ($D3),Y 
       STA    AUDF0   
       LDA    ($D1),Y 
       STA    $D0     
       TYA            
       CMP    LFECE,X 
       BNE    LFA3C   
       LDY    #$FF    
LFA3C: INY            
       RTS            

LFA3E: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $A6     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $A6     
       CMP    #$0F    
       BCC    LFA56   
       SBC    #$0F    
       INY            
LFA56: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFA60: DEY            
       BPL    LFA60   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

LFA68: .byte $0C,$04,$01,$0D
LFA6C: .byte $08,$01,$07,$02,$09,$93,$04,$12,$01,$05,$00,$40,$68,$52,$02,$02
       .byte $06,$06,$03,$06,$50,$60,$60,$FB,$FB,$FB,$58,$68,$68,$FB,$FB,$FB
       .byte $68,$58,$58,$FB,$FB,$FB,$FB,$FB,$FD,$70,$50,$70,$94,$60,$30,$82
       .byte $58,$82,$A6,$68,$37,$C8,$B8,$94,$70,$60,$30,$DA,$C0,$A6,$82,$68
       .byte $37,$06,$06,$06,$06,$01,$00,$05,$04,$06,$03,$02,$00,$80,$35,$16
       .byte $27,$30,$29,$4F,$05,$65,$80,$70,$79,$11,$07,$11,$11,$07,$06,$58
       .byte $58,$58,$58,$58,$96,$11,$BA,$CA,$08,$3E,$FC,$FC,$FC,$FD,$FD,$06
       .byte $06,$04,$04,$04,$06,$07,$0E,$07,$07,$18,$C2,$D9,$10,$4E,$04,$97
       .byte $97,$78,$78
LFAEF: .byte $0A,$0A,$0A,$0A,$0A,$0A
LFAF5: .byte $00,$03,$03
LFAF8: .byte $01,$01,$03,$7E,$B3,$E0,$00,$F0,$0E,$08,$1C,$6E,$F6,$FB,$CD,$C1
       .byte $3E,$0E,$08,$1C,$6F,$F7,$FB,$CC,$C0,$3E,$00,$00,$00,$2B,$2B,$2B
       .byte $2B,$2B,$00,$00,$40,$30,$78,$FC,$36,$E4,$C0,$60,$30,$78,$FC,$07
       .byte $02,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$3C,$3C,$00,$24,$00,$42,$18,$BD
       .byte $7E,$FF,$FF,$FF,$FF,$FF,$7E,$3C,$48,$48,$00,$00,$00,$00,$00,$00
       .byte $2B,$2B,$62,$62,$62,$2B,$2B,$2B,$18,$18,$18,$7E,$FF,$FF,$7E,$3C
       .byte $43,$43,$43,$33,$33,$33,$33,$33,$20,$20,$70,$F8,$70,$F8,$70,$20
       .byte $43,$43,$33,$33,$33,$33,$33,$33,$1C,$3E,$7C,$3F,$FC,$3F,$7C,$3F
       .byte $7E,$3C,$7E,$1C,$38,$1C,$18,$0C,$08,$08,$73,$73,$73,$73,$73,$73
       .byte $73,$73,$73,$73,$73,$73,$73,$73,$73,$73,$73,$73,$18,$18,$FF,$7E
       .byte $3C,$7F,$3C,$FF,$7E,$3F,$FE,$7C,$3F,$1E,$7C,$3E,$1C,$01,$24,$24
       .byte $33,$33,$33,$33,$33,$33,$33,$33,$33,$33,$33,$33,$33,$33,$33,$33
       .byte $00,$FF,$99,$99,$FF,$FF,$7E,$00,$00,$0B,$0B,$0B,$0B,$63,$63,$00
       .byte $00,$FF,$FF,$FF,$99,$99,$FF,$FF,$7E,$7E,$60,$60,$00,$00,$00,$00
       .byte $00,$00,$00,$2B,$2B,$2B,$2B,$2B,$2B,$64,$64,$64,$35,$35,$00,$00
       .byte $00,$00,$00,$00
LFBEC: .byte $02,$08,$10
LFBEF: .byte $01,$03,$07,$FC,$FC,$FC
LFBF5: .byte $1F,$47,$8D
LFBF8: .byte $2F,$55,$96
LFBFB: .byte $27,$63,$9F
LFBFE: .byte $37,$71,$A8,$3F,$7F,$B1,$07,$0D,$08,$16,$58,$96,$24,$42,$FF,$FF
       .byte $D0,$50,$30,$42,$24,$FF,$FF,$D0,$50,$30,$00,$00,$25,$25,$25,$25
       .byte $25,$08,$10,$7F,$FF,$E3,$33,$1F,$00,$10,$08,$7F,$FF,$E3,$33,$1F
       .byte $00,$20,$10,$FE,$FE,$1E,$30,$E0,$00,$10,$20,$FE,$FE,$1E,$30,$E0
       .byte $00,$00,$00,$85,$85,$85,$85,$85,$00,$50,$08,$28,$14,$14,$1F,$3F
       .byte $5F,$0F,$07,$01,$00,$00,$00,$00,$50,$80,$A0,$40,$C0,$80,$80,$80
       .byte $D0,$F8,$70,$60,$90,$0A,$14,$14,$14,$15,$1F,$5F,$3F,$0F,$07,$01
       .byte $00,$00,$00,$A0,$A0,$A0,$A0,$40,$C0,$80,$80,$80,$D0,$F8,$70,$60
       .byte $90,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$3F
       .byte $FF,$F7,$FF,$FF,$7E,$08,$2A,$14,$FC,$FE,$E1,$C6,$8A,$02,$00,$00
       .byte $00,$3F,$FF,$F7,$FF,$FF,$7E,$00,$00,$00,$FC,$FE,$E1,$C3,$85,$01
       .byte $00,$00,$00,$04,$04,$04,$04,$04,$04,$0C,$0C,$0C,$7E,$FF,$10,$1C
       .byte $1C,$18,$18,$10,$B3,$B3,$00,$1B,$1B,$1B,$1B,$1B,$7E,$FF,$10,$1F
       .byte $1F,$1E,$1E,$1C,$1C,$1C,$18,$18,$18,$10,$10,$35,$35,$00,$B8,$B8
       .byte $B8,$B8,$B8,$B8,$B8,$B8,$B8,$B8,$00,$00,$0C,$04,$8E,$7D,$4B,$0E
       .byte $08,$78,$0C,$04,$4E,$7D,$8B,$0E,$08,$0F,$00,$00,$1A,$1A,$1A,$1A
       .byte $1A,$33,$92,$CC,$3C,$5E,$23,$49,$1B,$0E,$A1,$4C,$BC,$1E,$63,$49
       .byte $1B,$0E,$13,$13,$13,$13,$13,$13,$13,$13,$18,$3C,$7E,$FF,$FF,$7E
       .byte $3C,$18,$18,$3C,$66,$FF,$DB,$7E,$3C,$18,$08,$08,$08,$08,$08,$08
       .byte $08,$08,$00,$FF,$FF,$7E,$7E,$3C,$18,$00,$02,$02,$02,$02,$02,$02
       .byte $45,$AA,$5C,$3E,$2D,$E0,$60,$50,$14,$2A,$5D,$3E,$3C,$E0,$60,$50
       .byte $56,$56,$56,$56,$56,$56,$56,$56,$02,$02,$02,$02,$02,$02,$04,$F0
       .byte $F0,$F0,$D0,$C0,$80,$00,$FF,$FD,$DD,$DC,$58,$48,$08,$FF,$FE,$EE
       .byte $E6,$C6,$84,$80,$04,$38,$18,$18,$26,$26,$47,$47,$47,$8A,$8B,$F0
       .byte $F0,$C0,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$7C,$38,$10,$FF
       .byte $3F,$0F,$03,$00,$00,$00,$00,$FF,$FF,$7E,$7E,$3C,$3C,$18,$18,$00
       .byte $3C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$36,$2A,$2A,$2A,$2A,$2A,$36,$1C
       .byte $38,$3C,$3C,$7C,$3C,$FE,$7C,$7C,$7C,$38,$00,$66,$E3,$22,$36,$36
       .byte $1C,$1C,$1C,$3E,$5E,$6E,$36,$1A,$2E,$36,$1C,$38,$3C,$3C,$7C,$3C
       .byte $FE,$7C,$7C,$7C,$38
LFDD3: .byte $00,$00,$92,$92,$92,$92,$92,$92,$92,$92,$92,$92,$92,$92,$92,$92
       .byte $92,$46,$46,$46,$46,$46,$92,$92,$92,$92,$92
LFDEE: .byte $CC,$66,$33,$99
LFDF2: .byte $33,$66,$CC,$99
LFDF6: .byte $DD,$BB,$77,$EE
LFDFA: .byte $BB,$DD,$EE,$77
LFDFE: .byte $64,$6C,$74,$7C,$84,$8C,$94,$9C,$A4,$AC,$1C,$14,$24,$34,$44,$54
LFE0E: .byte $0C,$1C,$BC,$9C,$4C,$3C,$00,$7E,$3C,$3C,$18,$A5,$42,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18
       .byte $18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46
       .byte $06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46
       .byte $06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18
       .byte $18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46
       .byte $06,$3E,$66,$66,$66,$3C
LFEB4: .byte $0E,$0E,$11,$0E,$0E,$11,$0E,$0E,$11,$0E,$0E,$11,$1F
LFEC1: .byte $26,$26,$29,$37,$37,$3A,$26,$26,$29,$48,$48,$4B,$54
LFECE: .byte $02,$02,$0D,$02,$02,$0D,$02,$02,$0D,$02,$02,$08,$06,$03
LFEDC: .byte $F0,$F1,$F1,$F1,$F1
LFEE1: .byte $F4,$19,$3F,$61,$80
LFEE6: .byte $FB,$FB,$FB,$FC,$FD
LFEEB: .byte $00,$1B,$30,$E8,$18
LFEF0: .byte $09,$22,$30,$F0,$20
LFEF5: .byte $12,$29,$30,$F8,$28
LFEFA: .byte $00,$04,$00,$00,$07
LFEFF: .byte $08,$06,$0F,$07,$07
LFF04: .byte $9B,$99,$08,$9B,$9B
LFF09: .byte $02,$10,$00,$02,$10,$01,$01,$03,$01,$00,$00,$01,$01,$01,$01,$01
       .byte $01,$03,$03,$03,$03,$0F,$03,$03,$01,$01,$01,$01,$0F,$0E,$0F,$0E
       .byte $0E,$0C,$0E,$0F,$0E,$13,$11,$0F,$0E,$0C,$0E,$0F,$0E,$0C,$0C,$0D
       .byte $0C,$0C,$0B,$0C,$0D,$0C,$11,$0F,$0E,$0C,$0B,$0C,$0E,$11,$13,$0A
       .byte $0B,$0A,$0C,$0B,$0C,$0E,$11,$13,$11,$0F,$0E,$0C,$11,$0E,$0F,$11
       .byte $0F,$0E
LFF5B: .byte $00,$0C,$09,$0C,$0E
LFF60: .byte $00,$0A,$09,$0B,$07,$00,$66,$45,$BC,$3C,$2C,$7A,$F7,$DF,$FB,$AF
       .byte $7A,$3C,$3C,$55,$AA,$3C,$3C,$3C,$3C,$54,$2A,$18,$3C,$3E,$35,$7C
       .byte $3C,$99,$7E,$24,$00,$1C,$1A,$18,$3C,$2C,$7A,$F7,$DF,$FB,$AF,$7A
       .byte $3C,$3C,$55,$AA,$3C,$3C,$3C,$3C,$54,$2A,$18,$3C,$3E,$35,$7C,$3C
       .byte $99,$7E,$24,$00,$64,$C6,$29,$7E,$FF,$FF,$7E,$55,$AA,$3C,$3C,$3C
       .byte $54,$2A,$18,$3C,$3E,$35,$7C,$3C,$99,$7E,$24,$00,$B8,$B8,$B8,$43
       .byte $43,$43,$43,$43,$43,$43,$43,$43,$43,$18,$18,$43,$43,$43,$43,$B8
       .byte $B8,$46,$46,$46,$46,$46,$B8,$B8,$B8,$B8,$00,$B8,$B8,$B8,$43,$43
       .byte $43,$43,$18,$18,$43,$43,$43,$B8,$B8,$46,$46,$46,$46,$46,$B8,$B8
       .byte $B8,$B8,$B5,$AC,$D7,$B5,$60,$A9,$01,$D0,$02,$A9,$00,$F0,$C3,$AA
