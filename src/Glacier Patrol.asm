; Disassembly of roms/Glacier Patrol.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Glacier Patrol.bin
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
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $5000
L5000: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$02,$46,$6E,$38,$3C,$1C,$1C,$3C,$38,$F8,$70,$38
       .byte $3C,$38,$10,$30,$38,$78,$18,$38,$10,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$6C,$28
       .byte $28,$28,$28,$38,$38,$38,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$10,$38
       .byte $38,$38,$38,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$10,$10,$10,$10,$38,$38
       .byte $38,$38,$38,$38,$38,$38,$38,$38,$10,$30,$38,$78,$18,$38,$10,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$7E,$7E,$4E,$4E,$0E,$0E,$0E,$0E,$04,$0C,$0E,$0E
       .byte $1E,$0E,$0E,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $64,$34,$1C,$38,$3C,$1C,$1C,$3C,$38,$78,$30,$38,$38,$38,$10,$30
       .byte $38,$78,$18,$38,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00

START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L50F1: STA    VSYNC,X 
       INX            
       BNE    L50F1   
       LDX    #$4E    
       JSR    L51B0   
       LDA    #$A1    
       STA    $81     
       STA    $83     
       LDA    #$AA    
       STA    $82     
       INC    $CA     
       JSR    L520E   
L510A: LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       INC    $D4     
       LDA    $99     
       CMP    #$02    
       BEQ    L5124   
       CMP    #$03    
       BEQ    L5124   
       JSR    L5259   
L5124: LDA    INTIM   
       BNE    L5124   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       LDA    $99     
       CMP    #$03    
       BPL    L515D   
       JSR    L5B12   
       LDA    $C9     
       BNE    L5165   
       JSR    L58E9   
       LDA    $99     
       BEQ    L515D   
       BPL    L5165   
       JSR    L54F4   
       JSR    L566C   
       JSR    L5766   
       JSR    L57BB   
       JSR    L5803   
       JSR    L58AF   
       JMP    L5165   
L515D: LDA    $D4     
       BNE    L5165   
       INC    $80     
       INC    $C8     
L5165: LDA    INTIM   
       BNE    L5165   
       STA    WSYNC   
       STA    VBLANK  
       JSR    L528B   
       LDA    #$FF    
       LDX    #$1F    
       STA    WSYNC   
       STA    VBLANK  
       STX    TIM64T  
       STA    CXCLR   
       JSR    L51C3   
       LDA    $B0     
       BNE    L5188   
       JSR    L55AC   
L5188: JSR    L555A   
       JSR    L5484   
       JSR    L58C2   
       JSR    L5866   
       LDA    $99     
       CMP    #$03    
       BMI    L519D   
       JSR    L5AD0   
L519D: LDA    INTIM   
       BNE    L519D   
       JMP    L510A   
L51A5: .byte $0E
L51A6: .byte $80,$30
L51A8: .byte $9A
L51A9: .byte $0E
L51AA: .byte $00,$80,$C0,$01,$81,$C1
L51B0: LDA    L5BB0,X 
       STA    $80,X   
       DEX            
       BPL    L51B0   
       LDA    $D4     
       ORA    #$01    
       STA    $D2     
       AND    #$FD    
       STA    $D1     
L51C2: RTS            

L51C3: LDA    $CA     
       BNE    L51CF   
       LDA    INPT4   
       BPL    L51D5   
       LDA    INPT5   
       BPL    L51D5   
L51CF: LDA    SWCHB   
       LSR            
       BCS    L51E0   
L51D5: LDX    #$4D    
       JSR    L51B0   
       STX    $99     
       INX            
       STX    $BA     
       RTS            

L51E0: LSR            
       BCS    L520D   
       LDA    $D4     
       AND    #$0F    
       BNE    L520D   
       LDY    $CF     
       LDX    #$4D    
       JSR    L51B0   
       INC    $CA     
       INY            
       CPY    #$06    
       BNE    L51F9   
       LDY    #$00    
L51F9: STY    $CF     
       LDA    L51AA,Y 
       ASL            
       LDA    #$50    
       ROL            
       STA    $83     
       INC    $83     
       LDA    #$AA    
       STA    $82     
       INY            
       STY    $81     
L520D: RTS            

L520E: LDA    #$02    
       STA    $99     
       LDX    #$0B    
L5214: LDA    L521D,X 
       STA    $BC,X   
       DEX            
       BPL    L5214   
       RTS            

