; Disassembly of roms/Earth Dies Screaming.bin
; Disassembled Tue Oct  6 15:21:10 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Earth Dies Screaming.bin
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
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
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
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP1FB  =  $33
CXM0FB  =  $34
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
LF07B   =   $F07B
LF0F6   =   $F0F6
LF43D   =   $F43D
LF889   =   $F889
LF8EE   =   $F8EE
LF8F1   =   $F8F1
LF9A9   =   $F9A9
LF9AC   =   $F9AC
LFA30   =   $FA30
LFCAF   =   $FCAF
LFCB6   =   $FCB6

       ORG $F000

START:
       CLD            
       LDX    #$00    
       TXA            
LF004: STA    VSYNC,X 
       DEX            
       BNE    LF004   
       LDA    #$B6    
       STA    $91     
       LDA    #$38    
       STA    $92     
       LDA    #$22    
       STA    $D7     
       LDY    #$45    
       STY    $EE     
       DEY            
       STY    $F3     
       LDA    #$FD    
       STA    $DE     
       LDA    #$1C    
       STA    $D5     
       LDA    #$FA    
       STA    $D9     
       INC    $E2     
       INC    $C4     
       LDA    #$87    
       STA    $F5     
       LDA    #$05    
       STA    $E5     
       STA    $FB     
       DEX            
       TXS            
       STX    $C7     
       STX    $B5     
       LDX    #$08    
LF03E: JSR    LFBE8   
       STA    $93,X   
       DEC    $91     
       DEX            
       BPL    LF03E   
       LDY    #$0B    
LF04A: STX    $82,Y   
       DEY            
       DEY            
       BPL    LF04A   
LF050: LDX    #$02    
       LDA    #$2A    
       STX    WSYNC   
       STX    VBLANK  
       STX    VSYNC   
       STA    TIM8T   
       INC    $C7     
       LDA    #$FC    
       AND    $C7     
       ORA    #$08    
       STA    $C3     
       AND    #$34    
       ADC    #$22    
       STA    $A5     
       LDA    $E1     
       ORA    $F8     
       BNE    LF077   
       LDA    INPT4   
       BPL    LF07B   
LF077: LDA    SWCHB   
       BIT.w  $00A9   
       AND    #$01    
       TAY            
       EOR    $E2     
       BEQ    LF094   
       STY    $E2     
       TYA            
       BNE    LF08E   
       JSR    LFA52   
       BEQ    LF094   
LF08E: DEY            
       STY    $C4     
       DEY            
       STY    $E1     
LF094: LDA    SWCHB   
       AND    #$02    
       TAY            
       EOR    $EB     
       BEQ    LF0A9   
       STY    $EB     
       TYA            
       BNE    LF0A9   
       LDA    $E1     
       BEQ    LF0A9   
       INC    $B6     
LF0A9: LDA    #$24    
LF0AB: LDX    INTIM   
       BNE    LF0AB   
       STX    WSYNC   
       STX    VSYNC   
       STA    TIM64T  
       LDA    #$70    
       EOR    $EC     
       STA    $B7     
       LDX    $B6     
       BEQ    LF0DC   
       STX    $E3     
       INX            
LF0C4: LDA    $8E,X   
       STA    $9F,X   
       DEX            
       BPL    LF0C4   
       JSR    LFA52   
       STY    $C7     
       LDA    #$87    
       STA    $F5     
       LDA    $EB     
LF0D6: BEQ    LF0DC   
       LDA    #$20    
       STA    $FD     
LF0DC: LDA    #$D0    
       STA    $D6     
       LDX    $A6     
       LDA    $E0     
       BNE    LF119   
       LDA    $A8,X   
       CMP    #$03    
       BEQ    LF0FF   
       LDA    #$20    
       CMP    $92     
       BCC    LF0F5   
LF0F2: JMP    LF17C   
LF0F5: LDA    $E8     
       LSR            
       CLC            
       ADC    #$22    
       CMP    $92     
       BCC    LF0F2   
LF0FF: LDA    $B5     
       BMI    LF0F2   
       LDA    #$0E    
       STA    $E0     
       LDA    #$18    
       STA    $E6     
       LDA    $B8     
       STA    $DC     
       LDY    $AC,X   
       LDA    LFFD5,Y 
       CLC            
       ADC    $B4     
       STA    $DF     
LF119: LDA    $E0     
       EOR    #$0F    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC1   
       AND    $E1     
       STA    AUDV1   
       LDA    $E6     
       SEC            
       SBC    #$03    
       BPL    LF138   
       DEC    $E0     
       LDA    $E0     
       CMP    #$07    
       BCC    LF163   
       LDA    #$18    
LF138: STA    $E6     
       BIT    $D3     
       BVS    LF142   
       INC    $DF     
       INC    $DF     
LF142: BIT    $D3     
       BMI    LF14A   
       DEC    $DF     
       DEC    $DF     
LF14A: LDA    $DF     
       CMP    #$A0    
       BCS    LF178   
       LDA    #$D0    
       LDY    $E0     
       ADC    LFFD6,Y 
       STA    $D6     
       LDY    $DF     
       LDA    LFE00,Y 
       STA    $FB     
       JMP    LF17C   
LF163: LDA    $E8     
       LSR            
       ADC    #$02    
       ADC    $E9     
       STA    $E9     
       BCC    LF170   
       INC    $B6     
LF170: LDA    #$0C    
       STA    $FC     
       LDA    #$1E    
       STA    $F8     
LF178: LDA    #$00    
       STA    $E0     
LF17C: LDA    $B5     
       BPL    LF186   
       LDA    $EE     
       STA    $D8     
       BNE    LF1C7   
