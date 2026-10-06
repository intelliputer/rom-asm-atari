; Disassembly of roms/Mouse Trap.bin
; Disassembled Tue Oct  6 15:21:52 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Mouse Trap.bin
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
CTRLPF  =  $0A
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       LDA    #$00    
LF003: STA    VSYNC,X 
       DEX            
       BNE    LF003   
       LDA    #$21    
       STA    CTRLPF  
       LDX    #$05    
LF00E: LDA    LFFA3,X 
       STA    $B0,X   
       DEX            
       BPL    LF00E   
       TXS            
LF017: JSR    LFF09   
       LDX    #$04    
       LDA    #$53    
       JSR    LF39C   
       STA    WSYNC   
       STA    HMOVE   
LF025: LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       LDA    #$28    
       STA    TIM64T  
       STA    CXCLR   
       STA    HMCLR   
       DEC    $F9     
       LDA    SWCHB   
       LSR            
       BCC    LF017   
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF049   
       LDA    #$00    
       STA    $F8     
LF049: LDA    $F8     
       BMI    LF025   
       LDA    $F9     
       BNE    LF053   
       INC    $F8     
LF053: LDX    $DF     
       BEQ    LF05D   
       DEC    $F2     
       LDA    #$00    
       STA    $BB     
LF05D: LDY    $F4     
       BEQ    LF082   
       LDX    #$07    
       DEY            
       BEQ    LF075   
LF066: LDA    $B6,X   
       CMP    #$27    
       BCS    LF070   
       ADC    #$23    
       STA    $B6,X   
LF070: DEX            
       BPL    LF066   
       BMI    LF082   
LF075: LDA    $B6,X   
       CMP    #$2A    
       BCC    LF07F   
       SBC    #$23    
       STA    $B6,X   
LF07F: DEX            
       BPL    LF075   
LF082: JSR    LFFCF   
       LDA    $DE     
       AND    #$01    
       BNE    LF093   
       TAX            
       JSR    LF9E1   
       LDY    #$04    
       BNE    LF0A7   
LF093: LDA    $EA     
       BMI    LF0A0   
       LDX    #$02    
       JSR    LF9E1   
       LDY    #$14    
       BNE    LF0A7   
LF0A0: LDX    #$04    
       JSR    LF9E1   
       LDY    #$00    
LF0A7: LDA    #$09    
       STA    $D9     
LF0AB: LDA    LF673,Y 
       BMI    LF0C0   
       TAX            
       INY            
       LDA    $80,X   
       AND    LF673,Y 
LF0B7: STA    $80,X   
       INY            
       DEC    $D9     
       BPL    LF0AB   
       BMI    LF0CB   
LF0C0: AND    #$7F    
       TAX            
       INY            
       LDA    $80,X   
       ORA    LF673,Y 
       BNE    LF0B7   
LF0CB: LDX    $EE     
       LDA    INPT4   
       BMI    LF0EA   
       CPX    #$2E    
       BEQ    LF10C   
       INC    $EE     
       CPX    #$0F    
       BNE    LF10C   
       LDA    $EA     
       EOR    #$80    
       STA    $EA     
       LDX    #$15    
       JSR    LF9BB   
       LDA    #$2E    
       BNE    LF10A   
LF0EA: TXA            
       BEQ    LF10C   
       CPX    #$2E    
       BEQ    LF108   
       LDA    $E0     
       BEQ    LF108   
       LDA    $F4     
       BMI    LF108   
       LDA    $F2     
       BNE    LF108   
       LDA    #$64    
       STA    $F4     
       LDX    #$40    
       JSR    LF9BB   
       DEC    $E0     
LF108: LDA    #$00    
LF10A: STA    $EE     
LF10C: LDA    $DE     
       AND    #$01    
       BNE    LF122   
       LDA    $EB     
       BEQ    LF118   
       DEC    $EB     
LF118: LDA    $F4     
       BEQ    LF122   
       LDA    $F2     
       BNE    LF122   
       DEC    $F4     
LF122: INC    $DE     
       LDA    $DE     
       CMP    #$08    
       BNE    LF130   
       LDA    #$F8    
       STA    $DB     
       BNE    LF158   
LF130: CMP    #$0A    
       BNE    LF13E   
       LDA    #$F9    
       STA    $DB     
       LDA    #$F8    
       STA    $DD     
       BNE    LF158   
LF13E: CMP    #$12    
       BNE    LF14C   
       LDA    #$FA    
       STA    $DB     
       LDA    #$F7    
       STA    $DD     
       BNE    LF158   
LF14C: CMP    #$14    
       BNE    LF158   
       LDA    #$00    
       STA    $DE     
       LDA    #$F7    
       STA    $DB     
LF158: LDA    $F2     
       BEQ    LF171   
       LDA    $F4     
       BNE    LF16E   
       LDA    $F2     
       AND    #$07    
       BNE    LF16E   
       LDA    $F1     
       EOR    #$94    
       STA    COLUPF  
       STA    $F1     
LF16E: JMP    LF192   
LF171: LDY    $C8     
       LDA    $C7     
       STA    $E8     
       LDA    #$00    
       STA    $D9     
       STA    $E9     
       JSR    LFB88   
       LDA    $E8     
       STA    $C7     
       STY    $C8     
       LDA    $D9     
       BEQ    LF18C   
       BNE    LF192   
LF18C: LDA    $EB     
       CMP    #$5A    
       BCC    LF195   
LF192: JMP    LF248   
LF195: CMP    #$59    
       BNE    LF1BD   
       LDA    $F3     
       BMI    LF19F   
       DEC    $E1     
LF19F: LDA    #$00    
       STA    $F3     
       DEC    $EB     
       LDA    $F0     
       EOR    #$FF    
       AND    #$77    
       TAY            
       LDA    $EF     
       AND    #$01    
       TAX            
       TYA            
       STA    $EC,X   
       ASL            
       TAY            
       TXA            
       EOR    #$01    
       TAX            
       TYA            
       STA    $EC,X   
