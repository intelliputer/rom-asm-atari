; Disassembly of roms/Berzerk.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Berzerk.bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP0FB  =  $32
CXP1FB  =  $33
CXM0FB  =  $34
CXM1FB  =  $35
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       JMP    LF9AC   
LF003: LDA    $89     
       LDA    $89     
       LDA    $89     
       JMP    LF03E   
LF00C: NOP            
       NOP            
       JMP    LF03E   
LF011: LDA    CXP1FB  
       ORA    CXM0P   
       ORA    CXPPMM  
       AND    #$80    
       BIT    CXM1P   
       BVC    LF01F   
       ORA    #$01    
LF01F: STA    $C9,X   
       STA    WSYNC   
       LDA    $89     
       LDA    $FD     
       STA    GRP0    
       LDA    ($8F),Y 
       STA    ENAM0   
       NOP            
       LDA    $89     
       LDA    $89     
       CPY    $8C     
       BCC    LF003   
       CPY    $8D     
       BCS    LF00C   
       LDA    ($89),Y 
       STA    $FD     
LF03E: INY            
       TYA            
       LSR            
       CLC            
       ADC    $83     
       TAX            
       LDA    LFE00,X 
       STA    PF2     
       LDA    LFD00,X 
       STA    PF1     
       LDA    LFB00,X 
       ORA    $E1     
       STA    PF0     
       LDA    $E6     
       STA    GRP1    
       LDX    $FE     
       BMI    LF076   
       LDA    $89     
LF060: DEX            
       BPL    LF060   
       STA    RESP1   
       LDA    ($98),Y 
       STA    ENAM1   
       LDX    $FC     
       LDA    $AF,X   
       TAX            
       LDA    LFF33,X 
       STA    $E6     
       JMP    LF08B   
LF076: LDA    ($98),Y 
       STA    ENAM1   
       LDX    $FC     
       LDA    $AF,X   
       TAX            
       LDA    LFF33,X 
       STA    $E6     
       LDX    $FE     
LF086: INX            
       BMI    LF086   
       STA    RESP1   
LF08B: STA    WSYNC   
       STA    HMOVE   
LF08F: LDA    $FD     
       STA    GRP0    
       LDA    ($8F),Y 
       STA    ENAM0   
       NOP            
       LDA    $89     
       LDA    $89     
       CPY    $8C     
       BCC    LF103   
       CPY    $8D     
       BCS    LF10B   
       LDA    ($89),Y 
       STA    $FD     
LF0A8: INY            
       TYA            
       LSR            
       CLC            
       ADC    $83     
       TAX            
       LDA    LFE00,X 
       STA    PF2     
       LDA    LFD00,X 
       STA    PF1     
       LDA    LFB00,X 
       ORA    $E1     
       STA    PF0     
       LDA    $E6     
       STA    GRP1    
       LDA    ($98),Y 
       STA    ENAM1   
       LDX    $FC     
       TYA            
       CMP    $B8,X   
       BNE    LF0DE   
       LDA    $9F,X   
       STA    HMP1    
       LDA    $A7,X   
       STA    $FE     
       LDA    #$00    
       STA    $E6     
       JMP    LF011   
LF0DE: BCC    LF0FA   
       SEC            
       SBC    #$09    
       BMI    LF0EB   
       CMP    $B8,X   
       BCC    LF0EB   
       INC    $FC     
LF0EB: INC    $AF,X   
       LDA    $AF,X   
       TAX            
       LDA    LFF33,X 
LF0F3: STA    $E6     
       STA    WSYNC   
       JMP    LF08F   
LF0FA: CPY    #$57    
       BCS    LF110   
       LDA    #$00    
       JMP    LF0F3   
LF103: NOP            
       LDA    $89     
       LDA    $89     
       JMP    LF0A8   
LF10B: LDA    $89     
       JMP    LF0A8   
LF110: STA    WSYNC   
       LDA    $FD     
       STA    GRP0    
       LDA    ($8F),Y 
       STA    ENAM0   
       CPY    $8D     
       BCS    LF122   
       LDA    ($89),Y 
       STA    $FD     
LF122: STA    WSYNC   
       LDA    #$E0    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       LDA    #$07    
       LDX    $E2     
       CPX    #$01    
       BNE    LF136   
       LDA    #$FF    
LF136: STA    PF2     
       STA    WSYNC   
       LDA    $FD     
       STA    GRP0    
       LDA    #$00    
       STA    GRP1    
       STA    WSYNC   
       STA    GRP1    
       STA    GRP0    
       STA    WSYNC   
       LDA    CXP1FB  
       ORA    CXM0P   
       ORA    CXPPMM  
       AND    #$80    
       BIT    CXM1P   
       BVC    LF158   
       ORA    #$01    
LF158: LDX    $FC     
       STA    $C9,X   
LF15C: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    REFP0   
       STA    HMP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$1C    
       EOR    $85     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDX    #$06    
       STA    WSYNC   
LF182: DEX            
       BPL    LF182   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$06    
       STA    $E8     
LF196: LDY    $E8     
       LDA    ($EA),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($EC),Y 
       STA    GRP1    
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    ($F0),Y 
       STA    $E9     
       LDA    ($F2),Y 
       TAX            
       LDA    ($F4),Y 
       TAY            
       LDA    $E9     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $E8     
       BPL    LF196   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$03    
       STA    VBLANK  
       LDA    #$24    
       STA    TIM64T  
       LDA    $81     
       BPL    LF1E4   
       JMP    LF8B2   
