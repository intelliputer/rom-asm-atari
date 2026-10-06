; Disassembly of roms/Boggle.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Boggle.bin
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
PF0     =  $0D
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       LDX    #$00    
       TXA            
LF003: STA    VSYNC,X 
       INX            
       BNE    LF003   
       LDX    #$FF    
       TXS            
       SEI            
       CLD            
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$C0    
       STA    $84     
       LDA    #$30    
       STA    PF0     
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    CTRLPF  
       STA    $85     
       STA    $92     
LF027: LDX    #$01    
LF029: LDA    #$99    
       STA    $94,X   
       STA    AUDF0,X 
       STA    AUDV0,X 
       STA    $88     
       LDA    LF772,X 
       STA    $86,X   
       LDA    #$00    
       STA    $8E,X   
       STA    $90,X   
       STA    $81     
       STA    $89     
       STA    $9A     
       STA    $96     
       DEX            
       BPL    LF029   
       LDX    #$28    
LF04B: STA    $C6,X   
       DEX            
       BPL    LF04B   
       LDA    $80     
       AND    #$0F    
       TAX            
       JSR    LF5CE   
       JSR    LF5DA   
       STA    $B6,X   
LF05D: LDX    #$03    
LF05F: LDY    LF76A,X 
       LDA    SWCHB   
       JSR    LF566   
       TYA            
       BCS    LF06D   
       AND    #$0F    
LF06D: BIT    $84     
       BPL    LF083   
       STA    $B3     
       LDA    $84     
       ASL            
       ASL            
       EOR    $B3     
       STA    $B3     
       LDA    $84     
       AND    #$3F    
       EOR    $B3     
       AND    #$F7    
LF083: STA    COLUP0,X
       STA    $99     
       DEX            
       BPL    LF05F   
       INX            
       STX    COLUPF  
       LDX    #$16    
LF08F: LDA    #$F6    
       STA    $9C,X   
       LDA    #$00    
       STA    $9B,X   
       DEX            
       DEX            
       BPL    LF08F   
       LDA    #$FD    
       STA    $8D     
       LDX    $81     
       LDA    LF772,X 
       STA    $8C     
       LDX    #$04    
       STA    WSYNC   
LF0AA: DEX            
       BPL    LF0AA   
       STA    RESP0   
       NOP            
       STA    RESP1   
       LDA    #$D0    
       STA    HMP0    
       LDA    #$C0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$F7    
       STA    $9C     
       STA    $9E     
       STA    $B0     
       STA    $B2     
       LDA    $91     
       BIT    $84     
       BPL    LF0D5   
       BVC    LF0D5   
       LDA    $85     
       JMP    LF0DE   
LF0D5: JSR    LF56B   
       STA    $AF     
       STX    $B1     
       LDA    $90     
LF0DE: JSR    LF56B   
       STA    $9B     
       STX    $9D     
       LDA    #$02    
       STA    $9F     
       STA    $A1     
       STA    $AB     
       STA    $AD     
       LDY    #$03    
       JSR    LF582   
LF0F4: LDA    INTIM   
       BNE    LF0F4   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$FF    
       STA    TIM64T  
       STA    WSYNC   
       JSR    LF1F3   
       LDA    $94     
       JSR    LF56B   
       STA    $9B     
       STX    $9D     
       LDA    $95     
       JSR    LF56B   
       STA    $AF     
       STX    $B1     
       LDY    #$07    
       JSR    LF582   
       JSR    LF1F3   
       LDA    #$F6    
       STA    $9C     
       STA    $9E     
       STA    $B0     
       STA    $B2     
       LDA    #$02    
       STA    $9B     
       STA    $9D     
       STA    $AF     
       STA    $B1     
       LDX    #$00    
       STX    $B5     
       LDA    $81     
       BEQ    LF13F   
       LDX    #$14    
LF13F: BIT    $84     
       BMI    LF14B   
       LDA    #$41    
       STA    $9B,X   
       LDA    #$89    
       STA    $9D,X   
LF14B: LDY    #$0B    
       JSR    LF582   
       JSR    LF1F3   
       LDA    #$02    
       STA    $9B     
       STA    $9D     
       STA    $AF     
       STA    $B1     
       LDY    #$0F    
       JSR    LF582   
       JSR    LF1F3   
       LDA    #$F7    
       STA    $9C     
LF169: LDX    #$14    
       LDA    #$02    
