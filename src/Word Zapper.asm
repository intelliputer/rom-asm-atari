; Disassembly of roms/Word Zapper.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Word Zapper.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
PF0     =  $0D
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $43,$4F,$50,$59,$52,$49,$47,$48,$54,$20,$31,$39,$38,$32,$20,$55
       .byte $53,$20,$47,$41,$4D,$45,$53,$20,$43,$4F,$52,$50,$2E

START:
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF023: STA    VSYNC,X 
       DEX            
       BNE    LF023   
       LDY    #$30    
       JSR    LFFCB   
       LDX    #$11    
LF02F: LDA    LFACE,X 
       STA    $90,X   
       DEX            
       BPL    LF02F   
       LDA    #$25    
       STA    $A9     
       DEC    $B5     
       DEC    $B6     
       DEC    $B7     
       DEC    $B8     
       DEC    $B9     
       DEC    $DA     
       LDA    #$03    
       STA    $AF     
       LDA    #$20    
       STA    $C6     
       ASL            
       STA    $C9     
       LDA    #$60    
       STA    $C8     
       LDA    #$06    
       STA    $E5     
       LDA    #$01    
       STA    $E6     
       LDA    #$60    
       STA    $AD     
       LDA    #$FE    
       STA    $AE     
       LDA    #$02    
       STA    $CF     
       LDA    #$72    
       STA    COLUBK  
LF06E: STA    WSYNC   
       STA    VSYNC   
       LDA    #$22    
       STA    TIM64T  
       ROL    $B9     
       ROL    $B7     
       ROL    $B8     
       ROR            
       ROR            
       ROR            
       EOR    $B8     
       ASL            
       ASL            
       STA    $B9     
       LDA    INPT4   
       AND    #$80    
       BEQ    LF0A2   
       LDA    INPT5   
       AND    #$80    
       BEQ    LF0A2   
       LDA    SWCHA   
       EOR    #$FF    
       BNE    LF0A2   
       LDA    SWCHB   
       EOR    #$FF    
       AND    #$03    
       BEQ    LF0A8   
LF0A2: INC    $B7     
       LDA    #$FF    
       STA    $DA     
LF0A8: LDA    $DA     
       BNE    LF0AF   
       JMP    LF06E   
LF0AF: LDA    $E6     
       BNE    LF0CC   
       LDX    $B2     
       LDA    LFA7F,X 
       STA    $AD     
       LDA    LFA80,X 
       STA    $AE     
       LDA    LFA9C,X 
       STA    $B0     
       LDA    LFA9D,X 
       STA    $B1     
       JMP    LF0FE   
LF0CC: CMP    #$18    
       BEQ    LF0EF   
       CMP    #$01    
       BEQ    LF0FE   
       STA    $AD     
       EOR    #$80    
       STA    $B0     
       LDX    #$FB    
       STX    $AE     
       STX    $B1     
       TAX            
       LDA    $CE     
       AND    #$03    
       BNE    LF0FE   
       TXA            
       CLC            
       ADC    #$A0    
       STA    $E6     
       BNE    LF0FE   
LF0EF: LDX    #$00    
       STX    $CF     
       INX            
       STX    $E6     
       LDA    #$60    
       STA    $AD     
       LDA    #$FE    
       STA    $AE     
LF0FE: LDA    #$25    
       JSR    LFF97   
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$90    
       JSR    LFF53   
       LDA    #$CA    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$05    
       STA    CTRLPF  
       JSR    LFE6D   
       INC    $F5     
       LDY    #$03    
LF127: LDA.wy $00C6,Y 
       TAX            
       CMP    #$80    
       BCC    LF140   
       LDA    $CE     
       AND    #$03    
       BNE    LF13D   
       TXA            
       ADC    #$1F    
       BCS    LF154   
       STA.wy $00C6,Y 
LF13D: JMP    LF1E0   
LF140: LDA.wy $00BE,Y 
       BEQ    LF154   
       CLC            
       ADC.wy $00CA,Y 
       CMP    #$94    
       BCS    LF154   
       CMP    #$08    
       BCC    LF154   
       JMP    LF1DD   
LF154: LDA    $E5     
       BNE    LF16C   
       LDA    $DB     
       AND    #$01    
       BNE    LF164   
       LDA    $B8     
       AND    #$0D    
       BNE    LF16C   
LF164: LDA    $B7     
       INC    $B7     
       AND    #$24    
       BEQ    LF173   
LF16C: LDA    #$00    
       STA.wy $00C2,Y 
       BEQ    LF1DD   
LF173: LDA    $DB     
       AND    #$02    
       BEQ    LF184   
       LDA    $B7     
       AND    #$03    
       CLC            
       ADC    #$FE    
       ADC    #$00    
       BNE    LF18D   
LF184: LDA    $B7     
       AND    #$01    
       CLC            
       ADC    #$FF    
       ADC    #$00    
LF18D: STA.wy $00CA,Y 
       LDA    $F5     
       AND    #$07    
       CLC            
       ADC    #$0C    
       ADC    LFAF8,Y 
       STA.wy $00C2,Y 
       LDA    #$00    
       LDX    $B8     
       INC    $B8     
       CPX    #$5A    
       BCC    LF1CE   
       LDA    #$20    
       CPX    #$B4    
       BCC    LF1CE   
       CPX    #$F0    
       BCC    LF1C5   
       LDA    SWCHB   
       AND    #$80    
       BEQ    LF16C   
       TYA            
       PHA            
       LDY    #$28    
       JSR    LFFCB   
       PLA            
       TAY            
       LDA    #$40    
       BNE    LF1CE   
