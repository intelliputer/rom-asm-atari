; Disassembly of roms/Space Robot.bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Space Robot.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RESP0   =  $10
HMP0    =  $20
HMOVE   =  $2A
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
TIM64T  =  $0296

       ORG $F000

START:
       JMP    LF03F   
LF003: LDX    #$04    
LF005: LDA    #$02    
       CPX    #$02    
       BCS    LF015   
       LDA    #$01    
       LDY    $A1     
       CPY    #$F0    
       BNE    LF015   
       LDA    #$FC    
LF015: CLC            
       ADC    $86,X   
       LDY    #$02    
       SEC            
LF01B: INY            
       SBC    #$0F    
       BCS    LF01B   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    WSYNC   
LF02A: DEY            
       BPL    LF02A   
       STA    RESP0,X 
       STA    HMP0,X  
       LDA    $A1     
       BNE    LF038   
       DEX            
       BPL    LF005   
LF038: STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       RTS            

LF03F: SEI            
       CLD            
       LDX    #$00    
       STX    SWACNT  
       TXA            
LF047: STA    VSYNC,X 
       INX            
       BNE    LF047   
       DEX            
       TXS            
       LDA    #$87    
       STA    $DB     
       LDA    #$01    
       STA    $E9     
       LDA    #$02    
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$30    
       STA    TIM64T  
       INC    $80     
       BNE    LF07F   
       INC    $E8     
       LDA    $DB     
       BPL    LF07F   
       LDA    $F8     
       BPL    LF07F   
       LDA    $F5     
       EOR    #$01    
       STA    $F5     
LF07F: LDA    $DC     
       BEQ    LF08A   
       DEC    $DC     
       BNE    LF08A   
       JSR    LFCAF   
LF08A: BIT    $DB     
       BPL    LF092   
       LDA    #$FF    
       STA    $DE     
LF092: LDA    $DE     
       CMP    #$E8    
       BNE    LF0C5   
       LDA    $E0     
       BNE    LF0B8   
       LDA    #$01    
       STA    $E0     
       LDA    $DD     
       BNE    LF0AB   
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       BEQ    LF0BB   
LF0AB: LDA    #$04    
       STA    $DF     
       DEC    $DD     
       LDA    #$00    
       LDY    #$00    
       JSR    LFCCB   
LF0B8: JMP    LF132   
LF0BB: LDA    #$E0    
       STA    $DE     
       LDA    #$00    
       STA    $DF     
       STA    $E0     
LF0C5: LDA    $DE     
       CMP    #$E0    
       BNE    LF10C   
       LDA    $80     
       AND    #$0F    
       BNE    LF132   
       LDX    $E0     
LF0D3: CPX    #$06    
       BEQ    LF0FA   
       LDY    LFE18,X 
       LDA    $A9     
       NOP            
       CMP    #$38    
       BEQ    LF0E4   
       INX            
       BNE    LF0D3   
LF0E4: LDA    LFF79   
       STA    $A9     
       NOP            
       INX            
       STX    $E0     
       LDA    #$00    
       LDY    #$00    
       JSR    LFCCB   
       LDA    #$05    
       STA    $DF     
       BNE    LF132   
LF0FA: LDA    #$A8    
       STA    $DE     
       LDA    #$04    
       STA    $E0     
       LDA    #$01    
       STA    $DF     
       JSR    LFD96   
       JMP    LF4D6   
LF10C: LDA    $DF     
       CMP    #$06    
       BEQ    LF132   
       BIT    $DE     
       BPL    LF132   
       LDA    $80     
       AND    #$03    
       BNE    LF132   
       DEC    $DE     
       BMI    LF123   
       JMP    LF1D8   
LF123: LDA    $DE     
       CMP    #$A0    
       BNE    LF132   
       LDA    #$32    
       STA    $90     
       STA    $8E     
       JSR    LFD16   
LF132: BIT    $DB     
       BVC    LF147   
       LDA    SWCHB   
       AND    #$03    
       BEQ    LF140   
       LSR            
       BCC    LF143   
LF140: JMP    LF210   
LF143: LDA    #$00    
       STA    $DB     
LF147: LDA    #$00    
       LDY    #$FF    
       LDX    #$0A    
LF14D: STA    $A9,X   
       STA    $AA,X   
       STY    $CC,X   
       DEX            
       DEX            
       BPL    LF14D   
       INY            
       LDX    #$05    
LF15A: STY    $EF,X   
       DEX            
       BPL    LF15A   
       STY    $ED     
       STY    $F5     
       STY    $FB     
       JSR    LFF43   
       NOP            
       LDY    $E9     
       LDA    LFE94,Y 
       LDX    #$3F    
       STX    $EC     
       CPY    #$18    
       BCC    LF188   
       TYA            
       SED            
       SEC            
       SBC    #$17    
       TAY            
       CLD            
       LDA    LFE94,Y 
       STX    $ED     
       ORA    #$80    
       LDX    #$01    
       STX    $F5     
LF188: STA    $F8     
       CPY    #$17    
       BNE    LF192   
       LDY    #$40    
       STY    $FB     
LF192: AND    #$0E    
       TAX            
       DEX            
       STX    $E7     
       LDA    #$64    
       STA    $93     
       STA    $94     
       LDA    $DB     
       ORA    #$40    
       STA    $DB     
       BIT    $DB     
       BMI    LF1D5   
       LDA    #$32    
       STA    $8E     
       STA    $90     
       LDX    #$01    
       STX    $DF     
       LDX    #$04    
       STX    $E0     
       LDA    #$13    
       BIT    $FB     
       BVC    LF1BE   
       LDA    #$FB    
