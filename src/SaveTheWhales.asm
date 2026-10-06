; Disassembly of roms/SaveTheWhales.BIN
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/SaveTheWhales.BIN
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
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
CXCLR   =  $2C
CXM0P   =  $30
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF2C1   =   $F2C1
LF2D7   =   $F2D7

       ORG $F000

START:
       CLD            
       SEI            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       DEX            
       BNE    LF005   
       DEX            
       STX    $CE     
       TXS            
       JSR    LF6D2   
       LDX    #$00    
       STX    $AA     
       DEX            
       STX    $F0     
       JSR    LF280   
LF01B: LDA    #$20    
       STA    TIM64T  
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    SWCHB   
       ROR            
       BCS    LF031   
       JSR    LF6D2   
       BEQ    LF03D   
LF031: ROR            
       BCS    LF039   
       JSR    LF280   
       BEQ    LF03D   
LF039: LDA    #$01    
       STA    $AA     
LF03D: NOP            
       NOP            
       NOP            
       JSR    LF2B0   
       JSR    LF2DC   
       LDA    $CE     
       BNE    LF059   
       JSR    LF2FF   
       JSR    LF315   
       JSR    LF330   
       JSR    LF3AE   
       JSR    LF45B   
LF059: LDA    INTIM   
       BNE    LF059   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$20    
       STA    TIM64T  
       LDX    #$0C    
LF077: LDA    LFD60,X 
       STA    NUSIZ0,X
       DEX            
       BPL    LF077   
       STX    CXCLR   
       LDA    $8B     
       STA    $8C     
       LDA    $CE     
       BNE    LF092   
       JSR    LF4A1   
       JSR    LF4C1   
       JSR    LF540   
LF092: LDY    $BA     
       BEQ    LF099   
       JSR    LF715   
LF099: LDY    $B8     
       BEQ    LF0A0   
       JSR    LF8C6   
LF0A0: JSR    LF5AF   
       JSR    LF668   
LF0A6: LDA    INTIM   
LF0A9: BNE    LF0A6   
       STA    GRP1    
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$07    
LF0B3: STY    $A8     
       LDA    ($D2),Y 
       STA    WSYNC   
       STA    $A7     
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($D4),Y 
       STA    GRP1    
       LDA    ($C2),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       TAX            
       LDA    ($D2),Y 
       LDY    $A7     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       LDY    $A8     
       DEY            
       BPL    LF0B3   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    VDELP0  
       STY    VDELP1  
       LDA    #$FE    
       STA    $C3     
       LDA    #$7F    
       STA    $C2     
       STA    HMCLR   
       LDA    $8E     
       CLC            
       ADC    #$0C    
       SEC            
       STA    WSYNC   
LF0F4: SBC    #$0F    
       BCS    LF0F4   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDX    $AE     
       BMI    LF11C   
       BEQ    LF11C   
       CPX    #$03    
       BCC    LF115   
       TXA            
       BNE    LF118   
LF115: LDA    LFD6B,X 
LF118: STA    NUSIZ1  
       BPL    LF120   
LF11C: LDA    #$00    
       STA    $C2     
LF120: LDY    #$07    
LF122: LDA    LFD6F,Y 
       STA    WSYNC   
       STA    COLUP1  
       LDA    ($C2),Y 
       STA    GRP1    
       DEY            
       BNE    LF122   
       STA    WSYNC   
       STY    GRP1    
       STY    NUSIZ1  
       STY    COLUP1  
       LDA    $AB     
       STA    $C2     
       STA    HMCLR   
       LDA    $D7     
       CLC            
       ADC    #$0C    
       SEC            
       STA    WSYNC   
LF146: SBC    #$0F    
       BCS    LF146   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
LF15C: STA    WSYNC   
       LDA    ($C2),Y 
       STA    GRP1    
       DEY            
       BNE    LF15C   
       LDA    #$88    
       STA    $C2     
       LDY    #$0B    
LF16B: LDA    LFD77,Y 
       LDX    LFD84,Y 
       STA    WSYNC   
       STA    COLUP1  
       STX    COLUBK  
       LDA    ($C2),Y 
       STA    GRP1    
       DEY            
       BNE    LF16B   
       LDY    #$03    
