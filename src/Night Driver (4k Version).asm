; Disassembly of roms/Night Driver (4k Version).bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Night Driver (4k Version).bin
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
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMM0    =  $22
HMM1    =  $23
HMOVE   =  $2A
INPT0   =  $38
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       JSR    LF64D   
LF00F: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$30    
       STA    WSYNC   
       STA    VSYNC   
       STA    TIM64T  
       INC    $96     
       BNE    LF034   
       INC    $9E     
       BNE    LF034   
       STX    $B2     
LF034: INC    $99     
       LDA    $AF     
       SEC            
       SBC    $94     
       STA    $AF     
       LDA    $96     
       LSR            
       BCC    LF045   
       JMP    LF0A5   
LF045: LDX    #$00    
       LDA    $A1     
       BMI    LF04C   
       TXA            
LF04C: AND    #$07    
       TAY            
       LDA    LF712,Y 
       STA    $AC     
       TYA            
       ASL            
       ASL            
       ASL            
       TAY            
       LDA    $9B     
       BNE    LF0A2   
       STX    $A7     
       STX    $A8     
       LDA    #$01    
       STA    $A4     
LF065: JSR    LF691   
       CLC            
       ADC    $BE,X   
       STA    $BE,X   
       STY    $AD     
       LDY    $AC     
       JSR    LF691   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       CLC            
       ADC    $C7,X   
       STA    $C7,X   
       LDA    $BE,X   
       CMP    #$9E    
       BCC    LF08A   
       LDA    $A7     
       ORA    $A4     
       STA    $A7     
LF08A: LDA    $C7,X   
       CMP    #$9E    
       BCC    LF096   
       LDA    $A8     
       ORA    $A4     
       STA    $A8     
LF096: ASL    $A4     
       INX            
       INC    $AC     
       LDY    $AD     
       INY            
       CPX    #$08    
       BNE    LF065   
LF0A2: JMP    LF2A4   
LF0A5: LDA    SWCHB   
       ROR            
       BCS    LF0E8   
       JSR    LF669   
       STY    $B2     
       STY    $A5     
       STY    $92     
       INY            
       STY    $B4     
       STY    $B7     
       STY    $A3     
       STY    COLUBK  
       STY    $94     
       INY            
       STY    $A1     
       LDA    $B0     
       TAY            
       AND    #$03    
       STA    $8C     
       LDA    #$0F    
       CPY    #$05    
       BCS    LF0D1   
       STA    $B6     
LF0D1: STA    $A2     
       LDA    #$90    
       STA    $B3     
       LDA    #$83    
       STA    $8D     
       STA    $86     
       LDA    #$06    
       BIT    SWCHB   
       BMI    LF0E6   
       LDA    #$04    
LF0E6: STA    $AB     
LF0E8: LDX    #$00    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF0F3   
       LDX    #$80    
LF0F3: STX    $A0     
       LDA    SWCHB   
       AND    #$02    
       BEQ    LF104   
       LDA    #$00    
       STA    $B1     
       STA    $9D     
       BEQ    LF137   
LF104: LDA    $B1     
       BNE    LF12F   
LF108: SED            
       LDA    $B0     
       CLC            
       ADC    #$01    
       STA    $B0     
       CLD            
       CMP    #$09    
       BNE    LF119   
       LDA    #$01    
       STA    $B0     
LF119: LDA    #$FF    
       STA    $B1     
       LDA    $B2     
       BEQ    LF124   
       JSR    LF669   
LF124: LDA    #$00    
       STA    $9D     
       STA    $B2     
       JSR    LF6A3   
       BNE    LF137   
LF12F: INC    $9D     
       LDA    $9D     
       CMP    #$12    
       BEQ    LF108   
LF137: LDA    $AF     
       CMP    #$9E    
       BCC    LF140   
       JMP    LF1C4   
LF140: INC    $92     
       LDX    #$07    
LF144: LDA    $BE,X   
       LDY    $C7,X   
       STA    $BF,X   
       STY    $C8,X   
       DEX            
       BPL    LF144   
       LDA    $95     
       STA    $BE     
       CLC            
       ADC    #$04    
       STA    $C7     
       LDA    #$B0    
       STA    $AF     
       DEC    $A2     
       BPL    LF1B5   
       BIT    $B2     
       BPL    LF183   
       LDA    $8C     
       BNE    LF183   
       LDA    $93     
       BPL    LF170   
       LDX    #$01    
       BNE    LF177   
LF170: LDX    #$81    
       ROR            
       BCC    LF177   
       LDX    #$C2    
LF177: STX    $A1     
       LDA    $93     
       AND    #$0F    
       ORA    #$08    
       STA    $A2     
       BNE    LF1A8   
LF183: LDA    $8C     
       ASL            
       TAY            
       LDA    LF715,Y 
       STA    $8A     
       LDA    LF716,Y 
       STA    $8B     
       LDY    $A3     
LF193: LDA    ($8A),Y 
       BNE    LF19A   
       TAY            
       BEQ    LF193   
LF19A: STA    $A1     
       INY            
       LDA    ($8A),Y 
       STA    $A2     
       INY            
       STY    $A3     
       BIT    $B2     
       BPL    LF1B1   
LF1A8: SED            
       LDA    $B4     
       CLC            
       ADC    #$01    
       STA    $B4     
       CLD            
LF1B1: LDA    #$00    
       STA    $A5     
