; Disassembly of roms/Adventures of Tron.bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Adventures of Tron.bin
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
RESM1   =  $13
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF733   =   $F733

       ORG $F000
LF000: .byte $7E,$66,$66,$66,$66,$7E,$7E,$18,$18,$18,$18,$78,$7E,$60,$7E,$06
       .byte $66,$7E,$7E,$06,$06,$7C,$06,$7E,$06,$06,$7E,$66,$66,$66,$7E,$66
       .byte $06,$7E,$60,$7E,$7E,$66,$66,$7E,$60,$7E,$20,$30,$18,$0C,$06,$7E
       .byte $7E,$66,$66,$3C,$66,$7E,$7E,$06,$7E,$66,$66,$7E
LF03C: .byte $08,$08,$08,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F
LF047: .byte $0D,$0E,$0F,$10,$11,$12,$13,$14,$15,$15,$15
LF052: .byte $0A,$0B,$0D,$0F,$11,$12,$14,$17,$19,$19,$19
LF05D: .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$07,$07,$07,$07
LF06B: .byte $48,$48,$48,$68,$68,$38,$38,$68,$48,$48,$49,$69,$79,$39
LF079: .byte $08,$04,$02,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$E0,$80,$E1,$80,$E1,$80,$E1,$80,$E2,$80,$E2,$80,$E2,$80
       .byte $E2,$80,$E2,$00,$00,$00
LF0BF: .byte $00,$06,$0C,$12,$18,$1E,$24,$2A,$30,$36,$3C,$0E,$0E,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0E
       .byte $0E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00
LF0F2: LDA    $DE     
       ASL            
       ASL            
       ASL            
       EOR    $DE     
       ASL            
       ROL    $DE     
       LDA    $DE     
       RTS            

LF0FF: .byte $2C

START:
LF100: CLD            
       LDX    #$00    
       TXA            
LF104: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF104   
       LDX    #$FD    
       TXS            
       LDA    SWCHB   
       AND    #$02    
       ORA    #$80    
       STA    $D6     
       STA    $DE     
       BIT    SWCHB   
       BVC    LF121   
       LDA    #$08    
       STA    $DB     
LF121: LDA    #$28    
       STA    TIM64T  
       INC    $DF     
       BIT    $D6     
       BMI    LF141   
       JSR    LF8C1   
       JSR    LF56A   
       JSR    LF22F   
       JSR    LF394   
       JSR    LF536   
       JSR    LF667   
       JSR    LF9FD   
LF141: LDA    SWCHB   
       LSR            
       BCC    LF100   
LF147: LDA    INTIM   
       BPL    LF147   
       STA    WSYNC   
       LDX    #$02    
       STX    VSYNC   
LF152: STA    WSYNC   
       JSR    LF0F2   
       DEX            
       BNE    LF152   
       JSR    LF0F2   
       STX    VSYNC   
       LDA    #$33    
       STA    TIM64T  
       BIT    $D6     
       BMI    LF180   
       JSR    LF18C   
       JSR    LF94B   
       JSR    LFBD5   
LF171: LDA    INTIM   
       BPL    LF171   
       BIT    $D6     
       BMI    LF186   
       JSR    LFC05   
       JMP    LF121   
LF180: JSR    LF8A9   
       JMP    LF171   
LF186: JSR    LF76A   
       JMP    LF121   
LF18C: LDA    #$04    
       BIT    $D6     
       BNE    LF1D6   
       LDX    #$10    
LF194: LDA    $80,X   
       BEQ    LF1B2   
       LDA    $A2,X   
       JSR    LF1D7   
       ADC    $80,X   
       CPX    #$00    
       BNE    LF1AB   
       CMP    #$03    
       BCC    LF1B2   
       CMP    #$92    
       BCS    LF1B2   
LF1AB: STA    $80,X   
       JSR    LFAF4   
       STA    $91,X   
LF1B2: DEX            
       BPL    LF194   
       LDA    $B4     
       JSR    LF1D7   
       ASL            
       STA    $E5     
       CLC            
       ADC    $B3     
       CMP    #$B4    
       BCS    LF1CD   
       STA    $B3     
       LDA    $B5     
       SEC            
       SBC    $E5     
       STA    $B5     
LF1CD: LDA    $E3     
       CLC            
       ADC    #$09    
       AND    #$0F    
       STA    $E3     
LF1D6: RTS            

LF1D7: CLC            
       ADC    $E3     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$08    
       SEC            
       SBC    #$08    
       CLC            
       RTS            

LF1E5: BIT    $D7     
       BMI    LF212   
       LDA    #$03    
       LDX    $B4     
       BMI    LF1FD   
       CPX    #$02    
       BCC    LF203   
       LDX    $E6     
       CPX    #$0E    
       BEQ    LF201   
       CPX    #$0D    
       BNE    LF203   
LF1FD: LDA    #$0A    
       BNE    LF203   
LF201: LDA    #$FD    
LF203: JSR    LF35A   
       LDA    $B3     
       CMP    #$90    
       BCC    LF22E   
       LDA    #$90    
       STA    $B3     
       BNE    LF28A   
LF212: LDA    #$F9    
       JSR    LF35A   
       LDA    $B3     
       CMP    #$04    
       BCS    LF22E   
       JSR    LFE07   
       LDA    $D7     
       AND    #$77    
       STA    $D7     
       LDA    #$8E    
       STA    $B3     
       LDA    #$DF    
       STA    $B4     
LF22E: RTS            

LF22F: LDA    #$04    
       BIT    $D6     
       BVS    LF290   
       BNE    LF290   
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    SWCHA   
       STA    $E6     
       LDY    $DB     
       CPY    #$0A    
       BCC    LF24B   
       LDY    #$0A    
LF24B: LDA    $E4     
       CMP    #$01    
       BCC    LF2B6   
       BEQ    LF291   
       CMP    #$03    
       BCC    LF1E5   
       BEQ    LF272   
       LDA    $80     
       CMP    #$05    
       BCC    LF269   
       CMP    #$91    
       BCS    LF269   
       LDA    REFP1   
       AND    PF0     
       BMI    LF290   
