; Disassembly of roms/Stampede (2).bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Stampede (2).bin
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
LF1F0: LDX    #$2D    
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
       LDA    #$23    
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
LF7FD: .byte $F0,$E0,$C0,$78,$D8,$A2,$00,$8A,$95,$00,$9A,$E8,$D0,$FA,$A8,$C6
       .byte $99,$4C,$F0,$F1,$A2,$08,$A0,$A5,$0A,$0A,$0A,$29,$78,$F0,$04,$A0
       .byte $00,$F0,$04,$8A,$F0,$01,$98,$95,$81,$CA,$CA,$60,$A9,$00,$85,$1D
       .byte $84,$95,$85,$02,$85,$2A,$B0,$32,$A6,$C0,$E8,$A9,$A4,$85,$91,$D0
       .byte $0C,$8A,$A8,$B1,$91,$85,$1C,$B1,$93,$85,$21,$A4,$95,$88,$C0,$1A
       .byte $B0,$DA,$B1,$8B,$85,$20,$29,$05,$11,$8D,$85,$22,$49,$20,$85,$1D
       .byte $29,$FD,$85,$04,$B1,$8F,$85,$2A,$84,$95,$CA,$85,$1B,$D0,$D2,$86
       .byte $1C,$C6,$98,$F0,$C3,$30,$45,$88,$C0,$1A,$8A,$A6,$98,$B0,$14,$B1
       .byte $8B,$85,$20,$29,$05,$11,$8D,$85,$22,$49,$20,$85,$1D,$29,$FD,$85
       .byte $04,$B1,$8F,$88,$C0,$1A,$85,$02,$85,$2A,$85,$1B,$B5,$D5,$A2,$40
       .byte $09,$00,$30,$24,$F0,$02,$AA,$CA,$D0,$FD,$85,$11,$86,$21,$B0,$28
       .byte $B1,$8B,$85,$20,$29,$05,$11,$8D,$85,$22,$90,$35,$A5,$00,$4A,$05
       .byte $07,$85,$DC,$86,$0C,$4C,$57,$F1,$AA,$A9,$00,$85,$21,$90,$13,$E8
       .byte $E8,$C6,$96,$CA,$30,$FD,$85,$11,$85,$02,$85,$2A,$A9,$00,$85,$1D
       .byte $F0,$1D,$B1,$8B,$85,$20,$29,$05,$11,$8D,$85,$22,$CA,$30,$FD,$85
       .byte $11,$85,$02,$85,$2A,$49,$20,$85,$1D,$29,$FD,$85,$04,$B1,$8F,$85
       .byte $1B,$88,$A6,$98,$C0,$1A,$B0,$31,$38,$B1,$8B,$85,$20,$29,$05,$11
       .byte $8D,$85,$22,$49,$20,$85,$1D,$29,$FD,$85,$04,$B1,$8F,$B0,$1C,$85
       .byte $02,$85,$2A,$85,$1B,$B5,$DB,$85,$07,$A5,$00,$4A,$05,$07,$95,$DC
       .byte $A2,$10,$85,$2C,$85,$2B,$4C,$4A,$F0,$A9,$00,$88,$85,$02,$85,$2A
       .byte $85,$1B,$B5,$EB,$85,$91,$B5,$F1,$85,$93,$B5,$C9,$85,$05,$85,$0C
       .byte $85,$21,$C0,$1A,$90,$B3,$A9,$00,$F0,$C5,$86,$15,$86,$1B,$85,$02
       .byte $A5,$B5,$A2,$35,$20,$B2,$F1,$0A,$85,$10,$86,$0A,$86,$0D,$86,$19
       .byte $A2,$03,$A0,$13,$85,$11,$84,$04,$84,$05,$84,$18,$49,$80,$85,$2B
       .byte $85,$13,$85,$20,$85,$21,$85,$23,$85,$02,$85,$2A,$A5,$FA,$85,$09
       .byte $85,$07,$85,$06,$84,$1E,$A9,$30,$84,$26,$85,$1C,$85,$1B,$85,$02
       .byte $85,$02,$A5,$FB,$85,$09,$85,$02,$85,$02,$A9,$1D,$CA,$D0,$D3,$85
       .byte $02,$86,$1C,$86,$1B,$86,$1E,$60,$AC,$84,$02,$D0,$FB,$85,$02,$86
       .byte $00,$E6,$80,$D0,$06,$E6,$BB,$D0,$02,$86,$BA,$8A,$4D,$82,$02,$29
       .byte $08,$0A,$E9,$00,$24,$BA,$10,$02,$29,$F7,$85,$E9,$A2,$04,$A5,$BB
       .byte $25,$BA,$5D,$FB,$F6,$25,$E9,$95,$F7,$95,$05,$CA,$86,$E2,$D0,$EE
       .byte $AD,$82,$02,$A2,$2D,$4A,$6A,$85,$02,$84,$00,$8E,$96,$02,$30,$1C
       .byte $A2,$0C,$BD,$98,$F7,$95,$BD,$95,$CB,$94,$99,$94,$A5,$94,$B1,$CA
       .byte $D0,$F0,$A5,$99,$29,$02,$F0,$04,$05,$80,$85,$C7,$98,$B0,$1E,$A6
       .byte $99,$C6,$97,$10,$1A,$E8,$8A,$29,$07,$85,$99,$69,$01,$85,$B8,$85
       .byte $B9,$A2,$04,$98,$95,$BA,$CA,$10,$FB,$86,$9A,$A9,$1D,$85,$97,$A6
       .byte $B6,$AD,$80,$02,$0A,$0A,$0A,$B0,$03,$CA,$90,$03,$30,$05,$E8,$84
       .byte $BA,$84,$BB,$8A,$C9,$69,$24,$9A,$A6,$B3,$70,$7E,$B0,$06,$E0,$04
       .byte $B0,$02,$85,$B6,$A5,$BF,$4A,$4A,$4A,$18,$65,$B5,$A8,$D0,$10,$24
       .byte $BF,$30,$0C,$E6,$BF,$A2,$03,$E4,$99,$B0,$04,$A2,$80,$86,$BF,$45
       .byte $B5,$85,$EA,$29,$38,$F0,$18,$C6,$E2,$C9,$20,$29,$08,$D0,$02,$C6
       .byte $E2,$A2,$01,$24,$B3,$30,$06,$90,$06,$98,$30,$03,$E8,$86,$15,$84
       .byte $B5,$98,$E6,$B4,$0A,$2A,$2A,$2A,$29,$03,$A8,$A5,$B4,$A6,$B3,$30
       .byte $10,$E0,$04,$B0,$08,$24,$0C,$30,$06,$A2,$24,$46,$EB,$25,$EB,$29
       .byte $07,$0A,$D0,$16,$E0,$14,$F0,$0B,$E0,$18,$D0,$09,$2C,$82,$02,$50
       .byte $04,$A2,$10,$26,$EB,$CA,$10,$02,$A2,$03,$86,$B3,$10,$02,$A0,$04
       .byte $B9,$F6,$F5,$85,$8F,$B9,$AB,$F7,$85,$8B,$A9,$13,$A0,$C7,$E8,$D0
       .byte $05,$A5,$B4,$4A,$A0,$C3,$85,$17,$BD,$F1,$F5,$E0,$05,$90,$0F,$8A
       .byte $E9,$05,$C9,$10,$90,$02,$49,$1F,$18,$69,$C7,$A8,$A9,$1F,$84,$8D
       .byte $A2,$02,$20,$BD,$F5,$20,$E4,$F7,$A2,$05,$B4,$A7,$B5,$AD,$10,$17
       .byte $F6,$D0,$38,$A9,$30,$F5,$A1,$90,$08,$F5,$AD,$D5,$D0,$A9,$F7,$B0
       .byte $2E,$B5,$AD,$E9,$9C,$95,$AD,$C0,$03,$B0,$07,$B9,$FD,$F7,$24,$EA
       .byte $F0,$0C,$A5,$E2,$B0,$03,$C9,$80,$6A,$18,$75,$D0,$95,$D0,$B9,$D8
       .byte $F6,$49,$F8,$10,$10,$24,$EA,$F0,$0E,$A5,$E2,$29,$3E,$0A,$0A,$75
       .byte $E3,$10,$02,$A9,$18,$95,$E3,$A5,$BB,$25,$BA,$59,$FB,$F5,$25,$E9
       .byte $95,$DC,$A9,$FF,$20,$85,$F5,$B0,$74,$C0,$04,$90,$14,$A9,$04,$D5
       .byte $A7,$F0,$0E,$85,$16,$A9,$FF,$C6,$BE,$10,$02,$E6,$BE,$D0,$02,$85
       .byte $9A,$B4,$9B,$D0,$58,$94,$E3,$B5,$AD,$38,$E9,$0C,$10,$01,$98,$95
       .byte $AD,$F6,$C1,$A5,$99,$4A,$4A,$B5,$C1,$90,$02,$45,$C9,$48,$29,$03
       .byte $A8,$68,$08,$4A,$4A,$28,$29,$07,$F0,$04,$49,$07,$D0,$06,$A8,$F6
       .byte $A1,$90,$22,$88,$49,$07,$C0,$03,$90,$1B,$A5,$99,$4A,$4A,$A5,$C7
       .byte $90,$09,$85,$C9,$0A,$45,$C7,$0A,$0A,$26,$C7,$0A,$A0,$03,$26,$C7
       .byte $30,$01,$C8,$A9,$07,$95,$9B,$94,$A7,$A9,$9F,$95,$D0,$B5,$D0,$C9
       .byte $A0,$B4,$9B,$B0,$04,$D0,$04,$94,$A7,$A9,$9F,$20,$BD,$F5,$94,$D6
       .byte $0A,$0A,$0A,$0A,$B4,$9B,$19,$A3,$F7,$25,$96,$95,$CA,$B5,$D6,$E9
       .byte $05,$49,$80,$10,$02,$95,$D6,$B4,$E3,$B9,$07,$F6,$95,$EC,$B9,$37
       .byte $F6,$95,$F2,$CA,$30,$03,$4C,$17,$F3,$A5,$BE,$20,$11,$F0,$AC,$84
       .byte $02,$D0,$FB,$85,$02,$84,$01,$84,$08,$A0,$A5,$B5,$B6,$4A,$20,$18
       .byte $F0,$B5,$B8,$20,$15,$F0,$10,$F3,$20,$B0,$F7,$20,$5B,$F1,$A0,$01
       .byte $20,$E4,$F7,$A9,$83,$E5,$B6,$A8,$86,$04,$A9,$0A,$E5,$C0,$AA,$85
       .byte $2B,$20,$38,$F0,$86,$26,$A9,$07,$85,$98,$A0,$04,$20,$E4,$F7,$E8
       .byte $86,$05,$A0,$05,$A9,$1E,$20,$E4,$F7,$85,$F8,$A2,$0A,$86,$1A,$A9
       .byte $70,$A0,$F6,$94,$80,$94,$8A,$CA,$95,$80,$E9,$08,$CA,$D0,$F4,$86
       .byte $16,$A5,$C8,$29,$07,$A8,$B9,$F0,$F6,$85,$89,$20,$B0,$F7,$A2,$1C
       .byte $86,$20,$86,$21,$E6,$8C,$E6,$90,$A9,$23,$85,$02,$85,$2A,$85,$01
       .byte $8D,$96,$02,$38,$A5,$B8,$E5,$B9,$A5,$BC,$E5,$BD,$F0,$15,$A5,$80
       .byte $4A,$F8,$98,$65,$B8,$85,$B8,$29,$01,$D0,$02,$86,$16,$98,$65,$BC
       .byte $85,$BC,$D8,$A2,$FF,$A5,$B3,$38,$E9,$14,$C9,$0E,$B0,$52,$A8,$69
       .byte $0A,$E5,$C0,$65,$B6,$E8,$E9,$14,$10,$FB,$B5,$9B,$F0,$42,$B5,$A7
       .byte $C9,$04,$B0,$3C,$B5,$DC,$0A,$10,$37,$98,$49,$0F,$0A,$0A,$69,$2A
       .byte $20,$85,$F5,$B0,$2B,$A9,$28,$E5,$B3,$85,$B3,$B4,$A7,$94,$DC,$B9
       .byte $F8,$F6,$F8,$65,$B9,$85,$B9,$90,$16,$A9,$00,$65,$BD,$85,$BD,$90
       .byte $02,$E6,$C8,$29,$0F,$D0,$08,$A5,$BE,$C9,$09,$B0,$02,$E6,$BE,$D8
       .byte $A2,$05,$A5,$B6,$18,$69,$7C,$E5,$C0,$18,$69,$14,$A8,$C9,$E1,$6A
       .byte $35,$DC,$10,$12,$B5,$A7,$C9,$03,$B0,$2E,$B5,$AD,$30,$08,$69,$A0
       .byte $90,$02,$A9,$FF,$95,$AD,$98,$CA,$10,$DF,$A5,$99,$4A,$90,$16,$A5
       .byte $B5,$05,$9A,$29,$3C,$D0,$0E,$45,$B7,$85,$B7,$65,$C0,$85,$C0,$C9
       .byte $0A,$A9,$FE,$B0,$F2,$4C,$B5,$F1,$F0,$04,$C0,$EB,$90,$D8,$A9,$E1
       .byte $85,$B4,$A9,$FF,$85,$B3,$D0,$CE,$38,$F5,$D0,$4A,$4A,$4A,$4A,$A8
       .byte $B9,$ED,$F5,$C0,$04,$90,$03,$D0,$26,$88,$84,$95,$B4,$9B,$39,$E6
       .byte $F5,$38,$F0,$1B,$A5,$95,$D0,$0A,$B9,$E6,$F5,$18,$29,$70,$75,$D0
       .byte $95,$D0,$98,$0A,$0A,$05,$95,$A8,$B9,$A7,$F6,$29,$07,$95,$9B,$60
       .byte $A8,$C0,$60,$2A,$C0,$80,$2A,$C0,$90,$2A,$09,$F8,$49,$07,$85,$96
       .byte $C8,$98,$29,$0F,$85,$95,$98,$4A,$4A,$4A,$4A,$A8,$18,$65,$95,$C9
       .byte $0F,$90,$03,$E9,$0F,$C8,$49,$07,$60,$01,$01,$13,$25,$17,$49,$2D
       .byte $01,$02,$04,$00,$08,$21,$1F,$1A,$1F,$1A,$00,$00,$00,$34,$2E,$2A
       .byte $22,$00,$0E,$3C,$66,$66,$66,$66,$66,$3C,$8B,$7E,$18,$18,$18,$18
       .byte $78,$38,$7D,$7E,$60,$60,$3C,$06,$46,$7C,$6E,$3C,$46,$06,$0C,$06
       .byte $46,$3C,$7D,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7D,$7C,$46,$06,$7C,$60
       .byte $60,$7E,$9B,$3C,$66,$66,$7C,$60,$62,$3C,$AC,$18,$18,$18,$0C,$06
       .byte $42,$7E,$C9,$3C,$66,$66,$3C,$66,$66,$3C,$C9,$3C,$46,$06,$3E,$66
       .byte $66,$3C,$C9,$E9,$AB,$AF,$AD,$E9,$00,$00,$BA,$BA,$8A,$BA,$A2,$3A
       .byte $80,$FE,$A4,$50,$58,$5C,$56,$53,$11,$F0,$00,$AD,$A9,$E9,$A9,$ED
       .byte $41,$0F,$0C,$28,$54,$AC,$AA,$FE,$7F,$7E,$7E,$FD,$7F,$1C,$18,$24
       .byte $00,$15,$A5,$A5,$A5,$AA,$FE,$BF,$FE,$7C,$FA,$7E,$38,$30,$48,$00
       .byte $A0,$85,$A2,$A5,$AA,$FE,$7F,$BF,$F8,$FA,$3F,$0E,$0C,$12,$00,$03
       .byte $05,$0E,$1E,$3C,$54,$BA,$82,$44,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$30,$E1,$11,$00,$00,$E1,$00,$31,$10,$02,$03,$02,$00,$E1,$00
       .byte $00,$01,$03,$20,$F5,$F3,$E0,$F0,$F0,$00,$00,$20,$00,$20,$00,$00
       .byte $00,$00,$E0,$10,$10,$20,$10,$10,$00,$00,$90,$38,$18,$08,$D8,$D0
       .byte $42,$B2,$22,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2
       .byte $C2,$C2,$C2,$A5,$95,$10,$18,$20,$28,$30,$38,$24,$14,$02,$99,$2C
       .byte $8C,$0C,$D6,$00,$A0,$05,$A0,$05,$A0,$05,$A0,$A5,$FF,$FF,$FE,$FE
       .byte $FE,$7F,$FF,$5D,$FF,$DE,$DC,$D8,$E0,$28,$63,$F1,$18,$00,$0A,$28
       .byte $10,$14,$28,$0A,$50,$A5,$FF,$FF,$FE,$FE,$FE,$7F,$FF,$5D,$FF,$DE
       .byte $DC,$D8,$E0,$28,$63,$F1,$18,$61,$C3,$C3,$E3,$E7,$F7,$FF,$FF,$3D
       .byte $3D,$3D,$3D,$3F,$3E,$1E,$0F,$3F,$5D,$FF,$DE,$FC,$D8,$2F,$66,$66
       .byte $26,$75,$A5,$55,$C5,$35,$E5,$15,$05,$05,$05,$05,$15,$F5,$55,$15
       .byte $15,$15,$15,$15,$05,$D5,$45,$00,$E0,$00,$E5,$25,$F5,$05,$05,$F5
       .byte $05,$05,$05,$05,$05,$15,$F5,$55,$15,$15,$15,$15,$15,$05,$D5,$45
       .byte $00,$E0,$00,$F0,$F2,$02,$F0,$00,$02,$B0,$17,$15,$1D,$0F,$1D,$F5
       .byte $F7,$55,$15,$1F,$1F,$15,$1F,$D7,$00,$00,$00,$70,$03,$40,$03,$03
       .byte $24,$63,$05,$44,$25,$AA,$00,$00,$01,$02,$03,$04,$06,$08,$4D,$66
       .byte $4D,$66,$7F,$A0,$07,$88,$B1,$89,$0A,$A6,$F8,$85,$02,$86,$06,$85
       .byte $1B,$B1,$85,$85,$1C,$B1,$83,$AA,$9A,$B1,$87,$AA,$B1,$81,$84,$95
       .byte $A4,$F9,$84,$06,$86,$1B,$BA,$86,$1B,$85,$1C,$A4,$95,$D0,$D6,$84
       .byte $1B,$84,$1C,$A2,$FD,$9A,$60,$85,$02,$85,$2B,$0A,$0A,$0A,$0A,$95
       .byte $20,$88,$10,$FD,$95,$10,$85,$02,$85,$2A,$B5,$F8,$95,$06,$60,$00
       .byte $F0,$E0,$C0
