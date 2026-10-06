; Disassembly of roms/Stellar Track.bin
; Disassembled Tue Oct  6 15:24:46 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Stellar Track.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
PF0     =  $0D
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
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
       STA    WSYNC   
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$31    
       STA    PF0     
       STA    CTRLPF  
       NOP            
       STA    VDELP0  
       STA    VDELP1  
       STA    RESP0   
       LDA    #$D0    
       STA    RESP1   
       STA    HMP0    
       LDA    #$C0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    $81     
       LDA    INTIM   
       STA    $80     
       JMP    LF312   
LF03B: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       JSR    LFA20   
       JSR    LF81F   
       INX            
       STX    WSYNC   
       STX    VSYNC   
       STX    $A4     
       STX    $DB     
       INC    $87     
       BNE    LF058   
       INC    $89     
LF058: LDA    SWCHA   
       TAY            
       EOR    $C4     
       AND    $C4     
       STY    $C4     
       BMI    LF06B   
       ASL            
       BPL    LF06F   
       DEC    $88     
       BPL    LF06D   
LF06B: INC    $88     
LF06D: STX    $89     
LF06F: BIT    $C1     
       BMI    LF089   
       BVC    LF0AD   
       LDY    $87     
       BNE    LF0AD   
       LDA    $C1     
       AND    #$BF    
       STA    $C1     
       STY    AUDV0   
       LDA    $C0     
       AND    #$7F    
       STA    $C0     
       BPL    LF0AD   
LF089: LDA    $C0     
       ORA    #$80    
       STA    $C0     
       LDA    $C1     
       AND    #$3F    
       TAX            
       LDA    LFF35,X 
       STA    AUDC0   
       LDA    LFF36,X 
       STA    AUDF0   
       LDA    LFF37,X 
       STA    $87     
       LDA    #$0F    
       STA    AUDV0   
       TXA            
       CLC            
       ADC    #$43    
       STA    $C1     
LF0AD: LDA    $C5     
       CMP    #$08    
       BCC    LF0BB   
       CMP    #$0A    
       BCS    LF0D5   
       LDA    $C6     
       BEQ    LF0D5   
LF0BB: LDA    $CF     
       ORA    $D1     
       ORA    $D3     
       BNE    LF0D1   
       LDA    $A9     
       CMP    $A5     
       BEQ    LF0CD   
       CMP    $A7     
       BNE    LF0D5   
LF0CD: LDX    #$04    
       BPL    LF0D7   
LF0D1: LDX    #$02    
       BPL    LF0D7   
LF0D5: LDX    #$00    
LF0D7: LDA    LFBFD,X 
       LDY    LFBFE,X 
       LDX    $89     
       BPL    LF0ED   
       EOR    $89     
       AND    #$F7    
       PHA            
       TYA            
       EOR    $89     
       AND    #$F7    
       TAY            
       PLA            
LF0ED: STY    COLUP1  
       STY    COLUP0  
       LDX    $C6     
       CPX    #$08    
       BNE    LF0FF   
       LDX    $C1     
       CPX    #$43    
       BNE    LF0FF   
       EOR    $80     
LF0FF: STA    COLUBK  
       LDY    $C5     
       CPY    #$08    
       BCC    LF109   
       LDY    #$08    
LF109: LDA    LFF19,Y 
       STA    $C8     
       LDA    LFF1A,Y 
       STA    $C9     
       LDY    #$E4    
       JSR    LFFE3   
       STA    WSYNC   
       STA    VBLANK  
       STA    $C7     
LF11E: JSR    LF1FE   
       LDY    $C5     
       BEQ    LF157   
       CPY    #$06    
       BCC    LF1A4   
       CPX    #$07    
       BEQ    LF137   
       BCC    LF13F   
       CPY    #$0A    
       BCC    LF11E   
       LDY    $86     
       BPL    LF147   
LF137: CPY    #$0C    
       BNE    LF11E   
       LDY    #$0E    
       BNE    LF147   
LF13F: CPX    #$03    
       BNE    LF11E   
       CPY    #$0A    
       BCC    LF11E   
LF147: LDA    LFF19,Y 
       STA    $C8     
       LDA    LFF1A,Y 
       STA    $C9     
       LDA    #$00    
       STA    $C7     
       BEQ    LF11E   
LF157: LDA    #$FC    
       JSR    LF821   
       LDX    #$07    
       LDA    #$FB    
       JSR    LF823   
LF163: LDX    $A4     
       LDA    LFC6C,X 
       STA    $92     
       TXA            
       ASL            
       CLC            
       SBC    #$01    
       CLV            
       JSR    LF836   
       LDA    $A4     
       ASL            
       SEC            
       SBC    #$01    
       BIT    LFB39   
       JSR    LF836   
       LDA    $B6     
       BEQ    LF190   
       AND    #$0F    
       CMP    $A4     
       BNE    LF190   
       LDA    $B6     
       LDY    #$11    
       JSR    LFF5C   
LF190: LDA    $AA     
       AND    #$0F    
       CMP    $A4     
       BNE    LF19F   
       LDA    $AA     
       LDY    #$0A    
       JSR    LFF5C   
LF19F: JSR    LF22C   
       BNE    LF163   
LF1A4: JSR    LF1F2   
       LDX    #$15    
       LDA    #$FC    
LF1AB: STA    $8C,X   
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LF1AB   
       LDA    #$00    
       STA    $83     
