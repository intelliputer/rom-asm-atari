; Disassembly of roms/Home Run Baseball (2).bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Home Run Baseball (2).bin
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
LF472   =   $F472
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
LFA44   =   $FA44

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
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
       LDA    #$31    
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
       BCC    LF08D   
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
       STA    $B7     
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
       ADC    #$01    
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
       SBC    $9A     
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
       LDX    #$22    
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
       BCS    LF564   
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
       INC    LFFEE   
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
LF7A4: INC    LFFFE,X 
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
       INC    LFFFE,X 
LF7CB: .byte $FF ;.ISB
       BRK            
LF7CD: BRK            
       .byte $FF ;.ISB
       INC    LFCFD,X 
       SBC    LFFFE,X 
LF7D5: BRK            
       BEQ    LF7B8   
       CPY    #$40    
       JSR.w  $0010   
       BPL    LF7FF   
       JSR.w  $0010   
       BPL    LF804   
       JSR    $1040   
       RTI            

LF7E8: .byte $00,$01,$03,$06,$00,$01,$03,$06
LF7F0: .byte $F0,$F8,$FC,$FE,$FE,$FC,$F8,$F0
LF7F8: .byte $78,$52,$2A,$54,$00,$F0,$00
LF7FF: BEQ    LF879   
       CLD            
       LDX    #$FF    
LF804: TXS            
       INX            
       TXA            
LF807: STA    VSYNC,X 
       INX            
       BNE    LF807   
       DEC    $B9     
       JMP    LF286   
LF811: .byte $E6,$80,$D0,$06,$E6,$81,$D0,$02,$86,$B5,$86,$02,$86,$01,$86,$00
       .byte $85,$02,$E8,$85,$02,$85,$02,$86,$00,$A9,$31,$8D,$96,$02,$86,$16
       .byte $A5,$B5,$F0,$03,$4C,$C6,$F1,$A5,$83,$10,$51,$A5,$AB,$29,$08,$F0
       .byte $4B,$A6,$82,$E0,$08,$A5,$85,$05,$86,$B0,$02,$F0,$30,$F0,$3D,$E0
       .byte $38,$B0,$39,$E0,$30,$B0,$0A,$A5,$A2,$E9,$10,$30,$04,$24,$32,$50
       .byte $2B,$A5,$85,$10,$18,$A5,$A2,$38,$E9,$51,$B0,$04,$E9,$00,$49,$FF
       .byte $85,$A8,$A5,$9D,$E9,$86,$B0,$05
LF879: SEC            
       ADC    $A8     
LF87C: BCC    LF88D   
       LDA    $8A     
       CMP    #$E2    
       BCS    LF88A   
       INC    $8A     
       LDA    #$0E    
       STA    AUDC1   
LF88A: JSR    LF678   
LF88D: JSR    LF580   
       LDA    $83     
       BPL    LF900   
       LDA    $80     
       AND    #$07    
       BNE    LF89E   
       LDA    #$0E    
       STA    AUDC1   
LF89E: BIT    CXP0FB  
       BVC    LF8FE   
       LDA    $85     
       BPL    LF8C6   
       LDA    $A2     
       SEC            
       SBC    $9E     
       SBC    #$0B    
       BMI    LF8C0   
       TAX            
       LDA    #$10    
       CPX    #$10    
       BCC    LF8BC   
       ASL            
       CPX    #$20    
       BCC    LF8BC   
       ASL            
LF8BC: ADC    $9E     
       STA    $9E     
LF8C0: LDA    #$06    
       STA    AUDC1   
       BNE    LF8E6   
LF8C6: BIT    CXPPMM  
       BPL    LF903   
       LDX    $80     
       DEX            
       TXA            
       AND    #$03    
       TAX            
LF8D1: LDA    LF79D,X 
       EOR    #$0F    
       AND    $AB     
       STA    $AB     
       LDA    $89     
       CMP    #$D3    
       BCS    LF8E6   
       INC    $89     
       LDA    #$04    
       STA    AUDC1   
