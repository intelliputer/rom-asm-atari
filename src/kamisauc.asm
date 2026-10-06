; Disassembly of roms/kamisauc.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/kamisauc.bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
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
HMM0    =  $22
HMOVE   =  $2A
CXCLR   =  $2C
CXM0P   =  $30
INPT4   =  $3C
SWCHA   =  $0280
INTIM   =  $0284
TIM64T  =  $0296
LF583   =   $F583

       ORG $F000
LF000: LDA    #$00    
       STA    $A2     
       STA    $A3     
       STA    $A4     
       STA    $A5     
       LDA    #$0E    
       STA    $F2     
       LDA    #$38    
       STA    $9A     
       LDA    #$10    
       NOP            
       NOP            
       STA    $DA     
       LDA    #$00    
       STA    AUDV1   
       JMP    LF500   
LF01F: .byte $00
LF020: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$2B    
       STA    TIM64T  
       RTS            

LF040: INC    $82     
       LDA    $82     
       AND    #$7F    
       STA    $83     
       AND    #$0F    
       STA    $84     
       AND    #$07    
       STA    $85     
       AND    #$03    
       STA    $86     
       AND    #$01    
       STA    $89     
       LDA    $8C     
       STA    HMM0    
       LDA    #$00    
       STA    $80     
       RTS            

LF061: LDA    INTIM   
       BNE    LF061   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       LDY    #$18    
       LDX    #$7C    
       LDA    #$FF    
LF072: STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEX            
       STX    COLUPF  
       DEY            
       BPL    LF072   
       STA    WSYNC   
       LDA    #$70    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    CXCLR   
       STA    $80     
       LDA    $AA     
       STA    COLUBK  
       LDX    #$00    
       LDA    $8F     
       BNE    LF09D   
       JMP    LF900   
LF09D: JMP    LF868   
LF0A0: LDA    $8F     
       AND    #$80    
       BEQ    LF0A7   
       RTS            

LF0A7: LDA    CXM0P   
       AND    #$40    
       BEQ    LF0C7   
       LDA    $8F     
       EOR    #$80    
       STA    $8F     
       LDA    #$00    
       STA    $AE     
       LDA    #$FD    
       STA    $AF     
       LDA    #$08    
       STA    AUDC0   
       LDA    #$03    
       STA    AUDF0   
       LDA    #$0A    
       STA    AUDV0   
LF0C7: RTS            

LF0C8: .byte $EA,$EA,$EA,$EA
LF0CC: DEC    $D8     
       DEC    $D8     
       BPL    LF0D5   
       JMP    LF0EA   
LF0D5: LDA    $D8     
       CMP    #$3E    
       BNE    LF0E7   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$03    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
LF0E7: DEC    AUDV0   
       RTS            

LF0EA: LDA    #$00    
       STA    $8E     
       LDA    #$02    
       STA    AUDC0   
       LDA    #$1F    
       STA    AUDF0   
       LDA    #$03    
       STA    AUDV0   
       INC    $D8     
       INC    $D8     
       RTS            

LF0FF: .byte $EA
LF100: LDX    #$07    
       LDY    #$0F    
LF104: LDA    $C8,X   
       BNE    LF11C   
       LDA    #$00    
LF10A: STA    $C8,X   
       LDA    #$FD    
       STA.wy $00B0,Y 
       DEY            
       LDA    #$00    
       STA.wy $00B0,Y 
       DEY            
       DEX            
       BPL    LF104   
       RTS            

LF11C: CMP    #$FF    
       BEQ    LF10A   
       LDA    $C8,X   
       BPL    LF146   
       LDA    $C8,X   
       CMP    #$98    
       BNE    LF12E   
       LDA    #$FF    
       BNE    LF10A   
LF12E: LDA    #$FD    
       STA.wy $00B0,Y 
       LDA    $C8,X   
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       DEY            
       STA.wy $00B0,Y 
       INC    $C8,X   
       DEY            
       DEX            
       BPL    LF104   
       RTS            

LF146: LDA    #$FF    
       STA.wy $00B0,Y 
       LDA    $C8,X   
       CMP    #$7C    
       BCC    LF155   
       EOR    #$7F    
       BEQ    LF10A   
LF155: CMP    #$03    
       BCC    LF15B   
       LDA    #$03    
LF15B: ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $C0,X   
       DEY            
       STA.wy $00B0,Y 
       DEY            
       LDA    $C8,X   
       CMP    #$03    
       BCC    LF180   
       CMP    #$7C    
       BCS    LF180   
       LDA    $86     
       BNE    LF179   
       INC    $C8,X   
LF179: DEX            
LF17A: BPL    LF104   
       RTS            

LF17D: .byte $EA,$EA,$EA
LF180: LDA    $83     
       BNE    LF186   
       INC    $C8,X   
LF186: DEX            
       BPL    LF17A   
       RTS            

LF18A: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA
LF1B0: LDX    #$07    
       LDA    $A2     
       ORA    #$0F    
       TAY            
