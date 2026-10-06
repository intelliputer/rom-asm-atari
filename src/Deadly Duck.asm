; Disassembly of roms/Deadly Duck.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Deadly Duck.bin
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
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXBLPF  =  $36
CXPPMM  =  $37
INPT0   =  $38
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
LF000: JMP    LFD06   
LF003: LDA    $EC     
       CMP    #$01    
       BEQ    LF05E   
       LDA    $D7     
       BMI    LF05E   
       CMP    #$05    
       BNE    LF02E   
       LDA    $D8     
       CMP    #$05    
       BCS    LF022   
       ASL            
       ASL            
       CLC            
       ADC    #$8D    
       STA    $CF     
       INC    $D8     
       BCC    LF05E   
LF022: DEC    $D7     
       LDA    #$00    
       STA    $D8     
       LDA    #$9F    
       STA    $CF     
       LDA    $D7     
LF02E: STA    $DB     
       LDA    #$04    
       SEC            
       SBC    $DB     
       STA    $DB     
       TAY            
       LDA    $D8     
       CMP    #$05    
       BCS    LF04C   
       TAX            
       LDA    LFCFD,X 
       CLC            
       ADC    #$4D    
       STA.wy $00BE,Y 
       INC    $D8     
       BCC    LF05E   
LF04C: LDY    $DB     
       LDA    #$9F    
       STA.wy $00BE,Y 
       LDA    #$61    
       STA.wy $00BF,Y 
       LDA    #$01    
       STA    $D8     
       DEC    $D7     
LF05E: LDA    $F8     
       CMP    #$03    
       BCC    LF066   
       LDA    #$03    
LF066: AND    #$03    
       TAX            
       LDA    LFFF8,X 
       STA    $FD     
       LDA    $F8     
       BPL    LF099   
       LDA    INPT4   
       BMI    LF079   
       JMP    LF2CC   
LF079: LDA    $E5     
       BNE    LF07F   
       DEC    $D4     
LF07F: LDA    $FA     
       STA    $FB     
       BEQ    LF08D   
       TAX            
       LDA    LFDF7,X 
       STA    $CE     
       BPL    LF09B   
LF08D: LDA    #$38    
       STA    $80     
       STA    $85     
       LDA    #$00    
       STA    $CE     
       BEQ    LF09B   
LF099: STA    $FB     
LF09B: LDA    SWCHB   
       CLC            
       ROR            
       BCS    LF0A5   
       JMP    LF2CC   
LF0A5: DEC    $FC     
       BNE    LF0C7   
       LDY    #$12    
       STY    $FC     
       CLC            
       ROR            
       BCS    LF0C7   
       LDA    $FA     
       ADC    #$01    
       AND    #$03    
       STA    $FA     
       LDA    #$83    
       STA    $8A     
       LDA    #$03    
       STA    $8B     
       LDA    #$00    
       STA    $F7     
       BEQ    LF104   
LF0C7: LDA    $F9     
       BNE    LF100   
       INC    $F7     
       INC    $F8     
       JSR    LFD7B   
       LDA    #$00    
       STA    $EE     
       STA    $EF     
       LDA    #$48    
       STA    $80     
       STA    $85     
       LDA    $F8     
       CMP    #$02    
       BCC    LF100   
       LDX    #$01    
       STX    $CE     
       CMP    #$03    
       BCC    LF100   
       LDX    #$03    
       STX    $CE     
       CMP    #$04    
       BCC    LF100   
       LDX    #$1A    
       STX    $E9     
       CMP    #$05    
       BCC    LF100   
       LDX    #$20    
       STX    $EB     
LF100: LDA    $F7     
       BNE    LF115   
LF104: LDA    #$9F    
       STA    $B9     
       LDA    #$FC    
       STA    $BA     
       LDX    #$FF    
       STX    $F8     
       INX            
       STX    AUDV0   
       STX    AUDV1   
LF115: LDA    $F4     
       BNE    LF14B   
       LDA    #$10    
       STA    $DB     
       LDA    #$40    
       BIT    SWCHA   
       BNE    LF135   
       LDA    $B7     
       JSR    LFC01   
       CMP    #$71    
       BEQ    LF12F   
       STA    $B7     
LF12F: LDA    #$08    
       STA    $D5     
       BNE    LF14B   
LF135: LDA    #$80    
       BIT    SWCHA   
       BNE    LF14B   
       LDA    $B7     
       JSR    LFECB   
       CMP    #$A8    
       BEQ    LF147   
       STA    $B7     
LF147: LDA    #$00    
       STA    $D5     
LF14B: LDA    CXP1FB  
       BPL    LF17D   
       LDA    $F4     
       BNE    LF181   
       LDA    $F5     
       BEQ    LF15D   
       LDA    #$46    
       STA    $F4     
       BNE    LF181   
LF15D: LDA    #$20    
       STA    $DB     
       INC    $F5     
       LDA    $B7     
       LDY    $D5     
       BEQ    LF172   
       JSR    LFECB   
       CMP    #$A8    
       BEQ    LF181   
       BNE    LF179   
LF172: JSR    LFC01   
       CMP    #$71    
       BEQ    LF181   
LF179: STA    $B7     
       BNE    LF181   
LF17D: LDA    #$00    
       STA    $F5     
LF181: JSR    LFDD9   
       JMP    LFDAB   
LF187: JSR    LFDE6   
       JSR    LFFD8   
       LDA    $F4     
       CMP    #$01    
       BNE    LF1A3   
       DEC    $F4     
       DEC    $F4     
       LDA    #$64    
       STA    $F6     
       LDA    #$9F    
       STA    $B9     
       LDA    #$FC    
       STA    $BA     
LF1A3: JSR    LFED7   
       LDA    $C9     
       BNE    LF1D8   
       DEC    $C8     
       BMI    LF1D6   
       LDX    $CA     
       INX            
       INX            
       LDA    #$40    
       STA    $DB     
       LDA    $CB     
       BEQ    LF1C8   
       LDA    $8A,X   
       JSR    LFC01   
       STA    $8A,X   
       LSR    $B5     
       ROL    $B4     
       JMP    LF1D8   
