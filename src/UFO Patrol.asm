; Disassembly of roms/UFO Patrol.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/UFO Patrol.bin
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
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$19    
       STA    TIM64T  
       JSR    $7BBD   
LF013: LDA    INTIM   
       BNE    LF013   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    VBLANK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       LDA    #$19    
       STA    TIM64T  
       LDA    $B1     
       CMP    #$88    
       BCS    LF075   
       LDA    SWCHB   
       AND    #$02    
       BNE    LF080   
       LDX    $B2     
       INX            
       CPX    #$04    
       BCC    LF05D   
       LDX    #$01    
LF05D: STX    $B2     
       STX    $B5     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $BE     
       STA    $BD     
       STA    $B3     
       STA    $B4     
       LDA    #$88    
       STA    $B1     
       BNE    LF084   
LF075: LDA    SWCHB   
       AND    #$02    
       BEQ    LF080   
       LDA    #$80    
       STA    $B1     
LF080: LDA    $B1     
       BNE    LF084   
LF084: LDA    $8C     
       LDX    #$02    
       JSR    $7BAB   
       LDA    $A9     
       LDX    #$03    
       JSR    $7BAB   
       LDA    $AD     
       LDX    #$04    
       JSR    $7BAB   
LF099: LDA    INTIM   
       BNE    LF099   
       LDA    #$2A    
       LDX    #$00    
       LDY    $BD     
       JSR    $79F8   
       LDX    #$08    
LF0A9: STA    WSYNC   
       DEX            
       BPL    LF0A9   
       LDA    $85     
       LDX    #$00    
       JSR    $7BAB   
       STA    WSYNC   
       STA    HMOVE   
       STX    ENAM0   
       STX    ENAM1   
       STX    ENABL   
       STA    CXCLR   
       LDA    $B7     
       CMP    #$20    
       BEQ    LF0DB   
       CMP    #$40    
       BEQ    LF0DB   
       LDA    #$4B    
       STA    $8F     
       LDX    #$08    
       STA    WSYNC   
       STA    HMCLR   
       JSR    $756D   
       JMP    $716D   
LF0DB: STA    WSYNC   
       STA    HMCLR   
       LDA    #$64    
       STA    COLUPF  
       LDA    $98     
       LDX    #$01    
       JSR    $7BAB   
       STX    CTRLPF  
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$A0    
       LDA    #$00    
       STA    PF0     
       LDA    #$27    
       STA    $C0     
       STA    WSYNC   
       STA    HMCLR   
       STA    WSYNC   
LF100: LDY    $89     
       STA    WSYNC   
       BEQ    LF10E   
       LDA    ($87),Y 
       STA    GRP0    
       DEC    $89     
       BPL    LF116   
LF10E: CPX    $86     
       BNE    LF116   
       LDA    #$09    
       STA    $89     
LF116: LDY    $C0     
       LDA    $7B67,Y 
       STA    PF1     
       LDA    $7C93,Y 
       STA    PF2     
       LDY    $89     
       LDA    ($8A),Y 
       STA    COLUP0  
       LDY    $A6     
       LDA    ($A4),Y 
       STA    GRP1    
       LDA    ($A7),Y 
       STA    COLUP1  
       DEX            
       STA    WSYNC   
       LDY    $89     
       BEQ    LF145   
       LDA    ($87),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    COLUP0  
       DEC    $89     
       BPL    LF14D   
LF145: CPX    $86     
       BNE    LF14D   
       LDA    #$09    
       STA    $89     
LF14D: TXA            
       AND    #$02    
       BNE    LF154   
       DEC    $C0     
LF154: LDY    $A6     
       BEQ    LF15D   
       DEC    $A6     
       JMP    $7165   
LF15D: CPX    $99     
       BNE    LF165   
       LDA    #$13    
       STA    $A6     
LF165: DEX            
       BNE    LF100   
       JMP    $71EF   
LF16B: STA    WSYNC   
LF16D: LDY    $89     
       BEQ    LF179   
       LDA    ($87),Y 
       STA    GRP0    
       DEC    $89     
       BPL    LF183   
LF179: LDA    $8F     
       CMP    $86     
       BNE    LF183   
       LDA    #$09    
       STA    $89     
LF183: LDY    #$FF    
       LDA    $8F     
       CMP    $8D     
       BNE    LF18D   
       STY    ENAM0   
LF18D: CMP    $AA     
       BNE    LF193   
       STY    ENAM1   
LF193: CMP    $AE     
       BNE    LF199   
       STY    ENABL   
LF199: DEC    $8F     
       BEQ    LF1EC   
       CMP    $91,X   
       BEQ    LF1CC   
       LDY    $89     
       STA    WSYNC   
       BEQ    LF1B1   
       LDA    ($87),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    COLUP0  
       DEC    $89     
LF1B1: LDY    $A6     
       BEQ    LF1BF   
       LDA    ($A4),Y 
       STA    GRP1    
       LDA    ($A7),Y 
       STA    COLUP1  
       DEC    $A6     
LF1BF: LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    HMCLR   
       JMP    $716B   
LF1CC: LDA    $90,X   
       DEX            
       DEX            
       STA    WSYNC   
       SEC            
LF1D3: SBC    #$0F    
       BCS    LF1D3   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP1    
       STA    RESP1   
       LDY    #$07    
       STY    $A6     
       STA    WSYNC   
       STA    HMOVE   
       JMP    $716D   
