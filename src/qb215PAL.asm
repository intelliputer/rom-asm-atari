; Disassembly of roms/qb215PAL.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/qb215PAL.bin
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
HMOVE   =  $2A
HMCLR   =  $2B
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
T1024T  =  $0297

       ORG $F000
LF000: .byte $08,$04
LF002: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$80,$C0,$E0
LF016: .byte $F0,$78,$3C,$1E,$0F,$07,$03,$01
LF01E: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LF02E: .byte $00,$00,$00,$00
LF032: .byte $00,$00,$00,$00,$00,$01,$03,$07,$0F,$1E,$3C,$78,$F0,$E0
LF040: CPY    #$80    
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $3C ;.NOP
       LSR    $8686   
       STX    $86     
       JMP    $0C38   
LF05B: .byte $0C,$0C,$0C,$0C,$2C,$1C,$0C,$FE,$C2,$70,$1C,$06,$06,$8C,$78,$7C
       .byte $86,$06,$06,$1C,$08,$04,$7E,$0C,$0C,$FE,$8C,$4C,$2C,$1C,$0C,$7C
       .byte $86,$06,$06,$0C,$78,$60,$7E,$7C,$C6,$C6,$C6,$FC,$60,$30,$0C,$30
       .byte $30,$30,$30,$18,$0C,$86,$7E,$7C,$C6,$C6,$C6,$78,$4C,$4C,$38,$38
       .byte $0C,$06,$7E,$C6,$C6,$44,$38,$EE,$EE,$EE,$00,$EE,$EE,$EE,$00,$76
       .byte $3C,$E2,$D8,$FE,$6A,$7C,$38
LF0B2: .byte $01,$04,$10,$40
LF0B6: .byte $02,$08,$20,$80
LF0BA: .byte $03,$0C,$30,$C0
LF0BE: .byte $A2,$A2,$A2,$A2,$F7,$F7,$F7,$F7,$F7,$F5,$A0,$A0,$9E,$9E,$9C,$9C
       .byte $9A,$9A,$F5
LF0D1: .byte $07
LF0D2: .byte $F2,$E3,$F0,$EF,$F0,$F7,$F0,$FF,$F0,$03,$F2,$FD,$F1,$07,$F2,$01
       .byte $F2,$1E,$F0,$4A,$F2,$15,$F1,$2E,$F1,$2E,$F1,$22,$F1,$B2,$F1,$CB
       .byte $F1,$80,$F1,$99,$F1,$62,$F2,$6E,$F2,$7A,$F2,$56,$F2,$E4,$F1,$E4
       .byte $F1
LF103: .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$00,$2F,$00,$00,$00,$3C,$7E,$7E,$7E,$7E,$7E,$3C,$00,$00
       .byte $2F,$3C,$7E,$7E,$FB,$66,$89,$FF,$FF,$7E,$3C,$00,$2F,$3C,$7E,$7E
       .byte $FF,$7E,$9F,$FF,$FF,$7E,$3C,$00,$2F,$00,$00,$42,$24,$18,$E7,$18
       .byte $24,$42,$00,$00,$10,$20,$30,$00,$0C,$3C,$7E,$7F,$FF,$DE,$E1,$3E
       .byte $6C,$44,$76,$00,$0C,$3C,$7E,$75,$FF,$DE,$E1,$3E,$6C,$44,$76,$00
       .byte $0C,$00,$3C,$7E,$75,$FF,$D8,$E1,$3E,$73
LF16D: .byte $00
LF16E: .byte $00
LF16F: .byte $00,$80,$FF,$F0,$00,$0C,$3C,$7E,$75,$FF,$F0,$EF,$3E,$6C,$44,$76
       .byte $00,$0C,$67,$00,$00,$00,$7E,$FF,$FF,$FF,$7E,$3C,$00,$00,$37,$E6
       .byte $6E,$10,$7E,$F7,$FF,$FF,$7E,$3C,$00,$00,$0C,$66,$00,$00,$00,$00
       .byte $56,$FF,$FF,$FF,$7E,$3C,$00,$37,$00,$20,$10,$7E,$A9,$04,$12,$28
       .byte $00,$00,$00,$0C,$66,$00,$06,$1E,$3E,$3E,$3E,$3E,$1E,$06,$00,$00
       .byte $37,$06,$18,$24,$48,$64,$40,$50,$24,$18,$06,$00,$0C,$67,$00,$00
       .byte $00,$3C,$7E,$7E,$7E,$7E,$7E,$3C,$00,$37,$57,$B9,$1A,$3C,$5E,$76
       .byte $5A,$6E,$56,$3C,$00,$0C,$C8,$3C,$7E,$C9,$EB,$FF,$7E,$3E,$FF,$3E
       .byte $49,$00,$C9,$3C,$7E,$FF,$C9,$EB,$7E,$1C,$C3,$2A,$49,$00,$19,$F2
       .byte $19,$F2,$3A,$F1,$32,$F2,$32,$F2,$56,$F1,$62,$F1,$73,$F1,$4A,$F1
       .byte $05,$04,$03,$02,$01,$FF,$FE,$FD,$FC,$FB,$0C,$29,$20,$B0,$58,$FC
       .byte $7E,$AA,$7F,$F3,$ED,$7E,$00,$68,$90,$58,$BC,$3C,$FE,$6A,$BF,$F3
       .byte $ED,$7E,$00,$0C,$28,$3C,$3C,$0E,$72,$FF,$FD,$FF,$7F,$64,$32,$00
       .byte $27,$7C,$7C,$3E,$7E,$FF,$FD,$7F,$7E,$64,$3A,$00,$2F,$00,$00,$00
       .byte $00,$00,$18,$3C,$3C,$3C,$18,$00,$7C,$1E,$35,$6F,$71,$3E,$24,$36
       .byte $00,$00,$00,$00,$7C,$4A,$D5,$55,$4A,$40,$40,$00,$00,$00,$00,$00
       .byte $7C,$8A,$55,$D5,$2A,$20,$C0,$00,$00,$00,$00,$00,$7C,$CA,$95,$D5
       .byte $2A,$20,$C0,$00
