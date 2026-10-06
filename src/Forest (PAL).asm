; Disassembly of roms/Forest (PAL).bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Forest (PAL).bin
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
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       JSR    LF973   
       LDX    #$03    
       STA    WSYNC   
LF012: DEX            
       BPL    LF012   
       STA    RESBL   
       LDA    #$20    
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$80    
       STA    $F4     
       STA    $E1     
LF029: LDA    SWCHB   
       LSR            
       BCS    LF046   
       JSR    LF973   
       LDA    #$0F    
       STA    $E1     
       LDA    #$03    
       STA    $C3     
       LDA    #$00    
       STA    $A5     
       STA    $F4     
       STA    $BC     
       STA    $BB     
       STA    $BA     
LF046: LDA    $AA     
       BEQ    LF057   
       DEC    $AA     
       BEQ    LF057   
       LDA    #$09    
       CMP    $AC     
       BNE    LF080   
       JMP    LF0FC   
LF057: LDA    $AC     
       CMP    #$09    
       BNE    LF06D   
       DEC    $C3     
       BPL    LF067   
       LDA    #$80    
       STA    $F4     
       STA    $E1     
LF067: JSR    LF973   
       JMP    LF0FC   
LF06D: BIT    $E1     
       BPL    LF074   
       JMP    LF0FC   
LF074: BIT    VBLANK  
       BPL    LF080   
       LDA    #$00    
       STA    $E0     
       LDA    #$6A    
       STA    $AA     
LF080: BIT    COLUP1  
       BPL    LF0FC   
       BIT    $A0     
       BPL    LF097   
       LDA    #$FF    
       STA    $AA     
       LDA    #$09    
       STA    $AC     
       LDA    #$04    
       STA    $F4     
       JMP    LF0FC   
LF097: LDA    $AC     
       CMP    #$07    
       BNE    LF0C2   
       LDA    $9C     
       CMP    $9B     
       BCC    LF0AC   
       LDA    #$0F    
       CLC            
       ADC    $9B     
       CMP    $9C     
       BCS    LF0FC   
LF0AC: LDA    #$0F    
       AND    $A1     
       BEQ    LF0D8   
       LDA    $B6     
       AND    #$0F    
       CMP    #$07    
       BEQ    LF0BC   
       INC    $B6     
LF0BC: JSR    LF930   
       JMP    LF0EA   
LF0C2: CMP    #$08    
       BNE    LF0FC   
       JSR    LFBED   
       BCS    LF0D2   
       JSR    LF7BE   
       LDA    #$10    
       STA    $A9     
LF0D2: JSR    LFB4C   
       JMP    LF0FC   
LF0D8: LDA    $B6     
       AND    #$F0    
       CMP    #$70    
       BEQ    LF0E7   
       CLC            
       LDA    $B6     
       ADC    #$10    
       STA    $B6     
LF0E7: JSR    LF8F5   
LF0EA: LDA    $B1     
       BNE    LF0FC   
       LDA    #$80    
       STA    $AA     
       STA    $F4     
       JSR    LFA53   
       JSR    LF973   
       INC    $A5     
LF0FC: DEC    $CA     
       BMI    LF103   
       JMP    LF1AE   
LF103: LDA    $CC     
       STA    $CA     
       BIT    $E3     
       BMI    LF10E   
       JMP    LF1AE   
LF10E: LDA    #$FF    
       STA    $B9     
       LDA    $CB     
       EOR    #$01    
       STA    $CB     
       TAX            
       LDA    LF9FB,X 
       STA    $C7     
       LDA    $CF     
       AND    #$08    
       BNE    LF170   
       LDA    $D1     
       AND    #$03    
       CLC            
       ADC    $D0     
       STA    $D0     
       BIT    $CF     
       BMI    LF14F   
       CMP    #$18    
       BCC    LF14F   
       LDA    $CF     
       ORA    #$80    
       STA    $CF     
       JSR    LF967   
       BCC    LF14F   
       LDA    $CF     
       AND    #$07    
       BNE    LF14F   
       INC    $CF     
       LDA    $D0     
       SEC            
       SBC    #$10    
       STA    $D0     
LF14F: LDA    $CF     
       AND    #$01    
       BEQ    LF15C   
       LDA    $D0     
       CMP    #$8E    
       JMP    LF160   
LF15C: LDA    $D0     
       CMP    #$9E    
LF160: BCC    LF1A3   
       JSR    LFBED   
       BCC    LF16A   
       JMP    LF1A3   
LF16A: JSR    LF7BE   
       JMP    LF1AE   
LF170: LDA    $D1     
       AND    #$03    
       EOR    #$FF    
       CLC            
       ADC    $D0     
       STA    $D0     
       BIT    $CF     
       BMI    LF198   
       CMP    #$8A    
       BCS    LF198   
       LDA    $CF     
       ORA    #$80    
       STA    $CF     
       JSR    LF967   
       BCC    LF198   
       LDA    $CF     
       AND    #$07    
       BNE    LF198   
       INC    $CF     
       BNE    LF1A3   
LF198: LDA    $D0     
       CMP    #$0A    
       BCS    LF1A3   
       JSR    LFBED   
       BCC    LF16A   
LF1A3: LDA    $D0     
       JSR    LFB5F   
       STA    $CE     
       DEY            
       DEY            
       STY    $CD     
LF1AE: DEC    $D6     
       BMI    LF1B5   
       JMP    LF224   
LF1B5: LDA    $D7     
       EOR    #$01    
       STA    $D7     
       TAX            
       LDA    LFA03,X 
       STA    $D3     
       LDA    $D8     
       STA    $D6     
       LDA    #$FF    
       STA    $DE     
       LDA    $DB     
       AND    #$08    
       BNE    LF1DD   
       INC    $DC     
       JMP    LF1DF   
