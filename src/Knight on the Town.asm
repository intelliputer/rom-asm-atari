; Disassembly of roms/Knight on the Town.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Knight on the Town.bin
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
INPT4   =  $3C
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
       JSR    L3FB6   
       LDA    #$01    
       STA    $AF     
L3013: LDA    #$22    
       STA    TIM64T  
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       INC    $94     
       LDA    #$02    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    COLUBK  
       STA    NUSIZ0  
       LDA    #$F8    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $AF     
       BEQ    L305D   
       LDY    #$FF    
       STY    $B0     
       STY    $D1     
       INY            
       STY    $B1     
       STY    $AF     
       STY    $B2     
       LDA    #$0D    
       STA    $8C     
       BNE    L3073   
L305D: LDA    SWCHB   
       ROR            
       BCC    L3067   
       LDA    $B1     
       BEQ    L3076   
L3067: LDY    #$01    
       STY    $8C     
       DEY            
       LDX    #$06    
L306E: STY    $AC,X   
       DEX            
       BPL    L306E   
L3073: JSR    L395D   
L3076: LDY    #$01    
       LDA    ($86),Y 
       STA    $C1     
       DEY            
       LDA    ($86),Y 
       STA    $C2     
       LDY    #$30    
       LDA    ($B7),Y 
       STA    $CC     
       LDA    $8D     
       JSR    L381D   
       STA    $9D     
       STY    $9C     
       CLC            
       LDA    $8D     
       ADC    #$08    
       LDX    $AB     
       BEQ    L309B   
       SBC    #$0D    
L309B: JSR    L381D   
       STA    WSYNC   
       NOP            
       NOP            
       NOP            
       STA    HMBL    
L30A5: DEY            
       BNE    L30A5   
       STA    RESBL   
       LDA    $B9     
       JSR    L381D   
       STA    $BC     
       STY    $BB     
       LDA    $CD     
       TAX            
       SEC            
       SBC    #$04    
       JSR    L381D   
       STA    $A8     
       STY    $A6     
       TXA            
       CLC            
       ADC    #$04    
       JSR    L381D   
       STA    $A9     
       STY    $A7     
       LDX    #$01    
L30CD: LDY    $A6,X   
       STA    WSYNC   
       LDA    $A8,X   
       STA    HMP0,X  
L30D5: DEY            
       BNE    L30D5   
       STA    RESP0,X 
       DEX            
       BPL    L30CD   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    REFP0   
       LDA    #$08    
       STA    REFP1   
L30E9: LDA    INTIM   
       BNE    L30E9   
       STA    WSYNC   
       STA    CXCLR   
       STA    VBLANK  
       STA    NUSIZ1  
       LDA    #$11    
       STA    CTRLPF  
       LDA    #$14    
       STA    COLUPF  
       LDA    #$00    
       STA    COLUBK  
       STA    HMBL    
       LDA    #$ED    
       STA    TIM64T  
       LDY    #$0C    
L310B: STA    WSYNC   
       DEY            
       BNE    L310B   
       LDY    #$11    
L3112: STA    WSYNC   
       LDA    ($9A),Y 
       STA    GRP0    
       STA    GRP1    
       DEY            
       BNE    L3112   
       LDA    #$4A    
       STA    COLUP0  
       STA    HMCLR   
       LDA    $BF     
       STA    COLUP1  
       STA    WSYNC   
       LDA    $9F     
       LDY    $9E     
       STA    HMP1    
L312F: DEY            
       BNE    L312F   
       STA    RESP1   
       STA    WSYNC   
       LDA    #$D0    
       LDY    #$0B    
       STA    HMP0    
L313C: DEY            
       BNE    L313C   
       STA    RESP0   
       STA    WSYNC   
       LDA    $AA     
       STA    REFP1   
       LDY    #$32    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$08    
       STA    $B6     
L3151: LDA    ($86),Y 
       LDX    #$00    
       STA    WSYNC   
       STX    PF0     
       CPY    $8A     
       BMI    L315F   
       LDA    #$00    
L315F: STA    GRP1    
       DEY            
       LDA    ($BD),Y 
       STA    GRP0    
       LDA    #$50    
       STA    PF0     
       DEC    $B6     
       BNE    L3151   
       LDA    #$21    
       STA    $B6     
L3172: LDA    ($86),Y 
       LDX    #$00    
       STA    WSYNC   
       STX    PF0     
       CPY    $8A     
       BMI    L3180   
       LDA    #$00    
L3180: STA    GRP1    
       LDA    ($BD),Y 
       STA    GRP0    
       DEY            
       LDA    #$70    
       STA    PF0     
       DEC    $B6     
       BNE    L3172   
       LDA    #$04    
       STA    $B6     
L3193: LDA    ($86),Y 
       STA    WSYNC   
       STX    PF0     
       STX    PF1     
       CPY    $8A     
       BMI    L31A1   
       LDA    #$00    
L31A1: STA    GRP1    
       STX    GRP0    
       NOP            
       DEY            
       LDA    #$F0    
       STA    PF0     
       LDA    #$C0    
       STA    PF1     
       DEC    $B6     
       BNE    L3193   
       LDA    #$04    
       STA    $B6     
