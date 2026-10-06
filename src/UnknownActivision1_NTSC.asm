; Disassembly of roms/UnknownActivision1_NTSC.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/UnknownActivision1_NTSC.bin
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
RESBL   =  $14
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
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
       LDX    #$00    
LF004: LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       JSR    LF61E   
       LDX    $82     
       BNE    LF019   
       INX            
       STX    $82     
       JMP    LF33C   
LF019: LDX    #$03    
LF01B: LDA    LFF60,X 
       STA    COLUP0,X
       DEX            
       BPL    LF01B   
       LDX    #$02    
LF025: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $E3,X   
       AND    #$F0    
       LSR            
       STA.wy $0086,Y 
       LDA    $E3,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0088,Y 
       DEX            
       BPL    LF025   
       LDX    #$00    
       LDY    #$50    
LF042: LDA    $86,X   
       BNE    LF04E   
       STY    $86,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    LF042   
LF04E: LDA    INTIM   
       BNE    LF04E   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E0     
       ROL            
       ROL            
       ROL            
       AND    #$02    
       STA    VBLANK  
       STA    CXCLR   
       JSR    LFE0C   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    COLUPF  
       STA    COLUBK  
       STA    WSYNC   
       STA    HMCLR   
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $EC     
       SEC            
LF07A: SBC    #$0F    
       BPL    LF07A   
       STA    RESP0   
       TAY            
       STA    WSYNC   
       LDA    $ED     
       SEC            
       STA    $D4     
       NOP            
       NOP            
       NOP            
       NOP            
LF08C: SBC    #$0F    
       BPL    LF08C   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       STA    HMP1    
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $C8     
       STA    COLUP0  
       LDA    $C9     
       STA    COLUP1  
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       LDA    #$80    
       STA    PF0     
       LDA    #$EF    
       STA    PF1     
       LDA    #$DE    
       STA    PF2     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$04    
       STA    COLUBK  
       STA    COLUPF  
       LDA    #$07    
       STA    $CA     
       LDX    $92     
       LDY    $93     
       LDA    #$00    
       STA    $D3     
       JMP    LF15F   
LF0E3: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LF100: STA    WSYNC   
       STA    HMOVE   
       LDA    $CB     
       STA    COLUPF  
       LDA    LFD00,X 
       STA    GRP0    
       INX            
       LDA    LFD00,Y 
       STA    GRP1    
       INY            
       LDA    $CC     
       STA    COLUPF  
       LDA.w  $00CD   
       STA    COLUPF  
       LDA    $CE     
       STA    COLUPF  
       LDA.w  $00CF   
       STA    COLUPF  
       LDA.w  $00D0   
       STA    COLUPF  
       LDA    $D1     
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       DEC    $D2     
       LDA    $CB     
       STA    COLUPF  
       STA    COLUPF  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $CC     
       STA    COLUPF  
       LDA.w  $00CD   
       STA    COLUPF  
       LDA    $CE     
       STA    COLUPF  
       LDA.w  $00CF   
       STA    COLUPF  
       LDA.w  $00D0   
       STA    COLUPF  
       LDA    $D1     
       STA    COLUPF  
       BIT    $D2     
       BPL    LF100   
LF15F: STA    WSYNC   
       STA    HMOVE   
       LDA    #$04    
       STA    COLUPF  
       LDA    LFD00,X 
       STA    GRP0    
       INX            
       LDA    LFD00,Y 
       STA    GRP1    
       INY            
       STX    $D4     
       DEC    $CA     
       BPL    LF17C   
       JMP    LF1F7   
LF17C: LDX    $D3     
       LDA    $94,X   
       CMP    LFDA9,X 
       BNE    LF187   
       AND    $F0     
LF187: STA    $CB     
       LDA    $95,X   
       CMP    LFDAA,X 
       BNE    LF192   
       AND    $F0     
LF192: STA    $CC     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $96,X   
       CMP    LFDAB,X 
       BNE    LF1A1   
       AND    $F0     
LF1A1: STA    $CD     
       LDA    $97,X   
       CMP    LFDAC,X 
       BNE    LF1AC   
       AND    $F0     
