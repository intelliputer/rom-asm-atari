; Disassembly of roms/Combat - Tank Plus (4k Version).bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Combat - Tank Plus (4k Version).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
CTRLPF  =  $0A
REFP0   =  $0B
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
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
VDELP0  =  $25
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP0FB  =  $32
CXM0FB  =  $34
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDX    #$5D    
       JSR    LF5BD   
       LDA    #$10    
       STA    SWBCNT  
       STA    $88     
       JSR    LF1A3   
LF014: JSR    LF032   
       JSR    LF157   
       JSR    LF572   
       JSR    LF2DA   
       JSR    LF444   
       JSR    LF214   
       JSR    LF2A9   
       JSR    LF1F2   
       JSR    LF054   
       JMP    LF014   
LF032: INC    $86     
       STA    HMCLR   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2B    
       STA    TIM64T  
       RTS            

LF054: LDA    #$20    
       STA    $B4     
       STA    WSYNC   
       STA    HMOVE   
LF05C: LDA    INTIM   
       BNE    LF05C   
       STA    WSYNC   
       STA    CXCLR   
       STA    VBLANK  
       TSX            
       STX    $D3     
       LDA    #$02    
       STA    CTRLPF  
       LDX    $DC     
LF070: STA    WSYNC   
       DEX            
       BNE    LF070   
       LDA    $DC     
       CMP    #$0E    
       BEQ    LF0CD   
       LDX    #$05    
       LDA    #$00    
       STA    $DE     
       STA    $DF     
LF083: STA    WSYNC   
       LDA    $DE     
       STA    PF1     
       LDY    $E2     
       LDA    LF5C5,Y 
       AND    #$F0    
       STA    $DE     
       LDY    $E0     
       LDA    LF5C5,Y 
       AND    #$0F    
       ORA    $DE     
       STA    $DE     
       LDA    $DF     
       STA    PF1     
       LDY    $E3     
       LDA    LF5C5,Y 
       AND    #$F0    
       STA    $DF     
       LDY    $E1     
       LDA    LF5C5,Y 
       AND    $87     
       STA    WSYNC   
       ORA    $DF     
       STA    $DF     
       LDA    $DE     
       STA    PF1     
       DEX            
       BMI    LF0CD   
       INC    $E0     
       INC    $E2     
       INC    $E1     
       INC    $E3     
       LDA    $DF     
       STA    PF1     
       JMP    LF083   
LF0CD: LDA    #$00    
       STA    PF1     
       STA    WSYNC   
       LDA    #$05    
       STA    CTRLPF  
       LDA    $D6     
       STA    COLUP0  
       LDA    $D7     
       STA    COLUP1  
LF0DF: LDX    #$1E    
       TXS            
       SEC            
       LDA    $A4     
       SBC    $B4     
       AND    #$FE    
       TAX            
       AND    #$F0    
       BEQ    LF0F2   
       LDA    #$00    
       BEQ    LF0F4   
LF0F2: LDA    $BD,X   
LF0F4: STA    WSYNC   
       STA    GRP0    
       LDA    $A7     
       EOR    $B4     
       AND    #$FE    
       PHP            
       LDA    $A6     
       EOR    $B4     
       AND    #$FE    
       PHP            
       LDA    $B4     
       BPL    LF10C   
       EOR    #$F8    
LF10C: CMP    #$20    
       BCC    LF114   
       LSR            
       LSR            
       LSR            
       TAY            
LF114: LDA    $A5     
       SEC            
       SBC    $B4     
       INC    $B4     
       NOP            
       ORA    #$01    
       TAX            
       AND    #$F0    
       BEQ    LF127   
       LDA    #$00    
       BEQ    LF129   
LF127: LDA    $BD,X   
LF129: BIT    $82     
       STA    GRP1    
       BMI    LF13B   
       LDA    ($B5),Y 
       STA    PF0     
       LDA    ($B7),Y 
       STA    PF1     
       LDA    ($B9),Y 
       STA    PF2     
LF13B: INC    $B4     
       LDA    $B4     
       EOR    #$EC    
       BNE    LF0DF   
       LDX    $D3     
       TXS            
       STA    ENAM0   
       STA    ENAM1   
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       RTS            

LF157: LDA    SWCHB   
       LSR            
       BCS    LF170   
       LDA    #$0F    
       STA    $87     
       LDA    #$FF    
       STA    $88     
       LDA    #$80    
       STA    $DD     
       LDX    #$E6    
       JSR    LF5BD   
       BEQ    LF1D0   
LF170: LDY    #$02    
       LDA    $DD     
       AND    $88     
       CMP    #$F0    
       BCC    LF182   
       LDA    $86     
       AND    #$30    
       BNE    LF182   
       LDY    #$0E    
LF182: STY    $DC     
       LDA    $86     
       AND    #$3F    
       BNE    LF192   
       STA    $89     
       INC    $DD     
       BNE    LF192   
       STA    $88     
LF192: LDA    SWCHB   
       AND    #$02    
       BEQ    LF19D   
       STA    $89     
       BNE    LF1F1   
LF19D: BIT    $89     
       BMI    LF1F1   
       INC    $80     
LF1A3: LDX    #$DF    
LF1A5: JSR    LF5BD   
       LDA    #$FF    
       STA    $89     
       LDY    $80     
       LDA    LF7D8,Y 
       STA    $A3     
       EOR    #$FF    
       BNE    LF1BB   
       LDX    #$DD    
       BNE    LF1A5   