LF8E6: LDA    #$00    
       STA    $85     
       STA    $86     
       STA    NUSIZ0  
LF8EE: STA    $B7     
       LDA    $99     
       CLC            
       ADC    #$06    
       STA    $9D     
       LDA    $9E     
       CLC            
       ADC    #$04    
       STA    $A2     
LF8FE: STA    CXCLR   
LF900: JMP    LF12F   
LF903: BIT    CXP0FB  
       BPL    LF8E6   
       LDX    #$03    
       LDA    $99     
       CMP    #$68    
       BCS    LF91E   
       LDX    #$01    
       CMP    #$36    
       BCC    LF91E   
       DEX            
       LDA    $9E     
       CMP    #$50    
       BCC    LF91E   
       LDX    #$02    
LF91E: LDY    LF79D,X 
       DEY            
       TYA            
       EOR    #$0F    
       STA    $A8     
       EOR    $AB     
       AND    $A8     
       BEQ    LF8D1   
       BNE    LF8E6   
       JSR    LF54A   
       LDA    SWCHB   
       LDX    $88     
       BEQ    LF93A   
       ASL            
LF93A: ASL            
       LDA    $B1     
       AND    #$0F    
       TAY            
       LDX    $83     
       BMI    LF97C   
       BNE    LF964   
       LDA    $B3     
       CMP    #$04    
       LDX    $B2     
       BNE    LF950   
       BCC    LF954   
LF950: LDA    INPT4,X 
       BMI    LF95F   
LF954: LDA    $87     
       BNE    LF95F   
       INC    $83     
       TAY            
       STA    $81     
       BEQ    LF978   
LF95F: LDA    #$50    
       TAY            
       BNE    LF9BF   
LF964: BCS    LF969   
       ORA    #$01    
       TAY            
LF969: LSR            
       LSR            
       TAY            
       LDX    #$01    
       BCC    LF971   
       INX            
LF971: STX    $85     
       LDA    LF74C,Y 
       STA    $86     
LF978: LDA    #$60    
       BNE    LF9BF   
LF97C: BCC    LF984   
       LDA    $80     
       AND    #$01    
       BNE    LF9A2   
LF984: TYA            
       PHP            
       LSR            
       LSR            
       TAX            
       LDA    LF74C,X 
       CLC            
       ADC    $9E     
       LDX    $B7     
       CMP    #$08    
       BCC    LF9A1   
       ADC    LF7E1,X 
       CMP    #$96    
       BCS    LF9A1   
       SBC    LF7E1,X 
       STA    $9E     
LF9A1: PLP            
LF9A2: TYA            
       AND    #$03    
       TAX            
       LDA    LF749,X 
       BCS    LF9AC   
       ASL            
LF9AC: CLC            
       ADC    $99     
       CMP    #$7D    
       BCS    LF9B5   
       STA    $99     
LF9B5: LSR            
       EOR    $9E     
       LSR            
       LDA    #$60    
       BCC    LF9BF   
       LDA    #$70    
LF9BF: STA    $95     
       STY    REFP0   
       JSR    LF642   
       LDX    #$03    
       LDA    $B2     
       LSR            
       LDA    SWCHB   
       BCC    LF9D1   
       ASL            
LF9D1: BPL    LF9D5   
       LDX    #$07    
LF9D5: LDA    $83     
       BMI    LF9DB   
       LDX    #$01    
LF9DB: TXA            
       BIT    $80     
       BNE    LF9E7   
       LDA    $86     
       CLC            
       ADC    $A2     
       STA    $A2     
LF9E7: TXA            
       LSR            
       BIT    $80     
       BNE    LF9F8   
       LDA    $85     
       CLC            
       ADC    $9D     
       STA    $9D     
       EOR    #$FF    
       STA    VDELBL  