LF1B7: LDA    LFC00,Y 
       STA    $E0,X   
       DEY            
       DEX            
       BPL    LF1B7   
       LDX    #$07    
       LDA    $A3     
       ORA    #$07    
       TAY            
LF1C7: LDA    LFC00,Y 
       ORA    $E0,X   
       STA    $E0,X   
       DEY            
       DEX            
       BPL    LF1C7   
       LDX    #$07    
       LDA    $A4     
       ORA    #$0F    
       TAY            
LF1D9: LDA    LFC00,Y 
       STA    $E8,X   
       DEY            
       DEX            
       BPL    LF1D9   
       LDX    #$07    
       LDA    $A5     
       ORA    #$07    
       TAY            
LF1E9: LDA    LFC00,Y 
       ORA    $E8,X   
       STA    $E8,X   
       DEY            
       DEX            
       BPL    LF1E9   
       STA    WSYNC   
       RTS            

LF1F7: .byte $EA,$EA,$EA,$EA,$EA,$60,$00,$00,$00
LF200: LDA    $8D     
       BEQ    LF210   
       DEC    $9F     
       DEC    $9F     
       DEC    $9F     
       DEC    $9F     
       DEC    $8D     
       BPL    LF22F   
LF210: LDA    #$90    
       STA    $9F     
       LDA    INPT4   
       AND    #$80    
       BEQ    LF250   
       LDA    $86     
       BNE    LF22F   
       LDA    SWCHA   
       CMP    #$7F    
       BNE    LF228   
       JMP    LF230   
LF228: CMP    #$BF    
       BNE    LF22F   
       JMP    LF240   
LF22F: RTS            

LF230: LDA    $98     
       CMP    #$0C    
       BEQ    LF23F   
       INC    $98     
       CLC            
       LDA    $8C     
       ADC    #$10    
       STA    $8C     
LF23F: RTS            

LF240: LDA    $98     
       CMP    #$04    
       BEQ    LF24F   
       DEC    $98     
       SEC            
       LDA    $8C     
       SBC    #$10    
       STA    $8C     
LF24F: RTS            

LF250: STA    WSYNC   
       LDX    $98     
       STA    WSYNC   
LF256: DEX            
       BPL    LF256   
       STA    RESM0   
       LDA    $98     
       CMP    #$09    
       BCS    LF278   
       DEC    $A8     
       BNE    LF26B   
       LSR    $A6     
       LDA    $F1     
       STA    $A8     
LF26B: LDA    $A6     
       BNE    LF28F   
       RTS            

LF270: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LF278: DEC    $A9     
       BNE    LF282   
       LSR    $A7     
       LDA    $F1     
       STA    $A9     
LF282: LDA    $A7     
       BNE    LF28F   
       RTS            

LF287: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LF28F: LDA    $F1     
       BNE    LF294   
       RTS            

LF294: LDA    #$6E    
       STA    $9F     
       LDA    #$1A    
       STA    $8D     
       JMP    LF2D0   
LF29F: .byte $EA,$A5,$AC,$C9,$5E,$D0,$0F,$A9,$02,$85,$15,$A9,$0F,$85,$17,$A9
       .byte $08,$85,$19,$85,$02,$60,$60,$02,$A5,$AF,$C9,$FD,$D0,$0C,$A9,$08
       .byte $85,$15,$A9,$1F,$85,$17,$A9,$55,$85,$19,$60,$EA,$EA,$EA,$EA,$EA
       .byte $EA
LF2D0: RTS            

LF2D1: .byte $DA,$C9,$03,$B0,$12,$A5,$8E,$D0,$0E,$EA,$EA,$A9,$08,$85,$15,$A9
       .byte $00,$85,$17,$A9,$0F,$85,$19,$60,$85,$15,$A9,$03,$85,$17,$A9,$04
       .byte $85,$19,$60,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LF300: LDA    #$02    
       STA    $9A     
LF304: JSR    LF020   
LF307: LDA    INTIM   
       BNE    LF307   
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$18    
LF314: STA    WSYNC   
       DEY            
       BPL    LF314   
       STA    CXCLR   
       STA    $80     
       NOP            
       DEC    $9A     
       LDX    #$2F    
       INC    $80     
LF324: STA    WSYNC   
       LDA    LF380,X 
       STA    GRP0    
       LDA    LF3B0,X 
       STA    GRP1    
       STA    WSYNC   
       DEX            
       BPL    LF324   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    #$1C    
LF33D: STA    WSYNC   
       DEX            
       BPL    LF33D   
       JSR    LFB00   
       JSR    LF040   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       LDA    $83     
       BNE    LF356   
       DEC    $9A     
       BEQ    LF359   
LF356: JMP    LF304   
LF359: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF70A   
LF362: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LF380: .byte $00,$FB,$AA,$AA,$8A,$8B,$00,$E4,$94,$97,$94,$E3,$00,$39,$11,$17
       .byte $35,$17,$00,$00,$00,$1C,$22,$43,$C3,$53,$33,$03,$3E,$3C,$60,$42
       .byte $26,$1E,$00,$00,$00,$CC,$C8,$D3,$E0,$C3,$E2,$D3,$C8,$CC,$00,$00
