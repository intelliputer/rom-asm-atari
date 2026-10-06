; Disassembly of roms/Dice Puzzle.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Dice Puzzle.bin
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
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
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
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       SEI            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$80    
       STA    $9B     
       JSR    LF554   
LF012: LDA    #$00    
       STA    COLUPF  
       LDA    #$64    
       STA    COLUBK  
       LDA    $C2     
       LDX    #$00    
       JSR    LF4B6   
       LDA    $C3     
       LDX    #$01    
       JSR    LF4B6   
       LDA    $C4     
       LDX    #$02    
       JSR    LF4B6   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$25    
       STA    NUSIZ0  
       LDA    #$05    
       STA    NUSIZ1  
LF03B: LDA    INTIM   
       BNE    LF03B   
       STA    $82     
       STA    $A9     
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       STA    CXCLR   
       LDA    #$04    
       STA    $84     
       STA    $A8     
       LDA    #$0F    
       STA    $A7     
       STA    VDELP0  
       STA    VDELP1  
       LDA    $C5     
       STA    $83     
LF05E: LDX    #$00    
LF060: LDA    #$00    
       STA    $81     
       CPX    #$05    
       BCC    LF070   
       LDY    $A7     
       BMI    LF070   
       LDA    ($9F),Y 
       STA    $81     
LF070: LDY    #$00    
       LDA    $A9     
       CMP    $83     
       BCC    LF080   
       LDY    $A8     
       BEQ    LF080   
       DEC    $A8     
       LDY    #$FF    
LF080: LDA    $81     
       STA    WSYNC   
       STA    GRP0    
       STY    ENAM0   
       LDA    LFE02,X 
       STA    PF0     
       LDA    LFE1A,X 
       STA    PF1     
       LDA    LFE32,X 
       STA    PF2     
       INC    $A9     
       LDA    #$00    
       CPX    #$05    
       BCC    LF0A7   
       LDY    $A7     
       BMI    LF0A7   
       LDA    ($A1),Y 
       DEC    $A7     
LF0A7: STA    WSYNC   
       STA    GRP1    
       INC    $A9     
       INX            
       CPX    #$14    
       BNE    LF060   
       DEC    $84     
       BEQ    LF103   
       INC    $82     
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$0F    
       STA    $A7     
       LDX    $82     
       LDY    $BA,X   
       STA    WSYNC   
       DEY            
       LDA    LFDF0,Y 
       STA    COLUP0  
       LDA    #$88    
       LDY    $BA,X   
       DEY            
       BEQ    LF0E3   
LF0DD: CLC            
       ADC    #$10    
       DEY            
       BNE    LF0DD   
LF0E3: STA    $9F     
       LDY    $BE,X   
       STA    WSYNC   
       DEY            
       LDA    LFDF0,Y 
       STA    COLUP1  
       LDA    #$88    
       LDY    $BE,X   
       DEY            
       BEQ    LF0FC   
LF0F6: CLC            
       ADC    #$10    
       DEY            
       BNE    LF0F6   
LF0FC: STA    $A1     
       STA    WSYNC   
       JMP    LF05E   
LF103: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$35    
       JSR    LF4DE   
       STA    WSYNC   
       LDA    #$02    
       STA    TIM64T  
       LDA    #$00    
       STA    $81     
       LDA    $87     
       STA    $82     
LF12F: LDA    INTIM   
       BNE    LF12F   
       LDA    $88     
       STA    $83     
       JSR    LF470   
       LDA    #$98    
       JSR    LF4DE   
       LDA    #$20    
       STA    TIM64T  
       LDA    $9B     
       CMP    #$40    
       BEQ    LF176   
       CMP    #$20    
       BNE    LF173   
       LDA    #$02    
       STA    $D0     
       LDA    $CD     
       BEQ    LF181   
       LDA    $CF     
       BNE    LF16A   
       LDA    #$00    
       STA    $C6     
       JSR    LF49D   
       AND    #$07    
       CMP    #$05    
       BCS    LF179   
LF168: STA    $C7     
LF16A: JSR    LF62F   
       LDA    $CF     
       BNE    LF173   
       DEC    $CD     
LF173: JMP    LF271   
LF176: JMP    LF1D3   
LF179: LDA    #$04    
       BNE    LF168   
LF17D: LDA    #$05    
       BNE    LF196   
LF181: LDA    #$00    
       STA    $C7     
       LDA    $CE     
       BEQ    LF1A4   
       LDA    $CF     
       BNE    LF198   
       JSR    LF49D   
       AND    #$07    
       CMP    #$06    
       BCS    LF17D   
LF196: STA    $C6     
LF198: JSR    LF62F   
       LDA    $CF     
       BNE    LF173   
       DEC    $CE     
       JMP    LF271   
LF1A4: LDA    $D6     
       BNE    LF1B2   
       STA    $CC     
       LDA    #$FF    
       STA    $D6     
       LDA    #$05    
       STA    $CB     
LF1B2: LDA    $CC     
       CMP    #$28    
       BEQ    LF1C0   
       JSR    LF743   
       INC    $CC     
