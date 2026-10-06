; Disassembly of roms/testcart.bin
; Disassembled Tue Oct  6 15:24:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/testcart.bin
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
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000
LF000: .byte $E3,$33,$1B,$1B,$1B,$1B,$1C,$30,$60,$60,$60,$60,$00,$7C,$00,$7C
       .byte $00,$00,$28,$FE,$28,$28,$FE,$28,$54,$38,$FE,$38,$54,$00,$10,$10
       .byte $10,$10,$10,$10,$00,$00,$00,$FF,$00,$00,$18,$3C,$7E,$FF,$18,$18
       .byte $FF,$7E,$3C,$18,$18,$1E,$FF,$FF,$1E,$18,$18,$78,$FF,$FF,$78,$18
       .byte $38,$44,$82,$82,$44,$38,$38,$7C,$FE,$FE,$7C,$38,$00,$00,$00,$00
       .byte $00,$00,$C6,$C6,$FE,$C6,$6C,$38,$FC,$C6,$C6,$D8,$CC,$F8,$3C,$66
       .byte $C0,$C0,$66,$3C,$F8,$CC,$C6,$C6,$CC,$F8,$FE,$C0,$C0,$F8,$C0,$FE
       .byte $C0,$C0,$C0,$FC,$C0,$FE,$3E,$66,$C6,$CE,$60,$3E,$7C,$C6,$C6,$C6
       .byte $C6,$C6,$FE,$C6,$C6,$7C,$C6,$C6,$06,$06,$06,$CE,$DC,$F8,$D8,$CC
       .byte $C6,$FE,$C0,$C0,$C0,$C0,$C0,$C6,$CE,$FE,$FE,$E6,$C6,$7C,$C6,$C6
       .byte $C6,$C6,$7C,$CE,$DC,$F8,$CE,$C6,$FC,$7C,$C6,$06,$7C,$C0,$78,$30
       .byte $30,$30,$30,$30,$FC,$82,$C6,$EE,$FE,$D6,$C6,$78,$30,$30,$30,$30
       .byte $78,$CC,$CC,$FE,$60,$30,$18,$0C,$FE,$78,$30,$30,$30,$30,$70,$FE
       .byte $60,$18,$06,$C6,$7C,$7C,$C6,$06,$1C,$C6,$7C,$06,$06,$FE,$C6,$66
       .byte $66,$7C,$C6,$06,$FC,$C0,$FE,$7C,$C6,$C6,$FC,$C0,$7C,$18,$18,$18
       .byte $0C,$06,$FE,$7C,$C6,$C6,$7C,$C6,$7C,$7C,$06,$06,$7E,$C6,$7C,$00
LF100: LDX    #$04    
       STA    WSYNC   
LF104: NOP            
       DEX            
       BNE    LF104   
       LDA    $81     
       LDA    $81     
       STA    HMCLR   
       LDX    #$90    
       LDY    #$06    
       LDA    $80     
       AND    #$01    
       BEQ    LF15B   
       JMP    LF133   
LF11B: STA    GRP1    
       LDA    ($8B),Y 
       STA    GRP0    
       LDA    ($8F),Y 
       STX    HMP0    
       STX    HMP1    
       STA    GRP1    
       LDA    ($93),Y 
       STA    GRP0    
       LDA    ($97),Y 
       STA    GRP1    
       STA    GRP0    
LF133: DEY            
       BMI    LF171   
       LDA    ($85),Y 
       LSR            
       STA    GRP0    
       LDA    ($89),Y 
       LSR            
       STA.w  $001C   
       STA    HMOVE   
       LDA    ($8D),Y 
       LSR            
       STA    GRP0    
       LDA    ($95),Y 
       LSR            
       STA    $81     
       LDA    ($91),Y 
       LSR            
       STA    GRP1    
       LDA    $81     
       STA    GRP0    
       LDA    ($99),Y 
       LSR            
       STA    GRP1    
LF15B: STA    GRP0    
       LDA    #$70    
       STA    HMP0    
       STA    HMP1    
       DEY            
       BMI    LF17C   
       LDA    ($83),Y 
       STA    GRP0    
       LDA    ($87),Y 
       STA    HMOVE   
       JMP    LF11B   
LF171: STX    HMP0    
       STX    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF182   
LF17C: STA    WSYNC   
       STA    $81     
       STA    $81     
LF182: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            


START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF192: STA    VSYNC,X 
       DEX            
       BNE    LF192   
       STA    WSYNC   
       LDA    #$36    
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
       LDX    #$17    
       LDA    #$F0    
LF1BE: STA    $83,X   
       DEX            
       DEX            
       BPL    LF1BE   
       LDA    #$F5    
       STA    $A3     
       LDA    #$68    
       STA    $9C     
       LDA    #$F6    
       STA    $9D     
       LDA    #$4C    
       STA    $99     
       LDA    #$0F    
       STA    $A4     
       LDA    #$20    
       STA    $A6     
       LDA    #$F6    
       STA    $BD     
       LDA    #$F6    
       STA    $BE     
LF1E4: JSR    LF22D   
       INC    $80     
       LDA    $A3     
       BEQ    LF224   
       LDA    $B8     
       BNE    LF1F5   
       DEC    $A3     
       BEQ    LF224   
LF1F5: LDA    SWCHB   
       AND    #$02    
       BEQ    LF212   
       LDA    $B7     
       BEQ    LF207   
       LDA    #$FF    
       STA    $B8     
       JMP    LF224   
