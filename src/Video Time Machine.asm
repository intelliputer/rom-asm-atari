; Disassembly of roms/Video Time Machine.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Video Time Machine.bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF007: STA    VSYNC,X 
       DEX            
       BNE    LF007   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$0C    
       STA    $84     
       LDA    #$3C    
       STA    $83     
       LDA    #$05    
       STA    $9D     
       LDA    #$0A    
       STA    $9C     
       LDA    #$01    
       STA    $E6     
       LDA    #$3C    
       STA    $99     
       STA    $82     
       LDA    #$03    
       STA    $E7     
       LDA    #$0C    
       STA    $E8     
LF032: JSR    LF047   
       JSR    LF05D   
       JSR    LF191   
       JSR    LF229   
       JSR    LF359   
       JSR    LF51F   
       JMP    LF032   
LF047: LDX    #$00    
       LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       RTS            

LF05D: LDY    #$06    
       LDA    #$3C    
       SEC            
       SBC    $83     
       STA    $97     
       CMP    #$00    
       BEQ    LF07E   
       CMP    #$32    
       BPL    LF092   
       CMP    #$28    
       BPL    LF0A6   
       CMP    #$1E    
       BPL    LF0BA   
       CMP    #$14    
       BPL    LF0CE   
       CMP    #$0A    
       BPL    LF0E2   
LF07E: LDA    #$05    
       STA    $E4     
       LDA    LF671,Y 
       AND    #$F0    
       STA.wy $0087,Y 
       DEY            
       BPL    LF07E   
       LDA    #$00    
       JMP    LF0F3   
LF092: LDA    #$04    
       STA    $E4     
       LDA    LF694,Y 
       AND    #$F0    
       STA.wy $0087,Y 
       DEY            
       BPL    LF092   
       LDA    #$32    
       JMP    LF0F3   
LF0A6: LDA    #$03    
       STA    $E4     
       LDA    LF68D,Y 
       AND    #$F0    
       STA.wy $0087,Y 
       DEY            
       BPL    LF0A6   
       LDA    #$28    
       JMP    LF0F3   
LF0BA: LDA    #$02    
       STA    $E4     
       LDA    LF686,Y 
       AND    #$F0    
       STA.wy $0087,Y 
       DEY            
       BPL    LF0BA   
       LDA    #$1E    
       JMP    LF0F3   
LF0CE: LDA    #$01    
       STA    $E4     
       LDA    LF67F,Y 
       AND    #$F0    
       STA.wy $0087,Y 
       DEY            
       BPL    LF0CE   
       LDA    #$14    
       JMP    LF0F3   
LF0E2: LDA    #$00    
       STA    $E4     
       LDA    LF678,Y 
       AND    #$F0    
       STA.wy $0087,Y 
       DEY            
       BPL    LF0E2   
       LDA    #$0A    
LF0F3: STA    $80     
       LDA    $97     
       SEC            
       SBC    $80     
       ASL            
       TAX            
       LDA    LF17D,X 
       STA    $80     
       LDA    LF17E,X 
       STA    $81     
       LDY    #$06    
LF108: LDA    ($80),Y 
       AND    #$0F    
       ORA.wy $0087,Y 
       STA.wy $0087,Y 
       DEY            
       BPL    LF108   
       LDY    #$06    
       LDA    #$18    
       SEC            
       SBC    $84     
       STA    $98     
       CMP    #$00    
       BEQ    LF12A   
       CMP    #$14    
       BPL    LF14A   
       CMP    #$0A    
       BPL    LF13A   
LF12A: LDA    LF671,Y 
       AND    #$F0    
       STA.wy $008F,Y 
       DEY            
       BPL    LF12A   
       LDA    #$00    
       JMP    LF15A   
LF13A: LDA    LF678,Y 
       AND    #$F0    
       STA.wy $008F,Y 
       DEY            
       BPL    LF13A   
       LDA    #$0A    
       JMP    LF15A   
LF14A: LDA    LF67F,Y 
       AND    #$F0    
       STA.wy $008F,Y 
       DEY            
       BPL    LF14A   
       LDA    #$14    
       JMP    LF15A   
LF15A: STA    $80     
       LDA    $98     
       SEC            
       SBC    $80     
       ASL            
       TAX            
       LDA    LF17D,X 
       STA    $80     
       LDA    LF17E,X 
       STA    $81     
       LDY    #$06    
