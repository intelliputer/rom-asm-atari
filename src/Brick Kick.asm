; Disassembly of roms/Brick Kick.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Brick Kick.bin
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
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM1   =  $13
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
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXP1FB  =  $33
CXPPMM  =  $37
INPT0   =  $38
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       LDA    #$06    
       STA    $84     
       ASL            
       STA    $EC     
       DEX            
       STX    $82     
       STX    $CB     
       JSR    LFBF4   
       LDA    #$CA    
       STA    $CC     
       LSR            
       STA    $B6     
       LDA    #$ED    
       STA    $CE     
       LDA    #$AA    
       STA    $D0     
       LDX    #$04    
LF02C: STA    $C0,X   
       DEX            
       BNE    LF02C   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       STX    $E7     
       STX    $98     
       JMP    LF7D6   
LF040: LDA    #$30    
       STA    WSYNC   
       STA    NUSIZ1  
       STA    NUSIZ0  
       LDX    #$00    
       LDY    #$C0    
       LDA    $80     
       AND    #$80    
       BPL    LF056   
       LDX    #$06    
       NOP            
       NOP            
LF056: DEX            
       BPL    LF056   
       STA    RESM1   
       STY    HMM1    
       LDA    $80     
       NOP            
       NOP            
       LSR            
       LSR            
LF063: AND    #$03    
       TAX            
       BNE    LF069   
       INX            
LF069: LDA    $AC,X   
       BPL    LF071   
       INX            
       TXA            
       BPL    LF063   
LF071: AND    #$78    
       CLC            
       ADC    #$01    
       STA    $B2     
       LDA    $AC,X   
       AND    #$07    
       ASL            
       ASL            
       ASL            
       STA    $B7     
       LDX    #$02    
LF083: LDA    #$01    
       CLC            
       ADC    $B0,X   
       LDY    #$02    
       SEC            
LF08B: INY            
       SBC    #$0F    
       BCS    LF08B   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    WSYNC   
LF09A: DEY            
       BPL    LF09A   
       STA    RESP0,X 
       STA    HMP0,X  
       DEX            
       BPL    LF083   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $81     
       ASL            
       ADC    $81     
       AND    #$0F    
       TAY            
       LDA    $DB84,Y 
       STA    $D4     
       LDY    $F0     
       STY    COLUPF  
       LDX    #$05    
LF0BB: LDA    INTIM   
       BNE    LF0BB   
LF0C0: STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       LDA    #$80    
       STA    PF0     
       LDY    #$30    
       STY    CTRLPF  
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       STA    PF0     
       LDY    $F1     
       STY    COLUBK  
       LDY    #$08    
       STY    $C9     
       STA    PF1     
       LDA    #$01    
       DEX            
       STA    PF2     
       BNE    LF0C0   
       STA    WSYNC   
LF0E9: LDA    #$80    
       STA    PF0     
       LDY    #$00    
       STY    ENAM0   
       STY    ENAM1   
       STY    PF1     
       STY    PF2     
       BIT    $9A     
       BMI    LF101   
       LDA    #$02    
       CPX    $D4     
       BEQ    LF103   
LF101: LDA    #$00    
LF103: STA    $D6     
       STY    PF0     
       STY    PF1     
       LDA    #$02    
       CPX    $B7     
       BEQ    LF111   
       LDA    #$00    
LF111: LDY    #$01    
       STY    PF2     
       STA    $D7     
       DEC    $C9     
       BPL    LF11E   
       JMP    $D18B   
LF11E: STA    WSYNC   
LF120: LDA    #$80    
       STA    PF0     
       LDY    $C9     
       LDA.wy $0088,Y 
       STA    PF1     
       LDA.wy $0090,Y 
       STA    PF2     
       LDA.wy $009C,Y 
       STA    PF0     
       LDA.wy $00A4,Y 
       LDY    $D7     
       STY    ENAM0   
       SEC            
       STA    PF1     
       INX            
       TXA            
       SBC    $D8     
       CMP    #$09    
       LDY    #$01    
       STY    PF2     
       BCS    LF150   
       TAY            
       LDA    ($DD),Y 
       STA    GRP0    
LF150: STA    WSYNC   
       LDA    #$80    
       STA    PF0     
       LDY    $C9     
       LDA.wy $0088,Y 
       STA    PF1     
       LDA.wy $0090,Y 
       STA    PF2     
       LDA.wy $009C,Y 
       STA    PF0     
       LDA.wy $00A4,Y 
       LDY    $D6     
       STY    ENAM1   
       SEC            
       STA    PF1     
       TXA            
       SBC    $D9     
       CMP    #$09    
       LDY    #$01    
       STY    PF2     
       BCS    LF181   
       TAY            
       LDA    ($DF),Y 
       STA    GRP1    
LF181: TXA            
       AND    #$07    
       STA    WSYNC   
       BNE    LF120   
       JMP    $D0E9   
LF18B: LDX    #$07    
LF18D: LDA    #$80    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       INC    INPT0,X 
       INC    INPT0,X 
       INC    INPT0,X 
       STA    PF0     
       STA    PF1     
       INC    INPT0,X 
       INC    INPT0,X 
       LDA    #$01    
       STA    PF2     
       DEX            
       STA    WSYNC   
       BNE    LF18D   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$46    
       STA    TIM64T  
       LDY    #$00    
       LDX    $98     
       JSR    LFC68   
       LDX    #$06    
LF1C8: STA    WSYNC   
       LDA    #$02    
       STA    CTRLPF  
       LDA    $D2     
       STA    PF0     
       LDA    $D3     
       STA    PF1     
       LDA    $D4     
       STA    PF2     
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA    PF0     
       NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       DEX            
       BNE    LF1C8   
       STA    WSYNC   
       STX    CTRLPF  
       STX    COLUPF  
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$03    
       LDY    #$00    
       STY    REFP1   
       STA    WSYNC   
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       JSR    LF483   
       LDA    $82     
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$07    
       STA    WSYNC   
