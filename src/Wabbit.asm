; Disassembly of roms/Wabbit.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Wabbit.bin
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
RESM0   =  $12
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
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
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $3000

START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L3007: STA    VSYNC,X 
       INX            
       BNE    L3007   
       LDX    #$6C    
       JSR    L37F1   
L3011: LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       LDX    #$02    
L301E: LDA    $BE,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $D2,X   
       LDA    $BF,X   
       AND    #$F0    
       LSR            
       STA    $D6,X   
       LDA    $BF,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $DA,X   
       DEX            
       DEX            
       BPL    L301E   
       LDY    #$50    
       LDA    $D2     
       BNE    L3049   
       STY    $D2     
       LDA    $D6     
       BNE    L3049   
       STY    $D6     
L3049: LDA    $D4     
       BNE    L3055   
       STY    $D4     
       LDA    $D8     
       BNE    L3055   
       STY    $D8     
L3055: LDA    INTIM   
       BNE    L3055   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       LDA    $BE     
       BEQ    L3082   
       LDY    $E9     
       LDA    L378A,Y 
       BPL    L3074   
       LDA    $C3     
       CMP    #$01    
       BNE    L3082   
L3074: LDA    $C2     
       BEQ    L309E   
       LDA    #$00    
       STA    $C2     
       LDA    #$1F    
       INC    $E4     
       STA    $C7     
L3082: LDA    $C2     
       BEQ    L309E   
       JSR    L33E6   
       JSR    L34A3   
       JSR    L334F   
       JSR    L3390   
       JSR    L3512   
       JSR    L3117   
       JSR    L32F0   
       JMP    L30AB   
L309E: LDA    $E0     
       BNE    L30AB   
       LDA    $E4     
       BNE    L30AB   
       JSR    L33E6   
       INC    $80     
L30AB: LDA    $D1     
       STA    HMM0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L30B4: DEX            
       BNE    L30B4   
       STA    RESM0   
       LDA    #$A0    
       STA    HMP0    
       LDA    #$B0    
       STA    HMP1    
       LDX    #$0D    
       STA    WSYNC   
L30C5: DEX            
       BNE    L30C5   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JMP    L3800   
L30D3: LDY    $E9     
       LDA    L378A,Y 
       AND    #$03    
       STA    $E8     
       JSR    L360C   
       JSR    L325B   
       JSR    L379C   
L30E5: LDA    INTIM   
       BNE    L30E5   
       JMP    L3011   
L30ED: LDA    $E0     
       LSR            
       LSR            
       AND    #$03    
       CPX    #$01    
       BEQ    L3104   
       CMP    #$03    
       BCC    L30FD   
       LDA    #$00    
L30FD: CPX    #$02    
       BNE    L3107   
       CLC            
       ADC    #$04    
L3104: CLC            
       ADC    #$03    
L3107: TAY            
       LDA    L3780,Y 
       STA    $EA,X   
       STA    $F3,X   
       LDA    L3792,Y 
       STA    $ED,X   
       STY    $F0,X   
       RTS            

L3117: LDA    $CA     
       BNE    L3154   
       LDY    #$FF    
       LDX    #$02    
L311F: LDA    $8F,X   
       BEQ    L3124   
       INY            
L3124: DEX            
       BPL    L311F   
       CPY    $E8     
       BEQ    L3154   
       JSR    L348E   
       STX    $F7     
       JSR    L30ED   
       TYA            
       TAX            
       LDA    $83,X   
       CMP    #$08    
       BEQ    L3154   
       LDX    $F7     
       LDY    $80     
       LDA    L3607,Y 
       STA    $A1,X   
       LDY    #$01    
       STY    $8F,X   
       STY    $92,X   
       LDA    $C7     
       CMP    #$11    
       BCS    L3154   
       LDA    #$06    
       STA    $C7     
L3154: LDX    #$02    
L3156: STX    $F9     
       LDY    $8F,X   
       BNE    L315F   
       JMP    L31F5   
L315F: LDA    $9E,X   
       BPL    L3170   
       ASL            
       BPL    L3170   
       LDY    $80     
       LDA    L35FF,Y 
       STA    $A1,X   
       JMP    L3204   
L3170: LDA    #$10    
       LDY    $ED,X   
       BNE    L3178   
       LDA    #$F0    
L3178: STA    $9B     
       LDA    #$07    
       LDY    $E9     
       CPY    #$06    
       BCC    L3184   
       LDA    #$03    
L3184: CLC            
       ADC    $C0     
       ADC    $C0     
       ADC    $C0     
       LDY    #$00    
       STY    $9C     
L318F: CMP    #$08    
       BCC    L31A1   
       SBC    #$08    
       TAY            
       CLC            
       LDA    $9C     
       ADC    $9B     
       STA    $9C     
       TYA            
       JMP    L318F   
L31A1: STA    $F8     
       LDA    $E0     
       AND    #$07    
       CMP    $F8     
       BEQ    L31AD   
       BCS    L31B4   
L31AD: CLC            
       LDA    $9C     
       ADC    $9B     
       STA    $9C     
L31B4: LDY    $9C     
       LDA    #$01    
       STA    $F7     
       LDA    $EA,X   
       JSR    L3698   
       LDX    $F9     
       STA    $EA,X   
       JSR    L36E8   
       STA    $F9     
       LDA    $F3,X   
       JSR    L36E8   
       BMI    L31D7   
       CMP    $F9     
       BEQ    L31FF   
       BCC    L31FF   
       BCS    L31DB   
L31D7: CMP    $F9     
       BCS    L31FF   
L31DB: LDA    $CA     
       BNE    L31F5   
       LDA    $9E,X   
       LSR            
       BCC    L31F5   
       SED            
       CLC            
       LDA    #$01    
       ADC    $BF     
       STA    $BF     
       LDA    #$00    
       STA    $E2     
       ADC    $BE     
       STA    $BE     
       CLD            
