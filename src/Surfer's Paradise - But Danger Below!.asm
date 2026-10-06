; Disassembly of roms/Surfer's Paradise - But Danger Below!.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Surfer's Paradise - But Danger Below!.bin
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
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296
L3010   =   $3010

       ORG $3000

START:
       JMP    L3015   
L3003: JSR    L385C   
L3006: JSR    L302B   
       JSR    L34C2   
       JSR    L3055   
       JSR    L3313   
       JMP    L3006   
L3015: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       LDA    #$00    
L301D: STA    VSYNC,X 
       INX            
L3020: BNE    L301D   
       STA    SWACNT  
       STA    SWBCNT  
       JMP    L3003   
L302B: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       JSR    L3300   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       RTS            

L3043: STA    WSYNC   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
L304A: DEY            
       BPL    L304A   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

L3052: JMP    L31C8   
L3055: LDA    INTIM   
       BNE    L3055   
       STA    WSYNC   
       STA    HMCLR   
       JSR    L37BC   
       STA    WSYNC   
       JSR    L3259   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       BIT    $A9     
       BMI    L3052   
       LDA    $A2     
       LDX    #$01    
       JSR    L3043   
       LDA    $A4     
       LDX    #$00    
       JSR    L3043   
       LDA    #$02    
       LDX    #$57    
L3086: STA    WSYNC   
       INX            
       CPX    #$5D    
       BNE    L3086   
       STA    ENABL   
       LDA    #$B6    
L3091: STA    WSYNC   
       INX            
       CPX    #$5E    
       BNE    L3091   
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       LDA    #$10    
       STA    ENABL   
       STA    PF2     
L30A4: LDA    $AE     
       STA    COLUP0  
       LDA    $D3     
       STA    COLUP1  
       LDA    $AD     
       STA    REFP0   
       LDA    $AC     
       STA    REFP1   
       STA    CXCLR   
L30B6: TXA            
       SEC            
       STA    WSYNC   
       STA    HMCLR   
       SBC    $C7     
       TAY            
       AND    $AB     
       BEQ    L30C7   
       LDA    #$00    
       BEQ    L30C9   
L30C7: LDA    ($82),Y 
L30C9: STA    GRP1    
       TXA            
       SEC            
       SBC    $90     
       TAY            
       AND    #$F0    
       BEQ    L30D8   
       LDA    #$00    
       BEQ    L30DA   
L30D8: LDA    ($86),Y 
L30DA: STA    GRP0    
       INX            
       CPX    $94     
       BNE    L30B6   
       BIT    $A9     
       BPL    L30E8   
       JMP    L3171   
L30E8: LDA    $A3     
       STA    WSYNC   
       STA    $2020   
       AND    #$0F    
       TAY            
L30F2: DEY            
       BPL    L30F2   
       STA    $2010   
       TXA            
       STA    WSYNC   
       SEC            
       SBC    $C7     
       TAY            
       AND    #$F0    
       BEQ    L3107   
       LDA    #$00    
       BEQ    L3109   
L3107: LDA    ($82),Y 
L3109: STA    GRP1    
       LDA    #$7C    
       STA    PF2     
       INX            
       STA    WSYNC   
       STA    HMOVE   
L3114: TXA            
       SEC            
       SBC    $C7     
       TAY            
       AND    #$F0    
       BEQ    L3121   
       LDA    $C2     
       BEQ    L3123   
L3121: LDA    ($82),Y 
L3123: STA    GRP1    
       TXA            
       SEC            
       SBC    $C9     
       TAY            
       AND    #$F0    
       BEQ    L3132   
       LDA    $C2     
       BEQ    L3134   
L3132: LDA    ($84),Y 
L3134: STA    GRP0    
       TXA            
       LSR            
       LSR            
       TAY            
       LDA    ($8E),Y 
       STA    PF2     
       LDA    ($8C),Y 
       STA    PF1     
       INX            
       STA    WSYNC   
       BNE    L3114   
       LDA    #$2F    
L3149: STA    COLUBK  
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       LDA    #$6A    
       STA    WSYNC   
       STA    HMCLR   
       STA    COLUP0  
       STA    COLUP1  
       JSR    L3224   
       LDA    #$78    
       JSR    L3218   
       STA    WSYNC   
       JSR    L325F   
       RTS            

L3171: LDA    #$00    
       STA    HMP0    
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       LDY    #$07    
       STY    NUSIZ0  
       LDY    #$02    
       STY    CTRLPF  
       LDY    #$05    
L3185: DEY            
       BPL    L3185   
       STA    RESP0   
       STA    GRP1    
       STA    REFP0   
       LDA    #$B6    
       STA    COLUP1  
       LDA    #$0F    
       STA    COLUP0  
       TXA            
       STA    WSYNC   
       STA    HMOVE   
L319B: SEC            
       SBC    $94     
       LSR            
       LSR            
       TAY            
       LDA    #$00    
       STA    PF0     
       LDA    L3EB8,Y 
       STA    PF1     
       LDA    L3ED8,Y 
       STA    PF2     
       LDA    L3EF8,Y 
       STA    GRP0    
       LDY    #$FF    
       NOP            
       STY    PF0     
       STY    PF1     
       STY    PF2     
       INX            
       TXA            
       STA    WSYNC   
       BNE    L319B   
       LDA    #$B6    
       JMP    L3149   
