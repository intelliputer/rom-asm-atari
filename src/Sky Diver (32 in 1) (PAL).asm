; Disassembly of roms/Sky Diver (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Sky Diver (32 in 1) (PAL).bin
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
       JSR    LF669   
LF015: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$37    
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
LF054: LDA    LF602,Y 
       EOR    $A1     
       AND    $A0     
       STA    COLUP0,X
       CPX    #$02    
       BNE    LF063   
       STA    $B7     
LF063: DEY            
       DEX            
       BPL    LF054   
       LDA    LF602,Y 
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
LF0A1: JSR    LF64F   
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
       JSR    LF65C   
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
       JSR    LF671   
       BNE    LF0F4   
LF0F1: JSR    LF669   
LF0F4: LDA    $D6     
       EOR    #$01    
       TAX            
       STA    $D6     
       LDA    $A6     
       BPL    LF125   
       LDA    $C8     
       JSR    LF6B3   
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
       JSR    LF6B3   
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
       JMP    LF3E9   
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
       JSR    LF64F   
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
       JSR    LF6B3   
LF1B4: LDA    $A6     
       BNE    LF1BD   
       LDA    $AA     
       JSR    LF65C   
LF1BD: JMP    LF3CA   
LF1C0: LDA    #$FF    
       STA    $BD     
       BMI    LF1BD   
LF1C6: LDA    $C4,X   
       BEQ    LF246   
       BPL    LF200   
       LDY    $C0,X   
       BMI    LF1DF   
       LDA    LF60B,Y 
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
LF1FD: JMP    LF3CA   
LF200: ASL            
       BPL    LF230   
       LDA    $A6     
       BPL    LF211   
       JSR    LF638   
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
LF243: JMP    LF3CA   
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
       CMP    #$7B    
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
       BMI    LF36B   
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
       LDA    #$04    
       STA    $9C,X   
       STA    $CC,X   
       JMP    LF3CA   
LF326: CLC            
       LDA    $83,X   
       CMP    #$FF    
       BEQ    LF392   
       LDA    $CE,X   
       BEQ    LF37A   
       LDA    $83,X   
       CMP    #$90    
       BCC    LF38E   
       LDA    $89,X   
       CMP    $B1,X   
       BCC    LF36E   
       CMP    $B3,X   
       BCS    LF36E   
       LDA    $A6     
       LSR            
       BCC    LF351   
       TXA            
       EOR    #$01    
       TAY            
       LDA.wy $00C4,Y 
       CMP    #$40    
       BEQ    LF36E   
LF351: LDA    #$40    
       STA    $C4,X   
       LDA    $89,X   
       SEC            
       SBC    $B1,X   
       STA    $BB,X   
       LDA    $D2,X   
       LSR            
       LSR            
       SEC            
       SBC    #$08    
       BMI    LF367   
       STA    $D0,X   
LF367: LDA    #$00    
       STA    $D2,X   
LF36B: JMP    LF3CA   
LF36E: LDA    #$01    
       STA    $C4,X   
       LDA    #$09    
       STA    AUDC0,X 
       STA    AUDV0,X 
       BNE    LF36B   
LF37A: LDA    $83,X   
       CMP    #$9C    
       BCC    LF38E   
       LDA    #$80    
       STA    $C4,X   
       LDA    #$0A    
       STA    $D0,X   
       LDA    #$04    
       STA    $C0,X   
       BNE    LF36B   
LF38E: ADC    $9C,X   
       STA    $83,X   
LF392: CLC            
       LDA    $C6,X   
       ADC    $AB     
       STA    $C6,X   
       BMI    LF3A0   
       LSR            
       LSR            
       LSR            
       BPL    LF3A9   
LF3A0: SEC            
       ROR            
       SEC            
       ROR            
       SEC            
       ROR            
       CLC            
       ADC    #$01    
LF3A9: CLC            
       ADC    $89,X   
       CMP    #$8E    
       BCC    LF3BA   
       BIT    $AB     
       BMI    LF3B8   
       LDA    #$8D    
       BMI    LF3BA   
LF3B8: LDA    #$00    
LF3BA: STA    $89,X   
       LDA    $C6,X   
       BPL    LF3C6   
       AND    #$07    
       ORA    #$F8    
       BMI    LF3C8   
LF3C6: AND    #$07    
LF3C8: STA    $C6,X   
LF3CA: LDA    $D4,X   
       CMP    #$FF    
       BEQ    LF3E9   
       CLC            
       ADC    $9A,X   
       CMP    #$87    
       BCC    LF3E1   
       LDA    $BD     
       BMI    LF3E6   
       LDA    #$FF    
       STA    $CA,X   
       STA    $CC,X   
LF3E1: STA    $D4,X   
       JMP    LF3E9   
LF3E6: JSR    LF64F   
LF3E9: LDX    #$01    
LF3EB: LDA    $D4,X   
       JSR    LF6E7   
       STA    WSYNC   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMP0,X  
LF3F9: DEY            
       BPL    LF3F9   
       STA    RESP0,X 
       DEX            
       BPL    LF3EB   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$01    
LF407: LDA    $89,X   
       JSR    LF6E7   
       STY    $8B,X   
       STA    $8D,X   
       DEX            
       BPL    LF407   
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
       JMP    LF42D   
LF42B: LDA    $83     
LF42D: LSR            
       STA    $85,X   
       BCC    LF436   
       LDA    #$01    
       STA    $8F,X   
LF436: DEX            
       BPL    LF42B   
       LDX    #$01    
LF43B: LDA    $D7,X   
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
       BPL    LF43B   
       JSR    LF638   
       LDA    #$00    
       STA    $82     
       LDA    $B0     
       STA    $81     
LF465: DEY            
       BMI    LF46F   
       LSR    $81     
       ROL    $82     
       JMP    LF465   
LF46F: LDA    INTIM   
       BNE    LF46F   
       STA    WSYNC   
       STA    VBLANK  
       STA    $A0     
       STA    $A1     
       LDA    #$02    
       STA    CTRLPF  
       LDX    #$05    
LF482: STA    WSYNC   
       LDA    $A0     
       STA    PF1     
       LDY    $A4     
       CPY    #$05    
       BCS    LF492   
       LDA    #$00    
       BEQ    LF497   
LF492: LDA    LF7BF,Y 
       AND    #$F0    
LF497: STA    $A0     
       LDY    $A2     
       LDA    LF7BF,Y 
       AND    #$0F    
       ORA    $A0     
       STA    $A0     
       LDA    $A1     
       STA    PF1     
       LDY    $A5     
       CPY    #$05    
       BCS    LF4B2   
       LDA    #$00    
       BEQ    LF4B7   
LF4B2: LDA    LF7BF,Y 
       AND    #$F0    
LF4B7: STA    $A1     
       LDY    $A3     
       LDA    LF7BF,Y 
       AND    #$0F    
       ORA    $A1     
       STA    $A1     
       DEX            
       BMI    LF4E2   
       LDA    $C2     
       BPL    LF4CF   
       LDA    #$00    
       STA    $A1     
LF4CF: LDA    $A0     
       STA    PF1     
       INC    $A2     
       INC    $A4     
       INC    $A3     
       INC    $A5     
       LDA    $A1     
       STA    PF1     
       JMP    LF482   
LF4E2: STX    REFP1   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$00    
       STY    PF1     
LF4EE: LDA    $CA     
       BEQ    LF4F6   
       LDA    #$00    
       BEQ    LF4F9   
LF4F6: LDA    LF776,Y 
LF4F9: STA    WSYNC   
       STA    GRP0    
       LDA    $CB     
       BEQ    LF505   
       LDA    #$00    
       BEQ    LF508   
LF505: LDA    LF776,Y 
LF508: STA    WSYNC   
       STA    GRP1    
       INY            
       CPY    #$08    
       BNE    LF4EE   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$01    
LF521: STA    WSYNC   
       NOP            
       LDY    $8B,X   
       LDA    $8D,X   
       STA    HMP0,X  
LF52A: DEY            
       BPL    LF52A   
       STA    RESP0,X 
       DEX            
       BPL    LF521   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8F     
       STA    VDELP0  
       LDA    $90     
       STA    VDELP1  
       LDA    $91     
       STA    CTRLPF  
       LDX    #$00    
LF544: TXA            
       SEC            
       SBC    $85     
       TAY            
       AND    $87     
       BEQ    LF551   
       LDA    #$00    
       BEQ    LF553   
LF551: LDA    ($96),Y 
LF553: STA    WSYNC   
       STA    GRP0    
       TXA            
       CMP    #$55    
       BCC    LF568   
       LDA    $81     
       STA    PF1     
       LDA    $B8     
       STA    COLUBK  
       LDA    $82     
       STA    PF2     
LF568: TXA            
       INX            
       SEC            
       SBC    $86     
       TAY            
       AND    $88     
       BEQ    LF576   
       LDA    #$00    
       BEQ    LF578   
LF576: LDA    ($98),Y 
LF578: STA    WSYNC   
       STA    GRP1    
       CPX    #$57    
       BNE    LF544   
       LDA    #$00    
       LDX    #$01    
       STA    WSYNC   
LF586: STA    GRP0,X  
       STA    PF1,X   
       STA    VDELP0,X
       DEX            
       BPL    LF586   
       STA    $A0     
       STA    CTRLPF  
       LDA    $B7     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
       STA    WSYNC   
LF59D: DEY            
       BPL    LF59D   
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
LF5B2: LDA    ($92),Y 
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       LDA    $A0     
       STA    PF1     
       LDA    $BA     
       LSR            
       TAX            
       CPX    #$05    
       BCS    LF5CA   
       LDA    #$00    
       BEQ    LF5CF   
LF5CA: LDA    LF7BF,X 
       AND    #$0F    
LF5CF: STA    $A0     
       LDA    #$00    
       STA    PF1     
       INY            
       CPY    #$0A    
       BCC    LF5E0   
       LDA    #$00    
       STA    $BA     
       BEQ    LF5E2   
LF5E0: INC    $BA     
LF5E2: STA    WSYNC   
       CPY    #$10    
       BNE    LF5B2   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDA    #$2E    
       STA    TIM64T  
LF5F5: LDA    INTIM   
       BNE    LF5F5   
       JMP    LF015   
LF5FD: .byte $00,$00,$80,$80,$01
LF602: .byte $32,$46,$88,$0C,$D4,$02,$0E,$00,$0C
LF60B: .byte $04,$07,$05,$0F,$06
LF610: .byte $F0,$E0,$F0,$E0,$C0
LF615: .byte $0A,$06,$0A,$06,$0A
LF61A: .byte $0B,$0F,$13,$17,$1B,$1F,$23,$27,$2B,$2F,$33,$37,$3B,$3F,$43
LF629: .byte $85,$81,$7D,$79,$75,$71,$6D,$69,$65,$61,$5D,$59,$55,$51,$4D
LF638: LDY    $AF     
       LDA    LF61A,Y 
       STA    $B1     
       CLC            
       ADC    $B5     
       STA    $B3     
       LDA    LF629,Y 
       STA    $B4     
       SEC            
       SBC    $B5     
       STA    $B2     
       RTS            

LF64F: LDA    #$00    
       STA    $CA,X   
       CPX    #$01    
       BEQ    LF659   
       LDA    #$86    
LF659: STA    $D4,X   
       RTS            

LF65C: CMP    #$0D    
       BCC    LF666   
       SEC            
       SBC    #$0D    
       JMP    LF65C   
LF666: STA    $AF     
       RTS            

LF669: LDA    #$01    
       STA    $D7     
       STA    $A7     
       STA    $A8     
LF671: LDY    $A7     
       LDX    #$03    
       DEY            
       STY    $AF     
       LDA    LF5FD,Y 
       STA    $A6     
       LSR            
       BCC    LF686   
       LDA    #$0E    
       STA    $AF     
       LDX    #$01    
LF686: STX    $91     
       LDA    LF610,Y 
       STA    $B0     
       LDA    LF615,Y 
       STA    $B5     
       LDX    #$01    
LF694: JSR    LF64F   
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
       BPL    LF694   
       RTS            

LF6B3: AND    #$FF    
       BPL    LF6CA   
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
       BNE    LF6D6   
LF6CA: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$7F    
       STA    $94     
       LDA    #$7F    
       STA    $92     
LF6D6: LDA    $C8     
       BPL    LF6DF   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF6DF: LSR            
       TAY            
       LDA    LF7F8,Y 
       STA    $9E     
       RTS            

LF6E7: LDY    #$00    
       CLC            
       ADC    #$01    
LF6EC: CMP    #$08    
       BCC    LF6F6   
       INY            
       SEC            
       SBC    #$0F    
       BPL    LF6EC   
LF6F6: EOR    #$FF    
       CLC            
       ADC    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LF700: .byte $BD,$5A,$3C,$18,$18,$3C,$42,$81,$3C,$18,$FF,$18,$18,$24,$42,$42
       .byte $00,$00,$BD,$5A,$3C,$99,$5A,$24,$00,$00,$00,$00,$BD,$5A,$BD,$7E
       .byte $00,$00,$00,$00,$00,$BD,$5A,$FF,$3C,$7E,$7E,$FF,$FF,$81,$BD,$5A
       .byte $3C,$18,$18,$24,$42,$81,$00,$00,$00,$00,$00,$7E,$FF,$81,$BD,$5A
       .byte $3C,$18,$18,$24,$42,$81,$00,$00,$00,$00,$00,$00,$00,$00,$BD,$DB
       .byte $BD,$FF,$7E,$24,$42,$81,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$18
       .byte $3C,$5A,$99,$A5,$C3,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$BD,$5A
       .byte $3C,$18,$18,$24,$42,$81
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