LF1C8: LDA    $8A,X   
       JSR    LFECB   
       STA    $8A,X   
       LSR    $B2     
       ROL    $B3     
       JMP    LF1D8   
LF1D6: DEC    $C9     
LF1D8: DEC    $EC     
       BNE    LF236   
       LDA    #$03    
       STA    $EC     
       LDA    $C9     
       BPL    LF236   
       LDA    $BD     
       ORA    $BC     
       BEQ    LF236   
       LDX    #$03    
LF1EC: LDA    $B2,X   
       TAY            
       LDA    $AE,X   
       STA    $B2,X   
       LDA    $AA,X   
       STA    $AE,X   
       LDA    $A6,X   
       STA    $AA,X   
       LDA    $A2,X   
       STA    $A6,X   
       TYA            
       STA    $A2,X   
       DEX            
       BPL    LF1EC   
       DEC    $CD     
       BNE    LF20F   
       LDA    #$05    
       STA    $CD     
       BNE    LF236   
LF20F: LDA    $CD     
       CMP    #$04    
       BNE    LF236   
       ASL    $BD     
       ASL    $BC     
       LDA    $BD     
       ORA    $BC     
       CMP    #$40    
       BNE    LF236   
       LDX    #$03    
       LDY    #$00    
LF225: LDA    $A2,X   
       ORA    $E1,X   
       STA    $E1,X   
       STY    $A2,X   
       DEX            
       BPL    LF225   
       STY    $BD     
       STY    $BC     
       INC    $CD     
LF236: LDA    $D3     
       BMI    LF272   
       LDX    #$03    
       LDA    #$02    
       JSR    LFBF0   
       BCC    LF272   
       LDX    $D3     
       ASL            
       TAY            
       TXA            
       CMP    #$11    
       BCC    LF25B   
       CLC            
       ADC    LFCF5,Y 
       STA    $D1     
       LDA    LFCF6,Y 
       STA    $D2     
       DEC    $D3     
       BCC    LF272   
LF25B: CLC            
       ADC    LFCF9,Y 
       STA    $D1     
       LDA    LFCFA,Y 
       STA    $D2     
       DEC    $D3     
       BPL    LF272   
       LDA    #$9F    
       STA    $D1     
       LDA    #$00    
       STA    $E0     
LF272: LDA    $D7     
       BPL    LF2BD   
       LDA    $F4     
       BNE    LF2BD   
       LDA    $F8     
       BMI    LF2BD   
       LDA    #$9F    
       LDY    INPT4   
       BMI    LF2BD   
       LDX    #$04    
LF286: STA    $BE,X   
       DEX            
       BPL    LF286   
       LDA    #$00    
       STA    $D8     
       LDA    #$05    
       STA    $D7     
       LDA    $D5     
       BEQ    LF2A2   
       LDA    #$40    
       STA    $DB     
       LDA    $B7     
       JSR    LFECB   
       BNE    LF2AB   
LF2A2: LDA    #$50    
       STA    $DB     
       LDA    $B7     
       JSR    LFECB   
LF2AB: TAX            
       AND    #$F0    
       STA    $C5     
       TXA            
       AND    #$0F    
       STA    $C6     
       LDA    #$79    
       STA    $B9     
       LDA    #$12    
       STA    $D6     
LF2BD: LDA    $D6     
       BEQ    LF2C9   
       DEC    $D6     
       BNE    LF2C9   
       LDA    #$70    
       STA    $B9     
LF2C9: JMP    LF300   
LF2CC: JSR    LFD7B   
       LDA    #$70    
       STA    $B9     
       LDA    #$FF    
       STA    $BA     
       LDA    #$38    
       STA    $80     
       STA    $85     
       LDA    #$05    
       STA    $F7     
       LDA    #$00    
       STA    $EE     
       STA    $EF     
       STA    $F2     
       STA    $F3     
       LDA    $FA     
       STA    $F8     
       LDA    #$FF    
       STA    $F4     
       STA    $D4     
       LDA    #$64    
       STA    $F6     
       LDX    $FA     
       LDA    LFDF7,X 
       STA    $CE     
LF300: LDX    #$F9    
LF302: LDA    INTIM   
       BNE    LF302   
       STA    WSYNC   
       STA    VBLANK  
       STX    TIM64T  
       STA    CXCLR   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       ASL    INPT0   
       ASL    INPT0   
       STA    INPT0   
       LDA    $C5     
       STA    HMBL    
       LDX    $C6     
LF324: DEX            
       BNE    LF324   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$04    
       LDA    #$01    
       STA    $C7     
       LDA    $BE,X   
       STA    $C3     
       STX    $DD     
       LDX    #$09    
       LDY    #$14    
       LDA    #$01    
       BIT    $BD     
       BNE    LF349   
       BIT    $BC     
       BNE    LF349   
       BEQ    LF34C   
LF349: JMP    LF4D4   
LF34C: STA    WSYNC   
       LDA    $8A,X   
       TXS            
       TAX            
       AND    #$F0    
       STA    HMP0    
       TXA            
       AND    #$0F    
       TAX            
LF35A: DEX            
       BNE    LF35A   
       STA    RESP0   
       TSX            
       STA    WSYNC   
       LDA    ($C3),Y 
       STA    ENABL   
       TYA            
       CLC            
       ADC    #$08    
       TAY            
       STY    $DF     
       LDA    $95     
       LSR            
       LDA    $94     
       ROR            
       EOR    $95     
       LDY    $94     
       STA    $94     
       STY    $95     
       LDY    $DF     
       STA    $FE     
       LDA    $C7     
       LSR            
       STA    $FF     
       STA    WSYNC   
       LDA    #$00    
       STA    HMBL    
       CPX    #$09    
       BEQ    LF3BF   
       LDA    $BD     
       ORA    $BC     
       ORA    $DA     
       BNE    LF3BF   
       LDA    $8C,X   
       AND    #$0F    
       CMP    #$05    
       BCS    LF3AD   
       LDA    #$11    
       STA    $DB     
       LDA    #$00    
       STA    $DE     
       LDA    #$10    
       STA    $DF     
       JMP    LF3B9   
