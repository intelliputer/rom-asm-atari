; Disassembly of roms/Warlords.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Warlords.bin
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXM0FB  =  $34
CXM1FB  =  $35
CXBLPF  =  $36
INPT0   =  $38
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: CLC            
       ADC    #$36    
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       PLA            
       AND    #$0F    
       STY    $F8     
       CLC            
       ADC    $F8     
       CMP    #$0F    
       BCC    LF018   
       SBC    #$0F    
       INY            
LF018: CMP    #$08    
       EOR    #$0F    
       BCS    LF021   
       ADC    #$01    
       DEY            
LF021: ASL            
       ASL            
       ASL            
       ASL            
       RTS            


START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF02D: STA    VSYNC,X 
       INX            
       BNE    LF02D   
       DEX            
       STX    $E4     
       JSR    LFBE9   
       JSR    LFC60   
       LDA    #$0B    
       STA    $E5     
       LDA    #$11    
       STA    $E6     
       LDA    #$C0    
       STA    $D0     
LF047: LDA    #$82    
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       LDA    #$20    
       STA    HMM0    
       STA    HMM1    
       LDA    RESM1   
       STA    CTRLPF  
       LDA    RESP0   
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    RESM0   
       LDA    $DA     
       AND    #$03    
       STA    $EF     
       NOP            
       LDA    #$07    
       STA    $F0     
       STA    $F1     
       STA    $F5     
       LDA    #$14    
       STA    $F2     
       STA    $F3     
       LDA    SWCHB   
       LDX    #$07    
       LDY    #$07    
       AND    #$08    
       STA    RESM1   
       STA    WSYNC   
       STA    WSYNC   
       BEQ    LF08B   
       LDX    #$F7    
       LDY    #$03    
LF08B: LDA    $EB     
       STA    $F6     
       STX    $F9     
       STA    WSYNC   
       LDX    #$00    
       STX    VSYNC   
       STX    $F4     
       LDA    #$2B    
       STA    TIM64T  
       LDX    #$03    
LF0A0: LDA    LFF00,Y 
       BIT    $D0     
       BPL    LF0AB   
       EOR    $F6     
       AND    $F9     
LF0AB: STA    COLUP0,X
       DEY            
       DEX            
       BPL    LF0A0   
       LDA    $84     
       JSR    LF000   
       STY    WSYNC   
LF0B8: DEY            
       BPL    LF0B8   
       STA    RESBL   
       STA    HMBL    
       LDX    #$01    
LF0C1: LDA    $82,X   
       JSR    LF000   
       STY    WSYNC   
LF0C8: DEY            
       BPL    LF0C8   
       STA    RESP0,X 
       STA    HMP0,X  
       DEX            
       BPL    LF0C1   
       LDA    $EE     
       AND    #$0F    
       BNE    LF100   
       LDX    $E7     
       BEQ    LF0E2   
       LDA    LFEF0,X 
       STA    AUDC1   
       DEX            
LF0E2: STX    $E7     
       STX    AUDV1   
       BIT    $D0     
       BVS    LF100   
       LDX    $E8     
       STX    AUDV0   
       BEQ    LF100   
       TXA            
       CMP    #$0F    
       BNE    LF0F9   
       LDA    #$08    
       STA    COLUBK  
LF0F9: LDA    LFEE7,X 
       STA    AUDF0   
       DEC    $E8     
LF100: LDA    $85     
       JSR    LF000   
       STY    $87     
       PHA            
       LDA    $86     
       JSR    LF000   
       STY    $88     
       ORA    $88     
       SEC            
       SBC    $87     
       SEC            
       SBC    #$03    
       STA    $88     
       PLA            
       ORA    $87     
       STA    $87     
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$07    
LF124: LDA    LFED7,X 
       BIT    $D0     
       BPL    LF12F   
       EOR    $F6     
       AND    $F9     
LF12F: STA    $D1,X   
       DEX            
       BPL    LF124   
       LDX    #$D4    
       LDY    #$62    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF155   
       LDX    #$07    
LF141: LDA    LFECF,X 
       BIT    $D0     
       BPL    LF14C   
       EOR    $F6     
       AND    $F9     
LF14C: STA    $D1,X   
       DEX            
       BPL    LF141   
       LDY    #$0A    
       LDX    #$04    
LF155: STY    $ED     
       STX    $EC     
       LDA    #$05    
       STA    $F8     
       LDX    #$00    
       BIT    $D0     
       BPL    LF166   
       JMP    LF3BB   
LF166: LDA    $DB     
       BNE    LF16E   
       LDA    #$53    
       STA    $89     
LF16E: CMP    #$3A    
       BCC    LF18E   
       ADC    #$01    
       JSR    LFC52   
       LDY    #$36    
       STY    $82     
       JSR    LFC4A   
       LDA    $D0     
       LSR            
       BCC    LF1A7   
       LDA    $89     
       STA    $8E     
       TYA            
       ADC    #$07    
       STA    $84     
       BNE    LF1A7   
LF18E: SBC    #$0A    
       JSR    LFC59   
       LDY    #$3C    
       STY    $89     
       JSR    LFC42   
       LDA    $D0     
       LSR            
       BCC    LF1A7   
       STY    $8E     
       LDA    $82     
       ADC    #$09    
       STA    $84     
LF1A7: INX            
       LDA    $CF     
       LSR            
       LSR            
       BCC    LF1BF   
       LDA    $D0     
       AND    #$08    
       BEQ    LF1B9   
       JSR    LFD2C   
       BNE    LF208   
LF1B9: JSR    LFCCF   
       JMP    LF208   
LF1BF: LDA    $DC     
       BNE    LF1C9   
       LDA    #$95    
       STA    $83     
       BNE    LF1F2   
LF1C9: CMP    #$21    
       BCS    LF1ED   
       JSR    LFC4A   
       LDA    #$60    
       SEC            
       SBC    $DC     
       JSR    LFC52   
       LDY    #$60    
       STY    $83     
       LDA    $D0     
       AND    #$08    
       BEQ    LF208   
       LDA    $8A     
       STA    $8E     
       TYA            
       ADC    #$06    
       STA    $84     
       BNE    LF208   
LF1ED: ADC    #$40    
       JSR    LFC59   
LF1F2: JSR    LFC42   
       LDY    #$3C    
       STY    $8A     
       LDA    $D0     
       AND    #$08    
       BEQ    LF208   
       LDA    $83     
       ADC    #$08    
       STA    $84     
       INY            
       STY    $8E     
LF208: LDX    #$03    
       LDA    $CF     
       LSR            
       BCC    LF220   
       LDA    $D0     
       AND    #$02    
       BEQ    LF21A   
       JSR    LFD2C   
       BNE    LF277   