LF16D: STA    $9F,X   
       DEX            
       DEX            
       BPL    LF16D   
       BIT    $84     
       BMI    LF17B   
       LDA    $B5     
       BEQ    LF17E   
LF17B: JMP    LF286   
LF17E: STX    $B4     
       LDA    #$00    
       STA    $9D     
       LDY    $99     
       LDX    $8D     
       CPX    $9A     
       BNE    LF192   
       LDA    $8C     
       STA    $97     
       LDY    #$4F    
LF192: STY    COLUP0  
       STY    COLUP1  
       LDA    LF75A,X 
       STA    $9B     
       LDX    $81     
       LDA    $8E,X   
       CLC            
       ADC    #$01    
       CMP    $8D     
       BNE    LF1B8   
       LDX    $89     
       LDA    $8A     
       STA    $9F,X   
       INC    $B5     
       LDA    $96     
       CMP    #$03    
       BCS    LF169   
       LDA    $89     
       BEQ    LF1ED   
LF1B8: LDX    #$00    
LF1BA: LDY    $8C     
       LDA.wy $00C6,Y 
       STA    $B3     
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    $B4     
       STA    $B4     
       BEQ    LF1EB   
       TAY            
       LDA.wy $00B6,Y 
       STA    $9F,X   
       LDA    $B3     
       AND    #$0F    
       CMP    $B4     
       STA    $B4     
       BEQ    LF1EB   
       TAY            
       LDA.wy $00B6,Y 
       STA    $A1,X   
       INC    $8C     
       INX            
       INX            
       INX            
       INX            
       CPX    #$14    
       BNE    LF1BA   
LF1EB: INC    $8C     
LF1ED: JSR    LF1F3   
       JMP    LF169   
LF1F3: STA    WSYNC   
       JSR    LF567   
       JSR    LF56A   
       LDA    $B3     
       STA    HMCLR   
       LDX    #$90    
       LDY    #$09    
       LDA    $80     
       AND    #$01    
       BEQ    LF24C   
       JMP    LF224   
LF20C: STA    GRP1    
       LDA    ($A3),Y 
       STA    GRP0    
       LDA    ($A7),Y 
       STX    HMP0    
       STX    HMP1    
       STA    GRP1    
       LDA    ($AB),Y 
       STA    GRP0    
       LDA    ($AF),Y 
       STA    GRP1    
       STA    GRP0    
LF224: DEY            
       BMI    LF262   
       LDA    ($9D),Y 
       LSR            
       STA    GRP0    
       LDA    ($A1),Y 
       LSR            
       STA.w  $001C   
       STA    HMOVE   
       LDA    ($A5),Y 
       LSR            
       STA    GRP0    
       LDA    ($AD),Y 
       LSR            
       STA    $B3     
       LDA    ($A9),Y 
       LSR            
       STA    GRP1    
       LDA    $B3     
       STA    GRP0    
       LDA    ($B1),Y 
       LSR            
       STA    GRP1    
LF24C: STA    GRP0    
       LDA    #$70    
       STA    HMP0    
       STA    HMP1    
       DEY            
       BMI    LF26D   
       LDA    ($9B),Y 
       STA    GRP0    
       LDA    ($9F),Y 
       STA    HMOVE   
       JMP    LF20C   
LF262: STX    HMP0    
       STX    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF273   
LF26D: STA    WSYNC   
       STA    $B3     
       STA    $B3     
LF273: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       INC    $8D     
       LDA    $8D     
       CMP    #$09    
       BEQ    LF286   
       RTS            

LF286: LDA    INTIM   
       BNE    LF286   
       LDX    #$FF    
       TXS            
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       INC    $80     
       BNE    LF2AA   
       LDA    $84     
       CLC            
       ADC    #$01    
       CMP    #$40    
       BCC    LF2A8   
       ORA    #$80    
LF2A8: STA    $84     
LF2AA: LDA    INTIM   
       BNE    LF2AA   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$20    
       STA    TIM64T  
       LDA    $83     
       BNE    LF2DE   
       LDA    SWCHB   
       AND    #$02    
       BNE    LF2EB   
       LDA    #$0C    
       STA    AUDC0   
       INC    $85     
       LDA    $85     
       CMP    #$05    
       BNE    LF2D3   
       LDA    #$01    
       STA    $85     
LF2D3: LDA    #$1E    
       STA    $83     
       LDA    #$C0    
LF2D9: STA    $84     
       JMP    LF027   
