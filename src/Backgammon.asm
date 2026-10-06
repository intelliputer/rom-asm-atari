; Disassembly of roms/Backgammon.bin
; Disassembled Tue Oct  6 15:19:36 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Backgammon.bin
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
HMOVE   =  $2A
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
T1024T  =  $0297

       ORG $F000

START:
LF000: CLD            
LF001: SEI            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       DEX            
       TXS            
       STX    $E2     
       INC    $C5     
       INC    $C6     
       STX    REFP1   
       STX    AUDV1   
       LDA    #$1D    
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV0   
       JSR    LF5EC   
       JSR    LF592   
LF026: JSR    LF252   
       BCS    LF026   
LF02B: LDY    INTIM   
       BNE    LF02B   
       STA    WSYNC   
       STY    VBLANK  
       LDA    #$1C    
       STA    $E8     
       LDA    #$04    
       STA    $9C     
       LDX    $B9     
       LDA    $CC     
       BEQ    LF044   
       LDX    $BA     
LF044: STX    COLUP0  
       STX    COLUP1  
       CLC            
LF049: LDA    $EA     
       ADC    $9C     
       TAX            
       LDA    LF3CD,X 
       AND    #$F0    
       STA    $C8     
       LDY    #$02    
LF057: STA    WSYNC   
       LDA    $E9     
       ADC    $9C     
       TAX            
       LDA    LF3CD,X 
       AND    #$0F    
       ORA    $C8     
       STA    PF1     
       NOP            
       NOP            
       LDX    #$05    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    #$00    
       STX    PF1     
       DEY            
       BNE    LF057   
       DEC    $9C     
       BPL    LF049   
       STA    WSYNC   
       LDA    #$03    
       STA    $9C     
LF080: ROL    $9C     
       STA    WSYNC   
       LDA    $EB     
       ADC    $9C     
       TAX            
       LDA    LF3F3,X 
       STA    GRP0    
       LDA    $EC     
       ADC    $9C     
       TAX            
       LDA    LF3F3,X 
       STA    GRP1    
       STA    WSYNC   
       DEC    $9C     
       BMI    LF0A6   
       ROR    $9C     
       BCS    LF080   
       STA    WSYNC   
       BCC    LF080   
LF0A6: LDX    #$00    
       JSR    LFB68   
       STX    GRP0    
       STX    GRP1    
       STA    WSYNC   
       JSR    LF3B2   
       STA    RESP0   
       INX            
       STX    CTRLPF  
       LDX    #$07    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    #$50    
       STX    HMP0    
       LDX    #$E0    
       STA    RESP1   
       STX    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$0D    
       JMP    LF18A   
LF0D2: .byte $00
LF0D3: LDX    #$1B    
LF0D5: LDY    LF89F,X 
       LDA    $80,X   
       STA.wy $009C,Y 
       DEX            
       BPL    LF0D5   
       RTS            

LF0E1: .byte $00
LF0E2: .byte $00,$80,$80,$A0,$A0,$A8,$A8,$AA,$AA,$EA,$EA,$FA,$FA,$FE,$FE,$FF
       .byte $FE,$FE,$FA,$FA,$EA,$EA,$AA,$AA,$A8,$A8,$A0,$A0,$80,$80
LF100: .byte $00
LF101: NOP            
       LDA    $AA,X   
       STA.w  $0008   
LF107: LDA    $DD     
       BMI    LF10F   
       LDA    COLUPF  
       BCS    LF111   
LF10F: LDA    COLUBK  
LF111: BMI    LF115   
       DEC    $E8     
LF115: STA    WSYNC   
LF117: DEY            
LF118: LDA    $9C,X   
       STA    COLUPF  
       CPX    #$07    
       BNE    LF12B   
       LDA    #$3F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       NOP            
       BNE    LF135   
LF12B: LDA    LFB52,Y 
       STA    PF1     
       LDA    LFB5D,Y 
       STA    PF2     
LF135: CPY    #$05    
       BNE    LF169   
       LDA    $AA,X   
       LDY    $80,X   
       BPL    LF148   
       STA    $C8     
       STA    COLUPF  
       LDA    LF000,Y 
       BCS    LF150   
LF148: NOP            
       STA    COLUPF  
       STA    COLUPF  
       LDA    LF0E2,Y 
LF150: STA    GRP0    
       LDY    $8E,X   
       BPL    LF15F   
       LDA    LF000,Y 
       STA    GRP1    
       LDY    #$05    
       BNE    LF117   
LF15F: LDA    LF0E2,Y 
       STA.w  $001C   
       LDY    #$04    
       BNE    LF118   
LF169: CPY    #$09    
       BEQ    LF101   
       NOP            
       NOP            
       LDA    $AA,X   
       STA    COLUPF  
       CPY    #$03    
       BEQ    LF107   
       CPY    #$0A    
       BEQ    LF1DA   
       CPY    #$06    
       BEQ    LF1E5   
       CPY    #$01    
       BEQ    LF1E7   
       CPY    #$00    
       BNE    LF115   
       DEX            
       BEQ    LF1F0   
LF18A: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDY    $80,X   
       BPL    LF19D   
       LDA    LF001,Y 
       LDY    $B9     
       BNE    LF1A4   
LF19D: BEQ    LF1CF   
       LDA    LF0E1,Y 
       LDY    $BA     
LF1A4: STY    COLUP0  
       CPX    $E7     
       BNE    LF1AC   
       ORA    #$01    
LF1AC: STA    $C8     
       LDY    $8E,X   
       BPL    LF1B9   
       LDA    LF001,Y 
       LDY    $B9     
       BNE    LF1C0   
LF1B9: BEQ    LF1D4   
       LDA    LF0E1,Y 
       LDY    $BA     
LF1C0: STY    COLUP1  
       CPX    $E6     
       BNE    LF1C8   
       ORA    #$01    
LF1C8: STA    $CA     
       LDY    #$0B    
       JMP    LF115   
LF1CF: LDY    $C0     
       JMP    LF1A4   
LF1D4: TYA            
       LDY    $C0     
       JMP    LF1C0   
LF1DA: LDA    $C8     
       STA    GRP0    
       LDA    $CA     
       STA    GRP1    
       JMP    LF115   
LF1E5: NOP            
       NOP            
LF1E7: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       JMP    LF117   
LF1F0: STX    PF1     
       STA    WSYNC   
       JSR    LF3B2   
       PLA            
       PHA            
       NOP            
       LDA    #$1F    
       STA    RESP0   
       LDY    $C5     
       STA    RESP1   
       STA    WSYNC   
       STA    WSYNC   
       STA    TIM64T  
       STX    PF1     
       STX    PF2     
       RTS            