LF21A: JSR    LFC6B   
       JMP    LF277   
LF220: AND    #$04    
       BEQ    LF228   
       LDA    $DB     
       BPL    LF22A   
LF228: LDA    $DD     
LF22A: BNE    LF232   
       LDA    #$06    
       STA    $8C     
       BNE    LF249   
LF232: CMP    #$3D    
       BCC    LF25B   
       JSR    LFC4A   
       LDA    $CF     
       AND    #$08    
       BEQ    LF245   
       LDA    #$5B    
       SBC    $DB     
       BPL    LF249   
LF245: LDA    #$5B    
       SBC    $DD     
LF249: JSR    LFC52   
       LDY    #$37    
       STY    $85     
       LDA    $D0     
       AND    #$02    
       BEQ    LF277   
       JSR    LFD36   
       BNE    LF277   
LF25B: SBC    #$07    
       JSR    LFC59   
       JSR    LFC42   
       LDY    #$1F    
       STY    $8C     
       LDA    $D0     
       AND    #$02    
       BEQ    LF277   
       LDA    $85     
       ADC    #$04    
       STA    $84     
       INY            
       INY            
       STY    $8E     
LF277: INX            
       LDA    $CF     
       AND    #$04    
       BEQ    LF28F   
       LDA    $D0     
       AND    #$04    
       BEQ    LF289   
       JSR    LFD2C   
       BNE    LF2E0   
LF289: JSR    LFCA3   
       JMP    LF2E0   
LF28F: LDA    $CF     
       AND    #$1A    
       BEQ    LF299   
       LDA    $DC     
       BPL    LF29B   
LF299: LDA    $DE     
LF29B: BNE    LF2A3   
       LDA    #$93    
       STA    $86     
       BNE    LF2C9   
LF2A3: CMP    #$23    
       BCS    LF2C4   
       SBC    #$03    
       JSR    LFC52   
       JSR    LFC4A   
       LDY    #$5E    
       STY    $86     
       LDA    $D0     
       AND    #$04    
       BEQ    LF2E0   
       LDA    $8D     
       STA    $8E     
       TYA            
       ADC    #$08    
       STA    $84     
       BNE    LF2E0   
LF2C4: ADC    #$3E    
       JSR    LFC59   
LF2C9: JSR    LFC42   
       LDY    #$1F    
       STY    $8D     
       LDA    $D0     
       AND    #$04    
       BEQ    LF2E0   
       LDA    $86     
       ADC    #$0A    
       STA    $84     
       INY            
       INY            
       STY    $8E     
LF2E0: LDA    $D0     
       AND    #$0F    
       BEQ    LF2E9   
       JMP    LF3BB   
LF2E9: LDA    $DF     
       BPL    LF2FB   
       AND    #$7F    
       BEQ    LF2F5   
       DEC    $DF     
       BNE    LF2FB   
LF2F5: STA    $DF     
       LDA    #$2F    
       STA    $8E     
LF2FB: LDX    #$00    
       LDA    $CF     
       AND    #$08    
       BNE    LF31A   
       LDA    $EE     
       CMP    #$70    
       BEQ    LF32B   
       INX            
       CMP    #$B0    
       BEQ    LF32B   
       INX            
       CMP    #$D0    
       BEQ    LF32B   
       INX            
       CMP    #$E0    
       BEQ    LF32B   
       BNE    LF344   
LF31A: LDA    $EE     
       EOR    #$FF    
       AND    #$50    
       BEQ    LF32B   
       INX            
       LDA    $EE     
       EOR    #$FF    
       AND    #$A0    
       BNE    LF344   
LF32B: STX    $F6     
       JSR    LFBE9   
       LDX    $F6     
       LDA    $E0,X   
       CMP    #$1D    
       BNE    LF33C   
       LDY    #$80    
       STY    $D0     
LF33C: CLC            
       ADC    #$06    
       STA    $E0,X   
       JMP    LF3BB   
LF344: LDX    #$00    
       LDA    $EE     
       AND    #$0F    
       BEQ    LF358   
       LDX    $E9     
       BEQ    LF3A7   
       DEC    $E9     
       CMP    #$0F    
       BCC    LF3A7   
       BPL    LF3BB   
LF358: LDA    $E8     
       CMP    #$0E    
       BEQ    LF360   
       STX    COLUBK  
LF360: BIT    CXM0FB  
       BVC    LF398   
       LDA    $8E     
       CMP    #$2F    
       BCC    LF394   
LF36A: LDA    $EE     
       AND    LFF65,X 
       BNE    LF3BB   
       LDA    $EE     
       ORA    LFF57,X 
       STA    $EE     
       LDA    #$FF    
       CPX    #$02    
       BCS    LF382   
       STA    COLUP0,X
       BNE    LF384   
LF382: STA    $EA,X   
LF384: STA    AUDV1   
       STA    AUDF1   
       STA    COLUBK  
       LDA    #$0F    
       STA    $E9     
       LDA    #$08    
       STA    AUDC1   
       BNE    LF3BB   
LF394: LDX    #$02    
       BNE    LF36A   
LF398: BIT    CXM1FB  
       BVC    LF3BB   
       INX            
       LDA    $8E     
       CMP    #$2F    
       BCS    LF36A   
       LDX    #$03    
       BNE    LF36A   
LF3A7: AND    #$03    
       BEQ    LF3AF   
       LDA    #$00    
       BEQ    LF3B1   
LF3AF: LDA    #$FF    
LF3B1: STA    COLUBK  
       STA    AUDV1   
       LDA    $E9     
       BNE    LF3BB   
       DEC    $EE     
LF3BB: LDA    INTIM   
       BNE    LF3BB   
       LDX    $EF     
       STA    $DB,X   
       STA    CXCLR   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       BIT    $D0     
       BVC    LF3E4   
       LDA    $E4     
       CLC            
       ADC    #$06    
       STA    $E4     
       TAX            
       LDA    $E6     
       CLC            
       ADC    #$06    
       STA    $E6     
       LDY    $E5     
       JMP    LFB88   
LF3E4: LDX    $E0     
       LDY    $E1     
LF3E8: STA    WSYNC   
       LDA    LFF1B,X 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       STA    PF2     
       LDA    #$00    
       STA    PF1     
       STA    PF0     
       JSR    LFE13   
       LDA    LFF1B,Y 
       AND    #$0F    
       STA    PF2     
       STA    WSYNC   
       LDA    LFF1B,X 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       STA    PF2     
       JSR    LFE14   
       JSR    LFE15   
       LDA    LFF1B,Y 
       AND    #$0F    
       STA    PF2     
       DEY            
       DEX            
       DEC    $F8     
       BPL    LF3E8   
