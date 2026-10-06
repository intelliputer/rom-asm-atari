; Disassembly of roms/Vidpin.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Vidpin.bin
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
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
VDELBL  =  $27
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXM1FB  =  $35
CXBLPF  =  $36
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
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
       LDX    #$28    
       JSR    LFFCF   
       INX            
       STX    $A1     
       STX    $C1     
LF016: LDA    #$03    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDY    #$00    
       CPY    $D8     
       BEQ    LF044   
       LDA    ($D8),Y 
       CMP    #$FF    
       BNE    LF030   
       STY    $D8     
       STY    AUDV0   
       BEQ    LF044   
LF030: INC    $D8     
       STA    AUDF0   
       LDA    ($D8),Y 
       TAX            
       AND    #$0F    
       STA    AUDV0   
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0   
       INC    $D8     
LF044: STA    WSYNC   
       LDX    #$01    
LF048: LDA    $8C,X   
       AND    #$7F    
       BEQ    LF056   
       DEC    $8C,X   
       BNE    LF056   
       LDA    #$80    
       STA    $8C,X   
LF056: DEX            
       BEQ    LF048   
       STA    WSYNC   
       LDA    #$08    
       STA    HMM1    
       NOP            
       LDY    #$0C    
LF062: DEY            
       BNE    LF062   
       STY    RESM1   
       STY    RESP1   
       STY    WSYNC   
       STY    VSYNC   
       LDA    #$29    
       STA    TIM64T  
       LDA    SWCHB   
       ROR            
       ROR            
       BCS    LF09D   
       LDA    $A2     
       BNE    LF093   
LF07D: INC    $A1     
       INC    $C1     
       LDA    $A1     
       CMP    #$05    
       BNE    LF089   
       LDA    #$01    
LF089: STA    $A1     
       STA    $99     
       EOR    #$01    
       AND    #$01    
       STA    $AE     
LF093: INC    $A2     
       LDA    $A2     
       AND    #$3F    
       BNE    LF0B0   
       BEQ    LF07D   
LF09D: STY    $A2     
       ROL            
       BCS    LF0B0   
       LDX    #$16    
       JSR    LFFCF   
       LDX    #$16    
LF0A9: STY    $AB,X   
       STX    $99     
       DEX            
       BNE    LF0A9   
LF0B0: BIT    CXP0FB  
       BVS    LF0C9   
       BIT    CXP1FB  
       BVS    LF0C9   
       LDA    LFCA0   
       STA    $D7     
       LDA    $8B     
       BEQ    LF0D4   
       DEC    $8B     
       JSR    LFADE   
       JMP    LF0D4   
LF0C9: LDA    $C4     
       CMP    #$AA    
       BCC    LF0D4   
       STY    $D7     
       JSR    LF99F   
LF0D4: JSR    LF522   
       JSR    LF80E   
       JSR    LFCF3   
       LDA    $C3     
       SEC            
       ADC    #$02    
LF0E2: INY            
       SBC    #$0F    
       BCS    LF0E2   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       STA    HMBL,X  
LF0F3: DEY            
       BPL    LF0F3   
       STA    RESBL,X 
       STA    WSYNC   
       STA    HMOVE   
       STX    $8F     
       STX    $DA     
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    SWCHB   
       LDX    #$0F    
       LDY    #$09    
       AND    #$08    
       BEQ    LF115   
       LDX    #$FF    
       LDY    #$04    
LF115: STX    $80     
       LDA    $C1     
       BEQ    LF121   
       LDA    #$F7    
       AND    $80     
       STA    $80     
LF121: LDX    #$05    
LF123: LDA    LFF93,Y 
       EOR    $C1     
       EOR    $C0     
       AND    $80     
       DEY            
       DEX            
       STA    $9C,X   
       BEQ    LF136   
       STA    NUSIZ1,X
       BNE    LF123   
LF136: INC    $9A     
       BNE    LF16D   
       STX    $D2     
       LDA    $BB     
       BEQ    LF14A   
       LDA    $9B     
       AND    #$03    
       BNE    LF14A   
       LDA    #$7B    
       STA    $D2     
LF14A: LDA    $AF     
       BEQ    LF159   
       LDA    $A1     
       ROR            
       BCS    LF159   
       LDA    $AE     
       EOR    #$01    
       STA    $AE     
LF159: LDA    $C1     
       BEQ    LF163   
       INC    $C1     
       BNE    LF163   
       INC    $C1     
LF163: INC    $9B     
       BNE    LF16D   
       LDA    $C1     
       BNE    LF16D   
       INC    $C1     
LF16D: JSR    LFFD8   
LF170: LDX    $AE     
       LDA    $B0,X   
       TAX            
       AND    #$0F    
       TAY            
       LDA    ($84),Y 
       AND    #$F0    
       STA    $81     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    ($84),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $81     
       LSR            
       PHA            
       LDX    $AE     
       LDA    $B2,X   
       TAX            
       AND    #$0F    
       TAY            
       LDA    ($84),Y 
       AND    #$0F    
       STA    $81     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    ($84),Y 
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $81     
       ASL            
       PHA            
       LDX    $AE     
       LDA    $B4,X   
       TAX            
       AND    #$0F    
       TAY            
       LDA    ($84),Y 
       LSR            
       PHA            
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    ($84),Y 
       AND    #$F0    
       LSR            
       PHA            
       LDA    $84     
       SBC    #$09    
       STA    $84     
       DEC    $80     
       BNE    LF170   
LF1CE: LDA    INTIM   
       BNE    LF1CE   
       STA    WSYNC   
       STA    VBLANK  
       LDA    $9E     
       LDX    $AE     
       BEQ    LF1DF   
       LDA    $9D     
LF1DF: STA    COLUPF  
       STA    WSYNC   
       LDA    #$9D    
       STA    $84     
       LDY    $AE     
       INY            
       STA    WSYNC   
       LDX    #$05    
