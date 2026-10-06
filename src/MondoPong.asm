; Disassembly of roms/MondoPong.bin
; Disassembled Tue Oct  6 15:21:52 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/MondoPong.bin
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
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
VDELBL  =  $27
HMOVE   =  $2A
HMCLR   =  $2B
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $4C,$E4,$F1,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$77,$26,$56,$56,$76,$77,$FF,$0F,$76,$76,$0E,$7E,$7F,$FF,$B8
       .byte $37,$B7,$B7,$B7,$B8,$FF,$B8,$37,$B7,$B7,$B7,$B8,$FF,$B0,$B0,$A0
       .byte $90,$B0,$B0,$F0,$B0,$B0,$A0,$90,$B0,$B0,$F0,$87,$BB,$BB,$BB,$BB
       .byte $87,$FF,$C7,$BF,$BF,$B3,$BB,$C3,$FF,$F1,$EE,$EE,$EE,$EE,$F1,$FF
       .byte $FB,$FB,$FB,$FB,$FF,$FB,$FF,$64,$8A,$EA,$2A,$C4,$00,$0E,$04,$04
       .byte $0C,$04,$00,$7C,$82,$BA,$A2,$BA,$82,$7C,$65,$15,$36,$55,$56,$00
       .byte $CC,$22,$66,$AA,$44,$00,$89,$8A,$8B,$C2,$A9,$A0,$C0,$61,$12,$62
       .byte $42,$31,$00,$40,$41,$41,$21,$E1,$00,$A1,$22,$22,$A2,$99,$00,$00
       .byte $20,$A1,$B9,$A0,$19,$00,$97,$42,$42,$46,$42,$00,$19,$A2,$A1,$A0
       .byte $23,$20,$18,$C8,$15,$D9,$51,$8C,$00,$48,$14,$14,$14,$08,$00,$92
       .byte $AA,$AA,$A8,$2A,$00,$00,$89,$54,$55,$55,$89,$00,$50,$A0,$60,$10
       .byte $00,$00,$A6,$AA,$A6,$A2,$CC,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $00,$00,$88,$89,$89,$99,$A9,$C9,$88,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$E2,$12,$12,$13,$12,$12,$E3,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$24,$24,$24,$C5,$25,$26,$C4,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$48,$48,$48,$4F,$45
       .byte $C5,$42,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$9E,$90
       .byte $90,$90,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$12,$12,$12,$F3,$11,$11,$10,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$24,$24,$24,$E7,$44,$44
       .byte $87,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$4F,$48,$48
       .byte $88,$48,$48,$8F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00

START:
       SEI            
       CLD            
       LDX    #$28    
       LDA    #$00    
LF1EA: STA    NUSIZ0,X
       DEX            
       BPL    LF1EA   
       LDX    #$FF    
LF1F1: STA    VSYNC,X 
       DEX            
       BMI    LF1F1   
       LDX    #$FF    
       TXS            
       STA    SWBCNT  
       STA    SWACNT  
       LDA    #$00    
       STA    COLUBK  
       LDA    #$00    
       STA    $88     
       STA    $8E     
       LDA    #$10    
       STA    CTRLPF  
       LDA    #$00    
       STA    VDELBL  
       STA    $8E     
       STA    $8F     
       JSR    LFA9D   
       STA    $9C     
       LDA    #$F0    
       STA    $98     
       STA    $99     
       LDA    #$14    
       STA    $DF     
       LDA    #$8C    
       STA    $E0     
       LDA    #$46    
       STA    $9D     
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    GRP0    
       STA    GRP1    
       STA    $A9     
       STA    $AA     
       LDA    #$32    
       STA    $96     
       LDA    #$32    
       STA    $97     
       LDA    #$77    
       STA    $A5     
       LDA    #$97    
       STA    $A6     
       JSR    LFADD   
       LDA    LF448   
       STA    $C0     
       LDA    LF449   
       STA    $C1     
       LDA    LF44A   
       STA    $C2     
       LDA    LF44B   
       STA    $C3     
       LDA    LF44C   
       STA    $C4     
       LDA    LF44D   
       STA    $C5     
       LDA    LF44E   
       STA    $C6     
       LDA    LF44F   
       STA    $C7     
       LDA    LF450   
       STA    $C8     
       LDA    LF451   
       STA    $C9     
       LDA    LF452   
       STA    $CA     
       LDA    LF453   
       STA    $CB     
       LDA    #$10    
       STA    $91     
       LDA    #$00    
       STA    $92     
       JSR    LFADD   
       LDA    #$44    
       STA    $DA     
LF29C: JSR    LF2AB   
       JSR    LF9FF   
       JSR    LF454   
       JSR    LF2C5   
       JMP    LF29C   
