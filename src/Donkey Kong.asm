; Disassembly of roms/Donkey Kong.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Donkey Kong.bin
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
REFP0   =  $0B
REFP1   =  $0C
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
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
CXCLR   =  $2C
CXM1P   =  $31
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LFCFE   =   $FCFE

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
       JSR    LFA8A   
       LDA    #$02    
       STA    $A3     
       DEC    $91     
       DEC    $8E     
       LDA    $92     
       STA    COLUBK  
       LDY    #$FF    
       STY    WSYNC   
       STY    VBLANK  
       LDA    #$23    
       STA    TIM64T  
       INC    $E7     
       LDA    #$22    
       LDY    #$5D    
       LDX    #$05    
LF02E: STA    $F8,X   
       STY    $F2,X   
       DEX            
       BPL    LF02E   
       INC    $E8     
       LDA    $E8     
       AND    #$7F    
       BNE    LF05D   
       LDA    $8C     
       BPL    LF04F   
       LDA    $A4     
       SED            
       SEC            
       SBC    #$01    
       STA    $A4     
       CLD            
       BNE    LF04F   
       JSR    LFAA3   
LF04F: LDA    $8E     
       BPL    LF057   
       INC    $92     
       DEC    $9A     
LF057: INC    $8A     
       BNE    LF05D   
       STX    $8E     
LF05D: LDY    #$00    
       CPX    SWCHA   
       BNE    LF068   
       LDA    INPT4   
       BMI    LF073   
LF068: STY    $8A     
       LDA    $8E     
       BPL    LF073   
       STY    $8E     
       JSR    LFA8A   
LF073: LDA    SWCHB   
       LSR            
       BCS    LF091   
       LDA    $91     
       BMI    LF07F   
       DEC    $91     
LF07F: LDX    #$42    
       LDA    #$00    
LF083: STA    $4E,X   
       DEX            
       BNE    LF083   
       JSR    LFA8A   
       LDA    #$02    
       STA    $A3     
       BNE    LF0B2   
LF091: LDA    $8C     
       BMI    LF0B5   
       LDA    $8F     
       BNE    LF0B2   
       LDX    INPT4   
       BMI    LF0B2   
       LDA    $8C     
       LSR            
       BCS    LF0A6   
       LDA    $91     
       BPL    LF0B2   
LF0A6: LDA    #$50    
       STA    $A4     
       LDX    #$FF    
       STX    $8C     
       STY    $E8     
       STY    $91     
LF0B2: JMP    LF2CE   
LF0B5: LDA    $8D     
       BMI    LF0BD   
       DEC    $89     
       BMI    LF0C0   
LF0BD: JMP    LF24A   
LF0C0: LDA    #$02    
       STA    $89     
       LDA    SWCHA   
       LDX    $85     
       BEQ    LF0CD   
       LDA    $EB     
LF0CD: STA    $E5     
       LDX    $94     
       BPL    LF0DB   
       JSR    LF90A   
       BCC    LF0DB   
       JMP    LF166   
LF0DB: LDX    #$05    
       LDA    $9B     
       SEC            
       SBC    #$16    
       BCC    LF0E9   
LF0E4: DEX            
       SBC    #$1C    
       BCS    LF0E4   
LF0E9: STX    $ED     
       LDA    $E5     
       ASL            
       BMI    LF10D   
       INC    $E7     
       LDA    #$00    
       STA    $94     
       DEC    $93     
       DEC    $84     
       LDY    #$24    
       LDA    $90     
       BNE    LF107   
       LDA    $ED     
       LSR            
       BCS    LF107   
       LDY    #$29    
LF107: CPY    $93     
       BCC    LF131   
       BCS    LF12A   
LF10D: BCS    LF166   
       INC    $E7     
       LDA    #$08    
       STA    $94     
       INC    $93     
       INC    $84     
       LDY    #$7C    
       LDA    $90     
       BNE    LF126   
       LDA    $ED     
       LSR            
       BCC    LF126   
       LDY    #$75    
LF126: CPY    $93     
       BCS    LF131   
LF12A: STY    $93     
       STY    $84     
LF12E: JMP    LF24A   
LF131: LDA    $90     
       BNE    LF163   
       LDA    $ED     
       BEQ    LF163   
       CMP    #$05    
       BEQ    LF163   
       LDX    #$07    
       LDA    $93     
       LDY    $94     
       BNE    LF148   
       CLC            
       ADC    #$01    
LF148: DEX            
       BMI    LF163   
       CMP    LFDF8,X 
       BNE    LF148   
       LDA    $ED     
       LSR            
       BCC    LF15A   
       TYA            
       BNE    LF15D   
       BEQ    LF161   
LF15A: TYA            
       BNE    LF161   
LF15D: INC    $9B     
       BNE    LF163   
LF161: DEC    $9B     
LF163: JMP    LF1EF   
LF166: LDA    $E5     
       AND    #$20    
       BNE    LF1AD   
       DEC    $E7     
       LDA    $94     
       BMI    LF199   
       LDA    $86     
       BNE    LF12E   
       LDY    #$08    
       LDX    #$08    
       LDA    $90     
       BEQ    LF182   
       LDY    #$22    
       LDX    #$10    
