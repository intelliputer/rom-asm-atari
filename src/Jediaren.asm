; Disassembly of roms/Jediaren.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Jediaren.bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP1FB  =  $33
INPT0   =  $38
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296
LFD00   =   $FD00
LFD02   =   $FD02

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       STX    SWACNT  
       STX    SWBCNT  
       JSR    LFCB9   
       JSR    LFC70   
       LDA    SWCHB   
       STA    $97     
       LSR            
       BCS    LF021   
       INC    $E5     
LF021: LDA    #$62    
       STA    $A1     
       JMP    LF4C8   
LF028: LDY    #$03    
       STY    $EA     
LF02C: STA    WSYNC   
       LDY    $EA     
       LDA    LFFF4,Y 
       TAX            
       LDA    LFFF8,Y 
       STA    HMP0,X  
       AND    #$0F    
       TAY            
LF03C: DEY            
       BPL    LF03C   
       STA    RESP0,X 
       DEC    $EA     
       BPL    LF02C   
       LDY    #$06    
       LDA    #$FF    
       LDX    #$99    
LF04B: STA.wy $00F9,Y 
       STX    $F8,Y   
       DEY            
       DEY            
       BPL    LF04B   
       LDA    $95     
       STA    WSYNC   
       STA    HMOVE   
       BNE    LF07D   
       LDY    $94     
       INY            
       TYA            
       ASL            
       ASL            
       ASL            
       STA    $F8     
       LDY    #$A3    
       LDA    $94     
       LSR            
       BCC    LF06E   
       LDY    #$AB    
LF06E: STY    $FA     
       TAY            
       LDA    LFE84,Y 
       STA    $FC     
       LDA    LFE88,Y 
       STA    $FE     
       BNE    LF08B   
LF07D: LDA    $89     
       ASL            
       ASL            
       ASL            
       STA    $FA     
       LDA    $8A     
       ASL            
       ASL            
       ASL            
       STA    $FC     
LF08B: STA    WSYNC   
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
LF095: STA    WSYNC   
       LDA    $83     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($F8),Y 
       STA    GRP0    
       LDA    ($FA),Y 
       STA    GRP1    
       NOP            
       NOP            
       LDX    $84     
       LDA    ($FE),Y 
       STA    $EA     
       LDA    ($FC),Y 
       STX    COLUP0  
       STX    COLUP1  
       STA    GRP0    
       LDA    $EA     
       STA    GRP1    
       DEY            
       BPL    LF095   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$C0    
       STA    PF0     
       STY    PF1     
       STY    PF2     
       INY            
       STY    $FC     
       STY    $FD     
       STY    $FE     
       STY    $FF     
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$20    
       STA    NUSIZ0  
       DEY            
       STY    REFP1   
       INY            
       STY    NUSIZ1  
       LDA    #$D0    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       LDA    #$0A    
       STA    $FB     
       LDA    #$0F    
       NOP            
       NOP            
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    PF2     
       LDA    #$FE    
       STA    $F9     
       LDX    $BC     
       LDA    LFEA8,X 
       STA    $F8     
LF107: STA    WSYNC   
       LDA    LFEAB,Y 
       STA    GRP0    
       STA    GRP1    
       LDA    ($F8),Y 
       STA    COLUP0  
       STA    COLUP1  
       NOP            
       NOP            
       NOP            
       LDX    LFECD,Y 
       LDA    VSYNC,X 
       LDX    $87     
       STX    COLUBK  
       INY            
       CPY    #$11    
       STA    COLUBK  
       STX    COLUBK  
       LDA    $82     
       STA    COLUBK  
       BCC    LF107   
       LDX    #$00    
       STA    HMCLR   
       LDA    #$A0    
       STA    HMP0    
       STX    REFP1   
       LDY    #$07    
LF13B: DEY            
       BPL    LF13B   
       STA    RESP0   
       LDA    $D0     
       STA    HMP1    
       AND    #$0F    
       STA    WSYNC   
       TAY            
       LDA    #$02    
       STA    ENAM0   
       STA    ENABL   
       STX    GRP0    
       STX    GRP1    
LF153: DEY            
       BPL    LF153   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8B     
       STA    COLUP0  
       LDA    $8D     
       STA    COLUP1  
       LDA    $82     
       STA    COLUBK  
       LDA    $CA     
       STA    GRP1    
       STA    CXCLR   
       NOP            
       NOP            
       NOP            
       LDY    #$03    
LF173: DEY            
       BPL    LF173   
       LDA    #$27    
       STA    NUSIZ0  
       INY            
       STY    PF2     
       STA    HMCLR   
       BEQ    LF193   
LF181: LDA    $9C     
       ADC    $FC     
       STA    $FC     
       BCS    LF18D   
       LDA    #$00    
       BEQ    LF18F   
LF18D: LDA    $9E     
LF18F: STA    HMM0    
       STA    HMBL    
LF193: STA    WSYNC   
       STA    HMOVE   
       LDA    $D1,X   
       STA    GRP0    
       INX            
       CPX    $C2     
       BNE    LF1A4   
       LDA    #$18    
       STA    GRP1    
LF1A4: CPX    #$0A    
       BEQ    LF1CB   
       LDA    $C6     
       ADC    $FE     
       STA    $FE     
       LDA    #$00    
       BCC    LF1B4   
       LDA    $C8     
LF1B4: STA    HMP1    
       JMP    LF181   
LF1B9: LDA    $9C     
       ADC    $FC     
       STA    $FC     
       BCS    LF1C5   
       LDA    #$00    
       BEQ    LF1C7   
LF1C5: LDA    $9E     
LF1C7: STA    HMM0    
       STA    HMBL    
LF1CB: STA    WSYNC   
       STA    HMOVE   
       LDA    LFE00,X 
       STA    PF1     
       INX            
       CPX    $C2     
       BNE    LF1DD   
       LDA    #$18    
       STA    GRP1    
LF1DD: CPX    $A0     
       BEQ    LF231   
       LDA    $C6     
       ADC    $FE     
       STA    $FE     
       LDA    LFD0F,X 
       BCC    LF1EE   
       ADC    $C8     
