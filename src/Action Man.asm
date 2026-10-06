; Disassembly of roms/Action Man.bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Action Man.bin
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
CXP0FB  =  $32
CXP1FB  =  $33
INPT0   =  $38
INPT1   =  $39
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296
LF90D   =   $F90D
LFA72   =   $FA72
LFB28   =   $FB28

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       TXS            
       STX    $85     
       INX            
       BNE    LF005   
       STX    SWACNT  
       STX    SWBCNT  
       JSR    LFF39   
       BRK            
       .byte $80 ;.NOP
LF018: LDA    #$C2    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       LDA    $86     
       ASL            
       ASL            
       ASL            
       ASL            
       SEC            
       ADC    $86     
       STA    $86     
       LDA    $88     
       EOR    #$FF    
       STA    $88     
       STA    WSYNC   
       LDY    $C5     
       STY    COLUBK  
       LDY    #$CF    
       STY    TIM64T  
       LDA    $EE     
       EOR    #$40    
       STA    COLUPF  
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    $81     
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    VSYNC   
       LDA    $C1     
       AND    #$07    
       BNE    LF078   
       LDX    $8A     
       BMI    LF06F   
       INX            
       CPX    #$40    
       BNE    LF076   
       LDX    #$C0    
       BNE    LF076   
LF06F: DEX            
       CPX    #$80    
       BNE    LF076   
       LDX    #$00    
LF076: STX    $8A     
LF078: LDA    $CD     
       BNE    LF0EE   
       LDA    $84     
       AND    #$02    
       BEQ    LF0A6   
       LDX    $87     
       BIT    $D8     
       BMI    LF08D   
       LSR            
       AND    $C1     
       BNE    LF0A3   
LF08D: LDA    $D2     
       TAY            
       AND    #$08    
       BEQ    LF099   
       CPX    #$22    
       BEQ    LF0A3   
       DEX            
LF099: TYA            
       AND    #$04    
       BEQ    LF0A3   
       CPX    #$7F    
       BEQ    LF0A3   
       INX            
LF0A3: TXA            
       BNE    LF0EC   
LF0A6: LDA    $F9     
       BMI    LF0B2   
       LDA    $86     
       ORA    #$80    
       AND    #$DF    
       STA    $F9     
LF0B2: AND    #$7F    
       CLC            
       ADC    #$21    
       TAX            
       CMP    $87     
       BEQ    LF0C0   
       BCS    LF0C4   
       BCC    LF0DB   
LF0C0: STA    $F9     
       BEQ    LF0EC   
LF0C4: LDA    #$02    
       BIT    $D8     
       BPL    LF0CB   
       ASL            
LF0CB: AND    $86     
       LSR            
       CLC            
       ADC    $87     
       STA    $87     
       CPX    $87     
       BCS    LF0EE   
       DEC    $87     
       BNE    LF0EE   
LF0DB: LDA    $86     
       AND    #$20    
       BEQ    LF0EE   
       LDA    #$FF    
       BIT    $D8     
       BPL    LF0E9   
       LDA    #$FE    
LF0E9: CLC            
       ADC    $87     
LF0EC: STA    $87     
LF0EE: LDA    $86     
       AND    #$72    
       BNE    LF107   
       LDX    $89     
       INX            
       LDA    $C1     
       BMI    LF100   
       DEX            
       DEX            
       BPL    LF105   
       INX            
LF100: CPX    #$09    
       BCC    LF105   
       DEX            
LF105: STX    $89     
LF107: LDX    #$01    
       LDA    $A0     
       CMP    #$65    
       BEQ    LF118   
       DEX            
       LDA    $A1     
       CMP    #$65    
       BEQ    LF118   
       LDX    $82     
LF118: LDA    $A0,X   
       STA    $BE     
       CLC            
       ADC    #$04    
       STA    $BF     
       LDX    #$05    
       STX    $F3     
LF125: LDA    $98,X   
       LDX    #$FF    
       JSR    LFF89   
       LDX    $F3     
       STY    $AA,X   
       DEC    $F3     
       DEX            
       BNE    LF125   
       INX            
       LDA    $CD     
       BEQ    LF15E   
       LDA    $AA     
       ORA    #$0E    
       STA    $AA     
       DEC    $CD     
       BNE    LF156   
       LDA    #$00    
       STA    $D0     
       STA    $CE     
       STA    $D3     
       STA    $C5     
       LDA    #$B0    
       STA    $98     
       LDA    #$2C    
       STA    $80     
LF156: LDA    #$0F    
       CMP    $CD     
       BNE    LF15E   
       STX    $D0     
LF15E: LDA    $CB,X   
       BEQ    LF181   
       DEC    $CB,X   
       BNE    LF16E   
       STA    $C5     
       LDY    #$65    
       STY    $A0,X   
       BNE    LF181   
LF16E: AND    #$07    
       TAY            
       LDA    LFF15,Y 
       CLC            
       ADC    $9E,X   
       STA    $9E,X   
       LDA    LFF1D,Y 
       CLC            
       ADC    $A0,X   
       STA    $A0,X   
LF181: DEX            
       BPL    LF15E   
       LDX    #$01    
LF186: LDA    $B2,X   
       STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       LDA    $B4,X   
       STA    AUDF0,X 
       DEX            
       BPL    LF186   
       LDA    $82     
       EOR    #$01    
       STA    $82     
       BNE    LF1A6   
       LDX    $D4     
       BEQ    LF1A6   
       DEX            
       STX    $D4     
LF1A6: LDX    #$01    
LF1A8: LDA    $B4,X   
       AND    #$1F    
       STA    $FB     
       LDA    $B4,X   
       SEC            
       SBC    #$20    
       AND    #$E0    
       STA    $FC     
       LDA    $C1     
       AND    #$03    
       BNE    LF238   
       LDY    $B0,X   
       BEQ    LF221   
       LDA    $FC     
       BNE    LF211   
       LDY    $B0,X   
       BMI    LF226   
       LDA    LFECA,Y 
       AND    #$E0    
       STA    $FC     
       LDA    LFED3,Y 
       AND    #$0F    
       STA    $FE     
       LDA    LFED3,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $B2,X   
       AND    #$0F    
       CMP    $FE     
       BEQ    LF219   
       STA    $FD     
       LDA    $B2,X   
       AND    #$F0    
       ORA    $FD     
       STA    $B2,X   
       LDA    LFEDC,Y 
       AND    #$1F    
       STA    $FE     
       LDA    LFEDC,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$04    
       BCC    LF206   
       ORA    #$F8    