LF423: STA    WSYNC   
       LDX    #$00    
       LDA    $EE     
       BPL    LF42D   
       STX    COLUP0  
LF42D: ASL            
       BPL    LF432   
       STX    COLUP1  
LF432: ASL            
       BPL    LF437   
       STX    $EC     
LF437: ASL            
       BPL    LF43C   
       STX    $ED     
LF43C: LDX    $F0     
       BNE    LF448   
LF440: LDA    #$00    
       BEQ    LF467   
LF444: LDA    #$00    
       BEQ    LF498   
LF448: LDY    #$58    
       LDA    RESP1   
       STA    CTRLPF  
       LDA    #$02    
       STA    ENAM0   
       STA    ENAM1   
LF454: STA    WSYNC   
       LDA    $9E     
       STA    PF1     
       TYA            
       SEC            
       SBC    $8A     
       TAX            
       AND    #$F8    
       BNE    LF440   
       NOP            
       LDA    LFF78,X 
LF467: STA    GRP1    
       TYA            
       SBC    $8E     
       CMP    #$02    
       LDA    #$02    
       BCC    LF474   
       LDA    #$00    
LF474: STA    ENABL   
       LDA    $A6     
       STA    PF1     
       LDX    $F0     
       LDA    LFF68,X 
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       DEC    $F0     
       LDA    $9E     
       STA    PF1     
       TYA            
       SEC            
       SBC    $89     
       TAX            
       AND    #$F8    
       BNE    LF444   
       NOP            
       LDA    LFF70,X 
LF498: STA    GRP0    
       LDA    $A6     
       STA    PF1     
       LDX    $F0     
       DEY            
       LDA    LFF68,X 
       STA    NUSIZ0  
       STA    NUSIZ1  
       DEC    $F0     
       BPL    LF454   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       LDX    $F1     
LF4B4: STA    WSYNC   
       LDA    $D1,X   
       STA    COLUPF  
       LDA    $8F,X   
       STA    PF0     
       LDA    $97,X   
       STA    PF1     
       TYA            
       SEC            
       SBC    $8A     
       TAX            
       AND    #$F8    
       BNE    LF514   
       NOP            
       LDA    LFF78,X 
LF4CF: STA    GRP1    
       LDX    $F1     
       LDA    $9F,X   
       STA    PF1     
       LDA    $A7,X   
       STA    PF0     
       TYA            
       SBC    $8E     
       CMP    #$02    
       LDA    #$02    
       BCC    LF4E6   
       LDA    #$00    
LF4E6: STA    ENABL   
       LDA    $8F,X   
       STA    PF0     
       LDA    $97,X   
       STA    PF1     
       TYA            
       SEC            
       SBC    $89     
       TAX            
       AND    #$F8    
       BNE    LF518   
       NOP            
       LDA    LFF70,X 
LF4FD: STA    GRP0    
       LDX    $F1     
       LDA    $9F,X   
       STA    PF1     
       LDA    $A7,X   
       STA    PF0     
       LDX    $EF     
       LDA    INPT0,X 
       BMI    LF511   
       STY    $DB,X   
LF511: DEY            
       BPL    LF526   
LF514: LDA    #$00    
       BEQ    LF4CF   
LF518: LDA    #$00    
       BEQ    LF4FD   
LF51C: LDA    #$00    
       BEQ    LF53D   
LF520: LDA    #$00    
       BEQ    LF56D   
LF524: BPL    LF4B4   
LF526: LDX    $F1     
       LDA    $8F,X   
       STA    PF0     
       LDA    $97,X   
       STA    PF1     
       TYA            
       SEC            
       SBC    $8A     
       TAX            
       AND    #$F8    
       BNE    LF51C   
       NOP            
       LDA    LFF78,X 
LF53D: STA    GRP1    
       LDX    $F1     
       LDA    $A7,X   
       STA    PF0     
       LDA    $9F,X   
       STA    PF1     
       TYA            
       SBC    $8E     
       CMP    #$02    
       LDA    #$02    
       BCC    LF554   
       LDA    #$00    
LF554: STA    ENABL   
       STA    WSYNC   
       LDA    $8F,X   
       STA    PF0     
       LDA    $97,X   
       STA    PF1     
       TYA            
       SEC            
       SBC    $89     
       TAX            
       AND    #$F8    
       BNE    LF520   
       NOP            
       LDA    LFF70,X 
LF56D: STA    GRP0    
       DEY            
       LDX    $F1     
       LDA    $A7,X   
       STA    PF0     
       LDA    $9F,X   
       STA    PF1     
       DEX            
       STX    $F1     
       BPL    LF524   
       LDX    $F2     
LF581: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       TYA            
       SEC            
       SBC    $8A     
       TAX            
       AND    #$F8    
       BNE    LF5C3   
       BIT    $EA     
       BVS    LF59B   
       LDA    LFF98,X 
       BNE    LF59E   
LF59B: LDA    LFF80,X 
LF59E: STA    GRP1    
       TYA            
       SEC            
       SBC    $89     
       TAX            
       AND    #$F8    
       BNE    LF5C7   
       BIT    $EA     
       BMI    LF5B2   
       LDA    LFF90,X 
       BNE    LF5B5   
LF5B2: LDA    LFF80,X 
LF5B5: STA    GRP0    
       STA    WSYNC   
       LDX    $EF     
       LDA    INPT0,X 
       BMI    LF5CB   
       STY    $DB,X   
       BPL    LF5CB   
LF5C3: LDA    #$00    
       BEQ    LF59E   
LF5C7: LDA    #$00    
       BEQ    LF5B5   
LF5CB: TYA            
       SEC            
       SBC    $8E     
       CMP    #$02    
       LDA    #$02    
       BCC    LF5D7   
       LDA    #$00    
LF5D7: STA    ENABL   
       DEY            
       DEC    $F2     
       BPL    LF581   
       STA    WSYNC   
       TYA            
       SEC            
       SBC    $8E     
       CMP    #$02    
       LDA    #$02    
       BCC    LF5EC   
       LDA    #$00    
LF5EC: STA    ENABL   
       BIT    $D0     
       BMI    LF5FA   
       LDA    $EC     
       STA    COLUP0  
       LDA    $ED     
       STA    COLUP1  
LF5FA: LDA    $87     
       STA    HMP0    
       AND    #$0F    
       TAX            
       DEY            
       STA    WSYNC   
LF604: DEX            
       BPL    LF604   
       STA    RESP0   
       LDA    $88     
       STA    HMP1    
       AND    #$0F    
       TAX            
