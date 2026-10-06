; Disassembly of roms/Commando Raid.bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Commando Raid.bin
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
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
LF9C4   =   $F9C4
LF9C5   =   $F9C5
LFB00   =   $FB00

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF007: STA    VSYNC,X 
       DEX            
       BNE    LF007   
LF00C: LDA    #$02    
       STA    $E4     
       BNE    LF016   
LF012: LDA    #$00    
       STA    $E4     
LF016: LDA    #$80    
       STA    $D8     
       STA    $DE     
       LDA    #$FF    
       STA    $D9     
       STA    $DF     
       LDA    #$25    
       STA    $DC     
       STA    $E2     
       STA    $DD     
       STA    $E3     
       LDA    #$08    
       STA    $83     
       LDX    #$FF    
       STX    $E6     
       STX    $E7     
       STX    $E8     
       STX    $E9     
       STX    $EA     
       STX    $DA     
       STX    $E0     
       STX    $86     
       LDA    #$00    
       STA    $8B     
       STA    $8A     
       STA    $F7     
       STA    $85     
       STA    $84     
       LDX    #$12    
LF050: STA    $BD,X   
       DEX            
       BPL    LF050   
       JSR    LF9E2   
       LDA    #$00    
       STA    $EB     
       LDA    #$EC    
       STA    $EC     
       LDA    #$FC    
       STA    $89     
       LDA    #$44    
       STA    $88     
       LDX    #$8D    
LF06A: LDY    #$03    
LF06C: LDA    #$6C    
       STA    VSYNC,X 
       LDA    #$FE    
       STA    VBLANK,X
       INX            
       INX            
       DEY            
       BPL    LF06C   
       LDA    #$FD    
       STA    VBLANK,X
       LDA    #$00    
       STA    VSYNC,X 
       INY            
       STY    WSYNC,X 
       TXA            
       CLC            
       ADC    #$04    
       TAX            
       CPX    #$BD    
       BNE    LF06A   
       LDX    #$0A    
       LDA    #$8F    
       LDY    #$FD    
LF093: STA    $CC,X   
       STY    $CD,X   
       DEX            
       DEX            
       BPL    LF093   
       LDA    #$40    
       STA    $A1     
       STA    $AD     
       JMP    LF6AA   
LF0A4: LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$11    
       STA    CTRLPF  
       LDA    #$F0    
       STA    COLUPF  
       LDA    #$90    
       ORA    $83     
       STA    COLUBK  
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$1E    
       STA    TIM64T  
       LDY    $E4     
       CPY    #$02    
       BCC    LF0E1   
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF0D4   
       LDY    #$02    
       STY    $E4     
LF0D4: LDA    $8A     
       BNE    LF0DD   
       INY            
       BEQ    LF0E5   
       STY    $E4     
LF0DD: CPY    #$FF    
       BEQ    LF0E5   
LF0E1: LDA    #$00    
       STA    VBLANK  
LF0E5: LDY    $80     
       LDX    #$8C    
       CPY    #$01    
       BEQ    LF105   
       CPY    #$02    
       BNE    LF0F9   
       LDX    #$98    
       CPY    $84     
       BNE    LF105   
       BEQ    LF10E   
LF0F9: LDX    #$B0    
       CPY    #$03    
       BNE    LF105   
       LDX    #$A4    
       CPY    $84     
       BEQ    LF10E   
LF105: JSR    LF11B   
       LDA    #$00    
       STA    $81     
       BEQ    LF113   
LF10E: STX    $81     
       JSR    LFEA8   
LF113: INX            
       INX            
       JSR    LF7D8   
       JMP    LF140   
LF11B: LDY    VSYNC,X 
       BEQ    LF13E   
       INY            
       LDA    LFBBC,Y 
       STA    VBLANK,X
       CPY    #$0B    
       BNE    LF12E   
       DEC    RSYNC,X 
       JMP    LF13C   
LF12E: CPY    #$1A    
       BNE    LF13C   
LF132: LDA    #$00    
       STA    VSYNC,X 
       LDA    #$6C    
       STA    VBLANK,X
       INX            
       RTS            

LF13C: INC    VSYNC,X 
LF13E: INX            
       RTS            

LF140: LDX    $ED     
       BEQ    LF192   
       LDA    #$FF    
       CPX    #$50    
       BCS    LF14C   
       LDA    #$01    
LF14C: LDX    $EB     
       CPX    #$00    
       CLC            
       BEQ    LF156   
       EOR    #$FF    
       SEC            
LF156: ADC    $ED     
       STA    $ED     
       CMP    #$46    
       BEQ    LF162   
       CMP    #$5A    
       BNE    LF16E   
LF162: LDA    #$CB    
       STA    $EB     
       LDY    #$14    
       JSR    LF7B1   
       JMP    LF192   
LF16E: CMP    #$01    
       BEQ    LF176   
       CMP    #$9F    
       BNE    LF192   
LF176: JSR    LF17C   
       JMP    LF192   
LF17C: LDA    #$01    
       STA    $EB     
       LDA    #$01    
       STA    $EC     
       LDA    #$00    
       STA    $ED     
       LDY    #$04    
       JSR    LF7B3   
       LDA    #$01    
       STA    $E4     
       RTS            

LF192: LDA    $EC     
       CMP    #$EC    
       BEQ    LF1C4   
       LDA    #$01    
       STA    $88     
       LDA    $E4     
       CMP    #$01    
       BEQ    LF1A8   
       LDA    #$08    
       STA    $83     
       BNE    LF1C4   
LF1A8: LDA    $F1     
       BNE    LF1B0   
       LDA    #$02    
       STA    $E4     
LF1B0: LDA    $83     
       AND    #$01    
       BEQ    LF1C0   
       LDA    $E5     
       AND    #$0E    
       ORA    #$01    
       STA    $83     
       BNE    LF1C4   
LF1C0: LDA    $E5     
       STA    COLUPF  