LF218: DEX            
       BNE    LF218   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       LDY    #$04    
       LDA    #$6C    
       STA    $D2     
       JSR    LF3EE   
       STA    WSYNC   
       LDA    #$13    
       STA    $D5     
       LDA    #$1A    
       STA    $D7     
       LDA    #$21    
       STA    $D9     
       LDA    #$28    
       STA    $DB     
       LDA    #$2F    
       STA    $DD     
       LDA    #$A0    
       STA    WSYNC   
       STA    COLUBK  
       JSR    LF44B   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       JMP    LF48E   
LF25F: .byte $4C,$62,$D2
LF262: LDY    #$00    
       JSR    LFF43   
       JSR    $D35C   
       INC    $EE     
       LDA    $EE     
       EOR    #$80    
       STA    $EE     
       BMI    LF287   
       CMP    #$4D    
       BCC    LF27C   
       LDA    #$4D    
       STA    $EE     
LF27C: LDX    #$00    
       JSR    LF9FF   
       JSR    LF9FF   
       JMP    $D7BA   
LF287: LDX    #$03    
LF289: DEX            
       BMI    LF2DF   
       LDA    $EA     
       SBC    $B3,X   
       BCS    LF294   
       EOR    #$FF    
LF294: CMP    #$02    
       BCS    LF289   
       LDA    $EB     
       SBC    $B8,X   
       BCS    LF2A0   
       EOR    #$FF    
LF2A0: CMP    #$02    
       BCS    LF289   
       LDA    $AC     
       ORA    #$28    
       STA    $BD,X   
       ASL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
       AND    #$02    
       LDA    #$00    
       LDA    $EA     
       CLC            
       ADC    $DB7C,Y 
       CMP    #$78    
       BCS    LF2D6   
       CMP    #$10    
       BCC    LF2D6   
       STA    $B3,X   
       LDA    #$00    
       LDA    $EB     
       CLC            
       ADC    $DB7A,Y 
       BMI    LF2D6   
       CMP    #$39    
       BCS    LF2D6   
       STA    $B8,X   
       BPL    LF2DC   
LF2D6: LDA    $BD,X   
       ORA    #$00    
       STA    $BD,X   
LF2DC: JMP    $D289   
LF2DF: LDA    CXP1FB  
       BMI    LF2F4   
       LDA    $AC     
       BMI    LF2FE   
       LDA    $EA     
       CMP    #$11    
       BCC    LF308   
       CMP    #$78    
       BCS    LF308   
LF2F1: JMP    $D5CD   
LF2F4: LDA    $C0     
       CMP    #$08    
       BCS    LF2FC   
       INC    $C0     
LF2FC: BNE    LF308   
LF2FE: LDA    $EB     
       CMP    #$00    
       BEQ    LF308   
       CMP    #$38    
       BCC    LF2F1   
LF308: LDA    $AD     
       ORA    $AE     
       ORA    $AF     
       BMI    LF318   
       LDA    $EE     
       AND    #$0F    
       CMP    #$08    
       BCC    LF32D   
LF318: JSR    $D35C   
       LDX    #$00    
       JSR    $D375   
       LDA    $9B     
       LDY    $C9     
       ORA.wy $0000,Y 
       STA.wy $0000,Y 
       JSR    $D35C   
LF32D: LDA    $EE     
       LDY    #$00    
       STY    $EE     
       AND    #$0F    
       CMP    #$08    
       BCC    LF359   
       LDY    #$02    
       LDX    #$03    
LF33D: DEX            
       BMI    LF34D   
       LDA    $BD,X   
       AND    #$20    
       BEQ    LF33D   
       EOR    $BD,X   
       STA    $BD,X   
       INY            
       BNE    LF33D   
LF34D: CPY    #$03    
       BCC    LF359   
       JSR    LFC45   
       LDY    #$03    
       JSR    LFF43   
LF359: JMP    $D7BA   
LF35C: LDA    $EA     
       LDY    $B1     
       STY    $EA     
       STA    $B1     
       LDA    $EB     
       LDY    $B6     
       STY    $EB     
       STA    $B6     
       LDA    $AC     
       LDY    $BB     
       STY    $AC     
       STA    $BB     
       RTS            

LF375: LDA    $BB     
       AND    #$C0    
       ASL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
       LDA    $B6     
       CLC            
       ADC    $DB7E,Y 
       LSR            
       LSR            
       LSR            
       AND    #$07    
       STA    $C9     
       LDA    $B1     
       CLC            
       ADC    $DB80,Y 
       AND    #$F8    
       LDY    #$0E    
LF396: DEY            
       BMI    LF3BE   
       CMP    $DB50,Y 
       BNE    LF396   
       ORA    $C9     
       STA    $B2     
       LDX    #$03    
LF3A4: DEX            
       BMI    LF3AF   
       LDA    $AD,X   
       BPL    LF3A4   
       LDA    $B2     
       STA    $AD,X   
LF3AF: LDA    $DB5E,Y 
       STA    $9B     
       LDA    $DB6C,Y 
       SEC            
       SBC    $C9     
       TAY            
       STY    $C9     
       RTS            

LF3BE: LDA    #$00    
       STA    $9B     
       RTS            

LF3C3: .byte $85,$9B,$60,$97,$97,$A3,$A3,$AB,$AB,$AB,$AB
LF3CE: .byte $0D,$0F,$0D,$12,$17,$12,$1C,$1C,$0D,$0F,$0D,$12,$17,$12,$1C,$1C
       .byte $0D,$0C,$0B,$0C,$0B,$0D,$0C,$0D,$0C,$0F,$0D,$0F,$0D,$0F,$0D,$0D
LF3EE: LDX    #$08    
       LDA    #$00    
       STA    $E1     
       BEQ    LF422   
LF3F6: LDA.wy $00CC,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       BEQ    LF402   
       INC    $E1     
LF402: LDA    $E1     
       BNE    LF408   
       LDX    #$0A    
LF408: LDA    LFEF6,X 
       LDX    $E2     
       STA    $D5,X   
       DEX            
       DEX            
       CPX    #$04    
       BNE    LF419   
       LDA    #$00    
       BEQ    LF41E   
LF419: TXA            
       BNE    LF422   
       LDA    $D2     
LF41E: STA    WSYNC   
       STA    COLUBK  
LF422: STX    $E2     
       LDA.wy $00CC,Y 
       AND    #$0F    
       TAX            
       BEQ    LF42E   
       INC    $E1     
