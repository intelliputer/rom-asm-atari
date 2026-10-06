; Disassembly of roms/Halloween.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Halloween.bin
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
HMP0    =  $20
HMP1    =  $21
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
TIM8T   =  $0295
TIM64T  =  $0296
L39F2   =   $39F2

       ORG $3000

START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L3007: STA    VSYNC,X 
       DEX            
       BNE    L3007   
       JSR    L3787   
L300F: LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       INC    $EC     
       JSR    L3328   
L301F: LDA    INTIM   
       BNE    L301F   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       JSR    L3A95   
       LDA    $EB     
       BEQ    L3082   
       BPL    L30AD   
       JSR    L3FCA   
       JSR    L3CF3   
       JSR    L3420   
       JSR    L33D6   
       LDA    $D5     
       BNE    L3056   
       JSR    L389E   
       LDA    $CC     
       BNE    L3053   
       JSR    L39DC   
       JMP    L3056   
L3053: JSR    L335A   
L3056: LDA    $EC     
       AND    #$07    
       BNE    L3065   
       JSR    L37EA   
       JSR    L3819   
       JSR    L3851   
L3065: LDA    $EC     
       AND    #$01    
       BNE    L3071   
       JSR    L3A4F   
       JSR    L3981   
L3071: JSR    L3538   
       JSR    L34C3   
       JSR    L395E   
       JSR    L391B   
       STA    CXCLR   
       JMP    L30AD   
L3082: LDA    $EC     
       BNE    L30AD   
       INC    $D7     
       LDY    $D7     
       LDA    L39DC,Y 
       STA    $9B     
       STA    $AC     
       LDA    L3420,Y 
       STA    $9A     
       STA    $AB     
       STA    $9C     
       JSR    L366F   
       JSR    L35DC   
       JSR    L35F1   
       LDX    #$07    
       JSR    L3687   
       LDX    #$03    
       JSR    L3687   
L30AD: JSR    L36CE   
L30B0: LDA    INTIM   
       BNE    L30B0   
       STA    WSYNC   
       STA    VBLANK  
       JSR    L30D0   
       LDX    #$1F    
       STA    WSYNC   
       STA    VBLANK  
       STX    TIM64T  
       JSR    L3772   
L30C8: LDA    INTIM   
       BNE    L30C8   
       JMP    L300F   
L30D0: LDY    #$09    
L30D2: STA    WSYNC   
       LDA    L3F6A,Y 
       STA    GRP1    
       DEY            
       BPL    L30D2   
       INY            
       LDX    $9B     
       LDA    $CB     
       BNE    L30E4   
       TAX            
L30E4: STA    WSYNC   
       STX    COLUBK  
       STY    GRP1    
       LDA    $A7     
       STA    HMP1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
L30F3: DEY            
       BNE    L30F3   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STY    NUSIZ1  
       STY    NUSIZ0  
       LDA    $E0     
       STA    REFP1   
       ASL            
       STA    REFP0   
       ASL            
       STA    $F2     
       STA    COLUP1  
       STA    WSYNC   
       STA    HMCLR   
       LDA    $A9     
       STA    HMP0    
       AND    #$0F    
       SEC            
       SBC    #$01    
       STA    $F1     
       LDY    #$08    
       LDA    $CB     
       BNE    L3125   
       STA    COLUBK  
       LDY    #$4B    
L3125: JSR    L3322   
       LDA    $CB     
       BNE    L3130   
       TAX            
       JMP    L31B9   
L3130: LDY    #$06    
L3132: STA    WSYNC   
       CPY    $9D     
       BNE    L313C   
       LDA    $A0     
       STA    PF1     
L313C: CPY    $9F     
       BNE    L3144   
       LDA    $A1     
       STA    PF2     
L3144: DEY            
       BPL    L3132   
       LDY    #$27    
L3149: STA    WSYNC   
       STX    COLUBK  
       LDA    ($8E),Y 
       STA    GRP1    
       LDA    ($96),Y 
       STA    GRP0    
       LDA    ($B5),Y 
       STA    COLUP0  
       LDA    ($AD),Y 
       STA    COLUP1  
       NOP            
       NOP            
       NOP            
       NOP            
       CPY    #$14    
       BNE    L3167   
       LDX    $AB     
L3167: LDA    #$00    
       CPY    $A2     
       BCS    L316F   
       STA    PF2     
L316F: CPY    $9E     
       BCS    L3175   
       STA    PF1     
L3175: DEY            
       BPL    L3149   
       LDY    #$10    
       STA    WSYNC   
       LDX    $F1     
       NOP            
L317F: DEX            
       BNE    L317F   
       STA    RESP0   
       LDA    $F2     
       STA    REFP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    GRP1    
       LDA    ($B9),Y 
       STA    GRP0    
       LDA    ($BB),Y 
       STA    COLUP0  
       LDA    ($AF),Y 
       STA    COLUP1  
       DEY            
L319D: STA    WSYNC   
       LDA    ($B9),Y 
       STA    GRP0    
       LDA    ($BB),Y 
       STA    COLUP0  
       LDA    ($90),Y 
       STA    GRP1    
       LDA    ($AF),Y 
       STA    COLUP1  
       DEY            
       BPL    L319D   
       INY            
       STY    GRP1    
       INY            
       JSR    L3322   