LF1EE: STA    WSYNC   
       LDA    ($84),Y 
       STA    PF0     
       LDY    $99     
       LDA    ($84),Y 
       AND    #$0F    
       STA    PF1     
       PLA            
       STA    PF2     
       STA    $86     
       PLA            
       STA    PF0     
       STA    $82     
       PLA            
       STA    PF1     
       STA    $83     
       PLA            
       STA    PF2     
       STA    $81     
       LDY    $AE     
       INY            
       STA    WSYNC   
       LDA    ($84),Y 
       STA    PF0     
       LDY    $99     
       LDA    ($84),Y 
       AND    #$0F    
       STA    PF1     
       LDA    $86     
       STA    PF2     
       LDY    $AE     
       INY            
       LDA    $82     
       STA    PF0     
       LDA    $83     
       STA    PF1     
       LDA    $81     
       STA    PF2     
       LDA    $84     
       CLC            
       ADC    #$0A    
       STA    $84     
       DEX            
       BNE    LF1EE   
       STA    WSYNC   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    #$15    
       STA    CTRLPF  
       LDA    #$08    
       STA    $98     
       LDA    $D6     
       PHA            
       LDA    $D5     
       PHA            
       LDA    $D4     
       PHA            
       LDA    $D3     
       PHA            
       LDA    $D2     
       PHA            
       LDA    $D1     
       PHA            
       PHA            
       LDA    $CF     
       PHA            
       LDA    $CE     
       PHA            
       LDX    #$06    
LF269: LDA    $C7,X   
       PHA            
       DEX            
       BNE    LF269   
       TXA            
       JSR    LF4EE   
LF273: STA    WSYNC   
LF275: STA    PF0     
       STX    PF1     
       STY    PF2     
       LDX    #$03    
LF27D: STA    GRP1    
       LDA    $9F     
       STA    COLUPF  
       LDA    $A0     
       STA    COLUBK  
       LDA    $9D     
       STA    COLUP0  
       JSR    LF516   
       STA    WSYNC   
       STA    ENABL   
       LDA    $98     
       CMP    $C6     
       BCC    LF29C   
       LDA    #$02    
       STA    ENAM1   
LF29C: INC    $98     
       DEX            
       BEQ    LF2A5   
       STA    WSYNC   
       BNE    LF27D   
LF2A5: LDA    $98     
       CMP    #$0C    
       BEQ    LF2D1   
       CMP    #$1C    
       BEQ    LF2D1   
       CMP    #$2C    
       BEQ    LF314   
       CMP    #$3C    
       BEQ    LF2D1   
       CMP    #$4C    
       BEQ    LF2D1   
       CMP    #$58    
       BNE    LF2C2   
       JMP    LF40A   
LF2C2: STA    WSYNC   
       STA    GRP1    
       JSR    LF516   
       STA    WSYNC   
       JSR    LF4EE   
       JMP    LF273   
LF2D1: PLA            
       STA    $DC     
       PLA            
       STA    $DE     
       STA    WSYNC   
       PLA            
       STA    $E0     
       STA    GRP1    
       LDA    $C5     
       SEC            
       SBC    $98     
       CMP    #$02    
       ROL            
       ASL            
       EOR    #$02    
       NOP            
       NOP            
       LDY    $8F     
       STA    RESP0   
       BNE    LF2F7   
       STA    RESP0   
       LDX    #$13    
       BNE    LF2F9   
LF2F7: LDX    #$16    
LF2F9: STX    NUSIZ0  
       INY            
       CPY    #$03    
       BNE    LF302   
       LDY    #$00    
LF302: STY    $8F     
       STA    WSYNC   
       JSR    LF4EE   
       STA    WSYNC   
       STA    PF0     
       STX    PF1     
       STY    PF2     
       JMP    LF34C   
LF314: STA    WSYNC   
       LDA    $80     
       STA    GRP1    
       LDA    $9C     
       STA    COLUP0  
       LDA    $C5     
       SEC            
       SBC    $98     
       CMP    #$02    
       ROL            
       ASL            
       EOR    #$02    
       TAX            
       PLA            
       STA    $DC     
       PLA            
       STA    $E0     
       PLA            
       STA    $85     
       PHA            
       PLA            
       TXA            
       STA    RESP0   
       LDX    #$14    
       STX    NUSIZ0  
       STA    WSYNC   
       JSR    LF4EE   
       STA    WSYNC   
       STA    PF0     
       STX    PF1     
       STY    PF2     
       JMP    LF34C   
LF34C: LDY    $80     
LF34E: LDA    ($DC),Y 
       STA    GRP0    
       STA.w  $001C   
       STA    $85     
       LDA    ($DE),Y 
       TAX            
       LDA    ($E0),Y 
       STX    GRP0    
       STA    $82     
       STA    GRP0    
       LDA    $C5     
       SEC            
       SBC    $98     
       CMP    #$02    
       ROL            
       ASL            
       EOR    #$02    
       STA    WSYNC   
       STA    ENABL   
       LDA    ($DC),Y 
       STA    GRP0    
       LDA    $98     
       CMP    $C6     
       ROL            
       ASL            
       STA    ENAM1   
       INC    $98     
       PHA            
       PLA            
       LDA    ($DE),Y 
       INY            
       STA    GRP0    
       LDA    $82     
       STA    GRP0    
       LDA    $8E     
       DEC    $8E     
       CMP    #$04    
       BEQ    LF39E   
       CMP    #$01    
       BEQ    LF39E   
       STA    WSYNC   
       JSR    LFFD7   
       JMP    LF34E   
LF39E: STA    WSYNC   
       LDA    ($DC),Y 
       STA    GRP0    
       TAX            
       LDA    ($DE),Y 
       STA    GRP1    
       STA    $81     
       LDA    ($E0),Y 
       STA    GRP1    
       STA    $82     
       INY            
       STX    $80     
       TAX            
       LDA    $81     
       STA    GRP0    
       LDA    $82     
       STA    GRP0    
       LDA    $C5     
       SEC            
       SBC    $98     
       CMP    #$02    
       ROL            
       ASL            
       EOR    #$02    
       STA    WSYNC   
       STA    ENABL   
       STY    $83     
       STY    $83     
       LDY    $80     
       STY    GRP0    
       LDX    $DA     
       LDA    LFCB3,X 
       INX            
       STA    $85     
       LDA    LFCB3,X 
       INX            
       LDY    LFCB3,X 
       STX    $DA     
       LDX    $81     
       STX    GRP0    
       LDX    $82     
       STX    GRP0    
       INC    $DA     
       INC    $98     
       TAX            
       LDA    $8E     
       BEQ    LF405   
       LDA    $85     
       STA    WSYNC   
       STA    PF0     
       STX    PF1     
       STY    PF2     
       LDY    $83     
       JMP    LF34E   
