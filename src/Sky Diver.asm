; Disassembly of roms/Sky Diver.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Sky Diver.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
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
       DEX            
       TXS            
       STX    $BD     
       STX    $A9     
       STX    $C2     
       JSR    LF665   
LF015: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2E    
       STA    TIM64T  
       CLC            
       LDA    $AC     
       ADC    #$01    
       STA    $AC     
       BCC    LF037   
       INC    $C3     
LF037: LDA    SWCHB   
       LDX    #$07    
       LDY    #$09    
       AND    #$08    
       BEQ    LF046   
       LDX    #$F7    
       LDY    #$04    
LF046: LDA    $BD     
       BMI    LF04C   
       LDX    #$FF    
LF04C: AND    $C3     
       STA    $A1     
       STX    $A0     
       LDX    #$03    
LF054: LDA    LF5FE,Y 
       EOR    $A1     
       AND    $A0     
       STA    COLUP0,X
       CPX    #$02    
       BNE    LF063   
       STA    $B7     
LF063: DEY            
       DEX            
       BPL    LF054   
       LDA    LF5FE,Y 
       EOR    $A1     
       AND    $A0     
       STA    $B8     
       LDA    $A6     
       LSR            
       BCC    LF079   
       LDA    #$C0    
       BNE    LF07C   
LF079: LDA    SWCHB   
LF07C: LDX    #$01    
LF07E: ASL            
       BCC    LF086   
       LDY    LF7FE,X 
       BCS    LF089   
LF086: LDY    LF77E,X 
LF089: STY    $9A,X   
       DEX            
       BPL    LF07E   
       LDA    SWCHB   
       LSR            
       BCS    LF0BE   
       LDA    #$00    
       LDX    #$BD    
LF098: STA    VSYNC,X 
       INX            
       CPX    #$D9    
       BNE    LF098   
       LDX    #$01    
LF0A1: JSR    LF64B   
       LDA    #$FF    
       STA    $83,X   
       LDA    #$F8    
       STA    $87,X   
       DEX            
       BPL    LF0A1   
       LDA    #$08    
       STA    $B6     
       LDA    $A6     
       BNE    LF0F4   
       LDA    $AA     
       JSR    LF658   
       BCC    LF0F4   
LF0BE: LSR            
       LDA    #$FF    
       BCC    LF0C7   
       STA    $A9     
       BMI    LF0F4   
LF0C7: STA    $BD     
       STA    $C2     
       LDA    $A9     
       BMI    LF0D5   
       EOR    $AC     
       AND    #$1F    
       BNE    LF0F4   
LF0D5: LDA    $AC     
       AND    #$1F    
       STA    $A9     
       INC    $A7     
       SED            
       CLC            
       LDA    $A8     
       ADC    #$01    
       STA    $A8     
       STA    $D7     
       CLD            
       CMP    #$06    
       BEQ    LF0F1   
       JSR    LF66D   
       BNE    LF0F4   
LF0F1: JSR    LF665   
LF0F4: LDA    $D6     
       EOR    #$01    
       TAX            
       STA    $D6     
       LDA    $A6     
       BPL    LF125   
       LDA    $C8     
       JSR    LF6AF   
       LDA    $AC     
       AND    #$07    
       BNE    LF154   
       LDY    $B9     
       INY            
       CPY    #$18    
       BCC    LF113   
       LDY    #$00    
LF113: STY    $B9     
       LDA    #$0C    
       SEC            
       SBC    $B9     
       BPL    LF121   
       SEC            
       EOR    #$FF    
       ADC    #$00    
LF121: STA    $AF     
       BPL    LF154   
LF125: LDA    $AC     
       AND    #$7F    
       BNE    LF154   
       LSR    $AA     
       ROL            
       EOR    $AA     
       LSR            
       LDA    $AA     
       BCS    LF139   
       ORA    #$40    
       STA    $AA     
LF139: LSR            
       LDA    $C8     
       BCS    LF148   
       CMP    #$FA    
       BEQ    LF14F   
       SEC            
       SBC    #$02    
       JMP    LF14F   
