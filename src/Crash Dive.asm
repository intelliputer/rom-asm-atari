; Disassembly of roms/Crash Dive.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Crash Dive.bin
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
REFP1   =  $0C
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
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXM0FB  =  $34
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       LDY    #$B5    
       SEI            
       CLD            
       LDX    #$00    
LF006: LDA    #$00    
LF008: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF008   
       STY    $81     
       LDX    #$06    
LF012: JSR    LFB92   
       AND    #$3F    
       STA    $A5,X   
       LDA    LFC8A,X 
       STA    $AE,X   
       DEX            
       BPL    LF012   
       STX    $B6     
       STX    $99     
       STX    $DE     
       LDX    #$04    
       STX    $9C     
       LDA    $82     
       STA    $9B     
       BEQ    LF033   
       STX    $9D     
LF033: LDA    #$50    
       STA    $A5     
       LDA    #$50    
       STA    $BD     
       STA    $BF     
       JSR    LFA7E   
       LDA    #$20    
       STA    $E9     
       STA    $CA     
       JMP    LFA76   
LF049: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       LDY    #$00    
       STY    $98     
       DEY            
       SEC            
       INC    $84     
       BNE    LF05F   
       INC    $96     
       BNE    LF05F   
       ROR    $96     
LF05F: TYA            
       EOR    SWCHB   
       AND    #$08    
       ASL            
       SBC    #$00    
       LDY    $96     
       BPL    LF070   
       STY    $98     
       AND    #$F7    
LF070: STA    $80     
       ASL    $98     
       LDA    #$FF    
       EOR    $98     
       AND    $80     
       STA    $85     
       LDX    #$07    
LF07E: LDA    $8C,X   
       EOR    $98     
       AND    $80     
       STA    $8C,X   
       DEX            
       BNE    LF07E   
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$86    
       EOR    $98     
       AND    $80     
       STA    COLUBK  
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$29    
       STA    TIM64T  
       STX    GRP0    
       STX    COLUPF  
       STX    CXCLR   
       STX    HMCLR   
       LDA    #$30    
       STA    PF0     
       LDA    #$35    
       STA    CTRLPF  
       JSR    LFB92   
       LDX    #$01    
LF0B3: LDY    $9F,X   
       LDA    LFBD2,Y 
       BNE    LF0C7   
       LDY    $A1,X   
       STY    $9F,X   
       LDY    $A3,X   
       STY    $A1,X   
       STA    $A3,X   
       JMP    LF0DB   
LF0C7: INC    $9F,X   
       CMP    #$10    
       BEQ    LF0D9   
       BCS    LF0D3   
       STA    AUDC0,X 
       BCC    LF0DB   
LF0D3: STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
LF0D9: STA    AUDV0,X 
LF0DB: DEX            
       BPL    LF0B3   
       LDX    #$06    
LF0E0: BNE    LF0E7   
       LDA    $A5,X   
       JMP    LF114   
LF0E7: LDA    $E9     
       SEC            
       SBC    $A5,X   
       CMP    #$08    
       BCC    LF0FD   
       STA    $F0     
       LDA    #$CF    
       SEC            
       SBC    $F0     
       BCC    LF0FD   
       CMP    #$28    
       BCS    LF0FF   
LF0FD: LDA    #$28    
LF0FF: TAY            
       LDA    $B6,X   
       AND    #$07    
       CMP    #$05    
       BNE    LF109   
       DEY            
LF109: TYA            
       CMP    #$30    
       BCC    LF112   
       CMP    #$D0    
       BCC    LF114   
LF112: EOR    #$E0    
LF114: SEC            
       SBC    #$30    
       JSR    LFBA4   
       STY    $F0     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F0     
       STA    $86,X   
       DEX            
       BPL    LF0E0   
       CLC            
       LDA    $83     
       ADC    #$30    
       SEC            
       SBC    $D9     
       CMP    #$30    
       BCC    LF137   
       CMP    #$D0    
       BCC    LF139   
LF137: EOR    #$E0    
LF139: SEC            
       SBC    #$30    
       STA    $83     
       LDA    SWCHB   
       AND    #$02    
       BEQ    LF14C   
       LDA    #$00    
       STA    $9A     
       JMP    LF170   
LF14C: STA    $96     
       LDA    $9A     
       BEQ    LF158   
       LDA    $84     
       AND    #$1F    
       BNE    LF170   
LF158: STA    $84     
       STA    $9B     
       STA    $CE     
       STA    $CF     
       LDA    $82     
       EOR    #$01    
       STA    $82     
       TAX            
       INX            
       STX    $D0     
       STX    $9A     
       STX    $9E     
       STX    $99     
LF170: LDA    $9E     
       BEQ    LF180   
       LDA    $84     
       AND    #$7F    
       BNE    LF180   
       LDA    $9B     
       EOR    $97     
       STA    $97     
LF180: LDY    #$02    
       LDX    #$02    
       LDA    $97     
       BEQ    LF18A   
       LDX    #$05    
LF18A: LDA    $CE,X   
       STA.wy $00D4,Y 
       DEX            
       DEY            
       BPL    LF18A   
       LDX    #$FD    
       TXS            
       LDX    #$02    
LF198: LDA    #$FF    
       PHA            
       LDA    $D4,X   
       AND    #$0F    
       TAY            
       LDA    LFF27,Y 
       PHA            
       LDA    #$FF    
       PHA            
       LDA    $D4,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF27,Y 
       PHA            
       DEX            
       BPL    LF198   
       LDX    #$05    
LF1B7: PLA            
       CMP    #$57    
       BNE    LF1C4   
       LDA    #$B5    
       PHA            
       PLA            
       PLA            
       DEX            
       BNE    LF1B7   
LF1C4: LDA    INTIM   
       BNE    LF1C4   
       STY    WSYNC   
       LDX    #$FF    
       TXS            
       INX            
       STX    VBLANK  
       LDA    #$06    
       JSR    LFB43   
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$07    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$01    
       LDY    $83     
       JSR    LFBA5   
       JSR    LFBBE   
       DEX            
       LDA    $83     
       ADC    #$48    
       CMP    #$9F    
       BCC    LF1F5   
       SBC    #$9F    
