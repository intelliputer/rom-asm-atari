; Disassembly of roms/ASTRBLST.BIN
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/ASTRBLST.BIN
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
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
SWCHB   =  $0282
TIM64T  =  $0296
T1024T  =  $0297

       ORG $F000
LF000: .byte $A5,$C2,$29,$07,$C9,$05,$B0,$34,$AA,$B5,$92,$F0,$2F,$B5,$9A,$C9
       .byte $0D,$F0,$2E,$C9,$0E,$D0,$25,$B5,$A2,$18,$75,$92,$38,$E9,$79,$4A
       .byte $4A,$4A,$4A,$4A,$A8,$B9,$3D,$F0,$75,$92,$95,$92,$C8,$98,$29,$03
       .byte $0A,$0A,$0A,$0A,$0A,$69,$79,$38,$F5,$92,$95,$A2,$60,$FE,$FE,$02
       .byte $02,$B5,$A2,$18,$75,$92,$49,$17,$85,$BE,$C9,$FA,$B5,$92,$B0,$02
       .byte $69,$07,$E9,$03,$95,$92,$A5,$BE,$38,$F5,$92,$95,$A2,$B5,$89,$38
       .byte $E5,$8E,$B5,$AA,$29,$0F,$B0,$02,$49,$80,$49,$C0,$95,$AA,$60,$FF
LF070: LDX    #$FE    
       LDY    #$AD    
       STY    $D6     
       STY    $D9     
       LDA    #$BC    
       STA    $D4     
       STA    $D7     
       LDA    #$00    
       STA    $BF     
       STA    $DA     
       JMP    LF0FF   
LF087: STA    WSYNC   
       LDA    #$00    
       CPY    $D6     
       BCS    LF091   
       LDA    ($D4),Y 
LF091: STA    GRP0    
       DEY            
       CPY    $D9     
       BCS    LF09C   
       LDA    ($D7),Y 
       STA    GRP1    
LF09C: STA    WSYNC   
       LDA    #$00    
       CPY    $D6     
       BCS    LF0A6   
       LDA    ($D4),Y 
LF0A6: STA    GRP0    
LF0A8: DEY            
       BEQ    LF11B   
       CPY    $D9     
       BCS    LF0B6   
       LDA    ($D7),Y 
       STA    GRP1    
       JMP    LF0C4   
LF0B6: BEQ    LF0C4   
LF0B8: CPY    $D6     
       BCS    LF0C0   
       LDA    ($D4),Y 
       STA    $BF     
LF0C0: DEY            
       JMP    LF0D1   
LF0C4: CPY    $D6     
       BCS    LF0CC   
       LDA    ($D4),Y 
       STA    $BF     
LF0CC: DEY            
       LDA    ($D7),Y 
       STA    $DA     
LF0D1: STA    WSYNC   
       LDA    $BF     
       STA    GRP0    
       CPY    #$20    
       BCS    LF0EF   
       TYA            
       STA    $BE     
       LSR            
       LSR            
       TAY            
       LDA    ($DB),Y 
       STA    PF0     
       LDA    ($DD),Y 
       STA    PF1     
       LDA    ($DF),Y 
       STA    PF2     
       LDY    $BE     
LF0EF: LDA    $DA     
       STA    GRP1    
       BIT    COLUBK  
       BMI    LF0F9   
       STY    $CF     
LF0F9: LDA    #$00    
       STA    $BF     
       STA    $DA     
LF0FF: STA    WSYNC   
       CPY    $D6     
       BCS    LF109   
       LDA    ($D4),Y 
       BEQ    LF124   
LF109: STA    GRP0    
LF10B: DEY            
       BEQ    LF11B   
       CPY    $D9     
       BCS    LF118   
       LDA    ($D7),Y 
       STA    GRP1    
       BEQ    LF180   
LF118: JMP    LF087   
LF11B: LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       JMP    LF1F8   
LF124: STA    GRP0    
       LDA    $B4,X   
       TAX            
       LDA    $92,X   
       STA    $D6     
       BEQ    LF10B   
       LDA    $A2,X   
       STA    $D4     
       DEY            
       BEQ    LF11B   
       CPY    $D9     
       BCC    LF143   
       BEQ    LF147   
       LDA    #$00    
       STA    $DA     
       DEY            
       BNE    LF14C   
LF143: LDA    ($D7),Y 
       STA    GRP1    
LF147: DEY            
       LDA    ($D7),Y 
       STA    $DA     
LF14C: STA    HMCLR   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       LDA    $81,X   
       AND    #$0F    
       CMP    #$06    
       BCC    LF1CD   
       LDA    $DA     
       STA    GRP1    
       LDA    $9A,X   
       STA    COLUP0  
       LDA    $81,X   
       STA    HMP0    
       AND    #$0F    
       SBC    #$05    
       SEC            