LF1EE: STA    HMP1    
       INX            
       LDA    $9C     
       ADC    $FC     
       STA    $FC     
       BCS    LF1FD   
       LDA    #$00    
       BEQ    LF1FF   
LF1FD: LDA    $9E     
LF1FF: STA    HMM0    
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       LDY    $BA     
       LDA.wy $0038,Y 
       BMI    LF210   
       STX    $FB     
LF210: CPX    $A0     
       BEQ    LF231   
       CPX    $C2     
       BNE    LF21F   
       LDA    #$18    
       STA    GRP1    
       JMP    LF1B9   
LF21F: LDA    $C6     
       ADC    $FE     
       STA    $FE     
       LDA    LFD0F,X 
       BCC    LF22C   
       ADC    $C8     
LF22C: STA    HMP1    
       JMP    LF1B9   
LF231: LDA    #$00    
       STA    ENAM0   
       STA    ENABL   
       LDA    $C6     
       ADC    $FE     
       STA    $FE     
       LDA    LFD0F,X 
       BCC    LF244   
       ADC    $C8     
LF244: STA    HMP1    
LF246: STA    WSYNC   
       STA    HMOVE   
       LDA    LFE00,X 
       CPX    #$30    
       BCS    LF256   
       STA    PF1     
       JMP    LF25A   
LF256: EOR    $BF     
       STA    COLUPF  
LF25A: LDY    $BA     
       LDA.wy $0038,Y 
       BMI    LF263   
       STX    $FB     
LF263: INX            
       CPX    $A8     
       BEQ    LF282   
       CPX    $C2     
       BNE    LF270   
       LDA    #$18    
       STA    GRP1    
LF270: LDA    $C6     
       ADC    $FE     
       STA    $FE     
       LDA    LFD0F,X 
       BCC    LF27D   
       ADC    $C8     
LF27D: STA    HMP1    
       JMP    LF246   
LF282: LDA    LFE00,X 
       EOR    $BF     
       INX            
       STA    WSYNC   
       STA    COLUPF  
       LDA    $AE     
       STA    HMCLR   
       STA    HMP1    
       AND    #$0F    
       TAY            
LF295: DEY            
       BPL    LF295   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    $EC     
       LDA    ($AF),Y 
       STA    GRP1    
       LDA    LFFDE,Y 
       STA    COLUP1  
       LDA    LFE00,X 
       EOR    $BF     
       STA    COLUPF  
       INX            
       INC    $EC     
       LDY    $BA     
       LDA.wy $0038,Y 
       BMI    LF2BD   
       STX    $FB     
LF2BD: LDA    CXP1FB  
       STA    $F0     
       LDA    CXM0P   
       STA    $EE     
       STA    CXCLR   
       LDY    $EC     
       STA    WSYNC   
       LDA    ($AF),Y 
       STA    GRP1    
       LDA    LFFDE,Y 
       STA    COLUP1  
       LDA    $A4     
       STA    HMBL    
       AND    #$0F    
       TAY            
       INX            
LF2DC: DEY            
       BPL    LF2DC   
       LDA    LFE00,X 
       STA    RESBL   
       EOR    $BF     
       INC    $EC     
       LDY    $EC     
       STA    WSYNC   
       STY    HMP1    
       STA    COLUPF  
       LDA    ($AF),Y 
       STA    GRP1    
       LDA    LFFDE,Y 
       STA    COLUP1  
       LDA    $A5     
       STA    HMM0    
       AND    #$0F    
       TAY            
LF300: DEY            
       BPL    LF300   
       STA    RESM0   
       INX            
       INC    $EC     
       STA    WSYNC   
       STA    HMOVE   
       LDY    $EC     
       BNE    LF312   
LF310: STA    WSYNC   
LF312: LDA    ($AF),Y 
       STA    GRP1    
       LDA    LFFDE,Y 
       STA    COLUP1  
       LDY    $BA     
       LDA.wy $0038,Y 
       BMI    LF324   
       STX    $FB     
LF324: LDA    LFE00,X 
       EOR    $BF     
       STA    COLUPF  
       INX            
       INC    $EC     
       LDY    $EC     
       CPY    #$0B    
       BNE    LF310   
       STA    HMCLR   
       LDA    $8C     
       STA    COLUP0  
       LDA    $8E     
       LDY    $CB     
       STA    COLUP1  
       STY    GRP1    
LF342: STA    WSYNC   
       STA    HMOVE   
       CPX    #$5C    
       BCC    LF359   
       BEQ    LF354   
       LDA    LFE00,X 
       STA    PF1     
       JMP    LF360   
LF354: LDA    $81     
       JMP    LF35E   
LF359: LDA    LFE00,X 
       EOR    $BF     
LF35E: STA    COLUPF  
LF360: LDY    $BA     
       LDA.wy $0038,Y 
       BMI    LF369   
       STX    $FB     
LF369: INX            
       CPX    $A1     
       BEQ    LF388   
       CPX    $C3     
       BNE    LF376   
       LDA    #$00    
       STA    GRP1    
LF376: LDA    $C7     
       ADC    $FF     
       STA    $FF     
       LDA    LFD0F,X 
       BCC    LF383   
       ADC    $C9     
LF383: STA    HMP1    
       JMP    LF342   
LF388: LDA    $C7     
       ADC    $FF     
       STA    $FF     
       LDA    LFD0F,X 
       BCC    LF395   
       ADC    $C9     
LF395: STA    HMP1    
       LDA    #$02    
       STA    ENAM0   
       STA    ENABL   
       JMP.ind ($00F6)