LF1B5: LDA    $A1     
       BPL    LF1C4   
       AND    #$07    
       TAX            
       LDA    $95     
       CLC            
       ADC    LF6F5,X 
       STA    $95     
LF1C4: LDY    $86     
       BPL    LF1CC   
       LDX    $92     
       BPL    LF1CF   
LF1CC: JMP    LF26A   
LF1CF: TYA            
       AND    #$0F    
       TAY            
       LDA    $86     
       AND    #$10    
       BEQ    LF1E1   
       LDA    $C7,X   
       CLC            
       ADC    #$10    
       JMP    LF1F0   
LF1E1: LDA    $BE,X   
       CPY    #$00    
       BNE    LF1ED   
       CLC            
       ADC    #$02    
       JMP    LF1F0   
LF1ED: SEC            
       SBC    #$18    
LF1F0: STA    $90     
       TXA            
       CMP    #$06    
       BNE    LF23C   
       LDA    $95     
       CMP    #$50    
       BCC    LF204   
       LDA    $86     
       AND    #$EF    
       JMP    LF208   
LF204: LDA    $86     
       ORA    #$10    
LF208: STA    $86     
       LDA    #$AC    
       STA    $8F     
       LDA    #$FF    
       STA    $92     
       LDA    $93     
       AND    #$03    
       BNE    LF230   
       LDA    $BE     
       CLC            
       ADC    #$02    
       STA    $90     
       BIT    SWCHB   
       BVS    LF228   
       LDA    #$40    
       STA    $AE     
LF228: LDA    $86     
       AND    #$EF    
       STA    $86     
       LDA    #$00    
LF230: STA    $81     
       LDA    $86     
       AND    #$F0    
       ORA    $81     
       STA    $86     
       BNE    LF26A   
LF23C: LSR            
       STA    $84     
       TAX            
       LDA    #$10    
       STA    $81     
       LDA    $86     
       AND    #$0F    
       BNE    LF24C   
       STA    $81     
LF24C: LDA    $86     
       AND    #$10    
       EOR    $81     
       BEQ    LF25C   
       LDA    $90     
       SEC            
       SBC    LF75D,X 
       STA    $90     
LF25C: LDA    $90     
       BPL    LF273   
       CLC            
       ADC    LF75D,X 
       BCS    LF26A   
       CMP    #$A0    
       BCC    LF273   
LF26A: LDA    $86     
       AND    #$BF    
       STA    $86     
       JMP    LF2A4   
LF273: LDA    $86     
       ORA    #$40    
       STA    $86     
       LDA    $86     
       BPL    LF2A4   
       AND    #$0F    
       ASL            
       TAX            
       LDA    LF766,X 
       STA    $88     
       LDA    LF767,X 
       STA    $89     
       LDX    $84     
       LDA    LF760,X 
       STA    $91     
       LDA    LF763,X 
       STA    NUSIZ0  
       LDX    #$00    
       LDA    $90     
       JSR    LF6C0   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
LF2A4: LDA    $B4     
       STA    $B8     
       BIT    $B2     
       BPL    LF2E3   
       BIT    $A5     
       BMI    LF2D8   
       LDA    $99     
       CMP    #$3C    
       BNE    LF2D8   
       SED            
       LDA    $B3     
       SEC            
       SBC    #$01    
       STA    $B3     
       CLD            
       CMP    #$00    
       BNE    LF2D4   
       LDA    $B6     
       BEQ    LF2D4   
       JSR    LF6A3   
       LDA    #$40    
       STA    $B2     
       JSR    LF669   
       JMP    LF31E   
LF2D4: LDA    #$00    
       STA    $99     
LF2D8: LDA    $B6     
       BEQ    LF2DE   
       LDA    $B3     
LF2DE: STA    $B9     
       JMP    LF2FD   
LF2E3: LDA    $96     
       BNE    LF2F7   
       LDA    $A9     
       AND    #$07    
       TAY            
       LDA    LF7ED,Y 
       STA    $8D     
       ORA    #$08    
       STA    $AA     
       INC    $A9     
LF2F7: BVS    LF2D8   
       LDA    $B0     
       STA    $B8     
LF2FD: LDX    #$01    
LF2FF: LDA    $B8,X   
       AND    #$0F    
       STA    $81     
       ASL            
       ASL            
       CLC            
       ADC    $81     
       STA    $BA,X   
       LDA    $B8,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $81     
       LSR            
       LSR            
       CLC            
       ADC    $81     
       STA    $BC,X   
       DEX            
       BPL    LF2FF   
LF31E: LDX    INTIM   
       BNE    LF31E   
       STX    WSYNC   
       STX    HMP0    
       STX    VBLANK  
       LDA    #$E5    
       STA    TIM64T  
       STX    CTRLPF  
       STX    $83     
       STX    $84     
       INX            
       STX    $A4     
       LDX    #$06    
LF339: STA    WSYNC   
       LDA    $83     
       STA    PF1     
       LDY    $BC     
       LDA    LF7BB,Y 
       AND    #$F0    
       STA    $83     
       LDY    $BA     
       LDA    LF7BB,Y 
       AND    #$0F    
       ORA    $83     
       STA    $83     
       LDA    $84     
       STA    PF1     
       LDY    $BD     
       LDA    LF7BB,Y 
       AND    #$F0    
       STA    $84     
       LDY    $BB     
       LDA    LF7BB,Y 
       AND    $B6     
       STA    WSYNC   
       ORA    $84     
       STA    $84     
       LDA    $83     
       STA    PF1     
       DEX            
       BEQ    LF383   
       INC    $BA     
       INC    $BC     
       INC    $BB     
       INC    $BD     
       LDA    $84     
       STA    PF1     
       JMP    LF339   
