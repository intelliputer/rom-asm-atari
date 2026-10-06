; Disassembly of roms/PickUp.BIN
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/PickUp.BIN
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
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
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
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
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
       LDX    #$02    
       JSR    LFB55   
       JSR    LFA34   
       JSR    LFBC1   
       LDA    #$04    
       STA    $C2     
       LDA    #$34    
       STA    $98     
       LDA    #$EF    
       STA    $BE     
       LDA    #$CD    
       STA    $BF     
       LDA    #$AB    
       STA    $D4     
       STA    $C0     
       LDA    #$80    
       LDX    #$03    
       JSR    LFB55   
       LDA    #$FE    
       STA    $DC     
       STA    $DE     
       STA    $E0     
LF03B: LDX    #$03    
       STX    VBLANK  
       STA    WSYNC   
       STX    VSYNC   
LF043: STA    WSYNC   
       DEX            
       BNE    LF043   
       STX    VSYNC   
       LDA    #$31    
       STA    TIM64T  
       LDA    $D2     
       BEQ    LF058   
       DEC    $D2     
       JMP    LF3D3   
LF058: LDX    $BA     
       LDA    LFFDA,X 
       PHA            
       LDA    LFFD9,X 
       PHA            
       RTS            

LF063: .byte $24,$D5,$70,$04,$A9,$90,$D0,$0A,$30,$04,$A9,$10,$D0,$04,$A5,$EA
       .byte $29,$80,$85,$EA,$A5,$98,$85,$EF,$A5,$96,$4A,$4A,$4A,$4A,$85,$EE
       .byte $A2,$00,$46,$EE,$90,$2B,$A5,$EF,$29,$03,$0A,$A8,$B9,$99,$F0,$48
       .byte $B9,$98,$F0,$48,$60,$9F,$F0,$A7,$F0,$A7,$F0,$B3,$F0,$B4,$E7,$B5
       .byte $EB,$95,$E7,$94,$EB,$B5,$E7,$09,$80,$95,$E7,$B5,$EB,$29,$7F,$95
       .byte $EB,$46,$EF,$46,$EF,$E8,$E0,$03,$D0,$C8,$A2,$06,$20,$F6,$FA,$CA
       .byte $10,$FA,$A9,$21,$C5,$9D,$90,$02,$85,$9D,$A9,$9A,$C5,$9D,$B0,$02
       .byte $85,$9D,$A6,$CF,$BD,$5D,$FF,$85,$A1,$BD,$63,$FF,$85,$97,$A5,$C8
       .byte $F0,$15,$A5,$D1,$29,$0F,$D0,$0B,$A6,$C4,$BC,$61,$FC,$D0,$04,$A2
       .byte $96,$86,$C4,$09,$02,$85,$E2,$A5,$D1,$29,$03,$D0,$3F,$A5,$E1,$F0
       .byte $05,$C6,$E1,$4C,$3F,$F1,$A9,$15,$C5,$DA,$90,$30,$A5,$C8,$F0,$15
       .byte $A9,$00,$85,$C8,$A9,$0F,$85,$C3,$A5,$E3,$85,$E1,$A5,$D0,$C9,$40
       .byte $F0,$7B,$4C,$D0,$F1,$20,$E4,$FA,$29,$07,$F0,$10,$C9,$07,$F0,$0C
       .byte $A8,$20,$B2,$FB,$F0,$06,$84,$C8,$A5,$E4,$85,$E1,$A4,$95,$F0,$6C
       .byte $C4,$C8,$D0,$04,$A9,$00,$85,$C8,$20,$B2,$FB,$F0,$44,$E8,$A8,$B5
       .byte $C9,$F0,$03,$E8,$D0,$F9,$94,$C9,$A9,$14,$85,$C4,$C6,$94,$C6,$94
       .byte $A5,$C8,$D0,$04,$A5,$E3,$85,$E1,$A5,$D0,$F0,$61,$A5,$BD,$A2,$00
       .byte $20,$AE,$FA,$A2,$05,$B5,$C9,$F0,$54,$CA,$10,$F9,$E8,$86,$F1,$A9
       .byte $20,$85,$C4,$A9,$2D,$85,$D2,$A9,$02,$85,$BA,$A9,$07,$85,$F0,$D0
       .byte $3C,$A9,$00,$95,$C9,$A9,$1B,$85,$C4,$E6,$94,$E6,$94,$A5,$D0,$F0
       .byte $08,$C6,$CF,$D0,$04,$A9,$10,$85,$D0,$4C,$D0,$F1,$A2,$0B,$E4,$DA
       .byte $D0,$10,$A5,$D5,$4A,$B0,$1A,$A6,$C3,$BD,$61,$FC,$D0,$04,$A9,$03
       .byte $85,$C3,$A5,$DA,$18,$69,$02,$85,$DA,$C9,$9D,$90,$04,$A2,$0B,$86
       .byte $DA,$A5,$9D,$18,$69,$04,$85,$99,$4C,$D3,$F3,$A6,$F0,$F0,$19,$A5
       .byte $D1,$29,$07,$D0,$34,$CA,$E0,$03,$D0,$01,$CA,$86,$F0,$A9,$00,$95
       .byte $B2,$A9,$2B,$85,$C4,$4C,$1C,$F2,$A5,$CF,$F0,$1D,$A5,$D1,$29,$0F
       .byte $D0,$17,$C6,$CF,$A5,$BD,$48,$A2,$00,$20,$AE,$FA,$68,$48,$20,$AE
       .byte $FA,$68,$20,$AE,$FA,$A9,$52,$85,$C4,$24,$D5,$30,$58,$A0,$00,$84
       .byte $EA,$E6,$9D,$A5,$9D,$C9,$A0,$D0,$39,$A9,$8F,$85,$C4,$A9,$00,$A2
       .byte $06,$95,$C9,$CA,$10,$FB,$85,$81,$85,$8D,$85,$8A,$A9,$80,$85,$BB
       .byte $A9,$10,$85,$86,$A9,$0A,$85,$87,$A9,$C0,$85,$80,$A9,$01,$85,$8C
       .byte $24,$D8,$30,$07,$A9,$0C,$85,$BA,$4C,$63,$F3,$A9,$04,$85,$BA,$4C
       .byte $9E,$F2,$24,$D8,$10,$0F,$A6,$F1,$DD,$6F,$FF,$D0,$08,$94,$C9,$E6
       .byte $F1,$A9,$08,$85,$C3,$24,$96,$10,$08,$A9,$80,$85,$D8,$A9,$78,$85
       .byte $C3,$24,$D8,$10,$09,$A5,$9D,$38,$E9,$06,$85,$A1,$D0,$0A,$24,$D5
       .byte $70,$06,$C6,$9D,$A9,$80,$85,$EA,$4C,$D3,$F3,$A0,$00,$84,$8B,$24
       .byte $D5,$30,$F5,$E6,$87,$E6,$86,$A5,$86,$C9,$4B,$D0,$08,$A2,$42,$86
       .byte $80,$A2,$32,$86,$C4,$C9,$52,$D0,$DF,$84,$B5,$A9,$05,$85,$8C,$A9
       .byte $06,$4C,$D1,$F3,$A2,$00,$86,$B5,$E6,$87,$A5,$87,$C9,$5A,$D0,$4F
       .byte $A9,$C0,$85,$80,$A9,$3B,$85,$C4,$86,$B9,$A9,$64,$85,$F0,$E8,$86
       .byte $8C,$A9,$08,$4C,$D1,$F3,$A2,$00,$86,$B5,$86,$B9,$A5,$F0,$F0,$04
       .byte $C6,$F0,$10,$2B,$86,$C4,$A5,$81,$C9,$04,$F0,$0A,$A5,$D1,$29,$07
       .byte $D0,$1D,$E6,$81,$10,$19,$A5,$C1,$F8,$18,$69,$01,$D8,$85,$C1,$85
       .byte $F0,$A9,$32,$85,$F1,$85,$8A,$A9,$59,$85,$C4,$A9,$0A,$85,$BA,$4C
       .byte $D3,$F3,$A0,$00,$84,$B5,$84,$B9,$A5,$F1,$F0,$04,$C6,$F1,$10,$EF
       .byte $A2,$1E,$A5,$F0,$F0,$19,$F8,$38,$E9,$01,$85,$F0,$F0,$02,$A2,$07
       .byte $86,$F1,$A9,$4D,$85,$C4,$98,$A2,$10,$20,$AE,$FA,$4C,$D3,$F3,$A9
       .byte $42,$85,$80,$A9,$32,$85,$C4,$A9,$08,$85,$8B,$A9,$0C,$4C,$D1,$F3
       .byte $A0,$00,$A5,$E6,$F0,$14,$A5,$D1,$4A,$B0,$02,$C6,$87,$A5,$87,$38
       .byte $E9,$06,$C5,$86,$B0,$06,$85,$86,$90,$38,$84,$B9,$24,$D5,$30,$28
       .byte $84,$8B,$E6,$86,$A5,$86,$C9,$9F,$D0,$1E,$A9,$0C,$85,$86,$E6,$8D
       .byte $A5,$D5,$4A,$90,$13,$20,$E4,$FA,$29,$03,$D0,$0C,$A9,$05,$85,$E6
       .byte $A9,$8C,$85,$87,$A9,$83,$85,$C4,$24,$D5,$70,$24,$A9,$08,$85,$8B
       .byte $C6,$86,$A5,$86,$C9,$0B,$B0,$18,$84,$C4,$A6,$C2,$E8,$E0,$10,$D0
       .byte $02,$A2,$0C,$86,$C2,$20,$C1,$FB,$A9,$8F,$85,$C4,$A9,$00,$85,$BA
