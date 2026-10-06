; Disassembly of roms/Superman (1).bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Superman (1).bin
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
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMOVE   =  $2A
CXCLR   =  $2C
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $AC,$F2,$36,$08,$00,$00,$00,$00,$AC,$F2,$0C,$9A,$D0,$C8,$B8,$C0
       .byte $01,$F2,$8C,$0A,$A8,$18,$68,$B0,$0A,$F2,$8A,$0A,$68,$20,$A8,$10
       .byte $13,$F2,$0C,$BA,$38,$28,$B0,$18,$1C,$F2,$BC,$0A,$40,$30,$58,$20
       .byte $25,$F2,$5C,$BC,$48,$38,$80,$28,$2E,$F2,$6C,$08,$58,$40,$20,$30
       .byte $37,$F2,$4C,$08,$60,$48,$28,$38,$40,$F2,$6C,$08,$68,$50,$30,$40
       .byte $76,$F2,$AC,$0C,$70,$58,$A0,$48,$52,$F2,$BC,$0A,$28,$60,$38,$50
       .byte $5B,$F2,$8C,$0A,$80,$68,$40,$58,$64,$F2,$CA,$08,$88,$70,$48,$60
       .byte $6D,$F2,$0A,$BA,$90,$78,$50,$68,$76,$F2,$CC,$0A,$98,$80,$A8,$70
       .byte $7F,$F2,$9C,$08,$30,$88,$60,$78,$88,$F2,$BC,$0C,$A0,$90,$68,$80
       .byte $91,$F2,$4C,$0A,$A8,$98,$70,$88,$49,$F2,$0C,$BA,$B0,$A0,$78,$90
       .byte $A3,$F2,$EC,$8A,$50,$A8,$88,$98,$2E,$F2,$CC,$9A,$78,$B0,$90,$A0
       .byte $9A,$F2,$9C,$0A,$20,$10,$98,$A8,$AC,$F2,$06,$1A,$C0,$68,$50,$78
       .byte $AC,$F2,$06,$4A,$C8,$A8,$70,$38,$AC,$F2,$06,$8A,$D0,$30,$B0,$58
       .byte $AC,$F2,$06,$CA,$B8,$98,$40,$80
LF0D8: .byte $22,$F8,$99,$43,$34,$6F,$20,$38,$38,$60,$38,$38,$90,$38,$38,$A0
       .byte $38,$38,$38,$4D,$3F,$78,$4D,$49,$10,$30
LF0F2: .byte $28,$D3,$BE,$D3,$C4,$D3,$B5,$D3,$CA,$D3,$CD,$D3,$D0,$00,$59,$F3
       .byte $D7,$F1
LF104: .byte $A3,$00,$CF,$F3,$95,$F1,$A6,$00,$CF,$F3,$A2,$F1,$A9,$00,$CF,$F3
       .byte $AF,$F1,$AC,$00,$CF,$F3,$BC,$F1,$AF,$00,$CF,$F3,$C9,$F1,$B2,$00
       .byte $35,$FF,$DD,$F2,$BE,$00,$BB,$FF,$00,$F3,$CA,$00,$C1,$FF,$00,$F3
       .byte $CD,$00,$C7,$FF,$00,$F3,$D0,$00,$41,$F3,$8A,$F1,$D3,$00,$62,$FF
       .byte $00,$F3,$B5,$00,$62,$FF,$BA,$F1,$B8,$00,$62,$FF,$D3,$F2,$BB,$00
       .byte $86,$FF,$F4,$F2,$ED,$F0,$74,$FF,$EB,$F2,$F0,$F0,$9F,$FF,$00,$F3
       .byte $EA,$F0,$8F,$FF,$00,$F3,$DE,$F0,$8F,$FF,$00,$F3,$E1,$F0,$8F,$FF
       .byte $00,$F3,$E4,$F0,$8F,$FF,$00,$F3,$E7,$F0,$AF,$FF,$00,$F3,$C7,$00
       .byte $AE,$F3,$00,$00,$C4,$00,$04,$04,$04,$04,$04,$18,$18,$18,$36,$36
       .byte $04,$16,$16,$48,$48,$48,$C8,$04,$04,$C8,$C8,$C8,$C8,$C8,$16,$16
       .byte $48,$48,$48,$86,$04,$04,$86,$86,$86,$86,$86,$16,$16,$48,$48,$48
       .byte $36,$04,$04,$36,$36,$36,$36,$36,$16,$16,$36,$36,$36,$18,$04,$04
       .byte $18,$18,$18,$18,$18,$16,$16,$48,$48,$48,$66,$04,$04,$66,$66,$66
       .byte $66,$66,$16,$04,$04,$48,$48,$48,$48,$48,$18,$18,$18,$18,$C8,$C8
       .byte $C8,$C8,$04,$B8,$B5,$BE,$B5,$B5,$9B,$B5,$C1,$00,$BB,$B8,$BE,$B8
       .byte $B8,$9B,$B8,$C1,$00,$B5,$BB,$BB,$9B,$BB,$C1,$00,$00,$48,$01,$B0
       .byte $4C,$24,$30,$1F,$E0,$F0,$E2,$00,$B0,$F8,$65,$30,$FF,$F1,$F0,$80
       .byte $00,$30,$E5,$2A,$F0,$F0,$80,$F0,$14,$41,$30,$51,$11,$F0,$1F,$F3
       .byte $F0,$00,$C0,$E0,$49,$E4,$F0,$00,$00,$F0,$02,$00,$10,$13,$11,$30
       .byte $07,$FF,$FF,$F1,$C4,$C0,$00,$00,$F0,$F0,$04,$F0,$0A,$54,$20,$A3
       .byte $C1,$90,$83,$FF,$C0,$00,$60,$40,$82,$79,$20,$CE,$FC,$80,$10,$80
       .byte $00,$91,$8A,$C0,$18,$C0,$F0,$80,$20,$B0,$D5,$2A,$B0,$C1,$60,$30
       .byte $03,$F7,$70,$07,$03,$30,$BF,$FF,$F0,$01,$00,$30,$81,$09,$70,$E3
       .byte $0F,$70,$0C,$84,$70,$CF,$28,$70,$1F,$E1,$F0,$91,$00,$30,$F3,$40
       .byte $70,$FF,$0F,$70,$10,$00,$F0,$5A,$00,$F0,$18,$07,$F0,$E0,$00,$F0
       .byte $F0,$E0,$F0,$FF,$E0,$F0,$E0,$00,$70,$E1,$F0,$F0,$F0,$FC,$F0,$80
       .byte $80,$70,$D0,$20,$70,$C0,$81,$F0,$3F,$FF,$80,$3F,$FF,$80,$00,$00
       .byte $00,$48,$48,$48,$36,$86,$86,$86,$86,$36,$36,$48,$48,$48,$48,$36
       .byte $36,$86,$86,$86,$86,$86,$86,$36,$36,$36,$16,$16,$48,$48,$48,$88
       .byte $88,$88,$88,$88,$88,$88,$88,$88,$16,$B8,$B8,$48,$48,$48,$B8,$B8
       .byte $B8,$B8,$B8,$48,$48,$48,$48,$86,$86,$86,$86,$86,$86,$86,$86,$86
       .byte $86,$86,$86,$86,$86,$86,$86,$86,$CC,$0A,$0A,$0A,$16,$16,$16,$16
       .byte $16,$16,$16,$16,$16,$16,$16,$16,$16,$16,$16