LF3AD: LDA    #$D9    
       STA    $DB     
       LDA    #$01    
       STA    $DE     
       LDA    #$13    
       STA    $DF     
LF3B9: LDA    CXP0FB  
       BPL    LF3BF   
       BMI    LF3CD   
LF3BF: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    ENABL   
       STA    HMBL    
       BEQ    LF3F6   
LF3CD: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    ENABL   
       LDA    $FF     
       STA    $BD     
       LDA    $DB     
       STA    $8C,X   
       STX    $CA     
       LDA    $FE     
       AND    #$0F    
       STA    $C8     
       LDA    $DE     
       STA    $CB     
       LDA    #$0A    
       STA    $C9     
       LDA    #$80    
       LDX    $DF     
       STA    $A2,X   
       TSX            
LF3F6: STA    WSYNC   
       LDA    $89,X   
       TXS            
       TAX            
       AND    #$F0    
       STA    HMP1    
       TXA            
       AND    #$0F    
       TAX            
LF404: DEX            
       BNE    LF404   
       STA    RESP1   
       TSX            
       STA    WSYNC   
       LDA    ($C3),Y 
       STA    ENABL   
       TYA            
       CLC            
       ADC    #$08    
       TAY            
       LDA    ($C3),Y 
       STA    $DC     
       STA    WSYNC   
       CPX    #$09    
       BEQ    LF450   
       LDA    $BD     
       ORA    $BC     
       ORA    $D9     
       BNE    LF450   
       LDA    $8B,X   
       AND    #$0F    
       CMP    #$05    
       BCS    LF43E   
       LDA    #$11    
       STA    $DB     
       LDA    #$00    
       STA    $DE     
       LDA    #$10    
       STA    $DF     
       JMP    LF44A   
LF43E: LDA    #$D9    
       STA    $DB     
       LDA    #$01    
       STA    $DE     
       LDA    #$13    
       STA    $DF     
LF44A: LDA    CXP1FB  
       BPL    LF450   
       BMI    LF45C   
LF450: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    ENABL   
       BEQ    LF486   
LF45C: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    ENABL   
       TXS            
       DEX            
       LDA    $FF     
       STA    $BC     
       LDA    $DB     
       STA    $8C,X   
       STX    $CA     
       LDA    $FE     
       AND    #$0F    
       STA    $C8     
       LDA    $DE     
       STA    $CB     
       LDA    #$0A    
       STA    $C9     
       LDA    #$80    
       LDX    $DF     
       STA    $A2,X   
LF486: STA    WSYNC   
       STA    HMOVE   
       LDA    $E6     
       ORA    CXBLPF  
       STA    $E6     
       STA    CXCLR   
       LDY    #$00    
       LDX    $DD     
       LDA    $80,X   
       STA    $96     
       LDA    $85,X   
       STA    $98     
       DEX            
       STX    $DD     
       LDA    ($96),Y 
       TAX            
       LDA    ($98),Y 
       STA    $DB     
       INY            
       LDA    ($96),Y 
       INY            
LF4AC: STA    WSYNC   
       STA    COLUP1  
       STA    COLUP0  
       STX    GRP0    
       LDA    $DB     
       STA    GRP1    
       LDA    $DC     
       STA    ENABL   
       LDA    ($C3),Y 
       STA    $DC     
       LDA    ($96),Y 
       TAX            
       LDA    ($98),Y 
       STA    $DB     
       INY            
       LDA    ($96),Y 
       INY            
       CPY    #$16    
       BNE    LF4AC   
       STA    WSYNC   
       JMP    LF6A2   
LF4D4: STA    WSYNC   
       LDA    $8A,X   
       TXS            
       TAX            
       AND    #$F0    
       STA    HMP0    
       TXA            
       AND    #$0F    
       TAX            
LF4E2: DEX            
       BNE    LF4E2   
       STA    RESP0   
       STA    WSYNC   
       LDA    $A2     
       STA    PF1     
       LDA    ($C3),Y 
       STA    ENABL   
       LDA    $A3     
       STA    PF2     
       TYA            
       CLC            
       ADC    #$08    
       TAY            
       ASL    INPT0   
       NOP            
       NOP            
       LDA    $A4     
       ASL    INPT0   
       STA    PF2     
       LDA    $A5     
       STA    PF1     
       LDA    #$00    
       STA    HMBL    
       STA    WSYNC   
       LDA    $A2     
       STA    PF1     
       LDA    $A3     
       STA    PF2     
       LDA    $A4     
       LDX    #$03    
       STX    $BB     
LF51C: DEC    $BB     
       BNE    LF51C   
       TSX            
       STA    PF2     
       LDA    $A5     
       STA    PF1     
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    ENABL   
       STA    WSYNC   
       LDA    $89,X   
       TXS            
       TAX            
       AND    #$F0    
       STA    HMP1    
       TXA            
       AND    #$0F    
       TAX            
LF53F: DEX            
       BNE    LF53F   
       STA    RESP1   
       STA    WSYNC   
       LDA    $A6     
       STA    PF1     
       LDA    ($C3),Y 
       STA    ENABL   
       LDA    $A7     
       STA    PF2     
       TYA            
       CLC            
       ADC    #$10    
       TAY            
       LDA    ($C3),Y 
       STA    $DC     
       DEY            
       DEY            
       LDA    $A8     
       NOP            
       STA    PF2     
       LDA    $A9     
       STA    PF1     
       STA    WSYNC   
       LDA    $A6     
       STA    PF1     
       LDA    $A7     
       STA    PF2     
       LDA    $A8     
       LDX    #$03    
       STX    $BB     