LF1D4: LDA    #$08    
       EOR    $DB     
       STA    $DB     
       JMP    LF224   
LF1DD: DEC    $DC     
LF1DF: DEC    $E2     
       BNE    LF1E5   
       BEQ    LF1D4   
LF1E5: LDA    $DC     
       CMP    $9C     
       BNE    LF1F6   
       JSR    LF967   
       AND    #$3F    
       ORA    #$07    
       STA    $E2     
       LDA    $DC     
LF1F6: CMP    #$0A    
       BCS    LF1FC   
       BCC    LF1D4   
LF1FC: CMP    #$9C    
       BCS    LF1D4   
       JSR    LFB5F   
       STA    $DA     
       STY    $D9     
       JSR    LF967   
       BCS    LF210   
       INC    $DF     
       BNE    LF212   
LF210: DEC    $DF     
LF212: LDA    $DF     
       CMP    #$54    
       BCC    LF21C   
       LDA    #$53    
       BNE    LF222   
LF21C: CMP    #$46    
       BCS    LF222   
       LDA    #$46    
LF222: STA    $DF     
LF224: LDA    INTIM   
       BNE    LF224   
       LDA    $DA     
       LDY    $D9     
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       LDX    $A6     
       BNE    LF23D   
LF236: DEY            
       BPL    LF236   
       STA    RESM1   
       STA    HMM1    
LF23D: STA    WSYNC   
       LDA    $DE     
       EOR    #$FF    
       ORA    $E0     
       ORA    $A6     
       BNE    LF254   
       LDA    $DF     
       CLC            
       SBC    #$08    
       STA    $A6     
       LDA    #$FF    
       STA    $E0     
LF254: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    VBLANK  
       STA    PF1     
       STA    PF2     
       STA    COLUBK  
       STA    GRP0    
       STA    $9F     
       STA    $95     
       STA    WSYNC   
       INC    $9E     
       LDA    #$01    
       AND    $9E     
       BEQ    LF284   
       ROR            
       ROR            
LF284: STA    $A0     
       LDA    #$5B    
       STA    $96     
       STA    WSYNC   
       LDA    #$27    
       STA    TIM64T  
       JSR    LFC1F   
       BIT    $E1     
       BPL    LF29B   
       JMP    LF3F4   
LF29B: LDA    $AA     
       BEQ    LF2A2   
       JMP    LF3F4   
LF2A2: DEC    $AB     
       BMI    LF2A9   
       JMP    LF3F4   
LF2A9: LDA    #$03    
       STA    $AB     
       LDY    $A1     
       BIT    $A2     
       BMI    LF313   
       BIT    REFP1   
       BPL    LF313   
       BIT    SWCHA   
       BMI    LF2F6   
       TYA            
       AND    #$F0    
       STA    $A1     
       LDX    #$95    
       CPX    $9C     
       BCC    LF2CC   
       INC    $9C     
       JMP    LF305   
LF2CC: INC    $A4     
       LDA    #$0A    
       STA    $9C     
       BNE    LF2DE   
LF2D4: LDA    $A4     
       BEQ    LF305   
       DEC    $A4     
       LDA    #$9B    
       STA    $9C     
LF2DE: JSR    LF7BE   
       JSR    LF850   
       BIT    $A1     
       BPL    LF2F0   
       BVC    LF2F0   
       LDA    $A1     
       AND    #$BF    
       STA    $A1     
LF2F0: LDA    #$00    
       STA    $E0     
       BEQ    LF305   
LF2F6: BVS    LF30F   
       TYA            
       ORA    #$08    
       STA    $A1     
       LDX    #$10    
       CPX    $9C     
       BCS    LF2D4   
       DEC    $9C     
LF305: LDA    #$03    
       CMP    $AC     
       BCC    LF313   
       DEC    $AC     
       BPL    LF313   
LF30F: LDA    #$03    
       STA    $AC     
LF313: BIT    $A1     
       BPL    LF347   
       LDA    #$04    
       STA    $AC     
       BVS    LF337   
       DEC    $97     
       TAX            
       LDA    #$0A    
       CMP    $97     
       BEQ    LF329   
       JMP    LF3BD   
LF329: DEC    $97     
       TYA            
       AND    #$0F    
       STA    $A1     
       LDA    #$03    
       STA    $AC     
       JMP    LF3BD   
LF337: INC    $97     
       LDA    #$10    
       CMP    $97     
       BCS    LF3BD   
       TYA            
       AND    #$BF    
       STA    $A1     
       JMP    LF3BD   
LF347: LDA    #$10    
       AND    SWCHA   
       BNE    LF36E   
       BIT    $A2     
       BPL    LF360   
LF352: JSR    LF8A4   
       LDA    #$10    
       CMP    $97     
       BEQ    LF3BD   
       INC    $97     
       JMP    LF3BD   
LF360: JSR    LF8BB   
       BIT    $A2     
       BMI    LF352   
       LDA    #$02    
       STA    $F4     
       JMP    LF3B0   
LF36E: LDA    #$20    
       AND    SWCHA   
       BNE    LF3BD   
       BIT    $A2     
       BPL    LF391   
       JSR    LF8A4   
       DEC    $97     
       LDA    #$09    
       CMP    $97     
       BNE    LF3BD   
       LDA    #$03    
       STA    $AC     
       LDA    $A2     
       AND    #$7F    
       STA    $A2     
       JMP    LF3BD   
LF391: LDA    $A2     
       BVS    LF3C7   
       BIT    REFP1   
       BPL    LF39C   
       JMP    LF429   
LF39C: LDA    #$01    
       STA    $F4     
       LDA    #$08    
       STA    $AC     
       LDA    #$10    
       STA    $AA     
       LDA    #$40    
       ORA    $A2     
       STA    $A2     
       BNE    LF3F4   
