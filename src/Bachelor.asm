; Disassembly of roms/Bachelor.bin
; Disassembled Tue Oct  6 15:19:36 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Bachelor.bin
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
RESM0   =  $12
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
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
       JSR    L3FBB   
       LDA    #$00    
       STA    $94     
       LDA    #$3B    
       STA    $95     
       LDA    L3F82   
       STA    $92     
       LDA    L3F83   
       STA    $93     
       LDA    #$80    
       STA    $A3     
       JSR    L3692   
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
       JSR    L3545   
       LDA    L3FA5   
       STA    COLUP1  
       CLC            
       LDA    $B6     
       ADC    #$37    
       STA    $81     
       LDX    #$30    
       LDA    $C1     
       LSR            
       BCC    L3065   
       JMP    L3366   
L3065: STX    PF0     
       LDA    #$00    
       LDX    #$16    
L306B: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    L3F8E,X 
       AND    $A6     
       STA    GRP1    
       BIT    $C2     
       BVC    L3082   
       NOP            
       JMP    L3082   
L3082: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    L3F8E,X 
       AND    $AE     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L306B   
       JSR    L3564   
L309D: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    L3F8E,X 
       AND    $A7     
       STA    GRP1    
       BIT    $C2     
       BVC    L30B4   
       NOP            
       JMP    L30B4   
L30B4: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    L3F8E,X 
       AND    $AF     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L309D   
       JSR    L3564   
L30CF: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    L3F8E,X 
       AND    $A8     
       STA    GRP1    
       BIT    $C2     
       BVC    L30E6   
       NOP            
       JMP    L30E6   
L30E6: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    L3F8E,X 
       AND    $B0     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L30CF   
       JSR    L3564   
L3101: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    L3F8E,X 
       AND    $A9     
       STA    GRP1    
       BIT    $C2     
       BVC    L3118   
       NOP            
       JMP    L3118   
L3118: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    L3F8E,X 
       AND    $B1     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L3101   
       JSR    L3564   
L3133: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    L3F8E,X 
       AND    $AA     
       STA    GRP1    
       BIT    $C2     
       BVC    L314A   
       NOP            
       JMP    L314A   
L314A: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    L3F8E,X 
       AND    $B2     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L3133   
       JSR    L3564   
L3165: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    L3F8E,X 
       AND    $AB     
       STA    GRP1    
       BIT    $C2     
       BVC    L317C   
       NOP            
       JMP    L317C   
L317C: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    L3F8E,X 
       AND    $B3     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L3165   
       JSR    L3564   
L3197: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    L3F8E,X 
       AND    $AC     
       STA    GRP1    
       BIT    $C2     
       BVC    L31AE   
       NOP            
       JMP    L31AE   
L31AE: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    L3F8E,X 
       AND    $B4     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L3197   
       JSR    L3564   
L31C9: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    L3F8E,X 
       AND    $AD     
       STA    GRP1    
       BIT    $C2     
       BVC    L31E0   
       NOP            
       JMP    L31E0   
L31E0: LDA    ($92),Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       LDA    L3F8E,X 
       AND    $B5     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L31C9   
       STA    WSYNC   
       STA    GRP0    
       STA    HMCLR   
       JSR    L3545   
       LDA    #$00    
       STA    COLUBK  
       STA    REFP0   
       STA    REFP1   
       STA    $BA     
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
L321F: DEY            
       BNE    L321F   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
L322F: LDA    $9D     
       STA    WSYNC   
       STA    COLUBK  
L3235: LDA    #$06    
       STA    $80     
L3239: LDY    $80     
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
       BPL    L3239   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    COLUBK  
       LDA    $BA     
       BNE    L32D5   
       LDA    $B9     
       LSR            
       BCC    L328A   
       LDA    $9E     
       ORA    $9F     
       BNE    L328A   
       BIT    $B7     
       BMI    L328A   
       BVS    L328A   
       JSR    L35CF   
       INC    $BA     
       JMP    L322F   
L328A: LDA    #$30    
       STA    CTRLPF  
       LDA    #$3A    
       STA    COLUPF  
       LDA    #$04    
       STA    $9C     
       LDA    #$00    
       TAY            
