; Disassembly of roms/Dodge Em.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Dodge Em.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
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
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       JMP    LF0CA   
LF003: CLC            
       ADC    #$36    
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       PLA            
       AND    #$0F    
       STY    $99     
       CLC            
       ADC    $99     
       CMP    #$0F    
       BCC    LF01B   
       SBC    #$0F    
       INY            
LF01B: CMP    #$08    
       EOR    #$0F    
       BCS    LF024   
       ADC    #$01    
       DEY            
LF024: ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF02A: DEY            
       BPL    LF02A   
       STA    RESP0,X 
       STA    HMP0,X  
       RTS            

LF032: LDX    #$08    
LF034: LDA    LFE2E,X 
       STA    $C3,X   
       LDA    LFE37,X 
       STA    $CC,X   
       LDA    LFE40,X 
       STA    $D5,X   
       LDA    LFE49,X 
       STA    $DE,X   
       LDA    LFE52,X 
       STA    $E7,X   
       LDA    LFE5B,X 
       STA    $F0,X   
       LDA    #$FF    
       STA    $AC,X   
       DEX            
       BPL    LF034   
       JSR    LF577   
       LDA    SWCHB   
       BPL    LF08D   
       LDA    $82     
       AND    #$03    
       TAX            
       LDA    LFEFA,X 
       STA    $9C     
       CMP    #$24    
       BEQ    LF074   
       JSR    LF51E   
       BNE    LF07C   
LF074: LDA    #$6C    
       STA    $A0     
       LDA    #$FE    
       STA    $A1     
LF07C: LDA    LFEFE,X 
       STA    $9B     
       LDA    LFF02,X 
       STA    $9D     
       LDA    LFF06,X 
       STA    $9E     
       BPL    LF09F   
LF08D: LDA    LFEE8   
       STA    $9B     
       JSR    LF51E   
       LDA    #$10    
       STA    $9D     
       LDA    #$00    
       STA    $9C     
       STA    $9E     
LF09F: LDA    LFEE9   
       STA    $A2     
       STA    $B5     
       JSR    LF515   
       BIT    $95     
       BMI    LF0B0   
       JSR    LF553   
LF0B0: LDA    #$40    
       STA    $81     
       STA    $A4     
       STA    $B7     
       STA    $B6     
       LDA    #$30    
       ORA    $94     
       STA    $94     
       LDA    $96     
       AND    #$F8    
       STA    $96     
       JSR    LF527   
       RTS            

LF0CA: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF0D1: STA    VSYNC,X 
       INX            
       BNE    LF0D1   
       JSR    LF032   
       JSR    LFC41   
       LDA    #$58    
       STA    $96     
       LDA    #$1E    
       STA    $86     
LF0E4: LDA    #$02    
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       BIT    $95     
       BMI    LF0F5   
       STA    WSYNC   
       JMP    LF136   
LF0F5: LDA    SWCHB   
       LDX    #$07    
       LDY    #$07    
       AND    #$08    
       BEQ    LF104   
       LDX    #$F7    
       LDY    #$03    
LF104: LDA    $97     
       STA    $A6     
       STX    $9F     
       LDX    #$03    
       STA    WSYNC   
LF10E: LDA    LFF2C,Y 
       EOR    $A6     
       AND    $9F     
       STA    COLUP0,X
       DEY            
       DEX            
       BPL    LF10E   
       STA    WSYNC   
       LDA    #$26    
       BIT    $98     
       BPL    LF125   
       LDA    #$C8    
LF125: STA    COLUP1  
       LDA    $9E     
       CMP    #$02    
       BNE    LF138   
       LDA    $82     
       BNE    LF138   
       JSR    LF4F2   
       BEQ    LF138   
LF136: STA    WSYNC   
LF138: STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$28    
       STA    TIM64T  
       LDA    #$00    
       STA    AUDV1   
       LDA    WSYNC   
       STA    CTRLPF  
       LDA    $86     
       AND    #$3F    
       BEQ    LF156   
       JMP    LF22B   
LF156: LDA    SWCHB   
       ROR            
       BCS    LF162   
       JSR    LF568   
       JMP    LF22B   
LF162: LDA    SWCHB   
       AND    #$02    
       BNE    LF1A0   
       JSR    LFC41   
       JSR    LF032   
       JSR    LF506   
       BIT    $94     
       BPL    LF17E   
       BVC    LF182   
       LDA    #$3F    
       AND    $94     
       BPL    LF186   
LF17E: LDA    #$80    
       BNE    LF184   
LF182: LDA    #$40    
LF184: ORA    $94     
LF186: STA    $94     
       LDX    #$1E    
       STX    $86     
       LDA    $96     
       AND    #$F8    
       CMP    #$B8    
       BNE    LF198   
       LDA    #$58    
       BNE    LF19B   
LF198: CLC            
       ADC    #$30    
LF19B: STA    $96     
       JMP    LF22B   
LF1A0: LDA    $94     
       AND    #$3F    
       BEQ    LF1A9   
       JMP    LF22B   
LF1A9: LDA    $A4     
       AND    #$0F    
       BNE    LF22B   
       LDA    $95     
       AND    #$7F    
       TAY            
       BNE    LF1BD   
       LDA    $81     
       ASL            
       BNE    LF228   
       LDY    #$20    
LF1BD: TYA            
       AND    #$03    
       BEQ    LF1D2   
       LDX    #$01    
       STX    AUDF0   
       LDX    #$0A    
       STX    AUDC0   
       LDX    #$06    
       STX    AUDV0   
       LDX    #$0C    
       BNE    LF1E5   
LF1D2: LDX    #$03    
       STX    AUDF0   
       LDX    #$00    
       BIT    $98     
       BPL    LF1E2   
       JSR    LFC71   
       JMP    LF1E5   