LF383: STX    PF1     
       LDY    #$B0    
       LDA    #$01    
       STA    CTRLPF  
       LDA    $96     
       LSR            
       BCS    LF393   
       JMP    LF425   
LF393: STA    WSYNC   
LF395: STA    WSYNC   
       CPY    $8F     
       BEQ    LF3A4   
       BIT    INPT0   
       BMI    LF3A1   
       INC    $B5     
LF3A1: DEY            
       BNE    LF395   
LF3A4: STY    $87     
       LDA    #$29    
       STA    TIM64T  
       LDY    #$00    
LF3AD: LDA    $91     
       STA    $81     
       CPY    #$10    
       BEQ    LF3E3   
       STA    WSYNC   
       LDA    ($88),Y 
       BIT    $86     
       BVC    LF3BF   
       STA    GRP0    
LF3BF: INY            
       LDA    ($88),Y 
       BIT    $A0     
       BPL    LF3C8   
       AND    #$0F    
LF3C8: STA    COLUP0  
       BIT    INPT0   
       BMI    LF3D0   
       INC    $B5     
LF3D0: INY            
       DEC    $81     
       BEQ    LF3AD   
LF3D5: STA    WSYNC   
       BIT    INPT0   
       BMI    LF3DD   
       INC    $B5     
LF3DD: DEC    $81     
       BNE    LF3D5   
       BEQ    LF3AD   
LF3E3: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       LDA    $87     
       SEC            
       SBC    #$20    
       TAY            
LF3EF: STA    WSYNC   
       BIT    INPT0   
       BMI    LF3F7   
       INC    $B5     
LF3F7: LDA    INTIM   
       BNE    LF3EF   
LF3FC: STA    WSYNC   
       BIT    INPT0   
       BMI    LF404   
       INC    $B5     
LF404: DEY            
       CPY    #$1F    
       BNE    LF3FC   
       LDA    $8D     
       BIT    $A0     
       BPL    LF411   
       AND    #$0F    
LF411: STA    COLUPF  
LF413: STA    WSYNC   
       TYA            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF759,X 
       STA    PF2     
       DEY            
       BNE    LF413   
       JMP    LF4B4   
LF425: LDA    $AA     
       BIT    $A0     
       BPL    LF42D   
       AND    #$0F    
LF42D: STA    COLUP0  
       STA    COLUP1  
LF431: STA    WSYNC   
       CPY    $AF     
       BEQ    LF43A   
       DEY            
       BNE    LF431   
LF43A: INX            
       TXA            
       DEX            
       ASL            
       STA    $82     
       STX    $83     
       STY    $84     
       LDA    $BE,X   
       LDX    #$02    
       JSR    LF6C0   
       STA    HMM0    
       LDX    $83     
       LDA    $C7,X   
       LDX    #$03    
       JSR    LF6C0   
       STA    HMM1    
       LDX    $83     
       LDA    $84     
       SEC            
       SBC    #$05    
       CPX    $92     
       BNE    LF469   
       BIT    $B2     
       BPL    LF469   
       STA    $8F     
LF469: TAY            
       CPY    #$10    
       BCC    LF4AD   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A7     
       AND    $A4     
       BNE    LF47C   
       LDA    #$02    
       STA    ENAM0   
LF47C: LDA    $A8     
       AND    $A4     
       BNE    LF486   
       LDA    #$02    
       STA    ENAM1   
LF486: DEY            
LF487: STA    WSYNC   
       DEY            
       DEC    $82     
       BNE    LF487   
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM1   
       STA    ENAM0   
       DEY            
       ASL    $A4     
       INX            
       CPX    #$08    
       BEQ    LF4AD   
       LDA    LF6ED,X 
       STA    $81     
LF4A3: STA    WSYNC   
       DEY            
       DEC    $81     
       BNE    LF4A3   
       JMP    LF43A   
LF4AD: STA    WSYNC   
LF4AF: LDX    INTIM   
       BNE    LF4AF   
LF4B4: LDA    #$1C    
       STA    TIM64T  
       STX    PF2     
       LDA    $93     
       ASL            
       EOR    $93     
       ASL            
       ASL            
       ROL    $93     
       LDA    $96     
       LSR            
       BIT    $B2     
       BMI    LF4CE   
       JMP    LF645   
LF4CE: BCS    LF4D3   
LF4D0: JMP    LF555   
LF4D3: LDA    $9B     
       CMP    #$10    
       BCS    LF4D0   
       LDA    $B5     
       LDY    #$00    
       STY    $B5     
LF4DF: SEC            
       SBC    #$0A    
       BCC    LF4E8   
       INY            
       JMP    LF4DF   
LF4E8: LDX    #$00    
       CPY    #$0B    
       BCC    LF4F0   
       LDY    #$0A    
LF4F0: STY    $98     
       BIT    $A5     
       BMI    LF51F   
       LDA    $9B     
       BNE    LF500   
       LDA    $94     
       BEQ    LF51F   
       BNE    LF502   
LF500: LDY    $9A     
LF502: LDA    $BE,X   
       CLC            
       ADC    LF7B0,Y 
       STA    $BE,X   
       LDA    $C7,X   
       CLC            
       ADC    LF7B0,Y 
       STA    $C7,X   
       INX            
       CPX    #$08    
       BNE    LF502   
       LDA    $95     
       CLC            
       ADC    LF7B0,Y 
       STA    $95     