LF148: CMP    #$06    
       BEQ    LF14F   
       CLC            
       ADC    #$02    
LF14F: STA    $C8     
       JSR    LF6AF   
LF154: LDA    #$00    
       STA    AUDC0,X 
       STA    $AB     
       LDA    $BD     
       BMI    LF1BD   
       LDA    $CC,X   
       BNE    LF175   
       LDA    $C9     
       BMI    LF16B   
       INC    $C9     
       JMP    LF3E5   
LF16B: LDA    #$01    
       STA    AUDC0,X 
       STA    AUDV0,X 
       LDA    #$1B    
       STA    AUDF0,X 
LF175: CLC            
       LDA    $BE     
       ADC    #$01    
       STA    $BE     
       LDA    $BF     
       ADC    #$00    
       STA    $BF     
       CMP    #$02    
       BNE    LF1C6   
       LDX    #$01    
LF188: LDY    #$00    
       STY    $C4,X   
       STY    $CC,X   
       STY    $CE,X   
       STY    $BF     
       DEY            
       STY    $83,X   
       JSR    LF64B   
       DEX            
       BPL    LF188   
       LDX    $D6     
       DEC    $B6     
       BMI    LF1C0   
       LDA    $A6     
       BMI    LF1BD   
       LDA    $AA     
       AND    #$07    
       BEQ    LF1B4   
       SEC            
       SBC    #$04    
       ASL            
       STA    $C8     
       JSR    LF6AF   
LF1B4: LDA    $A6     
       BNE    LF1BD   
       LDA    $AA     
       JSR    LF658   
LF1BD: JMP    LF3C6   
LF1C0: LDA    #$FF    
       STA    $BD     
       BMI    LF1BD   
LF1C6: LDA    $C4,X   
       BEQ    LF246   
       BPL    LF200   
       LDY    $C0,X   
       BMI    LF1DF   
       LDA    LF607,Y 
       STA    AUDV0,X 
       LDA    #$08    
       STA    AUDC0,X 
       LDA    #$0F    
       STA    AUDF0,X 
       DEC    $C0,X   
LF1DF: TXA            
       ASL            
       TAY            
       LDA.wy $0096,Y 
       CMP    #$20    
       BEQ    LF1FD   
       LDA    $D7,X   
       BEQ    LF1F4   
       SED            
       SEC            
       SBC    #$01    
       STA    $D7,X   
       CLD            
LF1F4: LDA.wy $0096,Y 
       CLC            
       ADC    #$08    
       STA.wy $0096,Y 
LF1FD: JMP    LF3C6   
LF200: ASL            
       BPL    LF230   
       LDA    $A6     
       BPL    LF211   
       JSR    LF634   
       LDA    $B1,X   
       CLC            
       ADC    $BB,X   
       STA    $89,X   
LF211: LDA    $D0,X   
       BEQ    LF230   
       LSR            
       BCC    LF22E   
       LDA    #$0C    
       STA    AUDC0,X 
       LDA    #$08    
       STA    AUDV0,X 
       LDA    LF7F1,X 
       STA    AUDF0,X 
       SED            
       LDA    $D7,X   
       CLC            
       ADC    #$01    
       STA    $D7,X   
       CLD            
LF22E: DEC    $D0,X   
LF230: TXA            
       ASL            
       TAY            
       LDA.wy $0096,Y 
       CMP    #$68    
       BEQ    LF243   
       LDA.wy $0096,Y 
       CLC            
       ADC    #$10    
       STA.wy $0096,Y 
LF243: JMP    LF3C6   
LF246: LDA    $CC,X   
       BNE    LF24D   
       JMP    LF2F3   
LF24D: LDA    SWCHA   
       EOR    #$FF    
       CPX    #$00    
       BNE    LF25A   
       LSR            
       LSR            
       LSR            
       LSR            
LF25A: AND    #$0F    
       TAY            
       LDA    $CE,X   
       BNE    LF2BF   
       TYA            
       AND    #$02    
       BEQ    LF286   
       LDA    $83,X   
       CMP    #$5A    
       BCS    LF286   
       STA    $D2,X   
       LDA    #$01    
       STA    $9C,X   
       STA    $CE,X   
       LDA    #$04    
       STA    $C0,X   
       LDA    #$F0    
       STA    $87,X   
       TXA            
       ASL            
       TAY            
       LDA    #$28    
       STA.wy $0096,Y 
       BNE    LF2BC   
