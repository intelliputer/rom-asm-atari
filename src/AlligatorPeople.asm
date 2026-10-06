; Disassembly of roms/AlligatorPeople.bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/AlligatorPeople.bin
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
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP0FB  =  $32
CXP1FB  =  $33
CXM0FB  =  $34
CXBLPF  =  $36
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDX    #$00    
       LDA    #$00    
LF009: DEX            
       STA    VSYNC,X 
       BNE    LF009   
       LDA    #$07    
       STA    $80     
       JSR    LFBC2   
       LDA    $B7     
       ORA    #$40    
       STA    $B7     
LF01B: LDA    #$02    
       STA    VBLANK  
       STA    WSYNC   
       STA    VSYNC   
       LDA    $B5     
       ASL            
       EOR    $B5     
       ASL            
       EOR    $B5     
       ASL            
       ASL            
       EOR    $B5     
       ASL            
       ROL    $B5     
       LDA    $B5     
       LDA    SWCHB   
       AND    #$80    
       BEQ    LF03F   
       LDA    #$15    
       BNE    LF041   
LF03F: LDA    #$11    
LF041: STA    CTRLPF  
       STA    WSYNC   
       LDY    #$00    
       STY    $88     
       DEY            
       SEC            
       INC    $8C     
       BNE    LF055   
       INC    $8D     
       BNE    LF055   
       ROR    $8D     
LF055: TYA            
       EOR    SWCHB   
       AND    #$08    
       ASL            
       SBC    #$00    
       LDY    $8D     
       BPL    LF066   
       STY    $88     
       AND    #$F7    
LF066: STA    $89     
       ASL    $88     
       LDX    #$00    
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF075   
       STX    $8D     
LF075: STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$00    
       EOR    $88     
       AND    $89     
       STA    COLUBK  
       LDX    #$01    
LF085: LDA    LFF84,X 
       EOR    $88     
       AND    $89     
       STA    $BB,X   
       DEX            
       BPL    LF085   
       LDA    #$B8    
       EOR    $88     
       AND    $89     
       STA    COLUPF  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2A    
       STA    TIM64T  
       LDA    $B6     
       AND    #$02    
       BEQ    LF0C6   
       LDA    #$5D    
       STA    $E5     
       LDA    #$40    
       STA    $E7     
       LDA    #$4C    
       STA    $E9     
       LDA    #$46    
       STA    $EB     
       LDA    #$52    
       STA    $ED     
       LDX    $9A     
       LDA    LFDC9,X 
       STA    $EF     
       JMP    LF196   
LF0C6: DEC    $B1     
       CLC            
       SED            
       LDA    $85     
       ADC    $9A     
       STA    $85     
       LDA    $84     
       ADC    $99     
       STA    $84     
       LDA    $83     
       ADC    $98     
       STA    $83     
       CLD            
       LDX    #$0A    
LF0DF: TXA            
       CLC            
       ROR            
       ROR            
       TAY            
       BCS    LF0F3   
       LDA.wy $0083,Y 
       AND    #$F0    
       CLC            
       ROR            
       ROR            
       ROR            
       ROR            
       JMP    LF0F8   
LF0F3: LDA.wy $0083,Y 
       AND    #$0F    
LF0F8: TAY            
       LDA    LFDC9,Y 
       STA    $E5,X   
       DEX            
       DEX            
       BPL    LF0DF   
       LDA    #$00    
       STA    $98     
       STA    $99     
       STA    $9A     
       LDX    #$00    
       LDY    #$57    
LF10E: LDA    $E5,X   
       CMP    #$26    
       BNE    LF11C   
       STY    $E5,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF10E   
LF11C: LDA    #$00    
       STA    AUDC0   
       STA    AUDC1   
       LDA    #$03    
       STA    AUDV0   
       LDA    $94     
       BEQ    LF132   
       STA    AUDF0   
       LDA    #$01    
       STA    AUDC0   
       DEC    $94     
LF132: LDA    $92     
       BEQ    LF13E   
       STA    AUDF0   
       LDA    #$08    
       STA    AUDC0   
       DEC    $92     
LF13E: LDA    $8F     
       BEQ    LF14A   
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       DEC    $8F     
LF14A: LDA    $93     
       BEQ    LF156   
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       DEC    $93     
LF156: LDA    $8E     
       BEQ    LF184   
       DEC    $8E     
       LDA    $B6     
       BMI    LF16E   
       LDA    $8E     
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDF1   
       BNE    LF184   
LF16E: LDX    #$00    
       LDA    $8E     
       CMP    #$1F    
       BCC    LF178   
       LDX    #$08    
LF178: STX    AUDC1   
       LDA    #$04    
       STA    AUDV1   
       LDA    $B5     
       AND    #$1F    
       STA    AUDF1   
LF184: LDA    $95     
       BEQ    LF196   
       EOR    #$0F    
       STA    AUDF1   
       LDA    #$03    
       STA    AUDC1   
       LDA    #$03    
       STA    AUDV1   
       DEC    $95     
LF196: LDX    #$01    
LF198: LDA    $B8,X   
       JSR    LFBA2   
       STA    $8A,X   
       DEX            
       BPL    LF198   
       STA    HMCLR   
       LDX    #$04    
       LDA    $8B     
       STA    $9C     
       STA    WSYNC   
       NOP            
       AND    #$0F    
       TAY            
       LDA    $9C     
       AND    #$F0    
       STA    HMP0,X  
