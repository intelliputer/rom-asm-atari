; Disassembly of roms/Duck Shoot (PAL).bin
; Disassembled Tue Oct  6 15:21:10 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Duck Shoot (PAL).bin
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
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT3   =  $3B
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       DEX            
       STX    $E6     
       LDA    #$FB    
       LDX    #$0D    
       JSR    LFF1C   
       LDA    #$36    
       STA    $C7     
       JSR    LF3B7   
       JSR    LFF08   
       NOP            
       JSR    LFF38   
LF024: LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    CTRLPF  
       LDX    #$00    
       STX    ENAM1   
       STX    ENAM0   
       STX    WSYNC   
       STX    VBLANK  
       STX    PF2     
       DEX            
       STX    REFP1   
       LDA    #$0F    
       STA    COLUP1  
       LDA    #$F3    
       STA    $DA     
       JMP    LF0DF   
LF046: .byte $85,$02,$85,$2A
LF04A: STY    $D9     
       STA    HMP1    
       AND    #$0F    
       STA    $C9     
       DEC    $AA,X   
       BNE    LF05F   
       LDA    #$00    
       DEC    $ED     
       STA    PF0,X   
       DEX            
       BNE    LF069   
LF05F: LDA    #$03    
       CMP    $AA,X   
       BCC    LF069   
       LDA    #$FF    
       STA    PF0,X   
LF069: STA    WSYNC   
       STA    HMOVE   
       LDY    $C9     
       CPY    #$06    
       BCS    LF092   
LF073: DEY            
       BPL    LF073   
       STA.w  $0011   
       DEC    $AA,X   
       BNE    LF086   
       LDA    #$00    
       STA    PF0,X   
       DEX            
       DEC    $ED     
       BNE    LF0B5   
LF086: LDA    #$03    
       CMP    $AA,X   
       BCC    LF0B5   
       LDA    #$FF    
       STA    PF0,X   
       BNE    LF0B5   
LF092: DEC    $AA,X   
       BNE    LF0A2   
       LDA    #$00    
       DEC    $ED     
       STA    PF0,X   
       DEX            
       BNE    LF0AC   
LF09F: SEC            
       BCS    LF0AC   
LF0A2: LDA    $88     
       CMP    $AA,X   
       BCC    LF09F   
       LDA    #$FF    
       STA    PF0,X   
LF0AC: TYA            
       SBC    #$06    
       TAY            
LF0B0: DEY            
       BPL    LF0B0   
       STA    RESP1   
LF0B5: STA    WSYNC   
       STA    HMOVE   
       RTS            

LF0BA: STA    WSYNC   
       STA    HMOVE   
LF0BE: LDA    ($D9),Y 
       STA    GRP1    
       DEC    $AA,X   
       BNE    LF0CF   
       LDA    #$00    
       STA    PF0,X   
       DEC    $ED     
       DEX            
       BNE    LF0D7   
LF0CF: LDA    #$03    
       CMP    $AA,X   
       BCC    LF0D9   
       LDA    #$FF    
LF0D7: STA    PF0,X   
LF0D9: STA    HMCLR   
       DEY            
       BPL    LF0BA   
       RTS            

LF0DF: LDA    #$FF    
       STA    $B9     
       STA    HMCLR   
       LDX    #$12    
       STX    $ED     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A5     
       LDY    $95     
       JSR    LF04A   
       LDY    #$0A    
       JSR    LF0BE   
       LDA    $DD     
       BPL    LF101   
       LDY    #$16    
       STY    NUSIZ1  
LF101: ASL            
       BMI    LF108   
       LDY    #$0F    
       BNE    LF10A   
LF108: LDY    #$C2    
LF10A: STY    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A6     
       LDY    $96     
       JSR    LF04A   
       LDY    #$08    
       JSR    LF0BE   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A7     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDY    #$10    
       STY    NUSIZ1  
       STY    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $DB     
       LDY    $DC     
       JSR    LF04A   
       LDY    #$0F    
       LDA    $C7     
       STA    COLUPF  
LF143: LDA    LF901,Y 
       STA    WSYNC   
       STA    HMCLR   
       STA    HMOVE   
       STA    COLUBK  
       LDA    #$00    
       STA    PF2     
       LDA    ($D9),Y 
       STA    GRP1    
       DEC    $AA,X   
       BNE    LF163   
       LDA    #$00    
       STA    PF0,X   
       DEC    $ED     
       DEX            
       BNE    LF16D   
LF163: LDA    #$03    
       CMP    $AA,X   
       BCC    LF16D   
       LDA    #$FF    
       STA    PF0,X   
LF16D: LDA    #$20    
       AND    $DD     
       BEQ    LF178   
       LDA    LF970,Y 
       STA    PF2     
LF178: DEY            
       BPL    LF143   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       LDA    #$9C    
       STA    COLUBK  
       STY    PF1     
       STY    PF0     
       STY    PF2     
       LDA    $A0     
       STA    HMP1    
       AND    #$0F    
       STA    $C9     
       LDA    #$04    
       STA    $89     
       JSR    LF500   
       JSR    LF290   
       JMP    LF78F   
LF19F: .byte $F7
LF1A0: STX    $8C     
LF1A2: LDX    $8C     
       LDA    $BD,X   
       BMI    LF1E9   
       INC    $B6,X   
       AND    #$0F    
       ASL            
       TAY            
       LDA    LFD00,Y 
       STA    $E0,X   
       INY            
       LDA    LFD00,Y 
       SEC            
       SBC    $B6,X   
       BCS    LF1CF   
       LDA    #$80    
       ORA    $BD,X   
       STA    $BD,X   
       LDA    $B3,X   
       STA    $BA,X   
       DEC    $B6,X   
       LDA    $B6,X   
       STA    $C9     
       CLC            
       BCC    LF1F3   
LF1CF: STA    $8A     
       LDA    $B6,X   
       STA    $C9     
       JSR    LFD20   
       LDX    $8C     
       LDA    $B3,X   
       SEC            
       SBC    $8B     
       BCS    LF1F1   
       BCC    LF1E9   