LF576: DEC    $BB     
       BNE    LF576   
       NOP            
       STA    PF2     
       LDA    $A9     
       STA    PF1     
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    ENABL   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E6     
       ORA    CXBLPF  
       STA    $E6     
       STA    CXCLR   
       LDY    #$00    
       LDX    $DD     
       LDA    $80,X   
       STA    $96     
       LDA    $85,X   
       STA    $98     
       DEX            
       STX    $DD     
       LDA    ($96),Y 
       TAX            
       LDA    ($98),Y 
       STA    $DB     
       INY            
       LDA    ($96),Y 
       INY            
       STA    WSYNC   
LF5B3: STA    COLUP0  
       STA    COLUP1  
       STX    GRP0    
       LDA    $DB     
       STA    GRP1    
       LDA    $AA     
       STA    PF1     
       LDA    $DC     
       STA.w  $001F   
       LDA    $AB     
       STA    PF2     
       LDA    ($98),Y 
       STA    $DB     
       LDA    $AC     
       STA    PF2     
       LDA    $AD     
       STA.w  $000E   
       LDA    ($96),Y 
       TAX            
       INY            
       LDA    ($96),Y 
       INY            
       CPY    #$04    
       BEQ    LF5B3   
LF5E2: STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    PF1     
       STA    ENABL   
       STA    PF2     
       STX    GRP0    
       LDA    $DB     
       STA    GRP1    
       LDA    #$00    
       LDA    ($C3),Y 
       STA    $DC     
       LDA    ($96),Y 
       TAX            
       LDA    ($98),Y 
       STA    $DB     
       INY            
       LDA    ($96),Y 
       INY            
       ASL    INPT0   
       ASL    INPT0   
       CPY    #$08    
       BEQ    LF5E2   
       STA    INPT0   
LF60F: STA    COLUP0  
       STA    COLUP1  
       STX    GRP0    
       LDA    $DB     
       STA    GRP1    
       LDA    $AE     
       STA    PF1     
       LDA    $DC     
       STA.w  $001F   
       LDA    $AF     
       STA    PF2     
       LDA    ($98),Y 
       STA    $DB     
       LDA    $B0     
       STA    PF2     
       LDA    $B1     
       STA.w  $000E   
       LDA    ($96),Y 
       TAX            
       INY            
       LDA    ($96),Y 
       INY            
       CPY    #$0C    
       BEQ    LF60F   
LF63E: STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    PF1     
       STA    ENABL   
       STA    PF2     
       STX    GRP0    
       LDA    $DB     
       STA    GRP1    
       LDA    #$00    
       LDA    ($C3),Y 
       STA    $DC     
       LDA    ($96),Y 
       TAX            
       LDA    ($98),Y 
       STA    $DB     
       INY            
       LDA    ($96),Y 
       INY            
       ASL    INPT0   
       ASL.w  $0038   
       CPY    #$10    
       BEQ    LF63E   
       NOP            
LF66B: STA    COLUP0  
       STA    COLUP1  
       STX    GRP0    
       LDA    $DB     
       STA    GRP1    
       LDA    $B2     
       STA    PF1     
       LDA    $DC     
       STA.w  $001F   
       LDA    $B3     
       STA    PF2     
       LDA    ($98),Y 
       STA    $DB     
       LDA    $B4     
       STA    PF2     
       LDA    $B5     
       STA.w  $000E   
       LDA    ($96),Y 
       TAX            
       INY            
       LDA    ($96),Y 
       INY            
       CPY    #$14    
       BEQ    LF66B   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    ENABL   
LF6A2: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    ENABL   
       TSX            
       DEX            
       DEX            
       TXS            
       BMI    LF716   
       LDX    $DD     
       INX            
       BIT    CXP0FB  
       BVS    LF6BF   
       BIT    CXP1FB  
       BVS    LF6D9   
       BVC    LF6F1   
LF6BF: LDA    #$26    
       STA    $80,X   
       LDA    #$0A    
       STA    $ED     
       LDA    $C7     
       STA    $DA     
       LDA    #$9F    
       STA    $BE,X   
       LDA    #$FF    
       STA    $D7     
       LDA    #$01    
       STA    $D6     
       BNE    LF6F1   
LF6D9: LDA    #$26    
       STA    $85,X   
       LDA    #$0A    
       STA    $ED     
       LDA    $C7     
       STA    $D9     
       LDA    #$9F    
       STA    $BE,X   
       LDA    #$FF    
       STA    $D7     
       LDA    #$01    
       STA    $D6     
LF6F1: STA    WSYNC   
       CPX    #$01    
       BNE    LF6FD   
       LDA    $CE     
       STA    NUSIZ0  
       STA    NUSIZ1  
LF6FD: STA    WSYNC   
       LDX    $DD     
       LDA    $BE,X   
       STA    $C3     
       TSX            
       ASL    $C7     
       LDA    $BD     
       ORA    $BC     
       BIT    $C7     
       BNE    LF713   
       JMP    LF34C   
LF713: JMP    LF4D4   
LF716: LDA    CXP0FB  
       BPL    LF722   
       LDA    $B6     
       EOR    #$01    
       STA    $B6     
       BPL    LF72C   
LF722: LDA    CXP1FB  
       BPL    LF72C   
       LDA    $B6     
       EOR    #$01    
       STA    $B6     
LF72C: BIT    CXP0FB  
       BVC    LF74E   
       LDA    #$FF    
       STA    $D7     
       LDA    #$01    
       STA    $D6     
       LDA    #$9F    
       STA    $BE     
       LDA    $E0     
       BNE    LF778   
       LDA    $8B     
       STA    $B8     
       LDA    #$1E    
       STA    $D3     
       LDA    #$01    
       STA    $E0     
       BNE    LF778   
LF74E: BIT    CXP1FB  
       BVC    LF770   
       LDA    #$FF    
       STA    $D7     
       LDA    #$01    
       STA    $D6     
       LDA    #$9F    
       STA    $BE     
       LDA    $E0     
       BNE    LF778   
       LDA    $8A     
       STA    $B8     
       LDA    #$1E    
       STA    $D3     
       LDA    #$01    
       STA    $E0     
       BNE    LF778   