LF286: TXA            
       ASL            
       TAY            
       LDA.wy $0096,Y 
       CMP    #$00    
       BNE    LF294   
       LDA    #$08    
       BNE    LF296   
LF294: LDA    #$00    
LF296: STA.wy $0096,Y 
       LDA    $AD,X   
       BEQ    LF2BC   
       CPX    #$00    
       BEQ    LF2A7   
       SEC            
       SBC    #$01    
       CLC            
       BPL    LF2AB   
LF2A7: CLC            
       ADC    #$01    
       SEC            
LF2AB: STA    $AD,X   
       BEQ    LF2BC   
       ROR            
       BMI    LF2B5   
       LSR            
       BPL    LF2B7   
LF2B5: SEC            
       ROR            
LF2B7: CLC            
       ADC    $AB     
       STA    $AB     
LF2BC: JMP    LF326   
LF2BF: TYA            
       AND    #$04    
       BEQ    LF2CE   
       SEC            
       LDA    $AB     
       SBC    $9E     
       STA    $AB     
       JMP    LF2DA   
LF2CE: TYA            
       AND    #$08    
       BEQ    LF2DA   
       CLC            
       LDA    $AB     
       ADC    $9E     
       STA    $AB     
LF2DA: LDA    $C8     
       CLC            
       ADC    $AB     
       STA    $AB     
       LDY    $C0,X   
       BMI    LF2F0   
       LDA    LF7F3,Y 
       STA    AUDV0,X 
       LDA    #$08    
       STA    AUDC0,X 
       DEC    $C0,X   
LF2F0: JMP    LF326   
LF2F3: LDA    INPT4,X 
       BMI    LF366   
       LDY    #$00    
       STY    $C6,X   
       INY            
       STY    $83,X   
       LDA    $D4,X   
       CLC            
       ADC    #$04    
       CLC            
       ADC    $9A,X   
       STA    $89,X   
       LDA    $9A,X   
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $AD,X   
       TXA            
       ASL            
       TAY            
       LDA    #$00    
       STA.wy $0096,Y 
       LDA    #$F8    
       STA    $87,X   
       LDA    #$03    
       STA    $9C,X   
       STA    $CC,X   
       JMP    LF3C6   
LF326: CLC            
       LDA    $83,X   
       CMP    #$FF    
       BEQ    LF38D   
       LDA    $CE,X   
       BEQ    LF375   
       LDA    $83,X   
       CMP    #$6E    
       BCC    LF389   
       LDA    $89,X   
       CMP    $B1,X   
       BCC    LF369   
       CMP    $B3,X   
       BCS    LF369   
       LDA    $A6     
       LSR            
       BCC    LF351   
       TXA            
       EOR    #$01    
       TAY            
       LDA.wy $00C4,Y 
       CMP    #$40    
       BEQ    LF369   
LF351: LDA    #$40    
       STA    $C4,X   
       LDA    $89,X   
       SEC            
       SBC    $B1,X   
       STA    $BB,X   
       LDA    $D2,X   
       LSR            
       LSR            
       STA    $D0,X   
       LDA    #$00    
       STA    $D2,X   
LF366: JMP    LF3C6   
LF369: LDA    #$01    
       STA    $C4,X   
       LDA    #$09    
       STA    AUDC0,X 
       STA    AUDV0,X 
       BNE    LF366   
LF375: LDA    $83,X   
       CMP    #$7A    
       BCC    LF389   
       LDA    #$80    
       STA    $C4,X   
       LDA    #$0A    
       STA    $D0,X   
       LDA    #$04    
       STA    $C0,X   
       BNE    LF366   
LF389: ADC    $9C,X   
       STA    $83,X   
LF38D: CLC            
       LDA    $C6,X   
       ADC    $AB     
       STA    $C6,X   
       BMI    LF39B   
       LSR            
       LSR            
       LSR            
       BPL    LF3A4   
