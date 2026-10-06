; Disassembly of roms/Sky Jinks (4k version).bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Sky Jinks (4k version).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
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
HMBL    =  $24
VDELP0  =  $25
VDELBL  =  $27
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
       JMP    LF24C   
LF00E: LDA    LF7F7,X 
       STA    $9D     
       STA    $D3     
       LDX    #$16    
LF017: LDA    #$00    
       STA    $AD,X   
       STY    $9E,X   
       LDA    $D2     
       STA    $A7,X   
       LDA    #$4E    
       STA    $A9,X   
       DEX            
       BPL    LF017   
       STA    AUDC0   
       RTS            

LF02B: LDA    $9B     
       BEQ    LF079   
LF02F: LDA    $9B     
       BEQ    LF054   
LF033: EOR    ($87),Y 
LF035: AND    $D6     
       STA    COLUPF  
       LDA    ($85),Y 
       STA    HMBL    
       TAX            
       DEC    $A1     
       LDY    $A1     
       CPY    #$0E    
       BCS    LF092   
       LDA    ($81),Y 
       STA    GRP0    
LF04A: TYA            
       ADC    $9F     
       CMP    #$0E    
       BCS    LF02F   
       TAY            
       LDA    ($81),Y 
LF054: DEC    $A0     
       STA    HMOVE   
       BMI    LF0C9   
       STA    GRP1    
       STX    ENAM0   
       TXA            
       ASL            
       ASL            
       STA    CTRLPF  
LF063: DEC    $A1     
       LDY    $A1     
       CPY    #$0E    
       BCS    LF097   
       LDA    ($81),Y 
       STA    GRP0    
LF06F: TYA            
       ADC    $9F     
       CMP    #$0E    
       BCS    LF02B   
       TAY            
       LDA    ($81),Y 
LF079: TAX            
       LDY    $A0     
       LDA    ($83),Y 
       STA    HMBL    
       ASL            
       ASL            
       CPY    #$07    
       STA    HMOVE   
       STA    CTRLPF  
       STX    GRP1    
       LDA    $9A     
       BCS    LF033   
       LDA    $D8     
       BCC    LF035   
LF092: CPY    #$EE    
       CLC            
       BNE    LF04A   
LF097: CPY    #$EE    
       CLC            
       BNE    LF06F   
       BEQ    LF101   
LF09E: BNE    LF0A8   
       LDA    $D7     
       STX    CTRLPF  
LF0A4: STA    COLUP0  
       BCS    LF0D9   
LF0A8: LDA    $A5     
       CPX    #$8D    
       BEQ    LF0A4   
       BNE    LF0D9   
LF0B0: CPX    #$9A    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       BCS    LF0CB   
       CPX    #$88    
       BCS    LF09E   
       LDA    LF760,X 
       STA    PF2     
       LDA    $D8     
       EOR    #$06    
       BCC    LF0D7   
LF0C9: BMI    LF128   
LF0CB: LDA    LF6EE,X 
       STA    PF1     
       LDA    LF73F,X 
       AND    #$07    
       EOR    $D9     
LF0D7: STA    COLUPF  
LF0D9: DEC    $A1     
       LDY    $A1     
       CPY    #$0E    
       BCS    LF0FA   
       LDA    ($81),Y 
       STA    GRP0    
LF0E5: TYA            
       ADC    $9F     
       CMP    #$0E    
       BCS    LF123   
       TAY            
       LDA    ($81),Y 
LF0EF: DEX            
       BMI    LF0B0   
       INX            
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       RTS            

LF0FA: CPY    #$EE    
       CLC            
       BNE    LF0E5   
       PLA            
       PLA            
LF101: STA    WSYNC   
       STA    HMOVE   
       LDX    #$00    
       STX    ENAM0   
       STX    VDELBL  
       STX    ENABL   
       STX    VDELP0  
       STX    PF1     
       STX    COLUPF  
       STA    RESBL   
       STX    PF2     
       LDA    #$7A    
       STA    HMBL    
       STA    CTRLPF  
       JSR    LF5FA   
       JMP    LF5FA   
LF123: LDA    #$00    
       JMP    LF0EF   
LF128: STX    ENABL   
       STA    GRP1    
LF12C: LDX    $98     
       JSR    LF0D9   
       LDY    $C2,X   
       BMI    LF170   
       BEQ    LF158   
LF137: DEY            
       BNE    LF137   
       STA    RESBL   
LF13C: STY    HMBL    
       DEC    $A1     
       LDY    $A1     
       CPY    #$0E    
       BCS    LF151   
       LDA    ($81),Y 
       STA    GRP0    
       BCC    LF186   
LF14C: CPY    #$EE    
       CLC            
       BNE    LF183   
LF151: CPY    #$EE    
       BEQ    LF101   
       CLC            
       BNE    LF186   
LF158: LDY    #$30    
       STA    RESBL   
       BNE    LF13C   
LF15E: LDA    $9B     
       BEQ    LF194   
LF162: JSR    LF0D9   
       LDA    $A0     
       ASL            
       ADC    #$82    
       TAX            
       JSR    LF0D9   
       BNE    LF12C   
LF170: LDA    #$00    
       DEC    $A1     
       STA    HMBL    
LF176: DEY            
       BMI    LF176   
       LDY    $A1     
       CPY    #$0E    
       BCS    LF14C   
       LDA    ($81),Y 
       STA    GRP0    
LF183: STA.w  $0014   
LF186: STA    WSYNC   
       STA    HMOVE   
       TYA            
       ADC    $9F     
       CMP    #$0E    
       BCS    LF15E   
       TAY            
       LDA    ($81),Y 