LF1BB: LDA    $81     
       SED            
       CLC            
       ADC    #$01    
       STA    $81     
       STA    $A1     
       CLD            
       BIT    $A3     
       BPL    LF1D0   
       INC    $85     
       BVC    LF1D0   
       INC    $85     
LF1D0: JSR    LF525   
       LDA    #$32    
       STA    $A5     
       LDA    #$86    
       STA    $A4     
       BIT    $A3     
       BMI    LF1F1   
       STA    $A5     
       STA    RESP1   
       LDA    #$08    
       STA    $96     
       LDA    #$20    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
LF1F1: RTS            

LF1F2: LDX    #$01    
LF1F4: LDA    $A1,X   
       AND    #$0F    
       STA    $D2     
       ASL            
       ASL            
       CLC            
       ADC    $D2     
       STA    $E0,X   
       LDA    $A1,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $D2     
       LSR            
       LSR            
       CLC            
       ADC    $D2     
       STA    $E2,X   
       DEX            
       BPL    LF1F4   
       RTS            

LF214: BIT    $83     
       BVC    LF21C   
       LDA    #$30    
       BPL    LF21E   
LF21C: LDA    #$20    
LF21E: STA    $B1     
       LDX    #$03    
       JSR    LF254   
       DEX            
       JSR    LF254   
       DEX            
LF22A: LDA    $8D,X   
       AND    #$08    
       LSR            
       LSR            
       STX    $D1     
       CLC            
       ADC    $D1     
       TAY            
       LDA.wy $00A8,Y 
       SEC            
       BMI    LF23D   
       CLC            
LF23D: ROL            
       STA.wy $00A8,Y 
       BCC    LF250   
       LDA    $AC,X   
       AND    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $B1     
       JSR    LF254   
LF250: DEX            
       BEQ    LF22A   
       RTS            

LF254: INC    $AC,X   
       LDA    $95,X   
       AND    #$0F    
       CLC            
       ADC    $B1     
       TAY            
       LDA    LF5F7,Y 
       STA    $B0     
       BIT    $82     
       BVS    LF27A   
       LDA    $95,X   
       SEC            
       SBC    #$02    
       AND    #$03    
       BNE    LF27A   
       LDA    $AC,X   
       AND    #$03    
       BNE    LF27A   
       LDA    #$08    
       STA    $B0     
LF27A: LDA    $B0     
LF27C: STA    HMP0,X  
       AND    #$0F    
       SEC            
       SBC    #$08    
       STA    $D4     
       CLC            
       ADC    $A4,X   
       BIT    $A3     
       BMI    LF290   
       CPX    #$02    
       BCS    LF2A0   
LF290: CMP    #$DB    
       BCS    LF298   
       CMP    #$25    
       BCS    LF2A0   
LF298: LDA    #$D9    
       BIT    $D4     
       BMI    LF2A0   
       LDA    #$28    
LF2A0: STA    $A4,X   
       CPX    #$02    
       BCS    LF2A8   
       STA    VDELP0,X
LF2A8: RTS            

LF2A9: LDA    #$01    
       AND    $86     
       TAX            
       LDA    $95,X   
       STA    REFP0,X 
       AND    #$0F    
       TAY            
       BIT    $83     
       BPL    LF2BB   
       STY    $97,X   
LF2BB: TXA            
       EOR    #$0E    
       TAX            
       TYA            
       ASL            
       ASL            
       ASL            
       CMP    #$3F    
       CLC            
       BMI    LF2CB   
       SEC            
       EOR    #$47    
LF2CB: TAY            
LF2CC: LDA    ($BB),Y 
       STA    $BD,X   
       BCC    LF2D4   
       DEY            
       DEY            
LF2D4: INY            
       DEX            
       DEX            
       BPL    LF2CC   
       RTS            

LF2DA: LDA    $8A     
       SEC            
       SBC    #$02    
       BCC    LF30C   
       STA    $8A     
       CMP    #$02    
       BCC    LF30B   
       AND    #$01    
       TAX            
       INC    $95,X   
       LDA    $D8,X   
       STA    $D6,X   
       LDA    $8A     
       CMP    #$F7    
       BCC    LF2F9   
       JSR    LF508   
LF2F9: LDA    $8A     
       BPL    LF30B   
       LSR            
       LSR            
       LSR            
LF300: STA    AUDV0,X 
       LDA    #$08    
       STA    AUDC0,X 
       LDA    LF7FE,X 
       STA    AUDF0,X 
LF30B: RTS            

LF30C: LDX    #$01    
       LDA    SWCHB   
       STA    $D5     
       LDA    SWCHA   
LF316: BIT    $88     
       BMI    LF31C   
       LDA    #$FF    
LF31C: EOR    #$FF    
       AND    #$0F    
       STA    $D2     
       LDY    $85     
       LDA    LF70F,Y 
       CLC            
       ADC    $D2     
       TAY            
       LDA    LF712,Y 
       AND    #$0F    
       STA    $D1     
       BEQ    LF338   
       CMP    $91,X   
       BNE    LF33C   
LF338: DEC    $93,X   
       BNE    LF349   