LF1AC: STA    $CE     
       LDA    $98,X   
       CMP    LFDAD,X 
       BNE    LF1B7   
       AND    $F0     
LF1B7: STA    $CF     
       LDA    $99,X   
       CMP    LFDAE,X 
       BNE    LF1C2   
       AND    $F0     
LF1C2: STA    $D0     
       STA    WSYNC   
       STA    HMOVE   
       INC    $D4     
       LDX    $D4     
       LDA    LFD00,X 
       STA    GRP0    
       LDA    LFD00,Y 
       STA    GRP1    
       INY            
       LDX    $D3     
       LDA    $9A,X   
       CMP    LFDAF,X 
       BNE    LF1E2   
       AND    $F0     
LF1E2: STA    $D1     
       TXA            
       CLC            
       ADC    #$07    
       STA    $D3     
       LDX    $D4     
       LDA    #$08    
       STA    $D2     
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF100   
LF1F7: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDY    #$07    
       LDA    $E2     
       AND    #$1F    
       CMP    #$14    
       BCS    LF21C   
       LDY    #$00    
       CMP    #$0C    
       BCC    LF21C   
       SBC    #$0C    
       TAY            
LF21C: STY    $F3     
       TYA            
       EOR    #$07    
       STA    $F4     
       LDA    #$B4    
       LDX    #$08    
       SEC            
       STA    WSYNC   
       STA    HMOVE   
LF22C: STA    $88,X   
       SBC    #$08    
       STA    $86,X   
       SBC    #$08    
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LF22C   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    COLUBK  
       STA    COLUPF  
       JSR    LFE10   
       LDA    #$78    
       STA    PF1     
       LDA    #$31    
       STA    CTRLPF  
       STA    NUSIZ1  
       STA    HMCLR   
       LDA    #$10    
       STA    HMBL    
       LDY    #$07    
       STY    ENABL   
LF25B: LDA    LFF84,Y 
       TAX            
       LDA    LFF64,Y 
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFFBC,Y 
       STA    COLUPF  
       LDA    LFF6C,Y 
       STA    GRP1    
       LDA    LFF74,Y 
       STA    GRP0    
       LDA    $F2     
       NOP            
       LDA    LFF7C,Y 
       STA    GRP1    
       STX    GRP0    
       STA    GRP1    
       LDA    #$00    
       STA    COLUPF  
       DEY            
       DEC    $F4     
       BPL    LF25B   
       LDA    #$1F    
       LDX    #$82    
       STA    WSYNC   
       STA    TIM64T  
       STX    VBLANK  
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    PF1     
       STA    ENABL   
       LDA    $82     
       ASL            
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
LF2B1: LDA    INTIM   
       BNE    LF2B1   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF2DB   
       INC    $E1     
       LDA    $E1     
       AND    #$C7    
       STA    $E1     
       AND    #$07    
       BNE    LF2DB   
       INC    $E0     
       BNE    LF2DB   
       SEC            
       ROR    $E0     
LF2DB: LDA    #$30    
       STA    WSYNC   
       STA    TIM64T  
       LDY    SWCHA   
       LDA    $81     
       AND    #$07    
       BNE    LF307   
       LDA    $E2     
       BEQ    LF307   
       LDY    #$FF    
       DEC    $E2     
       BNE    LF307   
       DEC    $E2     
       LDA    $E1     
       BMI    LF307   
       ORA    #$80    
       STA    $E1     
       LDA    #$03    
       STA    $80     
       LDX    #$F2    
       BNE    LF322   
LF307: TYA            
       AND    #$0F    
       STA    $85     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $84     
       INY            
       BEQ    LF31A   
       LDA    #$00    
       STA    $E0     
LF31A: LDA    SWCHB   
       LSR            
       BCS    LF325   
       LDX    #$E0    
LF322: JMP    LF004   
LF325: LDY    #$00    
       LSR            
       BCS    LF358   
       LDA    $83     
       BEQ    LF332   
       DEC    $83     
       BPL    LF35A   