LF1BD: LDA    $C8     
       TAX            
       AND    #$07    
       STA    $D9     
       TXA            
       AND    #$F0    
       LSR            
       ORA    $D9     
       TAX            
       LDA    LFA5B,X 
       LDX    $EA     
       BMI    LF1D6   
       AND    #$F0    
       BNE    LF1DA   
LF1D6: ASL            
       ASL            
       ASL            
       ASL            
LF1DA: ORA    SWCHA   
       TAX            
       AND    #$30    
       EOR    #$30    
       BNE    LF1FA   
       TXA            
       AND    #$C0    
       EOR    #$C0    
       BEQ    LF1FA   
       TXA            
       AND    #$F0    
       CMP    #$B0    
       BNE    LF1F6   
       LDA    #$20    
       BNE    LF225   
LF1F6: LDA    #$00    
       BEQ    LF225   
LF1FA: TXA            
       AND    #$F0    
       CMP    #$E0    
       BNE    LF20F   
       LDA    $C8     
       AND    #$0F    
       TAX            
       INC    $B6,X   
       DEX            
       LDA    #$04    
       LDY    #$71    
       BNE    LF21F   
LF20F: CMP    #$D0    
       BNE    LF248   
       LDA    $C8     
       AND    #$0F    
       TAX            
       DEC    $B6,X   
       INX            
       LDA    #$26    
       LDY    #$51    
LF21F: STA    $B6,X   
       STY    $C7     
       BNE    LF248   
LF225: STA    $C7     
       LDA    $C6     
       CMP    #$50    
       BNE    LF23F   
       LDA    $C7     
       AND    #$20    
       BNE    LF237   
       LDA    #$45    
       STA    $C8     
LF237: LDA    #$07    
       ORA    $C7     
       STA    $C7     
       BNE    LF248   
LF23F: LDA    $C7     
       LDX    $C6     
       JSR    LFE84   
       STA    $C7     
LF248: LDX    #$01    
       LDY    #$04    
LF24C: LDA    $EF,X   
       AND    #$0F    
       ASL            
       STA    $D9     
       ASL            
       ASL            
       ADC    $D9     
       STA.wy $00E4,Y 
       LDA    $EF,X   
       AND    #$F0    
       LSR            
       STA    $D9     
       LSR            
       LSR            
       ADC    $D9     
       STA.wy $00E2,Y 
       LDY    #$00    
       DEX            
       BPL    LF24C   
       LDA    #$F9    
       INX            
LF270: LDY    $E2,X   
       BEQ    LF276   
       LDA    #$FB    
LF276: STA    $E3,X   
       INX            
       INX            
       CPX    #$06    
       BNE    LF270   
       LDA    #$FB    
       STA    $E9     
LF282: LDA    INTIM   
       BNE    LF282   
       TAX            
       LDY    #$09    
       LDA    #$1A    
       STA    $D9     
       JSR    LFAAB   
       LDA    SWCHB   
       AND    #$08    
       BNE    LF2A0   
       LDA    $F2     
       BNE    LF2A0   
       LDA    #$00    
       STA    COLUPF  
LF2A0: JSR    LF3B6   
       LDY    $E0     
       LDA    #$B5    
       JSR    LF32A   
       LDY    #$05    
       LDA    #$CC    
       JSR    LFAC8   
       JSR    LF3B6   
       LDY    $E1     
       LDA    #$5A    
       JSR    LF32A   
       LDY    #$0B    
       LDA    #$0A    
       JSR    LFAC8   
       STA    WSYNC   
       LDA    $F4     
       CMP    #$29    
       BCS    LF2D4   
       AND    #$08    
       BNE    LF2D4   
       LDA    #$0A    
       STA    COLUP0  
       BNE    LF2D8   
LF2D4: LDA    #$36    
       STA    COLUP0  
LF2D8: LDA    #$1E    
       STA    COLUP1  
       LDA    #$00    
       STA    $E4     
       STA    $E5     
       TAX            
       STA    NUSIZ0  
       STA    WSYNC   
       STA    NUSIZ1  
       LDA    $C6     
       JSR    LF39C   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$50    
       STA    $E2     
       STA    $E3     
       STA    $E6     
       STA    $E7     
       LDA    $89     
       AND    #$20    
       BNE    LF304   
       STA    $E2     
LF304: LDA    $A9     
       AND    #$02    
       BNE    LF30C   
       STA    $E3     
LF30C: LDA    $8D     
       AND    #$20    
       BNE    LF314   
       STA    $E6     
LF314: LDA    $AD     
       AND    #$02    
       BNE    LF31C   
       STA    $E7     
LF31C: STA    WSYNC   
       STA    HMCLR   
       JMP    LF3BB   
LF323: AND    $EC,X   
       STX    $E7     
       BEQ    LF340   
       RTS            

LF32A: STA    $E8     
       LDX    #$08    
LF32E: LDA    #$00    
       DEY            
       BMI    LF335   
       LDA    $E8     
LF335: STA    $E0,X   
       LDA    #$F9    
       STA    $E1,X   
       DEX            
       DEX            
       BNE    LF32E   
       RTS            

LF340: LDX    #$03    
LF342: LDA    $D5,X   
       CMP    LF7F8,Y 
       BEQ    LF353   
       CMP    LF7FC,Y 
       BEQ    LF353   
       DEX            
       BPL    LF342   
       BMI    LF399   
LF353: LDA    $D1,X   
       STA    $E9     
       LDA    #$80    
       STA    $D1,X   
       TYA            
       PHA            
       STA    $D9     
       JSR    LFDD5   
       PLA            
       TAY            
       LDA    $D9     
       BPL    LF36E   
       LDA    $E9     
       STA    $D1,X   
       BNE    LF399   
