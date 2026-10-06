; Disassembly of roms/sagent.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/sagent.bin
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
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
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
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       DEX            
       BNE    LF005   
       LDA    #$10    
       STA    SWBCNT  
       LDA    #$40    
       STA    $AE     
       LDA    #$20    
       STA    $84     
       LDA    #$90    
       STA    $C4     
       LDA    #$2F    
       STA    $AB     
       LDA    #$03    
       STA    $D2     
       STA    $D3     
       LDA    #$50    
       STA    $DC     
       LDA    #$02    
       STA    $DD     
       LDA    #$FE    
       STA    $E1     
       LDA    #$63    
       STA    $E0     
       LDA    #$F0    
       STA    $E5     
       DEC    $FA     
LF03B: LDA    #$82    
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
       LDA    #$2C    
       STA    TIM64T  
       LDX    #$FF    
       TXS            
       JMP    LF72E   
LF05E: LDA    INTIM   
       BNE    LF05E   
       STA    WSYNC   
       STA    VBLANK  
       LDA    $C0     
       BEQ    LF06F   
       LDA    #$28    
       BNE    LF071   
LF06F: LDA    #$C8    
LF071: AND    $FA     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$FB    
       LDX    #$0A    
LF07B: STA    $B8,X   
       DEX            
       DEX            
       BPL    LF07B   
       STA    WSYNC   
       LDA    #$14    
       STA    HMP1    
       AND    #$0F    
       TAX            
LF08A: DEX            
       BPL    LF08A   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$03    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
LF0A7: STY    $8D     
       LDA    ($C1),Y 
       STA    $91     
       STA    WSYNC   
       LDA    ($B7),Y 
       STA    GRP0    
       LDA    ($B9),Y 
       STA    GRP1    
       LDA    ($BB),Y 
       STA    GRP0    
       LDA    ($BF),Y 
       TAX            
       LDA    ($BD),Y 
       LDY    $91     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $8D     
       DEY            
       BPL    LF0A7   
       INY            
       STA    WSYNC   
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDA    #$FF    
       STA    $80     
       STY    $B8     
       STY    $BA     
       STY    $89     
       LDA    #$FB    
       STA    $E6     
       STA    WSYNC   
       LDA    $81     
       NOP            
       STA    HMP0    
       AND    #$0F    
       TAY            
LF0F6: DEY            
       BPL    LF0F6   
       STA    RESP0   
       STA    WSYNC   
       LDA    $82     
       NOP            
       STA    HMP1    
       AND    #$0F    
       TAY            
LF105: DEY            
       BPL    LF105   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$34    
       STA    CTRLPF  
       LDA    #$0B    
       AND    $FA     
       STA    COLUPF  
       BIT    $C5     
       BVS    LF120   
       LDA    #$00    
       BEQ    LF122   
LF120: LDA    #$08    
LF122: STA    REFP0   
       LDA    $C5     
       AND    #$01    
       BEQ    LF12E   
       LDA    #$00    
       BEQ    LF130   
LF12E: LDA    #$08    
LF130: STA    REFP1   
       LDY    #$0F    
       LDX    $CB     
LF136: STA    WSYNC   
       LDA    LFBB0,X 
       STA    GRP0    
       LDA    ($E5),Y 
       STA    GRP1    
       LDA    LFBC0,Y 
       STA    COLUP0  
       LDA    LFBE0,Y 
       STA    COLUP1  
       LDA    ($E0),Y 
       STA    ENABL   
       DEX            
       DEY            
       STA    HMCLR   
       BNE    LF136   
       STY    ENABL   
       STA    WSYNC   
       LDA    #$50    
       STA    PF0     
       LDA    #$AA    
       STA    PF1     
       LDA    #$55    
       STA    PF2     
       STY    GRP0    
       STY    GRP1    
       LDX    $B4     
       LDA    $D5     
       BPL    LF181   
       LDA    $D6     
       AND    #$01    
       BEQ    LF181   
       LDA    $AF     
       AND    #$40    
       BNE    LF17F   
       LDX    #$00    
       BEQ    LF181   
LF17F: LDX    #$01    
LF181: STX    $C0     
       LDA    $CC,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$10    
       STA    $C1     
       STA    WSYNC   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$0E    
       AND    $FA     
       STA    COLUPF  
       LDA    $CC,X   
       AND    #$F0    
       LSR            
       ADC    #$10    
       STA    $BF     
       LDA    $CE,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$10    
       STA    $BD     
       LDA    $CE,X   
       AND    #$F0    
       LSR            
       ADC    #$10    
       STA    $BB     
       STA    WSYNC   
       LDA    #$70    
       STA    PF0     
       LDA    #$38    
       STA    PF1     
       LDA    #$87    
       STA    PF2     
       LDA    $D0,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$10    
       STA    $B9     
       LDA    $D0,X   
       AND    #$F0    
       LSR            
       ADC    #$10    
       STA    $B7     
       LDX    #$FF    
       LDA    #$1E    
       STX    WSYNC   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       AND    $FA     
       STA    COLUPF  
       LDY    #$60    
       LDX    #$00    
       LDA    $D5     
       CMP    #$10    
       BNE    LF1F9   
       LDX    #$60    
LF1F9: LDA    $B7     
       CMP    #$10    
       BNE    LF218   
       STX    $B7     
       LDA    $B9     
       CMP    #$10    
       BNE    LF218   
       STX    $B9     
       STY    $B7     
       LDA    $BB     
       CMP    #$10    
       BNE    LF218   
       STX    $BB     
       STY    $B9     
       JMP    LF21C   
LF218: LDA    #$00    
       STA    $C2     
LF21C: STA    WSYNC   
       LDA    $C2     
       BEQ    LF236   
       LDA    $BD     
       CMP    #$10    
       BNE    LF236   
       STX    $BD     
       STY    $BB     
       LDA    $BF     
       CMP    #$10    
       BNE    LF236   
       STX    $BF     
       STY    $BD     