L521D: .byte $29,$52,$39,$52,$49,$52,$31,$52,$41,$52,$51,$52,$7E,$42,$5A,$52
       .byte $52,$5A,$42,$7E,$4E,$4E,$48,$4C,$4C,$48,$EE,$EE,$EE,$EE,$88,$8C
       .byte $8C,$88,$8E,$8E,$EA,$EA,$AE,$AE,$8A,$8A,$EE,$EE,$8B,$8B,$AA,$AB
       .byte $FB,$DA,$8B,$8B,$B8,$B8,$08,$38,$38,$20,$B8,$B8
L5259: LDX    #$02    
L525B: TXA            
       ASL            
       TAY            
       LDA    $81,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00C2,Y 
       LDA    $81,X   
       AND    #$F0    
       LSR            
       STA.wy $00BC,Y 
       DEX            
       BPL    L525B   
       LDY    #$50    
       INX            
L5276: LDA    $BC,X   
       BNE    L528A   
       STY    $BC,X   
       CPX    #$04    
       BEQ    L528A   
       LDA    $C2,X   
       BNE    L528A   
       STY    $C2,X   
       INX            
       INX            
       BPL    L5276   
L528A: RTS            

L528B: LDA    $C8     
       STA    COLUBK  
       LDA    $AB     
       STA    COLUPF  
       LDA    $CE     
       STA    HMP0    
       CLC            
       ADC    #$10    
       STA    HMP1    
       AND    #$0F    
       TAX            
       LDA    $84     
       STA    HMBL    
       AND    #$0F    
       TAY            
       INY            
       STA    WSYNC   
       NOP            
       NOP            
       NOP            
L52AC: DEY            
       BNE    L52AC   
       STA    RESBL   
       STA    WSYNC   
L52B3: DEX            
       BNE    L52B3   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$0F    
       LDA    $D3     
       STA    REFP0   
       STA    REFP1   
       BNE    L52E3   
L52C8: LDA    L5F58,Y 
       LDX    L5F68,Y 
       STA    WSYNC   
       STA    GRP0    
       STX    GRP1    
       LDA    L5F78,Y 
       STA    COLUP0  
       LDA    L5F88,Y 
       STA    COLUP1  
       DEY            
       BPL    L52C8   
       BMI    L52FE   
L52E3: LDA    L5F68,Y 
       LDX    L5F58,Y 
       STA    WSYNC   
       STA    GRP0    
       STX    GRP1    
       LDA    L5F88,Y 
       STA    COLUP0  
       LDA    L5F78,Y 
       STA    COLUP1  
       DEY            
       BPL    L52E3   
       BMI    L52FE   
L52FE: STA    HMCLR   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    REFP0   
       STY    REFP1   
       STY    $D5     
       LDY    $A4     
       LDA    $A9     
       STA    HMP0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L5318: DEX            
       BNE    L5318   
       STA    RESP0   
L531D: STA    WSYNC   
       STA    HMOVE   
       INC    $D5     
       LDA    $D5     
       CMP    $AA     
       BNE    L532D   
       LDA    #$02    
       STA    ENABL   
L532D: JSR    L51C2   
       STA    HMCLR   
       DEY            
       BNE    L531D   
       LDY    #$0F    
L5337: LDA    ($A5),Y 
       TAX            
       LDA    ($A7),Y 
       STA    WSYNC   
       STX    GRP0    
       STA    COLUP0  
       INC    $D5     
       LDA    $D5     
       CMP    $AA     
       BNE    L534E   
       LDA    #$02    
       STA    ENABL   
L534E: DEY            
       BPL    L5337   
       LDA    #$5A    
       SEC            
       SBC    $A4     
       TAX            
       INY            
L5358: STA    WSYNC   
       STY    GRP0    
       INC    $D5     
       LDA    $D5     
       CMP    $AA     
       BNE    L5368   
       LDA    #$02    
       STA    ENABL   
L5368: DEX            
       BNE    L5358   
       LDX    $80     
       LDA    L51A8,X 
       STA    COLUPF  
       LDA    CXP0FB  
       STA    $B8     
       LDY    #$05    
L5378: STA    WSYNC   
       JSR    L51C2   
       LDA    $85     
       STA    PF0     
       LDA    $86     
       STA    PF1     
       LDA    $87     
       STA    PF2     
       LDA    $88     
       STA    PF0     
       LDA    $89     
       STA    PF1     
       LDA    $8A     
       STA    PF2     
       DEY            
       BNE    L5378   
       STA    WSYNC   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDA    $AB     
       STA    COLUPF  
       LDA    $AE     
       STA    REFP0   
       STA    WSYNC   
       LDA    $84     
       STA    HMP0    
       AND    #$0F    
       TAX            
L53B1: DEX            
       BNE    L53B1   
       STA    RESP0   
       STA    WSYNC   
       LDA    $A1     
       STA    HMP1    
       AND    #$0F    
       TAX            