LF20E: .byte $20,$52,$F2,$A5,$E8,$18,$65,$EF,$4A,$C5,$EF,$F0,$15,$A0,$00,$84
       .byte $E5,$84,$C3,$84,$CB,$85,$EF,$C9,$0E,$30,$05,$A9,$29,$38,$E5,$EF
       .byte $AA,$40,$A4,$C3,$C8,$D0,$EE,$88,$D0,$E9
LF238: JSR    LF0D3   
       LDX    #$E4    
LF23D: LDY    INTIM   
       BNE    LF23D   
       STX    TIM64T  
LF245: RTS            

LF246: LDX    INTIM   
       BNE    LF246   
       LDX    #$20    
       STX    TIM64T  
       BNE    LF27D   
LF252: JSR    LF02B   
       JSR    LFB68   
       JSR    LF55C   
       LDA    $DC     
       JSR    LF3C3   
       STA    $E9     
       LDA    $DC     
       JSR    LF3BF   
       STA    $EA     
       LDA    $C5     
       JSR    LFB86   
       STA    $EB     
       LDA    $C6     
       JSR    LFB86   
       STA    $EC     
       LDX    $D9     
       LDA    $B9,X   
       STA    COLUPF  
LF27D: LDX    INTIM   
       BNE    LF27D   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$2E    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF245   
       LDA    #$00    
       STA    $CB     
       JSR    LF515   
       LDX    #$FF    
       TXS            
       INX            
       STX    $CC     
LF2B0: JSR    LF4BC   
       LDA    $C5     
       CMP    $C6     
       BEQ    LF2B0   
       BMI    LF2D6   
LF2BB: JSR    LFB46   
       JSR    LF447   
       BEQ    LF2D0   
LF2C3: LDA    #$FF    
       STA    $CC     
       JSR    LF627   
       JSR    LF4BC   
       JMP    LF2DA   
LF2D0: JSR    LFB46   
       JMP    LF2EA   
LF2D6: LDA    #$FF    
       STA    $CC     
LF2DA: LDA    $C4     
       LSR            
       BCC    LF300   
       JSR    LF8D1   
       JSR    LF703   
       JSR    LF447   
       BEQ    LF2F7   
LF2EA: LDA    #$00    
       STA    $CC     
       JSR    LF627   
       JSR    LF4BC   
       JMP    LF2BB   
LF2F7: JSR    LF8D1   
       JSR    LF703   
LF2FD: JMP    LF2C3   
LF300: JSR    LF8D6   
       JSR    LF347   
       LDA    $C4     
       AND    #$04    
       BEQ    LF2EA   
       LDA    $C5     
       CLC            
       ADC    $C6     
       CMP    #$03    
       BNE    LF2EA   
       LDA    #$06    
       STA    $C2     
       STA    $C5     
       STA    $C6     
       JSR    LF8D6   
       DEC    $C2     
LF322: LDA    $C2     
LF324: STA    $C5     
       STA    $C6     
       JSR    LF922   
       DEC    $C2     
       BMI    LF331   
       BNE    LF322   
LF331: LDY    $D2     
       BNE    LF33E   
       LDA    $C2     
       BMI    LF33D   
       LDA    #$09    
       BNE    LF324   
LF33D: INY            
LF33E: STY    $C5     
       STY    $C6     
       JSR    LF347   
       BNE    LF2FD   
LF347: LDX    #$78    
       STX    $C2     
LF34B: JSR    LF252   
       DEC    $C2     
       BNE    LF34B   
       JSR    LF494   
       LDX    #$00    
LF357: STX    $C2     
       LDY    $D2,X   
       BEQ    LF3A2   
       JSR    LF3A5   
       STX    $E4     
       LDA    $80,X   
       JSR    LF854   
       JSR    LF494   
LF36A: LDA    #$00    
       STA    $E5     
LF36E: JSR    LF3A5   
       JSR    LF829   
       LDA    $E5     
       CMP    #$3C    
       BMI    LF36E   
       LDX    $C2     
       DEC    $DE,X   
       DEC    $D2,X   
       BPL    LF36A   
       INC    $D2,X   
       INC    $DE,X   
       JSR    LF3A5   
       LDA    $80,X   
       BPL    LF391   
       DEC    $95     
       INC    $80,X   
LF391: INC    $80,X   
       LDA    #$00    
       STA    $E7     
       STA    $E6     
       STA    $E4     
       LDX    $C2     
       INX            
       CPX    #$04    
       BNE    LF357   
LF3A2: JMP    LF6F2   
LF3A5: LDX    $C2     
       LDA    $DE,X   
       LDX    #$1C    
LF3AB: DEX            
       CMP    LF89F,X 
       BNE    LF3AB   
       RTS            

LF3B2: LDA    $BB     
       STA    COLUPF  
       LDA    #$3F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       RTS            

LF3BF: LSR            
       LSR            
       LSR            
       LSR            
LF3C3: AND    #$0F    
       STA    $C8     
       ASL            
       ASL            
       CLC            
       ADC    $C8     
       RTS            

LF3CD: .byte $00,$00,$00,$00,$00,$EE,$44,$44,$44,$CC,$EE,$88,$EE,$22,$EE,$EE
       .byte $22,$66,$22,$EE,$22,$22,$EE,$AA,$AA,$EE,$22,$EE,$88,$EE,$EE,$AA
       .byte $EE,$88,$88,$22,$22,$22
LF3F3: .byte $22,$EE,$EE,$AA,$EE,$AA,$EE,$FE,$FE,$FE,$EE,$FE,$FE,$FE,$FE,$FA
       .byte $FE,$FE,$FE,$BE,$FE,$FE,$FA,$FE,$EE,$FE,$BE,$FE,$FE,$BA,$FE,$FE
       .byte $FE,$BA,$FE,$FE,$BA,$FE,$EE,$FE,$BA,$FE,$FE,$BA,$FE,$BA,$FE,$BA
       .byte $FE,$1B,$11,$5B,$52,$5B,$E0,$A0,$00,$97,$95,$B5,$B5,$D7,$90,$FE
       .byte $AA,$FE,$AA,$FE,$AA,$FE,$70,$50,$77,$95,$97,$84,$84,$D8,$48,$D8
       .byte $05,$07,$05,$07
LF447: LDA    $C4     
       AND    #$04    
       BEQ    LF460   
       LDA    $C5     
       CLC            
       ADC    $C6     
       CMP    #$03    
       BNE    LF460   
LF456: JSR    LF4EB   
       LDA    $C5     
       CMP    $C6     
       BNE    LF456   
       RTS            