L31B9: LDY    #$09    
L31BB: STA    WSYNC   
       LDA    #$14    
       STA    COLUPF  
       STX    COLUBK  
       LDA    L3F74,Y 
       STA    PF0     
       LDA    L3F7E,Y 
       STA    PF1     
       LDA    L3F88,Y 
       STA    PF2     
       DEY            
       BPL    L31BB   
       STA    WSYNC   
       STX    COLUPF  
       LDY    $9C     
       STY    COLUBK  
       LDY    #$30    
       STY    PF0     
       STX    PF1     
       STX    PF2     
       LDA    $A7     
       STA    HMP1    
       AND    #$0F    
       TAY            
       LDA    $A8     
       STA    HMP0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L31F5: DEY            
       BNE    L31F5   
       STA    RESP1   
       STA    WSYNC   
L31FC: DEX            
       BNE    L31FC   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E0     
       STA    REFP1   
       ASL            
       STA    REFP0   
       STA    WSYNC   
       STA    HMCLR   
       LDA    $A9     
       STA    HMP0    
       AND    #$0F    
       SEC            
       SBC    #$01    
       STA    $F1     
       LDY    #$08    
       JSR    L3322   
       LDY    #$06    
L3222: STA    WSYNC   
       CPY    $9D     
       BNE    L322C   
       LDA    $A4     
       STA    PF1     
L322C: CPY    $A3     
       BNE    L3234   
       LDA    $A5     
       STA    PF2     
L3234: DEY            
       BPL    L3222   
       LDA    #$2E    
       STA    COLUP0  
       LDX    $9C     
       LDY    #$27    
       STX    COLUBK  
L3241: STA    WSYNC   
       STX    COLUBK  
       LDA    ($92),Y 
       STA    GRP1    
       LDA    ($98),Y 
       STA    GRP0    
       LDA    ($B5),Y 
       STA    COLUP0  
       LDA    ($B1),Y 
       STA    COLUP1  
       NOP            
       NOP            
       NOP            
       NOP            
       CPY    #$14    
       BNE    L325F   
       LDX    $AC     
L325F: LDA    #$00    
       CPY    $A6     
       BCS    L3267   
       STA    PF2     
L3267: CPY    $9E     
       BCS    L326D   
       STA    PF1     
L326D: DEY            
       BPL    L3241   
       LDY    #$10    
       STA    WSYNC   
       LDX    $F1     
       NOP            
L3277: DEX            
       BNE    L3277   
       STA    RESP0   
       LDA    $F2     
       STA    REFP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($94),Y 
       STA    GRP1    
       LDA    ($BD),Y 
       STA    GRP0    
       LDA    ($BF),Y 
       STA    COLUP0  
       LDA    ($B3),Y 
       STA    COLUP1  
       DEY            
L3295: STA    WSYNC   
       LDA    ($BD),Y 
       STA    GRP0    
       LDA    ($BF),Y 
       STA    COLUP0  
       LDA    ($94),Y 
       STA    GRP1    
       LDA    ($B3),Y 
       STA    COLUP1  
       DEY            
       BPL    L3295   
       INY            
       STY    REFP1   
       STY    REFP0   
       STY    GRP1    
       STY    GRP0    
       INY            
       JSR    L3322   
       STX    COLUBK  
       LDX    #$07    
       STX    $F1     
       STA    WSYNC   
L32BF: DEX            
       BNE    L32BF   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    HMCLR   
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    $D7     
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
       LDA    L39F2,Y 
       STA    COLUP0  
       STA    COLUP1  
L32ED: LDY    $F1     
       LDA    ($80),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($86),Y 
       STA    GRP1    
       LDA    ($82),Y 
       STA    GRP0    
       LDA    ($88),Y 
       STA    $F2     
       LDA    ($84),Y 
       TAX            
       LDA    ($8A),Y 
       TAY            
       LDA    $F2     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $F1     
       BPL    L32ED   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       RTS            

L3322: STA    WSYNC   
       DEY            
       BPL    L3322   
       RTS            

L3328: LDX    #$02    
L332A: TXA            
       ASL            
       TAY            
       LDA    $D8,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0086,Y 
       LDA    $D8,X   
       AND    #$F0    
       LSR            
       STA.wy $0080,Y 
       DEX            
       BPL    L332A   
       LDY    #$50    
       INX            
L3345: LDA    $80,X   
       BNE    L3359   
       STY    $80,X   
       CPX    #$04    
       BEQ    L3359   
       LDA    $86,X   
       BNE    L3359   
       STY    $86,X   
       INX            
       INX            
       BPL    L3345   
L3359: RTS            

L335A: LDA    $EC     
       AND    $8C     
       BNE    L3359   
       LDA    $A7     
       JSR    L375C   
       STA    $F3     
       LDA    $A8     
       LDX    $E4     
       BEQ    L3375   
       LDX    $E2     
       CPX    #$02    
       BCS    L3375   
       LDA    $A9     
L3375: JSR    L375C   
       SEC            
       SBC    $F3     
       BCS    L338C   
       CMP    #$03    
       BCC    L339F   
       LDY    #$10    
       LDA    $E0     
       ORA    #$08    
       STA    $E0     
       JMP    L3398   
L338C: CMP    #$04    
       BCC    L339F   
       LDY    #$F0    
       LDA    $E0     
       AND    #$F7    
       STA    $E0     
L3398: LDA    $A7     
       JSR    L3735   
       STA    $A7     
L339F: LDA    $F4     
       LDX    $E4     
       BEQ    L33B0   
       LDX    $E2     
       CPX    #$02    
       BCS    L33B0   
       CMP    $B8     
       JMP    L33B2   
