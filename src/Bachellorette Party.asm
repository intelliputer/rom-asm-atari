; Disassembly of roms/Bachellorette Party.bin
; Disassembled Tue Oct  6 15:19:36 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Bachellorette Party.bin
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
RESM0   =  $12
RESBL   =  $14
AUDC0   =  $15
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMM0    =  $22
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $3000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L3007: STA    VSYNC,X 
       INX            
       BNE    L3007   
       JSR    L3FD0   
       LDA    #$00    
       STA    $94     
       LDA    #$3B    
       STA    $95     
       LDA    L3F80   
       STA    $92     
       LDA    L3F81   
       STA    $93     
       LDA    #$80    
       STA    $A3     
       JSR    L365C   
       LDA    #$02    
       STA    $CB     
L302C: JSR    L3700   
L302F: LDA    INTIM   
       BNE    L302F   
       LDY    #$B7    
       INC    $C1     
       LDA    $BE     
       STA    REFP0   
       LDA    #$01    
       STA    $A5     
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    CXCLR   
       STA    VBLANK  
       JSR    L3521   
       LDA    L3FBA   
       STA    COLUP1  
       CLC            
       LDA    $B6     
       ADC    #$37    
       STA    $81     
       LDX    #$30    
       LDA    $C1     
       LSR            
       BCC    L3065   
       JMP    L3352   
L3065: STX    PF0     
       LDA    #$00    
       LDX    #$16    
L306B: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    $CC,X   
       AND    $A6     
       STA    GRP1    
       BIT    $C2     
       BVC    L3081   
       NOP            
       JMP    L3081   
L3081: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    $CC,X   
       AND    $AE     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L306B   
       JSR    L3540   
L309B: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    $CC,X   
       AND    $A7     
       STA    GRP1    
       BIT    $C2     
       BVC    L30B1   
       NOP            
       JMP    L30B1   
L30B1: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    $CC,X   
       AND    $AF     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L309B   
       JSR    L3540   
L30CB: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    $CC,X   
       AND    $A8     
       STA    GRP1    
       BIT    $C2     
       BVC    L30E1   
       NOP            
       JMP    L30E1   
L30E1: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    $CC,X   
       AND    $B0     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L30CB   
       JSR    L3540   
L30FB: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    $CC,X   
       AND    $A9     
       STA    GRP1    
       BIT    $C2     
       BVC    L3111   
       NOP            
       JMP    L3111   
L3111: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    $CC,X   
       AND    $B1     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L30FB   
       JSR    L3540   
L312B: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    $CC,X   
       AND    $AA     
       STA    GRP1    
       BIT    $C2     
       BVC    L3141   
       NOP            
       JMP    L3141   
L3141: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    $CC,X   
       AND    $B2     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L312B   
       JSR    L3540   
L315B: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    $CC,X   
       AND    $AB     
       STA    GRP1    
       BIT    $C2     
       BVC    L3171   
       NOP            
       JMP    L3171   
L3171: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    $CC,X   
       AND    $B3     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L315B   
       JSR    L3540   
L318B: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    $CC,X   
       AND    $AC     
       STA    GRP1    
       BIT    $C2     
       BVC    L31A1   
       NOP            
       JMP    L31A1   
L31A1: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    $CC,X   
       AND    $B4     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L318B   
       JSR    L3540   
L31BB: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    $CC,X   
       AND    $AD     
       STA    GRP1    
       BIT    $C2     
       BVC    L31D1   
       NOP            
       JMP    L31D1   
L31D1: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    $CC,X   
       AND    $B5     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L31BB   
       STA    WSYNC   
       STA    GRP0    
       STA    HMCLR   
       JSR    L3521   
       LDA    #$0E    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDY    #$07    
       STA    WSYNC   
L3205: DEY            
       BNE    L3205   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STY    COLUBK  
       STY    REFP0   
       STY    $BA     
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
L321B: LDA    $9D     
       STA    WSYNC   
       STA    COLUBK  
L3221: LDA    #$06    
       STA    $80     
