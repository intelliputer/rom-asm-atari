; Disassembly of roms/Thunderground.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Thunderground.bin
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
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXM0FB  =  $34
CXM1FB  =  $35
CXPPMM  =  $37
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
LF000: SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       TXS            
       STX    $81     
       INX            
       BNE    LF005   
LF00D: LDA    $83     
       BNE    LF014   
       JMP    LFA25   
LF014: LDA    #$E0    
       CLC            
       ADC    $C6     
       STA    COLUBK  
       LDX    $C8     
       LDA    LFCFC,X 
       STA    COLUPF  
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       CMP    $DA     
       BNE    LF036   
       LDA    #$1E    
       STA    $84     
LF036: LDA    $F8     
       BEQ    LF04A   
       LDA    $F9     
       CMP    #$02    
       BCC    LF083   
       BNE    LF046   
       LDA    $F8     
       STA    $E0     
LF046: DEC    $F9     
       BNE    LF08D   
LF04A: LDX    $F9     
       LDA    LFD91,X 
       CMP    $E5     
       BCS    LF083   
       ADC    #$14    
       CMP    $E5     
       BCC    LF083   
       LDA    LFD95,X 
       CMP    $E2     
       BCS    LF083   
       ADC    #$14    
       CMP    $E2     
       BCC    LF083   
       LDA    $E0     
       STA    $F8     
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFF5,X 
       STA    $E0     
       LDA    LFF56,X 
       LDX    #$04    
       JSR    LFF7B   
       LDA    #$2F    
       STA    $F9     
       STA    $8B     
       BNE    LF08D   
LF083: LDA    $80     
       BNE    LF090   
       LDY    $DC     
       BEQ    LF08D   
       STA    $E7     
LF08D: JMP    LF260   
LF090: LDA    $DB     
       BEQ    LF0A6   
       LDX    $DC     
       BEQ    LF0A6   
       LDY    #$01    
       CPX    #$E1    
       BCS    LF0A0   
       STY    $DC     
LF0A0: CMP    #$E1    
       BCS    LF0A6   
       STY    $DB     
LF0A6: DEC    $85     
       LDY    #$00    
       LDA    $DA     
       BEQ    LF0C3   
       DEC    $DA     
       CMP    #$F0    
       BCS    LF0B6   
       LDY    #$08    
LF0B6: STY    $E0     
       CMP    #$D8    
       BNE    LF0DC   
       DEC    $83     
       JSR    LF5DE   
       BNE    LF0ED   
LF0C3: LDA    $E5     
       AND    #$03    
       CMP    #$01    
       BNE    LF0DC   
       LDA    $E2     
       AND    #$03    
       CMP    #$03    
       BNE    LF0DC   
       LDX    $8C     
       LDA    LFCB4,X 
       BEQ    LF0DC   
       STA    $E0     
LF0DC: LDA    $85     
       AND    #$03    
       BEQ    LF0F0   
       CMP    #$03    
       BEQ    LF0F0   
       TAX            
       JSR    LF627   
       JSR    LF676   
LF0ED: JMP    LF1B7   
LF0F0: LDA    $85     
       BNE    LF108   
       LDA    #$30    
       STA    $85     
       LDA    $DA     
       BNE    LF0ED   
       DEC    $89     
       LDA    $89     
       CMP    #$3C    
       BCS    LF108   
       LDA    #$2F    
       STA    $8B     
LF108: LDA    $DA     
       BMI    LF0ED   
       LDA    $E5     
       AND    #$03    
       CMP    #$01    
       BNE    LF122   
       LDA    $E2     
       AND    #$03    
       CMP    #$03    
       BNE    LF122   
       LDA    $8C     
       CMP    #$0F    
       BEQ    LF0ED   
LF122: LDA    $E0     
       CMP    #$18    
       BNE    LF14B   
       LDA    $E5     
       CLC            
       ADC    #$01    
       CMP    #$8A    
       BCC    LF133   
       LDA    #$89    
LF133: STA    $E5     
       CLC            
       ADC    #$06    
       LDY    $E2     
       JSR    LFD99   
       LDA    $E2     
       SEC            
       SBC    #$07    
       TAY            
       LDA    $E5     
       CLC            
       ADC    #$06    
       JSR    LFD99   
LF14B: CMP    #$10    
       BNE    LF16B   
       LDY    $E2     
       LDA    $E5     
       SBC    #$01    
       CMP    #$11    
       BCS    LF15B   
       LDA    #$11    
LF15B: STA    $E5     
       JSR    LFD99   
       LDA    $E2     
       SEC            
       SBC    #$07    
       TAY            
       LDA    $E5     
       JSR    LFD99   
LF16B: CMP    #$20    
       BNE    LF18E   
       LDA    $E2     
       CLC            
       ADC    #$01    
       CMP    #$38    
       BCC    LF17A   
       LDA    #$37    
LF17A: STA    $E2     
       TAY            
       DEY            
       LDA    $E5     
       JSR    LFD99   
       LDY    $E2     
       DEY            
       LDA    $E5     
       CLC            
       ADC    #$03    
       JSR    LFD99   
LF18E: CMP    #$28    
       BNE    LF1B7   
       LDA    $E2     
       SBC    #$01    
       CMP    #$07    
       BCS    LF19C   
       LDA    #$07    
LF19C: STA    $E2     
       SEC            
       SBC    #$07    
       TAY            
       LDA    $E5     
       SBC    #$01    
       JSR    LFD99   
       LDA    $E2     
       SEC            
       SBC    #$07    
       TAY            
       LDA    $E5     
       CLC            
       ADC    #$03    
       JSR    LFD99   
LF1B7: LDA    $D7     
       BEQ    LF207   
       DEC    $D7     
       LDA    $DA     
       BMI    LF207   
       LDA    $C9     
       EOR    #$80    
       STA    $C9     
       BPL    LF1CF   
       LDX    #$01    
       LDA    $D0     
       BMI    LF1DA   
LF1CF: LDX    #$00    
       LDA    $CF     
       BMI    LF1DA   
       INX            
       LDA    $D0     
       BPL    LF207   
