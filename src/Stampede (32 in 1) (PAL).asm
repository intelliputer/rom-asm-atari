; Disassembly of roms/Stampede (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Stampede (32 in 1) (PAL).bin
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
PF0     =  $0D
RESP0   =  $10
RESP1   =  $11
RESM1   =  $13
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
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
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       TAY            
       DEC    $99     
       JMP    LF1F0   
LF011: LDX    #$08    
       LDY    #$A5    
LF015: ASL            
       ASL            
       ASL            
LF018: AND    #$78    
       BEQ    LF020   
       LDY    #$00    
       BEQ    LF024   
LF020: TXA            
       BEQ    LF024   
       TYA            
LF024: STA    $81,X   
       DEX            
       DEX            
       RTS            

LF029: LDA    #$00    
       STA    ENAM0   
       STY    $95     
       STA    WSYNC   
       STA    HMOVE   
       BCS    LF067   
LF035: LDX    $C0     
       INX            
LF038: LDA    #$A4    
       STA    $91     
       BNE    LF04A   
LF03E: TXA            
       TAY            
       LDA    ($91),Y 
       STA    GRP1    
       LDA    ($93),Y 
       STA    HMP1    
       LDY    $95     
LF04A: DEY            
       CPY    #$1A    
       BCS    LF029   
       LDA    ($8B),Y 
       STA    HMP0    
       AND    #$05    
       ORA    ($8D),Y 
       STA    HMM0    
       EOR    #$20    
       STA    ENAM0   
       AND    #$FD    
       STA    NUSIZ0  
       LDA    ($8F),Y 
       STA    HMOVE   
       STY    $95     
LF067: DEX            
       STA    GRP0    
       BNE    LF03E   
       STX    GRP1    
       DEC    $98     
       BEQ    LF035   
       BMI    LF0B9   
       DEY            
       CPY    #$1A    
       TXA            
       LDX    $98     
       BCS    LF090   
       LDA    ($8B),Y 
       STA    HMP0    
       AND    #$05    
       ORA    ($8D),Y 
       STA    HMM0    
       EOR    #$20    
       STA    ENAM0   
       AND    #$FD    
       STA    NUSIZ0  
       LDA    ($8F),Y 
LF090: DEY            
       CPY    #$1A    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $D5,X   
       LDX    #$40    
       ORA    #$00    
       BMI    LF0C5   
       BEQ    LF0A5   
       TAX            
LF0A4: DEX            
LF0A5: BNE    LF0A4   
       STA    RESP1   
       STX    HMP1    
       BCS    LF0D5   
       LDA    ($8B),Y 
       STA    HMP0    
       AND    #$05    
       ORA    ($8D),Y 
       STA    HMM0    
       BCC    LF0EE   
LF0B9: LDA    VSYNC   
       LSR            
       ORA    COLUP1  
       STA    $DC     
       STX    REFP1   
       JMP    LF157   
LF0C5: TAX            
       LDA    #$00    
       STA    HMP1    
       BCC    LF0DF   
       INX            
       INX            
       DEC    $96     
LF0D0: DEX            
       BMI    LF0D0   
       STA    RESP1   
LF0D5: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    ENAM0   
       BEQ    LF0FC   
LF0DF: LDA    ($8B),Y 
       STA    HMP0    
       AND    #$05    
       ORA    ($8D),Y 
       STA    HMM0    
LF0E9: DEX            
       BMI    LF0E9   
       STA    RESP1   
LF0EE: STA    WSYNC   
       STA    HMOVE   
       EOR    #$20    
       STA    ENAM0   
       AND    #$FD    
       STA    NUSIZ0  
       LDA    ($8F),Y 
LF0FC: STA    GRP0    
       DEY            
       LDX    $98     
       CPY    #$1A    
       BCS    LF136   
       SEC            
LF106: LDA    ($8B),Y 
       STA    HMP0    
       AND    #$05    
       ORA    ($8D),Y 
       STA    HMM0    
       EOR    #$20    
       STA    ENAM0   
       AND    #$FD    
       STA    NUSIZ0  
       LDA    ($8F),Y 
       BCS    LF138   
LF11C: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $DB,X   
       STA    COLUP1  
       LDA    VSYNC   
       LSR            
       ORA    COLUP1  
       STA    $DC,X   
       LDX    #$10    
       STA    CXCLR   
       STA    HMCLR   
       JMP    LF04A   
LF136: LDA    #$00    
LF138: DEY            
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $EB,X   
       STA    $91     
       LDA    $F1,X   
       STA    $93     
       LDA    $C9,X   
       STA    NUSIZ1  
       STA    REFP1   
       STA    HMP1    
       CPY    #$1A    
       BCC    LF106   
       LDA    #$00    
       BEQ    LF11C   
LF157: STX    AUDC0   
       STX    GRP0    
LF15B: STA    WSYNC   
       LDA    $B5     
       LDX    #$35    
       JSR    LF1B2   
       ASL            
       STA    RESP0   
       STX    CTRLPF  
       STX    PF0     
       STX    AUDV0   
       LDX    #$03    
       LDY    #$13    
       STA    RESP1   
       STY    NUSIZ0  
       STY    NUSIZ1  
       STY    AUDF1   
       EOR    #$80    
       STA    HMCLR   
       STA    RESM1   
LF17F: STA    HMP0    
       STA    HMP1    
       STA    HMM1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $FA     
       STA    COLUBK  
       STA    COLUP1  
       STA    COLUP0  
       STY    ENAM1   
       LDA    #$30    
       STY    VDELP1  
       STA    GRP1    
       STA    GRP0    
       STA    WSYNC   
       STA    WSYNC   
       LDA    $FB     
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$1D    
       DEX            
       BNE    LF17F   
       STA    WSYNC   
       STX    GRP1    
       STX    GRP0    
LF1B2: STX    ENAM1   
       RTS            

LF1B5: LDY    INTIM   
       BNE    LF1B5   
       STA    WSYNC   
       STX    VSYNC   
       INC    $80     
       BNE    LF1C8   
       INC    $BB     
       BNE    LF1C8   
       STX    $BA     
LF1C8: TXA            
       EOR    SWCHB   
       AND    #$08    
       ASL            
       SBC    #$00    
       BIT    $BA     
       BPL    LF1D7   
       AND    #$F7    
LF1D7: STA    $E9     
       LDX    #$04    
LF1DB: LDA    $BB     
       AND    $BA     
       EOR    LF6FB,X 
       AND    $E9     
       STA    $F7,X   
       STA    NUSIZ1,X
       DEX            
       STX    $E2     
       BNE    LF1DB   
       LDA    SWCHB   
LF1F0: LDX    #$4B    
       LSR            
       ROR            
       STA    WSYNC   
       STY    VSYNC   
       STX    TIM64T  
       BMI    LF219   
       LDX    #$0C    
LF1FF: LDA    LF798,X 
       STA    $BD,X   
       STA    $CB,X   
       STY    $99,X   
       STY    $A5,X   
       STY    $B1,X   
       DEX            
       BNE    LF1FF   
       LDA    $99     
       AND    #$02    
       BEQ    LF219   
       ORA    $80     
       STA    $C7     
LF219: TYA            
       BCS    LF23A   
       LDX    $99     
       DEC    $97     
       BPL    LF23C   
       INX            
       TXA            
       AND    #$07    
       STA    $99     
       ADC    #$01    
       STA    $B8     
       STA    $B9     
       LDX    #$04    
       TYA            
LF231: STA    $BA,X   
       DEX            
       BPL    LF231   
       STX    $9A     
       LDA    #$1D    
LF23A: STA    $97     
LF23C: LDX    $B6     
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       BCS    LF249   
       DEX            
       BCC    LF24C   
LF249: BMI    LF250   
       INX            
LF24C: STY    $BA     
       STY    $BB     
LF250: TXA            
       CMP    #$69    
       BIT    $9A     
       LDX    $B3     
       BVS    LF2D7   
       BCS    LF261   
       CPX    #$04    
       BCS    LF261   
       STA    $B6     
LF261: LDA    $BF     
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $B5     
       TAY            
       BNE    LF27C   
       BIT    $BF     
       BMI    LF27C   
       INC    $BF     
       LDX    #$03    
       CPX    $99     
       BCS    LF27C   
       LDX    #$80    
       STX    $BF     
LF27C: EOR    $B5     
       STA    $EA     
       AND    #$38    
       BEQ    LF29C   
       DEC    $E2     
       CMP    #$20    
       AND    #$08    
       BNE    LF28E   
       DEC    $E2     
LF28E: LDX    #$01    
       BIT    $B3     
       BMI    LF29A   
       BCC    LF29C   
       TYA            
       BMI    LF29C   
       INX            
LF29A: STX    AUDC0   
LF29C: STY    $B5     
       TYA            
       INC    $B4     
       ASL            
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
       LDA    $B4     
       LDX    $B3     
       BMI    LF2BE   
       CPX    #$04    
       BCS    LF2BA   
       BIT    REFP1   
       BMI    LF2BC   
       LDX    #$24    
       LSR    $EB     
LF2BA: AND    $EB     
LF2BC: AND    #$07    
LF2BE: ASL            
       BNE    LF2D7   
       CPX    #$14    
       BEQ    LF2D0   
       CPX    #$18    
       BNE    LF2D2   
       BIT    SWCHB   
       BVC    LF2D2   
       LDX    #$10    
LF2D0: ROL    $EB     
LF2D2: DEX            
       BPL    LF2D7   
       LDX    #$03    
LF2D7: STX    $B3     
       BPL    LF2DD   
       LDY    #$04    
LF2DD: LDA    LF5F6,Y 
       STA    $8F     
       LDA    LF7AB,Y 
       STA    $8B     
       LDA    #$13    
       LDY    #$C7    
       INX            
       BNE    LF2F3   
       LDA    $B4     
       LSR            
       LDY    #$C3    
LF2F3: STA    AUDF0   
       LDA    LF5F1,X 
       CPX    #$05    
       BCC    LF30B   
       TXA            
       SBC    #$05    
       CMP    #$10    
       BCC    LF305   
       EOR    #$1F    
LF305: CLC            
       ADC    #$C7    
       TAY            
       LDA    #$1F    
LF30B: STY    $8D     
       LDX    #$02    
       JSR    LF5BD   
       JSR    LF7E4   
       LDX    #$05    
LF317: LDY    $A7,X   
       LDA    $AD,X   
       BPL    LF334   
       INC    $D0,X   
       SEC            
       LDA    #$30    
       SBC    $A1,X   
       BCC    LF32E   
       SBC    $AD,X   
       CMP    $D0,X   
       LDA    #$F7    
       BCS    LF35C   
LF32E: LDA    $AD,X   
       SBC    #$9C    
       STA    $AD,X   
LF334: CPY    #$03    
       BCS    LF33F   
       LDA    LF7FD,Y 
       BIT    $EA     
       BEQ    LF34B   
LF33F: LDA    $E2     
       BCS    LF346   
       CMP    #$80    
       ROR            
LF346: CLC            
       ADC    $D0,X   
       STA    $D0,X   
LF34B: LDA    LF6D8,Y 
       EOR    #$F8    
       BPL    LF362   
       BIT    $EA     
       BEQ    LF364   
       LDA    $E2     
       AND    #$3E    
       ASL            
       ASL            
LF35C: ADC    $E3,X   
       BPL    LF362   
       LDA    #$18    
LF362: STA    $E3,X   
LF364: LDA    $BB     
       AND    $BA     
       EOR    LF5FB,Y 
       AND    $E9     
       STA    $DC,X   
       LDA    #$FF    
       JSR    LF585   
       BCS    LF3EA   
       CPY    #$04    
       BCC    LF38E   
       LDA    #$04    
       CMP    $A7,X   
       BEQ    LF38E   
       STA    AUDC1   
       LDA    #$FF    
       DEC    $BE     
       BPL    LF38A   
       INC    $BE     
LF38A: BNE    LF38E   
       STA    $9A     
LF38E: LDY    $9B,X   
       BNE    LF3EA   
       STY    $E3,X   
       LDA    $AD,X   
       SEC            
       SBC    #$0C    
       BPL    LF39C   
       TYA            
LF39C: STA    $AD,X   
       INC    $C1,X   
       LDA    $99     
       LSR            
       LSR            
       LDA    $C1,X   
       BCC    LF3AA   
       EOR    $C9     
LF3AA: PHA            
       AND    #$03    
       TAY            
       PLA            
       PHP            
       LSR            
       LSR            
       PLP            
       AND    #$07    
       BEQ    LF3BB   
       EOR    #$07    
       BNE    LF3C1   
LF3BB: TAY            
       INC    $A1,X   
       BCC    LF3E2   
       DEY            
LF3C1: EOR    #$07    
       CPY    #$03    
       BCC    LF3E2   
       LDA    $99     
       LSR            
       LSR            
       LDA    $C7     
       BCC    LF3D8   
       STA    $C9     
       ASL            
       EOR    $C7     
       ASL            
       ASL            
       ROL    $C7     
LF3D8: ASL            
       LDY    #$03    
       ROL    $C7     
       BMI    LF3E0   
       INY            
LF3E0: LDA    #$07    
LF3E2: STA    $9B,X   
       STY    $A7,X   
       LDA    #$9F    
       STA    $D0,X   
LF3EA: LDA    $D0,X   
       CMP    #$A0    
       LDY    $9B,X   
       BCS    LF3F6   
       BNE    LF3F8   
       STY    $A7,X   
LF3F6: LDA    #$9F    
LF3F8: JSR    LF5BD   
       STY    $D6,X   
       ASL            
       ASL            
       ASL            
       ASL            
       LDY    $9B,X   
       ORA    LF7A3,Y 
       AND    $96     
       STA    $CA,X   
       LDA    $D6,X   
       SBC    #$05    
       EOR    #$80    
       BPL    LF414   
       STA    $D6,X   
LF414: LDY    $E3,X   
       LDA    LF607,Y 
       STA    $EC,X   
       LDA    LF637,Y 
       STA    $F2,X   
       DEX            
       BMI    LF426   
       JMP    LF317   
LF426: LDA    $BE     
       JSR    LF011   
LF42B: LDY    INTIM   
       BNE    LF42B   
       STA    WSYNC   
       STY    VBLANK  
       STY    COLUPF  
       LDY    #$A5    
LF438: LDA    $B6,X   
       LSR            
       JSR    LF018   
       LDA    $B8,X   
       JSR    LF015   
       BPL    LF438   
       JSR    LF7B0   
       JSR    LF15B   
       LDY    #$01    
       JSR    LF7E4   
       LDA    #$83    
       SBC    $B6     
       TAY            
       STX    NUSIZ0  
       LDA    #$0A    
       SBC    $C0     
       TAX            
       STA    HMCLR   
       JSR    LF038   
       STX    VDELP1  
       LDA    #$07    
       STA    $98     
       LDY    #$04    
       JSR    LF7E4   
       INX            
       STX    NUSIZ1  
       LDY    #$05    
       LDA    #$1E    
       JSR    LF7E4   
       STA    $F8     
       LDX    #$0A    
       STX    AUDV1   
       LDA    #$70    
       LDY    #$F6    
LF480: STY    $80,X   
       STY    $8A,X   
       DEX            
       STA    $80,X   
       SBC    #$08    
       DEX            
       BNE    LF480   
       STX    AUDC1   
       LDA    $C8     
       AND    #$07    
       TAY            
       LDA    LF6F0,Y 
       STA    $89     
       JSR    LF7B0   
       LDX    #$1C    
       STX    HMP0    
       STX    HMP1    
       INC    $8C     
       INC    $90     
       LDA    #$43    
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    TIM64T  
       SEC            
       LDA    $B8     
       SBC    $B9     
       LDA    $BC     
       SBC    $BD     
       BEQ    LF4D0   
       LDA    $80     
       LSR            
       SED            
       TYA            
       ADC    $B8     
       STA    $B8     
       AND    #$01    
       BNE    LF4CA   
       STX    AUDC1   
LF4CA: TYA            
       ADC    $BC     
       STA    $BC     
       CLD            
LF4D0: LDX    #$FF    
       LDA    $B3     
       SEC            
       SBC    #$14    
       CMP    #$0E    
       BCS    LF52D   
       TAY            
       ADC    #$0A    
       SBC    $C0     
       ADC    $B6     
LF4E2: INX            
       SBC    #$14    
       BPL    LF4E2   
       LDA    $9B,X   
       BEQ    LF52D   
       LDA    $A7,X   
       CMP    #$04    
       BCS    LF52D   
       LDA    $DC,X   
       ASL            
       BPL    LF52D   
       TYA            
       EOR    #$0F    
       ASL            
       ASL            
       ADC    #$2A    
       JSR    LF585   
       BCS    LF52D   
       LDA    #$28    
       SBC    $B3     
       STA    $B3     
       LDY    $A7,X   
       STY    $DC,X   
       LDA    LF6F8,Y 
       SED            
       ADC    $B9     
       STA    $B9     
       BCC    LF52C   
       LDA    #$00    
       ADC    $BD     
       STA    $BD     
       BCC    LF520   
       INC    $C8     
LF520: AND    #$0F    
       BNE    LF52C   
       LDA    $BE     
       CMP    #$09    
       BCS    LF52C   
       INC    $BE     
LF52C: CLD            
LF52D: LDX    #$05    
       LDA    $B6     
       CLC            
       ADC    #$7C    
       SBC    $C0     
LF536: CLC            
       ADC    #$14    
       TAY            
       CMP    #$E1    
       ROR            
       AND    $DC,X   
       BPL    LF553   
       LDA    $A7,X   
       CMP    #$03    
       BCS    LF575   
       LDA    $AD,X   
       BMI    LF553   
       ADC    #$A0    
       BCC    LF551   
       LDA    #$FF    
LF551: STA    $AD,X   
LF553: TYA            
       DEX            
       BPL    LF536   
       LDA    $99     
       LSR            
       BCC    LF572   
       LDA    $B5     
       ORA    $9A     
       AND    #$3C    
       BNE    LF572   
LF564: EOR    $B7     
       STA    $B7     
       ADC    $C0     
       STA    $C0     
       CMP    #$0A    
       LDA    #$FE    
       BCS    LF564   
LF572: JMP    LF1B5   
LF575: BEQ    LF57B   
       CPY    #$EB    
       BCC    LF553   
LF57B: LDA    #$E1    
       STA    $B4     
       LDA    #$FF    
       STA    $B3     
       BNE    LF553   
LF585: SEC            
       SBC    $D0,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF5ED,Y 
       CPY    #$04    
       BCC    LF597   
       BNE    LF5BC   
       DEY            
LF597: STY    $95     
       LDY    $9B,X   
       AND    LF5E6,Y 
       SEC            
       BEQ    LF5BC   
       LDA    $95     
       BNE    LF5AF   
       LDA    LF5E6,Y 
       CLC            
       AND    #$70    
       ADC    $D0,X   
       STA    $D0,X   
LF5AF: TYA            
       ASL            
       ASL            
       ORA    $95     
       TAY            
       LDA    LF6A7,Y 
       AND    #$07    
       STA    $9B,X   
LF5BC: RTS            

LF5BD: TAY            
       CPY    #$60    
       ROL            
       CPY    #$80    
       ROL            
       CPY    #$90    
       ROL            
       ORA    #$F8    
       EOR    #$07    
       STA    $96     
       INY            
       TYA            
       AND    #$0F    
       STA    $95     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $95     
       CMP    #$0F    
       BCC    LF5E3   
       SBC    #$0F    
       INY            
LF5E3: EOR    #$07    
       RTS            

LF5E6: .byte $01,$01,$13,$25,$17,$49,$2D
LF5ED: .byte $01,$02,$04,$00
LF5F1: .byte $08,$21,$1F,$1A,$1F
LF5F6: .byte $1A,$00,$00,$00,$34
LF5FB: .byte $2E,$2A,$22,$00,$0E,$3C,$66,$66,$66,$66,$66,$3C
LF607: .byte $8B,$7E,$18,$18,$18,$18,$78,$38,$7D,$7E,$60,$60,$3C,$06,$46,$7C
       .byte $6E,$3C,$46,$06,$0C,$06,$46,$3C,$7D,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $7D,$7C,$46,$06,$7C,$60,$60,$7E,$9B,$3C,$66,$66,$7C,$60,$62,$3C
LF637: .byte $AC,$18,$18,$18,$0C,$06,$42,$7E,$C9,$3C,$66,$66,$3C,$66,$66,$3C
       .byte $C9,$3C,$46,$06,$3E,$66,$66,$3C,$C9,$E9,$AB,$AF,$AD,$E9,$00,$00
       .byte $BA,$BA,$8A,$BA,$A2,$3A,$80,$FE,$A4,$50,$58,$5C,$56,$53,$11,$F0
       .byte $00,$AD,$A9,$E9,$A9,$ED,$41,$0F,$0C,$28,$54,$AC,$AA,$FE,$7F,$7E
       .byte $7E,$FD,$7F,$1C,$18,$24,$00,$15,$A5,$A5,$A5,$AA,$FE,$BF,$FE,$7C
       .byte $FA,$7E,$38,$30,$48,$00,$A0,$85,$A2,$A5,$AA,$FE,$7F,$BF,$F8,$FA
       .byte $3F,$0E,$0C,$12,$00,$03,$05,$0E,$1E,$3C,$54,$BA,$82,$44,$00,$00
LF6A7: .byte $00,$00,$00,$00,$00,$00,$00,$30,$E1,$11,$00,$00,$E1,$00,$31,$10
       .byte $02,$03,$02,$00,$E1,$00,$00,$01,$03,$20,$F5,$F3,$E0,$F0,$F0,$00
       .byte $00,$20,$00,$20,$00,$00,$00,$00,$E0,$10,$10,$20,$10,$10,$00,$00
       .byte $90
LF6D8: .byte $38,$18,$08,$D8,$D0,$42,$B2,$22,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2
       .byte $C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2
LF6F0: .byte $A5,$95,$10,$18,$20,$28,$30,$38
LF6F8: .byte $24,$14,$02
LF6FB: .byte $99,$2C,$8C,$0C,$D6,$00,$A0,$05,$A0,$05,$A0,$05,$A0,$A5,$FF,$FF
       .byte $FE,$FE,$FE,$7F,$FF,$5D,$FF,$DE,$DC,$D8,$E0,$28,$63,$F1,$18,$00
       .byte $0A,$28,$10,$14,$28,$0A,$50,$A5,$FF,$FF,$FE,$FE,$FE,$7F,$FF,$5D
       .byte $FF,$DE,$DC,$D8,$E0,$28,$63,$F1,$18,$61,$C3,$C3,$E3,$E7,$F7,$FF
       .byte $FF,$3D,$3D,$3D,$3D,$3F,$3E,$1E,$0F,$3F,$5D,$FF,$DE,$FC,$D8,$2F
       .byte $66,$66,$26,$75,$A5,$55,$C5,$35,$E5,$15,$05,$05,$05,$05,$15,$F5
       .byte $55,$15,$15,$15,$15,$15,$05,$D5,$45,$00,$E0,$00,$E5,$25,$F5,$05
       .byte $05,$F5,$05,$05,$05,$05,$05,$15,$F5,$55,$15,$15,$15,$15,$15,$05
       .byte $D5,$45,$00,$E0,$00,$F0,$F2,$02,$F0,$00,$02,$B0,$17,$15,$1D,$0F
       .byte $1D,$F5,$F7,$55,$15,$1F,$1F,$15,$1F,$D7,$00,$00,$00
LF798: .byte $70,$03,$40,$03,$03,$24,$63,$05,$44,$25,$AA
LF7A3: .byte $00,$00,$01,$02,$03,$04,$06,$08
LF7AB: .byte $4D,$66,$4D,$66,$7F
LF7B0: LDY    #$07    
LF7B2: DEY            
       LDA    ($89),Y 
       ASL            
       LDX    $F8     
       STA    WSYNC   
       STX    COLUP0  
       STA    GRP0    
       LDA    ($85),Y 
       STA    GRP1    
       LDA    ($83),Y 
       TAX            
       TXS            
       LDA    ($87),Y 
       TAX            
       LDA    ($81),Y 
       STY    $95     
       LDY    $F9     
       STY    COLUP0  
       STX    GRP0    
       TSX            
       STX    GRP0    
       STA    GRP1    
       LDY    $95     
       BNE    LF7B2   
       STY    GRP0    
       STY    GRP1    
       LDX    #$FD    
       TXS            
       RTS            

LF7E4: STA    WSYNC   
       STA    HMCLR   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LF7EE: DEY            
       BPL    LF7EE   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F8,X   
       STA    COLUP0,X
       RTS            

LF7FC: .byte $00
LF7FD: .byte $F0,$E0,$C0