LF51F: LDA    $9B     
       BNE    LF555   
       INC    $B7     
       LDA    $9F     
       EOR    SWCHA   
       BPL    LF532   
       LDA    #$00    
       STA    $B7     
       STA    $9E     
LF532: LDA    SWCHA   
       STA    $9F     
       LDA    $B7     
       CMP    #$05    
       BNE    LF555   
       LDA    $94     
       BIT    $9F     
       BPL    LF54B   
       CMP    #$00    
       BEQ    LF551   
       DEC    $94     
       BPL    LF551   
LF54B: CMP    $AB     
       BEQ    LF551   
       INC    $94     
LF551: LDA    #$00    
       STA    $B7     
LF555: LDX    $9B     
       BNE    LF587   
       LDA    $C5     
       BMI    LF565   
       CMP    #$48    
       BCC    LF565   
       STX    $9A     
       BCS    LF573   
LF565: LDA    $CE     
       CMP    #$58    
       BCS    LF5B1   
       CMP    #$20    
       BCC    LF5B1   
       LDA    #$0A    
       STA    $9A     
LF573: LDA    #$81    
       STA    $9B     
       LDA    #$0F    
       STA    $9C     
       LDA    #$15    
       STA    AUDF0   
       LDA    #$08    
       STA    AUDC0   
       STX    $94     
       STX    $A9     
LF587: DEC    $9B     
       LDA    $9B     
       BEQ    LF5A4   
       AND    #$07    
       BNE    LF5D5   
       LDY    $A9     
       LDA    LF7ED,Y 
       ORA    #$08    
       BIT    $A0     
       BPL    LF59E   
       AND    #$0F    
LF59E: STA    COLUBK  
       INC    $A9     
       BNE    LF5D5   
LF5A4: STA    $9B     
       STA    $B7     
       STA    COLUBK  
       LDX    #$0E    
       STX    AUDF0   
       INX            
       STX    AUDC0   
LF5B1: LDA    $86     
       AND    #$07    
       BNE    LF5D5   
       LDA    $8F     
       CMP    #$50    
       BCS    LF5D5   
       LDA    $90     
       BMI    LF5D5   
       CMP    #$38    
       BCC    LF5D5   
       LDA    #$00    
       STA    $9A     
       LDA    $86     
       ORA    #$04    
       STA    $86     
       LDA    #$04    
       STA    $92     
       BNE    LF573   
LF5D5: LDA    #$80    
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$00    
       STY    VBLANK  
       LDA    $9B     
       BNE    LF5FC   
       LDA    $96     
       AND    #$03    
       BNE    LF5F4   
       LDX    $94     
       LDA    LF7F5,X 
       STA    $8E     
LF5F4: LSR    $8E     
       BCC    LF5FA   
       LDY    #$0C    
LF5FA: STY    AUDV0   
LF5FC: LDA    $96     
       AND    #$07    
       BNE    LF60D   
       LDA    $9C     
       BEQ    LF60D   
       SEC            
       SBC    #$01    
       STA    AUDV0   
       STA    $9C     
LF60D: LDA    $AE     
       BEQ    LF625   
       DEC    $AE     
       AND    #$18    
       BEQ    LF619   
       LDA    #$0F    
LF619: STA    AUDV1   
       LDA    #$0F    
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       BNE    LF645   
LF625: LDA    #$08    
       STA    AUDF1   
       STA    AUDC1   
       LDA    $9B     
       BNE    LF641   
       LDA    $94     
       CMP    #$02    
       BCC    LF641   
       LDA    $98     
       BEQ    LF63D   
       CMP    #$0A    
       BNE    LF641   
LF63D: LDA    #$08    
       BNE    LF643   
LF641: LDA    #$00    
LF643: STA    AUDV1   
LF645: LDX    INTIM   
       BNE    LF645   
       JMP    LF00F   
LF64D: LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    $93     
       LDA    #$0E    
       STA    AUDF0   
       LDX    #$01    
       STX    $B0     
       STX    $91     
       STX    $98     
       LDA    #$05    
       STA    $94     
       LDA    #$87    
       STA    $8D     
LF669: LDA    #$48    
       STA    $AA     
       LDA    #$B0    
       STA    $AF     
       LDA    #$AC    
       STA    $8F     
       LDA    #$4E    
       STA    $95     
       STA    $BE     
       LDA    #$52    
       STA    $C7     
       LDX    #$01    
       LDA    #$9F    
       STA    AUDC0   
       LDY    #$FF    
LF687: STA    $C7,X   
       STY    $BE,X   
       INX            
       CPX    #$08    
       BNE    LF687   
       RTS            

LF691: LDA    $94     
       STA    $81     
       LDA    #$00    
LF697: DEC    $81     
       BMI    LF6A2   
       CLC            
       ADC    LF6FA,Y 
       JMP    LF697   
LF6A2: RTS            

LF6A3: LDA    #$00    
       STA    $86     
       STA    COLUBK  
       STA    $A3     
       STA    $A2     
       STA    $9B     
       STA    $8C     
       STA    AUDV0   
       STA    AUDV1   
       STA    $B9     
       STA    $B6     
       LDA    #$05    
       STA    $94     
       STA    $A1     
       RTS            