L3225: LDY    $80     
       LDA    ($82),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($84),Y 
       STA    GRP1    
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($88),Y 
       STA    $81     
       LDA    ($8A),Y 
       TAX            
       LDA    ($8C),Y 
       TAY            
       LDA    $81     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $80     
       BPL    L3225   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    COLUBK  
       LDA    $BA     
       BNE    L32C1   
       LDA    $B9     
       LSR            
       BCC    L3276   
       LDA    $9E     
       ORA    $9F     
       BNE    L3276   
       BIT    $B7     
       BMI    L3276   
       BVS    L3276   
       JSR    L35C1   
       INC    $BA     
       JMP    L321B   
L3276: LDA    #$30    
       STA    CTRLPF  
       LDA    #$3A    
       STA    COLUPF  
       LDA    #$04    
       STA    $9C     
       LDA    #$00    
       TAY            
L3285: STA    PF0     
       STY    PF1     
       STA    WSYNC   
       LDY    #$06    
L328D: DEY            
       BNE    L328D   
       STY    PF0     
       STY    PF1     
       LDY    $B6     
       LDX    $9E,Y   
       LDA    L3ECD,X 
       INX            
       LDY    L3ECD,X 
       DEC    $9C     
       BPL    L3285   
       LDA    #$BC    
       LDY    #$3E    
       STY    $8D     
       LDX    #$0A    
       SEC            
L32AC: STA    $82,X   
       SBC    #$07    
       DEX            
       STY    $82,X   
       DEX            
       BPL    L32AC   
       LDA    #$2E    
       STA    COLUP0  
       STA    COLUP1  
       INC    $BA     
       JMP    L3221   
L32C1: LDY    #$00    
       STY    VDELP0  
       STY    VDELP1  
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       JSR    L3630   
       BIT    $B7     
       BPL    L32DA   
       JSR    L35DC   
       JMP    L32F1   
L32DA: BIT    $B7     
       BVS    L32E4   
       LDA    $9E     
       ORA    $9F     
       BEQ    L32EE   
L32E4: LDA    $B6     
       BEQ    L32EE   
       JSR    L35C1   
       JMP    L32F1   
L32EE: JSR    L3591   
L32F1: LDA    #$82    
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       BIT    $B7     
       BVC    L3311   
       LDA    #$00    
       STA    $C8     
       STA    $CA     
       LDA    $A4     
       ADC    #$08    
       STA    $A4     
       BCC    L332C   
       JSR    L3502   
       JMP    L332C   
L3311: INC    $CA     
       BNE    L332C   
       DEC    $CB     
       BNE    L332C   
       LDA    #$02    
       STA    $CB     
       LDA    $8E     
       ASL            
       AND    #$F2    
       STA    $C8     
       LDA    $9E     
       ORA    $9F     
       BNE    L332C   
       STA    $C0     
L332C: LDX    $8F     
       LDA    #$40    
       CPX    #$50    
       BPL    L3335   
       LSR            
L3335: STA    $C2     
       LDX    #$0F    
L3339: LDA    $A6,X   
       BNE    L334F   
       DEX            
       BPL    L3339   
       JSR    L366F   
       LDX    $B6     
       LDA    $9E,X   
       CMP    #$0C    
       BEQ    L334F   
       INC    $9E,X   
       INC    $9E,X   
L334F: JMP    L36C0   
L3352: STX    PF0     
       STY    $BB     
       LDX    $81     
       TXS            
       LDA    #$00    
       LDX    #$16    
L335D: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    $CC,X   
       AND    $A6     
       STA    GRP1    
       BIT    $C2     
       BVC    L3377   
       NOP            
       JMP    L3377   
L3373: NOP            
       JMP    L337D   
L3377: PLA            
       PHA            
       BPL    L3373   
       DEC    $BB     
L337D: LDA    $CC,X   
       AND    $AE     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L335D   
       JMP    L3565   