LF3D3: BIT    $BB     
       BPL    LF3DA   
       JMP    LF472   
LF3DA: LDA    $B5     
       AND    #$0F    
       TAY            
       LDA    LFF03,Y 
       STA    $DB     
       LDX    #$0F    
       LDY    #$0F    
LF3E8: LDA    ($DB),Y 
       CPX    $B1     
       BCC    LF3F1   
       LDA    #$00    
       INY            
LF3F1: STA    $80,X   
       DEY            
       DEX            
       BPL    LF3E8   
       LDX    $C2     
       LDA    LFFB9,X 
       BPL    LF409   
       BIT    $E5     
       BMI    LF407   
       INC    $92     
       JMP    LF409   
LF407: DEC    $92     
LF409: LDA    LFFB9,X 
       ASL            
       BPL    LF41A   
       BIT    $E5     
       BVS    LF418   
       INC    $91     
       JMP    LF41A   
LF418: DEC    $91     
LF41A: LDA    $90     
       SEC            
       SBC    #$15    
       CMP    $91     
       BCS    LF42B   
       STA    $91     
       LDA    $E5     
       ORA    #$40    
       STA    $E5     
LF42B: LDA    $92     
       CLC            
       ADC    #$15    
       CMP    $91     
       BCC    LF43A   
       STA    $91     
       LDA    #$80    
       STA    $E5     