LF1B7: LDX    #$FC    
LF1B9: TXA            
       SEC            
       ADC    #$03    
       TAX            
       LDY    $83     
       LSR            
       LSR            
       LSR            
       LDA.wy $00DC,Y 
       BCC    LF1CB   
       INY            
       BNE    LF1CF   
LF1CB: LSR            
       LSR            
       LSR            
       LSR            
LF1CF: STY    $83     
       AND    #$0F    
       TAY            
       LDA    LFC7D,Y 
       STA    $8C,X   
       CPX    #$14    
       BNE    LF1B9   
       JSR    LF22C   
       CPX    #$08    
       BNE    LF1B7   
       JSR    LF81F   
       JMP    LF1F2   
LF1EA: .byte $99,$09,$10,$11,$01,$91,$90,$89
LF1F2: LDA    #$FD    
       STA    $C8     
       LDA    #$FD    
       STA    $C9     
       LDA    #$00    
       STA    $C7     
LF1FE: LDX    #$00    
       LDY    $C7     
LF202: LDA    ($C8),Y 
       BEQ    LF212   
       CMP    #$FF    
       BNE    LF221   
       LDA    #$01    
       CPX    #$16    
       BNE    LF222   
       BEQ    LF221   
LF212: STY    $82     
       LDY    $DB     
       LDA.wy $00DC,Y 
       TAY            
       LDA    LFC6C,Y 
       INC    $DB     
       LDY    $82     
LF221: INY            
LF222: STA    $8C,X   
       INX            
       INX            
       CPX    #$18    
       BNE    LF202   
       STY    $C7     
LF22C: STA    WSYNC   
       JSR    LFFF8   
       JSR    LFFFB   
       LDA    $82     
       STA    HMCLR   
       LDX    #$90    
       LDY    #$07    
       LDA    $87     
       AND    #$01    
       BEQ    LF285   
       JMP    LF25D   
LF245: STA    GRP1    
       LDA    ($94),Y 
       STA    GRP0    
       LDA    ($98),Y 
       STX    HMP0    
       STX    HMP1    
       STA    GRP1    
       LDA    ($9C),Y 
       STA    GRP0    
       LDA    ($A0),Y 
       STA    GRP1    
       STA    GRP0    
LF25D: DEY            
       BMI    LF29B   
       LDA    ($8E),Y 
       LSR            
       STA    GRP0    
       LDA    ($92),Y 
       LSR            
       STA.w  $001C   
       STA    HMOVE   
       LDA    ($96),Y 
       LSR            
       STA    GRP0    
       LDA    ($9E),Y 
       LSR            
       STA    $82     
       LDA    ($9A),Y 
       LSR            
       STA    GRP1    
       LDA    $82     
       STA    GRP0    
       LDA    ($A2),Y 
       LSR            
       STA    GRP1    
LF285: STA    GRP0    
       LDA    #$70    
       STA    HMP0    
       STA    HMP1    
       DEY            
       BMI    LF2A6   
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($90),Y 
       STA    HMOVE   
       JMP    LF245   
LF29B: STX    HMP0    
       STX    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF2AC   
LF2A6: STA    WSYNC   
       STA    $82     
       STA    $82     
LF2AC: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       INC    $A4     
       LDX    $A4     
       CPX    #$09    
       BEQ    LF2BD   
       RTS            

LF2BD: LDX    #$FF    
       TXS            
       JSR    LF81F   
       LDA    #$13    
       STA    $DB     
       LDX    $C6     
LF2C9: LDA    LFEDB,X 
       STA    $C8     
       LDA    LFEDC,X 
       STA    $C9     
       LDA    #$00    
       STA    $C7     
LF2D7: JSR    LF1FE   
LF2DA: CPX    #$0D    
       BEQ    LF2FD   
       LDY    $C6     
       BEQ    LF2EA   
       CPX    #$0A    
       BEQ    LF2EF   
       CPY    #$0C    
       BCS    LF2D7   
LF2EA: JSR    LF1F2   
       BNE    LF2DA   
LF2EF: CPY    #$02    
       BNE    LF2D7   
       INC    $DB     
       LDA    $EF     
       ASL            
       ADC    #$12    
       TAX            
       BNE    LF2C9   
LF2FD: LDY    #$23    
       JSR    LFFE3   
       LDY    SWCHB   
       TYA            
       EOR    $8B     
       AND    $8B     
       STY    $8B     
       LSR            
       BCS    LF312   
       LSR            
       BCC    LF38A   
LF312: LDA    #$01    
       STA    $88     
       LDA    #$40    
       STA    $89     
       LDA    #$00    
       LDX    #$55    
LF31E: STA    $A5,X   
       DEX            
       BPL    LF31E   
       STA    AUDV0   
       LDX    #$08    
LF327: JSR    LFA20   
       AND    $81     
       STA    $B7,X   
       SED            
LF32F: TAY            
       AND    #$03    
       CLC            
       ADC    $B0     
       STA    $B0     
       TYA            
       LSR            
       LSR            
       BNE    LF32F   
       CLD            
       DEX            
       BPL    LF327   
       LDA    $B0     
       CMP    #$09    
       BCC    LF312   
       LDX    #$00    
       JSR    LFFBC   
       JSR    LFA20   
       SED            
       LDA    $81     
       AND    #$07    
       ADC    $B0     
       STA    $B1     
       CLD            
       JSR    LFFBC   
       LDA    #$67    
       JSR    LFFF0   
