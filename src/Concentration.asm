; Disassembly of roms/Concentration.bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Concentration.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
COLUP0  =  $06
COLUP1  =  $07
CTRLPF  =  $0A
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
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
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000
LF000: LDX    #$02    
LF002: LDA    $EF,X   
       AND    #$0F    
       STA    $FB     
       ASL            
       ASL            
       CLC            
       ADC    $FB     
       STA    $E5,X   
       LDA    $EF,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $FB     
       LSR            
       LSR            
       ADC    $FB     
       STA    $E7,X   
       DEX            
       BNE    LF002   
       LDY    #$F7    
       STY    $FB     
       LDY    #$00    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF033   
       LDA    #$07    
       STA    $FB     
       LDY    #$04    
LF033: LDA    LF594,Y 
       BIT    $9F     
       BVS    LF03E   
       EOR    $EA     
       AND    $FB     
LF03E: STA    COLUP0,X
       INY            
       INX            
       CPX    #$04    
       BCC    LF033   
LF046: LDA    INTIM   
       BNE    LF046   
       STA    WSYNC   
       STA    VBLANK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    #$02    
       STX    CTRLPF  
       INX            
LF05A: STA    WSYNC   
       DEX            
       BNE    LF05A   
       STX    $FB     
       STX    $FC     
       LDX    #$06    
LF065: STA    WSYNC   
       LDA    $FB     
       STA    PF1     
       LDY    $E8     
       LDA    LF562,Y 
       AND    #$F0    
       STA    $FB     
       LDY    $E6     
       LDA    LF562,Y 
       AND    #$0F    
       ORA    $FB     
       STA    $FB     
       LDA    $FC     
       STA    PF1     
       LDY    $E9     
       LDA    LF562,Y 
       AND    #$F0    
       STA    $FC     
       LDY    $E7     
       LDA    LF562,Y 
       AND    $A2     
       STA    WSYNC   
       ORA    $FC     
       STA    $FC     
       LDA    $FB     
       STA    PF1     
       DEX            
       BEQ    LF0AF   
       INC    $E6     
       INC    $E8     
       INC    $E7     
       INC    $E9     
       LDA    $FC     
       STA    PF1     
       JMP    LF065   
LF0AF: STX    PF1     
       STA    WSYNC   
       LDA    #$04    
       STA    CTRLPF  
       STA    WSYNC   
       DEX            
       STX    PF0     
       STX    PF1     
       STX    PF2     
       INX            
       BEQ    LF103   
LF0C3: LDA    #$FF    
       STA    PF0     
       STA    WSYNC   
       LDA    ($FA),Y 
       STA    GRP0    
       LDA    ($FC),Y 
       STA    GRP1    
LF0D1: LDA    $86,X   
       STA    PF1     
       LDA    $8C,X   
       STA    PF2     
       LDA    $80,X   
       STA    PF0     
       LDA    $92,X   
       STA    PF1     
       INY            
       LDA    $98,X   
       STA    PF2     
       CPY    #$14    
       BCC    LF0C3   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$FF    
       STA    PF0     
       CPY    #$15    
       BCC    LF0D1   
       STA    PF1     
       STA    PF2     
       INX            
       CPX    #$06    
       BEQ    LF162   
LF103: STA    WSYNC   
       LDA    $A3,X   
       AND    #$0F    
       TAY            
LF10A: DEY            
       BPL    LF10A   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       LDA    $A3,X   
       STA    HMP0    
       CLC            
       ADC    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       TXA            
       TAY            
       ASL            
       TAX            
       LDA    $A9,X   
       STA    $FA     
       LDA    $B5,X   
       STA    $FC     
       INX            
       LDA    $A9,X   
       STA    $FB     
       LDA    $B5,X   
       STA    $FD     
       TYA            
       TAX            
       STA    WSYNC   
       LDY    #$14    
       LDA    ($FA),Y 
       STA    $F9     
       LDA    SWCHB   
       AND    #$08    
       BNE    LF14C   
       LDA    #$0F    
       AND    $F9     
       BPL    LF14E   