LF206: CLC            
       ADC    $FB     
       AND    #$1F    
       CMP    $FE     
       BEQ    LF219   
       STA    $FB     
LF211: LDA    $FB     
       ORA    $FC     
       STA    $B4,X   
       BNE    LF221   
LF219: LDA    #$00    
       STA    $B0,X   
       STA    $B2,X   
       STA    $B4,X   
LF221: DEX            
       BPL    LF1A8   
       BMI    LF238   
LF226: INC    $B0,X   
       LDA    $B0,X   
       AND    #$1F    
       TAY            
       CMP    #$15    
       BNE    LF233   
       BEQ    LF219   
LF233: JSR    LFD35   
       BNE    LF221   
LF238: LDA    $83     
       ROR            
       BCC    LF24A   
       LDA    $86     
       BNE    LF24A   
       LDA    $9A     
       STA    $EE     
       STA    $EC     
       ASL            
       STA    $C5     
LF24A: BIT    $83     
       BVC    LF258   
       INC    $C6     
       BNE    LF258   
       DEC    $C6     
       BIT    $D2     
       BPL    LF273   
LF258: LDA    SWCHB   
       STA    $FB     
       EOR    $85     
       STA    $FC     
       LDA    $FB     
       AND    #$02    
       BEQ    LF27D   
       LDA    $FC     
       AND    #$01    
       BEQ    LF2A1   
       LDA    $FB     
       AND    #$01    
       BEQ    LF2A1   
LF273: LDA    #$80    
       STA    $83     
       JSR    LFF39   
       JMP    LF2A1   
LF27D: JSR    LFF39   
       LDA    $FC     
       AND    #$02    
       BNE    LF28A   
       DEC    $8D     
       BNE    LF2A1   
LF28A: INC    $84     
       LDA    #$00    
       STA    $83     
       LDA    $84     
       AND    #$03    
       BNE    LF29D   
       CLC            
       LDA    $84     
       ADC    #$3C    
       STA    $84     
LF29D: LDX    #$1E    
       STX    $8D     
LF2A1: LDA    $FB     
       STA    $85     
       LDA    #$15    
       STA    CTRLPF  
       LDA    #$F3    
       LDX    #$00    
       JSR    LFFB3   
       LDA    $CA     
       CMP    #$08    
       BCC    LF2E0   
       LDX    $82     
       BEQ    LF2E0   
       CLC            
       LDA    $D1     
       BNE    LF2C0   
       SEC            
LF2C0: ROL    $D1     
       BIT    $D1     
       BVC    LF2E0   
       BRK            
       .byte $80 ;.NOP
       LDA    #$F0    
       STA    $CE     
       STA    $CD     
       LDA    #$9A    
       STA    $C5     
       LDX    $D7     
       INX            
       TXA            
       AND    #$0F    
       STA    $D7     
       LDA    #$00    
       STA    $D1     
       STA    $CA     
LF2E0: LDX    #$0E    
       LDY    #$FE    
LF2E4: STY    $E1,X   
       DEX            
       DEX            
       BPL    LF2E4   
       LDX    $D7     
       LDA    $CD     
       BNE    LF2F5   
       LDA    LFEB2,X 
       STA    $AA     
LF2F5: LDA    LFF29,X 
       STA    $D8     
       AND    #$03    
       STA    $91     
       LDX    #$01    
       BIT    $83     
       BMI    LF326   
       BVS    LF326   
       LDA    $84     
       STA    NUSIZ0  
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    LFDE2   
       STA    $EA     
       LDA    #$00    
       STA    NUSIZ1  
       LDA    #$85    
       STA    $E0     
       STA    $E4     
       STA    $E8     
       LDA    #$77    
       JSR    LFFB3   
       BNE    LF365   
LF326: LDA    #$64    
       JSR    LFFB3   
       LDX    #$08    
LF32D: LDA    $C0,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFDE1,Y 
       STA    $E0,X   
       LDA    $C0,X   
       AND    #$0F    
       TAY            
       LDA    LFDE1,Y 
       STA    $E2,X   
       DEX            
       DEX            
       DEX            
       DEX            
       BPL    LF32D   
       LDX    #$00    
       LDY    #$7C    
LF34D: LDA    $E0,X   
       CMP    #$2D    
       BNE    LF35B   
       STY    $E0,X   
       INX            
       INX            
       CPX    #$0A    
       BNE    LF34D   
LF35B: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
LF365: LDA    #$00    
       STA    VBLANK  
       LDA    #$06    
       STA    $FB     
LF36D: LDA    INTIM   
       BMI    LF36D   
LF372: LDY    $FB     
       LDA    ($E0),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($E2),Y 
       STA    GRP1    
       LDA    ($E4),Y 
       STA    GRP0    
       LDA    ($E6),Y 
       STA    $FC     
       LDA    ($E8),Y 
       TAX            
       LDA    ($EA),Y 
       TAY            
       LDA    $FC     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $FB     
       BPL    LF372   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       LDA    $CE     
       BPL    LF3BA   
       LDA    #$65    
       STA    $A0     
       STA    $A1     
       LDY    #$09    
LF3B0: STA    WSYNC   
       DEY            
       BPL    LF3B0   
       STY    $98     
       JMP    LF69C   
LF3BA: LDA    $87     
       CLC            
       ADC    $D1     
       JSR    LFF87   
       INX            
       LDA    $87     
       SEC            
       SBC    #$03    
       SBC    $D1     
       JSR    LFF89   
       INX            
       INX            
       LDA    $87     
       CLC            
       ADC    #$09    
       ADC    $D1     
       JSR    LFF89   
       LDY    #$00    
       LDX    $82     
       LDA    #$35    
       STA    NUSIZ1  
       LDA    #$15    
       STA    NUSIZ0  
       LDA    $AA     
       STA    COLUP0  
       LDA    $80     
       STA    COLUP1  