LF1BD: JMP    LF271   
LF1C0: LDA    #$40    
       STA    $9B     
       LDA    #$00    
       STA    $9C     
       STA    $9D     
       STA    $C6     
       STA    $C7     
       STA    $D8     
       JSR    LF3BD   
LF1D3: LDA    $D5     
       BNE    LF1BD   
       LDA    $85     
       AND    #$0F    
       BNE    LF1F0   
       LDA    #$01    
       STA    $CA     
       JSR    LF5A1   
       ASL            
       BCC    LF1F7   
       ASL            
       BCC    LF20D   
       ASL            
       BCC    LF21A   
       ASL            
       BCC    LF230   
LF1F0: LDA    #$00    
       STA    $CA     
       JMP    LF244   
LF1F7: LDA    $C7     
       BNE    LF1F0   
       LDA    $C6     
       CMP    #$05    
       BEQ    LF1F0   
       INC    $C6     
LF203: LDX    $C6     
       LDA    LFDF6,X 
       STA    $C4     
       JMP    LF244   
LF20D: LDA    $C7     
       BNE    LF1F0   
       LDA    $C6     
       BEQ    LF1F0   
       DEC    $C6     
       JMP    LF203   
LF21A: LDA    $C6     
       BNE    LF1F0   
       LDA    $C7     
       CMP    #$04    
       BEQ    LF1F0   
       INC    $C7     
LF226: LDX    $C7     
       LDA    LFDFC,X 
       STA    $C5     
       JMP    LF244   
LF230: LDA    $C6     
       BNE    LF1F0   
       LDA    $C7     
       BEQ    LF1F0   
       DEC    $C7     
       JMP    LF226   
LF23D: LDA    #$00    
       STA    $C8     
LF241: JMP    LF271   
LF244: LDA    $C9     
       BNE    LF241   
       LDA    $D2     
       BNE    LF26E   
       JSR    LF5B3   
       BMI    LF23D   
       LDA    $C8     
       BNE    LF241   
       SED            
       CLC            
       LDA    $88     
       ADC    #$01    
       STA    $88     
       BCC    LF265   
       LDA    $87     
       ADC    #$00    
       STA    $87     
LF265: CLD            
       LDA    #$FF    
       STA    $C8     
       LDA    #$20    
       STA    $D0     
LF26E: JSR    LF62F   
LF271: JSR    LF5BF   
       LDA    $C9     
       BNE    LF2B9   
       LDA    $D7     
       CMP    #$3C    
       BNE    LF2AC   
       LDA    #$00    
       STA    $D7     
       BNE    LF2AC   
       LDA    $9C     
       CMP    #$60    
       BNE    LF2BC   
       LDA    $9D     
       CMP    #$00    
       BNE    LF2BC   
       LDA    $D5     
       BNE    LF29E   
       LDA    #$00    
       STA    $CC     
       LDA    #$19    
       STA    $CB     
       STA    $D5     
LF29E: LDA    $CC     
       CMP    #$13    
       BEQ    LF2B3   
       JSR    LF743   
       INC    $CC     
       JMP    LF2FD   
LF2AC: LDA    $D5     
       BNE    LF29E   
       JMP    LF2FD   
LF2B3: JSR    LF3BD   
       JSR    LF77E   
LF2B9: JMP    LF2FD   
LF2BC: LDA    $9B     
       CMP    #$40    
       BNE    LF2FD   
       SED            
       CLC            
       LDA    $9D     
       ADC    #$01    
       CMP    #$60    
       BEQ    LF2D1   
       STA    $9D     
       JMP    LF2DE   
LF2D1: LDA    #$00    
       STA    $9D     
       CLC            
       LDA    $9C     
       ADC    #$01    
       STA    $9C     
       INC    $D8     
LF2DE: CLD            
       LDA    $D8     
       CMP    #$05    
       BNE    LF2EF   
       LDA    #$00    
       STA    $D8     
       LDA    #$FF    
       STA    $D4     
       BNE    LF2FD   
LF2EF: LDA    $D4     
       BEQ    LF2FD   
       LDA    $9D     
       CMP    #$02    
       BNE    LF2FD   
       LDA    #$00    
       STA    $D4     
LF2FD: LDA    INTIM   
       BNE    LF2FD   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$25    
       STA    TIM64T  
       INC    $85     
       INC    $D7     
       JSR    LF75F   
       LDY    $BA     
       DEY            
       LDA    LFDF0,Y 
       STA    COLUP0  
       LDA    #$88    
       LDY    $BA     
       DEY            
       BEQ    LF335   
LF32F: CLC            
       ADC    #$10    
       DEY            
       BNE    LF32F   
LF335: STA    $9F     
       LDY    $BE     
       DEY            
       LDA    LFDF0,Y 
       STA    COLUP1  
       LDA    #$88    
       LDY    $BE     
       DEY            
       BEQ    LF34C   
LF346: CLC            
       ADC    #$10    
       DEY            
       BNE    LF346   
LF34C: STA    $A1     
       LDA    $9B     
       CMP    #$40    
       BNE    LF38A   
       LDA    $C9     
       BNE    LF377   
       LDA    $CF     
       BNE    LF38A   
       LDA    $AA     
       LDX    #$0F    
