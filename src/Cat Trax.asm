; Disassembly of roms/Cat Trax.bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Cat Trax.bin
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
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295

       ORG $5000
L5000: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$2C,$52,$38,$7C,$5C
       .byte $5C,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$18
       .byte $24,$42,$7E,$7A,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$44
       .byte $6C,$7C,$54,$54,$38,$EE,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$44,$6C,$7C,$54,$38,$EE,$EE,$10,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$44,$6C,$7C,$54,$BA,$6C,$C6,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$44,$6C,$7C,$54,$54,$EE,$38,$10,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$7C,$54,$44,$6C,$6C,$BA,$BA,$82,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$F8,$F8,$A8,$8E,$DA,$DF,$BD
       .byte $42,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$24,$24,$3C,$24
       .byte $5A,$5A,$42,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1F,$1F,$15
       .byte $71,$5B,$FB,$DB,$42,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$44
       .byte $6C,$54,$6C,$92,$44,$28,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$44,$6C,$7C,$54,$BA,$6C,$C6,$10,$00,$00,$00,$00,$00
L50DE: .byte $00,$00,$00
L50E1: .byte $00,$00,$8D,$7D,$6D,$58,$9A
L50E8: .byte $D8
L50E9: .byte $05
L50EA: .byte $06,$07,$05,$06,$45
L50EF: .byte $4D,$55,$12
L50F2: .byte $00,$27,$C7
L50F5: .byte $47,$59,$69,$79
L50F9: CLC            
       STA    $AB     
       ASL            
       ASL            
       ADC    $AB     
       RTS            

L5101: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$24,$7C,$54,$54,$38
       .byte $EE,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$24,$24,$3C
       .byte $54,$38,$EE,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$24
       .byte $24,$3C,$24,$5A,$EE,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3C,$24,$24,$3C,$24,$5A,$5A,$42,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$44,$C6,$EE,$D6,$38,$6C,$44,$38,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$C6,$C6,$EE,$D6,$6C,$44,$44,$38,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
L5177: .byte $60,$67,$60,$67,$60,$06,$66,$67,$00,$7E,$60,$67,$60,$67,$60
L5186: .byte $80,$99,$18,$99,$80,$9E,$00,$E7,$00,$9E,$98,$01,$78,$19
L5194: .byte $F8,$3F,$25,$3D,$25,$3F,$29,$2F,$22,$3F,$09,$3D,$27,$3C,$24,$3C
       .byte $7E,$52,$5E,$52,$7E,$4A,$7A,$22,$7E,$48,$5E,$72,$1E,$12,$1E
L51B3: .byte $00,$00,$A0,$00,$0A,$00,$00,$00,$59,$5D,$7D,$55,$0E,$59,$5D,$0C
       .byte $0A,$0A,$0A,$00,$0A,$0A,$0A,$0A,$0A,$0A,$5B,$0C,$5B,$0E,$0A,$0A
       .byte $5B,$57,$0E,$0A,$0A,$D3,$57,$06,$0A,$00,$0A,$5B,$0E,$A0,$00,$00
       .byte $53,$5D,$57,$0E,$5B,$E5,$80,$00,$00,$0A,$00,$0A,$0A,$B0,$E5,$00
       .byte $59,$57,$5D,$0E,$5B,$E5,$20,$00,$0A,$00,$0A,$5B,$0E,$A0,$00,$00
       .byte $5B,$5D,$0E,$0A,$0A,$79,$5D,$0C,$0A,$0A,$5B,$06,$5B,$0E,$0A,$0A
       .byte $0A,$0A,$0A,$00,$0A,$0A,$0A,$0A,$53,$57,$D7,$55,$0E,$53,$57,$06
       .byte $00,$00,$A0,$00,$0A,$00,$00,$00
L522B: .byte $EE,$AA,$AA,$AA,$EE,$EE,$44,$44,$44,$CC,$EE,$88,$EE,$22,$EE,$EE
       .byte $22,$EE,$22,$EE,$22,$22,$EE,$AA,$AA,$EE,$22,$EE,$88,$EE,$EE,$AA
       .byte $EE,$88,$EE,$22,$22,$22,$22,$EE,$EE,$AA,$EE,$AA,$EE,$22,$22,$EE
       .byte $AA
L525C: .byte $EE
L525D: .byte $3C,$00,$00,$00,$42,$20,$72,$00,$BD,$2B,$8A,$BB,$A5,$28,$8A,$A9
       .byte $A1,$EB,$8B,$BB
L5271: .byte $A5,$2A,$8A,$A9,$BD,$2B,$8A,$BB,$42,$C0
L527B: .byte $89,$00,$3C,$00,$00,$00
L5281: .byte $01
L5282: .byte $02
L5283: .byte $04
L5284: .byte $08
L5285: .byte $10
L5286: .byte $20
L5287: .byte $40,$80,$01,$02,$04,$08,$10,$20,$80,$80,$40,$40,$40,$00,$00,$40
       .byte $40,$40,$40,$40,$00,$00,$00,$00,$80,$C0,$C0,$80,$C0,$C0,$00,$00
       .byte $C0,$C0,$C0,$C0,$00,$00,$00,$00,$80,$80,$80,$80,$00,$00,$00,$00
L52B7: .byte $00,$40,$80,$C0

START:
       CLD            
       LDA    #$00    
       TAX            
L52BF: STA    VSYNC,X 
       DEX            
       BNE    L52BF   
       DEX            
       TXS            
L52C6: LDA    #$00    
       STA    $87     
       LDA    #$15    
       STA    CTRLPF  
L52CE: LDA    #$00    
       STA    $9B     
       STA    $9C     
       STA    $96     
       STA    $97     
       STA    $A2     
       LDA    #$4F    
       STA    $9D     
L52DE: JSR    L5E81   
       LDA    #$40    
       STA    $9A     
