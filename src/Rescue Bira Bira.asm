; Disassembly of roms/Rescue Bira Bira.bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Rescue Bira Bira.bin
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXP0FB  =  $32
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

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
       STA    SWACNT  
       STA    SWBCNT  
       LDA    #$30    
       STA    $D7     
LF015: LDY    #$00    
       LDA    ($D6),Y 
       CLC            
       ADC    $93     
       STA    $93     
       INC    $D6     
       BEQ    LF015   
       INC    $D7     
       LDA    $D7     
       CMP    #$40    
       BEQ    LF015   
       LDA    #$00    
       CMP    $93     
       BEQ    LF033   
       JMP    LF033   
LF033: JSR    LFAEE   
LF036: LDA    #$20    
       STA    TIM64T  
       INC    $80     
       LDA    SWCHA   
       STA    $8B     
       JSR    LF541   
       JSR    LF430   
       JSR    LF4E3   
       JSR    LF4FF   
       JSR    LF4B3   
       JSR    LF4CB   
       JSR    LF499   
       JSR    LF46D   
       JSR    LFB8C   
       JSR    LF8C3   
       JSR    LF591   
LF063: LDA    INTIM   
       BNE    LF063   
       LDA    #$02    
       STA    VBLANK  
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$17    
       STA    TIM64T  
       JSR    LFAD3   
       JSR    LF6FC   
       JSR    LF6EA   
       JSR    LFA20   
       JSR    LF78F   
       JSR    LF930   
       BIT    $D0     
       BMI    LF09F   
       BVC    LF09F   
       JSR    LF7D3   
       JSR    LF0C3   
LF09F: JSR    LF761   
       JSR    LF723   
       JSR    LF713   
       JSR    LF87F   
       JSR    LFAA7   
       LDA    $B5     
       STA    COLUBK  
       JSR    LF0E9   
       JMP    LF036   
LF0B8: .byte $A9,$09,$85,$15,$85,$17,$85,$19,$4C,$00,$F0
LF0C3: LDA    $CD     
       BEQ    LF0D6   
       LDA    $80     
       AND    #$08    
       BNE    LF0D1   
       LDA    #$00    
       BEQ    LF0D3   
LF0D1: LDA    #$30    
LF0D3: STA    $B5     
       RTS            

LF0D6: LDA    $8C     
       BEQ    LF0E0   
       LDX    #$00    
       LDY    #$78    
       BNE    LF0E4   
LF0E0: LDX    #$96    
       LDY    #$64    
LF0E4: STX    $B5     
       STY    $CA     
       RTS            

LF0E9: LDA    INTIM   
       BNE    LF0E9   
       STA    HMCLR   
       STA    CXCLR   
       LDA    #$11    
       STA    CTRLPF  
       JSR    LF3DA   
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$00    
       LDA    #$00    
       TAX            
       STA    $C3     
LF106: STX    $C4     
       LDA.wy $00EC,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       BEQ    LF114   
       INC    $C3     
LF114: LDA    $C3     
       BNE    LF11A   
       LDX    #$0A    
LF11A: LDA    LFF7F,X 
       LDX    $C4     
       STA    $E0,X   
       INX            
       INX            
       STX    $C4     
       LDA.wy $00EC,Y 
       AND    #$0F    
       TAX            
       BEQ    LF12F   
       INC    $C3     
LF12F: LDA    $C3     
       BNE    LF135   
       LDX    #$0A    
LF135: LDA    LFF7F,X 
       LDX    $C4     
       STA    $E0,X   
       INX            
       INX            
       INY            
       CPY    #$03    
       BCC    LF106   
       LDA    $C3     
       BNE    LF14B   
       LDA    #$40    
       STA    $EA     
LF14B: LDX    $83     
       LDA    LFF7F,X 
       STA    $E0     
       LDA    #$FF    
       LDX    #$0A    
LF156: STA    $E1,X   
       DEX            
       DEX            
       BPL    LF156   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    WSYNC   
       JSR    LF3F9   
       STA    WSYNC   
       LDA    $81     
       STA    $C0     
       LDX    #$00    
       LDA    #$32    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $D3     
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$FE    
       STA    PF2     
LF17F: LDA    $C0     
       CMP    #$08    
       LDY    #$00    
       STY    $C0     
       BCC    LF18F   
       SBC    #$08    
       STA    $C0     
       LDA    #$08    
LF18F: STA    $E0,X   
       INX            
       INX            
       CPX    #$0C    
       BNE    LF17F   
       LDA    #$00    
       JSR    LF3FB   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       LDA    #$07    
       STA    NUSIZ1  
       LDA    #$28    
       STA    TIM8T   
       LDA    $A4     
       LDX    #$01    
       JSR    LFABC   
       DEX            
       LDA    $A4     
       CLC            
       ADC    #$08    
       JSR    LFABC   
LF1BD: LDA    INTIM   
       BNE    LF1BD   
       STA    WSYNC   
       STA    HMOVE   
       STA    PF2     
       LDA    #$6C    
       STA    COLUPF  
       LDX    #$07    
       LDA    $8C     
       BNE    LF1D5   
       JMP    LF38D   
LF1D5: LDA    $BC     
       STA    COLUP1  
LF1D9: STA    WSYNC   
       TXA            
       SEC            
       SBC    $B2     
       TAY            
       AND    #$F0    
       BEQ    LF1E8   
       LDA    #$00    
       BEQ    LF1EA   
LF1E8: LDA    ($9A),Y 
LF1EA: STA    GRP1    
       TXA            
       SBC    $B7     
       AND    #$FC    
       BEQ    LF1F7   
       LDA    #$00    
       BEQ    LF1F9   