LF1BE: LDY    $E7     
       INY            
LF1C1: CLC            
       ADC    #$0D    
       DEY            
       BPL    LF1C1   
       STA    $9B     
       LDA    #$B0    
       STA    $DE     
       LDA    $80     
       ORA    #$02    
       STA    $D8     
       STA    $D9     
LF1D5: JMP    LF210   
LF1D8: LDY    #$0F    
       LDA    $E7     
       CMP    #$10    
       BCS    LF1E1   
       TAY            
LF1E1: LDA    LFE6C,Y 
       BIT    $FB     
       BVC    LF1E9   
       LSR            
LF1E9: STA    $DE     
       LDA    LFE7E,Y 
       STA    $EB     
       LDA    #$0A    
       STA    $DD     
       LDA    $AD     
       LDY    #$01    
       LDX    #$02    
LF1FA: STA    $C4,X   
       STY    $C7,X   
       STY    $B5,X   
       DEC    $B5,X   
       DEX            
       BPL    LF1FA   
       STX    $91     
       STX    $92     
       INY            
       STY    $DF     
       LDA    #$40    
       STA    $DB     
LF210: LDY    #$1F    
       LDA    SWCHB   
       AND    #$03    
       BNE    LF21B   
       LDY    #$07    
LF21B: STY    $DA     
       LDA    SWCHB   
       LSR            
       LSR            
       LDA    #$FF    
       BCC    LF22A   
       STA    $EA     
       BNE    LF257   
LF22A: STA    $DB     
       LDA    $EA     
       BMI    LF236   
       EOR    $80     
       AND    $DA     
       BNE    LF257   
LF236: LDA    $80     
       AND    $DA     
       STA    $EA     
       SED            
       CLC            
       LDA    $E9     
       ADC    #$01    
       CMP    #$35    
       BNE    LF248   
       LDA    #$01    
LF248: STA    $E9     
       CLD            
       LDA    #$00    
       STA    $DF     
       STA    $E8     
       STA    $E7     
       STA    $8E     
       STA    $90     
LF257: BIT    $FB     
       BPL    LF25E   
       JMP    LF4D6   
LF25E: JSR    LFC92   
       LDX    $F5     
       LDA    INPT4,X 
       BPL    LF270   
       LDA    $A2     
       AND    #$F7    
       STA    $A2     
       JMP    LF2ED   
LF270: LDA    $A2     
       AND    #$08    
       BNE    LF2ED   
       LDX    #$02    
LF278: LDA    $B5,X   
       BPL    LF28F   
       DEX            
       BPL    LF278   
LF27F: LDA    $DF     
       AND    #$0F    
       BNE    LF2ED   
       STA    $E0     
       LDA    $DF     
       ORA    #$02    
       STA    $DF     
       BNE    LF2ED   
LF28F: LDA    #$08    
       ORA    $A2     
       STA    $A2     
       LDA    $DE     
       BMI    LF2ED   
       LDA    #$0A    
       BEQ    LF27F   
       NOP            
       NOP            
       BNE    LF2A4   
       JSR    LFCAF   
LF2A4: LDA    $DF     
       CMP    #$20    
       BCS    LF2B4   
       AND    #$0F    
       ORA    #$10    
       STA    $DF     
       LDA    #$0A    
       STA    $E1     
LF2B4: LDA    $AD     
       SEC            
       SBC    $90     
       BCS    LF2C1   
       INC    $C4,X   
       EOR    #$FF    
       ADC    #$01    
LF2C1: STA    $82     
       LDA    $8E     
       SEC            
       SBC    #$01    
       CMP    $82     
       BCC    LF2D5   
       STA    $83     
       LDA    #$C0    
       STA    $B5,X   
       JMP    LF2DF   
LF2D5: LDY    $82     
       STA    $82     
       STY    $83     
       LDA    #$80    
       STA    $B5,X   
LF2DF: LDA    $83     
       STA    $B8,X   
       STA    $BB,X   
       LDA    $82     
       STA    $BE,X   
       LDA    #$00    
       STA    $C1,X   
LF2ED: LDA    SWCHB   
       ASL            
       LDX    $F5     
       BNE    LF2F6   
       ASL            
LF2F6: LDY    #$03    
       BCC    LF2FB   
       INY            
LF2FB: STY    $DA     
       LDX    #$02    
LF2FF: LDA    $B5,X   
       BMI    LF306   
LF303: JMP    LF389   
LF306: AND    #$20    
       BNE    LF303   
       LDA    $C1,X   
       CLC            
       ADC    $BE,X   
       STA    $C1,X   
       CMP    $BB,X   
       BCC    LF340   
       SBC    $BB,X   
       STA    $C1,X   
       LDA    $B5,X   
       AND    #$40    
       BNE    LF329   
       LDA    $C7,X   
       CLC            
       ADC    $DA     
       STA    $C7,X   
       JMP    LF340   
LF329: LDA    $AD     
       CMP    $C4,X   
       BCS    LF339   
       LDA    $C4,X   
       CLC            
       ADC    $DA     
       STA    $C4,X   
       JMP    LF340   
LF339: LDA    $C4,X   
       SEC            
       SBC    $DA     
       STA    $C4,X   
LF340: LDA    $B5,X   
       AND    #$40    
       BEQ    LF350   
       LDA    $C7,X   
       CLC            
       ADC    $DA     
       STA    $C7,X   
       JMP    LF367   
LF350: LDA    $AD     
       CMP    $C4,X   
       BCS    LF360   
       LDA    $C4,X   
       CLC            
       ADC    $DA     
       STA    $C4,X   
       JMP    LF367   