LF1E2: JSR    LFCB3   
LF1E5: STX    COLUBK  
       DEY            
       STY    $95     
       BNE    LF22B   
       BIT    $98     
       BPL    LF209   
       LDA    $84     
       AND    #$0F    
       BNE    LF1FE   
       STA    $84     
       JSR    LF4F2   
       JMP    LF220   
LF1FE: DEC    $84     
       LDX    #$01    
       BIT    $84     
       JSR    LF530   
       BNE    LF220   
LF209: LDA    $83     
       AND    #$0F    
       BNE    LF217   
       STA    $83     
       JSR    LF4F2   
       JMP    LF220   
LF217: DEC    $83     
       LDX    #$00    
       BIT    $83     
       JSR    LF530   
LF220: JSR    LF032   
       JSR    LF506   
       BEQ    LF22B   
LF228: JSR    LF859   
LF22B: LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       LDA    $9B     
       JSR    LF003   
       INX            
       LDA    $A2     
       JSR    LF003   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$4C    
       STA    $9A     
LF244: LDA    INTIM   
       BNE    LF244   
       STA    CXCLR   
       STA    WSYNC   
       LDX    #$08    
       STX    $A9     
       LDA    #$00    
       STA    VBLANK  
       LDX    #$12    
       LDA    $86     
       AND    #$3F    
       BEQ    LF2A8   
       LDA    $96     
       LSR            
       LSR            
       LSR            
       TAY            
LF263: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF2     
       CPX    #$06    
       BPL    LF274   
       LDA    LFE94,Y 
       AND    #$F0    
LF274: STA    PF1     
       PHP            
       PLP            
       PHP            
       PLP            
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF2     
       CPX    #$06    
       BPL    LF294   
       LDA    LFE94,Y 
       AND    #$F0    
       DEY            
LF294: STA    PF1     
       PHP            
       PLP            
       PHP            
       PLP            
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEX            
       BPL    LF263   
       JMP    LF379   
LF2A8: LDX    #$18    
LF2AA: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEX            
       BPL    LF2AA   
       BIT    $98     
       BPL    LF2BD   
       BMI    LF320   
LF2BD: LDA    $98     
       AND    #$7F    
       TAX            
       LDY    #$05    
LF2C4: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    LFE94,X 
       AND    #$0F    
       STA    PF2     
       LDA    #$00    
       STA    PF0     
       LDA    ($8C),Y 
       AND    #$F0    
       STA    $87     
       LDA    ($8A),Y 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $87     
       STA    PF1     
       LDA    ($88),Y 
       AND    #$0F    
       STA    PF2     
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    LFE94,X 
       AND    #$0F    
       STA    PF2     
       LDA    #$00    
       STA    PF0     
       LDA    ($8C),Y 
       AND    #$F0    
       STA    $87     
       LDA    ($8A),Y 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $87     
       STA    PF1     
       LDA    ($88),Y 
       AND    #$0F    
       STA    PF2     
       DEX            
       DEY            
       BPL    LF2C4   
       BMI    LF379   
LF320: LDA    $98     
       AND    #$7F    
       TAX            
       LDY    #$05    
LF327: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    LFE94,X 
       AND    #$0F    
       STA    PF2     
       LDA    ($92),Y 
       AND    #$F0    
       STA    $87     
       LDA    ($90),Y 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $87     
       STA    PF1     
       LDA    ($8E),Y 
       AND    #$0F    
       STA    PF2     
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    LFE94,X 
       AND    #$0F    
       STA    PF2     
       LDA    ($92),Y 
       AND    #$F0    
       STA    $87     
       LDA    ($90),Y 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $87     
       STA    PF1     
       LDA    ($8E),Y 
       AND    #$0F    
       STA    PF2     
       DEX            
       DEY            
       BPL    LF327   
LF379: LDA    #$01    
       STA    CTRLPF  
       LDA    #$43    
       STA    $80     
LF381: LDX    #$06    
       STX    $AA     
       LDX    $80     
LF387: STA    WSYNC   
       LDA    LFD62,X 
       STA    PF0     
       LDA    LFDA6,X 
       STA    PF1     
       LDA    LFDEA,X 
       STA    PF2     
       LDA    $9A     
       SEC            
       SBC    $9C     
       TAY            
       AND    #$F8    
       BNE    LF3A6   
       LDA    ($A0),Y 
       STA    GRP0    
LF3A6: STA    WSYNC   
       LDA    $9A     
       SEC            
       SBC    $A3     
       TAY            
       AND    #$F8    
       BNE    LF3B6   
       LDA    ($A7),Y 
       STA    GRP1    
LF3B6: DEX            
       BMI    LF420   
       DEC    $9A     
       DEC    $AA     
       BPL    LF387   
       STX    $80     
       LDA    $9A     
       SEC            
       SBC    $A3     
       TAY            
       AND    #$F8    
       BEQ    LF3CD   
       LDY    #$00    
LF3CD: LDX    $A9     
       STA    WSYNC   
       LDA    $C3,X   
       STA    PF0     
       LDA    $CC,X   
       STA    PF1     
       LDA    $D5,X   
       STA    PF2     
       LDA    ($A7),Y 
       STA    GRP1    
       LDA    $DE,X   
       STA    PF0     
       LDA    $E7,X   
       STA    PF1     
       LDA    $F0,X   
       STA    PF2     
       LDA    $9A     
       SEC            
       SBC    $9C     
       TAY            
       AND    #$F8    
       BEQ    LF3F9   
       LDY    #$00    
LF3F9: STA    WSYNC   
       LDA    $C3,X   
       STA    PF0     
       LDA    $CC,X   
       STA    PF1     
       LDA    $D5,X   
       STA    PF2     
       LDA    ($A0),Y 
       STA    GRP0    
       NOP            
       LDA    $DE,X   
       STA    PF0     
       LDA    $E7,X   
       STA    PF1     
       LDA    $F0,X   
       STA    PF2     
       DEX            
       STX    $A9     
       DEC    $9A     
       JMP    LF381   