LF1E4: LDX    #$85    
       LDA    $DA     
       BPL    LF1EE   
       LDA    INPT4   
       BPL    LF1F5   
LF1EE: LDA    SWCHB   
       AND    #$01    
       BNE    LF1FC   
LF1F5: LDY    $84     
       LDA    #$00    
       JMP    LF9B4   
LF1FC: LDA    $80     
       BNE    LF202   
       INC    $80     
LF202: LDA    SWCHB   
       AND    #$02    
       BNE    LF22E   
       STA    AUDV0   
       STA    AUDV1   
       LDA    $86     
       BNE    LF230   
       LDA    $80     
       CMP    #$12    
       BCC    LF219   
       LDA    #$00    
LF219: CLC            
       SED            
       ADC    #$01    
       CLD            
LF21E: STA    $80     
       STA    $DE     
       LDA    #$AA    
       STA    $DD     
       STA    $DF     
       STA    $DA     
       STA    $E5     
       LDA    #$1A    
LF22E: STA    $86     
LF230: DEC    $86     
       LDA    $DA     
       BPL    LF24D   
       LDA    $84     
       BNE    LF23C   
       INC    $85     
LF23C: LDX    #$03    
LF23E: LDA    LFCF5,X 
       EOR    $85     
       AND    #$F7    
       STA    COLUP0,X
       DEX            
       BPL    LF23E   
       JMP    LF42C   
LF24D: LDA    $E5     
       CMP    #$FF    
       BEQ    LF259   
       SEC            
       ROR    $E5     
       JMP    LF42C   
LF259: LDX    #$00    
       LDY    #$03    
       LDA    $9D     
LF25F: CMP    LFC8D,Y 
       BEQ    LF27D   
       DEY            
       BPL    LF25F   
       LDA    $9E     
       BEQ    LF27D   
       CMP    #$54    
       BEQ    LF27D   
       BIT    CXPPMM  
       BVS    LF27D   
       BIT    CXM1P   
       BVS    LF27D   
       BMI    LF27D   
       BIT    CXM1FB  
       BPL    LF28D   
LF27D: LDA    $9A     
       CMP    #$0F    
       BEQ    LF285   
       STX    $9A     
LF285: STX    $98     
       STX    AUDV1   
       LDA    #$FB    
       STA    $99     
LF28D: LDY    #$03    
       LDA    $96     
LF291: CMP    LFC8D,Y 
       BEQ    LF2B1   
       DEY            
       BPL    LF291   
       LDA    $97     
       BEQ    LF2B1   
       CMP    #$54    
       BEQ    LF2B1   
       BIT    CXPPMM  
       BVS    LF2B1   
       BIT    CXM0P   
       BVS    LF2B1   
       BMI    LF2B1   
       BIT    CXM0FB  
       BVS    LF2B1   
       BPL    LF2CB   
LF2B1: STX    AUDV0   
       STX    $94     
       STX    $8F     
       LDA    #$FB    
       STA    $90     
       BIT    CXM0P   
       BVC    LF2CB   
       LDA    $88     
       AND    #$10    
       BEQ    LF2CB   
       LDA    #$02    
       STA    $F6     
       STA    CXCLR   
LF2CB: LDA    $91     
       CMP    #$03    
       BCC    LF2F1   
       BPL    LF2DA   
       LDY    #$03    
       DEC    $DA     
       JMP    LF85F   
LF2DA: INC    $91     
       LDX    #$00    
       AND    #$02    
       BEQ    LF2E6   
       LDX    #$25    
       LDA    #$01    
LF2E6: STA    AUDF0   
       STX    $FD     
       LDA    #$0E    
       STA    AUDV0   
       JMP    LF3A4   
LF2F1: LDA    $F6     
       CMP    #$03    
       BCC    LF320   
       LDA    $84     
       ROR            
       BCS    LF339   
       LDA    $AE     
       CLC            
       ADC    #$07    
       CMP    $93     
       BCC    LF320   
       LDA    $93     
       CLC            
       ADC    #$07    
       CMP    $AE     
       BCC    LF320   
       LDA    $D9     
       CLC            
       ADC    #$0B    
       CMP    $8B     
       BCC    LF320   
       LDA    $8B     
       CLC            
       ADC    #$14    
       CMP    $D9     
       BCS    LF32C   
LF320: BIT    CXM1P   
       BMI    LF32C   
       BIT    CXPPMM  
       BMI    LF32C   
       BIT    CXP0FB  
       BPL    LF339   
LF32C: LDA    #$03    
       STA    $91     
       LDA    #$08    
       STA    AUDC0   
       STA    $F7     
       JMP    LF2DA   
LF339: LDA    #$00    
       STA    $E7     
       LDA    #$7F    
       STA    $E8     
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       AND    #$0F    
       BNE    LF363   
       LDA    #$00    
       STA    $91     
       STA    $FD     
       STA    $92     
       LDA    $84     
       BNE    LF365   
       INC    $87     
       BNE    LF365   
       LDA    $80     
       JMP    LF21E   