LF43A: LDX    $C2     
       LDA    LFFA9,X 
       SEC            
       SBC    #$28    
       CMP    $92     
       BCC    LF44C   
       LDA    $E5     
       AND    #$7F    
       STA    $E5     
LF44C: LDA    $99     
       JSR    LFAC1   
       LDX    #$04    
       JSR    LFB55   
       LDA    #$0F    
       STA    COLUPF  
       LDX    #$03    
LF45C: LDA    $9A,X   
       JSR    LFAC1   
       STA    $A2,X   
       LDA    $9E,X   
       JSR    LFAC1   
       STA    $A6,X   
       DEX            
       BPL    LF45C   
       INX            
       STX    CTRLPF  
       BEQ    LF480   
LF472: LDX    #$01    
       STX    CTRLPF  
LF476: LDA    $86,X   
       JSR    LFAC1   
       STA    $88,X   
       DEX            
       BPL    LF476   
LF480: LDX    #$02    
LF482: LDA    $BE,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFD00,Y 
       PHA            
       LDA    $BE,X   
       AND    #$0F    
       TAY            
       LDA    LFD00,Y 
       PHA            
       DEX            
       BPL    LF482   
       DEX            
LF49A: INX            
       INX            
       PLA            
       STA    $F2,X   
       CPX    #$0A    
       BNE    LF49A   
LF4A3: LDA    $F2,X   
       CMP    #$33    
       BNE    LF4B1   
       LDA    #$7F    
       STA    $F2,X   
       DEX            
       DEX            
       BNE    LF4A3   
LF4B1: LDA    $D0     
       AND    #$40    
       BNE    LF4BB   
       STA    $C3     
       STA    $C4     
LF4BB: LDA    INTIM   
       BNE    LF4BB   
       STA    COLUBK  
       STA    VBLANK  
       JSR    LFA50   
       LDA    #$CB    
       LDX    $E6     
       BEQ    LF4CF   
       LDA    #$EB    
LF4CF: STA    $DF     
       LDA    #$18    
       AND    $D3     
       STA    COLUP0  
       STA    COLUP1  
       LDX    $CF     
       TXA            
       LSR            
       TAY            
       LDA    LFDFC,Y 
       STA    NUSIZ1  
       INX            
       TXA            
       LSR            
       TAY            
       LDA    LFDFC,Y 
       STA    NUSIZ0  
       LDX    #$FF    
       STA    WSYNC   
       LDA    $CF     
       BEQ    LF4F6   
       STX    ENAM0   
LF4F6: CMP    #$02    
       BCC    LF4FC   
       STX    ENAM1   
LF4FC: BIT    $BB     
       BPL    LF503   
       JMP    LF6F1   
LF503: LDA    $A2     
       LDX    #$00    
       JSR    LFB55   
       LDY    #$07    
       LDA    $B2     
       BPL    LF515   
       LDA    $E7     
       BPL    LF515   
       INY            
LF515: STY    REFP0   
       LDY    #$07    
       LDA    $B6     
       BPL    LF522   
       LDA    $EB     
       BPL    LF522   
       INY            
LF522: STY    REFP1   
       LDA    $A6     
       INX            
       JSR    LFB55   
       STX    $F2     
       STX    $F3     
       INX            
       STX    $F4     
       STA    CXCLR   
       LDA    $B2     
       AND    #$0F    
       TAY            
       LDA    LFF03,Y 
       STA    $DB     
       LDA    $B6     
       AND    #$0F    
       TAY            
       LDA    LFF03,Y 
       STA    $DD     
       STA    HMCLR   
       LDA    #$9D    
       STA    $D9     
       JSR    LF6E2   
       LDX    #$00    
       STX    ENAM0   
       STX    ENAM1   
       STX    $95     
       STX    $96     
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    #$70    
       AND    $D3     
       STA    WSYNC   
       STA    HMOVE   
       STY    ENABL   
       STA    COLUBK  
LF56A: LDA    $D9     
       CMP    $90,X   
       BEQ    LF5DD   
       CMP    $94     
       BEQ    LF580   
       JSR    LF6E2   
       STA    WSYNC   
       STA    HMOVE   
       STY    ENABL   
       JMP    LF56A   
LF580: LDY    #$11    
       LDA    $D9     
LF584: SEC            
       SBC    $DA     
       LDX    #$00    
       CMP    #$05    
       BCS    LF58E   
       DEX            
LF58E: STA    WSYNC   
       STA    HMOVE   
       STX    ENABL   
       LDA    ($DD),Y 
       STA    GRP1    
       LDA    ($DF),Y 
       STA    COLUP1  
       DEY            
       DEC    $D9     
       LDA    $D9     
       CMP    #$0F    
       BNE    LF584   
       TAX            
       LDA    #$00    
       STA    ENABL   
LF5AA: LDA    ($DD),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    $80,X   
       STA    GRP0    
       LDA    ($DF),Y 
       STA    COLUP1  
       LDA    LFEDB,X 
       STA    COLUP0  
       LDA    #$00    
       DEX            
       BMI    LF5DA   
       DEY            
       BPL    LF5D5   
       LDY    #$05    
       STY    NUSIZ1  
       LDY    #$48    
       STY    $DD     
       STY    $DF     
       LDY    #$0B    
       LDA    $97     
LF5D5: STA    HMP1    
       JMP    LF5AA   
LF5DA: JMP    LF837   
LF5DD: LDY    #$0B    
       LDX    $C8     
       LDA    ($DB),Y 
       CPX    $F3     
       BNE    LF5E9   
       LDA    $E2     
