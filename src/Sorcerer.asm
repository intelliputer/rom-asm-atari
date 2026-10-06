; Disassembly of roms/Sorcerer.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Sorcerer.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
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
VDELP0  =  $25
VDELP1  =  $26
VDELBL  =  $27
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
$0285   =  $0285

       ORG $F000
LF000: .byte $48
LF001: .byte $26

START:
       CLD            
       LDA    #$F0    
       STA    $95     
       LDA    #$01    
       STA    $94     
       LDX    #$00    
       STX    $96     
       STX    $97     
LF011: INC    $94     
       BEQ    LF02E   
LF015: LDA    ($94,X) 
       TAY            
       EOR    $96     
       LSR            
       BCC    LF01F   
       EOR    #$95    
LF01F: STA    $96     
       TYA            
       EOR    $97     
       ASL            
       BCC    LF029   
       EOR    #$65    
LF029: STA    $97     
       JMP    LF011   
LF02E: INC    $95     
       BNE    LF015   
       LDA    LF000   
       CMP    $96     
LF037: BNE    LF037   
       LDA    LF001   
       CMP    $97     
LF03E: BNE    LF03E   
       LDA    #$00    
       STA    SWACNT  
       STA    SWBCNT  
       TAX            
LF049: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF049   
       LDA    #$72    
       STA    $84     
LF053: STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$2A    
       STA    $029D   
       INC    $82     
       BNE    LF06C   
       INC    $81     
       BIT    $86     
       BMI    LF06C   
       DEC    $86     
LF06C: LDA    SWCHB   
       TAX            
       AND    #$03    
       CMP    #$03    
       BNE    LF07A   
       CPX    $A1     
       BEQ    LF07E   
LF07A: LDA    #$07    
       STA    $86     
LF07E: TXA            
       BIT    LFFF9   
       BNE    LF090   
       LDA    $84     
       AND    #$1F    
       ORA    #$10    
       STA    $84     
       LDA    #$00    
       STA    $85     
LF090: TXA            
       BIT    LFFF8   
       BEQ    LF09C   
       LDA    #$00    
       STA    $83     
       BEQ    LF0D2   
LF09C: LDA    $83     
       BEQ    LF0A8   
       DEC    $83     
       TXA            
       ORA    #$02    
       TAX            
       BNE    LF0D2   
LF0A8: LDA    #$0F    
       STA    $83     
       LDA    #$00    
       STA    $85     
       LDA    $84     
       AND    #$07    
       CMP    #$02    
       BNE    LF0BC   
       LDA    #$00    
       BEQ    LF0CE   
LF0BC: CMP    #$01    
       BNE    LF0C4   
       LDA    #$04    
       BNE    LF0CE   
LF0C4: CMP    #$05    
       BCC    LF0CC   
       LDA    #$02    
       BNE    LF0CE   
LF0CC: ADC    #$01    
LF0CE: ORA    #$70    
       STA    $84     
LF0D2: STX    $A1     
       LDY    #$07    
       LDA    $84     
       BMI    LF0E2   
       LDX    INPT4   
       BMI    LF0E8   
       STY    $86     
       BNE    LF0E8   
LF0E2: LDX    INPT5   
       BMI    LF0E8   
       STY    $86     
LF0E8: AND    #$60    
       BEQ    LF10D   
       STA    $A2     
       LDA    $85     
       BNE    LF113   
       TXA            
       BMI    LF117   
       LDA    $84     
       AND    #$9F    
       ORA    #$08    
       STA    $84     
       LDA    $A2     
       AND    #$60    
       CMP    #$20    
       BNE    LF113   
       LDA    $84     
       ORA    #$10    
       STA    $84     
       BNE    LF113   
LF10D: LDX    SWCHA   
       INX            
       BEQ    LF117   
LF113: LDA    #$07    
       STA    $86     
LF117: LDA    $84     
       BIT    LFFF5   
       BNE    LF125   
       BIT    LFFF6   
       BNE    LF12B   
       BEQ    LF12E   
LF125: JSR    LFEC7   
       JSR    LFF3A   
LF12B: JSR    LFC9E   
LF12E: LDA    $84     
       AND    #$E7    
       STA    $84     
       LDA    #$00    
       BIT    $86     
       BPL    LF13C   
       LDA    $81     
LF13C: STA    $80     
       LDX    $8B     
       LDA    $84     
       BPL    LF146   
       LDX    $8C     
LF146: STX    $87     
LF148: LDA    #$00    
       LDX    #$3F    
       BIT    $0285   
       BPL    LF148   
       STA    WSYNC   
       STA    VSYNC   
       STX    $029E   
       LDX    $B0     
       BNE    LF165   
       JSR    LFED9   
       JSR    LFC9E   
       JMP    LF182   
LF165: BPL    LF169   
       INC    $B0     
LF169: LDX    $B1     
       BEQ    LF171   
       BPL    LF171   
       INC    $B1     
LF171: LDX    #$02    
LF173: LDA    $B1,X   
       BMI    LF17D   
       LDA    #$00    
       STA    $AC,X   
       BEQ    LF17F   