LF420: LDA    #$02    
       STA    VBLANK  
       STA    WSYNC   
       LDA    #$24    
       STA    TIM64T  
       JSR    LF577   
       LDA    $86     
       AND    #$3F    
       BEQ    LF439   
       DEC    $86     
       JMP    LF4EA   
LF439: LDA    $94     
       AND    #$3F    
       BEQ    LF444   
       DEC    $94     
       JMP    LF4E0   
LF444: LDA    $96     
       AND    #$07    
       TAX            
       BNE    LF47F   
       LDA    $A4     
       AND    #$0F    
       BNE    LF4A2   
       LDA    CXPPMM  
       BPL    LF4C6   
       LDY    #$0E    
       STY    $A4     
       STY    $85     
       STY    COLUP1  
       STY    COLUP0  
       LDY    #$08    
       STY    AUDC0   
       LDA    #$6C    
LF465: CLC            
       ADC    #$08    
       STA    $A0     
       STA    $A7     
       LDA    #$00    
       ADC    #$FE    
       STA    $A1     
       STA    $A8     
       LDX    #$07    
       TXA            
       ORA    $96     
       STA    $96     
       INC    $A2     
       DEC    $9B     
LF47F: LDY    $85     
       CPX    #$04    
       BNE    LF487   
       DEC    $85     
LF487: BIT    $95     
       BPL    LF48D   
       LDY    #$00    
LF48D: STY    AUDV0   
       TYA            
       LSR            
       TAY            
       LDA    LFED0,Y 
       STA    AUDF0   
       DEC    $96     
       DEX            
       BNE    LF4E0   
       LDA    $A0     
       CMP    #$8C    
       BNE    LF465   
LF4A2: LDA    #$00    
       STA    AUDV0   
       DEC    $A4     
       BNE    LF4E0   
       JSR    LF4F2   
       JSR    LF032   
       JSR    LF506   
       LDA    SWCHB   
       ASL            
       BMI    LF4C3   
       ROL    $84     
       CLC            
       ROR    $84     
       ROL    $83     
       CLC            
       ROR    $83     
LF4C3: JMP    LF4EA   
LF4C6: LDA    $81     
       AND    #$7F    
       BEQ    LF4E0   
       JSR    LF5BF   
       BIT    $98     
       BPL    LF4D9   
       BIT    $84     
       BVC    LF4E0   
       BVS    LF4DD   
LF4D9: BIT    $83     
       BVC    LF4E0   
LF4DD: JSR    LF5A0   
LF4E0: INC    $82     
       BNE    LF4EA   
       BIT    $95     
       BPL    LF4EA   
       INC    $97     
LF4EA: LDX    INTIM   
       BNE    LF4EA   
       JMP    LF0E4   
LF4F2: BIT    $94     
       BPL    LF4FE   
       LDA    $98     
       EOR    #$80    
       STA    $98     
       BMI    LF505   
LF4FE: BIT    $95     
       BMI    LF505   
       JSR    LFB7C   
LF505: RTS            

LF506: LDA    #$00    
       STA    $86     
       STA    HMCLR   
       STA    $A5     
       STA    $B8     
       STA    $B9     
       STA    $A3     
       RTS            

LF515: LDA    #$64    
       STA    $BA     
       LDA    #$FE    
       STA    $BB     
       RTS            

LF51E: LDA    #$64    
       STA    $A0     
       LDA    #$FE    
       STA    $A1     
       RTS            

LF527: LDA    #$64    
       STA    $A7     
       LDA    #$FE    
       STA    $A8     
       RTS            

LF530: BVS    LF540   
       LDA    $83,X   
       AND    #$20    
       BEQ    LF540   
       LDA    $83,X   
       AND    #$0F    
       ORA    #$40    
       BNE    LF550   
LF540: LDA    SWCHB   
       ASL            
       BPL    LF54C   
       LDA    #$80    
       ORA    $83,X   
       STA    $83,X   
LF54C: LDA    $83,X   
       ORA    #$20    
LF550: STA    $83,X   
       RTS            

LF553: LDX    #$0E    
       STX    AUDF0   
       STX    AUDC0   
       LDA    #$02    
       STA    AUDV0   
       LDA    #$00    
       STA    $82     
       STA    $95     
       STA    $A6     
       STA    $9F     
       RTS            

LF568: JSR    LFC41   
       ROL    $95     
       CLC            
       ROR    $95     
       JSR    LF032   
       JSR    LF506   
       RTS            

LF577: BIT    $95     
       BMI    LF59F   
       LDA    $A4     
       AND    #$0F    
       BNE    LF59F   
       LDX    #$03    
       LDY    #$07    
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF58E   
       LDY    #$03    
LF58E: LDA    LFF2C,Y 
       STA    COLUP0,X
       DEY            
       DEX            
       BPL    LF58E   
       BIT    $98     
       BPL    LF59F   
       LDA    #$C8    
       STA    COLUP1  
LF59F: RTS            

LF5A0: LDX    #$06    
       LDA    $82     
       ROR            
       BCC    LF5B3   
LF5A7: LDA    $9B,X   
       STA    $B5,X   
       LDA    $BC,X   
       STA    $9B,X   
       DEX            
       BPL    LF5A7   
       RTS            

LF5B3: LDA    $9B,X   
       STA    $BC,X   
       LDA    $B5,X   
       STA    $9B,X   
       DEX            
       BPL    LF5B3   
       RTS            

LF5BF: LDA    $9D     
       BMI    LF5D3   
       ASL            
       BPL    LF5C9   
       JMP    LF67E   
LF5C9: ASL            
       BPL    LF5CF   
       JMP    LF716   
LF5CF: ASL            
       JMP    LF7C1   
