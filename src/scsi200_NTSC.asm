; Disassembly of roms/scsi200_NTSC.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/scsi200_NTSC.bin
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
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $53,$43,$53,$49,$63,$69,$64,$65,$20,$76,$32,$2E,$30,$20,$55,$6C
       .byte $74,$72,$61,$20,$4E,$54,$53,$43,$2C,$20,$4A,$61,$6E,$75,$61,$72
       .byte $79,$20,$31,$35,$2C,$20,$32,$30,$30,$35,$2C,$20,$4A,$6F,$65,$20
       .byte $47,$72,$61,$6E,$64,$20,$5B,$6A,$6F,$65,$40,$67,$72,$61,$6E,$64
       .byte $69,$64,$65,$61,$73,$74,$75,$64,$69,$6F,$2E,$63,$6F,$6D,$5D

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDY    INTIM   
       LDA    #$00    
LF059: STA    VSYNC,X 
       DEX            
       BNE    LF059   
       JSR    LF073   
LF061: JSR    LF099   
       JSR    LF0B9   
       JSR    LF0E2   
       JSR    LF338   
       JSR    LF4EA   
       JMP    LF061   
LF073: STY    $84     
       JSR    LF5F0   
       LDX    #$0B    
       LDA    #$00    
LF07C: STA    $DF,X   
       DEX            
       BPL    LF07C   
       STA    WSYNC   
       LDY    #$03    
LF085: DEY            
       BNE    LF085   
       STA    RESP0   
       STA    $B6     
       STA    $B8     
       STA    $C7     
       LDA    #$40    
       STA    $89     
       LDA    #$C4    
       STA    $CA     
       RTS            

LF099: LDA    #$82    
       STA    VBLANK  
       LDX    #$2C    
       LDA    #$02    
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$02    
       STA    VBLANK  
       STX    TIM64T  
       RTS            

LF0B9: LDA    SWCHB   
       LSR            
       ROR            
       BMI    LF0D1   
       LDA    #$01    
       STA    $B6     
       STA    $B8     
       JSR    LF5F0   
       JSR    LF6BC   
       LDA    #$01    
       STA    $B7     
       RTS            

LF0D1: LDA    SWCHB   
       ASL            
       ASL            
       BCS    LF0DD   
       LDX    #$00    
       JMP    LF0DF   
LF0DD: LDX    #$05    
LF0DF: STX    $BC     
       RTS            

LF0E2: JSR    LF825   
       LDA    #$01    
       STA    $88     
       LDA    $EF     
       BNE    LF0F0   
       JSR    LF755   
LF0F0: LDA    $83     
       BNE    LF0FC   
       LDA    $B7     
       BEQ    LF12C   
       LDA    #$0F    
       STA    $83     
LF0FC: DEC    $83     
       BNE    LF12C   
       LDX    #$01    
       CPX    $85     
       BNE    LF118   
       LDA    REFP1   
       BMI    LF10F   
       STX    $87     
       JMP    LF118   
LF10F: LDA    SWCHA   
       BMI    LF118   
       LDX    #$00    
       STX    $87     
LF118: LDA    $87     
       BNE    LF122   
       LDA    SWCHA   
       JMP    LF124   
LF122: LDA    REFP1   
LF124: BMI    LF12C   
       JSR    LF6C5   
       JMP    LF14B   
LF12C: LDA    $86     
       BEQ    LF14B   
       CMP    #$03    
       BEQ    LF148   
       CMP    #$02    
       BEQ    LF142   
       CMP    #$01    
       BNE    LF14B   
       JSR    LF6DE   
       JMP    LF14B   
LF142: JSR    LF6E6   
       JMP    LF14B   
LF148: JSR    LF732   
LF14B: LDX    #$07    
LF14D: LDA    $8A,X   
       CLC            
       ADC    $9A,X   
       STA    $8A,X   
       CMP    #$08    
       BCC    LF15F   
       CMP    #$9E    
       BCS    LF169   
       JMP    LF181   
LF15F: LDA    #$08    
       SEC            
       SBC    $8A,X   
       CLC            
       ADC    #$08    
       STA    $8A,X   