LF1F5: JSR    LFBA4   
       JSR    LFBBE   
       LDA    #$8C    
       EOR    $98     
       AND    $80     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$06    
LF207: STA    WSYNC   
       LDA    LFE28,Y 
       STA    GRP1    
       LDA    LFE2F,Y 
       STA    GRP0    
       DEY            
       BPL    LF207   
       LDY    #$9C    
       LDA    $AF     
       STA    $CC     
       LDA    $86     
       STA    HMP0    
       AND    #$0F    
       TAX            
       LDA    $8D     
       STA    WSYNC   
       STA    COLUP0  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$30    
       STA    NUSIZ0  
       NOP            
       NOP            
LF235: DEX            
       BPL    LF235   
       STA    RESP0   
       STA    WSYNC   
       LDA    $8E     
       STA    COLUP1  
       LDA    $87     
       STA    HMP1    
       AND    #$0F    
       TAX            
LF247: DEX            
       BPL    LF247   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B7     
       STA    REFP1   
       LDA    #$10    
       STA    NUSIZ1  
       LDA    $AE     
       STA    $CD     
       JMP    LF276   
LF25F: STA    WSYNC   
       STX    COLUBK  
       CPY    $CC     
       BCS    LF26F   
       LDA    ($BF),Y 
       STA    GRP1    
       BNE    LF26F   
       STA    $CC     
LF26F: CPY    $B6     
       PHP            
       CPY    $B5     
       PHP            
       DEY            
LF276: LDX    #$1E    
       TXS            
       LDA    LFF4F,Y 
       AND    $85     
       TAX            
       CPY    $CD     
       BCS    LF28B   
       LDA    ($BD),Y 
       STA    GRP0    
       BNE    LF28B   
       STA    $CD     
LF28B: CPY    #$7F    
       BNE    LF25F   
       STA    WSYNC   
       STX    COLUBK  
       CPY    $B6     
       PHP            
       CPY    $B5     
       PHP            
       LDX    #$1E    
       TXS            
       LDA    #$2E    
       EOR    $98     
       AND    $80     
       STA    COLUP1  
       LDA    #$15    
       STA    NUSIZ1  
       STA    REFP1   
       DEY            
       LDA    LFF4F,Y 
       AND    $85     
       STA    RESP1   
       TAX            
       STA    HMCLR   
       CPY    $CD     
       BCS    LF2BD   
       LDA    ($BD),Y 
       STA    GRP0    
LF2BD: STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       CPY    $B6     
       PHP            
       CPY    $B5     
       PHP            
       LDX    #$1E    
       TXS            
       LDA    LFF78,Y 
       STA    GRP1    
       LDA    LFF7E,Y 
       STA    HMP1    
       DEY            
       LDA    LFF4F,Y 
       EOR    $98     
       AND    $80     
       TAX            
       CPY    $CD     
       BCS    LF2EB   
       LDA    ($BD),Y 
       STA    GRP0    
       BNE    LF2EB   
       STA    $CD     
LF2EB: CPY    #$73    
       BNE    LF2BD   
       STA    WSYNC   
       STX    COLUBK  
       LDA    $88     
       STA    HMP1    
       STA    HMP1    
       AND    #$0F    
       TAX            
LF2FC: DEX            
       BPL    LF2FC   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       DEY            
       CPY    $CD     
       BCS    LF30E   
       LDA    ($BD),Y 
       STA    GRP0    
LF30E: CPY    $B6     
       PHP            
       CPY    $B5     
       PHP            
       LDX    #$1E    
       TXS            
       DEY            
       LDA    $B0     
       STA    $CC     
       LDA    $8F     
       STA    COLUP1  
       CPY    $CD     
       BCS    LF328   
       LDA    ($BD),Y 
       STA    GRP0    
LF328: STA    WSYNC   
       CPY    $CC     
       BCS    LF336   
       LDA    ($C5),Y 
       STA    GRP1    
       BNE    LF336   
       STA    $CC     
LF336: CPY    $B6     
       PHP            
       CPY    $B5     
       PHP            
       LDX    #$1E    
       TXS            
       NOP            
       NOP            
       NOP            
       NOP            
       DEY            
       CPY    #$66    
       BEQ    LF357   
       CPY    $CD     
       BCS    LF328   
       LDA    ($BD),Y 
       STA    GRP0    
       BNE    LF328   
       STA    $CD     
       JMP    LF328   
LF357: STA    WSYNC   
       LDA    #$0A    
       STA    TIM64T  
       LDA    #$10    
       STA    NUSIZ1  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       CPY    $CD     
       BCS    LF372   
       STA    $CD     
LF372: LDY    #$5C    
       LDA    #$14    
       EOR    $98     
       AND    $80     
       STA    $F0     
       LDX    #$00    
       CPY    $CD     
       BCS    LF389   
       LDA    ($BD),Y 
       TAX            
       BNE    LF389   
       STA    $CD     
LF389: DEY            
LF38A: LDA    INTIM   
       BNE    LF38A   
       LDA    #$A4    
       EOR    $98     
       AND    $80     
       STA    WSYNC   
       STA    COLUBK  
       STX    GRP0    
       LDA    #$00    
       JMP    LF3EA   
LF3A0: STA    WSYNC   
       JMP    LF3AB   
LF3A5: STA    $CC     
LF3A7: STA    WSYNC   
       STA    GRP1    
LF3AB: STX    GRP0    
       CPY    #$1C    
       BNE    LF3B5   
       LDA    $F0     
       STA    COLUBK  
LF3B5: CPY    $B6     
       PHP            
       CPY    $B5     
       PHP            
       LDX    #$1E    
       TXS            
       DEY            
       BEQ    LF434   
       CPY    $CD     
       BCC    LF3CE   
       NOP            
       NOP            
       NOP            
       NOP            
       LDX    #$00    
       JMP    LF3D5   
LF3CE: LDA    ($BD),Y 
       TAX            
       BNE    LF3D5   
       STA    $CD     