LF33C: STA    $91,X   
       LDA    #$0F    
       STA    $93,X   
       LDA    $D1     
       CLC            
       ADC    $95,X   
       STA    $95,X   
LF349: INC    $8D,X   
       BMI    LF36B   
       LDA    LF712,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       BIT    $D5     
       BMI    LF37B   
LF358: STA    $8B,X   
       ASL            
       TAY            
       LDA    LF637,Y 
       STA    $A8,X   
       INY            
       LDA    LF637,Y 
       STA    $AA,X   
       LDA    #$F0    
       STA    $8D,X   
LF36B: JSR    LF380   
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       ASL    $D5     
       DEX            
       BEQ    LF316   
       RTS            

LF37B: SEC            
       SBC    $85     
       BPL    LF358   
LF380: LDA    $A3     
       BMI    LF38C   
       AND    #$01    
       BEQ    LF38C   
       LDA    $DB     
       STA    $D6,X   
LF38C: LDA    $99,X   
       BEQ    LF3B7   
       LDA    $D8,X   
       STA    $D6,X   
       LDA    $99,X   
       CMP    #$07    
       BCC    LF3AE   
       BIT    $D5     
       BPL    LF3A2   
       CMP    #$1C    
       BCC    LF3AE   
LF3A2: CMP    #$30    
       BCC    LF3C5   
       CMP    #$37    
       BCS    LF3CB   
       BIT    $83     
       BVC    LF3CB   
LF3AE: LDA    #$00    
       STA    $99,X   
       LDA    #$FF    
LF3B4: STA    RESMP0,X
       RTS            

LF3B7: BIT    $88     
       BPL    LF3BF   
       LDA    INPT4,X 
       BPL    LF3F6   
LF3BF: JSR    LF410   
       JMP    LF3AE   
LF3C5: JSR    LF410   
       JMP    LF3DE   
LF3CB: LDA    $9F,X   
       BEQ    LF3D9   
       JSR    LF410   
       LDA    #$30    
       STA    $99,X   
       JMP    LF3DE   
LF3D9: LDA    $99,X   
       JSR    LF300   
LF3DE: LDA    $86     
       AND    #$03    
       BEQ    LF3F0   
       BIT    $84     
       BVS    LF3F2   
       BIT    $82     
       BVC    LF3F0   
       AND    #$01    
       BNE    LF3F2   
LF3F0: DEC    $99,X   
LF3F2: LDA    #$00    
       BEQ    LF3B4   
LF3F6: LDA    #$3F    
       STA    $99,X   
       SEC            
       LDA    $A4,X   
       SBC    #$06    
       STA    $A6,X   
       LDA    $95,X   
       STA    $97,X   
       LDA    #$1F    
       STA    $9B,X   
       LDA    #$00    
       STA    $9D,X   
       JMP    LF3CB   
LF410: LDA    $9F,X   
       BEQ    LF421   
       LDA    #$04    
       STA    AUDC0,X 
       LDA    #$07    
       STA    AUDV0,X 
       LDA    $9B,X   
       STA    AUDF0,X 
       RTS            

LF421: LDY    $85     
       LDA    LF733,Y 
       AND    $88     
       STA    AUDV0,X 
       LDA    LF736,Y 
       STA    AUDC0,X 
       CLC            
       LDA    #$00    
LF432: DEY            
       BMI    LF439   
       ADC    #$0C    
       BPL    LF432   
LF439: ADC    $8B,X   
       TAY            
       TXA            
       ASL            
       ADC    LF739,Y 
       STA    AUDF0,X 
       RTS            

LF444: LDX    #$01    
LF446: LDA    CXM0P,X 
       BPL    LF476   
       BIT    $84     
       BVC    LF454   
       LDA    $9B,X   
       CMP    #$1F    
       BEQ    LF476   
LF454: INC    $95,X   
       INC    $97,X   
       SED            
       LDA    $A1,X   
       CLC            
       ADC    #$01    
       STA    $A1,X   
       CLD            
       TXA            
       CLC            
       ADC    #$FD    
       STA    $8A     
       LDA    #$FF    
       STA    RESMP0  
       STA    RESMP1  
       LDA    #$00    
       STA    AUDV0,X 
       STA    $99     
       STA    $9A     
       RTS            

LF476: BIT    $A3     
       BPL    LF47D   
       JMP    LF501   
LF47D: LDA    $9F,X   
       BEQ    LF48B   
       CMP    #$04    
       INC    $9F,X   
       BCC    LF48B   
       LDA    #$00    
       STA    $9F,X   
LF48B: LDA    CXM0FB,X
       BMI    LF496   
       LDA    #$00    
       STA    $9D,X   
       JMP    LF4D6   
LF496: BIT    $82     
       BVC    LF4D0   
       LDA    $9D,X   
       BNE    LF4B7   
       INC    $9F,X   
       DEC    $9B,X   
       LDA    $97,X   
       STA    $B2,X   
       EOR    #$FF    
       STA    $97,X   
       INC    $97,X   
       LDA    $97,X   
       AND    #$03    
       BNE    LF4B4   
       INC    $97,X   
LF4B4: JMP    LF4D4   
LF4B7: CMP    #$01    
       BEQ    LF4C6   
       CMP    #$03    
       BCC    LF4D4   
       BNE    LF4D4   
       LDA    $B2,X   
       JMP    LF4C8   