LF42E: LDA    $E1     
       BNE    LF434   
       LDX    #$0A    
LF434: LDA    LFEF6,X 
       LDX    $E2     
       STA    $D5,X   
       DEX            
       DEX            
       STX    $E2     
       DEY            
       DEY            
       BPL    LF3F6   
       LDA    $E1     
       BNE    LF44B   
       LDA    #$AC    
       STA    $D5     
LF44B: LDA    #$FE    
       LDX    #$09    
LF44F: STA    $D5,X   
       DEX            
       DEX            
       BPL    LF44F   
       LDA    #$06    
       STA    $E1     
LF459: LDY    $E1     
       LDA    #$00    
       STA    GRP0    
       STA    GRP0    
       STA    WSYNC   
       LDA    ($DD),Y 
       STA    GRP1    
       LDA    ($DB),Y 
       STA    GRP0    
       LDA    ($D9),Y 
       STA    $E2     
       LDA    ($D7),Y 
       TAX            
       LDA    ($D5),Y 
       TAY            
       LDA    $E2     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $E1     
       BPL    LF459   
LF483: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       RTS            

LF48E: LDX    $82     
       BNE    LF49B   
       JSR    LFBAD   
       LDA    $E5     
       BPL    LF49E   
       DEC    $E5     
LF49B: JMP    LF770   
LF49E: LDA    $E9     
       CMP    #$19    
       BEQ    LF4C7   
       LDA    $E4     
       BEQ    LF500   
       LDA    $80     
       ROR            
       BCC    LF500   
       DEC    $E4     
       BNE    LF500   
       BIT    $9A     
       LDA    $9A     
       BPL    LF4D2   
       BVC    LF4C3   
       AND    #$BF    
       STA    $9A     
       LDA    #$20    
       STA    $E4     
       BPL    LF500   
LF4C3: AND    #$7C    
       STA    $9A     
LF4C7: LDX    #$02    
LF4C9: LDA    #$C0    
       AND    $BD,X   
       STA    $BD,X   
       DEX            
       BPL    LF4C9   
LF4D2: LDA    $E7     
       AND    #$40    
       BEQ    LF4F8   
       EOR    $E7     
       STA    $E7     
       JSR    LFC21   
       LDA    $98     
       BEQ    LF4ED   
       DEC    $98     
       LDA    #$08    
       ORA    $E7     
       STA    $E7     
       BNE    LF500   
LF4ED: STA    $E7     
       LDA    #$5F    
       STA    $82     
       STA    $B6     
LF4F5: JMP    LF7C3   
LF4F8: LDA    $E7     
       BPL    LF500   
       AND    #$7F    
       STA    $E7     
LF500: LDA    $E7     
       BPL    LF514   
       LDA    $99     
       TAY            
       DEY            
       LDX    #$04    
LF50A: STA    $C0,X   
       DEX            
       STY    $C0,X   
       DEX            
       BNE    LF50A   
       BEQ    LF4F5   
LF514: JSR    LFC8B   
       BNE    LF538   
       LDA    $87     
       AND    #$1F    
       BNE    LF524   
       LDY    #$06    
       JSR    LFC45   
LF524: LDY    #$01    
       JSR    LFF43   
       LDA    $E7     
       EOR    #$02    
       STA    $E7     
       JSR    $D55E   
       LDA    #$12    
       STA    $EC     
       BNE    LF570   
LF538: BIT    CXM1P   
       BVC    LF570   
       BIT    $EE     
       BMI    LF542   
       BVS    LF570   
LF542: JSR    $D55E   
       LDY    #$A0    
       LDA    $E7     
       AND    #$20    
       BEQ    LF54F   
       LDY    #$50    
LF54F: STY    $E4     
       LDY    #$05    
       JSR    LFC45   
       LDY    #$02    
       JSR    LFF43   
       JMP    $D5EB   
LF55E: LDX    #$02    
LF560: LDA    #$08    
       ORA    $BD,X   
       STA    $BD,X   
       DEX            
       BPL    LF560   
       LDA    #$C0    
       ORA    $9A     
       STA    $9A     
       RTS            

LF570: LDX    #$00    
       LDA    $80     
       AND    #$04    
       BNE    LF5C6   
       LDA    CXPPMM  
       BPL    LF5C6   
       LDA    $80     
       AND    #$03    
       TAX            
       BNE    LF584   
       INX            
LF584: BIT    $EE     
       BMI    LF58A   
       BVS    LF5C6   
LF58A: LDA    $9A     
       BPL    LF5B3   
       LDA    $BC,X   
       AND    #$20    
       BNE    LF5C6   
       LDA    $BC,X   
       ORA    #$38    
       STA    $BC,X   
       LDA    $9A     
       AND    #$03    
       TAY            
       JSR    LFC45   
       CPY    #$03    
       BEQ    LF5A8   
       INC    $9A     
LF5A8: LDY    #$03    
       JSR    LFF43   
       LDA    #$9F    
       STA    $E5     
       BNE    LF5C6   
LF5B3: LDA    $BC,X   
       AND    #$28    
       BNE    LF5C6   
       LDA    #$C0    
       ORA    $E7     
       STA    $E7     
       LDA    #$3F    
       STA    $E4     
       JMP    $D7BA   
LF5C6: BIT    $EE     
       BVC    LF5D2   
       JMP    $D262   
LF5CD: LDX    #$00    
       JSR    LFBAD   
LF5D2: LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$0F    
       STA    $ED     
       BEQ    LF5EB   
       LDA    #$01    
       STA    $C5     
       LDA    $81     
       BPL    LF5EB   
       LDA    #$70    
       STA    $81     
LF5EB: LDX    #$0F    
LF5ED: LDA    $88,X   
       ORA    $9C,X   
       CMP    #$FF    
       BEQ    LF617   
       DEX            
       BPL    LF5ED   
       TAY            
       BEQ    LF601   
       LDA    $C0     
       CMP    #$07    
       BCS    LF617   
LF601: LDA    $98     
       CMP    #$09    
       BEQ    LF609   
       INC    $98     
LF609: LDA    $99     
       CMP    #$0E    
       BEQ    LF611   
       INC    $99     
