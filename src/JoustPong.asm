; Disassembly of roms/JoustPong.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/JoustPong.bin
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
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
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
HMM0    =  $22
HMM1    =  $23
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
       TAY            
LF006: DEX            
       TXS            
       PHA            
       BNE    LF006   
       LDA    #$00    
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$01    
       STA    $A4     
       LDA    #$FE    
       STA    $9B     
       STA    $9D     
       STA    $97     
       STA    $99     
       STA    $E0     
LF029: LDA    #$E6    
       STA    $91     
       LDA    #$00    
       STA    $90     
       LDA    #$0E    
       STA    $81     
       LDA    #$0E    
       STA    $85     
       LDA    #$0E    
       STA    $E2     
       LDA    #$00    
       STA    $9F     
       LDA    #$50    
       STA    $E1     
       LDA    #$2E    
       STA    $DF     
       LDA    #$1F    
       STA    COLUPF  
       LDA    #$00    
       STA    CTRLPF  
       STA    WSYNC   
       STA    RESM1   
       LDX    #$07    
LF057: DEX            
       BNE    LF057   
       NOP            
       NOP            
       STA    RESP1   
       STA    RESBL   
       LDX    #$03    
LF062: DEX            
       BNE    LF062   
       STA    RESP0   
       NOP            
       STA    RESM0   
       LDA    #$10    
       STA    HMP0    
       LDA    #$80    
       STA    HMM0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$88    
       STA    COLUP0  
       LDA    #$28    
       STA    COLUP1  
       LDA    #$02    
       STA    NUSIZ0  
       LDA    #$05    
       STA    NUSIZ1  
       TSX            
       STX    $E9     
       LDX    #$1D    
       TXS            
       LDA    #$00    
       STA    HMP0    
       JMP    LF102   
LF093: LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2B    
       STA    TIM64T  
       LDA    #$00    
       STA    VSYNC   
       INC    $F5     
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF0E6   
       LDA    $A3     
       BEQ    LF0B6   
       JMP    LF175   
LF0B6: LDA    #$10    
       BIT    SWCHA   
       BNE    LF0C2   
       DEC    $A2     
       JMP    LF108   
LF0C2: LDA    #$80    
       BIT    SWCHA   
       BNE    LF0CE   
       DEC    $A2     
       JMP    LF108   
LF0CE: LDA    #$20    
       BIT    SWCHA   
       BNE    LF0DA   
       INC    $A2     
       JMP    LF108   
LF0DA: LDA    #$40    
       BIT    SWCHA   
       BNE    LF0E6   
       INC    $A2     
       JMP    LF108   
LF0E6: LDA    SWCHB   
       AND    #$01    
       TAY            
       BEQ    LF0F8   
       LDA    $A4     
       BNE    LF0F8   
       TYA            
       STA    $A4     
       JMP    LF39F   
LF0F8: TYA            
       STA    $A4     
       LDA    SWCHB   
       AND    #$02    
       BNE    LF171   
LF102: LDA    $A3     
       BNE    LF175   
       DEC    $A2     
LF108: LDA    #$01    
       STA    $A3     
       LDA    $A2     
       BPL    LF114   
       LDA    #$05    
       STA    $A2     
LF114: LDA    #$05    
       CMP    $A2     
       BCS    LF11E   
       LDA    #$00    
       STA    $A2     
LF11E: LDA    $A2     
       AND    #$01    
       LDA    #$01    
       CMP    $A2     
       BCC    LF133   
       LDA    #$01    
       STA    $A1     
       LDA    #$13    
       STA    $9C     
       JMP    LF150   
LF133: LDA    #$00    
       STA    $A1     
       LDA    #$03    
       CMP    $A2     
       BCC    LF148   
       LDA    #$0F    
       STA    $9E     
       LDA    #$41    
       STA    $9C     
       JMP    LF150   
LF148: LDA    #$00    
       STA    $9E     
       LDA    #$37    
       STA    $9C     
LF150: LDA    $A2     
       AND    #$01    
       BNE    LF15F   
       LDA    #$02    
       STA    $D8     
       LDA    #$20    
       JMP    LF165   
LF15F: LDA    #$09    
       STA    $D8     
       LDA    #$00    
LF165: LDX    #$15    
LF167: STA    $A8,X   
       STA    $BE,X   
       DEX            
       BNE    LF167   
       JMP    LF175   
LF171: LDA    #$00    
       STA    $A3     
LF175: LDA    REFP1   
       BMI    LF17C   
       JMP    LF39F   
