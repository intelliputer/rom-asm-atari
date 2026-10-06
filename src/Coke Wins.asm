; Disassembly of roms/Coke Wins.bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Coke Wins.bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
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
       STA    HMCLR   
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
       LDA    $A0     
       STA    $EE     
       LDA    $A1     
       STA    $F0     
       LDA    $A2     
       STA    $F2     
       LDA    $A3     
       STA    $F4     
       LDA    $A4     
       STA    $F6     
       LDA    $A5     
       STA    $F8     
       JMP    LF831   
LF0C2: .byte $00
LF0C3: DEC    $89     
       LDA    $89     
       CMP    #$04    
       BCC    LF0CF   
       LDA    #$00    
       BCS    LF0D2   
LF0CF: NOP            
       LDA    #$02    
LF0D2: STA    ENABL   
       LDA    $C9     
       AND    #$38    
       LSR            
       LSR            
       LSR            
       CMP    $80     
       BNE    LF0F5   
       LDA    $C9     
       AND    #$07    
       ASL            
       TAX            
       LDA    $C9     
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
       JMP    LF1B7   
LF1B7: JSR    LFDE9   
       STA    HMCLR   
       STA    WSYNC   
       LDA    $DF     
       STA    COLUP0  
       LDA    $86     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF1C9: DEY            
       BPL    LF1C9   
       STA    RESP0   
       STA    WSYNC   
       LDA    $E0     
       STA    COLUP1  
       LDA    $86     
       STA    HMP1    
       AND    #$0F    
       TAY            
LF1DB: DEY            
       BPL    LF1DB   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFDE9   
       LDX    #$00    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STX    $F6     
       LDX    #$0A    
       STX    $F8     
       BIT    $9F     
       BVS    LF1F9   
       STX    $F6     
LF1F9: JSR    LF8BC   
       LDA    $AA     
       LSR            
       STA    WSYNC   
       BCC    LF22B   
       LDA    $CA     
       AND    #$08    
       BNE    LF246   
       STA    $F6     
       BEQ    LF246   
LF20D: LDA    $9F     
       AND    #$04    
       BEQ    LF229   
       LDA    $C8     
       AND    #$07    
       TAX            
       LDA    LFF54,X 
       STA    $E6     
       STA    $E0     
       STA    $DE     
       DEC    $C8     
       BNE    LF229   
       LDA    #$40    
       STA    $9F     
LF229: RTS            

LF22A: .byte $00
LF22B: LDA    $CA     
       LSR            
       LSR            
       LSR            
       LDX    #$14    
       LDY    #$1E    
       LDA    $AA     
       AND    #$04    
       BEQ    LF246   
       BCS    LF242   
       STX    $F6     
       STY    $F8     
       BCC    LF246   
LF242: STY    $F6     
       STX    $F8     
LF246: LDA    #$00    
       STA    PF0     
       LDX    #$09    
       LDY    #$09    
       BIT    $9F     
       BMI    LF254   
       STA    $F6     
LF254: STA    WSYNC   
       LDA    LF9E9,Y 
       STA.w  $0006   
       LDA    ($F6),Y 
       STA    GRP0    
       LDA    ($F8),Y 
       STA    GRP1    
       TXA            
       LSR            
       TAY            
       NOP            
       LDA    $C7     
       TXA            
       LSR            
       BCC    LF27B   
       DEC    $89     
       LDA    $89     
       CMP    #$04    
       LDA    #$02    
       BCC    LF279   
       LSR            
LF279: STA    ENABL   
LF27B: DEX            
       TXA            
       TAY            
       BPL    LF254   
       LDA    $E5     
       LDX    #$F0    
       STA    WSYNC   
       STA    COLUBK  
       STX    HMM0    
       LDX    #$00    
       STX    ENABL   
       STX    GRP0    
       STX    GRP1    
       LDA    $A8     
       AND    #$0F    
       ASL            
       STA    $C7     
       ASL            
       STA    RESM0   
       ASL            
       CLC            
       ADC    $C7     
       STA    $F2     
       STA    RESP0   
       STA    RESP1   
       LDA    #$30    
       STA    HMP0    
       LDA    #$40    
       LDX    #$E0    
       LDY    #$11    
       STA    RESM1   
       STA    HMP1    
       STX    HMM1    
       STX    HMM1    
       STY    NUSIZ0  
       LDA    #$10    
       STA    HMOVE   
       STA    NUSIZ1  
       LDX    #$02    
       STX    ENAM0   
       STX    ENAM1   
       LDA    $DE     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $A8     
       AND    #$F0    
       LSR            
       STA    $C7     
       LDX    #$00    
       STX    ENAM0   
       LSR            
       LSR            
       CLC            
       ADC    $C7     
       STA    $F0     
       STA    HMCLR   
       LDY    #$09    
