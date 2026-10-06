; Disassembly of roms/Coconuts.bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Coconuts.bin
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
VDELBL  =  $27
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       AND    #$3F    
       ADC    #$1D    
       TAY            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF00C: STA    VSYNC,X 
       INX            
       BNE    LF00C   
       LDA    #$8E    
       STA    $F2     
       STY    $80     
       STY    $B9     
       LDA    #$87    
       STA    $CB     
       LDA    #$02    
       STA    $8D     
       LDA    #$26    
       STA    $81     
       LDA    #$03    
       STA    $BD     
       STA    $C2     
LF02B: LDA    INPT4   
       BPL    LF02B   
LF02F: LDA    INPT5   
       BPL    LF02F   
LF033: LDA    SWCHB   
       AND    #$01    
       BEQ    LF033   
       LDA    #$01    
       STA    VDELBL  
       LDA    #$20    
       STA    CTRLPF  
       LDA    #$F1    
       STA    $91     
       STA    $93     
       JMP    LF366   
LF04B: LDA    $8D     
       CMP    #$02    
       BNE    LF0B1   
       LDA    $82     
       AND    #$80    
       BEQ    LF0B1   
       NOP            
       LDA    ($00,X) 
       LDA    ($00,X) 
       STA    RESP0   
       STA    RESP1   
       LDA    #$00    
       STA    HMP0    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$26    
       STX    COLUP0  
       STX    COLUP1  
       LDX    #$0F    
       BNE    LF093   
LF07C: LDA    LFB13,X 
       STA    GRP0    
       LDA    LFB20,X 
       STA    GRP1    
       LDA    ($00,X) 
       LDA    ($00,X) 
       LDA    ($00,X) 
       LDA    VSYNC   
       PLA            
       STA    GRP0    
       STY    GRP1    
LF093: LDA    LFB2D,X 
       PHA            
       LDY    LFB3B,X 
       STA    WSYNC   
       DEX            
       BNE    LF07C   
       STX    NUSIZ0  
       STX    NUSIZ1  
       PLA            
       LDX    #$02    
LF0A6: STA    WSYNC   
       DEX            
       BNE    LF0A6   
       STA    WSYNC   
       INX            
       JMP    LF13A   
LF0B1: STA    WSYNC   
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$03    
LF0BB: DEX            
       BNE    LF0BB   
       LDA    #$10    
       STA    HMP1    
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$08    
LF0CD: LDA    #$82    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $98,X   
       LDY    $A0,X   
       STA    GRP0    
       STY    GRP1    
       LDA    $A8,X   
       LDY    $B0,X   
       STA    GRP0    
       STY    GRP1    
       LDA    #$52    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       DEX            
       BNE    LF0CD   
       LDX    #$04    
LF0F0: DEX            
       BNE    LF0F0   
       STA    RESP0   
       STA    RESP1   
       LDY    #$00    
       LDX    #$0A    
       BNE    LF133   
LF0FD: LDA    LFBB8,X 
       PHA            
       JMP.ind ($0090)
LF104: .byte $85,$1B,$85,$1C,$4C,$16,$F1,$85,$1B,$84,$1C,$4C,$16,$F1,$84,$1B
       .byte $84,$1C,$BD,$C1,$FB,$85,$06,$85,$07,$68,$6C,$92,$00,$85,$1B,$85
       .byte $1C,$4C,$33,$F1,$85,$1B,$84,$1C,$4C,$33,$F1,$84,$1B,$84,$1C
LF133: LDA    LFBF0,X 
       STA    COLUP0  
       STA    COLUP1  
LF13A: STA    WSYNC   
       DEX            
       BNE    LF0FD   
       LDX    $CD     
LF141: DEX            
       BNE    LF141   
       LDA    #$C2    
       STA    RESP0   
       STA    RESP1   
       STA    COLUPF  
       STA    WSYNC   
       LDA    $CE     
       STA    HMP0    
       LDA    $CF     
       STA    HMP1    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    $EE     
       SEC            
       SBC    $88     
       STA    $D8     
       LDA    $F0     
       SEC            
       SBC    $88     
       STA    $D9     
       LDY    $BA     
       BEQ    LF183   
       LDA    #$06    
       STA    COLUP0  
       LDY    #$08    
LF172: LDA    ($C7),Y 
       STA    GRP0    
       STA    WSYNC   
       DEY            
       BNE    LF172   
       STY    GRP0    
       STY    $CC     
       LDX    #$0D    
       BNE    LF187   
LF183: STA    WSYNC   
       LDX    #$14    
LF187: CPX    $CC     
       BCS    LF1C0   
       LDA    $BA     
       BNE    LF194   
       LDA    LFD23,Y 
       BNE    LF19A   
LF194: LDA    ($C7),Y 
       STA    WSYNC   
       BCC    LF1A0   
LF19A: LDA    ($C7),Y 
       STA    WSYNC   
       STA    HMOVE   
LF1A0: STA    GRP0    
       LDA    ($C9),Y 
       STA    GRP1    
       LDA    LFB60,Y 
       STA    COLUP0  
       LDA    LFB52,Y 
       STA    COLUP1  
       LDA    LFD24,Y 
       STA    HMP0    
       LDA    LFE35,Y 
       STA    HMP1    
       INY            
       DEX            
       BNE    LF187   
       BEQ    LF1C5   
LF1C0: STA    WSYNC   
       DEX            
       BNE    LF187   
LF1C5: LDX    #$09    
       BNE    LF1DF   
LF1C9: LDA    ($C7),Y 
       STA    GRP0    
       LDA    LFB9A,X 
       STA    PF1     
       LDA    ($C9),Y 
       STA    GRP1    
       LDA    LFBA6,X 
       STA    PF2     
       TYA            
       BEQ    LF1DF   
       INY            