LF3B0: INC    $97     
       INC    $97     
       TYA            
       ORA    #$C0    
       STA    $A1     
       LDA    #$04    
       STA    $AC     
LF3BD: LDA    $A2     
       BIT    $A1     
       BMI    LF3F4   
       BIT    $A2     
       BMI    LF3F4   
LF3C7: LDX    #$03    
       BVC    LF3D1   
       BIT    REFP1   
       BMI    LF3EA   
       BPL    LF3F2   
LF3D1: BIT    REFP1   
       BMI    LF3F4   
       LDA    #$01    
       STA    $F4     
       LDX    #$07    
       STX    $AC     
       LDA    $A2     
       ORA    #$40    
       STA    $A2     
       LDA    #$10    
       STA    $AA     
       JMP    LF3F4   
LF3EA: AND    #$B0    
       STA    $A2     
       LDA    #$00    
       STA    $F5     
LF3F2: STX    $AC     
LF3F4: LDX    $A4     
       LDA    LF9F5,X 
       JSR    LFB5F   
       STA    $B8     
       STY    $B7     
       LDX    #$00    
       BIT    $A0     
       BMI    LF41E   
       LDA    $AC     
       CMP    #$07    
       BEQ    LF412   
       CMP    #$08    
       BEQ    LF412   
       BNE    LF41E   
LF412: LDA    #$0F    
       AND    $A1     
       BNE    LF41C   
       LDX    #$07    
       BNE    LF41E   
LF41C: LDX    #$F8    
LF41E: TXA            
       CLC            
       ADC    $9C     
       JSR    LFB5F   
       STA    $C5     
       STY    $C4     
LF429: LDA    INTIM   
       BNE    LF429   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$04    
       STA    CTRLPF  
       LDA    $A4     
       CMP    #$02    
       BEQ    LF440   
       LDA    #$0F    
       BNE    LF442   
LF440: LDA    #$36    
LF442: STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A3     
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$CA    
       STA    COLUBK  
       LDA    $B8     
       LDY    $B7     
       STA    WSYNC   
       STA    HMOVE   
LF45C: DEY            
       BPL    LF45C   
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDX    $A4     
       LDA    #$C0    
       AND    $A3     
       STA    $AD     
       LDA    LF9E9,X 
       STA    $8E     
       LDA    LF9EC,X 
       STA    $8F     
       LDA    LF9EF,X 
       STA    COLUP1  
       LDA    LF9F2,X 
       STA    $98     
       LDA    LF9F8,X 
       STA    NUSIZ1  
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A3     
       STA    GRP1    
       LDY    #$07    
       LDA    $A4     
       CMP    #$02    
       BEQ    LF4C6   
LF49A: STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       LDA    LFEA0,Y 
       STA    PF0     
       LDA    LFEA8,Y 
       STA    PF1     
       LDA    LFEB0,Y 
       STA    PF2     
       LDA    LFEB8,Y 
       STA    PF0     
       LDA    LFEC0,Y 
       STA    PF1     
       LDA    LFEC8,Y 
       STA    PF2     
       DEY            
       STA    HMCLR   
       BPL    LF49A   
       JMP    LF4ED   
LF4C6: STA    WSYNC   
       STA    HMOVE   
       LDA    LFED0,Y 
       STA    PF0     
       LDA    LFED8,Y 
       STA    PF1     
       LDA    LFEE0,Y 
       STA    PF2     
       LDA    LFEE8,Y 
       STA    PF0     
       LDA    LFEF0,Y 
       STA    PF1     
       LDA    LFEF8,Y 
       STA    PF2     
       DEY            
       STA    HMCLR   
       BPL    LF4C6   
LF4ED: INY            
       STY    PF0     
       STY    PF1     
       STY    PF2     
       STY    CTRLPF  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $DA     
       LDY    $D9     
       STA    WSYNC   
       STA    HMOVE   
LF502: DEY            
       BPL    LF502   
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDX    $AC     
       BIT    $A0     
       BPL    LF529   
       LDA    LF9DA,X 
       STA    $8C     
       LDA    LF9E8   
       STA    $90     
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       BNE    LF549   
LF529: TXA            
       SEC            
       SBC    #$07    
       BCS    LF531   
       LDA    #$FF    
LF531: TAX            
       INX            
       CPX    #$03    
       BCC    LF539   
       LDX    #$00    
LF539: LDA    LF9E4,X 
       STA    $8C     
       LDA    LF9E7   
       STA    $90     
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
LF549: STA    WSYNC   
       STA    HMOVE   
       LDA    #$36    
       STA    COLUPF  
       LDA    #$08    
       STA    $99     
       STA    $9A     
       LDX    $A3     
       STX    $95     
       LDA    $DB     
       STA    NUSIZ0  
       STA    REFP0   
       LDX    #$00    
LF563: STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       STX    GRP0    
       LDA    $95     
       STA    GRP1    
       DEC    $96     
       LDY    $96     
       CPY    #$3C    
       BEQ    LF5BD   
       LDA    $9F     
       CPY    $98     
       BNE    LF57F   
       ORA    #$80    
LF57F: CPY    $DF     
       BNE    LF585   
       ORA    #$40    
LF585: STA    $9F     
       LDA    #$00    
       CPY    $A6     
       BNE    LF591   
       ORA    #$02    
       AND    $E0     
LF591: STA    WSYNC   
       STA    HMOVE   
       STA    ENAM1   
       LDX    $A3     
       STX    $95     
       BIT    $9F     
       BPL    LF5A9   
       DEC    $9A     
       BMI    LF5A9   
       LDY    $9A     
       LDA    ($8E),Y 
       STA    $95     