L33B0: CMP    $B7     
L33B2: BEQ    L33D5   
       LDX    $D4     
       BCS    L33C7   
       INC    $8E,X   
       INC    $AD,X   
       INC    $F4     
       CMP    #$12    
       BCC    L33D5   
       INC    $90,X   
       INC    $AF,X   
       RTS            

L33C7: DEC    $8E,X   
       DEC    $AD,X   
       DEC    $F4     
       CMP    #$12    
       BCC    L33D5   
       DEC    $90,X   
       DEC    $AF,X   
L33D5: RTS            

L33D6: LDA    $E2     
       BNE    L33D5   
       LDA    $E7     
       BEQ    L33E3   
       LDA    $A8     
       STA    $A9     
       RTS            

L33E3: LDA    $E5     
       BEQ    L33D5   
       LDA    $EC     
       LDY    #$00    
       AND    #$03    
       BNE    L3410   
       LDA    $EC     
       AND    #$8F    
       BNE    L33F8   
       JSR    L36FF   
L33F8: LDA    $ED     
       AND    #$80    
       BNE    L3408   
L33FE: LDA    $E0     
       ORA    #$02    
       STA    $E0     
       LDY    #$10    
       BNE    L3410   
L3408: LDA    $E0     
       AND    #$FD    
       STA    $E0     
       LDY    #$F0    
L3410: LDA    $A9     
       JSR    L3735   
       STA    $A9     
       CMP    #$9D    
       BEQ    L33FE   
       CMP    #$B4    
       BEQ    L3408   
       RTS            

L3420: LDX    $DF     
       BEQ    L3427   
       DEX            
       STX    $DF     
L3427: STX    AUDV1   
       LDA    $CF     
       BNE    L3446   
       LDA    $E3     
       BNE    L3446   
       LDA    $CD     
       BEQ    L3447   
       DEC    $CD     
       LDA    $CD     
       BNE    L3446   
L343B: LDA    $96     
L343D: SEC            
       SBC    #$28    
       CMP    #$A0    
       BCS    L343D   
       STA    $96     
L3446: RTS            

L3447: LDA    $EC     
       AND    #$03    
       BNE    L3446   
       LDA    INPT4   
       BMI    L3446   
       LDA    $CE     
       BNE    L34A3   
       LDY    $E4     
       LDX    $E1     
       BNE    L3462   
       TYA            
       BEQ    L3446   
       LDA    $E2     
       BNE    L3446   
L3462: LDA    #$06    
       STA    AUDV1   
       LDX    #$01    
       LDA    $A8     
       JSR    L3EBF   
       BCS    L3446   
       LDX    $E1     
       STX    $CE     
       TXA            
       BEQ    L3480   
       LDA    #$0F    
       STA    $DF     
       LSR            
       STA    AUDF1   
       JMP    L3687   
L3480: TYA            
       BEQ    L3446   
       LDA    #$01    
       EOR    $E7     
       STA    $E7     
       BNE    L3446   
       LDA    $AA     
       TAX            
       AND    #$07    
       BEQ    L3496   
       CMP    #$07    
       BNE    L349F   
L3496: LDA    #$09    
       JSR    L3FEA   
       INC    $EA     
       STX    $E4     
L349F: DEY            
       STX    $C6,Y   
       RTS            

L34A3: LDA    SWCHA   
       ASL            
       ASL            
       BMI    L34B3   
L34AA: LDY    #$00    
       STY    $CE     
       LDA    $AA     
       STA    $C9     
       RTS            

L34B3: LDA    #$1E    
       STA    $CD     
       LDA    $96     
L34B9: CLC            
       ADC    #$28    
       CMP    #$A0    
       BCC    L34B9   
       STA    $96     
       RTS            

L34C3: LDA    $A8     
       CMP    #$B4    
       BNE    L34DA   
       LDX    #$94    
       LDA    $AA     
       AND    #$07    
       BEQ    L351F   
       LDA    #$AD    
       STA    $A8     
       DEC    $AA     
       JSR    L3522   
L34DA: LDA    $A8     
       CMP    #$9D    
       BNE    L34F3   
       LDX    #$BD    
       LDA    $AA     
       AND    #$07    
       CMP    #$07    
       BEQ    L351F   
       LDA    #$A4    
       STA    $A8     
       INC    $AA     
L34F0: JSR    L3522   
L34F3: LDA    $AA     
       AND    #$07    
       TAX            
       ASL            
       TAY            
       LDA    L3F92,Y 
       STA    $9B     
       INY            
       LDA    L3F92,Y 
       STA    $9C     
       LDA    L3FBA,X 
       STA    $C1     
       LDA    L3FC2,X 
       STA    $C3     
       LDY    #$03    
L3511: LDA    ($C1),Y 
       STA.wy $009F,Y 
       LDA    ($C3),Y 
       STA.wy $00A3,Y 
       DEY            
       BPL    L3511   
       RTS            

L351F: STX    $A8     
       RTS            

L3522: JSR    L3791   
       JSR    L3699   
       JSR    L35FA   
       STX    $D5     
       LDA    $E8     
       BEQ    L3537   
       LDA    #$20    
       STA    $CB     
       STX    $E8     
L3537: RTS            

L3538: LDA    $E3     
       BNE    L3585   
       LDA    $CF     
       BEQ    L3573   
       DEC    $CF     
       LDA    $CF     
       BNE    L355D   
       LDA    $D0     
       STA    $96     
       LDA    $D1     
       STA    $97     
       LDA    #$39    
       STA    $A8     
       LDA    $D3     
       BNE    L355E   
       STA    $E7     
       STA    $E4     
       JSR    L35D2   