LF405: LDA    $85     
       JMP    LF275   
LF40A: LDX    #$21    
       LDY    #$00    
       STA    WSYNC   
       STY    GRP1    
       LDA    $9C     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $C5     
       SEC            
       SBC    $98     
       CMP    #$02    
       ROL            
       ASL            
       EOR    #$02    
       STX    NUSIZ0,Y
       STX    NUSIZ1  
       NOP            
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDX    #$11    
       STX    HMM1    
       STX    VDELP0  
       LDX    #$F0    
       STX    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    ENABL   
       LDX    #$01    
       STX    VDELP1  
       LDX    #$B0    
       STX    $98     
       INC    $8E     
       DEC    $8E     
       LDX    $DA     
       LDY    LFCB3,X 
       INX            
       LDA    LFCB3,X 
       TAX            
       LDA    $C4     
       SEC            
       SBC    $98     
       INC    $98     
       CMP    #$04    
       ROL            
       ASL            
       EOR    #$02    
       STA    ENABL   
       TYA            
       LDY    #$00    
LF465: STA    WSYNC   
       STA    PF1     
       STX    PF2     
LF46B: LDA    ($E2),Y 
       STA    GRP0    
       LDA    ($E4),Y 
       STA    GRP1    
       LDA    ($E6),Y 
       STA    GRP0    
       LDA    ($E8),Y 
       TAX            
       LDA    $C4     
       NOP            
       INY            
       STX    GRP1    
       STX    GRP0    
       SEC            
       SBC    $98     
       TAX            
       DEX            
       CMP    #$04    
       ROL            
       ASL            
       EOR    #$02    
       STA    ENABL   
       STA    WSYNC   
       LDA    ($E2),Y 
       STA    GRP0    
       LDA    ($E4),Y 
       STA    GRP1    
       LDA    ($E6),Y 
       STA    GRP0    
       LDA    ($E8),Y 
       CPX    #$04    
       BCS    LF4A5   
       LDX    #$02    
LF4A5: BCC    LF4A9   
       LDX    #$00    
LF4A9: INY            
       CLC            
       NOP            
       STA    GRP1    
       STA    GRP0    
       LDA    $98     
       ADC    #$02    
       STA    $98     
       CMP    #$B9    
       BNE    LF4C2   
       STX    ENABL   
       LDX    #$0F    
       LDA    $AA     
       BNE    LF465   
LF4C2: CMP    #$C1    
       BEQ    LF4CC   
       STA    WSYNC   
       STX    ENABL   
       BNE    LF46B   
LF4CC: STA    WSYNC   
       LDA    #$00    
       STA    ENAM1   
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$03    
       STA    VBLANK  
       LDA    #$26    
       STA    TIM64T  
       JSR    LF664   
LF4E6: LDA    INTIM   
       BNE    LF4E6   
       JMP    LF016   
LF4EE: STA    ENABL   
       LDA    $98     
       CMP    $C6     
       BCC    LF4FA   
       LDA    #$02    
       STA    ENAM1   
LF4FA: LDA    #$06    
       STA    $8E     
       INC    $98     
       LDX    $DA     
       LDA    LFCB3,X 
       INX            
       STA    $85     
       LDA    LFCB3,X 
       INX            
       LDY    LFCB3,X 
       INX            
       STX    $DA     
       TAX            
       LDA    $85     
       RTS            

LF516: LDA    $C5     
       SEC            
       SBC    $98     
       CMP    #$02    
       ROL            
       ASL            
       EOR    #$02    
LF521: RTS            

LF522: LDY    #$00    
       LDA    #$F0    
       STA    $8A     
       LDA    $88     
       CMP    #$04    
       BEQ    LF532   
       INC    $88     
       BNE    LF556   
LF532: BIT    $93     
       BVS    LF545   
       STY    $88     
       LDA    $E6     
       CMP    #$80    
       BEQ    LF545   
       STY    $8C     
       LDX    #$04    
       JSR    LF648   
LF545: BIT    $93     
       BMI    LF556   
       LDA    $E2     
       CMP    #$00    
       BEQ    LF556   
       LDX    #$00    
       STY    $8D     
       JSR    LF648   
LF556: STY    $93     
       STY    SWACNT  
       LDA    $AF     
       ORA    $C1     
       ORA    $A9     
       BNE    LF521   
       LDA    $AE     
       LSR            
       PHP            
       LDA    INPT5   
       BCS    LF56D   
       LDA    INPT4   
LF56D: STA    $80     
       BMI    LF58D   
       LDA    $C6     
       LDX    #$43    
       STX    $C6     
       LDX    $BB     
       BNE    LF58D   
       SEC            
       SBC    #$43    
       BEQ    LF58D   
       ASL            
       STA    $EA     
       ADC    #$D6    
       STA    $B9     
       STA    $BB     
       LDA    #$1A    
       STA    $D8     
LF58D: LDA    SWCHA   
       PLP            
       BCS    LF597   
       LSR            
       LSR            
       LSR            
       LSR            
LF597: AND    #$0F    
       LDX    $BB     
       BNE    LF5B5   
       LDX    $C6     
       CMP    #$0D    
       BNE    LF5A9   
       CPX    #$57    
       BEQ    LF5A9   
       INC    $C6     
LF5A9: CMP    #$0E    
       BNE    LF5F1   
       CPX    #$43    
       BEQ    LF5F1   
       DEC    $C6     
       BNE    LF5F1   
