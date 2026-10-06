; Disassembly of roms/T.F. Space Invaders.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/T.F. Space Invaders.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
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
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000
LF000: STA    HMCLR   
       LDA    $84     
       BMI    LF006   
LF006: AND    #$0F    
       TAX            
LF009: DEX            
       BPL    LF009   
LF00C: LDA    ($F8),Y 
       TAX            
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    ($F0),Y 
       STA    GRP1    
       LDA    ($F2),Y 
       STA    GRP0    
       LDA    ($F4),Y 
       STA    GRP1    
       LDA    ($F6),Y 
       STA    GRP0    
       TXA            
       STA    GRP1    
       STA    GRP0    
       DEC    $89     
       DEY            
       PHA            
       PLA            
       PHA            
       PLA            
       LDA    ($F8),Y 
       TAX            
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    ($F0),Y 
       STA    GRP1    
       LDA    ($F2),Y 
       STA    GRP0    
       LDA    ($F4),Y 
       STA    GRP1    
       LDA    ($F6),Y 
       STA    GRP0    
       TXA            
       STA    GRP1    
       STA    GRP0    
       LDA    $89     
       CMP    #$04    
       BCC    LF055   
       LDA    #$00    
       BCS    LF058   
LF055: NOP            
       LDA    #$02    
LF058: STA.w  $001F   
       DEY            
       BPL    LF00C   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    HMCLR   
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       DEC    $89     
       LDA    $89     
       CMP    #$04    
       BCC    LF077   
       LDA    #$00    
       BCS    LF07A   
LF077: NOP            
       LDA    #$02    
LF07A: STA    ENABL   
       LDY    $80     
       LDA    WSYNC   
       ORA    RSYNC   
       ASL            
       BMI    LF08B   
       NOP            
       NOP            
       NOP            
       NOP            
       BPL    LF092   
LF08B: LDA    $82     
       ORA    LFCDC,Y 
       STA    $82     
LF092: STA    CXCLR   
       DEY            
       DEC    $8C     
       BPL    LF0A2   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       JMP    LF109   
LF0A2: JSR    LFDE9   
LF0A5: STY    $80     
       LDA.wy $0092,Y 
       STA    $F8     
       LDX    #$F4    
LF0AE: LSR    $F8     
       BCC    LF0B9   
       LDA    LFCD6,Y 
       ADC    $8B     
       BNE    LF0BD   
LF0B9: PHA            
       PLA            
       LDA    #$00    
LF0BD: STA    $FA,X   
       INX            
       INX            
       BMI    LF0AE   
       DEC    $89     
       LDA    $89     
       CMP    #$04    
       BCC    LF0CF   
       LDA    #$00    
       BCS    LF0D2   
LF0CF: NOP            
       LDA    #$02    
LF0D2: STA    ENABL   
       LDA    $C8     
       AND    #$38    
       LSR            
       LSR            
       LSR            
       CMP    $80     
       BNE    LF0F5   
       LDA    $C8     
       AND    #$07    
       ASL            
       TAX            
       LDA    $C8     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
       LDA    LFD1E,Y 
       STA    $EE,X   
       JMP    LF0FA   
LF0F5: LDX    #$05    
LF0F7: DEX            
       BPL    LF0F7   
LF0FA: STA    HMCLR   
       JSR    LFDB2   
       LDX    #$06    
LF101: DEX            
       BPL    LF101   
       LDY    #$09    
       JMP    LF000   
LF109: DEC    $8E     
       BMI    LF113   
       JSR    LFDB2   
       JMP    LF109   
LF113: BIT    $98     
       BVS    LF11A   
       JMP    LF1B2   
LF11A: LDA    $DD     
       STA    COLUP0  
       LDA    #$01    
       STA    $8E     
       LDA    #$00    
       STA    $EF     
       STA    $F1     
       STA    $F3     
       LDA    #$AB    
       STA    $EE     
       LDA    #$B4    
       STA    $F0     
       LDA    #$BD    
       STA    $F2     
       LDA    #$11    
       STA    WSYNC   
       STA    HMCLR   
       STA    $F4     
       LDA    $85     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF145: DEY            
       BPL    LF145   
       STA    RESP0   
       DEC    $89     
       LDA    $89     
       CMP    #$04    
       LDA    #$02    
       BCC    LF155   
       LSR            
LF155: STA    ENABL   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       LDA    $85     
       BPL    LF163   
       LDA    $85     
LF163: AND    #$0F    
       TAX            
       DEX            
       DEX            
LF168: DEX            
       BPL    LF168   
LF16B: LDA    ($EE),Y 
       STA    GRP0    
       NOP            
       LDA    ($F0),Y 
       STA    GRP0    
       LDA    ($F2),Y 
       STA    GRP0    
       DEC    $F4     
       BMI    LF18E   
       LDA    $F4     
       LSR            
       BCC    LF189   
       INY            
       LDA    #$20    
LF184: LSR            
       BNE    LF184   
       BEQ    LF16B   
LF189: JSR    LFDE9   
       BPL    LF16B   
LF18E: LDA    #$00    
       STA    GRP0    
       STA    WSYNC   
       LDA    WSYNC   
       ASL            
       AND    #$80    
       ORA    $82     
       STA    $82     
       STA    CXCLR   
       JSR    LFDE9   
       STA    HMCLR   
       STA    WSYNC   
       STA    WSYNC   
LF1A8: DEC    $8E     
       BMI    LF1B2   
       JSR    LFDB2   
       JMP    LF1A8   
LF1B2: BIT    $98     
       BPL    LF1B9   
       JMP    LF282   
LF1B9: JSR    LFDE9   
       STA    HMCLR   
       STA    WSYNC   
       LDA    $DF     
       STA    COLUP0  
       LDA    $86     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF1CB: DEY            
       BPL    LF1CB   
       STA    RESP0   
       STA    WSYNC   
       LDA    $E0     
       STA    COLUP1  
       LDA    $87     
       STA    HMP1    
       AND    #$0F    
       TAY            
LF1DD: DEY            
       BPL    LF1DD   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFDE9   
       LDA    #$00    
       BIT    SWCHB   
       BPL    LF1F2   
       LDA    #$05    
LF1F2: STA    NUSIZ1  
       LDA    #$00    
       BVC    LF1FA   
       LDA    #$05    
LF1FA: STA    NUSIZ0  
       LDA    $98     
       AND    #$10    
       BEQ    LF204   
       LDA    #$0A    