L31F5: LDY    #$00    
       STY    $92,X   
       STY    $8F,X   
       STY    $E5,X   
       STY    $9E,X   
L31FF: STX    $F9     
       JSR    L320D   
L3204: LDX    $F9     
       DEX            
       BMI    L320C   
       JMP    L3156   
L320C: RTS            

L320D: LDY    $92,X   
       CPY    #$04    
       BCC    L3217   
       LDY    #$01    
       STY    $92,X   
L3217: LDA    $F0,X   
       TAX            
       CPY    #$01    
       BMI    L3230   
       BEQ    L3228   
       CPY    #$02    
       BEQ    L322C   
       LDA    #$43    
       BNE    L3232   
L3228: LDA    #$2E    
       BNE    L3232   
L322C: LDA    #$37    
       BNE    L3232   
L3230: LDA    #$E4    
L3232: STA    $B4,X   
       LDA    $E0     
       AND    #$07    
       BNE    L325A   
       LDX    $F9     
       LDA    $92,X   
       BEQ    L325A   
       INC    $92,X   
       LDA    $9E,X   
       ASL            
       BPL    L325A   
       LDA    $A1,X   
       LDY    $80     
       CMP    L3607,Y 
       BEQ    L3255   
       LDA    L3607,Y 
       BNE    L3258   
L3255: LDA    L35FF,Y 
L3258: STA    $A1,X   
L325A: RTS            

L325B: LDA    SWCHA   
       INC    $E0     
       LDX    $CB     
       BEQ    L3268   
       ASL            
       ASL            
       ASL            
       ASL            
L3268: LDY    SWCHB   
       ASL            
       BCS    L327F   
       TYA            
       ASL            
       LDX    $CB     
       BNE    L3275   
       ASL            
L3275: LDY    #$E0    
       BCC    L327B   
       LDY    #$F0    
L327B: LDX    #$00    
       BEQ    L3291   
L327F: ASL            
       BCS    L32AB   
       TYA            
       ASL            
       LDX    $CB     
       BNE    L3289   
       ASL            
L3289: LDY    #$20    
       BCC    L328F   
       LDY    #$10    
L328F: LDX    #$08    
L3291: STX    $DE     
       LDA    $E0     
       AND    #$0F    
       BNE    L32A1   
       LDA    $C7     
       BNE    L32A1   
       LDA    #$08    
       STA    $C7     
L32A1: LDA    $E0     
       AND    #$07    
       BNE    L32AD   
       INC    $DF     
       BNE    L32AD   
L32AB: LDY    #$00    
L32AD: STY    $F6     
       LDA    #$00    
       STA    $F7     
       LDA    $D0     
       JSR    L3698   
       STA    $D0     
       LDY    $F6     
       LDA    #$01    
       STA    $F7     
       LDA    $E1     
       JSR    L3698   
       STA    $E1     
       LDA    $DF     
       CMP    #$04    
       BCC    L32D1   
       LDA    #$00    
       STA    $DF     
L32D1: CMP    #$01    
       BMI    L32E7   
       BEQ    L32E1   
       CMP    #$02    
       BEQ    L32E7   
       LDA    #$9C    
       LDX    #$B0    
       BNE    L32EB   
L32E1: LDA    #$74    
       LDX    #$88    
       BNE    L32EB   
L32E7: LDA    #$4C    
       LDX    #$60    
L32EB: STA    $CC     
       STX    $CE     
       RTS            

L32F0: LDX    $8E     
       LDY    $CB     
       LDA.wy $003C,Y 
       BMI    L331F   
       LDY    $F6     
       BNE    L3305   
       LDA    #$C4    
       STA    $CC     
       LDA    #$D8    
       STA    $CE     
L3305: CPX    #$0B    
       BNE    L331B   
       LDA    $CA     
       BNE    L3332   
       LDA    $E1     
       STA    $D1     
       LDA    $C7     
       CMP    #$11    
       BCS    L331B   
       LDA    #$0F    
       STA    $C7     
L331B: LDY    #$01    
       BNE    L3323   
L331F: LDY    $8D     
       BEQ    L333D   
L3323: LDA    $CA     
       BNE    L3332   
       CLC            
       LDA    $A6,X   
       ADC    #$FC    
       STA    $A6,X   
       CMP    #$EB    
       BCS    L333D   
L3332: LDA    #$F3    
       STA    $A6,X   
       DEX            
       BPL    L333D   
       LDX    #$0B    
       LDY    #$00    
L333D: STX    $8E     
       STY    $8D     
       LDY    #$00    
       LDA    #$01    
       STA    $F7     
       LDA    $D1     
       JSR    L3698   
       STA    $D1     
       RTS            

L334F: LDX    #$02    
L3351: STX    $F9     
       LDA    $95,X   
       BMI    L338C   
       LDA    $F0,X   
       TAX            
       LDA    $83,X   
       BEQ    L3365   
       CMP    #$08    
       BEQ    L3365   
       LSR            
       BPL    L3367   
L3365: LDA    #$08    
L3367: STA    $83,X   
       LDX    $F9     
       JSR    L3F8D   
       LDA    #$80    
       STA    $95,X   
       LDA    $C7     
       CMP    #$11    
       BCS    L337C   
       LDA    #$11    
       STA    $C7     
L337C: LDA    #$01    
       STA    $9E,X   
       STA    $E3     
       INC    $C9     
       LDY    $C9     
       CPY    #$1E    
       BNE    L338C   
       STA    $CA     
L338C: DEX            
       BPL    L3351   
       RTS            