L52E5: LDA    $87     
       AND    #$F0    
       STA    $87     
       LDA    $A2     
       ORA    #$02    
       STA    $A2     
       LDA    #$4D    
       STA    $A9     
       LDA    #$76    
       STA    $A1     
       LDA    #$45    
       STA    $AD     
       LDA    #$4D    
       STA    $AE     
       LDA    #$55    
       STA    $AF     
       LDA    #$8D    
       STA    $A5     
       LDA    #$7D    
       STA    $A6     
       LDA    #$6D    
       STA    $A7     
       LDA    #$48    
       STA    $9E     
       LDA    #$8A    
       STA    $9F     
       LDA    #$C8    
       STA    $A0     
L531D: LDA    INTIM   
       BNE    L531D   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$00    
       STA    COLUBK  
       BIT    $87     
       BMI    L5347   
       LDA    $9B     
       ASL            
       ASL            
       ASL            
       ASL            
       AND    #$F0    
       ORA    #$03    
       STA    COLUBK  
       JMP    L5376   
L5347: LDA    SWCHB   
       AND    #$08    
       BEQ    L5376   
       LDA    $87     
       BIT    L5284   
       BNE    L5376   
       LDA    #$0C    
       STA    AUDC0   
       LDA    $9C     
       LSR            
       STA    $A4     
       LDA    $87     
       BIT    L5282   
       BNE    L5367   
       LSR    $A4     
L5367: LDA    $A4     
       AND    #$0F    
       CLC            
       ADC    #$0C    
       STA    AUDF0   
       LDA    #$03    
       STA    AUDV0   
       BNE    L537C   
L5376: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
L537C: STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDX    #$2D    
L5388: STA    $B0,X   
       DEX            
       BPL    L5388   
       STA    WSYNC   
       LDA    $9C     
       LSR            
       BCS    L53B8   
       LDA    #$40    
       LDX    #$00    
       LDY    #$0A    
       JSR    L5DB5   
       LDA    #$30    
       INX            
       LDY    #$0B    
       JSR    L5DB5   
       LDA    #$00    
       INX            
       LDY    #$0C    
       JSR    L5DB5   
       LDA    #$C0    
       INX            
       LDY    #$0C    
       JSR    L5DB5   
       JMP    L53D9   
L53B8: LDA    #$B0    
       LDX    #$00    
       LDY    #$04    
       JSR    L5DB5   
       LDA    #$A0    
       INX            
       LDY    #$05    
       JSR    L5DB5   
       LDA    #$60    
       INX            
       LDY    #$07    
       JSR    L5DB5   
       LDA    #$20    
       INX            
       LDY    #$07    
       JSR    L5DB5   
L53D9: STY    WSYNC   
       STY    VBLANK  
       LDA    #$B2    
       STA    TIM8T   
       LDA    $9C     
       LSR            
       BCS    L53F5   
       LDA    $99     
       JSR    L5DC5   
       LDA    $98     
       SEC            
       JSR    L5DC5   
       JMP    L5400   
L53F5: LDA    $96     
       JSR    L5DC5   
       LDA    $97     
       CLC            
       JSR    L5DC5   
L5400: LDA    #$25    
       STA    NUSIZ0  
       LDA    #$15    
       STA    NUSIZ1  
       LDA    $9C     
       LSR            
       BCS    L542B   
       LDA    #$02    
       STA    $A4     
       LDA    $A2     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    L5F0D   
       LDA    #$03    
       STA    $A4     
       LDA    $A2     
       AND    #$0F    
       JSR    L5F0D   
       JSR    L5E90   
       JMP    L5446   
L542B: JSR    L5E90   
       LDA    #$02    
       STA    $A4     
       LDA    $A2     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    L5F0D   
       LDA    #$03    
       STA    $A4     
       LDA    $A2     
       AND    #$0F    
       JSR    L5F0D   
L5446: LDA    $9D     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       STA    $A4     
       TAX            
       LDY    L50E8,X 
       JSR    L5F3E   
       LDX    $A4     
       LDY    L50E9,X 
       JSR    L5F3E   
       LDX    $A4     
       LDY    L50EA,X 
       JSR    L5F3E   
       LDA    $9A     
       BIT    L5285   
       BNE    L54AE   
       LDA    $87     
       LSR            
       BCS    L549C   
       LSR            
       BCS    L5488   
       LDA    $9C     
       AND    #$18    
       ASL            
       STA    $A4     
       LSR            
       LSR            
       LSR            
       ORA    $A4     
       CLC            
       ADC    #$25    
       LDX    #$50    
       BNE    L54BF   
L5488: LDA    $9A     
       AND    #$C0    
       LSR            
       LSR            
       STA    $A4     
       LSR            
       LSR            
       LSR            
       ORA    $A4     
       CLC            
       ADC    #$6D    
       LDX    #$50    
       BNE    L54BF   
L549C: LDA    $9C     
       AND    #$30    
       STA    $A4     
       LSR            
       LSR            
       LSR            
       ORA    $A4     
       CLC            
       ADC    #$01    
       LDX    #$51    
       BNE    L54BF   
L54AE: LDA    $9C     
       AND    #$20    
       LSR            
       STA    $A4     
       LSR            
       LSR            
       LSR            
       ORA    $A4     
       CLC            
       ADC    #$B5    
       LDX    #$50    
L54BF: STA    $8A     
       STA    $88     
       STX    $8B     
       STX    $89     
L54C7: LDA    INTIM   
       BNE    L54C7   
       STA    WSYNC   
       LDA    $87     
       BIT    L5284   
       BEQ    L54DF   
       LDA    $9C     
       AND    #$20    
       BNE    L54DF   
       LDX    #$07    
       BNE    L54E9   
L54DF: LDX    #$A7    
       LDA    $87     
       AND    #$20    
       BEQ    L54E9   
       LDX    #$67    
