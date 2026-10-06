; Disassembly of roms/Cakewalk.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Cakewalk.bin
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
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
CXCLR   =  $2C
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDY    #$0F    
       LDA    #$00    
       TAX            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       STA    AUDV0   
       STA    AUDV1   
       DEX            
       TXS            
       TYA            
       AND    #$0F    
       CMP    #$0F    
       BNE    LF01B   
       LDA    #$FE    
LF01B: STA    $B7     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $FD     
       STX    $D2     
       LDX    #$F6    
       STX    $A2     
       STX    $A4     
       STX    $A6     
       STX    $A8     
       STX    $D4     
       LDA    #$F1    
       STA    $C3     
       BIT    SWCHB   
       BVC    LF03F   
       LDA    #$04    
       STA    $D5     
LF03F: LDX    #$06    
       LDY    #$01    
LF043: STY    $87,X   
       LDA    LF740   
       SEC            
       SBC    LF76A,X 
       STA    $C3,X   
       LDA    LF748   
       SEC            
       SBC    LF76A,X 
       STA    $CA,X   
       DEX            
       BNE    LF043   
       STY    $B6     
       STY    $87     
       STY    WSYNC   
       LDA    #$34    
       STA    CTRLPF  
       LDA    #$50    
       STA    $9C     
       LDA    #$55    
       STA    $B1     
       STA    RESBL   
       LDA    #$04    
       STA    AUDC0   
       LDA    SWCHB   
       STA    $E0     
LF077: LDA    SWCHB   
       TAY            
       EOR    $E0     
       AND    $E0     
       STA    $BB     
       AND    #$01    
       BEQ    LF095   
       LDA    $FD     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    #$06    
       TAY            
       LDA    #$00    
       LDX    #$80    
       JMP    LF007   
LF095: LDA    $BB     
       AND    #$02    
       BEQ    LF0BD   
       LDA    #$07    
       STA    $B7     
       LDX    $FD     
       INX            
       CPX    #$10    
       BMI    LF0A8   
       LDX    #$00    
LF0A8: STX    $FD     
       LDA    LF730,X 
       STA    $B1     
       LDA    #$00    
       STA    $E1     
       SED            
       CLC            
LF0B5: ADC    #$01    
       DEX            
       BPL    LF0B5   
       STA    $AF     
       CLD            
LF0BD: STY    $E0     
       LDA    $B7     
       BEQ    LF0D1   
       BMI    LF100   
       CMP    #$07    
       BPL    LF100   
       TAX            
       JSR    LF85B   
       DEC    $B7     
       BNE    LF100   
LF0D1: LDA    SWCHA   
       AND    #$80    
       BNE    LF0EF   
       LDA    $FD     
       AND    #$04    
       BEQ    LF0EF   
       LDA    $D6     
       CMP    #$02    
       BPL    LF0EF   
       JSR    LFEEE   
       LDA    $BB,X   
       BMI    LF0EF   
       LDA    #$30    
       STA    $BB,X   
LF0EF: BIT    INPT4   
       BMI    LF100   
       JSR    LFEEE   
       CPX    $DD     
       BEQ    LF100   
       STX    $DD     
       LDA    #$00    
       STA    $DE     
LF100: INC    $A0     
       BNE    LF110   
       INC    $E1     
       LDA    $B8     
       CMP    #$01    
       BEQ    LF110   
       LDA    #$00    
       STA    AUDV1   
LF110: INC    $DE     
       BNE    LF118   
       LDA    #$00    
       STA    $DD     
LF118: LDA    $B8     
       CMP    #$02    
       BMI    LF17B   
       JSR    LFFF1   
       BNE    LF17B   
       BIT    $E3     
       BPL    LF142   
       LDA    $B9     
       SEC            
       SBC    $B6     
       STA    $B9     
       INC    $87     
       CMP    #$95    
       BNE    LF138   
       ASL    $E3     
       LSR    $E3     
LF138: CMP    #$70    
       BNE    LF17B   
       LDA    #$FF    
       STA    $B6     
       BNE    LF17B   
LF142: TXA            
       CLC            
       ADC    $B6     
       BEQ    LF156   
       CMP    #$58    
       BNE    LF169   
       LDX    $B1     
       BEQ    LF179   
       LDX    $B8     
       CPX    #$04    
       BNE    LF179   
LF156: LDA    #$00    
       STA    AUDV1   
       STA    $B8     
       JSR    LF801   
       LDA    #$0F    
       STA    $F7     
       LDA    #$01    
       STA    $B6     
       BNE    LF17B   
LF169: CMP    #$7A    
       BNE    LF179   
       BIT    $B6     
       BMI    LF179   
       INC    $B8     
       LDA    #$00    
       STA    $B6     
       BEQ    LF17B   
LF179: STA    $87     
LF17B: LDA    $B7     
       BEQ    LF182   
       JMP    LF341   
LF182: STA    $E1     
       LDA    #$02    
       AND    $FD     
       BEQ    LF18E   
       LDA    $FA     
       BNE    LF1BB   
LF18E: LDA    SWCHA   
       ROL            
       ROL            
       ROL            
       BCS    LF1A7   
       LDX    $9C     
       CPX    #$28    
       BCC    LF1A7   
       JSR    LF7FA   
       BEQ    LF1A3   
       DEX            
       DEX            
LF1A3: DEX            
       DEX            
       STX    $9C     
LF1A7: ROL            
       BCS    LF1BB   
       LDX    $9C     
       CPX    #$AE    
       BCS    LF1BB   
       JSR    LF7FA   
       BEQ    LF1B7   
       INX            
       INX            
LF1B7: INX            
       INX            
       STX    $9C     
LF1BB: LDX    #$06    
       LDA    $B8     
       BEQ    LF1C4   
       JMP    LF341   
LF1C4: LSR    $B2     
       BCC    LF211   
       CPX    $DF     
       BNE    LF1DD   
       LDA    #$00    
       STA    $DF     
       JSR    LF7C8   
       LDA    #$D3    
       STA    $E8     
       LDA    #$F3    
       STA    $E9     
       BNE    LF205   