LF9F8: LDA    #$78    
       LDX    $8C     
       CPX    #$BA    
       BNE    LFA02   
       LDA    #$7B    
LFA02: STA    $AC     
       LDA    $AB     
       AND    #$07    
       TAX            
       LDY    #$24    
       AND    #$02    
       BNE    LFA11   
       LDY    #$C8    
LFA11: LDA    $83     
       BMI    LFA17   
       STY    $9A     
LFA17: LDA    LF7AD,X 
       STA    $AD     
       LDA    LF7B5,X 
       STA    $AE     
       LDA    LF7BD,X 
       STA    $AF     
       LDA    SWCHA   
       LDX    $B3     
       CPX    #$04    
       BCS    LFA6D   
       AND    #$0F    
       STA    $BA     
       LDA    $B9     
       AND    #$F0    
       LDX    $83     
       BMI    LFA55   
       LDX    $88     
       BNE    LFA6B   
       LDX    $9D     
       CPX    #$77    
       BCC    LFA4F   
       LDX    $A2     
       CPX    #$4E    
       BCC    LFA4F   
       CPX    #$54    
       BCC    LFA51   
LFA4F: ORA    #$C0    
LFA51: ORA    #$30    
       BNE    LFA6B   
LFA55: LDX    $A2     
       LDA    $86     
       ORA    $85     
       BNE    LFA5F   
       LDX    #$49    
LFA5F: LDA    #$00    
       CPX    $9E     
       BEQ    LFA69   
       ROR            
       ADC    #$80    
       ROR            
LFA69: EOR    #$F0    
LFA6B: ORA    $BA     
LFA6D: STA    $BA     
       LDA    SWCHB   
       LDX    #$00    
       ROR            
       ROR            
       BCS    LFA90   
       DEC    $B6     
       BPL    LFAC0   
       LDA    #$3F    
       STA    $B6     
       LDY    $B3     
       INY            
       TYA            
       AND    #$07    
       STA    $B3     
       CLC            
LFA89: ADC    #$01    
       DEX            
       LDY    #$AA    
       BNE    LFA9B   
LFA90: ASL            
       TXA            
       STA    $B6     
       TAY            
       BCS    LFAC0   
       STA    $81     
       STA    $88     
LFA9B: STX    $B5     
       STA    $8D     
       STY    $8E     
       LDX    #$18    
       LDA    #$00    
LFAA5: STA    $82     
       DEX            
       BPL    LFAA5   
       LDY    #$0F    
LFAAC: LDX    LF77F,Y 
       LDA    LF78E,Y 
       STA    VSYNC,X 
       DEY            
       BNE    LFAAC   
       JSR    LF54A   
       JSR    LF678   
       JSR    LF580   
LFAC0: LDY    $87     
       BEQ    LFB1F   
       DEC    $87     
       BNE    LFB1F   
       LDX    #$3F    
       STX    VBLANK  
       LDA    $89     
       CMP    #$D3    
       BCC    LFAF5   
       LDA    #$08    
       STA    $AB     
       STX    $87     
       LDA    $88     
       STA    $B2     
       EOR    #$01    
       STA    $88     
       BNE    LFAEF   
       LSR            
       LDX    #$C8    
       CPX    $8B     
       SBC    #$00    
       STA    $B5     
       BMI    LFAEF   
       INC    $8B     
LFAEF: LDA    #$D0    
       STA    $89     
       BNE    LFB1C   
LFAF5: LDA    $8A     
       CMP    #$E3    
       BCS    LFB1C   
       LDA    $8C     
       CMP    #$B4    
       BCC    LFB1F   
LFB01: LDA    LF79D,Y 
       BIT    $AB     
       BEQ    LFB18   
       INY            
       CPY    #$04    
       BCC    LFB01   
       LDA    #$80    
       STA    $83     
       LDX    #$10    
       STX    $82     
       JSR    LF631   
LFB18: ORA    $AB     
       STA    $AB     
