; Disassembly of roms/Ski Run.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Ski Run.bin
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
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF02F   =   $F02F
LF080   =   $F080

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       DEX            
       STX    $E6     
       LDA    #$FB    
       LDX    #$11    
       JSR    LFF1C   
       JSR    LFCEF   
       LDA    #$80    
       STA    $E1     
       LDA    #$00    
       STA    ENAM1   
LF021: NOP            
       NOP            
       NOP            
       NOP            
       JSR    LF290   
       LDA    #$00    
       STA    NUSIZ0  
       STA    PF2     
       STA    PF1     
       STA    WSYNC   
       STA    CXCLR   
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$01    
       AND    $C3     
       BNE    LF040   
       LDA    #$FF    
LF040: EOR    $B8     
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$01    
       STA    $C9     
       LDA    #$12    
       SBC    $C9     
       TAX            
LF050: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    LF050   
       STA    WSYNC   
       STA    HMOVE   
       STX    VBLANK  
       LDY    #$24    
       STY    HMP1    
       STY    NUSIZ0  
       LDA    #$CC    
       STA    HMP0    
       LDA    #$0F    
       STA    COLUP1  
       LDA    $B8     
       AND    #$F0    
       ADC    #$B8    
       STA    RESP0   
       STA    RESP1   
       STY    NUSIZ1  
       STA    COLUP0  
       LDY    #$00    
LF07B: STA    WSYNC   
       STA    HMOVE   
       LDA    LFECF,Y 
       STA    PF0     
       LDA    LFED0,Y 
       STA    PF1     
       LDA    LF02F,Y 
       STA    GRP1    
       LDA    LF080,Y 
       STA    GRP0    
       LDA    LFED0,Y 
       STA    PF2     
       LDA    $B8     
       AND    #$F0    
       ADC    #$B0    
       ADC    LF4F0,Y 
       STA    COLUPF  
       LDA    #$FF    
       STA    HMP0    
       INY            
       CPY    $C9     
       BNE    LF07B   
       LDA    #$0D    
       STA    COLUBK  
       LDY    #$00    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STY    COLUPF  
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       LDA    $BD     
       BPL    LF0C8   
       LDA    #$00    
       BEQ    LF0CA   
LF0C8: LDA    #$FF    
LF0CA: STA    REFP0   
       LDA    $C8     
       JSR    LFF83   
       STY    ENABL   
       STA    CXCLR   
       JSR    LF537   
LF0D8: LDA    INTIM   
       BNE    LF0D8   
       JMP    LF7D0   
LF0E0: INC    $B6     
       INC    $A6     
       DEC    $81     
       LDA    $81     
       CMP    #$04    
       BCC    LF0ED   
       RTS            

LF0ED: INC    $B8     
       BNE    LF10B   
       SED            
       CLC            
       LDA    $C3     
       ADC    #$01    
       STA    $C3     
       CLD            
       CMP    #$99    
       BNE    LF102   
       LDA    #$40    
LF100: STA    $C5     
LF102: AND    #$01    
       BNE    LF10B   
       LDA    #$B5    
       JSR    LF424   
LF10B: LDA    $E5     
       BEQ    LF111   
       DEC    $E5     
LF111: LDA    #$14    
       STA    $81     
       LDX    #$27    
LF117: DEX            
       LDA    $90,X   
       STA    $91,X   
       CPX    #$00    
       BNE    LF117   
       LDA    $E8     
       EOR    $90     
       LDY    $DD     
       EOR    LF100,Y 
       STA    $DF     
       DEC    $DE     
       BEQ    LF149   
       LDA    $DE     
       SEC            
       SBC    $C4     
       BCC    LF145   
       STA    $C9     
       LDA    $C4     
       LSR            
       ADC    #$01    
       CMP    $C9     
       BCC    LF159   
       LDA    #$2F    
       BNE    LF15B   
LF145: LDA    #$06    
       BNE    LF15B   
LF149: LDA    $DF     
       AND    #$3F    
       ADC    #$48    
       STA    $DE     
       LDA    $DF     
       AND    #$0F    
       ADC    #$0B    
       STA    $C4     
LF159: LDA    #$0E    
LF15B: STA    $A8     
       LDA    $E4     
       ADC    #$80    
       AND    #$03    
       TAX            
       LDA    $8F     
       BCC    LF170   
LF168: JSR    LF85D   
       DEX            
       BPL    LF168   
       BMI    LF176   
LF170: JSR    LF838   
       DEX            
       BPL    LF170   
LF176: STA    $8F     
       LDA    $E4     
       CLC            
       ADC    #$08    
       STA    $E4     
       AND    #$78    
       CMP    #$78    
       BNE    LF189   
       LDA    $DF     
       STA    $E4     
LF189: LDA    $C3     
       STA    $D9     
       AND    #$0F    
       TAY            
       LDA    $B8     
       AND    #$07    
       TAX            
       LDA    LF889,X 
       AND    LF891,Y 
       BNE    LF1A9   
LF19D: LDA    $8F     
       STA    $90     
       LDA    $DF     
       AND    LF7A0,Y 
       CLC            
       BCC    LF1BC   
LF1A9: INY            
       JSR    LF1EC   
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C9     
       LDA    #$F0    
       AND    $DF     
       CMP    $C9     
       BCS    LF19D   
LF1BC: STA    $B0     
       STA    $A0     
       LDA    $DF     
       LDA    #$04    
       STA    $98     
       LDA    $E4     
       ADC    #$80    
       AND    #$07    
       TAX            
       LDA    $B0     
       CMP    #$40    
       BCC    LF1D9   
       LDA    #$03    
       AND    $98     
       STA    $98     