LF16D: SBC    #$01    
       BNE    LF16D   
       STA    RESP0   
LF173: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    $DA     
       JMP    LF0A8   
LF180: LDA    $B4,X   
       TAX            
       LDA    $92,X   
       STA    $D9     
       BEQ    LF118   
       LDA    #$00    
       CPY    $D6     
       BCS    LF191   
       LDA    ($D4),Y 
LF191: DEY            
       STA    HMCLR   
       STA    WSYNC   
       STA    GRP0    
       LDA    $81,X   
       AND    #$0F    
       CMP    #$06    
       BCC    LF1E2   
       LDA    $A2,X   
       STA    $D7     
       LDA    GRP0    
       LDA    $9A,X   
       STA    COLUP1  
       LDA    $81,X   
       STA    HMP1    
       AND    #$0F    
       SBC    #$05    
LF1B2: SBC    #$01    
       BNE    LF1B2   
       STA    RESP1   
LF1B8: STA    WSYNC   
       STA    HMOVE   
       CPY    $D6     
       BCS    LF1C4   
       LDA    ($D4),Y 
       STA    GRP0    
LF1C4: DEY            
       BNE    LF1CA   
       JMP    LF11B   
LF1CA: JMP    LF0B8   
LF1CD: SBC    #$01    
       BPL    LF1CD   
       STA    RESP0   
       LDA    $DA     
       STA    GRP1    
       LDA    $9A,X   
       STA    COLUP0  
       LDA    $81,X   
       STA    HMP0    
       JMP    LF173   
LF1E2: SEC            
LF1E3: SBC    #$01    
       BNE    LF1E3   
       STA    RESP1   
       LDA    $A2,X   
       STA    $D7     
       LDA    $9A,X   
       STA    COLUP1  
       LDA    $81,X   
       STA    HMP1    
       JMP    LF1B8   
LF1F8: STA    WSYNC   
       LDA    #$00    
       STA    CTRLPF  
       LDA    #$3A    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    $F1     
       STA    COLUBK  
       LDA    #$18    
       STA    COLUPF  
       LDX    #$13    
LF212: TXA            
       LSR            
       LSR            
       TAY            
       STA    WSYNC   
       LDA    ($E1),Y 
       STA    PF0     
       LDA    ($E3),Y 
       EOR    ($E5),Y 
       STA    PF1     
       LDA    ($E7),Y 
       EOR    ($E9),Y 
       STA    PF2     
       LDA    ($EF),Y 
       STA    PF0     
       LDA    ($EB),Y 
       STA    PF1     
       LDA    ($ED),Y 
       STA    PF2     
       DEX            
       BPL    LF212   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       RTS            


START:
LF244: SEI            
       CLD            
       LDX    #$00    
       LDA    #$00    
LF24A: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF24A   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$01    
       STA    CTRLPF  
       STA    VDELP1  
       LDA    #$FD    
       STA    $D5     
       STA    $D8     
       LDA    #$FF    
       LDX    #$0E    
LF266: STA    $E2,X   
       DEX            
       DEX            
       BPL    LF266   
       LDA    #$A5    
       STA    $EF     
       LDA    #$FF    
       STA    $B3     
       JSR    LFB76   
       LDA    #$82    
       STA    $C0     
       LDA    #$F2    
       STA    $C1     
       JMP    LF2C9   
LF282: .byte $20,$9A,$F8,$A9,$10,$85,$CC,$20,$1F,$FA,$20,$F1,$F9,$2C,$82,$02
       .byte $10,$0B,$A9,$04,$85,$CE,$A9,$80,$85,$C8,$4C,$A5,$F2,$A9,$00,$85
       .byte $CE,$85,$C8,$20,$B1,$F2,$90,$06,$20,$B0,$F6,$4C,$5B,$F3,$60,$20
       .byte $DC,$FF,$24,$BC,$70,$08,$A5,$0C,$25,$0D,$10,$09,$18,$60,$2C,$80
       .byte $02,$50,$02,$18,$60,$38,$60
LF2C9: LDA    #$02    
       STA    TIM64T  
LF2CE: LDA    #$82    
       STA    VBLANK  
       JSR    LF453   
       LDA    #$1E    
       STA    TIM64T  
       JSR    LF322   
       JSR    LF453   
       LDA    #$22    
       STA    TIM64T  
       LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       JSR    LF684   
       JSR    LF37A   
       LDA    SWCHB   
       LSR            
       BCS    LF302   
       JMP    LF244   
LF302: JSR    LF453   
       LDA    $F2     
       STA    COLUPF  
       LDA    $F1     
       STA    COLUBK  
       LDA    #$F7    
       STA    TIM64T  
       JSR    LFB9E   
       LDA    #$00    
       STA    VBLANK  
       JSR    LF070   
       JSR    LFBBF   
       JMP    LF2CE   
