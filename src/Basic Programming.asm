; Disassembly of roms/Basic Programming.bin
; Disassembled Tue Oct  6 15:21:06 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Basic Programming.bin
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
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
INPT0   =  $38
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $A1,$1E,$20,$20,$20,$20,$20,$1E,$A2,$4E,$48,$4E,$4A,$4E,$40,$40
       .byte $00,$A8,$A8,$E8,$A8,$EE,$08,$00,$A4,$10,$10,$10,$1E,$12,$12,$1E
       .byte $A5,$84,$84,$84,$E4,$80,$04,$00,$00,$A4,$A4,$A4,$C4,$0E,$04,$00
       .byte $A7,$3E,$22,$2E,$20,$20,$22,$2E,$A8,$E4,$A4,$A4,$E4,$0E,$04,$00
       .byte $00,$E0,$A0,$A0,$E0,$00,$00,$00,$AA,$E4,$84,$84,$E4,$84,$84,$E4
       .byte $00,$EE,$28,$EE,$8A,$EE,$00,$00,$AC,$4A,$4A,$4A,$4E,$48,$48,$E8
       .byte $00,$EA,$8A,$EA,$AC,$E0,$00,$00,$AE,$22,$22,$22,$26,$2A,$32,$22
       .byte $AF,$E4,$A4,$A4,$E4,$0E,$04,$00,$00,$E0,$80,$E0,$A0,$E0,$00,$00
       .byte $B1,$22,$24,$28,$30,$28,$24,$22,$00,$EE,$82,$EE,$AA,$EA,$00,$00
       .byte $B3,$22,$22,$22,$3E,$22,$22,$22,$D8,$E8,$A8,$A8,$EE,$08,$00,$00
       .byte $B5,$22,$22,$22,$3E,$22,$22,$22,$D9,$E8,$A8,$A8,$EE,$08,$00,$00
       .byte $B7,$08,$14,$14,$22,$22,$22,$22,$D8,$E8,$88,$E8,$AE,$E8,$00,$00
       .byte $B9,$08,$14,$14,$22,$22,$22,$22,$D9,$E8,$88,$E8,$AE,$E8,$00,$00
       .byte $BB,$22,$22,$22,$3E,$22,$22,$22,$00,$48,$48,$48,$48,$1C,$48,$00
       .byte $00,$C6,$C6,$FE,$C6,$C6,$6C,$38,$00,$FC,$C6,$C6,$FC,$C6,$C6,$FC
       .byte $00,$3C,$66,$C0,$C0,$C0,$66,$3C,$00,$F8,$CC,$C6,$C6,$C6,$CC,$F8
       .byte $00,$FE,$C0,$C0,$F8,$C0,$C0,$FE,$00,$C0,$C0,$C0,$FC,$C0,$C0,$FE
       .byte $00,$3E,$66,$C6,$CE,$C0,$60,$3E,$00,$C6,$C6,$C6,$FE,$C6,$C6,$C6
       .byte $00,$78,$30,$30,$30,$30,$30,$78,$00,$7C,$C6,$06,$06,$06,$06,$06
       .byte $00,$CE,$DC,$F8,$F0,$D8,$CC,$C6,$00,$FE,$C0,$C0,$C0,$C0,$C0,$C0
       .byte $00,$C6,$C6,$D6,$FE,$FE,$EE,$C6,$00,$C6,$CE,$DE,$FE,$F6,$E6,$C6
       .byte $00,$7C,$C6,$C6,$C6,$C6,$C6,$7C,$00,$C0,$C0,$FC,$C6,$C6,$C6,$FC
       .byte $00,$76,$CC,$DA,$C6,$C6,$C6,$7C,$00,$CE,$DC,$F8,$CE,$C6,$C6,$FC
       .byte $00,$7C,$C6,$06,$7C,$C0,$CC,$78,$00,$30,$30,$30,$30,$30,$30,$FC
       .byte $00,$7C,$C6,$C6,$C6,$C6,$C6,$C6,$00,$10,$38,$7C,$EE,$C6,$C6,$C6
       .byte $00,$C6,$EE,$FE,$FE,$D6,$C6,$C6,$00,$C6,$EE,$7C,$38,$7C,$EE,$C6
       .byte $00,$30,$30,$30,$78,$CC,$CC,$CC,$00,$FE,$E0,$70,$38,$1C,$0E,$FE
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$C6,$E6,$D6,$CE,$C6,$7C
       .byte $00,$FC,$30,$30,$30,$30,$70,$30,$00,$FE,$E0,$78,$3C,$0E,$C6,$7C
       .byte $00,$7C,$C6,$06,$3C,$18,$0C,$7E,$00,$0C,$0C,$FE,$CC,$6C,$3C,$1C
       .byte $00,$7C,$C6,$06,$06,$FC,$C0,$FC,$00,$7C,$C6,$C6,$FC,$C0,$60,$3C
       .byte $00,$30,$30,$30,$18,$0C,$C6,$FE,$00,$7C,$C6,$C6,$7C,$C6,$C6,$7C
       .byte $00,$78,$0C,$06,$7E,$C6,$C6,$7C,$00,$00,$44,$28,$10,$28,$44,$00
       .byte $00,$00,$10,$00,$FE,$00,$10,$00,$00,$10,$10,$10,$FE,$10,$10,$10
       .byte $00,$00,$00,$00,$FE,$00,$00,$00,$00,$00,$00,$FE,$00,$FE,$00,$00
       .byte $00,$20,$10,$08,$04,$08,$10,$20,$00,$08,$10,$20,$40,$20,$10,$08
       .byte $00,$00,$20,$40,$FE,$40,$20,$00,$EA,$22,$22,$22,$22,$2A,$36,$22
       .byte $00,$EE,$AA,$AA,$EE,$02,$02,$02,$00,$20,$10,$08,$08,$08,$10,$20
       .byte $00,$08,$10,$20,$20,$20,$10,$08,$00,$00,$00,$00,$28,$28,$28,$28
       .byte $00,$5C,$44,$5C,$50,$5C,$00,$40,$00,$E8,$48,$48,$5C,$48,$4A,$EE
       .byte $00,$20,$10,$30,$30,$00,$00,$00