LF2E2: STA    WSYNC   
       LDX    #$02    
       STX    ENAM0   
       LDA    ($EE),Y 
       ASL            
       ORA    LFF66,Y 
       STA    GRP0    
       LDA    ($F0),Y 
       NOP            
       NOP            
       NOP            
       STA    GRP1    
       LDX    #$00    
       STX    ENAM0   
       LDA    ($F2),Y 
       ASL            
       NOP            
       STA    GRP0    
       DEY            
       BPL    LF2E2   
       STA    WSYNC   
       STX    ENAM1   
       STX    GRP0    
       STX    GRP1    
       LDX    #$00    
       STX    $E7     
       STX    $E8     
       JSR    LFE08   
       INX            
       JSR    LFE08   
       BIT    $9F     
       BPL    LF335   
       BIT    WSYNC   
       BVC    LF335   
       LDA    #$04    
       BIT    $AA     
       BNE    LF335   
       ORA    $AA     
       STA    $AA     
       STA    $C6     
       JSR    LFE77   
       LDA    #$06    
       JSR    LFE80   
LF335: STA    WSYNC   
LF337: LDA    INTIM   
       BNE    LF337   
       STA    GRP0    
       STA    GRP1    
       LDA    #$93    
       STA    TIM8T   
       JSR    LF88B   
       LDA    #$00    
       STA    $F1     
       TAX            
       LDA    $82     
       BPL    LF3B0   
       LDA    $CA     
       LSR            
       BCC    LF358   
       LDX    #$04    
LF358: LDA    $D1,X   
       CMP    #$49    
       BCC    LF362   
       CMP    #$58    
       BCC    LF363   
LF362: INX            
LF363: CPX    #$03    
       BCC    LF373   
       LDA    #$09    
       STA    $EF     
       LDA    #$FF    
       STA    $F2     
       LDA    #$7F    
       BNE    LF37D   
LF373: LDA    #$FF    
       STA    $EF     
       LDA    #$01    
       STA    $F2     
       LDA    #$F6    
LF37D: STA    $D1,X   
       LDA    $D3,X   
       LDY    #$03    
       CLC            
       SBC    $9B     
LF386: DEY            
       CLC            
       ADC    #$E0    
       BPL    LF386   
       ADC    #$20    
       TAX            
       LDA    LFD13,Y 
       STA    $F0     
       LDY    $EF     
LF396: TYA            
       CLC            
       ADC    $F2     
       TAY            
       LDA    LFF46,X 
       EOR    #$FF    
       AND    ($F0),Y 
       BEQ    LF396   
       JSR    LFD8F   
       DEY            
       JSR    LFD8B   
       INY            
       INY            
       JSR    LFD8B   
LF3B0: LDA    $CA     
       LSR            
       BCS    LF3B8   
       JMP    LF43B   
LF3B8: BIT    $82     
       BVC    LF3D3   
       LDA    $C9     
       AND    #$39    
       CMP    #$39    
       BEQ    LF3D3   
       LDA    #$39    
       STA    $C9     
       LDA    #$04    
       STA    $C6     
       STA    $E7     
       LDA    #$05    
       JSR    LFE8D   
LF3D3: LDA    #$06    
       STA    $F0     
LF3D7: DEC    $F0     
       BPL    LF3DE   
       JMP    LF494   
LF3DE: LDX    $F0     
       LDA    $82     
       AND    LFCDC,X 
       BEQ    LF3D7   
       LDA    #$35    
       SEC            
       SBC    LFD31,X 
       CLC            
       ADC    $90     
       CMP    #$52    
       BCS    LF3D7   
       LDY    #$FF    
       LDA    $9A     
       CLC            
       ADC    #$FD    
LF3FB: INY            
       ADC    #$10    
       CMP    $D7     
       BCC    LF3FB   
       STY    $EF     
       LDX    $F0     
       LDA    LFCDC,Y 
       AND    $92,X   
       BEQ    LF3D7   
       EOR    $92,X   
       STA    $92,X   
       LDA    LFD2B,X 
       STA    $E8     
       LDA    #$02    
       JSR    LFE80   
       DEC    $91     
       BNE    LF429   
       LDA    $AA     
       ORA    #$08    
       STA    $AA     
       LDA    #$61    
       STA    $CA     
LF429: JSR    LFAB8   
       TXA            
       ASL            
       ASL            
       ASL            
       ORA    $EF     
       STA    $C9     
       LDA    #$F6    
       STA    $D5     
       JMP    LF3D7   
LF43B: LSR            
       BCS    LF46B   
       LDA    $C9     
       AND    #$39    
       CMP    #$39    
       BEQ    LF46B   
       LDA    $9E     
       CMP    #$B4    
       BEQ    LF46B   
       LDA    $98     
       LSR            
       BCS    LF457   
       DEC    $9E     
       BNE    LF46B   
       BEQ    LF45F   
LF457: INC    $9E     
       LDA    $9E     
       CMP    #$98    
       BCC    LF46B   
LF45F: LDA    #$B4    
       STA    $9E     
       LDA    #$00    
       STA    $CC     
       LDA    #$04    
       STA    $C6     
LF46B: BIT    $9F     
       BPL    LF494   
       LDA    SWCHA   
       AND    #$C0    
       STA    $EE     
       LDA    $AA     
       AND    #$05    
       BNE    LF494   
       BIT    $EE     
       BMI    LF482   
       INC    $9C     