LF770: ASL    INPT0   
       ASL    INPT0   
       ASL    INPT0   
       BVC    LF77C   
LF778: LDA    #$01    
       STA    $E7     
LF77C: LDA    $E6     
       ORA    CXBLPF  
       STA    $E6     
       STA    CXCLR   
       ASL    $C7     
       LDA    $BD     
       ORA    $BC     
       BIT    $C7     
       BNE    LF791   
       JMP    LF83E   
LF791: STA    WSYNC   
       LDA.w  $00B8   
       TXS            
       TAX            
       AND    #$F0    
       STA    HMP0    
       TXA            
       AND    #$0F    
       TAX            
LF7A0: DEX            
       BNE    LF7A0   
       STA    RESP0   
       STA    WSYNC   
       LDA    $CE     
       STA    NUSIZ0  
       LDA    #$12    
       STA    $BB     
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       LDA    #$02    
       STA    $BB     
       LDX    #$00    
       LDA    #$0E    
       STA    COLUP0  
LF7BF: STA    WSYNC   
       LDA    ($D1),Y 
       STA    GRP0    
       LDA    ($CF),Y 
       STA    ENABL   
       LDA    $A2,X   
       STA    PF1     
       LDA    $A3,X   
       STA    PF2     
       LDA    $A4,X   
       INY            
       ASL    INPT0   
       STA.w  $0038   
       STA    PF2     
       LDA    $A5,X   
       STA    PF1     
       STA    WSYNC   
       LDA    ($D1),Y 
       STA    GRP0    
       LDA    ($CF),Y 
       STA    ENABL   
       LDA    $A2,X   
       STA    PF1     
       LDA    $A3,X   
       STA    PF2     
       LDA    $A4,X   
       INY            
       ASL    INPT0   
       STA.w  $0038   
       STA    PF2     
       LDA    $A5,X   
       STA    PF1     
       INX            
       INX            
       INX            
       INX            
       LDA    #$02    
       STA    $BB     
LF807: STA    WSYNC   
       CPX    #$13    
       BCS    LF826   
       LDA    ($D1),Y 
       STA    GRP0    
       LDA    ($CF),Y 
       STA    ENABL   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       INY            
       DEC    $BB     
       BNE    LF807   
       LDA    #$02    
       STA    $BB     
       BNE    LF7BF   
LF826: LDA    ($D1),Y 
       STA    GRP0    
       LDA    #$00    
       STA    ENABL   
       STA    PF1     
       STA    PF2     
       STA    NUSIZ1  
       INY            
       LDA    ($D1),Y 
       TAX            
       INY            
       STA    HMCLR   
       JMP    LF889   
LF83E: STA    WSYNC   
       LDA.w  $00B8   
       TXS            
       TAX            
       AND    #$F0    
       STA    HMP0    
       TXA            
       AND    #$0F    
       TAX            
LF84D: DEX            
       BNE    LF84D   
       STA    RESP0   
       TSX            
       STA    WSYNC   
       LDA    $CE     
       STA    NUSIZ0  
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       LDA    #$0E    
       STA    COLUP0  
LF863: STA    WSYNC   
       LDA    ($D1),Y 
       STA    GRP0    
       LDA    ($CF),Y 
       STA    ENABL   
       INY            
       CPY    #$12    
       BNE    LF863   
       STA    WSYNC   
       LDA    ($D1),Y 
       STA    GRP0    
       LDA    #$00    
       STA    ENABL   
       STA    PF1     
       STA    PF2     
       STA    NUSIZ1  
       INY            
       LDA    ($D1),Y 
       TAX            
       INY            
       STA    HMCLR   
LF889: STA    WSYNC   
       STX    GRP0    
       NOP            
       LDA.w  $00B7   
       TAX            
       AND    #$F0    
       STA    HMP1    
       TXA            
       AND    #$0F    
       TAX            
LF89A: DEX            
       BNE    LF89A   
       STA    RESP1   
       STA    WSYNC   
       LDA    ($D1),Y 
       STA    GRP0    
       INY            
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($D1),Y 
       STA    GRP0    
       INY            
       STA    WSYNC   
       LDA    ($D1),Y 
       STA    GRP0    
       STY    $DB     
       LDY    #$00    
       LDA    ($B9),Y 
       TAX            
       INY            
       LDA    $D5     
       STA    REFP1   
       LDA    #$4A    
       STA    COLUP1  
       STY    $DC     
       LDY    $DB     
       LDA    ($D1),Y 
       INY            
LF8CC: STA    WSYNC   
       STA    GRP0    
       STX    GRP1    
       LDY    $DC     
       LDA    ($B9),Y 
       TAX            
       INY            
       STY    $DC     
       LDY    $DB     
       LDA    ($D1),Y 
       INY            
       STY    $DB     
       CPY    #$1D    
       BNE    LF8CC   
LF8E5: STA    WSYNC   
       STA    GRP0    
       STX    GRP1    
       LDA    $E1     
       STA    PF1     
       LDA    $E2     
       STA    PF2     
       LDY    $DC     
       LDA    ($B9),Y 
       TAX            
       INY            
       STY    $DC     
       LDA    $E3     
       TAY            
       LDA    $E4     
       NOP            
       NOP            
       STY    PF2     
       STA    PF1     
       LDY    $DB     
       LDA    ($D1),Y 
       INY            
       STY    $DB     
       CPY    #$1F    
       BNE    LF8E5   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$7E    
       AND    $D4     
       STA    COLUPF  
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    #$01    
       STA    CTRLPF  
       LDX    $F7     
       CPX    #$04    
       BCC    LF931   
       LDX    #$04    
LF931: LDA    LFEFD,X 
       STA    NUSIZ0  
       LDA    #$4A    
       STA    COLUP0  
       LDX    #$FF    
       TXS            
       STA    WSYNC   
       LDA    #$7C    
       AND    $D4     
       STA    COLUPF  
       LDX    #$05    
LF947: DEX            
       BNE    LF947   
       STA    RESP0   
       LDX    #$7B    
       LDY    #$00    