LF182: LDA    $9B     
LF184: DEY            
       DEX            
       BMI    LF12E   
       CMP    LFACD,Y 
       BNE    LF184   
       LDA    $93     
       SEC            
       SBC    LFDC0,Y 
       CMP    #$03    
       BCS    LF182   
       STY    $EA     
LF199: LDA    #$FE    
       STA    $94     
       LDA    $9B     
       LDY    $EA     
       CMP    LFB00,Y 
       BNE    LF1A9   
LF1A6: JMP    LF24A   
LF1A9: INC    $9B     
       BNE    LF1EF   
LF1AD: LDA    $E5     
       AND    #$10    
       BNE    LF1A6   
       DEC    $E7     
       LDA    $94     
       BMI    LF1E0   
       LDA    $86     
       BNE    LF1A6   
       LDX    #$09    
       LDY    #$09    
       LDA    $90     
       BEQ    LF1C9   
       LDY    #$22    
       LDX    #$10    
LF1C9: LDA    $9B     
LF1CB: DEY            
       DEX            
       BMI    LF1A6   
       CMP    LFB00,Y 
       BNE    LF1CB   
       LDA    $93     
       SEC            
       SBC    LFDC0,Y 
       CMP    #$03    
       BCS    LF1C9   
       STY    $EA     
LF1E0: LDA    #$FF    
       STA    $94     
       LDA    $9B     
       LDY    $EA     
       CMP    LFACD,Y 
       BEQ    LF24A   
       DEC    $9B     
LF1EF: LDA    $90     
       BEQ    LF22A   
       LDX    $ED     
       CPX    #$01    
       BEQ    LF22A   
       LDA    $9D,X   
       LDY    $93     
       CPY    #$36    
       BEQ    LF20D   
       CPY    #$6A    
       BNE    LF22A   
       CMP    #$0C    
       BCS    LF223   
       ADC    #$0C    
       BPL    LF21C   
LF20D: CMP    #$12    
       BCS    LF223   
       CMP    #$06    
       BCC    LF219   
       CMP    #$0C    
       BCC    LF223   
LF219: CLC            
       ADC    #$06    
LF21C: STA    $9D,X   
       JSR    LFAAD   
       BNE    LF22A   
LF223: LDA    $85     
       BNE    LF22A   
       JSR    LFAA3   
LF22A: LDA    $8F     
       BNE    LF24A   
       LDA    $93     
       LDX    $94     
       BPL    LF236   
       LDA    $9B     
LF236: AND    #$03    
       BNE    LF24A   
       LDA    #$05    
       STA    AUDC0   
       LDA    #$0B    
       STA    AUDV0   
       LDA    #$02    
       STA    $8F     
       STA    $8B     
       BNE    LF296   
LF24A: LDA    $85     
       BEQ    LF296   
       LDX    #$04    
LF250: DEX            
       BMI    LF273   
       LDA    $93     
       SEC            
       SBC    $C1,X   
       TAY            
       INY            
       CPY    #$03    
       BCS    LF250   
       LDA    $9B     
       SEC            
       SBC    $80,X   
       CMP    #$04    
       BCS    LF250   
       LDA    $EC     
       BMI    LF276   
       DEC    $EC     
       JSR    LFAAD   
       JMP    LF276   
LF273: INX            
       STX    $EC     
LF276: LDA    $8F     
       CMP    #$01    
       BNE    LF285   
       LDA    #$0C    
       STA    AUDC0   
       LDA    $85     
       LSR            
       STA    AUDV0   
LF285: DEC    $85     
       BNE    LF2CE   
       LDA    $9B     
       CLC            
       ADC    #$07    
       STA    $9B     
       LDA    #$00    
       STA    $84     
       BEQ    LF2CE   
LF296: LDA    INPT4   
       ORA    $8D     
       BMI    LF2CA   
       LDA    $86     
       BNE    LF2CA   
       LDA    $94     
       BPL    LF2AD   
       JSR    LF90A   
       BCS    LF2CA   
       LDA    #$00    
       STA    $94     
LF2AD: LDY    $E9     
       BNE    LF2CE   
       INY            
       STY    $8F     
       DEC    $E9     
       LDA    SWCHA   
       STA    $EB     
       LDA    $9B     
       SEC            
       SBC    #$07    
       STA    $9B     
       LDA    #$1F    
       STA    $85     
       STA    $8B     
       BNE    LF2CE   
LF2CA: LDA    #$00    
       STA    $E9     
LF2CE: LDX    $94     
       BPL    LF2DD   
       LDX    #$05    
       JSR    LF90A   
       BCS    LF2DA   
       INX            
LF2DA: TXA            
       BNE    LF2E8   
LF2DD: LDA    $84     
       AND    #$06    
       LSR            
       LDX    $85     
       BEQ    LF2E8   
       LDA    #$04    
LF2E8: TAY            
       LDA    $9B     
       LDX    #$05    
LF2ED: CMP    #$2E    
       BCC    LF2F6   
       DEX            
       SBC    #$1C    
       BCS    LF2ED   