LF30F: .byte $7A,$5A,$5A,$5E,$7E,$44,$44,$44,$44,$44,$72,$4E,$78,$1E,$7E,$72
       .byte $46,$62,$4E,$7E,$5A,$5E,$72,$42,$4A,$78,$1E,$72,$4E,$7E,$78,$1E
       .byte $7A,$5E,$7E,$72,$42,$42,$42,$4E,$7A,$5E,$7A,$5E,$7E,$7A,$5E,$72
       .byte $4E,$7E,$08,$10,$21,$62,$A6,$72,$FE,$FE,$F8,$50,$50,$00,$80,$40
       .byte $24,$32,$2B,$72,$FE,$FE,$F8,$50,$50,$00,$E0,$38,$20,$2E,$2E,$2E
       .byte $2C,$3E,$3F,$3F,$0E,$0C,$0C,$0C,$0C,$0E,$00,$38,$E0,$20,$2E,$2E
       .byte $2E,$2C,$3E,$3F,$3F,$0E,$0C,$0C,$0C,$0C,$0E,$00,$C6,$36,$0E,$1C
       .byte $3F,$76,$E0,$C0,$80,$80,$00,$26,$56,$8E,$1C,$3F,$76,$E0,$C0,$80
       .byte $80,$00,$38,$38,$38,$30,$38,$38,$38,$38,$30,$30,$30,$30,$30,$38
       .byte $00,$38,$38,$38,$30,$38,$78,$B4,$B3,$30,$38,$6C,$44,$44,$66,$00
       .byte $38,$7C,$38,$38,$30,$38,$38,$38,$38,$38,$30,$30,$30,$30,$38,$00
       .byte $38,$7C,$38,$38,$30,$38,$78,$BC,$BB,$38,$38,$6C,$44,$44,$66,$00
       .byte $70,$F8,$70,$70,$60,$78,$FF,$F2,$70,$60,$60,$60,$60,$70,$00,$70
       .byte $F8,$70,$70,$60,$78,$FF,$F2,$70,$70,$50,$C8,$88,$CC,$00,$D3,$A3
       .byte $A3,$B5,$9B,$A3,$00,$BB,$BE,$BE,$9B,$BE,$C1,$00
LF3FB: .byte $60,$50,$40,$30,$22
LF400: LDX    #$01    
LF402: LDA    $E2,X   
       AND    #$0F    
       STA    $E4,X   
       ASL            
       ASL            
       CLC            
       ADC    $E4,X   
       STA    $E4,X   
       LDA    $E2,X   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E6,X   
       ASL            
       ASL            
       CLC            
       ADC    $E6,X   
       STA    $E6,X   
       DEX            
       BPL    LF402   
LF423: LDA    INTIM   
       BNE    LF423   
       LDA    #$19    
       STA    TIM64T  
       LDX    #$04    
LF42F: STA    WSYNC   
       LDA    $EC     
       STA    PF1     
       LDA    $ED     
       STA    PF2     
       LDY    $E4     
       LDA    LF30F,Y 
       AND    #$F0    
       STA    $8A     
       LDY    $E6     
       LDA    LF30F,Y 
       LDY    $E9     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STY.w  $000F   
       ORA    $8A     
       STA    $E8     
       STA    PF1     
       INC    $E4     
       INC    $E6     
       LDA    $EC     
       LDY    $ED     
       STA    WSYNC   
       STA    PF1     
       STY    PF2     
       LDY    $E7     
       LDA    LF30F,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $8A     
       LDY    $E5     
       LDA    LF30F,Y 
       AND    #$0F    
       ORA    $8A     
       LDY    $E9     
       STA    $E9     
       STY.w  $000F   
       LDA    $E8     
       STA    PF1     
       INC    $E7     
       INC    $E5     
       DEX            
       BPL    LF42F   
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    $8D     
       STA    $8E     
       STA    GRP0    
       STA    GRP1    
       LDA    #$08    
       STA    $8C     
       LDA    #$68    
       STA    $8B     
       STA    WSYNC   
       LDX    #$05    
       LDA    $91     
       CMP    #$3C    
       BEQ    LF4C2   
       CMP    #$7E    
       BEQ    LF4C2   
       CMP    #$2A    
       BEQ    LF4C2   
       CMP    #$30    
       BEQ    LF4C2   
       CMP    #$36    
       BEQ    LF4C2   
       LDX    #$00    
LF4C2: STX    NUSIZ0  
       LDA    #$00    
       LDX    $91     
       CPX    #$2A    
       BCS    LF4CF   
       LDA    $94     
       ASL            
LF4CF: STA    REFP0   
       LDA    $9C     
       LDX    #$01    
LF4D5: LDY    #$02    
       SEC            
LF4D8: INY            
       SBC    #$0F    
       BCS    LF4D8   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    WSYNC   