LF1B6: DEY            
       BPL    LF1B6   
       STA    RESP0,X 
       STA    WSYNC   
       LDX    #$02    
       LDY    $96     
       INY            
       INY            
       NOP            
       NOP            
       NOP            
LF1C6: DEY            
       BPL    LF1C6   
       STA    RESP0,X 
LF1CB: LDA    INTIM   
       BNE    LF1CB   
       STA    VBLANK  
       STA    WSYNC   
       LDA    $BC     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       NOP            
       NOP            
       LDY    #$06    
       STY    $9C     
       LDA    #$10    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFB00   
       STA    HMCLR   
       LDX    $C2     
       LDA    LFDE5,X 
       STA    $E5     
       LDX    $C2     
       LDA    LFDED,X 
       STA    $E7     
       LDX    $C3     
       LDA    LFDE5,X 
       STA    $E9     
       LDX    $C3     
       LDA    LFDED,X 
       STA    $EB     
       LDX    $C4     
       LDA    LFDE5,X 
       STA    $ED     
       LDX    $C4     
       LDA    LFDED,X 
       STA    $EF     
       STA    WSYNC   
       LDA    #$D8    
       EOR    $88     
       AND    $89     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       NOP            
       NOP            
       LDA    #$10    
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       LDA    $D1     
       STA    $B2     
       LDA    #$C0    
       STA    PF0     
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFB51   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $BB     
       STA    COLUP0  
       LDA    $96     
       LSR            
       TAY            
       LDA    LFCA7,Y 
       STA.w  $00EB   
       LDA    $8A     
       STA    $9C     
       STA    WSYNC   
       LDX    #$00    
       AND    #$0F    
       TAY            
       LDA    $9C     
       AND    #$F0    
       STA    HMP0,X  
LF275: DEY            
       BPL    LF275   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       LDA    $97     
       STA    REFP0   
       LDA    #$FE    
       STA.w  $00E6   
       LDA    #$FC    
       STA.w  $00E8   
       LDA    #$FC    
       STA.w  $00EC   
       LDA    #$FD    
       STA.w  $00EA   
       STA    HMCLR   
       LDX    #$00    
       LDA    $D2,X   
       STA    $9C     
       LDA    $C8,X   
       LDY    #$00    
LF2A2: STA    WSYNC   
       STA.w  $00E5   
       LDA    $9C     
       STA    $B2     
       LDA    ($E5),Y 
       STA    GRP0    
       LDA    $9E,X   
       AND    #$F0    
       STA.w  $00E9   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $9C     
       LDA    $9E,X   
       AND    #$0F    
       TAY            
       LDA    ($E9),Y 
       STA    $9D     
       LDA    LFD10,Y 
       CLC            
       ADC    $9C     
       AND    #$0F    
       TAY            
       LDA    ($E9),Y 
       LDY    #$01    
       STA    PF2     
       LDA    $9D     
       STA    PF1     
       LDA    ($E5),Y 
       STA    GRP0    
       LDA    ($B2),Y 
       STA    ENABL   
       LDA    $DC,X   
       TAY            
       AND    #$0F    
       STA    $9C     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $9C     
       CMP    #$0F    
       BCC    LF2F7   
       SBC    #$0F    
       INY            
LF2F7: EOR    #$07    
       STY    $9C     
       ASL            
       ASL            
       ASL            
       STA    WSYNC   
       ASL            
       STA    HMP1    
       LDY    #$02    
       LDA    ($E5),Y 
       STA    GRP0    
       LDY    $9C     
LF30B: DEY            
       BPL    LF30B   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$03    
       LDA    ($E5),Y 
       STA    GRP0    
       LDA    ($B2),Y 
       STA    ENABL   
       LDA    $A7,X   
       AND    #$03    
       TAY            
       LDA    LFDF5,Y 
       STA.w  $00E7   
       LDA    LFDFC,Y 
       EOR    $88     
       AND    $89     
       STA    COLUP1  
       LDY    #$00    
       LDA    $A7,X   
       AND    #$C0    
       CMP    #$40    
       BNE    LF33E   
       LDY    #$08    
LF33E: STY    REFP1   
       LDY    #$04    
       LDA    #$00    
LF344: STA    WSYNC   
       STA    ENAM0   
       LDA    ($B2),Y 
       STA    ENABL   
       LDA    ($E5),Y 
       STA    GRP0    
       LDA    ($E7),Y 
       STA    GRP1    
       LDA    LFC95,X 
       AND    $86     
       BEQ    LF35D   
       LDA    #$02    
LF35D: INY            
       CPY    #$0C    
       BCC    LF344   
       STA    HMCLR   
       TXA            
       TAY            
       LDA    ($EB),Y 
       STA    HMM0    
       LDY    #$0C    
LF36C: STA    WSYNC   
       STA    HMOVE   
       LDA    ($B2),Y 
       STA    ENABL   
       LDA    ($E5),Y 
       STA    GRP0    
       LDA    #$00    
       STA    ENAM0   
       INY            
       CPY    #$0F    
       BCC    LF36C   
       LDY    #$0F    
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($B2),Y 
       STA    ENABL   
       LDA    ($E5),Y 
       STA    GRP0    
       LDY    #$00    
       INX            
       LDA    $D2,X   
       STA    $9C     
       LDA    $C8,X   
       CPX    #$09    
       BCS    LF39F   
       JMP    LF2A2   