LF4C6: LDA    $97,X   
LF4C8: CLC            
       ADC    #$08    
       STA    $97,X   
       JMP    LF4D4   
LF4D0: LDA    #$01    
       STA    $99,X   
LF4D4: INC    $9D,X   
LF4D6: LDA    CXP0FB,X
       BMI    LF4DE   
       LDA    CXPPMM  
       BPL    LF4E7   
LF4DE: LDA    $8A     
       CMP    #$02    
       BCC    LF4ED   
       JSR    LF508   
LF4E7: LDA    #$03    
       STA    $E4,X   
       BNE    LF501   
LF4ED: DEC    $E4,X   
       BMI    LF4F7   
       LDA    $8B,X   
       BEQ    LF501   
       BNE    LF4F9   
LF4F7: INC    $95,X   
LF4F9: LDA    $95,X   
       CLC            
       ADC    #$08    
       JSR    LF50F   
LF501: DEX            
       BMI    LF507   
       JMP    LF446   
LF507: RTS            

LF508: TXA            
       EOR    #$01    
       TAY            
       LDA.wy $0097,Y 
LF50F: AND    #$0F    
       TAY            
       LDA    LF627,Y 
       JSR    LF27C   
       LDA    #$00    
       STA    $A8,X   
       STA    $AA,X   
       STA    $8D,X   
       LDA    $D8,X   
       STA    $D6,X   
       RTS            

LF525: LDX    $85     
       LDA    LF7C6,X 
       STA    $BB     
       LDA    LF7C9,X 
       STA    $BC     
       LDA    $A3     
       LSR            
       LSR            
       AND    #$03    
       TAX            
       LDA    $A3     
       BPL    LF546   
       AND    #$08    
       BEQ    LF544   
       LDX    #$03    
       BPL    LF548   
LF544: LDA    #$80    
LF546: STA    $82     
LF548: LDA    $A3     
       ASL            
       ASL            
       BIT    $A3     
       BMI    LF556   
       STA    WSYNC   
       STA    $84     
       AND    #$80    
LF556: STA    $83     
       LDA    #$F7    
       STA    $B6     
       STA    $B8     
       STA    $BA     
       LDA    LF7CC,X 
       STA    RESP0   
       STA    $B5     
       LDA    LF7D0,X 
       STA    $B7     
       LDA    LF7D4,X 
       STA    $B9     
       RTS            

LF572: LDA    $A3     
       AND    #$87    
       BMI    LF57A   
       LDA    #$00    
LF57A: ASL            
       TAX            
       LDA    LF75D,X 
       STA    NUSIZ0  
       LDA    LF75E,X 
       STA    NUSIZ1  
       LDA    $A3     
       AND    #$C0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $88     
       STA    SWCHB   
       EOR    #$FF    
       AND    $DD     
       STA    $D1     
       LDX    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF5A7   
       LDY    #$10    
       LDX    #$0F    
LF5A7: STX    $D2     
       LDX    #$03    
LF5AB: LDA    LF765,Y 
       EOR    $D1     
       AND    $D2     
       STA    COLUP0,X
       STA    $D6,X   
       STA    $D8,X   
       INY            
       DEX            
       BPL    LF5AB   
       RTS            

LF5BD: LDA    #$00    
LF5BF: INX            
       STA    $A2,X   
       BNE    LF5BF   
       RTS            

LF5C5: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF5F7: .byte $F8,$F7,$F6,$06,$06,$06,$16,$17,$18,$19,$1A,$0A,$0A,$0A,$FA,$F9
       .byte $F8,$F7,$F6,$F6,$06,$16,$16,$17,$18,$19,$1A,$1A,$0A,$FA,$FA,$F9
       .byte $E8,$E6,$E4,$F4,$04,$14,$24,$26,$28,$2A,$2C,$1C,$0C,$FC,$EC,$EA
LF627: .byte $C8,$C4,$C0,$E0,$00,$20,$40,$44,$48,$4C,$4F,$2F,$0F,$EF,$CF,$CC
LF637: .byte $00,$00,$80,$80,$84,$20,$88,$88,$92,$48,$A4,$A4,$A9,$52,$AA,$AA
       .byte $D5,$AA,$DA,$DA,$DB,$6D,$EE,$EE,$00,$FC,$FC,$38,$3F,$38,$FC,$FC
       .byte $1C,$78,$FB,$7C,$1C,$1F,$3E,$18,$19,$3A,$7C,$FF,$DF,$0E,$1C,$18
       .byte $24,$64,$79,$FF,$FF,$4E,$0E,$04,$08,$08,$6B,$7F,$7F,$7F,$63,$63
       .byte $24,$26,$9E,$FF,$FF,$72,$70,$20,$98,$5C,$3E,$FF,$FB,$70,$38,$18
       .byte $38,$1E,$DF,$3E,$38,$F8,$7C,$18,$60,$70,$78,$FF,$78,$70,$60,$00
       .byte $00,$C1,$FE,$7C,$78,$30,$30,$30,$00,$03,$06,$FC,$FC,$3C,$0C,$0C
       .byte $02,$04,$0C,$1C,$FC,$FC,$1E,$06,$10,$10,$10,$38,$7C,$FE,$FE,$10
       .byte $40,$20,$30,$38,$3F,$3F,$78,$60,$40,$60,$3F,$1F,$1E,$1E,$18,$18
       .byte $00,$83,$7F,$3E,$1E,$0C,$0C,$0C,$00,$8E,$84,$FF,$FF,$04,$0E,$00
       .byte $00,$0E,$04,$8F,$7F,$72,$07,$00,$10,$36,$2E,$0C,$1F,$B2,$E0,$40
       .byte $24,$2C,$5D,$1A,$1A,$30,$F0,$60,$18,$5A,$7E,$5A,$18,$18,$18,$78
       .byte $34,$36,$5A,$78,$2C,$0C,$06,$0C,$08,$6C,$70,$B8,$DC,$4E,$07,$06
       .byte $38,$10,$F0,$7C,$4F,$E3,$02,$00