LF360: LDA    $C4,X   
       SEC            
       SBC    $DA     
       STA    $C4,X   
LF367: LDA    $B8,X   
       SEC            
       SBC    $DA     
       STA    $B8,X   
       BCC    LF372   
       BNE    LF389   
LF372: LDA    #$20    
       ORA    $B5,X   
       STA    $B5,X   
       LDY    #$00    
       STY    $9E,X   
       LDA    $C4,X   
       SEC            
       SBC    #$04    
       STA    $A6,X   
       LDA    $C7,X   
       SBC    #$04    
       STA    $A3,X   
LF389: DEX            
       BMI    LF38F   
       JMP    LF2FF   
LF38F: LDX    $CA     
       LDY    #$54    
       LDA    $C4,X   
       STA    $89     
       LDA    $B5,X   
       AND    #$20    
       BNE    LF39F   
       LDY    $C7,X   
LF39F: STY    $84     
       LDA    $DE     
       BPL    LF3AC   
       CMP    #$A0    
       BCC    LF3AC   
       JMP    LF431   
LF3AC: LDA    SWCHA   
       LDY    $F5     
       BEQ    LF3B8   
       DEY            
       ASL            
       ASL            
       ASL            
       ASL            
LF3B8: STA    $DA     
       BIT    $FB     
       BVC    LF3C2   
       LDY    #$04    
       BNE    LF3C9   
LF3C2: LDA    $F8     
       LSR            
       BCC    LF3C9   
       LDY    #$02    
LF3C9: LDA    $8F     
       ROL    $DA     
       BCS    LF3DB   
       ADC    LFEAB,Y 
       STA    $8F     
       LDA    $90     
       ADC    LFEAC,Y 
       STA    $90     
LF3DB: ROL    $DA     
       BCS    LF3EE   
       SEC            
       LDA    $8F     
       SBC    LFEAB,Y 
       STA    $8F     
       LDA    $90     
       SBC    LFEAC,Y 
       STA    $90     
LF3EE: LDA    $8D     
       ROL    $DA     
       BCS    LF401   
       SEC            
       SBC    LFEAB,Y 
       STA    $8D     
       LDA    $8E     
       SBC    LFEAC,Y 
       STA    $8E     
LF401: ROL    $DA     
       BCS    LF411   
       ADC    LFEAB,Y 
       STA    $8D     
       LDA    $8E     
       ADC    LFEAC,Y 
       STA    $8E     
LF411: LDY    #$9C    
       CPY    $90     
       BCS    LF419   
       STY    $90     
LF419: LDY    #$08    
       CPY    $90     
       BCC    LF421   
       STY    $90     
LF421: LDY    #$0A    
       CPY    $8E     
       BCC    LF429   
       STY    $8E     
LF429: LDY    #$48    
       CPY    $8E     
       BCS    LF431   
       STY    $8E     
LF431: LDA    $90     
       STA    $8A     
       LDA    $8E     
       STA    $85     
       LDY    $92     
       LDA    $98     
       AND    #$02    
       BEQ    LF445   
       TYA            
       ORA    #$10    
       TAY            
LF445: LDA    $91     
       STY    $91     
       STA    $92     
       LDA    $93     
       LDY    $94     
       STY    $93     
       STA    $94     
       LDA    $97     
       LDY    $98     
       STY    $97     
       STA    $98     
       LDA    $95     
       LDY    $96     
       STY    $95     
       STA    $96     
       LDA    $9A     
       STA    $88     
       LDY    $99     
       STY    $9A     
       STA    $99     
       LDA    $91     
       CMP    #$FF    
       BNE    LF4A4   
       LDX    #$0A    
LF475: LDA    $A9     
       CMP    #$38    
       BEQ    LF486   
       DEX            
       DEX            
       BPL    LF475   
       LDA    $D8     
       AND    #$07    
       JMP    LF4A2   
LF486: LDA    $D8     
       AND    #$07    
       CMP    #$06    
       BCS    LF4A2   
       ASL            
       TAX            
LF490: LDA    $A9     
       CMP    #$38    
       BEQ    LF4A0   
       INX            
       INX            
       CPX    #$0C    
       BNE    LF490   
       LDX    #$00    
       BEQ    LF490   
LF4A0: TXA            
       LSR            
LF4A2: STA    $95     
LF4A4: LDA    $80     
       AND    #$01    
       TAX            
       LDA    $9C,X   
       CLC            
       ADC    $9B     
       STA    $9C,X   
       BCC    LF4D6   
       LDA    $93     
       CMP    #$64    
       BEQ    LF4D6   
       LDA    $97     
       AND    #$02    
       BEQ    LF4D4   
       BIT    $F8     
       BVC    LF4D4   
       LDA    $80     
       AND    #$01    
       TAX            
       LDA    $F9,X   
       BEQ    LF4D4   
       INC    $93     
       INC    $93     
       DEC    $F9,X   
       JMP    LF4D6   
LF4D4: DEC    $93     
LF4D6: LDX    $CA     
       DEX            
       BPL    LF4DD   
       LDX    #$02    
LF4DD: STX    $CA     
       LDA    $80     
       AND    #$0F    
       STA    $DA     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $DA     
       STA    $D7     
       LDY    #$30    
       LDA    $B5,X   
       AND    #$20    
       BEQ    LF4FB   
       LDA    $9E,X   
       TAX            
       LDY    LFF00,X 
LF4FB: STY    $8B     
       LDA    #$FF    
       STA    $8C     
       LDA    $A2     
       AND    #$7F    
       STA    $A2     
       LDY    #$10    
       LDA    #$F8    
       CPX    #$04    
       BCC    LF51D   
       CPX    #$0C    
       BCS    LF51D   
       LDA    $A2     
       ORA    #$80    
       STA    $A2     
       LDA    #$F0    
       LDY    #$15    