LFB1C: JSR    LF541   
LFB1F: LDX    #$04    
LFB21: LDA    $9E,X   
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
       BCC    LFB3B   
       SBC    #$0F    
       INY            
LFB3B: CMP    #$08    
       EOR    #$0F    
       BCS    LFB44   
       ADC    #$01    
       DEY            
LFB44: ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LFB4A: DEY            
       BPL    LFB4A   
       STA    RESP0,X 
       STA    HMP0,X  
       DEX            
       BPL    LFB21   
       LDA    $88     
       EOR    #$01    
       STA    $B2     
       LSR            
       LDA    $BA     
       BCS    LFB67   
       AND    #$F0    
       ADC    $BA     
       ROL            
       ROL            
       ROL            
       ROL            
LFB67: STA    $B1     
       LDA    SWCHB   
       AND    #$08    
       LSR            
       ORA    #$03    
       TAY            
       CPY    #$04    
       LDA    $B5     
       EOR    #$08    
       ORA    #$F7    
       BCS    LFB7E   
       AND    #$0F    
LFB7E: STA    $A6     
       LDX    #$03    
LFB82: LDA    INTIM   
       BNE    LFB82   
LFB87: STA    WSYNC   
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
       BPL    LFB87   
       LDY    $B2     
       BNE    LFBAC   
       LDX    $A7     
       STX    $A6     
       STA    $A7     
LFBAC: LDX    #$05    
       LDY    #$02    
LFBB0: STY    CTRLPF  
       LDY    #$01    
LFBB4: STA    WSYNC   
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
       BPL    LFBB4   
       LDY    #$3C    
       STY    $93     
       SEC            
       BCS    LFBD6   
LFBD5: CLC            
LFBD6: LDY    $8F     
       LDA    ($93),Y 
       STA    WSYNC   
LFBDC: STA    HMOVE   
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
       BCS    LFBD5   
       LDA    $93     
       SBC    #$0E    
       STA    $93     
       LDY.w  $008F   
       LDA    ($93),Y 
       BCS    LFBDC   
       STA    HMOVE   
       LDY    #$00    
       TXA            
       STY    PF1     
       BPL    LFBB0   
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
       BPL    LFC3F   
       BMI    LFCAB   
LFC2E: CPX    #$66    
       BNE    LFC4B   
       STA    HMCLR   
       BEQ    LFC4B   
LFC36: CPX    #$6F    
       BNE    LFC81   
       STY    $AC     
       BEQ    LFC81   
LFC3E: PHP            
LFC3F: CPX    #$50    
       BNE    LFC2E   
       LDA    $AF     
       STA    HMP1    
       AND    #$0F    
       STA    NUSIZ1  
LFC4B: STA    WSYNC   
       STA    HMOVE   
       TXA            
       SEC            
       SBC    $AC     
       TAY            
       AND    #$F0    
       BEQ    LFC5C   
       LDA    #$00    
       BEQ    LFC5F   
LFC5C: LDA    LF770,Y 
LFC5F: STA    GRP1    
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
       BNE    LFC36   
       LDA    $AE     
       STA    HMP1    
       AND    #$0F    
       STA    NUSIZ1  
LFC81: STA    WSYNC   
       STA    HMOVE   
       TXA            
       SEC            
       SBC    $AC     
       TAY            
       AND    #$F0    
       BEQ    LFC92   
       LDA    #$00    
       BEQ    LFC95   
LFC92: LDA    LF770,Y 
LFC95: STA    GRP1    
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
       BCS    LFC3E   
       STA    HMCLR   
LFCAB: STA    WSYNC   
       STA    HMOVE   
       JMP    LF4C4   