LF288: .byte $00,$FE,$FE,$FE,$FE,$FE,$FE,$FE
LF290: .byte $B8
LF291: .byte $F1,$C0,$F1,$C8,$F1,$D0,$F1,$D8,$F1,$E0,$F1,$E8,$F1,$F0,$F1,$F8
       .byte $F1,$00,$F2
LF2A4: .byte $CE,$CF,$BC,$CF,$D0,$CE,$00,$CB,$CD,$CA,$C2,$CD,$BC,$C8,$00,$CE
       .byte $CF,$BC,$BE,$C6,$00,$D1,$BC,$CD,$C4,$BC,$BD,$C7,$C0,$CE,$00,$CA
       .byte $D0,$CF,$CB,$D0,$CF,$00,$C2,$CD,$BC,$CB,$C3,$C4,$BE,$CE,$00,$CE
       .byte $D4,$C8,$BD,$CA,$C7,$CE,$E5,$00,$CE,$CB,$C0,$C0,$BF,$E5,$00
LF2E3: .byte $00,$07,$0F,$15,$1F,$26
LF2E9: LDY    #$02    
       SEC            
LF2EC: INY            
       SBC    #$0F    
       BCS    LF2EC   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF2FB: DEY            
       BPL    LF2FB   
       STA    RESP0,X 
       STA    HMP0,X  
       RTS            

LF303: STA    HMCLR   
       STA    WSYNC   
       LDA    $F0     
       STA    ENABL   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDX    #$90    
       LDY    #$08    
       LDA    $81     
       AND    #$01    
       BEQ    LF367   
       JMP    LF33F   
LF327: STA    GRP1    
       LDA    ($E4),Y 
       STA    GRP0    
       LDA    ($E0),Y 
       STX    HMP0    
       STX    HMP1    
       STA    GRP1    
       LDA    ($DC),Y 
       STA    GRP0    
       LDA    ($D8),Y 
       STA    GRP1    
       STA    GRP0    
LF33F: DEY            
       BEQ    LF37D   
       LDA    ($EA),Y 
       LSR            
       STA    GRP0    
       LDA    ($E6),Y 
       LSR            
       STA.w  $001C   
       STA    HMOVE   
       LDA    ($E2),Y 
       LSR            
       STA    GRP0    
       LDA    ($DA),Y 
       LSR            
       STA    $F5     
       LDA    ($DE),Y 
       LSR            
       STA    GRP1    
       LDA    $F5     
       STA    GRP0    
       LDA    ($D6),Y 
       LSR            
       STA    GRP1    
LF367: STA    GRP0    
       LDA    #$70    
       STA    HMP0    
       STA    HMP1    
       DEY            
       BEQ    LF387   
       LDA    ($EC),Y 
       STA    GRP0    
       LDA    ($E8),Y 
       STA    HMOVE   
       JMP    LF327   
LF37D: STX    HMP0    
       STX    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       BEQ    LF38C   
LF387: STA    WSYNC   
       NOP            
       NOP            
       NOP            
LF38C: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    ENABL   
       RTS            

LF397: LDY    $EE     
       CPY    $8C     
       BNE    LF3A4   
       LDA    #$02    
       STA    $F0     
       JMP    LF3A9   
LF3A4: NOP            
       NOP            
       JMP    LF3A9   
LF3A9: CPY    $8B     
       BNE    LF3B2   
       STX    $8D     
       JMP    LF3B6   
LF3B2: NOP            
       JMP    LF3B6   
LF3B6: LDA.wy $0093,Y 
       CMP    #$A0    
       BCC    LF3C6   
       CMP    $F3     
       BCC    LF409   
       INC    $EE     
       JMP    LF443   
LF3C6: CMP    #$10    
       BCC    LF3E5   
       CPX    #$00    
       BEQ    LF3FC   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF290,Y 
       STA    $D6,X   
       LDA    LF291,Y 
       STA    $D7,X   
       DEX            
       DEX            
       LDY    $EE     
       LDA.wy $0093,Y 
LF3E5: AND    #$0F    
       ASL            
       TAY            
       LDA    LF290,Y 
       STA    $D6,X   
       LDA    LF291,Y 
       STA    $D7,X   
       INC    $EE     
       DEX            
       DEX            
       BPL    LF397   
       JMP    LF452   
LF3FC: LDA    #$B0    
       LDY    #$F1    
       STA    $D6,X   
       STY    $D7,X   
       DEX            
       DEX            
       JMP    LF47D   
LF409: STX    $F5     
LF40B: SEC            
       SBC    #$A0    
       TAY            
       ASL            
       ASL            
       ASL            
       STA    $D6,X   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    #$F0    
       STA    $D7,X   
       LDA    ($D6,X) 
       BNE    LF42B   
       INC    $EE     
       DEX            
       DEX            
       BMI    LF452   
       JMP    LF397   
LF42B: DEX            
       DEX            
       BPL    LF40B   
       LDX    $F5     
       LDA    $EE     
       CMP    $8C     
       BNE    LF43E   
       LDA    #$00    
       STA    $F0     
       JMP    LF443   
LF43E: NOP            
       NOP            
       JMP    LF443   
LF443: LDA    #$B0    
       LDY    #$F1    
LF447: STA    $D6,X   
       STY    $D7,X   
       DEX            
       DEX            
       BPL    LF447   
       JMP    LF47D   
LF452: LDY    $EE     
       LDA.wy $0093,Y 
       CMP    $F3     
       BCC    LF47D   
       INC    $EE     
       CPY    $8C     
       BNE    LF468   
       LDA    #$02    
       STA    $F0     
       JMP    LF46D   
LF468: NOP            
       NOP            
       JMP    LF46D   
LF46D: CPY    $8B     
       BNE    LF478   
       LDA    #$18    
       STA    $8D     
       JMP    LF47D   
LF478: NOP            
       NOP            
       JMP    LF47D   