LF51D: STA    $A1     
       STY    $EE     
       LDX    $CA     
       LDA    $A3,X   
       BIT    $A2     
       BPL    LF52C   
       CLC            
       ADC    #$FC    
LF52C: STA    $83     
       LDA    $80     
       AND    #$03    
       BNE    LF54D   
       LDX    #$02    
LF536: INC    $9E,X   
       LDA    $9E,X   
       CMP    #$10    
       BNE    LF54A   
       LDA    #$00    
       STA    $B5,X   
       LDA    $AD     
       STA    $C4,X   
       LDA    #$01    
       STA    $C7,X   
LF54A: DEX            
       BPL    LF536   
LF54D: LDX    #$0A    
LF54F: LDA    $A9     
       CMP    #$38    
       BEQ    LF565   
       CMP    LFF79   
       BEQ    LF56B   
       CMP    #$B1    
       BEQ    LF56B   
       LDA    #$70    
       STA    $A9     
       BNE    LF56B   
       NOP            
LF565: LDA    #$FF    
       STA    $AC     
       STA    $AA     
LF56B: DEX            
       DEX            
       BPL    LF54F   
       LDA    #$38    
       STA    $86     
       LDA    #$40    
       STA    $87     
       LDA    $A1     
       STA    $DA     
       LDA    #$00    
       STA    $A1     
       JSR    LF003   
       LDA    $DA     
       STA    $A1     
       LDX    #$00    
       LDA    $DF     
       AND    #$0F    
       ASL            
       TAY            
       LDA    LF598,Y 
       PHA            
       LDA    LF597,Y 
       PHA            
       RTS            