LF1C5: LDA    SWCHB   
       AND    #$40    
       BEQ    LF16C   
       LDA    #$60    
LF1CE: STA.wy $00C6,Y 
       LDA.wy $00CA,Y 
       BPL    LF1DB   
       LDA    #$94    
       JMP    LF1DD   
LF1DB: LDA    #$08    
LF1DD: STA.wy $00BE,Y 
LF1E0: DEY            
       BMI    LF1E6   
       JMP    LF127   
LF1E6: STA    CXCLR   
       LDX    $B5     
       CPX    #$87    
       BCC    LF1F0   
       LDX    #$87    
LF1F0: CPX    #$0A    
       BCS    LF1F6   
       LDX    #$0A    
LF1F6: STX    $B5     
       LDY    $B6     
       CPY    #$88    
       BCC    LF200   
       LDY    #$88    
LF200: CPY    #$39    
       BCS    LF206   
       LDY    #$39    
LF206: STY    $B6     
LF208: LDA    INTIM   
       BNE    LF208   
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$BE    
LF215: STA    WSYNC   
       DEX            
       CPX    #$B5    
       BCS    LF215   
       JSR    LFF00   
LF21F: STA    WSYNC   
       DEX            
       CPX    #$A6    
       BCS    LF21F   
       LDA    #$96    
       JSR    LFF53   
       LDA    #$F8    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       LDA    $A9     
       JSR    LFF97   
       LDA    #$0E    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LFF00   
       LDA    #$35    
       STA    NUSIZ0  
       LDA    #$00    
       STA    NUSIZ1  
       LDA    $B5     
       JSR    LFF7A   
       LDA    $BA     
       LDY    #$02    
       JSR    LFF7C   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$30    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       LDA    #$1E    
       STA    $BC     
       STA    COLUP0  
       LDA    $BD     
       STA    GRP0    
       LDA    #$00    
       STA    $80     
       LDA    #$FB    
       STA    $83     
       LDA    #$FB    
       STA    $85     
       DEX            
       STA    WSYNC   
       STA    HMCLR   
       DEX            
       JMP    LF283   
LF280: JMP    LF340   
LF283: LDA    #$04    
       STA    $8C     
LF287: DEC    $8C     
       BMI    LF280   
       DEX            
       CPX    $BB     
       PHP            
       CPX    $B6     
       BCS    LF2A2   
       LDY    $80     
       LDA    ($B0),Y 
       STA    $BC     
       LDA    ($AD),Y 
       BEQ    LF29E   
       INY            
LF29E: STA    $BD     
       STY    $80     
LF2A2: LDY    $8C     
       LDA.wy $00BE,Y 
       STA    WSYNC   
       SEC            
LF2AA: SBC    #$0F    
       BCS    LF2AA   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       NOP            
       STA    RESP1   
       STA    WSYNC   
       STA    HMP1    
       LDA    $BD     
       STA    GRP0    
       LDA    $BC     
       STA    COLUP0  
       PLA            
       STA    ENAM0   
       LDA.wy $00C6,Y 
       CMP    #$80    
       BCS    LF2D2   
       CLC            
       ADC    $B3     
LF2D2: STA    $82     
       EOR    #$80    
       STA    $84     
       LDA    LFAF8,Y 
       STA    $86     
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       DEX            
       LDA.wy $00C2,Y 
       STA    $81     
       LDA    #$00    
       STA    $8D     
       BPL    LF2F9   
LF2EE: STA    WSYNC   
LF2F0: DEX            
       CPX    $86     
       BCC    LF287   
       TXA            
       LSR            
       BCC    LF31C   
LF2F9: CPX    $BB     
       PHP            
       PLA            
       STA    ENAM0   
       CPX    $B6     
       BCS    LF2EE   
       LDY    $80     
       LDA    ($B0),Y 
       STA    $BC     
       LDA    ($AD),Y 
       BEQ    LF30E   
       INY            
LF30E: STY    $80     
       STA    WSYNC   
       STA    GRP0    
       LDA    $BC     
       STA    COLUP0  
       JMP    LF2F0   
LF31B: .byte $B1
LF31C: CPX    $81     
       BCS    LF339   
       LDY    $8D     
       LDA    ($84),Y 
       STA    $8E     
       LDA    ($82),Y 
       BEQ    LF32B   
       INY            
LF32B: STY    $8D     
       STA    WSYNC   
       STA    GRP1    
       LDA    $8E     
       STA    COLUP1  
       DEX            
       JMP    LF2F9   
LF339: STA    WSYNC   
       DEX            
       JMP    LF2F9   
LF33F: .byte $85
LF340: LDY    #$3B    
LF342: LDA    #$FC    
       STA    WSYNC   
       STA    CTRLPF  
       DEX            
       LDA    LFA43,Y 
       STA    PF0     
       DEY            
       LDA    LFA43,Y 
       STA    PF1     
       DEY            
       LDA    LFA43,Y 
       STA    PF2     
       DEY            
       LDA    LFA43,Y 
       STA    PF0     
       DEY            
       LDA    LFA43,Y 
       STA    PF1     
       DEY            
       LDA    LFA43,Y 
       STA    PF2     
       DEY            
       BPL    LF342   
       STA    WSYNC   
       DEX            
       LDY    #$B9    
       STY    CTRLPF  
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$24    
       JSR    LFF97   
       LDA    #$00    
       STA    REFP0   
       LDA    #$9C    
       JSR    LFF53   
       LDA    #$EA    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       DEX            
       JSR    LFF00   