LF5D3: LDX    $9E     
       LDA    $9C     
       SEC            
       SBC    LFEEA,X 
       AND    #$FE    
       BNE    LF5E9   
       JSR    LF51E   
       LDA    #$40    
       STA    $9D     
       JMP    LF67E   
LF5E9: LDY    #$00    
       STY    HMP0    
       BIT    $95     
       BPL    LF5F4   
       JMP    LF66C   
LF5F4: LDX    $9F     
       BNE    LF656   
       LDA    $9C     
       CMP    #$20    
       BNE    LF66C   
       LDX    #$08    
       BIT    $94     
       BVC    LF631   
       BIT    $98     
       BMI    LF627   
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       BCC    LF61E   
       LSR            
       BCS    LF66C   
LF613: LDA    $9E     
       CMP    #$03    
       BEQ    LF66C   
       JSR    LFB66   
       BNE    LF653   
LF61E: LDA    $9E     
       BEQ    LF66C   
       JSR    LFB6C   
       BNE    LF653   
LF627: LDA    SWCHA   
       BPL    LF613   
       ASL            
       BMI    LF66C   
       BPL    LF61E   
LF631: LDA    SWCHB   
       ASL            
       BMI    LF649   
       BIT    $98     
       BPL    LF643   
       LDA    $84     
       AND    #$F0    
       BEQ    LF66C   
       BNE    LF627   
LF643: LDA    $83     
       AND    #$F0    
       BEQ    LF66C   
LF649: SEC            
       LDA    $A5     
       SBC    $9E     
       BEQ    LF66C   
       JSR    LFB72   
LF653: JSR    LFC14   
LF656: LDA    $81     
       BPL    LF663   
       JSR    LFC06   
       JSR    LFC2C   
       JMP    LF669   
LF663: JSR    LFBF4   
       JSR    LFC3B   
LF669: STX    $9F     
       RTS            

LF66C: INC    $9C     
       BIT    $98     
       BPL    LF677   
       LDA    $84     
       BMI    LF67B   
       RTS            

LF677: LDA    $83     
       BPL    LF67D   
LF67B: INC    $9C     
LF67D: RTS            

LF67E: LDX    $9E     
       LDA    $9B     
       SEC            
       SBC    LFEF2,X 
       AND    #$FE    
       BNE    LF699   
       LDA    #$6C    
       STA    $A0     
       LDA    #$FE    
       STA    $A1     
       LDA    #$20    
       STA    $9D     
       JMP    LF716   
LF699: BIT    $95     
       BMI    LF6FD   
       LDX    $9F     
       BNE    LF6E7   
       LDA    $9B     
       CMP    #$50    
       BNE    LF6FD   
       LDX    #$04    
       BIT    $94     
       BVC    LF6DA   
       BIT    $98     
       BMI    LF6CE   
       LDA    SWCHA   
       LSR            
       BCC    LF6C5   
       LSR            
       BCS    LF6FD   
LF6BA: LDA    $9E     
       CMP    #$03    
       BEQ    LF6FD   
       JSR    LFB66   
       BNE    LF6E4   
LF6C5: LDA    $9E     
       BEQ    LF6FD   
       JSR    LFB6C   
       BNE    LF6E4   
LF6CE: LDA    SWCHA   
       ASL            
       ASL            
       BPL    LF6BA   
       ASL            
       BMI    LF6FD   
       BPL    LF6C5   
LF6DA: SEC            
       LDA    $A5     
       SBC    $9E     
       BEQ    LF6FD   
       JSR    LFB72   
LF6E4: JSR    LFBF4   
LF6E7: LDA    $81     
       BPL    LF6F4   
       JSR    LFC14   
       JSR    LFC2C   
       JMP    LF6FA   
LF6F4: JSR    LFC1E   
       JSR    LFC3B   
LF6FA: STX    $9F     
       RTS            

LF6FD: LDY    #$F0    
       INC    $9B     
       BIT    $98     
       BPL    LF70B   
       LDA    $84     
       BMI    LF70F   
       BPL    LF713   
LF70B: LDA    $83     
       BPL    LF713   
LF70F: LDY    #$E0    
       INC    $9B     
LF713: STY    HMP0    
       RTS            

LF716: LDX    $9E     
       LDA    LFEEE,X 
       SEC            
       SBC    $9C     
       AND    #$FE    
       BNE    LF72C   
       JSR    LF51E   
       LDA    #$10    
       STA    $9D     
       JMP    LF7C1   
LF72C: LDY    #$00    
       STY    HMP0    
       BIT    $95     
       BPL    LF737   
       JMP    LF7AF   
LF737: LDX    $9F     
       BNE    LF799   
       LDA    $9C     
       CMP    #$22    
       BNE    LF7AF   
       LDX    #$08    
       BIT    $94     
       BVC    LF774   
       BIT    $98     
       BMI    LF76A   
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       BCC    LF75F   
       LSR            
       BCS    LF7AF   
LF756: LDA    $9E     
       BEQ    LF7AF   
       JSR    LFB6C   
       BNE    LF796   
LF75F: LDA    $9E     
       CMP    #$03    
       BEQ    LF7AF   
       JSR    LFB66   
       BNE    LF796   
LF76A: LDA    SWCHA   
       BPL    LF756   
       ASL            
       BMI    LF7AF   
       BPL    LF75F   
LF774: LDA    SWCHB   
       ASL            
       BMI    LF78C   
       BIT    $98     
       BPL    LF786   
       LDA    $84     
       AND    #$F0    
       BEQ    LF7AF   
       BNE    LF76A   
LF786: LDA    $83     
       AND    #$F0    
       BEQ    LF7AF   
LF78C: SEC            
       LDA    $A5     
       SBC    $9E     
       BEQ    LF7AF   
       JSR    LFB72   
LF796: JSR    LFC1E   
LF799: LDA    $81     
       BPL    LF7A6   
       JSR    LFBF4   
       JSR    LFC2C   
       JMP    LF7AC   