LF597: .byte $54
LF598: .byte $F6,$C6,$F5,$F7,$F5,$DF,$F5,$A6,$F5,$F7,$F5,$A6,$F5,$16,$F6,$A5
       .byte $E0,$29,$03,$D0,$06,$A5,$D8,$29,$07,$85,$E1,$A0,$0C,$A2,$08,$A5
       .byte $E1,$C6,$E0,$D0,$57,$A9,$01,$85,$DF,$A9,$04,$85,$E0,$D0,$4D,$C6
       .byte $E0,$A5,$E0,$4C,$D8,$F5,$A5,$80,$29,$0F,$C9,$03,$B0,$3E,$49,$07
       .byte $0A,$AA,$A0,$08,$A9,$18,$D0,$34,$A5,$80,$A6,$E0,$29,$1F,$D0,$06
       .byte $E0,$0E,$F0,$02,$E6,$E0,$A5,$80,$29,$03,$09,$08,$A0,$05,$D0,$5D
       .byte $A4,$E0,$B9,$51,$FE,$A2,$08,$C8,$84,$E0,$C0,$08,$F0,$04,$A0,$05
       .byte $D0,$0A,$A5,$DF,$29,$F0,$85,$DF,$A2,$00,$86,$E0,$4C,$55,$F6,$A0
       .byte $08,$84,$15,$A5,$80,$29,$0F,$D0,$12,$E6,$E0,$A5,$E0,$C9,$10,$D0
       .byte $0A,$A9,$30,$85,$DF,$A2,$50,$86,$E1,$F0,$22,$A6,$E0,$86,$19,$8A
       .byte $85,$17,$49,$FF,$4C,$D0,$F6,$A5,$DE,$C9,$A0,$B0,$10,$A6,$E0,$8A
       .byte $E8,$E0,$14,$D0,$02,$A2,$04,$86,$E0,$A0,$0C,$A2,$08,$86,$19,$84
       .byte $15,$85,$17,$A2,$00,$A5,$DF,$29,$F0,$C9,$10,$F0,$2A,$C9,$20,$F0
       .byte $51,$C9,$30,$B0,$03,$4C,$D0,$F6,$C6,$E1,$F0,$2D,$A5,$E1,$29,$70
       .byte $4A,$4A,$4A,$4A,$A8,$BE,$8A,$F6,$A0,$08,$A5,$E1,$29,$0F,$09,$10
       .byte $D0,$46,$02,$04,$06,$08,$0E,$A0,$08,$A2,$06,$A5,$80,$29,$03,$D0
       .byte $04,$C6,$E1,$F0,$04,$A5,$E1,$D0,$2F,$A5,$DF,$29,$0F,$85,$DF,$24
       .byte $FB,$10,$0C,$A9,$C3,$85,$DB,$A9,$00,$85,$FB,$85,$E7,$85,$E8,$4C
       .byte $D0,$F6,$A4,$E1,$BE,$59,$FE,$A5,$80,$29,$07,$D0,$07,$C8,$84,$E1
       .byte $C0,$10,$F0,$D5,$A9,$1F,$A0,$08,$86,$1A,$84,$16,$85,$18,$A0,$00
       .byte $A2,$0F,$AD,$82,$02,$29,$08,$F0,$02,$A2,$FF,$24,$DB,$10,$06,$8A
       .byte $29,$F7,$AA,$A0,$FF,$86,$86,$98,$25,$E8,$85,$DA,$A2,$00,$A0,$00
       .byte $A5,$E7,$C9,$FF,$F0,$0B,$29,$0E,$4A,$85,$82,$0A,$0A,$18,$65,$82
       .byte $A8,$B9,$BA,$FE,$45,$DA,$25,$86,$95,$E2,$E8,$C8,$E0,$05,$D0,$F1
       .byte $24,$FB,$30,$14,$A4,$DF,$C0,$30,$90,$0E,$A5,$E1,$25,$86,$C0,$40
       .byte $90,$04,$85,$E2,$B0,$02,$85,$E5,$A6,$F5,$A5,$DB,$29,$04,$F0,$10
       .byte $A5,$E9,$95,$F3,$A0,$00,$94,$F1,$C8,$C9,$18,$90,$01,$C8,$94,$EF
       .byte $B5,$F3,$20,$8F,$FD,$A8,$B9,$ED,$FE,$85,$CB,$B5,$F3,$29,$0F,$A8
       .byte $B9,$ED,$FE,$85,$CD,$B5,$F1,$20,$8F,$FD,$A8,$B9,$ED,$FE,$85,$CF
       .byte $B5,$F1,$29,$0F,$A8,$B9,$ED,$FE,$85,$D1,$B5,$EF,$20,$8F,$FD,$A8
       .byte $B9,$ED,$FE,$85,$D3,$B5,$EF,$29,$0F,$A8,$B9,$ED,$FE,$85,$D5,$A2
       .byte $00,$A0,$30,$B5,$CB,$C9,$88,$D0,$08,$94,$CB,$E8,$E8,$E0,$0A,$D0
       .byte $F2,$A5,$DB,$29,$04,$F0,$06,$84,$D1,$84,$CF,$84,$D3,$A5,$D7,$25
       .byte $86,$85,$D7,$24,$FB,$10,$0C,$A5,$DF,$C9,$30,$D0,$06,$A5,$E1,$25
       .byte $86,$85,$E4,$EA,$20,$78,$FC,$25,$86,$85,$06,$85,$07,$A9,$03,$85
       .byte $05,$85,$25,$85,$26,$A5,$E4,$85,$09,$AD,$84,$02,$D0,$FB,$85,$02
       .byte $85,$01,$85,$81,$85,$22,$85,$23,$85,$24,$A9,$06,$85,$DA,$A4,$DA
       .byte $B1,$CB,$85,$1B,$85,$02,$B1,$CD,$85,$1C,$B1,$CF,$85,$1B,$B1,$D1
       .byte $85,$82,$B1,$D3,$AA,$B1,$D5,$A8,$A5,$82,$85,$1C,$86,$1B,$84,$1C
       .byte $84,$1B,$C6,$DA,$10,$D8,$85,$02,$A0,$00,$84,$25,$84,$26,$84,$1B
       .byte $84,$1C,$A0,$11,$84,$0A,$A5,$80,$29,$0F,$85,$08,$85,$02,$A5,$E3
       .byte $85,$06,$A5,$E4,$85,$09,$A5,$D7,$85,$07,$A4,$E6,$A5,$97,$29,$02
       .byte $D0,$09,$A8,$A5,$80,$29,$08,$D0,$02,$A0,$0F,$98,$25,$86,$85,$D7
       .byte $A6,$CA,$B5,$A6,$85,$87,$A5,$91,$85,$04,$A5,$EE,$85,$05,$A2,$01
       .byte $A9,$70,$8D,$95,$02,$4C,$08,$FC,$EA,$AD,$84,$02,$D0,$FB,$A0,$EA
       .byte $A5,$97,$29,$02,$F0,$0D,$98,$18,$E9,$0A,$4C,$78,$F8,$EA,$EA,$EA
       .byte $E9,$0B,$A8,$84,$AB,$A2,$48,$85,$02,$85,$2A,$18,$8A,$69,$0F,$E5
       .byte $93,$90,$09,$A8,$29,$F0,$D0,$04,$B1,$AB,$85,$1B,$85,$02,$A9,$00
       .byte $E4,$85,$D0,$02,$A9,$02,$85,$1F,$8A,$38,$E5,$83,$A8,$24,$A2,$10
       .byte $03,$4A,$A8,$0A,$25,$A1,$D0,$05,$B1,$8B,$4C,$B7,$F8,$A9,$00,$85
       .byte $1C,$A9,$00,$E4,$84,$D0,$02,$A9,$02,$85,$1E,$CA,$D0,$B9,$85,$02
       .byte $A2,$02,$A5,$84,$C9,$01,$F0,$05,$A2,$00,$4C,$D7,$F8,$EA,$EA,$86
       .byte $1E,$A9,$00,$85,$1D,$85,$1D,$85,$10,$A5,$E5,$85,$08,$A5,$E2,$85
       .byte $06,$85,$07,$85,$07,$A0,$08,$A9,$30,$A2,$84,$85,$11,$84,$1E,$84
       .byte $1E,$A9,$03,$85,$04,$85,$05,$A9,$00,$C5,$B5,$D0,$0B,$C5,$B6,$D0
       .byte $07,$C5,$B7,$D0,$03,$20,$D1,$FB,$4C,$21,$F9,$10,$86,$1B,$B1,$B3
       .byte $AA,$B1,$AF,$85,$1C,$B1,$B1,$85,$1C,$A6,$F5,$85,$02,$B1,$A9,$EA
       .byte $85,$1B,$85,$1C,$88,$10,$F4,$A9,$37,$85,$08,$A0,$08,$85,$02,$B9
       .byte $7F,$FF,$85,$0D,$85,$0E,$85,$0F,$88,$10,$F2,$85,$02,$A5,$E5,$85
       .byte $09,$A9,$00,$85,$1B,$85,$1C,$20,$4C,$FF,$85,$08,$A0,$05,$85,$02
       .byte $B5,$AF,$09,$0F,$85,$0D,$B5,$B1,$85,$0E,$B5,$B3,$85,$0F,$88,$D0
       .byte $ED,$85,$02,$84,$0D,$84,$0E,$84,$0F,$A9,$1A,$8D,$96,$02,$A5,$91
       .byte $C9,$FF,$D0,$15,$24,$DE,$30,$11,$20,$81,$FA,$90,$09,$A5,$94,$C9
       .byte $64,$D0,$03,$20,$F4,$FC,$4C,$6F,$FA,$A4,$93,$D0,$23,$A5,$DF,$29
       .byte $0F,$09,$30,$85,$DF,$A9,$50,$85,$E1,$A0,$FF,$84,$91,$A9,$65,$85
       .byte $93,$A6,$F5,$B5,$AF,$09,$0F,$95,$AF,$20,$B2,$FB,$4C,$6F,$FA,$EA
       .byte $29,$07,$AA,$BD,$EE,$FD,$85,$88,$BC,$F6,$FD,$B9,$1E,$FE,$85,$8B
       .byte $B9,$1F,$FE,$85,$8C,$A4,$88,$A5,$99,$18,$71,$8B,$A4,$93,$84,$83
       .byte $85,$82,$A6,$CA,$B5,$B5,$29,$20,$F0,$39,$B4,$C7,$B5,$C4,$AA,$20
       .byte $4C,$FC,$85,$82,$A6,$CA,$B4,$9E,$A5,$97,$29,$02,$F0,$1E,$24,$F8
       .byte $50,$1A,$B9,$DF,$FD,$C5,$82,$90,$1A,$A5,$82,$C9,$1F,$90,$17,$A5
       .byte $80,$29,$01,$AA,$A9,$01,$95,$F9,$D0,$09,$90,$07,$B9,$DF,$FD,$C5
       .byte $82,$B0,$03,$4C,$68,$FA,$A0,$00,$A5,$97,$29,$02,$20,$2B,$FC,$A9
       .byte $25,$20,$CB,$FC,$A5,$DF,$C9,$40,$B0,$0A,$29,$0F,$09,$20,$85,$DF
       .byte $A9,$00,$85,$E1,$A5,$8B,$18,$69,$0D,$85,$8B,$A4,$88,$B1,$8B,$85
       .byte $91,$C9,$FF,$D0,$06,$A9,$65,$85,$93,$D0,$1C,$A5,$8B,$18,$69,$0D
       .byte $85,$8B,$A5,$99,$18,$71,$8B,$85,$99,$A5,$8B,$38,$E9,$1A,$85,$8B
       .byte $C6,$88,$30,$03,$4C,$CD,$F9,$AD,$84,$02,$D0,$FB,$A9,$02,$85,$02
       .byte $85,$01,$A9,$00,$85,$09,$4C,$56,$F0,$A0,$00,$A5,$97,$29,$02,$F0
       .byte $0C,$A5,$98,$29,$02,$D0,$06,$A5,$DF,$29,$F0,$85,$DF,$84,$97,$24
       .byte $DE,$30,$08,$A5,$DE,$D0,$26,$A5,$EB,$D0,$06,$A9,$64,$85,$93,$38
       .byte $60,$A0,$02,$84,$E0,$A0,$FF,$84,$97,$A5,$80,$29,$01,$AA,$C8,$94
       .byte $F9,$C6,$EB,$A5,$DF,$29,$F0,$09,$03,$85,$DF,$D0,$0A,$A5,$D8,$29
       .byte $18,$D0,$04,$A5,$EB,$D0,$DA,$A4,$95,$B9,$05,$FE,$85,$82,$24,$97
       .byte $30,$11,$A5,$DE,$C9,$04,$B0,$07,$A8,$B9,$15,$FE,$4C,$FA,$FA,$C0
       .byte $06,$90,$04,$A9,$00,$F0,$0B,$A5,$D8,$4A,$4A,$4A,$29,$07,$A8,$B9
       .byte $0D,$FE,$A8,$85,$91,$B9,$FD,$FD,$85,$83,$A5,$D8,$C9,$A0,$90,$01
       .byte $4A,$18,$65,$83,$C9,$A0,$90,$01,$4A,$38,$E5,$83,$85,$99,$C5,$82
       .byte $B0,$34,$18,$65,$83,$C5,$82,$90,$29,$A5,$82,$18,$65,$83,$C9,$A0
       .byte $B0,$0A,$A5,$83,$4A,$18,$65,$99,$C5,$82,$B0,$0F,$A5,$82,$C5,$83
       .byte $90,$09,$A2,$10,$A5,$83,$18,$65,$99,$D0,$0F,$A2,$F0,$A5,$99,$4C
       .byte $52,$FB,$A2,$F0,$D0,$EE,$A2,$10,$A5,$99,$86,$DA,$AA,$A5,$97,$29
       .byte $02,$05,$DA,$85,$97,$8A,$A0,$63,$84,$93,$38,$E5,$82,$B0,$04,$49
       .byte $FF,$69,$01,$84,$81,$20,$7E,$FB,$86,$87,$A2,$00,$85,$DA,$20,$82
       .byte $FB,$86,$86,$4C,$9C,$FB,$85,$DA,$A9,$00,$A0,$07,$26,$DA,$2A,$B0
       .byte $0E,$C5,$81,$90,$02,$E5,$81,$88,$10,$F2,$26,$DA,$A6,$DA,$60,$E5
       .byte $81,$38,$B0,$F3,$A5,$86,$85,$95,$A5,$97,$29,$02,$D0,$0A,$A4,$91
       .byte $A5,$DE,$18,$F9,$EE,$FD,$85,$DE,$18,$60,$A6,$F5,$36,$AF,$76,$B1
       .byte $36,$B3,$10,$05,$AC,$79,$FF,$84,$A9,$A9,$00,$85,$DE,$85,$EB,$C8
       .byte $D0,$06,$A5,$97,$29,$02,$D0,$E4,$60,$A2,$06,$BD,$04,$FE,$C5,$90
       .byte $90,$03,$CA,$D0,$F6,$85,$AD,$85,$C4,$85,$C5,$85,$C6,$60,$EB,$FB
       .byte $18,$65,$87,$85,$81,$A0,$00,$B9,$A0,$EA,$A5,$97,$29,$02,$F0,$0D
       .byte $98,$18,$E9,$0A,$24,$80,$29,$07,$D0,$03,$E9,$0B,$A8,$84,$AB,$60
       .byte $20,$05,$F0,$A9,$00,$85,$21,$A5,$88,$85,$86,$A5,$A1,$85,$DA,$A9
       .byte $0F,$85,$A1,$A2,$00,$20,$05,$F0,$A5,$DA,$85,$A1,$A9,$00,$85,$20
       .byte $4C,$61,$F8,$F0,$0D,$A6,$F5,$A5,$B3,$30,$07,$56,$B3,$36,$B1,$76
       .byte $AF,$C8,$60,$FE,$C5,$90,$90,$03,$CA,$D0,$F6,$85,$AD,$85,$C4,$85
       .byte $C5,$85,$C6,$60,$8A,$38,$E5,$82,$B0,$04,$49,$FF,$69,$01,$85,$82
       .byte $98,$38,$E5,$83,$B0,$04,$49,$FF,$69,$01,$C5,$82,$90,$05,$A6,$82
       .byte $85,$82,$8A,$4A,$4A,$85,$83,$0A,$18,$65,$83,$4A,$18,$65,$82,$60
       .byte $A5,$E5,$45,$DA,$09,$66,$A6,$F5,$F0,$02,$29,$1F,$60,$18,$65,$DA
       .byte $90,$02,$E6,$87,$CA,$D0,$EF,$85,$86,$60