LF5A9: LDX    #$00    
       BVC    LF563   
       DEC    $99     
       BMI    LF563   
       LDY    $99     
       LDA    ($D3),Y 
       AND    $DE     
       TAX            
       LDA    $D5     
       JMP    LF563   
LF5BD: LDA    #$00    
       STA    $9F     
       LDY    #$07    
LF5C3: LDX    #$00    
       LDA    $A3     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       STX    ENAM1   
       LDA    LFA09,Y 
       STA    PF0     
       LDA    LFA11,Y 
       STA    PF1     
       LDA    LFA19,Y 
       STA    PF2     
       LDA    LFA21,Y 
       STA    PF0     
       LDA    LFA29,Y 
       STA    PF1     
       LDA    LFA31,Y 
       STA    PF2     
       STA    HMCLR   
       DEY            
       STA    WSYNC   
       STA    HMOVE   
       LDA    LFA39,Y 
       STA    COLUBK  
       LDA    LFA09,Y 
       STA    PF0     
       LDA    LFA11,Y 
       STA    PF1     
       LDA    LFA19,Y 
       STA    PF2     
       LDA    LFA21,Y 
       STA    PF0     
       LDA    LFA29,Y 
       STA    PF1     
       LDA    LFA31,Y 
       STA    PF2     
       STA    HMCLR   
       DEC    $96     
       DEY            
       BPL    LF5C3   
       STY    ENABL   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$53    
       STA    COLUBK  
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    CXCLR   
       LDX    #$31    
       STX    CTRLPF  
       LDX    #$23    
       STX    COLUPF  
       LDA    $C5     
       LDY    $C4     
       STA    WSYNC   
       STA    HMOVE   
LF642: DEY            
       BPL    LF642   
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A1     
       AND    #$0F    
       STA    REFP0   
       LDA    #$30    
       STA    NUSIZ0  
       LDA    #$10    
       STA    $99     
       LSR            
       STA    $9A     
       LDX    $A3     
       STX    $95     
       LDX    #$00    
       STA    HMCLR   
LF666: STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       STX    GRP0    
       LDA    $95     
       STA    GRP1    
       DEC    $96     
       LDY    $96     
       BEQ    LF6BC   
       LDA    $9F     
       CPY    $98     
       BNE    LF680   
       ORA    #$80    
LF680: CPY    $97     
       BNE    LF686   
       ORA    #$40    
LF686: STA    $9F     
       LDA    #$00    
       CPY    $A6     
       BNE    LF692   
       ORA    #$02    
       AND    $E0     
LF692: STA    WSYNC   
       STA    HMOVE   
       STA    ENAM1   
       LDX    $A3     
       STX    $95     
       BIT    $9F     
       BPL    LF6AA   
       DEC    $9A     
       BMI    LF6AA   
       LDY    $9A     
       LDA    ($8E),Y 
       STA    $95     
LF6AA: LDX    #$00    
       BVC    LF666   
       DEC    $99     
       BMI    LF666   
       LDY    $99     
       LDA    ($8C),Y 
       TAX            
       LDA    ($90),Y 
       JMP    LF666   
LF6BC: STY    $95     
       STY    ENAM1   
       LDA    $AD     
       STA    PF2     
       TYA            
       BIT    $9F     
       BVC    LF6D1   
       DEC    $99     
       BMI    LF6D1   
       LDY    $99     
       LDA    ($8C),Y 
LF6D1: LDY    $CD     
       STA    WSYNC   
       STA    HMOVE   
       TAX            
       LDA    #$08    
       STA    $9A     
       LDA    $CE     
LF6DE: DEY            
       BPL    LF6DE   
       STA    RESP1   
       STA    HMP1    
LF6E5: STA    WSYNC   
       STA    HMOVE   
       LDA    #$86    
       STA    COLUP0  
       STX    GRP0    
       LDA    $95     
       STA    GRP1    
       LDA    $CF     
       STA    NUSIZ1  
       STA    REFP1   
       DEC    $9A     
       BMI    LF733   
       LDY    $9A     
       LDA    $C9     
       STA    COLUP1  
       LDA    ($C7),Y 
       AND    $B9     
       STA    $95     
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$55    
       STA    COLUBK  
       LDX    #$07    
       CPX    $9A     
       BNE    LF71F   
       BIT    $A0     
       BPL    LF71F   
       STA    CXCLR   
LF71F: LDX    #$00    
       BIT    $9F     
       BVC    LF730   
       DEC    $99     
       BMI    LF730   
       LDY    $99     
       LDA    ($8C),Y 
       TAX            
       LDA    #$86    
LF730: JMP    LF6E5   
LF733: LDA    #$24    
       STA    COLUBK  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM1   
       STA    PF2     
       STA    COLUPF  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$24    
       JSR    LFA62   
       LDA    $E1     
       STA    $C6     
       LDA    #$09    
       STA    TIM64T  
       JSR    LFAD4   
LF760: LDA    INTIM   
       BNE    LF760   
       LDA    #$24    
       JSR    LFA62   
       LDA    #$00    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$20    
       STA    TIM64T  
       LDA    #$20    
       STA    $C6     
       JSR    LFAD4   
       LDY    #$4A    
       LDA    $A4     
       TAX            
       BPL    LF786   
       LDA    #$00    
       TAX            
LF786: CMP    #$02    
       BCS    LF790   
       LDA    #$00    
       STA    $A3     
       BEQ    LF79D   
LF790: BNE    LF798   
       LDA    #$FF    
       STA    $A3     
       BNE    LF79D   
LF798: LDA    #$00    
       STA    $A3     
       TAX            
LF79D: STX    $A4     
       LDA    $AC     
       CMP    #$09    
       BEQ    LF7B0   
       JSR    LFA41   
       BNE    LF7B0   
       DEC    $C3     
       LDA    #$50    
       STA    $C0     
