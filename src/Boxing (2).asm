; Disassembly of roms/Boxing (2).bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Boxing (2).bin
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
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
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
HMOVE   =  $2A
HMCLR   =  $2B
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       INC    $DD     
       JSR    LF3C6   
       JMP    LF16F   
LF014: TAY            
       LDA    ($A4),Y 
       STA    GRP0    
       LDA    ($A6),Y 
LF01B: STA    HMP0    
       SEC            
       TAY            
       TXA            
       SBC    $C0     
       CMP    #$10    
       STY    NUSIZ0  
       STA    HMOVE   
       BEQ    LF05C   
       NOP            
LF02B: BCS    LF07F   
       TAY            
       LDA    ($A8),Y 
       STA    GRP1    
       LDA    ($AA),Y 
LF034: STA    NUSIZ1  
       STA    HMP1    
       SEC            
LF039: TXA            
       INX            
       SBC    $BF     
       CMP    #$10    
       BCC    LF014   
       BNE    LF06B   
       LDY    $85     
       INC    $85     
       LDA.wy $00C2,Y 
       STA    $BF     
       LDA.wy $00CA,Y 
       STA    $A4     
       STA    $A6     
       TXA            
       SBC    $C0     
       CMP    #$10    
       STA    HMOVE   
       BNE    LF02B   
LF05C: PLA            
       STA    $C0     
       PLA            
       STA    $A8     
       STA    $AA     
       AND    #$0F    
       STA.w  $001C   
       BCS    LF039   
LF06B: LDA    #$00    
       STA    GRP0    
       STA    GRP0    
       NOP            
       BPL    LF01B   
LF074: LDX    #$00    
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    PF1     
LF07F: LDA    #$00    
       CPX    #$8C    
       STA    GRP1    
       STA.w  $000F   
       BCC    LF034   
       TAX            
       LDA    #$45    
       LDY    #$2C    
       JSR    LF364   
       JSR    LF633   
       STX    PF1     
       STX    COLUPF  
       STX    VDELP0  
       STX    REFP0   
       JSR    LF3B3   
       JSR    LF383   
       LDA    #$22    
       STA    TIM64T  
       LDA    $D7     
       BEQ    LF0D7   
       DEC    $94     
       BPL    LF0D7   
       LDA    #$3B    
       STA    $94     
       LDA    $91     
       SEC            
       SED            
       SBC    #$01    
       CLD            
       BCS    LF0C5   
       LDA    $90     
       SBC    #$0F    
       STA    $90     
       LDA    #$59    
LF0C5: STA    $91     
       TAY            
       BNE    LF0D7   
       LDY    $90     
       CPY    #$0B    
       BNE    LF0D7   
       STA    $D7     
       LDA    #$40    
       JSR    LF3E9   
LF0D7: LDA    SWCHA   
       STA    $8E     
       LDY    $D9     
       BEQ    LF0EF   
       LDA    $92     
       SED            
       SBC    #$04    
       CLD            
       CMP    $93     
       LDA    $90     
       EOR    #$14    
       JSR    LF6FC   
LF0EF: ASL            
       ASL            
       ASL            
       ASL            
       STA    $8F     
       LDX    #$04    
LF0F7: LDY    INTIM   
       BNE    LF0F7   
       DEY            
       STA    WSYNC   
       STY    VSYNC   
       STY    VBLANK  
       STA    RESBL   
       STA    HMCLR   
       STY    ENABL   
       LDA    #$31    
       STA    CTRLPF  
       INC    $80     
       BNE    LF117   
       INC    $96     
       BNE    LF117   
       STY    $97     
LF117: LDA    SWCHB   
       STA    $DA     
       AND    #$08    
       BNE    LF122   
       LDY    #$0F    
LF122: TYA            
       LDY    $97     
       BPL    LF129   
       AND    #$F7    
LF129: STA    $AD     
LF12B: LDA    $96     
       AND    $97     
       EOR    LF54C,X 
       AND    $AD     
       STA    $80,X   
       STA    NUSIZ1,X
       DEX            
       BNE    LF12B   
       STX    COLUPF  
       STX    AUDC1   
       LDA    #$28    
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       STX    VSYNC   
       STA    TIM64T  
       LDA    $95     
       BEQ    LF158   
       DEC    $DC     
       LDX    $DC     
       BNE    LF158   
       STX    $95     
LF158: STA    AUDC0   
       TXA            
       LSR            
       STA    AUDV0   
       LDA    $DA     
       LSR            
       BCS    LF168   
       JSR    LF3C6   
       STA    $D7     
LF168: LSR            
       BCS    LF18C   
       DEC    $D8     
       BPL    LF18E   
LF16F: LDY    $D9     
       INY            
       TYA            
       AND    #$01    
       STA    $D9     
       STA    $97     
       STA    $96     
       STY    $92     
       LSR            
       STA    $97     
       LDA    #$AA    
       STA    $93     
       STA    $90     
       STA    $91     
       STX    $D7     
       LDX    #$1D    
LF18C: STX    $D8     
LF18E: LDX    #$01    
LF190: TXA            
       ASL            
       ASL            
       TAY            
       ASL    $DA     
       LDA    $D7     
       BEQ    LF1B6   
       TXA            
       EOR    $D2     
       BNE    LF1A3   
       LDA    $D1     
       BNE    LF1B6   