LF269: LDA    #$02    
       STA    $B4     
       LDA    #$01    
       STA    $E4     
       RTS            

LF272: LDA    $DD     
       BEQ    LF284   
       BPL    LF290   
       LDX    $E6     
       CPX    #$0D    
       BNE    LF290   
       SEC            
       SBC    #$40    
       STA    $DD     
       RTS            

LF284: LDA    $D6     
       AND    #$FE    
       STA    $D6     
LF28A: LDA    #$00    
       STA    $B4     
       STA    $E4     
LF290: RTS            

LF291: LDA    LF052,Y 
       JSR    LF35A   
       LDA    $B4     
       BMI    LF290   
       LDA    $B3     
LF29D: CMP    #$28    
       BCC    LF2A5   
       SBC    #$28    
       BCS    LF29D   
LF2A5: CMP    #$1C    
       BCS    LF290   
       SEC            
       SBC    #$18    
       BCC    LF290   
       EOR    #$FF    
       ADC    $B3     
       STA    $B3     
       BNE    LF28A   
LF2B6: LDA    $80     
       CMP    #$46    
       BNE    LF2D9   
       BIT    $D7     
       BMI    LF2D3   
       LDA    $B3     
       CMP    #$90    
       BEQ    LF2D9   
       LDA    #$04    
       STA    $B4     
LF2CA: LDA    #$00    
       STA    $A2     
       LDA    #$02    
       STA    $E4     
       RTS            

LF2D3: LDA    #$F8    
       STA    $B4     
       BNE    LF2CA   
LF2D9: LDA    $80     
       CMP    #$17    
       BCC    LF312   
       CMP    #$23    
       BCC    LF2EB   
       CMP    #$6A    
       BCC    LF312   
       CMP    #$76    
       BCS    LF312   
LF2EB: LDA    $DD     
       BNE    LF312   
       LDA    $E6     
       CMP    #$0E    
       BNE    LF312   
       LDA    $D6     
       AND    #$01    
       BEQ    LF312   
       LDA    $B3     
       CMP    #$18    
       BEQ    LF312   
       LDA    #$13    
       STA    $DD     
       LDA    #$00    
       STA    $A2     
       LDA    #$03    
       STA    $E4     
       DEC    $B3     
       DEC    $B3     
       RTS            

LF312: LDA    $E6     
       LSR            
       LSR            
       LSR            
       BCC    LF321   
       LSR            
       BCS    LF329   
       LDA    LF03C,Y 
       BNE    LF329   
LF321: LDA    LF03C,Y 
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF329: STA    $A2     
       LDA    $E6     
       CMP    #$0D    
       BEQ    LF34D   
       LDA    REFP1   
       AND    PF0     
       BMI    LF34C   
       LDA    $A2     
       LSR            
       EOR    #$40    
       SEC            
       SBC    #$40    
       STA    $A2     
       LDA    LF047,Y 
       EOR    #$FF    
       STA    $B4     
LF348: LDA    #$01    
       STA    $E4     
LF34C: RTS            

LF34D: LDA    $B3     
       CMP    #$90    
       BEQ    LF34C   
       CLC            
       ADC    #$04    
       STA    $B3     
       BNE    LF348   
LF35A: JSR    LF1D7   
       ADC    $B4     
       STA    $B4     
       RTS            

LF362: LDA    #$00    
       STA    $B4     
       BIT    $D6     
       BVS    LF37A   
       LDY    #$04    
       LDX    #$02    
       BIT    $D7     
       BPL    LF376   
       LDY    #$8E    
       LDX    #$FC    
LF376: STY    $B3     
       STX    $B4     
LF37A: LDA    #$02    
       STA    $E4     
       LDA    #$46    
       STA    $80     
       LDA    #$00    
       STA    $A2     
       LDX    #$02    
LF388: LDA    LF391,X 
       STA    $E0,X   
       DEX            
       BPL    LF388   
       RTS            

LF391: .byte $FA,$C6,$64
LF394: LDX    #$07    
LF396: LDA    $80,X   
       BEQ    LF3F8   
       LDY    $B5,X   
       CPY    #$31    
       BEQ    LF401   
       CPY    #$29    
       BEQ    LF40F   
       LDY    $A2,X   
       BPL    LF3BB   
       CMP    #$01    
       BNE    LF3C5   
       JSR    LF520   
       LDA    $CD,X   
       CMP    #$02    
       BNE    LF3F8   
       JSR    LF485   
       JMP    LF3F8   
LF3BB: CMP    #$21    
       BNE    LF3C5   
       JSR    LF50B   
       JMP    LF3F8   
LF3C5: CMP    #$53    
       BNE    LF3DE   
       LDA    $A2,X   
       ASL            
       LDA    #$00    
       ROL            
       SEC            
       ROL            
       ROL            
       STA    $CD,X   
       CMP    #$06    
       BEQ    LF3F8   
       JSR    LF485   
       JMP    LF3F8   
LF3DE: CMP    #$73    
       BNE    LF3ED   
       LDA    $A2,X   
       ASL            
       LDA    #$00    
       ROL            
       ROL            
       STA    $CD,X   
       BCC    LF3F8   
LF3ED: CMP    #$93    
       BNE    LF3F8   
       LDA    $A2,X   
       BMI    LF3F8   
       JSR    LFDFE   
LF3F8: DEX            
       DEX            
       BPL    LF396   
       LDA    $87     
       BEQ    LF416   
       RTS            

LF401: CMP    #$01    
       BNE    LF3F8   
       SEC            
LF406: JSR    LF485   
       JSR    LFDFE   
       JMP    LF3F8   
LF40F: CMP    #$91    
       BNE    LF3F8   
       CLC            
       BCC    LF406   
LF416: LDA    $DF     
       ADC    #$05    
       AND    #$1F    
       BEQ    LF428   
       LDY    $DB     
       CPY    #$0E    
       BCC    LF484   
       AND    #$0F    
       BNE    LF484   