L355D: RTS            

L355E: JSR    L35D8   
       LDA    $E7     
       BEQ    L356C   
       LDY    #$07    
       LDX    $E5     
       JSR    L3689   
L356C: LDA    $D2     
       STA    $AA     
       JMP    L34F0   
L3573: LDA    $AA     
       AND    #$07    
       BEQ    L3589   
       CMP    #$07    
       BEQ    L3589   
       CMP    #$01    
       BEQ    L3585   
       CMP    #$06    
       BCC    L3590   
L3585: JSR    L35D8   
       RTS            

L3589: LDX    #$00    
       STX    $D3     
       JMP    L35A7   
L3590: TAX            
       LDY    $AA     
       LDA    L3FA8,X 
       TAX            
       BPL    L359E   
       TYA            
       BPL    L3585   
       BMI    L35A1   
L359E: TYA            
       BMI    L3585   
L35A1: STX    $D2     
       LDX    #$01    
       STX    $D3     
L35A7: LDA    $A8     
       JSR    L375C   
       CMP    #$94    
       BCC    L3585   
       CMP    #$99    
       BCS    L3585   
       LDA    $B7     
       CMP    #$02    
       BNE    L3585   
       LDA    #$78    
       STA    $CF     
       JSR    L35DC   
       JSR    L35F1   
       LDA    $D3     
       BEQ    L35D1   
       LDA    $E7     
       BEQ    L35D1   
       LDX    $E5     
       JSR    L3687   
L35D1: RTS            

L35D2: LDA    $AA     
       EOR    #$80    
       STA    $AA     
L35D8: LDA    $AA     
       BPL    L35F1   
L35DC: LDA    $96     
       STA    $D0     
       STA    $98     
       LDA    $97     
       STA    $D1     
       STA    $99     
       LDA    #$D5    
       STA    $96     
       LDA    #$3B    
       STA    $97     
       RTS            

L35F1: LDA    #$D5    
       STA    $98     
       LDA    #$3B    
       STA    $99     
       RTS            

L35FA: LDX    #$03    
       LDA    #$07    
       LDY    $AA     
       BMI    L3605   
       TAX            
       LDA    #$03    
L3605: PHA            
       JSR    L3687   
       PLA            
       TAX            
       LDA    $E7     
       BNE    L366F   
       LDY    #$04    
L3611: STA.wy $00E1,Y 
       DEY            
       BPL    L3611   
       JSR    L3687   
       LDY    #$02    
L361C: LDX    #$03    
       LDA.wy $00C6,Y 
       BPL    L3625   
       LDX    #$07    
L3625: CMP    $AA     
       BNE    L362D   
       INY            
       STY    $E4     
       DEY            
L362D: AND    #$07    
       STA    $F2     
       LDA    $AA     
       AND    #$07    
       CMP    $F2     
       BNE    L3645   
       STY    $F2     
       LDY    #$07    
       STX    $E5     
       JSR    L3689   
       JMP    L366F   
L3645: DEY            
       BPL    L361C   
       LDA    $CE     
       BNE    L366F   
       LDX    #$03    
       LDY    #$03    
       LDA    $C9     
       BPL    L3656   
       LDX    #$07    
L3656: CMP    $AA     
       BNE    L365C   
       STX    $E1     
L365C: AND    #$07    
       STA    $F2     
       LDA    $AA     
       AND    #$07    
       CMP    $F2     
       BNE    L366F   
       LDA    #$09    
       STA    $A9     
       JSR    L3689   
L366F: LDX    #$04    
L3671: LDA    #$3B    
       STA    $8F,X   
       STA    $91,X   
       LDA    #$D5    
       STA    $8E,X   
       STA    $90,X   
       TXA            
       BEQ    L3684   
       LDX    #$00    
       BEQ    L3671   
L3684: STX    $CC     
       RTS            

L3687: LDY    #$0B    
L3689: LDA    #$04    
       STA    $F1     
L368D: LDA    L3CE9,Y 
       STA    $B9,X   
       DEY            
       DEX            
       DEC    $F1     
       BNE    L368D   
       RTS            

L3699: LDY    #$03    
L369B: LDA.wy $00C6,Y 
       BNE    L36CA   
       JSR    L36FF   
       STA    $F1     
L36A5: LDA    $F1     
       CLC            
       ADC    #$01    
       LDX    #$03    
       AND    #$87    
       STA    $F1     
       AND    #$07    
       BEQ    L36A5   
       CMP    #$07    
       BEQ    L36A5   
       STA    $F2     
L36BA: LDA    $C6,X   
       AND    #$07    
       CMP    $F2     
       BEQ    L36A5   
       DEX            
       BPL    L36BA   
       LDA    $F1     
       STA.wy $00C6,Y 
L36CA: DEY            
       BPL    L369B   
       RTS            

L36CE: LDA    $A8     
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDA    #$38    
       STA    HMP1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
L36DE: DEX            
       BNE    L36DE   
       STA    RESP0   
       STA    WSYNC   
L36E5: DEY            
       BNE    L36E5   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDX    #$01    
       STX    CTRLPF  
       LDX    $9A     
       STX    COLUP1  
       LDX    $C5     
       STX    NUSIZ1  
       STA    HMCLR   
       RTS            

L36FF: LDA    $EE     
       STA    $F1     
       LDA    $ED     
       STA    $F2     
       LDA    #$00    
       LDX    #$08    
L370B: LSR    $F1     
       BCC    L3712   
       CLC            
       ADC    $F2     