LF1A3: LDA.wy $00B7,Y 
       ORA.wy $00B9,Y 
       AND    #$C0    
       BNE    LF1B6   
       LDY    $8E,X   
       BCC    LF1B8   
       LDA    $80     
       LSR            
       BCS    LF1B8   
LF1B6: LDY    #$F0    
LF1B8: TYA            
       LDY    $A0,X   
       STA    $AC     
       JSR    LF3B9   
       JSR    LF49A   
       JSR    LF3F3   
       STY    $A0,X   
       STX    $D4     
       CPY    $A1     
       BCC    LF1D0   
       INC    $D4     
LF1D0: LDY    $A2,X   
       JSR    LF3B9   
       CPY    #$03    
       BCS    LF1DB   
       LDY    #$03    
LF1DB: CPY    #$58    
       BCC    LF1E1   
       LDY    #$57    
LF1E1: STY    $A2,X   
       JSR    LF3F3   
       STY    $A2,X   
       DEX            
       BPL    LF190   
       JSR    LF48C   
       CMP    #$1A    
       LDY    #$38    
       BCS    LF20B   
       CMP    #$12    
       BCS    LF1FA   
       LDY    #$28    
LF1FA: JSR    LF47E   
       CMP    #$07    
       BCC    LF210   
       CMP    #$1C    
       BCC    LF20B   
       CMP    #$2F    
       BCC    LF210   
       LDY    #$38    
LF20B: TYA            
       CLC            
       ADC    #$10    
       TAY            
LF210: STY    $AE     
       LDX    #$07    
       NOP            
LF215: TXA            
       LSR            
       PHP            
       LSR            
       TAY            
       PLP            
       BCS    LF27A   
       LDA    $A2     
       LSR    $AF,X   
       BCS    LF268   
       SBC    $A3     
       EOR    LF54E,X 
       ORA    $E3,X   
       ASL            
       LDA    #$08    
       BCC    LF23B   
       LDA    $D1     
       BEQ    LF239   
       LDA    #$F8    
       CPY    $D2     
       BNE    LF23B   
LF239: LDA    #$FE    
LF23B: CLC            
       ADC    $B7,X   
       BMI    LF246   
       CMP    $98,X   
       BCC    LF254   
       BEQ    LF254   
LF246: LDA    $B7,X   
       CMP    $98,X   
       BEQ    LF25F   
       LSR            
       LDA    $B7,X   
       SBC    #$01    
       CLC            
       BMI    LF261   
LF254: STA    $B7,X   
       BCC    LF268   
       LDA    $EB,X   
       BPL    LF261   
       JSR    LF4A9   
LF25F: LDA    $E3,X   
LF261: STA    $EB,X   
       JSR    LF4F2   
       STA    $E3,X   
LF268: LDA    $98,X   
       CMP    $AE     
       BEQ    LF27A   
       BCS    LF272   
       ADC    #$11    
LF272: ADC    #$F7    
       CMP    $B7,X   
       BEQ    LF27A   
       STA    $98,X   
LF27A: LDA.wy $00A2,Y 
       CLC            
       ADC    LF558,X 
       STA    $C1,X   
       LDA    $B7,X   
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF53C,Y 
       CLC            
       ADC    LF551,X 
       STA    $C9,X   
       DEX            
       BPL    LF215   
       LDA    $D4     
       ASL            
       ASL            
       TAX            
       LDA    $C1,X   
       STA    $BF     
       LDA    $C9,X   
       STA    $A4     
       STA    $A6     
       STX    $85     
       TXA            
       EOR    #$07    
       TAX            
       LDY    #$02    
       LDA    #$00    
LF2AE: PHA            
       LDA    $C1,X   
       PHA            
       DEX            
       LDA    $C9,X   
       DEY            
       BPL    LF2AE   
       STA    $A8     
       STA    $AA     
       LDA    $C1,X   
       STA    $C0     
       LDA    $DB     
       BEQ    LF2C6   
       DEC    $DB     
LF2C6: LDA    $D1     
       BEQ    LF2FE   
       LDA    $D2     
       TAX            
       ASL            
       ASL            
       TAY            
       LDA    #$08    
       DEC    $D1     
       BNE    LF2D8   
       LDA    #$00    
LF2D8: STA.wy $00B8,Y 
       LDA    #$29    
       STA.wy $00B7,Y 
       STA.wy $00B9,Y 
       LDY    $D3     
       LDA    LF651,Y 
       CLC            
       ADC    $A2,X   
       STA    $A2,X   
       LDA    $D4     
       CMP    #$01    
       BCC    LF2F5   
       LDA    #$FF    
LF2F5: EOR    LF652,Y 
       ADC    $A0,X   
       TAY            
       JSR    LF49A   
LF2FE: LDX    INTIM   
       BNE    LF2FE   
       STX    WSYNC   
       STX    VBLANK  
       STA    HMCLR   
       LDX    #$04    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    #$60    
       LDA    $81     
LF313: STY    HMP0    
       STY    HMP1    
       STA    $D5     
       LDY    #$02    
LF31B: DEX            
       BMI    LF34B   
       JSR    LF62E   
       LDA    $90,X   
       AND    #$0F    
       STA.wy $0086,Y 
       LDA    $90,X   
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF336   
       CPX    #$02    
       BCC    LF336   
       LDA    #$0A    
LF336: STA.wy $008A,Y 
       JSR    LF62E   
       DEY            
       DEY            
       BPL    LF31B   
       JSR    LF383   
       LDY    #$A0    
       LDA    $84     
       EOR    #$06    
       BCS    LF313   