LF17D: INC    $B1,X   
LF17F: DEX            
       BNE    LF173   
LF182: LDA    $84     
       AND    #$60    
       BEQ    LF191   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF264   
LF191: LDY    #$0F    
       LDX    $AA     
       TYA            
       LSR            
       AND    $82     
       CMP    #$05    
       BCS    LF19E   
       TAY            
LF19E: CPY    #$06    
       BCC    LF1A4   
       LDY    #$05    
LF1A4: STY    AUDV0   
       CMP    #$00    
       BEQ    LF1AD   
       JMP    LF1D8   
LF1AD: CLC            
       LDA    $A8     
       ADC    #$01    
       CMP    #$30    
       BCC    LF1B8   
       LDA    #$00    
LF1B8: STA    $A8     
       TAX            
       LDA    LF1F4,X 
       STA    AUDF0   
       LDA    LF224,X 
       STA    AUDC0   
       LDX    $A7     
       INX            
       CPX    #$03    
       BNE    LF1D0   
       LDX    #$00    
       INC    $A9     
LF1D0: STX    $A7     
       LDA    $A9     
       AND    #$07    
       STA    $A9     
LF1D8: LDX    $A9     
       LDY    #$06    
       LDA    $A6     
       BIT    LFFF9   
       BNE    LF1E5   
       LDY    #$00    
LF1E5: STY    AUDV1   
       LDA    LF254,X 
       STA    AUDF1   
       LDA    LF25C,X 
       STA    AUDC1   
       JMP    LF264   
LF1F4: .byte $1D,$1D,$1D,$1D,$1A,$18,$1A,$0C,$0C,$0C,$0C,$0C,$1D,$1D,$1D,$1D
       .byte $1A,$18,$1A,$13,$13,$13,$13,$02,$1D,$1A,$18,$1A,$1D,$1A,$1D,$1A
       .byte $18,$02,$13,$12,$13,$12,$13,$02,$18,$02,$1A,$18,$1A,$18,$0C,$1F
LF224: .byte $04,$04,$04,$04,$04,$04,$04,$0C,$0C,$0C,$0C,$0C,$04,$04,$04,$04
       .byte $04,$04,$04,$04,$04,$04,$04,$01,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $04,$01,$04,$04,$04,$04,$04,$01,$04,$01,$04,$04,$04,$04,$0C,$04
LF254: .byte $14,$1F,$17,$1F,$0C,$0F,$0D,$1F
LF25C: .byte $01,$01,$01,$01,$07,$07,$07,$01
LF264: LDA    $84     
       AND    #$60    
       BEQ    LF26D   
       JMP    LF36C   
LF26D: LDA    SWCHA   
       BIT    $84     
       BMI    LF27F   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $A2     
       LDA    INPT4   
       JMP    LF285   
LF27F: AND    #$0F    
       STA    $A2     
       LDA    INPT5   
LF285: AND    #$80    
       ORA    $A2     
       LDX    #$01    
       JSR    LF294   
       JSR    LF31B   
       JMP    LF36C   
LF294: TAY            
       LDA    $B7,X   
       BEQ    LF2A2   
       BPL    LF2A0   
       INC    $B7,X   
       JMP    LF2A2   
LF2A0: DEC    $B7,X   
LF2A2: LDA    #$00    
       STA    $BB,X   
       LDA    $A6     
       BIT    LFFF4   
       BNE    LF2B6   
       LDA    $AA,X   
       CMP    #$1C    
       BEQ    LF2CB   
       JMP    LF316   
LF2B6: TYA            
       BIT    LFFF8   
       BNE    LF2CB   
       LDA    #$FF    
       STA    $BB,X   
       LDA    $AA,X   
       CMP    #$1C    
       BCC    LF2CB   
       SEC            
       SBC    #$01    
       STA    $AA,X   
LF2CB: TYA            
       BIT    LFFF9   
       BNE    LF2F0   
       LDA    #$01    
       STA    $BB,X   
       LDA    $A6     
       BIT    LFFF4   
       BNE    LF2E5   
       TYA            
       ORA    #$0C    
       TAY            
       LDA    #$30    
       JMP    LF2EE   
LF2E5: LDA    $AA,X   
       CMP    #$4D    
       BCS    LF2F0   
       CLC            
       ADC    #$01    
LF2EE: STA    $AA,X   
LF2F0: TYA            
       BIT    LFFF7   
       BNE    LF303   
       LDA    #$C4    
       STA    $B7,X   
       LDA    $A6     
       AND    LF316,X 
       STA    $A6     
       DEC    $B3,X   
LF303: TYA            
       BIT    LFFF6   
       BNE    LF316   
       LDA    #$3C    
       STA    $B7,X   
       LDA    $A6     
       ORA    LF318,X 
       STA    $A6     
       INC    $B3,X   
LF316: RTS            