LF17C: LDA    #$01    
       STA    $EB     
       JMP    LFC0E   
LF183: LDA    INTIM   
       BNE    LF183   
       STA    VBLANK  
       LDA    #$00    
       STA    CTRLPF  
       LDY    #$14    
LF190: STA    WSYNC   
       DEY            
       BNE    LF190   
       LDA    #$1E    
       STA    COLUPF  
       LDX    #$1E    
       LDY    #$02    
LF19D: STA    WSYNC   
       LDA    LFEA5,X 
       STA    PF0     
       LDA    LFECA,X 
       STA    PF1     
       LDA    LFEEF,X 
       STA    PF2     
       NOP            
       NOP            
       NOP            
       LDA    LFF14,X 
       STA    PF0     
       LDA    LFF39,X 
       STA    PF1     
       LDA    LFF5E,X 
       STA    PF2     
       DEY            
       BNE    LF1C8   
       DEX            
       BEQ    LF1CB   
       LDY    #$02    
LF1C8: JMP    LF19D   
LF1CB: NOP            
       NOP            
       NOP            
       LDA    #$7C    
       STA    COLUPF  
       LDX    #$07    
       LDY    #$02    
LF1D6: STA    WSYNC   
       LDA    LFE9E,X 
       STA    PF0     
       LDA    LFEC3,X 
       STA    PF1     
       LDA    LFEE8,X 
       STA    PF2     
       NOP            
       NOP            
       NOP            
       LDA    LFF0D,X 
       STA    PF0     
       LDA    LFF32,X 
       STA    PF1     
       LDA    LFF57,X 
       STA    PF2     
       DEY            
       BNE    LF201   
       DEX            
       BEQ    LF204   
       LDY    #$02    
LF201: JMP    LF1D6   
LF204: LDA    #$00    
       STA    PF2     
       STA    PF0     
       STA    PF1     
       LDY    #$18    
LF20E: STA    WSYNC   
       DEY            
       BNE    LF20E   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$01    
       STA    $9A     
       JMP    LF300   
LF21E: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
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
       .byte $00,$00
LF300: STA    WSYNC   
       LDX    #$0A    
LF304: DEX            
       BNE    LF304   
       LDX    #$10    
       NOP            
       NOP            
       NOP            
       JMP    LF31B   
LF30F: LDA    $F8     
       BEQ    LF32C   
LF313: LDA    $F8     
       BEQ    LF33F   
LF317: LDA    $F8     
       BEQ    LF378   
LF31B: TXA            
       SEC            
       SBC    $81     
       ADC    #$09    
       STY    GRP1    
       LDY    #$7C    
       STY    COLUP0  
       BCC    LF30F   
       TAY            
       LDA    ($9A),Y 
LF32C: STA    GRP0    
       STA    $89     
       LDA    #$00    
       STA    PF0     
       TXA            
       SEC            
       SBC    $85     
       ADC    #$09    
       BCC    LF313   
       TAY            
       LDA    ($9C),Y 
LF33F: STA    GRP0    
       LDY    #$4D    
       STY    COLUP0  
       STA    $8B     
       PLA            
       CPX    $91     
       PHP            
       TXA            
       LSR            
       STA    COLUPF  
       LSR            
       TAY            
       LDA.wy $00A8,Y 
       NOP            
       NOP            
       STA    PF0     
       LDA    $89     
       STA    GRP0    
       LDA    #$7C    
       STA    COLUP0  
       SEC            
       LDA.wy $00BE,Y 
       STA    PF0     
       LDA    #$4D    
       STA    COLUP0  
       LDA    $8B     
       STA    GRP0    
       TXA            
       SBC    $E2     
       ADC    #$08    
       BCC    LF317   
       TAY            
       LDA    ($DF),Y 
LF378: TAY            
       DEX            
       BNE    LF31B   
       STX    PF0     
       STX    ENAM1   
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$28    
LF38C: STA    WSYNC   
       DEY            
       BNE    LF38C   
       LDA    #$02    
       STA    VBLANK  
       LDX    #$1E    
LF397: STA    WSYNC   
       DEX            
       BNE    LF397   
       JMP    LF093   
LF39F: LDA    #$11    
       STA    CTRLPF  
       LDA    #$2C    
       STA    $81     
       STA    $85     
       LDA    #$31    
       STA    $E2     
       LDA    #$4B    
       STA    $E1     
       LDA    #$00    
       STA    $E3     
       STA    $E4     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $80     
       STA    $84     
       STA    $83     
       STA    $82     
       STA    $87     
       STA    $86     
       STA    $94     
       STA    $95     
       STA    $A5     
       LDA    #$60    
       STA    $F4     
       LDA    #$FE    
       STA    $9B     
       STA    $9D     
       STA    $E0     
       LDA    $A2     
       AND    #$01    
       BNE    LF3E6   
       LDA    #$20    
       JMP    LF3E8   