LF396: STA    WSYNC   
       DEX            
       BPL    LF396   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$22    
       STA    TIM64T  
       LDA    SWCHA   
       TAX            
       EOR    $A7     
       AND    $A7     
       STX    $A7     
       STA    $A8     
       LDA    INPT4   
       ROL            
       LDA    INPT5   
       ROL            
       ROL            
       AND    #$03    
       STA    $8E     
       EOR    $AF     
       AND    $AF     
       ASL            
       ASL            
       ORA    $8E     
       STA    $AF     
       LDX    $B2     
       INX            
       INX            
       CPX    #$08    
       BCC    LF3D1   
       LDX    #$00    
LF3D1: STX    $B2     
       LDA    $CE     
       AND    #$03    
       BNE    LF3E6   
       LDA    $B3     
       CLC            
       ADC    #$06    
       CMP    #$18    
       BCC    LF3E4   
       LDA    #$00    
LF3E4: STA    $B3     
LF3E6: LDA    $D7     
       BNE    LF442   
       LDA    $B4     
       CMP    #$0A    
       BNE    LF442   
       LDA    $AB     
       STA    $AA     
LF3F4: DEC    $A9     
       LDA    $A9     
       CMP    #$1D    
       BNE    LF43C   
       LDA    #$2D    
       STA    $A9     
       LDX    #$00    
       LDY    #$01    
LF404: LDA.wy $0096,Y 
       STA    $96,X   
       INX            
       INY            
       CPY    #$06    
       BNE    LF404   
       LDA    $AC     
       BNE    LF42C   
       LDY    $9A     
       INY            
       CPY    #$30    
       BNE    LF41E   
       LDY    #$41    
       BNE    LF43A   
LF41E: CPY    #$5B    
       BNE    LF43A   
       LDY    #$40    
       LDA    $E0     
       BEQ    LF43A   
       LDY    #$2F    
       BNE    LF43A   
LF42C: LDA    $B7     
       AND    #$1F    
       CMP    #$1A    
       BCC    LF436   
       SBC    #$1A    
LF436: CLC            
       ADC    #$41    
       TAY            
LF43A: STY    $9B     
LF43C: DEC    $AA     
       LDA    $AA     
       BNE    LF3F4   
LF442: LDA    #$00    
       STA    $BD     
       LDA    $B4     
       ASL            
       TAY            
       INY            
       LDA    LF455,Y 
       PHA            
       DEY            
       LDA    LF455,Y 
       PHA            
       RTS            