LF16F: LDA    ($80),Y 
       AND    #$0F    
       ORA.wy $008F,Y 
       STA.wy $008F,Y 
       DEY            
       BPL    LF16F   
       RTS            

LF17D: .byte $71
LF17E: .byte $F6,$78,$F6,$7F,$F6,$86,$F6,$8D,$F6,$94,$F6,$9B,$F6,$A2,$F6,$A9
       .byte $F6,$B0,$F6
LF191: LDA    $9E     
       CMP    #$00    
       BNE    LF1C8   
       LDA    $E4     
       ASL            
       TAX            
       LDA    LF1F9,X 
       STA    $80     
       LDA    LF1FA,X 
       STA    $81     
       LDY    #$10    
LF1A7: LDA    ($80),Y 
       STA.wy $00A0,Y 
       DEY            
       BPL    LF1A7   
       LDA    $E4     
       ASL            
       TAX            
       LDA    LF211,X 
       STA    $80     
       LDA    LF212,X 
       STA    $81     
       LDY    #$10    
LF1BF: LDA    ($80),Y 
       STA.wy $00B1,Y 
       DEY            
       BPL    LF1BF   
       RTS            

LF1C8: LDA    $E4     
       ASL            
       TAX            
       LDA    LF205,X 
       STA    $80     
       LDA    LF206,X 
       STA    $81     
       LDY    #$10    
LF1D8: LDA    ($80),Y 
       STA.wy $00A0,Y 
       DEY            
       BPL    LF1D8   
       LDA    $E4     
       ASL            
       TAX            
       LDA    LF21D,X 
       STA    $80     
       LDA    LF21E,X 
       STA    $81     
       LDY    #$10    
LF1F0: LDA    ($80),Y 
       STA.wy $00B1,Y 
       DEY            
       BPL    LF1F0   
       RTS            

LF1F9: .byte $1D
LF1FA: .byte $F7,$2E,$F7,$3F,$F7,$50,$F7,$61,$F7,$72,$F7
LF205: .byte $81
LF206: .byte $F9,$92,$F9,$A3,$F9,$B4,$F9,$C5,$F9,$D6,$F9
LF211: .byte $B7
LF212: .byte $F6,$C8,$F6,$D9,$F6,$EA,$F6,$FB,$F6,$0C,$F7
LF21D: .byte $1B
LF21E: .byte $F9,$2C,$F9,$3D,$F9,$4E,$F9,$5F,$F9,$70,$F9
LF229: LDA    $9E     
       CMP    #$00    
       BNE    LF260   
       LDA    $84     
       ASL            
       TAX            
       LDA    LF291,X 
       STA    $80     
       LDA    LF292,X 
       STA    $81     
       LDY    #$10    
LF23F: LDA    ($80),Y 
       STA.wy $00C2,Y 
       DEY            
       BPL    LF23F   
       LDA    $84     
       ASL            
       TAX            
       LDA    LF2F5,X 
       STA    $80     
       LDA    LF2F6,X 
       STA    $81     
       LDY    #$10    
LF257: LDA    ($80),Y 
       STA.wy $00D3,Y 
       DEY            
       BPL    LF257   
       RTS            

LF260: LDA    $84     
       ASL            
       TAX            
       LDA    LF2C3,X 
       STA    $80     
       LDA    LF2C4,X 
       STA    $81     
       LDY    #$10    
LF270: LDA    ($80),Y 
       STA.wy $00C2,Y 
       DEY            
       BPL    LF270   
       LDA    $84     
       ASL            
       TAX            
       LDA    LF327,X 
       STA    $80     
       LDA    LF328,X 
       STA    $81     
       LDY    #$10    
LF288: LDA    ($80),Y 
       STA.wy $00D3,Y 
       DEY            
       BPL    LF288   
       RTS            

LF291: .byte $83
LF292: .byte $F7,$94,$F7,$A5,$F7,$B6,$F7,$C7,$F7,$D8,$F7,$E9,$F7,$FA,$F7,$0B
       .byte $F8,$1C,$F8,$2D,$F8,$3E,$F8,$83,$F7,$94,$F7,$A5,$F7,$B6,$F7,$C7
       .byte $F7,$D8,$F7,$E9,$F7,$FA,$F7,$0B,$F8,$1C,$F8,$2D,$F8,$3E,$F8,$83
       .byte $F7
