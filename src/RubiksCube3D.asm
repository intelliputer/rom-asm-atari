; Disassembly of roms/RubiksCube3D.bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/RubiksCube3D.bin
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
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $4C,$AE,$F3
LF003: LDX    $A1     
       BEQ    LF015   
       LDY    $92     
       LDX    #$C0    
LF00B: STY    COLUBK  
       INY            
       INY            
       STA    WSYNC   
       DEX            
       BNE    LF00B   
       RTS            

LF015: LDX    $D8     
       STX    WSYNC   
       STX    COLUBK  
       LDX    #$0C    
       JSR    LF3A2   
       LDY    #$00    
LF022: STA    WSYNC   
       LDA    LFD17,Y 
       STA    GRP0    
       STA    GRP1    
       LDA    $A2     
       STA    COLUP0  
       STA    COLUP1  
       INY            
       CPY    #$08    
       BCC    LF022   
LF036: STA    WSYNC   
       LDX    #$F0    
       STX    PF2     
       LDA    LFD17,Y 
       STA    GRP0    
       STA    GRP1    
       LDA    $A3     
       STA    COLUP0  
       LDA    $A4     
       STA    COLUP1  
       LDA    $A2     
       STA    COLUPF  
       INY            
       CPY    #$10    
       BCC    LF036   
LF054: STA    WSYNC   
       LDA    LFD17,Y 
       STA    GRP0    
       STA    GRP1    
       LDA    LFD87,Y 
       STA    PF1     
       LDA    $A5     
       STA    COLUPF  
       LDA    $A6     
       LDX    #$0F    
       STX    PF2     
       PHP            
       PLP            
       STA    COLUBK  
       LDA    $A7     
       STA    COLUPF  
       LDA    $D8     
       LDX    #$F0    
       STA    COLUBK  
       INY            
       CPY    #$18    
       BCC    LF054   
       STX    PF2     
LF081: STA    WSYNC   
       LDA    LFD17,Y 
       STA.w  $001B   
       STA    GRP1    
       AND    #$0F    
       STA    PF1     
       LDA    $A8     
       STA    COLUPF  
       LDA    $A9     
       STA    COLUP0  
       LDA    $A5     
       STA    COLUBK  
       LDX    $A6     
       LDA    $AA     
       STX    COLUPF  
       STA    COLUP1  
       LDA    $A7     
       STA    COLUBK  
       LDA    $AB     
       STA    COLUPF  
       LDA    $D8     
       STA    COLUBK  
       INY            
       CPY    #$20    
       BCC    LF081   
LF0B4: STA    WSYNC   
       LDA    LFD17,Y 
       STA    GRP0    
       STA.w  $001C   
       INY            
       LDA    $A8     
       STA    COLUPF  
       LDA    $A9     
       STA    COLUP0  
       LDA    $AC     
       LDX    $AD     
       STA    COLUBK  
       LDA    $AA     
       STX    COLUPF  
       STA    COLUP1  
       LDA    $AE     
       STA    COLUBK  
       LDA    $AB     
       STA    COLUPF  
       LDA    $D8     
       STA    COLUBK  
       CPY    #$28    
       BCC    LF0B4   
LF0E3: STA    WSYNC   
       LDA    LFD17,Y 
       STA    GRP0    
       STA.w  $001C   
       INY            
       LDA    $A8     
       STA    COLUPF  
       LDA    $AF     
       STA    COLUP0  
       LDA    $AC     
       LDX    $AD     
       STA    COLUBK  
       LDA    $B0     
       STX    COLUPF  
       STA    COLUP1  
       LDA    $AE     
       STA    COLUBK  
       LDA    $AB     
       STA    COLUPF  
       LDA    $D8     
       STA    COLUBK  
       CPY    #$33    
       BCC    LF0E3   
       LDX    #$FF    
       STX    PF2     
LF116: STA    WSYNC   
       LDA    LFD17,Y 
       STA    PF1     
       LDA    $B1     
       STA    COLUPF  
       LDA    $A8     
       LDX    $AC     
       JSR    LF3AD   
       STA    COLUBK  
       STX.w  $0008   
       LDA    $AE     
       LDX    $AB     
       STA    COLUPF  
       STX    COLUBK  
       LDA    $B2     
       LDX    $D8     
       STA.w  $0008   
       STX.w  $0009   
       INY            
       CPY    #$39    
       BCC    LF116   
LF144: STA    WSYNC   
       LDX    $AC     
       LDA    $B1     
       STA    COLUPF  
       LDA    #$0F    
       STA    PF1     
       LDA    #$F0    
       STA    PF2     
       JSR    LF3AD   
       STX    COLUBK  
       LDA    $B2     
       LDX    $AE     
       STA    COLUPF  
       STX    COLUBK  
       LDA    $D8     
       INY            
       PHP            
       PLP            
       STA    COLUBK  
       CPY    #$3B    
       BCC    LF144   
LF16C: STA    WSYNC   
       LDA    LFD17,Y 
       STA    PF2     
       LDA    $B1     
       STA    COLUPF  
       LDA    $B3     
       LDX    $AC     
       JSR    LF3AD   
       STA    COLUBK  
       LDA    $AE     
       STX    COLUPF  
       LDX    $B4     
       STA    COLUPF  
       STX    COLUBK  
       LDA    $B2     
       LDX    $D8     
       STA.w  $0008   
       STX    COLUBK  
       INY            
       CPY    #$43    
       BCC    LF16C   