LF317: .byte $7F
LF318: .byte $BF,$80,$40
LF31B: TYA            
       BMI    LF36B   
       LDA    $B2     
       BNE    LF36B   
       LDA    #$B0    
       STA    $B2     
       CLC            
       LDA    $B4     
       ADC    #$05    
       STA    $B6     
       SEC            
       LDA    $AB     
       SBC    #$02    
       STA    $AD     
       SEC            
       LDA    $B4     
       SBC    $B5     
       CLC            
       ADC    #$0F    
       CMP    #$1F    
       BCS    LF356   
       LDA    #$00    
       STA    $BA     
       LDA    $AB     
       CMP    $AC     
       BCS    LF350   
       LDA    #$01    
       STA    $BE     
       BNE    LF36B   
LF350: LDA    #$FF    
       STA    $BE     
       BNE    LF36B   
LF356: LDA    #$00    
       STA    $BD,X   
       LDA    $A6     
       AND    LF318,X 
       BEQ    LF367   
       LDA    #$02    
       STA    $B9,X   
       BNE    LF36B   
LF367: LDA    #$FE    
       STA    $B9,X   
LF36B: RTS            

LF36C: LDA    $B0     
       BPL    LF391   
       LDA    #$07    
       STA    $D3     
       LDA    #$F4    
       LDX    #$F3    
       JSR    LF3EF   
       LDA    #$F7    
       LDX    #$F3    
       LDY    #$03    
       JSR    LF3E8   
       LDA    #$00    
       STA    $B8     
       LDA    $AB     
       BEQ    LF38E   
       DEC    $AB     
LF38E: JMP    LF421   
LF391: LDA    $A6     
       BIT    LFFF4   
       BEQ    LF39B   
       JMP    LF3C7   
LF39B: LDA    $B8     
       ADC    #$32    
       CMP    #$65    
       BCC    LF3AA   
       LDA    $82     
       BIT    LFFF7   
       BEQ    LF3B0   
LF3AA: LDA    #$FA    
       LDX    #$F3    
       BNE    LF3B4   
LF3B0: LDA    #$07    
       LDX    #$F4    
LF3B4: JSR    LF3EF   
       LDA    #$14    
       LDX    #$F4    
       LDY    #$0C    
       JSR    LF3E8   
       LDA    #$00    
       STA    $D2     
       JMP    LF421   
LF3C7: LDA    $AB     
       CMP    #$1D    
       BCC    LF39B   
       LDA    #$FA    
       LDX    #$F3    
       JSR    LF3EF   
       LDY    #$0D    
       LDA    $82     
       BIT    LFFF7   
       BNE    LF3DE   
       DEY            
LF3DE: LDA    #$14    
       LDX    #$F4    
       JSR    LF3E8   
       JMP    LF421   
LF3E8: STA    $C8     
       STX    $C9     
       STY    $D0     
       RTS            

LF3EF: STA    $C0     
       STX    $C1     
       RTS            

LF3F4: .byte $10,$91,$BF,$D4,$D4,$D4,$18,$18,$00,$1C,$1C,$18,$18,$18,$18,$18
       .byte $18,$1C,$FF,$18,$18,$00,$3E,$5A,$9A,$99,$38,$28,$44,$84,$C6,$FF
       .byte $4A,$4A,$4A,$44,$44,$00,$44,$44,$44,$44,$44,$00,$00
LF421: LDX    #$02    
LF423: CLC            
       LDA    $B5,X   
       ADC    $B9,X   
       CMP    #$98    
       BCC    LF430   
       LDA    #$00    
       STA    $B1,X   
LF430: STA    $B5,X   
       CLC            
       LDA    $AC,X   
       ADC    $BD,X   
       CMP    #$4D    
       BCS    LF43F   
       CMP    #$0D    
       BCS    LF443   
LF43F: LDA    #$00    
       STA    $B1,X   
LF443: STA    $AC,X   
       DEX            
       BNE    LF423   
       LDA    $A6     
       BIT    LFFF4   
       BNE    LF46B   
       LDA    $AB     
       CMP    #$1D    
       BCC    LF46B   
       LDA    $82     
       BIT    LFFF9   
       BEQ    LF45E   
       DEC    $AB     
LF45E: LDA    $B8     
       BEQ    LF46B   
       BPL    LF469   
       DEC    $B4     
       JMP    LF46B   
LF469: INC    $B4     
LF46B: LDX    #$06    
       LDA    $84     
       AND    #$60    
       BEQ    LF489   
       CMP    #$40    
       BEQ    LF49E   
       LDA    $A6     
       ORA    #$31    
       AND    #$FD    
       STA    $A6     
       INC    $B4     
       LDA    #$3F    
       STA    $AB     
       STA    CXCLR   
       BNE    LF49E   
LF489: LDA    $84     
       BIT    LFFF8   
       BNE    LF49E   
       LDA    $87     
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$03    
       CMP    #$08    
       BCS    LF49E   
       TAX            
LF49E: STX    $A2     
       LDA    $B4     
       CMP    #$93    
       BCS    LF4A9   
       JMP    LF4DC   
LF4A9: CMP    #$CD    
       BCC    LF4B4   
       LDA    #$05    
       STA    $B4     
       JMP    LF4DC   
LF4B4: LDA    $A6     
       ORA    #$03    
       BIT    LFFF4   
       BEQ    LF4BF   
       ORA    #$10    