LF207: LDA    $B6     
       BEQ    LF224   
       LDA    #$00    
       STA    $A3     
       JMP    LF224   
LF212: LDA    SWCHB   
       AND    #$01    
       BNE    LF21D   
       LDA    #$FF    
       STA    $B7     
LF21D: LDA    #$FF    
       STA    $B6     
       JMP    LF224   
LF224: JSR    LF247   
       JSR    LF419   
       JMP    LF1E4   
LF22D: LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2C    
       STA    TIM64T  
       STA    WSYNC   
       STA    VSYNC   
       RTS            

LF23F: TXA            
       LDX    #$96    
LF242: DEX            
       BNE    LF242   
       TAX            
       RTS            

LF247: JSR    LFF9A   
       LDA    #$00    
       LDX    REFP1   
       BMI    LF252   
       ORA    #$08    
LF252: LDX    PF0     
       BMI    LF258   
       ORA    #$02    
LF258: TAX            
       LDA    SWCHA   
       AND    #$10    
       BNE    LF264   
       TXA            
       ORA    #$04    
       TAX            
LF264: LDA    SWCHA   
       AND    #$01    
       BNE    LF26F   
       TXA            
       ORA    #$01    
       TAX            
LF26F: TXA            
       ASL            
       TAX            
       LDA    LF6D6,X 
       STA    $BF     
       INX            
       LDA    LF6D6,X 
       STA    $C0     
       LDX    #$00    
       LDA    SWCHA   
       AND    #$40    
       BNE    LF28A   
       TXA            
       ORA    #$08    
       TAX            
LF28A: LDA    SWCHA   
       AND    #$04    
       BNE    LF295   
       TXA            
       ORA    #$02    
       TAX            
LF295: LDA    SWCHA   
       AND    #$80    
       BNE    LF2A0   
       TXA            
       ORA    #$04    
       TAX            
LF2A0: LDA    SWCHA   
       AND    #$08    
       BNE    LF2AB   
       TXA            
       ORA    #$01    
       TAX            
LF2AB: TXA            
       ASL            
       TAX            
       LDA    LF6D6,X 
       STA    $C1     
       INX            
       LDA    LF6D6,X 
       STA    $C2     
       LDX    #$00    
       LDA    SWCHA   
       AND    #$20    
       BNE    LF2C6   
       TXA            
       ORA    #$02    
       TAX            
LF2C6: LDA    SWCHA   
       AND    #$02    
       BNE    LF2D1   
       TXA            
       ORA    #$01    
       TAX            
LF2D1: TXA            
       ASL            
       TAX            
       LDA    LF6D6,X 
       STA    $C3     
       INX            
       LDA    LF6D6,X 
       STA    $C4     
       LDX    #$00    
       LDA    SWCHB   
       AND    #$40    
       BNE    LF2EC   
       TXA            
       ORA    #$02    
       TAX            
LF2EC: LDA    SWCHB   
       AND    #$80    
       BNE    LF2F7   
       TXA            
       ORA    #$01    
       TAX            
LF2F7: TXA            
       ASL            
       TAX            
       LDA    LF6D6,X 
       STA    $C9     
       INX            
       LDA    LF6D6,X 
       STA    $CA     
       LDA    SWCHB   
       AND    #$03    
       ASL            
       TAX            
       LDA    LF6D6,X 
       STA    $CB     
       INX            
       LDA    LF6D6,X 
       STA    $CC     
       LDX    #$00    
       LDA    SWCHB   
       AND    #$08    
       LSR            
       LSR            
       TAX            
       LDA    LF6D6,X 
       STA    $CD     
       INX            
       LDA    LF6D6,X 
       STA    $CE     
       LDA    #$FF    
       STA    SWACNT  
       LDX    $B3     
       LDY    $B4     
       INC    $B2     
       LDA    $B2     
       AND    #$01    
       BNE    LF3A0   
       LDX    #$00    
       LDY    #$00    
       LDA    #$EE    
       STA    SWCHA   
       JSR    LF23F   
       BIT    COLUPF  
       BMI    LF34F   
       LDX    #$04    
LF34F: BIT    COLUBK  
       BMI    LF355   
       LDX    #$06    
LF355: BIT    REFP1   
       BMI    LF35B   
       LDX    #$08    
LF35B: BIT    CTRLPF  
       BMI    LF361   
       LDY    #$04    
LF361: BIT    REFP0   
       BMI    LF367   
       LDY    #$06    
LF367: BIT    PF0     
       BMI    LF36D   
       LDY    #$08    
LF36D: LDA    #$DD    
       STA    SWCHA   
       JSR    LF23F   
       BIT    COLUPF  
       BMI    LF37B   
       LDX    #$0A    
LF37B: BIT    COLUBK  
       BMI    LF381   
       LDX    #$0C    
LF381: BIT    REFP1   
       BMI    LF387   
       LDX    #$0E    
LF387: BIT    CTRLPF  
       BMI    LF38D   
       LDY    #$0A    
LF38D: BIT    REFP0   
       BMI    LF393   
       LDY    #$0C    
LF393: BIT    PF0     
       BMI    LF399   
       LDY    #$0E    
LF399: STX    $B3     
       STY    $B4     
       JMP    LF40E   
LF3A0: LDA    #$BB    
       STA    SWCHA   
       JSR    LF23F   
       BIT    COLUPF  
       BMI    LF3AE   
       LDX    #$10    