LF322: JMP.ind ($00C0)
LF325: .byte $E6,$C2,$A0,$07,$20,$F5,$F7,$A0,$06,$20,$F5,$F7,$20,$00,$F0,$A5
       .byte $C2,$4A,$B0,$11,$20,$AE,$F7,$B0,$1C,$20,$80,$F9,$20,$39,$F8,$20
       .byte $CB,$F6,$4C,$50,$F3,$20,$61,$F4,$20,$F1,$F9,$20,$FB,$F3,$A6,$CE
       .byte $BD,$75,$F3,$85,$F1,$60,$A9,$25,$85,$C0,$A9,$F3,$85,$C1,$60,$A5
       .byte $C2,$4A,$B0,$03,$20,$61,$F4,$20,$FB,$F3,$20,$00,$F0,$E6,$C2,$60
       .byte $00,$80,$60,$A0,$02
LF37A: LDX    #$05    
       LDA    $C2     
       AND    #$03    
       STA    $BF     
LF382: LDA    $AA,X   
       JSR    LF3C1   
       ADC    $89,X   
       CMP    #$02    
       BCC    LF39A   
       CMP    #$92    
       BCS    LF39A   
       STA    $89,X   
       JSR    LF3D6   
LF396: DEX            
       BPL    LF382   
       RTS            

LF39A: CPX    #$05    
       BEQ    LF396   
       JSR    LF6A7   
       LDA    $9A,X   
       CMP    #$0D    
       BEQ    LF3AE   
       CMP    #$0C    
       BEQ    LF3B8   
       JMP    LF396   
LF3AE: LDA    $CD     
       SEC            
       SBC    #$08    
       STA    $CD     
       JMP    LF396   
LF3B8: LDA    $BC     
       AND    #$CF    
       STA    $BC     
       JMP    LF396   
LF3C1: LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$08    
       SEC            
       SBC    #$08    
       CLC            
       ADC    $BF     
       LSR            
       LSR            
       EOR    #$20    
       SEC            
       SBC    #$20    
       CLC            
       RTS            

LF3D6: LDA    $89,X   
       TAY            
       AND    #$0F    
       STA    $BE     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $BE     
       CMP    #$0F    
       BCC    LF3ED   
       SBC    #$0F    
       INY            
LF3ED: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       INY            
       STY    $BE     
       EOR    $BE     
       STA    $81,X   
       RTS            

LF3FB: .byte $A2,$07,$B5,$AA,$29,$0F,$38,$E9,$08,$F0,$3F,$85,$80,$18,$75,$92
       .byte $C9,$06,$90,$0A,$C9,$E0,$B0,$06,$C9,$AC,$B0,$1F,$90,$23,$24,$BC
       .byte $30,$19,$B5,$9A,$C9,$0E,$D0,$03,$4C,$EE,$F6,$C9,$0D,$F0,$1F,$C9
       .byte $0B,$F0,$08,$29,$01,$18,$69,$01,$20,$F6,$FA,$20,$A7,$F6,$4C,$45
       .byte $F4,$95,$92,$B5,$A2,$38,$E5,$80,$95,$A2,$CA,$10,$B5,$60,$A5,$CD
       .byte $38,$E9,$08,$85,$CD,$4C,$36,$F4
LF453: LDA    T1024T  
       BPL    LF459   
       NOP            
LF459: STA    WSYNC   
       LDA    T1024T  
       BPL    LF459   
       RTS            