L3390: .byte $85,$02,$85,$1B,$A9,$00,$85,$0D,$B5,$CC,$25,$A7,$85,$1C,$24,$C2
       .byte $50,$08,$EA,$4C,$AA,$33,$EA,$4C,$B0,$33,$68,$48,$10,$F8,$C6,$BB
       .byte $B5,$CC,$25,$AF,$85,$1C,$A9,$30,$85,$0D,$B1,$94,$88,$CA,$D0,$D0
       .byte $A2,$02,$4C,$65,$35,$85,$02,$85,$1B,$A9,$00,$85,$0D,$B5,$CC,$25
       .byte $A8,$85,$1C,$24,$C2,$50,$07,$EA,$4C,$DE,$33,$4C,$E4,$33,$68,$48
       .byte $10,$F9,$C6,$BB,$B5,$CC,$25,$B0,$85,$1C,$A9,$30,$85,$0D,$B1,$94
       .byte $88,$CA,$D0,$D1,$A2,$04,$4C,$65,$35,$85,$02,$85,$1B,$A9,$00,$85
       .byte $0D,$B5,$CC,$25,$A9,$85,$1C,$24,$C2,$50,$07,$EA,$4C,$12,$34,$4C
       .byte $18,$34,$68,$48,$10,$F9,$C6,$BB,$B5,$CC,$25,$B1,$85,$1C,$A9,$30
       .byte $85,$0D,$B1,$94,$88,$CA,$D0,$D1,$A2,$06,$4C,$65,$35,$85,$02,$85
       .byte $1B,$A9,$00,$85,$0D,$B5,$CC,$25,$AA,$85,$1C,$24,$C2,$50,$08,$EA
       .byte $4C,$47,$34,$EA,$4C,$4D,$34,$68,$48,$10,$F8,$C6,$BB,$B5,$CC,$25
       .byte $B2,$85,$1C,$A9,$30,$85,$0D,$B1,$94,$88,$CA,$D0,$D0,$A2,$08,$4C
       .byte $65,$35,$85,$02,$85,$1B,$A9,$00,$85,$0D,$B5,$CC,$25,$AB,$85,$1C
       .byte $24,$C2,$50,$08,$EA,$4C,$7C,$34,$EA,$4C,$82,$34,$68,$48,$10,$F8
       .byte $C6,$BB,$B5,$CC,$25,$B3,$85,$1C,$A9,$30,$85,$0D,$B1,$94,$88,$CA
       .byte $D0,$D0,$A2,$0A,$4C,$65,$35,$85,$02,$85,$1B,$A9,$00,$85,$0D,$B5
       .byte $CC,$25,$AC,$85,$1C,$24,$C2,$50,$08,$EA,$4C,$B1,$34,$EA,$4C,$B7
       .byte $34,$68,$48,$10,$F8,$C6,$BB,$B5,$CC,$25,$B4,$85,$1C,$A9,$30,$85
       .byte $0D,$B1,$94,$88,$CA,$D0,$D0,$A2,$0C,$4C,$65,$35,$85,$02,$85,$1B
       .byte $A9,$00,$85,$0D,$B5,$CC,$25,$AD,$85,$1C,$24,$C2,$50,$08,$EA,$4C
       .byte $E6,$34,$EA,$4C,$EC,$34,$68,$48,$10,$F8,$C6,$BB,$B5,$CC,$25,$B5
       .byte $85,$1C,$A9,$30,$85,$0D,$B1,$94,$88,$CA,$D0,$D0,$A2,$FF,$9A,$4C
       .byte $EA,$31
L3502: LDA    $B9     
       LSR            
       BEQ    L351C   
       DEC    $8F     
       LDA    $8F     
       CMP    #$40    
       BPL    L3520   
       LDX    #$07    
       LDY    #$FF    
L3513: LDA    $AE,X   
       STA    $A6,X   
       STY    $AE,X   
       DEX            
       BPL    L3513   
L351C: LDA    #$5D    
       STA    $8F     
L3520: RTS            

L3521: LDX    #$FF    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       INX            
       STX    GRP0    
       STX    GRP1    
       LDX    #$04    
       LDA    $C8     
       STA    COLUBK  
L3534: STA    WSYNC   
       DEX            
       BNE    L3534   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       RTS            

L3540: STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDX    $A5     
       LDA    L3FBA,X 
       STA    COLUP1  
       INC    $A5     
       LDX    #$02    
L3551: DEX            
       BNE    L3551   
       LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       LDX    #$16    
       RTS            

L3565: STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    L3FC2,X 
       STA    $C5     
       INX            
       LDA    L3FC2,X 
       STA    $C6     
       LDX    $A5     
       LDA    L3FBA,X 
       STA    COLUP1  
       INC    $A5     
       LDA    #$30    
       STA    PF0     
       PLA            
       PHA            
       BPL    L3589   
       DEC    $BB     
