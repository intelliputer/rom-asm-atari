; Disassembly of roms/Peek-A-Boo.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Peek-A-Boo.bin
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
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       CLI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       LDX    #$D0    
       STX    $80     
       JMP    LF018   
LF013: .byte $AD,$84,$02,$30,$FB
LF018: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDX    #$01    
LF022: LDA    $8A,X   
       BEQ    LF062   
       TAY            
       LDA    LF6F4,Y 
       CLC            
       ADC    $8C,X   
       STA    $8C,X   
       BCC    LF073   
       LDA    LF6E5,Y 
       STA    $A3     
       LDA    LF6E0,Y 
       STA    $A4     
       LDA    LF6EF,Y 
       STA    AUDC0,X 
       AND    #$F0    
       STA    $A5     
       LDA    $88,X   
       BEQ    LF066   
       DEC    $88,X   
       TAY            
       DEY            
       LDA    ($A3),Y 
       BEQ    LF05A   
       STA    AUDF0,X 
       LSR            
       CLC            
       ADC    $A5     
       LSR            
       LSR            
       LSR            
       LSR            
LF05A: STA    AUDV0,X 
LF05C: DEX            
       BPL    LF022   
       JMP    LF07A   
LF062: LDY    #$0E    
       BNE    LF068   
LF066: LDY    #$04    
LF068: DEY            
       BNE    LF068   
       LDA    #$00    
       STA    $8A,X   
       STA    $88,X   
       BEQ    LF05A   
LF073: LDY    #$0D    
LF075: DEY            
       BNE    LF075   
       BEQ    LF05C   
LF07A: STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$AA    
       STA    TIM64T  
       INC    $82     
       BNE    LF08B   
       INC    $83     
LF08B: LDA    $80     
       BPL    LF0BA   
       AND    #$20    
       BEQ    LF09D   
       LDA    $8A     
       BNE    LF0BA   
       LDA    $80     
       AND    #$DF    
       STA    $80     
LF09D: BIT    INPT4   
       BMI    LF0A4   
       JMP    LF0D9   
LF0A4: LDA    $82     
       BNE    LF0BA   
       LDA    $83     
       AND    #$07    
       BNE    LF0BA   
       JSR    LF565   
       LDA    $80     
       EOR    #$10    
       STA    $80     
       JSR    LF566   
LF0BA: LDA    SWCHB   
       AND    #$01    
       BNE    LF0D0   
       LDA    $81     
       AND    #$20    
       BNE    LF0D6   
       LDA    $81     
       ORA    #$20    
       STA    $81     
       JMP    LF0D9   
LF0D0: LDA    $81     
       AND    #$DF    
       STA    $81     
LF0D6: JMP    LF104   
LF0D9: LDA    #$00    
       STA    $83     
       STA    $8A     
       STA    $8B     
       LDA    $80     
       AND    #$07    
       STA    $80     
       TAX            
       LDA    LF63B,X 
       STA    $C8     
       LDA    LF644,X 
       STA    $C9     
       LDA    #$80    
       STA    $D5     
       LDY    #$03    
       LDX    #$00    
       JSR    LF567   
       LDY    #$04    
       LDX    #$01    
       JSR    LF567   
LF104: LDA    SWCHB   
       AND    #$02    
       BEQ    LF114   
       LDA    $81     
       AND    #$EF    
       STA    $81     
       JMP    LF15D   
LF114: LDA    $82     
       AND    #$0F    
       STA    $A3     
       LDA    $81     
       AND    #$10    
       BEQ    LF12A   
       LDA    $81     
       AND    #$0F    
       CMP    $A3     
       BNE    LF15D   
       BEQ    LF134   
LF12A: LDA    $81     
       AND    #$F0    
       ORA    #$10    
       ORA    $A3     
       STA    $81     
LF134: LDA    $80     
       BIT    $80     
       BVC    LF149   
       LDA    #$00    
       STA    $84     
       STA    $85     
       STA    $86     
       LDA    $80     
       CLC            
       ADC    #$01    
       AND    #$07    
LF149: AND    #$C7    
       ORA    #$D0    
       STA    $80     
       JSR    LF565   
       JSR    LF566   
       LDA    #$00    
       STA    $83     
       STA    $8A     
       STA    $8B     
LF15D: LDA    $80     
       AND    #$10    
       BEQ    LF166   
       JMP    LF4FA   