LF1EC: JSR    $756D   
LF1EF: LDX    #$06    
LF1F1: STA    WSYNC   
       DEX            
       BPL    LF1F1   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    PF1     
       STA    PF2     
       LDA    #$20    
       STA    CTRLPF  
       LDA    #$9C    
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$00    
       LDY    #$04    
       LDX    $B6     
       BEQ    LF22E   
       CPX    #$08    
       BCC    LF220   
       LDX    #$08    
       STX    $B6     
LF220: SEC            
       ROR            
       ROR            
       DEX            
       BEQ    LF22E   
       DEY            
       BNE    LF220   
       TAY            
       LDA    #$00    
       BEQ    LF235   
LF22E: STA    WSYNC   
       TAY            
       LDA    #$00    
       BEQ    LF23B   
LF235: SEC            
       ROL            
       ROL            
       DEX            
       BNE    LF235   
LF23B: TAX            
       LDA    #$06    
       STA    $DC     
LF240: STA    WSYNC   
       DEC.w  $00DC   
       BEQ    LF264   
       LDA    #$00    
       STA.w  $000D   
       STY.w  $000E   
       STX.w  $000F   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA.w  $000E   
       STA.w  $000F   
       JMP    $7240   
LF264: LDX    #$06    
LF266: STA    WSYNC   
       DEX            
       BPL    LF266   
       JSR    $7F58   
       LDA    #$19    
       STA    TIM64T  
       DEC    $BB     
       LDA    SWCHB   
       AND    #$01    
       BEQ    LF2AF   
       LDA    $BB     
       AND    #$07    
       BEQ    LF286   
       CMP    #$04    
       BNE    LF289   
LF286: JSR    $7624   
LF289: LDA    $B1     
       BNE    LF2E4   
       LDA    $BB     
       AND    #$07    
       BNE    LF296   
       JSR    $7847   
LF296: LDA    $B7     
       CMP    #$20    
       BEQ    LF2AC   
       CMP    #$40    
       BEQ    LF2AC   
       JSR    $78F7   
       JSR    $786B   
       JSR    $776B   
       JMP    $7013   
LF2AC: JSR    $76EA   
LF2AF: LDA    SWCHB   
       AND    #$01    
       BNE    LF2E1   
LF2B6: LDA    #$14    
       STA    $C2     
       LDA    #$00    
       STA    $B3     
       STA    $B4     
       STA    $B5     
       STA    $BD     
       STA    $B1     
       STA    $BE     
       STA    AUDV0   
       STA    AUDV1   
       LDX    #$40    
       LDA    $B2     
       STA    $C1     
       CMP    #$02    
       BNE    LF2D8   
       LDX    #$20    
LF2D8: STX    $B7     
       LDA    #$04    
       STA    $B6     
       JMP    $7351   
LF2E1: JMP    $7013   
LF2E4: CMP    #$01    
       BEQ    LF2FA   
       CMP    #$60    
       BEQ    LF351   
       CMP    #$61    
       BEQ    LF2F7   
       CMP    #$62    
       BEQ    LF345   
       JMP    $7470   
LF2F7: JMP    $750E   
LF2FA: LDA    $BB     
       AND    #$0F    
       BNE    LF303   
       JSR    $7847   
LF303: LDA    #$39    
       STA    $87     
       LDA    #$00    
       STA    $AA     
       STA    $AE     
       INC    $BD     
       INC    $BD     
       BNE    LF33B   
       LDA    #$62    
       STA    $B1     
       STA    $BB     
       LDA    $B6     
       BEQ    LF33E   
       DEC    $B6     
       LDA    $B7     
       CMP    #$20    
       BEQ    LF338   
       CMP    #$40    
       BEQ    LF338   
       LDX    #$08    
LF32B: LDA    $7CE5,X 
       STA    $90,X   
       DEX            
       DEX            
       BPL    LF32B   
       LDA    #$23    
       STA    $86     
LF338: JSR    $7CCE   
LF33B: JMP    $7013   
LF33E: LDA    #$44    
       STA    $B1     
       JMP    $7013   
LF345: LDA    $BB     
       BNE    LF34B   
       STA    $B1     
LF34B: JMP    $7013   
LF34E: JMP    $73F5   
LF351: JSR    $7357   
       JMP    $7013   
LF357: LDA    #$FB    
       STA    $8B     
       LDA    #$FC    
       STA    $A8     
       LDA    $B7     
       CMP    #$11    
       BCC    LF397   
       BEQ    LF3A4   
       CMP    #$20    
       BCC    LF3B1   
       BEQ    LF37F   
       CMP    #$31    
       BCC    LF3DB   
       BEQ    LF3E8   
       CMP    #$40    
       BCC    LF34E   
       LDA    $B2     
       CMP    #$03    
       BEQ    LF3CA   
       BNE    LF385   
LF37F: LDA    $B2     
       CMP    #$01    
       BEQ    LF3CA   
LF385: LDA    #$10    
       LDX    #$09    
       JSR    $745E   
       LDA    #$42    
       LDX    #$42    
       LDY    $C1     
       BEQ    LF40E   
       JMP    $7417   
LF397: LDA    #$11    
       LDX    #$10    
       JSR    $745E   
       LDA    #$42    
       LDX    #$49    
       BNE    LF40E   
LF3A4: LDA    #$12    
       LDX    #$17    
       JSR    $745E   
       LDA    #$42    
       LDX    #$50    
       BNE    LF40E   
LF3B1: LDA    $C1     
       BEQ    LF3BB   
       LDA    #$00    
       STA    $C1     
       BEQ    LF385   
LF3BB: LDA    #$20    
       STA    $C1     
       LDX    #$26    
       JSR    $745E   
       LDA    #$54    
       LDX    #$6D    
       BNE    LF421   