LF1C4: LDA    $EB     
       CMP    #$00    
       BEQ    LF1D9   
       CMP    #$01    
       BEQ    LF1D9   
       LDA    $ED     
       LSR            
       AND    #$03    
       TAX            
       LDA    LFCC6,X 
       STA    $EB     
LF1D9: LDA    $ED     
       LDX    #$03    
       JSR    LFBA8   
       STA    WSYNC   
       STA    HMOVE   
LF1E4: LDA    INTIM   
       BNE    LF1E4   
       STA    WSYNC   
       STA    HMCLR   
       LDX    #$08    
LF1EF: STA    WSYNC   
       DEX            
       BNE    LF1EF   
       JSR    LFA59   
       LDA    #$15    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$C2    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$00    
       LDA    #$E0    
       CMP    $D8     
       BNE    LF20D   
       STX    COLUP0  
LF20D: CMP    $DE     
       BNE    LF213   
       STX    COLUP1  
LF213: LDA    #$08    
       STA    REFP0   
       LDX    $DA     
       INX            
       TXA            
       JSR    LFBA6   
       STA    WSYNC   
       LDX    $E0     
       INX            
       TXA            
       LDX    #$01    
       JSR    LFBA8   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       LDX    #$00    
       STX    $81     
       STX    $82     
       LDA    ($D6),Y 
LF237: STA    WSYNC   
       STA    ENABL   
       LDA    ($D8),Y 
       STA    GRP0    
       LDY    $82     
       LDA    ($DE),Y 
       STA    GRP1    
       LDA    #$0F    
       CPY    #$00    
       BNE    LF268   
       CPX    $E2     
       BNE    LF251   
       STA    $82     
LF251: LDY    $81     
       BNE    LF26D   
       CPX    $DC     
       BNE    LF25B   
       STA    $81     
LF25B: INX            
       TXA            
       TAY            
       LDA    ($D6),Y 
       LDY    $81     
       CPX    #$24    
       BNE    LF237   
       BEQ    LF271   
LF268: DEC    $82     
       JMP    LF251   
LF26D: DEC    $81     
       BPL    LF25B   
LF271: LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       INX            
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    $87     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $84     
       BEQ    LF298   
       CMP    #$02    
       BNE    LF290   
       LDA    #$04    
       STA    NUSIZ0  
       BNE    LF298   
LF290: LDA    #$04    
       STA    NUSIZ1  
       STA    $81     
       BNE    LF29C   
LF298: LDA    #$00    
       STA    $81     
LF29C: STA    WSYNC   
       NOP            
       NOP            
       DEX            
       LDA    #$00    
       STA    REFP0,X 
       LDA    CXP0FB  
       STA    $F4     
       LDA    CXP1FB  
       STA    $F5     
       STA    RESP0   
       LDA    #$90    
       ORA    $83,X   
       TAX            
       LDA    $81     
       BNE    LF2BE   
       LDA    ($00,X) 
       LDA    ($00,X) 
       LDA    ($00),Y 
LF2BE: STX    RESP1   
       LDY    #$00    
LF2C2: STA    WSYNC   
       STX    COLUBK  
       LDA    ($8D),Y 
       STA    GRP0    
       LDA    ($D4),Y 
       STA    ENABL   
       LDA    ($99),Y 
       LDX    LFBD8,Y 
       STA    GRP0    
       LDA    ($A5),Y 
       STA    GRP1    
       TXA            
       CLC            
       ADC    #$90    
       ORA    $83     
       TAX            
       LDA    ($00,X) 
       LDA    ($B1),Y 
       STA    GRP1    
       INY            
       CPY    #$12    
       BNE    LF2C2   
       LDY    #$00    
LF2ED: STA    WSYNC   
       STX    COLUBK  
       LDA    ($8F),Y 
       STA    GRP0    
       LDA    ($D2),Y 
       STA    ENABL   
       LDA    ($9B),Y 
       LDX    LFBD8,Y 
       STA    GRP0    
       LDA    ($A7),Y 
       STA    GRP1    
       TXA            
       CLC            
       ADC    #$80    
       ORA    $83     
       TAX            
       LDA    ($00,X) 
       LDA    ($B3),Y 
       STA    GRP1    
       INY            
       CPY    #$18    
       BNE    LF2ED   
       LDY    #$00    
LF318: STA    WSYNC   
       STX    COLUBK  
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($D0),Y 
       STA    ENABL   
       LDA    ($9D),Y 
       LDX    LFBD8,Y 
       STA    GRP0    
       LDA    ($A9),Y 
       STA    GRP1    
       TXA            
       CLC            
       ADC    #$60    
       ORA    $83     
       TAX            
       LDA    ($00,X) 
       LDA    ($B5),Y 
       STA    GRP1    
       INY            
       CPY    #$18    
       BNE    LF318   
       LDY    #$00    
LF343: STA    WSYNC   
       STX    COLUBK  
       LDA    ($93),Y 
       STA    GRP0    
       LDA    ($CE),Y 
       STA    ENABL   
       LDA    ($9F),Y 
       LDX    LFBD8,Y 
       STA    GRP0    
       LDA    ($AB),Y 
       STA    GRP1    
       TXA            
       CLC            
       ADC    #$40    
       ORA    $83     
       TAX            
       LDA    ($00,X) 
       LDA    ($B7),Y 
       STA    GRP1    
       INY            
       CPY    #$18    
       BNE    LF343   
       LDY    #$00    
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDA    #$11    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$08    
       STA    REFP0   
       LDA    #$C0    
       STA    COLUP0  
       STA    RESP0   
       STA    COLUP1  
       STX    COLUBK  
       LDY    #$04    
LF38A: DEY            
       BNE    LF38A   
       LDA    $FF     
       STA    RESP1   
LF391: STA    WSYNC   
       LDA    ($CC),Y 
       STA    ENABL   
       LDA    ($95),Y 
       STA    GRP0    
       LDA    ($CC),Y 
       LDA    ENAM1   
       LDA    ($A1),Y 
       STA    GRP0    
       LDA    ($00),Y 
       LDA    #$00    
       LDA    ($AD),Y 
       STA    GRP1    
       LDA.wy $00B9,Y 
       LDA    #$20    
       STA    HMP0    
       LDA    ($B9),Y 
       STA    GRP1    
       INY            
       CPY    #$0D    
       BNE    LF391   
       STA    WSYNC   
       LDA    GRP0    
       LDX    #$07    