LF5E9: STA    COLUP0  
       LDA    ($DD),Y 
       CPX    $F4     
       BNE    LF5F3   
       LDA    $E2     
LF5F3: STA    COLUP1  
       DEY            
LF5F6: LDA    $D9     
       SEC            
       SBC    $DA     
       LDX    #$00    
       CMP    #$05    
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF606   
       DEX            
LF606: LDA    ($DB),Y 
       STA    GRP0    
       LDA    ($DD),Y 
       STA    GRP1    
       STX    ENABL   
       DEC    $D9     
       DEY            
       BPL    LF5F6   
       LDX    $F2     
       JSR    LF6E2   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A2,X   
       STY    ENABL   
       NOP            
       NOP            
       AND    #$0F    
       TAY            
LF627: DEY            
       BPL    LF627   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF6D1   
       LDY    #$07    
       LDA    $B2,X   
       AND    $E7,X   
       BPL    LF63C   
       INY            
LF63C: STY    REFP0   
       JSR    LF6CD   
       JSR    LF6E2   
       LDA    $B2,X   
       AND    #$0F    
       STA    WSYNC   
       STA    HMOVE   
       STY    ENABL   
       TAY            
       LDA    LFF03,Y 
       STA    $DB     
       LDA    $B6,X   
       AND    #$0F    
       TAY            
       LDA    LFF03,Y 
       STA    $DD     
       JSR    LF6E2   
       INC    $F2     
       STA    WSYNC   
       STA    HMOVE   
       STY    ENABL   
       LDA    $A6,X   
       NOP            
       NOP            
       AND    #$0F    
       TAY            
LF670: DEY            
       BPL    LF670   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF6D1   
       LDA    $A2,X   
       STA    HMP0    
       LDA    $A6,X   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF6D1   
       STA    HMCLR   
       LDY    #$07    
       LDA    $B6,X   
       AND    $EB,X   
       BPL    LF696   
       INY            
LF696: STY    REFP1   
       JSR    LF6CD   
       BIT    CXP0FB  
       BVC    LF6A3   
       LDA    $F3     
       BPL    LF6A9   
LF6A3: BIT    CXP1FB  
       BVC    LF6AB   
       LDA    $F4     
LF6A9: STA    $95     
LF6AB: LDA    CXPPMM  
       ASL            
       ROR    $96     
       LDY    $F4     
       INY            
       STY    $F3     
       INY            
       STY    $F4     
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF6D1   
       JSR    LF6E2   
       STA    WSYNC   
       STA    HMOVE   
       STY    ENABL   
       STA    CXCLR   
       JMP    LF56A   
LF6CD: STA    WSYNC   
       STA    HMOVE   
LF6D1: LDA    $D9     
       SEC            
       SBC    $DA     
       LDY    #$00    
       CMP    #$05    
       BCS    LF6DD   
       DEY            
LF6DD: STY    ENABL   
       DEC    $D9     
       RTS            

LF6E2: LDA    $D9     
       SEC            
       SBC    $DA     
       LDY    #$00    
       CMP    #$05    
       BCS    LF6EE   
       DEY            
LF6EE: DEC    $D9     
       RTS            

LF6F1: STA    WSYNC   
       LDY    #$06    
       LDA    $8A     
       BNE    LF6FA   
       TAY            
LF6FA: LDX    #$0A    
LF6FC: LDA    LFD10,Y 
       STA    $F2,X   
       INY            
       DEX            
       DEX            
       BPL    LF6FC   
       CPY    #$06    
       BNE    LF70E   
       STA    WSYNC   
       BEQ    LF732   
LF70E: LDA    $C1     
       AND    #$0F    
       TAY            
       LDA    LFD00,Y 
       LDX    $8D     
       CPX    #$19    
       BNE    LF71E   
       LDA    #$F3    
LF71E: STA    $F2     
       LDA    $C1     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFD00,Y 
       CMP    #$33    
       BNE    LF730   
       LDA    #$7F    
LF730: STA    $F4     
LF732: LDA    #$70    
       AND    $D3     
       LDX    #$03    
LF738: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    LF738   
       STA    COLUBK  
       LDY    #$3D    
LF743: DEY            
       STA    WSYNC   
       STA    HMOVE   
       BPL    LF743   
       DEY            
       STY    PF2     
       LDA    #$50    
       AND    $D3     
       STA    COLUPF  
       LDA    #$1C    
       AND    $D3     
       STA    COLUP0  
       STA    COLUP1  
       JSR    LFA50   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$06    
       AND    $D3     
       STA    COLUPF  
       LDA    #$20    
       STA    PF2     
       LDY    #$02    
LF772: DEY            
       STA    WSYNC   
       STA    HMOVE   
       BPL    LF772   
       STY    PF2     
       LDA    #$14    
       AND    $D3     
       STA    COLUPF  
       LDX    #$14    
LF783: DEX            
       STA    WSYNC   
       STA    HMOVE   
       BNE    LF783   
       STX    NUSIZ0  
       LDA    #$B5    
       JSR    LFB55   
       LDA    #$FF    
       STA    $83     
       STA    $85     
       LDA    #$10    
       STA    $84     
       LDY    $81     
       LDA    LFF58,Y 
       STA    $82     
       LDA    #$02    
       STA    NUSIZ1  
       INX            
       LDA    #$D3    
       JSR    LFB55   
       LDA    #$64    
       AND    $D3     
       STA    COLUP1  
       LDA    #$D2    
       AND    $D3     
       STA    COLUP0  
       LDY    #$0B    
       STA    HMCLR   