LF1DD: LDA    #$0C    
       STA    AUDC1   
       LDA    LF932,X 
       STA    AUDF1   
       LDA    $D6     
       CMP    #$02    
       BNE    LF1F2   
       LDA    #$08    
       STA    AUDC1   
       BNE    LF1F8   
LF1F2: STX    $FA     
       LDA    #$30    
       STA    $FC     
LF1F8: LDA    #$0F    
       STA    AUDV1   
       LDA    #$F0    
       STA    $A0     
       LDA    #$01    
       JSR    LF7A6   
LF205: LDY    $80,X   
       BNE    LF20C   
       JSR    LF85B   
LF20C: LDA    LF771,Y 
       STA    $80,X   
LF211: DEX            
       BNE    LF1C4   
       LDX    #$06    
       STX    $BB     
LF218: LDA    $B8     
       BNE    LF285   
       LDA    $D6     
       BEQ    LF228   
       LDA    $BB,X   
       BPL    LF228   
       DEC    $BB     
       BPL    LF285   
LF228: LDY    $87,X   
       CPX    $DD     
       BEQ    LF2A4   
       LDA    $D6     
       CMP    #$02    
       BEQ    LF241   
       LDA    $D5     
       AND    #$0F    
       TAY            
       LDA    LF74F,X 
       AND    LF84B,Y 
       BEQ    LF285   
LF241: INC    $BB,X   
       BEQ    LF285   
       LDY    $A8,X   
       LDA    LF74F,X 
       AND    $E3     
       BEQ    LF256   
       LDA    #$08    
       AND    $FD     
       BNE    LF256   
       LDY    #$06    
LF256: DEY            
       TYA            
       CMP    $BB,X   
       BPL    LF285   
       LDA    #$00    
       STA    $BB,X   
       SEC            
       ADC    $87,X   
       CMP    #$7B    
       BCC    LF288   
       LDY    $D6     
       CPY    #$02    
       BEQ    LF285   
       CMP    #$83    
       BCC    LF288   
       CPX    $DF     
       BNE    LF27F   
       CMP    #$95    
       BCC    LF288   
       LDA    #$00    
       STA    $DF     
       BEQ    LF282   
LF27F: JSR    LF7C8   
LF282: JSR    LF85B   
LF285: JMP    LF2EB   
LF288: STA    $87,X   
       TAY            
       LDA    $F9     
       EOR    LF74F,X 
       STA    $F9     
       AND    LF74F,X 
       BNE    LF2A4   
       LDA    $F0,X   
       CLC            
       ADC    #$07    
       CMP    #$1C    
       BNE    LF2A2   
       LDA    #$00    
LF2A2: STA    $F0,X   
LF2A4: LDA    $80,X   
       CPY    #$43    
       BCC    LF2C5   
       CMP    #$06    
       BNE    LF2B3   
       JSR    LF7C8   
       LDA    #$02    
LF2B3: CPY    #$63    
       BCC    LF2C0   
       CMP    #$02    
       BNE    LF2C0   
       JSR    LF7C8   
       LDA    #$00    
LF2C0: STA    $80,X   
       JMP    LF2EB   
LF2C5: CMP    #$06    
       BEQ    LF2EB   
       CPY    #$25    
       BCS    LF2EB   
       CPY    #$21    
       BCC    LF2EB   
       LDA    $D6,X   
       BEQ    LF2EB   
       CMP    $80,X   
       BEQ    LF2EB   
       TYA            
       SEC            
       SBC    #$20    
       STA    $87,X   
       LDY    $80,X   
       LDA    #$02    
       CPY    #$02    
       BNE    LF2E9   
       LDA    #$06    
LF2E9: STA    $80,X   
LF2EB: DEX            
       BEQ    LF2F1   
       JMP    LF218   
LF2F1: LDA    $BB     
       BNE    LF341   
       STA    $DF     
       LDA    $D6     
       CMP    #$01    
       BEQ    LF318   
       INC    $D5     
       LDA    $D5     
       AND    #$0F    
       BNE    LF309   
       LDA    #$04    
       STA    $D5     
LF309: ASL    $B1     
       SEC            
       ROL    $B1     
       LDX    #$06    
       STX    $B7     
       LDX    #$00    
       STX    $D6     
       BEQ    LF341   
LF318: INC    $D6     
       INC    $FB     
       STA    $8A     
       LDA    #$00    
       STA    $E3     
       STA    $D9     
       STA    $BE     
       LDA    #$01    
       STA    $AB     
       LDA    #$88    
       SEC            
       SBC    LF76D   
       STA    $CD     
       LDA    #$7B    
       SEC            
       SBC    LF76D   
       STA    $C6     
       LDA    $F8     
       AND    LF758   
       STA    $F8     
LF341: LDA    $B8     
       CMP    #$03    
       BNE    LF35B   
       LDA    $A0     
       AND    #$07    
       BNE    LF35B   
       DEC    $B9     
       LDA    $B9     
       CMP    #$08    
       BNE    LF35B   
       LDA    #$FF    
       STA    $B6     
       INC    $B8     
LF35B: LDA    $B8     
       CMP    #$01    
       BNE    LF383   
       DEC    $B9     
       LDA    $B9     
       CMP    #$14    
       BNE    LF383   
       BIT    $E3     
       BPL    LF375   
       LDA    #$83    
       STA    $B9     
       INC    $B8     
       INC    $B8     
LF375: LDA    #$02    
       STA    AUDC1   
       LDA    #$04    
       STA    AUDF1   
       LDA    #$F0    
       STA    $A0     
       INC    $B8     
LF383: LDA    $B7     
       BNE    LF3DF   
       LDX    #$06    
LF389: LDA    $B8     
       BNE    LF3DF   
       LDA    LF74F,X 
       AND    $E3     
       BEQ    LF3DC   
       ORA    $F8     
       STA    $F8     
       LDA    $BB,X   
       BMI    LF3DC   
       LDA    $A0     
       ADC    LF92C,X 
       STA    $BB     
       ASL            
       BPL    LF3DC   
       LDA    LF755,X 
       AND    $F8     
       STA    $F8     
       INC    $E3,X   
       LDY    #$04    
       LDA    #$08    
       AND    $FD     
       BNE    LF3B9   
       LDY    $A8,X   