LF204: STA    $F4     
       LDA    $98     
       AND    #$20    
       BEQ    LF20E   
       LDA    #$0A    
LF20E: STA    $F6     
       LDA    $AA     
       LSR            
       STA    WSYNC   
       BCC    LF22E   
       LDX    $C9     
       LDA    LFD16,X 
       STA    $F8     
       LDA    #$FF    
       STA    $F9     
       LDA    $CA     
       AND    #$08    
       BNE    LF22C   
       STA    $F4     
       STA    $F6     
LF22C: BPL    LF253   
LF22E: LDA    #$00    
       STA    $F8     
       LDA    $CA     
       LSR            
       LSR            
       LSR            
       LDA    $AA     
       AND    #$04    
       BEQ    LF245   
       LDA    #$1E    
       BCS    LF243   
       LDA    #$14    
LF243: STA    $F4     
LF245: LDA    $AA     
       AND    #$02    
       BEQ    LF253   
       LDA    #$14    
       BCS    LF251   
       LDA    #$1E    
LF251: STA    $F6     
LF253: LDX    #$09    
       LDY    #$09    
LF257: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDA    ($F4),Y 
       STA    GRP0    
       LDA    ($F6),Y 
       STA    GRP1    
       TXA            
       LSR            
       TAY            
       LDA    ($F8),Y 
       STA    PF0     
       TXA            
       LSR            
       BCC    LF27D   
       DEC    $89     
       LDA    $89     
       CMP    #$04    
       LDA    #$02    
       BCC    LF27B   
       LSR            
LF27B: STA    ENABL   
LF27D: DEX            
       TXA            
       TAY            
       BPL    LF257   
LF282: STA    WSYNC   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    PF0     
       STA    ENABL   
       STA    GRP0    
       STA    GRP1    
       LDA    $E4     
       STA    COLUBK  
       LDA    $81     
       STA    RESP0   
       LDX    #$04    
LF29C: DEX            
       BPL    LF29C   
       STA    RESP1   
       STA    HMCLR   
       LDA    #$E0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$C0    
       STA    GRP0    
       STA    GRP1    
       LDX    #$04    
       LDA    #$00    
LF2B5: STA    $F3,X   
       DEX            
       BNE    LF2B5   
       JSR    LFE08   
       INX            
       JSR    LFE08   
       LDA    $AA     
       AND    #$81    
       BNE    LF2F6   
       BIT    WSYNC   
       BVC    LF2D1   
       LDA    #$04    
       BIT    $AA     
       BEQ    LF2DC   
LF2D1: DEX            
       BIT    RSYNC   
       BVC    LF2F6   
       LDA    #$02    
       BIT    $AA     
       BNE    LF2F6   
LF2DC: ORA    $AA     
       STA    $AA     
       STA    $C6     
       JSR    LFE75   
       LDA    #$06    
       JSR    LFE7E   
       LDA    $C7     
       BNE    LF2F6   
       BIT    $DB     
       BVC    LF2F6   
       LDA    #$02    
       STA    $F4,X   
LF2F6: STA    WSYNC   
LF2F8: LDA    INTIM   
       BNE    LF2F8   
       STA    GRP0    
       STA    GRP1    
       LDA    #$C8    
       STA    TIM8T   
       LDA    #$00    
       STA    $F1     
       TAX            
       LDA    $82     
       BPL    LF36E   
       LDA    $CA     
       LSR            
       BCC    LF316   
       LDX    #$04    
LF316: LDA    $D1,X   
       CMP    #$49    
       BCC    LF320   
       CMP    #$58    
       BCC    LF321   
LF320: INX            
LF321: CPX    #$03    
       BCC    LF331   
       LDA    #$09    
       STA    $EF     
       LDA    #$FF    
       STA    $F2     
       LDA    #$7F    
       BNE    LF33B   
LF331: LDA    #$FF    
       STA    $EF     
       LDA    #$01    
       STA    $F2     
       LDA    #$F6    
LF33B: STA    $D1,X   
       LDA    $D3,X   
       LDY    #$03    
       CLC            
       SBC    $9B     
LF344: DEY            
       CLC            
       ADC    #$E0    
       BPL    LF344   
       ADC    #$20    
       TAX            
       LDA    LFD13,Y 
       STA    $F0     
       LDY    $EF     
LF354: TYA            
       CLC            
       ADC    $F2     
       TAY            
       LDA    LFF4C,X 
       EOR    #$FF    
       AND    ($F0),Y 
       BEQ    LF354   
       JSR    LFD8F   
       DEY            
       JSR    LFD8B   
       INY            
       INY            
       JSR    LFD8B   
LF36E: LDA    $CA     
       LSR            
       BCS    LF376   
       JMP    LF429   
LF376: BIT    $82     
       BVC    LF3A0   
       LDA    $C8     
       AND    #$39    
       CMP    #$39    
       BEQ    LF3A0   
       LDA    #$39    
       STA    $C8     
       LDX    #$01    
       LDA    $98     
       AND    #$04    
       BNE    LF38F   
       DEX            
LF38F: LDA    #$04    
       STA    $C6     
       LSR            
       BIT    $DB     
       BVC    LF399   
       LSR            
LF399: STA    $F4,X   
       LDA    #$05    
       JSR    LFE8B   
LF3A0: LDA    #$06    
       STA    $F0     
LF3A4: DEC    $F0     
       BPL    LF3AB   
       JMP    LF4CF   
LF3AB: LDX    $F0     
       LDA    $82     
       AND    LFCDC,X 
       BEQ    LF3A4   
       LDY    #$01    
       LDA    #$35    
       SEC            
       SBC    LFD31,X 
       CLC            
       ADC    $90     
       CMP    #$52    
       BCS    LF426   
       CMP    $D5     
       BCS    LF3CE   
       ADC    #$0D    
       CMP    $D5     
       BCC    LF3CE   
       DEY            
LF3CE: STY    $EE     
       LDX    $EE     
       LDY    #$FF    
       LDA    $9A     
       CLC            
       ADC    #$FD    
LF3D9: INY            
       ADC    #$10    
       CMP    $D7,X   
       BCC    LF3D9   
       STY    $EF     
       LDX    $F0     
       LDA    LFCDC,Y 
       AND    $92,X   
       BEQ    LF426   
       EOR    $92,X   
       STA    $92,X   
       LDY    $EE     
       LDA    LFCDE,Y 
       LDY    #$01    
       AND    $98     
       BNE    LF3FB   
       DEY            