LF460: LDA    #$01    
       RTS            

LF463: LDA    $DD     
       BIT    $CC     
       BVC    LF46D   
       ORA    #$80    
       BNE    LF46F   
LF46D: AND    #$7F    
LF46F: STA    $DD     
       RTS            

LF472: LDA    #$40    
       LDY    $DD     
       BMI    LF47A   
       LDA    #$80    
LF47A: AND    SWCHA   
       BEQ    LF484   
       LDA    #$00    
LF481: STA    $EE     
       RTS            

LF484: LDA    $EE     
       BEQ    LF48D   
       JSR    LF252   
       BCS    LF472   
LF48D: JSR    LF494   
       LDA    #$FF    
       BNE    LF481   
LF494: LDA    #$04    
       STA    AUDC0   
       JSR    LF252   
       LDA    #$00    
       STA    AUDC0   
       RTS            

LF4A0: .byte $01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$03,$03,$03,$04,$06,$06
       .byte $06,$06,$06,$05,$05,$05,$05,$05,$04,$04,$04,$04
LF4BC: BIT    SWCHB   
       BPL    LF4DE   
       LDA    #$00    
       STA    $E5     
LF4C5: LDA    #$04    
       STA    AUDC0   
       JSR    LF507   
       STA    $C5     
       LDX    #$00    
       STX    AUDC0   
       JSR    LF507   
       STA    $C6     
       LDA    $E5     
       CMP    #$1E    
       BMI    LF4C5   
       RTS            

LF4DE: LDA    $C4     
       LSR            
       BCS    LF4EB   
       LDA    #$7F    
       AND    $DD     
       STA    $DD     
       BCC    LF4EE   
LF4EB: JSR    LF463   
LF4EE: BRK            
       NOP            
       LDA    LF4A0,X 
       STA    $C5     
       JSR    LF472   
       BEQ    LF4EE   
LF4FA: BRK            
       NOP            
       LDA    LF4A0,X 
       STA    $C6     
       JSR    LF472   
       BEQ    LF4FA   
       RTS            

LF507: JSR    LF252   
       LDA    $E2     
       AND    #$07    
       BEQ    LF507   
       CMP    #$07    
       BEQ    LF507   
       RTS            

LF515: LDA    $C4     
       AND    #$02    
       LSR            
       EOR    #$01    
       STA    $DC     
       LSR            
       STA    AUDC0   
       STA    AUDC1   
       STA    $E4     
       STA    $E7     
       STA    $E6     
       LDX    #$1B    
LF52B: STA    $80,X   
       DEX            
       BPL    LF52B   
       LDX    #$02    
       STX    $D9     
       LDA    $C4     
       AND    #$04    
       BNE    LF553   
       LDY    #$FE    
       STX    $81     
       STY    $8F     
       INX            
       DEY            
       STY    $89     
       STX    $97     
       LDX    #$05    
       LDY    #$FB    
       STY    $86     
       STY    $9B     
       STX    $94     
       STX    $8D     
       RTS            

LF553: LDX    #$0F    
       LDY    #$F1    
       STX    $87     
       STY    $95     
       RTS            

LF55C: LDA    #$80    
       STA    VBLANK  
       LDA    SWCHB   
       AND    #$02    
       BEQ    LF56D   
       ORA    $DD     
       STA    $DD     
       BNE    LF5A9   
LF56D: TSX            
       INX            
       INX            
       INX            
       LDA    #$25    
       STA    VSYNC,X 
       LDA    #$F0    
       INX            
       STA    VSYNC,X 
       LDA    $DD     
       AND    #$02    
       BNE    LF586   
       LDA    $E5     
       CMP    #$20    
       BNE    LF5A9   
LF586: LDA    $DD     
       AND    #$FD    
       STA    $DD     
       LDY    #$07    
       CPY    $C4     
       BNE    LF596   
LF592: LDA    #$FF    
       STA    $C4     
LF596: INC    $C4     
       JSR    LF515   
       LDY    $C4     
       INY            
       STY    $DC     
       LDY    #$FF    
       STY    $CB     
       INY            
       STY    $E5     
       STY    $C3     
LF5A9: INC    $E5     
       BNE    LF5AF   
       INC    $C3     
LF5AF: LDX    #$04    
LF5B1: LDA    $E3     
       AND    #$40    
       LSR            
       STA    $C8     
       LDA    $E3     
       AND    #$20    
       EOR    $C8     
       BEQ    LF5C1   
       SEC            
LF5C1: ROL    $E2     
       ROL    $E3     
       DEX            
       BNE    LF5B1   
       BIT    $CB     
       BPL    LF5EC   
       LDY    $E5     
       DEY            
       BNE    LF5EB   
       LDX    #$21    
       LDY    $E2     
LF5D5: LDA    SWCHB   
       AND    #$08    
       BNE    LF5DE   
       LDA    #$F8    
LF5DE: EOR    #$FF    
       AND    LF100,Y 
       ORA    #$02    
       STA    $9C,X   
       DEY            
       DEX            
       BPL    LF5D5   
LF5EB: RTS            

LF5EC: LDX    #$05    
LF5EE: LDY    LFB7A,X 
       LDA    SWCHB   
       AND    #$08    
       BNE    LF5FB   
       LDY    LFB80,X 
LF5FB: STY    $B8,X   
       DEX            
       BPL    LF5EE   
       LDX    #$0D    
       LDA    $BD     
       LDY    $BC     
LF606: STA    $9C,X   
       STY    $AA,X   
       DEX            
LF60B: STY    $9C,X   
       STA    $AA,X   
       DEX            
       CPX    #$07    
       BEQ    LF60B   
       CPX    #$00    
       BNE    LF606   
       LDA    $BB     
       STA    $A3     
       STA    $B1     
       LDX    $E4     
       BEQ    LF626   
       LDA    $B8     
       STA    $9C,X   
LF626: RTS            

LF627: LDA    $DC     
       CMP    #$64    
       BEQ    LF626   
       LDA    $C4     
       AND    #$02    
       BNE    LF626   
       LDY    $D9     
       BIT    $CC     
       BVC    LF661   
       TYA            
       BEQ    LF660   
       LDA    $C4     
       LSR            
       BCS    LF664   
       LDA    $C4     
       AND    #$04    
       BNE    LF650   
       LDA    $87     
       BNE    LF660   
       LDY    $95     
       INY            
       BMI    LF66F   
LF650: JSR    LF6BD   
       CMP    #$07    
       BPL    LF660   
       JSR    LF6C9   
       BPL    LF660   
       CMP    #$F8    
       BMI    LF66F   
LF660: RTS            

LF661: DEY            
       BEQ    LF660   