LF36E: LDA    LF9C4,Y 
       STA    $D5,X   
       LDX    LF9C8,Y 
       LDA    #$00    
       STA    $C9,X   
       LDA    #$8C    
       STA    $BE,X   
       LDX    LF9CC,Y 
       LDA    LF6F8,Y 
       STA    $BE,X   
       LDA    LF8F8,Y 
       STA    $C9,X   
       TYA            
       CLC            
       ROR            
       TAX            
       LDA    #$0F    
       BCC    LF395   
       LDA    #$F0    
LF395: ORA    $EC,X   
       STA    $EC,X   
LF399: LDX    $E7     
       RTS            

LF39C: STA    WSYNC   
       SEC            
LF39F: SBC    #$0F    
       BCS    LF39F   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       RTS            

LF3B2: STA    WSYNC   
       STA    WSYNC   
LF3B6: STA    WSYNC   
       STA    WSYNC   
       RTS            

LF3BB: LDY    #$0E    
LF3BD: LDA    ($DA),Y 
       TAX            
       LDA    ($DC),Y 
       LDY    $E5     
       STA    HMCLR   
       STA    WSYNC   
       STX    GRP0    
       STA    GRP1    
       LDA    ($B0),Y 
       STA    PF0     
       LDA    ($B2),Y 
       STA    PF1     
       LDA    ($B4),Y 
       STA    PF2     
       LDX    $E4     
       LDA    LF7D8,X 
       STA    ENABL   
       LDY    #$0F    
       LDA    $C9,X   
       BNE    LF3F7   
LF3E5: LDA    ($DA),Y 
       TAX            
       LDA    ($DC),Y 
       STA    WSYNC   
       STX    GRP0    
       STA    GRP1    
       INY            
       CPY    #$12    
       BNE    LF3E5   
       BEQ    LF423   
LF3F7: STA    $D9     
       LDA    ($DA),Y 
       TAX            
       INY            
       LDA    ($DA),Y 
       TAY            
       LDA    $D9     
       SEC            
       STA    WSYNC   
       STX    GRP0    
LF407: SBC    #$0F    
       BCS    LF407   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP1   
       STA    WSYNC   
       STA    HMP1    
       STY    GRP0    
       LDY    #$11    
       LDA    ($DA),Y 
       STA    WSYNC   
       STA    GRP0    
LF423: LDX    $E4     
       LDA    $B6,X   
       STA    $DA     
       LDA    $BE,X   
       STA    $DC     
       LDY    #$00    
       LDA    ($DA),Y 
       TAX            
       LDA    ($DC),Y 
       INC    $E5     
       LDY    $E5     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       STX    GRP0    
       LDA    ($B0),Y 
       STA    PF0     
       LDA    ($B2),Y 
       STA    PF1     
       LDA    ($B4),Y 
       STA    PF2     
       LDY    #$01    
LF44E: LDA    ($DA),Y 
       TAX            
       LDA    ($DC),Y 
       STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       INY            
       CPY    #$04    
       BNE    LF44E   
LF45E: LDA    ($DA),Y 
       TAX            
       LDA    ($DC),Y 
       STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       LDX    $E4     
       CPX    #$01    
       BEQ    LF473   
       CPX    #$05    
       BNE    LF47F   
LF473: LDA    $E1,X   
       STA    PF1     
       LDA    ($1B,X) 
       LDA    ($1B,X) 
       LDA    $E2,X   
       STA    PF1     
LF47F: INY            
       CPY    #$06    
       BNE    LF45E   
       LDA    ($DA),Y 
       TAX            
       LDA    ($DC),Y 
       STA    WSYNC   
LF48B: STX    GRP0    
       STA    GRP1    
       LDA    #$20    
       STA    CTRLPF  
       LDX    $E4     
       LDA    $80,X   
       STA    PF0     
       LDA    $88,X   
       STA    PF1     
       LDA    $90,X   
       STA    PF2     
       LDA    $98,X   
       STA    PF0     
       LDA    $A0,X   
       STA    PF1     
       LDA    $A8,X   
       STA    PF2     
       INY            
       LDA    ($DA),Y 
       TAX            
       LDA    ($DC),Y 
       CPY    #$08    
       BNE    LF48B   
       LDY    $E5     
       STX    GRP0    
       STA    GRP1    
       LDA    #$21    
       STA    CTRLPF  
       LDA    ($B0),Y 
       STA    PF0     
       LDA    ($B2),Y 
       STA    PF1     
       LDA    ($B4),Y 
       STA    PF2     
       LDY    #$09    
LF4CF: LDA    ($DA),Y 
       TAX            
       LDA    ($DC),Y 
       STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       LDX    $E4     
       CPX    #$01    
       BEQ    LF4E4   
       CPX    #$05    
       BNE    LF4F0   
LF4E4: LDA    $E1,X   
       STA    PF1     
       LDA    ($1B,X) 
       LDA    ($1B,X) 
       LDA    $E2,X   
       STA    PF1     
LF4F0: INY            
       CPY    #$0B    
       BNE    LF4CF   
LF4F5: LDA    ($DA),Y 
       TAX            
       LDA    ($DC),Y 
       STA    WSYNC   
       STA    GRP1    
       STX    GRP0    
       STY    $D9     
       LDY    $E5     
       LDA    ($B2),Y 
       STA    PF1     
       LDY    $D9     
       INY            
       CPY    #$0E    
       BNE    LF4F5   
       INC    $E5     
       LDX    $E4     
       INX            
       STX    $E4     
       CPX    #$08    
       BEQ    LF51D   
       JMP    LF3BD   