LF14C: LDA    $F9     
LF14E: BIT    $9F     
       BVC    LF156   
       STA    COLUP0  
       STA    COLUP1  
LF156: STA    WSYNC   
       ROL            
       ROL            
       ROL            
       STA    REFP1   
       LDY    #$FF    
       JMP    LF0D1   
LF162: LDX    #$00    
       STX    $EE     
       STX    $EF     
       LDA    #$EE    
LF16A: STA    SWCHA   
       LDY    #$09    
LF16F: STA    WSYNC   
       DEY            
       BNE    LF16F   
       INX            
       LDY    INPT0   
       BMI    LF17B   
       STX    $EE     
LF17B: LDY    INPT2   
       BMI    LF181   
       STX    $EF     
LF181: INX            
       LDY    INPT1   
       BMI    LF188   
       STX    $EE     
LF188: STA    WSYNC   
       LDY    INPT3   
       BMI    LF190   
       STX    $EF     
LF190: INX            
       LDY    INPT4   
       BMI    LF197   
       STX    $EE     
LF197: LDY    INPT5   
       BMI    LF19D   
       STX    $EF     
LF19D: SEC            
       ROL            
       BCS    LF16A   
       RTS            

LF1A2: LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
LF1AD: LDA    INTIM   
       BNE    LF1AD   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       RTS            


START:
       SEI            
       CLD            
       LDX    #$00    
       STX    $9F     
       STX    $F1     
       STX    $A2     
       STX    $A0     
       INX            
       STX    $F0     
       BNE    LF1D8   
LF1CD: JSR    LF1A2   
       JSR    LF29D   
LF1D3: JSR    LF000   
       BCC    LF1CD   
LF1D8: LDX    #$FF    
       TXS            
       LDX    $A0     
       LDA    LF5A1,X 
       STA    $F2     
       ROR            
       ROR            
       STA    $F7     
       LDY    #$05    
       LDX    #$1E    
LF1EA: LDA    #$06    
       STA    $F9     
LF1EE: STX    $FA     
       LDA    LF554,Y 
       BIT    $F2     
       BVC    LF20D   
       CPY    #$04    
       BNE    LF1FF   
       LDA    #$0F    
       BNE    LF205   
LF1FF: CPY    #$05    
       BNE    LF205   
       LDA    #$FF    
LF205: LDX    $F9     
       CPX    #$05    
       BCC    LF20D   
       LDA    #$FF    
LF20D: LDX    $FA     
       STA    $7F,X   
       DEX            
       DEC    $F9     
       BNE    LF1EE   
       DEY            
       BNE    LF1EA   
       LDX    #$2A    
LF21B: STY    $43,X   
       DEX            
       BNE    LF21B   
       LDX    #$11    
LF222: STY    $DE,X   
       DEX            
       BNE    LF222   
       LDY    #$04    
       LDA    $A0     
       AND    #$04    
       TAX            
LF22E: LDA    LF55A,X 
       STA.wy $00F2,Y 
       INX            
       DEY            
       BNE    LF22E   
       LDX    #$1E    
       STX    $E0     
       STX    $E1     
       LDA    $9F     
       BMI    LF245   
       JMP    LF1D3   
LF245: LDA    #$FF    
       STA    SWACNT  
LF24A: STA    $C0,X   
       DEX            
       BNE    LF24A   
       STX    $F0     
       STX    $F1     
       LDA    #$02    
       STA    $EA     
LF257: LDY    #$0E    
       BIT    $F2     
       BVC    LF25F   
       LDY    #$07    
LF25F: STY    $DF     
       JSR    LF000   
       JSR    LF1A2   
       LDX    #$05    
LF269: LSR    $F8     
       ROL            
       EOR    $F8     
       LSR            
       LDA    $F8     
       BCS    LF277   
       ORA    #$40    
       STA    $F8     