L3390: LDX    #$02    
L3392: STX    $F9     
       LDA    $98,X   
       ASL            
       BPL    L33E2   
       LDA    $9E,X   
       ASL            
       BMI    L33E2   
       LSR            
       LSR            
       LDY    #$05    
       BCC    L33A6   
       LDY    #$0A    
L33A6: TYA            
       SED            
       CLC            
       ADC    $C1     
       STA    $C1     
       BCC    L33C3   
       LDA    $C0     
       ADC    #$00    
       STA    $C0     
       LDY    #$00    
       LDA    $BF     
       STY    $BF     
       CMP    #$25    
       BCC    L33C3   
       SBC    #$25    
       STA    $BF     
L33C3: CLD            
       LDA    #$F3    
       LDX    $8E     
L33C8: STA    $A6,X   
       DEX            
       BPL    L33C8   
       INX            
       LDY    #$0B    
       STX    $8D     
       STY    $8E     
       LDX    $F9     
       LDA    #$C0    
       STA    $9E,X   
       LDA    #$16    
       STA    $C7     
       LDA    #$28    
       STA    $E5,X   
L33E2: DEX            
       BPL    L3392   
       RTS            

L33E6: LDY    $E9     
       LDA    L378A,Y 
       BPL    L3420   
       LDA    $C2     
       BEQ    L3409   
       LDA    $E2     
       BNE    L3420   
       LDA    $C3     
       BNE    L3420   
       LDA    $BF     
       BEQ    L3409   
       CMP    #$25    
       BEQ    L3409   
       CMP    #$50    
       BEQ    L3409   
       CMP    #$75    
       BNE    L3420   
L3409: LDA    $CB     
       EOR    #$01    
       STA    $CB     
       LDX    #$03    
L3411: LDA    $BE,X   
       LDY    $C3,X   
       STY    $BE,X   
       STA    $C3,X   
       DEX            
       BPL    L3411   
       STX    $E2     
       STX    $CA     
L3420: RTS            

L3421: .byte $00,$29,$35,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$00,$0B,$00
       .byte $00,$00,$01,$01,$01,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$0F,$0F,$0F,$F3,$35,$F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3
       .byte $F3,$F3,$E4,$35,$E4,$E4,$E4,$E4,$E4,$E4,$E4,$E4,$E4,$E4,$00,$01
       .byte $00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$4C,$35,$60,$35
       .byte $69,$09,$00,$37,$00,$37,$00,$37,$00,$37,$00,$37,$00,$37,$00,$00
       .byte $FF,$09,$00,$00,$00,$00,$00,$00,$00,$00,$26,$B5,$3D
L348E: LDA    $E0     
L3490: AND    #$03    
       CMP    #$03    
       BCC    L3498   
       LDA    #$00    
L3498: TAX            
       LDY    $8F,X   
       BEQ    L34A2   
       TAX            
       INX            
       TXA            
       BPL    L3490   
L34A2: RTS            

L34A3: LDA    $CA     
       BEQ    L34F1   
       LDX    #$02    
L34A9: LDA    $8F,X   
       BNE    L34F1   
       DEX            
       BPL    L34A9   
       LDY    #$01    
       STY    $CA     
       LDA    $E0     
       AND    #$03    
       BNE    L34F1   
       LDA    $E0     
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$0A    
       BCS    L34F1   
       TAX            
       LDA    $83,X   
       BEQ    L34D5   
       CMP    #$03    
       BEQ    L34E1   
       CMP    #$01    
       BNE    L34D9   
       LDA    #$03    
       BNE    L34DB   
L34D5: LDA    #$01    
       BNE    L34DB   
L34D9: LDA    #$00    
L34DB: STA    $83,X   
       LDA    #$06    
       STA    $C7     
L34E1: LDX    #$09    
L34E3: LDA    $83,X   
       CMP    #$03    
       BNE    L34F1   
       DEX            
       BPL    L34E3   
       INX            
       STX    $C9     
       STX    $CA     
L34F1: RTS            

L34F2: .byte $00,$01,$01,$01,$01,$01,$01,$00,$01,$00,$01,$01,$01,$01,$01,$01
       .byte $00,$01,$00,$03,$03,$03,$01,$00,$1F,$1C,$09,$14,$01,$0D,$01,$0D
L3512: LDX    #$02    
L3514: LDA    $E5,X   
       BEQ    L3525   
       DEC    $E5,X   
       LDA    $E5,X   
       BNE    L3525   
       JSR    L3F8D   
       LDA    #$40    
       STA    $9E,X   
L3525: DEX            
       BPL    L3514   
       RTS            

L3529: .byte $60,$F0,$F0,$60,$20,$C6,$8C,$F8,$EC,$DB,$FB,$8E,$14,$24,$30,$2C
       .byte $68,$EC,$DB,$FB,$8E,$14,$6C,$00,$00,$00,$00,$00,$30,$64,$EC,$DB
       .byte $FB,$86,$3C,$1C,$1C,$00,$00,$FE,$7E,$66,$24,$26,$27,$27,$00,$F0
       .byte $38,$78,$F0,$72,$38,$7F,$36,$00,$00,$18,$18,$00,$00,$18,$18,$18
       .byte $18,$18,$1E,$C0,$06,$06,$0F,$0C,$06,$00,$00,$E7,$00,$00,$00,$FF
       .byte $7F,$38,$30,$32,$27,$27,$00,$F0,$38,$78,$F0,$72,$38,$7F,$36,$00
       .byte $C6,$C6,$66,$00,$00,$46,$4C,$4C,$18,$18,$1E,$0C,$06,$06,$0F,$0C
       .byte $06,$00,$00,$E7,$00,$00,$00,$FF,$7F,$3E,$1C,$1E,$0F,$0F,$00,$F0
       .byte $38,$78,$F0,$72,$38,$7F,$36,$00,$C6,$C6,$CC,$00,$00,$C1,$62,$60
       .byte $30,$30,$1E,$0C,$06,$06,$0F,$0C,$06,$00,$00,$66,$00,$00,$00,$FF
       .byte $FF,$7E,$3C,$7E,$7E,$3C,$00,$FF,$7E,$FF,$FF,$FE,$7E,$7E,$3C,$00
       .byte $66,$66,$66,$00,$00,$00,$00,$81,$81,$C3,$3C,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$02,$02,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00