LF3A0: .byte $A9,$00,$85,$1C,$A5,$9D,$65,$FD,$85,$FD,$B0,$04,$A9,$00,$F0,$02
       .byte $A5,$9F,$85,$22,$85,$24,$85,$02,$85,$2A,$BD,$00,$FE,$85,$0E,$E8
       .byte $E4,$C3,$D0,$04,$A9,$00,$85,$1C,$A5,$C7,$65,$FF,$85,$FF,$BD,$0F
       .byte $FD,$90,$02,$65,$C9,$85,$21,$A5,$9D,$65,$FD,$85,$FD,$B0,$04,$A9
       .byte $00,$F0,$02,$A5,$9F,$85,$22,$85,$24,$85,$02,$85,$2A,$A4,$BA,$B9
       .byte $38,$00,$30,$02,$86,$FB,$E8,$E4,$C3,$F0,$A5,$E0,$82,$F0,$12,$A5
       .byte $C7,$65,$FF,$85,$FF,$BD,$0F,$FD,$90,$02,$65,$C9,$85,$21,$4C,$A4
       .byte $F3,$A0,$09,$A9,$FF,$85,$0E,$A5,$9D,$65,$FD,$85,$FD,$B0,$04,$A9
       .byte $00,$F0,$02,$A5,$9F,$85,$22,$85,$24,$85,$02,$85,$2A,$B9,$DB,$00
       .byte $85,$1B,$88,$30,$1A,$E8,$E4,$C3,$D0,$04,$A9,$00,$85,$1C,$A5,$C7
       .byte $65,$FF,$85,$FF,$A9,$00,$90,$02,$A5,$C9,$85,$21,$4C,$17,$F4,$85
       .byte $02,$A9,$0F,$85,$0F,$A9,$00,$85,$1B,$85,$02,$85,$2B,$A9,$60,$85
       .byte $20,$A9,$70,$85,$21,$A0,$05,$88,$10,$FD,$85,$10,$85,$11,$85,$02
       .byte $85,$2A,$84,$0C,$C8,$84,$1D,$84,$04,$A0,$10,$A6,$BC,$BD,$A9,$FE
       .byte $85,$F8,$85,$02,$B9,$AB,$FE,$85,$1B,$85,$1C,$B1,$F8,$85,$06,$85
       .byte $07,$A9,$00,$85,$1F,$85,$1F,$BE,$EF,$FE,$B5,$00,$A6,$88,$86,$09
       .byte $88,$85,$09,$86,$09,$A5,$82,$85,$09,$C0,$FF,$D0,$D5,$C8,$85,$02
       .byte $84,$1B,$84,$1C,$88,$85,$02,$84,$0F,$85,$02,$85,$02,$C8,$84,$0D
       .byte $84,$0E,$84,$0F,$84,$0B,$84,$0C
LF4C8: LDA    #$9E    
       STA    TIM64T  
       INC    $92     
       BNE    LF4D3   
       INC    $93     
LF4D3: LDA    $92     
       AND    #$01    
       STA    $BA     
       EOR    #$01    
       STA    $BB     
       EOR    $BC     
       STA    $BE     
       EOR    #$01    
       STA    $BD     
       LDA    CXP1FB  
       STA    $F1     
       LDA    CXM0P   
       STA    $EF     
       LDX    $BB     
       LDY    $C0,X   
       CPY    #$02    
       BEQ    LF4F8   
       JMP    LF5EB   
LF4F8: LDA    $EE,X   
       BPL    LF503   
       LDY    #$03    
       LDA    #$28    
       JMP    LF5DF   
LF503: LDA    $C2,X   
       BPL    LF50C   
       LDA    #$8C    
       SEC            
       SBC    $C2,X   
LF50C: STA    $F2     
       LDA    $C6,X   
       STA    $F4     
       LDA    $C8,X   
       EOR    LFE05,X 
       STA    $F6     
       LDY    #$00    
       STY    $F5     
       STY    $FA     
       DEY            
       STY    $F7     
       LDA    LFE82,X 
       STA    $F9     
       LDA    $CE,X   
       CPX    #$00    
       BEQ    LF543   
       LDA    $A8     
       ADC    #$0B    
       TAY            
       LDA    LFD0F,Y 
       AND    #$0F    
       CMP    #$04    
       BCC    LF53D   
       SBC    #$08    
LF53D: CLC            
       ADC    $CF     
       SEC            
       SBC    #$01    
LF543: STA    $F3     
LF545: LDY    $F2     
       BMI    LF57D   
       CPY    #$09    
       BCS    LF593   
       LDA    $F3     
       SBC    #$3B    
       STA    $EA     
       CMP    #$20    
       BCS    LF565   
       LSR            
       LSR            
       TAX            
       LDA    ($F9),Y 
       AND    LFDF1,X 
       BEQ    LF565   
       STY    $F7     
       STX    $F8     
LF565: DEC    $EA     
       LDA    $EA     
       BMI    LF57D   
       CMP    #$20    
       BCS    LF57D   
       LSR            
       LSR            
       TAX            
       LDA    ($F9),Y 
       AND    LFDF1,X 
       BEQ    LF57D   
       STY    $F7     
       STX    $F8     
LF57D: INC    $F2     
       LDA    $F4     
       ADC    $F5     
       STA    $F5     
       BCC    LF545   
       LDA    $F6     
       BMI    LF58F   
       INC    $F3     
       BNE    LF545   
LF58F: DEC    $F3     
       BNE    LF545   
LF593: LDY    $F7     
       BMI    LF5AA   
       LDX    $F8     
       LDA    LFDF1,X 
       EOR    #$FF    
       AND    ($F9),Y 
       STA    ($F9),Y 
       LDX    $BB     
       LDY    #$04    
       LDA    #$0F    
       BNE    LF5DF   
LF5AA: LDX    $BB     
       LDA    $F0,X   
       BPL    LF5C0   
       LDA    $96     
       BNE    LF5BA   
       LDA    $80,X   
       ADC    #$04    
       STA    $80,X   
LF5BA: LDY    #$05    
       LDA    #$01    
       BNE    LF5DF   
LF5C0: LDX    $BB     
       LDA    $C2,X   
       BEQ    LF5CA   
       CMP    #$8D    
       BNE    LF5EB   
LF5CA: LDA    #$06    
       STA    $C0,X   
       LDA    #$3C    
       STA    $CC,X   
       LDY    #$03    
       JSR    LFCEF   
       LDX    $BA     
       STA    $C0,X   
       INC    $89,X   
       BNE    LF5EB   
LF5DF: LDX    $BB     
       STY    $C0,X   
       LDY    $B4     
       BEQ    LF5E9   
       LSR            
       LSR            
LF5E9: STA    $CC,X   
LF5EB: LDA    SWCHB   
       STA    $F1     
       EOR    $97     
       STA    $F2     
       LDA    $F1     
       STA    $97     
       AND    #$02    
       BNE    LF613   
       LDA    $F2     
       AND    #$02    
       BNE    LF608   
       LDA    $92     
       CMP    #$1E    
       BNE    LF613   