LF3B0: .byte $00,$B4,$A4,$A6,$A4,$A7,$00,$A2,$A6,$AA,$B2,$22,$00,$77,$51,$77
       .byte $51,$77,$00,$1C,$10,$1C,$00,$00,$3E,$00,$3E,$1C,$1C,$1C,$1C,$3C
       .byte $04,$00,$0C,$0C,$00,$1F,$1F,$C3,$43,$DF,$18,$D8,$1F,$1F,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LF3F8: .byte $38,$30,$28,$20,$34,$2C,$24,$1C

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF407: STA    VSYNC,X 
       INX            
       BNE    LF407   
       LDX    #$07    
       LDA    #$40    
LF410: SEC            
       SBC    #$08    
       STA    $C0,X   
       DEX            
       BPL    LF410   
       NOP            
       NOP            
       NOP            
       LDA    #$FF    
       STA    $B1     
       STA    $B3     
       STA    $B5     
       STA    $B7     
       STA    $B9     
       STA    $BB     
       STA    $BD     
       STA    $BF     
       LDA    #$FE    
       STA    $81     
       LDA    #$08    
       STA    $98     
       LDA    #$0F    
       STA    AUDC1   
       NOP            
       LDA    #$53    
       STA    $90     
       LDA    #$64    
       STA    $91     
       LDA    #$95    
       STA    $92     
       LDA    #$A6    
       STA    $93     
       LDA    #$57    
       STA    $94     
       LDA    #$68    
       STA    $95     
       LDA    #$99    
       STA    $96     
       NOP            
       NOP            
       JMP    LF4A8   
LF45B: .byte $EA
LF45C: LDA    #$04    
       STA    $9C     
       LDA    #$00    
       STA    $82     
LF464: JSR    LF020   
LF467: LDA    INTIM   
       BNE    LF467   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$08    
       STA    AUDC0   
       NOP            
       NOP            
       LDA    #$08    
       STA    AUDF0   
       DEC    $F2     
       DEC    AUDV0   
       LDA    $F2     
       STA    COLUBK  
       LDX    #$8F    
LF488: INC    $80     
       STA    WSYNC   
       DEX            
       BNE    LF488   
       JSR    LFB00   
       JSR    LF040   
       LDA    $83     
       BNE    LF4A4   
       DEC    $9C     
       BNE    LF4A4   
       LDA    #$00    
       STA    AUDV0   
       JMP    LF4B4   
LF4A4: JMP    LF464   
LF4A7: .byte $EA
LF4A8: LDA    #$05    
       STA    CTRLPF  
       LDA    #$40    
       STA    $DD     
       LDA    #$FE    
       STA    $DE     
LF4B4: LDA    #$00    
       STA    $8A     
       LDA    #$80    
       STA    $A6     
       STA    $A7     
       LDA    #$04    
       STA    $F1     
       STA    $A9     
       LDA    #$00    
       STA    $8F     
       LDA    #$00    
       STA    $DF     
       LDA    #$0E    
       STA    $AA     
       JMP    LF300   
LF4D3: .byte $EA
LF4D4: .byte $1A,$19,$18,$17,$16,$15,$14,$13,$12,$11,$10,$0F,$0E,$0D,$0C,$0B
       .byte $0A,$09,$08,$07,$06,$05,$04,$03,$02,$01,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LF500: JSR    LF020   
       LDA    $DA     
       BNE    LF50A   
       JMP    LF540   
LF50A: CMP    #$01    
       BNE    LF511   
       JMP    LF58C   
LF511: CMP    #$02    
       BNE    LF518   
       JMP    LF5C0   
LF518: CMP    #$03    
       BNE    LF51F   
       JMP    LF600   
LF51F: CMP    #$04    
       BNE    LF526   
       JMP    LF60A   
LF526: CMP    #$05    
       BNE    LF52D   
       JMP    LF652   
LF52D: CMP    #$06    
       BNE    LF534   
       JMP    LF6C0   
LF534: JMP    LF583   
LF537: .byte $EA,$A2,$01,$F8,$B5,$A6,$0A,$A2,$01
LF540: LDX    #$01    
       SED            
LF543: LDA    $A6,X   
       AND    #$F0    
       NOP            
       NOP            
       CLC            
       ADC    $A2     
       STA    $A2     
       BCC    LF557   
       CLC            
       LDA    $A3     
       ADC    #$10    
       STA    $A3     
LF557: BCC    LF560   
       CLC            
       LDA    $A4     
       ADC    #$10    
       STA    $A4     
LF560: BCC    LF568   
       LDA    $A5     
       ADC    #$10    
       STA    $A5     
LF568: DEX            
       BPL    LF543   
       CLC            
       LDA    $A3     
       ADC    #$50    
       STA    $A3     
       BCC    LF57B   
       CLC            
       LDA    $A4     
       ADC    #$10    
       STA    $A4     