LFC92: ASL    $D8     
       ROL    $D9     
       BPL    LFC9A   
       INC    $D8     
LFC9A: LDA    $D8     
       BIT    LFCAE   
       BEQ    LFCA5   
       EOR    #$01    
       STA    $D8     
LFCA5: ORA    $D9     
       BNE    LFCAB   
       INC    $D8     
LFCAB: LDA    $D8     
       RTS            

LFCAE: .byte $02
LFCAF: LDA    #$0A    
       STA    $DD     
       AND    #$03    
       BEQ    LFCC1   
       CMP    #$01    
       BEQ    LFCC0   
       LDA    #$00    
       STA    $DD     
       RTS            

LFCC0: NOP            
LFCC1: TYA            
       ORA    $DB     
       STA    $DB     
       LDA    #$0A    
       STA    $DD     
       RTS            

LFCCB: STA    $DA     
       LDX    #$05    
       LDA    $E7     
       CMP    #$0C    
       BCS    LFCD7   
       LSR            
       TAX            
LFCD7: STX    $82     
LFCD9: LDX    $F5     
       LDA    $DA     
       SED            
       CLC            
       ADC    $EF,X   
       STA    $EF,X   
       TYA            
       ADC    $F1,X   
       STA    $F1,X   
       LDA    #$00    
       ADC    $F3,X   
       STA    $F3,X   
       CLD            
       DEC    $82     
       BPL    LFCD9   
       RTS            