LF3B9: TYA            
       CMP    $E3,X   
       BCS    LF3DC   
       LDA    #$00    
       STA    $E3,X   
       INC    $87,X   
       LDA    $BB     
       BPL    LF3D0   
       DEC    $87,X   
       DEC    $87,X   
       BNE    LF3D0   
       INC    $87,X   
LF3D0: LDA    $87,X   
       CMP    #$82    
       BCC    LF3DC   
       JSR    LF7C8   
       JSR    LF85B   
LF3DC: DEX            
       BNE    LF389   
LF3DF: LDX    #$01    
LF3E1: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $AF,X   
       AND    #$F0    
       LSR            
       STA    $01A1,Y 
       LDA    $AF,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $01A3,Y 
       DEX            
       BPL    LF3E1   
       INX            
LF3FB: LDA    $A1,X   
       BNE    LF409   
       LDA    #$50    
       STA    $A1,X   
       INX            
       INX            
       CPX    #$05    
       BCC    LF3FB   
LF409: LDA    $B7     
       CMP    #$07    
       BNE    LF415   
       LDA    #$50    
       STA    $A5     
       STA    $A7     
LF415: LDY    INTIM   
       BNE    LF415   
       DEY            
       STA    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       LDA    #$2A    
       STA    TIM8T   
LF426: LDY    INTIM   
       BNE    LF426   
       STY    WSYNC   
       STY    VSYNC   
       STY    COLUBK  
       LDA    #$27    
       STA    TIM64T  
       LDX    #$00    
       LDA    $A0     
       AND    #$08    
       BNE    LF440   
       LDX    #$0D    
LF440: STX    $BB     
       LDX    #$06    
LF444: LDY    $C3,X   
       LDA    LF74F,X 
       AND    $F8     
       BNE    LF452   
       TYA            
       CLC            
       ADC    $BB     
       TAY            
LF452: STY    $EA,X   
       DEX            
       BNE    LF444   
       LDX    #$06    
LF459: LDY    $87,X   
LF45B: DEY            
       TYA            
       LDY    #$00    
       SEC            
LF460: INY            
       SBC    #$0F    
       BCS    LF460   
       ADC    #$0F    
       STY    $95,X   
       TAY            
       LDA    LF75C,Y 
       STA    $8E,X   
       DEX            
       BMI    LF494   
       BNE    LF459   
       BIT    $E3     
       BPL    LF459   
       LDA    $B8     
       CMP    #$04    
       BNE    LF459   
       LDA    #$01    
       AND    $A0     
       BNE    LF459   
       LDY    #$63    
       LDA    $A0     
       AND    #$08    
       BEQ    LF48E   
       LDY    #$70    
LF48E: STY    $F7     
       LDY    $B9     
       BNE    LF45B   
LF494: LDA    #$3C    
       CLC            
       ADC    $F7     
       STA    $EA     
       ADC    #$19    
       CMP    #$C5    
       BNE    LF4A3   
       LDA    #$B8    
LF4A3: STA    $CA     
       LDA    $9C     
       STA    $BA     
       LDA    $B8     
       BEQ    LF4ED   
       CMP    #$04    
       BEQ    LF4ED   
       LDA    $E8     
       CMP    #$D3    
       BEQ    LF4BD   
       LDA    $A0     
       AND    #$01    
       BEQ    LF4ED   
LF4BD: LDA    $B9     
       STA    $BA     
       LDA    $E9     
       LDY    #$F6    
       SEC            
       SBC    $B9     
       BCS    LF4CB   
       DEY            
LF4CB: STA    $9D     
       STY    $9E     
       LDA    $E8     
       LDY    #$FF    
       CMP    #$D3    
       BNE    LF4D9   
       LDY    #$F5    
LF4D9: LDX    $B8     
       CPX    #$02    
       BEQ    LF4E3   
       CPX    #$03    
       BNE    LF4E7   
LF4E3: LDA    #$4C    
       LDY    #$F9    
LF4E7: SEC            
       SBC    $B9     
       JMP    LF51D   
LF4ED: LDA    #$F3    
       LDY    #$F6    
       SEC            
       SBC    $9C     
       BCS    LF4F7   
       DEY            
LF4F7: STA    $9D     
       STY    $9E     
       LDX    #$00    
       LDA    $B7     
       BNE    LF514   
       LDA    SWCHA   
       AND    #$30    
       CMP    #$30    
       BEQ    LF514   
       LDX    #$26    
       LDA    $A0     
       AND    #$08    
       BEQ    LF514   
       LDX    #$13    
LF514: TXA            
       CLC            
       ADC    #$D3    
       LDY    #$F5    
       SEC            
       SBC    $9C     
LF51D: BCS    LF520   
       DEY            
LF520: STA    $B3     
       STY    $B4     
       LDA    #$55    
       STA    COLUPF  
       LDA    $B8     
       CMP    #$01    
       BMI    LF55D   
       BEQ    LF54F   
       JSR    LFFF1   
       BNE    LF55D   
       LDA    #$08    
       STA    AUDC1   
       STA    AUDF1   
       TYA            
       LSR            
       LSR            
       AND    #$03    
       TAX            
       LDA    LF817,X 
       STA    $F7     
       LDX    #$04    
       AND    #$01    
       BNE    LF54D   
       TAX            
LF54D: STX    AUDV1   
LF54F: LDA    $B9     
       LSR            
       LSR            
       LSR            
       STA    $BB     
       LDA    #$16    
       SEC            
       SBC    $BB     
       STA    AUDF1   
LF55D: LDA    $FB     
       CMP    #$FF    
       BEQ    LF57B   
       AND    #$07    
       BNE    LF579   
       LDA    $FB     
       LSR            
       LSR            
       LSR            
       TAX            
       LDY    #$0F    
       LDA    LFF20,X 
       BNE    LF575   
       TAY            
LF575: STY    AUDV0   
       STA    AUDF0   