LF5B5: BIT    $80     
       BMI    LF5F1   
       TAX            
       LDA    $9A     
       AND    #$01    
       ORA    $94     
       BNE    LF5F1   
       TXA            
       CMP    #$0E    
       BNE    LF5CE   
       DEC    $C4     
       SEC            
       ROL    $A5     
       BNE    LF5E6   
LF5CE: CMP    #$07    
       BNE    LF5DB   
       INC    $C3     
       LSR    $A4     
       SEC            
       ROL    $A3     
       BNE    LF5E6   
LF5DB: CMP    #$0B    
       BNE    LF656   
       DEC    $C3     
       LSR    $A3     
       SEC            
       ROL    $A4     
LF5E6: BCC    LF5F0   
       LDA    #$42    
       STA    $BD     
       STY    $A8     
       STY    $AD     
LF5F0: RTS            

LF5F1: LDX    $BD     
       BNE    LF5F0   
       CMP    #$07    
       BEQ    LF605   
       CMP    #$0B    
       BEQ    LF623   
       CMP    #$0E    
       BNE    LF656   
       LDA    #$01    
       STA    $89     
LF605: LDA    $9B     
       AND    #$03    
       STA    $9B     
       LDA    $8C     
       BNE    LF613   
       LDA    RESP0   
       STA    $8C     
LF613: LDA    #$40    
       ORA    $93     
       STA    $93     
       LDA    $E6     
       CMP    #$B0    
       BEQ    LF640   
       LDX    #$04    
       BNE    LF639   
LF623: LDA    $8D     
       BNE    LF62B   
       LDA    RESP0   
       STA    $8D     
LF62B: LDA    #$80    
       ORA    $93     
       STA    $93     
       LDA    $E2     
       CMP    #$30    
       BEQ    LF656   
       LDX    #$00    
LF639: LDA    #$10    
       STA    $8A     
       JSR    LF648   
LF640: LDA    $89     
       BEQ    LF656   
       STY    $89     
       BNE    LF623   
LF648: CLC            
       LDA    $E2,X   
       ADC    $8A     
       STA    $E2,X   
       CLC            
       LDA    $E4,X   
       ADC    $8A     
       STA    $E4,X   
LF656: RTS            

LF657: .byte $A5,$D7,$D0,$FB,$A5,$BA,$29,$BF,$85,$BA,$4C,$C5,$FA
LF664: LDA    #$00    
       STA    AUDV1   
       BIT    CXM1FB  
       BVC    LF679   
       BIT    $C3     
       BPL    LF679   
       LDX    $BD     
       BEQ    LF676   
       INC    $A9     
LF676: JMP    LF98D   
LF679: BIT    CXBLPF  
       BMI    LF68B   
       STA    $94     
       JSR    LFB2A   
       JSR    LF8B3   
       JSR    LF8DB   
       JMP    LF87A   
LF68B: LDA    $BB     
       BEQ    LF656   
       LDA    #$31    
       LDX    $94     
       BNE    LF69F   
       STA    $94     
       STA    AUDF1   
       LDA    #$05    
       STA    AUDC1   
       STA    AUDV1   
LF69F: LSR            
       CMP    $B8     
       BCC    LF6A6   
       STA    $B8     
LF6A6: LDX    #$80    
       LDY    $C4     
       LDA    $C3     
       JSR    LF721   
       LDA    #$03    
       STA    $83     
       BIT    $BA     
       BVC    LF6C2   
       LDX    #$00    
       STX    $81     
       JSR    LF7EE   
       BNE    LF6D7   
       BEQ    LF6CD   
LF6C2: LDA    #$40    
       STA    $81     
       LDX    #$2B    
       JSR    LF7EE   
       BNE    LF6D7   
LF6CD: LDA    #$FE    
       AND    $83     
       STA    $83     
       LDA    #$00    
       STA    $81     
LF6D7: LDX    #$40    
       LDA    $C4     
       LDY    $C3     
       JSR    LF721   
       BIT    $BA     
       BPL    LF6FA   
       LDA    #$80    
       STA    $82     
       LDX    #$3B    
       JSR    LF7EE   
       BNE    LF718   
       LDY    $AB     
       BPL    LF70E   
       JSR    LF7ED   
       BNE    LF718   
       BEQ    LF70E   
LF6FA: LDA    #$C0    
       STA    $82     
       LDX    #$6A    
       JSR    LF7EE   
       BNE    LF718   
       LDY    $AB     
       BPL    LF70E   
       JSR    LF7ED   
       BNE    LF718   
LF70E: LDA    #$FD    
       AND    $83     
       STA    $83     
       LDX    #$00    
       STX    $82     
LF718: LDA    $83     
       ROR            
       BCS    LF728   
       ROR            
       BCS    LF728   
       RTS            

LF721: STA    $84     
       STX    $85     
       STY    $86     
       RTS            

LF728: LDA    $83     
       CMP    #$03    
       BNE    LF73A   
       LDA    #$C0    
       STA    $96     
       EOR    $82     
       BNE    LF777   
       STA    $82     
       BEQ    LF777   
LF73A: LDA    $81     
       ORA    $82     
       STA    $97     
       LDA    #$40    
       STA    $BF     
       BIT    $96     
       BPL    LF74D   
       BVC    LF74D   
       JMP    LF777   
LF74D: LDY    #$40    
       LDX    #$01    
       BIT    $97     
       BMI    LF76D   
       BIT    $97     
       BVS    LF763   
LF759: TYA            
       EOR    #$FF    
       AND    $BA     
       DEC    $C3,X   
       JMP    LF768   
LF763: TYA            
       ORA    $BA     
       INC    $C3,X   
LF768: STA    $BA     
       JMP    LF79C   
LF76D: LDY    #$80    
       LDX    #$00    
       BIT    $97     
       BVC    LF759   
       BVS    LF763   
LF777: LDX    $B8     
       LDY    $B9     
       CPY    #$05    
       BCS    LF781   
       LDY    #$05    
LF781: STY    $B8     
       CPX    #$05    
       BCS    LF789   
       LDX    #$05    
LF789: STX    $B9     
       LDA    $81     
       ORA    $82     
       ASL            
       ROL            
       ORA    $BA     
       ROL            
       ROL            
       ROL            
       TAX            
       LDA    LFF83,X 
       STA    $BA     