LF2C3: .byte $E7
LF2C4: .byte $F9,$F8,$F9,$09,$FA,$1A,$FA,$2B,$FA,$3C,$FA,$4D,$FA,$5E,$FA,$6F
       .byte $FA,$80,$FA,$91,$FA,$A2,$FA,$E7,$F9,$F8,$F9,$09,$FA,$1A,$FA,$2B
       .byte $FA,$3C,$FA,$4D,$FA,$5E,$FA,$6F,$FA,$80,$FA,$91,$FA,$A2,$FA,$E7
       .byte $F9
LF2F5: .byte $4F
LF2F6: .byte $F8,$60,$F8,$71,$F8,$82,$F8,$93,$F8,$A4,$F8,$B5,$F8,$C6,$F8,$D7
       .byte $F8,$E8,$F8,$F9,$F8,$0A,$F9,$4F,$F8,$60,$F8,$71,$F8,$82,$F8,$93
       .byte $F8,$A4,$F8,$B5,$F8,$C6,$F8,$D7,$F8,$E8,$F8,$F9,$F8,$0A,$F9,$4F
       .byte $F8
LF327: .byte $B3
LF328: .byte $FA,$C4,$FA,$D5,$FA,$E6,$FA,$F7,$FA,$08,$FB,$19,$FB,$2A,$FB,$3B
       .byte $FB,$4C,$FB,$5D,$FB,$6E,$FB,$B3,$FA,$C4,$FA,$D5,$FA,$E6,$FA,$F7
       .byte $FA,$08,$FB,$19,$FB,$2A,$FB,$3B,$FB,$4C,$FB,$5D,$FB,$6E,$FB,$B3
       .byte $FA
LF359: LDA    INTIM   
       BNE    LF359   
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$28    
LF364: STA    WSYNC   
       DEX            
       BPL    LF364   
       STA    WSYNC   
       LDX    $9C     
       LDA    LF481,X 
       STA    HMP0    
       AND    #$0F    
       TAX            
LF375: DEX            
       BPL    LF375   
       STA    RESP0   
       STA    WSYNC   
       LDA    $9C     
       ADC    #$02    
       TAX            
       LDA    LF481,X 
       STA    HMP1    
       AND    #$0F    
       TAX            
LF389: DEX            
       BPL    LF389   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$10    
       LDA.wy $00A0,Y 
       STA    COLUP0  
       LDA.wy $00B1,Y 
       STA    COLUP1  
       DEY            
       STA    WSYNC   
LF3AB: LDA.wy $00A0,Y 
       STA    GRP0    
       LDA.wy $00B1,Y 
       STA    GRP1    
       STA    WSYNC   
       DEY            
       BPL    LF3AB   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$07    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       LDX    #$2A    
       LDA    LF481,X 
       STA    HMP0    
       AND    #$0F    
       TAX            
LF3D6: DEX            
       BPL    LF3D6   
       STA    RESP0   
       STA    WSYNC   
       LDX    #$58    
       LDA    LF481,X 
       STA    HMP1    
       AND    #$0F    
       TAX            
LF3E7: DEX            
       BPL    LF3E7   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$06    
       LDA    $9B     
       STA    $9A     
       STA    COLUP0  
       STA    COLUP1  
LF3FA: LDA.wy $008F,Y 
       STA    GRP0    
       LDA.wy $0087,Y 
       STA    GRP1    
       STA    WSYNC   
       LDX    #$06    
LF408: INC    $9A     
       INC    $9A     
       LDA    $9A     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       DEX            
       BPL    LF408   
       DEY            
       BPL    LF3FA   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       INC    $9B     
       STA    WSYNC   
       LDX    $E5     
       LDA    LF481,X 
       STA    HMP0    
       AND    #$0F    
       TAX            
LF42E: DEX            
       BPL    LF42E   
       STA    RESP0   
       STA    WSYNC   
       LDA    $E5     
       ADC    #$02    
       TAX            
       LDA    LF481,X 
       STA    HMP1    
       AND    #$0F    
       TAX            
LF442: DEX            
       BPL    LF442   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$10    
       LDA.wy $00C2,Y 
       STA    COLUP0  
       LDA.wy $00D3,Y 
       STA    COLUP1  
       DEY            
       STA    WSYNC   
LF464: LDA.wy $00C2,Y 
       STA    GRP0    
       LDA.wy $00D3,Y 
       STA    GRP1    
       STA    WSYNC   
       DEY            
       BPL    LF464   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    #$36    
LF47B: STA    WSYNC   
       DEX            
       BPL    LF47B   
       RTS            

