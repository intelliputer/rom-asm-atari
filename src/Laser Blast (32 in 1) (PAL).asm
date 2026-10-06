; Disassembly of roms/Laser Blast (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Laser Blast (32 in 1) (PAL).bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
RESMP0  =  $28
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
LF004: LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       JSR    LF67A   
LF00F: LDX    #$05    
LF011: LDA    LF7A5,X 
       EOR    $86     
       AND    $87     
       STA    $88,X   
       CPX    #$04    
       BCS    LF020   
       STA    COLUP0,X
LF020: DEX            
       BPL    LF011   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$34    
       STA    CTRLPF  
LF02D: LDA    INTIM   
       BNE    LF02D   
       STA    WSYNC   
       STA    VBLANK  
       STA    COLUPF  
       STA    CXCLR   
       STA    HMCLR   
       STA    $9F     
       LDA    #$07    
       STA    $FB     
       STA    VDELP0  
       STA    VDELP1  
LF046: LDY    $FB     
       LDA    ($E1),Y 
       STA    $FA     
       LDA    ($DF),Y 
       TAX            
       LDA    ($D7),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($D9),Y 
       STA    GRP1    
       LDA    ($DB),Y 
       STA    GRP0    
       LDA    ($DD),Y 
       LDY    $FA     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $FB     
       BPL    LF046   
       LDA    #$80    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       LDA    $8C     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    $A3     
       BPL    LF092   
       LDX    #$00    
LF092: LDA    LF7F4,X 
       STA    NUSIZ0  
       STA    $FA     
       LDA    LF7F3,X 
       STA    NUSIZ1  
       STA    $FB     
       LDY    #$07    
LF0A2: STA    WSYNC   
       LDA    LF784,Y 
       BIT    $FA     
       BMI    LF0AD   
       STA    GRP0    
LF0AD: BIT    $FB     
       BMI    LF0B3   
       STA    GRP1    
LF0B3: DEY            
       BNE    LF0A2   
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDA    $F8     
       AND    $87     
       STA    COLUP1  
       LDA    $EA     
       BIT    $F1     
       BMI    LF0CA   
       LDA    $8C     
LF0CA: AND    $87     
       STA    COLUP0  
       STA    WSYNC   
       STY    $93     
       STY    $94     
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDY    #$02    
       STY    RESMP0  
       STY    ENABL   
       LDA    $F7     
       AND    #$0F    
       BNE    LF0E6   
       LDY    #$00    
LF0E6: STY    ENAM0   
       LDY    #$02    
       LDA    $F8     
       AND    #$0F    
       BNE    LF0F2   
       LDY    #$00    
LF0F2: STY    $9E     
       LDA    $F7     
       AND    $87     
       STA    $FC     
       LDA    $8F     
       LDX    #$00    
       JSR    LF699   
       LDX    #$03    
       LDA    $9D     
       CLC            
       ADC    #$04    
       JSR    LF699   
       LDA    $A4     
       AND    #$01    
       ASL            
       ASL            
       ASL            
       ADC    #$95    
       STA    $E7     
       SEC            
       LDA    $9B     
       SBC    $9C     
       ASL            
       ASL            
       CLC            
       ADC    $A4     
       LDX    $90     
       CLC            
       ADC    LF6D5,X 
       TAY            
       LDA    LF7D6,X 
       CPY    #$60    
       BCC    LF130   
       AND    #$F2    
LF130: CPY    #$80    
       BCC    LF136   
       AND    #$F0    
LF136: STA    $91     
       TYA            
       CMP    #$A0    
       BCC    LF13F   
       LDA    #$00    
LF13F: STA    $FB     
       LDX    #$01    
       JSR    LF699   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $FB     
       CMP    #$86    
       BCS    LF152   
       STA    WSYNC   
LF152: DEX            
       STX    $FA     
       LDA    $9E     
       STA    ENAM1   
       STA    WSYNC   
       LDA    $F1     
       AND    #$02    
       LSR            
       EOR    #$01    
       ORA    #$8A    
       TAX            
LF165: CLC            
       LDA    $94     
       ADC    $96     
       STA    $94     
       STA    HMCLR   
       BCC    LF174   
       LDA    $98     
       STA    HMM1    
LF174: TXA            
       SEC            
       SBC    $8E     
       BCC    LF18C   
       TAY            
       AND    #$F8    
       BEQ    LF181   
       LDY    #$07    
LF181: STA    WSYNC   
       STA    HMOVE   
       LDA    ($E3),Y 
       STA    GRP0    
       DEX            
       BNE    LF165   
LF18C: LDA    #$00    
       STA    RESMP0  
       LDY    $EF     
LF192: STA    WSYNC   
       STA    HMOVE   
       DEY            
       BNE    LF1A2   
       STY    GRP0    
       LDA    $FC     
       STA    COLUP0  
       JMP    LF1AA   
LF1A2: BIT    NUSIZ0  
       BVC    LF1AA   
       LDA    #$00    
       STA    ENAM0   
LF1AA: CLC            
       LDA    $94     
       ADC    $96     
       STA    $94     
       STA    HMCLR   
       BCC    LF1B9   
       LDA    $98     
       STA    HMM1    
LF1B9: CLC            
       LDA    $93     
       ADC    $95     
       STA    $93     
       BCC    LF1CA   
       LDA    $97     
       STA    HMM0    
       STA    HMP0    
       INC    $9F     
LF1CA: DEX            
       BNE    LF192   
       LDY    #$07    
LF1CF: STA    WSYNC   
       STA    HMOVE   
       LDA    #$10    
       STA    NUSIZ1  
       LDA    $F3     
       STA    ENAM1   
       LDA    $8D     
       STA    COLUP1  
       CLC            
       LDA    $93     
       ADC    $95     
       STA    $93     
       STA    HMCLR   
       BCC    LF1F0   
       LDA    $97     
       STA    HMM0    
       STA    HMP0    
LF1F0: CLC            
       LDA    $94     
       ADC    $96     
       STA    $94     
       BCC    LF1FD   
       LDA    $98     
       STA    HMM1    
LF1FD: DEY            
       BPL    LF1CF   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$3C    
       STA    GRP1    
       STX    ENAM0   
       STX    ENAM1   
       LDA    $8A     
       STA    COLUPF  
       LDA    $91     
       STA    NUSIZ1  
       LDA    $88     
       STA    COLUP0  
       LDA    #$30    
       STA    CTRLPF  
       BIT    NUSIZ0  
       BVC    LF224   
       LDA    #$58    
       STA    $E5     
LF224: LDY    #$07    
LF226: LDA    ($E7),Y 
       TAX            
       LDA    ($E5),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    GRP1    
       LDA.wy $00A7,Y 
       STA    PF0     
       LDA.wy $00AF,Y 
       STA    PF1     
       LDA.wy $00B7,Y 
       STA    PF2     
       LDA.wy $00BF,Y 
       STA    PF0     
       LDA.wy $00C7,Y 
       STA    PF1     
       LDA.wy $00CF,Y 
       STA    PF2     
       STA    HMCLR   
       DEY            
       BPL    LF226   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F1     
       AND    #$02    
       LSR            
       ORA    #$06    
       TAX            
LF262: STA    WSYNC   
       STA    HMOVE   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       DEX            
       BPL    LF262   
       STA    WSYNC   
       STA    HMOVE   
       STA    RESBL   
       INX            
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    COLUPF  
       INX            
       STX    NUSIZ0  
       STA    RESP0   
       STA    RESP1   
       STX    NUSIZ1  
       LDA    #$30    
       STA    HMCLR   
       STA    HMBL    
       LSR            
       STA    HMP1    
       LDA    $88     
       STA    COLUP1  
       LDX    #$07    
LF296: STA    WSYNC   
       STA    HMOVE   
       LDA    LF6E0,X 
       STA    GRP0    
       LDA    LF6E8,X 
       STA    GRP1    
       NOP            
       LDA    LF6F8,X 
       TAY            
       LDA    LF6F0,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF296   
       LDA    #$3B    
       STA    TIM64T  
       LDA    $F1     
       CMP    #$01    
       BNE    LF2C9   
       JSR    LF7C9   
       DEC    $A3     
       BPL    LF2C9   
       INC    $EB     
LF2C9: LDX    #$02    
LF2CB: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $EC,X   
       AND    #$F0    
       LSR            
       STA.wy $00D7,Y 
       LDA    $EC,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00D9,Y 
       DEX            
       BPL    LF2CB   
       LDX    #$01    
LF2E6: LDA    $F7,X   
       AND    #$0F    
       BEQ    LF2EE   
       DEC    $F7,X   
LF2EE: LDA    $F4,X   
       BEQ    LF2F4   
       DEC    $F4,X   
LF2F4: LDA    $F1,X   
       BEQ    LF2FC   
       BMI    LF2FC   
       DEC    $F1,X   
LF2FC: LDA    $F7,X   
       AND    #$0F    
       STA    AUDV0,X 
       CPX    #$00    
       BNE    LF315   
       TAY            
       BNE    LF30D   
       LDA    #$58    
       BNE    LF312   
LF30D: AND    #$0C    
       ASL            
       ADC    #$5D    
LF312: STA    $E5     
       TYA            
LF315: EOR    #$0F    
       ADC    LF7FE,X 
       STA    AUDF0,X 
       LDA    #$0F    
       STA    AUDC0,X 
       DEX            
       BPL    LF2E6   
       LDA    $F6     
       BEQ    LF337   
       DEC    $F6     
       LDA    $F6     
       AND    #$03    
       BNE    LF36E   
       LDA    #$0C    
       STA    AUDV0   
       STA    AUDC0   
       BNE    LF36C   
LF337: LDA    $F2     
       BNE    LF35A   
       LDA    $F1     
       BEQ    LF36E   
       BPL    LF35A   
       LDY    #$02    
       STY    AUDV0   
       LDA    #$04    
       STA    AUDC0   
       LDA    $EA     
       LSR            
       PHP            
       SEC            
       LDA    #$82    
       SBC    $8E     
       LSR            
       LSR            
       LSR            
       PLP            
       ADC    #$0F    
       BNE    LF36C   
LF35A: LSR            
       STA    $FA     
       STA    AUDV0   
       AND    #$03    
       ORA    #$08    
       STA    AUDC0   
       LDA    #$10    
       SEC            
       SBC    $FA     
       ORA    #$10    
LF36C: STA    AUDF0   
LF36E: INX            
LF36F: LDA    $D7,X   
       CMP    #$00    
       BNE    LF37F   
       LDA    #$58    
       STA    $D7,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LF36F   
LF37F: LDA    #$58    
       LDY    $EB     
       BNE    LF39B   
       LDA    $EA     
       LSR            
       BCS    LF39D   
       INC    $92     
       LDA    $92     
       CMP    #$03    
       BCC    LF396   
       LDA    #$00    
       STA    $92     
LF396: ASL            
       ASL            
       ASL            
       ADC    #$7D    
LF39B: STA    $E3     
LF39D: LDA    INTIM   
       BNE    LF39D   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $EA     
       BNE    LF3BD   
       INC    $E9     
       BNE    LF3BD   
       SEC            
       ROR    $E9     
LF3BD: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF3C8   
       LDY    #$0F    
LF3C8: TYA            
       LDY    #$00    
       BIT    $E9     
       BPL    LF3D3   
       AND    #$F7    
       LDY    $E9     
LF3D3: STY    $86     
       ASL    $86     
       STA    $87     
       LDA    #$46    
       STA    WSYNC   
       STA    TIM64T  
       LDA    $81     
       BEQ    LF3FE   
       LDA    SWCHB   
       LSR            
       BCS    LF3EF   
LF3EA: LDX    #$E9    
       JMP    LF004   
LF3EF: LDY    #$00    
       LSR            
       BCS    LF418   
       LDA    $82     
       BEQ    LF3FC   
       DEC    $82     
       BPL    LF41A   
LF3FC: INC    $80     
LF3FE: LDA    $80     
       AND    #$03    
       STA    $80     
       TAY            
       INY            
       STY    $EE     
       LDA    #$00    
       STA    $F1     
       STA    $E9     
       STA    $EC     
       STA    $ED     
       LDY    #$1E    
       STY    $EB     
       STY    $81     
LF418: STY    $82     
LF41A: LDA    SWCHA   
       TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $84     
       INY            
       BEQ    LF42B   
       LDA    #$00    
       STA    $E9     
LF42B: LDA    $EB     
       BEQ    LF437   
       LDA    $84     
       LSR            
       BCC    LF3EA   
       JMP    LF00F   
LF437: LDA    COLUP1  
       EOR    #$80    
       ORA    $F1     
       BPL    LF442   
LF43F: JMP    LF4C7   
LF442: LDA    $A5     
       BNE    LF43F   
       LDY    $ED     
       SEC            
       LDA    $A6     
       SBC    #$3A    
       ASL            
       SED            
       LDX    #$02    
LF451: ADC    $EC,X   
       STA    $EC,X   
       LDA    #$00    
       DEX            
       BPL    LF451   
       CLD            
       BCC    LF467   
       LDA    #$AA    
       STA    $EC     
       STA    $ED     
       STA    $EE     
       STA    $EB     
LF467: LDA    #$1E    
       STA    $F2     
       TYA            
       EOR    $ED     
       AND    #$F0    
       BEQ    LF47E   
       LDA    $A3     
       CMP    #$06    
       BCS    LF47E   
       LDA    #$3F    
       STA    $F6     
       INC    $A3     
LF47E: LDA    $9F     
       BIT    $97     
       BMI    LF489   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF489: CLC            
       ADC    $8F     
       CLC            
       ADC    #$30    
       SEC            
       SBC    $A4     
       SEC            
       SBC    #$24    
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $90     
       AND    LF6DD,Y 
       STA    $90     
       BNE    LF4C7   
       STA    $9C     
       LDA    #$07    
       STA    $90     
       LDA    #$28    
       STA    $9B     
       LDA    $A6     
       CMP    #$82    
       BCS    LF4B8   
       ADC    #$08    
       STA    $A6     
LF4B8: LDX    $80     
LF4BA: LDA    $F0     
       CMP    LF6CB,X 
       BCS    LF4C7   
       INC    $F0     
       CPX    #$03    
       BEQ    LF4BA   
LF4C7: LDX    $F0     
       LDA    LF7ED,X 
       STA    $A0     
       LDA    LF6CF,X 
       STA    $A1     
       BIT    VBLANK  
       BPL    LF4DD   
       LDA    #$80    
       STA    $F1     
       STA    $F7     
LF4DD: LDY    #$3F    
       LDA    $F1     
       BEQ    LF4FE   
       STY    $F5     
       BPL    LF4F3   
       DEC    $8E     
       LDA    $8E     
       CMP    #$03    
       BCS    LF4FE   
       LDA    #$1E    
       STA    $F1     
LF4F3: AND    #$18    
       CLC            
       ADC    #$5D    
       STA    $E5     
       LDA    #$58    
       STA    $E3     
LF4FE: LDA    REFP1   
       AND    #$80    
       CMP    $83     
       STA    $83     
       BEQ    LF524   
       CMP    #$00    
       BEQ    LF524   
       LDA    $A5     
       BNE    LF524   
       LDA    $F4     
       BNE    LF524   
       LDA    #$00    
       STA    $E9     
       LDA    $F1     
       BNE    LF524   
       LDA    #$4F    
       STA    $F7     
       LDA    #$00    
       STA    $F4     
LF524: LDA    #$01    
       STA    $EF     
       LDA    $F1     
       BNE    LF555   
       LDA    $F7     
       AND    #$0F    
       BNE    LF573   
       LDY    #$00    
       LDA    REFP1   
       BMI    LF555   
       LDA    #$0A    
       STA    $EF     
       LDA    $84     
       LSR            
       LSR            
       LSR            
       BCS    LF547   
       LDY    #$10    
       LDX    #$35    
LF547: LSR            
       BCS    LF54E   
       LDY    #$F0    
       LDX    #$35    
LF54E: STY    $97     
       STX    $95     
       JMP    LF593   
LF555: LDA    $84     
       LDY    $F1     
       BEQ    LF55F   
       BPL    LF585   
       ORA    #$03    
LF55F: LSR            
       BCS    LF564   
       INC    $8E     
LF564: LSR            
       BCS    LF569   
       DEC    $8E     
LF569: LSR            
       BCS    LF56E   
       DEC    $8F     
LF56E: LSR            
       BCS    LF573   
       INC    $8F     
LF573: LDY    $F1     
       BNE    LF585   
       LDA    #$82    
       CMP    $8E     
       BCC    LF583   
       LDA    $A6     
       CMP    $8E     
       BCC    LF585   
LF583: STA    $8E     
LF585: LDA    #$85    
       CMP    $8F     
       BCC    LF591   
       LDA    #$0F    
       CMP    $8F     
       BCC    LF593   
LF591: STA    $8F     
LF593: LDA    $A5     
       BNE    LF5C4   
       BIT    $E9     
       BMI    LF5C4   
       LDA    $F5     
       BNE    LF5C4   
       LDA    $EA     
       AND    $A0     
       BNE    LF5C4   
       LDA    $A2     
       BNE    LF5C4   
LF5A9: INC    $F9     
       LDA    $F9     
       CMP    #$03    
       BCC    LF5B5   
       LDA    #$00    
       STA    $F9     
LF5B5: JSR    LF6C1   
       BEQ    LF5A9   
       LDA    $8F     
       STA    $9D     
       LDA    #$1F    
       STA    $A2     
       STA    $F3     
LF5C4: LDA    $F9     
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    $A4     
       LDY    #$F0    
       SEC            
       SBC    $9D     
       BPL    LF5DB   
       LDY    #$10    
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF5DB: STA    $FA     
       LSR            
       LSR            
       CLC            
       ADC    $FA     
       LSR    $FA     
       ADC    $FA     
       STA    $96     
       STY    $98     
       JSR    LF6C1   
       BNE    LF5F5   
       STA    $F3     
       STA    $F8     
       STA    $A2     
LF5F5: LDA    $EA     
       AND    $A1     
       BNE    LF61C   
       LDA    $F1     
       BNE    LF61C   
       LDA    $90     
       LDY    $8F     
       CPY    #$50    
       BCC    LF609   
       ORA    #$08    
LF609: TAX            
       SEC            
       TYA            
       SBC    LF7DD,X 
       SEC            
       SBC    $A4     
       BEQ    LF61C   
       BMI    LF61A   
       INC    $A4     
       INC    $A4     
LF61A: DEC    $A4     
LF61C: LDA    $A2     
       BEQ    LF62C   
       DEC    $A2     
       LDA    $A2     
       CMP    #$0F    
       BNE    LF62C   
       LDA    #$8F    
       STA    $F8     
LF62C: LDA    $9B     
       EOR    $9C     
       STA    $A5     
       BEQ    LF677   
       LDA    #$30    
       STA    $A4     
       LDY    #$00    
       STY    $F3     
       STY    $F8     
       STY    $A2     
       STY    $F4     
       LDA    $A0     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       AND    $EA     
       BNE    LF677   
       INC    $9C     
       LDA    $F1     
       BEQ    LF65A   
       LDA    $8F     
       SEC            
       SBC    #$04    
       STA    $8F     
LF65A: LDX    #$07    
LF65C: LDA    $A7,X   
       AND    #$10    
       CMP    #$10    
       ROR    $CF,X   
       ROL    $C7,X   
       ROR    $BF,X   
       LDA    $BF,X   
       AND    #$08    
       CMP    #$08    
       ROR    $B7,X   
       ROL    $AF,X   
       ROR    $A7,X   
       DEX            
       BPL    LF65C   
LF677: JMP    LF00F   
LF67A: LDX    #$11    
       LDA    #$F7    
LF67E: STA    $D7,X   
       DEX            
       DEX            
       BPL    LF67E   
       LDX    #$30    
LF686: LDY    #$07    
LF688: LDA    LF7AB,Y 
       STA    $A6,X   
       DEX            
       DEY            
       BPL    LF688   
       TXA            
       BNE    LF686   
       STX    $9C     
       JMP    LF7B3   
LF699: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $FA     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $FA     
       CMP    #$0F    
       BCC    LF6B1   
       SBC    #$0F    
       INY            
LF6B1: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF6BB: DEY            
       BPL    LF6BB   
       STA    RESP0,X 
       RTS            

LF6C1: LDX    $F9     
       LDA    LF6DD,X 
       EOR    #$07    
       AND    $90     
       RTS            

LF6CB: .byte $03,$04,$05,$05
LF6CF: .byte $0F,$07,$03,$01,$01,$01
LF6D5: .byte $00,$40,$20,$20,$00,$00,$00,$00
LF6DD: .byte $03,$05,$06
LF6E0: .byte $00,$00,$00,$00,$00,$00,$00,$00
LF6E8: .byte $00,$00,$00,$00,$00,$00,$00,$00
LF6F0: .byte $00,$00,$00,$00,$00,$00,$00,$00
LF6F8: .byte $00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C
       .byte $3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C
       .byte $3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C
       .byte $18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C
       .byte $3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$18,$00,$18,$18,$18,$18,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$04,$20,$81,$44,$00,$00,$00,$08
       .byte $20,$81,$04,$40,$00,$00,$08,$10,$42,$08,$40,$00,$00,$00,$18,$42
       .byte $08,$20,$00,$00,$00,$18,$3C,$B6,$B6,$B6,$3C,$18
LF784: .byte $00,$18,$3C,$DB,$DB,$DB,$3C,$18,$00,$18,$3C,$6D,$6D,$6D,$3C,$18
       .byte $00,$00,$42,$E7,$42,$7E,$7E,$7E,$3C,$00,$A5,$42,$A5,$7E,$7E,$7E
       .byte $3C
LF7A5: .byte $0C,$0C,$D4,$00,$1A,$06
LF7AB: .byte $FF,$FF,$DF,$8F,$07,$03,$01,$00
LF7B3: INX            
       STX    $EF     
       LDA    #$28    
       STA    $9B     
       LDA    #$58    
       STA    $E5     
       LDA    #$42    
       STA    $A6     
       LDA    #$07    
       STA    $90     
       LSR            
       STA    $A3     
LF7C9: LDA    #$0F    
       STA    $8F     
       LDA    #$82    
       STA    $8E     
       LDA    #$80    
       STA    $83     
       RTS            

LF7D6: .byte $10,$10,$10,$12,$10,$14,$12
LF7DD: .byte $16,$40,$20,$20,$00,$00,$00,$00,$00,$40,$20,$40,$00,$40,$20,$40
LF7ED: .byte $7F,$7F,$7F,$7F,$3F,$1F
LF7F3: .byte $80
LF7F4: .byte $80,$00,$00,$02,$02,$06,$06,$00,$00,$F0
LF7FE: .byte $00,$04