LF611: JSR    LFC10   
LF614: JMP    $D7BA   
LF617: LDA    $ED     
       STA    $D2     
       BNE    LF620   
LF61D: JMP    $D665   
LF620: LDA    $85     
       ORA    $86     
       BNE    LF61D   
       LDA    $D2     
       LDY    $BB     
       BPL    LF637   
       AND    #$0C    
       BNE    LF63D   
       LDA    $D2     
LF632: LSR            
       BCC    LF65A   
       BCS    LF656   
LF637: AND    #$03    
       BNE    LF632   
       LDA    $D2     
LF63D: LSR            
       LSR            
       LSR            
       BCC    LF64C   
       LDA    #$01    
       ORA    $BB     
       STA    $BB     
       LDY    #$01    
       BNE    LF65C   
LF64C: LDA    #$FE    
       AND    $BB     
       STA    $BB     
       LDY    #$00    
       BEQ    LF65C   
LF656: LDY    #$03    
       BNE    LF65C   
LF65A: LDY    #$02    
LF65C: LDA    $BB     
       AND    #$3F    
       ORA    LFE63,Y 
       STA    $BB     
LF665: JSR    $D68C   
       LDA    $9B     
       BNE    LF614   
       CLC            
       LDY    $BB     
       BMI    LF67C   
       LDA    $B6     
       ADC    #$02    
       AND    #$F8    
       STA    $B6     
       JMP    $D684   
LF67C: LDA    $B1     
       ADC    #$02    
       AND    #$F8    
       STA    $B1     
LF684: LDX    #$00    
       JSR    LF9EE   
       JMP    $D7BA   
LF68C: LDA    $85     
       ORA    $86     
       BEQ    LF695   
       JMP    $D72B   
LF695: LDA    $BB     
       AND    #$C0    
       BIT    $EE     
       BVS    LF69F   
       STA    $AC     
LF69F: ASL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
       LDA    $B6     
       CLC            
       ADC    $D75A,Y 
       BPL    LF6AF   
       LDA    #$00    
LF6AF: CMP    #$38    
       BCC    LF6B5   
       LDA    #$38    
LF6B5: BIT    $EE     
       BVS    LF6BB   
       STA    $EB     
LF6BB: LSR            
       LSR            
       LSR            
       AND    #$07    
       STA    $C9     
       LDA    $B1     
       CLC            
       ADC    $D75C,Y 
       CMP    #$78    
       BCC    LF6CE   
       LDA    #$78    
LF6CE: CMP    #$10    
       BCS    LF6D4   
       LDA    #$10    
LF6D4: BIT    $EE     
       BVS    LF6DA   
       STA    $EA     
LF6DA: AND    #$F8    
       LDY    #$0E    
LF6DE: DEY            
       BEQ    LF6E6   
       CMP    $D730,Y 
       BNE    LF6DE   
LF6E6: ORA    $C9     
       LDX    #$02    
LF6EA: CMP    $AD,X   
       BEQ    LF6F1   
       DEX            
       BPL    LF6EA   
LF6F1: LDA    $D73E,Y 
       STA    $9B     
       LDA    $D74C,Y 
       SEC            
       SBC    $C9     
       TAY            
       STY    $C9     
       LDA    $9B     
       AND.wy $0000,Y 
       BEQ    LF72B   
       BIT    $EE     
       BVS    LF72F   
       BIT    INPT4   
       BMI    LF72F   
       EOR    #$FF    
       LDY    $C9     
       AND.wy $0000,Y 
       STA.wy $0000,Y 
       LDA    #$C0    
       STA    $EE     
       DEX            
       INX            
       BMI    LF726   
       LDA    $AD,X   
       ORA    #$80    
       STA    $AD,X   
LF726: LDY    #$00    
       JMP    LFF43   
LF72B: LDA    #$00    
       STA    $9B     
LF72F: RTS            

LF730: .byte $10,$18,$20,$28,$30,$38,$40,$48,$50,$58,$60,$68,$70,$78
LF73E: .byte $C0,$30,$0C,$03,$03,$0C,$30,$C0,$30,$C0,$C0,$30,$0C,$03
LF74C: .byte $8F,$8F,$8F,$8F,$97,$97,$97,$97,$A3,$A3,$AB,$AB,$AB,$AB
LF75A: .byte $00,$00
LF75C: .byte $08,$F8,$00,$00,$A3,$A3,$AB,$AB,$AB,$AB,$00,$00,$08,$F8,$00,$00
       .byte $8F,$97,$97,$97
LF770: LDA    $9A     
       AND    #$03    
       CMP    #$03    
       BCC    LF78E   
       LDA    #$00    
       STA    $BF     
       LDX    #$23    
LF77E: LDA    $88,X   
LF780: BEQ    LF791   
LF782: ASL            
       ASL            
       BCC    LF780   
       INC    $BF     
       LDY    $BF     
       CPY    #$14    
       BCC    LF782   
LF78E: JMP    LF7C3   
LF791: CPX    #$14    
       BNE    LF797   
       LDX    #$10    
LF797: DEX            
       BPL    LF77E   
       LDA    $80     
       AND    #$0F    
       TAY            
       LDA    LFD29,Y 
       STA    $AD     
       LDA    LFD2A,Y 
       STA    $AE     
       LDA    LFD2B,Y 
       STA    $AF     
       JMP    $D609   
LF7B1: .byte $EA,$4C,$B8,$F7,$EA,$EA,$EA,$68,$68
LF7BA: LDA    $BB     
       ROR            
       BCC    LF7C3   
       LDA    #$08    
       STA    REFP1   
LF7C3: LDX    #$00    
       STX    AUDV0   
       STX    AUDV1   
       JSR    LFF55   
       LDX    #$01    
       JSR    LFF94   
LF7D1: LDA    INTIM   
       BNE    LF7D1   
LF7D6: LDA    #$03    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    CXCLR   
       LDA    $80     
       LSR            
       LSR            
       LSR            
       TAY            
       LSR            
       AND    #$03    
       TAX            
       LDA    LFDAB,X 
       STA    $DD     
       LDA    $E7     
       ROL            
       BPL    LF800   
       LDA    $E4     
       LSR            
       LSR            
       AND    #$0F    
       TAX            
       LDA    LFDFA,X 
       BNE    LF80E   