LF1F7: LDA    #$02    
LF1F9: STA    ENABL   
       INX            
       CPX    $B4     
       BCC    LF1D9   
LF200: TXA            
       SEC            
       SBC    $B4     
       TAY            
       AND    #$E0    
       STA    WSYNC   
       BEQ    LF211   
       LDA    #$00    
       STA    GRP1    
       BEQ    LF219   
LF211: LDA    LFDC0,Y 
       STA    GRP1    
       LDA    LFDE0,Y 
LF219: STA    GRP0    
       LDA    #$00    
       STA    NUSIZ1  
       LDA    #$16    
       STA    COLUP1  
       STA    COLUP0  
       TXA            
       SEC            
       SBC    $B7     
       AND    #$FC    
       BEQ    LF231   
       LDA    #$00    
       BEQ    LF234   
LF231: LDA    #$02    
       NOP            
LF234: STA    ENABL   
       INX            
       CPX    $B1     
       BCC    LF200   
       NOP            
       LDA    #$02    
       STA    ENAM0   
       LDA    #$0F    
       STA    COLUP0  
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       LDA    $F4     
       STA    HMP1    
       TXA            
       SEC            
       SBC    $B7     
       AND    #$FC    
       BEQ    LF25C   
       LDA    #$00    
       BEQ    LF25F   
LF25C: LDA    #$02    
       NOP            
LF25F: STA    ENABL   
       INX            
       LDA    $82     
       BEQ    LF269   
       NOP            
       NOP            
       NOP            
LF269: NOP            
       STA    RESP1   
       STA    WSYNC   
       LDA    $F5     
       STA    HMP0    
       TXA            
       SEC            
       SBC    $B7     
       AND    #$FC    
       BEQ    LF27E   
       LDA    #$00    
       BEQ    LF281   
LF27E: LDA    #$02    
       NOP            
LF281: STA    ENABL   
       INX            
       JSR    LFAA6   
       NOP            
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    ENAM0   
       LDA    $82     
       BEQ    LF29E   
       TXA            
       SEC            
       SBC    $B7     
       AND    #$FC    
       BEQ    LF2A2   
LF29E: LDA    #$00    
       BEQ    LF2A4   
LF2A2: LDA    #$02    
LF2A4: STA    ENABL   
       INX            
       LDA    #$22    
       STA    COLUP0  
       LDA    #$DE    
       STA    COLUP1  
       LDA    $87     
       STA    REFP1   
LF2B3: TXA            
       SEC            
       SBC    $B3     
       TAY            
       AND    #$E0    
       STA    WSYNC   
       BEQ    LF2C2   
       LDA    #$00    
       BEQ    LF2C4   
LF2C2: LDA    ($94),Y 
LF2C4: STA    GRP0    
       TXA            
       SBC    $B8     
       TAY            
       AND    #$E0    
       BEQ    LF2D2   
       LDA    #$00    
       BEQ    LF2D5   
LF2D2: LDA    LFEE0,Y 
LF2D5: STA    GRP1    
       LDY    $82     
       SEC            
       TXA            
       SBC.wy $00B6,Y 
       AND    #$FC    
       BEQ    LF2E6   
       LDA    #$00    
       BEQ    LF2E8   
LF2E6: LDA    #$02    
LF2E8: STA.wy $001E,Y 
       INX            
       CPX    #$90    
       BNE    LF2B3   
       LDA    #$0A    
       STA    COLUPF  
       LDA    #$F0    
       STA    PF2     
       STA    WSYNC   
       LDX    #$00    
       STX    GRP1    
       NOP            
       LDA    $F2     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF306: DEY            
       BPL    LF306   
       STA    RESP0   
       STX    GRP0    
       STX    ENAM1   
       STX    ENABL   
       LDA    #$44    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDX    #$01    
       NOP            
       LDA    $F2,X   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
LF323: DEY            
       BPL    LF323   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       LDA    $9D     
       STA    REFP1   
       LDA    $9C     
       STA    REFP0   
       LDX    #$00    
LF336: TXA            
       TAY            
       LDA    ($96),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($98),Y 
       STA    GRP1    
       LDA    LFCC0,Y 
       STA    PF2     
       INX            
       CPX    #$20    
       BCC    LF336   
LF34C: STA    WSYNC   
       LDA    #$C6    
       STA    COLUBK  
       STA    HMCLR   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    REFP0   
       STA    REFP1   
       STA    PF2     
       JSR    LF3DA   
       LDX    #$0A    
       LDY    #$05    
LF369: LDA    #$FF    
       STA    $E1,X   
       LDA    LFF2C,Y 
       STA    $E0,X   
       DEX            
       DEX            
       DEY            
       BPL    LF369   
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       STA    GRP0    
       STA    GRP1    
       JSR    LF3F9   
       STA    WSYNC   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       RTS            

LF38D: LDX    #$37    
       LDA    $B5     
       STA    COLUBK  
LF393: STA    WSYNC   
       DEX            
       BPL    LF393   
       LDX    #$2D    
       LDA    #$22    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$C4    
       STA    COLUBK  
LF3A4: STA    WSYNC   
       DEX            
       BPL    LF3A4   
       LDA    #$00    
       STA    WSYNC   
       STA    HMCLR   
       STA    REFP1   
       LDA    $8F     
       LDX    #$0A    
LF3B5: STA    $E1,X   
       DEX            
       DEX            
       BPL    LF3B5   
       LDA    #$A0    
       LDX    #$0A    
LF3BF: STA    $E0,X   
       SEC            
       SBC    #$20    
       DEX            
       DEX            
       BPL    LF3BF   
       JSR    LF3DA   
       LDA    #$1F    
       JSR    LF3FB   
       LDX    #$1F    
