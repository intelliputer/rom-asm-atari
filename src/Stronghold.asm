; Disassembly of roms/Stronghold.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Stronghold.bin
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
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP0FB  =  $32
CXM0FB  =  $34
CXM1FB  =  $35
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: STA    WSYNC   
       DEC    $E3     
       BMI    LF029   
       LDY    $E3     
       LDA    ($A3),Y 
       STA    $E4     
       LDA    ($A1),Y 
       TAX            
       LDA    ($99),Y 
       STA    GRP0    
       LDA    ($9B),Y 
       STA    GRP1    
       LDA    ($9D),Y 
       STA    GRP0    
       LDA    ($9F),Y 
       LDY    $E4     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       BPL    LF000   
LF029: LDX    #$00    
       LDA    $A8     
       LSR            
       BCS    LF034   
       STX    VDELP0  
       STX    VDELP1  
LF034: STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STA    WSYNC   
       STA    WSYNC   
       LDA    $A8     
       AND    #$07    
       LSR            
       ADC    #$00    
       STA    $E3     
       LDA    #$59    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$05    
       SEC            
       SBC    $E3     
       STA    $E3     
       LDY    #$FF    
LF056: STA    WSYNC   
       INY            
       LDX    #$00    
       STX    $011C   
       STX    GRP0    
       CPY    #$03    
       BEQ    LF07F   
       LDX    LFD92,Y 
       LDA    $A8     
       LSR            
       BCC    LF06F   
       STX    $011C   
LF06F: TXA            
       LDX    $E3     
       CPX    #$05    
       BEQ    LF056   
LF076: DEX            
       BPL    LF076   
       STA    GRP0    
       STA    GRP1    
       BNE    LF056   
LF07F: STX    VDELP0  
       STX    VDELP1  
       LDY    #$8F    
       LDA    $F9     
       BNE    LF08D   
       LDY    #$B1    
       STA    WSYNC   
LF08D: STY    $E2     
       ASL            
       BMI    LF099   
       LDA    $E1     
       AND    #$08    
       LSR            
       LSR            
       LSR            
LF099: STA    NUSIZ1  
       LDA    #$10    
       STA    NUSIZ0  
       LDA    #$0C    
       STA    COLUP0  
       LDA    $80     
       ASL            
       STA    REFP0   
       LDA    $C4     
       JSR    LFC86   
       STA    WSYNC   
       LDY    #$C2    
       STY    COLUBK  
       LDX    $BE     
       DEX            
       LDA    $C4,X   
       LDX    #$01    
       JSR    LFC86   
       LDA    $90     
       BNE    LF0C3   
       LDA    $B3     
LF0C3: STA    COLUBK  
       LDY    #$0E    
LF0C7: INY            
       LDA    #$00    
       STA    WSYNC   
       STA    GRP1    
       STA    COLUP1  
       STA    HMCLR   
LF0D2: CPY    $8F     
       BNE    LF0DA   
       LDA    $B3     
       STA    COLUBK  
LF0DA: CPY    $E2     
       BNE    LF0E2   
       INY            
       JMP    LF32D   
LF0E2: JSR    LFCB9   
       CPY    $92     
       BNE    LF0EC   
       JMP    LF17D   
LF0EC: INY            
       STA    WSYNC   
       CPY    $93     
       PHP            
       PLA            
       STA    ENAM0   
       LDX    $BE     
       CPX    #$07    
       BEQ    LF0FD   
       LDA    $92,X   
LF0FD: BNE    LF103   
       LDA    #$00    
       STA    $BE     
LF103: CPY    $BA     
       BNE    LF0C7   
LF107: INY            
       LDA    ($B0),Y 
       TAX            
       LDA    ($AE),Y 
       CPY    $8F     
       BNE    LF11D   
       STA    WSYNC   
       STA    GRP1    
       STX    COLUP1  
       LDA    $B3     
       STA    COLUBK  
       BEQ    LF12F   
LF11D: STA    WSYNC   
       STA    GRP1    
       STX    COLUP1  
       CPY    $E2     
       BNE    LF12F   
       LDA    #$00    
       STA    GRP1    
       INY            
       JMP    LF32D   
LF12F: JSR    LFCB9   
       CPY    $92     
       BNE    LF139   
       JMP    LF1CB   
LF139: INY            
       LDA    ($B0),Y 
       TAX            
       LDA    ($AE),Y 
       STA    WSYNC   
       STA    GRP1    
       STX    COLUP1  
       CPY    $93     
       PHP            
       PLA            
       STA    ENAM0   
       CPY    $FB     
       BNE    LF107   
       LDA    $BE     
       BNE    LF156   
       JMP    LF0C7   
LF156: JMP    LF29A   
LF159: INY            
       LDA    ($AC),Y 
       TAX            
       LDA    ($AA),Y 
       STA    WSYNC   
       STA    GRP0    
       STX    COLUP0  
       LDA    #$00    
       STA    GRP1    
LF169: LDA    #$01    
       CPY    $BD     
       BEQ    LF174   
       CPY    $91     
       BNE    LF176   
       ASL            
LF174: STA    ENABL   
LF176: CPY    $B9     
       BNE    LF17D   
       JMP    LF0EC   
LF17D: INY            
       LDA    ($AC),Y 
       TAX            
       LDA    ($AA),Y 
       STA    WSYNC   
       STA    GRP0    
       STX    COLUP0  
       LDA    #$00    
       STA    ENAM0   
       LDX    $BE     
       CPX    #$07    
       BEQ    LF195   
       LDA    $92,X   
LF195: BNE    LF19B   
       LDA    #$00    
       STA    $BE     
LF19B: CPY    $BA     
       BNE    LF159   
LF19F: INY            
       LDA    ($AC),Y 
       TAX            
       LDA    ($B0),Y 
       STA    $E3     
       LDA    ($AE),Y 
       STA    WSYNC   
       STA    GRP1    
       STX    COLUP0  
       LDA    ($AA),Y 
       STA    GRP0    
       LDA    $E3     
       STA    COLUP1  
       LDA    #$01    
       CPY    $BD     
       BEQ    LF1C2   
       CPY    $91     
       BNE    LF1C4   
       ASL            
LF1C2: STA    ENABL   
LF1C4: CPY    $B9     
       BNE    LF1CB   
       JMP    LF139   