LF7BC: LDA    ($82),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($84),Y 
       STA    GRP1    
       DEY            
       BPL    LF7BC   
       LDA    #$00    
       LDY    #$16    
LF7CF: DEY            
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       BNE    LF7CF   
       LDA    $88     
       LDX    #$00    
       JSR    LFB55   
       LDY    $8B     
       STY    REFP0   
       LDA    $E6     
       STA    NUSIZ1  
       LDA    $89     
       INX            
       JSR    LFB55   
       LDA    $B5     
       AND    #$0F    
       TAY            
       LDA    LFF03,Y 
       STA    $DB     
       LDY    $B9     
       LDA    LFF03,Y 
       STA    $DD     
       LDY    #$10    
       LDX    $8C     
       STX    CTRLPF  
       STA    HMCLR   
       LDA    #$7F    
       STA    PF2     
LF80C: LDA    ($DB),Y 
       TAX            
       LDA    ($DD),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       STX    GRP0    
       LDA    ($DF),Y 
       STA    COLUP1  
       LDA    LFEDB,Y 
       STA    COLUP0  
       LDA    $80     
       AND    $D3     
       NOP            
       STA    $EE     
       NOP            
       NOP            
       STA    COLUBK  
       NOP            
       LDA    #$70    
       AND    $D3     
       DEY            
       STA    COLUBK  
       BPL    LF80C   
LF837: LDA    #$36    
       AND    $D3     
       LDX    #$00    
       STA    WSYNC   
       LDY    #$30    
       STY    PF0     
       STA    $EE     
       STX    COLUPF  
       STX    GRP0    
       STX    GRP1    
       STA    COLUBK  
       STA    RESBL   
       LDA    #$50    
       STA    HMBL    
       STX    PF0     
       STX    PF2     
       LDX    #$30    
       STX    CTRLPF  
       LDX    #$02    
       STX    ENABL   
       LDA    CXPPMM  
       ASL            
       ROR    $96     
       LDA    #$06    
       STA    NUSIZ0  
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ1  
       LDX    #$00    
       STX    REFP0   
       STX    REFP1   
       LDA    #$0F    
       AND    $D3     
       STA    COLUP0  
       STA    COLUP1  
       NOP            
       NOP            
       LDA    #$E0    
       STA    RESP0   
       STA    HMP0    
       STA    RESP1   
       STX    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$00    
LF88E: LDA    $C9,X   
       AND    #$0F    
       TAY            
       LDA    LFF03,Y 
       PHA            
       INX            
       CPX    #$06    
       BNE    LF88E   
       LDX    #$00    
LF89E: PLA            
       STA    $F2,X   
       INX            
       INX            
       CPX    #$0C    
       BNE    LF89E   
       LDA    #$FE    
LF8A9: DEX            
       DEX            
       STA    $F3,X   
       BNE    LF8A9   
       STA    HMCLR   
       LDY    #$0A    
LF8B3: STA    WSYNC   
       LDA    ($FC),Y 
       STA    GRP0    
       LDA    ($FA),Y 
       STA    GRP1    
       LDA    ($F4),Y 
       STA    $EE     
       LDA    ($F2),Y 
       TAX            
       LDA    ($F8),Y 
       STA    GRP0    
       LDA    ($F6),Y 
       STA    GRP1    
       LDA    $EE     
       STA    GRP0    
       STX    GRP1    
       DEY            
       BPL    LF8B3   
       LDA    #$1C    
       STA    TIM64T  
       LDX    #$00    
       JSR    LFB6F   
       INX            
       JSR    LFB6F   
       JSR    LFAE4   
       INC    $D1     
       PHP            
       BIT    $BC     
       BMI    LF8F4   
       PLP            
       BNE    LF8FD   
       INC    $BC     
       BNE    LF8FD   
LF8F4: PLP            
       BNE    LF8FD   
       AND    #$F0    
       ORA    #$02    
       STA    $D3     
LF8FD: LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF90B   
       LDX    #$00    
       STX    $BC     
       DEX            
       STX    $D3     
LF90B: LDA    #$00    
       STA    $EE     
       STA    $EF     
       LDY    #$02    
       LDX    #$01    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF91D   
       DEX            
LF91D: STY    $EE,X   
       LDA    $D5     
       AND    #$C0    
       CMP    #$C0    
       BNE    LF92B   
       CLC            
       PHP            
       BCC    LF932   
LF92B: LDA    $D1     
       LSR            
       LSR            
       LSR            
       LSR            
       PHP            
LF932: LDA    #$07    
       ADC    $EE     
       ORA    #$80    
       STA    $B5     
       PLP            
       BIT    $D8     
       BMI    LF940   
       CLC            
LF940: LDA    #$07    
       ADC    $EF     
       STA    $B9     
       LDA    $D1     
       LSR            
       LSR            
       LSR            
       LDA    $E6     
       BEQ    LF955   
       LDA    #$0B    
       ADC    #$00    
       STA    $B9     
LF955: LDA    SWCHB   
       LSR            
       BCC    LF982   
       LSR            
       BCC    LF962   
       LDX    #$03    
       BPL    LF97D   
LF962: DEC    $D6     
       BNE    LF97F   
       JSR    LFA34   
       LDX    #$20    
       CPX    $D0     
       BNE    LF971   
       INC    $D7     
LF971: LDA    $D7     
       STX    $D0     
       AND    #$03    
       TAX            
       INX            
       STX    $BE     
       LDX    #$1E    