LF664: LDA    #$0A    
       STA    $C6     
       JSR    LF6DC   
       CPX    #$0E    
       BPL    LF660   
LF66F: SED            
       LDA    $DC     
       CLC            
       ADC    $DC     
       STA    $DC     
       CLD            
       LDY    #$00    
       BIT    $CC     
       BVS    LF67F   
       INY            
LF67F: STY    $D9     
       BVS    LF6A5   
       LDA    $C4     
       LSR            
       BCS    LF6A5   
       LDA    $C4     
       AND    #$04    
       BNE    LF694   
       LDA    $87     
       CMP    #$02    
       BPL    LF6FE   
LF694: JSR    LF6BD   
       CMP    #$07    
       BPL    LF6A4   
       JSR    LF6C9   
       BMI    LF6A4   
       CMP    #$06    
       BPL    LF6FE   
LF6A4: RTS            

LF6A5: LDA    #$0B    
       STA    $C6     
       LDA    $CC     
       EOR    #$FF    
       STA    $CC     
       JSR    LF6DC   
       LDA    $CC     
       EOR    #$FF    
       STA    $CC     
       CPX    #$0E    
       BPL    LF6FE   
       RTS            

LF6BD: LDA    #$01    
       STA    $C0     
       JSR    LF238   
       JSR    LFE40   
       BPL    LF6D3   
LF6C9: LDA    #$01    
       STA    $C0     
       JSR    LF238   
       JSR    LFF22   
LF6D3: PHA            
       JSR    LF246   
       JSR    LF80E   
       PLA            
       RTS            

LF6DC: JSR    LF463   
LF6DF: BRK            
       NOP            
       LDY    #$07    
       CPX    #$0E    
       BMI    LF6E8   
       INY            
LF6E8: STY    $C5     
       JSR    LF472   
       BEQ    LF6DF   
       BRK            
       NOP            
LF6F1: RTS            

LF6F2: LDA    $80     
       CMP    #$F1    
       BEQ    LF6FE   
       LDA    $8E     
       CMP    #$0F    
       BNE    LF6F1   
LF6FE: DEC    $CB     
       JMP    LF026   
LF703: JSR    LF463   
       BIT    SWCHB   
       BVC    LF71C   
       LDX    #$03    
LF70D: LDA    $CD,X   
       BNE    LF71C   
       DEX            
       BPL    LF70D   
LF714: BRK            
       NOP            
       JSR    LF472   
       BEQ    LF714   
       RTS            

LF71C: BRK            
       NOP            
       STX    $E4     
       JSR    LF472   
       BNE    LF729   
       STA    AUDC1   
       BEQ    LF71C   
LF729: LDX    $E4     
       LDA    $80,X   
       BNE    LF735   
LF72F: LDA    #$0F    
       STA    AUDC1   
       BNE    LF71C   
LF735: BIT    SWCHB   
       BVC    LF745   
       BIT    $CC     
       TAY            
       BVS    LF743   
       BPL    LF72F   
       BMI    LF745   
LF743: BMI    LF72F   
LF745: JSR    LF854   
LF748: JSR    LF472   
       BNE    LF756   
       STA    AUDC1   
       BRK            
       NOP            
       JSR    LF829   
       BCS    LF748   
LF756: JSR    LF814   
       BIT    SWCHB   
       BVC    LF7D9   
       LDA    $C4     
       AND    #$04    
       BNE    LF772   
       LDA    $B5     
       BEQ    LF772   
       LDA    $80     
       CMP    #$19    
       BEQ    LF772   
       CMP    $81     
       BNE    LF7BE   
LF772: LDA    $81     
       BNE    LF7C7   
       LDA    $80     
       BEQ    LF7C7   
       LDY    #$1B    
LF77C: LDX    $9C,Y   
       DEX            
       BPL    LF7BE   
       DEY            
       CPY    #$0F    
       BNE    LF78E   
       JSR    LF80E   
       JSR    LF814   
       LDY    #$0F    
LF78E: CPY    #$06    
       BNE    LF77C   
       JSR    LF80E   
       JSR    LF814   
       LDY    #$06    
       LDX    #$04    
LF79C: LDA    $CD,X   
       CMP    $80     
       BEQ    LF7D7   
       DEX            
       BPL    LF79C   
LF7A5: LDX    $9C,Y   
       DEX            
       BPL    LF7AD   
       DEY            
       BPL    LF7A5   
LF7AD: CPY    $80     
       BMI    LF7B3   
       BNE    LF7BE   
LF7B3: LDX    #$03    
LF7B5: LDA    $CD,X   
       CMP    $80     
       BPL    LF7D7   
       DEX            
       BPL    LF7B5   
LF7BE: JSR    LF80E   
       LDA    #$0F    
       STA    AUDC1   
       BNE    LF748   
LF7C7: LDA    $80     
       SEC            
       SBC    $81     
       LDX    #$04    
LF7CE: CMP    $CD,X   
       BEQ    LF7D7   
       DEX            
       BPL    LF7CE   
       BMI    LF7BE   
LF7D7: STX    $C1     
LF7D9: LDX    $81     
       LDY    $9C,X   
       BPL    LF7E6   
       INY            
       BNE    LF7BE   
       INC    $9C,X   
       DEC    $B6     
LF7E6: INC    $9C,X   
       LDY    #$00    
       STY    $E4     
       STY    $E7     
       STY    $E6     
       JSR    LF80E   
       BIT    SWCHB   
       BVC    LF807   
       LDY    $C1     
       LDX    #$00    
       STX    $CD,Y   
       JSR    LF6F2   
       LDX    #$03    
LF803: LDA    $CD,X   
       BEQ    LF80A   
LF807: JMP    LF71C   
LF80A: DEX            
       BPL    LF803   
       RTS            

LF80E: JSR    LFB33   
       JMP    LF252   
LF814: JSR    LF87A   
       JSR    LF0D3   
       LDX    $C9     
       LDA    LF89F,X 
       STA    $81     
       LDX    $E4     
       LDA    LF89F,X 
       STA    $80     
       RTS            

LF829: LDA    $80,X   
       BEQ    LF863   
       BPL    LF836   
       LDA    $C0     
       LSR            
       BCC    LF863   
       BCS    LF83B   
LF836: LDA    $C0     
       LSR            
       BCS    LF863   
LF83B: STX    $C9     
       LDA    $80,X   
       STA    $BF     
       LDA    #$00    
       STA    $80,X   
       JSR    LF863   
       LDX    $C9     
       LDA    $BF     
       STA    $80,X   
       LDX    #$00    
       STX    $E6     
       BEQ    LF875   
