; Disassembly of roms/Music Machine.bin
; Disassembled Tue Oct  6 15:21:52 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Music Machine.bin
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
PF0     =  $0D
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
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF060   =   $F060

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
       JMP    LF4E5   
LF00E: LDX    #$12    
       LDA    #$43    
       STA    $E0     
       LDA    #$FA    
       STA    $E1     
       LDA    $C1     
       SEC            
       SBC    #$1A    
       CLC            
       ADC    #$0F    
       STA    $E2     
LF022: LDY    $E2     
       CPX    #$02    
       BNE    LF030   
LF028: LDA    #$40    
       STA    $E0     
       LDY    #$02    
       STY    $E2     
LF030: LDA    ($E0),Y 
       LDY    $AE     
       CPY    #$20    
       BCC    LF03A   
       LDY    $AC     
LF03A: EOR    $83     
       AND    $84     
       STA    $85,X   
       LDY    #$00    
       DEC    $E2     
       DEX            
       BPL    LF022   
       LDA    LFA40   
       EOR    $83     
       AND    $84     
       STA    COLUBK  
       LDX    $A0     
       LDA    LFBEB,X 
       EOR    $83     
       AND    $84     
       STA    COLUP0  
       STA    COLUP1  
       STY    GRP0    
       STY    GRP1    
LF061: LDA    INTIM   
       BNE    LF061   
       STA    WSYNC   
       STA    VBLANK  
       STA    COLUPF  
       LDA    #$35    
       STA    CTRLPF  
       STA    PF0     
       LDY    #$03    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
LF07E: STY    $87     
       LDA    ($FE),Y 
       STA    $88     
       STA    WSYNC   
       LDA    ($F4),Y 
       STA    GRP0    
       LDA    ($F6),Y 
       STA    GRP1    
       LDA    ($F8),Y 
       STA    GRP0    
       LDA    ($FC),Y 
       TAX            
       LDA    ($FA),Y 
       LDY    $88     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $87     
       DEY            
       BPL    LF07E   
       INY            
       LDA    $BB     
       STA    $FA     
       LDA    $B2     
       STA    WSYNC   
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       STY    REFP0   
       STA    HMP0    
       AND    #$07    
       TAX            
LF0BE: DEX            
       BPL    LF0BE   
       STA    RESP0   
       STA    WSYNC   
       STY    NUSIZ1  
       STY    $F9     
       STY    NUSIZ0  
       LDA    $B2     
       STA    HMP1    
       NOP            
       AND    #$07    
       TAX            
       LDA    $B1     
LF0D5: DEX            
       BPL    LF0D5   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$11    
       ORA    #$20    
       TAY            
       LDA    $A3     
       CMP    #$01    
       ROR    $88     
       BMI    LF0F3   
       LDA    $AE     
       BNE    LF118   
       LDA    $A1     
       BEQ    LF118   
LF0F3: LDA    LF911,X 
       EOR    $83     
       AND    $84     
       TAY            
       LDA    LFCB6,X 
       EOR    $83     
       AND    $84     
       STA    WSYNC   
       STA    COLUP1  
       LDA    LFBBA,X 
       STA    GRP1    
       STY    COLUP0  
       LDA    LFCD7,X 
       STA    GRP0    
       DEY            
       DEX            
       CPX    #$15    
       BCS    LF0F3   
LF118: LDA    LFCB6,X 
       EOR    $83     
       AND    $84     
       CPX    #$00    
       BNE    LF130   
       LDA    #$C2    
       EOR    $83     
       AND    $84     
       STA    WSYNC   
       STA    COLUBK  
       JMP    LF134   
LF130: STA    WSYNC   
       STA    COLUP1  
LF134: LDA    LFBBA,X 
       STA    GRP1    
       LDA    LF911,X 
       EOR    $83     
       AND    $84     
       STA    COLUP0  
       LDA    LFCD7,X 
       STA    GRP0    
       DEY            
       CPY    #$10    
       BCS    LF150   
       LDA    ($FA),Y 
       STA    $F9     
LF150: DEX            
       BPL    LF118   
       LDA    #$00    
       STA    $F6     
       LDA    #$05    
       STA    WSYNC   
       STA    NUSIZ1  
       LDA    #$00    
       STA    COLUP0  
       STA    GRP0    
       STA    GRP1    
       STA    CXCLR   
       BCC    LF16B   
       LDA    #$0A    
LF16B: CLC            
       ADC    #$6C    
       STA    $F5     
       ADC    #$06    
       STA    $F7     
       LDA    #$68    
       STA    $87     
       DEY            
       LDY    #$10    
LF17B: CPY    #$10    
       BCC    LF186   
       STA    WSYNC   
       DEC    $87     
       DEY            
       BNE    LF17B   