LF79C: LDA    $BD     
       BNE    LF7C8   
       LDX    #$0C    
       JSR    LF854   
       BNE    LF7B2   
       LDX    #$00    
       JSR    LF854   
       BEQ    LF7C8   
       LDA    #$2C    
       BNE    LF7C2   
LF7B2: LDA    $CC     
       LSR            
       LSR            
       LSR            
       LDX    $AE     
       SED            
       CLC            
       ADC    $B2,X   
       JSR    LFBF5   
       LDA    #$01    
LF7C2: STA    $D8     
       LDA    #$80    
       STA    $BF     
LF7C8: LDA    $C8     
       ORA    $C9     
       ORA    $CA     
       BNE    LF7EA   
       JSR    LF984   
       LDA    $CC     
       CLC            
       STA    $C0     
       ADC    #$08    
       CMP    #$50    
       BNE    LF7E0   
       LDA    #$48    
LF7E0: STA    $CC     
       STA    $D1     
       STA    $D3     
       LDA    #$8B    
       STA    $D8     
LF7EA: RTS            

LF7EB: INX            
       INX            
LF7ED: INX            
LF7EE: LDY    LFED2,X 
       BEQ    LF80D   
       SEC            
       LDA    $86     
       SBC    LFED2,X 
       CMP    #$04    
       BCS    LF7EB   
       LDA    $84     
       CMP    LFED3,X 
       BCC    LF7EB   
       CMP    LFED4,X 
       BCS    LF7EB   
       LDA    $85     
       STA    $96     
LF80D: RTS            

LF80E: LDX    $BC     
       BNE    LF826   
       LDA    $C5     
       CMP    #$14    
       BCS    LF826   
       STA    $BC     
       LDA    $9A     
       AND    #$3F    
       STA    $B9     
       LDA    $EA     
       ASL            
       ASL            
       STA    $B8     
LF826: LDY    #$03    
LF828: LDX    #$00    
       BIT    $BA     
       BPL    LF83B   
LF82E: LDA    $B6,X   
       CLC            
       ADC    $B8,X   
       STA    $B6,X   
       BCC    LF846   
       INC    $C3,X   
       BNE    LF846   
LF83B: LDA    $B6,X   
       SEC            
       SBC    $B8,X   
       STA    $B6,X   
       BCS    LF846   
       DEC    $C3,X   
LF846: TXA            
       BNE    LF850   
       INX            
       BIT    $BA     
       BVC    LF83B   
       BVS    LF82E   
LF850: DEY            
       BNE    LF828   
       RTS            

LF854: LDY    #$00    
LF856: LDA    $C4     
       CMP    LFF6B,X 
       BCC    LF870   
       CMP    LFF6C,X 
       BCS    LF870   
       LDA    $C3     
       CMP    LFF6D,X 
       BCC    LF870   
       CMP    LFF6E,X 
       BCS    LF870   
       TAX            
       RTS            

LF870: INX            
       INX            
       INX            
       INX            
       INY            
       CPY    #$03    
       BNE    LF856   
       RTS            

LF87A: LDX    #$00    
       CPX    $BB     
       BEQ    LF8B2   
LF880: LDA    $B8,X   
       TAY            
       BIT    $BF     
       BMI    LF89F   
       BVC    LF8B2   
       BIT    $96     
       BPL    LF892   
       TXA            
       BEQ    LF8A9   
       BNE    LF895   
LF892: TXA            
       BNE    LF8A9   
LF895: TYA            
       CLC            
       ADC    #$E8    
       BCS    LF8A7   
       LDA    #$01    
       BNE    LF8A7   
LF89F: TYA            
       CLC            
       ADC    #$10    
       BCC    LF8A7   
       LDA    #$FF    
LF8A7: STA    $B8,X   
LF8A9: INX            
       CPX    #$02    
       BNE    LF880   
       LDA    #$00    
       STA    $BF     
LF8B2: RTS            

LF8B3: LDY    #$FF    
       LDA    $BD     
       BNE    LF8C5   
       LDA    SWCHB   
       ROL            
       LDX    $AE     
       BNE    LF8C2   
       ROL            
LF8C2: BCS    LF8C5   
       INY            
LF8C5: STY    $AB     
       LDX    #$FF    
       TYA            
       BPL    LF8CE   
       LDX    #$FB    
LF8CE: STX    $AA     
       LDA    $C4     
       CMP    #$C0    
       BCC    LF934   
       INC    $A9     
       JMP    LF98D   
LF8DB: LDA    $BB     
       BEQ    LF901   
       BIT    $BA     
       LDA    $B9     
       BVS    LF8F8   
       SEC            
       SBC    $D7     
       BCS    LF8FF   
       EOR    #$FF    
       ADC    #$01    
       STA    $B9     
       LDA    $BA     
       ORA    #$40    
       STA    $BA     
       BNE    LF901   
LF8F8: CLC            
       ADC    $D7     
       BCC    LF8FF   
       LDA    #$FF    
LF8FF: STA    $B9     
LF901: LDA    $A9     
       BEQ    LF934   
       LDA    $D8     
       BNE    LF934   
       LDA    $A6     
       BEQ    LF935   
       DEC    $A6     
       LDA    #$43    
       STA    $D8     
       LDA    $CB     
       SEC            
       SBC    #$08    
       BNE    LF91C   
       LDA    #$48    
LF91C: STA    $CB     
       LDY    $AD     
       INY            
       CPY    #$05    
       BCC    LF927   
       LDY    #$04    
LF927: TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       SED            
       LDX    $AE     
       ADC    $B2,X   
       JSR    LFBF5   
LF934: RTS            

LF935: STA    $A9     
       STA    $AC     
       LDX    $A8     
       BEQ    LF945   
       STA    $A8     
       JSR    LF97A   
       JMP    LF98D   
LF945: LDA    $A1     
       TAX            
       LSR            
       BCS    LF953   
       LDA    $AE     
       EOR    #$01    
       STA    $AE     
       BNE    LF960   