LF169: LDA    #$08    
       STA    $8A,X   
       LDA    $CA     
       CMP    $CC,X   
       BNE    LF181   
       LDA    $B7     
       BNE    LF181   
       LDA    #$2E    
       STA    $B9     
       JSR    LF7E8   
       JSR    LF7C5   
LF181: LDA    $8A,X   
       JSR    LF836   
       STA    $92,X   
       DEX            
       BPL    LF14D   
       LDA    #$00    
       STA    $AB     
       STA    $AC     
       LDA    #$09    
       STA    $B4     
       LDA    $AA     
       STA    $B5     
       LDA    SWCHA   
       AND    #$F0    
       BEQ    LF1D1   
       LDX    #$02    
       LDY    #$0A    
LF1A4: LDA    $DC,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$10    
       STA.wy $00DF,Y 
       LDA    #$00    
       ADC    #$FB    
       STA.wy $00E0,Y 
       DEY            
       DEY            
       LDA    $DC,X   
       AND    #$F0    
       LSR            
       ADC    #$10    
       STA.wy $00DF,Y 
       LDA    #$00    
       ADC    #$FB    
       STA.wy $00E0,Y 
       DEY            
       DEY            
       DEX            
       BPL    LF1A4   
       RTS            

LF1D1: LDA    #$B8    
       STA    $DF     
       LDA    #$FB    
       STA    $E0     
       LDA    #$90    
       STA    $E1     
       LDA    #$FB    
       STA    $E2     
       LDA    #$98    
       STA    $E3     
       LDA    #$FB    
       STA    $E4     
       LDA    #$B0    
       STA    $E5     
       LDA    #$FB    
       STA    $E6     
       LDA    #$A0    
       STA    $E7     
       LDA    #$FB    
       STA    $E8     
       LDA    #$A8    
       STA    $E9     
       LDA    #$FB    
       STA    $EA     
       RTS            

LF202: LDA    #$E4    
       STA    TIM64T  
       LDX    #$0D    
LF209: STA    WSYNC   
       DEX            
       BNE    LF209   
       CLC            
       LDA    $C7     
       ADC    #$02    
       STA    $C7     
       STA    $C8     
       LDY    #$09    
       LDX    #$07    
LF21B: STA    WSYNC   
       STA    COLUPF  
       LDA    LFBD9,X 
       STA    PF0     
       LDA    LFBE1,X 
       STA    PF1     
       LDA    LFBE9,X 
       STA    PF2     
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LFBF1,X 
       STA    PF0     
       LDA    LFBF9,X 
       STA    PF1     
       LDA    LFC01,X 
       STA    PF2     
       INC    $C8     
       LDA    $C8     
       DEY            
       BNE    LF21B   
       LDY    #$09    
       DEX            
       BPL    LF21B   
       LDY    #$00    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDX    #$0E    
LF257: STA    WSYNC   
       DEX            
       BNE    LF257   
       LDX    #$01    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    #$D8    
       STA    COLUP0  
       STA    COLUP1  
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDA    #$00    
       STA    HMP0    
       LDX    #$07    
LF281: STA    WSYNC   
       STA    HMOVE   
       LDA    LFC09,X 
       STA    GRP0    
       LDA    LFC11,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LFC21,X 
       TAY            
       LDA    LFC19,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFC09,X 
       STA    GRP0    
       LDA    LFC11,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LFC21,X 
       TAY            
       LDA    LFC19,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF281   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$21    
LF2D4: STA    WSYNC   
       STA    HMOVE   
       LDA    LFCB1,X 
       STA    GRP0    
       LDA    LFCD3,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LFD17,X 
       TAY            
       LDA    LFCF5,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF2D4   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2B    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$21    
LF30B: STA    WSYNC   
       STA    HMOVE   
       LDA    LFC29,X 
       STA    GRP0    
       LDA    LFC4B,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LFC8F,X 
       TAY            
       LDA    LFC6D,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF30B   
LF332: LDA    INTIM   
       BNE    LF332   
       RTS            

LF338: LDA    #$00    
       STA    COLUBK  