LF3C1: DEX            
       BNE    LF3C1   
       LDX    #$00    
       STX    GRP0    
       STA    RESP0   
       LDA    #$02    
       STA    COLUP0  
       STX    NUSIZ0  
       LDY    #$00    
       STY    REFP0   
       STY    REFP0   
       LDY    #$2A    
       STY    COLUBK  
       LDY    #$00    
       STX    GRP1    
LF3DE: STA    WSYNC   
       STA    HMOVE   
       LDA    LFC12,Y 
       STA    PF0     
       LDA    $E6     
       STA    PF1     
       LDA    LFC1C,Y 
       STA    PF2     
       LDA    ($88),Y 
       STA    GRP0    
       LDA    $E7     
       STA    PF1     
       STA    HMCLR   
       INY            
       CPY    #$0A    
       BNE    LF3DE   
       LDA    $EC     
       STA    $88     
       LDY    #$00    
       STY    NUSIZ1  
       LDA    #$F0    
       STA    COLUP1  
LF40B: STA    WSYNC   
       LDA    $E8     
       STA    PF1     
       LDA    LFC26,Y 
       STA    PF2     
       LDA    ($88),Y 
       STA    GRP0    
       LDA    $E9     
       INY            
       LDX    #$FF    
       CPY    #$0E    
       NOP            
       NOP            
       NOP            
       STA    PF1     
       BNE    LF40B   
       STX    ENAM1   
       LDA    $EB     
       STA    $88     
       LDA    #$56    
       STA    COLUP0  
       LDY    #$04    
       LDA    $EA     
       ROL            
LF437: LDX    #$80    
       ROR            
       LSR            
       BCC    LF43F   
       LDX    #$FF    
LF43F: STA    WSYNC   
       STX    PF1     
       AND    #$07    
       TAX            
       LDA    ($88),Y 
       STA    GRP0    
       LDA    LFC34,X 
       STA    PF2     
       LDA    $EA     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAX            
       LDA    LFC3C,X 
       LDX    #$80    
       STA    PF2     
       LDA    $EA     
       ROL            
       BCC    LF466   
       LDX    #$FF    
LF466: STX    PF1     
       DEY            
       BPL    LF437   
       LDX    #$FF    
       LDY    #$0A    
       STA    WSYNC   
       STX    PF1     
       LDA    ($88),Y 
       STA    GRP0    
       LDX    #$3F    
       LDA    $EA     
       AND    #$08    
       BEQ    LF481   
       LDX    #$FF    
LF481: STX    PF2     
       DEY            
LF484: STA    WSYNC   
       LDA    ($88),Y 
       STA    GRP0    
       CPY    #$07    
       BNE    LF498   
       LDA    $EA     
       AND    #$08    
       BNE    LF498   
       LDA    #$7F    
       STA    PF2     
LF498: DEY            
       CPY    #$04    
       BNE    LF484   
       STA    WSYNC   
       LDX    #$FF    
       STX    PF2     
       INX            
       STX    ENAM1   
       STX    GRP0    
       LDA    #$02    
       STA    WSYNC   
       LDA    #$23    
       STA    TIM64T  
       LDA    $8A     
       BNE    LF4E2   
       LDA    #$3C    
       STA    $8A     
       LDA    $8B     
       BNE    LF4EB   
LF4BD: LDA    $DD     
       BNE    LF4F5   
       LDA    $E3     
       BNE    LF4F5   
       LDA    $86     
       ASL            
       ASL            
       ASL            
       ADC    #$23    
       STA    $8B     
       LDY    $86     
       CPY    #$07    
       BEQ    LF4EB   
       INY            
       STY    $86     
       LDA    LFFF0,Y 
       STA    $87     
       SEC            
       ROL    $F7     
       JMP    LF4EB   
LF4E2: DEC    $8A     
       LDA    $8B     
       BNE    LF4F5   
       JMP    LF4BD   
LF4EB: DEC    $8B     
       BNE    LF4F5   
       LDA    #$8C    
       STA    $DD     
       STA    $E3     
LF4F5: LDA    SWCHB   
       AND    #$01    
       BNE    LF4FF   
       JMP    LF00C   
LF4FF: LDA    $E4     
       CMP    #$02    
       BCC    LF50F   
       LDA    SWCHA   
       AND    #$10    
       BNE    LF50F   
       JMP    LF012   
LF50F: LDX    $BC     
       LDA    LFD82,X 
       STA    $88     
       DEC    $80     
       LDA    $80     
       BNE    LF575   
       LDA    #$04    
       STA    $80     
       LDA    $E4     
       BNE    LF569   
       JSR    LFBF1   
       AND    #$07    
       CMP    #$03    
       BNE    LF569   
       LDX    #$D8    
       JSR    LF54B   
       BCS    LF538   
       LDA    #$00    
       BEQ    LF541   
LF538: LDX    #$DE    
       JSR    LF54B   
       BCS    LF569   
       LDA    #$80    
LF541: STA    WSYNC,X 
       LDA    #$14    
       STA    NUSIZ0,X
       STA    NUSIZ1,X
       BNE    LF569   
LF54B: LDA    WSYNC,X 
       CMP    #$FF    
       BNE    LF567   
       LDA    RSYNC,X 
       BNE    LF567   
       LDA    NUSIZ1,X
       BNE    LF567   
       LDA    $84     
       BEQ    LF565   
       CPX    $85     
       BNE    LF565   
       LDA    #$E0    
       STA    VSYNC,X 
LF565: CLC            
       RTS            

LF567: SEC            
       RTS            

LF569: LDA    $DD     
       BEQ    LF56F   
       DEC    $DD     
LF56F: LDA    $E3     
       BEQ    LF575   
       DEC    $E3     