LF277: DEX            
       BNE    LF269   
       STA    $FD     
       LDA    #$1F    
       BIT    $F2     
       BVC    LF284   
       LDA    #$0F    
LF284: AND    $FD     
       LDY    $DF     
       TAX            
       CPX    $F4     
       BCS    LF25F   
       LDA    $C1,X   
       BPL    LF25F   
       STY    $C1,X   
       DEY            
       BPL    LF25F   
       DEC    $EA     
       BNE    LF257   
       JMP    LF1D3   
LF29D: INC    $9E     
       LDA    SWCHB   
       ROR            
       BCS    LF2B0   
       LDA    #$0F    
       STA    $A2     
       LDX    #$FF    
       STX    $9F     
       JMP    LF1D8   
LF2B0: LDA    $A1     
       BEQ    LF2B6   
       INC    $A1     
LF2B6: LDA    $9E     
       AND    #$7F    
       CMP    #$7F    
       BNE    LF2C6   
       LDA    #$00    
       INC    $EA     
       BNE    LF2C6   
       STA    $9F     
LF2C6: STA    $F8     
       LDA    SWCHB   
       EOR    #$FF    
       AND    #$02    
       BNE    LF2D5   
       STA    $A1     
       BEQ    LF307   
LF2D5: BIT    $A1     
       BMI    LF307   
       LDA    #$C0    
       STA    $A1     
       INC    $A0     
       LDX    $A0     
       SED            
       LDA    #$00    
       CLC            
LF2E5: ADC    #$01    
       DEX            
       BNE    LF2E5   
       STA    $F0     
       STX    $F1     
       STX    $A2     
       STX    $9F     
       LDA    $A0     
       CMP    #$08    
       BCC    LF2FC   
       STX    $F0     
       STX    $A0     
LF2FC: CLC            
       LDA    $F0     
       ADC    #$01    
       STA    $F0     
       CLD            
       JMP    LF1D8   
LF307: LDA    $9F     
       BPL    LF371   
       LDX    $DF     
       LDY    $E5     
       BNE    LF319   
       LDA    $EE,X   
       BNE    LF365   
       STA    $E2     
       BEQ    LF371   
LF319: INC    $E5     
       LDY    #$01    
LF31D: STA    $F9     
       LDX    $E0,Y   
       LDA    $C1,X   
       BIT    $F7     
       BPL    LF32B   
       CMP    #$01    
       BEQ    LF34A   
LF32B: DEY            
       BPL    LF31D   
       CMP    $F9     
       BEQ    LF34A   
       LDX    #$17    
       STX    AUDV0   
       STX    AUDC0   
       LDA    $E5     
       BNE    LF33F   
       JMP    LF3EF   
LF33F: AND    #$80    
       BEQ    LF345   
       LDX    #$1F    
LF345: STX    AUDF0   
       JMP    LF371   
LF34A: LDA    #$0C    
       STA    AUDC0   
       LDX    #$08    
       STX    AUDV0   
       LDA    $E5     
       AND    #$7F    
       BNE    LF35B   
       JMP    LF40B   
LF35B: AND    #$10    
       BEQ    LF361   
       LDX    #$04    
LF361: STX    AUDF0   
       BNE    LF371   
LF365: STA    $EA     
       LDY    $E2     
       BEQ    LF36D   
       BNE    LF371   
LF36D: LDY    $E5     
       BEQ    LF374   
LF371: JMP    LF485   
LF374: INC    $E2     
       CMP    #$0C    
       BEQ    LF3A3   
       CMP    #$0A    
       BNE    LF382   
       STY    $F0,X   
       BEQ    LF3A3   
LF382: CMP    #$0B    
       BNE    LF388   
       STY    $EE,X   
LF388: LDA    $F0,X   
       LDY    $ED     
       BEQ    LF392   
       LDA    #$00    
       STA    $ED     