LF1E3: LDA    #$80    
       ORA    $BD,X   
       STA    $BD,X   
LF1E9: LDA    #$FF    
       STA    $BA,X   
       LDA    #$00    
       BEQ    LF213   
LF1F1: STA    $BA,X   
LF1F3: LDA    $E0,X   
       STA    $8A     
       JSR    LFD20   
       LDX    $8C     
       BNE    LF207   
       LDA    $B0,X   
       CLC            
       ADC    $8B     
       BCS    LF1E3   
       BCC    LF20E   
LF207: LDA    $B0,X   
       SEC            
       SBC    $8B     
       BCC    LF1E3   
LF20E: STA    $E0,X   
       JSR    LFD50   
LF213: STA    $E0,X   
       DEC    $8C     
       BPL    LF1A2   
LF219: LDA    $BA     
       CMP    $BB     
       BCS    LF22D   
       LDX    $E0     
       LDY    $E1     
       STX    $E1     
       STY    $E0     
       LDY    $BB     
       STY    $BA     
       STA    $BB     
LF22D: LDA    $BB     
       CMP    $BC     
       BCS    LF244   
       LDX    $E2     
       LDY    $E1     
       STY    $E2     
       STX    $E1     
       LDY    $BC     
       STY    $BB     
       STA    $BC     
       CLC            
       BCC    LF219   
LF244: LDA    $BC     
       CMP    #$FF    
       BCS    LF28E   
       LDA    $E2     
       JSR    LFF9B   
       LDX    #$04    
       JSR    LFF85   
       LDA    $BB     
       CMP    #$FF    
       BCS    LF28E   
       SEC            
       SBC    $BC     
       BNE    LF265   
       DEC    $BC     
       LDA    #$01    
       STA    $BB     
LF265: STA    $BB     
       LDA    $E1     
       JSR    LFF9B   
       LDX    #$03    
       JSR    LFF85   
       LDA    $BA     
       CMP    #$FF    
       BCS    LF28E   
       SEC            
       SBC    $BC     
       SBC    $BB     
       BNE    LF282   
       DEC    $BB     
       LDA    #$01    
LF282: STA    $BA     
       LDA    $E0     
       JSR    LFF9B   
       LDX    #$02    
       JSR    LFF85   
LF28E: RTS            

LF28F: .byte $FF
LF290: JSR    LF300   
       STA    WSYNC   
       LDX    #$00    
       STX    GRP1    
       STX    COLUBK  
       STX    PF0     
       STX    PF1     
       LDA    #$FD    
       STA    PF2,X   
       LDA    $DF     
       ORA    #$0F    
       STA    COLUPF,X
       STX    REFP1   
       STX    REFP0   
       LDA    #$11    
       STA    RESP0   
       STA    RESP1   
       STA    CTRLPF  
       STA    HMP0    
       LDA    #$20    
       STA    HMP1    
       LDY    $EF     
       NOP            
       NOP            
       NOP            
       STA    WSYNC   
       STA    HMOVE   
       LDA    $C0     
       ADC    #$26    
       STA    COLUBK  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
       STA    HMCLR   
       STA    WSYNC   
       JSR    LF8B0   
       LDA    #$08    
       AND    $DF     
       BEQ    LF2F8   
       LDA    #$7E    
       AND    $E5     
       STA    $E5     
       JSR    LFF6D   
       JSR    LF8B0   
       JSR    LFF5E   
       JSR    LF8B0   
       JMP    LF300   
LF2F8: JSR    LF37C   
       LDY    #$0F    
       JSR    LF8B2   
LF300: LDY    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STY    COLUP1  
       STY    COLUP0  
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    ENABL   
       RTS            

LF313: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C
       .byte $6A,$95,$EB,$DF,$AF,$7E,$3C,$00,$7E,$3C,$00,$00,$00,$00,$00,$30
       .byte $78,$FF,$A2,$00,$00,$00,$00,$70,$78,$7F,$82,$00,$00,$1F,$26,$26
       .byte $20,$50,$90,$08,$00,$17,$12,$12,$10,$28,$44,$80,$00
LF350: LDA    #$7E    
       AND    $E5     
       STA    $E5     
       LDA    $C0     
       JSR    LF365   
       LDA    $C1     
       JSR    LF367   
       LDA    $C2     
       JMP    LF367   
LF365: LDY    #$00    
LF367: STA    $8A     
       ASL            
       ASL            
       ASL            
       JSR    LF372   
       LDA    $8A     
       LSR            
LF372: AND    #$78    
       ORA    #$80    
LF376: STA.wy $00CD,Y 
       INY            
       INY            
LF37B: RTS            

LF37C: LDA    $C8     
       AND    #$07    
       TAX            
       LDY    #$00    
       DEX            
       BMI    LF395   
LF386: DEX            
       BMI    LF395   
       LDA    #$60    
       CPY    #$0C    
       BEQ    LF37B   
       JSR    LF376   
       JMP    LF386   
LF395: LDA    $C6     
       AND    #$0F    
       ORA    #$60    
LF39B: CPY    #$0C    
       BEQ    LF37B   
       JSR    LF376   
       LDA    #$70    
       BNE    LF39B   
       RTS            

LF3A7: .byte $20,$76,$F3,$CA,$10,$F8,$30,$E1,$FF
LF3B0: LDA    SWCHB   
       AND    #$01    
       BNE    LF3CB   
LF3B7: LDY    #$00    
       JSR    LF84A   
       LDA    #$F1    
       STA    $EC     
       JSR    LFF0C   
       LDA    #$00    
       STA    $DF     
LF3C7: LDA    #$07    
       STA    $C8     
LF3CB: LDA    $DF     
       AND    #$08    
       BNE    LF3FA   
       NOP            
       LDA    $C8     
       AND    #$0F    
       BNE    LF3DF   
       LDA    #$08    
       ORA    $DF     
       STA    $DF     
       RTS            