LF39F: STA    HMCLR   
       STA    WSYNC   
       LDA    #$D8    
       EOR    $88     
       AND    $89     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    PF2     
       STA    PF1     
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$10    
       STA    RESP0   
       STA    RESP1   
       STA    HMP1    
       LDA    $DB     
       STA    $B2     
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDX    #$00    
       LDA    $C0     
       CMP    #$A1    
       BNE    LF3D5   
       LDX    #$02    
LF3D5: STA    WSYNC   
       STA    HMOVE   
       STX    ENABL   
       LDX    $C5     
       LDA    LFDE5,X 
       STA    $E5     
       LDX    $C5     
       LDA    LFDED,X 
       STA    $E7     
       LDX    $C6     
       LDA    LFDE5,X 
       STA    $E9     
       LDX    $C6     
       LDA    LFDED,X 
       STA    $EB     
       LDX    $C7     
       LDA    LFDE5,X 
       STA    $ED     
       LDX    $C7     
       LDA    LFDED,X 
       STA    $EF     
       STA    WSYNC   
       JSR    LFB51   
       LDA    #$72    
       STA    $E5     
       LDY    $9B     
       LDA    LFDC9,Y 
       STA    $E7     
       LDA    #$64    
       STA    $E9     
       LDA    #$6B    
       STA    $EB     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    PF0     
       STA    WSYNC   
       LDA    $87     
       AND    #$0F    
       TAY            
       LDA    LFDC9,Y 
       STA    $EF     
       LDA    $87     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFDC9,Y 
       STA    $ED     
       STA    RESP0   
       STA    RESP1   
       LDA    $BC     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$06    
       STY    $9C     
       STA    WSYNC   
       STA    HMOVE   
       JSR    LFB00   
       LDX    $81     
       LDA    LFD98,X 
       STA    NUSIZ1  
       LDA    #$3A    
       EOR    $88     
       AND    $89     
       STA    RESP1   
       STA    COLUP1  
       LDX    #$00    
LF469: STA    WSYNC   
       LDA    $81     
       BEQ    LF474   
       LDA    LFED4,X 
       STA    GRP1    
LF474: INX            
       CPX    #$03    
       BNE    LF469   
       STA    WSYNC   
       LDA    #$25    
       STA    TIM64T  
       LDA    #$00    
       STA    GRP1    
       LDA    $B6     
       AND    #$02    
       BEQ    LF4B8   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF497   
       JSR    LFBC2   
       JMP    LF9C5   
LF497: DEC    $B1     
       LDA    $B1     
       BNE    LF4B5   
       LDA    #$1E    
       STA    $B1     
       LDA    SWCHB   
       AND    #$02    
       BNE    LF4B5   
       LDY    $9A     
       INY            
       CPY    #$0A    
       BCC    LF4B1   
       LDY    #$01    
LF4B1: STY    $9A     
       STY    $80     
LF4B5: JMP    LF9C5   
LF4B8: LDA    SWCHB   
       AND    #$02    
       BNE    LF4D4   
       STA    AUDC0   
       STA    AUDC1   
       LDA    $B6     
       ORA    #$02    
       STA    $B6     
       LDA    #$1E    
       STA    $B1     
       LDA    $80     
       STA    $9A     
       JMP    LF9C5   
LF4D4: LDA    $B7     
       AND    #$40    
       BEQ    LF4F2   
       LDA    SWCHB   
       AND    #$01    
       BEQ    LF4E5   
       LDA    INPT4   
       BMI    LF4EF   
LF4E5: LDA    $B7     
       AND    #$8F    
       STA    $B7     
       LDA    #$19    
       STA    $B1     
LF4EF: JMP    LF9C5   
LF4F2: LDA    SWCHB   
       AND    #$01    
       BNE    LF503   
       JSR    LFBC2   
       LDA    #$19    
       STA    $B1     
       JMP    LF9C5   
LF503: LDA    $B7     
       AND    #$02    
       BEQ    LF514   
       LDA    $8E     
       BPL    LF511   
       LDA    #$00    
       STA    $B6     
LF511: JMP    LF9C5   
LF514: LDA    $B7     
       AND    #$80    
       BEQ    LF539   
       LDA    $B1     
       BEQ    LF521   
       JMP    LF9C5   
LF521: LDA    #$00    
       STA    $B7     
       LDX    $82     
       LDY    #$08    
LF529: LDA    LFCCC,X 
       CLC            
       ADC    LFCC0,Y 
       STA.wy $009E,Y 
       DEY            
       BPL    LF529   
       JMP    LF9C5   
LF539: LDA    $B7     
       AND    #$01    
       BEQ    LF565   
       LDA    $B1     
       BEQ    LF546   
       JMP    LF9C5   
LF546: LDA    #$00    
       STA    $B7     
       LDA    $80     
       CMP    #$04    
       BCC    LF55B   
       LDY    $82     
       INY            
       CPY    #$07    
       BCC    LF559   
       LDY    #$07    
LF559: STY    $82     
LF55B: JSR    LFBD5   
       LDA    #$19    
       STA    $B1     
       JMP    LF9C5   
LF565: LDA    CXBLPF  
       BPL    LF5BB   
       LDA    $9B     
       BEQ    LF5B7   
       LDA    $B9     
       CMP    #$10    
       BCS    LF5AC   
       LDA    $B8     
       CMP    LFD92   
       BNE    LF5B7   
LF57A: LDA    $C0     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       DEX            
       LDA    $9E,X   
       AND    #$F0    
       BEQ    LF5B7   
       LDA    #$0F    
       STA    $95     
       LDA    #$10    
       STA    $9A     
       DEC    $9B     
       LDA    $9E,X   
       SEC            
       SBC    #$10    
       STA    $9E,X   
       AND    #$F0    
       CMP    #$10    
       BNE    LF5B7   
       LDA    $9E,X   
       SEC            
       SBC    #$10    
       STA    $9E,X   
       LDA    #$01    
       STA    $99     
       BNE    LF5B7   