LF7B0: LDA    $A6     
       BNE    LF7B9   
       STA    $E0     
       JMP    LF029   
LF7B9: DEC    $A6     
       JMP    LF029   
LF7BE: LDA    #$00    
       STA    $B9     
       LDX    $AC     
       CPX    #$09    
       BNE    LF7CC   
       STA    $E3     
       BEQ    LF83A   
LF7CC: LDA    #$FF    
       STA    $E3     
       JSR    LF967   
       ORA    #$0C    
       STA    $C9     
       JSR    LF967   
       AND    #$03    
       ASL            
       STA    $CB     
       JSR    LF967   
       AND    #$03    
       ORA    #$01    
       STA    $CC     
       LDA    $A5     
       ASL            
       STA    $BE     
       LDA    #$48    
       SBC    $BE     
       CMP    #$05    
       BCS    LF7F7   
       LDA    #$05    
LF7F7: STA    $CA     
       LDA    $A5     
       LSR            
       STA    $BD     
       JSR    LF967   
       ADC    $BD     
       ORA    #$01    
       STA    $D1     
       JSR    LF967   
       AND    #$0F    
       BNE    LF810   
       LDA    #$01    
LF810: TAY            
       LDX    $9C     
       CPX    #$28    
       BCS    LF81B   
       LDA    #$08    
       BNE    LF825   
LF81B: CPX    #$78    
       BCC    LF823   
       LDA    #$00    
       BEQ    LF825   
LF823: AND    #$08    
LF825: STA    $CF     
       TYA            
       AND    #$01    
       TAX            
       LDA    LFA05,X 
       ORA    $CF     
       STA    $CF     
       LDX    #$9B    
       AND    #$08    
       BNE    LF83A   
       LDX    #$08    
LF83A: STX    $D0     
       LDA    $A3     
       BEQ    LF84E   
       LDA    $CB     
       BNE    LF84E   
       LDA    #$80    
       ORA    $CF     
       STA    $CF     
       LDX    #$50    
       STX    $D0     
LF84E: TXA            
       RTS            

LF850: LDA    #$00    
       STA    $E0     
       STA    $DE     
       JSR    LF967   
       ORA    #$0F    
       STA    $D5     
       JSR    LF967   
       STA    $E2     
       LDA    #$3C    
       STA    $DF     
       LDA    $A5     
       AND    #$07    
       STA    $BD     
       LDA    #$00    
       STA    $D7     
       LDA    #$04    
       CLC            
       SBC    $BD     
       CMP    #$01    
       BCS    LF87B   
       LDA    #$01    
LF87B: STA    $D8     
       LDA    #$30    
       STA    $D6     
       JSR    LF967   
       AND    #$0F    
       BNE    LF88A   
       LDA    #$01    
LF88A: TAY            
       AND    #$08    
       STA    $DB     
       TYA            
       AND    #$01    
       TAX            
       LDA    LFA07,X 
       ORA    $DB     
       STA    $DB     
       JSR    LF967   
       AND    #$3F    
       ADC    #$10    
       STA    $DC     
       RTS            

LF8A4: LDX    #$05    
       LDA    $A2     
       BVS    LF8B3   
       ORA    #$40    
       STA    $A2     
       STX    $AC     
       JMP    LF8BA   
LF8B3: INX            
       STX    $AC     
       AND    #$BF    
       STA    $A2     
LF8BA: RTS            

LF8BB: BIT    $A3     
       BPL    LF8F4   
       CLC            
       LDA    #$08    
       ADC    $9B     
       SEC            
       SBC    $9C     
       BCS    LF8DD   
       CMP    #$F6    
       BCC    LF8F4   
       LDA    $9B     
       CLC            
       ADC    #$0D    
       STA    $9C     
       LDA    $A1     
       ORA    #$08    
       STA    $A1     
       JMP    LF8EE   
LF8DD: CMP    #$0A    
       BCS    LF8F4   
       LDA    $9B     
       SEC            
       SBC    #$04    
       STA    $9C     
       LDA    $A1     
       AND    #$F0    
       STA    $A1     
LF8EE: LDA    #$80    
       ORA    $A2     
       STA    $A2     
LF8F4: RTS            

LF8F5: BIT    $A3     
       BPL    LF92F   
       LDA    #$0F    
       BIT    $A2     
       BNE    LF92F   
       ORA    $A2     
       STA    $A2     
       LDA    $B6     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       SEC            
       SBC    #$03    
       BEQ    LF92F   
       ASL            
       STA    $BD     
LF914: LDA    $AE,X   
       TAY            
       AND    #$0F    
       STA    $BE     
       TYA            
       LSR            
       AND    #$F0    
       ORA    $BE     
       STA    $AE,X   
       DEX            
       DEC    $BD     
       BNE    LF914   
       LDA    #$01    
       STA    $A8     
       JSR    LFB4C   
LF92F: RTS            

LF930: BIT    $A3     
       BPL    LF966   
       LDA    #$0F    
       BIT    $A2     
       BNE    LF966   
       ORA    $A2     
       STA    $A2     
       LDA    $B6     
       AND    #$0F    
       TAX            
       SEC            
       SBC    #$03    
       BEQ    LF966   
       ASL            
       STA    $BD     
LF94B: LDA    $AE,X   
       TAY            
       AND    #$F0    
       STA    $BE     
       TYA            
       ASL            
       AND    #$0F    
       ORA    $BE     
       STA    $AE,X   
       DEX            
       DEC    $BD     
       BNE    LF94B   
       LDA    #$01    
       STA    $A8     
       JSR    LFB4C   
LF966: RTS            

LF967: LDA    $9C     
       ORA    $BB     
       EOR    $9E     
       EOR    $D2     
       LSR            
       STA    $D2     
       RTS            