LF3DF: LDA    COLUP1  
       BPL    LF3FA   
       LDA    SWCHB   
       ASL            
       BPL    LF3FA   
       LDA    $EC     
       AND    #$0F    
       BNE    LF3FA   
       DEC    $C8     
       LDA    #$01    
       STA    $EC     
       LDA    #$03    
       JSR    LF430   
LF3FA: LDA    #$F9    
       STA    $A9     
       RTS            

LF3FF: .byte $FF,$D2,$C6,$97,$F8,$52,$1F,$00,$00,$00
LF409: JSR    LF430   
LF40C: LDA    #$B6    
       BNE    LF42C   
LF410: LDA    $C7     
       CMP    #$36    
       BEQ    LF427   
       LDY    #$00    
       STY    $81     
       CMP    #$1F    
       BNE    LF424   
       JSR    LF42A   
       JMP    LFB5A   
LF424: JMP    LFB57   
LF427: JMP    LFE30   
LF42A: LDA    #$B3    
LF42C: LDX    #$01    
       BNE    LF432   
LF430: LDX    #$00    
LF432: LDY    #$F4    
       CPX    #$00    
       BNE    LF43F   
       STY    $E9     
       STA    $E8     
       JMP    LF443   
LF43F: STY    $EB     
       STA    $EA     
LF443: LDY    #$0C    
       STY    AUDC0,X 
       LDA    #$00    
       STA    $E6,X   
LF44B: LDA    $E6,X   
       BPL    LF450   
       RTS            

LF450: DEC    $E6,X   
       BNE    LF458   
       LDA    #$00    
       BEQ    LF46A   
LF458: BMI    LF46D   
       LDA    $E6,X   
       CMP    #$10    
       AND    #$0F    
       BCC    LF467   
       LDA    LF4A3,Y 
       BNE    LF46A   
LF467: LDA    LF4F0,Y 
LF46A: STA    AUDV0,X 
       RTS            

LF46D: LDY    #$00    
       TXA            
       BNE    LF477   
       LDA    ($E8),Y 
       JMP    LF479   
LF477: LDA    ($EA),Y 
LF479: CMP    #$F0    
       BCC    LF485   
       STA    AUDC0,X 
       JSR    LF499   
       JMP    LF46D   
LF485: PHA            
       AND    #$0F    
       TAY            
       LDA    LFDF0,Y 
       STA    $E6,X   
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFDF0,Y 
       STA    AUDF0,X 
LF499: CPX    #$01    
       BEQ    LF4A0   
       INC    $E8     
       RTS            

LF4A0: INC    $EA     
       RTS            

LF4A3: .byte $FF,$DD,$AA
LF4A6: LDA    $DF     
       AND    #$7F    
       STA    $DF     
       LDA    #$5A    
       STA    $A0     
       JMP    LF40C   
LF4B3: .byte $F4,$24,$2E,$07,$24,$2E,$07,$17,$97,$91,$8E,$6E,$87,$B7,$91,$97
       .byte $91,$8E,$6E,$57,$47,$61,$87,$6E,$5E,$61,$21,$27,$27,$21,$27,$47
       .byte $57,$6E,$8E,$6E,$5E,$61,$87,$9E,$BE,$91,$97,$87,$61,$57,$47,$52
       .byte $47,$57,$61,$97,$87,$57,$47,$21,$47,$27,$40,$57,$47
LF4F0: .byte $27,$17,$22,$57,$6E,$8E,$5E,$4E,$2E,$1E,$22,$1F,$F8,$AD,$BB,$1F
LF500: JMP    LF56C   
LF503: LDA    $8D     
       STA    $A8     
       LDA    $8E     
       STA    $AA     
       LDA    $81     
       SEC            
LF50E: SBC    #$14    
       BCS    LF50E   
       ADC    #$14    
       PHA            
       ADC    $A8     
       STA    $A8     
       PLA            
       ADC    $AA     
       STA    $AA     
       LDA    #$14    
       STA    $82     
       INC    $81     
       INC    $81     
       INC    $81     
       INC    $81     
       RTS            

LF52B: .byte $85,$02,$85,$2A,$85,$2B
LF531: DEC    $89     
       LDY    #$15    
       LDX    $ED     
LF537: STA    WSYNC   
       STA    HMOVE   
       LDA    ($86),Y 
       STA    GRP1    
       DEC    $AA,X   
       BNE    LF54C   
       LDA    #$00    
       DEC    $ED     
       STA    PF0,X   
       DEX            
       BNE    LF556   
LF54C: LDA    #$03    
       CMP    $AA,X   
       BCC    LF556   
       LDA    #$FF    
       STA    PF0,X   
LF556: LDA    #$00    
       DEY            
       DEC    $81     
       BNE    LF568   
       JMP    LF681   
LF560: .byte $D0,$03,$4C,$85,$F6,$4C,$50,$F6
LF568: CPY    #$05    
       BNE    LF537   
LF56C: LDY    $89     
       BPL    LF573   
       JMP    LFFB4   
LF573: STA    WSYNC   
       STA    HMOVE   
       LDA.wy $00A0,Y 
       STA    HMP1    
       AND    #$0F    
       STA    $C9     
       LDA.wy $0090,Y 
       STA    $86     
       LDA.wy $0098,Y 
       STA    COLUP1  
       DEC    $AA,X   
       BNE    LF597   
       LDA    #$00    
       DEC    $ED     
       STA    PF0,X   
       DEX            
       BNE    LF5A1   
LF597: LDA    #$03    
       CMP    $AA,X   
       BCC    LF5A1   
       LDA    #$FF    
       STA    PF0,X   
LF5A1: DEC    $81     
       BNE    LF5AB   
       LDA    #$00    
       JMP    LF6AE   
LF5AA: .byte $88
LF5AB: STA    WSYNC   
       STA    HMOVE   
       LDY    $C9     
       CPY    #$06    
       BCS    LF5D4   
