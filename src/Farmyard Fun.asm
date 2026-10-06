; Disassembly of roms/Farmyard Fun.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Farmyard Fun.bin
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
RESM1   =  $13
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
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
CXCLR   =  $2C
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF060   =   $F060
LF264   =   $F264

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
       JSR    LFF0C   
       LDA    #$FB    
       LDX    #$1B    
       JSR    LFF14   
       LDX    #$26    
       JSR    LFF42   
       JSR    LFF2C   
       JSR    LF33F   
       JSR    LFF38   
LF024: STA    WSYNC   
       LDA    $C1     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LDY    #$00    
       LDX    #$0C    
       LDA    #$00    
       STA    COLUP1  
       STA    HMP1    
LF037: STA    WSYNC   
       STA    VBLANK  
       DEX            
       DEY            
       BPL    LF037   
       LDY    #$07    
LF041: LDA    $C0     
       AND    #$20    
       BNE    LF04D   
       LDA    LF9F8,Y 
       JMP    LF050   
LF04D: LDA    LFD18,Y 
LF050: STA    WSYNC   
       STA    GRP1    
       DEY            
       BPL    LF05C   
       LDA    #$00    
       DEX            
       BPL    LF050   
LF05C: DEX            
       BPL    LF041   
       LDY    #$FF    
       STA    WSYNC   
       INY            
       STY    GRP1    
       LDA    #$20    
       STA    NUSIZ1  
       STA    CTRLPF  
       LDA    #$27    
       STA    COLUP1  
       STA    COLUPF  
       LDA    #$EE    
       STA    HMM1    
       LDA    #$55    
       STA    HMBL    
       JSR    LFF25   
       STA    RESM1   
       STA    RESBL   
       NOP            
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$11    
       STA    HMM1    
       LDA    #$FF    
       STA    HMBL    
       LDA    #$FF    
       STA    ENAM1   
       STA    ENABL   
       LDA    $C8     
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
LF09D: DEX            
       BPL    LF09D   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$00    
       STA    HMP1    
       LDX    #$0F    
       LDA    $C1     
       LDA    #$02    
       TAY            
LF0B3: LDA    #$27    
       STA    COLUPF  
       LDA    LFC30,X 
       STA    WSYNC   
       STA    HMOVE   
       STA    PF1     
       LDA    LFC40,X 
       STA    PF2     
       JSR    LFF29   
       LDA    #$27    
       STA    COLUPF  
       LDA    #$00    
       STA    PF1     
       LDA    LFD50,X 
       STA    PF2     
       DEX            
       DEY            
       BPL    LF0B3   
       LDA    #$07    
       STA    $8A     
LF0DD: LDA    #$00    
LF0DF: STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    #$0F    
       STA    COLUP1  
       LDA    #$27    
       STA    COLUPF  
       LDA    LFC30,X 
       STA    PF1     
       LDA    LFC40,X 
       STA    PF2     
       LDY    #$00    
       LDA    LFD50,X 
       STY    PF1     
       LDY    $8A     
       LDY    $8A     
       STA    PF2     
       LDA    LFD0E,Y 
       LDY    #$27    
       STY    COLUP1  
       DEC    $8A     
       BPL    LF112   
       DEX            
       BPL    LF0DD   
LF112: DEX            
       BPL    LF0DF   
       STY    REFP1   
       LDA    #$3E    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$15    
       STA    COLUPF  
       LDA    #$FF    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       JSR    LFF29   
       LDA    #$00    
       STA    PF1     
       LDA    #$26    
       STA    COLUPF  
       LDA    #$7F    
       STA    PF2     
       LDA    $BC     
       STA    HMP1    
       AND    #$0F    
       TAX            
       LDY    #$38    
       STA    WSYNC   
LF143: DEX            
       BPL    LF143   
       STA    RESP1   
       STA    WSYNC   
       STY    COLUPF  
       STA    HMOVE   
       LDY    #$00    
       STY    ENAM1   
       STY    ENABL   
       LDY    #$0D    
LF156: LDA    LFC50,Y 
       STA    COLUBK  
       LDA    LFDB0,Y 
       LDX    LFDC0,Y 
       STA    WSYNC   
       STA    GRP1    
       STX    COLUP1  
       LDA    #$34    
       STA    COLUPF  
       LDA    LFD90,Y 
       STA    PF1     
       LDA    LFDA0,Y 
       NOP            
       STA    PF2     
       LDA    LFD80,Y 
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       LDA    LFD70,Y 
       NOP            
       STA    PF2     
       LDA    #$0F    
       STA    COLUPF  
       DEY            
       BPL    LF156   
       STA    WSYNC   
       INY            
       STY    GRP1    
       STY    ENAM1   
       STY    ENABL   
       LDA    #$06    
       STA    NUSIZ1  
       NOP            
       PHA            
       PLA            
       STA    RESP1   
       LDA    LFD38,Y 
       STA    PF2     
       LDY    #$07    
LF1A5: LDA    LFD60,Y 
       LDX    LFD68,Y 
       STA    WSYNC   
       STA    GRP1    
       STX    COLUP1  
       LDA    #$2A    
       STA    COLUPF  
       LDA    LFDD0,Y 
       STA    PF1     
       LDA    LFDD8,Y 
       STA    PF2     
       PHA            
       PLA            
       LDA    #$00    
       STA    PF1     
       LDA    #$0F    
       STA    COLUPF  
       LDA    LFD38,Y 
       STA    PF2     
       DEY            
       BPL    LF1A5   
       STA    WSYNC   
       LDA    $CC     
       BEQ    LF1EB   
       LDA    $C0     
       BMI    LF1E3   
       LDA    #$98    
       STA    $DB     
       LDA    #$90    
       BNE    LF1E5   
LF1E3: LDA    #$A8    
LF1E5: STA    $D9     
       LDA    #$44    
       BNE    LF1F5   
LF1EB: LDA    #$80    
       STA    $D9     
       LDA    #$88    
       STA    $DB     
       LDA    $C7     