LF5AC: CMP    #$8F    
       BCC    LF5B7   
       LDA    $B8     
       CMP    LFD90   
       BEQ    LF57A   
LF5B7: LDA    #$00    
       STA    $C0     
LF5BB: LDY    #$00    
       LDA    $C0     
       CMP    #$10    
       BCC    LF5C9   
       CMP    #$A0    
       BCC    LF624   
       LDY    #$03    
LF5C9: LDA    CXP0FB  
       ROL            
       BMI    LF5D3   
       LDA    CXP1FB  
       ROL            
       BPL    LF645   
LF5D3: STY    $9C     
       LDA    $87     
       BEQ    LF645   
       SED            
       SEC            
       SBC    #$01    
       STA    $87     
       CLD            
       LDA    $B9     
       LDX    #$02    
LF5E4: CMP    LFDF9,X 
       BCS    LF5EC   
       DEX            
       BNE    LF5E4   
LF5EC: TXA            
       CLC            
       ADC    $9C     
       TAX            
       LDA    #$00    
       STA    $C0     
       LDY    $C2,X   
       BEQ    LF645   
       DEY            
       STY    $C2,X   
       BNE    LF61D   
       LDA    #$0F    
       STA    $93     
       LDA    #$03    
       STA    $99     
       DEC    $B4     
       LDA    $B4     
       BNE    LF61D   
       LDA    #$33    
       STA    $99     
       LDA    #$01    
       STA    $B7     
       LDY    $81     
       CPY    #$03    
       BCS    LF61D   
       INY            
       STY    $81     
LF61D: LDA    #$10    
       STA    $9A     
       JMP    LF645   
LF624: LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       DEX            
       LDA    CXP1FB  
       ROL            
       BPL    LF645   
       LDA    $A7,X   
       AND    #$03    
       CMP    #$01    
       BEQ    LF63B   
       LDA    #$10    
       STA    $9A     
LF63B: LDA    $A7,X   
       AND    #$FC    
       STA    $A7,X   
       LDA    #$00    
       STA    $C0     
LF645: LDA    CXM0FB  
       ROL            
       BPL    LF65D   
       LDA    $C0     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       DEX            
       LDA    $86     
       AND    LFC9E,X 
       STA    $86     
       LDA    #$00    
       STA    $C0     
LF65D: LDA    CXPPMM  
       BPL    LF695   
       LDA    $BF     
       CLC            
       ADC    #$05    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       DEX            
       LDA    $A7,X   
       AND    #$03    
       CMP    #$01    
       BNE    LF692   
       LDA    $A7,X   
       AND    #$FC    
       STA    $A7,X   
       LDA    #$10    
       STA    $9A     
       LDA    #$0F    
       STA    $8F     
       LDA    $9B     
       CMP    #$09    
       BEQ    LF695   
       SED            
       CLC            
       ADC    #$01    
       STA    $9B     
       CLD            
       JMP    LF695   
LF692: JSR    LFA80   
LF695: LDA    CXM0P   
       ROL            
       BPL    LF6C1   
       LDA    #$0F    
       STA    $92     
       LDA    $BF     
       CLC            
       ADC    #$04    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       DEX            
       LDA    $86     
       AND    LFC9E,X 
       STA    $86     
       LDA    #$05    
       STA    $9A     
       LDA    $87     
       CMP    #$99    
       BEQ    LF6C1   
       SED            
       CLC            
       ADC    #$01    
       STA    $87     
       CLD            
LF6C1: STA    CXCLR   
       LDY    #$FD    
       STY.w  $00EA   
       DEC    $90     
       LDA    $90     
       CMP    #$01    
       BNE    LF709   
       LDX    #$08    
LF6D2: LDA    LFCB7,X 
       CMP    #$40    
       BEQ    LF6F0   
       LDA    $9E,X   
       AND    #$0F    
       CMP    #$0F    
       BNE    LF6E8   
       LDA    $9E,X   
       AND    #$F0    
       JMP    LF704   
LF6E8: LDA    $9E,X   
       CLC            
       ADC    #$01    
       JMP    LF704   
LF6F0: LDA    $9E,X   
       AND    #$0F    
       BNE    LF6FF   
       LDA    $9E,X   
       AND    #$F0    
       ORA    #$0F    
       JMP    LF704   
LF6FF: LDA    $9E,X   
       SEC            
       SBC    #$01    
LF704: STA    $9E,X   
       DEX            
       BPL    LF6D2   
LF709: CMP    #$00    
       BEQ    LF710   
       JMP    LF7A1   
LF710: LDA    #$32    
       STA    $90     
       LDA    $80     
       LSR            
       BCS    LF71C   
       JMP    LF7A1   
LF71C: JSR    LFF91   
       BNE    LF724   
       JMP    LF7F2   
LF724: LDA    $B8     
       CMP    #$51    
       BCS    LF73F   
       CMP    #$4A    
       BCC    LF748   
       LDY    LFCB7,X 
       CPY    #$40    
       BEQ    LF73B   
       JSR    LFA80   
       JMP    LF76B   
LF73B: LDA    #$45    
       BNE    LF769   
LF73F: LDY    LFCB7,X 
       CPY    #$40    
       BEQ    LF74F   
       BNE    LF75D   