LF4BF: STA    $A6     
       JSR    LF600   
       LDA    #$75    
       STA    $B5     
       LDA    #$30    
       STA    $AC     
       INC    $AA     
       LDA    #$05    
       STA    $B4     
       LDA    $AA     
       CMP    $A2     
       BCC    LF4DC   
       LDA    #$00    
       STA    $AA     
LF4DC: LDA    #$00    
       STA    $D3     
       STA    $D1     
       LDA    #$CF    
       STA    $D4     
       LDA    #$FC    
       STA    $D5     
       LDA    $AA     
       BEQ    LF4F1   
       JMP    LF709   
LF4F1: LDA    #$BD    
       STA    $D4     
       LDA    #$FC    
       STA    $D5     
       JSR    LF600   
       LDA    $A6     
       BIT    LFFF5   
       BEQ    LF506   
       JMP    LF543   
LF506: LDA    $A6     
       BIT    LFFF4   
       BEQ    LF510   
       JMP    LF823   
LF510: LDA    #$0F    
       EOR    $80     
       STA    $D6     
       JSR    LF5B3   
       JSR    LF5B3   
       LDA    #$3D    
       STA    $C2     
       LDA    #$F5    
       STA    $C3     
       LDA    $82     
       STA    $CA     
       LDA    #$F5    
       STA    $CB     
       LDA    #$03    
       STA    $D1     
       BIT    CXPPMM  
       BPL    LF53A   
       LDA    $A6     
       ORA    #$20    
       STA    $A6     
LF53A: JMP    LF540   
LF53D: .byte $3C,$FF,$7E
LF540: JMP    LF823   
LF543: LDA    #$0F    
       EOR    $80     
       STA    $D6     
       LDA    $A6     
       BIT    LFFF9   
       BNE    LF553   
       JMP    LF66F   
LF553: LDX    $B4     
       CPX    #$7A    
       BCC    LF568   
       AND    #$FE    
       STA    $A6     
       LDA    #$4D    
       STA    $AC     
       LDA    #$50    
       STA    $B5     
       JMP    LF66F   
LF568: LDA    $87     
       CMP    #$80    
       BCC    LF572   
       LDA    #$03    
       STA    $D3     
LF572: LDA    #$A9    
       STA    $C2     
       LDA    #$F5    
       STA    $C3     
       LDA    $82     
       STA    $CA     
       LDA    #$F5    
       STA    $CB     
       LDA    #$0A    
       STA    $D1     
       LDA    $AC     
       CMP    #$1D    
       BCC    LF59E   
       JSR    LF6FA   
       LDA    $87     
       CMP    #$50    
       BCC    LF598   
       JSR    LF5D0   
LF598: JSR    LF5D0   
       JMP    LF804   
LF59E: LDA    #$4D    
       STA    $AC     
       LDA    #$41    
       STA    $B5     
       JMP    LF804   
LF5A9: .byte $01,$02,$04,$04,$08,$18,$10,$20,$40,$80
LF5B3: LDA    $82     
       EOR    $B4     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       LDA    $AC     
       ADC    LF5F0,Y 
       CMP    #$25    
       BCS    LF5C8   
       LDA    #$25    
LF5C8: CMP    #$4D    
       BCC    LF5CE   
       LDA    #$4D    
LF5CE: STA    $AC     
LF5D0: LDA    $82     
       EOR    $B4     
       EOR    $81     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       LDA    $B5     
       ADC    LF5F0,Y 
       CMP    #$28    
       BCS    LF5E7   
       LDA    #$28    
LF5E7: CMP    #$70    
       BCC    LF5ED   
       LDA    #$70    
LF5ED: STA    $B5     
       RTS            

LF5F0: .byte $FF,$01,$00,$FF,$FF,$FF,$FF,$01,$01,$00,$01,$FF,$01,$FF,$FF,$01
LF600: LDA    #$00    
       STA    $AD     
       STA    $AE     
       RTS            

LF607: LDA    $84     
       AND    #$60    
       BEQ    LF60E   
       RTS            

LF60E: LDA    $B3     
       BEQ    LF61B   
       LDA    $AE     
       CMP    #$0D    
       BCC    LF61B   
       JMP    LF66E   
LF61B: LDA    #$CE    
       LDX    $87     
       CPX    #$50    
       BCC    LF625   
       LDA    #$F1    
LF625: STA    $B3     
       SEC            
       LDA    $AC     
       SBC    #$02    
       STA    $AE     
       CLC            
       LDA    $B5     
       ADC    #$04    
       STA    $B7     
       SEC            
       LDA    $AB     
       SBC    $AE     
       CLC            
       ADC    #$0A    
       CMP    #$15    
       BCS    LF659   
       LDA    #$00    
       STA    $BF     
       LDA    $B7     
       CMP    $B4     
       BCC    LF652   
       LDA    #$FE    
       STA    $BB     
       JMP    LF66E   
LF652: LDA    #$02    
       STA    $BB     
       JMP    LF66E   
LF659: LDA    #$00    
       STA    $BB     
       LDA    $AE     
       CMP    $AB     
       BCS    LF66A   
       LDA    #$01    
       STA    $BF     
       JMP    LF66E   