LF51D: LDY    #$10    
       LDA    ($B0),Y 
       STA    WSYNC   
       STA    PF0     
       LDA    ($B2),Y 
       STA    PF1     
       LDA    ($B4),Y 
       STA    PF2     
       JSR    LF3B2   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$24    
       STA    TIM64T  
       LDA    $F2     
       BNE    LF5BA   
       LDA    $DE     
       BNE    LF569   
       LDX    #$01    
LF547: LDA    $EC,X   
       AND    #$0F    
       BEQ    LF553   
       CMP    #$0F    
       BEQ    LF553   
       DEC    $EC,X   
LF553: LDA    $EC,X   
       LSR            
       LSR            
       LSR            
       LSR            
       BEQ    LF566   
       CMP    #$0F    
       BEQ    LF566   
       LDA    $EC,X   
       SEC            
       SBC    #$10    
       STA    $EC,X   
LF566: DEX            
       BPL    LF547   
LF569: LDX    #$01    
       LDY    #$03    
LF56D: LDA    #$F0    
       JSR    LF323   
       DEY            
       LDA    #$0F    
       JSR    LF323   
       DEY            
       DEX            
       BPL    LF56D   
       LDA    $F5     
       AND    $DE     
       BEQ    LF5A5   
       LDX    #$04    
LF584: DEX            
       BMI    LF5A5   
       LDA    $D1,X   
       STA    $E8     
       LDY    $D5,X   
       LDA    #$00    
       STA    $D9     
       LDA    #$01    
       STA    $E9     
       STX    $E6     
       JSR    LFB88   
       LDX    $E6     
       LDA    $E8     
       STA    $D1,X   
       STY    $D5,X   
       JMP    LF584   
LF5A5: LDA    $DE     
       AND    #$03    
       TAX            
       STX    $E9     
       LDA    $D1,X   
       BPL    LF5BA   
       JSR    LFCEA   
       JSR    LFE1C   
       LDX    $E9     
       STA    $D1,X   
LF5BA: LDA    $F2     
       BNE    LF5C7   
       LDA    CXPPMM  
       BPL    LF635   
       LDX    #$31    
       JSR    LF9BB   
LF5C7: INC    $F2     
       LDA    $F2     
       CMP    #$30    
       BNE    LF635   
       LDA    #$CC    
       STA    COLUPF  
       STA    $F1     
       LDA    #$00    
       STA    $F2     
       LDA    $F4     
       BEQ    LF628   
       LDA    $C8     
       AND    #$07    
       STA    $D9     
       STA    $E9     
       TAY            
       LDA    $C7     
       BMI    LF5F4   
       JSR    LF8EB   
       JSR    LFDE7   
       LDA    $D9     
       BMI    LF5FF   
LF5F4: LDY    $E9     
       JSR    LFDE7   
       LDA    $D9     
       BMI    LF5FF   
       BPL    LF635   
LF5FF: TYA            
       TAX            
       JSR    LF8C5   
       STX    $E9     
       LDA    #$09    
       JSR    LFB64   
       LDX    #$FF    
LF60D: INX            
       CPX    #$04    
       BEQ    LF625   
       LDY    LF9C8,X 
       STX    $D9     
       JSR    LFDE7   
       LDA    $D9     
       BMI    LF60D   
       TXA            
       TAY            
       LDX    $E9     
       JSR    LFFA9   
LF625: JMP    LF635   
LF628: LDA    $E1     
       BNE    LF632   
       LDA    $DF     
       BNE    LF632   
       INC    $DF     
LF632: JSR    LFF44   
LF635: LDA    INTIM   
       BNE    LF635   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       LDA    #$16    
       STA    TIM8T   
       LDX    #$01    
LF649: LDA    $E0,X   
       BMI    LF655   
       CMP    #$05    
       BCC    LF657   
       DEC    $E0,X   
       DEC    $E0,X   
LF655: INC    $E0,X   
LF657: DEX            
       BPL    LF649   
LF65A: LDA    INTIM   
       BNE    LF65A   
       JMP    LF025   
LF662: .byte $FF,$08,$88,$00,$FF,$80,$8F,$88,$88,$80,$FF,$00,$F8,$08,$8F,$80
       .byte $FF
LF673: .byte $8C,$08,$A4,$01,$0A,$7F,$12,$EF,$14,$EF,$16,$FE,$1A,$7F,$1C,$7F
       .byte $26,$EF,$2A,$F7,$0C,$F7,$24,$FE,$8A,$80,$92,$10,$94,$10,$96,$01
       .byte $9A,$80,$9C,$80,$A6,$10,$AA,$08
LF69B: .byte $04,$5A,$51,$54,$53,$4F,$B8,$57,$4F,$B2,$B1,$B6,$B4,$B0,$AF,$B3
       .byte $B2,$AE,$AD,$B1,$00,$0C,$09,$05,$08,$04,$07,$03,$06,$02,$05,$00
       .byte $04,$3A,$33,$2F,$00,$0F,$0B,$0A,$09,$07,$05,$04,$03,$04,$05,$06
       .byte $00,$01,$29,$08,$07,$06,$05,$04,$03,$62,$43,$04,$05,$06,$07,$00
       .byte $06,$0C,$0B,$0A,$09,$08,$07,$06,$05,$05,$04,$05,$06,$07,$08,$09
       .byte $06,$05,$04,$23,$04,$00
LF6F1: TYA            
       AND    #$07    
       TAX            
       LDA    $E9     
       RTS            