L3589: LDA    ($94),Y 
       DEY            
       LDX    #$16    
       JMP.ind ($00C5)
L3591: LDX    #$00    
       LDA    #$80    
       STA    $81     
       LDA    $98     
       JSR    L35F9   
       LDA    $97     
       JSR    L35F9   
       LDA    $96     
       JSR    L35F9   
       LDA    #$46    
       STA    $9D     
L35AA: LDX    #$00    
L35AC: LDA    $82,X   
       CMP    #$C0    
       BNE    L35C0   
       LDA    #$36    
       STA    $82,X   
       LDA    #$3B    
       STA    $83,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    L35AC   
L35C0: RTS            

L35C1: LDX    #$00    
       LDA    #$80    
       STA    $81     
       LDA    $9B     
       JSR    L35F9   
       LDA    $9A     
       JSR    L35F9   
       LDA    $99     
       JSR    L35F9   
       LDA    #$E6    
       STA    $9D     
       BNE    L35AA   
L35DC: LDX    #$00    
       LDA    #$80    
       STA    $81     
       TXA            
       JSR    L35F9   
       LDA    #$00    
       JSR    L35F9   
       LDA    $B9     
       CLC            
       ADC    #$01    
       JSR    L35F9   
       LDA    #$18    
       STA    $9D     
       BNE    L35AA   
L35F9: PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L3EC3,Y 
       STA    $82,X   
       INX            
       LDA    #$3A    
       STA    $82,X   
       INX            
       STA    $83,X   
       PLA            
       AND    #$0F    
       TAY            
       LDA    L3EC3,Y 
       STA    $82,X   
       INX            
       INX            
       RTS            

L3618: LDA    #$05    
       SED            
       CLC            
       ADC    $96,X   
       STA    $96,X   
       INX            
       LDA    #$00    
       ADC    $96,X   
       STA    $96,X   
       INX            
       LDA    #$00    
       ADC    $96,X   
       STA    $96,X   
       CLD            
       RTS            

L3630: LDA    SWCHB   
       LSR            
L3634: LDY    $A3     
       BEQ    L368C   
       BCS    L368D   
       LDA    #$00    
       STA    $9F     
       STA    $B7     
       STA    $C8     
       STA    $90     
       STA    $91     
       LDA    #$FF    
       STA    $C0     
       LDA    #$80    
       STA    $A3     
       LSR            
       LDX    #$08    
       STX    $CB     
       STX    $9E     
       LDA    $B9     
       LSR            
       BCC    L365C   
       STX    $9F     
L365C: LDA    #$00    
       STA    $94     
       LDA    #$3B    
       STA    $95     
       LDA    #$00    
       LDX    #$06    
L3668: DEX            
       STA    $96,X   
       BNE    L3668   
       STA    $B6     
L366F: LDX    #$07    
       LDA    $B9     
       LSR            
       LSR            
       LDA    #$FF    
       TAY            
       BCS    L367C   
       LDY    #$00    
L367C: STY    $A6,X   
       STA    $AE,X   
       DEX            
       STA    $A6,X   
       STY    $AE,X   
       DEX            
       BPL    L367C   
       LDA    #$5D    
       STA    $8F     
L368C: RTS            

L368D: LSR            
       BCC    L3695   
       LDA    #$05    
       STA    $B8     
       RTS            

L3695: LDA    #$80    
       STA    $B7     
       DEC    $B8     
       BEQ    L369E   
       RTS            

L369E: LDA    #$00    
       STA    $9E     
       STA    $9F     
       STA    $C0     
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$8C    
       STA    $A3     
       LDA    #$45    
       STA    $B8     
       INC    $B9     
       LDA    $B9     
       CMP    #$04    
       BNE    L365C   
       LDA    #$00    
       STA    $B9     
       BEQ    L365C   
L36C0: LDY    #$16    
       BIT    $BF     
       BPL    L36C8   
       LDY    #$2D    
L36C8: LDX    #$16    
L36CA: LDA    L3F8C,Y 
       STA    $CC,X   
       DEY            
       DEX            
       BPL    L36CA   
       JMP    L302C   