LF3D2: STA    WSYNC   
       DEX            
       BPL    LF3D2   
       JMP    LF34C   
LF3DA: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$F0    
       STA    HMP0    
       LDY    #$07    
       STA    WSYNC   
LF3EC: DEY            
       BNE    LF3EC   
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF3F9: LDA    #$06    
LF3FB: STA    $C2     
LF3FD: LDY    $C2     
       LDA    ($E0),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($E2),Y 
       STA    GRP1    
       LDA    ($E4),Y 
       STA    GRP0    
       LDA    ($E6),Y 
       STA    $C1     
       LDA    ($E8),Y 
       TAX            
       LDA    ($EA),Y 
       TAY            
       LDA    $C1     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $C2     
       BPL    LF3FD   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       RTS            

LF430: LDA    $CC     
       BEQ    LF45A   
       DEC    $DD     
       BNE    LF45A   
       LDA    $DC     
       BEQ    LF45B   
       LDA    #$00    
       STA    $DC     
       LDY    $DB     
       CPY    #$0B    
       BEQ    LF467   
       LDA    LFFE2,Y 
       STA    $DD     
       LDA    LFFD7,Y 
       INC    $DB     
       LDY    #$0A    
       LDX    #$05    
LF454: STX    AUDC0   
       STA    AUDF0   
LF458: STY    AUDV0   
LF45A: RTS            

LF45B: LDA    #$01    
       STA    $DC     
       LDA    #$04    
       STA    $DD     
       LDY    #$00    
       BEQ    LF458   
LF467: LDY    #$00    
       STY    $CC     
       BEQ    LF458   
LF46D: LDA    $CD     
       BEQ    LF45A   
       INC    $DE     
       LDA    $DE     
       CMP    #$7F    
       BCS    LF481   
       LDX    #$08    
       LDA    $DE     
       LDY    #$0A    
       BNE    LF454   
LF481: DEC    $83     
       LDA    $83     
       BNE    LF48B   
       LDA    #$80    
       ORA    $D0     
LF48B: LDA    #$80    
       STA    $C8     
       LDY    #$00    
       STY    $CD     
       STY    $DE     
       STY    $D8     
       BEQ    LF458   
LF499: LDA    $CE     
       BEQ    LF45A   
       LDY    #$08    
       INC    $DF     
       LDA    $DF     
       CMP    #$04    
       BCC    LF4AD   
       LDY    #$00    
       STY    $DF     
       STY    $CE     
LF4AD: LDA    $DF     
       LDX    #$0C    
       BNE    LF454   
LF4B3: LDA    $F7     
       BEQ    LF532   
       DEC    $F8     
       LDY    $F8     
       BNE    LF4C5   
       LDY    #$10    
       STY    $F8     
       LDA    #$00    
       STA    $F7     
LF4C5: LDA    #$05    
       LDX    #$09    
       BNE    LF515   
LF4CB: LDA    $CF     
       BEQ    LF532   
       INC    $EF     
       LDY    $EF     
       CPY    #$10    
       BNE    LF4DD   
       LDY    #$00    
       STY    $EF     
       STY    $CF     
LF4DD: LDA    #$08    
       LDX    #$08    
       BNE    LF515   
LF4E3: LDA    $80     
       AND    #$07    
       TAX            
       LDA    $8B     
       EOR    #$FF    
       AND    #$F0    
       BEQ    LF4F6   
       TXA            
       ORA    #$04    
       JMP    LF4F7   
LF4F6: TXA            
LF4F7: ADC    #$1A    
       LDY    #$08    
       LDX    #$08    
       BNE    LF515   
LF4FF: LDA    $AE     
       BEQ    LF532   
       DEC    $B0     
       LDA    $B0     
       TAY            
       CPY    #$07    
       BCC    LF537   
       AND    #$01    
       BEQ    LF533   
       LDX    #$06    
LF512: TYA            
       LDY    #$0F    
LF515: STX    AUDC1   
       STA    AUDF1   
       BIT    $D0     
       BMI    LF53B   
       BVC    LF53B   
       LDA    $8C     
       BEQ    LF53B   
       LDA    $CC     
       ORA    $CD     
       BNE    LF53B   
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF53B   
LF530: STY    AUDV1   
LF532: RTS            

LF533: LDX    #$00    
       BEQ    LF512   
LF537: LDA    #$1F    
       STA    $B0     
LF53B: LDY    #$00    
       STY    $AE     
       BEQ    LF530   
LF541: LDA    SWCHB   
       LSR            
       BCC    LF559   
       LSR            
       BCC    LF55C   
       BIT    $D0     
       BMI    LF550   
       BVS    LF554   
LF550: BIT    INPT4   
       BPL    LF559   
LF554: LDA    #$00    
       STA    $91     
       RTS            

LF559: JMP    LFB45   
LF55C: INC    $90     
       LDA    $90     
       AND    #$3F    
       BEQ    LF568   
       LDA    $91     
       BNE    LF570   
LF568: INC    $92     
       LDA    #$01    
       STA    $91     
       STA    $90     
LF570: LDA    $92     
       AND    #$07    
       TAX            
       INX            
       STX    $EE     
       LDA    #$00    
       STA    $ED     
       STA    AUDV0   
       LDA    #$0A    
       STA    $83     
       LDA    #$78    
       STA    $CA     
       LDA    #$00    
       STA    $B5     
       STA    $D0     
       STA    $CD     
       STA    $CC     
       RTS            

LF591: LDA    #$01    
       EOR    $82     
       STA    $82     
       TAX            
       LDA    $A8,X   
       STA    $A2     
       LDA    $B9,X   
       STA    $B8     
       LDX    #$03    