LF57B: BCC    LF584   
       CLC            
       LDA    $A5     
       ADC    #$10    
       STA    $A5     
LF584: CLC            
       CLD            
       LDA    #$01    
       STA    $DA     
       INC    $DF     
LF58C: LDX    #$07    
       LDA    #$FF    
LF590: STA    $C8,X   
       DEX            
       BPL    LF590   
       LDY    #$80    
       LDX    $F1     
       STY    $A6     
       STY    $A7     
       STX    $A8     
       STX    $A9     
       LDY    #$01    
       LDX    #$06    
       LDA    $DF     
LF5A7: ROR            
       BCC    LF5AC   
       STY    $C8,X   
LF5AC: DEX            
       BPL    LF5A7   
       LDA    #$40    
       STA    $DD     
       LDA    #$FE    
       STA    $DE     
       LDA    #$02    
       STA    $DA     
       LDA    #$00    
       STA    $8F     
       NOP            
LF5C0: JMP    LFA00   
LF5C3: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LF5D0: LDA    $89     
       BNE    LF5DA   
       JSR    LF100   
       JMP    LF5E0   
LF5DA: JSR    LF1B0   
       JSR    LF0CC   
LF5E0: JSR    LFA80   
       JSR    LF040   
       JSR    LF93A   
       JSR    LF200   
       LDA    #$00    
       STA    $8F     
       LDA    #$40    
       STA    $DD     
       JSR    LF061   
       JSR    LFA30   
       JSR    LFB00   
       JMP    LF500   
LF600: INC    $8A     
       LDA    $8A     
       STA    $DC     
       LDA    #$04    
       STA    $DA     
LF60A: LDA    $DC     
       AND    #$7F    
       STA    $8F     
       LDA    #$10    
       STA    $AD     
       LDA    #$01    
       STA    $D9     
       LDA    #$02    
       STA    $9D     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$B5    
       STA    $AC     
       LDA    #$64    
       STA    $AB     
       LDA    #$0B    
       SEC            
       SBC    $85     
       STA    $99     
       CMP    #$04    
       BNE    LF636   
       INC    $99     
LF636: NOP            
       NOP            
       LDA    #$48    
       STA    $AE     
       NOP            
       NOP            
       LDA    #$FE    
       STA    $AF     
       LDA    #$02    
       STA    AUDC0   
       LDA    #$15    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$05    
       STA    $DA     
LF652: JMP    LF658   
LF655: .byte $EA,$EA,$EA
LF658: LDX    $F1     
       LDA    $8F     
       AND    #$80    
       BEQ    LF66A   
       CLC            
       LDA    $AE     
       ADC    #$40    
       STA    $AE     
       JMP    LF6E1   
LF66A: LDA    $AC     
       CMP    #$80    
       BCS    LF674   
       INC    $9D     
       DEC    $AB     
LF674: LDA    $85     
       BNE    LF67F   
       CLC            
       LDA    $AE     
       ADC    #$08    
       STA    $AE     
LF67F: LDX    $F1     
       LDA    $AC     
       CMP    #$85    
       BNE    LF695   
       LDA    #$15    
       STA    $AD     
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$50    
       STA    $D9     
       BNE    LF6E1   
LF695: CMP    #$75    
       BNE    LF6A6   
       LDA    #$17    
       STA    $AD     
       DEC    $99     
       LDA    #$B0    
       STA    $D9     
       JMP    LF6E1   
LF6A6: NOP            
       NOP            
       CMP    LF3F8,X 
       BNE    LF6E1   
       JMP    LF800   
LF6B0: .byte $DA,$A9,$80,$45,$8F,$85,$8F,$A9,$00,$85,$AE,$A9,$FD,$85,$AF,$EA
LF6C0: LDA    $86     
       BEQ    LF6CA   
       LDA    $F2     
       STA    $AA     
       BNE    LF6CE   
LF6CA: LDA    #$00    
       STA    $AA     
LF6CE: LDA    $AE     
       CLC            
       ADC    #$40    
       STA    $AE     
       LDA    #$08    
       STA    AUDC0   
       LDA    #$1F    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
LF6E1: JSR    LF1B0   
       JSR    LF0A0   
       JSR    LF040   
       JSR    LF200   
       JSR    LF061   
       JSR    LFA30   
       JSR    LFB00   
       DEC    $AC     
       BNE    LF706   
       LDA    #$04    
       STA    $DA     
       DEC    $DC     
       BNE    LF706   
       LDA    #$01    
       STA    $DA     
LF706: JMP    LF500   
LF709: .byte $EA
LF70A: JSR    LF020   
       JSR    LF061   
       LDY    #$03    
LF712: STA    WSYNC   
       DEY            
       BNE    LF712   
       STY    RESM0   
       JSR    LF1B0   
       JSR    LFB00   
       LDA    INPT4   
       AND    #$80    
       BEQ    LF72A   
       INC    $9A     
       JMP    LF70A   