L35FC: .byte $99
L35FD: .byte $44
L35FE: .byte $4A
L35FF: .byte $2A
L3600: .byte $0A
L3601: .byte $E0
L3602: .byte $E3
L3603: .byte $D4
L3604: .byte $D6
L3605: .byte $D8
L3606: .byte $37
L3607: .byte $0F
L3608: .byte $E0
L3609: .byte $3C
L360A: .byte $36
L360B: .byte $82
L360C: LDA    $C8     
       BEQ    L3614   
       DEC    $C8     
       BPL    L364B   
L3614: LDA    $C7     
       BEQ    L364C   
       DEC    $C7     
       TAX            
       LDA    L34F2,X 
       BEQ    L3653   
       STA    $C8     
       LDA    L3658,X 
       STA    AUDV0   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0   
       LDY    $E3     
       BNE    L363D   
       LDY    $CA     
       BEQ    L3637   
       BNE    L363D   
L3637: LDA    L3678,X 
       STA    AUDF0   
       RTS            

L363D: LDA    $E0     
       LSR            
       LSR            
       AND    #$07    
       ORA    #$08    
       STA    AUDF0   
       LDA    #$00    
       STA    $E3     
L364B: RTS            

L364C: STA    AUDC0   
       STA    AUDV0   
       STA    AUDF0   
       RTS            

L3653: STA    $C7     
       STA    $E4     
       RTS            

L3658: .byte $00,$4F,$4D,$4B,$49,$46,$44,$00,$64,$00,$8A,$89,$88,$87,$86,$84
       .byte $00,$C6,$00,$1F,$1F,$1F,$1F,$00,$CF,$CF,$CF,$CF,$B0,$CF,$B0,$CF
L3678: .byte $00,$09,$0A,$0B,$0C,$0D,$0E,$00,$10,$00,$1A,$06,$07,$08,$09,$0A
       .byte $00,$05,$00,$03,$04,$05,$06,$00,$13,$10,$0E,$13,$00,$10,$00,$10
L3698: LDX    $F7     
       STY    $F8     
       STA    $F7     
       CLC            
       ADC    $F8     
       LDY    $F8     
       BPL    L36B1   
       LDY    $F7     
       BPL    L36C0   
       TAY            
       BMI    L36C0   
       CLC            
       ADC    #$F1    
       BNE    L36C0   
L36B1: LDY    $F7     
       BMI    L36C0   
       TAY            
       AND    #$F0    
       CMP    #$70    
       TYA            
       BCC    L36C0   
       CLC            
       ADC    #$0F    
L36C0: TAY            
       JSR    L36E8   
       CPX    #$00    
       BEQ    L36D8   
       CMP    #$50    
       BCC    L36D2   
       CMP    #$E4    
       BCS    L36D5   
       TYA            
       RTS            

L36D2: LDA    #$65    
       RTS            

L36D5: LDA    #$2E    
       RTS            

L36D8: CMP    #$49    
       BCC    L36E2   
       CMP    #$DD    
       BCS    L36E5   
       TYA            
       RTS            

L36E2: LDA    #$D4    
       RTS            

L36E5: LDA    #$9D    
       RTS            

L36E8: STA    $F7     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F8     
       LDA    $F7     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F8     
       RTS            

L36FE: .byte $00,$00,$00,$3C,$66,$66,$66,$66,$66,$3C,$00,$3C,$18,$18,$18,$18
       .byte $38,$18,$00,$7E,$60,$30,$18,$0C,$66,$3C,$00,$3C,$66,$06,$1C,$06
       .byte $66,$3C,$00,$0C,$7E,$6C,$6C,$3C,$1C,$0C,$00,$3C,$66,$06,$06,$7C
       .byte $60,$7C,$00,$3C,$66,$66,$7C,$60,$66,$3C,$00,$30,$30,$18,$0C,$06
       .byte $06,$7E,$00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$66,$06,$3E,$66
       .byte $66,$3C,$00,$00,$00,$00,$00,$00,$00,$00
L3758: .byte $04,$02,$02,$01,$10,$08,$06,$C1,$30,$0C,$62,$18,$00,$30,$0C,$00
       .byte $E0,$1E,$00,$FE
L376C: .byte $08,$88,$49,$29,$8A,$40,$07,$07,$9F,$1F,$3F,$3F,$7F,$7F,$FF,$FF
       .byte $FF,$FF,$FF,$FF
L3780: .byte $26,$4C,$66,$0C,$B5,$CC,$F5,$8C,$35,$3D
L378A: .byte $01,$81,$00,$80,$02,$82,$00,$80
L3792: .byte $00,$08,$00,$08,$00,$08,$00,$08,$00,$08
L379C: LDA    $C2     
       BNE    L37AC   
       LDA    $E4     
       BNE    L37AC   
       LDA    INPT4   
       BPL    L37B2   
       LDA    INPT5   
       BPL    L37B2   
L37AC: LDA    SWCHB   
       LSR            
       BCS    L37C4   
L37B2: LDY    $E9     
       LDX    #$4B    
       JSR    L37F1   
       STX    $C2     
       STY    $E9     
       LDA    #$00    
       STA    $BF     
       STA    $C1     
       RTS            