LF3ED: JSR    LFC6C   
       CPY    $89     
       BCC    LF3ED   
       LDA    #$E0    
       STA    GRP0    
       STA    HMCLR   
       LDA    #$10    
       STA    HMP0    
       JSR    LFCBB   
       LDA    #$F0    
       STA    GRP0    
       JSR    LFCBB   
       LDA    #$F8    
       STA    GRP0    
       JSR    LFCBB   
       LDA    #$FC    
       STA    GRP0    
       JSR    LFCBB   
       LDA    #$BA    
       STA    GRP0    
       LDA    #$84    
       STA    GRP1    
       LDA    #$10    
       STA    HMP1    
       JSR    LFCBB   
       LDA    #$99    
       STA    GRP0    
       LDA    #$AA    
       STA    GRP1    
       LDA    #$20    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
       LDA    #$07    
       STA    HMP1    
       STA    NUSIZ0  
       LDA    #$A8    
       STA    GRP0    
       JSR    LFC2F   
       LDA    #$10    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       STA    GRP0    
       LDA    #$FF    
       STA    GRP1    
       LDA    $AA     
       STA    COLUP1  
       LDA    $D0     
       AND    $C1     
       BEQ    LF461   
       JMP    LFD7C   
LF461: JSR    LFC2F   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$70    
       STA    HMP1    
       LDA    #$10    
       STA    HMP0    
       LDA    #$FC    
       STA    GRP0    
       STA    GRP1    
       LDA    #$2C    
       STA    COLUP1  
       JSR    LFC6C   
       LDA    #$78    
       STA    GRP0    
       LDA    #$37    
       STA    NUSIZ1  
       STA    HMCLR   
       LDA    #$10    
       STA    HMP1    
       LDA    #$F0    
       STA    HMM1    
       JSR    LFCBB   
       LDA    #$FF    
       STA    ENAM1   
       JSR    LFCBB   
       LDA    #$C0    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
       LDA    #$05    
       STA    NUSIZ0  
       LDA    #$DB    
       STA    GRP0    
       LDA    #$C0    
       STA    GRP1    
       JSR    LFC2F   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    HMP0    
       JSR    LFC6C   
       LDA    #$7E    
       STA    GRP0    
       STA    HMCLR   
       LDA    #$B0    
       STA    HMP0    
       LDA    #$3C    
       LDX    $AA     
       STA    WSYNC   
       STA    ENABL   
       STX    COLUP1  
       STA    GRP0    
       LDA    $AB     
       STA    HMBL    
       AND    #$0F    
       TAX            
       DEX            
LF4D9: DEX            
       BPL    LF4D9   
       STA    RESBL   
       LDA    #$0E    
       STA    WSYNC   
       STA    HMOVE   
       INY            
       INY            
       STA    COLUP0  
       LDA    #$D8    
       STA    GRP1    
       LDA    #$18    
       STA    NUSIZ0  
       LDA    #$81    
       STA    GRP0    
       LDX    $82     
       LDA    $8B     
       BEQ    LF501   
       STA    $BE     
       CLC            
       ADC    #$04    
       STA    $BF     
LF501: INY            
       STA    WSYNC   
       LDA    #$C3    
       STA    GRP0    
       LDA    #$C0    
       STA    GRP1    
       STA    HMCLR   
       JSR    LFC3E   
       LDA    #$42    
       STA    GRP0    
       LDA    #$50    
       STA    HMP0    
       JSR    LFC8B   
       LDA    #$81    
       STA    GRP0    
       LDA    #$15    
       STA    NUSIZ0  
       LDA    $AA     
       STA    COLUP0  
       JSR    LFC3E   
       LDA    #$C3    
       STA    GRP0    
       LDA    #$2C    
       STA    COLUP1  
       LDA    #$F0    
       STA    HMP0    
       JSR    LFC8B   
       LDA    #$E7    
       STA    GRP1    
       LDA    #$C6    
       STA    GRP0    
       JSR    LFC37   
       LDA    #$CC    
       STA    GRP0    
       JSR    LFC3E   
       LDA    $AA     
       STA    COLUP1  
       JSR    LFC3E   
       LDA    #$FF    
       STA    GRP1    
       LDA    #$20    
       STA    HMP0    
       JSR    LFC8B   
       LDA    #$2C    
       STA    COLUP0  
       LDA    #$3C    
       STA    GRP0    
       JSR    LFC3E   
       JSR    LFC3E   
       LDA    #$04    
       STA    COLUP0  
       JSR    LFC3E   
       LDA    $AA     
       STA    COLUP0  
       LDA    #$2C    
       STA    COLUP1  
       LDA    #$D8    
       STA    GRP1    
       LDA    #$C3    
       STA    GRP0    
       JSR    LFC3E   
       JSR    LFC3E   
       LDA    #$FF    
       STA    GRP1    
       JSR    LFC3E   
       JSR    LFC3E   
       JSR    LFC3E   
       LDA    $AA     
       STA    COLUP1  
       LDA    #$2C    
       STA    COLUP0  
       LDA    #$3C    
       STA    GRP0    
       LDA    #$FC    
       STA    GRP1    
       JSR    LFC3E   
       JSR    LFC3E   
       LDA    #$04    
       STA    COLUP0  
       LDA    #$00    
       STA    HMP0    
       JSR    LFC3E   
       LDA    #$2C    
       STA    COLUP0  
       LDA    #$10    
       STA    HMM1    
       LDA    #$F0    
       STA    HMP1    
       LDA    #$FC    
       STA    GRP1    
       JSR    LFC8B   
       JSR    LFC3E   
       LDA    $AA     
       STA    COLUP0  
       LDA    #$2C    
       STA    COLUP1  
       LDA    #$C3    
       STA    GRP0    
       JSR    LFC8B   
       LDA    #$F8    
       STA    GRP1    
       JSR    LFC37   
       JSR    LFC3E   
       LDA    $AA     
       STA    COLUP0  
       LDA    #$C3    
       STA    GRP0    
       JSR    LFC8B   
       LDA    $AA     
       STA    COLUP1  
       LDA    #$2C    
       STA    COLUP0  
       LDA    #$3C    
       STA    GRP0    
       JSR    LFC3E   
       JSR    LFC8B   
       JSR    LFC37   
       LDA    #$04    
       STA    COLUP0  
       JSR    LFC3E   
       LDA    $AA     
       STA    COLUP0  
       LDA    #$C3    
       STA    GRP0    
       LDA    #$2C    
       STA    COLUP1  
       LDA    #$F0    
       STA    GRP1    
       JSR    LFC3E   
       JSR    LFC3E   
       JSR    LFC37   
       JSR    LFC37   
       JSR    LFC3E   
       LDA    #$3C    
       STA    GRP0    
       LDA    #$F0    
       STA    GRP1    
       LDA    $AA     
       STA    COLUP1  
       LDA    #$2C    
       STA    COLUP0  
       STA    ENAM1   
       STA    HMCLR   
       LDA    #$0C    
       STA    COLUPF  
       LDA    $8A     
       AND    #$1F    
       STA    $F2     
       TAX            