LF72A: JMP    LF000   
LF72D: .byte $F0,$EA,$EA
LF730: STA    WSYNC   
       INC    $D0,X   
       LDA    $D0,X   
       AND    #$0F    
       CMP    #$05    
       BEQ    LF745   
       TAY            
       EOR    LFD28,Y 
       STA    WSYNC   
       STA    $D0,X   
       RTS            

LF745: STA    WSYNC   
       LDA    #$60    
       STA    $D0,X   
       INC    $90,X   
       LDA    $90,X   
       AND    #$0F    
       CMP    #$0E    
       BNE    LF759   
       LDA    #$53    
       STA    $90,X   
LF759: RTS            

LF75A: .byte $EA,$EA,$EA,$EA,$EA,$EA
LF760: STA    WSYNC   
       DEC    $D0,X   
       LDA    $D0,X   
       AND    #$0F    
       BEQ    LF773   
       TAY            
       EOR    LFD30,Y 
       STA    WSYNC   
       STA    $D0,X   
       RTS            

LF773: STA    WSYNC   
       LDA    #$A5    
       STA    $D0,X   
       DEC    $90,X   
       LDA    $90,X   
       AND    #$0F    
       CMP    #$02    
       BNE    LF787   
       LDA    #$6D    
       STA    $90,X   
LF787: RTS            

LF788: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LF792: STA    WSYNC   
       INC    $D0,X   
       LDA    $D0,X   
       AND    #$0F    
       CMP    #$09    
       BEQ    LF7A7   
       TAY            
       EOR    LFD18,Y 
       STA    WSYNC   
       STA    $D0,X   
       RTS            

LF7A7: STA    WSYNC   
       LDA    #$70    
       STA    $D0,X   
       INC    $90,X   
       LDA    $90,X   
       AND    #$0F    
       CMP    #$0E    
       BNE    LF7BB   
       LDA    #$93    
       STA    $90,X   
LF7BB: RTS            

LF7BC: .byte $EA,$EA,$EA,$EA
LF7C0: STA    WSYNC   
       DEC    $D0,X   
       LDA    $D0,X   
       AND    #$0F    
       BEQ    LF7D3   
       TAY            
       EOR    LFD08,Y 
       STA    WSYNC   
       STA    $D0,X   
       RTS            

LF7D3: STA    WSYNC   
       LDA    #$A9    
       STA    $D0,X   
       DEC    $90,X   
       LDA    $90,X   
       AND    #$0F    
       CMP    #$02    
       BNE    LF7E7   
       LDA    #$AD    
       STA    $90,X   
LF7E7: RTS            

LF7E8: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LF800: LDA    #$06    
       STA    $DA     
       LDA    #$80    
       EOR    $8F     
       STA    $8F     
       LDA    #$00    
       STA    $AE     
       LDA    #$FD    
       STA    $AF     
       LDA    $F2     
       CLC            
       ADC    #$10    
       STA    $F2     
       LDA    $F1     
       BEQ    LF81F   
       DEC    $F1     
LF81F: BNE    LF82C   
       LDA    #$00    
       STA    $DF     
       LDA    #$02    
       STA    $DA     
       JMP    LF45C   
LF82C: LDA    #$30    
       STA    $AC     
       JMP    LF6C0   
LF833: .byte $20,$00,$F2,$20,$71,$F0,$20,$A0,$F0,$20,$40,$F0,$EA,$4C,$00,$F3
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$00,$85,$A4
       .byte $89,$D0,$08,$38,$E5,$86,$85,$99,$4C,$00,$F8,$18,$65,$86,$85,$99
       .byte $4C,$00,$F8,$EA,$EA
LF868: LDA    #$00    
       STA    $80     
       LDA    $AD     
       STA    NUSIZ0  
       LDA    $AA     
       STA    COLUBK  
       TSX            
       STX    $87     
       LDX    #$1D    
       TXS            
       STA    WSYNC   
       LDA    $99     
       AND    #$0F    
       TAY            
       LDA    $D9     
       STA    HMP0    
       INC    $80     
       STA    WSYNC   
LF889: DEY            
       BPL    LF889   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
LF894: STA    WSYNC   
       INC    $80     
       LDA    $9F     
       CMP    $80     
       PHP            
       PLA            
       LDA    $80     
       CMP    $9D     
       BNE    LF894   
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
LF8AE: STA    WSYNC   
       INC    $80     
       LDA    ($AE),Y 
       STA    GRP0    
       NOP            
       NOP            
       STA    COLUP0  
       LDA    $9F     
       CMP    $80     
       PHP            
       PLA            
       DEY            
       BPL    LF8AE   
       LDY    $AB     
LF8C5: STA    WSYNC   
       INC    $80     
       LDA    $9F     
       CMP    $80     
       PHP            
       PLA            
       LDA    #$1F    
       STA    COLUP0  
       DEY            
       BPL    LF8C5   
       LDX    $87     
       TXS            
       LDA    #$00    
       STA    HMM0    
       NOP            
       NOP            
       STA    GRP0    
       STA    $AA     
       LDA    #$10    
       STA    NUSIZ0  
       RTS            