LF186: EOR    #$07    
       AND    #$FE    
       STA    $80     
       LSR            
       STA    $81     
       LDA    $B8     
       LSR            
       SEC            
       SBC    $81     
       STA    $D7     
       LDA    #$89    
       SBC    $B8     
       CLC            
       ADC    $80     
       ORA    #$01    
       STA    $D8     
       STA    $EE     
       EOR    #$7F    
       ADC    #$0A    
       STA    $F3     
       LDA    $A8,X   
       BNE    LF1C7   
       LDA    #$01    
       AND    $C7     
       BNE    LF1CB   
       INC    $DA     
       LDA    $DA     
       CMP    #$96    
       BNE    LF1CB   
       LDA    #$03    
       STA    $A8,X   
       LDA    #$0E    
       STA    $B0,X   
       LSR            
       STA    $B5     
LF1C7: LDA    #$00    
       STA    $DA     
LF1CB: LDA    #$47    
       SEC            
       SBC    $D7     
       TAY            
       LDA    LFE00,Y 
       STA    $F1     
       AND    #$0F    
       STA    $EF     
       LDA    #$4F    
       ADC    $D7     
       TAY            
       LDA    LFE00,Y 
       STA    $F2     
       AND    #$0F    
       STA    $F0     
       LDA    $E1     
       BNE    LF222   
       SEC            
       LDX    #$7D    
LF1EF: LDA    ENABL,X 
       SBC    HMM0,X  
       INX            
       BPL    LF1EF   
       BCS    LF201   
       LDX    #$02    
LF1FA: LDA    $9F,X   
       STA    $9C,X   
       DEX            
       BPL    LF1FA   
LF201: LDX    $C7     
       CPX    #$FF    
       BNE    LF219   
       LDA    $F5     
       BEQ    LF20F   
       DEC    $F5     
       BNE    LF219   
LF20F: LDA    #$08    
       AND    $91     
       EOR    $EC     
       ADC    #$0F    
       STA    $EC     
LF219: LDA    $E2     
       BNE    LF21F   
       STA    $EC     
LF21F: JMP    LF258   
LF222: LDX    #$00    
       STX    $EC     
       LDA    #$1F    
       AND    $C7     
       BNE    LF232   
       INC    $E9     
       BNE    LF232   
       INC    $B6     
LF232: LDX    #$42    
       LDA    $EA     
       CMP    #$A4    
       BCS    LF244   
       LDX    #$C4    
       LDA    $E9     
       CMP    #$AA    
       BCC    LF258   
       LDX    #$DA    
LF244: LDA    $E0     
       BNE    LF258   
       LDA    #$0E    
       STA    AUDC1   
       LDA    #$08    
       STA    AUDV1   
       LDA    $C7     
       LSR            
       LSR            
       AND    #$07    
       STA    AUDF1   
LF258: STX    $DB     
       LDY    #$00    
       STY    $D0     
       STY    $D1     
       STY    $D2     
       LDX    #$03    
LF264: LDA    $C8,X   
       CMP    #$30    
       BCS    LF28C   
       LDA    $CC,X   
       STA.wy $00D0,Y 
       STY    $80     
       LDA    $C8,X   
       ADC    #$33    
       TAY            
       TXS            
       LDA    LFE00,Y 
       LDY    $80     
       STA.wy $0021,Y 
       AND    #$0F    
       TAX            
       STA    WSYNC   
LF284: DEX            
       BNE    LF284   
       STA.wy $0011,Y 
       TSX            
       INY            
LF28C: DEX            
       BPL    LF264   
       LDA    #$10    
       STA    HMP0    
       LDX    #$08    
       STA    WSYNC   
LF297: DEX            
       BPL    LF297   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       TXS            
       JSR    LFBE8   
       STX    $D3     
       LDA    $E1     
       BNE    LF2E0   
       LDA    $E2     
       BEQ    LF2C0   
       LDA    $C7     
       BNE    LF2E0   
       INC    $E3     
       LDA    $E3     
       AND    #$01    
       STA    $E3     
       BEQ    LF2C9   
       LDY    #$9E    
       BNE    LF2CB   
LF2C0: TAY            
       STY    $8E     
       STY    $8F     
       STY    $90     
       BEQ    LF2D8   
LF2C9: LDY    #$A1    
LF2CB: LDX    #$02    
LF2CD: LDA.wy $0000,Y 
       STA    $8E,X   
       DEY            
       DEX            
       BPL    LF2CD   
       LDY    #$08    
LF2D8: LDX    #$0A    
LF2DA: STY    $82,X   
       DEX            
       DEX            
       BPL    LF2DA   
LF2E0: LDY    #$FF    
       LDA    $E1     
       BEQ    LF2ED   
       LDY    SWCHA   
       DEC    $A2     
       BMI    LF2F0   
LF2ED: JMP    LF39B   
LF2F0: TYA            
       AND    #$20    
       BNE    LF321   
       INC    $DD     
       LDA    $A4     
       SEC            
       SBC    #$08    
       STA    $A4     
       LDX    #$02    
       LDA    $C7     
       AND    #$07    
       BNE    LF30E   
       LDA    $D5     
       CMP    #$18    
       BEQ    LF30E   
       DEC    $D5     
LF30E: LDA    $93,X   
       PHA            
       LDA    $96,X   
       STA    $93,X   
       LDA    $99,X   
       STA    $96,X   
       PLA            
       STA    $99,X   
       DEX            
       BPL    LF30E   
       INC    $91     
LF321: TYA            
       AND    #$10    
       BNE    LF352   
       DEC    $DD     
       LDA    $A4     
       CLC            
       ADC    #$08    
       STA    $A4     
       LDX    #$02    
       LDA    $C7     
       AND    #$07    
       BNE    LF33F   
       LDA    $D5     
       CMP    #$1F    
       BEQ    LF33F   
       INC    $D5     
LF33F: LDA    $99,X   
       PHA            
       LDA    $96,X   
       STA    $99,X   
       LDA    $93,X   
       STA    $96,X   
       PLA            
       STA    $93,X   
       DEX            
       BPL    LF33F   
       DEC    $91     
LF352: TYA            
       AND    #$80    
       BNE    LF378   
       LDX    #$06    
       DEC    $A4     