LF33C: LDA    INTIM   
       BNE    LF33C   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDA    $B8     
       BNE    LF350   
       JMP    LF202   
LF350: LDA    $CA     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$16    
LF362: DEX            
       BNE    LF362   
       STA    RESP0   
       STA    WSYNC   
       LDX    #$16    
LF36B: DEX            
       BNE    LF36B   
       NOP            
       STA    RESP1   
       STA    HMCLR   
       LDA    #$A0    
       STA    HMP1    
       LDA    #$C0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$07    
       STA    $82     
       LDX    #$09    
LF387: DEX            
       BNE    LF387   
       NOP            
       NOP            
       NOP            
       TSX            
       STX    $81     
LF390: LDY    $82     
       LDA    ($DF),Y 
       STA    GRP0    
       BIT    VSYNC   
       LDA    ($E1),Y 
       STA    GRP1    
       LDA    ($E9),Y 
       TAX            
       TXS            
       LDA    ($E3),Y 
       STA    $80     
       LDA    ($E5),Y 
       TAX            
       LDA    ($E7),Y 
       LDY    $80     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       TSX            
       STX    GRP1    
       DEC    $82     
       BPL    LF390   
       LDX    $81     
       TXS            
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$94    
       JSR    LF836   
       STA    WSYNC   
       STA    HMP0    
       AND    #$0F    
       TAY            
LF3CD: DEY            
       BPL    LF3CD   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $BC     
       STX    NUSIZ0  
       LDX    #$00    
       STX    NUSIZ1  
       LDA    $CA     
       STA    COLUP0  
       STA    HMCLR   
       LDA    #$00    
       STA    COLUPF  
       STA    PF1     
       STA    PF2     
       LDA    #$30    
       STA    PF0     
       LDA    #$05    
       STA    CTRLPF  
LF3F4: LDA    $B5     
       CMP    #$09    
       BCC    LF3FE   
       LDX    #$00    
       BEQ    LF404   
LF3FE: LDA    $B4     
       SEC            
       SBC    $AA     
       TAX            
LF404: STX    $80     
       LDY    $AB     
       LDA    COLUP1  
       STA.wy $00BD,Y 
       LDA.wy $00CC,Y 
       STA    COLUP1  
       LDA.wy $0092,Y 
       LDY    $B6     
       BEQ    LF41C   
       LDY    LFBB8,X 
LF41C: STA    WSYNC   
       STY    GRP0    
       STA    HMP1    
       AND    #$0F    
       TAY            
LF425: DEY            
       BPL    LF425   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$22    
       STA    COLUBK  
       LDA    $B4     
       STA    $AC     
       CLC            
       ADC    #$09    
       STA    $B4     
       LDA    $AA     
       SEC            
       SBC    $AC     
       BPL    LF447   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF447: STA    $B5     
       LDX    $80     
       INX            
       LDA    #$00    
       STA    CXCLR   
       LDY    #$07    
LF452: LDA    #$00    
       STA    WSYNC   
       LDA    #$20    
       STA    COLUBK  
       LDA    LFBD1,Y 
       STA    GRP1    
       LDA    $B6     
       BEQ    LF466   
       LDA    LFBB8,X 
LF466: STA    GRP0    
       LDA    COLUPF  
       BMI    LF46E   
       INC    $88     
LF46E: STA    WSYNC   
       INX            
       DEY            
       BPL    LF452   
       INC    $AB     
       LDA    $AB     
       CMP    #$08    
       BCS    LF47F   
       JMP    LF3F4   
LF47F: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDA    #$22    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDY    #$07    
LF495: STA    WSYNC   
       DEY            
       BNE    LF495   
       LDA    #$30    
       STA    CTRLPF  
       LDX    #$07    
LF4A0: STA    WSYNC   
       LDA    #$C4    
       STA    COLUPF  
       LDA    #$42    
       STA    COLUBK  
       LDA    $EF     
       STA    PF0     
       LDA    $F0     
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       NOP            
       LDY    $CA     
       LDY    $CA     
       STA    COLUBK  
       STY    COLUPF  
       LDA    $EC     
       STA    PF0     
       LDA    $ED     
       STA    PF1     
       LDA    $EE     
       STA    PF2     
       DEX            
       BNE    LF4A0   
       LDA    #$00    
       STA    COLUBK  
       STA    COLUPF  
       LDY    #$0A    