LF608: INC    $94     
       LDA    $94     
       AND    #$07    
       STA    $94     
       JSR    LFCB9   
LF613: LSR    $F2     
       BCC    LF625   
       LSR    $F1     
       BCC    LF620   
       JSR    LFCA5   
       BEQ    LF625   
LF620: LDY    #$01    
       JSR    LFCBB   
LF625: LDY    $95     
       DEY            
       DEY            
       BEQ    LF6A1   
       DEY            
       BNE    LF665   
       STY    $B3     
       LDA    $92     
       BPL    LF6A1   
       LDA    $89     
       CMP    #$03    
       BEQ    LF640   
       LDA    $8A     
       CMP    #$03    
       BNE    LF64A   
LF640: JSR    LFC70   
       LDY    #$04    
       JSR    LFCEF   
       BEQ    LF6A1   
LF64A: LDA    $BC     
       EOR    #$01    
       STA    $BC     
       LDY    #$04    
LF652: LDA.wy $0085,Y 
       LDX    $86,Y   
       STX    $85,Y   
       STA.wy $0086,Y 
       DEY            
       DEY            
       BPL    LF652   
       JSR    LFCA5   
       BEQ    LF6A1   
LF665: LDY    $96     
       BNE    LF66F   
       LDA    $93     
       BPL    LF694   
       STA    $96     
LF66F: LDA    $92     
       BNE    LF694   
       LDA    $93     
       AND    #$0F    
       CMP    #$09    
       BCC    LF67D   
       SBC    #$08    
LF67D: TAX            
       CPX    #$02    
       BEQ    LF68A   
       LDA    $80,X   
       ADC    #$12    
       AND    #$F3    
       STA    $80,X   
LF68A: LDA    $BF     
       ADC    #$10    
       AND    #$F0    
       ORA    #$02    
       STA    $BF     
LF694: LDX    $BA     
       JSR    LFC81   
       JSR    LFC3B   
       LDX    #$B6    
       JSR    LFC3D   
LF6A1: LDY    $96     
       BNE    LF6AE   
       LDY    $95     
       CPY    #$02    
       BEQ    LF6AE   
       JMP    LF743   
LF6AE: LDA    $B4     
       BEQ    LF6D4   
       LDX    $BA     
       LDY    $BB     
       LDA    #$FF    
       STA.wy $009A,Y 
       LDA    $B3     
       BEQ    LF6CC   
       LDA    $C0,X   
       CMP    #$01    
       BNE    LF6E7   
       LDA    #$00    
       STA.wy $009A,Y 
       BEQ    LF6E7   
LF6CC: LDA    $C0     
       ORA    $C1     
       CMP    #$01    
       BNE    LF6E7   
LF6D4: LDA    #$00    
       STA    $B4     
       LDA    $92     
       AND    #$03    
       BNE    LF6E7   
       INC    $B3     
       LDX    $B3     
       INX            
       BNE    LF6E7   
       DEC    $B4     
LF6E7: LDA    $A8     
       CMP    $AA     
       BNE    LF713   
       LDA    $AB     
       CMP    $AD     
       BNE    LF713   
       LDX    #$B6    
       JSR    LFC3D   
       AND    #$1F    
       CLC            
       ADC    #$30    
       STA    $AA     
       LDA    $B6     
       LSR            
       CLC            
       ADC    #$0E    
       CMP    #$7B    
       BCC    LF70B   
       LDA    #$7B    
LF70B: CMP    #$1F    
       BCS    LF711   
       LDA    #$1F    
LF711: STA    $AD     
LF713: LDX    #$A8    
       JSR    LFBA4   
       LDX    #$AB    
       JSR    LFBA4   
       DEC    $B2     
       BPL    LF743   
       LDY    $B1     
       LDA    $AB     
       CMP    $AD     
       BCC    LF732   
       INY            
       CPY    #$03    
       BNE    LF737   
       LDY    #$00    
       BEQ    LF737   
LF732: DEY            
       BPL    LF737   
       LDY    #$02    
LF737: STY    $B1     
       LDA    $B3     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       STA    $B2     
LF743: LDX    $BA     
       LDA    $E6     
       CMP    #$42    
       BEQ    LF77A   
       LDY    $E6,X   
       LDA    LFD00,Y 
       AND    #$0F    
       STA    AUDC0,X 
       LDA    LFD05,X 
       STA    AUDV0,X 
       LDA    LFD01,Y 
       AND    #$0F    
       TAX            
       LDA    LFFD4,X 
       LDX    $BA     
       STA    AUDF0,X 
       DEC    $E8,X   
       BNE    LF778   
       INY            
       INY            
       INY            
       LDA    LFD02,Y 
       AND    #$0F    
       ASL            
       ASL            
       STA    $E8,X   
       STY    $E6,X   
LF778: BPL    LF7D3   
LF77A: LDY    $95     
       CPY    #$02    
       BEQ    LF790   
       CPY    #$03    
       BEQ    LF790   
       LDA    #$00    
       STA    AUDC0   
       STA    AUDV0   
       STA    AUDC1   
       STA    AUDV1   
       BEQ    LF7D3   
LF790: LDA    $B3     
       AND    #$7F    
       STA    $F2     
       STA    $F3     
       LDY    $BD     
       LDA    LFDA5,Y 
       STA    $F4     
       STA    $F5     
       LDA    LFDA7,Y 
       STA    $F6     
       STA    $F7     
       LDY    $C0,X   
       CPY    #$02    
       BCS    LF7BE   
       LDY    #$01    
       LDA    $B3     
       BPL    LF7BE   
       LDA    $A6,X   
       ASL            
       ASL            
       ASL            
       CMP    $F2     
       BCS    LF7BE   
       DEY            
LF7BE: LDA    LFD9E,Y 
       STA    AUDC0,X 
       JSR    LFC49   
       LSR            
       STA    AUDV0,X 
       TYA            
       CLC            
       ADC    #$07    
       TAY            
       JSR    LFC49   
       STA    AUDF0,X 