LF236: LDA    #$05    
       STA    WSYNC   
       STA    CTRLPF  
       LDA    #$F0    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDY    #$70    
       LDX    $D5     
       STA    WSYNC   
       STY    PF0     
       CPX    #$10    
       BEQ    LF275   
       LDA    $C5     
       AND    #$02    
       BEQ    LF275   
       LDA    $C5     
       AND    #$FD    
       STA    $C5     
       SED            
       LDX    $B4     
       CLC            
       LDA    $DC     
       ADC    $CC,X   
       STA    $CC,X   
       LDA    $DD     
       ADC    $CE,X   
       STA    $CE,X   
       LDA    $DE     
       ADC    $D0,X   
       STA    $D0,X   
       CLD            
LF275: STA    WSYNC   
       LDA    #$30    
       STA    PF0     
       LDA    #$10    
       LDX    $D5     
       STA    WSYNC   
       STA    PF0     
       CPX    #$10    
       BEQ    LF2CF   
       LDX    $B4     
       LDA    $C4     
       AND    #$04    
       BNE    LF2BC   
       LDA    $C6     
       BEQ    LF2CF   
       BMI    LF2B8   
       LDA    $C5     
       BPL    LF2CF   
       LDA    #$FF    
       STA    $C7     
       LDA    $CC,X   
       STA    $D7     
       LDA    $CE,X   
       STA    $D8     
       LDA    $D0,X   
       CMP    $D9     
       BEQ    LF2AD   
       STA    $DF     
LF2AD: STA    $D9     
       LDA    $C5     
       AND    #$7F    
       STA    $C5     
       JMP    LF2CF   
LF2B8: LDA    $C7     
       BNE    LF2CB   
LF2BC: LDA    $D7     
       STA    $CC,X   
       LDA    $D8     
       STA    $CE,X   
       LDA    $D9     
       STA    $D0,X   
       JMP    LF2CF   
LF2CB: LDA    #$00    
       STA    $C7     
LF2CF: STA    WSYNC   
       LDX    #$00    
       STX    PF0     
       STX    REFP0   
       STX    REFP1   
       LDA    #$FF    
       STA    $8D     
       LDA    #$FC    
       STA    $91     
       LDA    $DB     
       AND    $FA     
       STA    COLUP0  
LF2E7: STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       LDX    $B4     
       LDA    COLUPF,X
       BMI    LF2F7   
       INC    $89     
LF2F7: INC    $80     
       LDA    $8A     
       CMP    $80     
       BNE    LF31D   
       INC    $B8     
       LDA    $DA     
       STA    $8C     
       LDA    $8E     
       CMP    $80     
       BEQ    LF32A   
       STA    WSYNC   
       LDX    $B4     
       LDA    COLUPF,X
       BMI    LF315   
       INC    $89     
LF315: INC    $80     
       LDA    #$AD    
       STA    $90     
       BNE    LF34E   
LF31D: LDA    $80     
       CMP    $8E     
       BEQ    LF326   
       JMP    LF3BF   
LF326: LDA    #$85    
       STA    $8C     
LF32A: INC    $BA     
       LDX    $B4     
       LDA    $80     
       AND    #$08    
       STA    WSYNC   
       ASL            
       ADC    $83     
       STA    $90     
       LDA    COLUPF,X
       BMI    LF33F   
       INC    $89     
LF33F: INC    $80     
       LDA    $BA     
       EOR    $9B     
       BEQ    LF34E   
       CLC            
       LDA    $8E     
       ADC    $A6,X   
       STA    $8E     
LF34E: LDX    $B8     
       DEX            
       STA    WSYNC   
       INC    $80     
       LDA    $93,X   
       NOP            
       STA    HMP0    
       AND    #$0F    
       TAY            
LF35D: DEY            
       BPL    LF35D   
       STA    RESP0   
       LDX    $BA     
       DEX            
       STA    WSYNC   
       INC    $80     
       LDA    $9C,X   
       NOP            
       STA    HMP1    
       AND    #$0F    
       TAY            
LF371: DEY            
       BPL    LF371   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $B4     
       LDA    COLUPF,X
       BMI    LF387   
       CLC            
       LDA    $89     
       ADC    #$03    
       STA    $89     
LF387: INC    $80     
       LDA    $8C     
       CMP    #$85    
       BEQ    LF39E   
       LDA    $B8     
       CMP    $92     
       BEQ    LF39E   
       LDX    $B4     
       CLC            
       LDA    $8A     
       ADC    $A4,X   
       STA    $8A     
LF39E: STA    HMCLR   
       LDY    #$0B    
LF3A2: STA    WSYNC   
       LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       LDA    ($FC),Y 
       AND    $FA     
       STA    COLUP1  
       LDX    $B4     
       LDA    COLUPF,X
       BMI    LF3BA   
       INC    $89     
LF3BA: INC    $80     
       DEY            
       BNE    LF3A2   
LF3BF: LDA    $80     
       CMP    #$6F    
       BCS    LF3C8   
       JMP    LF2E7   
LF3C8: STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDA    $A8     
       NOP            
       STA    HMP0    
       AND    #$0F    
       TAY            
LF3D6: DEY            
       BPL    LF3D6   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$0E    
       AND    $FA     
       STA    COLUPF  
       LDA    $8B     
       BEQ    LF3EE   
       DEC    $8B     
       JMP    LF406   
LF3EE: LDA    #$68    
       AND    $FA     
       STA    COLUP0  
       LDA    #$FD    
       STA    $AA     
       LDA    $AF     
       AND    #$08    
       BNE    LF402   
       LDA    #$8E    
       BNE    LF404   