LF461: .byte $A5,$BC,$29,$30,$F0,$03,$4C,$EC,$FB,$A5,$C2,$4A,$4A,$B0,$27,$4A
       .byte $B0,$24,$D0,$0B,$A5,$CE,$0A,$0A,$0A,$0A,$0A,$85,$C8,$A9,$00,$18
       .byte $65,$C8,$AA,$BD,$10,$F5,$D0,$03,$4C,$92,$FC,$85,$BF,$A2,$04,$B5
       .byte $92,$F0,$04,$CA,$10,$F9,$60,$20,$DC,$FF,$10,$04,$A4,$CE,$F0,$36
       .byte $29,$7F,$85,$BE,$20,$DC,$FF,$29,$0F,$65,$BE,$95,$89,$20,$D6,$F3
       .byte $29,$F1,$49,$0A,$95,$9A,$A5,$BE,$29,$01,$F0,$02,$A9,$16,$18,$69
       .byte $6E,$95,$A2,$A9,$AC,$95,$92,$A5,$BF,$95,$AA,$A4,$CE,$D9,$B0,$F5
       .byte $B0,$05,$C9,$06,$90,$1B,$60,$20,$DC,$FF,$39,$B5,$F5,$D0,$11,$A9
       .byte $CD,$95,$A2,$A9,$0E,$95,$9A,$E6,$CD,$24,$BC,$30,$03,$20,$19,$F9
       .byte $60,$24,$BC,$30,$FB,$20,$DC,$FF,$39,$BA,$F5,$D0,$F3,$A9,$41,$95
       .byte $A2,$A9,$0D,$95,$9A,$A5,$CD,$18,$69,$08,$85,$CD,$4C,$24,$F9,$07
       .byte $00,$06,$00,$05,$00,$07,$00,$06,$00,$07,$00,$06,$00,$00,$07,$00
       .byte $05,$07,$00,$00,$07,$00,$00,$06,$00,$00,$06,$00,$00,$00,$00,$07
       .byte $00,$00,$05,$06,$00,$07,$06,$00,$07,$00,$05,$07,$00,$06,$00,$00
       .byte $00,$05,$00,$07,$05,$00,$00,$00,$00,$04,$00,$06,$00,$00,$00,$07
       .byte $00,$06,$00,$00,$04,$00,$05,$06,$00,$07,$00,$06,$00,$00,$00,$05
       .byte $00,$06,$04,$07,$00,$05,$00,$00,$06,$00,$00,$00,$00,$00,$04,$07
       .byte $05,$00,$06,$00,$00,$04,$05,$06,$00,$00,$00,$05,$00,$06,$07,$00
       .byte $04,$00,$05,$06,$04,$00,$00,$04,$05,$00,$06,$00,$03,$00,$00,$07
       .byte $00,$04,$05,$06,$00,$00,$05,$00,$00,$04,$05,$06,$00,$04,$00,$05
       .byte $00,$05,$04,$00,$03,$04,$05,$00,$03,$06,$04,$00,$00,$03,$05,$07
       .byte $07,$06,$05,$05,$1F,$07,$07,$0F,$07,$3F,$0F,$07,$07,$07,$A5,$BC
       .byte $29,$CF,$85,$BC,$A5,$BE,$AA,$20,$A7,$F6,$20,$37,$F9,$A9,$10,$4C
       .byte $8B,$FA,$A5,$BE,$AA,$4C,$A7,$F6,$86,$BE,$98,$AA,$20,$A7,$F6,$A6
       .byte $BE,$B5,$9A,$C9,$0F,$F0,$EB,$C9,$0C,$F0,$D3,$C9,$0D,$F0,$7F,$C9
       .byte $0E,$F0,$6B,$29,$01,$D0,$16,$A2,$04,$B5,$92,$F0,$1B,$CA,$10,$F9
       .byte $A6,$BE,$20,$A7,$F6,$20,$37,$F9,$A9,$01,$4C,$8B,$FA,$20,$A7,$F6
       .byte $20,$37,$F9,$A9,$02,$4C,$8B,$FA,$A4,$BE,$B9,$81,$00,$95,$81,$B9
       .byte $89,$00,$95,$89,$B9,$92,$00,$18,$69,$06,$95,$92,$E9,$0B,$99,$92
       .byte $00,$B9,$9A,$00,$49,$01,$99,$9A,$00,$95,$9A,$B9,$A2,$00,$18,$69
       .byte $10,$95,$A2,$18,$69,$0C,$99,$A2,$00,$B9,$AA,$00,$18,$69,$30,$99
       .byte $AA,$00,$69,$A0,$95,$AA,$20,$37,$F9,$A9,$01,$4C,$8B,$FA,$C6,$CD
       .byte $A5,$BE,$AA,$20,$A7,$F6,$20,$37,$F9,$A9,$04,$4C,$8B,$FA,$A5,$CD
       .byte $38,$E9,$08,$85,$CD,$A5,$BE,$AA,$20,$A7,$F6,$20,$37,$F9,$A9,$08
       .byte $4C,$8B,$FA
LF684: LDY    #$07    
       STY    $B2     
       LDX    #$FF    
       STX    $B4,Y   
       LDX    #$FE    
       DEY            
LF68F: LDA    $B4,X   
       STX    $F3     
       TAX            
       LDA.wy $0092,Y 
       CMP    $92,X   
       BCC    LF68F   
       STX    $B4,Y   
       LDX    $F3     
       STY    $B4,X   
       LDX    #$FE    
       DEY            
       BPL    LF68F   
       RTS            

LF6A7: LDA    #$00    
       STA    $92,X   
       LDA    #$08    
       STA    $AA,X   
       RTS            