L37C4: LSR            
       BCS    L37F0   
       LDA    $E0     
       AND    #$0F    
       BNE    L37F0   
       LDY    $E9     
       LDX    #$4B    
       JSR    L37F1   
       INY            
       CPY    #$08    
       BNE    L37DB   
       LDY    #$00    
L37DB: STY    $E9     
       STY    $BF     
       INC    $BF     
       LDA    L378A,Y 
       ASL            
       LDA    #$00    
       STA    $C0     
       STA    $BE     
       ROL            
       STA    $C1     
       INC    $C1     
L37F0: RTS            

L37F1: LDA    L3421,X 
       STA    $80,X   
       DEX            
       BPL    L37F1   
       RTS            

L37FA: .byte $00,$00,$00,$00,$00,$00
L3800: LDA    INTIM   
       BNE    L3800   
       STA    WSYNC   
       STA    VBLANK  
       LDX    $80     
       LDA    L35FC,X 
       STA    COLUBK  
       LDA    L35FD,X 
       STA    COLUPF  
       LDA    #$10    
       STA    NUSIZ0  
       LDY    #$13    
       LDA    L35FF,X 
       STA    COLUP0  
       STA    COLUP1  
       LDA    L3606,X 
       STA    $F8     
       LDA    L3604,X 
       STA    $F9     
       LDA    L3605,X 
       STA    $FA     
       LDA    #$35    
       STA    $B3     
       STA    $A5     
       STA    CXCLR   
L3839: STA    WSYNC   
       LDA    L3FA1,Y 
       STA    PF0     
       LDA    L3FB5,Y 
       STA    PF1     
       LDA    L3758,Y 
       STA    GRP0    
       LDA    L376C,Y 
       STA    GRP1    
       CPY    #$06    
       BNE    L3858   
       LDA    L35FE,X 
       STA    COLUPF  
L3858: LDA    #$00    
       STA    PF0     
       STA    PF1     
       DEY            
       BPL    L3839   
       LDY    #$04    
       LDA    L3600,X 
       STA    COLUPF  
       LDA    $A1     
       STA    COLUP0  
       STX    $F7     
       LDX    #$06    
       STA    HMCLR   
L3872: STA    WSYNC   
       TXS            
       LDX    $F7     
       LDA    L3603,X 
       STA    COLUBK  
       LDA    #$50    
       STA    PF0     
       LDA    #$AA    
       STA    PF1     
       LDA    #$55    
       STA    PF2     
       LDA    #$00    
       STA    CTRLPF  
       STA    GRP0    
       STA    GRP1    
       TSX            
       DEX            
       CPX    #$01    
       BEQ    L38B1   
       STA    WSYNC   
       DEX            
       LDA    $A6     
       STA    $A4     
       LDA    $B4     
       STA    $B2     
       STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEY            
       STA    WSYNC   
       DEY            
       BPL    L3872   
L38B1: LDX    $ED     
       STX    REFP0   
       LDY    #$08    
       LDA    $EA     
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDA    ($B2),Y 
       STA    WSYNC   
L38C2: DEX            
       BNE    L38C2   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       STX    PF0     
       STX    PF1     
       LDA    ($A4),Y 
       STA    ENAM0   
       LDX    $F7     
       LDA    L3601,X 
       STA    COLUPF  
       LDX    #$FF    
       STX    PF2     
       TXS            
       LDX    #$01    
       STX    CTRLPF  
       DEY            
       LDX    $83     
       JSR    L3F38   
       STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       STX    NUSIZ1  
       CPX    #$01    
       BEQ    L3902   
       CPX    #$00    
       BEQ    L390A   
       LDA    $80     
       BPL    L390F   
L3902: LDA    $80     
       NOP            
       NOP            
       LDA    $80     
       BPL    L390F   
L390A: JSR    L3F8C   
       LDA    $80     
L390F: LDA    $F9     
       TAX            
       STA    RESP1   
L3914: STA    WSYNC   
       STA    COLUBK  
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    L3FC9,Y 
       STA    PF1     
       STX    COLUP1  
       LDA    ($81),Y 
       STA    GRP1    
       LDA    #$00    
       STA    PF1     
       LDA    $F9     
       CPY    #$03    
       BNE    L3937   
       LDX    $F8     
L3937: DEY            
       BPL    L3914   
       JSR    L3F7D   
       LDA    L3605,X 
       STA    $FA     
       LDA    $A7     
       STA    $A4     
       STA    WSYNC   
       LDY    #$08    
       STY    REFP1   
       LDA    $ED     
       STA    REFP0   
       LDA    $B5     
       STA    $B2     
       LDA    L3601,X 
       LDX    $84     
       JSR    L3F52   
L395C: STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       CPY    #$04    
       BNE    L395C   
       STX    NUSIZ1  
       LDA    $80     
       NOP            
       LDA    $FA     
       TAX            
       STA    RESP1   
L3975: STA    WSYNC   
       STA    COLUBK  
       STX    COLUP1  
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    #$00    
       STA    PF1     
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    ($81),Y 
       STA    GRP1    
       LDA    L3FC9,Y 
       STA    PF1     
       LDA    $FA     
       CPY    #$03    
       BNE    L3998   
       LDX    $F8     
L3998: DEY            
       BPL    L3975   
       STA    WSYNC   
       INY            
       STY    PF1     
       STY    GRP0    
       STY    GRP1    
       LDX    $F7     
       LDA    L3602,X 
       STA    COLUPF  
       STX    REFP1   
       LDY    #$08    
       LDA    $A8     
       STA    $A4     
       LDA    $B6     
       STA    $B2     
       LDA    ($A4),Y 
       LDX    $ED     
       STX    REFP0   
       LDX    #$01    
       JSR    L3F6A   
       LDX    $85     
       JSR    L3F38   
       STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       STX    NUSIZ1  
       CPX    #$01    
       BEQ    L39E2   
       CPX    #$00    
       BEQ    L39E9   
       NOP            
       NOP            
       LDA    $80     
       BPL    L39F0   