LF180: STA    WSYNC   
       LDA    LFD90,Y 
       STA    COLUPF  
       LDX    $C7,Y   
       STX    PF0     
       LDA.wy $00C4,Y 
       STA    PF1     
       STX    PF2     
       DEY            
       BNE    LF180   
       STA    WSYNC   
       STY    GRP1    
       LDA    #$B9    
       STA    COLUBK  
       STA    COLUPF  
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDA    $DF     
       STA    COLUP1  
       LDX    $A5     
       LDA    LFDAE,X 
       STA    $C3     
       STA    HMCLR   
       LDA    $A9     
       CLC            
       ADC    #$0C    
       SEC            
       STA    WSYNC   
LF1BA: SBC    #$0F    
       BCS    LF1BA   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    $BD     
       CLC            
       ADC    #$0C    
       SEC            
       STA    WSYNC   
LF1DA: SBC    #$0F    
       BCS    LF1DA   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $9A     
       STA    REFP0   
       LDA    #$35    
       STA    NUSIZ0  
       LDA    $ED     
       STA    COLUP0  
       LDA    #$FE    
       STA    $C1     
       LDX    $D6     
LF200: LDA    $80,X   
       STA    $C0     
       LDA    $90,X   
       STA    $C2     
       TXA            
       ORA    #$B0    
       STA    COLUBK  
       LDY    #$0F    
LF20F: STA    WSYNC   
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    #$00    
       DEC    $8C     
       BNE    LF221   
       LDA    $8A     
LF221: STA    ENAM0   
       DEY            
       BNE    LF20F   
       DEC    $D6     
       LDX    $D6     
       CPX    #$04    
       BCS    LF200   
LF22E: LDX    $D6     
       LDA    $80,X   
       STA    $C0     
       LDA    $90,X   
       STA    $C2     
       TXA            
       ORA    #$B0    
       LDY    LFD94,X 
       STY    COLUP0  
       LDY    $B0,X   
       STY    NUSIZ0  
       STA    COLUBK  
       LDA    $D8,X   
       CLC            
       ADC    #$0C    
       SEC            
       STA    WSYNC   
LF24E: SBC    #$0F    
       BCS    LF24E   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    REFP0   
       LDY    #$0F    
LF268: STA    WSYNC   
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       STA    GRP1    
       DEY            
       BNE    LF268   
       DEC    $D6     
       BPL    LF22E   
       JMP    LF01B   
LF27C: .byte $00,$00,$00,$00
LF280: LDA    #$FF    
       STA    $CE     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       DEC    $AA     
       BPL    LF2A9   
       LDA    #$40    
       STA    $AA     
       INC    $F0     
       LDA    $F0     
       CMP    #$08    
       BCC    LF29E   
       SBC    #$08    
       STA    $F0     
LF29E: CLC            
       ADC    #$01    
       ORA    #$A0    
       STA    $9E     
       LDA    #$AA    
       STA    $9F     
LF2A9: LDA    #$00    
       STA    $BA     
       STA    $B8     
       RTS            

LF2B0: LDA    SWCHA   
       AND    #$20    
       BNE    LF2C6   
       LDA    $BE     
       CMP    #$50    
       BCC    LF2C1   
       SEC            
       SBC    $AD     
       BIT    $50A9   
       STA    $BE     
       RTS            

LF2C6: LDA    SWCHA   
       AND    #$10    
       BNE    LF2DB   
       LDA    $BE     
       CMP    #$9F    
       BCS    LF2D7   
       CLC            
       ADC    $AD     
       BIT    $9FA9   
       STA    $BE     
LF2DB: RTS            

LF2DC: LDY    $BD     
       LDA    SWCHA   
       BMI    LF2EF   
       LDA    #$06    
       STA    $9A     
       CPY    #$90    
       BCS    LF2EC   
       INY            
LF2EC: STY    $BD     
       RTS            

LF2EF: AND    #$40    
       BNE    LF2FE   
       LDA    #$FA    
       STA    $9A     
       CPY    #$04    
       BCC    LF2FC   
       DEY            