LF6B0: .byte $A2,$05,$A9,$95,$95,$81,$A9,$4A,$95,$89,$A9,$0E,$95,$92,$A9,$3A
       .byte $95,$9A,$A9,$08,$95,$AA,$A9,$32,$95,$A2,$60,$24,$BC,$70,$FB,$AD
       .byte $80,$02,$4A,$4A,$4A,$4A,$2D,$80,$02,$49,$0F,$A8,$B9,$E3,$F6,$8D
       .byte $AF,$00,$60,$08,$08,$08,$08,$98,$98,$98,$08,$78,$78,$78,$A9,$20
       .byte $20,$F6,$FA,$A2,$05,$A9,$30,$38,$F5,$92,$85,$BE,$A0,$04,$B5,$81
       .byte $99,$81,$00,$B5,$89,$99,$89,$00,$B5,$92,$99,$92,$00,$A5,$BE,$99
       .byte $A2,$00,$A9,$0E,$99,$9A,$00,$88,$10,$E4,$A9,$C9,$85,$AA,$A9,$49
       .byte $85,$AB,$A9,$DA,$85,$AC,$A9,$3A,$85,$AD,$A9,$0B,$85,$AE,$20,$A7
       .byte $F6,$E8,$E0,$08,$D0,$F8,$A9,$5D,$85,$C0,$A9,$F7,$85,$C1,$A9,$78
       .byte $85,$C3,$20,$E2,$F8,$A9,$00,$85,$CD,$A5,$BC,$29,$CF,$85,$BC,$F8
       .byte $A5,$CC,$38,$E9,$01,$85,$CC,$D8,$20,$1F,$FA,$38,$60,$E6,$C2,$20
       .byte $FB,$F3,$20,$F7,$F8,$C6,$C3,$30,$14,$F0,$06,$20,$F1,$F9,$4C,$85
       .byte $F8,$A2,$04,$20,$A7,$F6,$CA,$10,$FA,$20,$9A,$F8,$60,$A5,$CC,$F0
       .byte $10,$A9,$00,$85,$C3,$20,$B1,$F2,$90,$06,$20,$B0,$F6,$20,$5B,$F3
       .byte $60,$A9,$64,$85,$C0,$A9,$F3,$85,$C1,$A5,$BC,$09,$80,$85,$BC,$A5
       .byte $D1,$85,$C9,$A5,$D2,$85,$CA,$A5,$D3,$85,$CB,$4C,$F1,$F9,$A6,$B2
       .byte $AD,$8E,$00,$85,$BF,$E0,$FF,$F0,$3A,$B5,$92,$F0,$36,$E0,$05,$B0
       .byte $2C,$A9,$18,$85,$BE,$A0,$0D,$B5,$9A,$29,$01,$F0,$06,$A0,$09,$A9
       .byte $14,$85,$BE,$B5,$92,$C5,$BE,$B0,$14,$B5,$89,$38,$E5,$BF,$B0,$04
       .byte $49,$FF,$69,$01,$85,$BE,$C4,$BE,$90,$03,$4C,$EE,$F6,$B5,$B4,$AA
       .byte $4C,$B5,$F7,$18,$60,$B9,$92,$00,$F0,$3E,$85,$BF,$84,$BE,$A6,$B2
       .byte $E4,$BE,$F0,$34,$B5,$92,$F0,$30,$E0,$05,$B0,$26,$38,$E5,$BF,$C9
       .byte $0B,$B0,$1F,$B9,$89,$00,$38,$F5,$89,$B0,$04,$49,$FF,$69,$01,$85
       .byte $BE,$B5,$9A,$29,$01,$49,$01,$0A,$0A,$69,$04,$C5,$BE,$90,$03,$4C
       .byte $D9,$F5,$B5,$B4,$AA,$4C,$00,$F8,$60,$2C,$82,$02,$70,$16,$24,$BC
       .byte $70,$08,$A5,$0C,$25,$0D,$10,$0C,$30,$05,$2C,$80,$02,$50,$05,$A9
       .byte $00,$85,$C7,$60,$C6,$C7,$10,$0F,$A9,$05,$85,$C7,$A2,$07,$B5,$92
       .byte $F0,$06,$CA,$E0,$05,$D0,$F7,$60,$AD,$86,$00,$95,$81,$AD,$8E,$00
       .byte $95,$89,$A9,$13,$95,$92,$A9,$0F,$95,$AA,$A9,$08,$95,$9A,$A9,$46
       .byte $95,$A2,$4C,$04,$F9,$A9,$30,$85,$F1,$A9,$00,$85,$F2,$A9,$30,$85
       .byte $0D,$A9,$DA,$85,$DB,$A9,$F8,$85,$DC,$60,$A6,$CE,$BD,$75,$F3,$85
       .byte $F1,$A9,$C6,$85,$F2,$A9,$C2,$85,$DB,$A9,$F8,$85,$DC,$A9,$CA,$85
       .byte $DD,$A9,$F8,$85,$DE,$A9,$D2,$85,$DF,$A9,$F8,$85,$E0,$A9,$00,$85
       .byte $0D,$60,$00,$30,$C0,$00,$00,$00,$00,$00,$00,$1C,$22,$C1,$00,$00
       .byte $00,$00,$00,$00,$0E,$31,$40,$40,$80,$00,$00,$30,$F0,$30,$30,$30
       .byte $30,$30,$A9,$00,$85,$16,$A9,$08,$85,$15,$A9,$14,$85,$17,$A9,$3C
       .byte $85,$C4,$A9,$0F,$85,$19,$60,$A5,$C4,$F0,$08,$C6,$C4,$A5,$C4,$4A
       .byte $4A,$85,$19,$60,$A5,$CD,$D0,$63,$A5,$C6,$29,$06,$D0,$06,$A5,$C4
       .byte $C9,$08,$B0,$57,$A9,$00,$4C,$26,$F9,$A5,$CD,$29,$38,$D0,$4C,$A9
       .byte $01,$4C,$26,$F9,$A9,$02,$AA,$0A,$85,$BE,$A5,$C6,$29,$01,$05,$BE
       .byte $85,$C6,$A0,$00,$4C,$53,$F9,$A5,$BC,$29,$20,$D0,$2E,$A9,$03,$4C
       .byte $44,$F9,$A9,$04,$AA,$29,$01,$85,$BE,$A5,$C6,$29,$06,$05,$BE,$85
       .byte $C6,$A0,$01,$BD,$7B,$F9,$99,$C4,$00,$BD,$6C,$F9,$99,$15,$00,$BD
       .byte $71,$F9,$99,$17,$00,$BD,$76,$F9,$99,$19,$00,$60,$08,$04,$04,$02
       .byte $04,$10,$10,$04,$06,$0C,$05,$0A,$08,$0F,$0B,$10,$FF,$FF,$20,$FF
       .byte $A5,$C4,$F0,$44,$C6,$C4,$F0,$3A,$A5,$C6,$4A,$4A,$D0,$1B,$B0,$08
       .byte $A5,$C4,$4A,$85,$19,$4C,$C8,$F9,$A5,$CD,$29,$07,$F0,$24,$A5,$C4
       .byte $29,$0F,$49,$1F,$85,$17,$4C,$C8,$F9,$A5,$CD,$29,$38,$F0,$09,$A5
       .byte $C4,$29,$08,$85,$19,$4C,$C8,$F9,$A5,$CD,$F0,$06,$20,$19,$F9,$4C
       .byte $C8,$F9,$A9,$00,$85,$19,$85,$C4,$A5,$C5,$F0,$0C,$C6,$C5,$A5,$C6
       .byte $4A,$90,$0D,$A5,$C5,$4A,$85,$1A,$60,$A9,$00,$85,$1A,$85,$C5,$60
       .byte $A5,$BC,$29,$20,$F0,$F3,$A5,$C5,$4A,$29,$07,$18,$69,$04,$85,$1A
       .byte $60,$A9,$00,$85,$BE,$A2,$E1,$A5,$C9,$20,$45,$FA,$20,$5D,$FA,$A5
       .byte $CA,$20,$3A,$FA,$20,$6E,$FA,$A5,$CA,$20,$45,$FA,$20,$53,$FA,$A5
       .byte $CB,$20,$3A,$FA,$20,$78,$FA,$A5,$CB,$20,$45,$FA,$4C,$5D,$FA,$A9
       .byte $00,$85,$BE,$A2,$EB,$A5,$CC,$20,$3A,$FA,$20,$82,$FA,$20,$56,$FA
       .byte $A5,$CC,$29,$0F,$20,$67,$FA,$4C,$7B,$FA,$29,$F0,$D0,$12,$24,$BE
       .byte $30,$0D,$A9,$A0,$60,$29,$0F,$D0,$07,$24,$BE,$30,$02,$A9,$0A,$60
       .byte $C6,$BE,$60,$20,$67,$FA,$69,$00,$95,$00,$E8,$E8,$60,$20,$67,$FA
       .byte $69,$A5,$95,$00,$E8,$E8,$60,$85,$BF,$0A,$0A,$65,$BF,$60,$20,$82
       .byte $FA,$69,$37,$95,$00,$E8,$E8,$60,$20,$82,$FA,$69,$6E,$95,$00,$E8
       .byte $E8,$60,$4A,$4A,$85,$BF,$4A,$4A,$65,$BF,$60,$F8,$85,$BE,$A5,$C9
       .byte $C9,$99,$F0,$3C,$A4,$CE,$A9,$00,$65,$BE,$88,$10,$FB,$65,$CB,$85
       .byte $CB,$A5,$CA,$69,$00,$85,$CA,$A5,$C9,$69,$00,$85,$C9,$20,$2A,$FB
       .byte $A5,$CA,$F0,$16,$C5,$D2,$F0,$18,$90,$16,$A5,$CC,$18,$69,$01,$B0
       .byte $0F,$85,$CC,$D8,$20,$1F,$FA,$4C,$D0,$FA,$A5,$D2,$C9,$99,$F0,$EA
       .byte $A5,$C9,$C5,$D1,$90,$1E,$D0,$10,$A5,$CA,$C5,$D2,$90,$16,$D0,$08
       .byte $A5,$CB,$C5,$D3,$90,$0E,$F0,$0C,$A5,$C9,$85,$D1,$A5,$CA,$85,$D2
       .byte $A5,$CB,$85,$D3,$D8,$60,$F8,$4A,$B0,$5F,$85,$BE,$A4,$CE,$A9,$00
       .byte $18,$65,$BE,$88,$10,$FB,$85,$BE,$A5,$CB,$38,$E5,$BE,$85,$CB,$A5
       .byte $CA,$E9,$00,$85,$CA,$A5,$C9,$E9,$00,$85,$C9,$B0,$0C,$A9,$00,$85
       .byte $C9,$85,$CA,$85,$CB,$A9,$A5,$85,$EF,$D8,$2C,$82,$02,$10,$05,$A9
       .byte $04,$85,$CE,$60,$A9,$04,$85,$CE,$A5,$C9,$C9,$01,$B0,$1A,$A5,$CA
       .byte $C9,$50,$B0,$14,$C6,$CE,$C9,$20,$B0,$0E,$C6,$CE,$C9,$05,$B0,$08
       .byte $C6,$CE,$C9,$01,$B0,$02,$C6,$CE,$60,$A9,$01,$85,$BE,$A5,$CE,$4A
       .byte $A8,$B0,$9B,$A9,$A5,$C5,$EF,$F0,$07,$85,$EF,$88,$10,$90,$D8,$60
       .byte $A9,$BE,$85,$EF,$D0,$88