L53BF: DEX            
       BNE    L53BF   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $80     
       LDA    L51A9,X 
       STA    COLUBK  
       LDY    #$2A    
L53D1: STA    WSYNC   
       LDA    ($9C),Y 
       TAX            
       STA    GRP0    
       LDA    ($9E),Y 
       STA    COLUP0  
       TXA            
       BEQ    L53E3   
       LDX    #$00    
       STX    ENABL   
L53E3: DEY            
       CPY    #$0B    
       BNE    L53D1   
       LDX    $80     
       LDA    L51A8,X 
       STA    COLUP1  
L53EF: STA    WSYNC   
       LDA    ($9C),Y 
       STA    GRP0    
       LDA    ($9E),Y 
       STA    COLUP0  
       LDA    ($A2),Y 
       STA    GRP1    
       DEY            
       BPL    L53EF   
       LDA    CXPPMM  
       STA    $B1     
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    REFP0   
       LDX    #$07    
       STX    $D7     
       STA    WSYNC   
L5413: DEX            
       BNE    L5413   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    HMCLR   
       LDA    #$10    
       STA    HMP1    
       LDA    $9B     
       ORA    $80     
       TAY            
       STA    WSYNC   
       STA    HMOVE   
       LDA    L51A6,Y 
       STA    COLUBK  
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STX    GRP1    
       INX            
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    $80     
       LDA    L51A5,Y 
       STA    COLUP0  
       STA    COLUP1  
L544B: LDY    $D7     
       LDA    ($BC),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    ($BE),Y 
       STA    GRP0    
       LDA    ($C4),Y 
       STA    $D8     
       LDA    ($C0),Y 
       TAX            
       LDA    ($C6),Y 
       TAY            
       LDA    $D8     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $D7     
       BPL    L544B   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       RTS            

L5484: LDA    $D1     
       STA    $D7     
       LDA    $D0     
       STA    $D8     
       LDA    #$00    
       LDX    #$08    
L5490: LSR    $D7     
       BCC    L5497   
       CLC            
       ADC    $D8     
L5497: ROR            
       ROR    $D0     
       DEX            
       BNE    L5490   
       CLC            
       LDA    $D0     
       ADC    $D2     
       STA    $D0     
       INC    $D6     
       LDX    $D6     
       BNE    L54B7   
       TAX            
       ASL            
       SEC            
       ROL            
       STA    $D1     
       TXA            
       SEC            
       ROL            
       STA    $D2     
       BNE    L5484   
L54B7: RTS            

L54B8: STY    $D8     
       STA    $D7     
       CLC            
       ADC    $D8     
       LDY    $D8     
       BPL    L54CE   
       LDY    $D7     
       BPL    L54DD   
       TAY            
       BMI    L54DD   
       CLC            
       ADC    #$F1    
       RTS            

L54CE: LDY    $D7     
       BMI    L54DD   
       TAY            
       AND    #$F0    
       CMP    #$70    
       TYA            
       BCC    L54DD   
       CLC            
       ADC    #$0F    
L54DD: RTS            

L54DE: STA    $D7     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D8     
       LDA    $D7     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $D8     
       RTS            

L54F4: LDY    $A0     
       BNE    L5530   
       LDA    $B0     
       BNE    L5559   
       LDA    $D4     
       AND    #$0F    
       BNE    L5559   
       LDY    #$F0    
       LDA    $D0     
       CMP    #$05    
       BCS    L5559   
       LDX    $CF     
       LDA    L51AA,X 
       LSR            
       BCS    L5559   
       LDX    #$01    
       CPX    $B7     
       BCS    L551A   
       STX    $B7     
L551A: LDX    #$22    
       STX    $A1     
       LDX    #$24    
       STX    $A2     
       LDA    $D0     
       CMP    #$02    
       BCS    L552E   
       LDA    #$2C    
       STA    $A1     
       LDY    #$10    
L552E: STY    $A0     
L5530: LDA    $A1     
       JSR    L54B8   
       STA    $A1     
       CMP    #$22    
       BEQ    L5551   
       CMP    #$2C    
       BEQ    L5551   
       LDA    $D4     
       AND    #$1F    
       BNE    L5559   
       LDA    $A2     
       CMP    #$00    
       BEQ    L5559   
       SEC            
       SBC    #$0C    
       STA    $A2     
       RTS            

L5551: LDA    #$00    
       STA    $A0     
       LDA    #$29    
       STA    $A2     
L5559: RTS            