LF392: ASL            
       ASL            
       ASL            
       ASL            
       EOR    $EE,X   
       CMP    $F5     
       BCC    LF39E   
       AND    #$0F    
LF39E: STA    $F0,X   
       JMP    LF371   
LF3A3: LDA    #$01    
       STA    $ED     
       LDA    $F0,X   
       BNE    LF3AD   
       BEQ    LF371   
LF3AD: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $F0,X   
       AND    #$0F    
       INY            
       DEY            
       BEQ    LF3C0   
       CLC            
LF3BB: ADC    #$0A    
       DEY            
       BNE    LF3BB   
LF3C0: LDX    $E3     
       STA    $E0,X   
       DEC    $E0,X   
       TAY            
       DEY            
       LDA.wy $00C1,Y 
       CMP    #$FF    
       BNE    LF3D5   
       LDA    #$1E    
       STA    $E0,X   
       BNE    LF371   
LF3D5: LDA    $E0     
       CMP    $E1     
       BNE    LF3E1   
       LDA    #$1E    
       STA    $E1     
       BNE    LF371   
LF3E1: CPX    #$01    
       BEQ    LF3EA   
       INX            
       STX    $E3     
       BNE    LF371   
LF3EA: INC    $E5     
       JMP    LF485   
LF3EF: LDX    $F2     
       BPL    LF400   
       LDA    $EC     
       SED            
       CLC            
       ADC    #$01    
       CLD            
       STA    $EC     
       LDA    #$00    
       BEQ    LF406   
LF400: LDX    $DF     
       BNE    LF406   
       LDA    #$01    
LF406: STA    $DF     
       JMP    LF46D   
LF40B: LDX    $DF     
       LDA    $EB,X   
       SED            
       CLC            
       LDX    $DF     
       BNE    LF41E   
       BIT    SWCHB   
       BVS    LF425   
       ADC    #$01    
       BNE    LF425   
LF41E: BIT    SWCHB   
       BMI    LF425   
       ADC    #$01    
LF425: ADC    #$01    
       STA    $EB,X   
       CLD            
       DEC    $F3     
       BNE    LF432   
       LDA    #$0F    
       STA    $9F     
LF432: LDY    #$00    
       STY    $FA     
       INY            
       STY    $FB     
LF439: LDY    $FB     
       LDA    #$01    
       STA    $FC     
       LDX    $E0,Y   
       LDA    #$FF    
       STA    $C1,X   
       INX            
       LDY    #$00    
LF448: CLC            
       ADC    #$01    
       CMP    $F6     
       BNE    LF452   
       INY            
       LDA    #$00    
LF452: DEX            
       BNE    LF448   
       ASL            
       TAX            
       INX            
LF458: LDA    LF5A9,X 
       STA    $F9     
       LDA    LF5B3,X 
       EOR    ($F9),Y 
       STA    ($F9),Y 
       DEX            
       DEC    $FC     
       BPL    LF458   
       DEC    $FB     
       BPL    LF439   
LF46D: LDA    #$00    
       STA    $E5     
       STA    $E3     
       STA    $E2     
       STA    AUDV0   
       LDA    $EB     
       STA    $F0     
       LDA    $EC     
       STA    $F1     
       LDA    #$1E    
       STA    $E0     
       STA    $E1     
LF485: LDA    $9E     
       AND    #$3F    
       BNE    LF48D   
       INC    $E4     
LF48D: LDX    $E4     
       DEX            
       CPX    $F6     
       BCC    LF496   
       LDX    #$00    
LF496: INX            
       STX    $E4     
       LDY    #$06    
       BIT    $9F     
       BVC    LF4AF   
LF49F: LDA    $C0,X   
       BPL    LF4AF   
       CLC            
       TXA            
       ADC    $F6     
       TAX            
       DEY            
       BNE    LF49F   
       INC    $E4     
       BNE    LF48D   