L3712: ROR            
       ROR    $ED     
       DEX            
       BNE    L370B   
       CLC            
       LDA    $ED     
       ADC    $EF     
       STA    $ED     
       INC    $F0     
       LDX    $F0     
       BNE    L3732   
       TAX            
       ASL            
       SEC            
       ROL            
       STA    $EE     
       TXA            
       SEC            
       ROL            
       STA    $EF     
       BNE    L36FF   
L3732: LDA    $ED     
       RTS            

L3735: STY    $F2     
       STA    $F1     
       CLC            
       ADC    $F2     
       LDY    $F2     
       BPL    L374C   
       LDY    $F1     
       BPL    L375B   
       TAY            
       BMI    L375B   
       CLC            
       ADC    #$F1    
       BNE    L375B   
L374C: LDY    $F1     
       BMI    L375B   
       TAY            
       AND    #$F0    
       CMP    #$70    
       TYA            
       BCC    L375B   
       CLC            
       ADC    #$0F    
L375B: RTS            

L375C: STA    $F1     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F2     
       LDA    $F1     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F2     
       RTS            

L3772: LDA    SWCHB   
       LSR            
       BCS    L379D   
       LDA    #$FF    
       STA    $EB     
       LDX    #$EA    
       LDA    #$00    
L3780: STA    VSYNC,X 
       DEX            
       CPX    #$CB    
       BNE    L3780   
L3787: LDX    #$4B    
L3789: LDA    L379E,X 
       STA    $80,X   
       DEX            
       BPL    L3789   
L3791: LDA    $EC     
       STA    $ED     
       ORA    #$01    
       STA    $EF     
       AND    #$FD    
       STA    $EE     
L379D: RTS            

L379E: .byte $00,$3F,$00,$3F,$00,$3F,$00,$3F,$00,$3F,$00,$3F,$07,$01,$D5,$3B
       .byte $D5,$3B,$D5,$3B,$D5,$3B,$12,$3C,$D5,$3B,$28,$D4,$A5,$02,$1F,$03
       .byte $03,$80,$15,$02,$0C,$80,$1F,$05,$0B,$09,$03,$26,$17,$D5,$3B,$D5
       .byte $3B,$D5,$3B,$D5,$3B,$CC,$3D,$12,$24,$D5,$3B,$D5,$3B,$00,$3E,$A0
       .byte $3E,$AE,$3F,$B2,$3F,$03,$02,$85,$00,$84,$0C,$10
L37EA: LDA    $CC     
       BEQ    L37F4   
       LDA    $D5     
       CMP    #$02    
       BNE    L37F5   
L37F4: RTS            

L37F5: LDX    $D4     
       LDA    $8E,X   
       CMP    #$AE    
       BCC    L380A   
       SEC            
       SBC    #$AE    
       STA    $8E,X   
       LDA    $90,X   
       SEC            
       SBC    #$AE    
       STA    $90,X   
       RTS            

L380A: LDA    $8E,X   
       CLC            
       ADC    #$3A    
       STA    $8E,X   
       LDA    $90,X   
       CLC            
       ADC    #$3A    
       STA    $90,X   
L3818: RTS            

L3819: LDX    #$00    
       LDA    $E3     
       BEQ    L3820   
       INX            
L3820: LDA    $CD     
       BNE    L3818   
       LDA    $CF     
       BNE    L3818   
       LDA    $E3     
       CMP    #$02    
       BEQ    L3835   
       LDA    SWCHA   
       CMP    #$FF    
       BEQ    L3818   
L3835: LDA    $96     
       CMP    L3FFE,X 
       BCC    L3849   
       SEC            
       SBC    L3FFE,X 
       STA    $96     
       LDA    #$04    
       STA    $DF     
       STA    AUDF1   
       RTS            

L3849: LDA    $96     
       CLC            
       ADC    #$28    
       STA    $96     
       RTS            

L3851: LDX    #$00    
       LDA    $E5     
       CMP    #$07    
       BNE    L385B   
       LDX    #$04    
L385B: LDY    #$00    
       LDA    $E2     
       BEQ    L3871   
       LDY    #$01    
       CMP    #$02    
       BEQ    L3871   
       INC    $E2     
       LDA    #$40    
       STA    $B9,X   
       LDA    #$AE    
       STA    $BB,X   
L3871: LDA    $E5     
       BEQ    L389D   
       LDA    $CF     
       BEQ    L387D   
       LDA    $E7     
       BNE    L389D   
L387D: LDA    $E7     
       BEQ    L3888   
       LDA    SWCHA   
       CMP    #$FF    
       BEQ    L389D   
L3888: LDA    $B9,X   
       CMP    L3DE2,Y 
       BCC    L3896   
       SEC            
       SBC    L3DE4,Y 
       STA    $B9,X   
       RTS            

L3896: LDA    $B9,X   
       CLC            
       ADC    #$10    
       STA    $B9,X   
L389D: RTS            

L389E: LDA    CXPPMM  
       ASL            
       BCC    L391A   
       LDA    $E2     
       BNE    L38C3   
       LDA    $B8     
       CMP    $F4     
       BNE    L38C3   
       LDX    #$01    
       JSR    L3EBD   
       BCS    L38C3   
       LDA    #$01    
       STA    $E2     
       LDA    #$00    
       STA    $E7     
       LDY    $E4     
       DEY            
       STA.wy $00C6,Y 
       RTS            

L38C3: LDA    $E3     
       BNE    L391A   
       LDA    $B7     
       CLC            
       ADC    #$04    
       CMP    $F4     
       BCC    L391A   
       SBC    #$08    
       BPL    L38D6   
       LDA    #$00    