LF2F6: STY    $ED     
       STA    $E5     
       ADC    LFE00,Y 
       STA    $F8,X   
       LDA    #$F9    
       STA    $E4     
       LDA    $E5     
       CLC            
       ADC    LFF00,Y 
       STA    $E3     
       JSR    LF9F5   
       LDA    $E5     
       SEC            
       SBC    #$1D    
       BCC    LF344   
       STA    $ED     
       CPX    #$01    
       BCC    LF344   
       LDA    $F8,X   
       SBC    #$1C    
       STA    $F7,X   
       LDA    $E3     
       SEC            
       SBC    #$1C    
       STA    $E3     
       LDY    #$1B    
LF32A: DEC    $ED     
       BMI    LF336   
       LDA    ($E3),Y 
       STA.wy $00A5,Y 
       DEY            
       BPL    LF32A   
LF336: LDA    #$06    
       STA    $ED     
       LDA    #$00    
LF33C: STA.wy $00A5,Y 
       DEY            
       DEC    $ED     
       BPL    LF33C   
LF344: LDA    $86     
       BNE    LF354   
       LDA    CXM1P   
       BPL    LF381   
       LDA    $85     
       BEQ    LF381   
       LDA    #$03    
       STA    $86     
LF354: LDA    #$09    
       LDY    $94     
       BNE    LF35C   
       LDA    #$FE    
LF35C: CLC            
       ADC    $93     
       STA    $9C     
       LDY    #$A7    
       LDX    #$9A    
       LDA    $E8     
       AND    #$08    
       BNE    LF36F   
       LDX    #$8D    
       LDY    #$7F    
LF36F: STY    $95     
       STX    $97     
       LDA    $E8     
       BNE    LF381   
       DEC    $86     
       BNE    LF381   
       LDA    #$70    
       STA    $95     
       STA    $97     
LF381: LDA    $8F     
       BEQ    LF3AD   
       CMP    #$04    
       BCC    LF38F   
       LDA    $E8     
       AND    #$03    
       BNE    LF3AF   
LF38F: DEC    $8B     
       BMI    LF3A9   
       LDA    $8F     
       ASL            
       TAY            
       LDA    LFCFE,Y 
       STA    $E3     
       LDA    LFCFF,Y 
       STA    $E4     
       LDY    $8B     
       LDA    ($E3),Y 
       STA    AUDF0   
       BPL    LF3AF   
LF3A9: LDA    #$00    
       STA    $8F     
LF3AD: STA    AUDV0   
LF3AF: LDX    INTIM   
       BNE    LF3AF   
       STX    WSYNC   
       LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$2D    
       STY    WSYNC   
       STA    TIM64T  
       LDA    $8C     
       CMP    #$02    
       BEQ    LF3F1   
       LDA    $90     
       BEQ    LF3E0   
       LDX    #$03    
LF3D5: LDA    $9F,X   
       CMP    #$12    
       BCC    LF409   
       DEX            
       BPL    LF3D5   
       BMI    LF3E6   
LF3E0: LDA    $9B     
       CMP    #$0F    
       BNE    LF409   
LF3E6: LDA    #$02    
       STA    $8C     
       LDX    #$0A    
       LDA    #$05    
       JSR    LFAC0   
LF3F1: LDA    $8F     
       CMP    #$05    
       BEQ    LF409   
       LDA    #$01    
       STA    $8C     
       LDA    $A4     
       JSR    LFAAF   
       LDA    $90     
       EOR    #$01    
       STA    $90     
       JSR    LFCED   
LF409: LDA    $8D     
       BMI    LF466   
       LDA    $8C     
       BPL    LF466   
       LDX    $99     
       LDA    $80,X   
       BNE    LF450   
       LDA    $90     
       BNE    LF438   
       LDA    $81,X   
       CPX    #$03    
       BNE    LF423   
       LDA    $80     
LF423: TAY            
       BEQ    LF42A   
       CPY    #$23    
       BCC    LF450   
LF42A: LDA    #$0C    
       STA    $80,X   
       LDA    #$25    
       STA    $C1,X   
       LDA    #$01    
       STA    $C5,X   
       BNE    LF449   
LF438: LDA    $E7     
       AND    #$1F    
       ADC    #$25    
       STA    $C1,X   
       AND    #$01    
       STA    $C5,X   
       LDA    LFCE9,X 
       STA    $80,X   
LF449: DEX            
       BPL    LF44E   
       LDX    #$03    
LF44E: STX    $99     
LF450: LDX    #$03    
       LDY    #$01    
       LDA    $E8     
       LSR            
       BCC    LF45D   
       LDX    #$01    
       LDY    #$FF    
LF45D: STY    $E6     
LF45F: LDY    $80,X   
       BNE    LF469   
       JMP    LF566   
LF466: JMP    LF56E   
LF469: LDA    $90     
       BEQ    LF4D6   
       LDA    $9F,X   
       CMP    #$06    
       BCC    LF48F   
       CMP    #$0C    
       BCC    LF483   
       LDA    #$6A    
       CMP    $C1,X   
       BEQ    LF489   
       LDA    $9F,X   
       CMP    #$12    
       BCC    LF48F   
LF483: LDA    #$36    
       CMP    $C1,X   
       BNE    LF48F   
LF489: LDA    $C5,X   
       EOR    #$01    
       STA    $C5,X   
LF48F: LDA    $C5,X   
       BEQ    LF49D   
       INC    $C1,X   
       LDA    #$7C    
       CMP    $C1,X   
       BCC    LF4B7   
       BCS    LF4A5   
