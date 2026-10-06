; Disassembly of roms/Guardian.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Guardian.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
NUSIZ0  =  $04
NUSIZ1  =  $05
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
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXBLPF  =  $36
CXPPMM  =  $37
INPT0   =  $38
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
L3200   =   $3200

       ORG $3000
L3000: .byte $3C,$66,$66,$66,$66,$66,$3C,$00,$3C,$18,$18,$18,$18,$38,$18,$00
       .byte $7E,$60,$30,$18,$0C,$66,$3C,$00,$3C,$66,$06,$1C,$06,$66,$3C,$00
       .byte $0C,$7E,$6C,$6C,$3C,$1C,$0C,$00,$3C,$66,$06,$06,$7C,$60,$7C,$00
       .byte $3C,$66,$66,$7C,$60,$66,$3C,$00,$30,$30,$18,$0C,$06,$06,$7E,$00
       .byte $3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$66,$06,$3E,$66,$66,$3C,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$81,$42,$24,$18,$18,$00,$00,$00
       .byte $30,$30,$0C,$0C,$00,$00,$18,$24,$42,$42,$24,$18,$00,$42,$24,$24
       .byte $3C,$18,$00,$00,$18,$FF,$18,$00,$00,$00,$18,$3C,$24,$24,$42,$00
       .byte $00,$18,$18,$24,$42,$81,$00,$18,$7E,$54,$7E,$18,$00,$00,$18,$7E
       .byte $2A,$7E,$18,$00,$00,$10,$10,$08,$08,$00,$00,$08,$08,$10,$10,$00
       .byte $00,$52,$81,$54,$94,$21,$4A,$81,$4A,$04,$08,$10,$3C,$08,$10,$3C
       .byte $08,$10,$3C,$08,$10,$3C,$08,$10,$20,$30,$30,$18,$18,$18,$18,$0C
       .byte $0C,$0C,$0C,$18,$18,$18,$18,$30,$30,$08,$08,$08,$08,$10,$10,$10
       .byte $10,$30,$30,$10,$10,$08,$08,$0C,$0C,$04,$04,$0C,$0C,$30,$30,$20
       .byte $20,$24,$00,$A5,$18,$18,$A5,$00,$24
L30E9: .byte $50,$50,$50,$50,$E1,$A1,$E1,$A1,$C9,$93,$5E,$99,$6C,$72,$79,$72
       .byte $C9,$D1,$5E,$D9,$58,$72,$7F,$72,$86,$86,$8D,$8D,$99,$B9,$93,$C1
       .byte $65,$72,$65,$72,$93,$99,$93,$99,$65,$93,$65,$99,$A9,$B1,$A9,$B1
L3119: .byte $00,$04,$0C,$10,$2C,$14,$20,$28,$1C,$08,$24,$18
L3125: .byte $00,$04,$04,$06,$04,$05,$06,$07
L312D: .byte $FB,$FD,$FE
L3130: .byte $00,$40,$20,$20,$00,$00,$00,$00,$FF,$00,$01,$0F,$0E,$44,$40,$E0
       .byte $F0,$10,$06,$FF
L3144: STA    $EC     
       LDA    #$E6    
       STA    $EE     
       LDA    #$E9    
       STA    $F0     
       LDA    #$00    
       STA    $ED     
       STA    $EF     
       STA    $F1     
       LDY    #$00    
       STY    $F2     
L315A: LDA    ($EC),Y 
       AND    #$F0    
       BNE    L3168   
       LDX    $F2     
       BNE    L3168   
       LDA    #$50    
       BNE    L316B   
L3168: DEC    $F2     
       LSR            
L316B: STA    ($EE),Y 
       CPY    #$02    
       BNE    L3173   
       DEC    $F2     
L3173: LDA    ($EC),Y 
       AND    #$0F    
       BNE    L3181   
       LDX    $F2     
       BNE    L3181   
       LDA    #$50    
       BNE    L3186   
L3181: DEC    $F2     
       ASL            
       ASL            
       ASL            
L3186: STA    ($F0),Y 
       INY            
       CPY    #$03    
       BNE    L315A   
       RTS            

L318E: STA    CXCLR   
       LDX    #$00    
       LDA    $E4     
       AND    #$0F    
       CMP    #$02    
       BMI    L31A6   
       LDA    $99     
       CMP    #$08    
       BNE    L31A6   
       LDA    $E4     
       JSR    L38FF   
       TAX            
L31A6: STX    $F1     
       LDA    $85     
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$16    
       STA    $F0     
       LDX    #$09    
       STX    $EC     
       LDA    $DA,X   
       AND    #$0F    
       TAX            
       LDA    L3119,X 
       ADC    $9A     
       TAY            
       LDA    L30E9,Y 
       ADC    $99     
       STA    $F3     
L31C8: LDA    INTIM   
       BNE    L31C8   
       STA    WSYNC   
       STA    VBLANK  
       STA    COLUBK  
       STA    ENABL   
       STA    $8A     
       LDA    #$10    
       STA    CTRLPF  
       STA    WSYNC   
       JSR    L379D   
       LDA    $83     
       LSR            
       BCC    L320E   
       LDA    $84     
       STA    WSYNC   
       STA    COLUBK  
       LDX    #$05    
L31ED: TXA            
       LDY    L30E9,X 
       ASL            
       TAY            
       LDA    $E6,X   
       STA.wy $009B,Y 
       DEX            
       BPL    L31ED   
       LDY    #$24    
L31FD: STA    WSYNC   
       JSR    L379D   
       DEY            
       BNE    L31FD   
       STY    $E6     
       STY    $E8     
       STY    $EA     
       JMP    L345E   
L320E: LDY    $D9     
       TYA            
       AND    #$0F    
       TAX            
       STA    WSYNC   
L3216: DEX            
       BNE    L3216   
       STY    HMBL    
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       JSR    L388C   
       LDA    #$94    
       LDX    #$50    
       STX    HMBL    
       JSR    L371E   
       STX    HMBL    
       JSR    L379D   
       LDA    $C2     
       STA    HMP0    
       STA    HMP1    
       AND    #$0F    
       TAX            
       LDY    $84     
       LDA    $F1     
       STA    WSYNC   
       STA    ENABL   
       STX    $EE     
       DEX            
       DEX            
       STY    COLUBK  
       DEX            
