; Disassembly of roms/Skeet Shoot (1).bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Skeet Shoot (1).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM1   =  $13
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       STA    SWACNT  
       STA    SWBCNT  
       TAX            
LF00B: STA    VSYNC,X 
       INX            
       BNE    LF00B   
LF010: LDX    #$FF    
       TXS            
       LDA    #$7F    
       LDX    #$0A    
LF017: DEX            
       STA    $8F,X   
       BNE    LF017   
       TXA            
       LDX    #$33    
LF01F: STA    $AB,X   
       DEX            
       BPL    LF01F   
       LDA    $DF     
       CMP    #$11    
       BNE    LF030   
       LDA    #$01    
       STA    $DF     
       BNE    LF039   
LF030: INC    $DF     
       SED            
       LDA    $E0     
       CLC            
       ADC    #$01    
       CLD            
LF039: STA    $E0     
       STA    $E2     
       LDA    #$00    
       STA    $E8     
       STA    $E7     
       STA    $E5     
       LDX    $DF     
       LDA    LF43B,X 
       ASL            
       ROL    $E8     
       ASL            
       ROL    $E7     
       ASL            
       ROL    $E7     
       DEC    $E7     
       ASL            
       ROL    $E5     
       ASL            
       ROL    $E5     
       DEC    $E5     
       LDX    $E8     
       INX            
       STX    $E3     
       JSR    LF616   
       LDX    #$04    
LF067: LDA    $85,X   
       AND    #$0F    
       STA    $85,X   
       DEX            
       BPL    LF067   
       JSR    LF377   
       LDA    #$0F    
       STA    $E1     
LF077: JSR    LF450   
       LDA    $E1     
       BNE    LF081   
       JMP    LF333   
LF081: DEC    $E1     
       BPL    LF077   
LF085: LDX    #$FF    
       TXS            
       INX            
       STX    $E2     
       STX    $E3     
       STX    $AB     
       STX    $E1     
       STX    $F1     
       JSR    LF377   
LF096: JSR    LF616   
       LDY    $E7     
       CPY    #$02    
       BEQ    LF0A3   
       STY    $E6     
       BNE    LF0E0   
LF0A3: LDY    $E4     
       LDA    $E8     
       BNE    LF0AD   
       STY    $E6     
       BEQ    LF0E0   
LF0AD: JSR    LF450   
       LDA    SWCHA   
       LDY    $AB     
       BNE    LF0CC   
       AND    #$0F    
       INY            
       CMP    #$08    
       BMI    LF0C4   
       DEY            
       CMP    #$0C    
       BPL    LF0C4   
       DEY            
LF0C4: STY    $E6     
       LDA    INPT5   
       BMI    LF0AD   
       BPL    LF0E0   
LF0CC: LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$08    
       BMI    LF0DA   
       DEY            
       CMP    #$0C    
       BPL    LF0DA   
       DEY            
LF0DA: STY    $E6     
       LDA    INPT4   
       BMI    LF0AD   
LF0E0: LDY    $E5     
       CPY    #$02    
       BEQ    LF0EA   
       STY    $AC     
       BNE    LF12C   
LF0EA: LDA    #$00    
       LDX    #$31    
LF0EE: STA    $AD,X   
       DEX            
       BPL    LF0EE   
LF0F3: JSR    LF450   
       LDY    $E4     
       LDA    $E8     
       BEQ    LF126   
       LDA    SWCHA   
       LDY    $AB     
       BEQ    LF117   
       AND    #$0F    
       CMP    #$08    
       BMI    LF10F   
       DEY            
       CMP    #$0C    
       BPL    LF10F   
       DEY            
LF10F: STY    $AC     
       LDA    INPT5   
       BMI    LF0F3   
       BPL    LF12C   
LF117: LSR            
       LSR            
       LSR            
       LSR            
       INY            
       CMP    #$08    
       BMI    LF126   
       DEY            
       CMP    #$0C    
       BPL    LF126   
       DEY            
LF126: STY    $AC     
       LDA    INPT4   
       BMI    LF0F3   
LF12C: JSR    LF377   
       LDX    #$1B    