LF579: INC    $FB     
LF57B: LDA    $FC     
       SEC            
       SBC    #$10    
       STA    $FC     
       CMP    #$70    
       BNE    LF58A   
       LDA    #$00    
       STA    $FA     
LF58A: JMP    LFC22   
LF58D: LDY    $BB     
       LDA    LF728,Y 
       STA    $F8     
       LDX    LF720,Y 
       LDA    LF700,Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    LF708,Y 
       STA    GRP1    
       LDA    LF710,Y 
       NOP            
       STA    GRP0    
       LDA    LF718,Y 
       LDY    $F8     
       STA    $011C   
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $BB     
       BPL    LF58D   
       JMP    LFC76   
LF5BF: .byte $FF,$00,$EE,$22,$22,$22,$22,$12,$0E,$CE,$4E,$2E,$1E,$04,$0E,$1E
       .byte $0A,$0E,$0E,$1F,$00,$36,$0A,$0C,$08,$0C,$0A,$0E,$CE,$4E,$2E,$1E
       .byte $04,$0E,$1E,$0A,$0E,$0E,$1F,$00,$63,$21,$22,$24,$12,$0A,$0E,$0E
       .byte $0E,$2E,$5E,$C4,$0E,$1E,$0A,$0E,$0E,$1F
LF5F9: STA    WSYNC   
       STY    WSYNC   
       STA    HMOVE   
       RTS            

LF600: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$18,$18,$18,$18,$18,$18,$18,$18
       .byte $3E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$3C,$46,$06,$06,$3C,$60,$60,$3E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$30,$30,$18,$18,$0C,$06,$42,$3E
       .byte $3C,$66,$66,$66,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$06,$C6,$C6,$C6
LF65E: .byte $56,$16,$16,$46,$46,$46,$86,$86,$86,$00,$06,$C6,$C6,$C6,$56,$16
       .byte $16,$16,$46,$46,$46,$86,$86,$86,$00,$06,$06,$C6,$C6,$C6,$56,$16
       .byte $16,$46,$46,$46,$86,$86,$86,$FF,$FF,$FF,$24,$0C,$0C,$26,$26,$26
       .byte $26,$26,$26,$06,$06,$06,$06,$24,$10,$18,$18,$10,$32,$32,$30,$10
       .byte $18,$18,$10,$32,$00,$00,$00,$00,$00,$00
LF6A8: .byte $24,$E4,$0C,$0C,$0C,$0C,$E4,$0C,$0C,$0C,$0C,$46,$46,$00,$00,$00
       .byte $00,$00,$00,$24,$14,$14,$14,$14,$0A,$14,$14,$14,$14,$14,$14,$14
       .byte $00,$00,$00,$00,$00,$00
LF6CE: .byte $24,$18,$18,$0A,$86,$86,$0A,$46,$46,$0A,$66,$66,$16,$00,$00,$00
       .byte $00,$00,$00,$C6,$C6,$0C,$0C,$0C,$0C,$0C,$46,$0C,$0C,$0C,$46,$46
       .byte $46,$46,$0C,$0C,$0C,$24,$08,$08,$08,$08,$08,$08,$E6,$E6,$E6,$E6
       .byte $E6,$E6
LF700: .byte $69,$89,$89,$8F,$89,$89,$89,$66
LF708: .byte $4B,$4A,$52,$63,$63,$52,$4A,$4B
LF710: .byte $94,$2A,$2A,$2A,$22,$22,$22,$A2
LF718: .byte $97,$94,$94,$F4,$94,$94,$94,$64
LF720: .byte $A4,$24,$28,$30,$30,$28,$24,$24
LF728: .byte $02,$01,$01,$1F,$13,$13,$13,$1F
LF730: .byte $00,$02,$08,$0A,$20,$22,$28,$2A,$80,$82,$88,$8A,$A0,$A2,$A8,$AA
LF740: .byte $BC,$E3,$BC,$E3,$95,$E3,$BC,$95
LF748: .byte $CE,$A8,$CE,$A8,$95,$A8,$CE
LF74F: .byte $95,$01,$02,$04,$08,$10
LF755: .byte $20,$FE,$FD
LF758: .byte $FB,$F7,$EF,$DF
LF75C: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0
LF76A: .byte $90,$20,$3A
LF76D: .byte $54,$6E,$88,$A2
LF771: .byte $00,$00,$00,$01,$00,$00
LF777: .byte $02,$20,$10,$08,$04,$02
LF77D: .byte $01,$34,$4A,$60,$76,$8C,$A2
LF784: .byte $25,$50,$75,$00,$50
LF789: .byte $00,$FF,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$FF,$FF
       .byte $00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$FF
LF7A6: SED            
       CLC            
       ADC    $B0     
       STA    $B0     
       LDA    #$00    
       ADC    $AF     
       STA    $AF     
       CLD            
       LDA    $D5     
       CMP    #$04    
       BMI    LF7BD   
       AND    #$01    
       ORA    #$04    
LF7BD: TAY            
       LDA    LF784,Y 
       CMP    $B0     
       BNE    LF7C7   
       INC    $D6     
LF7C7: RTS            

LF7C8: LDA    #$01    
       STA    $B8     
       LDA    LF77D,X 
       STA    $B9     
       LDA    $C3,X   
       CLC            
       ADC    #$13    
       ADC    LF76A,X 
       STA    $E8     
       LDA    $CA,X   
       CLC            
       ADC    #$13    
       ADC    LF76A,X 
       STA    $E9     
       LDA    #$04    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    $E3     
       AND    LF74F,X 
       BEQ    LF7F9   
       ASL    $E3     
       SEC            
       ROR    $E3     
LF7F9: RTS            

LF7FA: AND    #$F0    
       ORA    #$01    
       BIT    $FD     
       RTS            

LF801: LDA    $B1     
       LSR    $B1     
       LSR    $B1     
       CMP    #$00    
       BNE    LF816   
       LDY    $FD     
       LDA    LF730,Y 
       STA    $B1     
       LDA    #$FF    
       STA    $B7     
LF816: RTS            