LF198: STA    WSYNC   
       LDA    LFD17,Y 
       STA    GRP0    
       STA    GRP1    
       LDA    $B1     
       STA    COLUPF  
       LDA    $B3     
       LDX    $B4     
       PHP            
       PLP            
       INY            
       STA    COLUBK  
       LDA.w  $00B5   
       STA    COLUPF  
       STX    COLUBK  
       LDA    $B6     
       STA    COLUPF  
       LDA    $B2     
       STA    COLUPF  
       LDA    $D8     
       STA    COLUBK  
       CPY    #$49    
       BCC    LF198   
LF1C5: STA    WSYNC   
       LDA    #$0F    
       STA    GRP0    
       STA    GRP1    
       LDA    $B5     
       STA    COLUP0  
       LDA    $B6     
       STA    COLUP1  
       LDA    $B1     
       STA    COLUPF  
       LDA    $B3     
       NOP            
       INY            
       STA    COLUBK  
       LDA    $B4     
       LDX    $B2     
       STX    COLUPF  
       STA    COLUBK  
       LDX    #$FF    
       LDA    $D8     
       PHP            
       PLP            
       STA    COLUBK  
       CPY    #$4E    
       BCC    LF1C5   
       STX    PF2     
LF1F5: STA    WSYNC   
       LDA    LFD17,Y 
       STA    PF1     
       LDA    $B7     
       STA    COLUPF  
       LDA    $B1     
       LDX    $B3     
       JSR    LF3AD   
       STA    COLUBK  
       STX.w  $0008   
       LDA    $B4     
       LDX    $B2     
       STA    COLUPF  
       STX    COLUBK  
       LDA    $B8     
       LDX    $D8     
       STA.w  $0008   
       STX.w  $0009   
       INY            
       CPY    #$54    
       BCC    LF1F5   
LF223: STA    WSYNC   
       LDX    $B3     
       LDA    $B7     
       STA    COLUPF  
       LDA    #$0F    
       STA    PF1     
       LDA    #$F0    
       STA    PF2     
       JSR    LF3AD   
       STX    COLUBK  
       LDA    $B8     
       LDX    $B4     
       STA    COLUPF  
       STX    COLUBK  
       LDA    $D8     
       INY            
       PHP            
       PLP            
       STA    COLUBK  
       CPY    #$56    
       BCC    LF223   
LF24B: STA    WSYNC   
       LDA    LFD17,Y 
       STA    PF2     
       LDA    $B7     
       STA    COLUPF  
       LDA    $B9     
       LDX    $B3     
       JSR    LF3AD   
       STA    COLUBK  
       LDA    $B4     
       STX    COLUPF  
       LDX    $BA     
       STA    COLUPF  
       STX    COLUBK  
       LDA    $B8     
       LDX    $D8     
       STA.w  $0008   
       STX    COLUBK  
       INY            
       CPY    #$5E    
       BCC    LF24B   
LF277: STA    WSYNC   
       LDA    LFD17,Y 
       STA    GRP0    
       STA    GRP1    
       LDA    $B7     
       STA    COLUPF  
       LDA    $B9     
       LDX    $BA     
       PHP            
       PLP            
       INY            
       STA    COLUBK  
       LDA.w  $00BB   
       STA    COLUPF  
       STX    COLUBK  
       LDA    $BC     
       STA    COLUPF  
       LDA    $B8     
       STA    COLUPF  
       LDA    $D8     
       STA    COLUBK  
       CPY    #$64    
       BCC    LF277   
       LDA    $BB     
       STA    COLUP0  
LF2A8: STA    WSYNC   
       LDA    LFD17,Y 
       STA    PF1     
       LDA    $B7     
       STA    COLUPF  
       LDA    #$0F    
       STA    GRP0    
       STA    GRP1    
       LDA    $BC     
       STA    COLUP1  
       LDA    $B9     
       LDX    $B8     
       INY            
       STA    COLUBK  
       LDA    $BA     
       STX    COLUPF  
       STA    COLUBK  
       LDA    $D8     
       PHP            
       PLP            
       STA    COLUBK  
       CPY    #$6F    
       BCC    LF2A8   
LF2D4: STA    WSYNC   
       LDX    #$00    
       STX    PF1     
       LDA    LFD17,Y 
       STA    PF2     
       LDA    $B9     
       STA    COLUPF  
       LDX    #$04    
LF2E5: DEX            
       BPL    LF2E5   
       LDA    $BA     
       STA    COLUPF  
       INY            
       CPY    #$77    
       BCC    LF2D4   
       INX            
       STX    PF2     
LF2F4: STA    WSYNC   
       LDA    LFD17,Y 
       STA    GRP0    
       STA    GRP1    
       INY            
       CPY    #$80    
       BCC    LF2F4   
       STX    REFP1   
       STA    GRP0    
       LDX    #$0B    
       JSR    LF3A2   
       LDX    #$07    
       STA    WSYNC   
LF30F: DEX            
       BNE    LF30F   
       LDA    #$10    
       STA    RESP0   
       STA    RESP1   
       STA    HMP0    
       ASL            
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       LDA    #$13    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDX    #$08    
       JSR    LF3A2   
       LDA    $D8     
       ADC    #$0E    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LF36C   
       LDX    #$04    
       JSR    LF3A2   
       LDA    #$C0    
       STA    HMP0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       STA    WSYNC   
       LDA    #$44    
       ADC    $D8     
       STA    COLUBK  
       STA    WSYNC   
       LDY    #$05    
       LDX    #$0A    
LF35C: LDA    LFD11,Y 
       STA    $86,X   
       DEX            
       DEX            
       DEY            
       BPL    LF35C   
       JSR    LF36C   
       STY    COLUBK  
       RTS            