LF194: STA    GRP1    
LF196: JSR    LF0D9   
       LDA    $B9     
       BEQ    LF196   
       LDA    $CC,X   
       STA    $A0     
       JSR    LF0D9   
       LDA    $A1     
       BMI    LF1AC   
       STA    $AE     
       STX    $A3     
LF1AC: JSR    LF0D9   
       LDA    $C7,X   
       JSR    LF1E6   
       LDA    $B8,X   
       TAX            
       JSR    LF1E6   
       DEC    $98     
       LDA    LF6F4,X 
       STA    $83     
       JSR    LF0D9   
       LDA    LF7EC,X 
       STA    $85     
       LDA    #$04    
       STA    CTRLPF  
       JSR    LF0D9   
       CPX    #$06    
       BEQ    LF162   
       JSR    LF0D9   
       LDA    LF7E7,X 
       STA    $87     
       JSR    LF0D9   
       LDX    #$02    
       STX    ENABL   
       JMP    LF063   
LF1E6: STA    HMBL    
       JMP    LF0D9   
LF1EB: LDY    INTIM   
       BNE    LF1EB   
       LDX    #$FF    
       STA    WSYNC   
       STX    VSYNC   
       INC    $80     
       BNE    LF200   
       INC    $B8     
       BNE    LF200   
       STX    $B7     
LF200: TXA            
       EOR    SWCHB   
       STA    $D5     
       AND    #$08    
       ASL            
       SBC    #$00    
       BIT    $B7     
       BPL    LF211   
       AND    #$F7    
LF211: STA    $D6     
       LDX    #$04    
LF215: LDA    $B8     
       AND    $B7     
       STA    $9A     
       EOR    LF7A1,X 
       AND    $D6     
       STA    $D6,X   
       STA    NUSIZ1,X
       DEX            
       STX    COLUPF  
       BNE    LF215   
       BIT    RSYNC   
       BPL    LF22F   
       LDA    $D8     
LF22F: STA    $A5     
       LDA    $D5     
       LDX    #$30    
       LSR            
       STA    WSYNC   
       STY    VSYNC   
       STX    TIM64T  
       LDX    $99     
       BCC    LF244   
       JSR    LF00E   
LF244: LSR            
       BCC    LF26E   
       DEC    $97     
       BPL    LF270   
       INX            
LF24C: CPX    #$05    
       BCC    LF252   
       LDX    #$00    
LF252: LDY    #$AA    
       STX    $99     
       LDA    LF6F1,X 
       BNE    LF260   
       LDA    $80     
       BNE    LF260   
       TYA            
LF260: STA    $D2     
       JSR    LF00E   
       STX    $AF     
       LDX    $99     
       INX            
       STX    $9D     
       LDY    #$1D    
LF26E: STY    $97     
LF270: LDY    $AD     
       LDA    REFP1   
       ASL            
       LDA    SWCHA   
       ROR            
       CMP    #$F8    
       BCS    LF283   
       LDX    #$00    
       STX    $B7     
       STX    $B8     
LF283: ASL            
       ORA    $AF     
       ROR            
       STA    $D4     
       BIT    $B0     
       BPL    LF29D   
       LDA    $B1     
       ASL            
       ASL            
       AND    #$38    
       TAX            
       LDA    LF60F,X 
       ASL            
       ROR    $D4     
       TAX            
       BNE    LF2A7   
LF29D: ASL            
       LDX    #$BE    
       ASL            
       BPL    LF2AC   
       BCC    LF2B1   
       LDX    #$B0    
LF2A7: TYA            
       BEQ    LF2B6   
       BMI    LF2B1   
LF2AC: DEY            
       CPY    #$EF    
       BNE    LF2B6   
LF2B1: CPY    #$10    
       BEQ    LF2B6   
       INY            
LF2B6: STX    $81     
       TYA            
       STA    $AD     
       LDX    $B5     
       CPX    #$20    
       BCC    LF2C2   
       ASL            
LF2C2: LDY    $A9     
       CLC            
       ADC    $B2     
       BPL    LF2D5   
LF2C9: CMP    #$DF    
       BCS    LF2D9   
       ADC    #$20    
       DEY            
       BNE    LF2C9   
LF2D2: SBC    #$20    
       INY            
LF2D5: CMP    #$20    
       BCS    LF2D2   
LF2D9: STA    $B2     
       CPY    #$08    
       BCC    LF2E5   
       CPY    #$98    
       BCS    LF2E5   
       STY    $A9     
LF2E5: TXA            
       LSR            
       LSR            
       LSR            
       STA    $9F     
       LSR            
       LSR            
       ADC    $A9     
       STA    $AA     
       LDX    $BD     
       LDA    LF6F4,X 
       STA    $83     
       LDA    LF7EC,X 
       STA    $85     
       LDA    $9C     
       LSR            
       TAY            
       LDA    #$00    
       STA    $95     
       BEQ    LF315   
LF307: INY            
       LDA    ($83),Y 
       AND    #$F0    
       ADC    ($85),Y 
       AND    #$F0    
       CMP    #$80    
       ROR            
       ADC    $93     
LF315: STA    $93     
       TYA            
       CMP    LF7F0,X 
       BCC    LF307   
       LDA    $93     
       EOR    #$F8    
       ADC    #$08    
       LSR            
       LSR            
       LSR            
       CMP    #$10    
       BCC    LF32C   
       ORA    #$E0    
LF32C: LDX    #$04    
LF32E: CLC            
       ADC    $BE,X   
       CMP    #$C8    
       BCS    LF33A   
       SBC    #$9F    
       BCS    LF33C   
       SEC            
LF33A: ADC    #$9F    
LF33C: JSR    LF5C4   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C8,X   
       TYA            
       SBC    #$05    
       BMI    LF34D   
       EOR    #$80    
       TAY            