LF2FC: STY    $BD     
LF2FE: RTS            

LF2FF: DEC    $DD     
       BEQ    LF304   
       RTS            

LF304: LDA    #$08    
       STA    $DD     
       LDX    #$02    
LF30A: LDA    $C8,X   
       ROL            
       ROR    $C5,X   
       ROL    $C8,X   
       DEX            
       BPL    LF30A   
       RTS            

LF315: LDX    #$03    
LF317: DEC    $A0,X   
       BNE    LF32C   
       LDA    LFD98,X 
       STA    $A0,X   
       INC    $D8,X   
       LDA    #$93    
       CMP    $D8,X   
       BCS    LF32C   
       LDA    #$03    
       STA    $D8,X   
LF32C: DEX            
       BPL    LF317   
       RTS            

LF330: LDA    $8A     
       BEQ    LF379   
       LDY    $8D     
       TYA            
       CLC            
       ADC    $9B     
       TAY            
       LDA    $9B     
       BMI    LF345   
       CPY    #$96    
       BCS    LF34E   
       BCC    LF355   
LF345: TYA            
       CMP    #$96    
       BCS    LF34E   
       CPY    #$04    
       BCS    LF355   
LF34E: LDA    #$00    
       STA    $8A     
       STA    ENAM0   
       RTS            

LF355: STA    HMCLR   
       STY    $8D     
       TYA            
       CLC            
       ADC    #$0C    
       SEC            
       STA    WSYNC   
LF360: SBC    #$0F    
       BCS    LF360   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESM0   
       STA    HMM0    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       RTS            

LF379: LDA    $BA     
       AND    #$F0    
       CMP    #$30    
       BEQ    LF385   
       LDA    INPT4   
       BPL    LF386   
LF385: RTS            

LF386: LDY    $BD     
       LDA    $9A     
       STA    $9B     
       BMI    LF393   
       CPY    #$90    
       BCC    LF398   
       RTS            

LF393: CPY    #$0F    
       BCS    LF398   
       RTS            

LF398: LDA    #$02    
       STA    $8A     
       TYA            
       CLC            
       ADC    #$06    
       STA    $8D     
       SEC            
       LDA    #$A0    
       SBC    $BE     
       STA    $8B     
       LDA    #$20    
       STA    $B8     
       RTS            

LF3AE: LDA    #$F0    
       AND    $BA     
       CMP    #$30    
       BNE    LF3B7   
       RTS            

LF3B7: LDA    CXM0P   
       BMI    LF422   
       LDA    CXPPMM  
       BMI    LF3C0   
LF3BF: RTS            

LF3C0: SEC            
       LDA    $BF     
       SBC    #$08    
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       CPX    #$04    
       BCS    LF41E   
       LDA    $B0,X   
       BMI    LF3BF   
       DEC    $B0,X   
       BPL    LF3DA   
       BMI    LF407   
LF3DA: LDY    #$02    
       LDA    $D8,X   
       CLC            
       ADC    #$15    
       CMP    $A9     
       BCC    LF3EE   
       DEY            
       SEC            
       SBC    #$10    
       CMP    $A9     
       BCC    LF3EE   
       DEY            
LF3EE: LDA    $B0,X   
       ASL            
       ASL            
       STA    $B0,X   
       TYA            
       ADC    $B0,X   
       TAY            
       LDA    LF443,Y 
       STA    $B0,X   
       CLC            
       LDA    LF44F,Y 
       ADC    $D8,X   
       STA    $D8,X   
       LDA    #$00    
LF407: STA    $AF     
       LDA    #$FF    
       STA    $CF     
       LDA    $A5     
       STA    $A6     
       CMP    #$03    
       BEQ    LF419   
       LDA    #$01    
       STA    $A5     
LF419: LDA    #$30    
       STA    $BA     
       RTS            

LF41E: LDA    #$02    
       BNE    LF407   
LF422: LDX    $A5     
       CPX    #$03    
       BNE    LF436   
       LDA    $8B     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF43A,X 
       ORA    $AC     
       STA    $AC     
LF436: LDA    #$01    
       BNE    LF407   