LF186: LDA    $99     
       STA    HMP0    
       AND    #$07    
       TAX            
       LDA    $B1     
LF18F: DEX            
       BPL    LF18F   
       STA    RESP0   
       LDX    $A0     
LF196: LDA    LFBDB,Y 
       CPY    #$00    
       BNE    LF1AD   
       LDA    LF923   
       EOR    $83     
       AND    $84     
       STA    WSYNC   
       STA    COLUBK  
       LDA    LFBDB,Y 
       BEQ    LF1AF   
LF1AD: STA    WSYNC   
LF1AF: STA    GRP0    
       LDA    LFBCB,Y 
       EOR    $83     
       AND    $84     
       STA    COLUP0  
       DEC    $87     
       LDA    COLUPF,X
       BMI    LF1C2   
       DEC    $F7     
LF1C2: DEY            
       BPL    LF196   
       STA    WSYNC   
       INC    $F6     
       LDY    $F6     
       LDA.wy $00B2,Y 
       STA    HMP0    
       STA    REFP0   
       AND    #$07    
       TAY            
LF1D5: DEY            
       BPL    LF1D5   
       STA    RESP0   
       LDY    $F6     
       LDA.wy $00BB,Y 
       STA    $FA     
       SEC            
       SBC    #$1A    
       CLC            
       ADC    #$43    
       STA    $FC     
       LDA    #$FA    
       STA    WSYNC   
       STA    $FD     
       LDA    #$FB    
       STA    $FB     
       LDA    $98     
       STA    HMP1    
       AND    #$07    
       TAY            
LF1FA: DEY            
       BPL    LF1FA   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$0F    
       LDA    ($FA),Y 
       STA    GRP0    
       LDA    ($FC),Y 
       STA    COLUP0  
       LDA    COLUPF,X
       BMI    LF213   
       DEC    $F7     
LF213: DEY            
       STA    HMCLR   
LF216: LDA    $F6     
       CMP    $AC     
       BNE    LF220   
       LDA    $82     
       STA    ($FC),Y 
LF220: LDA    ($FA),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($FC),Y 
       STA    COLUP0  
LF22A: DEC    $87     
       BEQ    LF26F   
       LDA    COLUPF,X
       BMI    LF234   
       DEC    $F7     
LF234: DEY            
       BPL    LF216   
       INC    $F6     
       LDY    $F6     
       LDA.wy $00BB,Y 
       STA    $FA     
       STY    $F8     
       SEC            
       SBC    #$1A    
       CLC            
       ADC    #$43    
       STA    $FC     
       LDA    #$FA    
       STA    WSYNC   
       STA    $FD     
       LDA    #$FB    
       STA    $FB     
       LDA.wy $00B2,Y 
       STA    HMP0    
       STA    REFP0   
       AND    #$07    
       TAY            
LF25E: DEY            
       BPL    LF25E   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$10    
       DEC    $87     
       BEQ    LF276   
       BNE    LF22A   
LF26F: LDX    #$10    
       DEY            
       BMI    LF2B9   
       BPL    LF285   
LF276: DEY            
       LDX    #$0F    
LF279: STX    $88     
       LDX    $A0     
       LDA    COLUPF,X
       BMI    LF283   
       DEC    $F7     
LF283: LDX    $88     
LF285: LDA    $F6     
       CMP    $AC     
       BNE    LF29B   
       LDA    LFC7D,X 
       AND    $84     
       STA    WSYNC   
       STA    COLUP1  
       LDA    $82     
       STA    COLUP0  
       JMP    LF2AB   
LF29B: LDA    LFC7D,X 
       EOR    $83     
       AND    $84     
       STA    WSYNC   
       STA    COLUP1  
       LDA.wy $0088,Y 
       STA    COLUP0  
LF2AB: LDA    $C3,X   
       STA    GRP1    
       LDA    ($FA),Y 
       STA    GRP0    
       DEX            
       BEQ    LF2FF   
       DEY            
LF2B7: BPL    LF279   
LF2B9: INC    $F6     
       LDY    $F6     
       BIT    COLUP1  
       BMI    LF2C3   
       STY    $F8     
LF2C3: LDA.wy $00BB,Y 
       STA    $FA     
       LDA.wy $00B2,Y 
       STA    HMP0    
       STA    REFP0   
       AND    #$07    
       STA    WSYNC   
       TAY            
       LDA    LFC7D,X 
       EOR    $83     
       AND    $84     
       STA    COLUP1  
       LDA    $C3,X   
       STA    GRP1    
LF2E1: DEY            
       BPL    LF2E1   
       STA    RESP0   
       LDA    LFC7C,X 
       EOR    $83     
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       BEQ    LF301   
       AND    $84     
       STA    COLUP1  
       LDA    $C3,X   
       STA    GRP1    
       LDY    #$0F    
       DEX            
       BNE    LF2B7   