LF34D: STY    $C3,X   
       LDY    $B9,X   
       LDA    LF7F0,Y 
       STA    $CD,X   
       TYA            
       LSR            
       EOR    #$02    
       BNE    LF38F   
       LDY    $BE,X   
       LDA    $80     
       AND    #$03    
       ORA    $AF     
       BNE    LF36F   
       LDA    $B5     
       BEQ    LF36F   
       INY            
       BCS    LF36F   
       DEY            
       DEY            
LF36F: CPY    #$A0    
       BEQ    LF379   
       BCC    LF37B   
       LDY    #$9F    
       BNE    LF37B   
LF379: LDY    #$00    
LF37B: STY    $BE,X   
       CPX    #$04    
       BNE    LF387   
       LDA    $9C     
       SBC    #$24    
       BMI    LF38F   
LF387: LDA    $95     
       BNE    LF38F   
       INC    $95     
       STY    $AB     
LF38F: LDA    #$00    
       DEX            
       BPL    LF32E   
       LDX    #$02    
       JSR    LF5E6   
       LDY    #$05    
       LDA    $9C     
       CMP    #$80    
       ROR            
       STA    $D1     
       LDA    #$00    
       ROL            
       LDX    $9C     
       BPL    LF3AD   
       DEY            
       TXA            
       ADC    #$0D    
LF3AD: STA    $95     
       STY    $98     
       LDA    #$81    
       STA    $A1     
LF3B5: LDY    INTIM   
       BNE    LF3B5   
       STA    WSYNC   
       STY    VBLANK  
       STA    CXCLR   
       LDX    #$0A    
       LDY    #$50    
       STY    $8B     
       STY    $8D     
       LDA    $9D     
       JSR    LF6E1   
       LSR            
       BNE    LF3D2   
       STY    $8F     
LF3D2: JSR    LF673   
       LDX    #$0A    
LF3D7: LDA    $9C,X   
       JSR    LF6E1   
       BPL    LF3D7   
       ADC    #$C0    
       JSR    LF673   
       LDX    #$01    
       JSR    LF5DE   
       DEX            
       JSR    LF5DE   
       STY    VDELP0  
       STY    VDELBL  
       BIT    $D4     
       BVC    LF3F8   
       STY    REFP0   
       STY    REFP1   
LF3F8: STX    ENABL   
       LDX    $95     
       INX            
       STA    HMCLR   
LF3FF: JSR    LF0D9   
       DEX            
       BNE    LF3FF   
       JSR    LF12C   
       STA    ENABL   
       STX    REFP0   
       STX    REFP1   
       LDA    #$3B    
       JSR    LF5E8   
       LDA    #$43    
       INX            
       JSR    LF5E8   
       LDX    #$0A    
       LDA    #$6C    
       SEC            
LF41E: LDY    #$F6    
       STY    $88,X   
       INY            
       STY    $80,X   
       DEX            
       STA    $88,X   
       SBC    #$07    
       DEX            
       BNE    LF41E   
       STY    HMP1    
       TXA            
       JSR    LF673   
       LDA    #$23    
       STA    TIM64T  
       JSR    LF5FA   
       STA    VBLANK  
       LDA    $AF     
       ORA    $9E     
       BMI    LF446   
       JSR    LF6B6   
LF446: LDA    $AE     
       LDX    $A3     
       LDY    $B8,X   
       SBC    LF7F0,Y 
       SBC    #$06    
       CMP    #$0C    
       ROR            
       ORA    $B0     
       BMI    LF49F   
       CLC            
       LDA    LF727,Y 
       AND    #$02    
       ADC    $BD,X   
       SBC    $A9     
       ROR            
       PHP            
       ROL            
       CMP    LF6F9,Y 
       CLV            
       BCS    LF46D   
       BIT    WSYNC   
LF46D: PLA            
       EOR    LF64E,Y 
       LDX    #$3C    
       ORA    $B1     
       ASL            
       BVC    LF481   
       STX    $B5     
       SEC            
       ROR    $B0     
       LDX    $B3     
       CPX    #$01    
LF481: BCS    LF485   
       CPY    #$03    
LF485: LDA    #$28    
       BVS    LF48D   
       BCS    LF493   
       LDA    #$1F    
LF48D: STA    $B3     
       AND    #$0A    
       STA    AUDC1   
LF493: LDA    $9D     
       SED            
       SBC    #$00    
       CLD            
       STA    $9D     
       LDA    #$E1    
       STA    $B1     
LF49F: LDA    $D4     
       LDX    $B5     
       BNE    LF4AC   
       CMP    #$F8    
       BCS    LF4BB   
       STX    $80     
       INX            
LF4AC: CPX    #$5F    
       BCS    LF4B1   
       ROR            
LF4B1: ORA    $AF     
       ORA    $B0     
       BMI    LF4BA   
       INX            
       BPL    LF4BB   
LF4BA: DEX            
LF4BB: STX    $B5     
       TXA            
       BEQ    LF4E7   
       LSR            
       LSR            
       LSR            
       CLC            
       PHA            
       EOR    #$8F    
       ADC    #$88    
       STA    AUDF0   
       LDX    #$04    
       PLA            
       BIT    $B0     
       BMI    LF4DC   
       LDY    $AD     
       BEQ    LF4DC   
       SBC    #$02    
       BCS    LF4DC   
       LDA    #$01    
LF4DC: ADC    $B6     
       PHA            
       AND    #$07    
       STA    $B6     
       PLA            
       LSR            
       LSR            
       LSR            
LF4E7: CLC            
       STX    AUDV0   
       STA    $93     
       ADC    $9C     
       STA    $9C     
       LDA    $B1     
       CLC            
       ADC    $93     
       BMI    LF4FA   
       LSR            
       STA    $B0     