LF43A: .byte $80 ;.NOP
       RTI            

LF43C: .byte $20,$10,$08,$04,$00,$00,$00
LF443: .byte $00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$01,$00
LF44F: .byte $10,$00,$00,$00,$20,$20,$00,$00,$10,$00,$00,$00
LF45B: LDY    $D7     
       LDA    #$02    
       BIT    $F0     
       BEQ    LF480   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       BMI    LF474   
       CPY    #$96    
       BCS    LF471   
       INY            
LF471: STY    $D7     
       RTS            

LF474: AND    #$40    
       BNE    LF47F   
       CPY    #$04    
       BCC    LF47D   
       DEY            
LF47D: STY    $D7     
LF47F: RTS            

LF480: DEC    $DC     
       BEQ    LF485   
       RTS            

LF485: LDY    $F0     
       LDA    LF499,Y 
       STA    $DC     
       INC    $D7     
       LDA    #$96    
       CMP    $D7     
       BCS    LF498   
       LDA    #$04    
       STA    $D7     
LF498: RTS            

LF499: .byte $04,$02,$04,$02,$03,$01,$03,$01
LF4A1: DEC    $8F     
       BEQ    LF4A6   
       RTS            

LF4A6: LDA    #$04    
       STA    $8F     
       DEC    $8E     
       LDA    #$02    
       CMP    $8E     
       BCC    LF4B6   
       LDA    #$92    
       STA    $8E     
LF4B6: RTS            

LF4B7: .byte $03,$02,$02,$01,$01
LF4BC: .byte $04,$03,$02,$02,$01
LF4C1: LDX    $A5     
       CPX    #$03    
       BNE    LF4C8   
       RTS            

LF4C8: LDA    $CF     
       BEQ    LF4D8   
       LDA    #$02    
       BIT    $F0     
       BNE    LF4D3   
       RTS            

LF4D3: LDA    $EC     
       BEQ    LF51A   
       RTS            

LF4D8: LDA    #$02    
       BIT    $F0     
       BEQ    LF4E2   
       BIT    $EC     
       BEQ    LF51A   
LF4E2: LDX    $9D     
       LDA    $F0     
       ROR            
       BCC    LF4EE   
       LDA    LF4BC,X 
       BNE    LF4F1   
LF4EE: LDA    LF4B7,X 
LF4F1: STA    $A7     
       LDA    SWCHB   
       ROL            
       ROL            
       LDA    $BF     
       SBC    $A7     
       STA    $BF     
       LDA    $BF     
       CMP    #$A0    
       BCC    LF530   
LF504: LDA    $F0     
       AND    #$02    
       BEQ    LF51F   
       STA    $CF     
       LDA    #$00    
       STA    $EC     
       LDA    #$9F    
       STA    $BF     
       LDA    #$1F    
       STA    $BA     
       BNE    LF534   
LF51A: BIT    INPT5   
       BPL    LF51F   
       RTS            

LF51F: LDA    #$9F    
       STA    $BF     
       STA    $EC     
       LDA    #$00    
       STA    $CF     
       JSR    LF54D   
       LDX    #$FF    
       STX    $A4     
LF530: LDA    #$40    
       STA    $BA     
LF534: LDY    #$60    
       LDA    SWCHB   
       BPL    LF53D   
       LDY    #$0C    
LF53D: STY    $BC     
       RTS            

LF540: LDX    $A5     
       BEQ    LF54D   
       DEX            
       BEQ    LF54C   
       DEX            
       BEQ    LF552   
       BNE    LF577   
LF54C: RTS            

LF54D: LDA    $D7     
       STA    $A9     
       RTS            

LF552: LDX    $A4     
       BMI    LF55B   
       LDA    $D8,X   
       STA    $A9     
       RTS            

LF55B: LDX    #$03    
LF55D: LDA    $B0,X   
       BPL    LF565   
       DEX            
       BPL    LF55D   
       RTS            

LF565: LDA    $D8,X   
       CMP    $A9     
       BEQ    LF573   
       BCC    LF570   
       INC    $A9     
       RTS            

LF570: DEC    $A9     
       RTS            