LF36C: LDX    #$06    
       STX    $83     
LF370: LDY    $83     
       LDA    ($86),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($88),Y 
       STA    GRP1    
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    $84     
       LDA    ($8E),Y 
       TAX            
       LDA    ($90),Y 
       TAY            
       LDA    $84     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $83     
       BPL    LF370   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDX    #$03    
LF3A2: LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       DEX            
       BNE    LF3A2   
LF3AD: RTS            


START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF3B3: STA    VSYNC,X 
       INX            
       BNE    LF3B3   
       DEX            
       TXS            
       JSR    LF538   
LF3BD: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDX    #$03    
       JSR    LF3A2   
       STX    VSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       STA    WSYNC   
       LDX    #$06    
LF3D7: DEX            
       BPL    LF3D7   
       STA    RESP0   
       LDX    #$50    
       LDY    #$70    
       STA    RESBL   
       STA    RESP1   
       STX    HMP1    
       STY    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$37    
       STX    NUSIZ0  
       STX    NUSIZ1  
       INX            
       STX    REFP1   
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$31    
       STX    CTRLPF  
       STX    HMCLR   
       LDA    #$03    
       BIT    SWCHB   
       BPL    LF408   
       LDA    #$01    
LF408: AND    $92     
       BNE    LF42B   
       LDA    $9D     
       BEQ    LF42B   
       CMP    #$29    
       BCS    LF41B   
       JSR    LF5D5   
       DEC    $9D     
       BPL    LF42B   
LF41B: LDA    #$07    
       AND    $92     
       BNE    LF42B   
       LDX    $9F     
       CMP    $A2,X   
       BNE    LF429   
       LDA    $80     
LF429: STA    $A2,X   
LF42B: INC    $92     
       BNE    LF435   
       INC    $93     
       LDA    #$00    
       STA    $A1     
LF435: LDA    INTIM   
       BNE    LF435   
       STA    VBLANK  
       JSR    LF003   
       STA    WSYNC   
       LDA    #$82    
       STA    VBLANK  
       LDA    #$24    
       STA    TIM64T  
       LDY    #$00    
       CPY    $A1     
       BEQ    LF453   
       JMP    LF528   
LF453: LDA    SWCHB   
       AND    #$03    
       STA    $83     
       LDA    #$01    
       BIT    $83     
       BNE    LF467   
       BIT    $D9     
       BEQ    LF467   
LF464: JMP    LF523   
LF467: LDA    #$02    
       BIT    $83     
       BNE    LF485   
       BIT    $D9     
       BEQ    LF485   
       LDX    #$FE    
       CPX    $9E     
       BEQ    LF464   
       BCC    LF47E   
       INX            
       STX    $9E     
       BMI    LF483   
LF47E: JSR    LF6F8   
       STY    $9E     
LF483: STY    $99     
LF485: LDA    #$80    
       TAX            
       BIT    INPT4   
       BMI    LF494   
       TYA            
       BIT    $D9     
       BPL    LF494   
       STA    $D8     
       TAX            
LF494: ORA    $83     
       STA    $D9     
       STX    $82     
       LDA    $D9     
       CMP    #$83    
       BEQ    LF4A2   
       STY    $93     
LF4A2: LDA    #$FE    
       LDX    $93     
       BPL    LF4AD   
       STA    $9E     
       JSR    LF6F8   
LF4AD: LDA    #$FE    
       CMP    $9E     
       BNE    LF4C9   
       BIT    $D9     
       BPL    LF523   
       LDA    $92     
       BNE    LF4C9   
       LDX    #$36    
LF4BD: CLC            
       LDA    #$2E    
       ADC    $A2,X   
       AND    #$F7    
       STA    $A2,X   
       DEX            
       BPL    LF4BD   
LF4C9: LDA    $9D     
       BEQ    LF4D1   
       CMP    #$29    
       BCC    LF528   
LF4D1: LDY    $99     
       BEQ    LF4FA   
       BMI    LF4DD   
       LDA    ($97),Y 
       DEC    $99     
       BPL    LF4E3   
LF4DD: LDA    ($97),Y 
       INC    $99     
       EOR    #$80    
LF4E3: STA    $9C     
       LDX    #$0A    
       LDA    $9E     
       BPL    LF4F6   
       LDX    #$03    
       LDA    $99     
       BNE    LF4F6   
       LDA    LFAA9   
       STA    $9C     
LF4F6: STX    $9D     
       BNE    LF528   
LF4FA: LDA    $9E     
       BPL    LF504   
       JSR    LF6C2   
       JMP    LF528   
LF504: LDA    #$2F    
       STA    $97     
       LDA    #$FE    
       STA    $98     
       JSR    LF81B   
       LDY    #$00    
       LDA    ($97),Y 
       STA    $99     
       BPL    LF51E   
       SEC            
       LDA    $98     
       SBC    #$01    
       STA    $98     
LF51E: INC    $9E     
       JMP    LF528   
LF523: JSR    LF538   
       INC    $9E     
LF528: JSR    LF578   
       JSR    LF6A0   
LF52E: LDA    INTIM   
       BNE    LF52E   
       STA    VBLANK  
       JMP    LF3BD   
LF538: LDX    #$00    
       STX    SWACNT  
       STX    $9D     
       STX    $D9     
       STX    $99     
       STX    $D8     
       STX    $9C     
       STX    $9F     
       STX    $A0     
       LDY    #$FE    
       STY    $9E     
       LDA    #$FB    
       STA    $95     
       JSR    LFA16   
       LDA    #$02    
       BIT    SWCHB   
       BEQ    LF577   
       LDA    $92     
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$A6    
       STA    $97     
       LDA    #$FA    
       STA    $98     
       LDA    $92     
       AND    #$0F    
       ADC    #$0B    
       STA    $99     
       LDX    #$01    
       STX    $A0     