LF482: BVS    LF486   
       DEC    $9C     
LF486: LDA    $9C     
       CMP    #$76    
       BCC    LF48E   
       DEC    $9C     
LF48E: CMP    #$23    
       BCS    LF494   
       INC    $9C     
LF494: LDA    INTIM   
       BNE    LF494   
LF499: LDA    #$02    
       STA    VBLANK  
       STA    WSYNC   
       LDA    $9F     
       AND    #$20    
       BEQ    LF4BD   
       SED            
       LDX    $99     
       INX            
LF4A9: LDA    $DC     
       CLC            
       ADC    $E8     
       STA    $DC     
       STA    $ED     
       LDA    $DB     
       ADC    $E7     
       STA    $DB     
       STA    $EC     
       DEX            
       BNE    LF4A9   
LF4BD: CLD            
       STA    WSYNC   
       LDA    $CA     
       AND    #$07    
       BNE    LF4D8   
       LDA    $C9     
       CLC            
       ADC    #$40    
       STA    $C9     
       CMP    #$40    
       BCS    LF4D8   
       JSR    LFABC   
       LDA    #$30    
       STA    $C9     
LF4D8: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2A    
       STA    TIM64T  
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    $CA     
       LSR            
       BCC    LF511   
       LDA    $D5     
       CMP    #$79    
       BNE    LF4FC   
       LDA    #$F6    
       STA    $D5     
LF4FC: LDA    $D5     
       CMP    #$EC    
       BCS    LF50E   
       LDA    $D5     
       ADC    #$FE    
       CMP    #$03    
       BCS    LF50C   
       LDA    #$F6    
LF50C: STA    $D5     
LF50E: JMP    LF53B   
LF511: LDA    $CA     
       AND    #$0F    
       CMP    #$0F    
       BEQ    LF51E   
       JSR    LFDFB   
       STA    $DA     
LF51E: LDA    #$01    
       TAX            
       STA    $81     
LF523: LDA    $D1,X   
       CMP    #$EC    
       BCS    LF538   
       LDA    $D1,X   
       CLC            
       ADC    $81     
       STA    $D1,X   
       CMP    #$6C    
       BCC    LF538   
       LDA    #$F6    
       STA    $D1,X   
LF538: DEX            
       BPL    LF523   
LF53B: DEC    $CA     
       BEQ    LF542   
       JMP    LF5D4   
LF542: BIT    $9F     
       BPL    LF592   
       LDA    $AA     
       AND    #$08    
       BEQ    LF572   
       EOR    $AA     
       STA    $AA     
       LDX    $99     
       LDA    LFD0F,X 
       STA    $90     
       CPX    #$03    
       BCS    LF55D   
       INC    $99     
LF55D: JSR    LFEE8   
       LDA    $AA     
       AND    #$04    
       BNE    LF572   
       LDA    $AA     
       ORA    #$01    
       STA    $AA     
       LDA    #$40    
       STA    $CA     
       BNE    LF58F   
LF572: LDA    $AA     
       AND    #$01    
       BEQ    LF592   
       EOR    $AA     
       STA    $AA     
       LDA    #$50    
       STA    $D9     
       LDA    #$05    
       STA    $C6     
       LDA    $A9     
       BNE    LF59E   
       LDA    $A8     
       BNE    LF59E   
       JSR    LF8D3   
LF58F: JMP    LF6B2   
LF592: LDA    $AA     
       AND    #$04    
       BEQ    LF5AA   
       ORA    #$01    
       EOR    $AA     
       STA    $AA     
LF59E: LDA    #$40    
       STA    $CA     
       LDA    #$B4    
       STA    $9E     
       LDA    #$00    
       STA    $CC     
LF5AA: DEC    $C6     
       BNE    LF5D1   
       LDA    $91     
       CMP    #$04    
       BCC    LF5D1   
       BIT    $9F     
       BMI    LF5BA   
       BVC    LF5D1   
LF5BA: JSR    LFDFB   
       AND    #$01    
       EOR    $98     
       STA    $98     
       LSR            
       LDA    #$98    
       BCC    LF5CA   
       LDA    #$00    
LF5CA: STA    $9E     
       LDA    #$04    
       JSR    LFE8D   
LF5D1: JMP    LF6B2   
LF5D4: LDA    $CA     
       LSR            
       BCS    LF5DC   
       JMP    LF61C   
LF5DC: LDA    SWCHB   
       AND    #$01    
       BEQ    LF5ED   
       BIT    $9F     
       BMI    LF5F3   
       BVC    LF5F3   
       BIT    REFP1   
       BMI    LF5F3   
LF5ED: JSR    LFEB8   
       JMP    LF6B2   
LF5F3: LDA    $CA     
       LSR            
       BCC    LF61C   
       LDA    $AA     
       AND    #$05    
       BNE    LF619   
       BIT    $9F     
       BPL    LF619   
       LDA    $D5     
       CMP    #$EC    
       BCC    LF619   
       BIT    REFP1   
       BMI    LF619   
       LDA    $98     
       AND    #$FB    
       LDX    #$00    
       STA    $98     
       LDY    #$00    
       JSR    LFAA7   
