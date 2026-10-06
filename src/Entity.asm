; Disassembly of roms/Entity.BIN
; Disassembled Tue Oct  6 15:21:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Entity.BIN
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM1   =  $13
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
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
       JSR    LFA87   
       LDA    #$01    
       STA    $A1     
       LDA    #$10    
       STA    $A7     
       LDA    #$32    
       STA    $A8     
       LDA    #$54    
       STA    $A9     
       STA    $98     
       LDA    #$2D    
       STA    $92     
       LDA    #$FE    
       STA    $E3     
       STA    $E5     
       STA    $E7     
       LDA    #$02    
       STA    $83     
LF030: LDX    #$03    
       STX    VBLANK  
       STA    WSYNC   
       STX    VSYNC   
LF038: STA    WSYNC   
       DEX            
       BNE    LF038   
       STX    VSYNC   
       LDA    #$26    
       STA    TIM64T  
       JSR    LFD11   
       INX            
       JSR    LFD11   
       JSR    LFBA7   
       INC    $95     
       PHP            
       BIT    $96     
       BMI    LF05C   
       PLP            
       BNE    LF065   
       INC    $96     
       BNE    LF065   
LF05C: PLP            
       BNE    LF065   
       AND    #$F0    
       ORA    #$02    
       STA    $97     
LF065: LDA    #$00    
       LDX    $83     
       CPX    #$0A    
       BCC    LF07E   
       LDX    $A2     
       BMI    LF07E   
       LDA    $88     
       LSR            
       LSR            
       AND    #$1C    
       CLC            
       ADC    $A2     
       TAX            
       LDA    LFF2D,X 
LF07E: STA    $93     
       LDA    SWCHB   
       LSR            
       BCC    LF0AD   
       LSR            
       BCC    LF08D   
       LDX    #$03    
       BPL    LF0A8   
LF08D: DEC    $99     
       BNE    LF0AA   
       JSR    LFA87   
       LDX    #$20    
       CPX    $80     
       BNE    LF09C   
       INC    $9A     
LF09C: LDA    $9A     
       STX    $80     
       AND    #$07    
       TAX            
       INX            
       STX    $A7     
       LDX    #$1E    
LF0A8: STX    $99     
LF0AA: JMP    LF0C2   
LF0AD: JSR    LFA87   
       STX    $8B     
       STX    $92     
       LDA    $9A     
       AND    #$03    
       TAY            
       LDA    LFF09,Y 
       STA    $88     
       LDA    #$80    
       STA    $80     
LF0C2: LDA    #$10    
       BIT    $80     
       BNE    LF0D2   
       BMI    LF0DD   
       BVS    LF0F1   
       LDA    #$AA    
       STA    $AC     
       STA    $AB     
LF0D2: LDA    #$00    
       STA    $93     
       LDA    INPT4   
       BMI    LF10D   
       JMP    LF0AD   
LF0DD: LDA    SWCHB   
       LSR            
       BCC    LF10D   
       LDA    INPT4   
       BPL    LF10D   
       LDA    #$02    
       STA    $83     
       LDA    #$40    
       STA    $80     
       BNE    LF10D   
LF0F1: LDX    #$00    
       STX    $96     
       LDA    $AA     
       BEQ    LF0FD   
       DEC    $AA     
       BPL    LF10D   
LF0FD: LDY    $A2     
       BMI    LF10D   
       BEQ    LF10D   
       LDA    LFEFF,Y 
       STA    $AA     
       LDA    #$01    
       JSR    LFB75   
LF10D: LDX    $93     
       BNE    LF116   
       INX            
       STX    $94     
       BNE    LF185   
LF116: DEC    $94     
       BNE    LF185   
       LDA    $93     
       STA    $94     
       BIT    $A2     
       BMI    LF124   
       DEC    $BD     
LF124: LDX    $92     
       INX            
       CPX    #$2F    
       BCC    LF183   
       BIT    $A0     
       BMI    LF131   
       DEC    $A0     
LF131: LDA    $A1     
       BMI    LF142   
       AND    #$03    
       BNE    LF13D   
       LDA    #$FF    
       BNE    LF142   
LF13D: LDA    $A1     
       SEC            
       SBC    #$01    
LF142: STA    $A1     
       LDA    $9E     
       STA    $9D     
       LDA    $9F     
       STA    $9E     
       JSR    LFC52   
       STA    $9F     
       ROR            
       LDA    #$08    
       ROR            
       ROR            
       LDX    $9B     
       INX            
       CPX    #$05    
       BNE    LF161   
       LDX    #$00    
       STA    $A1     
LF161: STX    $9B     
       LDA    $8B     
       CLC            
       ADC    #$10    
       AND    #$F0    
       STA    $A4     
       LDA    $8B     
       SED            
       CLC            
       ADC    #$01    
       CLD            
       AND    #$0F    
       ORA    $A4     
       STA    $8B     
       BIT    $A2     
       BMI    LF181   
       DEC    $A2     
       DEC    $A3     
LF181: LDX    #$00    
LF183: STX    $92     
LF185: LDA    $87     
       BEQ    LF18E   
       DEC    $87     
       JMP    LF564   
LF18E: LDX    $83     
       LDA    LFEEB,X 
       PHA            
       LDA    LFEEA,X 
       PHA            
       RTS            