LF577: RTS            

LF578: LDA    #$FC    
       LDX    #$0A    
LF57C: STA    $87,X   
       DEX            
       DEX            
       BPL    LF57C   
       LDA    $9C     
       LSR            
       LSR            
       SEC            
       LDY    $9C     
       BMI    LF58C   
       CLC            
LF58C: ROL            
       AND    #$0F    
       TAX            
       LDA    LFD0B,X 
       STA    $86     
       LDX    #$07    
       LDY    #$FE    
       CPY    $9E     
       BEQ    LF5B4   
       BCS    LF5B3   
       LDX    #$05    
       LDA    $9D     
       BEQ    LF5B4   
       CMP    #$29    
       BCC    LF5B2   
       BEQ    LF5B3   
       LDX    #$03    
       BIT    SWCHB   
       BVC    LF5B3   
LF5B2: DEX            
LF5B3: DEX            
LF5B4: TXA            
       STA    $84     
       ASL            
       ASL            
       ADC    $84     
       TAY            
       LDX    #$08    
LF5BE: DEY            
       LDA    LFBE2,Y 
       STA    $88,X   
       DEX            
       DEX            
       BPL    LF5BE   
       CPX    $9E     
       BEQ    LF5D0   
       LDA    $9C     
       BNE    LF5D4   
LF5D0: LDA    #$F3    
       STA    $86     
LF5D4: RTS            

LF5D5: LDA    $9D     
       CMP    #$04    
       BCC    LF5E7   
       BNE    LF5E6   
       LSR            
       BIT    $D9     
       BPL    LF5E6   
       BEQ    LF5E6   
       INC    $9D     
LF5E6: RTS            

LF5E7: CMP    #$03    
       BNE    LF5F7   
       AND    $9C     
       TAY            
       LDA    LFB6E,Y 
       STA    $94     
       LDY    #$04    
       STY    $96     
LF5F7: LDA    $9C     
       BEQ    LF5E6   
       AND    #$0F    
       LDX    #$01    
       STX    $83     
       BIT    $9C     
       BVC    LF60F   
       LDX    #$03    
       STX    $83     
LF609: LDA    $9C     
       ORA    $83     
       AND    #$0F    
LF60F: STA    $80     
       LDY    $9D     
       CPY    #$02    
       BEQ    LF635   
       LSR            
       BCC    LF635   
       TAX            
       LDA    #$FE    
       STA    $9B     
       LDA    LFFE6,X 
       STA    $9A     
       LDX    #$07    
       STX    $84     
       BIT    $9C     
       BMI    LF632   
       JSR    LF656   
       JMP    LF635   
LF632: JSR    LF67A   
LF635: LDX    $80     
       LDA    LFFDA,X 
       STA    $9A     
       LDA    #$FD    
       STA    $9B     
       LDX    #$0B    
       STX    $84     
       BIT    $9C     
       BMI    LF64E   
       JSR    LF656   
       JMP    LF651   
LF64E: JSR    LF67A   
LF651: DEC    $83     
       BNE    LF609   
       RTS            

LF656: LDY    $84     
       LDA    ($9A),Y 
       TAX            
       LDA    $A2,X   
       STA    $81     
LF65F: DEY            
       LDA    ($9A),Y 
       TAX            
       LDA    $A2,X   
       STA    $82     
       INY            
       LDA    ($9A),Y 
       TAX            
       LDA    $82     
       STA    $A2,X   
       DEY            
       BNE    LF65F   
       LDA    ($9A),Y 
       TAX            
       LDA    $81     
       STA    $A2,X   
       RTS            

LF67A: LDY    #$00    
       LDA    ($9A),Y 
       TAX            
       LDA    $A2,X   
       STA    $81     
LF683: INY            
       LDA    ($9A),Y 
       TAX            
       LDA    $A2,X   
       STA    $82     
       DEY            
       LDA    ($9A),Y 
       TAX            
       LDA    $82     
       STA    $A2,X   
       INY            
       CPY    $84     
       BNE    LF683   
       LDA    ($9A),Y 
       TAX            
       LDA    $81     
       STA    $A2,X   
       RTS            

LF6A0: LDA    #$03    
       AND    $92     
       BNE    LF6C1   
       LDY    $96     
       BEQ    LF6BD   
       DEY            
       LDA    ($94),Y 
       STA    AUDF0   
       DEY            
       LDA    ($94),Y 
       STA    AUDC0   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDV0   
       STY    $96     
       RTS            

LF6BD: LDA    #$00    
       STA    AUDV0   
LF6C1: RTS            

LF6C2: LDY    $9D     
       BNE    LF6EB   
       LDY    #$29    
       LDA    #$03    
       BIT    $9C     
       BEQ    LF6D8   
       INY            
LF6CF: STY    $9D     
       LDX    $9F     
       LDA    $A2,X   
       STA    $80     
       RTS            

LF6D8: BIT    $82     
       BPL    LF6CF   
       JSR    LF76E   
       BCS    LF70B   
       LDA    LFAA6,X 
       STA    $9C     
       LDX    #$03    
       STX    $9D     
       RTS            

LF6EB: BIT    $82     
       BMI    LF712   
       LDY    $9D     
       CPY    #$29    
       BNE    LF6F8   
       INC    $9D     
       RTS            