LF360: LDX    #$04    
       JSR    LFA47   
       CPY    $A7     
       BEQ    LF360   
       JSR    LFFEE   
       LDX    #$05    
       JSR    LFA47   
       JSR    LF96B   
       JSR    LF990   
       LDA    #$90    
       STA    $AD     
       LDA    #$30    
       STA    $AF     
       LDA    #$08    
       STA    $C5     
       LDA    #$4E    
       LDY    #$00    
       JMP    LF7FC   
LF38A: BIT    $C0     
       BPL    LF391   
LF38E: JMP    LF804   
LF391: BVC    LF3A0   
       JSR    LFAA7   
       BCC    LF38E   
       LDA    $C0     
       AND    #$3F    
       STA    $C0     
       BPL    LF38E   
LF3A0: LDA    $C0     
       AND    #$3F    
       TAX            
       LDA    LFEFE,X 
       PHA            
       LDA    LFEFD,X 
       PHA            
       RTS            

LF3AE: .byte $A9,$02,$85,$C6,$A2,$00,$86,$F0,$86,$F1,$A9,$07,$20,$80,$FA,$A4
       .byte $EF,$88,$98,$0A,$85,$C0,$86,$C3,$10,$C6,$20,$65,$FF,$A0,$12,$D0
       .byte $17,$A2,$D5,$20,$51,$FA,$A9,$04,$4C,$D9,$F5,$A5,$AB,$29,$0F,$F0
       .byte $02,$D0,$40,$20,$65,$FF,$A0,$14,$A9,$08,$85,$C5,$98,$4C,$FE,$F7
       .byte $A9,$00,$A2,$06,$95,$8C,$CA,$10,$FB,$20,$2A,$F8,$A9,$E0,$4A,$88
       .byte $D0,$FC,$95,$8B,$95,$8C,$95,$8D,$A2,$8D,$20,$51,$FA,$A2,$05,$B5
       .byte $8D,$15,$D5,$95,$D5,$CA,$10,$F7,$A9,$02,$4C,$A3,$F5,$A5,$AC,$29
       .byte $F0,$F0,$03,$4C,$0C,$F8,$A9,$04,$85,$C6,$A6,$C3,$D0,$06,$A9,$0A
       .byte $85,$F0,$85,$F1,$E0,$03,$B0,$4F,$A9,$0A,$20,$80,$FA,$E0,$02,$F0
       .byte $02,$D0,$41,$A2,$04,$86,$C2,$20,$D4,$F9,$A5,$83,$0A,$0A,$0A,$0A
       .byte $05,$84,$85,$83,$20,$BD,$FA,$35,$B7,$F0,$C8,$C9,$04,$90,$04,$4A
       .byte $4A,$D0,$F8,$85,$84,$F8,$38,$A5,$AE,$E5,$83,$85,$AE,$A5,$AF,$E5
       .byte $82,$85,$AF,$10,$03,$4C,$E5,$F5,$20,$2C,$F9,$86,$85,$84,$86,$D8
       .byte $A9,$89,$85,$C1,$4C,$04,$F8,$A6,$C2,$30,$57,$B5,$CF,$F0,$50,$A6
       .byte $85,$A4,$86,$20,$F9,$F8,$E0,$00,$D0,$1A,$A6,$C2,$84,$82,$2C,$82
       .byte $02,$70,$08,$18,$98,$65,$82,$B0,$0B,$85,$82,$B5,$D0,$38,$E5,$82
       .byte $F0,$02,$B0,$08,$A6,$C2,$D8,$20,$8B,$F8,$D0,$1E,$95,$D0,$A5,$82
       .byte $A2,$13,$20,$BC,$FF,$A4,$C2,$B9,$CF,$00,$20,$BC,$FF,$B9,$D0,$00
       .byte $20,$BC,$FF,$D8,$A9,$80,$85,$C1,$A0,$0E,$A9,$44,$4C,$FC,$F7,$4C
       .byte $00,$F8,$4C,$F0,$F7,$A6,$C3,$D0,$28,$A5,$AD,$29,$0F,$D0,$06,$A5
       .byte $AD,$29,$F0,$D0,$03,$4C,$0C,$F8,$A9,$06,$85,$C6,$A9,$08,$20,$80
       .byte $FA,$A5,$AA,$85,$B6,$A5,$AD,$E9,$10,$85,$AD,$A9,$12,$85,$C1,$D0
       .byte $24,$20,$EE,$FF,$A5,$B6,$F8,$20,$2E,$FA,$D8,$B0,$21,$98,$20,$B1
       .byte $FF,$B0,$1B,$A2,$04,$D5,$CF,$F0,$0F,$CA,$CA,$10,$F8,$85,$B6,$A9
       .byte $80,$05,$C1,$85,$C1,$4C,$04,$F8,$20,$8B,$F8,$4C,$F6,$F7,$A9,$00
       .byte $85,$B6,$A9,$04,$85,$C2,$A9,$10,$4C,$0E,$F8,$A5,$AB,$29,$F0,$F0
       .byte $02,$D0,$A2,$A2,$11,$A9,$00,$95,$DC,$CA,$10,$FB,$A2,$04,$86,$82
       .byte $B5,$CA,$A2,$40,$20,$E4,$F9,$A6,$82,$CA,$10,$F2,$A2,$04,$86,$82
       .byte $B5,$CF,$F0,$07,$A2,$80,$20,$E4,$F9,$A6,$82,$CA,$CA,$10,$EF,$A2
       .byte $03,$86,$82,$B5,$A4,$C5,$A9,$D0,$09,$B5,$A5,$A2,$C0,$20,$E4,$F9
       .byte $A6,$82,$CA,$CA,$10,$EB,$20,$2A,$F8,$A9,$40,$4A,$88,$D0,$FC,$15
       .byte $D4,$95,$D4,$A9,$00,$20,$D2,$FF,$4C,$F6,$F7,$A2,$00,$A0,$04,$B9
       .byte $AD,$00,$20,$BC,$FF,$88,$10,$F7,$CA,$A0,$02,$84,$82,$D0,$0D,$84
       .byte $82,$B9,$AB,$00,$20,$F7,$FF,$20,$0F,$FA,$A4,$82,$B9,$AB,$00,$29
       .byte $0F,$20,$0F,$FA,$A4,$82,$88,$10,$E6,$A9,$06,$20,$D2,$FF,$A9,$4E
       .byte $84,$C6,$85,$C0,$4C,$04,$F8,$A9,$00,$85,$AE,$85,$AF,$F8,$20,$6A
       .byte $F8,$18,$A5,$B0,$65,$B3,$85,$83,$A9,$00,$65,$B4,$85,$82,$29,$F0
       .byte $D0,$0E,$A5,$B5,$C9,$04,$90,$08,$85,$84,$20,$2C,$F9,$8A,$F0,$02
       .byte $A0,$99,$98,$A6,$B0,$F0,$0B,$18,$69,$04,$90,$02,$A9,$99,$A0,$0A
       .byte $D0,$08,$C9,$01,$90,$02,$E9,$01,$A0,$0C,$C9,$0C,$90,$02,$A9,$0B
       .byte $D8,$29,$0E,$18,$69,$10,$85,$86,$84,$C5,$A9,$80,$85,$C0,$0A,$85
       .byte $C6,$85,$C1,$B0,$9F,$A6,$C2,$10,$05,$A9,$0E,$4C,$E0,$F5,$B5,$CF
       .byte $F0,$0D,$B4,$D0,$A2,$00,$20,$F9,$F8,$84,$82,$98,$D0,$04,$D8,$4C
       .byte $00,$F8,$38,$A5,$AE,$E5,$82,$85,$AE,$A5,$AF,$E9,$00,$85,$AF,$05
       .byte $AE,$F0,$02,$B0,$03,$4C,$E5,$F5,$D8,$20,$20,$FA,$A9,$E0,$2C,$82
       .byte $02,$30,$02,$09,$10,$25,$80,$D0,$25,$A5,$80,$29,$07,$C9,$04,$90
       .byte $02,$A9,$04,$4A,$AA,$A5,$81,$B0,$08,$29,$07,$85,$8C,$A9,$F0,$D0
       .byte $06,$29,$70,$85,$8C,$A9,$0F,$35,$AB,$18,$65,$8C,$95,$AB,$A2,$13
       .byte $A5,$82,$20,$BC,$FF,$A4,$C2,$B9,$CF,$00,$20,$BC,$FF,$A5,$AF,$20
       .byte $BC,$FF,$A5,$AE,$20,$BC,$FF,$A9,$80,$85,$C1,$A0,$10,$A9,$50,$4C
       .byte $FC,$F7,$A9,$0C,$85,$C6,$A6,$C3,$D0,$04,$A9,$08,$D0,$06,$E0,$03
       .byte $B0,$08,$A9,$0A,$20,$80,$FA,$4C,$04,$F8,$20,$D4,$F9,$F8,$A5,$AC
       .byte $85,$82,$A5,$84,$0A,$0A,$0A,$0A,$85,$85,$A5,$AE,$38,$E5,$85,$85
       .byte $AE,$A5,$AF,$E5,$83,$85,$AF,$10,$03,$4C,$E5,$F5,$A5,$AD,$29,$F0
       .byte $A0,$02,$D0,$11,$B9,$AB,$00,$20,$F7,$FF,$38,$E5,$83,$B0,$02,$A9
       .byte $00,$0A,$0A,$0A,$0A,$85,$85,$B9,$AB,$00,$29,$0F,$38,$E5,$83,$B0
       .byte $02,$A9,$00,$05,$85,$99,$AB,$00,$88,$10,$D9,$A5,$B1,$38,$E5,$83
       .byte $85,$B1,$F0,$02,$B0,$03,$4C,$EB,$F5,$A5,$82,$29,$0F,$F0,$0C,$A5
       .byte $83,$85,$84,$A9,$00,$85,$83,$A9,$0F,$D0,$02,$A9,$0C,$85,$C1,$A5
       .byte $A9,$85,$C3,$20,$EE,$FF,$A4,$AA,$84,$82,$A5,$83,$05,$84,$F0,$57
       .byte $98,$20,$2E,$FA,$B0,$1E,$98,$20,$B1,$FF,$B0,$0A,$A5,$84,$F0,$E8
       .byte $C6,$84,$84,$AA,$10,$E2,$A5,$83,$F0,$04,$A5,$82,$85,$AA,$A9,$86
       .byte $85,$C1,$D0,$33,$A5,$83,$F0,$F6,$A9,$67,$20,$F0,$FF,$A5,$A9,$20
       .byte $2E,$FA,$90,$08,$A5,$A9,$C5,$C3,$D0,$09,$F0,$E2,$84,$A9,$98,$C6
       .byte $83,$D0,$EC,$D8,$A9,$16,$D0,$48,$20,$6B,$F9,$A9,$18,$D0,$41,$20
       .byte $90,$F9,$A9,$1A,$D0,$3A,$F8,$A5,$AA,$20,$54,$F8,$90,$14,$20,$6A
       .byte $F8,$A2,$04,$A9,$00,$95,$AB,$CA,$10,$FB,$A9,$90,$85,$AD,$A9,$30
       .byte $85,$AF,$D8,$A5,$C1,$09,$80,$85,$C1,$A5,$C3,$C5,$A9,$F0,$03,$4C
       .byte $A9,$F5,$A0,$00,$A9,$10,$10,$02,$A9,$50,$A2,$06,$86,$C2