LF332: INC    $80     
       STY    $EB     
       STY    $EE     
       STY    AUDV0   
       STY    AUDV1   
LF33C: LDA    $80     
       AND    #$03    
       STA    $80     
       STA    $E0     
       STA    $E1     
       ORA    #$A0    
       TAY            
       INY            
       STY    $E3     
       LDA    #$AA    
       STA    $E4     
       STA    $E5     
       LDA    #$FF    
       STA    $E2     
       LDY    #$1E    
LF358: STY    $83     
LF35A: DEC    $E9     
       BPL    LF37F   
       LDA    #$3B    
       STA    $E9     
       SED            
       LDA    #$01    
       CLC            
       ADC    $E8     
       STA    $E8     
       CMP    #$60    
       BNE    LF37F   
       LDX    #$00    
       STX    $E8     
       LDA    #$01    
       CLC            
       ADC    $E7     
       STA    $E7     
       LDA    $E6     
       ADC    #$00    
       STA    $E6     
LF37F: CLD            
       BIT    $EB     
       BPL    LF39E   
       LDA    $E8     
       STA    $E5     
       LDA    $E6     
       STA    $E3     
       LDA    $E7     
       ASL            
       ROL    $E3     
       ASL            
       ROL    $E3     
       ASL            
       ROL    $E3     
       ASL            
       ROL    $E3     
       ORA    #$0B    
       STA    $E4     
LF39E: LDX    $EE     
       LDA    LF3AD,X 
       STA    $C5     
       LDA    LF3B6,X 
       STA    $C6     
       JMP.ind ($00C5)