LF66A: LDA    #$FF    
       STA    $BF     
LF66E: RTS            

LF66F: JSR    LF600   
       LDA    $A6     
       BIT    LFFF8   
       BEQ    LF6B7   
       BIT    CXPPMM  
       BPL    LF692   
       LDA    #$80    
       JSR    LFF1B   
       LDA    $A6     
       AND    #$FD    
       STA    $A6     
       CLC            
       LDA    $D8     
       ADC    #$08    
       STA    $D8     
       JMP    LF823   
LF692: JSR    LF6FA   
       LDA    $D8     
       AND    #$18    
       TAX            
       CLC            
       ADC    #$BA    
       STA    $C2     
       LDA    #$00    
       STA    $D3     
       ADC    #$F6    
       STA    $C3     
       TXA            
       CLC            
       ADC    #$DA    
       STA    $CA     
       LDA    #$00    
       ADC    #$F6    
       STA    $CB     
       LDA    #$08    
       STA    $D1     
LF6B7: JMP    LF823   
LF6BA: .byte $00,$FF,$00,$E7,$FF,$FF,$00,$00,$3C,$42,$81,$42,$24,$18,$3C,$18
       .byte $00,$1E,$3D,$43,$FB,$FB,$FA,$FC,$FF,$7E,$3C,$3C,$18,$18,$18,$7E
       .byte $28,$28,$28,$28,$28,$28,$28,$28,$2A,$2A,$2A,$2A,$2A,$60,$60,$60
       .byte $2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$28,$28,$28,$2A,$2A,$2A,$26
LF6FA: LDA    $AC     
       CMP    #$1C    
       BEQ    LF708   
       BCC    LF706   
       DEC    $AC     
       BNE    LF708   
LF706: INC    $AC     
LF708: RTS            

LF709: LDA    $A6     
       AND    #$01    
       BNE    LF712   
       JMP    LF66F   
LF712: BIT    CXM0P   
       BPL    LF724   
       LDA    #$30    
       JSR    LFF1B   
       LDA    $A6     
       AND    #$FE    
       STA    $A6     
       JMP    LF66F   
LF724: LDA    $87     
       CMP    #$40    
       BCS    LF72E   
       LDA    #$03    
       STA    $D3     
LF72E: LDY    $AA     
       LDA    LF78D,Y 
       BIT    LFFF3   
       BNE    LF73E   
       JSR    LF5B3   
       JMP    LF756   
LF73E: JSR    LF5D0   
       LDA    $AC     
       CMP    #$1C    
       BNE    LF753   
       LDA    $82     
       EOR    $B4     
       AND    #$7F    
       BNE    LF753   
       LDA    #$4E    
       STA    $AC     
LF753: JSR    LF6FA   
LF756: LDA    $82     
       LDY    $AA     
       BIT    LFFF6   
       BNE    LF766   
       LDA    $A6     
       AND    #$BF    
       JMP    LF76A   
LF766: LDA    $A6     
       ORA    #$40    
LF76A: STA    $A6     
       LDA    LF793,Y 
       STA    $C2     
       LDA    LF799,Y 
       STA    $C3     
       LDA    LF79F,Y 
       STA    $CA     
       LDA    LF7A5,Y 
       STA    $CB     
       LDA    LF78D,Y 
       AND    #$3F    
       STA    $D1     
       JSR    LF607   
       JMP    LF804   
LF78D: .byte $FD,$4C,$08,$0E,$44,$07
LF793: .byte $3D,$AB,$C3,$D3,$EF,$F6
LF799: .byte $F5,$F7,$F7,$F7,$F7,$F7
LF79F: .byte $DC,$B7,$CB,$E1,$F3,$FD
LF7A5: .byte $F4,$F7,$F7,$F7,$F7,$F7,$18,$18,$00,$3C,$5A,$5A,$19,$3C,$24,$24
       .byte $26,$60,$4A,$4A,$4A,$90,$34,$90,$34,$90,$90,$90,$90,$90,$09,$DB
       .byte $BC,$3C,$5A,$7E,$24,$18,$2A,$2A,$90,$90,$90,$40,$90,$90,$81,$7E
       .byte $DB,$E7,$66,$18,$BD,$7E,$3D,$FF,$BC,$98,$19,$0F,$40,$40,$40,$40
       .byte $40,$0F,$0F,$0F,$0F,$0F,$90,$90,$90,$90,$24,$BC,$DA,$81,$EA,$00
       .byte $00,$3C,$66,$D3,$E7,$BD,$42,$3C,$2C,$2C,$2C,$2C,$2C,$2C,$2C
LF804: LDA    $84     
       BIT    LFFF7   
       BEQ    LF80E   
       JSR    LF5D0   
LF80E: BIT    CXM1P   
       BMI    LF816   
       BIT    CXPPMM  
       BPL    LF823   
LF816: JSR    LF600   
       LDA    $B0     
       BMI    LF823   
       BEQ    LF823   
       LDA    #$80    
       STA    $B0     