LF34B: JSR    LF633   
       LDX    $D4     
       LDA    $A1     
       LDY    $A0     
       JSR    LF364   
       STY    REFP0   
       LDY    #$0F    
       STY    AUDF1   
       STY    AUDV1   
       STY    VDELP0  
       JMP    LF074   
LF364: JSR    LF62E   
       PHA            
       TYA            
       LDY    #$3F    
       STY    PF1     
       LDY    #$FF    
       STY    PF2     
       JSR    LF62E   
       LDY    $81     
       JSR    LF5FF   
       TXA            
       EOR    #$01    
       TAX            
       LDY    $82     
       PLA            
       JMP    LF5FF   
LF383: SEC            
       LDA    #$77    
LF386: STA    WSYNC   
       SBC    #$11    
       TAY            
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    $D5     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($86),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STX    $AC     
       TAX            
       LDA    ($88),Y 
       STX    GRP0    
       STA    GRP1    
       LDA    $82     
       STA    COLUP0  
       STA    COLUP1  
       LDX    $AC     
       TYA            
       BNE    LF386   
       STA    GRP0    
       STA    GRP1    
LF3B3: INY            
       STY    NUSIZ0  
       STY    NUSIZ1  
       RTS            

LF3B9: ASL    $AC     
       STY    $AD     
       BCS    LF3C0   
       INY            
LF3C0: ASL    $AC     
       BCS    LF3C5   
       DEY            
LF3C5: RTS            

LF3C6: LDX    #$14    
       LDY    #$09    
       STY    AUDF0   
LF3CC: LDA    #$00    
       STA.wy $0091,Y 
       STA    $96,X   
       TXA            
       STA    $9E,X   
       LDA    #$F4    
       STA    $85,X   
       LDA    LF659,Y 
       STA    $9F,X   
       DEX            
       DEX            
       DEY            
       BPL    LF3CC   
       LDA    #$2B    
       STA    $90     
       RTS            

LF3E9: STA    $DC     
       LSR            
       EOR    #$0C    
       AND    #$0C    
       STA    $95     
       RTS            

LF3F3: JSR    LF47E   
       BCS    LF3FF   
       JSR    LF48C   
       BCS    LF3FF   
       LDY    $AD     
LF3FF: RTS            

LF400: .byte $3C,$7E,$7E,$3C,$0C,$7C,$3C,$18,$3C,$3C,$00,$00,$C6,$AD,$50,$BA
       .byte $E9,$66,$18,$60,$46,$0C,$46,$66,$18,$66,$46,$00,$18,$CC,$A9,$58
       .byte $8A,$AB,$66,$18,$60,$06,$7E,$06,$66,$18,$66,$06,$00,$18,$D8,$E9
       .byte $5C,$BA,$AF,$66,$18,$3C,$0C,$4C,$7C,$7C,$0C,$3C,$3E,$00,$00,$F0
       .byte $A9,$56,$A2,$AD,$66,$18,$06,$06,$2C,$60,$60,$06,$66,$66,$00,$18
       .byte $D8,$ED,$53,$3A,$E9,$66,$78,$46,$46,$1C,$60,$62,$42,$66,$66,$00
       .byte $18,$CC,$41,$11,$80,$00,$3C,$38,$7C,$3C,$0C,$7E,$3C,$7E,$3C,$3C
       .byte $00,$00,$C6,$0F,$F0,$FE,$00
LF477: JSR    LF48C   
       CMP    #$1D    
       BCS    LF48B   
LF47E: SEC            
       LDA    $A2     
       SBC    $A3     
       BCS    LF489   
       EOR    #$FF    
       ADC    #$01    
LF489: CMP    #$30    
LF48B: RTS            

LF48C: SEC            
       LDA    $A0     
       SBC    $A1     
       BCS    LF497   
       EOR    #$FF    
       ADC    #$01    
LF497: CMP    #$0E    
       RTS            

LF49A: CPY    #$1E    
       BCS    LF4A0   
       LDY    #$1E    
LF4A0: CPY    #$6E    
       BCC    LF4A6   
       LDY    #$6D    
LF4A6: STY    $A0,X   
       RTS            

LF4A9: JSR    LF477   
       BCS    LF4F1   
       ADC    #$F5    
       CMP    #$12    
       LDA    $D1     
       BNE    LF4F1   
       LDA    $D7     
       BEQ    LF4F1   
       LDA    #$03    
       STA    $AF,X   
       LDA    #$0F    
       STA    AUDC1   
       BCS    LF4F1   
       STA    $D1     
       STX    $D3     
       LDA    #$39    
       STA    $DB     
       CMP    $98,X   
       LDA.wy $0092,Y 
       SED            
       ADC    #$01    
       CLD            
       BCC    LF4D9   
       LDA    #$C0    
LF4D9: STA.wy $0092,Y 
       LDA    #$0F    
       BCC    LF4E6   
       LDA    #$00    
       STA    $D7     
       LDA    #$40    
LF4E6: JSR    LF3E9   
       TYA            
       EOR    #$01    
       STA    $D2     
LF4EE: LDA.wy $000C,Y 
LF4F1: RTS            

LF4F2: LDA    $D7     
       BEQ    LF539   
       TYA            
       AND    $D9     
       BEQ    LF4EE   
       LDA    $DD     
       AND    #$1F    
       BEQ    LF51D   
       LDA    $DB     
       BEQ    LF512   
       LDA    $D2     
       BNE    LF512   
       LDA    $A0     
       SEC            
       SBC    #$28    
       CMP    #$50    
       BCS    LF51D   
