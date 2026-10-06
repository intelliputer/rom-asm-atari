; Disassembly of roms/Code Breaker (2).bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Code Breaker (2).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUPF  =  $08
COLUBK  =  $09
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
INPT0   =  $38
INPT1   =  $39
INPT2   =  $3A
INPT3   =  $3B
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $7E,$7E,$7E,$7E,$7E,$7E,$5A,$5A,$5A,$7E,$42,$42,$42,$42,$42,$7E
       .byte $18,$7E,$42,$7E,$7E,$42,$66,$42,$7E,$42,$42,$7E,$5A,$5A,$7E,$42
       .byte $7E,$18,$7E,$7E,$5A,$7E,$18,$7E,$42,$42,$42,$42,$7E,$7E,$5A,$7E
       .byte $5A,$7E,$7E,$42,$7E,$5A,$7E,$00,$00,$00,$00,$00

START:
       SEI            
       CLD            
       LDX    #$FF    
       STX    $8B     
       TXS            
       STX    SWACNT  
       LDA    #$01    
       STA    $9A     
       STA    $8E     
       STA    $9D     
       LDA    #$F0    
       STA    $AD     
       STA    $AF     
       STA    $B1     
       STA    $B3     
       INX            
       TXA            
LF05A: STA    VSYNC,X 
       INX            
       CPX    #$89    
       BNE    LF05A   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       JSR    LF751   
       STA    WSYNC   
       LDX    #$0A    
LF06E: DEX            
       BNE    LF06E   
       STA    RESP0   
       NOP            
       NOP            
       NOP            
       STA    RESP1   
       JSR    LF2F5   
LF07B: LDA    #$2E    
       STA    TIM64T  
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       INC    $89     
       BNE    LF090   
       INC    $93     
LF090: LDA    $9D     
       ROL            
       EOR    $9D     
       ROL            
       ROL            
       LDA    $9E     
       ROL            
       STA    $9E     
       LDA    $9D     
       ROL            
       STA    $9D     
       LDA    SWCHB   
       LDX    #$07    
       LDY    #$07    
       AND    #$08    
       BEQ    LF0B0   
       LDX    #$F7    
       LDY    #$03    
LF0B0: LDA    $8B     
       BMI    LF0B6   
       LDX    #$FF    
LF0B6: AND    $93     
       STA    $82     
       STX    $80     
       LDX    #$03    
LF0BE: LDA    LF7D8,Y 
       EOR    $82     
       AND    $80     
       STA    COLUP0,X
       DEY            
       DEX            
       BPL    LF0BE   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       JSR    LF662   
       LDA    $8C     
       BEQ    LF0E2   
       LDA    $99     
       ORA    #$80    
       STA    $99     
       DEC    $8C     
LF0E2: LDA    $8B     
       BPL    LF0F2   
       LDA    $9A     
       STA    $8E     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       BEQ    LF118   
LF0F2: LDA    $8C     
       BEQ    LF10A   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$15    
       STA    AUDF0   
       LDX    #$07    
       LDA    $8C     
       AND    #$04    
       BNE    LF108   
       LDX    #$00    
LF108: STX    AUDV0   
LF10A: LDA    $90     
       BEQ    LF118   
       LDX    #$04    
       DEC    $90     
       BNE    LF116   
       LDX    #$00    
LF116: STX    AUDV0   
LF118: LDA    $94     
       BEQ    LF139   
       DEC    $94     
       BNE    LF126   
       JSR    LF60E   
       JMP    LF139   
LF126: AND    #$0F    
       BNE    LF139   
       JSR    LF7B1   
       LDX    $B7     
       LDA    $B6     
       EOR    $A8,X   
       STA    $A8,X   
       TAY            
       JSR    LF73E   
LF139: LDX    #$01    
       LDA    #$37    
       STA    $B0     
       STA    $B2     
       LDY    #$04    
       LDA    $8B     
       BMI    LF16D   
LF147: LDA    $8E,X   
       AND    #$0F    
       STA    $81     
       ASL            
       ASL            
       CLC            
       ADC    $81     
       ADC    #$05    
       STA.wy $00AE,Y 
       LDA    $8E,X   
       AND    #$F0    
       BNE    LF15F   
       LDA    #$A0    
LF15F: LSR            
       LSR            
       STA    $81     
       LSR            
       LSR            
       CLC            
       ADC    $81     
       ADC    #$05    
       STA.wy $00AC,Y 
LF16D: LDY    #$00    
       DEX            
       BPL    LF147   
       LDA    $89     
       AND    #$1F    
       BNE    LF181   
       LDX    $87     
       LDA    ($84),Y 
       STA    $87     
       TXA            
       STA    ($84),Y 
LF181: LDX    #$C0    
       LDA    $8C     
       ORA    $94     
       ORA    $8B     
       BNE    LF193   
       STA    $91     
       LDA    #$EE    
       STA    $80     
       LDX    #$F6    
LF193: STX    $81     
LF195: LDA    INTIM   
       BNE    LF195   
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$04    
LF1A0: LDA    ($AC),Y 
       ROL            
       ROL            
       ROL            
       ROL            
       STA    WSYNC   
       AND    #$F0    
       STA    $82     
       LDA    ($AE),Y 
       AND    #$0F    
       ORA    $82     
       STA    PF1     
       STA    $B4     
       LDA    ($B0),Y 
       ROL            
       ROL            
       ROL            
       ROL            
       AND    #$F0    
       STA    $82     
       LDA    ($B2),Y 
       AND    #$0F    
       ORA    $82     
       STA    PF1     
       STA    WSYNC   
       STA    $B5     
       LDA    $B4     
       STA    PF1     
       LDA    $B5     
       LDX    #$06    