LF1DA: LDA    #$F0    
       STA    $82     
       LDY    $8C     
       LDA    LFCB4,Y 
       TAY            
       BNE    LF1E8   
       LDY    $E0     
LF1E8: LDA    $C9     
       CPY    #$10    
       BNE    LF20A   
       AND    LFAFB,X 
       STA    $C9     
       LDA    $E5     
       CLC            
       ADC    #$04    
LF1F8: STA    $CB,X   
       LDA    $E2     
       SEC            
       SBC    #$02    
       CPX    #$01    
       BNE    LF205   
       SBC    #$02    
LF205: STA    $CF,X   
LF207: JMP    LF24A   
LF20A: CPY    #$18    
       BNE    LF21C   
       AND    LFAFB,X 
       ORA    LFE08,X 
       STA    $C9     
       LDA    $E5     
       ADC    #$04    
       BNE    LF1F8   
LF21C: CPY    #$20    
       BNE    LF22E   
       AND    LFAFB,X 
       ORA    LFE0A,X 
       STA    $C9     
       LDA    $E2     
       SBC    #$01    
       BNE    LF23A   
LF22E: AND    LFAFB,X 
       ORA    LFE0C,X 
       STA    $C9     
       LDA    $E2     
       SBC    #$05    
LF23A: STA    $CF,X   
       LDA    $E5     
       CLC            
       ADC    #$03    
       CPX    #$01    
       BNE    LF248   
       CLC            
       ADC    #$02    
LF248: STA    $CB,X   
LF24A: LDA    $C9     
       LDX    $C5     
       BEQ    LF252   
       LSR            
       LSR            
LF252: LDY    $DA     
       BNE    LF260   
       LDY    $CF,X   
       BMI    LF25D   
       JSR    LF955   
LF25D: JSR    LF87E   
LF260: LDX    #$01    
LF262: LDY    $D8,X   
       LDA    LFE04,Y 
       SEC            
       SBC    $E3,X   
       STA    $DE,X   
       DEX            
       BEQ    LF262   
       LDX    $C5     
       LDA    $DB,X   
       BNE    LF287   
       LDA    #$0F    
       LDY    $D3     
       BEQ    LF285   
       CPY    #$02    
       BCS    LF283   
       CPX    #$00    
       BEQ    LF285   
LF283: LDA    #$96    
LF285: STA    $D5,X   
LF287: LDA    #$08    
       STA    $DD     
       LDA    $81     
       BNE    LF297   
       LDA    $86     
       ORA    #$04    
       DEC    $86     
       STA    COLUP1  
LF297: LDA    $80     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF4E,X 
       STA    NUSIZ0  
       LDA    LFD84,X 
       LDX    #$00    
       JSR    LFF5F   
       LDA    $80     
       AND    #$07    
       TAX            
       LDA    LFF4E,X 
       STA    NUSIZ1  
       LDA    LFD7C,X 
       LDX    #$01    
       JSR    LFF5F   
       LDX    $C5     
       LDA    $CB,X   
       LDX    #$02    
       JSR    LFF5F   
       LDX    $C5     
       LDA    $CD,X   
       LDX    #$03    
       JSR    LFF5F   
       STA    WSYNC   
       STA    HMOVE   
LF2D3: LDA    INTIM   
       BNE    LF2D3   
       STA    HMCLR   
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$0C    
       JSR    LFDFA   
       LDA    #$F9    
       STA    PF1     
       LDA    #$99    
       STA    PF2     
       LDY    #$08    
LF2ED: LDA    $85     
       ADC    $F9     
       AND    #$07    
       CMP    #$04    
       BCC    LF2FF   
       LDA    LFCDC,Y 
       LDX    LFCE5,Y 
       BNE    LF305   
LF2FF: LDA    LFCE5,Y 
       LDX    LFCDC,Y 
LF305: STA    WSYNC   
       STA    GRP0    
       STX    GRP1    
       DEY            
       BPL    LF2ED   
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDY    #$24    
       LDA    $F8     
       BEQ    LF31A   
       LDY    #$98    
LF31A: STY    COLUP0  
       LDX    $C5     
       LDA    $D5,X   
       STA    COLUP1  
       LDA    #$35    
       STA    TIM8T   
       LDA    $E5     
       LDX    #$00    
       JSR    LFF5F   
       LDA    $E7     
       LDY    $C5     
       BNE    LF336   
       LDA    $E6     
LF336: LDX    #$01    
       JSR    LFF5F   
LF33B: LDA    INTIM   
       BNE    LF33B   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $C8     
       LDY    LFCEE,X 
       LDA    SWCHB   
       AND    #$08    
       BNE    LF352   
       LDY    #$04    
LF352: LDX    #$37    
       STY    COLUPF  
       LDA    $C5     
       BNE    LF35F   
       STA    WSYNC   
       JMP    LFE0E   
LF35F: STA    WSYNC   
       JMP    LFC00   
LF364: LDX    $C8     
       LDA    LFE00,X 
       STA    COLUBK  
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    ENAM0   
       STX    ENAM1   
       STA    WSYNC   
       LDX    $83     
       CPX    #$08    
       BCC    LF381   
       LDX    #$07    
LF381: LDA    LFEF4,X 
       STA    NUSIZ0  
       LDA    #$37    
       STA    TIM8T   
       LDA    $88     
       LDX    #$00    
       JSR    LFF5F   
       LDA    $89     
       INX            
       JSR    LFF5F   
LF398: LDA    INTIM   
       BNE    LF398   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$06    
       JSR    LFDFA   
       LDA    #$0F    
       STA    COLUP1  
       LDX    $83     
       LDY    #$07    
LF3AE: LDA    $88     
       BNE    LF3B6   
       LDA    #$00    
       BEQ    LF3C0   
LF3B6: LDA    LFF18,Y 
       CPX    #$01    
       BNE    LF3C0   
       LDA    LFCF2,Y 