LF3E6: LDA    #$00    
LF3E8: LDX    #$15    
LF3EA: STA    $A8,X   
       STA    $BE,X   
       DEX            
       BNE    LF3EA   
       LDA    #$9F    
       STA    COLUPF  
       LDA    #$26    
       STA    $91     
       LDA    #$00    
       STA    $90     
       LDA    #$55    
       STA    $DB     
       LDA    #$02    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC1   
LF40D: INC    $F5     
       LDA    SWCHB   
       AND    #$01    
       TAY            
       BEQ    LF421   
       LDA    $A4     
       BNE    LF421   
       TYA            
       STA    $A4     
       JMP    LF39F   
LF421: TYA            
       STA    $A4     
       LDA    SWCHB   
       AND    #$02    
       BNE    LF45C   
       LDA    #$00    
       STA    CTRLPF  
       LDA    #$0A    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDC1   
       LDA    $A2     
       AND    #$01    
       BNE    LF442   
       LDA    #$20    
       JMP    LF444   
LF442: LDA    #$00    
LF444: LDX    #$15    
LF446: STA    $A8,X   
       STA    $BE,X   
       DEX            
       BNE    LF446   
       LDA    #$00    
       STA    $D4     
       STA    $D5     
       STA    $D6     
       STA    $D7     
       INC    $A2     
       JMP    LF029   
LF45C: LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2B    
       STA    TIM64T  
       LDA    #$00    
       STA    VSYNC   
       LDA    $F3     
       BNE    LF475   
       STA    AUDV1   
LF475: LDA    REFP1   
       BMI    LF499   
       LDA    #$0A    
       STA    $9A     
       LDA    $8C     
       BNE    LF496   
       CLC            
       LDA    $82     
       ADC    #$C8    
       STA    $82     
       LDA    $83     
       ADC    #$00    
       STA    $83     
       LDA    #$01    
       STA    $8C     
       LDA    #$0F    
       STA    $A0     
LF496: JMP    LF4A1   
LF499: LDA    #$00    
       STA    $8C     
       LDA    #$01    
       STA    $9A     
LF4A1: LDA    $A1     
       BEQ    LF4D8   
       LDA    PF0     
       BMI    LF4CD   
       LDA    #$1C    
       STA    $9C     
       LDA    $8D     
       BNE    LF4CA   
       CLC            
       LDA    $86     
       ADC    #$C8    
       STA    $86     
       LDA    $87     
       ADC    #$00    
       STA    $87     
       LDA    #$01    
       STA    $8D     
       LDA    #$0F    
       STA    $A0     
       LDA    #$1C    
       STA    $9C     
LF4CA: JMP    LF4D5   
LF4CD: LDA    #$00    
       STA    $8D     
       LDA    #$13    
       STA    $9C     
LF4D5: JMP    LF51A   
LF4D8: LDA    #$13    
       STA    $9C     
       LDA    $A5     
       BNE    LF51A   
       LDA    $F4     
       BPL    LF51A   
       LDA    $EC     
       BEQ    LF4ED   
       DEC    $EC     
       JMP    LF510   
LF4ED: LDA    $9F     
       BEQ    LF510   
       LDA    $85     
       CMP    $91     
       BCS    LF51A   
       CLC            
       LDA    $86     
       ADC    #$C8    
       STA    $86     
       LDA    $87     
       ADC    #$00    
       STA    $87     
       LDA    $9E     
       STA    $EC     
       LDA    #$0F    
       STA    $A0     
       LDA    #$0F    
       STA    $F6     
LF510: LDA    $F6     
       BEQ    LF51A   
       DEC    $F6     
       LDA    #$1C    
       STA    $9C     
LF51A: CLC            
       LDA    $82     
       ADC    #$F5    
       STA    $82     
       LDA    $83     
       ADC    #$FF    
       STA    $83     
       CLC            
       LDA    $80     
       ADC    $82     
       STA    $80     
       LDA    $81     
       ADC    $83     
       STA    $81     
       CLC            
       LDA    $86     
       ADC    #$F5    
       STA    $86     
       LDA    $87     
       ADC    #$FF    
       STA    $87     
       CLC            
       LDA    $84     
       ADC    $86     
       STA    $84     
       LDA    $85     
       ADC    $87     
       STA    $85     
       LDA    #$80    
       BIT    VBLANK  
       BNE    LF557   
       JMP    LF605   
