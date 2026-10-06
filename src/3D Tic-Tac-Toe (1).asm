; Disassembly of roms/3D Tic-Tac-Toe (1).bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/3D Tic-Tac-Toe (1).bin
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
CTRLPF  =  $0A
PF1     =  $0E
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMOVE   =  $2A
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
T1024T  =  $0297

       ORG $F000

START:
       JMP    LF105   
LF003: LDX    #$02    
LF005: STA    WSYNC   
       LDY    $88     
       LDA    ($E9),Y 
       STA    PF1     
       LDY    #$00    
       LDA    $88     
       CMP    #$08    
       BNE    LF016   
       INY            
LF016: LDA    ($E9),Y 
       LDY    #$03    
LF01A: DEY            
       BNE    LF01A   
       STA    PF1     
       DEX            
       BNE    LF005   
       LDA    $E9     
       SEC            
       SBC    #$09    
       STA    $E9     
       CMP    #$30    
       BCS    LF003   
       STA    WSYNC   
       LDY    #$00    
       STY    PF1     
       STY    $F1     
LF035: STA    WSYNC   
       STY    $F0     
       DEY            
LF03A: STA    WSYNC   
       INC    $F0     
       STY    GRP0    
       STY    GRP1    
       STY    ENAM0   
       LDA    $9A,X   
       STA    $E3     
       LDA    $9B,X   
       STA    $E5     
       LDA    $9C,X   
       STA    $E7     
       LDA    $9D,X   
       STA    $E9     
       NOP            
       LDY    #$07    
LF057: LDA    ($E3),Y 
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($E5),Y 
       STA    GRP1    
       LDA    ($E7),Y 
       TAX            
       LDA.w  $00F0   
       CMP    #$18    
       BCC    LF077   
       CMP    #$24    
       BCC    LF073   
       BCS    LF073   
LF073: NOP            
       JMP    LF07D   
LF077: CMP    #$0C    
       BCC    LF07D   
       BCS    LF07D   
LF07D: INC    $F0     
       LDA    ($E9),Y 
       STX    GRP0    
       STA    GRP1    
       DEY            
       LDA    ($E3),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($E5),Y 
       STA    GRP1    
       NOP            
       NOP            
       LDA    ($E7),Y 
       TAX            
       LDA    $F0     
       CMP    #$18    
       BCC    LF0A5   
       CMP    #$24    
       BCC    LF0A1   
       BCS    LF0A1   
LF0A1: NOP            
       JMP    LF0AB   
LF0A5: CMP    #$0C    
       BCC    LF0AB   
       BCS    LF0AB   
LF0AB: INC    $F0     
       LDA    ($E9),Y 
       STX    GRP0    
       STA    GRP1    
       DEY            
       BPL    LF057   
       STA    WSYNC   
       STA    HMOVE   
       INC    $F0     
       LDA    #$80    
       STA    GRP0    
       STA    GRP1    
       LDA    $F1     
       CLC            
       ADC    #$04    
       STA    $F1     
       TAX            
       AND    #$0F    
       BEQ    LF0D1   
       JMP    LF03A   
LF0D1: STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    HMM0    
       STA    HMP1    
       LDA    #$F0    
       STA    HMP0    
       STY    WSYNC   
       LDY    #$07    
LF0EB: DEY            
       BNE    LF0EB   
       STA    RESP0   
       STA    RESP1   
       STA    RESM0   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMM0    
       STA    HMP1    
       CPX    #$40    
       BEQ    LF126   
       JMP    LF035   
LF105: SEI            
       CLD            
       LDX    #$00    
       TXA            
LF10A: STA    VSYNC,X 
       INX            
       BNE    LF10A   
       INX            
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    #$30    
       STX    AUDF0   
       STX    AUDF1   
       LDX    #$04    
       STX    AUDC1   
       LDX    #$FF    
       STX    AUDV0   
       TXS            
       JSR    LF454   
LF126: LDX    #$1A    
LF128: STA    WSYNC   
       DEX            
       BNE    LF128   
       STX    AUDC0   
       LDA    #$02    
       STA    CTRLPF  
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$2C    
       STA    WSYNC   
       STX    VSYNC   
       STY    TIM64T  
       INC    $87     
       BNE    LF14C   
       INC    $EB     