LF823: STA    CXCLR   
       LDA    #$92    
       STA    $87     
       LDA    $84     
       TAX            
       AND    #$60    
       CMP    #$60    
       BNE    LF835   
       JMP    LF8DA   
LF835: TXA            
       BIT    LFFF8   
       BNE    LF8B3   
       BIT    LFFF9   
       BEQ    LF84E   
       BIT    LFFF4   
       BEQ    LF84B   
       BIT    $82     
       BPL    LF84E   
       BMI    LF85A   
LF84B: TXA            
       BMI    LF85A   
LF84E: LDA    #$14    
       STA    $9F     
       LDA    $8B     
       LDX    $8D     
       LDY    #$1C    
       BNE    LF864   
LF85A: LDA    #$64    
       STA    $9F     
       LDY    #$6C    
       LDA    $8C     
       LDX    $8E     
LF864: STY    $A0     
       STA    $A2     
       STX    $A3     
       LDA    #$00    
       LDX    #$03    
LF86E: STA    $8E,X   
       STA    $96,X   
       DEX            
       BNE    LF86E   
       LDY    #$04    
LF877: LDA    $A2     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LF8C8   
       AND    #$F0    
       STA    $8A     
       LDA    $A2     
       AND    #$0F    
       JSR    LF8C8   
       AND    #$0F    
       ORA    $8A     
       STA.wy $0092,Y 
       LDA    $A3     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LF8C8   
       AND    #$F0    
       STA    $8A     
       LDA    $A3     
       AND    #$0F    
       JSR    LF8C8   
       AND    #$0F    
       ORA    $8A     
       STA.wy $009A,Y 
       DEY            
       BPL    LF877   
       JMP    LF9E5   
LF8B3: LDA    #$14    
       STA    $9F     
       LDX    #$07    
       LDY    #$00    
LF8BB: LDA    LF97D,X 
       STA    $8F,X   
       STY    $97,X   
       DEX            
       BPL    LF8BB   
       JMP    LF9E5   
LF8C8: TAX            
       CLC            
       LDA    #$25    
       ADC    LF915,X 
       STA    $A4     
       LDA    #$F9    
       ADC    #$00    
       STA    $A5     
       LDA    ($A4),Y 
       RTS            

LF8DA: LDA    #$34    
       STA    $9F     
       LDA    #$43    
       STA    $A0     
       LDA    $84     
       BIT    LFFF8   
       BNE    LF8F4   
       BIT    LFFF7   
       BNE    LF8FA   
       LDA    #$85    
       LDX    #$F9    
       BNE    LF8FE   
LF8F4: LDA    #$7D    
       LDX    #$F9    
       BNE    LF8FE   
LF8FA: LDA    #$75    
       LDX    #$F9    
LF8FE: STA    $A2     
       STX    $A3     
       LDY    #$07    
LF904: LDA    LF9D5,Y 
       STA.wy $008F,Y 
       LDA    ($A2),Y 
       STA.wy $0097,Y 
       DEY            
       BPL    LF904   
       JMP    LF9E5   
LF915: .byte $00,$05,$0A,$0F,$14,$19,$1E,$23,$28,$2D,$32,$37,$3C,$41,$46,$4B
       .byte $77,$55,$55,$55,$77,$22,$66,$22,$22,$77,$77,$11,$77,$44,$77,$77
       .byte $11,$33,$11,$77,$55,$55,$77,$11,$11,$77,$44,$77,$11,$77,$66,$44
       .byte $77,$55,$77,$77,$11,$22,$22,$22,$77,$55,$22,$55,$77,$77,$55,$77
       .byte $11,$11,$22,$55,$77,$55,$55,$66,$55,$66,$55,$77,$33,$44,$44,$44
       .byte $77,$66,$55,$55,$55,$66,$77,$44,$66,$44,$77,$77,$44,$66,$44,$44
       .byte $08,$1C,$3E,$7F,$3E,$1C,$08,$00
LF97D: .byte $3C,$7E,$DB,$FF,$BD,$C3,$7E,$3C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LF9D5: .byte $10,$00,$7C,$BA,$38,$28,$28,$6C,$00,$08,$08,$08,$5C,$7F,$7F,$36
LF9E5: LDA    $85     
       BEQ    LF9FA   
       DEC    $85     
       STA    AUDF0   
       STA    $80     
       LDX    #$05    
       STX    AUDV0   
       DEX            
       STX    AUDC0   
       LDA    #$00    
       STA    AUDV1   
LF9FA: LDA    $87     
       EOR    $80     
       STA    COLUBK  
       TAY            
       LDX    #$0F    
       AND    #$0F    
       CMP    #$0B    
       BCC    LFA0B   
       LDX    #$00    
LFA0B: STX    $A2     
       TYA            
       AND    #$F0    
       ORA    $A2     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$D2    
       STA    $8A     
       LDX    #$00    
       LDY    $9F     
       JSR    LFD37   
       LDX    #$01    
       LDY    $A0     
       JSR    LFD37   
       LDA    #$00    