LF6F8: .byte $B3,$A1,$A1,$B3,$A0,$82,$A0,$B7,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$6C,$EE
       .byte $FE,$D6,$54,$7C,$EE,$FE,$C6,$6C,$38,$38,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$EE,$EE,$7C,$54,$7C,$44,$EE,$BA,$92,$AA,$FE,$38,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$54,$72,$AA,$DA,$FA,$8A,$FA,$72,$22,$74,$78,$90
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$2A,$4E,$5F,$5F,$5F,$5F,$5F,$4E,$44
       .byte $2E,$1E,$09,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$52,$71,$A9,$D9,$F9,$AA
       .byte $DA,$71,$21,$7E,$7E,$AA,$00,$00,$00,$00,$00,$00,$8A,$4E,$55,$5B
       .byte $5F,$91,$9F,$8E,$84,$7E,$7E,$55,$00,$00,$00,$00,$00,$F0,$10,$F0
       .byte $10,$10,$10,$F0,$00,$00,$00,$F0,$10,$10,$10,$10,$10,$F0,$FF,$08
LF7D8: .byte $88,$00,$FF,$00,$8F,$88,$88,$80,$87,$00,$F8,$08,$8F,$80,$FF,$1F
       .byte $10,$F1,$01,$F1,$00,$01,$10,$1F,$00,$F1,$01,$F1,$00,$F0,$10,$1F
LF7F8: .byte $57,$40,$93,$04
LF7FC: .byte $47,$50,$94,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$60,$EC,$FE,$D6,$54,$7C
       .byte $EE,$FE,$C6,$7C,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$6C,$EE,$FE
       .byte $54,$7C,$44,$EE,$FE,$D6,$C6,$FE,$38,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $51,$72,$AA,$DA,$FA,$AA,$DA,$72,$22,$74,$78,$48,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$8A,$4E,$5F,$5F,$5F,$5F,$5F,$4E,$44,$2E,$1E,$12,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$51,$72,$AA,$DA,$FA,$89,$F9,$71,$21,$7E
       .byte $7E,$55,$00,$00,$00,$00,$00,$00,$4A,$8E,$95,$9B,$9F,$55,$5B,$8E
       .byte $84,$7E,$7E,$AA,$00,$00,$00,$00,$00
LF8C5: LDA    $D5,X   
       AND    #$07    
       TAY            
       JSR    LF8E0   
       LDA    $D1,X   
       BMI    LF8D7   
       JSR    LF8EB   
       JSR    LF8E0   
LF8D7: LDA    #$80    
       STA    $D1,X   
       LDA    #$0E    
       STA    $D5,X   
       RTS            

LF8E0: LDA    #$00    
       STA.wy $00C9,Y 
       LDA    #$8C    
       STA.wy $00BE,Y 
       RTS            

LF8EB: CMP    #$40    
       BCC    LF8F7   
       AND    #$20    
       BEQ    LF8F6   
       DEY            
       BPL    LF8F7   
LF8F6: INY            
LF8F7: RTS            

LF8F8: .byte $49,$57,$86,$1A
LF8FC: .byte $49,$57,$96,$0A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$6C,$EE,$FE,$D6,$54,$7C
       .byte $EE,$BA,$C6,$7C,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$6C,$FE
       .byte $D6,$7C,$44,$EE,$FE,$FE,$EE,$FE,$38,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38
       .byte $7C,$C6,$BA,$EE,$7C,$54,$D6,$FE,$EE,$6C
LF966: .byte $C5
LF967: .byte $F7
LF968: .byte $D6
LF969: .byte $F7,$62,$F6,$A4,$F9
LF96E: .byte $E7
LF96F: .byte $F7,$D0,$F9,$EF,$FA
LF974: .byte $50,$50,$50,$00,$00,$50,$50,$50,$2A,$22,$22,$AA,$A2,$22,$2A,$A2
       .byte $14,$45,$44,$54,$44,$05,$44,$14,$80,$20,$20,$A0,$20,$00,$20,$80
       .byte $45,$54,$44,$45,$44,$54,$45,$44,$A2,$A2,$A2,$0A,$0A,$A2,$A2,$AA
       .byte $FF,$08,$88,$00,$FF,$00,$8F,$88,$88,$88,$8F,$00,$F8,$08,$8F,$80
       .byte $FF,$CC,$CC,$30,$30,$CC,$CC
LF9BB: LDA    LF69B,X 
       STA    AUDC0   
       INX            
       STX    $F6     
       RTS            

LF9C4: .byte $46,$51,$84,$13
LF9C8: .byte $07,$00,$04,$03
LF9CC: .byte $06,$01,$04,$03,$1F,$10,$F1,$01,$F1,$10,$11,$10,$1F,$10,$F1,$01
       .byte $F1,$01,$F1,$10,$1F
LF9E1: LDA    LF966   
       STA    $B0     
       LDA    LF967   
       STA    $B1     
       LDA    LF968,X 
       STA    $B2     
       LDA    LF969,X 
       STA    $B3     
       LDA    LF96E,X 
       STA    $B4     
       LDA    LF96F,X 
       STA    $B5     
       RTS            

LFA00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$0C,$6E,$FE,$D6,$54,$7C,$EE,$FE,$C6,$7C
       .byte $38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$6C,$EE,$FE,$54,$7C,$44,$EE
       .byte $FE,$D6,$C6,$FE,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFA5B: .byte $77,$55,$E6,$FF,$FF,$55,$44,$EE,$99,$22,$51,$CC,$6C,$32,$99,$66
       .byte $55,$AA,$33,$55,$26,$99,$E6,$33,$9B,$45,$82,$AB,$91,$44,$42,$AB
       .byte $77,$33,$D9,$44,$EA,$33,$33,$77,$BB,$33,$D5,$88,$E6,$33,$33,$BB
       .byte $57,$89,$42,$67,$51,$88,$82,$67,$99,$66,$33,$99,$2A,$55,$EA,$33
       .byte $55,$22,$91,$CC,$AC,$32,$55,$AA,$BB,$99,$EA,$FF,$FF,$99,$88,$EE
LFAAB: STX    GRP0    
       STX    GRP1    
       STA    WSYNC   
       LDA    #$45    
       JSR    LF39C   
       LDA    #$4D    
       INX            
       JSR    LF39C   
       LDX    #$01    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D9     