LF512: JSR    LF477   
       BCS    LF53A   
       ADC    #$F5    
       CMP    #$15    
       BCS    LF53A   
LF51D: LDA    $93     
       CMP    $92     
       LDA    $90     
       EOR    #$13    
       BIT    SWCHB   
       BPL    LF52C   
       ORA    #$24    
LF52C: BCC    LF530   
       ORA    #$0B    
LF530: AND    $DE     
       BNE    LF539   
       CLC            
       LDA    $EB,X   
       BMI    LF53A   
LF539: SEC            
LF53A: ROR            
       RTS            

LF53C: .byte $00,$10,$10,$10,$00,$00,$20,$20
LF544: .byte $30,$30,$0E,$00,$10,$00,$0D,$00
LF54C: .byte $0F,$0C
LF54E: .byte $00,$28,$D6
LF551: .byte $5F,$9F,$BF,$00,$5F,$9F,$BF
LF558: .byte $00,$11,$22,$00,$00,$11,$22,$00,$1C,$3E,$3B,$3F,$7F,$7F,$7F,$7B
       .byte $7B,$3B,$3B,$36,$36,$0F,$0F,$00,$0F,$1C,$1C,$3D,$3F,$3F,$3F,$3F
       .byte $3F,$3A,$3E,$F7,$FF,$0F,$0F,$00,$00,$78,$FC,$3C,$FE,$FF,$FF,$FF
       .byte $FF,$E3,$E3,$C3,$18,$0F,$0F,$00,$00,$70,$F8,$78,$1E,$3C,$7C,$7C
       .byte $6E,$6E,$9C,$1F,$3C,$0F,$0F,$0E,$1E,$7E,$FF,$FF,$FF,$7C,$7C,$7C
       .byte $FF,$FF,$FF,$7E,$1E,$0E,$0F,$0F,$7E,$FE,$7E,$FE,$FE,$78,$78,$78
       .byte $FE,$FE,$7E,$FE,$7E,$0F,$0F,$0F,$36,$36,$3B,$3B,$7B,$7B,$7F,$7F
       .byte $7F,$3F,$3B,$3E,$1C,$00,$00,$0F,$FF,$F7,$3E,$3A,$3F,$3F,$3F,$3F
       .byte $3F,$3D,$1C,$1C,$0F,$00,$00,$0F,$18,$C3,$E3,$E3,$FF,$FF,$FF,$FF
       .byte $FE,$3C,$FC,$78,$00,$00,$00,$0F,$3C,$1F,$9C,$6E,$6E,$7C,$7C,$3C
       .byte $1E,$3C,$FC,$78,$00,$00,$00
LF5FF: STY    COLUP0,X
       CLC            
       ADC    LF650,X 
       TAY            
       AND    #$0F    
       STA    $AD     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $AD     
       CMP    #$0F    
       BCC    LF61A   
       SBC    #$0F    
       INY            
LF61A: STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
LF627: DEY            
       BPL    LF627   
       STA    RESP0,X 
       STA    HMP0,X  
LF62E: STA    WSYNC   
       STA    HMOVE   
       RTS            

LF633: LDX    #$0A    
       LDA    $83     
       STA    COLUPF  
       LDY    #$00    
       STA    HMCLR   
LF63D: JSR    LF62E   
       LDA    #$30    
       STA    PF1     
       STY    PF2     
       LDA    LF544,X 
       STA    $84,X   
       DEX            
       DEX            
       BNE    LF63D   
       RTS            

LF650: .byte $13
LF651: .byte $02
LF652: .byte $01,$FE,$01,$02,$FF,$FE,$FF
LF659: .byte $77,$70,$F5,$F7,$F5,$F6,$E0,$00,$40,$05,$F5,$05,$05,$05,$05,$15
       .byte $05,$F5,$05,$A5,$00,$00,$E0,$40,$05,$F5,$05,$05,$05,$05,$05,$F5
       .byte $05,$A5,$00,$10,$00,$00,$E0,$70,$00,$60,$C5,$05,$05,$05,$05,$F5
       .byte $05,$F5,$A5,$C5,$00,$00,$70,$70,$00,$40,$45,$25,$C7,$07,$07,$07
       .byte $A7,$87,$A5,$B5,$00,$00,$00,$F0,$00,$00,$00,$50,$05,$05,$B5,$00
       .byte $00,$00,$10,$00,$00,$00,$D0,$F0,$00,$F0,$00,$40,$05,$05,$C5,$00
       .byte $10,$00,$10,$30,$00,$00,$60,$05,$15,$05,$F5,$05,$05,$05,$05,$15
       .byte $05,$C5,$00,$00,$00,$00,$F0,$00,$60,$05,$15,$05,$05,$05,$05,$05
       .byte $15,$05,$C5,$10,$00,$00,$40,$65,$15,$05,$15,$05,$05,$05,$05,$45
       .byte $A5,$00,$F0,$A0,$00,$00,$50,$65,$75,$77,$07,$07,$07,$47,$47,$87
       .byte $A5,$00,$90
LF6FC: BCC    LF700   
       LSR            
       NOP            
LF700: AND    $80     
       BNE    LF718   
       LDA    $DD     
       AND    #$3F    
       STA    $DF     
       LDA    $A2     
       STA    $E2     
       LDA    $A0     
       STA    $E1     
       LDA    $DE     
       AND    #$1F    
       STA    $E0     