LF35B: LDA    $95,X   
       SEC            
       ROR            
       STA    $95,X   
       ROL    $94,X   
       ROR    $93,X   
       LDA    $93,X   
       AND    #$08    
       BNE    LF371   
       LDA    #$7F    
       AND    $95,X   
       STA    $95,X   
LF371: DEX            
       DEX            
       DEX            
       BPL    LF35B   
       INC    $91     
LF378: TYA            
       AND    #$40    
       BNE    LF39B   
       LDX    #$06    
       INC    $A4     
LF381: LDA    $93,X   
       ORA    #$08    
       ROL            
       STA    $93,X   
       ROR    $94,X   
       ROL    $95,X   
       BCS    LF394   
       LDA    #$E0    
       AND    $93,X   
       STA    $93,X   
LF394: DEX            
       DEX            
       DEX            
       BPL    LF381   
       DEC    $91     
LF39B: LDA    #$7F    
       AND    $DD     
       STA    $DD     
       LDA    $A4     
       CMP    #$A0    
LF3A5: BCC    LF3B1   
       CMP    #$B0    
       BCS    LF3AF   
       SBC    #$9F    
       BCS    LF3B1   
LF3AF: ADC    #$9F    
LF3B1: STA    $A4     
       LDA    $F8     
       ORA    $F9     
       BNE    LF3D1   
       LDA    #$08    
       STA    AUDC0   
       LDX    #$02    
       TYA            
       EOR    #$FF    
       AND    #$F0    
       BEQ    LF3C8   
       LDX    #$05    
LF3C8: TXA            
       AND    $E1     
       STA    AUDV0   
       LDA    $D5     
       STA    AUDF0   
LF3D1: LDA    $A2     
       BPL    LF3D9   
       LDA    #$02    
       STA    $A2     
LF3D9: DEC    $A3     
       BPL    LF3E1   
       LDA    #$18    
       STA    $A3     
LF3E1: STY    $D3     
       LDA    $E1     
       BNE    LF3EA   
       JMP    LF462   
LF3EA: LDA    INPT4   
       BMI    LF3F7   
       LDX    $C4     
       BNE    LF3F7   
       STX    $C5     
       INX            
       STX    $C4     
LF3F7: LDA    $C4     
       BEQ    LF462   
       LDA    #$42    
       STA    $A5     
       LDA    $E0     
       BNE    LF423   
       LDA    #$06    
       AND    $C7     
       LSR            
       STA    AUDF1   
       LDX    #$01    
       AND    #$02    
       BNE    LF412   
       LDX    #$08    
LF412: STX    AUDC1   
       LDA    $C4     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$07    
       CLC            
       ADC    #$02    
       AND    $E1     
       STA    AUDV1   
LF423: LDA    $C4     
       ADC    #$04    
       CMP    $F3     
       BCS    LF43D   
       LDA    $F3     
       ROR            
       ROR            
       ROR            
       ROR            
       AND    #$07    
       TAY            
       LDA    LFEF6,Y 
       STA    $F4     
       CLC            
       ADC    $C4     
       BIT    LF3A5   
       STA    $C4     
       LDA    $C5     
       BNE    LF451   
       LDA    $F3     
       LSR            
       LSR            
       CMP    $C4     
       BCS    LF462   
       LDA    #$01    
       STA    $C5     
LF451: LDA    $F4     
       CLC            
       ADC    $C5     
       STA    $C5     
       CMP    $C4     
       BCC    LF462   
       LDA    #$00    
       STA    $C4     
       STA    $C5     
LF462: LDX    #$0A    
       LDA    #$00    
       STA    $81     
LF468: LDA    $82,X   
       AND    #$07    
       BNE    LF49D   
       LDA    $82,X   
       BNE    LF478   
       LDA    $81     
       BEQ    LF47D   
       BNE    LF49D   
LF478: STA    $81     
       SEC            
       SBC    #$08    
LF47D: TXS            
       TAY            
       TXA            
       LSR            
       LSR            
       TAX            
       TYA            
       BCC    LF48B   
       ASL            
       LDY    #$F0    
       BCC    LF490   
LF48B: LSR            
       LSR            
       LSR            
       LDY    #$0F    
LF490: STA    $80     
       TYA            
       AND    $8E,X   
       CMP    $80     
       BNE    LF49C   
       TSX            
       BCS    LF4A9   
LF49C: TSX            
LF49D: INC    $82,X   
       LDA    $82,X   
       CMP    #$58    
       BNE    LF4A9   
       LDA    #$08    
       STA    $82,X   
LF4A9: DEX            
       DEX            
       BPL    LF468   
       INX            
       TXS            
       LDA    $E2     
       BNE    LF4B5   
       STA    $A3     
LF4B5: LDA    #$03    
       AND    $C7     
       BNE    LF534   
       LDX    $F6     
       BEQ    LF4C6   
       LDA    LFBF7,X 
       STA    $F7     
       DEC    $F6     
LF4C6: LDA    $FC     
       BEQ    LF4E5   
       CMP    #$09    
       BCC    LF4D8   
       SBC    #$04    
       CMP    #$06    
       BCS    LF4D8   
       LDX    #$1E    
       STX    $F8     
LF4D8: TAX            
       LDA    LFBF7,X 
       BEQ    LF4E1   
       CLC            
       ADC    #$40    
LF4E1: STA    $F7     
       DEC    $FC     
LF4E5: LDX    $F8     
       BEQ    LF4F9   
       TXA            
       LSR            
       TAY            
       LDA    LFF85,Y 
       STA    AUDC0   
       STX    AUDF0   
       STY    AUDV0   
       DEX            
       DEX            
       STX    $F8     
LF4F9: LDX    $F9     
       BEQ    LF522   
       LDA    LFAC8,X 
       STA    $FA     
       LDA    #$02    
       STA    AUDC0   
       TXA            
       AND    #$01    
       ASL            
       ASL            
       ORA    #$08    
       STA    AUDF0   
       LDA    #$0E    
       STA    AUDV0   
       DEC    $F9     
       BNE    LF522   
       LDA    #$0F    
       CLC            
       ADC    $EA     
       STA    $EA     
       BCC    LF522   
       INC    $B6     