LF619: JMP    LF6B2   
LF61C: LDA    $AA     
       AND    #$05    
       BNE    LF619   
       TAY            
       BIT    $9F     
       BPL    LF619   
       LDA    $91     
       BEQ    LF619   
       LDA    #$EB    
       STA    $EE     
       CMP    $D2     
       BCS    LF619   
       JSR    LFDFB   
       BPL    LF652   
       AND    #$03    
       ASL            
       STA    $EE     
       LDA    $EA     
       LSR            
       LSR            
       TAX            
LF642: TXA            
       SEC            
       ADC    $EE     
       AND    #$07    
       TAX            
       LDA    LFCDC,X 
       AND    $EB     
       BEQ    LF642   
       BNE    LF679   
LF652: LDX    #$05    
LF654: LDA    LFCDC,X 
       AND    $EB     
       BEQ    LF66A   
       LDA    $9A     
       CLC            
       ADC    #$FD    
       CLC            
       ADC    LFD39,X 
       CMP    $9C     
       BCC    LF66E   
       STX    $EE     
LF66A: DEX            
       BPL    LF654   
       INX            
LF66E: LDA    $EA     
       AND    #$10    
       BNE    LF679   
       LDA    $EE     
       BMI    LF679   
       TAX            
LF679: STX    $EF     
       LDA    LFCDC,X 
       STA    $F0     
       LDX    #$FF    
LF682: INX            
       CPX    #$06    
       BCS    LF6B2   
       LDA    $92,X   
       AND    $F0     
       BEQ    LF682   
       LDA    #$3C    
       ADC    $90     
       SBC    LFD31,X 
       STA    $D2     
       SEC            
       SBC    $D1     
       CMP    #$10    
       BCC    LF6AE   
       CMP    #$F1    
       BCS    LF6AE   
       LDY    $EF     
       LDA    $9A     
       ADC    LFD39,Y 
       ADC    #$04    
       STA    $D4     
       BNE    LF6B2   
LF6AE: LDA    #$F6    
       STA    $D2     
LF6B2: LDA    $AA     
       AND    #$05    
       BNE    LF72C   
       LDY    #$FF    
       LDA    $91     
       BEQ    LF72C   
LF6BE: INY            
       CMP    LFCE4,Y 
       BCC    LF6BE   
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
       BCS    LF72C   
       LDA    $F0     
LF6DD: BEQ    LF6E8   
       CMP    $EF     
       BCC    LF72C   
       SBC    $EF     
       JMP    LF6DD   
LF6E8: BIT    $8B     
       LDA    #$09    
       BVS    LF6F0   
       LDA    #$FF    
LF6F0: STA    $8B     
       BIT    $9F     
       BPL    LF6FB   
       LDA    #$01    
       JSR    LFE80   
LF6FB: LDA    $98     
       AND    #$02    
       BEQ    LF710   
       LDA    $9A     
       CLC            
       ADC    $EE     
       STA    $9A     
       CMP    $8D     
       BCC    LF72C   
       LDA    $8D     
       BNE    LF71D   
LF710: LDA    $9A     
       SEC            
       SBC    $EE     
       STA    $9A     
       CMP    #$17    
       BCS    LF72C   
       LDA    #$17    
LF71D: STA    $9A     
       LDA    $98     
       EOR    #$02    
       STA    $98     
       LDA    $90     
       CLC            
       ADC    #$05    
       STA    $90     
LF72C: LDA    #$05    
       STA    $8C     
       LDA    #$0B    
       SEC            
       SBC    $90     
       STA    $8E     
       BIT    $98     
       BVS    LF742   
       LDA    $8E     
       CLC            
       ADC    #$0C    
       STA    $8E     
LF742: LDX    #$FB    
LF744: LDA    $97,X   
       BNE    LF754   
       DEC    $8C     
       LDA    $8E     
       CLC            
       ADC    #$09    
       STA    $8E     
       INX            
       BNE    LF744   
LF754: LDA    $8E     
       BPL    LF779   
       LDA    $98     
       AND    #$40    
       BEQ    LF76B   
       EOR    $98     
       STA    $98     
       LDA    $8E     
       CLC            
       ADC    #$0C    
       STA    $8E     
       BPL    LF779   
LF76B: LDA    $90     
       SEC            
       SBC    #$05    
       STA    $90     
       LDA    $8E     
       CLC            
       ADC    #$05    
       STA    $8E     
LF779: LDX    #$05    
       LDA    #$00    
LF77D: ORA    $92,X   
       DEX            
       BPL    LF77D   
       STA    $EB     
LF784: LDA    $EB     
       BEQ    LF7B7   
       LSR            
       BCS    LF7A5   
       JSR    LFAB8   
       LDA    #$3A    
       STA    $C9     
       LDX    #$05    
LF794: LSR    $92,X   
       DEX            
       BPL    LF794   
       INC    $A6     
       LDA    $9A     
       ADC    #$10    
       STA    $9A     
       LSR    $EB     
       BNE    LF784   
