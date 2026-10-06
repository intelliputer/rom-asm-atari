; Disassembly of roms/Skiing (2).bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Skiing (2).bin
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
RESP0   =  $10
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
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
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       DEC    $8C     
       JMP    LF3C6   
LF011: LDA    ($95),Y 
LF013: DEY            
       STY    $F3     
       LDX    $9B     
LF018: DEC    $8D     
       STA    WSYNC   
       STA    GRP0,X  
       BEQ    LF062   
       LDX    $EE     
       LDA    $8D     
       CMP    $D6,X   
       BEQ    LF03C   
       SEC            
       SBC    $9A     
       CMP    #$14    
       TAY            
       LDA    $AE,X   
       STA    $97     
       LDA    $C6,X   
       STA    $F2     
LF036: BCC    LF011   
       LDA    #$00    
       BEQ    LF013   
LF03C: BIT    COLUP1  
       BMI    LF042   
       STX    $EF     
LF042: LDA    $9E,X   
       LDX    $9C     
       STA    HMP0,X  
       STA    REFP0,X 
       LDY    $F3     
       DEC    $F3     
       CPY    #$14    
       BCC    LF056   
       LDA    #$00    
       BCS    LF058   
LF056: LDA    ($95),Y 
LF058: LDX    $9B     
       LDY    $EE     
       DEC    $8D     
       STA    WSYNC   
       STA    GRP0,X  
LF062: BEQ    LF0AC   
       LDX    $A6,Y   
       BMI    LF07F   
LF068: DEX            
       BPL    LF068   
       LDX    $9C     
       STA    RESP0,X 
       LDA.wy $00CE,Y 
       TAY            
       LDA    LF7BB,Y 
       EOR    $F9     
       AND    $ED     
       STA    COLUP0,X
       JMP    LF096   
LF07F: LDA.wy $00CE,Y 
       TAY            
       LDA    LF7BB,Y 
       EOR    $F9     
       AND    $ED     
       LDY    $9C     
       STA.wy $0006,Y 
LF08F: DEX            
       BMI    LF08F   
       LDX    $9C     
       STA    RESP0,X 
LF096: STA    WSYNC   
       STA    HMOVE   
       LDY    $F3     
       CPY    #$14    
       BCC    LF0A4   
       LDA    #$00    
       BCS    LF0A6   
LF0A4: LDA    ($95),Y 
LF0A6: LDX    $9B     
       STA    GRP0,X  
       DEC    $8D     
LF0AC: BEQ    LF105   
       LDX    $EE     
       LDY    $B6,X   
       LDX    $9C     
       BPL    LF0CE   
LF0B6: BCC    LF0BA   
       EOR    #$05    
LF0BA: LDY    $F3     
       STA    WSYNC   
       STA    NUSIZ0,X
       CPY    #$14    
       BCC    LF0EA   
       LDA    #$00    
       BCS    LF0EC   
LF0C8: LDA    ($97),Y 
       LDX    $9C     
       STA    GRP0,X  
LF0CE: STY    $F4     
       DEC    $F3     
       LDA    $F2     
       CPY    #$10    
       BNE    LF0B6   
       STA    HMP0,X  
       LDY    $F3     
       CPY    #$14    
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0,X
       BCC    LF0EA   
       LDA    #$00    
       BCS    LF0EC   
LF0EA: LDA    ($95),Y 
LF0EC: LDX    $9B     
       STA    GRP0,X  
       DEC    $8D     
       BEQ    LF103   
       LDY    $F4     
       DEY            
       BPL    LF0C8   
       INC    $EE     
       LDY    $F3     
       DEY            
       CPY    #$14    
       JMP    LF036   
LF103: INC    $EE     
LF105: STA    WSYNC   
       LDX    #$00    
       STX    VDELP0  
       STX    VDELP1  
       STX    GRP1    
       STX    GRP0    
       STX    REFP0   
       STX    REFP1   
       LDA    #$38    
       JSR    LF691   
       LDA    #$3F    
       INX            
       JSR    LF691   
       LDX    #$09    
LF122: LDA    LF7C3,X 
       STA    $81,X   
       DEX            
       BPL    LF122   
       JSR    LF4F8   
       LDY    #$25    
       STY    TIM64T  
       LDY    $91     
       BEQ    LF174   
       STA    AUDC1   
       STA    $DF     
       BMI    LF171   
       CPY    #$0A    
       BCS    LF16F   
       LDA    SWCHA   
       DEY            
       BEQ    LF16B   
       JSR    LF59C   
       LDX    $91     
       LDA    LF7F2,X 
       STA    $DD     
       AND    #$80    
       ORA    $BD     
       STA    $BD     
       LDX    $8C     
       LDY    #$AA    
       CPX    #$05    
       BCC    LF160   
       LDY    #$0A    
LF160: STY    $EC     
       LDA    LF7E6,X 
       AND    #$F0    
       STA    $EB     
       STA    $F6     
LF16B: CMP    #$F0    
       BCS    LF171   
LF16F: DEC    $91     
LF171: JMP    LF37F   
LF174: STY    $E7     
       STY    $E6     
       CLC            
       LDA    $9D     
       ADC    #$AA    
       STA    $9D     
       LDA    #$01    
       SED            
       ADC    $EA     
       STA    $EA     
       TYA            
       JSR    LF55E   
       BCC    LF18E   
       STX    $91     
LF18E: LDA    COLUP1  
       BPL    LF1F7   
       LDX    $EF     
       LDA    $CE,X   
       AND    #$03    
       CMP    #$01    
       BEQ    LF1AB   
       LDA    $D6,X   
       BCS    LF1A4   
       SBC    #$06    
       BCC    LF1A8   
LF1A4: SBC    $B6,X   
       BCS    LF1A9   