LF47D: RTS            

LF47E: STA    $F5     
       LDX    $92     
       BPL    LF496   
       LDA    SWCHB   
       AND    #$08    
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $F5     
       LSR            
       EOR    $92     
       AND    LF497,X 
       ASL            
LF496: RTS            

LF497: .byte $03,$FB
LF499: LDA    $8D     
       LSR            
       TAY            
       LDA    LF66D,Y 
       LDX    #$04    
       JSR    LF2E9   
       LDA    SWCHB   
       AND    #$08    
       LSR            
       CLC            
       ADC    $82     
       TAY            
       LDA    LF645,Y 
       JSR    LF47E   
       STA    COLUPF  
LF4B7: LDA    INTIM   
       CMP    #$D6    
       BCS    LF4B7   
       STA    WSYNC   
       LDA    #$FF    
       STA    TIM64T  
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$31    
       STA    CTRLPF  
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$04    
       STA    WSYNC   
LF4D9: DEX            
       BPL    LF4D9   
       STA    RESP0   
       NOP            
       STA    RESP1   
       LDA    #$D0    
       STA    HMP0    
       LDA    #$C0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    VBLANK  
       STA    $F0     
       INC    $81     
       BNE    LF4FF   
       INC    $92     
       BNE    LF4FF   
       LDA    #$80    
       STA    $92     
LF4FF: LDA    $80     
       BPL    LF507   
       LDA    #$00    
       STA    $92     
LF507: LDA    #$FF    
       STA    SWACNT  
       LDA    #$00    
       STA    $EF     
       LDA    $80     
       AND    #$7F    
       STA    $F2     
       LDA    #$18    
       STA    $80     
       JSR    LF694   
       LDA    #$00    
       STA    $F1     
       STA    $EE     
       STA    $F4     
LF525: LDA    SWCHB   
       AND    #$08    
       CLC            
       ADC    $F1     
       TAY            
       LDA    LF64D,Y 
       JSR    LF47E   
       STA    COLUP0  
       STA    COLUP1  
       LDA    LF65D,Y 
       JSR    LF47E   
       STA    WSYNC   
       STA    COLUBK  
       LDX    $F1     
       LDA    $91     
       AND    LF67A,X 
       BEQ    LF553   
       LDY    $86,X   
       INY            
       STY    $EE     
       JMP    LF618   
LF553: LDX    #$16    
       LDA    SWCHB   
       AND    #$40    
       BNE    LF56B   
       LDY    $F1     
       LDA    LF2E3,Y 
       TAY            
       JSR    LF7C1   
       JSR    LF7E2   
       JSR    LF303   
LF56B: LDX    #$16    
       LDA    $F1     
       BNE    LF574   
       JMP    LF5E7   
LF574: CMP    #$05    
       BEQ    LF5DE   
       LDY    #$F1    
       CMP    #$02    
       BNE    LF588   
       LDA    INTIM   
       SEC            
       SBC    #$10    
       STA    $F4     
       LDY    #$FF    
LF588: STY    $F3     
LF58A: LDA    $F1     
       CMP    #$01    
       BNE    LF5AD   
       LDY    $EE     
       BEQ    LF59B   
       LDA.wy $0092,Y 
       CMP    #$F1    
       BCC    LF5AD   
LF59B: LDY    $F4     
       INY            
       INY            
       STY    $F4     
       LDA    LF290,Y 
       STA    $D6,X   
       LDA    LF291,Y 
       STA    $D7,X   
       DEX            
       DEX            
LF5AD: JSR    LF397   
       LDA    $F1     
       CMP    #$02    
       BNE    LF5BF   
LF5B6: LDA    INTIM   
       BEQ    LF5BF   
       CMP    $F4     
       BCS    LF5B6   
LF5BF: JSR    LF303   
       JSR    LF694   
       LDA    #$00    
       STA    $F0     
       LDX    #$16    
       LDA    INTIM   
       CMP    #$32    
       BCC    LF623   
       LDY    $EE     
       LDA.wy $0092,Y 
       CMP    #$FF    
       BNE    LF58A   
       JMP    LF618   
LF5DE: JSR    LF680   
       JSR    LF6CA   
       JMP    LF618   
LF5E7: LDX    #$16    
       LDY    #$2F    
       JSR    LF7C1   
       LDA    #$42    
       SEC            
       SBC    $8A     
       JSR    LF7EF   
       STA    $F5     
       JSR    LF80D   
       JSR    LF7E2   
       JSR    LF303   
       LDX    #$16    
       LDY    #$38    
       JSR    LF7C1   
       LDY    $8F     
       LDA    LF8B6,Y 
       STA    $F5     
       JSR    LF80D   
       JSR    LF7E2   
       JSR    LF303   
LF618: INC    $F1     
       LDA    $F1     
       CMP    #$06    
       BCS    LF623   
       JMP    LF525   
LF623: JSR    LF680   
       LDA    $8B     
       STA    $8C     
LF62A: LDA    INTIM   
       CMP    #$18    
       BCS    LF62A   
       STA    WSYNC   
       LDA    #$FF    
       STA    TIM64T  
       LDA    $80     
       CMP    $F2     
       BEQ    LF644   
       LDA    $80     
       ORA    #$80    
       STA    $80     
LF644: RTS            

LF645: .byte $08,$04,$00,$0E,$36,$86,$C8,$0E
LF64D: .byte $08,$0C,$08,$0C,$08,$0C,$00,$00,$F8,$38,$F8,$38,$F8,$38,$00,$00
LF65D: .byte $02,$06,$02,$06,$02,$06,$00,$00,$02,$04,$02,$04,$02,$04,$00,$00
LF66D: .byte $68,$60,$58,$50,$48,$40,$38,$30,$28,$20,$18,$10,$70
LF67A: .byte $10,$08,$04,$02,$01,$20
LF680: LDA    $EF     
       CMP    #$04    
       BCS    LF693   
       LDY    #$09    
LF688: STA    WSYNC   
       DEY            
       BPL    LF688   
       JSR    LF694   
       JMP    LF680   