LF64B: INX            
       TXA            
       AND    #$1F    
       TAX            
       CPX    $F2     
       BEQ    LF69C   
       LDA    LFFDD,X 
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
       STA    HMP1    
       INY            
       CPY    $BE     
       BCS    LF678   
       CPY    $90     
       BCC    LF680   
       LDA    #$02    
       STA    ENABL   
       CPY    $92     
       BCC    LF680   
       LDA    #$F0    
       STA    ENABL   
       STA    $90     
       BMI    LF64B   
LF678: LDA    #$02    
       STA    ENAM0   
       CPY    $BF     
       BCS    LF694   
LF680: BIT    $88     
       BMI    LF68C   
       LDA    INPT0   
       BMI    LF64B   
       STY    $81     
       BPL    LF64B   
LF68C: LDA    INPT1   
       BMI    LF64B   
       STY    $81     
       BPL    LF64B   
LF694: LDA    #$F0    
       STA    $BE     
       STA    ENAM0   
       BMI    LF64B   
LF69C: STA    WSYNC   
       STA    HMCLR   
       LDX    $82     
LF6A2: JSR    LFC8B   
       CPY    #$5E    
       BNE    LF6A2   
       LDA    $EE     
       ADC    #$D0    
       STA    COLUBK  
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       LDA    #$08    
       STA    COLUPF  
       LDA    #$AC    
       STA    REFP1   
       ADC    $EE     
       STA    COLUPF  
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$10    
       STA    HMM0    
       STA    HMM1    
       STA    ENAM0   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$02    
       LDA    #$30    
       INY            
LF6D6: DEX            
       BPL    LF6D6   
       STA    RESP0   
       STA    RESM0   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$1E    
       LDX    #$04    
LF6E5: DEX            
       BPL    LF6E5   
       STA    RESP1   
       STA    RESM1   
       STA    CXCLR   
       LDX    $82     
       STA    HMOVE   
       STA    COLUBK  
       JSR    LFCF6   
LF6F7: LDA    LFE2C,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       LDA    ($EC),Y 
       STA    COLUBK  
       JSR    LFCF6   
       CPY    #$68    
       BNE    LF6F7   
       LDA    #$16    
       ADC    $EE     
       STA    COLUP0  
LF713: STA    WSYNC   
       STA    HMOVE   
       LDA    LFE3B,Y 
       STA    COLUBK  
       LDA    LFE2C,Y 
       STA    GRP0    
       STA    GRP1    
       LDA    #$6B    
       ADC    $EE     
       STA    COLUP1  
       STA    HMCLR   
       JSR    LFCF6   
       CPY    #$6F    
       BNE    LF713   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$EC    
       STA    HMM0    
       STA    HMM1    
       STA    COLUBK  
       LDA    #$02    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    REFP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    $AE     
       INY            
       STY    $F4     
       LDX    #$00    
       JSR    LFFC8   
       LDA    #$35    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    $82     
       LDY    $F4     
       INY            
       STA    HMCLR   
       JSR    LFCDC   
       INY            
       STY    $F4     
       LDX    #$01    
       LDA    $AF     
       JSR    LFFC8   
       LDA    #$70    
       STA    GRP0    
       STA    GRP1    
       LDX    $82     
       LDY    $F4     
       INY            
       STA    HMCLR   
       JSR    LFCDC   
       STX    ENAM0   
       STX    ENAM1   
       LDA    $EE     
       STA    COLUBK  
       LDA    #$F8    
       STA    GRP0    
       STA    GRP1    
       JSR    LFCDC   
       LDA    #$88    
       STA    GRP0    
       STA    GRP1    
       JSR    LFCDC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    CXP0FB  
       STA    RESP0   
       INY            
       STA    $EA     
       LDA    CXP1FB  
       STA    $E8     
       STA    CXCLR   
       JSR    LFC02   
       PHA            
       PLA            
       LDA    $EE     
       ADC    #$EC    
       STA    COLUP0  
       STA    RESP1   
       LDA    #$10    
       STA    WSYNC   
       STA    HMOVE   
       ADC    $EE     
       STA    COLUBK  
       JSR    LFCDC   
       LDA    #$04    
       STA    $FA     
       LDA    #$13    
       STA    CTRLPF  
       JSR    LFCDC   
       LDA    #$F0    
       STA    PF0     
       STA    GRP0    
       LDA    #$12    
       STA    HMP1    
       LDA    #$1E    
       ADC    $EE     
       STA    COLUP1  
       LDX    $82     
       INY            
       LDA    #$FF    
       STA    GRP1    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMP0    
LF7F5: JSR    LFCDC   
       DEC    $FA     
       BNE    LF7F5   
       LDA    #$03    
       STA    ENAM0   
       STA    $FA     