LF1D9: LDA    $DE     
       CMP    #$30    
       BCS    LF1EB   
       LDA    $8F     
       STA    $90     
       LDA    #$20    
       STA    $B0     
       LDA    #$B0    
       STA    $A0     
LF1EB: RTS            

LF1EC: LDA    $DD     
       EOR    $BF     
       AND    #$07    
       CLC            
       ADC    #$04    
       STA    $90     
       RTS            

LF1F8: .byte $60,$69,$04,$85,$90,$60,$90,$60
LF200: LDY    #$07    
LF202: LDA    ($CF),Y 
       TAX            
       LDA    ($CD),Y 
       STA    WSYNC   
       STA    HMOVE   
       STY    $C9     
       STA    $CA     
       LDA    ($D7),Y 
       STA    GRP0    
       LDA    ($D5),Y 
       STA    GRP1    
       LDA    ($D3),Y 
       STA    GRP0    
       LDA    ($D1),Y 
       LDY    $CA     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $C9     
       DEY            
       BPL    LF202   
       JMP    LF2F3   
LF22F: CLC            
       LDA    #$D0    
       LDX    #$00    
LF234: STA    $CD,X   
       INX            
       INX            
       ADC    #$08    
       BNE    LF234   
       RTS            

LF23D: LDA    $C0     
       JSR    LF24C   
       LDA    $C1     
       JSR    LF24E   
       LDA    $C2     
       JMP    LF24E   
LF24C: LDY    #$00    
LF24E: STA    $C9     
       ASL            
       ASL            
       ASL            
       JSR    LF259   
       LDA    $C9     
       LSR            
LF259: AND    #$78    
       ORA    #$80    
       STA.wy $00CD,Y 
       INY            
       INY            
       RTS            

LF263: LDA    $C3     
       JSR    LF24C   
       INY            
       INY            
       INY            
       INY            
       LDA    $C5     
       JSR    LF24E   
       LDA    $E5     
       BNE    LF27C   
       LDA    $AD     
       ASL            
       ASL            
       ASL            
       ASL            
       LSR            
LF27C: STA    $D3     
       LDA    $BE     
       ADC    #$04    
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D1     
       RTS            

LF28A: .byte $02,$20,$85,$FF,$60,$FF
LF290: JSR    LF2F3   
       STA    WSYNC   
       LDX    #$00    
       STX    VBLANK  
       STX    COLUBK  
       STX    PF0     
       STX    PF1     
       STX    GRP1    
       LDA    #$FF    
       STA    PF2,X   
       LDA    #$4C    
       STA    COLUPF  
       STX    REFP1   
       STX    REFP0   
       LDA    #$11    
       STA    RESP0   
       STA    RESP1   
       STA    HMP0    
       LDA    #$20    
       STA    HMP1    
       LDA    #$31    
       STA    CTRLPF  
       LDY    $EF     
       NOP            
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$23    
       ADC    #$06    
       STA    COLUBK  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
       STA    HMCLR   
       STA    WSYNC   
       NOP            
       NOP            
       NOP            
       JSR    LF200   
       LDA    $E1     
       BMI    LF2ED   
       JSR    LF263   
       JSR    LF200   
       JMP    LF2F3   
LF2ED: JSR    LF22F   
       JSR    LF200   
LF2F3: LDY    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STY    COLUP1  
       STY    COLUP0  
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

LF304: .byte $85,$2A,$84,$07,$84,$06,$84,$1B,$84,$1C,$84,$1B,$84,$1F,$60,$00
       .byte $00,$00,$00,$00,$F4,$33,$E3,$0A,$1A,$23,$33,$E3,$0A,$1A,$23,$C3
       .byte $CA,$EA,$43,$3A,$23,$13,$23,$3C,$33,$E3,$0A,$1A,$23,$33,$E3,$0A
       .byte $1A,$23,$C3,$3A,$6A,$43,$3A,$2A,$13,$03,$E3,$CA,$53,$5A,$5E,$4A
       .byte $3A,$2A,$1C,$CA,$1A,$2E,$2A,$53,$43,$3D,$1F,$F5,$3A,$5A,$83,$83
       .byte $CA,$7A,$6A,$7A,$83,$53,$CA,$3A,$5A,$8A,$73,$43,$CA,$2A,$4A,$6A
       .byte $53,$33,$C3,$3A,$5A,$A3,$A3,$CA,$9A,$8A,$7A,$83,$63,$CA,$8A,$7A
       .byte $6A,$5A,$6A,$5A,$4A,$33,$23,$13,$1A,$CA,$C3,$56,$49,$3A,$3A,$CA
       .byte $3B,$3B,$3A,$3A,$2A,$3A,$53,$43,$C3,$66,$5B,$4A,$4A,$CA,$4B,$4B
       .byte $4A,$4A,$3A,$4A,$63,$53,$C3,$56,$4B,$3A,$3A,$CA,$8B,$8B,$8A,$8A
       .byte $7A,$8A,$93,$63,$CA,$8A,$7A,$6A,$5A,$6A,$5A,$4A,$33,$23,$13,$CC
       .byte $1F,$F5,$16,$1B,$13,$D3,$36,$3B,$33,$13,$16,$3B,$53,$53,$46,$3B
       .byte $2C,$26,$3B,$43,$43,$36,$2B,$33,$13,$16,$3B,$23,$D3,$06,$2B,$1C
       .byte $1F,$00,$00,$53,$46,$3B,$2C,$26,$3B,$43,$43,$36,$2B,$33,$AA,$1F
       .byte $F8,$9A,$AA,$F7,$9A,$BA,$AB,$9B,$7B,$4B,$1F,$1F,$F7,$3A,$4A,$66
       .byte $76,$83,$1F,$1F,$F7,$9A,$AA,$BA,$AA,$8A,$63,$1F