L54E9: STX    COLUPF  
       LDA    #$07    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       LDX    #$C0    
       LDY    #$02    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STX    PF2     
       LDA    $8C     
       STA    GRP0    
       LDA    $8D     
       STA    GRP1    
       STY    ENAM0   
       STY    ENAM1   
       STA    WSYNC   
       LDA    $A9     
       JSR    L5D83   
       STA    $8D     
       STA    WSYNC   
       LDA    $8E     
       STA    GRP0    
       LDA    $8F     
       STA    GRP1    
       LDA    #$15    
       STA    NUSIZ0  
       STA    WSYNC   
       LDA    #$55    
       STA    $8E     
       STA    $8F     
       STA    WSYNC   
       LDA    $90     
       STA    GRP0    
       LDA    $91     
       STA    GRP1    
       LDX    #$60    
       STA    WSYNC   
       STX    PF2     
       LDA    $AD     
       JSR    L5D83   
       STA    $91     
       STA    WSYNC   
       LDA    $92     
       STA    GRP0    
       LDA    $93     
       STA    GRP1    
       STA    WSYNC   
       LDA    $AE     
       JSR    L5D83   
       STA    $92     
       STA    WSYNC   
       LDA    $94     
       STA    GRP0    
       LDA    $95     
       STA    GRP1    
       LDA    #$25    
       STA    NUSIZ0  
       STA    WSYNC   
       LDA    $AF     
       JSR    L5D83   
       STA    $93     
       STA    WSYNC   
       LDA    #$00    
       LDX    #$30    
       STX    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$15    
       STA    CTRLPF  
       LDX    #$49    
       LDA    $9C     
       BIT    L5285   
       BEQ    L5590   
       LDX    #$5B    
L5590: STX    $94     
       LDA    #$51    
       STA    $95     
       BIT    $DD     
       BVS    L55A1   
       STA    WSYNC   
       STA    WSYNC   
       JMP    L55BD   
L55A1: STA    WSYNC   
       LDA    $DD     
       AND    #$03    
       TAX            
       LDA    $8C,X   
       AND    #$0F    
       TAY            
       LDA    $8C,X   
       NOP            
L55B0: DEY            
       BNE    L55B0   
       STA    RESP0   
       STA    HMCLR   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
L55BD: LDA    #$27    
       STA    COLUP0  
       STA    WSYNC   
       LDX    #$18    
       STA    WSYNC   
       STX    PF2     
       LDA    $DD     
       BMI    L55D5   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$01    
       BNE    L55F1   
L55D5: STA    WSYNC   
       AND    #$0C    
       LSR            
       LSR            
       TAX            
       LDA    $90,X   
       AND    #$0F    
       TAY            
       LDA    $90,X   
L55E3: DEY            
       BNE    L55E3   
       STA.w  $0011   
       STA    HMCLR   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
L55F1: LDA    L50F5,X 
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$7F    
       STA    PF1     
       LDA    #$1F    
       STA    PF2     
       STA    WSYNC   
       LDA    $9C     
       LSR            
       BCS    L5630   
       LDA    #$20    
       LDX    #$02    
       LDY    #$09    
       JSR    L5DB5   
       LDA    #$10    
       INX            
       LDY    #$0A    
       JSR    L5DB5   
       LDA    #$00    
       INX            
       LDY    #$0B    
       JSR    L5DB5   
       INX            
L5621: LDA    L5282,X 
       STA    $81,X   
       DEX            
       BPL    L5621   
       LDA    #$ED    
       STA    $A3     
       JMP    L5656   
L5630: LDA    #$E0    
       LDX    #$02    
       LDY    #$05    
       JSR    L5DB5   
       LDA    #$D0    
       INX            
       LDY    #$06    
       JSR    L5DB5   
       LDA    #$C0    
       INX            
       LDY    #$07    
       JSR    L5DB5   
       INX            
L564A: LDA    L5281,X 
       STA    $81,X   
       DEX            
       BPL    L564A   
       LDA    #$DE    
       STA    $A3     
L5656: LDA    #$0F    
       STA    $8C     
       LDA    #$00    
       STA    $A4     
       STA    CXCLR   
L5660: DEC    $8C     
       BPL    L5667   
       JMP    L5846   
L5667: LDX    $8C     
       STA    WSYNC   
       STA    GRP1    
       LDA    L5177,X 
       STA    PF1     
       LDA    L5186,X 
       STA    PF2     
       LDY    $B0,X   
       LDA    ($88),Y 
       STA    GRP0    
       INC    $B0,X   
       LDY    $8C     
       LDA    ($A3),Y 
       AND    $82     
       BEQ    L5689   
       LDA    #$02    
L5689: STA    $AB     
       LDY    $BF,X   
       LDA    ($94),Y 
       INC    $BF,X   
       STA    WSYNC   
       STA    GRP1    
       LDY    $B0,X   
       LDA    ($88),Y 
       STA    GRP0    
       INC    $B0,X   
       LDY    $8C     
       LDA    ($A3),Y 
       LDY    #$00    
       BIT    $84     
       BEQ    L56A9   
       LDY    #$04    
L56A9: STY    $AA     
       AND    $86     
       BEQ    L56B1   
       LDA    #$02    
L56B1: ORA    $AA     
       STA    $AA     
       LDY    $BF,X   
       LDA    ($94),Y 
       INC    $BF,X   
       LDY    $AB     
       STA    WSYNC   
       STA    GRP1    
       LDA    $AA     
       STA    ENAM0   
       LSR            
       STA    ENAM1   
       STY    ENABL   
       LDA    $CE,X   
       ROL            
       BPL    L56DD   
       STA    $AA     
       ROR            
       AND    #$03    
       TAY            
       LDA.wy $008C,Y 
       STA    $A8     
       JMP    L56E5   
L56DD: LDY    $B0,X   
       LDA    ($88),Y 
       STA    GRP0    
       INC    $B0,X   