LF360: CMP    $AA,X   
       BNE    LF38A   
       DEX            
       BPL    LF360   
       LDA    #$FF    
       STA    $C9     
       LDA    #$00    
       STA    $CC     
       LDA    #$0F    
       STA    $D3     
       LDA    #$02    
       STA    $D9     
LF377: LDA    $D3     
       BNE    LF37D   
       INC    $CC     
LF37D: LDA    $CC     
       CMP    #$0F    
       BEQ    LF3B4   
       LDA    $D3     
       BEQ    LF3AE   
LF387: JSR    LF78B   
LF38A: LDA    SWCHB   
       STA    $81     
       LSR            
       BCS    LF3E1   
       JSR    LF554   
       LDA    #$20    
       STA    $9B     
       LDA    #$00    
       STA    $95     
       STA    $96     
       STA    $97     
       STA    $98     
       STA    $99     
       STA    $9A     
       LDA    $85     
       STA    $80     
       JMP    LF3E1   
LF3AE: LDA    #$0F    
       STA    $D3     
       BNE    LF387   
LF3B4: JSR    LF77E   
       JSR    LF3BD   
       JMP    LF38A   
LF3BD: LDA    #$00    
       STA    AUDC0   
       RTS            

LF3C2: .byte $A9,$0F,$25,$85,$D0,$19,$A5,$81,$4A,$4A,$B0,$13,$20,$54,$F5,$A9
       .byte $10,$85,$9B,$A5,$9E,$C9,$02,$D0,$04,$A9,$00,$85,$9E,$E6,$9E
LF3E1: LDA    #$80    
       AND    $9B     
       BEQ    LF3F9   
       LDA    #$50    
       CLC            
       LDX    #$00    
LF3EC: STA    $89,X   
       INX            
       INX            
       ADC    #$08    
       CMP    #$80    
       BNE    LF3EC   
       JMP    LF012   
LF3F9: LDA    #$40    
       AND    $9B     
       BEQ    LF447   
       LDA    $9C     
       STA    $81     
       LDA    #$00    
       STA    $82     
       LDA    $9D     
       STA    $83     
       JSR    LF470   
       LDA    #$80    
       STA    $8F     
       LDA    $91     
       CMP    #$80    
       BNE    LF41C   
       LDA    #$00    
       STA    $91     
LF41C: LDA    $9C     
       BNE    LF424   
       LDA    #$00    
       STA    $8B     
LF424: LDA    $D7     
       CMP    #$1E    
       BCC    LF42E   
       CMP    #$3C    
       BCC    LF434   
LF42E: LDA    #$E8    
       STA    $8D     
       BNE    LF438   
LF434: LDA    #$80    
       STA    $8D     
LF438: LDA    $D5     
       BNE    LF440   
       LDA    $C9     
       BEQ    LF444   
LF440: LDA    #$E8    
       STA    $8D     
LF444: JMP    LF012   
LF447: LDA    #$20    
       AND    $9B     
       BEQ    LF45A   
       LDA    #$95    
       STA    $A4     
       JSR    LF585   
       JSR    LF470   
LF457: JMP    LF012   
LF45A: LDA    #$10    
       AND    $9B     
       BEQ    LF457   
       LDA    #$00    
       STA    $81     
       STA    $82     
       LDA    $9E     
       STA    $83     
       JSR    LF470   
       JMP    LF012   
LF470: LDX    #$02    
LF472: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $81,X   
       AND    #$F0    
       LSR            
       STA.wy $0089,Y 
       LDA    $81,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $008B,Y 
       DEX            
       BPL    LF472   
       INX            
LF48C: LDA    $89,X   
       CMP    #$00    
       BNE    LF49C   
       LDA    #$80    
       STA    $89,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LF48C   
LF49C: RTS            

LF49D: LDA    $80     
       AND    #$40    
       LSR            
       STA    $83     
       LDA    $80     
       AND    #$20    
       EOR    $83     
       BNE    LF4AF   
       CLC            
       BCC    LF4B0   
LF4AF: SEC            
LF4B0: LDA    $80     
       ROL            
       STA    $80     
       RTS            

LF4B6: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $81     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $81     
       CMP    #$0F    
       BCC    LF4CE   
       SBC    #$0F    
       INY            
LF4CE: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF4D8: DEY            
       BPL    LF4D8   
       STA    RESP0,X 
       RTS            

LF4DE: STA    WSYNC   
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       NOP            
       STA    HMP0    
       STA    RESP0   
       STA    RESP1   
       STA    REFP0   
       STA    REFP1   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$07    
       STA    $81     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$EF    
       STA    COLUP0  
       STA    COLUP1  
LF51B: LDY    $81     
       LDA    ($93),Y 
       STA    $82     
       LDA    ($91),Y 
       TAX            
       LDA    ($89),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    ($8D),Y 
       STA    GRP0    
       LDA    ($8F),Y 
       LDY    $82     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $81     
       BPL    LF51B   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

LF554: LDX    #$0C    
       LDA    #$FD    
LF558: STA    $89,X   
       DEX            
       BPL    LF558   
       LDA    #$00    
       STA    $9C     
       STA    $9D     
       STA    $D5     
       STA    $D6     
       STA    $C9     
       STA    $87     
       STA    $88     
       STA    AUDC0   
       STA    AUDC1   
       STA    $C5     
       STA    $CF     
       STA    $D7     
       JSR    LF5F9   
       LDA    #$FD    
       STA    $A0     
       STA    $A2     
       LDA    #$01    
       STA    $C4     
       RTS            