L324A: DEX            
       BNE    L324A   
       STA    RESP0   
       STA    WSYNC   
       LDY    $EE     
       DEY            
L3254: DEY            
       BNE    L3254   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $C4     
       AND    #$0F    
       TAX            
       LDA    L3831,X 
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $E6     
       STA    $9B     
       LDA    $E9     
       STA    $A1     
       LDA    $E7     
       STA    $9D     
       JSR    L379D   
       LDA    #$84    
       STA    WSYNC   
       STA    COLUP1  
       LDA    $EA     
       STA    $A3     
       LDA    $E8     
       STA    $9F     
       LDA    $EB     
       STA    $A5     
       JSR    L379D   
       LDY    #$0B    
L328F: LDA    ($C0),Y 
       AND    L3819,Y 
       AND    $BE     
       TAX            
       EOR    #$FF    
       AND    L3819,Y 
       STA    WSYNC   
       AND    $BE     
       STX    GRP0    
       STA    GRP1    
       LDA    L3825,Y 
       STA    COLUP0  
       JSR    L379D   
       DEY            
       BPL    L328F   
       LDA    CXP0FB  
       STA    $E8     
       INY            
       STA    WSYNC   
       STA    CXCLR   
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       STY    NUSIZ1  
       JSR    L379D   
       LDX    $F3     
       TYA            
       LDY    $99     
       DEY            
       BMI    L32CF   
       DEX            
       LDA    L3000,X 
L32CF: STA    $F2     
       STA    WSYNC   
       JSR    L379D   
       LDA    #$29    
       ADC    $AF     
       STA    COLUP1  
       LDA    $F1     
       ASL            
       STA    ENABL   
       LDA    $80     
       AND    #$3C    
       ADC    #$12    
       STA    $EF     
       LDA    #$88    
       LDY    $BE     
       BNE    L32F1   
       LDA    $F0     
L32F1: LDY    #$B2    
       JSR    L37A6   
       LDX    $81     
       LDA    INPT0,X 
       BPL    L32FE   
       INC    $8A     
L32FE: STY    $EA     
       LDA    $F0     
       STA    COLUP0  
       STA    COLUPF  
       LDA    $D9     
       STA    HMP0    
       AND    #$0F    
       TAY            
       LDA    $8D     
       STA    WSYNC   
       STA    HMP1    
       AND    #$0F    
       TAX            
       DEX            
       DEX            
       DEX            
       NOP            
L331A: DEX            
       BNE    L331A   
       STA    RESP1   
       STA    WSYNC   
L3321: DEY            
       BNE    L3321   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       JSR    L379D   
       LDY    $E4     
       CPY    #$01    
       BEQ    L3335   
       LDY    #$00    
L3335: LDA    L3119,Y 
       CLC            
       ADC    $9A     
       TAX            
       LDY    L30E9,X 
       LDX    #$00    
       STX    $ED     
L3343: LDA    L3809,X 
       STA    WSYNC   
       STA    GRP1    
       LDA    L3000,Y 
       STA    GRP0    
       JSR    L379D   
       INY            
       INC    $ED     
       LDX    $ED     
       CPX    #$08    
       BMI    L3343   
       LDA    CXP1FB  
       STA    $E6     
       LDA    #$00    
       STA    WSYNC   
       STA    GRP1    
       STA    GRP0    
       STA    HMP1    
       STA    CXCLR   
       JSR    L379D   
       LDY    $F2     
       TYA            
       BEQ    L337C   
       LDA    $80     
       AND    #$06    
       TAY            
       INY            
       LDA    L3811,Y 
L337C: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    ENABL   
       LDA    $F0     
       STA    COLUP0  
       LDA    $EF     
       STA    COLUP1  
       JSR    L379D   
       TYA            
       BEQ    L3396   
       DEY            
       LDA    L3811,Y 
L3396: STA    WSYNC   
       STA    GRP0    
       JSR    L379D   
       LDX    $F3     
       LDA    $CF     
       STA    WSYNC   
       STA    GRP1    
       LDA    $F2     
       STA    GRP0    
       LDA    #$08    
       SEC            
       SBC    $99     
       BEQ    L33D4   
       STA    $ED     
L33B2: LDY    $ED     
       CPY    #$04    
       BNE    L33BC   
       LDA    $CF     
       STA    GRP1    
L33BC: LDY    $81     
       STA    WSYNC   
       LDA    L3000,X 
       STA    GRP0    
       LDA.wy $0038,Y 
       ASL            
       LDA    $8A     
       ADC    #$00    
       STA    $8A     
       INX            
       DEC    $ED     
       BNE    L33B2   
L33D4: LDX    #$09    
       LDA    CXPPMM  
       STA    CXCLR   
       STA    $C6,X   
       DEX            
       STX    $EC     
L33DF: LDA    $D0,X   
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       DEX            
L33ED: DEX            
       BNE    L33ED   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F0     
       STA    COLUP0  
       LDX    $EC     
       LDA    $DA,X   
       AND    #$0F    
       TAX            
       LDA    L3119,X 
       CLC            
       ADC    $9A     
       TAY            
       LDX    L30E9,Y 
       LDA    #$07    
       STA    $ED     
L340F: LDY    $ED     
       CPY    #$04    
       BNE    L341C   
       LDY    $EC     
       LDA.wy $00C6,Y 
       STA    GRP1    
L341C: LDA    L3000,X 
       LDY    $81     
       STA    WSYNC   
       STA    GRP0    
       LDA.wy $0038,Y 
       BPL    L342C   
       INC    $8A     
L342C: INX            
       DEC    $ED     
       BPL    L340F   
       LDX    $EC     
       LDA    CXPPMM  
       STA    CXCLR   
       STA    $C6,X   
       DEX            
       STX    $EC     
       CPX    #$06    
       BPL    L33DF   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       JSR    L379D   
       LDA    $99     
       BEQ    L345C   
       STA    $ED     