LF4FA: STA    $B1     
       LDA    $B3     
       BEQ    LF502   
       DEC    $B3     
LF502: CMP    #$10    
       LDX    #$17    
       BCC    LF50B   
       DEX            
       EOR    #$1F    
LF50B: STX    AUDF1   
       STA    AUDV1   
       LDA    $B9     
       BEQ    LF521   
       LDX    $BD     
       LDA    $9C     
       CLC            
       SBC    LF7F0,X 
       CLC            
       SBC    LF7F0,X 
       BMI    LF59E   
LF521: LDX    #$00    
       STA    $93     
LF525: LDA    $BF,X   
       STA    $BE,X   
       LDA    $BA,X   
       STA    $B9,X   
       LDA    $A8     
       ASL            
       EOR    $A8     
       ASL            
       ASL            
       ROL    $A7     
       ROL    $A8     
       INX            
       CPX    #$04    
       BCC    LF525   
       LDY    $B4     
       DEY            
       BMI    LF551   
       BPL    LF565   
LF544: LDX    #$02    
LF546: LDA    $9D     
       CLC            
       JSR    LF6C8   
       DEX            
       BPL    LF546   
       STX    $AF     
LF551: LDA    $D3     
       SEC            
       SED            
       SBC    #$01    
       CLD            
       LDY    #$7F    
       BCC    LF565   
       LDY    #$03    
       LDX    $B9     
       BEQ    LF565   
       DEY            
       STA    $D3     
LF565: STY    $B4     
       TYA            
       BNE    LF5A1   
       LDA    $D3     
       BEQ    LF544   
       AND    #$01    
       TAY            
       INY            
       LDA    $A7     
       AND    #$1F    
       ADC    #$1C    
       EOR    LF64E,Y 
       ADC    $BF     
       BPL    LF587   
       CMP    #$CC    
       AND    #$87    
       BCC    LF587   
       EOR    #$98    
LF587: CMP    #$18    
       BCS    LF58D   
       ORA    #$18    
LF58D: LDX    $BB     
       BNE    LF593   
       AND    #$E7    
LF593: STA    $C2     
       STY    $BD     
       LDA    #$F5    
       CLC            
       ADC    $93     
       STA    $9C     
LF59E: JMP    LF1EB   
LF5A1: LDY    #$03    
       BIT    $D5     
       CMP    #$02    
       BCC    LF5B4   
       BNE    LF5BC   
       LDA    $A8     
       AND    #$03    
       BEQ    LF5B4   
       ADC    #$02    
       TAY            
LF5B4: LDA    $A8     
       AND    #$07    
       EOR    $C0     
       BVS    LF58D   
LF5BC: LDA    $A7     
       AND    #$7F    
       ADC    #$16    
       BNE    LF58D   
LF5C4: TAY            
       INY            
       TYA            
       AND    #$0F    
       STA    $93     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $93     
       CMP    #$0F    
       BCC    LF5DB   
       SBC    #$0F    
       INY            
LF5DB: EOR    #$07    
       RTS            

LF5DE: LDA    $D7,X   
       STA    COLUP0,X
       LDY    #$28    
       STY    NUSIZ0,X
LF5E6: LDA    $A9,X   
LF5E8: JSR    LF5C4   
       STA    WSYNC   
       STA    HMCLR   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LF5F5: DEY            
       BPL    LF5F5   
       STA    RESP0,X 
LF5FA: STA    WSYNC   
       STA    HMOVE   
       RTS            

LF5FF: .byte $00,$1E,$33,$33,$33,$33,$33,$1E,$E6,$3F,$0C,$0C,$0C,$0C,$3C,$1C
LF60F: .byte $66,$3F,$30,$30,$1E,$03,$23,$3E,$5F,$1E,$23,$03,$06,$03,$23,$1E
       .byte $58,$06,$06,$3F,$26,$16,$0E,$06,$DF,$3E,$23,$03,$3E,$30,$30,$3F
       .byte $E6,$1E,$33,$33,$3E,$30,$31,$1E,$66,$0C,$0C,$0C,$06,$03,$21,$3F
       .byte $5F,$1E,$33,$33,$1E,$33,$33,$1E,$58,$1E,$23,$03,$1F,$33,$33
LF64E: .byte $1E,$FF,$00,$00,$00,$00,$00,$00,$00,$BA,$8A,$BA,$A2,$3A,$80,$FE
       .byte $E9,$AB,$AF,$AD,$E9,$00,$00,$AD,$A9,$E9,$A9,$ED,$41,$0F,$50,$58
       .byte $5C,$56,$53,$11,$F0
LF673: AND    #$C0    
       STA    $93     
       LDY    #$07    
       LDA    #$03    
       STA    NUSIZ0  
       LSR            
       STA    NUSIZ1  
       LDA    $D9     
       STA    COLUP0  
       STA    COLUP1  
LF686: DEY            
       STY    $96     
       LDA    LF7DA,Y 
       AND    $93     
       ASL            
       STA    WSYNC   
       ORA    ($8F),Y 
       STA    GRP1    
       LDA    ($89),Y 
       STA    GRP0    
       LDA    ($91),Y 
       STA    $94     
       LDA    #$00    
       ROR            
       ORA    ($8B),Y 
       TAX            
       LDA    ($8D),Y 
       LDY    $94     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       LDY    $96     
       BNE    LF686   
       STY    GRP0    
       STY    GRP1    
       RTS            

LF6B6: LDA    $B5     
       BEQ    LF6E0   
       LDA    $AC     
       ADC    #$AB    
       STA    $AC     
       LDA    #$01    
       SED            
       ADC    $A2     
       STA    $A2     
       TYA            