LFCF4: .byte $A2,$00,$8A,$A4,$A9,$38,$C0,$38,$F0,$01,$18,$2A,$E8,$E8,$E0,$0C
       .byte $D0,$F1,$A6,$F5,$95,$EC
LFD0A: LDX    #$FF    
       STX    $DE     
       INX            
       STX    $90     
       STX    $8E     
       STX    $E0     
       RTS            

LFD16: BIT    $F8     
       BMI    LFD3A   
       LDA    $EC     
       BNE    LFD63   
LFD1E: LDA    #$07    
       STA    $DF     
       LDX    #$FF    
       STX    $FB     
       LDA    $E9     
       CMP    #$13    
       BNE    LFD0A   
       LDA    $F1     
       ORA    $F3     
       BNE    LFD0A   
       LDA    #$B1    
       NOP            
       NOP            
       NOP            
       NOP            
       BNE    LFD0A   
LFD3A: LDX    $F5     
       LDA    $EC,X   
       BNE    LFD4D   
       TXA            
       EOR    #$01    
       TAX            
       LDA    $EC,X   
       BEQ    LFD1E   
       STX    $F5     
       JMP    LFD63   
LFD4D: TXA            
       EOR    #$01    
       TAX            
       LDA    $EC,X   
       BEQ    LFD5A   
       STX    $F5     
       JMP    LFD63   
LFD5A: TXA            
       EOR    #$01    
       STA    $F5     
       TAX            
       JMP    LFD67   
LFD63: LDX    $F5     
       BNE    LFD7C   
LFD67: INC    $E7     
       LDA    $E7     
       CMP    #$0C    
       BCS    LFD7C   
       LDA    $9B     
       CLC            
       ADC    #$08    
       BIT    $FB     
       BVS    LFD7A   
       ADC    #$05    
LFD7A: STA    $9B     
LFD7C: LDA    $EC,X   
       LDX    #$0A    
LFD80: LSR            
       LDY    #$38    
       BCS    LFD88   
       LDY    LFF79   
LFD88: STY    $A9     
       DEX            
       DEX            
       BPL    LFD80   
       RTS            