LF455: .byte $BE,$F5,$D3,$FE,$BE,$F5,$F2,$FE,$24,$F9,$82,$F4,$ED,$F4,$10,$F5
       .byte $BE,$F5,$C7,$F5,$FC,$F5,$7A,$F8,$57,$F8,$7A,$F8,$57,$F8,$7A,$F8
       .byte $57,$F8,$24,$F9,$9D,$F8,$BE,$F5,$E7,$F8,$A7,$F5,$4E,$F9,$A2,$11
       .byte $BD,$BC,$FA,$95,$90,$CA,$10,$F8,$AD,$82,$02,$AA,$45,$DD,$25,$DD
       .byte $86,$DD,$29,$02,$F0,$04,$85,$CF,$D0,$0F,$A5,$CF,$D0,$12,$AD,$82
       .byte $02,$29,$02,$D0,$0B,$A9,$01,$85,$CF,$A0,$34,$20,$CB,$FF,$E6,$DB
       .byte $A5,$DB,$C9,$18,$D0,$04,$A9,$00,$85,$DB,$38,$69,$00,$A2,$2F,$C9
       .byte $0A,$90,$0C,$A2,$31,$E9,$0A,$C9,$0A,$90,$04,$A2,$32,$E9,$0A,$86
       .byte $94,$09,$30,$85,$95,$A5,$AF,$29,$0C,$F0,$0B,$E6,$B4,$A5,$DB,$4A
       .byte $4A,$4A,$AA,$E8,$86,$AB,$4C,$53,$F9,$A2,$99,$86,$DE,$AD,$82,$02
       .byte $29,$08,$85,$E4,$F0,$02,$A2,$00,$86,$DF,$A9,$00,$85,$E1,$A9,$02
       .byte $85,$DC,$85,$E3,$A0,$30,$20,$CB,$FF,$4C,$4A,$F9,$A2,$FF,$86,$E5
       .byte $E8,$86,$E6,$A2,$05,$A9,$2F,$95,$90,$95,$9C,$8A,$18,$69,$41,$95
       .byte $96,$CA,$10,$F1,$A9,$04,$85,$CF,$A2,$00,$86,$D7,$A5,$DB,$29,$07
       .byte $F0,$02,$A2,$05,$86,$E0,$29,$04,$F0,$23,$A5,$DC,$49,$03,$18,$69
       .byte $02,$AA,$A5,$B7,$65,$B8,$85,$B7,$C6,$B8,$29,$1F,$C9,$1A,$90,$02
       .byte $E9,$1A,$18,$69,$41,$95,$9C,$CA,$10,$E8,$4C,$4A,$F9,$A9,$50,$A2
       .byte $05,$A4,$DC,$F0,$0E,$A9,$20,$CA,$88,$F0,$08,$CA,$A5,$F5,$29,$1E
       .byte $4C,$86,$F5,$85,$A3,$A5,$B7,$29,$0F,$85,$A4,$0A,$18,$65,$A4,$65
       .byte $A3,$A8,$8A,$6A,$B9,$C3,$F9,$90,$07,$4A,$4A,$4A,$4A,$4C,$98,$F5
       .byte $29,$0F,$C8,$86,$A3,$AA,$BD,$B3,$F9,$A6,$A3,$95,$9C,$CA,$10,$E2
       .byte $4C,$4A,$F9,$A5,$AF,$29,$0C,$F0,$05,$A9,$06,$4C,$D0,$F8,$AD,$82
       .byte $02,$29,$01,$D0,$05,$A9,$05,$4C,$D0,$F8,$A5,$CF,$D0,$02,$E6,$B4
       .byte $4C,$53,$F9,$A0,$05,$B9,$9C,$00,$99,$D0,$00,$A9,$2E,$99,$9C,$00
       .byte $88,$10,$F2,$A9,$2F,$85,$A2,$85,$D6,$A5,$DC,$49,$03,$AA,$A9,$40
       .byte $95,$D3,$A6,$E1,$B5,$DE,$85,$CF,$A9,$00,$85,$D8,$A9,$03,$85,$E5
       .byte $A0,$2C,$20,$CB,$FF,$4C,$4A,$F9,$AD,$82,$02,$29,$01,$D0,$09,$A9
       .byte $09,$85,$DC,$A9,$11,$4C,$D0,$F8,$A5,$30,$29,$80,$F0,$25,$A2,$03
       .byte $A5,$BB,$DD,$F8,$FA,$B0,$03,$CA,$D0,$F8,$A9,$00,$85,$BB,$B5,$C6
       .byte $C9,$80,$B0,$0F,$A9,$98,$95,$C6,$A0,$10,$20,$CB,$FF,$A5,$E0,$F0
       .byte $02,$C6,$E0,$A5,$37,$29,$80,$D0,$03,$4C,$BB,$F6,$A2,$03,$A5,$B6
       .byte $38,$F5,$C2,$C9,$0C,$90,$09,$C9,$F6,$B0,$05,$CA,$10,$F0,$30,$66
       .byte $B5,$C6,$C9,$80,$B0,$60,$A5,$B5,$38,$F5,$BE,$C9,$07,$90,$04,$C9
       .byte $F1,$90,$53,$20,$F5,$FD,$F0,$37,$B0,$43,$B5,$CA,$0A,$B0,$08,$0A
       .byte $0A,$0A,$65,$B5,$4C,$93,$F6,$B5,$CA,$49,$FF,$18,$69,$01,$0A,$0A
       .byte $0A,$0A,$A6,$B5,$85,$B5,$8A,$38,$E5,$B5,$B0,$02,$A9,$05,$85,$B5
       .byte $A9,$24,$C0,$00,$F0,$02,$A9,$14,$A8,$20,$CB,$FF,$4C,$BB,$F6,$A0
       .byte $10,$20,$CB,$FF,$20,$CB,$FF,$A9,$98,$85,$E6,$D0,$09,$A0,$18,$20
       .byte $CB,$FF,$A9,$05,$85,$AC,$A4,$D7,$F0,$18,$88,$84,$D7,$C0,$0F,$B0
       .byte $03,$4C,$4C,$F7,$C0,$1D,$F0,$5E,$C0,$19,$F0,$5A,$C0,$14,$F0,$56
       .byte $D0,$58,$A9,$08,$A6,$E1,$F0,$01,$4A,$25,$AF,$F0,$67,$A0,$04,$20
       .byte $CB,$FF,$A9,$1E,$85,$D7,$A8,$A9,$FF,$85,$D9,$A5,$B5,$C9,$1E,$90
       .byte $35,$C9,$62,$B0,$31,$18,$69,$0C,$38,$E5,$A9,$4A,$4A,$4A,$4A,$AA
       .byte $B5,$96,$C9,$2F,$F0,$20,$86,$D9,$A6,$D8,$C9,$40,$D0,$06,$A9,$05
       .byte $85,$E0,$D0,$04,$D5,$D0,$D0,$0E,$8A,$09,$80,$85,$D8,$84,$A3,$A0
       .byte $3C,$20,$CB,$FF,$A4,$A3,$A9,$18,$85,$BD,$A2,$2A,$C0,$14,$90,$06
       .byte $E8,$C0,$19,$90,$01,$E8,$98,$6A,$6A,$8A,$69,$00,$A6,$D9,$E0,$FF
       .byte $F0,$02,$95,$96,$4C,$C5,$F7,$C0,$0E,$90,$11,$A6,$D9,$A9,$2F,$95
       .byte $96,$A6,$D8,$30,$04,$A9,$00,$85,$D7,$4C,$C5,$F7,$A5,$D8,$29,$7F
       .byte $85,$D8,$C0,$00,$D0,$44,$A6,$D8,$B5,$D0,$95,$9C,$E6,$D8,$A2,$06
       .byte $B5,$D0,$C9,$2F,$F0,$04,$D5,$9C,$D0,$46,$CA,$10,$F3,$A2,$05,$B5
       .byte $D0,$C9,$40,$D0,$02,$A9,$2F,$95,$9C,$CA,$10,$F3,$E6,$B4,$A0,$0C
       .byte $20,$CB,$FF,$C6,$DC,$10,$10,$A0,$20,$20,$CB,$FF,$20,$CB,$FF,$A9
       .byte $04,$85,$EB,$A9,$F8,$85,$F3,$4C,$4F,$F8,$A2,$2C,$C0,$05,$90,$06
       .byte $CA,$C0,$0A,$90,$01,$CA,$98,$6A,$6A,$8A,$69,$00,$A6,$D8,$95,$9C
       .byte $A5,$BB,$D0,$48,$A9,$02,$A6,$E1,$F0,$01,$4A,$25,$AF,$D0,$3D,$A5
       .byte $A7,$A6,$E1,$F0,$04,$0A,$0A,$0A,$0A,$29,$C0,$49,$C0,$F0,$2D,$48
       .byte $A0,$08,$20,$CB,$FF,$68,$C9,$40,$F0,$0D,$A5,$B5,$C9,$81,$B0,$1C
       .byte $18,$69,$10,$09,$01,$D0,$0A,$A5,$B5,$C9,$11,$90,$0F,$E9,$06,$29
       .byte $FE,$85,$BA,$A5,$B6,$38,$E9,$08,$09,$01,$85,$BB,$20,$AA,$FF,$A5
       .byte $A7,$A6,$E1,$F0,$04,$0A,$0A,$0A,$0A,$AA,$29,$80,$D0,$04,$E6,$B5
       .byte $E6,$B5,$8A,$29,$40,$D0,$04,$C6,$B5,$C6,$B5,$8A,$29,$20,$D0,$04
       .byte $C6,$B6,$C6,$B6,$8A,$29,$10,$D0,$04,$E6,$B6,$E6,$B6,$A5,$CF,$D0
       .byte $0F,$A9,$11,$85,$B4,$A0,$1C,$20,$CB,$FF,$A6,$E1,$A5,$CF,$95,$DE
       .byte $4C,$53,$F9,$A9,$72,$85,$09,$A5,$DC,$10,$0A,$A5,$B7,$29,$05,$D0
       .byte $04,$A9,$0E,$85,$09,$A5,$B5,$18,$69,$03,$C9,$78,$B0,$05,$85,$B5
       .byte $4C,$53,$F9,$4C,$4A,$F9,$A9,$72,$85,$09,$A5,$DC,$10,$0A,$A5,$B7
       .byte $29,$09,$D0,$04,$A9,$0E,$85,$09,$A5,$B5,$38,$E9,$03,$C9,$19,$90
       .byte $05,$85,$B5,$4C,$53,$F9,$4C,$4A,$F9,$A9,$25,$85,$A9,$A5,$DC,$C9
       .byte $09,$D0,$04,$A9,$05,$D0,$24,$A6,$E1,$95,$E2,$8A,$49,$01,$AA,$B5
       .byte $E2,$30,$08,$B5,$DE,$F0,$04,$86,$E1,$D0,$0A,$A6,$E1,$B5,$E2,$30
       .byte $0F,$B5,$DE,$F0,$0B,$B5,$E2,$85,$DC,$A9,$07,$85,$B4,$4C,$53,$F9
       .byte $A9,$2F,$A2,$11,$95,$90,$CA,$10,$FB,$E8,$86,$E1,$A9,$02,$85,$CF
       .byte $4C,$4A,$F9,$A2,$05,$A9,$2F,$95,$90,$CA,$10,$FB,$A6,$E1,$B5,$DE
       .byte $85,$CF,$20,$AA,$FF,$A6,$E1,$B5,$E2,$29,$03,$0A,$85,$A3,$0A,$18
       .byte $65,$A3,$A8,$A2,$05,$B9,$E0,$FA,$95,$96,$C8,$CA,$10,$F7,$A9,$02
       .byte $85,$CF,$A5,$E4,$29,$08,$D0,$2D,$A5,$E1,$49,$01,$85,$E1,$10,$25
       .byte $A9,$72,$85,$09,$A6,$B5,$E0,$25,$F0,$0B,$B0,$03,$E8,$90,$01,$CA
       .byte $86,$B5,$4C,$53,$F9,$A4,$B6,$C0,$39,$F0,$05,$C6,$B6,$4C,$53,$F9
       .byte $A0,$38,$20,$CB,$FF,$E6,$B4,$4C,$53,$F9,$A9,$14,$85,$B4,$A5,$BB
       .byte $F0,$20,$A5,$BA,$AA,$29,$01,$F0,$0B,$8A,$18,$69,$04,$C9,$94,$90
       .byte $0F,$4C,$71,$F9,$8A,$38,$E9,$04,$C9,$08,$B0,$04,$A9,$00,$85,$BB
       .byte $85,$BA,$AD,$84,$02,$D0,$FB,$A9,$02,$85,$02,$85,$00,$A9,$13,$8D
       .byte $95,$02,$A6,$CE,$E8,$E0,$3C,$90,$1B,$A2,$00,$A5,$E5,$F0,$02,$C6
       .byte $E5,$A5,$AC,$F0,$02,$C6,$AC,$C6,$DA,$A5,$CF,$F0,$07,$F8,$18,$E9
       .byte $00,$85,$CF,$D8,$86,$CE,$AD,$84,$02,$D0,$FB,$4C,$6E,$F0,$45,$54
       .byte $4F,$41,$49,$4E,$53,$48,$52,$44,$4C,$55,$50,$46,$4D,$43,$16,$3A
       .byte $16,$B9,$54,$38,$90,$76,$16,$3D,$8B,$2D,$68,$3E,$D2,$2C,$83,$16
       .byte $52,$2E,$C4,$76,$08,$4D,$12,$76,$E0,$71,$0E,$41,$95,$3A,$00,$FB
       .byte $36,$00,$F3,$C6,$0A,$A0,$C6,$07,$63,$AD,$08,$06,$3A,$01,$22,$76
       .byte $08,$0E,$41,$01,$06,$08,$08,$2A,$2F,$08,$0C,$B6,$01,$5B,$2F,$00
       .byte $E3,$AD,$00,$F3,$C6,$05,$04,$A3,$09,$5B,$26,$00,$08,$71,$80,$FB
       .byte $36,$82,$01,$0E,$E2,$95,$38,$80,$11,$0A,$1F,$0A,$06,$0C,$48,$16
       .byte $06,$30,$AC,$52,$41,$F3,$80,$DD,$BC,$50,$08,$F6,$AA,$28,$F6,$0D
       .byte $36,$5B,$01,$31,$28,$80,$71,$05,$A3,$B5,$3E,$1F,$08,$49