LF1DF: NOP            
       NOP            
       LDA    ($00,X) 
       LDA    LFB8D,X 
       STA    PF0     
       STA    WSYNC   
       DEX            
       BNE    LF1C9   
       STX    GRP0    
       STX    GRP1    
       LDX    #$04    
       LDY    #$00    
LF1F5: LDA    LFB8A,X 
LF1F8: STA    PF0     
       LDA    LFB96,X 
       STA    PF1     
       LDA    LFBA2,X 
       STA    PF2     
       CPX    #$02    
       BNE    LF216   
       LDA    $BF     
       STA    HMP1    
       LDA    LFB89,X 
       DEX            
       STA    WSYNC   
       STA    HMOVE   
       BNE    LF1F8   
LF216: CPX    #$04    
       BNE    LF228   
       STA    WSYNC   
       NOP            
       NOP            
       LDX    $BD     
LF220: DEX            
       BNE    LF220   
       NOP            
       STA    RESP1   
       LDX    #$03    
LF228: STA    WSYNC   
       DEX            
       BNE    LF1F5   
       STX    PF0     
       LDA    #$10    
       STA    PF1     
       STX    PF2     
       LDX    #$49    
       LDA    #$C0    
       BNE    LF240   
LF23B: TXA            
       AND    #$07    
       ORA    #$20    
LF240: STA    COLUPF  
       STA    $BE     
       CPX    $BC     
       BCS    LF254   
       LDA    $BE     
       STA    COLUP1  
       LDA    LFB4B,Y 
       STA    GRP1    
       BEQ    LF254   
       INY            
LF254: STA    WSYNC   
       DEX            
       CPX    #$01    
       BNE    LF23B   
       DEX            
       STX    GRP0    
       STX    GRP1    
       LDA    #$20    
       STA    COLUPF  
       LDA    $F4     
       STA    HMP0    
       LDA    $F5     
       STA    HMP1    
       LDA    $FB     
       STA    REFP0   
       STA    REFP1   
       STA    WSYNC   
       LDA    ($00),Y 
       LDX    $F3     
LF278: DEX            
       BNE    LF278   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$26    
       STA    COLUPF  
       LDX    #$00    
       TXS            
       LDY    #$0D    
LF28C: LDA    ($D4),Y 
       TAX            
       LDA    ($D2),Y 
       STA    WSYNC   
       STA    GRP0    
       STX    GRP1    
       LDA    ($D6),Y 
       STA    COLUP0  
       STA    COLUP1  
       LDA    LFB7D,Y 
       STA    COLUPF  
       CPY    $C4     
       BCS    LF2B0   
       TSX            
       LDA    LFD00,X 
       STA    ENABL   
       BEQ    LF2B0   
       INX            
       TXS            
LF2B0: DEY            
       BNE    LF28C   
       LDY    #$0D    
LF2B5: LDA    ($DC),Y 
       TAX            
       LDA    ($DA),Y 
       STA    WSYNC   
       STA    GRP0    
       STX    GRP1    
       LDA    ($DE),Y 
       STA    COLUP0  
       LDA    ($E0),Y 
       STA    COLUP1  
       LDA    LFB6E,Y 
       STA    COLUPF  
       CPY    $C5     
       BCS    LF2D9   
       TSX            
       LDA    LFD00,X 
       STA    ENABL   
       INX            
       TXS            
LF2D9: LDA    LFBAC,Y 
       STA    PF1     
       DEY            
       BNE    LF2B5   
       STY    ENABL   
       LDY    #$0C    
LF2E5: LDA    ($E2),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($E4),Y 
       STA    GRP1    
       LDA    ($E6),Y 
       STA    COLUP0  
       LDA    ($E8),Y 
       STA    COLUP1  
       DEY            
       BNE    LF2E5   
       LDY    #$1E    
       LDX    $85     
       LDA    LFEE4,X 
       STA    HMP0    
       LDA    LFEE5,X 
       JMP    LF340   
LF309: LDA    ($EA),Y 
       TAX            
       LDA    ($EC),Y 
       STA    WSYNC   
       STX    GRP0    
       STA    GRP1    
       LDA    ($EE),Y 
       STA    COLUP0  
       LDA    ($F0),Y 
       STA    COLUP1  
       LDX    $86     
       CPY    #$12    
       BNE    LF334   
       LDA    LFED0,X 
       STA    HMP0    
       LDA    $D8     
       STA    $EE     
       LDA    $D9     
       STA    $F0     
       LDA    LFEDA,X 
       BPL    LF340   
LF334: CPY    #$19    
       BNE    LF358   
       LDA    LFEBC,X 
       STA    HMP0    
       LDA    LFEC6,X 
LF340: STA    HMP1    
       DEY            
       LDA    ($EA),Y 
       TAX            
       LDA    ($EC),Y 
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STA    GRP1    
       LDA    ($EE),Y 
       STA    COLUP0  
       LDA    ($F0),Y 
       STA    COLUP1  
LF358: DEY            
       BNE    LF309   
       LDX    #$17    
LF35D: STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       DEX            
       BNE    LF35D   
LF366: LDX    #$FF    
       TXS            
       STA    WSYNC   
       STX    VBLANK  
       STX    VSYNC   
       STA    WSYNC   
       INX            
       INC    $82     
       STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       STX    SWACNT  
       LDA    #$29    
       STA    TIM64T  
       STA    $D9     
       LDX    $8D     
       LDA    $8A,X   
       STA    $8C     
       LDA    $FA     
       BPL    LF399   
       LDA    $82     
       LSR            
       BCC    LF396   
       JMP    LF8FE   