LF7A5: LDX    #$06    
LF7A7: DEX            
       LDA    LFCDC,X 
       AND    $EB     
       BEQ    LF7A7   
       LDA    #$82    
       SEC            
       SBC    LFD39,X 
       STA    $8D     
LF7B7: LDA    $90     
       STA    $8F     
       LDX    #$04    
LF7BD: LDA    $99,X   
       JSR    LFD67   
       DEX            
       BNE    LF7BD   
       LDA    $CA     
       LSR            
       LDX    #$04    
       BCS    LF7CE   
       LDX    #$00    
LF7CE: STX    $EF     
       LDA    $D1,X   
       CMP    $D2,X   
       BCC    LF7EC   
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
LF7EC: LDA    $D4,X   
       LDX    #$05    
       JSR    LFD67   
       LDX    $EF     
       LDA    $D1,X   
       STA    $89     
       LDA    $D2,X   
       CMP    #$EC    
       BCS    LF802   
       SEC            
       SBC    $D1,X   
LF802: STA    $8A     
       LDA    $D3,X   
       LDX    #$00    
       JSR    LFD67   
       LDX    #$04    
       JSR    LFD7E   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF862   
       JSR    LFAC9   
       JSR    LF20D   
       JSR    LFBAA   
       LDA    $E3     
       STA    COLUBK  
LF824: LDA    INTIM   
       BNE    LF824   
       STA    VBLANK  
       STA    CXCLR   
       TAX            
       JMP    LF900   
LF831: LDX    $A6     
       LDA    LFF4E,X 
       ORA.wy $0092,Y 
       LDX    #$F4    
       LDY    #$00    
LF83D: LSR            
       BCS    LF84C   
       STY    $FA,X   
       INX            
       INX            
       BMI    LF83D   
       JSR    LF858   
       JMP    LF0C3   
LF84C: BCS    LF84E   
LF84E: INX            
       INX            
       BMI    LF83D   
       JSR    LF858   
       JMP    LF0C3   
LF858: LDY    #$01    
LF85A: DEY            
       BPL    LF85A   
       LDY    $80     
       NOP            
       NOP            
       RTS            

LF862: LDA    #$8D    
       SEC            
       ADC    $8B     
       STA    $C7     
       LDX    $A6     
       LDA    LFCD6,X 
       SEC            
       ADC    $8B     
       LDX    #$FA    
LF873: STA    $A6,X   
       CLC            
       ADC    #$14    
       CMP    $C7     
       BCS    LF883   
       INX            
       BNE    LF873   
       BEQ    LF888   
LF881: STA    $A6,X   
LF883: LDA    #$00    
       INX            
       BNE    LF881   
LF888: LDX    #$00    
       RTS            

LF88B: LDA    $9F     
       AND    #$10    
       BEQ    LF8BA   
       SED            
       LDA    $A7     
       SEC            
       SBC    #$01    
       STA    $A7     
       BNE    LF8BA   
       LDA    #$60    
       STA    $A7     
       LDA    $A8     
       SEC            
       SBC    #$01    
       STA    $A8     
       BPL    LF8BA   
       LDA    $A9     
       BEQ    LF8B7   
       SEC            
       SBC    #$01    
       STA    $A9     
       LDA    #$59    
       STA    $A8     
       CLD            
       RTS            

LF8B7: JSR    LF8D3   
LF8BA: CLD            
       RTS            

LF8BC: LDA    #$FB    
       STA    $EF     
       STA    $F1     
       STA    $F3     
       LDA    $A9     
       AND    #$0F    
       ASL            
       STA    $C7     
       ASL            
       ASL            
       CLC            
       ADC    $C7     
       STA    $EE     
       RTS            

LF8D3: LDA    #$0C    
       STA    $9F     
       LDA    #$00    
       STA    $AA     
       STA    $A8     
       LDA    #$BC    
       STA    $DB     
       LDA    #$DE    
       STA    $DC     
       LDA    $E3     
       STA    $DD     
       STA    $E1     
       STA    $E2     
       STA    $E4     
       LDA    #$30    
       STA    $E5     
       LDA    #$05    
       JSR    LFE8D   
       LDA    #$B2    
       STA    $C8     
       RTS            

LF8FD: .byte $00,$00,$00
LF900: LDY    #$F6    
       LDA    #$04    
       STA    WSYNC   
       STY    TIM64T  
       STA    HMCLR   
       BIT    $9F     
       BNE    LF918   
       LDA    $9E     
       CMP    #$B4    
       BEQ    LF91C   
       JMP    LFA00   
LF918: LDA    $C7     
       NOP            
       NOP            