LF3C0: STA    WSYNC   
       STA    GRP0    
       LDA    $88     
       BEQ    LF3CB   
       LDA    LFB00,Y 
LF3CB: STA    GRP1    
       STA    WSYNC   
       DEY            
       BPL    LF3AE   
LF3D2: LDX    #$00    
       STX    GRP0    
       LDA    #$40    
       JSR    LFF5F   
       INX            
       STX    VDELP0  
       STX    VDELP1  
       LDA    #$4A    
       JSR    LFF5F   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$08    
       STA    HMOVE   
LF3F5: STY    $FA     
       LDA    LFD00,Y 
       STA    $FB     
       STA    WSYNC   
       LDA    ($EA),Y 
       STA    GRP0    
       LDA    ($EC),Y 
       STA    GRP1    
       LDA    ($EE),Y 
       STA    GRP0    
       LDA    ($F0),Y 
       NOP            
       TAX            
       LDA    ($F2),Y 
       LDY    $FB     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $FA     
       DEY            
       BPL    LF3F5   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$7C    
       LDX    #$01    
       JSR    LFF5F   
       LDA    #$84    
       LDX    #$00    
       JSR    LFF5F   
       STA    HMOVE   
       LDY    #$08    
LF43F: LDA    ($F4),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    ($F6),Y 
       STA    GRP0    
       DEY            
       BPL    LF43F   
       LDY    #$FF    
       LDA    $C5     
       TAX            
       EOR    #$01    
       STA    $C5     
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $80     
       BEQ    LF48D   
       LDA    $DA     
       BNE    LF48D   
       LDA    CXM0FB  
       BPL    LF46B   
       STY    $CF,X   
LF46B: LDA    CXM1P   
       BMI    LF483   
       LDA    $89     
       CMP    #$29    
       BEQ    LF483   
       LDA    $C7     
       CMP    #$08    
       BCS    LF47F   
       LDA    $DB,X   
       BNE    LF48D   
LF47F: LDA    CXPPMM  
       BPL    LF48D   
LF483: LDA    #$00    
       STA    $8B     
       LDA    #$06    
       STA    $C6     
       STY    $DA     
LF48D: STA    WSYNC   
       LDA    CXM1FB  
       BPL    LF49D   
       CPX    #$00    
       BEQ    LF49B   
       STY    $D2     
       BNE    LF49D   
LF49B: STY    $D1     
LF49D: LDA    $E2     
       CLC            
       ADC    #$07    
       STA    $E2     
       STA    WSYNC   
       LDA    #$20    
       STA    TIM64T  
       LDY    #$00    
       LDX    $E8     
       BEQ    LF4B9   
       DEC    $E8     
       LDA    #$01    
       LDY    #$03    
       BNE    LF4E5   
LF4B9: LDA    $84     
       BMI    LF4DB   
       LDA    #$00    
       STA    $82     
       DEC    $84     
       BEQ    LF4E5   
       LDA    $C6     
       BEQ    LF4D3   
       CMP    #$44    
       BNE    LF4D1   
       STY    $C6     
       BEQ    LF4D3   
LF4D1: DEC    $C6     
LF4D3: LDA    #$08    
       LDX    #$1F    
       LDY    #$0F    
       BNE    LF4E5   
LF4DB: LDX    $82     
       BEQ    LF4E5   
       INC    $82     
       LDA    #$08    
       LDY    #$08    
LF4E5: STA    AUDC0   
       STX    AUDF0   
       STY    AUDV0   
       LDY    $E9     
       BEQ    LF4F9   
       DEC    $E9     
       LDA    #$08    
       LDX    #$00    
       LDY    #$04    
       BNE    LF525   
LF4F9: LDY    $8B     
       BEQ    LF50D   
       DEC    $8B     
       CPY    #$12    
       BCS    LF507   
       LDY    #$00    
       BEQ    LF50D   
LF507: LDA    #$06    
       LDX    #$01    
       BNE    LF525   
LF50D: LDA    $80     
       BEQ    LF529   
       LDA    $83     
       BEQ    LF529   
       LDA    $DA     
       BNE    LF529   
       LDA    $8C     
       CMP    #$0F    
       BEQ    LF529   
       LDA    #$0E    
       LDX    #$08    
       LDY    #$0A    
LF525: STA    AUDC1   
       STX    AUDF1   
LF529: STY    AUDV1   
LF52B: LDA    $88     
       BEQ    LF539   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF539   
       JMP    LF000   
LF539: LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $8C     
       LDA    REFP1   
       EOR    $D4     
       BPL    LF550   
       LDA    REFP1   
       STA    $D4     
       BMI    LF550   
       INC    $D7     
LF550: LDA    $84     
       BPL    LF5B7   
       LDA    $80     
       BNE    LF5B7   
       STA    $DA     
       LDA    $88     
       BEQ    LF577   
       LDA    $C5     
       BNE    LF5B7   
       LDA    #$04    
       STA    $E8     
       INC    $88     
       LDA    #$24    
       JSR    LFF79   
       LDA    CXPPMM  
       BPL    LF5B7   
       LDA    #$00    
       STA    $F8     
       STA    $E8     
LF577: INC    $D3     
       LDA    #$09    
       LDX    #$0C    
       JSR    LFF7B   
       LDA    $F4     
       SEC            
       SBC    #$5A    
       BNE    LF589   
       STA    $F4     
LF589: LDA    $D3     
       CMP    #$04    
       BNE    LF5A1   
       LDX    #$00    
       STX    $D3     
       INC    $83     
       LDX    #$2F    
       STX    $8B     
       INC    $C7     
       LDA    $C7     
       AND    #$03    
       STA    $C8     
LF5A1: LDA    #$77    
       LDX    #$FF    
       LDY    $C7     
       BEQ    LF5AD   
       LDX    #$05    
       LDA    #$01    
LF5AD: STA    $80     
       STX    $81     
       JSR    LF5DE   
       JSR    LFF8F   
LF5B7: LDA    INTIM   
       BNE    LF5B7   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    CXCLR   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$21    
       STA    TIM64T  
       JMP    LF00D   