LFB76: LDA    #$82    
       STA    VBLANK  
       LDX    #$00    
LFB7C: BIT    COLUPF  
       BPL    LFB85   
       DEX            
       BNE    LFB7C   
       BEQ    LFB97   
LFB85: LDA    #$02    
       STA    VBLANK  
       LDX    #$20    
LFB8B: LDY    #$00    
LFB8D: INY            
       BNE    LFB8D   
       DEX            
       BNE    LFB8B   
       BIT    COLUPF  
       BPL    LFB9D   
LFB97: LDA    $BC     
       ORA    #$40    
       STA    $BC     
LFB9D: RTS            

LFB9E: BIT    $BC     
       BVC    LFB9D   
       LDA    #$AD    
       STA    $CF     
       LDA    $C2     
       LSR            
       LDA    #$02    
       BCS    LFBB6   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       RTS            

LFBB6: STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VBLANK  
       RTS            

LFBBF: BIT    $BC     
       BVC    LFB9D   
       LDA    #$82    
       STA    VBLANK  
       LDA    $C2     
       AND    #$01    
       ASL            
       ADC    $CF     
       LDX    $D0     
       STA    $D0     
       CPX    $D0     
       BCC    LFBD7   
       TXA            
LFBD7: CMP    #$02    
       BCC    LFBE3   
       CMP    #$90    
       BCC    LFBE5   
       LDA    #$90    
       BNE    LFBE5   