LF97D: STX    $D6     
LF97F: JMP    LF993   
LF982: JSR    LFA34   
       LDA    $D7     
       AND    #$03    
       TAX            
       LDA    LFF85,X 
       STA    $C2     
       LDA    #$80    
       STA    $D0     
LF993: LDA    #$10    
       BIT    $D0     
       BNE    LF9B6   
       BMI    LF9EB   
       BVS    LFA02   
       LDA    $D0     
       BNE    LF9E4   
       LDX    $9D     
       CPX    #$2F    
       BCS    LF9AB   
       LDA    #$7E    
       STA    $D5     
LF9AB: CPX    #$78    
       BCC    LF9B3   
       LDA    #$BE    
       STA    $D5     
LF9B3: JMP    LF9E4   
LF9B6: LDX    #$FF    
       STX    $D5     
       INX            
       STX    $B9     
       LDA    $B1     
       BEQ    LF9E4   
       STA    $C6     
       STA    $C5     
       EOR    #$1F    
       STA    AUDF0   
       TAX            
       INX            
       INX            
       STX    AUDF1   
       LDA    #$0F    
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC0   
       STA    AUDC1   
       LDA    $D1     
       AND    #$07    
       BNE    LF9E2   
       DEC    $B1     
LF9E2: BPL    LFA0F   
LF9E4: LDA    INPT4   
       BMI    LFA0F   
       JMP    LF982   
LF9EB: LDA    SWCHB   
       LSR            
       BCC    LFA0F   
       LDA    INPT4   
       BPL    LFA0F   
       JSR    LFBC1   
       LDA    #$70    
       STA    $C4     
       LDA    #$40    
       STA    $D0     
       BNE    LFA0F   
LFA02: LDA    SWCHA   
       AND    #$C0    
       TAX            
       BIT    INPT4   
       BPL    LFA0D   
       INX            
LFA0D: STX    $D5     
LFA0F: LDX    #$00    
       STX    GRP1    
       STX    GRP0    
       LDA    #$23    
       JSR    LFB55   
       LDA    #$0F    
       AND    $D3     
       STA    COLUP0  
       STA    COLUP1  
       INX            
       LDA    #$A3    
       JSR    LFB55   
LFA28: LDA    INTIM   
       BNE    LFA28   
       STA    WSYNC   
       STA    ENABL   
       JMP    LF03B   
LFA34: LDA    #$00    
       LDX    #$24    
LFA38: STA    $AA,X   
       DEX            
       BPL    LFA38   
       STX    $D3     
       STX    $D5     
       LDA    #$0B    
       STA    $DA     
       LDX    #$06    
LFA47: LDA    LFF76,X 
       STA    $E7,X   
       DEX            
       BPL    LFA47   
       RTS            

LFA50: LDA    #$08    
       STA    $EE     
       LDA    #$FD    
       STA    $FD     
       LDX    #$01    
       STX    VDELP0  
       STX    VDELP1  
       STA    HMCLR   
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    #$0A    
       STA    WSYNC   
       STA    HMOVE   
LFA6C: DEX            
       DEX            
       STA    $F3,X   
       BNE    LFA6C   
       NOP            
       NOP            
LFA74: LDY.w  $00EE   
       LDA    ($FC),Y 
       STA    GRP0    
       STA    HMOVE   
       LDA    ($FA),Y 
       STA    GRP1    
       LDA    ($F8),Y 
       STA    GRP0    
       LDA    ($F6),Y 
       STA    $EF     
       LDA    ($F4),Y 
       TAX            
       LDA    ($F2),Y 
       TAY            
       LDA    $EF     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $EE     
       BPL    LFA74   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    VDELP0  
       STA    VDELP1  
       RTS            

LFAAE: .byte $F8,$18,$65,$BE,$85,$BE,$8A,$65,$BF,$85,$BF,$A5,$C0,$69,$00,$85
       .byte $C0,$D8,$60
LFAC1: SEC            
       SBC    #$0A    
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $EE     
       TAY            
       PLA            
       AND    #$0F    
       CLC            
       ADC    $EE     
       CMP    #$0F    
       BCC    LFAD9   
       SBC    #$0F    
       INY            
LFAD9: STY    $EE     
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $EE     
       RTS            

LFAE4: LDA    $D4     
       ASL            
       EOR    $D4     
       ASL            
       EOR    $D4     
       ASL            
       ASL            
       EOR    $D4     
       ASL            
       ROL    $D4     
       LDA    $D4     
       RTS            

LFAF6: .byte $B5,$E7,$30,$21,$0A,$0A,$0A,$0A,$18,$75,$AA,$08,$95,$AA,$B5,$E7
       .byte $4A,$4A,$4A,$4A,$28,$75,$9A,$C9,$9C,$90,$07,$36,$E7,$38,$76,$E7
       .byte $A9,$9C,$95,$9A,$60,$0A,$0A,$0A,$0A,$85,$EE,$B5,$AA,$38,$E5,$EE
       .byte $08,$95,$AA,$B5,$E7,$4A,$4A,$4A,$4A,$29,$07,$85,$EE,$B5,$9A,$28
       .byte $E5,$EE,$85,$EE,$A0,$0E,$AD,$82,$02,$29,$40,$F0,$02,$A0,$1E,$C4
       .byte $EE,$90,$07,$84,$EE,$36,$E7,$18,$76,$E7,$A5,$EE,$95,$9A,$60
LFB55: STA    HMCLR   
       STA    HMP0,X  
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       AND    #$0F    
       TAY            
LFB65: DEY            
       BPL    LFB65   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFB6F: LDA    $C5,X   
       BEQ    LFB7B   
       DEC    $C5,X   
       BNE    LFBB1   
       INC    $C3,X   
       INC    $C3,X   