LF522: LDA    $FD     
       BEQ    LF534   
       AND    #$03    
       BNE    LF532   
       LDA    #$1E    
       STA    $F8     
       LDA    #$0C    
       STA    $FC     
LF532: DEC    $FD     
LF534: LDX    INTIM   
       BNE    LF534   
       STX    WSYNC   
       STX    VBLANK  
       LDA    #$24    
       EOR    $EC     
       STA    COLUBK  
       LDA    #$FE    
       STA    PF2     
       LDA    #$C2    
       EOR    $EC     
       STA    COLUPF  
       LDY    $A3     
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    #$18    
       LDA    #$01    
       STA    CTRLPF  
       LDA    $E1     
       BEQ    LF564   
       NOP            
       JSR    LFCC2   
       JMP    LF573   
LF564: STA    WSYNC   
       LDA    LFEA0,Y 
       EOR    $EC     
       STA    COLUPF  
       INY            
       DEX            
       BNE    LF564   
       STA    WSYNC   
LF573: NOP            
       STX    PF2     
       STX    ENAM0   
       STX    ENAM1   
       STX    GRP1    
       LDY    $A4     
       LDA    LFE00,Y 
       STA    HMM1    
       AND    #$0F    
       TAX            
       TXS            
       LDA    #$0E    
       CLC            
       ADC    $D7     
       TAY            
       LDA    LFE00,Y 
       STA    HMM0    
       AND    #$0F    
       TAX            
       STA    CXCLR   
       STA    WSYNC   
LF599: DEX            
       BNE    LF599   
       STA    RESM0   
       LDA    #$93    
       SBC    $D7     
       TAY            
       LDA    LFE00,Y 
       STA    HMBL    
       AND    #$0F    
       TAX            
       STA    WSYNC   
LF5AD: DEX            
       BNE    LF5AD   
       STA    RESBL   
       LDA    $FB     
       STA    WSYNC   
       STA    HMP0    
       AND    #$0F    
       TAY            
       DEY            
       DEY            
       DEY            
       TSX            
LF5BF: DEY            
       BNE    LF5BF   
       STA    RESP0   
       STA    WSYNC   
       LDA    #$0E    
       EOR    $EC     
       STA.w  $0009   
       DEX            
       DEX            
       DEX            
LF5D0: DEX            
       BNE    LF5D0   
       STA    RESM1   
       STA    WSYNC   
       LDA    $E4     
       STA    HMP1    
       LDX    $E5     
       DEX            
       DEX            
       DEX            
LF5E0: DEX            
       BNE    LF5E0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F7     
       EOR    $EC     
       STA    COLUBK  
       STX    $80     
       STX    $81     
       DEX            
       STX    COLUPF  
       STX    COLUP0  
       INX            
       STX    HMP0    
       STX    HMP1    
       LDA    #$10    
       STA    HMBL    
       LDA    #$F0    
       STA    HMM0    
       LDY    #$80    
       STY    HMM1    
       LDX    $ED     
       TXS            
LF60C: STA    WSYNC   
       STA    HMOVE   
       STA    ENAM1   
       LSR            
       STA    ENAM0   
       STA    ENABL   
       CPY    $DC     
       BCS    LF626   
       LDX    $D6     
       LDA    LFE00,X 
       BEQ    LF624   
       DEC    $D6     
LF624: STA    $80     
LF626: CPY    $B8     
       BCS    LF632   
       TSX            
       LDA    LFC00,X 
       BNE    LF637   
       STA    $81     
LF632: LDA    $C3     
       JMP    LF63E   
LF637: STA    $81     
       LDA    LFB00,X 
       DEX            
       TXS            
LF63E: DEY            
       TAX            
       STA    HMCLR   
       LDA    #$80    
       STA    HMM1    
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUP1  
       LDX    $81     
       STX    GRP1    
       LDA    ($DD),Y 
       STA    ENAM1   
       LDX    $80     
       STX    GRP0    
       LDA    $C4     
       BNE    LF68C   
       LDA    ($D8),Y 
       BMI    LF67C   
       STA    ENABL   
       STA    ENAM0   
       DEY            
       LDA    #$F0    
       STA    HMM0    
       LDA    #$10    
       STA    HMBL    
       LDA    ($D8),Y 
       ASL            
LF670: ORA    ($DD),Y 
       CPY    #$00    
       BNE    LF60C   
       STA    WSYNC   
       STA    HMOVE   
       BEQ    LF6A2   
LF67C: LDA    #$8B    
       STA    $D8     
       DEY            
       LDA    #$F0    
       STA    HMM0    
       LDA    #$10    
       STA    HMBL    
       JMP    LF670   
LF68C: DEY            
       LDA    #$F0    
       STA    HMM0    
       LDA    #$10    
       STA    HMBL    
       CPY    $C4     
       BCS    LF670   
       CPY    $C5     
       BCC    LF670   
       LDA    #$04    
       JMP    LF670   
LF6A2: STY    ENAM1   
       LDX    $F0     
       DEX            
       DEX            
       DEX            
       DEX            
LF6AA: DEX            
       BNE    LF6AA   
       STX    RESP1   
       LDX    $EF     
       STA    WSYNC   
LF6B3: DEX            
       BNE    LF6B3   
       STA    RESP0   
       LDA    $F1     
       STA    HMP0    
       LDA    $F2     
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STX    ENAM0   
       STX    ENABL   
       STX    $C6     
       LDA    #$08    
       STA    REFP1   
       LDA    #$4C    
       EOR    $EC     
       EOR    $FA     
       STA    COLUPF  
       STX    CTRLPF  
       INC    $FF     
       INC    $FF     
       LDX    #$07    
       LDY    #$14    
LF6E0: LDA    LFF70,Y 
       STA    GRP0    
       LDA    LFF68,X 
       STA    WSYNC   
       EOR    $EC     
       EOR    $FA     
       STA    COLUBK  
       LDA    LFAD0,Y 
       BEQ    LF6F7   
       LDA    $A5     