LF1D4: DEX            
       BPL    LF1D4   
       STA    PF1     
       DEY            
       BPL    LF1A0   
       LDX    #$3C    
       LDA    #$00    
       STA    PF2     
       STA    $B5     
       STA    PF1     
       STA    WSYNC   
LF1E8: LDA    #$00    
       STA    PF1     
       STA    GRP0    
       STA    GRP1    
       LDA    $B5     
       STA    PF2     
       LDA    $B8,X   
       STA    $AC     
       LDA    $B9,X   
       STA    $AE     
       LDA    $BA,X   
       STA    $B0     
       LDA    $BB,X   
       STA    $B2     
       LDA    #$00    
       STA    PF2     
       STA    WSYNC   
       STA    $B5     
       LDA    $81     
       BPL    LF22B   
       INC    $81     
       JMP    LF248   
LF215: BIT    INPT2   
       BMI    LF21B   
       STY    $91     
LF21B: INY            
       BIT    INPT3   
       BMI    LF222   
       STY    $91     
LF222: INY            
       BIT    INPT5   
       BMI    LF246   
       STY    $91     
       BPL    LF246   
LF22B: LDY    $81     
       INY            
       BIT    $98     
       BMI    LF215   
       BIT    INPT0   
       BMI    LF238   
       STY    $91     
LF238: INY            
       BIT    INPT1   
       BMI    LF23F   
       STY    $91     
LF23F: INY            
       BIT    INPT4   
       BMI    LF246   
       STY    $91     
LF246: STY    $81     
LF248: STA    WSYNC   
       LDA    $81     
       BMI    LF257   
       LDA    $80     
       STA    SWCHA   
       SEC            
       ROL            
       STA    $80     
LF257: CPX    #$00    
       BMI    LF2B8   
       LDY    #$04    
LF25D: LDA    ($AC),Y 
       ROL            
       ROL            
       STA    WSYNC   
       ROL            
       ROL            
       AND    #$F0    
       STA    $82     
       LDA    ($AE),Y 
       AND    #$0F    
       ORA    $82     
       STA    PF1     
       STA    $B4     
       LDA    $B5     
       STA    PF2     
       LDA    ($B2),Y 
       AND    #$F0    
       STA    $82     
       INC    $40     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       LDA    $B4     
       STA    PF1     
       LDA    ($B0),Y 
       ROR            
       ROR            
       ROR            
       ROR            
       AND    #$0F    
       ORA    $82     
       STA    PF2     
       STA    $B5     
       LDA    $BC,X   
       AND    #$55    
       STA    GRP1    
       LDA    #$00    
       STA    PF1     
       LDA    $BC,X   
       AND    #$AA    
       STA    GRP0    
       LDA    #$00    
       STA    PF2     
       DEY            
       BPL    LF25D   
       TXA            
       SEC            
       SBC    #$05    
       TAX            
       JMP    LF1E8   
LF2B8: STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       LDX    $98     
       BMI    LF2C6   
       LDA    #$FF    
LF2C6: STA    GRP0    
       EOR    #$FF    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$2B    
       STA    TIM64T  
       JSR    LF2E8   
LF2E0: LDA    INTIM   
       BNE    LF2E0   
       JMP    LF07B   
LF2E8: LDA    SWCHB   
       LSR            
       BCC    LF2F1   
       JMP    LF36B   
LF2F1: LDA    #$00    
       STA    $8B     
LF2F5: JSR    LF751   
       LDA    #$00    
       LDX    #$08    
LF2FC: STA    $8C,X   
       DEX            
       BPL    LF2FC   
       STX    $9F     
       LDX    $88     
       LDA    LF7C4,X 
       STA    $80     
       ROL            
       STA    $96     
       ROL            
       STA    $95     
       ROL            
       STA    $97     
       STA    $98     
       AND    #$02    
       STA    $99     
       BEQ    LF341   
       LDA    $80     
       AND    #$0F    
       BNE    LF323   
       INC    $99     
LF323: ASL            
       ASL            
       STA    $81     
       LDA    #$03    
       STA    $80     
LF32B: LDX    $81     
       LDY    LF7BC,X 
       LDX    $80     
       STY    $A4,X   
       STY    $A8,X   
       JSR    LF73E   
       INC    $81     
       DEC    $80     
       BPL    LF32B   
       BMI    LF3A9   
LF341: LDA    $80     
       AND    #$0F    
       STA    $9F     
       BIT    $8B     
       BPL    LF35A   
       TAX            
       LDA    LF7E4,X 
       LDX    #$03    
       BIT    $95     
       BMI    LF357   
LF355: STA    $EF,X   
LF357: DEX            
       BPL    LF355   
LF35A: LDA    $97     
       BPL    LF362   
       DEC    $92     
       BNE    LF366   
LF362: BIT    $80     
       BVS    LF3A0   
LF366: JSR    LF775   
       BNE    LF3A9   
LF36B: LSR            
       LDA    #$FF    
       BCC    LF374   
       STA    $9B     
       BMI    LF3A9   
LF374: STA    $8B     
       LDA    $9B     
       BMI    LF380   
       EOR    $89     
       AND    #$1F    
       BNE    LF3A9   
LF380: LDA    $89     
       AND    #$1F    
       STA    $9B     
       INC    $88     
       SED            
       CLC            
       LDA    $9A     
       ADC    #$01    
       STA    $9A     
       CLD            
       CMP    #$21    
       BNE    LF39D   
       LDA    #$01    
       STA    $9A     
       LDA    #$00    
       STA    $88     