L31C8: LDA    $A5     
       LDX    #$00    
       JSR    L3043   
       LDA    $A6     
       LDX    #$01    
       JSR    L3043   
       LDA    $AF     
       STA    REFP1   
       LDA    #$6A    
       STA    COLUP1  
       LDA    #$0F    
       STA    COLUP0  
       LDA    #$04    
       STA    NUSIZ0  
       LDY    #$07    
       STA    WSYNC   
       STA    HMOVE   
L31EC: LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($88),Y 
       STA    GRP1    
       DEY            
       STA    WSYNC   
       BPL    L31EC   
       LDA    $A4     
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       JSR    L3043   
       LDA    $A2     
       LDX    #$01    
       JSR    L3043   
       LDX    #$64    
       LDA    #$00    
       STA    NUSIZ0  
       STA    WSYNC   
       STA    HMOVE   
       JMP    L30A4   
L3218: LDX    #$0A    
       SEC            
L321B: STA    $B1,X   
       SBC    #$08    
       DEX            
       DEX            
       BPL    L321B   
       RTS            

L3224: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$F0    
       STA    HMP0    
       STA    REFP0   
       STA    REFP1   
       LDY    #$07    
       STA    WSYNC   
L323A: DEY            
       BNE    L323A   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L3247: STA    HMCLR   
       LDA    #$F0    
       STA    HMP0    
       LDY    #$04    
       STA    WSYNC   
L3251: DEY            
       BNE    L3251   
       STA    RESP0   
       STA    RESP1   
       RTS            

L3259: STA    WSYNC   
       LDY    #$06    
       BNE    L3263   
L325F: STA    WSYNC   
       LDY    #$0A    
L3263: DEY            
       BPL    L3263   
       NOP            
       NOP            
       LDY    #$06    
       STY    $91     
L326C: LDY    $91     
       LDA    ($B1),Y 
       STA    GRP0    
       LDA    ($B3),Y 
       STA    GRP1    
       LDA    ($B5),Y 
       STA    GRP0    
       LDA    ($B7),Y 
       STA    $C2     
       LDA    ($B9),Y 
       TAX            
       LDA    ($BB),Y 
       TAY            
       LDA    $C2     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       NOP            
       NOP            
       DEC    $91     
       BPL    L326C   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    $C2     
       RTS            

L32A1: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3300: LDA    #$46    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $D6     
       STA    COLUPF  
       LDA    #$DF    
       STA    COLUBK  
       LDA    #$31    
       STA    CTRLPF  
       RTS            

L3313: LDA    #$3B    
       STA    TIM64T  
       LDA    SWCHB   
       ROR            
       BCS    L3321   
       JMP    L3482   
L3321: ROR            
       BCS    L332B   
       LDX    #$FF    
       STX    $C3     
       INX            
       STX    $CF     
L332B: BIT    $C3     
       BPL    L3332   
       JMP    L3467   
L3332: LDA    $C3     
       CMP    #$08    
       BEQ    L3346   
       LDX    #$80    
       CMP    #$09    
       BNE    L3340   
       LDX    #$00    
L3340: DEC    $C3     
       STX    $CF     
       BNE    L335D   
L3346: LDA    SWCHB   
       AND    #$08    
       BEQ    L3366   
       JSR    L3598   
       BIT    $CE     
       BPL    L335A   
       DEC    $CF     
       BMI    L335D   
       BPL    L336C   
L335A: JSR    L36E8   
L335D: JSR    L33C8   
L3360: LDA    INTIM   
       BNE    L3360   
       RTS            

L3366: STA    AUDV1   
       STA    AUDV0   
       BEQ    L3360   
L336C: BIT    $A9     
       BMI    L339D   
       LDA    $CE     
       CMP    #$82    
       BEQ    L3397   
       CMP    #$88    
       BEQ    L3397   
L337A: LDA    $AA     
       EOR    #$80    
       STA    $AA     
       BIT    $C3     
       BMI    L3388   
L3384: LDA    #$7F    
       STA    $C3     
L3388: LDA    #$80    
       STA    $A9     
       JSR    L354A   
L338F: LDA    #$00    
       STA    $CF     
       STA    $CE     
       BEQ    L335D   
L3397: DEC    $BF     
       BMI    L33A6   
       BPL    L337A   
L339D: LDA    #$00    
       STA    $A9     
       JSR    L34E1   
       BNE    L338F   
L33A6: LDX    #$FF    
       STX    $C3     
       INX            
       STX    AUDV0   
       STX    AUDV1   
       LDA    #$CB    
       STA    $BF     
       BNE    L337A   
L33B5: LDY    #$00    
       DEC    $DD     
       BMI    L33E4   
       LDY    #$0F    
       LDA    $DD     
       LSR            
       LSR            
       EOR    #$1F    
       TAX            
       LDA    #$0C    
       BNE    L33E4   
L33C8: BIT    $C3     
       BMI    L33ED   
       LDA    $DD     
       BNE    L33B5   
       BIT    $D9     
       BMI    L3403   
       BVS    L33EE   
       LDX    $D8     
       BNE    L33DC   
       LDX    #$01    
L33DC: DEX            
       STX    $D8     
       TXA            
       LSR            
       TAY            
       LDA    #$0C    
L33E4: STA    AUDC0   
       STX    AUDF0   
       STY    AUDV0   
       JSR    L342F   
L33ED: RTS            

L33EE: LDY    #$0F    
       LDX    $D8     
       BNE    L33F8   
       LDX    #$01    
       LDY    #$00    