LFA2A: BIT    $0285   
       BPL    LFA2A   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       LDX    #$00    
       STX    NUSIZ1  
       LDA    $84     
       AND    #$61    
       CMP    #$61    
       BNE    LFA49   
       LDX    #$02    
LFA49: STX    NUSIZ0  
       LDY    #$00    
LFA4D: LDA.wy $0097,Y 
       TAX            
       LDA.wy $008F,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    GRP1    
       DEC    $8A     
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       INY            
       CPY    #$08    
       BCC    LFA4D   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       DEC    $8A     
       LDY    $88     
       LDA    $84     
       BIT    LFFF2   
       BEQ    LFA80   
       LDY    $89     
LFA80: AND    #$60    
       CMP    #$60    
       BEQ    LFABC   
       CMP    #$20    
       BEQ    LFABC   
       CMP    #$40    
       BEQ    LFAB5   
       LDA    $84     
       BIT    LFFF8   
       BNE    LFABC   
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       CPY    #$02    
       BCC    LFABC   
       LDX    #$00    
       CPY    #$03    
       BCC    LFAAC   
       INX            
       CPY    #$04    
       BCC    LFAAC   
       LDX    #$03    
LFAAC: STX    NUSIZ0  
       LDA    #$D5    
       LDX    #$F9    
       JMP    LFAC0   
LFAB5: LDA    #$DD    
       LDX    #$F9    
       JMP    LFAC0   
LFABC: LDA    #$85    
       LDX    #$F9    
LFAC0: STA    $A2     
       STX    $A3     
       LDY    #$00    
LFAC6: LDA    ($A2),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       DEC    $8A     
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       INY            
       CPY    #$08    
       BCC    LFAC6   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       DEC    $8A     
       LDY    $B4     
       LDX    #$00    
       JSR    LFD37   
       LDY    $B5     
       LDX    #$01    
       JSR    LFD37   
       LDY    $B6     
       LDX    #$02    
       STX    $D7     
       JSR    LFD37   
       LDY    $B7     
       LDX    #$03    
       JSR    LFD37   
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       LDA    $D6     
       STA    COLUPF  
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$D0    
       EOR    $80     
       STA    $A4     
       LDY    $D7     
       LDA    ($D4),Y 
       INC    $D7     
       STA    PF2     
       LDX    #$02    
LFB21: LDA    $A6     
       LDY    #$00    
       AND    LF318,X 
       BNE    LFB2C   
       LDY    #$08    
LFB2C: STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       STY    CTRLPF,X
       LDY    $D7     
       LDA    ($D4),Y 
       INC    $D7     
       STA    PF2     
       LDA    $D1,X   
       BNE    LFB46   
       LDY    $B9,X   
       BEQ    LFB46   
       ORA    #$70    
LFB46: STA    RSYNC,X 
       DEX            
       BNE    LFB21   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $D7     
       LDA    ($D4),Y 
       INC    $D7     
       STA    PF2     
       SEC            
       LDA    $8A     
       BIT    LFFF9   
       BEQ    LFB63   
       STA    WSYNC   
       STA    HMOVE   
LFB63: LSR            
       TAX            
       LDY    $D7     
       LDA    ($D4),Y 
       INC    $D7     
       STA    PF2     
       LDA    $80     
       ORA    #$07    
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       TXA            
       TAY            
       JMP    LFC00   
LFB7C: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF
LFC00: STY    $8A     
       LDX    #$1E    
       TXS            
       LDX    #$00    
       SEC            
       LDA    $AC     
       SBC    $8A     
       BMI    LFC18   
       CMP    $D1     
       BCS    LFC18   
       TAY            
       LDA    ($C2),Y 
       TAX            
       LDA    ($CA),Y 
LFC18: LDY    $8A     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP1  
       STX    GRP1    
       CPY    $AE     
       PHP            
       LDY    $D7     
       LDA    ($D4),Y 
       INC    $D7     
       STA    PF2     
       LDX    #$00    
       SEC            
       LDA    $AB     
       SBC    $8A     
       BMI    LFC40   
       CMP    $D0     
       BCS    LFC40   
       TAY            
       LDA    ($C0),Y 
       TAX            
       LDA    ($C8),Y 
LFC40: LDY    $8A     
       CPY    $AD     
       PHP            
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       STX    GRP0    
       DEY            
       CPY    #$12    
       BCS    LFC56   
       LDA    $A4     
       STA    COLUBK  
LFC56: CPY    #$0D    
       BCS    LFC00   
       LDX    #$FF    
       TXS            
       LDY    $8A     
       LDA    #$00    
LFC61: STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUPF  
       STA    COLUBK  
       STA    CTRLPF  
       STA    REFP0   
       STA    REFP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    VDELP0  
       STA    VDELP1  
       STA    VDELBL  
       STA    RESMP0  
       STA    RESMP1  
       DEY            
       BEQ    LFC9B   
       DEY            
       BNE    LFC61   
LFC9B: JMP    LF053   
LFC9E: JSR    LFCAA   
       LDA    #$00    
       STA    $AA     
       LDA    #$8F    
       STA    $A6     
       RTS            