LF131: LDA    LF404,X 
       STA    $AD,X   
       CPX    #$16    
       BPL    LF13F   
       LDA    LF3C2,X 
       STA    $C9,X   
LF13F: DEX            
       BPL    LF131   
       LDX    #$0F    
LF144: TXA            
       PHA            
       JSR    LF450   
       PLA            
       TAX            
       DEX            
       BNE    LF144   
       LDA    #$09    
       STA    $8A     
       STX    $8B     
       LDY    #$5C    
       STY    $E9     
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$5C    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       LDA    #$2D    
       STA    $F0     
LF168: LDA    SWCHA   
       LDY    $AB     
       BEQ    LF173   
       AND    #$0F    
       BNE    LF177   
LF173: LSR            
       LSR            
       LSR            
       LSR            
LF177: LDY    #$6D    
       CMP    #$07    
       BEQ    LF191   
       LDY    #$57    
       CMP    #$06    
       BEQ    LF191   
       LDY    #$2B    
       CMP    #$0A    
       BEQ    LF191   
       LDY    #$15    
       CMP    #$0B    
       BEQ    LF191   
       LDY    #$41    
LF191: STY    $EB     
       LDX    #$15    
LF195: LDA    LF396,Y 
       STA    $C9,X   
       DEY            
       DEX            
       BPL    LF195   
       JSR    LF450   
       LDA    $AB     
       BEQ    LF1AB   
       LDA    INPT5   
       BPL    LF1C1   
       BMI    LF1AF   
LF1AB: LDA    INPT4   
       BPL    LF1C1   
LF1AF: LDA    #$7F    
       STA    $96     
       STA    $97     
       JSR    LF6F2   
       LDA    $8A     
       CMP    #$FF    
       BNE    LF168   
       JMP    LF31C   
LF1C1: LDY    #$08    
       STY    AUDC0   
       LDA    #$10    
       STA    AUDF0   
       LDX    #$0F    
       STX    AUDV0   
       LDA    #$2D    
       STA    $F0     
       LDY    #$79    
       STY    $EA     
       STY    $97     
       DEY            
       STY    $96     
       LDY    #$FF    
       STY    $A9     
       STY    $AA     
       STY    $8C     
       INY            
       STY    $A0     
       STY    $A1     
       STY    $8D     
       LDA    $AC     
       BMI    LF200   
       BNE    LF1F8   
       INY            
       STY    $8D     
       LDY    #$06    
       STY    $8C     
       BNE    LF200   
LF1F8: LDA    #$0C    
       STA    $8C     
       LDA    #$06    
       STA    $8D     
LF200: LDA    $EB     
       CMP    #$15    
       BEQ    LF216   
       CMP    #$2B    
       BEQ    LF21A   
       CMP    #$41    
       BEQ    LF21E   
       CMP    #$57    
       BEQ    LF222   
       LDA    #$38    
       BNE    LF224   
LF216: LDA    #$00    
       BEQ    LF224   
LF21A: LDA    #$10    
       BNE    LF224   
LF21E: LDA    #$1C    
       BNE    LF224   
LF222: LDA    #$29    
LF224: CLC            
       ADC    $8D     
LF227: SEC            
       SBC    #$08    
       BMI    LF230   
       INC    $8C     
       BPL    LF227   
LF230: CLC            
       ADC    #$08    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $8D     
       LDA    #$00    
       SEC            
       SBC    $8D     
       STA    $8D     
LF240: JSR    LF671   
       JSR    LF6F2   
       JSR    LF450   
       LDA    $8C     
       CMP    #$FF    
       BNE    LF252   
       JMP    LF360   
LF252: LDA    $8A     
       CMP    #$FF    
       BNE    LF25B   
       JMP    LF339   
LF25B: LDA    $EA     
       CMP    $E9     
       BMI    LF240   
       LDA    $E9     
       CLC            
       ADC    #$06    
       CMP    $EA     
       BMI    LF240   
       LDA    $8A     
       ASL            
       ASL            
       ASL            
       STA    $EE     
       LDA    $8B     
       BEQ    LF280   
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       SEC            
       ADC    $EE     
       STA    $EE     
LF280: LDA    $8C     
       ASL            
       ASL            
       ASL            
       STA    $EF     
       LDA    $8D     
       BEQ    LF296   
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       SEC            
       ADC    $EF     
       STA    $EF     