LF854: TAY            
       BPL    LF85D   
       INC    $80,X   
       LDA    $B9     
       BNE    LF861   
LF85D: DEC    $80,X   
       LDA    $BA     
LF861: STA    $C0     
LF863: STX    $C9     
       LDA    #$00    
       STA    $E7     
       STA    $E6     
       TXA            
       SEC            
       SBC    #$0E    
       BMI    LF875   
       STA    $E6     
       BPL    LF877   
LF875: STX    $E7     
LF877: JMP    LF252   
LF87A: LDA    $C0     
       ROR            
       BCS    LF89E   
       JSR    LF8BB   
       LDA    $C9     
       CMP    #$0E    
       BPL    LF88B   
       CLC            
       ADC    #$1C    
LF88B: SEC            
       SBC    #$0E    
       STA    $C9     
       LDA    $E4     
       CMP    #$0E    
       BPL    LF899   
       CLC            
       ADC    #$1C    
LF899: SEC            
       SBC    #$0E    
       STA    $E4     
LF89E: RTS            

LF89F: .byte $1B,$18,$17,$16,$15,$14,$13,$19,$12,$11,$10,$0F,$0E,$0D,$00,$01
       .byte $02,$03,$04,$05,$06,$1A,$07,$08,$09,$0A,$0B,$0C
LF8BB: LDX    #$0D    
LF8BD: LDA    $80,X   
       EOR    #$FF    
       TAY            
       INY            
       LDA    $8E,X   
       STY    $8E,X   
       EOR    #$FF    
       TAY            
       INY            
       STY    $80,X   
       DEX            
       BPL    LF8BD   
       RTS            

LF8D1: ROR    $DD     
       CLC            
       BCC    LF90F   
LF8D6: LDA    #$01    
       STA    $C0     
       JSR    LF238   
       LDA    $B6     
       BNE    LF8EE   
       TAX            
       CLC            
LF8E3: ADC    $9C,X   
       CMP    #$0F    
       BEQ    LF8F0   
       INX            
       CPX    #$1C    
       BNE    LF8E3   
LF8EE: LDX    #$00    
LF8F0: STX    $DB     
       JSR    LFF22   
       BMI    LF8FF   
       LDX    #$FF    
       CMP    #$07    
       BPL    LF907   
       BMI    LF905   
LF8FF: LDX    #$21    
       CMP    #$FA    
       BMI    LF907   
LF905: LDX    #$10    
LF907: STX    $BE     
       JSR    LF6D3   
       ROR    $DD     
       SEC            
LF90F: LDA    #$00    
       STA    $DA     
       STA    $ED     
       LDX    #$03    
LF917: STA    $D2,X   
       DEX            
       BPL    LF917   
       LDA    #$E0    
       STA    $D8     
       BNE    LF925   
LF922: ROR    $DD     
       SEC            
LF925: ROL    $DD     
       JSR    LF238   
       JSR    LFACB   
       LDY    #$00    
       LDX    #$03    
       LDA    #$19    
LF933: STA    $8B,X   
       STY    $CD,X   
       STY    $87,X   
       STY    $83,X   
       DEX            
       BPL    LF933   
       LDA    $C5     
       CMP    $C6     
       BNE    LF975   
       STA    $8F     
       STA    $C7     
       STA    $C8     
       JSR    LF9FE   
LF94D: BNE    LF9A3   
       INY            
       JSR    LF9FE   
LF953: BEQ    LF95A   
       JSR    LFB1B   
       BPL    LF94D   
LF95A: INY            
       JSR    LF9FE   
LF95E: BEQ    LF965   
       JSR    LFB1B   
       BPL    LF953   
LF965: INY            
       JSR    LF9FE   
LF969: BEQ    LF970   
       JSR    LFB1B   
       BPL    LF95E   
LF970: JSR    LFA92   
       BPL    LF969   
LF975: LDX    $8B     
       LDA    $9C,X   
       CMP    #$01    
       BMI    LF98F   
       LDA    $C5     
       STA    $8F     
       JSR    LFA29   
       BEQ    LF9A6   
LF986: LDA    $C6     
       STA    $8F     
       JSR    LFA29   
       BEQ    LF9B0   
LF98F: LDA    $C4     
       AND    #$04    
       BNE    LF99B   
       LDA    $B5     
       CMP    #$01    
       BPL    LF9A3   
LF99B: JSR    LFAB5   
       LDA.wy $008B,Y 
       BNE    LF975   
LF9A3: JMP    LFB2D   
LF9A6: LDA    $C6     
       STA    $8F     
       LDA    #$01    
       STA    $94     
       BNE    LF9B8   
LF9B0: LDA    $C5     
       STA    $8F     
       LDA    #$00    
       STA    $94     
LF9B8: INY            
       JSR    LF9FE   
LF9BC: BNE    LF9C3   
       JSR    LFA92   
       BPL    LF9BC   
LF9C3: LDA    $83     
       CMP    $DA     
       BEQ    LF9D8   
       BMI    LF9EE   
       STA    $DA     
       LDA    $DD     
       LSR            
       BCC    LF9E5   
       JSR    LFB8E   
       JMP    LF9E5   
LF9D8: LDA    $DD     
       LSR            
       BCC    LF9EE   
       JSR    LFB8E   
       JSR    LFAF2   
       BPL    LF9EE   
LF9E5: LDY    #$00    
       JSR    LFAD4   
       LDA    $83     
       STA    $CD     
LF9EE: LDY    #$00    
       JSR    LFAFF   
       LDA    $94     
       BEQ    LF98F   
       LDX    $8B     
       STX    $8C     
       JMP    LF986   
LF9FE: LDX    $8B,Y   
       LDA    $9C,X   
       CMP    #$01    
       BMI    LFA12   
       JSR    LFA29   
       BEQ    LFA28   
       BCS    LFA12   
       BCC    LFA26   
LFA0F: JSR    LFAFF   
LFA12: LDA    $C4     
       AND    #$04    
       BNE    LFA1E   
       LDA    $B5     
       CMP    #$01    
       BPL    LFA26   
LFA1E: JSR    LFAB5   
       LDA.wy $008B,Y 
       BNE    LF9FE   
LFA26: LDA    #$01    
LFA28: RTS            

LFA29: LDA.wy $008B,Y 
       SEC            
       SBC    $8F     
       BEQ    LFA4E   
       BMI    LFA4E   
       TAX            
       LDA    $9C,X   
       CMP    #$FF    
       BPL    LFA3C   
       SEC            
LFA3B: RTS            

LFA3C: BNE    LFA47   
       LDA    #$01    
       STA.wy $0087,Y 
       DEC    $B6     
       INC    $9C,X   