L31B7: LDA    ($86),Y 
       STA    WSYNC   
       STX    PF0     
       CPY    $8A     
       BMI    L31C3   
       LDA    #$00    
L31C3: STA    GRP1    
       LDA    #$00    
       STA    PF1     
       DEY            
       NOP            
       NOP            
       LDA    #$70    
       STA    PF0     
       DEC    $B6     
       BNE    L31B7   
       LDA    #$F1    
       STA    CTRLPF  
       LDA    $9D     
       STA    HMP0    
       LDA    $AB     
       STA    REFP0   
       LDA    $A1     
       STA    HMP1    
       LDX    #$00    
       LDA    $94     
       LSR            
       LDA    $C1     
       BCS    L31FB   
       STA    WSYNC   
       STX    PF0     
       STA    GRP1    
       STX    HMP1    
       NOP            
       NOP            
       NOP            
       JMP    L3208   
L31FB: STA    WSYNC   
       STX    PF0     
       STA    GRP1    
       LDX    $A0     
L3203: DEX            
       BNE    L3203   
       STA    RESP1   
L3208: DEY            
       LDA    #$70    
       STA    PF0     
       LDA    $C2     
       STA    WSYNC   
       STX    PF0     
       STA    GRP1    
       LDX    $9C     
L3217: DEX            
       BNE    L3217   
       STA    RESP0   
       LDY    #$39    
       LDA    #$70    
       STA    PF0     
       STA    WSYNC   
       STA    HMOVE   
       STX    PF0     
       LDA    #$00    
       STA    GRP0    
       LDA    ($88),Y 
       CPY    $8B     
       BMI    L3233   
       TXA            
L3233: STA    GRP1    
       LDA    #$1E    
       STA    $B6     
       DEY            
       LDA    #$70    
       STA    PF0     
       LDA    #$06    
       STA    $C1     
       LDA    $C0     
       STA    COLUP1  
L3246: LDA    ($90),Y 
       STA    WSYNC   
       STX    PF0     
       STA    GRP0    
       LDA    ($C3),Y 
       STA    ENABL   
       LDA    ($88),Y 
       CPY    $8B     
       BMI    L325A   
       LDA    #$00    
L325A: STA    GRP1    
       DEY            
       LDA    #$70    
       STA    PF0     
       DEC    $B6     
       BNE    L3246   
       CPY    #$02    
       BMI    L3272   
       LDA    #$1A    
       STA    $B6     
       LDX    #$30    
       JMP    L3246   
L3272: STA    HMCLR   
       LDA    $BC     
       STA    HMP1    
       LDA    #$00    
       STA    GRP1    
       LDA    ($90),Y 
       LDY    #$2F    
       STA    WSYNC   
       STX    PF0     
       STA    GRP0    
       LDX    $BB     
L3288: DEX            
       BNE    L3288   
       STA    RESP1   
       STX    GRP0    
       LDA    #$70    
       STA    PF0     
       LDX    #$F8    
       STA    WSYNC   
       STA    HMOVE   
       STA    REFP1   
       STX    CTRLPF  
       STX    COLUP1  
       LDX    $80     
       STX    PF0     
       LDA    $81     
       STA    PF1     
       LDA    $82     
       STA    PF2     
       JMP    L32C2   
L32AE: STA    WSYNC   
       LDX    $80     
       STX    PF0     
       STA    GRP1    
       LDA    $CB     
       STA    COLUBK  
       LDA    $81     
       STA    PF1     
       LDA    $82     
       STA    PF2     
L32C2: LDA    ($B7),Y 
       DEY            
       LDX    $83     
       STX    PF0     
       LDX    $84     
       STX    PF1     
       LDX    $85     
       STX    PF2     
       DEC    $C1     
       BNE    L32AE   
       LDX    #$14    
       STX    $B6     
       LDX    #$15    
       STA    WSYNC   
       STX    COLUPF  
       STX    CTRLPF  
       LDX    #$F0    
       STX    PF0     
       STA    GRP1    
       LDA    #$00    
       STA    PF1     
       STA    PF2     
L32ED: LDA    ($B7),Y 
       TAX            
       LDA    ($C6),Y 
       DEY            
       BMI    L3305   
       STA    WSYNC   
       STX    GRP1    
       STA    GRP0    
       DEC    $B6     
       BNE    L32ED   
       LDA    #$00    
       STA    PF0     
       BEQ    L32ED   
L3305: STA    WSYNC   
       INY            
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       STY    REFP0   
       STY    REFP1   
       STY    $B5     
       LDA    #$5C    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDY    #$07    
       STA    WSYNC   
L3328: DEY            
       BNE    L3328   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       LDA    #$00    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       JSR    L37D4   
L333F: LDA    INTIM   
       BNE    L333F   
L3344: LDA    $B3     
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$06    
       STA    $B4     