LF3AE: BIT    COLUBK  
       BMI    LF3B4   
       LDX    #$12    
LF3B4: BIT    REFP1   
       BMI    LF3BA   
       LDX    #$14    
LF3BA: BIT    CTRLPF  
       BMI    LF3C0   
       LDY    #$10    
LF3C0: BIT    REFP0   
       BMI    LF3C6   
       LDY    #$12    
LF3C6: BIT    PF0     
       BMI    LF3CC   
       LDY    #$14    
LF3CC: LDA    #$77    
       STA    SWCHA   
       JSR    LF23F   
       BIT    COLUPF  
       BMI    LF3DA   
       LDX    #$16    
LF3DA: BIT    COLUBK  
       BMI    LF3E0   
       LDX    #$18    
LF3E0: BIT    REFP1   
       BMI    LF3E6   
       LDX    #$1A    
LF3E6: BIT    CTRLPF  
       BMI    LF3EC   
       LDY    #$16    
LF3EC: BIT    REFP0   
       BMI    LF3F2   
       LDY    #$18    
LF3F2: BIT    PF0     
       BMI    LF3F8   
       LDY    #$1A    
LF3F8: LDA    LF6D6,X 
       STA    $C5     
       INX            
       LDA    LF6D6,X 
       STA    $C6     
       LDA    LF6D6,Y 
       STA    $C7     
       INY            
       LDA    LF6D6,Y 
       STA    $C8     
LF40E: LDA    #$FF    
       STA    SWCHA   
       LDA    #$00    
       STA    SWACNT  
       RTS            

LF419: LDA    #$09    
       STA    $9B     
       LDY    #$00    
       STY    $A0     
       STY    $B5     
       LDX    $B5     
       LDA    INTIM   
       BNE    LF419   
       STA    WSYNC   
       LDA    #$80    
       STA    VBLANK  
LF430: LDA    #$32    
       STA    TIM8T   
       LDA    $A3     
       BEQ    LF448   
       LDA    LF63E,X 
       STA    COLUBK  
       LDA    LF648,X 
       STA    COLUP0  
       STA    COLUP1  
       JMP    LF455   
LF448: LDA    LF652,X 
       STA    COLUBK  
       LDA    LF65E,X 
       STA    COLUP0  
       STA    COLUP1  
       CLC            
LF455: LDA    $A3     
       BNE    LF465   
       TXA            
       ASL            
       TAX            
       LDA    $BD,X   
       STA    $9C     
       INX            
       LDA    $BD,X   
       STA    $9D     
LF465: INC    $B5     
       LDX    #$00    
LF469: LDA    ($9C),Y 
       INY            
       STA    $83,X   
       INX            
       INX            
       CPX    #$16    
       BNE    LF469   
LF474: LDA    INTIM   
       BNE    LF474   
       STA    WSYNC   
       LDA    $9B     
       CMP    #$05    
       BNE    LF485   
       LDA    #$00    
       STA    VBLANK  
LF485: TYA            
       PHA            
       JSR    LF100   
       PLA            
       TAY            
       LDX    $B5     
       DEC    $9B     
       BNE    LF430   
       LDA    #$42    
       STA    TIM8T   
       STA    WSYNC   
       LDY    #$3F    
       STY    $AD     
       STY    $AE     
       STY    $AF     
       STY    $B0     
       LDA    #$00    
       STA    $AB     
       STA    COLUBK  
       LDA    #$F7    
       STA    COLUP0  
       LDA    #$30    
       STA    NUSIZ0  
       LDA    $A7     
       STA    $A6     
       JSR    LF558   
       JSR    LF5CA   
       LDA    #$24    
       STA    COLUP0  
       LDA    $A8     
       STA    $A6     
       JSR    LF558   
       JSR    LF5CA   
       LDA    #$C4    
       STA    COLUP0  
       LDA    $A9     
       STA    $A6     
       JSR    LF558   
       JSR    LF5CA   
       LDA    #$1A    
       STA    COLUP0  
       LDA    $AA     
       STA    $A6     
       JSR    LF558   
       JSR    LF5CA   
       LDA    #$36    
       STA    NUSIZ0  
       LDX    #$1B    
LF4EB: STA    WSYNC   
       JSR    LF53E   
       DEX            
       BNE    LF4EB   
       LDA    #$82    
       STA    VBLANK  
       STA    WSYNC   
       LDA    #$21    
       STA    TIM64T  
       LDA    $A7     
       STA    $B1     
       LDA    $AD     
       JSR    LF60B   
       TXA            
       STA    $A7     
       LDA    $A8     
       STA    $B1     
       LDA    $AE     
       JSR    LF60B   
       TXA            
       STA    $A8     
       LDA    $A9     
       STA    $B1     
       LDA    $AF     
       JSR    LF60B   
       TXA            
       STA    $A9     
       LDA    $AA     
       STA    $B1     
       LDA    $B0     
       JSR    LF60B   
       TXA            
       STA    $AA     
LF52E: LDA    INTIM   
       BNE    LF52E   
       STA    WSYNC   
       LDA    #$82    
       STA    VBLANK  
       LDA    #$02    
       STA    VBLANK  
       RTS            

LF53E: DEY            
       LDA    COLUPF  
       BMI    LF545   
       STY    $AD     
LF545: LDA    COLUBK  
       BMI    LF54B   
       STY    $AE     
LF54B: LDA    CTRLPF  
       BMI    LF551   
       STY    $AF     
LF551: LDA    REFP0   
       BMI    LF557   
       STY    $B0     