L33F8: DEX            
       STX    $D8     
       TXA            
       LSR            
       LSR            
       TAX            
       LDA    #$0C    
       BNE    L33E4   
L3403: BVS    L3427   
       LDX    $D8     
       BMI    L341F   
       LDA    L344F,X 
       LDY    $CE     
       CPY    #$81    
       BNE    L3415   
       LDA    L345F,X 
L3415: DEX            
       STX    $D8     
       TAX            
       LDY    #$0F    
       LDA    #$0C    
       BNE    L33E4   
L341F: LDY    #$00    
       STY    $D9     
       STY    $D8     
       BEQ    L33E4   
L3427: LDY    $D8     
       LDA    #$01    
       LDX    #$18    
       BNE    L33E4   
L342F: LDA    $80     
       BPL    L3435   
       EOR    #$FF    
L3435: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    #$08    
       LDX    $DA     
       BEQ    L3446   
       DEC    $DA     
       LDY    #$0F    
       LDA    #$04    
L3446: LDX    #$0E    
       STA    AUDC1   
       STX    AUDF1   
       STY    AUDV1   
       RTS            

L344F: .byte $0E,$0E,$0F,$0F,$0F,$0E,$0D,$0E,$0F,$0F,$0F,$0F,$0E,$0D,$0D,$0E
L345F: .byte $00,$02,$02,$02,$00,$03,$03,$03
L3467: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JSR    L34A2   
       BIT    INPT4   
       BPL    L347B   
       BIT    $C3     
       BVC    L3482   
       JMP    L3346   
L347B: LDA    #$BF    
       STA    $C3     
       JMP    L3346   
L3482: LDA    #$00    
       STA    $BD     
       STA    $BE     
       STA    $DD     
       LDA    #$03    
       STA    $BF     
       LDA    $D4     
       ASL            
       TAX            
       INX            
       STX    $D0     
       LDA    #$06    
       STA    $B0     
       LDA    #$00    
       STA    $D8     
       STA    $D9     
       JMP    L3384   
L34A2: LDA    SWCHB   
       AND    #$02    
       BNE    L34BF   
       DEC    $D5     
       BNE    L34B9   
       INC    $D4     
       LDA    $D4     
       AND    #$03    
       STA    $D4     
       LDA    #$1F    
       STA    $D5     
L34B9: LDX    $D4     
       INX            
       STX    $BF     
       RTS            

L34BF: STA    $D5     
       RTS            

L34C2: LDA    #$40    
       STA    TIM64T  
       JSR    L35DB   
       JSR    L3247   
       LDA    $A1     
       JSR    L37A1   
       LDX    #$04    
       JSR    L3043   
       STA    WSYNC   
       STA    HMOVE   
L34DB: LDA    INTIM   
       BNE    L34DB   
       RTS            

L34E1: LDA    #$6E    
       STA    $94     
       LDA    #$F0    
       STA    $AB     
       STA    $A7     
       LDA    #$0F    
       STA    $AE     
       LDA    #$40    
       STA    $82     
       LDA    #$50    
       STA    $86     
       STA    $84     
       LDA    #$A8    
       STA    $96     
       STA    $93     
       JSR    L38B0   
       LDA    $BD     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$78    
       STA    $A1     
       LDA    #$23    
       STA    $D6     
       BIT    $80     
       BVC    L351C   
       LDA    $DC     
       EOR    #$70    
       STA    $DC     
L351C: LDA    #$5F    
       STA    $90     
       STA    $C7     
       LDA    #$20    
       STA    $C8     
       LDA    #$00    
       STA    $CB     
       LDA    #$8A    
       STA    $D3     
L352E: LDA    #$AD    
       STA    $C9     
       LDA    #$9E    
       STA    $CA     
L3536: LDX    #$01    
       BIT    $AA     
       BMI    L353E   
       LDX    #$03    
L353E: LDA    L3EB4,X 
       STA    $8E     
       DEX            
       LDA    L3EB4,X 
       STA    $8C     
       RTS            

L354A: LDA    #$90    
       STA    $88     
       LDA    #$A0    
       STA    $8A     
       LDA    #$00    
       STA    $82     
       LDA    #$8A    
       STA    $D3     
       LDA    #$00    
       STA    $AE     
       STA    $CD     
       LDA    #$00    
       STA    $AC     
       LDA    #$A8    
       STA    $86     
       LDA    #$E0    
       STA    $AB     
       LDA    $94     
       ORA    #$88    
       STA    $97     
       STA    $94     
       SBC    #$07    
       STA    $90     
       SBC    #$18    
       STA    $C7     
       LDA    $93     
       CMP    #$80    
       BCS    L3586   
       LDA    #$80    
       STA    $93     
L3586: STA    $96     
       LDA    #$05    
       STA    $A2     
       LDA    #$80    
       STA    $A7     
       LDA    #$03    
       STA    $81     
       JSR    L38B0   
       RTS            

L3598: BIT    $A9     
       BPL    L35C6   
       BIT    $C3     
       BMI    L35C6   
       LDA    $CD     
       BNE    L35C7   
       LDA    $80     
       AND    #$3F    
       BNE    L35C6   
       DEC    $81     
       BPL    L35C6   
       LDA    $BE     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    L3DF0,X 
       STA    $81     
       LDA    #$50    
       STA    $96     
       LDA    #$80    
       STA    $CD     
       LDA    #$0F    
       STA    $99     
L35C6: RTS            