LF402: LDA    #$99    
LF404: STA    $A9     
LF406: LDY    #$0B    
LF408: STA    WSYNC   
       LDA    ($A9),Y 
       STA    GRP0    
       LDA    LFFE2,Y 
       AND    $FA     
       STA    COLUP0  
       STA    HMCLR   
       DEY            
       BNE    LF408   
       LDA    #$20    
       STA    $80     
       LDA    #$FF    
       LDX    $B4     
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STY    GRP0    
       LDA    $C4     
       BPL    LF456   
       AND    #$10    
       BEQ    LF456   
       LDA    $C5     
       AND    #$20    
       BEQ    LF456   
       TXA            
       BNE    LF444   
       LDA    SWCHA   
       BMI    LF456   
       BPL    LF44A   
LF444: LDA    SWCHA   
       ASL            
       BMI    LF456   
LF44A: LDA    $A8     
       STA    $AC     
       LDA    $C4     
       AND    #$EF    
       ORA    #$20    
       STA    $C4     
LF456: BIT    $C4     
       BVS    LF45E   
       LDA    #$00    
       BEQ    LF460   
LF45E: LDA    #$08    
LF460: STA    REFP1   
       STA    WSYNC   
       LDA    #$28    
       AND    $FA     
       STA    COLUPF  
       LDA    $AC     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF471: DEY            
       BPL    LF471   
       STA    RESP0   
       LDY    $D2,X   
       STA    WSYNC   
       LDA    LFFAD,Y 
       STA    NUSIZ1  
       LDA    $AD     
       STA    HMP1    
       AND    #$0F    
       TAY            
LF486: DEY            
       BPL    LF486   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    CXCLR   
       LDY    #$00    
       STY    PF2     
       LDA    #$40    
       STA    PF0     
       LDA    #$80    
       STA    PF1     
       LDA    #$18    
       STA    COLUP0  
       LDA    #$07    
       STA    $8D     
       LDA    $C4     
       AND    #$20    
       BEQ    LF4C7   
       LDA    $85     
       BEQ    LF4B9   
       DEC    $85     
       BEQ    LF4BD   
       LDA    #$0F    
       STA    $8D     
       BNE    LF4C7   
LF4B9: DEC    $AB     
       BNE    LF4C7   
LF4BD: LDA    $C4     
       AND    #$DF    
       STA    $C4     
       LDY    #$28    
       STY    $AB     
LF4C7: STA    WSYNC   
       STA    HMCLR   
       LDA    $CA     
       STA    $B8     
       LDA    $AB     
       EOR    #$FF    
       STA    $91     
       LDA    #$FE    
       STA    $C9     
LF4D9: LDA    $80     
       CMP    #$0B    
       BMI    LF4E3   
       LDX    #$00    
       BEQ    LF4ED   
LF4E3: LDY    $B8     
       LDX    LFE09,Y 
       LDA    ($C8),Y 
       DEC    $B8     
       TAY            
LF4ED: LDA    $80     
       CLC            
       ADC    $91     
       AND    #$F8    
       EOR    #$F8    
       STA    WSYNC   
       STX    GRP1    
       STY    COLUP1  
       BEQ    LF502   
       LDA    #$00    
       BEQ    LF509   
LF502: LDY    $8D     
       LDA    LFFB1,Y 
       DEC    $8D     
LF509: STA    GRP0    
       DEC    $80     
       BNE    LF4D9   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP1    
       STY    GRP0    
       LDX    #$FF    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$88    
       AND    $FA     
       STA    COLUPF  
       STY    REFP1   
       STY    NUSIZ1  
       STA    WSYNC   
       LDA    $86     
       BEQ    LF549   
       LDA    $85     
       BNE    LF549   
       LDA    $C4     
       AND    #$20    
       BEQ    LF549   
       LDA    COLUP1  
       BPL    LF549   
       STA    CXCLR   
       LDA    #$0F    
       STA    $85     
       LDA    $C5     
       ORA    #$80    
       STA    $C5     
LF549: LDA    $8F     
       CMP    #$14    
       BNE    LF555   
       LDA    $C4     
       ORA    #$08    
       STA    $C4     
LF555: STA    WSYNC   
       INC    $AF     
       BNE    LF565   
       INC    $B0     
       DEC    $FB     
       BNE    LF565   
       LDA    #$F2    
       STA    $FA     
LF565: LDA    #$80    
       SEC            
       SBC    $89     
       STA    $89     
       SBC    $C3     
       BPL    LF575   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF575: CMP    #$04    
       BCS    LF580   
       LDA    $C3     
       STA    $89     
       JMP    LF584   
LF580: LDA    $89     
       STA    $C3     
LF584: STA    $8D     
       STA    WSYNC   
       LDA    $C5     
       AND    #$20    
       BEQ    LF59A   
       LDA    $AF     
       AND    #$10    
       BNE    LF59A   
       LDA    #$43    
       STA    $C8     
       BNE    LF59E   
LF59A: LDA    #$23    
       STA    $C8     
LF59E: LDY    $AE     
       LDA    $B0     
       AND    #$03    
       CMP    #$02    
       BNE    LF5B6   
       LDA    $AF     
       BNE    LF5B6   
       LDA    #$D0    
       STA    $86     
       LDA    $C4     
       ORA    #$10    
       STA    $C4     
LF5B6: LDA    $AF     
       AND    #$01    
       STA    WSYNC   
       BNE    LF5CC   
       LDA    $CA     
       EOR    #$09    
       BEQ    LF5C8   
       LDA    #$09    
       BNE    LF5CA   
LF5C8: LDA    #$13    
LF5CA: STA    $CA     
LF5CC: LDA    $86     
       BEQ    LF5E5   
       DEC    $86     
       BNE    LF5D8   
       LDA    #$80    
       BNE    LF5DA   
LF5D8: LDA    #$10    
LF5DA: STA    $C6     
       LDA    $C5     
       ORA    #$20    
       STA    $C5     
       JMP    LF60B   