LF693: RTS            

LF694: LDY    $EF     
       INC    $EF     
       CPY    #$04    
       BCS    LF6BF   
       LDX    #$05    
LF69E: LDA    INPT0,X 
       AND    #$80    
       BNE    LF6B7   
       TYA            
       CLC            
       ADC    LF6C0,X 
       STA    $80     
LF6AB: DEX            
       BPL    LF69E   
       LDA    LF6C6,Y 
       STA    SWCHA   
       JMP    LF6BF   
LF6B7: NOP            
       NOP            
       JMP    LF6BC   
LF6BC: JMP    LF6AB   
LF6BF: RTS            

LF6C0: .byte $00,$04,$0C,$10,$08,$14
LF6C6: .byte $DD,$BB,$77,$EE
LF6CA: LDA    INTIM   
       CMP    #$2D    
       BCS    LF6D2   
       RTS            

LF6D2: LDA    #$00    
       STA    $D9     
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$B6    
       STA    $D8     
       JSR    LF797   
       CLC            
       ADC    #$08    
       STA    $DC     
       LDA    #$B8    
       STA    $D8     
       JSR    LF797   
       CLC            
       ADC    #$08    
       STA    $E0     
       LDA    #$B2    
       STA    $D8     
       JSR    LF797   
       CLC            
       ADC    #$1C    
       LDX    #$00    
       JSR    LF2E9   
       LDA    #$B4    
       STA    $D8     
       JSR    LF797   
       CLC            
       ADC    #$1C    
       LDX    #$01    
       JSR    LF2E9   
       LDA    SWCHB   
       AND    #$08    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF793,Y 
       JSR    LF47E   
       STA    COLUP0  
       LDA    #$0E    
       JSR    LF47E   
       STA    COLUP1  
       LDA    LF795,Y 
       JSR    LF47E   
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    #$04    
       STA    COLUPF  
       LDA    #$F0    
       STA    PF0     
       LDA    #$C0    
       STA    PF1     
       STA    CXCLR   
LF746: LDA    $DC     
       SEC            
       SBC    $D9     
       CMP    #$08    
       BCC    LF754   
       LDA    #$00    
       JMP    LF758   
LF754: TAY            
       LDA    LF288,Y 
LF758: TAX            
       LDA    $E0     
       SEC            
       SBC    $D9     
       CMP    #$08    
       BCC    LF767   
       LDA    #$00    
       JMP    LF76B   
LF767: TAY            
       LDA    LF288,Y 
LF76B: STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       INC    $D9     
       LDA    $D9     
       CMP    #$6E    
       BCS    LF780   
       LDA    INTIM   
       CMP    #$1A    
       BCS    LF746   
LF780: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       LDA    #$04    
       STA    COLUBK  
       RTS            

LF793: .byte $00,$36
LF795: .byte $08,$86
LF797: JSR    LFEF7   
       LDX    $D6     
       CPX    $D7     
       BNE    LF7A3   
       LDA    #$00    
       RTS            

LF7A3: INX            
       INX            
       DEC    $D7     
       JSR    LF7AB   
       RTS            

LF7AB: LDA    $93,X   
       AND    #$F0    
       LSR            
       STA    $E2     
       LSR            
       LSR            
       CLC            
       ADC    $E2     
       STA    $E2     
       LDA    $93,X   
       AND    #$0F    
       CLC            
       ADC    $E2     
       RTS            

LF7C1: LDA    LF2A4,Y 
       BEQ    LF7E1   
       SEC            
       SBC    #$A0    
       STA    $F5     
       ASL            
       ASL            
       ASL            
       STA    $D6,X   
       LDA    $F5     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    #$F0    
       STA    $D7,X   
       DEX            
       DEX            
       INY            
       JMP    LF7C1   
LF7E1: RTS            

LF7E2: LDA    #$B0    
       LDY    #$F1    
LF7E6: STA    $D6,X   
       STY    $D7,X   
       DEX            
       DEX            
       BPL    LF7E6   
       RTS            

LF7EF: CMP    #$64    
       BCS    LF80A   
       LDY    #$00    
LF7F5: CMP    #$0A    
       BCC    LF800   
       SEC            
       SBC    #$0A    
       INY            
       JMP    LF7F5   
LF800: STA    $F5     
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F5     
       RTS            

LF80A: LDA    #$99    
       RTS            

LF80D: LDA    $F5     
       CMP    #$10    
       BCC    LF827   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF290,Y 
       STA    $D6,X   
       LDA    LF291,Y 
       STA    $D7,X   
       DEX            
       DEX            
       LDA    $F5     
LF827: AND    #$0F    
       ASL            
       TAY            
       LDA    LF290,Y 
       STA    $D6,X   
       LDA    LF291,Y 
       STA    $D7,X   
       DEX            
       DEX            
       RTS            


START:
       SEI            
       CLD            
       LDX    #$28    
       LDA    #$00    
LF83E: STA    NUSIZ0,X
       DEX            
       BPL    LF83E   
       TXS            
LF844: STA    VSYNC,X 
       DEX            
       BMI    LF844   
       JSR    LF8E2   
LF84C: JSR    LF897   
       LDA    $83     
       CMP    #$01    
       BEQ    LF860   
       CMP    #$03    
       BEQ    LF881   
       CMP    #$04    
       BEQ    LF87A   
       JMP    LF84C   
LF860: LDA    $8E     
       CMP    #$01    
       BNE    LF870   
       JSR    LFD9D   
       JSR    LFB98   
       LDA    $8E     
       BNE    LF84C   
LF870: JSR    LFB48   
       LDA    #$01    
       STA    $8E     
       JMP    LF84C   
LF87A: LDA    #$00    
       STA    $83     
       JMP    LF860   
LF881: LDA    $8E     
       CMP    #$01    
       BNE    LF890   
       JSR    LFD9D   
       JSR    LFB98   
       JMP    LF84C   
LF890: LDA    #$00    
       STA    $83     
       JMP    LF84C   