LF575: LDA    $F4     
       AND    #$40    
       BEQ    LF57F   
       LDX    #$D8    
       BNE    LF587   
LF57F: LDA    $F5     
       AND    #$40    
       BEQ    LF59D   
       LDX    #$DE    
LF587: LDA    VSYNC,X 
       JSR    LF912   
       LDA    #$04    
       STA    RSYNC,X 
       LDY    #$20    
       JSR    LF7B1   
       LDA    #$C8    
       JSR    LF9E2   
       JMP    LF63C   
LF59D: LDA    #$FF    
       STA    $82     
       LDA    CXP0FB  
       AND    #$40    
       BEQ    LF5C3   
       LDA    $F6     
       ASL            
       TAX            
       LDA    $CA     
       CMP    #$1E    
       BCS    LF5B8   
       TXA            
       CLC            
       ADC    #$8D    
       JMP    LF5E2   
LF5B8: LDA    #$02    
       STA    $82     
       TXA            
       CLC            
       ADC    #$99    
       JMP    LF5E2   
LF5C3: LDA    CXP1FB  
       AND    #$40    
       BEQ    LF63C   
       LDA    $F6     
       ASL            
       TAX            
       LDA    $CA     
       CMP    #$81    
       BCS    LF5DE   
       LDA    #$03    
       STA    $82     
       TXA            
       CLC            
       ADC    #$A5    
       JMP    LF5E2   
LF5DE: TXA            
       CLC            
       ADC    #$B1    
LF5E2: STX    $81     
       TAX            
       LDA    VSYNC,X 
       STA    $FA     
       LDY    #$6C    
       STY    VSYNC,X 
       LDA    $84     
       CMP    $82     
       BEQ    LF613   
       LDA    $81     
       BNE    LF5FB   
LF5F7: STY    WSYNC,X 
       BEQ    LF62D   
LF5FB: LDA    #$53    
       CMP    $FA     
       BCS    LF609   
       LDA    #$59    
       CMP    $FA     
       BCC    LF621   
       BCS    LF632   
LF609: LDA    $81     
       CMP    #$06    
       BEQ    LF632   
       STY    WSYNC,X 
       BNE    LF632   
LF613: LDA    #$00    
       STA    $84     
       LDA    $81     
       BEQ    LF5F7   
       CMP    #$06    
       BEQ    LF621   
       STY    WSYNC,X 
LF621: DEX            
       DEX            
       STY    VSYNC,X 
       LDA    $81     
       CMP    #$02    
       BEQ    LF62D   
       BNE    LF632   
LF62D: LDA    #$00    
       DEX            
       STA    VSYNC,X 
LF632: LDA    #$73    
       JSR    LF9E2   
       LDY    #$18    
       JSR    LF7B1   
LF63C: STA    CXCLR   
       LDA    SWCHB   
       AND    #$40    
       BNE    LF64F   
       LDA    $C9     
       BEQ    LF64F   
       LDA    $BC     
       ORA    #$80    
       STA    $C9     
LF64F: DEC    $E5     
       JSR    LF92C   
       JSR    LFAEE   
       JSR    LF73D   
       LDA    $DA     
       CMP    #$FF    
       BNE    LF66D   
       LDA    $D8     
       JSR    LF912   
       LDA    #$80    
       STA    $D8     
       LDA    #$25    
       STA    $DC     
LF66D: LDA    $E0     
       CMP    #$FF    
       BNE    LF680   
       LDA    $DE     
       JSR    LF912   
       LDA    #$80    
       STA    $DE     
       LDA    #$25    
       STA    $E2     
LF680: LDX    #$D8    
       JSR    LF8D1   
       LDX    #$DE    
       JSR    LF8D1   
       LDA    $80     
       AND    #$01    
       BNE    LF6AA   
       LDA    SWCHA   
       ASL            
       BCS    LF6A1   
       LDA    $BC     
       CMP    #$0C    
       BEQ    LF6AA   
       INC    $BC     
       JMP    LF6AA   
LF6A1: ASL            
       BCS    LF6AA   
       LDA    $BC     
       BEQ    LF6AA   
       DEC    $BC     
LF6AA: LDA    INTIM   
       BNE    LF6AA   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       LDA    #$25    
       STA    TIM8T   
       LDX    $85     
       LDA    VSYNC,X 
       CMP    #$E0    
       BNE    LF6E6   
       LDA    WSYNC,X 
       CMP    #$46    
       BCC    LF6E6   
       CMP    #$4B    
       BCS    LF6E6   
       LDA    $84     
       CMP    $80     
       BNE    LF6E6   
       CMP    #$02    
       BNE    LF6E0   
       LDA    $98     
       BNE    LF6E6   
       INC    $98     
       BNE    LF6E6   
LF6E0: LDA    $A4     
       BNE    LF6E6   
       INC    $A4     
LF6E6: LDA    SWCHB   
       AND    #$80    
       BNE    LF707   
       LDA    $85     
       BNE    LF707   
       LDA    $8B     
       AND    #$1F    
       CMP    #$07    
       BNE    LF707   
       LDA    $E5     
       BPL    LF703   
       LDA    #$D8    
       STA    $85     
       BNE    LF707   
LF703: LDA    #$DE    
       STA    $85     
LF707: LDA    $85     
       BEQ    LF735   
       LDA    $84     
       BNE    LF735   
       LDY    #$02    
       LDX    #$99    
       JSR    LF724   
       BEQ    LF720   
       INY            
       LDX    #$A5    
       JSR    LF724   
       BNE    LF735   
LF720: STY    $84     
       BEQ    LF735   
LF724: LDA    #$04    
       STA    $81     
       LDA    #$6C    
LF72A: CMP    VSYNC,X 
       BNE    LF734   
       INX            
       INX            
       DEC    $81     
       BNE    LF72A   
LF734: RTS            

LF735: LDA    INTIM   
       BNE    LF735   
       JMP    LF0A4   
LF73D: LDA    $DA     
       CMP    #$FF    
       BNE    LF747   
       CMP    $E0     
       BEQ    LF75D   