LF2AB: STA    HMCLR   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$36    
       STA    TIM64T  
       RTS            

LF2C5: STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       STA    PF0     
LF2D1: LDA    INTIM   
       NOP            
       BNE    LF2D1   
       STA    WSYNC   
       LDA    #$80    
       STA    VBLANK  
       LDA    #$93    
       STA    COLUPF  
       LDA    #$1B    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$1B    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $91     
       TAX            
       CLC            
       ADC    #$04    
       STA    $A7     
       LSR            
       STA    $9A     
       STA    $9B     
       LDA    #$86    
       STA    $93     
       STA    WSYNC   
       STA    WSYNC   
       LDY    $92     
LF306: STA    WSYNC   
       LDA    ($C0),Y 
       STA    PF0     
       LDA    ($C2),Y 
       STA    PF1     
       LDA    ($C4),Y 
       STA    PF2     
       NOP            
       NOP            
       LDA    ($C6),Y 
       STA    PF0     
       LDA    ($C8),Y 
       STA    PF1     
       LDA    ($CA),Y 
       STA    PF2     
       TXA            
       AND    #$01    
       BEQ    LF32E   
       INY            
       CPY    #$0E    
       BCC    LF32E   
       LDY    #$00    
LF32E: DEX            
       BNE    LF306   
       LDY    $A7     
       STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$93    
       STA    COLUBK  
       LDA    #$00    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    VBLANK  
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    COLUBK  
       LDA    #$1B    
       STA    COLUPF  
       TSX            
       STX    $90     
LF35E: STA    WSYNC   
       SEC            
       TYA            
       SBC    $96     
       AND    $98     
       BEQ    LF36A   
       LDA    #$F0    
LF36A: EOR    #$F0    
       STA    GRP0    
       LDA    COLUPF  
       BMI    LF374   
       INC    $9A     
LF374: LDA    COLUBK  
       BMI    LF37A   
       INC    $9B     
LF37A: STA    WSYNC   
       LDX    #$1F    
       TXS            
       SEC            
       TYA            
       SBC    $DE     
       AND    #$FC    
       PHP            
       SEC            
       TYA            
       SBC    $97     
       AND    $99     
       BEQ    LF390   
       LDA    #$F0    
LF390: EOR    #$F0    
       STA    GRP1    
       INY            
       INY            
       CPY    $93     
       BCC    LF35E   
       STA    WSYNC   
       LDA    #$93    
       STA    COLUPF  
       LDX    #$FF    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       INX            
       STX    ENABL   
       STX    GRP0    
       STX    GRP1    
       LDX    $90     
       TXS            
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$06    
       LDY    #$00    
       NOP            
       NOP            
       STA    WSYNC   
LF3C0: DEX            
       BPL    LF3C0   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$D0    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$12    
       STA    $CC     
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
LF3DE: LDY    $CC     
       LDA    ($CD),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($CF),Y 
       STA    GRP1    
       LDA    ($D1),Y 
       STA    GRP0    
       LDA    ($D3),Y 
       STA    $A7     
       LDA    ($D5),Y 
       TAX            
       LDA    ($D7),Y 
       TAY            
       LDA    $A7     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $CC     
       BPL    LF3DE   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDA    #$93    
       STA    COLUPF  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    NUSIZ0  
       STA    NUSIZ1  
       JSR    LF983   
       LDA    #$23    
       STA    TIM64T  
       LDA    #$02    
       STA    VBLANK  
       JSR    LF96F   
       JSR    LF490   
       JSR    LF62F   
LF439: LDA    INTIM   
       NOP            
       BNE    LF439   
       STA    WSYNC   
       RTS            

LF442: .byte $57
LF443: .byte $F0
LF444: .byte $00
LF445: .byte $F1
LF446: .byte $72
LF447: .byte $F1
LF448: .byte $03
LF449: .byte $F0
LF44A: .byte $11
LF44B: .byte $F0
LF44C: .byte $1F
LF44D: .byte $F0
LF44E: .byte $2D
LF44F: .byte $F0
LF450: .byte $3B
LF451: .byte $F0
LF452: .byte $49
LF453: .byte $F0
LF454: CLC            
       LDA    $A9     
       ADC    #$01    
       STA    $A9     
       LDA    $AA     
       ADC    #$00    
       STA    $AA     
       JSR    LF9DA   
       JSR    LF4A3   
       JSR    LF7A0   
       JSR    LF5C0   
       JSR    LF94C   
       JSR    LFC37   
       LDA    $A9     
       AND    #$01    
       TAY            
       LDA.wy $0082,Y 
       STA    $DE     
       LDA.wy $0086,Y 
       JSR    LFC00   
       LDX    #$00    