L555A: LDY    $CF     
       LDA    L51AA,Y 
       BPL    L5576   
       ASL            
       BMI    L5576   
       LDA    SWCHA   
       LDX    $9B     
       BNE    L556F   
       ASL            
       ASL            
       ASL            
       ASL            
L556F: ASL            
       BCC    L5586   
       ASL            
       BCC    L558A   
       RTS            

L5576: LDA    $D0     
       CMP    #$03    
       BCS    L5582   
       LDA    #$08    
       EOR    $D3     
       STA    $D3     
L5582: LDA    $D3     
       BEQ    L558A   
L5586: LDY    #$F0    
       BNE    L558C   
L558A: LDY    #$10    
L558C: LDA    $CE     
       JSR    L54B8   
       STA    $CE     
       LDY    #$08    
       CMP    #$24    
       BNE    L559F   
       LDX    #$14    
       STX    $CE     
       STY    $D3     
L559F: LDY    #$00    
       CMP    #$2D    
       BNE    L55AB   
       STY    $D3     
       LDX    #$3D    
       STX    $CE     
L55AB: RTS            

L55AC: LDA    SWCHA   
       LDX    $AC     
       BEQ    L55B5   
       LDA    #$FF    
L55B5: LDX    $9B     
       BEQ    L55BD   
       ASL            
       ASL            
       ASL            
       ASL            
L55BD: ASL            
       LDY    #$00    
       STY    $AE     
       LDX    $84     
       BCS    L55D0   
       CPX    #$AB    
       BEQ    L55D0   
       LDY    #$08    
       STY    $AE     
       LDY    #$F0    
L55D0: ASL            
       BCS    L55D9   
       CPX    #$C2    
       BEQ    L55D9   
       LDY    #$10    
L55D9: PHA            
       LDA    $84     
       STY    $AF     
       LDX    #$01    
       JSR    L573B   
       STY    $E0     
       LDA    L5727,Y 
       AND    $85,X   
       BEQ    L55F1   
       LDA    $D4     
       LSR            
       BCC    L55FA   
L55F1: LDY    $AF     
       LDA    $84     
       JSR    L54B8   
       STA    $84     
L55FA: PLA            
       LDX    $9A     
       BMI    L5616   
       BNE    L5609   
       LDX    #$13    
       STX    $9C     
       LDX    #$A0    
       STX    $9E     
L5609: ASL            
       BCC    L5614   
       LDA    $9A     
       BEQ    L5616   
       LDA    #$FE    
       STA    $9A     
L5614: INC    $9A     
L5616: LDA    $9A     
       BEQ    L563E   
       BPL    L562E   
       LDA    $9C     
       CMP    #$13    
       BNE    L5628   
       LDA    #$00    
       STA    $9A     
       BEQ    L563E   
L5628: INC    $9C     
       INC    $9E     
       BNE    L563E   
L562E: LDA    $9C     
       CMP    #$00    
       BNE    L563A   
       LDA    #$FF    
       STA    $9A     
       BNE    L563E   
L563A: DEC    $9C     
       DEC    $9E     
L563E: LDA    $9A     
       BNE    L5660   
       LDX    $AC     
       BNE    L564A   
       LDA    $AF     
       BNE    L5650   
L564A: LDA    #$3E    
       LDX    #$A0    
       BNE    L565C   
L5650: LDA    $D4     
       AND    #$0C    
       LSR            
       LSR            
       TAY            
       LDA    L5668,Y 
       LDX    #$A0    
L565C: STA    $9C     
       STX    $9E     
L5660: LDA    $80     
       CLC            
       ADC    $9E     
       STA    $9E     
       RTS            

L5668: .byte $69,$BF,$13,$BF
L566C: LDA    $AD     
       BNE    L567C   
       LDA    $A5     
       CMP    #$00    
       BNE    L56A5   
       LDA    $D4     
       AND    #$03    
       BNE    L567D   
L567C: RTS            

L567D: LDA    $8B     
       ASL            
       CLC            
       ADC    #$0A    
       CMP    $D0     
       BCC    L567C   
       LDA    #$06    
       STA    $A5     
       LDA    $CE     
       STA    $A9     
       LDA    #$86    
       STA    $A7     
       LDA    #$01    
       STA    $A4     
       LDA    #$00    
       STA    $BA     
       INC    $BB     
       LDA    #$05    
       CMP    $B7     
       BCS    L56A5   
       STA    $B7     
L56A5: LDA    $A4     
       CMP    #$01    
       BNE    L56BA   
       LDA    $A5     
       CMP    #$10    
       BEQ    L56BA   
       INC    $A5     
       INC    $A5     
       INC    $A7     
       INC    $A7     
       RTS            