L344F: STA    WSYNC   
       LDX    $EC     
       LDA    $C6,X   
       JSR    L379D   
       DEC    $ED     
       BNE    L344F   
L345C: DEC    $EC     
L345E: LDA    $86     
       STA    HMP0    
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
       STY    GRP1    
       DEX            
L346C: DEX            
       BNE    L346C   
       STA    RESP0   
       NOP            
       STA    RESP1   
       LDA    #$05    
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0  
       STA    NUSIZ1  
       JSR    L379D   
       LDY    #$08    
L3483: LDA    L37E8,Y 
       STA    WSYNC   
       STA    COLUP0  
       STA    COLUP1  
       LDA    L37F1,Y 
       STA    GRP0    
       LDA    L37FA,Y 
       STA    GRP1    
       JSR    L379D   
       DEY            
       CPY    #$05    
       BPL    L3483   
       LDX    $89     
       LDA    L37E8,Y 
       STA    WSYNC   
       STA    COLUP0  
       STA    COLUP1  
       LDA    L3803,X 
       STA    GRP0    
       LDA    L3806,X 
       STA    GRP1    
       JSR    L379D   
       DEY            
L34B7: LDA    L37E8,Y 
       STA    WSYNC   
       STA    COLUP0  
       STA    COLUP1  
       LDA    L37F1,Y 
       STA    GRP0    
       LDA    L37FA,Y 
       STA    GRP1    
       JSR    L379D   
       DEY            
       BPL    L34B7   
       INY            
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       STY    NUSIZ1  
       STA    CXCLR   
       JSR    L379D   
       DEC    $EC     
       LDX    $EC     
       LDY    $C6,X   
       LDA    $8E     
       STA    HMP1    
       AND    #$0F    
       TAX            
       STA    WSYNC   
L34EF: DEX            
       BNE    L34EF   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $80     
       AND    #$3C    
       ADC    #$12    
       STA    COLUP1  
       STY    GRP1    
       LDY    $99     
       DEY            
       BMI    L350F   
L3507: JSR    L379D   
       STA    WSYNC   
       DEY            
       BPL    L3507   
L350F: JSR    L379D   
       LDX    $EC     
L3514: LDA    #$07    
       STA    $ED     
       LDA    $D0,X   
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDA    #$00    
       STA    WSYNC   
       STA    HMP1    
       DEX            
       STA    GRP0    
       DEX            
L3529: DEX            
       BNE    L3529   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F0     
       STA    COLUP0  
       LDX    $EC     
       LDA    $DA,X   
       AND    #$0F    
       TAX            
       LDA    L3119,X 
       CLC            
       ADC    $9A     
       TAY            
       LDX    L30E9,Y 
L3547: LDY    $ED     
       CPY    #$03    
       BNE    L3554   
       LDY    $EC     
       LDA.wy $00C6,Y 
       STA    GRP1    
L3554: LDA    L3000,X 
       STA    WSYNC   
       STA    GRP0    
       LDY    $81     
       LDA.wy $0038,Y 
       ASL            
       LDA    $8A     
       ADC    #$00    
       STA    $8A     
       INX            
       DEC    $ED     
       BPL    L3547   
       LDX    $EC     
       LDA    CXPPMM  
       STA    CXCLR   
       STA    $C6,X   
       DEX            
       STX    $EC     
       BNE    L3514   
       LDA    $D0     
       STA    HMP0    
       STA    HMBL    
       AND    #$0F    
       TAX            
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       DEX            
L3589: DEX            
       BNE    L3589   
       STA    RESP0   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F0     
       STA    COLUP0  
       STA    COLUPF  
       JSR    L379D   
       LDA    $DA     
       AND    #$0F    
       TAX            
       LDA    L3119,X 
       STA    WSYNC   
       CLC            
       ADC    $9A     
       TAX            
       LDY    L30E9,X 
       JSR    L379D   
       LDA    #$08    
       STA    $EE     
       LDA    #$08    
       SEC            
       SBC    $99     
       BEQ    L35D3   
       STA    $ED     
L35BE: LDA    $C6     
       STA    GRP1    
       STA    WSYNC   
       LDA    L3000,Y 
       STA    GRP0    
       JSR    L379D   
       INY            
       DEC    $EE     
       DEC    $ED     
       BNE    L35BE   
L35D3: LDA    #$50    
       STA    HMBL    
       LDA    #$00    
       STA    HMP1    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       DEC    $EE     
       BMI    L35EA   
       LDA    L3000,Y 
       AND    #$7E    
L35EA: STA    GRP0    
       TAY            
       JSR    L379D   
       LDA    CXPPMM  
       STA    CXCLR   
       STA    $C6     
       STA    WSYNC   
       TYA            
       BEQ    L3603   
       LDA    $80     
       AND    #$06    
       TAY            
       LDA    L3811,Y 
L3603: STA    GRP0    
       JSR    L379D   
       TYA            
       BEQ    L360F   
       INY            
       LDA    L3811,Y 
L360F: STA    WSYNC   
       STA    GRP0    
       JSR    L379D   
       LDX    #$00    
       LDA    $E5     
       CMP    #$02    
       BMI    L3626   
       LDA    $99     
       CMP    #$08    
       BNE    L3626   
       LDX    #$02    
L3626: LDA    #$29    
       ADC    $AF     
       STA    WSYNC   
       STA    COLUP1  
       STX    ENABL   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       JSR    L379D   
       LDY    $E5     
       CPY    #$01    
       BEQ    L3641   
       LDY    #$00    
L3641: STA    WSYNC   
       JSR    L379D   
       LDA    L3119,Y 
       CLC            
       ADC    $9A     
       TAX            
       LDY    L30E9,X 
       LDA    #$07    
       STA    $ED     