LF4D6: STA    WSYNC   
       DEY            
       BNE    LF4D6   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$00    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       RTS            

LF4EA: LDA    #$22    
       STA    TIM64T  
       LDA    $B6     
       BNE    LF4F6   
       JMP    LF56C   
LF4F6: LDA    $87     
       BNE    LF505   
       LDX    $88     
       CPX    #$40    
       BMI    LF51E   
       LDX    #$40    
       JMP    LF51E   
LF505: LDX    $89     
       LDA    SWCHA   
       ROL            
       ROL            
       BMI    LF516   
       CPX    #$40    
       BEQ    LF51E   
       INX            
       JMP    LF51E   
LF516: ROL            
       BMI    LF56C   
       CPX    #$01    
       BEQ    LF51E   
       DEX            
LF51E: STX    $89     
       LDA    SWCHB   
       BPL    LF56A   
       CPX    #$0F    
       BPL    LF52E   
       LDX    #$01    
       JMP    LF56A   
LF52E: CPX    #$17    
       BPL    LF537   
       LDX    #$0A    
       JMP    LF56A   
LF537: CPX    #$1F    
       BPL    LF540   
       LDX    #$13    
       JMP    LF56A   
LF540: CPX    #$27    
       BPL    LF549   
       LDX    #$1C    
       JMP    LF56A   
LF549: CPX    #$2F    
       BPL    LF552   
       LDX    #$25    
       JMP    LF56A   
LF552: CPX    #$37    
       BPL    LF55B   
       LDX    #$2E    
       JMP    LF56A   
LF55B: CPX    #$3F    
       BPL    LF564   
       LDX    #$37    
       JMP    LF56A   
LF564: CPX    #$47    
       BPL    LF56A   
       LDX    #$40    
LF56A: STX    $AA     
LF56C: LDA    $B6     
       BEQ    LF5E7   
       LDA    $B7     
       BNE    LF5E7   
       LDA    $C5     
       BNE    LF59D   
       LDA    $87     
       BNE    LF582   
       LDA    SWCHA   
       JMP    LF584   
LF582: LDA    REFP1   
LF584: BMI    LF5E7   
       LDX    #$07    
       LDA    #$00    
LF58A: ORA    $BD,X   
       DEX            
       BPL    LF58A   
       CMP    #$00    
       BMI    LF59F   
       JSR    LF7E8   
       LDA    #$14    
       STA    $C5     
       JMP    LF5E7   
LF59D: DEC    $C5     
LF59F: LDX    #$07    
LF5A1: LDA    $C6     
       BNE    LF5DE   
       LDA    $BD,X   
       BPL    LF5E0   
       STX    $80     
       DEX            
       BPL    LF5B0   
       LDX    #$07    
LF5B0: LDA    $CA     
       CMP    $CC,X   
       BEQ    LF5C0   
       JSR    LF7C5   
       LDA    #$5C    
       STA    $B9     
       JMP    LF5E7   
LF5C0: LDA    #$00    
       STA    $8A,X   
       STA    $9A,X   
       LDA    LFB08,X 
       STA    $BB     
       LDA    #$8F    
       STA    $B9     
       JSR    LF7FC   
       JSR    LF6AD   
       JSR    LF632   
       LDA    #$0F    
       STA    $C6     
       LDX    $80     
LF5DE: DEC    $C6     
LF5E0: LDA    #$00    
       STA    $BD,X   
       DEX            
       BPL    LF5A1   
LF5E7: JSR    LF76D   
LF5EA: LDA    INTIM   
       BNE    LF5EA   
       RTS            