LF817: .byte $00,$0F,$1E,$0F
LF81B: .byte $00,$02,$02,$03,$00,$02,$02,$03,$03,$01,$03,$03,$03,$03,$03,$03
LF82B: .byte $02,$03,$03,$02,$02,$02,$01,$01,$02,$01,$02,$01,$01,$01,$02,$01
LF83B: .byte $00,$03,$03,$07,$03,$03,$04,$07,$03,$00,$02,$01,$06,$00,$02,$03
LF84B: .byte $15,$1E,$3F,$3F,$3F,$3F,$1E,$3F,$3F,$3C,$33,$0F,$3F,$1E,$3F,$3F
LF85B: LDA    #$01    
       STA    $87,X   
       STY    $9D     
       LDA    $D5     
       AND    #$0F    
       TAY            
       LDA    #$00    
       STA    $80,X   
       LDA    ($C2),Y 
       INC    $C2     
       AND    LF81B,Y 
       STA    $D6,X   
       LDA    ($C2),Y 
       INC    $C2     
       AND    #$7F    
       ORA    #$80    
       STA    $BB,X   
       LDA    #$18    
       CMP    $AF     
       LDA    #$07    
       BCS    LF887   
       LDA    #$05    
LF887: AND    ($C2),Y 
       INC    $C2     
       AND    LF83B,Y 
       CLC            
       ADC    LF82B,Y 
       STA    $A8,X   
       LDA    ($C2),Y 
       INC    $C2     
       AND    #$07    
       CPX    #$06    
       BNE    LF8A0   
       AND    #$03    
LF8A0: TAY            
       LDA    LF740,Y 
       SEC            
       SBC    LF76A,X 
       STA    $C3,X   
       LDA    LF748,Y 
       SEC            
       SBC    LF76A,X 
       STA    $CA,X   
       LDA    $F8     
       AND    LF755,X 
       CPY    #$06    
       BEQ    LF8C7   
       CPY    #$00    
       BEQ    LF8C7   
       CPY    #$02    
       BEQ    LF8C7   
       ORA    LF74F,X 
LF8C7: STA    $F8     
       LDA    $E3     
       AND    LF755,X 
       STA    $E3     
       LDA    #$08    
       AND    $FD     
       BNE    LF8E6   
       LDY    $D5     
       CPY    #$02    
       BMI    LF8FF   
       LDA    ($C2),Y 
       INC    $C2     
       EOR    ($C2),Y 
       CMP    #$20    
       BCS    LF8FF   
LF8E6: LDA    $E3     
       ORA    LF74F,X 
       STA    $E3     
       LDA    #$A2    
       SEC            
       SBC    LF76A,X 
       STA    $C3,X   
       LDA    #$BB    
       SEC            
       SBC    LF76A,X 
       STA    $CA,X   
       BNE    LF92A   
LF8FF: LDA    $DF     
       BNE    LF92A   
       LDA    ($C2),Y 
       INC    $C2     
       EOR    ($C2),Y 
       CMP    #$10    
       BCS    LF92A   
       STX    $DF     
       LDA    $F8     
       ORA    LF74F,X 
       STA    $F8     
       LDA    #$00    
       STA    $D6,X   
       LDA    #$F3    
       SEC            
       SBC    LF76A,X 
       STA    $CA,X   
       LDA    #$D6    
       SEC            
       SBC    LF76A,X 
       STA    $C3,X   
LF92A: LDY    $9D     
LF92C: RTS            

LF92D: .byte $00,$60
LF92F: .byte $C0,$40,$A0
LF932: .byte $20,$13,$0F,$0E,$0C,$0B,$09,$00,$9B,$ED,$DB,$B7,$E6,$5A,$6E,$3C
       .byte $18,$08,$00,$00,$00,$00,$00,$00,$00,$00
LF94C: STY    WSYNC   
       LDA    #$08    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$14    
       STA    COLUPF  
       LDA    #$00    
       STA    COLUBK  
       STA    HMP1    
       STA    HMBL    
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$11    
       STA    CTRLPF  
       LDA    #$E0    
       STA    HMP0    
       STY    WSYNC   
       LDY    #$07    
LF972: DEY            
       BNE    LF972   
       LDA    $BB     
       STY    RESP0   
       LDA    $BB     
       STY    RESP1   
       STY    WSYNC   
       LDY    #$07    