LF91C: LDA    #$40    
       STA    HMP0    
       LDA    #$51    
       STA    HMP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $DB     
       AND    #$F0    
       LSR            
       STA    $C7     
       LSR            
       LSR            
       CLC            
       ADC    $C7     
       STA    RESP0   
       STA    RESP1   
       STA    $EE     
       LDA    $DB     
       AND    #$0F    
       ASL            
       STA.w  $00C7   
       ASL            
       STA    HMOVE   
       ASL            
       CLC            
       ADC    $C7     
       STA    $F0     
       LDA    $DC     
       AND    #$F0    
       LSR            
       STA    $C7     
       LSR            
       LSR            
       CLC            
       ADC    $C7     
       STA    $F2     
       LDA    $DC     
       AND    #$0F    
       ASL            
       STA    $C7     
       ASL            
       ASL            
       CLC            
       ADC    $C7     
       STA    $F4     
       STA    HMCLR   
       LDA    #$FB    
       STA    $EF     
       STA    $F1     
       STA    $F3     
       STA    $F5     
       LDA    $E4     
       STA    COLUBK  
       STA    COLUPF  
       LDA    $E6     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$80    
       STA    PF0     
       LDY    #$09    
       LDX    #$64    
       LDA    $EE     
       BNE    LF999   
       STX    $EE     
       LDA    $F0     
       BNE    LF999   
       STX    $F0     
       LDA    $F2     
       BNE    LF999   
       STX    $F2     
LF999: STA    WSYNC   
LF99B: STA    WSYNC   
       LDA    $E6     
       LDA    $E6     
       STA    COLUPF  
       LDA    LFB96,Y 
       STA    PF1     
       LDA    LFBA0,Y 
       STA    PF2     
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    ($F0),Y 
       STA    GRP1    
       LDA    ($F2),Y 
       LDX    $E4     
       STX    COLUPF  
       NOP            
       TAX            
       LDA    ($F4),Y 
       STX    GRP0    
       STA    GRP1    
       DEY            
       BPL    LF99B   
       INY            
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDA    $E2     
       STA    COLUPF  
       LDA    $89     
       CLC            
       ADC    #$F9    
       STA    $89     
       STA    WSYNC   
       LDA    $84     
       STA    WSYNC   
       STY    COLUBK  
       JMP    LFA55   
LF9E9: .byte $0E,$0E,$0E,$34,$0E,$0E,$34,$0E,$0E,$0E
LF9F3: .byte $00,$18,$18,$1A,$1A,$1C,$1C,$1E,$1E,$1E,$00,$00,$00
LFA00: JSR    LFD67   
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
       LDA    $C9     
       AND    #$39    
       CMP    #$39    
       BNE    LFA2F   
       LDA    $C9     
       ROL            
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
       LDA    LFD1E,Y 
       STA    $EE     
LFA2F: STA    WSYNC   
       STA    HMCLR   
       JSR    LFDE9   
       LDY    #$09    
LFA38: STA    WSYNC   
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    LFF5C,Y 
       STA    COLUP0  
       TYA            
       LSR            
       BCS    LFA4A   
       JSR    LFDE9   
LFA4A: DEY            
       BPL    LFA38   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       LDA    $84     
LFA55: STA    HMP1    
       STA    HMP0    
       AND    #$0F    
       TAY            
LFA5C: DEY            
       BPL    LFA5C   
       STA    RESP0   
       LDA    #$06    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$0A    
       LDA    #$FC    
LFA71: STA    $EF,X   
       DEX            
       DEX            
       BPL    LFA71   
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
LFA92: DEC    $8F     
       BPL    LFAA1   
       LDY    #$05    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       JMP    LF0A5   
LFAA1: JSR    LFDB2   
       JMP    LFA92   
LFAA7: LDA    #$55    
       STA    $D5     
       LDA    #$05    
       CLC            
       ADC    $9C     
       STA    $D7     
       LDA    #$03    
       JSR    LFE8D   
       RTS            

LFAB8: LDA    $C9     
       AND    #$39    
LFABC: CMP    #$39    
       BNE    LFAC8   
       LDA    #$B4    
       STA    $9E     
       LDA    #$00    
       STA    $CC     
LFAC8: RTS            

LFAC9: LDA    $A9     
       BNE    LFAE1   
       LDA    $A8     
       CMP    #$10    
       BCS    LFAE1   
       TAX            
       LDA    $A7     
       CMP    #$30    
       LDA    LF9F3,X 
       BCS    LFADF   
       LDA    #$00    
LFADF: STA    $DE     
LFAE1: RTS            

LFAE2: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$42
       .byte $42,$42,$42,$42,$42,$42,$3C,$00,$1C,$08,$08,$08,$08,$08,$08,$18
       .byte $08,$00,$7E,$40,$40,$40,$3C,$02,$02,$42,$3C,$00,$3C,$42,$02,$02
       .byte $0C,$02,$02,$42,$3C,$00,$04,$04,$04,$04,$7E,$44,$44,$44,$44,$00
       .byte $3C,$42,$02,$02,$3C,$40,$40,$40,$7E,$00,$3C,$42,$42,$42,$7C,$40
       .byte $40,$42,$3C,$00,$10,$10,$10,$10,$08,$04,$02,$02,$7E,$00,$3C,$42
       .byte $42,$42,$3C,$42,$42,$42,$3C,$00,$3C,$42,$02,$02,$3E,$42,$42,$42
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$66,$FF,$FF,$DB
       .byte $DB,$C3,$C3,$C3,$C3,$00,$33,$33,$33,$33,$33,$33,$33,$33,$33,$00
       .byte $0C,$1C,$3C,$3C,$6C,$CC,$CC,$8C,$0C,$00,$7E,$FF,$03,$03,$7E,$C0
       .byte $C0,$FF,$7E,$00