LF8E8: .byte $B0,$F1,$20,$A0,$F2,$A0,$0D,$85,$02,$88,$10,$FB,$A9,$00,$85,$AA
       .byte $60,$EA,$EA,$EA,$00,$00,$00,$00
LF900: LDA    #$10    
       STA    NUSIZ0  
       JSR    LF97A   
       JSR    LF97A   
       JSR    LF97A   
       JSR    LF97A   
       JSR    LF97A   
       JSR    LF97A   
       JSR    LF97A   
       NOP            
       NOP            
       NOP            
       LDA    #$10    
       STA    NUSIZ0  
       LDA    #$00    
       STA    $8B     
       STA    $AA     
       LDA    #$40    
       STA    $DD     
       LDA    #$00    
       STA    ENABL   
       RTS            

LF92F: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LF93A: LDX    #$07    
LF93C: LDA    $90,X   
       AND    #$F0    
       CMP    #$50    
       BNE    LF94A   
       JSR    LF730   
       JMP    LF965   
LF94A: CMP    #$90    
       BNE    LF954   
       JSR    LF792   
       JMP    LF965   
LF954: CMP    #$60    
       BNE    LF95E   
       JSR    LF760   
       JMP    LF965   
LF95E: CMP    #$A0    
       BNE    LF965   
       JSR    LF7C0   
LF965: DEX            
       BPL    LF93C   
       STA    WSYNC   
       RTS            

LF96B: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LF97A: TSX            
       STX    $87     
       LDX    #$1D    
       TXS            
       INC    $80     
       STA    WSYNC   
       LDX    $8B     
       LDA    $90,X   
       AND    #$0F    
       TAY            
       LDA    $D0,X   
       STA    HMP0    
       INC    $80     
       STA    WSYNC   
LF993: DEY            
       BPL    LF993   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       INC    $80     
       TXA            
       ASL            
       TAX            
       LDA    $B0,X   
       STA    $A0     
       INX            
       LDA    $B0,X   
       STA    $A1     
       BNE    LF9B0   
       NOP            
       NOP            
       NOP            
       NOP            
LF9B0: LDX    #$02    
       LDY    #$07    
LF9B4: STA    WSYNC   
       INC    $80     
       LDA    ($A0),Y 
       STA    GRP0    
       LDA    ($DD),Y 
       STA    COLUP0  
       LDA    $9F     
       CMP    $80     
       PHP            
       PLA            
       DEY            
       BPL    LF9B4   
       BNE    LF9D0   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
LF9D0: LDY    #$04    
LF9D2: STA    WSYNC   
       INC    $80     
       LDA    $80     
       CMP    $9F     
       PHP            
       PLA            
       DEY            
       BPL    LF9D2   
       INC    $8B     
       LDA    #$00    
       STA    HMM0    
       LDX    $87     
       TXS            
       LDA    $DD     
       SEC            
       SBC    #$08    
       STA    $DD     
       RTS            

LF9F0: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LFA00: LDX    #$07    
LFA02: LDA    $C8,X   
       CMP    #$FF    
       BNE    LFA10   
       DEX            
       BPL    LFA02   
       JMP    LF540   
LFA0E: .byte $EA,$EA
LFA10: LDX    #$07    
LFA12: LDA    $C8,X   
       BEQ    LFA1A   
       CMP    #$FF    
       BNE    LFA22   
LFA1A: DEX            
       BPL    LFA12   
       JMP    LF600   
LFA20: .byte $EA,$EA
LFA22: JMP    LF5D0   
LFA25: .byte $DA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LFA30: STA    WSYNC   
       LDA    #$A0    
       STA    $A0     
       LDA    #$FC    
       STA    $A1     
       LDA    #$40    
       LDY    #$04    
       LDX    $98     
       STA    WSYNC   
LFA42: DEX            
       BPL    LFA42   
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
LFA4D: STA    WSYNC   
       LDA    ($A0),Y 
       STA    GRP0    
       LDA    $82     
       STA    COLUP0  
       DEY            
       BPL    LFA4D   
       STA    WSYNC   
       LDA    #$18    
       STA    GRP0    
       LDA    #$5F    
       STA    COLUP0  
       STA    WSYNC   
       LDA    #$FF    
       STA    GRP0    
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       RTS            

LFA71: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LFA80: LDA    CXM0P   
       AND    #$40    
       BEQ    LFA95   
       LDX    $8D     
       LDA    LFCC0,X 
       TAX            
       LDA    #$80    
       STA    $C8,X   
       STA    $8E     
       JMP    LFAB0   
LFA95: RTS            

LFA96: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
LFAB0: LDA    #$00    
       STA    $8D     
       CLC            
       SED            
       LDA    $A3     
       ADC    #$10    
       STA    $A3     
       BCC    LFACE   
       CLC            
       LDA    $A4     
       ADC    #$10    
       STA    $A4     
       BCC    LFACE   
       CLC            
       LDA    $A5     
       ADC    #$10    
       STA    $A5     
LFACE: CLD            
       LDA    #$40    
       STA    $D8     
       STA    CXCLR   
       RTS            