LF5E5: LDA    #$00    
       STA    $C6     
       LDA    $C5     
       AND    #$DF    
       STA    $C5     
       BIT    $C4     
       BVS    LF600   
       DEY            
       CPY    #$15    
       BNE    LF60B   
       LDA    $C4     
       ORA    #$40    
       STA    $C4     
       BNE    LF60B   
LF600: INY            
       CPY    #$72    
       BNE    LF60B   
       LDA    $C4     
       AND    #$BF    
       STA    $C4     
LF60B: TYA            
       STA    $AE     
       STA    WSYNC   
       LDA    $8A     
       CMP    #$FF    
       BEQ    LF646   
       CMP    #$60    
       BCC    LF646   
       DEC    $92     
       JSR    LFEA6   
       SEC            
       STA    WSYNC   
       SBC    $89     
       BPL    LF62B   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF62B: CMP    #$09    
       BCS    LF648   
       INC    $8F     
       LDA    #$08    
       STA    $8B     
       LDA    #$FA    
       STA    $AA     
       LDA    #$FF    
       STA    $A9     
       LDA    $C5     
       ORA    #$02    
       STA    $C5     
       JMP    LF648   
LF646: STA    WSYNC   
LF648: STA    WSYNC   
       LDA    $8E     
       CMP    #$FF    
       BEQ    LF688   
       CMP    #$60    
       BCC    LF688   
       DEC    $9B     
       JSR    LFEA6   
       SEC            
       STA    WSYNC   
       SBC    $89     
       BPL    LF665   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF665: CMP    #$09    
       BCS    LF68A   
       LDA    #$30    
       STA    $8B     
       LDA    #$FD    
       STA    $AA     
       LDA    #$A4    
       STA    $A9     
       LDA    $D5     
       BEQ    LF68A   
       CMP    #$10    
       BEQ    LF68A   
       LDA    $C4     
       ORA    #$04    
       AND    #$7F    
       STA    $C4     
       JMP    LF68A   
LF688: STA    WSYNC   
LF68A: STA    WSYNC   
       LDA    $C4     
       AND    #$02    
       BNE    LF6DA   
       LDA    $C4     
       AND    #$04    
       BEQ    LF6DA   
       LDA    $C4     
       ORA    #$02    
       STA    $C4     
       LDA    $B4     
       BNE    LF6C8   
       DEC    $D2     
       BEQ    LF6B8   
       LDA    $D6     
       AND    #$01    
       BEQ    LF6B4   
       LDA    $D3     
       BEQ    LF6B4   
LF6B0: LDA    #$50    
       BNE    LF6D8   
LF6B4: LDA    #$40    
       BNE    LF6D8   
LF6B8: LDA    $D6     
       AND    #$01    
       BNE    LF6C2   
LF6BE: LDA    #$80    
       BNE    LF6D8   
LF6C2: LDA    $D3     
       BEQ    LF6BE   
       BNE    LF6B0   
LF6C8: DEC    $D3     
       BNE    LF6D2   
       LDA    $D2     
       BEQ    LF6BE   
       BNE    LF6B4   
LF6D2: LDA    $D2     
       BNE    LF6B4   
       BEQ    LF6B0   
LF6D8: STA    $D5     
LF6DA: STA    WSYNC   
       LDA    $E0     
       CMP    #$72    
       BNE    LF702   
       LDA    $E3     
       BIT    $C5     
       BVS    LF6F3   
       SEC            
       SBC    #$04    
       STA    $E3     
       CMP    #$0E    
       BCS    LF71E   
       BCC    LF6FC   
LF6F3: CLC            
       ADC    #$04    
       STA    $E3     
       CMP    #$A0    
       BCC    LF71E   
LF6FC: LDA    #$63    
       STA    $E0     
       BNE    LF71E   
LF702: DEC    $E2     
       BNE    LF71E   
       LDA    #$70    
       STA    $E2     
       LDA    $84     
       BIT    $C5     
       BVS    LF715   
       SEC            
       SBC    #$04    
       BNE    LF718   
LF715: CLC            
       ADC    #$08    
LF718: STA    $E3     
       LDA    #$72    
       STA    $E0     
LF71E: LDX    #$04    
LF720: STA    WSYNC   
       DEX            
       BNE    LF720   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       JMP    LF03B   
LF72E: LDA    $84     
       JSR    LFE82   
       STA    $81     
       LDA    $AE     
       JSR    LFE82   
       STA    $AD     
       LDA    $E3     
       JSR    LFE82   
       STA    $E4     
       LDA    $AF     
       AND    #$08    
       BEQ    LF74D   
       LDA    #$0E    
       BNE    LF74F   
LF74D: LDA    #$2E    
LF74F: STA    $CB     
       LDY    $84     
       LDA    $AF     
       AND    #$01    
       BNE    LF781   
       BIT    $C5     
       BVS    LF76C   
       DEY            
       CPY    #$10    
       BCS    LF781   
       LDA    $C5     
       ORA    #$45    
       STA    $C5     
       LDA    #$90    
       BNE    LF77B   
LF76C: INY            
       CPY    #$95    
       BCC    LF781   
       LDA    $C5     
       AND    #$BE    
       ORA    #$04    
       STA    $C5     
       LDA    #$15    
LF77B: STA    $E7     
       LDA    #$70    
       STA    $E5     
LF781: STY    $84     
       LDA    $AF     
       AND    #$01    
       BEQ    LF78C   
       JMP    LF7DB   
LF78C: LDY    $E7     
       LDA    $E5     
       CMP    #$F0    
       BEQ    LF7DB   
       LDA    $C5     
       AND    #$01    
       BEQ    LF7B6   
       DEY            
       CPY    #$15    
       BCC    LF7D7   
       LDA    $C5     
       AND    #$04    
       BEQ    LF7D2   
       TYA            
       SEC            
       SBC    $84     
       CMP    #$20    
       BCS    LF7D2   
       LDA    $C5     
       AND    #$FA    
       STA    $C5     
       JMP    LF7D2   