LF6C0: CLC            
       ADC    #$37    
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       PLA            
       AND    #$0F    
       STY    $81     
       CLC            
       ADC    $81     
       CMP    #$0F    
       BCC    LF6D8   
       SBC    #$0F    
       INY            
LF6D8: CMP    #$08    
       EOR    #$0F    
       BCS    LF6E1   
       ADC    #$01    
       DEY            
LF6E1: ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF6E7: DEY            
       BPL    LF6E7   
       STA    RESP0,X 
       RTS            

LF6ED: .byte $00,$01,$01,$01,$02,$04,$08,$0A
LF6F5: .byte $00,$FC,$04,$F9,$07
LF6FA: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$01,$01,$01,$00,$FF,$FF,$FF,$FF
       .byte $FE,$FE,$FE,$FF,$FF,$FF,$FF,$00
LF712: .byte $00,$10,$08
LF715: .byte $1D
LF716: .byte $F7,$26,$F7,$33,$F7,$46,$F7,$01,$14,$81,$02,$C2,$04,$81,$01,$00
       .byte $01,$14,$81,$12,$01,$18,$C2,$0A,$01,$0A,$81,$10,$00,$01,$0A,$C2
       .byte $0A,$01,$06,$81,$08,$01,$08,$81,$12,$C2,$0A,$01,$08,$81,$0A,$00
       .byte $01,$0A,$81,$08,$C2,$0F,$01,$08,$C2,$0A,$81,$0A,$01,$0A,$81,$14
       .byte $C2,$0C,$00
LF759: .byte $A0,$E0,$A0,$80
LF75D: .byte $08,$10,$20
LF760: .byte $01,$02,$04
LF763: .byte $10,$15,$17
LF766: .byte $A0
LF767: .byte $F7,$70,$F7,$80,$F7,$70,$F7,$90,$F7,$18,$D4,$3C,$D4,$7E,$D4,$FF
       .byte $D4,$FF,$D4,$18,$24,$18,$24,$18,$24,$18,$46,$3C,$46,$7E,$46,$FF
       .byte $46,$7A,$0C,$6A,$0C,$6E,$0C,$6E,$0C,$78,$86,$FC,$84,$96,$84,$7A
       .byte $82,$3E,$82,$33,$2C,$1F,$82,$12,$82,$3C,$88,$7E,$86,$CB,$84,$9D
       .byte $82,$FF,$82,$C3,$2C,$FF,$82,$42,$82