LF3CA: LDA    #$30    
       LDX    #$10    
       JSR    $745E   
       LDA    #$4B    
       LDX    #$57    
       LDY    $C1     
       BEQ    LF40E   
       BNE    LF417   
LF3DB: LDA    #$31    
       LDX    #$17    
       JSR    $745E   
       LDA    #$4B    
       LDX    #$5E    
       BNE    LF40E   
LF3E8: LDA    #$32    
       LDX    #$1E    
       JSR    $745E   
       LDA    #$4B    
       LDX    #$65    
       BNE    LF40E   
LF3F5: LDA    $C1     
       BEQ    LF3FF   
       LDA    #$00    
       STA    $C1     
       BEQ    LF3CA   
LF3FF: LDA    #$40    
       STA    $C1     
       LDX    #$26    
       JSR    $745E   
       LDA    #$5D    
       LDX    #$80    
       BNE    LF421   
LF40E: STA    $8A     
       STX    $A7     
       LDA    #$61    
       STA    $B1     
       RTS            

LF417: STA    $8A     
       STX    $A7     
       JSR    $7CBB   
       JMP    $7457   
LF421: STA    $8A     
       STX    $A7     
       LDA    $99     
       ASL            
       AND    #$F8    
       ORA    #$01    
       CMP    #$28    
       BCS    LF432   
       LDA    #$27    
LF432: CMP    #$9E    
       BCC    LF438   
       LDA    #$9E    
LF438: STA    $99     
       LDA    #$92    
       STA    $98     
       LDA    #$00    
       STA    $91     
       STA    $93     
       STA    $95     
       STA    $97     
       LDA    #$03    
       STA    $85     
       LDA    $86     
       ASL            
       CMP    #$7D    
       BCC    LF455   
       LDA    #$7D    
LF455: STA    $86     
LF457: LDA    #$62    
       STA    $B1     
       STA    $BB     
       RTS            

LF45E: STA    $B7     
       STX    $A4     
       SED            
       CLC            
       LDA    $C2     
       ADC    #$05    
       BCC    LF46C   
       LDA    #$99    
LF46C: STA    $C2     
       CLD            
       RTS            

LF470: CMP    #$37    
       BEQ    LF4AB   
       CMP    #$44    
       BNE    LF4A0   
       LDA    REFP1   
       AND    #$80    
       BNE    LF481   
       JMP    $72B6   
LF481: LDA    $BB     
       BNE    LF4A0   
       LDX    #$01    
       LDA    $B7     
       CMP    #$20    
       BEQ    LF497   
       CMP    #$40    
       BEQ    LF497   
       ORA    #$03    
       STA    $B7     
       LDX    #$00    
LF497: STX    $C1     
       JSR    $7357   
       LDA    #$44    
       STA    $B1     
LF4A0: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $BE     
       JMP    $7013   
LF4AB: LDA    $BB     
       AND    #$07    
       BNE    LF4CA   
       LDY    $C3     
       BEQ    LF4D1   
       LDA    $74D6,Y 
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
LF4C2: DEC    $C3     
       BPL    LF4CA   
       LDA    #$60    
       STA    $B1     
LF4CA: LDA    #$00    
       STA    AUDV1   
       JMP    $7013   
LF4D1: STY    AUDV0   
       JMP    $74C2   
LF4D6: .byte $00,$00,$00,$1A,$1A,$1A,$14,$17,$1A,$1D,$1D,$00,$11,$11,$00,$11
       .byte $00,$11,$11,$00,$0F,$0F,$00,$0F,$00,$0F,$0F,$00,$1A,$00,$1A,$14
       .byte $14,$13,$00,$13,$00,$13,$00,$13,$13,$1A,$1A,$00,$1A,$00,$1A,$1A
       .byte $00,$1A,$1A,$00,$1A,$00,$1A,$1A
LF50E: LDA    $BB     
       AND    #$0F    
       BNE    LF56A   
       LDY    #$00    
       STY    $AA     
       STY    $AE     
       LDX    #$08    
LF51C: STX    $A6     
       LDA    $91,X   
       CMP    $7CE6,X 
       BEQ    LF558   
       LDY    #$FF    
       BCC    LF541   
LF529: LDA    $91,X   
       CMP    $7CE6,X 
       BEQ    LF532   
       DEC    $91,X   
LF532: LDA    #$92    
       CMP    $90,X   
       BEQ    LF53A   
       INC    $90,X   
LF53A: DEX            
       DEX            
       BPL    LF529   
       JMP    $7558   
LF541: LDA    $91,X   
       CMP    $7CE6,X 
       BEQ    LF54A   
       INC    $91,X   
LF54A: LDA    #$92    
       CMP    $90,X   
       BEQ    LF552   
       INC    $90,X   
LF552: INX            
       INX            
       CPX    #$09    
       BCC    LF541   
LF558: LDX    $A6     
       DEX            
       DEX            
       BPL    LF51C   
       CPY    #$00    
       BNE    LF56A   
       LDY    #$62    
       STY    $B1     
       LDA    #$05    
       STA    $BB     
LF56A: JMP    $7013   
LF56D: LDA    #$A6    
       STA    COLUPF  
       LDA    #$07    
       STA    $C0     
LF575: STA    WSYNC   
       LDY    $C0     
       LDA    ($C4),Y 
       STA    PF0     
       LDA    ($C6),Y 
       STA    PF1     
       LDA    ($C8),Y 
       STA    PF2     
       LDA    ($CA),Y 
       STA    PF0     
       LDA    ($CC),Y 
       STA    PF1     
       LDA    ($CE),Y 
       STA    PF2     
       LDY    $89     
       BEQ    LF59B   
       LDA    ($87),Y 
       STA    GRP0    
       DEC    $89     