LF5A2: LDA    $A0,X   
       JSR    LFA8D   
       DEX            
       BPL    LF5A2   
       LDA    #$2A    
       STA    $D3     
       LDA    $8C     
       BNE    LF5CC   
       LDA    $80     
       AND    #$10    
       BEQ    LF5BC   
       LDA    #$FC    
       BNE    LF5BE   
LF5BC: LDA    #$FD    
LF5BE: STA    $8F     
       LDA    $CC     
       BNE    LF5CC   
       LDA    #$01    
       STA    $8C     
       LDA    #$C0    
       STA    $C8     
LF5CC: LDA    #$49    
       STA    $A3     
       BIT    $D0     
       BMI    LF5E0   
       BVC    LF5E0   
       LDA    SWCHB   
       AND    #$08    
       BNE    LF5E0   
       JMP    LF696   
LF5E0: INC    $8A     
       LDA    $80     
       AND    #$02    
       BNE    LF5EC   
       LDY    #$C0    
       BNE    LF5EE   
LF5EC: LDY    #$D0    
LF5EE: STY    $9A     
       LDA    $CD     
       ORA    $CC     
       BNE    LF622   
       BIT    $D0     
       BMI    LF5FC   
       BVS    LF602   
LF5FC: JSR    LF80D   
       JMP    LF615   
LF602: JSR    LF82C   
       LDA    $81     
       CMP    #$10    
       BCS    LF615   
       LDA    $80     
       AND    #$08    
       BNE    LF615   
       LDY    $B5     
       STY    $D3     
LF615: JSR    LF893   
       JSR    LF9F7   
       LDA    $DA     
       BEQ    LF622   
       JSR    LF9E4   
LF622: JSR    LF7A6   
       LDA    $CC     
       BNE    LF667   
       JSR    LF94D   
       JSR    LF967   
       LDA    #$FF    
       STA    $E2     
       LDA    #$C7    
       STA    $E1     
       LDX    $AF     
       BNE    LF63F   
       LDA    $CF     
       BNE    LF644   
LF63F: LDX    #$00    
       JSR    LF99B   
LF644: LDA    $AF     
       BEQ    LF64C   
       LDA    $CF     
       BNE    LF655   
LF64C: LDX    #$01    
       LDA    #$CF    
       STA    $E1     
       JSR    LF99B   
LF655: LDA    $80     
       AND    #$10    
       BEQ    LF65D   
       LDA    #$08    
LF65D: STA    $87     
       JSR    LF9D7   
       JSR    LF987   
       LDA    $CD     
LF667: BNE    LF68D   
       LDA    #$3F    
       AND    $8D     
       BNE    LF687   
       LDA    $CC     
       BNE    LF687   
       DEC    $81     
       BNE    LF687   
       BIT    $D0     
       BMI    LF683   
       BVC    LF683   
       LDA    #$01    
       STA    $CD     
       BNE    LF687   
LF683: LDA    #$30    
       STA    $81     
LF687: JSR    LFA3D   
       JSR    LFA5D   
LF68D: JSR    LFA7F   
       JSR    LF90F   
       JSR    LF697   
LF696: RTS            

LF697: LDA    $C5     
       BEQ    LF6E9   
       CMP    #$01    
       BNE    LF6B9   
       DEC    $C7     
       BEQ    LF6B3   
       LDA    #$45    
       STA    $A8     
       LDA    #$4D    
       STA    $A9     
       LDA    #$70    
       STA    $B9     
       STA    $BA     
       BNE    LF6E9   
LF6B3: INC    $C5     
       LDA    #$10    
       STA    $C7     
LF6B9: LDA    $C5     
       CMP    #$02    
       BNE    LF6D3   
       DEC    $C7     
       BNE    LF6E9   
       DEC    $A8     
       INC    $A9     
       LDA    #$10    
       STA    $C7     
       LDA    $A8     
       CMP    #$3D    
       BNE    LF6E9   
       INC    $C5     
LF6D3: LDA    $C5     
       CMP    #$03    
       BNE    LF6E9   
       LDA    $82     
       BNE    LF6E9   
       DEC    $B3     
       LDA    $B3     
       CMP    #$75    
       BCS    LF6E9   
       LDA    #$00    
       STA    $C5     
LF6E9: RTS            

LF6EA: BIT    CXM1P   
       BPL    LF6FB   
       LDA    #$71    
       STA    $B9     
       STA    $BA     
       LDX    #$00    
       STX    $DA     
       INX            
       STX    $AE     
LF6FB: RTS            

LF6FC: BIT    CXPPMM  
       BPL    LF712   
       LDA    #$01    
       STA    $C5     
       LDA    #$10    
       STA    $C7     
       LDA    #$90    
       STA    $B3     
       LDA    #$70    
       STA    $B9     
       STA    $BA     
LF712: RTS            

LF713: LDA    $D8     
       BEQ    LF722   
       LDA    $B1     
       CLC            
       ADC    #$03    
       STA    $B3     
       LDA    #$40    
       STA    $94     
LF722: RTS            

LF723: LDA    $D8     
       BEQ    LF760   
       LDA    $B3     
       CMP    #$50    
       BCS    LF760   
       LDA    $CD     
       BNE    LF760   
       LDA    #$00    
       STA    $8C     
       STA    $D8     
       STA    $DB     
       SED            
       CLC            
       LDA    $EE     
       ADC    #$01    
       STA    $EE     
       LDA    $ED     
       ADC    #$00    
       STA    $ED     
       CLD            
       LDA    #$01    
       STA    $CC     
       STA    $DD     
       LDA    $83     
       CMP    #$09    
       BCS    LF756   
       INC    $83     
LF756: INC    $88     
       LDA    #$07    
       CMP    $88     
       BCS    LF760   
       STA    $88     