LF396: JMP    LF50B   
LF399: LDA    $BB     
       LSR            
       BCC    LF3AA   
       LDA    $C0     
       BEQ    LF3AD   
       DEC    $C0     
       BNE    LF3AA   
       LDA    #$49    
       STA    $BC     
LF3AA: JMP    LF428   
LF3AD: CLC            
       LDA    $BC     
       SBC    $8C     
       STA    $BC     
       BEQ    LF3B8   
       BPL    LF426   
LF3B8: DEC    $BB     
       LDA    #$00    
       STA    $D8     
       STA    $D9     
       LDA    $8D     
       ASL            
       TAX            
       SED            
       LDA    $8C     
       LSR            
       TAY            
       CLC            
       LDA    $95,X   
       ADC    LFFF8,Y 
       STA    $95,X   
       PHP            
       LDA    $94,X   
       CMP    #$05    
       BCC    LF3DA   
       INC    $D8     
LF3DA: CMP    #$15    
       BCC    LF3E0   
       INC    $D9     
LF3E0: PLP            
       ADC    #$00    
       STA    $94,X   
       CLD            
       CMP    #$05    
       BCC    LF416   
       LDX    $D8     
       BEQ    LF3F6   
       CMP    #$15    
       BCC    LF416   
       LDA    $D9     
       BNE    LF416   
LF3F6: LDY    $8D     
       LDX    $8E,Y   
       LDA    LFA5A,X 
       STA.wy $008E,Y 
       LDA    #$04    
       STA    AUDC1   
       LDA    #$49    
       STA    $F8     
       LDA    #$FA    
       STA    $F9     
       LDA    #$10    
       STA    $F6     
       LDA    $FA     
       ORA    #$40    
       STA    $FA     
LF416: DEC    $83     
       BNE    LF424   
       LDX    $8D     
       LDA    $8A,X   
       CMP    #$07    
       BEQ    LF424   
       INC    $8A,X   
LF424: LDA    #$00    
LF426: STA    $BC     
LF428: LDA    $82     
       LSR            
       BCC    LF430   
       JMP    LF578   
LF430: LDA    SWCHA   
       LDX    $8D     
       CPX    #$01    
       BNE    LF43D   
       ASL            
       ASL            
       ASL            
       ASL            
LF43D: STA    $88     
       LDY    #$00    
       LDX    #$04    
       AND    #$C0    
       EOR    #$C0    
       BNE    LF476   
       LDA    $8D     
       CMP    #$02    
       BNE    LF485   
       LDA    $8C     
       BPL    LF464   
       LDA    $82     
       AND    #$1F    
       CMP    #$10    
       BNE    LF476   
       LDA    $80     
       ASL            
       BMI    LF46A   
       LDA    #$7F    
       BNE    LF46C   
LF464: LDA    $F2     
       CMP    $B9     
       BCC    LF470   
LF46A: LDA    #$BF    
LF46C: STA    $88     
       BNE    LF476   
LF470: LDA    #$80    
       STA    $8C     
       BNE    LF485   
LF476: LDA    $82     
       LSR            
       LSR            
       LDX    $8C     
       BPL    LF480   
       LSR            
       LSR            
LF480: AND    #$03    
       TAX            
       LDY    #$01    
LF485: STX    $D1     
       STY    $D0     
       LDX    #$40    
       LDA    $8D     
       LSR            
       BCC    LF492   
       LDX    #$80    
LF492: TXA            
       LDX    #$11    
       AND    SWCHB   
       BEQ    LF49C   
       LDX    #$0B    
LF49C: STX    $BE     
       LDA    $88     
       BMI    LF4B5   
       LDY    #$08    
       LDA    $F2     
       CMP    #$8E    
       BEQ    LF4C6   
       CLC            
       ADC    $BE     
       CMP    #$8E    
       BCC    LF4D5   
       LDA    #$8E    
       BNE    LF4D5   
LF4B5: LDA    $88     
       ASL            
       BPL    LF4BE   
       LDY    $FB     
       BPL    LF502   
LF4BE: LDY    #$00    
       LDA    $F2     
       CMP    #$1C    
       BNE    LF4CC   
LF4C6: LDA    #$04    
       STA    $D1     
       BNE    LF502   
LF4CC: SEC            
       SBC    $BE     
       CMP    #$1C    
       BCS    LF4D5   
       LDA    #$1C    
LF4D5: TAX            
       LDA    $8C     
       BPL    LF4E4   
       LDA    $82     
       AND    #$1F    
       CMP    #$10    
       BNE    LF502   
       BEQ    LF4F0   
LF4E4: LDA    $82     
       AND    #$07    
       CMP    #$04    
       BNE    LF502   
       LDA    $D0     
       BEQ    LF502   
LF4F0: LDA    $81     
       BNE    LF502   
       STX    $F2     
       LDA    #$04    
       STA    AUDC0   
       LDA    #$07    
       STA    AUDV0   
       LDA    #$1F    
       STA    AUDF0   
LF502: LDA    $F2     
       STY    $FB     
       LDX    #$F3    
       JSR    LFA07   
LF50B: LDY    $8D     
       CPY    #$02    
       BEQ    LF518   
       LDA.wy $008E,Y 
       AND    #$02    
       BNE    LF51C   
LF518: LDX    #$1C    
       BNE    LF524   
LF51C: LDX    #$10    
       LDA    $FB     
       BEQ    LF524   
       LDX    #$16    
LF524: LDY    #$00    
       LDA    #$0D    
       JSR    LF9B0   
       LDY    #$22    
       LDX    $8D     
       CPX    #$02    
       BEQ    LF53A   
       LDA    $8E,X   
       LSR            
       BCS    LF53A   
       LDY    #$2A    
LF53A: TYA            
       LDX    $FB     
       BEQ    LF542   
       CLC            
       ADC    #$10    