LF39B: SEC            
       ROR            
       SEC            
       ROR            
       SEC            
       ROR            
       CLC            
       ADC    #$01    
LF3A4: CLC            
       ADC    $89,X   
       CMP    #$8E    
       BCC    LF3B5   
       BIT    $AB     
       BMI    LF3B3   
       LDA    #$8D    
       BMI    LF3B5   
LF3B3: LDA    #$00    
LF3B5: STA    $89,X   
       LDA    $C6,X   
       BPL    LF3C2   
       AND    #$07    
       ORA    #$F8    
       JMP    LF3C4   
LF3C2: AND    #$07    
LF3C4: STA    $C6,X   
LF3C6: LDA    $D4,X   
       CMP    #$FF    
       BEQ    LF3E5   
       CLC            
       ADC    $9A,X   
       CMP    #$87    
       BCC    LF3DD   
       LDA    $BD     
       BMI    LF3E2   
       LDA    #$FF    
       STA    $CA,X   
       STA    $CC,X   
LF3DD: STA    $D4,X   
       JMP    LF3E5   
LF3E2: JSR    LF64B   
LF3E5: LDX    #$01    
LF3E7: LDA    $D4,X   
       JSR    LF6E3   
       STA    WSYNC   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMP0,X  
LF3F5: DEY            
       BPL    LF3F5   
       STA    RESP0,X 
       DEX            
       BPL    LF3E7   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$01    
LF403: LDA    $89,X   
       JSR    LF6E3   
       STY    $8B,X   
       STA    $8D,X   
       DEX            
       BPL    LF403   
       LDA    $B6     
       CLC            
       ADC    #$01    
       STA    $A0     
       ASL            
       ASL            
       ADC    $A0     
       ASL            
       STA    $BA     
       LDX    #$01    
       SEC            
       LDA    $84     
       SBC    #$01    
       JMP    LF429   
LF427: LDA    $83     
LF429: LSR            
       STA    $85,X   
       BCC    LF432   
       LDA    #$01    
       STA    $8F,X   
LF432: DEX            
       BPL    LF427   
       LDX    #$01    
LF437: LDA    $D7,X   
       AND    #$0F    
       STA    $A0     
       ASL            
       ASL            
       CLC            
       ADC    $A0     
       STA    $A2,X   
       LDA    $D7,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $A0     
       LSR            
       LSR            
       CLC            
       ADC    $A0     
       STA    $A4,X   
       DEX            
       BPL    LF437   
       JSR    LF634   
       LDA    #$00    
       STA    $82     
       LDA    $B0     
       STA    $81     
LF461: DEY            
       BMI    LF46B   
       LSR    $81     
       ROL    $82     
       JMP    LF461   
LF46B: LDA    INTIM   
       BNE    LF46B   
       STA    WSYNC   
       STA    VBLANK  
       STA    $A0     
       STA    $A1     
       LDA    #$02    
       STA    CTRLPF  
       LDX    #$05    
LF47E: STA    WSYNC   
       LDA    $A0     
       STA    PF1     
       LDY    $A4     
       CPY    #$05    
       BCS    LF48E   
       LDA    #$00    
       BEQ    LF493   
LF48E: LDA    LF7BF,Y 
       AND    #$F0    
LF493: STA    $A0     
       LDY    $A2     
       LDA    LF7BF,Y 
       AND    #$0F    
       ORA    $A0     
       STA    $A0     
       LDA    $A1     
       STA    PF1     
       LDY    $A5     
       CPY    #$05    
       BCS    LF4AE   
       LDA    #$00    
       BEQ    LF4B3   
LF4AE: LDA    LF7BF,Y 
       AND    #$F0    
LF4B3: STA    $A1     
       LDY    $A3     
       LDA    LF7BF,Y 
       AND    #$0F    
       ORA    $A1     
       STA    $A1     
       DEX            
       BMI    LF4DE   
       LDA    $C2     
       BPL    LF4CB   
       LDA    #$00    
       STA    $A1     
