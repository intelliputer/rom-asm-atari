; Disassembly of roms/Canyon Bomber (4k version).bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Canyon Bomber (4k version).bin
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
HMP1    =  $21
RESMP0  =  $28
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
INPT0   =  $38
INPT1   =  $39
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       INC    $E3     
       JMP    LF6EC   
LF00F: LDY    #$06    
       LDX    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF01E   
       LDX    #$0F    
       LDY    #$03    
LF01E: LDA    $E0     
       CMP    #$0F    
       BEQ    LF02C   
       TXA            
       AND    #$F7    
       TAX            
       LDA    $E1     
       STA    $E8     
LF02C: STX    $E7     
       LDX    #$03    
LF030: LDA    LF7EC,Y 
       EOR    $E8     
       AND    $E7     
       STA    $C4,X   
       STA    COLUP0,X
       DEY            
       DEX            
       BPL    LF030   
       LDA    $C6     
       STA    COLUBK  
LF043: LDA    INTIM   
       BNE    LF043   
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$02    
       STX    CTRLPF  
       DEX            
       LDY    #$04    
LF053: STA    WSYNC   
       NOP            
       NOP            
       LDA    ($EF),Y 
       AND    #$F0    
       STA    PF1     
       LDA    ($F1),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF2     
       LDA    ($F7),Y 
       AND    #$F0    
       STA    PF1     
       LDA    ($F9),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF2     
       STA    WSYNC   
       LDA    ($ED),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    PF1     
       LDA    ($F3),Y 
       AND    #$0F    
       STA    PF2     
       LDA    ($F5),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    PF1     
       LDA    ($FB),Y 
       AND    #$0F    
       STA    PF2     
       DEX            
       BPL    LF053   
       LDX    #$01    
       DEY            
       BPL    LF053   
       INY            
       STA    WSYNC   
       STY    PF1     
       STY    PF2     
       STA    WSYNC   
       LDX    #$07    
       STX    NUSIZ1  
LF0A6: STA    WSYNC   
       LDA    $D6     
       STA    PF1     
       JSR    LF6B4   
       NOP            
       NOP            
       LDA    $D7     
       STA    PF1     
       DEX            
       BPL    LF0A6   
       STY    CTRLPF  
       STY    PF1     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$46    
       EOR    $E8     
       AND    $E7     
       STA    $E6     
       ASL            
       STA    COLUBK  
       STA    COLUPF  
       LDA    $C6     
       STA    COLUP1  
       LDA    #$3C    
       STA    $D9     
       LDA    #$55    
       JSR    LF667   
       ASL            
       STA    PF1     
       LDX    #$1C    
       TXS            
       STY    $F1     
       STY    $F3     
       STY    $DE     
LF0E6: LDX    $DE     
       LDA    $84,X   
       STA    REFP0   
       LDA    $82,X   
       STA    HMP0    
       LDA    $84,X   
       LSR            
       STA    $F5     
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAY            
       LDA    LF7CB,Y 
       STA    NUSIZ0  
       LDY    $F5     
       LDA    $84,X   
       BPL    LF10E   
       LDA    $E2     
       AND    #$04    
       BNE    LF10E   
       LDY    #$00    
LF10E: TYA            
       AND    #$38    
       STA    $F5     
       LDY    $81,X   
       PLA            
       PLA            
       CLC            
       TXA            
       ADC    #$05    
       STA    $DE     
       STA    WSYNC   
LF11F: DEY            
       BNE    LF11F   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E6     
       ASL            
       STA    COLUPF  
       LDA    $D3     
       CMP    $D9     
       PHP            
       LDA    $D2     
       CMP    $D9     
       PHP            
       LDY    $83,X   
       LDA.wy $00C4,Y 
       STA    COLUP0  
       LDY    $F5     
       DEC    $D9     
       BPL    LF169   
       STA    WSYNC   
       LDA    INPT0   
       BMI    LF156   
       BIT    $E4     
       BVS    LF156   
       LDA    $C4     
       STA    COLUPF  
       LDA    #$00    
       STA    $DC     
LF156: STA    WSYNC   
       LDA    INPT1   
       BMI    LF164   
       LDA    $C5     
       STA    COLUPF  
       LDA    #$00    
       STA    $DD     
LF164: STA    WSYNC   
       JMP    LF248   
LF169: DEC    $E9     
       BPL    LF17B   
       LDA    $E9     
       CMP    #$FF    
       BNE    LF175   
       STA    CXCLR   
LF175: LDA    $E4     
       BPL    LF1DD   
       DEC    $E6     
LF17B: LDA    $E6     
       ASL            
       STA    COLUBK  
LF180: LDA    LF783,Y 
       STA    GRP0    
       LDA    $E6     
       ASL            
       EOR    $E6     
       EOR    #$40    
       TAX            
       LDA    $E9     
       BPL    LF1B8   
       LDA    INPT0   
       AND    #$80    
       CMP    $F1     
       STA    $F1     
       BEQ    LF1A8   
       BIT    $E4     
       BVS    LF1B8   
       LDX    $C4     
       LDA    $D9     
       STA    $DC     
       JMP    LF1B8   
LF1A8: LDA    INPT1   
       AND    #$80    
       CMP    $F3     
       STA    $F3     
       BEQ    LF1B8   
       LDX    $C5     
       LDA    $D9     
       STA    $DD     
LF1B8: STA    WSYNC   
       PLA            
       PLA            
       TXA            
       EOR    $E6     
       EOR    #$40    
       STA    COLUPF  
       INY            
       LDA    $D3     
       CMP    $D9     
       PHP            
       LDA    $D2     
       CMP    $D9     
       PHP            
       DEC    $D9     
       TYA            
       AND    #$07    
       BNE    LF1D8   
       JMP    LF0E6   