LF400: .byte $15,$13,$11,$0F,$2E,$2C,$0B,$0A,$09,$28,$07,$04,$1F,$3A,$17,$F1
LF410: .byte $04,$03,$02,$01,$00,$01,$02,$03,$02,$01,$FF,$FE,$FC,$FF,$01,$03
       .byte $F0,$02
LF422: LDA    #$E4    
LF424: LDY    $E7     
       BMI    LF42C   
       CMP    $EA     
       BCC    LF47D   
LF42C: LDX    #$01    
       BNE    LF432   
LF430: LDX    #$00    
LF432: LDY    #$F3    
       CPX    #$00    
       BNE    LF43F   
       STY    $E9     
       STA    $E8     
       JMP    LF443   
LF43F: STY    $EB     
       STA    $EA     
LF443: LDY    #$0C    
       STY    AUDC0,X 
       LDA    #$00    
       STA    $E6,X   
LF44B: LDA    $E6,X   
       BPL    LF450   
       RTS            

LF450: DEC    $E6,X   
       BNE    LF458   
       LDA    #$00    
       BEQ    LF46B   
LF458: BMI    LF47E   
       LDA    $E6,X   
       CMP    #$08    
       AND    #$07    
       TAY            
       BCC    LF468   
       LDA    LF4EC,Y 
       BNE    LF46B   
LF468: LDA    LF4E8,Y 
LF46B: LDY    $E1     
       BMI    LF47B   
       CPX    #$00    
       BEQ    LF479   
       LDY    $EA     
       CPY    #$B4    
       BCS    LF47B   
LF479: LSR            
       LSR            
LF47B: STA    AUDV0,X 
LF47D: RTS            

LF47E: LDY    #$00    
       TXA            
       BNE    LF488   
       LDA    ($E8),Y 
       JMP    LF48A   
LF488: LDA    ($EA),Y 
LF48A: CMP    #$F0    
       BCC    LF496   
       STA    AUDC0,X 
       JSR    LF4AA   
       JMP    LF47E   
LF496: PHA            
       AND    #$0F    
       TAY            
       LDA    LF400,Y 
       STA    $E6,X   
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF400,Y 
       STA    AUDF0,X 
LF4AA: CPX    #$01    
       BEQ    LF4B1   
       INC    $E8     
       RTS            

LF4B1: INC    $EA     
       RTS            

LF4B4: LDA    #$B4    
       CMP    $E8     
       BCS    LF4BE   
       LDA    #$18    
       BNE    LF4CC   
LF4BE: LDA    #$18    
       CMP    $E8     
       BCS    LF4CC   
       LDA    $E6     
       BPL    LF4DA   
       INC    $E8     
       LDA    $E8     
LF4CC: JSR    LF430   
LF4CF: LDA    $B9     
       AND    #$01    
       CLC            
       ADC    $E8     
       JSR    LF42C   
       RTS            

LF4DA: LDX    #$00    
       JSR    LF44B   
       LDA    $E7     
       BMI    LF4CF   
       LDX    #$01    
       JMP    LF44B   
LF4E8: .byte $00,$04,$08,$0D
LF4EC: .byte $0F,$0E,$0C,$0B
LF4F0: .byte $0B,$0C,$09,$0A,$0B,$0C,$0D,$0C,$0B,$0A,$09,$08,$07,$06,$05,$0F
LF500: STA    WSYNC   
       STA    GRP0    
       STX    GRP1    
       LDA    ($84),Y 
       STA    COLUP0  
       LDA    ($88),Y 
       STA    COLUP1  
       DEY            
LF50F: DEC    $8E     
       BNE    LF51F   
       LDA    $E3     
       STA    $8E     
       LDA    #$FF    
       STA    $E3     
       EOR    $EF     
       STA    $EF     
LF51F: LDA    ($86),Y 
       TAX            
       LDA    ($82),Y 
       AND    $EF     
       CPY    $80     
       BNE    LF500   
       STA    WSYNC   
       STA    GRP0    
       LDA    ($84),Y 
       STA    COLUP0  
       LDA    #$00    
       STA    GRP1    
       RTS            

LF537: LDX    #$06    
       STX    $C6     
       LDY    #$03    
       JMP    LF592   
LF540: STA    WSYNC   
       STA    HMCLR   
       AND    $EF     
       STA    GRP0    
       SEC            
       LDA    $82     
       SBC    #$16    
       STA    $82     
       SEC            
       LDA    $84     
       SBC    #$16    
       STA    $84     
       DEC    $8E     
       BEQ    LF561   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       BNE    LF56D   
LF561: LDA    $E3     
       STA    $8E     
       LDA    #$FF    
       STA    $E3     
       EOR    $EF     
       STA    $EF     
LF56D: LDY    $DB     
       LDA    ($82),Y 
       AND    $EF     
       STA    GRP0    
       LDA    $C7     
       STA    WSYNC   
       STA    COLUBK  
       LDA    ($84),Y 
       STA    COLUP0  
       DEC    $C6     
       DEY            
       JSR    LF50F   
       LDX    #$15    
       STX    $DB     
       LDX    $C6     
       BPL    LF590   
       JMP    LFFB6   