LF59B: LDA    $86     
       CMP    $8F     
       BNE    LF5A5   
       LDA    #$09    
       STA    $89     
LF5A5: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENAM0   
       LDY    $89     
       BEQ    LF5B7   
       LDA    ($87),Y 
       DEC    $89     
LF5B7: DEC    $8F     
       DEC    $C0     
       STA    GRP0    
       BPL    LF575   
       RTS            

LF5C0: AND    #$04    
       BEQ    LF5CE   
       LDA    $BE     
       AND    #$FB    
       STA    $BE     
       LDA    #$02    
       STA    $80     
LF5CE: LDA    #$08    
       STA    AUDC0   
       DEC    $80     
       BMI    LF5E8   
       LDX    $80     
       LDA    $7BFA,X 
       STA    AUDF0   
       LDA    #$17    
       STA    AUDV0   
       LDA    $BE     
       AND    #$3B    
       JMP    $7630   
LF5E8: LDA    #$00    
       STA    AUDV0   
       LDA    $BE     
       AND    #$BB    
       STA    $BE     
       AND    #$3B    
       JMP    $7630   
LF5F7: AND    #$01    
       BEQ    LF605   
       LDA    $BE     
       AND    #$FE    
       STA    $BE     
       LDA    #$02    
       STA    $83     
LF605: LDA    #$08    
       STA    AUDC1   
       DEC    $83     
       BMI    LF619   
       LDX    $83     
       LDA    $7CF9,X 
       STA    AUDF1   
       LDA    #$16    
       STA    AUDV1   
       RTS            

LF619: LDA    #$00    
       STA    AUDV1   
       LDA    $BE     
       AND    #$EE    
       STA    $BE     
       RTS            

LF624: LDA    $BE     
       BEQ    LF639   
       CMP    #$80    
       BCS    LF640   
LF62C: CMP    #$40    
       BCS    LF5C0   
LF630: CMP    #$20    
       BCS    LF699   
LF634: CMP    #$10    
       BCS    LF5F7   
       RTS            

LF639: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LF640: AND    #$08    
       BEQ    LF656   
       LDA    $BE     
       AND    #$F7    
       STA    $BE     
       LDA    #$04    
       STA    $80     
       LDA    #$0A    
       STA    $82     
       LDA    #$FF    
       STA    $81     
LF656: LDA    #$08    
       STA    AUDC0   
       LDX    $80     
       LDA.w  $0081   
       CMP    $7BF6,X 
       BCC    LF672   
       DEX            
       BMI    LF67D   
       STX    $80     
       LDA    $7BF6,X 
       STA    AUDV0   
       LDA    #$10    
       STA    $81     
LF672: STA    AUDF0   
       INC    $81     
       LDA    $BE     
       AND    #$37    
       JMP    $7630   
LF67D: LDA    $82     
       STA    AUDV0   
       ORA    #$10    
       STA    AUDF0   
       DEC    $82     
       BMI    LF692   
       LDA    $BE     
       AND    #$33    
       STA    $BE     
       JMP    $7630   
LF692: LDA    $BE     
       AND    #$77    
       JMP    $762C   
LF699: AND    #$02    
       BEQ    LF6AF   
       LDA    $BE     
       AND    #$FD    
       STA    $BE     
       LDA    #$04    
       STA    $83     
       LDA    #$0D    
       STA    $82     
       LDA    #$FF    
       STA    $84     
LF6AF: LDA    #$08    
       STA    AUDC1   
       LDX    $83     
       LDA.w  $0084   
       CMP    $7BFC,X 
       BCC    LF6CB   
       DEX            
       BMI    LF6D0   
       STX    $83     
       LDA    $7BFC,X 
       STA    AUDV1   
       LDA    #$10    
       STA    $84     
LF6CB: STA    AUDF1   
       INC    $84     
       RTS            

LF6D0: LDA    $82     
       STA    AUDV1   
       ORA    #$10    
       STA    AUDF1   
       DEC    $82     
       BMI    LF6E3   
       LDA    $BE     
       AND    #$DD    
       STA    $BE     
       RTS            

LF6E3: LDA    $BE     
       AND    #$11    
       JMP    $7634   
LF6EA: LDA    #$04    
       STA    AUDC0   
       LDA    #$0C    
       STA    AUDF0   
       LDA    $BB     
       AND    #$07    
       BNE    LF76A   
       LDA    #$01    
       LDX    #$00    
       JSR    $7B8F   
       LDA    $BB     
       AND    #$0F    
       BNE    LF70E   
       STA    AUDV0   
       LDA    SWCHA   
       AND    #$40    
       BEQ    LF71A   
LF70E: INC    $85     
       LDA    $BB     
       AND    #$10    
       BNE    LF71A   
       LDA    #$08    
       STA    AUDV0   
LF71A: LDA    SWCHA   
       TAX            
       AND    #$10    
       BNE    LF724   
       INC    $86     
LF724: TXA            
       AND    #$20    
       BNE    LF72B   
       DEC    $86     
LF72B: LDA    $85     
       CMP    #$98    
       BCS    LF762   
       LDA.w  $0002   
       AND    #$80    
       BNE    LF762   
       LDA.w  $0007   
       AND    #$80    
       BEQ    LF76A   
       LDA    $99     
       SEC            
       SBC    #$0A    
       SBC    $86     
       BCC    LF762   
       CMP    #$0E    
       BCS    LF762   
       LDA    $B6     
       CMP    #$08    
       BEQ    LF754   
       INC    $B6     
LF754: LDA    #$90    
       LDX    #$00    
       JSR    $7B8F   
       LDA    #$37    
       STA    $C3     
       STA    $B1     
       RTS            