LF283: .byte $00,$00,$00,$00,$01,$01,$01,$01,$01,$02,$02,$02,$02,$02,$03,$03
       .byte $03,$03,$03
LF296: .byte $00,$01,$02,$03,$04,$00,$01,$02,$03,$04,$00,$01,$02,$03,$04,$00
       .byte $01,$02,$03,$04,$20,$34,$F8,$24,$E2,$70,$6C,$A9,$24,$85,$E3,$20
       .byte $9E,$F9,$20,$21,$F8,$A9,$38,$4C,$99,$FA
LF2C0: LDA    $E2     
       ASL            
       BCS    LF2C9   
       LDA    #$01    
       CMP    $91     
LF2C9: LDA    #$08    
       TAY            
       BCC    LF2D0   
       AND    $90     
LF2D0: ASL            
       BEQ    LF2D5   
       LDA    #$1F    
LF2D5: STA    $F5     
       STA    $F6     
       RTS            

LF2DA: STA    WSYNC   
       LDA    $90     
       LSR            
       BCS    LF2E4   
       JSR    LFCDD   
LF2E4: LDX    #$00    
       JSR    LFAAD   
       LDA    $E2     
       BMI    LF2F2   
       LDX    #$01    
       JSR    LFAAD   
LF2F2: LDA    #$02    
       JSR    LFF3F   
       BCC    LF308   
       JSR    LF8F2   
       LDA    $E1     
       AND    #$0F    
       BNE    LF304   
       LDA    #$01    
LF304: ORA    #$60    
       STA    $E1     
LF308: LDA    #$01    
       JSR    LFF3F   
       BCC    LF312   
       JSR    LF8EE   
LF312: LDA    INTIM   
       BNE    LF312   
       STA    WSYNC   
       STA    WSYNC   
       BEQ    LF338   

START:
LF31D: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       STX    SWACNT  
       LDA    $8F     
       STA    $E1     
       JSR    LF8FA   
       LDA    $E2     
       ORA    #$40    
       STA    $E2     
       LDA    LFFFA   
       STA    $E4     
LF338: LDA    #$42    
       STA    VBLANK  
       STA    WSYNC   
       STA    VSYNC   
       LDY    #$50    
       STY    TIM64T  
       LDY    #$03    
LF347: STA    WSYNC   
       DEY            
       BNE    LF347   
       STY    VSYNC   
       LDA    $E3     
       STA    COLUBK  
       LDA    $E1     
       ASL            
       ASL            
       ASL            
       ASL            
       BNE    LF35C   
       LDA    #$A0    
LF35C: ORA    #$04    
       BIT    $E2     
       BVC    LF364   
       EOR    $E3     
LF364: STA    COLUPF  
       JSR    LF2C0   
       DEC    $90     
       LDA    $90     
       LSR            
       BCC    LF373   
       JMP    LF415   
LF373: LDA    $E2     
       BMI    LF3CC   
       LDA    $90     
       BNE    LF3CC   
       DEC    $91     
       BPL    LF3CC   
       INC    $91     
       BNE    LF38C   
       BIT    $E2     
       BVS    LF31D   
       ASL    $98     
       SEC            
       ROR    $98     
LF38C: LDA    #$20    
       SBC    $E1     
       AND    #$1F    
       LSR            
       LSR            
       STA    $91     
       JSR    LF898   
       STA    $E8     
       LDX    #$03    
LF39D: LDA    $A4,X   
       AND    #$55    
       STA    $A4,X   
       DEX            
       BPL    LF39D   
LF3A6: JSR    LF646   
       AND    #$03    
       TAX            
LF3AC: LDA    $A4,X   
       AND    LF0B6,Y 
       BEQ    LF3BF   
       LDA    LFF3B,X 
       TAX            
       BNE    LF3AC   
       LDA    LFF3B,Y 
       TAY            
       BPL    LF3AC   
LF3BF: LDA    $A4,X   
       ORA    LF0B6,Y 
       STA    $A4,X   
       DEC    $E8     
       BNE    LF3A6   
       BEQ    LF413   
LF3CC: JSR    LF2C0   
       AND    #$10    
LF3D1: STA.wy $0099,Y 
       DEY            
       BNE    LF3D1   
LF3D7: LDA    #$00    
LF3D9: TAX            
       LDA.wy $00A4,Y 
       AND    LF0BA,X 
       CMP    LF0BA,X 
       BEQ    LF3F0   
       CMP    LF0B6,X 
       BNE    LF408   
       LDA    $90     
       AND    #$08    
       BEQ    LF408   
LF3F0: TYA            
       ASL            
       TAY            
       LDA    LF65B,X 
       ORA.wy $009A,Y 
       STA.wy $009A,Y 
       LDA    LF65D,X 
       ORA.wy $009B,Y 
       STA.wy $009B,Y 
       TYA            
       LSR            
       TAY            
LF408: LDA    LFF3B,X 
       BNE    LF3D9   
       LDA    LFF3B,Y 
       TAY            
       BNE    LF3D7   
LF413: BEQ    LF45F   
LF415: LDA    $E2     
       BPL    LF41F   
       LDA    $90     
       AND    #$08    
       BEQ    LF45F   
LF41F: LDX    #$05    
LF421: LDY    $82,X   
       BMI    LF45C   
       CPY    #$10    
       BCC    LF433   
       LDA    LF002,Y 
       STA    $A2     
       LDA    LF01E,Y 
       STA    $A3     