LF973: LDA    LF9E8   
       STA    $90     
       LDA    #$50    
       STA    $C0     
       LDY    #$00    
       STY    $BF     
       STY    $C1     
       LDX    #$09    
LF984: STY    $A1,X   
       DEX            
       BPL    LF984   
       DEY            
       STY    $8D     
       STY    $91     
       LDX    #$07    
LF990: STY    $AE,X   
       DEX            
       BPL    LF990   
       DEY            
       STY    $8B     
       STY    $89     
       STY    $87     
       STY    $85     
       STY    $83     
       STY    $81     
       LDA    #$08    
       STA    $97     
       LDA    #$10    
       STA    $9C     
       LDA    #$33    
       STA    $B6     
       LDA    #$03    
       STA    $AC     
       LDA    #$58    
       STA    $8E     
       LDA    #$4A    
       STA    $9B     
       JSR    LF7BE   
       JSR    LF850   
       LDA    #$FD    
       STA    $C8     
       STA    $D4     
       LDA    #$03    
       STA    $AB     
       LDX    #$0F    
       LDA    #$00    
LF9CE: STA    $E4,X   
       DEX            
       BPL    LF9CE   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LF9DA: .byte $00,$10,$20,$30,$40,$50,$60,$70,$80,$90
LF9E4: .byte $A0,$B0,$C0
LF9E7: .byte $D0
LF9E8: .byte $E0
LF9E9: .byte $90,$98,$AE
LF9EC: .byte $FE,$FE,$00
LF9EF: .byte $27,$47,$23
LF9F2: .byte $28,$1E,$08
LF9F5: .byte $30,$60,$4A
LF9F8: .byte $05,$05,$05
LF9FB: .byte $C0,$C8,$D0,$D8,$E0,$E8,$F0,$F8
LFA03: .byte $E0,$E8
LFA05: .byte $00,$05
LFA07: .byte $00,$05
LFA09: .byte $F0,$F0,$F0,$C0,$00,$00,$00,$00
LFA11: .byte $FF,$FF,$FF,$FF,$FF,$3F,$0F,$00
LFA19: .byte $FF,$FF,$FF,$3F,$0F,$03,$00,$00
LFA21: .byte $F0,$F0,$F0,$C0,$C0,$00,$00,$00
LFA29: .byte $FF,$FF,$FF,$FF,$FF,$FF,$1F,$07
LFA31: .byte $FF,$FF,$FF,$FF,$FF,$1F,$07,$01
LFA39: .byte $2F,$2F,$4F,$4E,$8D,$8C,$8B,$8A
LFA41: SED            
       SEC            
       LDA    $C1     
       SBC    #$01    
       STA    $C1     
       LDA    $C0     
       SBC    #$00    
       STA    $C0     
       CLD            
       ORA    $C1     
       RTS            

LFA53: LDX    #$02    
       SED            
       CLC            
LFA57: LDA    $BF,X   
       ADC    $BA,X   
       STA    $BA,X   
       DEX            
       BPL    LFA57   
       CLD            
       RTS            

LFA62: STA    WSYNC   
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       NOP            
       STA    HMP0    
       STA    RESP0   
       STA    RESP1   
       STA    REFP0   
       STA    REFP1   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$07    
       STA    $92     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$FF    
       STA    COLUP0  
       STA    COLUP1  
LFA9F: LDY    $92     
       LDA    ($8A),Y 
       STA    $93     
       LDA    ($88),Y 
       TAX            
       LDA    ($80),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($84),Y 
       STA    GRP0    
       LDA    ($86),Y 
       LDY    $93     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $92     
       BPL    LFA9F   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LFAD4: LDA    #$80    
       AND    $C6     
       BEQ    LFAF3   
       LDA    #$58    
       STA    $8A     
       LDA    #$60    
       STA    $88     
       LDA    #$68    
       STA    $86     
       LDA    #$70    
       STA    $84     
       LDA    #$78    
       STA    $82     
       LDA    #$80    
       STA    $80     
       RTS            

LFAF3: LDA    #$20    
       AND    $C6     
       BEQ    LFB09   
       LDA    $BA     
       STA    $92     
       LDA    $BB     
       STA    $93     
       LDA    $BC     
       STA    $94     
       JSR    LFB1F   
       RTS            

LFB09: LDA    #$0F    
       AND    $C6     
       BEQ    LFB1E   
       LDA    $BF     
       STA    $92     
       LDA    $C0     
       STA    $93     
       LDA    $C1     
       STA    $94     
       JSR    LFB1F   
LFB1E: RTS            

LFB1F: LDX    #$02    
LFB21: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $92,X   
       AND    #$F0    
       LSR            
       STA.wy $0080,Y 
       LDA    $92,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0082,Y 
       DEX            
       BPL    LFB21   
       INX            
LFB3B: LDA    $80,X   
       CMP    #$00    
       BNE    LFB4B   
       LDA    #$50    
       STA    $80,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LFB3B   
LFB4B: RTS            

LFB4C: LDX    #$02    
       LDY    #$00    
       SED            
       CLC            
LFB52: LDA    $A7,X   
       ADC    $BA,X   
       STA    $BA,X   
       STY    $A7,X   
       DEX            
       BPL    LFB52   
       CLD            
       RTS            

LFB5F: SEC            
       SBC    #$08    
       LDY    #$02    
       SEC            
LFB65: INY            
       SBC    #$0F    
       BCS    LFB65   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LFB73: LDA    $E4     
       STA    AUDC0   
       LDA    $EA     
       BNE    LFBA4   
       LDY    $E9     
       INC    $E9     
       LDA    ($E7),Y 
       BNE    LFB8C   
       STA    AUDV0   
       STA    $E4     
       STA    $E9     
       STA    $F4     
       RTS            