LF7FC: STY    $C6     
       STA    $C0     
       DEC    $C2     
       DEC    $C2     
LF804: LDY    #$30    
       JSR    LFFE3   
       JMP    LF03B   
LF80C: .byte $A9,$0E,$85,$C0,$A9,$86,$85,$C1,$30,$EE
LF816: JSR    LFA20   
       JSR    LFA34   
       BCS    LF816   
       RTS            

LF81F: LDA    #$FB    
LF821: LDX    #$17    
LF823: STA    $8C,X   
       DEX            
       DEX            
       BPL    LF823   
       RTS            

LF82A: LDA    $A9     
       AND    #$0F    
       TAX            
       LDA    $A9     
       JSR    LFFF7   
       TAY            
       RTS            

LF836: TAX            
       LDA    $DC,X   
       LDX    #$06    
LF83B: STA    $82     
       AND    #$03    
       TAY            
       LDA    LFC79,Y 
       BVS    LF849   
       STA    $94,X   
       BVC    LF84B   
LF849: STA    $9C,X   
LF84B: LDA    $82     
       LSR            
       LSR            
       DEX            
       DEX            
       BPL    LF83B   
       RTS            

LF854: STA    $A2     
       LDX    #$02    
LF858: LDA    $A5,X   
       CMP    $A9     
       BNE    LF864   
       LDA    $A6,X   
       CMP    $A2     
       BEQ    LF869   