LF897: LDY    $8F     
       LDA    LF8AF,Y 
       STA    $84     
LF89E: JSR    LF499   
       JSR    LF909   
       JSR    LFFC0   
       JSR    LF8BD   
       DEC    $84     
       BNE    LF89E   
       RTS            

LF8AF: .byte $3C,$1E,$0F,$08,$04,$02,$01
LF8B6: .byte $01,$02,$04,$08,$15,$30,$60
LF8BD: LDA    INTIM   
       CMP    #$E1    
       BCS    LF8BD   
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
       LDA    #$FF    
       STA    TIM64T  
       RTS            

LF8E2: LDA    #$03    
       STA    $82     
       LDA    #$05    
       STA    $8F     
       LDX    #$FF    
       STX    $86     
       INX            
LF8EF: LDA    #$FF    
       STA    $93,X   
       STX    $87     
       INX            
       STA    $93,X   
       STX    $88     
       INX            
       STA    $93,X   
       STX    $89     
       INX            
       STA    $93,X   
       STX    $8A     
       LDA    #$00    
       STA    $8B     
       RTS            

LF909: LDA    #$02    
       BIT    SWCHB   
       BNE    LF913   
       JSR    LF8E2   
LF913: LDA    #$01    
       BIT    SWCHB   
       BNE    LF91F   
       LDX    $87     
       JSR    LF8EF   
LF91F: LDA    $80     
       BPL    LF92E   
       LDX    #$0F    
       STX    $85     
       AND    #$7F    
       CMP    #$18    
       BCC    LF943   
       RTS            

LF92E: DEC    $85     
       BNE    LF93E   
       CMP    #$0B    
       BEQ    LF93F   
       CMP    #$0F    
       BEQ    LF93F   
       CMP    #$13    
       BEQ    LF93F   
LF93E: RTS            

LF93F: LDX    #$05    
       STX    $85     
LF943: TAY            
       CPY    #$03    
       BNE    LF968   
       LDA    $83     
       CMP    #$01    
       BEQ    LF963   
       LDA    #$01    
       STA    $83     
       LDA    #$03    
       STA    $82     
LF956: LDA    $8B     
       CMP    $87     
       BEQ    LF962   
       BCC    LF962   
       LDA    #$00    
       STA    $8B     
LF962: RTS            

LF963: LDA    #$00    
       STA    $83     
       RTS            

LF968: LDA    $83     
       CMP    #$01    
       BEQ    LF9A2   
       CPY    #$0B    
       BNE    LF994   
       LDX    $8B     
       BEQ    LF993   
       DEX            
       LDA    $93,X   
       CMP    #$FF    
       BEQ    LF993   
       CMP    #$10    
       BCC    LF98E   
       CMP    #$9A    
       BCS    LF98E   
       LSR    $93,X   
       LSR    $93,X   
       LSR    $93,X   
       LSR    $93,X   
       RTS            

LF98E: LDA    $8B     
       JSR    LFB37   
LF993: RTS            

LF994: CPY    #$07    
       BNE    LF9A2   
       LDA    $82     
       CLC            
       ADC    #$01    
       AND    #$03    
       STA    $82     
       RTS            

LF9A2: LDA    $82     
       CMP    #$03    
       BEQ    LF9AB   
       JMP    LFA1A   
LF9AB: CPY    #$02    
       BNE    LF9B6   
       LDA    #$04    
       STA    $83     
       JMP    LF956   
LF9B6: CPY    #$0A    
       BNE    LF9C3   
       LDA    $8F     
       CMP    #$06    
       BCS    LF9C2   
       INC    $8F     
LF9C2: RTS            

LF9C3: CPY    #$06    
       BNE    LF9CE   
       LDA    $8F     
       BEQ    LF9CD   
       DEC    $8F     
LF9CD: RTS            

LF9CE: LDX    #$05    
       TYA            
LF9D1: CMP    LF9DE,X 
       BNE    LF9EA   
       LDA    $91     
       EOR    LF9E4,X 
       STA    $91     
       RTS            

LF9DE: .byte $04,$08,$01,$05,$00,$09
LF9E4: .byte $08,$04,$02,$01,$10,$20
LF9EA: DEX            
       BPL    LF9D1   
       LDA    $83     
       CMP    #$01    
       BEQ    LFA19   
       CPY    #$0F    
       BNE    LF9FE   
       LDA    $8B     
       BEQ    LF9FD   
       DEC    $8B     
LF9FD: RTS            

LF9FE: CPY    #$13    
       BNE    LFA0B   
       LDA    $8B     
       CMP    $8A     
       BCS    LFA0A   
       INC    $8B     
LFA0A: RTS            

LFA0B: CPY    #$17    
       BNE    LFA19   
       LDA    #$F1    
       STA    $DD     
       LDA    $8B     
       JSR    LFB28   
       RTS            

LFA19: RTS            

LFA1A: LDA    $80     
       ASL            
       CLC            
       ADC    $80     
       AND    #$7F    
       CLC            
       ADC    $82     
       TAY            
       LDA    LFA64,Y 
       STA    $DD     
       CMP    #$10    
       BCS    LFA5E   
       LDX    $8B     
       BEQ    LFA5E   
       DEX            
       LDA    $93,X   
       CMP    #$9A    
       BCS    LFA5E   
       CMP    #$10    
       BCS    LFA51   
       LDA    $DD     
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       ROL    $93,X   
       ASL            
       ROL    $93,X   
       ASL            
       ROL    $93,X   
       ASL            
       ROL    $93,X   
       RTS            

LFA51: LDA    #$20    
       STA    $90     
       LDA    #$0E    
       STA    AUDF0   
       LDA    #$03    
       STA    AUDC0   
       RTS            

LFA5E: LDA    $8B     
       JSR    LFB28   
       RTS            