LF3FB: LDA    LFD2B,X 
       STA.wy $00F6,Y 
       LDA    #$02    
       JSR    LFE7E   
       DEC    $91     
       BNE    LF414   
       LDA    $AA     
       ORA    #$08    
       STA    $AA     
       LDA    #$61    
       STA    $CA     
LF414: JSR    LFBED   
       TXA            
       ASL            
       ASL            
       ASL            
       ORA    $EF     
       STA    $C8     
       LDA    #$F6    
       LDY    $EE     
       STA.wy $00D5,Y 
LF426: JMP    LF3A4   
LF429: LSR            
       BCS    LF459   
       LDA    $C8     
       AND    #$39    
       CMP    #$39    
       BEQ    LF459   
       LDA    $9E     
       CMP    #$B4    
       BEQ    LF459   
       LDA    $98     
       LSR            
       BCS    LF445   
       DEC    $9E     
       BNE    LF459   
       BEQ    LF44D   
LF445: INC    $9E     
       LDA    $9E     
       CMP    #$98    
       BCC    LF459   
LF44D: LDA    #$B4    
       STA    $9E     
       LDA    #$00    
       STA    $CC     
       LDA    #$04    
       STA    $C6     
LF459: LDA    SWCHA   
       TAY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $EE     
       AND    #$80    
       STA    $81     
       LDA    $DB     
       CMP    #$90    
       BNE    LF475   
       BIT    $AA     
       BVC    LF47F   
       LDY    $EE     
       BVS    LF47F   
LF475: AND    #$02    
       BEQ    LF47F   
       TYA            
       AND    #$40    
       ORA    $81     
       TAY            
LF47F: LDX    #$01    
LF481: LDA    $AA     
       AND    LFD60,X 
       BNE    LF4A0   
       BIT    $EE     
       BMI    LF48E   
       INC    $9C,X   
LF48E: BVS    LF492   
       DEC    $9C,X   
LF492: LDA    $9C,X   
       CMP    #$76    
       BCC    LF49A   
       DEC    $9C,X   
LF49A: CMP    #$23    
       BCS    LF4A0   
       INC    $9C,X   
LF4A0: STY    $EE     
       DEX            
       BPL    LF481   
       LDA    $CA     
       LSR            
       LSR            
       LSR            
       BCS    LF4CF   
       LDA    $DC     
       LSR            
       BCC    LF4CF   
       LDA    $AA     
       AND    #$10    
       BEQ    LF4C1   
       INC    $9B     
       LDA    $9B     
       CMP    #$35    
       BCC    LF4CF   
       BCS    LF4C9   
LF4C1: DEC    $9B     
       LDA    $9B     
       CMP    #$21    
       BCS    LF4CF   
LF4C9: LDA    $AA     
       EOR    #$10    
       STA    $AA     
LF4CF: LDA    INTIM   
       BNE    LF4CF   
LF4D4: LDA    #$02    
       STA    VBLANK  
       STA    WSYNC   
       BIT    $AA     
       BMI    LF4F1   
       SED            
       LDX    #$01    
LF4E1: LDA    $E8,X   
       CLC            
       ADC    $F6,X   
       STA    $E8,X   
       LDA    $E6,X   
       ADC    $F4,X   
       STA    $E6,X   
       DEX            
       BPL    LF4E1   
LF4F1: CLD            
       STA    WSYNC   
       LDA    $CA     
       AND    #$07    
       BNE    LF50C   
       LDA    $C8     
       CLC            
       ADC    #$40    
       STA    $C8     
       CMP    #$40    
       BCS    LF50C   
       JSR    LFBF1   
       LDA    #$30    
       STA    $C8     
LF50C: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$30    
       STA    TIM64T  
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    $CA     
       LSR            
       BCC    LF549   
       LDX    #$01    
LF528: LDA    $D5,X   
       CMP    #$79    
       BNE    LF532   
       LDA    #$F6    
       STA    $D5,X   
LF532: LDA    $D5,X   
       CMP    #$EC    
       BCS    LF544   
       LDA    $D5,X   
       ADC    #$FE    
       CMP    #$03    
       BCS    LF542   
       LDA    #$F6    
LF542: STA    $D5,X   
LF544: DEX            
       BPL    LF528   
       BMI    LF5A2   
LF549: LDA    $CA     
       AND    #$0F    
       CMP    #$0F    
       BEQ    LF556   
       JSR    LFDFB   
       STA    $DA     
LF556: LDA    $DC     
       AND    #$04    
       LSR            
       LSR            
       LSR            
       LDA    #$01    
       TAX            
       BCC    LF563   
       ASL            
LF563: STA    $81     
LF565: LDA    $D1,X   
       CMP    #$EC    
       BCS    LF59F   
       LDA    $DC     
       AND    #$02    
       BEQ    LF590   
       LDA    $DA     
       CPX    #$00    
       BEQ    LF579   
       ASL            
       ASL            
LF579: ASL            
       BCC    LF590   
       BPL    LF588   
       LDA    $D3,X   
       CMP    #$81    
       BCS    LF590   
       INC    $D3,X   
       BNE    LF590   
LF588: LDA    $D3,X   
       CMP    #$17    
       BCC    LF590   
       DEC    $D3,X   
LF590: LDA    $D1,X   
       CLC            
       ADC    $81     
       STA    $D1,X   
       CMP    #$6C    
       BCC    LF59F   
       LDA    #$F6    
       STA    $D1,X   
LF59F: DEX            
       BPL    LF565   
LF5A2: DEC    $CA     
       BEQ    LF5A9   
       JMP    LF68C   
LF5A9: LDA    $C7     
       BEQ    LF5B1   
       INC    $C7     
       INC    $C7     
LF5B1: BIT    $E5     
       BMI    LF622   
       LDA    $AA     
       AND    #$08    
       BEQ    LF5E5   
       EOR    $AA     
       STA    $AA     
       LDX    $99     
       LDA    LFD0F,X 
       STA    $90     
       CPX    #$03    
       BCS    LF5CC   
       INC    $99     
LF5CC: BIT    $98     
       BMI    LF5DF   
       JSR    LFEFA   
       LDA    $AA     
       AND    #$06    
       BNE    LF5E5   
       LDA    $AA     
       ORA    #$01    
       STA    $AA     