LFB7B: LDY    $C3,X   
       LDA    LFC61,Y 
       BEQ    LFBAF   
       CMP    #$FD    
       BNE    LFB92   
       INY            
       LDA    LFC61,Y 
       CLC            
       ADC    $C3,X   
       STA    $C3,X   
       JMP    LFB7B   
LFB92: LSR            
       LSR            
       LSR            
       LSR            
       STA    $C5,X   
       LDA    LFC61,Y 
       AND    #$0F    
       STA    AUDC0,X 
       INY            
       LDA    LFC61,Y 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       STA    AUDF0,X 
       LDA    LFC61,Y 
       AND    #$0F    
LFBAF: STA    AUDV0,X 
LFBB1: RTS            

LFBB2: .byte $BE,$68,$FF,$B5,$B2,$A2,$05,$D5,$C9,$F0,$03,$CA,$10,$F9,$60
LFBC1: LDX    #$07    
LFBC3: LDA    LFF7D,X 
       STA    $9A,X   
       DEX            
       BPL    LFBC3   
       LDA    #$50    
       STA    $97     
       LDA    #$1D    
       STA    $94     
       LDA    $C2     
       TAX            
       LSR            
       TAY            
       LDA    LFFC9,Y 
       STA    $E3     
       LDA    LFFD1,Y 
       STA    $E4     
       LDA    LFFB9,X 
       LSR            
       ROR    $EE     
       LDY    $C7     
       LDX    #$06    
LFBEC: CPX    #$03    
       BNE    LFBF1   
       DEX            
LFBF1: LDA    LFEF7,Y 
       STA    $B2,X   
       BIT    $EE     
       BPL    LFC02   
       LDA    $E7,X   
       CLC            
       ADC    LFEFD,Y 
       STA    $E7,X   
LFC02: DEX            
       BMI    LFC0C   
       DEY            
       BPL    LFBEC   
       LDY    #$05    
       BPL    LFBEC   
LFC0C: STY    $C7     
       LDA    #$80    
       STA    $EA     
       LDA    #$10    
       STA    $B1     
       LDA    #$00    
       STA    $95     
       STA    $96     
       STA    $BB     
       STA    $D8     
       STA    $E6     
       STA    $C8     
       LDA    $E3     
       STA    $E1     
       LDA    #$0B    
       STA    $DA     
       LDA    $BD     
       SED            
       ADC    #$05    
       CLD            
       CMP    #$95    
       BEQ    LFC38   
       STA    $BD     
LFC38: LDA    #$05    
       STA    $CF     
       LDA    $D1     
       STA    $98     
       LDX    $C2     
       LDA    LFF89,X 
       STA    $90     
       LDA    LFF99,X 
       STA    $91     
       LDA    LFFA9,X 
       STA    $92     
       LDA    #$F0    
       STA    $93     
       RTS            

LFC56: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFC61: .byte $00,$00,$00,$18,$14,$38,$97,$00,$23,$79,$23,$3C,$14,$6A,$00,$11
       .byte $4F,$F1,$4F,$00,$16,$18,$14,$DA,$24,$7F,$00,$2D,$9F,$3D,$7A,$00
       .byte $64,$9F,$64,$7F,$64,$5F,$64,$3F,$64,$2F,$00,$18,$CF,$24,$CA,$21
       .byte $C8,$00,$17,$9F,$10,$00,$17,$5F,$17,$3F,$00,$18,$6F,$16,$7F,$10
       .byte $00,$26,$FD,$29,$BD,$F0,$00,$F0,$00,$11,$F4,$FD,$FC,$1C,$57,$14
       .byte $47,$00,$14,$BF,$28,$BA,$21,$B6,$00,$54,$98,$10,$00,$54,$7A,$10
       .byte $00,$54,$5C,$30,$00,$4D,$46,$20,$00,$4D,$57,$20,$00,$4D,$36,$00
       .byte $74,$D6,$44,$77,$74,$D7,$44,$76,$64,$D6,$64,$B7,$64,$98,$64,$79
       .byte $64,$CA,$00,$13,$7D,$22,$2F,$11,$5E,$38,$2E,$B0,$00,$FD,$F6,$2D
       .byte $3F,$20,$00,$2D,$2F,$00,$41,$54,$41,$64,$41,$54,$41,$44,$00
LFD00: .byte $33,$1A,$23,$2B,$44,$3B,$66,$4D,$5E,$56,$6F,$78,$89,$92,$9B,$A2
LFD10: .byte $7F,$C6,$BD,$B4,$AB,$7F,$EA,$E1,$D8,$CF,$0C,$0C,$0C,$0C,$0C,$0C
       .byte $0C,$1C,$1C,$3F,$3F,$18,$0C,$06,$03,$23,$3F,$1E,$3F,$03,$03,$1E
       .byte $03,$03,$3F,$1E,$3F,$33,$33,$33,$33,$33,$3F,$1E,$3F,$01,$01,$3F
       .byte $20,$20,$3F,$3F,$06,$06,$06,$3F,$26,$26,$16,$0E,$06,$18,$18,$18
       .byte $0C,$06,$03,$23,$3F,$3F,$03,$03,$03,$1F,$3F,$23,$23,$3F,$1E,$3F
       .byte $33,$33,$1E,$33,$33,$3F,$1E,$3F,$33,$33,$3F,$30,$30,$3E,$1C,$C0
       .byte $C0,$C0,$C0,$F8,$C4,$C4,$C4,$F8,$CF,$CC,$CC,$CC,$0C,$CC,$CF,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$32,$32,$34,$38,$38,$34,$32
       .byte $00,$00,$03,$03,$03,$73,$73,$03,$03,$00,$00,$E6,$26,$27,$26,$26
       .byte $26,$27,$00,$00,$80,$40,$40,$40,$80,$00,$00,$CF,$08,$08,$08,$88
       .byte $08,$08,$08,$C8,$87,$84,$84,$84,$87,$84,$84,$E4,$E7,$E0,$10,$10
       .byte $10,$10,$10,$10,$13,$E3,$88,$89,$89,$89,$F9,$89,$89,$89,$88,$4F
       .byte $C8,$88,$08,$8E,$48,$48,$48,$8F,$C4,$24,$25,$27,$27,$24,$24,$24
       .byte $C7,$E1,$12,$02,$02,$02,$02,$02,$12,$E1,$70,$89,$09,$09,$71,$81
       .byte $81,$89,$70,$A5,$A9,$B1,$A9,$A5,$81,$99,$A5,$C3
