; Disassembly of roms/I.Q. 180.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/I.Q. 180.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
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
HMP0    =  $20
HMP1    =  $21
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
       LDA    #$00    
       TAX            
LF003: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF003   
       LDA    #$01    
       STA    $F4     
       LDA    #$05    
       STA    $DB     
       LDA    #$0E    
       STA    $DC     
LF015: LDA    $DB     
       ROL            
       AND    #$0F    
       STA    $DB     
       LDA    $DC     
       ROL            
       ROL            
       AND    #$0F    
       STA    $DC     
       LDX    #$00    
       LDA    #$00    
LF028: STA    $92,X   
       INX            
       CPX    #$24    
       BNE    LF028   
       LDA    #$00    
       STA    $80     
       STA    $81     
       STA    $CF     
       JMP    LF814   
LF03A: LDA    SWCHB   
       AND    #$40    
       BNE    LF045   
       LDA    #$01    
       STA    $E5     
LF045: LDA    #$00    
       STA    $E6     
       LDA    #$18    
       STA    $83     
       LDA    #$60    
       STA    $F3     
       JMP    LF44A   
LF054: LDX    $CF     
       JSR    LF5CC   
       LDX    $CF     
       CPX    $85     
       BEQ    LF065   
       INX            
       STX    $CF     
       JMP    LF054   
LF065: LDX    #$0C    
       LDA    #$FF    
LF069: STA    $85,X   
       DEX            
       DEX            
       BNE    LF069   
       LDA    $E5     
       CMP    #$01    
       BNE    LF078   
       JMP    LF6AC   
LF078: STA    WSYNC   
       LDX    #$0C    
       STX    $80     
       LDY    #$00    
       STY    $81     
LF082: LDY    $81     
       LDX    $DB,Y   
       TXA            
       ASL            
       ASL            
       ASL            
       LDX    $80     
       STA    $84,X   
       INC    $81     
       DEC    $80     
       DEC    $80     
       BNE    LF082   
       STA    WSYNC   
       LDY    #$05    
LF09A: DEY            
       BPL    LF09A   
       STA    RESP0   
       STA    RESP1   
       LDA    #$00    
       STA    HMP0    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$2D    
       STY    WSYNC   
       STA    COLUBK  
       LDY    #$07    
LF0C7: LDA    ($90),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($8E),Y 
       STA    GRP1    
       LDA    ($86),Y 
       STA    $80     
       LDA    ($88),Y 
       STA    $81     
       LDA    ($8C),Y 
       TAX            
       LDA    ($8A),Y 
       STX    GRP0    
       LDX    $81     
       STA    GRP1    
       LDA    $80     
       STX    GRP0    
       STA    GRP1    
       DEY            
       BPL    LF0C7   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       LDA    #$39    
       STA    COLUBK  
       NOP            
       NOP            
       JSR    LF685   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP0    
       STA    REFP0   
       LDA    #$20    
       STA    HMP1    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JMP    LF6D8   
LF119: LDA    #$18    
       STA    TIM64T  
       LDA    SWCHB   
       AND    #$01    
       BNE    LF132   
       LDA    $CE     
       AND    #$0F    
       STA    $DB     
       LDA    $DE     
       STA    $DC     
       JMP    LF015   
LF132: LDA    SWCHA   
       AND    #$F0    
       STA    $E7     
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $E8     
       LDA    $E1     
       CMP    #$FF    
       BNE    LF170   
       LDA    $E2     
       CMP    #$01    
       BNE    LF160   
       INC    $E6     
       LDA    $E6     
       AND    #$01    
       STA    $E6     
       LDA    #$06    
       STA    $DD     
       LDA    #$00    
       STA    $DE     
       STA    $E2     
LF160: LDA    $D9     
       BNE    LF167   
       JMP    LF254   
LF167: DEC    $D9     
       LDA    $D9     
       BEQ    LF198   
       JMP    LF25E   
LF170: DEC    $E4     
       DEC    $E3     
       BNE    LF191   
       LDA    #$0F    
       STA    $E4     
       DEC    $E1     
       BPL    LF185   
       LDA    #$00    
       STA    AUDV0   
       JMP    LF160   
LF185: LDX    $E1     
       LDA    LFF95,X 
       STA    $E3     
       LDA    LFF91,X 
       STA    AUDF0   
LF191: LDA    $E4     
       STA    AUDV0   
       JMP    LF281   
LF198: DEC    $D4     
       LDX    #$FF    
LF19C: DEX            
       BNE    LF19C   
       LDX    $D7     
       LDA    $92,X   
       AND    #$3F    
       STA    $DA     
       LDY    $D8     
       LDA.wy $0092,Y 
       AND    #$3F    
       EOR    $DA     
       CMP    #$00    
       BEQ    LF1EC   
       LDA    $92,X   
       ORA    #$80    
       STA    $92,X   
       LDA.wy $0092,Y 
       ORA    #$80    
       STA.wy $0092,Y 
       LDA    #$00    
       STA    $D7     
       STA    $D8     
       LDA    $E5     
       CMP    #$01    
       BEQ    LF1D2   
       LDA    #$01    
       STA    $E2     