LF864: DEX            
       DEX            
       BPL    LF858   
       CLC            
LF869: RTS            

LF86A: .byte $38,$A9,$00,$E5,$AE,$85,$82,$A9,$30,$E5,$AF,$85,$83,$18,$A5,$B2
       .byte $65,$82,$85,$B2,$A5,$B3,$65,$83,$85,$B3,$A5,$B4,$69,$00,$85,$B4
       .byte $60,$86,$82,$A2,$04,$A0,$FF,$B5,$CF,$F0,$01,$C8,$CA,$CA,$10,$F7
       .byte $84,$83,$20,$BD,$FA,$49,$FF,$85,$84,$35,$B7,$95,$B7,$46,$84,$46
       .byte $84,$90,$06,$06,$83,$06,$83,$90,$F4,$A5,$83,$15,$B7,$95,$B7,$A4
       .byte $C5,$D0,$09,$A6,$82,$B5,$CF,$A2,$00,$20,$E4,$F9,$A9,$00,$A6,$82
       .byte $95,$CF,$95,$D0,$85,$B6,$F8,$A5,$B0,$38,$E9,$01,$85,$B0,$D0,$05
       .byte $68,$68,$4C,$EB,$F5,$A5,$B5,$69,$00,$85,$B5,$D8,$A9,$80,$85,$C1
       .byte $A0,$08,$60,$38,$E5,$8C,$B0,$06,$85,$8C,$A9,$01,$E5,$8C,$60,$F8
       .byte $86,$82,$84,$83,$AA,$29,$0F,$85,$8C,$A5,$AA,$29,$0F,$20,$ED,$F8
       .byte $85,$8E,$8A,$20,$F7,$FF,$85,$8C,$A5,$AA,$20,$F7,$FF,$20,$ED,$F8
       .byte $18,$65,$8E,$85,$84,$C9,$02,$90,$04,$20,$2C,$F9,$60,$A6,$82,$A4
       .byte $83,$60,$A2,$00,$A0,$00,$86,$A0,$A5,$84,$C9,$02,$D0,$06,$A9,$04
       .byte $85,$84,$85,$A0,$38,$A5,$83,$E5,$84,$85,$83,$A5,$82,$E9,$00,$85
       .byte $82,$10,$12,$A5,$A0,$F0,$0D,$84,$A0,$86,$A1,$18,$98,$65,$A0,$A8
       .byte $8A,$65,$A1,$AA,$60,$18,$98,$69,$01,$A8,$8A,$69,$00,$AA,$4C,$3E
       .byte $F9
LF96B: JSR    LFFEE   
       LDA    #$00    
       LDX    #$05    
LF972: STA    $CF,X   
       DEX            
       BPL    LF972   
       LDX    #$04    
LF979: STX    $82     
LF97B: JSR    LF816   
       CPY    $AA     
       BEQ    LF97B   
       TYA            
       JSR    LF854   
       BCS    LF97B   
       LDX    $82     
       STY    $CA,X   
       DEX            
       BPL    LF979   
       RTS            

LF990: JSR    LFABD   
       AND    $B7,X   
       BEQ    LF9D3   
LF997: CMP    #$04    
       BCC    LF99F   
       LSR            
       LSR            
       BNE    LF997   
LF99F: SBC    #$00    
       ASL            
       TAX            
LF9A3: STX    $82     
LF9A5: JSR    LF816   
       CPY    $AA     
       BEQ    LF9A5   
       TYA            
       JSR    LFFB1   
       BCS    LF9A5   
       TYA            
       JSR    LF854   
       BCS    LF9A5   
       TYA            
       LDX    $82     
LF9BB: INX            
       INX            
       CPX    #$06    
       BEQ    LF9C7   
       CMP    $CF,X   
       BEQ    LF9A5   
       BNE    LF9BB   