LF4AF: LDX    $E4     
       LDY    #$00    
       LDA    LF59B,X 
       STA    $F9     
       LDX    #$06    
LF4BA: LDA    $F9     
       STA    $A2,X   
       LDA    #$F7    
       STA.wy $00AA,Y 
       STA.wy $00B6,Y 
       INY            
       INY            
       DEX            
       BNE    LF4BA   
       LDA    $E4     
       STA    $F9     
LF4CF: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       BNE    LF4D8   
       LDY    #$0A    
LF4D8: LDA    #$0D    
       CLC            
LF4DB: ADC    #$15    
       DEY            
       BNE    LF4DB   
       STA    $A9,X   
       LDA    $F9     
       AND    #$0F    
       TAY            
       LDA    #$F8    
LF4E9: CLC            
       ADC    #$15    
       DEY            
       BPL    LF4E9   
       STA    $B5,X   
       CLC            
       SED            
       LDA    $F9     
       ADC    $F6     
       CLD            
       STA    $F9     
       INX            
       INX            
       CMP    $F5     
       BCC    LF4CF   
       LDX    #$00    
       LDA    $9E     
       AND    #$20    
       BEQ    LF509   
       INX            
LF509: LDY    $E0,X   
       STY    $F9     
       CPY    #$1E    
       BEQ    LF554   
       INY            
       TYA            
       LDY    #$FF    
       LDX    #$00    
LF517: INY            
       CPY    $F6     
       BNE    LF51F   
       INX            
       LDY    #$00    
LF51F: SEC            
       SBC    #$01    
       BNE    LF517   
       LDA    LF59C,Y 
       LDY    $F9     
       STA    $A3,X   
       TXA            
       ASL            
       TAX            
       LDA.wy $00C1,Y 
       TAY            
       BIT    $F7     
       BPL    LF53C   
       CMP    #$01    
       BNE    LF53C   
       LDY    #$0F    
LF53C: LDA    #$F5    
       STA    $AA,X   
       STA    $B6,X   
       LDA    #$A8    
LF544: CLC            
       ADC    #$15    
       BCC    LF54D   
       INC    $AA,X   
       INC    $B6,X   
LF54D: DEY            
       BPL    LF544   
       STA    $A9,X   
       STA    $B5,X   
LF554: RTS            

