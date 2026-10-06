; Disassembly of roms/Homerun (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Homerun (32 in 1) (PAL).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
RESP0   =  $10
AUDC1   =  $16
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
VDELBL  =  $27
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXM1FB  =  $35
CXBLPF  =  $36
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF244   =   $F244
LF472   =   $F472
LF505   =   $F505
LF6F4   =   $F6F4
LF6FF   =   $F6FF
LF749   =   $F749
LF74C   =   $F74C
LF78E   =   $F78E
LF792   =   $F792
LF7BD   =   $F7BD
LF7CA   =   $F7CA
LF7DB   =   $F7DB
LF7E1   =   $F7E1

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
LF004: TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       DEC    $B9     
       JMP    LF286   
LF011: INC    $80     
       BNE    LF01B   
       INC    $81     
       BNE    LF01B   
       STX    $B5     
LF01B: STX    WSYNC   
       STX    VBLANK  
       STX    VSYNC   
       STA    WSYNC   
       INX            
       STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$49    
       STA    TIM64T  
       STX    AUDC1   
       LDA    $B5     
       BEQ    LF038   
       JMP    LF1C6   
LF038: LDA    $83     
       BPL    LF08D   
       LDA    $AB     
       AND    #$08    
LF040: BEQ    LF08D   
       LDX    $82     
       CPX    #$08    
       LDA    $85     
       ORA    $86     
       BCS    LF04E   
       BEQ    LF07E   
LF04E: BEQ    LF08D   
       CPX    #$38    
       BCS    LF08D   
       CPX    #$30    
       BCS    LF062   
       LDA    $A2     
       SBC    #$10    
       BMI    LF062   
       BIT    CXP0FB  
       BVC    LF08D   
LF062: LDA    $85     
       BPL    LF07E   
       LDA    $A2     
       SEC            
       SBC    #$51    
       BCS    LF071   
       SBC    #$00    
       EOR    #$FF    
LF071: STA    $A8     
       LDA    $9D     
       SBC    #$86    
       BCS    LF07E   
       SEC            
       ADC    $A8     
LF07C: BCC    LF08D   
LF07E: LDA    $8A     
       CMP    #$E2    
       BCS    LF08A   
       INC    $8A     
       LDA    #$0E    
       STA    AUDC1   
LF08A: JSR    LF678   
LF08D: JSR    LF580   
       LDA    $83     
       BPL    LF100   
       LDA    $80     
       AND    #$07    
       BNE    LF09E   
       LDA    #$0E    
       STA    AUDC1   
LF09E: BIT    CXP0FB  
       BVC    LF0FE   
       LDA    $85     
       BPL    LF0C6   
       LDA    $A2     
       SEC            
       SBC    $9E     
       SBC    #$0B    
       BMI    LF0C0   
       TAX            
       LDA    #$10    
       CPX    #$10    
       BCC    LF0BC   
       ASL            
       CPX    #$20    
       BCC    LF0BC   
       ASL            
LF0BC: ADC    $9E     
       STA    $9E     
LF0C0: LDA    #$06    
       STA    AUDC1   
       BNE    LF0E6   
LF0C6: BIT    CXPPMM  
       BPL    LF103   
       LDX    $80     
       DEX            
       TXA            
       AND    #$03    
       TAX            
LF0D1: LDA    LF79D,X 
       EOR    #$0F    
       AND    $AB     
       STA    $AB     
       LDA    $89     
       CMP    #$D3    
       BCS    LF0E6   
       INC    $89     
       LDA    #$04    
       STA    AUDC1   
LF0E6: LDA    #$00    
       STA    $85     
       STA    $86     
       STA    NUSIZ0  
LF0EE: STA    $B7     
       LDA    $99     
       CLC            
       ADC    #$06    
       STA    $9D     
       LDA    $9E     
       CLC            
       ADC    #$04    
       STA    $A2     
LF0FE: STA    CXCLR   
LF100: JMP    LF12F   
LF103: BIT    CXP0FB  
       BPL    LF0E6   
       LDX    #$03    
       LDA    $99     
       CMP    #$68    
       BCS    LF11E   
       LDX    #$01    
       CMP    #$36    
       BCC    LF11E   
       DEX            
       LDA    $9E     
       CMP    #$50    
       BCC    LF11E   
       LDX    #$02    
LF11E: LDY    LF79D,X 
       DEY            
       TYA            
       EOR    #$0F    
       STA    $A8     
       EOR    $AB     
       AND    $A8     
       BEQ    LF0D1   
       BNE    LF0E6   
LF12F: JSR    LF54A   
       LDA    SWCHB   
       LDX    $88     
       BEQ    LF13A   
       ASL            
LF13A: ASL            
       LDA    $B1     
       AND    #$0F    
       TAY            
       LDX    $83     
       BMI    LF17C   
       BNE    LF164   
       LDA    $B3     
       CMP    #$04    
       LDX    $B2     
       BNE    LF150   
       BCC    LF154   
LF150: LDA    INPT4,X 
       BMI    LF15F   
LF154: LDA    $87     
       BNE    LF15F   
       INC    $83     
       TAY            
       STA    $81     
       BEQ    LF178   
LF15F: LDA    #$50    
       TAY            
       BNE    LF1BF   
LF164: BCS    LF169   
       ORA    #$01    
       TAY            
LF169: LSR            
       LSR            
       TAY            
       LDX    #$01    
       BCC    LF171   
       INX            
LF171: STX    $85     
       LDA    LF74C,Y 
       STA    $86     
LF178: LDA    #$60    
       BNE    LF1BF   
LF17C: BCC    LF184   
       LDA    $80     
       AND    #$01    
       BNE    LF1A2   
LF184: TYA            
       PHP            
       LSR            
       LSR            
       TAX            
       LDA    LF74C,X 
       CLC            
       ADC    $9E     
       LDX    $B7     
       CMP    #$08    
       BCC    LF1A1   
       ADC    LF7E1,X 
       CMP    #$96    
       BCS    LF1A1   
       SBC    LF7E1,X 
       STA    $9E     
LF1A1: PLP            
LF1A2: TYA            
       AND    #$03    
       TAX            
       LDA    LF749,X 
       BCS    LF1AC   
       ASL            
LF1AC: CLC            
       ADC    $99     
       CMP    #$7D    
       BCS    LF1B5   
       STA    $99     
LF1B5: LSR            
       EOR    $9E     
       LSR            
       LDA    #$60    
       BCC    LF1BF   
       LDA    #$70    
LF1BF: STA    $95     
       STY    REFP0   
       JSR    LF642   
LF1C6: LDX    #$03    
       LDA    $B2     
       LSR            
       LDA    SWCHB   
       BCC    LF1D1   
       ASL            
LF1D1: BPL    LF1D5   
       LDX    #$07    
LF1D5: LDA    $83     
       BMI    LF1DB   
       LDX    #$01    
LF1DB: TXA            
       BIT    $80     
       BNE    LF1E7   
       LDA    $86     
       CLC            
       ADC    $A2     
       STA    $A2     
LF1E7: TXA            
       LSR            
       BIT    $80     
       BNE    LF1F8   
       LDA    $85     
       CLC            
       ADC    $9D     
       STA    $9D     
       EOR    #$FF    
       STA    VDELBL  
LF1F8: LDA    #$78    
       LDX    $8C     
       CPX    #$BA    
       BNE    LF202   
       LDA    #$7B    
LF202: STA    $AC     
       LDA    $AB     
       AND    #$07    
       TAX            
       LDY    #$24    
       AND    #$02    
       BNE    LF211   
       LDY    #$C8    
LF211: LDA    $83     
       BMI    LF217   
       STY    $9A     
LF217: LDA    LF7AD,X 
       STA    $AD     
       LDA    LF7B5,X 
       STA    $AE     
       LDA    LF7BD,X 
       STA    $AF     
       LDA    SWCHA   
       LDX    $B3     
       CPX    #$04    
       BCS    LF26D   
       AND    #$0F    
       STA    $BA     
       LDA    $B9     
       AND    #$F0    
       LDX    $83     
       BMI    LF255   
       LDX    $88     
       BNE    LF26B   
       LDX    $9D     
       CPX    #$77    
       BCC    LF24F   
       LDX    $A2     
       CPX    #$4E    
       BCC    LF24F   
       CPX    #$54    
       BCC    LF251   
LF24F: ORA    #$C0    
LF251: ORA    #$30    
       BNE    LF26B   
LF255: LDX    $A2     
       LDA    $86     
       ORA    $85     
       BNE    LF25F   
       LDX    #$49    
LF25F: LDA    #$00    
       CPX    $9E     
       BEQ    LF269   
       ROR            
       ADC    #$80    
       ROR            
LF269: EOR    #$F0    
LF26B: ORA    $BA     
LF26D: STA    $BA     
       LDA    SWCHB   
       LDX    #$00    
       ROR            
       ROR            
       BCS    LF290   
       DEC    $B6     
       BPL    LF2C0   
       LDA    #$3F    
       STA    $B6     
       LDY    $B3     
       INY            
       TYA            
       AND    #$07    
LF286: STA    $B3     
       CLC            
LF289: ADC    #$01    
       DEX            
       LDY    #$AA    
       BNE    LF29B   
LF290: ASL            
       TXA            
       STA    $B6     
       TAY            
       BCS    LF2C0   
       STA    $81     
       STA    $88     
LF29B: STX    $B5     
       STA    $8D     
       STY    $8E     
       LDX    #$18    
       LDA    #$00    
LF2A5: STA    $82     
       DEX            
       BPL    LF2A5   
       LDY    #$0F    
LF2AC: LDX    LF77F,Y 
       LDA    LF78E,Y 
       STA    VSYNC,X 
       DEY            
       BNE    LF2AC   
       JSR    LF54A   
       JSR    LF678   
       JSR    LF580   
LF2C0: LDY    $87     
       BEQ    LF31F   
       DEC    $87     
       BNE    LF31F   
       LDX    #$3F    
       STX    VBLANK  
       LDA    $89     
       CMP    #$D3    
       BCC    LF2F5   
       LDA    #$08    
       STA    $AB     
       STX    $87     
       LDA    $88     
       STA    $B2     
       EOR    #$01    
       STA    $88     
       BNE    LF2EF   
       LSR            
       LDX    #$C8    
       CPX    $8B     
       SBC    #$00    
       STA    $B5     
       BMI    LF2EF   
       INC    $8B     
LF2EF: LDA    #$D0    
       STA    $89     
       BNE    LF31C   
LF2F5: LDA    $8A     
       CMP    #$E3    
       BCS    LF31C   
       LDA    $8C     
       CMP    #$B4    
       BCC    LF31F   
LF301: LDA    LF79D,Y 
       BIT    $AB     
       BEQ    LF318   
       INY            
       CPY    #$04    
       BCC    LF301   
       LDA    #$80    
       STA    $83     
       LDX    #$10    
       STX    $82     
       JSR    LF631   
LF318: ORA    $AB     
       STA    $AB     
LF31C: JSR    LF541   
LF31F: LDX    #$04    
LF321: LDA    $9E,X   
       CLC            
       ADC    #$37    
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       PLA            
       AND    #$0F    
       STY    $A8     
       CLC            
       ADC    $A8     
       CMP    #$0F    
       BCC    LF33B   
       SBC    #$0F    
       INY            
LF33B: CMP    #$08    
       EOR    #$0F    
       BCS    LF344   
       ADC    #$01    
       DEY            
LF344: ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF34A: DEY            
       BPL    LF34A   
       STA    RESP0,X 
       STA    HMP0,X  
       DEX            
       BPL    LF321   
       LDA    $88     
       EOR    #$01    
       STA    $B2     
       LSR            
       LDA    $BA     
       BCS    LF367   
       AND    #$F0    
       ADC    $BA     
       ROL            
       ROL            
       ROL            
       ROL            
LF367: STA    $B1     
       LDA    SWCHB   
       AND    #$08    
       LSR            
       ORA    #$03    
       TAY            
       CPY    #$04    
       LDA    $B5     
       EOR    #$08    
       ORA    #$F7    
       BCS    LF37E   
       AND    #$0F    
LF37E: STA    $A6     
       LDX    #$03    
LF382: LDA    INTIM   
       BNE    LF382   
LF387: STA    WSYNC   
       STA    HMOVE   
       LDA    #$F0    
       STA    VBLANK  
       LDA    $81     
       AND    $B5     
       EOR    LF6F4,Y 
       AND    $A6     
       STA    COLUP0,X
       STA    $A6,X   
       DEY            
       DEX            
       STA    HMCLR   
       BPL    LF387   
       LDY    $B2     
       BNE    LF3AC   
       LDX    $A7     
       STX    $A6     
       STA    $A7     
LF3AC: LDX    #$05    
       LDY    #$02    
LF3B0: STY    CTRLPF  
       LDY    #$01    
LF3B4: STA    WSYNC   
       STA    HMOVE   
       LDA    #$F0    
       AND    $89,X   
       LSR            
       LSR            
       LSR            
       LSR            
       STA.wy $008F,Y 
       LDA    $89,X   
       AND    #$0F    
       STA.wy $0091,Y 
       DEX            
       DEY            
       BPL    LF3B4   
       LDY    #$3C    
       STY    $93     
       SEC            
       BCS    LF3D6   
LF3D5: CLC            
LF3D6: LDY    $8F     
       LDA    ($93),Y 
       STA    WSYNC   
LF3DC: STA    HMOVE   
       AND    #$F0    
       STA    $A8     
       LDY    $91     
       LDA    ($93),Y 
       AND    #$0F    
       ORA    $A8     
       STA    PF1     
       LDY    $90     
       LDA    ($93),Y 
       AND    #$F0    
       STA    $A8     
       LDY    $92     
       LDA    ($93),Y 
       AND    #$0F    
       ORA    $A8     
       STA    PF1     
       BCS    LF3D5   
       LDA    $93     
       SBC    #$0E    
       STA    $93     
       LDY.w  $008F   
       LDA    ($93),Y 
       BCS    LF3DC   
       STA    HMOVE   
       LDY    #$00    
       TXA            
       STY    PF1     
       BPL    LF3B0   
       LDY    #$10    
       STY    CTRLPF  
       LDY    $A7     
       STY    COLUP0  
       LDY    $A6     
       STY    COLUP1  
       LDA    $A3     
       LDX    #$8C    
       LDY    $83     
       STA    HMM1    
       BPL    LF43F   
       BMI    LF4AB   
LF42E: CPX    #$66    
       BNE    LF44B   
       STA    HMCLR   
       BEQ    LF44B   
LF436: CPX    #$6F    
       BNE    LF481   
       STY    $AC     
       BEQ    LF481   
LF43E: PHP            
LF43F: CPX    #$50    
       BNE    LF42E   
       LDA    $AF     
       STA    HMP1    
       AND    #$0F    
       STA    NUSIZ1  
LF44B: STA    WSYNC   
       STA    HMOVE   
       TXA            
       SEC            
       SBC    $AC     
       TAY            
       AND    #$F0    
       BEQ    LF45C   
       LDA    #$00    
       BEQ    LF45F   
LF45C: LDA    LF770,Y 
LF45F: STA    GRP1    
       DEX            
       TXA            
       LDX    #$1F    
       TXS            
       TAX            
       LSR            
       LSR            
       TAY            
       LDA.wy $00BB,Y 
       LDY    $AD     
       STA    PF0     
       AND    #$0F    
       STA    PF1     
       CPX    #$6D    
       BNE    LF436   
       LDA    $AE     
       STA    HMP1    
       AND    #$0F    
       STA    NUSIZ1  
LF481: STA    WSYNC   
       STA    HMOVE   
       TXA            
       SEC            
       SBC    $AC     
       TAY            
       AND    #$F0    
       BEQ    LF492   
       LDA    #$00    
       BEQ    LF495   
LF492: LDA    LF770,Y 
LF495: STA    GRP1    
       TXA            
       SEC            
       SBC.w  $009D   
       AND    #$FC    
       PHP            
       TXA            
       DEX            
       CPX    #$49    
       EOR    $9C     
       AND    $A5     
       BCS    LF43E   
       STA    HMCLR   
LF4AB: STA    WSYNC   
       STA    HMOVE   
       JMP    LF4C4   
LF4B2: TXA            
       SBC    $99     
       TAY            
       AND    #$F0    
       BEQ    LF4BE   
       LDA    $A0     
       BEQ    LF4C0   
LF4BE: LDA    ($95),Y 
LF4C0: STA    HMOVE   
       STA    GRP0    
LF4C4: TXA            
       SEC            
       SBC    $9A     
       TAY            
       AND    #$F0    
       BEQ    LF4D1   
       LDA    $A0     
       BEQ    LF4D3   
LF4D1: LDA    ($97),Y 
LF4D3: STA    GRP1    
       DEX            
       TXA            
       LDX    #$1F    
       TXS            
       TAX            
       LSR            
       LSR            
       TAY            
       LDA.wy $00BB,Y 
       STA.w  $000D   
       AND    #$0F    
       STA    PF1     
       TXA            
       SEC            
       SBC    $99     
       TAY            
       AND    #$F0    
       BEQ    LF4F5   
       LDA    $A0     
       BEQ    LF4F7   
LF4F5: LDA    ($95),Y 
LF4F7: STA    HMOVE   
       STA    GRP0    
       TXA            
       SEC            
LF4FD: SBC    $9A     
       TAY            
       AND    #$F0    
       BEQ    LF508   
       LDA    $A0     
       BEQ    LF50A   
LF508: LDA    ($97),Y 
LF50A: STA    GRP1    
       TXA            
       SEC            
       SBC    $9D     
       AND    #$FC    
       PHP            
       TXA            
       EOR    $9C     
       AND    $A5     
       SEC            
       PHP            
       DEX            
       BNE    LF4B2   
       STX    COLUP0  
       STX    ENABL   
       STX    GRP0    
       STX    GRP1    
       LDX    #$42    
LF527: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BPL    LF527   
       TXS            
       LDA    $80     
       AND    #$07    
       BNE    LF53E   
       LDA    $B9     
       LSR            
       EOR    $B9     
       LSR            
       LSR            
       ROR    $B9     
LF53E: JMP    LF011   
LF541: LDA    #$E0    
       STA    $8A     
       LDA    #$B0    
       STA    $8C     
       RTS            

LF54A: LDX    $84     
       LDA    $B1     
       CMP    #$F0    
       LDY    $83     
       BMI    LF564   
       BNE    LF55A   
       BCC    LF55F   
       LDX    #$00    
LF55A: TXA            
       BNE    LF55F   
LF55D: BCS    LF564   
LF55F: CPX    #$07    
       BCS    LF564   
       INX            
LF564: STX    $84     
       LDA    LF7D5,X 
       STA    $A3     
       LDA    LF6E4,X 
       STA    $A1     
       LDA    LF6EC,X 
       STA    $9C     
       LDA    LF7F0,X 
       STA    $A5     
       LDA    LF7DB,X 
       STA    NUSIZ1  
       RTS            

LF580: LDY    $82     
       LDA    #$55    
       STA    REFP1   
       LDX    $83     
       BPL    LF5C0   
       LDA    $80     
       AND    #$03    
       TAX            
       BNE    LF59A   
       INY            
       INY            
       INY            
       STY    $82     
       CPY    #$4A    
       BCS    LF5D0   
LF59A: LDA    $AB     
       AND    LF79D,X 
       CMP    #$01    
       LDA    #$C8    
       BCC    LF5B4   
       LDA    LF7CB,X 
       STA    REFP1   
       TYA            
       LSR            
       EOR    LF7CA,X 
       CMP    #$80    
       ADC    LF7F8,X 
LF5B4: STA    $9A     
       TYA            
       LSR            
       EOR    LF7CB,X 
       CMP    #$80    
       ADC    LF6FC,X 
LF5C0: STA    $9F     
       ASL            
       EOR    $9A     
       ASL            
       ASL            
       ASL            
       AND    #$10    
       ORA    #$60    
       STA    $97     
       BNE    LF61A   
LF5D0: LDA    $AB     
       LSR            
       STA    $AB     
       BCC    LF5ED   
       LDA    $89     
       CMP    #$D3    
       BCS    LF5ED   
       LDA    #$0C    
       STA    AUDC1   
       SED            
       LDA    #$01    
       LDX    $88     
       ADC    $8D,X   
       STA    $8D,X   
       CLD            
       LDA    $AB     
LF5ED: LDY    #$00    
       AND    $B0     
       BEQ    LF60E   
       BIT    CXP0FB  
       BVS    LF60E   
       LDA    $9D     
       CMP    #$BE    
       BCS    LF60A   
       LDA    #$03    
       CMP    $B3     
       LDX    $88     
       BNE    LF606   
       ROR            
LF606: ORA    INPT4,X 
       BPL    LF60E   
LF60A: STY    $82     
       BVC    LF61A   
LF60E: LDA    #$08    
       ORA    $AB     
       STA    $AB     
       JSR    LF541   
       JSR    LF678   
LF61A: LDA    $A2     
       SEC            
       SBC    #$06    
       CMP    #$94    
       BCS    LF631   
       LDY    #$0F    
       LDX    #$05    
       CPX    $9D     
       BCC    LF641   
       LDA    $86     
       NOP            
       NOP            
       BEQ    LF633   
LF631: LDY    #$08    
LF633: STY    $B0     
       STY    $A2     
       LDA    #$C8    
       STA    $9D     
       LDA    #$00    
       STA    $85     
       STA    $86     
LF641: RTS            

LF642: LDA    $83     
       BMI    LF6B4   
       BIT    CXM1FB  
       BVS    LF6B5   
LF64A: LDA    $9D     
       CMP    #$88    
       BCC    LF6B4   
       LDA    CXBLPF  
       BMI    LF668   
       LDA    $84     
       BNE    LF668   
       INC    $8C     
       LDA    #$08    
       BIT    CXP1FB  
       BVC    LF676   
       LDA    #$BA    
       STA    $8C     
       LDA    #$04    
       BNE    LF676   
LF668: INC    $8A     
       LDA    $8A     
       CMP    #$E3    
       LDA    #$0E    
       BCC    LF676   
       INC    $89     
       LDA    #$04    
LF676: STA    AUDC1   
LF678: LDA    #$00    
       STA    $82     
       STA    $83     
       STA    $85     
       STA    $86     
       LDA    #$44    
       STA    $9D     
       LDA    #$51    
       STA    $A2     
       LDA    #$36    
       STA    $99     
       LDX    $B3     
       LDY    LF7E8,X 
       STY    $B7     
       STY    NUSIZ0  
       LDA    LF7E1,Y 
       LSR            
       AND    #$30    
       EOR    #$FF    
       SEC            
       ADC    #$48    
       STA    $9E     
       LDA    #$0F    
       STA    $B0     
       LDX    #$3F    
       CPX    $87     
       BCC    LF6B4   
       STX    $87     
LF6B0: STA    VBLANK  
       STA    CXCLR   
LF6B4: RTS            

LF6B5: LDA    $A2     
       SEC            
       SBC    #$4D    
       TAY            
       LDX    $84     
       CLV            
       LDA    LF7C5,X 
       BPL    LF64A   
       SEC            
       ADC    LF7CD,Y 
       STA    $85     
       LDA    $B9     
       AND    #$03    
       LSR            
       SBC    LF79E,X 
       CLC            
       ADC    LF7A4,Y 
       STA    $86     
       LDA    #$80    
       STA    $83     
       ASL            
       STA    $82     
       LDA    #$06    
       STA    AUDC1   
       BNE    LF6B0   
LF6E4: .byte $54 ;.NOP
       .byte $47 ;.SRE
       SEC            
       .byte $1A ;.NOP
       STX    $6472   
       .byte $54 ;.NOP
LF6EC: .byte $80 ;.NOP
       .byte $80 ;.NOP
       .byte $80 ;.NOP
       .byte $80 ;.NOP
       ROR    $787C,X 
       BVS    LF6FF   
       BRK            
       .byte $0C ;.NOP
       ASL    $8A     
       SEC            
       ASL            
       .byte $D4 ;.NOP
LF6FC: BVC    LF724   
       LSR    $0776   
       .byte $22 ;.JAM
       .byte $77 ;.RRA
       .byte $77 ;.RRA
       ORA    ($77),Y 
       .byte $77 ;.RRA
       ORA    ($77),Y 
       .byte $77 ;.RRA
       BRK            
       .byte $FF ;.ISB
       INC    $FFEE   
       ORA    HMM0    
       .byte $44 ;.NOP
       ORA    ($11),Y 
       ORA    ($55),Y 
       ORA    ($55),Y 
       ORA    ($00),Y 
       STA    $AA44,Y 
       ORA    ($05),Y 
       .byte $22 ;.JAM
       .byte $77 ;.RRA
       .byte $33 ;.RLA
       .byte $77 ;.RRA
       .byte $77 ;.RRA
LF724: .byte $77 ;.RRA
       ORA    ($77),Y 
       .byte $77 ;.RRA
       BRK            
       .byte $FF ;.ISB
       .byte $44 ;.NOP
       TAX            
       .byte $FF ;.ISB
       ORA    HMM0    
       ORA    ($11),Y 
       EOR    $44,X   
       .byte $44 ;.NOP
       ORA    ($55),Y 
       EOR    VSYNC,X 
       TAX            
       INC    $88EE   
       .byte $07 ;.SLO
       .byte $22 ;.JAM
       .byte $77 ;.RRA
       .byte $77 ;.RRA
       EOR    $77,X   
       .byte $77 ;.RRA
       .byte $77 ;.RRA
       .byte $77 ;.RRA
       .byte $77 ;.RRA
       BRK            
       INC.w  $0000   
       .byte $FF ;.ISB
       ORA    ($00,X) 
       ORA    ($FF,X) 
       BRK            
       .byte $87 ;.SAX
       STX    $F6     
       INC    $3E,X   
       .byte $1C ;.NOP
       .byte $5C ;.NOP
       .byte $5C ;.NOP
       .byte $5C ;.NOP
       .byte $7F ;.RRA
       ORA    $1D05,X 
       .byte $0C ;.NOP
       .byte $7C ;.NOP
       .byte $1C ;.NOP
       BVS    LF792   
       .byte $37 ;.RLA
       ROL    $3E,X   
       .byte $1C ;.NOP
       EOR    $5D5D,X 
       .byte $7F ;.RRA
       .byte $1C ;.NOP
       BPL    LF789   
       CLC            
       .byte $1F ;.SLO
       .byte $1C ;.NOP
LF770: .byte $07 ;.SLO
       ASL    $76     
LF773: ROL    $3E,X   
       .byte $1C ;.NOP
       EOR    $5D5D,X 
       .byte $7F ;.RRA
       .byte $1C ;.NOP
       BPL    LF799   
       CLC            
       .byte $1F ;.SLO
LF77F: .byte $1C ;.NOP
       .byte $8B ;.ANE
       STY    $8A89   
       .byte $B2 ;.JAM
       CLC            
       .byte $1A ;.NOP
       STA    $C7,X   
LF789: CMP    ($DA),Y 
       STX    $98,Y   
       STY    $AB,X   
       CMP    ($B0,X) 
       BNE    LF773   
       ORA    ($0F,X) 
       .byte $0F ;.SLO
       BVC    LF7A8   
       .byte $02 ;.JAM
LF799: BPL    LF792   
       .byte $F7 ;.ISB
       .byte $F7 ;.ISB
LF79D: PHP            
LF79E: .byte $04 ;.NOP
       .byte $02 ;.JAM
       ORA    ($00,X) 
       BRK            
       .byte $FF ;.ISB
LF7A4: INC    $FFFE,X 
       .byte $FF ;.ISB
LF7A8: BRK            
       ORA    ($01,X) 
       .byte $02 ;.JAM
       .byte $02 ;.JAM
LF7AD: INY            
       .byte $52 ;.JAM
       INY            
       .byte $52 ;.JAM
       .byte $52 ;.JAM
       .byte $52 ;.JAM
       .byte $52 ;.JAM
       .byte $52 ;.JAM
LF7B5: BRK            
       LDY    #$00    
LF7B8: LDY    #$70    
       LDY    $70     
       LDY    VSYNC   
       BRK            
       BRK            
       BVC    LF7C2   
LF7C2: BRK            
       LDY    #$50    
LF7C5: BRK            
       .byte $FF ;.ISB
       .byte $FF ;.ISB
       INC    $FFFE,X 
LF7CB: .byte $FF ;.ISB
       BRK            
LF7CD: BRK            
       .byte $FF ;.ISB
       INC    $FCFD,X 
       SBC    $FFFE,X 
LF7D5: BRK            
       BEQ    LF7B8   
       CPY    #$40    
       JSR.w  $0010   
       BPL    LF7FF   
       JSR.w  $0010   
       BPL    $F804   
       JSR    $1040   
       RTI            

LF7E8: .byte $00,$01,$03,$06,$00,$01
LF7EE: .byte $03,$06
LF7F0: .byte $F0,$F8,$FC,$FE,$FE,$FC,$F8,$F0
LF7F8: .byte $78,$52,$2A,$54,$00,$F0
LF7FE: .byte $00
LF7FF: .byte $F0