LF953: LDY    $99     
       CPY    #$03    
       BEQ    LF95D   
       INC    $99     
       BNE    LF960   
LF95D: INC    $AF     
       RTS            

LF960: TXA            
       LDX    #$08    
       CMP    #$03    
       BCS    LF970   
       LSR            
       BCS    LF976   
       LDA    $CC     
       LDX    $C7     
       STA    $C7     
LF970: STX    $CC     
       STX    $D1     
       STX    $D3     
LF976: LDA    #$00    
       STA    $AD     
LF97A: LDA    #$00    
       STA    $D2     
       STA    $D4     
       STA    $D5     
       STA    $D6     
LF984: LDA    #$50    
       STA    $C8     
       STA    $C9     
       STA    $CA     
       RTS            

LF98D: LDA    #$00    
       LDX    #$09    
LF991: DEX            
       STA    $B8,X   
       BNE    LF991   
       LDA    #$95    
       STA    $C3     
       LDA    #$84    
       STA    $C4     
       RTS            

LF99F: SEC            
       LDA    #$BE    
       SBC    $C4     
       STA    $80     
       LDA    #$3F    
       CLC            
       ADC    $80     
       CMP    $C3     
       BCS    LF9F7   
       LDA    #$5E    
       SEC            
       SBC    $80     
       CMP    $C3     
       BCC    LF9F7   
       LDA    $8B     
       BNE    LF9F7   
       LDA    $C3     
       CMP    #$4F    
       BCS    LF9D0   
       LDA    $E2     
       CMP    #$30    
       BNE    LF9F7   
       BIT    $BA     
       BMI    LF9F7   
       BVC    LF9EA   
       BVS    LF9DC   
LF9D0: LDA    $E6     
       CMP    #$B0    
       BNE    LF9F7   
       BIT    $BA     
       BPL    LF9F7   
       BVC    LF9EA   
LF9DC: LDA    $C4     
       CMP    #$BA    
       BCS    LF9EA   
       LDA    $B8     
       LSR            
       NOP            
       CMP    $B9     
       BCC    LF9F7   
LF9EA: LDA    #$00    
       STA    $B8     
       LDA    #$40    
       STA    $B9     
       STA    $BA     
       STA    $BE     
LF9F6: RTS            

LF9F7: BIT    $BE     
       BVS    LF9F6   
       LDA    #$03    
       STA    $8B     
       LDA    $C3     
       CMP    #$4F    
       BCC    LFA21   
LFA05: LDX    #$02    
       LDA    $E6     
       CMP    #$80    
       BEQ    LFA3D   
       LDX    #$01    
       CMP    #$90    
       BEQ    LFA3D   
       LDX    #$82    
       CMP    #$A0    
       BEQ    LFA3D   
       LDX    #$84    
       CMP    #$B0    
       BEQ    LFA3D   
       BNE    LFA05   
LFA21: LDX    #$82    
       LDA    $E2     
       CMP    #$00    
       BEQ    LFA3D   
       LDX    #$81    
       CMP    #$10    
       BEQ    LFA3D   
       LDX    #$02    
       CMP    #$20    
       BEQ    LFA3D   
       LDX    #$04    
       CMP    #$30    
       BEQ    LFA3D   
       BNE    LFA21   
LFA3D: STX    $92     
       LDX    #$01    
LFA41: LDA    $B8,X   
       LSR            
       LSR            
       LSR            
       STA    $80,X   
       BNE    LFA4E   
       LDA    #$01    
       BNE    LFA5D   
LFA4E: LDA    $92     
       AND    #$07    
       TAY            
       LDA    $80,X   
       CLC            
LFA56: DEY            
       BEQ    LFA5D   
       ADC    $80,X   
       BNE    LFA56   
LFA5D: STA    $80,X   
       DEX            
       BEQ    LFA41   
       BIT    $92     
       BPL    LFA6C   
       BIT    $BA     
       BPL    LFA72   
       BMI    LFA87   
LFA6C: BIT    $BA     
       BMI    LFA72   
       BPL    LFA87   
LFA72: SEC            
       LDA    $B8     
       SBC    $81     
       BCS    LFA8C   
       EOR    #$FF    
       ADC    #$01    
       TAX            
       LDA    $BA     
       EOR    #$80    
       STA    $BA     
       TXA            
       BNE    LFA8C   
LFA87: LDA    $81     
       CLC            
       ADC    $B8     
LFA8C: STA    $B8     
       LDA    $B9     
       SEC            
       SBC    $81     
       BCC    LFA97   
       STA    $B9     
LFA97: LDA    $BA     
       AND    #$BF    
       STA    $BA     
       CLC            
       LDA    $B9     
       ADC    $80     
       BCC    LFAA6   
       LDA    #$FF    
LFAA6: STA    $B9     
       SEC            
       LDA    $B8     
       SBC    $80     
       BCC    LFAB1   
       STA    $B8     
LFAB1: LDA    $C3     
       CMP    #$4F    
       BCS    LFABF   
       LDA    $8D     
       AND    #$7F    
       BEQ    LFADD   
       BNE    LFAC5   
LFABF: LDA    $8C     
       AND    #$7F    
       BEQ    LFADD   
LFAC5: LDA    $C3     
       CMP    #$44    
       BCC    LFAD3   
       CMP    #$5F    
       BCS    LFAD3   
       LDA    #$80    
       BNE    LFAD5   
LFAD3: LDA    #$28    
LFAD5: ADC    $B9     
       BCC    LFADB   
       LDA    #$FF    
LFADB: STA    $B9     
LFADD: RTS            

LFADE: LDA    $C4     
       CMP    #$B3    
       BCC    LFAFE   
       LDA    $C3     
       CMP    #$49    
       BCC    LFAFE   
       CMP    #$4C    
       BCS    LFAFE   
       LDX    $8D     
       BNE    LFAFF   
       CMP    #$51    
       BCC    LFAFE   
       CMP    #$55    
       BCS    LFAFE   
       LDX    $8C     
       BNE    LFAFF   
LFAFE: RTS            