LF166: LDA    $8E     
       ORA    $8F     
       BNE    LF17A   
       LDY    #$03    
       LDX    #$00    
       JSR    LF567   
       LDY    #$04    
       LDX    #$01    
       JSR    LF567   
LF17A: LDA    $D5     
       BMI    LF191   
       CMP    #$40    
       BNE    LF185   
       JMP    LF351   
LF185: LDA    $D5     
       CMP    #$10    
       BNE    LF18E   
       JMP    LF351   
LF18E: JMP    LF20A   
LF191: LDA    $CC     
       BNE    LF198   
       JMP    LF3AB   
LF198: LDA    $80     
       AND    #$07    
       CMP    #$04    
       BCS    LF1DD   
       LDA    $C8     
       CMP    #$8A    
       BCS    LF1B3   
       LDA    #$01    
       STA    $D1     
       STA    $CE     
       LDA    #$8A    
       STA    $CD     
       JMP    LF1BD   
LF1B3: LDA    #$FF    
       STA    $D1     
       STA    $CD     
       LDA    #$8A    
       STA    $CE     
LF1BD: LDA    $C9     
       CMP    #$68    
       BCS    LF1D0   
       LDA    #$01    
       STA    $D2     
       STA    $D0     
       LDA    #$68    
       STA    $CF     
       JMP    LF203   
LF1D0: LDA    #$FF    
       STA    $D2     
       STA    $CF     
       LDA    #$68    
       STA    $D0     
       JMP    LF203   
LF1DD: JSR    LF616   
       AND    #$03    
       STA    $D4     
       TAX            
       LDA    LF6CC,X 
       STA    $CD     
       LDA    LF6C8,X 
       STA    $CE     
       LDA    LF6D0,X 
       STA    $CF     
       LDA    LF6D4,X 
       STA    $D0     
       LDA    LF6D8,X 
       STA    $D1     
       LDA    LF6DC,X 
       STA    $D2     
LF203: LDA    #$40    
       STA    $D5     
       JMP    LF351   
LF20A: LDA    $80     
       AND    #$07    
       CMP    #$04    
       BCS    LF225   
       LDA    #$B0    
       STA    $CD     
       LDA    #$60    
       STA    $CE     
       LDA    #$A0    
       STA    $CF     
       LDA    #$30    
       STA    $D0     
       JMP    LF23E   
LF225: LDA    $D4     
       AND    #$03    
       TAX            
       LDA    LF6B8,X 
       STA    $CE     
       LDA    LF6BC,X 
       STA    $CD     
       LDA    LF6C0,X 
       STA    $CF     
       LDA    LF6C4,X 
       STA    $D0     
LF23E: LDA    $80     
       AND    #$07    
       TAX            
       LDA    LF341,X 
       STA    $A8     
       LDA    LF349,X 
       STA    $A7     
       JMP.ind ($00A7)
LF250: .byte $A5,$CC,$F0,$13,$20,$16,$F6,$29,$03,$AA,$BD,$8E,$F6,$85,$D2,$BD
       .byte $6C,$F6,$85,$D1,$4C,$2C,$F3,$4C,$51,$F3,$A5,$CC,$F0,$11,$18,$69
       .byte $04,$AA,$BD,$8E,$F6,$85,$D2,$D0,$03,$4C,$1B,$F3,$4C,$2C,$F3,$4C
       .byte $51,$F3,$A5,$CC,$F0,$0C,$18,$69,$04,$AA,$BD,$6C,$F6,$85,$D1,$4C
       .byte $2C,$F3,$4C,$51,$F3,$A5,$CC,$F0,$18,$18,$69,$11,$AA,$BD,$8E,$F6
       .byte $85,$D2,$BD,$6C,$F6,$85,$D1,$05,$D2,$D0,$03,$4C,$1B,$F3,$4C,$2C
       .byte $F3,$4C,$51,$F3,$A5,$CC,$F0,$26,$A5,$D4,$0A,$AA,$A5,$CC,$DD,$B0
       .byte $F6,$F0,$08,$DD,$B1,$F6,$F0,$03,$4C,$1B,$F3,$A5,$D4,$18,$69,$1E
       .byte $AA,$BD,$6C,$F6,$85,$D1,$BD,$8E,$F6,$85,$D2,$4C,$2C,$F3,$4C,$51
       .byte $F3,$A5,$CC,$F0,$27,$A5,$D4,$0A,$18,$65,$D4,$AA,$A0,$02,$E8,$E4
       .byte $CC,$F0,$06,$88,$10,$F8,$4C,$1B,$F3,$A5,$D4,$18,$69,$1E,$AA,$BD
       .byte $6C,$F6,$85,$D1,$BD,$8E,$F6,$85,$D2,$4C,$2C,$F3,$4C,$51,$F3,$4C
       .byte $95,$F2,$4C,$51,$F3,$4C,$95,$F2,$4C,$51,$F3,$A0,$02,$A2,$00,$20
       .byte $67,$F5,$A0,$02,$A2,$01,$20,$67,$F5,$4C,$51,$F3,$A0,$01,$A2,$00
       .byte $20,$67,$F5,$A0,$01,$A2,$01,$20,$67,$F5,$A9,$10,$85,$D5,$4C,$51
       .byte $F3