LF5DF: LDA    #$40    
       STA    $CA     
       BNE    LF61F   
LF5E5: BIT    $98     
       BPL    LF5F7   
       BIT    $A7     
       BMI    LF60F   
       LDA    $DB     
       CMP    #$10    
       BNE    LF60F   
       LDA    #$00    
       BEQ    LF628   
LF5F7: LDA    $AA     
       AND    #$01    
       BEQ    LF622   
       EOR    $AA     
       STA    $AA     
       LDA    #$50    
       STA    $D9     
       LDA    #$05    
       STA    $C6     
       LDA    $C9     
       BNE    LF65C   
       INC    $C9     
LF60F: LDA    $E5     
       ORA    #$80    
       STA    $E5     
       LDA    $C7     
       BNE    LF622   
       LDA    #$BF    
       STA    $C7     
       BPL    LF622   
LF61F: JMP    LF689   
LF622: LDA    $AA     
       AND    #$06    
       BEQ    LF668   
LF628: ORA    #$01    
       EOR    $AA     
       STA    $AA     
       LDA    #$23    
       STA    $9C     
       LDA    #$75    
       STA    $9D     
       LDA    $DB     
       CMP    #$10    
       BNE    LF65A   
       BIT    $A7     
       BMI    LF65A   
       LDX    #$0A    
LF642: LDY    $90,X   
       LDA    $9F,X   
       STA    $90,X   
       STY    $9F,X   
       DEX            
       BPL    LF642   
       JSR    LFF3A   
       LDA    $AA     
       EOR    #$40    
       STA    $AA     
       AND    #$40    
       BNE    LF65C   
LF65A: DEC    $C9     
LF65C: LDA    #$40    
       STA    $CA     
       LDA    #$B4    
       STA    $9E     
       LDA    #$00    
       STA    $CC     
LF668: DEC    $C6     
       BNE    LF689   
       LDA    $91     
       CMP    #$07    
       BCC    LF689   
       JSR    LFDFB   
       AND    #$01    
       EOR    $98     
       STA    $98     
       LSR            
       LDA    #$98    
       BCC    LF682   
       LDA    #$00    
LF682: STA    $9E     
       LDA    #$04    
       JSR    LFE8B   
LF689: JMP    LF875   
LF68C: LDA    $CA     
       LSR            
       BCS    LF694   
       JMP    LF7DB   
LF694: LDA    SWCHB   
       AND    #$03    
       CMP    #$02    
       BNE    LF6A3   
       JSR    LFEB2   
       JMP    LF744   
LF6A3: LDA    SWCHB   
       AND    #$02    
       BEQ    LF6B3   
       LDA    $AA     
       STA    $ED     
       BMI    LF6EE   
       JMP    LF747   
LF6B3: LDA    #$B1    
       STA    $C7     
       BIT    $AA     
       BMI    LF6C9   
       LDA    $AA     
       AND    #$B0    
       ORA    #$80    
       STA    $ED     
       JSR    LFEC0   
       JMP    LF744   
LF6C9: INC    $ED     
       LDA    $ED     
       CMP    #$0F    
       BCC    LF6EE   
       LDA    SWCHB   
       LSR            
       LDA    #$0D    
       BCC    LF6DB   
       LDA    #$02    
LF6DB: STA    $ED     
       LDA    $98     
       AND    #$F3    
       STA    $98     
       LDA    $DC     
       CLC            
       ADC    #$91    
       BEQ    LF6EC   
       ADC    #$70    
LF6EC: STA    $DC     
LF6EE: LDA    $AA     
       ORA    #$80    
       STA    $AA     
       LDA    $DC     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $EC     
       TAY            
       LDA    LFD4B,Y 
       STA    $DB     
       LDA    $98     
       AND    #$CF    
       ORA    LFD52,Y 
       STA    $98     
       LDA    #$AA    
       STA    $E7     
       LDA    #$A2    
       STA    $E9     
       LDY    #$00    
       TYA            
       SEC            
       ADC    $DC     
LF719: CMP    #$0A    
       BCC    LF723   
       INY            
       SBC    #$0A    
       JMP    LF719   
LF723: ADC    LFD39,Y 
       STA    $E8     
       LDA    $DC     
       CMP    #$63    
       LDA    #$AA    
       BCC    LF732   
       LDA    #$A1    
LF732: STA    $E6     
       LDA    $DC     
       CMP    #$10    
       BCS    LF73C   
       DEC    $E9     
LF73C: CMP    #$09    
       BCS    LF744   
       ADC    #$A1    
       STA    $E8     
LF744: JMP    LF875   
LF747: LDA    $CA     
       LSR            
       BCS    LF74F   
LF74C: JMP    LF7DB   
LF74F: LDA    $C7     
       BNE    LF74C   
       BIT    $98     
       BMI    LF769   
       LDA    $AA     
       AND    #$07    
       BNE    LF769   
       LDA    $DB     
       AND    #$10    
       BEQ    LF7BB   
       LDA    $D5     
       CMP    #$EC    
       BCS    LF76C   
LF769: JMP    LF7D8   
LF76C: LDA    $DB     
       CMP    #$14    
       BEQ    LF77A   
       CMP    #$90    
       BNE    LF77F   
       BIT    $AA     
       BVC    LF79B   
LF77A: BIT    PF0     
       JMP    LF79D   
LF77F: LDA    $DB     
       BPL    LF78D   
       DEC    $D9     
       BNE    LF78D   
       BIT    $AA     
       BVC    LF79F   
       BVS    LF7AB   
LF78D: BIT    $AA     
       BVS    LF7A7   
       LDA    $DB     
       AND    #$20    
       BEQ    LF79B   
       BIT    PF0     
       BPL    LF79F   
LF79B: BIT    REFP1   
LF79D: BMI    LF7D8   
LF79F: LDA    $98     
       AND    #$FB    
       LDX    #$00    
       BPL    LF7B1   
LF7A7: BIT    PF0     
       BMI    LF7D8   
LF7AB: LDX    #$01    
       LDA    $98     
       ORA    #$04    
LF7B1: STA    $98     
       LDY    #$00    
       JSR    LFBAF   
       JMP    LF7D8   
LF7BB: LDY    #$01    
LF7BD: LDX    #$01    
       LDA    $98     
       AND    LFCDE,Y 
       BNE    LF7C7   
       DEX            