LF557: RTS            

LF558: STA    WSYNC   
       JSR    LF53E   
       LDA    $A6     
       ASL            
       ASL            
       STA    $81     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       INX            
       STA    WSYNC   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
LF575: DEX            
       BNE    LF575   
       STA    RESM0   
       STA    WSYNC   
       DEY            
       LDA    COLUPF  
       BMI    LF583   
       STY    $AD     
LF583: LDA    COLUBK  
       BMI    LF589   
       STY    $AE     
LF589: LDA    CTRLPF  
       BMI    LF58F   
       STY    $AF     
LF58F: LDA    REFP0   
       BMI    LF595   
       STY    $B0     
LF595: LDA    $81     
       AND    #$1E    
       LSR            
       STA    $82     
       LDA    #$08    
       SBC    $82     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM0    
       LDA    #$00    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       DEY            
       LDA    COLUPF  
       BMI    LF5B7   
       STY    $AD     
LF5B7: LDA    COLUBK  
       BMI    LF5BD   
       STY    $AE     
LF5BD: LDA    CTRLPF  
       BMI    LF5C3   
       STY    $AF     
LF5C3: LDA    REFP0   
       BMI    LF5C9   
       STY    $B0     
LF5C9: RTS            

LF5CA: STA    WSYNC   
       LDA    $A3     
       BNE    LF5D7   
       LDA    #$FF    
       STA    ENAM0   
       JSR    LF53E   
LF5D7: STA    WSYNC   
       JSR    LF53E   
       STA    WSYNC   
       JSR    LF53E   
       STA    WSYNC   
       JSR    LF53E   
       STA    WSYNC   
       JSR    LF53E   
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM0   
       DEY            
       LDA    COLUPF  
       BMI    LF5F8   
       STY    $AD     
LF5F8: LDA    COLUBK  
       BMI    LF5FE   
       STY    $AE     
LF5FE: LDA    CTRLPF  
       BMI    LF604   
       STY    $AF     
LF604: LDA    REFP0   
       BMI    LF60A   
       STY    $B0     
LF60A: RTS            

LF60B: TAY            
       LDX    #$00    
       CMP    #$00    
       BEQ    LF63D   
       LDX    $B1     
       SBC    $B1     
       BEQ    LF63D   
       CMP    #$01    
       BEQ    LF63D   
       STY    $81     
       LDA    $B1     
       SBC    $81     
       CMP    #$01    
       BEQ    LF63D   
       TYA            
       SBC    $B1     
       BMI    LF635   
       JMP    LF62E   
LF62E: TYA            
       SBC    #$02    
       TAX            
       JMP    LF63D   
LF635: TYA            
       ADC    #$02    
       TAX            
       JMP    LF63D   
LF63C: .byte $AA
LF63D: RTS            

LF63E: .byte $81,$83,$22,$C5,$25,$1A,$05,$06,$0F,$00
LF648: .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$00,$0F
LF652: .byte $81,$83,$83,$83,$C5,$C5,$24,$22,$22,$00,$00,$00
LF65E: .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$00,$06,$AF,$6A,$A9,$AF
       .byte $5E,$52,$A3,$AF,$4C,$58,$91,$7C,$6A,$4C,$4C,$4C,$4C,$4C,$4C,$4C
       .byte $A3,$6A,$64,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$76,$A3,$6A,$6A,$97
       .byte $4C,$4C,$4C,$4C,$4C,$4C,$9D,$A3,$52,$97,$76,$6A,$4C,$4C,$4C,$4C
       .byte $4C,$BD,$6A,$91,$91,$9D,$B5,$4C,$4C,$4C,$4C,$4C,$76,$A3,$52,$BD
       .byte $C9,$4C,$4C,$4C,$4C,$4C,$4C,$76,$A3,$52,$BD,$CF,$4C,$4C,$4C,$4C
       .byte $4C,$4C,$B5,$7F,$BB,$AF,$6A,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C
       .byte $4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C