LF485: LDA    $DF,X   
       JSR    LFC1D   
       INX            
       CPX    #$02    
       BCC    LF485   
       RTS            

LF490: LDY    #$01    
LF492: LDA.wy $008E,Y 
       BMI    LF49F   
       STA.wy $0019,Y 
       LDX    $8E,Y   
       DEX            
       STX    $8E,Y   
LF49F: DEY            
       BPL    LF492   
       RTS            

LF4A3: LDA    $DA     
       BPL    LF4A8   
       RTS            

LF4A8: LDY    #$01    
       STY    $E3     
LF4AC: LDX    $E3     
       LDA    $DF,X   
       STA    $E1     
       LDA    $96,X   
       STA    $E2     
       TYA            
       ASL            
       CLC            
       ADC    $E3     
       TAX            
       LDA.wy $0086,Y 
       CLC            
       ADC    #$01    
       CMP    $E1     
       BCC    LF50F   
       LDA    $E1     
       CLC            
       ADC    #$03    
       CMP.wy $0086,Y 
       BCC    LF50F   
       LDA    $B3,X   
       AND    #$0F    
       STA    $B3,X   
       BNE    LF50C   
       LDA.wy $0088,Y 
       CMP    #$80    
       BCS    LF4EA   
       LDA    $E1     
       SEC            
       SBC    #$01    
       STA.wy $0086,Y 
       JMP    LF4F2   
LF4EA: LDA    $E1     
       CLC            
       ADC    #$04    
       STA.wy $0086,Y 
LF4F2: JSR    LF929   
       LDA    #$00    
       STA.wy $00B7,Y 
       LDA    #$00    
       STA.wy $0015,Y 
       LDA    #$FF    
       STA.wy $0017,Y 
       LDA    #$10    
       STA.wy $008E,Y 
       JMP    LF554   
LF50C: JMP    LF515   
LF50F: LDA    $B3,X   
       ORA    #$F0    
       STA    $B3,X   
LF515: LDA.wy $0082,Y 
       CLC            
       ADC    #$01    
       CMP    $E2     
       BCC    LF54E   
       LDA    $E2     
       CLC            
       ADC    #$0F    
       CMP.wy $0082,Y 
       BCC    LF54E   
       LDA    $B3,X   
       AND    #$F0    
       STA    $B3,X   
       BNE    LF54B   
       JSR    LF90C   
       LDA    #$00    
       STA.wy $00B7,Y 
       LDA    #$00    
       STA.wy $0015,Y 
       LDA    #$FF    
       STA.wy $0017,Y 
       LDA    #$10    
       STA.wy $008E,Y 
       JSR    LF933   
LF54B: JMP    LF554   
LF54E: LDA    $B3,X   
       ORA    #$0F    
       STA    $B3,X   
LF554: DEY            
       BMI    LF55A   
       JMP    LF4AC   
LF55A: DEC    $E3     
       LDA    $E3     
       BMI    LF565   
       LDY    #$01    
       JMP    LF4AC   
LF565: RTS            

LF566: BMI    LF569   
       RTS            

LF569: EOR    #$FF    
       CLC            
       ADC    #$01    
       RTS            

LF56F: JSR    LF58E   
       AND    #$1F    
       SEC            
       SBC    #$0F    
       CLC            
       ADC.wy $0088,Y 
       STA.wy $0088,Y 
       RTS            

LF57F: .byte $20,$9B,$F5,$F0,$09,$B9,$88,$00,$18,$69,$0F,$99,$88,$00,$60
LF58E: LDA    $9C     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $9C     
       STA    $9C     
       RTS            

LF59B: LDA.wy $0088,Y 
       CMP    #$0F    
       BCC    LF5BD   
       CMP    #$31    
       BCC    LF5BA   
       CMP    #$4F    
       BCC    LF5BD   
       CMP    #$71    
       BCC    LF5BA   
       CMP    #$8F    
       BCC    LF5BD   
       CMP    #$B1    
       BCC    LF5BA   
       CMP    #$CF    
       BCC    LF5BD   
LF5BA: LDA    #$00    
       RTS            

LF5BD: LDA    #$FF    
       RTS            

LF5C0: LDA    $DA     
       BPL    LF5C5   
       RTS            

LF5C5: LDY    #$01    
LF5C7: LDA.wy $00B9,Y 
       BEQ    LF5E7   
       LDX    $B9,Y   
       DEX            
       STX    $B9,Y   
       LDA.wy $00BB,Y 
       BNE    LF5D9   
       JMP    LF5E3   