LF341: .byte $F2,$F2,$F2,$F2,$F2,$F2,$F3,$F3
LF349: .byte $50,$6A,$82,$95,$B4,$E1,$0F,$15
LF351: LDA    $C8     
       CLC            
       ADC    $D1     
       STA    $C8     
       LDA    $C9     
       CLC            
       ADC    $D2     
       STA    $C9     
       LDA    $CD     
       CMP    $C8     
       BCS    LF36B   
       STA    $C8     
       LDA    #$00    
       STA    $D1     
LF36B: LDA    $CE     
       CMP    $C8     
       BCC    LF377   
       STA    $C8     
       LDA    #$00    
       STA    $D1     
LF377: LDA    $CF     
       CMP    $C9     
       BCS    LF383   
       STA    $C9     
       LDA    #$00    
       STA    $D2     
LF383: LDA    $D0     
       CMP    $C9     
       BCC    LF38F   
       STA    $C9     
       LDA    #$00    
       STA    $D2     
LF38F: LDA    $D2     
       ORA    $D1     
       BNE    LF3A8   
       LDA    $D5     
       BEQ    LF3A8   
       CMP    #$40    
       BNE    LF3A4   
       LDA    #$00    
       STA    $D5     
       JMP    LF3A8   
LF3A4: LDA    #$80    
       STA    $D5     
LF3A8: JMP    LF3AB   
LF3AB: LDA    #$05    
       STA    CTRLPF  
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    $BC     
       LDA    #$46    
       STA    COLUPF  
       STA    $A1     
       LDA    $80     
       AND    #$07    
       CMP    #$04    
       BEQ    LF3D4   
       CMP    #$06    
       BEQ    LF3D4   
       JMP    LF3E0   
LF3D4: LDA    #$DA    
       STA    $9D     
       STA    $9E     
       STA    $9F     
       STA    $A0     
       STA    $A1     
LF3E0: CMP    #$05    
       BEQ    LF3EB   
       CMP    #$07    
       BEQ    LF3EB   
       JMP    LF3FD   
LF3EB: LDA    #$DA    
       STA    $9D     
       LDA    #$46    
       STA    $9E     
       LDA    #$3C    
       STA    $9F     
       STA    $A1     
       LDA    #$88    
       STA    $A0     
LF3FD: LDA    #$26    
       STA    COLUP0  
       LDA    #$9E    
       STA    COLUP1  
       LDA    #$BE    
       STA    $B7     
       LDA    $80     
       AND    #$07    
       TAX            
       LDA    LF64D,X 
       STA    $B8     
       LDA    LF655,X 
       STA    $B9     
       LDX    $C7     
       LDA    LFC79,X 
       STA    $C2     
       LDA    LFC91,X 
       STA    $C1     
       LDA    LFC81,X 
       STA    $C4     
       LDA    LFC99,X 
       STA    $C3     
       LDA    LFC89,X 
       STA    $C6     
       LDA    LFCA1,X 
       STA    $C5     
       LDA    $C9     
       STA    $BA     
       CLC            
       ADC    #$28    
       STA    $BB     
       LDA    $C8     
       STA    $CB     
       LDX    #$FF    
LF447: INX            
       SEC            
       SBC    #$0F    
       CMP    #$F1    
       BCC    LF447   
       STX    $CA     
       CLC            
       ADC    #$0F    
       TAX            
       LDA    LF65D,X 
       STA    HMP0    
       LDX    $CA     
       STA    WSYNC   
       NOP            
       DEX            
       DEX            
LF461: DEX            
       BPL    LF461   
       STA    RESP0   
       LDA    $C8     
       STA    $CB     
       LDX    #$FF    