LF585: LDY    #$00    
LF587: LDA    ($A4),Y 
       STA.wy $0081,Y 
       INY            
       CPY    #$03    
       BNE    LF587   
       RTS            

LF592: .byte $A0,$02,$F8,$18,$B1,$81,$71,$A4,$91,$A4,$88,$10,$F7,$D8,$60
LF5A1: LDA    $9E     
       AND    #$80    
       BEQ    LF5AF   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LF5AF: LDA    SWCHA   
       RTS            

LF5B3: LDA    $9E     
       AND    #$80    
       BEQ    LF5BC   
       BIT    PF0     
       RTS            

LF5BC: BIT    REFP1   
       RTS            

LF5BF: LDX    $A6     
       LDY    #$00    
LF5C3: LDA    $AA,X   
       STA.wy $00BA,Y 
       INX            
       INY            
       CPY    #$04    
       BNE    LF5C3   
       LDY    #$00    
LF5D0: LDA    $AA,X   
       STA.wy $00BE,Y 
       INX            
       INY            
       CPY    #$04    
       BNE    LF5D0   
       CPX    #$10    
       BEQ    LF5EA   
       LDA    #$0B    
       STA    $C2     
       LDA    #$32    
       STA    $C3     
       STX    $A6     
       RTS            

LF5EA: LDX    #$00    
       STX    $A6     
       STX    $A6     
       LDA    #$5B    
       STA    $C2     
       LDA    #$82    
       STA    $C3     
       RTS            

LF5F9: LDX    #$0F    
       JSR    LF49D   
       AND    #$07    
       BEQ    LF612   
       CMP    #$07    
       BEQ    LF616   
LF606: STA    $AA,X   
       DEX            
       BPL    LF606   
       LDA    #$0D    
       STA    $CE     
       STA    $CD     
       RTS            

LF612: LDA    #$01    
       BNE    LF606   
LF616: LDA    #$06    
       BNE    LF606   
LF61A: LDY    $AA,X   
       INY            
       CPY    #$07    
       BCS    LF624   
       STY    $AA,X   
       RTS            

LF624: LDY    #$01    
       STY    $AA,X   
       RTS            

LF629: JMP    LF6D8   
LF62C: JMP    LF6F4   
LF62F: LDA    $CF     
       BEQ    LF64F   
       CMP    #$02    
       BCC    LF67F   
       BEQ    LF6A3   
       CMP    #$03    
       BEQ    LF629   
       JMP    LF6FF   
LF640: LDA    $9B     
       CMP    #$20    
       BEQ    LF64A   
       LDA    #$0F    
       BNE    LF64C   
LF64A: LDA    #$02    
LF64C: STA    $D3     
       RTS            

LF64F: LDA    #$00    
       STA    $CC     
       STA    $CB     
       LDA    #$02    
       STA    $D9     
       JSR    LF640   
       LDA    #$04    
       STA    $D2     
       LDA    $C6     
       BEQ    LF6C0   
       CMP    #$05    
       BEQ    LF62C   
       LDA    #$01    
       STA    $CF     
       LDX    #$00    
       LDY    $C6     
       DEY            
       BEQ    LF67A   
LF673: INX            
       INX            
       INX            
       INX            
       DEY            
       BNE    LF673   
LF67A: STX    $D1     
       JSR    LF61A   
LF67F: JSR    LF72D   
       BEQ    LF685   
       RTS            

LF685: LDA    #$00    
       STA    $CC     
       DEC    $D2     
       BNE    LF691   
       JSR    LF727   
       RTS            

LF691: LDX    $D1     
       INX            
       JSR    LF71A   
       RTS            

LF698: LDA    #$02    
       STA    $CF     
       LDX    #$00    
       STX    $D1     
       JSR    LF61A   
LF6A3: JSR    LF72D   
       BEQ    LF6A9   
       RTS            

LF6A9: LDA    #$00    
       STA    $CC     
       DEC    $D2     
       BNE    LF6B5   
       JSR    LF727   
       RTS            

LF6B5: LDX    $D1     
       INX            
       INX            
       INX            
       INX            
       INX            
       JSR    LF71A   
       RTS            

LF6C0: LDA    $C7     
       BEQ    LF698   
       LDA    #$03    
       STA    $CF     
       LDX    #$00    
       LDY    $C7     
       DEY            
       BEQ    LF6D3   
LF6CF: INX            
       DEY            
       BNE    LF6CF   
LF6D3: STX    $D1     
       JSR    LF61A   
LF6D8: JSR    LF72D   
       BEQ    LF6DE   
       RTS            

LF6DE: LDA    #$00    
       STA    $CC     
       DEC    $D2     
       BNE    LF6EA   
       JSR    LF727   
       RTS            

LF6EA: LDX    $D1     
       INX            
       INX            
       INX            
       INX            
       JSR    LF71A   
       RTS            

LF6F4: LDA    #$04    
       STA    $CF     
       LDX    #$0C    
       STX    $D1     
       JSR    LF61A   