LF199: .byte $A2,$03,$20,$52,$FC,$CA,$95,$9D,$D0,$F8,$CA,$86,$A0,$A9,$1E,$85
       .byte $87,$A2,$04,$4C,$62,$F5,$A6,$92,$F0,$04,$C6,$92,$10,$22,$86,$A2
       .byte $86,$A3,$86,$91,$86,$84,$86,$85,$A2,$28,$86,$87,$A9,$0D,$85,$BF
       .byte $A9,$AB,$85,$C0,$A9,$0F,$85,$8E,$A9,$28,$85,$E4,$A2,$06,$86,$83
       .byte $4C,$64,$F5,$20,$37,$FC,$A5,$A4,$69,$0A,$85,$BD,$20,$A7,$FB,$29
       .byte $03,$AA,$BD,$E6,$FE,$85,$BE,$A9,$0B,$85,$E1,$A9,$0A,$85,$A6,$A9
       .byte $10,$85,$C3,$85,$C4,$20,$A7,$FB,$4A,$66,$C3,$4A,$66,$C4,$A9,$03
       .byte $85,$CD,$A9,$3C,$85,$CE,$A9,$8C,$85,$82,$A9,$08,$85,$83,$4C,$C9
       .byte $F4,$A5,$A6,$F0,$04,$C6,$A6,$10,$0C,$A5,$E1,$29,$03,$F0,$09,$C6
       .byte $E1,$A9,$0A,$85,$A6,$4C,$C9,$F4,$A9,$04,$85,$E1,$A5,$88,$4A,$4A
       .byte $4A,$4A,$A8,$A2,$01,$B5,$C3,$29,$80,$19,$1D,$FF,$95,$C3,$CA,$10
       .byte $F4,$A9,$0A,$85,$83,$4C,$C6,$F4,$A5,$A2,$C9,$03,$F0,$2C,$A5,$BF
       .byte $C9,$16,$08,$F0,$02,$E6,$BF,$A5,$C0,$C9,$A3,$F0,$05,$C6,$C0,$4C
       .byte $82,$F2,$28,$D0,$15,$A5,$80,$29,$DF,$F0,$0F,$A9,$00,$85,$8F,$85
       .byte $90,$85,$8D,$A9,$0C,$85,$83,$D0,$01,$28,$4C,$C6,$F4,$24,$8D,$30
       .byte $04,$70,$28,$50,$5F,$50,$24,$A5,$A2,$85,$A0,$E6,$A2,$A5,$88,$C9
       .byte $70,$A5,$C3,$69,$02,$29,$7F,$85,$C3,$20,$B9,$FB,$A9,$47,$85,$CE
       .byte $A9,$00,$85,$D0,$85,$E1,$A2,$0E,$4C,$62,$F5,$A2,$0F,$A9,$20,$2D
       .byte $80,$02,$D0,$2E,$A9,$04,$85,$16,$A9,$0F,$85,$1A,$A6,$8E,$86,$18
       .byte $CA,$D0,$1F,$24,$8D,$10,$04,$A9,$16,$85,$BF,$50,$04,$A9,$A3,$85
       .byte $C0,$86,$8D,$86,$91,$86,$8F,$86,$90,$20,$B9,$FB,$A9,$61,$85,$CE
       .byte $A2,$0F,$86,$8E,$A5,$81,$29,$7F,$D0,$38,$A5,$89,$F0,$34,$A5,$3C
       .byte $30,$30,$A2,$01,$A0,$FF,$B5,$C3,$29,$7F,$C9,$09,$90,$14,$B5,$C3
       .byte $38,$E9,$08,$95,$C3,$B5,$84,$18,$69,$10,$29,$F0,$09,$09,$95,$84
       .byte $A0,$00,$CA,$10,$E1,$98,$D0,$0A,$A9,$83,$85,$81,$84,$D0,$A9,$55
       .byte $85,$CE,$A9,$00,$85,$8C,$24,$8D,$30,$35,$A5,$91,$29,$F0,$F0,$13
       .byte $38,$E9,$10,$85,$91,$A9,$00,$85,$D1,$A9,$16,$C5,$BF,$F0,$20,$C6
       .byte $BF,$D0,$1C,$A9,$0F,$85,$D1,$A9,$80,$2C,$80,$02,$F0,$06,$A9,$00
       .byte $85,$8F,$F0,$0B,$A6,$8F,$E0,$3F,$F0,$02,$E6,$8F,$20,$62,$FC,$24
       .byte $8D,$70,$2E,$A5,$91,$29,$0F,$F0,$12,$AA,$CA,$86,$91,$A9,$00,$85
       .byte $D2,$A9,$A3,$C5,$C0,$F0,$1A,$E6,$C0,$D0,$16,$A9,$0F,$85,$D2,$A9
       .byte $40,$2C,$80,$02,$D0,$0E,$A6,$90,$E0,$3F,$F0,$02,$E6,$90,$20,$90
       .byte $FC,$4C,$C6,$F4,$A9,$00,$85,$90,$F0,$F7,$20,$E6,$FB,$A2,$00,$20
       .byte $FD,$FB,$20,$37,$FC,$A9,$04,$65,$A4,$C5,$BD,$B0,$5D,$85,$BD,$A6
       .byte $88,$E0,$7F,$F0,$02,$E6,$88,$F8,$18,$A5,$AB,$69,$01,$85,$AB,$A5
       .byte $AC,$69,$00,$85,$AC,$D8,$A5,$AB,$29,$0F,$D0,$1A,$A5,$AB,$29,$F0
       .byte $F0,$04,$C9,$50,$D0,$04,$A9,$0C,$85,$82,$A9,$2E,$85,$CD,$A9,$2F
       .byte $85,$81,$A2,$05,$D0,$06,$A9,$1E,$85,$CD,$A2,$01,$A9,$00,$85,$CF
       .byte $20,$75,$FB,$A6,$A0,$30,$07,$A0,$00,$94,$9D,$88,$84,$A0,$A9,$04
       .byte $85,$E1,$A9,$0A,$85,$86,$A9,$10,$85,$83,$4C,$64,$F5,$A5,$BF,$38
       .byte $E9,$04,$C9,$0D,$08,$B0,$02,$A9,$0D,$85,$BF,$A5,$C0,$18,$69,$04
       .byte $C9,$AB,$90,$11,$A9,$AB,$28,$B0,$0D,$E6,$A3,$A2,$00,$86,$8D,$A2
       .byte $0A,$86,$83,$D0,$01,$28,$85,$C0,$4C,$C6,$F4,$A6,$BD,$E8,$F0,$11
       .byte $A5,$95,$0A,$09,$03,$85,$19,$A9,$00,$85,$CE,$20,$E6,$FB,$4C,$64
       .byte $F5,$86,$CD,$86,$CF,$86,$A6,$86,$93,$86,$8D,$CA,$86,$A2,$86,$A3
       .byte $A2,$14,$4C,$62,$F5,$E6,$A6,$A5,$A6,$C9,$40,$F0,$31,$4A,$4A,$48
       .byte $29,$03,$AA,$BD,$BA,$FE,$85,$E6,$68,$4A,$4A,$AA,$BD,$B6,$FE,$85
       .byte $E4,$A9,$08,$85,$15,$A9,$02,$85,$CF,$20,$A7,$FB,$85,$17,$A5,$95
       .byte $09,$08,$85,$19,$20,$52,$FC,$09,$70,$85,$D9,$4C,$64,$F5,$A9,$70
       .byte $85,$D9,$A9,$A7,$85,$E6,$A9,$F0,$85,$BD,$A2,$04,$A5,$8A,$D0,$0A
       .byte $A9,$5C,$85,$CE,$A9,$10,$85,$80,$A2,$00,$4C,$62,$F5,$20,$E6,$FB
       .byte $A2,$01,$20,$FD,$FB,$CA,$20,$FD,$FB,$20,$37,$FC,$A5,$A4,$C5,$BD
       .byte $90,$0B,$85,$BD,$A5,$C3,$29,$7F,$85,$C3,$4C,$F4,$F4,$A5,$A5,$C5
       .byte $BD,$B0,$0E,$85,$BD,$A5,$C3,$09,$80,$85,$C3,$86,$CF,$A9,$1A,$85
       .byte $CD,$A5,$C4,$4A,$4A,$4A,$4A,$29,$07,$A8,$A5,$BF,$18,$69,$01,$C5
       .byte $BE,$90,$19,$85,$BE,$A5,$C4,$29,$7F,$85,$C4,$24,$8C,$10,$08,$B9
       .byte $0D,$FF,$85,$91,$20,$C6,$FB,$86,$8F,$4C,$44,$F5,$A5,$C0,$38,$E9
       .byte $09,$C5,$BE,$B0,$1C,$85,$BE,$A5,$C4,$09,$80,$85,$C4,$24,$8C,$50
       .byte $08,$B9,$15,$FF,$85,$91,$20,$C6,$FB,$86,$90,$86,$CF,$A9,$18,$85
       .byte $CD,$A5,$92,$C9,$20,$90,$14,$A5,$8D,$C9,$C0,$F0,$0E,$A5,$A2,$D0
       .byte $0A,$85,$E1,$85,$D1,$85,$D2,$A2,$12,$86,$83