LF49D: DEC    $C1,X   
       LDA    #$24    
       CMP    $C1,X   
       BCS    LF4B7   
LF4A5: LDA    $E7     
       CMP    #$02    
       BCC    LF4BE   
       LDY    $87     
       CMP    LF900,Y 
       BCS    LF4D3   
       LDA    LF900,Y 
       STA    $E7     
LF4B7: LDA    $C5,X   
       EOR    #$01    
       TAY            
       BPL    LF4D1   
LF4BE: LDA    $80,X   
       CLC            
       ADC    #$09    
       CMP    $9B     
       BNE    LF4D3   
       LDY    #$00    
       LDA    $C1,X   
       CMP    $93     
       BCS    LF4D1   
       LDY    #$01    
LF4D1: STY    $C5,X   
LF4D3: JMP    LF566   
LF4D6: LDA    $C5,X   
       BEQ    LF4E0   
       BMI    LF53F   
       INC    $C1,X   
       BNE    LF4E2   
LF4E0: DEC    $C1,X   
LF4E2: CPY    #$0C    
       BEQ    LF4FF   
       CPY    #$91    
       BEQ    LF55C   
       LDY    $C1,X   
       ASL            
       BNE    LF4F0   
       INY            
LF4F0: TYA            
       LDY    #$07    
LF4F3: DEY            
       BMI    LF4FF   
       CMP    LFDF8,Y 
       BCC    LF4FF   
       BNE    LF4F3   
       INC    $80,X   
LF4FF: LDY    $87     
       LDA    $E7     
       CMP    LF900,Y 
       LDY    #$0C    
       BCS    LF50C   
       LDY    #$FF    
LF50C: LDA    $81,X   
       CPX    #$03    
       BNE    LF514   
       LDA    $80     
LF514: STA    $E5     
LF516: LDA    $E5     
       SBC    $80,X   
LF51A: INY            
       CPY    #$12    
       BCS    LF566   
       CMP    LFC50,Y 
       BCC    LF51A   
       LDA    $C1,X   
       SBC    #$01    
       CMP    LFDC0,Y 
       BNE    LF516   
       LDA    LFACD,Y 
       SEC            
       SBC    #$09    
       CMP    $80,X   
       BNE    LF516   
       STY    $C9,X   
       LDA    $C5,X   
       ORA    #$F0    
       BMI    LF557   
LF53F: INC    $80,X   
       INC    $80,X   
       LDY    $C9,X   
       LDA    LFB00,Y 
       SEC            
       SBC    #$09    
       CMP    $80,X   
       BEQ    LF551   
       BCS    LF566   
LF551: STA    $80,X   
       LDA    $C5,X   
       EOR    #$F1    
LF557: STA    $C5,X   
       JMP    LF566   
LF55C: LDA    $C1,X   
       CMP    #$23    
       BNE    LF566   
       LDA    #$00    
       STA    $80,X   
LF566: DEX            
       CPX    $E6     
       BEQ    LF56E   
       JMP    LF45F   
LF56E: LDX    #$03    
LF570: LDY    #$01    
       LDA    $80,X   
       BEQ    LF5AC   
       LDA    $C5,X   
       BPL    LF584   
       LDA    $C9,X   
       CMP    #$0D    
       BCC    LF585   
       CMP    $9B     
       BCS    LF5A8   
LF584: DEY            
LF585: LDA    $90     
       BEQ    LF58B   
       LDY    #$02    
LF58B: LDA    $80,X   
       STX    $ED     
       LDX    #$06    
       SEC            
LF592: DEX            
       SBC    #$1C    
       BCS    LF592   
       ADC    #$1C    
       CPX    #$04    
       BNE    LF5AE   
       ASL    CXP1FB  
       BPL    LF5AE   
       LDA    #$08    
       JSR    LFAAF   
       LDX    $ED     
LF5A8: LDA    #$00    
       STA    $80,X   
LF5AC: BEQ    LF5E6   
LF5AE: STA    $E5     
       CLC            
       ADC    LFBAC,Y 
       STA    $F2,X   
       LDA    $E5     
       CMP    #$12    
       BCC    LF5CB   
       ROR    $CC,X   
       CMP    #$13    
       BCC    LF5CB   
       TXA            
       BEQ    LF5CB   
       LDA    $F2,X   
       SBC    #$1C    
       STA    $F1,X   
LF5CB: LDY    $ED     
       LDA.wy $00C1,Y 
       LDY    #$FD    
       SEC            
LF5D3: INY            
       SBC    #$0F    
       BCS    LF5D3   
       STY    $CD,X   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    $D3,X   
       LDX    $ED     
LF5E6: DEX            
       BMI    LF5EC   
       JMP    LF570   
LF5EC: LDA    $8D     
       BMI    LF5F7   
       LDA    CXPPMM  
       BPL    LF613   
       JSR    LFAA3   
LF5F7: LDA    $8F     
       CMP    #$04    
       BEQ    LF613   
       LDA    #$00    
       STA    $8D     
       JSR    LFCED   
       LDY    #$01    
       DEC    $A3     
       BPL    LF611   
       JSR    LFABC   
       LDY    #$00    
       STY    $A3     