LF7B6: INY            
       CPY    #$A0    
       BCS    LF7D7   
       LDA    $C5     
       AND    #$04    
       BEQ    LF7D2   
       LDA    $84     
       SEC            
       SBC    $E7     
       CMP    #$20    
       BCS    LF7D2   
       LDA    $C5     
       ORA    #$01    
       AND    #$FB    
       STA    $C5     
LF7D2: STY    $E7     
       JMP    LF7DB   
LF7D7: LDA    #$F0    
       STA    $E5     
LF7DB: LDA    $E5     
       CMP    #$F0    
       BEQ    LF7EF   
       LDA    $AF     
       AND    #$08    
       BEQ    LF7EB   
       LDA    #$70    
       BNE    LF7ED   
LF7EB: LDA    #$80    
LF7ED: STA    $E5     
LF7EF: LDA    $E7     
       JSR    LFE82   
       STA    $82     
       LDA    $B0     
       AND    #$02    
       CMP    #$02    
       BNE    LF80A   
       LDA    $AF     
       BNE    LF80A   
       LDA    $89     
       AND    #$40    
       ORA    $C5     
       STA    $C5     
LF80A: LDA    SWCHB   
       AND    #$02    
       BEQ    LF81A   
       LDA    $D4     
       AND    #$7F    
       STA    $D4     
       JMP    LF84F   
LF81A: LDA    $D4     
       BMI    LF894   
       ORA    #$80    
       STA    $D4     
       LDA    #$10    
       STA    $D5     
       JSR    LFEBB   
       LDA    #$03    
       STA    $D2     
       STA    $D3     
       LDA    $D6     
       CLC            
       ADC    #$01    
       CMP    #$06    
       BNE    LF83A   
       LDA    #$00    
LF83A: STA    $D6     
       CLC            
       ADC    #$01    
       STA    $CC     
       STA    $CD     
       LDA    #$00    
       STA    $CE     
       STA    $CF     
       STA    $D0     
       STA    $D1     
       BEQ    LF894   
LF84F: LDA    SWCHB   
       AND    #$01    
       BNE    LF894   
       LDA    #$FF    
       STA    $FA     
       STA    $FB     
       LDA    #$20    
       STA    $D5     
       LDA    #$03    
       STA    $D2     
       STA    $D3     
       LDA    #$00    
       STA    $CC     
       STA    $CD     
       STA    $CE     
       STA    $CF     
       STA    $D0     
       STA    $D1     
       STA    $D7     
       STA    $D8     
       STA    $D9     
       STA    $92     
       STA    $9B     
       STA    $87     
       STA    $88     
       STA    $DA     
       STA    $83     
       STA    $F6     
       STA    $F7     
       STA    $B3     
       LDA    #$50    
       STA    $DC     
       LDA    #$01    
       STA    $DD     
LF894: LDA    $D5     
       CMP    #$20    
       BNE    LF8AC   
       LDA    SWCHA   
       BMI    LF8E3   
       LDA    #$00    
       STA    $B4     
       JSR    LFEBB   
       LDA    #$30    
       STA    $D5     
       BNE    LF8EC   
LF8AC: CMP    #$40    
       BNE    LF8C6   
       LDA    $8B     
       BNE    LF905   
       LDA    SWCHA   
       BMI    LF905   
       LDA    #$00    
       STA    $B4     
       JSR    LFEBB   
       LDA    #$30    
       STA    $D5     
       BNE    LF8EC   
LF8C6: CMP    #$50    
       BNE    LF8DD   
       LDA    SWCHA   
       ASL            
       BMI    LF905   
       LDA    #$01    
       STA    $B4     
       JSR    LFEBB   
       LDA    #$30    
       STA    $D5     
       BNE    LF8EC   
LF8DD: CMP    #$80    
       BNE    LF8EC   
       BEQ    LF905   
LF8E3: LDA    #$FF    
       STA    $8A     
       STA    $8E     
       JMP    LFA1E   
LF8EC: LDA    $8D     
       JSR    LFE82   
       STA    $A8     
       LDA    $DF     
       BEQ    LF905   
       LDA    #$00    
       STA    $DF     
       LDX    $B4     
       LDA    $D2,X   
       CMP    #$03    
       BEQ    LF905   
       INC    $D2,X   
LF905: LDA    $C4     
       AND    #$08    
       BEQ    LF917   
       LDA    $92     
       BNE    LF917   
       LDA    $9B     
       BNE    LF917   
       STA    $8F     
       BEQ    LF91A   
LF917: JMP    LF943   
LF91A: LDX    $B4     
       INC    $F6,X   
       LDY    $F6,X   
       CPY    #$03    
       BNE    LF928   
       LDY    #$00    
       STY    $F6,X   
LF928: LDA    $C4     
       AND    #$04    
       BNE    LF943   
       LDA    $C4     
       AND    #$F6    
       STA    $C4     
       LDX    $B4     
       LDA    $87,X   
       CLC            
       ADC    #$03    
       CMP    #$2D    
       BNE    LF941   
       LDA    #$00    
LF941: STA    $87,X   
LF943: LDX    $B4     
       LDY    $87,X   
       LDA    LFF59,Y 
       STA    $A4,X   
       INY            
       LDA    LFF59,Y 
       STA    $A6,X   
       INY            
       LDA    LFF59,Y 
       STA    $B1,X   
       CMP    #$01    
       BNE    LF96E   
       LDA    $D6     
       AND    #$06    
       BEQ    LF96E   
       CMP    #$02    
       BNE    LF96A   
       LDA    #$02    
       BNE    LF96C   
LF96A: LDA    #$03    
LF96C: STA    $B1,X   
LF96E: LDX    $B4     
       LDA    $C4     
       AND    #$01    
       BNE    LF99A   
       LDA    $A4,X   
       STA    $B5     
       LDA    $A6,X   
       STA    $B6     
       DEC    $B5     
       DEC    $B6     
       LDA    $B1,X   
       CMP    #$01    
       BEQ    LF994   
       DEC    $B5     
       DEC    $B6     
       CMP    #$02    
       BEQ    LF994   
       DEC    $B5     
       DEC    $B6     