LF802: JSR    LFCDC   
       DEC    $FA     
       BPL    LF802   
       INY            
       LDX    #$00    
       LDA    #$E0    
       STA    PF1     
       LDA    #$11    
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STA    CTRLPF  
       LDA    #$D8    
       ADC    $EE     
       STA    COLUPF  
       STA    COLUP0  
       ADC    #$06    
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STY    $F4     
       LDA    $AC     
       JSR    LFFC8   
       JSR    LFCF4   
       INX            
       STY    $F4     
       STA    HMCLR   
       LDA    #$34    
       STA    COLUP0  
       LDA    $AD     
       JSR    LFFC8   
       LDA    #$56    
       STA    COLUP1  
       LDA    $C2     
       STA    NUSIZ0  
       LDA    $C3     
       STA    NUSIZ1  
       LDX    $82     
       LDY    $F4     
       INY            
       STA    HMCLR   
       JSR    LFCDC   
       LDA    #$A0    
       STA    PF1     
       STA    HMCLR   
       LDA    #$FE    
       STA    $DD     
       STA    $DF     
       LDA    #$02    
       STA    $DC     
       LDA    #$17    
       STA    $DE     
       LDA    $C1     
       AND    #$08    
       BEQ    LF87E   
       LDA    #$17    
       STA    $DC     
       LDA    #$02    
       STA    $DE     
LF87E: LDA    #$14    
       STA    $D6     
       STA    WSYNC   
       STA    HMOVE   
       STA    CXCLR   
LF888: INY            
       CPY    $90     
       BCC    LF89D   
       LDA    #$02    
       STA    ENABL   
       CPY    $92     
       BCC    LF89D   
       LDA    #$F0    
       STA    ENABL   
       STA    $90     
       BMI    LF8A3   
LF89D: LDA    INPT0,X 
       BMI    LF8A3   
       STY    $81     
LF8A3: STA    WSYNC   
       STA    HMOVE   
       STY    $F4     
       LDY    $D6     
       LDA    ($DC),Y 
       STA    GRP0    
       LDA    ($DE),Y 
       STA    GRP1    
       DEY            
       BEQ    LF8BC   
       STY    $D6     
       LDY    $F4     
       BNE    LF888   
LF8BC: LDA    $DE     
       SEC            
       SBC    #$0B    
       STA    $DE     
       STY    PF0     
       STY    PF1     
       LDY    $F4     
LF8C9: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       JSR    LFC81   
       LDA    #$B4    
       STA    ENABL   
       ADC    $EE     
       STA    COLUBK  
       CLC            
       ADC    #$4A    
       STA    COLUP0  
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    RESP0   
       LDA    #$87    
       STA    TIM64T  
       LDA    #$56    
       STA    COLUP1  
       STA    RESP1   
       LDA    $8E     
       BEQ    LF90D   
       BIT    CXP1FB  
       BVC    LF902   
       LDX    #$01    
       BNE    LF908   
LF902: BIT    CXP0FB  
       BVC    LF90D   
       LDX    #$00    
LF908: JSR    LFD40   
       BRK            
       ASL    $A6     
       .byte $82 ;.NOP
       STA    CXCLR   
       LDA    $D2     
       AND    LFF0F,X 
       BNE    LF91E   
       LDA    $CB,X   
       BNE    LF971   
       INX            
       INX            
LF91E: LDA    $81     
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$05    
       BCS    LF941   
       STA    $F2     
       SEC            
       LDA    #$05    
       SBC    $F2     
       LDY    $84     
       BPL    LF934   
       ASL            
LF934: CLC            
       ADC    $9C,X   
       CMP    LFF12   
       BCC    LF965   
       LDA    LFF12   
       BNE    LF965   
LF941: TAY            
       DEY            
       DEY            
       DEY            
       DEY            
       STY    $F2     
       LDA    $84     
       BPL    LF94E   
       ASL    $F2     
LF94E: SEC            
       LDA    $9C,X   
       SBC    $F2     
       CPX    #$02    
       BCC    LF95D   
       CMP    #$12    
       BCS    LF965   
       LDA    #$12    
LF95D: CMP    LFF11   
       BCS    LF965   
       LDA    LFF11   
LF965: STA    $9C,X   
       LDA    #$01    
       AND    $84     
       BNE    LF971   
       LDA    $9C     
       STA    $9D     
LF971: LDX    #$00    
       LDA    SWCHA   
       STA    $D2     
LF978: LDA    $D2     
       STX    $F3     
       AND    LFF0F,X 
       BEQ    LF984   
       JMP    LFA20   
LF984: LDA    $83     
       BMI    LF98B   
LF988: JMP    LFA36   
LF98B: LDA    $CE     
       BNE    LF988   
       LDA    $A0,X   
       CMP    #$65    
       BNE    LF9AF   
       BIT    $85     
       BVC    LF9A6   
       LDA    $84     
       AND    #$01    
       BEQ    LFA0C   
       LDA    LFF11,X 
       CMP    $9C,X   
       BNE    LFA24   
LF9A6: LDY    LFF13,X 
LF9A9: STY    $9E,X   
       BRK            
       .byte $02 ;.JAM
       LDX    $F3     
LF9AF: LDA    $CB,X   
       BNE    LFA28   
       DEC    $A0,X   
       DEC    $A0,X   
       CLC            
       LDA    $89     
       ADC    #$02    
       CMP    $A0,X   
       BCC    LFA28   
       BRK            
       .byte $03 ;.SLO
       LDX    $F3     
       LDA    #$20    
       STA    $CB,X   
       SEC            
       LDA    $87     
       SBC    #$09    
       CMP    $9E,X   
       BCS    LFA28   
       ADC    #$19    
       CMP    $9E,X   
       BCC    LFA28   
       BRK            
       .byte $04 ;.NOP
       LDA    #$C0    
       STA    $C5     
       LDX    $F3     
       LDY    #$08    
       INC    $CA     
       LDA    $D3     
       BEQ    LF9EE   
       STY    $CA     
       SEC            
       LDA    #$99    
       BNE    LFA01   
LF9EE: LDA    #$01    
       CPY    $CA     
       BNE    LFA00   
       LDA    $84     
       AND    #$02    
       BEQ    LF9FE   
       LDA    #$40    
       STA    $83     
LF9FE: LDA    #$10    
LFA00: CLC            
LFA01: JSR    LFC0A   
       LDA    $CA     
       CMP    #$08    
       BCS    LFA36   
       BCC    LFA28   
LFA0C: LDA    $9C     
       LDY    LFF13   
       CMP    LFF11   
       BEQ    LF9A9   
       LDY    LFF14   
       CMP    LFF12   
       BEQ    LF9A9   
       BNE    LFA36   