LF610: DEX            
       BPL    LF610   
       STA    RESP1   
       LDX    $F3     
       STA    WSYNC   
       STA    HMOVE   
LF61B: SEC            
       TYA            
       SBC    $8C     
       TAX            
       AND    #$F8    
       BNE    LF658   
       LDA    $EA     
       AND    #$02    
       BNE    LF62F   
       LDA    LFFA0,X 
       BNE    LF632   
LF62F: LDA    LFF88,X 
LF632: STA    GRP0    
       SEC            
       TYA            
       SBC    $8D     
       TAX            
       AND    #$F8    
       BNE    LF65C   
       LDA    $EA     
       LSR            
       BCS    LF647   
       LDA    LFFA8,X 
       BNE    LF64A   
LF647: LDA    LFF88,X 
LF64A: STA    GRP1    
       STA    WSYNC   
       LDX    $EF     
       LDA    INPT0,X 
       BMI    LF660   
       STY    $DB,X   
       BPL    LF660   
LF658: LDA    #$00    
       BEQ    LF632   
LF65C: LDA    #$00    
       BEQ    LF64A   
LF660: TYA            
       SEC            
       SBC    $8E     
       CMP    #$02    
       LDA    #$02    
       BCC    LF66C   
       LDA    #$00    
LF66C: STA    ENABL   
       DEY            
       DEC    $F3     
       BPL    LF61B   
       LDX    $F4     
       STA    HMCLR   
LF677: STA    WSYNC   
       LDA    $D1,X   
       STA    COLUPF  
       LDA    $AF,X   
       STA    PF0     
       LDA    $B7,X   
       STA    PF1     
       TYA            
       SEC            
       SBC    $8D     
       TAX            
       AND    #$F8    
       BNE    LF6D7   
       NOP            
       LDA    LFF78,X 
LF692: STA    GRP1    
       LDX    $F4     
       LDA    $BF,X   
       STA    PF1     
       LDA    $C7,X   
       STA    PF0     
       TYA            
       SBC    $8E     
       CMP    #$02    
       LDA    #$02    
       BCC    LF6A9   
       LDA    #$00    
LF6A9: STA    ENABL   
       LDA    $AF,X   
       STA    PF0     
       LDA    $B7,X   
       STA    PF1     
       TYA            
       SEC            
       SBC    $8C     
       TAX            
       AND    #$F8    
       BNE    LF6DB   
       NOP            
       LDA    LFF70,X 
LF6C0: STA    GRP0    
       LDX    $F4     
       LDA    $BF,X   
       STA    PF1     
       LDA    $C7,X   
       STA    PF0     
       LDX    $EF     
       LDA    INPT0,X 
       BMI    LF6D4   
       STY    $DB,X   
LF6D4: DEY            
       BPL    LF6E9   
LF6D7: LDA    #$00    
       BEQ    LF692   
LF6DB: LDA    #$00    
       BEQ    LF6C0   
LF6DF: LDA    #$00    
       BEQ    LF700   
LF6E3: LDA    #$00    
       BEQ    LF730   
LF6E7: BNE    LF677   
LF6E9: LDX    $F4     
       LDA    $AF,X   
       STA    PF0     
       LDA    $B7,X   
       STA    PF1     
       SEC            
       TYA            
       SBC    $8D     
       TAX            
       AND    #$F8    
       BNE    LF6DF   
       NOP            
       LDA    LFF78,X 
LF700: STA    GRP1    
       LDX    $F4     
       LDA    $BF,X   
       STA    PF1     
       LDA    $C7,X   
       STA    PF0     
       TYA            
       SBC    $8E     
       CMP    #$02    
       LDA    #$02    
       BCC    LF717   
       LDA    #$00    
LF717: STA    ENABL   
       STA    WSYNC   
       LDA    $AF,X   
       STA    PF0     
       LDA    $B7,X   
       STA    PF1     
       TYA            
       SEC            
       SBC    $8C     
       TAX            
       AND    #$F8    
       BNE    LF6E3   
       NOP            
       LDA    LFF70,X 
LF730: STA    GRP0    
       LDX    $F4     
       DEY            
       LDA    $C7,X   
       STA    PF0     
       LDA    $BF,X   
       STA    PF1     
       INX            
       STX    $F4     
       CPX    #$08    
       BNE    LF6E7   
       LDX    $F5     
LF746: STA    WSYNC   
       LDA    #$02    
       STA    ENAM0   
       STA    ENAM1   
       LDA    $BE     
       STA    PF1     
       TYA            
       SEC            
       SBC    $8D     
       TAX            
       AND    #$F8    
       BNE    LF7A8   
       NOP            
       LDA    LFF78,X 
LF75F: STA    GRP1    
       LDA    $C6     
       STA    PF1     
       TYA            
       SBC    $8E     
       CMP    #$02    
       LDA    #$02    
       BCC    LF770   
       LDA    #$00    
LF770: STA    ENABL   
       LDX    $F5     
       LDA    LFF68,X 
       STA    WSYNC   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $BE     
       STA    PF1     
       TYA            
       SEC            
       SBC    $8C     
       TAX            
       AND    #$F8    
       BNE    LF7AC   
       NOP            
       LDA    LFF70,X 
LF78E: STA    GRP0    
       LDA    $C6     
       STA    PF1     
       LDX    $F5     
       DEX            
       DEY            
       LDA    LFF68,X 
       STA    NUSIZ0  
       STA    NUSIZ1  
       DEX            
       STX    $F5     
       BPL    LF746   
       STA    WSYNC   
       BMI    LF7B0   
LF7A8: LDA    #$00    
       BEQ    LF75F   
LF7AC: LDA    #$00    
       BEQ    LF78E   
LF7B0: INX            
       STX    ENAM0   
       STX    ENAM1   
       STX    ENABL   
       STX    PF0     
       STX    PF1     
       STX    GRP0    
       STX    GRP1    
       LDA    #$05    
       STA    $F8     
       BIT    $D0     
       BMI    LF7DA   
       LDX    #$04    
       LDY    #$0A    
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF7D6   
       LDX    #$D4    
       LDY    #$62    
LF7D6: STX    COLUP0  
       STY    COLUP1  
LF7DA: LDA    #$13    
       STA    CTRLPF  
       LDX    $E2     
       LDY    $E3     