LF542: TAX            
       LDY    #$08    
       LDA    #$00    
       JSR    LF9B0   
       LDY    #$10    
       LDX    #$00    
       LDA    $FB     
       BEQ    LF554   
       LDX    #$08    
LF554: LDA    #$0E    
       JSR    LF9B0   
       LDA    $D1     
       LDY    #$18    
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$42    
       LDX    $FB     
       BEQ    LF56B   
       CLC            
       ADC    #$08    
LF56B: TAX            
       LDA    #$0C    
       JSR    LF9B0   
       LDA    $FA     
       BPL    LF578   
       JMP    LF8FE   
LF578: LDA    $82     
       AND    #$01    
       BNE    LF581   
       JMP    LF6E8   
LF581: LDA    $82     
       AND    #$06    
       LSR            
       TAY            
       STY    $84     
       LDA    $83     
       BNE    LF5AD   
       LDA    $82     
       AND    #$38    
       BNE    LF5AD   
       LDA    $8D     
       CMP    #$02    
       BEQ    LF5AD   
       CMP    #$00    
       BNE    LF5A3   
       CPY    #$02    
       BCS    LF5AD   
       BCC    LF5A7   
LF5A3: CPY    #$02    
       BCC    LF5AD   
LF5A7: LDA    #$57    
       STA    $D8     
       BNE    LF5E5   
LF5AD: LDA.wy $0094,Y 
       AND    #$F0    
       BNE    LF5C5   
       LDA    $82     
       AND    #$02    
       BEQ    LF5C3   
       LDA.wy $0093,Y 
       BEQ    LF5C3   
       LDA    #$00    
       BEQ    LF5C5   
LF5C3: LDA    #$A0    
LF5C5: LSR            
       CLC            
       ADC    #$07    
       STA    $D8     
       LDA.wy $0094,Y 
       AND    #$0F    
       BNE    LF5E7   
       LDA    $82     
       AND    #$02    
       EOR    #$02    
       BEQ    LF5E7   
       LDA.wy $0094,Y 
       AND    #$F0    
       BEQ    LF5E5   
       LDA    #$00    
       BEQ    LF5E7   
LF5E5: LDA    #$0A    
LF5E7: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$07    
       STA    $D9     
       LDY    #$08    
LF5F1: LDX    $D9     
       LDA    LFEE9,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LDX    $D8     
       ORA    LFEE9,X 
       PHA            
       TYA            
       LDX    $84     
       CLC            
       ADC    LFF62,X 
       TAX            
       PLA            
       STA    $98,X   
       DEC    $D8     
       DEC    $D9     
       DEY            
       BNE    LF5F1   
       LDA    $8D     
       CMP    #$02    
       BEQ    LF621   
       LDA    $8E     
       AND    $8F     
       BPL    LF621   
       JSR    LFA36   
LF621: LDA    $8E     
       AND    #$0C    
       LSR            
       LSR            
       TAX            
       LDA    LFDEA,X 
       BEQ    LF62F   
       STA    $90     
LF62F: LDA    $8F     
       AND    #$0C    
       LSR            
       LSR            
       TAX            
       LDA    LFDEE,X 
       BEQ    LF63D   
       STA    $92     
LF63D: LDA    SWCHB   
       AND    #$01    
       BEQ    LF650   
       LDA    INPT4   
       AND    INPT5   
       BMI    LF688   
       LDA    $8D     
       CMP    #$02    
       BNE    LF688   
LF650: LDA    $81     
       BNE    LF688   
       STA    $8D     
       STA    $8A     
       STA    $8B     
       STA    $94     
       STA    $95     
       STA    $83     
       STA    $BC     
       STA    $C1     
       STA    $C0     
       STA    $BB     
       STA    $BA     
       LDX    $89     
       BNE    LF670   
       LDA    #$AA    
LF670: STA    $96     
       STA    $97     
       LDA    #$03    
       STA    $8E     
       LDX    $89     
       BNE    LF67E   
       LDA    #$80    
LF67E: STA    $8F     
       LDA    #$13    
       STA    $CC     
       LDA    $82     
       STA    $80     
LF688: LDX    $8D     
       LDA    INPT4,X 
       BMI    LF6A3   
       LDA    $83     
       BNE    LF6A3   
       LDA    $8A,X   
       LSR            
       TAX            
       LDA    $80     
       AND    #$07    
       ADC    LFA6E,X 
       STA    $83     
       LDA    $82     
       STA    $80     
LF6A3: LDA    SWCHB   
       AND    #$02    
       BEQ    LF6B3   
       LDA    $BA     
       AND    #$BF    
       STA    $BA     
       JMP    LF6E8   
LF6B3: LDA    $BA     
       BMI    LF6CD   
       JSR    LFA36   
       LDY    #$07    
       LDX    #$FD    
       STY    $C9     
       STX    $CA     
       LDX    #$CD    
       LDA    #$5C    
       JSR    LFA07   
       LDA    #$80    
       BNE    LF6D8   
LF6CD: ASL            
       BMI    LF6DA   
       LDA    $89     
       EOR    #$01    
       STA    $89     
       LDA    #$C0    
LF6D8: STA    $BA     
LF6DA: LDA    $89     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$F1    
       STA    $C7     
       LDA    #$FE    
       STA    $C8     
LF6E8: LDX    #$00    
       LDA    $FB     
       BEQ    LF6F0   
       LDX    #$02    
LF6F0: LDA    $D1     
       CMP    #$04    
       BNE    LF6F8   
       LDX    #$04    
LF6F8: STX    $85     
       ASL            
       TAX            
       LDA    $FB     
       BEQ    LF701   
       INX            