LF433: STX    $ED     
       LDA    $88,X   
       EOR    #$0F    
       AND    #$0F    
       TAX            
       LDA    #$03    
       STA    $EC     
LF440: LDA    LF016,Y 
       ORA    $A8,X   
       STA    $A8,X   
       LDA    LF032,Y 
       ORA    $BB,X   
       STA    $BB,X   
       LDA    LF02E,Y 
       ORA    $CE,X   
       STA    $CE,X   
       INX            
       DEC    $EC     
       BPL    LF440   
       LDX    $ED     
LF45C: DEX            
       BPL    LF421   
LF45F: JSR    LF733   
LF462: LDA    INTIM   
       BNE    LF462   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$13    
       STA    T1024T  
       LDX    #$01    
LF472: LDA    $92,X   
       LSR            
       STA    REFP0,X 
       LDA    $98,X   
       AND    #$78    
       LSR            
       LSR            
       TAY            
       LDA    LF0D1,Y 
       STA    $EF     
       LDA    LF0D2,Y 
       STA    $F0     
       LDA    $92,X   
       AND    #$0E    
       TAY            
       LDA    ($EF),Y 
       PHA            
       INY            
       LDA    ($EF),Y 
       STA    $F0     
       PLA            
       STA    $EF     
       CPX    #$00    
       BNE    LF4A0   
       PHA            
       LDA    $F0     
       PHA            
LF4A0: LDA    $90     
       LSR            
       LDY    #$00    
       LDA    ($EF),Y 
       BCC    LF4AA   
       TAY            
LF4AA: INY            
       LDA    ($EF),Y 
       STA    COLUP0,X
       STY    $F1     
       TXA            
       ASL            
       TAY            
       LDA    $F1     
       ADC    $EF     
       ADC    #$0C    
       STA.wy $00E9,Y 
       LDA    $F0     
       ADC    #$00    
       STA.wy $00EA,Y 
       LDA    $98,X   
       AND    #$07    
       TAY            
       LDA.wy $0088,Y 
       AND    #$0F    
       STA    $F1     
       ASL            
       ADC    $F1     
       SBC    $96,X   
       ADC    #$19    
       STA    $E7,X   
       TXA            
       ASL            
       TAY            
       SEC            
       LDA.wy $00E9,Y 
       SBC    $E7,X   
       STA.wy $00E9,Y 
       LDA.wy $00EA,Y 
       SBC    #$00    
       STA.wy $00EA,Y 
       DEX            
       BPL    LF472   
       PLA            
       STA    $F2     
       PLA            
       STA    $F1     
       SEC            
       LDA    $E9     
       SBC    $F1     
       STA    $F1     
       LDA    $EA     
       SBC    $F2     
       STA    $F2     
       LDA    #$62    
       ADC    $F1     
       STA    $ED     
       LDA    #$FF    
       ADC    $F2     
       STA    $EE     
       STA    WSYNC   
       STA    HMCLR   
       LDX    #$02    
LF515: LDA    $93,X   
       TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F2     
       TYA            
       AND    #$0F    
       CLC            
       ADC    $F2     
       LDY    $F2     
       CMP    #$0F    
       BCC    LF52D   
       SBC    #$0F    
       INY            
LF52D: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    ENABL,X 
       STA    WSYNC   
       JSR    LFA81   
       BIT    VSYNC   
LF53C: DEY            
       BPL    LF53C   
       STA    PF2,X   
       DEX            
       BNE    LF515   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STX    VDELP0  
       STX    CTRLPF  
       STX    NUSIZ0  
       STX    NUSIZ1  
       INY            
       STY    $F3     
       STY    $F4     
       JSR    LF683   
       JSR    LF683   
       JSR    LF683   
       STA    $F7     
       JSR    LF681   
       LDX    #$12    
       JMP    LFEBD   
LF56A: .byte $A6,$EB,$A4,$EC,$38,$60,$86,$EB,$84,$EC,$B5,$82,$C9,$10,$B0,$F0
       .byte $AA,$B9,$87,$FD,$7D,$83,$F2,$C9,$04,$B0,$E5,$85,$ED,$A6,$EB,$B5
       .byte $88,$29,$0F,$AA,$B9,$86,$FD,$7D,$83,$F2,$C9,$04,$B0,$D2,$A8,$A6
       .byte $ED,$B9,$A4,$00,$3D,$B2,$F0,$D0,$C7,$20,$DE,$F5,$3D,$B6,$F0,$F0
       .byte $0F,$A5,$98,$45,$EB,$29,$07,$D0,$07,$A0,$00,$A9,$10,$20,$CE,$F9
       .byte $A0,$01,$20,$36,$F8,$A6,$EB,$20,$61,$F6,$BD,$B2,$F0,$49,$FF,$39
       .byte $A4,$00,$99,$A4,$00,$A4,$EC,$A6,$EB,$B5,$88,$29,$0F,$19,$46,$F1
       .byte $95,$88,$18,$60
LF5DE: LDA.wy $00A4,Y 
       ORA    LF0B2,X 
       STA.wy $00A4,Y 
       RTS            

LF5E8: .byte $84,$EC,$B5,$82,$30,$56,$B5,$88,$10,$52,$29,$0F,$18,$79,$8B,$FD
       .byte $C9,$10,$B0,$48,$85,$EE,$B5,$82,$79,$8C,$FD,$C9,$10,$B0,$3D,$85
       .byte $ED,$A2,$05,$B5,$82,$C5,$ED,$D0,$0A,$B5,$88,$10,$06,$29,$0F,$C5
       .byte $EE,$F0,$04,$CA,$10,$ED,$60,$86,$ED,$A6,$E7,$30,$1F,$B5,$98,$29
       .byte $F8,$05,$ED,$95,$98,$A9,$6A,$95,$80,$A4,$EC,$B9,$05,$FA,$95,$96
       .byte $B5,$92,$29,$1F,$4A,$19,$46,$F1,$2A,$95,$92,$60,$38,$60