LF1D8: STA    WSYNC   
       JMP    LF180   
LF1DD: LDA    #$07    
       STA    NUSIZ0  
       LDY    $C7     
LF1E3: STX    WSYNC   
       STY    COLUPF  
       LDA    LF7B4,X 
       STA    GRP0    
       STA    GRP1    
       LDA    $85,X   
       STA    PF0     
       LDA    $8D,X   
       STA    PF1     
       LDA    $95,X   
       STA    PF2     
       LDA    $9D,X   
       STA    PF0     
       LDA    $A5,X   
       STA    PF1     
       LDA    $AD,X   
       STA    PF2     
       PLA            
       PLA            
       LDA    $85,X   
       STA    PF0     
       LDA    $8D,X   
       STA    PF1     
       LDA    $95,X   
       STA    PF2     
       LDA    $D3     
       CMP    $D9     
       PHP            
       LDA    $D2     
       CMP    $D9     
       PHP            
       LDA    $9D,X   
       STA    PF0     
       DEC    $D9     
       LDA    $A5,X   
       STA    PF1     
       LDA    $AD,X   
       STA    PF2     
       LDA    $D9     
       BEQ    LF248   
       AND    #$03    
       BNE    LF1E3   
       INX            
       LDA    LF7E3,X 
       EOR    $E8     
       AND    $E7     
       TAY            
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       JMP    LF1E3   
LF248: STA    WSYNC   
       LDA    $C6     
       STA    COLUBK  
       STA    COLUPF  
       LDA    $E4     
       BMI    LF25B   
       LDX    #$06    
LF256: STA    WSYNC   
       DEX            
       BPL    LF256   
LF25B: LDX    $D8     
       LDA    INPT0,X 
       BPL    LF265   
       LDA    #$00    
       STA    $DC,X   
LF265: LDX    #$FF    
       TXS            
       JSR    LF661   
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$22    
       STA    TIM64T  
LF274: LDA    INTIM   
       BNE    LF274   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       INC    $E2     
       BNE    LF290   
       INC    $E1     
       BNE    LF290   
       LDA    #$01    
       STA    $E0     
LF290: LDA    INTIM   
       BNE    LF290   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$37    
       STA    TIM64T  
       LDA    $E5     
       BNE    LF2C8   
       LDA    SWCHB   
       AND    #$02    
       BNE    LF2D5   
       LDA    #$08    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       INC    $E3     
       LDA    $E3     
       CMP    #$09    
       BNE    LF2BB   
       LDA    #$01    
LF2BB: STA    $E3     
       LDA    #$1E    
       STA    $E5     
       LDA    #$00    
       STA    $E0     
       JMP    LF6EC   
LF2C8: DEC    $E5     
       LDA    SWCHB   
       AND    #$02    
       BEQ    LF2D5   
       LDA    #$00    
       STA    $E5     
LF2D5: LDA    SWCHB   
       AND    #$01    
       BNE    LF2E5   
       STA    AUDC0   
       LDA    #$0F    
       STA    $E0     
       JMP    LF6EC   
LF2E5: LDA    #$00    
       STA    AUDC0   
       STA    AUDC1   
       LDA    SWCHA   
       STA    $FD     
       LDA    SWCHB   
       STA    $FB     
       LDA    $E2     
       AND    #$01    
       STA    $D8     
       TAX            
       ASL            
       ORA    #$0C    
       STA    AUDF0   
       CPX    #$01    
       BNE    LF309   
       LSR    $FB     
       ASL    $FD     
LF309: LDA    $E0     
       CMP    #$0F    
       BNE    LF348   
       LDY    LF7DB,X 
       LDA.wy $0084,Y 
       BEQ    LF383   
       LDA    $E4     
       AND    #$01    
       BNE    LF321   
       LDA    $D6,X   
       BEQ    LF383   
LF321: BIT    $E4     
       BVC    LF33C   
       BIT    SWCHB   
       BVS    LF32E   
       LDA    $D7     
       STA    $D6     
LF32E: TXA            
       BNE    LF33C   
       LDA    $D2     
       BPL    LF383   
       LDA    $E2     
       AND    #$1F    
       JMP    LF354   
LF33C: LDA    $FD     
       AND    #$80    
       CMP    $D0,X   
       BEQ    LF383   
       STA    $D0,X   
       CMP    #$00    
LF348: BNE    LF383   
       BIT    $FB     
       BVC    LF352   
       LDA    $D2,X   
       BPL    LF383   
LF352: LDA    $DC,X   
LF354: STA    $DA,X   
       LDA    #$00    
       STA    $D4,X   
       STA    $E1     
       LDA    #$08    
       STA    AUDC0   
       STA    RESMP0,X
       LDY    $CE,X   
       LDA    LF7FE,Y 
       STA    $D2,X   
       LDA    LF7DB,Y 
       TAY            
       LDA.wy $0080,Y 
       CLC            
       ADC    #$05    
       STA    $EA,X   
       LDA.wy $0084,Y 
       AND    #$0F    
       TAY            
       LDA    $E4     
       BPL    LF381   
       LDY    #$00    
LF381: STY    $CC,X   
LF383: LDA    $84     
       BNE    LF3E2   
       LDA    $89     
       BNE    LF3E2   
       LDA    $D2     
       BPL    LF3E2   
       LDA    $D3     
       BPL    LF3E2   
       LDX    #$01    