LF296: LDA    $EF     
       CMP    $EE     
       BMI    LF240   
       LDA    $EE     
       CLC            
       ADC    #$07    
       CMP    $EF     
       BMI    LF240   
       LDA    #$08    
       STA    AUDC0   
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$28    
       STA    $F0     
       LDY    $E9     
       LDA    #$00    
       TAX            
LF2B8: STA    $A2,X   
       STY    $8F,X   
       INY            
       INX            
       CPX    #$09    
       BMI    LF2B8   
       TAY            
LF2C3: LDX    #$00    
LF2C5: LDA    LF420,Y 
       STA    $99,X   
       INY            
       INX            
       CPX    #$09    
       BMI    LF2C5   
       LDX    #$07    
LF2D2: TYA            
       PHA            
       TXA            
       PHA            
       STY    AUDF0   
       JSR    LF450   
       PLA            
       TAX            
       PLA            
       TAY            
       DEX            
       BNE    LF2D2   
       CPY    #$15    
       BMI    LF2C3   
       LDA    #$7F    
       LDX    #$09    
LF2EA: DEX            
       STA    $8F,X   
       BNE    LF2EA   
       LDX    #$1E    
LF2F1: TXA            
       PHA            
       JSR    LF450   
       PLA            
       TAX            
       DEX            
       BNE    LF2F1   
       LDA    #$06    
       STA    AUDC0   
       LDA    #$00    
       STA    AUDF0   
       LDA    #$08    
       STA    AUDV0   
       LDA    #$37    
       STA    $F0     
       LDA    $AB     
       BEQ    LF310   
       INX            
LF310: SED            
       LDA    $E2,X   
       CLC            
       ADC    #$01    
       CLD            
       STA    $E2,X   
       JSR    LF616   
LF31C: JSR    LF450   
       LDA    $E8     
       BEQ    LF32B   
       LDA    $AB     
       EOR    #$01    
       STA    $AB     
       BNE    LF374   
LF32B: INC    $F1     
       LDA    $F1     
       CMP    #$19    
       BMI    LF374   
LF333: JSR    LF450   
       JMP    LF333   
LF339: JSR    LF671   
       LDX    #$01    
LF33E: LDA    $96,X   
       STA    $8F,X   
       LDY    #$FF    
       STY    $A2,X   
       INY            
       STY    $99,X   
       DEX            
       BPL    LF33E   
       LDA    #$7F    
       LDX    #$06    
LF350: STA    $91,X   
       DEX            
       BPL    LF350   
       JSR    LF450   
       LDA    $8C     
       CMP    #$FF    
       BNE    LF339   
       BEQ    LF31C   
LF360: LDA    #$FF    
       CMP    $8A     
       BEQ    LF31C   
       LSR            
       STA    $96     
       STA    $97     
       JSR    LF6F2   
       JSR    LF450   
       JMP    LF360   
LF374: JMP    LF096   
LF377: LDA    #$8C    
       STA    $F2     
       LDA    #$80    
       STA    $F3     
       LDA    #$44    
       STA    $F4     
       LDA    #$B8    
       STA    $F5     
       LDA    #$D6    
       STA    $F6     
       LDA    #$00    
       STA    $F7     
       STA    $F8     
       LDA    #$07    
       STA    $F9     
       RTS            

LF396: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$E0,$70,$38,$1C
       .byte $0E,$07,$03,$00,$00,$70,$00,$00,$00,$00,$00,$C0,$C0,$60,$60,$30
       .byte $30,$18,$18,$0C,$0C,$06,$04,$00,$00,$00,$00,$40
LF3C2: .byte $18,$18,$18,$18,$18,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$F0,$00,$00,$00,$00,$00,$03,$03,$06,$06,$0C
       .byte $0C,$18,$18,$30,$30,$60,$60,$00,$00,$00,$00,$A0,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$03,$07,$0E,$1C,$38,$70,$E0,$C0,$00
       .byte $00,$80