LFB96: .byte $DD,$DD,$15,$15,$15,$15,$15,$15,$DD,$DD
LFBA0: .byte $74,$74,$12,$12,$31,$31,$12,$12,$74,$74
LFBAA: BIT    $9F     
       BVC    LFBF2   
       JSR    LFBF3   
       LDA    #$34    
       STA    $E4     
       LDA    #$0E    
       STA    $E6     
       LDA    #$04    
       STA    $E1     
       STA    $E0     
       LDA    #$08    
       STA    $DE     
       LDA    #$30    
       STA    $DD     
       STA    $E5     
       DEC    $C8     
       BPL    LFBF2   
       LDX    #$78    
       STX    $C8     
       LDA    $9F     
       EOR    #$01    
       STA    $9F     
       AND    #$01    
       BEQ    LFBE4   
LFBDB: LDA    #$BC    
       STA    $DB     
       LDA    #$DE    
       STA    $DC     
       RTS            

LFBE4: LDA    $EC     
       STA    $DB     
       BNE    LFBEE   
       LDA    $ED     
       BEQ    LFBDB   
LFBEE: LDA    $ED     
       STA    $DC     
LFBF2: RTS            

LFBF3: LDA    #$60    
       STA    $A7     
       LDA    #$00    
       STA    $A8     
       LDA    #$03    
       STA    $A9     
       RTS            

LFC00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7F,$7F,$3E,$7F,$1C,$1C
       .byte $3E,$1C,$1C,$08,$14,$26,$41,$8A,$59,$62,$00,$08,$14,$28,$22,$98
       .byte $1D,$00,$24,$85,$42,$64,$28,$10,$C0,$C0,$C0,$FC,$FE,$C3,$C3,$FE
       .byte $FC,$00,$00,$C0,$C0,$C0,$FC,$FE,$C3,$C3,$FE,$FC,$00,$FF,$FF,$C0
       .byte $C0,$FE,$C0,$C0,$FF,$FF,$FF,$FF,$C0,$C0,$FE,$C0,$C0,$FF,$FF,$00
       .byte $C0,$C0,$C0,$FC,$FE,$C3,$C3,$FE,$FC,$00,$00,$C0,$C0,$C0,$FC,$FE
       .byte $C3,$C3,$FE,$FC,$00,$7E,$FF,$01,$03,$7E,$C0,$80,$FF,$7E,$7E,$FF
       .byte $01,$03,$7E,$C0,$80,$FF,$7E,$00,$3C,$18,$18,$18,$18,$18,$18,$18
       .byte $3C,$00,$00,$3C,$18,$18,$18,$18,$18,$18,$18,$3C,$C6,$42,$7E,$7E
       .byte $56,$7C,$19,$25,$42,$80,$E7,$42,$7E,$7E,$6B,$3E,$98,$A4,$42,$01
       .byte $3C,$7E,$CF,$03,$AA,$55,$C0,$F3,$7E,$3C,$00,$00,$00,$24,$3C,$76
       .byte $5C,$28,$00,$00,$00,$00,$00,$01,$24,$95,$48,$C7,$24,$90,$20,$40
       .byte $54,$AB,$B6,$57,$CC,$2D,$7E,$CD,$DA,$2C,$54,$01,$02,$54,$25,$42
       .byte $83,$54,$12,$25,$18,$80
LFCD6: .byte $28,$3C,$50,$64,$78,$8C
LFCDC: .byte $01,$02,$04,$08,$10,$20,$40,$80
LFCE4: .byte $22,$16,$0C,$08,$05,$04,$03,$02,$00
LFCED: .byte $20,$20,$15,$15,$10,$0B,$07,$07,$04
LFCF6: .byte $01,$01,$02,$02,$03,$03,$03,$04,$05,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFD0F: .byte $05,$0A,$0F,$14
LFD13: .byte $BD,$B4,$AB,$00,$00,$00,$00,$00,$00,$00,$00
LFD1E: .byte $AA,$B6,$C0,$CC
LFD22: .byte $3C,$7E,$7E,$7E,$7E,$FF,$FF,$FF,$C3
LFD2B: .byte $05,$10,$15,$20,$25,$30
LFD31: .byte $00,$09,$12,$1B,$24,$2D,$36,$01
LFD39: .byte $00,$10,$20,$30,$40,$50,$60,$70,$80,$90,$00
LFD44: .byte $10,$74,$BA,$A8,$86,$BA,$BA,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFD61: .byte $00,$17,$2B,$23,$75,$B4
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
       AND    LFF46,X 
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

LFE08: LDA    $9F     
       AND    #$08    
       BEQ    LFE6A   
       INC    $CD,X   
       LDY    $CB,X   
       BEQ    LFE6A   
       CPY    #$05    
       BEQ    LFE1C   
       CPY    #$02    
       BNE    LFE40   
LFE1C: LDY    $CD,X   
       CPY    #$08    
       BNE    LFE2A   
       LDA    $CB,X   
       CMP    #$05    
       BEQ    LFE6E   
       BNE    LFE6A   