LF39D: JMP    LF2F5   
LF3A0: INC    $99     
       LDA    $84     
       CLC            
       ADC    #$05    
       STA    $84     
LF3A9: LDA    $91     
       BNE    LF3B8   
       STA    AUDV1   
       LDX    $93     
       INX            
       BNE    LF3BC   
       LDX    #$FF    
       STX    $8B     
LF3B8: LDX    #$00    
       STX    $93     
LF3BC: EOR    $9C     
       BNE    LF3C3   
       STA    $91     
LF3C2: RTS            

LF3C3: LDA    $91     
       STA    $9C     
       BEQ    LF3C2   
       TAX            
       LDY    $8B     
       BMI    LF3E1   
       LDA    #$05    
       STA    AUDC1   
       LDA    #$04    
       STA    AUDV1   
       LDA    #$1C    
       CLC            
       LDY    $98     
       BMI    LF3DF   
       ADC    #$02    
LF3DF: STA    AUDF1   
LF3E1: JSR    LF7B1   
       LDA    $99     
       BPL    LF43F   
       EOR    #$80    
       STA    $99     
       LDA    #$00    
       STA    $91     
       JSR    LF751   
       LDA    $99     
       BEQ    LF41B   
       LDA    #$03    
       STA    $80     
LF3FB: LDX    $80     
       LDY    $A4,X   
       STY    $A8,X   
       JSR    LF73E   
       DEC    $80     
       BPL    LF3FB   
       LDA    $97     
       STA    $98     
       BPL    LF3C2   
       LDA    $96     
       BMI    LF3C2   
       LDA    #$0C    
       STA    $91     
       LDA    #$00    
       STA    $98     
       RTS            

LF41B: LDA    $8E     
       STA    $8D     
       LDA    #$00    
       STA    $8E     
       LDA    $92     
       BMI    LF42B   
       LDA    $96     
       BMI    LF42F   
LF42B: JSR    LF775   
       RTS            

LF42F: INC    $99     
       LDA    $97     
       EOR    #$80    
       STA    $97     
       LDA    $84     
       CLC            
       ADC    #$05    
       STA    $84     
       RTS            

LF43F: CMP    #$02    
       BEQ    LF48A   
       CMP    #$03    
       BNE    LF44A   
       JMP    LF4DD   
LF44A: LDA    LF7E4,X 
       BMI    LF452   
       JMP    LF536   
LF452: EOR    #$FE    
       BNE    LF459   
       JMP    LF514   
LF459: SEC            
       LDA    $84     
       SBC    $86     
       TAX            
       LDY    #$03    
       LDA    $95     
       BPL    LF466   
       DEY            
LF466: LDA    VSYNC,X 
       CMP    #$37    
       BNE    LF46F   
       JMP    LF503   
LF46F: INX            
       DEY            
       BPL    LF466   
       INC    $83     
       LDA    $83     
       CMP    #$0A    
       CLC            
       BMI    LF47E   
       ADC    #$06    
LF47E: STA    $8E     
       SEC            
       LDA    $84     
       SBC    #$05    
       STA    $84     
       JMP    LF524   
LF48A: CPX    #$0A    
       BMI    LF4CB   
       BEQ    LF496   
       CPX    #$0B    
       BNE    LF4BE   
       BEQ    LF503   
LF496: LDX    $86     
       LDY    $A8,X   
       JSR    LF73E   
LF49D: INC    $84     
       INC    $86     
       LDX    $86     
       CPX    #$04    
       BNE    LF4B2   
       LDA    $84     
       SEC            
       SBC    #$04    
       STA    $84     
       LDX    #$00    
       STX    $86     
LF4B2: LDA    $99     
       CMP    #$03    
       BEQ    LF4CA   
       LDA    $A8,X   
       BEQ    LF49D   
       BNE    LF4C6   
LF4BE: LDA    $9F     
       BMI    LF503   
       LDX    $86     
       STA    $A8,X   
LF4C6: LDA    #$FF    
       STA    $9F     
LF4CA: RTS            

LF4CB: STX    $80     
       LDX    $86     
       LDA    $A8,X   
       SEC            
       SBC    $80     
       BMI    LF503   
       STA    $9F     
       TAY            
       JSR    LF73E   
       RTS            

LF4DD: CPX    #$0A    
       BMI    LF4E9   
       BEQ    LF49D   
       CPX    #$0B    
       BNE    LF4F5   
       LDX    #$00    
LF4E9: LDY    $86     
       STX    $A8,Y   
       LDX    $86     
       LDY    $A8,X   
       JSR    LF73E   
       RTS            

LF4F5: LDX    #$03    
       LDA    #$00    
LF4F9: ORA    $A8,X   
       DEX            
       BPL    LF4F9   
       CMP    #$00    
       BEQ    LF503   
       RTS            

LF503: LDA    #$00    
       STA    $91     
       LDA    #$40    
       STA    $90     
       LDA    #$09    
       STA    AUDC0   
       LDA    #$11    
       STA    AUDF0   
       RTS            

LF514: INC    $86     
       INC    $84     
       LDX    $86     
       LDA    $95     
       BPL    LF51F   
       INX            
LF51F: CPX    #$04    
       BEQ    LF524   
       RTS            

LF524: SEC            
       LDA    $84     
       SBC    $86     
       CMP    #$B8    
       BPL    LF52F   
       LDA    #$B8    
LF52F: STA    $84     
       LDA    #$00    
       STA    $86     
       RTS            

LF536: LDY    #$00    
       CPX    #$0B    
       BEQ    LF542   
       CPX    $9F     
       BEQ    LF542   
       BPL    LF503   
LF542: STA    ($84),Y 
       JMP    LF514   
