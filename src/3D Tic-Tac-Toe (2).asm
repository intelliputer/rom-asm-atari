; Disassembly of roms/3D Tic-Tac-Toe (2).bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/3D Tic-Tac-Toe (2).bin
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
       .byte $00,$F0,$00,$00,$4C,$05,$F1,$A2,$02,$85,$02,$A4,$88,$B1,$E9,$85
       .byte $0E,$A0,$00,$A5,$88,$C9,$08,$D0,$01,$C8,$B1,$E9,$A0,$03,$88,$D0
       .byte $FD,$85,$0E,$CA,$D0,$E3,$A5,$E9,$38,$E9,$09,$85,$E9,$C9,$30,$B0
       .byte $D6,$85,$02,$A0,$00,$84,$0E,$84,$F1,$85,$02,$84,$F0,$88,$85,$02
       .byte $E6,$F0,$84,$1B,$84,$1C,$84,$1D,$B5,$9A,$85,$E3,$B5,$9B,$85,$E5
       .byte $B5,$9C,$85,$E7,$B5,$9D,$85,$E9,$EA,$A0,$07,$B1,$E3,$85,$1B,$85
       .byte $02,$85,$2A,$B1,$E5,$85,$1C,$B1,$E7,$AA,$AD,$F0,$00,$C9,$18,$90
       .byte $0A,$C9,$24,$90,$02,$B0,$00,$EA,$4C,$7D,$F0,$C9,$0C,$90,$02,$B0
       .byte $00,$E6,$F0,$B1,$E9,$86,$1B,$85,$1C,$88,$B1,$E3,$85,$1B,$85,$02
       .byte $B1,$E5,$85,$1C,$EA,$EA,$B1,$E7,$AA,$A5,$F0,$C9,$18,$90,$0A,$C9
       .byte $24,$90,$02,$B0,$00,$EA,$4C,$AB,$F0,$C9,$0C,$90,$02,$B0,$00,$E6
       .byte $F0,$B1,$E9,$86,$1B,$85,$1C,$88,$10,$A1,$85,$02,$85,$2A,$E6,$F0
       .byte $A9,$80,$85,$1B,$85,$1C,$A5,$F1,$18,$69,$04,$85,$F1,$AA,$29,$0F
       .byte $F0,$03,$4C,$3A,$F0,$85,$02,$84,$1B,$84,$1C,$85,$02,$85,$1B,$85
       .byte $1C,$85,$1D,$85,$22,$85,$21,$A9,$F0,$85,$20,$84,$02,$A0,$07,$88
       .byte $D0,$FD,$85,$10,$85,$11,$85,$12,$85,$02,$85,$2A,$85,$02,$85,$22
       .byte $85,$21,$E0,$40,$F0,$24,$4C,$35,$F0,$78,$D8,$A2,$00,$8A,$95,$00
       .byte $E8,$D0,$FB,$E8,$86,$04,$86,$05,$A2,$30,$86,$17,$86,$18,$A2,$04
       .byte $86,$16,$A2,$FF,$86,$19,$9A,$20,$54,$F4,$A2,$1A,$85,$02,$CA,$D0
       .byte $FB,$86,$15,$A9,$02,$85,$0A,$85,$02,$85,$01,$85,$00,$85,$02,$85
       .byte $02,$A0,$2C,$85,$02,$86,$00,$8C,$96,$02,$E6,$87,$D0,$02,$E6,$EB
       .byte $A6,$84,$A5,$DE,$95,$9A,$A6,$82,$A5,$DB,$95,$9A,$A5,$EC,$D0,$67
       .byte $20,$3A,$F4,$AD,$82,$02,$A6,$DC,$D0,$1C,$29,$40,$D0,$07,$A5,$DD
       .byte $F0,$2D,$4C,$FD,$F2,$85,$DC,$20,$DE,$F4,$C8,$84,$1A,$A5,$DD,$F0
       .byte $09,$20,$C1,$F4,$30,$04,$29,$40,$85,$DC,$20,$5D,$F7,$A2,$00,$86
       .byte $DD,$86,$8D,$E8,$86,$DF,$A6,$DC,$D0,$38,$20,$DE,$F4,$D0,$0D,$A6
       .byte $88,$BD,$A5,$F6,$85,$83,$A5,$DF,$F0,$20,$C6,$DF,$A9,$FE,$85,$83
       .byte $A5,$84,$48,$20,$14,$F5,$68,$85,$84,$A9,$1E,$85,$EC,$C0,$01,$D0
       .byte $03,$4C,$F0,$F2,$20,$9E,$F7,$4C,$05,$F4,$E0,$08,$F0,$04,$A6,$EF
       .byte $D0,$03,$4C,$29,$F3,$A5,$ED,$F0,$EE,$CA,$86,$01,$24,$8D,$50,$16
       .byte $A9,$FE,$85,$83,$20,$14,$F5,$A6,$84,$C0,$04,$F0,$35,$A4,$99,$B6
       .byte $90,$C6,$99,$4C,$C3,$F2,$A9,$80,$85,$8D,$A5,$84,$48,$20,$14,$F5
       .byte $68,$A6,$84,$C0,$00,$F0,$1E,$C0,$03,$D0,$0A,$A9,$40,$85,$8D,$A9
       .byte $07,$85,$99,$D0,$DE,$C0,$05,$F0,$0C,$C0,$01,$D0,$05,$85,$84,$4C
       .byte $D5,$F2,$4C,$C7,$F2,$20,$9E,$F7,$20,$14,$F5,$A9,$00,$85,$8D,$C0
       .byte $03,$D0,$2B,$A0,$08,$B6,$90,$30,$1E,$A5,$81,$95,$9A,$98,$48,$8A
       .byte $48,$20,$14,$F5,$68,$AA,$68,$C0,$05,$F0,$0E,$C0,$00,$F0,$0A,$A8
       .byte $A9,$00,$95,$9A,$88,$10,$DE,$A6,$98,$20,$9E,$F7,$D0,$69,$20,$9E
       .byte $F7,$20,$94,$F4,$F0,$07,$A0,$00,$20,$94,$F4,$F0,$5A,$98,$29,$08
       .byte $A2,$07,$A0,$00,$20,$98,$F4,$F0,$05,$20,$B7,$F4,$D0,$32,$84,$85
       .byte $A5,$80,$95,$9A,$98,$48,$8A,$48,$20,$14,$F5,$68,$AA,$A9,$00,$95
       .byte $9A,$68,$C0,$03,$F0,$31,$A8,$20,$B0,$F4,$F0,$E4,$A5,$90,$45,$85
       .byte $29,$08,$D0,$05,$20,$B7,$F4,$F0,$D7,$A4,$85,$BE,$EC,$F7,$10,$17
       .byte $A5,$87,$29,$3F,$AA,$A0,$40,$B5,$9A,$F0,$0C,$CA,$8A,$29,$3F,$AA
       .byte $88,$D0,$F4,$84,$ED,$F0,$15,$A9,$00,$85,$86,$86,$84,$A5,$80,$95
       .byte $9A,$85,$DE,$A6,$82,$B5,$9A,$85,$DB,$20,$DE,$F4,$A9,$1E,$85,$EC
       .byte $A2,$00,$86,$E0,$86,$DD,$86,$DF,$86,$DC,$86,$EF,$A5,$86,$F0,$3A
       .byte $29,$02,$D0,$36,$A4,$8B,$BE,$A7,$F7,$B5,$9A,$85,$DD,$A9,$FF,$85
       .byte $EE,$A5,$EE,$10,$05,$C6,$EE,$4C,$E1,$F3,$A5,$87,$29,$18,$F0,$02
       .byte $A5,$DD,$20,$C1,$F4,$A6,$ED,$F0,$11,$C6,$EE,$D0,$06,$A2,$00,$86
       .byte $ED,$F0,$05,$AA,$F0,$02,$A6,$87,$86,$1A,$4C,$05,$F4,$A4,$EF,$A6
       .byte $82,$A5,$DC,$F0,$1F,$A5,$3C,$10,$04,$A0,$00,$F0,$4B,$A5,$87,$29
       .byte $1F,$D0,$E7,$A5,$DB,$4A,$4A,$4A,$A8,$A5,$EF,$F0,$01,$C8,$B9,$21
       .byte $F7,$4C,$65,$F3,$B9,$3C,$00,$30,$2F,$A5,$DB,$F0,$09,$20,$DE,$F4
       .byte $A9,$0F,$85,$15,$D0,$43,$B9,$21,$F7,$95,$9A,$85,$DB,$85,$DE,$86
       .byte $84,$20,$DE,$F4,$A5,$EF,$49,$01,$85,$EF,$A5,$88,$C9,$08,$D0,$02
       .byte $E6,$DF,$A9,$04,$85,$15,$D0,$B9,$A5,$87,$29,$0F,$D0,$57,$AD,$80
       .byte $02,$C0,$00,$D0,$04,$4A,$4A,$4A,$4A,$29,$0F,$C9,$0F,$D0,$0D,$A4
       .byte $ED,$F0,$42,$A4,$87,$D0,$3E,$C6,$ED,$4C,$E1,$F3,$20,$DE,$F4,$A0
       .byte $0E,$84,$15,$85,$E1,$8A,$46,$E1,$B0,$02,$E9,$03,$46,$E1,$B0,$02
       .byte $69,$04,$29,$3F,$46,$E1,$B0,$06,$A8,$E9,$00,$4C,$D1,$F3,$46,$E1
       .byte $B0,$0C,$A8,$69,$01,$29,$03,$85,$E1,$98,$29,$3C,$05,$E1,$AA,$86
       .byte $82,$B5,$9A,$85,$DB,$A6,$84,$A4,$DE,$A5,$87,$29,$08,$F0,$02,$A0
       .byte $00,$94,$9A,$A5,$DD,$D0,$12,$A4,$DB,$A5,$87,$29,$08,$D0,$06,$A4
       .byte $EF,$B9,$24,$F7,$A8,$A6,$82,$94,$9A,$A0,$54,$84,$E9,$A2,$F7,$A0
       .byte $08,$96,$E2,$88,$88,$D0,$FA,$A5,$EC,$F0,$17,$88,$C6,$EC,$D0,$12
       .byte $A5,$88,$C9,$08,$F0,$0C,$A5,$EF,$D0,$08,$A5,$DF,$D0,$04,$A9,$04
       .byte $85,$15,$AE,$84,$02,$D0,$FB,$85,$02,$84,$01,$4C,$03,$F0,$AD,$82
       .byte $02,$6A,$6A,$B0,$19,$C6,$DA,$D0,$35,$A9,$2D,$85,$DA,$A4,$88,$C8
       .byte $C0,$09,$D0,$02,$A0,$00,$84,$88,$A0,$00,$84,$ED,$F0,$19,$A2,$01
       .byte $86,$DA,$0A,$B0,$19,$CA,$A9,$00,$A2,$46,$95,$9A,$CA,$10,$FB,$A2
       .byte $01,$86,$DA,$20,$DE,$F4,$C8,$84,$8D,$84,$1A,$20,$5D,$F7,$A6,$ED
       .byte $F0,$06,$A9,$FF,$A2,$00,$F0,$04,$A9,$F7,$A6,$EB,$8A,$49,$8E,$85
       .byte $07,$85,$06,$49,$0C,$85,$09,$60,$A9,$00,$A2,$0F,$84,$93,$85,$90
       .byte $86,$91,$86,$92,$A5,$87,$25,$91,$05,$90,$A8,$BE,$EC,$F7,$B5,$9A
       .byte $C5,$93,$F0,$06,$C8,$98,$C6,$92,$10,$EC,$60,$A5,$90,$49,$08,$A2
       .byte $07,$20,$9A,$F4,$60,$85,$E1,$A4,$8B,$BE,$A7,$F7,$B9,$AD,$F6,$85
       .byte $8A,$A0,$03,$18,$90,$04,$8A,$65,$8A,$AA,$A5,$E1,$95,$9A,$88,$10
       .byte $F5,$60,$A0,$FF,$84,$ED,$60,$A5,$8D,$10,$0B,$BA,$8A,$4A,$4A,$29
       .byte $0F,$AA,$A5,$84,$95,$8A,$60,$A5,$81,$85,$89,$A4,$8B,$BE,$A7,$F7
       .byte $B9,$AD,$F6,$85,$8A,$A0,$03,$D0,$05,$8A,$18,$65,$8A,$AA,$B5,$9A
       .byte $C5,$89,$F0,$03,$88,$10,$F2,$60,$A9,$FF,$85,$8E,$8D,$97,$02,$A2
       .byte $01,$A5,$8D,$10,$08,$A5,$88,$C9,$07,$D0,$02,$A2,$05,$86,$8F,$A9
       .byte $00,$85,$86,$A9,$4B,$85,$8B,$AD,$82,$02,$6A,$6A,$A0,$05,$A9,$FF
       .byte $85,$DA,$90,$36,$AD,$84,$02,$D0,$24,$BA,$AD,$82,$02,$29,$08,$D0
       .byte $06,$8A,$4A,$29,$06,$10,$05,$8A,$0A,$0A,$0A,$0A,$85,$09,$C6,$8E
       .byte $D0,$06,$A0,$05,$C6,$8F,$F0,$12,$A9,$FF,$8D,$97,$02,$20,$7D,$F7
       .byte $A5,$81,$0A,$0A,$C5,$89,$D0,$05,$A0,$01,$84,$86,$60,$A5,$86,$F0
       .byte $06,$C9,$02,$D0,$27,$F0,$0D,$A5,$81,$0A,$65,$81,$C5,$89,$D0,$04
       .byte $A9,$02,$D0,$0B,$A5,$80,$0A,$65,$80,$C5,$89,$D0,$0F,$A9,$03,$85
       .byte $86,$A5,$8B,$85,$8C,$A9,$00,$20,$F5,$F4,$86,$84,$C6,$8B,$10,$87
       .byte $A5,$8C,$85,$8B,$BA,$A4,$86,$C0,$03,$D0,$18,$E0,$FB,$90,$04,$A0
       .byte $04,$84,$86,$A5,$8D,$10,$0B,$20,$E3,$F4,$E0,$07,$90,$04,$A9,$FF
       .byte $95,$89,$60,$E4,$83,$90,$FB,$C0,$02,$D0,$56,$E0,$FB,$B0,$F3,$A6
       .byte $84,$8A,$48,$20,$9E,$F7,$95,$9A,$A5,$83,$48,$A2,$FF,$86,$83,$20
       .byte $2B,$F5,$68,$85,$83,$20,$9E,$F7,$A4,$86,$C0,$02,$F0,$05,$68,$85
       .byte $84,$10,$1F,$A6,$84,$A5,$81,$95,$9A,$A5,$8B,$48,$20,$2B,$F5,$68
       .byte $85,$8B,$68,$85,$84,$20,$F3,$F4,$A9,$00,$95,$9A,$A4,$86,$C0,$03
       .byte $F0,$6A,$C0,$05,$F0,$04,$A0,$02,$84,$86,$A9,$00,$A6,$84,$95,$9A
       .byte $60,$A9,$4B,$85,$8B,$20,$7D,$F7,$A5,$80,$0A,$C5,$89,$D0,$61,$A9
       .byte $00,$20,$F5,$F4,$A5,$80,$95,$9A,$86,$84,$8A,$48,$20,$10,$F5,$A5
       .byte $81,$95,$9A,$A5,$8B,$48,$20,$2B,$F5,$68,$85,$8B,$68,$85,$84,$C0
       .byte $03,$F0,$22,$C0,$05,$F0,$1E,$20,$F3,$F4,$A5,$80,$95,$9A,$A4,$84
       .byte $A5,$81,$99,$9A,$00,$86,$84,$8A,$48,$A5,$8B,$48,$20,$2B,$F5,$68
       .byte $85,$8B,$68,$85,$84,$20,$F3,$F4,$A9,$00,$95,$9A,$A9,$00,$A6,$84
       .byte $95,$9A,$A4,$86,$C0,$03,$F0,$04,$C0,$05,$D0,$04,$20,$E3,$F4,$60
       .byte $C6,$8B,$10,$91,$A0,$00,$84,$86,$60,$FE,$FA,$F6,$F2,$EE,$EA,$DE
       .byte $DE,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$04
       .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$05,$05
       .byte $05,$05,$03,$03,$03,$03,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$11,$11,$11,$11,$0F,$0F,$0F,$0F,$14,$14
       .byte $14,$14,$0C,$0C,$0C,$0C,$01,$01,$04,$15,$13,$0D,$0B,$00,$00,$00
       .byte $00,$00,$00,$00,$80,$80,$80,$80,$80,$80,$80,$80,$92,$94,$8C,$88
       .byte $8C,$94,$92,$80,$9E,$9C,$8C,$88,$8C,$9C,$9E,$80,$9C,$BC,$9E,$BC
       .byte $9E,$BC,$9C,$80,$28,$08,$28,$00,$10,$18,$00,$08,$9C,$A4,$92,$A4
       .byte $92,$A4,$9C,$80,$02,$07,$07,$01,$07,$07,$01,$07,$07,$02,$04,$01
       .byte $01,$01,$05,$01,$05,$01,$02,$07,$03,$07,$07,$07,$01,$07,$07,$02
       .byte $01,$01,$05,$04,$04,$01,$05,$05,$02,$07,$07,$05,$07,$07,$07,$07
       .byte $07,$AC,$82,$02,$A9,$28,$85,$80,$A9,$08,$85,$81,$A6,$88,$E0,$08
       .byte $D0,$06,$98,$30,$03,$20,$9E,$F7,$A2,$00,$98,$30,$01,$E8,$86,$EF
       .byte $60,$A4,$8B,$BE,$A7,$F7,$B9,$AD,$F6,$85,$8A,$A9,$00,$85,$89,$A0
       .byte $03,$18,$90,$04,$8A,$65,$8A,$AA,$B5,$9A,$65,$89,$85,$89,$88,$10
       .byte $F3,$60,$A5,$80,$A4,$81,$84,$80,$85,$81,$60,$00,$04,$08,$0C,$10
       .byte $14,$18,$1C,$20,$24,$28,$2C,$34,$38,$00,$10,$20,$30,$01,$11,$21
       .byte $31,$02,$12,$22,$32,$03,$13,$23,$00,$10,$20,$30,$03,$13,$23,$33
       .byte $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F
       .byte $00,$04,$08,$0C,$03,$07,$0B,$0F,$00,$01,$02,$03,$0C,$0D,$0E,$0F
       .byte $30,$3C,$33,$00,$03,$0C,$0F,$3F,$15,$16,$19,$1A,$25,$26,$29,$2A
       .byte $00,$F0,$00,$00