L334E: LDY    $B4     
       LDA    ($80),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($84),Y 
       STA    GRP0    
       LDA    ($86),Y 
       STA    $B6     
       LDA    ($88),Y 
       TAX            
       LDA    ($8A),Y 
       TAY            
       LDA    $B6     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $B4     
       BPL    L334E   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    COLUBK  
       LDA    $B5     
       BNE    L339C   
       INC    $B5     
       LDA    #$8C    
       LDY    #$3B    
       LDX    #$0A    
       SEC            
L338F: STA    $80,X   
       STY    $81,X   
       SBC    #$07    
       DEX            
       DEX            
       BPL    L338F   
       JMP    L3344   
L339C: LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$16    
       STA    TIM64T  
       LDA    #$46    
       BIT    SWCHB   
       BVS    L33B4   
       LDY    #$00    
       STY    $E1     
       LDA    #$5A    
L33B4: STA    $E2     
       JSR    L3786   
       JSR    L3599   
       INC    $E6     
       LDA    $E6     
       CMP    #$30    
       BMI    L33C8   
       LDA    #$00    
       STA    $E6     
L33C8: LDY    #$00    
       LDA    $B0     
       BNE    L33DC   
       LDA    $E6     
       CMP    #$1A    
       BMI    L33DA   
       CMP    #$20    
       BPL    L33DA   
       LDY    #$02    
L33DA: STA    AUDF1   
L33DC: STY    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       JSR    L3A66   
       LDA    SWCHB   
       AND    #$08    
       BEQ    L340A   
       JSR    L3992   
       JSR    L3A02   
       JSR    L3831   
       JSR    L3549   
       JSR    L36E0   
       JSR    L3658   
       JSR    L384A   
       JSR    L3412   
       JSR    L3915   
       JSR    L3953   
L340A: LDA    INTIM   
       BNE    L340A   
       JMP    L3013   
L3412: LDY    #$01    
       LDA    $94     
       AND    #$20    
       BEQ    L341C   
       LDY    #$00    
L341C: STY    $DF     
       LDA    $D3     
       BNE    L3443   
       LDA    $CF     
       BEQ    L3444   
       DEC    $CF     
       BNE    L3433   
       LDA    #$00    
       STA    $D1     
       INC    $8C     
       JMP    L3512   
L3433: LDA    #$A9    
       STA    $C3     
       LDA    #$3E    
       STA    $C4     
L343B: LDA    #$C5    
       STA    $90     
       LDA    #$3A    
       STA    $91     
L3443: RTS            

L3444: LDA    $DE     
       BNE    L3443   
       LDA    $B0     
       BNE    L345A   
       LDA    $D0     
       BEQ    L3456   
       LDA    #$0D    
       STA    $95     
       BNE    L34B1   
L3456: LDA    $95     
       BNE    L34AF   
L345A: LDA    $8D     
       CMP    #$91    
       BPL    L347A   
       BIT    INPT4   
       BMI    L34B1   
L3464: LDA    #$12    
       STA    $D0     
       LDA    #$15    
       STA    $E4     
       LDA    #$08    
       STA    $E3     
       LDA    #$00    
       STA    $E5     
       LDA    #$0D    
       STA    $DB     
       BNE    L34B1   
L347A: LDA    $DA     
       BNE    L3493   
       LDA    $B0     
       BNE    L348F   
       LDA    $AB     
       BNE    L34B1   
       BIT    INPT4   
       BMI    L34B1   
       BIT    SWCHA   
       BMI    L3464   
L348F: LDA    #$0A    
       STA    $DA     
L3493: JSR    L343B   
       DEC    $DA     
       BNE    L3443   
       JSR    L39F0   
       LDY    #$01    
       LDA    $B0     
       BNE    L34AC   
       LDA    $DF     
       BNE    L34AC   
       LDY    #$FF    
       JSR    L36B8   
L34AC: STY    $DE     
       RTS            

L34AF: DEC    $95     
L34B1: LDA    $B0     
       BNE    L351A   
       LDA    $D0     
       BNE    L34F4   
       LDA    $94     
       AND    #$07    
       CMP    #$04    
       BNE    L351A   
       LDA    SWCHA   
       ASL            
       BCS    L34DD   
       LDA    #$00    
       STA    $AB     
       LDA    #$01    
       STA    $D9     
       INC    $8D     
       LDA    $8D     
       CMP    #$94    
       BMI    L34F4   
       LDA    #$94    
       STA    $8D     
       BNE    L34F4   
L34DD: ASL            
       BCS    L351B   
       LDA    #$08    
       STA    $AB     
       LDA    #$FF    
       STA    $D9     
       DEC    $8D     
       LDA    $8D     
       CMP    #$20    
       BPL    L34F4   
       LDA    #$20    
       STA    $8D     
L34F4: LDA    $D0     
       BNE    L351F   
       DEC    $92     
       BPL    L3500   
       LDA    #$02    
       STA    $92     
L3500: LDX    $92     
       LDA    L3EFF,X 
       STA    $90     
       LDA    #$3E    
       STA    $91     
       LDA    L3EFC,X 
       LDY    $D1     
       BNE    L3514   
L3512: LDA    #$B4    
L3514: STA    $C3     
       LDA    #$3E    
       STA    $C4     
L351A: RTS            