LFA64: .byte $E3,$BC,$EF,$E1,$BF,$A6,$B2,$C2,$EC,$D6,$D6,$D6,$E4,$BD,$AB,$E2
       .byte $C0,$A3,$B6,$C3,$EB,$D6,$D6,$D6,$E8,$BE,$A9,$AD,$C1,$ED,$B0,$C4
       .byte $F0,$D6,$D6,$D6,$01,$C5,$D0,$04,$C8,$D3,$07,$CB,$A0,$B4,$CE,$E5
       .byte $02,$C6,$D1,$05,$C9,$D4,$08,$CC,$E9,$B8,$CF,$E6,$03,$C7,$D2,$06
       .byte $CA,$D5,$09,$CD,$BA,$00,$D6,$E7
LFAAC: LDA    $E8     
       SEC            
       SBC    $E7     
       CLC            
       ADC    $D6     
       SEC            
       SBC    $D7     
       STA    $E9     
       BEQ    LFB05   
       BMI    LFAF0   
       LDA    #$42    
       SEC            
       SBC    $8A     
       SEC            
       SBC    $E9     
       BPL    LFAD8   
       LDA    #$05    
       STA    $83     
       LDA    #$20    
       STA    $90     
       LDA    #$10    
       STA    AUDF0   
       LDA    #$01    
       STA    AUDC0   
       RTS            

LFAD8: LDA    #$42    
       TAY            
       SEC            
       SBC    $E9     
       TAX            
LFADF: CPX    $D7     
       BMI    LFAED   
       LDA    $93,X   
       STA.wy $0093,Y 
       DEX            
       DEY            
       JMP    LFADF   
LFAED: JMP    LFB05   
LFAF0: LDA    $D7     
       TAX            
       CLC            
       ADC    $E9     
       TAY            
LFAF7: CPX    #$43    
       BCS    LFB05   
       LDA    $93,X   
       STA.wy $0093,Y 
       INY            
       INX            
       JMP    LFAF7   
LFB05: LDX    $E7     
       LDY    $D6     
LFB09: CPX    $E8     
       BCS    LFB17   
       LDA    $93,X   
       STA.wy $0093,Y 
       INX            
       INY            
       JMP    LFB09   
LFB17: LDX    #$04    
LFB19: LDA    $87,X   
       CMP    $D7     
       BCC    LFB24   
       CLC            
       ADC    $E9     
       STA    $87,X   
LFB24: DEX            
       BPL    LFB19   
       RTS            

LFB28: STA    $D6     
       STA    $D7     
       LDX    #$4A    
       STX    $E7     
       INX            
       STX    $E8     
       JSR    LFAAC   
       RTS            

LFB37: STA    $D7     
       SEC            
       SBC    #$01    
       STA    $D6     
       LDA    #$43    
       STA    $E7     
       STA    $E8     
       JSR    LFAAC   
       RTS            

LFB48: LDY    $8B     
       STY    $E7     
       JSR    LFB83   
       STY    $E8     
       LDX    $88     
       STX    $D7     
       STX    $D6     
       LDA    $92,X   
       CMP    #$F1    
       BNE    LFB62   
       LDX    $87     
       INX            
       STX    $D6     
LFB62: JSR    LFAAC   
       LDA    $83     
       CMP    #$05    
       BEQ    LFB72   
       LDY    $8B     
       JSR    LFB83   
       STY    $8B     
LFB72: LDX    $D6     
       LDA    $93,X   
       CMP    #$FF    
       BNE    LFB82   
       LDA    #$03    
       STA    $83     
       LDA    #$F1    
       STA    $93,X   
LFB82: RTS            

LFB83: LDA.wy $0093,Y 
       CMP    #$ED    
       BNE    LFB96   
LFB8A: INY            
       LDA.wy $0093,Y 
       CMP    #$F0    
       BCS    LFB97   
       CMP    #$ED    
       BNE    LFB8A   
LFB96: INY            
LFB97: RTS            

LFB98: LDA    #$00    
       STA    $8E     
       LDX    $DF     
       LDA    $93,X   
       CMP    #$9A    
       BCC    LFBA7   
       JMP    LFBFA   
LFBA7: LDX    $E0     
       LDA    $93,X   
       SEC            
       SBC    #$E1    
       CMP    #$09    
       BCC    LFBB5   
       JMP    LFBFA   
LFBB5: STA    $E6     
       LDX    $8B     
       LDA    $93,X   
       SEC            
       SBC    #$E1    
       CMP    #$09    
       BCS    LFBD0   
       STA    $E5     
       LDY    $E6     
       LDA    LFD94,Y 
       LDY    $E5     
       CMP    LFD94,Y 
       BCC    LFBFA   
LFBD0: LDX    $E1     
       LDA    $93,X   
       CMP    #$9A    
       BCS    LFBE0   
       LDA    #$01    
       STA    $8E     
       JSR    LFDC7   
       RTS            

LFBE0: LDX    $E0     
       LDA    $93,X   
       CMP    #$E8    
       BNE    LFBFA   
       LDX    $E1     
       LDA    $93,X   
       SEC            
       SBC    #$AD    
       CMP    #$29    
       BCS    LFBFA   
       LDA    #$02    
       STA    $8E     
       JMP    LFF24   
LFBFA: LDX    $DF     
       LDA    $93,X   
       CMP    #$EB    
       BNE    LFC25   
       LDX    $E0     
       LDA    $93,X   
       CMP    #$9A    
       BCS    LFC25   
       LDX    $E1     
       LDA    $93,X   
       CMP    #$EC    
       BNE    LFC25   
       LDA    #$01    
       STA    $8E     
       INC    $DF     
       LDA    $DF     
       JSR    LFB37   
       INC    $E1     
       LDA    $E1     
       JSR    LFB37   
       RTS            

LFC25: LDX    $DF     
       LDA    $93,X   
       SEC            
       SBC    #$AD    
       CMP    #$29    
       BCS    LFC40   
       LDX    $8B     
       LDA    $93,X   
       CMP    #$E8    
       BEQ    LFC40   
       LDA    #$01    
       STA    $8E     
       JSR    LFF61   
       RTS            