LF46C: INX            
       SEC            
       SBC    #$0F    
       CMP    #$F1    
       BCC    LF46C   
       STX    $CA     
       CLC            
       ADC    #$0F    
       TAX            
       LDA    LF65D,X 
       STA    HMP1    
       LDX    $CA     
       STA    WSYNC   
       NOP            
       DEX            
       DEX            
LF486: DEX            
       BPL    LF486   
       STA    RESP1   
       LDA    $C8     
       STA    $CB     
       LDX    $D1     
       BMI    LF49E   
       CLC            
       ADC    #$09    
       STA    $CB     
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
LF49E: LDX    #$FF    
       LDA    $CB     
LF4A2: INX            
       SEC            
       SBC    #$0F    
       CMP    #$F1    
       BCC    LF4A2   
       STX    $CA     
       CLC            
       ADC    #$0F    
       TAX            
       LDA    LF65D,X 
       STA    HMM0    
       LDX    $CA     
       STA    WSYNC   
       NOP            
       DEX            
       DEX            
LF4BC: DEX            
       BPL    LF4BC   
       STA    RESM0   
       LDA    $C8     
       STA    $CB     
       LDX    $D1     
       BPL    LF4D4   
       CLC            
       ADC    #$09    
       STA    $CB     
       LDA    #$08    
       STA    REFP0   
       STA    REFP1   
LF4D4: LDX    #$FF    
       LDA    $CB     
LF4D8: INX            
       SEC            
       SBC    #$0F    
       CMP    #$F1    
       BCC    LF4D8   
       STX    $CA     
       CLC            
       ADC    #$0F    
       TAX            
       LDA    LF65D,X 
       STA    HMM1    
       LDX    $CA     
       STA    WSYNC   
       NOP            
       DEX            
       DEX            
LF4F2: DEX            
       BPL    LF4F2   
       STA    RESM1   
       JMP    LF523   
LF4FA: STA    WSYNC   
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STX    VDELP0  
       STX    VDELP1  
       STX    REFP0   
       STX    REFP1   
       LDX    #$10    
       STX    HMP1    
       LDX    #$23    
       STX    $A7     
       LDX    #$F5    
       STX    $A8     
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
LF523: LDA    INTIM   
       BMI    LF523   
       STA    CXCLR   
       LDA    $80     
       AND    #$10    
       BEQ    LF53F   
       LDX    #$09    
       LDA    LF551,X 
       STA    $A7     
       LDA    LF55B,X 
       STA    $A8     
       JMP.ind ($00A7)
LF53F: LDA    $80     
       AND    #$0F    
       TAX            
       LDA    LF551,X 
       STA    $A7     
       LDA    LF55B,X 
       STA    $A8     
       JMP.ind ($00A7)
LF551: .byte $00,$00,$00,$00,$67,$67,$67,$67,$67,$95
LF55B: .byte $F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8,$F9
LF565: RTS            

LF566: RTS            

LF567: LDA    $80     
       BMI    LF581   
       LDA    $8A,X   
       BEQ    LF574   
       TYA            
       CMP    $8A,X   
       BCS    LF581   
LF574: STY    $8A,X   
       LDA    LF582,Y 
       STA    $88,X   
       LDA    #$E0    
       STA    AUDV0,X 
       STA    $8C,X   
LF581: RTS            

LF582: .byte $00,$06,$02,$60,$60,$A9,$FF,$8D,$81,$02,$A5,$CC,$10,$03,$4C,$13
       .byte $F6,$A9,$00,$85,$CC,$A9,$EF,$8D,$80,$02,$A2,$05,$85,$02,$CA,$10
       .byte $FB,$E6,$CC,$A5,$38,$10,$6A,$E6,$CC,$A5,$39,$10,$64,$E6,$CC,$A5
       .byte $3C,$10,$5E,$A9,$DF,$8D,$80,$02,$A2,$05,$85,$02,$CA,$10,$FB,$E6
       .byte $CC,$A5,$38,$10,$4C,$E6,$CC,$A5,$39,$10,$46,$E6,$CC,$A5,$3C,$10
       .byte $40,$A9,$BF,$8D,$80,$02,$A2,$05,$85,$02,$CA,$10,$FB,$E6,$CC,$A5
       .byte $38,$10,$2E,$E6,$CC,$A5,$39,$10,$28,$E6,$CC,$A5,$3C,$10,$22,$A9
       .byte $7F,$8D,$80,$02,$A2,$05,$85,$02,$CA,$10,$FB,$E6,$CC,$A5,$38,$10
       .byte $10,$E6,$CC,$A5,$39,$10,$0A,$E6,$CC,$A5,$3C,$10,$04,$A9,$00,$85
       .byte $CC,$4C,$13,$F0