LF4E7: DEY            
       BPL    LF4E7   
       STA    RESP0,X 
       STA    HMP0,X  
       LDA    $88     
       DEX            
       BPL    LF4D5   
LF4F3: LDA    INTIM   
       BNE    LF4F3   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    $E4     
       STA    $E5     
       STA    $E6     
       STA    CXCLR   
       STA    WSYNC   
       LDA    $EA     
       STA    COLUBK  
       LDA    $EB     
       STA    COLUPF  
       JMP    LF52F   
LF519: LDA    $8B     
       CMP    $9D     
       STA    WSYNC   
       BPL    LF52F   
       LDY    $8E     
       LDA    ($86),Y 
       STA    COLUP1  
       LDA    ($A0),Y 
       STA    GRP1    
       BEQ    LF52F   
       INC    $8E     
LF52F: LDX    #$00    
       LDY    #$00    
       LDA    $8B     
       CMP    $89     
       BPL    LF545   
       LDY    $8D     
       LDA    ($84),Y 
       TAX            
       LDA    ($82),Y 
       TAY            
       BEQ    LF545   
       INC    $8D     
LF545: LDA    $8B     
       AND    #$0F    
       BNE    LF584   
       STA    WSYNC   
       STY    GRP0    
       STX    COLUP0  
       LDY    $8C     
       BPL    LF568   
       LDY    #$00    
       STY    $E4     
       STY    $E5     
       LDA    $80     
       CMP    #$0A    
       BNE    LF563   
       LDY    #$C0    
LF563: STY    $E6     
       JMP    LF579   
LF568: LDA    ($80),Y 
       STA    $E4     
       DEY            
       LDA    ($80),Y 
       STA    $E5     
       DEY            
       LDA    ($80),Y 
       STA    $E6     
       DEY            
       STY    $8C     
LF579: DEC    $8B     
       LDA    $8B     
       CMP    #$08    
       BPL    LF519   
       JMP    LF599   
LF584: STA    WSYNC   
       LDA    $E4     
       STA    PF0     
       LDA    $E5     
       STA    PF1     
       STY    GRP0    
       STX    COLUP0  
       LDA    $E6     
       STA    PF2     
       JMP    LF579   
LF599: LDA    #$02    
       STA    TIM64T  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
LF5A4: LDA    INTIM   
       BNE    LF5A4   
       LDY    #$37    
       STY    TIM64T  
       LDY    #$02    
       STY    WSYNC   
       STY    VBLANK  
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    PF2     
       LDA    SWCHB   
       TAX            
       EOR    #$FF    
       AND    $EE     
       STX    $EE     
       LSR            
       BCS    LF621   
       INC    $DE     
       LDA    $EF     
       BNE    LF5EC   
       LDA    $DE     
       BNE    LF617   
       LDA    #$08    
       CLC            
       ADC    $9B     
       CMP    #$B0    
       BCC    LF5EA   
       LDA    #$08    
LF5EA: STA    $9B     
LF5EC: LDA    $DE     
       SEC            
       SBC    #$3A    
       BNE    LF617   
       STA    $DE     
       LDA    $EF     
       BEQ    LF617   
       INC    $EF     
       BNE    LF601   
       LDA    $9B     
       STA    $9A     
LF601: SED            
       LDA    $E2     
       CLC            
       ADC    #$01    
       STA    $E2     
       SEC            
       SBC    #$60    
       BNE    LF617   
       STA    $E2     
       LDA    $E3     
       CLC            
       ADC    #$01    
       STA    $E3     
LF617: CLD            
       LDA    #$34    
       STA    COLUPF  
       LDA    $EB     
       STA    COLUBK  
       RTS            


START:
LF621: SEI            
       CLD            
       LDA    #$00    
       LDX    #$04    
LF627: STA    VSYNC,X 
       INX            
       BNE    LF627   
       DEX            
       TXS            
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$38    
       STA    $C2     
       STA    $C3     
       STA    $B7     
       LDA    #$F2    
       STA    $87     
       LDA    #$C8    
       LDX    #$B5    
       LDY    #$03    
       JSR    LF743   
       LDX    #$C7    
       JSR    LF743   
       LDA    #$10    
       STA    $9A     
       STA    $9B     
       LDA    #$30    
       STA    $9C     
       LDA    #$60    
       STA    $9D     
       LDA    #$84    
       STA    $97     
       LDA    #$F3    
       STA    $A1     
       LDA    #$BE    
       STA    $D7     
       LDA    #$18    
       STA    $C7     
       LDA    #$48    
       LDX    #$C8    
       JSR    LF743   
       LDA    #$30    
       LDX    #$C9    
       JSR    LF743   
       JSR    LF5A4   
LF67B: JSR    LFB1A   
       JSR    LF978   
       JSR    LFE8E   
       JSR    LFB7C   
       JSR    LF9DF   
       JSR    LF6DC   
       JSR    LF400   
       JSR    LF9AE   
       JSR    LF8CF   
       JSR    LF88F   
       JSR    LF950   
       JSR    LF400   
       JSR    LFCC5   
       JSR    LF928   
       JSR    LFA8F   
       JSR    LF400   
       JMP    LF67B   
LF6AE: LDX    #$07    
LF6B0: LDA    $CA,X   
       CMP    #$60    
       BCS    LF6DB   
       CMP    #$30    
       BCC    LF6DB   
       DEX            
       LDA    $CA,X   
       CMP    #$18    
       BNE    LF6DB   
       DEX            
       DEX            
       BPL    LF6B0   
       STX    $CA     
       STX    $CD     
       STX    $D0     
       LDA    #$18    
       STA    $C7     
       LDA    #$84    
       STA    $97     
       LDA    #$C4    
       STA    $D7     
       LDA    #$20    
       STA    $F0     
LF6DB: RTS            

LF6DC: LDA    $EF     
       BEQ    LF6F2   
       LDA    $9E     
       CMP    #$FF    
       BCS    LF6AE   
       CMP    #$00    
       BNE    LF6F3   
       LDA    $9B     
       CMP    #$18    
       BNE    LF6F2   