LFAC8: STA    COLUP0  
       STA    COLUP1  
LFACC: STA    WSYNC   
       LDA    ($E2),Y 
       STA    GRP0    
       LDA    ($E4),Y 
       STA    GRP1    
       LDA    ($1B,X) 
       LDA    ($1B,X) 
       NOP            
       NOP            
       LDA    ($E8),Y 
       TAX            
       LDA    ($E6),Y 
       STA    GRP0    
       STX    GRP1    
       DEY            
       BPL    LFACC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFAEF: .byte $1F,$10,$FF,$01,$F1,$00,$1F,$10,$1F,$00,$F1,$01,$F1,$00,$FF,$10
       .byte $1F,$78,$FC,$CC,$CC,$CC,$CC,$CC,$CC,$FC,$78,$78,$78,$30,$30,$30
       .byte $30,$30,$70,$30,$10,$FC,$FC,$C0,$60,$30,$18,$0C,$CC,$FC,$78,$78
       .byte $FC,$CC,$0C,$0C,$38,$0C,$CC,$FC,$78,$0C,$0C,$0C,$0C,$FC,$CC,$CC
       .byte $CC,$CC,$CC,$78,$FC,$CC,$0C,$0C,$FC,$F8,$C0,$FC,$FC,$78,$FC,$CC
       .byte $CC,$FC,$F8,$C0,$CC,$FC,$78,$30,$30,$30,$30,$18,$18,$0C,$CC,$FC
       .byte $FC,$78,$FC,$CC,$CC,$FC,$78,$CC,$CC,$FC,$78,$78,$FC,$CC,$0C,$7C
       .byte $FC,$CC,$CC,$FC,$78
LFB64: SEC            
       LDX    #$01    
LFB67: SED            
       ADC    $EF,X   
       STA    $EF,X   
       CLD            
       BCC    LFB82   
       CPX    #$01    
       BNE    LFB82   
       LDA    $EF     
       AND    #$0F    
       CMP    #$04    
       BEQ    LFB7F   
       CMP    #$09    
       BNE    LFB81   
LFB7F: INC    $E1     
LFB81: SEC            
LFB82: LDA    #$00    
       DEX            
       BPL    LFB67   
       RTS            

LFB88: CLC            
       LDA    $E8     
       TAX            
       BPL    LFB8F   
       RTS            

LFB8F: TXA            
       AND    #$40    
       BNE    LFBB7   
       LDA    $E9     
       BNE    LFBA5   
       TXA            
       AND    #$20    
       BNE    LFBA1   
       INC    $C6     
       BNE    LFBDC   
LFBA1: DEC    $C6     
       BNE    LFBDC   
LFBA5: TYA            
       AND    #$07    
       TAX            
       LDA    $E8     
       AND    #$20    
       BNE    LFBB3   
       INC    $C9,X   
       BCC    LFBDC   
LFBB3: DEC    $C9,X   
       BCC    LFBDC   
LFBB7: TXA            
       AND    #$20    
       BNE    LFBCD   
       JSR    LF6F1   
       BNE    LFBC7   
       DEC    $B6,X   
       DEC    $B7,X   
       BCC    LFBDC   
LFBC7: DEC    $BE,X   
       DEC    $BF,X   
       BCC    LFBDC   
LFBCD: JSR    LF6F1   
       BNE    LFBD8   
       INC    $B6,X   
       INC    $B5,X   
       BCC    LFBDC   
LFBD8: INC    $BE,X   
       INC    $BD,X   
LFBDC: LDA    $E8     
       TAX            
       AND    #$E0    
       STA    $E8     
       TXA            
       AND    #$1F    
       TAX            
       DEX            
       BEQ    LFBF6   
       TXA            
       ORA    $E8     
       STA    $E8     
       LDA    #$01    
       STA    $D9     
       JMP    LFCDE   
LFBF6: LDA    $E8     
       AND    #$40    
       BEQ    LFC2C   
       JSR    LF6F1   
       BNE    LFC07   
       LDA    #$00    
       STA    $B6,X   
       BEQ    LFC0B   
LFC07: LDA    #$8C    
       STA    $BE,X   
LFC0B: LDA    $E8     
       AND    #$20    
       BNE    LFC23   
       LDA    $E9     
       BEQ    LFC1D   
       LDA    $C9,X   
       STA    $CA,X   
       LDA    #$00    
       STA    $C9,X   
LFC1D: JSR    LFCDF   
       INX            
       BPL    LFC27   
LFC23: JSR    LFCDF   
       DEX            
LFC27: TXA            
       ORA    $D9     
       BCC    LFC3B   
LFC2C: LDX    #$10    
       LDA    $E8     
       AND    #$20    
       BEQ    LFC36   
       LDX    #$F0    
LFC36: STY    $D9     
       TXA            
       ADC    $D9     
LFC3B: TAY            
       LDA    $E9     
       BNE    LFC91   
       TYA            
       STY    $C8     
       AND    #$07    
       STA    $D9     
       TYA            
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF8F,X 
       CLC            
       ADC    $D9     
       TAY            
       LDA.wy $0080,Y 
       STA    $D9     
       LDA    LFF90,X 
       AND.wy $0080,Y 
       CMP    $D9     
       BEQ    LFCC9   
       STA.wy $0080,Y 
       LDA    $C8     
       AND    #$F0    
       CPY    #$09    
       BEQ    LFC94   
       CPY    #$0D    
       BEQ    LFC94   
       CPY    #$29    
       BEQ    LFC9A   
       CPY    #$2D    
       BEQ    LFC9A   
LFC7B: LDA    #$00    
       JSR    LFB64   
       LDX    #$20    
       JSR    LF9BB   
       INC    $EA     
       LDA    $EA     
       AND    #$7F    
       CMP    #$42    
       BCS    LFCAA   
       LDY    $C8     