LFCB2: .byte $8A,$E5,$99,$A8,$29,$F0,$F0,$04,$A5,$A0,$F0,$02,$B1,$95,$85,$2A
       .byte $85,$1B,$8A,$38,$E5,$9A,$A8,$29,$F0,$F0,$04,$A5,$A0,$F0,$02,$B1
       .byte $97,$85,$1C,$CA,$8A,$A2,$1F,$9A,$AA,$4A,$4A,$A8,$B9,$BB,$00,$8D
       .byte $0D,$00,$29,$0F,$85,$0E,$8A,$38,$E5,$99,$A8,$29,$F0,$F0,$04,$A5
       .byte $A0,$F0,$02,$B1,$95,$85,$2A,$85,$1B,$8A,$38
LFCFD: .byte $E5,$9A,$A8,$29,$F0,$F0,$04,$A5
LFD05: .byte $A0,$F0,$02,$B1,$97,$85,$1C,$8A,$38,$E5,$9D,$29,$FC,$08,$8A,$45
       .byte $9C,$25,$A5,$38,$08,$CA,$D0,$95,$86,$06,$86,$1F,$86,$1B,$86,$1C
       .byte $A2,$22,$85,$02,$85,$2A,$CA,$10,$F9,$9A,$A5,$80,$29,$07,$D0,$09
       .byte $A5,$B9,$4A,$45,$B9,$4A,$4A,$66,$B9,$4C,$11,$F0,$A9,$E0,$85,$8A
       .byte $A9,$B0,$85,$8C,$60,$A6,$84,$A5,$B1,$C9,$F0,$A4,$83,$30,$10,$D0
       .byte $04,$90,$07,$A2,$00,$8A,$D0,$02
