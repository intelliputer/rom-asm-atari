; Disassembly of roms/Skiing (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Skiing (32 in 1) (PAL).bin
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
       LDY    #$45    
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
LF3C6: LDY    #$4A    
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
LF70B: .byte $80,$00,$00,$00,$00,$33,$0C,$30,$23,$06,$23,$33,$0C,$33,$23,$00
       .byte $C0,$00,$00,$00,$00,$33,$0C,$30,$03,$3F,$03,$33,$0C,$33,$03,$00
       .byte $40,$00,$00,$00,$00,$33,$0C,$1E,$06,$26,$3E,$3E,$06,$1E,$1F,$00
       .byte $00,$00,$00,$00,$00,$33,$0C,$03,$03,$16,$30,$30,$03,$33,$33,$00
       .byte $40,$00,$00,$00,$00,$33,$3C,$23,$23,$0E,$30,$31,$21,$33,$33,$00
       .byte $40,$00,$00,$00,$00,$1E,$1C,$3E,$1E,$06,$3F,$1E,$3F,$1E,$1E,$00
       .byte $00,$00,$00,$00,$00,$08,$08,$08,$08,$08,$08,$08,$18,$38,$78,$F8
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
LF7FB: .byte $EA,$00,$F0,$48,$0E