L39E2: JSR    L3F8C   
       LDA    $80     
       BPL    L39F0   
L39E9: JSR    L3F8C   
       NOP            
       NOP            
       LDA    $80     
L39F0: LDX    $FA     
       STA    RESP1   
L39F4: STA    WSYNC   
       STX    COLUP1  
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    L3FCE,Y 
       STA    PF1     
       LDA    ($81),Y 
       STA    GRP1    
       LDA    #$01    
       STA    PF1     
       CPY    #$03    
       BNE    L3A13   
       LDX    $F8     
L3A13: DEY            
       BPL    L39F4   
       INY            
       LDA    CXM0P   
       STA    $98     
       STA    HMCLR   
       STA    WSYNC   
       LDA    CXPPMM  
       BPL    L3A25   
       STY    $95     
L3A25: STA    CXCLR   
       STY    GRP0    
       STY    GRP1    
       INY            
       STY    PF1     
       LDX    $F7     
       LDA    L3602,X 
       STA    COLUPF  
       LDX    $EE     
       STX    REFP0   
       LDA    $EB     
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDY    #$08    
       LDA    $A9     
       STA    $A4     
       STY    REFP1   
       LDA    $A2     
       STA    COLUP0  
       STA    WSYNC   
L3A4E: DEX            
       BNE    L3A4E   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDX    $F7     
       LDA    L3601,X 
       STA    COLUPF  
       LDA    $B7     
       STA    $B2     
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       LDA    #$29    
       LDX    $86     
       CPX    #$08    
       BNE    L3A75   
       LDA    #$40    
L3A75: STA    $81     
L3A77: STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       CPY    #$04    
       BNE    L3A77   
       STX    NUSIZ1  
       LDA    $80     
       LDA    $80     
       LDX    $FA     
       STA    RESP1   
L3A90: STA    WSYNC   
       STX    COLUP1  
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    #$01    
       STA    PF1     
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    ($81),Y 
       STA    GRP1    
       NOP            
       LDA    L3FCE,Y 
       STA    PF1     
       CPY    #$03    
       BNE    L3AB0   
       LDX    $F8     
L3AB0: DEY            
       BPL    L3A90   
       STA    WSYNC   
       LDA    #$01    
       STA    PF1     
       LDX    $F7     
       LDA    L3602,X 
       STA    COLUPF  
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    REFP1   
       LDX    $EE     
       STX    REFP0   
       LDY    #$08    
       LDX    #$03    
       LDA    $AA     
       STA    $A4     
       LDA    $B8     
       STA    $B2     
       LDA    ($A4),Y 
       JSR    L3F6A   
       LDX    $87     
       JSR    L3F38   
       STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       STX    NUSIZ1  
       CPX    #$01    
       BEQ    L3AFC   
       CPX    #$00    
       BEQ    L3B03   
       LDA    $80     
       LDA    $80     
       BPL    L3B0A   
L3AFC: JSR    L3F8C   
       LDA    $80     
       BPL    L3B0A   
L3B03: JSR    L3F8C   
       LDA    $80     
       LDA    $80     
L3B0A: LDX    $FA     
       STA    RESP1   
L3B0E: LDA    L3FD3,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    L3FD8,Y 
       STA    PF1     
       STX    COLUP1  
       LDA    ($81),Y 
       STA    GRP1    
       LDA    #$00    
       STA    PF0     
       LDA    #$03    
       STA    PF1     
       CPY    #$03    
       BNE    L3B36   
       LDX    $F8     
L3B36: DEY            
       BPL    L3B0E   
       STA    WSYNC   
       INY            
       STY    PF0     
       STY    GRP0    
       STY    GRP1    
       LDA    #$03    
       STA    PF1     
       LDX    $F7     
       LDA    L3602,X 
       STA    COLUPF  
       LDA    $AB     
       STA    $A4     
       LDA    $B9     
       STA    $B2     
       STA    WSYNC   
       LDY    #$08    
       STY    REFP1   
       LDX    $EE     
       STX    REFP0   
       LDX    $F7     
       LDA    L3601,X 
       LDX    $88     
       JSR    L3F52   
L3B69: STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       CPY    #$04    
       BNE    L3B69   
       STX    NUSIZ1  
       LDA    $80     
       NOP            
       LDX    $FA     
       STA    RESP1   
L3B81: STA    WSYNC   
       STX    COLUP1  
       LDA    #$00    
       STA    PF0     
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    #$03    
       STA    PF1     
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    ($81),Y 
       STA    GRP1    
       LDA    L3FD3,Y 
       STA    PF0     
       LDA    L3FD8,Y 
       STA    PF1     
       CPY    #$03    
       BNE    L3BA9   
       LDX    $F8     
L3BA9: DEY            
       BPL    L3B81   
       INY            
       LDA    #$03    
       STA    WSYNC   
       STY    PF0     
       STY    GRP0    
       STY    GRP1    
       STY    REFP1   
       STA    PF1     
       LDX    $F7     
       LDA    L3602,X 
       STA    COLUPF  
       LDX    $EE     
       STX    REFP0   
       LDY    #$08    
       LDA    $AC     
       STA    $A4     
       LDA    $BA     
       STA    $B2     
       LDA    ($A4),Y 
       LDX    #$07    
       JSR    L3F6A   
       LDX    $89     
       JSR    L3F38   
       STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       STX    NUSIZ1  
       CPX    #$01    
       BEQ    L3BF9   
       CPX    #$00    
       BEQ    L3C01   
       LDA    $80     
       LDA    $80     
       LDA    $80     
       BPL    L3C09   