LF616: LDA    INTIM   
       STA    $A3     
       LDA    $D3     
       ASL            
       ROL    $A3     
       ASL            
       ROL    $A3     
       ASL            
       ROL    $A3     
       SBC    $D3     
       BCS    LF62C   
       DEC    $A3     
LF62C: ASL            
       ROL    $A3     
       LSR            
       ADC    $A3     
       CMP    #$7F    
       BCC    LF638   
       SBC    #$7F    
LF638: STA    $D3     
       RTS            

LF63B: .byte $60,$8A,$60,$60,$8A,$8A,$8A,$8A,$8A
LF644: .byte $68,$9B,$68,$68,$68,$68,$68,$68,$68
LF64D: .byte $70,$68,$BD,$78,$A8,$A8,$A8,$A8
LF655: .byte $30,$38,$00,$28,$70,$70,$70,$70
LF65D: .byte $60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$00
       .byte $02,$00,$FE,$00,$FE,$FE,$FE,$FE,$FE,$FE,$02,$02,$02,$02,$02,$02
       .byte $00,$FE,$FE,$FE,$00,$00,$00,$00,$00,$00,$02,$02,$02,$02,$FE,$02
       .byte $FE,$02,$00,$FE,$00,$00,$FE,$00,$02,$FE,$00,$02,$FE,$00,$02,$FE
       .byte $00,$02,$00,$00,$00,$00,$FE,$00,$02,$FE,$00,$02,$00,$00,$00,$FE
       .byte $FE,$02,$02,$03,$06,$09,$0C,$01,$04,$07,$0A