LF1D2: LDA    #$03    
       STA    $E1     
       TAX            
       LDA    LFF95,X 
       STA    $E3     
       LDA    LFF91,X 
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$0F    
       STA    $E4     
       JMP    LF281   
LF1EC: LDA    $F5     
       CMP    #$FF    
       BNE    LF234   
       LDA    $E5     
       CMP    #$01    
       BNE    LF1FB   
       JMP    LF79E   
LF1FB: LDA    #$06    
       STA    $DD     
       LDA    #$00    
       STA    $DE     
       LDY    $E6     
       LDX    $E9,Y   
       INC    $DC,X   
       LDA    $DC,X   
       CMP    #$0A    
       BNE    LF215   
       LDA    #$00    
       STA    $DC,X   
       INC    $DB,X   
LF215: LDA    $DB     
       CLC            
       ADC    $DF     
       STA    $F2     
       LDA    $DC     
       CLC            
       ADC    $E0     
       CMP    #$0A    
       BMI    LF234   
       INC    $F2     
       LDA    $F2     
       CMP    #$03    
       BNE    LF234   
       LDA    #$00    
       STA    $F2     
       JSR    LF7B5   
LF234: LDA    #$03    
       STA    $E1     
       TAX            
       LDA    LFF95,X 
       STA    $E3     
       LDA    LFF91,X 
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$0F    
       STA    $E4     
       LDA    #$00    
       STA    $D7     
       STA    $D8     
       JMP    LF281   
LF254: LDX    $E6     
       LDA    REFP1,X 
       STA    $84     
       BIT    $84     
       BPL    LF2A3   
LF25E: LDA    $CE     
       AND    #$1F    
       BNE    LF281   
       LDX    $E6     
       LDA    #$10    
       AND    $E7,X   
       BEQ    LF2D3   
       LDA    #$20    
       AND    $E7,X   
       BEQ    LF2E5   
       LDA    #$40    
       AND    $E7,X   
       BEQ    LF2F3   
       LDA    #$80    
       AND    $E7,X   
       BNE    LF281   
       JMP    LF305   
LF281: LDA    $85     
       CMP    #$09    
       BEQ    LF299   
       LDX    #$00    
       STX    $CF     
       LDX    #$04    
       STX    $85     
LF28F: CPY    #$FF    
       BEQ    LF296   
       JMP    LF313   
LF296: JMP    LF31B   
LF299: LDX    #$05    
       STX    $CF     
       LDX    #$09    
       STX    $85     
       BNE    LF28F   
LF2A3: JSR    LF3F3   
       TAX            
       LDA    $92,X   
       AND    #$80    
       BEQ    LF281   
       LDA    #$1F    
       STA    $ED     
       LDA    #$03    
       STA    $F0     
       LDA    $92,X   
       AND    #$3F    
       STA    $92,X   
       LDA    $D4     
       TAY            
       STX    $D7,Y   
       STA.wy $00D5,Y 
       CMP    #$01    
       BEQ    LF2CC   
       INC    $D4     
       JMP    LF25E   
LF2CC: LDA    #$3F    
       STA    $D9     
       JMP    LF25E   
LF2D3: LDY    $D3     
       BEQ    LF2DC   
       JSR    LF3EA   
       DEC    $D3     
LF2DC: JSR    LF414   
       JSR    LF3F3   
       JMP    LF313   
LF2E5: JSR    LF3EA   
       INC    $D3     
       JSR    LF414   
       JSR    LF3F3   
       JMP    LF313   
LF2F3: LDX    $D2     
       BEQ    LF2FC   
       JSR    LF3EA   
       DEC    $D2     
LF2FC: JSR    LF408   
       JSR    LF3F3   
       JMP    LF281   
LF305: JSR    LF3EA   
       INC    $D2     
       JSR    LF408   
       JSR    LF3F3   
       JMP    LF281   
LF313: LDX    $83     
       LDA    $92,X   
       ORA    #$40    
       STA    $92,X   
LF31B: LDA    $CE     
       AND    #$1F    
       BNE    LF37B   
       LDA    $EF     
       CMP    #$FF    
       BNE    LF37B   
       LDA    $F5     
       CMP    #$FF    
       BEQ    LF330   
       JMP    LF37B   
LF330: LDA    $E5     
       CMP    #$01    
       BNE    LF339   
       JMP    LF7DC   
LF339: LDY    $DE     
       BEQ    LF343   
       DEY            
       STY    $DE     
       JMP    LF37B   
LF343: LDA    $DD     
       BEQ    LF350   
       LDA    #$09    
       STA    $DE     
       DEC    $DD     
       JMP    LF37B   
LF350: LDX    $D4     
       CPX    #$01    
       BNE    LF35E   
       LDX    $D7     
       LDA    $92,X   
       ORA    #$80    
       STA    $92,X   
LF35E: LDA    #$00    
       STA    $D7     
       STA    $D8     
       STA    $E2     
       STA    $DE     
       STA    $D4     
       STA    $D0     
       LDA    #$06    
       STA    $DD     
       INC    $E6     
       LDA    $E6     
       AND    #$01    
       STA    $E6     
       JMP    LF37B   