LFA47: LDA    $8F     
       STA.wy $0083,Y 
       BPL    LFA59   
LFA4E: JSR    LFA69   
       BNE    LFA3B   
       LDA.wy $008B,Y 
       STA.wy $0083,Y 
LFA59: LDA.wy $008B,Y 
       TAX            
       DEC    $9C,X   
       SEC            
       SBC.wy $0083,Y 
       TAX            
       INC    $9C,X   
       LDA    #$00    
       RTS            

LFA69: LDX    #$19    
LFA6B: LDA    $9C,X   
       CMP    #$01    
       BPL    LFA8E   
       DEX            
       CPX    #$06    
       BNE    LFA6B   
LFA76: LDA    $9C,X   
       CMP    #$01    
       BPL    LFA80   
       DEX            
       BNE    LFA76   
       RTS            

LFA80: LDA.wy $008B,Y 
       STA    $B8     
       CPX    $B8     
       BEQ    LFA90   
       SEC            
       SBC    $8F     
       BEQ    LFA90   
LFA8E: LDA    #$01    
LFA90: CLC            
       RTS            

LFA92: LDA    #$64    
       STA    $DA     
       LDA    $DD     
       LSR            
       BCC    LFAAF   
       STY    $90     
       JSR    LFB8E   
       LDY    $90     
       LDA    $ED     
       BNE    LFAAA   
       INC    $ED     
       BNE    LFAAF   
LFAAA: JSR    LFAF2   
       BPL    LFAB2   
LFAAF: JSR    LFAD4   
LFAB2: JMP    LFA0F   
LFAB5: TYA            
       TAX            
       DEC    $8B,X   
       LDA    $8B,X   
LFABB: INX            
       CPX    #$04    
       BEQ    LFAC4   
       STA    $8B,X   
       BNE    LFABB   
LFAC4: LDX    INTIM   
       CPX    #$05    
       BPL    LFAD3   
LFACB: JSR    LF246   
       LDX    #$12    
       STX    T1024T  
LFAD3: RTS            

LFAD4: LDA    $97     
       STA    $D8     
       LDA    $96     
       STA    $D7     
       LDA    $95     
       STA    $D6     
       TYA            
       TAX            
LFAE2: LDA    $8B,X   
       STA    $DE,X   
       LDA    $83,X   
       STA    $D2,X   
       LDA    $C5,X   
       STA    $CD,X   
       DEX            
       BPL    LFAE2   
       RTS            

LFAF2: LDA    $D6     
       CMP    $95     
       LDA    $D7     
       SBC    $96     
       LDA    $D8     
       SBC    $97     
       RTS            

LFAFF: LDA.wy $008B,Y 
       TAX            
       INC    $9C,X   
       SEC            
       SBC.wy $0083,Y 
       TAX            
       LDA.wy $0087,Y 
       BEQ    LFB18   
       LDA    #$00    
       STA.wy $0087,Y 
       INC    $B6     
       STA    $9C,X   
LFB18: DEC    $9C,X   
       RTS            

LFB1B: DEY            
       LDA    $DA     
       BEQ    LFB22   
       BNE    LFAB2   
LFB22: JSR    LFAD4   
LFB25: JSR    LFAFF   
       DEY            
       BPL    LFB25   
       PLA            
       PLA            
LFB2D: JSR    LF246   
       SEC            
       ROL    $C0     
LFB33: LDX    #$1B    
LFB35: LDY    LF89F,X 
       LDA.wy $009C,Y 
       STA    $80,X   
       DEX            
       BPL    LFB35   
       JSR    LF87A   
       JMP    LF5EC   
LFB46: JSR    LF8BB   
       JSR    LF8D1   
       JSR    LF8BB   
       JMP    LF703   
LFB52: .byte $30,$3C,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3C,$30
LFB5D: .byte $00,$00,$00,$03,$0F,$3F,$0F,$03,$00,$00,$00
LFB68: LDA    $DD     
       BMI    LFB71   
       LDA    COLUPF  
       JMP    LFB73   
LFB71: LDA    COLUBK  
LFB73: BMI    LFB77   
       DEC    $E8     
LFB77: STA    WSYNC   
       RTS            

LFB7A: .byte $FA,$0E,$49,$B7,$C6,$84
LFB80: .byte $0D,$0E,$05,$08,$08,$08
LFB86: JSR    LF3C3   
       ADC    $C8     
       ADC    $C8     
       RTS            

LFB8E: LDY    #$00    
       LDX    $DB     
       BEQ    LFBBA   
LFB94: LDA    $9C,X   
       BNE    LFB9B   
       DEX            
       BPL    LFB94   
LFB9B: STY    $97     
       LDA    $A2     
       CPX    #$07    
       BPL    LFBA6   
       INY            
       LDA    $9C     
LFBA6: STY    $96     
       ASL            
       ASL            
       TAY            
LFBAB: LDA    $9C,X   
       BEQ    LFBB0   
       INY            
LFBB0: CPX    #$07    
       BEQ    LFBB7   
       DEX            
       BNE    LFBAB   
LFBB7: STY    $95     
       RTS            

LFBBA: STX    $95     
       STX    $96     
       STX    $97     
       STX    $98     
       STX    $BA     
       LDX    #$06    
LFBC6: LDA    $9C,X   
       CMP    #$02    
       BMI    LFBD6   
       INC    $98     
       LDA    LFFC2,X 
       CLC            
       ADC    $BA     
       STA    $BA     
LFBD6: DEX            
       BNE    LFBC6   
       JSR    LFEF8   
       LDA    $BA     
       JSR    LFEF6   
       JSR    LFF22   
       STA    $BD     
       JSR    LFEF6   
       LDA    $9C     
       JSR    LFEF6   
       JSR    LFE40   
       JSR    LFEF6   
       LDA    $BA     
       STA    $98     
       LDA    $BD     
       STA    $B9     
       JSR    LFE94   
       ASL    $9A     
       LDA    $9B     
       ROL            
       JSR    LFEF6   
       LDX    #$00    
       STX    $98     
       LDY    #$18    
LFC0D: LDA.wy $009C,Y 
       CMP    #$02    
       BMI    LFC17   
       INX            
       BPL    LFC1A   
LFC17: JSR    LFE89   
LFC1A: DEY            
       BNE    LFC0D   
       JSR    LFE89   
       JSR    LFEF8   
       SEC            
       LDA    #$00    
       SBC    $B6     
       STA    $BA     
       LDA    #$00    
       TAY            
LFC2D: LDX    $9D,Y   
       BEQ    LFC40   
       BMI    LFC3B   