L36D6: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3700: LDX    #$68    
       LDA    $9E     
       ORA    $9F     
       BNE    L370E   
       BIT    $B7     
       BVS    L370E   
       LDX    #$62    
L370E: STX    COLUPF  
       STA    HMCLR   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$00    
       LDA    $B6     
       BNE    L3725   
       BIT    SWCHB   
       BVC    L372A   
       BVS    L372C   
L3725: BIT    SWCHB   
       BMI    L372C   
L372A: LDX    #$02    
L372C: STX    $BC     
       LDA    #$02    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       LDA    $BB     
       LDX    #$04    
       CMP    #$04    
       BCC    L3748   
       LDX    #$AB    
       CMP    #$AB    
       BCC    L374A   
L3748: STX    $BB     
L374A: STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$1D    
       STA    TIM64T  
       BIT    $B7     
       BVS    L376A   
       LDA    $9E     
       ORA    $9F     
       BNE    L376A   
       BIT    SWCHA   
       BMI    L376A   
       CLC            
       JSR    L3634   
L376A: LDA    $C0     
       BNE    L379C   
       LDA    $90     
       BNE    L377C   
       STA    $9E     
       LDA    #$FF    
       STA    $90     
       STA    $91     
       BNE    L37D3   
L377C: LDA    $C1     
       AND    #$1F    
       TAX            
       LDA    $BD     
       ADC    L3A94,X 
       CMP    #$A5    
       BCS    L3790   
       CMP    #$04    
       BCC    L3798   
       BCS    L379A   
L3790: BIT    $BD     
       BPL    L3798   
       LDA    #$A5    
       BCS    L379A   
L3798: LDA    #$04    
L379A: STA    $BB     
L379C: LDA    $90     
       ORA    $91     
       BNE    L37E6   
       LDA    $A3     
       CMP    #$8C    
       BNE    L37BA   
       LDA    #$80    
       LDX    $B6     
       LDY    $9E,X   
       BEQ    L37BA   
       CPX    #$00    
       BEQ    L37B5   
       LSR            
L37B5: BIT    SWCHA   
       BEQ    L37BD   
L37BA: JMP    L3978   
L37BD: LDY    #$FF    
       STY    $90     
       STY    $91     
       LDA    $C0     
       BEQ    L37D3   
       LDA    $B7     
       ORA    #$40    
       STA    $B7     
       LDX    $B6     
       DEC    $9E,X   
       DEC    $9E,X   
L37D3: LDY    #$08    
       STY    $BE     
       LDA    $8F     
       SBC    #$08    
       STA    $8E     
       LDX    #$00    
       STX    $C7     
       DEX            
       STX    $BF     
       BNE    L380B   
L37E6: LDA    $8E     
       CMP    #$A0    
       BCC    L380E   
       JSR    L3A84   
       LDA    #$08    
       STA    $BE     
       LDA    #$A0    
       STA    $8E     
       LDA    #$00    
       STA    $BF     
       LDA    $A3     
       CMP    #$04    
       BEQ    L3805   
       LDA    #$88    
       STA    $A3     
L3805: LDX    $C0     
       BEQ    L380B   
       STX    $C7     
L380B: JMP    L392B   
L380E: CMP    #$1A    
       BCS    L3815   
       JMP    L38C3   
L3815: ADC    #$08    
       CMP    $8F     
       BCS    L3825   
       LDX    $BE     
       BEQ    L380B   
       LDA    #$80    
       STA    $BF     
       BNE    L380B   
L3825: LDA    $C0     
       BEQ    L380B   
       LDX    $C9     
       BNE    L380B   
       LDX    #$08    
       LDA    $8F     
       SEC            
       SBC    $8E     
       BCS    L383A   
       EOR    #$FF    
       ADC    #$01    
L383A: CMP    #$02    
       BCC    L3859   
       LDA    $B9     
       AND    #$02    
       BEQ    L3846   
       LDA    #$10    
L3846: ADC    #$0E    
       ADC    $8F     
       SEC            
       SBC    $8E     
       BCS    L3853   
       EOR    #$FF    
       ADC    #$01    
L3853: LDX    #$10    
       CMP    #$02    
       BCS    L380B   