LF6F7: EOR    $EC     
       STA    COLUP0  
       STA    COLUP1  
       LDA    LFF70,Y 
       STA    GRP1    
       DEY            
       DEX            
       BPL    LF6E0   
       LDA    LFF70,Y 
       STA    GRP0    
       INC    LFF00   
       INX            
       LDA    $93,X   
       STA    PF0     
       LDA    #$56    
       EOR    $EC     
       EOR    $FA     
       STA    WSYNC   
       STA    COLUBK  
       JMP    LFBA3   
LF720: STA    WSYNC   
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STX    REFP1   
       LDA    #$0E    
       EOR    $EC     
       STA    COLUBK  
       LDX    #$06    
       STA    WSYNC   
LF735: DEX            
       BNE    LF735   
       STA    RESM0   
       NOP            
       LDA    #$40    
       STA    HMM0    
       STA    HMM1    
       LDX    #$03    
LF743: DEX            
       BNE    LF743   
       STA    RESM1   
       STA    WSYNC   
       LDX    #$05    
       LDA    #$24    
       EOR    $EC     
       STA    COLUBK  
LF752: DEX            
       BNE    LF752   
       LDA    #$E0    
       STA    HMP1    
       STX    RESP0   
       STX    RESP1   
       LDA    #$D0    
       STA    HMP0    
       LDX    #$03    
LF763: DEX            
       BNE    LF763   
       INC    $FF     
       STA    HMOVE   
       LDA    #$13    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$FF    
       LDX    $E1     
       BNE    LF784   
       LDX    $E2     
       BEQ    LF784   
       LDX    $E3     
       BEQ    LF784   
       LDA    #$9C    
LF784: EOR    $EC     
       LDX    #$7F    
       LDY    #$02    
       STA    WSYNC   
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUPF  
       STX    PF1     
       STY    ENAM0   
       STY    ENAM1   
       STA    $D4     
       LDA    #$FF    
       STA    PF2     
       LDA    $DB     
       STA    WSYNC   
       STA    COLUPF  
       LDA    #$78    
       STA    PF1     
       LDA    #$FE    
       STA    PF2     
       LDX    #$03    
LF7AE: DEX            
       BNE    LF7AE   
       LDA    $B7     
       STA    COLUPF  
       LDX    #$04    
LF7B7: DEX            
       BNE    LF7B7   
       LDA    $DB     
       STA    COLUPF  
       STA    WSYNC   
       LDY    #$07    
       STY    $80     
       STY    VDELP1  
       STY    VDELP0  
       LDX    #$03    
LF7CA: DEX            
       BPL    LF7CA   
       LDA    $B7     
       STA    COLUPF  
       LDX    #$03    
LF7D3: DEX            
       BNE    LF7D3   
       BIT    $FF     
       LDA    $DB     
       STA    COLUPF  
       JMP    LFCD4   
LF7DF: STA    WSYNC   
       INY            
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP1    
       STY    GRP0    
       LDX    #$03    
LF7EC: DEX            
       BNE    LF7EC   
       LDA    $B7     
       STA    COLUPF  
       LDX    #$04    
LF7F5: DEX            
       BNE    LF7F5   
       LDA    $DB     
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$FF    
       STA    PF2     
       LSR            
       STA    PF1     
       LDA    $D4     
       STA    COLUPF  
       LDA    #$1F    
       STA    WSYNC   
       STA    TIM64T  
       STX    PF1     
       STX    ENAM0   
       STX    ENAM1   
       STX    PF2     
       DEX            
       TXS            
       LDA    $C4     
       BEQ    LF85F   
       LDA    #$40    
       AND    CXM0FB  
       AND    CXP1FB  
       ASL            
       AND    CXM0P   
       BEQ    LF85F   
       LDA    #$08    
       STA    $F6     
       LDA    #$1E    
       STA    $F8     
       LDX    $A6     
       LDY    $A8,X   
       LDA    LFF60,Y 
       SED            
       CLC            
       ADC    $8E     
       STA    $8E     
       LDA    LFF64,Y 
       ADC    $8F     
       STA    $8F     
       LDA    #$00    
       ADC    $90     
       STA    $90     
       CLD            
       LDA    #$80    
       STA    $A8,X   
       CPY    #$03    
       BNE    LF85F   
       ASL            
       STA    $ED     
       STA    $E9     
       STA    $EA     
       INC    $E8     
       BNE    LF863   
LF85F: LDA    $E1     
       BNE    LF87B   
LF863: LDA    $92     
       LDX    #$03    
LF867: AND    #$3F    
       STA    $AC,X   
       CLC            
       ADC    #$10    
       STA    $80     
       JSR    LFA3B   
       LDA    $80     
       DEX            
       BPL    LF867   
       JMP    LFA33   
LF87B: DEC    $E7     
       BPL    LF8B4   
       JSR    LFBE8   
       LDA    $91     
       BMI    LF889   
       LDA    #$01    
       BIT    LFFA9   
       STA    $C1     
       JSR    LFBE8   
       LDA    #$01    
       AND    $91     
       BEQ    LF89C   
       BIT    $91     
       BPL    LF89C   
       LDA    #$FF    
LF89C: STA    $C2     
       LDA    $E8     
       CMP    #$0B    
       BCC    LF8A6   
       LDA    #$0A    
LF8A6: STA    $80     
       LDA    #$30    
       SEC            
       LDY    #$04    
LF8AD: SBC    $80     
       DEY            
       BNE    LF8AD   
       STA    $E7     
LF8B4: LDX    #$03    
LF8B6: CPX    $A6     
       BNE    LF8D0   
       LDA    $A8,X   
       CMP    #$01    
       BNE    LF8D0   
       LDA    $B5     
       BEQ    LF8C8   
       BMI    LF8F1   
       BPL    LF8F5   
LF8C8: LDA    $B9,X   
       CMP    #$02    
       BCS    LF8F5   
       BCC    LF8EE   