LF5DE: LDX    $83     
       CPX    #$05    
       BCC    LF5E6   
       LDX    #$04    
LF5E6: LDA    LFEFB,X 
       STA    $88     
       LDA    #$8C    
       STA    $89     
       LDX    #$00    
       STX    $E9     
       STX    $D7     
       STX    $C6     
       STX    $DA     
       STX    $DB     
       STX    $DC     
       STX    $D8     
       INX            
       STX    $D9     
       LDA    #$91    
       STA    $E6     
       LDA    #$07    
       STA    $E7     
       STA    $E2     
       LDA    #$33    
       STA    $E3     
       STA    $E4     
       LDA    #$20    
       STA    $E0     
       LDA    #$4D    
       STA    $E5     
       LDY    #$FF    
       STY    $D1     
       STY    $D2     
       STY    $CF     
       STY    $D0     
       STY    $E1     
       RTS            

LF627: DEX            
       LDA    $DB,X   
       BEQ    LF675   
       DEC    $DB,X   
       CMP    #$F0    
       BEQ    LF671   
       BCS    LF669   
       CMP    #$E0    
       BCC    LF649   
       DEC    $D5,X   
       BNE    LF675   
       LDA    #$33    
       STA    $E3,X   
       LDA    LFCFA,X 
       STA    $E6,X   
       TXA            
       STA    $D8,X   
       RTS            

LF649: LDY    $C7     
       CPY    #$08    
       BCS    LF656   
       LDA    $DB,X   
       CMP    LFCC4,Y 
       BCS    LF675   
LF656: LDY    #$14    
       LDA    $E6     
       SBC    $E7     
       CMP    #$E0    
       BCS    LF666   
       CMP    #$20    
       BCC    LF666   
       LDY    #$00    
LF666: STY    $DB,X   
       RTS            

LF669: AND    #$03    
       BEQ    LF671   
       LDA    #$56    
       BNE    LF673   
LF671: LDA    #$0F    
LF673: STA    $D5,X   
LF675: RTS            

LF676: STX    $FB     
       LDA    $DA     
       BNE    LF675   
       LDA    $DB,X   
       BNE    LF675   
       LDA    $D8,X   
       BEQ    LF687   
       JMP    LF724   
LF687: LDA    $E6,X   
       SEC            
       SBC    #$01    
       CMP    #$11    
       BCC    LF699   
       JSR    LFFDE   
       BCS    LF69B   
LF695: LDA    $FA     
       STA    $E6,X   
LF699: BNE    LF6FF   
LF69B: LDA    $E3,X   
       LDY    $C7     
       CPY    #$04    
       BCC    LF6B7   
       CMP    #$33    
       BCC    LF6AD   
       LDY    $E2     
       CPY    #$33    
       BCS    LF6B1   
LF6AD: CMP    $E2     
       BNE    LF6B7   
LF6B1: LDY    $E6,X   
       CPY    $E5     
       BCC    LF6F9   
LF6B7: TAY            
       LDA    $FA     
       SEC            
       SBC    #$01    
       JSR    LFD99   
       BNE    LF6FF   
       LDX    $FB     
       LDA    $E3,X   
       SEC            
       SBC    #$07    
       TAY            
       LDA    $FA     
       SBC    #$01    
       JSR    LFD99   
       BNE    LF6FF   
       LDX    $FB     
       TXA            
       EOR    #$01    
       TAY            
       LDA    $FA     
       CMP.wy $00E6,Y 
       BCC    LF6FC   
       SBC    #$09    
       CMP.wy $00E6,Y 
       BCS    LF6FC   
       LDA    $E3,X   
       ADC    #$07    
       CMP.wy $00E3,Y 
       BCC    LF6FC   
       SBC    #$0F    
       BMI    LF6F9   
       CMP.wy $00E3,Y 
       BCS    LF6FC   
LF6F9: JMP    LF817   
LF6FC: JMP    LF79F   
LF6FF: LDX    $FB     
       LDA    $D5,X   
       CMP    #$0F    
       BNE    LF713   
       LDA    $85     
       CMP    #$21    
       BCC    LF713   
       CMP    #$27    
       BCC    LF719   
       BCS    LF71D   
LF713: LDA    $E3,X   
       CMP    $E2     
       BCS    LF71D   
LF719: LDA    #$02    
       BNE    LF71F   
LF71D: LDA    #$03    
LF71F: LDX    $FB     
       STA    $D8,X   
       RTS            

LF724: CMP    #$01    
       BEQ    LF72B   
       JMP    LF7A4   
LF72B: LDA    $E6,X   
       CLC            
       ADC    #$01    
       CMP    #$8A    
       BCS    LF6FF   
       JSR    LFFDE   
       BCS    LF73C   
       JMP    LF695   
LF73C: LDA    $E3,X   
       LDY    $C7     
       CPY    #$04    
       BCC    LF75B   
       CMP    #$33    
       BCC    LF74E   
       LDY    $E2     
       CPY    #$33    
       BCS    LF752   
LF74E: CMP    $E2     
       BNE    LF75B   
LF752: LDY    $E6,X   
       CPY    $E5     
       BCC    LF75B   
LF758: JMP    LF81B   
LF75B: TAY            
       LDA    $FA     
       CLC            
       ADC    #$06    
       JSR    LFD99   
       BNE    LF6FF   
       LDX    $FB     
       LDA    $E3,X   
       SEC            
       SBC    #$07    
       TAY            
       LDA    $FA     
       CLC            
       ADC    #$06    
       JSR    LFD99   
       BNE    LF6FF   
       LDX    $FB     
       TXA            
       EOR    #$01    
       TAY            
       LDA    $FA     
       CMP.wy $00E6,Y 
       BCS    LF79F   
       ADC    #$09    
       CMP.wy $00E6,Y 
       BCC    LF79F   
       LDA    $E3,X   
       CLC            
       ADC    #$07    
       CMP.wy $00E3,Y 
       BCC    LF79F   
       SBC    #$0F    
       BMI    LF758   
       CMP.wy $00E3,Y 
       BCC    LF81B   