LF6F0: INC    $9E     
LF6F2: RTS            

LF6F3: LDY    $9E     
       CPY    #$0C    
       BNE    LF70A   
       LDA    #$00    
       STA    $C7     
       LDA    #$18    
       STA    $CA     
       STA    $CD     
       STA    $D0     
       LDA    #$10    
       STA    $F0     
       TYA            
LF70A: BCC    LF71C   
       INC    $CB     
       INC    $CC     
       INC    $CC     
       INC    $CF     
       INC    $CF     
       DEC    $D1     
       INC    $D2     
       INC    $D2     
LF71C: CPY    #$28    
       BNE    LF731   
       LDX    #$A3    
       JSR    LF78B   
       LDA    #$48    
       STA    $CA     
       LDA    #$58    
       STA    $CD     
       LDA    #$80    
       STA    $D0     
LF731: LDA    $9F     
       AND    #$7F    
       BNE    LF74E   
       LDA    #$FF    
       STA    $9E     
       LDA    #$D0    
       STA    $D3     
       LDX    #$A3    
       LDY    #$05    
LF743: STA    VSYNC,X 
       INX            
       INX            
       INX            
       DEY            
       BPL    LF743   
       LDY    #$03    
       RTS            

LF74E: CPY    #$38    
       BNE    LF757   
       LDX    #$A6    
       JSR    LF78B   
LF757: CPY    #$BC    
       BNE    LF764   
       LDX    #$D3    
       JSR    LF78B   
       LDA    #$58    
       STA    $D5     
LF764: CPY    #$FE    
       BNE    LF76D   
       LDX    #$B2    
       JSR    LF78B   
LF76D: CPY    #$58    
       BNE    LF776   
       LDX    #$A9    
       JSR    LF78B   
LF776: CPY    #$78    
       BNE    LF77F   
       LDX    #$AC    
       JSR    LF78B   
LF77F: CPY    #$98    
       BNE    LF788   
       LDX    #$AF    
       JSR    LF78B   
LF788: JMP    LF6F0   
LF78B: LDA    #$18    
       STA    VSYNC,X 
       LDA    #$78    
       STA    VBLANK,X
       LDA    #$2C    
       STA    WSYNC,X 
       RTS            

LF798: LDA    #$0F    
       STA    $96     
       LDX    $F0     
       BMI    LF7DD   
       LDA    SWCHA   
       TAY            
       JSR    LF7DE   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       PHA            
       JSR    LF7FA   
       PLA            
       JSR    LF7DE   
       TYA            
       JSR    LF7FA   
       LDX    $EF     
       BEQ    LF7CF   
       LDA    SWCHB   
       AND    #$02    
       BNE    LF7C9   
       STA    $EF     
       LDA    $9B     
       STA    $9A     
LF7C9: LDA    $96     
       CMP    #$0F    
       BNE    LF7D9   
LF7CF: LDA    $96     
       CMP    #$0F    
       BEQ    LF7DD   
       LDX    $9A     
       STX    $9B     
LF7D9: LDX    #$01    
       STX    $EF     
LF7DD: RTS            

LF7DE: TAX            
       AND    #$04    
       BNE    LF7EC   
       LDA    #$04    
       ORA    $96     
       AND    #$0D    
       STA    $96     
       RTS            

LF7EC: TXA            
       AND    #$08    
       BNE    LF7F9   
       LDA    #$02    
       ORA    $96     
       AND    #$0B    
       STA    $96     
LF7F9: RTS            

LF7FA: TAX            
       AND    #$01    
       BNE    LF808   
       LDA    #$01    
       ORA    $96     
       AND    #$07    
       STA    $96     
       RTS            

LF808: TXA            
       AND    #$02    
       BNE    LF815   
       LDA    #$08    
       ORA    $96     
       AND    #$0E    
       STA    $96     
LF815: RTS            

LF816: STA    $96     
       LDA    $EF     
       BEQ    LF842   
LF81C: DEY            
       BMI    LF842   
       LDA    $96     
       AND    #$04    
       BNE    LF827   
       INC    VBLANK,X
LF827: LDA    $96     
       AND    #$02    
       BNE    LF82F   
       DEC    VBLANK,X
LF82F: LDA    $96     
       AND    #$08    
       BNE    LF837   
       INC    WSYNC,X 
LF837: LDA    $96     
       AND    #$01    
       BNE    LF83F   
       DEC    WSYNC,X 
LF83F: JMP    LF81C   
LF842: RTS            

LF843: JSR    LF816   
       LDA    WSYNC,X 
       CMP    #$6A    
       BMI    LF854   
       LDA    #$14    
       STA    WSYNC,X 
       LDY    #$04    
       BNE    LF882   
LF854: LDA    VBLANK,X
       CMP    #$03    
       BCC    LF85E   
       CMP    #$F0    
       BCC    LF866   
LF85E: LDA    #$8E    
       STA    VBLANK,X
       LDY    #$07    
       BNE    LF882   
LF866: LDA    WSYNC,X 
       CMP    #$14    
       BPL    LF874   
       LDA    #$69    
       STA    WSYNC,X 
       LDY    #$06    
       BNE    LF882   
LF874: LDA    VBLANK,X
       CMP    #$93    
       BCC    LF88E   
       LDA    #$03    
       STA    VBLANK,X
       LDY    #$05    
       BNE    LF882   
LF882: LDA    VSYNC,X 
       STA    $8A     
       LDA    #$F0    
       STA    $8B     
       LDA    ($8A),Y 
       STA    VSYNC,X 
LF88E: RTS            

LF88F: LDX    #$04    
       STX    $DA     
       LDX    #$00    
       LDA    $9F     
       AND    #$20    
       BEQ    LF89D   
       LDX    #$9B    
LF89D: STX    $DC     
       LDA    #$F1    
       STA    $D9     
       LDA    $DE     
       AND    #$03    
       BEQ    LF8BF   
       CMP    #$02    
       BEQ    LF8B6   
       LDA    #$F9    
       STA    $D8     
       LDY    #$BB    
       JMP    LFE1B   
LF8B6: LDA    #$F0    
       STA    $D8     
       LDY    #$B8    
       JMP    LFE1B   