LFDFC: .byte $10,$10,$11,$13,$00,$00,$22,$5D,$FF,$7F,$7F,$34,$1C,$00,$00,$EA
       .byte $00,$7E,$18,$18,$18,$3C,$26,$42,$42,$42,$7E,$42,$00,$10,$08,$04
       .byte $04,$08,$33,$2D,$1E,$2D,$33,$36,$00,$00,$FF,$FF,$C3,$BD,$FF,$DB
       .byte $FF,$FF,$00,$C4,$00,$00,$08,$1C,$3E,$7F,$7F,$77,$63,$22,$00,$34
       .byte $00,$3E,$7F,$77,$49,$6B,$2A,$2A,$DC,$C8,$FF,$EC,$18,$18,$18,$18
       .byte $18,$18,$18,$18,$18,$3C,$BD,$FF,$0C,$38,$28,$28,$28,$38,$30,$30
       .byte $30,$3C,$34,$10,$38,$38,$30,$38,$00,$00,$30,$2C,$28,$28,$28,$38
       .byte $30,$30,$30,$3C,$34,$10,$38,$38,$30,$38,$00,$00,$0C,$38,$28,$28
       .byte $28,$28,$FE,$7C,$60,$28,$38,$10,$10,$38,$30,$38,$00,$00,$30,$2C
       .byte $28,$28,$28,$28,$FE,$7C,$60,$28,$38,$10,$10,$38,$30,$38,$00,$00
       .byte $81,$42,$44,$2C,$3E,$FE,$3E,$FE,$BC,$62,$21,$11,$00,$00,$00,$00
       .byte $00,$44,$44,$44,$2C,$FE,$7E,$3E,$FE,$BC,$63,$21,$10,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FA
       .byte $3C,$3C,$3C,$3C,$3C,$D6,$D8,$D8,$FE,$FE,$3C,$3C,$38,$0E,$0E
LFEDB: .byte $C8,$C8,$C8,$C8,$C8,$C8,$48,$4E,$4E,$EE,$EE,$EE,$2E,$4E,$56,$34
       .byte $E4,$E4,$E6,$22,$22,$22,$22,$22,$22,$28,$2C,$2C
LFEF7: .byte $81,$02,$03,$04,$05,$86
LFEFD: .byte $01,$02,$01,$02,$01,$02
LFF03: .byte $B9,$00,$0C,$18,$24,$30,$3C,$54,$66,$78,$8A,$9C,$AD,$FE,$FE,$FE
       .byte $FE,$FE,$00,$EE,$EE,$EE,$EE,$EE,$EE,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$EE,$EE,$00,$00,$00,$00,$00,$00,$00,$00,$EE,$EE,$EE
       .byte $EE,$00,$00,$00,$00,$10,$00,$EE,$EE,$EE,$EE,$EE,$EE,$00,$00,$10
       .byte $10,$FE,$00,$EE,$EE,$EE,$EE,$EE,$EE,$10,$10,$FE,$FE,$FE,$00,$EE
       .byte $EE,$EE,$EE,$EE,$EE
LFF58: .byte $1C,$28,$34,$40,$4C,$0C,$0E,$10,$12,$14,$16,$B0,$D0,$F0,$10,$30
       .byte $50,$00,$04,$01,$05,$02,$06,$34,$44,$54,$64,$74,$84,$DC
LFF76: .byte $10,$08,$17,$80,$92,$86,$94
LFF7D: .byte $23,$2A,$26,$9B,$93,$87,$96,$16
LFF85: .byte $00,$04,$08,$0C
LFF89: .byte $96,$91,$96,$9B,$91,$96,$98,$9B,$8C,$96,$98,$9B,$91,$9B,$96,$9B
LFF99: .byte $73,$73,$7D,$86,$78,$78,$82,$7F,$76,$7B,$82,$86,$78,$7D,$82,$86
LFFA9: .byte $4B,$5A,$64,$71,$5A,$5F,$5A,$64,$5A,$5F,$64,$71,$5A,$5A,$67,$6E
LFFB9: .byte $01,$01,$00,$01,$41,$40,$81,$C1,$80,$C1,$C0,$01,$C0,$C1,$41,$81
LFFC9: .byte $96,$3C,$46,$3C,$3C,$32,$14,$14
LFFD1: .byte $A0,$64,$64,$50,$50,$3C,$3C,$3C
LFFD9: .byte $62
LFFDA: .byte $F0,$DD,$F1,$9D,$F2,$C6,$F2,$E8,$F2,$24,$F3,$62,$F3,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$F0,$00,$F0