L56E5: LDA    #$90    
       STA    HMCLR   
       STA    HMM0    
       STA    HMM1    
       STA    HMBL    
       LDY    $BF,X   
       LDA    ($94),Y 
       INC    $BF,X   
       STA    WSYNC   
       STA    GRP1    
       BIT    $AA     
       BPL    L5710   
       INC    $BF,X   
       LDA    $A8     
       AND    #$0F    
       TAY            
L5704: DEY            
       BNE    L5704   
       STA    RESP0   
       LDA    $A8     
       STA    HMP0    
       JMP    L571F   
L5710: LDY    $B0,X   
       LDA    ($88),Y 
       STA    GRP0    
       INC    $B0,X   
       LDY    $BF,X   
       LDA    ($94),Y 
       TAY            
       INC    $BF,X   
L571F: STA    WSYNC   
       STA    HMOVE   
       STY    GRP1    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       LDY    $B0,X   
       LDA    ($88),Y 
       STA    GRP0    
       INC    $B0,X   
       LDY    $8C     
       LDA    ($A3),Y 
       AND    $81     
       BEQ    L573F   
       LDA    #$02    
L573F: STA    $AB     
       LDY    $BF,X   
       LDA    ($94),Y 
       INC    $BF,X   
       STA    HMCLR   
       STA    WSYNC   
       STA    GRP1    
       LDY    $B0,X   
       LDA    ($88),Y 
       STA    GRP0    
       INC    $B0,X   
       LDY    $8C     
       LDA    ($A3),Y 
       LDY    #$00    
       BIT    $83     
       BEQ    L5761   
       LDY    #$04    
L5761: STY    $AA     
       AND    $85     
       BEQ    L5769   
       LDA    #$02    
L5769: ORA    $AA     
       STA    $AA     
       LDY    $BF,X   
       LDA    ($94),Y 
       INC    $BF,X   
       LDY    $AB     
       STA    WSYNC   
       STA    GRP1    
       LDA    $AA     
       STA    ENAM0   
       LSR            
       STA    ENAM1   
       STY    ENABL   
       LDY    $B0,X   
       LDA    ($88),Y 
       STA    GRP0    
       INC    $B0,X   
       LDA    #$70    
       STA    HMM0    
       STA    HMM1    
       STA    HMBL    
       LDA    $CE,X   
       STA    $AA     
       BMI    L57A1   
       LDY    $BF,X   
       LDA    ($94),Y 
       INC    $BF,X   
       JMP    L57AD   
L57A1: LSR            
       LSR            
       AND    #$03    
       TAY            
       LDA.wy $0090,Y 
       STA    $AC     
       LDA    #$00    
L57AD: STA    WSYNC   
       STA    GRP1    
       BIT    $AA     
       BPL    L57C8   
       INC    $B0,X   
       LDA    $AC     
       AND    #$0F    
       TAY            
L57BC: DEY            
       BNE    L57BC   
       STA    RESP1   
       LDA    $AC     
       STA    HMP1    
       JMP    L57D7   
L57C8: LDY    $B0,X   
       LDA    ($88),Y 
       STA    GRP0    
       INC    $B0,X   
       LDY    $BF,X   
       LDA    ($94),Y 
       TAY            
       INC    $BF,X   
L57D7: STA    WSYNC   
       STA    HMOVE   
       STY    GRP1    
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       LDY    $B0,X   
       LDA    ($88),Y 
       STA    GRP0    
       INC    $B0,X   
       LDA    $CE,X   
       BPL    L5802   
       LDA    $CE,X   
       AND    #$0C    
       LSR            
       LSR            
       TAY            
       LDA    L50F5,Y 
       STA    COLUP1  
       LDA    #$00    
       JMP    L5808   
L5802: LDY    $BF,X   
       LDA    ($94),Y 
       INC    $BF,X   
L5808: STA    WSYNC   
       STA    GRP1    
       LDA    $CE,X   
       ROL            
       BPL    L583B   
       ROR            
       AND    #$03    
       TAY            
       CMP    #$01    
       BNE    L5824   
       LDA    $8A     
       STA    $88     
       LDA    $8B     
       STA    $89     
       JMP    L582D   
L5824: LDA    L50EF,Y 
       STA    $88     
       LDA    #$50    
       STA    $89     
L582D: LDA    L50F2,Y 
       STA    COLUP0  
L5832: LDY    $BF,X   
       LDA    ($94),Y 
       INC    $BF,X   
       JMP    L5660   
L583B: LDY    $B0,X   
       LDA    ($88),Y 
       STA    GRP0    
       INC    $B0,X   
       JMP    L5832   
L5846: STA    WSYNC   
       LDA    #$7F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       LDA    $9C     
       LSR            
       BCC    L588F   
       LDA    #$F0    
       LDX    #$00    
       LDY    #$07    
       JSR    L5DB5   
       LDA    #$C0    
       LDX    #$01    
       LDY    #$08    
       JSR    L5DB5   
       LDA    #$A0    
       LDX    #$02    
       LDY    #$04    
       JSR    L5DB5   
       LDA    #$30    
       LDX    #$03    
       LDY    #$05    
       JSR    L5DB5   
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    #$D0    
       LDX    #$04    
       LDY    #$05    
       JSR    L5DB5   
       LDX    #$21    
       JMP    L58C6   
L588F: LDA    #$40    
       LDX    #$00    
       LDY    #$08    
       JSR    L5DB5   
       LDA    #$30    
       LDX    #$01    
       LDY    #$09    
       JSR    L5DB5   
       LDA    #$A0    
       LDX    #$02    
       LDY    #$04    
       JSR    L5DB5   
       LDA    #$30    
       LDX    #$03    
       LDY    #$05    
       JSR    L5DB5   
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    #$D0    
       LDX    #$04    
       LDY    #$05    
       JSR    L5DB5   
       LDX    #$23    