LF79F: LDA    $FA     
       STA    $E6,X   
       RTS            

LF7A4: CMP    #$02    
       BNE    LF822   
       LDA    $E3,X   
       CLC            
       ADC    #$01    
       CMP    #$38    
       BCS    LF7F7   
       JSR    LFFCD   
       BEQ    LF7F7   
       LDA    $E6,X   
       LDY    $FA     
       JSR    LFD99   
       BNE    LF7F7   
       LDX    $FB     
       LDY    $FA     
       LDA    $E6,X   
       CLC            
       ADC    #$03    
       JSR    LFD99   
       BNE    LF7F7   
       LDX    $FB     
       TXA            
       EOR    #$01    
       TAY            
       LDA    $FA     
       CMP.wy $00E3,Y 
       BCS    LF7F4   
       ADC    #$07    
       CMP.wy $00E3,Y 
       BCC    LF7F4   
       LDA    $E6,X   
       SBC    #$08    
       CMP.wy $00E6,Y 
       BCS    LF7F4   
       ADC    #$0F    
       CMP.wy $00E6,Y 
       BCC    LF7F4   
       JMP    LF71D   
LF7F4: JMP    LF879   
LF7F7: LDX    $FB     
       LDA    $D5,X   
       CMP    #$0F    
       BNE    LF80B   
       LDY    $85     
       CPY    #$21    
       BCC    LF80B   
       CPY    #$27    
       BCC    LF817   
       BCS    LF81B   
LF80B: LDA    $E6,X   
       CMP    $E5     
       BCC    LF817   
       BNE    LF81B   
       CMP    #$50    
       BCS    LF81B   
LF817: LDA    #$01    
       BNE    LF81D   
LF81B: LDA    #$00    
LF81D: LDX    $FB     
       STA    $D8,X   
       RTS            

LF822: LDA    $E3,X   
       SEC            
       SBC    #$01    
       CMP    #$07    
       BCC    LF7F7   
       JSR    LFFCD   
       BEQ    LF7F7   
       LDA    $FA     
       SEC            
       SBC    #$07    
       TAY            
       LDA    $E6,X   
       SBC    #$01    
       JSR    LFD99   
       BNE    LF7F7   
       LDX    $FB     
       LDA    $FA     
       SEC            
       SBC    #$07    
       TAY            
       LDA    $E6,X   
       CLC            
       ADC    #$03    
       JSR    LFD99   
       BNE    LF7F7   
       LDX    $FB     
       TXA            
       EOR    #$01    
       TAY            
       LDA    $FA     
       CMP.wy $00E3,Y 
       BCC    LF879   
       SBC    #$09    
       CMP.wy $00E3,Y 
       BCS    LF879   
       LDA    $E6,X   
       SEC            
       SBC    #$08    
       CMP.wy $00E6,Y 
       BCS    LF879   
       ADC    #$10    
       CMP.wy $00E6,Y 
       BCC    LF879   
       JMP    LF719   
LF879: LDA    $FA     
       STA    $E3,X   
       RTS            

LF87E: LDA    $80     
       BEQ    LF88C   
       LDX    $C5     
       LDA    $D1,X   
       BPL    LF8EF   
       LDY    $DB,X   
       BEQ    LF88D   
LF88C: RTS            

LF88D: LDA    $E3,X   
       ADC    #$08    
       CMP    $E2     
       BCC    LF89D   
       SBC    #$18    
       BMI    LF8AB   
       CMP    $E2     
       BCC    LF8AB   
LF89D: LDA    $E6,X   
       ADC    #$10    
       CMP    $E5     
       BCC    LF88C   
       SBC    #$18    
       CMP    $E5     
       BCS    LF88C   
LF8AB: LDA    $E5     
       LDY    $D8,X   
       BNE    LF8B6   
       CMP    $E6,X   
       BCC    LF8CE   
       RTS            

LF8B6: CPY    #$01    
       BNE    LF8BF   
       CMP    $E6,X   
       BCS    LF8CE   
       RTS            

LF8BF: LDA    $E2     
       CPY    #$02    
       BNE    LF8CA   
       CMP    $E3,X   
       BCS    LF8CE   
       RTS            

LF8CA: CMP    $E3,X   
       BCS    LF88C   
LF8CE: LDA    $E6,X   
       ADC    LFCAA,Y 
       STA    $CD,X   
       LDA    $E3,X   
       ADC    LFCAE,Y 
       STA    $D1,X   
       TYA            
       CPX    #$00    
       BEQ    LF8E3   
       ASL            
       ASL            
LF8E3: STA    $FA     
       LDA    $CA     
       AND    LFCB2,X 
       ORA    $FA     
       STA    $CA     
       RTS            

LF8EF: LDY    $C8     
       LDA    $C7     
       CMP    #$04    
       BCC    LF8F8   
       INY            
LF8F8: LDA    $CA     
       CPX    #$00    
       BEQ    LF900   
       LSR            
       LSR            
LF900: AND    #$03    
       CMP    #$00    
       BEQ    LF920   
       CMP    #$02    
       BCC    LF929   
       BEQ    LF916   
       LDA    $D1,X   
       SBC    LFAF6,Y 
       STA    $D1,X   
       JMP    LF930   
LF916: LDA    $D1,X   
       CLC            
       ADC    LFAF6,Y 
       STA    $D1,X   
       BNE    LF930   
LF920: LDA    $CD,X   
       SBC    LFAF6,Y 
       STA    $CD,X   
       BNE    LF930   
LF929: LDA    $CD,X   
       ADC    LFAF6,Y 
       STA    $CD,X   
LF930: TXA            
       EOR    #$01    
       TAY            
       LDA    $CD,X   
       CMP.wy $00E6,Y 
       BCC    LF954   
       SBC    #$08    
       CMP.wy $00E6,Y 
       BCS    LF954   
       LDA    $D1,X   
       CMP.wy $00E3,Y 
       BCS    LF954   
       ADC    #$06    
       CMP.wy $00E3,Y 
       BCC    LF954   
       LDA    #$FF    
       STA    $D1,X   