L56BA: LDA    $A4     
       CMP    #$59    
       BEQ    L56F4   
       LDY    #$10    
       LDA    $8B     
       CLC            
       ADC    #$14    
       CMP    $A4     
       BCS    L56D6   
       LDY    #$20    
       CLC            
       ADC    #$0A    
       CMP    $A4     
       BCS    L56D6   
       LDY    #$30    
L56D6: STY    $A5     
       CPY    #$20    
       BNE    L56E4   
       LDA    #$04    
       CMP    $B7     
       BCS    L56E4   
       STA    $B7     
L56E4: CPY    #$30    
       BNE    L56EF   
       LDA    $D4     
       AND    #$01    
       BNE    L56F1   
       RTS            

L56EF: INC    $A4     
L56F1: INC    $A4     
       RTS            

L56F4: LDX    #$00    
       LDA    $A9     
       JSR    L573B   
       LDA    L5727,Y 
       AND    $85,X   
       BEQ    L571B   
       LDA    $A9     
       LDY    #$40    
       JSR    L54B8   
       STA    $A9     
       JSR    L54DE   
       CMP    #$40    
       BCS    L5716   
       LDA    #$EE    
       STA    $A9     
L5716: LDA    #$10    
       STA    $A5     
       RTS            

L571B: LDA    #$00    
       STA    $A5     
       LDA    L5727,Y 
       ORA    $85,X   
       STA    $85,X   
       RTS            

L5727: .byte $10,$20,$40,$80
L572B: .byte $80,$40,$20,$10,$08,$04,$02,$01,$01,$02,$04,$08,$10,$20,$40,$80
L573B: JSR    L54DE   
       TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D7     
       TYA            
       SEC            
       SBC    $D7     
       SEC            
       SBC    L5FFE,X 
       LSR            
       LSR            
       LDX    #$00    
       CMP    #$14    
       BCC    L575A   
       LDX    #$03    
       SEC            
       SBC    #$14    
L575A: CMP    #$04    
       BCC    L5764   
       INX            
       CMP    #$0C    
       BCC    L5764   
       INX            
L5764: TAY            
       RTS            

L5766: LDA    #$38    
       STA    $AB     
       LDA    SWCHB   
       LDX    $9B     
       BNE    L5772   
       ASL            
L5772: LDY    #$00    
       ASL            
       BCC    L5778   
       INY            
L5778: LDA    $AC     
       BEQ    L578A   
       DEC    $AC     
       LDA    $AC     
       CMP    L57B7,Y 
       BCS    L5789   
       LDA    #$00    
       STA    $AA     
L5789: RTS            

L578A: LDX    $9B     
       LDA    INPT4,X 
       BPL    L5797   
       LDA    #$00    
       STA    $AA     
       STA    $AC     
       RTS            

L5797: LDA    #$00    
       STA    $AB     
       LDA    #$01    
       STA    $AA     
       LDA    L57B9,Y 
       STA    $AC     
       LDA    $D4     
       ORA    #$01    
       STA    $D2     
       AND    #$FD    
       STA    $D1     
       LDA    #$03    
       CMP    $B7     
       BCS    L57B6   
       STA    $B7     
L57B6: RTS            

L57B7: .byte $0F,$1E
L57B9: .byte $1E,$3C
L57BB: LDA    $AD     
       BNE    L5802   
       BIT    $B8     
       BVC    L5802   
       LDA    $A4     
       CMP    #$59    
       BEQ    L5802   
       CMP    #$01    
       BNE    L57D3   
       CLC            
       ADC    #$10    
       SEC            
       SBC    $A5     
L57D3: CLC            
       ADC    #$0C    
       STA    $AA     
       LDA    #$23    
       STA    $AD     
       LDY    #$00    
       LDA    $A5     
       CMP    #$11    
       BMI    L57EA   
       INY            
       CMP    #$20    
       BEQ    L57EA   
       INY            
L57EA: STY    $CC     
       LDA    #$00    
       LDY    $A4     
       CPY    #$01    
       BNE    L5800   
       LDA    $A7     
       CLC            
       ADC    #$05    
       STA    $A7     
       SEC            
       LDA    $A5     
       SBC    #$0B    
L5800: STA    $CD     
L5802: RTS            

L5803: LDA    $AD     
       BEQ    L5845   
       DEC    $AD     
       LDY    $AD     
       LDA    #$40    
       CPY    #$19    
       BPL    L581C   
       LDA    #$50    
       CPY    #$0F    
       BPL    L581C   
       LDX    $CC     
       LDA    L5849,X 
L581C: CLC            
       ADC    $CD     
       STA    $A5     
       CPY    #$06    
       BNE    L582D   
       LDA    #$02    
       CMP    $B7     
       BCS    L582D   
       STA    $B7     