LF748: LDY    LFCB7,X 
       CPY    #$40    
       BEQ    LF75D   
LF74F: CLC            
       ADC    #$04    
       CMP    #$8A    
       BCC    LF769   
       JSR    LFA80   
       LDA    #$89    
       BNE    LF769   
LF75D: SEC            
       SBC    #$04    
       CMP    #$11    
       BCS    LF769   
       JSR    LFA80   
       LDA    #$11    
LF769: STA    $B8     
LF76B: CPX.w  $00ED   
       BNE    LF773   
       LDX.w  $00EE   
LF773: LDA    $9E,X   
       AND    #$F0    
       STA.w  $00E9   
       LDA    $B8     
       SEC            
       SBC    #$11    
       LSR            
       LSR            
       STA.w  $00EF   
       LDA    $B8     
       SEC            
       SBC    #$0A    
       LSR            
       LSR            
       STA.w  $00F0   
       JSR    LFAA4   
       BNE    LF79B   
       LDA.w  $00EF   
       JSR    LFAA4   
       BEQ    LF7F2   
LF79B: JSR    LFA80   
       JMP    LF7F2   
LF7A1: LDA    $B6     
       BPL    LF7D0   
       LDA    $8E     
       BNE    LF7F2   
       LDY    #$00    
       STY    $B6     
       LDX    #$08    
LF7AF: STY    $A7,X   
       LDA    $9E,X   
       AND    #$F0    
       ORA    LFCC0,X 
       STA    $9E,X   
       DEX            
       BPL    LF7AF   
       LDA    #$03    
       STA    $B0     
       LDA    #$4D    
       STA    $B8     
       LDA    #$81    
       STA    $BD     
       LDA    #$55    
       STA    $BF     
       JMP    LF7F2   
LF7D0: JSR    LF9CD   
       LDA    $BF     
       STA    $C1     
       LDA    $B8     
       STA    $BA     
       LDY    #$00    
       JSR    LFA19   
       LDA    $80     
       LSR            
       BCC    LF7F2   
       JSR    LFF91   
       BEQ    LF7F2   
       LDA    $C1     
       STA    $BF     
       LDA    $BA     
       STA    $B8     
LF7F2: LDX    #$08    
LF7F4: LDA    #$00    
       STA    $C8,X   
       STA    $D2,X   
       DEX            
       BPL    LF7F4   
       STA    $D1     
       STA    $DB     
       LDA    $BF     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       DEX            
       LDA    $BF     
       SEC            
       SBC    LFDD3,X 
       STA    $9C     
       LDA    #$0F    
       SEC            
       SBC    $9C     
       STA    $9D     
       LDY    $B6     
       BMI    LF824   
       LDY    $B0     
       CLC            
       ADC    LFD9C,Y 
       BNE    LF830   
LF824: LDA    $8E     
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFCF8,Y 
       CLC            
       ADC    $9D     
LF830: STA    $C8,X   
       CPX    #$08    
       BEQ    LF85F   
       LDA    $9C     
       CMP    #$07    
       BCC    LF85F   
       INX            
       LDA    #$10    
       CLC            
       ADC    $9D     
       LDY    $B6     
       BMI    LF84E   
       LDY    $B0     
       CLC            
       ADC    LFD9C,Y 
       BNE    LF85D   
LF84E: LDA    $8E     
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFCF8,Y 
       CLC            
       ADC    $9D     
       CLC            
       ADC    #$10    
LF85D: STA    $C8,X   
LF85F: LDY    #$01    
       LDA    $C0     
       BEQ    LF872   
       JSR    LFA19   
       TXA            
       BNE    LF8A5   
LF86B: LDA    #$00    
       STA    $C0     
       JMP    LF8A5   
LF872: LDA    $B6     
       AND    #$80    
       BNE    LF8A5   
       LDA    $8E     
       BNE    LF8A5   
       LDA    INPT4   
       BMI    LF8A5   
       LDA    #$0A    
       STA    $8E     
       LDX    $B0     
       LDA    $BE     
       AND    #$0F    
       ORA    LFDB7,X 
       STA    $BE     
       LDA    $B8     
       CLC            
       ADC    LFDAE,X 
       STA    $B9     
       LDA    $BF     
       CLC            
       ADC    LFDC0,X 
       STA    $C0     
       JSR    LFA19   
       TXA            
       BEQ    LF86B   
LF8A5: LDX    #$08    
       LDA    $C0     
       BEQ    LF8E9   
       CMP    #$A0    
       BCC    LF8BE   
       SEC            
       SBC    #$A3    
       STA    $9C     
       LDA    #$BF    
       SEC            
       SBC    $9C     
       STA    $DB     
       JMP    LF8E9   
LF8BE: CMP    #$10    
       BCS    LF8D1   
       SEC            
       SBC    #$05    
       STA    $9C     
       LDA    #$BF    
       SEC            
       SBC    $9C     
       STA    $D1     
       JMP    LF8E9   
LF8D1: LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       DEX            
       LDA    $C0     
       SEC            
       SBC    LFDD3,X 
       STA    $9C     
       LDA    #$0F    
       SEC            
       SBC    $9C     
       CLC            
       ADC    #$AF    
       STA    $D2,X   
LF8E9: LDA    $B1     
       AND    #$7F    
       BNE    LF90D   
       LDA    $B5     
       AND    #$07    
       CMP    #$06    
       BCS    LF90D   
       TAX            
       LDY    $C2,X   
       BEQ    LF90D   
       LDA    #$0F    
       STA    $94     
       INY            
       CPY    #$08    
       BCC    LF90B   
       LDA    #$00    
       STA    $94     
       LDY    #$07    