LF646: LDA    $8E     
       EOR    $90     
       LSR            
       LSR            
       SBC    $8E     
       LSR            
       ROR    $8F     
       ROR    $8E     
       ROR    $8E     
       AND    #$03    
       TAY            
       LDA    $8E     
       RTS            

LF65B: .byte $0C,$03
LF65D: .byte $00,$00,$03,$0C
LF661: LDA    $88,X   
       AND    #$0F    
       TAY            
       LDA    LF283,Y 
       TAY            
       LDA    $82,X   
       CMP    #$10    
       BCC    LF672   
       LDA    #$0F    
LF672: TAX            
       LDA    LF283,X 
       TAX            
       LDA.wy $00A4,Y 
       AND    LF0BA,X 
       CMP    LF0BA,X 
       RTS            

LF681: LDX    #$03    
LF683: JSR    LF68C   
LF686: JSR    LF68C   
       JSR    LF68C   
LF68C: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       JSR    LFA81   
       PHA            
       PLA            
       BIT    VSYNC   
       SEC            
       TYA            
       SBC    $E7     
       ADC    #$0B    
       BCS    LF6AA   
       NOP            
       NOP            
       SEC            
       BCS    LF6AE   
LF6AA: LDA    ($E9),Y 
       STA    GRP0    
LF6AE: LDA    ($ED),Y 
       STA    COLUP0  
       LDA    LF16D,X 
       STA    PF0     
       LDA    LF16E,X 
       STA    PF1     
       STA    PF2     
       TYA            
       SBC    $E8     
       ADC    #$0B    
       BCS    LF6CA   
       NOP            
       NOP            
       SEC            
       BCS    LF6CE   
LF6CA: LDA    ($EB),Y 
       STA    GRP1    
LF6CE: BIT    VSYNC   
       LDA    ($ED),Y 
       INY            
       STA    COLUP0  
       LDA    LF16F,X 
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       RTS            

LF6E1: STX    $ED     
       STY    $EE     
       LDA    $E2     
       AND    #$07    
       TAX            
       DEX            
       STX    $EC     
       BMI    LF730   
       LDX    #$05    
LF6F1: LDA    $82,X   
       BMI    LF6F9   
       CMP    #$18    
       BCS    LF700   
LF6F9: DEX            
       BPL    LF6F1   
       LDA    #$78    
       STA    $A3     
LF700: LDA    $ED     
       CMP    #$10    
       BCC    LF708   
       LDA    #$0F    
LF708: LSR            
       LSR            
       TAX            
       TYA            
       LSR            
       LSR            
       TAY            
       LDA.wy $00A4,Y 
       AND    LF0B2,X 
       BNE    LF730   
       LDX    $EC     
       LDA    $ED     
       STA    $82,X   
       LDA    $EE     
       ORA    #$80    
       STA    $88,X   
       LDY    #$01    
       JSR    LF836   
       JSR    LF661   
       JSR    LF5DE   
       DEC    $E2     
LF730: LDX    $EC     
       RTS            

LF733: LDX    #$1F    
       LDY    #$0F    
       JSR    LF6E1   
       BMI    LF740   
       LDA    #$3F    
       STA    $88,X   
LF740: RTS            

LF741: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$01,$FF,$FF,$FF,$03,$FF,$02,$00,$FF
LF751: .byte $63
LF752: .byte $F7,$81,$F7,$89,$F7,$8F,$F7,$95,$F7,$9D,$F7,$A5,$F7,$71,$F7,$AD
       .byte $F7,$CB,$FA,$08,$FA,$00,$00,$CD,$F7,$00,$00,$A5,$F8,$A9,$F2,$CB
       .byte $FA,$69,$F8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$86,$F8,$CB
       .byte $FA,$B8,$FB,$00,$00,$E4,$FB,$35,$FC,$D5,$FA,$87,$FA,$48,$FC,$9F
       .byte $FC,$00,$00,$CB,$FA,$E3,$FA,$87,$FA,$CD,$F7,$CB,$FA,$E3,$FA,$87
       .byte $FA,$CD,$F7,$CB,$FA,$60,$FB,$87,$FA,$CD,$F7,$CB,$FA,$81,$FA,$00
       .byte $00
LF7B3: LDA    $98,X   
       AND    #$78    
       LSR            
       LSR            
       TAY            
       LDA    LF751,Y 
       STA    $EB     
       LDA    LF752,Y 
       STA    $EC     
       RTS            

LF7C5: LSR            
       LSR            
       LSR            
       LSR            
       AND    #$0E    
       TAY            
       INY            
       RTS            

LF7CE: .byte $A0,$02,$20,$36,$F8,$20,$A5,$F9,$A6,$E7,$A5,$90,$29,$03,$F0,$3A
       .byte $A9,$00,$20,$56,$F8,$90,$34,$A9,$02,$20,$3E,$FC,$98,$29,$03,$85
       .byte $F0,$B5,$96,$F9,$0F,$F2,$95,$96,$B5,$92,$0A,$2A,$2A,$2A,$29,$03
       .byte $A8,$B9,$87,$FD,$0A,$18,$75,$94,$95,$94,$A5,$F0,$F0,$0C,$38,$B5
       .byte $96,$F9,$86,$FD,$38,$F9,$86,$FD,$95,$96,$60,$A9,$20,$20,$C4,$FC
       .byte $20,$34,$F8