LF950: STA    WSYNC   
       TXA            
       AND    $D4     
       STA    COLUPF  
       LDA    $F7     
       CMP    #$02    
       BCC    LF96D   
       LDA    #$00    
       CPX    #$7A    
       BCS    LF96D   
       CPY    #$09    
       BEQ    LF96B   
       LDA    LFF70,Y 
       INY            
LF96B: STA    GRP0    
LF96D: DEX            
       CPX    #$6F    
       BNE    LF950   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    REFP1   
       SED            
       LDA    $F2     
       CLC            
       ADC    $E7     
       STA    $F2     
       LDA    $F3     
       ADC    #$00    
       STA    $F3     
       CLD            
       LDA    #$00    
       STA    $E7     
       LDA    $F8     
       BPL    LF99C   
       LDA    $9E     
       BEQ    LF99C   
       JMP    LFB14   
LF99C: STA    WSYNC   
       LDA    $F2     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $DC     
       LDA    $F2     
       AND    #$F0    
       LSR            
       STA    $DD     
       LDA    $F3     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $DE     
       LDA    $F3     
       AND    #$F0    
       LSR            
       STA    $DF     
       LDY    #$00    
       STA    WSYNC   
       LDA    $DF     
       BNE    LF9DA   
       STY    $DF     
       LDA    $DE     
       BNE    LF9DA   
       STY    $DE     
       LDA    $DD     
       BNE    LF9DA   
       STY    $DD     
       LDA    $DC     
       BNE    LF9DA   
       STY    $DC     
LF9DA: STA    WSYNC   
       LDX    #$00    
LF9DE: STA    WSYNC   
       CPX    #$00    
       BNE    LFA50   
       STA    HMCLR   
       LDA    #$0E    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$04    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       LDA    #$00    
       STA    CTRLPF  
       STA    REFP1   
       BIT    $FF     
       BIT    $FF     
       BIT    $FF     
LFA00: DEX            
       BNE    LFA00   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $F0     
       LDA    #$FE    
       STA    $F1     
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
LFA1B: LDY    $DC     
       LDA    ($F0),Y 
       TAX            
       LDY    $DF     
       STA    WSYNC   
       LDA    ($F0),Y 
       LDY    $DE     
       STA    GRP0    
       LDA    ($F0),Y 
       STA    GRP1    
       LDY    $DD     
       LDA    ($F0),Y 
       STA    $DB     
       LDY    #$00    
       LDA    ($F0),Y 
       LDY    $DB     
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       DEC    $F0     
       BPL    LFA1B   
       LDA    #$00    
       STA    NUSIZ1  
       STA    GRP0    
       STA    GRP1    
       LDX    #$01    
       BNE    LF9DE   
LFA50: LDA    $F8     
       BPL    LFA57   
       JMP    LFB14   
LFA57: JMP    LFFB7   
LFA5A: LDA    $C9     
       BPL    LFA81   
       LDA    $BD     
       ORA    $BC     
       BEQ    LFA81   
       CMP    #$20    
       BEQ    LFA7D   
       LDX    #$03    
       CLC            
LFA6B: ROR            
       BCS    LFA71   
       INX            
       BPL    LFA6B   
LFA71: STX    AUDF0   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$02    
       STA    AUDV0   
       BNE    LFA81   
LFA7D: LDA    #$00    
       STA    AUDV0   
LFA81: LDA    $C9     
       BEQ    LFA9D   
       BMI    LFA9D   
       CMP    #$01    
       BEQ    LFA99   
       EOR    #$0C    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       BNE    LFA9D   
LFA99: LDA    #$00    
       STA    AUDV0   
LFA9D: LDA    $D3     
       CMP    #$11    
       BCS    LFAB7   
       CMP    #$02    
       BCC    LFAB3   
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$FF    
       STA    AUDF0   
       BMI    LFAB7   
LFAB3: LDA    #$00    
       STA    AUDV0   
LFAB7: LDA    $ED     
       BEQ    LFAD4   
       BMI    LFAD4   
       LSR            
       BEQ    LFAD0   
       EOR    #$07    
       STA    AUDF0   
       ASL            
       ORA    COLUP1  
       STA    AUDC0   
       EOR    #$08    
       STA    AUDV0   
       JMP    LFAD4   
LFAD0: LDA    #$00    
       STA    AUDV0   
LFAD4: LDA    $F4     
       BEQ    LFAF3   
       BMI    LFAF3   
       CMP    #$02    
       BEQ    LFAEF   
       LSR            
       TAX            
       ASL            
       STA    AUDF1   
       LDA    LFF07,X 
       EOR    #$07    
       STA    AUDV1   
       STA    AUDC1   
       JMP    LFAF3   
LFAEF: LDA    #$00    
       STA    AUDV1   
LFAF3: LDA    $F7     
       CMP    #$01    
       BNE    LFB14   
       LDA    $F6     
       BEQ    LFB14   
       CMP    #$01    
       BEQ    LFB10   
       TAX            
       AND    #$0F    
       STA    AUDF0   
       LDA    LF000,X 
       STA    AUDC0   
       STA    AUDV0   
       JMP    LFB14   
LFB10: LDA    #$00    
       STA    AUDV0   
LFB14: LDA    $ED     
       CMP    #$0A    
       BNE    LFB1E   
       LDA    #$03    
       STA    $E7     
LFB1E: LDA    $E6     
       ORA    CXBLPF  
       BPL    LFB4A   
       LDA    #$01    
       STA    $D6     
       LDA    #$9F    
       LDX    #$04    
LFB2C: STA    $BE,X   
       DEX            
       BPL    LFB2C   
       STA    $CF     
       LDA    #$FF    
       STA    $D7     
       LDA    #$00    
       STA    $E6     
       LDX    #$13    
LFB3D: STA    $A2,X   
       DEX            
       BPL    LFB3D   
       LDA    #$FF    
       STA    $C9     
       LDA    $FD     
       STA    $E7     