LF611: STY    $8C     
LF613: LDA    #$FF    
       STA    CXCLR   
       JSR    LF91C   
       LDX    #$03    
       LDA    $9C     
       JSR    LFDE2   
       LDY    #$10    
       LDX    #$20    
       LDA    $95     
       CMP    #$A7    
       BEQ    LF638   
       LDA    $90     
       BEQ    LF630   
       INX            
LF630: STX    CTRLPF  
       STY    $ED     
       LDA    #$FF    
       BNE    LF649   
LF638: STX    $ED     
       LDA    $90     
       BEQ    LF63F   
       INY            
LF63F: STY    CTRLPF  
       LDA    #$FE    
       LDY    $94     
       BEQ    LF649   
       LDA    #$04    
LF649: CLC            
       ADC    $9C     
       LDX    #$04    
       JSR    LFDE2   
LF651: LDX    INTIM   
       BNE    LF651   
       STX    WSYNC   
       STX    VBLANK  
       STX    REFP0   
       STX    REFP1   
       INX            
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       NOP            
       LDY    #$90    
       STY    HMP0    
       LDY    #$06    
       STA    RESP0   
       LDX    #$8A    
       STA    RESP1   
       LDA    $8C     
       ASL            
       BCC    LF67D   
       LDX    #$DA    
LF67D: STX    COLUP0  
       STX    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
LF685: LDA    LFC00,Y 
       STA    $E5     
       STA    WSYNC   
       LDA    ($E3),Y 
       STA    GRP0    
       LDA    ($E1),Y 
       STA    GRP1    
       LDA    ($DF),Y 
       STA.w  $001B   
       LDA    ($DD),Y 
       TAX            
       LDA    LFC00,Y 
       STY    $E6     
       LDY    $E5     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $E6     
       DEY            
       BPL    LF685   
       STX    WSYNC   
       STA    HMCLR   
       LDX    #$00    
       STX    VDELP0  
       STX    VDELP1  
       STX    GRP0    
       STX    GRP1    
       STX    NUSIZ1  
       LDX    #$14    
       LDA    $9A     
       STA    COLUPF  
       STA    $FC,X   
       LDA    $94     
       BPL    LF6D1   
       LDA    $9B     
       AND    #$04    
       ASL            
LF6D1: STA    REFP0   
       LDA    #$05    
       STA    NUSIZ0  
       LDA    #$34    
       STA    COLUP0  
       LDA    #$FC    
       STA    $E2     
       LDY    $A3     
LF6E1: LDA    LFB97,X 
       STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       STA    PF1     
       LDA    LFDAB,X 
       STA    GRP1    
       LDA    LF9E3,X 
       STA    COLUP1  
       CPX    #$0D    
       BCS    LF708   
       CPX    #$05    
       BCC    LF708   
       LDA    LFAF2,X 
       STA    $D4,X   
       LDA    LFBF7,Y 
       STA    PF1     
LF708: DEX            
       BNE    LF6E1   
       STX    NUSIZ0  
       LDA    $ED     
       STA    NUSIZ1  
       LDA    $E8     
       STA    REFP1   
       LDY    #$01    
LF717: STX    PF1     
       STX    PF2     
       STA    WSYNC   
       LDA    #$0F    
       STA    PF1     
       LDA    #$FF    
       STA    PF2     
       LDX    #$06    
       LDA    $90     
       BEQ    LF748   
       LDX    $A2     
       LDA    LFBAF,X 
       STA    $DF     
       LDA    LFBC7,X 
       STA    $DD     
       LDA    LFBDF,X 
       STA    $DB     
       LDA    #$FA    
       STA    $E0     
       STA    $DE     
       STA    $DC     
       LDX    #$01    
       STX    REFP1   
LF748: DEX            
       BNE    LF748   
       DEY            
       BPL    LF717   
       STX    PF1     
       STX    PF2     
       SEC            
       STA    WSYNC   
       LDA    $93     
LF757: SBC    #$0F    
       BCS    LF757   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0   
       STA    HMP0    
       LDA    #$46    
       STA    COLUP0  
       LDA    $9B     
       STA    WSYNC   
       STA    HMOVE   
       CMP    #$0F    
       BCS    LF779   
       LDY    #$1C    
       BNE    LF77C   
LF779: LDY    #$00    
       NOP            
LF77C: STY    GRP0    
       LDA    $D8     
       LDY    $D2     
LF782: DEY            
       BPL    LF782   
       LDY    #$1B    
       NOP            
       STA    RESP1   
       STA    HMP1    
       STX    HMP0    
       LDA    #$FB    
       STA    $E4     
       STA    WSYNC   
       STA    HMOVE   
       BCC    LF79A   
       BCS    LF79C   
LF79A: LDX    #$7E    
LF79C: STX    VSYNC,Y 
       LDX    #$06    
       JMP    LF885   