LF821: LDA    $98,X   
       AND    #$07    
       TAY            
       LDA.wy $0082,Y 
       ASL            
       ASL            
       ADC    #$15    
       STA    $94,X   
       LDA    #$00    
       STA    $96,X   
       RTS            

LF834: LDY    #$00    
LF836: LDA    LF846,Y 
       STA    AUDV0   
       LDA    LF84C,Y 
       STA    AUDC0   
       LDA    LF849,Y 
       STA    AUDF0   
       RTS            

LF846: .byte $00,$81,$32
LF849: .byte $00,$1F,$0A
LF84C: .byte $00,$08,$03,$A5,$E1,$29,$1F,$4A,$49,$07,$25,$90,$D0,$09,$18,$B5
       .byte $80,$29,$1F,$F0,$03,$D6,$80,$38,$B5,$80,$29,$1F,$A8,$60,$06,$98
       .byte $46,$98,$A9,$04,$20,$3E,$FC,$A9,$3F,$20,$56,$F8,$90,$61,$A5,$90
       .byte $29,$07,$D0,$06,$A5,$92,$49,$10,$85,$92,$60,$46,$92,$A5,$90,$0A
       .byte $26,$92,$A9,$3F,$20,$56,$F8,$B0,$F1,$4C,$1D,$F3
LF898: LDA    $E1     
       AND    #$1E    
       LSR            
       ADC    #$03    
       CMP    #$06    
       BCC    LF8A5   
       LDA    #$06    
LF8A5: RTS            

LF8A6: .byte $06,$E2,$38,$66,$E2,$A9,$32,$85,$E3,$A5,$90,$29,$08,$4A,$4A,$85
       .byte $E8,$A5,$92,$29,$F1,$05,$E8,$85,$92,$A9,$0F,$20,$56,$F8,$A5,$98
       .byte $30,$10,$A5,$91,$F0,$0C,$C6,$91,$A0,$15,$A9,$00,$20,$CE,$F9,$A6
       .byte $E7,$38,$90,$20,$60,$20,$85,$F9,$B0,$24,$A9,$62,$85,$E3,$06,$E2
       .byte $38,$66,$E2,$A9,$FF,$4C,$C4,$FC
LF8EE: LDA    #$60    
       STA    $E1     
LF8F2: LDA    #$00    
       STA    $E4     
       STA    $E5     
       STA    $E6     
LF8FA: INC    $E1     
       LDA    $E1     
       AND    #$1F    
       BNE    LF904   
       DEC    $E1     
LF904: LDA    $E2     
       AND    #$18    
       STA    $E8     
       JSR    LF898   
       ORA    $E8     
       STA    $E2     
       LDY    #$FF    
       STY    $91     
       INY            
       STY    $E3     
       LDX    #$04    
LF91A: STY    $A3,X   
       DEX            
       BNE    LF91A   
       INY            
       STY    $90     
       TXA            
       JSR    LFA99   
       LDX    $E7     
       INX            
       JSR    LFA97   
       LDX    #$05    
       LDA    #$80    
LF930: STA    $82,X   
       DEX            
       BPL    LF930   
       JSR    LF733   
       STX    $E7     
       LDX    #$01    
LF93C: LDA    $98,X   
       AND    #$78    
       ORA    $E7     
       STA    $98,X   
       JSR    LF821   
       DEX            
       BPL    LF93C   
       LDA    $E2     
       AND    #$07    
       LSR            
       STA    $EF     
LF951: JSR    LF646   
       LDX    LF967,Y 
       JSR    LF646   
       LDA    LF967,Y 
       TAY            
       JSR    LF6E1   
       DEC    $EF     
       BNE    LF951   
       BEQ    LF99E   
LF967: BRK            
       ORA    CTRLPF  
       .byte $0F ;.SLO
       JSR    $6040   
       .byte $80 ;.NOP
       LDY    #$C0    
       CPX    #$E0    
       BRK            
       BRK            
       JSR    $6040   
       .byte $80 ;.NOP
       LDY    #$C0    
LF97B: LDA    $E1     
       ASL            
       ROL            
       ROL            
       ROL            
       AND    #$07    
       TAY            
       RTS            

LF985: .byte $20,$7B,$F9,$09,$08,$A8,$10,$03,$20,$7B,$F9,$A5,$E1,$29,$1F,$19
       .byte $6B,$F9,$85,$E1,$B9,$6B,$F9,$C9,$01
LF99E: LDA    $92     
       ORA    #$01    
       STA    $92     
       RTS            

LF9A5: .byte $A5,$E2,$0A,$05,$3C,$30,$F8,$E0,$00,$D0,$F4,$A5,$E4,$05,$E5,$05
       .byte $E6,$F0,$EC,$E8,$A5,$99,$45,$98,$29,$07,$D0,$05,$A9,$4A,$20,$C4
       .byte $FC,$CA,$A9,$50,$A0,$99,$A2,$99,$2C,$A2,$00,$C0,$99,$F0,$07,$48
       .byte $A5,$98,$0A,$68,$B0,$29,$F8,$18,$65,$E4,$85,$E4,$98,$65,$E5,$85
       .byte $E5,$8A,$65,$E6,$85,$E6,$C9,$99,$90,$0E,$A9,$99,$E0,$50,$90,$02
       .byte $A9,$00,$85,$E4,$85,$E5,$85,$E6,$D8,$A5,$92,$29,$FE,$85,$92,$60
       .byte $F4,$00,$0C,$00,$A0,$00,$A5,$90,$29,$3F,$C9,$07,$B0,$0C,$A5,$8F
       .byte $30,$08,$A0,$06,$A5,$98,$10,$02,$A0,$04,$98,$20,$3E,$FC,$A9,$01
       .byte $20,$56,$F8,$B0,$DA,$20,$A5,$F9,$A6,$E7,$AD,$80,$02,$4A,$4A,$4A
       .byte $4A,$A8,$B9,$41,$F7,$A8,$24,$E2,$50,$17,$A5,$90,$D0,$06,$A5,$8E
       .byte $29,$F7,$85,$E3,$C0,$04,$B0,$03,$4C,$EE,$F8,$20,$46,$F6,$29,$1F
       .byte $A8,$20,$BF,$FA,$B5,$88,$10,$0C,$C0,$04,$B0,$08,$20,$70,$F5,$90
       .byte $03,$20,$E8,$F5,$A6,$E7,$B5,$92,$29,$20,$F0,$10,$B5,$92,$29,$40
       .byte $4A,$4A,$85,$E8,$B5,$92,$29,$EF,$05,$E8,$95,$92