LF395: LDY    LF7DB,X 
       LDA    $E0     
       CMP    #$0F    
       BNE    LF3A5   
       LDA    $D4,X   
       BPL    LF3A5   
       JSR    LF672   
LF3A5: LDA    $E2     
       EOR    $C9     
       LSR            
       EOR    $CB     
       AND    #$3A    
       CLC            
       ADC    #$11    
       STA    $84     
       EOR    #$08    
       STA    $89     
       STX    $ED     
       LDX    #$00    
       LDA.wy $0084,Y 
       AND    #$08    
       BEQ    LF3C4   
       LDX    #$91    
LF3C4: STX    $80,Y   
       LDX    $ED     
       LDA    $E2     
       LSR            
       LSR            
       LSR            
       AND    #$01    
       STA    $83     
       STA    $CE     
       EOR    #$01    
       STA    $88     
       STA    $CF     
       LDA    $D4,X   
       ORA    #$80    
       STA    $D4,X   
       DEX            
       BPL    LF395   
LF3E2: LDX    $D8     
       LDA    $E4     
       BMI    LF3EB   
       JMP    LF481   
LF3EB: INC    $D4,X   
       LDX    #$14    
LF3EF: LDA    $8E,X   
       BNE    LF410   
       LSR    $D4     
       BCC    LF410   
       LDA    $D5     
       AND    #$3A    
       CLC            
       ADC    #$51    
       STA    $8E,X   
       LDY    #$00    
       AND    #$08    
       BEQ    LF408   
       LDY    #$91    
LF408: STY    $8A,X   
       LDA    #$02    
       STA    $8D,X   
       ROL    $D5     
LF410: TXA            
       SEC            
       SBC    #$05    
       TAX            
       BPL    LF3EF   
       LDX    $D8     
       BNE    LF427   
       BIT    $E4     
       BVC    LF427   
       BIT    $FB     
       BVS    LF427   
       BIT    CXM0P   
       BVS    LF431   
LF427: LDA    $DA,X   
       BPL    LF42D   
       LDA    #$00    
LF42D: CMP    $D2,X   
       BNE    LF47E   
LF431: LDA    $D2,X   
       STA    $DA,X   
       JSR    LF67C   
       LDA    #$08    
       STA    $EC     
       LDA    $DA,X   
       CLC            
       ADC    #$02    
       LDY    #$07    
LF443: DEY            
       SEC            
       SBC    #$09    
       BPL    LF443   
       STY    $F5     
       LDA    LF7DB,Y 
       TAY            
       LDA.wy $0080,Y 
       ADC    #$04    
       SBC    $EA,X   
       BPL    LF45A   
       EOR    #$FF    
LF45A: JSR    LF6B5   
       BNE    LF47E   
       LDA.wy $0084,Y 
       BMI    LF47E   
       BEQ    LF47E   
       ORA    #$80    
       AND    #$F0    
       STA.wy $0084,Y 
       STX    $83,Y   
       ASL    $F5     
       ASL    $F5     
       ASL    $F5     
       ASL    $F5     
       JSR    LF6C9   
       LDA    #$0F    
       STA    $EC     
LF47E: JMP    LF55A   
LF481: LDA    $D2,X   
       BMI    LF493   
       LSR            
       STA    $ED     
       LDA    #$1F    
       SEC            
       SBC    $ED     
       STA    AUDF1   
       LDA    #$04    
       STA    AUDC1   
LF493: LDA    CXM0P,X 
       AND    #$C0    
       BEQ    LF49C   
       JSR    LF66E   
LF49C: LDA    $E4     
       AND    #$04    
       BNE    LF4CA   
       LDA    $E2     
       LSR            
       LSR            
       AND    #$07    
       STA    $ED     
       BEQ    LF4CA   
       LDY    #$28    
LF4AE: TYA            
       CLC            
       ADC    $ED     
       TAX            
       LDA    $93,X   
       STA    $EF     
       LDA    $94,X   
       AND    $93,X   
       STA    $93,X   
       LDA    $94,X   
       ORA    $EF     
       STA    $94,X   
       TYA            
       SEC            
       SBC    #$08    
       TAY            
       BPL    LF4AE   
LF4CA: LDX    $D8     
       LDA    $D2,X   
       BMI    LF47E   
       CMP    #$02    
       BCC    LF47E   
       CMP    #$21    
       BCS    LF47E   
       LDY    $EA,X   
       TYA            
       CLC            
       ADC    #$10    
       CPY    #$50    
       BCC    LF4E5   
       CLC            
       ADC    #$10    
LF4E5: LSR            
       LSR            
       STA    $ED     
       AND    #$07    
       STA    $EF     
       LDA    $ED     
       LSR            
       LSR            
       LSR            
       STA    $ED     
       AND    #$01    
       TAY            
       LDA    $ED     
       CMP    #$03    
       BCC    LF4FE   
       INY            
LF4FE: STY    $F1     
       LDY    $EF     
       LDA    LF7D3,Y 
       STA    $F3     
       LDA    $F1     
       AND    #$01    
       BEQ    LF517   
       LDY    #$07    
LF50F: LSR    $F3     
       ROL            
       DEY            
       BPL    LF50F   
       STA    $F3     
LF517: LDA    $D2,X   
       STA    $F5     
       LDA    #$21    
       SEC            
       SBC    $F5     
       LSR            
       LSR            
       STA    $F5     
       ASL    $ED     
       ASL    $ED     
       ASL    $ED     
       CLC            
       ADC    $ED     
       TAY            
       LDA.wy $0094,Y 
       AND    $F3     
       BEQ    LF55A   
       LDA.wy $0094,Y 
       EOR    $F3     
       STA.wy $0094,Y 
       INC    $D4,X   
       LDA    #$04    
       STA    AUDC0   
       LDA    $D4,X   
       CMP    #$06    
       BNE    LF54C   
       JSR    LF67C   