LF363: STA    $8E     
LF365: LDX    $91     
       LDA    LFCAF,X 
       STA    $FD     
       LDA    INPT4   
       BMI    LF3A4   
       LDA    #$00    
       STA    $92     
       LDA    $8E     
       AND    #$03    
       TAX            
       LDA    LFCDB,X 
       STA    $FD     
       LDA    $94     
       BNE    LF3A4   
       JSR    LFA50   
       INC    $94     
       LDX    $8E     
       STX    $95     
       LDA    $93     
       CLC            
       ADC    LFCEA,X 
       STA    $96     
       LDA    $8B     
       LSR            
       CLC            
       ADC    LFCDF,X 
       STA    $97     
       LDA    #$0A    
       STA    AUDC0   
       LDA    #$FF    
       STA    $F7     
LF3A4: LDA    $94     
       BEQ    LF3E8   
       LDX    $95     
       LDA    $97     
       CLC            
       ADC    LFCB3,X 
       STA    $97     
       LDA    #$5A    
       SEC            
       SBC    $97     
       STA    $8F     
       LDA    #$FB    
       STA    $90     
       LDA    $F7     
       BPL    LF3CE   
       LSR            
       STA    AUDV0   
       AND    #$0F    
       BEQ    LF3CA   
       DEC    $F7     
LF3CA: EOR    #$0F    
       STA    AUDF0   
LF3CE: LDA    #$00    
       STA    NUSIZ0  
       LDA    LFCC3,X 
       BEQ    LF3E3   
       ASL            
       CLC            
       ADC    $96     
       STA    $96     
       LDX    #$20    
       STX    NUSIZ0  
       LDA    #$58    
LF3E3: CLC            
       ADC    $8F     
       STA    $8F     
LF3E8: LDA    $91     
       CMP    #$03    
       BCS    LF42C   
       LDA    $92     
       CLC            
       ADC    #$70    
       STA    $92     
       BCC    LF42C   
       DEC    $91     
       BPL    LF3FF   
       LDA    #$02    
       STA    $91     
LF3FF: LDX    $8E     
       LDA    $8B     
       CLC            
       ADC    LFCB3,X 
       STA    $8B     
       LDA    $93     
       CLC            
       ADC    LFCC3,X 
       STA    $93     
       LDY    #$02    
       LDA    $93     
       BEQ    LF429   
       INY            
       CMP    #$92    
       BCS    LF429   
       LDY    #$00    
       LDA    $8B     
       CMP    #$02    
       BCC    LF429   
       INY            
       CMP    #$98    
       BNE    LF42C   
LF429: JMP    LF85F   
LF42C: LDA    $8E     
       ASL            
       STA    REFP0   
       LDA    $8B     
       JSR    LFA04   
       LDA    #$FD    
       STA    $8A     
       LDA    $96     
       JSR    LFED7   
       LDX    #$02    
       JSR    LFEF3   
       LDA    $84     
       ROR            
       BCS    LF477   
       LDA    $BE     
       CMP    #$7F    
       BNE    LF477   
       LDA    $88     
       AND    #$30    
       BEQ    LF477   
       LDX    $F6     
       CPX    #$03    
       BCS    LF47A   
       LDA    $84     
       BNE    LF477   
       INC    $F6     
       LDA    #$01    
       STA    $F9     
       LDY    $E2     
       LDA    LFFEA,Y 
       STA    $D9     
       STA    $D1     
       ADC    #$10    
       STA    $C8     
       LDA    LFFE6,Y 
       STA    $AE     
LF477: JMP    LF4F3   
LF47A: LDA    $B8     
       CMP    #$7F    
       BEQ    LF487   
       LDA    $E0     
       ASL            
       ADC    $B7     
       BCC    LF4D8   
LF487: LDA    $F9     
       CLC            
       ADC    $D9     
       STA    $D9     
       CMP    $D1     
       BCS    LF4EA   
       LDX    #$03    
LF494: STX    $F9     
       LDA    $D1     
       CMP    $8B     
       BCS    LF4A4   
       INC    $D1     
       INC    $D1     
       INC    $D1     
       INC    $D1     
LF4A4: DEC    $D1     
       DEC    $D1     
       LDA    $D1     
       CLC            
       ADC    #$14    
       CMP    #$9B    
       BCC    LF4B3   
       LDA    #$9A    
LF4B3: STA    $C8     
LF4B5: LDX    $F9     
       BMI    LF4CA   
       LDA    $D1     
       ADC    #$05    
       CMP    $D9     
       BCS    LF4CA   
       LDA    $C8     
       STA    $D9     
       LDA    #$0E    
       JMP    LF4DA   
LF4CA: LDA    $AE     
       CMP    $93     
       BEQ    LF4D8   
       BCS    LF4D6   
       INC    $AE     
       INC    $AE     
LF4D6: DEC    $AE     
LF4D8: LDA    #$01    
LF4DA: STA    $FD     
       LDA    $D9     
       JSR    LFA04   
       LDA    #$FE    
       STA    $8A     
       LDA    $AE     
       JMP    LF4F5   
LF4EA: CMP    $C8     
       BCC    LF4B5   
       LDX    #$FC    
       JMP    LF494   
LF4F3: LDA    $93     
LF4F5: JSR    LFED7   
       LDX    #$00    
       JSR    LFEF3   