LFC33: CLC            
       ADC    $BA     
       DEX            
       BNE    LFC33   
       BEQ    LFC40   
LFC3B: INC    $BA     
       INX            
       BNE    LFC3B   
LFC40: INY            
       CPY    #$19    
       BNE    LFC2D   
       LSR            
       JSR    LFEF6   
       LDA    #$14    
       LDX    $B6     
       CPX    #$FF    
       BMI    LFC53   
       LDA    #$EC    
LFC53: JSR    LFEF6   
       LDA    #$EC    
       LDX    $B6     
       CPX    #$FF    
       BNE    LFC60   
       LDA    #$14    
LFC60: JSR    LFEF6   
       LDX    $AE     
       JSR    LFE7E   
       LDX    $B0     
       JSR    LFE7E   
       LDX    $B1     
       JSR    LFE7E   
       LDA    #$00    
       STA    $BD     
       STA    $BA     
       STA    $BB     
       LDX    #$02    
LFC7C: CPX    #$04    
       BEQ    LFC9C   
       CPX    #$05    
       BEQ    LFC9C   
       CPX    #$12    
       BEQ    LFC9C   
       CPX    #$14    
       BEQ    LFC9C   
       CPX    #$15    
       BEQ    LFC9C   
       LDA    $9B,X   
       CMP    #$02    
       BMI    LFCD4   
       LDA    $9D,X   
       CMP    #$02    
       BMI    LFCD4   
LFC9C: LDA    $9C,X   
       BEQ    LFCA8   
       CMP    #$01    
       BEQ    LFCE4   
       CMP    #$FF    
       BNE    LFCD4   
LFCA8: STX    $BC     
       LDY    #$00    
LFCAC: INX            
       LDA    $9C,X   
       CMP    #$01    
       BEQ    LFCC5   
       BMI    LFCC9   
       CMP    #$03    
       BMI    LFCBD   
       INC    $BD     
       INC    $BD     
LFCBD: CPY    #$00    
       BEQ    LFCC9   
       INC    $BD     
       BNE    LFCC9   
LFCC5: INC    $BD     
       INC    $BD     
LFCC9: INY            
       CPY    #$06    
       BEQ    LFCD2   
       CPX    #$18    
       BNE    LFCAC   
LFCD2: LDX    $BC     
LFCD4: INX            
       CPX    #$18    
       BMI    LFC7C   
       JMP    LFD71   
LFCDC: LDA    $B9     
       CMP    #$06    
       BEQ    LFCD2   
       BNE    LFD4D   
LFCE4: STX    $BC     
       LDA    #$02    
       STA    $B9     
       STA    $9A     
LFCEC: CLC            
       LDA    $BC     
       ADC    $B9     
       CMP    #$1A    
       BCS    LFCD2   
       STA    $9B     
       LDA    $B9     
       CMP    $9A     
       BEQ    LFD55   
       LDX    $9B     
       LDA    $9C,X   
       CMP    #$01    
       BPL    LFD30   
       LDA    $BC     
       CLC            
       ADC    $9A     
       TAX            
       LDA    $9C,X   
       CMP    #$01    
       BPL    LFD30   
       TXA            
       CLC            
       ADC    $B9     
       CMP    #$1A    
       BCS    LFD3C   
       TAY            
       LDA.wy $009C,Y 
       CMP    #$01    
       BMI    LFD3C   
       LDY    $9B     
       LDA.wy $009C,Y 
       CMP    #$FF    
       BPL    LFD30   
       LDA    $9C,X   
       CMP    #$FF    
       BMI    LFD3C   
LFD30: INC    $BA     
       BNE    LFD36   
       INC    $BB     
LFD36: INC    $BA     
       BNE    LFD3C   
       INC    $BB     
LFD3C: LDA    $9A     
       CMP    #$06    
       BEQ    LFCDC   
       INC    $9A     
       LDA    $BC     
       CLC            
       ADC    $9A     
       CMP    #$1A    
       BCC    LFCEC   
LFD4D: INC    $B9     
       LDA    $B9     
       STA    $9A     
       BNE    LFCEC   
LFD55: LDX    $BC     
       LDY    #$04    
LFD59: TXA            
       CLC            
       ADC    $B9     
       CMP    #$1A    
       BCS    LFD3C   
       TAX            
       LDA    $9C,X   
       CMP    #$01    
       BPL    LFD36   
       CMP    #$FF    
       BMI    LFD3C   
       DEY            
       BNE    LFD59   
       BEQ    LFD3C   
LFD71: LDA    $BD     
       LSR            
       JSR    LFEF6   
       LSR    $BB     
       LDA    $BA     
       ROR            
       LSR            
       JSR    LFEF6   
       JSR    LFEED   
       LDX    #$81    
       STX    $98     
       LDX    #$00    
       STX    $99     
       INX            
LFD8C: LDA    $9C,X   
       CMP    #$01    
       BNE    LFDF4   
       STX    $BC     
       SEC            
       LDA    #$19    
       SBC    $BC     
       ASL            
       ASL            
       ASL            
       STA    $BA     
       LDA    #$01    
       STA    $B9     
       STA    $9A     
LFDA4: SEC            
       LDA    $BC     
       SBC    $B9     
       BMI    LFE1A   
       TAX            
       LDA    $B9     
       CMP    $9A     
       BEQ    LFE04   
       STX    $9B     
       LDA    $9C,X   
       BMI    LFDDF   
       SEC            
       LDA    $BC     
       SBC    $9A     
       BMI    LFDE5   
       TAY            
       LDA.wy $009C,Y 
       BMI    LFDDF   
       TYA            
       SEC            
       SBC    $B9     
       BMI    LFDE5   
       TAX            
       LDA    $9C,X   
       BPL    LFDE5   
       LDA.wy $009C,Y 
       CMP    #$02    
       BCC    LFDDF   
       LDX    $9B     
       LDA    $9C,X   
       CMP    #$02    
       BCS    LFDE5   
LFDDF: JSR    LFEE1   
LFDE2: JSR    LFEE1   
LFDE5: JSR    LFAC4   
       LDA    $9A     
       CMP    #$06    
       BEQ    LFDF6   
       INC    $9A     
       BNE    LFDA4   
LFDF2: BNE    LFD8C   
LFDF4: BNE    LFE1C   
LFDF6: LDA    $B9     
       CMP    #$06    
       BEQ    LFE1A   
       INC    $B9     
       LDA    $B9     
       STA    $9A     
       BNE    LFDA4   