LF564: LDA    $80     
       AND    #$50    
       BNE    LF571   
       LDX    #$04    
LF56C: DEX            
       STA    $CD,X   
       BNE    LF56C   
LF571: LDA    $95     
       AND    #$07    
       CMP    #$05    
       BNE    LF5B2   
       LDA    $A1     
       BMI    LF5B2   
       AND    #$03    
       TAX            
       LDY    $9D,X   
       BEQ    LF5B2   
       BIT    $A1     
       BVC    LF58D   
       DEY            
       BEQ    LF5AC   
       BNE    LF592   
LF58D: INY            
       CPY    #$0F    
       BEQ    LF5AC   
LF592: CPX    $A3     
       BNE    LF5A8   
       LDA    $8D     
       BNE    LF5B2   
       TYA            
       JSR    LFCF2   
       CMP    $C0     
       BCS    LF5AC   
       LDA    $BF     
       CMP    $A4     
       BCS    LF5AC   
LF5A8: STY    $9D,X   
       BNE    LF5B2   
LF5AC: LDA    $A1     
       EOR    #$40    
       STA    $A1     
LF5B2: LDX    #$02    
       DEC    $9C     
       BEQ    LF5C0   
LF5B8: JSR    LFCFC   
       DEX            
       BPL    LF5B8   
       BMI    LF5D8   
LF5C0: LDX    #$02    
LF5C2: CPX    $A0     
       BEQ    LF5CE   
       LDY    #$00    
       JSR    LFCFE   
       JMP    LF5D1   
LF5CE: JSR    LFCFC   
LF5D1: DEX            
       BPL    LF5C2   
       LDY    #$03    
       STY    $9C     
LF5D8: LDA    #$27    
       STA    $DE     
       STA    $DC     
       LDX    #$06    
       STX    $DD     
       SEC            
       SBC    $92     
       STA    $E0     
       LDA    $92     
       TAX            
       SEC            
       SBC    #$07    
       STA    $DA     
       LDA    #$2E    
       SEC            
       SBC    $92     
       CMP    #$06    
       BCC    LF5FA   
       LDA    #$06    
LF5FA: STA    $DF     
       LDA    $92     
       CMP    #$06    
       BCC    LF604   
       LDA    #$06    
LF604: STA    $DB     
       LDA    $BD     
       BIT    $E0     
       BMI    LF611   
       STA    $BC     
       CLC            
       SBC    $E0     