L58C6: LDA    #$20    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$21    
       STA    CTRLPF  
       LDA    #$27    
       STA    COLUPF  
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$09    
L58DA: STA    WSYNC   
       LDA    #$00    
       CPY    #$06    
       BCS    L58E4   
       LDA    $9D     
L58E4: STA    ENAM0   
       LSR            
       STA    ENAM1   
       LSR            
       STA    ENABL   
       LDA    L525D,X 
       STA    GRP1    
       LDA    L525C,X 
       STA    GRP0    
       LDA    #$07    
       STA    COLUP0  
       STA    COLUP1  
       DEY            
       DEX            
       DEX            
       DEX            
       NOP            
       NOP            
       LDA    #$27    
       STA    COLUP0  
       STA    COLUP1  
       DEX            
       BPL    L58DA   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    WSYNC   
       LDA    #$EA    
       STA    TIM8T   
       BIT    REFP1   
       BMI    L592F   
       LDA    $87     
       BMI    L592F   
       ORA    #$80    
       STA    $87     
       JMP    L52CE   
L592F: LDA    SWCHB   
       BIT    L5281   
       BNE    L593A   
       JMP    L52C6   
L593A: BIT    L5282   
       BNE    L5948   
       LDA    $87     
       ORA    #$10    
       STA    $87     
       JMP    L5955   
L5948: LDA    $87     
       BIT    L5285   
       BEQ    L5955   
       EOR    #$20    
       AND    #$EF    
       STA    $87     
L5955: BIT    $87     
       BMI    L595C   
       JMP    L59E2   
L595C: BIT    L5284   
       BEQ    L5964   
       JMP    L5A0B   
L5964: LDA    SWCHB   
       AND    #$08    
       BNE    L596E   
       JMP    L5A12   
L596E: LDA    $87     
       BIT    L5281   
       BEQ    L5978   
       JMP    L5A1B   
L5978: LDA    $9A     
       BIT    L5285   
       BEQ    L5982   
       JMP    L5A30   
L5982: LDX    $80     
       LDA    $87     
       BIT    L5287   
       BEQ    L5994   
       CPX    #$6B    
       BNE    L59AB   
       LDA    #$60    
       JMP    L59A7   
L5994: LDX    $80     
       CPX    #$5A    
       BEQ    L59A1   
       CPX    #$28    
       BEQ    L59A1   
       JMP    L59AB   
L59A1: AND    #$03    
       BNE    L59AB   
       LDA    #$80    
L59A7: ORA    $A2     
       STA    $A2     
L59AB: JSR    L5AAE   
       LDX    $80     
       BNE    L59B5   
       JMP    L5A85   
L59B5: LDX    #$03    
L59B7: LDA    $9D,X   
       BIT    L5285   
       BNE    L59C2   
       ORA    #$20    
       STA    $9D,X   
L59C2: DEX            
       BNE    L59B7   
       LDX    #$05    
       JSR    L5C34   
       LDX    #$06    
       JSR    L5C34   
       LDX    #$07    
       JSR    L5C34   
       LDA    $87     
       BIT    L5286   
       BEQ    L59E2   
       BIT    $A0     
       BVS    L59E2   
       JSR    L5C34   
L59E2: INC    $9C     
       BNE    L59E8   
       INC    $9B     
L59E8: BIT    $87     
       BMI    L59FD   
       LDA    $9B     
       CMP    #$10    
       BNE    L59FD   
       LDA    #$68    
       STA    $9A     
       LDA    #$C0    
       STA    $87     
       JMP    L52CE   
L59FD: CLC            
       LDA    $9D     
       ADC    #$40    
       BCC    L5A06   
       ORA    #$40    
L5A06: STA    $9D     
       JMP    L531D   
L5A0B: LDA    $9B     
       BEQ    L59E2   
       JMP    L52DE   
L5A12: LDA    $9C     
       EOR    #$01    
       STA    $9C     
       JMP    L59FD   
L5A1B: LDA    #$06    
       STA    AUDC1   
       LDA    $9C     
       CMP    #$40    
       BNE    L5A9D   
       LDA    $87     
       AND    #$FA    
       STA    $87     
       LDA    #$00    
       JMP    L5AA9   
L5A30: LDA    $9C     
       CMP    #$40    
       BNE    L5A9D   
       LDA    #$00    
       STA    AUDV1   
       LDA    $9A     
       AND    #$EF    
       STA    $9A     
       BIT    $87     
       BVC    L5A49   
       LDX    #$01    
       JSR    L5E6C   
L5A49: LDA    $9D     
       LSR            
       AND    #$0F    
       STA    $A4     
       LDA    $9D     
       AND    #$C0    
       ORA    $A4     
       STA    $9D     
       AND    #$0F    
       BNE    L5A82   
       LDA    $96     
       CMP    $98     
       BCC    L5A73   
       BEQ    L5A6B   
       STA    $98     
       LDA    $97     
       JMP    L5A71   
L5A6B: LDA    $97     
       CMP    $99     
       BCC    L5A73   
L5A71: STA    $99     
L5A73: LDA    $87     
       AND    #$30    
       STA    $87     
       LDA    #$00    
       STA    $9B     
       STA    $9C     
       JMP    L531D   
L5A82: JMP    L52E5   
L5A85: LDA    $87     
       ORA    #$08    
       STA    $87     
       LDA    #$00    
       STA    $9C     
       STA    $9B     
       SED            
       CLC            
       LDA    $96     
       ADC    #$01    
       STA    $96     
       CLD            
       JMP    L59E2   
L5A9D: AND    #$07    
       TAX            
       LDA    L5271,X 
       AND    #$07    
       STA    AUDF1   
       LDA    #$07    
L5AA9: STA    AUDV1   
       JMP    L59E2   
L5AAE: LDA    $87     
       BIT    L5283   
       BEQ    L5ABD   
       LDX    $9C     
       BNE    L5AC1   
       AND    #$FB    
       STA    $87     
L5ABD: LDA    #$00    
       STA    AUDV1   