LF70F: .byte $00,$0B,$16
LF712: .byte $00,$10,$00,$FF,$01,$11,$01,$FF,$0F,$1F,$0F,$50,$5F,$51,$FF,$30
       .byte $3F,$31,$FF,$70,$7F,$71,$90,$B0,$70,$FF,$91,$B1,$71,$FF,$9F,$BF
       .byte $7F
LF733: .byte $08,$02,$02
LF736: .byte $02,$03,$08
LF739: .byte $1D,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1D,$1D
       .byte $16,$16,$0F,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$12,$10,$10
       .byte $0C,$0C,$07,$07
LF75D: .byte $00
LF75E: .byte $00,$01,$01,$00,$03,$27,$03
LF765: .byte $EA,$3C,$82,$44,$32,$2C,$8A,$DA,$80,$9C,$DA,$3A,$64,$A8,$DA,$4A
       .byte $08,$04,$00,$0E,$F0,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $FF,$00,$00,$00,$38,$00,$00,$00,$60,$20,$20,$23,$FF,$80,$80,$00
       .byte $00,$00,$1C,$04,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$07,$1F,$3F,$7F,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$60,$20,$21,$FF,$00,$00,$00,$80,$80,$80,$80,$00,$00,$00
       .byte $07
LF7C6: .byte $4F,$CF,$8F
LF7C9: .byte $F6,$F6,$F6
LF7CC: .byte $75,$75,$75,$9A
LF7D0: .byte $81,$99,$AA,$9D
LF7D4: .byte $8D,$99,$B6,$9D
LF7D8: .byte $24,$28,$08,$20,$00,$48,$40,$54,$58,$25,$29,$49,$55,$59,$A8,$88
       .byte $98,$90,$A1,$83,$E8,$C8,$E0,$C0,$E9,$E2,$C1,$FF,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$F0