LF8D0: LDY    $A8,X   
       BEQ    LF8EE   
       DEY            
       BEQ    LF8F1   
       DEY            
       BEQ    LF8F1   
       DEY            
       BNE    LF8F5   
       CPX    $A6     
       BNE    LF8E5   
       LDA    $B5     
       BPL    LF8EB   
LF8E5: LDA    #$80    
       STA    $A8,X   
       BMI    LF8F5   
LF8EB: LDA    #$00    
       BIT    $01A9   
       BIT    LFFA9   
       STA    $BD,X   
LF8F5: LDA    $A8,X   
       BPL    LF8FC   
       JSR    LFA3B   
LF8FC: DEX            
       BPL    LF8B6   
       INX            
       LDA    $DB     
       CMP    #$C4    
       BNE    LF908   
       STX    AUDV1   
LF908: STX    $ED     
       LDX    #$03    
       BIT    $D3     
       BVS    LF914   
       INC    $B4     
       INC    $B4     
LF914: BIT    $D3     
       BMI    LF91C   
       DEC    $B4     
       DEC    $B4     
LF91C: LDA    $E8     
       CMP    #$04    
       BCS    LF92C   
       LDA    #$01    
       AND    $C7     
       BNE    LF92C   
       INC    $E7     
       BNE    LF93A   
LF92C: CLC            
       LDA    $C1     
       ADC    $B4     
       STA    $B4     
       CLC            
       LDA    $C2     
       ADC    $B8     
       STA    $B8     
LF93A: LDA    #$10    
       AND    $D3     
       BNE    LF944   
       DEC    $B9,X   
       DEC    $B9,X   
LF944: LDA    #$20    
       AND    $D3     
       BNE    LF94E   
       INC    $B9,X   
       INC    $B9,X   
LF94E: LDA    $E8     
       CMP    #$02    
       BCS    LF95A   
       LDA    #$01    
       AND    $C7     
       BEQ    LF961   
LF95A: CLC            
       LDA    $BD,X   
       ADC    $B9,X   
       STA    $B9,X   
LF961: LDA    $B4     
       BPL    LF96A   
       DEC    $AC,X   
       JMP    LF970   
LF96A: CMP    #$0A    
       BCC    LF970   
       INC    $AC,X   
LF970: LDA    #$3F    
       AND    $AC,X   
       STA    $AC,X   
       LDA    $B9,X   
       BPL    LF994   
       CLC            
       ADC    #$18    
       STA    $B9,X   
       LDA    $B0,X   
       CMP    #$01    
       BNE    LF9AC   
       LDY    $A8,X   
       DEY            
       BEQ    LF98E   
       DEY            
       BNE    LF9AE   
       DEY            
LF98E: STY    $A8,X   
       LDA    #$07    
       STA    $F9     
LF994: CMP    #$18    
       BCC    LF9AE   
       SBC    #$18    
       STA    $B9,X   
       LDA    $B0,X   
       CMP    #$18    
       BNE    LF9A9   
       LDA    $A8,X   
       BNE    LF9AE   
       ROR    $A8,X   
       BIT    $B0F6   
       BIT    $B0D6   
LF9AE: LDA    $B8     
       BMI    LF9BA   
       CMP    #$12    
       BCS    LF9BC   
       LDA    #$12    
       BNE    LF9BC   
LF9BA: LDA    #$7F    
LF9BC: STA    $B8     
       LDA    $B0,X   
       CMP    $A3     
       BNE    LF9E1   
       STA    $CC,X   
       LDA    $AC,X   
       STA    $C8,X   
       CMP    #$30    
       BCS    LF9E1   
       LDA    $DB     
       CMP    #$C4    
       BNE    LF9E1   
       LDA    #$0A    
       STA    AUDF1   
       LDA    #$0D    
       STA    AUDC1   
       LSR            
       AND    $E1     
       STA    AUDV1   
LF9E1: LDA    $AC,X   
       CMP    #$10    
       BCC    LF9F9   
       CMP    #$20    
       BCS    LF9F9   
       STX    $A6     
       LDA    $B0,X   
       SBC    #$06    
       CMP    #$08    
       BCC    LF9F7   
       LDA    #$FF    
LF9F7: STA    $B5     
LF9F9: DEX            
       BMI    LF9FF   
       JMP    LF93A   
LF9FF: LDA    $B4     
       BPL    LFA06   
       CLC            
       ADC    #$0A    
LFA06: CMP    #$0A    
       BCC    LFA0C   
       SBC    #$0A    
LFA0C: STA    $B4     
       LDX    $A6     
       LDY    $AC,X   
       LDA    LFFD5,Y 
       CLC            
       ADC    $B4     
       TAY            
       LDA    LFE00,Y 
       STA    $E4     
       AND    #$0F    
       STA    $E5     
       LDY    $B5     
       BMI    LFA30   
       LDA    LFFDD,Y 
       LDY    $A8,X   
       ADC    LFFF5,Y 
       TAY            
       BIT    $C8     
       STY    $ED     
LFA33: LDA    INTIM   
       BNE    LFA33   
       JMP    LF050   
LFA3B: LDA    #$18    
       STA    $B0,X   
       LDA    #$FF    
       STA    $BD,X   
       LDA    $91     
       CMP    #$40    
       LDA    #$02    
       BCC    LFA4D   
       LDA    #$01    
LFA4D: STA    $A8,X   
       JMP    LFBE8   
LFA52: LDA    #$FF    
       STA    $B5     
       LDY    #$01    
       STY    $C4     
       DEY            
       STY    $ED     
       STY    $E1     
       STY    $C5     
       STY    AUDV0   
       STY    AUDV1   
       STY    $E9     
       STY    $E0     
       STY    $F8     
       STY    $FC     
       STY    $F6     
       STY    $F9     
       STY    $F7     
       STY    $FA     
       STY    $E8     
       STY    $EA     
       STY    $B6     
       STY    $FD     
       RTS            