LF1F5: STA    HMP1    
       AND    #$0F    
       TAX            
       LDA    #$00    
       STA    COLUPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$00    
       STA    NUSIZ1  
       STA    WSYNC   
LF20C: DEX            
       BPL    LF20C   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$35    
       STA    COLUBK  
       LDY    #$08    
       LDA    #$00    
       STA    PF0     
       JMP    LF224   
LF222: LDA    ($D9),Y 
LF224: STA    WSYNC   
       STA    GRP1    
       LDA    ($DB),Y 
       STA    COLUP1  
       LDA    #$D8    
       STA    COLUPF  
       LDA    #$00    
       NOP            
       STA    PF1     
       LDA    #$00    
       NOP            
       STA    PF2     
       PHA            
       PLA            
       LDA    #$00    
       STA    PF1     
       LDA    LFD30,Y 
       STA    PF2     
       LDA    #$0A    
       STA    COLUPF  
       DEY            
       BPL    LF222   
       STA    WSYNC   
       STY    PF1     
       STY    PF0     
       STY    PF2     
       INY            
       STY    COLUPF  
       LDA    $A0     
       STA    HMP1    
       AND    #$0F    
       STA    $C9     
       STA    WSYNC   
       LDA    #$19    
       JMP    LF264   
       STA    COLUBK  
       NOP            
       LDX    $C9     
LF26B: DEX            
       BPL    LF26B   
       STA    RESP1   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$06    
       STA    $89     
       JSR    LF500   
       JSR    LF320   
       JMP    LF7D0   
LF28B: .byte $4C,$D0,$F7,$F7,$F0
LF290: STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       LDA    VSYNC   
       STA    COLUBK  
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STY    REFP1   
       STY    REFP0   
       LDA    #$11    
       STA    RESP0   
       STA    RESP1   
       STA    CTRLPF  
       STA    HMP0    
       LDA    #$20    
       STA    HMP1    
       LDA    $EF     
       JSR    LFD07   
       LDA    $CD     
       ADC    #$07    
       STA    COLUBK  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $F1     
       STA    COLUPF  
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
       STA    HMCLR   
LF2D1: LDA    ($CF),Y 
       TAX            
       LDA    ($CD),Y 
       STY    $8A     
       STA    $C9     
       STA    WSYNC   
       LDA    VSYNC   
       LDA    ($D7),Y 
       STA    GRP0    
       LDA    ($D5),Y 
       STA    GRP1    
       LDA    ($D3),Y 
       STA    GRP0    
       LDA    ($D1),Y 
       LDY    $C9     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $8A     
       DEY            
       BPL    LF2D1   
       INY            
       STA    WSYNC   
       STY    VDELP0  
       STY    VDELP1  
       STY    NUSIZ0  
       STY    NUSIZ1  
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       RTS            

LF30D: .byte $1B,$84,$1C,$00,$44,$66,$88,$77,$99,$BB,$FF,$CC,$DD,$AA,$BB,$CC
       .byte $F9,$CE,$FF
LF320: LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       JMP    LF290   
LF329: .byte $02,$C0,$13,$85,$02,$85
LF32F: RTS            

LF330: LDA    SWCHB   
       AND    #$01    
       BNE    LF32F   
       LDA    $E3     
       AND    #$0F    
       CMP    #$07    
       BCC    LF32F   
LF33F: JSR    LFF1B   
       JSR    LF79C   
       JSR    LFFD9   
       LDA    #$00    
       STA    $F4     
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$F8    
       JMP    LFD43   
LF355: .byte $00,$84,$1C
LF358: JSR    LFF4F   
       LDA    #$10    
       JMP    LF430   
LF360: LDY    #$C7    
       LDA    #$40    
       AND    $C0     
       BNE    LF379   
       LDA    #$00    
       STA    REFP1   
       LDA    $C6     
       JSR    LFB4B   
       CMP    #$73    
       BNE    LF386   
       LDA    #$6D    
       BNE    LF386   
LF379: LDA    #$FF    
       STA    REFP1   
       LDA    $C6     
       JSR    LFB1F   
       BCC    LF386   
       LDA    #$73    
LF386: STA    $C6     
       LDA    $E3     
       CMP    #$F7    
       BNE    LF39A   
       LDA    #$FF    
       EOR    $83     
       STA    $83     
       LDA    #$7F    
       AND    $E5     
       STA    $E5     
LF39A: AND    #$3F    
       CMP    #$3F    
       BNE    LF3EE   
       JSR    LFFCC   
       LDA    #$02    
       AND    $C0     
       BNE    LF3B1   
       LDY    #$08    
       LDA    ($E3),Y 
       EOR    $AE     
       STA    $AE     
LF3B1: LDA    #$04    
       AND    $C0     
       BNE    LF3BF   
       LDY    #$45    
       LDA    ($E3),Y 
       EOR    $AF     
       STA    $AF     
LF3BF: LDY    $EC     
       LDA    #$08    
       AND    $C0     
       BNE    LF3EE   
       LDA    ($A0),Y 
       LDX    #$00    
       SEC            
       STX    $EC     
       ROL    $EC     
       DEY            
       AND    #$0F    
       STA    $8A     
       LDA    $C7     
       AND    #$0F    
       CMP    $8A     
       BCC    LF3E6   
       LDA    #$FF    
       EOR    $EC     
       AND    $83     
       JMP    LF3EC   
LF3E6: LDA    #$00    
       EOR    #$EC    
       ORA    $83     
LF3EC: STA    $83     
LF3EE: AND    #$07    
       CMP    #$07    
       BNE    LF3FA   
       LDA    #$20    
       EOR    $C0     
       STA    $C0     
LF3FA: RTS            

LF3FB: .byte $C8,$18,$A6,$C6,$E8
LF400: .byte $15,$13,$11,$0F,$2E,$2C,$0B,$0A,$09,$28,$07,$05,$1F,$3A,$17,$F1
       .byte $F5,$62,$71,$1F,$F7,$63,$AC,$FC,$A7,$77,$A7,$77,$FF,$FC