LF5B5: DEY            
       BPL    LF5B5   
       STA.w  $0011   
       DEC    $AA,X   
       BNE    LF5C8   
       LDA    #$00    
       STA    PF0,X   
       DEX            
       DEC    $ED     
       BNE    LF5F7   
LF5C8: LDA    #$03    
       CMP    $AA,X   
       BCC    LF5F7   
       LDA    #$FF    
       STA    PF0,X   
       BNE    LF5F7   
LF5D4: DEC    $AA,X   
       BNE    LF5E4   
       LDA    #$00    
       DEC    $ED     
       STA    PF0,X   
       DEX            
       BNE    LF5EE   
LF5E1: SEC            
       BCS    LF5EE   
LF5E4: LDA    $88     
       CMP    $AA,X   
       BCC    LF5E1   
       LDA    #$FF    
       STA    PF0,X   
LF5EE: TYA            
       SBC    #$06    
       TAY            
LF5F2: DEY            
       BPL    LF5F2   
       STA    RESP1   
LF5F7: STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    GRP1    
       DEC    $AA,X   
       BNE    LF60B   
       LDA    #$00    
       DEC    $ED     
       STA    PF0,X   
       DEX            
       BNE    LF615   
LF60B: LDA    #$03    
       CMP    $AA,X   
       BCC    LF615   
       LDA    #$FF    
       STA    PF0,X   
LF615: DEC    $81     
       BNE    LF620   
       LDA    #$00    
       STA    GRP0    
       JMP    LF728   
LF620: DEC    $81     
       BNE    LF627   
       JMP    LF72F   
LF627: STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
LF62D: DEC    $AA,X   
       BNE    LF63A   
       LDA    #$00    
       DEC    $ED     
       STA    PF0,X   
       DEX            
       BNE    LF644   
LF63A: LDA    #$03    
       CMP    $AA,X   
       BCC    LF644   
       LDA    #$FF    
       STA    PF0,X   
LF644: DEC    $81     
       BNE    LF64D   
       LDY    #$15    
       JMP    LF75C   
LF64D: JMP    LF531   
LF650: STA    WSYNC   
       STA    GRP0    
       STA    HMOVE   
       STA    HMCLR   
       LDA    ($86),Y 
       STA    GRP1    
       LDA    ($A8),Y 
       STA    COLUP0  
LF660: DEC    $AA,X   
       BNE    LF66D   
       LDA    #$00    
       DEC    $ED     
       STA    PF0,X   
       DEX            
       BNE    LF677   
LF66D: LDA    #$03    
       CMP    $AA,X   
       BCC    LF677   
       LDA    #$FF    
       STA    PF0,X   
LF677: DEY            
       DEC    $82     
       BPL    LF67F   
       JMP    LF568   
LF67F: LDA    ($AA),Y 
LF681: CPY    #$05    
       BNE    LF650   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($A8),Y 
       STA    COLUP0  
       LDY    $89     
       BPL    LF696   
       JMP    LFFB6   
LF696: LDA.wy $00A0,Y 
       STA    HMP1    
       AND    #$0F    
       STA    $C9     
       LDA.wy $0090,Y 
       STA    $86     
       LDY    #$04    
       LDA    ($AA),Y 
       STA    GRP0    
       LDA    ($A8),Y 
       STA    COLUP0  
LF6AE: STA    WSYNC   
       STA    HMOVE   
       LDY    $C9     
       CPY    #$06    
       BCS    LF6D7   
LF6B8: DEY            
       BPL    LF6B8   
       STA.w  $0011   
       DEC    $AA,X   
       BNE    LF6CB   
       LDA    #$00    
       DEC    $ED     
       STA    PF0,X   
       DEX            
       BNE    LF6FA   
LF6CB: LDA    $88     
       CMP    $AA,X   
       BCC    LF6FA   
       LDA    #$FF    
       STA    PF0,X   
       BNE    LF6FA   
LF6D7: DEC    $AA,X   
       BNE    LF6E7   
       LDA    #$00    
       STA    PF0,X   
       DEC    $ED     
       DEX            
       BCS    LF6F1   
LF6E4: SEC            
       BCS    LF6F1   
LF6E7: LDA    $88     
       CMP    $AA,X   
       BCC    LF6E4   
       LDA    #$FF    
       STA    PF0,X   
LF6F1: TYA            
       SBC    #$06    
       TAY            
LF6F5: DEY            
       BPL    LF6F5   
       STA    RESP1   
LF6FA: STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    GRP1    
       LDY    #$03    
       LDA    ($AA),Y 
       STA    GRP0    
       LDA    ($A8),Y 
       STA    COLUP0  
       DEC    $AA,X   
       BNE    LF718   
       LDA    #$00    
       DEC    $ED     
       STA    PF0,X   
       DEX            
       BNE    LF722   
LF718: LDA    #$03    
       CMP    $AA,X   
       BCC    LF722   
       LDA    #$FF    
       STA    PF0,X   
LF722: DEC    $82     
       DEC    $82     
       DEC    $82     
LF728: LDY    $89     
       LDA.wy $0098,Y 
       STA    COLUP1  
LF72F: STA    HMCLR   
       STA    HMOVE   
       DEC    $82     
       BPL    LF73A   
       JMP    LF62D   
LF73A: LDY    #$02    
       LDA    ($A8),Y 
       STA    COLUP0  
       LDA    ($AA),Y 
       STA    GRP0    
       SEC            
       LDA    $AA     
       SBC    #$14    
       STA    $AA     
       SEC            
       LDA    $A8     
       SBC    #$14    
       STA    $A8     
       LDY    #$15    
       LDA    ($A8),Y 
       STA    COLUP0  
       LDA    ($AA),Y 
       STA    GRP0    
LF75C: LDA    ($86),Y 
       STA    GRP1    
       DEC    $89     
       JMP    LF660   
LF765: LDA    #$DE    
       STA    TIM64T  
       LDA    $EC     
       AND    #$0F    
       CMP    #$01    
       BEQ    LF776   
       LDA    #$02    
       BNE    LF77C   
