; Disassembly of roms/Air-Sea Battle (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Air-Sea Battle (32 in 1) (PAL).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF1     =  $0E
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       LDA    #$0A    
       STA    REFP1   
       STA    CTRLPF  
       STA    $97     
LF012: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       INC    $80     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$30    
       STA    TIM64T  
       LDX    #$FF    
       TXS            
       JSR    LF17A   
       LDA    #$84    
       STA    $81     
LF03B: LDA    INTIM   
       BNE    LF03B   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
LF046: STA    WSYNC   
       STA    HMCLR   
       INC    $81     
       STA    WSYNC   
       LDA    $81     
       CMP    $84     
       BCC    LF046   
       CMP    #$87    
       BCS    LF0A7   
LF058: STA    WSYNC   
       LDA    $85     
       STA    PF1     
       LDY    $8F     
       LDA    LF665,Y 
       AND    #$F0    
       STA    $85     
       LDY    $8D     
       LDA    LF665,Y 
       AND    #$0F    
       ORA    $85     
       STA    $85     
       LDA    $86     
       STA    PF1     
       LDY    $90     
       LDA    LF665,Y 
       AND    #$F0    
       STA    $86     
       LDY    $8E     
       LDA    LF665,Y 
       AND    $9B     
       ORA    $86     
       STA    $86     
       STA    WSYNC   
       INC    $81     
       LDA    $81     
       CMP    #$8B    
       BCS    LF0A7   
       LDA    $85     
       STA    PF1     
       INC    $8D     
       INC    $8F     
       INC    $8E     
       INC    $90     
       LDA    $86     
       STA    PF1     
       JMP    LF058   
LF0A7: LDX    #$00    
       STX    PF1     
       STX    $B1     
LF0AD: LDA    $B2,X   
       STA    NUSIZ0  
       STA    REFP0   
       LDA    VSYNC   
       LSR            
       LSR            
       ORA    VBLANK  
       STA    $D9,X   
       LDA    $E2,X   
       STA    COLUP0  
       STA    COLUP1  
       LDA    $EC,X   
       STA    COLUBK  
       LDA    #$03    
       STA    $88     
       STA    WSYNC   
       LDA    $C6,X   
       STA    HMP0    
       LDA    $C6,X   
       AND    #$0F    
       TAY            
LF0D4: DEY            
       BPL    LF0D4   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       BMI    LF0E1   
LF0DF: STA    WSYNC   
LF0E1: TXA            
       LDX    #$1E    
       TXS            
       TAX            
       SEC            
       LDA    $81     
       SBC    $94     
       AND    $AC     
       PHP            
       SEC            
       LDA    $81     
       SBC    $93     
       AND    $AB     
       STA    $87     
       LDA    $D0,X   
       BPL    LF104   
       ASL            
       BPL    LF102   
       LDA    #$00    
       BEQ    LF10A   
LF102: LDA    $9E     
LF104: ORA    $B1     
       TAY            
       LDA    LF697,Y 
LF10A: INC    $81     
       STA    WSYNC   
       STA    GRP0    
       LDA    $87     
       PHP            
       INC    $B1     
       LDA    $B1     
       AND    #$07    
       BNE    LF0DF   
       DEC    $B1     
       DEC    $88     
       BPL    LF0DF   
       STA    $B1     
       INX            
       CPX    #$09    
       BCC    LF0AD   
       STA    HMP0    
       STA    WSYNC   
       LDA    $C6,X   
       STA    HMP1    
       LDA    $C6,X   
       AND    #$0F    
       TAY            
LF135: DEY            
       BPL    LF135   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDA    $EB     
       STA    COLUP1  
       BIT    $9A     
       BMI    LF16F   
       LDY    $A3     
       LDX    $A4     
LF150: STA    WSYNC   
       LDA    LF71E,Y 
       STA    GRP0    
       LDA    LF71E,X 
       STA    GRP1    
       STA    WSYNC   
       INY            
       INX            
       INC    $81     
       TXA            
       AND    #$07    
       BNE    LF150   
       STA    GRP0    
       STA    GRP1    
       LDA    $F5     
       STA    COLUBK  
LF16F: STA    WSYNC   
       STA    WSYNC   
       INC    $81     
       BNE    LF16F   
       JMP    LF012   
LF17A: LDA    $97     
       CMP    #$0A    
       BEQ    LF1DA   
       LDA    SWCHB   
       ROR            
       BCS    LF1A3   
       LDA    #$FF    
       STA    $97     
       LDA    #$00    
       STA    $8B     
       STA    $8C     
       STA    $83     
       LDA    #$80    
       STA    $82     
       LDA    $80     
       AND    #$01    
       STA    $80     
       LDA    #$0F    
       STA    $9B     
       JMP    LF233   
LF1A3: LDY    #$85    
       LDA    $82     
       AND    $97     
       CMP    #$F0    
       BCC    LF1B5   
       LDA    $80     
       AND    #$30    
       BNE    LF1B5   
       LDY    #$8B    
LF1B5: STY    $84     
       LDA    $80     
       AND    #$3F    
       BNE    LF1C5   
       STA    $83     
       INC    $82     
       BNE    LF1C5   
       STA    $97     
LF1C5: LDA    SWCHB   
       AND    #$02    
       BEQ    LF1D0   
       STA    $83     
       BNE    LF249   
LF1D0: BIT    $83     
       BMI    LF249   
       LDA    #$FF    
       STA    $83     
       INC    $98     
LF1DA: LDA    $99     
       STA    $8B     
       LDX    #$00    
       STX    $8C     
       STX    $9B     
       STX    $97     
       STX    $80     
       LDA    $98     
       CMP    #$1B    
       BCC    LF1F2   
       STX    $8B     
       STX    $98     
LF1F2: LDY    #$FF    
       JSR    LF792   
       LDA    $8B     
       STA    $99     
       LDX    #$08    
       LDA    #$FE    
LF1FF: STA    $D0,X   
       DEX            
       BPL    LF1FF   
       LDX    $98     
       LDA    LF602,X 
       STA    $9A     
       BMI    LF217   
       LDY    #$01    
       AND    #$0A    
       BEQ    LF227   
       LDA    #$C0    
       BNE    LF227   
LF217: ROL            
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
       LDA    LF61D,Y 
       CPX    #$18    
       BCC    LF227   
       AND    #$E7    
LF227: STA    $A0     
       LDA    LF621,Y 
       STA    $A1     
       LDA    LF625,Y 
       STA    $A2     
LF233: LDA    #$E2    
       STA    $CE     
       STA    RESMP0  
       STA    RESMP1  
       LDA    #$08    
       STA    $CF     
       LDA    #$20    
       STA    $C4     
       LDA    #$78    
       STA    $C5     
       BNE    LF267   
LF249: LDX    #$01    
LF24B: LDA    VSYNC,X 
       AND    LF748,X 
       BEQ    LF264   
       LDY    #$FF    
LF254: INY            
       CPY    #$08    
       BCS    LF264   
       LDA.wy $00DA,Y 
       AND    LF746,X 
       BEQ    LF254   
       JSR    LF792   
LF264: DEX            
       BPL    LF24B   
LF267: STA    CXCLR   
       LDA    $9A     
       AND    #$10    
       TAY            
       LDA    #$F0    
       CPY    #$00    
       BNE    LF279   
       LDA    SWCHA   
       AND    #$F0    
LF279: LSR            
       LSR            
       LSR            
       LSR            
       STA    $A5     
       LDA    SWCHA   
       AND    #$0F    
       STA    $A6     
       LDA    $80     
       AND    #$01    
       TAX            
       LDY    #$10    
       LDA    SWCHB   
       AND    LF748,X 
       BNE    LF297   
       LDY    #$20    
LF297: STY    $BA,X   
       STY    NUSIZ0,X
       LDA    $9A     
       BPL    LF2A7   
       AND    #$01    
       BNE    LF2A7   
       LDA    $93,X   
       BNE    LF30C   
LF2A7: LDA    $A5,X   
       AND    #$03    
       TAY            
       LDA    LF653,Y 
       STA    $9C,X   
       CLC            
       ADC    #$40    
       TAY            
       LDA    #$08    
       BIT    $9A     
       BNE    LF2C8   
       BVC    LF303   
       TXA            
       BNE    LF2C6   
       LDA    $9A     
       AND    #$20    
       BNE    LF30C   
LF2C6: STY    $9C,X   
LF2C8: BIT    $9A     
       BMI    LF30C   
       LDA    $A5,X   
       AND    #$08    
       BEQ    LF2E7   
       LDA    $A5,X   
       AND    #$04    
       BNE    LF2FB   
       SEC            
       LDA    $C4,X   
       SBC    #$02    
       CMP    LF74A,X 
       BCS    LF2F4   
       LDA    LF74A,X 
       BNE    LF2F4   
LF2E7: CLC            
       LDA    $C4,X   
       ADC    #$02    
       CMP    LF74C,X 
       BCC    LF2F4   
       LDA    LF74C,X 
LF2F4: STA    $C4,X   
       JSR    LF74E   
       STA    $CE,X   
LF2FB: LDA    $9A     
       AND    #$0C    
       CMP    #$04    
       BEQ    LF309   
LF303: LDA    $A5,X   
       AND    #$03    
       ASL            
       ASL            
LF309: ASL            
       STA    $A3,X   
LF30C: LDA    $9A     
       AND    #$01    
       BEQ    LF316   
       LDA    $A5,X   
       STA    $A7,X   
LF316: LDA    $93,X   
       BNE    LF370   
       BIT    $97     
       BPL    LF32B   
       LDA    INPT4,X 
       BPL    LF32E   
       LDA    $9A     
       AND    #$10    
       BEQ    LF32B   
       TXA            
       BEQ    LF32E   
LF32B: JMP    LF3F8   
LF32E: LDA    $9A     
       AND    #$20    
       TAY            
       LDA    #$F0    
       BIT    $9A     
       BPL    LF349   
       LDA    LF629,X 
       BVC    LF349   
       CPX    #$00    
       BNE    LF346   
       CPY    #$00    
       BNE    LF349   
LF346: CLC            
       ADC    #$40    
LF349: STA    $93,X   
       LDA    #$00    
       STA    RESMP0,X
       LDA    $A5,X   
       STA    $A7,X   
       LDA    #$1F    
       STA    $AD,X   
       LDA    #$FF    
       STA    $AB,X   
       LDA    $C4,X   
       STA    $A9,X   
       BIT    $9A     
       BVC    LF370   
       TXA            
       BNE    LF36C   
       LDA    $9A     
       AND    #$20    
       BNE    LF370   
LF36C: LDA    #$FC    
       STA    $AB,X   
LF370: LDA    $A1,X   
       BMI    LF37A   
       TAY            
       LDA.wy $00D0,Y 
       BMI    LF3EC   
LF37A: LDA    $A9,X   
       STA    $87     
       LDY    #$02    
       BIT    $9A     
       BMI    LF38D   
       BVC    LF394   
       LDA    $9A     
       AND    #$01    
       TAY            
       BEQ    LF3AE   
LF38D: LDA    $C4,X   
       STA    $87     
       JMP    LF3AE   
LF394: LDA    $A7,X   
       AND    #$03    
       TAY            
       LDA    LF73E,Y 
       CPX    #$00    
       BEQ    LF3A5   
       CLC            
       EOR    #$FF    
       ADC    #$01    
LF3A5: CLC            
       ADC    $A9,X   
       STA    $87     
       CMP    #$97    
       BCS    LF3EC   
LF3AE: SEC            
       LDA    $A9,X   
       SBC    $87     
       CMP    #$FC    
       BCS    LF3BB   
       CMP    #$05    
       BCS    LF3EC   
LF3BB: ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM0,X  
       LDA    $87     
       STA    $A9,X   
       LDA    #$20    
       BIT    $9A     
       BPL    LF3E0   
       BVC    LF3D2   
       BEQ    LF3E0   
       TXA            
       BNE    LF3E0   
LF3D2: CLC            
       LDA    LF742,Y 
       ADC    $93,X   
       STA    $93,X   
       CMP    #$E0    
       BCS    LF3EC   
       BCC    LF3F8   
LF3E0: SEC            
       LDA    $93,X   
       SBC    LF742,Y 
       STA    $93,X   
       CMP    #$8B    
       BCS    LF3F8   
LF3EC: LDA    #$02    
       STA    RESMP0,X
       LDA    #$00    
       STA    $93,X   
       LDA    #$FF    
       STA    $AD,X   
LF3F8: JSR    LF783   
       TXA            
       BNE    LF411   
       LDA    $95     
       STA    $96     
       LDY    #$05    
LF404: LDA.wy $00D0,Y 
       CMP    #$E0    
       ROR            
       BPL    LF40F   
       DEY            
       BPL    LF404   
LF40F: STA    $9F     
LF411: LDA    LF748,X 
       STA    $89     
       TXA            
       ORA    #$06    
       TAX            
LF41A: LDA    $B2,X   
       AND    #$0F    
       ORA    $BA     
       STA    $B2,X   
       ROR            
       LDA    #$8C    
       BCS    LF429   
       LDA    #$95    
LF429: STA    $88     
       LDY    #$01    
       CPX    $A2     
       BEQ    LF437   
       DEY            
       CPX    $A1     
       BEQ    LF437   
       DEY            
LF437: STY    $8A     
       LDA    $D0,X   
       BMI    LF440   
       JMP    LF4E1   
LF440: CMP    #$E1    
       BCS    LF446   
       INC    $D0,X   
LF446: LDA    #$04    
       BIT    $9A     
       BPL    LF44E   
       BNE    LF456   
LF44E: BIT    $9F     
       BMI    LF45D   
       CPX    #$06    
       BCC    LF45A   
LF456: INC    $D0,X   
       BPL    LF45D   
LF45A: JMP    LF552   
LF45D: LDA    $BA     
       STA    $B2,X   
       LDA    $9A     
       AND    #$02    
       BNE    LF46B   
       LDA    $95     
       STA    $96     
LF46B: LDA    $A0     
       AND    $89     
       BNE    LF4B2   
       LDY    $8A     
       BMI    LF47D   
       LDA.wy $009C,Y 
       AND    #$40    
       JMP    LF4BD   
LF47D: LDA    $9A     
       AND    #$0C    
       TAY            
       CMP    #$08    
       BNE    LF493   
       LDA    $96     
       AND    #$18    
       CLC            
       ADC    #$28    
       CMP    #$40    
       BCC    LF4BD   
       BCS    LF4B2   
LF493: BIT    $9A     
       BMI    LF49F   
       CPX    #$06    
       BCC    LF49F   
       LDA    #$20    
       BNE    LF4B6   
LF49F: LDA    $98     
       CMP    #$18    
       BCC    LF4A9   
       LDA    #$68    
       BNE    LF4BD   
LF4A9: LDA    $95     
       LSR            
       LDA    $96     
       AND    #$18    
       BCS    LF4B6   
LF4B2: LDA    #$C0    
       BNE    LF4BD   
LF4B6: CPY    #$00    
       BEQ    LF4BD   
       CLC            
       ADC    #$40    
LF4BD: STA    $D0,X   
       AND    #$08    
       BNE    LF4C9   
       LDA    #$05    
       ORA    $BA     
       STA    $B2,X   
LF4C9: LDY    #$00    
       LDA    $96     
       AND    #$04    
       BEQ    LF4DA   
       ASL            
       ORA    $B2,X   
       STA    $B2,X   
       LDA    #$8D    
       LDY    #$A9    
LF4DA: STA    $BC,X   
       STY    $C6,X   
       JMP    LF552   
LF4E1: LDY    $8A     
       BMI    LF4E8   
       LDA.wy $009C,Y 
LF4E8: LDY    #$02    
       STY    $87     
       AND    #$30    
       BEQ    LF4FC   
       DEC    $87     
       CMP    #$20    
       BCC    LF4FC   
       LDA    $80     
       AND    #$02    
       BNE    LF552   
LF4FC: LDA    $9A     
       AND    #$0C    
       TAY            
       CMP    #$08    
       BNE    LF515   
       LDA    $80     
       AND    #$7C    
       BNE    LF515   
       BIT    $95     
       BVC    LF515   
       LDA    $B2,X   
       EOR    #$08    
       STA    $B2,X   
LF515: LDA    $B2,X   
       AND    #$08    
       BEQ    LF526   
       LDA    $BC,X   
       SEC            
       SBC    $87     
       BCS    LF53F   
       LDA    $88     
       BNE    LF531   
LF526: CLC            
       LDA    $BC,X   
       ADC    $87     
       CMP    $88     
       BCC    LF53F   
       LDA    #$00    
LF531: CPY    #$04    
       BNE    LF53F   
       BIT    $9A     
       BMI    LF53F   
       LDA    #$C0    
       STA    $D0,X   
       BNE    LF552   
LF53F: STA    $BC,X   
       JSR    LF74E   
       STA    $C6,X   
       LDY    $8A     
       BMI    LF552   
       STA.wy $00CE,Y 
       LDA    $BC,X   
       STA.wy $00C4,Y 
LF552: DEX            
       DEX            
       BMI    LF560   
       LSR    $89     
       LSR    $89     
       JSR    LF783   
       JMP    LF41A   
LF560: LDX    #$01    
LF562: STX    $87     
       LDA    $9A     
       AND    #$0C    
       LSR            
       ORA    $87     
       TAY            
       LDA    #$00    
       STA    AUDV0,X 
       STA    $85,X   
       LDA    $AD,X   
       BMI    LF583   
       STA    AUDF0,X 
       LDA    LF717,Y 
       STA    AUDC0,X 
       LDA    #$08    
       STA    AUDV0,X 
       DEC    $AD,X   
LF583: LDA    $AF,X   
       BMI    LF596   
       EOR    #$1F    
       STA    AUDF0,X 
       LDA    LF718,Y 
       STA    AUDC0,X 
       LDA    #$08    
       STA    AUDV0,X 
       DEC    $AF,X   
LF596: LDA    $8B,X   
       AND    #$0F    
       STA    $87     
       ASL            
       ASL            
       CLC            
       ADC    $87     
       STA    $8D,X   
       LDA    $8B,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $87     
       LSR            
       LSR            
       CLC            
       ADC    $87     
       STA    $8F,X   
       DEX            
       BPL    LF562   
       LDA    $97     
       EOR    #$FF    
       AND    $82     
       STA    $8A     
       LDA    #$0F    
       STA    $89     
       LDX    #$09    
       LDY    #$09    
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF5D2   
       LDA    #$FF    
       STA    $89     
       LDY    #$13    
LF5D2: LDA    LF63F,Y 
       EOR    $8A     
       AND    $89     
       STA    $E2,X   
       DEY            
       DEX            
       BPL    LF5D2   
       LDX    #$09    
       LDY    #$09    
       BIT    $9A     
       BPL    LF5E9   
       LDY    #$13    
LF5E9: LDA    LF62B,Y 
       EOR    $8A     
       AND    $89     
       STA    $EC,X   
       DEY            
       DEX            
       BPL    LF5E9   
       STA    COLUBK  
       LDA    $80     
       AND    #$04    
       ASL            
       ORA    #$70    
       STA    $9E     
       RTS            

LF602: .byte $02,$03,$12,$00,$01,$10,$46,$47,$56,$44,$45,$54,$08,$09,$18,$C0
       .byte $C1,$D0,$84,$85,$94,$E4,$E5,$F4,$E4,$E5,$F4
LF61D: .byte $0C,$00,$30,$7E
LF621: .byte $00,$FF,$06,$00
LF625: .byte $01,$FF,$07,$07
LF629: .byte $90,$98
LF62B: .byte $B0,$B2,$B2,$B4,$B6,$B8,$BA,$BC,$BE,$28,$B2,$B2,$B2,$B2,$B6,$B8
       .byte $BA,$BC,$BE,$28
LF63F: .byte $0C,$06,$0A,$0C,$0E,$00,$06,$00,$08,$06,$A8,$38,$16,$CC,$9C,$66
       .byte $A6,$38,$A8,$38
LF653: .byte $20,$20,$00,$10
LF657: .byte $03,$04,$01,$02,$00,$03,$01,$02,$03,$04,$01,$02,$00,$00
LF665: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF697: .byte $00,$80,$86,$FF,$FF,$38,$30,$00,$00,$BE,$88,$FF,$FF,$08,$3E,$00
       .byte $00,$80,$C0,$FE,$0F,$18,$30,$00,$1F,$84,$CF,$7D,$0D,$0F,$00,$00
       .byte $7E,$C3,$DB,$C3,$DB,$7E,$18,$00,$00,$00,$08,$44,$3A,$7C,$46,$00
       .byte $7E,$DB,$FF,$E7,$BD,$81,$FF,$00,$00,$00,$0C,$0B,$44,$FE,$7E,$00
       .byte $00,$10,$38,$FF,$FE,$7E,$00,$00,$00,$10,$54,$7F,$FE,$FC,$3C,$00
       .byte $10,$10,$36,$FF,$7E,$3C,$00,$00,$28,$28,$28,$AB,$FF,$7E,$7C,$00
       .byte $2A,$1C,$1C,$2A,$08,$30,$C0,$00,$18,$5A,$3C,$FF,$3C,$5A,$18,$00
       .byte $18,$24,$42,$81,$42,$24,$18,$00,$42,$81,$99,$24,$99,$81,$42,$00
LF717: .byte $08
LF718: .byte $09,$04,$0C,$03,$01,$08
LF71E: .byte $1C,$1C,$38,$38,$70,$70,$FF,$FF,$70,$70,$70,$70,$70,$70,$FF,$FF
       .byte $00,$01,$07,$1E,$3C,$70,$FF,$FF,$1C,$1C,$38,$38,$70,$70,$FF,$FF
LF73E: .byte $01,$00,$02,$01
LF742: .byte $02,$02,$01,$02
LF746: .byte $10,$80
LF748: .byte $40,$80
LF74A: .byte $02,$4D
LF74C: .byte $45,$90
LF74E: STA    $87     
       BPL    LF75A   
       CMP    #$9E    
       BCC    LF75A   
       LDA    #$00    
       STA    $87     
LF75A: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $87     
       AND    #$0F    
       STY    $87     
       CLC            
       ADC    $87     
       CMP    #$0F    
       BCC    LF76F   
       SBC    #$0F    
       INY            
LF76F: CMP    #$08    
       EOR    #$0F    
       BCS    LF778   
       ADC    #$01    
       DEY            
LF778: INY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $87     
       TYA            
       ORA    $87     
       RTS            

LF783: LSR    $95     
       ROL            
       EOR    $95     
       LSR            
       LDA    $95     
       BCS    LF791   
       ORA    #$40    
       STA    $95     
LF791: RTS            

LF792: STY    $87     
       LDY    #$02    
       LDA    $87     
       BMI    LF7C5   
       CMP    $A1,X   
       BEQ    LF7F8   
       TXA            
       EOR    #$01    
       TAY            
       LDA    $87     
       CMP.wy $00A1,Y 
       BNE    LF7B3   
       LDA    $9A     
       AND    #$20    
       BEQ    LF7F8   
       LDY    #$02    
       BNE    LF7C5   
LF7B3: LDY    $87     
       LDA.wy $00D0,Y 
       BMI    LF7F8   
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $9A     
       AND    #$02    
       BEQ    LF7C5   
       TAY            
LF7C5: LDA    LF657,Y 
       SED            
       CLC            
       ADC    $8B,X   
       STA    $8B,X   
       CLD            
       BCS    LF7D5   
       CMP    #$99    
       BNE    LF7E1   
LF7D5: LDA    #$00    
       STA    $97     
       STA    $82     
       STA    $80     
       LDA    #$99    
       STA    $8B,X   
LF7E1: LDY    $87     
       LDA    #$1F    
       STA    $AF,X   
       CPY    #$08    
       BCS    LF7F0   
       LDA    #$A0    
       STA.wy $00D0,Y 
LF7F0: LDA    #$00    
       STA    $93,X   
       LDA    #$02    
       STA    RESMP0,X
LF7F8: LDY    $87     
       RTS            

LF7FB: .byte $EA,$00,$F0,$00,$F0