LF573: TXA            
       STA    $A4     
       RTS            

LF577: LDA    $BA     
       AND    #$F0    
       CMP    #$30    
       BNE    LF58B   
       LDA    #$96    
       CMP    $A9     
       BCC    LF587   
       INC    $A9     
LF587: RTS            

LF588: .byte $EA,$EA,$EA
LF58B: DEC    $A9     
       LDA    #$03    
       CMP    $A9     
       BCC    LF59C   
       LDA    $CC     
       LSR            
       BCS    LF5A1   
       LDA    #$96    
       STA    $A9     
LF59C: LDA    #$40    
       STA    $BA     
       RTS            

LF5A1: JSR    LF51F   
       LDA    #$02    
       STA    $A5     
       STA    $A6     
       LDY    #$0F    
       STY    $DF     
       RTS            

LF5AF: LDX    #$09    
       LDA    #$00    
LF5B3: STA    $80,X   
       STA    $90,X   
       DEX            
       BPL    LF5B3   
       DEC    $CD     
       BNE    LF5DF   
       LDA    #$10    
       STA    $CD     
       LDX    $CC     
       DEX            
       BPL    LF5C9   
       LDX    #$05    
LF5C9: STX    $CC     
       TXA            
       EOR    #$FF    
       AND    #$03    
       STA    $A7     
       LDA    LFD9C,X 
       SEC            
       SBC    $A7     
       STA    $CB     
       LDA    LFDA2,X 
       STA    $AB     
LF5DF: LDX    #$03    
LF5E1: LDY    $CB     
       LDA    $B0,X   
       BPL    LF5E9   
       LDY    #$00    
LF5E9: STY    $80,X   
       DEX            
       BPL    LF5E1   
       LDA    #$F0    
       ORA    $BE     
       LDY    #$00    
       JSR    LF655   
       STA    $80,X   
       LDA    #$0F    
       AND    $BE     
       CMP    #$0B    
       BCS    LF609   
       LDA    $80,X   
       SEC            
       SBC    #$0F    
       DEX            
       STA    $80,X   
LF609: LDA    #$03    
       CMP    $A5     
       BEQ    LF613   
       CMP    $A6     
       BNE    LF62F   
LF613: LDX    $CC     
       LDY    LFDA8,X 
       LDX    #$09    
       LDA    $AC     
LF61C: ASL            
       BCS    LF621   
       STY    $90,X   
LF621: DEX            
       CPX    #$03    
       BNE    LF61C   
       LDY    #$00    
LF628: STY    $90,X   
       DEX            
       BPL    LF628   
       BMI    LF650   
LF62F: LDA    $BF     
       CMP    #$9F    
       BCS    LF650   
       LDA    #$F0    
       ORA    $BF     
       LDY    #$01    
       JSR    LF655   
       STA    $90,X   
       LDA    #$0F    
       AND    $BF     
       CMP    #$0B    
       BCS    LF650   
       LDA    $90,X   
       SEC            
       SBC    #$0F    
       DEX            
       STA    $90,X   
LF650: LDA    #$09    
       STA    $D6     
       RTS            

LF655: EOR    #$FF    
       CLC            
       ADC.wy $00BB,Y 
       PHA            
       LDA    #$F0    
       AND.wy $00BE,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       PLA            
       RTS            

LF668: LDA    #$FF    
       STA    $C1     
       STA    $C3     
       STA    $D3     
       STA    $D5     
       LDY    $9E     
       JSR    LF6BF   
       STA    $D2     
       JSR    LF6B8   
       STA    $C2     
       LDY    $9F     
       JSR    LF6BF   
       STA    $D4     
       JSR    LF6B8   
       STA    $C0     
       LDA    #$FC    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    #$00    
       STA    REFP0   
       LDY    #$05    
LF69E: DEY            
       BPL    LF69E   
       STA    RESP0   
       STA    RESP1   
       LDY    #$D0    
       STY    HMP0    
       LDY    #$E0    
       STY    HMP1    
       STY    WSYNC   
       STA    HMOVE   
       LDY    #$01    
       STY    VDELP0  
       STY    VDELP1  
       RTS            