LF776: LDA    $EC     
       LSR            
       LSR            
       LSR            
       LSR            
LF77C: STA    $C6     
       LDA    #$FC    
       STA    $AB     
       LDA    $DF     
       CMP    #$70    
       BCC    LF78C   
       LDA    #$9A    
       STA    $DB     
LF78C: JMP    LF024   
LF78F: LDA    INTIM   
       BNE    LF78F   
       JMP    LF7D0   
LF797: LDA    $C0     
       STA    $C3     
       LDA    $C1     
       STA    $C4     
       LDA    $C2     
       STA    $C5     
       RTS            

LF7A4: LDX    #$02    
LF7A6: LDA    $C3,X   
       CMP    $C0,X   
       BCC    LF797   
       BNE    LF7B1   
       DEX            
       BPL    LF7A6   
LF7B1: RTS            

LF7B2: STA    $89     
       LDA    $DD     
       AND    #$10    
       BNE    LF7C2   
       LDA    $89     
       ORA    #$08    
       STA.wy $00BD,Y 
       RTS            

LF7C2: LDA    $89     
       STA.wy $00BD,Y 
       RTS            

LF7C8: .byte $00
LF7C9: CLD            
       BPL    LF7CD   
       RTS            

LF7CD: JMP    LF3C7   
LF7D0: LDA    #$FF    
       STA    VBLANK  
       LDA    #$51    
       STA    TIM64T  
       LDX    #$00    
       JSR    LF44B   
       LDX    #$01    
       JSR    LF44B   
       JSR    LF8A5   
       LDA    $DF     
       ASL            
       BMI    LF7EF   
       LDY    #$13    
       STY    $DC     
LF7EF: NOP            
       NOP            
       NOP            
       AND    #$10    
       BEQ    LF801   
       NOP            
       NOP            
       LDA    $E6     
       BPL    LF801   
       LDA    #$B3    
       JSR    LF409   
LF801: JSR    LF7A4   
       JSR    LF350   
LF807: LDA    INTIM   
       BNE    LF807   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$50    
       STA    TIM64T  
       JSR    LF410   
       JSR    LF503   
       STA    VDELP0  
       STA    VDELP1  
       JSR    LF3B0   
       STA    CXCLR   
       STA    COLUPF  
LF830: LDA    INTIM   
       BNE    LF830   
       JMP    LF765   
LF838: CMP    #$4A    
       BNE    LF859   
       NOP            
       JSR    LF4A6   
       LDA    $DF     
       CLC            
       ADC    #$10    
       STA    $DF     
       AND    #$F0    
       TAY            
LF84A: LDA    LF98C,Y 
       STA    $DC     
       LDA    LF98D,Y 
       STA    $DD     
       LDA    LF98E,Y 
       STA    $84     
LF859: RTS            

LF85A: LDA    #$FF    
       STA    $C9     
       LDX    #$07    
LF860: LDA    $C9     
       BPL    LF867   
       JSR    LF86D   
LF867: ASL    $C9     
       DEX            
       BPL    LF860   
       RTS            

LF86D: LDA    $A0,X   
       JSR    LFB1D   
       STA    $A0,X   
       BCC    LF8A4   
       JMP    LF87A   
LF879: .byte $00
LF87A: TXA            
       CLC            
       ADC    $8C     
       TAY            
       LDA    LF980,Y 
       PHA            
       AND    #$0F    
       TAY            
       LDA    LF950,Y 
       CPX    #$3B    
       BNE    LF893   
       DEC    $DD     
       LDA    #$00    
       BEQ    LF895   
LF893: STA    $90,X   
LF895: PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF920,Y 
       CPX    #$3B    
       BEQ    LF8A4   
       STA    $98,X   
LF8A4: RTS            

LF8A5: LDA    #$36    
       CMP    $C7     
       BEQ    LF8AC   
       RTS            

LF8AC: JMP    LFA00   
LF8AF: .byte $60
LF8B0: LDY    #$07    
LF8B2: LDA    ($CF),Y 
       TAX            
       LDA    ($CD),Y 
       STA    WSYNC   
       STA    HMOVE   
       STY    $8A     
       STA    $C9     
       LDA    ($D7),Y 
       STA    GRP0    
       LDA    ($D5),Y 
       STA    GRP1    
       LDA    ($D3),Y 
       STA    GRP0    
       LDA    ($D1),Y 
       LDY    $C9     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $8A     
       DEY            
       BPL    LF8B2   
       JMP    LF300   
LF8DF: .byte $60
LF8E0: LDA    $A0,X   
       AND    #$0F    
       STA    $8B     
       LDA    $A0,X   
       ASL            
       ASL            
       ASL            
       ASL            
       AND    #$F0    
       SEC            
       SBC    $8B     
       STA    $8B     
       LDA    $A0,X   
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$07    
       AND    #$0F    
       CLC            
       ADC    $8B     
       RTS            

LF901: .byte $9C,$9C,$9B,$9C,$CC,$BB,$9B,$9A,$BA,$CA,$9A,$BA,$C9,$B9,$98,$99
       .byte $36,$21,$22,$22,$28,$24,$24,$00,$00,$00,$00,$00,$00,$00,$00
LF920: .byte $0F,$14,$15,$93,$B5,$B8,$25,$27,$54,$55,$6A,$66,$C6,$D6,$E6,$F6
LF930: .byte $1A,$20,$12,$16,$18,$18,$1A,$1C,$10,$14,$14,$14,$14,$14,$14,$18
LF940: .byte $00,$01,$11,$75,$77,$00,$D5,$51,$10,$51,$11,$01,$15,$55,$15,$00
LF950: .byte $25,$32,$55,$00,$12,$24,$11,$00,$20,$30,$30,$21,$13,$51,$1A,$3F
       .byte $C8,$60,$04,$20,$54,$30,$0D,$80,$00,$00,$00,$00,$00,$00,$00,$00