L5AC1: LDA    $9A     
       BIT    L5FFE   
       BNE    L5AD0   
       BIT    L5286   
       BNE    L5AFB   
       JMP    L5BA3   
L5AD0: BIT    $9A     
       BVC    L5AD9   
       LDA    $9C     
       LSR            
       BCC    L5ADE   
L5AD9: LDX    #$01    
       JSR    L5E14   
L5ADE: LDA    $87     
       BIT    L5282   
       BEQ    L5AFA   
       LDX    $9B     
       CPX    #$04    
       BNE    L5AFA   
       AND    #$FC    
       STA    $87     
       LDX    #$03    
L5AF1: LDA    $9D,X   
       AND    #$EF    
       STA    $9D,X   
       DEX            
       BNE    L5AF1   
L5AFA: RTS            

L5AFB: LDX    #$01    
       JSR    L5E23   
       LDA    $A1     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $A1     
       AND    #$0F    
       TAY            
       CPX    #$08    
       BCS    L5B15   
       LDA.wy $00ED,Y 
       BCC    L5B18   
L5B15: LDA.wy $00DE,Y 
L5B18: AND    L5281,X 
       BEQ    L5B4D   
       LDA    #$01    
       JSR    L5FEB   
       LDA    #$03    
       STA    AUDC1   
       LDA    #$0E    
       STA    AUDF1   
       LDA    #$04    
       STA    AUDV1   
       DEC    $80     
       CPX    #$08    
       BCS    L5B42   
       LDA    L5281,X 
       EOR    #$FF    
       AND.wy $00ED,Y 
       STA.wy $00ED,Y 
       JMP    L5B4D   
L5B42: LDA    L5281,X 
       EOR    #$FF    
       AND.wy $00DE,Y 
       STA.wy $00DE,Y 
L5B4D: LDA    $A1     
       CMP    #$72    
       BNE    L5B7A   
       LDA    $A2     
       AND    #$0F    
       BEQ    L5B7A   
       LDA    $A2     
       AND    #$F0    
       STA    $A2     
       LDA    #$20    
       JSR    L5FEB   
       LDA    #$07    
       STA    AUDC1   
       LDA    #$09    
       STA    AUDF1   
       LDA    #$09    
       STA    AUDV1   
       LDA    #$F8    
       STA    $9C     
       LDA    $87     
       ORA    #$04    
       STA    $87     
L5B7A: LDA    #$78    
       BIT    $87     
       BVC    L5B82   
       LDA    #$76    
L5B82: CMP    $A1     
       BNE    L5BA3   
       LDA    $A2     
       AND    #$F0    
       BEQ    L5BA3   
       LDA    $A2     
       AND    #$0F    
       STA    $A2     
       LDA    #$80    
       STA    $9A     
       LDA    $87     
       ORA    #$07    
       STA    $87     
       LDA    #$00    
       STA    $9C     
       STA    $9B     
       RTS            

L5BA3: BIT    $87     
       BVC    L5BC7   
       LDX    #$01    
       JSR    L5E04   
       STA    $A4     
L5BAE: LDA    $9A     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAX            
       LDA    L5281,X 
       BIT    $A4     
       BNE    L5C2C   
       LDA    $9A     
       CLC            
       ADC    #$40    
       STA    $9A     
       JMP    L5BAE   
L5BC7: LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$0F    
       BNE    L5BFB   
       LDA    $9A     
       BIT    L5286   
       BNE    L5BDC   
       JMP    L5ADE   
L5BDC: LDX    #$01    
       JSR    L5E04   
       STA    $A4     
L5BE3: LDA    $9A     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAX            
       LDA    L5281,X 
       BIT    $A4     
       BNE    L5C2C   
       LDA    $9A     
       AND    #$D0    
       STA    $9A     
       JMP    L5ADE   
L5BFB: ASL            
       ASL            
       STA    $AA     
       LDA    $9A     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       ORA    $AA     
       TAX            
       LDA    L527B,X 
       STA    $AA     
       LDX    #$01    
       JSR    L5E04   
       STA    $A4     
       LDA    $AA     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAX            
       LDA    L5281,X 
       BIT    $A4     
       BEQ    L5BE3   
       LDA    $9A     
       AND    #$3F    
       ORA    $AA     
       STA    $9A     
L5C2C: LDX    #$01    
       JSR    L5E6C   
       JMP    L5ADE   
L5C34: LDA    $99,X   
       BIT    L5286   
       BEQ    L5C4E   
       BIT    L5FFE   
       BNE    L5C43   
       JMP    L5CDC   
L5C43: ASL            
       BPL    L5C4B   
       LDA    $9C     
       LSR            
       BCC    L5C4E   
L5C4B: JSR    L5E14   
L5C4E: BIT    COLUP1  
       BPL    L5C74   
       LDA    $A0,X   
       CMP    $A1     
       BEQ    L5C8D   
       LDA    $99,X   
       AND    #$0F    
       CMP    #$08    
       BCS    L5C74   
       LDA    $99,X   
       ASL            
       BPL    L5C75   
       BCC    L5C6B   
       LDA    #$10    
       BNE    L5C6D   
L5C6B: LDA    #$F0    
L5C6D: CLC            
       ADC    $A0,X   
L5C70: CMP    $A1     
       BEQ    L5C8D   
L5C74: RTS            

L5C75: BCC    L5C7B   
       LDA    #$0F    
       BNE    L5C7D   
L5C7B: LDA    #$01    
L5C7D: CLC            
       ADC    $A0,X   
       AND    #$0F    
       STA    $A4     
       LDA    $A0,X   
       AND    #$F0    
       ORA    $A4     
       JMP    L5C70   