LF981: DEY            
       BPL    LF981   
       NOP            
       NOP            
       STY    RESBL   
       STY    WSYNC   
       STA    HMOVE   
       STY    WSYNC   
       LDA    #$F8    
       STA    GRP1    
       STA    WSYNC   
       STY    WSYNC   
       LDA    #$FC    
       STA    GRP1    
       LDA    #$01    
       STA    GRP0    
       STA    WSYNC   
       STY    WSYNC   
       LDA    #$03    
       STA    GRP0    
       LDA    #$FE    
       STA    GRP1    
       JSR    LFEE9   
       LDA    #$07    
       STA    GRP0    
       JSR    LFEE9   
       LDY    #$FF    
       STY    GRP1    
       JSR    LFEE9   
       LDA    #$37    
       STA    GRP0    
       JSR    LFEE9   
       LDA    #$7F    
       STA    GRP0    
       JSR    LFEE9   
       STY    GRP1    
       LDA    #$20    
       STA    HMP1    
       STA    HMP0    
       JSR    LF5F9   
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA    HMP1    
       JSR    LF5F9   
       LDA    #$F8    
       STA    GRP0    
       LDA    #$07    
       STA    NUSIZ0  
       JSR    LFEE9   
       LDA    #$20    
       STA    HMP0    
       STA    HMP1    
       JSR    LF5F9   
       JSR    LFEE9   
       LDA    #$FE    
       STA    GRP1    
       LDA    #$00    
       STA    HMP1    
       JSR    LF5F9   
       LDA    #$FC    
       STA    GRP1    
       LDA    #$0C    
       STA    COLUP1  
       JSR    LFEE9   
       JSR    LFEE9   
       LDA    #$E0    
       STA    HMP0    
       LDA    #$20    
       STA    HMP1    
       JSR    LF5F9   
       LDY    #$FE    
       STY    GRP1    
       INY            
       STY    GRP0    
       LDA    #$05    
       STA    NUSIZ0  
       LDY    #$00    
       STY    HMP0    
       JSR    LF5F9   
       DEY            
       STY    GRP1    
       DEY            
       STY    GRP0    
       JSR    LFEE9   
       LDA    #$7E    
       STA    GRP0    
       LDA    #$C0    
       STA    HMP0    
       LDA    #$A0    
       STA    HMP1    
       JSR    LF5F9   
       LDA    #$0C    
       STA    COLUP0  
       LDA    #$3F    
       STA    GRP0    
       LDA    #$F8    
       STA    GRP1    
       JSR    LFEE9   
       JSR    LFEE9   
       JSR    LFEE9   
       LDA    #$FC    
       STA    GRP1    
       JSR    LFEE9   
       LDA    #$FE    
       STA    GRP1    
       LSR            
       STA    GRP0    
       JSR    LFEE9   
       LDA    #$F0    
       STA    PF2     
       STA    GRP0    
       LDA    #$03    
       STA    GRP1    
       JSR    LFEE9   
       LDY    #$3A    
       STY    COLUP1  
       LDA    #$E0    
       STA    GRP0    
       LDA    #$60    
       STA    GRP1    
       JSR    LFEE9   
       STY    COLUP0  
       LDA    #$08    
       STA    GRP0    
       LDA    #$F0    
       STA    GRP1    
       JSR    LFEE9   
       LDA    #$3D    
       STA    GRP0    
       LDA    #$F8    
       STA    GRP1    
       JSR    LFEE9   
       LDA    #$3F    
       STA    GRP0    
       LDA    #$FC    
       STA    GRP1    
       JSR    LFEE9   
       LDA    #$7F    
       STA    GRP0    
       LDA    #$FC    
       STA    GRP1    
       JSR    LFEE9   
       LDA    #$0E    
       STA    COLUPF  
       LDA    #$E7    
       STA    GRP0    
       STA    GRP1    
       JSR    LFEE9   
       LDA    #$C3    
       STA    GRP0    
       STA    GRP1    
       JSR    LFEE9   
       JSR    LFEE9   
       LDA    #$84    
       STA    COLUPF  
       JSR    LFEE9   
       LDA    #$E7    
       STA    GRP0    
       STA    GRP1    
       JSR    LFEE9   
       LDA    #$C0    
       STA    PF2     
       LDA    #$38    
       STA    COLUPF  
       LDA    #$7F    
       STA    GRP0    
       LDA    #$7E    
       STA    GRP1    
       JSR    LFEE9   
       LDA    #$7E    
       STA    GRP0    
       LDA    #$3E    
       STA    GRP1    
       JSR    LFEE9   
       JSR    LFEE9   
       LDA    #$00    
       STA    PF2     
       LDA    #$02    
       STA    ENABL   
       JSR    LFEE9   
       LDA    #$0C    
       STA    COLUPF  
       LDA    #$00    
       STA    ENABL   
       STA    HMP1    
       LDA    #$7C    
       STA    GRP0    
       LDA    #$1E    
       STA    GRP1    
       JSR    LFEE9   
       LDA    #$6C    
       STA    GRP0    
       LDA    #$1A    
       STA    GRP1    
       LDA    #$20    
       STA    HMP0    
       JSR    LF5F9   
       LDA    #$21    
       STA    CTRLPF  
       LDA    #$02    
       STA    ENABL   
       LDA    #$38    
       STA    GRP0    
       LDA    #$06    
       STA    GRP1    
       LDA    #$E0    
       STA    HMP0    
       LDA    #$20    
       STA    HMBL    
       LDA    #$40    
       STA    HMP1    
       JSR    LF5F9   
       LDA    #$31    
       STA    CTRLPF  
       LDA    #$07    
       STA    NUSIZ0  
       LDA    #$58    
       STA    COLUP1  
       LDA    #$62    
       STA    GRP0    
       LDA    #$84    
       STA    GRP1    
       LDA    #$20    
       STA    HMP0    
       LDA    #$00    
       STA    HMP1    
       STA    HMBL    
       JSR    LF5F9   
       STA    ENABL   
       LDA    #$32    
       STA    GRP0    
       LDA    #$78    
       STA    GRP1    
       LDA    #$D0    
       STA    HMP0    
       LDA    #$C0    
       STA    HMP1    
       JSR    LF5F9   
       LDA    #$3A    
       STA    COLUP1  
       LDY    #$1F    
       STY    GRP0    
       LDY    #$05    
       STY    NUSIZ0  
       LDA    #$F0    
       STA    GRP1    
       JSR    LFEE9   
       LDA    #$0F    
       STA    GRP0    
       LDA    #$E0    
       STA    GRP1    
       LDA    #$C4    
       STA    COLUPF  
       LDY    #$21    
       LDA    #$05    
       STA    CTRLPF  
       STA    WSYNC   
LFBA8: STY    WSYNC   
       LDA    #$F0    
       STA    PF0     
       STA    PF1     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       DEY            
       BNE    LFBA8   
       LDA    $8F     
       STA    HMP1    
       LDA    $90     
       STA    HMP0    
       STY    WSYNC   
       LDX    $97     
       NOP            
       INX            
       INX            
LFBC8: DEX            
       BNE    LFBC8   
       STA    RESP0   
       STY    WSYNC   
       LDX    $96     
       NOP            
       INX            
       INX            
LFBD4: DEX            
       BNE    LFBD4   
       STA    RESP1   
       STY    WSYNC   
       STY    HMOVE   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$0C    
LFBE5: LDY    LF6A8,X 
       LDA    LFFE3,X 
       STY    WSYNC   
       STA    GRP0    
       STY    COLUP0  
       LDA    LFFBC,X 
       STA    GRP1    
       LDA    LF6CE,X 
       STA    COLUP1  
       STY    WSYNC   
       DEX            
       BPL    LFBE5   
       LDY    #$12    
LFC02: STY    WSYNC   
       DEY            
       BNE    LFC02   
       LDX    #$02    