LF37B: LDA    $ED     
       BEQ    LF39F   
       DEC    $F0     
       BNE    LF393   
       DEC    $ED     
       LDA    $ED     
       BNE    LF38F   
       LDA    #$00    
       STA    AUDV0   
       BNE    LF39F   
LF38F: LDA    #$03    
       STA    $F0     
LF393: LDA    $ED     
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
LF39F: LDA    INTIM   
       BNE    LF37B   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$18    
       STA    TIM64T  
       LDX    $83     
       LDA    $92,X   
       EOR    #$40    
       STA    $92,X   
       INC    $CE     
       LDA    $F5     
       CMP    #$FF    
       BNE    LF3E2   
       LDA    $E5     
       CMP    #$01    
       BNE    LF3E2   
       LDA    $DE     
       CMP    #$99    
       BNE    LF3E2   
       LDA    #$0A    
       STA    $DE     
       LDA    #$00    
       STA    $DF     
       STA    $E0     
       JSR    LF7B5   
LF3E2: JMP    LF49B   
LF3E5: .byte $C6,$D4,$4C,$81,$F2
LF3EA: LDX    $83     
       LDA    $92,X   
       AND    #$BF    
       STA    $92,X   
       RTS            

LF3F3: LDY    $D3     
       TYA            
       BEQ    LF402   
       LDA    #$00    
LF3FA: CLC            
       ADC    #$06    
       DEY            
       BEQ    LF402   
       BNE    LF3FA   
LF402: CLC            
       ADC    $D2     
       STA    $83     
       RTS            

LF408: LDX    $D2     
       CPX    #$06    
       BPL    LF40F   
       RTS            

LF40F: LDX    #$05    
       STX    $D2     
       RTS            

LF414: LDY    $D3     
       CPY    #$05    
       BMI    LF435   
       CPY    #$09    
       BPL    LF42F   
LF41E: LDA    #$39    
       STA    $D1     
       LDA    #$05    
       STA    $CF     
       LDA    #$58    
       STA    $F3     
       LDA    #$09    
       STA    $85     
       RTS            

LF42F: LDA    #$09    
       STA    $D3     
       BNE    LF41E   
LF435: LDA    #$0F    
       STA    $D1     
       LDA    #$00    
       STA    $CF     
       STA    $E9     
       LDA    #$60    
       STA    $F3     
       LDA    #$04    
       STA    $85     
       STA    $EA     
       RTS            

LF44A: SEI            
       CLD            
       JMP    LF981   
LF44F: LDA    #$0F    
       STA    $D1     
       LDA    #$00    
       STA    $D0     
       STA    $D2     
       STA    $D4     
       STA    $CF     
       LDX    #$04    
       STX    $85     
       STX    $D3     
       LDA    #$20    
       STA    $EB     
       LDA    #$0F    
       STA    $EC     
       LDA    #$00    
       STA    COLUBK  
       LDA    #$00    
       STA    $ED     
       STA    $EE     
       STA    $DB     
       STA    $DC     
       STA    $DF     
       STA    $E0     
       LDA    $E5     
       CMP    #$01    
       BEQ    LF48D   
       LDA    #$06    
       STA    $DD     
       LDA    #$00    
       STA    $DE     
       BEQ    LF495   
LF48D: LDA    #$00    
       STA    $DD     
       LDA    #$01    
       STA    $DE     
LF495: LDA    #$FF    
       STA    $E1     
       STA    $F5     
LF49B: LDA    $F5     
       CMP    #$FF    
       BEQ    LF4A4   
       JMP    LF539   
LF4A4: LDA    $EF     
       CMP    #$FF    
       BEQ    LF4AD   
       JMP    LF4E1   
LF4AD: LDA    #$08    
       STA    AUDC1   
       LDA    #$1F    
       STA    AUDF1   
       DEC    $EC     
       DEC    $EC     
       BPL    LF4BF   
       LDA    #$00    
       STA    $EC     
LF4BF: DEC    $EB     
       BNE    LF4CB   
       LDA    #$0F    
       STA    $EC     
       LDA    #$20    
       STA    $EB     
LF4CB: LDA    $EC     
       STA    AUDV1   
LF4CF: LDA    INTIM   
       BNE    LF4CF   
       STA    WSYNC   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    CXCLR   
       JMP    LF054   
LF4E1: NOP            
       LDX    $EF     
       LDA    $EF     
       SEC            
       SBC    #$5F    
       BMI    LF4F5   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$0C    
       STA    AUDC1   
       BNE    LF4FD   
LF4F5: LDA    #$0C    
       STA    AUDC0   
       LDA    #$01    
       STA    AUDC1   
LF4FD: LDA    $F1     
       STA    AUDF0   
       STA    AUDF1   
       DEC    $F0     
       BNE    LF52D   
       LDA    #$0F    
       STA    $F2     
       DEC    $EF     
       LDA    $EF     
       CMP    #$FF    
       BNE    LF51C   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF672   