LF6D6: .byte $F6,$F6,$59,$F7,$BC,$F7,$1F,$F8,$82,$F8,$E5,$F8,$48,$F9,$AB,$F9
       .byte $0E,$FA,$71,$FA,$D4,$FA,$37,$FB,$9A,$FB,$FD,$FB,$60,$FC,$81,$FC
       .byte $85,$9D,$BD,$A9,$AF,$BB,$5E,$8B,$A9,$4C,$4C,$91,$4C,$40,$1E,$4C
       .byte $4C,$A3,$4C,$40,$1E,$4C,$4C,$4C,$24,$4C,$24,$4C,$4C,$4C,$24,$4C
       .byte $24,$4C,$4C,$4C,$1E,$4C,$4C,$4C,$4C,$4C,$1E,$4C,$8B,$6A,$BD,$58
       .byte $9D,$52,$A3,$64,$91,$0C,$4C,$8B,$6A,$BD,$58,$9D,$52,$A3,$64,$A3
       .byte $0C,$4C,$64,$70,$91,$0C,$52,$4C,$64,$70,$A3,$0C,$52,$A9,$6A,$91
       .byte $0C,$C9,$4C,$A3,$6A,$A9,$0C,$C9,$58,$B5,$0C,$58,$B5,$4C,$4C,$4C
       .byte $4C,$4C,$4C,$85,$9D,$BD,$A9,$AF,$BB,$5E,$8B,$A9,$4C,$4C,$91,$4C
       .byte $40,$1E,$4C,$4C,$A3,$4C,$40,$2E,$4C,$4C,$4C,$24,$4C,$24,$4C,$4C
       .byte $4C,$24,$4C,$34,$4C,$4C,$4C,$1E,$4C,$4C,$4C,$4C,$4C,$2A,$4C,$8B
       .byte $6A,$BD,$58,$9D,$52,$A3,$64,$91,$0C,$9D,$8B,$6A,$BD,$58,$9D,$52
       .byte $A3,$64,$A3,$0C,$9D,$64,$70,$91,$0C,$52,$4C,$64,$70,$A3,$0C,$58
       .byte $A9,$6A,$91,$0C,$C9,$4C,$A3,$6A,$A9,$0C,$9D,$58,$B5,$0C,$5E,$4C
       .byte $4C,$4C,$4C,$4C,$4C,$4C,$85,$9D,$BD,$A9,$AF,$BB,$5E,$8B,$A9,$4C
       .byte $4C,$91,$4C,$40,$1E,$4C,$4C,$A3,$4C,$46,$1E,$4C,$4C,$4C,$24,$4C
       .byte $24,$4C,$4C,$4C,$3A,$4C,$24,$4C,$4C,$4C,$2A,$4C,$4C,$4C,$4C,$4C
       .byte $1E,$4C,$8B,$6A,$BD,$58,$9D,$52,$A3,$64,$91,$0C,$C9,$8B,$6A,$BD
       .byte $58,$9D,$52,$A3,$64,$A3,$0C,$C9,$64,$70,$91,$0C,$58,$4C,$64,$70
       .byte $A3,$0C,$52,$A9,$6A,$91,$0C,$9D,$4C,$A3,$6A,$A9,$0C,$C9,$58,$B5
       .byte $0C,$58,$B5,$4C,$4C,$4C,$4C,$4C,$4C,$85,$9D,$BD,$A9,$AF,$BB,$5E
       .byte $8B,$A9,$4C,$4C,$91,$4C,$40,$1E,$4C,$4C,$A3,$4C,$46,$2E,$4C,$4C
       .byte $4C,$24,$4C,$24,$4C,$4C,$4C,$3A,$4C,$34,$4C,$4C,$4C,$2A,$4C,$4C
       .byte $4C,$4C,$4C,$2A,$4C,$8B,$6A,$BD,$58,$9D,$52,$A3,$64,$91,$0C,$CF
       .byte $8B,$6A,$BD,$58,$9D,$52,$A3,$64,$A3,$0C,$CF,$64,$70,$91,$0C,$58
       .byte $4C,$64,$70,$A3,$0C,$58,$A9,$6A,$91,$0C,$9D,$4C,$A3,$6A,$A9,$0C
       .byte $9D,$58,$B5,$0C,$5E,$4C,$4C,$4C,$4C,$4C,$4C,$4C,$85,$9D,$BD,$A9
       .byte $AF,$BB,$5E,$8B,$A9,$4C,$4C,$91,$4C,$40,$2E,$4C,$4C,$A3,$4C,$40
       .byte $1E,$4C,$4C,$4C,$24,$4C,$34,$4C,$4C,$4C,$24,$4C,$24,$4C,$4C,$4C
       .byte $1E,$4C,$4C,$4C,$4C,$4C,$1E,$4C,$8B,$6A,$BD,$58,$9D,$52,$A3,$64
       .byte $91,$0C,$D5,$8B,$6A,$BD,$58,$9D,$52,$A3,$64,$A3,$0C,$D5,$64,$70
       .byte $91,$0C,$9D,$4C,$64,$70,$A3,$0C,$9D,$A9,$6A,$91,$0C,$9D,$4C,$A3
       .byte $6A,$A9,$0C,$9D,$4C,$58,$B5,$0C,$9D,$4C,$4C,$4C,$4C,$4C,$4C,$85
       .byte $9D,$BD,$A9,$AF,$BB,$5E,$8B,$A9,$4C,$4C,$91,$4C,$40,$2E,$4C,$4C
       .byte $A3,$4C,$40,$2E,$4C,$4C,$4C,$24,$4C,$34,$4C,$4C,$4C,$24,$4C,$34
       .byte $4C,$4C,$4C,$1E,$4C,$4C,$4C,$4C,$4C,$2A,$4C,$8B,$6A,$BD,$58,$9D
       .byte $52,$A3,$64,$91,$0C,$DB,$8B,$6A,$BD,$58,$9D,$52,$A3,$64,$A3,$0C
       .byte $DB,$64,$70,$91,$0C,$9D,$4C,$64,$70,$A3,$0C,$C9,$A9,$6A,$91,$0C
       .byte $9D,$4C,$A3,$6A,$A9,$0C,$C9,$4C,$58,$B5,$0C,$C9,$4C,$4C,$4C,$4C
       .byte $4C,$4C,$85,$9D,$BD,$A9,$AF,$BB,$5E,$8B,$A9,$4C,$4C,$91,$4C,$40
       .byte $2E,$4C,$4C,$A3,$4C,$46,$1E,$4C,$4C,$4C,$24,$4C,$34,$4C,$4C,$4C
       .byte $3A,$4C,$24,$4C,$4C,$4C,$1E,$4C,$4C,$4C,$4C,$4C,$2A,$4C,$8B,$6A
       .byte $BD,$58,$9D,$52,$A3,$64,$91,$0C,$E1,$8B,$6A,$BD,$58,$9D,$52,$A3
       .byte $64,$A3,$0C,$E1,$64,$70,$91,$0C,$9D,$4C,$64,$70,$A3,$0C,$C9,$A9
       .byte $6A,$91,$0C,$9D,$4C,$A3,$6A,$A9,$0C,$C9,$4C,$58,$B5,$0C,$C9,$4C
       .byte $4C,$4C,$4C,$4C,$4C,$85,$9D,$BD,$A9,$AF,$BB,$5E,$8B,$A9,$4C,$4C
       .byte $91,$4C,$40,$2E,$4C,$4C,$A3,$4C,$46,$2E,$4C,$4C,$4C,$24,$4C,$34
       .byte $4C,$4C,$4C,$3A,$4C,$34,$4C,$4C,$4C,$1E,$4C,$4C,$4C,$4C,$4C,$1E
       .byte $4C,$8B,$6A,$BD,$58,$9D,$52,$A3,$64,$91,$0C,$E7,$8B,$6A,$BD,$58
       .byte $9D,$52,$A3,$64,$A3,$0C,$E7,$64,$70,$91,$0C,$9D,$4C,$64,$70,$A3
       .byte $0C,$9D,$A9,$6A,$91,$0C,$9D,$4C,$A3,$6A,$A9,$0C,$9D,$4C,$58,$B5
       .byte $0C,$9D,$4C,$4C,$4C,$4C,$4C,$4C,$85,$9D,$BD,$A9,$AF,$BB,$5E,$8B
       .byte $A9,$4C,$4C,$91,$4C,$46,$1E,$4C,$4C,$A3,$4C,$40,$1E,$4C,$4C,$4C
       .byte $3A,$4C,$24,$4C,$4C,$4C,$24,$4C,$24,$4C,$4C,$4C,$1E,$4C,$4C,$4C
       .byte $4C,$4C,$1E,$4C,$8B,$6A,$BD,$58,$9D,$52,$A3,$64,$91,$0C,$ED,$8B
       .byte $6A,$BD,$58,$9D,$52,$A3,$64,$A3,$0C,$ED,$64,$70,$91,$0C,$9D,$4C
       .byte $64,$70,$A3,$0C,$9D,$A9,$6A,$91,$0C,$9D,$4C,$A3,$6A,$A9,$0C,$9D
       .byte $4C,$58,$B5,$0C,$9D,$4C,$4C,$4C,$4C,$4C,$4C,$85,$9D,$BD,$A9,$AF
       .byte $BB,$5E,$8B,$A9,$4C,$4C,$91,$4C,$46,$1E,$4C,$4C,$A3,$4C,$40,$2E
       .byte $4C,$4C,$4C,$3A,$4C,$24,$4C,$4C,$4C,$24,$4C,$34,$4C,$4C,$4C,$1E
       .byte $4C,$4C,$4C,$4C,$4C,$2A,$4C,$8B,$6A,$BD,$58,$9D,$52,$A3,$64,$91
       .byte $0C,$F3,$8B,$6A,$BD,$58,$9D,$52,$A3,$64,$A3,$0C,$F3,$64,$70,$91
       .byte $0C,$9D,$4C,$64,$70,$A3,$0C,$C9,$A9,$6A,$91,$0C,$9D,$4C,$A3,$6A
       .byte $A9,$0C,$C9,$4C,$58,$B5,$0C,$C9,$4C,$4C,$4C,$4C,$4C,$4C,$85,$9D
       .byte $BD,$A9,$AF,$BB,$5E,$8B,$A9,$4C,$4C,$91,$4C,$46,$1E,$4C,$4C,$A3
       .byte $4C,$46,$1E,$4C,$4C,$4C,$3A,$4C,$24,$4C,$4C,$4C,$3A,$4C,$24,$4C
       .byte $4C,$4C,$1E,$4C,$4C,$4C,$4C,$4C,$2A,$4C,$8B,$6A,$BD,$58,$9D,$52
       .byte $A3,$64,$91,$0C,$F9,$8B,$6A,$BD,$58,$9D,$52,$A3,$64,$A3,$0C,$F9
       .byte $64,$70,$91,$0C,$9D,$4C,$64,$70,$A3,$0C,$C9,$A9,$6A,$91,$0C,$9D
       .byte $4C,$A3,$6A,$A9,$0C,$C9,$4C,$58,$B5,$0C,$C9,$4C,$4C,$4C,$4C,$4C
       .byte $4C,$85,$9D,$BD,$A9,$AF,$BB,$5E,$8B,$A9,$4C,$4C,$91,$4C,$46,$1E
       .byte $4C,$4C,$A3,$4C,$46,$2E,$4C,$4C,$4C,$3A,$4C,$24,$4C,$4C,$4C,$3A
       .byte $4C,$34,$4C,$4C,$4C,$1E,$4C,$4C,$4C,$4C,$4C,$2A,$4C,$8B,$6A,$BD
       .byte $58,$9D,$52,$A3,$64,$91,$0C,$18,$8B,$6A,$BD,$58,$9D,$52,$A3,$64
       .byte $A3,$0C,$18,$64,$70,$91,$0C,$9D,$4C,$64,$70,$A3,$0C,$C9,$A9,$6A
       .byte $91,$0C,$9D,$4C,$A3,$6A,$A9,$0C,$C9,$4C,$58,$B5,$0C,$C9,$4C,$4C
       .byte $4C,$4C,$4C,$4C,$85,$9D,$BD,$A9,$AF,$BB,$5E,$8B,$A9,$4C,$4C,$91
       .byte $4C,$46,$2E,$4C,$4C,$A3,$4C,$40,$1E,$4C,$4C,$4C,$3A,$4C,$34,$4C
       .byte $4C,$4C,$24,$4C,$24,$4C,$4C,$4C,$1E,$4C,$4C,$4C,$4C,$4C,$1E,$4C
       .byte $8B,$6A,$BD,$58,$9D,$52,$A3,$64,$91,$0C,$9D,$8B,$6A,$BD,$58,$9D
       .byte $52,$A3,$64,$A3,$0C,$9D,$64,$70,$91,$0C,$9D,$4C,$64,$70,$A3,$0C
       .byte $9D,$A9,$6A,$91,$0C,$9D,$4C,$A3,$6A,$A9,$0C,$9D,$4C,$58,$B5,$0C
       .byte $9D,$4C,$4C,$4C,$4C,$4C,$4C,$85,$9D,$BD,$A9,$AF,$BB,$5E,$8B,$A9
       .byte $4C,$4C,$91,$4C,$46,$2E,$4C,$4C,$A3,$4C,$40,$2E,$4C,$4C,$4C,$3A
       .byte $4C,$34,$4C,$4C,$4C,$24,$4C,$34,$4C,$4C,$4C,$1E,$4C,$4C,$4C,$4C
       .byte $4C,$2A,$4C,$8B,$6A,$BD,$58,$9D,$52,$A3,$64,$91,$0C,$12,$8B,$6A
       .byte $BD,$58,$9D,$52,$A3,$64,$A3,$0C,$12,$64,$70,$91,$0C,$9D,$4C,$64
       .byte $70,$A3,$0C,$C9,$A9,$6A,$91,$0C,$9D,$4C,$A3,$6A,$A9,$0C,$C9,$4C
       .byte $58,$B5,$0C,$C9,$4C,$4C,$4C,$4C,$4C,$4C,$85,$9D,$BD,$A9,$AF,$BB
       .byte $5E,$8B,$A9,$4C,$4C,$91,$4C,$46,$2E,$4C,$4C,$A3,$4C,$46,$1E,$4C
       .byte $4C,$4C,$3A,$4C,$34,$4C,$4C,$4C,$3A,$4C,$24,$85,$9D,$BD,$A9,$AF
       .byte $BB,$5E,$8B,$A9,$4C,$4C,$91,$4C,$46,$2E,$4C,$4C,$A3,$4C,$46,$2E
       .byte $4C,$4C,$4C,$3A,$4C,$34,$4C,$4C,$4C,$3A,$4C,$34