LF6FF: JSR    LF72D   
       BEQ    LF705   
       RTS            

LF705: LDA    #$00    
       STA    $CC     
       DEC    $D2     
       BNE    LF711   
       JSR    LF727   
       RTS            

LF711: LDX    $D1     
       DEX            
       DEX            
       DEX            
       JSR    LF71A   
       RTS            

LF71A: LDA    #$00    
       STA    AUDC0   
       STX    $D1     
       JSR    LF61A   
       JSR    LF640   
       RTS            

LF727: LDA    #$00    
       STA    $CF     
       STA    $CC     
LF72D: LDA    $9B     
       CMP    #$20    
       BEQ    LF739   
       JSR    LF78B   
       JMP    LF73C   
LF739: JSR    LF743   
LF73C: INC    $CC     
       LDA    $CC     
       CMP    $D0     
       RTS            

LF743: LDA    #$04    
       STA    AUDC0   
       DEC    $D3     
       BEQ    LF757   
LF74B: LDX    $CB     
       LDA    LF7F6,X 
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       RTS            

LF757: INC    $CB     
       LDA    #$02    
       STA    $D3     
       BNE    LF74B   
LF75F: LDA    $D4     
       BEQ    LF776   
       LDA    $85     
       AND    #$04    
       BEQ    LF77E   
       LDA    #$04    
LF76B: STA    AUDC1   
       LDA    #$0C    
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       RTS            

LF776: LDA    $CA     
       BEQ    LF7BD   
       LDA    #$0D    
       BNE    LF76B   
LF77E: LDA    #$00    
       STA    AUDC1   
       LDA    #$07    
       STA    $DB     
       LDA    #$02    
       STA    $DC     
       RTS            

LF78B: LDA    $D3     
       BEQ    LF7AA   
       DEC    $D9     
       BEQ    LF7AD   
LF793: LDX    $D1     
       LDA    $AA,X   
       TAX            
       LDA    #$04    
       STA    AUDC0   
       LDA    $C9     
       BNE    LF7B5   
       LDA    LF819,X 
LF7A3: STA    AUDF0   
       LDA    $D3     
       STA    AUDV0   
       RTS            

LF7AA: STA    AUDC0   
       RTS            

LF7AD: DEC    $D3     
       LDA    #$02    
       STA    $D9     
       BNE    LF793   
LF7B5: LDX    $CC     
       LDA    LF820,X 
       JMP    LF7A3   
LF7BD: LDA    $C9     
       BNE    LF77E   
       LDA    $D5     
       BNE    LF77E   
       LDA    $9B     
       CMP    #$40    
       BNE    LF77E   
       LDA    $85     
       AND    #$0F    
       BEQ    LF7EC   
LF7D1: LDA    $DA     
       BEQ    LF77E   
       DEC    $DC     
       BNE    LF7DF   
       LDA    #$02    
       STA    $DC     
       DEC    $DB     
LF7DF: LDA    #$02    
       STA    AUDC1   
       LDA    #$0D    
       STA    AUDF1   
       LDA    $DB     
       STA    AUDV1   
       RTS            

LF7EC: LDA    $DA     
       CLC            
       ADC    #$80    
       STA    $DA     
       JMP    LF7D1   
LF7F6: .byte $1F,$1E,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$15,$14,$13,$12,$11,$10
       .byte $0F,$0E,$0D,$0C,$0B,$0A,$09,$08,$07,$08,$0A,$0C,$0E,$10,$12,$14
       .byte $16,$18,$1A