LFAFF: JMP    LF9F7   
LFB02: JSR    LFBE9   
       LDA    $9A     
       ROR            
       ROR            
       AND    #$C0    
       STA    $BA     
       ASL            
       BCC    LFB15   
       LSR    $B8     
       ASL    $B9     
       RTS            

LFB15: ASL    $B8     
       LSR    $B9     
       RTS            

LFB1A: LDA    #$10    
       ADC    $B2,X   
       JSR    LFBF5   
       LDA    #$76    
       STA    $D8     
       LDA    #$10    
       STA    $C0     
       RTS            

LFB2A: LDX    $AE     
       LDA    $A7     
       ORA    $BD     
       BNE    LFB53   
       BIT    CXP0FB  
       BVC    LFB53   
       LDY    $C4     
       CPY    #$90    
       BCS    LFB53   
       LDA    #$F3    
       STA    $A7     
       AND    $9A     
       STA    $9A     
       SED            
       CPY    #$30    
       BCC    LFB81   
       CPY    #$50    
       BCC    LFBA2   
       CPY    #$70    
       BCC    LFB02   
       BCS    LFB1A   
LFB53: CLD            
       LDA    $9A     
       AND    #$1F    
       BNE    LFB5C   
       STA    $A7     
LFB5C: LDA    $9A     
       LSR            
       BCC    LFB77   
       LDA    $C0     
       BEQ    LFB67   
       DEC    $C0     
LFB67: LDA    $CE     
       CMP    #$6C    
       BNE    LFB6F   
       LDA    #$50    
LFB6F: CLC            
       ADC    #$07    
       STA    $CE     
       STA    $CF     
       RTS            

LFB77: LSR            
       BCC    LFB80   
       LSR    $A5     
       LSR    $A4     
       LSR    $A3     
LFB80: RTS            

LFB81: SEC            
       JSR    LFBF0   
       LDA    $C3     
       LDX    #$00    
       CMP    #$48    
       BCC    LFB93   
       CMP    #$58    
       BCC    LFB92   
       INX            
LFB92: INX            
LFB93: LDA    #$00    
       STA    $C8,X   
       LDA    #$BF    
       STA    $D8     
       LDA    #$40    
       ORA    $BA     
       STA    $BA     
       RTS            

LFBA2: LDA    #$62    
       STA    $D8     
       LDA    #$0C    
       STA    $B8     
       BIT    $C3     
       BVS    LFBC3   
       LDA    $CB     
       CLD            
       CLC            
       ADC    #$08    
       CMP    #$50    
       BNE    LFBBA   
       LDA    #$08    
LFBBA: STA    $CB     
       SEC            
       JSR    LFBF0   
       INC    $A6     
       RTS            

LFBC3: SEC            
       JSR    LFBF0   
       LDX    $A8     
       BNE    LFBD9   
       LDX    $AC     
       CPX    #$03    
       BEQ    LFBDA   
       LDA    #$73    
       STA    $D4,X   
       INC    $AC     
       INC    $AD     
LFBD9: RTS            

LFBDA: LDA    #$00    
       STA    $AC     
       LDX    #$10    
       STX    $C0     
       LDX    #$83    
       STX    $D5     
       INC    $A8     
       RTS            

LFBE9: CLC            
       LDA    $B0,X   
       ADC    #$01    
       STA    $B0,X   
LFBF0: SED            
       LDA    $B2,X   
       ADC    #$00    
LFBF5: STA    $B2,X   
       LDA    $B4,X   
       ADC    #$00    
       STA    $B4,X   
       CLD            
       RTS            

LFBFF: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$30,$10,$10,$10,$38
       .byte $00,$00,$78,$48,$08,$78,$40,$78,$00,$00,$78,$08,$38,$08,$08,$78
       .byte $00,$00,$48,$48,$48,$7C,$08,$08,$00,$00,$78,$40,$78,$08,$48,$78
       .byte $00,$00,$78,$40,$78,$48,$48,$78,$00,$00,$78,$48,$08,$10,$10,$10
       .byte $00,$00,$78,$48,$78,$48,$48,$78,$00,$00,$78,$48,$78,$08,$48,$78
       .byte $00,$10,$28,$54,$BA,$54,$28,$10,$00,$30,$00,$00,$84,$48,$00,$00
       .byte $10,$08,$80,$80,$08,$10,$00,$00,$48,$84,$00,$00,$30,$00,$20,$40
       .byte $04,$04,$40,$20,$00,$28,$28,$28,$28,$54,$92,$00,$10,$38,$54,$FE
       .byte $54,$38,$10,$00,$EE,$44,$28,$10,$28,$44,$EE
LFC8A: .byte $00,$95,$95,$84,$42,$43,$08,$50,$50,$50,$08,$08,$73,$57,$57,$30
       .byte $08,$00,$08,$00,$00,$00
LFCA0: .byte $03,$00,$FE,$00,$FC,$00,$FC,$00,$FC,$00,$FC,$00,$FD,$40,$FD,$80
       .byte $FD,$C0,$FD
LFCB3: .byte $F0,$FF,$FF,$70,$00,$00,$30,$00,$00,$30,$00,$00,$30,$02,$C2,$B0
       .byte $02,$42,$B0,$02,$42,$B0,$02,$C2,$B0,$00,$00,$B0,$00,$00,$B0,$00
       .byte $00,$B0,$00,$C0,$B0,$03,$03,$B0,$02,$02,$B0,$02,$02,$B0,$03,$03
       .byte $B0,$00,$00,$B0,$80,$00,$B0,$C0,$00,$B0,$E0,$00,$F0,$00,$B0,$00
LFCF3: LDA    $C4     
       LSR            
       STA    $C5     
       TYA            
       TAX            
       ROL            
       STA    VDELBL  
       STX    CXCLR   
       RTS            