LF54C: LSR    $F5     
       INC    $F5     
       JSR    LF6C9   
       INC    $DF     
       BNE    LF55A   
       JMP    LF726   
LF55A: LDX    #$0F    
       LDY    #$03    
       LDA    $E4     
       BPL    LF566   
       LDY    #$02    
       LDX    #$28    
LF566: STY    $E9     
LF568: LDA    $80,X   
       CLC            
       ADC    #$01    
       JSR    LF685   
       STA    $82,X   
       STY    $81,X   
       LDA    $84,X   
       AND    #$07    
       AND    $E2     
       BNE    LF591   
       LDA    $84,X   
       JSR    LF6BA   
       ADC    $80,X   
       STA    $80,X   
       BPL    LF591   
       LDA    $80,X   
       CMP    #$92    
       BCC    LF591   
       LDA    #$00    
       STA    $84,X   
LF591: LDA    $84,X   
       BPL    LF59F   
       LDA    $EC     
       CMP    #$01    
       BNE    LF59F   
       LDA    #$00    
       STA    $84,X   
LF59F: TXA            
       SEC            
       SBC    #$05    
       TAX            
       BPL    LF568   
       LDX    $D8     
       LDA    $D2,X   
       BMI    LF5DC   
       CMP    #$2C    
       BCS    LF5BA   
       LDA    $E4     
       BPL    LF5BA   
       LDA    $E2     
       AND    #$02    
       BNE    LF5BC   
LF5BA: DEC    $D2,X   
LF5BC: LDA    $CC,X   
       AND    #$06    
       AND    $E2     
       BNE    LF5D5   
       LDA    $CC,X   
       JSR    LF6BA   
       ADC    $EA,X   
       STA    $EA,X   
       BPL    LF5D5   
       LDA    $EA,X   
       CMP    #$9E    
       BCS    LF5D9   
LF5D5: LDA    $D2,X   
       BPL    LF5DC   
LF5D9: JSR    LF66E   
LF5DC: LDA    $E2     
       LSR            
       BCS    LF5F9   
       LDA    $EC     
       BEQ    LF5F9   
       LDA    $EC     
       STA    AUDV1   
       LDA    #$10    
       SBC    $EC     
       STA    AUDF1   
       LDA    $E2     
       AND    #$03    
       ORA    #$08    
       STA    AUDC1   
       DEC    $EC     
LF5F9: LDX    #$03    
LF5FB: LDA    $E8,X   
       JSR    LF685   
       STA    HMP0,X  
       JSR    LF6AC   
       DEX            
       CPX    #$01    
       BNE    LF5FB   
       LDA    #$7E    
       JSR    LF685   
       STA    HMP1    
       JSR    LF6AC   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$03    
       LDX    #$0F    
       LDA    $E0     
       BNE    LF630   
       LDA    #$AA    
       STA    $C9     
       STA    $CA     
       STA    $CB     
       LDA    $E3     
       AND    #$0F    
       ORA    #$A0    
       STA    $C8     
LF630: LDA.wy $00C8,Y 
       JSR    LF6B5   
       JSR    LF64D   
       DEX            
       DEX            
       LDA.wy $00C8,Y 
       JSR    LF64D   
       DEX            
       DEX            
       DEY            
       BPL    LF630   
       STA    HMCLR   
       STA    CXCLR   
       JMP    LF00F   
LF64D: AND    #$0F    
       STA    $FD     
       ASL    $FD     
       ASL    $FD     
       CLC            
       ADC    $FD     
       ADC    #$51    
       STA    $EC,X   
       LDA    #$F7    
       STA    $ED,X   
       RTS            

LF661: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
LF667: STA    PF0     
       STA    PF1     
       STA    PF2     
       RTS            

LF66E: LDA    $D4,X   
       BNE    LF67C   
LF672: LDA    $D6,X   
       BEQ    LF67C   
       LDA    #$0C    
       STA    AUDC0   
       LSR    $D6,X   
LF67C: LDA    #$FF    
       STA    $D2,X   
       LDA    #$02    
       STA    RESMP0,X
       RTS            

LF685: CLC            
       ADC    #$37    
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       PLA            
       AND    #$0F    
       STY    $ED     
       CLC            
       ADC    $ED     
       CMP    #$0F    
       BCC    LF69D   
       SBC    #$0F    
       INY            
LF69D: CMP    #$08    
       EOR    #$0F    
       BCS    LF6A6   
       ADC    #$01    
       DEY            
LF6A6: INY            
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LF6AC: STY    WSYNC   
LF6AE: DEY            
       BNE    LF6AE   
       STA    RESP0,X 
       RTS            

LF6B4: LSR            
LF6B5: LSR            
       LSR            
       LSR            
       LSR            
       RTS            

LF6BA: AND    #$0F    
       BEQ    LF6C7   
       LDY    #$01    
       AND    #$08    
       BEQ    LF6C6   
       LDY    #$FF    
LF6C6: TYA            
LF6C7: CLC            
       RTS            

LF6C9: TXA            
       ASL            
       TAX            
       LDA    $C9,X   
       SED            
       CLC            
       ADC    $F5     
       STA    $C9,X   
       LDA    #$00    
       ADC    $C8,X   
       STA    $C8,X   
       CLD            
       LDA    $E4     
       AND    #$01    
       BEQ    LF6E9   
       LDA    $C8,X   
       AND    #$F0    
       BEQ    LF6E9   
       STA    $E0     