LF14C: LDX    $84     
       LDA    $DE     
       STA    $9A,X   
       LDX    $82     
       LDA    $DB     
       STA    $9A,X   
       LDA    $EC     
       BNE    LF1C3   
       JSR    LF43A   
       LDA    SWCHB   
       LDX    $DC     
       BNE    LF182   
       AND    #$40    
       BNE    LF171   
       LDA    $DD     
       BEQ    LF19B   
       JMP    LF2FD   
LF171: STA    $DC     
       JSR    LF4DE   
       INY            
       STY    AUDV1   
       LDA    $DD     
       BEQ    LF186   
       JSR    LF4C1   
       BMI    LF186   
LF182: AND    #$40    
       STA    $DC     
LF186: JSR    LF75D   
       LDX    #$00    
       STX    $DD     
       STX    $8D     
       INX            
       STX    $DF     
       LDX    $DC     
       BNE    LF1CE   
       JSR    LF4DE   
       BNE    LF1A8   
LF19B: LDX    $88     
       LDA    LF6A5,X 
       STA    $83     
       LDA    $DF     
       BEQ    LF1C6   
       DEC    $DF     
LF1A8: LDA    #$FE    
       STA    $83     
       LDA    $84     
       PHA            
       JSR    LF514   
       PLA            
       STA    $84     
       LDA    #$1E    
       STA    $EC     
       CPY    #$01    
       BNE    LF1C0   
       JMP    LF2F0   
LF1C0: JSR    LF79E   
LF1C3: JMP    LF405   
LF1C6: CPX    #$08    
       BEQ    LF1CE   
       LDX    $EF     
       BNE    LF1D1   
LF1CE: JMP    LF329   
LF1D1: LDA    $ED     
       BEQ    LF1C3   
       DEX            
       STX    VBLANK  
       BIT    $8D     
       BVC    LF1F2   
       LDA    #$FE    
       STA    $83     
       JSR    LF514   
       LDX    $84     
       CPY    #$04    
       BEQ    LF21E   
       LDY    $99     
       LDX    $90,Y   
       DEC    $99     
LF1EF: JMP    LF2C3   
LF1F2: LDA    #$80    
       STA    $8D     
       LDA    $84     
       PHA            
       JSR    LF514   
       PLA            
       LDX    $84     
       CPY    #$00    
       BEQ    LF221   
       CPY    #$03    
       BNE    LF211   
       LDA    #$40    
       STA    $8D     
       LDA    #$07    
       STA    $99     
       BNE    LF1EF   
LF211: CPY    #$05    
       BEQ    LF221   
       CPY    #$01    
       BNE    LF21E   
       STA    $84     
       JMP    LF2D5   
LF21E: JMP    LF2C7   
LF221: JSR    LF79E   
       JSR    LF514   
       LDA    #$00    
       STA    $8D     
       CPY    #$03    
       BNE    LF25A   
       LDY    #$08    
LF231: LDX    $90,Y   
       BMI    LF253   
       LDA    $81     
       STA    $9A,X   
       TYA            
       PHA            
       TXA            
       PHA            
       JSR    LF514   
       PLA            
       TAX            
       PLA            
       CPY    #$05    
       BEQ    LF255   
       CPY    #$00    
       BEQ    LF255   
       TAY            
       LDA    #$00    
       STA    $9A,X   
       DEY            
       BPL    LF231   
LF253: LDX    $98     
LF255: JSR    LF79E   
       BNE    LF2C3   
LF25A: JSR    LF79E   
       JSR    LF494   
       BEQ    LF269   
       LDY    #$00    
       JSR    LF494   
       BEQ    LF2C3   
LF269: TYA            
       AND    #$08    
       LDX    #$07    
       LDY    #$00    
       JSR    LF498   
       BEQ    LF27A   
       JSR    LF4B7   
       BNE    LF2AC   
LF27A: STY    $85     
LF27C: LDA    $80     
       STA    $9A,X   
       TYA            
       PHA            
       TXA            
       PHA            
       JSR    LF514   
       PLA            
       TAX            
       LDA    #$00    
       STA    $9A,X   
       PLA            
       CPY    #$03    
       BEQ    LF2C3   
       TAY            
       JSR    LF4B0   
       BEQ    LF27C   
       LDA    $90     
       EOR    $85     
       AND    #$08    
       BNE    LF2A5   
       JSR    LF4B7   
       BEQ    LF27C   