LFCA2: .byte $02,$02,$04,$04,$02,$02,$04,$04,$02,$02,$04,$04,$02,$02,$04,$04
       .byte $02,$02,$10,$10,$12,$12,$04,$04,$12,$12,$12,$10,$02,$02,$10,$04
       .byte $02,$02,$10,$10,$12,$12,$04,$04,$12,$12,$12,$10,$02,$02,$10,$04
       .byte $0C,$0C,$0E,$0E,$06,$06,$08,$04,$0C,$12,$0E,$0E,$06,$06,$08,$04
       .byte $0C,$12,$0E,$0E,$06,$06,$08,$04,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF
LFCFB: .byte $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$06,$06,$08,$08,$06,$06,$08,$08
       .byte $0C,$0C,$0E,$0E,$0C,$0C,$0E,$0E,$0C,$0C,$0E,$0E,$0C,$0C,$0E,$0E
       .byte $02,$02,$04,$04,$02,$02,$04,$04,$02,$02,$04,$04,$02,$02,$04,$04
       .byte $14,$14,$16,$16,$14,$14,$16,$16,$14,$14,$16,$16,$14,$14,$16,$16
       .byte $14,$14,$16,$16,$14,$14,$16,$16,$14,$14,$16,$16,$14,$14,$16,$00
       .byte $14,$14,$16,$16,$14,$14,$16,$14,$FF