LF994: LDA    $C4     
       ORA    #$01    
       STA    $C4     
LF99A: LDA    $C4     
       AND    #$04    
       BEQ    LF9A6   
       LDX    $B4     
       LDA    #$00    
       STA    $B1,X   
LF9A6: LDA    $B6     
       CLC            
       ADC    $B1,X   
       STA    $B6     
       LDA    $B5     
       CLC            
       ADC    $B1,X   
       STA    $B5     
       LDA    $C4     
       AND    #$08    
       BEQ    LF9C4   
       LDA    $92     
       BNE    LF9E5   
       LDA    #$FF    
       STA    $B5     
       BNE    LF9E5   
LF9C4: LDX    $B4     
       LDA    $B5     
       CMP    $A4,X   
       BNE    LF9E5   
       LDA    #$00    
       STA    $B5     
       INC    $92     
       LDX    #$06    
LF9D4: LDA    $93,X   
       INX            
       STA    $93,X   
       DEX            
       DEX            
       BPL    LF9D4   
       JSR    LFE97   
       JSR    LFE82   
       STA    $93     
LF9E5: LDA    $B5     
       STA    $8A     
       LDA    $C4     
       AND    #$08    
       BEQ    LF9F9   
       LDA    $9B     
       BNE    LFA1A   
       LDA    #$FF    
       STA    $B6     
       BNE    LFA1A   
LF9F9: LDX    $B4     
       LDA    $B6     
       CMP    $A6,X   
       BNE    LFA1A   
       LDA    #$00    
       STA    $B6     
       INC    $9B     
       LDX    #$06    
LFA09: LDA    $9C,X   
       INX            
       STA    $9C,X   
       DEX            
       DEX            
       BPL    LFA09   
       JSR    LFE97   
       JSR    LFE82   
       STA    $9C     
LFA1A: LDA    $B6     
       STA    $8E     
LFA1E: LDY    $F9     
       LDA    $D5     
       BEQ    LFA3F   
       CMP    #$20    
       BEQ    LFA3F   
       CMP    #$10    
       BEQ    LFA3F   
       CPY    #$07    
       BNE    LFA37   
       LDY    #$00    
       STY    $F9     
       JSR    LFD59   
LFA37: LDX    #$00    
       JSR    LFCB9   
       JMP    LFA5C   
LFA3F: CPY    #$07    
       BEQ    LFA4D   
       LDY    #$07    
       STY    $F9     
       JSR    LFD59   
       JSR    LFD74   
LFA4D: LDX    #$00    
       JSR    LFCB9   
       LDY    $F9     
       LDX    #$01    
       JSR    LFCB9   
       JMP    LFABF   
LFA5C: LDY    $F9     
       LDA    $85     
       BEQ    LFA6A   
       CPY    #$01    
       BEQ    LFAB1   
       LDY    #$01    
       BNE    LFAAC   
LFA6A: LDA    $C4     
       AND    #$20    
       BEQ    LFA78   
       CPY    #$02    
       BEQ    LFAB1   
       LDY    #$02    
       BNE    LFAAC   
LFA78: LDA    $C6     
       CMP    #$10    
       BNE    LFA86   
       CPY    #$03    
       BEQ    LFAB1   
       LDY    #$03    
       BNE    LFAAC   
LFA86: LDA    $8B     
       BEQ    LFAA0   
       LDA    $A9     
       CMP    #$A5    
       BNE    LFA98   
       CPY    #$04    
       BEQ    LFAB1   
       LDY    #$04    
       BNE    LFAAC   
LFA98: CPY    #$05    
       BEQ    LFAB1   
       LDY    #$05    
       BNE    LFAAC   
LFAA0: LDA    $E0     
       CMP    #$72    
       BNE    LFAB9   
       CPY    #$06    
       BEQ    LFAB1   
       LDY    #$06    
LFAAC: STY    $F9     
       JSR    LFD74   
LFAB1: LDX    #$01    
       JSR    LFCB9   
       JMP    LFABF   
LFAB9: LDA    #$00    
       STA    AUDV1   
       STA    $F9     
LFABF: STA    WSYNC   
       LDA    $E4     
       NOP            
       STA    HMBL    
       AND    #$0F    
       TAY            
LFAC9: DEY            
       BPL    LFAC9   
       STA    RESBL   
       LDX    $B4     
       LDA    $D2,X   
       BNE    LFAD8   
       LDA    #$64    
       STA    $CA     
LFAD8: LDY    $F6,X   
       LDA    LFC0C,Y 
       STA    $DA     
       LDA    LFC1C,Y 
       STA    $83     
       JMP    LFDD1   
LFAE7: .byte $6D,$33,$ED,$33,$6F,$39,$6D,$D8,$6D,$11,$6D,$3C,$ED,$FA,$0D,$1D
       .byte $5D,$FC,$BD,$10,$4D,$F0,$ED,$31,$CD,$00,$14,$7F,$15,$7F,$54,$7E
       .byte $14,$00,$00,$00,$00,$05,$09,$1F,$0F,$3C,$66,$66,$66,$66,$66,$66
       .byte $3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46
       .byte $3C,$3C,$46,$06,$1C,$1C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C
       .byte $0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62
       .byte $3C,$18,$18,$18,$18,$0C,$0C,$26,$7E,$3C,$66,$66,$66,$3C,$66,$66
       .byte $3C,$3C,$46,$06,$06,$3E,$66,$66,$3C,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFB69: .byte $00,$0F,$0F,$0E,$0E,$0E,$06,$0B,$60,$21,$6F,$7F,$3C,$1C,$3E,$3E
       .byte $3E,$14,$7C,$9C,$18,$38,$18,$F5,$06,$12,$36,$64,$34,$1C,$3E,$3E
       .byte $3E,$14,$7C,$1C,$18,$38,$18