LF800: TYA            
       AND    #$03    
       TAX            
       LDA    LFDC2,X 
       LDX    $E7     
       BPL    LF80E   
       LDA    LFDC2   
LF80E: STA    $DF     
       STA    WSYNC   
       INC    $80     
       BNE    LF83D   
       INC    $81     
       BEQ    LF839   
       DEC    $EC     
       BNE    LF835   
       LDY    #$12    
       LDA    $E7     
       EOR    #$02    
       STA    $E7     
       AND    #$02    
       BEQ    LF833   
       LDY    #$03    
       LDA    $E7     
       AND    #$20    
       BEQ    LF833   
       DEY            
LF833: STY    $EC     
LF835: LDA    $82     
       BEQ    LF83D   
LF839: INC    $82     
       BEQ    LF839   
LF83D: STA    WSYNC   
       LDA    #$FD    
       STA    $DE     
       STA    $E0     
       LDA    $B6     
       CLC            
       ADC    #$00    
       STA    $D9     
       LDX    #$07    
       STX    $DB     
       DEX            
       STX    $DC     
       LDX    #$FF    
       LDA    #$08    
       AND    SWCHB   
       BNE    LF85E   
       LDX    #$0F    
LF85E: TXA            
       LDX    $82     
       BEQ    LF865   
       EOR    #$08    
LF865: STA    $EF     
       LDA    #$07    
       STA    $F0     
       LDA    #$08    
       STA    $F1     
       LDA    $AF     
       STA    $F4     
       LDA    #$40    
       STA    TIM64T  
       STA    WSYNC   
       LDX    #$00    
       STX    VSYNC   
       LDA    $9B     
       STA    $F5     
       LDA    $82     
       BEQ    LF88A   
       LDA    INPT4   
       BPL    LF890   
LF88A: LDA    SWCHB   
       ROR            
       BCS    LF8C1   
LF890: LDA    #$FF    
       STA    $CB     
       JSR    LFC7D   
       STA    $87     
       STA    $82     
       LDA    #$08    
       STA    $E7     
       LDA    #$0B    
       LDX    $84     
       CPX    #$08    
       BPL    LF8A9   
       LDA    #$09    
LF8A9: STA    $C0     
       JSR    LFBF4   
       JMP    $D8C1   
LF8B1: .byte $EA,$85,$E6,$0A,$10,$52,$EA,$EA,$EA,$20,$F4,$FB,$E6,$AC,$D0,$48
LF8C1: ROR            
       BCS    LF909   
       LDA    $83     
       BNE    LF8FF   
LF8C8: INC    $84     
       LDA    #$60    
       STA    $B6     
       LDA    #$10    
       STA    $E7     
       JMP    $D8D8   
LF8D5: .byte $EA,$85,$E6
LF8D8: JSR    LFC7D   
       STA    AUDV0   
       STA    AUDV1   
       STA    $E8     
       LDA    #$01    
       STA    $82     
       STA    $80     
       LDA    $84     
       CMP    #$12    
       BNE    LF8EF   
       LDA    #$02    
LF8EF: STA    $84     
       LSR            
       SEC            
       SBC    #$02    
       AND    #$07    
       BNE    LF8FB   
       LDA    #$08    
LF8FB: STA    $CC     
       STA    $CD     
LF8FF: INC    $83     
       LDA    $83     
       AND    #$07    
       BNE    LF90D   
       BEQ    LF8C8   
LF909: LDY    #$00    
       STY    $83     
LF90D: LDA    #$DF    
       AND    $E7     
       STA    $E7     
       LDA    #$80    
       JMP    $D919   
LF918: .byte $EA
LF919: LSR            
       LDX    #$20    
       AND    SWCHB   
       BNE    LF923   
       LDX    #$00    
LF923: TXA            
       ORA    $E7     
       STA    $E7     
       LDA    $80     
       AND    #$03    
       BNE    LF930   
       LDA    #$01    
LF930: TAX            
       TAY            
       LDA    $9A     
       BPL    LF93D   
       LDY    #$04    
       AND    #$40    
       BNE    LF93D   
       INY            
LF93D: STY    $F2     
       INX            
       LDA    $BB,X   
       AND    #$08    
       BEQ    LF94C   
       LDA    #$C6    
       STA    $DD     
       BNE    LF950   
LF94C: LDA    $E5     
       BMI    LF957   
LF950: LDA    $E7     
       BMI    LF957   
       JSR    $D9BF   
LF957: LDA    $B1,X   
       STA    $B0     
       LDA    $BB,X   
       LDY    #$65    
       AND    #$10    
       BNE    LF965   
       LDY    $B6,X   
LF965: STY    $D8     
       LDA    #$FF    
       STA    $D3     
       LDA    #$2B    
       STA    $D2     
       LDY    #$02    
       LDA    $EF     
       BMI    LF979   
       LDA    #$36    
       STA    $D2     
LF979: LDA    $98     
       ROL            
       ROL            
       ROL            
       ROL            
       EOR    ($D2),Y 
       EOR    $82     
       EOR    $87     
       AND    #$F7    
       STA.wy $00F0,Y 
       DEY            
       BPL    LF979   
       STA    WSYNC   
       LDA    $F1     
       STA    COLUBK  
       LDA    #$01    
       STA    VBLANK  
       LDA    #$3F    
       STA    COLUP0  
       LDA    #$FD    
       STA    $E0     
       LDA    $F2     
       BIT    $EE     
       BVC    LF9B1   
       BMI    LF9B1   
       LDA    #$D9    
       STA    $E0     
       LDA    #$B6    
       STA    $DF     
       LDA    $F0     
LF9B1: STA    COLUP1  
       JMP    LF040   
LF9B6: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
LF9BF: LDA    $81     
       BEQ    LF9DD   
       AND    #$0F    
       BNE    LF9DD   
       INC    $C5     
       AND    #$7F    
       BNE    LF9DD   
       LDA    $99     
       CMP    #$0E    
       BCS    LF9DD   
       INC    $99     
       LDA    $C0     
       CMP    #$02    
       BCC    LF9DD   
       LDA    #$00    