LF547: CMP    #$01    
       BNE    LF58B   
       LDA    #$00    
       STA    $99     
       STA    $8E     
       LDX    #$03    
LF553: LDA    $F4,X   
       STA    $A8,X   
       DEX            
       BPL    LF553   
       LDA    $98     
       EOR    #$80    
       STA    $98     
       JSR    LF751   
LF563: RTS            

LF564: LDY    #$00    
       LDX    #$03    
LF568: LDA    $A8,X   
       CMP.wy $00A8,Y 
       BMI    LF571   
       TXA            
       TAY            
LF571: DEX            
       BPL    LF568   
       STY    $82     
       LDA.wy $00A8,Y 
       TAY            
       LDA    $9D     
       JSR    LF7A4   
       SEC            
       SBC    #$01    
       LDX    $82     
       EOR    $A8,X   
       STA    $80     
       JMP    LF601   
LF58B: CMP    #$02    
       BNE    LF592   
       JMP    LF648   
LF592: DEC    $99     
       LDX    #$03    
LF596: LDA    $A8,X   
       STA    $A4,X   
       DEX            
       BPL    LF596   
       LDA    $96     
       BMI    LF563   
       LDA    $97     
       BPL    LF563   
LF5A5: LDX    #$03    
       LDA    #$00    
LF5A9: EOR    $A8,X   
       DEX            
       BPL    LF5A9   
       CMP    #$00    
       BEQ    LF564   
       STA    $80     
       LDY    #$40    
       CLC            
LF5B7: TYA            
       ROR            
       TAY            
       AND    $80     
       BEQ    LF5B7   
       LDX    #$03    
       STA    $81     
LF5C2: LDA    $A8,X   
       AND    $81     
       BNE    LF5CB   
       DEX            
       BPL    LF5C2   
LF5CB: STX    $82     
       LDA    SWCHB   
       BMI    LF5E6   
       LDX    #$03    
       LDY    #$00    
       TYA            
LF5D7: CMP    $A8,X   
       BNE    LF5DC   
       INY            
LF5DC: DEX            
       BPL    LF5D7   
       CPY    #$02    
       BPL    LF5E6   
       JMP    LF564   
LF5E6: LDA    $95     
       BPL    LF601   
       LDX    #$03    
       LDY    #$00    
LF5EE: LDA    $A8,X   
       AND    #$FE    
       BEQ    LF5F5   
       INY            
LF5F5: DEX            
       BPL    LF5EE   
       CPY    #$01    
       BNE    LF601   
       TYA            
       EOR    $80     
       STA    $80     
LF601: LDA    #$7F    
       STA    $94     
       LDA    $80     
       STA    $B6     
       LDA    $82     
       STA    $B7     
       RTS            

LF60E: LDX    #$03    
       LDA    #$00    
LF612: ORA    $A8,X   
       DEX            
       BPL    LF612   
       CMP    #$00    
       BEQ    LF62A   
       RTS            

LF61C: LDA    $96     
       BMI    LF623   
       JMP    LF5A5   
LF623: LDA    $98     
       EOR    #$80    
       STA    $98     
       RTS            

LF62A: LDX    #$01    
LF62C: LDA    #$40    
       STA    $8C     
       LDA    $95     
       ROL            
       ROL            
       AND    #$01    
       STA    $80     
       TXA            
       EOR    $80     
       TAX            
       LDA    $97     
       EOR    #$80    
       STA    $97     
       SED            
       LDA    #$01    
       JMP    LF737   
LF648: LDX    #$03    
       LDA    #$00    
LF64C: CLC            
       ADC    $A8,X   
       DEX            
       BPL    LF64C   
       TAX            
       BNE    LF61C   
       LDA    $96     
       BPL    LF62C   
       LDA    $98     
       ROL            
       ROL            
       AND    #$01    
       TAX            
       BPL    LF62C   
LF662: LDA    $91     
       CMP    #$0C    
       BEQ    LF669   
       RTS            

LF669: LDA    #$00    
       STA    $91     
       JSR    LF7B1   
       LDA    $99     
       CMP    #$00    
       BEQ    LF679   
       JMP    LF547   
LF679: LDY    $84     
       STY    $82     
       LDX    $83     
       CPX    #$0C    
       BNE    LF687   
       LDY    #$B3    
       STY    $82     
LF687: LDX    #$03    
       LDA    #$00    
       STA    $80     
       STA    $81     
LF68F: LDA.wy $0008,Y 
       STA    $A4,X   
       LDA    $A8,X   
       STA    $A0,X   
       CMP.wy $0008,Y 
       BNE    LF69F   
       INC    $80     
LF69F: DEY            
       DEX            
       BPL    LF68F   
       LDX    #$03    
LF6A5: LDY    #$03    
LF6A7: LDA    $A4,X   
       EOR    $A0,X   
       BEQ    LF6C5   
       LDA.wy $00A4,Y 
       EOR.wy $00A0,Y 
       BEQ    LF6C5   
       LDA.wy $00A0,Y 
       EOR    $A4,X   
       BNE    LF6C5   
       INC    $81     
       LDA    #$00    
       STA.wy $00A0,Y 
       BEQ    LF6C8   
LF6C5: DEY            
       BPL    LF6A7   
LF6C8: DEX            
       BPL    LF6A5   
       LDX    $80     
       LDA    LF7E0,X 
       ASL            
       LDX    $81     
       ORA    LF7E0,X 
       LDY    $95     
       BPL    LF6DC   
       AND    #$FD    
LF6DC: LDX    $82     
       STA    COLUBK,X
       LDA    $80     
       CMP    #$04    
       BEQ    LF700   
       LDX    $83     
       LDA    SWCHB   
       BPL    LF6F1   
       CPX    #$08    
       BEQ    LF700   