LFC40: LDX    $DF     
       LDA    $93,X   
       CMP    #$9A    
       BCS    LFC8E   
       LDX    $E0     
       LDA    $93,X   
       CMP    #$A6    
       BNE    LFC8E   
       LDA    #$02    
       STA    $8E     
       LDA    #$00    
       STA    $8B     
       LDX    $DF     
       JSR    LF7AB   
       STA    $E3     
LFC5F: DEC    $E3     
       BEQ    LFC80   
LFC63: LDX    $8B     
       LDA    $93,X   
       CMP    #$FF    
       BEQ    LFC79   
       CMP    #$F1    
       BEQ    LFC74   
       INC    $8B     
       JMP    LFC63   
LFC74: INC    $8B     
       JMP    LFC5F   
LFC79: LDA    #$00    
       STA    $83     
       JMP    LFC8D   
LFC80: LDA    #$F1    
       STA    $DD     
       LDA    $88     
       JSR    LFB28   
       LDA    #$01    
       STA    $8E     
LFC8D: RTS            

LFC8E: LDX    $DF     
       LDA    $93,X   
       CMP    #$AB    
       BNE    LFCE8   
       LDX    $E0     
       LDA    $93,X   
       CMP    #$9A    
       BCS    LFCE8   
       STA    $E3     
       LDX    $E1     
       LDA    $93,X   
       CMP    #$EF    
       BNE    LFCE8   
       LDA    #$02    
       STA    $8E     
       LDA    $E1     
       STA    $D6     
       LDX    $DF     
       INX            
       STX    $D7     
       LDA    #$43    
       STA    $E7     
       STA    $E8     
       JSR    LFAAC   
       LDA    $E3     
       BNE    LFCE7   
       LDY    #$00    
       LDX    $8B     
LFCC6: LDA    $93,X   
       CMP    #$F1    
       BEQ    LFCE5   
       CMP    #$A9    
       BEQ    LFCE1   
       CMP    #$AB    
       BEQ    LFCDC   
       CMP    #$FF    
       BEQ    LFCE5   
       INX            
       JMP    LFCC6   
LFCDC: INX            
       INY            
       JMP    LFCC6   
LFCE1: INX            
       DEY            
       BPL    LFCC6   
LFCE5: STX    $8B     
LFCE7: RTS            

LFCE8: LDX    $DF     
       LDA    $93,X   
       CMP    #$A9    
       BNE    LFD17   
       LDA    #$02    
       STA    $8E     
       LDX    $DF     
       STX    $D6     
       INX            
       STX    $D7     
       LDA    #$43    
       STA    $E7     
       STA    $E8     
       JSR    LFAAC   
       LDX    $8B     
LFD06: LDA    $93,X   
       CMP    #$F1    
       BEQ    LFD14   
       CMP    #$FF    
       BEQ    LFD14   
       INX            
       JMP    LFD06   
LFD14: STX    $8B     
       RTS            

LFD17: LDX    $DF     
       LDA    $93,X   
       CMP    #$A0    
       BNE    LFD2C   
       LDA    #$02    
       STA    $8E     
       LDX    $89     
       INX            
       STX    $8A     
       LDA    #$FF    
       STA    $93,X   
LFD2C: LDX    $DF     
       LDA    $93,X   
       CMP    #$F0    
       BCC    LFD93   
       LDX    $E1     
       LDA    $93,X   
       CMP    #$A3    
       BNE    LFD93   
       LDX    $E0     
       LDA    $93,X   
       CMP    #$9A    
       BCS    LFD53   
       LDA    #$02    
       STA    $8E     
       LDX    $E0     
       STX    $E7     
       LDX    $88     
       STX    $E8     
       JMP    LFD69   
LFD53: LDX    $E0     
       LDA    $93,X   
       CMP    #$ED    
       BNE    LFD93   
       LDA    #$02    
       STA    $8E     
       LDX    $E1     
       INX            
       INX            
       STX    $E7     
       LDX    $DF     
       STX    $E8     
LFD69: LDX    $8A     
       STX    $D6     
       STX    $D7     
       JSR    LFAAC   
       LDY    #$F1    
       LDX    $DF     
       LDA    $93,X   
       CMP    #$F0    
       BNE    LFD8F   
       INX            
       STX    $D7     
       LDX    $E1     
       INX            
       STX    $D6     
       LDX    #$43    
       STX    $E7     
       STX    $E8     
       JSR    LFAAC   
       LDY    #$D6    
LFD8F: LDX    $8A     
       STY    $92,X   
LFD93: RTS            

LFD94: .byte $04,$04,$03,$03,$01,$01,$01,$00,$02
LFD9D: LDY    $88     
       DEY            
       STY    $DF     
       JSR    LFDB2   
       STY    $E0     
       JSR    LFDB2   
       STY    $E1     
       JSR    LFDB2   
       STY    $E2     
       RTS            

LFDB2: LDA.wy $0093,Y 
       CMP    #$ED    
       BNE    LFDC5   
LFDB9: DEY            
       LDA.wy $0093,Y 
       CMP    #$FF    
       BEQ    LFDC6   
       CMP    #$ED    
       BNE    LFDB9   
LFDC5: DEY            
LFDC6: RTS            

LFDC7: LDA    $E6     
       CMP    #$02    
       BNE    LFDDD   
       LDX    $DF     
       LDA    $93,X   
       LDX    $E1     
       CLC            
       SED            
       ADC    $93,X   
       CLD            
       STA    $D9     
       JMP    LFE8B   
LFDDD: LDA    $E6     
       CMP    #$03    
       BNE    LFDF3   
       LDX    $E1     
       LDA    $93,X   
       LDX    $DF     
       SEC            
       SED            
       SBC    $93,X   
       CLD            
       STA    $D9     
       JMP    LFE8B   
LFDF3: LDA    $E6     
       CMP    #$00    
       BNE    LFE36   
       LDX    $DF     
       LDA    $93,X   
       AND    #$0F    
       TAY            
       LDX    $E1     
       LDA    #$00    
LFE04: DEY            
       BMI    LFE0F   
       CLC            
       SED            
       ADC    $93,X   
       CLD            
       JMP    LFE04   
