; Disassembly of roms/Polo.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Polo.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
RESP0   =  $10
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       JMP    LF106   
LF003: LDA    $92,X   
       CLC            
       ADC    #$37    
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       PLA            
       AND    #$0F    
       STY    $B3     
       CLC            
       ADC    $B3     
       CMP    #$0F    
       BCC    LF01D   
       SBC    #$0F    
       INY            
LF01D: CMP    #$08    
       EOR    #$0F    
       BCS    LF026   
       ADC    #$01    
       DEY            
LF026: ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF02C: DEY            
       BPL    LF02C   
       STA    RESP0,X 
       STA    HMP0,X  
       RTS            

LF034: SEC            
       BCS    LF038   
LF037: CLC            
LF038: LDY    $AF     
       LDA    ($A9),Y 
       STA    WSYNC   
LF03E: STA    HMOVE   
       AND    #$F0    
       STA    $B3     
       LDY    $B1     
       LDA    ($A9),Y 
       AND    #$0F    
       ORA    $B3     
       STA    PF1     
       LDY    $B0     
       LDA    ($A9),Y 
       AND    #$F0    
       STA    $B3     
       LDY    $B2     
       LDA    ($A9),Y 
       AND    #$0F    
       ORA    $B3     
       STA    PF1     
       BCS    LF037   
       LDA    $A9     
       SBC    #$0A    
       STA    $A9     
       LDY    $AF     
       NOP            
       LDA    ($A9),Y 
       BCS    LF03E   
       STA    HMOVE   
       LDA    #$11    
       STA    CTRLPF  
       LDA    #$30    
       STA    PF0     
       LDA    #$40    
       STA    PF1     
       LDX    #$62    
       LDA    $8A     
       BNE    LF091   
       BEQ    LF097   
LF085: LDA    $B8     
       STA    $9F     
       BEQ    LF0A4   
LF08B: LDY    $B8     
       STY    GRP1    
       BEQ    LF0B7   
LF091: LDA    $9D     
       STA    HMP0    
       STA    HMP1    
LF097: SEC            
       TXA            
       SBC    $94     
       CMP    #$18    
       BCS    LF085   
       TAY            
       LDA    ($A1),Y 
       STY    $9F     
LF0A4: SEC            
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       TXA            
       SBC    $95     
       CMP    #$18    
       BCS    LF08B   
       TAY            
       LDA    ($A3),Y 
       STA    GRP1    
LF0B7: STY    $A0     
       LDA    $9E     
       STA    HMP0    
       STA    HMP1    
       SEC            
       TXA            
       SBC    $97     
       CPX    $8F     
       BCS    LF0DF   
       CPX    $90     
       BNE    LF0CF   
       LDY    #$40    
       BNE    LF0DA   
LF0CF: CPX    #$0B    
       BNE    LF0EC   
       LDY    $84     
       JMP    LF0EA   
LF0D8: LDY    #$00    
LF0DA: STY    PF1     
       JMP    LF0EC   
LF0DF: BEQ    LF0D8   
       CPX    #$4D    
       BNE    LF0EC   
       NOP            
       NOP            
       NOP            
       LDY    $85     
LF0EA: STY    COLUBK  
LF0EC: LDY    $9F     
       AND    #$FE    
       STA    WSYNC   
       STA    HMOVE   
       PHP            
       LDA    ($A5),Y 
       STA    GRP0    
       LDY    $A0     
       LDA    ($A7),Y 
       STA    GRP1    
       PLA            
       DEX            
       BPL    LF091   
       JMP    LF122   
LF106: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF10D: STA    VSYNC,X 
       INX            
       BNE    LF10D   
       INX            
       STX    $91     
       LDA    #$F7    
       LDX    #$08    
LF119: STA    $A2,X   
       DEX            
       DEX            
       BPL    LF119   
       JSR    LF5E8   
LF122: LDY    #$0E    
       STA    WSYNC   
       STY    TIM64T  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       INC    $89     
       BNE    LF135   
       INC    $80     
LF135: LDX    #$FF    
       TXS            
       LDA    $89     
       AND    #$01    
       STA    $8A     
       TAX            
       LDA    LF7CF,X 
       STA    $9D     
       LDA    LF7D1,X 
       STA    $9E     
       JSR    LF5CB   
       LDX    #$01    
       STX    $98     
LF150: LDA    $8D     
       BMI    LF170   
       TXA            
       BEQ    LF15B   
       BIT    $8B     
       BEQ    LF170   