L351B: LDA    #$00    
       STA    $D9     
L351F: LDA    $D0     
       BEQ    L3500   
       DEC    $D0     
       LDA    #$5C    
       STA    $90     
       LDA    #$3E    
       STA    $91     
       LDX    $D1     
       BEQ    L3539   
       LDA    #$3B    
       STA    $C3     
       LDA    #$3D    
       STA    $C4     
L3539: LDA    $8D     
       CMP    #$20    
       BMI    L3548   
       CMP    #$90    
       BPL    L3548   
       CLC            
       ADC    $D9     
       STA    $8D     
L3548: RTS            

L3549: LDA    $B0     
       BNE    L357C   
       LDA    $D3     
       BNE    L357C   
       LDA    $95     
       BNE    L3598   
       LDA    $B2     
       BNE    L3598   
       LDA    SWCHA   
       AND    #$20    
       BNE    L356E   
       LDA    $8D     
       CMP    #$21    
       BPL    L356E   
       LDX    $AB     
       BEQ    L356E   
       LDA    #$FF    
       STA    $D1     
L356E: JSR    L3A57   
       CLC            
       ADC    #$20    
       CMP    $8D     
       BPL    L357D   
       LDA    #$01    
       STA    $D3     
L357C: RTS            

L357D: SBC    #$07    
       CMP    $8D     
       BPL    L3598   
       LDA    SWCHA   
       AND    #$10    
       BNE    L3598   
L358A: LDA    $D1     
       BEQ    L3598   
       LDA    $AB     
       BNE    L3598   
       LDY    #$07    
       STY    $CF     
       STY    $95     
L3598: RTS            

L3599: LDA    $94     
       LSR            
       BCS    L3604   
       LDA    #$48    
       STA    $BF     
       LDA    #$44    
       STA    $C0     
       LDA    #$00    
       STA    $AA     
       LDA    $A2     
       JSR    L381D   
       STA    $9F     
       STY    $9E     
       LDA    #$27    
       STA    $8A     
       LDA    $A4     
       JSR    L381D   
       STA    $A1     
       STY    $A0     
       LDA    #$13    
       STA    $8B     
       LDA    #$3A    
       STA    $89     
       CLC            
       LDA    #$00    
       LDX    $DE     
       BMI    L35D7   
       LDA    #$01    
       LDX    $DE     
       BNE    L35D7   
       LDA    $DF     
L35D7: ADC    $B2     
       ADC    $D7     
       TAX            
       LDA    L3CA7,X 
       STA    $86     
       LDA    #$3C    
       STA    $87     
       LDA    #$A1    
       CPX    #$02    
       BPL    L35ED   
       LDA    #$9C    
L35ED: STA    $A2     
       LDX    #$EC    
       LDA    $A4     
       CMP    #$21    
       BMI    L3601   
       LDX    #$A0    
       LDA    $94     
       AND    #$08    
       BEQ    L3601   
       LDX    #$B2    
L3601: STX    $88     
       RTS            

L3604: LDA    #$42    
       STA    $BF     
       STA    $C0     
       LDA    $8E     
       JSR    L381D   
       STA    $9F     
       STY    $9E     
       LDA    #$3E    
       STA    $87     
       STA    $89     
       LDA    $94     
       STA    $AA     
       LDX    #$FB    
       STX    $86     
       STX    $88     
       LDX    #$3C    
       STX    $8A     
       LDX    #$43    
       STX    $8B     
       LDA    $8F     
       TAX            
       SEC            
       SBC    #$39    
       BPL    L3637   
       STX    $8B     
       BMI    L3639   
L3637: STA    $8A     
L3639: SEC            
       LDA    $86     
       SBC    $8A     
       STA    $86     
       SEC            
       LDA    $88     
       SBC    $8B     
       STA    $88     
       LDA    $8A     
       CMP    #$0B    
       BPL    L3657   
       CLC            
       LDA    #$0A    
       SBC    $8A     
       CLC            
       ADC    $88     
       STA    $88     
L3657: RTS            

L3658: LDA    $D3     
       BNE    L36A2   
       LDA    $E1     
       BNE    L36A2   
       DEC    $8F     
       BMI    L3689   
       BNE    L36A3   
       JSR    L3A48   
       LDA    L3C9E,X 
       STA    $D8     
       JSR    L3A57   
       ADC    #$22    
       CMP    $8E     
       BMI    L3689   
       SBC    #$07    
       CMP    $8E     
       BPL    L3689   
       LDA    $8C     
       CMP    #$01    
       BEQ    L3689   
       CMP    #$0F    
       BEQ    L3689   
       DEC    $8C     
L3689: LDA    #$6B    
       LDX    $B0     
       BNE    L3694   
       BIT    SWCHB   
       BPL    L369A   
L3694: LDX    $D8     
       BEQ    L369C   
       DEC    $D8     
L369A: LDA    #$00    
L369C: STA    $8F     
       LDA    $CD     
       STA    $8E     
L36A2: RTS            

L36A3: LDA    $8E     
L36A5: SEC            
       SBC    $8D     
       BCS    L36AC   
       EOR    #$FF    