LF1A8: TYA            
LF1A9: CMP    $9A     
LF1AB: TYA            
       BCS    LF1B0   
       EOR    #$01    
LF1B0: STA    $9B     
       EOR    #$01    
       STA    $9C     
       BIT    $8F     
       BVS    LF1F7   
       LDY    $CE,X   
       LDA    #$F8    
       CLC            
       ADC    $D6,X   
       SEC            
       SBC    $B6,X   
       SEC            
       SBC    $9A     
       CMP    #$F8    
       BCC    LF1F7   
       TYA            
       AND    #$03    
       BEQ    LF1F7   
       TAY            
       DEY            
       BNE    LF1D8   
       STY    $FA     
       BEQ    LF1E3   
LF1D8: LDA    $BE,X   
       SBC    #$09    
       SEC            
       SBC    $99     
       CMP    #$EF    
       BCC    LF1F7   
LF1E3: BIT    $F5     
       BMI    LF1F9   
       TYA            
       BNE    LF1F4   
       LDA    $E0     
       AND    #$0F    
       BNE    LF1F7   
       BIT    $F8     
       BPL    LF1F7   
LF1F4: JSR    LF575   
LF1F7: LDY    COLUP1  
LF1F9: STY    $F5     
       LDX    #$07    
LF1FD: LDA    $CE,X   
       AND    #$03    
       BNE    LF249   
       BIT    $92     
       BPL    LF249   
       LDA    $D6,X   
       SEC            
       SBC    $B6,X   
       SEC            
       SBC    $9A     
       SEC            
       SBC    #$07    
       CMP    #$04    
       BCS    LF249   
       LDA    $99     
       CMP    #$40    
       BCS    LF226   
       LDA    $BE,X   
       CMP    #$64    
       LDA    $99     
       BCC    LF226   
       ADC    #$9F    
LF226: CLC            
       SBC    #$02    
       SEC            
       SBC    $BE,X   
       CMP    #$1C    
       BCC    LF239   
       SBC    #$20    
       CMP    #$DC    
       BCC    LF24C   
       JSR    LF575   
LF239: LDA    $EB     
       SEC            
       SED            
       SBC    #$01    
       CLD            
       STA    $EB     
       LDA    #$08    
       JSR    LF58D   
       BCS    LF24C   
LF249: DEX            
       BPL    LF1FD   
LF24C: LDA    $8F     
       AND    #$0F    
       TAX            
       LDA    SWCHA   
       BIT    $8F     
       BVS    LF25E   
       CMP    #$C0    
       LDY    #$00    
       BCS    LF262   
LF25E: LDY    $E2     
       BNE    LF283   
LF262: STY    AUDC1   
       STY    $E2     
       STX    $8F     
       ASL            
       BCC    LF26F   
       BMI    LF287   
       DEX            
       DEX            
LF26F: INX            
       CPX    #$10    
       BCS    LF276   
       STX    $8F     
LF276: JSR    LF552   
       INY            
       INY            
       LDA    $E5     
       BNE    LF283   
       LDA    #$08    
       STA    AUDC1   
LF283: DEY            
       STY    $E2     
       INY            
LF287: STY    $E5     
       JSR    LF552   
       LSR            
       TAX            
       LDA    #$A0    
       BIT    $8F     
       BVS    LF2A6   
       LDA    LF7A4,Y 
       CMP    $8E     
       BEQ    LF2A3   
       BCS    LF29F   
       DEC    $8E     
LF29F: BCC    LF2A3   
       INC    $8E     
LF2A3: LDA    LF7F8,X 
LF2A6: STA    $95     
       JSR    LF552   
       CMP    #$04    
       BCC    LF2B8   
       LDX    #$04    
       CPX    $8C     
       BCS    LF2B8   
       LDA    LF7EC,Y 
LF2B8: ADC    #$04    
       LDX    #$01    
LF2BC: ASL            
       ASL            
       ASL            
       ASL            
       CMP    $93,X   
       BEQ    LF2CC   
       BCC    LF2C8   
       INC    $93,X   
LF2C8: BCS    LF2CC   
       DEC    $93,X   
LF2CC: LDA    $93,X   
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       SBC    #$04    
       BEQ    LF2DD   
       BCS    LF2DB   
       SBC    #$01    
LF2DB: ADC    #$00    
LF2DD: STA    $EF     
       LDY    $8C     
       LDA    LF7E6,Y 
       LSR            
       LDA    $8E     
       BCS    LF2EC   
       ADC    #$20    
       ROR            
LF2EC: LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    #$00    
       BEQ    LF2F8   
LF2F6: ADC    $EF     
LF2F8: CLC            
       DEY            
       BPL    LF2F6   
       INY            
       ADC    $E3,X   
       BPL    LF30D   
LF301: CMP    #$DF    
       BCS    LF311   
       ADC    #$20    
       DEY            
       BNE    LF301   
LF30A: INY            
       SBC    #$20    
LF30D: CMP    #$20    
       BCS    LF30A   
LF311: STY    $F3,X   
       STA    $E3,X   
       CLC            
       LDA    $8F     
       ADC    #$01    
       LSR            
       AND    #$0F    
       DEX            
       BPL    LF2BC   
       LDA    #$4C    
       BIT    $F8     
       BVS    LF334   
       TYA            
       LDY    #$00    
       CLC            
       ADC    $99     
       CMP    #$08    
       BCC    LF336   
       CMP    #$90    
       BCS    LF336   
LF334: STA    $99     
LF336: STY    $DF     
       LDX    #$07    
       CLC            
       LDA    $92     
       BMI    LF344   
       CLC            
       ADC    $F4     
       STA    $92     
LF344: LDA    $D6,X   
       CLC            
       ADC    $F4     
       BCS    LF34D   
       STA    $D6,X   