LF701: STX    $86     
       LDA    $80     
       AND    #$01    
       BNE    LF717   
       LDA    $8D     
       CMP    #$02    
       BEQ    LF780   
       LDA    $83     
       BEQ    LF780   
       LDA    $BB     
       AND    #$01    
LF717: BNE    LF780   
       INC    $BB     
       LDA    #$09    
       STA    $C0     
       LDA    $BB     
       AND    #$FB    
       STA    $BB     
       LDA    $CB     
       CMP    $F2     
       BCS    LF738   
       LDA    $BB     
       ORA    #$04    
       STA    $BB     
       CLC            
       LDA    $CB     
       ADC    #$10    
       BNE    LF73A   
LF738: LDA    $CB     
LF73A: STA    $D8     
       SEC            
       SBC    #$08    
       SEC            
       SBC    $F2     
       BMI    LF74C   
       CMP    #$0A    
       BCC    LF752   
       LDA    #$09    
       BNE    LF752   
LF74C: CMP    #$F7    
       BCS    LF752   
       LDA    #$F7    
LF752: SEC            
       EOR    #$FF    
       ADC    $D8     
       CMP    #$25    
       BCC    LF769   
       CMP    #$2F    
       BCS    LF769   
       CMP    #$2F    
       BCC    LF767   
       LDA    #$30    
       BNE    LF769   
LF767: LDA    #$26    
LF769: CMP    #$75    
       BCC    LF77B   
       CMP    #$7E    
       BCS    LF77B   
       CMP    #$7D    
       BCC    LF779   
       LDA    #$7F    
       BNE    LF77B   
LF779: LDA    #$75    
LF77B: LDX    #$BD    
       JSR    LFA07   
LF780: LDA    $8C     
       AND    #$7F    
       LSR            
       TAX            
       LDA    $82     
       AND    LFDE6,X 
       BNE    LF792   
       JSR    LF9EA   
       LDX    $BA     
LF792: BNE    LF807   
       AND    #$07    
       STA    $D9     
       ADC    #$05    
       STA    $D8     
       LDA    $CB     
       SEC            
       SBC    $F2     
       BMI    LF7BA   
       LDA    $CB     
       SBC    $D8     
       CMP    #$5F    
       BCS    LF7E3   
       CMP    #$37    
       BCS    LF7C6   
       CMP    #$1C    
       BCS    LF7E3   
       CLC            
       LDA    #$1C    
       ADC    $D9     
       BNE    LF7E3   
LF7BA: LDA    $CB     
       ADC    $D8     
       CMP    #$37    
       BCC    LF7E3   
       CMP    #$5F    
       BCS    LF7DA   
LF7C6: LDX    $F2     
       CPX    #$4E    
       BCC    LF7D3   
       CLC            
       LDA    #$5F    
       ADC    $D9     
       BNE    LF7E3   
LF7D3: SEC            
       LDA    #$37    
       SBC    $D9     
       BNE    LF7E3   
LF7DA: CMP    #$87    
       BCC    LF7E3   
       SEC            
       LDA    #$87    
       SBC    $D9     
LF7E3: LDX    $D9     
       BNE    LF7EB   
       LDA    #$20    
       BNE    LF81C   
LF7EB: LDY    $8D     
       CPY    #$02    
       BEQ    LF7F5   
       LDX    $83     
       BEQ    LF7F7   
LF7F5: STA    $CB     
LF7F7: LDA    #$08    
       STA    AUDC0   
       LDA    $80     
       AND    #$33    
       STA    AUDF0   
       CPY    #$02    
       BEQ    LF812   
       LDA    #$00    
LF807: BNE    LF816   
       LDA    $80     
       AND    #$07    
       LSR            
       ADC    #$04    
       STA    $98     
LF812: LDA    #$0F    
       BNE    LF81C   
LF816: LDX    #$00    
       STX    $98     
       LDA    #$13    
LF81C: LDX    $8D     
       CPX    #$02    
       BNE    LF83B   
       LDA    $80     
       AND    #$07    
       BEQ    LF82C   
       LDA    #$00    
       BEQ    LF83B   
LF82C: LDA    $80     
       AND    #$C8    
       LSR            
       LSR            
       LSR            
       ADC    #$0F    
       CMP    #$15    
       BCC    LF83B   
       LDA    #$14    
LF83B: LDX    $BA     
       BEQ    LF842   
       JMP    LF8FE   
LF842: STA    $CC     
       LDA    $CB     
       LDX    #$CD    
       JSR    LFA07   
       LDX    #$8D    
       LDY    #$FA    
       LDA    $BB     
       LSR            
       BCC    LF87A   
       LDA    $C0     
       BEQ    LF87A   
       LDA    #$14    
       STA    $CC     
       LDA    $BB     
       AND    #$04    
       BNE    LF86C   
       STX    $C9     
       STY    $CA     
       LDX    #$F9    
       LDY    #$FA    
       BNE    LF898   
LF86C: LDA    #$A8    
       STA    $C9     
       LDA    #$FA    
       STA    $CA     
       LDX    #$72    
       LDY    #$FA    
       BNE    LF898   
LF87A: STX    $C9     
       STY    $CA     
       LDX    #$72    
       LDY    #$FA    
       LDA    $80     
       AND    #$07    
       BNE    LF88E   
       LDX    #$C3    
       LDY    #$FA    
       BNE    LF898   
LF88E: LDA    $80     
       AND    #$18    
       BNE    LF898   
       LDX    #$DE    
       LDY    #$FA    
LF898: STX    $C7     
       STY    $C8     
       LDA    $BC     
       BEQ    LF8B8   
       CMP    #$1E    
       BCS    LF8B8   
       LDX    $C1     
       BNE    LF8B8   
       CLC            
       ADC    #$1A    
       STA    $C1     
       LDA    $BD     
       STA    $C2     
       LDA    $BF     
       STA    $C3     
       JMP    LF8C7   