L3299: STA    PF0     
       STY    PF1     
       STA    WSYNC   
       LDY    #$06    
L32A1: DEY            
       BNE    L32A1   
       STY    PF0     
       STY    PF1     
       LDY    $B6     
       LDX    $9E,Y   
       LDA    L3ECC,X 
       INX            
       LDY    L3ECC,X 
       DEC    $9C     
       BPL    L3299   
       LDA    #$BB    
       LDY    #$3E    
       STY    $8D     
       LDX    #$0A    
       SEC            
L32C0: STA    $82,X   
       SBC    #$07    
       DEX            
       STY    $82,X   
       DEX            
       BPL    L32C0   
       LDA    #$2E    
       STA    COLUP0  
       STA    COLUP1  
       INC    $BA     
       JMP    L3235   
L32D5: LDY    #$00    
       STY    VDELP0  
       STY    VDELP1  
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       JSR    L3666   
       BIT    $B7     
       BPL    L32EE   
       JSR    L35E9   
       JMP    L3305   
L32EE: BIT    $B7     
       BVS    L32F8   
       LDA    $9E     
       ORA    $9F     
       BEQ    L3302   
L32F8: LDA    $B6     
       BEQ    L3302   
       JSR    L35CF   
       JMP    L3305   
L3302: JSR    L35B5   
L3305: LDA    #$82    
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       BIT    $B7     
       BVC    L3325   
       LDA    #$00    
       STA    $C8     
       STA    $CA     
       LDA    $A4     
       ADC    #$08    
       STA    $A4     
       BCC    L3340   
       JSR    L3526   
       JMP    L3340   
L3325: INC    $CA     
       BNE    L3340   
       DEC    $CB     
       BNE    L3340   
       LDA    #$02    
       STA    $CB     
       LDA    $8E     
       ASL            
       AND    #$F2    
       STA    $C8     
       LDA    $9E     
       ORA    $9F     
       BNE    L3340   
       STA    $C0     
L3340: LDX    $8F     
       LDA    #$40    
       CPX    #$50    
       BPL    L3349   
       LSR            
L3349: STA    $C2     
       LDX    #$0F    
L334D: LDA    $A6,X   
       BNE    L3363   
       DEX            
       BPL    L334D   
       JSR    L36A5   
       LDX    $B6     
       LDA    $9E,X   
       CMP    #$0C    
       BEQ    L3363   
       INC    $9E,X   
       INC    $9E,X   
L3363: JMP    L302C   
L3366: STX    PF0     
       STY    $BB     
       LDX    $81     
       TXS            
       LDA    #$00    
       LDX    #$16    
L3371: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    L3F8E,X 
       AND    $A6     
       STA    GRP1    
       BIT    $C2     
       BVC    L338C   
       NOP            
       JMP    L338C   
L3388: NOP            
       JMP    L3392   
L338C: PLA            
       PHA            
       BPL    L3388   
       DEC    $BB     
L3392: LDA    L3F8E,X 
       AND    $AE     
       STA    GRP1    
       LDA    #$30    
       STA    PF0     
       LDA    ($94),Y 
       DEY            
       DEX            
       BNE    L3371   
       JMP    L3589   