LF481: .byte $00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$71,$61,$51,$41,$31,$21,$11,$01
       .byte $F1,$E1,$D1,$C1,$B1,$A1,$91,$72,$62,$52,$42,$32,$22,$12,$02,$F2
       .byte $E2,$D2,$C2,$B2,$A2,$92,$73,$63,$53,$43,$33,$23,$13,$03,$F3,$E3
       .byte $D3,$C3,$B3,$A3,$93,$74,$64,$54,$44,$34,$24,$14,$04,$F4,$E4,$D4
       .byte $C4,$B4,$A4,$94,$75,$65,$55,$45,$35,$25,$15,$05,$F5,$E5,$D5,$C5
       .byte $B5,$A5,$95,$76,$66,$56,$46,$36,$26,$16,$06,$F6,$E6,$D6,$C6,$B6
       .byte $A6,$96,$77,$67,$57,$47,$37,$27,$17,$07,$F7,$E7,$D7,$C7,$B7,$A7
       .byte $97,$78,$68,$58,$48,$38,$28,$18,$08,$F8,$E8,$D8,$C8,$B8,$A8,$98
       .byte $79,$69,$59,$49,$39,$29,$19,$09,$F9,$E9,$D9,$C9,$B9,$A9,$99,$7A
       .byte $6A,$5A,$4A,$3A,$2A,$1A,$0A,$FA,$EA,$DA,$CA,$BA,$AA,$9A
LF51F: LDA    #$25    
       STA    TIM64T  
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    COLUPF  
       STA    COLUBK  
       LDA    $9E     
       CMP    #$00    
       BNE    LF54D   
       LDA    $9F     
       CMP    #$00    
       BNE    LF559   
       LDA    #$11    
       STA    $9F     
       LDA    #$01    
       STA    $9E     
       JMP    LF559   
LF54D: LDA    $9F     
       BNE    LF559   
       LDA    #$11    
       STA    $9F     
       LDA    #$00    
       STA    $9E     
LF559: DEC    $9F     
       LDA    $9D     
       BNE    LF572   
       LDA    #$05    
       STA    $9D     
       LDA    $9C     
       CMP    #$85    
       BEQ    LF56E   
       INC    $9C     
       JMP    LF574   
LF56E: LDA    #$0A    
       STA    $9C     
LF572: DEC    $9D     
LF574: SEC            
       LDA    #$8F    
       SBC    $9C     
       STA    $E5     
       DEC    $99     
       BNE    LF5BF   
       LDA    #$3B    
       STA    $99     
       DEC    $82     
       BNE    LF5BF   
       LDA    #$3B    
       STA    $82     
       DEC    $E6     
       BNE    LF595   
       DEC    $82     
       LDA    #$04    
       STA    $E6     
LF595: DEC    $83     
       BNE    LF5BF   
       LDA    #$3C    
       STA    $83     
       DEC    $E8     
       BNE    LF5A7   
       INC    $82     
       LDA    #$0C    
       STA    $E8     
LF5A7: DEC    $E7     
       BNE    LF5B1   
       DEC    $82     
       LDA    #$03    
       STA    $E7     
LF5B1: LDA    #$18    
       DEC    $82     
       DEC    $82     
       DEC    $82     
       DEC    $84     
       BNE    LF5BF   
       STA    $84     
LF5BF: LDA    SWCHB   
       AND    #$08    
       BEQ    LF5D0   
       LDA    $84     
       CMP    #$0C    
       BPL    LF5D0   
       LDA    #$17    
       STA    $84     
LF5D0: LDA    SWCHA   
       ORA    #$0F    
       CMP    #$EF    
       BEQ    LF5F0   
       CMP    #$DF    
       BEQ    LF60F   
       CMP    #$BF    
       BEQ    LF62E   
       CMP    #$7F    
       BEQ    LF64D   
       LDA    #$00    
       STA    $85     
       LDA    #$01    
       STA    $86     
       JMP    LF669   
LF5F0: LDA    $84     
       CMP    #$01    
       BEQ    LF669   
       INC    $85     
       LDA    $86     
       CMP    #$01    
       BEQ    LF604   
       LDA    #$1E    
       CMP    $85     
       BNE    LF669   
LF604: LDA    #$00    
       STA    $86     
       STA    $85     
       DEC    $84     
       JMP    LF669   