LF3AD: .byte $CA,$CA,$26,$50,$AC,$7D,$BF,$EA,$F1
LF3B6: .byte $F3,$F3,$F4,$F4,$F4,$F4,$F3,$F4,$F4,$A5,$82,$29,$03,$18,$69,$02
       .byte $A8,$4C,$02,$F4,$AD,$C1,$FD,$C6,$EA,$10,$06,$A9,$10,$85,$EA,$A9
       .byte $04,$A6,$C7,$95,$94,$A2,$FF,$A5,$0C,$25,$0D,$29,$80,$D0,$01,$E8
       .byte $86,$F0,$A5,$EE,$D0,$03,$4C,$47,$F5,$AD,$80,$02,$4A,$4A,$4A,$4A
       .byte $2D,$80,$02,$AA,$BC,$DA,$FD,$D0,$03,$4C,$47,$F5,$84,$EE,$B9,$EA
       .byte $FD,$85,$C5,$B9,$F0,$FD,$85,$C6,$A6,$C7,$AD,$C1,$FD,$95,$94,$8A
       .byte $A2,$00,$38,$E8,$E9,$07,$10,$FB,$18,$69,$07,$CA,$A8,$6C,$C5,$00
       .byte $E6,$EC,$E6,$EC,$C6,$ED,$C6,$ED,$C6,$D6,$D0,$48,$A6,$D5,$A5,$C8
       .byte $95,$95,$A5,$C9,$95,$94,$A5,$EC,$38,$E9,$28,$85,$EC,$E4,$C7,$F0
       .byte $04,$CA,$4C,$69,$F5,$E6,$C7,$4C,$D8,$F4,$C6,$EC,$C6,$EC,$E6,$ED
       .byte $E6,$ED,$C6,$D6,$D0,$1E,$A6,$D5,$A5,$C8,$95,$93,$A5,$C9,$95,$94
       .byte $A5,$EC,$18,$69,$28,$85,$EC,$E4,$C7,$F0,$04,$E8,$4C,$9E,$F5,$C6
       .byte $C7,$4C,$D8,$F4,$4C,$47,$F5,$E6,$92,$C6,$93,$C6,$D6,$D0,$F5,$A6
       .byte $D5,$A5,$C8,$95,$8D,$A5,$C9,$95,$94,$A5,$92,$38,$E9,$16,$85,$92
       .byte $E4,$C7,$F0,$08,$8A,$18,$69,$07,$AA,$4C,$07,$F6,$A5,$C7,$38,$E9
       .byte $07,$85,$C7,$4C,$D8,$F4,$C6,$92,$E6,$93,$C6,$D6,$D0,$C6,$A6,$D5
       .byte $A5,$C8,$95,$9B,$A5,$C9,$95,$94,$A5,$92,$18,$69,$16,$85,$92,$E4
       .byte $C7,$F0,$08,$8A,$38,$E9,$07,$AA,$4C,$D6,$F5,$A5,$C7,$18,$69,$07
       .byte $85,$C7,$A5,$EF,$85,$EE,$A9,$00,$85,$19,$85,$1A,$A9,$4D,$85,$92
       .byte $85,$93,$D0,$5D,$A4,$D6,$A5,$82,$4C,$FA,$F4,$A4,$D6,$B9,$5A,$F3
       .byte $45,$F2,$85,$F2,$29,$1F,$AA,$B5,$94,$48,$B9,$94,$00,$95,$94,$68
       .byte $99,$94,$00,$C6,$D6,$10,$3A,$A5,$EF,$85,$EE,$A2,$31,$AD,$C1,$FD
       .byte $CA,$D5,$94,$D0,$FB,$86,$C7,$4C,$47,$F5,$A6,$D5,$BD,$A9,$FD,$49
       .byte $0F,$29,$0F,$09,$10,$85,$17,$BD,$A9,$FD,$4A,$4A,$4A,$4A,$18,$69
       .byte $0B,$29,$0F,$85,$18,$A9,$0C,$85,$15,$85,$16,$A9,$0F,$85,$19,$85
       .byte $1A,$4C,$19,$F0,$C9,$06,$F0,$67,$AD,$A0,$FD,$85,$EC,$AD,$A1,$FD
       .byte $85,$ED,$BD,$A2,$FD,$85,$92,$85,$93,$98,$49,$FF,$18,$65,$C7,$18
       .byte $69,$06,$AA,$86,$D5,$B5,$94,$85,$C8,$B5,$95,$85,$C9,$A9,$04,$95
       .byte $94,$95,$95,$A9,$0A,$85,$D6,$D0,$A1,$C9,$00,$F0,$32,$AD,$9C,$FD
       .byte $85,$EC,$AD,$9B,$FD,$85,$ED,$BD,$A2,$FD,$85,$92,$85,$93,$98,$49
       .byte $FF,$18,$65,$C7,$18,$69,$02,$AA,$86,$D5,$B5,$94,$85,$C8,$B5,$93
       .byte $85,$C9,$A9,$04,$95,$94,$95,$93,$A9,$0A,$85,$D6,$4C,$7D,$F5,$A5
       .byte $EF,$85,$EE,$4C,$47,$F5,$E0,$06,$F0,$F5,$AD,$A7,$FD,$85,$92,$AD
       .byte $A8,$FD,$85,$93,$B9,$9B,$FD,$85,$EC,$85,$ED,$98,$18,$69,$23,$AA
       .byte $86,$D5,$B5,$94,$85,$C8,$B5,$9B,$85,$C9,$A9,$04,$95,$94,$95,$9B
       .byte $A9,$0B,$85,$D6,$4C,$7D,$F5,$E0,$00,$F0,$C4,$AD,$A3,$FD,$85,$92
       .byte $AD,$A2,$FD,$85,$93,$B9,$9B,$FD,$85,$EC,$85,$ED,$98,$18,$69,$07
       .byte $AA,$86,$D5,$B5,$94,$85,$C8,$B5,$8D,$85,$C9,$A9,$04,$95,$94,$95
       .byte $8D,$A9,$0B,$85,$D6,$4C,$7D,$F5
LF61E: LDX    #$01    
LF620: LDA    #$04    
       STA    AUDV0,X 
       DEX            
       BPL    LF620   
       LDX    #$0B    
       LDA    #$FF    
LF62B: STA    $86,X   
       DEX            
       DEX            
       BPL    LF62B   
       LDX    #$30    