L35C7: LDA    $AD     
       CMP    #$08    
       BNE    L35C6   
       LDA    $93     
       CMP    #$80    
       BCC    L35C6   
       LDA    #$00    
       STA    $CD     
       JSR    L38B0   
       RTS            

L35DB: LDA    SWCHB   
       AND    #$08    
       BEQ    L3641   
       INC    $80     
       BIT    $CF     
       BMI    L3641   
       BIT    $A9     
       BPL    L35EF   
       JMP    L3668   
L35EF: LDA    $80     
       AND    #$1F    
       BNE    L3602   
       JSR    L38D8   
       LDX    #$05    
       JSR    L39CE   
       BCC    L3602   
       JSR    L3915   
L3602: LDX    #$00    
       JSR    L39CE   
       BCC    L3617   
       JSR    L39AC   
       CMP    #$FF    
       BNE    L3617   
       LDA    #$30    
       JSR    L38CF   
       STA    $96,X   
L3617: LDA    $93     
       JSR    L37A1   
       STA    $A4     
       LDX    #$06    
       JSR    L39CE   
       BCC    L3628   
       JSR    L39DD   
L3628: LDA    $C8     
       JSR    L37A1   
       STA    $A2     
       LDX    #$04    
       JSR    L39CE   
       BCC    L3639   
       JSR    L3A0F   
L3639: LDA    $CA     
       JSR    L37A1   
       STA    $A3     
       RTS            

L3641: LDA    SWCHA   
       EOR    #$FF    
       BEQ    L364B   
       STA    $D1     
       RTS            

L364B: LDA    $D1     
       BEQ    L3662   
       LDX    #$00    
       STX    $D1     
       LDX    $D2     
       CMP    L3FF5,X 
       BNE    L3663   
       DEC    $D2     
       BPL    L3662   
       LDA    #$90    
       STA    $8A     
L3662: RTS            

L3663: LDX    #$05    
       STX    $D2     
       RTS            

L3668: BIT    $C3     
       BMI    L366F   
       JSR    L3795   
L366F: LDA    $80     
       AND    #$1F    
       BNE    L3678   
       JSR    L38DE   
L3678: AND    #$01    
       BNE    L367F   
       JSR    L3909   
L367F: BIT    $CD     
       BMI    L3696   
       LDX    #$01    
       JSR    L39CE   
       BCC    L3696   
       JSR    L39AC   
       CMP    #$FF    
       BNE    L3696   
       JSR    L38C4   
       STA    $96,X   
L3696: LDX    #$02    
       JSR    L39CE   
       BCC    L36AF   
       JSR    L39AC   
       CMP    #$FF    
       BNE    L36AD   
       LDA    #$3C    
       JSR    L38CF   
       STA    $96,X   
       LDY    $AF     
L36AD: STY    $AF     
L36AF: LDX    #$00    
       JSR    L39CE   
       BCC    L36C8   
       JSR    L39AC   
       CMP    #$FF    
       BNE    L36C6   
       LDA    #$30    
       JSR    L38CF   
       STA    $96,X   
       LDY    $AD     
L36C6: STY    $AD     
L36C8: LDA    $94     
       SEC            
       SBC    #$08    
       STA    $90     
       LDA    $95     
       JSR    L37A1   
       STA    $A6     
       LDA    $93     
       JSR    L37A1   
       STA    $A4     
       JSR    L391C   
       LDA    $D7     
       JSR    L37A1   
       STA    $A5     
       RTS            

L36E8: BIT    $A9     
       BMI    L3769   
       BIT    CXPPMM  
       BMI    L3757   
       LDA    $A1     
       CMP    #$AD    
       BCS    L3743   
       SBC    #$90    
       BMI    L371D   
       LSR            
       LSR            
       EOR    #$07    
       CLC            
       ADC    #$62    
       STA    $D3     
       CMP    #$66    
       BCS    L371D   
       LDA    #$C0    
       STA    $D9     
       LDA    $80     
       AND    #$03    
       BNE    L371D   
       LDA    $D6     
       EOR    #$06    
       STA    $D6     
       LDA    $D8     
       EOR    #$08    
       STA    $D8     
L371D: LDA    $A1     
       SEC            
       SBC    $C8     
       BPL    L3726   
       EOR    #$FF    
L3726: CMP    $C3     
       BCS    L3742   
       BIT    $C3     
       BMI    L3734   
       LDA    $C7     
       CMP    #$5F    
       BNE    L3742   
L3734: LDA    #$80    
       STA    $D9     
       LDA    #$07    
       STA    $D8     
       LDA    #$81    
L373E: STA    $CE     
       DEC    $CF     
L3742: RTS            

L3743: LDA    $BF     
       BNE    L374B   
       LDA    #$80    
       STA    $DD     
L374B: LDA    #$40    
       STA    $D9     
       LDA    #$3F    
       STA    $D8     
       LDA    #$88    
       BNE    L373E   
L3757: LDA    $BF     
       BNE    L375F   
       LDA    #$80    
       STA    $DD     
L375F: LDA    #$1F    
       STA    $D8     
       STA    $D9     
       LDA    #$82    
       BNE    L373E   
L3769: BIT    CXPPMM  
       BMI    L375F   
       BIT    $CD     
       BMI    L3742   
       LDA    $94     
       SEC            
       SBC    #$20    
       SBC    $C7     
       BPL    L377C   
       EOR    #$FF    
L377C: CMP    #$0A    
       BCC    L3742   
       BIT    SWCHB   
       BVC    L3789   
       CMP    #$10    
       BCC    L3742   