LFA81: RTS            

LFA82: .byte $20,$4F,$F8,$B0,$10,$60,$A9,$01,$20,$56,$F8,$90,$08,$B5,$96,$69
       .byte $04,$95,$96,$10,$EA
LFA97: LDA    #$08    
LFA99: STA    $E8     
       LDA    $98,X   
       AND    #$87    
       ORA    $E8     
       STA    $98,X   
       LDA    #$00    
       STA    $80,X   
       LDA    $92,X   
       AND    #$EF    
       STA    $92,X   
LFAAD: STX    $E7     
       JSR    LF7B3   
       LDA    $80,X   
       JSR    LF7C5   
       LDA    ($EB),Y 
       PHA            
       DEY            
       LDA    ($EB),Y 
       PHA            
       RTS            

LFABF: .byte $B5,$98,$29,$07,$AA,$60,$B5,$98,$45,$98,$29,$07,$60,$A9,$00,$20
       .byte $3E,$FC,$A9,$22,$4C,$C4,$FC,$20,$4F,$F8,$90,$70,$20,$AF,$FC,$B0
       .byte $71,$A9,$18,$10,$B5,$20,$52,$FB,$20,$45,$FB,$B0,$58,$20,$4F,$F8
       .byte $B0,$53,$A9,$23,$95,$80,$B5,$98,$29,$78,$85,$E8,$20,$BF,$FA,$B5
       .byte $88,$10,$42,$20,$61,$F6,$A6,$E7,$A5,$E8,$49,$28,$F0,$03,$B0,$1C
       .byte $38,$90,$19,$A6,$E7,$20,$BF,$FA,$20,$46,$F6,$20,$E8,$F5,$B0,$05
       .byte $A6,$E7,$4C,$69,$FA,$20,$46,$F6,$C9,$F8,$90,$19,$A6,$E7,$20,$C5
       .byte $FA,$F0,$12,$20,$BF,$FA,$20,$46,$F6,$20,$70,$F5,$B0,$07,$20,$69
       .byte $FA,$A9,$34,$95,$80,$60,$A5,$8E,$C9,$FE,$90,$06,$A9,$40,$20,$99
       .byte $FA,$38,$60,$20,$AF,$FC,$B0,$09,$A2,$00,$A9,$C0,$20,$C4,$FC,$A6
       .byte $E7,$60,$20,$52,$FB,$20,$45,$FB,$B0,$4F,$20,$4F,$F8,$90,$4A,$A9
       .byte $22,$95,$80,$20,$BF,$FA,$B5,$88,$10,$3F,$A5,$8F,$30,$1B,$A6,$E7
       .byte $B5,$94,$C5,$94,$F0,$13,$A0,$01,$90,$02,$A0,$03,$A6,$E7,$20,$BF
       .byte $FA,$20,$70,$F5,$90,$23,$4C,$E8,$F5,$A6,$E7,$20,$BF,$FA,$B5,$88
       .byte $29,$0F,$85,$E8,$A2,$00,$20,$BF,$FA,$B5,$88,$29,$0F,$C5,$E8,$F0
       .byte $08,$A0,$02,$B0,$D7,$A0,$00,$F0,$D3,$60,$20,$46,$F6,$29,$07,$C9
       .byte $06,$B0,$22,$A8,$45,$98,$29,$07,$F0,$1B,$B9,$82,$00,$30,$16,$84
       .byte $F1,$B5,$98,$29,$F8,$05,$F1,$95,$98,$20,$21,$F8,$A9,$65,$95,$80
       .byte $A9,$00,$20,$3E,$FC,$60,$20,$AF,$FC,$B0,$0C,$A0,$00,$A9,$50,$20
       .byte $CE,$F9,$A6,$E7,$4C,$97,$FA,$A9,$00,$20,$56,$F8,$B0,$E7,$A9,$65
       .byte $95,$80,$B5,$92,$69,$02,$29,$0E,$C9,$0C,$20,$3E,$FC,$90,$D6,$20
       .byte $46,$F6,$29,$0F,$F0,$12,$A5,$E1,$29,$1F,$0A,$0A,$0A,$F9,$32,$FC
       .byte $90,$04,$C5,$8E,$B0,$02,$A0,$04,$B9,$2D,$FC,$4C,$99,$FA,$20,$20
       .byte $28,$30,$10,$11,$11,$22,$32,$A9,$3F,$95,$80,$A5,$8E,$29,$06,$85
       .byte $E8,$B5,$92,$29,$F1,$05,$E8,$95,$92,$60,$A5,$98,$30,$50,$A9,$2F
       .byte $95,$80,$A5,$E2,$4A,$4A,$55,$92,$29,$0E,$D0,$33,$B5,$92,$29,$0E
       .byte $A8,$C8,$A9,$00,$20,$CE,$F9,$A6,$E7,$B5,$92,$29,$0E,$C9,$06,$D0
       .byte $03,$20,$8D,$F9,$A5,$E2,$29,$18,$4A,$4A,$20,$3E,$FC,$A5,$E2,$29
       .byte $E7,$85,$E8,$A5,$E2,$18,$69,$08,$29,$18,$05,$E8,$85,$E2,$60,$A0
       .byte $00,$A9,$50,$20,$CE,$F9,$A6,$E7,$A5,$E2,$29,$E7,$85,$E2,$4C,$97
       .byte $FA,$A5,$90,$4A,$90,$02,$F6,$96,$A9,$01,$20,$56,$F8,$90,$EF,$60
       .byte $A5,$98,$45,$99,$29,$07,$D0,$04,$A5,$80,$29,$1F,$C9,$01