LF590: BEQ    LF596   
LF592: LDA    #$04    
       BNE    LF598   
LF596: LDA    $81     
LF598: STA    $80     
       LDA    $B0,X   
       STA    $86     
       LDA    $A0,X   
       STA    $88     
       LDY    #$03    
       LDA    ($84),Y 
       STA    COLUP0  
       LDA    ($82),Y 
       AND    $EF     
       STA    GRP0    
       LDA    $90,X   
       STA    HMP1    
       AND    #$0F    
       TAX            
       DEC    $8E     
       BEQ    LF5C6   
       DEC    $8E     
       BEQ    LF5C8   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       JMP    LF5D4   
LF5C6: DEC    $E3     
LF5C8: LDA    $E3     
       STA    $8E     
       LDA    #$FF    
       STA    $E3     
       EOR    $EF     
       STA    $EF     
LF5D4: DEY            
       CPX    #$07    
       LDA    ($84),Y 
       STA    COLUP0  
       LDA    ($82),Y 
       AND    $EF     
       STA    GRP0    
       STA    WSYNC   
       NOP            
       NOP            
       BCS    LF5FC   
LF5E7: DEX            
       BPL    LF5E7   
       STA    RESP1   
       LDX    $C6     
       LDA    $98,X   
       STA    NUSIZ1  
       LDA    $A8,X   
       STA    $C7     
       DEY            
       LDA    ($82),Y 
       JMP    LF618   
LF5FC: LDY    $C6     
       LDY    $C6     
       LDA.wy $0098,Y 
       STA    NUSIZ1  
       LDA.wy $00A8,Y 
       STA    $C7     
       LDY    #$01    
       TXA            
       SBC    #$07    
       TAX            
       LDA    ($82),Y 
LF612: DEX            
       BPL    LF612   
       STA.w  $0011   
LF618: STA    WSYNC   
       STA    HMOVE   
       AND    $EF     
       STA    GRP0    
       LDA    ($84),Y 
       STA    COLUP0  
       DEC    $8E     
       BEQ    LF635   
       DEC    $8E     
       BEQ    LF637   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       JMP    LF643   
LF635: DEC    $E3     
LF637: LDA    $E3     
       STA    $8E     
       LDA    #$FF    
       STA    $E3     
       EOR    $EF     
       STA    $EF     
LF643: DEY            
       LDA    ($84),Y 
       STA    COLUP0  
       LDA    ($82),Y 
       JMP    LF540   
LF64D: .byte $F5,$82,$4C,$44,$F5,$EA,$EA,$4C,$44,$F6,$2B,$B1,$86,$85,$1C,$B1
       .byte $A8,$85,$06
LF660: LDX    #$06    
LF662: LDA    $B0,X   
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
       DEY            
       BNE    LF68D   
       BCS    LF67C   
       LDA    #$03    
LF671: STA    $CA     
       LDA    $90,X   
       JSR    LF838   
       STA    $90,X   
       BNE    LF696   
LF67C: LDA    #$02    
       LDY    $DF     
       BMI    LF671   
LF682: STA    $CA     
       LDA    $90,X   
       JSR    LF85D   
       STA    $90,X   
       BNE    LF696   
LF68D: DEY            
       BNE    LF6A4   
       BCS    LF6A4   
       LDA    #$01    
       BNE    LF682   
LF696: LDA    #$03    
       AND    $DD     
       CMP    $CA     
       BNE    LF6A4   
       LDA    $B0,X   
       EOR    #$10    
       STA    $B0,X   
LF6A4: DEX            
       BPL    LF662   
       RTS            

LF6A8: .byte $85,$1B,$B1,$A8,$85,$06,$85,$02,$85,$40,$D0,$F5,$A9,$00,$60,$03
       .byte $A5,$07,$60,$A9,$00,$60,$D6,$AA,$EA,$EA,$EA,$EA,$EA,$EA,$4C,$E0
       .byte $F6,$15,$18,$E5,$81,$85,$80,$A9,$10,$85,$B0,$A9,$10,$85
LF6D6: JSR    LF660   
       LDA    #$0E    
       CMP    $B9     
       BCS    LF6E3   
       LDA    #$00    
       STA    $B9     
LF6E3: LDA    #$20    
       STA    $E3     
       LDA    #$00    
       STA    $EF     
       LDA    $8A     
       STA    $8E     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$50    
       STA    $84     
       LDA    #$00    
       STA    ENAM0   
       LDA    $EA     
       CMP    #$FC    
       BCS    LF70E   
       CMP    #$F0    
       BCC    LF70E   
       ASL            
       ASL            
       AND    #$5F    
       STA    $82     
LF70E: LDA    $81     
       CLC            
       ADC    #$01    
       STA    $DB     
       INC    $DD     
       LDA    $8A     
       SEC            
       SBC    $DB     
       CLC            
       ADC    #$16    
       STA    $C9     
       LDA    #$00    
       STA    $CA     
LF725: LDA    $CA     
       CLC            
       ADC    #$16    
       STA    $CA     
       LDA    $C9     
       SEC            
       SBC    #$16    
       STA    $C9     
       CMP    #$16    
       BCS    LF725   
       LDA    #$16    
       SBC    $C9     
       STA    $C9     
       LDA    $82     
       CLC            
       ADC    $CA     
       SEC            
       SBC    $C9     
       STA    $82     
       LDA    $84     
       CLC            
       ADC    $CA     
       SEC            
       SBC    $C9     
       STA    $84     
       RTS            