LF819: .byte $1E,$1D,$1A,$17,$15,$13,$11
LF820: .byte $16,$0D,$14,$1F,$12,$0A,$10,$13,$15,$13,$0F,$12,$11,$09,$14,$11
       .byte $0D,$15,$1A,$1E,$14,$11,$28,$20,$B8,$29,$C6,$88,$A5,$88,$C9,$FF
       .byte $D0,$12,$24,$69,$50,$0B,$A2,$07,$BD,$75,$28,$9D,$13,$2F,$CA,$10
       .byte $F7,$4C,$B1,$27,$60,$D3,$D9,$CD,$C2,$CF,$CC,$A0,$D4,$C1,$C2,$CC
       .byte $C5,$A0,$A0,$A0,$D3,$CF,$D2,$D4,$C5,$C4,$A0,$C2,$D9,$A0,$D3,$D9
       .byte $CD,$C2,$CF,$CC,$00,$C1,$C4,$C4,$D2,$C5,$D3,$D3,$00,$38,$A5,$8C
       .byte $65,$85,$85,$85,$90,$02,$E6,$86,$A5,$79,$C5,$0C,$A5,$7A,$E5,$0D
       .byte $B0,$1E,$18,$A9,$02,$24,$88,$10,$01,$0A,$65,$79,$85,$79,$90,$02
       .byte $E6,$7A,$E6,$99,$D0,$02,$E6,$9A,$A5,$85,$C5,$65,$A5,$86,$E5,$66
       .byte $60,$A5,$99,$85,$97,$A5,$9A,$85,$98,$46,$98,$66,$97,$A5,$97,$05
       .byte $98,$D0,$01,$60,$38,$A5,$99,$E5,$97,$85,$95,$A5,$9A,$E5,$98,$85
       .byte $96,$A2,$00,$86,$94,$E8,$86,$93,$A5,$93,$85,$8F,$A5,$94,$85,$90
       .byte $18,$A5,$8F,$65,$97,$85,$91,$A5,$90,$65,$98,$85,$92,$A2,$03,$B5
       .byte $8F,$95,$9B,$CA,$10,$F9,$A2,$02,$16,$9B,$36,$9C,$24,$88,$10,$04
       .byte $16,$9B,$36,$9C,$18,$A5,$65,$75,$9B,$95,$9B,$A5,$66,$75,$9C,$95
       .byte $9C,$CA,$CA,$F0,$E3,$24,$88,$10,$32,$18,$A9,$02,$65,$9B,$85,$9F
       .byte $A9,$00,$65,$9C,$85,$A0,$18,$A9,$02,$65,$9D,$85,$A1,$A9,$00,$65
       .byte $9E,$85,$A2,$A0,$01,$B1,$9F,$D1,$A1,$F0,$05,$B0,$0A,$4C,$9E,$29
       .byte $88,$B1,$A1,$D1,$9F,$B0,$F6,$A0,$03,$D0,$30,$A0,$00,$B1,$9B,$AA
       .byte $C8,$B1,$9B,$85,$A0,$86,$9F,$B1,$9D,$AA,$88,$B1,$9D,$85,$A1,$86
       .byte $A2,$B1,$9F,$D1,$A1,$D0,$10,$C8,$C0,$0E,$B0,$32,$B1,$9F,$AA,$31
       .byte $A1,$30,$EE,$AA,$10,$28,$38,$90,$25,$A0,$01,$B1,$9B,$AA,$B1,$9D
       .byte $91,$9B,$8A,$91,$9D,$88,$10,$F3,$38,$A5,$8F,$E5,$97,$85,$8F,$A5
       .byte $90,$E5,$98,$85,$90,$30,$07,$05,$8F,$F0,$03,$4C,$E0,$28,$E6,$93
       .byte $D0,$02,$E6,$94,$A5,$94,$C5,$96,$90,$0B,$F0,$03,$4C,$B9,$28,$A5
       .byte $95,$C5,$93,$90,$F7,$4C,$D8,$28,$A9,$8C,$20,$E5,$24,$A9,$00,$85
       .byte $87,$20,$C0,$22,$90,$03,$4C,$3C,$12,$A0,$00,$B1,$7D,$85,$85,$C8
       .byte $B1,$7D,$85,$86,$88,$B1,$85,$10,$04,$C8,$4C,$D5,$29,$A9,$A0,$85
       .byte $89,$A9,$00,$85,$8A,$B1,$85,$6A,$90,$02,$C6,$8A,$2A,$C9,$7E,$90
       .byte $04,$A9,$AA,$D0,$19,$2C,$87,$2A,$F0,$04,$A9,$BF,$D0,$10,$2C,$86
       .byte $2A,$F0,$04,$A9,$D8,$D0,$07,$2C,$85,$2A,$F0,$04,$A9,$CE,$85,$89
       .byte $A5,$89,$20,$E5,$24,$C8,$B1,$85,$AA,$C8,$B1,$85,$D0,$0F,$24,$8A
       .byte $30,$0B,$A9,$A0,$20,$E5,$24,$20,$E5,$24,$4C,$30,$2A,$20,$81,$24
       .byte $8A,$20,$81,$24,$A9,$A0,$20,$E5,$24,$A0,$00,$B1,$85,$10,$08,$20
       .byte $E5,$24,$C8,$C0,$0E,$90,$F4,$88,$C8,$C0,$0E,$B0,$08,$A9,$A0,$20
       .byte $E5,$24,$4C,$48,$2A,$20,$6C,$2A,$B0,$11,$E6,$87,$A5,$87,$C5,$8B
       .byte $90,$06,$20,$FB,$1E,$4C,$BD,$29,$4C,$C9,$29,$60,$18,$A9,$02,$24
       .byte $88,$10,$01,$0A,$65,$7D,$85,$7D,$90,$02,$E6,$7E,$A5,$7D,$C5,$7F
       .byte $A5,$7E,$E5,$80,$60,$08,$10,$40,$02,$24,$68,$30,$01,$60,$24,$69
       .byte $70,$01,$60,$48,$A2,$00,$BD,$C4,$2E,$09,$80,$20,$23,$27,$E8,$E0
       .byte $0F,$90,$F3,$A9,$A0,$20,$23,$27,$A2,$00,$24,$69,$10,$0D,$BD,$09
       .byte $2F,$F0,$08,$09,$80,$20,$23,$27,$E8,$D0,$F3,$A9,$A0,$20,$23,$27
       .byte $E8,$E0,$24,$90,$F6,$A2,$00,$BD,$B8,$03,$09,$80,$20,$23,$27,$E8
       .byte $E0,$11,$90,$F3,$A2,$00,$BD,$1B,$2B,$09,$80,$20,$23,$27,$E8,$E0
       .byte $06,$90,$F3,$B8,$A9,$AA,$A2,$01,$0A,$48,$B5,$6B,$90,$04,$4A,$4A
       .byte $4A,$4A,$29,$0F,$D0,$02,$50,$08,$09,$B0,$20,$23,$27,$2C,$87,$2A
       .byte $68,$10,$E5,$CA,$10,$E2,$A9,$8D,$20,$23,$27,$A9,$A0,$20,$23,$27
       .byte $A9,$8D,$20,$23,$27,$A9,$02,$85,$6A,$68,$60,$A0,$D0,$C1,$C7,$C5
       .byte $A0,$48,$98,$48,$8A,$48,$20,$53,$2D,$BD,$34,$30,$85,$85,$BD,$35
       .byte $30,$85,$86,$A0,$1D,$B1,$85,$91,$AA,$88,$10,$F9,$20,$DC,$03,$84
       .byte $B0,$85,$B1,$20,$C5,$2D,$A0,$15,$A9,$00,$91,$AC,$88,$10,$FB,$A0
       .byte $1E,$B1,$AA,$48,$C8,$C0,$24,$D0,$F8,$A0,$11,$68,$91,$AC,$88,$C0
       .byte $0B,$D0,$F8,$A9,$01,$A0,$00,$91,$AC,$A9,$00,$C8,$91,$AC,$A9,$01
       .byte $C8,$91,$AC,$A9,$00,$C8,$91,$AC,$BD,$A3,$2E,$A0,$05,$91,$AC,$BD
       .byte $A2,$2E,$C8,$91,$AC,$BD,$E4,$2E,$C8,$91,$AC,$BD,$34,$30,$C8,$91
       .byte $AC,$BD,$35,$30,$C8,$91,$AC,$E0,$00,$D0,$14,$A9,$05,$81,$AC,$20
       .byte $D2,$2D,$A2,$00,$A9,$01,$81,$AC,$AD,$E4,$2E,$A0,$07,$91,$AC,$20
       .byte $D2,$2D,$68,$AA,$68,$A8,$68,$60,$98,$48,$8A,$48,$20,$C5,$2D,$A9
       .byte $02,$A0,$00,$91,$AC,$20,$D2,$2D,$A0,$0C,$B1,$AC,$18,$69,$2D,$85
       .byte $AA,$C8,$B1,$AC,$69,$00,$85,$AB,$A9,$00,$A8,$91,$AA,$68,$AA,$68
       .byte $A8,$60,$24,$A6,$30,$03,$4C,$D5,$2C,$48,$98,$48,$8A,$48,$A5,$A3
       .byte $30,$03,$4C,$96,$2C,$A5,$0C,$38,$E9,$04,$85,$89,$A5,$0D,$E9,$00
       .byte $85,$8A,$38,$A5,$AE,$E9,$04,$85,$AE,$A5,$AF,$E9,$00,$85,$AF,$A0
       .byte $03,$B1,$89,$20,$D6,$2C,$88,$10,$F8,$A5,$89,$38,$E9,$04,$85,$89
       .byte $A5,$8A,$E9,$00,$85,$8A,$A5,$AE,$C5,$89,$A5,$AF,$E5,$8A,$90,$DF
       .byte $A9,$00,$20,$D6,$2C,$A5,$0C,$85,$AE,$A5,$0D,$85,$AF,$A5,$63,$85
       .byte $8B,$A5,$64,$85,$8C,$A0,$00,$B1,$8B,$10,$04,$C8,$4C,$47,$2C,$C8
       .byte $B1,$8B,$29,$18,$F0,$22,$84,$99,$A0,$00,$B1,$8B,$20,$D6,$2C,$C8
       .byte $C4,$99,$D0,$F6,$B1,$8B,$20,$D6,$2C,$C8,$B1,$8B,$20,$D6,$2C,$C8
       .byte $B1,$8B,$20,$D6,$2C,$4C,$7A,$2C,$C8,$C8,$C8,$98,$18,$65,$8B,$85
       .byte $8B,$A5,$8C,$69,$00,$85,$8C,$A5,$8B,$C5,$65,$A5,$8C,$E5,$66,$90
       .byte $B4,$A9,$00,$20,$D6,$2C,$A2,$00,$A9,$00,$A0,$02,$20,$FA,$2C,$A5
       .byte $82,$48,$A5,$81,$20,$D6,$2C,$68,$20,$D6,$2C,$24,$A3,$10,$0A,$A5
       .byte $7F,$20,$D6,$2C,$A5,$80,$20,$D6,$2C,$20,$B8,$2B,$46,$A6,$A0,$1D
       .byte $B9,$A6,$2E,$C9,$A0,$D0,$03,$88,$10,$F6,$18,$69,$01,$99,$A6,$2E
       .byte $68,$AA,$68,$A8,$68,$60,$8D,$94,$2E,$48,$98,$48,$8A,$48,$A2,$00
       .byte $20,$C5,$2D,$20,$D2,$2D,$EE,$8E,$2E,$D0,$03,$EE,$8F,$2E,$E6,$81
       .byte $D0,$02,$E6,$82,$68,$AA,$68,$A8,$68,$60,$84,$AA,$85,$AB,$48,$98
       .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$FD,$84,$B4,$A5,$B5,$85,$FD,$00,$BD,$A9,$A9,$BB,$00,$00,$FF
       .byte $00,$5D,$51,$51,$DD,$01,$01,$FD,$00,$5C,$54,$54,$DC,$00,$00,$00
       .byte $00,$2E,$22,$2E,$2A,$2E,$00,$00,$00,$ED,$A4,$EC,$A4,$EC,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$18,$00,$00
       .byte $00,$00,$00,$00,$00,$18,$18,$18,$00,$00,$00,$06,$06,$06,$00,$00
       .byte $18,$18,$18,$00,$00,$60,$60,$60,$00,$00,$00,$66,$66,$66,$00,$00
       .byte $00,$00,$00,$00,$00,$66,$66,$66,$00,$00,$00,$66,$66,$66,$00,$00
       .byte $18,$18,$18,$00,$00,$66,$66,$66,$00,$00,$00,$66,$66,$66,$00,$00
       .byte $66,$66,$66,$00,$00,$66,$66,$66,$00,$03,$03,$00,$00,$03,$03,$00