LF41E: BPL    LF44F   
       LDA    #$F5    
       STA    AUDC1   
       LDY    $E8     
       CPY    #$B4    
       BCC    LF44F   
       NOP            
       TYA            
       LDX    #$01    
       BNE    LF432   
LF430: LDX    #$00    
LF432: LDY    #$F4    
LF434: CPX    #$00    
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
LF44F: RTS            

LF450: DEC    $E6,X   
       BNE    LF458   
       LDA    #$00    
       BEQ    LF474   
LF458: BMI    LF477   
       LDA    $E6,X   
       CMP    #$08    
       AND    #$0F    
       TAY            
       BCC    LF471   
       CPX    #$01    
       BEQ    LF46C   
       LDA    LFC1E,Y 
       BNE    LF474   
LF46C: LDA    LFC1C,Y 
       BNE    LF474   
LF471: LDA    LFC1A,Y 
LF474: STA    AUDV0,X 
       RTS            

LF477: LDY    #$00    
       TXA            
       BNE    LF481   
       LDA    ($E8),Y 
       JMP    LF483   
LF481: LDA    ($EA),Y 
LF483: CMP    #$F0    
       BCC    LF48F   
       STA    AUDC0,X 
       JSR    LF4A3   
       JMP    LF477   
LF48F: PHA            
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
LF4A3: CPX    #$01    
       BEQ    LF4AA   
       INC    $E8     
       RTS            

LF4AA: INC    $EA     
       RTS            

LF4AD: .byte $F8,$A3,$F7,$8A,$7A,$5A,$2A,$F5,$07,$20,$07,$20,$07,$27,$17,$07
       .byte $E7,$37,$27,$27,$07,$20,$07,$20,$07,$27,$17,$07,$E7,$D0,$07,$33
       .byte $4B,$57,$37,$37,$27,$23,$E3,$0B,$17,$E7,$07,$17,$27,$27,$33,$4B
       .byte $57,$37,$37,$27,$23,$E7,$07,$17,$E7,$20,$07,$20,$07,$20,$07,$27
       .byte $17,$07,$E7,$37,$27,$27,$07,$20,$07,$20,$07,$27,$17,$07,$E7,$D7
       .byte $C0,$1F,$1F
LF500: LDA    $83     
       ROR            
       BCS    LF509   
       LDA    #$FF    
       BNE    LF50B   
LF509: LDA    #$00    
LF50B: STA    REFP1   
       JMP    LF51F   
LF510: .byte $14,$B0,$FC,$69,$14,$48,$65,$A8,$85,$A8,$68,$65,$AA,$85,$AA
LF51F: LDA    #$15    
       STA    $82     
       LDA    #$44    
       STA    COLUP1  
       LDA    #$0F    
       STA    COLUPF  
LF52B: DEC    $89     
       BPL    LF530   
       RTS            

LF530: BNE    LF55F   
       LDA    $F6     
       STA    $86     
       LDA    #$0F    
       STA    COLUP1  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$95    
       STA    COLUPF  
       LDY    #$15    
       LDA    #$00    
       STA    GRP1    
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
LF552: LDY    #$1A    
       DEC    $81     
       BNE    LF55B   
       JMP    LF73F   
LF55B: DEY            
       JMP    LF567   
LF55F: LDY    #$15    
LF561: STA    WSYNC   
       LDA    ($86),Y 
       STA    GRP1    
LF567: DEY            
       DEC    $81     
       BNE    LF571   
       LDA    #$00    
       JMP    LF63E   
LF571: CPY    #$08    
       BNE    LF561   
LF575: STA    WSYNC   
       LDA    ($86),Y 
       STA    GRP1    
       NOP            
       LDA    $B4     
       STA    PF1     
       LDA    $B5     
       STA    PF2     
       PHA            
       PLA            
       PHA            
       PLA            
       NOP            
       NOP            
       LDA    $B6     
       STA    PF1     
       LDA    $B7     
       STA    PF2     
       DEY            
       DEC    $81     
       BNE    LF5A3   
       LDA    #$00    
       CPY    #$05    
       BNE    LF5A0   
       JMP    LF673   
LF5A0: JMP    LF642   
LF5A3: CPY    #$05    
       BNE    LF575   
       STA    WSYNC   
       LDX    $89     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $98,X   
       AND    #$AA    
       STA    $B4     
       EOR    $98,X   
       STA    $B5     
       LDA    $90,X   
       AND    #$AA    
       STA    $B6     
       EOR    $90,X   
       STA    $B7     
       DEY            
       DEC    $81     
       BNE    LF5D5   
       LDA    #$00    
       JMP    LF6A7   
LF5D5: NOP            
       STA    WSYNC   
       DEY            
       LDX    $89     
       LDA    $A0,X   
       STA    HMP1    
       AND    #$0F    
       STA    $C9     
       DEC    $81     
       BNE    LF5EC   
       LDA    #$00    
       JMP    LF6C0   
LF5EC: DEY            
       STA    WSYNC   
       NOP            
       NOP            
       PHA            
       PLA            
       NOP            
       LDX    $C9     
LF5F6: DEX            
       BPL    LF5F6   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       DEC    $81     
       BNE    LF60A   
       LDA    #$00    
       STA    GRP0    
       JMP    LF6E2   
LF60A: LDA    $BB     
       BMI    LF612   
       LDA    #$0F    
       BNE    LF614   
LF612: LDA    #$00    
LF614: STA    REFP1   
       DEY            
       ASL    $BB     
       BCC    LF61D   
       INC    $BB     
LF61D: DEC    $81     
       BNE    LF624   
       JMP    LF713   
LF624: JMP    LF52B   
LF627: STA    WSYNC   
LF629: STX    COLUP0  
       STA    GRP0    
       LDA    ($86),Y 
       STA    GRP1    
LF631: DEY            
       DEC    $82     
       BNE    LF639   
       JMP    LF571   