LFB90: .byte $00,$04,$04,$04,$04,$00,$04
LFB97: .byte $00,$08,$0C,$0C,$0F,$0C,$08,$0D
LFB9F: .byte $03,$03,$03,$03,$03,$03,$03,$03
LFBA7: .byte $03,$FF,$FF,$FF,$FF,$FF,$FF,$01,$AD
LFBB0: .byte $06,$02,$16,$36,$6C,$6C,$3C,$1C,$1C,$1C,$7C,$DC,$18,$38,$18,$6D
LFBC0: .byte $3D,$CF,$89,$89,$89,$89,$89,$88,$88,$48,$48,$18,$48,$E8,$E8,$0C
       .byte $30,$10,$31,$37,$3F,$3C,$1C,$1C,$1C,$1C,$7C,$DC,$18,$38,$18,$EF
LFBE0: .byte $FA,$CF,$D9,$D9,$D9,$D9,$D9,$25,$25,$25,$48,$48,$48,$E8,$E8,$0C
       .byte $38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $4A,$04,$04,$04,$04,$0C,$4C,$4C,$6E,$54,$FE,$FE
LFC0C: .byte $ED,$0B,$00,$02,$68,$10,$10,$10,$30,$30,$38,$38,$38,$3C,$78,$FC
LFC1C: .byte $40,$20,$00,$02,$42,$70,$F8,$D8,$A8,$D8,$A8,$D8,$F0,$70,$70,$30
LFC2C: .byte $50,$50,$00,$40,$29,$70,$F8,$AA,$DA,$AA,$DA,$AA,$F2,$74,$78,$30
LFC3C: .byte $02,$04,$06,$00,$49,$42,$66,$18,$3C,$3C,$5A,$BD,$3C,$18,$18,$24
LFC4C: .byte $00,$00,$00,$50,$08,$81,$5A,$3C,$7E,$3C,$5A,$A5,$24,$18,$24,$C3
       .byte $00,$1D,$14,$1D,$14,$1D,$0A,$1D,$0A,$1D,$14,$1D,$14,$1D,$14,$1D
       .byte $0A,$1D,$0A,$1D,$14,$1D,$14,$1D,$14,$1D,$0A,$1D,$0A,$1D,$14,$1D
       .byte $14,$1D,$14,$1D,$0A,$1D,$0A,$1D,$14,$00,$12,$14,$12,$14,$12,$0A
       .byte $12,$0A,$12,$14,$11,$14,$11,$14,$11,$0A,$11,$0A,$11,$14,$12,$14
       .byte $12,$14,$12,$0A,$12,$0A,$12,$14,$13,$14,$13,$14,$13,$0A,$13,$0A
       .byte $13,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFCB9: BNE    LFCC9   
       LDA    $E8     
       STA    $F4     
       LDA    $E9     
       STA    $F5     
       LDA    #$0C    
       STA    AUDC0   
       BNE    LFCD6   
LFCC9: LDA    $EA     
       STA    $F4     
       LDA    $EB     
       STA    $F5     
       LDA    LFB97,Y 
       STA    AUDC1   
LFCD6: LDA    $EC,X   
       BEQ    LFCDE   
       DEC    $EC,X   
       BNE    LFD2B   
LFCDE: LDY    $EE,X   
       BEQ    LFD45   
       LDA    $F9     
       CMP    #$07    
       BEQ    LFD18   
       TXA            
       BEQ    LFCF9   
       STX    $BE     
       LDX    $F9     
       LDA    LFB90,X 
       STA    $ED     
       LDX    $BE     
       JMP    LFD1D   
LFCF9: STX    $BE     
       LDX    $B4     
       LDA    $B1,X   
       CMP    #$03    
       BNE    LFD07   
       LDA    #$03    
       BNE    LFD11   
LFD07: CMP    #$02    
       BNE    LFD0F   
       LDA    #$09    
       BNE    LFD11   
LFD0F: LDA    #$0F    
LFD11: STA    $EC     
       LDX    $BE     
       JMP    LFD1D   
LFD18: LDA    ($F4),Y 
       STA    $EC,X   
       DEY            
LFD1D: LDA    ($F4),Y 
       STA    AUDF0,X 
       LDA    $F0,X   
       STA    AUDV0,X 
       STA    $F2,X   
       DEY            
       STY    $EE,X   
       RTS            

LFD2B: LDA    $EC,X   
       CPX    #$00    
       BNE    LFD36   
       AND    LFB9F,Y 
       BNE    LFD44   
LFD36: AND    LFBA7,Y 
       BNE    LFD44   
       LDY    $F2,X   
       BEQ    LFD44   
       DEY            
       STY    AUDV0,X 
       STY    $F2,X   
LFD44: RTS            

LFD45: STY    AUDV0,X 
       STY    AUDC0,X 
       LDY    $F9     
       TXA            
       BEQ    LFD53   
       TYA            
       CLC            
       ADC    #$08    
       TAY            
LFD53: LDA    LFF99,Y 
       STA    $EE,X   
       RTS            

LFD59: LDA    LFFC2,Y 
       STA    $E9     
       LDA    LFFCA,Y 
       STA    $E8     
       LDA    LFE57,Y 
       STA    $F0     
       LDA    LFF99,Y 
       STA    $EE     
       LDA    #$00    
       STA    AUDV0   
       STA    $EC     
       RTS            

LFD74: LDA    LFEE8,Y 
       STA    $EB     
       LDA    LFF91,Y 
       STA    $EA     
       LDA    LFB69,Y 
       STA    $F1     
       LDA    LFFA1,Y 
       STA    $EF     
       LDA    #$00    
       STA    AUDV1   
       STA    $ED     
       RTS            