LF3D5: CPY    $CC     
       BCS    LF3A0   
       LDA    ($C6),Y 
       BNE    LF3A7   
       DEC    $CB     
       BMI    LF3A5   
       DEY            
       STA    ENAM0   
       STA    ENAM1   
       STA    GRP1    
       STX    GRP0    
LF3EA: CPY    $CD     
       BCC    LF3FA   
       STA    $F1     
       DEY            
       CPY    $CD     
       BCC    LF3FF   
       STA    $F2     
       JMP    LF403   
LF3FA: LDA    ($BD),Y 
       STA    $F1     
       DEY            
LF3FF: LDA    ($BD),Y 
       STA    $F2     
LF403: LDX    $CB     
       LDA    $B9,X   
       STA    REFP1   
       LDA    $90,X   
       STA    COLUP1  
       LDA    $B1,X   
       STA    $CC     
       LDA    $C1,X   
       STA    $C6     
       LDA    $89,X   
       STA    WSYNC   
       STA    HMP1    
       STA    HMP1    
       AND    #$0F    
       TAX            
       LDA    $F1     
       STA    GRP0    
LF424: DEX            
       BPL    LF424   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $F2     
       STX    GRP0    
       JMP    LF3B5   
LF434: LDA    $CA     
       CMP    #$06    
       BCS    LF444   
       LDA    #$0B    
       STA    $A1     
       LDA    $84     
       AND    #$08    
       BEQ    LF446   
LF444: LDA    #$0F    
LF446: EOR    $98     
       AND    $80     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    ENAM1   
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    REFP1   
       EOR    $98     
       AND    $80     
       STA    COLUBK  
       STA    HMCLR   
       LDA    #$F0    
       STA    HMP0    
       LDX    #$01    
       STX    CTRLPF  
       STA    RESP0   
       STA    RESP1   
       LDA    #$42    
       EOR    $98     
       AND    $80     
       STA    COLUPF  
       LDY    $97     
       LDX    $9C,Y   
       LDA    LFE1E,X 
       STA    $F5     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $CA     
       LDY    #$03    
LF489: TAX            
       SEC            
       SBC    #$08    
       BCC    LF499   
       LDX    #$FF    
       STX    $F0,Y   
       DEY            
       BPL    LF489   
       JMP    LF4A4   
LF499: LDA    LFE16,X 
       STA.wy $00F0,Y 
       LDX    #$00    
       DEY            
       BPL    LF499   
LF4A4: LDA    #$80    
       STA    HMP0    
       STA    HMP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDY    #$04    
       STY    $F4     
       STA    WSYNC   
LF4BA: LDA    #$F0    
       STA    PF2     
       LDY    $F4     
       NOP            
       LDX    $F1     
       LDA    LFF71,Y 
       STA    GRP0    
       LDA    LFF76,Y 
       STA    GRP1    
       LDA    $F3     
       STA    GRP0    
       LDY    $F0     
       LDA    $F2     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDA    $F5     
       STA    PF1     
       PLA            
       LDA    #$00    
       DEC    $F4     
       STA    PF1     
       NOP            
       BPL    LF4BA   
       STA    HMOVE   
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       LDA    #$28    
       EOR    $98     
       AND    $80     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$FD    
       TXS            
       CLC            
       LDX    #$05    
LF505: LDA    #$FD    
       PHA            
       TXA            
       LDY    $97     
       ADC.wy $0094,Y 
       TAY            
       LDA    LFE6C,Y 
       PHA            
       DEX            
       BPL    LF505   
       LDA    #$07    
       LDX    #$FF    
       TXS            
       JSR    LFB43   
       LDA    #$02    
       STA    VBLANK  
       LDA    #$20    
       STA    TIM64T  
       LDA    $9E     
       BEQ    LF52F   
       LDA    INPT4   
       BPL    LF535   
LF52F: LDA    SWCHB   
       LSR            
       BCS    LF53C   
LF535: LDY    $81     
       LDX    #$93    
       JMP    LF006   
LF53C: LDA    $DA     
       BNE    LF5AF   
       LDA    $DC     
       BNE    LF5AF   
       LDA    $DD     
       BNE    LF5A3   
       LDA    CXPPMM  
       AND    #$80    
       BEQ    LF5A3   
       LDA    $AE     
       CMP    #$11    
       BCS    LF569   
       LDX    $EC     
       LDY    #$01    
       LDA    LFE06,X 
       JSR    LFB74   
       LDA    #$36    
       STA    $A1     
       LDA    #$00    
       STA    $EC     
       JMP    LF5A3   
LF569: CMP    #$7F    
       LDX    #$00    
       BCS    LF595   
       CMP    #$74    
       BCS    LF5A3   
       CMP    #$66    
       BCC    LF59F   
       LDA    $EB     
       BEQ    LF5A3   
       CMP    #$01    
       BNE    LF593   
       LDA    $84     
       LSR            
       BCS    LF5A3   
       LDA    $CA     
       CMP    #$20    
       BCS    LF5A3   
       INC    $CA     
       LDA    #$36    
       STA    $A1     
       JMP    LF5A3   
LF593: LDX    #$01    
LF595: LDA    #$1F    
       STA    $DD     
       STX    $DE     
       LDA    #$00    
       STA    $EA,X   
LF59F: LDA    #$80    
       STA    $DC     
LF5A3: LDA    CXM1P   
       AND    #$80    
       BEQ    LF5AF   
       STA    $DC     
       LDA    #$F0    
       STA    $B6     
LF5AF: LDA    CXM0FB  
       AND    #$80    
       BNE    LF631   
       LDA    CXM0P   
       AND    #$80    
       BEQ    LF631   
       LDX    #$00    
       LDA    $B5     
       CMP    #$7F    
       BCS    LF634   
       CMP    #$6E    
       BCS    LF631   
       CMP    #$66    
       BCS    LF647   
       CMP    #$43    
       BCS    LF609   
       CMP    #$22    
       BCS    LF60D   
       CMP    #$0C    
       BCS    LF5DD   
       STX    $EC     
       LDA    #$02    
       BNE    LF627   