LF2A5: LDY    $85     
       LDX    LF7EC,Y 
       BPL    LF2C3   
LF2AC: LDA    $87     
       AND    #$3F    
       TAX            
       LDY    #$40    
LF2B3: LDA    $9A,X   
       BEQ    LF2C3   
       DEX            
       TXA            
       AND    #$3F    
       TAX            
       DEY            
       BNE    LF2B3   
       STY    $ED     
       BEQ    LF2D8   
LF2C3: LDA    #$00    
       STA    $86     
LF2C7: STX    $84     
       LDA    $80     
       STA    $9A,X   
       STA    $DE     
       LDX    $82     
       LDA    $9A,X   
       STA    $DB     
LF2D5: JSR    LF4DE   
LF2D8: LDA    #$1E    
       STA    $EC     
       LDX    #$00    
       STX    $E0     
       STX    $DD     
       STX    $DF     
       STX    $DC     
       STX    $EF     
       LDA    $86     
       BEQ    LF326   
       AND    #$02    
       BNE    LF326   
LF2F0: LDY    $8B     
       LDX    LF7A7,Y 
       LDA    $9A,X   
       STA    $DD     
       LDA    #$FF    
       STA    $EE     
LF2FD: LDA    $EE     
       BPL    LF306   
       DEC    $EE     
       JMP    LF3E1   
LF306: LDA    $87     
       AND    #$18    
       BEQ    LF30E   
       LDA    $DD     
LF30E: JSR    LF4C1   
       LDX    $ED     
       BEQ    LF326   
       DEC    $EE     
       BNE    LF31F   
       LDX    #$00    
       STX    $ED     
       BEQ    LF324   
LF31F: TAX            
       BEQ    LF324   
       LDX    $87     
LF324: STX    AUDV1   
LF326: JMP    LF405   
LF329: LDY    $EF     
       LDX    $82     
       LDA    $DC     
       BEQ    LF350   
       LDA    INPT4   
       BPL    LF339   
       LDY    #$00    
       BEQ    LF384   
LF339: LDA    $87     
       AND    #$1F    
LF33D: BNE    LF326   
       LDA    $DB     
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $EF     
       BEQ    LF34A   
       INY            
LF34A: LDA    LF721,Y 
       JMP    LF365   
LF350: LDA.wy $003C,Y 
       BMI    LF384   
       LDA    $DB     
       BEQ    LF362   
       JSR    LF4DE   
       LDA    #$0F    
       STA    AUDC0   
       BNE    LF3A5   
LF362: LDA    LF721,Y 
LF365: STA    $9A,X   
       STA    $DB     
       STA    $DE     
       STX    $84     
       JSR    LF4DE   
       LDA    $EF     
       EOR    #$01    
       STA    $EF     
       LDA    $88     
       CMP    #$08    
       BNE    LF37E   
       INC    $DF     
LF37E: LDA    #$04    
       STA    AUDC0   
       BNE    LF33D   
LF384: LDA    $87     
       AND    #$0F    
       BNE    LF3E1   
       LDA    SWCHA   
       CPY    #$00    
       BNE    LF395   
       LSR            
       LSR            
       LSR            
       LSR            
LF395: AND    #$0F    
       CMP    #$0F    
       BNE    LF3A8   
       LDY    $ED     
       BEQ    LF3E1   
       LDY    $87     
       BNE    LF3E1   
       DEC    $ED     
LF3A5: JMP    LF3E1   
LF3A8: JSR    LF4DE   
       LDY    #$0E    
       STY    AUDC0   
       STA    $E1     
       TXA            
       LSR    $E1     
       BCS    LF3B8   
       SBC    #$03    
LF3B8: LSR    $E1     
       BCS    LF3BE   
       ADC    #$04    
LF3BE: AND    #$3F    
       LSR    $E1     
       BCS    LF3CA   
       TAY            
       SBC    #$00    
       JMP    LF3D1   
LF3CA: LSR    $E1     
       BCS    LF3DA   
       TAY            
       ADC    #$01    