LF428: LDA    $DC     
       AND    #$07    
       BNE    LF482   
       JSR    LF0F2   
       TAY            
       AND    #$F0    
       EOR    #$06    
       STA    $E6     
       LDA    $DC     
       SEC            
       SBC    #$08    
       STA    $E5     
       EOR    $DC     
       BPL    LF472   
       LDA    $E5     
       ASL            
       LDA    $85     
       BEQ    LF460   
       BCS    LF45C   
       CMP    #$83    
       BCS    LF484   
       LDX    $D2     
       CPX    #$05    
       BEQ    LF460   
       CMP    #$43    
       BCS    LF484   
       BCC    LF460   
LF45C: CMP    #$15    
       BCC    LF484   
LF460: LDA    #$0A    
       SEC            
       SBC    $DB     
       BCS    LF469   
       LDA    #$00    
LF469: ASL            
       ASL            
       ASL            
       ASL            
       ASL    $E5     
       ROR            
       STA    $E5     
LF472: TYA            
       AND    #$07    
       ORA    $E5     
       STA    $DC     
       ASL            
       JSR    LF4DE   
       LDX    #$07    
       JMP    LF4AB   
LF482: DEC    $DC     
LF484: RTS            

LF485: TXA            
       TAY            
       DEX            
       DEX            
       BMI    LF4CF   
       PHP            
       LDA.wy $00C5,Y 
       STA    $E6     
       LDA.wy $00B5,Y 
       CMP    #$21    
       BEQ    LF49E   
       EOR    #$18    
       LDY    #$05    
       BNE    LF4A6   
LF49E: LDY    #$00    
       CPX    #$01    
       BNE    LF4A6   
       LDA    #$51    
LF4A6: STA    $E7     
       STY    $E8     
       PLP            
LF4AB: BCS    LF4BA   
       JSR    LF4D2   
       EOR    #$FF    
       TAY            
       INY            
       STY    $A2,X   
       LDA    #$93    
       BNE    LF4C1   
LF4BA: JSR    LF4D2   
       STA    $A2,X   
       LDA    #$01    
LF4C1: STA    $80,X   
       LDA    $E6     
       STA    $C5,X   
       LDA    $E7     
       STA    $B5,X   
       LDA    $E8     
       STA    $CD,X   
LF4CF: INX            
       INX            
       RTS            

LF4D2: LDA    $DB     
       CLC            
       ADC    #$06    
       CMP    #$10    
       BCC    LF4DD   
       LDA    #$10    
LF4DD: RTS            

LF4DE: PHP            
       TYA            
       AND    #$03    
       STA    $E5     
       LDA    $DB     
       LSR            
       CMP    #$03    
       BCC    LF4ED   
       LDA    #$03    
LF4ED: CLC            
       ADC    $E5     
       AND    #$04    
       BEQ    LF501   
       LDY    #$05    
       PLP            
       BCS    LF4FD   
       LDX    #$31    
       BNE    LF506   
LF4FD: LDX    #$29    
       BNE    LF506   
LF501: LDY    #$00    
       PLP            
       LDX    #$21    
LF506: STX    $E7     
       STY    $E8     
       RTS            

LF50B: LDA    $CD,X   
       CMP    #$05    
       BCS    LF51F   
       ASL            
       ORA    #$02    
       STA    $CD,X   
       LDA    #$01    
       STA    $80,X   
       JSR    LFAF4   
       STA    $91,X   
LF51F: RTS            

LF520: LDA    $CD,X   
       BEQ    LF533   
       LSR            
       AND    #$FE    
       STA    $CD,X   
       LDA    #$21    
       STA    $80,X   
       JSR    LFAF4   
       STA    $91,X   
       RTS            

LF533: JMP    LFDFE   
LF536: LDA    #$04    
       BIT    $D6     
       BNE    LF569   
       LDA    $DD     
       BNE    LF551   
       LDA    $80     
       CMP    #$46    
       BNE    LF569   
       LDA    $D6     
       ORA    #$01    
       STA    $D6     
       LDA    #$13    
       STA    $DD     
       RTS            

LF551: CLC            
       ADC    #$80    
       BCS    LF559   
       STA    $DD     
       RTS            

LF559: AND    #$1F    
       SBC    #$01    
       STA    $DD     
       LDA    $E4     
       CMP    #$03    
       BNE    LF569   
       DEC    $B3     
       DEC    $B3     
LF569: RTS            

LF56A: LDA    #$04    
       BIT    $D6     
       BEQ    LF5A5   
       LDA    $DF     
       AND    #$07    
       BNE    LF5A4   
       LDX    #$02    
LF578: LDA    $E0,X   
       SEC            
       SBC    #$01    
       STA    $E0,X   
       DEX            
       BPL    LF578   
       AND    #$0F    
       CMP    #$0F    
       BNE    LF5A4   
       LDA    $D6     
       AND    #$FB    
       CLC            
       ADC    #$10    
       STA    $D6     
       AND    #$40    
       BNE    LF59B   
       JSR    LF744   
       JMP    LF362   
LF59B: LDA    $D7     
       AND    #$7F    
       STA    $D7     
       JSR    LF362   
LF5A4: RTS            

LF5A5: LDA    $DF     
       AND    #$0F    
       BNE    LF5B7   
       LDA    #$08    
       BIT    $D7     
       BNE    LF5B7   
       LDA    $D7     
       AND    #$7F    
       STA    $D7     
LF5B7: LDA    $E4     
       BEQ    LF630   
       CMP    #$01    
       BNE    LF62F   
       LDX    #$10    
       BIT    VBLANK  
       BMI    LF5CB   
       LDX    #$08    
       BIT    COLUP1  
       BPL    LF62F   
LF5CB: LDA    $B3     
       LDY    #$00    
LF5CF: CMP    #$1F    
       BCC    LF5DC   
       INY            
       DEX            
       DEX            
       SBC    #$28    
       BCS    LF5CF   
       BCC    LF5E0   
LF5DC: CMP    #$14    
       BCS    LF646   
LF5E0: LDA    $80,X   
       BEQ    LF646   
       SEC            
       SBC    $80     
       CMP    #$0A    
       BCC    LF5EF   
       CMP    #$F9    
       BCC    LF646   