LF7C7: LDA.wy $00D5,Y 
       CMP    #$EC    
       BCC    LF7D5   
       LDA    REFP1,X 
       BMI    LF7D5   
       JSR    LFBAF   
LF7D5: DEY            
       BPL    LF7BD   
LF7D8: JMP    LF875   
LF7DB: LDA    $AA     
       AND    #$07    
       BNE    LF7D8   
       TAY            
       LDA    $91     
       BEQ    LF7D8   
       LDA    #$EB    
       STA    $EE     
       CMP    $D2     
       BCS    LF7D8   
       JSR    LFDFB   
       BPL    LF80D   
       AND    #$03    
       ASL            
       STA    $EE     
       LDA    $EA     
       LSR            
       LSR            
       TAX            
LF7FD: TXA            
       SEC            
       ADC    $EE     
       AND    #$07    
       TAX            
       LDA    LFCDC,X 
       AND    $EB     
       BEQ    LF7FD   
       BNE    LF83C   
LF80D: LDA    $98     
       AND    #$04    
       BEQ    LF814   
       INY            
LF814: LDX    #$05    
LF816: LDA    LFCDC,X 
       AND    $EB     
       BEQ    LF82D   
       LDA    $9A     
       CLC            
       ADC    #$FD    
       CLC            
       ADC    LFD39,X 
       CMP.wy $009C,Y 
       BCC    LF831   
       STX    $EE     
LF82D: DEX            
       BPL    LF816   
       INX            
LF831: LDA    $EA     
       AND    #$10    
       BNE    LF83C   
       LDA    $EE     
       BMI    LF83C   
       TAX            
LF83C: STX    $EF     
       LDA    LFCDC,X 
       STA    $F0     
       LDX    #$FF    
LF845: INX            
       CPX    #$06    
       BCS    LF875   
       LDA    $92,X   
       AND    $F0     
       BEQ    LF845   
       LDA    #$3C    
       ADC    $90     
       SBC    LFD31,X 
       STA    $D2     
       SEC            
       SBC    $D1     
       CMP    #$10    
       BCC    LF871   
       CMP    #$F1    
       BCS    LF871   
       LDY    $EF     
       LDA    $9A     
       ADC    LFD39,Y 
       ADC    #$04    
       STA    $D4     
       BNE    LF875   
LF871: LDA    #$F6    
       STA    $D2     
LF875: LDA    $AA     
       AND    #$07    
       BNE    LF8F5   
       BIT    $98     
       BMI    LF8F5   
       LDY    #$FF    
       LDA    $91     
       BEQ    LF8F5   
LF885: INY            
       CMP    LFCE4,Y 
       BCC    LF885   
       LDA    LFCF6,Y 
       STA    $EE     
       LDA    LFCED,Y 
       STA    $EF     
       LDA    $CA     
       AND    #$3F    
       STA    $F0     
       CLC            
       ADC    $EF     
       CMP    #$41    
       BCS    LF8F5   
       LDA    $F0     
LF8A4: BEQ    LF8AF   
       CMP    $EF     
       BCC    LF8F5   
       SBC    $EF     
       JMP    LF8A4   
LF8AF: BIT    $8B     
       LDA    #$09    
       BVS    LF8B7   
       LDA    #$FF    
LF8B7: STA    $8B     
       LDA    #$01    
       JSR    LFE7E   
       LDA    $98     
       AND    #$02    
       BEQ    LF8D3   
       LDA    $9A     
       CLC            
       ADC    $EE     
       STA    $9A     
       CMP    $8D     
       BCC    LF8F5   
       LDA    $8D     
       BNE    LF8E0   
LF8D3: LDA    $9A     
       SEC            
       SBC    $EE     
       STA    $9A     
       CMP    #$17    
       BCS    LF8F5   
       LDA    #$17    
LF8E0: STA    $9A     
       LDA    $98     
       EOR    #$02    
       STA    $98     
       BMI    LF8F5   
       BIT    $AA     
       BMI    LF8F5   
       LDA    $90     
       CLC            
       ADC    #$05    
       STA    $90     
LF8F5: LDA    #$05    
       STA    $8C     
       LDA    #$0B    
       SEC            
       SBC    $90     
       STA    $8E     
       BIT    $98     
       BVS    LF90B   
       LDA    $8E     
       CLC            
       ADC    #$0C    
       STA    $8E     
LF90B: LDX    #$FB    
LF90D: LDA    $97,X   
       BNE    LF91D   
       DEC    $8C     
       LDA    $8E     
       CLC            
       ADC    #$09    
       STA    $8E     
       INX            
       BNE    LF90D   
LF91D: LDA    $8E     
       BPL    LF952   
       LDA    $98     
       AND    #$40    
       BEQ    LF934   
       EOR    $98     
       STA    $98     
       LDA    $8E     
       CLC            
       ADC    #$0C    
       STA    $8E     
       BPL    LF952   
LF934: LDA    #$00    
       STA    $8E     
       LDA    $98     
       BMI    LF952   
       ORA    #$80    
       STA    $98     
       LDY    $8C     
       LDA    $90     
       CLC            
       ADC    LFFF2,Y 
       STA    $90     
       JSR    LFE75   
       LDA    #$06    
       JSR    LFE7E   
LF952: LDX    #$05    
       LDA    #$00    
LF956: ORA    $92,X   
       DEX            
       BPL    LF956   
       STA    $EB     
LF95D: LDA    $EB     
       BEQ    LF98E   
       LSR            
       BCS    LF97C   
       JSR    LFBED   
       LDA    #$3A    
       STA    $C8     
       LDX    #$05    
LF96D: LSR    $92,X   
       DEX            
       BPL    LF96D   
       LDA    $9A     
       ADC    #$10    
       STA    $9A     
       LSR    $EB     
       BNE    LF95D   
LF97C: LDX    #$06    
LF97E: DEX            
       LDA    LFCDC,X 
       AND    $EB     
       BEQ    LF97E   
       LDA    #$82    
       SEC            
       SBC    LFD39,X 
       STA    $8D     
LF98E: LDA    $90     
       STA    $8F     
       LDX    #$04    
LF994: LDA    $99,X   
       JSR    LFD67   
       DEX            
       BNE    LF994   
       LDA    SWCHB   
       AND    #$08    
       TAY            
       BEQ    LF9A6   
       LDA    #$F7    