LF1CB: INY            
       LDA    ($AC),Y 
       TAX            
       LDA    ($B0),Y 
       STA    $E3     
       LDA    ($AE),Y 
       STA    WSYNC   
       STA    GRP1    
       STX    COLUP0  
       LDA    ($AA),Y 
       STA    GRP0    
       LDA    $E3     
       STA    COLUP1  
       LDX    #$00    
       STX    ENAM0   
       CPY    $FB     
       BNE    LF19F   
       LDX    $BE     
       BEQ    LF22F   
       LDA    $92,X   
       STA    $BA     
       ADC    #$07    
       STA    $FB     
       LDA    $C4,X   
       STA    $E3     
       LDA    $80,X   
       TAX            
       LDA    LFF00,X 
       SEC            
       SBC    $BA     
       INY            
       STA    $AE     
       LDA    ($AA),Y 
       STA    GRP0    
       LDA    #$00    
       STA    GRP1    
       LDA    ($AC),Y 
       STA    COLUP0  
       LDA    #$01    
       CPY    $BD     
       BEQ    LF21E   
       CPY    $91     
       BNE    LF220   
       ASL            
LF21E: STA    ENABL   
LF220: LDA    LFF19,X 
       SEC            
       SBC    $BA     
       STA    $B0     
       CPY    $B9     
       BNE    LF232   
       JMP    LF2DF   
LF22F: JMP    LF159   
LF232: INY            
       STY    $E5     
       INC    $E5     
       LDA    ($AA),Y 
       LDX    #$00    
       STA    WSYNC   
       STA    GRP0    
       LDA    ($AC),Y 
       STA    COLUP0  
       STX    ENAM0   
       LDA    $E3     
       JSR    LFC9D   
       STA    HMP1    
       STY    $E3     
       LDY    $E5     
       LDA    ($AA),Y 
       STA    GRP0    
       LDA    ($AC),Y 
       STA    COLUP0  
       JSR    LFCB9   
       INC    $BE     
       CPY    $B9     
       BNE    LF264   
       JMP    LF30F   
LF264: INY            
       LDX    $E3     
LF267: LDA    ($AC),Y 
       STA    WSYNC   
       STA    ENAM0   
       STA    COLUP0  
       LDA    ($AA),Y 
       STA    GRP0    
       NOP            
LF274: DEX            
       BPL    LF274   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       LDA    ($AC),Y 
       STA    COLUP0  
       LDA    ($AA),Y 
       STA    GRP0    
       JMP    LF169   
LF289: LDY    #$00    
       LDX    #$12    
LF28D: STY    $E7,X   
       DEX            
       BPL    LF28D   
       LDA    $D8     
       CLC            
       ADC    #$19    
       STA    $BC     
       RTS            

LF29A: LDX    $BE     
       BEQ    LF22F   
       LDA    $92,X   
       STA    $BA     
       CLC            
       ADC    #$08    
       STA    $FB     
       LDA    $C4,X   
       STA    $E3     
       LDA    $80,X   
       TAX            
       LDA    LFF00,X 
       SEC            
       STA    WSYNC   
       SBC    $BA     
       INY            
       STA    $AE     
       LDA    #$00    
       STA    GRP1    
       LDA    #$01    
       CPY    $8F     
       BNE    LF2C5   
       STA    COLUBK  
LF2C5: CPY    $BD     
       BEQ    LF2CE   
       CPY    $91     
       BNE    LF2D0   
       ASL            
LF2CE: STA    ENABL   
LF2D0: LDA    LFF19,X 
       SEC            
       SBC    $BA     
       STA    $B0     
       CPY    $92     
       BNE    LF2DF   
       JMP    LF232   
LF2DF: INY            
       STY    $E5     
       STA    WSYNC   
       CPY    $93     
       PHP            
       PLA            
       STA    ENAM0   
       LDA    $E3     
       JSR    LFC9D   
       STY    $E3     
       STA    WSYNC   
       STA    HMP1    
       LDY    $E5     
       INY            
       LDA    #$01    
       CPY    $8F     
       BNE    LF300   
       STA    COLUBK  
LF300: JSR    LFCB9   
       INC    $BE     
       CPY    $92     
       BNE    LF30F   
       INY            
       LDX    $E3     
       JMP    LF267   
LF30F: INY            
       STA    WSYNC   
       LDX    $E3     
       CPY    $93     
       PHP            
       PLA            
       STA    ENAM0   
LF31A: DEX            
       BPL    LF31A   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       JMP    LF0D2   
LF327: LDA    #$02    
       STA    ENABL   
LF32B: BNE    LF360   
LF32D: LDA    $F9     
       BNE    LF334   
       JMP    LF3F3   
LF334: STA    NUSIZ1  
       LDA    $B3     
       STA    COLUP1  
       LDX    #$02    
       STX    ENAM1   
LF33E: CLV            
       LDA    $A5,X   
       STA    COLUPF  
       LDA    #$01    
LF345: CPY    $93     
       BNE    LF34B   
       LDA    #$02    
LF34B: STA    WSYNC   
       STA    ENAM0   
       JSR    LFCDA   
       INY            
       LDA    #$01    
       CPY    $91     
       BEQ    LF327   
       CPY    $BD     
       BNE    LF32B   
       STA    $011F   
LF360: NOP            
       JSR    LFCDA   
       INY            
       BVS    LF36D   
       LDA    #$7F    
       ADC    #$01    
       BVS    LF345   
LF36D: LDA    #$01    
       STA    WSYNC   
       CPY    $93     
       BNE    LF377   
       LDA    #$02    
LF377: STA    ENAM0   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       INY            
       CPY    $91     
       STA    WSYNC   
       BNE    LF38C   
       LDA    #$02    
       BNE    LF392   
LF38C: CPY    $BD     
       BNE    LF394   
       LDA    #$01    
LF392: STA    ENABL   
LF394: INY            
       DEX            
       BPL    LF33E   
       STX    $B3     
       LDA    $BB     
       STA    COLUPF  
       LDX    #$01    
       STX    ENAM1   
       CPY    $93     
       BNE    LF3A7   
       INX            
LF3A7: INY            
       INY            
       STY    $E3     
       CPY    $93     
       PHP            
       LDA    #$FF    
       LDY    $F9     
       BPL    LF3B6   
       LDA    #$00    
LF3B6: STA    $E6     
       STA    WSYNC   
       STX    ENAM0   
       LDX    #$01    
       LDA    $FA     
       JSR    LFC86   
       PLA            
       STA    ENAM0   
       LDY    $E3     