LF404: .byte $18,$3C,$7E,$7E,$7E,$3C,$18,$18,$3C,$7E,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$E7,$E7,$C3,$C3,$C3
LF420: .byte $18,$3C,$7E,$FF,$E7,$FF,$7E,$3C,$18,$00,$66,$5E,$3C,$F7,$3C,$5E
       .byte $66,$00,$89,$46,$24,$3C,$E7,$3C,$24,$62,$91
LF43B: .byte $00,$78,$F8,$58,$38,$18,$70,$F0,$68,$E8,$60,$E0,$00,$08,$20,$30
       .byte $48,$50,$00,$00,$00
LF450: LDX    INTIM   
       BNE    LF450   
       STA    WSYNC   
       STX    VBLANK  
       DEC    $F8     
       BNE    LF464   
       DEC    $F9     
       BNE    LF464   
       JSR    LF7AC   
LF464: LDA    $F2     
       STA    COLUBK  
       STA    RESP0   
       STA    WSYNC   
       STA    HMCLR   
       LDY    $8A     
       STY    $EF     
       STA    RESM1   
       LDY    $8C     
       STY    $EE     
       LDX    #$14    
LF47A: STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDY    #$80    
       DEC    $EF     
       BMI    LF488   
       STY    HMP0    
LF488: DEC    $EE     
       BMI    LF48E   
       STY    HMM1    
LF48E: DEX            
       BNE    LF47A   
       LDY    $F3     
       STY    COLUP0  
       LDA    $F4     
       STA    COLUP1  
       STA    HMCLR   
       LDA    $8B     
       STA    HMP0    
       LDA    $8D     
       STA    HMM1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$02    
       STA    CTRLPF  
LF4AB: LDY    #$04    
LF4AD: STA    WSYNC   
       LDA    $80,X   
       STA    PF1     
       LDA    $85,X   
       PHA            
       PLA            
       PHA            
       PLA            
       PHA            
       PLA            
       PHA            
       PLA            
       DEY            
       STA    PF1     
       BNE    LF4AD   
       INX            
       CPX    #$05    
       BNE    LF4AB   
       STA    WSYNC   
       STY    PF1     
       STY    CTRLPF  
       LDY    $F2     
       STY    COLUPF  
       STA    WSYNC   
       LDA    $F7     
       STA    COLUP0  
       LDX    $F3     
       LDA    $AB     
       BEQ    LF4DF   
       LDX    $F4     
LF4DF: STX    COLUPF  
       LDX    #$00    
       STX    $8E     
LF4E5: LDY    $8F,X   
       CPY    $8E     
       BEQ    LF4F5   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    ENAM1   
       BEQ    LF500   
LF4F5: LDA    $99,X   
       LDY    $A2,X   
       STA    WSYNC   
       STY    ENAM1   
       STA    GRP0    
       INX            
LF500: INC    $8E     
       LDA    $8E     
       CMP    #$65    
       BNE    LF4E5   
       LDA    $F5     
       STA    COLUBK  
       LDA    $F6     
       STA    COLUP1  
       LDA    $F7     
       STA    COLUP0  
       LDA    #$00    
LF516: LDY    $8F,X   
       CPY    $8E     
       STA    WSYNC   
       BNE    LF521   
       LDA    #$FF    
       INX            
LF521: STA    ENAM1   
       PHA            
       PLA            
       NOP            
       LDA    #$C0    
       STA    PF2     
       LDA    #$30    
       STA    PF0     
       INC    $8E     
       LDY    $8E     
       LDA    #$00    
       PHA            
       PLA            
       PHA            
       PLA            
       NOP            
       STA    PF0     
       STA    PF2     
       CPY    #$7A    
       BNE    LF516   
       STA    WSYNC   
       LDA    $AC     
       BMI    LF54F   
       BEQ    LF556   
       LDX    #$09    
       LDX    #$09    
       BNE    LF55B   
LF54F: LDX    #$01    
       NOP            
       NOP            
       NOP            
       BNE    LF55B   
LF556: LDX    #$05    
       NOP            
       NOP            
       NOP            
LF55B: DEX            
       BNE    LF55B   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$30    
       STA    HMP1    
       LDA    #$80    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    $DE     
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
LF57C: LDA    $C9,X   
       STA    WSYNC   
       STA    GRP0    
       INX            
       CPX    #$07    
       BNE    LF57C   
       LDX    #$00    