LF4FD: LDA    INTIM   
       BNE    LF4FD   
       LDA    #$03    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       INC    $84     
       STA    WSYNC   
       LDY    #$2C    
       STY    WSYNC   
       STY    TIM64T  
       LDY    #$00    
       STY    VSYNC   
       LDA    $DD     
       ORA    $DE     
       ORA    $DF     
       BEQ    LF59A   
       LDX    #$0A    
       LDA    #$5C    
LF527: STA    $EA,X   
       DEX            
       DEX            
       BPL    LF527   
       LDA    $81     
       BPL    LF543   
       LDX    #$0A    
       LDY    $DA     
LF535: DEY            
       BMI    LF540   
       LDA    #$63    
       STA    $EA,X   
       DEX            
       DEX            
       BPL    LF535   
LF540: JMP    LF907   
LF543: LDA    $DA     
       BMI    LF55B   
       LDA    $B8     
       CMP    #$7F    
       BNE    LF55B   
       LDA    #$16    
       STA    $EC     
       LDX    $DB     
       LDA    LFC0B,X 
       STA    $EA     
       JMP    LF59A   
LF55B: LDY    #$02    
       LDA    #$0A    
       STA    $E6     
LF561: LDA.wy $00DD,Y 
       AND    #$0F    
       TAX            
       LDA    LFC0B,X 
       LDX    $E6     
       STA    $EA,X   
       DEC    $E6     
       DEC    $E6     
       LDA.wy $00DD,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFC0B,X 
       LDX    $E6     
       STA    $EA,X   
       DEC    $E6     
       DEY            
       DEC    $E6     
       BPL    LF561   
       LDX    #$00    
LF58A: LDA    $EA,X   
       CMP    #$16    
       BNE    LF59A   
       LDA    #$5C    
       STA    $EA,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    LF58A   
LF59A: LDA    $81     
       BMI    LF540   
       JSR    LFA50   
       LDX    #$00    
       CLC            
       LDA    $B7     
       ADC    $E0     
       STA    $B7     
       BCC    LF5AE   
       LDX    #$01    
LF5AE: STX    $9F     
       LDX    #$00    
       STX    $E6     
LF5B4: LDA    $B8,X   
       CMP    #$7F    
       BEQ    LF610   
       LDY    $D2,X   
       CPY    #$17    
       BCC    LF5C3   
       JMP    LF680   
LF5C3: JSR    LFA9C   
       BCS    LF610   
       LDA    $9F     
       BEQ    LF610   
       CPY    #$08    
       BCS    LF5DD   
LF5D0: LDA    LFF1C,Y 
       STA    $D2,X   
       JMP    LF69B   
LF5D8: LDY    #$00    
       JMP    LF5D0   
LF5DD: CPY    #$08    
       BNE    LF613   
       LDA    $E5     
       CMP    #$FF    
       BNE    LF5D0   
       JSR    LFADD   
       CPX    $E9     
       BNE    LF5D8   
       LDA    $E4     
       BPL    LF602   
       LDY    #$13    
       LDA    $8B     
       LSR            
       CMP    $B8,X   
       BEQ    LF5D8   
       BCS    LF5FF   
       LDY    #$10    
LF5FF: JMP    LF60E   
LF602: LDY    #$0C    
       LDA    $C1,X   
       CMP    $93     
       BEQ    LF5D8   
       BCC    LF60E   
       LDY    #$09    
LF60E: STY    $D2,X   
LF610: JMP    LF69B   
LF613: CPY    #$0C    
       BCS    LF624   
       LDA    $C1,X   
       CMP    $93     
       BCC    LF5D8   
       BEQ    LF5D8   
       DEC    $C1,X   
       JMP    LF5D0   
LF624: CPY    #$0F    
       BCS    LF633   
       LDA    $C1,X   
       CMP    $93     
       BCS    LF5D8   
       INC    $C1,X   
       JMP    LF5D0   
LF633: CPY    #$13    
       BCS    LF65B   
       LDA    $8B     
       LSR            
       ADC    #$03    
       CMP    $B8,X   
       BEQ    LF5D8   
       BCS    LF602   
       CPY    #$0F    
       BEQ    LF658   
       CPY    #$11    
       BEQ    LF658   
       TXA            
       BEQ    LF656   
       LDA    $B7,X   
       CLC            
       ADC    #$0A    
       CMP    $B8,X   
       BCS    LF602   
LF656: DEC    $B8,X   
LF658: JMP    LF5D0   
LF65B: LDA    $8B     
       LSR            
       CMP    $B8,X   
       BEQ    LF602   
       BCC    LF602   
       CPY    #$13    
       BEQ    LF67D   
       CPY    #$15    
       BEQ    LF67D   
       LDA    $B9     
       CMP    #$7F    
       BEQ    LF67B   
       LDA    $B8,X   
       CLC            
       ADC    #$0B    
       CMP    $B9,X   
       BCS    LF602   
LF67B: INC    $B8,X   
LF67D: JMP    LF5D0   
LF680: LDA    $CA,X   
       BEQ    LF686   
       INC    $E6     
LF686: INC    $D2,X   
       LDA    $D2,X   
       CMP    #$1B    
       BCC    LF69B   
       JSR    LFAB7   
       LDA    #$50    
       JSR    LFA19   
       INC    $DB     
       JMP    LF5B4   
LF69B: INX            
       CPX    #$08    
       BEQ    LF6A3   
       JMP    LF5B4   