L33A6: .byte $85,$02,$85,$1B,$A9,$00,$85,$0D,$BD,$8E,$3F,$25,$A7,$85,$1C,$24
       .byte $C2,$50,$08,$EA,$4C,$C1,$33,$EA,$4C,$C7,$33,$68,$48,$10,$F8,$C6
       .byte $BB,$BD,$8E,$3F,$25,$AF,$85,$1C,$A9,$30,$85,$0D,$B1,$94,$88,$CA
       .byte $D0,$CE,$A2,$02,$4C,$89,$35,$85,$02,$85,$1B,$A9,$00,$85,$0D,$BD
       .byte $8E,$3F,$25,$A8,$85,$1C,$24,$C2,$50,$07,$EA,$4C,$F7,$33,$4C,$FD
       .byte $33,$68,$48,$10,$F9,$C6,$BB,$BD,$8E,$3F,$25,$B0,$85,$1C,$A9,$30
       .byte $85,$0D,$B1,$94,$88,$CA,$D0,$CF,$A2,$04,$4C,$89,$35,$85,$02,$85
       .byte $1B,$A9,$00,$85,$0D,$BD,$8E,$3F,$25,$A9,$85,$1C,$24,$C2,$50,$07
       .byte $EA,$4C,$2D,$34,$4C,$33,$34,$68,$48,$10,$F9,$C6,$BB,$BD,$8E,$3F
       .byte $25,$B1,$85,$1C,$A9,$30,$85,$0D,$B1,$94,$88,$CA,$D0,$CF,$A2,$06
       .byte $4C,$89,$35,$85,$02,$85,$1B,$A9,$00,$85,$0D,$BD,$8E,$3F,$25,$AA
       .byte $85,$1C,$24,$C2,$50,$08,$EA,$4C,$64,$34,$EA,$4C,$6A,$34,$68,$48
       .byte $10,$F8,$C6,$BB,$BD,$8E,$3F,$25,$B2,$85,$1C,$A9,$30,$85,$0D,$B1
       .byte $94,$88,$CA,$D0,$CE,$A2,$08,$4C,$89,$35,$85,$02,$85,$1B,$A9,$00
       .byte $85,$0D,$BD,$8E,$3F,$25,$AB,$85,$1C,$24,$C2,$50,$08,$EA,$4C,$9B
       .byte $34,$EA,$4C,$A1,$34,$68,$48,$10,$F8,$C6,$BB,$BD,$8E,$3F,$25,$B3
       .byte $85,$1C,$A9,$30,$85,$0D,$B1,$94,$88,$CA,$D0,$CE,$A2,$0A,$4C,$89
       .byte $35,$85,$02,$85,$1B,$A9,$00,$85,$0D,$BD,$8E,$3F,$25,$AC,$85,$1C
       .byte $24,$C2,$50,$08,$EA,$4C,$D2,$34,$EA,$4C,$D8,$34,$68,$48,$10,$F8
       .byte $C6,$BB,$BD,$8E,$3F,$25,$B4,$85,$1C,$A9,$30,$85,$0D,$B1,$94,$88
       .byte $CA,$D0,$CE,$A2,$0C,$4C,$89,$35,$85,$02,$85,$1B,$A9,$00,$85,$0D
       .byte $BD,$8E,$3F,$25,$AD,$85,$1C,$24,$C2,$50,$08,$EA,$4C,$09,$35,$EA
       .byte $4C,$0F,$35,$68,$48,$10,$F8,$C6,$BB,$BD,$8E,$3F,$25,$B5,$85,$1C
       .byte $A9,$30,$85,$0D,$B1,$94,$88,$CA,$D0,$CE,$A2,$FF,$9A,$4C,$FA,$31
L3526: LDA    $B9     
       LSR            
       BEQ    L3540   
       DEC    $8F     
       LDA    $8F     
       CMP    #$40    
       BPL    L3544   
       LDX    #$07    
       LDY    #$FF    
L3537: LDA    $AE,X   
       STA    $A6,X   
       STY    $AE,X   
       DEX            
       BPL    L3537   
L3540: LDA    #$5D    
       STA    $8F     
L3544: RTS            

L3545: LDX    #$FF    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       INX            
       STX    GRP0    
       STX    GRP1    
       LDX    #$04    
       LDA    $C8     
       STA    COLUBK  
L3558: STA    WSYNC   
       DEX            
       BNE    L3558   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       RTS            

L3564: STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDX    $A5     
       LDA    L3FA5,X 
       STA    COLUP1  
       INC    $A5     
       LDX    #$02    
L3575: DEX            
       BNE    L3575   
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

L3589: STA    GRP0    
       LDA    #$00    
       STA    PF0     
       LDA    L3FAD,X 
       STA    $C5     
       INX            
       LDA    L3FAD,X 
       STA    $C6     
       LDX    $A5     
       LDA    L3FA5,X 
       STA    COLUP1  
       INC    $A5     
       LDA    #$30    
       STA    PF0     
       PLA            
       PHA            
       BPL    L35AD   
       DEC    $BB     