LF760: RTS            

LF761: LDA    $C6     
       BEQ    LF78B   
       LDA    $A4     
       CLC            
       ADC    #$06    
       CMP    $A3     
       BCC    LF78B   
       SBC    $A3     
       CMP    #$03    
       BCS    LF78B   
       BIT    SWCHB   
       BVS    LF77D   
       CMP    #$01    
       BNE    LF78B   
LF77D: LDA    $B3     
       SEC            
       SBC    $B1     
       AND    #$F8    
       BNE    LF78B   
       LDA    #$01    
LF788: STA    $D8     
       RTS            

LF78B: LDA    #$00    
       BEQ    LF788   
LF78F: LDA    $D8     
       BNE    LF7A5   
       LDA    #$80    
       CMP    $B9     
       BCS    LF7A1   
       CMP    $BA     
       BCS    LF7A1   
       LDA    #$01    
       BNE    LF7A3   
LF7A1: LDA    #$00    
LF7A3: STA    $C6     
LF7A5: RTS            

LF7A6: LDA    $D8     
       BNE    LF7D2   
       LDA    $C5     
       BNE    LF7D2   
       LDA    $80     
       AND    #$08    
       BNE    LF7BE   
       LDA    #$00    
       STA    $94     
       LDA    #$75    
       STA    $B3     
       BNE    LF7C6   
LF7BE: LDA    #$20    
       STA    $94     
       LDA    #$72    
       STA    $B3     
LF7C6: LDA    $C6     
       BNE    LF7D2   
       LDA    #$40    
       STA    $94     
       LDA    #$75    
       STA    $B3     
LF7D2: RTS            

LF7D3: SEC            
       LDA    $A4     
       SBC    #$03    
       STA    $E1     
       CLC            
       ADC    #$17    
       STA    $E2     
       CLC            
       LDA    $B4     
       ADC    #$0E    
       STA    $E3     
       ADC    #$13    
       STA    $E4     
       LDY    $A7     
       CPY    $E1     
       BCC    LF80C   
       CPY    $E2     
       BCS    LF80C   
       LDY    $B7     
       CPY    $E3     
       BCC    LF80C   
       CPY    $E4     
       BCS    LF80C   
       BIT    CXP0FB  
       BVS    LF806   
       BIT    CXP1FB  
       BVC    LF80C   
LF806: LDA    #$01    
       STA    $CD     
       STA    $F6     
LF80C: RTS            

LF80D: LDA    $C9     
       BEQ    LF81F   
       INC    $A4     
       LDA    $A4     
       CMP    #$70    
       BCC    LF82B   
       LDA    #$00    
       STA    $C9     
       BEQ    LF82B   
LF81F: DEC    $A4     
       LDA    $A4     
       CMP    #$10    
       BCS    LF82B   
       LDA    #$01    
       STA    $C9     
LF82B: RTS            

LF82C: LDY    #$00    
       ASL    $8B     
       BCS    LF83A   
       LDA    $A4     
       CLC            
       ADC    LFF9D,Y 
       STA    $A4     
LF83A: ASL    $8B     
       BCS    LF846   
       LDA    $A4     
       SEC            
       SBC    LFF9D,Y 
       STA    $A4     
LF846: ASL    $8B     
       BCS    LF852   
       LDA    $B2     
       CLC            
       ADC    LFF95,Y 
       STA    $B2     
LF852: ASL    $8B     
       BCS    LF85E   
       LDA    $B2     
       SEC            
       SBC    LFF95,Y 
       STA    $B2     
LF85E: LDY    #$07    
       CPY    $A4     
       BCC    LF866   
       STY    $A4     
LF866: LDY    #$78    
       CPY    $A4     
       BCS    LF86E   
       STY    $A4     
LF86E: LDY    #$07    
       CPY    $B2     
       BCC    LF876   
       STY    $B2     
LF876: LDY    #$3D    
       CPY    $B2     
       BCS    LF87E   
       STY    $B2     
LF87E: RTS            

LF87F: LDA    $B2     
       CLC            
       ADC    #$10    
       STA    $B4     
       CLC            
       ADC    #$20    
       STA    $B1     
       LDA    $A4     
       CLC            
       ADC    #$09    
       STA    $A5     
       RTS            

LF893: LDA    $B7     
       LDY    $88     
       SEC            
       SBC    LFF95,Y 
       STA    $B7     
       LDA    $89     
       CMP    $8A     
       BNE    LF8AE   
       LDA    $A7     
       CLC            
       ADC    ($F0),Y 
       STA    $A7     
       LDA    #$00    
       STA    $8A     
LF8AE: LDA    $B7     
       CMP    #$07    
       BCC    LF8BE   
       LDA    $A7     
       CMP    #$01    
       BCC    LF8BE   
       CMP    #$98    
       BCC    LF8C2   
LF8BE: LDA    #$01    
       STA    $F6     
LF8C2: RTS            

LF8C3: LDA    $F6     
       BEQ    LF90E   
       LDA    $CD     
       BNE    LF8D3   
       LDA    #$00    
       STA    $F6     
       LDA    #$01    
       STA    $CF     
LF8D3: LDA    #$92    
       STA    $B7     
       LDX    $82     
       STX    $AF     
       LDA    $D1,X   
       BEQ    LF8E7   
       LDA    #$01    
       STA    $F6     
       LDA    #$00    
       STA    $CF     
LF8E7: LDA    $A0,X   
       STA    $A7     
       LDA    LFF93,X 
       STA    $F0     
       INC    $89     
       LDA    $89     
       CMP    #$04    
       BCC    LF90A   
       LDY    $88     
       CPY    #$02    
       BCC    LF906   
       CPY    #$04    
       BCS    LF906   
       LDA    #$02    
       BNE    LF908   