LF7A6: JSR    LFC06   
       JSR    LFC3B   
LF7AC: STX    $9F     
       RTS            

LF7AF: DEC    $9C     
       BIT    $98     
       BPL    LF7BA   
       LDA    $84     
       BMI    LF7BE   
       RTS            

LF7BA: LDA    $83     
       BPL    LF7C0   
LF7BE: DEC    $9C     
LF7C0: RTS            

LF7C1: LDX    $9E     
       LDA    LFEF6,X 
       SEC            
       SBC    $9B     
       AND    #$FE    
       BNE    LF7DC   
       LDA    #$6C    
       STA    $A0     
       LDA    #$FE    
       STA    $A1     
       LDA    #$80    
       STA    $9D     
       JMP    LF5D3   
LF7DC: BIT    $95     
       BMI    LF840   
       LDX    $9F     
       BNE    LF82A   
       LDA    $9B     
       CMP    #$48    
       BNE    LF840   
       LDX    #$04    
       BIT    $94     
       BVC    LF81D   
       BIT    $98     
       BMI    LF811   
       LDA    SWCHA   
       LSR            
       BCC    LF806   
       LSR            
       BCS    LF840   
LF7FD: LDA    $9E     
       BEQ    LF840   
       JSR    LFB6C   
       BNE    LF827   
LF806: LDA    $9E     
       CMP    #$03    
       BEQ    LF840   
       JSR    LFB66   
       BNE    LF827   
LF811: LDA    SWCHA   
       ASL            
       ASL            
       BPL    LF7FD   
       ASL            
       BMI    LF840   
       BPL    LF806   
LF81D: SEC            
       LDA    $A5     
       SBC    $9E     
       BEQ    LF840   
       JSR    LFB72   
LF827: JSR    LFC06   
LF82A: LDA    $81     
       BPL    LF837   
       JSR    LFC1E   
       JSR    LFC2C   
       JMP    LF83D   
LF837: JSR    LFC14   
       JSR    LFC3B   
LF83D: STX    $9F     
       RTS            

LF840: LDY    #$10    
       DEC    $9B     
       BIT    $98     
       BPL    LF84E   
       LDA    $84     
       BMI    LF852   
       BPL    LF856   
LF84E: LDA    $83     
       BPL    LF856   
LF852: LDY    #$20    
       DEC    $9B     
LF856: STY    HMP0    
       RTS            

LF859: LDA    #$80    
       STA    $AB     
       LDA    $A4     
       BMI    LF86E   
       ASL            
       BPL    LF867   
       JMP    LF949   
LF867: ASL            
       BMI    LF8B6   
       ASL            
       JMP    LF901   
LF86E: BIT    $95     
       BMI    LF876   
       LDA    $A6     
       BNE    LF8A9   
LF876: LDX    $A5     
       LDA    $A3     
       SEC            
       SBC    LFEEA,X 
       AND    #$FE    
       BEQ    LF8AC   
       LDY    $A5     
LF884: BEQ    LF88B   
       LSR    $AB     
       DEY            
       BPL    LF884   
LF88B: LDX    #$08    
LF88D: LDA    $A3     
       SEC            
       SBC    LFF1A,X 
       AND    #$FE    
       BNE    LF8A6   
       LDA    $AC,X   
       AND    $AB     
       BEQ    LF8A6   
       EOR    $AC,X   
       STA    $AC,X   
       JSR    LFCF5   
       BNE    LF8A9   
LF8A6: DEX            
       BPL    LF88D   
LF8A9: JMP    LF98B   
LF8AC: JSR    LF527   
       LDA    #$10    
       STA    $A4     
       JMP    LFAC6   
LF8B6: BIT    $95     
       BMI    LF8BE   
       LDA    $A6     
       BNE    LF8F4   
LF8BE: LDX    $A5     
       LDA    LFEEE,X 
       SEC            
       SBC    $A3     
       AND    #$FE    
       BEQ    LF8F7   
       LDA    #$01    
       LDY    $A5     
LF8CE: BEQ    LF8D4   
       ASL            
       DEY            
       BPL    LF8CE   
LF8D4: STA    $AB     
       LDX    #$08    
LF8D8: LDA    $A3     
       SEC            
       SBC    LFF23,X 
       AND    #$FE    
       BNE    LF8F1   
       LDA    $AC,X   
       AND    $AB     
       BEQ    LF8F1   
       EOR    $AC,X   
       STA    $AC,X   
       JSR    LFCF5   
       BNE    LF8F4   
LF8F1: DEX            
       BPL    LF8D8   
LF8F4: JMP    LF9F3   
LF8F7: JSR    LF527   
       LDA    #$40    
       STA    $A4     
       JMP    LFA59   
LF901: BIT    $95     
       BMI    LF909   
       LDA    $A6     
       BNE    LF934   
LF909: LDX    $A5     
       LDA    $A2     
       SEC            
       SBC    LFEF6,X 
       AND    #$FE    
       BEQ    LF93F   
       LDA    #$08    
       SEC            
       SBC    $A5     
       TAX            
       LDY    #$07    
LF91D: LDA    $A2     
       SEC            
       SBC    LFF0A,Y 
       AND    #$FE    
       BNE    LF937   
       LDA    $AC,X   
       AND    $AB     
       BEQ    LF937   
       EOR    $AC,X   
       STA    $AC,X   
       JSR    LFCF5   
LF934: JMP    LFAC6   
LF937: LSR    $AB     
       DEY            
       BPL    LF91D   
       JMP    LFAC6   
LF93F: JSR    LFB5D   
       LDA    #$20    
       STA    $A4     
       JMP    LF9F3   
LF949: BIT    $95     
       BMI    LF951   
       LDA    $A6     
       BNE    LF979   
LF951: LDX    $A5     
       LDA    LFEF2,X 
       CMP    $A2     
       BEQ    LF984   
       TAY            
       INY            
       CPY    $A2     
       BEQ    LF984   
       LDY    #$07    