LF5D9: LDA.wy $0088,Y 
       CLC            
       ADC.wy $00BD,Y 
       STA.wy $0088,Y 
LF5E3: DEY            
       BPL    LF5C7   
       RTS            

LF5E7: LDA.wy $00BB,Y 
       BEQ    LF5EF   
       JMP    LF5FB   
LF5EF: JSR    LF58E   
       AND    #$07    
       CMP    #$05    
       BCC    LF603   
       JMP    LF613   
LF5FB: JSR    LF59B   
       BEQ    LF603   
       JMP    LF5D9   
LF603: LDA    #$00    
       STA.wy $00BB,Y 
       JSR    LF58E   
       ORA    #$80    
       STA.wy $00B9,Y 
       JMP    LF5E3   
LF613: LDA    #$01    
       STA.wy $00BB,Y 
       JSR    LF58E   
       ORA    #$80    
       LSR            
       STA.wy $00B9,Y 
       JSR    LF58E   
       AND    #$0F    
       CLC            
       ADC    #$F8    
       STA.wy $00BD,Y 
       JMP    LF5E3   
LF62F: LDA    $DA     
       BPL    LF634   
       RTS            

LF634: LDY    #$01    
LF636: LDA.wy $00E6,Y 
       BMI    LF644   
       SEC            
       SBC    #$01    
       STA.wy $00E6,Y 
       JMP    LF72A   
LF644: LDA.wy $0088,Y 
       CMP    #$81    
       BCS    LF64F   
       LDA    #$00    
       BEQ    LF651   
LF64F: LDA    #$FF    
LF651: STA    $8A     
       LDA.wy $0088,Y 
       CMP    #$41    
       BCC    LF662   
       CMP    #$C1    
       BCS    LF662   
       LDA    #$FF    
       BNE    LF664   
LF662: LDA    #$00    
LF664: STA    $8B     
       LDA    #$81    
       STA    $94     
       LDA    #$04    
       CLC            
       ADC    $91     
       STA    $95     
       JSR    LF762   
       LDA.wy $0082,Y 
       CMP    $94     
       BCC    LF6A5   
       LDA    #$10    
       STA.wy $0015,Y 
       LDA    #$04    
       STA.wy $0017,Y 
       LDA    #$10    
       STA.wy $008E,Y 
       LDA    $94     
       STA.wy $0082,Y 
       JSR    LF90C   
       LDA.wy $00B7,Y 
       BEQ    LF69A   
       JMP    LF72A   
LF69A: JSR    LF56F   
       LDA    #$FF    
       STA.wy $00B7,Y 
       JMP    LF72A   
LF6A5: CMP    $95     
       BCS    LF6D3   
       LDA    #$10    
       STA.wy $0015,Y 
       LDA    #$08    
       STA.wy $0017,Y 
       LDA    #$10    
       STA.wy $008E,Y 
       LDA    $95     
       STA.wy $0082,Y 
       JSR    LF90C   
       LDA.wy $00B7,Y 
       BEQ    LF6C8   
       JMP    LF72A   
LF6C8: JSR    LF56F   
       LDA    #$FF    
       STA.wy $00B7,Y 
       JMP    LF72A   
LF6D3: LDA.wy $0086,Y 
       CMP    #$A0    
       BCC    LF6FF   
       LDA    #$0A    
       STA.wy $0086,Y 
       STA.wy $0084,Y 
       LDA    $DA     
       AND    #$C0    
       BNE    LF6ED   
       LDX    #$00    
       JSR    LF731   
LF6ED: LDA    #$0C    
       STA.wy $0015,Y 
       LDA    #$0C    
       STA.wy $0017,Y 
       LDA    #$0E    
       STA.wy $008E,Y 
       JMP    LF72A   
LF6FF: LDA.wy $0086,Y 
       CMP    #$08    
       BCS    LF72A   
       LDA    #$9E    
       STA.wy $0086,Y 
       LDA    #$00    
       STA.wy $0084,Y 
       LDA    $DA     
       AND    #$C0    
       BNE    LF71B   
       LDX    #$01    
       JSR    LF731   
LF71B: LDA    #$0C    
       STA.wy $0015,Y 
       LDA    #$0C    
       STA.wy $0017,Y 
       LDA    #$0E    
       STA.wy $008E,Y 
LF72A: DEY            
       BMI    LF730   
       JMP    LF636   
LF730: RTS            

LF731: SED            
       LDA    $A5,X   
       CLC            
       ADC    #$01    
       STA    $A5,X   
       CLD            
       LDA    $A5,X   
       CMP    $E8     
       BCS    LF741   
       RTS            

