; Disassembly of roms/Code Breaker (1).bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Code Breaker (1).bin
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
       .byte $00,$00,$00,$00,$00,$00,$3C,$F0,$3C,$F0,$3C,$F0