LF611: LDX    #$05    
LF613: STA    $B6,X   
       CLC            
       SBC    $DA,X   
       DEX            
       BNE    LF613   
       STA    $B6     
       LDA    $BE     
       JSR    LFB88   
       STA    $C5     
       LDX    $E1     
       LDA    LFEAE,X 
       STA    $E2     
       LDA    #$FF    
       STA    $A4     
       LDA    $8B     
       AND    #$0F    
       TAY            
       LDX    #$02    
LF636: LDA    LFED0,Y 
       LSR            
       BCC    LF63E   
       STX    $A4     
LF63E: ASL            
       AND    $97     
       STA    $D3,X   
       INY            
       DEX            
       BPL    LF636   
       LDA    $95     
       LSR            
       LSR            
       AND    #$03    
       TAY            
       LDA    LFEDC,Y 
       STA    $A5     
       LDA    $8B     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDX    #$02    
LF65C: LDA    LFEBE,Y 
       CPX    $A4     
       BNE    LF667   
       AND    #$F0    
       ORA    $A5     
LF667: AND    $97     
       STA    $D6,X   
       INY            
       DEX            
       BPL    LF65C   
       LDA    $BF     
       JSR    LFB88   
       STA    WSYNC   
       STA    HMCLR   
       STA    HMM1    
       AND    #$0F    
       TAX            
LF67D: DEX            
       BPL    LF67D   
       STA    RESM1   
       LDA    $C0     
       JSR    LFB88   
       STA    WSYNC   
       STA    HMBL    
       STA    $A4     
       AND    #$0F    
       TAX            
LF690: DEX            
       BPL    LF690   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
LF699: LDA    INTIM   
       BNE    LF699   
       STA    WSYNC   
       STA    VBLANK  
       JSR    LFAD5   
       LDX    $DF     
       LDY    #$06    
LF6A9: LDA.wy $00C6,Y 
       STA    $EE,X   
       DEY            
       DEX            
       BPL    LF6A9   
       INY            
       CPY    #$03    
       BCC    LF6B9   
       STA    WSYNC   
LF6B9: LDA    #$04    
       AND    $97     
       STA    COLUPF  
       LDA    #$FE    
       STA    WSYNC   
       STA    HMCLR   
       STA    PF2     
       LDA    $8A     
       LDX    #$22    
       STX    $A5     
       JSR    LFB14   
       LDA    $89     
       LDX    #$60    
       STX    $A5     
       JSR    LFB14   
       STY    VDELP0  
       STY    VDELP1  
       LDA    $C4     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    REFP0   
       STA    WSYNC   
       STY    NUSIZ0  
       LDA    #$F0    
       STA    HMP1    
       LDX    #$0B    
LF6EF: DEX            
       BNE    LF6EF   
       NOP            
       NOP            
       STA    RESP1   
       LDA    $C5     
       STA    WSYNC   
       STA    HMP0    
       STY    PF2     
       AND    #$0F    
       TAX            
LF701: DEX            
       BPL    LF701   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$05    
       STX    NUSIZ1  
       DEX            
       STX    CTRLPF  
       LDA    #$07    
       SEC            
       SBC    $BD     
       CMP    #$09    
       BCC    LF71C   
       LDA    #$00    
LF71C: TAY            
       LDX    #$01    
LF71F: LDA    ($E4),Y 
       STA    $E9,X   
       DEY            
       BPL    LF727   
       INY            
LF727: DEX            
       BPL    LF71F   
       STY    $E8     
       LDA    $95     
       LSR            
       LSR            
       AND    #$03    
       TAX            
       LDY    #$03    
LF735: LDA    LFEE0,X 
       AND    $97     
       INX            
       DEY            
       STA.wy $00EB,Y 
       BNE    LF735   
       LDX    #$03    
LF743: STY    $F5,X   
       DEX            
       BPL    LF743   
       DEY            
       LDX    $A3     
       BMI    LF74F   
       STY    $F5,X   
LF74F: STA    WSYNC   
       STA    HMCLR   
       LDA    #$2C    
       AND    $97     
       STA    COLUPF  
       STY    PF2     
       STY    PF1     
       STY    PF0     
       LDX    #$0F    
       LDA    $8D     
       BEQ    LF76F   
       CMP    #$C0    
       BEQ    LF76F   
       LDX    #$38    
       LDA    #$0F    
       STA    AUDV0   
LF76F: LDA    $9A     
       AND    #$04    
       BEQ    LF785   
       LDA    $91     
       BNE    LF785   
       LDA    $83     
       CMP    #$08    
       BEQ    LF785   
       CMP    #$0E    
       BEQ    LF785   
       LDX    $D9     
LF785: TXA            
       INY            
       STA    WSYNC   
       AND    $97     
       STA    COLUP0  
       LDA    $D9     
       AND    $97     
       STA    COLUBK  
       LDX    #$05    
LF795: DEX            
       BNE    LF795   
       LDA    $DA     
       BMI    LF7C8   
LF79C: LDA    $DA     
       CMP    $B6     
       BNE    LF7A4   
       LDY    #$08    
LF7A4: LDA    $D1     
       LDX    #$00    
       STA    WSYNC   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    $F8     
       STX    ENAM1   
       STA    COLUP1  
       LDA    ($E2),Y 
       STA    GRP0    
       STX    ENABL   
       LDA    $D2     
       STA    COLUPF  
       DEY            
       BPL    LF7C4   
       INY            
LF7C4: DEC    $DA     
       BPL    LF79C   
LF7C8: LDX    $DB     
       LDA    $D3     
       STA    COLUP1  
LF7CE: CPX    $B7     
       BNE    LF7D4   
       LDY    #$08    