LF51C: LDX    $EF     
       LDA    LFD00,X 
       STA    $F1     
       LDA    #$0F    
       STA    $F0     
       LDA    $F1     
       STA    AUDF0   
       STA    AUDF1   
LF52D: LDA    $F2     
       STA    AUDV0   
       SEC            
       SBC    #$05    
       STA    AUDV1   
       JMP    LF4CF   
LF539: NOP            
       DEC    $EB     
       BNE    LF556   
       DEC    $F5     
       LDA    $F5     
       CMP    #$FF    
       BNE    LF54A   
       LDA    #$32    
       STA    $F5     
LF54A: LDX    $F5     
       LDA    LFC30,X 
       STA    $F6     
       LDA    LFC63,X 
       STA    $EB     
LF556: LDA    #$04    
       STA    AUDC0   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $F6     
       STA    AUDF0   
       STA    AUDF1   
       CMP    #$00    
       BEQ    LF573   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$09    
       STA    AUDV1   
       JMP    LF4CF   
LF573: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF4CF   
LF57C: STA    WSYNC   
       PHA            
       TYA            
       PHA            
       TXA            
       PHA            
       LDX    #$0C    
       LDA    #$FA    
LF587: STA    $85,X   
       DEX            
       DEX            
       BNE    LF587   
       LDA    $D1     
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       LDX    $D0     
       TXA            
       TAY            
       CPY    #$04    
       BEQ    LF5A2   
       INC    $D0     
       JMP    LF5A7   
LF5A2: SEC            
       SBC    #$04    
       STA    $D0     
LF5A7: LDA    LFF86,X 
       LDX    #$0C    
LF5AC: STA    $84,X   
       SEC            
       SBC    #$06    
       DEX            
       DEX            
       BNE    LF5AC   
       LDY    #$05    
       JSR    LF637   
       PLA            
       TAX            
       STX    $80     
       PLA            
       TAY            
       PLA            
       LDA    LFF68,X 
       STA    COLUP0  
       LDA    LFF72,X 
       STA    COLUP1  
       RTS            

LF5CC: LDA    #$00    
       LDY    #$05    
LF5D0: STA    WSYNC   
       DEY            
       BPL    LF5D0   
       STA    WSYNC   
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    RESP0   
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       STA    HMP0    
       NOP            
       STA    RESP1   
       STA    HMP1    
       LDY    #$05    
LF5FA: DEY            
       BPL    LF5FA   
       STA    HMCLR   
       JSR    LF57C   
       JSR    LF667   
LF605: LDX    $80     
       STA    WSYNC   
       LDA    LFF7C,X 
       STA    $80     
       LDY    #$05    
       LDX    #$0C    
LF612: LDA    #$00    
       STA    $81     
       LDA    ($80),Y 
       STA    $81     
       BIT    $81     
       BVS    LF62D   
       BMI    LF631   
       ASL            
       ASL            
       ASL            
LF623: STA    $84,X   
       DEY            
       DEX            
       DEX            
       BNE    LF612   
       JMP    LF635   
LF62D: LDA    #$F8    
       BNE    LF623   
LF631: LDA    #$F0    
       BNE    LF623   
LF635: LDY    #$07    
LF637: LDA    ($86),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($8C),Y 
       STA    GRP1    
       STA    GRP1    
       LDA    ($90),Y 
       STA    $81     
       LDA    ($8A),Y 
       TAX            
       LDA    ($88),Y 
       STA    GRP0    
       LDA    $80     
       STX    GRP0    
       LDA    ($8E),Y 
       LDX    $81     
       STA    GRP1    
       NOP            
       STX    GRP1    
       DEY            
       BPL    LF637   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LF667: LDX    #$0C    
       LDA    #$FE    
LF66B: STA    $85,X   
       DEX            
       DEX            
       BNE    LF66B   
       RTS            

LF672: LDX    #$00    
LF674: LDA    $92,X   
       ORA    #$80    
       STA    $92,X   
       INX            
       CPX    #$3C    
       BNE    LF674   
       JMP    LF49B   
LF682: .byte $0A,$0A,$0A
LF685: ASL            
       RTS            

LF687: .byte $95,$20,$85,$02,$88,$10,$FD,$95,$10,$60
LF691: LDX    #$0C    
       LDA    #$FF    
LF695: STA    $85,X   
       DEX            
       DEX            
       BNE    LF695   
       LDA    $F3     
       LDX    #$0C    
LF69F: STA    $84,X   
       DEX            
       DEX            
       BNE    LF69F   
       LDA    #$45    
       STA    COLUP0  
       STA    COLUP1  
       RTS            

LF6AC: STA    WSYNC   
       LDX    #$00    
       JSR    LF6EB   
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$50    
       STA    $90     
       STA    $8E     
       JSR    LF753   
       LDX    #$03    
       JSR    LF6EB   
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$50    
       STA    $90     
       STA    $86     
       JSR    LF753   
       STA    HMCLR   
LF6D8: JSR    LF7F4   
       JSR    LF753   
       STA    HMCLR   
       JSR    LF691   
       JSR    LF753   
       LDY    #$FF    
       JMP    LF119   