LF639: LDA    ($A8),Y 
       TAX            
       LDA    ($AA),Y 
LF63E: CPY    #$08    
       BNE    LF627   
LF642: STA    WSYNC   
       STX    COLUP0  
       STA    GRP0    
       LDA    ($86),Y 
       STA    GRP1    
       LDA    $B4     
       STA    PF1     
       LDA    $B5     
       STA    PF2     
       DEY            
       LDA    ($A8),Y 
       TAX            
       LDA    ($AA),Y 
       STA    $B9     
       LDA    $B6     
       STA    PF1     
       LDA    $B7     
       STA    PF2     
       LDA    $B9     
       DEC    $82     
       BNE    LF66D   
       JMP    LF5A3   
LF66D: CPY    #$05    
       BNE    LF642   
       LDA    $B9     
LF673: STA    WSYNC   
       STX    COLUP0  
       LDX    $89     
       STA    GRP0    
       LDA    #$00    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $98,X   
       AND    #$AA    
       STA    $B4     
       EOR    $98,X   
       STA    $B5     
       LDA    $90,X   
       AND    #$AA    
       STA    $B6     
       EOR    $90,X   
       STA    $B7     
       DEY            
       DEC    $82     
       BNE    LF6A1   
       JMP    LF5D5   
LF6A1: LDA    ($A8),Y 
       STA    COLUP0  
       LDA    ($AA),Y 
LF6A7: STA    GRP0    
       DEY            
       LDX    $89     
       LDA    $A0,X   
       STA    HMP1    
       AND    #$0F    
       STA    $C9     
       DEC    $82     
       BNE    LF6BB   
       JMP    LF5EC   
LF6BB: LDA    ($A8),Y 
       TAX            
       LDA    ($AA),Y 
LF6C0: STA    WSYNC   
       STA    GRP0    
       STX    COLUP0  
       DEY            
       LDA    ($A8),Y 
       LDX    $C9     
LF6CB: DEX            
       BPL    LF6CB   
       STA    RESP1   
       TAX            
       STA    WSYNC   
       LDA    ($AA),Y 
       STA    HMOVE   
       STX    COLUP0  
       STA    GRP0    
       DEC    $82     
       BNE    LF6E2   
       JMP    LF60A   
LF6E2: LDA    $BB     
       BMI    LF6EA   
       LDA    #$0F    
       BNE    LF6EC   
LF6EA: LDA    #$00    
LF6EC: STA    REFP1   
       ASL    $BB     
       BCC    LF6F4   
       INC    $BB     
LF6F4: DEC    $82     
       BNE    LF6FB   
       JMP    LF52B   
LF6FB: SEC            
       LDA    $AA     
       SBC    #$14    
       STA    $AA     
       SEC            
       LDA    $A8     
       SBC    #$14    
       STA    $A8     
       LDY    #$15    
       LDA    ($A8),Y 
       STA    COLUP0  
       LDA    ($AA),Y 
       STA    GRP0    
LF713: LDY    #$15    
       LDA    ($86),Y 
       STA    GRP1    
       DEC    $89     
       BPL    LF71E   
       RTS            

LF71E: BNE    LF755   
       STA    WSYNC   
       LDA    #$95    
       STA    COLUPF  
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       STA    PF0     
       LDA    $F6     
       STA    $86     
       LDA    #$0F    
       STA    COLUP1  
       LDY    #$1A    
       DEC    $82     
       BNE    LF73F   
       JMP    LF552   
LF73F: SEC            
       LDA    $A8     
       SBC    #$06    
       STA    $A8     
       LDA    $AA     
       SBC    #$06    
       STA    $AA     
       LDA    ($A8),Y 
       TAX            
       LDA    ($AA),Y 
       DEY            
       JMP    LF629   
LF755: JMP    LF631   
LF758: JSR    LFF10   
LF75B: LDA    #$F8    
       STA    $DD     
       LDA    #$00    
LF761: STA    $F4     
LF763: RTS            

LF764: BMI    LF75B   
       LDA    #$40    
       BNE    LF761   
LF76A: LDA    $E3     
       AND    #$03    
       BEQ    LF773   
       LDA    $F4     
       RTS            

LF773: LDA    #$20    
       AND    $E5     
       BNE    LF782   
       LDA    #$40    
       LDX    #$01    
       LDY    #$FD    
       JSR    LF434   
LF782: LDA    #$20    
       EOR    $F4     
       RTS            

LF787: .byte $00,$00
LF789: LDA    $90     
       BNE    LF763   
       LDA    $98     
       BNE    LF763   
       LDA    SWCHB   
       AND    #$40    
       BNE    LF79C   
       LDA    #$73    
       STA    $C8     
LF79C: LDA    $E5     
       JMP    LF8BF   
LF7A1: .byte $00
LF7A2: STA    CXCLR   
       LDA    #$A8    
       STA    $DD     
       LDA    $E3     
       BPL    LF7BB   
       LDY    #$08    
       LDX    #$04    
LF7B0: LDA    $C1,X   
       STA.wy $00CD,Y 
       DEY            
       DEY            
       DEX            
       BPL    LF7B0   
       RTS            

LF7BB: LDA    #$60    
       STA    $D5     
       LDA    #$68    
       STA    $D3     
       LDA    #$70    
       STA    $D1     
       LDA    #$78    
       STA    $CF     
       LDA    #$A0    
       STA    $CD     
       RTS            

LF7D0: LDA    #$FF    
       STA    VBLANK  
       LDA    #$22    
       STA    TIM64T  
       LDX    #$00    
       JSR    LF44B   
       LDX    #$01    
       JSR    LF44B   
       LDY    $E7     
       JSR    LF41E   
       JSR    LF9CE   
       LDA    $DD     
       STA    $D7     
       LDX    $E6     
       BPL    LF7F8   
       LDA    #$B3    
       JSR    LF430   
LF7F8: LDA    #$40    
       AND    $F4     
       BEQ    LF804   
       JSR    LF7A2   
       JMP    LF807   