LF906: LDA    #$01    
LF908: STA    $89     
LF90A: LDA    #$00    
       STA    $8A     
LF90E: RTS            

LF90F: LDA    $D1     
       BEQ    LF91F   
       LDA    #$01    
       STA    $F7     
       DEC    $BE     
       BNE    LF91F   
       LDA    #$00    
       STA    $D1     
LF91F: LDA    $D2     
       BEQ    LF92F   
       LDA    #$01    
       STA    $F7     
       DEC    $CB     
       BNE    LF92F   
       LDA    #$00    
       STA    $D2     
LF92F: RTS            

LF930: LDA    $B6     
       CMP    #$90    
       BCC    LF94C   
       LDX    #$01    
LF938: LDA    $A6     
       SEC            
       SBC    $A0,X   
       AND    #$F8    
       BNE    LF945   
       LDA    #$01    
       STA    $D1,X   
LF945: DEX            
       BPL    LF938   
       LDA    #$00    
       STA    $DA     
LF94C: RTS            

LF94D: LDY    $88     
       LDA    LFFBD,Y 
       STA    $C0     
       STA    $C1     
       LDA    $D1     
       BEQ    LF95E   
       LDA    #$00    
       STA    $C0     
LF95E: LDA    $D2     
       BEQ    LF966   
       LDA    #$00    
       STA    $C1     
LF966: RTS            

LF967: LDX    #$01    
LF969: TXA            
       ASL            
       TAY            
       LDA    $C0,X   
       CLC            
       ADC    #$01    
       ASL            
       ASL            
       AND    $80     
       BNE    LF97E   
       LDA    #$60    
       STA.wy $0096,Y 
       BNE    LF983   
LF97E: LDA    #$A0    
       STA.wy $0096,Y 
LF983: DEX            
       BPL    LF969   
       RTS            

LF987: LDA    $CF     
       BEQ    LF99A   
       LDA    $AF     
       TAY            
       ASL            
       TAX            
       LDA    LFFC5,Y 
       STA.wy $009C,Y 
       LDA    #$80    
       STA    $96,X   
LF99A: RTS            

LF99B: LDA    $80     
       AND    $C0,X   
       BNE    LF9D6   
       LDA    $85,X   
       BNE    LF9BA   
       INC    $A0,X   
       LDA    $A0,X   
       CMP    $AC,X   
       BCC    LF9D6   
       INC    $9E,X   
       LDY    $9E,X   
       LDA    ($E1),Y 
       STA    $AA,X   
       LDA    #$08    
       STA    $85,X   
       RTS            

LF9BA: DEC    $A0,X   
       LDA    $A0,X   
       CMP    $AA,X   
       BCS    LF9D6   
       INC    $9E,X   
       LDY    $9E,X   
       CPY    #$08    
       BCC    LF9CE   
       LDY    #$00    
       STY    $9E,X   
LF9CE: LDA    ($E1),Y 
       STA    $AC,X   
       LDA    #$00    
       STA    $85,X   
LF9D6: RTS            

LF9D7: LDA    $85     
       EOR    #$FF    
       STA    $9C     
       LDA    $86     
       EOR    #$FF    
       STA    $9D     
       RTS            

LF9E4: LDA    $B6     
       LDX    $88     
       CLC            
       ADC    LFF8B,X 
       STA    $B6     
       CMP    #$90    
       BCC    LF9F6   
       LDA    #$00    
       STA    $DA     
LF9F6: RTS            

LF9F7: LDA    $DA     
       BNE    LFA1F   
       LDA    $A4     
       CLC            
       ADC    #$04    
       STA    $A6     
       LDA    $B4     
       CLC            
       ADC    #$1E    
       STA    $B6     
       BIT    $D0     
       BMI    LFA13   
       BVC    LFA13   
       BIT    INPT4   
       BMI    LFA1F   
LFA13: LDA    #$01    
       STA    $DA     
       BIT    $D0     
       BMI    LFA1F   
       BVC    LFA1F   
       STA    $CE     
LFA1F: RTS            

LFA20: LDX    #$01    
LFA22: LDA    $A6     
       SEC            
       SBC    $A8,X   
       BCC    LFA39   
       AND    #$F8    
       BNE    LFA39   
       LDA    $B6     
       CMP    $B9,X   
       BCC    LFA39   
       LDA    #$00    
       STA    $DA     
       INC    $B9,X   
LFA39: DEX            
       BPL    LFA22   
       RTS            

LFA3D: LDA    $C5     
       BNE    LFA5C   
       INC    $8D     
       LDA    $8D     
       AND    #$7F    
       BNE    LFA5C   
       INC    $8E     
       LDA    $8E     
       LDX    $88     
       CMP    LFFAD,X 
       BCC    LFA5C   
       INC    $A8     
       DEC    $A9     
       LDA    #$00    
       STA    $8E     
LFA5C: RTS            

LFA5D: INC    $BF     
       LDA    $BF     
       LDX    $88     
       CMP    LFFB5,X 
       BNE    LFA7E   
       DEC    $B9     
       DEC    $BA     
       LDY    #$70    
       CPY    $B9     
       BCC    LFA74   
       STY    $B9     
LFA74: CPY    $BA     
       BCC    LFA7A   
       STY    $BA     
LFA7A: LDA    #$00    
       STA    $BF     
LFA7E: RTS            

LFA7F: LDA    $80     
       AND    #$08    
       BNE    LFA8C   
       LDA    $B8     
       CLC            
       ADC    #$04    
       STA    $B8     
LFA8C: RTS            

LFA8D: CLC            
       ADC    #$01    
       SEC            
       LDY    #$FF    