LFB4A: LDA    $FB     
       BEQ    LFB5F   
       LDX    #$01    
       LDA    #$04    
       JSR    LFBF0   
       BCC    LFB5F   
       TAY            
       LDA    LFCEF,Y 
       STA    $80     
       STA    $85     
LFB5F: LDX    #$00    
       LDA    #$0C    
       JSR    LFBF0   
       BCC    LFB97   
       LDA    #$00    
       STA    $DF     
       LDA    $BC     
       STA    $DC     
       LDA    $BD     
       STA    $DD     
       LDY    #$04    
LFB76: LDX    #$01    
LFB78: LDA    LFD04,X 
       STA    $DE     
       LDA    #$00    
       ROR    $DC,X   
       ROL            
       ASL            
       CLC            
       ADC    $9E     
       TXS            
       TAX            
       LDA    LFCF1,X 
       STA    ($DE),Y 
       TSX            
       DEX            
       BPL    LFB78   
       DEY            
       BNE    LFB76   
       LDX    #$FF    
       TXS            
LFB97: LDA    $C9     
       BEQ    LFB9F   
       BMI    LFB9F   
       DEC    $C9     
LFB9F: LDA    $ED     
       BEQ    LFBDB   
       BMI    LFBDB   
       LDA    #$00    
       STA    $DF     
       LDX    #$01    
LFBAB: LDA    LFD04,X 
       STA    $DE     
       LDA    $D9,X   
       STA    $DD     
       LDY    #$04    
LFBB6: CLC            
       ROR    $DD     
       BCC    LFBC5   
       LDA    #$26    
       STA    ($DE),Y 
       DEC    $ED     
       BEQ    LFBCD   
       BNE    LFBDB   
LFBC5: DEY            
       BNE    LFBB6   
       DEX            
       BPL    LFBAB   
       BMI    LFBDB   
LFBCD: DEC    $ED     
       LDA    $D9,X   
       ORA    $EE,X   
       STA    $EE,X   
       LDA    #$00    
       STA    $D9,X   
       DEC    $F9     
LFBDB: JMP    LFE50   
LFBDE: LDA    INTIM   
       BNE    LFBDE   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       JMP    LFF8B   
LFBF0: DEC    $9A,X   
       BNE    LFBFF   
       STA    $9A,X   
       LDA    $9E,X   
       EOR    #$01    
       STA    $9E,X   
       SEC            
       BCS    LFC00   
LFBFF: CLC            
LFC00: RTS            

LFC01: CLC            
       ADC    $DB     
       BVC    LFC0C   
       CLC            
       ADC    #$10    
       SEC            
       SBC    #$01    
LFC0C: RTS            

LFC0D: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$10,$00,$08,$18,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$50,$05,$81,$24
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFCEF: .byte $48,$5A
LFCF1: .byte $02,$14,$02,$02
LFCF5: .byte $0D
LFCF6: .byte $FC,$0D,$FC
LFCF9: .byte $2D
LFCFA: .byte $FC,$9F,$FC
LFCFD: .byte $14,$1C,$22,$06,$0E
LFD02: .byte $55,$AA
LFD04: .byte $85,$80
LFD06: SEI            
       CLD            
       LDA    #$00    
       TAX            
LFD0B: STA    VSYNC,X 
       INX            
       BNE    LFD0B   
       DEX            
       TXS            
       JSR    LFD7B   
       LDA    #$38    
       STA    $80     
       STA    $85     
       LDA    #$FF    
       STA    $97     
       STA    $99     
       LDA    #$FC    
       STA    $C4     
       STA    $D0     
       STA    $D2     
       LDA    #$9F    
       STA    $CF     
       STA    $D1     
       STA    $B9     
       STA    $BF     
       STA    $BE     
       LDA    #$0D    
       STA    $E8     
       STA    $E9     
       LDA    #$10    
       STA    $EB     
       LDA    #$0C    
       STA    $9A     
       LDA    #$FC    
       STA    $BA     
       STX    $C9     
       STX    $D7     
       STX    $F8     
       STX    $D4     
       INX            
       INX            
       STX    $94     
       STX    $FC     
       INX            
       STX    $9D     
       INX            
       STX    $EC     
       INX            
       STX    $9B     
       STX    $9C     
       INX            
       STX    $CD     
       STX    $B7     
       STX    $B8     
       STX    $C6     
       JMP    LFF8B   
LFD6C: LDA    $95     
       LSR            
       LDA    $94     
       ROR            
       EOR    $95     
       LDY    $94     
       STA    $94     
       STY    $95     
       RTS            

LFD7B: LDX    #$04    
LFD7D: LDA    #$02    
       STA    $85,X   
       STA    $80,X   
       LDA    #$9F    
       STA    $BE,X   
       DEX            
       CPX    #$01    
       BNE    LFD7D   
       LDX    #$09    
LFD8E: LDA    #$B6    
       STA    $8A,X   
       DEX            
       LDA    #$14    
       STA    $8A,X   
       DEX            
       BPL    LFD8E   
       LDA    #$83    
       STA    $8A     
       LDA    #$03    
       STA    $8B     
       LDA    #$08    
       STA    $F9     
       LDA    #$10    
       STA    $EB     
       RTS            

LFDAB: LDA    $FB     
       BEQ    LFDD6   
       LDA    #$20    
       STA    $DB     
       LDA    $B6     
       BEQ    LFDC8   
       LDA    $8B     
       JSR    LFC01   
       STA    $8B     
       LDA    $8A     
       JSR    LFC01   
       STA    $8A     
       JMP    LFDD6   
LFDC8: LDA    $8B     
       JSR    LFECB   
       STA    $8B     
       LDA    $8A     
       JSR    LFECB   
       STA    $8A     
LFDD6: JMP    LF187   
LFDD9: LDA    $F4     
       BNE    LFDE5   
       LDA    CXPPMM  
       BPL    LFDE5   
       LDA    #$46    
       STA    $F4     
LFDE5: RTS            

LFDE6: LDA    $F4     
       BEQ    LFDF6   
       BMI    LFDF6   
       LDA    #$82    
       STA    $B9     
       LDA    #$FF    
       STA    $BA     
       DEC    $F4     