L36AC: CMP    #$07    
       BPL    L36D0   
       LDA    $B0     
       BNE    L36D0   
       BIT    CXPPMM  
       BPL    L36D0   
L36B8: LDA    #$7F    
       STA    $D2     
L36BC: LDX    #$01    
       STX    $D3     
       LDX    #$21    
       STX    $E3     
       LDA    #$0C    
       STA    $DB     
       LDA    #$0E    
       STA    $E4     
       LDA    #$00    
       STA    $E5     
L36D0: RTS            

L36D1: .byte $A5,$8D
L36D3: CMP    #$80    
       BMI    L36D9   
       LDA    #$80    
L36D9: CMP    #$30    
       BPL    L36DF   
       LDA    #$30    
L36DF: RTS            

L36E0: LDA    $D3     
       BNE    L3734   
       LDA    $94     
       AND    #$03    
       CMP    #$02    
       BNE    L370E   
       SEC            
       LDA    $8D     
       SBC    $CD     
       BCS    L36F5   
       EOR    #$FF    
L36F5: CMP    #$10    
       BMI    L3704   
       LDX    #$00    
       LDA    $8D     
       CMP    $CD     
       BPL    L3702   
       DEX            
L3702: STX    $E0     
L3704: LDX    $E0     
       BPL    L370C   
       DEC    $CD     
       BNE    L370E   
L370C: INC    $CD     
L370E: LDA    $CD     
       JSR    L36D3   
       STA    $CD     
       JSR    L3A57   
       ADC    #$20    
       CMP    $CD     
       BMI    L3722   
       LDX    #$00    
       STX    $E1     
L3722: LDA    $CA     
       BEQ    L3728   
       DEC    $CA     
L3728: LDA    $A4     
       CMP    #$21    
       BPL    L3741   
       LDA    $8D     
       CMP    $E2     
       BPL    L3735   
L3734: RTS            

L3735: LDX    #$00    
       LDA    $8C     
       CMP    #$0A    
       BMI    L373F   
       LDX    #$FF    
L373F: STX    $C5     
L3741: LDA    $C5     
       BNE    L374A   
       LDA    $94     
       LSR            
       BCS    L3760   
L374A: INC    $A4     
       LDA    $E4     
       BNE    L3760   
       LDA    $DE     
       BNE    L3760   
       LDA    #$01    
       STA    $DB     
       LDA    #$04    
       STA    $E4     
       LDA    #$1D    
       STA    $E3     
L3760: LDA    #$92    
       CMP    $A4     
       BMI    L376F   
       JSR    L3A57   
       ADC    #$22    
       CMP    $A4     
       BPL    L377D   
L376F: JSR    L3A48   
       LDA    L3CA1,X 
       STA    $CA     
       LDA    #$20    
       STA    $A4     
       BNE    L3734   
L377D: LDA    $DE     
       BNE    L3734   
       LDA    $A4     
       JMP    L36A5   
L3786: LDA    #$3B    
       STA    $9B     
       LDA    $94     
       LDX    #$00    
       AND    #$10    
       BNE    L3794   
       LDX    #$0E    
L3794: STX    $9A     
       LDA    #$3D    
       STA    $B8     
       LDA    $94     
       LDX    #$31    
       AND    #$10    
       BEQ    L37A4   
       LDX    #$9A    
L37A4: STX    $B7     
       SEC            
       LDA    $B7     
       SBC    $BA     
       STA    $B7     
       LDX    #$05    
       LDA    #$FF    
L37B1: STA    $80,X   
       DEX            
       BPL    L37B1   
       LDX    $8C     
       LDY    L3F12,X 
       LDA    L3F02,X 
       STA.wy $0080,Y 
       LDA    #$00    
L37C3: INY            
       CPY    #$06    
       BEQ    L37CD   
       STA.wy $0080,Y 
       BNE    L37C3   
L37CD: LDA    #$FC    
       ORA    $85     
       STA    $85     
       RTS            

L37D4: LDX    #$0A    
       LDA    $AE     
       JSR    L37FC   
       LDA    $AD     
       JSR    L37FC   
       LDA    $AC     
       JSR    L37FC   
       LDX    #$00    
L37E7: LDA    $80,X   
       CMP    #$20    
       BNE    L37FB   
       LDA    #$B4    
       STA    $80,X   
       LDA    #$3E    
       STA    $81,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    L37E7   
L37FB: RTS            

L37FC: PHA            
       AND    #$0F    
       TAY            
       LDA    L3B5F,Y 
       STA    $80,X   
       LDA    #$3B    
       STA    $81,X   
       DEX            
       DEX            
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    L3B5F,Y 
       STA    $80,X   
       LDA    #$3B    
       STA    $81,X   
       DEX            
       DEX            
       RTS            

L381D: CLC            
       ADC    #$01    
       LDY    #$00    
       SEC            
L3823: INY            
       SBC    #$0F    
       BCS    L3823   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

L3831: LDA    $B0     
       BNE    L3849   
       LDX    #$02    
       LDA    $94     
       AND    #$01    
       BEQ    L3849   
       SED            
       SEC            