LF954: RTS            

LF955: AND    #$03    
       BNE    LF962   
       LDA    $CB,X   
       SEC            
       SBC    #$08    
LF95E: STA    $CB,X   
       BNE    LF9D0   
LF962: CMP    #$02    
       BNE    LF9D8   
       LDA    $CF,X   
       CLC            
       ADC    #$04    
       STA    $CF,X   
       CMP    #$38    
       BCC    LF9EB   
       LDY    #$05    
LF973: LDA    $CB,X   
       CMP    LFD70,Y 
       BCC    LF9CA   
       SBC    #$0C    
       CMP    LFD70,Y 
       BCS    LF9D2   
       LDA    $80     
       AND    LFD5A,Y 
       BEQ    LF9CA   
       LDA    $80     
       AND    LFD76,Y 
       STA    $80     
       LDX    $81     
       BMI    LF99D   
       DEC    $81     
       BMI    LF99D   
       DEX            
       LDA    LFD8C,X 
       STA    $80     
LF99D: LDA    #$1E    
       STA    $84     
       LDA    #$4F    
       STA    $C6     
       LDA    $C8     
       ADC    $D3     
       LDY    $F8     
       BEQ    LF9AF   
       ADC    #$02    
LF9AF: TAX            
       LDA    LFF56,X 
       LDY    $C7     
       CPY    #$04    
       BCC    LF9C0   
       LDX    #$04    
       JSR    LFF7B   
       LDA    #$2D    
LF9C0: LDX    #$06    
       JSR    LFF7B   
       LDA    #$2D    
       JSR    LFF79   
LF9CA: LDX    $C5     
       LDA    #$FF    
       STA    $CF,X   
LF9D0: BNE    LF9EB   
LF9D2: DEY            
       BPL    LF973   
       JMP    LF9CA   
LF9D8: CMP    #$01    
       BNE    LF9E4   
       LDA    $CB,X   
       CLC            
       ADC    #$08    
       JMP    LF95E   
LF9E4: LDA    $CF,X   
       SEC            
       SBC    #$04    
       STA    $CF,X   
LF9EB: LDY    #$01    
LF9ED: LDA    $CF,X   
       CMP.wy $00E3,Y 
       BEQ    LF9FD   
       BCS    LFA21   
       ADC    #$07    
       CMP.wy $00E3,Y 
       BCC    LFA21   
LF9FD: LDA    $CB,X   
       CMP.wy $00E6,Y 
       BCC    LFA21   
       SBC    #$0A    
       CMP.wy $00E6,Y 
       BCS    LFA21   
       LDA    #$FF    
       STA    $CF,X   
       LDA.wy $00DB,Y 
       BNE    LFA24   
       LDA    #$FF    
       STA.wy $00DB,Y 
       LDA    #$2D    
       STA    $E9     
       JSR    LFF79   
       RTS            

LFA21: DEY            
       BPL    LF9ED   
LFA24: RTS            

LFA25: STA    $88     
       LDY    #$FD    
       STY    $D3     
       CPY    $EB     
       BEQ    LFA32   
       JSR    LFC9B   
LFA32: LDA    $8A     
       CMP    #$80    
       BEQ    LFA3C   
       DEC    $8A     
       BNE    LFA61   
LFA3C: LDA    REFP1   
       BMI    LFA61   
       JSR    LFC9B   
       LDY    #$FF    
       STY    $8A     
       STY    $D3     
       JSR    LFF8F   
       LDY    #$06    
       STY    $83     
       LDX    #$30    
       STX    $85     
       LDX    #$00    
       STX    $F8     
       STX    $C7     
       STX    $C8     
       STX    $80     
       JMP    LF52B   
LFA61: LDA    #$42    
       LDX    #$00    
       JSR    LFF5F   
       LDA    #$4A    
       LDX    #$01    
       JSR    LFF5F   
       STA    WSYNC   
       STA    HMOVE   
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    $C7     
       AND    #$F0    
       STA    COLUBK  
       ADC    #$80    
       STA    $E5     
LFA81: LDA    INTIM   
       BNE    LFA81   
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$51    
       JSR    LFDFA   
       LDX    #$0F    
       LDY    $FD     
LFA93: LDA    $E5     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    LFEA9,Y 
       STA    GRP0    
       LDA    LFEBC,Y 
       NOP            
       NOP            
       STA    GRP1    
       LDA    LFECF,Y 
       INC.w  $00E5   
       STA    GRP0    
       LDA    LFEE2,Y 
       NOP            
       STA    GRP1    
       STA    GRP0    
       DEY            
       BPL    LFAC2   
       LDY    #$13    
LFAC2: DEX            
       BPL    LFA93   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       DEC    $C6     
       BMI    LFAD7   
       BNE    LFAEA   
LFAD7: LDA    #$08    
       STA    $C6     
       DEC    $FD     
       BPL    LFAEA   
       LDA    #$13    
       STA    $FD     
       LDA    $C7     
       CLC            
       ADC    #$10    
       STA    $C7     
LFAEA: LDY    #$47    
       JSR    LFDFA   
       LDA    $E5     
       STA    COLUBK  
       JMP    LF3D2   
LFAF6: .byte $01,$02,$03,$04,$04
LFAFB: .byte $FC,$F3,$89,$E9,$E9
LFB00: .byte $00,$3F,$0E,$1F,$FF,$1F,$0E,$3F,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$FC,$70,$F8,$FF,$F8,$70,$FC
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$5D,$7F,$7F,$5D,$49,$08,$08,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$49,$5D,$7F,$7F,$5D
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFC00: TXA            
       LSR            
       LSR            
       TAY            
       STY    $FA     
       LDA.wy $008D,Y 
       STA    PF1     
       LDA.wy $009B,Y 
       STA    PF2     
       LDA    #$00    
       CPX    $D0     
       BEQ    LFC18   
       BNE    LFC1A   