LF2FF: STA    WSYNC   
LF301: STX    GRP0    
       STX    GRP1    
       STX    REFP0   
       STX    REFP1   
       LDY    #$10    
       LDA    $98     
       STA    WSYNC   
       STY    NUSIZ0  
       STY    NUSIZ1  
       STA    HMP1    
       STA    HMP0    
       AND    #$07    
       AND    #$07    
       TAY            
LF31C: DEY            
       BPL    LF31C   
       STA    RESP0   
       STA    RESP1   
       LDY    #$09    
       STA    WSYNC   
       STA    HMOVE   
LF329: LDX    LFC07,Y 
       LDA    LFC55,Y 
       EOR    $83     
       AND    $84     
       STA    WSYNC   
       STA    COLUP0  
       STX    GRP0    
       LDX    LFBFD,Y 
       LDA    LFC96,Y 
       EOR    $83     
       AND    $84     
       STA    COLUP1  
       STX    GRP1    
       DEY            
       BPL    LF329   
       INY            
       STY    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDA    #$C4    
       EOR    $83     
       AND    $84     
       TAX            
       LDA    #$0E    
       STA    WSYNC   
       AND    $84     
       STX.w  $0009   
       STA    COLUP0  
       STA    COLUP1  
       STY    REFP0   
       STY    REFP1   
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP0    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       LDY    #$07    
       LDX    $A1     
       BEQ    LF3EA   
       DEX            
       BEQ    LF3EA   
       DEX            
       BEQ    LF3D0   
       DEX            
       BEQ    LF3B4   
       DEX            
       BEQ    LF399   
LF389: STA    WSYNC   
       STA    HMOVE   
       LDA    LFC8E,Y 
       STA    GRP0    
       STA    GRP1    
       DEY            
       BPL    LF389   
       BMI    LF3F7   
LF399: STA    WSYNC   
       STA    HMOVE   
       LDA    LFC8E,Y 
       LDX    #$00    
       STA    GRP0    
       STA    GRP1    
       NOP            
       JSR    LF8E0   
       JSR    LF8E0   
       STX    GRP1    
       DEY            
       BPL    LF399   
       BMI    LF3F7   
LF3B4: STA    WSYNC   
       STA    HMOVE   
       LDA    LFC8E,Y 
       LDX    #$00    
       STA    GRP0    
       STA    GRP1    
       JSR    LF8E0   
       JSR    LF8E0   
       STX    GRP0    
       STX    GRP1    
       DEY            
       BPL    LF3B4   
       BMI    LF3F7   
LF3D0: STA    WSYNC   
       STA    HMOVE   
       LDA    LFC8E,Y 
       LDX    #$00    
       STA    GRP0    
       STX    GRP1    
       JSR    LF8E0   
       JSR    LF8E0   
       STX    GRP0    
       DEY            
       BPL    LF3D0   
       BMI    LF3F7   
LF3EA: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       DEY            
       BPL    LF3EA   
LF3F7: LDA    #$00    
       STA    WSYNC   
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    GRP0    
       STA    GRP1    
       LDA    #$21    
       STA    TIM64T  
       LDY    SWCHA   
       INY            
       BEQ    LF410   
       STX    $9E     
LF410: SEC            
       LDA    $F7     
       SBC    #$05    
       BPL    LF418   
       TXA            
LF418: SEC            
       SBC    $9D     
       CLC            
       BPL    LF41F   
       SEC            
LF41F: ROR            
       CMP    #$02    
       BCC    LF42A   
       CMP    #$FE    
       BCS    LF42A   
       STX    $9E     
LF42A: CLC            
       ADC    $9D     
       CMP    $F5     
       BCC    LF433   
       LDA    $F5     
LF433: STA    $9D     
       JSR    LF8CC   
       STA    $98     
       LDX    #$0F    
LF43C: LDA    LFCA2,X 
       STA    $C4,X   
       LDY    $A1     
       BEQ    LF447   
       BNE    LF44C   
LF447: LDY    LFBED,X 
       STY    $C4,X   
LF44C: DEX            
       BPL    LF43C   
LF44F: LDA    INTIM   
       BNE    LF44F   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF46F   
       INC    $9E     
       BNE    LF46F   
       SEC            
       ROR    $9E     
LF46F: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF47A   
       LDY    #$0F    
LF47A: TYA            
       LDY    #$00    
       BIT    $9E     
       BPL    LF485   
       AND    #$F7    
       LDY    $9E     