L38D6: CMP    $F4     
       BCS    L391A   
       LDX    #$00    
       JSR    L3EBD   
       BCS    L391A   
       JSR    L3ED7   
       BCC    L38ED   
       STX    $CE     
       STX    $C9     
       STX    $E1     
       RTS            

L38ED: LDA    #$01    
       STA    $E3     
       TAX            
       LDA    $C5     
       BNE    L38F8   
       STA    $EB     
L38F8: ROR            
       STA    $C5     
       LDA    $CE     
       BEQ    L390B   
       JSR    L34AA   
       LDA    $96     
       CMP    #$A0    
       BCC    L390B   
       JSR    L343B   
L390B: LDA    #$3D    
       STA    $97     
       SEC            
       LDA    $B5     
       SBC    #$14    
       STA    $B5     
       INC    $E3     
       CLC            
       TXA            
L391A: RTS            

L391B: LDA    $E3     
       BEQ    L392D   
       LDA    #$20    
       LDX    $CB     
       BNE    L3929   
       STX    $E8     
       BEQ    L395B   
L3929: STA    $CB     
       BNE    L3940   
L392D: LDA    $AA     
       CMP    #$01    
       BEQ    L3937   
       CMP    #$06    
       BNE    L395D   
L3937: JSR    L36FF   
       LDY    #$00    
       LDX    $CB     
       BEQ    L394F   
L3940: DEC    $CB     
       LDX    $CB     
       BNE    L395D   
       AND    #$5A    
       BNE    L394C   
       LDA    #$0A    
L394C: STA    $E8     
       RTS            

L394F: DEC    $E8     
       LDX    $E8     
       BNE    L395D   
       AND    #$1F    
       BNE    L395B   
       LDA    #$05    
L395B: STA    $CB     
L395D: RTS            

L395E: LDA    $EA     
       CMP    #$05    
       BEQ    L396A   
       LDA    $E9     
       CMP    #$02    
       BNE    L3980   
L396A: LDA    #$00    
       STA    $EA     
       STA    $E9     
       INC    $8D     
       LDA    $8D     
       CMP    #$06    
       BCS    L397C   
       LDA    #$03    
       BNE    L397E   
L397C: LDA    #$01    
L397E: STA    $8C     
L3980: RTS            

L3981: LDY    #$00    
       LDA    $E3     
       BNE    L39D4   
       LDA    $CD     
       BNE    L39D4   
       LDA    $CF     
       BNE    L39D4   
       LDA    SWCHA   
       ASL            
       BCS    L39A5   
       LDY    #$F0    
       PHA            
       LDA    $E0     
       LDX    $E7     
       BEQ    L39A0   
       AND    #$FD    
L39A0: AND    #$FB    
       STA    $E0     
       PLA            
L39A5: ASL            
       BCS    L39B8   
       LDY    #$10    
       PHA            
       LDA    $E0     
       LDX    $E7     
       BEQ    L39B3   
       ORA    #$02    
L39B3: ORA    #$04    
       STA    $E0     
       PLA            
L39B8: LDX    $B7     
       ASL            
       BCS    L39C7   
       CPX    #$13    
       BEQ    L39C7   
       INC    $96     
       INC    $B5     
       INC    $B7     
L39C7: ASL            
       BCS    L39D4   
       CPX    #$02    
       BEQ    L39D4   
       DEC    $96     
       DEC    $B5     
       DEC    $B7     
L39D4: LDA    $A8     
       JSR    L3735   
       STA    $A8     
       RTS            

L39DC: LDA    $AA     
       AND    #$07    
       BEQ    L3A4E   
       CMP    #$07    
       BEQ    L3A4E   
       LDA    $E6     
       BNE    L39F5   
       JSR    L36FF   
       CMP    #$28    
       BCS    L39F3   
       LDA    #$28    
L39F3: STA    $E6     
L39F5: DEC    $E6     
       LDA    $E6     
       BNE    L3A4E   
       TAX            
       LDA    $AA     
       BPL    L3A02   
       LDX    #$04    
L3A02: STX    $D4     
       LDA    #$02    
       STA    $8E,X   
       LDA    #$3B    
       STA    $8F,X   
       STA    $91,X   
       LDA    #$43    
       STA    $AD,X   
       LDA    #$3F    
       STA    $AE,X   
       STA    $B0,X   
       LDA    #$01    
       STA    $90,X   
       LDA    #$42    
       STA    $AF,X   
       LDX    #$01    
       STX    $CC     
       INX            
       STX    $F4     
       JSR    L36FF   
       AND    #$03    
       CMP    #$01    
       BEQ    L3A46   
       CMP    #$02    
       BEQ    L3A4A   
       LDX    #$03    
       LDA    $AA     
L3A38: CMP    L3DE6,X 
       BEQ    L3A42   
       DEX            
       BPL    L3A38   
       BMI    L3A4A   
L3A42: LDA    #$29    
       BNE    L3A4C   
L3A46: LDA    #$B4    
       BNE    L3A4C   
L3A4A: LDA    #$9D    
L3A4C: STA    $A7     
L3A4E: RTS            

L3A4F: LDX    #$01    
       LDA    $E3     
       CMP    #$02    
       BEQ    L3A60   
       DEX            
       LDA    $CC     
       BEQ    L3A94   
       LDA    $D5     
       BEQ    L3A94   