LF5DD: LDA    $ED     
       BEQ    LF631   
       CMP    #$03    
       BNE    LF5F8   
       LDY    #$02    
       LDA    #$01    
       JSR    LFB74   
       LDA    $A9     
       CMP    #$5E    
       BCS    LF62D   
       INC    $A9     
       INC    $A9     
       BNE    LF62D   
LF5F8: CMP    #$02    
       BNE    LF62D   
       STX    $ED     
       LDY    #$02    
       LDA    #$25    
       JSR    LFB74   
       LDA    #$03    
       BNE    LF627   
LF609: LDX    #$05    
       BNE    LF60F   
LF60D: LDX    #$04    
LF60F: LDA    $EA,X   
       AND    #$02    
       BEQ    LF62D   
       LDA    $EA,X   
       AND    #$01    
       TAY            
       LDA    LFE04,Y 
       LDY    #$01    
       JSR    LFB74   
       LDA    #$00    
       STA    $EA,X   
       TXA            
LF627: STA    $DE     
       LDA    #$1F    
       STA    $DD     
LF62D: LDX    #$00    
       STX    $B5     
LF631: JMP    LF65D   
LF634: LDA    $EA     
       BEQ    LF631   
       TAY            
       LDA    LFE0E,Y 
       LDY    #$01    
       JSR    LFB74   
       STX    $EA     
       TXA            
       JMP    LF627   
LF647: LDA    $EB     
       BEQ    LF631   
       CMP    #$01    
       BEQ    LF656   
       LDA    #$50    
       LDY    #$02    
       JSR    LFB74   
LF656: LDA    #$01    
       STX    $EB     
       JMP    LF627   
LF65D: LDX    $97     
       LDA    LFCC3,X 
       STA    $8D     
       LDA    $99     
       BNE    LF682   
       LDA    $84     
       ASL            
       BNE    LF682   
       LDA    $94,X   
       ASL            
       ASL            
       ASL            
       ADC    #$A0    
       ADC    $E1     
       STA    $E1     
       BCC    LF682   
       DEC    $CA     
       BNE    LF682   
       LDA    #$80    
       STA    $DC     
LF682: LDA    $E9     
       CLC            
       ADC    $D9     
       STA    $E9     
       BCC    LF6A6   
       INC    $E7,X   
       LDA    $E7,X   
       AND    #$07    
       BNE    LF6A3   
       LDA    $94,X   
       INC    $94,X   
       CMP    #$04    
       BNE    LF69D   
       INC    $9C,X   
LF69D: CMP    #$0B    
       BNE    LF6A3   
       STA    $94,X   
LF6A3: JSR    LFA7E   
LF6A6: LDX    $DC     
       BNE    LF6BA   
       LDX    $9E     
       LDY    $97     
       LDA    SWCHA   
       EOR    #$FF    
       AND    LFCC5,Y 
       BEQ    LF6BA   
       STX    $99     
LF6BA: LDY    #$FF    
       TYA            
       INY            
       EOR    SWCHA   
       BEQ    LF6C5   
       STY    $96     
LF6C5: LDX    $99     
       BEQ    LF6CA   
       TYA            
LF6CA: LDY    $97     
       BEQ    LF6D2   
       ASL            
       ASL            
       ASL            
       ASL            
LF6D2: STA    $F0     
       LDY    $D8     
       AND    #$C0    
       BEQ    LF6E6   
       ROL            
       BCS    LF6EB   
       CPY    #$02    
       BCC    LF6FF   
       DEY            
LF6E2: DEY            
       JMP    LF6FF   
LF6E6: TYA            
       BEQ    LF6FF   
       BPL    LF6E2   
LF6EB: LDA    #$00    
       LDX    $AE     
       CPX    #$5E    
       ROL            
       CPX    #$10    
       ROL            
       TAX            
       TYA            
       CMP    LFE12,X 
       BEQ    LF6FF   
       BCS    LF6E2   
       INY            
LF6FF: STY    $D8     
       TYA            
       CLC            
       ROR            
       STA    $F1     
       TYA            
       LDY    #$00    
       CLC            
       ADC    $D7     
       LDX    $99     
       BNE    LF722   
       LDX    $AE     
       CPX    #$10    
       BCC    LF722   
       LDX    $97     
       ADC    $94,X   
       ADC    #$08    
       JMP    LF722   
LF71F: INY            
       SBC    #$30    
LF722: CMP    #$30    
       BCS    LF71F   
       STA    $D7     
       STY    $D9     
       SEC            
       LDA    $A5     
       STA    $F2     
       TAY            
       SBC    $F1     
       CMP    #$3B    
       BEQ    LF747   
       BCC    LF745   
       CPY    #$3C    
       BEQ    LF747   
       BCC    LF745   
       DEC    $A5     
       INC    $D9     
       JMP    LF747   
LF745: INC    $A5     
LF747: LDA    $9E     
       BEQ    LF74E   
       JMP    LF7D1   
LF74E: LDA    $DB     
       BNE    LF773   
       LDA    $DA     
       BNE    LF786   
       LDA    $F0     
       ASL            
       ASL            
       LDY    $AE     
       ASL            
       BPL    LF762   
       INY            
       CPY    #$9E    
LF762: BCC    LF769   
       CPY    #$08    
       BCC    LF769   
       DEY            
LF769: STY    $AE     
       CPY    #$5F    
       BNE    LF77A   
       LDA    #$0E    
       STA    $DB     
LF773: DEC    $DB     
       INC    $AE     
       JMP    LF7B4   
LF77A: CPY    #$6B    
       BNE    LF7B4   
       LDA    #$18    
       STA    $DA     
       LDA    #$21    
       STA    $A1     
LF786: DEC    $DA     
       LDA    $DA     
       CMP    #$14    
       BMI    LF793   
       DEC    $AE     
       JMP    LF7B4   