LF8BF: LDA    #$E7    
       STA    $D8     
       LDY    #$B5    
       JMP    LFE1B   
LF8C8: CPX    $97     
       BNE    LF8CE   
       PLA            
       PLA            
LF8CE: RTS            

LF8CF: LDA    #$04    
       STA    $DA     
       LDA    #$00    
       STA    $DC     
       LDA    #$FF    
       STA    $D9     
       LDA    $DE     
       AND    #$03    
       BEQ    LF918   
       TAX            
       DEX            
       BEQ    LF908   
       DEX            
       BEQ    LF8F8   
       LDX    #$18    
       JSR    LF8C8   
       LDA    #$DA    
       STA    $D8     
       LDA    #$FD    
       LDY    #$AF    
       JMP    LFDFD   
LF8F8: LDX    #$12    
       JSR    LF8C8   
       LDA    #$E3    
       STA    $D8     
       LDA    #$F7    
       LDY    #$AC    
       JMP    LFDFD   
LF908: LDX    #$0C    
       JSR    LF8C8   
       LDA    #$EA    
       STA    $D8     
       LDA    #$DF    
       LDY    #$A9    
       JMP    LFDFD   
LF918: LDX    #$06    
       JSR    LF8C8   
       LDA    #$F1    
       STA    $D8     
       LDA    #$7F    
       LDY    #$A6    
       JMP    LFDFD   
LF928: LDX    #$00    
       JSR    LF8C8   
       LDA    #$02    
       STA    $DA     
       LDA    #$00    
       STA    $DC     
       LDA    #$01    
       AND    $ED     
       LDX    $A3     
       CPX    #$00    
       BEQ    LF941   
       ORA    #$0C    
LF941: STA    $ED     
       LDA    #$ED    
       STA    $D8     
       LDA    #$F3    
       STA    $D9     
       LDY    #$A3    
       JMP    LFE1B   
LF950: LDX    #$1E    
       JSR    LF8C8   
       LDA    #$02    
       STA    $DA     
       LDA    #$00    
       STA    $DC     
       LDA    #$2C    
       STA    $D8     
       LDA    #$FF    
       STA    $D9     
       LDA    #$0C    
       AND    $ED     
       LDX    $B2     
       CPX    #$00    
       BEQ    LF971   
       ORA    #$01    
LF971: STA    $ED     
       LDY    #$B2    
       JMP    LFE11   
LF978: LDA    $DE     
       AND    #$01    
       BEQ    LF97F   
       RTS            

LF97F: LDA    #$08    
       CMP    $BE     
       BNE    LF98D   
       LDA    #$78    
       CMP    $D3     
       BNE    LF98D   
       STA    $BE     
LF98D: LDX    #$24    
       JSR    LF8C8   
       LDX    #$02    
       STX    $DA     
       DEX            
       LDA    $9F     
       AND    #$20    
       BNE    LF99F   
       LDX    #$9B    
LF99F: STX    $DC     
       LDA    #$F4    
       STA    $D8     
       LDA    #$F3    
       STA    $D9     
       LDY    #$BE    
       JMP    LFE11   
LF9AE: LDA    $97     
       CMP    #$84    
       BNE    LF9CB   
       LDX    #$1B    
LF9B6: LDY    #$37    
LF9B8: TYA            
       CMP    $A4,X   
       BEQ    LF9CC   
       CMP    $A5,X   
       BEQ    LF9CC   
       INY            
       CPY    #$3A    
       BNE    LF9B8   
       DEX            
       DEX            
       DEX            
       BPL    LF9B6   
LF9CB: RTS            

LF9CC: LDY    #$03    
       LDA    $A3,X   
LF9D0: CMP    LFFD1,Y 
       BEQ    LF9D9   
       DEY            
       BPL    LF9D0   
       RTS            

LF9D9: LDA    LFFD6,Y 
       STA    $A3,X   
       RTS            

LF9DF: LDA    CXPPMM  
       BPL    LFA05   
       LDA    $91     
       CMP    #$5A    
       BNE    LFA08   
       LDA    $9F     
       AND    #$BF    
       LDX    $EC     
       BNE    LF9FD   
       LDX    $ED     
       BNE    LF9FD   
       LDX    $C7     
       CPX    #$18    
       BNE    LF9FD   
       ORA    #$40    
LF9FD: STA    $9F     
       LDX    LF0F2   
       DEX            
       STX    $9D     
LFA05: JMP    LFA8E   
LFA08: LDA    $EF     
       BEQ    LFA05   
       LDY    $91     
       CPY    #$24    
       BNE    LFA20   
       LDX    $F0     
       BMI    LFA20   
       LDA    #$DF    
       AND    $9F     
       STA    $9F     
       LDA    #$02    
       STA    $F0     
LFA20: CPY    #$60    
       BNE    LFA3C   
       LDX    $97     
       CPX    #$24    
       BPL    LFA8E   
       JSR    LFE82   
       LDX    #$00    
       LDA    #$00    
       STA    ($8F,X) 
       LDA    #$84    
       STA    $97     
       LDA    #$08    
       STA    $F0     
       RTS            

LFA3C: CPY    #$54    
       BNE    LFA4C   
       LDA    #$08    
       STA    $9B     
       LDA    #$40    
       AND    $9F     
       BEQ    LFA8E   
       STA    $F0     
LFA4C: LDX    #$04    
       LDA    #$7E    
LFA50: DEX            
       BMI    LFA60   
       SEC            
       SBC    #$06    
       CMP    $91     
       BNE    LFA50   
       LDA    LFFD6,X 
       STA    $9B     
       RTS            

LFA60: CPY    #$42    
       BEQ    LFA6C   
       CPY    #$48    
       BEQ    LFA6C   
       CPY    #$4E    
       BNE    LFA76   
LFA6C: LDA    #$A0    
       ORA    $9F     
       STA    $9F     
       LDA    #$01    
       STA    $F0     
LFA76: LDA    $9F     
       AND    #$E0    
       BNE    LFA8E   
       LDA    $97     
       CMP    #$84    
       BNE    LFA8E   
       LDA    $91     
       CMP    #$42    
       BPL    LFA8E   
       STA    $97     
       LDA    #$04    
       STA    $F0     