LF557: LDA    #$50    
       CMP    $DB     
       BCC    LF57A   
       LDA    #$01    
       STA    $9F     
       LDA    $83     
       STA    $8F     
       LDA    $82     
       STA    $8E     
       LDA    #$0A    
       CMP    $81     
       BCC    LF577   
       LDA    #$20    
       STA    $8E     
       LDA    #$00    
       STA    $8F     
LF577: JMP    LF594   
LF57A: LDA    #$00    
       STA    $9F     
       LDA    $87     
       STA    $8F     
       LDA    $86     
       STA    $8E     
       LDA    #$0A    
       CMP    $85     
       BCC    LF594   
       LDA    #$20    
       STA    $8E     
       LDA    #$00    
       STA    $8F     
LF594: LDA    $8E     
       STA    $E6     
       LDA    $8F     
       STA    $E7     
       LDA    #$00    
       STA    $E8     
       LDA    $E7     
       BPL    LF5B5   
       LDA    #$01    
       STA    $E8     
       SEC            
       LDA    #$00    
       SBC    $E6     
       STA    $E6     
       LDA    #$00    
       SBC    $E7     
       STA    $E7     
LF5B5: LDA    #$01    
       CMP    $E7     
       BCC    LF5BE   
       JMP    LF5D8   
LF5BE: LDA    $E8     
       BEQ    LF5CD   
       LDA    #$01    
       STA    $8E     
       LDA    #$FE    
       STA    $8F     
       JMP    LF5F9   
LF5CD: LDA    #$FF    
       STA    $8E     
       LDA    #$01    
       STA    $8F     
       JMP    LF5F9   
LF5D8: LDA    $E7     
       BNE    LF5F9   
       LDA    $E6     
       CMP    #$20    
       BCS    LF5F9   
       LDA    $E8     
       BEQ    LF5F1   
       LDA    #$E0    
       STA    $8E     
       LDA    #$FF    
       STA    $8F     
       JMP    LF5F9   
LF5F1: LDA    #$20    
       STA    $8E     
       LDA    #$00    
       STA    $8F     
LF5F9: LDA    $F3     
       BNE    LF605   
       LDA    #$07    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDV1   
LF605: LDA    #$40    
       BIT    VBLANK  
       BEQ    LF631   
       LDA    $E5     
       BNE    LF635   
       LDA    #$01    
       STA    $E5     
       LDA    $9F     
       BEQ    LF61E   
       LDA    #$00    
       STA    $9F     
       JMP    LF622   
LF61E: LDA    #$01    
       STA    $9F     
LF622: LDA    $F3     
       BNE    LF635   
       LDA    #$07    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDV1   
       JMP    LF635   
LF631: LDA    #$00    
       STA    $E5     
LF635: LDA    #$80    
       BIT    COLUP1  
       BEQ    LF662   
       LDA    #$FF    
       STA    $F3     
       LDA    #$50    
       CMP    $E1     
       BCC    LF655   
       CLC            
       LDA    $82     
       ADC    #$00    
       STA    $82     
       LDA    $83     
       ADC    #$FF    
       STA    $83     
       JMP    LF662   
LF655: CLC            
       LDA    $86     
       ADC    #$00    
       STA    $86     
       LDA    $87     
       ADC    #$FF    
       STA    $87     
LF662: LDA    #$80    
       BIT    NUSIZ1  
       BEQ    LF694   
       LDA    $F3     
       BNE    LF674   
       LDA    #$19    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDV1   
LF674: LDA    $91     
       LSR            
       LSR            
       TAY            
       LDA    #$50    
       CMP    $DB     
       BCC    LF68B   
       LDA    #$00    
       STA.wy $00A8,Y 
       LDA    #$01    
       STA    $9F     
       JMP    LF694   
LF68B: LDA    #$00    
       STA.wy $00BE,Y 
       LDA    #$00    
       STA    $9F     
LF694: STA    CXCLR   
       LDA    $A5     
       BNE    LF6FA   
       LDA    #$A0    
       CMP    $DB     
       BCS    LF6CA   
       LDA    $F3     
       BNE    LF6AC   
       LDA    #$0F    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDV1   
LF6AC: LDA    #$0F    
       STA    $EF     
       LDA    #$50    
       STA    $DB     
       INC    $94     
       LDA    $D8     
       CMP    $94     
       BCS    LF6CA   
       LDA    #$01    
       STA    $A5     
       LDA    #$00    
       STA    $D4     
       STA    $D5     
       STA    $D6     
       STA    $D7     