LF9DD: LDA    $BB,X   
       AND    #$18    
       BEQ    LFA26   
       RTS            

LF9E4: BEQ    LFA26   
       RTS            

LF9E7: .byte $29,$3F,$19,$63,$FE,$95,$BB
LF9EE: LDA    $C0,X   
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $C0,X   
       STA    $C0,X   
       BCC    LF9E4   
       JMP    LF9FF   
LF9FE: .byte $EA
LF9FF: LDY    #$00    
       LDA    $BB,X   
       ROL            
       BPL    LFA09   
       DEY            
       BMI    LFA0A   
LFA09: INY            
LFA0A: TYA            
       BCS    LFA1A   
       ADC    $B1,X   
       CMP    #$0F    
       BEQ    LFA19   
       CMP    #$79    
       BEQ    LFA19   
       STA    $B1,X   
LFA19: RTS            

LFA1A: CLC            
       ADC    $B6,X   
       BMI    LFA25   
       CMP    #$39    
       BEQ    LFA25   
       STA    $B6,X   
LFA25: RTS            

LFA26: JSR    LFBAD   
       LDA    $BB,X   
       BMI    LFA4B   
       LDA    $B1,X   
       CMP    #$10    
       BNE    LFA3E   
LFA33: LDA    $80     
       AND    #$C0    
       EOR    $BB,X   
       STA    $BB,X   
       JMP    $DA53   
LFA3E: CMP    #$78    
       BNE    LFA53   
LFA42: LDA    $BB,X   
       EOR    #$40    
       STA    $BB,X   
       JMP    $DA53   
LFA4B: LDA    $B6,X   
       BEQ    LFA33   
       CMP    #$38    
       BEQ    LFA42   
LFA53: LDA    $85     
       ORA    $86     
       BNE    LFA65   
       LDA    $80     
       AND    #$0F    
       BNE    LFA6F   
       LDA    $BB,X   
       EOR    #$80    
       STA    $BB,X   
LFA65: JSR    $DAC1   
       LDA    $9B     
       BNE    LFAB0   
       JMP    LF9EE   
LFA6F: LDA    $B1,X   
       CMP    $B1     
       BNE    LFA8B   
       LDA    $B6,X   
       CMP    $B6     
       BCC    LFA82   
       LDA    #$C0    
       ORA    $BB,X   
       JMP    $DAA3   
LFA82: LDA    #$BF    
       AND    $BB,X   
       ORA    #$80    
       JMP    $DAA3   
LFA8B: LDA    $B6,X   
       CMP    $B6     
       BNE    LFA65   
       LDA    $B1,X   
       CMP    $B1     
       BCC    LFA9F   
       LDA    $BB,X   
       AND    #$7F    
       ORA    #$40    
       BNE    LFAA3   
LFA9F: LDA    $BB,X   
       AND    #$3F    
LFAA3: STA    $BB,X   
       BIT    $EE     
       BVC    LFAAD   
       EOR    #$40    
       STA    $BB,X   
LFAAD: JMP    $DA65   
LFAB0: LDA    $BB,X   
       AND    #$18    
       BEQ    LFAC0   
       LDY    #$04    
       JSR    LFC45   
       LDY    #$03    
       JMP    LFF43   
LFAC0: RTS            

LFAC1: LDA    $85     
       ORA    $86     
       BNE    LFB38   
       LDA    $BB,X   
       ASL            
       ROL            
       ROL            
       AND    #$03    
       TAY            
       LDA    $B6,X   
       CLC            
       ADC    LFB7A,Y 
       BPL    LFAD9   
       LDA    #$00    
LFAD9: CMP    #$38    
       BCC    LFADF   
       LDA    #$38    
LFADF: LSR            
       LSR            
       LSR            
       AND    #$07    
       STA    $C9     
       LDA    $B1,X   
       CLC            
       ADC    LFB7C,Y 
       CMP    #$78    
       BCC    LFAF2   
       LDA    #$78    
LFAF2: CMP    #$10    
       BCS    LFAF8   
       LDA    #$10    
LFAF8: AND    #$F8    
       LDY    #$0E    
LFAFC: DEY            
       BMI    LFB38   
       CMP    LFB50,Y 
       BNE    LFAFC   
       ORA    $C9     
       CMP    $AD     
       BEQ    LFB3C   
       CMP    $AE     
       BEQ    LFB3C   
       CMP    $AF     
       BEQ    LFB3C   
       LDA    LFB5E,Y 
       STA    $9B     
       LDA    LFB6C,Y 
       SEC            
       SBC    $C9     
       TAY            
       STY    $C9     
       LDA    $9B     
       AND.wy $0000,Y 
       BEQ    LFB38   
       LDA    $80     
       AND    #$7C    
       BNE    LFB37   
       LDA    $9B     
       EOR    #$FF    
       AND.wy $0000,Y 
       STA.wy $0000,Y 
LFB37: RTS            

LFB38: LDA    #$00    
       BEQ    LFB3E   
LFB3C: LDA    #$FF    
LFB3E: STA    $9B     
       RTS            

LFB41: .byte $50,$58,$60,$68,$70,$78,$C0,$30,$0C,$03,$03,$0C,$30,$C0,$30
LFB50: .byte $10,$18,$20,$28,$30,$38,$40,$48,$50,$58,$60,$68,$70,$78
LFB5E: .byte $C0,$30,$0C,$03,$03,$0C,$30,$C0,$30,$C0,$C0,$30,$0C,$03
LFB6C: .byte $8F,$8F,$8F,$8F,$97,$97,$97,$97,$A3,$A3,$AB,$AB,$AB,$AB
LFB7A: .byte $00,$00
LFB7C: .byte $08,$F8
LFB7E: .byte $00,$00
LFB80: .byte $00,$02,$00,$00
LFB84: .byte $20,$00,$38,$40,$10,$40,$30,$18,$40,$08,$28,$40,$20,$38,$40,$C8
       .byte $C8,$B9,$13,$FE,$30,$C1,$A0,$00,$4C,$44,$FB,$A2,$13,$B5,$88,$B4
       .byte $9C,$95,$9C,$94,$88,$CA,$10,$F5,$60
LFBAD: LDY    #$00    
       LDA    $B6,X   
       BEQ    LFBBB   