LF7A3: .byte $9D,$4C,$17,$F0,$86,$0F,$B1,$E3,$86,$0E,$F0,$02,$B6,$A5,$85,$02
       .byte $85,$06,$B1,$95,$85,$1E,$B1,$97,$85,$1F,$B1,$E1,$85,$1C,$86,$1B
       .byte $B1,$DD,$85,$0F,$B1,$D9,$A2,$00,$85,$0E,$88,$C0,$0E,$B0,$D5,$86
       .byte $0F,$B1,$E3,$86,$0D,$F0,$02,$B6,$A5,$85,$02,$85,$06,$86,$1B,$A2
       .byte $00,$B1,$E1,$85,$1C,$B1,$DF,$85,$0E,$B1,$DD,$85,$0F,$B1,$DB,$85
       .byte $0D,$B1,$D9,$85,$0E,$88,$C4,$E6,$D0,$D5,$B1,$E3,$86,$0F,$95,$06
       .byte $D0,$04,$95,$1B,$F0,$04,$A5,$A7,$85,$1B,$86,$0E,$86,$0D,$B1,$E1
       .byte $85,$1C,$A6,$E5,$F0,$8B,$B4,$CC,$30,$09,$88,$10,$FD,$85,$11,$B5
       .byte $D2,$85,$21,$A0,$01,$85,$02,$85,$2A,$B1,$E1,$85,$1C,$B1,$E3,$8D
       .byte $06,$00,$D0,$05,$8D,$1B,$00,$F0,$04,$A5,$A6,$85,$1B,$A5,$90,$F0
       .byte $16,$B4,$9C,$B9,$AF,$FB,$85,$DF,$B9,$C7,$FB,$85,$DD,$B9,$DF,$FB
       .byte $A0,$00,$99,$DB,$00,$F0,$15,$BD,$E3,$FF,$85,$DF,$BD,$E9,$FF,$85
       .byte $DD,$BD,$EF,$FF,$85,$DB,$BD,$08,$FE,$85,$D9,$88,$B1,$E1,$85,$1C
       .byte $B1,$E3,$8D,$06,$00,$D0,$05,$8D,$1B,$00,$F0,$04,$A5,$A5,$85,$1B
       .byte $A0,$1B
LF885: LDA    $F1,X   
       STA    $E1     
       LDA    $F7,X   
       STA    $E3     
       STA    HMCLR   
       DEX            
       NOP            
       STX    $E5     
       CPX    #$04    
       BNE    LF89C   
       LDX    #$00    
       JMP.ind ($00EE)
LF89C: LDA    LFFF6,X 
       STA    $E6     
       LDX    #$00    
       LDA    ($E3),Y 
       JMP.ind ($00F0)
LF8A8: .byte $EA,$B1,$E3,$D0,$03,$EA,$F0,$02,$B6,$A5,$85,$06,$B9,$2A,$FA,$85
       .byte $0F,$86,$1B,$B1,$95,$85,$1E,$B1,$E1,$85,$1C,$B1,$97,$85,$1F,$B9
       .byte $11,$FA,$85,$0E,$B1,$E3,$B9,$E3,$00,$A2,$00,$88,$C0,$0E,$B0,$D0
       .byte $B1,$E3,$F0,$02,$B6,$A5,$85,$02,$85,$06,$86,$1B,$B1,$E1,$85,$1C
       .byte $B1,$DF,$85,$0E,$B1,$DD,$85,$0F,$A2,$00,$B1,$DB,$B1,$DB,$88,$C4
       .byte $E6,$85,$0F,$D0,$DB,$4C,$FD,$F7
LF900: .byte $30,$50,$70,$90,$B0,$D0,$D0,$D0,$FF,$FF
LF90A: LDY    $EA     
       LDA    $9B     
       CMP    LFB00,Y 
       BEQ    LF91A   
       CMP    LFACD,Y 
       BEQ    LF91A   
       SEC            
       RTS            

LF91A: CLC            
       RTS            

LF91C: LDA    $90     
       ASL            
       ASL            
       ADC    #$03    
       TAX            
       LDY    #$03    
LF925: LDA    LFAEF,X 
       STA.wy $00EE,Y 
       DEX            
       DEY            
       BPL    LF925   
       LDX    #$0A    
       LDY    #$00    
       LDA    $8C     
       BPL    LF939   
       LDY    #$1C    
LF939: LDA.wy $0087,Y 
       AND    #$F0    
       LSR            
       ADC    #$00    
       STA    $D9,X   
       LDA    #$FC    
       STA    $DA,X   
       DEX            
       DEX            
       LDA.wy $0087,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$00    
       STA    $D9,X   
       LDA    #$FC    
       STA    $DA,X   
       INY            
       DEX            
       DEX            
       BPL    LF939   
       LDA    $8C     
       BPL    LF968   
       LDA    #$5D    
       STA    $E3     
       STA    $E1     
LF968: RTS            

LF969: .byte $00,$3F,$1B,$1B,$3F,$7B,$75,$76,$7B,$3F,$1F,$3E,$0F,$DB,$6B,$1A
       .byte $7E,$1C,$00,$06,$02,$02,$EE,$FC,$BD,$BD,$7F,$F7,$FE,$9E,$0F,$DB
       .byte $6B,$1A,$7E,$1C,$00,$00,$1C,$0C,$0D,$1F,$1F,$0E,$7E,$7E,$3E,$1C
       .byte $0F,$DB,$6B,$1A,$7E,$1C,$00,$00,$00,$00,$00,$00,$07,$FF,$FE,$BC
       .byte $3F,$FF,$FE,$3E,$0F,$DB,$6B,$1A,$7E,$1C,$00,$1C,$1C,$0E,$7E,$7E
       .byte $FE,$FE,$7F,$7F,$7F,$FF,$FE,$FC,$7C,$60,$00,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0E,$0D,$0D,$0D,$0E,$0F,$0F,$0F,$0F,$0F,$0E,$0D,$0D,$0E,$0F
       .byte $0F,$0F,$0F,$0E,$0D,$0E,$0F,$0F,$0F,$0E