LF4CB: LDA    $A0     
       STA    PF1     
       INC    $A2     
       INC    $A4     
       INC    $A3     
       INC    $A5     
       LDA    $A1     
       STA    PF1     
       JMP    LF47E   
LF4DE: STX    REFP1   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$00    
       STY    PF1     
LF4EA: LDA    $CA     
       BEQ    LF4F2   
       LDA    #$00    
       BEQ    LF4F5   
LF4F2: LDA    LF776,Y 
LF4F5: STA    WSYNC   
       STA    GRP0    
       LDA    $CB     
       BEQ    LF501   
       LDA    #$00    
       BEQ    LF504   
LF501: LDA    LF776,Y 
LF504: STA    WSYNC   
       STA    GRP1    
       INY            
       CPY    #$08    
       BNE    LF4EA   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$01    
LF51D: STA    WSYNC   
       NOP            
       LDY    $8B,X   
       LDA    $8D,X   
       STA    HMP0,X  
LF526: DEY            
       BPL    LF526   
       STA    RESP0,X 
       DEX            
       BPL    LF51D   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8F     
       STA    VDELP0  
       LDA    $90     
       STA    VDELP1  
       LDA    $91     
       STA    CTRLPF  
       LDX    #$00    
LF540: TXA            
       SEC            
       SBC    $85     
       TAY            
       AND    $87     
       BEQ    LF54D   
       LDA    #$00    
       BEQ    LF54F   
LF54D: LDA    ($96),Y 
LF54F: STA    WSYNC   
       STA    GRP0    
       TXA            
       CMP    #$44    
       BCC    LF564   
       LDA    $81     
       STA    PF1     
       LDA    $B8     
       STA    COLUBK  
       LDA    $82     
       STA    PF2     
LF564: TXA            
       INX            
       SEC            
       SBC    $86     
       TAY            
       AND    $88     
       BEQ    LF572   
       LDA    #$00    
       BEQ    LF574   
LF572: LDA    ($98),Y 
LF574: STA    WSYNC   
       STA    GRP1    
       CPX    #$46    
       BNE    LF540   
       LDA    #$00    
       LDX    #$01    
       STA    WSYNC   
LF582: STA    GRP0,X  
       STA    PF1,X   
       STA    VDELP0,X
       DEX            
       BPL    LF582   
       STA    $A0     
       STA    CTRLPF  
       LDA    $B7     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
       STA    WSYNC   
LF599: DEY            
       BPL    LF599   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$E0    
       STA    HMP1    
       LDA    #$D0    
       STA    HMP0    
       INY            
       STA    WSYNC   
       STA    HMOVE   
LF5AE: LDA    ($92),Y 
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       LDA    $A0     
       STA    PF1     
       LDA    $BA     
       LSR            
       TAX            
       CPX    #$05    
       BCS    LF5C6   
       LDA    #$00    
       BEQ    LF5CB   
LF5C6: LDA    LF7BF,X 
       AND    #$0F    
LF5CB: STA    $A0     
       LDA    #$00    
       STA    PF1     
       INY            
       CPY    #$0A    
       BCC    LF5DC   
       LDA    #$00    
       STA    $BA     
       BEQ    LF5DE   
LF5DC: INC    $BA     
LF5DE: STA    WSYNC   
       CPY    #$10    
       BNE    LF5AE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDA    #$21    
       STA    TIM64T  
LF5F1: LDA    INTIM   
       BNE    LF5F1   
       JMP    LF015   
LF5F9: .byte $00,$00,$80,$80,$01
LF5FE: .byte $22,$E6,$46,$0C,$94,$02,$0E,$00,$0C
LF607: .byte $04,$07,$05,$0F,$06
LF60C: .byte $F0,$E0,$F0,$E0,$C0
LF611: .byte $0A,$06,$0A,$06,$0A
LF616: .byte $0B,$0F,$13,$17,$1B,$1F,$23,$27,$2B,$2F,$33,$37,$3B,$3F,$43
LF625: .byte $85,$81,$7D,$79,$75,$71,$6D,$69,$65,$61,$5D,$59,$55,$51,$4D
LF634: LDY    $AF     
       LDA    LF616,Y 
       STA    $B1     
       CLC            
       ADC    $B5     
       STA    $B3     
       LDA    LF625,Y 
       STA    $B4     
       SEC            
       SBC    $B5     
       STA    $B2     
       RTS            