LF6F8: LDA    $9D     
       CMP    #$29    
       BCC    LF70A   
       LDA    $80     
       LDX    $9F     
       STA    $A2,X   
       LDY    #$00    
       STY    $9D     
       STY    $9C     
LF70A: RTS            

LF70B: LDA    $A0     
       BEQ    LF70A   
       JMP    LF9D8   
LF712: JSR    LF76E   
       BCS    LF70B   
       LDA    $80     
       LDY    $9F     
       STA.wy $00A2,Y 
       LDA    $9D     
       CMP    #$29    
       BNE    LF737   
       TYA            
       ASL            
       ASL            
       STX    $80     
       ADC    $80     
       TAX            
       LDA    LFA3A,X 
       TAX            
       LDA    $A2,X   
       STA    $80     
       STX    $9F     
       RTS            

LF737: BIT    SWCHB   
       BVS    LF754   
       LDX    #$06    
LF73E: LDA    LFCFA,X 
       DEX            
       CMP    $80     
       BNE    LF73E   
       LDA    LFCFA,X 
       LDX    $9F     
       STA    $A2,X   
       STA    $80     
       LDY    #$00    
       STY    $A0     
       RTS            

LF754: TYA            
       ASL            
       STA    $81     
       TXA            
       LSR            
       CLC            
       ADC    $81     
       TAY            
       TXA            
       ROR            
       LDA    LFAAA,Y 
       BCC    LF767   
       EOR    #$80    
LF767: STA    $9C     
       LDA    #$03    
       STA    $9D     
       RTS            

LF76E: SEC            
       LDA    $92     
       AND    #$1F    
       BNE    LF780   
       LDA    SWCHA   
       LDX    #$03    
LF77A: ASL            
       BCC    LF780   
       DEX            
       BPL    LF77A   
LF780: RTS            

LF781: .byte $85,$80,$0A,$65,$80,$A8,$A9,$02,$85,$81,$88,$B9,$28,$FB,$AA,$B5
       .byte $A2,$A6,$81,$95,$82,$C6,$81,$10,$F1,$A5,$84,$85,$81,$A5,$83,$85
       .byte $80,$A0,$08,$84,$99,$A5,$99,$0A,$65,$99,$A8,$C6,$99,$10,$01,$60
       .byte $A2,$04,$86,$9A,$CA,$86,$9B,$88,$B9,$10,$FB,$AA,$B5,$A2,$A6,$9A
       .byte $C6,$9A,$D5,$80,$D0,$0B,$C6,$9B,$D0,$ED,$A9,$01,$E5,$9A,$85,$9A
       .byte $60,$A2,$02,$E4,$9B,$B0,$CE,$CA,$E4,$9A,$90,$E2,$B0,$C7,$0A,$A8
       .byte $B9,$F8,$FA,$AA,$B5,$A2,$85,$80,$C8,$B9,$F8,$FA,$AA,$B5,$A2,$85
       .byte $81,$A0,$18,$88,$30,$23,$B9,$E0,$FA,$AA,$B5,$A2,$C5,$80,$D0,$F3
       .byte $98,$6A,$B0,$0B,$B9,$E1,$FA,$AA,$B5,$A2,$C5,$81,$D0,$E5,$60,$B9
       .byte $DF,$FA,$AA,$B5,$A2,$C5,$81,$D0,$DA,$60
LF81B: LDY    #$F8    
       LDX    $9E     
       CPX    #$20    
       BCC    LF824   
       INY            
LF824: STY    $81     
       LDA    LFB40,X 
       STA    $80     
       JMP.ind ($0080)
LF82E: .byte $A2,$04,$A9,$00,$85,$A0,$95,$80,$CA,$10,$FB,$86,$85,$A0,$05,$B9
       .byte $02,$FD,$AA,$B5,$A2,$A2,$04,$D5,$80,$F0,$37,$CA,$10,$F9,$88,$30
       .byte $05,$99,$80,$00,$10,$E9,$60,$A5,$85,$10,$04,$A9,$0B,$85,$85,$20
       .byte $DF,$F7,$98,$30,$1D,$C6,$85,$30,$02,$C6,$9E,$60,$A5,$85,$10,$04
       .byte $A9,$08,$85,$85,$20,$81,$F7,$A5,$99,$30,$07,$C6,$85,$F0,$02,$C6
       .byte $9E,$60,$A0,$FE,$84,$D8,$84,$9E,$A0,$00,$84,$9C,$A9,$82,$85,$94
       .byte $A0,$12,$84,$96,$60,$A2,$48,$86,$9C,$A2,$0A,$86,$9D,$60,$A9,$08
       .byte $20,$DF,$F7,$B9,$9E,$FF,$85,$97,$A9,$FE,$85,$98,$60,$A9,$05,$20
       .byte $81,$F7,$A6,$99,$E0,$04,$D0,$04,$A5,$9A,$F0,$09,$BD,$B6,$FF,$85
       .byte $97,$A9,$FE,$85,$98,$60,$A9,$05,$20,$81,$F7,$A5,$99,$D0,$0B,$A6
       .byte $9A,$BD,$08,$FD,$85,$97,$A9,$FE,$85,$98,$60,$A9,$04,$20,$DF,$F7
       .byte $B9,$BE,$FF,$85,$97,$A9,$FE,$85,$98,$60,$A9,$04,$20,$DF,$F7,$C0
       .byte $08,$F0,$0E,$A9,$09,$C0,$06,$F0,$02,$A9,$00,$85,$97,$A9,$FF,$85
       .byte $98,$60,$A9,$00,$A6,$A6,$E4,$A4,$D0,$02,$09,$01,$E4,$A3,$D0,$02
       .byte $09,$02,$E4,$A9,$D0,$02,$09,$04,$A8,$B9,$12,$FF,$4A,$AA,$BD,$D0
       .byte $FF,$85,$97,$A9,$FF,$85,$98,$90,$03,$4C,$93,$F8,$60,$A0,$04,$B9
       .byte $01,$FD,$88,$AA,$B5,$A2,$C5,$AC,$F0,$04,$C5,$A9,$D0,$F1,$B9,$01
       .byte $FD,$AA,$B5,$A2,$C5,$AE,$F0,$04,$C5,$AA,$D0,$08,$A9,$3D,$85,$97
       .byte $A9,$FF,$85,$98,$4C,$93,$F8,$A9,$00,$20,$DF,$F7,$C0,$02,$90,$0A
       .byte $A2,$09,$86,$9C,$A2,$0A,$86,$9D,$C6,$9E,$60,$A9,$01,$20,$81,$F7
       .byte $A6,$99,$CA,$86,$85,$60,$A9,$03,$20,$81,$F7,$A5,$85,$30,$10,$C5
       .byte $99,$F0,$01,$18,$2A,$AA,$BD,$D5,$FF,$85,$97,$A9,$FF,$85,$98,$4C
       .byte $93,$F8,$A0,$09,$A2,$02,$86,$83,$A2,$03,$86,$84,$C6,$84,$88,$B9
       .byte $10,$FB,$AA,$B5,$A2,$C5,$A6,$D0,$F3,$A6,$83,$A5,$84,$95,$80,$98
       .byte $E5,$84,$A8,$C6,$83,$10,$E1,$A5,$81,$A4,$82,$C0,$01,$2A,$A4,$80
       .byte $F0,$0D,$C0,$02,$2A,$AA,$BD,$EC,$FF,$85,$97,$A9,$FF,$85,$98,$4C
       .byte $93,$F8,$A2,$FE,$86,$9E,$A0,$00,$84,$9C