LF7E2: STA    WSYNC   
       LDA    LFF1B,X 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       STA    PF2     
       LDA    #$00    
       STA    PF1     
       STA    PF0     
       JSR    LFE13   
       LDA    LFF1B,Y 
       AND    #$0F    
       STA    PF2     
       STA    WSYNC   
       LDA    LFF1B,X 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       STA    PF2     
       JSR    LFE14   
       JSR    LFE15   
       LDA    LFF1B,Y 
       AND    #$0F    
       STA    PF2     
       DEX            
       DEY            
       DEC    $F8     
       BPL    LF7E2   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$24    
       STA    TIM64T  
       BIT    $D0     
       BVC    LF837   
       LDA    $E8     
       BEQ    LF837   
       DEC    $E8     
       BEQ    LF837   
       JMP    LF891   
LF837: LDA    SWCHB   
       AND    #$02    
       BNE    LF879   
       INC    $D9     
       JSR    LFBE9   
       LDA    #$C0    
       STA    $D0     
       LDA    #$1E    
       STA    $E8     
       LDA    $E5     
       CMP    #$17    
       BNE    LF864   
       LDA    $E4     
       CMP    #$0B    
       BNE    LF872   
       LDA    #$05    
       STA    $E5     
       LDX    #$FF    
       STX    $E4     
       INX            
       STX    $D9     
       BNE    LF879   
LF864: CMP    #$3B    
       BNE    LF872   
       LDA    $E4     
       ADC    #$05    
       STA    $E4     
       LDA    #$05    
       BNE    LF877   
LF872: LDA    $E5     
       CLC            
       ADC    #$06    
LF877: STA    $E5     
LF879: LDX    $D9     
       LDA    LFFD5,X 
       STA    $CF     
       LDA    LFFB0,X 
       STA    $E6     
       LDA    SWCHB   
       LSR            
       BCS    LF891   
       JSR    LFBE9   
       JSR    LFC60   
LF891: LDA    $EE     
       AND    #$0F    
       BEQ    LF89A   
       JMP    LFB76   
LF89A: BIT    $D0     
       BPL    LF8A1   
       JMP    LFB76   
LF8A1: BIT    $DF     
       BPL    LF8A8   
       JMP    LFB76   
LF8A8: BIT    CXP0FB  
       BVS    LF8AF   
       JMP    LF981   
LF8AF: JSR    LFC24   
       LDY    #$01    
       LDX    #$00    
       LDA    $8E     
       CMP    #$2F    
       BCS    LF8BF   
       JMP    LF939   
LF8BF: LDA    $EE     
       BPL    LF8C6   
       JMP    LFABF   
LF8C6: BIT    $CF     
       BMI    LF8D8   
       LDA    SWCHA   
       BMI    LF8D8   
LF8CF: STY    $D0     
       LDA    #$40    
       STA    $EB     
       JMP    LFB76   
LF8D8: BIT    $EA     
       BMI    LF904   
LF8DC: JSR    LFEC8   
       JSR    LFC2B   
       BEQ    LF8F7   
       LDA    $89,X   
       CMP    #$46    
       BCS    LF8EE   
       CMP    #$15    
       BCS    LF8F2   
LF8EE: LDA    #$10    
       STA    $D0     
LF8F2: LDA    LFF07,X 
       STA    $8B     
LF8F7: LDA    $8E     
       SEC            
       SBC    $89,X   
       BEQ    LF920   
       CMP    #$07    
       BCC    LF923   
       BCS    LF920   
LF904: JSR    LFC2B   
       BEQ    LF912   
       LDA    #$20    
       STA    $D0     
       LDA    LFF07,X 
       STA    $8B     
LF912: LDA    $84     
       SEC            
       SBC    $82,X   
       BEQ    LF91D   
       CMP    #$0B    
       BCC    LF920   
LF91D: JSR    LFEC8   
LF920: JSR    LFEC1   
LF923: LDA    $EB     
       ORA    #$80    
       STA    $EB     
       LDX    #$0F    
       STX    AUDF1   
       STX    $E7     
       LDA    LFEF0,X 
       STA    AUDC1   
       STX    AUDV1   
       JMP    LFABF   
LF939: LDA    $EE     
       AND    #$20    
       BEQ    LF942   
       JMP    LFABF   
LF942: INY            
       LDX    #$03    
       LDA    $CF     
       BMI    LF95C   
       LSR            
       BCC    LF96B   
       LDA    $D0     
       BEQ    LF953   
       JMP    LF8CF   
LF953: LDA    $DA     
       AND    #$04    
       BEQ    LF962   
       JMP    LF8CF   
LF95C: LSR            
       BCC    LF962   
       JSR    LFBCD   
LF962: LDA    $EA     
       AND    #$02    
       BNE    LF904   
       JMP    LF8DC   
LF96B: AND    #$04    
       BEQ    LF977   
       LDA    SWCHA   
       BMI    LF962   
       JMP    LF8CF   
LF977: LDA    SWCHA   
       AND    #$08    
       BNE    LF962   
       JMP    LF8CF   
LF981: BIT    CXP1FB  
       BVS    LF988   
       JMP    LFA1B   
LF988: JSR    LFC24   
       LDY    #$04    
       LDX    #$04    
       LDA    $8E     
       CMP    #$2F    
       BCS    LF9E0   
       LDA    $EE     
       AND    #$10    
       BEQ    LF99E   
       JMP    LFABF   
LF99E: LDA    $CF     
       AND    #$04    
       BEQ    LF9B8   
       LDA    $CF     
       BMI    LF9D2   
       LDA    $D0     
       BEQ    LF9AF   
       JMP    LF8CF   
LF9AF: LDA    $DA     
       AND    #$04    
       BEQ    LF9D2   
       JMP    LF8CF   
LF9B8: LDA    $CF     
       BMI    LF9D5   
       AND    #$1A    
       BEQ    LF9C8   
       BIT    SWCHA   
       BVS    LF9D5   
       JMP    LF8CF   
LF9C8: LDA    SWCHA   
       AND    #$04    
       BNE    LF9D5   
       JMP    LF8CF   
LF9D2: JSR    LFBCD   
LF9D5: LDA    $EA     
       ROR            
       BCC    LF9DD   
       JMP    LF904   
LF9DD: JMP    LF8DC   
LF9E0: BIT    $EE     
       BVC    LF9E7   
       JMP    LFABF   
LF9E7: LDY    #$08    
       LDX    #$01    
       LDA    $CF     
       BMI    LFA11   
       AND    #$02    
       BEQ    LFA03   
       LDA    $D0     
       BEQ    LF9FA   
       JMP    LF8CF   
LF9FA: LDA    $DA     
       AND    #$04    
       BEQ    LFA11   
       JMP    LF8CF   
LFA03: LDA    $CF     
       AND    #$12    
       BNE    LFA11   
       BIT    SWCHA   
       BVS    LFA11   
       JMP    LF8CF   