LFE0F: STA    $D9     
       LDX    $DF     
       LDA    $93,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDX    $E1     
       LDA    $93,X   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $DA     
       LDA    $D9     
LFE26: DEY            
       BMI    LFE31   
       CLC            
       SED            
       ADC    $DA     
       CLD            
       JMP    LFE26   
LFE31: STA    $D9     
       JMP    LFE8B   
LFE36: LDA    $E6     
       CMP    #$01    
       BNE    LFE42   
       JSR    LFEA1   
       JMP    LFE8B   
LFE42: LDA    $E6     
       CMP    #$08    
       BNE    LFE52   
       JSR    LFEA1   
       LDA    $DB     
       STA    $D9     
       JMP    LFE8B   
LFE52: LDY    $E6     
       LDX    $E1     
       LDA    $93,X   
       LDX    $DF     
       CPY    #$04    
       BNE    LFE65   
       CMP    $93,X   
       BEQ    LFE7D   
       JMP    LFE84   
LFE65: CPY    #$05    
       BNE    LFE72   
       CMP    $93,X   
       BEQ    LFE84   
       BCS    LFE7D   
       JMP    LFE84   
LFE72: CPY    #$06    
       BNE    LFE7D   
       CMP    $93,X   
       BCC    LFE7D   
       JMP    LFE84   
LFE7D: LDA    #$01    
       STA    $D9     
       JMP    LFE8B   
LFE84: LDA    #$00    
       STA    $D9     
       JMP    LFE8B   
LFE8B: LDX    $E2     
       INX            
       STX    $D6     
       LDX    $DF     
       INX            
       STX    $D7     
       LDA    #$46    
       STA    $E7     
       LDA    #$47    
       STA    $E8     
       JSR    LFAAC   
       RTS            

LFEA1: LDX    $DF     
       LDA    $93,X   
       STA    $DC     
       LDX    $E1     
       LDA    $93,X   
       STA    $DB     
       LDA    #$00    
       STA    $D9     
       LDA    $DC     
       CMP    #$00    
       BNE    LFEB8   
       RTS            

LFEB8: SED            
       LDA    $DC     
       AND    #$F0    
       BNE    LFEE2   
       LDA    $DC     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $DC     
LFEC7: LDA    $DB     
       SEC            
       SBC    $DC     
       BCC    LFEDA   
       STA    $DB     
       LDA    $D9     
       CLC            
       ADC    #$10    
       STA    $D9     
       JMP    LFEC7   
LFEDA: LDA    $DC     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $DC     
LFEE2: LDA    $DB     
       SEC            
       SBC    $DC     
       BCC    LFEF5   
       STA    $DB     
       LDA    $D9     
       CLC            
       ADC    #$01    
       STA    $D9     
       JMP    LFEE2   
LFEF5: CLD            
       RTS            

LFEF7: LDX    $88     
LFEF9: INX            
       LDA    $93,X   
       CMP    #$FF    
       BEQ    LFF1F   
       CMP    $D8     
       BNE    LFEF9   
       LDA    $94,X   
       CMP    #$EE    
       BNE    LFEF9   
       LDA    $95,X   
       CMP    #$F1    
       BCS    LFEF9   
       LDA    $96,X   
       CMP    #$F1    
       BNE    LFEF9   
       STX    $D6     
       INX            
       INX            
       INX            
       INX            
       STX    $D7     
       RTS            

LFF1F: STX    $D6     
       STX    $D7     
       RTS            

LFF24: LDX    $E1     
       LDA    $93,X   
       STA    $D8     
       JSR    LFEF7   
       LDA    $E1     
       STA    $E7     
       LDX    $DF     
       INX            
       INX            
       STX    $E8     
       JSR    LFAAC   
       LDX    $D6     
       INX            
       LDA    #$EE    
       STA    $93,X   
       INX            
       INX            
       LDA    #$F1    
       STA    $93,X   
       LDA    $D8     
       CMP    #$AD    
       BNE    LFF60   
       LDA    #$20    
       STA    $90     
       LDA    #$05    
       STA    AUDC0   
       JSR    LF797   
       AND    #$07    
       TAY            
       LDA    LFFCE,Y 
       STA    AUDF0   
LFF60: RTS            

LFF61: LDX    $DF     
       LDA    $93,X   
       CMP    #$B0    
       BEQ    LFF9A   
       CMP    #$BA    
       BEQ    LFFB8   
       STA    $D8     
       JSR    LFEF7   
       LDX    $D6     
       CPX    $D7     
       BEQ    LFF84   
       INX            
       INX            
       STX    $E7     
       LDX    $D7     
       DEX            
       STX    $E8     
       JMP    LFF8F   
LFF84: LDA    #$00    
LFF86: STA    $D9     
       LDX    #$46    
       STX    $E7     
       INX            
       STX    $E8     
LFF8F: LDX    $DF     
       STX    $D6     
       INX            
       STX    $D7     
       JSR    LFAAC   
       RTS            

LFF9A: LDA    $80     
       AND    #$7F    
       SEC            
       SBC    #$0C    
       CMP    #$0C    
       BCS    LFF84   
       TAY            
       LDA    LFFAC,Y 
       JMP    LFF86   
LFFAC: .byte $01,$04,$07,$99,$02,$05,$08,$01,$03,$06,$09,$00
LFFB8: LDA    #$00    
       ROL    CXPPMM  
       ROL            
       JMP    LFF86   
LFFC0: LDA    $90     
       BEQ    LFFC6   
       DEC    $90     
LFFC6: LDY    $90     
       LDA    LFFD6,Y 
       STA    AUDV0   
       RTS            

LFFCE: .byte $1F,$1B,$18,$17,$14,$12,$10,$0F
LFFD6: .byte $00,$01,$01,$01,$02,$02,$02,$03,$03,$03,$04,$04,$04,$05,$05,$05
       .byte $06,$06,$06,$07,$07,$07,$07,$07,$07,$07,$07,$07,$06,$05,$04,$03
       .byte $02,$01,$00,$00,$38,$F8,$38,$F8,$38,$F8