LF7FE: .byte $0F,$11,$78,$D8,$A2,$FF,$9A,$A2,$5D,$20,$BD,$F5,$A9,$10,$8D,$83
       .byte $02,$85,$88,$20,$A3,$F1,$20,$32,$F0,$20,$57,$F1,$20,$72,$F5,$20
       .byte $DA,$F2,$20,$44,$F4,$20,$14,$F2,$20,$A9,$F2,$20,$F2,$F1,$20,$54
       .byte $F0,$4C,$14,$F0,$E6,$86,$85,$2B,$A9,$02,$85,$02,$85,$01,$85,$02
       .byte $85,$02,$85,$02,$85,$00,$85,$02,$85,$02,$A9,$00,$85,$02,$85,$00
       .byte $A9,$2B,$8D,$96,$02,$60,$A9,$20,$85,$B4,$85,$02,$85,$2A,$AD,$84
       .byte $02,$D0,$FB,$85,$02,$85,$2C,$85,$01,$BA,$86,$D3,$A9,$02,$85,$0A
       .byte $A6,$DC,$85,$02,$CA,$D0,$FB,$A5,$DC,$C9,$0E,$F0,$52,$A2,$05,$A9
       .byte $00,$85,$DE,$85,$DF,$85,$02,$A5,$DE,$85,$0E,$A4,$E2,$B9,$C5,$F5
       .byte $29,$F0,$85,$DE,$A4,$E0,$B9,$C5,$F5,$29,$0F,$05,$DE,$85,$DE,$A5
       .byte $DF,$85,$0E,$A4,$E3,$B9,$C5,$F5,$29,$F0,$85,$DF,$A4,$E1,$B9,$C5
       .byte $F5,$25,$87,$85,$02,$05,$DF,$85,$DF,$A5,$DE,$85,$0E,$CA,$30,$0F
       .byte $E6,$E0,$E6,$E2,$E6,$E1,$E6,$E3,$A5,$DF,$85,$0E,$4C,$83,$F0,$A9
       .byte $00,$85,$0E,$85,$02,$A9,$05,$85,$0A,$A5,$D6,$85,$06,$A5,$D7,$85
       .byte $07,$A2,$1E,$9A,$38,$A5,$A4,$E5,$B4,$29,$FE,$AA,$29,$F0,$F0,$04
       .byte $A9,$00,$F0,$02,$B5,$BD,$85,$02,$85,$1B,$A5,$A7,$45,$B4,$29,$FE
       .byte $08,$A5,$A6,$45,$B4,$29,$FE,$08,$A5,$B4,$10,$02,$49,$F8,$C9,$20
       .byte $90,$04,$4A,$4A,$4A,$A8,$A5,$A5,$38,$E5,$B4,$E6,$B4,$EA,$09,$01
       .byte $AA,$29,$F0,$F0,$04,$A9,$00,$F0,$02,$B5,$BD,$24,$82,$85,$1C,$30
       .byte $0C,$B1,$B5,$85,$0D,$B1,$B7,$85,$0E,$B1,$B9,$85,$0F,$E6,$B4,$A5
       .byte $B4,$49,$EC,$D0,$9C,$A6,$D3,$9A,$85,$1D,$85,$1E,$85,$1B,$85,$1C
       .byte $85,$1B,$85,$0D,$85,$0E,$85,$0F,$60,$AD,$82,$02,$4A,$B0,$13,$A9
       .byte $0F,$85,$87,$A9,$FF,$85,$88,$A9,$80,$85,$DD,$A2,$E6,$20,$BD,$F5
       .byte $F0,$60,$A0,$02,$A5,$DD,$25,$88,$C9,$F0,$90,$08,$A5,$86,$29,$30
       .byte $D0,$02,$A0,$0E,$84,$DC,$A5,$86,$29,$3F,$D0,$08,$85,$89,$E6,$DD
       .byte $D0,$02,$85,$88,$AD,$82,$02,$29,$02,$F0,$04,$85,$89,$D0,$54,$24
       .byte $89,$30,$50,$E6,$80,$A2,$DF,$20,$BD,$F5,$A9,$FF,$85,$89,$A4,$80
       .byte $B9,$D8,$F7,$85,$A3,$49,$FF,$D0,$04,$A2,$DD,$D0,$EA,$A5,$81,$F8
       .byte $18,$69,$01,$85,$81,$85,$A1,$D8,$24,$A3,$10,$06,$E6,$85,$50,$02
       .byte $E6,$85,$20,$25,$F5,$A9,$32,$85,$A5,$A9,$86,$85,$A4,$24,$A3,$30
       .byte $12,$85,$A5,$85,$11,$A9,$08,$85,$96,$A9,$20,$85,$20,$85,$21,$85
       .byte $02,$85,$2A,$60,$A2,$01,$B5,$A1,$29,$0F,$85,$D2,$0A,$0A,$18,$65
       .byte $D2,$95,$E0,$B5,$A1,$29,$F0,$4A,$4A,$85,$D2,$4A,$4A,$18,$65,$D2
       .byte $95,$E2,$CA,$10,$E1,$60,$24,$83,$50,$04,$A9,$30,$10,$02,$A9,$20
       .byte $85,$B1,$A2,$03,$20,$54,$F2,$CA,$20,$54,$F2,$CA,$B5,$8D,$29,$08
       .byte $4A,$4A,$86,$D1,$18,$65,$D1,$A8,$B9,$A8,$00,$38,$30,$01,$18,$2A
       .byte $99,$A8,$00,$90,$0D,$B5,$AC,$29,$01,$0A,$0A,$0A,$0A,$85,$B1,$20
       .byte $54,$F2,$CA,$F0,$D7,$60,$F6,$AC,$B5,$95,$29,$0F,$18,$65,$B1,$A8
       .byte $B9,$F7,$F5,$85,$B0,$24,$82,$70,$13,$B5,$95,$38,$E9,$02,$29,$03
       .byte $D0,$0A,$B5,$AC,$29,$03,$D0,$04,$A9,$08,$85,$B0,$A5,$B0,$95,$20
       .byte $29,$0F,$38,$E9,$08,$85,$D4,$18,$75,$A4,$24,$A3,$30,$04,$E0,$02
       .byte $B0,$10,$C9,$DB,$B0,$04,$C9,$25,$B0,$08,$A9,$D9,$24,$D4,$30,$02
       .byte $A9,$28,$95,$A4,$E0,$02,$B0,$02,$95,$25,$60,$A9,$01,$25,$86,$AA
       .byte $B5,$95,$95,$0B,$29,$0F,$A8,$24,$83,$10,$02,$94,$97,$8A,$49,$0E
       .byte $AA,$98,$0A,$0A,$0A,$C9,$3F,$18,$30,$03,$38,$49,$47,$A8,$B1,$BB
       .byte $95,$BD,$90,$02,$88,$88,$C8,$CA,$CA,$10,$F3,$60,$A5,$8A,$38,$E9
       .byte $02,$90,$2B,$85,$8A,$C9,$02,$90,$24,$29,$01,$AA,$F6,$95,$B5,$D8
       .byte $95,$D6,$A5,$8A,$C9,$F7,$90,$03,$20,$08,$F5,$A5,$8A,$10,$0E,$4A
       .byte $4A,$4A,$95,$19,$A9,$08,$95,$15,$BD,$FE,$F7,$95,$17,$60,$A2,$01
       .byte $AD,$82,$02,$85,$D5,$AD,$80,$02,$24,$88,$30,$02,$A9,$FF,$49,$FF
       .byte $29,$0F,$85,$D2,$A4,$85,$B9,$0F,$F7,$18,$65,$D2,$A8,$B9,$12,$F7
       .byte $29,$0F,$85,$D1,$F0,$04,$D5,$91,$D0,$04,$D6,$93,$D0,$0D,$95,$91
       .byte $A9,$0F,$95,$93,$A5,$D1,$18,$75,$95,$95,$95,$F6,$8D,$30,$1E,$B9
       .byte $12,$F7,$4A,$4A,$4A,$4A,$24,$D5,$30,$23,$95,$8B,$0A,$A8,$B9,$37
       .byte $F6,$95,$A8,$C8,$B9,$37,$F6,$95,$AA,$A9,$F0,$95,$8D,$20,$80,$F3
       .byte $AD,$80,$02,$4A,$4A,$4A,$4A,$06,$D5,$CA,$F0,$9C,$60,$38,$E5,$85
       .byte $10,$D8,$A5,$A3,$30,$08,$29,$01,$F0,$04,$A5,$DB,$95,$D6,$B5,$99
       .byte $F0,$27,$B5,$D8,$95,$D6,$B5,$99,$C9,$07,$90,$14,$24,$D5,$10,$04
       .byte $C9,$1C,$90,$0C,$C9,$30,$90,$1F,$C9,$37,$B0,$21,$24,$83,$50,$1D
       .byte $A9,$00,$95,$99,$A9,$FF,$95,$28,$60,$24,$88,$10,$04,$B5,$3C,$10
       .byte $37,$20,$10,$F4,$4C,$AE,$F3,$20,$10,$F4,$4C,$DE,$F3,$B5,$9F,$F0
       .byte $0A,$20,$10,$F4,$A9,$30,$95,$99,$4C,$DE,$F3,$B5,$99,$20,$00,$F3
       .byte $A5,$86,$29,$03,$F0,$0C,$24,$84,$70,$0A,$24,$82,$50,$04,$29,$01
       .byte $D0,$02,$D6,$99,$A9,$00,$F0,$BE,$A9,$3F,$95,$99,$38,$B5,$A4,$E9
       .byte $06,$95,$A6,$B5,$95,$95,$97,$A9,$1F,$95,$9B,$A9,$00,$95,$9D,$4C
       .byte $CB,$F3,$B5,$9F,$F0,$0D,$A9,$04,$95,$15,$A9,$07,$95,$19,$B5,$9B
       .byte $95,$17,$60,$A4,$85,$B9,$33,$F7,$25,$88,$95,$19,$B9,$36,$F7,$95
       .byte $15,$18,$A9,$00,$88,$30,$04,$69,$0C,$10,$F9,$75,$8B,$A8,$8A,$0A
       .byte $79,$39,$F7,$95,$17,$60,$A2,$01,$B5,$30,$10,$2C,$24,$84,$50,$06
       .byte $B5,$9B,$C9,$1F,$F0,$22,$F6,$95,$F6,$97,$F8,$B5,$A1,$18,$69,$01
       .byte $95,$A1,$D8,$8A,$18,$69,$FD,$85,$8A,$A9,$FF,$85,$28,$85,$29,$A9
       .byte $00,$95,$19,$85,$99,$85,$9A,$60,$24,$A3,$10,$03,$4C,$01,$F5,$B5
       .byte $9F,$F0,$0A,$C9,$04,$F6,$9F,$90,$04,$A9,$00,$95,$9F,$B5,$34,$30
       .byte $07,$A9,$00,$95,$9D,$4C,$D6,$F4,$24,$82,$50,$36,$B5,$9D,$D0,$19
       .byte $F6,$9F,$D6,$9B,$B5,$97,$95,$B2,$49,$FF,$95,$97,$F6,$97,$B5,$97
       .byte $29,$03,$D0,$02,$F6,$97,$4C,$D4,$F4,$C9,$01,$F0,$0B,$C9,$03,$90
       .byte $15,$D0,$13,$B5,$B2,$4C,$C8,$F4,$B5,$97,$18,$69,$08,$95,$97,$4C
       .byte $D4,$F4,$A9,$01,$95,$99,$F6,$9D,$B5,$32,$30,$04,$A5,$37,$10,$09
       .byte $A5,$8A,$C9,$02,$90,$09,$20,$08,$F5,$A9,$03,$95,$E4,$D0,$14,$D6
       .byte $E4,$30,$06,$B5,$8B,$F0,$0C,$D0,$02,$F6,$95,$B5,$95,$18,$69,$08
       .byte $20,$0F,$F5,$CA,$30,$03,$4C,$46,$F4,$60,$8A,$49,$01,$A8,$B9,$97
       .byte $00,$29,$0F,$A8,$B9,$27,$F6,$20,$7C,$F2,$A9,$00,$95,$A8,$95,$AA
       .byte $95,$8D,$B5,$D8,$95,$D6,$60,$A6,$85,$BD,$C6,$F7,$85,$BB,$BD,$C9
       .byte $F7,$85,$BC,$A5,$A3,$4A,$4A,$29,$03,$AA,$A5,$A3,$10,$0A,$29,$08
       .byte $F0,$04,$A2,$03,$10,$04,$A9,$80,$85,$82,$A5,$A3,$0A,$0A,$24,$A3
       .byte $30,$06,$85,$02,$85,$84,$29,$80,$85,$83,$A9,$F7,$85,$B6,$85,$B8
       .byte $85,$BA,$BD,$CC,$F7,$85,$10,$85,$B5,$BD,$D0,$F7,$85,$B7,$BD,$D4
       .byte $F7,$85,$B9,$60,$A5,$A3,$29,$87,$30,$02,$A9,$00,$0A,$AA,$BD,$5D
       .byte $F7,$85,$04,$BD,$5E,$F7,$85,$05,$A5,$A3,$29,$C0,$4A,$4A,$4A,$4A
       .byte $A8,$A5,$88,$8D,$82,$02,$49,$FF,$25,$DD,$85,$D1,$A2,$FF,$AD,$82
       .byte $02,$29,$08,$D0,$04,$A0,$10,$A2,$0F,$86,$D2,$A2,$03,$B9,$65,$F7
       .byte $45,$D1,$25,$D2,$95,$06,$95,$D6,$95,$D8,$C8,$CA,$10,$EF,$60,$A9
       .byte $00,$E8,$95,$A2,$D0,$FB,$60,$0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22
       .byte $22,$EE,$22,$EE,$88,$EE,$EE,$22,$66,$22,$EE,$AA,$AA,$EE,$22,$22
       .byte $EE,$88,$EE,$22,$EE,$EE,$88,$EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE
       .byte $AA,$EE,$AA,$EE,$EE,$AA,$EE,$22,$EE,$F8,$F7,$F6,$06,$06,$06,$16
       .byte $17,$18,$19,$1A,$0A,$0A,$0A,$FA,$F9,$F8,$F7,$F6,$F6,$06,$16,$16
       .byte $17,$18,$19,$1A,$1A,$0A,$FA,$FA,$F9,$E8,$E6,$E4,$F4,$04,$14,$24
       .byte $26,$28,$2A,$2C,$1C,$0C,$FC,$EC,$EA,$C8,$C4,$C0,$E0,$00,$20,$40
       .byte $44,$48,$4C,$4F,$2F,$0F,$EF,$CF,$CC,$00,$00,$80,$80,$84,$20,$88
       .byte $88,$92,$48,$A4,$A4,$A9,$52,$AA,$AA,$D5,$AA,$DA,$DA,$DB,$6D,$EE
       .byte $EE,$00,$FC,$FC,$38,$3F,$38,$FC,$FC,$1C,$78,$FB,$7C,$1C,$1F,$3E
       .byte $18,$19,$3A,$7C,$FF,$DF,$0E,$1C,$18,$24,$64,$79,$FF,$FF,$4E,$0E
       .byte $04,$08,$08,$6B,$7F,$7F,$7F,$63,$63,$24,$26,$9E,$FF,$FF,$72,$70
       .byte $20,$98,$5C,$3E,$FF,$FB,$70,$38,$18,$38,$1E,$DF,$3E,$38,$F8,$7C
       .byte $18,$60,$70,$78,$FF,$78,$70,$60,$00,$00,$C1,$FE,$7C,$78,$30,$30
       .byte $30,$00,$03,$06,$FC,$FC,$3C,$0C,$0C,$02,$04,$0C,$1C,$FC,$FC,$1E
       .byte $06,$10,$10,$10,$38,$7C,$FE,$FE,$10,$40,$20,$30,$38,$3F,$3F,$78
       .byte $60,$40,$60,$3F,$1F,$1E,$1E,$18,$18,$00,$83,$7F,$3E,$1E,$0C,$0C
       .byte $0C,$00,$8E,$84,$FF,$FF,$04,$0E,$00,$00,$0E,$04,$8F,$7F,$72,$07
       .byte $00,$10,$36,$2E,$0C,$1F,$B2,$E0,$40,$24,$2C,$5D,$1A,$1A,$30,$F0
       .byte $60,$18,$5A,$7E,$5A,$18,$18,$18,$78,$34,$36,$5A,$78,$2C,$0C,$06
       .byte $0C,$08,$6C,$70,$B8,$DC,$4E,$07,$06,$38,$10,$F0,$7C,$4F,$E3,$02
       .byte $00,$00,$0B,$16,$00,$10,$00,$FF,$01,$11,$01,$FF,$0F,$1F,$0F,$50
       .byte $5F,$51,$FF,$30,$3F,$31,$FF,$70,$7F,$71,$90,$B0,$70,$FF,$91,$B1
       .byte $71,$FF,$9F,$BF,$7F,$08,$02,$02,$02,$03,$08,$1D,$05,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$1D,$1D,$16,$16,$0F,$0F,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$12,$10,$10,$0C,$0C,$07,$07,$00
       .byte $00,$01,$01,$00,$03,$27,$03,$EA,$3C,$82,$44,$32,$2C,$8A,$DA,$80
       .byte $9C,$DA,$3A,$64,$A8,$DA,$4A,$08,$04,$00,$0E,$F0,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$FF,$00,$00,$00,$38,$00,$00,$00,$60
       .byte $20,$20,$23,$FF,$80,$80,$00,$00,$00,$1C,$04,$00,$00,$00,$00,$FF
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$1F,$3F,$7F
       .byte $FF,$00,$00,$00,$00,$00,$00,$00,$00,$60,$20,$21,$FF,$00,$00,$00
       .byte $80,$80,$80,$80,$00,$00,$00,$07,$4F,$CF,$8F,$F6,$F6,$F6,$75,$75
       .byte $75,$9A,$81,$99,$AA,$9D,$8D,$99,$B6,$9D,$24,$28,$08,$20,$00,$48
       .byte $40,$54,$58,$25,$29,$49,$55,$59,$A8,$88,$98,$90,$A1,$83,$E8,$C8
       .byte $E0,$C0,$E9,$E2,$C1,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0
       .byte $0F,$11