L35AD: LDA    ($94),Y 
       DEY            
       LDX    #$16    
       JMP.ind ($00C5)
L35B5: LDX    #$00    
       LDA    #$80    
       STA    $81     
       LDA    $98     
       JSR    L3605   
       LDA    $97     
       JSR    L3605   
       LDA    $96     
       JSR    L3605   
       LDA    #$46    
       STA    $9D     
       RTS            

L35CF: LDX    #$00    
       LDA    #$80    
       STA    $81     
       LDA    $9B     
       JSR    L3605   
       LDA    $9A     
       JSR    L3605   
       LDA    $99     
       JSR    L3605   
       LDA    #$E6    
       STA    $9D     
       RTS            

L35E9: LDX    #$00    
       LDA    #$80    
       STA    $81     
       TXA            
       JSR    L3605   
       LDA    #$00    
       JSR    L3605   
       LDA    $B9     
       CLC            
       ADC    #$01    
       JSR    L3605   
       LDA    #$68    
       STA    $9D     
       RTS            

L3605: PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$0F    
       BNE    L361B   
       BIT    $81     
       BPL    L361B   
       LDA    #$36    
       STA    $82,X   
       INX            
       LDA    #$3B    
       BNE    L3626   
L361B: TAY            
       STA    $81     
       LDA    L3EC2,Y 
       STA    $82,X   
       INX            
       LDA    #$3A    
L3626: STA    $82,X   
       INX            
       PLA            
       AND    #$0F    
       BNE    L363F   
       BIT    $81     
       BPL    L363F   
       CPX    #$0A    
       BEQ    L363F   
       LDA    #$36    
       STA    $82,X   
       INX            
       LDA    #$3B    
       BNE    L364A   
L363F: TAY            
       STA    $81     
       LDA    L3EC2,Y 
       STA    $82,X   
       INX            
       LDA    #$3A    
L364A: STA    $82,X   
       INX            
       RTS            

L364E: LDA    #$05    
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

L3666: LDA    SWCHB   
       LSR            
L366A: LDY    $A3     
       BEQ    L36C2   
       BCS    L36C3   
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
       BCC    L3692   
       STX    $9F     
L3692: LDA    #$00    
       STA    $94     
       LDA    #$3B    
       STA    $95     
       LDA    #$00    
       LDX    #$06    
L369E: DEX            
       STA    $96,X   
       BNE    L369E   
       STA    $B6     
L36A5: LDX    #$07    
       LDA    $B9     
       LSR            
       LSR            
       LDA    #$FF    
       TAY            
       BCS    L36B2   
       LDY    #$00    
L36B2: STY    $A6,X   
       STA    $AE,X   
       DEX            
       STA    $A6,X   
       STY    $AE,X   
       DEX            
       BPL    L36B2   
       LDA    #$5D    
       STA    $8F     
L36C2: RTS            

L36C3: LSR            
       BCC    L36CB   
       LDA    #$05    
       STA    $B8     
       RTS            

L36CB: LDA    #$80    
       STA    $B7     
       DEC    $B8     
       BEQ    L36D4   
       RTS            

L36D4: LDA    #$00    
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
       BNE    L3692   
       LDA    #$00    
       STA    $B9     
       BEQ    L3692   
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
L3700: LDX    #$AC    
       LDA    $9E     
       ORA    $9F     
       BNE    L370E   
       BIT    $B7     
       BVS    L370E   
       LDX    #$93    
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
       JSR    L366A   
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
L38BD: JSR    L364E   
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
       LDA    L3F83,X 
       STA    $93     
       LDA    L3F82,X 
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
L39C5: LDA    L3F70,X 
       STA    $80     
       LDA    L3F71,X 
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
       JSR    L36A5   
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
       LDA    L3F8A,Y 
       STA    CTRLPF  
       LDA    L3F8B,Y 
       STA    NUSIZ0  
       LDA    L3F86,Y 
       STA    HMBL    
       LDA    L3F87,Y 
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
L3A79: LDA    L3F7F,X 
       STA    $95     
       LDA    L3F7E,X 
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
       .byte $00,$00,$00,$00,$00,$00,$06,$06,$04,$C4,$CC,$68,$38,$7C,$7A,$71
       .byte $30,$BC,$E2,$00,$3C,$30,$2E,$3C,$38,$3C,$18,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$06,$04
       .byte $C4,$CC,$61,$3A,$7C,$78,$70,$20,$BC,$E2,$00,$2C,$30,$3E,$3C,$38
       .byte $3C,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$89,$A8,$A8,$D8,$D9,$8A,$8A,$C7,$88,$80,$87,$48
       .byte $28,$27,$1C,$88,$88,$08,$08,$AA,$3E,$71,$22,$22,$22,$22,$22,$71
       .byte $A7,$48,$A8,$28,$28,$28,$C8,$3E,$A0,$A0,$BC,$A0,$A0,$BE