LF718: LDA    $DD     
       ASL            
       EOR    $DD     
       ASL            
       ASL            
       ROL    $DE     
       ROL    $DD     
       LDA    $E1     
       CMP    #$46    
       BCS    LF72B   
       ADC    #$3A    
LF72B: SBC    #$2C    
       CLC            
       ADC    $E0     
       LDY    #$0F    
       CMP    $A1     
       BEQ    LF73C   
       LDY    #$07    
       BCS    LF73C   
       LDY    #$0B    
LF73C: LDA    $E2     
       SEC            
       SBC    #$20    
       CLC            
       ADC    $DF     
       CMP    #$C0    
       BCS    LF74F   
       CMP    $A3     
       BEQ    LF750   
       DEY            
       BCC    LF750   
LF74F: DEY            
LF750: TYA            
       LDY    $DB     
       CPY    #$10    
       BCC    LF75E   
       LDY    $D2     
       BNE    LF75C   
       TYA            
LF75C: EOR    #$03    
LF75E: RTS            

LF75F: .byte $00,$70,$00,$65,$05,$15,$05,$05,$05,$05,$F5,$05,$15,$05,$C0,$00
       .byte $00,$70,$65,$05,$15,$05,$05,$05,$05,$05,$15,$05,$C0,$00,$F0,$00
       .byte $00,$20,$F0,$00,$45,$45,$05,$05,$05,$05,$15,$05,$15,$65,$90,$00
       .byte $00,$90,$F0,$00,$65,$67,$47,$47,$07,$07,$07,$67,$95,$45,$B0,$00
       .byte $00,$00,$10,$00,$00,$00,$55,$05,$05,$B0,$00,$00,$00,$F0,$00,$00
       .byte $00,$30,$10,$00,$10,$00,$65,$05,$05,$A0,$00,$F0,$00,$F0,$D0,$00
       .byte $00,$45,$05,$F5,$05,$15,$05,$05,$05,$05,$F5,$05,$A0,$00,$90,$00
       .byte $00,$10,$00,$45,$05,$F5,$05,$05,$05,$05,$05,$F5,$05,$A0,$90,$00
       .byte $00,$75,$A5,$F5,$05,$F5,$05,$05,$05,$05,$C5,$C0,$00,$10,$E0,$00
       .byte $00,$55,$C5,$77,$A7,$07,$07,$07,$C7,$C7,$85,$C0,$00,$00,$F0,$00
       .byte $F0,$78,$D8,$A2,$FF,$9A,$E8,$8A,$95,$00,$E8,$D0,$FB,$E6,$DD,$20
       .byte $C6,$F3,$4C,$6F,$F1,$A8,$B1,$A4,$85,$1B,$B1,$A6,$85,$20,$38,$A8
       .byte $8A,$E5,$C0,$C9,$10,$84,$04,$85,$2A,$F0,$32,$EA,$B0,$52,$A8,$B1
       .byte $A8,$85,$1C,$B1,$AA,$85,$05,$85,$21,$38,$8A,$E8,$E5,$BF,$C9,$10
       .byte $90,$D3,$D0,$28,$A4,$85,$E6,$85,$B9,$C2,$00,$85,$BF,$B9,$CA,$00
       .byte $85,$A4,$85,$A6,$8A,$E5,$C0,$C9,$10,$85,$2A,$D0,$CF,$68,$85,$C0
       .byte $68,$85,$A8,$85,$AA,$29,$0F,$8D,$1C,$00,$B0,$CE,$A9,$00,$85,$1B
       .byte $85,$1B,$EA,$10,$A7,$A2,$00,$85,$2B,$85,$02,$85,$2A,$C8,$84,$0E
       .byte $A9,$00,$E0,$8C,$85,$1C,$8D,$0F,$00,$90,$AA,$AA,$A9,$45,$A0,$2C
       .byte $20,$64,$F3,$20,$33,$F6,$86,$0E,$86,$08,$86,$25,$86,$0B,$20,$B3
       .byte $F3,$20,$83,$F3,$A9,$22,$8D,$96,$02,$A5,$D7,$F0,$2B,$C6,$94,$10
       .byte $27,$A9,$3B,$85,$94,$A5,$91,$38,$F8,$E9,$01,$D8,$B0,$08,$A5,$90
       .byte $E9,$0F,$85,$90,$A9,$59,$85,$91,$A8,$D0,$0D,$A4,$90,$C0,$0B,$D0
       .byte $07,$85,$D7,$A9,$40,$20,$E9,$F3,$AD,$80,$02,$85,$8E,$A4,$D9,$F0
       .byte $0F,$A5,$92,$F8,$E9,$04,$D8,$C5,$93,$A5,$90,$49,$14,$20,$FC,$F6
       .byte $0A,$0A,$0A,$0A,$85,$8F,$A2,$04,$AC,$84,$02,$D0,$FB,$88,$85,$02
       .byte $84,$00,$84,$01,$85,$14,$85,$2B,$84,$1F,$A9,$31,$85,$0A,$E6,$80
       .byte $D0,$06,$E6,$96,$D0,$02,$84,$97,$AD,$82,$02,$85,$DA,$29,$08,$D0
       .byte $02,$A0,$0F,$98,$A4,$97,$10,$02,$29,$F7,$85,$AD,$A5,$96,$25,$97
       .byte $5D,$4C,$F5,$25,$AD,$95,$80,$95,$05,$CA,$D0,$F0,$86,$08,$86,$16
       .byte $A9,$28,$85,$24,$85,$02,$85,$2A,$86,$00,$8D,$96,$02,$A5,$95,$F0
       .byte $08,$C6,$DC,$A6,$DC,$D0,$02,$86,$95,$85,$15,$8A,$4A,$85,$19,$A5
       .byte $DA,$4A,$B0,$05,$20,$C6,$F3,$85,$D7,$4A,$B0,$21,$C6,$D8,$10,$1F
       .byte $A4,$D9,$C8,$98,$29,$01,$85,$D9,$85,$97,$85,$96,$84,$92,$4A,$85
       .byte $97,$A9,$AA,$85,$93,$85,$90,$85,$91,$86,$D7,$A2,$1D,$86,$D8,$A2
       .byte $01,$8A,$0A,$0A,$A8,$06,$DA,$A5,$D7,$F0,$1C,$8A,$45,$D2,$D0,$04
       .byte $A5,$D1,$D0,$13,$B9,$B7,$00,$19,$B9,$00,$29,$C0,$D0,$09,$B4,$8E
       .byte $90,$07,$A5,$80,$4A,$B0,$02,$A0,$F0,$98,$B4,$A0,$85,$AC,$20,$B9
       .byte $F3,$20,$9A,$F4,$20,$F3,$F3,$94,$A0,$86,$D4,$C4,$A1,$90,$02,$E6
       .byte $D4,$B4,$A2,$20,$B9,$F3,$C0,$03,$B0,$02,$A0,$03,$C0,$58,$90,$02
       .byte $A0,$57,$94,$A2,$20,$F3,$F3,$94,$A2,$CA,$10,$A5,$20,$8C,$F4,$C9
       .byte $1A,$A0,$38,$B0,$17,$C9,$12,$B0,$02,$A0,$28,$20,$7E,$F4,$C9,$07
       .byte $90,$0F,$C9,$1C,$90,$06,$C9,$2F,$90,$07,$A0,$38,$98,$18,$69,$10
       .byte $A8,$84,$AE,$A2,$07,$EA,$8A,$4A,$08,$4A,$A8,$28,$B0,$5D,$A5,$A2
       .byte $56,$AF,$B0,$45,$E5,$A3,$5D,$4E,$F5,$15,$E3,$0A,$A9,$08,$90,$0C
       .byte $A5,$D1,$F0,$06,$A9,$F8,$C4,$D2,$D0,$02,$A9,$FE,$18,$75,$B7,$30
       .byte $06,$D5,$98,$90,$10,$F0,$0E,$B5,$B7,$D5,$98,$F0,$13,$4A,$B5,$B7
       .byte $E9,$01,$18,$30,$0D,$95,$B7,$90,$10,$B5,$EB,$10,$05,$20,$A9,$F4
       .byte $B5,$E3,$95,$EB,$20,$F2,$F4,$95,$E3,$B5,$98,$C5,$AE,$F0,$0C,$B0
       .byte $02,$69,$11,$69,$F7,$D5,$B7,$F0,$02,$95,$98,$B9,$A2,$00,$18,$7D
       .byte $58,$F5,$95,$C1,$B5,$B7,$4A,$4A,$4A,$A8,$B9,$3C,$F5,$18,$7D,$51
       .byte $F5,$95,$C9,$CA,$10,$80,$A5,$D4,$0A,$0A,$AA,$B5,$C1,$85,$BF,$B5
       .byte $C9,$85,$A4,$85,$A6,$86,$85,$8A,$49,$07,$AA,$A0,$02,$A9,$00,$48
       .byte $B5,$C1,$48,$CA,$B5,$C9,$88,$10,$F6,$85,$A8,$85,$AA,$B5,$C1,$85
       .byte $C0,$A5,$DB,$F0,$02,$C6,$DB,$A5,$D1,$F0,$34,$A5,$D2,$AA,$0A,$0A
       .byte $A8,$A9,$08,$C6,$D1,$D0,$02,$A9,$00,$99,$B8,$00,$A9,$29,$99,$B7
       .byte $00,$99,$B9,$00,$A4,$D3,$B9,$51,$F6,$18,$75,$A2,$95,$A2,$A5,$D4
       .byte $C9,$01,$90,$02,$A9,$FF,$59,$52,$F6,$75,$A0,$A8,$20,$9A,$F4,$AE
       .byte $84,$02,$D0,$FB,$86,$02,$86,$01,$85,$2B,$A2,$04,$86,$04,$86,$05
       .byte $A0,$60,$A5,$81,$84,$20,$84,$21,$85,$D5,$A0,$02,$CA,$30,$2D,$20
       .byte $2E,$F6,$B5,$90,$29,$0F,$99,$86,$00,$B5,$90,$4A,$4A,$4A,$4A,$D0
       .byte $06,$E0,$02,$90,$02,$A9,$0A,$99,$8A,$00,$20,$2E,$F6,$88,$88,$10
       .byte $DB,$20,$83,$F3,$A0,$A0,$A5,$84,$49,$06,$B0,$C8,$20,$33,$F6,$A6
       .byte $D4,$A5,$A1,$A4,$A0,$20,$64,$F3,$84,$0B,$A0,$0F,$84,$18,$84,$1A
       .byte $84,$25,$4C,$74,$F0,$20,$2E,$F6,$48,$98,$A0,$3F,$84,$0E,$A0,$FF
       .byte $84,$0F,$20,$2E,$F6,$A4,$81,$20,$FF,$F5,$8A,$49,$01,$AA,$A4,$82
       .byte $68,$4C,$FF,$F5,$38,$A9,$77,$85,$02,$E9,$11,$A8,$B1,$8A,$85,$1B
       .byte $A5,$D5,$85,$06,$85,$07,$B1,$86,$85,$1C,$B1,$8C,$86,$AC,$AA,$B1
       .byte $88,$86,$1B,$85,$1C,$A5,$82,$85,$06,$85,$07,$A6,$AC,$98,$D0,$D7
       .byte $85,$1B,$85,$1C,$C8,$84,$04,$84,$05,$60,$06,$AC,$84,$AD,$B0,$01
       .byte $C8,$06,$AC,$B0,$01,$88,$60,$A2,$14,$A0,$09,$84,$17,$A9,$00,$99
       .byte $91,$00,$95,$96,$8A,$95,$9E,$A9,$F4,$95,$85,$B9,$59,$F6,$95,$9F
       .byte $CA,$CA,$88,$10,$E8,$A9,$2B,$85,$90,$60,$85,$DC,$4A,$49,$0C,$29
       .byte $0C,$85,$95,$60,$20,$7E,$F4,$B0,$07,$20,$8C,$F4,$B0,$02,$A4,$AD
       .byte $60,$3C,$7E,$7E,$3C,$0C,$7C,$3C,$18,$3C,$3C,$00,$00,$C6,$AD,$50
       .byte $BA,$E9,$66,$18,$60,$46,$0C,$46,$66,$18,$66,$46,$00,$18,$CC,$A9
       .byte $58,$8A,$AB,$66,$18,$60,$06,$7E,$06,$66,$18,$66,$06,$00,$18,$D8
       .byte $E9,$5C,$BA,$AF,$66,$18,$3C,$0C,$4C,$7C,$7C,$0C,$3C,$3E,$00,$00
       .byte $F0,$A9,$56,$A2,$AD,$66,$18,$06,$06,$2C,$60,$60,$06,$66,$66,$00
       .byte $18,$D8,$ED,$53,$3A,$E9,$66,$78,$46,$46,$1C,$60,$62,$42,$66,$66
       .byte $00,$18,$CC,$41,$11,$80,$00,$3C,$38,$7C,$3C,$0C,$7E,$3C,$7E,$3C
       .byte $3C,$00,$00,$C6,$0F,$F0,$FE,$00,$20,$8C,$F4,$C9,$1D,$B0,$0D,$38
       .byte $A5,$A2,$E5,$A3,$B0,$04,$49,$FF,$69,$01,$C9,$30,$60,$38,$A5,$A0
       .byte $E5,$A1,$B0,$04,$49,$FF,$69,$01,$C9,$0E,$60,$C0,$1E,$B0,$02,$A0
       .byte $1E,$C0,$6E,$90,$02,$A0,$6D,$94,$A0,$60,$20,$77,$F4,$B0,$43,$69
       .byte $F5,$C9,$12,$A5,$D1,$D0,$3B,$A5,$D7,$F0,$37,$A9,$03,$95,$AF,$A9
       .byte $0F,$85,$16,$B0,$2D,$85,$D1,$86,$D3,$A9,$39,$85,$DB,$D5,$98,$B9
       .byte $92,$00,$F8,$69,$01,$D8,$90,$02,$A9,$C0,$99,$92,$00,$A9,$0F,$90
       .byte $06,$A9,$00,$85,$D7,$A9,$40,$20,$E9,$F3,$98,$49,$01,$85,$D2,$B9
       .byte $0C,$00,$60,$A5,$D7,$F0,$43,$98,$25,$D9,$F0,$F3,$A5,$DD,$29,$1F
       .byte $F0,$1C,$A5,$DB,$F0,$0D,$A5,$D2,$D0,$09,$A5,$A0,$38,$E9,$28,$C9
       .byte $50,$B0,$0B,$20,$77,$F4,$B0,$23,$69,$F5,$C9,$15,$B0,$1D,$A5,$93
       .byte $C5,$92,$A5,$90,$49,$13,$2C,$82,$02,$10,$02,$09,$24,$90,$02,$09
       .byte $0B,$25,$DE,$D0,$05,$18,$B5,$EB,$30,$01,$38,$6A,$60,$00,$10,$10
       .byte $10,$00,$00,$20,$20,$30,$30,$0E,$00,$10,$00,$0D,$00,$0F,$0C,$00
       .byte $28,$D6,$5F,$9F,$BF,$00,$5F,$9F,$BF,$00,$11,$22,$00,$00,$11,$22
       .byte $00,$1C,$3E,$3B,$3F,$7F,$7F,$7F,$7B,$7B,$3B,$3B,$36,$36,$0F,$0F
       .byte $00,$0F,$1C,$1C,$3D,$3F,$3F,$3F,$3F,$3F,$3A,$3E,$F7,$FF,$0F,$0F
       .byte $00,$00,$78,$FC,$3C,$FE,$FF,$FF,$FF,$FF,$E3,$E3,$C3,$18,$0F,$0F
       .byte $00,$00,$70,$F8,$78,$1E,$3C,$7C,$7C,$6E,$6E,$9C,$1F,$3C,$0F,$0F
       .byte $0E,$1E,$7E,$FF,$FF,$FF,$7C,$7C,$7C,$FF,$FF,$FF,$7E,$1E,$0E,$0F
       .byte $0F,$7E,$FE,$7E,$FE,$FE,$78,$78,$78,$FE,$FE,$7E,$FE,$7E,$0F,$0F
       .byte $0F,$36,$36,$3B,$3B,$7B,$7B,$7F,$7F,$7F,$3F,$3B,$3E,$1C,$00,$00
       .byte $0F,$FF,$F7,$3E,$3A,$3F,$3F,$3F,$3F,$3F,$3D,$1C,$1C,$0F,$00,$00
       .byte $0F,$18,$C3,$E3,$E3,$FF,$FF,$FF,$FF,$FE,$3C,$FC,$78,$00,$00,$00
       .byte $0F,$3C,$1F,$9C,$6E,$6E,$7C,$7C,$3C,$1E,$3C,$FC,$78,$00,$00,$00
       .byte $94,$06,$18,$7D,$50,$F6,$A8,$29,$0F,$85,$AD,$98,$4A,$4A,$4A,$4A
       .byte $A8,$18,$65,$AD,$C9,$0F,$90,$03,$E9,$0F,$C8,$85,$2B,$85,$02,$85
       .byte $2A,$EA,$49,$07,$0A,$0A,$0A,$0A,$88,$10,$FD,$95,$10,$95,$20,$85
       .byte $02,$85,$2A,$60,$A2,$0A,$A5,$83,$85,$08,$A0,$00,$85,$2B,$20,$2E
       .byte $F6,$A9,$30,$85,$0E,$84,$0F,$BD,$44,$F5,$95,$84,$CA,$CA,$D0,$EE
       .byte $60,$13,$02,$01,$FE,$01,$02,$FF,$FE,$FF,$77,$70,$F5,$F7,$F5,$F6
       .byte $E0,$00,$40,$05,$F5,$05,$05,$05,$05,$15,$05,$F5,$05,$A5,$00,$00
       .byte $E0,$40,$05,$F5,$05,$05,$05,$05,$05,$F5,$05,$A5,$00,$10,$00,$00
       .byte $E0,$70,$00,$60,$C5,$05,$05,$05,$05,$F5,$05,$F5,$A5,$C5,$00,$00
       .byte $70,$70,$00,$40,$45,$25,$C7,$07,$07,$07,$A7,$87,$A5,$B5,$00,$00
       .byte $00,$F0,$00,$00,$00,$50,$05,$05,$B5,$00,$00,$00,$10,$00,$00,$00
       .byte $D0,$F0,$00,$F0,$00,$40,$05,$05,$C5,$00,$10,$00,$10,$30,$00,$00
       .byte $60,$05,$15,$05,$F5,$05,$05,$05,$05,$15,$05,$C5,$00,$00,$00,$00
       .byte $F0,$00,$60,$05,$15,$05,$05,$05,$05,$05,$15,$05,$C5,$10,$00,$00
       .byte $40,$65,$15,$05,$15,$05,$05,$05,$05,$45,$A5,$00,$F0,$A0,$00,$00
       .byte $50,$65,$75,$77,$07,$07,$07,$47,$47,$87,$A5,$00,$90,$90,$02,$4A
       .byte $EA,$25,$80,$D0,$14,$A5,$DD,$29,$3F,$85,$DF,$A5,$A2,$85,$E2,$A5
       .byte $A0,$85,$E1,$A5,$DE,$29,$1F,$85,$E0,$A5,$DD,$0A,$45,$DD,$0A,$0A
       .byte $26,$DE,$26,$DD,$A5,$E1,$C9,$46,$B0,$02,$69,$3A,$E9,$2C,$18,$65
       .byte $E0,$A0,$0F,$C5,$A1,$F0,$06,$A0,$07,$B0,$02,$A0,$0B,$A5,$E2,$38
       .byte $E9,$20,$18,$65,$DF,$C9,$C0,$B0,$07,$C5,$A3,$F0,$04,$88,$90,$01
       .byte $88,$98,$A4,$DB,$C0,$10,$90,$07,$A4,$D2,$D0,$01,$98,$49,$03,$60
       .byte $00,$70,$00,$65,$05,$15,$05,$05,$05,$05,$F5,$05,$15,$05,$C0,$00
       .byte $00,$70,$65,$05,$15,$05,$05,$05,$05,$05,$15,$05,$C0,$00,$F0,$00
       .byte $00,$20,$F0,$00,$45,$45,$05,$05,$05,$05,$15,$05,$15,$65,$90,$00
       .byte $00,$90,$F0,$00,$65,$67,$47,$47,$07,$07,$07,$67,$95,$45,$B0,$00
       .byte $00,$00,$10,$00,$00,$00,$55,$05,$05,$B0,$00,$00,$00,$F0,$00,$00
       .byte $00,$30,$10,$00,$10,$00,$65,$05,$05,$A0,$00,$F0,$00,$F0,$D0,$00
       .byte $00,$45,$05,$F5,$05,$15,$05,$05,$05,$05,$F5,$05,$A0,$00,$90,$00
       .byte $00,$10,$00,$45,$05,$F5,$05,$05,$05,$05,$05,$F5,$05,$A0,$90,$00
       .byte $00,$75,$A5,$F5,$05,$F5,$05,$05,$05,$05,$C5,$C0,$00,$10,$E0,$00
       .byte $00,$55,$C5,$77,$A7,$07,$07,$07,$C7,$C7,$85,$C0,$00,$00,$F0,$00
       .byte $F0