LFA20: LDA    $CB,X   
       BNE    LFA36   
LFA24: LDA    #$65    
       STA    $A0,X   
LFA28: INX            
       LDA    $84     
       AND    #$01    
       BEQ    LFA36   
       CPX    #$02    
       BEQ    LFA36   
       JMP    LF978   
LFA36: LDA    INTIM   
       BMI    LFA36   
       LDX    $8E     
       LDA    LFEAB,X 
       STA    WSYNC   
       STA    GRP0    
       LDX    $CA     
       INX            
       TXA            
       ASL            
       ASL            
       ASL            
       LDX    #$C0    
       STX    TIM64T  
       TAX            
       LDY    #$08    
LFA53: LDA    LFE2B,X 
       STA    WSYNC   
       STA    GRP1    
       DEX            
       DEY            
       BNE    LFA53   
       STA    GRP0    
       LDX    $D0     
       BNE    LFA72   
       LDX    #$B0    
       BIT    $EA     
       BVS    LFA6E   
       BIT    $E8     
       BVC    LFA72   
LFA6E: STX    $98     
       BRK            
       ORA    $A6     
       .byte $82 ;.NOP
       LDA    #$00    
       STA    $F2     
       LDA    $C2,X   
       BMI    LFAB7   
LFA7C: LDA    $86     
       ROL            
       BCC    LFA83   
       INC    $F2     
LFA83: LDA    $9A,X   
       CMP    #$16    
       BCS    LFAB1   
       LDY    #$80    
       LDA    $C2,X   
       BPL    LFA91   
       LDY    #$C0    
LFA91: STY    $C2,X   
       LDA    $83     
       BPL    LFAA6   
       SED            
       LDA    $C8     
       CLC            
       ADC    #$0A    
       STA    $C8     
       BCC    LFAA6   
       LDA    #$01    
       JSR    LFC09   
LFAA6: CLD            
       LDY    #$56    
       LDA    $C2,X   
       ASL            
       BPL    LFAB0   
       LDY    #$89    
LFAB0: TYA            
LFAB1: SBC    $F2     
       STA    $9A,X   
       BNE    LFACC   
LFAB7: ASL            
       BMI    LFAC6   
       LDA    $9A,X   
       CMP    #$48    
       BNE    LFA7C   
       LDA    #$04    
       STA    $C2,X   
       BNE    LFA83   
LFAC6: LDA    #$88    
       STA    $C2,X   
       BNE    LFAB1   
LFACC: LDA    $83     
       BPL    LFB28   
       LDA    $98     
       STA    $90     
       CLC            
       ADC    #$07    
       STA    $92     
       LDX    $D0     
       BEQ    LFAED   
       LDA    #$77    
       LDX    $D5     
       BEQ    LFAEB   
       LDX    $CD     
       CPX    #$0D    
       BCS    LFAEB   
       LDA    #$FF    
LFAEB: STA    $92     
LFAED: LDA    $84     
       AND    #$02    
       BEQ    LFB01   
       LDX    $98     
       CPX    #$A0    
       BCC    LFB01   
       LDX    #$FF    
       STX    $98     
       BIT    INPT5   
       BMI    LFB28   
LFB01: LDA    $91     
       SEC            
       ADC    $98     
       TAX            
       BIT    $D8     
       BVC    LFB10   
       BIT    $86     
       BVC    LFB10   
       INX            
LFB10: LDA    $D1     
       BEQ    LFB16   
       LDX    #$FF    
LFB16: STX    $98     
       CPX    #$14    
       BCS    LFB22   
       LDA    $87     
       STA    $99     
       BNE    LFB28   
LFB22: CPX    #$1C    
       BCS    LFB28   
       BRK            
       ORA    ($E6,X) 
       CMP    ($D0,X) 
       .byte $23 ;.RLA
       INC    $C7     
       BNE    LFB38   
       BIT    $83     
       BMI    LFB38   
       LDA    #$41    
       STA    $83     
LFB38: BIT    $83     
       BPL    LFB4F   
       LDA    $CD     
       BNE    LFB4F   
       LDA    $D8     
       AND    #$1C    
       BEQ    LFB4F   
       TAX            
       LSR            
       LSR            
       AND    $C7     
       BNE    LFB4F   
       STX    $CF     
LFB4F: LDA    $83     
       BPL    LFB93   
       LDA    $CE     
       BMI    LFB93   
       LDA    $84     
       AND    #$02    
       TAY            
       BEQ    LFB6A   
       AND    $D2     
       BNE    LFB93   
       BIT    $85     
       BMI    LFB6A   
       LDX    $D4     
       BEQ    LFB6E   
LFB6A: LDA    $CF     
       BEQ    LFB93   
LFB6E: LDA    #$88    
       STA    $CD     
       STA    $D4     
       LSR            
       STA    $80     
       LDA    #$07    
       AND    $9A     
       BNE    LFB8D   
       TYA            
       BNE    LFB8D   
       LDA    $D7     
       ROR            
       BCC    LFB8D   
       CMP    #$02    
       BCC    LFB8D   
       STA    $D3     
       BRK            
       PHP            
LFB8D: LDA    #$00    
       STA    $CF     
       BRK            
       .byte $07 ;.SLO
LFB93: LDX    #$00    
       STX    $8B     
       LDA    $89     
       CLC            
       ADC    #$0D    
       STA    $F2     
       JSR    LFC21   
       BEQ    LFBC3   
       BMI    LFBD5   
       JSR    LFC21   
       BEQ    LFBB3   
       BMI    LFBB7   
       LDX    $82     
LFBAE: JSR    LFBFB   
       BNE    LFBF1   
LFBB3: LDX    #$00    
       BEQ    LFBAE   
LFBB7: LDX    #$01    
       JSR    LFC03   
       LDA    $A0     
       STA    $8B     
       JMP    LFBB3   
LFBC3: JSR    LFC21   
       BEQ    LFBF1   
       BMI    LFBCE   
       LDX    #$01    
       BPL    LFBAE   
LFBCE: LDX    #$01    
LFBD0: JSR    LFC03   
       BNE    LFBF1   