LF8B8: LDA    $C1     
       BEQ    LF8C7   
       CLC            
       LDA    $C1     
       SBC    $8C     
       BPL    LF8C5   
       LDA    #$00    
LF8C5: STA    $C1     
LF8C7: LDA    $C1     
       SEC            
       SBC    #$0D    
       BEQ    LF8D4   
       BMI    LF8D4   
       CMP    #$0E    
       BCC    LF8D6   
LF8D4: LDA    #$00    
LF8D6: STA    $C4     
       LDA    $C1     
       CMP    #$0E    
       BCC    LF8E8   
       CMP    #$15    
       BCS    LF8E6   
       LDA    #$0D    
       BNE    LF8E8   
LF8E6: LDA    #$00    
LF8E8: STA    $C5     
       STA    WSYNC   
       NOP            
       NOP            
       LDX    $C2     
LF8F0: DEX            
       BNE    LF8F0   
       NOP            
       STA    RESBL   
       LDA    $C3     
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
LF8FE: LDA    $98     
       STA    AUDV0   
       LDA    $F7     
       BNE    LF932   
       LDA    $F6     
       BNE    LF920   
       LDA    $FA     
       BPL    LF91A   
       LDA    $8D     
       EOR    #$01    
       TAY            
       LDA.wy $008E,Y 
       BMI    LF91A   
       STY    $8D     
LF91A: LDA    #$00    
       STA    $FA     
       BPL    LF93A   
LF920: LDY    $F6     
       LDA    ($F8),Y 
       STA    AUDF1   
       DEY            
       LDA    ($F8),Y 
       STA    $F7     
       DEY            
       STY    $F6     
       LDA    #$00    
       BEQ    LF936   
LF932: DEC    $F7     
       LDA    #$0C    
LF936: LDX    #$00    
       STX    AUDV0   
LF93A: STA    AUDV1   
       LDA    CXP0FB  
       ORA    CXP1FB  
       ASL            
       BPL    LF971   
       LDY    $8D     
       LDX    $8E,Y   
       LDA    LFA5E,X 
       STA.wy $008E,Y 
       LDA    #$00    
       STA    $83     
       STA    $BC     
       STA    $C1     
       STA    $C4     
       STA    $C5     
       STA    $C0     
       STA    $BB     
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$08    
       STA    $F6     
       LDA    #$F1    
       STA    $F8     
       LDA    #$FD    
       STA    $F9     
       LDA    #$80    
       STA    $FA     
LF971: LDX    #$00    
       LDA    $8D     
       LSR            
       BCC    LF98D   
       LDA    $82     
       LSR            
       BCC    LF98B   
       CLC            
       LDA    $EE     
       ADC    #$0C    
       STA    $EE     
       CLC            
       LDA    $F0     
       ADC    #$0C    
       STA    $F0     
LF98B: LDX    #$0C    
LF98D: STX    $88     
LF98F: LDX    INTIM   
       BNE    LF98F   
       STX    REFP0   
       STX    REFP1   
       STX    HMCLR   
       STX    CXCLR   
       STA    WSYNC   
       STX    VBLANK  
       LDA    $81     
       BNE    LF9A7   
       JMP    LF04B   
LF9A7: LDX    #$DD    
       LDY    #$00    
       DEC    $81     
       JMP    LF35D   
LF9B0: STA    $BE     
       LDA    #$08    
       STA    $87     
LF9B6: LDA    LFF66,X 
       STA.wy $00D2,Y 
       INX            
       INY            
       DEC    $87     
       BNE    LF9B6   
       LDA    $8D     
       LSR            
       BCC    LF9E9   
       CLC            
       LDA.wy $00CE,Y 
       ADC    $BE     
       STA.wy $00CE,Y 
       LDA.wy $00CF,Y 
       ADC    #$00    
       STA.wy $00CF,Y 
       CLC            
       LDA.wy $00D0,Y 
       ADC    $BE     
       STA.wy $00D0,Y 
       LDA.wy $00D1,Y 
       ADC    #$00    
       STA.wy $00D1,Y 
LF9E9: RTS            

LF9EA: LDA    $80     
       AND    #$7F    
       CMP    #$7F    
       BNE    LF9F4   
       LDA    #$00    
LF9F4: STA    $D8     
       LSR    $D8     
       LDA    #$00    
       ROL            
       EOR    $D8     
       LSR            
       LDA    $D8     
       BCS    LFA04   
       ORA    #$40    
LFA04: STA    $80     
       RTS            

LFA07: CLC            
       ADC    #$18    
       PHA            
       AND    #$0F    
       STA    $D8     
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    VSYNC,X 
       CLC            
       ADC    $D8     
       CMP    #$0F    
       BCC    LFA22   
       SEC            
       SBC    #$0F    
       INC    VSYNC,X 
LFA22: TAY            
       LDA    LFDFC,Y 
       STA    WSYNC,X 
       LDA    LFDFD,Y 
       CMP    #$70    
       BNE    LFA33   
       DEC    VSYNC,X 
       LDA    #$80    
LFA33: STA    VBLANK,X
       RTS            

LFA36: LDA    #$00    
       STA    $C4     
       STA    $C5     
       LDA    #$01    
       STA    $82     
       LDA    #$02    
       STA    $8D     
       LDA    #$80    
       STA    $8C     
       RTS            

LFA49: .byte $00,$07,$02,$09,$15,$05,$14,$03,$10,$07,$0C,$09,$05,$04,$07,$07
       .byte $08