LF6B8: TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       BPL    LF6C2   
LF6BF: TYA            
       AND    #$0F    
LF6C2: TAX            
       LDA    LF6C7,X 
       RTS            

LF6C7: .byte $10,$18,$20,$28,$30,$38,$40,$48,$50,$58,$00
LF6D2: LDX    #$5F    
LF6D4: LDA    LFD00,X 
       STA    $80,X   
       DEX            
       BPL    LF6D4   
       JSR    LF534   
       LDA    #$4C    
       STA    $ED     
       LDA    #$09    
       STA    $EB     
       RTS            

LF6E8: LDA    $A5     
       CMP    #$03    
       BEQ    LF700   
       LDA    $BF     
       EOR    #$FF    
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
       LDA    #$06    
       STA    AUDV0   
       LDA    #$01    
       STA    AUDC0   
       RTS            

LF700: LDA    $A9     
       EOR    #$FF    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDF0   
       LDA    #$07    
       STA    AUDC0   
       RTS            

LF70F: JMP    LF800   
LF712: JMP    LF7C1   
LF715: TYA            
       AND    #$F0    
       CMP    #$10    
       BEQ    LF72D   
       CMP    #$20    
       BEQ    LF76D   
       CMP    #$30    
       BEQ    LF70F   
       CMP    #$40    
       BEQ    LF6E8   
       CMP    #$50    
       BEQ    LF712   
       RTS            

LF72D: TYA            
       CMP    #$1F    
       BEQ    LF73C   
       DEC    $B9     
       BEQ    LF737   
       RTS            

LF737: INY            
       CPY    #$16    
       BCC    LF73E   
LF73C: LDY    #$10    
LF73E: STY    $BA     
       TYA            
       AND    #$0F    
       TAX            
       LDA    LF767,X 
       STA    $B9     
       TYA            
       ROR            
       BCS    LF75A   
       LDA    #$02    
       STA    AUDC0   
       LDA    #$1F    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDV0   
       RTS            

LF75A: LDA    #$06    
       STA    AUDC0   
       LDA    #$09    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDV0   
       RTS            

LF767: .byte $F0,$90,$F0,$10,$20,$60
LF76D: TYA            
       CMP    #$2F    
       BEQ    LF7B8   
       DEC    $B9     
       BEQ    LF777   
       RTS            

LF777: ROR            
       BCS    LF79D   
       INY            
       STY    $BA     
       SED            
       CLC            
       LDA    $EE     
       ADC    $9E     
       STA    $9E     
       LDA    #$00    
       ADC    $9F     
       STA    $9F     
       CLD            
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$07    
       STA    AUDF0   
       LDA    #$08    
       STA    AUDV0   
       LDA    #$04    
       STA    $B9     
       RTS            

LF79D: LDA    #$00    
       STA    AUDV0   
       DEC    $EF     
       BNE    LF7B8   
       JSR    LF90B   
       CMP    #$5F    
       BNE    LF7AD   
       RTS            

LF7AD: LDY    #$1F    
       STY    $BA     
       LDA    #$00    
       STA    $CF     
       STA    $EC     
       RTS            

LF7B8: LDY    #$20    
       STY    $BA     
       LDA    #$01    
       STA    $B9     
       RTS            

LF7C1: TYA            
       CMP    #$5F    
       BEQ    LF7E3   
       DEC    $B9     
       BEQ    LF7CB   
       RTS            

LF7CB: ROR            
       BCC    LF7D7   
       DEY            
       DEC    $EF     
       BEQ    LF7AD   
       LDA    #$10    
       BNE    LF7DA   
LF7D7: INY            
LF7D8: LDA    #$08    
LF7DA: STA    AUDF0   
       STY    $BA     
       LDA    #$04    
       STA    $B9     
       RTS            

LF7E3: LDY    #$50    
       LDA    #$04    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$06    
       STA    $EF     
       BNE    LF7D8   
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
LF800: TYA            
       ROR            
       BCS    LF828   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$10    
       STA    AUDF0   
       LDA    #$1F    
       STA    AUDV0   
       STA    $B9     
       INY            
       STY    $BA     
       LDA    #$D4    
       STA    $BC     
       LDA    #$4C    
       STA    $DF     
       LDX    $AF     
       CPX    #$02    
       BNE    LF827   
       LDA    #$48    
       STA    $BB     