LF485: STY    $83     
       ASL    $83     
       STA    $84     
       LDA    #$30    
       STA    WSYNC   
       STA    TIM64T  
       LDY    #$00    
       STY    $88     
       LDA    SWCHB   
       TAY            
       LSR            
       BCS    LF4D6   
       STY    $F0     
       LDY    #$00    
       STY    $EF     
       STY    $EE     
       STY    $AB     
       STY    $DD     
       STY    $DE     
       LDA    #$01    
       STA    $D6     
       STA    $D7     
       JSR    LF8B3   
       STX    $AD     
       ASL    $80     
       SEC            
       ROR    $80     
       LDA    $F0     
       ASL            
       LDA    #$00    
       ADC    #$00    
       ASL            
       STA    $A2     
       LDA    $F0     
       ASL            
       ASL            
       LDA    #$00    
       ADC    #$00    
       ASL            
       STA    $A7     
       LDA    #$03    
       STA    $A1     
       STA    $A6     
LF4D6: LDY    #$00    
       LSR            
       BCS    LF4F4   
       LDA    $9F     
       BEQ    LF4E3   
       DEC    $9F     
       BPL    LF4F6   
LF4E3: INC    $80     
LF4E5: JSR    LF8B3   
       LDA    $80     
       AND    #$01    
       STA    $80     
       TAY            
       INY            
       STY    $A5     
       LDY    #$1E    
LF4F4: STY    $9F     
LF4F6: BIT    $80     
       BPL    LF516   
       LDA    $A1     
       BNE    LF506   
       LDA    $81     
       AND    #$7F    
       BNE    LF516   
       BEQ    LF546   
LF506: LDA    $AE     
       BEQ    LF566   
       CMP    #$20    
       BCC    LF538   
       BEQ    LF519   
LF510: LDA    #$00    
       STA    $BB,X   
       DEC    $AE     
LF516: JMP    LF80C   
LF519: LDX    $AC     
       LDA    #$00    
       STA    $BB,X   
LF51F: LDA    #$2B    
       STA    $AE     
       LDX    #$08    
       LDA    $AB     
       BEQ    LF52B   
       DEC    $AB     
LF52B: STX    $AC     
       LDA    $BB,X   
       BNE    LF510   
       DEX            
       BPL    LF52B   
       LDA    #$20    
       STA    $AE     
LF538: DEC    $AE     
       BNE    LF516   
       LDA    $B0     
       BNE    LF542   
       DEC    $A1     
LF542: LDA    $A6     
       BEQ    LF55E   
LF546: LDA    $80     
       LSR            
       BCC    LF55E   
       LDX    #$04    
LF54D: LDY    $A1,X   
       LDA    $A6,X   
       STA    $A1,X   
       STY    $A6,X   
       DEX            
       BPL    LF54D   
       LDA    $A0     
       EOR    #$01    
       STA    $A0     
LF55E: AND    #$00    
       STA    $EF     
       STA    $EE     
       BEQ    LF516   
LF566: BIT    $AD     
       BPL    LF582   
       LDA    SWCHA   
       LDX    $A0     
       BEQ    LF572   
       ASL            
LF572: ASL            
       LDA    #$00    
       BCS    LF57D   
       STA    $AD     
       STA    $EE     
       STA    $EF     
LF57D: STA    $B1     
       JMP    LF7D0   
LF582: LDA    $81     
       AND    #$0F    
       BNE    LF593   
       JSR    LF8BD   
       BCS    LF593   
       LDA    $9B     
       EOR    #$FF    
       STA    $9B     
LF593: BIT    $AD     
       BVS    LF5C7   
       LDA    $B1     
       CMP    #$11    
       BCS    LF5C7   
       CMP    #$02    
       BCC    LF5C7   
       LDA    $A2     
       BIT    $9B     
       BPL    LF5AA   
       EOR    #$FF    
       CLC            
LF5AA: ADC    $9A     
       CMP    #$F0    
       BCC    LF5B6   
       LDX    #$00    
       LDA    #$05    
       BNE    LF5BE   
LF5B6: CMP    #$76    
       BCC    LF5C0   
       LDX    #$FF    
       LDA    #$76    
LF5BE: STX    $9B     
LF5C0: STA    $9A     
       JSR    LF8CC   
       STA    $99     
LF5C7: LDA    $C1     
       BEQ    LF5E4   
       LDA    $98     
       JSR    LF8E1   
       STA    $EB     
       LDA    $B8     
       JSR    LF8E1   
       CLC            
       ADC    #$12    
       SEC            
       SBC    $EB     
       BMI    LF5E4   
       SEC            
       SBC    #$16    
       BMI    LF5E7   
LF5E4: JMP    LF6CC   
LF5E7: LDX    #$06    
       LDY    $C1     
       STY    $DF     
       CPY    #$9A    
       BNE    LF621   
       LDA    #$FF    
       STA    $AD     
       LDA    #$00    
       STA    $AB     
       STA    $EE     
       STA    $EF     
       STA    $B0     
       STA    $DE     
       LDY    $A2     
       CPY    #$07    
       BCS    LF609   
       INC    $A2     