LFBB3: INY            
       SEC            
       SBC    #$08    
       BEQ    LFBBB   
       BPL    LFBB3   
LFBBB: AND    #$07    
       STA    $85     
       LDA    $B1,X   
       AND    #$07    
       STA    $86     
       RTS            

LFBC6: .byte $EA,$4A,$08,$B5,$B1,$4A,$4A,$28,$90,$03,$18,$69,$28,$85,$87,$0A
       .byte $0A,$66,$C9,$05,$C9,$26,$C9,$85,$EE,$60,$A5,$CB,$0A,$45,$CB,$0A
       .byte $0A
LFBE7: LDA    #$FF    
       AND    $97     
       STA    $97     
       LDA    #$FF    
       AND    $90     
       STA    $90     
       RTS            

LFBF4: LDA    #$1E    
       STA    $AD     
       LDA    #$49    
       STA    $AE     
       LDA    #$76    
       STA    $AF     
       LDA    #$03    
       STA    $98     
       LDA    $84     
       SEC            
       SBC    #$02    
       AND    #$06    
       CLC            
       ADC    #$04    
       STA    $99     
LFC10: LDX    #$0F    
       LDA    #$FF    
LFC14: STA    $88,X   
       STA    $9C,X   
       DEX            
       BPL    LFC14   
       LDX    #$3C    
       STX    $9A     
       STX    $E4     
LFC21: LDA    $E7     
       ORA    #$80    
       STA    $E7     
       LDX    #$3C    
       STX    $E4     
       LDX    #$04    
       LDA    #$48    
LFC2F: STA    $B1,X   
       LDY    #$00    
       STY    $B6,X   
       STY    $BB,X   
       DEX            
       BPL    LFC2F   
       LDA    #$38    
       STA    $B6     
       LDA    #$C0    
       STA    $BB     
       JMP    LFBE7   
LFC45: NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STX    $E1     
       LDX    #$00    
       SED            
       CLC            
       LDA    $CC,X   
       ADC    LFF06,Y 
       STA    $CC,X   
       LDA    $CE,X   
       ADC    LFF0C,Y 
       STA    $CE,X   
       LDA    $D0,X   
       ADC    #$00    
       STA    $D0,X   
       CLD            
       LDX    $E1     
       RTS            

LFC68: TXA            
       BEQ    LFC6D   
       LDA    #$40    
LFC6D: STA.wy $00D2,Y 
       LDA    LFF1B,X 
       STA.wy $00D3,Y 
       LDA    LFEEC,X 
       STA.wy $00D4,Y 
       RTS            

LFC7D: LDA    #$00    
       LDX    #$05    
LFC81: STA    $CC,X   
       DEX            
       BPL    LFC81   
       STA    $98     
       STA    $AC     
       RTS            

LFC8B: LDX    #$02    
LFC8D: LDA    $AD,X   
       AND    #$07    
       STA    $D2,X   
       LDA    $AD,X   
       AND    #$38    
       STA    $D5,X   
       DEX            
       BPL    LFC8D   
       LDA    $D2     
       CMP    $D3     
       BNE    LFCA6   
       CMP    $D4     
       BEQ    LFCB0   
LFCA6: LDA    $D5     
       CMP    $D6     
       BNE    LFCDD   
       CMP    $D7     
       BNE    LFCDD   
LFCB0: LDA    $AD     
       CMP    $AE     
       BCS    LFCC2   
       CMP    $AF     
       BCC    LFCC6   
LFCBA: LDY    $AF     
       STA    $AF     
       STY    $AD     
       BNE    LFCC6   
LFCC2: CMP    $AF     
       BCC    LFCBA   
LFCC6: LDA    $AD     
       SEC            
       SBC    $AE     
       BCS    LFCD1   
       EOR    #$FF    
       ADC    #$01    
LFCD1: LDY    #$FE    
LFCD3: LDX    #$03    
LFCD5: CMP    LFD25,X 
       BEQ    LFCDE   
       DEX            
       BPL    LFCD5   
LFCDD: RTS            

LFCDE: INY            
       BEQ    LFCEE   
       LDA    $AD     
       SEC            
       SBC    $AF     
       BCS    LFCEC   
       EOR    #$FF    
       ADC    #$01    
LFCEC: BPL    LFCD3   
LFCEE: BEQ    LFCF7   
       LDY    #$00    
       STY    $87     
       LDA    #$01    
       RTS            

LFCF7: LDA    $80     
       AND    #$01    
       BNE    LFCFF   
       INC    $87     
LFCFF: BPL    LFD22   
       LDA    $80     
       AND    #$0F    
       TAY            
       LDA    LFD29,Y 
       STA    $AD     
       LDA    LFD2A,Y 
       STA    $AE     
       LDA    LFD2B,Y 
       STA    $AF     
       LDX    #$0F    
       LDA    #$00    
       STA    $87     
LFD1B: STA    $88,X   
       STA    $9C,X   
       DEX            
       BPL    LFD1B   
LFD22: LDA    #$00    
       RTS            

LFD25: .byte $01,$02,$08,$10
LFD29: .byte $14
LFD2A: .byte $72
LFD2B: .byte $31,$19,$6C,$2E,$5A,$4E,$75,$2A,$59,$46,$3D,$11,$6B,$33,$52,$1C
       .byte $0D,$0F,$0D,$0D,$08,$0A,$28,$2A,$88,$8A,$A8,$AA,$00,$40,$10,$50
       .byte $04,$44,$14,$44,$01,$41,$11,$51,$05,$45,$15,$55,$00,$80,$20,$A0
       .byte $01,$05,$11,$15,$41,$45,$51,$55,$80,$A0,$88,$A8,$82,$A2,$8A,$AA
       .byte $00,$02,$08,$0A,$20,$22,$28,$2A,$80,$82,$88,$8A,$A0,$A2,$A8,$AA
       .byte $08,$88,$28,$A8,$09,$89,$29,$A9,$80,$81,$84,$85,$90,$91,$94,$95
       .byte $18,$34,$3C,$7E,$7E,$BD,$18,$66,$00,$18,$2C,$3C,$7E,$7E,$BD,$38
       .byte $06,$00,$18,$2C,$3C,$7E,$7E,$BD,$1C,$60,$00,$FF,$DD,$99,$7E,$3C