LFB8C: LDX    $E5     
       STX    $EA     
       STA    AUDF0   
       TAX            
       AND    #$0F    
       BNE    LFB9B   
       STA    $EB     
       BEQ    LFBA4   
LFB9B: TXA            
       AND    #$80    
       ORA    $E6     
       STA    $EB     
       BNE    LFBAE   
LFBA4: DEC    $EA     
       LDA    $EB     
       BMI    LFBAE   
       BEQ    LFBAE   
       DEC    $EB     
LFBAE: STA    AUDV0   
       RTS            

LFBB1: LDA    $EC     
       STA    AUDC1   
       LDA    $F2     
       BNE    LFBE0   
       LDY    $F1     
       INC    $F1     
       LDA    ($EF),Y 
       BNE    LFBC8   
       STA    AUDV1   
       STA    $EC     
       STA    $F1     
       RTS            

LFBC8: LDX    $ED     
       STX    $F2     
       STA    AUDF1   
       TAX            
       AND    #$0F    
       BNE    LFBD7   
       STA    $F3     
       BEQ    LFBE0   
LFBD7: TXA            
       AND    #$80    
       ORA    $EE     
       STA    $F3     
       BNE    LFBEA   
LFBE0: DEC    $F2     
       LDA    $F3     
       BMI    LFBEA   
       BEQ    LFBEA   
       DEC    $F3     
LFBEA: STA    AUDV1   
       RTS            

LFBED: LDY    #$10    
       LDA    $CF     
       TAX            
       AND    #$88    
       STA    $BD     
       AND    #$08    
       BNE    LFBFC   
       LDY    #$00    
LFBFC: STY    $BE     
       TXA            
       AND    #$07    
       TAX            
       BEQ    LFC1D   
       CMP    #$04    
       BCS    LFC1D   
       AND    #$01    
       BEQ    LFC1D   
       TXA            
       LSR            
       AND    $CF     
       ORA    $BD     
       STA    $CF     
       LDA    $D0     
       CLC            
       ADC    $BE     
       STA    $D0     
       SEC            
       RTS            

LFC1D: CLC            
       RTS            

LFC1F: LDX    $F4     
       BPL    LFC2A   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LFC2A: BEQ    LFCA9   
       CPX    #$01    
       BNE    LFC56   
       CPX    $F5     
       BEQ    LFC44   
       STX    $F5     
       LDA    #$08    
       STA    AUDC0   
       STA    $E4     
       LDA    #$1F    
       STA    AUDF0   
       LDA    #$10    
       STA    $EA     
LFC44: DEC    $EA     
       LDA    $EA     
       STA    AUDV0   
       BEQ    LFC4E   
       BNE    LFCA9   
LFC4E: STA    AUDC0   
       STA    $F4     
       STA    $E4     
       BEQ    LFCA9   
LFC56: CPX    #$02    
       BNE    LFC72   
       CPX    $F5     
       BEQ    LFC6C   
       STX    $F5     
       LDX    #$05    
LFC62: LDA    LFCE2,X 
       STA    $E4,X   
       STX    $EA     
       DEX            
       BPL    LFC62   
LFC6C: JSR    LFB73   
       JMP    LFCA9   
LFC72: CPX    #$04    
       BNE    LFCA9   
       CPX    $F5     
       BEQ    LFC94   
       STX    $F5     
       LDX    #$05    
LFC7E: LDA    LFCE8,X 
       STA    $E4,X   
       STX    $EA     
       DEX            
       BPL    LFC7E   
       LDX    #$05    
LFC8A: LDA    LFCEE,X 
       STA    $EC,X   
       STX    $F2     
       DEX            
       BPL    LFC8A   
LFC94: LDA    $EA     
       STA    $F2     
       LDA    $E9     
       STA    $F1     
       JSR    LFB73   
       JSR    LFBB1   
       LDA    $E4     
       BNE    LFCE1   
       STA    $AA     
       RTS            

LFCA9: LDA    $EC     
       BNE    LFCB7   
       LDX    #$05    
LFCAF: LDA    LFD22,X 
       STA    $EC,X   
       DEX            
       BPL    LFCAF   
LFCB7: JSR    LFBB1   
       LDX    $F4     
       BNE    LFCE1   
       CPX    $F5     
       BEQ    LFCC8   
       LDX    $F2     
       BNE    LFCE1   
       STX    $F5     
LFCC8: LDX    #$05    
LFCCA: LDA    LFD1C,X 
       STA    $E4,X   
       DEX            
       BPL    LFCCA   
       LDA    $F2     
       STA    $EA     
       LDA    $F1     
       STA    $E9     
       LDA    $F3     
       STA    $EB     
       JSR    LFB73   
LFCE1: RTS            

LFCE2: .byte $04,$03,$0F,$F4,$FC,$00
LFCE8: .byte $0C,$0C,$0D,$FA,$FC,$00
LFCEE: .byte $0C,$0C,$0F,$0B,$FD,$00,$9D,$9B,$97,$95,$93,$00,$8C,$8C,$8C,$0C
       .byte $8F,$8F,$8F,$0F,$0C,$0E,$0F,$11,$8F,$8F,$8F,$0F,$00,$93,$93,$93
       .byte $13,$9A,$9A,$9A,$1A,$13,$1A,$17,$14,$93,$93,$93,$13,$00
