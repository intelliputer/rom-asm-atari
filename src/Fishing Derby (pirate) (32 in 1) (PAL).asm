; Disassembly of roms/Fishing Derby (pirate) (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:30:20 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Fishing Derby (pirate) (32 in 1) (PAL).bin
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
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
LF004: LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       LDA    #$05    
       STA    CTRLPF  
       JSR    LF65F   
       LDA    $82     
       BNE    LF01F   
       LDX    #$01    
       STX    $82     
       DEX            
       JMP    LF483   
LF01F: LDX    #$07    
LF021: LDA    LF7EA,X 
       EOR    $83     
       AND    $84     
       STA    $85,X   
       CPX    #$04    
       BCS    LF030   
       STA    COLUP0,X
LF030: DEX            
       BPL    LF021   
       LDA    $C1     
       STA    $C3     
       LDA    $C2     
       STA    $C4     
       LDA    $98     
       LDX    #$04    
       JSR    LF6BE   
       LDA    $97     
       DEX            
       JSR    LF6BE   
       LDA    $9C     
       STA    $9A     
       LDA    $9D     
       STA    $9B     
       LDA    #$28    
       LDX    #$00    
       STX    REFP0   
       JSR    LF6BE   
       LDA    #$30    
       INX            
       JSR    LF697   
       LDA    #$34    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    PF0     
LF067: LDA    INTIM   
       BNE    LF067   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       STA    CXCLR   
       LDY    #$07    
LF076: STA    WSYNC   
       LDA    ($AE),Y 
       STA    GRP0    
       LDA    ($B2),Y 
       STA    GRP1    
       JSR    LF6BA   
       LDA    ($B0),Y 
       STA    GRP0    
       LDA    ($B4),Y 
       STA    GRP1    
       DEY            
       BPL    LF076   
       STA    WSYNC   
       LDA    #$08    
       STA    REFP1   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       JSR    LF6BE   
       INX            
       LDA    #$86    
       JSR    LF697   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
LF0AB: STA    WSYNC   
       LDA    LF7AE,Y 
       STA    GRP0    
       STA    GRP1    
       LDA    $83     
       CPY    #$05    
       BCS    LF0BC   
       EOR    #$35    
LF0BC: AND    $84     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$FF    
       STA    WSYNC   
       DEY            
       BPL    LF0AB   
       STX    GRP0    
       LDA    $85     
       STA    COLUP0  
       EOR    $89     
       STA    COLUP1  
       LDA    $91     
       STA    PF1     
       LDA    $93     
       STA    PF2     
       LDA    #$02    
       STA    ENABL   
       STA    ENAM1   
       STX    GRP1    
       LDA    $94     
       STA    PF2     
       LDA    $92     
       STA    PF1     
       STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDY    #$0F    
       STA    HMCLR   
LF0F7: STA    WSYNC   
       STA    HMOVE   
       TYA            
       LSR            
       TAX            
       LDA    LF7B6,X 
       STA    GRP0    
       STA    GRP1    
       TYA            
       AND    #$01    
       TAX            
       CLC            
       LDA    $9A,X   
       ADC    $9C,X   
       STA    $9A,X   
       STA    HMCLR   
       BCC    LF118   
       LDA    $9E,X   
       STA    HMM1,X  
LF118: DEY            
       BPL    LF0F7   
       STA    WSYNC   
       STA    HMOVE   
       INY            
       STY    GRP0    
       STY    GRP1    
       LDA    #$F0    
       STA    PF0     
       ASL            
       STA    PF1     
       STA    WSYNC   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$70    
       STA    PF0     
       LDA    #$80    
       STA    PF1     
       LDA    $A8     
       STA    REFP1   
       LDA    $AB     
       STA    HMP1    
       LDY    $AA     
       STA    WSYNC   
LF147: DEY            
       BPL    LF147   
       STA.w  $0011   
       STA    WSYNC   
       INY            
       STY    NUSIZ1  
       STY    NUSIZ0  
       LDY    #$0F    
       LDA    $82     
LF158: STA    WSYNC   
       STA    HMOVE   
       AND    #$33    
       EOR    $89     
       STA    COLUBK  
       CPY    #$07    
       BCS    LF16C   
       EOR    #$06    
       STA    COLUPF  
       STA    COLUP1  
LF16C: TYA            
       AND    #$01    
       TAX            
       CLC            
       LDA    $9A,X   
       ADC    $9C,X   
       STA    $9A,X   
       STA    HMCLR   
       BCC    LF17F   
       LDA    $9E,X   
       STA    HMM1,X  
LF17F: LDA    $82     
       CMP    #$80    
       ROL            
       STA    $82     
       DEY            
       BPL    LF158   
       STA    WSYNC   
       LDA    $8A     
       STA    COLUBK  
       LDA    $87     
       STA    COLUPF  
       LDA    $8C     
       STA    COLUP1  
       LDY    #$FE    
       LDX    #$06    
LF19B: STA    WSYNC   
       INY            
       STY    $F7     
       INY            
       LDA.wy $008B,Y 
       STA    COLUP0  
       LDA    $E8,X   
       STA    $B8     
       LDY    #$0F    
       LDA    ($B8),Y 
       STA    GRP1    
       LDA    $DA,X   
       STA    REFP0   
       LDA    COLUP1  
       ASL            
       ROR    $F5     
       LDA    $E1,X   
       STA    $B6     
       LDA    $D3,X   
       STA    HMP0    
       LDY    #$0E    
       LDA    ($B8),Y 
       LDY    $CC,X   
       STA    GRP1    
LF1C9: DEY            
       BPL    LF1C9   
       STA.w  $0010   
       LDY    #$0D    
LF1D1: LDA    ($B6),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($B8),Y 
       STA    GRP1    
       LDA    ($BA),Y 
       AND    $F7     
       STA    NUSIZ0  
       STA    HMCLR   
       STA    HMP0    
       DEC    $C4     
       BPL    LF1EF   
       LDA    #$00    
       STA    ENABL   
LF1EF: CLC            
       LDA    $9B     
       ADC    $9D     
       STA    $9B     
       BCC    LF1FC   
       LDA    $9F     
       STA    HMBL    
LF1FC: DEY            
       LDA    ($B6),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    ($B8),Y 
       STA    GRP1    
       LDA    ($BA),Y 
       AND    $F7     
       STA    NUSIZ0  
       STA    HMCLR   
       STA    HMP0    
       DEC    $C3     
       BPL    LF21B   
       LDA    #$00    
       STA    ENAM1   
LF21B: CLC            
       LDA    $9A     
       ADC    $9C     
       STA    $9A     
       BCC    LF228   
       LDA    $9E     
       STA    HMM1    
LF228: DEY            
       BPL    LF1D1   
       DEX            
       BMI    LF231   
       JMP    LF19B   
LF231: STA    WSYNC   
       LDA    $87     
       STA    COLUBK  
       LDX    #$00    
       STX    PF1     
       STX    REFP0   
       STX    REFP1   
       INX            
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDX    #$07    
LF24E: STA    WSYNC   
       STA    HMOVE   
       LDA    LF6E0,X 
       STA    GRP0    
       LDA    LF6E8,X 
       STA    GRP1    
       NOP            
       LDA    LF6F8,X 
       TAY            
       LDA    LF6F0,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF24E   
       LDA    #$3E    
       STA    TIM64T  
       LDX    #$06    
LF274: LDA    $DA,X
       TAY            
       AND    #$07    
       AND    $81     
       ORA    $C0     
       BNE    LF2DD   
       TYA            
       AND    #$08    
       BNE    LF288   
       INC    $C5,X   
       INC    $C5,X   
LF288: DEC    $C5,X   
       LDY    #$50    
       LDA    $C5,X   
       AND    #$02    
       BNE    LF294   
       LDY    #$70    
LF294: STY    $F7     
       LDA    $BF     
       BEQ    LF2B0   
       LDY    $A7     
       INX            
       TXA            
       DEX            
       CMP.wy $00F0,Y 
       BNE    LF2B0   
       LDA    $F7     
       STA    $A9     
       LDA    $DA,X   
       STA    $A8     
       LDA    #$40    
       STA    $F7     
LF2B0: LDA    $F7     
       CLC            
       ADC    #$10    
       LDY    $DA,X   
       BPL    LF2BB   
       ADC    #$40    
LF2BB: STA    $E1,X   
       LDY    #$00    
       LDA    $C5,X   
       CMP    #$14    
       BCC    LF2D3   
       LDY    #$08    
       LDA    #$83    
       CPX    #$06    
       BNE    LF2CF   
       LDA    #$68    
LF2CF: CMP    $C5,X   
       BCS    LF2DD   
LF2D3: STY    $F7     
       LDA    $DA,X   
       AND    #$F7    
       ORA    $F7     
       STA    $DA,X   
LF2DD: DEX            
       BPL    LF274   
       LDA    $81     
       AND    #$07    
       BEQ    LF2FC   
       TAX            
       DEX            
       LDA    $DA,X   
       BMI    LF2FC   
       LDA    $82     
       EOR    $81     
       AND    #$07    
       ORA    $C0     
       BNE    LF2FC   
       LDA    $DA,X   
       EOR    #$08    
       STA    $DA,X   
LF2FC: LDA    $81     
       AND    #$01    
       TAX            
       LDA    $F6     
       STA    AUDC0,X 
       BEQ    LF309   
       DEC    $F6     
LF309: LDA    $F2,X   
       BEQ    LF32E   
       LDA    $81     
       AND    #$02    
       ORA    $C0     
       BNE    LF32E   
       LDA    #$04    
       STA    AUDC0,X 
       SED            
       LDA    $BD,X   
       CLC            
       ADC    #$01    
       STA    $BD,X   
       CMP    #$99    
       BNE    LF32B   
       STA    $C0     
       LDA    #$01    
       STA    $F2,X   
LF32B: CLD            
       DEC    $F2,X   
LF32E: TXA            
       ASL            
       TAY            
       LDA    $BD,X   
       AND    #$F0    
       LSR            
       BNE    LF33A   
       LDA    #$50    
LF33A: STA.wy $00AE,Y 
       LDA    $BD,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00B2,Y 
       LDA    #$00    
       STA    $91,X   
       STA    $93,X   
       LDY    $95,X   
       BEQ    LF359   
LF351: SEC            
       ROR    $91,X   
       ROL    $93,X   
       DEY            
       BNE    LF351   
LF359: LDA    $95,X   
       ASL            
       ASL            
       CLC            
       ADC    #$10    
       CPX    #$01    
       BNE    LF36B   
       STA    $F7     
       LDA    #$A0    
       SEC            
       SBC    $F7     
LF36B: STA    $97,X   
       LDA    $81     
       AND    #$07    
       BNE    LF382   
       LDY    #$02    
LF375: LDA    $82     
       ASL            
       ASL            
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
       DEY            
       BPL    LF375   
LF382: LDA    $BF     
       BEQ    LF3B0   
       SEC            
       LDA    #$5F    
       SBC    $BF     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $BF     
       AND    #$0F    
       CLC            
       ADC    $A9     
       STA.wy $00E8,Y 
       CLC            
       ADC    #$10    
       STA.wy $00E9,Y 
       LDA    $F5     
       AND    #$04    
       BEQ    LF3B0   
       LDA    #$01    
       STA    $F4     
       LDA    $E0     
       EOR    #$08    
       STA    $E0     
LF3B0: LDA    $81     
       AND    #$02    
       ORA    $C0     
       BNE    LF3F6   
       LDA    $8D,X   
       AND    #$04    
       BNE    LF3C0   
       DEC    $95,X   
LF3C0: LDA    $8D,X   
       AND    #$08    
       BNE    LF3C8   
       INC    $95,X   
LF3C8: LDA    $95,X   
       CMP    #$04    
       BCS    LF3D0   
       LDA    #$04    
LF3D0: CMP    #$10    
       BCC    LF3D6   
       LDA    #$0F    
LF3D6: STA    $95,X   
       LDA    $F0,X   
       BNE    LF3F6   
       LDA    $8D,X   
       LSR            
       BCS    LF3E3   
       DEC    $C1,X   
LF3E3: LSR            
       BCS    LF3E8   
       INC    $C1,X   
LF3E8: LDA    $C1,X   
       BPL    LF3EE   
       LDA    #$00    
LF3EE: CMP    #$30    
       BCC    LF3F4   
       LDA    #$30    
LF3F4: STA    $C1,X   
LF3F6: LDA    INTIM   
       BNE    LF3F6   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF416   
       INC    $BC     
       BNE    LF416   
       SEC            
       ROR    $BC     
LF416: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF421   
       LDY    #$0F    
LF421: TYA            
       LDY    #$00    
       BIT    $BC     
       BPL    LF42C   
       AND    #$F7    
       LDY    $BC     
LF42C: STY    $83     
       STA    $84     
       LDA    #$4E    
       STA    WSYNC   
       STA    TIM64T  
       LDY    #$FF    
       LDA    SWCHB   
       AND    LF7BE,X 
       BNE    LF443   
       LDY    #$FC    
LF443: STY    $AC,X   
       LDA    SWCHA   
       TAY            
       AND    #$03    
       STA    $8E     
       TYA            
       AND    #$0C    
       ASL            
       CMP    #$0F    
       BCC    LF457   
       ORA    #$04    
LF457: AND    #$0C    
       ORA    $8E     
       STA    $8E     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $8D     
       INY            
       BEQ    LF469   
       STX    $BC     
LF469: LDA    SWCHB   
       LSR            
       BCS    LF474   
       LDX    #$BC    
       JMP    LF004   
LF474: LDY    #$00    
       LSR            
       BCS    LF499   
       LDA    $90     
       BEQ    LF481   
       DEC    $90     
       BPL    LF49B   
LF481: INC    $80     
LF483: LDA    $80     
       AND    #$01    
       STA    $80     
       STA    $BC     
       ORA    #$A0    
       TAY            
       INY            
       STY    $BD     
       LDA    #$AA    
       STA    $BE     
       LDY    #$1E    
       STY    $C0     
LF499: STY    $90     
LF49B: LDA    $C0     
       BEQ    LF4A2   
       JMP    LF650   
LF4A2: TXA            
       BNE    LF4D8   
       LDA    $80     
       BNE    LF4D8   
       LDY    #$00    
LF4AB: LDA.wy $00C5,Y 
       CMP    #$50    
       BCS    LF4B9   
       INY            
       CPY    #$06    
       BCC    LF4AB   
       LDY    #$01    
LF4B9: LDA    $C2     
       CMP    LF7F2,Y 
       LDY    #$0D    
       BCC    LF4C4   
       LDY    #$0E    
LF4C4: STY    $F7     
       LDA    $81     
       ORA    #$30    
       LSR            
       LSR            
       LSR            
       LSR            
       AND    $F7     
       LDY    $F1     
       BEQ    LF4D6   
       LDA    #$0B    
LF4D6: STA    $8E     
LF4D8: LDY    $F0,X   
       BEQ    LF4EC   
       LDA.wy $00D9,Y 
       AND    #$08    
       EOR    #$08    
       CLC            
       ADC.wy $00C4,Y 
       STA    $A0,X   
       JMP    LF4FA   
LF4EC: LDA    $97,X   
       CMP    $A0,X   
       BEQ    LF4FA   
       BCC    LF4F8   
       INC    $A0,X   
       INC    $A0,X   
LF4F8: DEC    $A0,X   
LF4FA: LDY    #$10    
       LDA    $97,X   
       SEC            
       SBC    $A0,X   
       STA    $F9     
       BPL    LF50C   
       LDY    #$F0    
       EOR    #$FF    
       CLC            
       ADC    #$02    
LF50C: STY    $9E,X   
       STA    $F7     
       STA    $A2,X   
       CLC            
       LDA    $C1,X   
       ADC    #$11    
       STA    $F8     
       STA    $A4,X   
       LDA    #$00    
       STA    $9C,X   
       ASL    $F7     
       LDY    #$80    
LF523: SEC            
       LDA    $F7     
       SBC    $F8     
       BMI    LF531   
       STA    $F7     
       TYA            
       ORA    $9C,X   
       STA    $9C,X   
LF531: ASL    $F7     
       TYA            
       LSR            
       TAY            
       BNE    LF523   
       LDY    $F0,X   
       BEQ    LF559   
       LDA    $A4,X   
       SEC            
       SBC    $A2,X   
       CMP    #$10    
       BPL    LF559   
       LDA    $F9     
       AND    #$80    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F8     
       LDA.wy $00D9,Y 
       AND    #$F7    
       ORA    $F8     
       STA.wy $00D9,Y 
LF559: LDX    $A7     
       LDY    $F0,X   
       DEY            
       LDA    $F4     
       BEQ    LF56F   
       LDA    #$08    
       STA    $F6     
       LDA    #$50    
       STA    $ED     
       STA    $EE     
       JMP    LF5B0   
LF56F: LDA    $F0     
       ORA    $F1     
       BEQ    LF5D7   
       LDA.wy $00C5,Y 
       STA    $A6     
       LDA    $BF     
       BEQ    LF5A5   
       LDA    REFP1,X 
       BPL    LF593   
       TXA            
       BEQ    LF58D   
       LDA    $80     
       BNE    LF58D   
       BIT    $CB     
       BVC    LF593   
LF58D: LDA    $81     
       AND    #$03    
       BNE    LF5A2   
LF593: DEC    $BF     
       BEQ    LF5A5   
       LDA    $BF     
       LSR            
       BCS    LF5A2   
       AND    #$07    
       BEQ    LF5A2   
       DEC    $C1,X   
LF5A2: JMP    LF5D7   
LF5A5: CLC            
       TYA            
       EOR    #$07    
       AND    #$FE    
       CLC            
       ADC    $F2,X   
       STA    $F2,X   
LF5B0: LDA    #$00    
       STA    $F0,X   
       STA    $F4     
       STA    $BF     
       LDA    #$50    
       STA    $EE     
       LDA    LF6CB,Y 
       STA.wy $00DA,Y 
       LDA    LF6D2,Y 
       STA.wy $00C5,Y 
       TXA            
       EOR    #$01    
       TAX            
       LDY    $F0,X   
       BEQ    LF5D7   
       STX    $A7     
       LDA    LF6D8,Y 
       STA    $BF     
LF5D7: LDX    #$06    
LF5D9: LDA    $C5,X   
       JSR    LF69F   
       STA    $D3,X   
       STY    $CC,X   
       LDY    #$01    
LF5E4: LDA.wy $00F0,Y 
       ORA    $C0     
       BNE    LF634   
       LDA.wy $00C1,Y 
       AND.wy $00AC,Y 
       STA    $F7     
       LDA    LF7F2,X 
       AND.wy $00AC,Y 
       CMP    $F7     
       BNE    LF634   
       LDA    $C5,X   
       ADC    #$03    
       CMP.wy $00A0,Y 
       BNE    LF634   
       LDA    $DA,X   
       BMI    LF634   
       LDA    $E1,X   
       CMP    #$50    
       BEQ    LF634   
       INX            
       STX    $F0,Y   
       DEX            
       LDA    LF7F2,X 
       STA.wy $00C1,Y 
       LDA    $BF     
       BNE    LF62E   
       LDA    LF6D9,X 
       STA    $BF     
       STY    $A7     
       LDA    $C5,X   
       STA    $A6     
       LDA    #$08    
       STA.wy $0015,Y 
LF62E: LDA    $82     
       AND    #$08    
       STA    $DA,X   
LF634: DEY            
       BPL    LF5E4   
       DEX            
       BPL    LF5D9   
       LDA    $A6     
       JSR    LF69F   
       STA    $AB     
       STY    $AA     
       LDA    $81     
       BNE    LF650   
       LDA    $82     
       LSR            
       AND    #$0F    
       EOR    $E0     
       STA    $E0     
LF650: LDY    #$CE    
       LDA    $E0     
       AND    #$08    
       BNE    LF65A   
       LDY    #$DC    
LF65A: STY    $BA     
       JMP    LF01F   
LF65F: LDX    #$06    
LF661: LDA    LF6D2,X 
       STA    $C5,X   
       LDA    LF6CB,X 
       STA    $DA,X   
       LDA    #$60    
       STA    $E1,X   
       LDA    #$50    
       STA    $E7     
       STA    $E8,X   
       CPX    #$02    
       BCS    LF689   
       LDA    #$07    
       STA    $95,X   
       STA    AUDV0,X 
       LDA    LF7FE,X 
       STA    $A0,X   
       LDA    LF7F9,X 
       STA    AUDF0,X 
LF689: DEX            
       BPL    LF661   
       LDX    #$0D    
       LDA    #$F7    
LF690: STA    $AE,X   
       DEX            
       DEX            
       BPL    LF690   
       RTS            

LF697: JSR    LF6BE   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF69F: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $F7     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $F7     
       CMP    #$0F    
       BCC    LF6B7   
       SBC    #$0F    
       INY            
LF6B7: EOR    #$07    
       ASL            
LF6BA: ASL            
       ASL            
       ASL            
       RTS            

LF6BE: JSR    LF69F   
       STA    HMP0,X  
       STA    WSYNC   
LF6C5: DEY            
       BPL    LF6C5   
       STA    RESP0,X 
       RTS            

LF6CB: .byte $0B,$03,$0B,$03,$0B,$03,$87
LF6D2: .byte $84,$15,$84,$15,$84,$15
LF6D8: .byte $15
LF6D9: .byte $5F,$4F,$3F,$2F,$1F,$0F,$01
LF6E0: .byte $00,$00,$00,$00,$00,$00,$00,$00
LF6E8: .byte $00,$00,$00,$00,$00,$00,$00,$00
LF6F0: .byte $00,$00,$00,$00,$00,$00,$00,$00
LF6F8: .byte $00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C
       .byte $7E,$18,$18,$18,$18,$78,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C
       .byte $3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C
       .byte $18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C
       .byte $3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$42,$FF,$3C,$7E,$BD
       .byte $A5,$81,$E7,$C3,$66,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$42,$FF,$3C
       .byte $7E,$BD,$A5,$81,$E7,$C3,$66,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$1C,$45,$5E,$7E,$FE,$FE,$FE
       .byte $FE,$5F,$F8,$7C,$E0,$80
LF7AE: .byte $41,$60,$E0,$F0,$C0,$C0,$80,$80
LF7B6: .byte $38,$30,$30,$78,$78,$78,$70,$60
LF7BE: .byte $80,$40,$00,$38,$44,$5F,$7F,$FE,$FE,$FE,$FE,$5F,$F8,$78,$E0,$80
       .byte $01,$01,$87,$F7,$F7,$C7,$F7,$F7,$07,$57,$71,$21,$01,$97,$01,$01
       .byte $E7,$17,$17,$47,$17,$17,$07,$B7,$31,$E1,$01,$D7
LF7EA: .byte $1A,$1A,$00,$86,$84,$82,$00,$34
LF7F2: .byte $2D,$26,$1F,$18,$11,$0A,$03
LF7F9: .byte $10,$12,$00,$00,$F0
LF7FE: .byte $2C,$74