LFC91: JMP    LFCCE   
LFC94: CMP    #$10    
       BEQ    LFC9E   
       BNE    LFC7B   
LFC9A: CMP    #$80    
       BNE    LFC7B   
LFC9E: LDX    #$25    
       JSR    LF9BB   
       INC    $E0     
       LDY    $C8     
       JMP    LFCCE   
LFCAA: LDA    #$80    
       STA    $F3     
       LDA    #$99    
       JSR    LFB64   
       JSR    LFF2B   
       LDA    $F5     
       BMI    LFCBE   
       ORA    #$80    
       BNE    LFCC1   
LFCBE: ASL            
       ORA    #$01    
LFCC1: STA    $F5     
       LDX    #$FF    
       TXS            
       JMP    LF635   
LFCC9: STA.wy $0080,Y 
       LDY    $C8     
LFCCE: LDA    #$00    
       STA    $D9     
       LDX    #$80    
       LDA    $E8     
       AND    #$40    
       STX    $E8     
       BEQ    LFCDE   
       INC    $D9     
LFCDE: RTS            

LFCDF: TYA            
       TAX            
       AND    #$F0    
       STA    $D9     
LFCE5: TYA            
       AND    #$07    
       TAX            
       RTS            

LFCEA: LDA    $D5,X   
       AND    #$07    
       STA    $E6     
       LDA    $C8     
       AND    #$07    
       SEC            
       SBC    $E6     
       STA    $D9     
       LDA    $D5,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E6     
       LDA    $C8     
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       SBC    $E6     
       STA    $E6     
       LDY    #$02    
       LDA    $D9     
       BPL    LFD17   
       EOR    #$FF    
       SEC            
       ADC    #$00    
LFD17: STA    $E8     
       LDA    $E6     
       BPL    LFD22   
       EOR    #$FF    
       SEC            
       ADC    #$00    
LFD22: PHA            
       LDA    $F4     
       BEQ    LFD3A   
       LDA    $D9     
       EOR    #$80    
       STA    $D9     
       LDA    $E6     
       EOR    #$80    
       STA    $E6     
       PLA            
       CMP    $E8     
       BCS    LFD46   
       BCC    LFD3F   
LFD3A: PLA            
       CMP    $E8     
       BCS    LFD46   
LFD3F: DEY            
       DEY            
       LDA    $D9     
       SEC            
       BCS    LFD52   
LFD46: BEQ    LFD3F   
       LDA    $D5,X   
       CMP    #$50    
       LDA    $E6     
       BCC    LFD52   
       EOR    #$80    
LFD52: BPL    LFD55   
       INY            
LFD55: STY    $E8     
       LDA    SWCHB   
       AND    #$40    
       BNE    LFD64   
       LDA    $F0     
       AND    #$03    
       STA    $E8     
LFD64: LDA    $D5,X   
       AND    #$07    
       STA    $D9     
       LDA    $D5,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E6     
       CMP    #$05    
       BCC    LFD7E   
       SEC            
       SBC    #$09    
       EOR    #$FF    
       SEC            
       ADC    #$00    
LFD7E: ASL            
       ASL            
       ASL            
       ORA    $D9     
       TAY            
       CPY    #$03    
       BEQ    LFDF7   
       CPY    #$04    
       BEQ    LFDF7   
       LDA    $EA     
       BPL    LFD95   
       TYA            
       CLC            
       ADC    #$28    
       TAY            
LFD95: LDA    LFEB9,Y 
       STA    $E7     
       LDY    $E8     
LFD9C: BEQ    LFDA3   
       LSR            
       LSR            
       DEY            
       BNE    LFD9C   
LFDA3: AND    #$03    
       STA    $D9     
       LDA    #$04    
       STA    $E4     
LFDAB: JSR    LFDD5   
       DEC    $E4     
       BEQ    LFDC2   
       LDA    $D9     
       BPL    LFDC2   
       LDA    $E7     
       LSR    $E7     
       LSR    $E7     
       AND    #$03    
       STA    $D9     
       BPL    LFDAB   
LFDC2: LDA    $D5,X   
       CMP    #$50    
       BCC    LFDD4   
       LDA    $D9     
       BMI    LFDD4   
       CMP    #$02    
       BCC    LFDD4   
       EOR    #$01    
       STA    $D9     
LFDD4: RTS            

LFDD5: LDA    $D9     
       BMI    LFE17   
       CMP    #$02    
       BCS    LFE1B   
       LDY    $D5,X   
       CMP    #$01    
       BNE    LFDE6   
       INY            
       BNE    LFDE7   
LFDE6: DEY            
LFDE7: TYA            
       AND    #$07    
       STA    $E6     
       LDY    #$03    
LFDEE: LDA.wy $00D5,Y 
       AND    #$0F    
       STA    $E8     
       CMP    $E6     
LFDF7: BEQ    LFE17   
       LDA.wy $00D1,Y 
       BMI    LFE13   
       CMP    #$40    
       BCC    LFE13   
       AND    #$20    
       BEQ    LFE0B   
       DEC    $E8     
       JMP    LFE0D   
LFE0B: INC    $E8     
LFE0D: LDA    $E8     
       CMP    $E6     
       BEQ    LFE17   
LFE13: DEY            
       BPL    LFDEE   
       RTS            

LFE17: LDA    #$80    
       STA    $D9     
LFE1B: RTS            

LFE1C: LDA    $D1,X   
       STA    $E8     
       LDY    $D5,X   
       CPY    #$0E    
       BEQ    LFE2A   
       LDA    $D9     
       BPL    LFE2D   
LFE2A: JMP    LFEB6   
LFE2D: TAX            
       AND    #$02    
       BEQ    LFE4E   
       TXA            
       AND    #$01    
       BNE    LFE43   
       JSR    LFCE5   
       LDA    #$A1    
       STA    $BE,X   
       LDA    #$20    
       JMP    LFE7B   