LF9A6: ORA    #$07    
       STA    $EE     
       LDX    #$F8    
LF9AC: LDA    LFCFF,Y 
       EOR    $C7     
       AND    $EE     
       STA    $E5,X   
       INY            
       INX            
       BMI    LF9AC   
       BIT    $AA     
       BMI    LF9C1   
       LDA    $C7     
       BNE    LF9D3   
LF9C1: LDA    $C8     
       AND    #$38    
       CMP    #$30    
       BNE    LF9D3   
       LDA    $DC     
       AND    #$08    
       BEQ    LF9D3   
       LDA    $E3     
       STA    $E1     
LF9D3: LDA    $DE     
       STA    COLUP0  
       LDA    $E3     
       STA    COLUBK  
       LDA    $E2     
       STA    COLUPF  
       LDA    $CA     
       LSR            
       LDX    #$04    
       BCS    LF9E8   
       LDX    #$00    
LF9E8: STX    $EF     
       LDA    $D1,X   
       CMP    $D2,X   
       BCC    LFA1B   
       STA    $81     
       LDA    $D2,X   
       STA    $D1,X   
       LDA    $81     
       STA    $D2,X   
       LDA    $D3,X   
       STA    $81     
       LDA    $D4,X   
       STA    $D3,X   
       LDA    $81     
       STA    $D4,X   
       LDA    $CA     
       LSR            
       BCC    LFA1B   
       LDA    $98     
       AND    #$0C    
       LSR            
       LSR            
       TAY            
       LDA    $98     
       AND    #$F3    
       ORA    LFD1A,Y 
       STA    $98     
LFA1B: LDA    $D4,X   
       LDX    #$05    
       JSR    LFD67   
       LDX    $EF     
       LDA    $D1,X   
       STA    $89     
       LDA    $D2,X   
       CMP    #$EC    
       BCS    LFA31   
       SEC            
       SBC    $D1,X   
LFA31: STA    $8A     
       LDA    $D3,X   
       LDX    #$00    
       JSR    LFD67   
       LDX    #$04    
       JSR    LFD7E   
       STA    WSYNC   
       STA    HMOVE   
LFA43: LDA    INTIM   
       BNE    LFA43   
       STA    VBLANK  
       STA    CXCLR   
       LDX    #$00    
       LDA    #$EA    
       STA    WSYNC   
       STA    TIM64T  
       STA    HMCLR   
       BIT    $AA     
       BMI    LFA64   
       LDA    $9E     
       CMP    #$B4    
       BEQ    LFA64   
       JMP    LFB0D   
LFA64: LDX    #$07    
       LDY    #$03    
LFA68: LDA.wy $00E6,Y 
       AND    #$0F    
       STA    $F0     
       ASL            
       ASL            
       ADC    $F0     
       ADC    #$54    
       STA    $F0,X   
       DEX            
       LDA.wy $00E6,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F0     
       ASL            
       ASL            
       ADC    $F0     
       ADC    #$54    
       STA    $F0,X   
       DEX            
       DEY            
       BPL    LFA68   
       STA    WSYNC   
       LDA    $DF     
       STA    COLUP0  
       LDA    #$02    
       STA    CTRLPF  
       LDA    $E0     
       STA    COLUP1  
       LDA    #$04    
       STA    $EE     
       LDA    #$FF    
       STA    $EF     
       NOP            
       NOP            
       LDX    #$05    
LFAA7: DEX            
       BPL    LFAA7   
LFAAA: LDY    $F0     
       LDA    ($EE),Y 
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       LDY    $F5     
       LDA    ($EE),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    PF2     
       LDY    $F2     
       LDA    ($EE),Y 
       STA    PF0     
       LDY    $F7     
       LDA    ($EE),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    PF2     
       LDY    $F4     
       LDA    ($EE),Y 
       AND    #$0F    
       STA    $81     
       LDY    $F1     
       LDA    ($EE),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $81     
       STA    PF1     
       LDA    #$00    
       STA    PF0     
       STA    PF2     
       LDY    $F6     
       LDA    ($EE),Y 
       AND    #$0F    
       STA    $81     
       LDY    $F3     
       LDA    ($EE),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $81     
       STA    PF1     
       DEC    $EE     
       BPL    LFAAA   
       LDA    $89     
       CLC            
       ADC    #$F9    
       STA    $89     
       LDA    #$00    
       STA    PF1     
       BEQ    LFB55   
LFB0D: JSR    LFD67   
       JSR    LFD7E   
       JSR    LFDE9   
       LDA    #$A0    
       STA    $EE     
       LDA    #$FC    
       STA    $EF     
       LDA    #$00    
       STA    NUSIZ0  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $C8     
       AND    #$39    
       CMP    #$39    
       BNE    LFB3C   
       LDA    $C8     
       ROL            
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
       LDA    LFD1E,Y 
       STA    $EE     
LFB3C: STA    WSYNC   
       STA    HMCLR   
       JSR    LFDE9   
       LDY    #$09    
LFB45: STA    WSYNC   
       LDA    ($EE),Y 
       STA    GRP0    
       TYA            
       LSR            
       BCS    LFB52   
       JSR    LFDE9   
LFB52: DEY            
       BPL    LFB45   
LFB55: LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       LDA    $84     
       STA    HMP1    
       STA    HMP0    
       AND    #$0F    
       TAY            
LFB64: DEY            
       BPL    LFB64   
       STA    RESP0   
       LDA    #$06    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$0A    
       LDA    #$FC    
LFB79: STA    $EF,X   
       DEX            
       DEX            
       BPL    LFB79   
       JSR    LFDE9   
       LDA    WSYNC   
       AND    #$40    
       STA    $82     
       STA    CXCLR   
       STA    HMCLR   
       LDA    #$F0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E1     
       STA    COLUP0  
       STA    COLUP1  
LFB9A: DEC    $8F     
       BPL    LFBA9   
       LDY    #$05    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       JMP    LF0A5   
LFBA9: JSR    LFDB2   
       JMP    LFB9A   
LFBAF: STX    $F2     
       LDX    LFD38,Y 
       LDA    $D5,X   
       CMP    #$56    
       BCS    LFBBE   
       CMP    #$45    
       BCS    LFBEC   
LFBBE: LDX    $F2     
       LDA    #$55    
       STA.wy $00D5,Y 
       LDA    LFCE2,X 
       AND    SWCHB   
       CLC            
       BEQ    LFBD0   
       LDA    #$04    