L3654: LDX    $ED     
       LDA    L3809,X 
       STA    WSYNC   
       STA    GRP1    
       LDA    L3000,Y 
       STA    GRP0    
       LDX    $81     
       LDA    INPT0,X 
       ASL            
       LDA    $8A     
       ADC    #$00    
       STA    $8A     
       INY            
       DEC    $ED     
       BPL    L3654   
       LDA    CXP1FB  
       STA    $E7     
       ASL            
       BPL    L367D   
       LDX    #$00    
       STX    ENABL   
L367D: LDA    $C3     
       STA    HMP0    
       STA    HMP1    
       AND    #$0F    
       TAX            
       TAY            
       LDA    #$00    
       STA    HMBL    
       STA    WSYNC   
       STA    GRP0    
       DEX            
       STA    GRP1    
       DEX            
L3693: DEX            
       BNE    L3693   
       STA    RESP0   
       STA    WSYNC   
       STA    CXCLR   
       DEY            
L369D: DEY            
       BNE    L369D   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    L379D   
       LDA    #$38    
       LDY    $BF     
       BNE    L36B1   
       LDA    $F0     
L36B1: LDY    #$B8    
       JSR    L37A6   
       TYA            
       BPL    L36BB   
       STX    ENABL   
L36BB: STY    $EB     
       LDA    $C5     
       AND    #$0F    
       TAX            
       LDA    L3831,X 
       STA    WSYNC   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$84    
       STA    COLUP1  
       LDA    $F0     
       STA    COLUPF  
       LDY    #$0B    
L36D5: LDA    ($C0),Y 
       AND    L3819,Y 
       AND    $BF     
       TAX            
       EOR    #$FF    
       AND    L3819,Y 
       AND    $BF     
       STA    WSYNC   
       STX    GRP0    
       STA    GRP1    
       LDA    L3825,Y 
       STA    COLUP0  
       JSR    L379D   
       DEY            
       BPL    L36D5   
       INY            
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDA    CXP0FB  
       STA    $E9     
       ASL            
       BPL    L3705   
       STY    ENABL   
L3705: STY    NUSIZ0  
       STY    NUSIZ1  
       JSR    L379D   
       STA    WSYNC   
       JSR    L379D   
       STA    WSYNC   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDA    #$24    
       JMP    L371E   
L371E: SEC            
       ADC    $AF     
       STA    $EF     
       JSR    L379D   
       LDX    #$07    
       STA    WSYNC   
L372A: DEX            
       BNE    L372A   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STX    HMP0    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STX    GRP1    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$06    
       STA    $ED     
       LDA    $EF     
       STA    WSYNC   
       STA    COLUBK  
       STX    ENABL   
L3768: LDY    $ED     
       LDA    ($9B),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($A1),Y 
       STA    GRP1    
       LDA    ($9D),Y 
       STA    GRP0    
       LDA    ($A3),Y 
       STA    $EE     
       LDA    ($9F),Y 
       TAX            
       LDA    ($A5),Y 
       TAY            
       LDA    $EE     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $ED     
       BPL    L3768   
       LDX    #$00    
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       STX    VDELP0  
       STX    VDELP1  
       RTS            

L379D: LDX    $81     
       LDA    INPT0,X 
       BPL    L37A5   
       INC    $8A     
L37A5: RTS            

L37A6: LDX    #$03    
       STX    $ED     
       LDX    $81     
       STA    COLUPF  
L37AE: STA    WSYNC   
       LDA.wy $0000,Y 
       STA    PF0     
       LDA.wy $0001,Y 
       STA    PF1     
       LDA.wy $0002,Y 
       STA    PF2     
       LDA    INPT0,X 
       ASL            
       LDA    $8A     
       ADC    #$00    
       STA    $8A     
       LDA.wy $0003,Y 
       STA    PF0     
       LDA.wy $0004,Y 
       STA    PF1     
       LDA.wy $0005,Y 
       STA    PF2     
       DEC    $ED     
       BNE    L37AE   
       STA    WSYNC   
       LDY    CXBLPF  
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       RTS            

L37E8: .byte $94,$96,$98,$9A,$9C,$9A,$98,$96,$94
L37F1: .byte $03,$07,$1F,$3F,$FF,$3F,$1F,$07,$03
L37FA: .byte $C0,$E0,$F8,$FC,$FF,$FC,$F8,$E0,$C0
L3803: .byte $1B,$2D,$36
L3806: .byte $6C,$B4,$D8
L3809: .byte $82,$C6,$7C,$7C,$38,$38,$10,$10
L3811: .byte $F8,$1C,$38,$18,$1C,$18,$1F,$38
L3819: .byte $38,$7C,$7C,$FE,$FE,$FE,$FE,$FE,$FE,$7C,$7C,$38
L3825: .byte $0C,$0C,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6,$0C,$0C
L3831: .byte $00,$00,$00,$02,$00,$04,$02,$06
L3839: LDX    #$00    
L383B: STY    $EE     
       STA    $ED     
       CLC            
       ADC    $EE     
       LDY    $EE     
       BPL    L3852   
       LDY    $ED     
       BPL    L3861   
       TAY            
       BMI    L3861   
       CLC            
       ADC    #$F1    
       BNE    L3861   
L3852: LDY    $ED     
       BMI    L3861   
       TAY            
       AND    #$F0    
       CMP    #$70    
       TYA            
       BCC    L3861   
       CLC            
       ADC    #$0F    
L3861: TAY            
       JSR    L3877   
       CMP    #$42    
       BCC    L3870   
       CMP    L3FC4,X 
       BCS    L3874   
       TYA            
       RTS            

L3870: LDA    L3FC5,X 
       RTS            

L3874: LDA    #$24    
       RTS            

L3877: STA    $ED     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $EE     
       LDA    $ED     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $EE     
L388C: RTS            

L388D: LDY    #$04    
       SEC            
       SBC    #$0C    
       BCC    L389A   
L3894: INY            
       SEC            
       SBC    #$0F    
       BCS    L3894   
L389A: ADC    #$09    
       EOR    #$FF    
       CLC            
       ADC    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $ED     
       TYA            
       ORA    $ED     
       RTS            

L38AB: JSR    L3877   
       TAX            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $ED     
       TXA            
       SEC            
       SBC    $ED     
       SEC            
       SBC    #$3F    
       RTS            