LF741: LDA    $DA     
       ORA    #$80    
       AND    #$BF    
       STA    $DA     
       LDA    #$02    
       STA    AUDC0   
       LDA    #$0E    
       STA    AUDF0   
       LDA    #$7F    
       STA    $8E     
       LDA    #$06    
       STA    AUDC1   
       LDA    #$07    
       STA    AUDF1   
       LDA    #$40    
       STA    $8F     
       RTS            

LF762: LDA.wy $008C,Y 
       STA    $A7     
       LDX    $88,Y   
LF769: CLC            
       LDA.wy $0080,Y 
       ADC    LFD8B,X 
       STA.wy $0080,Y 
       LDA.wy $0082,Y 
       ADC    $8B     
       STA.wy $0082,Y 
       CLC            
       LDA.wy $0084,Y 
       ADC    LFC8B,X 
       STA.wy $0084,Y 
       LDA.wy $0086,Y 
       ADC    $8A     
       STA.wy $0086,Y 
       DEC    $A7     
       BNE    LF769   
       RTS            

LF792: .byte $00,$00,$01,$00,$01,$01
LF798: .byte $FF,$00,$00,$01,$00,$01,$FF,$00
LF7A0: LDA    $DA     
       BPL    LF7A5   
       RTS            

LF7A5: LDA    #$01    
       STA    $E3     
LF7A9: LDA    $DA     
       AND    #$C0    
       BEQ    LF7B4   
       LDA    #$00    
       JMP    LF7C1   
LF7B4: LDA    $DA     
       AND    #$04    
       BNE    LF7BF   
       LDA    #$02    
       JMP    LF7C1   
LF7BF: LDA    #$04    
LF7C1: CLC            
       ADC    $E3     
       TAX            
       LDA    LF792,X 
       BEQ    LF7FB   
       LDX    $E3     
       LDA    $9A,X   
       ASL            
       STA    $9E     
       LDA    SWCHA   
       CPX    #$00    
       BEQ    LF7D9   
       ASL            
LF7D9: JMP    LF889   
LF7DC: .byte $20,$D6,$F8,$B9,$E6,$00,$30,$03,$4C,$89,$F8,$A9,$7F,$99,$E6,$00
       .byte $A9,$08,$95,$15,$A9,$1E,$95,$17,$A9,$0F,$95,$8E,$4C,$89,$F8
LF7FB: LDY    #$01    
LF7FD: LDX    $E3     
       TXA            
       ASL            
       ASL            
       STA    $A7     
       LDA.wy $0088,Y 
       ASL            
       LDA    #$00    
       ROL            
       ASL            
       CLC            
       ADC    $A7     
       STA    $A7     
       JSR    LF8F2   
       CLC            
       ADC    $A7     
       TAX            
       LDA    LF798,X 
       STA.wy $00E4,Y 
       DEY            
       BPL    LF7FD   
       LDA    $E4     
       ORA    $E5     
       BEQ    LF83A   
       LDA    $E4     
       BEQ    LF83D   
       LDA    $E5     
       BEQ    LF845   
       LDX    $E3     
       JSR    LF8D6   
       LDA.wy $00E4,Y 
       JMP    LF84D   
LF83A: JMP    LF84D   
LF83D: LDY    #$01    
       LDA.wy $00E4,Y 
       JMP    LF84D   
LF845: LDY    #$00    
       LDA.wy $00E4,Y 
       JMP    LF84D   
LF84D: BEQ    LF85C   
       BMI    LF865   
       LDA.wy $0082,Y 
       SEC            
       SBC    #$08    
       STA    $9E     
       JMP    LF889   
LF85C: LDX    $E3     
       LDA    $96,X   
       STA    $9E     
       JMP    LF889   
LF865: LDA.wy $0082,Y 
       CLC            
       ADC    #$02    
       STA    $A7     
       LDA    #$57    
       CLC            
       ADC    $9D     
       SEC            
       SBC    $A7     
       CMP    $A7     
       BCC    LF883   
       CLC            
       LSR            
       CLC            
       ADC    $A7     
       STA    $9E     
       JMP    LF889   
LF883: LDA    $A7     
       CLC            
       LSR            
       STA    $9E     
LF889: LDX    $E3     
       LDA    #$57    
       SEC            
       SBC    $9D     
       CMP    $9E     
       BCC    LF896   
       STA    $9E     
LF896: LDA    #$66    
       SEC            
       SBC    $98,X   
       CMP    $9E     
       BCS    LF8A1   
       STA    $9E     
LF8A1: LDA    $96,X   
       CMP    $9E     
       BEQ    LF8CE   
       BCS    LF8BB   
       LDA    $9E     
       SEC            
       SBC    $96,X   
       LSR            
       LSR            
       CLC            
       ADC    #$01    
       CLC            
       ADC    $96,X   
       STA    $96,X   
       JMP    LF8CE   