LFDF6: RTS            

LFDF7: .byte $00,$00,$01,$03,$00,$00,$00,$00,$00,$3E,$63,$63,$63,$63,$63,$63
       .byte $3E,$1E,$0C,$0C,$0C,$0C,$0C,$1C,$0C,$7F,$60,$60,$3E,$03,$03,$43
       .byte $3E,$3E,$43,$03,$03,$1E,$03,$43,$3E,$06,$06,$06,$3F,$26,$16,$0E
       .byte $06,$3E,$43,$03,$03,$7E,$60,$60,$7F,$3E,$63,$63,$63,$7E,$60,$60
       .byte $3E,$30,$30,$10,$08,$04,$02,$41,$7F,$3E,$63,$63,$63,$3E,$63,$63
       .byte $3E,$3E,$43,$03,$3F,$63,$63,$63,$3E
LFE50: LDA    #$00    
       STA    $DF     
       LDX    #$01    
LFE56: LDA    LFD04,X 
       STA    $DE     
       LDA    $EE,X   
       STA    $DC     
       LDY    #$04    
LFE61: CLC            
       ROR    $DC     
       BCC    LFE6A   
       LDA    #$38    
       STA    ($DE),Y 
LFE6A: DEY            
       BNE    LFE61   
       DEX            
       BPL    LFE56   
       LDA    $F4     
       BNE    LFEC8   
       DEC    $E8     
       BNE    LFE81   
       LDA    $E9     
       STA    $E8     
       JSR    LFD6C   
       STA    $EA     
LFE81: LDA    $EB     
       STA    $DB     
       LDX    #$09    
       LDA    $BC     
       STA    $DE     
       LDA    $BD     
       STA    $DF     
       LDA    #$01    
       STA    $DC     
LFE93: TXA            
       AND    #$01    
       STX    $DD     
       TAX            
       LDA    $DC     
       ROR    $DE,X   
       BCS    LFEBF   
       LDX    $DD     
       BIT    $EA     
       BEQ    LFEAC   
       LDA    $8A,X   
       JSR    LFC01   
       BNE    LFEB1   
LFEAC: LDA    $8A,X   
       JSR    LFECB   
LFEB1: TAY            
       AND    #$0F    
       CMP    #$01    
       BCC    LFEBF   
       CMP    #$0A    
       BCS    LFEBF   
       TYA            
       STA    $8A,X   
LFEBF: LDX    $DD     
       ASL    $DC     
       DEX            
       CPX    #$01    
       BNE    LFE93   
LFEC8: JMP    LFBDE   
LFECB: SEC            
       SBC    $DB     
       BVC    LFED6   
       SEC            
       SBC    #$10    
       CLC            
       ADC    #$01    
LFED6: RTS            

LFED7: LDA    $F4     
       BPL    LFEFC   
       DEC    $F6     
       BNE    LFEFC   
       LDA    #$00    
       STA    $F4     
       LDX    #$03    
LFEE5: STA    $E1,X   
       DEX            
       BPL    LFEE5   
       LDA    $F7     
       BEQ    LFEF0   
       DEC    $F7     
LFEF0: LDA    #$05    
       STA    $B7     
       LDA    #$70    
       STA    $B9     
       LDA    #$FF    
       STA    $BA     
LFEFC: RTS            

LFEFD: .byte $00,$00,$00,$02,$06,$00,$00,$24,$0E,$18
LFF07: .byte $46,$3C,$46,$7E,$46,$81,$9E,$81,$9E,$42,$2E,$00,$00,$00,$00,$24
       .byte $0E,$18,$46,$3C,$46,$24,$46,$42,$9E,$42,$9E,$24,$2E,$00,$00,$00
       .byte $00,$00,$0E,$13,$46,$21,$46,$86,$76,$34,$9E,$05,$9E,$00,$2E,$00
       .byte $00,$00,$00,$00,$0E,$00,$46,$00,$46,$00,$46,$00,$9E,$00,$9E,$00
       .byte $2E,$00,$00,$00,$00,$00,$00,$24,$0E,$18,$EC,$3C,$EC,$24,$EC,$28
       .byte $2E,$14,$2E,$00,$00,$00,$00,$00,$00,$24,$0E,$18,$EC,$7E,$EC,$24
       .byte $EC,$14,$2E,$28,$2E,$00,$00,$00,$00
LFF70: .byte $04,$0A,$0F,$0E,$04,$86,$FF,$C7,$7E,$08,$08,$1C,$1C,$1C,$86,$FF
       .byte $C7,$7E,$00,$00,$00,$1E,$08,$08,$1E,$3F,$7F
LFF8B: LDX    #$2A    
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STX    TIM8T   
       LDX    #$37    
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$1E    
       AND    $D4     
       STA    COLUPF  
       LDA    #$C0    
       STA    PF0     
LFFA8: LDA    INTIM   
       BNE    LFFA8   
       STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       JMP    LF003   
LFFB7: LDA    $D6     
       BEQ    LFFD1   
       CMP    #$0E    
       BCS    LFFD5   
       CMP    #$06    
       BCC    LFFD1   
       STA    AUDF1   
       ASL            
       ASL            
       EOR    #$0D    
       STA    AUDC1   
       EOR    #$0F    
       STA    AUDV1   
       BPL    LFFD5   
LFFD1: LDA    #$00    
       STA    AUDV1   
LFFD5: JMP    LFA5A   
LFFD8: DEC    $E5     
       LDA    $E5     
       BEQ    LFFE7   
       CMP    #$80    
       BNE    LFFF7   
       LDX    #$01    
       JMP    LFFE9   
LFFE7: LDX    #$00    
LFFE9: LDY    #$03    
LFFEB: LDA.wy $00E1,Y 
       AND    LFD02,X 
       STA.wy $00E1,Y 
       DEY            
       BPL    LFFEB   
LFFF7: RTS            

LFFF8: .byte $05,$10,$20,$50,$00,$F0,$00,$F0