LFD8F: .byte $C0,$46,$64,$3C,$3C,$7E,$5A,$99,$81,$FF,$81,$03,$62,$26,$3C,$3C
       .byte $7E,$5A,$99,$FF,$81,$00,$FF,$BD,$3C,$7E,$5A,$5A,$FF,$81,$00,$00
       .byte $00,$1A,$1A,$26,$26,$26,$26,$38,$38,$38,$1A,$1A,$C8,$C8,$C8,$C8
       .byte $C8,$C8,$C8,$C8,$C8,$C8,$C8,$C9,$C9,$88,$88,$88,$88,$88,$88,$88
       .byte $0E,$0E
LFDD1: LDA    LFC2C,Y 
       STA    $DC     
       LDA    LFC3C,Y 
       STA    $DD     
       LDA    LFC4C,Y 
       STA    $DE     
       LDA    LFFA9,Y 
       STA    $DB     
       LDA    LFEF0,Y 
       STA    $FC     
       LDA    #$FD    
       STA    $FD     
       JMP    LF05E   
LFDF1: .byte $04,$41,$64,$61,$60,$44,$00,$60,$40,$40,$96,$4C,$00,$00,$30,$10
       .byte $CF,$1D,$ED,$23,$DF,$1E,$EF,$3B
LFE09: .byte $7E,$FF,$4C,$3C,$10,$00,$00,$00,$00,$00,$7F,$FF,$4C,$3C,$10,$00
       .byte $00,$00,$00,$00,$00,$12,$15,$0F,$04,$B1,$C8,$C9,$28,$28,$8A,$00
       .byte $00,$00,$00,$00,$C8,$C9,$28,$28,$8A,$00,$00,$00,$00,$00,$00,$13
       .byte $0F,$0E,$06,$00,$10,$1A,$1F,$1F,$6F,$33,$AE,$CE,$6E,$28,$88,$48
       .byte $38,$E8,$2F,$AF,$AE,$CE,$6E,$28,$88,$48,$38,$E8,$2F,$AF
LFE57: .byte $0B,$00,$1A,$10,$08,$04,$03,$0B,$00,$12,$14,$06,$0F,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00
LFE82: LDY    #$FF    
       SEC            
LFE85: INY            
       SBC    #$0F    
       BCS    LFE85   
       STY    $91     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $91     
       RTS            

LFE97: LDY    $B3     
       CPY    #$40    
       BNE    LFE9F   
       LDY    #$FF    
LFE9F: INY            
       STY    $B3     
       LDA    LFF17,Y 
       RTS            

LFEA6: LDA    $B3     
       SEC            
       SBC    $92     
       SEC            
       SBC    $9B     
       BPL    LFEB6   
       CLC            
       ADC    #$40    
       CLC            
       ADC    #$01    
LFEB6: TAY            
       LDA    LFF17,Y 
       RTS            

LFEBB: LDA    #$00    
       STA    $8A     
       STA    $8E     
       STA    $92     
       STA    $9B     
       STA    $8F     
       LDX    $B4     
       LDA    $CC,X   
       STA    $D7     
       LDA    $CE,X   
       STA    $D8     
       LDA    $D0,X   
       STA    $D9     
       LDA    #$FF    
       STA    $FA     
       STA    $FB     
       LDA    #$28    
       STA    $AB     
       LDA    $C4     
       AND    #$40    
       ORA    #$80    
       STA    $C4     
       RTS            

LFEE8: .byte $FB,$FE,$FE,$FE,$FE,$FB,$FE,$FC
LFEF0: .byte $AF,$BA,$C5,$BD,$98,$DD,$B0,$29,$1B,$6D,$93,$5D,$BE,$EF,$1E,$ED
       .byte $39,$3C,$7E,$E7,$F7,$E7,$EF,$E7,$7E,$3C,$18,$3C,$FF,$F7,$C1,$F5
       .byte $C1,$D7,$C1,$F7,$FF,$24,$3C
LFF17: .byte $22,$50,$0D,$40,$68,$30,$55,$20,$70,$15,$45,$0D,$55,$20,$70,$15
       .byte $45,$70,$25,$46,$66,$36,$70,$25,$45,$15,$53,$0F,$31,$45,$80,$22
       .byte $77,$45,$82,$30,$0D,$45,$0D,$6E,$43,$80,$21,$82,$10,$34,$55,$80
       .byte $0E,$77,$54,$0D,$82,$44,$2D,$66,$12,$34,$77,$45,$10,$25,$65,$80
       .byte $0E,$56
LFF59: .byte $12,$12,$01,$12,$24,$01,$12,$24,$02,$24,$12,$02,$36,$12,$02,$12
       .byte $36,$02,$12,$24,$02,$12,$12,$02,$12,$24,$03,$12,$12,$03,$12,$12
       .byte $03,$24,$12,$03,$24,$12,$03,$36,$12,$03,$36,$12,$03,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFF91: .byte $68,$1D,$37,$3C,$5F,$0B,$58,$5C
LFF99: .byte $10,$10,$10,$10,$10,$10,$10,$28
LFFA1: .byte $00,$04,$04,$04,$04,$04,$05,$28
LFFA9: .byte $E8,$18,$C8,$33
LFFAD: .byte $00,$00,$02,$03
LFFB1: .byte $7F,$7F,$7F,$7F,$7F,$7F,$14,$1C,$00,$14,$7F,$15,$7F,$54,$7E,$14
       .byte $00
LFFC2: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC
LFFCA: .byte $D2,$D2,$D2,$D2,$D2,$D2,$D2,$85,$00,$0E,$12,$0E,$12,$0E,$11,$0E
       .byte $11,$0E,$12,$0E,$12,$0E,$13,$0E
LFFE2: .byte $13,$68,$68,$38,$38,$48,$48,$88,$E8,$E8,$88,$88,$7C,$C6,$F6,$C6
       .byte $DE,$C6,$FE,$C6,$D6,$D6,$7C,$1F,$B8,$49,$00,$F0,$00,$00