LFD00: .byte $00,$00,$00,$00,$00,$00,$00,$00,$C0,$F0,$FC,$FF,$FF,$FF,$07,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$F8,$FF,$FF,$FF,$FF,$F8,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$01,$1F,$FF,$FF,$FE,$F8,$F0,$C0,$00,$00
       .byte $00,$00,$00,$01,$03,$0F,$1F,$7E,$FC,$F8,$F0,$E0,$C0,$80,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$F0,$F8,$38
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$F8,$F8,$C0,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$18,$F8,$F0,$C0,$80,$00,$00,$00,$00,$00,$00
       .byte $00,$30,$70,$E0,$C0,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$0F,$1F,$1C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$1F,$1F,$03,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$18,$1F,$0F,$03,$01,$00,$00,$00,$00,$00,$00
       .byte $00,$0C,$0E,$07,$03,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$03,$0F,$3F,$FF,$FF,$FF,$E0,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$1F,$FF,$FF,$FF,$FF,$1F,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$80,$F8,$FF,$FF,$7F,$1F,$0F,$03,$00,$00
       .byte $00,$00,$00,$80,$C0,$F0,$F8,$7E,$3F,$1F,$0F,$07,$03,$01,$00,$00
       .byte $FF,$04,$CF,$05,$CF,$06,$CF,$0C,$CE,$18,$CB,$1E,$C0,$04,$CF,$06
       .byte $CF,$08,$CF,$0A,$CF,$0C,$CB,$0E,$C7,$FF,$03,$FF,$03,$F0,$03,$FF
       .byte $03,$FF,$03,$FE,$03,$F9,$03,$F4,$03,$F6,$03,$F9,$03,$F9,$03,$F7
       .byte $03,$F5,$03,$F7,$03,$F7,$03,$F5,$03,$F4,$03,$F5,$03,$F3,$03,$F4
       .byte $03,$F2,$FF,$10,$5F,$11,$5F,$12,$5F,$13,$5F,$14,$5F,$15,$5B,$16
       .byte $57,$17,$57,$18,$57,$19,$57,$1A,$55,$1B,$53,$1C,$53,$1D,$52,$1E
       .byte $51,$FF,$00,$5F,$04,$5F,$08,$5F,$0C,$5F,$10,$5F,$14,$5F,$18,$5F
       .byte $1C,$5F,$1E,$5F,$1E,$5F,$00,$5F,$04,$5F,$08,$5F,$0C,$5F,$10,$5F
       .byte $14,$5F,$18,$5F,$1C,$5F,$1E,$5F,$1E,$5F,$FF,$1D,$CF,$1C,$CF,$1B
       .byte $CF,$1A,$CF,$19,$CF,$18,$CF,$16,$CF,$12,$CF,$1E,$CF,$1D,$CF,$1C
       .byte $CF,$1B,$CF,$1A,$CF,$19,$CF,$18,$CF,$16,$CF,$12,$CF,$1E,$CF,$1D
       .byte $CF,$1C,$CF,$1B,$CF,$1A,$CF,$19,$CF,$18,$CF,$16,$CF,$12,$CF,$1E
       .byte $CF,$1D,$CF,$1C,$CF,$1B,$CF,$1A,$CF,$19,$CF,$18,$CF,$16,$CF,$12
       .byte $CF,$FF
LFED2: .byte $38
LFED3: .byte $0B
LFED4: .byte $10,$38,$8F,$94,$B8,$1A,$84,$30,$27,$78,$68,$47,$58,$70,$27,$78
       .byte $98,$8A,$93,$98,$0A,$14,$A0,$86,$8F,$A0,$0E,$18,$A8,$82,$8B,$A8
       .byte $12,$1C,$B0,$7E,$88,$B0,$18,$20,$00,$17,$08,$95,$4F,$26,$78,$1F
       .byte $04,$99,$6F,$47,$58,$8F,$26,$78,$00,$27,$2F,$93,$0B,$38,$C3,$8F
       .byte $38,$9C,$93,$16,$23,$97,$1E,$C3,$73,$2F,$53,$67,$2F,$93,$47,$2F
       .byte $73,$33,$2F,$53,$8B,$93,$A5,$87,$9B,$AD,$83,$A3,$B5,$7F,$AB,$BD
       .byte $00,$28,$B7,$C3,$7B,$B7,$C3,$00,$08,$16,$23,$0C,$38,$9C,$90,$38
       .byte $C3,$04,$1E,$C3,$28,$2F,$53,$34,$2F,$93,$54,$2F,$73,$68,$2F,$53
       .byte $74,$2F,$93,$10,$93,$A5,$14,$9B,$AD,$18,$A3,$B5,$1C,$AB,$BD,$00
       .byte $20,$B7,$C3,$74,$B7,$C3,$00
LFF6B: .byte $98
LFF6C: .byte $B8
LFF6D: .byte $0E
LFF6E: .byte $23,$98,$B8,$7C,$90,$00,$00,$00,$00,$2F,$53,$46,$59,$6F,$94,$26
       .byte $39,$6F,$94,$66,$79
LFF83: .byte $00,$80,$00,$C0,$C0,$80,$00,$00,$00,$00,$80,$00,$40,$00,$40,$C0
LFF93: .byte $0F,$2B,$F8,$76,$00,$0F,$2F,$F8,$76,$00,$E7,$66,$E7,$E7,$A5,$E7
       .byte $E7,$E7,$E7,$E7,$A5,$42,$81,$81,$A5,$24,$24,$81,$A5,$A5,$A5,$42
       .byte $E7,$C3,$E7,$E7,$E7,$42,$E7,$E7,$A5,$42,$24,$81,$81,$81,$A5,$42
       .byte $A5,$81,$E7,$E7,$E7,$E7,$81,$E7,$E7,$42,$E7,$E7
LFFCF: LDA    LFC8A,X 
       STA    $C1,X   
       DEX            
       BNE    LFFCF   
LFFD7: RTS            

LFFD8: LDA    #$14    
       STA    CTRLPF  
       LDA    #$10    
       STA    NUSIZ1  
       LDX    #$00    
       STX    ENAM0   
       STX    ENAM1   
       STX    HMCLR   
       LDA    $A0     
       EOR    $BD     
       STA    COLUBK  
       DEX            
       STX    $85     
       LDA    #$C5    
       STA    $84     
       LDA    #$05    
       STA    $80     
       RTS            

LFFFA: .byte $00,$00,$00,$F0,$00,$00