LF2DE: DEC    $83     
       LDA    SWCHB   
       AND    #$02    
       BEQ    LF2EB   
       LDA    #$00    
       STA    $83     
LF2EB: LDA    SWCHB   
       AND    #$01    
       BNE    LF2F7   
       LDA    #$00    
       JMP    LF2D9   
LF2F7: LDA    #$00    
       STA    AUDC0   
       STA    AUDC1   
       LDX    #$03    
LF2FF: JSR    LF5CE   
       DEX            
       BPL    LF2FF   
       LDA    $84     
       BMI    LF333   
       LDA    $8E     
       BPL    LF318   
       LDA    $8F     
       BPL    LF318   
       LDA    #$80    
       STA    $84     
       JMP    LF2F7   
LF318: LDX    $81     
       LDA    $96     
       CMP    #$03    
       BCC    LF323   
       JMP    LF489   
LF323: LDA    $8E,X   
       CMP    #$08    
       BNE    LF336   
       LDA    $96     
       ORA    LF77A,X 
       STA    $96     
       JSR    LF5C7   
LF333: JMP    LF47F   
LF336: LDX    $81     
       LDA    $94,X   
       TAY            
       BEQ    LF34B   
       LDA    $80     
       AND    #$3F    
       BNE    LF34B   
       SED            
       SEC            
       TYA            
       SBC    #$01    
       STA    $94,X   
       CLD            
LF34B: LDA    SWCHA   
       LDX    $81     
       CPX    #$00    
       BNE    LF357   
       JSR    LF566   
LF357: STA    $B4     
       AND    #$0F    
       CMP    #$0F    
       BNE    LF365   
       LDA    #$00    
       STA    $98     
       BEQ    LF39E   
LF365: LDX    $98     
       BEQ    LF36E   
       DEC    $98     
       JMP    LF39E   
LF36E: LDX    #$01    
       STX    AUDC0   
       LDX    #$00    
       STX    $84     
       LDX    #$0C    
       STX    $98     
       AND    #$03    
       TAX            
       CLC            
       LDA    LF76E,X 
       AND    #$0C    
       ADC    $8B     
       AND    #$0C    
       STA    $B3     
       LDA    $B4     
       LSR            
       LSR            
       AND    #$03    
       TAX            
       CLC            
       LDA    LF76E,X 
       AND    #$03    
       ADC    $8B     
       AND    #$03    
       ORA    $B3     
       STA    $8B     
LF39E: LDX    $81     
       LDA    $86,X   
       AND    #$7F    
       STA    $B3     
       LDY    LF773,X 
       DEY            
       CPY    $B3     
       BNE    LF3BC   
       LDA    #$07    
       STA    AUDC1   
       LDA    $96     
       ORA    LF77A,X 
       STA    $96     
       JMP    LF438   
LF3BC: LDA    INPT4,X 
       STA    $B4     
       BMI    LF3E7   
       EOR    $82     
       BPL    LF3E7   
       LDA    $89     
       BEQ    LF402   
       SEC            
       LDA    $8B     
       SBC    $88     
       BPL    LF3D6   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF3D6: LDX    #$04    
LF3D8: CMP    LF775,X 
       BEQ    LF3EA   
       DEX            
       BPL    LF3D8   
LF3E0: LDA    #$07    
       STA    AUDC0   
       JMP    LF47F   
LF3E7: JMP    LF47B   
LF3EA: LDA    $8B     
       AND    #$03    
       CMP    #$01    
       BEQ    LF402   
       CMP    #$02    
       BEQ    LF402   
       STA    $B3     
       LDA    $88     
       AND    #$03    
       EOR    $B3     
       CMP    #$03    
       BEQ    LF3E0   
LF402: INC    $89     
       INC    $89     
       LDA    $89     
       CMP    #$14    
       BEQ    LF421   
       LDA    #$04    
       STA    AUDC0   
       LDX    $81     
       LDA    $86,X   
       AND    #$7F    
       TAX            
       LDA    $8B     
       STA    $B3     
       CMP    $88     
       STA    $88     
       BNE    LF44A   
LF421: LDX    $81     
       INC    $8E,X   
       INC    $86,X   
       LDA    $89     
       LSR            
       SEC            
       SBC    #$03    
       BPL    LF431   
       LDA    #$00    
LF431: SED            
       CLC            
       ADC    $90,X   
       STA    $90,X   
       CLD            