LF7D4: LDA    #$C0    
       STA    PF0     
       LDA    $D6     
       STA    WSYNC   
       STA    COLUPF  
       LDA    $C6,X   
       STA    GRP1    
       LDA    #$FF    
       STA    PF1     
       LDA    ($E2),Y 
       STA    GRP0    
       LDA    $AF     
       STA    PF2     
       DEY            
       BPL    LF7F2   
       INY            
LF7F2: LDA    $B2     
       STA    PF0     
       LDA    $B5     
       STA    PF1     
       LDA    #$3F    
       DEX            
       STA    PF2     
       BPL    LF7CE   
LF801: LDA    $DC     
       CMP    $B8     
       BNE    LF809   
       LDY    #$08    
LF809: LDA    $D1     
       LDX    #$00    
       STA    WSYNC   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    $F7     
       STX    ENAM1   
       STA    COLUP1  
       LDA    ($E2),Y 
       STA    GRP0    
       STX    ENABL   
       LDA    $D2     
       STA    COLUPF  
       DEY            
       BPL    LF829   
       INY            
LF829: DEC    $DC     
       BPL    LF801   
       LDX    $DD     
       LDA    $D4     
       STA    COLUP1  
LF833: CPX    $B9     
       BNE    LF839   
       LDY    #$08    
LF839: LDA    #$C0    
       STA    PF0     
       LDA    $D7     
       STA    WSYNC   
       STA    COLUPF  
       LDA    $C6,X   
       STA    GRP1    
       LDA    #$FF    
       STA    PF1     
       LDA    ($E2),Y 
       STA    GRP0    
       LDA    $AE     
       STA    PF2     
       DEY            
       BPL    LF857   
       INY            
LF857: LDA    $B1     
       STA    PF0     
       LDA    $B4     
       STA    PF1     
       LDA    #$3F    
       DEX            
       STA    PF2     
       BPL    LF833   
LF866: LDA    $DE     
       CMP    $BA     
       BNE    LF86E   
       LDY    #$08    
LF86E: LDA    $D1     
       LDX    #$00    
       STA    WSYNC   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    $F6     
       STX    ENAM1   
       STA    COLUP1  
       LDA    ($E2),Y 
       STA    GRP0    
       STX    ENABL   
       LDA    $D2     
       STA    COLUPF  
       DEY            
       BPL    LF88E   
       INY            
LF88E: DEC    $DE     
       BPL    LF866   
       LDX    $DF     
       LDA    $D5     
       STA    COLUP1  
LF898: CPX    $BB     
       BNE    LF89E   
       LDY    #$08    
LF89E: LDA    #$C0    
       STA    PF0     
       LDA    $D8     
       STA    WSYNC   
       STA    COLUPF  
       LDA    $EE,X   
       STA    GRP1    
       LDA    #$FF    
       STA    PF1     
       LDA    ($E2),Y 
       STA    GRP0    
       LDA    $AD     
       STA    PF2     
       DEY            
       BPL    LF8BC   
       INY            
LF8BC: LDA    $B0     
       STA    PF0     
       LDA    $B3     
       STA    PF1     
       LDA    #$3F    
       DEX            
       STA    PF2     
       BPL    LF898   
LF8CB: LDA    $E0     
       BMI    LF8F9   
       CMP    $BC     
       BNE    LF8D5   
       LDY    #$08    
LF8D5: LDA    $D1     
       STA    WSYNC   
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    $F5     
       STX    ENAM1   
       STA    COLUP1  
       LDA    ($E2),Y 
       STA    GRP0    
       STX    ENABL   
       LDA    $D2     
       STA    COLUPF  
       DEY            
       BPL    LF8F5   
       INY            
LF8F5: DEC    $E0     
       BPL    LF8CB   
LF8F9: LDA    $EB     
       LDX    #$70    
       LDY    #$00    
       STY    ENAM1   
       STA    WSYNC   
       STA    COLUBK  
       LDA    $EA     
       STX    PF0     
       STY    COLUPF  
       STA    GRP0    
       STY    PF1     
       LDA    #$0F    
       STA    COLUP0  
       STY    ENABL   
       STY    PF2     
       STY    GRP1    
       INY            
       STY    CTRLPF  
       LDA    #$0F    
       STA    COLUP1  
       LDY    #$06    
       LDA    ($E6),Y 
       STA    $A4     
       NOP            
       NOP            
       NOP            
       LDX    $E9     
       LDA    $C5     
       STA    HMP1    
       LDY    $EC     
       STY    COLUBK  
       LDY    $ED     
       STX    GRP0    
       AND    #$0F    
       TAX            
LF93A: DEX            
       BPL    LF93A   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STY    COLUBK  
       LDY    $E8     
       LDA    ($E4),Y 
       STA    GRP0    
       LDA    #$07    
       STA    NUSIZ1  
       LDA    $A4     
       STA    GRP1    
       DEY            
       BPL    LF957   
       INY            
LF957: LDA    #$D2    
       AND    $97     
       TAX            
       LDA    #$05    
       STA    $A4     
LF960: LDA    ($E4),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($E6),Y 
       STA    GRP1    
       STX    COLUBK  
       DEY            
       BPL    LF970   
       INY            
LF970: DEC    $A4     
       BPL    LF960   
       LDA    #$2C    
       AND    $97     
       STA    WSYNC   
       STA    COLUBK  
       LDX    #$00    
       STX    PF0     
       STX    GRP1    
       STX    REFP0   
       STA    WSYNC   
       STA    HMCLR   
       STX    GRP1    
       STX    GRP0    
       LDA    #$F0    
       STA    HMP0    
       LDY    #$03    
       STY    NUSIZ0  
       STY    NUSIZ1  