LFA7E: .byte $00,$00,$80,$80,$00,$02,$00,$02,$02,$02,$02,$00,$02,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFAC8: .byte $00,$00,$70,$60,$50,$40,$30,$10
LFAD0: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10
       .byte $10,$10,$10,$10,$10,$00,$00
LFAE7: .byte $00,$00,$00,$00,$00,$20,$70,$20,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFB00: .byte $00,$0E,$00,$0E,$88,$00,$0E,$88,$00,$88,$0E,$88,$00,$C6,$0E,$88
       .byte $C6,$00,$C6,$88,$0E,$88,$C6,$00,$C6,$88,$0E,$88,$C6,$6A,$00,$6A
       .byte $C6,$88,$0E,$88,$C6,$6A,$00,$74,$00,$74,$88,$00,$74,$88,$00,$88
       .byte $74,$88,$00,$46,$74,$88,$46,$00,$46,$88,$74,$88,$46,$00,$46,$88
       .byte $74,$88,$46,$6A,$00,$6A,$46,$88,$74,$88,$46,$6A,$00,$FF,$00,$44
       .byte $FF,$00,$44,$FF,$00,$96,$44,$FF,$00,$96,$44,$44,$FF,$00,$96,$44
       .byte $44,$C8,$FF,$00,$96,$76,$44,$44,$C8,$FF,$00,$96,$76,$44,$44,$EA
       .byte $C8,$FF,$00,$C8,$00,$C8,$5C,$00,$C8,$5C,$00,$CA,$C8,$5C,$00,$CA
       .byte $C8,$5C,$4C,$00,$CA,$C8,$6C,$5C,$4C,$00,$CC,$CA,$C8,$6C,$5C,$4C
       .byte $00,$CC,$CA,$C8,$6C,$5C,$4C,$3C
LFB98: LDA    LFF70,Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    $93,X   
       STA    PF0     
LFBA3: LDA    #$00    
       EOR    $EC     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $94,X   
       STA    PF1     
       LDA    $95,X   
       STA    PF2     
       LDA    LFF70,Y 
       STA    GRP1    
       DEY            
       INC    $C6     
       LDA    $C6     
       CMP    LFF95,Y 
       BNE    LFB98   
       LDX    LFFA1,Y 
       BPL    LFB98   
       LDA    LFF70,Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    $EC     
       STA    COLUBK  
       LDA    #$00    
       EOR    $EC     
       STA    COLUP0  
       STA    COLUP1  
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDA    LFF70,Y 
       STA    GRP1    
       JMP    LF720   
LFBE8: LDA    $92     
       LSR            
       LDA    $91     
       ROR            
       EOR    $92     
       LDY    $91     
       STA    $91     
       STY    $92     
       RTS            

LFBF7: .byte $00,$00,$42,$44,$36,$38,$3A,$2C,$0E
LFC00: .byte $00,$10,$00,$18,$18,$00,$38,$10,$00,$18,$3C,$18,$00,$28,$7C,$10
       .byte $28,$00,$24,$18,$7E,$18,$24,$00,$54,$38,$FE,$38,$54,$82,$00,$81
       .byte $5A,$3C,$FF,$3C,$5A,$81,$00,$10,$00,$18,$18,$00,$38,$10,$00,$18
       .byte $3C,$18,$00,$28,$7C,$10,$28,$00,$24,$18,$7E,$18,$24,$00,$54,$38
       .byte $FE,$38,$54,$82,$00,$81,$5A,$3C,$FF,$3C,$5A,$81,$00,$10,$00,$18
       .byte $18,$00,$18,$24,$00,$10,$38,$44,$00,$18,$3C,$3C,$42,$00,$38,$7C
       .byte $7C,$54,$82,$00,$38,$10,$7C,$7C,$54,$82,$00,$3C,$18,$7E,$7E,$3C
       .byte $5A,$81,$00,$10,$00,$18,$18,$00,$38,$10,$00,$18,$3C,$18,$00,$38
       .byte $7C,$38,$10,$00,$3C,$7E,$34,$14,$10,$00,$7C,$FE,$FE,$74,$74,$24
       .byte $00,$7E,$FF,$FF,$5A,$5A,$12,$10
LFC98: STA    COLUP0  
       STA    COLUP1  
       CPX    $D0     
       BEQ    LFCA4   
       BNE    LFCA2   
LFCA2: BNE    LFCA8   
LFCA4: LDA    #$80    
       STA    GRP1    
LFCA8: LDA    #$02    
       CPX    $D1     
       BEQ    LFCAF   
       BIT    $1D85   
       CPX    $D2     
       BEQ    LFCB6   
       BIT    $1E85   
       LDA    LFAE7,X 
       STA    GRP0    
       INY            
       DEX            
       BNE    LFCC2   
       RTS            

LFCC2: LDA    LFEA0,Y 
       STA    COLUPF  
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    GRP1    
       LDA    LFFAD,Y 
       BNE    LFC98   
LFCD4: LDA    ($8C),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($82),Y 
       TAX            
       TXS            
       LDA    ($86),Y 
       TAX            
       LDA    ($88),Y 
       STA    GRP0    
       LDA    $B7     
       STA    COLUPF  
       LDA    ($84),Y 
       STX    GRP1    
       TSX            
       STA    GRP0    
       STX    GRP1    
       STA    GRP0    
       LDA    $DB     
       STA    COLUPF  
       DEY            
       BPL    LFCD4   
       JMP    LF7DF   
LFD00: .byte $00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00
       .byte $00,$02,$00,$00,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$00,$02
       .byte $02,$00,$02,$00,$00,$00,$02,$00,$00,$00,$00,$00,$02,$00,$00,$00
       .byte $02,$00,$00,$02,$00,$00,$00,$02,$00,$00,$00,$00,$02,$00,$02,$00
       .byte $00,$00,$00,$02,$00,$00,$02,$00,$00,$00,$02,$00,$00,$02,$00,$00
       .byte $00,$02,$00,$00,$00,$02,$00,$00,$02,$00,$00,$02,$00,$00,$00,$02
       .byte $02,$00,$02,$00,$00,$00,$02,$00,$00,$00,$00,$00,$02,$00,$00,$00
       .byte $02,$00,$00,$02,$00,$00,$00,$02,$00,$00,$00,$00,$02,$00,$02,$00
       .byte $00,$00,$00,$00,$00