LF555: .byte $4F,$82,$10,$08,$FC
LF55A: .byte $04,$17,$10,$08,$05,$31,$1E,$0F
LF562: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF594: .byte $27,$C9,$92,$42,$07,$0F,$08
LF59B: .byte $00
LF59C: .byte $53,$C4,$26,$97,$F9
LF5A1: .byte $40,$C0,$41,$C1,$00,$80,$01,$81
LF5A9: .byte $86,$30,$86,$8C,$8C,$80,$80,$92,$92,$98
LF5B3: .byte $7C,$00,$01,$0F,$E0,$30,$80,$F0,$07,$03,$04,$0A,$09,$09,$01,$01
       .byte $23,$17,$0F,$0F,$0D,$0D,$1F,$0F,$0D,$0D,$0F,$17,$23,$01,$49,$04
       .byte $22,$71,$79,$ED,$ED,$7F,$3F,$0F,$1F,$3B,$7B,$77,$77,$6F,$6F,$3E
       .byte $1E,$0E,$0C,$19,$0C,$0C,$0F,$0C,$0C,$0C,$1C,$3C,$3C,$7C,$7C,$FC
       .byte $F8,$A8,$A8,$28,$28,$28,$28,$28,$C8,$01,$03,$07,$07,$07,$07,$00
       .byte $3F,$08,$0A,$08,$08,$05,$05,$05,$05,$02,$02,$03,$01,$A9,$80,$80
       .byte $84,$84,$8F,$8F,$81,$81,$F9,$F9,$89,$89,$89,$89,$F9,$F9,$89,$89
       .byte $8B,$8B,$19,$00,$32,$62,$F1,$E1,$73,$73,$1F,$1F,$07,$07,$6F,$37
       .byte $03,$01,$02,$0C,$04,$00,$00,$89,$20,$10,$08,$04,$02,$01,$0F,$0F
       .byte $0C,$0C,$0C,$0C,$0C,$0C,$0F,$0D,$0D,$0F,$06,$00,$D9,$00,$0F,$0F
       .byte $0F,$0D,$01,$02,$02,$04,$04,$04,$04,$08,$08,$10,$10,$1F,$00,$01
       .byte $01,$19,$00,$00,$00,$00,$03,$03,$07,$07,$0D,$1F,$2A,$6A,$3F,$1F
       .byte $0F,$03,$00,$00,$00,$00,$39,$06,$06,$0E,$0E,$1E,$1E,$3E,$3E,$7E
       .byte $7E,$FE,$FE,$02,$02,$FF,$7F,$3F,$1F,$1F,$1F,$79,$00,$90,$60,$60
       .byte $20,$20,$22,$21,$3E,$3E,$3E,$3E,$3E,$3E,$14,$14,$14,$14,$14,$14
       .byte $99,$04,$08,$90,$B0,$90,$F8,$0C,$06,$02,$02,$3F,$2D,$FD,$FD,$07
       .byte $07,$03,$03,$02,$03,$B9,$00,$1F,$1F,$10,$10,$10,$13,$39,$3F,$28
       .byte $2B,$78,$7B,$60,$7F,$42,$7E,$3B,$30,$30,$D9,$54,$54,$3C,$38,$28
       .byte $28,$2A,$3A,$3F,$3F,$3F,$2F,$2C,$2D,$3D,$3D,$3D,$3D,$3D,$3D,$F9
       .byte $02,$02,$02,$02,$02,$03,$01,$02,$03,$03,$01,$07,$05,$05,$01,$07
       .byte $07,$07,$05,$1D,$F9,$88,$88,$A8,$F8,$00,$1C,$08,$08,$1C,$00,$10
       .byte $10,$10,$1E,$00,$0F,$05,$05,$0F,$00,$18,$18,$3C,$7E,$66,$66,$66
       .byte $66,$66,$66,$66,$66,$66,$66,$66,$66,$66,$66,$7E,$3C,$18,$98,$18
       .byte $38,$38,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
       .byte $18,$3C,$3C,$98,$1C,$3E,$66,$46,$06,$06,$06,$0C,$0C,$18,$18,$38
       .byte $30,$30,$30,$60,$60,$60,$7E,$7E,$98,$18,$3C,$66,$66,$06,$06,$0C
       .byte $0C,$38,$38,$18,$0C,$06,$06,$06,$06,$66,$7E,$3C,$18,$98,$0E,$0E
       .byte $1E,$1E,$36,$36,$66,$66,$66,$66,$7E,$7E,$06,$06,$06,$06,$06,$06
       .byte $06,$06,$00,$7E,$7E,$60,$60,$60,$60,$60,$60,$7C,$7E,$0E,$06,$06
       .byte $06,$06,$66,$66,$7E,$3C,$18,$00,$18,$3C,$66,$66,$60,$60,$60,$60
       .byte $78,$7C,$66,$66,$66,$66,$66,$66,$66,$7E,$3C,$18,$00,$7E,$7E,$06
       .byte $06,$06,$0C,$0C,$0C,$18,$18,$18,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$00,$18,$3C,$7E,$66,$66,$66,$24,$24,$18,$18,$24,$24,$66,$66
       .byte $66,$66,$66,$7E,$3C,$18,$00,$18,$3C,$7E,$66,$66,$66,$66,$66,$66
       .byte $66,$3E,$1E,$06,$06,$06,$06,$66,$66,$3C,$18,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $98,$EA,$EA,$EA,$EA,$EA,$EA,$BC,$F1,$BC,$F1,$BC,$F1