LF5EF: LDA    $B4     
       BPL    LF5F8   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF5F8: CMP    #$02    
       BCS    LF62F   
       LDA    $B5,X   
       CMP    #$4A    
       BEQ    LF639   
       CMP    #$52    
       BEQ    LF639   
       JSR    LFDFE   
       LDA    LF079,Y 
       JSR    LFFDD   
       LDA    $D7     
       ORA    #$80    
       STA    $D7     
       LDX    #$10    
LF617: LDA    $80,X   
       BEQ    LF625   
       LDA    $B5,X   
       CMP    #$4A    
       BEQ    LF625   
       CMP    #$52    
       BNE    LF62F   
LF625: DEX            
       DEX            
       BNE    LF617   
       LDA    $D7     
       ORA    #$08    
       STA    $D7     
LF62F: RTS            

LF630: BIT    VBLANK  
       BMI    LF64F   
       BIT    COLUP1  
       BMI    LF64F   
       RTS            

LF639: LDA    $A2,X   
       STA    $A2     
       LDA    #$00    
       STA    $B4     
       LDA    #$04    
       STA    $E4     
       RTS            

LF646: CPX    #$02    
       BEQ    LF64E   
       CPX    #$0A    
       BNE    LF64F   
LF64E: RTS            

LF64F: LDA    $D6     
       ORA    #$04    
       STA    $D6     
       LDX    #$02    
LF657: LDA    $E0,X   
       AND    #$F0    
       ORA    #$0E    
       STA    $E0,X   
       DEX            
       BPL    LF657   
       LDA    #$00    
       STA    $A2     
       RTS            

LF667: LDX    #$0F    
LF669: LDA    $80,X   
       BEQ    LF67E   
       LDY    $A2,X   
       BPL    LF677   
       CMP    #$05    
       BCS    LF67E   
       BCC    LF67B   
LF677: CMP    #$91    
       BCC    LF67E   
LF67B: JSR    LFDFE   
LF67E: DEX            
       DEX            
       CPX    #$07    
       BNE    LF669   
       LDA    #$04    
       BIT    $D6     
       BVS    LF6E3   
       BNE    LF6E3   
       LDA    #$3F    
       LDY    $DB     
       CPY    #$0C    
       BCC    LF695   
       LSR            
LF695: AND    $DF     
       BNE    LF6E3   
       LDA    $B3     
       LDY    #$07    
LF69D: CMP    #$1E    
       BCC    LF6A7   
       DEY            
       DEY            
       SBC    #$28    
       BCS    LF69D   
LF6A7: LDA    $DB     
       CMP    #$0A    
       BCS    LF6B1   
       CPY    #$01    
       BEQ    LF6E3   
LF6B1: LDA.wy $00B5,Y 
       CMP    #$29    
       BEQ    LF6BC   
       CMP    #$31    
       BNE    LF6E3   
LF6BC: TYA            
       CLC            
       ADC    #$08    
       TAX            
       LDA    $80,X   
       BNE    LF6E3   
       LDA.wy $0080,Y 
       CLC            
       ADC    #$03    
       STA    $80,X   
       LDA    #$39    
       STA    $B5,X   
       LDA.wy $00A2,Y 
       ASL            
       LDA    #$1E    
       BCC    LF6DB   
       LDA    #$E2    
LF6DB: STA    $A2,X   
       LDA    $D7     
       ORA    #$07    
       STA    $D7     
LF6E3: RTS            

LF6E4: JSR    LF744   
       JSR    LF0F2   
       TAY            
       LDX    #$10    
LF6ED: TYA            
       ADC    LF733,X 
       AND    #$18    
       CPX    #$09    
       BCS    LF708   
       CLC            
       ADC    #$7A    
       STA    $B5,X   
       TYA            
       ADC    LF733,X 
       AND    #$F0    
       ORA    #$06    
       STA    $C5,X   
       BNE    LF70D   
LF708: CLC            
       ADC    #$AA    
       STA    $B5,X   
LF70D: TYA            
       ADC    LF733,X 
       AND    #$7F    
       ADC    #$08    
       STA    $80,X   
       TYA            
       ADC    LF733,X 
       AND    #$17    
       SEC            
       SBC    #$10    
       BCC    LF724   
       ORA    #$08    
LF724: STA    $A2,X   
       DEX            
       DEX            
       BNE    LF6ED   
       LDA    #$4A    
       LDY    $A8     
       BMI    LF732   
       LDA    #$52    
LF732: STA    $BB     
       RTS            

LF735: .byte $37,$00,$C1,$00,$1D,$00,$82,$00,$AA,$00,$5D,$00,$70,$00,$2F
LF744: LDX    #$0F    
LF746: JSR    LFDFE   
       DEX            
       DEX            
       BPL    LF746   
       RTS            

LF74E: .byte $C0,$C0,$E0,$E0,$20,$20,$20,$20,$20,$20,$E0,$E0,$C0,$C0
LF75C: .byte $12,$12,$96,$96,$96,$96,$9E,$9E,$9A,$9A,$9A,$9A,$12,$12
LF76A: STA    WSYNC   
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$0E    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       JSR    LF860   
       JSR    LF860   
       LDA    #$F0    
       STA    RESP0   
       STA    RESP1   
       STA    HMP0    
       LDA    #$00    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF860   
       JSR    LF860   
       STA    HMCLR   
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$58    
       LDX    #$4D    
LF7A6: JSR    LF861   
       LDA    LF8EE,X 
       STA    $80,X   
       DEX            
       LDA    LF8EE,X 
       STA    $80,X   
       DEY            
       DEX            
       BPL    LF7A6   
LF7B8: JSR    LF861   
       DEY            
       CPY    #$0E    
       BNE    LF7B8   
       LDX    #$0D    