L3BF9: JSR    L3F8C   
       NOP            
       LDA    $80     
       BPL    L3C09   
L3C01: JSR    L3F8C   
       NOP            
       LDA    $80     
       LDA    $80     
L3C09: LDX    $FA     
       STA    RESP1   
L3C0D: LDA    L3FDD,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    L3FE2,Y 
       STA    PF1     
       STX    COLUP1  
       LDA    ($81),Y 
       STA    GRP1    
       LDA    #$00    
       STA    PF0     
       LDA    #$07    
       STA    PF1     
       CPY    #$03    
       BNE    L3C35   
       LDX    $F8     
L3C35: DEY            
       BPL    L3C0D   
       INY            
       LDA    CXM0P   
       STA    $99     
       STA    HMCLR   
       STA    WSYNC   
       LDA    CXPPMM  
       BPL    L3C47   
       STY    $96     
L3C47: STA    CXCLR   
       STY    GRP0    
       STY    GRP1    
       LDX    $F7     
       LDA    L3602,X 
       STA    COLUPF  
       LDX    $EF     
       STX    REFP0   
       LDA    $EC     
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDY    #$08    
       STY    REFP1   
       LDA    $AD     
       STA    $A4     
       LDA    $BB     
       STA    $B2     
       LDA    ($A4),Y 
       STA    WSYNC   
L3C6F: DEX            
       BNE    L3C6F   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $A3     
       STX    COLUP0  
       STA    ENAM0   
       LDX    #$07    
       STX    PF1     
       LDX    $F7     
       LDA    L3601,X 
       STA    COLUPF  
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       LDA    #$29    
       LDX    $8A     
       CPX    #$08    
       BNE    L3C98   
       LDA    #$40    
L3C98: STA    $81     
L3C9A: STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       CPY    #$04    
       BNE    L3C9A   
       STX    NUSIZ1  
       NOP            
       NOP            
       LDX    $FA     
       STA    RESP1   
L3CB1: STA    WSYNC   
       STX    COLUP1  
       LDA    #$00    
       STA    PF0     
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    #$07    
       STA    PF1     
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    ($81),Y 
       STA    GRP1    
       LDA    L3FDD,Y 
       STA    PF0     
       LDA    L3FE2,Y 
       STA    PF1     
       CPY    #$03    
       BNE    L3CD9   
       LDX    $F8     
L3CD9: DEY            
       BPL    L3CB1   
       INY            
       LDA    #$07    
       STA    WSYNC   
       STY    PF0     
       STY    GRP0    
       STY    GRP1    
       STA    PF1     
       LDX    $F7     
       LDA    L3602,X 
       STA    COLUPF  
       STY    REFP1   
       LDY    #$08    
       LDX    $EF     
       STX    REFP0   
       LDA    $AE     
       STA    $A4     
       LDA    $BC     
       STA    $B2     
       LDA    ($A4),Y 
       LDX    #$0F    
       JSR    L3F6A   
       LDX    $8B     
       JSR    L3F38   
       STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       STX    NUSIZ1  
       CPX    #$01    
       BEQ    L3D29   
       CPX    #$00    
       BEQ    L3D32   
       LDA    $80     
       NOP            
       NOP            
       LDA    $80     
       BPL    L3D3B   
L3D29: JSR    L3F8C   
       LDA    $80     
       LDA    $80     
       BPL    L3D3B   
L3D32: JSR    L3F8C   
       NOP            
       NOP            
       LDA    $80     
       LDA    $80     
L3D3B: LDX    $FA     
       STA    RESP1   
L3D3F: LDA    L3FE7,Y 
       STA    WSYNC   
       STA    PF0     
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    L3FEC,Y 
       STA    PF1     
       STX    COLUP1  
       LDA    ($81),Y 
       STA    GRP1    
       LDA    #$00    
       STA    PF0     
       LDA    #$0F    
       STA    PF1     
       CPY    #$03    
       BNE    L3D67   
       LDX    $F8     
L3D67: DEY            
       BPL    L3D3F   
       JSR    L3F7D   
       STA    WSYNC   
       LDY    #$08    
       STY    REFP1   
       LDA    $EF     
       STA    REFP0   
       LDA    $AF     
       STA    $A4     
       LDA    $BD     
       STA    $B2     
       LDA    L3601,X 
       LDX    $8C     
       JSR    L3F52   
L3D87: STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       CPY    #$04    
       BNE    L3D87   
       STX    NUSIZ1  
       LDA    $80     
       LDX    $FA     
       STA    RESP1   
L3D9E: STA    WSYNC   
       STX    COLUP1  
       LDA    #$00    
       STA    PF0     
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    #$0F    
       STA    PF1     
       LDA    ($81),Y 
       STA    GRP1    
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    L3FE7,Y 
       STA    PF0     
       LDA    L3FEC,Y 
       STA    PF1     
       CPY    #$03    
       BNE    L3DC6   
       LDX    $F8     
L3DC6: DEY            
       BPL    L3D9E   
       INY            
       STA    WSYNC   
       STY    PF0     
       STY    GRP1    
       STY    GRP0    
       LDX    $F7     
       LDA    L3602,X 
       STA    COLUPF  
       LDA    #$0F    
       STA    PF1     
       LDA    CXM0P   
       STA    $9A     
       LDA    CXPPMM  
       BPL    L3DE7   
       STY    $97     
L3DE7: STA    CXCLR   
       LDA    $B0     
       STA    $A4     
       LDY    #$08    
       LDA    ($A4),Y 
       STA    WSYNC   
       LDX    #$00    
       STX    PF1     
       STA    ENAM0   
       STX    PF2     
       STX    REFP1   
       STX    REFP0   
       DEY            