LFE04: LDY    #$04    
LFE06: LDA    $9C,X   
       BMI    LFDE2   
       CMP    #$02    
       BCS    LFDE5   
       SEC            
       TXA            
       SBC    $B9     
       TAX            
       BMI    LFDE5   
       DEY            
       BNE    LFE06   
       BEQ    LFDE5   
LFE1A: LDX    $BC     
LFE1C: INX            
       CPX    #$19    
       BNE    LFDF2   
       JSR    LFEED   
       JSR    LFEF8   
       LDA    #$00    
       LDX    #$06    
LFE2B: LDY    $AE,X   
       BMI    LFE32   
       CLC            
       ADC    $AE,X   
LFE32: DEX            
       BNE    LFE2B   
       JSR    LFEF6   
       LDA    $BE     
       SEC            
       SBC    #$11    
       STA    $BE     
       RTS            

LFE40: LDA    #$00    
       STA    $BA     
       STA    $BB     
       LDX    #$18    
LFE48: LDA    $9C,X   
       CMP    #$FF    
       BPL    LFE70   
       LDY    #$01    
       STX    $BC     
LFE52: INX            
       CPX    #$19    
       BPL    LFE6E   
       LDA    $9C,X   
       CMP    #$02    
       BMI    LFE69   
       LDA    LFFC2,Y 
       CLC            
       ADC    $BA     
       STA    $BA     
       BCC    LFE69   
       INC    $BB     
LFE69: INY            
       CPY    #$07    
       BNE    LFE52   
LFE6E: LDX    $BC     
LFE70: DEX            
       BNE    LFE48   
       LSR    $BB     
       ROR    $BA     
       LSR    $BB     
       ROR    $BA     
       LDA    $BA     
       RTS            

LFE7E: LDA    #$14    
       CPX    #$02    
       BPL    LFE86   
       LDA    #$EC    
LFE86: JMP    LFEF6   
LFE89: LDA    LFFC2,X 
       CLC            
       ADC    $98     
       STA    $98     
       LDX    #$00    
       RTS            

LFE94: LDA    #$00    
       STA    $9A     
       STA    $9B     
       LDA    $B9     
       BMI    LFEC5   
LFE9E: LDY    #$FF    
       LDA    $98     
       BMI    LFEA5   
       INY            
LFEA5: STY    $99     
LFEA7: LDA    $B9     
       BNE    LFEAC   
       RTS            

LFEAC: LSR    $B9     
       BCC    LFEBD   
       CLC            
       LDA    $9A     
       ADC    $98     
       STA    $9A     
       LDA    $9B     
       ADC    $99     
       STA    $9B     
LFEBD: CLC            
       ASL    $98     
       ROL    $99     
       JMP    LFEA7   
LFEC5: LDA    #$00    
       SEC            
       SBC    $98     
       CMP    #$80    
       BNE    LFED0   
       EOR    #$FF    
LFED0: STA    $98     
       LDA    #$00    
       SEC            
       SBC    $B9     
       STA    $B9     
       BPL    LFE9E   
       EOR    #$FF    
       STA    $B9     
       BPL    LFE9E   
LFEE1: CLC            
       LDA    $99     
       ADC    $BA     
       STA    $99     
       BCC    LFEEC   
       INC    $98     
LFEEC: RTS            

LFEED: LDX    $9C     
       LDA    $B6     
       STA    $9C     
       STX    $B6     
       RTS            

LFEF6: STA    $98     
LFEF8: LDY    $BE     
       INY            
       STY    $BE     
       LDA    LFFC9,Y 
       STA    $B9     
       JSR    LFE94   
       CLC            
       LDA    $9A     
       ADC    $95     
       STA    $95     
       LDA    $9B     
       ADC    $96     
       STA    $96     
       LDA    $9B     
       BMI    LFF1A   
       BCC    LFF1E   
       INC    $97     
LFF1A: BCS    LFF1E   
       DEC    $97     
LFF1E: JSR    LFAC4   
       RTS            

LFF22: LDA    #$00    
       STA    $BA     
       STA    $BB     
       STA    $BC     
       STA    $BD     
       LDX    #$19    
LFF2E: LDY    $9C,X   
       BEQ    LFF54   
       BMI    LFF43   
LFF34: TXA            
       CLC            
       ADC    $BA     
       STA    $BA     
       BCC    LFF3E   
       INC    $BB     
LFF3E: DEY            
       BNE    LFF34   
       BEQ    LFF54   
LFF43: TXA            
       EOR    #$FF    
       CLC            
       ADC    #$19    
       ADC    $BC     
       STA    $BC     
       BCC    LFF51   
       INC    $BD     
LFF51: INY            
       BNE    LFF43   
LFF54: DEX            
       BNE    LFF2E   
       LDY    $B6     
       BEQ    LFF69   
LFF5B: LDA    #$19    
       CLC            
       ADC    $BC     
       STA    $BC     
       BCC    LFF66   
       INC    $BD     
LFF66: INY            
       BNE    LFF5B   
LFF69: LDA    $BC     
       CLC            
       ADC    $BA     
       STA    $BC     
       LDA    $BD     
       ADC    $BB     
       STA    $BD     
       LDX    #$05    
LFF78: ASL    $BC     
       ROL    $BD     
       DEX            
       BNE    LFF78   
       LDA    $BB     
       LDX    #$02    
LFF83: ASL    $BA     
       ROL    $BB     
       ASL    $BA     
       ROL    $BB     
       ADC    $BB     
       DEX            
       BPL    LFF83   
       LDA    #$00    
       STA    $98     
       LDX    #$08    
LFF96: LDA    $BB     
       CMP    $BD     
       BCC    LFFB3   
       BNE    LFFA4   
       LDA    $BA     
       CMP    $BC     
       BCC    LFFB3   
LFFA4: LDA    $BA     
       SEC            
       SBC    $BC     
       STA    $BA     
       LDA    $BB     
       SBC    $BD     
       STA    $BB     
       INC    $98     
LFFB3: ASL    $BA     
       ROL    $BB     
       ASL    $98     
       DEX            
       BNE    LFF96   
       LDA    $98     
       ROR            
       EOR    #$80    
       RTS            

LFFC2: .byte $00,$01,$04,$09,$10,$19,$24
LFFC9: .byte $4A,$07,$FE,$01,$FC,$46,$00,$7F,$07,$05,$04,$05,$01,$0C,$0D,$EC
       .byte $9E,$81,$2E,$01,$01,$F6,$F6,$31,$E4,$15,$07,$07,$1B,$06,$37,$32
       .byte $E4,$B4,$ED,$00,$16,$7F,$0B,$03,$14,$E7,$1C,$09,$00,$00,$06,$FC
       .byte $52,$B4,$CA,$00,$F0,$0E,$F2
