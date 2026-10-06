; Disassembly of roms/Othello (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Othello (32 in 1) (PAL).bin
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
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
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
HMP1    =  $21
HMM0    =  $22
HMBL    =  $24
HMOVE   =  $2A
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       DEX            
       TXS            
       LDA    #$32    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    $D8     
       LDA    #$0F    
       STA    AUDF0   
       STA    AUDF1   
       LSR            
       STA    AUDC0   
       STA    AUDC1   
       STA    WSYNC   
       LDY    #$C0    
LF023: ROR            
       BCS    LF023   
       STA    RESBL   
       STA    RESP0   
       NOP            
       STA    RESP1   
       STY    HMBL    
       NOP            
       STA    HMP1    
       ASL            
       STA    HMM0    
       STA    RESM0   
       STA    HMM0    
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF781   
LF042: LDA    #$40    
       STA    TIM64T  
       JSR    LF476   
       JSR    LF75C   
       JSR    LF741   
       JSR    LF593   
       LDA    $D3     
       BPL    LF068   
       LDX    $C0     
       BEQ    LF068   
       BIT    $DA     
       BVS    LF065   
       JSR    LF710   
       JSR    LF63A   
LF065: JSR    LF42B   
LF068: LDX    INTIM   
       BNE    LF068   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       LDY    #$CC    
       STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       STX    VBLANK  
       STY    TIM64T  
       JSR    LF674   
       LDA    $C0     
       BNE    LF0A0   
       LDA    $CE     
       ORA    $D0     
       CMP    #$03    
       BCS    LF0A0   
       LDX    #$05    
       LDY    #$00    
LF097: STY    $E3,X   
       DEX            
       BNE    LF097   
       LDA    $C4     
       BNE    LF0A9   
LF0A0: LDA    $D0     
       LDX    #$E4    
       JSR    LF504   
       LDA    $CE     
LF0A9: LDX    #$DF    
       JSR    LF504   
       LDA    #$86    
LF0B0: LDX    INTIM   
       BEQ    LF042   
       BPL    LF0B0   
       DEX            
       BMI    LF0B0   
       STA    WSYNC   
       LDA    #$24    
       STA    CTRLPF  
       LDX    #$05    
LF0C2: LDY    #$02    
LF0C4: STA    WSYNC   
       LDA    $DE,X   
       STA    PF1     
       LDA    $D5     
       STA    COLUPF  
       LDA    #$02    
LF0D0: PHA            
       PLA            
       LSR            
       BNE    LF0D0   
       LDA    $E3,X   
       STA    PF1     
       LDA    $D7     
       STA    COLUPF  
       DEY            
       BNE    LF0C4   
       DEX            
       BNE    LF0C2   
       STA    WSYNC   
       STX    PF1     
       LDX    $CF     
       LDY    $80,X   
       LDA    $C2     
       AND    #$03    
       BNE    LF0F9   
       TYA            
       LDY    $C0     
       EOR    $C0     
       BNE    LF0F9   
       TAY            
LF0F9: STY    $E8     
       STA    WSYNC   
       LDX    #$04    
LF0FF: DEX            
       BNE    LF0FF   
       DEX            
       STX    GRP0    
       STX    GRP1    
       STX    ENABL   
       STX    ENAM0   
       STX    ENAM1   
       LDX    #$3F    
       STX    $E7     
       JMP    LF17A   
LF114: LDA    #$24    
       STA    CTRLPF  
       LDA    #$11    
       STA    PF1     
       LDA    #$88    
       STA    PF2     
       STA    PF0     
       LDY    #$05    
       JSR    LF1DC   
       STA    WSYNC   
       LDA    #$88    
       STA    PF2     
       LDX    #$0E    
       LDY    #$07    
LF131: DEY            
       BNE    LF131   
       JMP    LF163   
LF137: LDA    #$88    
       STA    PF2     
       LDA.w  $00E6   
       STA    COLUP0  
       LDA.w  $00E5   
       STA    COLUP1  
       LDA.w  $00E4   
       LDY.w  $00E3   
       STA    COLUP0  
       STY    COLUP1  
       LDA.w  $00E2   
       STA    COLUP0  
       LDA.w  $00E1   
       STA    COLUP1  
       LDA.w  $00E0   
       STA    COLUP0  
       LDA.w  $00DF   
       STA    COLUP1  
LF163: LDA    #$08    
       STA    PF2     
       STA    WSYNC   
       DEX            
       BPL    LF137   
       LDX    $D6     
       STX    COLUP0  
       STX    COLUP1  
       JSR    LF1D6   
       STA    WSYNC   
       JSR    LF1D6   
LF17A: STA    WSYNC   
       LDA    #$25    
       STA    CTRLPF  
       LDX    #$FF    
       STX    PF1     
       STX    PF2     
       INX            
       STX    PF0     
       LDX    $E7     
       BMI    LF1AA   
       LDY    #$07    
LF18F: LDA    $80,X   
       CPX    $CF     
       BNE    LF197   
       LDA    $E8     
LF197: TAX            
       LDA    $D6,X   
       STA.wy $00DF,Y 
       LDX    $E7     
       DEX            
       STX    $E7     
       DEY            
       BPL    LF18F   
       STA    WSYNC   
       JMP    LF114   
LF1AA: LDX    #$04    
LF1AC: STA    WSYNC   
       DEX            
       BNE    LF1AC   
       STX    ENABL   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    ENAM0   
       STX    ENAM1   
       STX    GRP0    
       STX    GRP1    
       INC    $C2     
       BNE    LF1CF   
       INC    $C3     
       BNE    LF1CF   
       STX    $C0     
       LDA    #$40    
       STA    $CF     
LF1CF: LDA    #$21    
       STX    AUDV0   
       JMP    LF042   
LF1D6: LDA    #$88    
       STA    PF2     
       LDY    #$07    
LF1DC: DEY            
       BNE    LF1DC   
       LDA    #$08    
       STA    PF2     
       RTS            

LF1E4: .byte $6C,$BC,$BC,$BC,$BC,$BC,$BC,$94,$9B,$23,$50,$50,$50,$50,$38,$B4
       .byte $9B,$66,$5D,$2D,$2D,$5D,$69,$B4,$9B,$66,$2D,$2D,$2D,$2D,$69,$B4
       .byte $9B,$66,$2D,$2D,$2D,$2D,$69,$B4,$9B,$66,$5D,$2D,$2D,$5D,$69,$B4
       .byte $9B,$40,$60,$60,$60,$60,$48,$B4,$8D,$B8,$B8,$B8,$B8,$B8,$B8,$7F
       .byte $A2,$00,$A5,$86,$05,$B0,$B4,$80,$F0,$03,$A9,$00,$60,$0A,$A9,$B0
       .byte $90,$02,$A9,$BC,$60,$A5,$81,$05,$B7,$A2,$07,$D0,$E9,$A5,$88,$05
       .byte $BE,$A2,$38,$D0,$E1,$A5,$8F,$05,$B9,$A2,$3F,$D0,$D9,$8A,$38,$E9
       .byte $08,$AA,$A9,$F8,$B4,$80,$C0,$01,$D0,$02,$A9,$04,$60,$8A,$18,$69
       .byte $08,$D0,$EE,$CA,$D0,$EC,$E8,$D0,$E9,$20,$BD,$F2,$30,$09,$A6,$C6
       .byte $20,$9C,$F2,$30,$02,$A9,$38,$A0,$00,$84,$CC,$60,$20,$B9,$F2,$30
       .byte $F6,$A6,$C6,$20,$B5,$F2,$30,$EF,$10,$EB,$20,$B9,$F2,$30,$E8,$10
       .byte $DD,$20,$BD,$F2,$30,$E1,$10,$E9,$A0,$38,$8A,$4A,$4A,$4A,$85,$DD
       .byte $A2,$07,$B9,$80,$00,$95,$DF,$98,$38,$E9,$08,$A8,$CA,$10,$F3,$30
       .byte $1A,$A0,$3F,$D0,$E5,$A0,$3F,$D0,$02,$A0,$07,$8A,$29,$07,$85,$DD
       .byte $A2,$07,$B9,$80,$00,$95,$DF,$88,$CA,$10,$F7,$A5,$C4,$4A,$F0,$54
       .byte $20,$5F,$F5,$0A,$0A,$85,$DE,$A5,$DF,$A6,$E6,$86,$DF,$85,$E6,$A5
       .byte $E0,$A6,$E5,$86,$E0,$85,$E5,$A5,$E1,$A6,$E4,$86,$E1,$85,$E4,$A5
       .byte $E2,$A6,$E3,$86,$E2,$85,$E3,$A9,$07,$38,$E5,$DD,$85,$DD,$20,$5F
       .byte $F5,$05,$DE,$A8,$C0,$05,$D0,$0A,$A9,$D8,$A6,$DF,$D0,$16,$A6,$E6
       .byte $D0,$12,$C0,$07,$F0,$04,$C0,$0D,$D0,$0B,$A5,$E7,$F0,$04,$C9,$07
       .byte $D0,$03,$A9,$A0,$60,$A6,$DD,$F0,$22,$E0,$07,$F0,$1E,$E0,$02,$90
       .byte $0A,$B5,$DE,$D0,$06,$B5,$DD,$F0,$02,$10,$0E,$E0,$06,$B0,$0C,$B5
       .byte $E0,$D0,$08,$B5,$E1,$30,$04,$F0,$02,$A0,$12,$A5,$C4,$4A,$90,$5A
       .byte $BD,$1C,$F4,$85,$DE,$BD,$23,$F4,$85,$E8,$A9,$00,$85,$DD,$85,$E7
       .byte $A2,$07,$B5,$DF,$10,$10,$BD,$1C,$F4,$05,$DD,$85,$DD,$BD,$23,$F4
       .byte $05,$E7,$85,$E7,$D0,$10,$F0,$0E,$BD,$1C,$F4,$05,$DE,$85,$DE,$BD
       .byte $23,$F4,$05,$E8,$85,$E8,$CA,$10,$D9,$A2,$21,$BD,$B6,$F3,$C5,$DD
       .byte $D0,$07,$BD,$D8,$F3,$C5,$DE,$F0,$15,$BD,$B6,$F3,$C5,$E7,$D0,$07
       .byte $BD,$D8,$F3,$C5,$E8,$F0,$07,$CA,$10,$E1,$B9,$EC,$F7,$60,$BD,$FA
       .byte $F3,$60,$60,$40,$42,$40,$00,$00,$00,$46,$46,$44,$04,$08,$0C,$0A
       .byte $08,$04,$10,$14,$BE,$9E,$02,$02,$02,$12,$48,$28,$10,$08,$18,$38
       .byte $40,$00,$02,$02,$14,$28,$28,$2C,$46,$44,$40,$20,$08,$20,$60,$40
       .byte $40,$40,$42,$40,$40,$40,$40,$60,$20,$28,$2C,$24,$32,$12,$4C,$F2
       .byte $E2,$C2,$02,$BE,$18,$48,$30,$30,$30,$30,$C0,$C0,$C0,$30,$30,$30
       .byte $BB,$BB,$BB,$BB,$BB,$BB,$BB,$BB,$60,$60,$40,$30,$30,$50,$E0,$BB
       .byte $BB,$D0,$D0,$D0,$D0,$D8,$F0,$F0,$01,$02,$04,$08,$10,$20,$40,$80
       .byte $40,$20,$10,$08,$04,$02,$01
LF42B: BIT    $DA     
       BVC    LF475   
       LDA    $C2     
       AND    #$0F    
       BNE    LF441   
       LDA    SWCHA   
       JSR    LF647   
       LDA    SWCHA   
       JSR    LF64B   
LF441: LDA    $C2     
       AND    #$03    
       BNE    LF475   
       LDX    $CF     
       LDA    INPT4   
       AND    INPT5   
       TAY            
       EOR    $D1     
       AND    $D1     
       STY    $D1     
       BPL    LF475   
       LDA    $80,X   
       BMI    LF461   
       DEC    $80,X   
       BMI    LF471   
       TAX            
       BNE    LF46C   
LF461: LDA    #$01    
       STA    $80,X   
       TAX            
       LSR            
       JSR    LF750   
       LDX    #$FF    
LF46C: LDA    #$98    
LF46E: JMP    LF750   
LF471: LDX    #$FF    
       BNE    LF46E   
LF475: RTS            

LF476: LDA    $C0     
       BEQ    LF4CA   
       LDA    $D3     
       BPL    LF4D4   
       LDX    $C5     
       BMI    LF4D4   
       LDA    $CE     
       BEQ    LF4C2   
       LDA    $D0     
       BEQ    LF4C2   
       SED            
       CLC            
       ADC    $CE     
       CLD            
       STA    $CD     
       EOR    #$64    
       BEQ    LF4C2   
       LDA    $80,X   
       BNE    LF4A9   
       LDA    $CF     
       PHA            
       STX    $CF     
       JSR    LF5D0   
       LDX    $C5     
       PLA            
       STA    $CF     
       TYA            
       BPL    LF4B9   
LF4A9: DEX            
       BPL    LF4BD   
       CPX    $C6     
       BNE    LF4C2   
       JSR    LF5C5   
       LDA    #$80    
       STA    $C6     
       BMI    LF4D4   
LF4B9: LDX    #$FF    
       STX    $C6     
LF4BD: STX    $C5     
       JMP    LF4D4   
LF4C2: LDA    #$00    
       STA    $C0     
       LDA    #$40    
       STA    $CF     
LF4CA: LDA    $C2     
       BNE    LF4D4   
       LDA    $D9     
       AND    #$F7    
       STA    $C1     
LF4D4: LDX    #$FF    
       LDA    SWCHB   
       STA    $DA     
       AND    #$08    
       BNE    LF4E1   
       LDX    #$0F    
LF4E1: STX    $DB     
       LDA    #$BA    
       LDX    $C0     
       BEQ    LF4EB   
       LDA    #$BE    
LF4EB: EOR    $C1     
       AND    $DB     
       STA    $D5     
       LDA    #$D4    
       EOR    $C1     
       AND    $DB     
       STA    COLUBK  
       STA    $D6     
       LDA    $C1     
       AND    $DB     
       STA    $D7     
       STA    COLUPF  
       RTS            

LF504: STX    $DD     
       STA    $DE     
       AND    #$0F    
       STA    $DB     
       ASL            
       ASL            
       ADC    $DB     
       ADC    #$B8    
       STA    $DB     
       LDA    #$F7    
       STA    $DC     
       LDY    #$04    
LF51A: LDA    ($DB),Y 
       AND    #$0F    
       STA    VSYNC,X 
       INX            
       DEY            
       BPL    LF51A   
       LDA    $DE     
       AND    #$F0    
       BEQ    LF546   
       LSR            
       LSR            
       STA    $DB     
       LSR            
       LSR            
       ADC    $DB     
       ADC    #$B8    
       STA    $DB     
       LDX    $DD     
       LDY    #$04    
LF53A: LDA    ($DB),Y 
       AND    #$F0    
       ORA    VSYNC,X 
       STA    VSYNC,X 
       INX            
       DEY            
       BPL    LF53A   
LF546: RTS            

LF547: LDA    $CB     
       LDY    $CD     
       CPY    #$14    
       BCC    LF557   
       CPY    #$42    
       BCS    LF557   
       EOR    #$FF    
       STA    $CB     
LF557: LDA    #$F2    
       PHA            
       LDA    LF1E4,X 
       PHA            
       RTS            

LF55F: .byte $A6,$DD,$CA,$30,$14,$B5,$DF,$F0,$0B,$30,$14,$CA,$30,$0B,$B5,$DF
       .byte $30,$1F,$D0,$F7,$A9,$01,$86,$E7,$60,$A9,$00,$60,$A9,$02,$60,$CA
       .byte $30,$0F,$B5,$DF,$F0,$0B,$30,$F7,$CA,$30,$EE,$B5,$DF,$F0,$ED,$10
       .byte $F7,$A9,$03,$60
LF593: LDA    $C2     
       AND    #$1F    
       BNE    LF5CF   
       STA    AUDV1   
       LDY    $D3     
       BMI    LF5CF   
       JSR    LF74E   
       TXA            
       LDX    $D2     
       STA    $80,X   
       EOR    #$FE    
       TAX            
       LDA    #$98    
       JSR    LF750   
       LDA    $D2     
       LDY    $D3     
       SBC    LF7B0,Y 
       CMP    $CF     
       BNE    LF5C2   
       JSR    LF5D2   
       STY    $D3     
       BMI    LF5C5   
       TXA            
LF5C2: STA    $D2     
       RTS            

LF5C5: LDA    $C0     
       EOR    #$FE    
       STA    $C0     
       LDA    #$3F    
       STA    $C5     
LF5CF: RTS            

LF5D0: LDY    #$07    
LF5D2: LDX    $CF     
       TXA            
       AND    #$07    
       STA    $DE     
LF5D9: LDA    $CB     
       STA    $DD     
       LDA    $CC     
       STA    $E7     
LF5E1: TXA            
       CLC            
       ADC    LF7B0,Y 
       CMP    #$40    
       BCS    LF5FF   
       TAX            
       AND    #$07    
       CPY    #$03    
       BCC    LF605   
       CMP    $DE     
       BCC    LF5FF   
       BNE    LF609   
       CPY    #$05    
       BEQ    LF5FF   
       CPY    #$06    
       BNE    LF609   
LF5FF: LDX    $CF     
       DEY            
       BPL    LF5D9   
       RTS            

LF605: CMP    $DE     
       BCS    LF5FF   
LF609: LDA    $80,X   
       BEQ    LF5FF   
       BPL    LF623   
       INC    $DD     
       CPX    #$09    
       BEQ    LF621   
       CPX    #$0E    
       BEQ    LF621   
       CPX    #$31    
       BEQ    LF621   
       CPX    #$36    
       BNE    LF623   
LF621: STX    $E7     
LF623: EOR    $C0     
       BNE    LF5E1   
       TXA            
       SEC            
       SBC    LF7B0,Y 
       CMP    $CF     
       BEQ    LF5FF   
       LDX    $E7     
       STX    $CC     
       LDX    $DD     
       STX    $CB     
       TAX            
       RTS            

LF63A: LDA    $C2     
       AND    #$0F    
       BNE    LF663   
       LDA    SWCHA   
       LDX    $C0     
       BPL    LF64B   
LF647: LSR            
       LSR            
       LSR            
       LSR            
LF64B: AND    #$0F    
       TAX            
       LDA    $CF     
       AND    #$38    
       CLC            
       ADC    $CF     
       ADC    LF664,X 
       AND    #$77    
       STA    $CF     
       AND    #$07    
       ADC    $CF     
       LSR            
       STA    $CF     
LF663: RTS            

LF664: .byte $00,$70,$10,$00,$07,$77,$17,$07,$01,$71,$11,$01,$00,$70,$10,$00
LF674: LDX    $C0     
       DEX            
       BMI    LF68C   
       LDA    $D3     
       BPL    LF68C   
       LDA    $C4     
       CMP    #$04    
       BCS    LF68C   
       LDX    #$FF    
       BIT    SWCHB   
       BVC    LF68D   
       STX    $C6     
LF68C: RTS            

LF68D: TXA            
       STA    $C5     
       LDX    $C6     
       BPL    LF69E   
       LDA    #$81    
       STA    $C7     
       STA    $C8     
       LDX    #$3F    
       STX    $C6     
LF69E: LDA    $80,X   
       BNE    LF6FA   
       STA    $CB     
       STA    $CC     
       LDA    $CF     
       PHA            
       STX    $CF     
       JSR    LF5D0   
       BMI    LF6F7   
       STX    $DB     
       STY    $DC     
LF6B4: DEY            
       BMI    LF6BC   
       JSR    LF5D2   
       BPL    LF6B4   
LF6BC: LDX    $C6     
       JSR    LF547   
       LDX    $CC     
       BEQ    LF6D1   
       STA    $E7     
       JSR    LF557   
       CLC            
       ADC    $E7     
       BVC    LF6D1   
       LDA    #$98    
LF6D1: CLC            
       ADC    $CB     
       TAY            
       SEC            
       SBC    $C7     
       BVC    LF6DE   
       EOR    #$80    
       ORA    #$01    
LF6DE: BMI    LF6F7   
       BNE    LF6E9   
       JSR    LF741   
       AND    #$03    
       BNE    LF6F7   
LF6E9: LDA    $DB     
       STA    $C9     
       LDA    $DC     
       STA    $CA     
       STY    $C7     
       LDX    $C6     
       STX    $C8     
LF6F7: PLA            
       STA    $CF     
LF6FA: DEC    $C6     
       BPL    LF68C   
       LDA    $C8     
       BPL    LF707   
       STA    $C6     
       JMP    LF5C5   
LF707: STA    $CF     
       LDX    $C9     
       LDY    $CA     
       JMP    LF726   
LF710: LDA    INPT4   
       LDX    $C0     
       BMI    LF718   
       LDA    INPT5   
LF718: ASL            
       BCS    LF73A   
       LDX    $CF     
       LDA    $80,X   
       BNE    LF73B   
       JSR    LF5D0   
       BMI    LF73B   
LF726: STX    $D2     
       STY    $D3     
       LDA    #$00    
       JSR    LF74E   
       TXA            
       LDX    $CF     
       STA    $80,X   
LF734: LDA    #$01    
       STA    $C2     
       STA    $C3     
LF73A: RTS            

LF73B: LDA    #$FF    
       STA    AUDV1   
       BNE    LF734   
LF741: LDA    $D8     
       EOR    $D9     
       ASL            
       ASL            
       ROL    $D9     
       ROL    $D8     
       LDA    $D9     
       RTS            

LF74E: LDX    $C0     
LF750: SED            
       SEC            
       ADC    $CF,X   
       STA    $CF,X   
       CLD            
       LDA    #$FF    
       STA    AUDV0   
       RTS            

LF75C: LDA    $DA     
       LSR            
       BCS    LF772   
       JSR    LF793   
       STA    $CF     
       TYA            
       LDY    $DA     
       BMI    LF76C   
       TXA            
LF76C: STA    $C0     
       STX    $C5     
       STX    $C6     
LF772: LDA    $DA     
       AND    #$02    
       BNE    LF77C   
       LDA    $D4     
       BEQ    LF781   
LF77C: TAX            
       DEX            
       STX    $D4     
       RTS            

LF781: LDA    #$20    
       STA    $D4     
       LDX    $C4     
       INX            
       CPX    #$05    
       BCC    LF78E   
       LDX    #$01    
LF78E: STX    $C4     
       ASL            
       STA    $CF     
LF793: LDY    #$02    
       STY    $CE     
       STY    $D0     
       LDA    #$00    
       LDX    #$41    
LF79D: STA    $80,X   
       DEX            
       BPL    LF79D   
       DEY            
       STY    $C3     
       STX    $D3     
       STY    $A4     
       STY    $9B     
       STX    $A3     
       STX    $9C     
       RTS            

LF7B0: .byte $F7,$FF,$07,$08,$09,$01,$F9,$F8,$EE,$AA,$AA,$AA,$EE,$44,$CC,$44
       .byte $44,$EE,$EE,$22,$EE,$88,$EE,$EE,$22,$66,$22,$EE,$AA,$AA,$EE,$22
       .byte $22,$EE,$88,$EE,$22,$EE,$EE,$88,$EE,$AA,$EE,$EE,$22,$22,$22,$22
       .byte $EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE,$22,$EE,$00,$00,$20,$20,$20,$20
       .byte $20,$10,$40,$E0,$20,$40,$15,$E0,$20,$E0,$E0,$50,$00,$F0,$B0,$00