LF7C2: STA    WSYNC   
       TYA            
       SEC            
       SBC    $DF     
       STA    COLUBK  
       ADC    #$88    
       STA    COLUPF  
       NOP            
       LDA    LF05D,X 
       STA    PF1     
       LDA    LF06B,X 
       STA    PF2     
       LDA    LF74E,X 
       STA    PF0     
       LDA    LF75C,X 
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       STA    PF0     
       DEY            
       TYA            
       LSR            
       BCS    LF7C2   
       DEX            
       TYA            
       BNE    LF7C2   
LF7F2: STA    WSYNC   
       TYA            
       SEC            
       SBC    $DF     
       STA    COLUBK  
       ADC    #$88    
       STA    COLUPF  
       NOP            
       LDA    LF05D,X 
       STA    PF1     
       LDA    LF06B,X 
       STA    PF2     
       LDA    LF74E,X 
       STA    PF0     
       LDA    LF75C,X 
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       STA    PF0     
       INY            
       TYA            
       LSR            
       BCS    LF7F2   
       DEX            
       BPL    LF7F2   
       INX            
       STX    PF0     
       STX    PF1     
LF826: JSR    LF861   
       INY            
       CPY    #$14    
       BNE    LF826   
       LDA    #$02    
       BIT    $D6     
       BNE    LF839   
       LDX    #$0C    
       JSR    LF86A   
LF839: LDX    #$4D    
LF83B: JSR    LF861   
       LDA    LFDB0,X 
       STA    $80,X   
       DEX            
       LDA    LFDB0,X 
       STA    $80,X   
       INY            
       DEX            
       BPL    LF83B   
       LDX    #$0C    
       JSR    LF86A   
LF852: JSR    LF861   
       INY            
       CPY    #$58    
       BNE    LF852   
       STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
LF860: RTS            

LF861: STA    WSYNC   
LF863: TYA            
       SEC            
       SBC    $DF     
       STA    COLUBK  
       RTS            

LF86A: STY    $E7     
       STA    WSYNC   
LF86E: LDA    $E7     
       SBC    $DF     
       STA    COLUBK  
       INC    $E7     
       STX    $E5     
       LDA    $80,X   
       STA    GRP0    
       LDA    $8D,X   
       STA    GRP1    
       LDA    $9A,X   
       STA    GRP0    
       LDY    $A7,X   
       LDA    $B4,X   
       STA    $E6     
       LDA    $C1,X   
       LDX    $E6     
       STY    GRP1    
       STX    GRP0    
       STA    GRP1    
       STA    GRP0    
       LDX    $E5     
       DEX            
       BPL    LF86E   
       LDY    $E7     
       JSR    LF863   
       INY            
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       RTS            

LF8A9: LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    SWCHA   
       CMP    #$0F    
       BEQ    LF860   
       LDA    #$00    
       STA    $D6     
       JSR    LF362   
       JMP    LF6E4   
LF8C1: LDX    #$10    
LF8C3: LDA    $80,X   
       CMP    #$04    
       BCC    LF8CD   
       CMP    #$93    
       BCC    LF8E9   
LF8CD: ROR            
       EOR    $A2,X   
       BPL    LF8E9   
       LDA    $A2,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $A2,X   
       LDA    $B5,X   
       CMP    #$4A    
       BEQ    LF8E5   
       CMP    #$52    
       BNE    LF8E9   
LF8E5: EOR    #$18    
       STA    $B5,X   
LF8E9: DEX            
       DEX            
       BNE    LF8C3   
       RTS            

LF8EE: .byte $0F,$09,$0B,$08,$0F,$00,$00,$C4,$A4,$CE,$AA,$CA,$00,$4A,$0A,$0E
       .byte $0A,$0A,$00,$00,$0A,$0A,$0E,$0A,$0A,$00,$BD,$A5,$AD,$A1,$BD,$00
       .byte $00,$AE,$A8,$E8,$A8,$E8,$00,$49,$49,$C9,$49,$5D,$00,$00,$45,$45
       .byte $65,$45,$75,$00,$DF,$55,$55,$51,$D1,$00,$00,$29,$6B,$EF,$AD,$29
       .byte $00,$75,$45,$66,$45,$76,$00,$00,$72,$42,$67,$45,$75,$00,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LF94B: LDA    #$F9    
       STA    $E6     
       LDA    $DF     
       AND    #$03    
       CLC            
       ADC    #$0D    
       TAX            
LF957: TXA            
       LSR            
       LDA    $B5,X   
       BCC    LF95F   
       ADC    #$08    
LF95F: SEC            
       SBC    #$5A    
       BCC    LF972   
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF97C,Y 
       STA    $E5     
       JMP.ind ($00E5)
LF970: STA    $B5,X   
LF972: DEX            
       DEX            
       DEX            
       DEX            
       BEQ    LF9BC   
       BPL    LF957   
       BMI    LF9BC   
LF97C: .byte $8B ;.ANE
       .byte $8F ;.SAX
       TXS            
       LDX    #$A2    
       LDX    #$A2    
       LDX    #$9E    
       LDA    ($B1),Y 
       LDA    ($B1),Y 
       LDA    ($B8),Y 
       LDY    #$59    
       BNE    LF991   
       LDY    #$51    
LF991: LDA    #$0C    
       BIT    $DF     
       BNE    LF972   
       TYA            
       BNE    LF970   
       LDA    #$72    
       BNE    LF970   
       LDA    #$92    
       BNE    LF970   
       JSR    LF0F2   
       LSR            
       LDA    #$08    
       BCC    LF9AC   
       LDA    #$F8    
LF9AC: CLC            
       ADC    $B5,X   
       BNE    LF970   
       LDA    #$08    
       CLC            
       ADC    $B5,X   
       BNE    LF970   
       LDA    #$A2    
       BNE    LF970   
LF9BC: BIT    $D6     
       BVS    LF9D4   
       LDA    $E4     
       BEQ    LF9D8   
       CMP    #$01    
       BEQ    LF9D0   
       CMP    #$04    
       BEQ    LF9D0   
LF9CC: LDA    #$C1    
       BNE    LF9F7   
LF9D0: LDA    #$B0    
       BNE    LF9F7   
LF9D4: LDA    #$E3    
       BNE    LF9F7   