LF762: LDA    #$01    
       STA    $B1     
       LDA    #$AA    
       STA    $BE     
LF76A: RTS            

LF76B: LDA    WSYNC   
       AND    #$80    
       BNE    LF7E4   
       LDY    #$00    
       LDA    COLUP1  
       AND    #$40    
       BEQ    LF77D   
       STY    $8D     
       STY    $AA     
LF77D: LDA    NUSIZ0  
       AND    #$40    
       BEQ    LF787   
       STY    $8D     
       STY    $AE     
LF787: LDA    $AA     
       BEQ    LF796   
       LDA    VBLANK  
       AND    #$80    
       BEQ    LF796   
       STY    $AA     
       JMP    $77D6   
LF796: LDA    $AE     
       BEQ    LF7A5   
       LDA    WSYNC   
       AND    #$40    
       BEQ    LF7A5   
       STY    $AE     
       JMP    $77D6   
LF7A5: LDA    $8D     
       BEQ    LF7BF   
       LDA    VSYNC   
       AND    #$80    
       BEQ    LF7BF   
       LDA    $8D     
       JSR    $77ED   
       BNE    LF7BF   
       STY    $8D     
       LDA    $C2     
       LDX    #$00    
       JSR    $7B8F   
LF7BF: LDA    COLUP1  
       AND    #$80    
       BEQ    LF7EC   
       LDA    $86     
       JSR    $77ED   
       BEQ    LF7D6   
       LDA    $86     
       SEC            
       SBC    #$04    
       JSR    $77ED   
       BNE    LF7EC   
LF7D6: LDA    $B1     
       BEQ    LF7E4   
       LDA    #$00    
       STA    $91     
       STA    $93     
       STA    $95     
       STA    $97     
LF7E4: LDA    #$01    
       STA    $B1     
       LDA    #$AA    
       STA    $BE     
LF7EC: RTS            

LF7ED: TAX            
       LDA    $97     
       BNE    LF811   
       LDA    #$60    
       STA    $B1     
       LDA    $98     
       STA    $90     
       STA    $92     
       STA    $94     
       STA    $96     
       LDA    $99     
       STA    $91     
       STA    $93     
       STA    $95     
       STA    $97     
       LDA    #$AA    
       STA    $BE     
       LDA    #$00    
       RTS            

LF811: TXA            
       LDX    #$08    
LF814: CMP    $91,X   
       BEQ    LF829   
       BCS    LF81E   
       DEX            
       DEX            
       BPL    LF814   
LF81E: INX            
       INX            
       CLC            
       ADC    #$07    
       SEC            
       SBC.wx $0091,X 
       BCC    LF846   
LF829: CPX    #$00    
       BEQ    LF839   
       LDA    $8F,X   
       STA    $91,X   
       LDA    $8E,X   
       STA    $90,X   
       DEX            
       DEX            
       BNE    LF829   
LF839: LDA    #$88    
       ORA.w  $00BE   
       STA    $BE     
       LDA    #$00    
       STA    $90     
       STA    $91     
LF846: RTS            

LF847: LDA    #$FB    
       CMP    $A5     
       BNE    LF84F   
       LDA    #$FC    
LF84F: LDX    $B7     
       CPX    #$20    
       BEQ    LF85B   
       CPX    #$40    
       BEQ    LF85B   
       STA    $88     
LF85B: STA    $A5     
       LDX    #$0A    
LF85F: CLC            
       LDA    $C4,X   
       ADC    #$08    
       STA    $C4,X   
       DEX            
       DEX            
       BPL    LF85F   
       RTS            

LF86B: LDA    #$02    
       STA    $B8     
       LDA    SWCHA   
       TAX            
       AND    #$10    
       BNE    LF879   
       INC    $86     
LF879: TXA            
       AND    #$20    
       BNE    LF880   
       DEC    $86     
LF880: TXA            
       AND    #$80    
       BNE    LF88B   
       INC    $85     
       LDA    #$03    
       STA    $B8     
LF88B: TXA            
       AND    #$40    
       BNE    LF896   
       DEC    $85     
       LDA    #$01    
       STA    $B8     
LF896: LDA    $85     
       CMP    #$03    
       BCS    LF89E   
       LDA    #$03    
LF89E: CMP    #$1F    
       BCC    LF8A4   
       LDA    #$1E    
LF8A4: STA    $85     
       LDA    $8D     
       BEQ    LF8BC   
       LDA    $8C     
       CLC            
       ADC    #$02    
       ADC    $8E     
       CMP    #$94    
       BCC    LF8B9   
       LDA    #$00    
       STA    $8D     
LF8B9: STA    $8C     
       RTS            

LF8BC: LDA    REFP1   
       AND    #$80    
       BNE    LF8D9   
       LDA    $85     
       ADC    #$06    
       STA    $8C     
       LDA    $86     
       SBC    #$02    
       STA    $8D     
       LDA    $B8     
       STA    $8E     
       LDA    #$55    
       ORA.w  $00BE   
       STA    $BE     
LF8D9: LDA    #$03    
       LDX    $B3     
       CPX    #$10    
       BCS    LF8F1   
       LDA    #$02    
       CPX    #$01    
       BCS    LF8F1   
       LDA    #$01    
       LDX    $B4     
       CPX    #$10    
       BCS    LF8F1   
       LDA    #$00    
LF8F1: CLC            
       ADC    $B8     
       STA    $B8     
       RTS            

LF8F7: LDX    $BA     
       BPL    LF8FD   
       LDX    #$08    