LF3C8: INY            
       CPY    #$AE    
       BNE    LF3D4   
       LDA    $FA     
       ASL            
       ASL            
       ASL            
       STA    REFP1   
LF3D4: LDX    #$01    
       STX    ENABL   
       CPY    $93     
       BNE    LF3DD   
       INX            
LF3DD: TYA            
       LSR            
       LDA    ($B2),Y 
       STA    WSYNC   
       BCS    LF3E7   
       STX    ENAM0   
LF3E7: AND    $E6     
       STA    GRP1    
       LDA    ($B4),Y 
       STA    COLUP1  
       CPY    #$B2    
       BNE    LF3C8   
LF3F3: STA    WSYNC   
       LDA    $D8     
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$26    
       STA    COLUBK  
       LDA    #$00    
       STA    GRP1    
       STA    REFP1   
       LDX    #$2E    
       STX    TIM64T  
       LDX    #$04    
       STX    ENAM0   
       STA    $B3     
       LDA    $A9     
       CMP    #$80    
       BEQ    LF41A   
       JMP    LF8B6   
LF41A: LDA    $80     
       CMP    #$06    
       BPL    LF45F   
       LDA    SWCHA   
       STA    $87     
       EOR    #$FF    
       AND    #$F0    
       BNE    LF435   
       LDA    $BF     
       BEQ    LF459   
       LDA    $C0     
       STA    $80     
       BNE    LF459   
LF435: CLC            
       ROL            
       ROL            
       ROL            
       BCS    LF444   
       BMI    LF444   
       DEC    $B7     
       TAY            
       LDA    $80     
       LSR            
       TYA            
LF444: ROL            
       INC    $B7     
       CMP    #$06    
       BMI    LF44D   
       EOR    #$06    
LF44D: STA    $80     
       CMP    #$02    
       BMI    LF459   
       STA    $C0     
       LDA    #$03    
       STA    $BF     
LF459: LDA    $BF     
       BEQ    LF45F   
       DEC    $BF     
LF45F: LDY    $B8     
       BIT    CXPPMM  
       BMI    LF469   
       BIT    CXP0FB  
       BVC    LF479   
LF469: LDA    #$0D    
       STA    $CC     
       LDA    #$40    
       STA    $A9     
       LDA    #$06    
       STA    $80     
       STY    $DA     
       BNE    LF4C7   
LF479: BIT    CXM0P   
       BPL    LF4CA   
       LDX    #$04    
LF47F: LDA    $93     
       SEC            
       SBC    $94,X   
       BCC    LF48A   
       CMP    #$09    
       BCC    LF4A1   
LF48A: DEX            
       BPL    LF47F   
       LDA    #$0C    
       STA    $81     
       STY    $DB     
       LDA    #$0D    
       STA    $B3     
       STA    $CB     
       LDA    #$41    
       STA    $A9     
       LDA    #$48    
       BNE    LF4BD   
LF4A1: LDA    $E1     
       LSR            
       BCC    LF4AA   
       BIT    $F9     
       BVC    LF4C0   
LF4AA: LDA    $89,X   
       BEQ    LF4C3   
       LDA    #$0D    
       STA    $CC     
       LDA    #$00    
       STA    $89,X   
       LDA    #$08    
       STA    $82,X   
       STY    $DC,X   
       ASL            
LF4BD: JSR    LFCF3   
LF4C0: JSR    LFD1E   
LF4C3: BIT    $A9     
       BVC    LF4CA   
LF4C7: JMP    LF8B6   
LF4CA: BIT    $F9     
       BMI    LF4D6   
       BVS    LF4D9   
       LDA    #$05    
       LDX    $BC     
       BNE    LF4E1   
LF4D6: JMP    LF5A4   
LF4D9: LDA    $D8     
       AND    #$03    
       TAX            
       LDA    LFF8E,X 
LF4E1: CMP    $8E     
       BEQ    LF4D6   
       LDA    $D8     
       LSR            
       LSR            
       TAX            
       LSR            
       LDY    $F9     
       BNE    LF4F3   
       LDX    #$13    
       BNE    LF50D   
LF4F3: BIT    $A8     
       BMI    LF4FE   
       BVC    LF506   
       LDA    $D8     
       LSR            
       BCS    LF506   
LF4FE: TXA            
       CLC            
       ADC    #$08    
       LDX    #$0E    
       BNE    LF50D   
LF506: TXA            
       LSR            
       CLC            
       ADC    #$04    
       LDX    #$15    
LF50D: TAY            
       STX    $E3     
       LDX    $8E     
       BEQ    LF547   
       LDA    LFD3F,Y 
       BPL    LF524   
       LDA    $E2     
       SEC            
       SBC    #$0F    
       CMP    $93,X   
       BCC    LF528   
       BCS    LF547   
LF524: LDA    $94     
       CMP    #$18    
LF528: BCC    LF5A4   
       LDX    #$04    
LF52C: LDA    $93,X   
       STA    $94,X   
       LDA    $C5,X   
       STA    $C6,X   
       LDA    $81,X   
       STA    $82,X   
       LDA    $DB,X   
       STA    $DC,X   
       LDA    $88,X   
       STA    $89,X   
       LDA    $D2,X   
       STA    $D3,X   
       DEX            
       BNE    LF52C   
LF547: LDA    LFD3F,Y 
       BMI    LF550   
       LDA    #$0A    
       BPL    LF560   
LF550: BIT    $F9     
       BVC    LF55B   
       CLC            
       LDA    #$40    
       ADC    $A8     
       STA    $A8     
LF55B: LDA    $E2     
       SEC            
       SBC    #$01    
LF560: STA    $94,X   
       JSR    LFCC7   
       AND    #$7F    
       CLC            
       ADC    #$10    
       STA    $C6,X   
       LDA    $E3     
       STA    $82,X   
       LDA    #$00    
       STA    $E4     
       LDA    LFD3F,Y 
       BPL    LF57B   
       INC    $E4     
LF57B: AND    #$0F    
       STA    $E3     
       JSR    LFCC7   
       AND    #$02    
       ORA    $E4     
       STY    $E5     
       TAY            
       LDA    LFEA2,Y 
       LDY    $E5     
       ORA    $E3     
       STA    $89,X   
       LDA    $B8     
       STA    $DC,X   
       STY    $D3,X   
       INC    $8E     
       LDA    $F9     
       BNE    LF5A4   
       DEC    $BC     
       LDA    #$01    
       STA    $CB     