LFA8E: RTS            

LFA8F: LDA    $EF     
       BEQ    LFAF6   
       LDA    #$03    
       STA    AUDC0   
       LDA    $91     
       CMP    #$3C    
       BEQ    LFAB6   
       CMP    #$00    
       BEQ    LFAC5   
       CMP    #$42    
       BEQ    LFACB   
       CMP    #$48    
       BEQ    LFACB   
       CMP    #$4E    
       BEQ    LFACB   
       LDA    $E0     
       ORA    $F0     
       BNE    LFAB5   
       STA    AUDV0   
LFAB5: RTS            

LFAB6: LDA    #$0C    
       STA    AUDF0   
       LDA    #$0F    
LFABC: STA    AUDV0   
       LDX    $F0     
       BNE    LFAC4   
       STA    $E0     
LFAC4: RTS            

LFAC5: LDA    #$0B    
       STA    AUDF0   
       BNE    LFABC   
LFACB: LDA    #$04    
       STA    AUDC0   
       STA    AUDF0   
       AND    $DE     
       STA    AUDV0   
       RTS            

LFAD6: JSR    LF798   
       LDA    #$00    
       TAY            
       TAX            
       ORA    INPT4   
       AND    INPT5   
       BMI    LFAFD   
       LDA    $96     
       CMP    #$0F    
       BEQ    LFB11   
       INX            
       STX    AUDC1   
       LDA    #$06    
       AND    $DE     
       STA    AUDF1   
       TAX            
       JMP    LFB11   
LFAF6: STA    AUDV0   
       STA    AUDV1   
       STA    $EF     
       RTS            

LFAFD: LDA    $9F     
       BNE    LFB11   
       LDA    #$08    
       STA    AUDC1   
       STA    AUDF1   
LFB07: LDA    LF3FB,Y 
       INY            
       INX            
       INX            
       CMP    $9D     
       BCS    LFB07   
LFB11: STX    AUDV1   
       LDA    $E0     
       BEQ    LFB19   
       DEC    $E0     
LFB19: RTS            

LFB1A: LDA    $EF     
       BEQ    LFAF6   
       LDA    $F0     
       BEQ    LFAD6   
       LDA    $E0     
       BNE    LFB2A   
       LDA    #$10    
       STA    $E0     
LFB2A: LDX    #$06    
       LDA    $F0     
LFB2E: DEX            
       BMI    LFB4B   
       LSR            
       BCC    LFB2E   
       LDA    LF0D8,X 
       STA    AUDC1   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDF1   
       DEC    $E0     
       LDA    $E0     
       STA    AUDV1   
       BEQ    LFB48   
       RTS            

LFB48: STA    $F0     
       RTS            

LFB4B: LDA    $F0     
       BMI    LFB57   
       LDA    #$30    
       STA    $E0     
       LDA    #$80    
       STA    $F0     
LFB57: LDA    #$0C    
       STA    AUDC1   
       DEC    $E0     
       LDA    $E0     
       BEQ    LFAF6   
       AND    #$F0    
       BEQ    LFB78   
       AND    #$E0    
       BEQ    LFB74   
       LDA    #$08    
LFB6B: DEC    $E0     
LFB6D: STA    AUDF1   
       LDA    $E0     
       STA    AUDV1   
       RTS            

LFB74: LDA    #$06    
       BNE    LFB6B   
LFB78: LDA    #$0A    
       BNE    LFB6D   
LFB7C: JSR    LF798   
       EOR    #$0F    
       AND    #$06    
       BEQ    LFB89   
       LDA    $96     
       STA    $94     
LFB89: LDA    $94     
       ASL            
       STA    REFP1   
       LDA    $9F     
       BNE    LFB95   
       JMP    LFC35   
LFB95: LDA    #$00    
       STA    NUSIZ1  
       LDA    #$84    
       STA    $97     
       LDA    $9F     
       AND    #$60    
       BEQ    LFC04   
       LDA    $9B     
       LDX    #$04    
LFBA7: CMP    LFFD5,X 
       BEQ    LFBBF   
       DEX            
       BPL    LFBA7   
       LDA    #$22    
       CMP    $9D     
       BMI    LFBB7   
       STA    $9D     
LFBB7: LDA    #$34    
       CMP    $9D     
       BPL    LFBBF   
       STA    $9D     
LFBBF: LDA    $9F     
       AND    #$40    
       BEQ    LFC04   
       LDX    #$AF    
       LDA    $DE     
       AND    #$02    
       BEQ    LFBD5   
       LDA    $96     
       CMP    #$0F    
       BEQ    LFBD5   
       LDX    #$BF    
LFBD5: LDY    #$CE    
       LDA    #$18    
       CMP    $9B     
       BNE    LFBF3   
       LDA    #$36    
       CMP    $9C     
       BCS    LFBE5   
       STA    $9D     
LFBE5: LDA    #$18    
       CMP    $C7     
       BEQ    LFBF3   
       LDA    #$43    
       CMP    $9C     
       BCS    LFBF3   
       STA    $9C     
LFBF3: LDA    #$10    
       CMP    $9B     
       BNE    LFC01   
       LDA    #$30    
       CMP    $9C     
       BCC    LFC01   
       STA    $9C     
LFC01: JMP    LFC9F   
LFC04: LDX    #$91    
       LDA    $DE     
       AND    #$02    
       BEQ    LFC14   
       LDA    $96     
       CMP    #$0F    
       BEQ    LFC14   
       LDX    #$A0    
LFC14: LDY    #$BF    
       LDA    $9F     
       AND    #$20    
       BNE    LFC01   
       STX    $8A     
       LDA    $9F     
       AND    #$7F    
       LDX    $9D     
       CPX    #$2C    
       BCS    LFC2E   
       CPX    #$22    
       BCC    LFC2E   
       ORA    #$80    
LFC2E: STA    $9F     
       LDX    $8A     
       JMP    LFC9F   