LFBD0: ADC    #$05    
       ADC    $9C,X   
       STA.wy $00D7,Y 
       LDA    #$03    
       JSR    LFE8B   
       LDA    $DB     
       AND    #$80    
       BEQ    LFBEC   
       LDA    $AA     
       EOR    #$40    
       STA    $AA     
       LDA    #$50    
       STA    $D9     
LFBEC: RTS            

LFBED: LDA    $C8     
       AND    #$39    
LFBF1: CMP    #$39    
       BNE    LFBFD   
       LDA    #$B4    
       STA    $9E     
       LDA    #$00    
       STA    $CC     
LFBFD: RTS            

LFBFE: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$EE,$6C,$EE,$7C
       .byte $B8,$B8,$7C,$12,$39,$29,$C6,$C6,$C6,$C6,$FE,$BA,$92,$92,$FE,$82
       .byte $C6,$C6,$FE,$BA,$92,$92,$FE,$82,$00,$00,$E7,$66,$24,$3C,$BD,$BD
       .byte $FF,$FF,$DB,$99,$00,$00,$42,$66,$FF,$7E,$5A,$42,$42,$00,$66,$25
       .byte $25,$3D,$9B,$9B,$BD,$FF,$18,$18,$C0,$C0,$E0,$E8,$EB,$FF,$FF,$FF
       .byte $83,$80,$FF,$81,$81,$FF,$FF,$81,$99,$FF,$FF,$FF,$81,$A5,$BD,$BD
       .byte $99,$BD,$FF,$DB,$99,$18,$A5,$99,$7E,$3C,$3C,$66,$E7,$C3,$81,$00
       .byte $00,$66,$24,$A5,$BD,$BD,$FF,$7E,$DB,$81,$A5,$A5,$A5,$A5,$FF,$DB
       .byte $BD,$3C,$18,$00,$3C,$3C,$99,$5A,$DB,$5A,$DB,$7E,$99,$24,$CC,$CC
       .byte $49,$31,$B5,$B7,$B7,$79,$31,$30,$03,$03,$03,$0F,$17,$FF,$FF,$0C
       .byte $7E,$00,$03,$0E,$7C,$1E,$FF,$FF,$1E,$7C,$0E,$03,$00,$00,$00,$3C
       .byte $24,$24,$24,$3C,$00,$00,$00,$00,$00,$00,$89,$42,$24,$FF,$24,$42
       .byte $81,$24,$42,$00,$00,$18,$3C,$66,$C3,$81,$C3,$66,$3C,$18,$FF,$81
       .byte $BD,$A5,$A5,$A5,$A5,$BD,$81,$FF
LFCD6: .byte $28,$78,$64,$50,$3C,$8C
LFCDC: .byte $01,$02
LFCDE: .byte $04,$08,$10,$20
LFCE2: .byte $40,$80
LFCE4: .byte $22,$16,$0C,$08,$05,$04,$03,$02,$00
LFCED: .byte $20,$20,$15,$15,$10,$0B,$07,$07,$04
LFCF6: .byte $01,$01,$02,$02,$03,$03,$03,$04,$05
LFCFF: .byte $0F,$0E,$0F,$00,$02,$00,$04,$02,$34,$52,$CC,$F6,$14,$0F,$00,$E2
LFD0F: .byte $05,$0A,$0F,$14
LFD13: .byte $BD,$B4,$AB
LFD16: .byte $54,$59,$5E,$63
LFD1A: .byte $00,$08,$04,$0C
LFD1E: .byte $AA,$B6,$C0,$CC
LFD22: .byte $FC,$FC,$30,$3F,$3F,$18,$1F,$18,$18
LFD2B: .byte $05,$10,$15,$20,$25,$30
LFD31: .byte $00,$09,$12,$1B,$24,$2D,$36
LFD38: .byte $01
LFD39: .byte $00,$10,$20,$30,$40,$50,$60,$70,$80,$90,$00
LFD44: .byte $10,$8B,$D1,$BF,$9D,$D1,$D1
LFD4B: .byte $18,$10,$61,$D1,$32,$90,$14
LFD52: .byte $10,$10,$30,$30,$10,$10,$10
LFD59: .byte $00,$00,$08,$00,$00,$00,$00
LFD60: .byte $05
LFD61: .byte $03,$17,$2B,$23,$75,$B4
LFD67: LDY    #$FF    
       SEC            
LFD6A: INY            
       SBC    #$0F    
       BCS    LFD6A   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    $83,X   
       ORA    $83,X   
       STA    $83,X   
       RTS            

LFD7E: STA    WSYNC   
       NOP            
       INY            
       STA    HMP0,X  
       NOP            
LFD85: DEY            
       BPL    LFD85   
       STA    RESP0,X 
       RTS            

LFD8B: CPY    #$09    
       BCS    LFDB1   
LFD8F: STX    $EE     
       INX            
       JSR    LFDFB   
       AND    #$20    
       BNE    LFD9B   
       DEX            
       DEX            
LFD9B: CPX    #$08    
       BCS    LFDA8   
       LDA    $EA     
       CMP    #$C0    
       BCC    LFDA8   
       JSR    LFDAA   
LFDA8: LDX    $EE     
LFDAA: LDA    ($F0),Y 
       AND    LFF4C,X 
       STA    ($F0),Y 
LFDB1: RTS            

LFDB2: DEC    $89     
       LDA    $89     
       BMI    LFDC7   
       CMP    #$04    
       LDA    #$02    
       BCC    LFDBF   
       LSR            
LFDBF: STA    ENABL   
       STA    WSYNC   
       STA    HMCLR   
       BPL    LFDE4   
LFDC7: CLC            
       ADC    $8A     
       STA    $89     
       LDA    #$00    
       STA    WSYNC   
       STA    HMCLR   
       STA    ENABL   
       LDA    $88     
       STA    HMBL    
       AND    #$0F    
       TAY            
LFDDB: DEY            
       BPL    LFDDB   
       STA    RESBL   
       LDA    #$7C    
       STA    $8A     
LFDE4: STA    WSYNC   
       STA    HMOVE   
       RTS            

LFDE9: DEC    $89     
       LDA    $89     
       CMP    #$04    
       BCC    LFDF5   
       LDA    #$00    
       BCS    LFDF8   
LFDF5: NOP            
       LDA    #$02    