LF9C7: LDX    $82     
       STY    $CF,X   
       LDA    #$99    
       STA    $D0,X   
       DEX            
       DEX            
       BPL    LF9A3   
LF9D3: RTS            

LF9D4: .byte $A2,$02,$B5,$EF,$C9,$0A,$D0,$02,$A9,$00,$95,$82,$CA,$10,$F3,$60
       .byte $86,$83,$A8,$29,$0F,$38,$E9,$01,$0A,$AA,$98,$20,$F7,$FF,$C9,$05
       .byte $90,$03,$E9,$04,$E8,$A8,$A9,$3F,$88,$F0,$09,$46,$83,$46,$83,$38
       .byte $6A,$6A,$D0,$F4,$35,$DC,$05,$83,$95,$DC,$60,$F0,$04,$A0,$0C,$D0
       .byte $04,$A0,$0A,$A9,$0B,$94,$DC,$E8,$95,$DC,$E8,$60
LFA20: LDA    $81     
       ASL            
       EOR    $81     
       ASL            
       ASL            
       ROL    $80     
       ROL    $81     
       LDA    $80     
       RTS            

LFA2E: .byte $A6,$EF,$18,$7D,$E9,$F1
LFA34: CMP    $85     
       BCS    LFA46   
       TAY            
       AND    #$F0    
       BEQ    LFA45   
       TYA            
       AND    #$0F    
       BEQ    LFA45   
       CMP    $86     
       RTS            

LFA45: SEC            
LFA46: RTS            

LFA47: JSR    LF816   
       STY    $A5,X   
       DEX            
       DEX            
       BPL    LFA47   
       RTS            

LFA51: .byte $A9,$05,$85,$82,$A0,$00,$B5,$00,$0A,$0A,$85,$83,$E8,$A9,$02,$85
       .byte $84,$A9,$0F,$48,$06,$83,$B0,$06,$39,$DC,$00,$99,$DC,$00,$68,$0A
       .byte $0A,$0A,$0A,$90,$EE,$C8,$C6,$84,$10,$E7,$C6,$82,$10,$D8,$60,$C5
       .byte $88,$90,$07,$A4,$88,$D0,$07,$A8,$D0,$02,$A0,$01,$84,$88,$20,$A7
       .byte $FA,$B0,$0E,$A5,$87,$29,$04,$F0,$01,$98,$95,$EF,$68,$68,$4C,$04
       .byte $F8,$94,$EF,$E6,$C3,$60
LFAA7: LDA    $8A     
       EOR    INPT4   
       AND    $8A     
       ASL            
       LDA    INPT4   
       STA    $8A     
       BCC    LFABC   
       LDA    #$83    
       STA    $C1     
       LDA    #$00    
       STA    $89     
LFABC: RTS            

LFABD: JSR    LF82A   
       TXA            
       CLC            
       SBC    #$00    
       STA    $A4     
       ASL            
       ADC    $A4     
       LSR            
       TAX            
       LDA    $A9     
       LSR            
       LDA    #$C0    
       BCS    LFADA   
       CPY    #$03    
       BCS    LFAE0   
       INY            
       INY            
       BPL    LFAE3   
LFADA: CPY    #$05    
       BCC    LFAE3   
       DEY            
       DEY            
LFAE0: DEY            
       DEY            
       INX            
LFAE3: DEY            
       BEQ    LFAEA   
       LSR            
       LSR            
       BNE    LFAE3   
LFAEA: RTS            

LFAEB: .byte $85,$82,$29,$03,$85,$83,$A5,$82,$29,$0C,$0A,$0A,$05,$83,$18,$69
       .byte $11,$99,$DC,$00,$88,$60,$00,$00,$00,$00,$00,$00,$00,$C6,$C6,$FE
       .byte $C6,$C6,$6C,$38,$3C,$66,$C0,$C0,$C0,$66,$3C,$F8,$CC,$C6,$C6,$C6
       .byte $CC,$F8,$FE,$C0,$C0,$F8,$C0,$C0,$FE,$C0,$C0,$C0,$FC,$C0,$C0,$FE
       .byte $3E,$66,$C6,$CE,$C0,$60,$3E,$C6,$C6,$C6,$FE,$C6,$C6,$C6
LFB39: .byte $FC,$30,$30,$30,$30,$30,$FC,$CE,$DC,$F8,$F0,$D8,$CC,$C6,$FE,$C0
       .byte $C0,$C0,$C0,$C0,$C0,$C6,$C6,$D6,$FE,$FE,$EE,$C6,$C6,$CE,$DE,$FE
       .byte $F6,$E6,$C6,$7C,$C6,$C6,$C6,$C6,$C6,$7C,$C0,$C0,$FC,$C6,$C6,$C6
       .byte $FC,$7A,$CC,$DE,$C6,$C6,$C6,$7C,$CE,$DC,$F8,$CE,$C6,$C6,$FC,$7C
       .byte $C6,$06,$7C,$C0,$CC,$78,$30,$30,$30,$30,$30,$30,$FC,$7C,$C6,$C6
       .byte $C6,$C6,$C6,$C6,$C6,$EE,$FE,$FE,$D6,$C6,$C6,$C6,$EE,$7C,$38,$7C
       .byte $EE,$C6,$30,$30,$30,$78,$CC,$CC,$CC,$18,$00,$18,$1C,$0E,$C6,$7C
       .byte $18,$00,$18,$18,$18,$18,$18,$60,$30,$30,$00,$00,$00,$00,$FC,$30
       .byte $30,$30,$30,$70,$30,$FE,$E0,$78,$3C,$0E,$C6,$7C,$7C,$C6,$06,$3C
       .byte $18,$0C,$7E,$0C,$0C,$FE,$CC,$6C,$3C,$1C,$7C,$C6,$06,$06,$FC,$C0
       .byte $FC,$7C,$C6,$C6,$FC,$C0,$60,$3C,$30,$30,$30,$18,$0C,$C6,$FE,$7C
       .byte $C6,$C6,$7C,$C6,$C6,$7C,$78,$0C,$06,$7E,$C6,$C6,$7C,$00,$00,$00
       .byte $3C,$00,$00,$00