L3789: LDX    #$7F    
       STX    $D8     
       LDX    #$00    
       STX    $D9     
       LDA    #$84    
       BNE    L373E   
L3795: DEC    $B0     
       BNE    L37A0   
       JSR    L3824   
       LDA    #$06    
       STA    $B0     
L37A0: RTS            

L37A1: CMP    #$1E    
       BCS    L37A7   
       SBC    #$02    
L37A7: LDY    #$FF    
       SEC            
L37AA: INY            
       SBC    #$0F    
       BCS    L37AA   
       STY    $C0     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $C0     
       RTS            

L37BC: LDA    #$00    
       TAX            
       TAY            
       STA    $C0     
L37C2: STX    $C1     
       LDA.wy $00BD,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       BEQ    L37D0   
       INC    $C0     
L37D0: LDA    $C0     
       BNE    L37D6   
       LDX    #$0A    
L37D6: LDA    L3FE8,X 
       LDX    $C1     
       STA    $B1,X   
       INX            
       INX            
       STX    $C1     
       LDA.wy $00BD,Y 
       AND    #$0F    
       TAX            
       BEQ    L37EB   
       INC    $C0     
L37EB: LDA    $C0     
       BNE    L37F1   
       LDX    #$0A    
L37F1: LDA    L3FE8,X 
       LDX    $C1     
       STA    $B1,X   
       INX            
       INX            
       INY            
       CPY    #$02    
       BEQ    L381E   
       CPY    #$03    
       BCC    L37C2   
       LDA    $C0     
       BNE    L380B   
       LDA    #$88    
       STA    $BB     
L380B: LDA    #$3F    
       LDX    #$0A    
L380F: STA    $B2,X   
       DEX            
       DEX            
       BPL    L380F   
       LDA    $BE     
       BNE    L381D   
       LDA    #$88    
       STA    $B7     
L381D: RTS            

L381E: LDA    #$00    
       STA    $C0     
       BEQ    L37C2   
L3824: SED            
       LDX    #$01    
L3827: CLC            
       LDA    $BD,X   
       ADC    #$01    
       STA    $BD,X   
       BCC    L383F   
       LDA    $BD     
       AND    #$0F    
       CMP    #$04    
       BEQ    L384E   
       CMP    #$09    
       BEQ    L3841   
L383C: DEX            
       BPL    L3827   
L383F: CLD            
       RTS            

L3841: LDY    $BF     
       CPY    #$09    
       BCS    L384E   
       INY            
       STY    $BF     
       LDY    #$1F    
       STY    $DA     
L384E: LDA    $D0     
       AND    #$0F    
       CMP    #$08    
       BCS    L383C   
       ADC    #$01    
       STA    $D0     
       BNE    L383C   
L385C: JSR    L3B42   
       LDA    #$A8    
       STA    $96     
       STA    $98     
       LDA    #$FF    
       STA    $C3     
       LDA    #$88    
       STA    $D7     
       STA    $93     
       STA    $95     
       LDA    #$69    
       STA    $A5     
       STA    $A6     
       STA    $A4     
       LDA    #$3D    
       STA    $83     
       STA    $85     
       STA    $87     
       STA    $8B     
       STA    $89     
       LDA    #$3E    
       STA    $8D     
       STA    $8F     
       LDA    #$06    
       STA    $B0     
       JSR    L354A   
       LDA    #$05    
       STA    $D2     
       LDA    #$01    
       STA    $D0     
       STA    $BF     
       STA    $D5     
       JSR    L38B0   
       LDA    #$00    
       STA    $D4     
       LDA    #$80    
       STA    $A7     
       STA    $A9     
       LDA    #$50    
       STA    $DC     
       RTS            

L38B0: LDA    $D0     
       ASL            
       ASL            
       ASL            
       TAX            
       DEX            
       LDY    #$07    
L38B9: LDA    L3DB0,X 
       STA.wy $0099,Y 
       DEX            
       DEY            
       BPL    L38B9   
       RTS            

L38C4: LDA    $92     
       AND    #$0F    
       TAY            
       LDA    L3E00,Y 
       INC    $92     
       RTS            

L38CF: AND    $80     
       LSR            
       LSR            
       TAY            
       LDA    L3E10,Y 
       RTS            

L38D8: LDA    $AD     
       EOR    #$08    
       STA    $AD     
L38DE: LDA    $88     
       EOR    #$08    
       STA    $88     
       BIT    $A7     
       BPL    L38EE   
       LDA    $82     
       EOR    #$20    
       STA    $82     
L38EE: BIT    SWCHB   
       BMI    L3908   
       LDA    $80     
       BNE    L3908   
       INC    $DB     
       LDA    $DB     
       AND    #$01    
       BNE    L3908   
       LDA    $AA     
       EOR    #$80    
       STA    $AA     
       JSR    L3536   
L3908: RTS            

L3909: LDX    $D7     
       CPX    #$B0    
       BCC    L3911   
       LDX    #$12    
L3911: INX            
       STX    $D7     
       RTS            

L3915: LDA    $A1     
       ADC    #$01    
       STA    $A1     
       RTS            

L391C: LDA    $C3     
       CMP    #$08    
       BNE    L3964   
       BIT    $A7     
       BPL    L3944   
       LDX    #$03    
       JSR    L39CE   
       BCC    L3944   
       LDA    SWCHA   
       EOR    #$FF    
       AND    #$30    
       BEQ    L3944   
       CMP    #$10    
       BEQ    L396B   
       LDA    $C7     
       ADC    #$01    
       BNE    L3942   
       LDA    #$FE    