LF633: LDA    LFDA9,X 
       STA    $94,X   
       DEX            
       BPL    LF633   
       LDA    #$18    
       STA    $C7     
       LDA    #$4D    
       STA    $92     
       STA    $93     
       STA    $EC     
       STA    $ED     
       LDX    $82     
       BEQ    LF665   
       LDX    $80     
       LDA    LFFC4,X 
       STA    $EE     
       LDA    LFFC8,X 
       STA    $EF     
       LDA    #$30    
       STA    $D6     
       TXA            
       LSR            
       LSR            
       ROR            
       EOR    #$80    
       STA    $EB     
LF665: RTS            

LF666: .byte $20,$8D,$F6,$85,$02,$85,$2A,$60,$18,$69,$2E,$A8,$29,$0F,$85,$F2
       .byte $98,$4A,$4A,$4A,$4A,$A8,$18,$65,$F2,$C9,$0F,$90,$03,$E9,$0F,$C8
       .byte $49,$07,$0A,$0A,$0A,$0A,$60,$20,$6E,$F6,$95,$20,$85,$02,$88,$10
       .byte $FD,$95,$10,$60,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFD00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$20,$34,$48,$5C
       .byte $70,$84,$42,$37,$2C,$21,$16,$0B,$00
LFDA9: .byte $40
LFDAA: .byte $42
LFDAB: .byte $44
LFDAC: .byte $46
LFDAD: .byte $48
LFDAE: .byte $4A
LFDAF: .byte $4C,$20,$22,$24,$26,$28,$2A,$2C,$E0,$E2,$E4,$E6,$E8,$EA,$EC,$C0
       .byte $C2,$C4,$C6,$C8,$CA,$CC,$A0,$A2,$A4,$A6,$A8,$AA,$AC,$80,$82,$84
       .byte $86,$88,$8A,$8C,$60,$62,$64,$66,$68,$6A,$6C,$00,$00,$00,$00,$00
       .byte $00,$00,$02,$00,$00,$00,$03,$00,$04,$05,$00,$00,$00,$4A,$7F,$BC
       .byte $ED,$00,$00,$F5,$F5,$F5,$F5,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$85,$02,$85,$2A,$A2,$0B,$95,$86,$CA,$CA,$10,$FA
LFE0C: LDA    #$07    
       STA    $F3     
LFE10: STA    WSYNC   
       STA    HMOVE   
       LDA    #$0C    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$F3    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    #$01    
       LDA    #$40    
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    RESBL   
       STY    CTRLPF  
       STA    HMBL    
       STX    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STY    VDELP0  
       STY    VDELP1  
       DEY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STA    $F2     
       STA    HMCLR   
LFE44: LDY    $F3     
       LDA    ($90),Y 
       STA    $F2     
       LDA    ($8E),Y 
       TAX            
       LDA    ($86),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($88),Y 
       STA    GRP1    
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       LDY    $F2     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $F3     
       BPL    LFE44   
       LDA    #$80    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

LFE80: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$00,$18,$18,$00
LFF60: .byte $1E,$1E,$0E,$06
LFF64: .byte $0C,$06,$03,$01,$00,$00,$00,$00
LFF6C: .byte $2D,$29,$E9,$A9,$ED,$61,$2F,$00
LFF74: .byte $50,$58,$5C,$56,$53,$11,$F0,$00
LFF7C: .byte $BA,$8A,$BA,$A2,$3A,$80,$FE,$00
LFF84: .byte $E9,$AB,$AF,$AD,$E9,$00,$00,$00,$00,$00,$00,$F7,$95,$87,$90,$F0
       .byte $00,$47,$41,$77,$55,$75,$00,$00,$00,$03,$00,$4B,$4A,$6B,$00,$08
       .byte $00,$80,$80,$AA,$AA,$BA,$27,$22,$00,$00,$00,$11,$11,$17,$15,$17
       .byte $00,$00,$00,$77,$51,$73,$51,$77
LFFBC: .byte $84,$D6,$D6,$1A,$26,$26,$44,$00
LFFC4: .byte $07,$08,$01,$06
LFFC8: .byte $01,$01,$01,$06,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$00,$F0,$FF,$FF