LF962: LDA    $A2     
       SEC            
       SBC    LFF12,Y 
       AND    #$FE    
       BNE    LF97C   
       LDA    $AC,X   
       AND    $AB     
       BEQ    LF97C   
       EOR    $AC,X   
       STA    $AC,X   
       JSR    LFCF5   
LF979: JMP    LFA59   
LF97C: LSR    $AB     
       DEY            
       BPL    LF962   
       JMP    LFA59   
LF984: JSR    LFB5D   
       LDA    #$80    
       STA    $A4     
LF98B: LDY    #$00    
       STY    HMP1    
       BIT    $95     
       BMI    LF9E2   
       LDX    $A6     
       BNE    LF9E5   
       BIT    $86     
       BVS    LF9AA   
       JSR    LFBA8   
       SEC            
       LDA    $A3     
       SBC    #$19    
       AND    #$FC    
       BNE    LF9D8   
       JSR    LFB3D   
LF9AA: LDX    #$08    
LF9AC: BIT    $97     
       BPL    LF9C1   
       BVS    LF9D8   
       LDA    $A5     
       CMP    #$03    
       BEQ    LF9EC   
       JSR    LFBFD   
       JSR    LFC32   
       JMP    LF9CD   
LF9C1: LDA    $A5     
       AND    #$03    
       BEQ    LF9EC   
       JSR    LFBEB   
       JSR    LFC23   
LF9CD: JSR    LFBBE   
       STX    $A6     
       LDA    $82     
       AND    #$03    
       BNE    LF9E4   
LF9D8: JSR    LFB33   
       BMI    LF9E2   
       JSR    LFBB5   
       INC    $A3     
LF9E2: INC    $A3     
LF9E4: RTS            

LF9E5: LDA    $82     
       ROR            
       BCC    LF9AC   
       BCS    LF9E4   
LF9EC: LDX    #$00    
       STX    $86     
       JMP    LF9CD   
LF9F3: LDY    #$00    
       STY    HMP1    
       BIT    $95     
       BMI    LFA48   
       LDX    $A6     
       BNE    LFA4B   
       BIT    $86     
       BVS    LFA12   
       JSR    LFBA8   
       SEC            
       LDA    $A3     
       SBC    #$25    
       AND    #$FC    
       BNE    LFA3E   
       JSR    LFB3D   
LFA12: LDX    #$08    
LFA14: BIT    $97     
       BPL    LFA27   
       BVS    LFA3E   
       LDA    $A5     
       BEQ    LFA52   
       JSR    LFBFD   
       JSR    LFC23   
       JMP    LFA33   
LFA27: LDA    $A5     
       CMP    #$03    
       BEQ    LFA52   
       JSR    LFBEB   
       JSR    LFC32   
LFA33: JSR    LFBBE   
       STX    $A6     
       LDA    $82     
       AND    #$03    
       BNE    LFA4A   
LFA3E: JSR    LFB33   
       BMI    LFA48   
       JSR    LFBB5   
       DEC    $A3     
LFA48: DEC    $A3     
LFA4A: RTS            

LFA4B: LDA    $82     
       ROR            
       BCC    LFA14   
       BCS    LFA4A   
LFA52: LDX    #$00    
       STX    $86     
       JMP    LFA33   
LFA59: BIT    $95     
       BMI    LFAB2   
       LDX    $A6     
       BNE    LFAB7   
       BIT    $86     
       BVS    LFA78   
       JSR    LFBA8   
       SEC            
       LDA    $A2     
       SBC    #$44    
       AND    #$FC    
       BNE    LFAA4   
       JSR    LFB3D   
       ASL    $97     
       ASL    $97     
LFA78: LDX    #$04    
LFA7A: BIT    $97     
       BPL    LFA8F   
       BVS    LFAA4   
       LDA    $A5     
       CMP    #$03    
       BEQ    LFABF   
       JSR    LFC0F   
       JSR    LFC32   
       JMP    LFA99   
LFA8F: LDA    $A5     
       BEQ    LFABF   
       JSR    LFC19   
       JSR    LFC23   
LFA99: JSR    LFBBE   
       STX    $A6     
       LDA    $82     
       AND    #$03    
       BNE    LFAB6   
LFAA4: LDX    #$F0    
       JSR    LFB33   
       BMI    LFAB2   
       JSR    LFBB5   
       LDX    #$E0    
       INC    $A2     
LFAB2: STX    HMP1    
       INC    $A2     
LFAB6: RTS            

LFAB7: LDA    $82     
       AND    #$03    
       BEQ    LFA7A   
       BNE    LFAB6   
LFABF: LDX    #$00    
       STX    $86     
       JMP    LFA99   
LFAC6: BIT    $95     
       BMI    LFB1F   
       LDX    $A6     
       BNE    LFB24   
       BIT    $86     
       BVS    LFAE5   
       JSR    LFBA8   
       SEC            
       LDA    $A2     
       SBC    #$53    
       AND    #$FC    
       BNE    LFB11   
       JSR    LFB3D   
       ASL    $97     
       ASL    $97     
LFAE5: LDX    #$04    
LFAE7: BIT    $97     
       BPL    LFAFA   
       BVS    LFB11   
       LDA    $A5     
       BEQ    LFB2C   
       JSR    LFC0F   
       JSR    LFC23   
       JMP    LFB06   
LFAFA: LDA    $A5     
       CMP    #$03    
       BEQ    LFB2C   
       JSR    LFC19   
       JSR    LFC32   
LFB06: JSR    LFBBE   
       STX    $A6     
       LDA    $82     
       AND    #$03    
       BNE    LFB23   
LFB11: LDX    #$10    
       JSR    LFB33   
       BMI    LFB1F   
       JSR    LFBB5   
       LDX    #$20    
       DEC    $A2     