L3942: STA    $C7     
L3944: LDA    $A7     
       BMI    L3977   
       DEC    $A8     
       BNE    L395F   
       LDA    #$81    
       STA    $A7     
       CLC            
       BIT    $CD     
       BMI    L3960   
       LDA    $C7     
       ADC    #$08    
       STA    $C7     
       LDA    #$00    
       STA    $82     
L395F: RTS            

L3960: LDA    #$00    
       STA    $82     
L3964: LDA    $94     
       SBC    #$20    
       STA    $C7     
       RTS            

L396B: LDA    $C7     
       SBC    #$02    
       CMP    #$64    
       BCS    L3942   
       LDA    #$64    
       BCC    L3942   
L3977: LDA    INPT4   
       AND    #$80    
       BNE    L39A1   
       LDA    #$01    
       AND    $A7     
       BNE    L39A0   
       STA    $A7     
       LDA    #$18    
       STA    $A8     
       SEC            
       BIT    $CD     
       BMI    L39A4   
       LDA    $C7     
       SBC    #$08    
       STA    $C7     
L3994: LDA    #$80    
       STA    $D9     
       LDA    #$10    
       STA    $D8     
       LDA    #$70    
       STA    $82     
L39A0: RTS            

L39A1: STA    $A7     
       RTS            

L39A4: LDA    $94     
       SBC    #$29    
       STA    $C7     
       BNE    L3994   
L39AC: LDA    $93,X   
       CMP    $96,X   
       BCS    L39BF   
       LDY    #$08    
       ADC    #$02    
       CMP    $96,X   
       BCC    L39BC   
L39BA: LDA    $96,X   
L39BC: STA    $93,X   
       RTS            

L39BF: BEQ    L39CB   
       LDY    #$00    
       SBC    #$02    
       CMP    $96,X   
       BCS    L39BC   
       BCC    L39BA   
L39CB: LDA    #$FF    
       RTS            

L39CE: LDA    $99,X   
       ASL            
       ASL            
       ASL            
       ASL            
       CMP    #$F0    
       BCS    L39DC   
       ADC    $99,X   
       STA    $99,X   
L39DC: RTS            

L39DD: LDX    $C8     
       STX    $C4     
       LDY    $C7     
       JSR    L3AC1   
       JSR    L3B2E   
       LDA    SWCHA   
       EOR    #$FF    
       AND    $C6     
       BNE    L39F8   
       LDA    $C6     
       AND    $CB     
       BEQ    L39FF   
L39F8: LDY    #$01    
       JSR    L3A93   
       LDA    $C4     
L39FF: STA    $CB     
       LDA    #$00    
       BIT    $CB     
       BMI    L3A0A   
       BVS    L3A0C   
       RTS            

L3A0A: LDA    #$08    
L3A0C: STA    $AC     
       RTS            

L3A0F: LDX    $CA     
       STX    $C4     
       LDY    $C9     
       JSR    L3AC1   
       LDY    $C5     
       BNE    L3A29   
       LDA    L3C00,X 
       ASL            
       ASL            
       ASL            
       ASL            
       AND    #$C0    
       EOR    $C6     
       STA    $C6     
L3A29: JSR    L3B2E   
       LDA    $C6     
       LDY    $C9     
       CPY    #$AF    
       BCS    L3A36   
       AND    #$E0    
L3A36: STA    $C6     
       LDA    $CC     
       TAX            
       LDY    $C5     
       BNE    L3A5B   
       LDY    $C7     
       CPY    #$9A    
       BCC    L3A57   
       LDA    $CA     
       SBC    $C8     
       BMI    L3A7E   
       CMP    #$10    
       BCS    L3A57   
L3A4F: LDA    $C7     
       CMP    $C9     
       BCC    L3A6A   
       BNE    L3A76   
L3A57: LDA    #$70    
       AND    $C6     
L3A5B: LDY    #$03    
       JSR    L3A93   
       LDA    $C4     
       STA    $CC     
       BNE    L3A69   
       JSR    L352E   
L3A69: RTS            

L3A6A: CPX    #$20    
       BEQ    L3A57   
       LDA    #$10    
L3A70: AND    $C6     
       BEQ    L3A57   
       BNE    L3A5B   
L3A76: CPX    #$10    
       BEQ    L3A57   
       LDA    #$20    
       BNE    L3A70   
L3A7E: EOR    #$FF    
       CMP    $DC     
       BCS    L3A57   
       TAY            
       CPX    #$40    
       BEQ    L3A90   
       LDA    #$80    
       AND    $C6     
       BNE    L3A5B   
       TYA            
L3A90: JMP    L3A4F   
L3A93: LDX    #$00    
       ASL            
       BCS    L3ABD   
       ASL            
       BCS    L3AB9   
       DEY            
       ASL            
       BCS    L3AB3   
       BMI    L3AA4   
       STA    $C4     
       RTS            

L3AA4: LDA    #$10    
L3AA6: DEX            
       DEX            
L3AA8: STA    $C4     
       TXA            
       CLC            
       ADC.wy $00C7,Y 
       STA.wy $00C7,Y 
       RTS            

L3AB3: LDA    #$20    
L3AB5: INX            
       INX            
       BNE    L3AA8   