LF6A3: LDA    $BF     
       CMP    #$7F    
       BNE    LF6AF   
       LDA    $E5     
       CMP    #$FF    
       BEQ    LF6B2   
LF6AF: JMP    LF7B1   
LF6B2: LDA    $DC     
       LSR            
       BEQ    LF6AF   
       LDA    $9A     
       CMP    #$0F    
       BNE    LF6C5   
       INC    $9C     
       BPL    LF6AF   
       LDA    #$00    
       STA    $9A     
LF6C5: LDA    $88     
       ROR            
       BCC    LF6AF   
       LDA    $9A     
       BEQ    LF6D1   
       JMP    LF743   
LF6D1: LDA    $9F     
       BNE    LF6AF   
       LDA    #$FF    
       STA    $9B     
       LDA    $84     
       AND    #$07    
       TAX            
       LDA    $B8,X   
       CMP    #$7F    
       BEQ    LF6AF   
       LDA    $D2,X   
       CMP    #$17    
       BCS    LF6AF   
       LDA    $93     
       SEC            
       SBC    #$08    
       CMP    $C1,X   
       BCS    LF708   
       CLC            
       ADC    #$10    
       CMP    $C1,X   
       BCC    LF708   
       LDY    #$04    
       LDA    $8B     
       LSR            
       CMP    $B8,X   
       BCS    LF705   
       LDY    #$08    
LF705: JMP    LF723   
LF708: LDA    $8B     
       LSR            
       SEC            
       SBC    #$06    
       CMP    $B8,X   
       BCS    LF6AF   
       CLC            
       ADC    #$0C    
       CMP    $B8,X   
       BCC    LF6AF   
       LDY    #$02    
       LDA    $C1,X   
       CMP    $93     
       BCS    LF723   
       LDY    #$01    
LF723: LDA    $D2,X   
       CMP    #$09    
       BCC    LF72D   
       LDA    #$00    
       STA    $D2,X   
LF72D: LDA    #$FF    
       STA    $F8     
       LDA    LFC91,Y 
       CLC            
       ADC    $B8,X   
       STA    $9E     
       LDA    LFC9C,Y 
       CLC            
       ADC    $C1,X   
       STA    $9D     
       STY    $9A     
LF743: LDA    $9A     
       AND    #$03    
       BEQ    LF74D   
       LDA    #$20    
       STA    NUSIZ1  
LF74D: LDA    $DC     
       CMP    #$10    
       BCS    LF75E   
       ROR            
       TAX            
       LDA    LFFEE,X 
       ADC    $9B     
       STA    $9B     
       BCC    LF7B1   
LF75E: LDA    $9A     
       BEQ    LF7B1   
       CMP    #$0F    
       BEQ    LF7B1   
       AND    #$0C    
       BEQ    LF774   
       AND    #$04    
       BEQ    LF772   
       INC    $9E     
       INC    $9E     
LF772: DEC    $9E     
LF774: LDA    #$5A    
       SEC            
       SBC    $9E     
       STA    $98     
       LDA    #$FB    
       STA    $99     
       LDA    $F8     
       BPL    LF794   
       LSR            
       STA    AUDV1   
       AND    #$0F    
       BEQ    LF78C   
       DEC    $F8     
LF78C: EOR    #$0F    
       STA    AUDF1   
       LDA    #$0E    
       STA    AUDC1   
LF794: LDA    $9A     
       AND    #$03    
       BEQ    LF7B1   
       AND    #$01    
       BEQ    LF7A6   
       INC    $9D     
       INC    $9D     
       INC    $9D     
       INC    $9D     
LF7A6: DEC    $9D     
       DEC    $9D     
       LDA    #$58    
       CLC            
       ADC    $98     
       STA    $98     
LF7B1: LDA    $9D     
       JSR    LFED7   
       LDX    #$03    
       JSR    LFEF3   
       LDA    $F8     
       BMI    LF7CD   
       STA    AUDV1   
       BEQ    LF7C5   
       DEC    $F8     
LF7C5: EOR    #$0F    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC1   
LF7CD: LDX    #$07    
LF7CF: LDY    $D2,X   
       LDA    LFF01,Y 
       STA    $AF,X   
       DEX            
       BPL    LF7CF   
       LDX    #$07    
LF7DB: LDA    $B8,X   
       CMP    #$7F    
       BEQ    LF7F6   
       LDA    $C1,X   
       JSR    LFED7   
       STA    $9F,X   
       DEY            
       TYA            
       CMP    #$05    
       BCC    LF7F4   
       SBC    #$04    
       EOR    #$FF    
       TAY            
       INY            
LF7F4: STY    $A7,X   
LF7F6: DEX            
       BPL    LF7DB   
       LDY    #$00    
       STY    $FC     
       STY    $E6     
       STY    $FD     
       STY    GRP0    
       STY    ENAM1   
       STY    ENAM0   
       STY    VDELP1  
       LDA    $85     
       BNE    LF828   
       LDA    #$3C    
       STA    COLUP0  
       LDA    $E5     
       CMP    #$FF    
       BEQ    LF81D   
       TYA            
       STY    COLUP0  
       JMP    LF826   
LF81D: LDA    $DC     
       LSR            
       AND    #$07    
       TAX            
       LDA    LFCD3,X 
LF826: STA    COLUP1  
LF828: LDA    #$E0    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       LDA    #$07    
       LDX    $E2     
       BNE    LF838   
       LDA    #$FF    