LFA43: .byte $FF,$FF,$FF,$FF,$FF,$FF,$DF,$FF,$F0,$3F,$FF,$30,$DF,$FF,$E0,$1F
       .byte $7F,$30,$CF,$FF,$C0,$0F,$3F,$30,$C7,$7F,$00,$0F,$1F,$30,$C7,$03
       .byte $00,$0F,$0F,$30,$C7,$01,$00,$07,$0F,$30,$C3,$01,$00,$07,$0F,$30
       .byte $C1,$00,$00,$03,$07,$30,$C1,$00,$00,$01,$07,$30
LFA7F: .byte $87
LFA80: .byte $FA,$87,$FA,$8E,$FA,$95,$FA,$80,$BC,$E6,$7F,$19,$25,$00,$01,$3D
       .byte $67,$FE,$98,$A4,$00,$19,$3D,$67,$FE,$98,$A4,$00
LFA9C: .byte $A4
LFA9D: .byte $FA,$AA,$FA,$B0,$FA,$B6,$FA,$CA,$B8,$B8,$BE,$B8,$6E,$CA,$B8,$B8
       .byte $BC,$B8,$6E,$CA,$B8,$B8,$BA,$B8,$6E,$CE,$B8,$B8,$BC,$B8,$6E,$47
       .byte $41,$4D,$45,$2F,$2F,$2F,$2F,$2F,$2F,$2F,$2F,$2F,$2F,$2F,$2F,$2F
       .byte $2F