LF752: .byte $B0,$00
LF754: LDA    #$40    
       AND    $E2     
       BEQ    LF75D   
       LDA    #$FF    
       RTS            

LF75D: LDA    $E1     
       BMI    LF765   
       LDA    SWCHA   
       RTS            

LF765: LDA    $DD     
       LDA    $92     
       ASL            
       ASL            
       ASL            
       ASL            
       SBC    $8B     
       ADC    #$E0    
       BPL    LF776   
       LDA    #$BF    
       RTS            

LF776: LDA    #$7F    
       RTS            

LF779: LDA    $E1     
       BMI    LF780   
LF77D: LDA    REFP1   
       RTS            

LF780: LDA    $AB     
       CMP    #$06    
       BNE    LF77D   
       LDA    #$00    
       RTS            

LF789: .byte $00,$60,$33,$00,$CB,$00,$D9,$20,$38,$30,$2C,$28,$26,$24,$22,$20
       .byte $20,$00,$00,$00,$00,$00,$00
LF7A0: .byte $10,$20,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$30,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LF7D0: LDA    #$FF    
       STA    VBLANK  
       LDA    #$49    
       STA    TIM64T  
       JSR    LF4B4   
       JSR    LF998   
LF7DF: LDA    INTIM   
       BNE    LF7DF   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$40    
       STA    TIM64T  
       JSR    LFF45   
       JSR    LFAB3   
       JSR    LF23D   
       LDA    $EA     
       CMP    #$B4    
       BCS    LF82F   
       LDA    $E1     
       BMI    LF82F   
       LDY    $BE     
       INY            
       BEQ    LF82F   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $B8     
       AND    #$0F    
       TAX            
       LDA    $90     
       AND    #$03    
       ADC    LFDD3,Y 
       ADC    LF410,X 
       STA    AUDF1   
       INY            
       INY            
       INY            
       STY    AUDV1   
       LDA    #$04    
       STA    AUDC1   
LF82F: JSR    LFB40   
       JSR    LF6D6   
       JMP    LF8D5   
LF838: SEC            
       SBC    #$10    
       PHA            
       AND    #$F0    
       CMP    #$80    
       BNE    LF849   
       PLA            
       SEC            
       SBC    #$0F    
       SEC            
       BCS    LF84A   
LF849: PLA            
LF84A: PHA            
       AND    #$0F    
       CMP    #$0D    
       BCC    LF855   
       PLA            
       LDA    #$22    
       RTS            

LF855: PLA            
       CMP    #$32    
       BNE    LF85C   
       LDA    #$9C    
LF85C: RTS            

LF85D: CLC            
       ADC    #$10    
       PHA            
       AND    #$F0    
       CMP    #$80    
       BNE    LF849   
       PLA            
       CLC            
       ADC    #$0F    
       CLC            
       BCC    LF84A   
       PLA            
LF86F: LDX    #$08    
LF871: LDA    $8F,X   
       JSR    LF838   
       STA    $8F,X   
       DEX            
       BPL    LF871   
       RTS            

LF87C: LDX    #$08    
LF87E: LDA    $8F,X   
       JSR    LF85D   
       STA    $8F,X   
       DEX            
       BPL    LF87E   
       RTS            

LF889: .byte $80,$40,$20,$10,$08,$04,$02,$01
LF891: .byte $01,$01,$10,$10,$11,$11,$10,$11,$10,$11,$11,$35,$FF,$EE,$A5,$FF
       .byte $02,$95,$98,$60,$A9,$36,$A0,$00,$F0,$01,$60,$00,$00,$00,$60,$A0
       .byte $07,$B1,$CF,$AA,$B1,$CD,$85,$02,$85,$2A,$84,$8A,$85,$C9,$B1,$D7
       .byte $85,$1B,$B1,$D5,$85,$1C,$B1,$D3,$85,$1B,$B1,$D1,$A4,$C9,$85,$1C
       .byte $86,$1B,$84,$1C
LF8D5: LDA    INTIM   
       BNE    LF8D5   
       LDA    #$E3    
       STA    TIM64T  
       JMP    LF021   
LF8E2: DEC    $BB     
       BPL    LF8FA   
       LDA    #$07    
       STA    $BB     
       LDA    $BD     
       BMI    LF8F0   
       EOR    #$FF    
LF8F0: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF988,Y 
       STA    $BA     
LF8FA: ASL    $BA     
       BCC    LF900   
       INC    $BC     
LF900: JMP    LF0E0   
LF903: LDA    REFP1   
       BMI    LF90D   
       LDA    #$F0    
       AND    $C0     
       STA    $C0     
LF90D: LDA    $EA     
       CMP    #$FF    
       BEQ    LF917   
       CMP    #$F7    
       BNE    LF91A   
LF917: JMP    LFF38   
LF91A: CMP    #$F8    
       BCC    LF937   
       CMP    #$FE    
       BCS    LF92A   
       LDA    #$20    
       ADC    $BD     
       STA    $BD     
       BNE    LF932   
LF92A: LDA    #$80    
       STA    $BD     
       LDA    #$50    
       STA    $82     
LF932: LDA    #$00    
       STA    AUDV0   
LF936: RTS            

LF937: CMP    #$F0    
       BCC    LF94C   
       AND    #$0F    
       ASL            
       STA    AUDF0   
       STA    AUDV0   
       ASL            
       ADC    #$40    
       STA    $82     
       LDA    #$0A    
       STA    AUDC0   
       RTS            