LF9D8: LDA    #$FE    
       STA    $82     
       LDY    #$05    
LF9DE: STY    $84     
       LDA    LFFE6,Y 
       STA    $81     
       LDY    #$08    
       LDA    ($81),Y 
       TAX            
       LDA    $A2,X   
       STA    $83     
LF9EE: DEY            
       BMI    LF9FB   
       LDA    ($81),Y 
       TAX            
       LDA    $A2,X   
       CMP    $83     
       BEQ    LF9EE   
       RTS            

LF9FB: LDY    $84     
       DEY            
       BPL    LF9DE   
       LDA    #$01    
       AND    $A0     
       STA    $A1     
       JSR    LF6F8   
       LDY    #$00    
       STY    $A0     
       LDA    #$94    
       STA    $94     
       LDY    #$4C    
       STY    $96     
       RTS            

LFA16: LDY    #$05    
LFA18: STY    $83     
       LDA    LFCFA,Y 
       STA    $82     
       LDA    LFFE6,Y 
       STA    $80     
       LDA    #$FE    
       STA    $81     
       LDY    #$08    
LFA2A: LDA    ($80),Y 
       TAX            
       LDA    $82     
       STA    $A2,X   
       DEY            
       BPL    LFA2A   
       LDY    $83     
       DEY            
       BPL    LFA18   
       RTS            

LFA3A: .byte $15,$01,$16,$02,$00,$03,$18,$04,$17,$04,$00,$05,$01,$06,$1A,$07
       .byte $02,$07,$01,$08,$19,$08,$02,$09,$03,$0F,$09,$0A,$04,$0A,$03,$0B
       .byte $05,$0B,$04,$0C,$05,$10,$0C,$06,$07,$11,$06,$0D,$08,$0D,$07,$0E
       .byte $08,$12,$0E,$09,$0B,$13,$0A,$0E,$0B,$14,$0D,$0C,$06,$15,$10,$11
       .byte $09,$16,$12,$0F,$0A,$17,$0F,$13,$0C,$18,$14,$10,$0D,$19,$11,$14
       .byte $0E,$1A,$13,$12,$0F,$00,$16,$17,$10,$00,$18,$15,$11,$02,$15,$19
       .byte $12,$01,$1A,$16,$13,$05,$17,$1A,$14,$03,$19,$18
LFAA6: .byte $44,$C4,$48
LFAA9: .byte $40
LFAAA: .byte $07,$83,$07,$82,$06,$83,$07,$81,$06,$82,$05,$83,$07,$09,$06,$81
       .byte $05,$82,$83,$09,$06,$09,$05,$81,$82,$09,$05,$09,$81,$09,$07,$0A
       .byte $83,$0A,$06,$0A,$82,$0A,$05,$0A,$81,$0A,$07,$0B,$83,$0B,$06,$0B
       .byte $82,$0B,$05,$0B,$81,$0B,$07,$0A,$01,$32,$02,$33,$08,$0C,$13,$14
       .byte $2A,$0F,$2F,$2E,$10,$2B,$17,$1C,$25,$22,$27,$23,$18,$1D,$04,$11
       .byte $04,$2C,$04,$2D,$04,$12,$11,$12,$2C,$11,$2D,$2C,$12,$2D,$11,$1F
       .byte $2C,$1F,$2D,$1F,$12,$1F,$0B,$0E,$0D,$03,$06,$30,$00,$34,$35,$05
       .byte $31,$09,$19,$1A,$1B,$21,$15,$1E,$29,$28,$26,$16,$24,$20,$04,$12
       .byte $11,$04,$11,$2C,$04,$2C,$2D,$04,$2D,$12,$11,$12,$1F,$2C,$11,$1F
       .byte $2D,$2C,$1F,$12,$2D,$1F