LFB1F: STX    HMP1    
       DEC    $A2     
LFB23: RTS            

LFB24: LDA    $82     
       AND    #$03    
       BEQ    LFAE7   
       BNE    LFB23   
LFB2C: LDX    #$00    
       STX    $86     
       JMP    LFB06   
LFB33: BIT    $98     
       BPL    LFB3A   
       LDA    INPT5   
       RTS            

LFB3A: LDA    INPT4   
       RTS            

LFB3D: BIT    $98     
       BPL    LFB51   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $97     
       LDA    INPT5   
       AND    #$80    
       STA    $86     
       RTS            

LFB51: LDA    SWCHA   
       STA    $97     
       LDA    INPT4   
       AND    #$80    
       STA    $86     
       RTS            

LFB5D: LDA    #$6C    
       STA    $A7     
       LDA    #$FE    
       STA    $A8     
       RTS            

LFB66: ROL    $81     
       CLC            
       ROR    $81     
       RTS            

LFB6C: ROL    $81     
       SEC            
       ROR    $81     
       RTS            

LFB72: BPL    LFB78   
       JSR    LFB6C   
       RTS            

LFB78: JSR    LFB66   
       RTS            

LFB7C: LDA    $98     
       AND    #$7F    
       CMP    #$0B    
       BEQ    LFB9A   
       SEC            
       SBC    #$06    
       STA    $98     
       LDA    $84     
       AND    #$F0    
       ORA    #$04    
       STA    $84     
       LDA    $83     
       AND    #$F0    
       ORA    #$04    
       STA    $83     
       RTS            

LFB9A: LDA    #$05    
       STA    $98     
       LDA    #$00    
       STA    AUDV0   
       ROL    $95     
       SEC            
       ROR    $95     
       RTS            

LFBA8: BIT    $95     
       BMI    LFBB4   
       LDX    WSYNC   
       STX    AUDC0   
       STX    AUDV0   
       STX    AUDF0   
LFBB4: RTS            

LFBB5: LDA    #$00    
       STA    AUDF0   
       LDA    #$03    
       STA    AUDV0   
       RTS            

LFBBE: LDA    LFED8,X 
       STA    AUDF0   
       LDA    #$03    
       STA    AUDC1   
       LDA    LFEE0,X 
       STA    AUDC0   
       LDA    #$01    
       STA    AUDF1   
       LDA    #$06    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LFBD7: LDA    $86     
       BPL    LFBE7   
       LDA    SWCHA   
       CMP    #$FF    
       BEQ    LFBE7   
       LDA    #$40    
LFBE4: STA    $86     
       RTS            

LFBE7: LDA    #$00    
       BEQ    LFBE4   
LFBEB: LDA    #$E0    
       STA    HMP1    
       INC    $A2     
       INC    $A2     
       RTS            

LFBF4: LDA    #$E0    
       STA    HMP0    
       INC    $9B     
       INC    $9B     
       RTS            

LFBFD: LDA    #$20    
       STA    HMP1    
       DEC    $A2     
       DEC    $A2     
       RTS            

LFC06: LDA    #$20    
       STA    HMP0    
       DEC    $9B     
       DEC    $9B     
       RTS            

LFC0F: INC    $A3     
       INC    $A3     
       RTS            

LFC14: INC    $9C     
       INC    $9C     
       RTS            

LFC19: DEC    $A3     
       DEC    $A3     
       RTS            

LFC1E: DEC    $9C     
       DEC    $9C     
       RTS            

LFC23: DEX            
       BNE    LFC2B   
       DEC    $A5     
       JSR    LFBD7   
LFC2B: RTS            

LFC2C: DEX            
       BNE    LFC31   
       DEC    $9E     
LFC31: RTS            

LFC32: DEX            
       BNE    LFC3A   
       INC    $A5     
       JSR    LFBD7   
LFC3A: RTS            

LFC3B: DEX            
       BNE    LFC40   
       INC    $9E     
LFC40: RTS            

LFC41: LDA    #$94    
       STA    $8A     
       STA    $88     
       STA    $8C     
       STA    $90     
       STA    $8E     
       STA    $92     
       LDA    #$FE    
       STA    $8B     
       STA    $89     
       STA    $8D     
       STA    $91     
       STA    $8F     
       STA    $93     
       ROL    $95     
       SEC            
       ROR    $95     
       LDA    #$00    
       STA    AUDV0   
       LDA    #$17    
       STA    $98     
       LDA    #$04    
       STA    $84     
       STA    $83     
       RTS            

LFC71: LDA    $8E     
       CMP    #$CA    
       BNE    LFCA7   
       LDA    #$FE    
       STA    $8F     
       LDA    #$94    
       STA    $8E     
       LDA    $90     
       CMP    #$CA    
       BNE    LFC9B   
       LDA    #$94    
       STA    $90     
       LDA    #$FE    
       STA    $91     
       LDA    $92     
       CLC            
       ADC    #$06    
       STA    $92     
       LDA    #$00    
       ADC    $93     
       STA    $93     
       RTS            

LFC9B: CLC            
       ADC    #$06    
       STA    $90     
       LDA    #$00    
       ADC    $91     
       STA    $91     
       RTS            

LFCA7: CLC            
       ADC    #$06    
       STA    $8E     
       LDA    #$00    
       ADC    $8F     
       STA    $8F     
       RTS            

LFCB3: LDA    $88     
       CMP    #$CA    
       BNE    LFCE9   
       LDA    #$FE    
       STA    $89     
       LDA    #$94    
       STA    $88     
       LDA    $8A     
       CMP    #$CA    
       BNE    LFCDD   
       LDA    #$94    
       STA    $8A     
       LDA    #$FE    
       STA    $8B     
       LDA    $8C     
       CLC            
       ADC    #$06    
       STA    $8C     
       LDA    #$00    
       ADC    $8D     
       STA    $8D     
       RTS            