LFBD5: JSR    LFC21   
       BEQ    LFBE9   
       BMI    LFBED   
       LDX    #$00    
       JSR    LFC03   
       LDA    $A1     
       STA    $8B     
       LDX    #$01    
       BPL    LFBAE   
LFBE9: LDX    #$00    
       BEQ    LFBD0   
LFBED: LDX    $82     
       BPL    LFBD0   
LFBF1: LDA    INTIM   
       BMI    LFBF1   
       STA    HMCLR   
       JMP    LF018   
LFBFB: LDA    $9E,X   
       LDX    #$02    
LFBFF: JSR    LFF89   
LFC02: RTS            

LFC03: LDA    $9E,X   
       LDX    #$04    
       BNE    LFBFF   
LFC09: CLC            
LFC0A: SED            
       ADC    $C4     
       STA    $C4     
       BCC    LFC1F   
       LDA    $C0     
       ADC    #$00    
       STA    $C0     
       LDA    $8E     
       CMP    #$04    
       BEQ    LFC1F   
       INC    $8E     
LFC1F: CLD            
       RTS            

LFC21: LDA    $A0,X   
       INX            
       CMP    #$65    
       BEQ    LFC2E   
       CMP    $F2     
       BMI    LFC2E   
       LDA    #$01    
LFC2E: RTS            

LFC2F: INY            
       LDA    INPT0,X 
       BMI    LFC36   
       STY    $81     
LFC36: RTS            

LFC37: JSR    LFC3E   
       JSR    LFC8B   
       RTS            

LFC3E: INY            
       CPY    $BE     
       BCS    LFC5C   
       CPY    $90     
       BCC    LFC82   
       CPY    $90     
       BCC    LFC82   
       LDA    #$02    
       STA    ENABL   
       CPY    $92     
       BCC    LFC82   
       LDA    #$F0    
       STA    ENABL   
       STA    $90     
       STA    WSYNC   
       RTS            

LFC5C: LDA    #$02    
       STA    ENAM0   
       CPY    $BF     
       BCC    LFC82   
       LDA    #$F0    
       STA    $BE     
       STA    ENAM0   
       BMI    LFC88   
LFC6C: INY            
       CPY    $BE     
       BCC    LFC82   
       LDA    #$02    
       STA    ENABL   
       CPY    $BF     
       BCC    LFC82   
       LDA    #$F0    
       STA    ENABL   
       STA    $BE     
       BMI    LFC88   
LFC81: INY            
LFC82: LDA    INPT0,X 
       BMI    LFC88   
       STY    $81     
LFC88: STA    WSYNC   
       RTS            

LFC8B: INY            
       CPY    $BE     
       BCS    LFCAB   
       CPY    $90     
       BCC    LFCD1   
       CPY    $90     
       BCC    LFCD1   
       LDA    #$02    
       STA    ENABL   
       CPY    $92     
       BCC    LFCD1   
       LDA    #$F0    
       STA    ENABL   
       STA    $90     
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFCAB: LDA    #$02    
       STA    ENAM0   
       CPY    $BF     
       BCC    LFCD1   
       LDA    #$F0    
       STA    $BE     
       STA    ENAM0   
       BMI    LFCD7   
LFCBB: INY            
       CPY    $BE     
       BCC    LFCD1   
       LDA    #$02    
       STA    ENABL   
       CPY    $BF     
       BCC    LFCD1   
       LDA    #$F0    
       STA    ENABL   
       STA    $BE     
       BMI    LFCD7   
LFCD0: INY            
LFCD1: LDA    INPT0,X 
       BMI    LFCD7   
       STY    $81     
LFCD7: STA    WSYNC   
       STA    HMOVE   
       RTS            

LFCDC: INY            
       CPY    $90     
       BCC    LFCD1   
       LDA    #$02    
       STA    ENABL   
       CPY    $92     
       BCC    LFCD1   
       LDA    #$F0    
       STA    ENABL   
       STA    $90     
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFCF4: LDY    $F4     
LFCF6: INY            
       CPY    $90     
       BCC    LFD09   
       LDA    #$02    
       STA    ENABL   
       CPY    $92     
       BCC    LFD09   
       LDA    #$F0    
       STA    ENABL   
       STA    $90     
LFD09: RTS            

LFD0A: .byte $EA,$EA,$28,$BA,$E8,$D6,$00,$A1,$00,$A8,$A2,$00,$A5,$B0,$C5,$B1
       .byte $90,$01,$E8,$98,$30,$11,$D5,$B0,$90,$0C,$94,$B0,$B9,$C1,$FE,$95
       .byte $B2,$B9,$CA,$FE,$95,$B4,$60,$95,$B0,$A0,$00
LFD35: LDA    LFEFA,Y 
       STA    $B4,X   
       LDA    LFEE5,Y 
       STA    $B2,X   
       RTS            

LFD40: LDA    $D0     
       BEQ    LFD48   
       LDA    #$02    
       STA    $CD     
LFD48: LDA    #$FF    
       STA    $98     
       LDA    $C2,X   
       BPL    LFD56   
       ORA    #$40    
       STA    $C2,X   
       BNE    LFD68   
LFD56: LDA    #$80    
       STA    $C2,X   
       LDA    $9A,X   
       ADC    #$14    
       CMP    $99     
       BCC    LFD68   
       LDA    $9A,X   
       ADC    #$3F    
       STA    $9A,X   
LFD68: DEC    $8E     
       BEQ    LFD70   
       BPL    LFD7B   
       INC    $8E     
LFD70: LDA    #$40    
       STA    $83     
       LDA    #$FF    
       STA    $90     
       JSR    LFF70   
LFD7B: RTS            

LFD7C: LDA    #$05    
       STA    WSYNC   
       STA    NUSIZ0  
       LDA    #$04    
       STA    GRP0    
       STA    $D5     
       LDA    #$42    
       STA    COLUBK  
       LDA    #$0E    
       STA    COLUP0  
       LDA    #$F8    
       STA    GRP1    
       LDA    #$C8    
       STA    COLUP1  
       STA    HMCLR   
       STA    ENABL   
       LDX    #$01    