LFA93: INY            
       SBC    #$0F    
       BCS    LFA93   
       STY    $F2,X   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F2,X   
       STA    $F2,X   
LFAA6: RTS            

LFAA7: STA    WSYNC   
       STA    HMCLR   
       LDX    #$04    
LFAAD: LDA    $A3,X   
       JSR    LFABC   
       DEX            
       CPX    #$02    
       BCS    LFAAD   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFABC: CLC            
       ADC    #$02    
       SEC            
       STA    WSYNC   
LFAC2: SBC    #$0F    
       BCS    LFAC2   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    RESP0,X 
       RTS            

LFAD3: LDA    $83     
       BNE    LFAED   
       LDA    #$80    
       ORA    $D0     
       STA    $D0     
       LDA    #$0B    
       STA    $83     
       LDA    #$78    
       STA    $CA     
       LDA    #$00    
       STA    $B5     
       LDA    #$C0    
       STA    $C8     
LFAED: RTS            

LFAEE: LDA    #$FF    
       STA    $F1     
       LDA    #$FE    
       STA    $97     
       STA    $99     
       LDX    #$FE    
       STX    $9B     
       LDA    #$FE    
       STA    $95     
       LDA    #$60    
       STA    $96     
       STA    $98     
       LDY    #$D0    
       STY    $9A     
       LDA    #$40    
       STA    $94     
       LDA    #$34    
       STA    $AC     
       LDA    #$90    
       STA    $AD     
       LDA    #$20    
       STA    $A0     
       LDA    #$80    
       STA    $A1     
       LDA    #$01    
       STA    $8C     
       STA    $CC     
       STA    $EE     
       LDA    #$C0    
       STA    $C8     
       LDA    #$30    
       STA    $81     
       LDA    #$38    
       STA    $BB     
       LDA    #$78    
       STA    $CA     
       LDA    #$E6    
       STA    $BD     
       LDA    #$B2    
       STA    $BC     
       LDA    #$0A    
       STA    $83     
       STA    $DD     
       RTS            

LFB45: LDA    #$40    
       STA    $D0     
       LDA    #$01    
       STA    $8C     
       STA    $CC     
       LDA    $92     
       AND    #$07    
       STA    $88     
       LDA    #$C0    
       STA    $C8     
       LDA    #$1F    
       STA    $B0     
       LDA    #$10    
       STA    $F8     
       LDA    #$03    
       STA    $DD     
       STA    $83     
       LDA    #$00    
       STA    AUDV0   
       STA    $EE     
       STA    $ED     
       STA    $DB     
       STA    $D1     
       STA    $D2     
       STA    $DA     
       STA    $D8     
       STA    $C6     
       STA    $DE     
       STA    $CD     
       STA    $CE     
       STA    $CF     
       STA    $F7     
       STA    $C5     
       LDA    #$00    
       STA    $B5     
       RTS            

LFB8C: LDA    #$FF    
       BIT    $C8     
       BEQ    LFBC0   
       BPL    LFBA4   
       LDA    #$30    
       STA    $81     
       LDA    #$75    
       STA    $B3     
       LDA    #$20    
       STA    $B2     
       LDA    #$40    
       STA    $A4     
LFBA4: BVC    LFBB4   
       LDA    #$70    
       STA    $B9     
       STA    $BA     
       LDA    #$3D    
       STA    $A8     
       LDA    #$55    
       STA    $A9     
LFBB4: LDA    #$01    
       STA    $F6     
       LDA    $CC     
       BNE    LFBC0   
       LDA    #$00    
       STA    $C8     
LFBC0: RTS            

LFBC1: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A
       .byte $0B,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$0B,$0A,$0B
       .byte $0A,$0B,$08,$3F,$1F,$0F,$07,$03,$01,$00,$01,$01,$01,$01,$01,$C0
       .byte $40,$40,$C0,$C0,$C0,$E0,$D0,$88,$C8,$E8,$80,$C0,$00,$2A,$AA,$2C
       .byte $AA,$2E,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$5D,$51,$99,$51,$DD,$07
       .byte $04,$07,$03,$03,$01,$07,$04,$07,$03,$01,$02,$03,$02,$A3,$A4,$E3
       .byte $A4,$47,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$D0,$10,$98,$10,$DC,$F8
       .byte $08,$F8,$F0,$F0,$E0,$F8,$08,$F8,$30,$E0,$10,$F0,$10,$F1,$C9,$31
       .byte $C9,$F9,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$E4,$24,$64,$84,$EE,$00
       .byte $00,$00,$00,$00,$00,$01,$02,$04,$04,$05,$00,$00,$00,$95,$55,$96
       .byte $55,$97,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$4A,$AA,$AC,$AA,$4E,$D4
       .byte $B4,$84,$C4,$C4,$C4,$C4,$C4,$44,$C4,$C4,$44,$C4,$04,$54,$54,$74
       .byte $54,$24,$04,$FF,$FE,$FC,$F8,$F0,$E0,$00,$E0,$80,$C0,$80,$E0
LFCC0: .byte $F0,$00,$F0,$00,$F0,$00,$F0,$00,$F0,$00,$F0,$00,$F0,$00,$F0,$00
       .byte $F0,$00,$F0,$00,$F0,$00,$F0,$00,$F0,$00,$F0,$00,$F0,$00,$F0,$F0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $0A,$0B,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08
       .byte $08,$08,$08,$08,$3F,$1F,$0F,$07,$03,$01,$00,$01,$01,$01,$01,$01
       .byte $C3,$4C,$58,$FE,$E7,$04,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$5D,$51,$99,$51,$DD
       .byte $87,$04,$07,$03,$03,$01,$07,$04,$07,$03,$01,$02,$03,$02,$03,$04
       .byte $03,$04,$07,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$D0,$10,$98,$10,$DC
       .byte $F8,$08,$F8,$F0,$F0,$E0,$F8,$08,$F8,$30,$E0,$10,$F0,$10,$F0,$C8
       .byte $30,$C8,$F8,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$E4,$24,$64,$84,$EE
       .byte $70,$0C,$06,$1F,$39,$08,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$4A,$AA,$AC,$AA,$4E
       .byte $D4,$B4,$84,$C4,$C4,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $04,$04,$04,$04,$FF,$FE,$FC,$F8,$F0,$E0,$00,$E0,$80,$C0,$80,$E0