LF9D8: LDA    $A2     
       BEQ    LF9CC   
       ASL            
       LDA    $D6     
       AND    #$F7    
       BCC    LF9E5   
       ORA    #$08    
LF9E5: STA    $D6     
       LDA    $DF     
       AND    #$0C    
       ASL            
       ASL            
       STA    $E5     
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $E5     
       ADC    #$9F    
LF9F7: SEC            
       SBC    $B3     
       STA    $B5     
       RTS            

LF9FD: LDA    $DF     
       ADC    #$03    
       AND    #$07    
       BNE    LFA18   
       LDA    $D7     
       AND    #$07    
       BEQ    LFA0D   
       DEC    $D7     
LFA0D: ASL            
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$0C    
       STA    AUDF1   
LFA18: LDA    #$04    
       BIT    $D6     
       BVS    LFA2C   
       BNE    LFA8D   
       LDA    $E4     
       CMP    #$01    
       BCC    LFA31   
       BEQ    LFA4E   
       CMP    #$03    
       BCC    LFA6C   
LFA2C: LDA    #$00    
       STA    AUDV0   
       RTS            

LFA31: LDA    $A2     
       BEQ    LFA2C   
       LDA    #$02    
       STA    AUDC0   
       LDA    #$06    
       STA    AUDF0   
       LDA    $DF     
       AND    #$0F    
       EOR    #$FF    
       ASL            
       CLC            
       ADC    #$0A    
       BCS    LFA4B   
       LDA    #$00    
LFA4B: STA    AUDV0   
       RTS            

LFA4E: LDA    #$08    
       BIT    $D7     
       BNE    LFA56   
       BMI    LFA7F   
LFA56: LDA    $B4     
       BPL    LFA2C   
       EOR    #$FF    
       CLC            
       ADC    #$09    
       STA    AUDF0   
       LSR            
       SEC            
       SBC    #$02    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       RTS            

LFA6C: LDA    #$08    
       STA    AUDC0   
       LDA    $B4     
       BPL    LFA79   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LFA79: LSR            
       STA    AUDF0   
       STA    AUDV0   
       RTS            

LFA7F: LDA    #$0C    
       STA    AUDC0   
       STA    AUDV0   
       LDA    $DF     
       AND    #$02    
       ASL            
       STA    AUDF0   
       RTS            

LFA8D: LDA    #$07    
       STA    AUDC0   
       LDA    $DF     
       AND    #$02    
       ASL            
       STA    AUDF0   
       LDA    $E0     
       AND    #$0F    
       STA    AUDV0   
       RTS            

LFA9F: .byte $06,$07,$00,$0C,$1C,$1C,$1E,$18,$1C,$3E,$22,$2E,$28,$20,$20,$10
       .byte $00,$0C,$0E,$00,$78,$58,$5F,$18,$00,$18,$3F,$21,$62,$42,$C0,$80
       .byte $80,$00,$0C,$0E,$00,$78,$58,$5F,$18,$00,$18,$3C,$24,$66,$C2,$82
       .byte $03,$00,$00,$06,$07,$00,$0C,$1C,$1C,$1E,$18,$18,$18,$18,$78,$48
       .byte $48,$08,$0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00
LFAF4: TAY            
       AND    #$0F    
       STA    $E5     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       SEC            
       ADC    $E5     
       CMP    #$10    
       BCC    LFB09   
       SBC    #$0F    
       INY            
LFB09: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    $E5     
       ORA    $E5     
       RTS            

LFB14: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$0C,$1C,$38,$1E,$38,$28,$08,$00,$3C,$FF,$81,$81,$C3,$E7,$00
       .byte $00,$00,$38,$7F,$38,$7E,$FF,$7E,$00,$00,$1C,$FE,$1C,$7E,$FF,$7E
       .byte $00,$00,$00,$0A,$00,$00,$00,$00,$00,$20,$42,$9F,$40,$20,$00,$00
       .byte $00,$04,$42,$F9,$02,$04,$00,$00,$00,$7C,$28,$10,$28,$44,$82,$82
       .byte $00,$00,$00,$7C,$28,$10,$28,$C6,$00,$20,$70,$F8,$70,$20,$00,$00
       .byte $00,$20,$20,$F8,$20,$20,$00,$00,$00,$00,$20,$70,$20,$00,$00,$00
       .byte $00,$00,$00,$20,$00,$00,$00,$00,$00,$00,$50,$20,$50,$00,$00,$00
       .byte $00,$88,$50,$20,$50,$88,$00,$00,$00,$A8,$70,$F8,$70,$A8,$00,$00
       .byte $00,$02,$06,$0A,$E6,$F2,$00,$00,$00,$F2,$06,$1A,$F6,$F2,$00,$00
       .byte $00,$E2,$16,$1A,$F6,$02,$00,$00,$00,$D2,$16,$2A,$06,$02,$00,$00
       .byte $00,$00,$E6,$2A,$06,$00,$00,$00,$00,$00,$06,$0A,$E6,$00,$00,$00
       .byte $00
LFBD5: LDX    #$02    
LFBD7: TXA            
       ASL            
       ASL            
       TAY            
       LDA    #$F0    
       STA.wy $00EC,Y 
       STA.wy $00EE,Y 
       STY    $E5     
       LDA    $D8,X   
       AND    #$0F    
       TAY            
       LDA    LF0BF,Y 
       LDY    $E5     
       STA.wy $00ED,Y 
       LDA    $D8,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF0BF,Y 
       LDY    $E5     
       STA.wy $00EB,Y 
       DEX            
       BPL    LFBD7   
       RTS            

LFC05: STA    WSYNC   
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$C4    
       STA    COLUBK  
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    $3F     
       LDA    #$00    
       STA    HMP0    
       LDA    #$10    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       LDA    #$6A    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    ENABL   
       STA    REFP0   
       LDY    #$05    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMCLR   
       BIT    $D7     
       BPL    LFC51   
       LDA    #$31    
       BNE    LFC53   