L582D: LDA    $AD     
       BNE    L5845   
       LDA    #$00    
       STA    $AC     
       STA    $AA     
       LDA    #$00    
       STA    $A5     
       INC    $8C     
       LDY    $CC     
       LDA    L5846,Y 
       JSR    L584C   
L5845: RTS            

L5846: .byte $90,$70,$50
L5849: .byte $60,$70,$80
L584C: SED            
       CLC            
       ADC    $83     
       STA    $83     
       LDA    $82     
       ADC    #$00    
       STA    $82     
       BCC    L5864   
       LDA    #$FF    
       STA    $C9     
       LDA    $81     
       ADC    #$00    
       STA    $81     
L5864: CLD            
       RTS            

L5866: LDA    $B7     
       BPL    L5874   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDF0   
       STA    AUDC0   
       BEQ    L58AE   
L5874: ASL            
       ASL            
       TAY            
       LDA    L59A4,Y 
       CMP    $B2     
       BEQ    L5892   
       LDX    #$00    
L5880: LDA    L59A4,Y 
       STA    $B2,X   
       INY            
       INX            
       CPX    #$04    
       BNE    L5880   
       LDY    $B7     
       LDA    L59BC,Y 
       STA    $B6     
L5892: LDY    $B6     
       BNE    L589D   
       DEY            
       STY    $B7     
       STY    $B2     
       BNE    L58AE   
L589D: DEY            
       STY    $B6     
       LDA    ($B2),Y 
       STA    AUDV0   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0   
       LDA    ($B4),Y 
       STA    AUDF0   
L58AE: RTS            

L58AF: LDA    $8C     
       CMP    #$14    
       BNE    L58C1   
       LDA    #$00    
       STA    $8C     
       LDA    $8B     
       CMP    #$35    
       BCS    L58C1   
       INC    $8B     
L58C1: RTS            

L58C2: LDA    $B0     
       BEQ    L58CC   
       DEC    $B0     
       LDA    $B0     
       BNE    L58E8   
L58CC: BIT    $B1     
       BPL    L58E8   
       LDA    #$94    
       STA    $9C     
       LDA    #$B8    
       STA    $9E     
       LDA    #$FF    
       STA    $B0     
       LDA    #$00    
       STA    $9A     
       LDA    #$00    
       CMP    $B7     
       BCS    L58E8   
       STA    $B7     
L58E8: RTS            

L58E9: LDA    $BA     
       BNE    L593B   
       LDA    $A5     
       CMP    #$00    
       BNE    L593B   
       LDA    $B9     
       BEQ    L58FA   
       JMP    L598E   
L58FA: LDX    #$05    
L58FC: LDA    $85,X   
       CMP    L599E,X 
       BNE    L5908   
       DEX            
       BPL    L58FC   
       BMI    L590E   
L5908: LDA    $BB     
       CMP    #$19    
       BNE    L593B   
L590E: LDA    #$FF    
       STA    $D9     
       LDY    $CF     
       LDA    L51AA,Y 
       BPL    L5925   
       LDX    #$05    
L591B: LDA    $91,X   
       CMP    L599E,X 
       BNE    L593C   
       DEX            
       BPL    L591B   
L5925: LDX    #$05    
L5927: LDA    $85,X   
       CMP    L599E,X 
       BNE    L593E   
       DEX            
       BPL    L5927   
       LDX    #$04    
       STX    $99     
       DEC    $CA     
       LDA    #$00    
       STA    $AA     
L593B: RTS            

L593C: INC    $D9     
L593E: LDA    #$02    
       STA    $99     
       LDY    $CF     
       LDA    L51AA,Y 
       BPL    L5962   
       LDA    $D9     
       BNE    L5966   
       LDA    $9B     
       EOR    #$01    
       STA    $9B     
       LDX    #$0B    
L5955: LDA    $81,X   
       LDY    $8D,X   
       STY    $81,X   
       STA    $8D,X   
       DEX            
       BPL    L5955   
       BMI    L5966   
L5962: LDA    #$00    
       STA    $9B     
L5966: LDX    #$0B    
L5968: LDA    L5F98,X 
       STA    $BC,X   
       DEX            
       BPL    L5968   
       LDA    #$29    
       STA    $A2     
       LDA    #$00    
       STA    $A0     
       STA    $AA     
       LDY    $CF     
       LDA    L51AA,Y 
       BPL    L598A   
       LDA    $9B     
       TAX            
       BEQ    L598A   
       LDA    #$CC    
       STA    $C0     
L598A: LDA    #$FF    
       STA    $B9     