LFC18: LDA    #$02    
LFC1A: STA    ENAM0   
       LDA.wy $00A9,Y 
       STA    PF2     
       LDA.wy $00B7,Y 
       STA    PF1     
       LDY    $DF     
       LDA    LFB00,Y 
       DEC    $DF     
       LDY    $FA     
       STA    GRP1    
       LDA.wy $008D,Y 
       STA    PF1     
       LDA.wy $009B,Y 
       STA    PF2     
       LDA    #$00    
       CPX    $D2     
       BEQ    LFC43   
       BNE    LFC45   
LFC43: LDA    #$02    
LFC45: STA    ENAM1   
       CPX    $E2     
       BNE    LFC6C   
       DEC    $DD     
       BEQ    LFC81   
       DEC    $E2     
       LDA.wy $00A9,Y 
       STA    PF2     
       LDA.wy $00B7,Y 
       STA    PF1     
       LDY    $DD     
       LDA    ($E0),Y 
LFC5F: DEX            
       NOP            
       STA    $FA     
LFC63: STA    $FA     
       STA    GRP0    
       BPL    LFC00   
       JMP    LF364   
LFC6C: NOP            
       NOP            
       LDA.wy $00B7,Y 
       STA    PF1     
       LDA.wy $00A9,Y 
       STA    PF2     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       BEQ    LFC5F   
LFC81: NOP            
       NOP            
       LDA.wy $00A9,Y 
       STA    PF2     
       LDA.wy $00B7,Y 
       STA    PF1     
       LDY    $DD     
       LDA    ($E0),Y 
       DEX            
       BMI    LFC96   
       BPL    LFC63   
LFC96: STA    GRP0    
       JMP    LF364   
LFC9B: LDY    #$FD    
       LDA    #$00    
       LDX    #$0D    
LFCA1: STY    $EA,X   
       DEX            
       STA    $EA,X   
       DEX            
       BPL    LFCA1   
       RTS            

LFCAA: .byte $FF,$06,$05,$05
LFCAE: .byte $FE,$FC,$01,$FD
LFCB2: .byte $FC,$F3
LFCB4: .byte $00,$00,$00,$00,$00,$00,$00,$18,$00,$00,$00,$10,$00,$28,$20,$00
LFCC4: .byte $02,$60,$90,$C0,$B0,$C0,$D0,$E0
LFCCC: .byte $80,$40,$20,$10,$08,$04,$02,$01,$01,$02,$04,$08,$10,$20,$40,$80
LFCDC: .byte $00,$6E,$99,$BD,$E6,$67,$BD,$99,$76
LFCE5: .byte $00,$18,$24,$7E,$A5,$A5,$7E,$24,$18
LFCEE: .byte $12,$B0,$04,$90
LFCF2: .byte $00,$44,$BA,$81,$81,$81,$BA,$44
LFCFA: .byte $93,$07
LFCFC: .byte $C0,$04,$90,$12
LFD00: .byte $3C,$42,$42,$42,$42,$42,$42,$42,$3C,$38,$10,$10,$10,$10,$10,$10
       .byte $10,$30,$7E,$40,$40,$40,$3C,$02,$02,$42,$3C,$3C,$42,$02,$02,$1C
       .byte $02,$02,$42,$3C,$04,$04,$04,$7E,$44,$24,$14,$0C,$04,$3C,$42,$02
       .byte $02,$3C,$40,$40,$40,$7E,$3C,$42,$42,$42,$7C,$40,$40,$42,$3C,$20
       .byte $20,$20,$10,$10,$08,$04,$02,$7E,$3C,$42,$42,$42,$3C,$42,$42,$42
       .byte $3C,$3C,$42,$02,$02,$3E,$42,$42,$42,$3C
LFD5A: .byte $01,$02,$04,$10,$20,$40
LFD60: .byte $7F,$BF,$DF,$EF,$F7,$FB,$FD,$FE,$FE,$FD,$FB,$F7,$EF,$DF,$BF,$7F
LFD70: .byte $73,$63,$53,$43,$33,$23
LFD76: .byte $F6,$F5,$F3,$6F,$5F,$3F
LFD7C: .byte $08,$75,$65,$65,$55,$55,$55,$55
LFD84: .byte $00,$45,$35,$35,$25,$25,$25,$25
LFD8C: .byte $04,$20,$02,$10,$40
LFD91: .byte $7C,$5C,$2C,$0C
LFD95: .byte $16,$0A,$16,$02
LFD99: TAX            
       CMP    #$30    
       BCS    LFDA4   
       SEC            
       SBC    #$10    
       JMP    LFDCA   
LFDA4: CMP    #$50    
       BCS    LFDB2   
       TYA            
       ADC    #$38    
       TAY            
       TXA            
       SEC            
       SBC    #$10    
       BNE    LFDCA   
LFDB2: CMP    #$70    
       BCS    LFDC1   
       TYA            
       ADC    #$70    
       TAY            
       TXA            
       SEC            
       SBC    #$50    
       JMP    LFDCA   
LFDC1: TYA            
       CLC            
       ADC    #$A8    
       TAY            
       TXA            
       SEC            
       SBC    #$50    
LFDCA: LSR            
       LSR            
       TAX            
       TYA            
       LSR            
       LSR            
       TAY            
       LDA    $85     
       AND    #$03    
       BEQ    LFDEE   
       CMP    #$03    
       BEQ    LFDEE   
       LDA    $D3     
       BEQ    LFDE7   
       CMP    #$02    
       BCS    LFDEE   
       LDA    $FB     
       BNE    LFDEE   
LFDE7: LDA.wy $008D,Y 
       AND    LFCCC,X 
       RTS            

LFDEE: LDA.wy $008D,Y 
       AND    LFD60,X 
       STA.wy $008D,Y 
       LDA    #$00    
       RTS            

LFDFA: STA    WSYNC   
       DEY            
       BNE    LFDFA   
       RTS            