LFDAB: .byte $8B,$94,$9D,$8B,$18,$2C,$3C,$7E,$7E,$BD,$38,$06,$00,$18,$34,$3C
       .byte $7E,$7E,$BD,$1C,$60,$00,$00
LFDC2: .byte $AF,$B8,$AF,$B8,$00,$00,$00,$00,$1C,$2A,$7F,$00,$00,$C0,$60,$30
       .byte $18,$08,$04,$02,$01,$00,$00,$00,$C0,$E0,$70,$3C,$0F,$00,$00,$60
       .byte $88,$30,$01,$71,$FF,$00,$00,$50,$88,$50,$01,$71,$FF,$00,$00,$30
       .byte $88,$60,$01,$71,$FF,$00,$00,$22
LFDFA: .byte $DF,$DF,$E7,$E7,$EF,$EF,$E7,$E7,$DF,$DF,$D7,$D7,$CF,$CF,$8B,$8B
       .byte $10,$10,$08,$00,$08,$C9,$39,$C9,$CF,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFE36: LDA    $83     
       LSR            
       AND    #$07    
       TAX            
       LDA    LFE4B,X 
       STA    AUDC1   
       ORA    #$03    
       LDX    LF3CE,Y 
       STX    AUDF1   
       STA    AUDV1   
       RTS            

LFE4B: .byte $04,$0D,$0A,$01,$05,$01,$0A,$0C,$1C,$1C,$0D,$0C,$0B,$0C,$0B,$0D
       .byte $0C,$0D,$0C,$0F,$0D,$0F,$0D,$0F
LFE63: .byte $10,$50,$90,$D0,$40,$00,$C0,$80,$40,$20,$10
LFE6E: .byte $08,$04,$02,$01,$02,$03,$05,$07,$08,$0A,$0C,$08,$0C,$03,$07,$0B
       .byte $0F,$02,$06,$0A,$0E,$01,$05,$09,$0D,$00,$04,$01,$01,$01,$01,$01
       .byte $01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$54,$55,$57,$55,$55,$99,$3C,$66
       .byte $66,$66,$66,$66,$3C,$66,$66,$7C,$60,$62,$3C,$66,$66,$3C,$66,$66
       .byte $3C,$46,$06,$3E,$66,$66,$3C,$46,$06,$0C,$06,$46,$3C,$0C,$0C,$7E
       .byte $4C,$2C,$1C,$0C,$18,$18,$08,$04,$02,$62,$7E,$60,$60,$3C,$06,$46
       .byte $7C,$46,$06,$7C,$60,$60,$7E,$18,$18,$18,$18,$78,$38,$00
LFEEC: .byte $00,$00,$00,$00,$00,$00,$01,$05,$15,$55
LFEF6: .byte $AC,$E4,$D8,$C4,$CB,$DE,$B2,$D2,$B8,$BE,$EB,$A5,$9E,$97,$90,$89
LFF06: .byte $30,$60,$90,$05,$40,$80
LFF0C: .byte $00,$00,$00,$00,$00,$00,$05,$06,$05,$04,$03,$02,$01,$00,$02
LFF1B: .byte $00,$00,$80,$A0,$A8,$AA,$AA,$AA,$AA,$AA,$10,$40,$08,$0A,$0C,$0E
       .byte $0F,$91,$3F,$4F,$7A,$5A,$FB,$84,$F7,$44,$C4,$0E,$0E,$0E,$0E,$09
       .byte $04,$0F,$00,$07,$04,$0A,$90,$F0
LFF43: LDA    LFFE9,Y 
       AND    $E8     
       BNE    LFF54   
       LDA    LFE6E,Y 
       STA    $E8     
       LDA    LFFED,Y 
       STA    $E9     
LFF54: RTS            

LFF55: LDA    $E8     
       LSR            
       BCC    LFF67   
       LDA    #$04    
       STA    $D3     
       LDA    $E9     
       AND    #$1F    
       TAY            
       EOR    #$0F    
       BCS    LFF82   
LFF67: LSR            
       BCC    LFF6E   
LFF6A: LDA    #$09    
       BNE    LFF7F   
LFF6E: LSR            
       BCC    LFF74   
       JMP    LFF6A   
LFF74: LSR            
       BCC    LFF93   
       LDY    #$05    
       STY    $D3     
       LDA    $E9     
       BNE    LFF82   
LFF7F: TAY            
       STA    $D3     
LFF82: DEC    $E9     
       BNE    LFF8B   
       LDA    #$00    
       STA    $E8     
       RTS            

LFF8B: STA    AUDV0,X 
       LDA    $D3     
       STA    AUDF0,X 
       STY    AUDC0,X 
LFF93: RTS            

LFF94: LDA    #$08    
       BIT    $E7     
       BVC    LFFA6   
       LDA    $E4     
       STA    AUDV0   
       LSR            
       STA    AUDF0   
       LDA    #$01    
       STA    AUDC0   
       RTS            

LFFA6: BEQ    LFFD3   
       DEC    $E4     
       BNE    LFFB0   
       LDA    #$20    
       STA    $E4     
LFFB0: LDA    $80     
       AND    #$0F    
       BNE    LFFB8   
       INC    $D1     
LFFB8: LDA    $D1     
       BPL    LFFC6   
       LDA    $E7     
       AND    #$F7    
       STA    $E7     
       LDA    #$00    
       STA    $D1     
LFFC6: AND    #$1F    
       TAY            
       BNE    LFFCF   
       INC    $83     
       STY    AUDV1   
LFFCF: JMP    LFE36   
LFFD2: .byte $FE
LFFD3: LDA    $9A     
       ASL            
       BPL    LFFE8   
       LDA    #$06    
       STA    $D3     
       LDA    $80     
       LSR            
       AND    #$0F    
       TAY            
       EOR    #$0F    
       LSR            
       JMP    LFF8B   
LFFE8: RTS            

LFFE9: .byte $07,$03,$01,$00
LFFED: .byte $09,$18,$10,$7F,$04,$01,$0A,$0D,$11,$15,$13,$17,$0D,$13,$11,$00
       .byte $F0,$00,$FF