LFCBD: RTS            

LFCBE: LDX    $EA     
       BNE    LFCBD   
       LDA    #$AA    
       STA    $E8     
       EOR    $80,X   
       AND    #$E0    
       BEQ    LFCDC   
       JSR    LF7B3   
       LDA    $E8     
       JSR    LF7C5   
       LDA    ($EB),Y 
       BEQ    LFCDC   
       LDA    $E8     
       STA    $80,X   
LFCDC: RTS            

LFCDD: LDA    $90     
       CMP    #$01    
       BNE    LFCE7   
       LDA    $91     
       BNE    LFCF8   
LFCE7: LDY    #$12    
       LDA    #$00    
       LDX    #$80    
LFCED: STA.wy $00A8,Y 
       STA.wy $00BB,Y 
       STX    $CE,Y   
       DEY            
       BPL    LFCED   
LFCF8: LDA    $E2     
       AND    #$07    
       STA    $EA     
       LDX    #$06    
LFD00: DEX            
       BMI    LFCBE   
       LDA    $82,X   
       BMI    LFD00   
       LDA    $88,X   
       BMI    LFD74   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$03    
       TAY            
       CLC            
       LDA    $82,X   
       ADC    LFD87,Y 
       AND    #$1F    
       STA    $82,X   
       LDA    $88,X   
       AND    #$F0    
       STA    $E8     
       CLC            
       LDA    $88,X   
       ADC    LFD86,Y 
       AND    #$0F    
       ORA    $E8     
       STA    $88,X   
       ASL    $E8     
       LDA    LFD87,Y 
       ASL            
       ASL            
       STA    $E7     
       LDY    #$01    
LFD39: TXA            
       EOR.wy $0098,Y 
       AND    #$07    
       BNE    LFD54   
       CLC            
       LDA    $E7     
       ADC.wy $0094,Y 
       STA.wy $0094,Y 
       LDA.wy $0092,Y 
       AND    #$1F    
       ORA    $E8     
       STA.wy $0092,Y 
LFD54: DEY            
       BPL    LFD39   
       LDY    $82,X   
       CPY    #$10    
       BCS    LFD74   
       LDA    LF296,Y 
       BNE    LFD74   
       LDA    $88,X   
       AND    #$0F    
       TAY            
       LDA    LF296,Y 
       BNE    LFD74   
       ASL    $88,X   
       SEC            
       ROR    $88,X   
       JSR    LF834   
LFD74: STX    $ED     
       LDA    $88,X   
       BPL    LFD7F   
       JSR    LF661   
       BCS    LFD81   
LFD7F: INC    $EA     
LFD81: LDX    $ED     
       JMP    LFD00   
LFD86: .byte $FF
LFD87: .byte $00,$01,$00,$FF,$FB,$00,$05,$00,$FB
LFD90: BIT    VSYNC   
       LDA    $CE,X   
       AND    #$7F    
       STA    PF0     
       LDA    $F8     
       STA    PF1     
       LDA    $F9     
       NOP            
       BIT    VSYNC   
       STA    PF2     
       TYA            
       SBC    $E7     
       ADC    #$0B    
       BCS    LFDAF   
       NOP            
       NOP            
       SEC            
       BCS    LFDB3   
LFDAF: LDA    ($E9),Y 
       STA    GRP0    
LFDB3: LDA    #$80    
       STA    PF0     
       LDA    $A8,X   
       STA    PF1     
       LDA    $BB,X   
       STA    PF2     
       NOP            
       NOP            
       NOP            
       LDA    $CE,X   
       STA    PF0     
       LDA    $F8     
       AND    $F7     
       STA    PF1     
       LDA    $F9     
       AND    $F7     
       STA    PF2     
       TYA            
       SBC    $E8     
       ADC    #$0B    
       BCS    LFDDE   
       NOP            
       NOP            
       SEC            
       BCS    LFDE2   
LFDDE: LDA    ($EB),Y 
       STA    GRP1    
LFDE2: LDA    ($ED),Y 
       STA    COLUP0  
       LDA    #$00    
       STA    PF0     
       LDA    $A8,X   
       STA    PF1     
       LDA    $BB,X   
       STA    PF2     
       INY            
       PHA            
       PLA            
       NOP            
       NOP            
       LDA    $CE,X   
       AND    #$7F    
       STA    PF0     
       LDA    $F8     
       STA    PF1     
       LDA    $F9     
       STA    PF2     
       TYA            
       SBC    $E7     
       ADC    #$0B    
       BCS    LFE11   
       NOP            
       NOP            
       SEC            
       BCS    LFE15   
LFE11: LDA    ($E9),Y 
       STA    GRP0    
LFE15: LDA    #$80    
       STA    PF0     
       LDA    $A8,X   
       STA    PF1     
       LDA    $BB,X   
       STA    PF2     
       TYA            
       SBC    $E8     
       ADC    #$0B    
       NOP            
       LDA    $CE,X   
       STA    PF0     
       LDA    $F8     
       AND    $F7     
       STA    PF1     
       LDA    $F9     
       AND    $F7     
       STA    PF2     
       BCS    LFE3E   
       NOP            
       NOP            
       SEC            
       BCS    LFE42   