L3A60: LDY    #$10    
       LDA    $E0     
       ORA    L3BFE,X 
       STA    $E0     
       LDA    $A7,X   
       JSR    L3735   
       STA    $A7,X   
       CPX    #$01    
       BNE    L3A7A   
       LDY    #$00    
       STY    $E7     
       STY    $CD     
L3A7A: CMP    #$B4    
       BEQ    L3A7F   
       RTS            

L3A7F: CPX    #$01    
       BEQ    L3A89   
       INC    $D5     
       JSR    L366F   
       RTS            

L3A89: LDA    #$3C    
       STA    $97     
       CLC            
       LDA    $B5     
       ADC    #$14    
       STA    $B5     
L3A94: RTS            

L3A95: LDY    $EB     
       BEQ    L3A9D   
       LDA    $CC     
       BEQ    L3AF8   
L3A9D: LDA    $EC     
       AND    #$01    
       BNE    L3AAC   
       LDX    $DE     
       BEQ    L3AAC   
       DEX            
       STX    $DE     
       STX    AUDV0   
L3AAC: DEC    $CA     
       BNE    L3AFA   
       LDX    #$0C    
       STX    $CA     
       LDX    $DD     
       BNE    L3AE1   
       LDX    $DC     
       BNE    L3AD3   
       LDX    $DB     
       BNE    L3AC2   
       LDX    #$09    
L3AC2: DEX            
       STX    $DB     
       TYA            
       BNE    L3ADF   
       LDA    #$00    
       STA    AUDV1   
       LDA    L3DB1,X 
       BNE    L3ADF   
       LDX    #$03    
L3AD3: LDA    L3CE5,X 
       STA    AUDF1   
       LDA    #$06    
       STA    AUDV1   
       DEX            
       STX    $DC     
L3ADF: LDX    #$14    
L3AE1: LDA    L3DEA,X 
       STA    AUDF0   
       DEX            
       LDA    L3DEA,X 
       STA    AUDC0   
       DEX            
       STX    $DD     
       LDA    #$0A    
       STA    $DE     
       LDA    #$0C    
       STA    AUDC1   
       RTS            

L3AF8: STA    AUDV0   
L3AFA: RTS            

L3AFB: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$A0,$A0,$E0,$30,$60,$60
       .byte $E0,$A0,$20,$60,$60,$60,$F0,$50,$F0,$F0,$D0,$6E,$10,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$60,$40,$60,$60,$20,$70,$60,$E0,$E0,$C0,$A0,$60,$60
       .byte $F0,$48,$E8,$E9,$C6,$68,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$98,$50
       .byte $50,$30,$60,$60,$E0,$E0,$E0,$D0,$A0,$70,$E8,$49,$EA,$E4,$C8,$60
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$18,$90,$90,$D0,$70,$60,$60,$E0,$E0
       .byte $C0,$A0,$60,$60,$F0,$48,$E8,$E9,$C6,$68,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00
L3BFE: .byte $08,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$0C,$28,$28,$38,$1C,$7C,$FE,$FE,$7C,$38
       .byte $30,$28,$18,$18,$38,$50,$F8,$78,$70,$38,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$20
       .byte $30,$30,$18,$7C,$FE,$FE,$7C,$38,$38,$30,$28,$18,$38,$50,$F8,$78
       .byte $70,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$60,$46,$24,$24,$14,$7C,$FE,$FE,$7C,$38
       .byte $38,$38,$34,$28,$18,$50,$F8,$78,$70,$38,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$44
       .byte $44,$64,$14,$7C,$FE,$FE,$7C,$38,$30,$28,$18,$18,$38,$50,$F8,$78
       .byte $70,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$30,$2C,$28,$28,$28,$7C,$FE,$FE,$7C,$38
       .byte $38,$38,$37,$28,$28,$50,$F8,$78,$70,$38,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $40,$60,$30,$18,$0D,$06,$0A
L3CE5: .byte $00,$15,$17,$1B
L3CE9: .byte $D4,$3C,$D5,$3B,$00,$3E,$A0,$3E,$D5,$3B
L3CF3: LDA    $AA     
       BPL    L3CFF   
       LDA    $98     
       STA    $96     
       LDA    $99     
       STA    $97     
L3CFF: RTS            

L3D00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$0C,$28,$28,$38,$1C,$7C,$FE,$FE,$7C,$38,$38,$38
       .byte $38,$BA,$7C,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$20,$30,$30
       .byte $18,$7C,$FE,$FE,$7C,$38,$38,$38,$38,$38,$7C,$92,$28,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$60,$46,$24,$24,$14,$7C,$FE,$FE,$7C,$38,$38,$38
       .byte $38,$38,$7C,$92,$20,$48,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$44,$44,$64
       .byte $14,$7C,$FE,$FE,$7C,$38,$38,$38,$38,$BA,$7C,$10,$20,$48,$84,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00
L3DB1: .byte $00,$00,$00,$01,$01,$01,$01,$00,$01,$0E,$0E,$0E,$0E,$34,$34,$34
       .byte $34,$34,$CA,$CA,$CA,$CA,$CA,$CA,$2E,$32,$32,$32,$32,$0E,$0E,$0E
       .byte $0E,$34,$34,$34,$34,$34,$CA,$CA,$CA,$CA,$CA,$CA,$2E,$2E,$2E,$2E
       .byte $2E