L38BD: STY    $EF     
       JSR    L38AB   
       CLC            
       ADC    $EF     
       CMP    #$A0    
       BCC    L38CC   
       SEC            
       SBC    #$A0    
L38CC: JSR    L388D   
       RTS            

L38D0: LDX    #$06    
L38D2: DEX            
       CMP    L38E3,X 
       BMI    L38D2   
       CMP    #$14    
       BMI    L38DE   
       SBC    #$14    
L38DE: TAY            
       LDA    L38E9,Y 
       RTS            

L38E3: .byte $00,$04,$0C,$14,$18,$20
L38E9: .byte $10,$20,$40,$80,$80,$40,$20,$10,$08,$04,$02,$01,$01,$02,$04,$08
       .byte $10,$20,$40,$80
L38FD: BCS    L3903   
L38FF: LSR            
       LSR            
       LSR            
       LSR            
L3903: AND    #$0F    
       RTS            

L3906: ASL            
       STA    $ED     
       ASL            
       ASL            
       ADC    $ED     
       RTS            


START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L3915: STA    VSYNC,X 
       INX            
       CPX    #$FE    
       BNE    L3915   
       LDA    #$30    
       LDX    #$0B    
L3920: STA    $9B,X   
       DEX            
       DEX            
       BPL    L3920   
       JSR    L3E4E   
       LDA    #$01    
       STA    $83     
       STA    $85     
       STA    $AA     
       LDA    #$A1    
       STA    $AC     
L3935: LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       LDA    #$A7    
       JSR    L3144   
L3945: LDA    INTIM   
       BNE    L3945   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       LDX    #$05    
L3955: TXA            
       ASL            
       TAY            
       LDA    $E6,X   
       STA.wy $009B,Y 
       DEX            
       BPL    L3955   
       LDA    #$AA    
       JSR    L3144   
       LDA    $80     
       EOR    $86     
       EOR    $8A     
       STA    $EC     
       LDA    $AF     
       BEQ    L3975   
       LDA    #$00    
       STA    $BF     
L3975: LDX    $98     
       BEQ    L397E   
       DEX            
       STX    $98     
       BNE    L39D7   
L397E: STX    $F3     
       LDA    $85     
       CMP    #$0A    
       BMI    L3988   
       LDA    #$09    
L3988: STA    $85     
       LDA    #$09    
       SEC            
       SBC    $85     
       LDX    $83     
       CPX    #$21    
       BMI    L3997   
       ADC    #$04    
L3997: STA    $98     
       INC    $99     
       LDX    $99     
       CPX    #$09    
       BNE    L39D7   
       INC    $B1     
       LDY    #$00    
       LDA    $85     
       ASL            
       STA    $ED     
       ASL            
       ASL            
       TAX            
       ADC    $ED     
       CMP    $B1     
       BPL    L39C9   
       LDA    #$0B    
       STA    $F3     
       STY    $B1     
       CPX    $AD     
       STY    $AD     
       BPL    L39C9   
       STY    $F3     
       LDA    #$C8    
       STA    $AE     
       LSR            
       LSR            
       STA    $B0     
L39C9: STY    $99     
       LDA    $83     
       LSR            
       BCC    L39DA   
       LDA    #$0A    
       JSR    L3F46   
       STA    $E2     
L39D7: JMP    L39F7   
L39DA: LDA    #$05    
       JSR    L3F46   
       STA    $DE     
       LDY    #$08    
       LDX    #$09    
L39E5: JSR    L3E97   
       DEY            
       DEX            
       CPX    #$05    
       BPL    L39E5   
       LDA    $BE     
       STA    $EE     
       JSR    L3F59   
       STA    $DF     
L39F7: LDA    $83     
       LSR            
       BCC    L3A02   
       LDA    $E2     
       AND    #$0F    
       BCS    L3A0E   
L3A02: LDA    $E0     
       AND    #$0F    
       CMP    #$02    
       BPL    L3A0E   
       LDA    $DD     
       AND    #$0F    
L3A0E: ASL            
       STA    $ED     
       LDA    $9A     
       AND    #$01    
       ADC    $ED     
       TAY            
       LSR            
       TAX            
       LDA    L3FED,X 
       JSR    L38FD   
       STA    AUDC1   
       TYA            
       LSR            
       TAX            
       LDA    $AF     
       BEQ    L3A2C   
       JMP    L3BA2   
L3A2C: LDA    L3FE2,X 
       JSR    L38FD   
       STA    AUDF1   
       LDA    #$02    
       STA    AUDV1   
       LDA    #$00    
       STA    $92     
       STA    $91     
       LDX    $BF     
       LDY    $BE     
       BIT    SWCHA   
       BMI    L3A4D   
       LDA    $90     
       BNE    L3A4D   
       STX    $92     
L3A4D: BVS    L3A55   
       LDA    $8F     
       BNE    L3A55   
       STY    $91     
L3A55: LDA    #$08    
       STA    AUDC0   
       STA    AUDF0   
       LDA    #$01    
       STA    AUDV0   
       LDA    $91     
       ORA    $92     
       BEQ    L3A75   
       LDA    $80     
       LSR            
       LSR            
       AND    #$03    
       TAX            
       EOR    #$07    
       STA    AUDV0   
       LDA    L3FC8,X 
       STA    AUDF0   
L3A75: LDX    $AE     
       BNE    L3A8C   
       LDX    $B0     
       BEQ    L3A8C   
       DEC    $B0     
       BNE    L3A83   
       INC    $85     
L3A83: LDA    L3200,X 
       AND    #$17    
       LDX    #$0C    
       BNE    L3AAB   
L3A8C: LDX    $95     
       BEQ    L3AB3   
       DEC    $95     
       TXA            
       BPL    L3A9F   
       AND    #$7F    
       BNE    L3A9B   
       STA    $95     
L3A9B: LDX    #$0C    
       BNE    L3AAB   
L3A9F: LDA    $95     
       AND    #$FE    
       TAX            
       LDA    L3200,X 
       AND    #$07    
       LDX    #$08    