LF438: JSR    LF5C7   
       LDA    #$00    
       STA    $89     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$FF    
       STA    $88     
       JMP    LF475   
LF44A: BIT    $86     
       BMI    LF459   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $8B     
       STA    $C6,X   
       JMP    LF469   
LF459: LDA    $C6,X   
       AND    #$F0    
       ORA    $B3     
       STA    $C6,X   
       LDA    $8B     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C7,X   
LF469: LDA    $86     
       EOR    #$80    
       STA    $86     
       BMI    LF47B   
       LDX    $81     
       INC    $86,X   
LF475: LDA    $86     
       AND    #$7F    
       STA    $86     
LF47B: LDA    $B4     
       STA    $82     
LF47F: JMP    LF05D   
LF482: LDA    $B5     
       STA    $82     
       JMP    LF47F   
LF489: LDA    $96     
       CMP    #$03    
       BNE    LF499   
       LDA    #$00    
       STA    $81     
       LDA    #$01    
       STA    $9A     
       INC    $96     
LF499: LDX    $81     
       LDA    $8E,X   
       BEQ    LF4A1   
       BPL    LF4AB   
LF4A1: LDA    #$FF    
       STA    $8E,X   
       JSR    LF5C7   
       JMP    LF47F   
LF4AB: LDA    $80     
       AND    #$0F    
       BNE    LF4E1   
       LDA    SWCHA   
       STA    $B3     
       JSR    LF566   
       AND    $B3     
       AND    #$0F    
       CMP    #$0F    
       BEQ    LF4E1   
       LDX    #$07    
       STX    AUDC0   
       LSR            
       BCS    LF4DF   
       DEC    $9A     
       BNE    LF4E1   
       JSR    LF5C7   
       LDX    $81     
       LDA    $8E,X   
       BPL    LF4D8   
       JSR    LF5C7   
LF4D8: LDA    $8E,X   
       STA    $9A     
       JMP    LF47F   
LF4DF: INC    $9A     
LF4E1: LDX    $81     
       LDA    $8E,X   
       CMP    $9A     
       BCS    LF4F0   
       JSR    LF5C7   
       LDA    #$01    
       STA    $9A     
LF4F0: LDA    INPT4,X 
       STA    $B5     
       BMI    LF482   
       EOR    $82     
       BPL    LF482   
       LDX    $97     
       LDY    #$00    
LF4FE: LDA    $C6,X   
       INY            
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    $B4     
       STA    $B4     
       BEQ    LF51A   
       LDA    $C6,X   
       INY            
       AND    #$0F    
       CMP    $B4     
       STA    $B4     
       BEQ    LF51A   
       INX            
       JMP    LF4FE   
LF51A: LDX    $81     
       TYA            
       SEC            
       SBC    #$03    
       BPL    LF524   
       LDA    #$00    
LF524: STA    $B3     
       SEC            
       SED            
       LDA    $90,X   
       SBC    $B3     
       STA    $90,X   
       CLD            
       TYA            
       LSR            
       TAY            
       BCC    LF535   
       INY            
LF535: STY    $B3     
       LDA    $97     
       TAY            
       CLC            
       ADC    $B3     
       STA    $B4     
       LDX    $81     
       LDA    LF773,X 
       STA    $B3     
       LDX    $B4     
LF548: LDA    $C6,X   
       STA.wy $00C6,Y 
       STY    AUDC0   
       INX            
       INY            
       CPY    $B3     
       BNE    LF548   
       LDX    $81     
       DEC    $8E,X   
       BNE    LF563   
       LDA    #$01    
       STA    $9A     
       LDA    #$FF    
       STA    $8E,X   
LF563: JMP    LF482   
LF566: LSR            
LF567: LSR            
       LSR            
       LSR            
LF56A: RTS            

LF56B: STA    $B3     
       AND    #$0F    
       TAX            
       LDA    LF75A,X 
       STA    $B4     
       LDA    $B3     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF75A,X 
       LDX    $B4     
       RTS            

LF582: LDX    #$06    
LF584: LDA.wy $00B6,Y 
       STA    $B3     
       CPY    $8B     
       BNE    LF5A5   
       LDA    #$02    
       STA    $8A     
       LDA    $80     
       AND    #$08    
       BNE    LF5AB   
       LDA    $96     
       CMP    #$03    
       BCS    LF5AF   
       LDA    $B3     
       STA    $8A     
       LDA    #$F5    
       BNE    LF5B5   