LF970: .byte $FF,$FE,$FE,$FC,$FC,$F8,$F0,$F0,$E0,$80,$F8,$F0,$F0,$C0,$C0,$80
LF980: .byte $10,$10,$36,$20,$10,$18,$0B,$0A
LF988: .byte $80
LF989: .byte $08,$7F
LF98B: .byte $FF
LF98C: .byte $12
LF98D: .byte $52
LF98E: .byte $40,$0F,$46,$46,$60,$56,$13,$08,$0A,$0B,$80,$08,$01,$FF,$13,$22
       .byte $01,$00,$13,$43,$53,$72,$17,$0C,$09,$0A,$20,$88,$01,$FF,$13,$62
       .byte $40,$0F,$C7,$72,$C7,$20,$C7,$08,$0B,$0A,$20,$80,$01,$FF,$13,$42
       .byte $11,$00,$72,$C7,$72,$46,$C7,$0C,$0B,$0B,$82,$08,$01,$FF,$13,$32
       .byte $11,$A1,$20,$82,$82,$82,$72,$08,$0A,$0C,$D8,$28,$01,$FF,$13,$13
       .byte $11,$A1,$00,$B2,$A7,$B2,$43,$08,$0C,$0A,$82,$28,$01,$FF,$12,$53
       .byte $55,$00,$70,$32,$32,$32,$02,$08,$0A,$09,$82,$28,$01,$FF,$40,$62
       .byte $D5,$00
LFA00: LDA    $EC     
       CLC            
       ADC    #$10    
LFA05: STA    $EC     
       AND    #$07    
       BEQ    LFA44   
       CMP    #$01    
       BNE    LFA37   
       LDA    $EC     
       AND    #$F0    
       BEQ    LFA18   
LFA15: JMP    LFAAF   
LFA18: LDA    #$9A    
       STA    $A4     
       LDA    #$01    
       STA    $CC     
       LDA    #$22    
       STA    $CB     
       LDA    REFP1   
       BPL    LFA2E   
       LDA    #$F1    
       STA    $EC     
       BNE    LFA15   
LFA2E: LDA    #$00    
       JSR    LF430   
LFA33: LDA    #$00    
       BEQ    LFA05   
LFA37: CMP    #$02    
       BNE    LFA33   
       LDA    $EC     
       AND    #$F0    
       BEQ    LFA33   
       JSR    LFF45   
LFA44: LDX    #$07    
LFA46: DEX            
       BMI    LFA5B   
       LDA    $90,X   
       CMP    #$45    
       BNE    LFA53   
       LDA    #$32    
       STA    $90,X   
LFA53: BCS    LFA46   
       CMP    #$40    
       BCC    LFA46   
       INC    $90,X   
LFA5B: LDA    REFP1   
       BMI    LFAB6   
       LDA    SWCHA   
       CMP    #$F0    
       BCS    LFAB6   
       LDA    $E3     
       AND    #$03    
       CMP    #$03    
       BNE    LFAAF   
       LDA    SWCHA   
       BMI    LFA94   
       LDA    $BD     
       BPL    LFAAF   
       AND    #$6F    
       STA    $BD     
       LDA    #$FC    
       JSR    LF430   
       LDA    #$00    
       STA    $B6     
       LDA    $CB     
       ADC    #$04    
       STA    $B0     
       LDA    $CC     
       CLC            
       ADC    #$3B    
       STA    $B3     
       JMP    LFAAF   
LFA94: ASL            
       ASL            
       BMI    LFAA4   
       LDA    #$0F    
       CLC            
       ADC    $BD     
       JMP    LFAAB   
LFAA0: .byte $00,$00,$00,$00
LFAA4: ASL            
       BMI    LFAAF   
       INC    $BD     
       LDA    $BD     
LFAAB: AND    #$EF    
       STA    $BD     
LFAAF: LDA    $CC     
       STA    $81     
       JMP    LFAF0   
LFAB6: LDA    SWCHA   
       AND    #$30    
       BNE    LFAC0   
       JMP    LFADB   
LFAC0: ASL            
       ASL            
       BMI    LFAC8   
       INC    $CC     
       BNE    LFACD   
LFAC8: ASL            
       BMI    LFACD   
       DEC    $CC     
LFACD: LDA    $CC     
       BPL    LFAD3   
       LDA    #$00    
LFAD3: CMP    #$51    
       BCC    LFADD   
       LDA    #$4F    
       BNE    LFADD   
LFADB: LDA    $CC     
LFADD: STA    $CC     
       STA    $81     
       LDA    SWCHA   
       BMI    LFAEB   
       INC    $CB     
       JMP    LFAF0   
LFAEB: ASL            
       BMI    LFAF0   
       DEC    $CB     
LFAF0: LDA    #$FC    
       AND    $DF     
       TAY            
       LDA    $CB     
       CMP    #$38    
       BCS    LFAFE   
       INY            
       LDA    #$38    
LFAFE: PHA            
       LDA    $DF     
       AND    #$7F    
       JMP    LFB38   
LFB06: STY    $DF     
LFB08: STA    $CB     
       JSR    LFB17   
       JSR    LFDD1   
       LDX    #$02    
       JMP    LFFD1   
LFB15: .byte $A9,$BB
LFB17: JSR    LFF9B   
       JMP    LFF83   
LFB1D: CLC            
       ADC    #$10    
       PHA            
       AND    #$F0    
       CMP    #$80    
       BEQ    LFB32   
       PLA            
LFB28: CMP    #$91    
       BEQ    LFB2E   
       CLC            
       RTS            

LFB2E: SEC            
       LDA    #$9A    
       RTS            

LFB32: PLA            
       CLC            
       ADC    #$0F    
       BNE    LFB28   
LFB38: CMP    #$70    
       BCS    LFB4C   
       PLA            
       CMP    #$52    
       BCC    LFB49   
       LDA    #$50    
       BNE    LFB47   
LFB45: LDA    #$A7    
LFB47: INY            
       INY            
LFB49: JMP    LFB06   
LFB4C: PLA            
       CMP    #$A8    
       BCC    LFB49   
       LDX    $CC     
       BNE    LFB45   
       STX    $DF     