LF6B8: .byte $50,$8A,$50,$8A
LF6BC: .byte $8A,$C8,$8A,$C8
LF6C0: .byte $A8,$A8,$68,$68
LF6C4: .byte $68,$68,$30,$30
LF6C8: .byte $60,$60,$60,$60
LF6CC: .byte $B0,$B0,$B0,$B0
LF6D0: .byte $A0,$A0,$A0,$A0
LF6D4: .byte $30,$30,$30,$30
LF6D8: .byte $FF,$01,$FF,$01
LF6DC: .byte $01,$01,$FF,$FF
LF6E0: .byte $00,$F7,$F7,$F6,$F7
LF6E5: .byte $00,$BA,$C0,$FA,$5A,$00,$06,$02,$60,$60
LF6EF: .byte $0D,$8D,$51,$3D,$2D
LF6F4: .byte $FF,$20,$20,$20,$20,$00,$00,$17,$0F,$12,$00,$03,$00,$14,$12,$11
       .byte $12,$11,$00,$17,$00,$18,$00,$1B,$00,$1F,$00,$14,$34,$00,$00,$1F
       .byte $17,$17,$12,$12,$00,$11,$12,$11,$17,$00,$00,$11,$12,$11,$00,$17
       .byte $00,$11,$00,$0F,$00,$00,$00,$17,$0F,$12,$00,$17,$14,$12,$11,$11
       .byte $12,$11,$00,$17,$00,$18,$00,$1B,$00,$1F,$00,$14,$34,$00,$00,$1F
       .byte $17,$17,$12,$12,$00,$11,$12,$31,$17,$00,$00,$11,$12,$11,$00,$17
       .byte $00,$00,$00,$00,$00,$00,$00,$12,$14,$3F,$00,$05,$00,$11,$0F,$0D
       .byte $0F,$0D,$00,$12,$0F,$11,$0D,$00,$0F,$00,$2D,$51,$00,$11,$00,$00
       .byte $00,$00,$0F,$0F,$00,$0D,$0F,$0D,$00,$12,$00,$0D,$0F,$0D,$12,$00
       .byte $00,$18,$00,$1B,$00,$3F,$00,$12,$14,$3F,$00,$12,$11,$0F,$0D,$0D
       .byte $0F,$0D,$00,$12,$0F,$11,$0D,$00,$0F,$00,$2D,$51,$00,$11,$00,$00
       .byte $00,$00,$0F,$0F,$00,$0D,$0F,$0D,$00,$12,$00,$0D,$0F,$0D,$12,$00
       .byte $00,$58,$00,$5B,$00,$3F,$00,$32,$52,$4F,$00,$4F,$00,$1F,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$A2,$00,$85,$02
       .byte $85,$2A,$86,$01,$86,$09,$A6,$B7,$CA,$F0,$53,$E4,$B8,$F0,$24,$E4
       .byte $B9,$F0,$39,$E4,$BA,$B0,$42,$A4,$BC,$C0,$28,$B0,$3C,$B1,$C1,$85
       .byte $02,$85,$1B,$B1,$C3,$85,$1C,$B1,$C5,$85,$1D,$4A,$85,$1E,$E6,$BC
       .byte $4C,$0C,$F8,$A5,$80,$29,$07,$A8,$B9,$A9,$FC,$85,$02,$85,$0D,$B9
       .byte $B1,$FC,$85,$0E,$B9,$B9,$FC,$85,$0F,$4C,$0C,$F8,$A9,$00,$85,$02
       .byte $85,$0D,$85,$0E,$85,$0F,$4C,$0C,$F8,$85,$02,$4C,$0C,$F8,$85,$02
       .byte $4C,$6C,$F9,$A0,$00,$A2,$00,$85,$02,$85,$2A,$86,$01,$86,$09,$A6
       .byte $B7,$CA,$85,$02,$A5,$9E,$85,$08,$CA,$E4,$B8,$F0,$28,$E4,$B9,$F0
       .byte $3F,$E4,$BA,$90,$02,$A0,$00,$A5,$9D,$85,$02,$85,$08,$B1,$C1,$85
       .byte $1B,$B1,$C3,$85,$1C,$B1,$C5,$85,$1D,$4A,$85,$1E,$C8,$C0,$28,$B0
       .byte $3E,$EA,$4C,$78,$F8,$A9,$FF,$85,$02,$85,$0E,$A5,$9D,$85,$08,$A9
       .byte $0F,$85,$0F,$E6,$A3,$E6,$A3,$E6,$A3,$E6,$A3,$E6,$A3,$4C,$78,$F8
       .byte $A5,$9E,$85,$08,$A9,$00,$85,$02,$85,$0E,$85,$0F,$A9,$40,$85,$B8
       .byte $A9,$08,$85,$B9,$A5,$9F,$85,$9D,$A5,$A0,$85,$9E,$4C,$78,$F8,$A0
       .byte $28,$A5,$9E,$85,$08,$A5,$9D,$85,$02,$85,$08,$E6,$A3,$E6,$A3,$E6
       .byte $A3,$E6,$A3,$E6,$A3,$CA,$E4,$B8,$F0,$AB,$E4,$B9,$F0,$C2,$E0,$00
       .byte $D0,$DD,$85,$02,$4C,$6C,$F9,$A0,$00,$A2,$00,$85,$02,$85,$2A,$86
       .byte $01,$86,$09,$A6,$B7,$CA,$85,$02,$CA,$F0,$48,$A0,$28,$C4,$BC,$B0
       .byte $02,$84,$BC,$A4,$BC,$E4,$BA,$90,$04,$A0,$00,$84,$BC,$B1,$C1,$85
       .byte $02,$85,$1B,$B1,$C3,$85,$1C,$B1,$C5,$85,$1D,$4A,$85,$1E,$E6,$BC
       .byte $BD,$CC,$FA,$85,$0F,$D0,$D1,$A0,$00,$E0,$A2,$B0,$0E,$A0,$01,$E0
       .byte $7D,$B0,$08,$A0,$02,$E0,$56,$B0,$02,$A0,$03,$B9,$9D,$00,$85,$08
       .byte $4C,$1C,$F9,$85,$02,$4C,$6C,$F9,$A5,$80,$30,$12,$A5,$81,$29,$3F
       .byte $24,$81,$10,$02,$09,$40,$24,$3C,$30,$02,$09,$80,$85,$81,$85,$02
       .byte $A9,$AD,$8D,$96,$02,$A5,$80,$29,$10,$D0,$03,$4C,$87,$F5,$4C,$13
       .byte $F0,$A9,$70,$85,$09,$A2,$00,$86,$0D,$86,$0E,$86,$0F,$86,$02,$86
       .byte $01,$A2,$0B,$BD,$4C,$FD,$95,$AB,$CA,$10,$F8,$A2,$20,$20,$70,$FA
       .byte $A9,$8E,$A0,$32,$20,$76,$FA,$A9,$00,$85,$25,$85,$26,$A9,$60,$85
       .byte $20,$85,$21,$85,$23,$A9,$D0,$85,$22,$A0,$03,$A2,$07,$85,$02,$CA
       .byte $10,$FD,$99,$10,$00,$88,$10,$F3,$85,$02,$85,$2A,$A2,$10,$20,$70
       .byte $FA,$A9,$26,$85,$06,$A9,$9E,$85,$07,$A0,$00,$84,$04,$84,$05,$B9
       .byte $00,$FC,$85,$02,$85,$1B,$B9,$28,$FC,$85,$1C,$B9,$50,$FC,$85,$1D
       .byte $4A,$85,$1E,$C8,$C0,$29,$90,$E7,$85,$02,$A2,$03,$86,$04,$86,$05
       .byte $86,$25,$86,$26,$86,$0B,$86,$0C,$A2,$10,$86,$21,$A2,$00,$86,$20
       .byte $A2,$00,$86,$20,$EA,$85,$10,$85,$11,$85,$02,$85,$2A,$85,$02,$85
       .byte $2B,$A2,$0B,$BD,$64,$FD,$95,$AB,$CA,$10,$F8,$A5,$80,$29,$07,$AA
       .byte $BD,$71,$FD,$85,$B5,$A2,$10,$20,$70,$FA,$A9,$3E,$A0,$06,$20,$76
       .byte $FA,$A2,$0B,$BD,$58,$FD,$95,$AB,$CA,$10,$F8,$A2,$04,$20,$70,$FA
       .byte $A9,$8E,$A0,$06,$20,$76,$FA,$85,$02,$4C,$6C,$F9,$85,$02,$CA,$D0
       .byte $FB,$60,$85,$06,$85,$07,$84,$A3,$A4,$A3,$B1,$AB,$85,$1B,$85,$02
       .byte $B1,$AD,$85,$1C,$B1,$AF,$85,$1B,$B1,$B1,$85,$A4,$B1,$B3,$AA,$B1
       .byte $B5,$A8,$A5,$A4,$85,$1C,$86,$1B,$84,$1C,$85,$1B,$C6,$A3,$10,$D8
       .byte $A0,$00,$84,$1B,$84,$1C,$84,$1B,$60,$84,$A3,$B9,$84,$00,$29,$0F
       .byte $A8,$B9,$70,$FD,$95,$AB,$CA,$CA,$A4,$A3,$B9,$84,$00,$4A,$4A,$4A
       .byte $4A,$A8,$B9,$70,$FD,$95,$AB,$60,$00,$00,$00,$00,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
       .byte $E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$00,$00,$00,$00,$00,$00,$80,$80,$C0,$C0,$C0,$C0
       .byte $E0,$E0,$E0,$E0,$E0,$E0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$E0,$E0,$E0,$E0,$E0,$E0,$C0,$C0
       .byte $C0,$C0,$80,$80,$00,$00,$00,$00,$00,$00,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$00,$00,$00,$00,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$83,$C7,$76
       .byte $1E,$1F,$1F,$1F,$1A,$17,$1A,$12,$12,$72,$7F,$FE,$FF,$FA,$7D,$3E
       .byte $0C,$0C,$0E,$0E,$1C,$1C,$1C,$1D,$1F,$7F,$FF,$EF,$EF,$EE,$6E,$6E
       .byte $6E,$10,$00,$00,$00,$00,$00,$80,$E0,$E0,$E0,$E0,$E0,$E0,$E5,$ED
       .byte $E8,$88,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$82,$02,$00
       .byte $80,$00,$00,$00,$00,$00,$00,$01,$01,$EE,$E7,$00,$00,$00,$00,$00
       .byte $00,$00,$06,$06,$06,$04,$06,$06,$06,$06,$02,$02,$02,$02,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00