LF827: RTS            

LF828: DEC    $B9     
       BEQ    LF83C   
       LDA    $B9     
       LSR            
       STA    AUDV0   
       DEC    $DF     
       LDA    #$02    
       BIT    $AF     
       BEQ    LF83B   
       DEC    $ED     
LF83B: RTS            

LF83C: LDX    $A5     
       CPX    #$03    
       BEQ    LF848   
       JSR    LF51F   
       JSR    LF504   
LF848: STA    CXCLR   
       LDA    #$28    
       STA    $BB     
       LDA    #$4C    
       STA    $ED     
       LDX    $A6     
       CPX    #$02    
       BEQ    LF86F   
       CPX    #$03    
       BEQ    LF85E   
       BNE    LF884   
LF85E: LDY    #$62    
       LDA    $AC     
       CMP    #$FC    
       BNE    LF880   
       JSR    LF5A1   
       LDA    #$00    
       STA    $AC     
       BEQ    LF884   
LF86F: LDY    #$0F    
       DEC    $9D     
       BPL    LF880   
       LDA    #$04    
       STA    $9D     
       INX            
       LDY    #$96    
       STY    $A9     
       LDY    #$62    
LF880: STY    $DF     
       STX    $A5     
LF884: LDY    $AF     
       BEQ    LF8A8   
       DEY            
       BEQ    LF897   
       LDA    #$FF    
       DEC    $AE     
       BPL    LF8B6   
       LDX    #$00    
       STX    $ED     
       BEQ    LF8B1   
LF897: LDA    #$25    
       STA    $EE     
       LDA    #$04    
       STA    $EF     
       STA    $CF     
       STA    $EC     
       LDA    #$2F    
       STA    $BA     
       RTS            

LF8A8: LDX    #$03    
       LDA    #$80    
LF8AC: AND    $B0,X   
       DEX            
       BPL    LF8AC   
LF8B1: STA    $CE     
       ROL            
       BCS    LF8BB   
LF8B6: LDA    #$1F    
       STA    $BA     
       RTS            

LF8BB: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $BA     
       STA    $B8     
       RTS            

LF8C6: TYA            
       AND    #$F0    
       CMP    #$10    
       BEQ    LF8D2   
       CMP    #$20    
       BEQ    LF8E3   
       RTS            

LF8D2: LDY    #$00    
       STY    $B8     
       LDA    #$08    
       STA    AUDC1   
       LDA    #$17    
       STA    AUDF1   
       LDA    #$06    
       STA    AUDV1   
       RTS            

LF8E3: TYA            
       ROR            
       BCS    LF8FB   
       LDA    #$00    
       STA    AUDV1   
       STA    AUDF1   
       STA    $B7     
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$0A    
       STA    AUDV1   
       INY            
       STY    $B8     
       RTS            

LF8FB: LDA    $8A     
       BNE    LF904   
       LDY    #$10    
       STY    $B8     
       RTS            

LF904: INC    $B7     
       LDA    $B7     
       STA    AUDF1   
       RTS            

LF90B: LDA    $EB     
       CMP    $9F     
       BCC    LF91B   
       CMP    #$99    
       BEQ    LF916   
       RTS            

LF916: LDA    $9F     
       BEQ    LF953   
       RTS            

LF91B: CLC            
       ADC    #$10    
       STA    $EB     
       CMP    #$59    
       BEQ    LF94D   
       LDX    #$00    
LF926: LDA    $B0,X   
       BMI    LF935   
       CMP    #$03    
       BCC    LF935   
       INX            
       CPX    #$04    
       BNE    LF926   
       BEQ    LF93F   
LF935: INC    $B0,X   
       LDA    #$02    
       CMP    $B0,X   
       BNE    LF93F   
       INC    $B0,X   
LF93F: INC    $AE     
       LDX    #$00    
       STX    $EE     
       INX            
       STX    $EF     
       LDA    #$5F    
       STA    $BA     
       RTS            