LFACE: .byte $2F,$57,$4F,$52,$44,$2F,$5A,$41,$50,$50,$45,$52,$2F,$2F,$2F,$2F
       .byte $2F,$2F,$2F,$2F,$2F,$45,$43,$41,$2F,$50,$4D,$41,$48,$43,$45,$49
       .byte $4B,$4F,$4F,$52,$52,$45,$50,$50,$41,$5A
LFAF8: .byte $2C,$45,$5E,$77,$A4,$85,$C1,$A0,$08,$0C,$20,$63,$01,$00,$0C,$08
       .byte $40,$61,$03,$00,$0C,$04,$60,$42,$03,$00,$04,$0C,$60,$23,$02,$00
       .byte $3E,$3E,$3E,$3E,$3E,$3E,$00,$00,$22,$14,$08,$14,$22,$00,$08,$14
       .byte $22,$14,$08,$00,$22,$14,$08,$14,$22,$00,$08,$14,$22,$14,$08,$00
       .byte $3E,$3E,$3E,$3E,$3E,$CC,$A0,$A4,$07,$0E,$1C,$0E,$07,$00,$38,$7C
       .byte $EE,$7C,$38,$00,$E0,$70,$38,$70,$E0,$00,$1C,$3E,$77,$3E,$1C,$00
       .byte $3E,$3E,$72,$3E,$3E,$A0,$92,$A0,$3C,$7E,$FF,$7E,$3C,$00,$3C,$7E
       .byte $FF,$7E,$3C,$00,$3C,$7E,$FF,$7E,$3C,$00,$3C,$7E,$FF,$7E,$3C,$00
       .byte $3E,$72,$3E,$72,$3E,$E8,$AC,$A0,$EA,$E8,$E8,$E8,$EA,$00,$EA,$E8
       .byte $E8,$E8,$EA,$00,$EA,$E8,$E8,$E8,$EA,$00,$EA,$E8,$E8,$E8,$EA,$00
       .byte $C3,$66,$3C,$66,$C3,$00,$B2,$A0,$B6,$18,$B6,$18,$B6,$00,$18,$B6
       .byte $18,$B6,$18,$00,$18,$B6,$18,$B6,$18,$00,$B6,$18,$B6,$18,$B6,$00
       .byte $81,$5A,$3C,$5A,$81,$00,$C1,$A0,$34,$34,$34,$34,$34,$00,$34,$34
       .byte $34,$34,$34,$00,$38,$38,$38,$38,$38,$00,$38,$38,$38,$38,$38,$00
       .byte $24,$81,$40,$81,$24,$00,$A4,$97,$F2,$F6,$F8,$F6,$F4,$00,$F4,$F2
       .byte $F6,$F8,$F6,$00,$F6,$F4,$F2,$F6,$F8,$00,$F8,$F6,$F4,$F2,$F6,$00
       .byte $42,$80,$81,$01,$42,$00,$A0,$A0