LFBFD: .byte $C0
LFBFE: .byte $16,$40,$26,$06,$2C,$18,$24,$66,$5A,$66,$24,$18,$E0,$44,$2E,$7E
       .byte $2E,$44,$E0,$00,$00,$28,$10,$28,$00,$00,$0E,$04,$08,$7C,$08,$04
       .byte $0E,$EE,$EE,$AA,$AA,$AA,$EE,$EE,$EE,$4A,$4A,$4A,$4A,$CE,$4E,$EE
       .byte $CE,$4A,$6A,$2A,$AE,$EE,$EE,$2E,$2A,$6A,$2A,$2E,$EE,$EE,$E4,$A4
       .byte $A4,$A4,$EC,$E4,$EE,$44,$44,$44,$44,$CC,$44,$EE,$C4,$44,$64,$24
       .byte $AC,$E4,$EE,$24,$24,$64,$24,$2C,$E4,$92,$54,$38,$FE,$38,$54,$92
       .byte $00,$00,$00,$54,$00,$00,$00,$00,$00,$00,$10,$00,$00,$00
LFC6C: .byte $01,$B7,$BE,$C5,$CC,$D3,$DA,$E1,$E8,$EF,$5C,$40,$F6
LFC79: .byte $65,$57,$18,$03
LFC7D: .byte $5E,$1F,$26,$2D,$34,$3B,$42,$49,$50,$78,$7F,$08,$71,$16,$08,$7F
       .byte $1D,$01,$01,$00,$00,$08,$47,$39,$1D,$55,$78,$01,$01,$01,$01,$00
       .byte $00,$1D,$55,$1D,$71,$2B,$9B,$01,$01,$00,$00,$00,$00,$63,$32,$5C
       .byte $7F,$5C,$55,$78,$01,$01,$01,$01,$00,$47,$08,$86,$55,$0F,$32,$1D
       .byte $71,$01,$01,$00,$00,$63,$32,$08,$78,$5C,$71,$78,$01,$01,$01,$00
       .byte $00,$1D,$55,$2B,$39,$55,$1D,$78,$01,$01,$01,$00,$00,$78,$71,$01
       .byte $78,$0F,$08,$55,$01,$01,$01,$00,$00,$47,$71,$01,$78,$0F,$08,$55
       .byte $01,$01,$01,$00,$00,$78,$7F,$08,$71,$24,$47,$1D,$1D,$7F,$01,$7F
       .byte $5C,$78,$7F,$08,$71,$78,$32,$39,$63,$FF,$0F,$5C,$4E,$4E,$08,$55
       .byte $16,$1D,$71,$B0,$01,$01,$9B,$5C,$86,$71,$FF,$4E,$39,$78,$78,$39
       .byte $5C,$55,$01,$39,$78,$FF,$7F,$5C,$01,$16,$1D,$78,$7F,$71,$5C,$9B
       .byte $FF,$00,$00,$01,$08,$47,$39,$1D,$55,$FF,$8D,$08,$71,$78,$32,$39
       .byte $63,$78,$01,$39,$55,$01,$00,$00,$01,$78,$7F,$08,$71,$16,$08,$7F
       .byte $1D,$78,$8D,$1D,$47,$47,$01,$16,$5C,$55,$1D,$A9,$A9,$A9,$7F,$32
       .byte $1D,$01,$08,$47,$39,$1D,$55,$78,$FF,$08,$71,$1D,$01,$55,$5C,$8D
       .byte $FF,$71,$1D,$7F,$71,$1D,$08,$7F,$39,$55,$2B,$A9,$A9,$5C,$86,$71
       .byte $01,$2B,$08,$47,$08,$94,$9B,$FF,$4E,$86,$78,$7F,$01,$55,$5C,$8D
       .byte $FF,$78,$86,$71,$71,$1D,$55,$16,$1D,$71,$01,$7F,$5C,$7F,$32,$1D
       .byte $01,$08,$47,$39,$1D,$55,$78,$FF,$55,$1D,$8D,$01,$71,$08,$55,$40
       .byte $01,$39,$78,$01,$0F,$5C,$4E,$4E,$08,$55,$16,$A2,$FF,$63,$32,$08
       .byte $78,$5C,$71,$01,$86,$55,$39,$7F,$78,$7F,$5C,$01,$24,$39,$71,$1D
       .byte $A2,$01,$00,$00,$00,$63,$32,$5C,$7F,$5C,$55,$FF,$0F,$5C,$86,$71
       .byte $78,$1D,$A2,$01,$00,$FF,$8D,$08,$71,$63,$FF,$0F,$5C,$86,$71,$78
       .byte $1D,$01,$00,$FF,$24,$08,$0F,$7F,$5C,$71,$A2,$01,$01,$00,$B0,$00
       .byte $FF,$01,$01,$01,$01,$B7,$BE,$C5,$CC,$D3,$DA,$E1,$E8,$01,$00,$00
       .byte $01,$86,$55,$39,$7F,$01,$32,$39,$7F,$24,$71,$5C,$4E,$01,$08,$47
       .byte $39,$1D,$55,$FF,$08,$7F,$01,$78,$1D,$0F,$7F,$01,$01,$00,$B0,$00
       .byte $00,$00,$00,$00,$01,$47,$1D,$24,$7F,$FF,$01,$00,$00,$01,$86,$55
       .byte $39,$7F,$01,$32,$39,$7F,$5C,$55,$01,$08,$47,$39,$1D,$55,$01,$08
       .byte $7F,$01,$78,$1D,$0F,$7F,$5C,$71,$01,$01,$00,$B0,$00,$01,$01,$00
       .byte $00,$01,$47,$1D,$24,$7F,$FF,$08,$47,$39,$1D,$55,$FF,$16,$1D,$78
       .byte $7F,$71,$5C,$9B,$1D,$16,$A9,$A9,$A9,$01,$01,$47,$71,$01,$78,$0F
       .byte $08,$55,$FF,$2B,$08,$47,$08,$94,$9B,$01,$4E,$08,$63,$FF,$6A,$86
       .byte $08,$16,$71,$08,$55,$7F,$01,$00,$B0,$00,$78,$1D,$0F,$7F,$5C,$71
       .byte $01,$00,$B0,$00,$FF,$78,$7F,$08,$7F,$86,$78,$FF,$08,$16,$4E,$39
       .byte $71,$08,$47,$FF,$0F,$08,$63,$7F,$08,$39,$55,$FF,$47,$39,$1D,$86
       .byte $7F,$1D,$55,$08,$55,$7F,$FF,$1D,$55,$78,$39,$2B,$55,$FF,$0F,$5C
       .byte $4E,$4E,$5C,$16,$5C,$71,$1D,$FF,$0F,$08,$16,$1D,$7F,$FF