L3AAB: STX    AUDC0   
       STA    AUDF0   
       LDA    #$04    
       STA    AUDV0   
L3AB3: LDA    $93     
       BEQ    L3AC7   
       DEC    $93     
       JSR    L3F8B   
       SBC    #$02    
       STA    AUDV1   
       LDA    L3FD3,X 
       SBC    #$04    
       STA    AUDF1   
L3AC7: LDA    $94     
       BEQ    L3AE6   
       DEC    $94     
       LSR            
       JSR    L3F8B   
       STA    AUDV1   
       LDA    L3FD3,X 
       STA    AUDF1   
       LDA    #$00    
       LDX    $94     
       CPX    #$1E    
       BMI    L3AE4   
       LDA    $80     
       ASL            
       ASL            
L3AE4: STA    $84     
L3AE6: LDA    $80     
       AND    #$0F    
       CMP    #$0A    
       BPL    L3B20   
       STA    $F2     
       TAX            
       LDA    $D0,X   
       JSR    L38AB   
       STA    $EF     
       LDX    $F2     
       BEQ    L3B15   
       LDA    $C3     
       STA    $F0     
       LDY    #$F4    
       LDA    $83     
       LSR            
       BCS    L3B22   
       CPX    #$05    
       BMI    L3B11   
       LDA    $C2     
       STA    $F0     
       LDY    #$0C    
L3B11: CPX    #$09    
       BNE    L3B22   
L3B15: LDA    $EF     
       AND    #$03    
       TAX            
       LDY    L3FDE,X 
       JMP    L3B4D   
L3B20: BPL    L3B7D   
L3B22: STY    $F1     
       LDX    $F2     
       LDA    $DA,X   
       AND    #$F0    
       TAY            
       LDX    $83     
       DEX            
       TXA            
       AND    #$08    
       BEQ    L3B4D   
       LDA    $F0     
       JSR    L38AB   
       ADC    $F1     
       CMP    $EF     
       LDX    $F2     
       LDA    $DA,X   
       AND    #$0F    
       ORA    #$40    
       BCC    L3B48   
       ORA    #$C0    
L3B48: STA    $DA,X   
       AND    #$F0    
       TAY            
L3B4D: LDX    $83     
       DEX            
       TXA            
       LDX    $F2     
       AND    #$10    
       BNE    L3B72   
       LDA    $DA,X   
       AND    #$0F    
       STA    $F1     
       LDA    $EF     
       CMP    #$05    
       BCS    L3B67   
       LDY    #$F0    
       BNE    L3B6D   
L3B67: CMP    #$90    
       BCC    L3B6D   
       LDY    #$10    
L3B6D: TYA            
       ORA    $F1     
       STA    $DA,X   
L3B72: LDA    $D0,X   
       LDX    #$02    
       JSR    L383B   
       LDX    $F2     
       STA    $D0,X   
L3B7D: LDA    $99     
       BNE    L3BA2   
       LDA    $D9     
       JSR    L3E8B   
       LDY    #$30    
       AND    $B2,X   
       BEQ    L3B8E   
       LDY    #$10    
L3B8E: STY    $ED     
       LDA    $E3     
       AND    #$0F    
       CMP    #$02    
       BMI    L3B9A   
       ADC    $ED     
L3B9A: STA    $E4     
       LDA    $DA     
       AND    #$0F    
       STA    $E5     
L3BA2: LDY    $87     
       LDA    $86     
       CMP    #$24    
       BNE    L3BAC   
       LDY    #$F0    
L3BAC: CMP    #$9C    
       BNE    L3BB2   
       LDY    #$10    
L3BB2: STY    $87     
       JSR    L3839   
       STA    $86     
       LDA    $86     
       LDY    #$0C    
       JSR    L38BD   
       TAX            
       LDA    $83     
       LSR            
       BCS    L3BCC   
       STX    $D4     
       STX    $D5     
       BCC    L3BCE   
L3BCC: STX    $D9     
L3BCE: LDY    $83     
       DEY            
       TYA            
       AND    #$02    
       BNE    L3BEE   
       LDA    $86     
       AND    #$0F    
       SBC    #$05    
       CMP    #$07    
       BPL    L3BEE   
       DEC    $88     
       BNE    L3BEE   
       ORA    #$C8    
       STA    $88     
       LDA    $87     
       EOR    #$E0    
       STA    $87     
L3BEE: LDA    $80     
       AND    #$07    
       BNE    L3C06   
       LDY    #$F0    
       LDA    $C2     
       JSR    L3839   
       STA    $C2     
       LDY    #$10    
       LDA    $C3     
       JSR    L3839   
       STA    $C3     
L3C06: LDA    $AE     
       BEQ    L3C0C   
       DEC    $AE     
L3C0C: ORA    $BE     
       ORA    $BF     
       BNE    L3C25   
       LDA    $AF     
       AND    #$F0    
       ADC    #$12    
       STA    $AF     
       LDA    #$28    
       STA    $AE     
       BIT    SWCHA   
       BPL    L3C2B   
       BVC    L3C2B   
L3C25: LDA    SWCHB   
       LSR            
       BCS    L3C6D   
L3C2B: LDA    $82     
       BNE    L3C41   
       LDA    $AA     
       JSR    L38FF   
       JSR    L3906   
       STA    $ED     
       LDA    $AA     
       AND    #$0F    
       ADC    $ED     
       STA    $83     
L3C41: JSR    L3E4E   
       LDX    #$0A    
L3C46: STY    $A7,X   
       DEX            
       BPL    L3C46   
       DEY            
       LDX    #$0D    
L3C4E: STY    $B2,X   
       DEX            
       BPL    L3C4E   
       LDA    $83     
       LDX    #$01    
       CMP    #$21    
       BPL    L3C5D   
       LDX    #$02    
L3C5D: STX    $85     
       LSR            
       BCC    L3C65   
       INY            
       STY    $BE     
L3C65: LDA    #$9F    
       STA    $95     
       STA    $82     
       BNE    L3CA4   