LF838: STA    PF2     
LF83A: LDA    INTIM   
       BNE    LF83A   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMCLR   
       STA    CXCLR   
       LDY    #$02    
       CPY    $8C     
       BCC    LF857   
       LDA    ($89),Y 
       STA    $FD     
LF857: INY            
       STA    WSYNC   
       STA    WSYNC   
       JMP    LF08F   
LF85F: STY    $E6     
       INC    $DC     
       LDA    $B8     
       CMP    #$7F    
       BNE    LF872   
       LDA    $DB     
       ASL            
       ASL            
       ASL            
       ASL            
       JSR    LFA19   
LF872: LDA    #$7F    
       STA    $B8     
       STA    $8B     
       LDA    $DC     
       LSR            
       AND    #$07    
       TAX            
       LDA    LFCA7,X 
       STA    $E0     
       LDA    #$0F    
       STA    $9A     
       LDA    #$00    
       STA    $9C     
       STA    $84     
       STA    $98     
       STA    $A6     
       STA    $F7     
       STA    AUDV1   
       STA    $91     
       STA    $94     
       STA    $8F     
       STA    $F6     
       LDA    #$58    
       STA    $D0     
       LDA    $81     
       CMP    #$03    
       BNE    LF8AB   
       LDA    #$05    
       STA    $F7     
LF8AB: LDA    #$FF    
       STA    $81     
       JMP    LF42C   
LF8B2: LDY    $E6     
       CPY    #$01    
       BEQ    LF8BA   
       INC    $A6     
LF8BA: CPY    #$00    
       BEQ    LF8C0   
       DEC    $D0     
LF8C0: LDA    $A6     
       CMP    $D0     
       BCS    LF8C9   
       JMP    LF42C   
LF8C9: LDA    #$02    
       STA    $81     
       LDX    #$00    
       CPY    #$02    
       BCC    LF8D5   
       LDX    #$20    
LF8D5: STX    $E1     
       LDA    LFFE2,Y 
       STA    $E2     
       TAY            
       LDA    LFFEA,Y 
       STA    $8B     
       LDA    LFFE6,Y 
       STA    $93     
       JSR    LFED7   
       LDX    #$00    
       JSR    LFEF3   
       LDA    $E4     
       AND    #$03    
       CMP    $82     
       BNE    LF8F9   
       EOR    #$02    
LF8F9: STA    $82     
       TAY            
       LDA    LFFDE,Y 
       STA    $83     
       JSR    LFA73   
       JMP    LF42C   
LF907: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    AUDV0   
       LDX    $F7     
       BEQ    LF92A   
       LDA    $84     
       AND    #$07    
       BNE    LF922   
       LDA    LFCF8,X 
       STA    AUDF0   
       DEC    $F7     
LF922: LDA    #$0D    
       STA    AUDC0   
       LDA    #$0D    
       STA    AUDV0   
LF92A: LDX    INTIM   
       BNE    LF92A   
       STX    WSYNC   
       STX    VBLANK  
       LDA    $A6     
       BEQ    LF948   
LF937: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       INX            
       CPX    $A6     
       BNE    LF937   
LF948: CPX    $D0     
       BEQ    LF986   
       CPX    #$02    
       BCS    LF964   
       STA    WSYNC   
       LDA    #$E0    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       LDA    #$07    
       STA    PF2     
       INX            
       STA    WSYNC   
       JMP    LF948   
LF964: CPX    #$56    
       BCS    LF99D   
       STA    WSYNC   
       TXA            
       LSR            
       CLC            
       ADC    $83     
       TAY            
       LDA    LFB01,Y 
       STA    PF0     
       LDA    LFD01,Y 
       STA    PF1     
       LDA    LFE01,Y 
LF97D: STA    PF2     
       INX            
       STA    WSYNC   
       CPX    $D0     
       BNE    LF964   
LF986: CPX    #$58    
       BEQ    LF99A   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       INX            
       JMP    LF986   
LF99A: JMP    LF15C   
LF99D: STA    WSYNC   
       LDA    #$E0    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       LDA    #$07    
       JMP    LF97D   
LF9AC: LDY    INTIM   
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF9B4: STA    VSYNC,X 
       INX            
       BNE    LF9B4   
       CLD            
       STA    COLUBK  
       LDA    #$88    
       STA    COLUPF  
       LDA    #$11    
       STA    CTRLPF  
       LDA    #$7F    
       STA    $C0     
       STY    $E4     
       TYA            
       EOR    #$B5    
       STA    $E3     
       LDA    #$0F    
       STA    $9A     
       LDX    #$02    
       LDA    $81     
       BNE    LF9DB   
       LDX    #$FF    
LF9DB: STX    $DA     
       LDY    #$02    
       STY    $8E     
       INY            
       LDX    #$0B    
LF9E4: LDA    LF9F8,X 
       STA    $EA,X   
       DEX            
       BPL    LF9E4   
       LDX    $80     
       LDA    LFEC4,X 
       STA    $88     
       INC    $87     
       JMP    LF85F   
LF9F8: .byte $5C,$FC,$6A,$FC,$71,$FC,$78,$FC,$7F,$FC,$86,$FC
LFA04: STA    VDELP0  
       LSR            
       STA    $8C     
       CLC            
       ADC    #$0D    
       STA    $8D     
       LDA    #$A9    
       SEC            
       SBC    $8C     
       CLC            
       ADC    $FD     
       STA    $89     
       RTS            