LFEDB: .byte $FD
LFEDC: .byte $FD,$B1,$FD,$BA,$FD,$D2,$FD,$64,$FE,$8B,$FE,$E3,$FD,$37,$FE,$0A
       .byte $FE,$FD,$FD,$80,$FE,$E6,$FC,$C2,$FC,$D2,$FD,$DA,$FC,$A2,$FE,$E3
       .byte $FD
LFEFD: .byte $C7
LFEFE: .byte $F3,$D8,$F3,$1A,$F4,$E2,$F4,$48,$F5,$A8,$F5,$CF,$F6,$AD,$F3,$42
       .byte $F6,$CE,$F3,$ED,$F3,$B5,$F7,$BC,$F7,$C3,$F7
LFF19: .byte $FE
LFF1A: .byte $FD,$76,$FE,$80,$FE,$86,$FC,$F2,$FC,$7A,$FD,$4F,$FD,$A5,$FD,$A9
       .byte $FE,$CB,$FE,$B1,$FE,$B9,$FE,$C4,$FE,$D5,$FE
LFF35: .byte $08
LFF36: .byte $1D
LFF37: .byte $D8,$04,$10,$F8,$02,$01,$C0,$08,$01,$D0,$03,$04,$C0,$03,$18,$A0
       .byte $0C,$10,$E0,$0C,$12,$E0,$0C,$14,$E0,$0C,$16,$E0,$0C,$18,$E0,$0C
       .byte $1A,$E0,$0C,$1C,$E0
LFF5C: AND    #$F0    
       LSR            
       LSR            
       LSR            
       TAX            
       STY    $92,X   
       RTS            

LFF65: .byte $A0,$11,$A2,$08,$B5,$B7,$29,$0F,$20,$EB,$FA,$B5,$B7,$20,$F7,$FF
       .byte $20,$EB,$FA,$CA,$10,$EE,$A2,$02,$86,$84,$B5,$A5,$29,$0F,$18,$E9
       .byte $00,$85,$83,$0A,$65,$83,$85,$83,$B5,$A5,$20,$F7,$FF,$4A,$85,$82
       .byte $B0,$06,$A0,$04,$C6,$82,$10,$02,$A0,$40,$A5,$83,$18,$65,$82,$AA
       .byte $98,$75,$DC,$95,$DC,$A6,$84,$CA,$CA,$10,$CD,$60
LFFB1: LDX    #$04    
LFFB3: CMP    $CA,X   
       BEQ    LFFBB   
       DEX            
       BPL    LFFB3   
       CLC            
LFFBB: RTS            

LFFBC: PHA            
       JSR    LFFF7   
       BNE    LFFC4   
       LDA    #$0A    
LFFC4: STA    $DC,X   
       INX            
       PLA            
       AND    #$0F    
       BNE    LFFCE   
       LDA    #$0A    
LFFCE: STA    $DC,X   
       INX            
       RTS            

LFFD2: .byte $85,$C5,$A2,$13,$A5,$A9,$20,$BC,$FF,$A5,$AA,$20,$BC,$FF,$A0,$0A
       .byte $60
LFFE3: LDA    INTIM   
       BNE    LFFE3   
       STY    WSYNC   
       STY    TIM64T  
       RTS            

LFFEE: LDA    #$89    
LFFF0: STA    $85     
       AND    #$0F    
       STA    $86     
       RTS            

LFFF7: LSR            
LFFF8: LSR            
       LSR            
       LSR            
LFFFB: RTS            

LFFFC: .byte $00,$F0,$52,$5A