LFC09: LDA    $A0     
       CLC            
       ADC    LF92F,X 
       AND    #$7F    
       STA    $87,X   
       INC    $87,X   
       DEX            
       BNE    LFC09   
       STY    PF0     
       STY    PF1     
       STY    CTRLPF  
       JMP    LFEBD   
LFC21: .byte $FF
LFC22: LDY    INTIM   
       BNE    LFC22   
       STY    WSYNC   
       STY    VBLANK  
       STY    $B2     
       STY    REFP1   
       STY    COLUBK  
       STY    WSYNC   
       LDA    #$07    
       STA    $BB     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$C6    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $B7     
       CMP    #$FE    
       BNE    LFC4A   
       JMP    LF58D   
LFC4A: LDY    $BB     
       LDX    LF600,Y 
       LDA    #$00    
       STA    PF1     
       LDA    ($A1),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($A3),Y 
       STA    GRP1    
       LDA    ($A5),Y 
       STA    GRP0    
       LDA    ($A7),Y 
       LDY    $BB     
       STA    GRP1    
       STX    GRP0    
       STX    GRP1    
       STA    GRP0    
       LDA    $B1     
       STA    PF1     
       DEC    $BB     
       BPL    LFC4A   
LFC76: LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    PF1     
       STY    WSYNC   
       STA    GRP1    
       STA    HMP0    
       LDY    $B7     
       BPL    LFC8D   
       JMP    LF94C   
LFC8D: LDA    $E1     
       STA    COLUBK  
       STA    COLUPF  
       LDY    #$02    
       STY    ENABL   
       LDA    $FC     
       STA    $0122   
       NOP            
       LDY    #$05    
LFC9F: DEY            
       BNE    LFC9F   
       STY    RESP0   
       NOP            
       STY    RESM0   
       STY    WSYNC   
       STY    HMOVE   
       STY    CXCLR   
       LDA    #$00    
       STA    HMM0    
       LDA    $FA     
       BEQ    LFCB7   
       LDA    #$08    
LFCB7: STA    REFP0   
       LDY    #$B0    
       STY    NUSIZ0  
       LDX    #$06    
       STX    $9F     
LFCC1: LDX    $9F     
       LDA    $8E,X   
       STA    HMP1    
       LDA    $95,X   
       TAX            
       CPX    #$07    
       STY    WSYNC   
       BMI    LFCE7   
       JSR    LFEA2   
       CPX    #$08    
       BMI    LFCD7   
LFCD7: BMI    LFCE2   
       NOP            
       NOP            
       BEQ    LFCE2   
       NOP            
       CPX    #$09    
       BNE    LFD0E   
LFCE2: STY    RESP1   
       JMP    LFD12   
LFCE7: DEX            
       BNE    LFCE7   
       LDA    $B5     
       LDA    $B5     
       BNE    LFCFF   
       CPY    $9C     
       CPY    $BA     
       STY    RESP1   
       BNE    LFD0B   
       LDA    #$ED    
       STA    $B5     
       JMP    LFD0B   
LFCFF: LDA    ($B3),Y 
       STY    RESP1   
       STA    GRP0    
       LDA    ($9D),Y 
       STA    COLUP0  
       INC    $B5     
LFD0B: DEY            
       BNE    LFD12   
LFD0E: LDX    $9F     
       STY    RESP1   
LFD12: LDX    $9F     
       STY    WSYNC   
       STY    HMOVE   
       LDA    $80,X   
       STA    NUSIZ1  
       LDA    $B5     
       BNE    LFD2A   
       CPY    $BA     
       BNE    LFD34   
       LDA    #$ED    
       STA    $B5     
       BNE    LFD34   
LFD2A: LDA    ($B3),Y 
       STA    GRP0    
       LDA    ($9D),Y 
       STA    COLUP0  
       INC    $B5     
LFD34: DEY            
       LDA    #$0C    
       STA    $BB     
       LDA    $EA,X   
       STA    $D1     
       LDA    $CA,X   
       STA    $D3     
       CPX    #$00    
       BNE    LFD48   
       JMP    LFE5D   
LFD48: LDA    #$02    
       CPX    $FA     
       BEQ    LFD50   
       LDA    #$00    
LFD50: STY    WSYNC   
       STA    ENAM0   
       LDX    #$0C    
       LDA    ($D1),Y 
       STA    GRP1    
       LDA    ($D3),Y 
       STA    COLUP1  
       JSR    LFEA2   
       LDA    LF65E   
       STA    COLUP0  
       BPL    LFD70   
LFD68: JSR    LFEBC   
       LDA    $01BB   
       STA    COLUP0  
LFD70: STY    WSYNC   
       LDA    ($D1),Y 
       STA    GRP1    
       LDA    ($D3),Y 
       STA    COLUP1  
       LDA    $B5     
       BNE    LFD88   
       CPY    $BA     
       BNE    LFD92   
       LDA    #$ED    
       STA    $B5     
       BNE    LFD92   
LFD88: LDA    ($B3),Y 
       STA    GRP0    
       LDA    ($9D),Y 
       STA    COLUP0  
       INC    $B5     
LFD92: DEY            
       DEX            
       BNE    LFD68   
       STX    ENAM0   
       LDX    $9F     
       LDA    #$82    
       CPX    $DD     
       BNE    LFDA2   
       LDA    #$54    
LFDA2: STA    COLUPF  
       LDA    #$06    
       STA    NUSIZ1  
       STY    WSYNC   
       LDA    #$10    
       STA    CTRLPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $F0,X   
       STA    $E2     
       LDA    $B5     
       NOP            
       STA    RESP1   
       BNE    LFDD0   
       CPY    $BA     
       BEQ    LFDCA   
       JSR    LFEBC   
       BNE    LFDDA   
LFDCA: LDA    #$ED    
       STA    $B5     
       BNE    LFDDA   
LFDD0: LDA    ($B3),Y 
       STA    GRP0    
       LDA    ($9D),Y 
       STA    COLUP0  
       INC    $B5     