L383F: LDA    $AC,X   
       ADC    #$00    
       STA    $AC,X   
       DEX            
       BPL    L383F   
       CLD            
L3849: RTS            

L384A: LDA    $D3     
       BMI    L38A1   
       LDA    $C9     
       BNE    L3872   
       LDA    $D4     
       BMI    L385C   
       LDA    $94     
       AND    #$08    
       BNE    L38A4   
L385C: INC    $BA     
       LDA    $BA     
       CMP    #$32    
       BMI    L38A4   
       LDA    #$02    
       LDY    $D4     
       BMI    L3870   
       JSR    L3A48   
       LDA    L3CA4,X 
L3870: STA    $C9     
L3872: LDA    #$00    
       STA    $BA     
       LDA    $DC     
       BNE    L38A0   
       DEC    $C9     
       BNE    L38A0   
       LDX    $D4     
       BEQ    L3892   
       CLC            
       LDA    $8D     
       ADC    #$04    
       LDY    $AB     
       BEQ    L388D   
       SBC    #$07    
L388D: STA    $D5     
       JMP    L389E   
L3892: LDX    $D9     
       INX            
       LDA    L3CAB,X 
       CLC            
       ADC    $8D     
       JSR    L36D3   
L389E: STA    $B9     
L38A0: RTS            

L38A1: JMP    L38DE   
L38A4: LDA    $B0     
       BNE    L3908   
       LDA    $D4     
       BMI    L38CA   
       LDA    $D3     
       BNE    L3908   
       LDA    $BA     
       CMP    #$31    
       BMI    L3908   
       LDA    $D0     
       BNE    L3908   
       SEC            
       LDA    $8D     
       SBC    $B9     
       BCS    L38C3   
       EOR    #$FF    
L38C3: CMP    #$06    
       BPL    L3908   
       JMP    L36BC   
L38CA: LDA    $D5     
       BEQ    L3908   
       LDA    $BA     
       CMP    #$0D    
       BNE    L3908   
       LDA    #$FF    
       STA    $D3     
       STA    $DC     
       LDA    #$9F    
       STA    $C8     
L38DE: LDA    $E4     
       BNE    L38F2   
       LDA    #$01    
       STA    $DB     
       LDA    #$35    
       STA    $E3     
       LDA    #$07    
       STA    $E5     
       LDA    #$03    
       STA    $E4     
L38F2: LDA    #$4F    
       CMP    $C8     
       BMI    L3908   
       LDA    #$01    
       STA    $D3     
       LDA    #$32    
       STA    $CB     
       LDA    #$CA    
       STA    $C6     
       LDA    #$3D    
       STA    $C7     
L3908: RTS            

L3909: JSR    L3512   
L390C: LDA    #$B4    
       STA    $90     
       LDA    #$3E    
       STA    $91     
       RTS            

L3915: LDA    $D3     
       BEQ    L3952   
       LDA    $DC     
       BNE    L3952   
       LDA    $D2     
       BNE    L3950   
       JSR    L3909   
       JSR    L3989   
       LDA    #$8E    
       CMP    $8D     
       BPL    L392F   
       STA    $8D     
L392F: LDA    $DD     
       BNE    L3946   
       LDX    #$00    
       STX    $E3     
       INX            
       STX    $DD     
       LDA    #$08    
       STA    $E4     
       LDA    #$01    
       STA    $DB     
       LDA    #$03    
       STA    $E5     
L3946: LDA    #$39    
       STA    $C6     
       LDA    #$FF    
       STA    $D4     
       BNE    L3952   
L3950: DEC    $D2     
L3952: RTS            

L3953: LDA    $DC     
       BEQ    L3991   
       DEC    $C8     
       BNE    L3991   
       STA    $E1     
L395D: LDX    #$0F    
L395F: LDA    #$00    
       STA    $CF,X   
       DEX            
       BPL    L395F   
       STA    $BA     
       STA    $8F     
       LDA    #$A2    
       STA    $CB     
       LDA    #$20    
       STA    $8D     
       STA    $A4     
       LDA    #$80    
       STA    $CD     
       STA    $8E     
       LDA    #$30    
       STA    $B9     
       JSR    L3500   
       LDA    #$B4    
       STA    $C6     
       LDA    #$3E    
       STA    $C7     
L3989: LDA    #$B4    
       STA    $BD     
       LDA    #$3E    
       STA    $BE     
L3991: RTS            

L3992: LDA    $DE     
       BEQ    L39DF   
       BMI    L39DF   
       JSR    L39F0   
       LDA    $B0     
       BNE    L39E0   
       LDA    #$00    
       STA    $E5     
       LDA    #$05    
       STA    $DB     
       LDA    SWCHA   
       AND    #$20    
       BNE    L39BC   
       LDA    $D7     
       BEQ    L39D3   
       DEC    $D7     
       LDA    #$32    
       STA    $E3     
       LDA    #$03    
       STA    $E4     
L39BC: LDA    SWCHA   
       AND    #$10    
       BNE    L39D3   
       LDA    $D7     
       BNE    L39D3   
       INC    $D6     
       INC    $D7     
       LDA    #$2F    
       STA    $E3     
       LDA    #$03    
       STA    $E4     