LFC51: LDA    #$11    
LFC53: STA    CTRLPF  
LFC55: LDA    ($F5),Y 
       TAX            
       LDA    ($EB),Y 
       STA    WSYNC   
       STA    HMOVE   
       STY    $E5     
       STA    GRP0    
       LDA    ($ED),Y 
       STA    GRP1    
       LDA    ($EF),Y 
       STA    GRP0    
       LDA    ($F1),Y 
       STA    $E6     
       LDA    ($F3),Y 
       LDY    $E6     
       STY    GRP1    
       STA    GRP0    
       STX    GRP1    
       STX    GRP0    
       LDY    $E5     
       DEY            
       BPL    LFC55   
       INY            
       STY    VDELP0  
       STY    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       LDA    $B5     
       STA    $EB     
       LDA    #$FA    
       STA    $EC     
       LDA    #$AB    
       SEC            
       SBC    $B3     
       STA    $F1     
       LDA    #$F0    
       STA    $F2     
       LDA    $DD     
       AND    #$1F    
       STA    RESBL   
       EOR    #$FF    
       ADC    #$DE    
       STA    $F3     
       BIT    $D7     
       BPL    LFCB7   
       LDX    #$86    
       LDA    #$E0    
       BNE    LFCBB   
LFCB7: LDA    #$B0    
       LDX    #$26    
LFCBB: STA    HMBL    
       STX    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $91     
       AND    #$0F    
       SEC            
LFCC8: SBC    #$01    
       BPL    LFCC8   
       NOP            
       LDA    $91     
       STA    HMCLR   
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    COLUBK  
       STA    CXCLR   
       LDA    #$10    
       STA    $E6     
       LDA    #$08    
       STA    $E5     
       LDA    #$FF    
       STA    $E8     
       STA    $F5     
       STA    HMCLR   
       LDA    #$FB    
       STA    $EE     
       STA    $F0     
       LDA    #$F0    
       STA    $F4     
       LDA    $D6     
       STA    REFP0   
       JMP    LFD00   
LFD00: STA    $3F     
       LDA    #$02    
       STA    ENABL   
       LDA    #$04    
       STA    $F6     
LFD0A: LDY    #$00    
       STY    $E9     
       JSR    LFE1E   
       STA    $3F     
       LDA    #$09    
       STA    $EA     
       JSR    LFD4A   
       STY.w  $00E9   
       DEC    $F6     
       NOP            
       JSR    LFE1E   
       STA    $3F     
       LDA    #$14    
       STA    $EA     
       JSR    LFD4A   
       LDA    $F6     
       BNE    LFD0A   
       LDY    #$00    
       STY.w  $00E9   
       JSR    LFE1E   
       STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       RTS            

LFD3F: STY    $E9     
       LDA    $F5     
       EOR    #$FF    
       STA    $F5     
       NOP            
       NOP            
       NOP            
LFD4A: LDY    $E9     
       STA    HMOVE   
       LDA    #$00    
       STA    PF0     
       STA    PF2     
       LDA    ($F3),Y 
       STA    PF1     
       INC    $E8     
       LDY    $E8     
       LDA    ($F1),Y 
       BPL    LFD98   
       TAX            
       LDA    VSYNC,X 
       STA    COLUP0  
       LDA    ($EB),Y 
       NOP            
       STA    GRP0    
LFD6A: NOP            
       NOP            
       STA    $3F     
       LDY    $E9     
       LDA    ($EF),Y 
       STA    HMM1    
       INC    $E8     
       STA    HMOVE   
       STA    ENAM1   
       ASL            
       ASL            
       ORA    $E7     
       STA    NUSIZ1  
       LDA    ($ED),Y 
       STA    GRP1    
       STA    HMCLR   
       LDY    $E8     
       LDA    ($F1),Y 
       BPL    LFDA6   
       LDA    ($EB),Y 
       LDY    $E9     
       INY            
       CPY    $EA     
       STA    GRP0    
LFD95: BCC    LFD3F   
       RTS            

LFD98: NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       BNE    LFDA3   
       STA    $F1     
       BEQ    LFD6A   
LFDA3: NOP            
       BNE    LFD6A   
LFDA6: NOP            
       NOP            
       LDY    $E9     
       INY            
       CPY    $EA     
       JMP    LFD95   
LFDB0: .byte $FC,$84,$B4,$A4,$B4,$84,$FC,$84,$B4,$A4,$B4,$84,$FC,$8B,$8A,$BB
       .byte $AA,$BB,$00,$00,$00,$8B,$8A,$BB,$AA,$BB,$B9,$A1,$B9,$89,$B9,$00
       .byte $00,$00,$B9,$A1,$B9,$89,$B9,$97,$51,$57,$54,$97,$00,$00,$00,$15
       .byte $15,$57,$55,$F7,$4B,$5A,$7B,$6A,$4B,$00,$00,$00,$22,$22,$22,$22
       .byte $77,$90,$10,$38,$28,$A8,$00,$00,$00,$77,$44,$64,$44,$74
LFDFE: LDA    #$11    
       STA    $B5,X   
       LDA    #$00    
       STA    $80,X   
       RTS            

LFE07: LDA    #$20    
       JSR    LFFDD   
       INC    $DB     
       JMP    LF6E4   
LFE11: NOP            
       NOP            
       NOP            
       NOP            
       BNE    LFE1B   
       STA    $F1     
       BEQ    LFE41   
LFE1B: NOP            
       BNE    LFE41   
LFE1E: STA    HMOVE   
       LDA    $F5     
       STA    PF0     
       AND    #$F1    
       ORA    ($F3),Y 
       STA    PF1     
       LDA    $F5     
       AND    #$7F    
       STA    PF2     
       INC    $E8     
       LDY    $E8     
       LDA    ($F1),Y 
       BPL    LFE11   
       TAX            
       LDA    VSYNC,X 
       STA    COLUP0  
       LDA    ($EB),Y 
       STA    GRP0    