LF3D1: AND    #$03    
       STA    $E1     
       TYA            
       AND    #$3C    
       ORA    $E1     
LF3DA: TAX            
       STX    $82     
       LDA    $9A,X   
       STA    $DB     
LF3E1: LDX    $84     
       LDY    $DE     
       LDA    $87     
       AND    #$08    
       BEQ    LF3ED   
       LDY    #$00    
LF3ED: STY    $9A,X   
       LDA    $DD     
       BNE    LF405   
       LDY    $DB     
       LDA    $87     
       AND    #$08    
       BNE    LF401   
       LDY    $EF     
       LDA    LF724,Y 
       TAY            
LF401: LDX    $82     
       STY    $9A,X   
LF405: LDY    #$54    
       STY    $E9     
       LDX    #$F7    
       LDY    #$08    
LF40D: STX    $E2,Y   
       DEY            
       DEY            
       BNE    LF40D   
       LDA    $EC     
       BEQ    LF42E   
       DEY            
       DEC    $EC     
       BNE    LF42E   
       LDA    $88     
       CMP    #$08    
       BEQ    LF42E   
       LDA    $EF     
       BNE    LF42E   
       LDA    $DF     
       BNE    LF42E   
       LDA    #$04    
       STA    AUDC0   
LF42E: LDX    INTIM   
       BNE    LF42E   
       STA    WSYNC   
       STY    VBLANK  
       JMP    LF003   
LF43A: LDA    SWCHB   
       ROR            
       ROR            
       BCS    LF45A   
       DEC    $DA     
       BNE    LF47A   
       LDA    #$2D    
       STA    $DA     
       LDY    $88     
       INY            
       CPY    #$09    
       BNE    LF452   
       LDY    #$00    
LF452: STY    $88     
LF454: LDY    #$00    
       STY    $ED     
       BEQ    LF473   
LF45A: LDX    #$01    
       STX    $DA     
       ASL            
       BCS    LF47A   
       DEX            
       LDA    #$00    
       LDX    #$46    
LF466: STA    $9A,X   
       DEX            
       BPL    LF466   
       LDX    #$01    
       STX    $DA     
       JSR    LF4DE   
       INY            
LF473: STY    $8D     
       STY    AUDV1   
       JSR    LF75D   
LF47A: LDX    $ED     
       BEQ    LF484   
       LDA    #$FF    
       LDX    #$00    
       BEQ    LF488   
LF484: LDA    #$F7    
       LDX    $EB     
LF488: TXA            
       EOR    #$8E    
       STA    COLUP1  
       STA    COLUP0  
       EOR    #$0C    
       STA    COLUBK  
       RTS            

LF494: LDA    #$00    
       LDX    #$0F    
LF498: STY    $93     
LF49A: STA    $90     
       STX    $91     
       STX    $92     
       LDA    $87     
LF4A2: AND    $91     
       ORA    $90     
       TAY            
       LDX    LF7EC,Y 
       LDA    $9A,X   
       CMP    $93     
       BEQ    LF4B6   
LF4B0: INY            
       TYA            
       DEC    $92     
       BPL    LF4A2   
LF4B6: RTS            

LF4B7: LDA    $90     
       EOR    #$08    
       LDX    #$07    
       JSR    LF49A   
       RTS            

LF4C1: STA    $E1     
       LDY    $8B     
       LDX    LF7A7,Y 
       LDA    LF6AD,Y 
       STA    $8A     
       LDY    #$03    
       CLC            
       BCC    LF4D6   
LF4D2: TXA            
       ADC    $8A     
       TAX            
LF4D6: LDA    $E1     
       STA    $9A,X   
       DEY            
       BPL    LF4D2   
       RTS            

LF4DE: LDY    #$FF    
       STY    $ED     
       RTS            

LF4E3: LDA    $8D     
       BPL    LF4F2   
       TSX            
       TXA            
       LSR            
       LSR            
       AND    #$0F    
       TAX            
       LDA    $84     
       STA    $8A,X   
LF4F2: RTS            

LF4F3: LDA    $81     
LF4F5: STA    $89     
       LDY    $8B     
       LDX    LF7A7,Y 
       LDA    LF6AD,Y 
       STA    $8A     
       LDY    #$03    
       BNE    LF50A   