LF609: LDA    #$E8    
       STA    $DB     
       LDA    #$FC    
       STA    $DC     
       LDA    #$2C    
       STA    $DD     
       LDA    #$00    
       LDY    #$07    
LF619: STA.wy $00BB,Y 
       DEY            
       BPL    LF619   
       BMI    LF64D   
LF621: CPY    #$AA    
       BNE    LF628   
       JMP    LF6E1   
LF628: TYA            
       SEC            
       SBC    #$1A    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    #$01    
       CPY    #$00    
       BEQ    LF63B   
LF637: ASL            
       DEY            
       BNE    LF637   
LF63B: ORA    $EF     
       CMP    $EF     
       BEQ    LF645   
       INC    $B0     
       STA    $EF     
LF645: EOR    #$FF    
       BNE    LF64D   
       LDA    #$10    
       STA    $EE     
LF64D: LDA    #$00    
       STA    $C1     
       LDY    #$02    
       CPX    #$06    
       BCC    LF65B   
       BEQ    LF65A   
       DEY            
LF65A: DEY            
LF65B: LDX    $A1     
       CPX    #$02    
       BEQ    LF665   
       BCS    LF669   
       LDY    #$02    
LF665: TYA            
       BNE    LF669   
       INY            
LF669: STY    $9C     
       LDA    #$10    
       STA    $AF     
       SED            
       CLC            
       LDA    $DF     
       LDX    $A2     
       CMP    #$9A    
       BNE    LF682   
       LDA    LFC69,X 
       LDY    $A4     
       LDX    #$01    
       BNE    LF689   
LF682: LDA    LFC5F,X 
       LDX    #$02    
       LDY    $A4     
LF689: CLC            
LF68A: ADC    $A3,X   
       STA    $A3,X   
       LDA    #$00    
       DEX            
       BPL    LF68A   
       CLD            
       LDA    $DD     
       BNE    LF6AD   
       CLC            
       LDA    $B0     
       ASL            
       ASL            
       ADC    #$11    
       STA    $DB     
       LDA    #$FC    
       STA    $DC     
       LDA    #$04    
       STA    $DD     
       LDA    #$00    
       STA    $DE     
LF6AD: LDX    $A0     
       LDA    $A3     
       CMP    $D6,X   
       BMI    LF6CC   
       LDX    $A1     
       INX            
       CPX    #$04    
       BCS    LF6BE   
       STX    $A1     
LF6BE: SED            
       CLC            
       LDX    $A0     
       LDA    $D6,X   
       ADC    #$01    
       STA    $D6,X   
       CLD            
       JMP    LF750   
LF6CC: LDX    $F6     
       INX            
       STX    $F6     
       LDA    $BB,X   
       BEQ    LF750   
       CMP    #$9A    
       BNE    LF725   
       LDA    $A2     
       BEQ    LF6FD   
       DEC    $A2     
       BPL    LF6FD   
LF6E1: SED            
       SEC            
       LDX    $A2     
       LDA    $A4     
       SBC    LFC69,X 
       STA    $A4     
       LDA    $A3     
       SBC    #$00    
       STA    $A3     
       CLD            
       BCS    LF6FD   
       LDA    #$00    
       STA    $A3     
       STA    $A4     
       STA    $A5     
LF6FD: LDA    #$51    
       STA    $DB     
       LDA    #$FC    
       STA    $DC     
       LDA    #$04    
       STA    $DD     
       LDA    #$00    
       STA    $DE     
       LDA    #$FF    
       STA    $AD     
       LDA    #$00    
       STA    $AB     
       STA    $EE     
       STA    $EF     
       STA    $B0     
       LDX    #$08    
LF71D: STA    $BB,X   
       DEX            
       BPL    LF71D   
       JMP    LF51F   
LF725: CMP    #$AA    
       BEQ    LF74C   
       SED            
       SEC            
       LDX    $A2     
       LDA    LFC74,X 
       STA    $E0     
       LDX    #$02    
LF734: LDA    $A3,X   
       SBC    $E0     
       STA    $A3,X   
       LDA    #$00    
       STA    $E0     
       DEX            
       BPL    LF734   
       CLD            
       BCS    LF74C   
       LDA    #$00    
       STA    $A3     
       STA    $A4     
       STA    $A5     
LF74C: LDX    $F6     
       STA    $BB,X   
LF750: LDX    #$08    
LF752: LDA    $BB,X   
       BEQ    LF758   
       DEC    $88     
LF758: DEX            
       BPL    LF752   
       LDA    $A2     
       LSR            
       CLC            
       ADC    #$01    
       ADC    $B1     
       STA    $B1     
       SEC            
       SBC    #$1A    
       BCS    LF76D   
       JMP    LF80C   
LF76D: STA    $B1     
       LDX    #$06    