L3859: BIT    CXPPMM  
       BPL    L380B   
       LDA    $BD     
L385F: SBC    #$17    
       DEX            
       BCS    L385F   
       LDA    $A6,X   
       BNE    L387A   
       TXA            
       BNE    L386E   
       INX            
       BNE    L3876   
L386E: CPX    #$08    
       BNE    L3875   
       INX            
       BNE    L3876   
L3875: DEX            
L3876: LDA    $A6,X   
       BEQ    L380B   
L387A: LDA    $B9     
       AND    #$02    
       BNE    L3884   
       BIT    $BF     
       BMI    L38C0   
L3884: LDA    #$00    
       STA    $A6,X   
       LDA    #$0C    
       STA    $C9     
       LDA    $B9     
       AND    #$02    
       BNE    L3898   
       LDA    #$80    
       STA    $BF     
       BNE    L38A0   
L3898: CPX    #$08    
       BCC    L38A0   
       LDX    #$40    
       STX    $C7     
L38A0: LDA    $A3     
       CMP    #$04    
       BEQ    L38AA   
       LDA    #$84    
       STA    $A3     
L38AA: LDA    $BE     
       EOR    #$08    
       STA    $BE     
       JSR    L3A84   
       LDA    #$80    
       STA    $BF     
       LDX    $B6     
       BEQ    L38BD   
       LDX    #$03    
L38BD: JSR    L3618   
L38C0: JMP    L392B   
L38C3: LDA    #$80    
       STA    $81     
       LDA    $BB     
       SEC            
       SBC    #$04    
       SBC    $BD     
       BCS    L38D6   
       LSR    $81     
       EOR    #$FF    
       ADC    #$01    
L38D6: CMP    #$14    
       BCS    L390B   
       BIT    $B7     
       BVC    L38E2   
       LDA    #$54    
       STA    $C8     
L38E2: LDX    $A3     
       CPX    #$04    
       BEQ    L38EC   
       LDX    #$8A    
       STX    $A3     
L38EC: LDX    #$00    
       STX    $BE     
       STX    $BF     
       INX            
       INX            
       CMP    #$08    
       BCS    L38F9   
       DEX            
L38F9: STX    $91     
       BIT    $81     
       BPL    L3902   
       JSR    L3A88   
L3902: JSR    L3A84   
       LDA    #$1A    
       STA    $8E     
       BNE    L38C0   
L390B: LDA    #$86    
       STA    $A3     
       LDA    $8F     
       SBC    #$09    
       STA    $8E     
       LDA    #$00    
       STA    $94     
       LDA    #$3B    
       STA    $95     
       LDA    #$BF    
       AND    $B7     
       STA    $B7     
       LDA    #$00    
       STA    $90     
       STA    $91     
       BEQ    L3978   
L392B: LDA    $BD     
       CMP    #$05    
       BCC    L3939   
       CMP    #$A3    
       BCC    L394A   
       LDA    #$A3    
       BNE    L393B   
L3939: LDA    #$05    
L393B: STA    $BD     
       JSR    L3A88   
       LDX    $A3     
       CPX    #$04    
       BEQ    L394A   
       LDX    #$88    
       STX    $A3     
L394A: LDA    $8E     
       CLC            
       ADC    $90     
       BIT    $C7     
       BVC    L3956   
       CLC            
       ADC    $90     
L3956: STA    $8E     
       LDA    $BD     
       CLC            
       ADC    $91     
       BIT    $C7     
       BVC    L3964   
       CLC            
       ADC    $91     
L3964: STA    $BD     
       JSR    L3A6F   
       SEC            
       SBC    $BD     
       BCS    L3970   
       DEC    $95     
L3970: STA    $94     
       LDX    $C9     
       BEQ    L3978   
       DEC    $C9     
L3978: LDX    #$01    
L397A: LDA    $8E,X   
       CLC            
       ADC    #$01    
       LDY    #$00    
       SEC            
L3982: INY            
       SBC    #$0F    
       BCS    L3982   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
L3993: DEY            
       BNE    L3993   
       STA    RESP0,X 
       DEX            
       BPL    L397A   
       LDX    $BC     
       LDA    L3F81,X 
       STA    $93     
       LDA    L3F80,X 
       SEC            
       SBC    $BB     
       BCS    L39AC   
       DEC    $93     