LF7D3: BIT    INTIM   
       BMI    LF7D3   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       LDA    $92     
       LSR            
       LSR            
       AND    #$03    
       TAY            
       LDX    $BA     
       LDA    $80,X   
       AND    #$F0    
       ORA    LFDF9,Y 
       STA    $8B,X   
       STA    WSYNC   
       LDX    $B1     
       LDA    #$FF    
       STA    $B0     
       LDA    LFDFD,X 
       LDY    $94     
       CPY    #$06    
       BCC    LF803   
       LDA    #$99    
LF803: STA    $AF     
       STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$9F    
       STA    TIM64T  
       LDA    $E5     
       BNE    LF82C   
       LDA    $94     
       LSR            
       BCS    LF829   
       LDX    $BB     
       BEQ    LF82C   
LF829: JMP    LF8D6   
LF82C: LDA    $94     
       LSR            
       STA    $F7     
       LDX    $BE     
       LDY    $BD     
       LDA    #$FF    
       STA    $F2     
       LDA    $95     
       CMP    #$02    
       BEQ    LF844   
       LDA    #$40    
       JMP    LF8CC   
LF844: LDA    $C0,X   
       CMP    #$02    
       BNE    LF85C   
       LDA    LFFE9,X 
       STA    $F3     
       LDA    #$51    
       STA    $F4     
       LDA    $CE,X   
       STA    $F6     
       LDA    $C2,X   
       JMP    LF8A1   
LF85C: LDA    $92     
       LDX    $F7     
       AND    LFE8C,X 
       BNE    LF870   
       JSR    LFC3B   
       AND    #$1F    
       ADC    #$40    
       LDX    $BE     
       STA    $B7,X   
LF870: LDX    $BE     
       LDA    $B7,X   
       STA    $F6     
       LDA    $A8     
       ADC    #$06    
       STA    $F3     
       LDA    $AB     
       STA    $F4     
       LDA.wy $00C0,Y 
       CMP    #$01    
       BNE    LF8A1   
       LDA    $B5     
       ASL            
       ASL            
       STA    $EA     
       JSR    LFC3B   
       LSR            
       ADC    $EA     
       LDX    $F7     
       CMP    LFE90,X 
       BCS    LF89E   
       LDA    #$00    
       STA    $F2     
LF89E: LDA    LFFE9,Y 
LF8A1: SEC            
       SBC    $F3     
       JSR    LFC33   
       STA    $EA     
       LDA    $F6     
       SBC    $F4     
       STA    $EB     
       JSR    LFC33   
       CMP    $EA     
       BCC    LF8BA   
       LDA    $EA     
       SBC    #$01    
LF8BA: LDX    #$EA    
       JSR    LFC1E   
       LDA    $EE     
       LSR            
       LSR            
       LDY    $EB     
       BMI    LF8CA   
       JSR    LFC35   
LF8CA: ADC    #$40    
LF8CC: LDX    $BE     
       BNE    LF8D2   
       EOR    #$7F    
LF8D2: LDY    $F7     
       BPL    LF8EF   
LF8D6: LDX    $BB     
       LDA    SWCHA   
       AND    LFFEC,X 
       STA    $F2     
       LDA    $FB     
       SEC            
       SBC    #$0A    
       STA    $EA     
       LSR            
       LSR            
       LSR            
       LSR            
       ADC    $EA     
       LDY    #$04    
LF8EF: LDX    $BE     
       SEC            
       SBC    $98,X   
       BMI    LF900   
       CMP    LFE94,Y 
       BCC    LF908   
       LDA    LFE94,Y 
       BNE    LF908   
LF900: CMP    LFE99,Y 
       BCS    LF908   
       LDA    LFE99,Y 
LF908: CLC            
       ADC    $98,X   
       STA    $F1     
       LDX    $BE     
       LDA    $B4     
       BNE    LF917   
       LDA    $F2     
       STA    $9A,X   
LF917: LDA    $F1     
       SEC            
       SBC    $98,X   
       JSR    LFC33   
       STA    $A6,X   
       LDA    $F1     
       STA    $98,X   
       JSR    LFBED   
       STA    $9C,X   
       STY    $9E,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDX    $BE     
       BNE    LF93C   
       LDA    LFDE1,Y 
       STA    $A0     
       BNE    LF959   
LF93C: LDA    #$8C    
       SEC            
       SBC    LFDE1,Y 
       STA    $A1     
       LDA    $9F     
       STA    $EF     
       LDA    #$51    
       STA    $F0     
       LDX    #$9D    
       LDA    LFDE1,Y 
       SEC            
       SBC    #$01    
       JSR    LFBFC   
       STA    $A3     
LF959: LDX    $BA     
       DEC    $CC,X   
       BMI    LF980   
       LDY    $C0,X   
       LDA    LF972,Y 
       STA    $EA     
       LDA    LF979,Y 
       STA    $EB     
       TXA            
       EOR    $BC     
       TAY            
       JMP.ind ($00EA)
LF972: .byte $80,$A7,$E5,$FC,$F2,$73,$33
LF979: .byte $F9,$F9,$F9,$F9,$F9,$FA,$FA
LF980: LDA    #$00    
       STA    $C0,X   
       TXA            
       EOR    $BC     
       TAY            
       LDA    $96     
       BNE    LF996   
       LDA    LFD09,Y 
       STA    $87,X   
       LDA    LFE9E,Y 
       STA    $80,X   
LF996: LDY    #$00    
       STY    $CA,X   
       DEY            
       STY    $C2,X   
       LDY    $BB     
       LDA.wy $009A,Y 
       BNE    LF9A7   
LF9A4: JMP    LFB18   
LF9A7: LDY    #$01    
       STY    $C0,X   
       STY    $CC,X   
       LDY    $BB     
       LDA.wy $009A,Y 
       BNE    LF9A4   
       LDA    $95     
       CMP    #$03    
       BEQ    LF9A4   
       LDA    $A8     
       CLC            
       ADC    LFFEE,X 
       STA    $C2,X   
       LDA    #$1F    
       STA    $CC,X   
       LDA    $B4     
       BEQ    LF9D2   
       JSR    LFC3B   
       LSR            
       LDY    #$F8    
       BNE    LF9D7   