LF6EB: LDA    #$02    
       STA    WSYNC   
       NOP            
       NOP            
       LDA    #$39    
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       JSR    LF685   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP0    
       STA    REFP0   
       LDA    #$20    
       STA    HMP1    
       LDA    #$06    
       STA    TIM64T  
       LDA    $DB,X   
       STA    $80     
       LDA    $DC,X   
       STA    $81     
       LDA    $DD,X   
       STA    $82     
       LDX    #$02    
LF723: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $80,X   
       AND    #$F0    
       LSR            
       STA.wy $0086,Y 
       LDA    $80,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0088,Y 
       DEX            
       BPL    LF723   
       INX            
LF73D: LDA    $86,X   
       CMP    #$00    
       BNE    LF74D   
       LDA    #$50    
       STA    $86,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LF73D   
LF74D: LDA    INTIM   
       BNE    LF74D   
       RTS            

LF753: STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $80     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    GRP0    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
LF769: LDY    $80     
       LDA    ($90),Y 
       STA    $81     
       STA    WSYNC   
       LDA    ($8E),Y 
       TAX            
       LDA    ($86),Y 
       NOP            
       STA    GRP0    
       LDA    ($88),Y 
       STA    GRP1    
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       LDY    $81     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $80     
       BPL    LF769   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LF79E: SED            
       CLC            
       LDA    $DC     
       ADC    #$01    
       STA    $DC     
       CMP    #$30    
       BNE    LF7B1   
       CLD            
       JSR    LF7B5   
       JMP    LF281   
LF7B1: CLD            
       JMP    LF215   
LF7B5: NOP            
       LDA    $F5     
       CMP    #$FF    
       BEQ    LF7BD   
       RTS            

LF7BD: LDA    #$32    
       STA    $F5     
       LDA    #$04    
       STA    AUDC0   
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$0A    
       STA    AUDV0   
       STA    AUDV1   
       LDX    $F5     
       LDA    LFC30,X 
       STA    $F6     
       LDA    LFC63,X 
       STA    $EB     
       RTS            

LF7DC: SED            
       SEC            
       LDA    $E0     
       SBC    #$0A    
       STA    $E0     
       LDA    $DF     
       SBC    #$00    
       STA    $DF     
       LDA    $DE     
       SBC    #$00    
       STA    $DE     
       CLD            
       JMP    LF37B   
LF7F4: LDX    #$0C    
       LDA    #$FA    
LF7F8: STA    $85,X   
       DEX            
       DEX            
       BNE    LF7F8   
       LDX    #$00    
       LDA    #$B4    
       LDX    #$0C    
LF804: STA    $84,X   
       CLC            
       ADC    #$08    
       DEX            
       DEX            
       BNE    LF804   
       LDA    #$51    
       STA    COLUP0  
       STA    COLUP1  
       RTS            

LF814: SEI            
       CLD            
       LDA    #$00    
       STA    COLUBK  
LF81A: LDA    INTIM   
       BNE    LF81A   
       LDA    #$00    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    CXCLR   
       LDY    #$40    
LF82F: STA    WSYNC   
       DEY            
       BNE    LF82F   
       LDX    #$0C    
       LDA    #$FC    
LF838: STA    $85,X   
       DEX            
       DEX            
       BNE    LF838   
       LDA    #$00    
       LDX    #$0C    
LF842: STA    $84,X   
       CLC            
       ADC    #$08    
       DEX            
       DEX            
       BNE    LF842   
       LDA    #$39    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    PF0     
       NOP            
       NOP            
       NOP            
       JSR    LF685   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP0    
       LDA    #$20    
       STA    HMP1    
       STA    WSYNC   
       JSR    LF753   
       STA    HMCLR   
       STA    WSYNC   
       JSR    LF667   
       LDX    #$00    
       LDA    #$00    
LF883: STA    $92,X   
       CLC            
       ADC    #$01    
       CMP    #$1E    
       BEQ    LF88F   
       INX            
       BNE    LF883   
LF88F: LDA    #$00    
       STA    WSYNC   
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    RESP0   
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       STA    HMP0    
       NOP            
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$00    
       STX    $CF     
LF8BC: LDX    $CF     
       LDA    LFF68,X 
       STA    COLUP0  
       LDA    LFF72,X 
       STA    COLUP1  
       STX    $80     
       JSR    LF605   
       LDX    $CF     
       CPX    #$04    
       BEQ    LF8D8   
       INX            
       STX    $CF     
       BNE    LF8BC   
LF8D8: STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    REFP1   
       LDA    #$BF    
       STA    COLUP0  
       STA    COLUP1  
       NOP            
       NOP            
       JSR    LF685   
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP0    
       STA    REFP0   
       LDA    #$20    
       STA    HMP1    
       STA    WSYNC   
       JSR    LF7F4   
       LDA    #$46    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LF753   
       STA    WSYNC   
       LDY    #$34    
LF913: STA    WSYNC   
       DEY            
       BNE    LF913   
       LDA    #$18    
       STA    TIM64T  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       INC    $DB     
       LDA    $DB     
       CMP    #$1E    
       BNE    LF92F   
       LDA    #$00    