LF7B0: .byte $FC,$FD,$FE,$FF,$00,$00,$00,$01,$02,$03,$04
LF7BB: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF7ED: .byte $F2,$24,$66,$12,$C4,$E6,$42,$84
LF7F5: .byte $00,$0C,$0C,$0A,$0E,$0F,$0F,$00,$F0,$00,$00,$78,$D8,$A2,$FF,$9A
       .byte $E8,$8A,$95,$00,$E8,$D0,$FB,$20,$4D,$F6,$A9,$02,$85,$02,$85,$01
       .byte $85,$02,$85,$02,$85,$02,$85,$00,$85,$02,$85,$02,$A9,$30,$85,$02
       .byte $85,$00,$8D,$96,$02,$E6,$96,$D0,$06,$E6,$9E,$D0,$02,$86,$B2,$E6
       .byte $99,$A5,$AF,$38,$E5,$94,$85,$AF,$A5,$96,$4A,$90,$03,$4C,$A5,$F0
       .byte $A2,$00,$A5,$A1,$30,$01,$8A,$29,$07,$A8,$B9,$12,$F7,$85,$AC,$98
       .byte $0A,$0A,$0A,$A8,$A5,$9B,$D0,$45,$86,$A7,$86,$A8,$A9,$01,$85,$A4
       .byte $20,$91,$F6,$18,$75,$BE,$95,$BE,$84,$AD,$A4,$AC,$20,$91,$F6,$49
       .byte $FF,$18,$69,$01,$18,$75,$C7,$95,$C7,$B5,$BE,$C9,$9E,$90,$06,$A5
       .byte $A7,$05,$A4,$85,$A7,$B5,$C7,$C9,$9E,$90,$06,$A5,$A8,$05,$A4,$85
       .byte $A8,$06,$A4,$E8,$E6,$AC,$A4,$AD,$C8,$E0,$08,$D0,$C3,$4C,$A4,$F2
       .byte $AD,$82,$02,$6A,$B0,$3D,$20,$69,$F6,$84,$B2,$84,$A5,$84,$92,$C8
       .byte $84,$B4,$84,$B7,$84,$A3,$84,$09,$84,$94,$C8,$84,$A1,$A5,$B0,$A8
       .byte $29,$03,$85,$8C,$A9,$0F,$C0,$05,$B0,$02,$85,$B6,$85,$A2,$A9,$90
       .byte $85,$B3,$A9,$83,$85,$8D,$85,$86,$A9,$06,$2C,$82,$02,$30,$02,$A9
       .byte $04,$85,$AB,$A2,$00,$AD,$82,$02,$29,$08,$D0,$02,$A2,$80,$86,$A0
       .byte $AD,$82,$02,$29,$02,$F0,$08,$A9,$00,$85,$B1,$85,$9D,$F0,$33,$A5
       .byte $B1,$D0,$27,$F8,$A5,$B0,$18,$69,$01,$85,$B0,$D8,$C9,$09,$D0,$04
       .byte $A9,$01,$85,$B0,$A9,$FF,$85,$B1,$A5,$B2,$F0,$03,$20,$69,$F6,$A9
       .byte $00,$85,$9D,$85,$B2,$20,$A3,$F6,$D0,$08,$E6,$9D,$A5,$9D,$C9,$12
       .byte $F0,$D1,$A5,$AF,$C9,$9E,$90,$03,$4C,$C4,$F1,$E6,$92,$A2,$07,$B5
       .byte $BE,$B4,$C7,$95,$BF,$94,$C8,$CA,$10,$F5,$A5,$95,$85,$BE,$18,$69
       .byte $04,$85,$C7,$A9,$B0,$85,$AF,$C6,$A2,$10,$55,$24,$B2,$10,$1F,$A5
       .byte $8C,$D0,$1B,$A5,$93,$10,$04,$A2,$01,$D0,$07,$A2,$81,$6A,$90,$02
       .byte $A2,$C2,$86,$A1,$A5,$93,$29,$0F,$09,$08,$85,$A2,$D0,$25,$A5,$8C
       .byte $0A,$A8,$B9,$15,$F7,$85,$8A,$B9,$16,$F7,$85,$8B,$A4,$A3,$B1,$8A
       .byte $D0,$03,$A8,$F0,$F9,$85,$A1,$C8,$B1,$8A,$85,$A2,$C8,$84,$A3,$24
       .byte $B2,$10,$09,$F8,$A5,$B4,$18,$69,$01,$85,$B4,$D8,$A9,$00,$85,$A5
       .byte $A5,$A1,$10,$0B,$29,$07,$AA,$A5,$95,$18,$7D,$F5,$F6,$85,$95,$A4
       .byte $86,$10,$04,$A6,$92,$10,$03,$4C,$6A,$F2,$98,$29,$0F,$A8,$A5,$86
       .byte $29,$10,$F0,$08,$B5,$C7,$18,$69,$10,$4C,$F0,$F1,$B5,$BE,$C0,$00
       .byte $D0,$06,$18,$69,$02,$4C,$F0,$F1,$38,$E9,$18,$85,$90,$8A,$C9,$06
       .byte $D0,$45,$A5,$95,$C9,$50,$90,$07,$A5,$86,$29,$EF,$4C,$08,$F2,$A5
       .byte $86,$09,$10,$85,$86,$A9,$AC,$85,$8F,$A9,$FF,$85,$92,$A5,$93,$29
       .byte $03,$D0,$18,$A5,$BE,$18,$69,$02,$85,$90,$2C,$82,$02,$70,$04,$A9
       .byte $40,$85,$AE,$A5,$86,$29,$EF,$85,$86,$A9,$00,$85,$81,$A5,$86,$29
       .byte $F0,$05,$81,$85,$86,$D0,$2E,$4A,$85,$84,$AA,$A9,$10,$85,$81,$A5
       .byte $86,$29,$0F,$D0,$02,$85,$81,$A5,$86,$29,$10,$45,$81,$F0,$08,$A5
       .byte $90,$38,$FD,$5D,$F7,$85,$90,$A5,$90,$10,$13,$18,$7D,$5D,$F7,$B0
       .byte $04,$C9,$A0,$90,$09,$A5,$86,$29,$BF,$85,$86,$4C,$A4,$F2,$A5,$86
       .byte $09,$40,$85,$86,$A5,$86,$10,$27,$29,$0F,$0A,$AA,$BD,$66,$F7,$85
       .byte $88,$BD,$67,$F7,$85,$89,$A6,$84,$BD,$60,$F7,$85,$91,$BD,$63,$F7
       .byte $85,$04,$A2,$00,$A5,$90,$20,$C0,$F6,$85,$20,$85,$02,$85,$2A,$A5
       .byte $B4,$85,$B8,$24,$B2,$10,$37,$24,$A5,$30,$28,$A5,$99,$C9,$3C,$D0
       .byte $22,$F8,$A5,$B3,$38,$E9,$01,$85,$B3,$D8,$C9,$00,$D0,$11,$A5,$B6
       .byte $F0,$0D,$20,$A3,$F6,$A9,$40,$85,$B2,$20,$69,$F6,$4C,$1E,$F3,$A9
       .byte $00,$85,$99,$A5,$B6,$F0,$02,$A5,$B3,$85,$B9,$4C,$FD,$F2,$A5,$96
       .byte $D0,$10,$A5,$A9,$29,$07,$A8,$B9,$ED,$F7,$85,$8D,$09,$08,$85,$AA
       .byte $E6,$A9,$70,$DF,$A5,$B0,$85,$B8,$A2,$01,$B5,$B8,$29,$0F,$85,$81
       .byte $0A,$0A,$18,$65,$81,$95,$BA,$B5,$B8,$29,$F0,$4A,$4A,$85,$81,$4A
       .byte $4A,$18,$65,$81,$95,$BC,$CA,$10,$E1,$AE,$84,$02,$D0,$FB,$86,$02
       .byte $86,$20,$86,$01,$A9,$E5,$8D,$96,$02,$86,$0A,$86,$83,$86,$84,$E8
       .byte $86,$A4,$A2,$06,$85,$02,$A5,$83,$85,$0E,$A4,$BC,$B9,$BB,$F7,$29
       .byte $F0,$85,$83,$A4,$BA,$B9,$BB,$F7,$29,$0F,$05,$83,$85,$83,$A5,$84
       .byte $85,$0E,$A4,$BD,$B9,$BB,$F7,$29,$F0,$85,$84,$A4,$BB,$B9,$BB,$F7
       .byte $25,$B6,$85,$02,$05,$84,$85,$84,$A5,$83,$85,$0E,$CA,$F0,$0F,$E6
       .byte $BA,$E6,$BC,$E6,$BB,$E6,$BD,$A5,$84,$85,$0E,$4C,$39,$F3,$86,$0E
       .byte $A0,$B0,$A9,$01,$85,$0A,$A5,$96,$4A,$B0,$03,$4C,$25,$F4,$85,$02
       .byte $85,$02,$C4,$8F,$F0,$09,$24,$38,$30,$02,$E6,$B5,$88,$D0,$F1,$84
       .byte $87,$A9,$29,$8D,$96,$02,$A0,$00,$A5,$91,$85,$81,$C0,$10,$F0,$2E
       .byte $85,$02,$B1,$88,$24,$86,$50,$02,$85,$1B,$C8,$B1,$88,$24,$A0,$10
       .byte $02,$29,$0F,$85,$06,$24,$38,$30,$02,$E6,$B5,$C8,$C6,$81,$F0,$D8
       .byte $85,$02,$24,$38,$30,$02,$E6,$B5,$C6,$81,$D0,$F4,$F0,$CA,$85,$02
       .byte $A9,$00,$85,$1B,$A5,$87,$38,$E9,$20,$A8,$85,$02,$24,$38,$30,$02
       .byte $E6,$B5,$AD,$84,$02,$D0,$F3,$85,$02,$24,$38,$30,$02,$E6,$B5,$88
       .byte $C0,$1F,$D0,$F3,$A5,$8D,$24,$A0,$10,$02,$29,$0F,$85,$08,$85,$02
       .byte $98,$4A,$4A,$4A,$AA,$BD,$59,$F7,$85,$0F,$88,$D0,$F1,$4C,$B4,$F4
       .byte $A5,$AA,$24,$A0,$10,$02,$29,$0F,$85,$06,$85,$07,$85,$02,$C4,$AF
       .byte $F0,$03,$88,$D0,$F7,$E8,$8A,$CA,$0A,$85,$82,$86,$83,$84,$84,$B5
       .byte $BE,$A2,$02,$20,$C0,$F6,$85,$22,$A6,$83,$B5,$C7,$A2,$03,$20,$C0
       .byte $F6,$85,$23,$A6,$83,$A5,$84,$38,$E9,$05,$E4,$92,$D0,$06,$24,$B2
       .byte $10,$02,$85,$8F,$A8,$C0,$10,$90,$3F,$85,$02,$85,$2A,$A5,$A7,$25
       .byte $A4,$D0,$04,$A9,$02,$85,$1D,$A5,$A8,$25,$A4,$D0,$04,$A9,$02,$85
       .byte $1E,$88,$85,$02,$88,$C6,$82,$D0,$F9,$85,$02,$A9,$00,$85,$1E,$85
       .byte $1D,$88,$06,$A4,$E8,$E0,$08,$F0,$0F,$BD,$ED,$F6,$85,$81,$85,$02
       .byte $88,$C6,$81,$D0,$F9,$4C,$3A,$F4,$85,$02,$AE,$84,$02,$D0,$FB,$A9
       .byte $1C,$8D,$96,$02,$86,$0F,$A5,$93,$0A,$45,$93,$0A,$0A,$26,$93,$A5
       .byte $96,$4A,$24,$B2,$30,$03,$4C,$45,$F6,$B0,$03,$4C,$55,$F5,$A5,$9B
       .byte $C9,$10,$B0,$F7,$A5,$B5,$A0,$00,$84,$B5,$38,$E9,$0A,$90,$04,$C8
       .byte $4C,$DF,$F4,$A2,$00,$C0,$0B,$90,$02,$A0,$0A,$84,$98,$24,$A5,$30
       .byte $29,$A5,$9B,$D0,$06,$A5,$94,$F0,$21,$D0,$02,$A4,$9A,$B5,$BE,$18
       .byte $79,$B0,$F7,$95,$BE,$B5,$C7,$18,$79,$B0,$F7,$95,$C7,$E8,$E0,$08
       .byte $D0,$EB,$A5,$95,$18,$79,$B0,$F7,$85,$95,$A5,$9B,$D0,$32,$E6,$B7
       .byte $A5,$9F,$4D,$80,$02,$10,$06,$A9,$00,$85,$B7,$85,$9E,$AD,$80,$02
       .byte $85,$9F,$A5,$B7,$C9,$05,$D0,$18,$A5,$94,$24,$9F,$10,$08,$C9,$00
       .byte $F0,$0A,$C6,$94,$10,$06,$C5,$AB,$F0,$02,$E6,$94,$A9,$00,$85,$B7
       .byte $A6,$9B,$D0,$2E,$A5,$C5,$30,$08,$C9,$48,$90,$04,$86,$9A,$B0,$0E
       .byte $A5,$CE,$C9,$58,$B0,$46,$C9,$20,$90,$42,$A9,$0A,$85,$9A,$A9,$81
       .byte $85,$9B,$A9,$0F,$85,$9C,$A9,$15,$85,$17,$A9,$08,$85,$15,$86,$94
       .byte $86,$A9,$C6,$9B,$A5,$9B,$F0,$17,$29,$07,$D0,$44,$A4,$A9,$B9,$ED
       .byte $F7,$09,$08,$24,$A0,$10,$02,$29,$0F,$85,$09,$E6,$A9,$D0,$31,$85
       .byte $9B,$85,$B7,$85,$09,$A2,$0E,$86,$17,$E8,$86,$15,$A5,$86,$29,$07
       .byte $D0,$1E,$A5,$8F,$C9,$50,$B0,$18,$A5,$90,$30,$14,$C9,$38,$90,$10
       .byte $A9,$00,$85,$9A,$A5,$86,$09,$04,$85,$86,$A9,$04,$85,$92,$D0,$9E
       .byte $A9,$80,$85,$01,$85,$02,$85,$02,$85,$02,$A0,$00,$84,$01,$A5,$9B
       .byte $D0,$15,$A5,$96,$29,$03,$D0,$07,$A6,$94,$BD,$F5,$F7,$85,$8E,$46
       .byte $8E,$90,$02,$A0,$0C,$84,$19,$A5,$96,$29,$07,$D0,$0B,$A5,$9C,$F0
       .byte $07,$38,$E9,$01,$85,$19,$85,$9C,$A5,$AE,$F0,$14,$C6,$AE,$29,$18
       .byte $F0,$02,$A9,$0F,$85,$1A,$A9,$0F,$85,$18,$A9,$0C,$85,$16,$D0,$20
       .byte $A9,$08,$85,$18,$85,$16,$A5,$9B,$D0,$12,$A5,$94,$C9,$02,$90,$0C
       .byte $A5,$98,$F0,$04,$C9,$0A,$D0,$04,$A9,$08,$D0,$02,$A9,$00,$85,$1A
       .byte $AE,$84,$02,$D0,$FB,$4C,$0F,$F0,$A9,$10,$85,$04,$85,$05,$85,$93
       .byte $A9,$0E,$85,$17,$A2,$01,$86,$B0,$86,$91,$86,$98,$A9,$05,$85,$94
       .byte $A9,$87,$85,$8D,$A9,$48,$85,$AA,$A9,$B0,$85,$AF,$A9,$AC,$85,$8F
       .byte $A9,$4E,$85,$95,$85,$BE,$A9,$52,$85,$C7,$A2,$01,$A9,$9F,$85,$15
       .byte $A0,$FF,$95,$C7,$94,$BE,$E8,$E0,$08,$D0,$F7,$60,$A5,$94,$85,$81
       .byte $A9,$00,$C6,$81,$30,$07,$18,$79,$FA,$F6,$4C,$97,$F6,$60,$A9,$00
       .byte $85,$86,$85,$09,$85,$A3,$85,$A2,$85,$9B,$85,$8C,$85,$19,$85,$1A
       .byte $85,$B9,$85,$B6,$A9,$05,$85,$94,$85,$A1,$60,$18,$69,$37,$48,$4A
       .byte $4A,$4A,$4A,$A8,$68,$29,$0F,$84,$81,$18,$65,$81,$C9,$0F,$90,$03
       .byte $E9,$0F,$C8,$C9,$08,$49,$0F,$B0,$03,$69,$01,$88,$0A,$0A,$0A,$0A
       .byte $84,$02,$88,$10,$FD,$95,$10,$60,$00,$01,$01,$01,$02,$04,$08,$0A
       .byte $00,$FC,$04,$F9,$07,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$01,$01,$01
       .byte $00,$FF,$FF,$FF,$FF,$FE,$FE,$FE,$FF,$FF,$FF,$FF,$00,$00,$10,$08
       .byte $1D,$F7,$26,$F7,$33,$F7,$46,$F7,$01,$14,$81,$02,$C2,$04,$81,$01
       .byte $00,$01,$14,$81,$12,$01,$18,$C2,$0A,$01,$0A,$81,$10,$00,$01,$0A
       .byte $C2,$0A,$01,$06,$81,$08,$01,$08,$81,$12,$C2,$0A,$01,$08,$81,$0A
       .byte $00,$01,$0A,$81,$08,$C2,$0F,$01,$08,$C2,$0A,$81,$0A,$01,$0A,$81
       .byte $14,$C2,$0C,$00,$A0,$E0,$A0,$80,$08,$10,$20,$01,$02,$04,$10,$15
       .byte $17,$A0,$F7,$70,$F7,$80,$F7,$70,$F7,$90,$F7,$18,$D4,$3C,$D4,$7E
       .byte $D4,$FF,$D4,$FF,$D4,$18,$24,$18,$24,$18,$24,$18,$46,$3C,$46,$7E
       .byte $46,$FF,$46,$7A,$0C,$6A,$0C,$6E,$0C,$6E,$0C,$78,$86,$FC,$84,$96
       .byte $84,$7A,$82,$3E,$82,$33,$2C,$1F,$82,$12,$82,$3C,$88,$7E,$86,$CB
       .byte $84,$9D,$82,$FF,$82,$C3,$2C,$FF,$82,$42,$82,$FC,$FD,$FE,$FF,$00
       .byte $00,$00,$01,$02,$03,$04,$0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22
       .byte $EE,$22,$EE,$88,$EE,$EE,$22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE
       .byte $88,$EE,$22,$EE,$EE,$88,$EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA
       .byte $EE,$AA,$EE,$EE,$AA,$EE,$22,$EE,$F2,$24,$66,$12,$C4,$E6,$42,$84
       .byte $00,$0C,$0C,$0A,$0E,$0F,$0F,$00,$F0,$00,$00