LFC00: .byte $62,$FC,$6F,$FC,$7C,$FC,$88,$FC,$65,$FD,$60,$FE,$0C,$FE,$DC,$FD
       .byte $3B,$FE,$24,$FE,$53,$FE,$30,$FE,$47,$FE,$E8,$FD,$18,$FE,$00,$FE
       .byte $34,$FD,$E9,$FC,$58,$FD,$00,$FD,$C2,$FD,$B6,$FD,$87,$FA,$34,$FD
       .byte $E9,$FC,$58,$FD,$00,$FD,$C2,$FD,$B6,$FD,$4C,$FD,$2B,$FD,$71,$FD
       .byte $7D,$FD,$D1,$FC,$AE,$FD,$17,$FD,$8A,$FD,$40,$FD,$95,$FC,$97,$FD
       .byte $DD,$FC,$AD,$FC,$A4,$FD,$23,$FD,$CF,$FD,$0D,$FD,$C5,$FC,$BA,$FC
       .byte $A1,$FC,$40,$02,$00,$42,$10,$00,$05,$80,$11,$00,$00,$40,$08,$44
       .byte $00,$21,$00,$48,$02,$80,$04,$20,$09,$00,$84,$40,$60,$60,$06,$C6
       .byte $C0,$00,$60,$63,$03,$30,$36,$06,$00,$30,$30,$00,$63,$63,$00,$0C
       .byte $CC,$C0,$00,$1B,$1B,$C0,$C0,$C0,$C0,$FE,$FF,$FF,$C3,$C3,$C3,$FF
       .byte $FF,$FE,$FE,$FE,$60,$60,$30,$30,$18,$18,$0C,$FE,$FE,$FE,$FF,$FF
       .byte $03,$03,$7F,$FF,$FE,$C0,$C0,$FF,$FF,$7F,$18,$18,$18,$18,$18,$18
       .byte $3C,$3C,$7E,$66,$E7,$C3,$C3,$E7,$66,$3C,$3C,$18,$3C,$3C,$66,$E7
       .byte $C3,$C3,$C7,$CE,$DC,$F8,$F0,$E0,$F0,$F8,$DC,$CE,$C7,$C3,$C7,$CE
       .byte $DC,$F8,$FE,$FF,$FF,$C3,$C3,$FF,$FF,$FE,$FF,$FF,$C3,$C3,$FF,$FE
       .byte $FF,$C3,$C3,$FF,$FF,$FE,$A8,$A9,$00,$95,$C2,$95,$BE,$C0,$02,$60
       .byte $FE,$FE,$FF,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$FF,$FE,$FE,$7E,$FF,$FF
       .byte $DB,$DB,$DB,$DB,$DB,$DB,$DB,$C3,$C3,$C3,$DB,$DB,$DB,$DB,$DB,$DB
       .byte $DB,$FF,$FF,$7E,$FF,$FF,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3
       .byte $FF,$FF,$FF,$C3,$C3,$C3,$C3,$C3,$FF,$FF,$FF,$C3,$C3,$C3,$FF,$FF
       .byte $7E,$FF,$FF,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$FF,$FF,$7E,$FF,$FF,$C3
       .byte $C3,$C3,$CF,$CF,$C0,$C0,$FF,$FF,$7F,$FF,$FF,$C0,$C0,$C0,$C0,$C0
       .byte $C0,$C0,$FF,$FF,$7F,$30,$30,$00,$30,$30,$3E,$3F,$1F,$03,$03,$7F
       .byte $7F,$7E,$7E,$7E,$18,$18,$18,$18,$18,$18,$18,$7E,$7E,$7E,$FF,$FF
       .byte $C3,$C3,$03,$03,$03,$03,$03,$03,$03,$03,$C7,$C7,$C7,$CF,$CF,$DF
       .byte $DF,$DB,$FB,$F3,$F3,$E3,$E3,$79,$FB,$F6,$CC,$DA,$C6,$C6,$C6,$C6
       .byte $C6,$FE,$FE,$7C,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$FF,$FF
       .byte $FF,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$FC,$FC,$FC,$C0,$C0
       .byte $FF,$FF,$7F,$FF,$FF,$C0,$C0,$FC,$FC,$FC,$C0,$C0,$FF,$FF,$7F,$18
       .byte $18,$3C,$3C,$7E,$66,$E7,$C3,$C3,$C3,$C3,$C3,$C3,$7E,$7E,$18,$18
       .byte $18,$18,$18,$18,$18,$18,$78,$38,$18,$18,$18,$18,$18,$08,$0C,$04
       .byte $06,$02,$43,$7F,$7F,$B5,$C6,$2A,$2A,$2A,$2A,$29,$03,$4C,$F6,$FC
       .byte $60,$70,$18,$0C,$06,$3E,$7F,$C3,$C3,$C3,$C3,$7E,$3C,$7E,$E7,$C3
       .byte $C3,$C3,$C3,$C3,$C3,$C3,$E7,$7E,$3C,$7E,$C3,$C3,$C3,$C3,$7E,$C3
       .byte $C3,$C3,$C3,$7E,$3C,$7E,$E7,$C3,$03,$03,$1E,$03,$03,$C3,$E7,$7E
       .byte $3C,$7E,$E7,$C3,$03,$03,$03,$FE,$FC,$C0,$C0,$FF,$FF,$C0,$E0,$70
       .byte $3C,$1E,$07,$03,$C3,$E7,$7E,$3C,$7E,$C3,$C3,$C3,$C3,$FE,$7C,$60
       .byte $30,$18,$0E,$06,$06,$06,$06,$FF,$FF,$C6,$C6,$66,$36,$1E,$0E,$06
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFE6D: LDX    #$01    
LFE6F: LDA    $ED,X   
       BNE    LFE77   
       STA    AUDC0,X 
       BEQ    LFE90   