LFDC0: .byte $01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$00,$01,$38
       .byte $3B,$14,$79,$B8,$39,$FF,$28,$28,$28,$6C,$00,$00,$00,$02,$01,$00
LFDE0: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1C,$1C,$08
       .byte $3E,$5D,$1C,$14,$36,$FF,$80,$80,$C0,$40,$20,$20,$20,$20,$C0,$80
       .byte $FF,$FF,$99,$66,$99,$FF,$42,$7E,$42,$3C,$3C,$66,$E7,$FF,$FF,$81
       .byte $FF,$3C,$7E,$7E,$7E,$7E,$FF,$FF,$FF,$81,$FF,$00,$00,$00,$00,$00
       .byte $F7,$FF,$99,$66,$99,$FF,$42,$7E,$42,$3C,$3C,$66,$E7,$FF,$FF,$81
       .byte $FF,$3C,$7E,$7E,$7E,$7E,$FF,$FF,$FF,$81,$FF,$00,$00,$00,$00,$00
       .byte $FF,$FF,$99,$66,$99,$FF,$42,$7E,$42,$3C,$3C,$66,$E7,$FF,$FF,$81
       .byte $FF,$3C,$7E,$7E,$7E,$7E,$FF,$FF,$81,$FF,$00,$00,$00,$00,$00,$00
       .byte $18,$3C,$5A,$7E,$5A,$66,$3C,$18,$7E,$FF,$3C,$3C,$3C,$66,$C3,$FF
       .byte $AA,$FF,$18,$10,$10,$3C,$2C,$7C,$38,$18,$18,$78,$18,$0E,$0A,$18
       .byte $42,$66,$5A,$7E,$66,$5A,$BD,$99,$FF,$7E,$3C,$3C,$3C,$66,$C3,$FF
       .byte $AA,$FF,$18,$10,$10,$3C,$2C,$7C,$38,$18,$18,$18,$18,$08,$08,$18
       .byte $18,$3C,$5A,$7E,$5A,$66,$3C,$18,$7E,$FF,$3C,$3C,$3C,$66,$C3,$FF
       .byte $55,$FF,$18,$10,$10,$3C,$2C,$7C,$38,$1E,$1A,$1A,$38,$28,$2C,$64
       .byte $38,$38,$E0,$E0,$20,$20,$73,$73,$FE,$FE,$F8,$70,$20,$20,$70,$70
       .byte $E0,$E0,$38,$38,$20,$20,$73,$73,$FE,$FE,$F8,$70,$20,$20,$70,$70
LFEE0: .byte $08,$10,$51,$5A,$4A,$89,$49,$2A,$29,$A5,$85,$89,$4B,$4A,$9A,$92
       .byte $52,$5E,$3C,$3D,$8D,$5E,$5E,$5E,$3D,$1D,$4D,$9E,$BE,$7C,$39,$1E
       .byte $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$64,$94,$85,$87,$84,$94,$67
       .byte $A4,$A5,$25,$3D,$A5,$95,$0C,$C9,$29,$0A,$0C,$0A,$09,$C8,$7A,$42
       .byte $42,$73,$42,$42,$7B,$4C,$52,$82,$8C,$50,$52,$8C
LFF2C: .byte $39,$09,$10,$17,$1E,$25,$10,$54,$38,$10,$38,$54,$10,$00,$00,$00
       .byte $00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$3C,$46,$06,$0C,$06,$46
       .byte $3C,$66,$66,$3C,$66,$66,$3C,$46,$06,$3E,$66,$66,$3C,$66,$66,$7C
       .byte $60,$62,$3C,$18,$18,$08,$04,$02,$62,$7E,$60,$60,$3C,$06,$46,$7C
       .byte $46,$06,$7C,$60,$60,$7E,$18,$18,$18,$18,$78,$38,$0C,$0C,$7E,$4C
       .byte $2C,$1C,$0C
LFF7F: .byte $40,$71,$65,$46,$78,$6B,$58,$5F,$4C,$52,$39,$32
LFF8B: .byte $01,$01,$02,$02,$03,$03,$04,$04
LFF93: .byte $9D,$A5
LFF95: .byte $01,$01,$02,$02,$02,$02,$02,$02
LFF9D: .byte $01,$01,$02,$02,$02,$02,$02,$02,$FF,$FF,$FE,$FE,$FE,$FE,$FE,$FE
LFFAD: .byte $04,$03,$04,$03,$04,$03,$02,$01
LFFB5: .byte $7F,$5F,$3F,$37,$2F,$27,$1F,$1F
LFFBD: .byte $07,$03,$07,$03,$07,$03,$03,$01
LFFC5: .byte $08,$00,$34,$10,$2F,$03,$20,$14,$24,$02,$90,$70,$84,$62,$74,$5F
       .byte $8F,$66
LFFD7: .byte $1B,$1B,$14,$12,$10,$10,$10,$0F,$18,$18,$12
LFFE2: .byte $0C,$0C,$0C,$0C,$1C,$04,$04,$0C,$0C,$0C,$1C,$FC,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$F0,$00,$F0