LF15B: LSR            
       STA    $AB,X   
       LDA    INPT4,X 
       STA    $B5,X   
       LDA    SWCHA   
       BCS    LF16B   
       LSR            
       LSR            
       LSR            
       LSR            
LF16B: AND    #$0F    
       JMP    LF202   
LF170: LDA    #$FF    
       STA    $AB,X   
       STA    $B5,X   
       LDY    $B9     
       BNE    LF186   
       LDY    $92,X   
       CPY    $96     
       BEQ    LF183   
       LDA    LF6B2,X 
LF183: JMP    LF202   
LF186: LDA    #$07    
       LDY    $97     
       CPY    $90     
       BCC    LF190   
       BNE    LF193   
LF190: LDA    LF7F9,X 
LF193: CPY    $8F     
       BCC    LF19A   
       LDA    LF7FA,X 
LF19A: STA    $B4     
       CLC            
       ADC    #$48    
       STA    $B3     
       LDA    $96     
       LDY    $88     
       BEQ    LF1AD   
       CMP    $B3     
       BCC    LF1AD   
       SBC    #$40    
LF1AD: LDY    #$0C    
       SEC            
       SBC    $92,X   
       BMI    LF1BE   
       CMP    $B4     
       BEQ    LF1C0   
       BCC    LF1BE   
       LDY    #$04    
       BNE    LF1C0   
LF1BE: LDY    #$08    
LF1C0: TYA            
       EOR    $9B,X   
       AND    #$0C    
       CMP    #$0C    
       BNE    LF1CA   
       TAY            
LF1CA: STY    $B3     
       LDA    $97     
       CPY    #$0C    
       BNE    LF1DA   
       LDY    #$03    
       SEC            
       SBC    $94,X   
       JMP    LF1EC   
LF1DA: LDY    #$03    
       SEC            
       SBC    $94,X   
       BPL    LF1E6   
       CMP    #$FD    
       JMP    LF1EC   
LF1E6: CMP    #$04    
       BCC    LF1F0   
       CMP    #$08    
LF1EC: BEQ    LF1F6   
       BCC    LF1F4   
LF1F0: LDY    #$02    
       BNE    LF1F6   
LF1F4: LDY    #$01    
LF1F6: TYA            
       EOR    $9B,X   
       AND    #$03    
       CMP    #$03    
       BEQ    LF200   
       TYA            
LF200: ORA    $B3     
LF202: STA    $9B,X   
       DEX            
       BMI    LF20A   
       JMP    LF150   
LF20A: LDX    #$FF    
LF20C: LDA    INTIM   
       BNE    LF20C   
       STA    WSYNC   
       STX    VBLANK  
       STX    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$2C    
       STA    WSYNC   
       STA    VSYNC   
       STY    TIM64T  
       LDX    #$01    
LF226: LDY    $8E     
       BEQ    LF22F   
       LDY    $99,X   
       JMP    LF3DE   
LF22F: LDA    $C8,X   
       BNE    LF241   
       LDY    $99,X   
       BEQ    LF241   
       LDA    $98     
       BNE    LF244   
       LDA    $89     
       AND    #$40    
       BNE    LF244   
LF241: JMP    LF2DA   
LF244: LDA    $97     
       SEC            
       SBC    $94,X   
       CLC            
       ADC    #$02    
       CMP    #$00    
       BCC    LF241   
       CMP    #$0A    
       BCS    LF241   
       DEY            
       LDA    $CC,X   
       BEQ    LF261   
       CPY    #$01    
       BEQ    LF261   
       TYA            
       EOR    #$02    
       TAY            
LF261: LDA    $96     
       SEC            
       SBC    $92,X   
       CLC            
       ADC    #$03    
       CMP    LF6CC,Y 
       BCC    LF241   
       CMP    LF6CD,Y 
       BCC    LF289   
       STA    $B3     
       LDA    $8B     
       CMP    #$10    
       LDA    $B3     
       BCC    LF241   
       SBC    #$40    
       CMP    LF6CC,Y 
       BCC    LF241   
       CMP    LF6CD,Y 
       BCS    LF241   
LF289: TAY            
       LDA    LF7E3,Y 
       TAY            
       TXA            
       ROR            
       ROR            
       EOR    $B5,X   
       STA    $B4     
       ROL            
       LDA    LF6D7,Y 
       BCS    LF29E   
       JSR    LF6A2   