LF793: LSR            
       LSR            
       BEQ    LF7AD   
       TAY            
       LDA    LFFA0,Y 
       STA    $AE     
       LDA    LFFA4,Y 
       SEC            
       SBC    LFFA0,Y 
       STA    $BD     
       LDA    $F2     
       STA    $A5     
       JMP    LF7BB   
LF7AD: LDA    $DA     
       CLC            
       ADC    #$5D    
       STA    $AE     
LF7B4: LDA    #$C2    
       SEC            
       SBC    $AE     
       STA    $BD     
LF7BB: LDA    $99     
       BNE    LF7CD   
       LDA    $F0     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF24,X 
       STA    $A3     
LF7CD: LDA    #$FF    
       STA    $BE     
LF7D1: LDA    $DC     
       BEQ    LF843   
       CMP    #$80    
       BNE    LF7DD   
       LDA    #$54    
       STA    $9F     
LF7DD: DEC    $DC     
       LDA    $DC     
       BEQ    LF843   
       STA    $99     
       LDX    #$00    
       STX    $A1     
       STX    $D8     
       SEC            
       SBC    #$60    
       BCS    LF7FA   
       LDA    $DC     
       CMP    #$20    
       BEQ    LF80D   
       BCS    LF7FE   
       BCC    LF843   
LF7FA: LSR            
       LSR            
       LSR            
       TAX            
LF7FE: LDA    LFE7D,X 
       SEC            
       SBC    $AE     
       STA    $BD     
       LDA    #$FD    
       STA    $BE     
       JMP    LF843   
LF80D: LDX    $97     
       DEC    $9C,X   
       TXA            
       EOR    #$01    
       TAY            
       LDA.wy $009C,Y 
       BNE    LF820   
       LDA    $9C,X   
       BEQ    LF83A   
       BNE    LF822   
LF820: STY    $97     
LF822: LDA    #$20    
       STA    $CA     
       LDA    #$64    
       STA    $A5     
       LDA    #$94    
       STA    $AE     
       LDA    #$FA    
       STA    $E9     
       JSR    LFA7E   
       LDX    #$00    
       JMP    LF7FE   
LF83A: INX            
       STX    $9E     
       STA    $DC     
       TAX            
       JMP    LF7FE   
LF843: LDA    #$03    
       STA    $CB     
       LDA    #$FD    
       STA    $C7     
       LDX    #$05    
LF84D: LDY    $97     
       LDA.wy $0094,Y 
       ASL            
       ASL            
       ASL            
       ADC    LFC91,X 
       ADC    $DF,X   
       STA    $DF,X   
       BCC    LF861   
       JSR    LFAF0   
LF861: CPX    #$03    
       BNE    LF867   
       LDX    #$01    
LF867: DEX            
       BPL    LF84D   
       LDA    $EA     
       TAX            
       ASL            
       ASL            
       STA    $F0     
       LDA    LFD00,X 
       STA    $8E     
       LDA    #$FE    
       STA    $C0     
       LDA    $84     
       CPX    #$01    
       BNE    LF884   
       LSR            
       LSR            
       LSR            
       LSR            
LF884: AND    #$03    
       CLC            
       ADC    $F0     
       TAX            
       LDA    LFE36,X 
       SEC            
       SBC    $AF     
       STA    $BF     
       LDA    #$05    
       STA    $B8     
       LDA    #$3C    
       STA    $A7     
       LDA    #$FE    
       STA    $C6     
       LDA    $EB     
       TAX            
       ASL            
       STA    $F0     
       LDA    LFD04,X 
       STA    $8F     
       LDA    LFD17,X 
       STA    $B0     
       LDA    $84     
       AND    #$01    
       CLC            
       ADC    $F0     
       TAX            
       LDA    LFE46,X 
       SEC            
       SBC    $B0     
       STA    $C5     
       LDA    $EF     
       TAX            
       ASL            
       STA    $F0     
       LDA    LFD07,X 
       STA    $93     
       LDA    $84     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$01    
       CLC            
       ADC    $F0     
       TAX            
       LDA    LFE4C,X 
       SEC            
       SBC    $B4     
       STA    $C4     
       LDA    $EE     
       TAX            
       ASL            
       STA    $F0     
       LDA    LFD0B,X 
       STA    $92     
       LDA    $84     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$01    
       CLC            
       ADC    $F0     
       TAX            
       LDA    LFE54,X 
       SEC            
       SBC    $B3     
       STA    $C3     
       LDA    $ED     
       TAX            
       ASL            
       STA    $F0     
       CPX    #$01    
       BEQ    LF90B   
       LDA    LFD13,X 
       STA    $B2     
LF90B: LDA    LFD0F,X 
       STA    $91     
       LDA    $84     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$01    
       EOR    $F0     
       TAX            
       LDA    LFE5C,X 
       SEC            
       SBC    $B2     
       STA    $C2     
       LDA    #$2D    
       STA    $A8     
       LDA    $84     
       LSR            
       LSR            
       AND    #$0F    
       EOR    #$20    
       ORA    #$08    
       STA    $90     
       LDA    #$0B    
       STA    $B1     
       LDA    $EC     
       TAX            
       LDA    LFE64,X 
       SEC            
       SBC    $B1     
       STA    $C1     
       LDA    $DD     
       BEQ    LF97A   
       CMP    #$1F    
       BNE    LF94F   
       LDX    #$54    
       STX    $A0     
LF94F: DEC    $DD     
       BNE    LF95A   
       LDA    #$FF    
       STA    $DE     
       JMP    LF97A   
LF95A: LDY    #$FD    
       LDX    $DE     
       BNE    LF962   
       STY    $C0     
LF962: CPX    #$01    
       BNE    LF968   
       STY    $C6     
LF968: LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFE7D,Y 
       SEC            
       SBC    $AF,X   
       CPX    #$01    
       BNE    LF978   
       LDX    #$06    
LF978: STA    $BF,X   
LF97A: LDA    $B5     
       BEQ    LF984   
       LDA    $AC     
       CMP    #$98    
       BCC    LF9A2   