LFDDA: LDA    #$F0    
       STA    PF2     
       DEY            
       LDA    $E2     
       CLC            
       ADC    #$06    
       TAX            
       LDA    #$FF    
       STY    WSYNC   
       NOP            
       STA    PF1     
       STA    PF2     
       LDA    LFF00,X 
       STA    GRP1    
       JSR    LFEA2   
       LDA    #$F0    
       STA    PF2     
       STA    RESBL   
       LDA    LF789,X 
       DEX            
       STY    WSYNC   
LFE02: STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    LFF00,X 
       STA    GRP1    
       JSR    LFEA2   
       LDA    #$F0    
       STA    PF2     
       LDA    LF789,X 
       DEX            
       CPX    $E2     
       BPL    LFE02   
       STY    WSYNC   
       LDA    #$00    
       STA    GRP1    
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       JSR    LFEA2   
       LDA    #$00    
       STA    PF2     
       LDX    $E1     
       STX    COLUPF  
       LDX    #$34    
       STA    PF0     
       STY    WSYNC   
       STA    RESBL   
       STX    CTRLPF  
       STA    PF1     
       JSR    LFEA2   
       BIT    COLUP1  
       BPL    LFE51   
       LDX    $9F     
       LDA    LF777,X 
       ORA    $B2     
       STA    $B2     
LFE51: DEC    $9F     
       STY    WSYNC   
       STY    CXCLR   
       JSR    LFEA2   
       JMP    LFCC1   
LFE5D: STY    WSYNC   
       JSR    LFEA2   
       LDX    #$0E    
       LDA    $B8     
       CMP    #$04    
       BNE    LFE70   
       BIT    $E3     
       BMI    LFE70   
       STX    REFP1   
LFE70: STY    WSYNC   
       LDA    ($D1),Y 
       STA    GRP1    
       LDA    ($D3),Y 
       STA    COLUP1  
       JSR    LFEA2   
       DEX            
       BPL    LFE70   
       INX            
       STX    ENABL   
LFE83: STY    WSYNC   
       LDA    #$E2    
       CLC            
       ADC    $E1     
       STA    COLUBK  
       STX    GRP0    
       STX    $B5     
       JSR    LFEA2   
       BEQ    LFEBD   
       BNE    LFE83   
LFE97: LDA    $BB     
       NOP            
       NOP            
LFE9B: NOP            
       LDA    LFE9B   
       JMP    LFEBB   
LFEA2: LDA    $B5     
       BNE    LFEB1   
       CPY    $BA     
       BNE    LFE97   
       LDA    #$ED    
       STA    $B5     
       JMP    LFE9B   
LFEB1: LDA    ($B3),Y 
       STA    GRP0    
       LDA    ($9D),Y 
       STA    COLUP0  
       INC    $B5     
LFEBB: DEY            
LFEBC: RTS            

LFEBD: STY    GRP0    
       STY    REFP0   
       STY    GRP1    
       STY    HMP1    
       STY    WSYNC   
       LDA    #$03    
       LDY    #$04    
LFECB: DEY            
       BNE    LFECB   
       STY    RESP0   
       STY    RESP1   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$F0    
       STA    HMP0    
       INY            
       STY    ENABL   
       STY    WSYNC   
       STY    HMOVE   
       LDA    #$29    
       STA    TIM64T  
       JMP    LF077   
LFEE9: STA    WSYNC   
       STY    WSYNC   
       RTS            

LFEEE: LDA    $9C     
       SEC            
       SBC    #$07    
       LDX    #$FF    
LFEF5: INX            
       SEC            
       SBC    #$1A    
       BCS    LFEF5   
       RTS            

LFEFC: .byte $FF,$FF,$FF,$FF
LFF00: .byte $28,$6C,$6C,$6C,$6C,$6C,$28,$38,$3C,$5C,$6C,$74,$78,$38,$38,$7C
       .byte $7C,$00,$7C,$7C,$38,$38,$78,$74,$6C,$5C,$3C,$38,$FF,$5D,$7F,$FE
LFF20: .byte $11,$12,$11,$0E,$0E,$0F,$11,$11,$13,$14,$13,$11,$11,$13,$17,$17
       .byte $1A,$16,$11,$0F,$0F,$11,$13,$13,$0E,$0E,$13,$13,$0E,$0E,$0E,$00
       .byte $C4,$9C,$D4,$58,$64,$70,$70,$A0,$70,$78,$50,$78,$70,$30,$00,$72
       .byte $62,$62,$74,$74,$78,$78,$20,$70,$78,$50,$78,$70,$30,$00,$19,$91
       .byte $D1,$D2,$74,$78,$78,$10,$38,$3C,$28,$3C,$38,$18
LFF6C: LDX    $87     
       BIT    $E3     
       BMI    LFF76   
       CPX    #$60    
       BPL    LFF77   
LFF76: ASL            
LFF77: TAY            
       AND    #$03    
       RTS            

LFF7B: .byte $00,$3C,$FF,$30,$7F,$FD,$FD,$FF,$FC,$20,$10,$20,$10,$00,$3C,$FF
       .byte $30,$7F,$FD,$FD,$FF,$FC,$10,$20,$10,$20,$00,$7F,$7F,$7F,$7F,$55
       .byte $00,$00,$7F,$7F,$7F,$7F,$55,$00,$66,$66,$66,$3C,$3C,$7F,$7F,$14
       .byte $3E,$2A,$3E,$1C,$00,$33,$33,$33,$3C,$3C,$3C,$7F,$D5,$3E,$2A,$3E
       .byte $1C
LFFBC: .byte $00,$FF,$FF,$FF,$7E,$7E,$7E,$3C,$3C,$3C,$24,$24,$24,$00,$FF,$FF
       .byte $FF,$7E,$7E,$7E,$3C,$3C,$3C,$24,$24,$00,$00,$24,$26,$27,$2F,$2F
       .byte $27,$22,$FB,$AB,$AB,$8B,$03
LFFE3: .byte $00,$FF,$FF,$FF,$FF,$FF,$7E,$7E,$7E,$7E,$7E,$7E,$5A,$00
LFFF1: LDA    $A0     
       JMP    LFF6C   
LFFF6: .byte $FF,$FF,$FF,$FF,$FF,$FF,$00,$F0,$00,$F0