LF8BB: LDA    $96,X   
       SEC            
       SBC    $9E     
       LSR            
       LSR            
       CLC            
       ADC    #$01    
       STA    $A7     
       CLC            
       LDA    $96,X   
       SBC    $A7     
       STA    $96,X   
LF8CE: DEC    $E3     
       BMI    LF8D5   
       JMP    LF7A9   
LF8D5: RTS            

LF8D6: LDA    $DF,X   
       SEC            
       SBC    $86     
       JSR    LF566   
       STA    $A7     
       LDA    $DF,X   
       SEC            
       SBC    $87     
       JSR    LF566   
       CMP    $A7     
       BCC    LF8EF   
       LDY    #$00    
       RTS            

LF8EF: LDY    #$01    
       RTS            

LF8F2: LDA.wy $0086,Y 
       CLC            
       ADC    #$01    
       CMP    $DF     
       BCC    LF909   
       LDA    $E0     
       CLC            
       ADC    #$03    
       CMP.wy $0086,Y 
       BCC    LF909   
       LDA    #$01    
       RTS            

LF909: LDA    #$00    
       RTS            

LF90C: LDA.wy $0088,Y 
       CMP    #$80    
       BCS    LF91C   
       LDA    #$80    
       CLC            
       SBC.wy $0088,Y 
       JMP    LF925   
LF91C: LDA    #$00    
       CLC            
       SBC.wy $0088,Y 
       CLC            
       ADC    #$80    
LF925: STA.wy $0088,Y 
       RTS            

LF929: LDA    #$FF    
       CLC            
       SBC.wy $0088,Y 
       STA.wy $0088,Y 
       RTS            

LF933: LDA.wy $00B1,Y 
       STA.wy $0086,Y 
       LDA.wy $00AF,Y 
       STA.wy $0084,Y 
       LDA.wy $00AD,Y 
       STA.wy $0082,Y 
       LDA.wy $00AB,Y 
       STA.wy $0080,Y 
       RTS            

LF94C: LDA    $DA     
       BPL    LF951   
       RTS            

LF951: LDY    #$01    
LF953: LDA.wy $0086,Y 
       STA.wy $00B1,Y 
       LDA.wy $0084,Y 
       STA.wy $00AF,Y 
       LDA.wy $0082,Y 
       STA.wy $00AD,Y 
       LDA.wy $0080,Y 
       STA.wy $00AB,Y 
       DEY            
       BPL    LF953   
       RTS            

LF96F: LDA    $A9     
       AND    #$07    
       BEQ    LF976   
       RTS            

LF976: INC    $92     
       LDA    $92     
       CMP    #$0E    
       BCC    LF982   
       LDA    #$00    
       STA    $92     
LF982: RTS            

LF983: LDX    #$05    
       LDA    #$00    
       STA    $9F     
       STA    $A0     
LF98B: STA    WSYNC   
       LDA    $9F     
       STA    PF1     
       LDY    $A3     
       LDA    LFC59,Y 
       AND    #$F0    
       STA    $9F     
       LDY    $A1     
       LDA    LFC59,Y 
       AND    #$0F    
       ORA    $9F     
       STA    $9F     
       LDA    $A0     
       STA    PF1     
       LDY    $A4     
       LDA    LFC59,Y 
       AND    #$F0    
       STA    $A0     
       LDY    $A2     
       LDA    LFC59,Y 
       AND    #$0F    
       STA    WSYNC   
       ORA    $A0     
       STA    $A0     
       LDA    $9F     
       STA    PF1     
       DEX            
       BMI    LF9D5   
       INC    $A1     
       INC    $A3     
       INC    $A2     
       INC    $A4     
       LDA    $A0     
       STA    PF1     
       JMP    LF98B   
LF9D5: LDA    #$00    
       STA    PF1     
       RTS            

LF9DA: LDA    $DA     
       BMI    LF9DF   
       RTS            

LF9DF: LDA    $A9     
       BEQ    LF9E4   
       RTS            

LF9E4: LDA    $D9     
       BMI    LF9EB   
       DEC    $D9     
       RTS            

LF9EB: LDA    #$44    
       STA    $DA     
       LDA    #$00    
       JSR    LFADD   
       RTS            

LF9F5: .byte $A9,$44,$85,$DA,$A9,$00,$20,$DD,$FA,$60
LF9FF: LDA    SWCHB   
       AND    #$01    
       CMP    #$01    
       BEQ    LFA1E   
       LDA    #$00    
       STA    $A5     
       STA    $A6     
       JSR    LFADD   
       JSR    LFA9D   
       LDA    $DA     
       AND    #$3F    
       STA    $DA     
       JSR    LFA84   
       RTS            