LF6CA: LDA    #$05    
       CMP    $DB     
       BCC    LF6FA   
       LDA    $F3     
       BNE    LF6DC   
       LDA    #$0F    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDV1   
LF6DC: LDA    #$0F    
       STA    $F0     
       LDA    #$50    
       STA    $DB     
       INC    $95     
       LDA    $D8     
       CMP    $95     
       BCS    LF6FA   
       LDA    #$01    
       STA    $A5     
       LDA    #$00    
       STA    $D4     
       STA    $D5     
       STA    $D6     
       STA    $D7     
LF6FA: LDA    $F4     
       BMI    LF703   
       DEC    $F4     
       JMP    LF75F   
LF703: CLC            
       LDA    $90     
       ADC    $8E     
       STA    $90     
       LDA    $91     
       ADC    $8F     
       STA    $91     
       LDA    SWCHB   
       AND    #$40    
       BNE    LF73B   
       LDA    $9F     
       BEQ    LF72B   
       CLC            
       LDA    $DA     
       ADC    #$AA    
       STA    $DA     
       LDA    $DB     
       ADC    #$00    
       STA    $DB     
       JMP    LF75F   
LF72B: CLC            
       LDA    $DA     
       ADC    #$56    
       STA    $DA     
       LDA    $DB     
       ADC    #$FF    
       STA    $DB     
       JMP    LF75F   
LF73B: LDA    $9F     
       BEQ    LF74F   
       CLC            
       LDA    $DA     
       ADC    #$FA    
       STA    $DA     
       LDA    $DB     
       ADC    #$00    
       STA    $DB     
       JMP    LF75F   
LF74F: CLC            
       LDA    $DA     
       ADC    #$06    
       STA    $DA     
       LDA    $DB     
       ADC    #$FF    
       STA    $DB     
       JMP    LF75F   
LF75F: LDA    $91     
       CMP    #$01    
       BPL    LF776   
       LDA    #$01    
       STA    $91     
       SEC            
       LDA    #$00    
       SBC    $8E     
       STA    $8E     
       LDA    #$00    
       SBC    $8F     
       STA    $8F     
LF776: LDA    #$58    
       CMP    $91     
       BCS    LF78D   
       SEC            
       LDA    #$00    
       SBC    $8E     
       STA    $8E     
       LDA    #$00    
       SBC    $8F     
       STA    $8F     
       LDA    #$58    
       STA    $91     
LF78D: LDA    $A5     
       BEQ    LF79C   
       LDA    #$F0    
       STA    $91     
       LDA    #$00    
       STA    $EB     
       JMP    LFC0E   
LF79C: STA    HMCLR   
       STA    WSYNC   
       LDA    $DB     
       TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E6     
       TYA            
       AND    #$0F    
       CLC            
       ADC    $E6     
       LDY    $E6     
       CMP    #$0F    
       BCC    LF7B8   
       SBC    #$0F    
       INY            
LF7B8: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM1    
       STA    WSYNC   
       BIT    VSYNC   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
LF7CA: DEY            
       BPL    LF7CA   
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$0A    
       CMP    $81     
       BCC    LF7F8   
       LDA    $83     
       CMP    #$80    
       ROR    $83     
       ROR    $82     
       SEC            
       LDA    #$00    
       SBC    $82     
       STA    $82     
       LDA    #$00    
       SBC    $83     
       STA    $83     
       LDA    #$0A    
       STA    $81     
       LDA    #$C0    
       STA    $80     
LF7F8: LDA    #$0A    
       CMP    $85     
       BCC    LF81B   
       LDA    $87     
       CMP    #$80    
       ROR    $87     
       ROR    $86     
       SEC            
       LDA    #$00    
       SBC    $86     
       STA    $86     
       LDA    #$00    
       SBC    $87     
       STA    $87     
       LDA    #$0A    
       STA    $85     
       LDA    #$C0    
       STA    $84     
LF81B: LDA    #$58    
       CMP    $81     
       BCS    LF82D   
       LDA    #$FF    
       STA    $83     
       LDA    #$00    
       STA    $82     
       LDA    #$58    
       STA    $81     
LF82D: LDA    #$58    
       CMP    $85     
       BCS    LF83F   
       LDA    #$FF    
       STA    $87     
       LDA    #$00    
       STA    $86     
       LDA    #$58    
       STA    $85     