LF747: LDA    #$E0    
       CMP    $D8     
       BEQ    LF751   
       CMP    $DE     
       BNE    LF757   
LF751: LDX    #$03    
       LDA    #$10    
       BNE    LF766   
LF757: LDA    #$FC    
       LDX    #$02    
       BNE    LF761   
LF75D: LDA    #$00    
       LDX    #$00    
LF761: CLC            
       ADC    $EE     
       STA    $EE     
LF766: STA    AUDF0   
       STX    AUDC0   
       LDA    #$07    
       STA    AUDV0   
       LDA    $F1     
       BEQ    LF7AA   
       DEC    $F1     
       LDA    $F2     
       TAX            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       TXA            
       AND    #$0F    
       TAX            
       DEX            
       BEQ    LF78D   
       LDA    #$F0    
       AND    $F2     
       STA    $F2     
       TXA            
       JMP    LF797   
LF78D: DEY            
       LDA    $F3     
       STA    $F2     
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
LF797: ORA    $F2     
       STA    $F2     
       TYA            
       STA    AUDV1   
       LDA    $F0     
       AND    #$9F    
       CLC            
       ADC    $EF     
       STA    $F0     
       STA    AUDF1   
       RTS            

LF7AA: LDA    #$00    
       STA    AUDV1   
       STA    $F0     
       RTS            

LF7B1: LDA    $F0     
LF7B3: BMI    LF7D7   
LF7B5: LDA    LFECF,Y 
       AND    #$1F    
       STA    $EF     
       LDA    LFED0,Y 
       STA    $F0     
       LDA    LFED1,Y 
       STA    $F1     
       LDA    LFED2,Y 
       STA    AUDC1   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F3     
       LDA    #$F0    
       ORA    $F3     
       STA    $F2     
LF7D7: RTS            

LF7D8: JSR    LF7E2   
       JSR    LF7E2   
       JSR    LF812   
       RTS            

LF7E2: LDY    VSYNC,X 
       CPY    #$6C    
       BEQ    LF7FF   
       DEC    VSYNC,X 
       LDA    $81     
       BNE    LF802   
       CPY    #$53    
       BNE    LF7F7   
       DEC    WSYNC,X 
       JMP    LF7FF   
LF7F7: CPY    #$43    
       BNE    LF7FF   
LF7FB: LDA    #$6C    
       STA    VSYNC,X 
LF7FF: INX            
       INX            
       RTS            

LF802: CPY    #$77    
       BNE    LF80C   
       LDA    #$8F    
       STA    WSYNC,X 
       BNE    LF7FF   
LF80C: CPY    #$6D    
       BEQ    LF7FB   
       BNE    LF7FF   
LF812: LDY    VSYNC,X 
       CPY    #$6C    
       BEQ    LF83E   
       DEC    VSYNC,X 
       LDA    $81     
       BNE    LF83F   
       CPY    #$43    
       BNE    LF83E   
       LDA    #$6C    
       STA    VSYNC,X 
       INC    NUSIZ0,X
       LDA    WSYNC,X 
       AND    #$3F    
       CMP    #$30    
       BEQ    LF858   
       LDA    WSYNC,X 
       CLC            
       ADC    #$10    
       STA    WSYNC,X 
       LDY    #$00    
       DEC    $E5     
       JSR    LF7B1   
LF83E: RTS            

LF83F: CPY    #$77    
       BNE    LF83E   
       LDA    #$8F    
       STA    $95     
       STA    $A1     
       STA    $AD     
       STA    $B9     
       LDA    #$09    
       STA    $83     
       LDA    #$6C    
       STA    VSYNC,X 
       JMP    LF17C   
LF858: LDY    #$0C    
       JSR    LF7B1   
       LDY    #$04    
       CPX    #$AB    
       BCC    LF86B   
       BEQ    LF867   
       LDY    #$40    
LF867: LDX    #$01    
       BNE    LF873   
LF86B: CPX    #$9F    
       BEQ    LF871   
       LDY    #$40    
LF871: LDX    #$00    
LF873: TYA            
       AND    $E6,X   
       BEQ    LF880   
       TYA            
       EOR    #$FF    
       AND    $E6,X   
       STA    $E6,X   
       RTS            

LF880: TYA            
       AND    $E8,X   
       BEQ    LF88D   
       TYA            
       EOR    #$FF    
       AND    $E8,X   
       STA    $E8,X   
       RTS            

LF88D: LDA    $EA     
       AND    #$18    
       TAY            
       LDA    $EA     
       DEX            
       BEQ    LF8A5   
       AND    #$F0    
       STA    $81     
       LDA    $EA     
       ASL            
       AND    #$0F    
       ORA    $81     
       JMP    LF8B0   
LF8A5: AND    #$0F    
       STA    $81     
       LDA    $EA     
       LSR            
       AND    #$F0    
       ORA    $81     
LF8B0: STA    $EA     
       EOR    #$18    
       AND    #$18    
       BEQ    LF8D0   
       LDA    $EA     
       AND    #$E7    
       STA    $EA     
       CPY    #$18    
       BNE    LF8D0   
       LDA    #$9E    
       INX            
       BNE    LF8C9   
       LDA    #$02    
LF8C9: STA    $ED     
       LDY    #$10    
       JSR    LF7B1   
LF8D0: RTS            

LF8D1: LDA    RSYNC,X 
       BNE    LF8ED   
       LDA    WSYNC,X 
       CMP    #$FF    
       BEQ    LF8EC   
       LDA    VSYNC,X 
       CMP    #$E0    
       BEQ    LF8EC   
       LDA    VSYNC,X 
       CLC            
       ADC    #$10    
       AND    #$30    
       ORA    #$80    
       STA    VSYNC,X 
LF8EC: RTS            

LF8ED: LDA    RSYNC,X 
       CMP    #$01    
       BEQ    LF909   
       CMP    #$04    
       BNE    LF8FE   
       LDA    #$C0    
       STA    VSYNC,X 