LF94D: LDX    #$02    
       LDA    #$FF    
       BNE    LF95B   
LF953: LDX    #$04    
       LDA    #$09    
       STA    $EB     
       LDA    #$00    
LF95B: STA    $EA     
       TXA            
       CLC            
       ADC    $AE     
       STA    $AE     
       LDX    #$03    
       TXA            
LF966: STA    $B0,X   
       DEX            
       BPL    LF966   
       BMI    LF93F   
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
LFD00: BRK            
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
       BVS    LFD13   
       BRK            
       BRK            
       BRK            
LFD13: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $FA ;.NOP
       BRK            
       BRK            
       .byte $04 ;.NOP
       BRK            
       BRK            
       AND    ($33,X) 
       .byte $37 ;.RLA
       ASL    $0200   
       .byte $02 ;.JAM
       BRK            
       BRK            
       BRK            
       RTI            

LFD2B: .byte $C4,$00,$02,$03,$00,$03,$03,$03,$03,$00,$00,$00,$00,$10,$00,$1F
       .byte $28,$0C,$44,$60,$FF,$00,$00,$00,$00,$00,$77,$33,$11,$EE,$CC,$88
       .byte $94,$05,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2F,$03,$03,$03
       .byte $03,$20,$08,$00,$0F
LFD60: .byte $30,$00,$00,$FC,$0F,$B8,$04,$00,$00,$00,$00
LFD6B: .byte $00,$00,$01,$03
LFD6F: .byte $00,$0F,$0E,$0C,$0A,$08,$06,$04
LFD77: .byte $62,$62,$64,$66,$68,$68,$68,$68,$9C,$24,$9C,$24,$8C
LFD84: .byte $B0,$B1,$B2,$B3,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB
LFD90: .byte $A4,$A8,$0C,$0F
LFD94: .byte $F8,$28,$58,$88
LFD98: .byte $01,$02,$03,$04
LFD9C: .byte $B4,$A4,$94,$94,$A4,$B4
LFDA2: .byte $EC,$E4,$DC,$D4,$CC,$C4
LFDA8: .byte $A0,$90,$80,$70,$60,$80
LFDAE: .byte $FE,$FE,$FE,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$04,$0E,$15,$15,$04,$04,$04,$04,$04,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C
       .byte $7E,$FF,$7E,$3C,$10,$10,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02
       .byte $06,$3F,$7E,$7C,$50,$94,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$55,$FF
       .byte $55,$FF,$55,$FF,$55,$FF,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$FF,$FF,$7E,$2C,$2C,$08,$00,$18,$3C,$7E,$E7,$BD,$24
       .byte $3C,$18,$18,$18,$18,$18,$00,$00,$1E,$3F,$38,$77,$6F,$FF,$EE,$FE
       .byte $D4,$80,$80,$00,$00,$00,$00,$00,$1E,$3F,$38,$74,$6F,$FF,$EE,$BE
       .byte $94,$80,$00,$00,$00,$00,$00,$00,$1E,$3F,$38,$B0,$EC,$FF,$EA,$BE
       .byte $14,$00,$00,$00,$00,$00,$18,$00,$00,$00,$00,$00,$00,$00,$18,$3C
       .byte $04,$00,$00,$00,$00,$00,$18,$3C,$6E,$62,$04,$00,$00,$00,$18,$3C
       .byte $7E,$7E,$3C,$78,$30,$00,$00,$00,$18,$3C,$78,$00,$60,$00,$00,$00
       .byte $30,$78,$60,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18
       .byte $38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06
       .byte $46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60
       .byte $60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66
       .byte $66,$3C,$00,$00,$00,$00,$00,$00,$00,$10,$08,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$20,$20,$14,$28,$04,$04,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$50,$20,$22,$14,$28,$44,$04,$0A,$00,$00
       .byte $00,$00,$00,$00,$00,$50,$50,$22,$22,$14,$28,$44,$44,$0A,$0A,$00
       .byte $00,$00,$00,$00,$A8,$50,$55,$72,$22,$14,$28
LFFA9: .byte $44,$44,$AE,$0A,$0A,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$F0,$50,$00