LF5F0: LDA    #$01    
       STA    $85     
       LDA    #$00    
       STA    $C5     
       STA    $C6     
       STA    $CB     
       STA    $83     
       STA    $C9     
       STA    $86     
       STA    $BB     
       STA    $DC     
       STA    $DD     
       STA    $DE     
       STA    $EB     
       STA    $EC     
       STA    $ED     
       STA    $EE     
       STA    $EF     
       STA    $F0     
       STA    $B9     
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       LDX    #$07    
LF626: STA    $8A,X   
       STA    $9A,X   
       DEX            
       BPL    LF626   
       LDA    #$1A    
       STA    $BA     
       RTS            

LF632: LDA    $EB     
       CMP    #$08    
       BEQ    LF640   
       LDY    $EB     
       LDA.wy $00D4,Y 
       STA    $CA     
       RTS            

LF640: LDA    #$00    
       STA    $EB     
       STA    $EC     
       STA    $ED     
       STA    $EE     
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       LDA    #$01    
       STA    $B7     
       RTS            

LF65B: LDY    #$07    
       LDA    #$00    
LF65F: STA.wy $00BD,Y 
       DEY            
       BPL    LF65F   
       LDY    #$07    
LF667: JSR    LF825   
LF66A: AND    #$07    
       TAX            
       LDA    $BD,X   
       BEQ    LF678   
       TXA            
       CLC            
       ADC    #$01    
       JMP    LF66A   
LF678: LDA    LFB00,X 
       STA.wy $00CC,Y 
       STA    $BD,X   
       DEY            
       BPL    LF667   
       RTS            

LF684: LDY    #$07    
       LDA    #$00    
LF688: STA.wy $00BD,Y 
       DEY            
       BPL    LF688   
       LDY    #$07    
LF690: JSR    LF825   
LF693: AND    #$07    
       TAX            
       LDA    $BD,X   
       BEQ    LF6A1   
       TXA            
       CLC            
       ADC    #$01    
       JMP    LF693   
LF6A1: LDA    LFB00,X 
       STA.wy $00D4,Y 
       STA    $BD,X   
       DEY            
       BPL    LF690   
       RTS            

LF6AD: LDX    $EF     
       BEQ    LF6BC   
       JSR    LF7E8   
       LDA    #$01    
       JSR    LF7B8   
       JMP    LF6AD   
LF6BC: LDA    #$F0    
       STA    $EF     
       LDA    #$FF    
       STA    $F0     
       RTS            

LF6C5: LDA    #$01    
       STA    $86     
       LDA    #$00    
       STA    $B7     
       LDY    #$07    
LF6CF: JSR    LF825   
       AND    #$7F    
       STA.wy $008A,Y 
       DEY            
       BPL    LF6CF   
       JSR    LF65B   
       RTS            

LF6DE: JSR    LF684   
       LDA    #$02    
       STA    $86     
       RTS            

LF6E6: JSR    LF632   
       LDX    #$01    
       CPX    $85     
       BNE    LF6FE   
       LDY    #$07    
       STX    $C9     
LF6F3: STX    $A2,Y   
       DEY            
       BPL    LF6F3   
       DEX            
       STX    $85     
       JMP    LF72D   
LF6FE: INC    $DC     
       LDY    #$01    
LF702: LDX    #$07    
LF704: LDA    $A2,X   
       SEC            
       SBC    #$01    
       CMP    $C9     
       BNE    LF712   
       DEX            
       BPL    LF704   
       INC    $C9     
LF712: JSR    LF825   
LF715: AND    #$07    
       TAX            
       LDA    $A2,X   
       SEC            
       SBC    #$01    
       CMP    $C9     
       BNE    LF728   
       TXA            
       CLC            
       ADC    #$01    
       JMP    LF715   
LF728: INC    $A2,X   
       DEY            
       BPL    LF702   
LF72D: LDA    #$03    
       STA    $86     
       RTS            

LF732: LDY    #$07    
LF734: LDX    $A2,Y   
       STX    $9A,Y   
       DEY            
       BPL    LF734   
       LDA    #$0F    
       STA    AUDC0   
       LDA    #$05    
       STA    AUDV0   
       LDA    $DC     
       AND    #$0F    
       STA    $80     
       LDA    AUDV1   
       SEC            
       SBC    $80     
       STA    AUDF0   
       LDA    #$00    
       STA    $86     
       RTS            