LF90B: STY    $C2,X   
LF90D: LDX    $91     
       DEX            
       BPL    LF914   
       LDX    #$08    
LF914: STX    $91     
       LDA    $A7,X   
       AND    #$03    
       BNE    LF954   
       LDA    $B5     
       AND    #$3F    
       CMP    #$3C    
       BCS    LF93E   
       CMP    #$38    
       BCC    LF954   
       LDA    $9E,X   
       AND    #$F0    
       BEQ    LF93E   
       LDA    $B5     
       AND    #$03    
       TAY            
       LDA    LFCD4,Y 
       STA    $DC,X   
       LDA    #$01    
       STA    $A7,X   
       BNE    LF954   
LF93E: LDA    $B5     
       AND    #$01    
       BEQ    LF94C   
       LDA    #$92    
       STA    $A7,X   
       LDA    #$03    
       BNE    LF952   
LF94C: LDA    #$52    
       STA    $A7,X   
       LDA    #$8C    
LF952: STA    $DC,X   
LF954: LDA    $B1     
       AND    #$1F    
       CMP    #$10    
       BCC    LF960   
       LDA    #$03    
       BNE    LF962   
LF960: LDA    #$02    
LF962: STA    $9C     
       LDX    #$08    
LF966: LDA    $A7,X   
       TAY            
       AND    #$03    
       CMP    #$02    
       BCC    LF976   
       TYA            
       AND    #$FC    
       ORA    $9C     
       STA    $A7,X   
LF976: DEX            
       BPL    LF966   
       LDA    $B1     
       AND    #$03    
       BNE    LF9B7   
       LDX    #$08    
LF981: LDA    $A7,X   
       AND    #$30    
       BEQ    LF9B4   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $9C     
       LDA    $A7,X   
       AND    #$C0    
       BEQ    LF9B4   
       CMP    #$40    
       BEQ    LF9A7   
       LDA    $DC,X   
       CLC            
       ADC    $9C     
       CMP    #$8C    
       BCC    LF9A2   
       LDA    #$03    
LF9A2: STA    $DC,X   
       JMP    LF9B4   
LF9A7: LDA    $DC,X   
       SEC            
       SBC    $9C     
       CMP    #$03    
       BCS    LF9B2   
       LDA    #$8C    
LF9B2: STA    $DC,X   
LF9B4: DEX            
       BPL    LF981   
LF9B7: LDA    $86     
       BNE    LF9C5   
       LDA    $B5     
       AND    #$07    
       STA    $96     
       LDA    #$7F    
       STA    $86     
LF9C5: LDA    INTIM   
       BNE    LF9C5   
       JMP    LF01B   
LF9CD: CLC            
       LDA    SWCHA   
       STA    $9C     
       LDX    #$00    
       LDY    #$00    
       ROL            
       BPL    LF9E1   
       BCS    LF9E3   
       LDX    #$01    
       JMP    LF9E3   
LF9E1: LDX    #$02    
LF9E3: LDA    $9C     
       ROL            
       ROL            
       ROL            
       BPL    LF9F1   
       BCS    LF9F3   
       LDY    #$06    
       JMP    LF9F3   
LF9F1: LDY    #$03    
LF9F3: TXA            
       STY    $9C     
       CLC            
       ADC    $9C     
       BNE    LFA01   
       LDA    $BD     
       AND    #$0F    
       BNE    LFA16   
LFA01: TAX            
       LDA    LFDA5,X 
       STA    $97     
       LDA    LFD9C,X 
       STA.w  $00E5   
       STX    $B0     
       LDA    $BD     
       AND    #$0F    
       ORA    LFDB7,X 
LFA16: STA    $BD     
       RTS            

LFA19: LDX    #$01    
       LDA.wy $00BD,Y 
       BEQ    LFA7F   
       ROL            
       BCS    LFA39   
       BPL    LFA4D   
       LDA.wy $00B8,Y 
       SEC            
       SBC    LFCF0,Y 
       CMP    LFD92,Y 
       BCS    LFA4A   
       LDA    LFD92,Y 
       LDX    #$00    
       JMP    LFA4A   
LFA39: LDA.wy $00B8,Y 
       CLC            
       ADC    LFCF0,Y 
       CMP    LFD90,Y 
       BCC    LFA4A   
       LDA    LFD90,Y 
       LDX    #$00    
LFA4A: STA.wy $00B8,Y 
LFA4D: LDA.wy $00BD,Y 
       ROL            
       ROL            
       ROL            
       BCS    LFA6B   
       BPL    LFA7F   
       LDA.wy $00BF,Y 
       SEC            
       SBC    LFCF0,Y 
       CMP    LFD96,Y 
       BCS    LFA7C   
       LDA    LFD96,Y 
       LDX    #$00    
       JMP    LFA7C   
LFA6B: LDA.wy $00BF,Y 
       CLC            
       ADC    LFCF0,Y 
       CMP    LFD94,Y 
       BCC    LFA7C   
       LDA    LFD94,Y 
       LDX    #$00    
LFA7C: STA.wy $00BF,Y 
LFA7F: RTS            

LFA80: LDA    $B6     
       BMI    LFAA1   
       ORA    #$80    
       STA    $B6     
       LDA    #$3F    
       STA    $8E     
       LDA    SWCHB   
       AND    #$40    
       BEQ    LFAA1   
       LDX    $81     
       DEX            
       BPL    LFA9F   
       LDA    #$02    
       STA    $B7     
       LDA    #$00    
       RTS            