L5C8D: LDA    $87     
       AND    #$02    
       BEQ    L5CB2   
       LDA    $99,X   
       BIT    L5285   
       BNE    L5C74   
       LDA    L50E1,X 
       STA    $99,X   
       LDA    L50DE,X 
       STA    $A0,X   
       LDA    L50E9,X 
       STA    $A8,X   
       LDA    #$10    
       JSR    L5FEB   
       LDA    #$F8    
       BNE    L5CC7   
L5CB2: LDA    $9D     
       BMI    L5CBB   
       LDA    #$50    
       JMP    L5CBD   
L5CBB: LDA    #$D0    
L5CBD: STA    $9A     
       LDA    $99,X   
       AND    #$DF    
       STA    $99,X   
       LDA    #$00    
L5CC7: STA    $9C     
       LDA    #$07    
       STA    AUDC1   
       LDA    #$07    
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDV1   
       LDA    $87     
       ORA    #$04    
       STA    $87     
       RTS            

L5CDC: JSR    L5E23   
       LDA    $99,X   
       ROL            
       ROL            
       ROL            
       AND    #$03    
       STA    $A4     
       JSR    L5E04   
       STA    $AA     
       LDA    $9D     
       SEC            
       ROL            
       ROL            
       ROL            
       AND    #$07    
       STA    $AB     
       CPX    $AB     
       BNE    L5D18   
L5CFB: LDY    $A4     
       LDA    L5281,Y 
       BIT    $AA     
       BNE    L5D12   
       INC    $A4     
       LDA    $A4     
       AND    #$03    
       TAY            
       LDA    L5281,Y 
       BIT    $AA     
       BEQ    L5CFB   
L5D12: LDA    L52B7,Y 
       JMP    L5D66   
L5D18: LDA    $9C     
       BMI    L5D46   
       LDA    $A0,X   
       CMP    $A1     
       BCS    L5D34   
       LDA    $87     
       BIT    L5282   
       BNE    L5D3B   
L5D29: LDA    $AA     
       BIT    L5284   
       BEQ    L5D46   
       LDA    #$C0    
       BNE    L5D66   
L5D34: LDA    $87     
       BIT    L5282   
       BNE    L5D29   
L5D3B: LDA    $AA     
       BIT    L5282   
       BEQ    L5D46   
       LDA    #$40    
       BNE    L5D66   
L5D46: LDA    $A1     
       AND    #$0F    
       STA    $AB     
       LDA    $A0,X   
       AND    #$0F    
       CMP    $AB     
       BEQ    L5CFB   
       BCS    L5D6E   
       LDA    $87     
       BIT    L5282   
       BNE    L5D75   
L5D5D: LDA    $AA     
       BIT    L5281   
       BEQ    L5CFB   
       LDA    #$00    
L5D66: STA    $99,X   
       JSR    L5E6C   
       JMP    L5C4E   
L5D6E: LDA    $87     
       BIT    L5282   
       BNE    L5D5D   
L5D75: LDA    $AA     
       BIT    L5283   
       BEQ    L5D80   
       LDA    #$80    
       BNE    L5D66   
L5D80: JMP    L5CFB   
L5D83: SEC            
       SBC    #$07    
       TAX            
       AND    #$0F    
       STA    $A4     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $A4     
       CMP    #$0F    
       BCC    L5D9B   
       SBC    #$0F    
       INY            
L5D9B: CMP    #$09    
       BCC    L5DA0   
       INY            
L5DA0: TAX            
       TYA            
       ORA    L5DA6,X 
       RTS            

L5DA6: .byte $00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$60,$50,$40,$30,$20,$10
L5DB5: STA    WSYNC   
       STA    HMCLR   
L5DB9: DEY            
       BNE    L5DB9   
       STA    RESP0,X 
       STA    HMP0,X  
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L5DC5: BCS    L5DCD   
       LDX    #$09    
       STX    $A4     
       BCC    L5DD1   
L5DCD: LDX    #$08    
       STX    $A4     
L5DD1: STA    $AA     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$0F    
       JSR    L50F9   
       TAY            
       LDX    $A4     
L5DDF: LDA    L522B,Y 
       AND    #$F0    
       STA    $8C,X   
       INY            
       DEX            
       DEX            
       BPL    L5DDF   
       LDA    $AA     
       AND    #$0F    
       JSR    L50F9   
       TAY            
       LDX    $A4     
L5DF5: LDA    L522B,Y 
       AND    #$0F    
       ORA    $8C,X   
       STA    $8C,X   
       INY            
       DEX            
       DEX            
       BPL    L5DF5   
       RTS            

L5E04: LDA    $A0,X   
       LSR            
       TAY            
       LDA    L51B3,Y 
       BCC    L5E11   
       LSR            
       LSR            
       LSR            
       LSR            
L5E11: AND    #$0F    
       RTS            

L5E14: DEC    $99,X   
       LDA    $99,X   
       ASL            
       BPL    L5E22   
       BCS    L5E20   
       INC    $A8,X   
       RTS            

L5E20: DEC    $A8,X   
L5E22: RTS            

L5E23: LDA    $99,X   
       ASL            
       BPL    L5E64   
       BCS    L5E49   
       LDA    $A0,X   
       CLC            
       ADC    #$F0    
       STA    $A0,X   
       AND    #$F0    
       BEQ    L5E36   
       RTS            

L5E36: LDA    $A0,X   
       ORA    #$E0    
       STA    $A0,X   
       LDA    #$15    
       STA    $A8,X   
L5E40: LDA    $99,X   
       ORA    #$28    
       STA    $99,X   
       PLA            
       PLA            
       RTS            

L5E49: LDA    $A0,X   
       CLC            
       ADC    #$10    
       STA    $A0,X   
       AND    #$F0    
       CMP    #$E0    
       BEQ    L5E57   
       RTS            

L5E57: LDA    $A0,X   
       AND    #$0F    
       STA    $A0,X   
       LDA    #$85    
       STA    $A8,X   
       JMP    L5E40   
L5E64: BCS    L5E69   
       INC    $A0,X   
       RTS            

L5E69: DEC    $A0,X   
       RTS            