L598E: DEC    $B9     
       BNE    L599D   
       LDA    #$FF    
       STA    $99     
       LDX    #$01    
       STA    $BA     
       DEX            
       STX    $BB     
L599D: RTS            

L599E: .byte $F0,$FF,$FF,$F0,$FF,$FF
L59A4: .byte $C2,$59,$D4,$59,$1A,$5A,$54,$5A,$E6,$59,$EC,$59,$F2,$59,$FC,$59
       .byte $06,$5A,$10,$5A,$92,$5A,$B1,$5A
L59BC: .byte $12,$3A,$06,$0A,$0A,$1F,$F4,$F4,$F4,$F4,$F8,$F8,$F8,$F8,$FC,$FC
       .byte $FC,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$0C,$0D,$0E,$0F,$10,$11,$12,$13
       .byte $14,$15,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$58,$58,$58,$00,$00,$00
       .byte $14,$15,$16,$00,$00,$00,$4F,$4E,$4D,$4C,$4B,$4A,$49,$48,$47,$46
       .byte $19,$18,$19,$18,$19,$18,$19,$18,$19,$18,$00,$00,$00,$00,$00,$6F
       .byte $6F,$6F,$6F,$6F,$00,$00,$00,$00,$00,$1F,$1F,$1F,$1F,$1F,$1F,$1F
       .byte $1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F
       .byte $1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F
       .byte $1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F
       .byte $1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$00,$00,$00,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$00
       .byte $00,$00,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$00,$00,$00,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$00,$00,$00,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$0F,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48
       .byte $48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48
       .byte $48,$48,$48,$48,$48,$1F,$1E,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$15
       .byte $14,$13,$12,$11,$10,$0F,$0E,$0D,$0C,$0B,$0A,$09,$08,$07,$06,$05
       .byte $04,$03,$02,$01
L5AD0: LDA    $CA     
       BEQ    L5AD6   
       DEC    $CA     
L5AD6: LDA    $D4     
       BNE    L5B11   
       LDA    $99     
       CMP    #$04    
       BNE    L5B0F   
       DEC    $99     
       LDY    $CF     
       LDA    L51AA,Y 
       BPL    L5AFC   
       LDX    #$02    
L5AEB: LDA    $81,X   
       LDY    $8D,X   
       STY    $81,X   
       STA    $8D,X   
       DEX            
       BPL    L5AEB   
       LDA    $9B     
       EOR    #$01    
       STA    $9B     
L5AFC: LDX    #$0B    
L5AFE: LDA    L5F98,X 
       STA    $BC,X   
       DEX            
       BPL    L5AFE   
       LDA    $9B     
       BEQ    L5B0E   
       LDA    #$CC    
       STA    $C0     
L5B0E: RTS            

L5B0F: INC    $99     
L5B11: RTS            

L5B12: LDA    $C9     
       BEQ    L5B6F   
       LDA    $D4     
       AND    #$03    
       BNE    L5B67   
       DEC    $C9     
       LDA    $C9     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L5BA8,Y 
       STA    $C8     
       LDA    $C9     
       CMP    #$64    
       BCS    L5B6F   
       SEC            
       SBC    #$14    
       BMI    L5B6F   
       LSR            
       BCC    L5B6F   
       TAY            
       LDA    L5B80,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    L5B80,Y 
       AND    #$0F    
       TAY            
       LDA    L572B,Y 
       AND    $85,X   
       BEQ    L5B70   
       LDA    L572B,Y 
       EOR    #$FF    
       AND    $85,X   
       STA    $85,X   
       TYA            
       CLC            
       ADC    #$0C    
       STA    AUDF0   
       LDA    #$05    
       STA    AUDC0   
       LDA    #$0B    
       STA    AUDV0   
       RTS            

L5B67: LDA    #$00    
       STA    AUDV0   
       STA    AUDC0   
       STA    AUDF0   
L5B6F: RTS            

L5B70: LDY    #$50    
       LDA    SWCHB   
       AND    #$08    
       BNE    L5B7B   
       LDY    #$05    
L5B7B: TYA            
       JSR    L584C   
       RTS            

L5B80: .byte $16,$45,$22,$40,$03,$33,$13,$23,$27,$30,$01,$47,$10,$02,$57,$24
       .byte $50,$15,$32,$43,$25,$51,$41,$42,$17,$26,$46,$56,$00,$53,$21,$11
       .byte $14,$20,$44,$31,$55,$12,$54,$52