LF8FB: DEC    RSYNC,X 
       RTS            

LF8FE: CMP    #$02    
       BNE    LF8FB   
       LDA    #$CF    
       STA    VSYNC,X 
       DEC    RSYNC,X 
       RTS            

LF909: LDA    #$FF    
       STA    WSYNC,X 
       DEC    RSYNC,X 
       STA    NUSIZ0,X
       RTS            

LF912: CMP    #$E0    
       BNE    LF926   
       LDA    #$00    
       STA    $85     
       LDA    $84     
       CMP    #$02    
       BNE    LF927   
       LDA    $98     
       BNE    LF926   
LF924: STA    $84     
LF926: RTS            

LF927: LDA    $A4     
       BEQ    LF924   
       RTS            

LF92C: LDA    $C9     
       BEQ    LF952   
       AND    #$0F    
       TAX            
       LDA    LF9D5,X 
       CLC            
       ADC    $CA     
       CMP    #$9B    
       BCS    LF94C   
       STA    $CA     
       LDA    LFF6E,X 
       ADC    $CB     
       CMP    #$8E    
       BCS    LF94C   
       STA    $CB     
       BCC    LF952   
LF94C: LDA    #$00    
       STA    $C9     
       STA    $CA     
LF952: LDA    $E4     
       BNE    LF985   
       LDA    $C9     
       BNE    LF985   
       LDA    $80     
       CMP    #$02    
       BNE    LF985   
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF96D   
       LDA    INPT4   
       AND    #$80    
       BNE    LF985   
LF96D: LDA    $BC     
       TAX            
       ORA    #$80    
       STA    $C9     
       LDA    LFF61,X 
       STA    $CA     
       LDA    LFF54,X 
       STA    $CB     
       INC    $E5     
       LDY    #$08    
       JSR    LF7B1   
LF985: LDA    #$92    
       STA    $CC     
       STA    $CE     
       STA    $D0     
       STA    $D2     
       STA    $D4     
       STA    $D6     
       LDA    $C9     
       BEQ    LF9B2   
       LDA    $CB     
       LDX    #$00    
       LDY    #$CC    
LF99D: CMP    LF9C3,X 
       BCS    LF9B9   
       SEC            
       SBC    LF9C0,X 
       CLC            
       ADC    LF9C5,X 
       STA.wy $0000,Y 
       LDA    LF9C4,X 
       STA    $F6     
LF9B2: LDA    $CA     
       LDX    #$04    
       JMP    LFBA8   
LF9B9: INX            
       INX            
       INX            
       INY            
       INY            
       BNE    LF99D   
LF9C0: BRK            
       BRK            
       BRK            
LF9C3: ASL    $AB00   
       ROL    RSYNC   
       .byte $9E ;.SHX
       ROL    $9E02,X 
       LSR    VBLANK,X
       .byte $9E ;.SHX
       PLA            
       BRK            
       LDY    $FF     
       BRK            
       .byte $92 ;.JAM
LF9D5: .byte $FC ;.NOP
       SBC    LFEFE,X 
       .byte $FF ;.ISB
       .byte $FF ;.ISB
       BRK            
       ORA    ($01,X) 
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $04 ;.NOP
LF9E2: LDX    #$FF    
LF9E4: INX            
       SEC            
       SBC    #$64    
       BCS    LF9E4   
       ADC    #$64    
       TAY            
       TXA            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $C3     
       STA    $C3     
       TYA            
       LDX    #$FF    
LF9F9: INX            
       SEC            
       SBC    #$0A    
       BCS    LF9F9   
       ADC    #$0A    
       TAY            
       TXA            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $C5     
       STA    $C5     
       TYA            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $C7     
       STA    $C7     
       LDX    #$08    
LFA16: LDA    $BF,X   
       SEC            
       SBC    #$50    
       BCC    LFA3C   
       STA    $BF,X   
       CLC            
       LDA    $BD,X   
       ADC    #$08    
       STA    $BD,X   
       CPX    #$02    
       BNE    LFA3C   
       STX    $FA     
       LDY    #$1C    
       JSR    LF7B5   
       LDY    #$03    
       LDX    #$00    
       STX    $81     
       STX    $FB     
       JMP    LFDDC   
LFA3C: DEX            
       DEX            
       BPL    LFA16   
       LDA    #$FC    
       LDX    #$00    
LFA44: LDY    $BD,X   
       CPY    #$00    
       BEQ    LFA4C   
       LDA    #$FF    
LFA4C: STA    $BE,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LFA44   
       LDA    #$FF    
       STA    $C8     
       RTS            

LFA59: LDY    #$07    
       LDA    #$0E    
       STA    $81     
       LDA    #$34    
       JSR    LFBA8   
       LDA    #$3C    
       INX            
       JSR    LFBA8   
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $81     
       STA    COLUP0  
       STA    COLUP1  
LFA7E: LDA    ($C7),Y 
       STA    $81     
       STA    WSYNC   
       LDA    ($BD),Y 
       STA    GRP0    
       LDA    ($BF),Y 
       STA    GRP1    
       LDA    ($C1),Y 
       STA    GRP0    
       LDA    ($C3),Y 
       TAX            
       LDA    ($C5),Y 
       STY    $FA     
       LDY    $81     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $FA     
       DEY            
       BPL    LFA7E   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LFAB1: SEC            
       SBC    $DA     
       BCC    LFAE8   
       CMP    #$23    
       BCS    LFAE8   
       LDX    #$D8    
       JSR    LFB58   
       LDX    #$DE    
       JSR    LFB58   
       LDA    $85     
       CMP    #$D8    
       BEQ    LFAD9   
       LDA    $DC     
       BEQ    LFAD0   
       DEC    $DC     
LFAD0: LDA    $E2     
       CMP    #$14    
       BEQ    LFAD8   
       INC    $E2     
LFAD8: RTS            

LFAD9: LDA    $E2     
       BEQ    LFADF   
       DEC    $E2     