LF804: JSR    LF83D   
LF807: LDA    INTIM   
       BNE    LF807   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$27    
       STA    TIM64T  
       JSR    LFCC8   
       JSR    LF940   
       LDA    #$00    
       STA    HMCLR   
       STA    CXCLR   
       JSR    LF330   
LF82E: LDA    INTIM   
       BNE    LF82E   
       JMP    LF024   
LF836: .byte $1B,$C6
LF838: LDA    #$00    
       STA    $CC     
LF83C: RTS            

LF83D: LDA    $CC     
       LDX    #$07    
       SEC            
       ADC    #$17    
LF844: DEX            
       BEQ    LF8AC   
       SBC    #$14    
       CMP    #$0D    
       BCS    LF844   
       CPX    #$06    
       BNE    LF853   
       LDX    #$00    
LF853: STX    $EC     
       LDA    $CB     
       SEC            
       SBC    #$2A    
       TAY            
       CPY    #$50    
       BCC    LF868   
       SEC            
       TYA            
       SBC    #$50    
       TAY            
       LDA    $90,X   
       BCS    LF86A   
LF868: LDA    $98,X   
LF86A: STA    $C9     
       TYA            
       SEC            
       SBC    #$0A    
       LDX    #$08    
LF872: DEX            
       BMI    LF8AC   
       SBC    #$08    
       CMP    #$05    
       BCS    LF872   
       LDA    LFCF8,X 
       AND    $C9     
       BEQ    LF8AC   
       STA    $C9     
       LDX    $EC     
       LDA    $CC     
       CMP    #$00    
       BEQ    LF8AC   
       LDY    $CB     
       CPY    #$7A    
       BCC    LF89B   
       LDA    $90,X   
       EOR    $C9     
       STA    $90,X   
       CLC            
       BCC    LF8A1   
LF89B: LDA    $98,X   
       EOR    $C9     
       STA    $98,X   
LF8A1: LDA    $E5     
       AND    #$07    
       CLC            
       ADC    #$01    
       TAY            
       JSR    LF358   
LF8AC: LDX    #$05    
LF8AE: LDA    $90,X   
       BNE    LF83C   
       LDA    $98,X   
       BNE    LF83C   
       DEX            
       CPX    #$01    
       BNE    LF8AE   
       NOP            
       JMP    LF789   
LF8BF: AND    #$07    
       CMP    #$07    
       BNE    LF8D8   
       LDA    #$F8    
       AND    $E5     
       STA    $E5     
       SEC            
       ROL    $EE     
       LDY    $EE     
       STY    $AC     
       AND    #$0F    
       EOR    #$B3    
       STA    $F3     
LF8D8: LDA    #$14    
       JSR    LF430   
       NOP            
       LDA    $E5     
       AND    #$07    
       INC    $E5     
       TAY            
       ASL            
       ASL            
       STA    $C9     
       LDA    LFCD8,Y 
       STA    $85     
       LDA    #$00    
       NOP            
       STA    $F6     
       LDX    #$03    
       LDY    $C9     
       LDA    LFCA8,Y 
       STA    $C0     
       INY            
       DEX            
LF8FE: LDA    LFCA8,Y 
       STA    $AC,X   
       INY            
       DEX            
       BPL    LF8FE   
       LDA    $C9     
       ASL            
       TAY            
       LDX    #$06    
       LDA    LFC90,Y 
       STA    $F8     
       LDA    LFC60,Y 
       STA    $F8     
       INY            
LF918: LDA    LFC90,Y 
       ORA    #$CA    
       STA    $90,X   
       LDA    LFC60,Y 
       STA    $98,X   
       LDA    #$33    
       STA    $A0,X   
       INY            
       DEX            
       BPL    LF918   
       JMP    LF838   
LF92F: .byte $81,$38,$E9,$14,$B0,$FC,$69,$14,$48,$65,$A8,$85,$A8,$68,$65,$AA
       .byte $85
LF940: LDA    $8D     
       STA    $A8     
       LDA    $8E     
       STA    $AA     
       LDA    $83     
       ASL            
       ASL            
       AND    #$F0    
       STA    $BB     
       LDA    $81     
       SEC            
LF953: SBC    #$14    
       BCS    LF953   
       ADC    #$14    
       PHA            
       ADC    $A8     
       STA    $A8     
       PLA            
       ADC    $AA     
       STA    $AA     
       LDA    $85     
       STA    $86     
       RTS            

LF968: .byte $4E,$4E,$4E,$35,$35,$36,$36,$2F,$2F,$2F,$4F,$4F,$49,$47,$47,$47
       .byte $66,$66,$66,$24,$24,$14,$14,$24,$00,$00,$00,$00,$30,$33,$17,$14
       .byte $14,$5C,$5C,$5C,$5E,$3F,$09,$1D,$2A,$2A,$7E,$3F,$1C,$02,$85,$CB
       .byte $1F,$1F,$0F,$07,$03,$01,$00,$00,$00,$00,$00,$00,$30,$3B,$17,$14
       .byte $14,$5C,$5C,$5D,$7F,$1E,$08,$1C,$2A,$2A,$3E,$3F,$1C,$FF,$7E,$1F
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LF9CE: LDA    $8E     
       CMP    #$B8    
       BNE    LF9D8   
       LDA    #$A0    
       STA    $8E     
LF9D8: JMP    LFA00   
LF9DB: .byte $F0,$43,$A9,$47,$D0,$00,$00,$AA,$A5,$85,$4E,$4E,$4E,$35,$35,$36
       .byte $36,$2F,$2F,$2F,$4F,$47,$47,$47,$47,$47,$47,$47,$47
LF9F8: .byte $00,$00,$00,$08,$18,$E7,$00,$00
LFA00: LDA    SWCHA   
       CMP    #$F0    
       BCS    LFA0D   
       JSR    LF76A   
       NOP            
       STA    $F4     
LFA0D: LDA    #$20    
       AND    $F4     
       BEQ    LFA15   
       LDA    #$FF    