L5BA8: .byte $00,$A6,$A4,$94,$92,$90,$16,$04
L5BB0: .byte $00,$00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$13,$50,$A0,$5E
       .byte $00,$05,$29,$5D,$01,$00,$5E,$90,$5E,$D7,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$01,$19,$00,$5F,$00,$5F
       .byte $00,$5F,$00,$5F,$00,$5F,$00,$5F,$00,$00,$FF,$00,$00,$00,$0A,$00
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
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3C,$7E,$7E,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$7E,$3C,$18,$3C,$3C,$7E
       .byte $7E,$7E,$7E,$3C,$3C,$18,$00,$00,$18,$3C,$3C,$3C,$3C,$3C,$18,$00
       .byte $00,$00,$00,$00,$10,$38,$38,$38,$10,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$6C,$28
       .byte $28,$28,$28,$38,$38,$38,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$10,$38
       .byte $38,$38,$38,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$10,$10,$10,$10,$38,$38
       .byte $38,$38,$38,$38,$38,$38,$38,$38,$10,$30,$38,$78,$18,$38,$10,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$7E,$7E,$4E,$4E,$0E,$0E,$0E,$0E,$04,$0C,$0E,$0E
       .byte $1E,$0E,$0E,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C
       .byte $7E,$7E,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$7E,$3C,$18,$3C,$3C,$7E,$7E
       .byte $7E,$7E,$3C,$3C,$18,$00,$00,$18,$3C,$3C,$3C,$3C,$3C,$18,$00,$00
       .byte $00,$00,$00,$10,$38,$38,$38,$10,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3C,$3C,$3C,$3C,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3C,$3C,$3C,$3C,$3C,$24,$24,$24,$18,$18,$18,$18,$18,$18,$18,$18
       .byte $3C,$3C,$3C,$3C,$3C,$42,$42,$42,$81,$81,$81,$FF,$FF,$7E,$3C,$18
       .byte $00,$00,$00,$00,$00,$04,$20,$00,$08,$00,$10,$00,$00,$00,$00,$00
       .byte $00,$88,$00,$60,$02,$04,$21,$00,$42,$04,$00,$40,$04,$00,$40,$08
       .byte $00,$00,$00,$00,$00,$44,$AA,$2A,$EA,$AA,$44,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$44,$4A,$2A,$2A,$2A,$E4,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$44,$AA,$2A,$EA,$8A,$E4,$00,$00,$00,$00,$00
       .byte $9A,$9A,$9A,$9A,$9A,$0E,$0E,$0E,$0E,$0E,$0E,$36,$36,$36,$36,$36
       .byte $00,$00,$86,$86,$86,$86,$86,$1A,$56,$56,$56,$56,$56,$56,$56,$56
       .byte $1A,$1A,$1A,$1A,$00,$00,$00,$00,$86,$86,$86,$86,$56,$56,$56,$56
       .byte $1A,$1A,$1A,$1A,$1A,$1A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3C,$7E,$66,$66,$66,$66,$7E,$3C,$3C,$3C,$18,$18,$18,$18,$38,$18
       .byte $7E,$7E,$60,$7C,$3E,$06,$7E,$3C,$3C,$7E,$06,$0C,$0C,$06,$7E,$3C
       .byte $0C,$0C,$7E,$7E,$6C,$6C,$3C,$1C,$3C,$7E,$06,$7E,$7C,$60,$7E,$7E
       .byte $3C,$7E,$66,$7E,$7C,$60,$7E,$3C,$60,$30,$18,$0C,$06,$06,$7E,$7E
       .byte $3C,$7E,$66,$3C,$3C,$66,$7E,$3C,$3C,$7E,$06,$3E,$7E,$66,$7E,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00
L5F58: .byte $01,$03,$01,$00,$3E,$6B,$6B,$FF,$FF,$6B,$2B,$3E,$00,$01,$03,$01
L5F68: .byte $FF,$FE,$FF,$7C,$7C,$38,$38,$FC,$FC,$38,$38,$7C,$7C,$FF,$FE,$FF
L5F78: .byte $2A,$2A,$2A,$00,$66,$64,$62,$28,$28,$62,$64,$66,$00,$2A,$2A,$2A
L5F88: .byte $44,$44,$44,$CA,$C8,$C6,$C4,$28,$28,$C4,$C6,$C8,$CA,$44,$44,$44
L5F98: .byte $A4,$5F,$B4,$5F,$C4,$5F,$AC,$5F,$BC,$5F,$A4,$5F,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$11,$11,$11,$11,$19,$15,$19,$04,$34,$52,$52
       .byte $55,$55,$35,$00,$00,$24,$54,$44,$74,$55,$26,$00,$00,$1C,$08,$08
       .byte $08,$08,$18,$08,$00,$1C,$10,$08,$04,$14,$08,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$EA,$50
L5FFE: .byte $3C,$20