LF771: LDA    $B2,X   
       LDY    $BB,X   
       CPY    #$9A    
       BNE    LF7A1   
       LDA    $A2     
       LSR            
       LSR            
       ADC    #$01    
       BIT    $E2     
       BPL    LF786   
       EOR    $FF     
       CLC            
LF786: ADC    $E3,X   
       CMP    #$F0    
       BCC    LF792   
       LDY    #$00    
       LDA    #$05    
       BNE    LF79A   
LF792: CMP    #$76    
       BCC    LF79C   
       LDY    #$FF    
       LDA    #$76    
LF79A: STY    $E2     
LF79C: STA    $E3,X   
       JSR    LF8CC   
LF7A1: STA    $B3,X   
       LDA    $BB,X   
       STA    $BC,X   
       LDA    $E3,X   
       STA    $E4,X   
       DEX            
       BPL    LF771   
       LDA    #$00    
       STA    $BB     
       LDX    $A2     
       BIT    $AD     
       BVC    LF7BE   
       LDA    $88     
       ORA    $AF     
       BNE    LF80C   
LF7BE: TXA            
       LSR            
       BCS    LF7C6   
       LDA    $BC     
       BNE    LF80C   
LF7C6: INC    $AB     
       LDA    $9A     
       STA    $E3     
       LDA    $82     
       AND    #$08    
LF7D0: ORA    $99     
       STA    $B2     
       JSR    LF8CC   
       EOR    $81     
       TAY            
       LDX    $A2     
       LDA    LF904,X 
       STA    $ED     
       CPY    $ED     
       BCS    LF7EB   
       LDA    #$AA    
       STA    $BB     
       BNE    LF80C   
LF7EB: LDA    $BD     
       CMP    #$9A    
       BEQ    LF7F7   
       LDA    $BC     
       CMP    #$9A    
       BNE    LF7FF   
LF7F7: LDA    #$00    
       STA    $EE     
       STA    $EF     
       STA    $AB     
LF7FF: TYA            
       AND    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$1A    
       ADC    $EE     
       STA    $BB     
LF80C: JSR    LF8BD   
       LDA    $DE     
       BNE    LF855   
       DEC    $DD     
       LDA    $DD     
       CMP    #$FF    
       BNE    LF839   
       LDA    #$74    
       STA    $DB     
       LDA    #$F9    
       STA    $DC     
       LDA    $A1     
       BNE    LF835   
       LDA    $80     
       AND    #$01    
       BEQ    LF831   
       LDA    $A6     
       BNE    LF835   
LF831: LDA    #$CB    
       BNE    LF837   
LF835: LDA    #$03    
LF837: STA    $DD     
LF839: LDY    $DD     
       LDA    ($DB),Y 
       STA    $F3     
       DEY            
       LDA    ($DB),Y 
       STA    $DE     
       DEY            
       LDA    ($DB),Y 
       TAX            
       DEY            
       LDA    ($DB),Y 
       STY    $DD     
       LDY    $F3     
       STX    AUDF0   
       STA    AUDC0   
       STY    AUDV0   
LF855: DEC    $DE     
       LDY    #$02    
LF859: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $00A3,Y 
       AND    #$F0    
       LSR            
       ADC    #$24    
       STA    $F4,X   
       LDA.wy $00A3,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$24    
       STA    $F6,X   
       LDA    #$F9    
       STA    $F5,X   
       STA    $F7,X   
       DEY            
       BPL    LF859   
       LDA    $A1     
       BEQ    LF892   
       SEC            
       SBC    #$01    
       BEQ    LF892   
       ASL            
       ASL            
       ASL            
       ADC    #$24    
       STA    $F1     
       LDA    #$F9    
       STA    $F2     
       BNE    LF89A   
LF892: LDA    #$02    
       STA    $F1     
       LDA    #$FB    
       STA    $F2     
LF89A: LDX    #$00    
       LDY    #$FB    
LF89E: LDA    $F4,X   
       EOR    #$24    
       BNE    LF8B0   
       STY    $F5,X   
       LDA    #$02    
       STA    $F4,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    LF89E   
LF8B0: JMP    LF00E   
LF8B3: LDA    #$00    
       LDX    #$25    
LF8B7: STA    $9E,X   
       DEX            
       BPL    LF8B7   
       RTS            

LF8BD: LSR    $82     
       ROL            
       EOR    $82     
       LSR            
       LDA    $82     
       BCS    LF8CB   
       ORA    #$40    
       STA    $82     
LF8CB: RTS            

LF8CC: LDY    #$FF    
       SEC            
LF8CF: INY            
       SBC    #$0F    
       BCS    LF8CF   
       STY    $F9     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F9     
LF8E0: RTS            

LF8E1: AND    #$F7    
       TAX            
       BMI    LF900   
       LDY    #$00    