LFD9E: STA    WSYNC   
       INY            
       LDA    $9C,X   
       CLC            
       ADC    #$08    
       CMP    $87     
       BCC    LFDB4   
       SBC    #$0D    
       CMP    $87     
       BCS    LFDB4   
       LDA    #$00    
       STA    $D5     
LFDB4: DEX            
       BPL    LFD9E   
       STA    WSYNC   
       LDX    $82     
LFDBB: JSR    LFCD0   
       CPY    #$77    
       BNE    LFDBB   
       LDA    $D5     
       STA    GRP0    
       BNE    LFDCA   
       STA    GRP1    
LFDCA: LDA    $87     
       CLC            
       ADC    #$04    
       STA    $99     
       LDA    $89     
       STA    $98     
LFDD5: JSR    LFCD0   
       CPY    #$A0    
       BNE    LFDD5   
       STA    CXCLR   
       JMP    LF8C9   
LFDE1: .byte $2D
LFDE2: .byte $35,$3D,$45,$4D,$55,$5D,$65,$6D,$75,$17,$14,$16,$54,$77,$00,$95
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $02,$21,$11,$32,$62,$44,$84,$C8,$68,$38,$1C,$1A,$19,$5A,$BA,$BC
       .byte $BC,$88,$98,$38,$18,$80,$80,$80,$40,$48,$4C,$2C,$3A,$3A,$1B,$18
       .byte $98,$5E,$39,$39,$1E,$1C,$08,$18,$38
LFE2B: .byte $18
LFE2C: .byte $00,$1C,$22,$63,$63,$63,$22,$1C,$00,$7F,$0C,$0C,$0C,$1C,$0C
LFE3B: .byte $04,$00,$7F,$60,$60,$3E,$03,$03,$3E,$00,$7E,$03,$03,$3E,$03,$03
       .byte $7E,$00,$06,$7F,$26,$16,$0E,$06,$02,$00,$7E,$03,$03,$3E,$60,$60
       .byte $7E,$00,$3E,$63,$63,$7E,$60,$60,$3E,$00,$30,$18,$0C,$06,$03,$61
       .byte $7F,$00,$3E,$63,$63,$3E,$63,$63,$3E,$00,$3E,$03,$03,$3F,$63,$63
       .byte $3E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08,$1C,$1C,$1C,$00
       .byte $08,$01,$03,$06,$4C,$78,$78,$FC,$78,$18,$18,$3C,$18,$18,$7E,$81
       .byte $2E,$DE,$DE,$2E,$2E,$EE,$EE,$1E,$1E,$DE,$DE,$1E,$1E,$FE,$FE,$1C
LFEAB: .byte $00,$80,$A0,$A8,$AA,$08,$01
LFEB2: .byte $64,$C8,$46,$74,$A6,$D8,$56,$B4,$24,$C4,$28,$34,$78,$46,$68,$00
       .byte $43,$8A,$8C,$75,$6A,$FD,$85,$AD
LFECA: .byte $00,$2F,$3E,$5E,$31,$28,$33,$EA,$E3
LFED3: .byte $00,$06,$F4,$F2,$1F,$00,$F2,$2F,$00
LFEDC: .byte $00,$3F,$F0,$F0,$3F,$E1,$3C,$C0,$E0
LFEE5: .byte $CC,$CC,$CC,$CC,$CC,$00,$CC,$CC,$CC,$CC,$CC,$00,$CC,$CC,$CC,$CC
       .byte $CC,$00,$CC,$CC,$CC
LFEFA: .byte $5F,$57,$32,$37,$5F,$32,$5F,$57,$32,$37,$5F,$32,$5F,$57,$32,$37
       .byte $5F,$32,$57,$B2,$F7
LFF0F: .byte $80,$40
LFF11: .byte $14
LFF12: .byte $82
LFF13: .byte $19
LFF14: .byte $7D
LFF15: .byte $FE,$02,$00,$02,$00,$FE,$FE,$02
LFF1D: .byte $02,$00,$FE,$02,$FC,$00,$00,$02
LFF25: .byte $00,$05,$04,$0A
LFF29: .byte $00,$1C,$9C,$40,$DC,$88,$05,$9D,$CC,$0D,$8D,$8E,$85,$06,$86,$87
LFF39: LDX    #$16    
       LDA    #$00    
LFF3D: STA    $C0,X   
       DEX            
       BPL    LFF3D   
       INX            
       LDA    $84     
       AND    #$42    
       BEQ    LFF53   
       INX            
       ASL            
       BPL    LFF53   
       INX            
       AND    #$04    
       BEQ    LFF53   
       INX            
LFF53: LDA    LFF25,X 
       STA    $D7     
       LDA    #$64    
       STA    $87     
       STA    $9A     
       STA    $9C     
       STA    $9D     
       LDA    #$80    
       STA    $C2     
       LDA    #$C0    
       STA    $C3     
       STA    $98     
       LDA    #$04    
       STA    $8E     
LFF70: LDA    #$4E    
       STA    $EE     
       LDA    #$65    
       STA    $A0     
       STA    $A1     
       LDA    #$2C    
       STA    $80     
       LDA    #$3B    
       STA    $EC     
       LDA    #$64    
       STA    $AA     
       RTS            

LFF87: LDX    #$00    
LFF89: STA    $F0     
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $F0     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F1     
       CLC            
       ADC    $F0     
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F1     
       CLC            
       ADC    #$80    
       STA    HMCLR   
       TAY            
       TXA            
       BMI    LFFC7   
       TYA            
LFFB3: STA    WSYNC   
       STA    HMCLR   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
       NOP            
       NOP            
LFFBE: DEY            
       BPL    LFFBE   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
LFFC7: RTS            

LFFC8: STA    WSYNC   
       STA    HMP0,X  
       AND    #$0F    
       STA    HMOVE   
       TAY            
       NOP            
       NOP            
LFFD3: DEY            
       BPL    LFFD3   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFFDD: .byte $F0,$F0,$F0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0,$F0,$F0,$00
       .byte $10,$10,$20,$20,$20,$20,$20,$20,$30,$20,$10,$10,$10,$10,$10,$00
       .byte $F0,$0C,$FD