LF83F: LDA    $94     
       ASL            
       ASL            
       ADC    $94     
       ADC    #$4A    
       STA    $96     
       LDA    $95     
       ASL            
       ASL            
       ADC    $95     
       ADC    #$4A    
       STA    $98     
       LDA    $A5     
       BNE    LF85F   
       LDA    $A0     
       BMI    LF85F   
       STA    AUDV0   
       DEC    $A0     
LF85F: LDX    #$16    
       LDA    $A8,X   
       STA    $A6     
       LDA    $BE,X   
       STA    $A7     
       LDA    #$7C    
       STA    $ED     
       LDA    $EF     
       BNE    LF87F   
       DEC    $D8     
       LDA    $D8     
       INC    $D8     
       CMP    $94     
       BCS    LF87F   
       LDA    #$0F    
       STA    $EF     
LF87F: LDA    $EF     
       BEQ    LF887   
       STA    $ED     
       DEC    $EF     
LF887: LDA    #$4D    
       STA    $EE     
       LDA    $F0     
       BNE    LF89D   
       DEC    $D8     
       LDA    $D8     
       INC    $D8     
       CMP    $95     
       BCS    LF89D   
       LDA    #$0F    
       STA    $F0     
LF89D: LDA    $F0     
       BEQ    LF8A5   
       STA    $EE     
       DEC    $F0     
LF8A5: LDA    $A5     
       BNE    LF8E9   
       LDA    $F3     
       BEQ    LF8E9   
       BPL    LF8C3   
       LDA    #$01    
       STA    $F3     
       LDA    #$00    
       STA    $F2     
       LDA    #$0A    
       STA    $F1     
       LDA    #$08    
       STA    AUDV1   
       LDA    #$07    
       STA    AUDC1   
LF8C3: DEC    $F2     
       BPL    LF8E9   
       DEC    $F1     
       BPL    LF8D8   
       LDA    #$00    
       STA    $F3     
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC1   
       JMP    LF8E9   
LF8D8: LDY    $F1     
       LDA    LFFA7,Y 
       STA    $F2     
       DEC    $F2     
       LDA    LFF9D,Y 
       STA    AUDF1   
       JMP    LF8E9   
LF8E9: LDA    $F4     
       BMI    LF928   
       BEQ    LF907   
       LSR            
       TAX            
       LSR            
       AND    #$F8    
       CLC            
       ADC    #$86    
       STA    $DF     
       LDA    #$01    
       STA    $DC     
       TXA            
       AND    #$0F    
       ORA    #$21    
       STA    COLUP1  
       JMP    LF98E   
LF907: LDA    #$28    
       STA    COLUP1  
       LDA    #$22    
       STA    $E2     
       LDA    $F5     
       AND    #$01    
       STA    $9F     
       LDA    #$00    
       STA    $8E     
       LDX    #$01    
       LDA    $F5     
       AND    #$02    
       BEQ    LF923   
       LDX    #$FF    
LF923: STX    $8F     
       JMP    LF98E   
LF928: LDA    $DE     
       BNE    LF936   
       LDA    #$0A    
       STA    $DE     
       LDA    $DD     
       EOR    #$FF    
       STA    $DD     
LF936: DEC    $DE     
       LDA    #$2E    
       STA    $DF     
       LDA    $DD     
       BEQ    LF944   
       LDA    #$25    
       STA    $DF     
LF944: DEC    $E3     
       BPL    LF954   
       LDA    #$28    
       STA    $E3     
       DEC    $E4     
       BNE    LF954   
       LDA    #$04    
       STA    $E4     
LF954: LDA    $E4     
       AND    #$01    
       BNE    LF96F   
       LDA    $E4     
       AND    #$02    
       BNE    LF969   
       DEC    $E2     
       LDA    #$25    
       STA    $DF     
       JMP    LF96F   
LF969: INC    $E2     
       LDA    #$2E    
       STA    $DF     
LF96F: LDA    $DC     
       BEQ    LF982   
       INC    $E1     
       LDA    #$8A    
       CMP    $E1     
       BCS    LF97F   
       LDA    #$00    
       STA    $DC     
LF97F: JMP    LF98E   
LF982: DEC    $E1     
       LDA    #$0A    
       CMP    $E1     
       BCC    LF98E   
       LDA    #$01    
       STA    $DC     
LF98E: JMP    LFA00   
LF991: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFA00: STA    HMCLR   
       STA    WSYNC   
       LDA    $E1     
       TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E6     
       TYA            
       AND    #$0F    
       CLC            
       ADC    $E6     
       LDY    $E6     
       CMP    #$0F    
       BCC    LFA1C   
       SBC    #$0F    
       INY            