LFDF8: STA    ENABL   
       RTS            

LFDFB: LDA    $EA     
       ASL            
       ASL            
       CLC            
       ADC    $EA     
       CLC            
       ADC    #$59    
       STA    $EA     
       RTS            

LFE08: LDA    $C7     
       BNE    LFE68   
       INC    $CD,X   
       LDY    $CB,X   
       BEQ    LFE68   
       CPY    #$05    
       BEQ    LFE1A   
       CPY    #$02    
       BNE    LFE3E   
LFE1A: LDY    $CD,X   
       CPY    #$08    
       BNE    LFE28   
       LDA    $CB,X   
       CMP    #$05    
       BEQ    LFE6C   
       BNE    LFE68   
LFE28: LDA    LFFEA,Y 
       STA    AUDF0,X 
       LDA    #$0C    
       STA    AUDC0,X 
       LDA    #$CB    
       CMP    #$05    
       LDA    #$04    
       BCC    LFE3B   
       LDA    #$08    
LFE3B: STA    AUDV0,X 
       RTS            

LFE3E: LDA    LFD44,Y 
       STA    $EE     
       LDA    #$FF    
       STA    $EF     
       LDY    $CF,X   
       LDA    ($EE),Y 
       CMP    $CD,X   
       BNE    LFE67   
       INY            
       LDA    ($EE),Y 
       BMI    LFE68   
       CMP    #$3F    
       BEQ    LFE6C   
       STA    AUDF0,X 
       INY            
       LDA    ($EE),Y 
       STA    AUDC0,X 
       INY            
       LDA    ($EE),Y 
       INY            
       STY    $CF,X   
       STA    AUDV0,X 
LFE67: RTS            

LFE68: LDA    #$00    
       STA    $CB,X   
LFE6C: LDA    #$00    
       STA    AUDV0,X 
       STA    $CD,X   
       STA    $CF,X   
       RTS            

LFE75: LDA    $CA     
       AND    #$01    
       ORA    #$80    
       STA    $CA     
       RTS            

LFE7E: CMP    $CB     
       BCC    LFE8A   
       STA    $CB     
       LDA    #$00    
       STA    $CD     
       STA    $CF     
LFE8A: RTS            

LFE8B: CMP    $CC     
       BCC    LFE97   
       STA    $CC     
       LDA    #$00    
       STA    $CE     
       STA    $D0     
LFE97: RTS            


START:
       CLD            
       SEI            
       LDX    #$00    
       TXA            
LFE9D: STA    VSYNC,X 
       INX            
       BNE    LFE9D   
       DEX            
       TXS            
       JSR    LFEB2   
       LDA    #$C5    
       STA    $C7     
       LDA    #$80    
       STA    $AA     
       JMP    LF4D4   
LFEB2: LDA    #$00    
       STA    $E6     
       STA    $E8     
       STA    $E7     
       STA    $E9     
       STA    $C7     
       LDA    #$01    
LFEC0: STA    $AA     
       LDA    #$00    
       STA    $90     
       STA    $99     
       STA    $C6     
       JSR    LFE75   
       LDA    #$03    
       STA    $C9     
       LDA    #$FF    
       STA    $8B     
       LDA    $98     
       AND    #$53    
       LDY    $EC     
       ORA    LFD52,Y 
       ORA    LFD59,Y 
       STA    $98     
       LDA    $E5     
       AND    #$7F    
       STA    $E5     
       JSR    LFEFA   
       LDX    #$0A    
LFEEE: LDA    $90,X   
       STA    $9F,X   
       DEX            
       BPL    LFEEE   
       LDA    #$6E    
       STA    $A7     
       RTS            

LFEFA: LDX    #$05    
       LDA    #$3F    
LFEFE: STA    $92,X   
       DEX            
       BPL    LFEFE   
       STA    $EB     
       STA    $D7     
       STA    $D8     
       STA    $D3     
       STA    $D4     
       LDA    #$F6    
       STA    $D5     
       STA    $D6     
       STA    $D1     
       STA    $D2     
       LDX    #$05    
LFF19: LDA    LFD61,X 
       STA    $99,X   
       DEX            
       BNE    LFF19   
       TXA            
       STA    $CB     
       STA    $CC     
       LDA    #$24    
       STA    $91     
       LDA    #$42    
       ORA    $98     
       STA    $98     
       LDA    #$30    
       STA    $C8     
       LDA    $AA     
       AND    #$F7    
       STA    $AA     
LFF3A: LDX    #$1A    
       LDY    #$08    
LFF3E: LDA    LFD22,Y 
       STA    $AB,X   
       DEY            
       BPL    LFF48   
       LDY    #$08    
LFF48: DEX            
       BPL    LFF3E   
       RTS            

LFF4C: .byte $7F,$BF,$DF,$EF,$F7,$FB,$FD,$FE,$E7,$A5,$A5,$A5,$E7,$E7,$42,$42
       .byte $66,$42,$E7,$24,$E7,$81,$E7,$E7,$81,$E7,$81,$E7,$81,$81,$E7,$A5
       .byte $A5,$E7,$81,$E7,$24,$E7,$E7,$A5,$E7,$24,$24,$81,$81,$81,$81,$E7
       .byte $E7,$A5,$E7,$A5,$E7,$81,$81,$E7,$A5,$E7,$00,$00,$00,$00,$00,$01
       .byte $16,$09,$0A,$02,$19,$08,$0A,$03,$1F,$0C,$08,$04,$16,$0E,$07,$06
       .byte $FF,$01,$18,$0C,$03,$03,$16,$0C,$03,$05,$14,$0C,$03,$07,$12,$0C
       .byte $03,$09,$10,$0C,$03,$0B,$0E,$0C,$03,$0D,$0D,$0C,$03,$0F,$10,$0C
       .byte $03,$11,$3F,$01,$18,$08,$07,$04,$19,$08,$05,$10,$1C,$08,$02,$30
       .byte $1E,$08,$01,$50,$FF,$01,$18,$03,$0C,$09,$10,$0A,$08,$11,$12,$0E
       .byte $0F,$19,$16,$0E,$08,$29,$1A,$0E,$04,$39,$1D,$0E,$02,$49
LFFEA: .byte $FF,$10,$0D,$0A,$08,$07,$06,$05
LFFF2: .byte $06,$07,$03,$04,$05,$06,$00,$00,$98,$FE,$98,$FE,$98,$FE
