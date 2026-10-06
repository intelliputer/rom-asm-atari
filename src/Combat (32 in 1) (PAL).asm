; Disassembly of roms/Combat (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Combat (32 in 1) (PAL).bin
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
       JSR    LF5B3   
       LDA    #$10    
       STA    SWBCNT  
       STA    $88     
       JSR    LF19A   
LF014: INC    $86     
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
       LDA    #$2E    
       STA    TIM64T  
       JSR    LF14E   
       JSR    LF31B   
       JSR    LF485   
       JSR    LF255   
       JSR    LF2EA   
       JSR    LF233   
       LDA    #$08    
       STA    $B4     
       STA    WSYNC   
       STA    HMOVE   
LF04F: LDA    INTIM   
       BNE    LF04F   
       STA    WSYNC   
       STA    CXCLR   
       STA    VBLANK  
       TSX            
       STX    $D3     
       LDA    #$02    
       STA    CTRLPF  
       LDX    $DC     
LF063: STA    WSYNC   
       DEX            
       BNE    LF063   
       LDA    $DC     
       CMP    #$0E    
       BEQ    LF0C0   
       LDX    #$05    
       LDA    #$00    
       STA    $DE     
       STA    $DF     
LF076: STA    WSYNC   
       LDA    $DE     
       STA    PF1     
       LDY    $E2     
       LDA    LF5BB,Y 
       AND    #$F0    
       STA    $DE     
       LDY    $E0     
       LDA    LF5BB,Y 
       AND    #$0F    
       ORA    $DE     
       STA    $DE     
       LDA    $DF     
       STA    PF1     
       LDY    $E3     
       LDA    LF5BB,Y 
       AND    #$F0    
       STA    $DF     
       LDY    $E1     
       LDA    LF5BB,Y 
       AND    $87     
       STA    WSYNC   
       ORA    $DF     
       STA    $DF     
       LDA    $DE     
       STA    PF1     
       DEX            
       BMI    LF0C0   
       INC    $E0     
       INC    $E2     
       INC    $E1     
       INC    $E3     
       LDA    $DF     
       STA    PF1     
       JMP    LF076   
LF0C0: LDA    #$00    
       STA    PF1     
       STA    WSYNC   
       LDA    #$05    
       STA    CTRLPF  
       LDA    $D6     
       STA    COLUP0  
       LDA    $D7     
       STA    COLUP1  
LF0D2: LDX    #$1E    
       TXS            
       SEC            
       LDA    $A4     
       SBC    $B4     
       AND    #$FE    
       TAX            
       AND    #$F0    
       BEQ    LF0E5   
       LDA    #$00    
       BEQ    LF0E7   
LF0E5: LDA    $BD,X   
LF0E7: STA    WSYNC   
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
       BPL    LF0FF   
       EOR    #$F8    
LF0FF: CMP    #$08    
       BCC    LF107   
       LSR            
       LSR            
       LSR            
       TAY            
LF107: LDA    $A5     
       SEC            
       SBC    $B4     
       INC    $B4     
       NOP            
       ORA    #$01    
       TAX            
       AND    #$F0    
       BEQ    LF11A   
       LDA    #$00    
       BEQ    LF11C   
LF11A: LDA    $BD,X   
LF11C: BIT    $82     
       STA    GRP1    
       BMI    LF12E   
       LDA    ($B5),Y 
       STA    PF0     
       LDA    ($B7),Y 
       STA    PF1     
       LDA    ($B9),Y 
       STA    PF2     
LF12E: INC    $B4     
       LDA    $B4     
       EOR    #$04    
       BNE    LF0D2   
       LDX    $D3     
       TXS            
       STA    WSYNC   
       STA    ENAM0   
       STA    ENAM1   
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       JMP    LF014   
LF14E: LDA    SWCHB   
       LSR            
       BCS    LF167   
       LDA    #$0F    
       STA    $87     
       LDA    #$FF    
       STA    $88     
       LDA    #$80    
       STA    $DD     
       LDX    #$E6    
       JSR    LF5B3   
       BEQ    LF1C7   
LF167: LDY    #$02    
       LDA    $DD     
       AND    $88     
       CMP    #$F0    
       BCC    LF179   
       LDA    $86     
       AND    #$30    
       BNE    LF179   
       LDY    #$0E    
LF179: STY    $DC     
       LDA    $86     
       AND    #$3F    
       BNE    LF189   
       STA    $89     
       INC    $DD     
       BNE    LF189   
       STA    $88     
LF189: LDA    SWCHB   
       AND    #$02    
       BEQ    LF194   
       STA    $89     
       BNE    LF1E8   
LF194: BIT    $89     
       BMI    LF1E8   
       INC    $80     
LF19A: LDX    #$DF    
LF19C: JSR    LF5B3   
       LDA    #$FF    
       STA    $89     
       LDY    $80     
       LDA    LF7E0,Y 
       STA    $A3     
       EOR    #$FF    
       BNE    LF1B2   
       LDX    #$DD    
       BNE    LF19C   
LF1B2: LDA    $81     
       SED            
       CLC            
       ADC    #$01    
       STA    $81     
       STA    $A1     
       CLD            
       BIT    $A3     
       BPL    LF1C7   
       INC    $85     
       BVC    LF1C7   
       INC    $85     
LF1C7: JSR    LF566   
       LDA    #$32    
       STA    $A5     
       LDA    #$86    
       STA    $A4     
       BIT    $A3     
       BMI    LF1E8   
       STA    $A5     
       STA    RESP1   
       LDA    #$08    
       STA    $96     
       LDA    #$20    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
LF1E8: LDA    $A3     
       AND    #$87    
       BMI    LF1F0   
       LDA    #$00    
LF1F0: ASL            
       TAX            
       LDA    LF753,X 
       STA    NUSIZ0  
       LDA    LF754,X 
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
       BNE    LF21D   
       LDY    #$10    
       LDX    #$0F    
LF21D: STX    $D2     
       LDX    #$03    
LF221: LDA    LF75B,Y 
       EOR    $D1     
       AND    $D2     
       STA    COLUP0,X
       STA    $D6,X   
       STA    $D8,X   
       INY            
       DEX            
       BPL    LF221   
       RTS            

LF233: LDX    #$01    
LF235: LDA    $A1,X   
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
       BPL    LF235   
       RTS            

LF255: BIT    $83     
       BVC    LF25D   
       LDA    #$30    
       BPL    LF25F   
LF25D: LDA    #$20    
LF25F: STA    $B1     
       LDX    #$03    
       JSR    LF295   
       DEX            
       JSR    LF295   
       DEX            
LF26B: LDA    $8D,X   
       AND    #$08    
       LSR            
       LSR            
       STX    $D1     
       CLC            
       ADC    $D1     
       TAY            
       LDA.wy $00A8,Y 
       SEC            
       BMI    LF27E   
       CLC            
LF27E: ROL            
       STA.wy $00A8,Y 
       BCC    LF291   
       LDA    $AC,X   
       AND    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $B1     
       JSR    LF295   
LF291: DEX            
       BEQ    LF26B   
       RTS            

LF295: INC    $AC,X   
       LDA    $95,X   
       AND    #$0F    
       CLC            
       ADC    $B1     
       TAY            
       LDA    LF5ED,Y 
       STA    $B0     
       BIT    $82     
       BVS    LF2BB   
       LDA    $95,X   
       SEC            
       SBC    #$02    
       AND    #$03    
       BNE    LF2BB   
       LDA    $AC,X   
       AND    #$03    
       BNE    LF2BB   
       LDA    #$08    
       STA    $B0     
LF2BB: LDA    $B0     
LF2BD: STA    HMP0,X  
       AND    #$0F    
       SEC            
       SBC    #$08    
       STA    $D4     
       CLC            
       ADC    $A4,X   
       BIT    $A3     
       BMI    LF2D1   
       CPX    #$02    
       BCS    LF2E1   
LF2D1: CMP    #$F3    
       BCS    LF2D9   
       CMP    #$12    
       BCS    LF2E1   
LF2D9: LDA    #$F1    
       BIT    $D4     
       BMI    LF2E1   
       LDA    #$13    
LF2E1: STA    $A4,X   
       CPX    #$02    
       BCS    LF2E9   
       STA    VDELP0,X
LF2E9: RTS            

LF2EA: LDA    #$01    
       AND    $86     
       TAX            
       LDA    $95,X   
       STA    REFP0,X 
       AND    #$0F    
       TAY            
       BIT    $83     
       BPL    LF2FC   
       STY    $97,X   
LF2FC: TXA            
       EOR    #$0E    
       TAX            
       TYA            
       ASL            
       ASL            
       ASL            
       CMP    #$3F    
       CLC            
       BMI    LF30C   
       SEC            
       EOR    #$47    
LF30C: TAY            
LF30D: LDA    ($BB),Y 
       STA    $BD,X   
       BCC    LF315   
       DEY            
       DEY            
LF315: INY            
       DEX            
       DEX            
       BPL    LF30D   
       RTS            

LF31B: LDA    $8A     
       SEC            
       SBC    #$02    
       BCC    LF34D   
       STA    $8A     
       CMP    #$02    
       BCC    LF34C   
       AND    #$01    
       TAX            
       INC    $95,X   
       LDA    $D8,X   
       STA    $D6,X   
       LDA    $8A     
       CMP    #$F7    
       BCC    LF33A   
       JSR    LF549   
LF33A: LDA    $8A     
       BPL    LF34C   
       LSR            
       LSR            
       LSR            
LF341: STA    AUDV0,X 
       LDA    #$08    
       STA    AUDC0,X 
       LDA    LF7FE,X 
       STA    AUDF0,X 
LF34C: RTS            

LF34D: LDX    #$01    
       LDA    SWCHB   
       STA    $D5     
       LDA    SWCHA   
LF357: BIT    $88     
       BMI    LF35D   
       LDA    #$FF    
LF35D: EOR    #$FF    
       AND    #$0F    
       STA    $D2     
       LDY    $85     
       LDA    LF705,Y 
       CLC            
       ADC    $D2     
       TAY            
       LDA    LF708,Y 
       AND    #$0F    
       STA    $D1     
       BEQ    LF379   
       CMP    $91,X   
       BNE    LF37D   
LF379: DEC    $93,X   
       BNE    LF38A   
LF37D: STA    $91,X   
       LDA    #$0F    
       STA    $93,X   
       LDA    $D1     
       CLC            
       ADC    $95,X   
       STA    $95,X   
LF38A: INC    $8D,X   
       BMI    LF3AC   
       LDA    LF708,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       BIT    $D5     
       BMI    LF3BC   
LF399: STA    $8B,X   
       ASL            
       TAY            
       LDA    LF62D,Y 
       STA    $A8,X   
       INY            
       LDA    LF62D,Y 
       STA    $AA,X   
       LDA    #$F0    
       STA    $8D,X   
LF3AC: JSR    LF3C1   
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       ASL    $D5     
       DEX            
       BEQ    LF357   
       RTS            

LF3BC: SEC            
       SBC    $85     
       BPL    LF399   
LF3C1: LDA    $A3     
       BMI    LF3CD   
       AND    #$01    
       BEQ    LF3CD   
       LDA    $DB     
       STA    $D6,X   
LF3CD: LDA    $99,X   
       BEQ    LF3F8   
       LDA    $D8,X   
       STA    $D6,X   
       LDA    $99,X   
       CMP    #$07    
       BCC    LF3EF   
       BIT    $D5     
       BPL    LF3E3   
       CMP    #$1C    
       BCC    LF3EF   
LF3E3: CMP    #$30    
       BCC    LF406   
       CMP    #$37    
       BCS    LF40C   
       BIT    $83     
       BVC    LF40C   
LF3EF: LDA    #$00    
       STA    $99,X   
       LDA    #$FF    
LF3F5: STA    RESMP0,X
       RTS            

LF3F8: BIT    $88     
       BPL    LF400   
       LDA    INPT4,X 
       BPL    LF437   
LF400: JSR    LF451   
       JMP    LF3EF   
LF406: JSR    LF451   
       JMP    LF41F   
LF40C: LDA    $9F,X   
       BEQ    LF41A   
       JSR    LF451   
       LDA    #$30    
       STA    $99,X   
       JMP    LF41F   
LF41A: LDA    $99,X   
       JSR    LF341   
LF41F: LDA    $86     
       AND    #$03    
       BEQ    LF431   
       BIT    $84     
       BVS    LF433   
       BIT    $82     
       BVC    LF431   
       AND    #$01    
       BNE    LF433   
LF431: DEC    $99,X   
LF433: LDA    #$00    
       BEQ    LF3F5   
LF437: LDA    #$3F    
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
       JMP    LF40C   
LF451: LDA    $9F,X   
       BEQ    LF462   
       LDA    #$04    
       STA    AUDC0,X 
       LDA    #$07    
       STA    AUDV0,X 
       LDA    $9B,X   
       STA    AUDF0,X 
       RTS            

LF462: LDY    $85     
       LDA    LF729,Y 
       AND    $88     
       STA    AUDV0,X 
       LDA    LF72C,Y 
       STA    AUDC0,X 
       CLC            
       LDA    #$00    
LF473: DEY            
       BMI    LF47A   
       ADC    #$0C    
       BPL    LF473   
LF47A: ADC    $8B,X   
       TAY            
       TXA            
       ASL            
       ADC    LF72F,Y 
       STA    AUDF0,X 
       RTS            

LF485: LDX    #$01    
LF487: LDA    CXM0P,X 
       BPL    LF4B7   
       BIT    $84     
       BVC    LF495   
       LDA    $9B,X   
       CMP    #$1F    
       BEQ    LF4B7   
LF495: INC    $95,X   
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

LF4B7: BIT    $A3     
       BPL    LF4BE   
       JMP    LF542   
LF4BE: LDA    $9F,X   
       BEQ    LF4CC   
       CMP    #$04    
       INC    $9F,X   
       BCC    LF4CC   
       LDA    #$00    
       STA    $9F,X   
LF4CC: LDA    CXM0FB,X
       BMI    LF4D7   
       LDA    #$00    
       STA    $9D,X   
       JMP    LF517   
LF4D7: BIT    $82     
       BVC    LF511   
       LDA    $9D,X   
       BNE    LF4F8   
       INC    $9F,X   
       DEC    $9B,X   
       LDA    $97,X   
       STA    $B2,X   
       EOR    #$FF    
       STA    $97,X   
       INC    $97,X   
       LDA    $97,X   
       AND    #$03    
       BNE    LF4F5   
       INC    $97,X   
LF4F5: JMP    LF515   
LF4F8: CMP    #$01    
       BEQ    LF507   
       CMP    #$03    
       BCC    LF515   
       BNE    LF515   
       LDA    $B2,X   
       JMP    LF509   
LF507: LDA    $97,X   
LF509: CLC            
       ADC    #$08    
       STA    $97,X   
       JMP    LF515   
LF511: LDA    #$01    
       STA    $99,X   
LF515: INC    $9D,X   
LF517: LDA    CXP0FB,X
       BMI    LF51F   
       LDA    CXPPMM  
       BPL    LF528   
LF51F: LDA    $8A     
       CMP    #$02    
       BCC    LF52E   
       JSR    LF549   
LF528: LDA    #$03    
       STA    $E4,X   
       BNE    LF542   
LF52E: DEC    $E4,X   
       BMI    LF538   
       LDA    $8B,X   
       BEQ    LF542   
       BNE    LF53A   
LF538: INC    $95,X   
LF53A: LDA    $95,X   
       CLC            
       ADC    #$08    
       JSR    LF550   
LF542: DEX            
       BMI    LF548   
       JMP    LF487   
LF548: RTS            

LF549: TXA            
       EOR    #$01    
       TAY            
       LDA.wy $0097,Y 
LF550: AND    #$0F    
       TAY            
       LDA    LF61D,Y 
       JSR    LF2BD   
       LDA    #$00    
       STA    $A8,X   
       STA    $AA,X   
       STA    $8D,X   
       LDA    $D8,X   
       STA    $D6,X   
       RTS            

LF566: LDX    $85     
       LDA    LF7CE,X 
       STA    $BB     
       LDA    LF7D1,X 
       STA    $BC     
       LDA    $A3     
       LSR            
       LSR            
       AND    #$03    
       TAX            
       LDA    $A3     
       BPL    LF587   
       AND    #$08    
       BEQ    LF585   
       LDX    #$03    
       BPL    LF589   
LF585: LDA    #$80    
LF587: STA    $82     
LF589: LDA    $A3     
       ASL            
       ASL            
       BIT    $A3     
       BMI    LF597   
       STA    WSYNC   
       STA    $84     
       AND    #$80    
LF597: STA    $83     
       LDA    #$F7    
       STA    $B6     
       STA    $B8     
       STA    $BA     
       LDA    LF7D4,X 
       STA    RESP0   
       STA    $B5     
       LDA    LF7D8,X 
       STA    $B7     
       LDA    LF7DC,X 
       STA    $B9     
       RTS            

LF5B3: LDA    #$00    
LF5B5: INX            
       STA    $A2,X   
       BNE    LF5B5   
       RTS            

LF5BB: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF5ED: .byte $F8,$F7,$F6,$06,$06,$06,$16,$17,$18,$19,$1A,$0A,$0A,$0A,$FA,$F9
       .byte $F8,$F7,$F6,$F6,$06,$16,$16,$17,$18,$19,$1A,$1A,$0A,$FA,$FA,$F9
       .byte $E8,$E6,$E4,$F4,$04,$14,$24,$26,$28,$2A,$2C,$1C,$0C,$FC,$EC,$EA
LF61D: .byte $C8,$C4,$C0,$E0,$00,$20,$40,$44,$48,$4C,$4F,$2F,$0F,$EF,$CF,$CC
LF62D: .byte $00,$00,$80,$80,$84,$20,$88,$88,$92,$48,$A4,$A4,$A9,$52,$AA,$AA
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
LF705: .byte $00,$0B,$16
LF708: .byte $00,$10,$00,$FF,$01,$11,$01,$FF,$0F,$1F,$0F,$50,$5F,$51,$FF,$30
       .byte $3F,$31,$FF,$70,$7F,$71,$90,$B0,$70,$FF,$91,$B1,$71,$FF,$9F,$BF
       .byte $7F
LF729: .byte $08,$02,$02
LF72C: .byte $02,$03,$08
LF72F: .byte $1D,$05,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1D,$1D
       .byte $16,$16,$0F,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$12,$10,$10
       .byte $0C,$0C,$07,$07
LF753: .byte $10
LF754: .byte $10,$11,$11,$10,$13,$27,$13
LF75B: .byte $32,$2C,$8A,$DA,$D2,$2C,$6A,$3A,$B2,$9C,$5A,$2A,$B2,$0C,$3A,$6A
       .byte $08,$04,$00,$0E,$F0,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$FF,$00,$00,$00,$38,$00,$00,$00,$00,$60,$20,$20,$20
       .byte $23,$23,$FF,$80,$80,$00,$00,$00,$1C,$04,$04,$00,$00,$00,$00,$00
       .byte $00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$07,$1F,$3F,$7F,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60
       .byte $20,$20,$20,$21,$FF,$00,$00,$00,$80,$80,$80,$80,$00,$00,$00,$00
       .byte $00,$00,$07
LF7CE: .byte $45,$C5,$85
LF7D1: .byte $F6,$F6,$F6
LF7D4: .byte $6E,$6E,$6E,$9C
LF7D8: .byte $7D,$9B,$AF,$9F
LF7DC: .byte $8C,$9B,$BE,$9F
LF7E0: .byte $24,$28,$08,$20,$00,$48,$40,$54,$58,$25,$29,$49,$55,$59,$A8,$88
       .byte $98,$90,$A1,$83,$E8,$C8,$E0,$C0,$E9,$E2,$C1,$FF,$00,$F0
LF7FE: .byte $0F,$11