LFA1C: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP1    
       STA    WSYNC   
       BIT    VSYNC   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
LFA2E: DEY            
       BPL    LFA2E   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
LFA39: LDA    INTIM   
       BNE    LFA39   
       STA    VBLANK  
       STA    GRP0    
       STA    GRP1    
       STA    ENAM1   
       STA    WSYNC   
       JMP    LFB00   
LFA4B: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
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
       .byte $00,$00,$00,$00,$00
LFB00: LDA    #$06    
       STA    COLUBK  
       LDX    #$04    
LFB06: STA    WSYNC   
       TXA            
       AND    #$0F    
       TAY            
       LDA    ($96),Y 
       STA    GRP0    
       LDA    $ED     
       STA    COLUP0  
       LDA    #$00    
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($98),Y 
       STA    GRP0    
       LDA    $EE     
       STA    COLUP0  
       STA    WSYNC   
       LDA    $ED     
       STA    COLUP0  
       TXA            
       AND    #$0F    
       TAY            
       LDA    ($96),Y 
       STA    GRP0    
       STA    GRP0    
       LDA    #$00    
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($98),Y 
       STA    GRP0    
       LDA    $EE     
       STA    COLUP0  
       DEX            
       BPL    LFB06   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    COLUBK  
       LDA    $DC     
       BEQ    LFB60   
       LDA    #$00    
       STA    REFP1   
       JMP    LFB64   
LFB60: LDA    #$08    
       STA    REFP1   
LFB64: LDY    #$00    
       LDA    #$01    
       STA    CTRLPF  
       STA    WSYNC   
       LDX    #$0A    
LFB6E: DEX            
       BNE    LFB6E   
       LDX    #$58    
       NOP            
       NOP            
       NOP            
       JMP    LFB85   
LFB79: LDA    $F8     
       BEQ    LFB96   
LFB7D: LDA    $F8     
       BEQ    LFBA9   
LFB81: LDA    $F8     
       BEQ    LFBE2   
LFB85: TXA            
       SEC            
       SBC    $81     
       ADC    #$09    
       STY    GRP1    
       LDY    #$7C    
       STY    COLUP0  
       BCC    LFB79   
       TAY            
       LDA    ($9A),Y 
LFB96: STA    GRP0    
       STA    $89     
       LDA    #$00    
       STA    PF0     
       TXA            
       SEC            
       SBC    $85     
       ADC    #$09    
       BCC    LFB7D   
       TAY            
       LDA    ($9C),Y 
LFBA9: STA    GRP0    
       LDY    #$4D    
       STY    COLUP0  
       STA    $8B     
       PLA            
       CPX    $91     
       PHP            
       TXA            
       STA    COLUPF  
       LSR            
       LSR            
       TAY            
       LDA.wy $00A8,Y 
       NOP            
       NOP            
       STA    PF0     
       LDA    $89     
       STA    GRP0    
       LDA    #$7C    
       STA    COLUP0  
       SEC            
       LDA.wy $00BE,Y 
       STA    PF0     
       LDA    #$4D    
       STA    COLUP0  
       LDA    $8B     
       STA    GRP0    
       TXA            
       SBC    $E2     
       ADC    #$08    
       BCC    LFB81   
       TAY            
       LDA    ($DF),Y 
LFBE2: TAY            
       DEX            
       BNE    LFB85   
       STX    PF0     
       STX    ENAM1   
       STA    WSYNC   
       LDA    #$06    
       STA    COLUBK  
       STX    GRP0    
       STX    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$1E    
LFC00: STA    WSYNC   
       DEX            
       BNE    LFC00   
       STA    PF0     
       LDA    #$00    
       STA    COLUBK  
       JMP    LF40D   
LFC0E: LDA    #$0A    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDC1   
       DEC    $D5     
       BPL    LFC3D   
       DEC    $D4     
       BPL    LFC22   
       LDA    #$0F    
       STA    $D4     
LFC22: LDY    $D4     
       LDA    LFF8D,Y 
       STA    $D5     
       DEC    $D5     
       LDA    LFF7D,Y 
       BMI    LFC39   
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDV0   
       JMP    LFC3D   
LFC39: LDA    #$00    
       STA    AUDV0   
LFC3D: DEC    $D7     
       BPL    LFC64   
       DEC    $D6     
       BPL    LFC49   
       LDA    #$0B    
       STA    $D6     
LFC49: LDY    $D6     
       LDA    LFFBD,Y 
       STA    $D7     
       DEC    $D7     
       LDA    LFFB1,Y 
       BMI    LFC60   
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       JMP    LFC64   
LFC60: LDA    #$00    
       STA    AUDV1   