LF996: DEY            
       BNE    LF996   
       STA    RESP0   
       STA    RESP1   
       INX            
       STX    VDELP0  
       STX    VDELP1  
       LDA    #$0F    
       AND    $97     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       LDA    #$65    
       STA    $EA     
       STA    $E8     
       STA    $F2     
       LDA    $AB     
       AND    #$0F    
       TAY            
       LDA    LFFEB,Y 
       STA    $EC     
       LDA    $AB     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFEB,Y 
       STA    $EE     
       LDA    $AC     
       AND    #$0F    
       BNE    LF9D6   
       LDA    #$0A    
LF9D6: TAY            
       LDA    LFFEB,Y 
       STA    $F0     
       JSR    LFAD5   
       STA    WSYNC   
       LDA    #$23    
       STA    TIM64T  
       LDA    $95     
       AND    #$0F    
       BNE    LFA0F   
       LDX    #$01    
LF9EE: LDA    $84,X   
       AND    #$F0    
       BEQ    LFA0C   
       DEC    $84,X   
       LDA    $84,X   
       AND    #$0F    
       BNE    LFA0C   
       LDA    $84,X   
       SEC            
       SBC    #$10    
       ORA    #$09    
       STA    $84,X   
       LDA    $C3,X   
       CLC            
       ADC    #$08    
       STA    $C3,X   
LFA0C: DEX            
       BPL    LF9EE   
LFA0F: LDX    #$01    
LFA11: LDA    $81,X   
       AND    #$7F    
       BEQ    LFA33   
       LDA    $81,X   
       BMI    LFA25   
       LDY    $89,X   
       CPY    #$2F    
       BEQ    LFA31   
       INC    $89,X   
       BPL    LFA31   
LFA25: LDA    $95     
       AND    #$03    
       BNE    LFA33   
       LDY    $89,X   
       BEQ    LFA31   
       DEC    $89,X   
LFA31: DEC    $81,X   
LFA33: DEX            
       BPL    LFA11   
       LDA    $95     
       LSR            
       LSR            
       LSR            
       AND    #$03    
       TAX            
       LDY    LFE24,X 
       LDX    #$06    
LFA43: LDA    LFE0F,Y 
       STA    $C6,X   
       DEY            
       DEX            
       BPL    LFA43   
       LDX    #$02    
LFA4E: LDA    $A7,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       JSR    LFBD9   
       PHA            
       LDA    $A7,X   
       AND    #$0F    
       TAY            
       JSR    LFBD9   
       PHA            
       DEX            
       BPL    LFA4E   
       DEX            
LFA66: INX            
       INX            
       PLA            
       STA    $E8,X   
       CPX    #$0A    
       BNE    LFA66   
LFA6F: LDA    $E8,X   
       CMP    #$80    
       BNE    LFA7D   
       LDA    #$65    
       STA    $E8,X   
       DEX            
       DEX            
       BNE    LFA6F   
LFA7D: LDA    INTIM   
       BNE    LFA7D   
       STA    WSYNC   
       JMP    LF030   
LFA87: LDY    #$FF    
       STY    $A3     
       STY    $A2     
       STY    $A1     
       STY    $97     
       LDA    #$F0    
       STA    $BD     
       INY            
       STY    $96     
       STY    $AC     
       STY    $83     
       STY    $9D     
       STY    $9E     
       STY    $9F     
       STY    $82     
       STY    $81     
       STY    $8D     
       LDX    #$30    
       STX    $D1     
       STX    $D2     
       LDX    #$03    
LFAB0: DEX            
       STY    $A7,X   
       BNE    LFAB0   
       INY            
       STY    $AB     
       STY    $9C     
       LDA    #$04    
       STA    $9B     
       LDA    #$2F    
       STA    $89     
       STA    $8A     
       LDA    #$0A    
       STA    $86     
       LDA    #$A7    
       STA    $E6     
       LDA    #$28    
       STA    $E4     
       LDA    #$70    
       STA    $D9     
       RTS            

LFAD5: LDA    #$FF    
       LDX    #$0C    
LFAD9: DEX            
       DEX            
       STA    $E9,X   
       BNE    LFAD9   
       LDA    #$09    
       STA    $A4     
LFAE3: LDY    $A4     
       LDA    ($F2),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($F0),Y 
       STA    GRP1    
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    ($EC),Y 
       STA    $A5     
       LDA    ($EA),Y 
       TAX            
       LDA    ($E8),Y 
       TAY            
       LDA    $A5     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $A4     
       BPL    LFAE3   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

LFB14: STA    $A4     
       LSR            
       LSR            
       LSR            
       PHA            
       TAX            
       LDA    LFDDB,X 
       LDX    #$05    
LFB20: LDY    #$00    
       LSR            
       BCS    LFB27   
       BCC    LFB28   
LFB27: DEY            
LFB28: STY    $E8,X   
       DEX            
       BPL    LFB20   
       LDA    $A4     
       AND    #$07    
       TAX            
       LDY    LFDE1,X 
       PLA            
       TAX            
       STY    $E8,X   
       LDA    $A5     
       AND    $97     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    $A4     
LFB45: STA    WSYNC   
       LDA    $E8     
       STA    GRP0    
       LDA    $E9     
       STA    GRP1    
       LDA    $EA     
       STA    GRP0    
       LDA    $EB     
       TAX            
       LDA    $EC     
       TAY            
       LDA    $ED     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STX    GRP1    
       STY    GRP0    
       STA    GRP1    
       STA    GRP0    
       DEC    $A4     
       BPL    LFB45   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

LFB75: SED            
       CLC            
       ADC    $A7     
       STA    $A7     
       TXA            
       ADC    $A8     
       STA    $A8     
       LDA    $A9     
       ADC    #$00    
       STA    $A9     
       CLD            
       RTS            