LF29E: STA    $C4     
       ROL    $B4     
       LDA    LF6DB,Y 
       BCS    LF2AA   
       JSR    LF6A2   
LF2AA: STA    $C5     
       LDA    $CE,X   
       LDY    $86,X   
       BNE    LF2BB   
       LSR            
       LSR            
       STA    $B3     
       LDA    $CE,X   
       SEC            
       SBC    $B3     
LF2BB: LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$03    
       STA    $B7     
       LDA    #$00    
       STA    $98     
       INC    $C8,X   
       LDA    $8D     
       BMI    LF2DA   
       LDA    LF6B4,X 
       STA    AUDF0   
       STA    $81     
       LDA    #$0F    
       STA    AUDV0   
LF2DA: LDY    #$00    
       LDA    $9B,X   
       CMP    #$0F    
       BNE    LF2F3   
       LDA    $AB,X   
       BNE    LF2EE   
       LDA    $CA,X   
       BEQ    LF2F0   
       DEC    $CA,X   
       BNE    LF2F0   
LF2EE: STY    $CE,X   
LF2F0: JMP    LF3B2   
LF2F3: LDA    #$0A    
       STA    $CA,X   
       LDA    $8D     
       BMI    LF316   
       LDA    $AB,X   
       BEQ    LF316   
       SED            
       LDA    $AE     
       SEC            
       SBC    $AD     
       CLD            
       BCC    LF310   
       CMP    #$05    
       BCC    LF30E   
       LDA    #$04    
LF30E: TAY            
       INY            
LF310: JSR    LF6A8   
       BCC    LF316   
       INY            
LF316: STY    $B3     
       LDY    #$01    
       LDA    $9B,X   
       CMP    #$07    
       BEQ    LF324   
       CMP    #$0B    
       BCC    LF325   
LF324: DEY            
LF325: STY    $86,X   
       LDA    LF7E1,Y 
       CMP    $CE,X   
       BEQ    LF365   
       BCS    LF334   
       STA    $CE,X   
       BNE    LF365   
LF334: LDA    $CE,X   
       BNE    LF348   
       LDA    $B3     
       DEY            
       BNE    LF340   
       CLC            
       ADC    #$07    
LF340: TAY            
       LDA    LF6BE,Y 
       STA    $CE,X   
       BNE    LF365   
LF348: LDY    $B3     
       LDA    LF6D0,Y 
       BEQ    LF365   
       TAY            
       JSR    LF6A8   
       TYA            
       BCC    LF357   
       ROL            
LF357: AND    $89     
       BNE    LF365   
       LDY    $86,X   
       LDA    $CE,X   
       CLC            
       ADC    LF7F0,Y 
       STA    $CE,X   
LF365: LDA    $9B,X   
       BIT    LF7BB   
       BNE    LF379   
       LDA    $BA,X   
       CLC            
       ADC    $CE,X   
       BCC    LF375   
       INC    $92,X   
LF375: LDY    #$00    
       BEQ    LF389   
LF379: BIT    LF746   
       BNE    LF391   
       SEC            
       LDA    $BA,X   
       SBC    $CE,X   
       BCS    LF387   
       DEC    $92,X   
LF387: LDY    #$08    
LF389: STA    $BA,X   
       STY    REFP0,X 
       STY    $CC,X   
       LDA    $9B,X   
LF391: BIT    LF74F   
       BNE    LF3A2   
       LDA    $BC,X   
       SEC            
       SBC    $CE,X   
       BCS    LF3B0   
       DEC    $94,X   
       JMP    LF3B0   
LF3A2: BIT    LF7F8   
       BNE    LF3B0   
       LDA    $BC,X   
       CLC            
       ADC    $CE,X   
       BCC    LF3B0   
       INC    $94,X   
LF3B0: STA    $BC,X   
LF3B2: LDY    $99,X   
       LDA    $89     
       AND    #$07    
       BNE    LF3DE   
       TXA            
       BNE    LF3C3   
       LDA    $CC     
       BNE    LF3CF   
       BEQ    LF3C7   
LF3C3: LDA    $CD     
       BEQ    LF3CF   
LF3C7: LDA    $B5,X   
       BPL    LF3D3   
LF3CB: INY            
       JMP    LF3D4   
LF3CF: LDA    $B5,X   
       BPL    LF3CB   
LF3D3: DEY            
LF3D4: TYA            
       AND    #$03    
       BNE    LF3DB   
       STA    $C8,X   