LF6E9: LDX    $D8     
       RTS            

LF6EC: LDX    #$FF    
       TXS            
       STX    REFP1   
       STX    $E7     
       LDX    $E3     
       LDA    LF7E3,X 
       STA    $E4     
       LDA    #$00    
       STA    $E1     
       STA    $E8     
       STA    $C8     
       STA    $C9     
       STA    $CA     
       STA    $CB     
       TAY            
       LDA    $E4     
       AND    #$01    
       BNE    LF711   
       LDY    #$3F    
LF711: STY    $D6     
       STY    $D7     
       LDX    #$28    
LF717: LDA    #$00    
       STA    $80,X   
       STA    $84,X   
       STA    $83,X   
       TXA            
       SEC            
       SBC    #$05    
       TAX            
       BPL    LF717   
LF726: LDX    #$01    
LF728: JSR    LF67C   
       LDA    #$00    
       STA    AUDC1   
       LDA    #$04    
       STA    $D4,X   
       STA    AUDV0,X 
       DEX            
       BPL    LF728   
       LDX    #$2F    
       LDA    $E4     
       BMI    LF74C   
       LDA    #$02    
       STA    $92     
LF742: LDA    #$FF    
       STA    $94,X   
       DEX            
       BPL    LF742   
       INX            
       STX    $DF     
LF74C: LDX    $D8     
       JMP    LF55A   
LF751: .byte $E7,$A5,$A5,$A5,$E7,$42,$42,$42,$42,$42,$E7,$81,$E7,$24,$E7,$E7
       .byte $24,$66,$24,$E7,$24,$24,$E7,$A5,$81,$E7,$24,$E7,$81,$E7,$E7,$A5
       .byte $E7,$81,$E7,$24,$24,$24,$24,$E7,$E7,$A5,$E7,$A5,$E7,$E7,$24,$E7
       .byte $A5,$E7
LF783: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$86,$FF,$FF,$38,$30,$00
       .byte $00,$80,$C0,$FE,$0F,$18,$30,$00,$00,$BE,$88,$FF,$FF,$08,$3E,$00
       .byte $1F,$84,$CF,$7D,$0D,$0F,$00,$00,$00,$00,$18,$10,$7C,$FF,$7E,$00
       .byte $00
LF7B4: .byte $10,$18,$52,$FF,$7E,$00,$00,$00,$00,$10,$14,$7F,$FA,$7C,$00,$80
       .byte $C0,$C0,$E0,$F8,$F8,$FC,$FF
LF7CB: .byte $00,$05,$00,$00,$00,$00,$05,$05
LF7D3: .byte $01,$02,$04,$08,$10,$20,$40,$80
LF7DB: .byte $00,$05,$0A,$0F,$14,$19,$1E,$23
LF7E3: .byte $28,$40,$00,$44,$04,$01,$05,$C1,$81
LF7EC: .byte $05,$09,$00,$46,$18,$04,$4C,$49,$1B,$18,$46,$44,$84,$82,$00,$00
       .byte $00,$F0