LF92F: STA    $DB     
LF931: LDA    INTIM   
       BNE    LF931   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$18    
       STA    TIM64T  
       INC    $DC     
       LDA    $DC     
       CMP    #$1E    
       BNE    LF955   
       LDA    #$00    
LF955: STA    $DC     
       LDA    $F4     
       CMP    #$01    
       BEQ    LF96F   
       LDA    SWCHB   
       AND    #$01    
       BEQ    LF97E   
       LDA    $DC     
       STA    $EE     
       LDA    #$01    
       STA    $F4     
       JMP    LF03A   
LF96F: LDA    SWCHB   
       AND    #$01    
       BNE    LF97E   
       LDA    $DB     
       STA    $ED     
       LDA    #$00    
       STA    $F4     
LF97E: JMP    LF015   
LF981: LDX    $EE     
       STX    $DC     
       STX    $DE     
       LDX    $ED     
       STX    $DB     
       STX    $DD     
LF98D: LDX    $DB     
       LDA    LFB00,X 
       LDY    $DC     
       LDX    LFB1E,Y 
       STA    $92,X   
       INC    $DB     
       LDA    $DB     
       CMP    #$1E    
       BNE    LF9A5   
       LDA    #$00    
       STA    $DB     
LF9A5: INC    $DC     
       LDA    $DC     
       CMP    $DE     
       BEQ    LF9B8   
       CMP    #$1E    
       BNE    LF98D   
       LDA    #$00    
       STA    $DC     
       JMP    LF98D   
LF9B8: LDX    $DE     
       STX    $DF     
LF9BC: LDX    $DD     
       LDA    LFB1E,X 
       LDY    $DE     
       LDX    LFB3C,Y 
       STA    $92,X   
       INC    $DD     
       LDA    $DD     
       CMP    #$1E    
       BNE    LF9D4   
       LDA    #$00    
       STA    $DD     
LF9D4: INC    $DE     
       LDA    $DE     
       CMP    $DF     
       BEQ    LF9E7   
       CMP    #$1E    
       BNE    LF9BC   
       LDA    #$00    
       STA    $DE     
       JMP    LF9BC   
LF9E7: LDX    #$BF    
       STX    $EF     
       LDX    $EF     
       LDA    LFD00,X 
       STA    $F1     
       LDA    #$0F    
       STA    $F0     
       LDA    #$0A    
       STA    $F2     
       JMP    LF44F   
LF9FD: .byte $10,$2C,$86,$00,$0E,$04,$04,$04,$0C,$00,$1E,$10,$1E,$02,$1E,$00
       .byte $1E,$02,$0E,$02,$1E,$00,$04,$04,$1E,$14,$14,$00,$1E,$02,$1E,$10
       .byte $1E,$00,$1E,$12,$1E,$10,$1E,$00,$02,$02,$02,$02,$1E,$00,$1E,$12
       .byte $1E,$12,$1E,$00,$1E,$02,$1E,$12,$1E,$00,$2E,$2A,$2A,$2A,$6E,$00
       .byte $24,$24,$24,$24,$6C,$00,$2E,$28,$2E,$22,$6E,$00,$2E,$22,$26,$22
       .byte $6E,$00,$22,$22,$2F,$2A,$6A,$00,$2E,$22,$2E,$28,$6E,$00,$2E,$2A
       .byte $2E,$28,$6E,$00,$22,$22,$22,$22,$6E,$00,$2E,$2A,$2E,$2A,$6E,$00
       .byte $2E,$22,$2E,$2A,$6E,$00,$77,$45,$75,$15,$77,$00,$72,$42,$72,$12
       .byte $76,$00,$77,$44,$77,$11,$77,$00,$77,$41,$77,$11,$77,$00,$71,$41
       .byte $77,$15,$75,$00,$77,$41,$77,$14,$77,$00,$77,$45,$77,$14,$77,$00
       .byte $71,$41,$71,$11,$77,$00,$77,$45,$77,$15,$77,$00,$77,$41,$77,$15
       .byte $77,$00,$77,$15,$75,$15,$77,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$A9,$AA,$A2,$01,$0A,$48,$B5,$6B,$90
       .byte $04,$4A,$4A,$4A,$4A,$29,$0F,$D0,$02,$50,$08,$09,$B0,$20,$23,$27
       .byte $2C,$87,$2A
LFB00: .byte $03,$00,$17,$10,$12,$1C,$18,$19,$11,$08,$0C,$1A,$0B,$1D,$15,$02
       .byte $16,$0F,$0D,$05,$01,$09,$0E,$04,$13,$06,$0A,$14,$1B,$07
LFB1E: .byte $13,$19,$08,$11,$16,$0C,$05,$1C,$09,$17,$10,$12,$0B,$01,$0A,$0D
       .byte $02,$1B,$15,$1A,$1D,$07,$14,$0E,$18,$0F,$00,$04,$06,$03