LFA11: BIT    $EA     
       BVC    LFA18   
       JMP    LF904   
LFA18: JMP    LF8DC   
LFA1B: LDA    $8B     
       AND    #$0F    
       BEQ    LFA26   
       DEC    $8B     
       JMP    LFABF   
LFA26: BIT    CXBLPF  
       BMI    LFA2D   
       JMP    LFABF   
LFA2D: JSR    LFC24   
       LDX    $EB     
       LDA    LFFCD,X 
       ORA    $8B     
       STA    $8B     
       LDX    #$03    
       LDA    $8E     
       CMP    #$4E    
       BCS    LFA45   
       CMP    #$0F    
       BCS    LFA4D   
LFA45: LDA    $8B     
       ORA    #$20    
       STA    $8B     
       BNE    LFA66   
LFA4D: LDA    $8E     
       CMP    #$2F    
       BCC    LFA58   
       SBC    LFEDF,X 
       BPL    LFA5C   
LFA58: SEC            
       SBC    LFEE3,X 
LFA5C: AND    #$FC    
       BEQ    LFA66   
       DEX            
       BPL    LFA4D   
       JMP    LFAA0   
LFA66: STX    $F6     
       LDY    #$03    
       STY    $DF     
       LDX    #$05    
       LDY    #$01    
       LDA    $84     
       CMP    #$4F    
       BCS    LFA8E   
       LDA    $84     
       SBC    #$30    
       AND    #$F8    
       BNE    LFA83   
       JSR    LFE97   
       BEQ    LFAA0   
LFA83: LDA    LFFEC,X 
       JSR    LFE90   
       BEQ    LFAA0   
       DEX            
       BPL    LFA83   
LFA8E: INY            
LFA8F: LDA    LFFF2,X 
       JSR    LFE90   
       BEQ    LFAA0   
       CPY    #$01    
       BNE    LFA9D   
       LDY    #$03    
LFA9D: DEX            
       BPL    LFA8F   
LFAA0: LDA    $E8     
       BNE    LFAAD   
       LDA    $8B     
       AND    #$F0    
       STA    $8B     
       JMP    LFABF   
LFAAD: JSR    LFEC1   
       LDA    $8B     
       AND    #$20    
       BEQ    LFABF   
       LDA    $8B     
       AND    #$CF    
       STA    $8B     
       JSR    LFEC8   
LFABF: LDA    $EB     
       AND    #$40    
       BEQ    LFAC8   
       JMP    LFB76   
LFAC8: LDA    $D0     
       AND    #$10    
       BNE    LFB21   
       BIT    $8B     
       BMI    LFB0B   
       LDA    #$5D    
       SEC            
       SBC    $8E     
       AND    #$F8    
       BEQ    LFAF9   
       LDA    $EB     
       BEQ    LFB02   
       BPL    LFAEC   
       LDX    #$05    
       LDA    $CF     
       AND    #$08    
       BEQ    LFAEB   
       LDX    #$03    
LFAEB: TXA            
LFAEC: CLC            
LFAED: ADC    $8E     
       STA    $8E     
       AND    #$FC    
       BNE    LFB21   
       LDA    #$06    
       STA    $8E     
LFAF9: JSR    LFC24   
       JSR    LFEC1   
       JMP    LFB21   
LFB02: LDA    $DA     
       LSR            
       BCC    LFB21   
       LDA    #$01    
       BNE    LFAEC   
LFB0B: LDA    $EB     
       BEQ    LFB18   
       BPL    LFB13   
       LDA    #$05    
LFB13: SEC            
       EOR    #$FF    
       BNE    LFAED   
LFB18: LDA    $DA     
       LSR            
       BCC    LFB21   
       LDA    #$FF    
       BNE    LFAEC   
LFB21: LDA    $D0     
       AND    #$20    
       BNE    LFB76   
       BIT    $8B     
       BVS    LFB5C   
       LDA    $84     
       CMP    #$9D    
       BCS    LFB4A   
       LDA    $EB     
       BEQ    LFB53   
       BPL    LFB3D   
       AND    #$7F    
       STA    $EB     
       LDA    #$05    
LFB3D: CLC            
       ADC    $84     
       STA    $84     
       CMP    #$05    
       BCS    LFB76   
       LDA    #$05    
       STA    $84     
LFB4A: JSR    LFC24   
       JSR    LFEC8   
       JMP    LFB76   
LFB53: LDA    $DA     
       LSR            
       BCS    LFB76   
       LDA    #$01    
       BNE    LFB3D   
LFB5C: LDA    $EB     
       BPL    LFB66   
       AND    #$7F    
       STA    $EB     
       LDA    #$05    
LFB66: CLC            
       EOR    #$FF    
       ADC    #$01    
       BNE    LFB3D   
       LDA    $DA     
       LSR            
       BCS    LFB76   
       LDA    #$FF    
       BNE    LFB3D   
LFB76: INC    $DA     
       BNE    LFB80   
       BIT    $D0     
       BPL    LFB80   
       INC    $EB     
LFB80: LDX    INTIM   
       BNE    LFB80   
       JMP    LF047   
LFB88: STA    WSYNC   
       LDA    LFF1B,X 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F6     
       LDX    $E6     
       LDA    LFF1B,Y 
       AND    #$F0    
       ORA    $F6     
       STA    PF2     
       STA    $F6     
       NOP            
       NOP            
       LDA    LFF1B,X 
       AND    #$0F    
       STA    PF2     
       STA    WSYNC   
       DEC    $E4     
       DEY            
       LDA    $F6     
       STA    PF2     
       JSR    LFE66   
       JSR    LFE66   
       LDA    LFF1B,X 
       AND    #$0F    
       DEX            
       STA    PF2     
       STX    $E6     
       LDX    $E4     
       DEC    $F8     
       BPL    LFB88   
       JMP    LF423   
LFBCD: INC    $F7     
       LDA    $F7     
       CMP    #$06    
       BNE    LFBE8   
       STX    $F7     
       LDA    $8E     
       ADC    #$09    
       STA    $8E     
       LDA    $DA     
       LSR            
       BCS    LFBE5   
       JSR    LFEC1   
LFBE5: JSR    LFEC8   
LFBE8: RTS            