LFCDD: CLC            
       ADC    #$06    
       STA    $8A     
       LDA    #$00    
       ADC    $8B     
       STA    $8B     
       RTS            

LFCE9: CLC            
       ADC    #$06    
       STA    $88     
       LDA    #$00    
       ADC    $89     
       STA    $89     
       RTS            

LFCF5: BIT    $95     
       BMI    LFD14   
       DEC    $81     
       BIT    $98     
       BPL    LFD05   
       JSR    LFC71   
       JMP    LFD08   
LFD05: JSR    LFCB3   
LFD08: LDA    #$06    
       STA    AUDV1   
       LDA    #$01    
       STA    AUDC1   
       LDA    #$04    
       STA    AUDF1   
LFD14: LDA    $AB     
       BPL    LFD1F   
       LDA    $DE,X   
       AND    #$BF    
       STA    $DE,X   
       RTS            

LFD1F: ASL            
       BPL    LFD29   
       LDA    $E7,X   
       AND    #$DF    
       STA    $E7,X   
       RTS            

LFD29: ASL            
       BPL    LFD33   
       LDA    $E7,X   
       AND    #$FD    
       STA    $E7,X   
       RTS            

LFD33: ASL            
       BPL    LFD3D   
       LDA    $F0,X   
       AND    #$FB    
       STA    $F0,X   
       RTS            

LFD3D: ASL            
       BPL    LFD47   
       LDA    $D5,X   
       AND    #$FB    
       STA    $D5,X   
       RTS            

LFD47: ASL            
       BPL    LFD51   
       LDA    $CC,X   
       AND    #$FD    
       STA    $CC,X   
       RTS            

LFD51: ASL            
       BPL    LFD5B   
       LDA    $CC,X   
       AND    #$DF    
       STA    $CC,X   
       RTS            

LFD5B: LDA    $C3,X   
       AND    #$BF    
       STA    $C3,X   
       RTS            

LFD62: .byte $00,$F0,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $F0,$00,$00,$00
LFDA6: .byte $00,$FF,$00,$00,$00,$00,$00,$00,$FF,$80,$80,$80,$80,$80,$80,$8F
       .byte $88,$88,$88,$88,$88,$88,$88,$88,$88,$88,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$88,$88,$88,$88,$88,$88,$88,$88
       .byte $88,$88,$8F,$80,$80,$80,$80,$80,$80,$FF,$00,$00,$00,$00,$00,$00
       .byte $FF,$00,$00,$00
LFDEA: .byte $00,$1F,$00,$00,$00,$00,$00,$00,$1F,$00,$00,$00,$00,$00,$00,$1F
       .byte $00,$00,$00,$00,$00,$00,$1F,$01,$01,$01,$00,$00,$00,$F0,$10,$10
       .byte $10,$10,$10,$10,$F0,$00,$00,$00,$01,$01,$01,$1F,$00,$00,$00,$00
       .byte $00,$00,$1F,$00,$00,$00,$00,$00,$00,$1F,$00,$00,$00,$00,$00,$00
       .byte $1F,$00,$00,$00
LFE2E: .byte $50,$50,$50,$50,$00,$50,$50,$50,$50
LFE37: .byte $22,$A2,$AA,$AA,$00,$AA,$AA,$A2,$22
LFE40: .byte $04,$04,$04,$05,$00,$05,$04,$04,$04
LFE49: .byte $50,$50,$50,$50,$00,$50,$50,$50,$50
LFE52: .byte $22,$A2,$AA,$AA,$00,$AA,$AA,$A2,$22
LFE5B: .byte $04,$04,$04,$05,$00,$05,$04,$04,$04,$00,$00,$00,$C3,$3C,$FF,$3C
       .byte $C3,$00,$5A,$5A,$3C,$3C,$3C,$5A,$5A,$00,$00,$10,$1A,$1F,$1B,$17
       .byte $03,$00,$00,$0A,$0D,$1F,$1D,$1A,$0C,$00,$00,$34,$16,$7F,$7E,$79
       .byte $20,$00,$00,$00,$20,$F8,$F3,$72,$40
LFE94: .byte $00,$E7,$A5,$A5,$A5,$E7,$00,$E7,$42,$42,$C3,$42,$00,$E7,$81,$E7
       .byte $24,$E7,$00,$E7,$24,$66,$24,$E7,$00,$24,$24,$E7,$A5,$A5,$00,$E7
       .byte $24,$E7,$81,$E7,$00,$E7,$A5,$E7,$81,$E7,$00,$81,$81,$42,$24,$E7
       .byte $00,$E7,$A5,$E7,$A5,$E7,$00,$E7,$24,$E7,$A5,$E7
LFED0: .byte $0F,$0A,$0A,$08,$08,$06,$04,$01
LFED8: .byte $01,$01,$00,$00,$00,$02,$02,$08
LFEE0: .byte $08,$08,$05,$05,$05,$03,$08,$08
LFEE8: .byte $40
LFEE9: .byte $5A
LFEEA: .byte $40,$38,$30,$28
LFEEE: .byte $00,$08,$10,$18
LFEF2: .byte $92,$82,$72,$62
LFEF6: .byte $04,$14,$24,$34
LFEFA: .byte $00,$10,$24,$24
LFEFE: .byte $40,$40,$04,$24
LFF02: .byte $10,$10,$80,$80
LFF06: .byte $00,$02,$00,$02
LFF0A: .byte $0B,$1B,$2B,$3B,$68,$78,$88,$98
LFF12: .byte $01,$11,$21,$31,$5D,$6D,$7D,$8D
LFF1A: .byte $FE,$06,$0E,$16,$FE,$26,$2E,$36,$3E
LFF23: .byte $04,$0B,$13,$1B,$FF,$2B,$33,$3B,$44
LFF2C: .byte $7A,$26,$44,$00,$02,$0E,$04,$08,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$F0,$00,$00