LF60F: LDA    $84     
       CMP    #$18    
       BEQ    LF669   
       INC    $85     
       LDA    $86     
       CMP    #$01    
       BEQ    LF623   
       LDA    $85     
       CMP    #$1E    
       BNE    LF669   
LF623: LDA    #$00    
       STA    $86     
       STA    $85     
       INC    $84     
       JMP    LF669   
LF62E: LDA    $83     
       CMP    #$01    
       BEQ    LF669   
       INC    $85     
       LDA    $86     
       CMP    #$01    
       BEQ    LF642   
       LDA    #$1E    
       CMP    $85     
       BNE    LF669   
LF642: LDA    #$00    
       STA    $86     
       STA    $85     
       DEC    $83     
       JMP    LF669   
LF64D: LDA    $83     
       CMP    #$3C    
       BEQ    LF669   
       INC    $85     
       LDA    $86     
       CMP    #$01    
       BEQ    LF661   
       LDA    #$1E    
       CMP    $85     
       BNE    LF669   
LF661: LDA    #$00    
       STA    $86     
       STA    $85     
       INC    $83     
LF669: LDA    INTIM   
       BNE    LF669   
       STA    WSYNC   
       RTS            

LF671: .byte $E7,$A5,$A5,$A5,$A5,$A5,$E7
LF678: .byte $E7,$42,$42,$42,$42,$C6,$42
LF67F: .byte $E7,$84,$84,$E7,$21,$21,$E7
LF686: .byte $E7,$21,$21,$E7,$21,$21,$E7
LF68D: .byte $21,$21,$21,$E7,$A5,$A5,$84
LF694: .byte $E7,$21,$21,$E7,$84,$84,$E7,$E7,$A5,$A5,$E7,$84,$84,$C6,$84,$84
       .byte $84,$42,$21,$21,$E7,$E7,$A5,$A5,$E7,$A5,$A5,$E7,$21,$21,$21,$E7
       .byte $A5,$A5,$E7,$00,$00,$00,$00,$00,$3E,$C3,$7F,$66,$C0,$80,$00,$00
       .byte $00,$00,$00,$7A,$00,$00,$36,$24,$24,$24,$7E,$FF,$ED,$C9,$7E,$3C
       .byte $00,$00,$00,$00,$2A,$00,$80,$60,$30,$18,$0F,$0C,$02,$02,$00,$10
       .byte $20,$00,$20,$20,$00,$8C,$00,$00,$00,$1C,$3E,$7E,$78,$60,$60,$78
       .byte $6E,$3E,$1C,$00,$00,$00,$1C,$00,$00,$00,$42,$5A,$5A,$5A,$99,$A5
       .byte $FF,$5A,$7E,$3C,$00,$00,$00,$DC,$00,$03,$22,$32,$0C,$1C,$1E,$1F
       .byte $0C,$0E,$1A,$BA,$7E,$1C,$08,$00,$0E,$00,$00,$00,$00,$0E,$04,$0E
       .byte $1F,$7F,$CE,$04,$07,$1C,$00,$00,$00,$0E,$00,$00,$00,$30,$26,$7C
       .byte $76,$40,$3C,$E0,$80,$7C,$70,$00,$00,$00,$AC,$00,$00,$00,$00,$00
       .byte $91,$DB,$7E,$7F,$DF,$8C,$08,$00,$00,$00,$00,$BA,$00,$00,$00,$AA
       .byte $FF,$FF,$FF,$FF,$C9,$DB,$C9,$7E,$3C,$00,$00,$00,$3A,$00,$00,$00
       .byte $63,$42,$7E,$7E,$6A,$3E,$98,$A4,$42,$01,$00,$00,$00,$DC,$00,$30
       .byte $20,$2C,$28,$7C,$C4,$44,$22,$2F,$C8,$86,$82,$92,$84,$78,$7A,$00
       .byte $00,$00,$AA,$FF,$D5,$AB,$FF,$DB,$DB,$7E,$3C,$00,$00,$00,$00,$9C
       .byte $00,$00,$38,$7C,$C6,$BA,$EE,$7C,$54,$D6,$FE,$EE,$44,$00,$00,$00
       .byte $0C,$63,$63,$36,$36,$1E,$1E,$FF,$FF,$1F,$1F,$0F,$0F,$06,$06,$0E
       .byte $0E,$2A,$00,$00,$00,$00,$24,$5A,$3C,$7E,$FF,$5A,$3C,$18,$00,$00
       .byte $00,$00,$0C,$00,$00,$60,$60,$60,$26,$26,$FF,$FF,$3C,$3C,$3C,$3C
       .byte $00,$00,$00,$3A,$00,$00,$00,$81,$81,$42,$42,$24,$3C,$7E,$EB,$7E
       .byte $3C,$00,$00,$00,$DC,$00,$00,$00,$00,$00,$89,$DB,$7E,$FE,$FB,$31
       .byte $10,$00,$00,$00,$00,$BA,$00,$00,$00,$08,$1E,$3F,$7F,$5E,$4F,$FF
       .byte $4F,$67,$ED,$60,$00,$00,$5A,$00,$00,$00,$00,$00,$3C,$66,$DB,$FF
       .byte $FF,$5A,$3C,$00,$00,$00,$00,$4A,$00,$00,$28,$24,$24,$28,$38,$1C
       .byte $1A,$39,$59,$5A,$48,$38,$08,$00,$2C,$00,$00,$00,$00,$42,$C3,$E7
       .byte $3C,$3C,$18,$24,$00,$00,$00,$00,$00,$0C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$77,$55,$77,$00,$00,$00,$00,$00,$0E,$00,$3C,$7E,$3E,$1F
       .byte $07,$1E,$1E,$2D,$6B,$76,$2E,$1F,$02,$04,$04,$1C,$00,$00,$AA,$7E
       .byte $7E,$21,$71,$F9,$89,$FA,$DA,$AA,$72,$51,$00,$00,$1A,$63,$63,$36
       .byte $36,$1E,$1E,$FE,$FE,$1F,$1D,$F9,$F9,$6A,$6A,$39,$39,$6C,$00,$00
       .byte $00,$00,$C3,$7E,$C7,$FF,$56,$BD,$5A,$00,$00,$00,$00,$00,$8A,$00
       .byte $0C,$0C,$3C,$3C,$3C,$3C,$FF,$FF,$FF,$FF,$00,$00,$3C,$3C,$00,$7A
       .byte $00,$00,$00,$EE,$22,$22,$22,$3A,$FF,$CF,$CF,$7E,$3C,$00,$00,$00
       .byte $DC,$00,$00,$00,$00,$00,$7D,$BE,$FF,$30,$30,$20,$00,$00,$00,$00
       .byte $00,$1C,$00,$24,$24,$14,$14,$0C,$1E,$3F,$7F,$5E,$FC,$4C,$64,$EC
       .byte $60,$00,$2C,$00,$00,$00,$66,$24,$24,$3C,$3C,$3C,$FF,$A5,$BD,$18
       .byte $00,$00,$00,$7A,$00,$00,$00,$A2,$CC,$3E,$5F,$23,$41,$09,$11,$0E
       .byte $00,$00,$00,$00,$0E,$00,$00,$00,$00,$42,$3C,$FF,$18,$FF,$3C,$18
       .byte $00,$00,$00,$00,$00,$BC,$00,$00,$00,$07,$0E,$1C,$3C,$3C,$FF,$BD
       .byte $95,$3C,$18,$00,$00,$00,$0E,$00,$00,$00,$00,$3E,$C3,$7F,$66,$C0
       .byte $80,$00,$00,$00,$00,$00,$00,$7A,$00,$00,$00,$36,$24,$7E,$FF,$ED
       .byte $C9,$7E,$3C,$00,$00,$00,$00,$00,$2A,$00,$80,$60,$30,$F8,$0F,$0C
       .byte $02,$02,$00,$10,$20,$00,$10,$10,$00,$8C,$00,$00,$00,$1C,$3E,$7E
       .byte $7F,$7F,$7F,$7F,$6E,$3E,$1C,$00,$00,$00,$1C,$00,$00,$00,$81,$A5
       .byte $A5,$A5,$99,$A5,$FF,$5A,$7E,$3C,$00,$00,$00,$DC,$00,$18,$13,$12
       .byte $0C,$1C,$1E,$1F,$0C,$0E,$1A,$3A,$7E,$9C,$08,$00,$0E,$00,$00,$00
       .byte $0E,$04,$0E,$1F,$7F,$CE,$04,$1C,$07,$00,$00,$00,$00,$0E,$00,$00
       .byte $6C,$48,$7C,$72,$40,$3C,$E0,$80,$7C,$70,$00,$00,$00,$00,$AC,$00
       .byte $00,$00,$00,$91,$DB,$7E,$7F,$DF,$8C,$08,$00,$00,$00,$00,$00,$BA
       .byte $00,$00,$00,$55,$FF,$FF,$FF,$FF,$C9,$ED,$C9,$7E,$3C,$00,$00,$00
       .byte $3A,$00,$00,$00,$C6,$42,$7E,$7E,$5A,$7C,$19,$25,$42,$80,$00,$00
       .byte $00,$DC,$00,$0C,$08,$68,$48,$7C,$C4,$44,$22,$2F,$C8,$86,$82,$92
       .byte $84,$78,$7A,$00,$00,$00,$55,$FF,$D5,$AB,$FF,$DB,$DB,$7E,$3C,$00
       .byte $00,$00,$00,$7A,$00,$00,$00,$7C,$EE,$D6,$EE,$7C,$54,$D6,$FE,$EE
       .byte $44,$00,$00,$00,$0C,$36,$36,$3C,$3C,$1E,$1E,$FF,$FF,$1F,$1F,$0F
       .byte $0F,$06,$06,$0E,$0E,$2A,$00,$00,$00,$00,$81,$5A,$3C,$7E,$FF,$5A
       .byte $3C,$18,$00,$00,$00,$00,$0C,$00,$00,$06,$06,$06,$64,$64,$FF,$FF
       .byte $3C,$3C,$3C,$3C,$00,$00,$00,$3A,$00,$00,$00,$00,$24,$5A,$42,$24
       .byte $3C,$7E,$D7,$7E,$3C,$00,$00,$00,$DC,$00,$00,$00,$00,$89,$DB,$7E
       .byte $FE,$FB,$31,$10,$00,$00,$00,$00,$00,$BA,$00,$01,$03,$0F,$1E,$3F
       .byte $7F,$5E,$4F,$FF,$4C,$64,$EC,$60,$00,$00,$5A,$00,$00,$00,$00,$3C
       .byte $66,$DB,$FF,$FF,$5A,$3C,$00,$00,$00,$00,$00,$4A,$00,$00,$28,$48
       .byte $48,$28,$38,$1C,$1A,$3A,$5A,$59,$48,$38,$08,$00,$2C,$00,$00,$00
       .byte $42,$C3,$E7,$3C,$3C,$18,$24,$00,$00,$00,$00,$00,$00,$0C,$00,$00
       .byte $00,$00,$00,$00,$00,$77,$55,$77,$00,$00,$00,$00,$00,$00,$0E,$00
       .byte $3C,$7E,$7E,$FF,$FF,$FE,$FE,$ED,$6B,$76,$2E,$1F,$02,$04,$04,$1C
       .byte $00,$00,$55,$7E,$7E,$21,$72,$DA,$AA,$F9,$D9,$A9,$71,$52,$00,$00
       .byte $1A,$36,$36,$36,$36,$1E,$1E,$1E,$FE,$FF,$1D,$F9,$F9,$69,$69,$3A
       .byte $3A,$6C,$00,$00,$00,$24,$42,$7E,$C7,$FF,$56,$3C,$5A,$81,$00,$00
       .byte $00,$00,$8A,$00,$30,$30,$3C,$3C,$3C,$3C,$FF,$FF,$FF,$FF,$00,$00
       .byte $3C,$3C,$00,$7A,$00,$00,$00,$77,$44,$44,$44,$74,$FF,$E3,$E3,$7E
       .byte $3C,$00,$00,$00,$DC,$00,$00,$00,$00,$7C,$BF,$FE,$31,$30,$20,$00
       .byte $00,$00,$00,$00,$00,$1C,$00,$09,$09,$0A,$0C,$0C,$1E,$3F,$7F,$5E
       .byte $FC,$4C,$64,$EC,$60,$00,$2C,$00,$00,$66,$24,$24,$3C,$3C,$3C,$FF
       .byte $A5,$BD,$18,$00,$00,$00,$00,$7A,$00,$00,$00,$91,$4C,$BE,$1F,$63
       .byte $49,$11,$0E,$00,$00,$00,$00,$00,$0E,$00,$00,$00,$42,$3C,$FF,$18
       .byte $FF,$3C,$18,$00,$00,$00,$00,$00,$00,$BC,$00,$00,$00,$E0,$70,$3C
       .byte $BD,$BD,$FF,$3C,$28,$3C,$18,$00,$00,$00,$0E,$FF,$FF,$FF,$FF,$FF
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
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F0,$00,$F0