LF6F1: CPX    #$0C    
       BEQ    LF700   
       LDA    $92     
       BPL    LF6FF   
       LDA    $98     
       EOR    #$80    
       STA    $98     
LF6FF: RTS            

LF700: LDA    #$40    
       STA    $8C     
       LDX    #$03    
LF706: LDA    $A8,X   
       STA    $F4,X   
       DEX            
       BPL    LF706   
       LDA    $98     
       ROL            
       ROL            
       AND    #$01    
       TAX            
       CLC            
       SED            
       LDA    $92     
       BPL    LF725   
       LDA    $80     
       AND    #$04    
       TAY            
       BEQ    LF732   
       LDY    #$01    
       BNE    LF732   
LF725: LDY    $8E     
       LDA    $96     
       BMI    LF732   
       LDA    $8F     
       CLC            
       ADC    #$01    
       STA    $8F     
LF732: LDA    $8D     
       STA    $8E     
       TYA            
LF737: CLC            
       ADC    $8E,X   
       STA    $8E,X   
       CLD            
       RTS            

LF73E: LDA    #$05    
       DEY            
       BPL    LF745   
       LDA    #$37    
LF745: STA    $B8,X   
       TXA            
       CLC            
       ADC    #$05    
       TAX            
       CPX    #$41    
       BMI    LF73E   
       RTS            

LF751: LDA    #$00    
       STA    $83     
       STA    $86     
       STA    $87     
       LDA    #$EF    
       STA    $84     
       LDX    #$3C    
       LDY    #$00    
LF761: LDA    #$37    
       STA    $B8,X   
       STA    $B9,X   
       STA    $BA,X   
       STA    $BB,X   
       STY    $BC,X   
       TXA            
       SEC            
       SBC    #$05    
       TAX            
       BPL    LF761   
       RTS            

LF775: LDX    #$01    
LF777: LDA    $9D,X   
       STA    $A8,X   
       ROR            
       ROR            
       ROR            
       ROR            
       STA    $AA,X   
       DEX            
       BPL    LF777   
       LDX    #$03    
LF786: LDA    $A8,X   
       AND    #$0F    
LF78A: SEC            
       SBC    $9F     
       BPL    LF78A   
       SEC            
       ADC    $9F     
       TAY            
       LDA    LF7E4,Y 
       STA    $A8,X   
       DEX            
       BPL    LF786   
       LDA    $95     
       BPL    LF7A3   
       LDA    #$37    
       STA    $AB     
LF7A3: RTS            

LF7A4: STY    $80     
       AND    #$0F    
LF7A8: SEC            
       SBC    $80     
       BPL    LF7A8   
       SEC            
       ADC    $80     
       RTS            

LF7B1: LDA    $87     
       BEQ    LF7BB   
       LDY    #$00    
       STA    ($84),Y 
       STY    $87     
LF7BB: RTS            

LF7BC: .byte $09,$09,$09,$09,$00,$05,$04,$03
LF7C4: .byte $26,$76,$66,$29,$79,$69,$06,$56,$46,$09,$59,$49,$81,$C1,$A1,$E1
       .byte $80,$C0,$A0,$E0