LF5A4: LDA    $B8     
       AND    #$07    
       CMP    #$05    
       BMI    LF5AF   
       JMP    LF63B   
LF5AF: TAX            
       LDY    $D3,X   
       LDA    LFF7E,Y 
       JSR    LFD2F   
       BNE    LF5F8   
       LDY    $D3,X   
       LDA    LFD4F,Y 
       AND    #$07    
       BEQ    LF5D0   
       STA    $E3     
       INC    $E3     
       JSR    LFCC7   
       AND    #$07    
       CMP    $E3     
       BCC    LF5DA   
LF5D0: JSR    LFCC7   
       LSR            
       LDA    #$02    
       BCC    LF5E6   
       BCS    LF5E8   
LF5DA: LDA    $92     
       STA    $E3     
       LDA    #$02    
       LDY    $94,X   
       CPY    $E3     
       BCS    LF5E8   
LF5E6: EOR    #$03    
LF5E8: ASL            
       ASL            
       ASL            
       ASL            
       STA    $E4     
       LDA    $89,X   
       BEQ    LF5F8   
       AND    #$CF    
       ORA    $E4     
       STA    $89,X   
LF5F8: LDY    $D3,X   
       LDA    LFF7E,Y 
       LSR            
       LSR            
       LSR            
       JSR    LFD2F   
       BNE    LF63B   
       JSR    LFCC7   
       ORA    #$07    
       AND    #$37    
       LDY    $D3,X   
       CMP    LFD4F,Y 
       BCC    LF61D   
       JSR    LFCC7   
       LSR            
       LDA    #$02    
       BCC    LF629   
       BCS    LF62B   
LF61D: LDA    $C4     
       STA    $E3     
       LDA    #$02    
       LDY    $C6,X   
       CPY    $E3     
       BCS    LF62B   
LF629: EOR    #$03    
LF62B: CLC            
       ROR            
       ROR            
       ROR            
       STA    $E4     
       LDA    $89,X   
       BEQ    LF63B   
       AND    #$3F    
       ORA    $E4     
       STA    $89,X   
LF63B: LDX    #$04    
LF63D: LDA    $94,X   
       BEQ    LF645   
       LDA    $89,X   
       BNE    LF648   
LF645: JMP    LF71B   
LF648: CPX    #$00    
       BNE    LF656   
       LDA    #$12    
       BIT    $F9     
       BVS    LF65A   
       LDA    #$0A    
       BNE    LF65A   
LF656: LDA    $93,X   
       ADC    #$0E    
LF65A: STA    $E4     
       LDY    $D3,X   
       LDA    LFD3F,Y 
       AND    #$70    
       BEQ    LF66D   
       LDA    #$74    
       CMP    $E4     
       BCC    LF66D   
       STA    $E4     
LF66D: CPX    #$04    
       BEQ    LF675   
       LDA    $95,X   
       BNE    LF679   
LF675: LDA    #$88    
       BNE    LF67C   
LF679: SEC            
       SBC    #$0E    
LF67C: STA    $E5     
       LDY    $89,X   
       STY    $E3     
       LDA    $B8     
       AND    #$03    
       STA    $E6     
       LDA    $89,X   
       AND    #$0C    
       ORA    $E6     
       TAY            
       LDA    LFEEF,Y 
       LSR            
       BCC    LF6D0   
       LDA    $C6,X   
       BIT    $E3     
       BMI    LF6B6   
       STA    $E6     
       BIT    $F9     
       BVS    LF6A8   
       LDA    $E1     
       AND    #$08    
       ASL            
       ADC    $E6     
LF6A8: CMP    #$98    
       BCS    LF6BE   
       INC    $C6,X   
       LDA    #$0C    
       AND    $E3     
       BNE    LF6B6   
       INC    $C6,X   
LF6B6: BIT    $E3     
       BVS    LF6D0   
       CMP    #$03    
       BCS    LF6C6   
LF6BE: LDA    $89,X   
       EOR    #$C0    
       STA    $89,X   
       BNE    LF6D0   
LF6C6: DEC    $C6,X   
       LDA    #$0C    
       AND    $E3     
       BNE    LF6D0   
       DEC    $C6,X   
LF6D0: ASL    $E3     
       ASL    $E3     
       LDA    $B8     
       LSR            
       BCC    LF6DF   
       LDA    #$0C    
       AND    $E3     
       BNE    LF71B   
LF6DF: AND    #$03    
       STA    $E6     
       LDA    $89,X   
       AND    #$03    
       ASL            
       ASL            
       ORA    $E6     
       TAY            
       LDA    LFEEF,Y 
       LSR            
       BCC    LF71B   
       LDA    $94,X   
       BIT    $E3     
       BMI    LF700   
       CMP    $E5     
       BCS    LF70E   
       INC    $94,X   
       INC    $94,X   
LF700: BIT    $E3     
       BVS    LF71B   
       CMP    $E4     
       BCC    LF70E   
       DEC    $94,X   
       DEC    $94,X   
       BNE    LF71B   
LF70E: LDY    $D3,X   
       LDA    LFD3F,Y 
       BMI    LF71B   
       LDA    $89,X   
       EOR    #$30    
       STA    $89,X   
LF71B: DEX            
       BMI    LF721   
       JMP    LF63D   
LF721: LDA    $87     
       STA    $E3     
       LDA    $B8     
       STA    $E6     
       AND    #$7F    
       BNE    LF74C   
       BIT    $F9     
       BVC    LF74C   
       LDA    $E1     
       AND    #$04    
       BNE    LF74C   
       LDX    $8F     
       BNE    LF73C   
       INX            
LF73C: CPX    #$7D    
       BEQ    LF744   
       INX            
       INX            
       STX    $8F     
LF744: CPX    #$0F    
       BNE    LF74C   
       LDA    #$F4    
       STA    $90     
LF74C: LDX    $C4     
       CPX    #$97    
       BEQ    LF758   
       BIT    $E3     
       BMI    LF758   
       INC    $C4     
LF758: CPX    #$03    
       BEQ    LF762   
       BIT    $E3     
       BVS    LF762   
       DEC    $C4     
LF762: ASL    $E3     
       ASL    $E3     
       LSR    $E6     
       BCS    LF79A   
       LDA    $E2     
       SBC    #$12    
       CMP    $92     
       BCC    LF77A   
       BIT    $E3     
       BMI    LF77A   
       INC    $92     
       INC    $92     