LF984: LDA    $99     
       BNE    LF9BB   
       LDX    $97     
       LDA    INPT4,X 
       BMI    LF9BB   
       LDA    #$3D    
       STA    $9F     
       LDA    $A5     
       SBC    #$20    
       STA    $AC     
LF998: LDA    $AE     
       SEC            
       SBC    #$04    
       STA    $B5     
       JMP    LF9BB   
LF9A2: LDA    $AC     
       CLC            
       ADC    #$04    
       STA    $AC     
       LDA    SWCHB   
       BMI    LF998   
       LDA    $84     
       AND    #$01    
       BEQ    LF9B9   
       DEC    $B5     
       JMP    LF9BB   
LF9B9: INC    $B5     
LF9BB: LDA    $AD     
       CMP    #$9F    
       BCS    LF9E6   
       LDX    $97     
       LDA    $94,X   
       ASL            
       ASL            
       ASL            
       ADC    #$A0    
       ADC    $E0     
       STA    $E0     
       BCC    LF9EA   
       LDY    $C8     
       CLC            
       LDA    $AD     
       ADC    LFCA3,Y 
       STA    $AD     
       LDA    $B6     
       CMP    #$9F    
       BCS    LF9EA   
       ADC    LFCB3,Y 
       JMP    LF9E8   
LF9E6: LDA    #$FF    
LF9E8: STA    $B6     
LF9EA: LDA    $99     
       BNE    LFA36   
       LDA    $B6     
       CMP    #$9F    
       BCC    LFA36   
       INC    $C9     
       LDA    $C9     
       AND    #$01    
       TAX            
       LDA    $EA,X   
       AND    #$02    
       BEQ    LFA36   
       LDA    $87,X   
       AND    #$0F    
       CMP    #$0A    
       BEQ    LFA36   
       LDA    #$B1    
       STA    $A2     
       LDA    $81     
       AND    #$03    
       STA    $C8     
       LDA    $AF,X   
       SBC    #$05    
       STA    $B6     
       CMP    $AE     
       ROL    $C8     
       LDA    $E9     
       SEC            
       SBC    $A6,X   
       BCC    LFA2C   
       STA    $F0     
       LDA    #$A3    
       SBC    $F0     
       BCS    LFA2E   
LFA2C: LDA    #$98    
LFA2E: STA    $AD     
       ADC    #$20    
       CMP    $A5     
       ROL    $C8     
LFA36: LDX    #$02    
LFA38: LDA    $AA,X   
       CMP    #$98    
       BCC    LFA40   
       LDA    #$99    
LFA40: JSR    LFBA4   
       JSR    LFBBE   
       INX            
       CPX    #$04    
       BNE    LFA38   
       LDA    $99     
       BNE    LFA76   
       LDA    $84     
       AND    #$3F    
       BNE    LFA5F   
       LDA    $EB     
       CMP    #$01    
       BNE    LFA5F   
       LDA    #$A8    
       STA    $A2     
LFA5F: LDA    $AE     
       CMP    #$5F    
       BCC    LFA76   
       LDX    $EA     
       CPX    #$01    
       BNE    LFA71   
       LDA    $84     
       AND    #$1F    
       BNE    LFA76   
LFA71: LDA    LFF20,X 
       STA    $A4     
LFA76: LDA    INTIM   
       BNE    LFA76   
       JMP    LF049   
LFA7E: LDA    $81     
       AND    #$07    
       STA    $F1     
       LDA    #$02    
       STA    $EB     
       LDA    #$00    
       STA    $EC     
       LDY    $97     
       LDA.wy $00E7,Y 
       AND    #$07    
       TAX            
       BIT    SWCHB   
       BVS    LFA9B   
       STX    $F1     
LFA9B: CPX    #$06    
       BEQ    LFAD5   
       CPX    #$07    
       BEQ    LFAE7   
       LDA.wy $0094,Y 
       ASL            
       ADC    $F1     
       TAX            
       LDA    LFF00,X 
LFAAD: LDX    #$00    
       JMP    LFAB4   
LFAB2: LSR            
       LSR            
LFAB4: TAY            
       AND    #$03    
       STA    $ED,X   
       TYA            
       INX            
       CPX    #$04    
       BNE    LFAB2   
       STA    $EA     
       LDA    $ED     
       CMP    #$03    
       BNE    LFAD4   
       LDY    $97     
       LDA.wy $0094,Y 
       CMP    #$07    
       BCC    LFAD2   
       LDA    #$07    
LFAD2: STA    $EC     
LFAD4: RTS            

LFAD5: LDY    $97     
       LDX    $94,Y   
       INX            
       CPX    #$07    
       BCC    LFAE0   
       LDX    #$07    
LFAE0: STX    $EC     
       LDA    #$D5    
       JMP    LFAAD   
LFAE7: LDA    #$01    
       STA    $EB     
       LDA    #$FE    
       JMP    LFAAD   
LFAF0: TXA            
       BEQ    LFAFB   
       LDA    $EA,X   
       AND    #$03    
       CMP    #$01    
       BEQ    LFB21   
LFAFB: CPX    $DE     
       BEQ    LFB42   
       LDA    $99     
       BNE    LFB42   
       LDA    $B7,X   
       AND    #$08    
       BNE    LFB13   
       DEC    $A6,X   
       BPL    LFB21   
       LDA    $B7,X   
       ORA    #$08    
       STA    $B7,X   
LFB13: INC    $A6,X   
       LDA    $A6,X   
       CMP    #$60    
       BCC    LFB21   
       LDA    $B7,X   
       AND    #$F7    
       STA    $B7,X   
LFB21: LDA    $B7,X   
       BMI    LFB34   
       DEC    $AF,X   
       LDA    $AF,X   
       CMP    LFC97,X 
       BCS    LFB42   
       ASL    $B7,X   
       SEC            
       JMP    LFB40   
LFB34: INC    $AF,X   
       LDA    $AF,X   
       CMP    LFC9D,X 
       BCC    LFB42   
       ASL    $B7,X   
       CLC            
LFB40: ROR    $B7,X   
LFB42: RTS            