LFE41: INC    $E9     
       NOP            
       LDX    $E6     
       LDA    $B5,X   
       STA    HMOVE   
       STA    $EF     
       LDA    $91,X   
       AND    #$0F    
       CMP    #$04    
       BCC    LFE75   
       CMP    #$07    
       BCC    LFEB7   
       INY            
       LDA    ($F1),Y 
       BPL    LFE8F   
       LDA    ($EB),Y 
       STA.w  $001B   
LFE62: DEC    $E6     
       LDA    $91,X   
       STA    HMM1    
       AND    #$0F    
       SBC    #$07    
LFE6C: SBC    #$01    
       BCS    LFE6C   
       STA    RESM1   
       JMP    LFED2   
LFE75: SEC            
LFE76: SBC    #$01    
       BCS    LFE76   
       STA    RESM1   
       LDA    $91,X   
       STA    HMM1    
       INY            
       LDA    ($F1),Y 
       BPL    LFE98   
       LDA    ($EB),Y 
       STA.w  $001B   
LFE8A: DEC    $E6     
       JMP    LFED2   
LFE8F: BNE    LFE95   
       STA    $F1     
       BEQ    LFE62   
LFE95: NOP            
       BNE    LFE62   
LFE98: BNE    LFE9E   
       STA    $F1     
       BEQ    LFE8A   
LFE9E: NOP            
       BNE    LFE8A   
LFEA1: BNE    LFEA7   
       STA    $F1     
       BEQ    LFED2   
LFEA7: NOP            
       BNE    LFED2   
LFEAA: NOP            
       NOP            
       NOP            
       NOP            
       BNE    LFEB4   
       STA    $F1     
       BEQ    LFEFD   
LFEB4: NOP            
       BNE    LFEFD   
LFEB7: DEC    $E6     
       LDA    $91,X   
       STA    HMM1    
       AND    #$0F    
       SEC            
       SBC    #$04    
LFEC2: SBC    #$01    
       BCS    LFEC2   
       STA    RESM1   
       INY            
       LDA    ($F1),Y 
       BPL    LFEA1   
       LDA    ($EB),Y 
       STA.w  $001B   
LFED2: STA    WSYNC   
       STA    HMOVE   
       LDY    $E9     
       LDA    $F5     
       AND    #$55    
       STA    PF0     
       ASL            
       AND    #$F1    
       ORA    ($F3),Y 
       STA    PF1     
       LDA    $F5     
       AND    #$55    
       STA    PF2     
       LDY    $E8     
       INY            
       INY            
       NOP            
       LDA    ($F1),Y 
       BPL    LFEAA   
       TAX            
       LDA    VSYNC,X 
       STA    COLUP0  
       LDA    ($EB),Y 
       STA    GRP0    
LFEFD: STA    HMCLR   
       INY            
       STY    $E8     
       STA    HMOVE   
       LDX    $E5     
       LDA    $91,X   
       AND    #$0F    
       CMP    #$04    
       BCC    LFF2F   
       CMP    #$07    
       BCC    LFF64   
       NOP            
       LDA    ($F1),Y 
       BPL    LFF49   
       LDA    ($EB),Y 
       STA.w  $001B   
LFF1C: DEC    $E5     
       LDA    $91,X   
       STA    HMP1    
       AND    #$0F    
       SBC    #$07    
LFF26: SBC    #$01    
       BCS    LFF26   
       STA    RESP1   
       JMP    LFF7F   
LFF2F: SEC            
LFF30: SBC    #$01    
       BCS    LFF30   
       STA    RESP1   
       LDA    $91,X   
       STA    HMP1    
       NOP            
       LDA    ($F1),Y 
       BPL    LFF52   
       LDA    ($EB),Y 
       STA.w  $001B   
LFF44: DEC    $E5     
       JMP    LFF7F   
LFF49: BNE    LFF4F   
       STA    $F1     
       BEQ    LFF1C   
LFF4F: NOP            
       BNE    LFF1C   
LFF52: BNE    LFF58   
       STA    $F1     
       BEQ    LFF44   
LFF58: NOP            
       BNE    LFF44   
LFF5B: BNE    LFF61   
       STA    $F1     
       BEQ    LFF7F   
LFF61: NOP            
       BNE    LFF7F   
LFF64: DEC    $E5     
       LDA    $91,X   
       STA    HMP1    
       AND    #$0F    
       SEC            
       SBC    #$04    
LFF6F: SBC    #$01    
       BCS    LFF6F   
       STA    RESP1   
       NOP            
       LDA    ($F1),Y 
       BPL    LFF5B   
       LDA    ($EB),Y 
       STA.w  $001B   
LFF7F: STA    WSYNC   
       STA    HMOVE   
       INC    $E9     
       LDY    $E9     
       LDA    $F5     
       STA    PF0     
       AND    #$F1    
       ORA    ($F3),Y 
       STA    PF1     
       LDA    $F5     
       AND    #$7F    
       STA    PF2     
       INC    $E8     
       LDY    $E8     
       LDA    ($F1),Y 
       BPL    LFFCC   
       TAX            
       LDA    VSYNC,X 
       STA    COLUP0  
       LDA    ($EB),Y 
       STA    GRP0    
LFFA8: NOP            
       NOP            
       STA    HMCLR   
       STA    HMOVE   
       LDX    $E5     
       LDA    $B6,X   
       STA    $ED     
       LDA    $C6,X   
       STA    COLUP1  
       LDA    $CE,X   
       STA    NUSIZ1  
       STA    $E7     
       INY            
       STY    $E8     
       LDA    ($F1),Y 
       BPL    LFFD9   
       LDA    ($EB),Y 
       STA    GRP0    
LFFC9: INC    $E9     
       RTS            

LFFCC: NOP            
       NOP            
       NOP            
       NOP            
       BNE    LFFD6   
       STA    $F1     
       BEQ    LFFA8   
LFFD6: NOP            
       BNE    LFFA8   
LFFD9: NOP            
       NOP            
       BPL    LFFC9   
LFFDD: CLC            
       SED            
       ADC    $D9     
       STA    $D9     
       LDA    #$00    
       ADC    $D8     
       STA    $D8     
       CLD            
       RTS            

LFFEB: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
       .byte $F1,$00,$F1,$00,$F1