LF77A: LDA    $8F     
       CMP    #$0F    
       BCS    LF782   
       LDA    #$0F    
LF782: STA    $E4     
       LDA    $92     
       CMP    $E4     
       BEQ    LF79A   
       BCS    LF792   
       INC    $92     
       INC    $92     
       BNE    LF79A   
LF792: BIT    $E3     
       BVS    LF79A   
       DEC    $92     
       DEC    $92     
LF79A: LDA    $B8     
       LSR            
       BCS    LF7EC   
       BIT    $F9     
       BVC    LF7EC   
       LDA    $FA     
       SEC            
       SBC    $C4     
       BEQ    LF7B6   
       BCC    LF7B0   
       DEC    $FA     
       BNE    LF7B6   
LF7B0: INC    $FA     
       EOR    #$FF    
       ADC    #$01    
LF7B6: LDX    $BC     
       BNE    LF7F0   
       CMP    #$04    
       BPL    LF7CC   
       LDA    #$01    
       STA    AUDC1   
       LDA    #$20    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       BNE    LF7F0   
LF7CC: SBC    #$30    
       BMI    LF7D2   
       LDA    #$FF    
LF7D2: EOR    #$FF    
       ADC    #$08    
       LSR            
       LSR            
       LSR            
       STA    AUDV1   
       LDA    #$01    
       STA    AUDC1   
       LDA    $FA     
       AND    #$01    
       ORA    #$02    
       ASL            
       ASL            
       ASL            
       STA    AUDF1   
       BNE    LF7F0   
LF7EC: LDA    #$00    
       STA    AUDV1   
LF7F0: LDX    INPT4   
       BPL    LF7FD   
       LDA    $88     
       AND    #$E2    
       STA    $88     
       JMP    LF82D   
LF7FD: LDA    $88     
       LSR            
       BCS    LF82D   
       LDA    #$23    
       STA    $CC     
       LDA    $80     
       AND    #$07    
       TAX            
       LDA    LFFAA,X 
       TAY            
       AND    #$0F    
       ASL            
       ADC    $92     
       STA    $93     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $C4     
       STA    $C5     
       DEC    $93     
       LDA    $80     
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    #$03    
       STA    $88     
LF82D: BIT    $F9     
       LDX    #$02    
       BVC    LF87F   
       STX    $E3     
LF835: LDY    #$06    
       LDX    $E3     
LF839: LDA    $E7,X   
       BEQ    LF843   
       DEC    $E3     
       BPL    LF835   
       BMI    LF877   
LF843: INX            
       INX            
       INX            
       DEY            
       BNE    LF839   
       LDX    $E3     
       LDA    $A5,X   
       STA    $E4     
LF84F: LDY    #$06    
       LDX    $E3     
       BEQ    LF85D   
       LDA    $A4,X   
       STA    $A5,X   
       LDA    $C0,X   
       STA    $C1,X   
LF85D: LDA    $E3     
       BNE    LF865   
       LDA    #$FF    
       BNE    LF867   
LF865: LDA    $E6,X   
LF867: STA    $E7,X   
       INX            
       INX            
       INX            
       DEY            
       BNE    LF85D   
       DEC    $E3     
       BPL    LF84F   
       LDA    $E4     
       STA    $A5     
LF877: LDA    $BC     
       BNE    LF889   
       LDA    $A9     
       CMP    #$80    
LF87F: BNE    LF8B6   
       BIT    CXM1FB  
       BMI    LF8B6   
       LDA    #$01    
       STA    $CB     
LF889: INC    $BC     
       LDA    $BC     
       ASL            
       ASL            
       STA    $E3     
       ASL            
       ASL            
       ORA    #$0C    
       STA    $BB     
       LDA    #$A3    
       SEC            
       SBC    $E3     
       STA    $91     
       LDA    $BC     
       LSR            
       LSR            
       ASL            
       CLC            
       ADC    #$04    
       ADC    $91     
       STA    $BD     
       BMI    LF8B6   
       CMP    #$1F    
       BPL    LF8B6   
       LDA    #$00    
       STA    $BC     
       STA    $91     
LF8B6: STA    WSYNC   
LF8B8: LDX    INTIM   
       BNE    LF8B8   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       LDX    #$27    
       STX    TIM64T  
       LDA    $A9     
       CMP    #$80    
       BEQ    LF8DB   
       JMP    LFA2C   
LF8DB: BIT    CXM0FB  
       BPL    LF952   
       BIT    $F9     
       BVS    LF8E8   
       JSR    LFD1E   
       BEQ    LF952   
LF8E8: LDA    #$1F    
       STA    $CC     
       LDX    #$02    
       LDA    $93     
       CMP    #$95    
       BCC    LF8FA   
       DEX            
       CMP    #$9B    
       BCC    LF8FA   
       DEX            
LF8FA: STX    $E3     
       LDY    $C5     
       STY    $E6     
LF900: DEY            
       LDA    $C1,X   
       AND    #$03    
       STA    $E4     
       TYA            
       LSR            
       LSR            
       SEC            
       SBC    $E4     
       AND    #$FC    
       CLC            
       ADC    $E4     
       STA    $E4     
       LDA    #$04    
       STA    $E5     
LF918: LDA    $E4     
       BPL    LF91F   
       CLC            
       ADC    #$28    
LF91F: TAX            
       LDA    LFF53,X 
       TAY            
       AND    #$0F    
       CLC            
       ADC    $E3     
       TAX            
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF4B,Y 
       AND    $E7,X   
       STA    $E7,X   
       INC    $E4     
       DEC    $E5     
       BNE    LF918   
       LDX    $E3     
       LDY    $E6     
       CPY    $C5     
       BNE    LF94A   
       DEY            
       STY    $E6     
       BNE    LF900   
LF94A: JSR    LFD1E   
       LDA    #$08    
       JSR    LFCF3   
LF952: LDA    $88     
       AND    #$E2    
       BEQ    LF995   
       STA    $E3     
       LDA    $C5     
       ORA    #$01    
       BIT    $E3     
       BPL    LF96C   
       CMP    #$9F    
       BEQ    LF992   
       INC    $C5     
       INC    $C5     
       BNE    LF976   
LF96C: BVC    LF976   
       CMP    #$03    
       BEQ    LF992   
       DEC    $C5     
       DEC    $C5     