LF9E3: .byte $0F,$2F,$1E,$1E,$A8,$A8,$A8,$A8,$A8,$46,$A8,$A8,$1E,$1E,$1E,$1E
       .byte $1E,$1E
LF9F5: LDY    #$1B    
LF9F7: LDA    ($E3),Y 
       STA.wy $00A5,Y 
       DEY            
       BPL    LF9F7   
       RTS            

LFA00: .byte $00,$31,$08,$7F,$FF,$8D,$FF,$03,$6A,$9A,$2D
LFA0B: .byte $8A,$85,$54,$00,$01,$02,$03,$04,$05,$0F,$0A,$0F,$0A,$0F,$00,$00
       .byte $00,$02,$00,$00,$00,$02,$00,$00,$00,$02,$00,$00,$00,$02,$00,$00
       .byte $00,$02,$FD,$55,$FD,$55,$FF,$00,$00,$00,$08,$00,$00,$00,$08,$00
       .byte $00,$00,$08,$00,$00,$00,$08,$00,$00,$00,$08,$FF,$54,$FF,$54,$FF
       .byte $00,$00,$00,$08,$00,$00,$00,$08,$00,$00,$00,$08,$00,$00,$00,$08
       .byte $00,$00,$00,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$FD,$55,$FD,$55,$FD,$00,$00,$00,$08,$00
       .byte $00,$00,$08,$00,$00,$00,$08,$00,$00,$00,$08,$00,$00,$00,$08
LFA8A: LDX    #$0A    
LFA8C: LDA    LFA00,X 
       STA    $92,X   
       DEX            
       BPL    LFA8C   
       LDA    $90     
       BEQ    LFAA2   
       LDX    #$08    
LFA9A: LDA    LFA0B,X 
       STA    $9A,X   
       DEX            
       BPL    LFA9A   
LFAA2: RTS            

LFAA3: LDA    #$FF    
       STA    $8D     
       LDX    #$11    
       LDA    #$04    
       BNE    LFAC0   
LFAAD: LDA    #$01    
LFAAF: SED            
       CLC            
       ADC    $88     
       STA    $88     
       LDA    #$00    
       ADC    $87     
       STA    $87     
       CLD            
LFABC: LDX    #$20    
       LDA    #$03    
LFAC0: STA    $8F     
       STX    $8B     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       RTS            

LFACD: .byte $84,$65,$68,$4A,$4C,$2E,$30,$15,$05,$15,$2C,$48,$81,$15,$31,$4D
       .byte $69,$85,$15,$15,$15,$15,$31,$31,$31,$31,$4D,$4D,$4D,$4D,$69,$69
       .byte $69,$69
LFAEF: .byte $A9,$F7,$D8
LFAF2: .byte $F7,$A8,$F8,$DA,$F8,$91,$FD,$62,$FF,$D4,$FE,$4F,$FE,$2A
LFB00: .byte $9A,$82,$7F,$65,$63,$49,$47,$2B,$15,$2E,$4B,$67,$9A,$2A,$46,$62
       .byte $7E,$9A,$31,$31,$31,$31,$4D,$4D,$4D,$4D,$69,$69,$69,$69,$85,$85
       .byte $85,$85,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$A6
       .byte $A6,$46,$46,$46,$46,$46,$46,$46,$46,$0F,$0F,$0F,$0F,$0F,$46,$46
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$A6,$A6,$A6
       .byte $46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$46,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00
LFB97: .byte $00,$00,$E0,$E0,$67,$67,$7E,$7E,$3E,$5E,$DC,$BC,$FE,$FF,$7F,$39
       .byte $45,$7D,$55,$7C,$38
LFBAC: .byte $66,$8B,$B0
LFBAF: .byte $53,$11,$11,$11,$11,$11,$53,$11,$11,$11,$11,$11,$53,$11,$11,$11
       .byte $11,$11,$53,$11,$11,$11,$11,$11
LFBC7: .byte $53,$43,$2A,$2A,$2A,$2A,$53,$43,$6E,$6E,$6E,$6E,$53,$43,$2A,$2A
       .byte $2A,$2A,$53,$43,$6E,$6E,$6E,$6E
LFBDF: .byte $53,$43,$2A,$2A,$2A,$2A,$53,$43,$2A,$2A,$2A,$2A,$53,$43,$6E,$6E
       .byte $6E,$6E,$53,$43,$6E,$6E,$6E,$6E
LFBF7: .byte $00,$01,$05,$15,$89,$A5,$0D,$E9,$00
LFC00: .byte $3C,$66,$66,$66,$66,$66,$3C,$00,$7E,$18,$18,$18,$38,$18,$08,$00
       .byte $7E,$62,$60,$3C,$06,$46,$3C,$00,$3C,$46,$06,$1C,$06,$46,$3C,$00
       .byte $0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$3C,$46,$06,$7C,$60,$60,$7E,$00
       .byte $3C,$66,$66,$7C,$60,$62,$3C,$00,$30,$30,$18,$0C,$06,$42,$7E,$00
       .byte $3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$3C,$00