LFA15: STA    REFP0   
       LDA    REFP1   
       BMI    LFA2A   
       LDA    #$B7    
       BNE    LFA21   
LFA1F: LDA    #$F7    
LFA21: AND    $E5     
       LDY    #$FF    
       STY    $8A     
       CLC            
       BCC    LFA38   
LFA2A: LDA    #$40    
       AND    $E5     
       BNE    LFA1F   
       LDA    #$48    
       ORA    $E5     
       LDY    #$00    
       STY    $8A     
LFA38: STA    $E5     
       LDA    SWCHA   
       AND    #$30    
       BNE    LFA44   
       JMP    LFACC   
LFA44: ASL            
       ASL            
       BMI    LFA50   
       LDY    #$63    
       STY    $8D     
       INC    $CC     
       BNE    LFA59   
LFA50: ASL            
       BMI    LFA5D   
       LDY    #$E0    
       STY    $8D     
       DEC    $CC     
LFA59: LDA    #$80    
       STA    $8E     
LFA5D: LDA    $CC     
       BEQ    LFA90   
       CMP    #$FF    
       BEQ    LFA90   
       CMP    #$01    
       BNE    LFA96   
       LDA    #$08    
       AND    $E5     
       BEQ    LFA94   
       LDA    $CB     
       SBC    #$35    
       CMP    #$10    
       BCS    LFA90   
       LDA    $C0     
       BMI    LFA90   
       LDA    #$80    
       EOR    $C0     
       STA    $C0     
       LDA    #$80    
       ORA    $E5     
       STA    $E5     
       LDA    #$00    
       STA    $E3     
       LDA    #$17    
       JSR    LF430   
LFA90: LDA    #$00    
       BEQ    LFACE   
LFA94: LDA    #$02    
LFA96: CMP    #$4E    
       BNE    LFAA2   
       LDY    $8A     
       BNE    LFAB8   
LFA9E: LDA    #$5A    
       BNE    LFACE   
LFAA2: CMP    #$5B    
       BNE    LFAAE   
       LDY    #$5B    
       BNE    LFA9E   
LFAAA: LDA    #$65    
       BNE    LFACE   
LFAAE: CMP    #$59    
       BNE    LFABC   
       LDY    $8A     
       BNE    LFA9E   
       STA    CXCLR   
LFAB8: LDA    #$4D    
       BNE    LFACE   
LFABC: CMP    #$66    
       BNE    LFAC2   
       BEQ    LFAAA   
LFAC2: CMP    #$64    
       BNE    LFACE   
       LDY    $8A     
       BEQ    LFA9E   
       BNE    LFAAA   
LFACC: LDA    $CC     
LFACE: STA    $CC     
       STA    $81     
       LDA    $CC     
       CMP    #$5A    
       BNE    LFAE8   
       LDA    $CB     
       SBC    $CA     
       SBC    #$10    
       CMP    #$20    
       BCS    LFB18   
       LDA    $CA     
       ADC    #$2C    
       STA    $CB     
LFAE8: LDA    SWCHA   
       BMI    LFAF6   
       LDA    #$A0    
       STA    $8E     
       INC    $CB     
       JMP    LFAFF   
LFAF6: ASL            
       BMI    LFAFF   
       LDA    #$A0    
       STA    $8E     
       DEC    $CB     
LFAFF: LDA    $CB     
       CMP    #$2F    
       BCS    LFB07   
       LDA    #$30    
LFB07: CMP    #$C6    
       BCC    LFB0D   
       LDA    #$C4    
LFB0D: STA    $CB     
       JSR    LFF9B   
       STA    $C7     
       JSR    LFF86   
       RTS            

LFB18: JMP    LFFB4   
LFB1B: .byte $00,$FF
LFB1D: LDY    #$97    
LFB1F: STY    $8A     
       SEC            
       SBC    #$10    
       PHA            
       AND    #$F0    
       CMP    #$80    
       BNE    LFB32   
       PLA            
       SEC            
       SBC    #$0F    
       SEC            
       BCS    LFB33   
LFB32: PLA            
LFB33: PHA            
       CLC            
       ROL            
       ROL            
       ROL            
       ROL            
       EOR    #$03    
       CMP    #$07    
       BCC    LFB46   
       CMP    $8A     
       BCS    LFB46   
       CLC            
       PLA            
       RTS            

LFB46: SEC            
       PLA            
       RTS            

LFB49: LDY    #$97    
LFB4B: STY    $8A     
       CLC            
       ADC    #$10    
       PHA            
       AND    #$F0    
       CMP    #$80    
       BNE    LFB32   
       PLA            
       CLC            
       ADC    #$0F    
       CLC            
       BCC    LFB33   
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
       BRK            
       BRK            
       BIT    INPT5   
       .byte $7F ;.RRA
       LDY    $3C3C,X 
       ROR    $2E1C,X 
       .byte $34 ;.NOP
       AND    $55,X   
       .byte $4F ;.SRE
       .byte $47 ;.SRE
       .byte $47 ;.SRE
       .byte $47 ;.SRE
       BRK            
       .byte $3C ;.NOP
       ROR    LFFFF,X 
       .byte $FF ;.ISB
       ROR.wx $0076,X 
       LSR            
       PHA            
       .byte $47 ;.SRE
       .byte $47 ;.SRE
       PHA            
       EOR    #$54    
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
       ROR    $66     
       ROR    $66     
       ROR    $66     
       .byte $3C ;.NOP
       .byte $3C ;.NOP
       CLC            
       CLC            
       CLC            
       CLC            
       CLC            
       SEC            
       CLC            
       ROR    $6060,X 
       .byte $3C ;.NOP
       ASL    COLUP0  
       LSR    INPT4   
       .byte $3C ;.NOP
       LSR    COLUP0  
       .byte $0C ;.NOP
       .byte $0C ;.NOP
       ASL    $46     
       .byte $3C ;.NOP
       .byte $0C ;.NOP
       .byte $0C ;.NOP
       .byte $0C ;.NOP
       ROR    $2C4C,X 
       .byte $1C ;.NOP
       .byte $0C ;.NOP
       .byte $7C ;.NOP
       LSR    COLUP0  
       ASL    $7C     
       RTS            