LF5A5: NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
LF5AB: NOP            
       NOP            
       LDA    $B3     
LF5AF: NOP            
       NOP            
       LDA    $B3     
       LDA    $B3     
LF5B5: STA    $A3,X   
       DEY            
       DEX            
       DEX            
       BPL    LF584   
       LDA    $8B     
       CMP    $88     
       BNE    LF5C6   
       LDA    #$00    
       STA    $8A     
LF5C6: RTS            

LF5C7: LDA    $81     
       EOR    #$01    
       STA    $81     
       RTS            

LF5CE: LDA    $92     
       ASL            
       EOR    $92     
       ASL            
       ASL            
       ROL    $93     
       ROL    $92     
       RTS            

LF5DA: LDA    $93     
       AND    #$7F    
       SEC            
       LDY    #$FF    
LF5E1: INY            
       SBC    LF77C,Y 
       BPL    LF5E1   
       TYA            
       STA    $B3     
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $B3     
       ADC    #$0B    
       RTS            

LF5F3: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$60,$60,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$82,$82,$82,$FE,$82,$82,$82,$44
       .byte $38,$FC,$42,$42,$42,$7C,$42,$42,$42,$FC,$3C,$42,$80,$80,$80,$80
       .byte $80,$42,$3C,$F8,$44,$42,$42,$42,$42,$42,$44,$F8,$FE,$80,$80,$80
       .byte $F0,$80,$80,$80,$FE,$80,$80,$80,$80,$F0,$80,$80,$80,$FE,$3C,$42
       .byte $82,$9E,$80,$80,$80,$42,$3C,$82,$82,$82,$82,$FE,$82,$82,$82,$82
       .byte $7C,$10,$10,$10,$10,$10,$10,$10,$7C,$70,$88,$08,$08,$08,$08,$08
       .byte $08,$3E,$82,$84,$88,$D0,$A0,$90,$88,$84,$82,$FE,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$82,$82,$82,$82,$92,$92,$AA,$C6,$82,$82,$82,$82
       .byte $86,$8A,$92,$A2,$C2,$82,$38,$44,$82,$82,$82,$82,$82,$44,$38,$80
       .byte $80,$80,$80,$FC,$82,$82,$82,$FC,$38,$28,$20,$20,$20,$EE,$AA,$EA
       .byte $00,$82,$84,$88,$90,$FC,$82,$82,$82,$FC,$7C,$82,$02,$02,$7C,$80
       .byte $80,$82,$7C,$10,$10,$10,$10,$10,$10,$10,$10,$FE,$7C,$82,$82,$82
       .byte $82,$82,$82,$82,$82,$10,$10,$28,$28,$44,$44,$82,$82,$82,$82,$C6
       .byte $AA,$92,$92,$82,$82,$82,$82,$82,$82,$44,$28,$10,$28,$44,$82,$82
       .byte $10,$10,$10,$10,$10,$28,$44,$82,$82,$FE,$80,$40,$20,$10,$08,$04
       .byte $02,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FF,$FF,$38,$44,$C2
       .byte $A2,$92,$8A,$86,$44,$38,$7C,$10,$10,$10,$10,$10,$50,$30,$10,$FE
       .byte $40,$20,$10,$08,$04,$82,$44,$38,$38,$44,$82,$04,$38,$04,$82,$44
       .byte $38,$10,$10,$10,$10,$FC,$90,$50,$30,$10,$38,$44,$82,$02,$04,$78
       .byte $40,$40,$7C,$38,$44,$82,$82,$C2,$BC,$80,$40,$3C,$20,$20,$20,$20
       .byte $10,$08,$04,$02,$FE,$38,$44,$82,$44,$38,$44,$82,$44,$38,$78,$04
       .byte $02,$3A,$46,$82,$82,$44,$38
LF75A: .byte $00,$09,$12,$1B,$24,$2D,$36,$3F,$48,$51,$5A,$63,$6C,$75,$7E,$87
LF76A: .byte $46,$46,$00,$82
LF76E: .byte $00,$05,$0F,$00
LF772: .byte $00
LF773: .byte $1B,$36
LF775: .byte $00,$01,$03,$04,$05
LF77A: .byte $01,$02
LF77C: .byte $0B,$04,$04,$05,$0D,$03,$04,$04,$09,$01,$03,$07,$04,$07,$08,$04
       .byte $01,$05,$07,$07,$05,$03,$03,$01,$04,$01,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F0
       .byte $00,$F0,$00,$F0