LFB3C: .byte $22,$34,$37,$21,$1E,$2E,$24,$35,$23,$2A,$27,$2D,$36,$1F,$26,$2C
       .byte $2B,$2F,$20,$3B,$31,$38,$3A,$33,$29,$32,$39,$30,$25,$28,$11,$68
       .byte $91,$AC,$88,$C0,$0B,$D0,$F8,$A9,$01,$A0,$00,$91,$AC,$A9,$00,$C8
       .byte $91,$AC,$A9,$01,$C8,$91,$AC,$A9,$00,$C8,$91,$AC,$BD,$A3,$2E,$A0
       .byte $05,$91,$AC,$BD,$A2,$2E,$C8,$91,$AC,$BD,$E4,$2E,$C8,$91,$AC,$BD
       .byte $34,$30,$C8,$91,$AC,$BD,$35,$30,$C8,$91,$AC,$E0,$00,$D0,$14,$A9
       .byte $05,$81,$AC,$20,$D2,$2D,$A2,$00,$A9,$01,$81,$AC,$AD,$E4,$2E,$A0
       .byte $07,$91,$AC,$20,$D2,$2D,$68,$AA,$68,$A8,$68,$60,$98,$48,$8A,$48
       .byte $20,$C5,$2D,$A9,$02,$A0,$00,$91,$AC,$20,$D2,$2D,$A0,$0C,$B1,$AC
       .byte $18,$69,$2D,$85,$AA,$C8,$B1,$AC,$69,$00,$85,$AB,$A9,$00,$A8,$91
       .byte $AA,$68,$AA,$68,$A8,$60,$24,$A6,$30,$03,$4C,$D5,$2C,$48,$98,$48
       .byte $8A,$48,$A5,$A3,$30,$03,$4C,$96,$2C,$A5,$0C,$38,$E9,$04,$85,$89
       .byte $A5,$0D,$E9,$00,$00,$00,$80,$40,$40,$20,$20,$E0,$00,$E7,$14,$94
       .byte $62,$92,$89,$78,$00,$3D,$19,$0C,$0C,$06,$06,$0E,$00,$C0,$00,$8E
       .byte $8E,$40,$40,$C0,$00,$1E,$11,$16,$08,$88,$84,$C7,$00,$0F,$06,$03
       .byte $03,$01,$01,$03
LFC30: .byte $00,$00,$1D,$00,$1D,$00,$1A,$00,$17,$00,$15,$00,$13,$00,$0E,$00
       .byte $13,$00,$13,$00,$11,$00,$13,$00,$15,$00,$17,$00,$1A,$00,$17,$00
       .byte $15,$00,$13,$00,$15,$00,$17,$00,$1A,$00,$1D,$00,$13,$00,$15,$00
       .byte $17,$00,$13
LFC63: .byte $20,$20,$20,$03,$04,$03,$0C,$03,$08,$03,$08,$03,$10,$03,$10,$03
       .byte $08,$03,$08,$03,$04,$03,$04,$03,$04,$03,$04,$03,$20,$03,$08,$03
       .byte $08,$03,$04,$03,$04,$03,$04,$03,$04,$03,$10,$03,$10,$03,$04,$03
       .byte $0C,$03,$10,$A2,$00,$A9,$00,$A0,$02,$20,$FA,$2C,$A5,$82,$48,$A5
       .byte $81,$20,$D6,$2C,$68,$20,$D6,$2C,$24,$A3,$10,$0A,$A5,$7F,$20,$D6
       .byte $2C,$A5,$80,$20,$D6,$2C,$20,$B8,$2B,$46,$A6,$A0,$1D,$B9,$A6,$2E
       .byte $C9,$A0,$D0,$03,$88,$10,$F6,$18,$69,$01,$99,$A6,$2E,$68,$AA,$68
       .byte $A8,$68,$60,$8D,$94,$2E,$48,$98,$48,$8A,$48,$A2,$00,$20,$C5,$2D
       .byte $20,$D2,$2D,$EE,$8E,$2E,$D0,$03,$EE,$8F,$2E,$E6,$81,$D0,$02,$E6
       .byte $82,$68,$AA,$68,$A8,$68,$60,$84,$AA,$85,$AB,$48,$98