LFBDE: .byte $60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66
       .byte $66,$3C,$10,$14,$14,$14,$3C,$00,$00,$00,$00,$00,$84,$3E,$7E,$63
       .byte $7B,$7D,$3D,$7F,$7C,$41,$40,$40,$40,$C0,$60,$00
LFC1A: .byte $22,$44
LFC1C: .byte $DD,$55
LFC1E: .byte $66,$77,$88,$99,$AA,$CC,$EE,$FF,$00,$00,$00,$60,$05,$07,$0F,$1F
       .byte $3F,$7F
LFC30: .byte $FF,$7F,$3F,$1F,$0F,$07,$03,$01,$00,$00,$00,$00
LFC3C: .byte $00,$00,$00,$00
LFC40: .byte $FF,$7F,$3F,$1F,$0F,$07,$03,$01,$00,$00,$00,$00
LFC4C: .byte $00,$00,$00,$00
LFC50: .byte $39,$39,$59,$3A,$5A,$3B,$5B,$3C,$5C,$3D,$DD,$3E,$5E,$EF,$5F,$3F
LFC60: .byte $7A,$AB,$2A,$27,$27,$27,$48,$48,$28,$28,$3C,$6E,$5E,$5E,$FE,$EE
       .byte $C2,$02,$03,$07,$02,$07,$26,$24,$24,$18,$3C,$6E,$5F,$5F,$FF,$EE
       .byte $C2,$02,$03,$07,$02,$02,$41,$42,$24,$14,$66,$DE,$7E,$EE,$46,$C2
LFC90: .byte $02,$02,$02,$03,$03,$03,$24,$24,$24,$18,$3C,$5E,$BE,$7E,$E2,$42
       .byte $C2,$02,$02,$03,$02,$00,$00,$00
LFCA8: .byte $42,$00,$00,$00,$02,$00,$22,$00,$42,$00,$00,$00,$02,$00,$22,$00
       .byte $24,$00,$AA,$00,$44,$00,$FA,$00,$16,$AA,$88,$00,$26,$FD,$31,$00
LFCC8: LDA    SWCHA   
       AND    #$10    
       BEQ    LFCD3   
       LDA    #$63    
       STA    $8D     
LFCD3: JMP    LFE30   
LFCD6: .byte $00,$00
LFCD8: .byte $60,$60,$60,$80,$80,$60,$60,$80,$10,$00,$00,$00,$F2,$00,$00,$00
       .byte $20,$00,$FF,$00,$F4,$00,$FF,$00,$F0,$07,$68,$48,$4A,$4A,$4C,$DD
LFCF8: .byte $40,$10,$04,$01,$02,$08,$20,$80,$FC,$60,$50,$80,$90,$A0,$FF
LFD07: STA    WSYNC   
       STA    HMOVE   
       RTS            

LFD0C: .byte $C0,$D0
LFD0E: .byte $00,$3C,$7E,$EF,$FF,$DF,$7E,$3C,$7E,$CC
LFD18: .byte $00,$00,$08,$99,$66,$00,$00,$00,$00,$18,$7E,$FF,$FF,$00,$00,$00
       .byte $00,$00,$50,$50,$F8,$00,$00,$00
LFD30: .byte $7F,$55,$7F,$55,$7F,$7F,$7F,$7F
LFD38: .byte $7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$F9,$BB,$1F
LFD43: STA    $DD     
       STA    $E7     
       STA    $E6     
       RTS            

LFD4A: .byte $00,$00,$00,$00,$00,$00
LFD50: .byte $7F,$7F,$7F,$7F,$7E,$3E,$3E,$3E,$3C,$1C,$1C,$1C,$1C,$08,$08,$08
LFD60: .byte $18,$24,$D3,$30,$3C,$7E,$7E,$3C
LFD68: .byte $54,$53,$54,$54,$55,$48,$47,$47
LFD70: .byte $63,$7F,$6B,$7F,$63,$7F,$6B,$7F,$63,$7F,$7F,$7F,$7F,$7F,$7F,$7F
LFD80: .byte $00,$00,$55,$00,$55,$00,$00,$AA,$00,$00,$AA,$00,$31,$00,$55,$31
LFD90: .byte $40,$08,$55,$01,$33,$03,$27,$86,$0C,$2C,$19,$30,$32,$60,$42,$14
LFDA0: .byte $3F,$1F,$0E,$03,$41,$09,$20,$04,$00,$10,$00,$04,$00,$02,$01,$00
LFDB0: .byte $80,$04,$10,$40,$7E,$7E,$66,$66,$7E,$FF,$7E,$3C,$18,$00,$02,$06
LFDC0: .byte $27,$26,$33,$44,$0F,$0F,$0F,$0F,$0F,$26,$27,$28,$29,$44,$66,$24
LFDD0: .byte $00,$00,$1C,$3E,$7F,$7F,$00,$00
LFDD8: .byte $00,$00,$50,$50,$50,$F8,$F8,$00,$4A,$4A,$4A,$4A,$A8,$18,$65,$ED
       .byte $C9,$0F,$90,$03,$E9,$0F,$C8,$49,$07,$0A,$0A,$0A,$0A,$60,$F6,$B3
       .byte $39,$51,$45,$3F,$B6,$95,$42,$04
LFE00: .byte $7F,$40,$4F,$AA,$01,$21,$00,$FC,$00,$00,$00,$00,$20,$60,$80,$FF
       .byte $52,$20,$8D,$26,$03,$AD,$57,$C0,$AD,$53,$C0,$AD
LFE1C: .byte $50,$C0,$A9,$00,$33,$43,$53,$63,$73,$35,$45,$55,$65,$F9,$31,$F9
       .byte $00,$FF,$00,$03