LFA5A: .byte $01,$03,$FF,$0B
LFA5E: .byte $80,$00,$FF,$01,$FF,$FF,$FF,$0F,$FF,$FF,$FF,$03,$FF,$FF,$FF,$0B
LFA6E: .byte $0A,$12,$19,$25,$00,$01,$03,$63,$41,$41,$70,$F8,$A8,$D8,$70,$70
       .byte $01,$23,$57,$0F,$0F,$1F,$1F,$1B,$1B,$1B,$1B,$1B,$1B,$1B,$3B,$00
       .byte $C0,$E0,$78,$A8,$A8,$C6,$82,$00,$00,$00,$00,$C0,$E0,$F0,$F8,$F8
       .byte $FC,$FC,$EC,$EC,$EC,$EC,$EC,$6C,$EC,$EE,$00,$C0,$E0,$78,$A8,$A8
       .byte $C6,$82,$00,$00,$00,$00,$C0,$E0,$F0,$F8,$F8,$FC,$FC,$EC,$EC,$EC
       .byte $ED,$E6,$60,$E0,$E0,$00,$01,$03,$63,$41,$41,$70,$F8,$A8,$D8,$70
       .byte $70,$21,$23,$17,$0F,$0F,$1F,$1F,$1B,$1B,$1B,$1B,$1B,$1B,$1B,$3B
       .byte $00,$01,$03,$63,$41,$41,$70,$F8,$A8,$D8,$70,$70,$09,$13,$17,$0F
       .byte $0F,$1F,$1F,$1B,$1B,$1B,$1B,$1B,$1B,$1B,$3B,$00,$01,$03,$63,$41
       .byte $41,$70,$F8,$A8,$D8,$70,$70,$01,$03,$37,$4F,$0F,$1F,$1F,$1B,$1B
       .byte $1B,$5B,$33,$03,$03
LFB13: .byte $03,$00,$1F,$00,$19,$1A,$1B,$02,$19,$00,$18,$FF,$FF
LFB20: .byte $FF,$00,$FF,$00,$A6,$28,$AE,$AA,$24,$20,$26,$29,$0B
LFB2D: .byte $09,$06,$00,$99,$04,$C4,$2A,$4A,$8A,$6A,$00,$76,$21,$23
LFB3B: .byte $65,$22,$00,$E0,$00,$C0,$20,$40,$80,$60,$00,$27,$54,$22,$51,$26
LFB4B: .byte $60,$F0,$F0,$F0,$F0,$60,$00
LFB52: .byte $00,$22,$22,$0A,$0A,$0A,$22,$22,$22,$22,$22,$22,$22,$22
LFB60: .byte $22,$22,$22,$22,$22,$22,$26,$26,$26,$26,$26,$22,$22,$22
LFB6E: .byte $22,$22,$22,$22,$22,$22,$20,$20,$20,$20,$22,$22,$24,$24,$22
LFB7D: .byte $24,$24,$22,$24,$24,$26,$26,$20,$20,$22,$22,$24
LFB89: .byte $24
LFB8A: .byte $26,$80,$C0
LFB8D: .byte $E0,$E0,$E0,$E0,$C0,$C0,$C0,$80,$80
LFB96: .byte $00,$93,$D7,$FF
LFB9A: .byte $FF,$FF,$EF,$EF,$C7,$C7,$C7,$83
LFBA2: .byte $82,$00,$01,$03
LFBA6: .byte $03,$03,$03,$01,$01,$01
LFBAC: .byte $00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10
LFBB8: .byte $10,$10,$10,$10,$10,$10,$10,$FE,$7C,$38,$00,$22,$22,$22,$22,$22
       .byte $50,$50,$50,$03,$0D,$07,$0F,$1F,$1F,$0B,$00,$0F,$3F,$0F,$07,$03
       .byte $80,$80,$C0,$E0,$E0,$E0,$38,$F0,$E0,$E0,$C0,$C0,$80,$03,$0D,$07
       .byte $0F,$1F,$1F,$0B,$0B,$0E,$0F,$0F
LFBF0: .byte $07,$00,$22,$22,$22,$22,$22,$80,$80,$80,$80,$80,$C0,$E0,$E0,$E0
       .byte $E0,$E0,$E0,$C0,$C0,$80,$00,$00,$00,$00,$00,$44,$7F,$7F,$3F,$3F
       .byte $1F,$07,$01,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0F,$0F,$07,$03,$03,$80
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$91,$FF,$FF,$FE,$FE
       .byte $FC,$F0,$C0,$06,$06,$06,$06,$06,$06,$06,$07,$07,$03,$01,$03,$24
       .byte $26,$26,$20,$20,$20,$80,$80,$80,$80,$80,$80,$80,$24,$26,$26,$20
       .byte $20,$20,$50,$50,$50,$50,$50,$50,$50,$44,$44,$44,$44,$44,$44,$44
       .byte $44,$28,$28,$28,$28,$28,$44,$44,$44,$F0,$F0,$F0,$28,$28,$28,$28
       .byte $28,$28,$28,$44,$44,$44,$44,$44,$44,$44,$44,$44,$F0,$F0,$F0,$00
       .byte $44,$44,$44,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$00,$82,$82,$82
       .byte $82,$82,$82,$82,$82,$82,$82,$82,$82,$44,$00,$52,$52,$52,$52,$52
       .byte $52,$52,$52,$52,$52,$52,$52,$44,$1B,$1F,$1F,$07,$03,$03,$03,$03
       .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0D,$0D,$0D,$0D,$1B,$1F,$1F,$07,$03,$03,$03,$03,$03,$03,$03
       .byte $03,$03,$03,$03,$03,$03,$07,$07,$07,$07,$07,$07,$07,$07,$06,$06
       .byte $06,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1B,$1F,$1F,$07
       .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$07,$07,$06,$03,$00