LFD1C: .byte $0C,$0C,$0A,$6A,$FD,$00
LFD22: .byte $0C,$0C,$09,$28,$FD,$00,$80,$13,$13,$13,$0F,$0C,$0C,$0C,$0C,$0B
       .byte $0B,$0B,$09,$8C,$8C,$8C,$0C,$0E,$0E,$0E,$0B,$0F,$0F,$0F,$0F,$11
       .byte $11,$11,$11,$8C,$8C,$8C,$0C,$13,$13,$13,$0F,$0C,$0C,$0C,$0C,$0B
       .byte $0B,$0B,$09,$8C,$8C,$8C,$0C,$0E,$0E,$0E,$0B,$0F,$0F,$0F,$0F,$11
       .byte $11,$11,$0F,$93,$93,$93,$13,$00,$80,$13,$13,$13,$17,$1A,$13,$13
       .byte $13,$0E,$0E,$0B,$0E,$8F,$8F,$8F,$0F,$11,$11,$11,$0E,$13,$13,$13
       .byte $13,$14,$14,$14,$14,$91,$91,$91,$11,$13,$13,$13,$17,$1A,$13,$13
       .byte $13,$0E,$0E,$0B,$0E,$8F,$8F,$8F,$0F,$11,$11,$11,$0E,$13,$13,$13
       .byte $13,$14,$17,$1A,$14,$93,$93,$93,$13,$00,$D2,$A0,$A3,$A4,$B0,$B1
       .byte $8D,$A0,$D3,$D4,$C1,$A0,$BE,$CF,$C2,$CA,$C3,$C1,$D4,$8D,$43,$55
       .byte $29,$01,$02,$03,$00,$00,$D7,$29,$01,$01,$02,$03,$00,$00,$82,$82
       .byte $FE,$FF,$FF,$FE,$7E,$04,$28,$44,$FE,$FF,$FE,$FF,$7E,$04,$10,$18
       .byte $3C,$7E,$FE,$02,$03,$00,$00,$00,$00,$7E,$FE,$1E,$1B,$10,$82,$82
       .byte $FE,$FF,$FF,$FE,$7E,$04,$28,$44,$FE,$FF,$FE,$FF,$7E,$04,$3C,$66
       .byte $66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60
       .byte $60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C
       .byte $0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66
       .byte $66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66
       .byte $66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$ED,$A4,$EC,$A4,$EC,$00,$00,$00,$2E
       .byte $22,$2E,$2A,$2E,$00,$00,$00,$5C,$54,$54,$DC,$00,$00,$00,$00,$5D
       .byte $51,$51,$DD,$01,$01,$FD,$00,$BD,$A9,$A9,$BB,$00,$00,$FF,$00,$FD
       .byte $84,$B4,$A5,$B5,$85,$FD,$44,$28,$30,$60,$F8,$E4,$7F,$60,$7E,$7E
       .byte $7E,$5E,$7E,$FF,$7E,$20,$7E,$7E,$7E,$5E,$7E,$FF,$7E,$20
LFEA0: .byte $00,$00,$60,$60,$C0,$C0,$00,$00
LFEA8: .byte $00,$00,$00,$F0,$FB,$DE,$1E,$00
LFEB0: .byte $00,$07,$1D,$FC,$F0,$F0,$00,$00
LFEB8: .byte $00,$00,$10,$F0,$F0,$F0,$00,$00
LFEC0: .byte $00,$00,$00,$03,$8E,$F8,$E0,$00
LFEC8: .byte $00,$00,$00,$01,$06,$0C,$90,$60
LFED0: .byte $30,$F0,$F0,$F0,$F0,$FF,$FF,$FF
LFED8: .byte $00,$00,$C0,$F0,$FF,$FF,$FF,$FF
LFEE0: .byte $C0,$F0,$FC,$FF,$FF,$FF,$FF,$FF
LFEE8: .byte $00,$30,$F0,$F0,$F0,$FF,$FF,$FF
LFEF0: .byte $00,$00,$00,$E0,$F8,$FF,$FF,$FF
LFEF8: .byte $00,$00,$E0,$F8,$FE,$FF,$FF,$FF,$C0,$83,$42,$22,$12,$0C,$18,$18
       .byte $1A,$1C,$1A,$18,$10,$18,$18,$00,$0C,$08,$84,$FC,$0C,$08,$18,$18
       .byte $18,$1C,$1A,$18,$10,$18,$18,$00,$30,$20,$13,$0A,$0A,$0E,$18,$18
       .byte $58,$3C,$1A,$18,$10,$18,$18,$00,$18,$1C,$18,$18,$18,$18,$18,$18
       .byte $18,$1C,$1A,$18,$10,$18,$18,$00,$00,$00,$00,$00,$13,$B2,$D1,$1E
       .byte $18,$1C,$1A,$18,$10,$18,$18,$00,$00,$00,$00,$01,$01,$01,$03,$1C
       .byte $18,$18,$D8,$D8,$FC,$13,$18,$18,$00,$00,$00,$00,$01,$01,$01,$1F
       .byte $18,$18,$D8,$D8,$FF,$10,$18,$18,$C0,$83,$42,$32,$12,$3E,$30,$30
       .byte $FF,$70,$30,$20,$30,$30,$00,$00,$00,$86,$E4,$24,$14,$14,$14,$18
       .byte $1A,$3C,$18,$18,$10,$18,$18,$00,$66,$24,$24,$42,$82,$42,$24,$18
       .byte $18,$18,$3C,$5A,$91,$58,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$03,$1C,$50,$60,$20,$00,$00,$00,$00,$00,$00,$00,$00,$03
       .byte $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$0E,$32
       .byte $C0,$00,$00,$00,$00,$00,$00,$00,$43,$8D,$8D,$8D,$8D,$8D,$8D,$8D
       .byte $8D,$8D,$8D,$8D,$8D,$8D,$8D,$8D,$86,$86,$86,$86,$86,$86,$86,$86
       .byte $49,$49,$49,$49,$4F,$4F,$4F,$4F,$10,$E9,$00,$00,$00,$00,$00,$11
       .byte $11,$17,$15,$17,$00,$F0,$00,$F0