L3EC2: .byte $C0,$F8,$EC,$D8,$DF,$F2,$C6,$E6,$CC,$D2
L3ECC: .byte $00,$00,$20,$00,$A0,$00,$A0,$40,$A0,$50,$A0,$54,$A0,$55,$05,$1C
       .byte $0A,$10,$15,$0A,$18,$16,$0A,$08,$15,$0A,$10,$11,$0A,$10,$13,$0A
       .byte $18,$15,$0A,$08,$13,$0A,$10,$11,$0A,$08,$13,$0A,$08,$15,$0A,$18
       .byte $15,$01,$02,$15,$0A,$08,$11,$0A,$10,$0E,$0A,$10,$0C,$0A,$20,$00
       .byte $0D,$0E,$07,$04,$0F,$07,$04,$10,$07,$04,$11,$07,$04,$12,$07,$04
       .byte $11,$07,$04,$10,$07,$04,$0F,$07,$04,$00,$0D,$15,$0A,$08,$10,$0A
       .byte $08,$0C,$0A,$08,$0A,$0A,$10,$0C,$0A,$08,$0A,$0A,$20,$00,$0D,$0E
       .byte $0A,$10,$13,$0A,$05,$14,$0A,$05,$13,$0A,$05,$12,$0A,$10,$13,$0A
       .byte $08,$13,$01,$10,$0F,$0A,$08,$0E,$01,$08,$0E,$0A,$08,$00
L3F5A: .byte $06,$04,$0A,$02,$00,$0D,$05,$0C,$02,$05,$0C,$02,$05,$08,$02,$05
       .byte $06,$02,$05,$04,$02,$00
L3F70: .byte $DA
L3F71: .byte $3E,$0C,$3F,$26,$3F,$3A,$3F,$5A,$3F,$5F,$3F,$59,$3F
L3F7E: .byte $2A
L3F7F: .byte $3D,$E1,$3D
L3F82: .byte $71
L3F83: .byte $3C,$BA,$3B
L3F86: .byte $70
L3F87: .byte $A0,$F0,$C0
L3F8A: .byte $31
L3F8B: .byte $10,$21,$30
L3F8E: .byte $00,$00,$31,$11,$23,$46,$24,$1C,$1E,$1E,$1C,$39,$79,$F9,$7D,$3E
       .byte $3C,$42,$B4,$9C,$78,$38,$30
L3FA5: .byte $1C,$9E,$4C,$EC,$3C,$6C,$CA,$2E
L3FAD: .byte $A6,$33,$DD,$33,$13,$34,$49,$34,$80,$34,$B7,$34,$EE,$34
L3FBB: LDA    #$30    
       STA    $E1     
L3FBF: LDY    #$00    
       LDA    ($E0),Y 
       CLC            
       ADC    $E2     
       STA    $E2     
       INC    $E0     
       BNE    L3FBF   
       SEC            
       LDA    #$00    
       ADC    $E1     
       STA    $E1     
       CMP    #$40    
       BNE    L3FBF   
       LDA    L3F5A   
       CMP    $E2     
       BNE    L3FDF   
       RTS            

L3FDF: LDA    #$09    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       JMP    (L3FFE) 
L3FEA: .byte $00,$00,$00,$00,$00,$00,$10,$00,$00,$0E,$00,$00,$00,$00,$00,$00
       .byte $00,$30,$00,$30
L3FFE: .byte $00,$30