LFB57: JSR    LFF45   
LFB5A: DEC    $C7     
       LDA    #$22    
       JMP    LFF01   
LFB61: .byte $7E,$7E,$FE,$FF,$FF,$2F,$28,$24,$F4,$D2,$71,$50,$70,$30,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C
       .byte $66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E
       .byte $60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C
       .byte $0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C
       .byte $66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C
       .byte $66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$6B,$7F,$6E,$3E,$3F,$7D,$5F,$4E,$A6,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$0F,$0E,$0C,$08,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$FF,$D6,$FE,$76,$FF,$D6,$FE,$76,$7C
       .byte $7C,$34,$04,$04,$0A,$09,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$FF,$FF,$2F,$28,$28,$F4,$D4,$74,$52
       .byte $72,$30,$00,$00,$00,$00,$00,$00,$00,$7C,$7E,$7E,$FE,$FF,$FF,$2F
       .byte $2F,$20,$F0,$D0,$70,$50,$70,$30,$00,$00,$00,$00,$00,$00,$7C,$7E
       .byte $7E,$FE,$FF,$FF,$2F,$2C,$23,$F0,$D0,$70,$50,$70,$30,$00,$00,$00
       .byte $00,$00,$00,$7C,$7E,$7E,$FE,$FF,$FF,$2F,$24,$22,$F1,$D0,$70,$50
       .byte $70,$30,$00,$00,$00,$00,$00,$00,$7C,$7E,$7E,$FE,$FF,$FF,$2F,$28
       .byte $24,$F2,$D1,$70,$50,$70,$30,$00,$00,$00,$00,$00,$00,$7C,$7E,$7E
       .byte $FE,$FF,$FF,$2F,$28,$24,$F4,$D2,$71,$50,$70,$30,$00,$00,$00,$00
       .byte $00,$00,$7C,$7E,$7E,$FE,$FF,$FF,$2F,$28,$24,$F4,$D2,$72,$51,$70
       .byte $30,$00,$00,$00,$00,$00,$00,$7C,$7E,$7E,$FE,$FF,$FF,$2F,$28,$28
       .byte $F4,$D4,$74,$52,$72,$30,$00,$00,$00,$00,$00,$00,$7C,$7E,$7E,$FE
       .byte $FF,$FF,$2F,$28,$28,$F8,$D4,$74,$54,$74,$34,$00,$00,$00,$00
LFD00: .byte $18,$06,$17,$09,$17,$0B,$16,$0E,$15,$11,$14,$14,$12,$16,$11,$18
       .byte $0F,$1A,$0E,$1C,$0C,$1E,$0A,$1F,$08,$20,$06,$21,$04,$22,$02,$22
LFD20: LDA    #$00    
       STA    $89     
       STA    $8B     
       LDY    #$07    
LFD28: ASL    $8A     
       BCC    LFD39   
       CLC            
       LDA    $8B     
       ADC    $C9     
       STA    $8B     
       LDA    $89     
       ADC    #$00    
       STA    $89     
LFD39: ASL    $8B     
       ROL    $89     
       DEY            
       BPL    LFD28   
       CLC            
       ROR    $89     
       ROR    $8B     
       CLC            
       ROR    $89     
       ROR    $8B     
       CLC            
       ROR    $89     
       ROR    $8B     
       RTS            

LFD50: CMP    #$FF    
       BNE    LFD5A   
LFD54: LDA    #$FF    
       RTS            

LFD57: LDA    $E0,X   
LFD59: RTS            

LFD5A: LDY    $BD,X   
       BPL    LFD59   
       CPX    #$00    
       BEQ    LFD89   
       LDA    $B3,X   
       SBC    $CC     
       SBC    #$34    
       CMP    #$15    
       BCS    LFD57   
       LDA    $E0,X   
       SBC    #$00    
       SBC    $CB     
       CMP    #$10    
       BCS    LFD57   
       DEC    $C8     
       LDA    #$01    
       STA    $EC     
       LDA    #$00    
       JSR    LF430   
       LDA    #$80    
       STA    $BE     
       STA    $BF     
       BNE    LFDA1   
LFD89: LDA    $B3     
       LDX    #$05    
       SBC    #$1C    
LFD8F: DEX            
       SBC    #$15    
       CMP    #$15    
       BCS    LFD8F   
       JSR    LF8E0   
       ADC    #$28    
       SBC    $E0     
       CMP    #$10    
       BCC    LFDA5   
LFDA1: LDX    #$00    
       BEQ    LFD57   
LFDA5: LDA    $90,X   
       CMP    #$53    
       BCC    LFDB3   
       LDA    #$40    
       STA    $90,X   
       LDY    #$08    
       BNE    LFDC1   
LFDB3: LDY    #$10    
LFDB5: DEY            
       BMI    LFD54   
       CMP    LF950,Y 
       BNE    LFDB5   
       LDA    #$32    
       STA    $90,X   
LFDC1: JSR    LFFE5   
       STA    $EC     
       LDA    #$50    
       STA    $98,X   
       LDA    #$F4    
       JSR    LF430   
       BNE    LFDA1   
LFDD1: LDA    $EC     
       AND    #$07    
       CMP    #$01    
       BNE    LFDDD   
       LDA    #$40    
       BNE    LFDEB   
LFDDD: LDA    $BD     
       AND    #$0F    
       TAY            
       LDA    #$41    
LFDE4: CLC            
       ADC    #$15    
       DEY            
       DEY            
       BPL    LFDE4   
LFDEB: STA    $8E     
       RTS            

LFDEE: .byte $00,$00
LFDF0: .byte $1F,$1A,$37,$55,$13,$11,$0F,$0E,$0C,$0B,$0A,$09,$28,$07,$05,$FF
LFE00: .byte $7F,$40,$4F,$AA,$08,$21,$00,$FC,$00,$00,$00,$00,$20,$0C,$80,$FF
       .byte $53,$53,$53,$53,$53,$20,$30,$30,$0F,$14,$24,$34,$44,$54,$64,$74
       .byte $14,$15,$16,$17,$18,$19,$1A,$55,$05,$F9,$31,$FC,$00,$FF,$00,$03