LF976: ASL    $E3     
       LDA    $93     
       BIT    $E3     
       BVS    LF988   
       CMP    #$0E    
       BEQ    LF992   
       DEC    $93     
       DEC    $93     
       BNE    LF995   
LF988: CMP    #$B0    
       BEQ    LF992   
       INC    $93     
       INC    $93     
       BNE    LF995   
LF992: JSR    LFD1E   
LF995: LDA    $B8     
       AND    #$07    
       BEQ    LF9A3   
       LDX    $F9     
       BPL    LF9ED   
       AND    #$03    
       BNE    LF9ED   
LF9A3: LDA    $E7     
       AND    #$F0    
       BIT    $F6     
       BMI    LF9AF   
       LDX    $F9     
       BPL    LF9B1   
LF9AF: ORA    #$08    
LF9B1: STA    $E7     
       ROL    $E7     
       ROR    $EA     
       ROL    $ED     
       LDA    $F0     
       AND    #$F0    
       BCC    LF9C1   
       ORA    #$08    
LF9C1: STA    $F0     
       ROL    $F0     
       ROR    $F3     
       ROL    $F6     
       INC    $C1     
       CLC            
       LDA    #$10    
       AND    $E8     
       BNE    LF9D6   
       LDX    $F9     
       BPL    LF9D7   
LF9D6: SEC            
LF9D7: ROR    $F7     
       ROL    $F4     
       ROR    $F1     
       CLC            
       LDA    #$08    
       AND    $F1     
       BEQ    LF9E5   
       SEC            
LF9E5: ROR    $EE     
       ROL    $EB     
       ROR    $E8     
       DEC    $C2     
LF9ED: LDA    $B8     
       AND    #$03    
       BNE    LFA1B   
       LDA    $E9     
       AND    #$F0    
       BIT    $F8     
       BMI    LF9FF   
       LDX    $F9     
       BPL    LFA01   
LF9FF: ORA    #$08    
LFA01: STA    $E9     
       ROL    $E9     
       ROR    $EC     
       ROL    $EF     
       LDA    $F2     
       AND    #$F0    
       BCC    LFA11   
       ORA    #$08    
LFA11: STA    $F2     
       ROL    $F2     
       ROR    $F5     
       ROL    $F8     
       INC    $C3     
LFA1B: LDX    #$02    
LFA1D: LDA    $E7,X   
       AND    #$F0    
       STA    $E7,X   
       LDA    $F0,X   
       AND    #$F0    
       STA    $F0,X   
       DEX            
       BPL    LFA1D   
LFA2C: INC    $B8     
       LDA    $A9     
       ASL            
       BCC    LFA4B   
LFA33: LDA    SWCHB   
       LSR            
       BCS    LFA3F   
LFA39: LDA    #$10    
       STA    $A9     
       BNE    LFA42   
LFA3F: LSR            
       BCC    LFA45   
LFA42: JMP    LFB08   
LFA45: LDA    #$08    
       STA    $A9     
       BNE    LFAC2   
LFA4B: LDX    #$00    
       STX    AUDV1   
       ASL            
       BCC    LFAB1   
       INC    $D9     
       INC    $D9     
       BNE    LFA33   
       LSR    $A9     
       BCC    LFA6C   
       LDX    $D8     
       INX            
       CPX    #$20    
       BEQ    LFA65   
       STX    $D8     
LFA65: JSR    LF289   
       INC    $A8     
       INC    $A8     
LFA6C: LDA    $A8     
       AND    #$0F    
       STA    $A8     
       DEC    $A8     
       BPL    LFA7E   
       INC    $A8     
       LDA    #$81    
       STA    $A9     
       BNE    LFA42   
LFA7E: LDX    #$06    
       CPX    $A8     
       BPL    LFA86   
       STX    $A8     
LFA86: LDA    #$80    
       STA    $A9     
       ASL            
       BIT    $F9     
       BVC    LFA91   
       STA    $BC     
LFA91: LDX    #$18    
LFA93: STA    $80,X   
       DEX            
       BPL    LFA93   
       LDA    #$50    
       STA    $C4     
       LDA    #$3F    
       STA    $92     
       INC    $80     
       LDA    #$0A    
       STA    $81     
       JSR    LFCC7   
       AND    #$3C    
       ADC    #$08    
       STA    $FA     
       BNE    LFB08   
LFAB1: ASL            
       BCC    LFAE9   
       LDA    SWCHB   
       LSR            
       BCS    LFABD   
       JMP    LFA39   
LFABD: LSR            
       BCS    LFB08   
       INC    $E1     
LFAC2: LDA    $E1     
       AND    #$0F    
       STA    $E1     
       LDX    #$50    
       STX    $99     
       STX    $9B     
       STX    $A1     
       STX    $A3     
       TAY            
       INY            
       TYA            
       SEC            
       SBC    #$0A    
       BMI    LFADD   
       TAY            
       LDX    #$08    
LFADD: TYA            
       ASL            
       ASL            
       ASL            
       STX    $9D     
       STA    $9F     
       LDA    #$08    
       BNE    LFB06   
LFAE9: ASL            
       BCC    LFAF9   
       LDA    SWCHB   
       LSR            
       BCC    LFB08   
       JSR    LFE77   
       LDA    #$40    
       BNE    LFB06   
LFAF9: LDA    SWCHB   
       LSR            
       LSR            
       BCC    LFB08   
       LDA    #$20    
       LDX    #$00    
       STX    $BC     
LFB06: STA    $A9     
LFB08: LDA    $F9     
       BNE    LFB29   
       LDA    $BC     
       BNE    LFB35   
       LDX    $8E     
       BEQ    LFB1A   
       LDA    $93,X   
       CMP    #$72    
       BCS    LFB35   
LFB1A: LDA    $92     
       CMP    #$7D    
       BCC    LFB26   
       DEC    $92     
       DEC    $92     
       BNE    LFB35   
LFB26: SEC            
       ROR    $F9     
LFB29: BPL    LFB35   
       LDA    $F6     
       BPL    LFB35   
       LDA    $8E     
       BNE    LFB35   
       LSR    $F9     
LFB35: LDX    #$01    
LFB37: LDY    $CB,X   
       BEQ    LFB4E   
       LDA    LFD63,Y 
       STA    AUDC0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D1,X   
       STY    $CD,X   
       LDA    #$00    
       STA    $CB,X   
       BEQ    LFB56   