LFC35: LDA    #$05    
       STA    NUSIZ1  
       LDX    $97     
       CPX    #$84    
       BEQ    LFC63   
       JSR    LFE82   
       LDA    $9B     
       LDX    #$00    
       STA    ($8F,X) 
       LDY    #$F8    
       LDA    $94     
       AND    #$02    
       BEQ    LFC52   
       LDY    #$10    
LFC52: STY    $8A     
       LDA    $9C     
       INC    $8F     
       CLC            
       ADC    $8A     
       STA    ($8F,X) 
       LDA    $9D     
       INC    $8F     
       STA    ($8F,X) 
LFC63: LDA    $96     
       CMP    #$0F    
       BEQ    LFC74   
       LDA    $E2     
       LSR            
       ORA    $E3     
       BNE    LFC93   
       LDA    #$0F    
       STA    $96     
LFC74: LDA    INPT4   
       AND    INPT5   
       BPL    LFC93   
       LDA    $EF     
       BEQ    LFC93   
       LDA    $9D     
       SEC            
       SBC    #$04    
       STA    $9D     
       CMP    #$22    
       BMI    LFC93   
       CMP    #$2C    
       BPL    LFC93   
       LDA    #$80    
       ORA    $9F     
       STA    $9F     
LFC93: LDX    #$7B    
       LDA    $DE     
       AND    #$04    
       BEQ    LFC9D   
       LDX    #$86    
LFC9D: LDY    #$B5    
LFC9F: STY    $86     
       STX    $A0     
       LDY    #$04    
       LDA    $9F     
       BEQ    LFCAB   
       LDY    #$02    
LFCAB: LDX    #$9B    
       STX    $DB     
       LDA    INPT4   
       AND    INPT5   
       BMI    LFCC0   
       LDA    $96     
       CMP    #$0F    
       BEQ    LFCC0   
       LDA    #$AE    
       STA    $A0     
       RTS            

LFCC0: LDA    $96     
       JMP    LF843   
LFCC5: LDA    $EF     
       BEQ    LFCCF   
       LDA    INPT4   
       AND    INPT5   
       BPL    LFCD2   
LFCCF: JMP    LFCFD   
LFCD2: JSR    LF798   
       CMP    #$0F    
       BEQ    LFCCF   
       LDA    $9B     
       STA    $9A     
       LDA    #$AE    
       STA    $A0     
       LDA    $96     
       LDX    #$04    
LFCE5: DEX            
       LSR            
       BCS    LFCE5   
       LDA    LFFCD,X 
       CLC            
       ADC    $9B     
       TAX            
       LDA    LF000,X 
       STA    $9B     
       JSR    LFCFD   
       LDA    $9A     
       STA    $9B     
       RTS            

LFCFD: LDA    $9B     
       STA    $8A     
       STA    $C4     
       LDA    #$F0    
       STA    $8B     
       LDY    #$00    
       LDA    ($8A),Y 
       STA    $80     
       INY            
       LDA    ($8A),Y 
       STA    $81     
       INY            
       LDA    ($8A),Y 
       LDX    $EF     
       BNE    LFD1B   
       AND    #$F7    
LFD1B: STA    $EB     
       INY            
       LDA    ($8A),Y 
       LDY    $EF     
       BNE    LFD26   
       AND    #$F7    
LFD26: STA    $EA     
       LDA    $91     
       STA    $92     
       LDA    #$F1    
       STA    $93     
       LDX    #$15    
LFD32: LDY    #$00    
       LDA    $92     
       CLC            
       ADC    #$06    
       CMP    #$84    
       BCS    LFD3E   
       TAY            
LFD3E: STY    $92     
       LDY    #$04    
       JSR    LFDB5   
       LDY    #$00    
       LDA    ($8F),Y 
       CMP    $9B     
       BEQ    LFD54   
       DEX            
       BPL    LFD32   
       LDA    #$84    
       STA    $92     
LFD54: LDA    $92     
       STA    $91     
       LDY    #$00    
       LDA    ($92),Y 
       STA    $82     
       INY            
       LDA    ($92),Y 
       STA    $83     
       INY            
       LDA    ($92),Y 
       STA    $84     
       INY            
       LDA    ($92),Y 
       STA    $85     
       INY            
       JSR    LFDB5   
       LDY    #$01    
       LDA    ($8F),Y 
       STA    $88     
       INY            
       LDA    ($8F),Y 
       STA    $89     
       LDY    $82     
       LDX    #$53    
       LDA    $F0     
       AND    #$02    
       BEQ    LFD8A   
       CPY    #$35    
       BEQ    LFDB2   
LFD8A: LDA    $DE     
       AND    #$08    
       BEQ    LFDB4   
       LDX    #$6A    
       CPY    #$59    
       BEQ    LFDB2   
       LDX    #$6B    
       CPY    #$62    
       BEQ    LFDB2   
       LDX    #$4D    
       CPY    #$41    
       BEQ    LFDB2   
       LDA    $EF     
       BEQ    LFDB4   
       LDX    #$DE    
       CPY    #$CF    
       BEQ    LFDB2   
       CPY    #$35    
       BNE    LFDB4   
       LDX    #$44    
LFDB2: STX    $82     
LFDB4: RTS            

LFDB5: LDA    ($92),Y 
       STA    $8F     
       INY            
       LDA    ($92),Y 
       STA    $90     
       RTS            

LFDBF: LDA    #$0F    
       STA    $96     
       LDA.wy $0000,Y 
       CMP    VSYNC,X 
       BNE    LFDFA   
       LDA.wy $0001,Y 
       CMP    VBLANK,X
       BCC    LFDDC   
       BEQ    LFDE2   
       LDA    $96     
       AND    #$0B    
       STA    $96     
       JMP    LFDE2   
LFDDC: LDA    $96     
       AND    #$0D    
       STA    $96     
LFDE2: LDA.wy $0002,Y 
       CMP    WSYNC,X 
       BCC    LFDF4   
       BEQ    LFDFA   
       LDA    $96     
       AND    #$07    
       STA    $96     
       JMP    LFDFA   
LFDF4: LDA    $96     
       AND    #$0E    
       STA    $96     
LFDFA: LDA    $96     
       RTS            