L39AC: STA    $92     
       LDA    $A3     
       BPL    L39C4   
       CMP    #$8C    
       BEQ    L39BA   
       LDX    $C0     
       BEQ    L39C5   
L39BA: AND    #$7F    
       STA    $A3     
       LDX    #$00    
       STX    $A0     
       STX    $A2     
L39C4: TAX            
L39C5: LDA    L3F6E,X 
       STA    $80     
       LDA    L3F6F,X 
       STA    $81     
       LDA    $A0     
       BNE    L39DE   
       BIT    $A2     
       BMI    L3A39   
       SEC            
       ROR    $A2     
       STA    $A1     
       BCC    L39E9   
L39DE: DEC    $A0     
       BNE    L3A39   
       LDX    #$04    
L39E4: STX    AUDV0   
       DEX            
       BNE    L39E4   
L39E9: LDX    #$00    
       LDY    $A1     
       BEQ    L39F1   
       LDX    #$02    
L39F1: LDA    ($80),Y 
       STA    AUDC0,X 
       BEQ    L3A07   
       INY            
       INX            
       INX            
       CPX    #$06    
       BNE    L39F1   
       LDA    ($80),Y 
       INY            
       STY    $A1     
       STA    $A0     
       BNE    L3A39   
L3A07: LDA    $A3     
       BEQ    L3A2F   
       CMP    #$0C    
       BEQ    L3A2F   
       CMP    #$06    
       BNE    L3A35   
       LDA    $B9     
       LSR            
       BCC    L3A2F   
       JSR    L366F   
       LDA    $9E     
       ORA    $9F     
       BEQ    L3A2D   
L3A21: LDA    $B6     
       EOR    #$01    
       STA    $B6     
       TAX            
       LDA    $9E,X   
       BEQ    L3A21   
       TXA            
L3A2D: STA    $B6     
L3A2F: LDA    #$8C    
       STA    $A3     
       BNE    L3A39   
L3A35: LDA    #$82    
       STA    $A3     
L3A39: LDA    #$3E    
       STA    COLUP0  
       LDY    $BC     
       LDX    #$04    
       STA    WSYNC   
L3A43: DEX            
       BNE    L3A43   
       STA    RESM0   
       STA    RESBL   
       LDA    L3F88,Y 
       STA    CTRLPF  
       LDA    L3F89,Y 
       STA    NUSIZ0  
       LDA    L3F84,Y 
       STA    HMBL    
       LDA    L3F85,Y 
       STA    HMM0    
       LDA    $B9     
       LSR            
       LSR            
       LDA    #$01    
       BCC    L3A68   
       LDA    #$02    
L3A68: STA    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L3A6F: BIT    $BF     
       BMI    L3A77   
       LDX    #$00    
       BEQ    L3A79   
L3A77: LDX    #$02    
L3A79: LDA    L3F7D,X 
       STA    $95     
       LDA    L3F7C,X 
       STA    $94     
       RTS            

L3A84: LDX    #$00    
       BEQ    L3A8A   
L3A88: LDX    #$01    
L3A8A: LDA    $90,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $90,X   
       RTS            

L3A94: .byte $F8,$FA,$FC,$FA,$F8,$FA,$FC,$FE,$FC,$FA,$F8,$F6,$F8,$FA,$FC,$FE
       .byte $00,$02,$04,$06,$08,$0A,$08,$06,$04,$02,$04,$06,$08,$06,$04,$06
       .byte $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66
       .byte $66,$66,$3C,$66,$66,$7C,$60,$62,$3C,$66,$66,$3C,$66,$66,$3C,$46
       .byte $06,$3E,$66,$66,$3C,$46,$06,$0C,$06,$46,$3C,$0C,$0C,$7E,$4C,$2C
       .byte $1C,$0C,$18,$18,$08,$04,$02,$62,$7E,$60,$60,$3C,$06,$46,$7C,$46
       .byte $06,$7C,$60,$60,$7E,$18,$18,$18,$18,$78,$38,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$03,$02,$03,$01,$01,$01
       .byte $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01
       .byte $01,$01,$03,$03,$03,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$8C,$88,$C4,$62,$42,$34,$78,$78,$38,$5E
       .byte $BF,$9E,$7C,$38,$10,$0E,$58,$B7,$BC,$1E,$0C,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$86,$84,$C4
       .byte $64,$2C,$30,$78,$78,$39,$1E,$5E,$BC,$7C,$38,$18,$96,$58,$3F,$1C
       .byte $1E,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$82,$82,$82,$F2
       .byte $9A,$9A,$F2,$6E,$A2,$AE,$6A,$0A,$00,$00,$94,$94,$F6,$95,$90,$F0
       .byte $60,$23,$55,$55,$25,$00,$00,$00,$53,$55,$55,$63,$01,$01,$01