LF8E8: ROR            
       ROR            
       ROR            
       ROR            
       AND    #$0F    
       STA    $F3     
       LDA    LFCA0,Y 
       SEC            
       SBC    $F3     
       STA    $F3     
       TXA            
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F3     
       RTS            

LF900: LDY    #$01    
       BNE    LF8E8   
LF904: .byte $04 ;.NOP
       PHP            
       .byte $0C ;.NOP
       BPL    LF921   
       JSR    $3028   
       SEC            
       RTI            

LF90E: .byte $34,$38,$3C
LF911: .byte $00,$BA,$B4,$BA,$88,$38,$88,$1E,$88,$66,$66,$66,$66,$66,$66,$66
LF921: ROR    VSYNC   
LF923: CPY    #$3C    
       ROR    $66     
       ROR    $66     
       ROR    $66     
       .byte $3C ;.NOP
       .byte $3C ;.NOP
       CLC            
       CLC            
       CLC            
       CLC            
       CLC            
       SEC            
       CLC            
       ROR    $6060,X 
       .byte $3C ;.NOP
       ASL    COLUP0  
       LSR    INPT4   
       .byte $3C ;.NOP
       LSR    COLUP0  
       .byte $0C ;.NOP
       .byte $0C ;.NOP
       ASL    $46     
       .byte $3C ;.NOP
       .byte $0C ;.NOP
       .byte $0C ;.NOP
       .byte $0C ;.NOP
       ROR    $2C4C,X 
       .byte $1C ;.NOP
       .byte $0C ;.NOP
       .byte $7C ;.NOP
       LSR    COLUP0  
       ASL    $7C     
       RTS            

LF952: .byte $60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66
       .byte $66,$3C,$00,$00,$50,$00,$04,$1A,$2D,$0C,$04,$17,$0F,$0C,$04,$15
       .byte $0F,$0C,$04,$14,$0F,$0C,$04,$17,$0F,$0C,$04,$1A,$0F,$0C,$04,$17
       .byte $0F,$0C,$04,$14,$1E,$0C,$00,$00,$01,$00,$04,$14,$0E,$0C,$00,$00
       .byte $01,$00,$04,$14,$0E,$0C,$00,$00,$01,$00,$04,$14,$0F,$0C,$00,$00
       .byte $1E,$00,$04,$1A,$2D,$0C,$04,$1F,$0F,$0C,$0C,$0A,$0F,$0C,$04,$1F
       .byte $0F,$0C,$0C,$0A,$0F,$0C,$00,$00,$0F,$00,$0C,$0B,$2D,$0C,$0C,$0D
       .byte $0F,$0C,$0C,$0E,$0F,$0C,$0C,$0D,$0F,$0C,$0C,$0E,$0F,$0C,$00,$00
       .byte $0F,$00,$0C,$0F,$2D,$0C,$0C,$0E,$0F,$0C,$0C,$0D,$0F,$0C,$00,$00
       .byte $0F,$00,$0C,$11,$0F,$0C,$0C,$0D,$0F,$0C,$0C,$0B,$0F,$0C,$04,$1F
       .byte $1E,$0C,$0C,$0B,$0F,$0C,$0C,$0D,$0E,$0C,$00,$00,$01,$00,$0C,$0D
       .byte $0F,$0C,$0C,$11,$0F,$0C,$00,$00,$0F,$00,$04,$1A,$2D,$0C,$04,$1F
       .byte $0F,$0C,$0C,$0A,$0F,$0C,$04,$1F,$0F,$0C,$00,$00,$1E,$00,$0C,$0B
       .byte $2D,$0C,$0C,$0D,$0F,$0C,$0C,$0E,$0F,$0C,$0C,$0D,$0F,$0C