LFD5D: .byte $B0,$05,$E0,$07,$B0,$01,$E8,$86,$84,$BD,$D5,$F7,$85,$A3,$BD,$E4
       .byte $F6,$85,$A1,$BD,$EC,$F6,$85,$9C,$BD,$F0,$F7,$85,$A5,$BD,$DB,$F7
       .byte $85,$05,$60,$A4,$82,$A9,$55,$85,$0C,$A6,$83,$10,$36,$A5,$80,$29
       .byte $03,$AA,$D0,$09,$C8,$C8,$C8,$84,$82,$C0,$4A,$B0,$36,$A5,$AB,$3D
       .byte $9D,$F7,$C9,$01,$A9,$C8,$90,$0F,$BD,$CB,$F7,$85,$0C,$98,$4A,$5D
       .byte $CA,$F7,$C9,$80,$7D,$F8,$F7,$85,$9A,$98,$4A,$5D,$CB,$F7,$C9,$80
       .byte $7D,$FC,$F6,$85,$9F,$0A,$45,$9A,$0A,$0A,$0A,$29,$10,$09,$60,$85
       .byte $97,$D0,$4A,$A5,$AB,$4A,$85,$AB,$90,$16,$A5,$89,$C9,$D3,$B0,$10
       .byte $A9,$0C,$85,$16,$F8,$A9,$01,$A6,$88,$75,$8D,$95,$8D,$D8,$A5,$AB
       .byte $A0,$00,$25,$B0,$F0,$1B,$24,$32,$70,$17,$A5,$9D,$C9,$BE,$B0,$0D
       .byte $A9,$03,$C5,$B3,$A6,$88,$D0,$01,$6A,$15,$3C,$10,$04,$84,$82,$50
       .byte $0C,$A9,$08,$05,$AB,$85,$AB,$20,$41,$F5,$20,$78,$F6,$A5,$A2,$38
       .byte $E9,$06,$C9,$94,$B0,$0E,$A0,$0F,$A2,$05,$E4,$9D,$90,$16,$A5,$86
       .byte $EA,$EA,$F0,$02,$A0,$08,$84,$B0,$84,$A2,$A9,$C8,$85,$9D,$A9,$00
       .byte $85,$85,$85,$86,$60,$A5,$83,$30,$6E,$24,$35,$70,$6B,$A5,$9D,$C9
       .byte $88,$90,$64,$A5,$36,$30,$14,$A5,$84,$D0,$10,$E6,$8C,$A9,$08,$24
       .byte $33,$50,$16,$A9,$BA,$85,$8C,$A9,$04,$D0,$0E,$E6,$8A,$A5,$8A,$C9
       .byte $E3,$A9,$0E,$90,$04,$E6,$89,$A9,$04,$85,$16,$A9,$00,$85,$82,$85
       .byte $83,$85,$85,$85,$86,$A9,$44,$85,$9D,$A9,$51,$85,$A2,$A9,$36,$85
       .byte $99,$A6,$B3,$BC,$E8,$F7,$84,$B7,$84,$04,$B9,$E1,$F7,$4A,$29,$30
       .byte $49,$FF,$38,$69,$48,$85,$9E,$A9,$0F,$85,$B0,$A2,$3F,$E4,$87,$90
       .byte $06,$86,$87,$85,$01,$85,$2C,$60,$A5,$A2,$38,$E9,$4D,$A8,$A6,$84
       .byte $B8,$BD,$C5,$F7,$10,$87,$38,$79,$CD,$F7,$85,$85,$A5,$B9,$29,$03
       .byte $4A,$FD,$9E,$F7,$18,$79,$A4,$F7,$85,$86,$A9,$80,$85,$83,$0A,$85
       .byte $82,$A9,$06,$85,$16,$D0,$CC,$54,$47,$38,$1A,$8E,$72,$64,$54,$80
       .byte $80,$80,$80,$7E,$7C,$78,$70,$0A,$00,$0C,$06,$8A,$38,$0A,$D4,$50
       .byte $26,$4E,$76,$07,$22,$77,$77,$11,$77,$77,$11,$77,$77,$00,$FF,$EE
       .byte $EE,$FF,$05,$22,$44,$11,$11,$11,$55,$11,$55,$11,$00,$99,$44,$AA
       .byte $11,$05,$22,$77,$33,$77,$77,$77,$11,$77,$77,$00,$FF,$44,$AA,$FF
       .byte $05,$22,$11,$11,$55,$44,$44,$11,$55,$55,$00,$AA,$EE,$EE,$88,$07
       .byte $22,$77,$77,$55,$77,$77,$77,$77,$77,$00,$EE,$00,$00,$FF,$01,$00
       .byte $01,$FF,$00,$87,$86,$F6,$F6,$3E,$1C,$5C,$5C,$5C,$7F,$1D,$05,$1D
       .byte $0C,$7C,$1C,$70,$30,$37,$36,$3E,$1C,$5D,$5D,$5D,$7F,$1C,$10,$1C
       .byte $18,$1F,$1C,$07,$06,$76,$36,$3E,$1C,$5D,$5D,$5D,$7F,$1C,$10,$1C
       .byte $18,$1F,$1C,$8B,$8C,$89,$8A,$B2,$18,$1A,$95,$C7,$D1,$DA,$96,$98
       .byte $94,$AB,$C1,$B0,$D0,$E0,$01,$0F,$0F,$50,$10,$02,$10,$F7,$F7,$F7
       .byte $08,$04,$02,$01,$00,$00,$FF,$FE,$FE,$FF,$FF,$00,$01,$01,$02,$02
       .byte $C8,$52,$C8,$52,$52,$52,$52,$52,$00,$A0,$00,$A0,$70,$A4,$70,$A4
       .byte $00,$00,$00,$50,$00,$00,$A0,$50,$00,$FF,$FF,$FE,$FE,$FF,$FF,$00
       .byte $00,$FF,$FE,$FD,$FC,$FD,$FE,$FF,$00,$F0,$E0,$C0,$40,$20,$10,$00
       .byte $10,$20,$20,$10,$00,$10,$20,$20,$40,$10,$40,$00,$01,$03,$06,$00
       .byte $01
LFFEE: .byte $03,$06,$F0,$F8,$FC,$FE,$FE,$FC,$F8,$F0,$78,$52,$2A,$54,$00,$F0
LFFFE: .byte $00,$F0