LFADF: LDA    $DC     
       CMP    #$14    
       BEQ    LFAD8   
       INC    $DC     
       RTS            

LFAE8: JSR    LFB06   
       JMP    LFB0B   
LFAEE: LDA    $DA     
       CMP    #$FF    
       BEQ    LFAFF   
       LDA    $E0     
       CMP    #$FF    
       BEQ    LFB06   
       LDA    $E0     
       JMP    LFAB1   
LFAFF: LDA    $E0     
       CMP    #$FF    
       BNE    LFB0B   
       RTS            

LFB06: LDX    #$D8    
       JMP    LFB0D   
LFB0B: LDX    #$DE    
LFB0D: LDA    VSYNC,X 
       CMP    #$E0    
       BEQ    LFB58   
       LDA    WSYNC,X 
       LDY    #$8C    
       CMP    #$0C    
       BEQ    LFB6A   
       LDY    $84     
       CPY    #$02    
       BEQ    LFB27   
       LDY    #$98    
       CMP    #$1A    
       BEQ    LFB6A   
LFB27: LDY    $84     
       CPY    #$03    
       BEQ    LFB33   
       LDY    #$A4    
       CMP    #$6A    
       BEQ    LFB6A   
LFB33: LDY    #$B0    
       CMP    #$76    
       BEQ    LFB6A   
       JSR    LFBF1   
       AND    #$07    
       CMP    #$01    
       BEQ    LFB48   
       CMP    #$03    
       BEQ    LFB51   
       BNE    LFB58   
LFB48: LDA    NUSIZ0,X
       CMP    #$14    
       BEQ    LFB50   
       INC    NUSIZ0,X
LFB50: RTS            

LFB51: LDA    NUSIZ0,X
       BEQ    LFB50   
       DEC    NUSIZ0,X
       RTS            

LFB58: CPX    #$D8    
       BNE    LFB61   
       INC    $DA     
       BMI    LFB65   
       RTS            

LFB61: DEC    $E0     
       BNE    LFB50   
LFB65: LDA    #$FF    
       STA    WSYNC,X 
       RTS            

LFB6A: LDA    NUSIZ0,X
       CMP    #$14    
       BNE    LFB48   
       LDA.wy $0000,Y 
       BNE    LFB58   
       LDA.wy $0003,Y 
       CMP    #$6C    
       BEQ    LFB80   
       CMP    #$4B    
       BCS    LFB58   
LFB80: LDA    #$01    
       CPY    #$8C    
       BEQ    LFB94   
       LDA    #$02    
       CPY    #$98    
       BEQ    LFB94   
       LDA    #$04    
       CPY    #$A4    
       BEQ    LFB94   
       LDA    #$01    
LFB94: CMP    $80     
       BNE    LFB9F   
       LDA    #$01    
       STA.wy $0000,Y 
       BNE    LFB58   
LFB9F: LDA    $F7     
       AND    $E5     
       BEQ    LFB58   
       RTS            

LFBA6: LDX    #$00    
LFBA8: SEC            
       STA    WSYNC   
LFBAB: SBC    #$0F    
       BCS    LFBAB   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    HMP0,X  
       STA    RESP0,X 
       RTS            

LFBBC: .byte $00,$0A,$08,$06,$04,$02,$00,$1B,$1A,$31,$30,$58,$57,$56,$55,$54
       .byte $53,$52,$51,$50,$4F,$4E,$4D,$4C,$4B,$4A,$49,$48
LFBD8: .byte $00,$00,$00,$F0,$00,$00,$F0,$00,$F0,$F0,$00,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$E0,$F0,$F0,$E0,$F0,$E0,$E0
LFBF1: STX    $81     
       LDX    $E5     
       LDA    LF140,X 
       ADC    $E5     
       STA    $E5     
       LDX    $81     
       RTS            

LFBFF: .byte $A4,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00
LFC12: .byte $8F,$CF,$EF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFC1C: .byte $00,$00,$01,$01,$03,$03,$03,$07,$07,$0F
LFC26: .byte $0F,$0F,$0F,$1F,$1F,$3F,$3F,$3F,$7F,$7F,$FF,$FF,$FF,$FF
LFC34: .byte $00,$AA,$38,$3F,$C0,$AA,$F8,$FF
LFC3C: .byte $00,$C0,$38,$F8,$AA,$AA,$3F,$FF,$00,$00,$00,$00,$00,$C0,$E0,$70
       .byte $38,$18,$00,$00,$00,$00,$C0,$E0,$60,$30,$38,$18,$00,$00,$00,$00
       .byte $60,$60,$30,$30,$18,$18,$00,$00,$00,$60,$60,$30,$30,$30,$18,$18
       .byte $00,$00,$60,$60,$30,$30,$30,$18,$18,$18,$00,$00,$30,$30,$30,$30
       .byte $18,$18,$18,$18,$00,$00,$18,$18,$18,$18,$18,$18,$18,$18,$00,$00
       .byte $0C,$0C,$0C,$0C,$18,$18,$18,$18,$00,$00,$06,$06,$0C,$0C,$0C,$18
       .byte $18,$18,$00,$00,$00,$06,$06,$0C,$0C,$0C,$18,$18,$00,$00,$00,$00
       .byte $06,$06,$0C,$0C,$18,$18,$00,$00,$00,$00,$03,$07,$06,$0C,$1C,$18
       .byte $00,$00,$00,$00,$00,$03,$07,$0E,$1C,$18