LF94C: LDA    COLUP1  
       BMI    LF964   
       LDA    $E5     
       BNE    LF936   
       LDX    $CB     
       LDA    #$06    
       CMP    $A8,X   
       BNE    LF936   
       CMP    $A7,X   
       BNE    LF936   
       LDA    #$F0    
       BNE    LF966   
LF964: LDA    #$F8    
LF966: JSR    LF424   
       LDA    #$01    
       STA    $DE     
       LDA    #$00    
       STA    $E5     
       LDA    #$00    
       LDA    $C5     
       SEC            
       SED            
       SBC    #$01    
       CLD            
       STA    $C5     
       BNE    LF984   
       LDA    #$80    
       ORA    $E1     
       STA    $E1     
LF984: RTS            

LF985: .byte $A0,$A5,$E4
LF988: .byte $69,$80,$29,$07,$AA,$4C,$B7,$F1,$00,$08,$44,$29,$55,$EA,$DD,$EF
LF998: LDA    #$40    
       AND    #$E2    
       BNE    LF9A4   
       LDA    #$00    
       STA    $BE     
       STA    $BF     
LF9A4: JSR    LF903   
       LDA    #$20    
       AND    $E2     
       BEQ    LF9CB   
       JSR    LF754   
       BMI    LF9B6   
       INC    $8B     
       BNE    LF9BB   
LF9B6: ASL            
       BMI    LF9BB   
       DEC    $8B     
LF9BB: LDA    $8B     
       CMP    #$32    
       BCS    LF9C3   
       LDA    #$C0    
LF9C3: CMP    #$C1    
       BCC    LF9C9   
       LDA    #$32    
LF9C9: STA    $8B     
LF9CB: JSR    LF754   
       BMI    LF9D7   
       LDA    $BD     
       SEC            
       SBC    #$06    
       BCS    LF9E3   
LF9D7: ASL            
       BMI    LF9E1   
       LDA    #$06    
       CLC            
       ADC    $BD     
       BCC    LF9E3   
LF9E1: LDA    $BD     
LF9E3: STA    $BD     
       BMI    LF9F5   
       EOR    #$F0    
LF9E9: DEC    $BC     
       BMI    LF9F1   
       INC    $8B     
       BNE    LF9E9   
LF9F1: INC    $BC     
       BEQ    LF9FF   
LF9F5: DEC    $BC     
       BMI    LF9FD   
       DEC    $8B     
       BNE    LF9F5   
LF9FD: INC    $BC     
LF9FF: AND    #$E0    
       STA    $82     
       LDA    #$20    
       AND    $E2     
       BNE    LFA21   
LFA09: LDA    $8B     
       CMP    #$80    
       BCS    LFA16   
       JSR    LF86F   
       INC    $8B     
       BNE    LFA09   
LFA16: CMP    #$86    
       BCC    LFA21   
       JSR    LF87C   
       DEC    $8B     
       BNE    LFA09   
LFA21: LDA    $8B     
       JSR    LFF9B   
       STA    $C8     
       JSR    LF754   
       ASL            
       ASL            
       BMI    LFA33   
       INC    $8A     
       BNE    LFA3D   
LFA33: ASL            
       BMI    LFA64   
       DEC    $8A     
       LDA    #$FC    
       JSR    LFEE0   
LFA3D: LDA    #$10    
       AND    $E2     
       BNE    LFA52   
       LDA    $8A     
       CMP    #$0A    
       BCC    LFA4E   
       LDA    #$02    
       JSR    LFEE0   
LFA4E: LDA    #$0A    
       BNE    LFA60   
LFA52: LDA    $8A     
       CMP    #$05    
       BCS    LFA5A   
       LDA    #$05    
LFA5A: CMP    #$70    
       BCC    LFA60   
       LDA    #$05    
LFA60: STA    $8A     
       STA    $8E     
LFA64: LDA    $E5     
       BEQ    LFA74   
       LDA    #$3F    
       STA    $82     
       LDA    #$10    
       ORA    $BE     
       STA    $BE     
       BNE    LFAB0   
LFA74: LDX    #$06    
       LDA    $8A     
       CLC            
       ADC    #$05    
       SBC    $80     
LFA7D: DEX            
       SBC    #$15    
       BPL    LFA7D   
       LDA    $A8,X   
       CMP    #$2F    
       BNE    LFAA7   
       JSR    LF779   
       BMI    LFAA7   
       LDY    $BE     
       INY            
       TYA            
       LSR            
       STA    $C9     
       LDA    SWCHA   
       EOR    #$FF    
       AND    #$20    
       STA    $EC     
       BNE    LFAA1   
       LDA    #$00    
LFAA1: ADC    $C9     
       LSR            
       LSR            
       STA    $E5     
LFAA7: STX    $CB     
       LDA    #$01    
       AND    $DD     
       JSR    LFEE0   
LFAB0: JMP    LFF00   
LFAB3: LDA    $BE     
       CMP    #$FF    
       BEQ    LFAE7   
       LDA    $BE     
       CLC            
       ADC    $BF     
       STA    $BF     
       JMP    LFAC6   
LFAC3: JSR    LF8E2   
LFAC6: LDA    SWCHB   
       BPL    LFAD7   
       LDA    $C3     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFCD5,Y 
       BNE    LFAD9   