LFA40: .byte $60,$F6,$1A,$84,$84,$86,$86,$88,$88,$8A,$7A,$78,$78,$76,$76,$76
       .byte $76,$76,$76,$1A,$1A,$1A,$1C,$1C,$1E,$1E,$BA,$BA,$BA,$B8,$B8,$B8
       .byte $00,$00,$00,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44,$44
       .byte $44,$44,$44,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
       .byte $0E,$0E,$0E,$68,$68,$68,$68,$1A,$1A,$68,$68,$1C,$1C,$1C,$1C,$00
       .byte $00,$00,$00,$86,$8A,$8A,$8A,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E
       .byte $8E,$0E,$0E,$F4,$F4,$F4,$F4,$F4,$F6,$F6,$F6,$F8,$00,$00,$00,$00
       .byte $00,$00,$00,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC
       .byte $FC,$FC,$4A,$4A,$4A,$4A,$48,$48,$48,$48,$46,$46,$46,$46,$46,$00
       .byte $00,$00,$3A,$3A,$3A,$3A,$3A,$98,$98,$98,$98,$3A,$3A,$3A,$BC,$BC
       .byte $BC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$7C,$FC,$FC,$7C
       .byte $3C,$04,$04,$04,$04,$04,$07,$06,$04,$00,$00,$00,$00,$38,$78,$78
       .byte $30,$10,$20,$40,$C0,$C0,$40,$00,$00,$00,$00,$3C,$7E,$FF,$FF,$FF
       .byte $FF,$FF,$7E,$3C,$00,$00,$00,$00,$00,$00,$00,$36,$12,$12,$3F,$3F
       .byte $7F,$FF,$D1,$70,$00,$00,$00,$00,$00,$00,$00,$EF,$EF,$EF,$FF,$FF
       .byte $EF,$EF,$10,$28,$54,$20,$00,$00,$00,$00,$00,$3C,$18,$18,$18,$99
       .byte $99,$DB,$DB,$FF,$C3,$DB,$99,$81,$3C,$00,$00,$7F,$7F,$5D,$6B,$36
       .byte $BE,$DC,$08,$00,$00,$00,$00,$00,$00,$00,$00,$C3,$3C,$7E,$A5,$A5
       .byte $A5,$A5,$A5,$FF,$81,$A5,$42,$00,$00,$00,$00,$18,$3C,$7E,$FF,$FF
       .byte $FF,$E7,$66,$00,$00,$00,$00,$00,$00,$00,$00,$36,$14,$14,$55,$5D
       .byte $5D,$5D,$3E,$08,$1C,$2A,$3E,$1C,$08,$00
LFBBA: .byte $00,$1E,$12,$1E,$FF,$FF,$FF,$DB,$FF,$64,$64,$66,$62,$62,$62,$63
       .byte $F0
LFBCB: .byte $F4,$F4,$84,$84,$84,$84,$84,$88,$88,$88,$88,$3A,$3A,$76,$86,$86
LFBDB: .byte $00,$63,$21,$23,$22,$16,$1C,$4C,$DF,$7D,$3E,$18,$18,$3C,$18,$18
LFBEB: .byte $1A,$5C
LFBED: .byte $C3,$C3,$C3,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFBFD: .byte $00,$1B,$09,$09,$09,$0F,$0F,$0F,$3F,$6F
LFC07: .byte $00,$6C,$48,$48,$FC,$78,$30,$78,$7E,$7B,$0C,$13,$02,$0C,$0C,$12
       .byte $02,$0C,$0C,$11,$02,$0C,$0C,$10,$02,$0C,$0C,$0F,$02,$0C,$0C,$0E
       .byte $02,$0C,$0C,$0D,$02,$0C,$0C,$0C,$02,$0C,$0C,$0B,$02,$0C,$0C,$0A
       .byte $02,$0C,$0C,$09,$02,$0C,$0C,$08,$02,$0C,$0C,$07,$02,$0C,$0C,$06
       .byte $02,$0C,$0C,$05,$02
LFC4C: .byte $0C,$0C,$04,$02,$0C,$03,$10,$25,$0C
LFC55: .byte $00,$F6,$0E,$3A,$0E,$E8,$E8,$EA,$EA,$EA
LFC5F: .byte $10,$15,$20,$30,$40,$50,$60,$70,$80,$90
LFC69: .byte $00,$01,$02,$03,$04,$05,$07,$10,$14,$20,$25
LFC74: .byte $05,$08,$10,$15,$20,$25,$30,$35
LFC7C: .byte $40
LFC7D: .byte $45,$3A,$3A,$3A,$16,$12,$16,$12,$16,$12,$16,$12,$16,$12,$16,$12
       .byte $16
LFC8E: .byte $00,$38,$7C,$7C,$C6,$C6,$C6,$00
LFC96: .byte $00,$F6,$86,$3A,$86,$86,$8A,$8A,$8A,$8A
LFCA0: .byte $08,$18
LFCA2: .byte $C3,$C3,$C3,$18,$18,$7E,$7E,$FF,$FF,$C3,$C3,$C3,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LFCB6: .byte $00,$BA,$B4,$BA,$88,$38,$88,$1E,$88,$44,$44,$44,$44,$44,$44,$1E
       .byte $1E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00
LFCD7: .byte $00,$1E,$12,$1E,$3F,$3F,$3F,$36,$3F,$8C,$CC,$EC,$FC,$FC,$E0,$C0
       .byte $80,$00,$00,$50,$00,$04,$11,$2D,$0C,$04,$14,$0F,$0C,$04,$1A,$0F
       .byte $0C,$04,$13,$0F,$0C,$00,$00,$01,$00,$04,$13,$0F,$0C,$00,$00,$01
       .byte $00,$04,$13,$0F,$0C,$04,$11,$1E,$0C,$04,$0F,$1E,$0C,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF
       .byte $FF,$00,$00,$00,$00,$00,$F0,$00,$FF