LF34D: DEX            
       BPL    LF344   
       LDX    #$04    
       CPX    $8C     
       BCS    LF379   
       LDA    REFP1   
       BIT    $F8     
       BMI    LF35E   
       LDA    $FA     
LF35E: LDX    $E0     
       BNE    LF36B   
       TAY            
       BMI    LF379   
       LDA    #$09    
       TAY            
       JSR    LF593   
LF36B: LDY    #$7C    
       INX            
       CPX    #$10    
       BEQ    LF379   
       BCC    LF37B   
       LDX    #$00    
       ASL            
       BCC    LF37F   
LF379: LDY    #$78    
LF37B: STY    $9A     
       STX    $E0     
LF37F: LDY    INTIM   
       BNE    LF37F   
       DEY            
       STA    WSYNC   
       STY    VSYNC   
       STY    VBLANK  
       STY    $EF     
       LDX    #$05    
       STX    CTRLPF  
       DEX            
       INC    $80     
       BNE    LF39C   
       INC    $E6     
       BNE    LF39C   
       STY    $E7     
LF39C: LDA    $F8     
       AND    #$08    
       BNE    LF3A4   
       LDY    #$0F    
LF3A4: TYA            
       LDY    $E7     
       BPL    LF3AB   
       AND    #$F7    
LF3AB: STA    $ED     
LF3AD: LDA    $E6     
       AND    $E7     
       EOR    LF7FB,X 
       AND    $ED     
       STA    $F8,X   
       STA    NUSIZ1,X
       DEX            
       BNE    LF3AD   
       STX    COLUPF  
       STX    $EE     
       LDA    SWCHB   
       STA    $F8     
LF3C6: LDY    #$2C    
       LSR            
       STA    WSYNC   
       STX    VSYNC   
       STY    TIM64T  
       LDY    $8C     
       ROR            
       BPL    LF3DD   
       ROL            
       CPY    #$05    
       ROR            
       ORA    REFP1   
       BMI    LF3F6   
LF3DD: LDA    LF7D9,Y 
       BNE    LF3E4   
       LDA    $F7     
LF3E4: STA    $F0     
       STA    $F1     
       LDX    #$3D    
LF3EA: LDA    #$00    
       STA    $AD,X   
       LDA    LF7AB,X 
       STA    $8D,X   
       DEX            
       BNE    LF3EA   
LF3F6: BCS    LF423   
       DEC    $8B     
       BPL    LF425   
       INY            
       TYA            
       CMP    #$0A    
       BCC    LF403   
       TXA            
LF403: STA    $8C     
       SED            
       CLC            
       ADC    #$01    
       CLD            
       STA    $EB     
       STX    $E6     
       STX    $E7     
       LDY    $80     
       BNE    LF415   
       TAY            
LF415: STY    $F7     
       LDA    #$AA    
       STA    $EC     
       STA    $EA     
       STA    $E9     
       STA    $91     
       LDX    #$1D    
LF423: STX    $8B     
LF425: SEC            
       LDA    $DD     
       SBC    #$05    
       BCC    LF439   
       SBC    $BD     
       BCC    LF439   
       LDX    $B6     
       BPL    LF439   
       STA    $DE     
       JSR    LF59C   
LF439: LDX    $EE     
       LDY    $D6,X   
       LDA    $B6,X   
       BPL    LF45B   
LF441: SBC    #$01    
       BPL    LF44D   
       LDA    #$FF    
       STA    $B6,X   
       INC    $EE     
       BPL    LF439   
LF44D: CMP    #$0F    
       BNE    LF45A   
       LDA    #$FB    
       JSR    LF656   
       STA    $BE,X   
       LDA    #$0F    
LF45A: DEY            
LF45B: CPY    #$96    
       BCS    LF441   
       STY    $D6,X   
       STA    $B6,X   
LF463: LDA    $DF     
       SEC            
       EOR    #$FF    
       JSR    LF657   
       STA    $BE,X   
       JSR    LF66E   
       LSR            
       ORA    $CE,X   
       ASL            
       STA    $9E,X   
       TYA            
       SBC    #$04    
       EOR    #$80    
       BMI    LF47E   
       TYA            
LF47E: STA    $A6,X   
       INX            
       CPX    #$08    
       BCC    LF463   
       LDX    $E1     
       BEQ    LF493   
       DEX            
       BPL    LF493   
       INX            
       INX            
       INX            
       BMI    LF493   
       LDX    #$0B    
LF493: TXA            
       LSR            
       STX    $E1     
       STA    AUDV0   
LF499: LDX    INTIM   
       BNE    LF499   
       STX    WSYNC   
       STX    VBLANK  
       LDX    #$04    
       STX    AUDF1   
LF4A6: LDY    #$02    
       STY    AUDF0   
LF4AA: DEX            
       LDA    $E9,X   
       AND    #$0F    
       STA.wy $0081,Y 
       LDA    $E9,X   
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF4C0   
       CPX    #$02    
       BNE    LF4C0   
       LDA    #$0A    
LF4C0: STA.wy $0085,Y 
       DEY            
       DEY            
       BPL    LF4AA   
       JSR    LF4F8   
       BNE    LF4A6   
       LDX    $9C     
       LDY    #$3F    
       STY    PF0     
       STY    VDELP0,X
       JSR    LF54D   
       LDX    $9B     
       LDA    $99     
       JSR    LF691   
       TYA            
       EOR    $8F     
       STA    REFP0,X 
       LDA    #$97    
       STA    $8D     
       STA    AUDV1   
       LDA    $FB     
       STA    COLUP0,X
       LDA    #$00    
       STA    NUSIZ0,X
       STA    HMCLR   
       STA    CXCLR   
       JMP    LF018   