LFCC6: .byte $CB,$D6,$E1,$E1,$D6,$38,$10,$00,$00,$00,$00,$00,$00,$10,$38,$38
       .byte $7C,$38,$38,$10,$00,$00,$10,$38,$38,$7C,$7C,$FE,$FE,$7C,$7C,$38
       .byte $38,$7C,$7C,$FE,$FE,$FE,$3C,$7E,$7E,$7E,$FF,$FF,$FF,$E7,$E7,$E7
       .byte $E7,$00,$00,$00,$00,$00,$FF,$E9,$B1,$E8,$E7,$A5,$E7,$FF,$FF,$DB
       .byte $FF,$DB,$FF,$FF,$95,$9F,$9F,$FF,$00,$00,$E7,$A5,$E7,$FF,$FF,$DB
       .byte $FB,$D1,$F3,$C1,$91,$9A,$97,$FF,$00,$00,$E7,$A5,$E7,$BF,$5F,$0B
       .byte $1B,$01,$73,$A1,$91,$9A,$97,$FF,$00,$00,$E7,$A5,$E4,$BC,$58,$08
       .byte $18,$00,$72,$A1,$91,$9A,$97,$FF,$00,$00,$07,$05,$27,$77,$FF,$AF
       .byte $FF,$A9,$FF,$AF,$F9,$F9,$F9,$FF,$00,$00,$07,$05,$27,$77,$FF,$AF
       .byte $FF,$A9,$EF,$87,$09,$99,$C9,$FF,$00,$00,$07,$05,$24,$74,$FE,$AC
       .byte $FC,$A8,$EE,$85,$09,$99,$C9,$FF,$00,$00,$07,$05,$24,$74,$9E,$84
       .byte $80,$08,$4C,$85,$09,$99,$C9,$FF,$00,$00,$EC,$FC
LFD82: .byte $44,$4E,$58,$62,$6C,$76,$80,$8A,$94,$9E,$A8,$B2,$BC,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFDDC: LDX    LFF50,Y 
       LDA    WSYNC,X 
       CMP    $FB     
       BCC    LFDE9   
       STA    $FB     
       STY    $81     
LFDE9: DEY            
       BPL    LFDDC   
       LDY    $81     
       LDX    LFF50,Y 
       LDA    WSYNC,X 
       SEC            
       SBC    #$03    
       BCS    LFDFA   
       LDA    #$00    
LFDFA: STA    WSYNC,X 
       JMP    LFEF3   
LFDFF: .byte $A0,$10,$00
LFE02: .byte $10,$00,$10,$00,$10,$00,$10,$18,$08,$0C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$38,$00,$28,$00,$10
       .byte $00,$10,$00,$10,$38,$10,$10,$28,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$10,$38,$7C,$00,$44,$00,$28,$00,$10,$00,$10,$38,$10,$10,$28
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$38,$7C,$FE,$00,$82,$00
       .byte $44,$00,$28,$00,$10,$38,$10,$10,$28,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$88,$D8,$F8,$70,$70,$70,$70,$70,$70,$20,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LFEA8: LDA    VSYNC,X 
       BEQ    LFECD   
       CMP    #$01    
       BNE    LFEB8   
       LDA    #$8F    
       STA    VBLANK,X
       INC    VSYNC,X 
       BNE    LFECD   
LFEB8: INC    VSYNC,X 
       DEC    VBLANK,X
       CMP    #$14    
       BNE    LFEC6   
       LDA    #$8F    
       STA    RSYNC,X 
       BNE    LFECD   
LFEC6: CMP    #$1D    
       BNE    LFECD   
       JMP    LF132   
LFECD: INX            
       RTS            

LFECF: .byte $FE
LFED0: .byte $13
LFED1: .byte $1D
LFED2: .byte $2F,$FE,$80,$7E,$83,$E4,$0B,$05,$11,$FD,$08,$0E,$1C,$E9,$9F,$3F
       .byte $44,$F7,$9F,$3F,$44,$09,$14,$05,$1C,$00,$85,$68,$14,$08,$90,$1F
       .byte $28
LFEF3: LDA    #$00    
       STA    VSYNC,X 
       LDX    $FA     
       JMP    LFA3C   
LFEFC: .byte $A0,$A0
LFEFE: .byte $85,$B0,$1C,$36,$36,$36,$36,$36,$36,$1C,$0C,$0C,$0C,$0C,$0C,$0C
       .byte $1C,$0C,$3E,$30,$30,$18,$0C,$06,$36,$1C,$1C,$36,$06,$0C,$0C,$06
       .byte $36,$1C,$0C,$0C,$0C,$3E,$2C,$2C,$2C,$2C,$1C,$36,$06,$06,$3C,$30
       .byte $30,$3E,$1C,$36,$36,$36,$3C,$30,$36,$1C,$18,$18,$0C,$0C,$06,$06
       .byte $26,$3E,$1C,$36,$36,$36,$1C,$36,$36,$1C,$1C,$36,$06,$1E,$36,$36
       .byte $36,$1C
LFF50: .byte $B9,$95,$AD,$A1
LFF54: .byte $01,$03,$05,$07,$08,$09,$0A,$09,$08,$07,$05,$05,$03
LFF61: .byte $42,$44,$45,$46,$47,$4D,$4E,$4F,$55,$56,$57,$58,$59
LFF6E: .byte $04,$04,$05,$07,$06,$0C,$08,$0C,$06,$07,$05,$04,$04,$C4,$AC,$A0
       .byte $A4,$A0,$00,$24,$18,$3C,$7E,$7E,$7E,$36,$62,$12,$32,$F6,$C4,$84
       .byte $00,$00,$00,$24,$18,$3C,$7E,$7E,$7E,$36,$62,$24,$24,$66,$42,$42
       .byte $00,$00,$00,$24,$18,$3C,$7E,$7E,$7E,$36,$62,$48,$4C,$6F,$23,$21
       .byte $00,$00,$00,$24,$18,$3C,$7E,$7E,$7E,$36,$62,$81,$C3,$FF,$3C,$18
       .byte $00,$00,$00,$00,$00,$00,$42,$42,$24,$3C,$18,$3C,$24,$42,$42,$00
       .byte $00,$00,$00,$00,$00,$00,$A5,$80,$00,$02,$02,$00,$40,$40,$00,$01
       .byte $A5,$00,$00,$00,$03,$06,$6C,$DD,$FE,$3F,$7F,$03,$19,$0D,$04,$00
       .byte $00,$00
LFFF0: .byte $0E,$34,$DC,$64,$C4,$94,$00,$2C,$FF,$FF,$FF,$FF,$00,$F0,$A2,$FF