LF8FD: LDA    $91,X   
       BEQ    LF96C   
       LDA    $90,X   
       SBC    $9A,X   
       BEQ    LF90F   
       BCS    LF919   
       CMP    #$FF    
       BEQ    LF90F   
       LDA    #$01    
LF90F: STA    $B9     
       STA    $9B,X   
       LDA    $B8     
       STA    $9A,X   
       LDA    #$94    
LF919: STA    $90,X   
       LDA    $91,X   
       CLC            
       ADC    $9B,X   
       TAY            
       CPY    #$44    
       BCC    LF92F   
       LDA    #$00    
       SEC            
       SBC    $9B,X   
       STA    $9B,X   
       JMP    $796C   
LF92F: CPY    #$09    
       BCS    LF93D   
       LDA    #$00    
       SEC            
       SBC    $9B,X   
       STA    $9B,X   
       JMP    $796C   
LF93D: TYA            
       CPX    #$00    
       BEQ    LF953   
       SBC.wx $008F,X 
       CMP    #$08    
       BCS    LF953   
       LDA    #$00    
       SEC            
       SBC    $9B,X   
       STA    $9B,X   
       JMP    $796C   
LF953: TYA            
       CPX    #$08    
       BEQ    LF969   
       ADC    #$07    
       CMP.wx $0093,X 
       BCC    LF969   
       LDA    #$00    
       SEC            
       SBC    $9B,X   
       STA    $9B,X   
       JMP    $796C   
LF969: TYA            
       STA    $91,X   
LF96C: LDA    $AA     
       BNE    LF996   
       LDA    $AE     
       BEQ    LF97A   
       LDA    $AD     
       CMP    #$50    
       BCS    LF996   
LF97A: LDA    $90,X   
       STA    $A9     
       LDA    $91,X   
       SBC    #$04    
       STA    $AA     
       LDA    $9A,X   
       STA    $AB     
       LDA    $9B,X   
       STA    $AC     
       LDA    #$55    
       ORA.w  $00BE   
       STA    $BE     
       JMP    $79C1   
LF996: LDA    $AE     
       BNE    LF9C1   
       LDA    $AA     
       BEQ    LF9A8   
       LDA    $A9     
       CMP    #$50    
       BCS    LF9C1   
       LDA    $97     
       BEQ    LF9C1   
LF9A8: LDA    $90,X   
       STA    $AD     
       LDA    $91,X   
       SBC    #$04    
       STA    $AE     
       LDA    $9A,X   
       STA    $AF     
       LDA    $9B,X   
       STA    $B0     
       LDA    #$55    
       ORA.w  $00BE   
       STA    $BE     
LF9C1: DEX            
       DEX            
       STX    $BA     
       LDX    #$04    
       LDA    $BB     
       AND    #$01    
       BNE    LF9CF   
       LDX    #$00    
LF9CF: LDA    $A9,X   
       BEQ    LF9F1   
       CLC            
       SBC    $AB,X   
       BCC    LF9F1   
       CMP    #$06    
       BCC    LF9F1   
       STA    $A9,X   
       LDA    $BB     
       AND    #$02    
       BEQ    LF9F7   
       LDA    $AA,X   
       CLC            
       ADC    $AC,X   
       CMP    #$44    
       BCS    LF9F1   
       CMP    #$05    
       BCS    LF9F5   
LF9F1: LDA    #$00    
       STA    $A9,X   
LF9F5: STA    $AA,X   
LF9F7: RTS            

LF9F8: STA    WSYNC   
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$D0    
       STA    HMP0    
       LDA    #$A0    
       STA    HMP1    
       NOP            
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    RESP0   
       LDA.wx $00B3,X 
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    $D0     
       LDA    $B3,X   
       AND    #$0F    
       JSR    $7AC5   
       STA    $D2     
       LDA    $B4,X   
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    $D4     
       LDA    $B4,X   
       AND    #$0F    
       JSR    $7AC5   
       STA    $D6     
       STY    COLUBK  
       LDA    $B5,X   
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    $D8     
       STA    HMCLR   
       LDA    $B5,X   
       AND    #$0F    
       JSR    $7AC5   
       STA    $DA     
       LDY    #$07    
       LDA    #$FF    
       STA    $D1     
       STA    $D3     
       STA    $D5     
       STA    $D7     
       STA    $D9     
       STA    $DB     
       LDX    #$00    
       LDA    $D0     
       CMP    #$08    
       BNE    LFA8D   
       STX    $D0     
       LDA    $D2     
       CMP    #$08    
       BNE    LFA8D   
       STX    $D2     
       LDA    $D4     
       CMP    #$08    
       BNE    LFA8D   
       STX    $D4     
       LDA    $D6     
       CMP    #$08    
       BNE    LFA8D   
       STX    $D6     
       LDA    $D8     
       CMP    #$08    
       BNE    LFA8D   
       STX    $D8     
LFA8D: STA    WSYNC   
       LDA    ($D2),Y 
       TAX            
       LDA    ($D0),Y 
       STA    GRP0    
       LDA    ($D6),Y 
       STA    GRP1    
       LDA    ($DA),Y 
       PHA            
       STX    GRP0    
       LDA    ($D4),Y 
       STA    GRP0    
       LDA    ($D8),Y 
       STA    GRP1    
       PLA            
       STA    GRP1    
       DEY            
       BNE    LFA8D   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$20    
       STA    NUSIZ0  
       LDX    #$20    
       LDA    SWCHB   
       AND    #$40    
       BNE    LFAC2   
       LDX    #$25    
LFAC2: STX    NUSIZ1  
       RTS            

LFAC5: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$08    
       RTS            