L39D3: LDA    $D6     
       CMP    #$0F    
       BMI    L39DF   
       LDA    #$FF    
       STA    $B0     
       STA    $AF     
L39DF: RTS            

L39E0: LDA    $DF     
       STA    $D7     
       LDA    $94     
       AND    #$3F    
       CMP    #$30    
       BNE    L39D3   
       INC    $D6     
       BNE    L39D3   
L39F0: JSR    L390C   
       LDA    #$22    
       LDY    $D7     
       BEQ    L39FB   
       LDA    #$4C    
L39FB: STA    $BD     
       LDA    #$3F    
       STA    $BE     
       RTS            

L3A02: LDA    $B0     
       BEQ    L3A47   
       BIT    INPT4   
       BMI    L3A0E   
       STA    $B1     
       BNE    L3A47   
L3A0E: LDA    $DE     
       BNE    L3A47   
       LDA    $94     
       AND    #$07    
       BNE    L3A47   
       LDA    $B2     
       BNE    L3A2F   
       LDY    $D1     
       BPL    L3A34   
       INY            
       STY    $AB     
       JSR    L3A57   
       ADC    #$18    
       CMP    $8D     
       BPL    L3A2F   
       JSR    L358A   
L3A2F: INC    $8D     
       JMP    L34F4   
L3A34: LDA    #$08    
       STA    $AB     
       DEC    $8D     
       JSR    L34F4   
       LDA    $8D     
       CMP    #$21    
       BPL    L3A47   
       LDA    #$FF    
       STA    $D1     
L3A47: RTS            

L3A48: LDX    #$00    
       LDA    $8C     
       CMP    #$05    
       BMI    L3A56   
       INX            
       CMP    #$09    
       BMI    L3A56   
       INX            
L3A56: RTS            

L3A57: LDA    $8C     
       CMP    #$0F    
       BNE    L3A61   
       LDY    #$01    
       STY    $B2     
L3A61: ASL            
       ASL            
       ASL            
       CLC            
       RTS            

L3A66: LDA    $B0     
       BNE    L3A8C   
       LDA    $94     
       AND    $E5     
       CMP    $E5     
       BNE    L3A96   
       LDA    $E4     
       BEQ    L3A96   
       LDA    $DB     
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       LDX    $E3     
       LDA    L3F7E,X 
       STA    AUDF0   
       INX            
       STX    $E3     
       DEC    $E4     
       BNE    L3A96   
L3A8C: LDX    #$00    
       STX    AUDV0   
       STX    AUDF0   
       LDX    #$03    
       STX    $E5     
L3A96: RTS            

L3A97: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$21,$51,$12,$24
       .byte $3E,$3F,$7A,$EA,$F5,$95,$DF,$7E,$0C,$18,$70,$00,$20,$10,$14,$12
       .byte $24,$3F,$6A,$EA,$C0,$F0,$E0,$F5,$95,$DF,$7E,$0C,$18,$70,$F0,$F0
       .byte $60,$30,$18,$0C,$19,$31,$7B,$76,$6E,$FC,$F8,$F0,$E0,$D0,$F0,$FE
       .byte $7E,$38,$77,$7C,$3F,$1E,$1C,$38,$40,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$28,$2A,$11
       .byte $02,$07,$0D,$0F,$32,$44,$80,$00,$00,$00,$00,$00,$00,$12,$14,$14
       .byte $88,$82,$42,$27,$1D,$07,$02,$02,$00,$3C,$66,$66,$66,$66,$66,$3C
       .byte $66,$66,$7C,$60,$62,$3C,$66,$66,$3C,$66,$66,$3C,$46,$06,$3E,$66
       .byte $66,$3C,$46,$06,$0C,$06,$46,$3C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$18
       .byte $18,$08,$04,$02,$62,$7E,$60,$60,$3C,$06,$46,$7C,$46,$06,$7C,$60
       .byte $60,$7E,$18,$18,$18,$18,$78,$38
L3B5F: .byte $20,$58,$4C,$38,$3F,$52,$26,$46,$2C,$32,$00,$00,$00,$00,$00,$00
       .byte $00,$82,$82,$82,$F2,$9A,$9A,$F2,$6E,$A2,$AE,$6A,$0A,$00,$00,$94
       .byte $94,$F6,$95,$90,$F0,$60,$23,$55,$55,$25,$00,$00,$00,$53,$55,$55
       .byte $63,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1C,$04,$04,$04,$04
       .byte $04,$06,$0E,$0F,$0F,$0F,$3E,$78,$38,$3C,$1C,$1C,$6C,$88,$98,$8C
       .byte $B6,$8E,$3E,$3C,$1C,$1C,$0D,$06,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$1C,$04,$04,$04,$04,$04,$06,$0E,$0F,$0F,$0F,$1E,$38,$78
       .byte $3C,$3C,$1C,$6C,$48,$58,$CC,$36,$0E,$3E,$3C,$1C,$1C,$0C,$07,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$1E,$1C,$08,$08,$08,$08,$18
       .byte $38,$72,$F2,$F6,$FF,$FF,$FF,$76,$24,$0E,$18,$3F,$3C,$3F,$1F,$1E
       .byte $1C,$0C,$05,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$3C,$38,$10,$08,$08,$30,$70,$E0,$E0,$E0,$E2,$F6,$FE,$FF,$FF
       .byte $EE,$44,$0E,$18,$37,$3C,$3F,$1F,$1E,$1C,$18,$10,$20,$00,$00