LF589: LDA    $D0,X   
       LDY    $AD,X   
       STA    WSYNC   
       STA    GRP0    
       STY    GRP1    
       INX            
       CPX    #$07    
       BNE    LF5A2   
       LDY    $F3     
       LDA    $AB     
       BEQ    LF5A0   
       LDY    $F4     
LF5A0: STY    COLUP1  
LF5A2: CPX    #$0E    
       BNE    LF589   
LF5A6: LDY    #$00    
       LDA    $AD,X   
       STA    WSYNC   
       STY    GRP0    
       STA    GRP1    
       INX            
       CPX    #$1C    
       BNE    LF5A6   
       LDX    #$14    
LF5B7: STA    WSYNC   
       STY    GRP1    
       DEX            
       BNE    LF5B7   
       DEX            
       STA    WSYNC   
       STX    VBLANK  
       STX    VSYNC   
       LDA    #$2A    
       STA    TIM8T   
LF5CA: LDX    INTIM   
       BNE    LF5CA   
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$24    
       STA    TIM64T  
       INC    $F0     
       LDA    $F0     
       CMP    #$3C    
       BNE    LF5E6   
       STX    $F0     
       STX    AUDV0   
       STX    AUDV1   
LF5E6: INC    $E4     
       LDA    $E4     
       CMP    #$02    
       BNE    LF5F2   
       LDA    #$FF    
       STA    $E4     
LF5F2: STX    $EC     
       STX    $ED     
       INX            
       BIT    SWCHB   
       BVS    LF5FE   
       STX    $EC     
LF5FE: BMI    LF602   
       STX    $ED     
LF602: LDA    SWCHB   
       LSR            
       BCS    LF60B   
       JMP    LF085   
LF60B: LDY    $E1     
       BNE    LF615   
       LSR            
       BCS    LF615   
       JMP    LF010   
LF615: RTS            

LF616: LDX    #$00    
       STX    $EF     
LF61A: LDA    $E2,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $EE     
       ASL            
       ASL            
       CLC            
       ADC    $EE     
       TAY            
       LDX    $EF     
       BEQ    LF62E   
       LDX    #$05    
LF62E: LDA    LF7C2,Y 
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $80,X   
       INY            
       INX            
       CPX    #$05    
       BEQ    LF641   
       CPX    #$0A    
       BNE    LF62E   
LF641: LDX    $EF     
       LDA    $E2,X   
       AND    #$0F    
       STA    $EE     
       ASL            
       ASL            
       CLC            
       ADC    $EE     
       TAY            
       LDX    #$00    
       LDA    $EF     
       BEQ    LF657   
       LDX    #$05    
LF657: LDA    LF7C2,Y 
       ORA    $80,X   
       STA    $80,X   
       INY            
       INX            
       CPX    #$05    
       BEQ    LF668   
       CPX    #$0A    
       BNE    LF657   
LF668: INC    $EF     
       LDX    $EF     
       CPX    #$02    
       BNE    LF61A   
       RTS            

LF671: LDY    #$20    
       LDA    $EB     
       CMP    #$15    
       BEQ    LF68D   
       LDY    #$10    
       CMP    #$2B    
       BEQ    LF68D   
       LDY    #$00    
       CMP    #$41    
       BEQ    LF68D   
       LDY    #$F0    
       CMP    #$57    
       BEQ    LF68D   
       LDY    #$E0    
LF68D: LDA    $8D     
       STY    $8D     
       CLC            
       ADC    $8D     
       CMP    #$10    
       BEQ    LF69C   
       CMP    #$20    
       BNE    LF6A3   
LF69C: DEC    $8C     
       CLC            
       ADC    #$80    
       BMI    LF6B0   
LF6A3: CMP    #$80    
       BEQ    LF6AB   
       CMP    #$70    
       BNE    LF6B0   
LF6AB: INC    $8C     
       CLC            
       ADC    #$80    
LF6B0: STA    $8D     
       DEC    $EA     
       DEC    $EA     
       LDY    $EA     
       STY    AUDF0   
       CPY    #$01    
       BMI    LF6CE   
       LDA    $8C     
       BMI    LF6CE   
       BNE    LF6CA   
       LDA    $8D     
       BNE    LF6E0   
       BEQ    LF6CE   