LF7FE: .byte $38,$2F,$78,$D8,$A2,$00,$8A,$95,$00,$E8,$D0,$FB,$E6,$E3,$4C,$EC
       .byte $F6,$A0,$06,$A2,$FF,$AD,$82,$02,$29,$08,$D0,$04,$A2,$0F,$A0,$03
       .byte $A5,$E0,$C9,$0F,$F0,$08,$8A,$29,$F7,$AA,$A5,$E1,$85,$E8,$86,$E7
       .byte $A2,$03,$B9,$EC,$F7,$45,$E8,$25,$E7,$95,$C4,$95,$06,$88,$CA,$10
       .byte $F1,$A5,$C6,$85,$09,$AD,$84,$02,$D0,$FB,$85,$02,$85,$01,$A2,$02
       .byte $86,$0A,$CA,$A0,$04,$85,$02,$EA,$EA,$B1,$EF,$29,$F0,$85,$0E,$B1
       .byte $F1,$0A,$0A,$0A,$0A,$85,$0F,$B1,$F7,$29,$F0,$85,$0E,$B1,$F9,$0A
       .byte $0A,$0A,$0A,$85,$0F,$85,$02,$B1,$ED,$4A,$4A,$4A,$4A,$85,$0E,$B1
       .byte $F3,$29,$0F,$85,$0F,$B1,$F5,$4A,$4A,$4A,$4A,$85,$0E,$B1,$FB,$29
       .byte $0F,$85,$0F,$CA,$10,$BF,$A2,$01,$88,$10,$BA,$C8,$85,$02,$84,$0E
       .byte $84,$0F,$85,$02,$A2,$07,$86,$05,$85,$02,$A5,$D6,$85,$0E,$20,$B4
       .byte $F6,$EA,$EA,$A5,$D7,$85,$0E,$CA,$10,$EE,$84,$0A,$84,$0E,$85,$02
       .byte $85,$02,$A9,$46,$45,$E8,$25,$E7,$85,$E6,$0A,$85,$09,$85,$08,$A5
       .byte $C6,$85,$07,$A9,$3C,$85,$D9,$A9,$55,$20,$67,$F6,$0A,$85,$0E,$A2
       .byte $1C,$9A,$84,$F1,$84,$F3,$84,$DE,$A6,$DE,$B5,$84,$85,$0B,$B5,$82
       .byte $85,$20,$B5,$84,$4A,$85,$F5,$4A,$4A,$4A,$29,$07,$A8,$B9,$CB,$F7
       .byte $85,$04,$A4,$F5,$B5,$84,$10,$08,$A5,$E2,$29,$04,$D0,$02,$A0,$00
       .byte $98,$29,$38,$85,$F5,$B4,$81,$68,$68,$18,$8A,$69,$05,$85,$DE,$85
       .byte $02,$88,$D0,$FD,$85,$10,$85,$02,$85,$2A,$A5,$E6,$0A,$85,$08,$A5
       .byte $D3,$C5,$D9,$08,$A5,$D2,$C5,$D9,$08,$B4,$83,$B9,$C4,$00,$85,$06
       .byte $A4,$F5,$C6,$D9,$10,$25,$85,$02,$A5,$38,$30,$0C,$24,$E4,$70,$08
       .byte $A5,$C4,$85,$08,$A9,$00,$85,$DC,$85,$02,$A5,$39,$30,$08,$A5,$C5
       .byte $85,$08,$A9,$00,$85,$DD,$85,$02,$4C,$48,$F2,$C6,$E9,$10,$0E,$A5
       .byte $E9,$C9,$FF,$D0,$02,$85,$2C,$A5,$E4,$10,$64,$C6,$E6,$A5,$E6,$0A
       .byte $85,$09,$B9,$83,$F7,$85,$1B,$A5,$E6,$0A,$45,$E6,$49,$40,$AA,$A5
       .byte $E9,$10,$27,$A5,$38,$29,$80,$C5,$F1,$85,$F1,$F0,$0D,$24,$E4,$70
       .byte $19,$A6,$C4,$A5,$D9,$85,$DC,$4C,$B8,$F1,$A5,$39,$29,$80,$C5,$F3
       .byte $85,$F3,$F0,$06,$A6,$C5,$A5,$D9,$85,$DD,$85,$02,$68,$68,$8A,$45
       .byte $E6,$49,$40,$85,$08,$C8,$A5,$D3,$C5,$D9,$08,$A5,$D2,$C5,$D9,$08
       .byte $C6,$D9,$98,$29,$07,$D0,$03,$4C,$E6,$F0,$85,$02,$4C,$80,$F1,$A9
       .byte $07,$85,$04,$A4,$C7,$86,$02,$84,$08,$BD,$B4,$F7,$85,$1B,$85,$1C
       .byte $B5,$85,$85,$0D,$B5,$8D,$85,$0E,$B5,$95,$85,$0F,$B5,$9D,$85,$0D
       .byte $B5,$A5,$85,$0E,$B5,$AD,$85,$0F,$68,$68,$B5,$85,$85,$0D,$B5,$8D
       .byte $85,$0E,$B5,$95,$85,$0F,$A5,$D3,$C5,$D9,$08,$A5,$D2,$C5,$D9,$08
       .byte $B5,$9D,$85,$0D,$C6,$D9,$B5,$A5,$85,$0E,$B5,$AD,$85,$0F,$A5,$D9
       .byte $F0,$18,$29,$03,$D0,$AF,$E8,$BD,$E3,$F7,$45,$E8,$25,$E7,$A8,$A9
       .byte $00,$85,$0D,$85,$0E,$85,$0F,$4C,$E3,$F1,$85,$02,$A5,$C6,$85,$09
       .byte $85,$08,$A5,$E4,$30,$07,$A2,$06,$85,$02,$CA,$10,$FB,$A6,$D8,$B5
       .byte $38,$10,$04,$A9,$00,$95,$DC,$A2,$FF,$9A,$20,$61,$F6,$85,$1D,$85
       .byte $1E,$A9,$22,$8D,$96,$02,$AD,$84,$02,$D0,$FB,$A9,$82,$85,$02,$85
       .byte $01,$85,$00,$8D,$95,$02,$E6,$E2,$D0,$08,$E6,$E1,$D0,$04,$A9,$01
       .byte $85,$E0,$AD,$84,$02,$D0,$FB,$85,$02,$85,$00,$A9,$37,$8D,$96,$02
       .byte $A5,$E5,$D0,$26,$AD,$82,$02,$29,$02,$D0,$2C,$A9,$08,$85,$17,$A9
       .byte $0C,$85,$15,$E6,$E3,$A5,$E3,$C9,$09,$D0,$02,$A9,$01,$85,$E3,$A9
       .byte $1E,$85,$E5,$A9,$00,$85,$E0,$4C,$EC,$F6,$C6,$E5,$AD,$82,$02,$29
       .byte $02,$F0,$04,$A9,$00,$85,$E5,$AD,$82,$02,$29,$01,$D0,$09,$85,$15
       .byte $A9,$0F,$85,$E0,$4C,$EC,$F6,$A9,$00,$85,$15,$85,$16,$AD,$80,$02
       .byte $85,$FD,$AD,$82,$02,$85,$FB,$A5,$E2,$29,$01,$85,$D8,$AA,$0A,$09
       .byte $0C,$85,$17,$E0,$01,$D0,$04,$46,$FB,$06,$FD,$A5,$E0,$C9,$0F,$D0
       .byte $39,$BC,$DB,$F7,$B9,$84,$00,$F0,$6C,$A5,$E4,$29,$01,$D0,$04,$B5
       .byte $D6,$F0,$62,$24,$E4,$50,$17,$2C,$82,$02,$70,$04,$A5,$D7,$85,$D6
       .byte $8A,$D0,$0B,$A5,$D2,$10,$4E,$A5,$E2,$29,$1F,$4C,$54,$F3,$A5,$FD
       .byte $29,$80,$D5,$D0,$F0,$3F,$95,$D0,$C9,$00,$D0,$39,$24,$FB,$50,$04
       .byte $B5,$D2,$10,$31,$B5,$DC,$95,$DA,$A9,$00,$95,$D4,$85,$E1,$A9,$08
       .byte $85,$15,$95,$28,$B4,$CE,$B9,$FE,$F7,$95,$D2,$B9,$DB,$F7,$A8,$B9
       .byte $80,$00,$18,$69,$05,$95,$EA,$B9,$84,$00,$29,$0F,$A8,$A5,$E4,$10
       .byte $02,$A0,$00,$94,$CC,$A5,$84,$D0,$5B,$A5,$89,$D0,$57,$A5,$D2,$10
       .byte $53,$A5,$D3,$10,$4F,$A2,$01,$BC,$DB,$F7,$A5,$E0,$C9,$0F,$D0,$07
       .byte $B5,$D4,$10,$03,$20,$72,$F6,$A5,$E2,$45,$C9,$4A,$45,$CB,$29,$3A
       .byte $18,$69,$11,$85,$84,$49,$08,$85,$89,$86,$ED,$A2,$00,$B9,$84,$00
       .byte $29,$08,$F0,$02,$A2,$91,$96,$80,$A6,$ED,$A5,$E2,$4A,$4A,$4A,$29
       .byte $01,$85,$83,$85,$CE,$49,$01,$85,$88,$85,$CF,$B5,$D4,$09,$80,$95
       .byte $D4,$CA,$10,$B3,$A6,$D8,$A5,$E4,$30,$03,$4C,$81,$F4,$F6,$D4,$A2
       .byte $14,$B5,$8E,$D0,$1D,$46,$D4,$90,$19,$A5,$D5,$29,$3A,$18,$69,$51
       .byte $95,$8E,$A0,$00,$29,$08,$F0,$02,$A0,$91,$94,$8A,$A9,$02,$95,$8D
       .byte $26,$D5,$8A,$38,$E9,$05,$AA,$10,$D8,$A6,$D8,$D0,$0C,$24,$E4,$50
       .byte $08,$24,$FB,$70,$04,$24,$30,$70,$0A,$B5,$DA,$10,$02,$A9,$00,$D5
       .byte $D2,$D0,$4D,$B5,$D2,$95,$DA,$20,$7C,$F6,$A9,$08,$85,$EC,$B5,$DA
       .byte $18,$69,$02,$A0,$07,$88,$38,$E9,$09,$10,$FA,$84,$F5,$B9,$DB,$F7
       .byte $A8,$B9,$80,$00,$69,$04,$F5,$EA,$10,$02,$49,$FF,$20,$B5,$F6,$D0
       .byte $1F,$B9,$84,$00,$30,$1A,$F0,$18,$09,$80,$29,$F0,$99,$84,$00,$96
       .byte $83,$06,$F5,$06,$F5,$06,$F5,$06,$F5,$20,$C9,$F6,$A9,$0F,$85,$EC
       .byte $4C,$5A,$F5,$B5,$D2,$30,$0E,$4A,$85,$ED,$A9,$1F,$38,$E5,$ED,$85
       .byte $18,$A9,$04,$85,$16,$B5,$30,$29,$C0,$F0,$03,$20,$6E,$F6,$A5,$E4
       .byte $29,$04,$D0,$28,$A5,$E2,$4A,$4A,$29,$07,$85,$ED,$F0,$1E,$A0,$28
       .byte $98,$18,$65,$ED,$AA,$B5,$93,$85,$EF,$B5,$94,$35,$93,$95,$93,$B5
       .byte $94,$05,$EF,$95,$94,$98,$38,$E9,$08,$A8,$10,$E4,$A6,$D8,$B5,$D2
       .byte $30,$AE,$C9,$02,$90,$AA,$C9,$21,$B0,$A6,$B4,$EA,$98,$18,$69,$10
       .byte $C0,$50,$90,$03,$18,$69,$10,$4A,$4A,$85,$ED,$29,$07,$85,$EF,$A5
       .byte $ED,$4A,$4A,$4A,$85,$ED,$29,$01,$A8,$A5,$ED,$C9,$03,$90,$01,$C8
       .byte $84,$F1,$A4,$EF,$B9,$D3,$F7,$85,$F3,$A5,$F1,$29,$01,$F0,$0A,$A0
       .byte $07,$46,$F3,$2A,$88,$10,$FA,$85,$F3,$B5,$D2,$85,$F5,$A9,$21,$38
       .byte $E5,$F5,$4A,$4A,$85,$F5,$06,$ED,$06,$ED,$06,$ED,$18,$65,$ED,$A8
       .byte $B9,$94,$00,$25,$F3,$F0,$25,$B9,$94,$00,$45,$F3,$99,$94,$00,$F6
       .byte $D4,$A9,$04,$85,$15,$B5,$D4,$C9,$06,$D0,$03,$20,$7C,$F6,$46,$F5
       .byte $E6,$F5,$20,$C9,$F6,$E6,$DF,$D0,$03,$4C,$26,$F7,$A2,$0F,$A0,$03
       .byte $A5,$E4,$10,$04,$A0,$02,$A2,$28,$84,$E9,$B5,$80,$18,$69,$01,$20
       .byte $85,$F6,$95,$82,$94,$81,$B5,$84,$29,$07,$25,$E2,$D0,$15,$B5,$84
       .byte $20,$BA,$F6,$75,$80,$95,$80,$10,$0A,$B5,$80,$C9,$92,$90,$04,$A9
       .byte $00,$95,$84,$B5,$84,$10,$0A,$A5,$EC,$C9,$01,$D0,$04,$A9,$00,$95
       .byte $84,$8A,$38,$E9,$05,$AA,$10,$C2,$A6,$D8,$B5,$D2,$30,$30,$C9,$2C
       .byte $B0,$0A,$A5,$E4,$10,$06,$A5,$E2,$29,$02,$D0,$02,$D6,$D2,$B5,$CC
       .byte $29,$06,$25,$E2,$D0,$11,$B5,$CC,$20,$BA,$F6,$75,$EA,$95,$EA,$10
       .byte $06,$B5,$EA,$C9,$9E,$B0,$04,$B5,$D2,$10,$03,$20,$6E,$F6,$A5,$E2
       .byte $4A,$B0,$18,$A5,$EC,$F0,$14,$A5,$EC,$85,$1A,$A9,$10,$E5,$EC,$85
       .byte $18,$A5,$E2,$29,$03,$09,$08,$85,$16,$C6,$EC,$A2,$03,$B5,$E8,$20
       .byte $85,$F6,$95,$20,$20,$AC,$F6,$CA,$E0,$01,$D0,$F1,$A9,$7E,$20,$85
       .byte $F6,$85,$21,$20,$AC,$F6,$85,$02,$85,$2A,$A0,$03,$A2,$0F,$A5,$E0
       .byte $D0,$10,$A9,$AA,$85,$C9,$85,$CA,$85,$CB,$A5,$E3,$29,$0F,$09,$A0
       .byte $85,$C8,$B9,$C8,$00,$20,$B5,$F6,$20,$4D,$F6,$CA,$CA,$B9,$C8,$00
       .byte $20,$4D,$F6,$CA,$CA,$88,$10,$EA,$85,$2B,$85,$2C,$4C,$0F,$F0,$29
       .byte $0F,$85,$FD,$06,$FD,$06,$FD,$18,$65,$FD,$69,$51,$95,$EC,$A9,$F7
       .byte $95,$ED,$60,$A9,$00,$85,$1B,$85,$1C,$85,$0D,$85,$0E,$85,$0F,$60
       .byte $B5,$D4,$D0,$0A,$B5,$D6,$F0,$06,$A9,$0C,$85,$15,$56,$D6,$A9,$FF
       .byte $95,$D2,$A9,$02,$95,$28,$60,$18,$69,$37,$48,$4A,$4A,$4A,$4A,$A8
       .byte $68,$29,$0F,$84,$ED,$18,$65,$ED,$C9,$0F,$90,$03,$E9,$0F,$C8,$C9
       .byte $08,$49,$0F,$B0,$03,$69,$01,$88,$C8,$0A,$0A,$0A,$0A,$60,$84,$02
       .byte $88,$D0,$FD,$95,$10,$60,$4A,$4A,$4A,$4A,$4A,$60,$29,$0F,$F0,$09
       .byte $A0,$01,$29,$08,$F0,$02,$A0,$FF,$98,$18,$60,$8A,$0A,$AA,$B5,$C9
       .byte $F8,$18,$65,$F5,$95,$C9,$A9,$00,$75,$C8,$95,$C8,$D8,$A5,$E4,$29
       .byte $01,$F0,$08,$B5,$C8,$29,$F0,$F0,$02,$85,$E0,$A6,$D8,$60,$A2,$FF
       .byte $9A,$86,$0C,$86,$E7,$A6,$E3,$BD,$E3,$F7,$85,$E4,$A9,$00,$85,$E1
       .byte $85,$E8,$85,$C8,$85,$C9,$85,$CA,$85,$CB,$A8,$A5,$E4,$29,$01,$D0
       .byte $02,$A0,$3F,$84,$D6,$84,$D7,$A2,$28,$A9,$00,$95,$80,$95,$84,$95
       .byte $83,$8A,$38,$E9,$05,$AA,$10,$F1,$A2,$01,$20,$7C,$F6,$A9,$00,$85
       .byte $16,$A9,$04,$95,$D4,$95,$19,$CA,$10,$F0,$A2,$2F,$A5,$E4,$30,$0E
       .byte $A9,$02,$85,$92,$A9,$FF,$95,$94,$CA,$10,$F9,$E8,$86,$DF,$A6,$D8
       .byte $4C,$5A,$F5,$E7,$A5,$A5,$A5,$E7,$42,$42,$42,$42,$42,$E7,$81,$E7
       .byte $24,$E7,$E7,$24,$66,$24,$E7,$24,$24,$E7,$A5,$81,$E7,$24,$E7,$81
       .byte $E7,$E7,$A5,$E7,$81,$E7,$24,$24,$24,$24,$E7,$E7,$A5,$E7,$A5,$E7
       .byte $E7,$24,$E7,$A5,$E7,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$86
       .byte $FF,$FF,$38,$30,$00,$00,$80,$C0,$FE,$0F,$18,$30,$00,$00,$BE,$88
       .byte $FF,$FF,$08,$3E,$00,$1F,$84,$CF,$7D,$0D,$0F,$00,$00,$00,$00,$18
       .byte $10,$7C,$FF,$7E,$00,$00,$10,$18,$52,$FF,$7E,$00,$00,$00,$00,$10
       .byte $14,$7F,$FA,$7C,$00,$80,$C0,$C0,$E0,$F8,$F8,$FC,$FF,$00,$05,$00
       .byte $00,$00,$00,$05,$05,$01,$02,$04,$08,$10,$20,$40,$80,$00,$05,$0A
       .byte $0F,$14,$19,$1E,$23,$28,$40,$00,$44,$04,$01,$05,$C1,$81,$05,$09
       .byte $00,$46,$18,$04,$4C,$49,$1B,$18,$46,$44,$84,$82,$00,$00,$00,$F0
       .byte $38,$2F