LFDF0: .byte $08,$38,$E9,$79,$9F,$CA
LFDF6: .byte $01,$14,$3C,$64,$8C,$9C
LFDFC: .byte $00,$13,$3A,$64,$89,$9C
LFE02: .byte $00,$00,$00,$00,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0
       .byte $E0,$E0,$E0,$E0,$E0,$E0,$00,$00
LFE1A: .byte $00,$00,$00,$00,$F9,$F9,$F9,$F9,$F9,$F9,$F9,$F9,$F9,$F9,$F9,$F9
       .byte $F9,$F9,$F9,$F9,$F9,$F9,$00,$00
LFE32: .byte $00,$00,$00,$00,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F
       .byte $7F,$7F,$7F,$7F,$7F,$7F,$00,$00,$10,$BD,$8E,$C0,$A0,$08,$BD,$8C
       .byte $C0,$DD,$8C,$C0,$D0,$18,$88,$D0,$F8,$AC,$E3,$2E,$F0,$10,$AE,$A5
       .byte $2E,$CA,$F0,$01,$C8,$B9,$8A,$C0,$AC,$E3,$2E,$B9,$89,$C0,$68,$AA
       .byte $68,$A8,$68,$60,$02,$01,$E6,$39,$00,$00,$01,$00,$00,$2E,$00,$00
       .byte $A6,$9C,$A6,$9B,$A6,$9A,$00,$00,$00,$00,$02,$01,$04,$00,$FE,$00
       .byte $01,$00,$01,$2E,$00,$00,$53,$9A,$53,$99,$53,$98,$00,$00,$00,$00
       .byte $06,$02,$06,$02,$C4,$C9,$C3,$C5,$B8,$AE,$CF,$C2,$CA,$B2,$A0,$A0
       .byte $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
       .byte $A0,$A0,$C4,$C9,$C3,$C5,$B8,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
       .byte $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
       .byte $60,$60,$04,$CC,$00,$C4,$C9,$C3,$C5,$B8,$A0,$A0,$A0,$A0,$A0,$A0
       .byte $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
       .byte $A0,$A0,$A0,$06,$02,$00,$00,$00,$91,$D5,$D0,$B5,$E6,$C6,$91,$D5
       .byte $D0,$B5,$E6,$CC,$91,$90,$D0,$CC,$E6,$CC,$91,$90,$D0,$CC,$E6,$CC
       .byte $B1,$90,$A5,$CC,$95,$CC,$B1,$90,$A5,$CC,$95,$00,$00,$A0,$A0,$A0
       .byte $A0,$A0,$A0,$D4,$A0,$A0,$A0,$A0,$A0,$D4,$A0,$A0,$A0,$A0,$A0,$D4
       .byte $A0,$A0,$A0,$A0,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$A0,$A0,$C6
       .byte $A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$AD
       .byte $A0,$D3,$A0,$A0,$A0,$AD,$A0,$D3,$A0,$A0,$A0,$AD,$A0,$D3,$AD,$A0
       .byte $A0,$AD,$A0,$D3,$AD,$A0,$A0,$C5,$A0,$C4,$AD,$A0,$A0,$C5,$A0,$C4
       .byte $AD,$A0,$A0,$C5,$A0,$C4,$A0,$A0,$A0,$C5,$A0,$C4,$A0,$A0,$A0,$A0
       .byte $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$AD,$A0,$A0,$A0
       .byte $A0,$A0,$AD,$A0,$A0,$A0,$A0,$A0,$AD,$A0,$A0,$A0,$A0,$A0,$AD,$A0
       .byte $A0,$A0,$A0,$A0,$A0,$A0,$D4,$A0,$A0,$A0,$A0,$A0,$D4,$A0,$A0,$A0
       .byte $A0,$A0,$D4,$A0,$A0,$A0,$A0,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0
       .byte $A0,$A0,$C6,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$A0,$A0,$C6,$A0
       .byte $D4,$A0,$AD,$A0,$D3,$A0,$A0,$A0,$AD,$A0,$D3,$A0,$A0,$A0,$AD,$A0
       .byte $D3,$AD,$A0,$A0,$AD,$A0,$D3,$AD,$A0,$A0,$00,$F0,$E0,$88