LFE00: .byte $20,$30,$20,$F0
LFE04: .byte $3E,$76,$AE,$E6
LFE08: .byte $01,$04
LFE0A: .byte $02,$08
LFE0C: .byte $03,$0C
LFE0E: TXA            
       LSR            
       LSR            
       TAY            
       STY    $FA     
       LDA.wy $008D,Y 
       STA    PF1     
       LDA.wy $009B,Y 
       STA    PF2     
       LDA    #$00    
       CPX    $CF     
       BEQ    LFE26   
       BNE    LFE28   
LFE26: LDA    #$02    
LFE28: STA    ENAM0   
       LDA.wy $00A9,Y 
       STA    PF2     
       LDA.wy $00B7,Y 
       STA    PF1     
       LDY    $DE     
       LDA    LFB00,Y 
       DEC    $DE     
       LDY    $FA     
       STA    GRP1    
       LDA.wy $008D,Y 
       STA    PF1     
       LDA.wy $009B,Y 
       STA    PF2     
       LDA    #$00    
       CPX    $D1     
       BEQ    LFE51   
       BNE    LFE53   
LFE51: LDA    #$02    
LFE53: STA    ENAM1   
       CPX    $E2     
       BNE    LFE7A   
       DEC    $DD     
       BEQ    LFE8F   
       DEC    $E2     
       LDA.wy $00A9,Y 
       STA    PF2     
       LDA.wy $00B7,Y 
       STA    PF1     
       LDY    $DD     
       LDA    ($E0),Y 
LFE6D: DEX            
       NOP            
       STA    $FA     
LFE71: STA    $FA     
       STA    GRP0    
       BPL    LFE0E   
       JMP    LF364   
LFE7A: NOP            
       NOP            
       LDA.wy $00B7,Y 
       STA    PF1     
       LDA.wy $00A9,Y 
       STA    PF2     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       BEQ    LFE6D   
LFE8F: NOP            
       NOP            
       LDA.wy $00A9,Y 
       STA    PF2     
       LDA.wy $00B7,Y 
       STA    PF1     
       LDY    $DD     
       LDA    ($E0),Y 
       DEX            
       BMI    LFEA4   
       BPL    LFE71   
LFEA4: STA    GRP0    
       JMP    LF364   
LFEA9: .byte $00,$FC,$02,$02,$7C,$80,$80,$7E,$00,$00,$00,$7C,$82,$BA,$A2,$BA
       .byte $82,$7C,$00
LFEBC: .byte $00,$FE,$80,$80,$F8,$80,$80,$FE,$00,$00,$00,$70,$20,$20,$23,$24
       .byte $64,$23,$00
LFECF: .byte $00,$7E,$82,$82,$9E,$80,$82,$7C,$00,$00,$00,$4E,$51,$51,$CE,$51
       .byte $51,$8E,$00
LFEE2: .byte $00,$82,$82,$FE,$82,$82,$44,$38,$00,$00,$00,$38,$44,$04,$18,$04
       .byte $44,$38
LFEF4: .byte $00,$00,$00,$01,$03,$03,$03
LFEFB: .byte $03,$22,$22,$12,$02,$00,$64,$92,$44,$2C,$CE,$6C,$30,$00,$48,$02
       .byte $00,$20,$01,$80,$22,$00,$12,$3F,$79,$43,$79,$3F,$12
LFF18: .byte $00,$48,$FC,$9E,$C2,$9E,$FC,$48,$00,$7C,$D6,$44,$6C,$EE,$6C,$38
       .byte $00,$38,$6C,$EE,$6C,$44,$D6,$7C,$00,$40,$40,$46,$4E,$7E,$7E,$70
       .byte $00,$38,$7C,$7C,$10,$10,$10,$38,$00,$3E,$2A,$3E,$72,$3E,$02,$02
       .byte $00,$02,$A5,$FD,$05,$02
LFF4E: .byte $00,$00,$00,$01,$00,$02,$01,$03
LFF56: .byte $00,$00,$09,$12,$1B,$24,$2D,$36,$3F
LFF5F: LDY    #$02    
       SEC            
LFF62: INY            
       SBC    #$0F    
       BCS    LFF62   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFF73: DEY            
       BPL    LFF73   
       STA    RESP0,X 
       RTS            

LFF79: LDX    #$08    
LFF7B: CLC            
       ADC    $EA,X   
       STA    $EA,X   
       CMP    #$5A    
       BCC    LFF8E   
       SBC    #$5A    
       STA    $EA,X   
       LDA    #$09    
       DEX            
       DEX            
       BPL    LFF7B   
LFF8E: RTS            

LFF8F: STY    $9A     
       STY    $C4     
       STY    $A8     
       STY    $B6     
       LDA    $C8     
       CMP    #$03    
       BCC    LFFA3   
       LDA    $D3     
       BEQ    LFFAB   
       BNE    LFFC6   
LFFA3: LDA    $D3     
       CMP    #$03    
       BCC    LFFAB   
       LDY    #$00    
LFFAB: LDX    #$0A    
LFFAD: STY    $8D,X   
       STY    $9B,X   
       STY    $B7,X   
       STY    $A9,X   
       DEX            
       BPL    LFFAD   
       LDA    #$7F    
       CPY    #$00    
       BEQ    LFFC6   
       STA    $9B     
       STA    $9C     
       STA    $A9     
       STA    $AA     
LFFC6: LDA    $85     
       AND    #$03    
       STA    $F9     
       RTS            

LFFCD: STA    $FA     
       AND    #$03    
       CMP    #$03    
       BNE    LFFDD   
       LDA    $FA     
       CMP    $E2     
       BNE    LFFDD   
       STA    $E3,X   
LFFDD: RTS            

LFFDE: STA    $FA     
       AND    #$03    
       CMP    #$01    
       BNE    LFFF3   
       LDA    $FA     
       ADC    #$02    
       CMP    $E5     
       BCC    LFFF3   
       SBC    #$05    
LFFF0: CMP    $E5     
       RTS            

LFFF3: LDA    #$FF    
LFFF5: BNE    LFFF0   
       SEC            
       RTI            

LFFF9: .byte $48,$30,$29,$00,$F0,$00,$F0