LFE77: DEC    $ED,X   
       DEC    $F1,X   
       BNE    LFE83   
       DEC    $F3,X   
       LDA    $EF,X   
       STA    $F1,X   
LFE83: LDA    $F3,X   
       STA    AUDV0,X 
       LDA    $EB,X   
       CLC            
       ADC    $E9,X   
       STA    $EB,X   
       STA    AUDF0,X 
LFE90: DEX            
       BPL    LFE6F   
       RTS            

LFE94: .byte $FD
LFE95: .byte $01
LFE96: .byte $9F
LFE97: .byte $A1,$08,$00,$40,$51,$01,$00,$1F,$04,$E4,$FF,$6F,$14,$FE,$14,$4F
       .byte $53,$FC,$FF,$07,$34,$FC,$FD,$05,$3C,$04,$14,$42,$0C,$00,$03,$FF
       .byte $1C,$00,$01,$0F,$11,$00,$1F,$90,$03,$FF,$00,$1F,$0F,$FF,$FF,$08
       .byte $1C,$00,$02,$0F,$17,$01,$1F,$1F,$08,$10,$01,$3F,$44,$A2,$03,$86
       .byte $CF,$A9,$01,$95,$CA,$BD,$F8,$FA,$18,$69,$0F,$95,$C2,$A9,$08,$95
       .byte $BE,$CA,$10,$ED,$A0,$28,$20,$CB,$FF,$4C,$4A,$F9,$A0,$00,$84,$E6
       .byte $20,$CB,$FF,$4C,$4A,$F9,$A0,$E0,$A0
LFF00: TXA            
       PHA            
       LDY    #$0C    
       LDA    ($8A),Y 
       LDX    VSYNC   
       TAX            
       LDA    ($86),Y 
       STA    $8C     
       LDA    ($88),Y 
       STA    $8D     
       STA    WSYNC   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       JMP    LFF28   
LFF1B: LDA    ($8A),Y 
       LDX    VSYNC   
       TAX            
       LDA    ($88),Y 
       STA    $8D     
       LDA    ($86),Y 
       STA    $8C     
LFF28: LDA    ($80),Y 
       CMP    VSYNC   
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($84),Y 
       STA    GRP0    
       LDA    $8C     
       STA    GRP1    
       LDA    $8D     
       STA    GRP0    
       LDA    $8D     
       STX    GRP1    
       DEY            
       BPL    LFF1B   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       PLA            
       CLC            
       ADC    #$F2    
       TAX            
       RTS            

LFF53: STA    $A5     
       TXA            
       PHA            
       LDY    #$05    
       LDX    #$0B    
LFF5B: LDA    ($A5),Y 
       SEC            
       SBC    #$2A    
       ASL            
       STY    $8E     
       TAY            
       INY            
       LDA    LFC00,Y 
       STA    $80,X   
       DEY            
       DEX            
       LDA    LFC00,Y 
       STA    $80,X   
       DEX            
       LDY    $8E     
       DEY            
       BPL    LFF5B   
       PLA            
       TAX            
       RTS            

LFF7A: LDY    #$00    
LFF7C: SEC            
       STA    WSYNC   
       DEX            
LFF80: SBC    #$0F    
       BCS    LFF80   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA.wy $0010,Y 
       STA    WSYNC   
       DEX            
       STA.wy $0020,Y 
       INY            
       RTS            

LFF97: STA    $A3     
       JSR    LFF7A   
       LDA    $A3     
       CLC            
       ADC    #$10    
       JSR    LFF7C   
       DEX            
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFFAA: .byte $A2,$02,$A5,$E4,$D0,$08,$A2,$00,$A5,$E1,$F0,$02,$A2,$04,$A5,$CF
       .byte $A8,$29,$0F,$09,$30,$95,$91,$98,$4A,$4A,$4A,$4A,$09,$30,$95,$90
       .byte $60
LFFCB: INC    $E8     
       LDA    #$01    
       AND    $E8     
       TAX            
       LDA    LFE94,Y 
       STA    $E9,X   
       LDA    LFE95,Y 
       STA    $EB,X   
       LDA    LFE96,Y 
       STA    $ED,X   
       LDA    LFE97,Y 
       STA    AUDC0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $EF,X   
       STA    $F1,X   
       LDA    #$FF    
       STA    $F3,X   
       RTS            

LFFF3: .byte $F0,$C6,$A0,$C6,$D3,$C8,$A0,$A4,$A0,$1D,$F0,$E0,$88