LFB43: STA    $F1     
LFB45: LDY    $F1     
       LDA    ($FC),Y 
       STA    $F0     
       STA    WSYNC   
       LDA    ($FA),Y 
       TAX            
       LDA    ($F2),Y 
       NOP            
       STA    GRP0    
       LDA    ($F4),Y 
       STA    GRP1    
       LDA    ($F6),Y 
       STA    GRP0    
       LDA    ($F8),Y 
       LDY    $F0     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $F1     
       BPL    LFB45   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFB74: SED            
       LSR    $97     
       BCC    LFB7C   
       INY            
       INY            
       INY            
LFB7C: ROL    $97     
LFB7E: ADC.wy $00CE,Y 
       STA.wy $00CE,Y 
       LDA    #$00    
       ROL            
       CPY    #$03    
       BEQ    LFB90   
       CLC            
       ROR            
       DEY            
       BPL    LFB7E   
LFB90: CLD            
       RTS            

LFB92: LDA    $81     
       ASL            
       EOR    $81     
       ASL            
       EOR    $81     
       ASL            
       ASL            
       EOR    $81     
       ASL            
       ROL    $81     
       LDA    $81     
       RTS            

LFBA4: TAY            
LFBA5: INY            
       TYA            
       AND    #$0F    
       STA    $F0     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $F0     
       CMP    #$0F    
       BCC    LFBBB   
       SBC    #$0F    
       INY            
LFBBB: EOR    #$07    
       RTS            

LFBBE: STA    WSYNC   
       STA    HMCLR   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LFBC8: DEY            
       BPL    LFBC8   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFBD2: .byte $10,$00,$08,$37,$00,$08,$39,$00,$08,$3B,$00,$0F,$62,$62,$62,$62
       .byte $62,$62,$62,$62,$62,$62,$64,$64,$64,$64,$64,$64,$64,$64,$64,$64
       .byte $00,$08,$21,$62,$A3,$E4,$E5,$E6,$C7,$C8,$A9,$AA,$8B,$8C,$6D,$6E
       .byte $4F,$30,$31,$12,$13,$00,$0C,$EB,$CB,$A9,$87,$65,$00,$0C,$8B,$8C
       .byte $8D,$8E,$8F,$70,$71,$72,$73,$74,$75,$76,$77,$78,$79,$7A,$5B,$5C
       .byte $3D,$3E,$1F,$00,$03,$E4,$E3,$E2,$E1,$08,$E7,$E8,$E9,$A9,$CA,$CB
       .byte $CC,$CD,$AE,$AF,$B0,$F2,$F3,$F4,$F5,$F6,$97,$B8,$D9,$BA,$D8,$DC
       .byte $FD,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$DF,$DF,$DF,$DF,$DF,$BF
       .byte $BF,$BF,$BF,$9F,$9F,$7F,$7D,$7C,$03,$7B,$9A,$79,$78,$57,$57,$35
       .byte $34,$14,$00,$02,$88,$43,$00,$08,$42,$10,$00,$04,$46,$44,$43,$44
       .byte $25,$25,$27,$26,$27,$28,$27,$00,$0C,$EF,$CF,$AF,$8F,$6F,$4F,$2F
       .byte $00,$08,$8F,$72,$55,$38,$1B,$00
LFC8A: .byte $94,$8C,$00,$00,$00,$40,$50
LFC91: .byte $A0,$00,$00,$40,$70,$80
LFC97: .byte $8D,$00,$00,$1C,$30,$4C
LFC9D: .byte $9D,$00,$00,$24,$41,$5A
LFCA3: .byte $03,$FD,$03,$FD,$02,$FE,$02,$FE,$02,$FE,$02,$FE,$01,$FF,$01,$FF
LFCB3: .byte $00,$00,$00,$00,$01,$01,$FF,$FF,$02,$02,$FE,$FE,$02,$02,$FE,$FE
LFCC3: .byte $0F,$2F
LFCC5: .byte $F0,$0F,$50,$00,$04,$80,$D6,$79,$E7,$05,$0E,$18,$64,$93,$41,$14
       .byte $47,$1A,$E2,$CA,$E3,$7F,$44,$E1,$C8,$1B,$67,$90,$45,$0C,$4A,$08
       .byte $C8,$14,$00,$91,$0A,$1B,$AE,$50,$62,$9C,$0D,$50,$21,$50,$42,$6A
       .byte $CC,$68,$2E,$99,$F0,$90,$4E,$80,$00,$CA,$C2
LFD00: .byte $0F,$0C,$CC,$EC
LFD04: .byte $0A,$2A,$48
LFD07: .byte $0D,$0A,$0A,$BC
LFD0B: .byte $0D,$0A,$2A,$1A
LFD0F: .byte $0F,$0A,$1F,$CA
LFD13: .byte $1B,$00,$1D,$21
LFD17: .byte $70,$70,$72,$72,$00,$00,$18,$3C,$7E,$81,$24,$42,$81,$00,$7F,$2A
       .byte $7F,$5D,$08,$08,$1C,$08,$00,$7C,$AE,$FB,$10,$10,$70,$1C,$10,$00
       .byte $C8,$F8,$70,$78,$DC,$0E,$07,$03,$00,$00,$25,$52,$2F,$50,$20,$00
       .byte $3E,$1C,$08,$1C,$08,$1C,$3E,$3E,$00,$20,$70,$F8,$7C,$3C,$1C,$02
       .byte $01,$00,$80,$C0,$20,$10,$34,$FF,$B3,$60,$10,$50,$20,$40,$00,$40
       .byte $20,$50,$10,$52,$FF,$B3,$60,$10,$20,$C0,$80,$00,$66,$33,$36,$36
       .byte $1C,$1E,$8E,$CE,$6E,$3C,$1C,$1C,$4C,$38,$D8,$70,$00,$1E,$0E,$0E
       .byte $0E,$0E,$0E,$4E,$6E,$3E,$1C,$1C,$1C,$0C,$78,$D8,$70,$00,$48,$24
       .byte $15,$25,$16,$59,$3A,$EC,$F0,$E0,$00,$90,$4A,$25,$1A,$29,$15,$7A
       .byte $EC,$F0,$E0,$00,$09,$7E,$FC,$7E,$19,$08,$00,$49,$3E,$FC,$7E,$19
       .byte $08,$00,$10,$38,$7C,$FF,$7C,$00,$7C,$FF,$7C,$38,$10,$00,$42,$24
       .byte $18,$3C,$FF,$3C,$18,$24,$42,$00,$E0,$30,$F8,$BC,$7F,$3F,$0B,$00
       .byte $E0,$F0,$F8,$BC,$7F,$3F,$0B,$00,$00,$00,$00,$00,$00,$00,$00,$92
       .byte $25,$9A,$54,$52,$24,$00,$00,$00,$41,$0A,$20,$8A,$20,$8A,$00,$00
       .byte $00,$22,$80,$04,$80,$21,$04,$40,$E2,$0F,$0F,$00,$86