LFBE3: LDA    #$00    
LFBE5: LDX    #$05    
       STA    $89,X   
       JMP    LF3D6   
LFBEC: .byte $29,$20,$F0,$5E,$A5,$BC,$29,$10,$D0,$0B,$20,$AA,$FC,$D0,$52,$A5
       .byte $BC,$09,$10,$85,$BC,$A5,$C2,$29,$0E,$D0,$46,$A5,$C2,$4A,$4A,$4A
       .byte $4A,$29,$03,$AA,$E8,$B5,$92,$D0,$38,$A9,$86,$95,$92,$A5,$81,$95
       .byte $81,$A5,$89,$95,$89,$A9,$74,$95,$A2,$A9,$0F,$95,$9A,$A5,$89,$4A
       .byte $85,$BE,$A5,$8E,$4A,$38,$E5,$BE,$B0,$09,$C9,$E4,$B0,$0B,$A9,$E4
       .byte $4C,$45,$FC,$C9,$1C,$90,$02,$A9,$1C,$0A,$0A,$29,$F0,$09,$04,$95
       .byte $AA,$60,$20,$AA,$FC,$C9,$0A,$B0,$F8,$A5,$92,$D0,$F4,$20,$DC,$FF
       .byte $29,$08,$D0,$0F,$A9,$92,$85,$89,$A9,$CA,$85,$81,$A9,$B8,$85,$AA
       .byte $4C,$7B,$FC,$A9,$01,$85,$89,$A9,$61,$85,$81,$A9,$48,$85,$AA,$A9
       .byte $96,$85,$92,$A9,$0C,$85,$9A,$A9,$A5,$85,$A2,$A5,$BC,$29,$EF,$09
       .byte $20,$85,$BC,$4C,$42,$F9,$24,$BC,$30,$B7,$A5,$CE,$C9,$03,$90,$B1
       .byte $20,$DC,$FF,$29,$3F,$D0,$AA,$A5,$BC,$09,$10,$85,$BC,$60,$A9,$00
       .byte $85,$BE,$A2,$04,$B5,$9A,$C9,$0C,$F0,$08,$B5,$92,$C5,$BE,$90,$02
       .byte $85,$BE,$CA,$10,$EF,$A5,$BE,$60,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$24,$1C,$3E,$6C,$EE,$7B,$FE,$3F,$6E,$6E,$3C,$3A,$28,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10
       .byte $08,$38,$2C,$18,$00,$00,$00,$7F,$55,$7F,$3E,$1C,$36,$36,$1C,$1C
       .byte $2A,$2A,$08,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18
       .byte $18,$3C,$3C,$24,$24,$24,$24,$24,$3C,$3C,$18,$18,$18,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$28
       .byte $28,$18,$18,$3C,$34,$14,$14,$16,$1E,$0C,$0C,$0A,$0A,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3C,$3C,$3C,$3C,$66,$66,$66,$3C,$3C,$3C,$3C,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14
       .byte $14,$18,$18,$3C,$2C,$28,$28,$68,$78,$30,$30,$50,$50,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$10,$10,$38,$38,$7C,$7C,$38,$38,$10
       .byte $10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$38,$10,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$24,$1C,$3E,$6C,$EE,$7B,$FE,$3F,$6E,$6E,$3C,$3A,$28,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10
       .byte $08,$38,$2C,$18,$00,$00,$00,$7F,$55,$7F,$3E,$1C,$36,$36,$1C,$1C
       .byte $2A,$2A,$08,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18
       .byte $18,$3C,$3C,$24,$24,$24,$24,$24,$3C,$3C,$18,$18,$18,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$28
       .byte $28,$18,$18,$3C,$34,$14,$14,$16,$1E,$0C,$0C,$0A,$0A,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3C,$3C,$3C,$3C,$66,$66,$66,$3C,$3C,$3C,$3C,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$14
       .byte $14,$18,$18,$3C,$2C,$28,$28,$68,$78,$30,$30,$50,$50,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$10,$10,$38,$38,$7C,$7C,$38,$38,$10
       .byte $10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$38,$10,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$07,$05,$05,$05,$07,$01,$01,$01,$01,$01,$07,$04
       .byte $07,$01,$07,$07,$01,$03,$01,$07,$01,$01,$07,$05,$05,$07,$01,$07
       .byte $04,$07,$07,$05,$07,$04,$07,$01,$01,$01,$01,$07,$07,$05,$07,$05
       .byte $07,$01,$01,$07,$05,$07,$00,$00,$00,$00,$00,$70,$50,$50,$50,$70
       .byte $10,$10,$10,$10,$10,$70,$40,$70,$10,$70,$70,$10,$30,$10,$70,$10
       .byte $10,$70,$50,$50,$70,$10,$70,$40,$70,$70,$50,$70,$40,$70,$10,$10
       .byte $10,$10,$70,$70,$50,$70,$50,$70,$10,$10,$70,$50,$70,$00,$00,$00
       .byte $00,$00,$0E,$0A,$0A,$0A,$0E,$08,$08,$08,$08,$08,$0E,$02,$0E,$08
       .byte $0E,$0E,$08,$0C,$08,$0E,$08,$08,$0E,$0A,$0A,$0E,$08,$0E,$02,$0E
       .byte $0E,$0A,$0E,$02,$0E,$08,$08,$08,$08,$0E,$0E,$0A,$0E,$0A,$0E,$08
       .byte $08,$0E,$0A,$0E,$00,$00,$00,$00,$00,$E0,$A0,$A0,$A0,$E0,$80,$80
       .byte $80,$80,$80,$E0,$20,$E0,$80,$E0,$E0,$80,$C0,$80,$E0,$80,$80,$E0
       .byte $A0,$A0,$E0,$80,$E0,$20,$E0,$E0,$A0,$E0,$20,$E0,$80,$80,$80,$80
       .byte $E0,$E0,$A0,$E0,$A0,$E0,$80,$80,$E0,$A0,$E0,$00,$00,$00,$00,$00
       .byte $A5,$BD,$0A,$0A,$0A,$0A,$18,$65,$BD,$0A,$0A,$0A,$18,$65,$BD,$18
       .byte $69,$95,$85,$BD,$45,$C2,$60,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$44,$F2
       .byte $44,$F2,$44,$F2