LFAD6: .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$0E
       .byte $85,$0F,$88,$10,$F3,$85,$02,$A9,$00,$85,$0D,$85,$0E,$85,$0F,$85
       .byte $1B,$85,$1C,$60,$00,$00,$00,$00,$00,$00
LFB00: STA    WSYNC   
       LDA    $9A     
       STA    COLUP0  
       STA    COLUP1  
       NOP            
       NOP            
       LDA    #$52    
       STA    COLUPF  
       LDA    #$17    
       STA    NUSIZ1  
       STA    NUSIZ0  
       LDY    #$04    
       LDA    #$30    
       STA    WSYNC   
LFB1A: DEY            
       BPL    LFB1A   
       STA    RESP0   
       STA    HMP0    
       LDY    #$0A    
       LDA    #$D0    
       STA    WSYNC   
LFB27: DEY            
       BPL    LFB27   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$35    
       STA    COLUPF  
       LDY    #$02    
LFB38: STA    WSYNC   
       LDA    #$70    
       STA    COLUBK  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEY            
       BPL    LFB38   
       TAX            
       LDY    #$01    
LFB4C: STA    WSYNC   
       LDA    #$FC    
       STA    PF0     
       LDA    LFCA8,Y 
       STA    GRP0    
       LDA    #$00    
       STA    PF1     
       STX    PF2     
       LDA    LFCA8,Y 
       STA    GRP1    
       DEY            
       BPL    LFB4C   
       LDY    #$07    
LFB67: STA    WSYNC   
       LDA    $A6     
       STA    GRP0    
       LDA    $A7     
       STA    GRP1    
       DEY            
       BPL    LFB67   
       LDY    #$01    
LFB76: STA    WSYNC   
       LDA    LFCB0,Y 
       STA    GRP0    
       STA    GRP1    
       DEY            
       BPL    LFB76   
       STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDY    #$07    
       LDA    #$20    
       STA    WSYNC   
LFB92: DEY            
       BPL    LFB92   
       STA    RESP0   
       STA    HMP0    
       LDY    #$08    
       LDA    #$10    
       STA    WSYNC   
LFB9F: DEY            
       BPL    LFB9F   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$15    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$07    
       STA    PF2     
       STA    WSYNC   
       LDX    #$06    
LFBBE: STA    WSYNC   
       LDA    $E8,X   
       STA    GRP0    
       LDA    $E0,X   
       STA    GRP1    
       LDA    #$07    
       STA    PF2     
       DEX            
       BPL    LFBBE   
       STA    WSYNC   
       LDX    #$35    
       LDA    #$FF    
       STA    PF2     
       LDY    #$26    
LFBD9: STA    WSYNC   
       STX    COLUPF  
       INX            
       DEY            
       BPL    LFBD9   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    COLUBK  
       STA    WSYNC   
       LDA    $8D     
       TAX            
       LSR            
       STA    AUDV1   
       LDA    LF4D4,X 
       STA    AUDF1   
       RTS            

LFBFF: .byte $EA
LFC00: .byte $00,$00,$70,$50,$50,$50,$70,$00,$00,$00,$07,$05,$05,$05,$07,$00
       .byte $00,$00,$70,$20,$20,$60,$20,$00,$00,$00,$07,$02,$02,$06,$02,$00
       .byte $00,$00,$70,$40,$70,$10,$70,$00,$00,$00,$07,$04,$07,$01,$07,$00
       .byte $00,$00,$70,$10,$70,$10,$70,$00,$00,$00,$07,$01,$07,$01,$07,$00
       .byte $00,$00,$10,$10,$70,$50,$50,$00,$00,$00,$01,$01,$07,$05,$05,$00
       .byte $00,$00,$70,$10,$70,$40,$70,$00,$00,$00,$07,$01,$07,$04,$07,$00
       .byte $00,$00,$70,$50,$70,$40,$40,$00,$00,$00,$07,$05,$07,$04,$04,$00
       .byte $00,$00,$10,$10,$10,$10,$70,$00,$00,$00,$01,$01,$01,$01,$07,$00
       .byte $00,$00,$70,$50,$70,$50,$70,$00,$00,$00,$07,$05,$07,$05,$07,$00
       .byte $00,$00,$10,$10,$70,$50,$70,$00,$00,$00,$01,$01,$07,$05,$07,$00
       .byte $7E,$FF,$FF,$7E,$3C,$00,$00,$00
LFCA8: .byte $55,$55,$00,$00,$00,$00,$00,$00
LFCB0: .byte $55,$55,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFCC0: .byte $00,$00,$00,$01,$01,$01,$01,$02,$02,$02,$02,$03,$03,$03,$03,$04
       .byte $04,$04,$04,$05,$05,$05,$05,$06,$06,$06,$06,$07,$07,$07,$07,$07
       .byte $07,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFD08: .byte $00,$70,$50,$40,$20,$00,$F0,$D0,$B0,$A0,$00,$00,$00,$00,$00,$00