LFA1E: LDA    SWCHB   
       AND    #$02    
       BEQ    LFA2A   
       LDA    #$00    
       STA    $BF     
       RTS            

LFA2A: LDA    #$02    
       STA    $D9     
       LDA    $BF     
       BNE    LFA5E   
       LDA    #$05    
       STA    AUDC0   
       LDA    #$37    
       STA    AUDF0   
       LDA    #$08    
       STA    $8E     
       LDA    #$01    
       STA    $BF     
       LDA    $DA     
       BPL    LFA5F   
       AND    #$7F    
       CLC            
       ADC    #$01    
       AND    #$07    
       ORA    #$80    
       STA    $DA     
       JSR    LFA78   
       STA    $A5     
       JSR    LFA84   
       STA    $A6     
       JSR    LFA8F   
LFA5E: RTS            

LFA5F: LDA    $DA     
       AND    #$BF    
       ORA    #$80    
       STA    $DA     
       JSR    LFA9D   
       JSR    LFA78   
       STA    $A5     
       JSR    LFA84   
       STA    $A6     
       JSR    LFA8F   
       RTS            

LFA78: LDA    $DA     
       AND    #$04    
       LSR            
       LSR            
       CLC            
       ADC    #$01    
       STA    $E9     
       RTS            

LFA84: LDA    $DA     
       AND    #$01    
       TAX            
       LDA    LFA9B,X 
       STA    $E8     
       RTS            

LFA8F: LDA    $DA     
       AND    #$02    
       LSR            
       CLC            
       ADC    #$01    
       JSR    LFADD   
       RTS            

LFA9B: .byte $15,$45
LFA9D: LDY    #$01    
LFA9F: LDA    #$FF    
       STA.wy $00E6,Y 
       LDA    #$00    
       STA.wy $0088,Y 
       LDA    #$05    
       STA.wy $008C,Y 
       LDA    #$01    
       STA.wy $00BB,Y 
       LDA    #$5A    
       STA.wy $0082,Y 
       LDA    #$A0    
       LSR            
       STA.wy $0086,Y 
       LDA    #$00    
       STA.wy $0080,Y 
       STA.wy $0084,Y 
       STA.wy $00B7,Y 
       DEY            
       BPL    LFA9F   
       LDA    #$07    
       STA    $BD     
       LDA    #$F8    
       STA    $BE     
       LDA    #$FF    
       STA    $B9     
       LDA    #$E0    
       STA    $BA     
       RTS            

LFADD: BEQ    LFAFD   
       CMP    #$01    
       BEQ    LFAF0   
       LDA    LF446   
       STA    $A7     
       LDA    LF447   
       STA    $A8     
       JMP    LFB07   
LFAF0: LDA    LF444   
       STA    $A7     
       LDA    LF445   
       STA    $A8     
       JMP    LFB07   
LFAFD: LDA    LF442   
       STA    $A7     
       LDA    LF443   
       STA    $A8     
LFB07: LDX    #$00    
LFB09: LDA    $A7     
       STA    $CD,X   
       LDA    $A8     
       STA    $CE,X   
       LDA    $A7     
       CLC            
       ADC    #$13    
       STA    $A7     
       LDA    $A8     
       ADC    #$00    
       STA    $A8     
       INX            
       INX            
       CPX    #$0C    
       BCC    LFB09   
       RTS            

LFB25: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFC00: CLC            
       ADC    #$04    
       LDY    #$02    
       SEC            
LFC06: INY            
       SBC    #$0F    
       BCS    LFC06   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LFC15: DEY            
       BPL    LFC15   
       STA    RESBL   
       STA    HMBL    
       RTS            

LFC1D: LDY    #$02    
       SEC            
LFC20: INY            
       SBC    #$0F    
       BCS    LFC20   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LFC2F: DEY            
       BPL    LFC2F   
       STA    RESP0,X 
       STA    HMP0,X  
       RTS            

LFC37: LDX    #$01    
LFC39: LDA    $A5,X   
       AND    #$0F    
       STA    $A7     
       ASL            
       ASL            
       CLC            
       ADC    $A7     
       STA    $A1,X   
       LDA    $A5,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $A7     
       LSR            
       LSR            
       CLC            
       ADC    $A7     
       STA    $A3,X   
       DEX            
       BPL    LFC39   
       RTS            