LFE04: .byte $01,$02
LFE06: .byte $00,$02,$04,$05,$10,$20,$30,$50
LFE0E: .byte $00,$00,$01,$03
LFE12: .byte $00,$28,$00,$58
LFE16: .byte $00,$80,$C0,$E0,$F0,$F8,$FC,$FE
LFE1E: .byte $00,$00,$01,$05,$15,$55,$55,$55,$55,$55
LFE28: .byte $38,$7C,$FE,$FF,$7F,$3E,$1C
LFE2F: .byte $28,$7C,$FE,$FF,$7F,$3E,$1C
LFE36: .byte $E6,$E6,$E6,$E6,$E0,$E5,$EC,$E5,$CB,$BF,$B3,$A7,$D2,$D2,$D9,$D9
LFE46: .byte $E6,$E6,$87,$87,$91,$9B
LFE4C: .byte $C5,$C5,$CE,$CE,$B1,$B8,$BE,$C4
LFE54: .byte $C5,$C5,$CE,$CE,$9F,$AA,$D6,$DE
LFE5C: .byte $C5,$C5,$CE,$CE,$65,$72,$83,$94
LFE64: .byte $C5,$3F,$58,$36,$2D,$4F,$24,$46
LFE6C: .byte $DE,$DE,$DE,$DE,$DE,$37,$50,$2E,$25,$47,$1D,$3F,$3F,$3F,$3F,$3F
       .byte $3F
LFE7D: .byte $E6,$FF,$F5,$EC,$00,$FF,$7C,$30,$30,$20,$00,$7F,$FF,$3C,$18,$10
       .byte $10,$08,$04,$02,$00,$7F,$FF,$3C,$18,$10,$08,$04,$02,$01,$00,$70
       .byte $20,$70,$F8,$BE,$73,$80,$C0,$DC,$0C,$04,$00,$70,$20,$70,$F8,$BE
       .byte $73,$10,$10,$20,$20,$20,$00,$70,$20,$70,$F8,$BE,$73,$20,$20,$10
       .byte $10,$10,$00,$70,$20,$70,$F8,$BE,$73,$04,$0C,$EC,$C0,$80,$00,$7E
       .byte $C7,$7E,$66,$03,$01,$00,$FE,$C7,$FE,$66,$03,$01,$00,$30,$7F,$FE
       .byte $58,$0F,$06,$00,$30,$7F,$FE,$40,$00,$0E,$1C,$38,$7F,$FE,$40,$EF
       .byte $FC,$ED,$FF,$6B,$E6,$E6,$F5,$6C,$7F,$FD,$F1,$AF,$F7,$FF,$FE,$FC
       .byte $77,$FB,$F0
LFF00: .byte $6A,$BE,$EE,$6B,$7A,$AE,$6E,$BA,$EE,$BB,$FE,$6E,$BA,$6A,$FE,$EB
       .byte $AE,$FE,$BA,$AA,$FA,$BF,$FE,$AA,$FE,$EE,$BA,$FF,$FE,$AA,$FE,$FA
LFF20: .byte $00,$9B,$97,$93
LFF24: .byte $05,$08,$02
LFF27: .byte $57,$37,$44,$4B,$6A,$3E,$63,$31,$5D,$51,$30,$30,$30,$18,$0C,$46
       .byte $7E,$18,$18,$18,$18,$78,$38,$7C,$46,$06,$7C,$60,$60,$7E,$60,$60
       .byte $3C,$06,$46,$7C,$3C,$46,$06,$0C
LFF4F: .byte $06,$46,$3C,$46,$06,$3E,$66,$66,$3C,$66,$66,$66,$66,$66,$3C,$66
       .byte $66,$3C,$66,$66,$3C,$66,$66,$7C,$60,$62,$3C,$0C,$0C,$7E,$4C,$2C
       .byte $1C,$0C
LFF71: .byte $8E,$8A,$CA,$8A,$EA
LFF76: .byte $EE,$88
LFF78: .byte $C8,$88,$E8,$18,$34,$2C
LFF7E: .byte $76,$4C,$4A,$84,$C9,$01,$10,$04,$20,$18,$24,$18,$40,$10,$04,$4A
       .byte $01,$20,$14,$42,$28,$80,$02,$10,$40,$02,$20,$04,$24,$09,$40,$02
       .byte $10,$01
LFFA0: .byte $80,$6E,$71,$70
LFFA4: .byte $73,$A1,$9A,$90,$87,$C7,$FF,$B0,$93,$DB,$F5,$F5,$F3,$F2,$EF,$F4
       .byte $DF,$00,$00,$00,$00,$00,$00,$00,$7E,$FF,$F9,$7E,$60,$40,$A2,$A4
       .byte $A4,$A6,$A8,$AA,$3A,$38,$46,$46,$56,$46,$46,$56,$46,$56,$56,$56
       .byte $66,$56,$66,$66,$66,$66,$66,$76,$66,$76,$76,$76,$76,$76,$76,$86
       .byte $76,$86,$86,$86,$86,$86,$86,$86,$00,$00,$00,$00,$00,$FF,$FF,$7F
       .byte $3F,$3E,$1C,$00,$00,$F0,$F0,$10,$00,$F0,$00,$F0