LF755: LDA    #$00    
       STA    $B6     
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       LDX    #$07    
LF767: STA    $9A,X   
       DEX            
       BPL    LF767   
       RTS            

LF76D: LDA    $B9     
       BEQ    LF7AB   
       AND    #$40    
       BNE    LF78C   
       LDA    $B9     
       AND    #$20    
       BNE    LF79D   
       LDA    $B9     
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $BB     
       STA    AUDF1   
       DEC    $B9     
       JMP    LF7AB   
LF78C: LDA    $B9     
       STA    AUDV1   
       LDA    #$0B    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDC1   
       DEC    $B9     
       JMP    LF7AB   
LF79D: LDA    $B9     
       STA    AUDV1   
       EOR    #$FF    
       STA    AUDF1   
       LDA    #$05    
       STA    AUDC1   
       DEC    $B9     
LF7AB: LDA    $B9     
       AND    #$0F    
       BNE    LF7B7   
       LDA    #$00    
       STA    AUDV1   
       STA    $B9     
LF7B7: RTS            

LF7B8: CLC            
       LDX    #$01    
LF7BB: ADC    $DD,X   
       STA    $DD,X   
       LDA    #$00    
       DEX            
       BPL    LF7BB   
       RTS            

LF7C5: LDA    $DE     
       BNE    LF7CF   
       ORA    $DD     
       BEQ    LF7D1   
       DEC    $DD     
LF7CF: DEC    $DE     
LF7D1: RTS            

LF7D2: .byte $A5,$EF,$C9,$F0,$F0,$08,$0A,$09,$10,$85,$EF,$4C,$E7,$F7,$A5,$F0
       .byte $4A,$09,$80,$85,$F0,$60
LF7E8: LDA    $F0     
       CMP    #$00    
       BEQ    LF7F4   
       ASL            
       STA    $F0     
       JMP    LF7FB   
LF7F4: LDA    $EF     
       LSR            
       AND    #$F0    
       STA    $EF     
LF7FB: RTS            

LF7FC: INC    $EB     
       LDA    $EC     
       CMP    #$F0    
       BEQ    LF80D   
       ASL            
       ASL            
       ORA    #$30    
       STA    $EC     
       JMP    LF824   
LF80D: LDA    $ED     
       CMP    #$FF    
       BEQ    LF81C   
       LSR            
       LSR            
       ORA    #$C0    
       STA    $ED     
       JMP    LF824   
LF81C: LDA    $EE     
       ASL            
       ASL            
       ORA    #$03    
       STA    $EE     
LF824: RTS            

LF825: LDA    $84     
       BNE    LF82B   
       LDA    #$FE    
LF82B: ASL            
       ASL            
       ASL            
       EOR    $84     
       ASL            
       ROL    $84     
       LDA    $84     
       RTS            

LF836: STA    $80     
       BPL    LF842   
       CMP    #$9E    
       BCC    LF842   
       LDA    #$00    
       STA    $80     
LF842: LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $80     
       AND    #$0F    
       STY    $80     
       CLC            
       ADC    $80     
       CMP    #$0F    
       BCC    LF857   
       SBC    #$0F    
       INY            
LF857: CMP    #$08    
       EOR    #$0F    
       BCS    LF860   
       ADC    #$01    
       DEY            
LF860: INY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $80     
       TYA            
       ORA    $80     
       RTS            

LF86B: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF
LFB00: .byte $42,$1E,$D8,$9C,$57,$3F,$F2,$06
LFB08: .byte $06,$07,$08,$09,$0A,$0B,$0C,$0D,$3C,$66,$66,$66,$66,$66,$66,$3C
       .byte $3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C
       .byte $3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C
       .byte $18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C
       .byte $3C,$46,$06,$3E,$66,$66,$66,$3C,$66,$66,$66,$7E,$66,$66,$66,$3C
       .byte $7C,$66,$66,$7C,$7C,$66,$66,$7C,$3C,$66,$60,$60,$60,$60,$66,$3C
       .byte $7C,$66,$62,$62,$62,$62,$66,$7C,$7E,$60,$60,$60,$7E,$60,$60,$7E
       .byte $60,$60,$60,$60,$7E,$60,$60,$7E,$7C,$44,$44,$04,$04,$04,$1C,$1C
       .byte $FC,$8C,$8C,$9C,$80,$80,$84,$FC,$19,$19,$19,$19,$1F,$12,$12,$12
       .byte $3F,$23,$03,$03,$3F,$20,$21,$3F,$08,$1C,$3E,$7F,$7F,$7F,$36,$00