LFE30: LDY    #$00    
       STY    $89     
       LDA    $E3     
       AND    #$07    
       TAX            
       SEC            
LFE3A: ROL    $89     
       DEX            
       BPL    LFE3A   
       LDA    $DF     
       AND    #$70    
       TAY            
       STA    $8C     
       LDA    $DF     
       ROR            
       BCS    LFE6B   
       LDA    LF988,Y 
       AND    $89     
       BEQ    LFE6B   
       LDA    LF988,Y 
       BPL    LFE63   
       LDA    $E3     
       CMP    #$A0    
       BCS    LFE61   
       DEC    $CC     
       BPL    LFE63   
LFE61: INC    $CC     
LFE63: JSR    LF85A   
       LDX    INPT3   
       JSR    LF86D   
LFE6B: LDA    $DF     
       AND    #$02    
       BEQ    LFE82   
       LDY    $8C     
       LDA    LF989,Y 
       AND    $89     
       BEQ    LFE82   
       JSR    LF85A   
       LDX    INPT3   
       JSR    LF86D   
LFE82: LDY    $8C     
       LDA    LF98B,Y 
       AND    $89     
       BEQ    LFEB1   
       LDX    #$07    
LFE8D: LDA    $90,X   
       STA    $8B     
       LDY    #$10    
LFE93: DEY            
       BMI    LFEA5   
       LDA    $8B     
       SEC            
       SBC    LF950,Y 
       CMP    #$01    
       BCS    LFE93   
       LDA    LF940,Y 
       BCC    LFEA7   
LFEA5: LDA    $84     
LFEA7: AND    $89     
       BEQ    LFEAE   
       JSR    LF86D   
LFEAE: DEX            
       BPL    LFE8D   
LFEB1: INC    $E3     
       LDA    $E3     
       TAY            
       AND    #$07    
       TAX            
       LDA    $90,X   
       CMP    #$53    
       BCC    LFEFC   
       LDA    $BE     
       BPL    LFEC7   
       LDY    #$01    
       BNE    LFECD   
LFEC7: LDA    $BF     
       BPL    LFEFC   
       LDY    #$02    
LFECD: STX    $C9     
       LDA    #$9D    
LFED1: SBC    #$14    
       DEX            
       BPL    LFED1   
       STA.wy $00B3,Y 
       LDX    $C9     
       JSR    LF8E0   
       ADC    #$22    
       STA.wy $00B0,Y 
       LDA    #$00    
       STA.wy $00B6,Y 
       LDA    $E3     
       EOR    $A1     
       AND    #$0F    
       JSR    LF7B2   
       TAY            
       LDA    #$3E    
LFEF4: ADC    #$15    
       DEY            
       DEY            
       BPL    LFEF4   
       STA    $90,X   
LFEFC: LDA    $A0     
       JMP    LF838   
LFF01: STA    $A4     
       LDA    #$BB    
       JMP    LFB08   
LFF08: LDA    #$9A    
       STA    $DB     
LFF0C: LDA    #$00    
       STA    $C0     
       STA    $C1     
       STA    $C2     
       LDA    #$08    
       STA    $DF     
       LDA    #$A8    
       LDX    #$0A    
LFF1C: STA    $CD,X   
       DEX            
       DEX            
       BPL    LFF1C   
       RTS            

LFF23: .byte $48,$68,$48,$68,$48,$68,$48,$68,$60,$00,$44,$88,$DD,$AA,$88,$BB
       .byte $FF,$FF,$EE,$DD,$FF
LFF38: LDX    #$2F    
LFF3A: LDA    LFE00,X 
       STA    $80,X   
       DEX            
       BPL    LFF3A   
       LDA    #$00    
       RTS            

LFF45: LDA    #$09    
       SED            
       ADC    $C0     
       STA    $C0     
       LDA    $C1     
       ADC    #$00    
       STA    $C1     
       LDA    $C2     
       ADC    #$00    
       STA    $C2     
       LDA    SWCHB   
       JMP    LF7C9   
LFF5E: CLC            
       LDA    #$D0    
       LDX    #$00    
LFF63: STA    $CD,X   
       INX            
       INX            
       ADC    #$08    
       BNE    LFF63   
       RTS            

LFF6C: .byte $F3
LFF6D: LDA    $C3     
       JSR    LF365   
       LDA    $C4     
       JSR    LF367   
       LDA    $C5     
       JMP    LF367   
LFF7C: .byte $E8,$E8,$E0,$0C,$D0,$E5,$60
LFF83: LDX    #$00    
LFF85: STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
LFF8C: DEY            
       BPL    LFF8C   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       RTS            

LFF9A: .byte $60
LFF9B: LDY    #$00    
       STY    $8A     
LFF9F: CMP    #$0F    
       BCC    LFFAA   
       INC    $8A     
       SEC            
       SBC    #$0F    
       BCS    LFF9F   
LFFAA: ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       CLC            
       ADC    $8A     
       RTS            

LFFB4: STA    WSYNC   
LFFB6: STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENABL   
       RTS            

LFFC1: .byte $29,$0F,$A8,$A9,$A8,$18,$88,$30,$04,$69,$08,$D0,$F9,$85,$D7,$60
LFFD1: LDA    $DF     
       AND    #$08    
       BNE    LFFDA   
       JMP    LF1A0   
LFFDA: LDA    $DF     
       AND    #$3F    
       STA    $DF     
       LDA    #$FF    
       STA    $BC     
       RTS            

LFFE5: LDA    LF930,Y 
       CMP    #$20    
       BEQ    LFFF5   
       SEC            
       SBC    $BD     
       ASL            
       AND    #$3C    
       SEC            
       ROL            
       ASL            
LFFF5: RTS            

LFFF6: .byte $00,$00,$00,$00,$00,$4C,$00,$F0,$00,$F0