LFC64: LDA    $EB     
       BEQ    LFC6B   
       JMP    LF183   
LFC6B: JMP    LF79C   
LFC6E: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$00,$0C,$0C,$8C,$DC,$FC,$7C,$2C,$0C,$00,$0C,$1C,$3C,$7C
       .byte $7C,$3C,$0C,$0C,$00,$30,$30,$31,$3B,$3F,$3E,$34,$30,$00,$30,$38
       .byte $3C,$3E,$3E,$3C,$30,$30,$00,$00,$00,$7D,$FE,$74,$3E,$71,$E0,$00
       .byte $E0,$70,$38,$7C,$FF,$74,$0F,$00,$00,$00,$92,$54,$28,$28,$28,$28
       .byte $00,$00,$00,$00,$1C,$36,$3E,$2A,$5D,$63,$00,$00,$3C,$42,$42,$42
       .byte $3C,$3E,$08,$08,$28,$18,$7E,$60,$1C,$42,$3C,$7C,$02,$1C,$02,$7C
       .byte $04,$04,$7E,$44,$44,$7C,$02,$7C,$40,$7E,$3C,$42,$7C,$60,$1E,$10
       .byte $08,$04,$02,$7E,$3C,$42,$3C,$42,$3C,$02,$02,$1E,$22,$1C,$44,$AA
       .byte $92,$82,$82,$00,$00,$00,$00,$00,$00,$3E,$08,$08,$08,$08,$28,$18
       .byte $00,$7E,$40,$20,$1C,$02,$42,$3C,$00,$7C,$02,$02,$3C,$02,$02,$7C
LFE9E: .byte $00,$E0,$E0,$E0,$E0,$E0,$E0
LFEA5: .byte $E0,$00,$80,$C0,$C0,$C0,$E0,$60,$60,$60,$40,$40,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFEC3: .byte $00,$00,$03,$03,$F3,$3B,$F3
LFECA: .byte $F0,$01,$C1,$E3,$E3,$E3,$E6,$76,$36,$36,$36,$34,$34,$34,$34,$34
       .byte $34,$36,$36,$36,$36,$B6,$72,$33,$13,$03,$01,$00,$00,$00
LFEE8: .byte $00,$1F,$7F,$71,$71,$71,$7F
LFEEF: .byte $1F,$01,$C1,$C3,$C3,$E7,$E6,$E6,$E6,$76,$74,$74,$34,$34,$34,$34
       .byte $34,$34,$36,$26,$26,$26,$66,$67,$43,$53,$51,$50,$B0,$A0
LFF0D: .byte $C0,$E0,$E0,$E0,$E0,$E0,$E0
LFF14: .byte $E0,$00,$B0,$B0,$F0,$F0,$F0,$F0,$E0,$C0,$C0,$C0,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
LFF32: .byte $80,$3C,$3C,$7D,$FD,$DD,$9C
LFF39: .byte $1C,$04,$8E,$BE,$BE,$BF,$BF,$BF,$B3,$B1,$A3,$A2,$A2,$86,$86,$8C
       .byte $9C,$98,$B8,$B0,$B0,$B2,$B2,$A6,$BE,$BC,$DC,$D0,$C0,$80
LFF57: .byte $00,$7E,$FF,$C3,$F3,$03,$FF
LFF5E: .byte $7E,$18,$7C,$7E,$7E,$4E,$0E,$0E,$06,$06,$06,$06,$06,$0E,$0C,$0C
       .byte $0C,$0C,$18,$19,$FB,$7F,$3F,$27,$40,$40,$00,$00,$00,$00,$00
LFF7D: .byte $FF,$11,$FF,$11,$FF,$10,$FF,$10,$FF,$0F,$FF,$0F,$FF,$12,$FF,$12
LFF8D: .byte $28,$14,$0A,$1A,$28,$14,$0A,$1A,$28,$14,$0A,$1A,$28,$14,$0A,$1A
LFF9D: .byte $0F,$0E,$0D,$0C,$0B,$0A,$09,$08,$07,$06
LFFA7: .byte $06,$02,$02,$02,$02,$02,$02,$02,$02,$10
LFFB1: .byte $FF,$78,$FF,$28,$FF,$78,$FF,$78,$FF,$28,$FF,$78
LFFBD: .byte $10,$02,$04,$02,$0A,$02,$16,$02,$0A,$02,$16,$02,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
       .byte $F0,$00,$F0