LFB88: PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       STA    $A4     
       PLA            
       AND    #$0F    
       CLC            
       ADC    $A4     
       CMP    #$0F    
       BCC    LFB9D   
       SBC    #$0F    
       INY            
LFB9D: STY    $A4     
       TAY            
       LDA    LFDCB,Y 
       CLC            
       ADC    $A4     
       RTS            

LFBA7: LDA    $98     
       ASL            
       EOR    $98     
       ASL            
       EOR    $98     
       ASL            
       ASL            
       EOR    $98     
       ASL            
       ROL    $98     
       LDA    $98     
       RTS            

LFBB9: .byte $A5,$C3,$0A,$06,$C4,$6A,$85,$C4,$A5,$84,$85,$85,$60,$A5,$C4,$29
       .byte $7F,$C9,$08,$90,$0A,$C6,$86,$D0,$06,$A9,$02,$85,$86,$C6,$C4,$60
LFBD9: LDA    $80     
       PHP            
       LDA    LFFEB,Y 
       PLP            
       BNE    LFBE5   
       LDA    LFFF6,Y 
LFBE5: RTS            

LFBE6: .byte $A5,$95,$A6,$85,$E0,$10,$90,$01,$4A,$4A,$29,$03,$85,$A4,$A5,$E1
       .byte $29,$FC,$05,$A4,$85,$E1,$60,$B5,$C3,$30,$16,$0A,$0A,$0A,$0A,$18
       .byte $75,$C1,$08,$95,$C1,$B5,$C3,$4A,$4A,$4A,$4A,$28,$75,$BD,$95,$BD
       .byte $60,$0A,$0A,$0A,$0A,$85,$A4,$B5,$C1,$38,$E5,$A4,$08,$95,$C1,$B5
       .byte $C3,$4A,$4A,$4A,$4A,$29,$07,$85,$A4,$B5,$BD,$28,$E5,$A4,$95,$BD
       .byte $60,$A4,$A2,$B9,$07,$FE,$C0,$03,$F0,$03,$38,$E5,$92,$85,$A5,$B9
       .byte $0B,$FE,$C0,$00,$F0,$03,$38,$E5,$92,$85,$A4,$60
LFC52: JSR    LFBA7   
       AND    #$0F    
       BNE    LFC5B   
       LDA    #$06    
LFC5B: CMP    #$0F    
       BNE    LFC61   
       LDA    #$09    
LFC61: RTS            

LFC62: .byte $A6,$A3,$B5,$9D,$20,$F2,$FC,$A4,$8F,$20,$DE,$FC,$A5,$BF,$18,$65
       .byte $A5,$85,$BF,$C5,$A4,$90,$10,$A5,$A4,$85,$BF,$A9,$30,$85,$D1,$A5
       .byte $8D,$09,$80,$85,$8D,$D0,$30,$A5,$8C,$09,$80,$85,$8C,$60,$A6,$A3
       .byte $B5,$9D,$20,$F2,$FC,$85,$A4,$A4,$90,$20,$DE,$FC,$A5,$C0,$38,$E5
       .byte $A5,$85,$C0,$C5,$A4,$F0,$02,$B0,$2C,$A5,$A4,$85,$C0,$A9,$30,$85
       .byte $D2,$A5,$8D,$09,$40,$85,$8D,$A9,$00,$85,$D0,$A9,$50,$85,$CE,$A5
       .byte $8D,$C9,$C0,$F0,$0F,$A5,$88,$4A,$4A,$4A,$4A,$AA,$A5,$C4,$18,$7D
       .byte $25,$FF,$85,$C4,$60,$A5,$8C,$09,$40,$85,$8C,$60,$AD,$82,$02,$0A
       .byte $0A,$90,$02,$A0,$00,$98,$4A,$4A,$4A,$AA,$BD,$03,$FF,$85,$A5,$60
LFCF2: ASL            
       ASL            
       CLC            
       ADC    #$38    
       STA    $A4     
       ADC    #$0D    
       RTS            

LFCFC: LDY    $9D,X   
LFCFE: LDA    LFDE9,Y 
       STA    $AD,X   
       LDA    LFDF8,Y 
       STA    $B0,X   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    #$0F    
       STA    $B3,X   
       RTS            

LFD11: LDA    $CF,X   
       BEQ    LFD1D   
       DEC    $CF,X   
       BNE    LFD53   
       INC    $CD,X   
       INC    $CD,X   
LFD1D: LDY    $CD,X   
       LDA    LFD65,Y 
       BEQ    LFD51   
       CMP    #$FD    
       BNE    LFD34   
       INY            
       LDA    LFD65,Y 
       CLC            
       ADC    $CD,X   
       STA    $CD,X   
       JMP    LFD1D   
LFD34: LSR            
       LSR            
       LSR            
       LSR            
       STA    $CF,X   
       LDA    LFD65,Y 
       AND    #$0F    
       STA    AUDC0,X 
       INY            
       LDA    LFD65,Y 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       STA    AUDF0,X 
       LDA    LFD65,Y 
       AND    #$0F    
LFD51: STA    AUDV0,X 
LFD53: RTS            

LFD54: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00
LFD65: .byte $00,$00,$00,$63,$94,$63,$76,$63,$58,$63,$3A,$63,$2D,$26,$75,$2F
       .byte $A5,$33,$C4,$1A,$28,$FD,$F8,$00,$39,$8F,$38,$6D,$FD,$F1,$20,$00
       .byte $19,$7F,$26,$8F,$10,$00,$27,$DF,$29,$BF,$20,$00,$FD,$E1,$44,$DA
       .byte $44,$BD,$44,$9F,$44,$7F,$44,$64,$34,$6B,$FD,$D3,$E3,$94,$63,$76
       .byte $63,$58,$63,$3A,$63,$2D,$00,$24,$BF,$30,$00,$24,$7F,$34,$BF,$00
       .byte $24,$7F,$34,$BF,$00,$3C,$2F,$10,$00,$4C,$2F,$00,$F4,$8F,$F4,$3F
       .byte $00,$41,$AF,$41,$CF,$00