LF9D2: LDA.wy $0098,Y 
       LDY    #$FC    
LF9D7: LDX    $BA     
       STA    $C4,X   
       TYA            
       CLC            
       ADC    $B3     
       BCS    LF9E3   
       LDA    #$00    
LF9E3: STA    $B3     
       LDY    #$02    
       STY    $C0,X   
       LDA    $94     
       LSR            
       TAY            
       LDA    LFFF0,Y 
       BNE    LFA3F   
       LDA    $8B,X   
       ORA    #$0F    
       STA    $8B,X   
       LDA    #$F0    
       BNE    LFA3F   
       LDA    $C2,X   
       CMP    $A0,X   
       BEQ    LFA0A   
       BCS    LFA08   
       INC    $C2,X   
       BNE    LFA0A   
LFA08: DEC    $C2,X   
LFA0A: LDA    $9E,X   
       EOR    LFE05,X 
       STA    $EF     
       LDA    #$4D    
       STA    $F0     
       TXA            
       BNE    LFA23   
       LDX    #$9C    
       LDA    $C2     
       JSR    LFBFC   
       STA    $CE     
       BNE    LFA73   
LFA23: LDA    $C3     
       LDX    #$9D    
       LDA    #$8C    
       SEC            
       SBC    $C3     
       JSR    LFBFC   
       STA    $CF     
       BNE    LFA73   
       LDA    $92     
       ADC    $80,X   
       STA    $87,X   
       EOR    #$0F    
       STA    $80,X   
       LDA    #$FE    
LFA3F: CPX    #$00    
       CLC            
       BNE    LFA47   
       EOR    #$FF    
       SEC            
LFA47: ADC    $C2,X   
       STA    $C2,X   
       CPX    #$00    
       BNE    LFA5D   
       CMP    #$F0    
       BCC    LFA57   
       LDA    #$00    
       STA    $C2     
LFA57: CMP    $A8     
       BCS    LFA70   
       BCC    LFAAE   
LFA5D: CMP    #$8D    
       BCC    LFA65   
       LDA    #$8D    
       STA    $C3     
LFA65: STA    $EA     
       LDA    $A8     
       CLC            
       ADC    #$0E    
       CMP    $EA     
       BCC    LFAAE   
LFA70: JMP    LF980   
LFA73: LDX    $BA     
       LDA    $A8     
       CLC            
       ADC    LFFEE,X 
       SEC            
       SBC    $C2,X   
       JSR    LFC33   
       STA    $EA     
       LDA    $AB     
       SEC            
       SBC    $CE,X   
       STA    $EB     
       JSR    LFC33   
       CMP    $EA     
       BCS    LFA70   
       LDX    #$EA    
       JSR    LFC1E   
       LDX    $BA     
       LDA    $EE     
       STA    $C6,X   
       LDY    LFE07,X 
       LDA    $EB     
       BPL    LFAA6   
       LDY    LFE08,X 
LFAA6: STY    $C8,X   
       CPX    #$00    
       BEQ    LFAE5   
       BNE    LFAD8   
LFAAE: LDA    $C4,X   
       JSR    LFBED   
       STA    $C6,X   
       STY    $C8,X   
       TYA            
       EOR    LFE04,X 
       STA    $EF     
       LDA    $AB     
       STA    $F0     
       LDA    $A8     
       CLC            
       ADC    LFFEE,X 
       SEC            
       SBC    $C2,X   
       JSR    LFC33   
       CPX    #$00    
       BEQ    LFADE   
       LDX    #$C7    
       JSR    LFBFC   
       STA    $CF     
LFAD8: LDA    #$18    
       STA    $CB     
       BNE    LFB18   
LFADE: LDX    #$C6    
       JSR    LFBFC   
       STA    $CE     
LFAE5: LDA    $C2     
       BNE    LFAED   
       LDA    #$18    
       BNE    LFAEF   
LFAED: LDA    #$00    
LFAEF: STA    $CA     
       LDA    $A8     
       STA    $ED     
       LDX    #$C6    
       JSR    LFC0C   
       LDA    $AB     
       LDY    $C8     
       BMI    LFB0B   
       CLC            
       ADC    $EE     
       CMP    #$A0    
       BCC    LFB14   
       SBC    #$A0    
       BPL    LFB14   
LFB0B: SEC            
       SBC    $EE     
       CMP    #$A0    
       BCC    LFB14   
       ADC    #$9F    
LFB14: BRK            
       NOP            
       STA    $D0     
LFB18: LDA    #$15    
       STA    CTRLPF  
       LDA    $82     
       STA    COLUBK  
       LDA    $80     
       STA    COLUPF  
       LDA    $AB     
       BRK            
       NOP            
       STA    $AE     
       LDA    $A3     
       TAY            
       BRK            
       NOP            
       SEC            
       SBC    #$03    
       STA    $A4     
       DEY            
       TYA            
       BRK            
       NOP            
       SEC            
       SBC    #$03    
       STA    $A5     
       LDA    $A0     
       CMP    $C2     
       BNE    LFB45   
       DEC    $C2     
LFB45: LDA    $A1     
       CMP    $C3     
       BNE    LFB4D   
       INC    $C3     
LFB4D: LDA    $C3     
       CMP    #$82    
       BNE    LFB55   
       DEC    $C3     
LFB55: LDA    $A1     
       AND    #$01    
       TAX            
       LDA    LFE00,X 
       STA    $F6     
       LDA    LFE02,X 
       STA    $F7     
       LDA    $8B     
       ADC    #$04    
       TAX            
       LDA    $8C     
       ADC    #$04    
       LDY    $B4     
       BEQ    LFB74   
       LDA    $92     
       TAX            
LFB74: STA    $8D     
       STX    $8E     
LFB78: BIT    INTIM   
       BMI    LFB78   
       LDX    #$00    
       STX    VBLANK  
       STX    $B5     
       JMP    LF028   
LFB86: .byte $85,$EA,$4A,$4A,$4A,$4A,$38,$65,$EA,$4A,$4A,$4A,$4A,$85,$EB,$18
       .byte $65,$EA,$49,$FF,$0A,$0A,$0A,$0A,$05,$EB,$18,$69,$80,$40