LFA9F: STX    $81     
LFAA1: LDA    #$01    
       RTS            

LFAA4: STA    $9D     
       CMP    #$08    
       BCC    LFAC8   
       CMP    #$18    
       BCS    LFAC8   
       LDA    $9E,X   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $9C     
       LDA    $9E,X   
       AND    #$0F    
       TAY            
       LDA    LFD10,Y 
       CLC            
       ADC    $9C     
       AND    #$0F    
       JMP    LFACC   
LFAC8: LDA    $9E,X   
       AND    #$0F    
LFACC: TAY            
       LDA    ($E9),Y 
       LDY    $9D     
       AND    LFCD8,Y 
       BEQ    LFAD8   
       LDA    #$01    
LFAD8: RTS            

LFAD9: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
LFB00: LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       LDA    #$FF    
       STA    $E6     
       STA    $E8     
       STA    $EA     
       STA    $EC     
       STA    $EE     
       STA    $F0     
       LDY    #$01    
       STY    VDELP0  
       STY    VDELP1  
LFB1E: LDY    $9C     
       LDA    ($EF),Y 
       STA    $9D     
       STA    WSYNC   
       LDA    ($ED),Y 
       TAX            
       LDA    ($E5),Y 
       NOP            
       STA    GRP0    
       LDA    ($E7),Y 
       STA    GRP1    
       LDA    ($E9),Y 
       STA    GRP0    
       LDA    ($EB),Y 
       LDY    $9D     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $9C     
       BPL    LFB1E   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       RTS            

LFB51: LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    GRP1    
       LDA    #$FC    
       STA    $E6     
       STA    $E8     
       STA    $EA     
       STA    $EC     
       STA    $EE     
       STA    $F0     
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
LFB6F: STA    WSYNC   
       LDA    ($E5),Y 
       STA    GRP0    
       LDA    ($E7),Y 
       STA    GRP1    
       LDA    ($E9),Y 
       STA    GRP0    
       LDA    ($EB),Y 
       TAX            
       LDA    ($ED),Y 
       NOP            
       STX    GRP1    
       STA    GRP0    
       LDA    ($EF),Y 
       NOP            
       STA    GRP1    
       STA    GRP0    
       LDA    ($B2),Y 
       STA    ENABL   
       INY            
       CPY    #$08    
       BNE    LFB6F   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       RTS            

LFBA2: TAY            
       AND    #$0F    
       STA    $9C     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $9C     
       CMP    #$0F    
       BCC    LFBB7   
       SBC    #$0F    
       INY            
LFBB7: EOR    #$07    
       STY    $9C     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $9C     
       RTS            

LFBC2: LDA    #$03    
       STA    $81     
       LDA    #$00    
       STA    $83     
       STA    $84     
       STA    $85     
       LDX    $80     
       LDA    LFFF1,X 
       STA    $82     
LFBD5: LDA    #$00    
       LDX    #$86    
LFBD9: STA    VSYNC,X 
       INX            
       CPX    #$B0    
       BNE    LFBD9   
       STA    CXCLR   
       LDX    #$00    
LFBE4: LDA    LFF79,X 
       STA    $B0,X   
       INX            
       CPX    #$18    
       BNE    LFBE4   
       RTS            

LFBEF: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$C0,$80,$AB,$AA,$AB,$BA,$80,$C0,$0C,$0C,$09,$3E,$5C,$1C,$14
       .byte $22,$00,$03,$03,$02,$0F,$0F,$3F,$09,$00,$07,$07,$04,$1E,$5E,$7E
       .byte $12,$00,$03,$03,$02,$3E,$BE,$FE,$22,$00,$00,$00,$70,$C0,$FF,$7F
       .byte $33,$00,$00,$1E,$70,$C0,$FF,$7F,$19,$40,$80,$C0,$00,$00,$00,$00
       .byte $00,$C0,$9F,$FF,$19,$00,$00,$B6,$A5,$35,$A5,$36,$00,$08,$10,$E0
       .byte $E8,$80,$80,$80,$00,$00,$08,$10,$E0,$F8,$80,$00,$04,$08,$D0,$E0
       .byte $FC,$C0,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$3C,$42,$DF,$C3,$FB,$42,$3C,$00,$00,$00,$00,$00,$60
       .byte $81,$CA,$7C,$7F,$48,$00,$00,$00,$00,$00,$00,$80,$40,$C8,$7F,$7F
       .byte $24,$00,$00,$00,$00,$00
LFC95: .byte $00,$01,$02,$04,$08,$10,$20,$40,$00
LFC9E: .byte $FF,$FE,$FD,$FB,$F7,$EF,$DF,$BF,$FF
LFCA7: .byte $AB,$AC,$AD,$AE,$A0,$A0,$A0,$30,$70,$70,$D0,$40,$A0,$A0,$A0,$00
LFCB7: .byte $80,$40,$80,$40,$80,$40,$80,$40,$80
LFCC0: .byte $00,$03,$06,$09,$0C,$09,$06,$03,$00,$1D,$15,$0F
LFCCC: .byte $00,$20,$30,$40,$50,$60,$70,$80
LFCD4: .byte $14,$32,$50,$6E
LFCD8: .byte $80,$40,$20,$10,$08,$04,$02,$01,$01,$02,$04,$08,$10,$20,$40,$80
       .byte $80,$40,$20,$10,$08,$04,$02,$01