L3C6D: LSR            
       BCS    L3CA4   
       LDX    $82     
       BEQ    L3C84   
       JSR    L3E4E   
       STY    $AA     
       STY    $82     
       STY    AUDV0   
       STY    AUDV1   
       INY            
       STY    $83     
       STY    $85     
L3C84: DEC    $85     
       BNE    L3CA4   
       LDA    #$14    
       STA    $85     
       LDA    $AA     
       CLC            
       SED            
       CMP    #$34    
       BNE    L3C96   
       LDA    #$00    
L3C96: CLC            
       ADC    #$01    
       CLD            
       STA    $AA     
       LDX    #$A1    
       LSR            
       BCS    L3CA2   
       INX            
L3CA2: STX    $AC     
L3CA4: JSR    L318E   
       DEX            
       STX    WSYNC   
       STX    VBLANK  
       LDA    #$1F    
       STA    TIM64T  
       INC    $80     
       LDA    $80     
       AND    #$01    
       STA    $81     
       TAX            
       LDA    $BE,X   
       BEQ    L3CF7   
       LDA    $8B,X   
       LDY    $8A     
       STY    $8B,X   
       LDY    $8F,X   
       BEQ    L3CCC   
       DEC    $8F,X   
       BPL    L3CF7   
L3CCC: TAY            
       LDA    $E6,X   
       AND    #$40    
       LSR            
       STA    $8F,X   
       BNE    L3CF7   
       LDA    $82     
       BPL    L3CF7   
       LDA    SWCHA   
       EOR    #$FF    
       AND    L3FFE,X 
       BNE    L3CF7   
       TYA            
       CLC            
       ADC    $8A     
       ROR            
       CLC            
       ADC    #$05    
       CMP    #$95    
       BCC    L3CF2   
       LDA    #$95    
L3CF2: JSR    L388D   
       STA    $8D,X   
L3CF7: LDA    $80     
       AND    #$03    
       BNE    L3D05   
       DEC    $89     
       BPL    L3D05   
       LDA    #$02    
       STA    $89     
L3D05: LDA    $80     
       AND    #$07    
       BNE    L3D23   
       LDX    #$0B    
L3D0D: LDA    $DA,X   
       AND    #$0F    
       CMP    #$01    
       BNE    L3D18   
       LSR            
       STA    $DA,X   
L3D18: DEX            
       BPL    L3D0D   
       INC    $9A     
       LDA    $9A     
       AND    #$03    
       STA    $9A     
L3D23: LDA    $83     
       LSR            
       BCS    L3D46   
       BIT    $E6     
       BVS    L3D46   
       LDA    $EA     
       BPL    L3D46   
       LDA    #$0A    
       STA    $95     
       LDX    #$00    
       STX    $E3     
       INX            
       STX    $E4     
       LDA    $D9     
       JSR    L3E8B   
       EOR    #$FF    
       AND    $B2,X   
       STA    $B2,X   
L3D46: LDA    $EB     
       BPL    L3D60   
       LDA    #$0A    
       STA    $95     
       LDX    #$00    
       STX    $DA     
       INX            
       STX    $E5     
       LDA    $D0     
       JSR    L3E8B   
       EOR    #$FF    
       AND    $B8,X   
       STA    $B8,X   
L3D60: LDY    $D0     
       LDX    #$01    
L3D64: STX    $F0     
       LDA    $E6,X   
       ASL            
       BMI    L3DB4   
       LDA    $E8,X   
       ASL            
       BPL    L3DB4   
       LDA    #$2F    
       STA    $94     
       TYA            
       JSR    L38AB   
       STA    $EF     
       LDX    $F0     
       LDA    $C2,X   
       JSR    L3F99   
       LDX    $F0     
       AND    $C4,X   
       STA    $C4,X   
       TAY            
       LDA    L3130,Y 
       TAY            
       LDA    $C2,X   
       JSR    L38BD   
       LDX    $F0     
       STA    $C2,X   
       LDY    $C4,X   
       LDA    L3125,Y 
       STA    $C4,X   
       BNE    L3DB4   
       STA    $BE,X   
       LDX    #$05    
       LDY    $F0     
       BEQ    L3DA8   
       LDX    #$0B    
L3DA8: LDY    #$05    
L3DAA: STA    $B2,X   
       DEX            
       DEY            
       BPL    L3DAA   
       STY    $AE     
       LDX    $F0     
L3DB4: LDY    $D9     
       DEX            
       BPL    L3D64   
       LDX    #$09    
       LDY    #$08    
L3DBD: LDA    $DA,X   
       AND    #$0F    
       CMP    #$01    
       BEQ    L3DC9   
       LDA    $C6,X   
       BPL    L3DCB   
L3DC9: STX    $C6,Y   
L3DCB: DEX            
       DEY            
       BPL    L3DBD   
       LDA    $83     
       LSR            
       BCC    L3DEC   
       LDA    #$40    
       JSR    L3EA7   
       LDA    #$AA    
       JSR    L3EBA   
L3DDE: JSR    L3ECC   
       INC    $F0     
       LDX    $F0     
       CPX    #$0A    
       BMI    L3DDE   
       JMP    L3E37   
L3DEC: LDA    #$80    
       JSR    L3EA7   
       LDA    #$A7    
       STA    $EF     
       LDA    #$10    
       AND    $91     
       AND    $ED     
       TAY            
       LDA    $96     
       STA    $F1     
       LDX    #$09    
       STX    $F0     
L3E04: JSR    L3ECC   
       DEC    $F0     
       LDX    $F0     
       CPX    #$05    
       BPL    L3E04   
       LDA    $F1     
       AND    $91     
       STA    $96     
       BEQ    L3E22   
       TAX            
       STY    $C6,X   
       LDA    $DA,X   
       AND    #$0F    
       BNE    L3E22   
       STA    $96     
L3E22: LDA    #$40    
       JSR    L3EA7   
       LDA    #$AA    
       JSR    L3EBA   
L3E2C: JSR    L3ECC   
       INC    $F0     
       LDX    $F0     
       CPX    #$05    
       BMI    L3E2C   