L3EC3: .byte $C0,$F8,$EC,$D8,$DF,$F2,$C6,$E6,$CC,$D2
L3ECD: .byte $00,$00,$20,$00,$A0,$00,$A0,$40,$A0,$50,$A0,$54,$A0,$55,$05,$1B
       .byte $0A,$10,$1B,$01,$03,$1B,$0A,$08,$18,$0A,$14,$1B,$0A,$14,$14,$0A
       .byte $14,$15,$0A,$24,$15,$02,$07,$1B,$0A,$10,$1B,$01,$03,$1B,$0A,$08
       .byte $18,$0A,$14,$1B,$0A,$14,$12,$0A,$14,$14,$0A,$26,$00,$0D,$0E,$07
       .byte $04,$0F,$07,$04,$10,$07,$04,$11,$07,$04,$12,$07,$04,$11,$07,$04
       .byte $10,$07,$04,$0F,$07,$04,$00,$0D,$15,$0A,$08,$10,$0A,$08,$0C,$0A
       .byte $08,$0A,$0A,$10,$0C,$0A,$08,$0A,$0A,$20,$00,$0D,$0E,$0A,$10,$13
       .byte $0A,$05,$14,$0A,$05,$13,$0A,$05,$12,$0A,$10,$13,$0A,$08,$13,$01
       .byte $10,$0F,$0A,$08,$0E,$01,$08,$0E,$0A,$08,$00
L3F58: .byte $06,$04,$0A,$02,$00,$0D,$05,$0C,$02,$05,$0C,$02,$05,$08,$02,$05
       .byte $06,$02,$05,$04,$02,$00
L3F6E: .byte $DB
L3F6F: .byte $3E,$0A,$3F,$24,$3F,$38,$3F,$58,$3F,$5D,$3F,$57,$3F
L3F7C: .byte $2A
L3F7D: .byte $3D,$E1,$3D
L3F80: .byte $71
L3F81: .byte $3C,$BA,$3B
L3F84: .byte $70
L3F85: .byte $A0,$F0,$C0
L3F88: .byte $31
L3F89: .byte $10,$21,$30
L3F8C: .byte $00,$00,$60,$60,$20,$23,$33,$16,$1C,$3E,$5E,$8E,$0C,$3D,$47,$00
       .byte $3C,$0C,$74,$3C,$1C,$3C,$18,$00,$00,$60,$60,$20,$23,$33,$86,$5C
       .byte $3E,$1E,$0E,$04,$3D,$47,$00,$34,$0C,$7C,$3C,$1C,$3C,$18
L3FBA: .byte $18,$9E,$4C,$EC,$3C,$46,$CA,$6C
L3FC2: .byte $90,$33,$C5,$33,$F9,$33,$2D,$34,$62,$34,$97,$34,$CC,$34
L3FD0: LDA    #$30    
       STA    $E1     
L3FD4: LDY    #$00    
       LDA    ($E0),Y 
       CLC            
       ADC    $E2     
       STA    $E2     
       INC    $E0     
       BNE    L3FD4   
       SEC            
       TXA            
       ADC    $E1     
       STA    $E1     
       CMP    #$40    
       BNE    L3FD4   
       LDA    L3F58   
       CMP    $E2     
       BNE    L3FF3   
       RTS            

L3FF3: STA    AUDV0   
       BNE    L3FF3   
       ORA.wy $0000,Y 
       BRK            
       BRK            
       BRK            
       BMI    L3FFF   
L3FFF: .byte $30