LFBA4: LDA    VSYNC,X 
       SEC            
       SBC    WSYNC,X 
       STA    $EA     
       JSR    LFC33   
       CMP    #$20    
       BCC    LFBB4   
       LDA    #$1F    
LFBB4: CMP    $B5     
       BCC    LFBBA   
       STA    $B5     
LFBBA: ASL            
       ASL            
       ASL            
       STA    $EB     
       LDA    $94     
       LSR            
       TAY            
       LDA    LFD0B,Y 
       TAY            
       LDA    $EA     
       BPL    LFBDC   
LFBCB: LDA    VBLANK,X
       CLC            
       ADC    $EB     
       STA    VBLANK,X
       LDA    VSYNC,X 
       ADC    #$00    
       STA    VSYNC,X 
       DEY            
       BPL    LFBCB   
       RTS            

LFBDC: LDA    VBLANK,X
       SEC            
       SBC    $EB     
       STA    VBLANK,X
       LDA    VSYNC,X 
       SBC    #$00    
       STA    VSYNC,X 
       DEY            
       BPL    LFBDC   
       RTS            

LFBED: LDY    #$F0    
       ASL            
       SEC            
       SBC    #$7F    
       BPL    LFBFA   
       JSR    LFC35   
       LDY    #$10    
LFBFA: ASL            
       RTS            

LFBFC: STA    $ED     
       JSR    LFC0C   
       LDA    $EE     
       LDY    $EF     
       JSR    LFC33   
       CLC            
       ADC    $F0     
       RTS            

LFC0C: LDA    #$00    
       LDY    #$08    
LFC10: LSR    $ED     
       BCC    LFC17   
       CLC            
       ADC    VSYNC,X 
LFC17: ROR            
       DEY            
       BNE    LFC10   
       STA    $EE     
       RTS            

LFC1E: LDY    #$00    
       STY    $EE     
       LDY    #$08    
LFC24: ASL    $EE     
       ASL            
       CMP    VSYNC,X 
       BCC    LFC2F   
       SBC    VSYNC,X 
       INC    $EE     
LFC2F: DEY            
       BNE    LFC24   
       RTS            

LFC33: BPL    LFC3A   
LFC35: EOR    #$FF    
       CLC            
       ADC    #$01    
LFC3A: RTS            

LFC3B: LDX    #$B9    
LFC3D: LDA    VSYNC,X 
       ASL            
       ASL            
       ASL            
       ASL            
       SEC            
       ADC    VSYNC,X 
       STA    VSYNC,X 
       RTS            

LFC49: LDA    LFDA9,Y 
       ORA    #$80    
       CLC            
       ADC    $BA     
       TAX            
       LDA    VSYNC,X 
       LDX    LFDA9,Y 
       JSR    LFC33   
       AND    LFDB7,Y 
       LDX    LFDC5,Y 
       BEQ    LFC66   
LFC62: ASL            
       DEX            
       BNE    LFC62   
LFC66: CLC            
       ADC    LFDD3,Y 
       LSR            
       LSR            
       LSR            
       LDX    $BA     
       RTS            

LFC70: LDA    #$0F    
       STA    $E6     
       LDA    #$0C    
       STA    $E8     
       LDA    #$6B    
       STA    $E7     
       LDA    #$0C    
       STA    $E9     
       RTS            

LFC81: LDA    #$FF    
       STA    $EB     
       LDY    #$88    
       LDA    $97     
       AND    LFFEB,X 
       BEQ    LFC90   
       LDY    #$92    
LFC90: STY    $EA     
       TXA            
       EOR    $BC     
       TAX            
       LDA    LFE82,X 
       TAX            
       LDY    #$09    
LFC9C: LDA    ($EA),Y 
       STA    COLUBK,X
       DEX            
       DEY            
       BPL    LFC9C   
       RTS            

LFCA5: LDX    $BC     
       LDA    LFEA5,X 
       STA    $83     
       LDA    LFEA6,X 
       STA    $84     
       LDA    #$42    
       STA    $E6     
       LDY    #$02    
       BNE    LFCD9   
LFCB9: LDY    #$00    
LFCBB: LDX    #$00    
       STX    $89     
       STX    $8A     
       STX    $BC     
       LDX    #$40    
       STX    $A8     
       STX    $AA     
       LDX    #$4D    
       STX    $AB     
       STX    $AD     
       LDX    #$06    
LFCD1: LDA    LFE9E,X 
       STA    $80,X   
       DEX            
       BPL    LFCD1   
LFCD9: STY    $EC     
       LDX    #$00    
       STX    $B3     
       STX    $B4     
       STX    $C0     
       STX    $C1     
       JSR    LFC81   
       LDX    #$01    
       JSR    LFC81   
       LDY    $EC     
LFCEF: LDX    $BC     
       LDA    LFD07,X 
       STA    $BF     
       LDA    $92     
       AND    #$01    
       STA    $92     
       LSR            
       STA    $93     
       STA    $96     
LFD01: STY    $95     
       RTS            

LFD04: .byte $C2
LFD05: .byte $0C,$08
LFD07: .byte $00,$20
LFD09: .byte $4C,$8C
LFD0B: .byte $00,$01,$02,$01
LFD0F: .byte $0C,$02,$03,$0C,$00,$06,$04,$06,$F6,$14,$07,$F1,$04,$18,$11,$F4
       .byte $09,$F1,$04,$13,$F6,$F4,$16,$13,$14,$07,$F1,$14,$08,$F1,$F4,$19
       .byte $F1,$04,$F3,$06,$14,$06,$13,$04,$F7,$01,$14,$F8,$01,$14,$F7,$11
       .byte $F4,$09,$F6,$06,$17,$07,$10,$00,$11,$F0,$F7,$10,$00,$F7,$07,$10
       .byte $00,$F7,$07,$10,$F7,$10,$11,$F0,$11,$01,$F0,$00,$11,$F0,$F7,$10
       .byte $00,$11,$01,$12,$02,$F1,$01,$F0,$11,$F0,$11,$01,$FC,$19,$03,$FC
       .byte $06,$13,$0C,$12,$03,$FC,$00,$F3,$1C,$F2,$F3,$0C,$13,$F3,$0C,$14
       .byte $13,$1C,$F5,$F3,$1C,$06,$F3,$0C,$F3,$13,$1C,$04,$F3,$0C,$15,$03
       .byte $FC,$06,$03,$0C,$07,$01,$0C,$08,$01,$0C,$07,$01,$0C,$09,$06