L3E00: STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       STX    NUSIZ1  
       DEY            
       BPL    L3E00   
       LDA    $B1     
       STA    $A4     
       LDY    #$08    
L3E11: STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       DEY            
       BPL    L3E11   
       LDY    #$13    
       LDX    $F7     
       LDA    L3608,X 
       STA    COLUP0  
       LDA    L3609,X 
       STA    COLUP1  
       STA    HMCLR   
       LDA    $D0     
       STA    HMP0    
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L3E35: DEX            
       BNE    L3E35   
       STA    RESP0   
       TAX            
       STA    WSYNC   
L3E3D: DEX            
       BNE    L3E3D   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $DE     
       STA    REFP0   
       STA    REFP1   
L3E4C: STA    WSYNC   
       LDA    ($CC),Y 
       STA    GRP0    
       LDA    ($CE),Y 
       STA    GRP1    
       DEY            
       CPY    #$0B    
       BNE    L3E4C   
       LDX    $F7     
       STA    WSYNC   
       LDA    L3607,X 
       STA    COLUP1  
       LDA    ($CC),Y 
       STA    GRP0    
       LDA    ($CE),Y 
       STA    GRP1    
       DEY            
L3E6D: STA    WSYNC   
       LDA    L360A,X 
       STA    COLUP0  
       LDA    ($CC),Y 
       STA    GRP0    
       LDA    ($CE),Y 
       STA    GRP1    
       DEY            
       CPY    #$07    
       BNE    L3E6D   
       STA    WSYNC   
       LDA    L360B,X 
       STA    COLUP0  
       LDA    ($CC),Y 
       STA    GRP0    
       LDA    ($CE),Y 
       STA    GRP1    
       DEY            
L3E91: STA    WSYNC   
       LDA    L3609,X 
       STA    COLUP1  
       LDA    ($CC),Y 
       STA    GRP0    
       LDA    ($CE),Y 
       STA    GRP1    
       DEY            
       BNE    L3E91   
       STA    WSYNC   
       LDA    L3601,X 
       STA    COLUP0  
       LDA    ($CC),Y 
       STA    GRP0    
       LDA    ($CE),Y 
       STA    GRP1    
       STA    WSYNC   
       LDA    L360B,X 
       STA    COLUBK  
       STA    HMCLR   
       STY    GRP0    
       STY    REFP0   
       STY    REFP1   
       LDA    L3607,X 
       STA    COLUP0  
       LDX    $CB     
       LDA    L3FFE,X 
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ1  
       STA    NUSIZ0  
       LDA    #$65    
       STA    HMP0    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L3EDC: DEX            
       BNE    L3EDC   
       STA    RESP0   
       LDA    #$1B    
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L3EEA: DEX            
       BNE    L3EEA   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
L3EF5: STA    WSYNC   
       LDA    ($D2),Y 
       STA    GRP0    
       LDA    ($D6),Y 
       TAX            
       LDA    ($DA),Y 
       NOP            
       NOP            
       NOP            
       STX    GRP0    
       NOP            
       STA    GRP0    
       LDA    ($D4),Y 
       STA    GRP1    
       LDA    ($D8),Y 
       TAX            
       LDA    ($DC),Y 
       NOP            
       NOP            
       STX    GRP1    
       NOP            
       STA    GRP1    
       DEY            
       BPL    L3EF5   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       STY    NUSIZ1  
       STY    WSYNC   
       STA    WSYNC   
       LDA    #$FF    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$1F    
       STA    TIM64T  
       JMP    L30D3   
L3F38: STA    WSYNC   
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       CPY    #$05    
       BNE    L3F38   
       LDA    #$29    
       CPX    #$08    
       BNE    L3F4F   
       LDA    #$40    
L3F4F: STA    $81     
       RTS            

L3F52: STA    WSYNC   
       STA    COLUPF  
       LDA    ($A4),Y 
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       LDA    #$29    
       CPX    #$08    
       BNE    L3F67   
       LDA    #$40    
L3F67: STA    $81     
       RTS            

L3F6A: STA    WSYNC   
       STA    ENAM0   
       STX    PF1     
       LDX    $F7     
       LDA    L3601,X 
       STA    COLUPF  
       LDA    ($B2),Y 
       STA    GRP0    
       DEY            
       RTS            

L3F7D: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    $F7     
       LDA    L3602,X 
       STA    COLUPF  
L3F8C: RTS            

L3F8D: LDA    $ED,X   
       LDY    $F0,X   
       CMP    L3792,Y 
       BNE    L3FA0   
       LDY    #$08    
       LDA    $ED,X   
       BEQ    L3F9E   
       LDY    #$00    
L3F9E: STY    $ED,X   
L3FA0: RTS            

L3FA1: .byte $E0,$E0,$A0,$A0,$E0,$E0,$F0,$F0,$E0,$E0,$C0,$C0,$80,$80,$00,$00
       .byte $00,$00,$00,$00
L3FB5: .byte $38,$38,$28,$28,$F8,$F8,$FC,$FC,$F8,$F8,$F8,$F8,$E8,$E8,$C8,$C8
       .byte $00,$00,$00,$00
L3FC9: .byte $10,$38,$7C,$38,$10
L3FCE: .byte $21,$71,$F9,$71,$21
L3FD3: .byte $00,$00,$80,$00,$00
L3FD8: .byte $43,$E3,$F3,$E3,$43
L3FDD: .byte $00,$80,$C0,$80,$00
L3FE2: .byte $87,$C7,$E7,$C7,$87
L3FE7: .byte $80,$C0,$E0,$C0,$80
L3FEC: .byte $0F,$8F,$CF,$8F,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$30
L3FFE: .byte $99,$1E