LFBB8: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$3E,$6B,$08,$08,$08,$08,$6B
       .byte $3E,$00,$00,$00,$00,$00,$00,$00,$00
LFBD1: .byte $00,$7E,$FF,$FF,$FF,$FF,$7E,$00
LFBD9: .byte $E0,$20,$20,$00,$E0,$20,$20,$E0
LFBE1: .byte $DF,$D1,$D1,$D0,$D0,$13,$53,$DF
LFBE9: .byte $BE,$B2,$B2,$B0,$BE,$82,$A2,$BE
LFBF1: .byte $D0,$50,$50,$50,$C0,$00,$00,$00
LFBF9: .byte $DB,$5B,$1B,$D3,$D3,$00,$10,$00
LFC01: .byte $7B,$1A,$7A,$5A,$7B,$02,$02,$02
LFC09: .byte $00,$F4,$90,$10,$10,$30,$30,$00
LFC11: .byte $00,$FB,$9B,$BA,$82,$8B,$F8,$00
LFC19: .byte $00,$3D,$35,$3D,$85,$BD,$00,$00
LFC21: .byte $00,$AF,$AD,$AD,$2D,$EF,$01,$01
LFC29: .byte $00,$00,$00,$01,$03,$07,$0F,$1E,$3C,$38,$70,$70,$70,$E0,$E0,$E0
       .byte $E0,$E0,$E0,$E0,$E0,$70,$70,$70,$38,$3C,$1E,$0F,$07,$03,$01,$00
       .byte $00,$00
LFC4B: .byte $00,$0F,$7F,$FF,$F0,$80,$00,$00,$03,$03,$03,$03,$3F,$3F,$31,$31
       .byte $31,$31,$3F,$3F,$0C,$18,$18,$30,$30,$00,$00,$00,$80,$F0,$FF,$7F
       .byte $0F,$00
LFC6D: .byte $00,$F0,$FE,$FF,$0F,$01,$00,$00,$C0,$C0,$C0,$C0,$FC,$FC,$8C,$8C
       .byte $8C,$8C,$FC,$FC,$30,$18,$18,$0C,$0C,$00,$00,$00,$03,$0F,$FF,$FE
       .byte $F0,$00
LFC8F: .byte $00,$00,$00,$80,$C0,$E0,$F0,$78,$3C,$1C,$0E,$0E,$0E,$07,$07,$07
       .byte $07,$07,$07,$07,$07,$0E,$0E,$0E,$1C,$3C,$78,$F0,$E0,$C0,$80,$00
       .byte $00,$00
LFCB1: .byte $00,$00,$00,$00,$00,$00,$01,$03,$03,$03,$01,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFCD3: .byte $00,$01,$03,$1F,$7F,$F3,$C1,$80,$00,$80,$C1,$F9,$3F,$7F,$E1,$C1
       .byte $E1,$7F,$3F,$71,$E1,$C3,$83,$83,$83,$C7,$E7,$F7,$7F,$3F,$0F,$03
       .byte $01,$00
LFCF5: .byte $00,$80,$C0,$FC,$FE,$C7,$83,$01,$00,$01,$83,$9F,$FE,$F8,$80,$80
       .byte $80,$F8,$FC,$8E,$87,$C3,$C1,$C1,$C1,$E3,$E7,$EF,$FE,$FC,$F0,$C0
       .byte $80,$00
LFD17: .byte $00,$00,$00,$00,$00,$00,$80,$C0,$C0,$C0,$80,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$80,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00
       .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$4F,$F0,$4F,$F0