LF6C8: SED            
       ADC    $A6     
       CLD            
       LDY    #$FF    
LF6CE: INY            
       BCC    LF6D3   
       ADC    #$9F    
LF6D3: CMP    #$60    
       BCS    LF6CE   
       STA    $A6     
       TYA            
       SED            
       ADC    $9E     
       STA    $9E     
       CLD            
LF6E0: RTS            

LF6E1: PHA            
       ASL            
       ASL            
       ASL            
       JSR    LF6EA   
       PLA            
       LSR            
LF6EA: AND    #$78    
       STA    $87,X   
LF6EE: DEX            
       DEX            
       RTS            

LF6F1: .byte $58,$C3,$22
LF6F4: .byte $BB,$00,$00,$2A,$4B
LF6F9: .byte $4B,$09,$09,$0D,$0B,$0B,$0D,$06,$06,$06,$E6,$FA,$FA,$DA,$0A,$0A
       .byte $0A,$0B,$1B,$07,$07,$07,$07,$C5,$0C,$0C,$FC,$0C,$F8,$C0,$D0,$F0
       .byte $04,$04,$00,$04,$04,$04,$E1,$D1,$C1,$D1,$F9,$FB,$0D,$0D
LF727: .byte $0D,$1F,$1B,$F0,$FA,$EA,$1C,$2E,$1E,$0A,$F6,$FE,$DE,$EF,$FF,$EB
       .byte $FB,$0B,$07,$01,$F4,$F4,$F4,$08
LF73F: .byte $08,$08,$2C,$08,$08,$09,$09,$05,$05,$05,$05,$05,$DA,$FE,$0E,$0E
       .byte $1E,$42,$22,$12,$F2,$F6,$E6,$00,$00,$06,$12,$33,$33,$53,$F7,$0B
       .byte $0F
LF760: .byte $0F,$0F,$0F,$0B,$E9,$F4,$18,$E8,$EC,$EC,$1C,$04,$E8,$2C,$3D,$1D
       .byte $3D,$29,$19,$15,$01,$14,$8E,$00,$8E,$00,$8E,$00,$8E,$00,$8E,$14
       .byte $00,$48,$00,$48,$00,$48,$00,$48,$00,$70,$FC,$FE,$7F,$3F,$1E,$0C
       .byte $D2,$D2,$D2,$D2,$D6,$D6,$44,$00,$00,$00,$00,$00,$2C,$2C,$82,$82
       .byte $82
LF7A1: .byte $2C,$2C,$D2,$0C,$D6,$14,$E8,$EA,$EA,$EA,$EA,$EA,$EA,$FA,$F8,$00
       .byte $18,$7E,$7E,$3C,$18,$18,$18,$7E,$FF,$FF,$FF,$18,$3C,$00,$0C,$1E
       .byte $3E,$3C,$38,$18,$1C,$3E,$7E,$7E,$78,$1C,$30,$00,$18,$1C,$3C,$38
       .byte $18,$1C,$1C,$3C,$3C,$38,$38,$1C,$30