L3AB9: LDA    #$40    
       BNE    L3AA6   
L3ABD: LDA    #$80    
       BNE    L3AB5   
L3AC1: LDA    #$00    
       STA    $C5     
       TXA            
       SEC            
       SBC    #$62    
       BPL    L3ACF   
       EOR    #$FF    
       ADC    #$01    
L3ACF: LDX    #$0D    
L3AD1: CMP    L3F28,X 
       BCC    L3ADB   
       BEQ    L3ADD   
       DEX            
       BPL    L3AD1   
L3ADB: INC    $C5     
L3ADD: TYA            
       LDY    #$07    
L3AE0: CMP    L3F36,Y 
       BCS    L3AE8   
       DEY            
       BPL    L3AE0   
L3AE8: BEQ    L3AF0   
       LDA    $C5     
       EOR    #$02    
       STA    $C5     
L3AF0: STX    $C6     
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $C6     
       ORA    $AA     
       TAX            
       LDA    L3C00,X 
       LDY    $C5     
       BEQ    L3B1D   
       CPY    #$03    
       BEQ    L3B2A   
       AND    #$07    
       STA    $C6     
       CPX    #$00    
       BEQ    L3B22   
       CPX    #$80    
       BEQ    L3B22   
L3B13: TYA            
       ASL            
       ASL            
       ASL            
       ORA    $C6     
       TAY            
       LDA    L3F10,Y 
L3B1D: AND    #$F0    
L3B1F: STA    $C6     
       RTS            

L3B22: CPY    #$01    
       BNE    L3B13   
       LDA    #$E0    
       BNE    L3B1F   
L3B2A: LDA    #$F0    
       BNE    L3B1F   
L3B2E: LDY    $C4     
       CPY    #$62    
       BCC    L3B41   
       LDA    $C6     
       ASL            
       EOR    $C6     
       BPL    L3B41   
       LDA    $C6     
       EOR    #$C0    
       STA    $C6     
L3B41: RTS            

L3B42: LDA    #$30    
       STA    $83     
L3B46: LDY    #$00    
       LDA    ($82),Y 
       CLC            
       ADC    $DB     
       STA    $DB     
       INC    $82     
       BNE    L3B46   
       INC    $83     
       LDA    $83     
       CMP    #$40    
       BNE    L3B46   
       LDA    L3B6E   
       CMP    $DB     
       BNE    L3B63   
       RTS            

L3B63: LDA    #$09    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       JMP    L3B63   
L3B6E: .byte $00,$44,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
L3C00: .byte $A7,$E3,$E3,$E3,$E3,$E3,$E3,$E5,$C0,$40,$C0,$C0,$80,$E0,$00,$00
       .byte $B7,$F1,$F1,$F1,$F2,$D2,$F6,$D0,$C0,$40,$C0,$C0,$80,$F0,$00,$00
       .byte $B7,$F1,$F2,$D2,$50,$C0,$90,$C0,$C0,$60,$C0,$C0,$A0,$D0,$00,$00
       .byte $B7,$F2,$D0,$C0,$60,$C0,$80,$C0,$C0,$50,$C0,$C0,$B0,$C0,$00,$00
       .byte $92,$D0,$C0,$E0,$D0,$C0,$C0,$E8,$40,$C0,$C0,$80,$F4,$C0,$00,$00
       .byte $00,$00,$00,$90,$C0,$60,$C0,$90,$C0,$C0,$E0,$C0,$D0,$E0,$00,$00
       .byte $00,$00,$00,$00,$00,$90,$C0,$E0,$C0,$C0,$D0,$C0,$E0,$D0,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$90,$C0,$C0,$C0,$C0,$50,$00,$00,$00
       .byte $A7,$E3,$E3,$E3,$E3,$E3,$E3,$E5,$C0,$40,$C0,$C0,$80,$E0,$00,$00
       .byte $B7,$F1,$F1,$F1,$F2,$D2,$F6,$D0,$C0,$40,$C0,$C0,$80,$F0,$00,$00
       .byte $B7,$F1,$F2,$D2,$50,$C0,$90,$C0,$C0,$60,$C0,$C0,$A0,$D0,$00,$00
       .byte $B7,$F2,$D0,$C0,$60,$C0,$80,$C0,$C0,$50,$C0,$C0,$90,$E0,$00,$00
       .byte $92,$D0,$C0,$E8,$50,$C0,$80,$EC,$40,$C0,$C0,$80,$E4,$D0,$00,$00
       .byte $00,$00,$00,$90,$C0,$60,$C0,$B0,$C0,$C0,$E0,$C0,$D0,$C0,$00,$00
       .byte $00,$00,$00,$00,$00,$90,$C0,$70,$C0,$C0,$90,$C0,$E0,$C0,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$90,$C0,$C0,$C0,$C0,$50,$00,$00,$00
       .byte $00,$00,$00,$30,$78,$38,$D8,$38,$68,$18,$72,$37,$1D,$18,$1C,$3E
       .byte $2E,$6E,$CF,$8F,$0F,$1F,$3E,$34,$24,$24,$24,$24,$24,$24,$6C,$7F
       .byte $18,$3C,$1C,$6C,$1C,$3C,$1C,$08,$08,$1C,$3C,$3E,$3E,$3F,$5F,$5D
       .byte $DD,$9D,$0D,$1C,$3C,$38,$78,$68,$58,$58,$50,$50,$50,$50,$F0,$FE
       .byte $30,$78,$F8,$78,$D8,$18,$78,$08,$1C,$16,$0B,$9D,$DB,$77,$23,$01
       .byte $18,$3C,$7E,$56,$FF,$00,$49,$4A,$49,$85,$85,$89,$52,$52,$00,$00
       .byte $18,$3C,$7C,$3C,$6C,$0C,$1C,$38,$0C,$14,$12,$1B,$09,$07,$0D,$19
       .byte $00,$00,$00,$00,$00,$00,$30,$78,$38,$D8,$38,$79,$B9,$93,$FE,$7C
       .byte $3C,$1C,$1E,$0E,$0F,$1F,$7F,$FE,$F8,$70,$38,$1C,$0C,$04,$04,$00
       .byte $18,$30,$10,$10,$A8,$69,$26,$00,$3C,$18,$94,$63,$00,$00,$00,$00
       .byte $2C,$7E,$FF,$FF,$5E,$1E,$1C,$08,$07,$0E,$1E,$3E,$3C,$7C,$7C,$FC