LF4F8: STX    $FA     
       DEX            
       STX    HMP1    
       JSR    LF69B   
       LDA    #$01    
       LDY    $83     
       CPY    #$0A    
       LDX    $E8     
       LDY    #$00    
       BCS    LF50F   
       DEY            
       STX    $89     
LF50F: STY    $F4     
       SEC            
       STA    NUSIZ1  
       ROL            
       STA    NUSIZ0  
       LDA    $F9     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$70    
LF51F: SBC    #$0F    
       TAY            
       LDA    LF70B,Y 
       AND    $F4     
       ASL            
       STA    WSYNC   
       ORA    ($85),Y 
       STA    GRP1    
       LDA    ($89),Y 
       STA    GRP0    
       LDA    ($83),Y 
       TAX            
       TXS            
       LDA    ($81),Y 
       TAX            
       LDA    #$00    
       ROR            
       ORA    ($87),Y 
       STX    GRP0    
       STA    GRP1    
       TSX            
       STX    GRP0    
       TYA            
       BNE    LF51F   
       LDX    #$FD    
       TXS            
       LDX    $FA     
LF54D: STA    GRP1    
       STA    GRP0    
       RTS            

LF552: LDA    $8F     
       AND    #$0F    
       CMP    #$08    
       BCC    LF55C   
       EOR    #$0F    
LF55C: TAY            
       RTS            

LF55E: SED            
       ADC    $E9     
       CLD            
       BCC    LF566   
       ADC    #$9F    
LF566: CMP    #$60    
       BCC    LF56E   
       ADC    #$9F    
       INC    $E8     
LF56E: STA    $E9     
       LDA    $E8     
       CMP    #$05    
       RTS            

LF575: BIT    $92     
       BPL    LF59B   
       LDA    $8F     
       CMP    #$08    
       LDA    #$00    
       STA    AUDC1   
       STA    $E1     
       STA    $8E     
       ADC    #$47    
       STA    $8F     
       STA    $E2     
       LDA    #$02    
LF58D: LDY    #$74    
       STY    $92     
       LDY    #$E0    
LF593: BIT    $E1     
       BMI    LF59B   
       STA    AUDC0   
       STY    $E1     
LF59B: RTS            

LF59C: LDY    $90     
       DEY            
       TYA            
       AND    #$07    
       STA    $90     
       CMP    #$06    
       BNE    LF5C2   
       LDA    $F6     
       SED            
       SBC    #$02    
       CLD            
       STA    $F6     
       BCS    LF5C2   
       LDX    #$04    
LF5B4: LDA    $EB     
       CLC            
       JSR    LF55E   
       DEX            
       BPL    LF5B4   
LF5BD: STX    $91     
       STX    $DE     
       RTS            

LF5C2: LDX    #$00    
LF5C4: LDA    $9F,X   
       STA    $9E,X   
       INX            
       CPX    #$40    
       BCC    LF5C4   
       LDA    $90     
       TAY            
       ORA    #$04    
       TAX            
       AND    #$03    
       BNE    LF5FD   
       TAY            
       LDA    $F6     
       BNE    LF5E4   
       LDY    #$04    
       LDA    $90     
       BNE    LF5E4   
       INX            
       INY            
LF5E4: LDA    $8C     
       CMP    #$05    
       BCC    LF5FD   
       SED            
       LDA    $EB     
       SBC    #$01    
       STA    $EB     
       CLD            
       TAX            
       BNE    LF5F9   
       DEX            
       JSR    LF5BD   
LF5F9: LDA    #$07    
       TAX            
       TAY            
LF5FD: LDA    LF7CD,X 
       STA    $BD     
       STY    $D5     
       LDA    LF7C9,X 
       STA    $B5     
       LDA    LF7D1,X 
       STA    $CD     
       LDA    $F0     
       ASL            
       EOR    $F0     
       ASL            
       ASL            
       ROL    $F1     
       ROL    $F0     
       LDA    $F1     
       AND    #$3F    
       SEC            
       SBC    #$20    
       LDY    $8C     
       CPY    #$05    
       BCS    LF64E   
       ADC    LF7DE,X 
       BIT    $F8     
       BMI    LF633   
       CLC            
       ADC    LF6F8,X 
       BIT    $F8     
LF633: BVS    LF64F   
       CPX    #$04    
       BNE    LF64F   
       CLC            
       ADC    $C1     
       CMP    #$EC    
       BCS    LF644   
       CMP    #$10    
       BCS    LF646   
LF644: ADC    #$28    
LF646: CMP    #$70    
       BCC    LF653   
       SBC    #$28    
       BCS    LF646   
LF64E: ASL            
LF64F: DEX            
       JSR    LF656   
LF653: STA    $C5     
       RTS            

LF656: CLC            
LF657: STA    $F3     
       ADC    $BE,X   
       BIT    $F3     
       BMI    LF663   
       BCC    LF667   
       BCS    LF66B   
LF663: BCS    LF66D   
       ADC    #$A0    
LF667: CMP    #$A0    
       BCC    LF66D   
LF66B: SBC    #$A0    
LF66D: RTS            

LF66E: CLC            
       ADC    #$02    
       TAY            
       AND    #$0F    
       STA    $F4     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $F4     
       CMP    #$0F    
       BCC    LF686   
       SBC    #$0F    
       INY            
LF686: EOR    #$07    
       ASL            
       ASL            
       ASL            
       STA    WSYNC   
       ASL            
       STA    HMCLR   
       RTS            

LF691: JSR    LF66E   
       STA    HMP0,X  
LF696: DEY            
       BPL    LF696   
       STA    RESP0,X 
LF69B: STA    WSYNC   
       STA    HMOVE   
       RTS            