LF7DA: .byte $86,$C6,$44,$00,$42,$40,$00,$0E,$3F,$7F,$FE,$FC,$78
LF7E7: .byte $30,$6E,$78,$9F,$89
LF7EC: .byte $89,$3A,$3A,$64
LF7F0: .byte $10,$10,$10,$10,$19,$19,$10
LF7F7: .byte $25,$50,$75,$99,$99,$00,$F0,$00,$F0,$78,$D8,$A2,$00,$8A,$95,$00
       .byte $9A,$E8,$D0,$FA,$4C,$4C,$F2,$BD,$F7,$F7,$85,$9D,$85,$D3,$A2,$16
       .byte $A9,$00,$95,$AD,$94,$9E,$A5,$D2,$95,$A7,$A9,$4E,$95,$A9,$CA,$10
       .byte $EF,$85,$15,$60,$A5,$9B,$F0,$4A,$A5,$9B,$F0,$21,$51,$87,$25,$D6
       .byte $85,$08,$B1,$85,$85,$24,$AA,$C6,$A1,$A4,$A1,$C0,$0E,$B0,$4C,$B1
       .byte $81,$85,$1B,$98,$65,$9F,$C9,$0E,$B0,$DE,$A8,$B1,$81,$C6,$A0,$85
       .byte $2A,$30,$6F,$85,$1C,$86,$1D,$8A,$0A,$0A,$85,$0A,$C6,$A1,$A4,$A1
       .byte $C0,$0E,$B0,$2C,$B1,$81,$85,$1B,$98,$65,$9F,$C9,$0E,$B0,$B5,$A8
       .byte $B1,$81,$AA,$A4,$A0,$B1,$83,$85,$24,$0A,$0A,$C0,$07,$85,$2A,$85
       .byte $0A,$86,$1C,$A5,$9A,$B0,$A5,$A5,$D8,$90,$A3,$C0,$EE,$18,$D0,$B3
       .byte $C0,$EE,$18,$D0,$D3,$F0,$63,$D0,$08,$A5,$D7,$86,$0A,$85,$06,$B0
       .byte $31,$A5,$A5,$E0,$8D,$F0,$F6,$D0,$29,$E0,$9A,$85,$02,$85,$2A,$85
       .byte $1C,$B0,$11,$E0,$88,$B0,$E0,$BD,$60,$F7,$85,$0F,$A5,$D8,$49,$06
       .byte $90,$0E,$30,$5D,$BD,$EE,$F6,$85,$0E,$BD,$3F,$F7,$29,$07,$45,$D9
       .byte $85,$08,$C6,$A1,$A4,$A1,$C0,$0E,$B0,$19,$B1,$81,$85,$1B,$98,$65
       .byte $9F,$C9,$0E,$B0,$37,$A8,$B1,$81,$CA,$30,$BE,$E8,$85,$02,$85,$2A
       .byte $85,$1C,$60,$C0,$EE,$18,$D0,$E6,$68,$68,$85,$02,$85,$2A,$A2,$00
       .byte $86,$1D,$86,$27,$86,$1F,$86,$25,$86,$0E,$86,$08,$85,$14,$86,$0F
       .byte $A9,$7A,$85,$24,$85,$0A,$20,$FA,$F5,$4C,$FA,$F5,$A9,$00,$4C,$EF
       .byte $F0,$86,$1F,$85,$1C,$A6,$98,$20,$D9,$F0,$B4,$C2,$30,$3B,$F0,$21
       .byte $88,$D0,$FD,$85,$14,$84,$24,$C6,$A1,$A4,$A1,$C0,$0E,$B0,$0B,$B1
       .byte $81,$85,$1B,$90,$3A,$C0,$EE,$18,$D0,$32,$C0,$EE,$F0,$AC,$18,$D0
       .byte $2E,$A0,$30,$85,$14,$D0,$DE,$A5,$9B,$F0,$32,$20,$D9,$F0,$A5,$A0
       .byte $0A,$69,$82,$AA,$20,$D9,$F0,$D0,$BC,$A9,$00,$C6,$A1,$85,$24,$88
       .byte $30,$FD,$A4,$A1,$C0,$0E,$B0,$CD,$B1,$81,$85,$1B,$8D,$14,$00,$85
       .byte $02,$85,$2A,$98,$65,$9F,$C9,$0E,$B0,$CD,$A8,$B1,$81,$85,$1C,$20
       .byte $D9,$F0,$A5,$B9,$F0,$F9,$B5,$CC,$85,$A0,$20,$D9,$F0,$A5,$A1,$30
       .byte $04,$85,$AE,$86,$A3,$20,$D9,$F0,$B5,$C7,$20,$E6,$F1,$B5,$B8,$AA
       .byte $20,$E6,$F1,$C6,$98,$BD,$F4,$F6,$85,$83,$20,$D9,$F0,$BD,$EC,$F7
       .byte $85,$85,$A9,$04,$85,$0A,$20,$D9,$F0,$E0,$06,$F0,$8E,$20,$D9,$F0
       .byte $BD,$E7,$F7,$85,$87,$20,$D9,$F0,$A2,$02,$86,$1F,$4C,$63,$F0,$85
       .byte $24,$4C,$D9,$F0,$AC,$84,$02,$D0,$FB,$A2,$FF,$85,$02,$86,$00,$E6
       .byte $80,$D0,$06,$E6,$B8,$D0,$02,$86,$B7,$8A,$4D,$82,$02,$85,$D5,$29
       .byte $08,$0A,$E9,$00,$24,$B7,$10,$02,$29,$F7,$85,$D6,$A2,$04,$A5,$B8
       .byte $25,$B7,$85,$9A,$5D,$A1,$F7,$25,$D6,$95,$D6,$95,$05,$CA,$86,$08
       .byte $D0,$EC,$24,$03,$10,$02,$A5,$D8,$85,$A5,$A5,$D5,$A2,$30,$4A,$85
       .byte $02,$84,$00,$8E,$96,$02,$A6,$99,$90,$03,$20,$0E,$F0,$4A,$90,$27
       .byte $C6,$97,$10,$25,$E8,$E0,$05,$90,$02,$A2,$00,$A0,$AA,$86,$99,$BD
       .byte $F1,$F6,$D0,$05,$A5,$80,$D0,$01,$98,$85,$D2,$20,$0E,$F0,$86,$AF
       .byte $A6,$99,$E8,$86,$9D,$A0,$1D,$84,$97,$A4,$AD,$A5,$0C,$0A,$AD,$80
       .byte $02,$6A,$C9,$F8,$B0,$06,$A2,$00,$86,$B7,$86,$B8,$0A,$05,$AF,$6A
       .byte $85,$D4,$24,$B0,$10,$10,$A5,$B1,$0A,$0A,$29,$38,$AA,$BD,$0F,$F6
       .byte $0A,$66,$D4,$AA,$D0,$0A,$0A,$A2,$BE,$0A,$10,$09,$90,$0C,$A2,$B0
       .byte $98,$F0,$0C,$30,$05,$88,$C0,$EF,$D0,$05,$C0,$10,$F0,$01,$C8,$86
       .byte $81,$98,$85,$AD,$A6,$B5,$E0,$20,$90,$01,$0A,$A4,$A9,$18,$65,$B2
       .byte $10,$0C,$C9,$DF,$B0,$0C,$69,$20,$88,$D0,$F7,$E9,$20,$C8,$C9,$20
       .byte $B0,$F9,$85,$B2,$C0,$08,$90,$06,$C0,$98,$B0,$02,$84,$A9,$8A,$4A
       .byte $4A,$4A,$85,$9F,$4A,$4A,$65,$A9,$85,$AA,$A6,$BD,$BD,$F4,$F6,$85
       .byte $83,$BD,$EC,$F7,$85,$85,$A5,$9C,$4A,$A8,$A9,$00,$85,$95,$F0,$0E
       .byte $C8,$B1,$83,$29,$F0,$71,$85,$29,$F0,$C9,$80,$6A,$65,$93,$85,$93
       .byte $98,$DD,$F0,$F7,$90,$EA,$A5,$93,$49,$F8,$69,$08,$4A,$4A,$4A,$C9
       .byte $10,$90,$02,$09,$E0,$A2,$04,$18,$75,$BE,$C9,$C8,$B0,$05,$E9,$9F
       .byte $B0,$03,$38,$69,$9F,$20,$C4,$F5,$0A,$0A,$0A,$0A,$95,$C8,$98,$E9
       .byte $05,$30,$03,$49,$80,$A8,$94,$C3,$B4,$B9,$B9,$F0,$F7,$95,$CD,$98
       .byte $4A,$49,$02,$D0,$33,$B4,$BE,$A5,$80,$29,$03,$05,$AF,$D0,$09,$A5
       .byte $B5,$F0,$05,$C8,$B0,$02,$88,$88,$C0,$A0,$F0,$06,$90,$06,$A0,$9F
       .byte $D0,$02,$A0,$00,$94,$BE,$E0,$04,$D0,$06,$A5,$9C,$E9,$24,$30,$08
       .byte $A5,$95,$D0,$04,$E6,$95,$84,$AB,$A9,$00,$CA,$10,$9A,$A2,$02,$20
       .byte $E6,$F5,$A0,$05,$A5,$9C,$C9,$80,$6A,$85,$D1,$A9,$00,$2A,$A6,$9C
       .byte $10,$04,$88,$8A,$69,$0D,$85,$95,$84,$98,$A9,$81,$85,$A1,$AC,$84
       .byte $02,$D0,$FB,$85,$02,$84,$01,$85,$2C,$A2,$0A,$A0,$50,$84,$8B,$84
       .byte $8D,$A5,$9D,$20,$E1,$F6,$4A,$D0,$02,$84,$8F,$20,$73,$F6,$A2,$0A
       .byte $B5,$9C,$20,$E1,$F6,$10,$F9,$69,$C0,$20,$73,$F6,$A2,$01,$20,$DE
       .byte $F5,$CA,$20,$DE,$F5,$84,$25,$84,$27,$24,$D4,$50,$04,$84,$0B,$84
       .byte $0C,$86,$1F,$A6,$95,$E8,$85,$2B,$20,$D9,$F0,$CA,$D0,$FA,$20,$2C
       .byte $F1,$85,$1F,$86,$0B,$86,$0C,$A9,$3B,$20,$E8,$F5,$A9,$43,$E8,$20
       .byte $E8,$F5,$A2,$0A,$A9,$6C,$38,$A0,$F6,$94,$88,$C8,$94,$80,$CA,$95
       .byte $88,$E9,$07,$CA,$D0,$F1,$84,$21,$8A,$20,$73,$F6,$A9,$23,$8D,$96
       .byte $02,$20,$FA,$F5,$85,$01,$A5,$AF,$05,$9E,$30,$03,$20,$B6,$F6,$A5
       .byte $AE,$A6,$A3,$B4,$B8,$F9,$F0,$F7,$E9,$06,$C9,$0C,$6A,$05,$B0,$30
       .byte $47,$18,$B9,$27,$F7,$29,$02,$75,$BD,$E5,$A9,$6A,$08,$2A,$D9,$F9
       .byte $F6,$B8,$B0,$02,$24,$02,$68,$59,$4E,$F6,$A2,$3C,$05,$B1,$0A,$50
       .byte $09,$86,$B5,$38,$66,$B0,$A6,$B3,$E0,$01,$B0,$02,$C0,$03,$A9,$28
       .byte $70,$04,$B0,$08,$A9,$1F,$85,$B3,$29,$0A,$85,$16,$A5,$9D,$F8,$E9
       .byte $00,$D8,$85,$9D,$A9,$E1,$85,$B1,$A5,$D4,$A6,$B5,$D0,$07,$C9,$F8
       .byte $B0,$12,$86,$80,$E8,$E0,$5F,$B0,$01,$6A,$05,$AF,$05,$B0,$30,$03
       .byte $E8,$10,$01,$CA,$86,$B5,$8A,$F0,$27,$4A,$4A,$4A,$18,$48,$49,$8F
       .byte $69,$88,$85,$17,$A2,$04,$68,$24,$B0,$30,$0A,$A4,$AD,$F0,$06,$E9
       .byte $02,$B0,$02,$A9,$01,$65,$B6,$48,$29,$07,$85,$B6,$68,$4A,$4A,$4A
       .byte $18,$86,$19,$85,$93,$65,$9C,$85,$9C,$A5,$B1,$18,$65,$93,$30,$03
       .byte $4A,$85,$B0,$85,$B1,$A5,$B3,$F0,$02,$C6,$B3,$C9,$10,$A2,$17,$90
       .byte $03,$CA,$49,$1F,$86,$18,$85,$1A,$A5,$B9,$F0,$0E,$A6,$BD,$A5,$9C
       .byte $18,$FD,$F0,$F7,$18,$FD,$F0,$F7,$30,$7D,$A2,$00,$85,$93,$B5,$BF
       .byte $95,$BE,$B5,$BA,$95,$B9,$A5,$A8,$0A,$45,$A8,$0A,$0A,$26,$A7,$26
       .byte $A8,$E8,$E0,$04,$90,$E8,$A4,$B4,$88,$30,$0F,$10,$21,$A2,$02,$A5
       .byte $9D,$18,$20,$C8,$F6,$CA,$10,$F7,$86,$AF,$A5,$D3,$38,$F8,$E9,$01
       .byte $D8,$A0,$7F,$90,$09,$A0,$03,$A6,$B9,$F0,$03,$88,$85,$D3,$84,$B4
       .byte $98,$D0,$37,$A5,$D3,$F0,$D6,$29,$01,$A8,$C8,$A5,$A7,$29,$1F,$69
       .byte $1C,$59,$4E,$F6,$65,$BF,$10,$08,$C9,$CC,$29,$87,$90,$02,$49,$98
       .byte $C9,$18,$B0,$02,$09,$18,$A6,$BB,$D0,$02,$29,$E7,$85,$C2,$84,$BD
       .byte $A9,$F5,$18,$65,$93,$85,$9C,$4C,$EB,$F1,$A0,$03,$24,$D5,$C9,$02
       .byte $90,$0B,$D0,$11,$A5,$A8,$29,$03,$F0,$03,$69,$02,$A8,$A5,$A8,$29
       .byte $07,$45,$C0,$70,$D1,$A5,$A7,$29,$7F,$69,$16,$D0,$C9,$A8,$C8,$98
       .byte $29,$0F,$85,$93,$98,$4A,$4A,$4A,$4A,$A8,$18,$65,$93,$C9,$0F,$90
       .byte $03,$E9,$0F,$C8,$49,$07,$60,$B5,$D7,$95,$06,$A0,$28,$94,$04,$B5
       .byte $A9,$20,$C4,$F5,$85,$02,$85,$2B,$0A,$0A,$0A,$0A,$95,$20,$88,$10
       .byte $FD,$95,$10,$85,$02,$85,$2A,$60,$00,$1E,$33,$33,$33,$33,$33,$1E
       .byte $E6,$3F,$0C,$0C,$0C,$0C,$3C,$1C,$66,$3F,$30,$30,$1E,$03,$23,$3E
       .byte $5F,$1E,$23,$03,$06,$03,$23,$1E,$58,$06,$06,$3F,$26,$16,$0E,$06
       .byte $DF,$3E,$23,$03,$3E,$30,$30,$3F,$E6,$1E,$33,$33,$3E,$30,$31,$1E
       .byte $66,$0C,$0C,$0C,$06,$03,$21,$3F,$5F,$1E,$33,$33,$1E,$33,$33,$1E
       .byte $58,$1E,$23,$03,$1F,$33,$33,$1E,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $BA,$8A,$BA,$A2,$3A,$80,$FE,$E9,$AB,$AF,$AD,$E9,$00,$00,$AD,$A9
       .byte $E9,$A9,$ED,$41,$0F,$50,$58,$5C,$56,$53,$11,$F0,$29,$C0,$85,$93
       .byte $A0,$07,$A9,$03,$85,$04,$4A,$85,$05,$A5,$D9,$85,$06,$85,$07,$88
       .byte $84,$96,$B9,$DA,$F7,$25,$93,$0A,$85,$02,$11,$8F,$85,$1C,$B1,$89
       .byte $85,$1B,$B1,$91,$85,$94,$A9,$00,$6A,$11,$8B,$AA,$B1,$8D,$A4,$94
       .byte $84,$1B,$86,$1C,$85,$1B,$A4,$96,$D0,$D5,$84,$1B,$84,$1C,$60,$A5
       .byte $B5,$F0,$26,$A5,$AC,$69,$AB,$85,$AC,$A9,$01,$F8,$65,$A2,$85,$A2
       .byte $98,$F8,$65,$A6,$D8,$A0,$FF,$C8,$90,$02,$69,$9F,$C9,$60,$B0,$F7
       .byte $85,$A6,$98,$F8,$65,$9E,$85,$9E,$D8,$60,$48,$0A,$0A,$0A,$20,$EA
       .byte $F6,$68,$4A,$29,$78,$95,$87,$CA,$CA,$60,$58,$C3,$22,$BB,$00,$00
       .byte $2A,$4B,$4B,$09,$09,$0D,$0B,$0B,$0D,$06,$06,$06,$E6,$FA,$FA,$DA
       .byte $0A,$0A,$0A,$0B,$1B,$07,$07,$07,$07,$C5,$0C,$0C,$FC,$0C,$F8,$C0
       .byte $D0,$F0,$04,$04,$00,$04,$04,$04,$E1,$D1,$C1,$D1,$F9,$FB,$0D,$0D
       .byte $0D,$1F,$1B,$F0,$FA,$EA,$1C,$2E,$1E,$0A,$F6,$FE,$DE,$EF,$FF,$EB
       .byte $FB,$0B,$07,$01,$F4,$F4,$F4,$08,$08,$08,$2C,$08,$08,$09,$09,$05
       .byte $05,$05,$05,$05,$DA,$FE,$0E,$0E,$1E,$42,$22,$12,$F2,$F6,$E6,$00
       .byte $00,$06,$12,$33,$33,$53,$F7,$0B,$0F,$0F,$0F,$0F,$0B,$E9,$F4,$18
       .byte $E8,$EC,$EC,$1C,$04,$E8,$2C,$3D,$1D,$3D,$29,$19,$15,$01,$14,$8E
       .byte $00,$8E,$00,$8E,$00,$8E,$00,$8E,$14,$00,$48,$00,$48,$00,$48,$00
       .byte $48,$00,$70,$FC,$FE,$7F,$3F,$1E,$0C,$D2,$D2,$D2,$D2,$D6,$D6,$44
       .byte $00,$00,$00,$00,$00,$2C,$2C,$82,$82,$82,$2C,$2C,$D2,$0C,$D6,$14
       .byte $E8,$EA,$EA,$EA,$EA,$EA,$EA,$FA,$F8,$00,$18,$7E,$7E,$3C,$18,$18
       .byte $18,$7E,$FF,$FF,$FF,$18,$3C,$00,$0C,$1E,$3E,$3C,$38,$18,$1C,$3E
       .byte $7E,$7E,$78,$1C,$30,$00,$18,$1C,$3C,$38,$18,$1C,$1C,$3C,$3C,$38
       .byte $38,$1C,$30,$86,$C6,$44,$00,$42,$40,$00,$0E,$3F,$7F,$FE,$FC,$78
       .byte $30,$6E,$78,$9F,$89,$89,$3A,$3A,$64,$10,$10,$10,$10,$19,$19,$10
       .byte $25,$50,$75,$99,$99,$00,$F0,$00,$F0