LFE3E: LDA    ($EB),Y 
       STA    GRP1    
LFE42: INY            
       DEX            
       BPL    LFEBD   
       LDX    #$03    
       JSR    LF68C   
       JSR    LF686   
       STA    PF0     
       LDA    $92     
       AND    #$01    
       BEQ    LFE8A   
       STA    WSYNC   
       LDY    #$0B    
       STY    $E7     
       INY            
       STY    $EF     
       JSR    LF97B   
       INY            
       STY    $F1     
       LDA    $E1     
       AND    #$1F    
       LDX    #$00    
       STX    $E9     
       STX    $EB     
       STX    $ED     
       CMP    #$0A    
       BCC    LFE77   
       LDX    #$02    
LFE77: SEC            
LFE78: SBC    #$0A    
       INC    $E9     
       BCS    LFE78   
       ADC    #$0B    
       STA    $E9,X   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2C    
       BNE    LFEB3   
LFE8A: LDX    #$03    
LFE8C: LDY    $EFFF,X 
       LDA    $E3,X   
       AND    #$0F    
       STA.wy $00E9,Y 
       LDA    $E3,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA.wy $00E7,Y 
       DEX            
       BNE    LFE8C   
       TXA            
LFEA3: ORA    $E7,X   
       BEQ    LFEA9   
       INC    $E7,X   
LFEA9: INX            
       INX            
       CPX    #$0A    
       BCC    LFEA3   
       INC    $F1     
       LDA    #$68    
LFEB3: JSR    LFF6E   
       LDA    #$42    
       STA    VBLANK  
       JMP    LF2DA   
LFEBD: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDA    $A8,X   
       STA    PF1     
       LDA    $BB,X   
       STA    PF2     
       STX    $F1     
       LDA    $CE,X   
       AND    #$7F    
       STA    PF0     
       LDA    LF0BE,X 
       TAX            
       LDA    VSYNC,X 
       STA    $F8     
       STA    PF1     
       LDA    VBLANK,X
       STA    $F9     
       STA    PF2     
       TYA            
       SEC            
       SBC    $E7     
       ADC    #$0B    
       BCS    LFEF0   
       NOP            
       NOP            
       SEC            
       BCS    LFEF4   
LFEF0: LDA    ($E9),Y 
       STA    GRP0    
LFEF4: LDA    #$80    
       STA    PF0     
       LDX    $F1     
       LDA    $A8,X   
       STA    PF1     
       LDA    $BB,X   
       STA    PF2     
       LDA    LF103,X 
       STA    $F7     
       LDA    $CE,X   
       STA    PF0     
       LDA    $F8     
       AND    $F7     
       STA    PF1     
       LDA    $F9     
       AND    $F7     
       STA    PF2     
       TYA            
       SBC    $E8     
       ADC    #$0B    
       BCS    LFF23   
       NOP            
       NOP            
       SEC            
       BCS    LFF27   
LFF23: LDA    ($EB),Y 
       STA    GRP1    
LFF27: LDA    ($ED),Y 
       STA    COLUP0  
       LDA    #$00    
       STA    PF0     
       LDA    $A8,X   
       STA    PF1     
       LDA    $BB,X   
       STA    PF2     
       INY            
       JMP    LFD90   
LFF3B: .byte $01,$02,$03,$00
LFF3F: STA    $E8     
       AND    SWCHB   
       CMP    #$01    
       ROR            
       EOR    #$80    
       AND    $99     
       ASL            
       ROL    $99     
       LDA    SWCHB   
       EOR    #$03    
       AND    #$03    
       BEQ    LFF5E   
       AND    $E8     
       BEQ    LFF5F   
       CLC            
       BCC    LFF5F   
LFF5E: SEC            
LFF5F: ROR    $99     
       RTS            

LFF62: .byte $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$DB,$62,$62,$0A
LFF6E: TSX            
       STX    $F3     
       EOR    $E3     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$0C    
LFF79: LDA    $E5,X   
       ASL            
       ASL            
       ASL            
       ADC    #$4A    
       STA    $E5,X   
       LDA    #$F0    
       STA    $E6,X   
       DEX            
       DEX            
       BNE    LFF79   
       STX    REFP0   
       STX    REFP1   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       LDY    #$06    
LFF98: DEY            
       BNE    LFF98   
       NOP            
       NOP            
       STA    RESP0   
       STA    WSYNC   
       LDY    #$07    
LFFA3: DEY            
       BNE    LFFA3   
       STA.w  $0011   
       STA    HMCLR   
       LDA    #$A0    
       STA    HMP1    
       LDA    #$C0    
LFFB1: STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDX    #$0B    
LFFBB: DEX            
       BNE    LFFBB   
       LDY    #$0E    
       STY.w  $00F5   
LFFC3: LDA    $F5     
       LSR            
       TAY            
       LDA    ($E7),Y 
       STA    GRP0    
       BIT    VSYNC   
       LDA    ($E9),Y 
       STA    GRP1    
       .byte $B3 ;.LAX
       SBC    ($9A),Y 
       LDA    ($EB),Y 
       STA    $F4     
       .byte $B3 ;.LAX
       SBC    $EFB1   
       LDY    $F4     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       TSX            
       STX    GRP1    
       DEC    $F5     
       BPL    LFFC3   
       LDX    $F3     
       TXS            
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFFF5: .byte $FF,$FF,$FF,$FF,$FF
LFFFA: .byte $00,$00,$1D,$F3,$1D
LFFFF: .byte $F3