LFD54: .byte $F8,$FE,$B4,$FD,$D8,$FD,$FC,$FD,$20,$FE,$44,$FE,$68,$FE,$8C,$FE
       .byte $90,$FD,$6C,$FD,$B0,$FE,$D4,$FE,$1A,$1A,$1A,$1A,$11,$11,$09,$09
       .byte $1A,$1A,$11,$11,$13,$13,$02,$09,$1A,$1A,$1A,$1A,$11,$11,$09,$09
       .byte $1A,$1A,$11,$11,$1A,$1A,$09,$09,$AA,$AA,$58,$AA,$17,$17,$13,$13
       .byte $09,$09,$04,$04,$17,$17,$09,$09,$13,$13,$04,$04,$17,$17,$13,$13
       .byte $09,$09,$04,$04,$17,$17,$09,$09,$17,$17,$17,$17,$AA,$AA,$58,$AA
       .byte $1A,$1A,$11,$11,$0F,$0F,$0E,$0E,$1A,$1A,$11,$11,$0F,$0F,$0E,$0E
       .byte $1A,$1A,$11,$11,$0F,$0F,$0E,$0E,$1A,$1A,$11,$FF,$0F,$FF,$0E,$FF
       .byte $AA,$AA,$5B,$AA,$1D,$1D,$1A,$1A,$1D,$1D,$11,$11,$1D,$1D,$1A,$1A
       .byte $1D,$1D,$11,$11,$1D,$1D,$1A,$1A,$1D,$1D,$11,$11,$1D,$FF,$1A,$FF
       .byte $1D,$1D,$11,$FF,$AA,$AA,$58,$AA,$FE,$FA,$61,$FF,$BA,$BA,$61,$FF
       .byte $65,$FF,$65,$FF,$BA,$BA,$61,$FF,$FE,$FA,$65,$FF,$BA,$BA,$61,$FF
       .byte $65,$FF,$61,$FF,$BA,$BA,$61,$FF,$88,$88,$88,$88,$FE,$FA,$61,$FF
       .byte $BD,$BD,$61,$FF,$65,$FF,$65,$FF,$BD,$BD,$61,$FF,$FE,$FA,$65,$FF
       .byte $BD,$BD,$61,$FF,$65,$FF,$61,$FF,$BD,$BD,$61,$FF,$80,$80,$80,$80
       .byte $61,$FF,$FF,$FF,$61,$FF,$FF,$FF,$65,$FF,$FF,$FF,$61,$FF,$FF,$FF
       .byte $61,$FF,$FF,$FF,$61,$FF,$FF,$FF,$65,$FF,$FF,$FF,$61,$FF,$FF,$FF
       .byte $00,$00,$00,$00,$FE,$FA,$61,$1A,$BA,$BA,$61,$FF,$65,$1A,$65,$FF
       .byte $BA,$BA,$61,$FF,$FE,$0E,$65,$FF,$BA,$BA,$61,$0E,$65,$FF,$61,$0E
       .byte $BA,$BA,$61,$FF,$88,$88,$88,$88,$FE,$FA,$61,$1D,$BD,$BD,$61,$FF
       .byte $65,$1D,$65,$FF,$BD,$BD,$61,$1D,$FE,$FA,$65,$FF,$BD,$BD,$61,$11
       .byte $65,$11,$61,$FF,$BD,$BD,$61,$11,$80,$80,$80,$80,$FE,$FA,$61,$FF
       .byte $61,$FF,$61,$FF,$65,$FF,$61,$FF,$61,$FF,$61,$FF,$61,$FF,$61,$FF
       .byte $FE,$FA,$61,$FF,$65,$FF,$61,$1A,$61,$FF,$61,$1A,$00,$80,$00,$80
       .byte $FE,$FA,$61,$FF,$61,$FF,$61,$FF,$65,$FF,$61,$FF,$61,$FF,$61,$FF
       .byte $61,$FF,$61,$FF,$FE,$FA,$61,$FF,$65,$FF,$61,$1D,$61,$FF,$61,$1D
       .byte $00,$80,$00,$80,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF
LFF18: .byte $04,$06,$07,$08,$0F,$0C,$01,$03
LFF20: .byte $80,$40,$20,$10,$08,$04,$02,$01
LFF28: TYA            
       PHA            
       AND    #$18    
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$20    
       TAY            
       PLA            
       AND    #$07    
       TAX            
       LDA    ($B9),Y 
       AND    LFF20,X 
       BEQ    LFF41   
       LDA    #$0F    
       RTS            

LFF41: LDA    #$06    
       RTS            

LFF44: CMP    #$FF    
       BEQ    LFF59   
       TAX            
       AND    #$1F    
       PHA            
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF18,X 
       TAX            
       PLA            
       RTS            

LFF59: LDA    #$FF    
       RTS            

LFF5C: STA    $81     
       LDA    LFD54,X 
       STA    $B9     
       INX            
       LDA    LFD54,X 
       STA    $BA     
       LDA    $BB     
       AND    #$1F    
       TAY            
       LDA    ($B9),Y 
       JSR    LFF44   
       LDY    $81     
       STA.wy $0017,Y 
       STX    AUDC0,Y 
       CMP    #$FF    
       BEQ    LFF92   
       TAX            
       LDA    $BB     
       AND    #$1F    
       TAY            
       TXA            
       JSR    LFF28   
       LDY    $81     
       BNE    LFF8E   
       SBC    #$0C    
LFF8E: STA.wy $0019,Y 
       RTS            

LFF92: LDA    #$00    
       LDY    $81     
       STA.wy $0019,Y 
       RTS            

LFF9A: LDA    $BB     
       AND    #$E0    
       BEQ    LFFBB   
       CMP    #$20    
       BEQ    LFFC4   
       LDA    $BB     
       AND    #$1F    
       STA    $BB     
       TAX            
       INX            
       STX    $BB     
       CPX    #$20    
       BNE    LFFD3   
       INC    $BC     
       LDA    #$00    
       STA    $BB     
       JMP    LFFD3   
LFFBB: LDA    $BB     
       ORA    #$20    
       STA    $BB     
       JMP    LFFD3   
LFFC4: LDA    $BB     
       ORA    #$60    
       STA    $BB     
       JMP    LFFD3   
LFFCD: .byte $A5,$BB,$09,$E0,$85,$BB
LFFD3: LDY    $BC     
       LDX    LFCA2,Y 
       CPX    #$FF    
       BNE    LFFE3   
       LDY    #$00    
       STY    $BC     
       LDX    LFCA2,Y 
LFFE3: LDA    #$00    
       JSR    LFF5C   
       LDY    $BC     
       LDX    LFCFB,Y 
       LDA    #$01    
       JSR    LFF5C   
       RTS            

LFFF3: .byte $FF,$FF,$FF,$FF,$FF,$BD,$00,$FC,$4C,$8B,$F1,$8B,$F1