LF6CA: CMP    #$14    
       BNE    LF6E0   
LF6CE: LDY    #$FF    
       STY    $8C     
       LDA    #$08    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       LDA    #$37    
       STA    $F0     
       LDY    #$7F    
LF6E0: LDX    #$FF    
       LDA    #$00    
       STY    $97     
       STA    $A1     
       STX    $AA     
       DEY            
       STY    $96     
       STA    $A0     
       STX    $A9     
       RTS            

LF6F2: LDA    $AB     
       BNE    LF6FB   
       LDA    $EC     
       JMP    LF6FD   
LF6FB: LDA    $ED     
LF6FD: BNE    LF704   
       LDA    $F0     
       LSR            
       BCS    LF72D   
LF704: LDA    $E6     
       BMI    LF71C   
       BEQ    LF72B   
       LDA    $8B     
       SEC            
       SBC    #$10    
       CMP    #$80    
       BNE    LF717   
       INC    $8A     
       LDA    #$00    
LF717: STA    $8B     
       JMP    LF72B   
LF71C: LDA    $8B     
       BNE    LF726   
       DEC    $8A     
       LDA    #$90    
       BNE    LF729   
LF726: CLC            
       ADC    #$10    
LF729: STA    $8B     
LF72B: DEC    $E9     
LF72D: LDA    $E9     
       STA    AUDF1   
       PHA            
       LDX    #$06    
       LDA    #$00    
LF736: STA    $A2,X   
       STA    $99,X   
       DEX            
       BPL    LF736   
       INX            
       LDY    #$00    
       STY    $EF     
LF742: LDA.wy $0096,Y 
       CMP    $E9     
       BMI    LF781   
       BNE    LF759   
       CMP    #$7F    
       BNE    LF753   
       STA    $8F,X   
       BEQ    LF77A   
LF753: LDA.wy $00A9,Y 
       INY            
       BNE    LF75B   
LF759: LDA    #$00    
LF75B: STA    $A2,X   
       LDA    $E9     
       STA    $8F,X   
       INC    $E9     
       STY    $EE     
       LDY    $EF     
       LDA    LF7BB,Y 
       STA    $99,X   
       LDY    $EE     
       INC    $EF     
       LDA    $EF     
       CMP    #$07    
       BMI    LF77A   
       LDA    #$7F    
       STA    $E9     
LF77A: INX            
       CPX    #$09    
       BMI    LF742   
       BPL    LF78B   
LF781: STA    $8F,X   
       LDA.wy $00A9,Y 
       STA    $A2,X   
       INY            
       BPL    LF77A   
LF78B: PLA            
       STA    $E9     
       CMP    #$00    
       BMI    LF7A0   
       LDA    $8A     
       BNE    LF79C   
       LDA    $8B     
       BNE    LF7AB   
       BEQ    LF7A0   
LF79C: CMP    #$12    
       BNE    LF7AB   
LF7A0: LDA    #$7F    
       LDX    #$06    
LF7A4: STA    $8F,X   
       DEX            
       BPL    LF7A4   
       STX    $8A     
LF7AB: RTS            

LF7AC: LDA    $F2     
       ASL            
       LDX    #$05    
LF7B1: ROL    $F2,X   
       DEX            
       BPL    LF7B1   
       LDX    #$01    
       STX    $F9     
       RTS            

LF7BB: .byte $18,$3C,$7E,$FF,$7E,$3C,$18
LF7C2: .byte $0E,$0A,$0A,$0A,$0E,$04,$04,$04,$04,$04,$0E,$02,$0E,$08,$0E,$0E
       .byte $02,$06,$02,$0E,$02,$0A,$0E,$02,$02,$0E,$08,$0E,$02,$0E,$0E,$08
       .byte $0E,$0A,$0E,$0E,$02,$02,$04,$04,$0E,$0A,$0E,$0A,$0E,$0E,$0A,$0E
       .byte $02,$02,$04,$0E,$0A,$0E,$0A,$0E,$00,$F0,$00,$F0,$00,$F0