LF3DB: STA    $99,X   
       TAY            
LF3DE: LDA    $CC,X   
       BNE    LF3F4   
       LDA    $8A     
       BNE    LF3F8   
LF3E6: TXA            
       ASL            
       TAX            
       LDA    LF6BA,Y 
       STA    $A5,X   
       LDA    LF6B6,Y 
       JMP    LF403   
LF3F4: LDA    $8A     
       BNE    LF3E6   
LF3F8: TXA            
       ASL            
       TAX            
       LDA    LF6B6,Y 
       STA    $A5,X   
       LDA    LF6BA,Y 
LF403: STA    $A1,X   
       DEX            
       DEX            
       BMI    LF40C   
       JMP    LF226   
LF40C: LDA    $8E     
       BEQ    LF41A   
       DEC    $8E     
       BNE    LF417   
       JSR    LF628   
LF417: JMP    LF55F   
LF41A: LDY    $98     
       BEQ    LF423   
       DEY            
       STY    AUDV0   
       BEQ    LF439   
LF423: LDA    $B9     
       BNE    LF439   
       INC    $B9     
       LDA    $C5     
       BNE    LF439   
       LDY    #$02    
       LDA    $89     
       AND    #$10    
       BNE    LF437   
       LDY    #$FE    
LF437: STY    $C5     
LF439: LDX    #$01    
LF43B: LDY    $98     
       BNE    LF468   
       LDA    $C4,X   
       BPL    LF444   
       DEY            
LF444: STY    $C6,X   
       STY    $C2,X   
       LDY    $B7     
       ASL            
       ASL            
       STA    $B3     
       LDA    #$00    
LF450: CLC            
       ADC    $B3     
       DEY            
       BNE    LF450   
       STA    $C0,X   
       LDY    #$02    
       LDA    $8B     
       AND    #$02    
       BEQ    LF461   
       INY            
LF461: ASL    $C0,X   
       ROL    $C2,X   
       DEY            
       BNE    LF461   
LF468: CLC            
       LDA    $C0,X   
       ADC    $BE,X   
       STA    $BE,X   
       LDA    $C2,X   
       ADC    $96,X   
       STA    $96,X   
       SEC            
       LDA    $C0,X   
       ORA    $C2,X   
       BEQ    LF488   
       LDA    $C0,X   
       SBC    $C4,X   
       STA    $C0,X   
       LDA    $C2,X   
       SBC    $C6,X   
       STA    $C2,X   
LF488: DEX            
       BPL    LF43B   
       LDA    $96     
       INX            
       CMP    #$87    
       BCS    LF497   
       CMP    #$18    
       BCS    LF4C6   
       INX            
LF497: LDY    $97     
       CPY    $90     
       BCC    LF4C6   
       BEQ    LF4C6   
       CPY    $8F     
       BCS    LF4C6   
       CMP    LF7FE,X 
       BEQ    LF4C2   
       LDA    $8D     
       BMI    LF4BE   
       SED            
       LDA    $AD,X   
       CLC            
       ADC    #$01    
       STA    $AD,X   
       CLD            
       LDA    LF6B4,X 
       STA    AUDF0   
       LDA    #$09    
       STA    AUDV0   
LF4BE: LDX    #$3F    
       STX    $8E     
LF4C2: LDX    #$03    
       BNE    LF4C8   
LF4C6: LDX    #$05    
LF4C8: LDY    $8B     
LF4CA: CPX    #$02    
       BCS    LF4D8   
       CPY    #$10    
       BCC    LF4D8   
       LDA    #$48    
       CMP    $92,X   
       BCC    LF4F0   
LF4D8: LDA    $92,X   
       CMP    #$C0    
       BCS    LF507   
       CMP    LF6F0,X 
       BCC    LF502   
       CPY    #$08    
       BCC    LF4EB   
       CPY    #$10    
       BCC    LF4FB   
LF4EB: LDA    LF6EA,X 
       CPX    #$04    
LF4F0: BCC    LF557   
       SBC    $92,X   
       CLC            
       ADC    LF6EA,X 
       JMP    LF51C   
LF4FB: SEC            
       SBC    LF6F6,X 
       JMP    LF54F   
LF502: CMP    LF6E4,X 
       BCS    LF559   
LF507: CPY    #$08    
       BCC    LF50F   
       CPY    #$10    
       BCC    LF54C   