LFD00: .byte $00,$1D,$1D,$1D,$00,$1A,$00,$1A,$00,$17,$00,$17,$00,$15,$00,$15
       .byte $00,$13,$13,$13,$00,$11,$00,$11,$00,$13,$00,$13,$00,$1D,$00,$1D
       .byte $00,$1A,$1A,$1A,$00,$17,$00,$17,$00,$15,$00,$15,$00,$13,$00,$13
       .byte $00,$1A,$1A,$1A,$00,$17,$00,$17,$00,$15,$00,$15,$00,$13,$00,$13
       .byte $00,$1D,$1D,$1D,$00,$1A,$00,$1A,$00,$17,$00,$17,$00,$15,$00,$15
       .byte $00,$13,$13,$13,$00,$11,$00,$11,$00,$13,$00,$13,$00,$1D,$00,$1D
       .byte $00,$1D,$1D,$1D,$00,$1A,$00,$1A,$00,$17,$00,$17,$00,$15,$00,$15
       .byte $00,$13,$13,$13,$00,$11,$00,$11,$00,$13,$00,$13,$00,$1D,$00,$1D
       .byte $00,$1A,$1A,$1A,$00,$17,$00,$17,$00,$15,$00,$15,$00,$13,$00,$13
       .byte $00,$1A,$1A,$1A,$00,$17,$00,$17,$00,$15,$00,$15,$00,$13,$00,$13
       .byte $00,$1D,$1D,$1D,$00,$1A,$00,$1A,$00,$17,$00,$17,$00,$15,$00,$15
       .byte $00,$13,$13,$13,$00,$11,$00,$11,$00,$13,$00,$13,$00,$1D,$00,$1D
       .byte $AA,$68,$A8,$68,$60,$48,$BD,$30,$30,$85,$AC,$BD,$31,$30,$85,$AD
       .byte $68,$60,$48,$98,$48,$8A,$48,$A0,$15,$B1,$AC,$91,$B0,$88,$10,$F9
       .byte $AC,$E3,$2E,$F0,$11,$8A,$D0,$0E,$A5,$81,$C9,$FC,$D0,$08,$CC,$E2
       .byte $2E,$F0,$03,$99,$88,$C0,$20,$D6,$03,$A0,$15,$B1,$B0,$91,$AC,$88
       .byte $00,$3A,$6C,$6C,$6C,$3C,$0C,$78,$00,$78,$66,$66,$66,$78,$60,$60
       .byte $00,$38,$64,$60,$60,$60,$24,$18,$00,$3A,$66,$66,$66,$3E,$06,$06
       .byte $00,$18,$24,$60,$7C,$64,$24,$18,$00,$60,$20,$30,$7C,$30,$10,$18
       .byte $00,$3C,$42,$1A,$26,$66,$66,$3A,$00,$66,$66,$66,$66,$78,$60,$60
       .byte $00,$18,$18,$18,$18,$00,$18,$18,$00,$38,$58,$18,$18,$18,$00,$18
       .byte $00,$64,$68,$70,$70,$6C,$60,$60,$00,$3C,$18,$18,$18,$18,$18,$30
       .byte $00,$54,$54,$54,$54,$54,$28,$00,$00,$26,$24,$24,$24,$24,$78,$00
       .byte $00,$3C,$66,$66,$66,$66,$66,$3C,$00,$60,$60,$7C,$66,$66,$66,$5C
       .byte $00,$06,$06,$3E,$66,$66,$66,$3A,$00,$60,$60,$60,$72,$7C,$68,$60
       .byte $00,$38,$4C,$0C,$18,$30,$32,$1C,$00,$0C,$1A,$18,$18,$7E,$18,$18
       .byte $00,$3A,$6C,$6C,$6C,$6C,$6C,$6C,$00,$08,$18,$24,$24,$64,$26,$04
       .byte $00,$00,$28,$28,$54,$54,$44,$44,$00,$42,$24,$18,$08,$14,$62,$00
       .byte $00,$20,$10,$08,$08,$14,$62,$02,$00,$10,$28,$10,$10,$14,$08,$3C
       .byte $00,$18,$7E,$5A,$7E,$7E,$66,$42,$00,$66,$24,$3C,$18,$7E,$5A,$18
       .byte $00,$5A,$7E,$18,$3C,$66,$5A,$3C,$00,$54,$56,$3C,$3C,$72,$70,$10
       .byte $00,$7F,$41,$41,$41,$41,$41,$7F,$00,$7F,$7F,$7F,$7F,$7F,$7F,$7F
       .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$1C,$1C,$1C,$1C,$7F,$3E,$1C,$08
       .byte $08,$1C,$3E,$7F,$1C,$1C,$1C,$1C
LFF68: .byte $29,$39,$49,$59,$69,$79,$89,$99,$A9,$D9
LFF72: .byte $D9,$A9,$99,$89,$79,$69,$59,$49,$39,$29
LFF7C: .byte $92,$98,$9E,$A4,$AA,$B0,$B6,$BC,$C2,$C8
LFF86: .byte $1E,$42,$66,$8A,$AE,$DB,$DC,$DD,$DE,$DF,$E0
LFF91: .byte $11,$0E,$0E,$0E
LFF95: .byte $10,$09,$09,$09,$A0,$A0,$A0,$A0,$A0,$AD,$A0,$A0,$A0,$A0,$A0,$AD
       .byte $A0,$A0,$A0,$A0,$A0,$AD,$A0,$A0,$A0,$A0,$A0,$AD,$A0,$A0,$A0,$A0
       .byte $A0,$A0,$A0,$D4,$A0,$A0,$A0,$A0,$A0,$D4,$A0,$A0,$A0,$A0,$A0,$D4
       .byte $A0,$A0,$A0,$A0,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$A0,$A0,$C6
       .byte $A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$AD
       .byte $A0,$D3,$A0,$A0,$A0,$AD,$A0,$D3,$A0,$A0,$A0,$AD,$A0,$D3,$AD,$A0
       .byte $A0,$AD,$A0,$D3,$AD,$A0,$A0,$00,$F0,$E0,$88