L5E6C: LDA    $99,X   
       ROL            
       BMI    L5E79   
       ROR            
       AND    #$C0    
       ORA    #$2A    
       STA    $99,X   
       RTS            

L5E79: ROR            
       AND    #$C0    
       ORA    #$28    
       STA    $99,X   
       RTS            

L5E81: LDX    #$1E    
L5E83: LDA    L5194,X 
       STA    $DD,X   
       DEX            
       BNE    L5E83   
       LDA    #$78    
       STA    $80     
       RTS            

L5E90: LDA    $A1     
       AND    #$0F    
       TAX            
       BEQ    L5E9B   
       LDA    $AF,X   
       BNE    L5EDA   
L5E9B: LDA    $B0,X   
       BNE    L5EDA   
       CPX    #$0E    
       BEQ    L5EA7   
       LDA    $B1,X   
       BNE    L5EDA   
L5EA7: BIT    $9A     
       BVS    L5F06   
       BMI    L5EDB   
       CPX    #$0D    
       BEQ    L5EB7   
       BCS    L5F06   
       LDY    $B2,X   
       BNE    L5EDA   
L5EB7: LDA    $9A     
       BIT    L5286   
       BEQ    L5F06   
       AND    #$0F    
       BNE    L5EC6   
       INX            
       JMP    L5F06   
L5EC6: EOR    #$FF    
       SEC            
       ADC    #$13    
       STA    $B0,X   
       CMP    #$0B    
       BCC    L5F01   
       SEC            
       SBC    #$0A    
       STA    $B1,X   
       LDA    #$41    
       STA    $D0,X   
L5EDA: RTS            

L5EDB: CPX    #$01    
       BCC    L5F06   
       BEQ    L5EE5   
       LDA    $AE,X   
       BNE    L5EDA   
L5EE5: LDA    $9A     
       BIT    L5286   
       BEQ    L5F06   
       AND    #$0F    
       BNE    L5EF4   
       DEX            
       JMP    L5F06   
L5EF4: SEC            
       SBC    #$01    
       STA    $B0,X   
       CMP    #$09    
       BCS    L5F01   
       ADC    #$0A    
       STA    $AF,X   
L5F01: LDA    #$41    
       STA    $CF,X   
       RTS            

L5F06: LDA    #$09    
       STA    $B0,X   
       JMP    L5F01   
L5F0D: TAX            
       LDA    $AF,X   
       BNE    L5F3D   
       LDA    $B0,X   
       BNE    L5F3D   
       LDA    $B1,X   
       BNE    L5F3D   
       LDA    $A1     
       AND    #$0F    
       TAY            
       INY            
       BIT    $9A     
       BVS    L5F33   
       BMI    L5F27   
       INY            
L5F27: LDA.wy $00CE,Y 
       BEQ    L5F33   
       STX    $AA     
       CPY    $AA     
       BNE    L5F33   
       RTS            

L5F33: LDA    #$09    
       STA    $B0,X   
       LDA    $A4     
       ORA    #$40    
       STA    $CF,X   
L5F3D: RTS            

L5F3E: LDA.wy $00A0,Y 
       AND    #$0F    
       TAX            
       LDA    $BF,X   
       BNE    L5F95   
       LDA.wy $0099,Y 
       ASL            
       BMI    L5F96   
       BCS    L5FAD   
       CPX    #$0D    
       BEQ    L5F5A   
       BCS    L5F96   
       LDA    $C1,X   
       BNE    L5F95   
L5F5A: LDA    $C0,X   
       BNE    L5F95   
       CPX    #$01    
       BCC    L5F66   
       LDA    $BE,X   
       BNE    L5F95   
L5F66: LDA.wy $0099,Y 
       BIT    L5286   
       BEQ    L5FA6   
       AND    #$0F    
       BNE    L5F76   
       INX            
       JMP    L5FA6   
L5F76: EOR    #$FF    
       SEC            
       ADC    #$14    
       CMP    #$13    
       BCS    L5F85   
       STA    $BF,X   
       CMP    #$0B    
       BCC    L5FDF   
L5F85: SEC            
       SBC    #$0A    
       STA    $C0,X   
       TYA            
       AND    #$03    
       ASL            
       ASL            
       ORA    #$80    
       ORA    $D0,X   
       STA    $D0,X   
L5F95: RTS            

L5F96: CPX    #$0E    
       BEQ    L5FA2   
       LDA    $C0,X   
       BNE    L5F95   
       CPX    #$00    
       BEQ    L5FA6   
L5FA2: LDA    $BE,X   
       BNE    L5F95   
L5FA6: LDA    #$0A    
       STA    $BF,X   
       JMP    L5FDF   
L5FAD: CPX    #$00    
       BEQ    L5F96   
       LDA    $BE,X   
       BNE    L5F95   
       CPX    #$0E    
       BEQ    L5FBD   
       LDA    $C0,X   
       BNE    L5F95   
L5FBD: CPX    #$02    
       BCC    L5FC5   
       LDA    $BD,X   
       BNE    L5F95   
L5FC5: LDA.wy $0099,Y 
       BIT    L5286   
       BEQ    L5FA6   
       AND    #$0F    
       BNE    L5FD5   
       DEX            
       JMP    L5FA6   
L5FD5: STA    $BF,X   
       CMP    #$09    
       BCS    L5FDF   
       ADC    #$0A    
       STA    $BE,X   
L5FDF: TYA            
       AND    #$03    
       ASL            
       ASL            
       ORA    #$80    
       ORA    $CF,X   
       STA    $CF,X   
       RTS            

L5FEB: SED            
       CLC            
       ADC    $97     
       STA    $97     
       BCC    L5FF9   
       LDA    $96     
       ADC    #$00    
       STA    $96     
L5FF9: CLD            
       RTS            

L5FFB: .byte $60,$BB,$52
L5FFE: .byte $0F,$0E