LF64B: LDA    #$00    
       STA    $CA,X   
       CPX    #$01    
       BEQ    LF655   
       LDA    #$86    
LF655: STA    $D4,X   
       RTS            

LF658: CMP    #$0D    
       BCC    LF662   
       SEC            
       SBC    #$0D    
       JMP    LF658   
LF662: STA    $AF     
       RTS            

LF665: LDA    #$01    
       STA    $D7     
       STA    $A7     
       STA    $A8     
LF66D: LDY    $A7     
       LDX    #$03    
       DEY            
       STY    $AF     
       LDA    LF5F9,Y 
       STA    $A6     
       LSR            
       BCC    LF682   
       LDA    #$0E    
       STA    $AF     
       LDX    #$01    
LF682: STX    $91     
       LDA    LF60C,Y 
       STA    $B0     
       LDA    LF611,Y 
       STA    $B5     
       LDX    #$01    
LF690: JSR    LF64B   
       LDA    #$FF    
       STA    $83,X   
       STA    $87,X   
       STA    $B6     
       TXA            
       ASL            
       TAY            
       LDA    #$7F    
       STA.wy $0092,Y 
       LDA    #$F7    
       STA.wy $0093,Y 
       STA.wy $0097,Y 
       DEX            
       BPL    LF690   
       RTS            

LF6AF: AND    #$FF    
       BPL    LF6C6   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$7F    
       STA    $92     
       LDA    #$7F    
       STA    $94     
       BNE    LF6D2   
LF6C6: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$7F    
       STA    $94     
       LDA    #$7F    
       STA    $92     
LF6D2: LDA    $C8     
       BPL    LF6DB   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF6DB: LSR            
       TAY            
       LDA    LF7F8,Y 
       STA    $9E     
       RTS            

LF6E3: LDY    #$00    
       CLC            
       ADC    #$01    
LF6E8: CMP    #$08    
       BCC    LF6F2   
       INY            
       SEC            
       SBC    #$0F    
       BPL    LF6E8   
LF6F2: EOR    #$FF    
       CLC            
       ADC    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LF6FC: .byte $EA,$EA,$EA,$EA,$BD,$5A,$3C,$18,$18,$3C,$42,$81,$3C,$18,$FF,$18
       .byte $18,$24,$42,$42,$00,$00,$BD,$5A,$3C,$99,$5A,$24,$00,$00,$00,$00
       .byte $BD,$5A,$BD,$7E,$00,$00,$00,$00,$00,$BD,$5A,$FF,$3C,$7E,$7E,$FF
       .byte $FF,$81,$BD,$5A,$3C,$18,$18,$24,$42,$81,$00,$00,$00,$00,$00,$7E
       .byte $FF,$81,$BD,$5A,$3C,$18,$18,$24,$42,$81,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$BD,$DB,$BD,$FF,$7E,$24,$42,$81,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3C,$18,$3C,$5A,$99,$A5,$C3,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$BD,$5A,$3C,$18,$18,$24,$42,$81
LF776: .byte $00,$00,$39,$11,$7F,$7F,$10,$38
LF77E: .byte $FF,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$03,$03,$07,$07,$07,$07,$0F,$0F,$0F,$0D,$0D,$09,$01,$01
       .byte $01,$03,$03,$07,$07,$0F,$0F,$1F,$1F,$1F,$3F,$3D,$39,$31,$01,$01
       .byte $01,$07,$1F,$3F,$7F,$FF,$FF,$7F,$3F,$1F,$07,$01,$01,$01,$01,$01
       .byte $01
LF7BF: .byte $EE,$AA,$AA,$AA,$EE,$44,$44,$44,$44,$44,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF7F1: .byte $17,$1F
LF7F3: .byte $02,$05,$09,$0A,$01
LF7F8: .byte $03,$04,$05,$06,$00,$F0
LF7FE: .byte $FE,$02