L3E37: LDA    $F1     
       AND    $92     
       STA    $97     
       TAX            
       LDA    $DA,X   
       AND    #$0F    
       BNE    L3E46   
       STA    $97     
L3E46: LDA    INTIM   
       BNE    L3E46   
       JMP    L3935   
L3E4E: LDA    #$18    
       STA    $86     
       LDA    #$39    
       STA    $8D     
       STA    $8E     
       LDA    #$10    
       STA    $87     
       LDA    #$07    
       STA    $C4     
       STA    $C5     
       LDA    #$38    
       STA    $C0     
       LDA    #$31    
       STA    $C1     
       LDA    #$AA    
       STA    $AB     
       LDY    #$01    
       STY    $89     
       DEY            
       LDX    #$0B    
L3E75: LDA    #$B8    
       STA    $D0,X   
       STY    $DA,X   
       STY    $B2,X   
       DEX            
       BPL    L3E75   
       STY    $99     
       STY    $BE     
       STY    $BF     
       STY    AUDC0   
       STY    AUDC1   
       RTS            

L3E8B: JSR    L38AB   
       CLC            
       ADC    #$03    
       LSR            
       LSR            
       JSR    L38D0   
       RTS            

L3E97: LDA.wy $00D0,Y 
       STA    $D0,X   
       LDA.wy $00DA,Y 
       STA    $DA,X   
       LDA.wy $00C6,Y 
       STA    $C6,X   
       RTS            

L3EA7: LDX    #$08    
       AND    SWCHB   
       BEQ    L3EB0   
       LDX    #$10    
L3EB0: TXA            
       AND    $80     
       BEQ    L3EB7   
       LDA    #$FF    
L3EB7: STA    $ED     
       RTS            

L3EBA: STA    $EF     
       LDA    #$10    
       AND    $92     
       AND    $ED     
       TAY            
       LDX    #$00    
       STX    $F0     
       LDA    $97     
       STA    $F1     
       RTS            

L3ECC: LDA    $C6,X   
       STY    $C6,X   
       BPL    L3EFA   
       INC    $AD     
       LDA    $F1     
       BNE    L3EDA   
       STX    $F1     
L3EDA: LDA    $DA,X   
       AND    #$0F    
       CMP    #$02    
       BMI    L3EFA   
       PHA            
       LDA    #$01    
       STA    $DA,X   
       LDA    #$1B    
       STA    $93     
       PLA            
       CMP    #$0B    
       BNE    L3EF7   
       LDA    #$23    
       STA    $94     
       JSR    L3F05   
L3EF7: JSR    L3F05   
L3EFA: LDA    $F1     
       BEQ    L3F04   
       CPX    $F1     
       BNE    L3F04   
       LDY    #$00    
L3F04: RTS            

L3F05: SED            
       LDA    $85     
       AND    #$03    
       TAX            
       LDA    L3FDA,X 
       PHA            
       LDX    $EF     
       LDA    $85     
       LSR            
       STA    $F2     
       CLC            
       PLA            
       ADC    WSYNC,X 
       STA    WSYNC,X 
       LDA    $F2     
       ADC    VBLANK,X
       STA    VBLANK,X
       BCC    L3F3E   
       STY    $F2     
       TXA            
       SBC    #$A7    
       ASL            
       TAX            
       LDA    #$FF    
       LDY    #$05    
L3F2F: STA    $B2,X   
       INX            
       DEY            
       BPL    L3F2F   
       LDA    #$9F    
       STA    $95     
       LDY    $F2     
       LDX    $EF     
       SEC            
L3F3E: LDA    #$00    
       ADC    VSYNC,X 
       STA    VSYNC,X 
       CLD            
       RTS            

L3F46: STA    $ED     
       LDX    #$00    
       LDY    #$01    
L3F4C: JSR    L3E97   
       INY            
       INX            
       CPX    $ED     
       BMI    L3F4C   
       LDA    $BF     
       STA    $EE     
L3F59: LDA    $EC     
L3F5B: LSR            
       BEQ    L3F62   
       CMP    $85     
       BPL    L3F5B   
L3F62: CLC            
       ADC    #$02    
       TAX            
       LDA    $B0     
       BEQ    L3F6C   
       LDX    #$00    
L3F6C: LDY    $83     
       CPY    #$21    
       BPL    L3F84   
       DEY            
       TYA            
       AND    #$04    
       BNE    L3F7F   
       LDA    $EC     
       AND    #$01    
       BNE    L3F7F   
       TAX            
L3F7F: LDA    $F3     
       BEQ    L3F84   
       TAX            
L3F84: TXA            
       AND    $EE     
       CLC            
       ADC    $87     
       RTS            

L3F8B: LSR            
       LSR            
       AND    #$07    
       TAX            
       LDA    L3FCC,X 
       STA    AUDC1   
       LDA    L3FD3,X 
       RTS            

L3F99: JSR    L38AB   
       STA    $ED     
       CMP    #$50    
       BCC    L3FB3   
       SEC            
       SBC    #$50    
       STA    $ED     
       LDA    $EF     
       SEC            
       SBC    #$50    
       BPL    L3FB1   
       CLC            
       ADC    #$A0    
L3FB1: STA    $EF     
L3FB3: LDA    $EF     
       SEC            
       SBC    $ED     
       CLC            
       ADC    #$10    
       LSR            
       JSR    L38FF   
       TAX            
       LDA    L312D,X 
       RTS            

L3FC4: .byte $EE
L3FC5: .byte $AE,$DE,$8D
L3FC8: .byte $17,$07,$03,$01
L3FCC: .byte $02,$02,$02,$02,$08,$08,$08
L3FD3: .byte $0F,$0D,$0B,$09,$07,$05,$04
L3FDA: .byte $00,$25,$50,$75
L3FDE: .byte $E0,$F0,$00,$10
L3FE2: .byte $00,$00,$53,$A7,$12,$6F,$42,$FA,$DB,$98,$53
L3FED: .byte $00,$00,$55,$AA,$88,$88,$22,$11,$77,$77,$CC,$33,$00,$00,$00,$0E
       .byte $39
L3FFE: .byte $40,$80