LFC59: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LFC8B: .byte $00,$03,$06,$09,$0C,$0F,$12,$15,$18,$1B,$1E,$21,$24,$27,$2A,$2D
       .byte $30,$33,$36,$39,$3B,$3E,$41,$43,$46,$49,$4B,$4E,$50,$52,$55,$57
       .byte $59,$5B,$5E,$60,$62,$64,$66,$67,$69,$6B,$6C,$6E,$70,$71,$72,$74
       .byte $75,$76,$77,$78,$79,$7A,$7B,$7B,$7C,$7D,$7D,$7E,$7E,$7E,$7E,$7E
       .byte $7F,$7E,$7E,$7E,$7E,$7E,$7D,$7D,$7C,$7B,$7B,$7A,$79,$78,$77,$76
       .byte $75,$74,$72,$71,$70,$6E,$6C,$6B,$69,$67,$66,$64,$62,$60,$5E,$5B
       .byte $59,$57,$55,$52,$50,$4E,$4B,$49,$46,$43,$41,$3E,$3B,$39,$36,$33
       .byte $30,$2D,$2A,$27,$24,$21,$1E,$1B,$18,$15,$12,$0F,$0C,$09,$06,$03
       .byte $00,$FB,$F8,$F5,$F2,$EF,$EC,$E9,$E6,$E3,$E0,$DD,$DA,$D7,$D4,$D1
       .byte $CE,$CB,$C8,$C5,$C3,$C0,$BD,$BB,$B8,$B5,$B3,$B0,$AE,$AC,$A9,$A7
       .byte $A5,$A3,$A0,$9E,$9C,$9A,$98,$97,$95,$93,$92,$90,$8E,$8D,$8C,$8A
       .byte $89,$88,$87,$86,$85,$84,$83,$83,$82,$81,$81,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$81,$81,$82,$83,$83,$84,$85,$86,$87,$88
       .byte $89,$8A,$8C,$8D,$8E,$90,$92,$93,$95,$97,$98,$9A,$9C,$9E,$A0,$A3
       .byte $A5,$A7,$A9,$AC,$AE,$B0,$B3,$B5,$B8,$BB,$BD,$C0,$C3,$C5,$C8,$CB
       .byte $CE,$D1,$D4,$D7,$DA,$DD,$E0,$E3,$E6,$E9,$EC,$EF,$F2,$F5,$F8,$FB
LFD8B: .byte $7F,$7E,$7E,$7E,$7E,$7E,$7D,$7D,$7C,$7B,$7B,$7A,$79,$78,$77,$76
       .byte $75,$74,$72,$71,$70,$6E,$6C,$6B,$69,$67,$66,$64,$62,$60,$5E,$5B
       .byte $59,$57,$55,$52,$50,$4E,$4B,$49,$46,$43,$41,$3E,$3B,$39,$36,$33
       .byte $30,$2D,$2A,$27,$24,$21,$1E,$1B,$18,$15,$12,$0F,$0C,$09,$06,$03
       .byte $00,$FB,$F8,$F5,$F2,$EF,$EC,$E9,$E6,$E3,$E0,$DD,$DA,$D7,$D4,$D1
       .byte $CE,$CB,$C8,$C5,$C3,$C0,$BD,$BB,$B8,$B5,$B3,$B0,$AE,$AC,$A9,$A7
       .byte $A5,$A3,$A0,$9E,$9C,$9A,$98,$97,$95,$93,$92,$90,$8E,$8D,$8C,$8A
       .byte $89,$88,$87,$86,$85,$84,$83,$83,$82,$81,$81,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$81,$81,$82,$83,$83,$84,$85,$86,$87,$88
       .byte $89,$8A,$8C,$8D,$8E,$90,$92,$93,$95,$97,$98,$9A,$9C,$9E,$A0,$A3
       .byte $A5,$A7,$A9,$AC,$AE,$B0,$B3,$B5,$B8,$BB,$BD,$C0,$C3,$C5,$C8,$CB
       .byte $CE,$D1,$D4,$D7,$DA,$DD,$E0,$E3,$E6,$E9,$EC,$EF,$F2,$F5,$F8,$FB
       .byte $00,$03,$06,$09,$0C,$0F,$12,$15,$18,$1B,$1E,$21,$24,$27,$2A,$2D
       .byte $30,$33,$36,$39,$3B,$3E,$41,$43,$46,$49,$4B,$4E,$50,$52,$55,$57
       .byte $59,$5B,$5E,$60,$62,$64,$66,$67,$69,$6B,$6C,$6E,$70,$71,$72,$74
       .byte $75,$76,$77,$78,$79,$7A,$7B,$7B,$7C,$7D,$7D,$7E,$7E,$7E,$7E,$7E
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
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$E4
       .byte $F1,$E4,$F1,$E4,$F1