L3DE2: .byte $30,$90
L3DE4: .byte $30,$50
L3DE6: .byte $82,$03,$84,$05
L3DEA: .byte $00,$0C,$0D,$04,$1A,$0C,$0D,$04,$1B,$0C,$0D,$0C,$0D,$04,$1B,$0C
       .byte $0D,$0C,$0D,$04,$1B,$00,$00,$00,$0C,$28,$28,$38,$1C,$38,$38,$38
       .byte $7C,$92,$B9,$3C,$18,$00,$00,$00,$30,$20,$30,$30,$18,$38,$38,$38
       .byte $7C,$54,$7C,$3C,$18,$00,$00,$00,$30,$26,$24,$14,$1C,$38,$38,$38
       .byte $7C,$54,$7C,$3C,$18,$00,$00,$00,$06,$44,$64,$14,$1C,$38,$38,$38
       .byte $7C,$92,$B9,$3C,$18,$00,$00,$40,$60,$B0,$F8,$7C,$3F,$1A,$76,$0E
       .byte $0C,$00,$00,$00,$00,$00,$00,$40,$60,$B0,$F8,$7C,$3F,$1A,$76,$0E
       .byte $0C,$0C,$00,$00,$00,$00,$00,$40,$60,$B0,$F8,$7C,$3F,$1A,$76,$0E
       .byte $0C,$08,$14,$00,$00,$00,$00,$40,$60,$B0,$F8,$7C,$3F,$1A,$76,$0E
       .byte $0C,$08,$10,$22,$00,$00,$00,$40,$60,$B0,$F8,$7C,$3F,$1A,$76,$0E
       .byte $0C,$00,$11,$20,$00,$00,$00,$40,$60,$B0,$F8,$7C,$3F,$1A,$76,$0E
       .byte $0C,$01,$00,$00,$00,$00,$00,$40,$80,$80,$80,$80,$80,$80,$D5,$D5
       .byte $D5,$2E,$2E,$2E,$2E,$80,$80,$80,$80,$80,$D5,$D5,$D5,$2E,$2E,$32
       .byte $32,$32,$32
L3EBD: LDA    $A7     
L3EBF: JSR    L375C   
       STA    $F3     
       LDA    $A8,X   
       JSR    L375C   
       TAX            
       SEC            
       SBC    $F3     
       BPL    L3ED4   
       EOR    #$FF    
       CLC            
       ADC    #$01    
L3ED4: CMP    #$06    
       RTS            

L3ED7: LDA    $CD     
       BEQ    L3EFE   
       LDY    #$00    
       LDA    #$04    
       BIT    $E0     
       BEQ    L3EE5   
       LDY    #$01    
L3EE5: TXA            
       CMP    $F3     
       BCS    L3EFA   
       TYA            
       BNE    L3EFE   
L3EED: LDA    #$01    
       STA    $D5     
       LDA    #$03    
       JSR    L3FEA   
       INC    $E9     
       SEC            
       RTS            

L3EFA: CPY    #$01    
       BEQ    L3EED   
L3EFE: CLC            
       RTS            

L3F00: .byte $3C,$7E,$66,$66,$66,$66,$7E,$3C,$3C,$3C,$18,$18,$18,$18,$38,$18
       .byte $7E,$7E,$60,$7C,$3E,$06,$7E,$3C,$3C,$7E,$06,$0C,$0C,$06,$7E,$3C
       .byte $0C,$0C,$7E,$7E,$6C,$6C,$3C,$1C,$3C,$7E,$06,$7E,$7C,$60,$7E,$7E
       .byte $3C,$7E,$66,$7E,$7C,$60,$7E,$3C,$60,$30,$18,$0C,$06,$06,$7E,$7E
       .byte $3C,$7E,$66,$3C,$3C,$66,$7E,$3C,$3C,$7E,$06,$3E,$7E,$66,$7E,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08,$08,$08,$08
       .byte $08,$08,$08,$08,$2E,$2E,$2E,$2E,$2E,$2E
L3F6A: .byte $7C,$D6,$AA,$FE,$EE,$FE,$D6,$7C,$38,$00
L3F74: .byte $C0,$00,$00,$00,$40,$40,$80,$80,$00,$C0
L3F7E: .byte $FF,$06,$09,$09,$10,$10,$20,$20,$C0,$FF
L3F88: .byte $FF,$80,$40,$40,$21,$21,$12,$12,$0C,$FF
L3F92: .byte $54,$2A,$3B,$98,$62,$87,$D4,$A5,$87,$3B,$47,$A5,$A3,$26,$2A,$54
       .byte $03,$00,$80,$15,$00,$0C
L3FA8: .byte $00,$00,$84,$05,$82,$03,$03,$03,$80,$15,$02,$0C,$80,$1F,$01,$00
       .byte $30,$20
L3FBA: .byte $A2,$B2,$A6,$AE,$B6,$AE,$A6,$A2
L3FC2: .byte $A2,$B6,$AE,$B2,$AE,$A6,$B2,$A2
L3FCA: CLC            
       LDY    $D6     
       BEQ    L3FE9   
       LDX    #$02    
       SED            
       LDA    #$75    
       BNE    L3FDF   
L3FD6: CLC            
       STY    AUDF1   
       LDA    #$09    
       STA    $DF     
       LDA    #$01    
L3FDF: ADC    $D8,X   
       STA    $D8,X   
       DEX            
       BCS    L3FD6   
       CLD            
       DEC    $D6     
L3FE9: RTS            

L3FEA: CLC            
       LDX    #$08    
L3FED: ROL            
       BCC    L3FF3   
       CLC            
       ADC    $8D     
L3FF3: DEX            
       BNE    L3FED   
       CLC            
       ADC    $D6     
       STA    $D6     
       RTS            

L3FFC: .byte $00,$30
L3FFE: .byte $78,$78