LFBE9: LDX    #$07    
LFBEB: LDA    LFF14,X 
       STA    $8F,X   
       STA    $A7,X   
       STA    $AF,X   
       STA    $C7,X   
       LDA    LFF0C,X 
       STA    $97,X   
       STA    $9F,X   
       STA    $B7,X   
       STA    $BF,X   
       DEX            
       BPL    LFBEB   
       LDA    #$4F    
       STA    $84     
       LDA    #$EF    
       STA    $8E     
       STA    $DF     
       INX            
       STX    $EE     
       STX    $E8     
       STX    $D0     
       STX    COLUBK  
       STX    AUDV0   
       STX    AUDV1   
       STX    $EB     
       LDA    #$C0    
       AND    $8B     
       STA    $8B     
       RTS            

LFC24: LDA    $D0     
       AND    #$0F    
       STA    $D0     
       RTS            

LFC2B: LDA    $EB     
       AND    #$40    
       BEQ    LFC41   
       LDA    #$00    
       STA    $D0     
       BIT    $CF     
       BVC    LFC3D   
       LDA    #$02    
       BNE    LFC3F   
LFC3D: LDA    #$03    
LFC3F: STA    $EB     
LFC41: RTS            

LFC42: LDA    $EA     
       ORA    LFF5B,X 
       STA    $EA     
       RTS            

LFC4A: LDA    $EA     
       AND    LFF60,X 
       STA    $EA     
       RTS            

LFC52: CLC            
       ADC    $89,X   
       ROR            
       STA    $89,X   
       RTS            

LFC59: CLC            
       ADC    $82,X   
       ROR            
       STA    $82,X   
       RTS            

LFC60: LDA    #$05    
       STA    $E0     
       STA    $E1     
       STA    $E2     
       STA    $E3     
       RTS            

LFC6B: LDA    $DA     
       LSR            
       BCC    LFC82   
       JSR    LFC4A   
       LDA    $85     
       CMP    #$34    
       BCC    LFC83   
       LDA    $8E     
       CMP    #$1E    
       BCS    LFC83   
       JSR    LFD02   
LFC82: RTS            

LFC83: JSR    LFC42   
       LDA    $84     
       SEC            
       SBC    #$03    
       LDY    #$1F    
       STY    $8C     
       CMP    $85     
       BCC    LFCA0   
       INC    $85     
       LDA    $85     
       CMP    #$34    
       BCC    LFCA2   
       LDA    #$34    
       STA    $85     
       RTS            

LFCA0: DEC    $85     
LFCA2: RTS            

LFCA3: LDA    $DA     
       LSR            
       BCC    LFCBA   
       JSR    LFC4A   
       LDA    $86     
       CMP    #$60    
       BCS    LFCBB   
       LDA    $8E     
       CMP    #$1E    
       BCS    LFCBB   
       JSR    LFD02   
LFCBA: RTS            

LFCBB: JSR    LFC42   
       LDA    $84     
       SEC            
       SBC    #$0A    
       JSR    LFD1B   
       CMP    #$5F    
       BCS    LFCBA   
       LDA    #$5F    
       STA    $86     
       RTS            

LFCCF: LDA    $CF     
       AND    #$C0    
       BEQ    LFCDB   
       LDA    $DA     
       AND    #$03    
       BNE    LFCED   
LFCDB: JSR    LFC4A   
       LDA    $83     
       CMP    #$62    
       BCS    LFCEE   
       LDA    $8E     
       CMP    #$3D    
       BCC    LFCEE   
       JSR    LFD02   
LFCED: RTS            

LFCEE: JSR    LFC42   
       LDA    $84     
       SEC            
       SBC    #$06    
       JSR    LFD1B   
       CMP    #$61    
       BCS    LFCED   
       LDA    #$61    
       STA    $83     
       RTS            

LFD02: LDY    LFFC8,X 
       STY    $82,X   
       CMP    $89,X   
       BCC    LFD18   
       INC    $89,X   
       LDA    $89,X   
       CMP    #$54    
       BCC    LFD17   
       LDA    #$54    
       STA    $89,X   
LFD17: RTS            

LFD18: DEC    $89,X   
       RTS            

LFD1B: LDY    LFFD0,X 
       STY    $89,X   
       CMP    $82,X   
       BCC    LFD27   
       INC    $82,X   
       RTS            

LFD27: DEC    $82,X   
       LDA    $82,X   
       RTS            

LFD2C: LDA    $DA     
       AND    #$1F    
       BNE    LFD36   
       JSR    LFC2B   
       RTS            

LFD36: LDA    $89,X   
       STA    $8E     
       LDA    $82,X   
       ADC    #$06    
       STA    $84     
       RTS            

LFD41: JSR    LFE16   
       LDA    $8F,X   
       AND    $DF     
       BNE    LFDC6   
       DEX            
       DEX            
       DEC    $EB     
       BMI    LFD6D   
       LDA    $84     
       CMP    #$4F    
       BCC    LFD60   
       BIT    $8B     
       BVC    LFD67   
       JSR    LFE67   
       JMP    LFD67   
LFD60: BIT    $8B     
       BVS    LFD67   
       JSR    LFE3E   
LFD67: LDA    $8F,X   
       AND    $DF     
       BNE    LFDC6   
LFD6D: INC    $EB     
       INX            
       INX            
       LDA    $84     
       CMP    #$4F    
       BCC    LFD81   
       BIT    $8B     
       BVS    LFD88   
       JSR    LFE67   
       JMP    LFD88   
LFD81: BIT    $8B     
       BVC    LFD88   
       JSR    LFE3E   
LFD88: LDA    $8F,X   
       AND    $DF     
       BNE    LFDC6   
       LDA    $EB     
       BEQ    LFDA6   
       DEC    $EB     
       DEX            
       DEX            
       LDA    $84     
       CMP    #$4F    
       BCC    LFDB8   
       BIT    $8B     
       BVC    LFDBF   
       JSR    LFE3E   
       JMP    LFDBF   
LFDA6: LDA    $8E     
       CMP    #$4F    
       BCC    LFDB2   
       JSR    LFE67   
       JMP    LFDBF   
LFDB2: JSR    LFE3E   
       JMP    LFDBF   
LFDB8: BIT    $8B     
       BVS    LFDBF   
       JSR    LFE67   
LFDBF: LDA    $8F,X   
       AND    $DF     
       BNE    LFDC6   
       RTS            

LFDC6: JSR    LFDE3   
       LDA    $DF     
       EOR    #$FF    
       AND    $8F,X   
       STA    $8F,X   
       STA    $90,X   
       LDX    #$0F    
       LDA    LFEE7,X 
       STA    AUDF0   
       STX    $E8     
       STX    AUDV0   
       LDX    #$08    
       STX    AUDC0   
       RTS            

LFDE3: LDA    $84     
       CMP    #$11    
       BCS    LFDF5   
       LDA    $97,X   
       BNE    LFE13   
       CMP    #$90    
       BCC    LFDF5   
       LDA    $87,X   
       BNE    LFE13   