LFD18: .byte $70,$50,$40,$20,$00,$F0,$D0,$B0,$A0,$79,$00,$00,$00,$00,$00,$00
LFD28: .byte $60,$30,$00,$D0,$A0,$00,$00,$00
LFD30: .byte $00,$60,$30,$00,$D0,$A5,$00,$00,$00,$00,$28,$00,$28,$00,$00,$00
       .byte $00,$A5,$42,$18,$3C,$18,$42,$A5,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$44,$10,$38,$10,$44,$00,$00
       .byte $00,$81,$18,$5A,$42,$5A,$18,$81,$00,$82,$10,$00,$44,$00,$10,$82
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$82,$00,$82,$10,$00,$44,$00,$10,$82
       .byte $00,$82,$10,$00,$44,$00,$10,$82,$00,$82,$10,$00,$44,$00,$10,$82
       .byte $00,$18,$24,$5A,$81,$5A,$24,$18,$00,$10,$00,$00,$92,$00,$00,$10
       .byte $00,$10,$00,$00,$92,$00,$00,$10,$00,$10,$00,$00,$92,$00,$00,$10
       .byte $00,$10,$00,$00,$92,$00,$00,$10,$00,$10,$00,$00,$92,$00,$00,$10
       .byte $00,$10,$AA,$55,$92,$55,$AA,$10,$00,$10,$00,$00,$92,$00,$00,$10
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$48,$48,$28,$48,$14,$48,$1F,$00,$28,$78,$1A,$78,$28,$28,$28
       .byte $00,$7C,$7B,$7A,$78,$34,$34,$7C,$00,$4E,$1F,$4A,$7E,$48,$48,$48
       .byte $00,$18,$58,$18,$18,$58,$38,$18,$00,$28,$CA,$28,$28,$CA,$18,$78
       .byte $00,$18,$F8,$3C,$5C,$5C,$3C,$D8,$00,$00,$00,$00,$18,$00,$00,$00
       .byte $00,$00,$00,$00,$3C,$00,$00,$00,$00,$00,$00,$00,$7C,$00,$00,$00
       .byte $00,$00,$00,$10,$FE,$10,$00,$00,$00,$00,$00,$38,$FE,$38,$00,$00
       .byte $00,$00,$7C,$FE,$AA,$FE,$7C,$00,$00,$10,$7C,$FE,$FE,$FE,$7C,$10
       .byte $00,$10,$7C,$FE,$AA,$FE,$7C,$10,$00,$10,$7C,$FE,$FE,$FE,$7C,$10
       .byte $00,$38,$7C,$FE,$AA,$FE,$7C,$38,$00,$38,$7C,$FE,$FE,$FE,$7C,$38
       .byte $00,$38,$7C,$FE,$AA,$FE,$7C,$38,$00,$38,$7C,$FE,$FE,$FE,$7C,$38
       .byte $00,$38,$7C,$FE,$AA,$FE,$7C,$38,$00,$38,$7C,$FE,$FE,$FE,$7C,$38
       .byte $00,$38,$7C,$FE,$AA,$FE,$7C,$38,$00,$38,$7C,$FE,$FE,$FE,$7C,$38
       .byte $00,$38,$7C,$FE,$AA,$FE,$7C,$38,$00,$38,$7C,$FE,$FE,$FE,$7C,$38
       .byte $00,$38,$7C,$FE,$AA,$FE,$7C,$38,$00,$38,$7C,$FE,$FE,$FE,$7C,$38
       .byte $00,$38,$7C,$FE,$AA,$FE,$7C,$38,$00,$00,$FE,$00,$00,$00,$FE,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$10,$00,$00,$00,$00,$00,$00,$00,$10,$00,$00
       .byte $00,$00,$00,$00,$00,$18,$00,$00,$00,$00,$00,$00,$04,$0E,$00,$00
       .byte $00,$00,$00,$00,$00,$28,$10,$00,$00,$08,$08,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$18,$00,$00,$00,$00,$00,$00,$00,$18,$00,$00
       .byte $00,$00,$00,$00,$3C,$3C,$00,$00,$00,$00,$00,$00,$10,$38,$10,$00
       .byte $00,$00,$00,$00,$18,$3C,$18,$00,$00,$00,$00,$08,$14,$3E,$00,$00
       .byte $00,$00,$00,$42,$66,$3C,$18,$00,$00,$3E,$08,$3E,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$38,$7C,$38,$00,$00,$00,$00,$00,$2E,$66,$2E,$00
       .byte $00,$00,$00,$18,$7E,$7E,$18,$00,$00,$18,$7E,$18,$18,$7E,$18,$00
       .byte $00,$00,$00,$3C,$5A,$7E,$24,$18,$00,$00,$18,$24,$5A,$FF,$00,$00
       .byte $00,$00,$00,$81,$C3,$FF,$7E,$3C,$00,$FF,$7E,$18,$7E,$FF,$00,$00
       .byte $00,$FF,$18,$7E,$18,$3C,$00,$00,$00,$3C,$FF,$4F,$00,$F4,$FF,$3C