LFE43: JSR    LFCE5   
       LDA    #$B3    
       STA    $BE,X   
       LDA    #$00    
       BEQ    LFE7B   
LFE4E: TXA            
       BNE    LFE68   
       JSR    LFCE5   
       LDA    $C9,X   
       STA    $C8,X   
       LDA    #$00    
       STA    $C9,X   
       LDA    #$7F    
       STA    $BE,X   
       LDA    #$6D    
       STA    $BD,X   
       LDA    #$71    
       BNE    LFEB8   
LFE68: CMP    #$01    
       BNE    LFEB8   
       JSR    LFCE5   
       LDA    #$5A    
       STA    $BE,X   
       LDA    #$6C    
       STA    $BF,X   
       LDA    #$51    
       BNE    LFEB8   
LFE7B: PHA            
       TYA            
       AND    #$07    
       TAX            
       LDA    $C9,X   
       TAX            
       PLA            
LFE84: STA    $E8     
       CPX    #$3A    
       BEQ    LFE98   
       CPX    #$49    
       BEQ    LFE9E   
       CPX    #$57    
       BEQ    LFEA4   
       CPX    #$66    
       BEQ    LFEAC   
       BNE    LFEB0   
LFE98: AND    #$E0    
       BEQ    LFEB4   
       BNE    LFEB0   
LFE9E: AND    #$20    
       BNE    LFEB4   
       BEQ    LFEA8   
LFEA4: AND    #$E0    
       BEQ    LFEB4   
LFEA8: LDA    #$0E    
       BNE    LFEB6   
LFEAC: AND    #$20    
       BNE    LFEB4   
LFEB0: LDA    #$10    
       BNE    LFEB6   
LFEB4: LDA    #$0F    
LFEB6: ORA    $E8     
LFEB8: RTS            

LFEB9: .byte $FF,$7F,$00,$FF,$FF,$FD,$31,$00,$95,$B3,$FD,$11,$F3,$BA,$99,$33
       .byte $7F,$80,$BF,$7D,$B3,$AA,$00,$BA,$99,$31,$81,$82,$99,$31,$71,$82
       .byte $FF,$BA,$55,$71,$00,$BA,$BB,$FF,$FF,$7D,$F3,$FF,$FF,$FD,$01,$00
       .byte $95,$B2,$B9,$01,$41,$B2,$99,$30,$55,$82,$BA,$55,$FF,$99,$33,$AA
       .byte $AA,$7D,$B3,$AA,$BD,$71,$B0,$AA,$FF,$BA,$99,$31,$82,$BA,$BA,$FF
LFF09: LDA    #$CC    
       STA    COLUPF  
       STA    $F1     
       LDA    #$03    
       STA    $E1     
       LDX    #$00    
       STX    $DF     
       STX    $F8     
       STX    $F2     
       STX    $EF     
       STX    $F0     
       INX            
       STX    $E0     
       LDA    SWCHB   
       BPL    LFF29   
       LDX    #$0F    
LFF29: STX    $F5     
LFF2B: LDA    $F4     
       BEQ    LFF34   
       CLC            
       ADC    #$5A    
       STA    $F4     
LFF34: LDX    #$3B    
LFF36: LDA    LF974,X 
       STA    $80,X   
       DEX            
       BPL    LFF36   
       INX            
       STX    $EA     
       JSR    LF9BB   
LFF44: LDA    #$B4    
       STA    $EB     
       LDA    #$80    
       STA    $C7     
       LDA    #$55    
       STA    $C8     
       LDA    #$00    
       LDX    #$07    
LFF54: STA    $C9,X   
       DEX            
       BPL    LFF54   
       LDA    #$F7    
       STA    $DB     
       STA    $DD     
       LDX    #$07    
       LDA    #$00    
       LDY    #$8C    
LFF65: STA    $B6,X   
       STY    $BE,X   
       DEX            
       BPL    LFF65   
       LDA    #$15    
       STA    $BB     
       LDA    #$50    
       STA    $C6     
       LDY    #$03    
LFF76: TYA            
       TAX            
       JSR    LFFA9   
       DEY            
       BPL    LFF76   
       STY    $EC     
       STY    $ED     
       LDA    #$0E    
       STA    $D6     
       LDA    #$00    
       STA    $C9     
       LDA    #$8C    
       STA    $BE     
       RTS            

LFF8F: .byte $00
LFF90: .byte $BF,$08,$DF,$08,$FD,$10,$FB,$10,$BF,$18,$DF,$20,$BF,$20,$FB,$28
       .byte $FD,$28,$DF
LFFA3: .byte $C5,$F7,$D6,$F7,$E7,$F7
LFFA9: LDA    #$80    
       STA    $D1,X   
       LDA    LF7FC,Y 
       STA    $D5,X   
       LDA    LF9C8,Y 
       TAX            
       LDA    LF6F8,Y 
       STA    $BE,X   
       LDA    LF8FC,Y 
       STA    $C9,X   
       TYA            
       CLC            
       ROR            
       TAX            
       LDA    #$FA    
       BCC    LFFCA   
       LDA    #$AF    
LFFCA: AND    $EC,X   
       STA    $EC,X   
       RTS            

LFFCF: LDA    $F7     
       BEQ    LFFD6   
       DEC    $F7     
       RTS            

LFFD6: LDX    $F6     
       LDA    #$0A    
       STA    AUDV0   
       LDA    LF69B,X 
       BNE    LFFE4   
       STA    AUDC0   
       RTS            

LFFE4: STA    AUDF0   
       AND    #$E0    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F7     
       INX            
       STX    $F6     
       RTS            

LFFF2: .byte $BB,$D2,$A0,$A0,$A0,$A0,$E0,$A0,$E0,$A0,$00,$F0,$A5,$FF