LFACC: .byte $FF,$C9,$40,$F0,$0F,$A2,$08,$BD,$E5,$7C,$95,$90,$CA,$CA,$10,$F7
       .byte $A9,$23,$85,$86,$20,$CE,$7C,$4C,$13,$70,$A9,$44,$85,$B1,$4C,$13
       .byte $70,$A5,$BB,$D0,$02,$85,$B1,$4C,$13,$70,$4C,$F5,$73,$20,$57,$73
       .byte $4C,$13,$70,$A9,$FB,$00,$60,$30,$18,$FC,$FF,$48,$30,$20,$00,$78
       .byte $DF,$DC,$78,$30,$78,$00,$24,$99,$6E,$76,$99,$24,$00,$18,$24,$42
       .byte $FF,$3C,$99,$00,$24,$18,$18,$24,$42,$81,$00,$00,$00,$10,$10,$12
       .byte $16,$0E,$FE,$7E,$1E,$1E,$7E,$FE,$0E,$16,$12,$10,$10,$00,$00,$81
       .byte $42,$18,$42,$42,$18,$42,$81,$8C,$8C,$8A,$8A,$88,$8A,$8A,$8C,$8C
       .byte $2F,$2F,$2D,$2D,$2B,$2D,$2D,$2F,$2F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
LFB67: .byte $FF,$7F,$0F,$06,$00,$00,$00,$06,$0F,$18,$00,$00,$01,$00,$00,$18
       .byte $0F,$07,$00,$00,$00,$00,$07,$0F,$18,$00,$00,$01,$00,$00,$18,$0F
       .byte $06,$00,$00,$00,$06,$0F,$7F,$FF
LFB8F: SEC            
       SED            
       ADC    $B5,X   
       STA    $B5,X   
       LDA    $B4,X   
       ADC    #$00    
       STA    $B4,X   
       LDA    $B3,X   
       ADC    #$00    
       STA    $B3,X   
       CLD            
       LDA    $B4,X   
       ORA    $B5,X   
       BNE    LFBAA   
       INC    $B6     
LFBAA: RTS            

LFBAB: SEC            
       STA    WSYNC   
LFBAE: SBC    #$0F    
       BCS    LFBAE   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    RESP0,X 
       RTS            

LFBBD: LDA    #$01    
       STA    $B2     
       STA    $B5     
       LDA    #$FD    
       STA    $C5     
       STA    $C9     
       STA    $CB     
       STA    $CF     
       LDA    #$FE    
       STA    $C7     
       STA    $CD     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $BE     
       STA    $C4     
       LDA    #$40    
       STA    $C6     
       LDA    #$80    
       STA    $C8     
       LDA    #$A0    
       STA    $CA     
       LDA    #$E0    
       STA    $CC     
       LDA    #$20    
       STA    $CE     
       LDA    #$44    
       STA    $B1     
       RTS            

LFBF6: .byte $19,$1D,$1C,$18
LFBFA: .byte $06,$08
LFBFC: .byte $1B,$1C,$19,$1A,$FF,$00,$C0,$60,$30,$FF,$BE,$50,$30,$20,$00,$7A
       .byte $DF,$DC,$78,$30,$30,$00,$00,$18,$6E,$76,$18,$00,$00,$5A,$3C,$FF
       .byte $42,$24,$18,$00,$24,$99,$5A,$24,$00,$00,$00,$10,$10,$12,$16,$0E
       .byte $FE,$7E,$1E,$00,$00,$00,$1E,$7E,$FE,$0E,$16,$12,$10,$10,$00,$00
       .byte $00,$22,$08,$08,$22,$00,$00,$28,$28,$26,$26,$28,$28,$9F,$C6,$C8
       .byte $CA,$CC,$CA,$C8,$C6,$76,$78,$7A,$7C,$7A,$78,$76,$86,$88,$88,$8C
       .byte $8A,$88,$86,$56,$58,$5A,$5C,$5A,$58,$56,$C6,$C8,$CA,$CC,$CA,$C8
       .byte $C6,$2F,$2F,$2D,$2B,$2B,$29,$29,$27,$27,$25,$25,$27,$27,$29,$29
       .byte $2B,$2B,$2D,$2F,$5D,$5D,$5B,$5B,$59,$59,$57,$57,$55,$55,$57,$57
       .byte $59,$59,$5B,$5B,$5D,$5D,$5F
LFC93: .byte $F3,$C1,$80,$00,$08,$1C,$30,$E0,$A1,$40,$80,$03,$0C,$03,$80,$E0
       .byte $C1,$80,$00,$1C,$1C,$00,$80,$C1,$E0,$80,$03,$0C,$03,$80,$40,$A1
       .byte $E0,$30,$1C,$08,$00,$80,$C1,$F3
LFCBB: LDX    #$09    
LFCBD: LDA    $7CEF,X 
       STA    $9A,X   
       LDA    $7CE5,X 
       STA    $90,X   
       DEX            
       BPL    LFCBD   
       LDA    #$23    
       STA    $86     
LFCCE: LDA    #$0A    
       STA    $85     
       LDA    #$00    
       STA    $87     
       LDA    #$FC    
       STA    $88     
       STA    $A5     
       LDA    #$00    
       STA    $8D     
       STA    $AA     
       STA    $AE     
       RTS            