LF505: TXA            
       CLC            
       ADC    $8A     
       TAX            
LF50A: LDA    $9A,X   
       CMP    $89     
       BEQ    LF513   
LF510: DEY            
       BPL    LF505   
LF513: RTS            

LF514: LDA    #$FF    
       STA    $8E     
       STA    T1024T  
       LDX    #$01    
       LDA    $8D     
       BPL    LF529   
       LDA    $88     
       CMP    #$07    
       BNE    LF529   
       LDX    #$05    
LF529: STX    $8F     
LF52B: LDA    #$00    
       STA    $86     
       LDA    #$4B    
       STA    $8B     
LF533: LDA    SWCHB   
       ROR            
       ROR            
       LDY    #$05    
       LDA    #$FF    
       STA    $DA     
       BCC    LF576   
       LDA    INTIM   
       BNE    LF569   
       TSX            
       LDA    SWCHB   
       AND    #$08    
       BNE    LF553   
       TXA            
       LSR            
       AND    #$06    
       BPL    LF558   
LF553: TXA            
       ASL            
       ASL            
       ASL            
       ASL            
LF558: STA    COLUBK  
       DEC    $8E     
       BNE    LF564   
       LDY    #$05    
       DEC    $8F     
       BEQ    LF576   
LF564: LDA    #$FF    
       STA    T1024T  
LF569: JSR    LF77D   
       LDA    $81     
       ASL            
       ASL            
       CMP    $89     
       BNE    LF579   
       LDY    #$01    
LF576: STY    $86     
       RTS            

LF579: LDA    $86     
       BEQ    LF583   
       CMP    #$02    
       BNE    LF5A8   
       BEQ    LF590   
LF583: LDA    $81     
       ASL            
       ADC    $81     
       CMP    $89     
       BNE    LF590   
       LDA    #$02    
       BNE    LF59B   
LF590: LDA    $80     
       ASL            
       ADC    $80     
       CMP    $89     
       BNE    LF5A8   
       LDA    #$03    
LF59B: STA    $86     
       LDA    $8B     
       STA    $8C     
       LDA    #$00    
       JSR    LF4F5   
       STX    $84     
LF5A8: DEC    $8B     
       BPL    LF533   
       LDA    $8C     
       STA    $8B     
       TSX            
       LDY    $86     
       CPY    #$03    
       BNE    LF5CF   
       CPX    #$FB    
       BCC    LF5BF   
       LDY    #$04    
       STY    $86     
LF5BF: LDA    $8D     
       BPL    LF5CE   
       JSR    LF4E3   
       CPX    #$07    
       BCC    LF5CE   
       LDA    #$FF    
       STA    $89,X   
LF5CE: RTS            

LF5CF: CPX    $83     
       BCC    LF5CE   
       CPY    #$02    
       BNE    LF62D   
       CPX    #$FB    
       BCS    LF5CE   
       LDX    $84     
       TXA            
       PHA            
       JSR    LF79E   
       STA    $9A,X   
       LDA    $83     
       PHA            
       LDX    #$FF    
       STX    $83     
       JSR    LF52B   
       PLA            
       STA    $83     
       JSR    LF79E   
       LDY    $86     
       CPY    #$02    
       BEQ    LF5FF   
       PLA            
       STA    $84     
       BPL    LF61E   
LF5FF: LDX    $84     
       LDA    $81     
       STA    $9A,X   
       LDA    $8B     
       PHA            
       JSR    LF52B   
       PLA            
       STA    $8B     
       PLA            
       STA    $84     
       JSR    LF4F3   
       LDA    #$00    
       STA    $9A,X   
       LDY    $86     
       CPY    #$03    
       BEQ    LF688   
LF61E: CPY    #$05    
       BEQ    LF626   
       LDY    #$02    
       STY    $86     
LF626: LDA    #$00    
       LDX    $84     
       STA    $9A,X   
       RTS            

LF62D: LDA    #$4B    
       STA    $8B     