LF50F: LDA    LF6E4,X 
       CPX    #$04    
       BCC    LF557   
       SBC    $92,X   
       CLC            
       ADC    LF6E4,X 
LF51C: STA    $92,X   
       SEC            
       LDA    #$00    
       SBC    $BC,X   
       STA    $BC,X   
       LDA    #$00    
       SBC    $BE,X   
       STA    $BE,X   
       SEC            
       LDA    #$00    
       SBC    $C0,X   
       STA    $C0,X   
       LDA    #$00    
       SBC    $C2,X   
       STA    $C2,X   
LF538: LDA    $8D     
       BMI    LF559   
       DEC    $81     
       BPL    LF542   
       INC    $81     
LF542: LDA    $81     
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       BNE    LF559   
LF54C: ADC    LF6F6,X 
LF54F: STA    $92,X   
       CPX    #$04    
       BCC    LF559   
       BCS    LF538   
LF557: STA    $92,X   
LF559: DEX            
       BMI    LF55F   
       JMP    LF4CA   
LF55F: LDX    #$00    
       JSR    LF003   
       INX            
       JSR    LF003   
       INX            
       STX    CTRLPF  
       LDX    #$04    
       JSR    LF003   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8C     
       CMP    #$F6    
       BCC    LF58B   
       LDA    $89     
       AND    #$30    
       BNE    LF58B   
       LDX    #$03    
       LDA    #$0A    
LF584: STA    $AF,X   
       DEX            
       BPL    LF584   
       BMI    LF5A0   
LF58B: LDX    #$01    
LF58D: LDA    #$F0    
       AND    $AD,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $AF,X   
       LDA    $AD,X   
       AND    #$0F    
       STA    $B1,X   
       DEX            
       BPL    LF58D   
LF5A0: LDY    #$2C    
       STY    $A9     
       LDX    #$27    
       LDY    #$2F    
       LDA    $8B     
       AND    #$04    
       BNE    LF5B2   
       LDX    #$23    
       LDY    #$33    
LF5B2: STX    $90     
       STY    $8F     
       LDX    #$1F    
       TXS            
       STA    HMCLR   
       LDY    #$00    
LF5BD: LDX    INTIM   
       BNE    LF5BD   
       STA    WSYNC   
       STA    HMOVE   
       STY    VBLANK  
       JMP    LF034   
LF5CB: LDA    SWCHB   
       ROR            
       ROR            
       BCS    LF604   
       LDA    #$00    
       STA    $8C     
       DEC    $91     
       BEQ    LF5DD   
       JMP    LF651   
LF5DD: LDA    #$2D    
       STA    $91     
       LDY    $8B     
       INY            
       CPY    #$18    
       BNE    LF5EA   
LF5E8: LDY    #$00    
LF5EA: STY    $8B     
       TYA            
       AND    #$10    
       STA    $88     
       BEQ    LF5F5   
       LDA    #$04    
LF5F5: STA    NUSIZ0  
       STA    NUSIZ1  
       TYA            
       INY            
       AND    #$01    
       CLC            
       ADC    #$01    
       LDX    #$FF    
       BNE    LF615   
LF604: LDX    #$01    
       STX    $91     
       ASL            
       BCS    LF651   
       LDX    #$56    
       STX    $8C     
       STX    $8E     
       LDA    #$00    
       TAX            
       TAY            
LF615: STA    $AE     
       STX    $8D     
       TYA            
       CMP    #$0A    
       BCC    LF626   
       ADC    #$05    
       CMP    #$1A    
       BCC    LF626   
       ADC    #$05    
LF626: STA    $AD     
LF628: LDA    #$00    
       LDX    #$18    
LF62C: STA    $B9,X   
       DEX            
       BPL    LF62C   
       STA    REFP0   
       STA    AUDV0   
       LDX    #$06    
LF637: LDA    LF7DA,X 
       STA    $91,X   
       DEX            
       BNE    LF637   
       LDA    $88     
       BEQ    LF64B   
       LDA    #$33    
       STA    $92     
       LDA    #$1E    
       STA    $93     
LF64B: LDA    #$08    
       STA    REFP1   
       STA    $CD     
LF651: LDX    #$0C    
       LDA    $8D     
       BPL    LF659   
       LDX    #$00    
LF659: STX    AUDC0   
       LDA    $8C     
       BEQ    LF66F   
       LDA    $89     
       AND    #$3F    
       BNE    LF66F   
       INC    $8C     
       BNE    LF66F   
       LDX    #$FF    
       STX    $8D     
       STX    $8E     