LFDCB: .byte $00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$71,$61,$51,$41,$31,$21,$11,$01
LFDDB: .byte $00,$20,$30,$38,$3C,$3E
LFDE1: .byte $00,$80,$C0,$E0,$F0,$F8,$FC,$FE
LFDE9: .byte $FF,$F8,$F1,$E3,$C7,$8F,$1F,$3F,$7F,$FF,$FF,$FF,$FF,$FF,$FF
LFDF8: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$EF,$CF,$8F,$1F,$37,$73,$F1,$F8,$27
       .byte $56,$85,$86,$07,$36,$65,$94
LFE0F: .byte $00,$C3,$E7,$FF,$E7,$C3,$00,$00,$81,$C3,$E7,$C3,$81,$00,$00,$81
       .byte $C3,$C3,$C3,$81,$00
LFE24: .byte $06,$0D,$14,$0D,$00,$00,$5A,$24,$5A,$5A,$24,$5A,$00,$00,$18,$42
       .byte $24,$99,$99,$24,$42,$18,$00,$99,$42,$18,$A5,$A5,$18,$42,$99,$00
       .byte $10,$20,$26,$19,$98,$64,$04,$08,$00,$00,$46,$48,$38,$1C,$12,$62
       .byte $00,$00,$04,$08,$88,$78,$1E,$11,$10,$20,$00,$08,$10,$10,$9E,$79
       .byte $08,$08,$10,$00,$24,$42,$99,$24,$24,$99,$42,$24,$00,$00,$18,$24
       .byte $5A,$5A,$24,$18,$00,$00,$00,$42,$28,$04,$91,$24,$08,$10,$00,$00
       .byte $4A,$00,$28,$02,$48,$22,$00,$00,$00,$00,$48,$00,$48,$00,$00,$00
       .byte $48,$84,$48,$84,$48,$00,$00,$0C,$C4,$00,$8C,$C0,$00,$00,$C0,$8C
       .byte $08,$C0,$0C,$00,$00,$00,$00,$00,$00,$00
LFEAE: .byte $28,$31,$28,$3A,$43,$4C,$55,$5E,$67,$70,$79,$82,$8B,$92,$99,$A0
LFEBE: .byte $14,$42,$C2,$E4,$F6,$12,$D2,$E2,$32,$44,$C4,$E2,$24,$C6,$F4,$D4
       .byte $14,$42
LFED0: .byte $02,$C2,$E2,$02,$22,$42,$D2,$F2,$C3,$42,$02,$C2
LFEDC: .byte $02,$04,$06,$04
LFEE0: .byte $D4,$D6,$D8,$D6,$D4,$D6,$40,$30,$5A,$74
LFEEA: .byte $63
LFEEB: .byte $F5,$98,$F1,$AE,$F1,$DB,$F1,$19,$F2,$50,$F2,$85,$F2,$A2,$F3,$15
       .byte $F4,$43,$F4,$6D
LFEFF: .byte $F4,$03,$02,$01,$01,$01,$02,$02,$03,$03
LFF09: .byte $18,$28,$40,$00,$30,$40,$40,$40,$50,$50,$60,$70,$03,$04,$04,$04
       .byte $05,$05,$06,$07,$09,$09,$0B,$0D,$10,$12,$12,$13,$04,$0A,$0C,$0E
       .byte $10,$14,$15,$17
LFF2D: .byte $0D,$0B,$05,$02,$0B,$08,$05,$02,$0A,$07,$05,$02,$08,$07,$05,$02
       .byte $08,$07,$04,$02,$08,$06,$04,$02,$08,$06,$04,$02,$08,$06,$04,$02
       .byte $3E,$3F,$03,$03,$3F,$3E,$30,$30,$3F,$3F,$0C,$0C,$0C,$0C,$0C,$0C
       .byte $1C,$1C,$63,$36,$1C,$1C,$36,$63,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$18,$18,$18,$0C,$0C,$06,$06,$23,$3F,$3F,$30,$30,$3E,$1F
       .byte $03,$03,$23,$1E,$3F,$33,$33,$33,$33,$33,$33,$3F,$1E,$3F,$03,$03
       .byte $0E,$0E,$03,$03,$3F,$1E,$3F,$33,$33,$1E,$1E,$33,$33,$3F,$1E,$06
       .byte $06,$06,$3F,$3F,$26,$26,$16,$0E,$06,$03,$03,$03,$03,$1F,$21,$21
       .byte $21,$3F,$1E,$3F,$31,$31,$3F,$3E,$30,$30,$3F,$1E,$8E,$51,$01,$8E
       .byte $50,$51,$8E,$00,$00,$00,$13,$54,$54,$57,$54,$54,$F3,$00,$00,$00
       .byte $35,$4D,$45,$45,$45,$45,$39,$00,$00,$00,$1E,$31,$31,$31,$37,$30
       .byte $30,$30,$31,$1E,$CE,$D1,$D1,$D1,$CE,$C0,$F8,$C0,$C0,$FC
LFFEB: .byte $80,$55,$77,$89,$9C,$4D,$AF,$6F,$92,$A6,$65
LFFF6: .byte $B9,$C3,$CD,$D7,$5F,$E1,$00,$F0,$00,$F0