LFA19: LDY    $DE     
       STY    $E7     
       LDY    #$02    
       SED            
       CLC            
LFA21: ADC.wy $00DD,Y 
       STA.wy $00DD,Y 
       LDA    #$00    
       DEY            
       BPL    LFA21   
       CLD            
       BIT    $88     
       BVS    LFA3B   
       BPL    LFA4F   
       LDA    $E7     
       AND    #$1F    
       CMP    #$19    
       BNE    LFA4F   
LFA3B: LDA    $E7     
       AND    #$0F    
       CMP    #$09    
       BNE    LFA4F   
       LDA    $E7     
       CMP    $DE     
       BEQ    LFA4F   
       LDA    #$03    
       STA    $81     
       INC    $DA     
LFA4F: RTS            

LFA50: LDA    $E3     
       ASL            
       EOR    $E3     
       ASL            
       ASL            
       ROL    $E4     
       ROL    $E3     
       LDA    $E4     
       AND    #$7F    
       STA    $E6     
LFA61: CLC            
       ADC    $E7     
       SEC            
       CMP    $E8     
       BCC    LFA72   
       BEQ    LFA72   
       LSR    $E6     
       LDA    $E6     
       JMP    LFA61   
LFA72: RTS            

LFA73: LDX    #$07    
       LDA    #$00    
       STA    $DB     
       STA    $E5     
       STA    $E7     
       LDA    #$87    
       STA    $E8     
       LDA    #$4B    
LFA83: STA    $E9     
       STA    $B8,X   
       JSR    LFA50   
       STA    $C1,X   
       JSR    LFA50   
       AND    #$07    
       STA    $D2,X   
       LDA    $E9     
       SEC            
       SBC    #$0A    
       DEX            
       BPL    LFA83   
       RTS            

LFA9C: LDA    $E6     
       BNE    LFAB5   
       LDA    $CA,X   
       BEQ    LFAB5   
       LDA    #$17    
       STA    $D2,X   
       LDA    $E5     
       CMP    #$FF    
       BEQ    LFAB1   
       JSR    LFAB7   
LFAB1: INC    $E6     
       SEC            
       RTS            

LFAB5: CLC            
       RTS            

LFAB7: TXA            
       TAY            
LFAB9: LDA    $CB,X   
       STA    $CA,X   
       LDA    $D3,X   
       STA    $D2,X   
       LDA    $C2,X   
       STA    $C1,X   
       LDA    $B9,X   
       STA    $B8,X   
       INX            
       CMP    #$7F    
       BNE    LFAB9   
       INC    $E0     
       INC    $E0     
       LDA    #$08    
       STA    AUDC1   
       LDA    #$0F    
       STA    $F8     
       TYA            
       TAX            
       RTS            

LFADD: LDY    #$03    
       LDA    #$00    
LFAE1: CLC            
       ADC    #$22    
       CMP    $93     
       BCS    LFAEB   
       DEY            
       BPL    LFAE1   
LFAEB: LDA    $8B     
       CMP    #$50    
       BCS    LFAF5   
       INY            
       INY            
       INY            
       INY            
LFAF5: TYA            
       EOR    $E4     
       AND    #$07    
       STA    $E9     
       RTS            

LFAFD: .byte $00,$00,$00
LFB00: .byte $00
LFB01: .byte $00,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$20
       .byte $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
       .byte $20,$20,$20,$20,$20,$20,$20,$20,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$E0,$20,$20,$20,$20,$20,$20,$20
       .byte $20,$20,$20,$20,$20,$20,$20,$20,$20,$2F,$2F,$2F,$20,$20,$20,$20
       .byte $20,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20
       .byte $20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$20,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$20,$20,$20,$20
       .byte $20,$20,$20,$20,$20,$20,$20,$20,$20,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFC0B: .byte $16,$1D,$24,$2B,$32,$39,$40,$47,$4E,$55,$5C,$7E,$72,$72,$72,$72
       .byte $72,$7E,$1C,$1C,$1C,$1C,$1C,$1C,$3C,$7E,$40,$7E,$0E,$0E,$4E,$7E
       .byte $7E,$4E,$0E,$1C,$0E,$4E,$7E,$1C,$1C,$7E,$5C,$5C,$5C,$7C,$7E,$4E
       .byte $0E,$7E,$40,$4E,$7E,$7E,$4E,$4E,$7E,$40,$4E,$7E,$0E,$0E,$0E,$0E
       .byte $0E,$4E,$7E,$7E,$4E,$4E,$7E,$72,$72,$7E,$7E,$72,$02,$7E,$72,$72
       .byte $7E,$00,$00,$00,$00,$00,$00,$00,$18,$18,$18,$5A,$3C,$00,$18,$79
       .byte $85,$B5,$A5,$B5,$85,$79,$17,$15,$15,$77,$55,$55,$77,$71,$41,$41
       .byte $71,$11,$51,$70,$49,$49,$49,$C9,$49,$49,$BE,$55,$55,$55,$D9,$55
       .byte $55,$99