L3DB0: .byte $02,$02,$02,$02,$04,$08,$04,$02,$03,$03,$03,$03,$04,$09,$04,$04
       .byte $04,$04,$04,$04,$05,$07,$04,$02,$05,$05,$05,$05,$06,$08,$05,$04
       .byte $06,$06,$06,$06,$07,$09,$06,$02,$07,$07,$07,$07,$07,$09,$06,$04
       .byte $0B,$07,$07,$07,$08,$0A,$07,$02,$0C,$08,$08,$08,$08,$0F,$08,$04
L3DF0: .byte $04,$03,$02,$01,$03,$04,$02,$01,$02,$03,$00,$00,$00,$00,$00,$00
L3E00: .byte $88,$FC,$BF,$FC,$88,$9F,$BF,$8F,$AF,$CF,$8F,$EF,$AF,$DF,$88,$EF
L3E10: .byte $80,$70,$A0,$80,$A8,$B0,$70,$90,$78,$40,$50,$30,$88,$40,$50,$30
       .byte $00,$00,$00,$00,$00,$02,$02,$02,$02,$02,$0F,$02,$02,$02,$02,$32
       .byte $02,$02,$02,$02,$E7,$61,$61,$61,$61,$79,$38,$38,$38,$18,$1F,$0F
       .byte $0F,$07,$03,$01,$00,$00,$00,$00,$00,$00,$02,$02,$02,$02,$02,$0F
       .byte $02,$02,$02,$02,$33,$00,$00,$00,$00,$E7,$61,$61,$61,$61,$79,$38
       .byte $38,$38,$18,$1F,$0F,$0F,$07,$03,$01,$00,$7C,$10,$10,$10,$10,$7E
       .byte $10,$10,$10,$10,$93,$10,$10,$10,$10,$7F,$08,$08,$08,$08,$9C,$00
       .byte $00,$00,$00,$E4,$04,$04,$04,$04,$9C,$80,$80,$80,$80,$FF,$FF,$7C
       .byte $10,$10,$10,$10,$7E,$10,$10,$10,$10,$93,$10,$10,$10,$10,$9D,$08
       .byte $08,$08,$08,$9C,$00,$00,$00,$00,$67,$00,$00,$00,$00,$9C,$80,$80
       .byte $80,$80,$FF,$FF
L3EB4: .byte $05,$4F,$2A,$74
L3EB8: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$07,$1F,$3F,$7F
L3ED8: .byte $FC,$EE,$C0,$C0,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $80,$80,$C0,$C0,$E0,$E0,$F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF,$FF,$FF
L3EF8: .byte $00,$80,$80,$C0,$C0,$E0,$E0,$E0,$E0,$E0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$E0,$E0,$E0
L3F10: .byte $E0,$E0,$C0,$C0,$80,$80,$80,$80,$C0,$F0,$D0,$E0,$C0,$C0,$D0,$F0
       .byte $30,$F0,$70,$F0,$30,$70,$30,$B0
L3F28: .byte $44,$3C,$34,$30,$2C,$28,$20,$1C,$18,$14,$10,$0C,$08,$00
L3F36: .byte $5F,$71,$85,$99,$AD,$C1,$D5,$E9,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$22,$22,$52,$52,$52,$88,$8A,$00,$6E,$A8,$AE,$AA,$6E,$20
       .byte $20,$00,$43,$A4,$A4,$A5,$44,$04,$03,$00,$3A,$A2,$BA,$AA,$3B,$80
       .byte $00,$00,$AE,$A2,$AE,$A8,$EE,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3C,$66,$66,$66,$66,$66,$3C,$00,$7E,$18,$18,$18,$18,$18
       .byte $78,$38,$7E,$60,$60,$3C,$06,$46,$7C,$00,$3C,$46,$06,$0C,$06,$46
       .byte $3C,$00,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$7C,$46,$06,$7C,$60,$60
       .byte $7E,$00,$3C,$66,$66,$7C,$60,$62,$3C,$00,$18,$18,$08,$04,$02,$62
       .byte $7E,$00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66
       .byte $3C,$00,$2C,$2B,$69,$69,$A9,$AB,$2C,$00,$3D,$21,$21,$3D,$21,$21
       .byte $3D,$00
L3FE8: .byte $88,$90,$98,$A0,$A8,$B0,$B8,$C0,$C8,$D0,$80,$D8,$E0
L3FF5: .byte $80,$10,$10,$40,$20,$20,$00,$00,$30,$00,$30