LFCF0: .byte $01,$02,$04,$08,$10,$20,$40,$80
LFCF8: .byte $D7,$D7,$D7,$D7,$D7,$32,$19,$01,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFD10: .byte $00,$0F,$0E,$0D,$0C,$0B,$0A,$09,$08,$07,$06,$05,$04,$03,$02,$01
       .byte $00,$80,$C0,$60,$30,$18,$0C,$06,$03,$01,$00,$00,$00,$00,$00,$00
       .byte $00,$80,$C0,$E0,$70,$38,$1C,$0E,$07,$03,$01,$00,$00,$00,$00,$00
       .byte $00,$80,$C0,$E0,$F0,$78,$3C,$1E,$0F,$07,$03,$01,$00,$00,$00,$00
       .byte $00,$80,$C0,$E0,$F0,$F8,$7C,$3E,$1F,$0F,$07,$03,$01,$00,$00,$00
       .byte $00,$80,$C0,$E0,$F0,$F8,$FC,$7E,$3F,$1F,$0F,$07,$03,$01,$00,$00
       .byte $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$7F,$3F,$1F,$0F,$07,$03,$01,$00
       .byte $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$7F,$3F,$1F,$0F,$07,$03,$01
LFD90: .byte $89,$95
LFD92: .byte $11,$0D
LFD94: .byte $94,$A9
LFD96: .byte $12,$07
LFD98: .byte $00,$00,$01,$03
LFD9C: .byte $4B,$C1,$C1,$4B,$64,$64,$96,$7D,$7D
LFDA5: .byte $00,$00,$08,$00,$00,$08,$00,$00,$08
LFDAE: .byte $00,$08,$00,$03,$08,$00,$03,$08,$00
LFDB7: .byte $10,$80,$40,$10,$90,$50,$20,$A0,$60
LFDC0: .byte $00,$04,$04,$00,$00,$00,$08,$08,$08
LFDC9: .byte $26,$06,$13,$1A,$39,$0D,$32,$00,$2C,$20
LFDD3: .byte $10,$20,$30,$40,$50,$60,$70,$80,$90,$1F,$2F,$3F,$4F,$5F,$6F,$7F
       .byte $8F,$9F
LFDE5: .byte $00,$08,$10,$18,$20,$3C,$28,$30
LFDED: .byte $44,$62,$62,$62,$38,$4B,$53,$5A
LFDF5: .byte $62,$6E,$79,$85
LFDF9: .byte $28,$48,$68
LFDFC: .byte $00,$44,$D8,$D8,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$02,$58,$DE,$06,$70,$6C,$0B,$79,$D8,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$31,$84,$43
       .byte $30,$04,$66,$10,$76,$87,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$42,$08,$C1,$00,$26,$00,$10,$04,$C4,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10
       .byte $10,$38,$38,$38,$38,$38,$10,$38,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$06,$0E,$1C,$38,$B0,$40
       .byte $20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$20,$40,$B0,$38,$1C,$0E,$06,$01,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$10,$38,$38,$38,$38
       .byte $38,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFED4: .byte $BC,$FF,$BC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$0C,$0C,$06
       .byte $03,$21,$3F,$0C,$0C,$0C,$0C,$3C,$1C,$3E,$23,$03,$3E,$30,$30,$3F
       .byte $30,$30,$1E,$03,$23,$3E,$1E,$23,$03,$06,$03,$23,$1E,$23,$03,$1F
       .byte $33,$33,$1E,$33,$33,$33,$33,$33,$1E,$33,$33,$1E,$33,$33,$1E,$33
       .byte $33,$3E,$30,$31,$1E,$06,$06,$3F,$26,$16,$0E,$06,$50,$20,$57,$04
       .byte $05,$04,$07,$14,$17,$54,$B7,$10,$00,$25,$A5,$BD,$A5,$3D,$80,$00
       .byte $00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$0F,$89,$89,$EF,$80,$F0
       .byte $02,$02,$02,$03,$02,$02,$01,$12,$12,$10,$F2,$12,$10,$E0,$F1,$09
       .byte $08,$71,$81,$80,$78
LFF79: .byte $03,$00,$AF,$FE,$06,$B6,$00,$80,$4D,$00,$4D
LFF84: .byte $3A,$0E,$81,$82,$55,$00,$55,$01,$01,$01,$01,$01,$01
LFF91: LDA    $BF     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       DEX            
       STX.w  $00ED   
       LDA    $BF     
       CLC            
       ADC    #$08    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       DEX            
       STX.w  $00EE   
       LDA    $B8     
       SEC            
       SBC    #$11    
       LSR            
       LSR            
       STA.w  $00EF   
       LDA    $B8     
       SEC            
       SBC    #$0A    
       LSR            
       LSR            
       STA.w  $00F0   
       LDX.w  $00ED   
       LDA    $9E,X   
       AND    #$F0    
       STA.w  $00E9   
       LDA.w  $00EF   
       JSR    LFAA4   
       BNE    LFFF0   
       LDA.w  $00F0   
       JSR    LFAA4   
       BNE    LFFF0   
       LDX.w  $00EE   
       LDA    $9E,X   
       AND    #$F0    
       STA.w  $00E9   
       LDA.w  $00EF   
       JSR    LFAA4   
       BNE    LFFF0   
       LDA.w  $00F0   
       JSR    LFAA4   
LFFF0: RTS            

LFFF1: .byte $00,$00,$04,$04,$00,$00,$04,$04,$06,$06,$FF,$00,$F0,$FF,$FF