LFDF5: LDA    $DF     
       BEQ    LFE13   
LFDF9: LSR            
       LSR            
       INC    $E9     
       BCC    LFDF9   
       LDA    $8F,X   
LFE01: LSR            
       LSR            
       DEC    $E9     
       BMI    LFE13   
       BCC    LFE01   
       LDA    $E9     
       BNE    LFE13   
       LDA    $8B     
       ORA    #$20    
       STA    $8B     
LFE13: NOP            
LFE14: NOP            
LFE15: RTS            

LFE16: LDX    $F6     
       STX    $EB     
       LDA    $CF     
       AND    #$20    
       BEQ    LFE24   
       LDA    #$00    
       STA    $EB     
LFE24: TXA            
       ASL            
       TAX            
       TYA            
       BEQ    LFE32   
       TXA            
LFE2B: CLC            
       ADC    #$08    
       DEY            
       BNE    LFE2B   
       TAX            
LFE32: LDA    $8E     
       CMP    #$2F    
       BCC    LFE39   
       RTS            

LFE39: TXA            
       ADC    #$20    
       TAX            
       RTS            

LFE3E: LDA    $84     
       CMP    #$4F    
       BCS    LFE48   
       CMP    #$13    
       BCS    LFE5C   
LFE48: CMP    #$91    
       BCS    LFE5C   
       LDA    $DF     
       CMP    #$C0    
       BEQ    LFE57   
       ASL    $DF     
       ASL    $DF     
       RTS            

LFE57: TXA            
       ADC    #$09    
       TAX            
       RTS            

LFE5C: LDA    $DF     
       CMP    #$03    
       BEQ    LFE66   
       LSR    $DF     
       LSR    $DF     
LFE66: RTS            

LFE67: LDA    $84     
       CMP    #$4F    
       BCS    LFE71   
       CMP    #$13    
       BCS    LFE80   
LFE71: CMP    #$91    
       BCS    LFE80   
       LDA    $DF     
       CMP    #$03    
       BEQ    LFE66   
       LSR    $DF     
       LSR    $DF     
       RTS            

LFE80: LDA    $DF     
       CMP    #$C0    
       BEQ    LFE8B   
       ASL    $DF     
       ASL    $DF     
       RTS            

LFE8B: TXA            
       SBC    #$08    
       TAX            
       RTS            

LFE90: SEC            
       SBC    $84     
       AND    #$F8    
       BNE    LFEB5   
LFE97: JSR    LFD41   
       LDA    $EB     
       BEQ    LFEA6   
       CMP    #$03    
       BCC    LFEAC   
       LDA    #$02    
       BNE    LFEAC   
LFEA6: BIT    $CF     
       BVS    LFEAC   
       LDA    #$01    
LFEAC: STA    $EB     
       LDA    #$00    
       STA    $E9     
       STA    $DF     
       RTS            

LFEB5: LDA    $DF     
       ASL            
       ASL            
       BNE    LFEBE   
       DEY            
       LDA    #$30    
LFEBE: STA    $DF     
       RTS            

LFEC1: LDA    $8B     
       EOR    #$80    
       STA    $8B     
       RTS            

LFEC8: LDA    $8B     
       EOR    #$40    
       STA    $8B     
       RTS            

LFECF: .byte $09,$09,$07,$07,$05,$05,$03,$03
LFED7: .byte $47,$47,$45,$45,$43,$43,$41,$41
LFEDF: .byte $43,$47,$4B,$4F
LFEE3: .byte $17,$13,$0F,$0B
LFEE7: .byte $0A,$08,$03,$03,$03,$0F,$0F,$04,$0B
LFEF0: .byte $08,$08,$0C,$0C,$0C,$03,$0C,$0C,$03,$08,$0C,$0C,$08,$02,$03,$0B
LFF00: .byte $28,$A4,$41,$00,$06,$04,$03
LFF07: .byte $00,$40,$00,$80,$C0
LFF0C: .byte $FF,$FF,$FF,$FF,$FF,$FF,$1F,$1F
LFF14: .byte $F0,$F0,$F0,$F0,$F0,$F0,$00
LFF1B: .byte $00,$7E,$5A,$5A,$5A,$7E,$00,$7E,$24,$24,$3C,$24,$00,$7E,$18,$7E
       .byte $42,$7E,$00,$7E,$42,$66,$42,$7E,$00,$42,$42,$7E,$5A,$5A,$00,$7E
       .byte $42,$7E,$18,$7E,$00,$7E,$5A,$7E,$18,$7E,$00,$18,$18,$24,$42,$7E
       .byte $00,$7E,$5A,$7E,$5A,$7E,$00,$7E,$42,$7E,$5A,$7E
LFF57: .byte $8F,$4F,$2F,$1F
LFF5B: .byte $80,$40,$00,$02,$01
LFF60: .byte $7F,$BF,$00,$FD,$FE
LFF65: .byte $80,$40,$20
LFF68: .byte $10,$30,$30,$20,$10,$10,$20,$20
LFF70: .byte $3C,$1F,$1F,$1F,$3C,$00,$00,$00
LFF78: .byte $7C,$F8,$F8,$F8,$7C,$00,$00,$00
LFF80: .byte $7E,$FF,$FF,$C3,$00,$00,$00,$00
LFF88: .byte $C3,$FF,$FF,$7E,$00,$00,$00,$00
LFF90: .byte $30,$F8,$FC,$3E,$1E,$0C,$00,$00
LFF98: .byte $0C,$1F,$3F,$7E,$7C,$30,$00,$00
LFFA0: .byte $0C,$1E,$3E,$FC,$F8,$30,$00,$00
LFFA8: .byte $30,$7C,$7E,$3F,$1F,$0C,$00,$00
LFFB0: .byte $17,$11,$0B,$05,$0B,$17,$11,$0B,$05,$0B,$17,$11,$0B,$05,$0B,$17
       .byte $11,$0B,$05,$0B,$17,$11,$0B,$1E
LFFC8: .byte $3D,$60,$00,$38,$5F
LFFCD: .byte $0C,$07,$04
LFFD0: .byte $01,$3C,$00,$00,$1F
LFFD5: .byte $00,$01,$03,$07,$08,$40,$41,$43,$47,$48,$80,$81,$83,$87,$88,$C0
       .byte $C1,$C3,$C7,$C8,$E0,$E1,$E3
LFFEC: .byte $13,$0B,$1B,$23,$2B,$33
LFFF2: .byte $9A,$A2,$92,$8A,$82,$7A,$00,$00,$00,$00,$26,$F0,$00,$00