LFDFD: TAX            
       AND    $EC     
       STA    $EC     
       TXA            
       EOR    #$FF    
       ORA    $EC     
       TAX            
       LDA.wy $0000,Y 
       CMP    #$00    
       BEQ    LFE11   
       STX    $EC     
LFE11: LDA    #$35    
       CMP.wy $0002,Y 
       BPL    LFE1B   
       STA.wy $0002,Y 
LFE1B: STY    $DB     
       LDA.wy $0000,Y 
       LDX    #$04    
LFE22: CMP    LFFD1,X 
       BNE    LFE29   
       STA    $C1     
LFE29: DEX            
       BPL    LFE22   
       LDA    SWCHB   
       BMI    LFE33   
       LSR    $DA     
LFE33: ASL            
       BMI    LFE44   
       LDA    $9F     
       AND    #$20    
       BEQ    LFE44   
       LDX    $9B     
       STX    $BE     
       LDA    #$C4    
       STA    $D7     
LFE44: LDY    #$00    
       LDA    ($D8),Y 
       TAX            
       INY            
       LDA    ($D8),Y 
       TAY            
       LDA    VSYNC,X 
       CMP.wy $0000,Y 
       BNE    LFE58   
       CPY    $DC     
       BNE    LFE68   
LFE58: INC    $D8     
       INC    $D8     
       LDY    #$00    
       LDA    ($D8),Y 
       BNE    LFE44   
       JSR    LFE72   
       JMP    LFE6B   
LFE68: JSR    LFDBF   
LFE6B: LDX    $DB     
       LDY    $DA     
       JMP    LF843   
LFE72: LDA    $E2     
       LSR            
       LSR            
       BCC    LFE7F   
       LDA    $95     
       CLC            
       ADC    #$0D    
       STA    $95     
LFE7F: LDA    $95     
       RTS            

LFE82: STX    $92     
       LDA    #$F1    
       STA    $93     
       LDY    #$04    
       JSR    LFDB5   
       RTS            

LFE8E: LDA    $9E     
       BPL    LFE9A   
       LDA    #$20    
       STA    $CC     
       STA    $CF     
       STA    $D2     
LFE9A: LDA    $D7     
       LDX    $97     
       CMP    LF104,X 
       BNE    LFEA7   
       LDA    #$C4    
       STA    $D7     
LFEA7: INC    $D6     
       LDA    $D6     
       CMP    #$08    
       BNE    LFEB3   
       LDA    #$00    
       STA    $D6     
LFEB3: LDA    $D6     
       CMP    #$08    
       BCC    LFEC6   
       JSR    LFE72   
       LDX    #$D3    
       LDY    #$02    
       JSR    LF843   
       JMP    LFF1A   
LFEC6: LDA    #$D3    
       STA    $DB     
       LDA    #$02    
       STA    $DA     
       LDA    #$F3    
       STA    $D8     
       LDA    #$F0    
       STA    $D9     
       LDA    $D7     
       STA    $DC     
       JSR    LFE44   
       LDY    #$00    
       LDA    ($D8),Y 
       BEQ    LFF1A   
       LDY    #$01    
       LDA    ($D8),Y 
       TAX            
       LDA    VSYNC,X 
       CMP    $D3     
       BNE    LFF1A   
       LDA    VBLANK,X
       SEC            
       SBC    $D4     
       CLC            
       ADC    #$04    
       AND    #$F8    
       BNE    LFF1A   
       LDA    WSYNC,X 
       SEC            
       SBC    $D5     
       CLC            
       ADC    #$04    
       AND    #$F8    
       BNE    LFF1A   
       LDY    $D7     
       LDA.wy $0002,Y 
       CMP    #$18    
       BPL    LFF14   
       LDA    #$18    
       STA.wy $0002,Y 
LFF14: STX    $D7     
       LDA    #$10    
       STA    $D6     
LFF1A: LDX    $D7     
       LDA    $D3     
       STA    VSYNC,X 
       LDA    $D4     
       STA    VBLANK,X
       LDA    $D5     
       SEC            
       SBC    #$0A    
       STA    WSYNC,X 
       RTS            

LFF2C: .byte $A3,$B2,$B2,$C1,$B2,$B8,$9B,$B2,$00,$30,$38,$38,$38,$18,$38,$38
       .byte $18,$18,$3C,$18,$18,$18,$38,$00,$30,$38,$38,$38,$18,$38,$3C,$5A
       .byte $99,$3C,$18,$28,$24,$6C,$00,$30,$38,$38,$38,$18,$38,$3C,$5A,$99
       .byte $3C,$18,$1E,$12,$30,$00,$01,$40,$04,$18,$18,$20,$02,$80,$00,$80
       .byte $02,$20,$18,$18,$04,$40,$01,$00,$FF,$81,$81,$81,$81,$81,$81,$81
       .byte $FF,$81,$99,$91,$91,$91,$99,$81,$FF,$00,$18,$24,$42,$CF,$E7,$66
       .byte $2C,$18,$18,$7E,$DB,$CB,$FF,$81,$81,$81,$81,$81,$81,$81,$81,$81
       .byte $81,$FF,$00,$AA,$AA,$FE,$AA,$AA,$AA,$AA,$FE,$AA,$AA,$AA,$AA,$FE
       .byte $AA,$AA,$00,$81,$C3,$A5,$99,$A5,$C3,$81,$FF,$FF,$66,$66,$00,$81
       .byte $C3,$A5,$09,$01,$00,$90,$A4,$C3,$01,$0F,$00,$80,$F0,$FF,$66,$66
       .byte $00
LFFCD: .byte $04,$05,$07,$06
LFFD1: .byte $20,$60,$90,$A0
LFFD5: .byte $08
LFFD6: .byte $B8,$C0,$C8,$D0,$9B,$AF,$AF,$C1,$AC,$AF,$A9,$AF,$00,$9B,$AC,$AC
       .byte $C1,$A9,$AC,$00,$9B,$A9,$A9,$C1,$A6,$A9,$00,$9B,$A6,$AF,$A6,$A6
       .byte $C1,$A6,$BB,$00,$00,$00,$21,$F6,$00,$00