LFD8F: .byte $29,$F0,$4A,$4A,$4A,$4A,$60
LFD96: LDX    $F5     
       LDA    $F3,X   
       CMP    $F6,X   
       BEQ    LFDDE   
       LDA    $EC,X   
       CMP    #$3F    
       BEQ    LFDDE   
       LDA    #$06    
       STA    $DF     
       LDA    #$A0    
       STA    $E0     
       LDA    $D8     
       AND    #$07    
       CMP    #$06    
       BCC    LFDB6   
       SBC    #$04    
LFDB6: TAY            
       LDA    LFE8E,Y 
       STA    $DA     
LFDBC: LDA    $DA     
       AND    $EC,X   
       BEQ    LFDCC   
       LSR    $DA     
       BCC    LFDBC   
       LDA    #$20    
       STA    $DA     
       BNE    LFDBC   
LFDCC: LDA    $EC,X   
       ORA    #$00    
       STA    $EC,X   
       LDA    $F6,X   
       SED            
       CLC            
       ADC    #$01    
       CLD            
       STA    $F6,X   
       JMP    LFD96   
LFDDE: RTS            

LFDDF: .byte $01,$02,$03,$04,$02,$04,$06,$08,$06,$04,$02,$04,$03,$02,$01,$00
       .byte $01,$01,$02,$01,$00,$02,$01,$00,$02,$06,$04,$0A,$00,$08,$00,$10
       .byte $20,$20,$40,$00,$40,$00,$18,$28,$38,$6A,$7A,$8A,$50,$50,$00,$01
       .byte $02,$03,$04,$00,$06,$04,$00,$00,$02
LFE18: .byte $06,$08,$04,$00,$02,$0A,$2A,$FE,$2B,$FE,$2D,$FE,$30,$FE,$32,$FE
       .byte $35,$FE,$06,$06,$16,$06,$16,$26,$06,$26,$06,$26,$46,$06,$46,$FF
       .byte $00,$00,$01,$02,$01,$00,$00,$02,$04,$02,$00,$00,$00,$10,$00,$10
       .byte $00,$00,$20,$00,$20,$00,$00,$40,$00,$0C,$0A,$08,$06,$04,$02,$00
       .byte $00,$0F,$0C,$0A,$08,$0A,$08,$08,$06,$04,$04,$08,$08,$06,$04,$02
       .byte $13,$14,$15,$16
LFE6C: .byte $0C,$0F,$12,$0C,$10,$0E,$11,$0A,$0D,$10,$13,$0C,$0E,$10,$12,$14
       .byte $A0,$80
LFE7E: .byte $00,$00,$00,$00,$00,$01,$01,$02,$03,$04,$04,$05,$05,$06,$06,$07
LFE8E: .byte $20,$10,$08,$04,$02,$01
LFE94: .byte $00,$00,$01,$40,$41,$06,$07,$46,$47,$0A,$00,$00,$00,$00,$00,$00
       .byte $0B,$4A,$4B,$0E,$0F,$4E,$4F
LFEAB: .byte $00
LFEAC: .byte $01,$80,$01,$80,$00,$98,$A8,$C8,$AE,$98,$98,$EF,$00,$00,$84,$48
       .byte $00,$D4,$47,$84,$CE,$00,$D8,$0E,$DA,$48,$00,$84,$88,$8A,$1A,$00
       .byte $44,$24,$28,$4C,$84,$DA,$DA,$88,$0E,$C4,$00,$0E,$1A,$0E,$74,$C8
       .byte $CA,$44,$00,$1A,$C8,$44,$30,$F2,$EE,$EA,$E6,$E2,$DE,$DA,$D6,$D2
       .byte $CE,$88,$8F,$96,$9D,$A4,$AB,$B2,$B9,$C0,$C7,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LFF00: .byte $10,$18,$20,$28,$10,$18,$20,$28,$28,$20,$18,$10,$28,$20,$18,$10
       .byte $00,$00,$00,$00,$10,$00,$00,$00,$00,$00,$00,$10,$28,$10,$00,$00
       .byte $00,$00,$10,$28,$44,$28,$10,$00,$00,$10,$7C,$6C,$C6,$6C,$7C,$10
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$63,$55,$2A,$36,$2A,$14,$08,$36
       .byte $49,$00,$FF
LFF43: STY    $F6     
       STY    $F7     
       LDA    #$38    
       STA    $A9     
       RTS            

LFF4C: .byte $A5,$80,$29,$F0,$85,$DA,$4A,$4A,$4A,$4A,$05,$DA,$60,$FF,$FF,$7E
       .byte $00,$00,$FF,$18,$18,$18,$DB,$FF,$FF,$7E,$00,$FF,$18,$18,$18,$18
       .byte $00,$81,$C3,$7E,$63,$55,$2A,$36,$2A,$14,$08,$36,$49
LFF79: .byte $70,$FF,$43,$FF,$55,$FF,$00,$00,$00,$00,$00,$80,$C4,$EE,$FF,$7C
       .byte $C6,$E6,$D6,$CE,$C6,$7C,$FC,$30,$30,$30,$30,$70,$30,$FE,$E0,$78
       .byte $3C,$0E,$C6,$7C,$7C,$C6,$06,$3C,$18,$0C,$7E,$0C,$0C,$FE,$CC,$6C
       .byte $3C,$1C,$7C,$C6,$06,$06,$FC,$C0,$FC,$7C,$C6,$C6,$FC,$C0,$60,$3C
       .byte $30,$30,$30,$18,$0C,$C6,$FE,$7C,$C6,$C6,$7C,$C6,$C6,$7C,$78,$0C
       .byte $06,$7E,$C6,$C6,$7C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18
       .byte $E7,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$E7,$18,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$66,$24,$99,$BD,$FF,$FF,$66,$7E,$24
       .byte $00,$00,$F0,$00,$F0,$00,$F0