LFB40: .byte $2E,$55,$6A,$9C,$93,$9C,$93,$9C,$93,$9C,$AB,$C4,$93,$AB,$C4,$93
       .byte $AB,$C4,$93,$AB,$C4,$D9,$E8,$93,$D9,$E8,$93,$D9,$E8,$93,$D9,$E8
       .byte $00,$2B,$2B,$2B,$2B,$55,$69,$74,$69,$74,$90,$90,$90,$D0
LFB6E: .byte $72,$76,$7A,$7E,$44,$1F,$64,$1F,$46,$05,$66,$05,$4E,$02,$6E,$02
       .byte $46,$10,$66,$10,$1F,$06,$2F,$06,$3F,$04,$4F,$0B,$5F,$0B,$AF,$04
       .byte $BF,$03,$CF,$06,$DF,$17,$14,$1F,$24,$1F,$34,$1F,$44,$1F,$54,$1F
       .byte $64,$1F,$3C,$14,$5C,$14,$34,$14,$54,$14,$3C,$0D,$5C,$0D,$3C,$13
       .byte $5C,$13,$3C,$12,$5C,$12,$0C,$12,$0C,$12,$3C,$0E,$5C,$0E,$34,$1F
       .byte $54,$1F,$34,$1C,$54,$1C,$34,$13,$54,$13,$34,$0F,$54,$0F,$74,$0F
       .byte $34,$1F,$44,$1F,$54,$1F,$3C,$14,$54,$1F,$34,$1F,$14,$1F,$00,$00
       .byte $00,$00,$00,$00
LFBE2: .byte $59,$60,$36,$3D,$44,$98,$9F,$AD,$6E,$75,$F3,$F3,$F3,$F3,$F3,$98
       .byte $9F,$A6,$2F,$52,$59,$60,$67,$4B,$52,$F3,$7C,$83,$8A,$91,$B4,$BB
       .byte $C2,$C9,$D0,$08,$1C,$2A,$08,$08,$10,$20,$04,$04,$04,$24,$28,$30
       .byte $3C,$20,$20,$20,$24,$14,$0C,$3C,$10,$38,$54,$10,$10,$08,$04,$00
       .byte $20,$40,$FF,$40,$20,$00,$00,$04,$02,$FF,$02,$04,$00,$53,$54,$54
       .byte $74,$54,$54,$23,$46,$41,$C1,$C2,$44,$44,$43,$74,$45,$45,$45,$45
       .byte $45,$44,$DC,$10,$10,$1C,$10,$10,$DC,$26,$55,$55,$56,$55,$55,$56
       .byte $70,$40,$40,$70,$40,$40,$70,$11,$12,$12,$12,$12,$12,$3A,$2A,$AA
       .byte $AA,$B3,$AB,$AA,$B2,$43,$44,$C4,$C4,$44,$44,$43,$27,$54,$54,$54
       .byte $54,$54,$24,$25,$55,$55,$56,$55,$55,$26,$31,$0A,$0A,$12,$22,$22
       .byte $19,$38,$A0,$A1,$A1,$A2,$A2,$22,$8A,$8A,$4A,$4B,$2B,$2A,$2A,$4C
       .byte $52,$D2,$D3,$50,$50,$4C,$08,$08,$08,$0C,$0A,$0A,$0C,$9A,$A2,$A2
       .byte $A3,$A3,$A2,$9A,$44,$84,$84,$07,$04,$84,$47,$43,$84,$84,$04,$04
       .byte $84,$43,$79,$85,$B5,$A5,$B5,$85,$79,$17,$15,$15,$77,$55,$55,$77
       .byte $71,$41,$41,$71,$11,$51,$70,$49,$49,$49,$C9,$49,$49,$BE,$55,$55
       .byte $55,$D9,$55,$55,$99,$29,$2A,$2A,$32,$2A,$2A,$32,$32,$AA,$AA,$B2
       .byte $AA,$AA,$B2,$91,$A0,$A0,$C0,$C1,$A5,$94,$83,$44,$44,$84,$04,$04
       .byte $C3,$00,$00,$00,$00,$00,$00,$00
LFCFA: .byte $22,$18,$1C,$0E,$84,$D6,$22,$12,$2D,$2C,$11,$12,$04,$1F,$B1,$B5
       .byte $BD
LFD0B: .byte $05,$0C,$13,$1A,$21,$28
LFD11: .byte $D7,$DE,$E5,$EC,$4B,$52
LFD17: .byte $01,$01,$03,$03,$07,$07,$0F,$0F,$18,$18,$3C,$3C,$7E,$7E,$FF,$FF
       .byte $7E,$7E,$3C,$3C,$18,$18,$00,$00,$18,$18,$3C,$3C,$7E,$7E,$FF,$FF
       .byte $7E,$7E,$3C,$3C,$18,$18,$00,$00,$08,$08,$0C,$0C,$0E,$0E,$0F,$0F
       .byte $0F,$0F,$0F,$08,$08,$0C,$0C,$0E,$0E,$00,$00,$FE,$FE,$FC,$FC,$F8
       .byte $F8,$F0,$F0,$07,$07,$03,$03,$01,$01,$00,$00,$00,$00,$00,$08,$08
       .byte $0C,$0C,$0E,$0E,$00,$00,$FE,$FE,$FC,$FC,$F8,$F8,$F0,$F0,$07,$07
       .byte $03,$03,$01,$01,$0F,$0F,$0F,$0F,$0F,$07,$07,$03,$03,$01,$01,$0F