L3C9E: .byte $7F,$4F,$10
L3CA1: .byte $7F,$4F,$10
L3CA4: .byte $AF,$7F,$3F
L3CA7: .byte $00,$27,$4E,$76
L3CAB: .byte $F0,$00,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$40,$60,$30,$11,$19,$1B,$1A,$1E,$7C,$FC,$9E,$BE,$7E
       .byte $7E,$7E,$7E,$7C,$3D,$3D,$1B,$1A,$7E,$FC,$98,$90,$90,$18,$18,$18
       .byte $18,$18,$18,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$02,$02,$02,$02,$02,$02,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$04,$0C,$88
       .byte $98,$D8,$58,$58,$3E,$3F,$79,$7D,$7E,$7E,$7E,$7E,$3E,$BC,$BC,$D8
       .byte $58,$7E,$3F,$3D,$35,$35,$3C,$24,$24,$66,$42,$42,$42,$C3,$81,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$3E,$74,$6C,$28,$28,$28,$28,$38,$30,$70,$F0,$F0,$F0,$F0,$70
       .byte $70,$30,$76,$7A,$FB,$F9,$F0,$60,$3C,$2C,$70,$FE,$F8,$7E,$7C,$38
       .byte $30,$A0,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$77,$EE,$44,$44,$46,$62,$22,$3E,$7C,$F8,$FC
       .byte $FE,$F7,$73,$70,$2C,$5E,$72,$E9,$D8,$F0,$60,$3C,$38,$70,$FE,$F8
       .byte $7E,$7C,$78,$30,$20,$40,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3E
       .byte $74,$6C,$28,$28,$28,$28,$38,$30,$7F,$FF,$F0,$F0,$F0,$70,$70,$30
       .byte $76,$7A,$FB,$F9,$F0,$60,$3C,$3C,$70,$EE,$F8,$7E,$7C,$38,$30,$A0
       .byte $40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$38,$30,$10,$18,$18,$18
       .byte $18,$39,$73,$F6,$FC,$F8,$F0,$70,$70,$30,$60,$5E,$3E,$E0,$D8,$F0
       .byte $60,$3C,$30,$70,$EE,$F8,$7E,$3C,$B8,$70,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$02,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$30,$7C,$76,$DA,$E7,$BC,$9A,$42,$49
       .byte $24
L3EFC: .byte $A0,$9F,$9E
L3EFF: .byte $00,$3A,$74
L3F02: .byte $FF,$C0,$F0,$FC,$FF,$03,$0F,$3F,$FF,$30,$F0,$C0,$F0,$FC,$FF,$FF
L3F12: .byte $00,$01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$04,$04,$04,$04,$05
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$38,$10,$18,$0C,$1C
       .byte $38,$70,$F0,$F0,$FF,$FF,$E0,$F0,$71,$6F,$5C,$70,$38,$18,$1E,$3E
       .byte $78,$77,$3C,$3F,$1E,$1C,$18,$10,$20,$40,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$3C,$38,$10,$10,$18,$0C,$04,$04,$04,$0F,$0F,$0F
       .byte $0F,$1C,$3D,$79,$7E,$60,$78,$38,$18,$1E,$38,$70,$77,$3C,$3F,$1E
       .byte $1C,$18,$50,$20,$00,$00,$00,$00,$00,$00,$00,$00
L3F7E: .byte $18,$19,$1A,$1B,$1C,$1D,$1E,$9F,$0E,$0E,$0F,$0F,$0F,$0E,$0D,$0E
       .byte $0F,$0F,$0F,$0F,$0E,$0D,$0D,$0E,$0F,$0F,$0F,$0F,$0F,$03,$05,$10
       .byte $1A,$01,$29,$08,$07,$06,$05,$04,$03,$62,$43,$04,$05,$06,$07,$BF
       .byte $C0,$00,$90,$00,$00,$15,$12,$7F
L3FB6: LDA    #$30    
       STA.w  $0081   
L3FBB: LDY    #$00    
       LDA    ($80),Y 
       CLC            
       ADC.w  $0082   
       STA.w  $0082   
       INC.w  $0080   
       BNE    L3FBB   
       SEC            
       TYA            
       ADC.w  $0081   
       STA.w  $0081   
       CMP    #$40    
       BNE    L3FBB   
       LDA.w  $0082   
       CMP    #$00    
       BNE    L3FDF   
       RTS            

L3FDF: LDA    #$FF    
       STA    AUDV0   
       BRK            
       SBC    ($00,X) 
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BMI    L3FFD   
L3FFD: BMI    L3FFF   
L3FFF: .byte $30