LFE30: LDA    $AC     
       JSR    LFEB1   
       LDA    $AD     
       JSR    LFEB1   
       LDA    $E3     
       AND    #$01    
       BNE    LFE4B   
       LDA    $AE     
       JSR    LFEB1   
       LDA    #$10    
       EOR    $85     
       STA    $85     
LFE4B: LDA    $E5     
       BPL    LFE53   
       LDA    #$B8    
       STA    $8E     
LFE53: LDA    $E3     
       AND    #$03    
       CMP    #$03    
       BNE    LFE63   
       LDA    $AF     
       JSR    LFEB1   
       JSR    LF360   
LFE63: INC    $E3     
       STA    HMCLR   
       LDA    $C6     
       LDX    #$01    
       JSR    LFF88   
       LDA    $CA     
       CLC            
       ADC    #$00    
       JSR    LFF9B   
       STA    $A1     
       INC    $CA     
       LDA    $CA     
       CMP    #$94    
       BCC    LFE93   
       LDA    #$5A    
       CMP    $CC     
       BNE    LFE91   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$2E    
       STA    $CB     
LFE91: LDA    #$05    
LFE93: STA    $CA     
       LDA    COLUP1  
       BPL    LFEAA   
       LDA    $E5     
       BMI    LFEAA   
       LDA    $CC     
       CMP    #$5A    
       BEQ    LFEAA   
       LDA    #$00    
       STA    $CC     
       JSR    LFFB4   
LFEAA: LDA    ($E3),Y 
       EOR    $AF     
       STA    $AF     
       RTS            

LFEB1: STA    $C9     
       LDX    #$07    
LFEB5: LDA    $C9     
       BPL    LFEDD   
       LDA    $A0,X   
       LDY    $83     
       BPL    LFEE9   
       JSR    LFB1D   
LFEC2: BCC    LFEDB   
       AND    #$0F    
       CMP    #$05    
       BCS    LFECE   
       LDA    #$90    
       BNE    LFED0   
LFECE: LDA    #$99    
LFED0: STA    $A0,X   
       LDA    $83     
       EOR    #$80    
       STA    $83     
       JMP    LFEDD   
LFEDB: STA    $A0,X   
LFEDD: ASL    $83     
       BCC    LFEE3   
       INC    $83     
LFEE3: ASL    $C9     
       DEX            
       BPL    LFEB5   
       RTS            

LFEE9: JSR    LFB49   
       JMP    LFEC2   
LFEEF: .byte $60,$45,$C0,$85,$C0,$60,$A5,$C8,$20,$1F,$FB,$85,$C8,$C9,$AA,$D0
       .byte $04,$A9,$73,$85,$C8,$60,$E0,$09,$B0,$02,$A9,$01,$60
LFF0C: STA    $EE     
       STA    $E5     
LFF10: LDA    #$A8    
       LDX    #$0A    
LFF14: STA    $CD,X   
       DEX            
       DEX            
       BPL    LFF14   
       RTS            

LFF1B: LDA    #$00    
       STA    $E3     
       STA    $DD     
       BEQ    LFF0C   
       PHA            
       PLA            
LFF25: PHA            
       PLA            
       PHA            
       PLA            
LFF29: PHA            
       PLA            
       RTS            

LFF2C: LDY    #$0F    
LFF2E: LDA    LFD80,Y 
       STA.wy $0090,Y 
       DEY            
       BPL    LFF2E   
       RTS            

LFF38: JSR    LFFE7   
       LDA    #$40    
       .byte $8F ;.SAX
       .byte $F4 ;.NOP
       RTS            

LFF40: .byte $F9,$60
LFF42: LDX    #$2F    
LFF44: LDA    LFE00,X 
       STA    $80,X   
       DEX            
       BPL    LFF44   
       LDA    #$00    
       RTS            

LFF4F: JSR    LFF65   
       DEY            
       BPL    LFF4F   
       RTS            

LFF56: .byte $20,$62,$FF,$4C,$65,$FF,$20,$5F,$FF,$20,$62,$FF,$20,$65,$FF
LFF65: LDX    #$00    
LFF67: LDA    $CD,X   
       CMP    #$A8    
       CLC            
       BNE    LFF70   
       ADC    #$08    
LFF70: ADC    #$08    
       STA    $CD,X   
       CMP    #$00    
       BNE    LFF85   
       LDA    #$B0    
       STA    $CD,X   
       INX            
       INX            
       CPX    #$08    
       BNE    LFF67   
       JMP    LF758   
LFF85: RTS            

LFF86: LDX    #$00    
LFF88: STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
LFF8F: DEY            
       BPL    LFF8F   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       RTS            

LFF9B: LDY    #$00    
       STY    $8A     
LFF9F: CMP    #$0F    
       BCC    LFFAA   
       INC    $8A     
       SEC            
       SBC    #$0F    
       BCS    LFF9F   
LFFAA: ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       CLC            
       ADC    $8A     
LFFB3: RTS            

LFFB4: LDA    $CA     
       ADC    #$2B    
       STA    $CB     
       LDA    #$5A    
       STA    $CC     
       STA    $C8     
       NOP            
       LDA    #$40    
       EOR    $C0     
       STA    $C0     
       LDA    #$AD    
       JSR    LF430   
LFFCC: LDA    $C8     
       JSR    LFB1F   
       STA    $C8     
       AND    #$0F    
       CMP    #$0A    
       BCC    LFFB3   
LFFD9: LDA    #$73    
       STA    $C8     
       LDA    $DD     
       SBC    #$08    
       STA    $DD     
       CMP    #$B0    
       BCS    LFFB3   
LFFE7: LDY    #$08    
       LDX    #$04    
LFFEB: LDA.wy $00CD,Y 
       STA    $C1,X   
       DEY            
       DEY            
       DEX            
       BPL    LFFEB   
       LDA    SWCHB   
       JMP    LF764   
LFFFB: .byte $60,$00,$F0,$00
LFFFF: .byte $00