LFE2A: LDA    LFFD3,Y 
       STA    AUDF0,X 
       LDA    #$0C    
       STA    AUDC0,X 
       LDA    #$CB    
       CMP    #$05    
       LDA    #$04    
       BCC    LFE3D   
       LDA    #$08    
LFE3D: STA    AUDV0,X 
       RTS            

LFE40: LDA    LFD44,Y 
       STA    $EE     
       LDA    #$FF    
       STA    $EF     
       LDY    $CF,X   
       LDA    ($EE),Y 
       CMP    $CD,X   
       BNE    LFE69   
       INY            
       LDA    ($EE),Y 
       BMI    LFE6A   
       CMP    #$3F    
       BEQ    LFE6E   
       STA    AUDF0,X 
       INY            
       LDA    ($EE),Y 
       STA    AUDC0,X 
       INY            
       LDA    ($EE),Y 
       INY            
       STY    $CF,X   
       STA    AUDV0,X 
LFE69: RTS            

LFE6A: LDA    #$00    
       STA    $CB,X   
LFE6E: LDA    #$00    
       STA    AUDV0,X 
       STA    $CD,X   
       STA    $CF,X   
       RTS            

LFE77: LDA    $CA     
       AND    #$01    
       ORA    #$80    
       STA    $CA     
       RTS            

LFE80: CMP    $CB     
       BCC    LFE8C   
       STA    $CB     
       LDA    #$00    
       STA    $CD     
       STA    $CF     
LFE8C: RTS            

LFE8D: CMP    $CC     
       BCC    LFE99   
       STA    $CC     
       LDA    #$00    
       STA    $CE     
       STA    $D0     
LFE99: RTS            


START:
       CLD            
       SEI            
       LDX    #$00    
       TXA            
LFE9F: STA    VSYNC,X 
       INX            
       BNE    LFE9F   
       DEX            
       TXS            
       JSR    LFEB8   
       LDA    #$40    
       STA    $9F     
       LDA    #$00    
       STA    $AA     
       LDA    #$01    
       STA    $C8     
       JMP    LF499   
LFEB8: LDA    #$00    
       STA    $DB     
       STA    $DC     
       LDA    #$B8    
       STA    $9F     
       LDA    #$01    
       STA    $AA     
       LDA    #$00    
       STA    $90     
       STA    $99     
       STA    $C6     
       JSR    LFE77   
       JSR    LFBF3   
       LDA    #$FF    
       STA    $8B     
       LDA    #$34    
       STA    $E4     
       STA    $E5     
       STA    $E0     
       LDA    #$0E    
       STA    $DE     
       STA    $E6     
       STA    $DF     
LFEE8: LDA    #$8C    
       STA    $E1     
       LDA    #$14    
       STA    $E2     
       LDA    #$34    
       STA    $DD     
       LDX    #$05    
       LDA    #$3F    
LFEF8: STA    $92,X   
       DEX            
       BPL    LFEF8   
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
LFF13: LDA    LFD61,X 
       STA    $99,X   
       DEX            
       BNE    LFF13   
       TXA            
       STA    $CB     
       STA    $CC     
       STA    $A6     
       LDA    #$24    
       STA    $91     
       LDA    #$52    
       STA    $98     
       LDA    #$30    
       STA    $C9     
       LDA    $AA     
       AND    #$77    
       STA    $AA     
       LDX    #$1A    
       LDY    #$08    
LFF38: LDA    LFD22,Y 
       STA    $AB,X   
       DEY            
       BPL    LFF42   
       LDY    #$08    
LFF42: DEX            
       BPL    LFF38   
       RTS            

LFF46: .byte $7F,$BF,$DF,$EF,$F7,$FB,$FD,$FE
LFF4E: .byte $C0,$E0,$F0,$F8,$FC,$FE
LFF54: .byte $34,$26,$1A,$0E,$28,$34,$54,$30
LFF5C: .byte $88,$88,$88,$88,$0E,$0E,$34,$34,$34,$34
LFF66: .byte $00,$00,$00,$01,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$01,$16
       .byte $09,$0A,$02,$19,$08,$0A,$03,$1F,$0C,$08,$04,$16,$0E,$07,$06,$FF
       .byte $01,$18,$0C,$03,$03,$16,$0C,$03,$05,$14,$0C,$03,$07,$12,$0C,$03
       .byte $09,$10,$0C,$03,$0B,$0E,$0C,$03,$0D,$0D,$0C,$03,$0F,$10,$0C,$03
       .byte $11,$3F,$01,$18,$08,$07,$04,$19,$08,$05,$10,$1C,$08,$02,$30,$1E
       .byte $08,$01,$50,$FF,$01,$18,$03,$0C,$09,$10,$0A,$08,$11,$12,$0E,$0F
       .byte $19,$16,$0E,$08,$29,$1A,$0E,$04,$39,$1D,$0E,$02,$49
LFFD3: .byte $FF,$10,$0D,$0A,$08,$07,$06,$05,$06,$07,$03,$04,$05,$06,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$9A,$FE,$9A,$FE,$9A,$FE