LFAD7: LDA    #$27    
LFAD9: STA    $C9     
       LDA    $BF     
       CMP    $C9     
       BCC    LFAE3   
       SBC    $C9     
LFAE3: STA    $BF     
       BCS    LFAC3   
LFAE7: LDA    $EA     
       CMP    #$F0    
       BCC    LFAF5   
       LDA    #$00    
       STA    $E5     
       LDA    #$00    
       STA    $BE     
LFAF5: RTS            

LFAF6: .byte $C0,$90,$0A,$C9,$F0,$B0,$04,$A9,$C0,$D0,$02,$A9,$FF,$85,$BE,$60
       .byte $00,$00,$FF,$FF,$E7,$E7,$C3,$C3,$81,$81,$98,$98,$98,$98,$98,$98
       .byte $C8,$68,$68,$28,$68,$68,$2C,$2C,$48,$00,$01,$09,$09,$09,$08,$08
       .byte $07,$5D,$5D,$5D,$5D,$2B,$47,$A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8,$66
       .byte $64,$25,$64,$64,$64,$2A,$4A,$4C,$4C,$4F
LFB40: LDA    $E5     
       LSR            
       BNE    LFB4A   
       BCC    LFB6D   
       JMP    LF422   
LFB4A: STA    AUDV1   
       STA    AUDV0   
       SEC            
       LDA    #$1F    
       SBC    $E5     
       STA    AUDF0   
       STA    AUDF1   
       LDY    #$05    
       STY    AUDC0   
       LDY    #$05    
       LDA    $EC     
       BEQ    LFB6B   
       LDY    #$0C    
       LDA    #$18    
       CMP    $E5     
       BCS    LFB6B   
       LDY    #$08    
LFB6B: STY    AUDC1   
LFB6D: RTS            

LFB6E: .byte $FF,$00,$00,$00,$00,$00,$A0,$5A,$F5,$0F,$00,$00,$00,$80,$60,$D8
       .byte $36,$0D,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18
       .byte $38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06
       .byte $46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60
       .byte $60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66
       .byte $66,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$A0,$00,$00,$00,$00,$0C,$1E,$0C,$10,$10,$10,$AE,$F8,$1E
       .byte $2C,$70,$1C,$18,$30,$18,$10,$06,$1E,$3F,$18,$18,$F7,$7A,$A5,$1E
       .byte $79,$3C,$2A,$1A,$2C,$1C,$18,$07,$0E,$1E,$7C,$EE,$FE,$DE,$6D,$35
       .byte $3E,$1C,$00,$00,$00,$00,$00,$0F,$3F,$7E,$7C,$D6,$BA,$D6,$FE,$7C
       .byte $7C,$38,$7C,$54,$7C,$7C,$38,$C8,$FF,$A9,$A5,$55,$66,$7E,$7E,$7E
       .byte $BE,$8E,$46,$27,$07,$0E,$02,$1F,$3F,$2E,$56,$96,$66,$7E,$7E,$7E
       .byte $BE,$8E,$86,$87,$07,$0E,$02,$1F,$69,$26,$64,$76,$3E,$3C,$3D,$3D
       .byte $7F,$7E,$9C,$3C,$1C,$34,$24,$1F,$16,$64,$26,$6E,$7C,$3C,$BC,$BC
       .byte $FE,$7F,$39,$3C,$3C,$38,$28,$13,$FF,$A5,$AA,$66,$7E,$7E,$7E,$7F
       .byte $71,$60,$E0,$E0,$60,$50,$50,$1F,$3F,$34,$6A,$A9,$66,$7E,$7E,$7E
       .byte $72,$60,$E0,$E0,$60,$50,$50,$1F,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00
LFCD5: .byte $44,$40,$3E,$3C,$38,$36,$34,$32,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFCEF: LDX    #$04    
       LDA    #$20    
       JSR    LFF85   
       LDX    #$03    
       LDA    #$20    
       JSR    LFF85   
       JMP    LFF0C   
LFD00: .byte $06,$07,$05,$0A,$08,$09,$08,$07,$25,$54,$26,$2A,$46,$2A,$36,$2D
       .byte $34,$2C,$26,$3A,$27,$08,$07,$06,$44,$43,$27,$58,$27,$59,$28,$58
       .byte $27,$5A,$26,$57,$27,$07,$06,$05,$26,$26,$27,$27,$28,$28,$27,$27
       .byte $28,$29,$29,$29,$A9,$08,$07,$06,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D
       .byte $0D,$0D,$0D,$0D,$0D,$06,$05,$25,$25,$28,$28,$29,$29,$29,$2A,$2A
       .byte $29,$25,$27,$D0,$07,$06,$05,$25,$25,$28,$28,$29,$29,$29,$2A,$2A
       .byte $29,$25,$27,$D0,$07,$01,$01,$25,$25,$26,$26,$26,$26,$26,$26,$27
       .byte $27,$26,$25,$01,$01,$01,$01,$25,$25,$26,$26,$26,$26,$26,$26,$27
       .byte $27,$26,$25,$01,$01,$05,$06,$08,$08,$09,$0A,$0A,$0A,$0A,$0A,$0A
       .byte $0A,$09,$08,$01,$01,$05,$06,$08,$08,$09,$0A,$0A,$09,$09,$09,$09
       .byte $09,$08,$07,$00,$00,$95,$70,$A9,$C3,$70,$08,$89,$30,$00,$00,$80
       .byte $08,$B0,$0E,$80,$00,$58,$D0,$7C,$B9,$C0,$09,$B0,$08,$89,$D2,$75
       .byte $70,$20,$05,$0F,$55,$0C,$89,$C0,$75,$78,$89,$04,$20,$D0,$04,$B0
       .byte $00,$00,$00