LF66F: LDA    SWCHB   
       AND    #$08    
       LSR            
       ORA    #$03    
       TAY            
       CPY    #$04    
       LDA    $8D     
       EOR    #$08    
       ORA    #$F7    
       BCS    LF684   
       AND    #$0F    
LF684: STA    $82     
       LDX    #$03    
LF688: LDA    $80     
       AND    $8D     
       EOR    LF7D3,Y 
       AND    $82     
       STA    COLUP0,X
       STA    $82,X   
       DEY            
       DEX            
       BPL    LF688   
       LDA    $84     
       STA    COLUBK  
       RTS            

LF69E: .byte $E0,$01,$D0,$05
LF6A2: EOR    #$FF    
       CLC            
       ADC    #$01    
       RTS            

LF6A8: LDA    SWCHB   
       CPX    #$00    
       BNE    LF6B0   
       ROL            
LF6B0: ROL            
       RTS            

LF6B2: .byte $07,$0B
LF6B4: .byte $0A,$0D
LF6B6: .byte $B8,$36,$4D,$62
LF6BA: .byte $77,$8C,$77,$A3
LF6BE: .byte $80,$80,$60,$40,$40,$30,$20,$5A,$5A,$45,$2D,$2D,$21,$18
LF6CC: .byte $00
LF6CD: .byte $08,$0E,$16
LF6D0: .byte $01,$03,$07,$1F,$7F,$FF,$FF
LF6D7: .byte $00,$02,$04,$05
LF6DB: .byte $06,$05,$04,$02,$00,$FE,$FC,$FB,$FA
LF6E4: .byte $07,$07,$09,$09,$18,$0C
LF6EA: .byte $88,$88,$4B,$4B,$86,$4C
LF6F0: .byte $89,$89,$4C,$4C,$87,$4D
LF6F6: .byte $82,$82,$43,$43,$6F,$41,$00,$00,$00,$00,$07,$22,$77,$77,$11,$77
       .byte $77,$11,$77,$77,$00,$05,$22,$44,$11,$11,$11,$55,$11,$55,$11,$00
       .byte $05,$22,$77,$33,$77,$77,$77,$11,$77,$77,$00,$05,$22,$11,$11,$55
       .byte $44,$44,$11,$55,$55,$00,$07,$22,$77,$77,$55,$77,$77,$77,$77,$77
       .byte $00,$20,$40,$B1,$98,$48,$4C,$26,$25,$3F,$3F,$1F,$26,$E6,$06,$06
LF746: .byte $04,$06,$06,$06,$00,$00,$00,$00,$07
LF74F: .byte $02,$0A,$4A,$4A,$5A,$52,$72,$3F,$3F,$1F,$26,$E6,$06,$06,$04,$06
       .byte $06,$06,$00,$00,$00,$00,$11,$88,$48,$48,$24,$24,$3F,$3F,$1F,$26
       .byte $E6,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$20,$20,$60,$48,$44
       .byte $44,$F8,$E0,$F0,$70,$33,$FF,$1E,$0C,$08,$80,$00,$00,$00,$00,$00
       .byte $80,$44,$42,$22,$24,$28,$F0,$E0,$F0,$70,$33,$FF,$1E,$0C,$08,$80
       .byte $00,$00,$00,$00,$00,$04,$02,$85,$4C,$52,$22,$64,$A8,$F0,$E0,$F0
       .byte $70,$33,$FF,$9E,$CC,$E8,$C0,$00,$00,$00,$00,$00
LF7BB: .byte $08,$48,$48,$58,$50,$70,$3F,$3F,$1F,$26,$E6,$06,$0E,$14,$26,$26
       .byte $26,$20,$20,$20
LF7CF: .byte $70,$90
LF7D1: .byte $90,$70
LF7D3: .byte $0C,$02,$06,$08,$2A,$62,$C6
LF7DA: .byte $C8,$2D,$64,$2A,$2A,$4F,$2B
LF7E1: .byte $FC,$B4
LF7E3: .byte $07,$07,$06,$06,$06,$05,$05,$05,$04,$04,$04,$04,$04
LF7F0: .byte $04,$03,$03,$03,$02,$02,$02,$01
LF7F8: .byte $01
LF7F9: .byte $0F
LF7FA: .byte $00,$0F,$00,$F0
LF7FE: .byte $87,$17