LFD87: .byte $0F,$0E,$0E,$0C,$0C,$08,$08,$0F,$0F,$07,$07,$03,$03,$01,$01,$00
       .byte $01,$01,$03,$03,$07,$07,$0F,$0F,$03,$07,$0B,$0E,$14,$1A,$1B,$1C
       .byte $1E,$21,$2A,$30,$01,$04,$08,$0C,$12,$18,$1D,$1F,$22,$25,$2C,$32
       .byte $00,$02,$05,$09,$10,$16,$20,$23,$26,$28,$2E,$34,$0B,$08,$05,$31
       .byte $2B,$24,$20,$1D,$1B,$19,$13,$0D,$07,$04,$02,$33,$2D,$27,$23,$1F
       .byte $1C,$17,$11,$0A,$03,$01,$00,$35,$2F,$29,$26,$22,$1E,$15,$0F,$06
       .byte $09,$0C,$0E,$0D,$0A,$06,$30,$32,$34,$35,$33,$31,$10,$12,$14,$13
       .byte $11,$0F,$2A,$2C,$2E,$2F,$2D,$2B,$16,$18,$1A,$19,$17,$15,$21,$25
       .byte $28,$29,$27,$24,$06,$0A,$0D,$13,$19,$17,$15,$0F,$11,$35,$33,$31
       .byte $2B,$24,$27,$29,$2F,$2D,$0E,$0C,$09,$10,$16,$18,$1A,$14,$12,$30
       .byte $32,$34,$2E,$28,$25,$21,$2A,$2C,$00,$02,$05,$08,$0B,$07,$03,$01
       .byte $04,$20,$1D,$1B,$1C,$1E,$22,$26,$23,$1F,$04,$8A,$81,$0A,$01,$02
       .byte $01,$01,$03,$07,$81,$87,$03,$01,$01,$89,$04,$07,$81,$87,$89,$04
       .byte $01,$01,$89,$89,$03,$05,$01,$85,$03,$01,$01,$09,$01,$01,$FF,$03
       .byte $8A,$81,$0A,$FD,$03,$0A,$01,$8A,$FD,$05,$0A,$0A,$01,$0A,$0A,$FB
       .byte $04,$8A,$81,$0A,$81,$04,$0A,$01,$8A,$07,$02,$81,$07,$06,$0A,$0A
       .byte $01,$0A,$0A,$03,$04,$8A,$01,$0A,$83,$04,$81,$0A,$05,$8A,$02,$01
       .byte $05,$01,$89,$FF,$02,$09,$09,$04,$89,$85,$09,$05,$03,$87,$89,$07
       .byte $04,$89,$83,$89,$03,$04,$09,$05,$09,$85,$03,$01,$89,$81,$07,$01
       .byte $09,$09,$81,$85,$89,$05,$03,$85,$09,$05,$09,$09,$09,$01,$09,$81
       .byte $89,$85,$89,$05,$07,$87,$09,$07,$89,$81,$89,$01,$08,$09,$87,$09
       .byte $07,$89,$81,$89,$01,$08,$89,$83,$09,$03,$89,$07,$89,$87,$07,$83
       .byte $09,$03,$89,$07,$89,$87,$09,$09,$09,$05,$09,$85,$89,$03,$89,$83
       .byte $08,$89,$05,$09,$85,$89,$03,$89,$83,$08,$01,$09,$81,$89,$85,$89
       .byte $05,$09,$08,$85,$89,$05,$09,$01,$09,$81,$89,$06,$02,$04,$03,$01
       .byte $05,$00,$09,$06,$85,$03,$89,$83,$09,$05,$06,$07,$81,$89,$01,$09
       .byte $87,$06,$81,$89,$85,$09,$05,$01,$0D,$81,$89,$85,$09,$05,$01,$09
       .byte $81,$85,$89,$05,$09,$01,$0A,$09,$09,$85,$09,$09,$05,$09,$85,$09
       .byte $05,$08,$87,$89,$85,$09,$07,$89,$05,$09,$F8,$08,$01,$89,$03,$09
       .byte $81,$89,$83,$09,$F8,$08,$05,$89,$07,$09,$85,$89,$87,$09,$F8,$10
       .byte $09,$07,$0B,$87,$8B,$07,$0B,$87,$89,$07,$8B,$87,$0B,$07,$8B,$87
       .byte $F0,$12,$09,$09,$07,$0B,$87,$8B,$07,$0B,$87,$09,$09,$07,$8B,$87
       .byte $0B,$07,$8B,$87,$EE,$10,$89,$07,$0B,$87,$8B,$07,$0B,$87,$09,$07
       .byte $8B,$87,$0B,$07,$8B,$87,$F0,$41,$46,$49,$4D,$51,$56,$5B,$5F,$63
       .byte $66,$6B,$65,$70,$6F,$6A,$76,$2F,$77,$7C,$81,$84,$8B,$90,$95,$2F
       .byte $98,$9B,$9A,$9E,$A3,$A7,$AC,$98,$2F,$9B,$98,$9A,$9B,$2F,$9A,$2F
       .byte $C1,$CB,$D3,$DC,$E5,$ED,$F7,$00,$09,$1A,$21,$28,$2F,$E2,$52,$48
       .byte $5C,$51,$65
LFFDA: .byte $5B,$9F,$AB,$B7,$00,$C3,$CF,$DB,$00,$E7,$F3,$FF
LFFE6: .byte $0B,$14,$1D,$26,$2F,$38,$9D,$8C,$8B,$78,$77,$66,$8B,$78,$77,$66
       .byte $77,$66,$00,$00,$AE,$F3,$AE,$F3,$AE,$F3