LFD9E: .byte $08,$06,$08,$03,$0C,$08,$08
LFDA5: .byte $40,$30
LFDA7: .byte $80,$B0
LFDA9: .byte $72,$26,$4C,$26,$4C,$4C,$4C,$F2,$74,$CC,$A6,$76,$4C,$CC
LFDB7: .byte $7F,$1F,$1F,$0F,$00,$00,$3F,$7F,$FF,$1F,$0F,$FF,$00,$3F
LFDC5: .byte $01,$03,$02,$03,$00,$00,$02,$01,$00,$02,$02,$00,$00,$01
LFDD3: .byte $00,$3F,$30,$50,$FF,$F0,$0F,$00,$00,$00,$20,$00,$00,$00
LFDE1: .byte $2A,$29,$29,$28,$27,$26,$25,$24,$22,$21,$1F,$1E,$1D,$1C,$1A,$19
LFDF1: .byte $80,$40,$20,$10,$08,$04,$02,$01
LFDF9: .byte $04,$06,$08,$06
LFDFD: .byte $B3,$BE,$C9
LFE00: .byte $B6,$E9
LFE02: .byte $F3,$F3
LFE04: .byte $00
LFE05: .byte $E0,$00
LFE07: .byte $F0
LFE08: .byte $10,$F0,$FE,$FE,$FC,$FC,$FC,$FC,$F8,$F8,$F8,$F8,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$E0,$E0,$E0,$E0,$E0,$E0,$C0,$C0,$C0,$C0,$C0,$C0,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$00,$00,$52,$52,$52,$52,$52,$52,$52,$52
       .byte $52,$52,$52,$52,$52,$52,$52,$52,$52,$52,$52,$52,$52,$52,$72,$72
       .byte $72,$72,$72,$72,$72,$72,$72,$72,$72,$72,$72,$72,$72,$72,$72,$72
       .byte $72,$72,$72,$72,$00,$00,$80,$80,$80,$80,$80,$80,$80,$80,$C0,$C0
       .byte $C0,$C0,$C0,$C0,$E0,$E0,$E0,$E0,$E0,$E0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F8,$F8,$F8,$F8,$FC,$FC,$FC,$FC,$FE,$FE
LFE82: .byte $D1,$DB
LFE84: .byte $48,$58,$68,$78
LFE88: .byte $50,$60,$70,$80
LFE8C: .byte $3E,$1E,$0E,$1E
LFE90: .byte $0F,$1E,$28,$1E
LFE94: .byte $04,$08,$0A,$08,$18
LFE99: .byte $FC,$F8,$F6,$F8,$E8
LFE9E: .byte $42,$82,$00,$1C,$1C,$74,$18
LFEA5: .byte $46
LFEA6: .byte $8C,$46
LFEA8: .byte $BC,$DE,$BC
LFEAB: .byte $07,$0F,$1F,$3E,$3C,$3C,$3C,$3C,$3C,$3E,$1F,$1F,$0C,$0C,$0C,$0E
       .byte $06,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$40,$74
       .byte $74,$74
LFECD: .byte $87,$87,$87,$85,$85,$85,$85,$85,$85,$85,$87,$87,$87,$87,$87,$87
       .byte $87,$86,$86,$86,$86,$86,$86,$86,$86,$86,$86,$86,$86,$86,$86,$16
       .byte $16,$16,$88,$88,$88,$86,$86,$86,$86,$86,$86,$86,$88,$88,$88,$88
       .byte $88,$88,$88,$00,$38,$44,$C6,$C6,$C6,$44,$38,$00,$FE,$18,$18,$18
       .byte $38,$18,$08,$00,$FE,$C0,$C0,$7C,$06,$06,$7C,$00,$FC,$06,$06,$7C
       .byte $06,$06,$FC,$00,$0C,$FE,$4C,$2C,$1C,$0C,$04,$00,$FC,$06,$06,$7C
       .byte $C0,$C0,$FC,$00,$7C,$C6,$C6,$FC,$C0,$C0,$7C,$00,$60,$30,$18,$0C
       .byte $06,$C2,$FE,$00,$7C,$C6,$C6,$7C,$C6,$C6,$7C,$00,$CE,$28,$28,$48
       .byte $88,$88,$68,$00,$49,$AF,$A9,$A9,$A9,$A9,$49,$00,$AE,$A8,$A8,$AC
       .byte $A8,$E8,$AE,$00,$C0,$A0,$A0,$A0,$A0,$A0,$C0,$00,$8A,$8A,$8E,$EA
       .byte $8A,$8A,$E4,$00,$C4,$24,$24,$44,$84,$84,$6E,$00,$A9,$A9,$BA,$BA
       .byte $BA,$AA,$AA,$00,$2C,$22,$A2,$A4,$A8,$A8,$A6,$81,$42,$BD,$42,$BD
       .byte $42,$BD,$42,$3C,$00,$81,$42,$BD,$42,$BD,$42,$3C,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$08,$08,$1C,$1C,$1C,$00,$08,$00,$22
       .byte $22,$77,$77,$77,$00,$22,$18,$3C,$7E,$7E,$FF,$DB,$FF,$7E,$7E,$3C
       .byte $18,$18,$3C,$7E,$7E,$FF,$6D,$FF,$7E,$7E,$3C,$18,$18,$3C,$7E,$7E
       .byte $FF,$B6,$FF,$7E,$7E,$3C,$18
LFFD4: .byte $0B,$0D,$0F,$11,$12,$14,$17,$1A,$1C,$1F
LFFDE: .byte $28,$26,$24,$26,$28,$2A,$28,$26,$24,$26,$28
LFFE9: .byte $00,$8C
LFFEB: .byte $40
LFFEC: .byte $80,$40
LFFEE: .byte $00,$0E
LFFF0: .byte $06,$08,$0A,$08
LFFF4: .byte $00,$01,$02,$04
LFFF8: .byte $E1,$52,$54,$44,$00,$F0,$86,$FB