LFC8D: .byte $00,$01,$94,$95
LFC91: .byte $00,$07,$07,$00,$06,$06,$00,$00,$01,$06,$00
LFC9C: .byte $03,$09,$03,$03,$04,$0A,$03,$03,$04,$03,$03
LFCA7: .byte $20,$28,$30,$38,$40,$48,$50,$58
LFCAF: .byte $00,$0C,$18,$25
LFCB3: .byte $00,$FF,$01,$00,$00,$FF,$01,$00,$00,$FF,$01,$00,$00,$00,$00,$00
LFCC3: .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF,$01,$01,$01,$01,$00,$00,$00,$00
LFCD3: .byte $1A,$36,$0C,$CA,$4C,$A8,$FC,$58
LFCDB: .byte $31,$49,$3D,$31
LFCDF: .byte $00,$02,$07,$00,$05,$05,$07,$00,$05,$05,$07
LFCEA: .byte $00,$07,$08,$00,$00,$00,$00,$00,$06,$06,$06
LFCF5: .byte $40,$01,$F2
LFCF8: .byte $84,$00,$1F,$10,$02,$0A,$11,$18
LFD00: .byte $00
LFD01: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08
       .byte $08,$08,$08,$08,$08,$0F,$0F,$08,$08,$08,$08,$08,$08,$08,$08,$08
       .byte $08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$08,$08,$08,$08,$08
       .byte $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$00,$3C,$5A,$5A,$18
       .byte $18,$18,$1C,$00,$00,$18,$18,$00,$38,$58,$3C,$18,$08,$64,$44,$00
       .byte $00,$18,$18,$00,$38,$18,$3C,$18,$F4,$82,$03,$00,$00,$3C,$24,$24
       .byte $3C,$C3,$A5,$A5,$E7,$26,$22,$2E,$38,$00,$18,$18,$00,$1E,$18,$18
       .byte $18,$18,$18,$1C,$00,$00,$18,$18,$00,$3C,$3A,$3A,$18,$18,$18,$1C
       .byte $00,$00,$18,$18,$02,$1C,$18,$18,$18,$18,$18,$1C,$00,$00,$00
LFE00: .byte $00
LFE01: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$04,$04,$04
       .byte $04,$04,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$07,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $04,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$7E,$DB,$FF,$BD,$C3,$7E
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$7E,$DB,$FF,$7F,$00,$00
       .byte $00,$00,$00
LFEC4: .byte $49,$49,$51,$61,$89,$91,$A1,$09,$11,$21,$00,$00,$00,$00,$00,$00
       .byte $60,$50,$48
LFED7: LDY    #$00    
       CLC            
       ADC    #$01    
       CMP    #$2D    
       BCC    LFEE4   
       LDY    #$03    
       SBC    #$2D    
LFEE4: SEC            
LFEE5: INY            
       SBC    #$0F    
       BCS    LFEE5   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LFEF3: STA    WSYNC   
       NOP            
       NOP            
       STA    HMP0,X  
       LDA    HMP0    
LFEFB: DEY            
       BPL    LFEFB   
       STA    RESP0,X 
       RTS            

LFF01: .byte $00,$00,$09,$12,$1B,$24,$2D,$36,$3F,$48,$51,$51,$5A,$63,$63,$6C
       .byte $00,$75,$00,$24,$87,$24,$7E,$90,$99,$A2,$A2
LFF1C: .byte $01,$02,$03,$04,$05,$06,$07,$08,$00,$0A,$0B,$09,$0D,$0E,$0C,$10
       .byte $11,$12,$0F,$14,$15,$16,$13
LFF33: .byte $3C,$7E,$FF,$BD,$BD,$24,$24,$66,$00,$3C,$3E,$FF,$BD,$BD,$24,$24
       .byte $66,$00,$3C,$1E,$FF,$BD,$BD,$24,$24,$66,$00,$3C,$4E,$FF,$BD,$BD
       .byte $24,$24,$66,$00,$3C,$66,$FF,$BD,$BD,$24,$24,$66,$00,$3C,$72,$FF
       .byte $BD,$BD,$24,$24,$66,$00,$3C,$78,$FF,$BD,$BD,$24,$24,$66,$00,$3C
       .byte $7C,$FF,$BD,$BD,$24,$24,$66,$00,$3C,$3E,$FF,$BD,$BD,$24,$24,$6C
       .byte $00,$3C,$3E,$FF,$BD,$BD,$18,$18,$38,$00,$3C,$7C,$FF,$BD,$BD,$24
       .byte $24,$36,$00,$3C,$7C,$FF,$BD,$BD,$18,$18,$1C,$00,$3C,$7E,$FF,$BD
       .byte $BD,$24,$24,$64,$06,$3C,$7E,$FF,$BD,$BD,$24,$24,$26,$60,$3C,$66
       .byte $FF,$BD,$BD,$24,$24,$64,$06,$3C,$66,$FF,$BD,$BD,$24,$24,$26,$60
       .byte $00,$00,$00,$24,$18,$00,$00,$00,$00,$14,$42,$81,$24,$00,$00,$52
       .byte $24,$00,$42,$81,$24,$00,$42,$3C,$81,$42,$00
LFFDE: .byte $00,$2A,$54,$7E
LFFE2: .byte $01,$00,$03,$02
LFFE6: .byte $49,$49,$06,$8B
LFFEA: .byte $08,$8E,$4A,$4A
LFFEE: .byte $38,$40,$50,$60,$78,$90,$B0,$D0,$00,$00,$00,$00,$00,$00,$00,$F0
       .byte $00,$00