LFC79: .byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
LFC81: .byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
LFC89: .byte $FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
LFC91: .byte $00,$28,$28,$28,$28,$28,$28,$28
LFC99: .byte $28,$50,$50,$50,$50,$50,$50,$50
LFCA1: .byte $50,$79,$79,$79,$79,$79,$79,$79,$00,$F0,$00,$00,$30,$30,$00,$00
       .byte $00,$FF,$00,$00,$FF,$FF,$FF,$FF,$F8,$FF,$F0,$FF,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18
       .byte $18,$18,$0C,$06,$36,$3E,$38,$1C,$0E,$36,$36,$1C,$36,$36,$36,$36
       .byte $36,$1C,$36,$36,$0C,$06,$36,$1C,$36,$36,$3C,$30,$36,$1C,$36,$36
       .byte $1C,$36,$36,$1C,$36,$06,$1E,$36,$36,$1C,$36,$06,$06,$3C,$30,$3E
       .byte $0C,$0C,$0C,$0C,$1C,$1C,$0C,$06,$06,$3E,$36,$1E,$0E,$06,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$38,$7C,$54,$FE,$C6,$B9,$FD,$EC,$FD,$1F
       .byte $FE,$52,$FE,$85,$FE,$B8,$FE,$7A,$FD,$81,$FD,$88,$FD,$8F,$FD,$96
       .byte $FD,$9D,$FD,$A4,$FD,$AB,$FD,$B2,$FD,$3F,$FD,$3F,$FD,$3F,$FD,$0C
       .byte $31,$06,$12,$38,$2A,$18,$00,$1E,$24,$71,$89,$A9,$B1,$A9,$8B,$71
       .byte $22,$55,$15,$32,$55,$55,$22,$13,$13,$13,$73,$53,$53,$11,$59,$D9
       .byte $59,$59,$59,$59,$BC,$AD,$ED,$AE,$AD,$AD,$AD,$CE,$40,$40,$40,$40
       .byte $40,$40,$40,$F7,$C6,$C7,$C6,$C6,$C6,$C7,$99,$35,$35,$35,$35,$35
       .byte $B5,$EF,$8C,$CC,$8C,$8C,$8C,$EC,$7F,$7F,$7F,$7F,$78,$78,$78,$78
       .byte $78,$78,$7F,$7F,$7F,$7F,$79,$78,$78,$78,$78,$79,$7F,$7F,$7F,$00
       .byte $00,$00,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$FE,$FF,$FF,$FF
       .byte $FF,$F3,$F1,$F0,$F0,$F1,$F3,$FF,$FF,$FF,$FF,$E0,$F8,$FC,$FC,$7E
       .byte $3E,$1E,$1E,$3E,$7E,$FC,$F8,$F0,$E0,$F0,$F8,$78,$78,$F8,$F8,$F0
       .byte $E0,$C0,$00,$00,$3F,$00,$00,$00,$00,$00,$00,$03,$03,$03,$03,$03
       .byte $83,$C3,$E3,$E3,$F3,$F3,$F3,$F3,$F3,$F3,$E3,$C0,$80,$00,$00,$07
       .byte $0F,$1F,$3E,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3E,$1F,$0F,$07
       .byte $00,$00,$00,$00,$38,$1C,$0F,$C6,$03,$01,$00,$00,$00,$00,$FF,$FF
       .byte $FF,$FF,$C0,$C0,$C0,$C0,$FE,$FE,$FE,$C0,$C0,$C0,$FF,$FF,$00,$00
       .byte $00,$00,$F0,$F8,$FC,$3E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$3E
       .byte $FC,$F8,$F0,$00,$00,$00,$00,$0E,$1C,$F8,$31,$60,$C0,$80,$00,$00
       .byte $00,$3F,$3F,$3F,$3F,$38,$38,$38,$38,$3F,$3F,$3F,$38,$38,$38,$3F
       .byte $3F,$00,$00,$00,$00,$07,$0F,$1F,$3E,$3C,$3C,$3C,$3C,$3C,$3C,$3C
       .byte $3C,$3C,$3E,$1F,$0F,$07,$00,$00,$00,$00,$00,$00,$00,$FE,$00,$00
       .byte $00,$00,$01,$01,$F1,$F1,$F1,$F1,$01,$01,$01,$01,$E1,$E1,$E1,$01
       .byte $01,$01,$F1,$F1,$01,$01,$01,$00,$F0,$F8,$FC,$3E,$1E,$1E,$1E,$1E
       .byte $1E,$1E,$1E,$1E,$1E,$3E,$FC,$F8,$F0,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$07,$07,$07,$07,$C7,$C7,$C7,$C7,$CF,$DE,$FC,$F8,$F8,$FC,$FE
       .byte $DF,$CF,$C7,$C7,$C7,$C7,$C7,$C7,$C7,$C7,$00,$00,$00,$00,$00,$00
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
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$F0,$00,$00