LFC50: .byte $80,$90,$32,$36,$36,$3A,$32,$31,$FF,$34,$3A,$3A,$80,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$6E,$FB,$BF,$FD,$DF
       .byte $76,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7E
       .byte $99,$BD,$81,$BD,$99,$7E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$38,$7E,$FF,$FF,$71,$AA,$AA,$71,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFCE9: .byte $60,$44,$28,$0C
LFCED: LDA    #$00    
       LDX    #$06    
       LDY    #$22    
LFCF3: STA    $80,X   
       DEX            
       BMI    LFCFC   
       STY    $F8,X   
       BPL    LFCF3   
LFCFC: JMP    LFA8A   
LFCFF: .byte $98,$C4,$F9,$07,$FE,$C3,$FF,$0C,$FD,$D8,$F9,$00,$F9,$0C,$0C,$0C
       .byte $0C,$11,$11,$11,$08,$08,$08,$0B,$0A,$09,$08,$07,$06,$05,$FF,$FF
       .byte $10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00
       .byte $14,$3C,$E8,$54,$AC,$78,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$78,$AF,$55,$EA,$3D,$07
       .byte $10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00
       .byte $14,$3C,$E8,$54,$AC,$78,$C0,$00,$40,$00,$00,$00,$40,$00,$00,$00
       .byte $40,$00,$00,$00,$00,$00,$00,$00,$00,$40,$00,$00,$00,$40,$C0,$78
       .byte $AF,$55,$EA,$3D,$07,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00
       .byte $00,$10,$00,$00,$00,$FC,$6C,$90,$6C,$FC,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFDAB: .byte $00,$00,$43,$82,$7E,$7F,$FF,$7E,$3C,$18,$7E,$38,$9C,$7E,$BF,$3A
       .byte $1F,$07,$00,$00,$00
LFDC0: .byte $6D,$51,$31,$59,$6D,$45,$31,$6D,$4D,$4D,$65,$41,$49,$7B,$23,$7B
       .byte $23,$7B,$29,$3D,$61,$75,$29,$3D,$61,$75,$29,$3D,$61,$75,$29,$3D
       .byte $61,$75
LFDE2: STA    WSYNC   
       SEC            
LFDE5: SBC    #$0F    
       BCS    LFDE5   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       RTS            

LFDF8: .byte $75,$69,$5D,$51,$45,$3A,$2D,$88
LFE00: .byte $22,$22,$22,$23,$24,$50,$22,$1A,$1C,$10,$2C,$40,$5C,$75,$91,$0F
       .byte $0F,$00,$06,$00,$06,$00,$06,$00,$06,$00,$06,$00,$06,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$01,$0F,$0A,$05,$0B,$0E,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$03,$01,$02,$03,$01,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$0F,$0B,$04,$0B,$0F,$00,$00,$00,$08,$00,$00,$00,$08,$00
       .byte $00,$00,$08,$00,$00,$00,$08,$00,$00,$00,$08,$00,$00,$00,$40,$00
       .byte $00,$00,$E0,$BC,$57,$AA,$F5,$1E,$03,$00,$01,$00,$00,$00,$01,$00
       .byte $00,$00,$01,$00,$00,$00,$01,$00,$00,$00,$01,$03,$1E,$F5,$AA,$57
       .byte $BC,$E0,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$10,$00,$00,$00,$F0,$BC,$57,$AA,$F5,$1E,$03,$00,$21
       .byte $00,$00,$00,$21,$00,$00,$00,$21,$00,$00,$00,$21,$03,$1E,$F5,$AA
       .byte $57,$BC,$E0,$80,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$80,$00,$00,$00,$FF,$B6,$49,$B6,$FF,$00,$00,$00,$80
       .byte $00,$00,$00,$80,$00,$00,$00,$80,$00,$00,$00,$80,$00,$00,$00,$80
       .byte $FF,$FF,$40,$00,$00,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00,$A0
LFF00: .byte $4D,$5F,$4D,$72,$87,$97,$4D,$00,$00,$80,$F0,$50,$A0,$D0,$70,$10
       .byte $00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10,$00,$00,$00,$10
       .byte $00,$00,$00,$70,$D0,$A0,$50,$F0,$80,$00,$00,$40,$00,$00,$00,$40
       .byte $00,$00,$00,$40,$00,$00,$00,$40,$00,$80,$F0,$50,$A0,$D0,$70,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $70,$D0,$A0,$50,$F0,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$F0,$D0,$20,$D0,$F0,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$F0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$FF,$FF,$FF,$00,$00,$00,$FF,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$0A,$0A,$0A,$0A,$0A,$0A,$0A,$06,$06,$06,$06,$06,$06
       .byte $06,$06,$06,$06,$06,$07,$07,$07,$07,$07,$08,$08,$08,$08,$08,$0A
       .byte $0A,$0A,$0A,$0A,$02,$1D,$36,$1D,$36,$4F,$E3,$6B,$87,$A0,$B8,$D4
       .byte $71,$04,$1C,$34,$49,$62
LFFF6: .byte $0C,$02,$02,$02,$02,$02,$00,$F0,$00,$F0