LF631: JSR    LF77D   
       LDA    $80     
       ASL            
       CMP    $89     
       BNE    LF69C   
       LDA    #$00    
       JSR    LF4F5   
       LDA    $80     
       STA    $9A,X   
       STX    $84     
       TXA            
       PHA            
       JSR    LF510   
       LDA    $81     
       STA    $9A,X   
       LDA    $8B     
       PHA            
       JSR    LF52B   
       PLA            
       STA    $8B     
       PLA            
       STA    $84     
       CPY    #$03    
       BEQ    LF681   
       CPY    #$05    
       BEQ    LF681   
       JSR    LF4F3   
       LDA    $80     
       STA    $9A,X   
       LDY    $84     
       LDA    $81     
       STA.wy $009A,Y 
       STX    $84     
       TXA            
       PHA            
       LDA    $8B     
       PHA            
       JSR    LF52B   
       PLA            
       STA    $8B     
       PLA            
       STA    $84     
LF681: JSR    LF4F3   
       LDA    #$00    
       STA    $9A,X   
LF688: LDA    #$00    
       LDX    $84     
       STA    $9A,X   
       LDY    $86     
       CPY    #$03    
       BEQ    LF698   
       CPY    #$05    
       BNE    LF69C   
LF698: JSR    LF4E3   
       RTS            

LF69C: DEC    $8B     
       BPL    LF631   
       LDY    #$00    
       STY    $86     
       RTS            

LF6A5: .byte $FE,$FA,$F6,$F2,$EE,$EA,$DE,$DE
LF6AD: .byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$04,$04
       .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$05,$05,$05
       .byte $05,$03,$03,$03,$03,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$11,$11,$11,$11,$0F,$0F,$0F,$0F,$14,$14,$14
       .byte $14,$0C,$0C,$0C,$0C,$01,$01,$04,$15,$13,$0D,$0B,$00,$00,$00,$00
       .byte $00,$00,$00,$80,$80,$80,$80,$80,$80,$80,$80,$92,$94,$8C,$88,$8C
       .byte $94,$92,$80,$9E,$9C,$8C,$88,$8C,$9C,$9E,$80,$9C,$BC,$9E,$BC,$9E
       .byte $BC,$9C,$80,$28
LF721: .byte $08,$28,$00
LF724: .byte $10,$18,$00,$08,$9C,$A4,$92,$A4,$92,$A4,$9C,$80,$02,$07,$07,$01
       .byte $07,$07,$01,$07,$07,$02,$04,$01,$01,$01,$05,$01,$05,$01,$02,$07
       .byte $03,$07,$07,$07,$01,$07,$07,$02,$01,$01,$05,$04,$04,$01,$05,$05
       .byte $02,$07,$07,$05,$07,$07,$07,$07,$07
LF75D: LDY    SWCHB   
       LDA    #$28    
       STA    $80     
       LDA    #$08    
       STA    $81     
       LDX    $88     
       CPX    #$08    
       BNE    LF774   
       TYA            
       BMI    LF774   
       JSR    LF79E   
LF774: LDX    #$00    
       TYA            
       BMI    LF77A   
       INX            
LF77A: STX    $EF     
       RTS            

LF77D: LDY    $8B     
       LDX    LF7A7,Y 
       LDA    LF6AD,Y 
       STA    $8A     
       LDA    #$00    
       STA    $89     
       LDY    #$03    
       CLC            
       BCC    LF794   
LF790: TXA            
       ADC    $8A     
       TAX            
LF794: LDA    $9A,X   
       ADC    $89     
       STA    $89     
       DEY            
       BPL    LF790   
       RTS            

LF79E: LDA    $80     
       LDY    $81     
       STY    $80     
       STA    $81     
       RTS            

LF7A7: .byte $00,$04,$08,$0C,$10,$14,$18,$1C,$20,$24,$28,$2C,$34,$38,$00,$10
       .byte $20,$30,$01,$11,$21,$31,$02,$12,$22,$32,$03,$13,$23,$00,$10,$20
       .byte $30,$03,$13,$23,$33,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A
       .byte $0B,$0C,$0D,$0E,$0F,$00,$04,$08,$0C,$03,$07,$0B,$0F,$00,$01,$02
       .byte $03,$0C,$0D,$0E,$0F
LF7EC: .byte $30,$3C,$33,$00,$03,$0C,$0F,$3F,$15,$16,$19,$1A,$25,$26,$29,$2A
       .byte $00,$F0,$00,$00