LFCE5: .byte $90
LFCE6: .byte $0A,$86,$18,$92,$23,$83,$33,$91,$40
LFCEF: .byte $02,$01,$02,$01,$02,$01,$02,$01,$02,$01
LFCF9: .byte $09,$05,$FF,$FF,$FF,$FF,$FF,$00,$80,$40,$38,$04,$03,$01,$00,$00
       .byte $40,$A0,$9C,$82,$01,$00,$00,$00,$20,$50,$4E,$C1,$80,$00,$00,$00
       .byte $10,$28,$27,$60,$C0,$00,$00,$00,$08,$14,$13,$B0,$60,$00,$00,$00
       .byte $04,$A0,$89,$D8,$30,$00,$00,$00,$02,$05,$44,$EC,$18,$00,$00,$00
       .byte $01,$02,$22,$76,$8C,$80,$00,$00,$00,$01,$11,$3B,$46,$40,$80,$00
       .byte $00,$00,$08,$1D,$23,$A0,$C0,$00,$00,$00,$04,$8E,$91,$50,$60,$00
       .byte $00,$00,$82,$47,$48,$28,$30,$00,$00,$80,$41,$23,$24,$14,$18,$00
       .byte $80,$40,$20,$11,$12,$0A,$0C,$00,$C0,$20,$10,$08,$09,$05,$06,$00
       .byte $60,$90,$88,$84,$04,$02,$03,$00,$30,$48,$44,$42,$82,$01,$01,$00
       .byte $18,$24,$22,$A1,$C1,$00,$00,$00,$0C,$92,$91,$50,$60,$00,$00,$00
       .byte $86,$49,$48,$28,$30,$00,$00,$80,$43,$24,$24,$14,$18,$00,$00,$40
       .byte $A1,$12,$12,$0A,$0C,$00,$00,$20,$50,$19,$19,$05,$06,$00,$00,$10
       .byte $28,$44,$44,$82,$03,$00,$00,$08,$14,$22,$22,$41,$81,$00,$00,$04
       .byte $0A,$11,$11,$20,$C0,$80,$00,$02,$05,$08,$08,$10,$E0,$40,$00,$01
       .byte $02,$04,$04,$88,$70,$20,$00,$00,$01,$02,$82,$44,$38,$10,$00,$00
       .byte $00,$01,$C1,$22,$1C,$08,$00,$00,$00,$00,$E0,$11,$0E,$04,$00,$00
       .byte $00,$80,$70,$08,$07,$02,$00,$00,$01,$02,$1C,$20,$C0,$80,$00,$00
       .byte $02,$05,$39,$41,$80,$00,$00,$00,$04,$0A,$72,$83,$01,$00,$00,$00
       .byte $08,$14,$E4,$06,$03,$00,$00,$00,$10,$28,$C8,$0D,$06,$00,$00,$00
       .byte $20,$50,$91,$1B,$0C,$00,$00,$00,$40,$A0,$22,$37,$18,$00,$00,$00
       .byte $80,$40,$44,$6E,$31,$01,$00,$00,$00,$80,$88,$DC,$62,$02,$01,$00
       .byte $00,$00,$10,$B8,$C4,$05,$03,$00,$00,$00,$20,$71,$19,$0A,$06,$00
       .byte $00,$00,$41,$E2,$12,$14,$0C,$00,$00,$01,$82,$C4,$24,$28,$18,$00
       .byte $01,$02,$04,$88,$48,$50,$30,$00,$03,$04,$08,$10,$90,$A0,$60,$00
       .byte $06,$09,$11,$21,$20,$40,$C0,$00,$0C,$12,$22,$42,$41,$80,$80,$00
       .byte $18,$24,$44,$85,$83,$00,$00,$00,$30,$49,$89,$0A,$06,$00,$00,$00
       .byte $61,$92,$12,$14,$0C,$00,$00,$01,$C2,$24,$24,$28,$18,$00,$00,$02
       .byte $85,$48,$48,$50,$30,$00,$00,$04,$0A,$91,$91,$A0,$60,$00,$00,$08
       .byte $14,$22,$22,$41,$C0,$00,$00,$10,$28,$44,$44,$82,$81,$00,$00,$20
       .byte $50,$88,$88,$04,$03,$01,$00,$40,$A0,$10,$10,$08,$07,$02,$00,$80
       .byte $40,$20,$20,$11,$0E,$04,$00,$00,$80,$40,$41,$22,$1C,$08,$00,$00
       .byte $00,$80,$83,$44,$38,$10,$00,$00,$00,$00,$07,$88,$70,$20,$00,$00
       .byte $00,$01,$0E,$10,$E0,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3C,$66,$66,$66,$66,$66,$3C,$00,$3C,$18,$18,$18,$18,$38,$18,$00
       .byte $7E,$60,$60,$3C,$06,$46,$3C,$00,$3C,$46,$06,$1C,$06,$46,$3C,$00
       .byte $0C,$0C,$7E,$6C,$3C,$1C,$0C,$00,$7C,$06,$06,$7C,$60,$60,$7E,$00
       .byte $3C,$66,$66,$7C,$60,$62,$3C,$00,$18,$18,$18,$0C,$06,$66,$7E,$00
       .byte $3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$3C
LFF58: LDA    #$00    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    RESBL   
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    COLUPF  
       INX            
       STX    NUSIZ0  
       STA    RESP0   
       STA    RESP1   
       STX    NUSIZ1  
       LDA    #$30    
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMBL    
       LSR            
       STA    HMP1    
       LDA    #$0C    
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$07    
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       STA    HMCLR   
LFF92: STA    WSYNC   
       NOP            
       LDA    $7FB0,X 
       STA.w  $001B   
       LDA    $7FB8,X 
       STA    GRP1    
       NOP            
       LDA    $7FC8,X 
       TAY            
       LDA    $7FC0,X 
       STA    GRP0    
       STY    GRP1    
       DEX            
       BPL    LFF92   
       RTS            

LFFB0: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFFB8: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFFC0: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFFC8: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$00,$F0,$00,$F0