LFCAA: LDA    #$1C    
       STA    $AB     
       LDA    #$01    
       STA    $B0     
       LDA    #$00    
       STA    $B8     
       STA    $BC     
       LDA    #$0A    
       STA    $B4     
       RTS            

LFCBD: .byte $00,$00,$60,$F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF,$FE,$FE,$FC,$FC,$F8
       .byte $F8,$E0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFD37: STA    WSYNC   
       STA    HMOVE   
       CPY    #$99    
       BCC    LFD41   
       LDY    #$4C    
LFD41: LDA    LFE2E,Y 
       STA    HMP0,X  
       LDA    LFD95,Y 
       AND    #$0F    
       STA    $A5     
       LDA    LFD95,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAY            
       LDA    LFD85,Y 
       STA    $A2     
       LDA    LFD8D,Y 
       STA    $A3     
       LDY    $A5     
       STA    WSYNC   
       STA    HMOVE   
       JMP.ind ($00A2)
LFD6A: .byte $EA,$4C,$76,$FD,$4C,$73,$FD,$EA,$EA,$88,$D0,$FD,$95,$10,$85,$02
       .byte $85,$2A,$C6,$8A,$C6,$8A,$A9,$00,$95,$20,$60
LFD85: .byte $6A,$6B,$6E,$71,$72,$73,$76,$76
LFD8D: .byte $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
LFD95: .byte $01,$21,$61,$32,$01,$32,$32,$32,$53,$53,$53,$53,$53,$53,$43,$43
       .byte $43,$23,$23,$23,$33,$33,$33,$54,$54,$54,$54,$54,$54,$44,$44,$44
       .byte $24,$24,$24,$34,$34,$34,$55,$55,$55,$55,$55,$55,$45,$45,$45,$25
       .byte $25,$25,$35,$35,$35,$56,$56,$56,$56,$56,$46,$46,$46,$46,$26,$26
       .byte $26,$36,$36,$36,$57,$57,$57,$57,$57,$57,$47,$47,$47,$27,$27,$27
       .byte $37,$37,$37,$58,$58,$58,$58,$58,$58,$48,$48,$48,$28,$28,$28,$38
       .byte $38,$38,$59,$59,$59,$59,$59,$59,$49,$49,$49,$29,$29,$29,$39,$39
       .byte $39,$5A,$5A,$5A,$5A,$5A,$5A,$4A,$4A,$4A,$2A,$2A,$2A,$3A,$3A,$3A
       .byte $5B,$5B,$5B,$5B,$5B,$5B,$4B,$4B,$4B,$2B,$2B,$2B,$3B,$3B,$3B,$3B
       .byte $3B,$3B,$3B,$5C,$4C,$4C,$4C,$4C,$4C
LFE2E: .byte $20,$20,$F0,$10,$F0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0
       .byte $D0,$F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0
       .byte $F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0
       .byte $E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$00,$F0,$E0,$D0,$F0,$E0
       .byte $D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0
       .byte $F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0,$F0
       .byte $E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0
       .byte $D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0
       .byte $F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0
       .byte $B0,$A0,$90,$B0,$00,$F0,$E0,$D0,$C0
LFEC7: LDX    #$04    
       STX    $88     
       LDX    #$00    
       LDA    $84     
       BIT    LFFF9   
       BEQ    LFED6   
       LDX    #$04    
LFED6: STX    $89     
       RTS            

LFED9: LDA    $84     
       AND    #$60    
       BNE    LFF1A   
       LDA    $84     
       BIT    LFFF8   
       BNE    LFF02   
       BIT    LFFF2   
       BNE    LFEF0   
       DEC    $88     
       JMP    LFEF2   
LFEF0: DEC    $89     
LFEF2: CLC            
       LDA    $88     
       TAX            
       ADC    $89     
       BEQ    LFF0B   
       LDA    $84     
       AND    #$1F    
       CPX    $89     
       BCC    LFF06   
LFF02: ORA    #$40    
       BNE    LFF08   
LFF06: ORA    #$C0    
LFF08: STA    $84     
       RTS            

LFF0B: LDA    $84     
       AND    #$07    
       ORA    #$20    
       STA    $84     
       LDA    #$FF    
       STA    $85     
       JSR    LFEC7   
LFF1A: RTS            

LFF1B: LDX    #$00    
       BIT    $84     
       BPL    LFF22   
       INX            
LFF22: TAY            
       AND    #$F0    
       SED            
       CLC            
       ADC    $8D,X   
       STA    $8D,X   
       TYA            
       AND    #$0F    
       ADC    $8B,X   
       BCC    LFF36   
       LDA    #$99    
       STA    $8D,X   
LFF36: STA    $8B,X   
       CLD            
       RTS            

LFF3A: LDA    #$00    
       LDX    #$04    
LFF3E: STA    $8A,X   
       DEX            
       BPL    LFF3E   
       RTS            

LFF44: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFFF2: .byte $80
LFFF3: .byte $40
LFFF4: .byte $20
LFFF5: .byte $10
LFFF6: .byte $08
LFFF7: .byte $04
LFFF8: .byte $02
LFFF9: .byte $01,$02,$F0,$02,$F0,$02,$F0