LF7D8: .byte $F0,$0C,$48,$D4,$00,$0C,$04,$06
LF7E0: .byte $00,$01,$05,$15
LF7E4: .byte $55,$0A,$0F,$14,$19,$1E,$23,$28,$2D,$32,$FE,$37,$FF,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$3C,$F0,$3C,$F0,$3C,$F0,$7E,$7E,$7E,$7E
       .byte $7E,$7E,$5A,$5A,$5A,$7E,$42,$42,$42,$42,$42,$7E,$18,$7E,$42,$7E
       .byte $7E,$42,$66,$42,$7E,$42,$42,$7E,$5A,$5A,$7E,$42,$7E,$18,$7E,$7E
       .byte $5A,$7E,$18,$7E,$42,$42,$42,$42,$7E,$7E,$5A,$7E,$5A,$7E,$7E,$42
       .byte $7E,$5A,$7E,$00,$00,$00,$00,$00,$78,$D8,$A2,$FF,$86,$8B,$9A,$8E
       .byte $81,$02,$A9,$01,$85,$9A,$85,$8E,$85,$9D,$A9,$F0,$85,$AD,$85,$AF
       .byte $85,$B1,$85,$B3,$E8,$8A,$95,$00,$E8,$E0,$89,$D0,$F9,$A9,$05,$85
       .byte $04,$85,$05,$20,$51,$F7,$85,$02,$A2,$0A,$CA,$D0,$FD,$85,$10,$EA
       .byte $EA,$EA,$85,$11,$20,$F5,$F2,$A9,$2E,$8D,$96,$02,$A9,$02,$85,$02
       .byte $85,$01,$85,$00,$85,$02,$E6,$89,$D0,$02,$E6,$93,$A5,$9D,$2A,$45
       .byte $9D,$2A,$2A,$A5,$9E,$2A,$85,$9E,$A5,$9D,$2A,$85,$9D,$AD,$82,$02
       .byte $A2,$07,$A0,$07,$29,$08,$F0,$04,$A2,$F7,$A0,$03,$A5,$8B,$30,$02
       .byte $A2,$FF,$25,$93,$85,$82,$86,$80,$A2,$03,$B9,$D8,$F7,$45,$82,$25
       .byte $80,$95,$06,$88,$CA,$10,$F3,$85,$02,$85,$02,$A9,$00,$85,$00,$20
       .byte $62,$F6,$A5,$8C,$F0,$08,$A5,$99,$09,$80,$85,$99,$C6,$8C,$A5,$8B
       .byte $10,$0C,$A5,$9A,$85,$8E,$A9,$00,$85,$19,$85,$1A,$F0,$26,$A5,$8C
       .byte $F0,$14,$A9,$04,$85,$15,$A9,$15,$85,$17,$A2,$07,$A5,$8C,$29,$04
       .byte $D0,$02,$A2,$00,$86,$19,$A5,$90,$F0,$0A,$A2,$04,$C6,$90,$D0,$02
       .byte $A2,$00,$86,$19,$A5,$94,$F0,$1D,$C6,$94,$D0,$06,$20,$0E,$F6,$4C
       .byte $39,$F1,$29,$0F,$D0,$0F,$20,$B1,$F7,$A6,$B7,$A5,$B6,$55,$A8,$95
       .byte $A8,$A8,$20,$3E,$F7,$A2,$01,$A9,$37,$85,$B0,$85,$B2,$A0,$04,$A5
       .byte $8B,$30,$26,$B5,$8E,$29,$0F,$85,$81,$0A,$0A,$18,$65,$81,$69,$05
       .byte $99,$AE,$00,$B5,$8E,$29,$F0,$D0,$02,$A9,$A0,$4A,$4A,$85,$81,$4A
       .byte $4A,$18,$65,$81,$69,$05,$99,$AC,$00,$A0,$00,$CA,$10,$D5,$A5,$89
       .byte $29,$1F,$D0,$09,$A6,$87,$B1,$84,$85,$87,$8A,$91,$84,$A2,$C0,$A5
       .byte $8C,$05,$94,$05,$8B,$D0,$08,$85,$91,$A9,$EE,$85,$80,$A2,$F6,$86
       .byte $81,$AD,$84,$02,$D0,$FB,$85,$02,$85,$01,$A0,$04,$B1,$AC,$2A,$2A
       .byte $2A,$2A,$85,$02,$29,$F0,$85,$82,$B1,$AE,$29,$0F,$05,$82,$85,$0E
       .byte $85,$B4,$B1,$B0,$2A,$2A,$2A,$2A,$29,$F0,$85,$82,$B1,$B2,$29,$0F
       .byte $05,$82,$85,$0E,$85,$02,$85,$B5,$A5,$B4,$85,$0E,$A5,$B5,$A2,$06
       .byte $CA,$10,$FD,$85,$0E,$88,$10,$C4,$A2,$3C,$A9,$00,$85,$0F,$85,$B5
       .byte $85,$0E,$85,$02,$A9,$00,$85,$0E,$85,$1B,$85,$1C,$A5,$B5,$85,$0F
       .byte $B5,$B8,$85,$AC,$B5,$B9,$85,$AE,$B5,$BA,$85,$B0,$B5,$BB,$85,$B2
       .byte $A9,$00,$85,$0F,$85,$02,$85,$B5,$A5,$81,$10,$1B,$E6,$81,$4C,$48
       .byte $F2,$24,$3A,$30,$02,$84,$91,$C8,$24,$3B,$30,$02,$84,$91,$C8,$24
       .byte $3D,$30,$1F,$84,$91,$10,$1B,$A4,$81,$C8,$24,$98,$30,$E3,$24,$38
       .byte $30,$02,$84,$91,$C8,$24,$39,$30,$02,$84,$91,$C8,$24,$3C,$30,$02
       .byte $84,$91,$84,$81,$85,$02,$A5,$81,$30,$09,$A5,$80,$8D,$80,$02,$38
       .byte $2A,$85,$80,$E0,$00,$30,$5D,$A0,$04,$B1,$AC,$2A,$2A,$85,$02,$2A
       .byte $2A,$29,$F0,$85,$82,$B1,$AE,$29,$0F,$05,$82,$85,$0E,$85,$B4,$A5
       .byte $B5,$85,$0F,$B1,$B2,$29,$F0,$85,$82,$E6,$40,$A9,$00,$85,$0E,$85
       .byte $0F,$85,$02,$A5,$B4,$85,$0E,$B1,$B0,$6A,$6A,$6A,$6A,$29,$0F,$05
       .byte $82,$85,$0F,$85,$B5,$B5,$BC,$29,$55,$85,$1C,$A9,$00,$85,$0E,$B5
       .byte $BC,$29,$AA,$85,$1B,$A9,$00,$85,$0F,$88,$10,$AD,$8A,$38,$E9,$05
       .byte $AA,$4C,$E8,$F1,$85,$02,$85,$02,$85,$02,$A9,$00,$A6,$98,$30,$02
       .byte $A9,$FF,$85,$1B,$49,$FF,$85,$1C,$85,$02,$85,$02,$85,$02,$A9,$00
       .byte $85,$1B,$85,$1C,$A9,$2B,$8D,$96,$02,$20,$E8,$F2,$AD,$84,$02,$D0
       .byte $FB,$4C,$7B,$F0,$AD,$82,$02,$4A,$90,$03,$4C,$6B,$F3,$A9,$00,$85
       .byte $8B,$20,$51,$F7,$A9,$00,$A2,$08,$95,$8C,$CA,$10,$FB,$86,$9F,$A6
       .byte $88,$BD,$C4,$F7,$85,$80,$2A,$85,$96,$2A,$85,$95,$2A,$85,$97,$85
       .byte $98,$29,$02,$85,$99,$F0,$26,$A5,$80,$29,$0F,$D0,$02,$E6,$99,$0A
       .byte $0A,$85,$81,$A9,$03,$85,$80,$A6,$81,$BC,$BC,$F7,$A6,$80,$94,$A4
       .byte $94,$A8,$20,$3E,$F7,$E6,$81,$C6,$80,$10,$EC,$30,$68,$A5,$80,$29
       .byte $0F,$85,$9F,$24,$8B,$10,$0F,$AA,$BD,$E4,$F7,$A2,$03,$24,$95,$30
       .byte $02,$95,$EF,$CA,$10,$FB,$A5,$97,$10,$04,$C6,$92,$D0,$04,$24,$80
       .byte $70,$3A,$20,$75,$F7,$D0,$3E,$4A,$A9,$FF,$90,$04,$85,$9B,$30,$35
       .byte $85,$8B,$A5,$9B,$30,$06,$45,$89,$29,$1F,$D0,$29,$A5,$89,$29,$1F
       .byte $85,$9B,$E6,$88,$F8,$18,$A5,$9A,$69,$01,$85,$9A,$D8,$C9,$21,$D0
       .byte $08,$A9,$01,$85,$9A,$A9,$00,$85,$88,$4C,$F5,$F2,$E6,$99,$A5,$84
       .byte $18,$69,$05,$85,$84,$A5,$91,$D0,$0B,$85,$1A,$A6,$93,$E8,$D0,$08
       .byte $A2,$FF,$86,$8B,$A2,$00,$86,$93,$45,$9C,$D0,$03,$85,$91,$60,$A5
       .byte $91,$85,$9C,$F0,$F9,$AA,$A4,$8B,$30,$13,$A9,$05,$85,$16,$A9,$04
       .byte $85,$1A,$A9,$1C,$18,$A4,$98,$30,$02,$69,$02,$85,$18,$20,$B1,$F7
       .byte $A5,$99,$10,$57,$49,$80,$85,$99,$A9,$00,$85,$91,$20,$51,$F7,$A5
       .byte $99,$F0,$24,$A9,$03,$85,$80,$A6,$80,$B4,$A4,$94,$A8,$20,$3E,$F7
       .byte $C6,$80,$10,$F3,$A5,$97,$85,$98,$10,$B4,$A5,$96,$30,$B0,$A9,$0C
       .byte $85,$91,$A9,$00,$85,$98,$60,$A5,$8E,$85,$8D,$A9,$00,$85,$8E,$A5
       .byte $92,$30,$04,$A5,$96,$30,$04,$20,$75,$F7,$60,$E6,$99,$A5,$97,$49
       .byte $80,$85,$97,$A5,$84,$18,$69,$05,$85,$84,$60,$C9,$02,$F0,$47,$C9
       .byte $03,$D0,$03,$4C,$DD,$F4,$BD,$E4,$F7,$30,$03,$4C,$36,$F5,$49,$FE
       .byte $D0,$03,$4C,$14,$F5,$38,$A5,$84,$E5,$86,$AA,$A0,$03,$A5,$95,$10
       .byte $01,$88,$B5,$00,$C9,$37,$D0,$03,$4C,$03,$F5,$E8,$88,$10,$F3,$E6
       .byte $83,$A5,$83,$C9,$0A,$18,$30,$02,$69,$06,$85,$8E,$38,$A5,$84,$E9
       .byte $05,$85,$84,$4C,$24,$F5,$E0,$0A,$30,$3D,$F0,$06,$E0,$0B,$D0,$2A
       .byte $F0,$6D,$A6,$86,$B4,$A8,$20,$3E,$F7,$E6,$84,$E6,$86,$A6,$86,$E0
       .byte $04,$D0,$0B,$A5,$84,$38,$E9,$04,$85,$84,$A2,$00,$86,$86,$A5,$99
       .byte $C9,$03,$F0,$12,$B5,$A8,$F0,$E1,$D0,$08,$A5,$9F,$30,$41,$A6,$86
       .byte $95,$A8,$A9,$FF,$85,$9F,$60,$86,$80,$A6,$86,$B5,$A8,$38,$E5,$80
       .byte $30,$2D,$85,$9F,$A8,$20,$3E,$F7,$60,$E0,$0A,$30,$08,$F0,$BA,$E0
       .byte $0B,$D0,$0E,$A2,$00,$A4,$86,$96,$A8,$A6,$86,$B4,$A8,$20,$3E,$F7
       .byte $60,$A2,$03,$A9,$00,$15,$A8,$CA,$10,$FB,$C9,$00,$F0,$01,$60,$A9
       .byte $00,$85,$91,$A9,$40,$85,$90,$A9,$09,$85,$15,$A9,$11,$85,$17,$60
       .byte $E6,$86,$E6,$84,$A6,$86,$A5,$95,$10,$01,$E8,$E0,$04,$F0,$01,$60
       .byte $38,$A5,$84,$E5,$86,$C9,$B8,$10,$02,$A9,$B8,$85,$84,$A9,$00,$85
       .byte $86,$60,$A0,$00,$E0,$0B,$F0,$06,$E4,$9F,$F0,$02,$10,$C1,$91,$84
       .byte $4C,$14,$F5,$C9,$01,$D0,$40,$A9,$00,$85,$99,$85,$8E,$A2,$03,$B5
       .byte $F4,$95,$A8,$CA,$10,$F9,$A5,$98,$49,$80,$85,$98,$20,$51,$F7,$60
       .byte $A0,$00,$A2,$03,$B5,$A8,$D9,$A8,$00,$30,$02,$8A,$A8,$CA,$10,$F4
       .byte $84,$82,$B9,$A8,$00,$A8,$A5,$9D,$20,$A4,$F7,$38,$E9,$01,$A6,$82
       .byte $55,$A8,$85,$80,$4C,$01,$F6,$C9,$02,$D0,$03,$4C,$48,$F6,$C6,$99
       .byte $A2,$03,$B5,$A8,$95,$A4,$CA,$10,$F9,$A5,$96,$30,$C2,$A5,$97,$10
       .byte $BE,$A2,$03,$A9,$00,$55,$A8,$CA,$10,$FB,$C9,$00,$F0,$B2,$85,$80
       .byte $A0,$40,$18,$98,$6A,$A8,$25,$80,$F0,$F9,$A2,$03,$85,$81,$B5,$A8
       .byte $25,$81,$D0,$03,$CA,$10,$F7,$86,$82,$AD,$82,$02,$30,$14,$A2,$03
       .byte $A0,$00,$98,$D5,$A8,$D0,$01,$C8,$CA,$10,$F8,$C0,$02,$10,$03,$4C
       .byte $64,$F5,$A5,$95,$10,$17,$A2,$03,$A0,$00,$B5,$A8,$29,$FE,$F0,$01
       .byte $C8,$CA,$10,$F6,$C0,$01,$D0,$05,$98,$45,$80,$85,$80,$A9,$7F,$85
       .byte $94,$A5,$80,$85,$B6,$A5,$82,$85,$B7,$60,$A2,$03,$A9,$00,$15,$A8
       .byte $CA,$10,$FB,$C9,$00,$F0,$0F,$60,$A5,$96,$30,$03,$4C,$A5,$F5,$A5
       .byte $98,$49,$80,$85,$98,$60,$A2,$01,$A9,$40,$85,$8C,$A5,$95,$2A,$2A
       .byte $29,$01,$85,$80,$8A,$45,$80,$AA,$A5,$97,$49,$80,$85,$97,$F8,$A9
       .byte $01,$4C,$37,$F7,$A2,$03,$A9,$00,$18,$75,$A8,$CA,$10,$FA,$AA,$D0
       .byte $C7,$A5,$96,$10,$D3,$A5,$98,$2A,$2A,$29,$01,$AA,$10,$CA,$A5,$91
       .byte $C9,$0C,$F0,$01,$60,$A9,$00,$85,$91,$20,$B1,$F7,$A5,$99,$C9,$00
       .byte $F0,$03,$4C,$47,$F5,$A4,$84,$84,$82,$A6,$83,$E0,$0C,$D0,$04,$A0
       .byte $B3,$84,$82,$A2,$03,$A9,$00,$85,$80,$85,$81,$B9,$08,$00,$95,$A4
       .byte $B5,$A8,$95,$A0,$D9,$08,$00,$D0,$02,$E6,$80,$88,$CA,$10,$EC,$A2
       .byte $03,$A0,$03,$B5,$A4,$55,$A0,$F0,$18,$B9,$A4,$00,$59,$A0,$00,$F0
       .byte $10,$B9,$A0,$00,$55,$A4,$D0,$09,$E6,$81,$A9,$00,$99,$A0,$00,$F0
       .byte $03,$88,$10,$DF,$CA,$10,$DA,$A6,$80,$BD,$E0,$F7,$0A,$A6,$81,$1D
       .byte $E0,$F7,$A4,$95,$10,$02,$29,$FD,$A6,$82,$95,$09,$A5,$80,$C9,$04
       .byte $F0,$1A,$A6,$83,$AD,$82,$02,$10,$04,$E0,$08,$F0,$0F,$E0,$0C,$F0
       .byte $0B,$A5,$92,$10,$06,$A5,$98,$49,$80,$85,$98,$60,$A9,$40,$85,$8C
       .byte $A2,$03,$B5,$A8,$95,$F4,$CA,$10,$F9,$A5,$98,$2A,$2A,$29,$01,$AA
       .byte $18,$F8,$A5,$92,$10,$0B,$A5,$80,$29,$04,$A8,$F0,$11,$A0,$01,$D0
       .byte $0D,$A4,$8E,$A5,$96,$30,$07,$A5,$8F,$18,$69,$01,$85,$8F,$A5,$8D
       .byte $85,$8E,$98,$18,$75,$8E,$95,$8E,$D8,$60,$A9,$05,$88,$10,$02,$A9
       .byte $37,$95,$B8,$8A,$18,$69,$05,$AA,$E0,$41,$30,$EE,$60,$A9,$00,$85
       .byte $83,$85,$86,$85,$87,$A9,$EF,$85,$84,$A2,$3C,$A0,$00,$A9,$37,$95
       .byte $B8,$95,$B9,$95,$BA,$95,$BB,$94,$BC,$8A,$38,$E9,$05,$AA,$10,$ED
       .byte $60,$A2,$01,$B5,$9D,$95,$A8,$6A,$6A,$6A,$6A,$95,$AA,$CA,$10,$F3
       .byte $A2,$03,$B5,$A8,$29,$0F,$38,$E5,$9F,$10,$FB,$38,$65,$9F,$A8,$B9
       .byte $E4,$F7,$95,$A8,$CA,$10,$EB,$A5,$95,$10,$04,$A9,$37,$85,$AB,$60
       .byte $84,$80,$29,$0F,$38,$E5,$80,$10,$FB,$38,$65,$80,$60,$A5,$87,$F0
       .byte $06,$A0,$00,$91,$84,$84,$87,$60,$09,$09,$09,$09,$00,$05,$04,$03
       .byte $26,$76,$66,$29,$79,$69,$06,$56,$46,$09,$59,$49,$81,$C1,$A1,$E1
       .byte $80,$C0,$A0,$E0,$F0,$0C,$48,$D4,$00,$0C,$04,$06,$00,$01,$05,$15
       .byte $55,$0A,$0F,$14,$19,$1E,$23,$28,$2D,$32,$FE,$37,$FF,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$3C,$F0,$3C,$F0,$3C,$F0