LFB4E: LDY    $CF,X   
       BEQ    LFB6E   
       DEC    $CF,X   
       BNE    LFB6E   
LFB56: INC    $CD,X   
       LDY    $CD,X   
       LDA    LFD63,Y 
       ASL            
       STA    AUDV0,X 
       BNE    LFB64   
       STA    $D1,X   
LFB64: LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDF0,X 
       LDA    $D1,X   
       STA    $CF,X   
LFB6E: DEX            
       BPL    LFB37   
       LDX    #$06    
LFB73: LDA    $DA,X   
       EOR    $B8     
       AND    #$07    
       BNE    LFB88   
       LDY    $80,X   
       LDA    LFF32,Y 
       BPL    LFB86   
       STA    $92,X   
       BMI    LFB88   
LFB86: STA    $80,X   
LFB88: DEX            
       BPL    LFB73   
LFB8B: LDX    #$04    
LFB8D: LDA    $94,X   
       CMP    #$FE    
       BEQ    LFB9C   
       CMP    #$08    
       BEQ    LFBAE   
       DEX            
       BPL    LFB8D   
       BMI    LFBD7   
LFB9C: BIT    $F9     
       BVC    LFBAE   
       LDY    $D3,X   
       LDA    LFD3F,Y 
       BPL    LFBAE   
       LDA    $A8     
       SEC            
       SBC    #$40    
       STA    $A8     
LFBAE: CPX    #$04    
       BEQ    LFBCD   
       LDA    $95,X   
       STA    $94,X   
       LDA    $C7,X   
       STA    $C6,X   
       LDA    $83,X   
       STA    $82,X   
       LDA    $8A,X   
       STA    $89,X   
       LDA    $DD,X   
       STA    $DC,X   
       LDA    $D4,X   
       STA    $D3,X   
       INX            
       BPL    LFBAE   
LFBCD: LDA    #$00    
       STA    $98     
       STA    $86     
       DEC    $8E     
       BNE    LFB8B   
LFBD7: LDX    #$02    
       LDA    $C5     
       JSR    LFC86   
       INX            
       STX    $BE     
       STX    NUSIZ0  
       STX    NUSIZ1  
       STX    VDELP0  
       STX    VDELP1  
       INX            
       LDA    $B6     
       LDY    $BC     
       BNE    LFBF8   
       LDA    $FA     
       CLC            
       ADC    #$04    
       STA    $B6     
       DEX            
LFBF8: JSR    LFC86   
       LDA    #$14    
       STA    CTRLPF  
       LDA    $94     
       TAX            
       BEQ    LFC0A   
       CMP    #$10    
       BCS    LFC0A   
       LDX    #$10    
LFC0A: STX    $BA     
       CLC            
       ADC    #$08    
       STA    $FB     
       LDX    $82     
       LDA    #$08    
       STA    $E3     
       SEC            
       SBC    $FB     
       STA    $E4     
       LDA    LFF00,X 
       CLC            
       ADC    $E4     
       STA    $AE     
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       LDA    LFF19,X 
       CLC            
       ADC    $E4     
       STA    $B0     
       LDA    $92     
       CLC            
       ADC    #$10    
       STA    $B9     
       LDA    $80     
       TAX            
       LDA    LFF00,X 
       SEC            
       SBC    $92     
       STA    $AA     
       LDA    LFF19,X 
       SEC            
       SBC    $92     
       STA    $AC     
       STA    RESP0   
       STA    RESP1   
       LDA    #$45    
       LDX    $81     
       BEQ    LFC59   
       LDA    LFF00,X 
LFC59: STA    $B2     
       LDA    LFF19,X 
       STA    $B4     
       LDA    #$0C    
       STA    HMM1    
       STA    HMBL    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $BB     
       STA    COLUPF  
       STA    CXCLR   
       STA    WSYNC   
       STA    HMOVE   
LFC74: LDY    INTIM   
       BNE    LFC74   
       STY    WSYNC   
       STY    VBLANK  
       STY    COLUBK  
       STY    GRP0    
       STY    REFP0   
       JMP    LF000   
LFC86: JSR    LFC9D   
       STA    WSYNC   
       STA    $012B   
       STA    HMP0,X  
       INY            
LFC91: DEY            
       BPL    LFC91   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFC9B: BCC    LFCB2   
LFC9D: TAY            
       AND    #$0F    
       STA    $E4     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $E4     
       CMP    #$10    
       BCC    LFC9B   
       SBC    #$0F    
       INY            
LFCB2: ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$70    
       RTS            

LFCB9: LDA    #$01    
       CPY    $BD     
       BEQ    LFCC4   
       CPY    $91     
       BNE    LFCC6   
       ASL            
LFCC4: STA    ENABL   
LFCC6: RTS            

LFCC7: INC    $B7     
       STX    $BA     
       LDX    $B7     
       LDA    $B8     
       ROR            
       ROR            
       ROR            
       EOR    LF000,X 
       EOR    $C4     
       LDX    $BA     
       RTS            

LFCDA: LDA    $E7,X   
       STA    PF0     
       LDA    $EA,X   
       STA    PF1     
       LDA    $ED,X   
       STA    PF2     
       LDA    $F0,X   
       STA    PF0     
       LDA    $F3,X   
       STA    PF1     
       LDA    $F6,X   
       STA    PF2     
       RTS            

LFCF3: LDY    #$00    
       STY    $A3     
       LDX    #$08    
LFCF9: LDY    $99,X   
       CPY    #$50    
       BNE    LFD07   
       CMP    #$00    
       BEQ    LFD1D   
       LDY    #$00    
       STY    $99,X   
LFD07: CLC            
       ADC    $99,X   
       TAY            
       SEC            
       SBC    #$50    
       BPL    LFD14   
       LDA    #$00    
       BEQ    LFD17   
LFD14: TAY            
       LDA    #$08    
LFD17: STY    $99,X   
       DEX            
       DEX            
       BPL    LFCF9   
LFD1D: RTS            

LFD1E: LDA    $E1     
       LSR            
       LSR            
       LDA    #$01    
       BCS    LFD27   
       LSR            
LFD27: AND    $88     
       STA    $88     
       LSR            
       STA    $93     
       RTS            

LFD2F: AND    #$03    
       BEQ    LFD3C   
       TAY            
       JSR    LFCC7   
       AND    LFFF7,Y 
       BEQ    LFD3E   
LFD3C: LDA    #$01    
LFD3E: RTS            