LF6A0: .byte $0C,$1E,$3D,$5D,$BA,$38,$28,$AB,$6C,$38,$38,$6C,$44,$C3,$81,$00
       .byte $00,$00,$00,$00,$0E,$38,$F7,$3C,$68,$28,$28,$38,$38,$3A,$5C,$2E
       .byte $1E,$0F,$03,$00,$08,$18,$12,$36,$34,$6C,$F8,$B8,$28,$28,$38,$3A
       .byte $1E,$5C,$5C,$3E,$1E,$06,$00,$00,$00,$00,$FE,$30,$7F,$2C,$38,$1C
       .byte $14,$1C,$1C,$4C,$2E,$1E,$0E,$07,$03,$03,$28,$28,$28,$28,$28,$38
       .byte $3C,$2C,$34,$3C,$7D,$5D,$5D,$7F
LF6F8: .byte $3E,$1E,$0C,$0C,$00,$00,$30,$78,$1E,$3F,$3F,$1E,$06,$3E,$1E,$0C
       .byte $1E,$1E,$00
LF70B: .byte $80,$AD,$50,$BA,$E9,$33,$0C,$30,$23,$06,$23,$33,$0C,$33,$23,$00
       .byte $C0,$A9,$58,$8A,$AB,$33,$0C,$30,$03,$3F,$03,$33,$0C,$33,$03,$00
       .byte $40,$E9,$5C,$BA,$AF,$33,$0C,$1E,$06,$26,$3E,$3E,$06,$1E,$1F,$00
       .byte $00,$A9,$56,$A2,$AD,$33,$0C,$03,$03,$16,$30,$30,$03,$33,$33,$00
       .byte $40,$ED,$53,$3A,$E9,$33,$3C,$23,$23,$0E,$30,$31,$21,$33,$33,$00
       .byte $40,$41,$11,$80,$00,$1E,$1C,$3E,$1E,$06,$3F,$1E,$3F,$1E,$1E,$00
       .byte $00,$0F,$F0,$FE,$00,$08,$08,$08,$08,$08,$08,$08,$18,$38,$78,$F8
       .byte $78,$38,$18,$00,$3C,$7E,$1F,$7F,$FF,$FF,$FE,$FE,$7E,$78,$7C,$7C
       .byte $3C,$3C,$1C,$3C,$F8,$FE,$FC,$FC,$7C,$7C,$7C,$78,$78,$38,$38,$30
       .byte $10,$10,$00,$7C,$FF,$FF,$7E,$1E,$0C