LFD00: .byte $02,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$C0,$C0,$80
       .byte $80,$80,$80
LFD23: .byte $80
LFD24: .byte $00,$00,$C0,$00,$00,$E0,$00,$00,$00,$00,$00,$60,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80
       .byte $C0,$C0,$C0,$C0,$80,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
       .byte $C0,$6C,$7C,$7C,$1C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
       .byte $0C,$0C,$3C,$3C,$00,$FE,$FE,$FE,$FE,$E0,$E0,$E0,$E0,$E0,$D8,$F8
       .byte $F8,$38,$18,$18,$18,$18,$18,$18,$18,$18,$00,$1F,$1F,$1F,$18,$1E
       .byte $1E,$1E,$1F,$1F,$1F,$1F,$03,$07,$07,$06,$03,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$18,$18,$18,$30,$30,$38,$38,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$E0,$E0,$E0,$E0,$E0,$6C,$7C,$7C,$1C,$0C,$0C,$0C,$0C
       .byte $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$3C,$3C,$3C,$BE,$BE,$BE,$BE
       .byte $E0,$E0,$E0,$E0,$E0,$D8,$F8,$F8,$38,$18,$18,$18,$18,$18,$18,$18
       .byte $18,$18,$1B,$1B,$1B,$18,$1E,$1E,$1E,$1F,$1F,$1F,$1F,$03,$07,$07
       .byte $06,$03
LFDE6: .byte $1F,$0F,$07,$03
LFDEA: .byte $12,$00,$0B,$04
LFDEE: .byte $2F,$00,$28,$21,$19,$0D,$07,$0B,$09,$0F,$08,$12,$16,$1A
LFDFC: .byte $90
LFDFD: .byte $70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90,$20
       .byte $20,$20,$20,$20,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44
       .byte $80,$80,$80,$80,$80,$80,$80,$00,$82,$82,$82,$82,$50,$50,$50,$50
       .byte $50,$50,$50,$00,$52,$52,$52,$52
LFE35: .byte $00,$00,$20,$00,$00,$10,$00,$00,$00,$00,$00,$D0,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80
       .byte $80,$80,$44,$44,$44,$82,$82,$82,$82,$50,$50,$50,$50,$50,$44,$44
       .byte $44,$52,$52,$52,$52,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20
       .byte $20,$20,$20,$20,$44,$44,$44,$44,$44,$44,$44,$44,$44,$00,$44,$44
       .byte $44,$00,$44,$44,$44,$44,$44,$44,$44,$00,$44,$44,$44,$00,$20,$20
       .byte $20,$20,$20,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$80
       .byte $80,$80,$80,$80,$80,$80,$00,$44,$44,$44,$00,$50,$50,$50,$50,$50
       .byte $50,$50,$00,$44,$44,$44,$00
LFEBC: .byte $40,$C0,$D0,$30,$40,$C0,$D0,$30,$00,$00
LFEC6: .byte $40,$C0,$D0,$40,$40,$C0,$D0,$40,$00,$00
LFED0: .byte $00,$F0,$E0,$F0,$00,$F0,$E0,$F0,$00,$00
LFEDA: .byte $00,$00,$00,$10,$00,$00,$00,$10,$00,$00
LFEE4: .byte $20
LFEE5: .byte $20,$F0,$E0,$00
LFEE9: .byte $00,$40,$A0,$A0,$A0,$A0,$A0,$40,$00,$E0,$40,$40,$40,$40,$C0,$40
       .byte $00,$E0,$80,$80,$40,$20,$A0,$40,$00,$40,$A0,$20,$40,$20,$A0,$40
       .byte $00,$20,$20,$20,$E0,$A0,$A0,$80,$00,$C0,$20,$20,$C0,$80,$80,$E0
       .byte $00,$40,$A0,$A0,$C0,$80,$A0,$40,$00,$80,$80,$80,$40,$20,$20,$E0
       .byte $00,$40,$A0,$A0,$40,$A0,$A0,$40,$00,$40,$A0,$20,$60,$A0,$A0,$40
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$20,$20,$20,$20,$20,$20
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$82,$82,$82,$82,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$52,$52,$52,$52
LFF62: .byte $00,$08,$10,$18
LFF66: .byte $12,$FC,$1E,$FC,$8D,$FC,$8C,$FC,$48,$FD,$32,$FC,$8C,$FC,$8D,$FC
       .byte $05,$FC,$25,$FC,$3E,$FC,$25,$FC,$05,$FC,$3E,$FC,$07,$FD,$07,$FD
       .byte $3E,$FC,$CA,$FB,$D7,$FB,$58,$FC,$65,$FC,$E4,$FB,$F9,$FB,$72,$FC
       .byte $7F,$FC,$D7,$FB,$CA,$FB,$65,$FC,$58,$FC,$F9,$FB,$E4,$FB,$7F,$FC
       .byte $72,$FC,$E1,$FC,$54,$FD,$69,$FE,$0B,$FE,$54,$FD,$E1,$FC,$0B,$FE
       .byte $69,$FE,$C8,$FD,$8E,$FD,$92,$FE,$38,$FF,$8E,$FD,$C8,$FD,$38,$FF
       .byte $92,$FE,$E1,$FC,$AB,$FD,$69,$FE,$0B,$FE,$AB,$FD,$E1,$FC,$0B,$FE
       .byte $69,$FE,$71,$FD,$8E,$FD,$92,$FE,$38,$FF,$8E,$FD,$71,$FD,$38,$FF
       .byte $92,$FE,$A7,$FC,$06,$FD,$0B,$FE,$40,$FE,$2F,$FD,$C4,$FC,$40,$FE
       .byte $0B,$FE
LFFF8: .byte $05,$10,$15,$20,$00,$F0,$E3,$65