LFD3F: .byte $8E,$8E,$82,$82,$9D,$92,$92,$93,$0A,$0B,$0A,$0A,$0B,$08,$0C,$0C
LFD4F: .byte $20,$38,$00,$20,$24,$3F,$24,$3F,$24,$24,$24,$3F,$3C,$3C,$24,$3C
       .byte $FF,$FF,$FF,$FF
LFD63: .byte $00,$4E,$06,$0D,$14,$1C,$23,$2B,$33,$3A,$42,$4A,$00,$28,$47,$46
       .byte $45,$45,$44,$44,$43,$43,$43,$42,$42,$42,$42,$41,$41,$41,$00,$34
       .byte $36,$26,$00,$31,$87,$8E,$96,$9D,$A5,$AC,$B4,$BB,$C3,$CA,$00
LFD92: .byte $18,$3C,$18,$00,$00,$06,$69,$99,$99,$96,$60,$00,$0C,$12,$1A,$36
       .byte $2C,$24,$18,$00,$18,$24,$3C,$24,$3C,$24,$18,$00,$30,$48,$58,$6C
       .byte $34,$24,$18,$00,$60,$96,$99,$99,$69,$06,$00,$10,$04,$50,$05,$A0
       .byte $15,$08,$40,$00,$10,$04,$08,$20,$14,$00,$00,$10,$38,$6C,$92,$6C
       .byte $38,$10,$00,$10,$28,$44,$28,$10,$00,$00,$10,$28,$10,$00,$00,$00
       .byte $18,$66,$99,$3C,$10,$08,$00,$10,$18,$24,$5A,$BD,$08,$10,$00,$08
       .byte $1E,$1C,$1C,$F8,$DA,$DA,$DA,$36,$1A,$36,$36,$08,$08,$08,$3C,$66
       .byte $66,$66,$66,$66,$66,$3C,$18,$18,$18,$18,$18,$18,$18,$18,$3E,$60
       .byte $60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C
       .byte $0C,$7E,$4C,$2C,$1C,$0C,$3C,$46,$06,$06,$3C,$60,$60,$3E,$3C,$66
       .byte $66,$66,$7C,$60,$62,$3C,$30,$30,$18,$18,$0C,$06,$42,$3E,$3C,$66
       .byte $66,$66,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
LFE50: .byte $00,$00,$00,$00,$00,$00,$00,$00,$50,$FE,$50,$FE,$50,$FE,$50,$FE
       .byte $50,$FE,$50,$FE,$58,$B8,$88,$05,$81,$00,$FE,$00,$FE,$00,$FD,$D9
       .byte $FF,$00,$00,$00,$FD,$FF,$FF
LFE77: LDX    #$25    
LFE79: LDA    LFE50,X 
       STA    $91,X   
       DEX            
       BPL    LFE79   
       LDA    SWCHB   
       LSR            
       LSR            
       LSR            
       AND    #$18    
       STA    $D8     
       JSR    LF289   
       RTS            

LFE8F: .byte $FF

START:
       SEI            
       CLD            
       LDA    #$00    
       LDX    #$00    
LFE96: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LFE96   
       JSR    LFE77   
       JMP    LF3F3   
LFEA2: .byte $50,$60,$90,$A0,$18,$18,$18,$18,$3C,$7E,$FF,$99,$FF,$7E,$3C,$18
       .byte $00,$00,$00,$00,$18,$3C,$7E,$FF,$99,$FF,$7E,$3C,$18,$18,$18,$18
       .byte $00,$C0,$60,$30,$18,$3C,$7E,$FF,$99,$FF,$7E,$3C,$18,$00,$00,$00
       .byte $00,$18,$3C,$7E,$FF,$99,$FF,$7E,$3C,$18,$30,$60,$C0,$00,$00,$22
       .byte $48,$84,$40,$12,$20,$91,$04,$20,$48,$00,$00,$00,$00
LFEEF: .byte $09,$09,$09,$19,$38,$58,$78,$99,$78,$59,$38,$19,$09,$09,$09,$0D
       .byte $FF
LFF00: .byte $A5,$B2,$C2,$CF,$C2,$CF,$DE,$DE,$BC,$C4,$1B,$29,$37,$37,$95,$9D
       .byte $A5,$AD,$B4,$E1,$E9,$CC,$D3,$D9,$D3
LFF19: .byte $EE,$EE,$EE,$EE,$EE,$EE,$EE,$EE,$AF,$AF,$4D,$4D,$4D,$4D,$91,$91
       .byte $91,$91,$91,$B7,$B7,$99,$99,$A1,$99
LFF32: .byte $00,$01,$02,$03,$04,$05,$07,$FF,$09,$FE,$0B,$0A,$0D,$00,$0F,$10
       .byte $11,$12,$0E,$14,$13,$16,$17,$18,$15
LFF4B: .byte $FE,$FD,$FB,$F7,$EF,$DF,$BF,$7F
LFF53: .byte $40,$50,$60,$70,$73,$63,$53,$43,$33,$23,$13,$03,$06,$16,$26,$36
       .byte $46,$56,$66,$76,$49,$59,$69,$79,$7C,$6C,$5C,$4C,$3C,$2C,$1C,$0C
       .byte $0F,$1F,$2F,$3F,$4F,$5F,$6F,$7F,$40,$50,$60
LFF7E: .byte $10,$08,$10,$10,$11,$11,$09,$09,$11,$12,$12,$09,$11,$11,$05,$09
LFF8E: .byte $03,$04,$04,$05,$4F,$7A,$7A,$7A,$7A,$7A,$4F,$7A,$1E,$58,$38,$1E
       .byte $38,$58,$1E,$00,$00,$00,$1E,$1E,$1E,$1E,$00,$00
LFFAA: .byte $40,$49,$00,$09,$80,$89,$08,$0A,$0C,$0E,$0C,$0A,$08,$00,$A8,$A8
       .byte $B8,$B8,$3C,$3C,$3C,$3C,$18,$24,$5A,$18,$18,$7E,$BD,$BD,$A5,$3C
       .byte $FF,$55,$AA,$AA,$00,$24,$5A,$18,$18,$7E,$BD,$BD,$A5,$3C,$FF,$55
       .byte $AA,$AA,$00,$00,$48,$22,$84,$40,$12,$20,$91,$04,$20,$48,$48,$22
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFF7: .byte $00,$03,$07,$90,$FE,$90,$FE,$90,$FE