LF7A4: .byte $00,$20,$60,$A0,$E0,$E0,$E0
LF7AB: .byte $E0,$80,$08,$10,$10,$80,$40,$80,$EA,$F6,$00,$F7,$4C,$78,$00,$01
LF7BB: .byte $86,$0C,$D6,$D4,$44,$0A,$DA,$C6
LF7C3: .byte $0D,$F7,$0F,$F7,$0C,$F7
LF7C9: .byte $0E,$F7,$0A,$F7
LF7CD: .byte $6F,$9D,$7E,$7E
LF7D1: .byte $0F,$07,$1F,$1F,$02,$05,$55,$55
LF7D9: .byte $53,$3C,$2F,$64,$00
LF7DE: .byte $23,$E7,$CB,$8E,$00,$08,$30,$E8
LF7E6: .byte $22,$42,$33,$53,$33,$20
LF7EC: .byte $31,$51,$91,$91,$04,$06
LF7F2: .byte $08,$0B,$18,$28,$50,$A0
LF7F8: .byte $D6,$B0,$C3
LF7FB: .byte $EA,$00,$F0,$48,$0E,$78,$D8,$A2,$FF,$9A,$E8,$8A,$95,$00,$E8,$D0
       .byte $FB,$C6,$8C,$4C,$C6,$F3,$B1,$95,$88,$84,$F3,$A6,$9B,$C6,$8D,$85
       .byte $02,$95,$1B,$F0,$42,$A6,$EE,$A5,$8D,$D5,$D6,$F0,$14,$38,$E5,$9A
       .byte $C9,$14,$A8,$B5,$AE,$85,$97,$B5,$C6,$85,$F2,$90,$D9,$A9,$00,$F0
       .byte $D7,$24,$07,$30,$02,$86,$EF,$B5,$9E,$A6,$9C,$95,$20,$95,$0B,$A4
       .byte $F3,$C6,$F3,$C0,$14,$90,$04,$A9,$00,$B0,$02,$B1,$95,$A6,$9B,$A4
       .byte $EE,$C6,$8D,$85,$02,$95,$1B,$F0,$48,$B6,$A6,$30,$17,$CA,$10,$FD
       .byte $A6,$9C,$95,$10,$B9,$CE,$00,$A8,$B9,$BB,$F7,$45,$F9,$25,$ED,$95
       .byte $06,$4C,$96,$F0,$B9,$CE,$00,$A8,$B9,$BB,$F7,$45,$F9,$25,$ED,$A4
       .byte $9C,$99,$06,$00,$CA,$30,$FD,$A6,$9C,$95,$10,$85,$02,$85,$2A,$A4
       .byte $F3,$C0,$14,$90,$04,$A9,$00,$B0,$02,$B1,$95,$A6,$9B,$95,$1B,$C6
       .byte $8D,$F0,$57,$A6,$EE,$B4,$B6,$A6,$9C,$10,$18,$90,$02,$49,$05,$A4
       .byte $F3,$85,$02,$95,$04,$C0,$14,$90,$26,$A9,$00,$B0,$24,$B1,$97,$A6
       .byte $9C,$95,$1B,$84,$F4,$C6,$F3,$A5,$F2,$C0,$10,$D0,$DE,$95,$20,$A4
       .byte $F3,$C0,$14,$85,$02,$85,$2A,$95,$04,$90,$04,$A9,$00,$B0,$02,$B1
       .byte $95,$A6,$9B,$95,$1B,$C6,$8D,$F0,$0F,$A4,$F4,$88,$10,$CF,$E6,$EE
       .byte $A4,$F3,$88,$C0,$14,$4C,$36,$F0,$E6,$EE,$85,$02,$A2,$00,$86,$25
       .byte $86,$26,$86,$1C,$86,$1B,$86,$0B,$86,$0C,$A9,$38,$20,$91,$F6,$A9
       .byte $3F,$E8,$20,$91,$F6,$A2,$09,$BD,$C3,$F7,$95,$81,$CA,$10,$F8,$20
       .byte $F8,$F4,$A0,$25,$8C,$96,$02,$A4,$91,$F0,$3E,$85,$16,$85,$DF,$30
       .byte $35,$C0,$0A,$B0,$2F,$AD,$80,$02,$88,$F0,$25,$20,$9C,$F5,$A6,$91
       .byte $BD,$F2,$F7,$85,$DD,$29,$80,$05,$BD,$85,$BD,$A6,$8C,$A0,$AA,$E0
       .byte $05,$90,$02,$A0,$0A,$84,$EC,$BD,$E6,$F7,$29,$F0,$85,$EB,$85,$F6
       .byte $C9,$F0,$B0,$02,$C6,$91,$4C,$7F,$F3,$84,$E7,$84,$E6,$18,$A5,$9D
       .byte $69,$AA,$85,$9D,$A9,$01,$F8,$65,$EA,$85,$EA,$98,$20,$5E,$F5,$90
       .byte $02,$86,$91,$A5,$07,$10,$65,$A6,$EF,$B5,$CE,$29,$03,$C9,$01,$F0
       .byte $0F,$B5,$D6,$B0,$04,$E9,$06,$90,$04,$F5,$B6,$B0,$01,$98,$C5,$9A
       .byte $98,$B0,$02,$49,$01,$85,$9B,$49,$01,$85,$9C,$24,$8F,$70,$3D,$B4
       .byte $CE,$A9,$F8,$18,$75,$D6,$38,$F5,$B6,$38,$E5,$9A,$C9,$F8,$90,$2C
       .byte $98,$29,$03,$F0,$27,$A8,$88,$D0,$04,$84,$FA,$F0,$0B,$B5,$BE,$E9
       .byte $09,$38,$E5,$99,$C9,$EF,$90,$14,$24,$F5,$30,$12,$98,$D0,$0A,$A5
       .byte $E0,$29,$0F,$D0,$07,$24,$F8,$10,$03,$20,$75,$F5,$A4,$07,$84,$F5
       .byte $A2,$07,$B5,$CE,$29,$03,$D0,$46,$24,$92,$10,$42,$B5,$D6,$38,$F5
       .byte $B6,$38,$E5,$9A,$38,$E9,$07,$C9,$04,$B0,$33,$A5,$99,$C9,$40,$B0
       .byte $0A,$B5,$BE,$C9,$64,$A5,$99,$90,$02,$69,$9F,$18,$E9,$02,$38,$F5
       .byte $BE,$C9,$1C,$90,$09,$E9,$20,$C9,$DC,$90,$16,$20,$75,$F5,$A5,$EB
       .byte $38,$F8,$E9,$01,$D8,$85,$EB,$A9,$08,$20,$8D,$F5,$B0,$03,$CA,$10
       .byte $B1,$A5,$8F,$29,$0F,$AA,$AD,$80,$02,$24,$8F,$70,$06,$C9,$C0,$A0
       .byte $00,$B0,$04,$A4,$E2,$D0,$21,$84,$16,$84,$E2,$86,$8F,$0A,$90,$04
       .byte $30,$1A,$CA,$CA,$E8,$E0,$10,$B0,$02,$86,$8F,$20,$52,$F5,$C8,$C8
       .byte $A5,$E5,$D0,$04,$A9,$08,$85,$16,$88,$84,$E2,$C8,$84,$E5,$20,$52
       .byte $F5,$4A,$AA,$A9,$A0,$24,$8F,$70,$12,$B9,$A4,$F7,$C5,$8E,$F0,$08
       .byte $B0,$02,$C6,$8E,$90,$02,$E6,$8E,$BD,$F8,$F7,$85,$95,$20,$52,$F5
       .byte $C9,$04,$90,$09,$A2,$04,$E4,$8C,$B0,$03,$B9,$EC,$F7,$69,$04,$A2
       .byte $01,$0A,$0A,$0A,$0A,$D5,$93,$F0,$08,$90,$02,$F6,$93,$B0,$02,$D6
       .byte $93,$B5,$93,$4A,$4A,$4A,$4A,$38,$E9,$04,$F0,$06,$B0,$02,$E9,$01
       .byte $69,$00,$85,$EF,$A4,$8C,$B9,$E6,$F7,$4A,$A5,$8E,$B0,$03,$69,$20
       .byte $6A,$4A,$4A,$4A,$4A,$4A,$A8,$A9,$00,$F0,$02,$65,$EF,$18,$88,$10
       .byte $FA,$C8,$75,$E3,$10,$0C,$C9,$DF,$B0,$0C,$69,$20,$88,$D0,$F7,$C8
       .byte $E9,$20,$C9,$20,$B0,$F9,$94,$F3,$95,$E3,$18,$A5,$8F,$69,$01,$4A
       .byte $29,$0F,$CA,$10,$9C,$A9,$4C,$24,$F8,$70,$0E,$98,$A0,$00,$18,$65
       .byte $99,$C9,$08,$90,$06,$C9,$90,$B0,$02,$85,$99,$84,$DF,$A2,$07,$18
       .byte $A5,$92,$30,$05,$18,$65,$F4,$85,$92,$B5,$D6,$18,$65,$F4,$B0,$02
       .byte $95,$D6,$CA,$10,$F4,$A2,$04,$E4,$8C,$B0,$23,$A5,$0C,$24,$F8,$30
       .byte $02,$A5,$FA,$A6,$E0,$D0,$09,$A8,$30,$14,$A9,$09,$A8,$20,$93,$F5
       .byte $A0,$7C,$E8,$E0,$10,$F0,$07,$90,$07,$A2,$00,$0A,$90,$06,$A0,$78
       .byte $84,$9A,$86,$E0,$AC,$84,$02,$D0,$FB,$88,$85,$02,$84,$00,$84,$01
       .byte $84,$EF,$A2,$05,$86,$0A,$CA,$E6,$80,$D0,$06,$E6,$E6,$D0,$02,$84
       .byte $E7,$A5,$F8,$29,$08,$D0,$02,$A0,$0F,$98,$A4,$E7,$10,$02,$29,$F7
       .byte $85,$ED,$A5,$E6,$25,$E7,$5D,$FB,$F7,$25,$ED,$95,$F8,$95,$05,$CA
       .byte $D0,$F0,$86,$08,$86,$EE,$AD,$82,$02,$85,$F8,$A0,$2C,$4A,$85,$02
       .byte $86,$00,$8C,$96,$02,$A4,$8C,$6A,$10,$08,$2A,$C0,$05,$6A,$05,$0C
       .byte $30,$19,$B9,$D9,$F7,$D0,$02,$A5,$F7,$85,$F0,$85,$F1,$A2,$3D,$A9
       .byte $00,$95,$AD,$BD,$AB,$F7,$95,$8D,$CA,$D0,$F4,$B0,$2B,$C6,$8B,$10
       .byte $29,$C8,$98,$C9,$0A,$90,$01,$8A,$85,$8C,$F8,$18,$69,$01,$D8,$85
       .byte $EB,$86,$E6,$86,$E7,$A4,$80,$D0,$01,$A8,$84,$F7,$A9,$AA,$85,$EC
       .byte $85,$EA,$85,$E9,$85,$91,$A2,$1D,$86,$8B,$38,$A5,$DD,$E9,$05,$90
       .byte $0D,$E5,$BD,$90,$09,$A6,$B6,$10,$05,$85,$DE,$20,$9C,$F5,$A6,$EE
       .byte $B4,$D6,$B5,$B6,$10,$1A,$E9,$01,$10,$08,$A9,$FF,$95,$B6,$E6,$EE
       .byte $10,$EC,$C9,$0F,$D0,$09,$A9,$FB,$20,$56,$F6,$95,$BE,$A9,$0F,$88
       .byte $C0,$96,$B0,$E2,$94,$D6,$95,$B6,$A5,$DF,$38,$49,$FF,$20,$57,$F6
       .byte $95,$BE,$20,$6E,$F6,$4A,$15,$CE,$0A,$95,$9E,$98,$E9,$04,$49,$80
       .byte $30,$01,$98,$95,$A6,$E8,$E0,$08,$90,$DE,$A6,$E1,$F0,$0A,$CA,$10
       .byte $07,$E8,$E8,$E8,$30,$02,$A2,$0B,$8A,$4A,$86,$E1,$85,$19,$AE,$84
       .byte $02,$D0,$FB,$86,$02,$86,$01,$A2,$04,$86,$18,$A0,$02,$84,$17,$CA
       .byte $B5,$E9,$29,$0F,$99,$81,$00,$B5,$E9,$4A,$4A,$4A,$4A,$D0,$06,$E0
       .byte $02,$D0,$02,$A9,$0A,$99,$85,$00,$88,$88,$10,$E3,$20,$F8,$F4,$D0
       .byte $DA,$A6,$9C,$A0,$3F,$84,$0D,$94,$25,$20,$4D,$F5,$A6,$9B,$A5,$99
       .byte $20,$91,$F6,$98,$45,$8F,$95,$0B,$A9,$97,$85,$8D,$85,$1A,$A5,$FB
       .byte $95,$06,$A9,$00,$95,$04,$85,$2B,$85,$2C,$4C,$18,$F0,$86,$FA,$CA
       .byte $86,$21,$20,$9B,$F6,$A9,$01,$A4,$83,$C0,$0A,$A6,$E8,$A0,$00,$B0
       .byte $03,$88,$86,$89,$84,$F4,$38,$85,$05,$2A,$85,$04,$A5,$F9,$85,$06
       .byte $85,$07,$A9,$70,$E9,$0F,$A8,$B9,$0B,$F7,$25,$F4,$0A,$85,$02,$11
       .byte $85,$85,$1C,$B1,$89,$85,$1B,$B1,$83,$AA,$9A,$B1,$81,$AA,$A9,$00
       .byte $6A,$11,$87,$86,$1B,$85,$1C,$BA,$86,$1B,$98,$D0,$D7,$A2,$FD,$9A
       .byte $A6,$FA,$85,$1C,$85,$1B,$60,$A5,$8F,$29,$0F,$C9,$08,$90,$02,$49
       .byte $0F,$A8,$60,$F8,$65,$E9,$D8,$90,$02,$69,$9F,$C9,$60,$90,$04,$69
       .byte $9F,$E6,$E8,$85,$E9,$A5,$E8,$C9,$05,$60,$24,$92,$10,$22,$A5,$8F
       .byte $C9,$08,$A9,$00,$85,$16,$85,$E1,$85,$8E,$69,$47,$85,$8F,$85,$E2
       .byte $A9,$02,$A0,$74,$84,$92,$A0,$E0,$24,$E1,$30,$04,$85,$15,$84,$E1
       .byte $60,$A4,$90,$88,$98,$29,$07,$85,$90,$C9,$06,$D0,$1A,$A5,$F6,$F8
       .byte $E9,$02,$D8,$85,$F6,$B0,$10,$A2,$04,$A5,$EB,$18,$20,$5E,$F5,$CA
       .byte $10,$F7,$86,$91,$86,$DE,$60,$A2,$00,$B5,$9F,$95,$9E,$E8,$E0,$40
       .byte $90,$F7,$A5,$90,$A8,$09,$04,$AA,$29,$03,$D0,$26,$A8,$A5,$F6,$D0
       .byte $08,$A0,$04,$A5,$90,$D0,$02,$E8,$C8,$A5,$8C,$C9,$05,$90,$13,$F8
       .byte $A5,$EB,$E9,$01,$85,$EB,$D8,$AA,$D0,$04,$CA,$20,$BD,$F5,$A9,$07
       .byte $AA,$A8,$BD,$CD,$F7,$85,$BD,$84,$D5,$BD,$C9,$F7,$85,$B5,$BD,$D1
       .byte $F7,$85,$CD,$A5,$F0,$0A,$45,$F0,$0A,$0A,$26,$F1,$26,$F0,$A5,$F1
       .byte $29,$3F,$38,$E9,$20,$A4,$8C,$C0,$05,$B0,$28,$7D,$DE,$F7,$24,$F8
       .byte $30,$06,$18,$7D,$F8,$F6,$24,$F8,$70,$1A,$E0,$04,$D0,$16,$18,$65
       .byte $C1,$C9,$EC,$B0,$04,$C9,$10,$B0,$02,$69,$28,$C9,$70,$90,$09,$E9
       .byte $28,$B0,$F8,$0A,$CA,$20,$56,$F6,$85,$C5,$60,$18,$85,$F3,$75,$BE
       .byte $24,$F3,$30,$04,$90,$06,$B0,$08,$B0,$08,$69,$A0,$C9,$A0,$90,$02
       .byte $E9,$A0,$60,$18,$69,$02,$A8,$29,$0F,$85,$F4,$98,$4A,$4A,$4A,$4A
       .byte $A8,$18,$65,$F4,$C9,$0F,$90,$03,$E9,$0F,$C8,$49,$07,$0A,$0A,$0A
       .byte $85,$02,$0A,$85,$2B,$60,$20,$6E,$F6,$95,$20,$88,$10,$FD,$95,$10
       .byte $85,$02,$85,$2A,$60,$0C,$1E,$3D,$5D,$BA,$38,$28,$AB,$6C,$38,$38
       .byte $6C,$44,$C3,$81,$00,$00,$00,$00,$00,$0E,$38,$F7,$3C,$68,$28,$28
       .byte $38,$38,$3A,$5C,$2E,$1E,$0F,$03,$00,$08,$18,$12,$36,$34,$6C,$F8
       .byte $B8,$28,$28,$38,$3A,$1E,$5C,$5C,$3E,$1E,$06,$00,$00,$00,$00,$FE
       .byte $30,$7F,$2C,$38,$1C,$14,$1C,$1C,$4C,$2E,$1E,$0E,$07,$03,$03,$28
       .byte $28,$28,$28,$28,$38,$3C,$2C,$34,$3C,$7D,$5D,$5D,$7F,$3E,$1E,$0C
       .byte $0C,$00,$00,$30,$78,$1E,$3F,$3F,$1E,$06,$3E,$1E,$0C,$1E,$1E,$00
       .byte $80,$AD,$50,$BA,$E9,$33,$0C,$30,$23,$06,$23,$33,$0C,$33,$23,$00
       .byte $C0,$A9,$58,$8A,$AB,$33,$0C,$30,$03,$3F,$03,$33,$0C,$33,$03,$00
       .byte $40,$E9,$5C,$BA,$AF,$33,$0C,$1E,$06,$26,$3E,$3E,$06,$1E,$1F,$00
       .byte $00,$A9,$56,$A2,$AD,$33,$0C,$03,$03,$16,$30,$30,$03,$33,$33,$00
       .byte $40,$ED,$53,$3A,$E9,$33,$3C,$23,$23,$0E,$30,$31,$21,$33,$33,$00
       .byte $40,$41,$11,$80,$00,$1E,$1C,$3E,$1E,$06,$3F,$1E,$3F,$1E,$1E,$00
       .byte $00,$0F,$F0,$FE,$00,$08,$08,$08,$08,$08,$08,$08,$18,$38,$78,$F8
       .byte $78,$38,$18,$00,$3C,$7E,$1F,$7F,$FF,$FF,$FE,$FE,$7E,$78,$7C,$7C
       .byte $3C,$3C,$1C,$3C,$F8,$FE,$FC,$FC,$7C,$7C,$7C,$78,$78,$38,$38,$30
       .byte $10,$10,$00,$7C,$FF,$FF,$7E,$1E,$0C,$00,$20,$60,$A0,$E0,$E0,$E0
       .byte $E0,$80,$08,$10,$10,$80,$40,$80,$EA,$F6,$00,$F7,$4C,$78,$00,$01
       .byte $86,$0C,$D6,$D4,$44,$0A,$DA,$C6,$0D,$F7,$0F,$F7,$0C,$F7,$0E,$F7
       .byte $0A,$F7,$6F,$9D,$7E,$7E,$0F,$07,$1F,$1F,$02,$05,$55,$55,$53,$3C
       .byte $2F,$64,$00,$23,$E7,$CB,$8E,$00,$08,$30,$E8,$22,$42,$33,$53,$33
       .byte $20,$31,$51,$91,$91,$04,$06,$08,$0B,$18,$28,$50,$A0,$D6,$B0,$C3
       .byte $EA,$00,$F0,$48,$0E