LFD85: .byte $02,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$02,$00,$00,$00
       .byte $02,$00,$00,$02,$00,$00,$02,$00,$00,$00,$02,$02,$00,$02,$00,$00
       .byte $00,$02,$00,$00,$00,$00,$00,$02,$00,$00,$00,$02,$00,$00,$02,$00
       .byte $00,$00,$02,$00,$00,$00,$00,$02,$00,$02,$00,$00,$00,$00,$02,$00
       .byte $00,$02,$00,$00,$00,$02,$00,$00,$02,$00,$00,$00,$02,$00,$00,$00
       .byte $02,$00,$00,$02,$00,$00,$02,$00,$00,$00,$02,$02,$00,$02,$00,$00
       .byte $00,$02,$00,$00,$00,$00,$00,$02,$00,$00,$00,$02,$00,$00,$02,$00
       .byte $00,$00,$02,$00,$00,$00,$00,$02,$00,$02,$00
LFE00: .byte $34,$24,$14,$04,$F4,$E4,$D4,$C4,$B4,$A4,$94,$75,$65,$55,$45,$35
       .byte $25,$15,$05,$F5,$E5,$D5,$C5,$B5,$A5,$95,$76,$66,$56,$46,$36,$26
       .byte $16,$06,$F6,$E6,$D6,$C6,$B6,$A6,$96,$77,$67,$57,$47,$37,$27,$17
       .byte $07,$F7,$E7,$D7,$C7,$B7,$A7,$97,$78,$68,$58,$48,$38,$28,$18,$08
       .byte $F8,$E8,$D8,$C8,$B8,$A8,$98,$79,$69,$59,$49,$39,$29,$19,$09,$F9
       .byte $E9,$D9,$C9,$B9,$A9,$99,$7A,$6A,$5A,$4A,$3A,$2A,$1A,$0A,$FA,$EA
       .byte $DA,$CA,$BA,$AA,$9A,$7B,$6B,$5B,$4B,$3B,$2B,$1B,$0B,$FB,$EB,$DB
       .byte $CB,$BB,$AB,$9B,$7C,$6C,$5C,$4C,$3C,$2C,$1C,$0C,$FC,$EC,$DC,$CC
       .byte $BC,$AC,$9C,$7D,$6D
LFE85: .byte $5D,$4D,$3D,$2D,$1D,$0D,$FD,$ED,$DD,$CD,$BD,$AD,$9D,$7E,$6E,$5E
       .byte $4E,$3E,$2E,$1E,$0E,$FE,$EE,$DE,$CE,$BE,$AE
LFEA0: .byte $C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2
       .byte $C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$CC,$C2,$C2,$C2,$C2,$C2,$C2,$C2
       .byte $C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2
       .byte $00,$10,$00,$18,$18,$00,$3C,$18,$00,$18,$3C,$18,$00,$38,$7C,$7C
       .byte $38,$00,$3C,$7E,$7E,$7E,$3C,$00,$18,$7C,$FE,$FE,$7C,$30,$00,$18
       .byte $7E,$FF,$FF,$FF,$7E,$18
LFEF6: .byte $01,$01,$02,$02,$03,$03,$04,$04,$00,$00
LFF00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$C6,$C6,$C6,$C6,$C6,$7C
       .byte $00,$3C,$18,$18,$18,$38,$18,$08,$00,$FE,$C0,$60,$3C,$06,$C6,$7C
       .byte $00,$7C,$C6,$06,$3C,$06,$C6,$7C,$00,$0C,$0C,$FE,$4C,$2C,$1C,$0C
       .byte $00,$7C,$C6,$06,$FC,$C0,$C0,$FE,$00,$7C,$C6,$C6,$FC,$C0,$C6,$7C
       .byte $00,$30,$30,$30,$18,$0C,$06,$FE,$00,$7C,$C6,$C6,$7C,$C6,$C6,$7C
       .byte $00,$7C,$C6,$06,$7E,$C6,$C6,$7C,$00,$7C,$C6,$C6,$C6,$C6,$C6,$7C
LFF60: .byte $50,$75,$25,$00
LFF64: .byte $12,$09,$08,$15
LFF68: .byte $8E,$8C,$8A,$88,$86,$84,$82,$80
LFF70: .byte $FF,$7F,$3F,$1E,$3C,$78,$F0,$E0,$C0,$C0,$C0,$C0,$60,$30,$18,$38
       .byte $1C,$0E,$07,$03,$01
LFF85: .byte $08,$02,$02,$08,$08,$07,$08,$07,$08,$08,$07,$08,$08,$08,$08,$08
LFF95: .byte $0C,$0C,$0C,$09,$09,$09,$06,$06,$04,$04,$02,$01
LFFA1: .byte $FF,$FF,$FF,$06,$06,$06,$03,$03
LFFA9: .byte $00,$00,$06,$03
LFFAD: .byte $C2,$C2,$C4,$C4,$C4,$C4,$C4,$C6,$C6,$C6,$C6,$C6,$C8,$C8,$C8,$C8
       .byte $C8,$CA,$CA,$CA,$CA,$CE,$CE,$CE,$C2,$C2,$C4,$C4,$C4,$C4,$C4,$C6
       .byte $C6,$C6,$C6,$C6,$C8,$C8,$C8,$C8
LFFD5: .byte $C8
LFFD6: .byte $CA,$CA,$CA,$CA,$CE,$CE,$CE
LFFDD: .byte $25,$1D,$16,$10,$0B,$07,$04,$01,$00,$0A,$14,$1E,$28,$32,$3C,$46
       .byte $50,$5A,$64,$6E,$78,$82,$8C,$96
LFFF5: .byte $00,$26,$4C,$72,$00,$00,$00,$00,$F0,$00,$F0