LFDD3: .byte $18,$17,$15,$13,$11,$0F,$0E,$0D,$0C,$0A,$09,$08,$07
LFDE0: .byte $04,$14,$4F,$FE,$00,$FB,$00,$FC,$00,$FD,$0A,$86,$20,$0C,$80,$AA
       .byte $AA,$9A,$AA,$BA,$CA,$DA,$EA,$FA,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$24,$24,$12,$24,$24,$A8,$29
       .byte $B4,$35,$9D,$1C,$9D,$9D,$5D,$5D,$3E,$3E,$18,$18,$18,$18,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$18,$1C,$3C,$3C,$3C,$24,$24,$24,$24,$24,$24,$16,$35,$A4
       .byte $34,$B5,$1C,$1C,$9D,$5D,$5D,$5D,$5D,$3E,$3C,$18,$18,$18,$18,$00
       .byte $00,$00,$00,$0C,$0C,$1E,$3E,$24,$24,$12,$12,$12,$12,$A5,$25,$A8
       .byte $29,$B4,$35,$9D,$1C,$9D,$9D,$5D,$5D,$3E,$3E,$18,$18,$18,$18,$00
       .byte $00,$00,$00,$18,$18,$7C,$7C,$48,$48,$24,$24,$12,$12,$A5,$25,$A8
       .byte $29,$B4,$35,$9D,$1C,$9D,$9D,$5D,$5D,$3E,$3E,$18,$18,$18,$18,$00
       .byte $00,$00,$00,$0C,$3C,$7E,$94,$48,$48,$24,$24,$92,$2A,$95,$14,$A4
       .byte $24,$B6,$1E,$BF,$57,$4E,$56,$5E,$76,$3C,$3C,$18,$18,$18,$18
LFECF: .byte $00
LFED0: .byte $00,$01,$01,$01,$01,$03,$03,$87,$87,$87,$C7,$CF,$EF,$FF,$FF,$00
LFEE0: LDY    $E5     
       BNE    LFEF7   
       CLC            
       ADC    $BE     
       CMP    #$C0    
       BCC    LFEF5   
       CMP    #$F0    
       BCS    LFEF3   
       LDA    #$C0    
       BNE    LFEF5   
LFEF3: LDA    #$FF    
LFEF5: STA    $BE     
LFEF7: RTS            

LFEF8: .byte $05,$84,$15,$A0,$05,$84,$16,$60
LFF00: LDA    SWCHB   
       LSR            
       BCS    LFF22   
       LDA    #$25    
       STA    $C5     
       BNE    LFF24   
LFF0C: JSR    LFF28   
       LDA    #$80    
       STA    $E2     
       RTS            

LFF14: .byte $A9,$08,$85,$DF,$A9,$A8,$A2,$0A
LFF1C: STA    $CD,X   
       DEX            
       DEX            
       BPL    LFF1C   
LFF22: RTS            

LFF23: .byte $48
LFF24: LDA    #$01    
       STA    $C3     
LFF28: LDA    #$00    
       STA    $B9     
       STA    $E1     
       STA    $BE     
       STA    $B8     
       STA    $C1     
       STA    $C0     
       STA    $C2     
LFF38: LDX    #$37    
LFF3A: LDA    LFDE0,X 
       STA    $80,X   
       DEX            
       BPL    LFF3A   
       LDA    #$00    
LFF44: RTS            

LFF45: LDA    $E1     
       BMI    LFF44   
       LDA    $E5     
       BNE    LFF59   
       NOP            
       NOP            
       LDA    $D9     
       BEQ    LFF44   
       LDY    #$00    
       STY    $D9     
       BEQ    LFF5B   
LFF59: LDA    #$10    
LFF5B: CLC            
       SED            
       ADC    $C0     
       STA    $C0     
       LDA    $C1     
       ADC    #$00    
       STA    $C1     
       LDA    $C2     
       ADC    #$00    
       STA    $C2     
       CLD            
       BCC    LFF44   
       LDA    #$40    
       STA    $C5     
       LDA    #$B5    
       JMP    LF424   
LFF79: .byte $EA,$EA,$F3,$E8,$E8,$E0,$0C,$D0,$E5,$60
LFF83: LDX    #$00    
LFF85: STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
LFF8C: DEY            
       BPL    LFF8C   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       RTS            

LFF9A: .byte $60
LFF9B: LDY    #$00    
       STY    $C9     
LFF9F: CMP    #$0F    
       BCC    LFFAA   
       INC    $C9     
       SEC            
       SBC    #$0F    
       BCS    LFF9F   
LFFAA: ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       CLC            
       ADC    $C9     
       RTS            

LFFB4: .byte $85,$02
LFFB6: STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFFBF: .byte $EA,$EA,$29,$0F,$A8,$A9,$A8,$18,$88,$30,$04,$69,$08,$D0,$F9,$85
       .byte $D7,$60,$A5,$DF,$29,$08,$D0,$03,$4C,$A0,$F1,$A5,$DF,$29,$3F,$85
       .byte $DF,$A9,$FF,$EA,$EA,$60,$B9,$30,$F9,$C9,$20,$F0,$09,$38,$E5,$BD
       .byte $0A,$29,$3C,$38,$2A,$0A,$60,$00,$00,$00,$00,$00,$4C,$00,$F0,$00
       .byte $F0
