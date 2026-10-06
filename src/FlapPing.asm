; Disassembly of roms/FlapPing.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/FlapPing.bin
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
RESM0   =  $12
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
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
       TAY            
LF006: DEX            
       TXS            
       PHA            
       BNE    LF006   
       LDA    #$00    
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$01    
       STA    $A4     
       LDA    #$FE    
       STA    $9B     
       STA    $9D     
       STA    $97     
       STA    $99     
       STA    $E0     
LF029: LDA    #$E6    
       STA    $91     
       LDA    #$00    
       STA    $90     
       LDA    #$0E    
       STA    $81     
       LDA    #$0E    
       STA    $85     
       LDA    #$0E    
       STA    $E2     
       LDA    #$00    
       STA    $9F     
       LDA    #$50    
       STA    $E1     
       LDA    #$2E    
       STA    $DF     
       LDA    #$1F    
       STA    COLUPF  
       LDA    #$00    
       STA    CTRLPF  
       STA    WSYNC   
       STA    RESM1   
       LDX    #$07    
LF057: DEX            
       BNE    LF057   
       NOP            
       NOP            
       STA    RESP1   
       STA    RESBL   
       LDX    #$03    
LF062: DEX            
       BNE    LF062   
       STA    RESP0   
       NOP            
       STA    RESM0   
       LDA    #$10    
       STA    HMP0    
       LDA    #$80    
       STA    HMM0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$88    
       STA    COLUP0  
       LDA    #$28    
       STA    COLUP1  
       LDA    #$02    
       STA    NUSIZ0  
       LDA    #$05    
       STA    NUSIZ1  
       TSX            
       STX    $E9     
       LDX    #$1D    
       TXS            
       LDA    #$00    
       STA    HMP0    
       JMP    LF102   
LF093: LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2B    
       STA    TIM64T  
       LDA    #$00    
       STA    VSYNC   
       INC    $F5     
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF0E6   
       LDA    $A3     
       BEQ    LF0B6   
       JMP    LF175   
LF0B6: LDA    #$10    
       BIT    SWCHA   
       BNE    LF0C2   
       DEC    $A2     
       JMP    LF108   
LF0C2: LDA    #$80    
       BIT    SWCHA   
       BNE    LF0CE   
       DEC    $A2     
       JMP    LF108   
LF0CE: LDA    #$20    
       BIT    SWCHA   
       BNE    LF0DA   
       INC    $A2     
       JMP    LF108   
LF0DA: LDA    #$40    
       BIT    SWCHA   
       BNE    LF0E6   
       INC    $A2     
       JMP    LF108   
LF0E6: LDA    SWCHB   
       AND    #$01    
       TAY            
       BEQ    LF0F8   
       LDA    $A4     
       BNE    LF0F8   
       TYA            
       STA    $A4     
       JMP    LF29F   
LF0F8: TYA            
       STA    $A4     
       LDA    SWCHB   
       AND    #$02    
       BNE    LF171   
LF102: LDA    $A3     
       BNE    LF175   
       DEC    $A2     
LF108: LDA    #$01    
       STA    $A3     
       LDA    $A2     
       BPL    LF114   
       LDA    #$05    
       STA    $A2     
LF114: LDA    #$05    
       CMP    $A2     
       BCS    LF11E   
       LDA    #$00    
       STA    $A2     
LF11E: LDA    $A2     
       AND    #$01    
       LDA    #$01    
       CMP    $A2     
       BCC    LF133   
       LDA    #$01    
       STA    $A1     
       LDA    #$13    
       STA    $9C     
       JMP    LF150   
LF133: LDA    #$00    
       STA    $A1     
       LDA    #$03    
       CMP    $A2     
       BCC    LF148   
       LDA    #$0F    
       STA    $9E     
       LDA    #$41    
       STA    $9C     
       JMP    LF150   
LF148: LDA    #$00    
       STA    $9E     
       LDA    #$37    
       STA    $9C     
LF150: LDA    $A2     
       AND    #$01    
       BNE    LF15F   
       LDA    #$02    
       STA    $D8     
       LDA    #$20    
       JMP    LF165   
LF15F: LDA    #$09    
       STA    $D8     
       LDA    #$00    
LF165: LDX    #$15    
LF167: STA    $A8,X   
       STA    $BE,X   
       DEX            
       BNE    LF167   
       JMP    LF175   
LF171: LDA    #$00    
       STA    $A3     
LF175: LDA    REFP1   
       BMI    LF17C   
       JMP    LF29F   
LF17C: LDA    #$01    
       STA    $EB     
       JMP    LFB0E   
LF183: LDA    INTIM   
       BNE    LF183   
       STA    VBLANK  
       LDA    #$00    
       STA    CTRLPF  
       LDY    #$17    
LF190: STA    WSYNC   
       DEY            
       BNE    LF190   
       LDA    #$34    
       STA    COLUPF  
       LDX    #$23    
       LDY    #$02    
LF19D: STA    WSYNC   
       LDA    LFE9E,X 
       STA    PF0     
       LDA    LFEC1,X 
       STA    PF1     
       LDA    LFEE4,X 
       STA    PF2     
       NOP            
       NOP            
       NOP            
       LDA    LFF07,X 
       STA    PF0     
       LDA    LFF2A,X 
       STA    PF1     
       LDA    LFF4D,X 
       STA    PF2     
       DEY            
       BNE    LF1C8   
       DEX            
       BEQ    LF1CB   
       LDY    #$02    
LF1C8: JMP    LF19D   
LF1CB: NOP            
       NOP            
       NOP            
       LDA    #$00    
       STA    PF2     
       STA    PF0     
       STA    PF1     
       LDY    #$18    
LF1D8: STA    WSYNC   
       DEY            
       BNE    LF1D8   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$01    
       STA    $9A     
       JMP    LF200   
LF1E8: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LF200: STA    WSYNC   
       LDX    #$0A    
LF204: DEX            
       BNE    LF204   
       LDX    #$10    
       NOP            
       NOP            
       NOP            
       JMP    LF21B   
LF20F: LDA    $F8     
       BEQ    LF22C   
LF213: LDA    $F8     
       BEQ    LF23F   
LF217: LDA    $F8     
       BEQ    LF278   
LF21B: TXA            
       SEC            
       SBC    $81     
       ADC    #$09    
       STY    GRP1    
       LDY    #$7C    
       STY    COLUP0  
       BCC    LF20F   
       TAY            
       LDA    ($9A),Y 
LF22C: STA    GRP0    
       STA    $89     
       LDA    #$00    
       STA    PF0     
       TXA            
       SEC            
       SBC    $85     
       ADC    #$09    
       BCC    LF213   
       TAY            
       LDA    ($9C),Y 
LF23F: STA    GRP0    
       LDY    #$4D    
       STY    COLUP0  
       STA    $8B     
       PLA            
       CPX    $91     
       PHP            
       TXA            
       LSR            
       STA    COLUPF  
       LSR            
       TAY            
       LDA.wy $00A8,Y 
       NOP            
       NOP            
       STA    PF0     
       LDA    $89     
       STA    GRP0    
       LDA    #$7C    
       STA    COLUP0  
       SEC            
       LDA.wy $00BE,Y 
       STA    PF0     
       LDA    #$4D    
       STA    COLUP0  
       LDA    $8B     
       STA    GRP0    
       TXA            
       SBC    $E2     
       ADC    #$08    
       BCC    LF217   
       TAY            
       LDA    ($DF),Y 
LF278: TAY            
       DEX            
       BNE    LF21B   
       STX    PF0     
       STX    ENAM1   
       STA    WSYNC   
       STX    GRP0    
       STX    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$28    
LF28C: STA    WSYNC   
       DEY            
       BNE    LF28C   
       LDA    #$02    
       STA    VBLANK  
       LDX    #$1E    
LF297: STA    WSYNC   
       DEX            
       BNE    LF297   
       JMP    LF093   
LF29F: LDA    #$11    
       STA    CTRLPF  
       LDA    #$2C    
       STA    $81     
       STA    $85     
       LDA    #$31    
       STA    $E2     
       LDA    #$4B    
       STA    $E1     
       LDA    #$00    
       STA    $E3     
       STA    $E4     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $80     
       STA    $84     
       STA    $83     
       STA    $82     
       STA    $87     
       STA    $86     
       STA    $94     
       STA    $95     
       STA    $A5     
       LDA    #$60    
       STA    $F4     
       LDA    #$FE    
       STA    $9B     
       STA    $9D     
       STA    $E0     
       LDA    $A2     
       AND    #$01    
       BNE    LF2E6   
       LDA    #$20    
       JMP    LF2E8   
LF2E6: LDA    #$00    
LF2E8: LDX    #$15    
LF2EA: STA    $A8,X   
       STA    $BE,X   
       DEX            
       BNE    LF2EA   
       LDA    #$9F    
       STA    COLUPF  
       LDA    #$26    
       STA    $91     
       LDA    #$00    
       STA    $90     
       LDA    #$55    
       STA    $DB     
       LDA    #$02    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC1   
LF30D: INC    $F5     
       LDA    SWCHB   
       AND    #$01    
       TAY            
       BEQ    LF321   
       LDA    $A4     
       BNE    LF321   
       TYA            
       STA    $A4     
       JMP    LF29F   
LF321: TYA            
       STA    $A4     
       LDA    SWCHB   
       AND    #$02    
       BNE    LF35C   
       LDA    #$00    
       STA    CTRLPF  
       LDA    #$0A    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDC1   
       LDA    $A2     
       AND    #$01    
       BNE    LF342   
       LDA    #$20    
       JMP    LF344   
LF342: LDA    #$00    
LF344: LDX    #$15    
LF346: STA    $A8,X   
       STA    $BE,X   
       DEX            
       BNE    LF346   
       LDA    #$00    
       STA    $D4     
       STA    $D5     
       STA    $D6     
       STA    $D7     
       INC    $A2     
       JMP    LF029   
LF35C: LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2B    
       STA    TIM64T  
       LDA    #$00    
       STA    VSYNC   
       LDA    $F3     
       BNE    LF375   
       STA    AUDV1   
LF375: LDA    REFP1   
       BMI    LF399   
       LDA    #$0A    
       STA    $9A     
       LDA    $8C     
       BNE    LF396   
       CLC            
       LDA    $82     
       ADC    #$C8    
       STA    $82     
       LDA    $83     
       ADC    #$00    
       STA    $83     
       LDA    #$01    
       STA    $8C     
       LDA    #$0F    
       STA    $A0     
LF396: JMP    LF3A1   
LF399: LDA    #$00    
       STA    $8C     
       LDA    #$01    
       STA    $9A     
LF3A1: LDA    $A1     
       BEQ    LF3D8   
       LDA    PF0     
       BMI    LF3CD   
       LDA    #$1C    
       STA    $9C     
       LDA    $8D     
       BNE    LF3CA   
       CLC            
       LDA    $86     
       ADC    #$C8    
       STA    $86     
       LDA    $87     
       ADC    #$00    
       STA    $87     
       LDA    #$01    
       STA    $8D     
       LDA    #$0F    
       STA    $A0     
       LDA    #$1C    
       STA    $9C     
LF3CA: JMP    LF3D5   
LF3CD: LDA    #$00    
       STA    $8D     
       LDA    #$13    
       STA    $9C     
LF3D5: JMP    LF41A   
LF3D8: LDA    #$13    
       STA    $9C     
       LDA    $A5     
       BNE    LF41A   
       LDA    $F4     
       BPL    LF41A   
       LDA    $EC     
       BEQ    LF3ED   
       DEC    $EC     
       JMP    LF410   
LF3ED: LDA    $9F     
       BEQ    LF410   
       LDA    $85     
       CMP    $91     
       BCS    LF41A   
       CLC            
       LDA    $86     
       ADC    #$C8    
       STA    $86     
       LDA    $87     
       ADC    #$00    
       STA    $87     
       LDA    $9E     
       STA    $EC     
       LDA    #$0F    
       STA    $A0     
       LDA    #$0F    
       STA    $F6     
LF410: LDA    $F6     
       BEQ    LF41A   
       DEC    $F6     
       LDA    #$1C    
       STA    $9C     
LF41A: CLC            
       LDA    $82     
       ADC    #$F5    
       STA    $82     
       LDA    $83     
       ADC    #$FF    
       STA    $83     
       CLC            
       LDA    $80     
       ADC    $82     
       STA    $80     
       LDA    $81     
       ADC    $83     
       STA    $81     
       CLC            
       LDA    $86     
       ADC    #$F5    
       STA    $86     
       LDA    $87     
       ADC    #$FF    
       STA    $87     
       CLC            
       LDA    $84     
       ADC    $86     
       STA    $84     
       LDA    $85     
       ADC    $87     
       STA    $85     
       LDA    #$80    
       BIT    VBLANK  
       BNE    LF457   
       JMP    LF505   
LF457: LDA    #$50    
       CMP    $DB     
       BCC    LF47A   
       LDA    #$01    
       STA    $9F     
       LDA    $83     
       STA    $8F     
       LDA    $82     
       STA    $8E     
       LDA    #$0A    
       CMP    $81     
       BCC    LF477   
       LDA    #$20    
       STA    $8E     
       LDA    #$00    
       STA    $8F     
LF477: JMP    LF494   
LF47A: LDA    #$00    
       STA    $9F     
       LDA    $87     
       STA    $8F     
       LDA    $86     
       STA    $8E     
       LDA    #$0A    
       CMP    $85     
       BCC    LF494   
       LDA    #$20    
       STA    $8E     
       LDA    #$00    
       STA    $8F     
LF494: LDA    $8E     
       STA    $E6     
       LDA    $8F     
       STA    $E7     
       LDA    #$00    
       STA    $E8     
       LDA    $E7     
       BPL    LF4B5   
       LDA    #$01    
       STA    $E8     
       SEC            
       LDA    #$00    
       SBC    $E6     
       STA    $E6     
       LDA    #$00    
       SBC    $E7     
       STA    $E7     
LF4B5: LDA    #$01    
       CMP    $E7     
       BCC    LF4BE   
       JMP    LF4D8   
LF4BE: LDA    $E8     
       BEQ    LF4CD   
       LDA    #$01    
       STA    $8E     
       LDA    #$FE    
       STA    $8F     
       JMP    LF4F9   
LF4CD: LDA    #$FF    
       STA    $8E     
       LDA    #$01    
       STA    $8F     
       JMP    LF4F9   
LF4D8: LDA    $E7     
       BNE    LF4F9   
       LDA    $E6     
       CMP    #$20    
       BCS    LF4F9   
       LDA    $E8     
       BEQ    LF4F1   
       LDA    #$E0    
       STA    $8E     
       LDA    #$FF    
       STA    $8F     
       JMP    LF4F9   
LF4F1: LDA    #$20    
       STA    $8E     
       LDA    #$00    
       STA    $8F     
LF4F9: LDA    $F3     
       BNE    LF505   
       LDA    #$07    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDV1   
LF505: LDA    #$40    
       BIT    VBLANK  
       BEQ    LF531   
       LDA    $E5     
       BNE    LF535   
       LDA    #$01    
       STA    $E5     
       LDA    $9F     
       BEQ    LF51E   
       LDA    #$00    
       STA    $9F     
       JMP    LF522   
LF51E: LDA    #$01    
       STA    $9F     
LF522: LDA    $F3     
       BNE    LF535   
       LDA    #$07    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDV1   
       JMP    LF535   
LF531: LDA    #$00    
       STA    $E5     
LF535: LDA    #$80    
       BIT    COLUP1  
       BEQ    LF562   
       LDA    #$FF    
       STA    $F3     
       LDA    #$50    
       CMP    $E1     
       BCC    LF555   
       CLC            
       LDA    $82     
       ADC    #$00    
       STA    $82     
       LDA    $83     
       ADC    #$FF    
       STA    $83     
       JMP    LF562   
LF555: CLC            
       LDA    $86     
       ADC    #$00    
       STA    $86     
       LDA    $87     
       ADC    #$FF    
       STA    $87     
LF562: LDA    #$80    
       BIT    NUSIZ1  
       BEQ    LF594   
       LDA    $F3     
       BNE    LF574   
       LDA    #$19    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDV1   
LF574: LDA    $91     
       LSR            
       LSR            
       TAY            
       LDA    #$50    
       CMP    $DB     
       BCC    LF58B   
       LDA    #$00    
       STA.wy $00A8,Y 
       LDA    #$01    
       STA    $9F     
       JMP    LF594   
LF58B: LDA    #$00    
       STA.wy $00BE,Y 
       LDA    #$00    
       STA    $9F     
LF594: STA    CXCLR   
       LDA    $A5     
       BNE    LF602   
       LDA    #$A0    
       CMP    $DB     
       BCS    LF5CE   
       LDA    $F3     
       BNE    LF5AC   
       LDA    #$0F    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDV1   
LF5AC: LDA    #$0F    
       STA    $EF     
       LDA    #$50    
       STA    $DB     
       INC    $94     
       LDA    $D8     
       CMP    $94     
       BCS    LF5CE   
       LDA    #$01    
       STA    $A5     
       LDA    #$0A    
       STA    $94     
       LDA    #$00    
       STA    $D4     
       STA    $D5     
       STA    $D6     
       STA    $D7     
LF5CE: LDA    #$05    
       CMP    $DB     
       BCC    LF602   
       LDA    $F3     
       BNE    LF5E0   
       LDA    #$0F    
       STA    AUDF1   
       LDA    #$07    
       STA    AUDV1   
LF5E0: LDA    #$0F    
       STA    $F0     
       LDA    #$50    
       STA    $DB     
       INC    $95     
       LDA    $D8     
       CMP    $95     
       BCS    LF602   
       LDA    #$01    
       STA    $A5     
       LDA    #$0A    
       STA    $95     
       LDA    #$00    
       STA    $D4     
       STA    $D5     
       STA    $D6     
       STA    $D7     
LF602: LDA    $F4     
       BMI    LF60B   
       DEC    $F4     
       JMP    LF667   
LF60B: CLC            
       LDA    $90     
       ADC    $8E     
       STA    $90     
       LDA    $91     
       ADC    $8F     
       STA    $91     
       LDA    SWCHB   
       AND    #$40    
       BNE    LF643   
       LDA    $9F     
       BEQ    LF633   
       CLC            
       LDA    $DA     
       ADC    #$AA    
       STA    $DA     
       LDA    $DB     
       ADC    #$00    
       STA    $DB     
       JMP    LF667   
LF633: CLC            
       LDA    $DA     
       ADC    #$56    
       STA    $DA     
       LDA    $DB     
       ADC    #$FF    
       STA    $DB     
       JMP    LF667   
LF643: LDA    $9F     
       BEQ    LF657   
       CLC            
       LDA    $DA     
       ADC    #$FA    
       STA    $DA     
       LDA    $DB     
       ADC    #$00    
       STA    $DB     
       JMP    LF667   
LF657: CLC            
       LDA    $DA     
       ADC    #$06    
       STA    $DA     
       LDA    $DB     
       ADC    #$FF    
       STA    $DB     
       JMP    LF667   
LF667: LDA    $91     
       CMP    #$01    
       BPL    LF67E   
       LDA    #$01    
       STA    $91     
       SEC            
       LDA    #$00    
       SBC    $8E     
       STA    $8E     
       LDA    #$00    
       SBC    $8F     
       STA    $8F     
LF67E: LDA    #$58    
       CMP    $91     
       BCS    LF695   
       SEC            
       LDA    #$00    
       SBC    $8E     
       STA    $8E     
       LDA    #$00    
       SBC    $8F     
       STA    $8F     
       LDA    #$58    
       STA    $91     
LF695: LDA    $A5     
       BEQ    LF6A4   
       LDA    #$F0    
       STA    $91     
       LDA    #$00    
       STA    $EB     
       JMP    LFB0E   
LF6A4: STA    HMCLR   
       STA    WSYNC   
       LDA    $DB     
       TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E6     
       TYA            
       AND    #$0F    
       CLC            
       ADC    $E6     
       LDY    $E6     
       CMP    #$0F    
       BCC    LF6C0   
       SBC    #$0F    
       INY            
LF6C0: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM1    
       STA    WSYNC   
       BIT    VSYNC   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
LF6D2: DEY            
       BPL    LF6D2   
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    #$0A    
       CMP    $81     
       BCC    LF700   
       LDA    $83     
       CMP    #$80    
       ROR    $83     
       ROR    $82     
       SEC            
       LDA    #$00    
       SBC    $82     
       STA    $82     
       LDA    #$00    
       SBC    $83     
       STA    $83     
       LDA    #$0A    
       STA    $81     
       LDA    #$C0    
       STA    $80     
LF700: LDA    #$0A    
       CMP    $85     
       BCC    LF723   
       LDA    $87     
       CMP    #$80    
       ROR    $87     
       ROR    $86     
       SEC            
       LDA    #$00    
       SBC    $86     
       STA    $86     
       LDA    #$00    
       SBC    $87     
       STA    $87     
       LDA    #$0A    
       STA    $85     
       LDA    #$C0    
       STA    $84     
LF723: LDA    #$58    
       CMP    $81     
       BCS    LF735   
       LDA    #$FF    
       STA    $83     
       LDA    #$00    
       STA    $82     
       LDA    #$58    
       STA    $81     
LF735: LDA    #$58    
       CMP    $85     
       BCS    LF747   
       LDA    #$FF    
       STA    $87     
       LDA    #$00    
       STA    $86     
       LDA    #$58    
       STA    $85     
LF747: LDA    $94     
       ASL            
       ASL            
       ADC    $94     
       ADC    #$4A    
       STA    $96     
       LDA    $95     
       ASL            
       ASL            
       ADC    $95     
       ADC    #$4A    
       STA    $98     
       LDA    $A5     
       BNE    LF767   
       LDA    $A0     
       BMI    LF767   
       STA    AUDV0   
       DEC    $A0     
LF767: LDX    #$16    
       LDA    $A8,X   
       STA    $A6     
       LDA    $BE,X   
       STA    $A7     
       LDA    #$7C    
       STA    $ED     
       LDA    $EF     
       BNE    LF787   
       DEC    $D8     
       LDA    $D8     
       INC    $D8     
       CMP    $94     
       BCS    LF787   
       LDA    #$0F    
       STA    $EF     
LF787: LDA    $EF     
       BEQ    LF78F   
       STA    $ED     
       DEC    $EF     
LF78F: LDA    #$4D    
       STA    $EE     
       LDA    $F0     
       BNE    LF7A5   
       DEC    $D8     
       LDA    $D8     
       INC    $D8     
       CMP    $95     
       BCS    LF7A5   
       LDA    #$0F    
       STA    $F0     
LF7A5: LDA    $F0     
       BEQ    LF7AD   
       STA    $EE     
       DEC    $F0     
LF7AD: LDA    $A5     
       BNE    LF7F1   
       LDA    $F3     
       BEQ    LF7F1   
       BPL    LF7CB   
       LDA    #$01    
       STA    $F3     
       LDA    #$00    
       STA    $F2     
       LDA    #$0A    
       STA    $F1     
       LDA    #$08    
       STA    AUDV1   
       LDA    #$07    
       STA    AUDC1   
LF7CB: DEC    $F2     
       BPL    LF7F1   
       DEC    $F1     
       BPL    LF7E0   
       LDA    #$00    
       STA    $F3     
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC1   
       JMP    LF7F1   
LF7E0: LDY    $F1     
       LDA    LFF9B,Y 
       STA    $F2     
       DEC    $F2     
       LDA    LFF91,Y 
       STA    AUDF1   
       JMP    LF7F1   
LF7F1: LDA    $F4     
       BMI    LF830   
       BEQ    LF80F   
       LSR            
       TAX            
       LSR            
       AND    #$F8    
       CLC            
       ADC    #$86    
       STA    $DF     
       LDA    #$01    
       STA    $DC     
       TXA            
       AND    #$0F    
       ORA    #$21    
       STA    COLUP1  
       JMP    LF896   
LF80F: LDA    #$28    
       STA    COLUP1  
       LDA    #$22    
       STA    $E2     
       LDA    $F5     
       AND    #$01    
       STA    $9F     
       LDA    #$00    
       STA    $8E     
       LDX    #$01    
       LDA    $F5     
       AND    #$02    
       BEQ    LF82B   
       LDX    #$FF    
LF82B: STX    $8F     
       JMP    LF896   
LF830: LDA    $DE     
       BNE    LF83E   
       LDA    #$0A    
       STA    $DE     
       LDA    $DD     
       EOR    #$FF    
       STA    $DD     
LF83E: DEC    $DE     
       LDA    #$2E    
       STA    $DF     
       LDA    $DD     
       BEQ    LF84C   
       LDA    #$25    
       STA    $DF     
LF84C: DEC    $E3     
       BPL    LF85C   
       LDA    #$28    
       STA    $E3     
       DEC    $E4     
       BNE    LF85C   
       LDA    #$04    
       STA    $E4     
LF85C: LDA    $E4     
       AND    #$01    
       BNE    LF877   
       LDA    $E4     
       AND    #$02    
       BNE    LF871   
       DEC    $E2     
       LDA    #$25    
       STA    $DF     
       JMP    LF877   
LF871: INC    $E2     
       LDA    #$2E    
       STA    $DF     
LF877: LDA    $DC     
       BEQ    LF88A   
       INC    $E1     
       LDA    #$8A    
       CMP    $E1     
       BCS    LF887   
       LDA    #$00    
       STA    $DC     
LF887: JMP    LF896   
LF88A: DEC    $E1     
       LDA    #$0A    
       CMP    $E1     
       BCC    LF896   
       LDA    #$01    
       STA    $DC     
LF896: JMP    LF900   
LF899: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00
LF900: STA    HMCLR   
       STA    WSYNC   
       LDA    $E1     
       TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E6     
       TYA            
       AND    #$0F    
       CLC            
       ADC    $E6     
       LDY    $E6     
       CMP    #$0F    
       BCC    LF91C   
       SBC    #$0F    
       INY            
LF91C: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP1    
       STA    WSYNC   
       BIT    VSYNC   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
LF92E: DEY            
       BPL    LF92E   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
LF939: LDA    INTIM   
       BNE    LF939   
       STA    VBLANK  
       STA    GRP0    
       STA    GRP1    
       STA    ENAM1   
       STA    WSYNC   
       JMP    LFA00   
LF94B: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
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
       .byte $00,$00,$00,$00,$00
LFA00: LDA    #$06    
       STA    COLUBK  
       LDX    #$04    
LFA06: STA    WSYNC   
       TXA            
       AND    #$0F    
       TAY            
       LDA    ($96),Y 
       STA    GRP0    
       LDA    $ED     
       STA    COLUP0  
       LDA    #$00    
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($98),Y 
       STA    GRP0    
       LDA    $EE     
       STA    COLUP0  
       STA    WSYNC   
       LDA    $ED     
       STA    COLUP0  
       TXA            
       AND    #$0F    
       TAY            
       LDA    ($96),Y 
       STA    GRP0    
       STA    GRP0    
       LDA    #$00    
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($98),Y 
       STA    GRP0    
       LDA    $EE     
       STA    COLUP0  
       DEX            
       BPL    LFA06   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    COLUBK  
       LDA    $DC     
       BEQ    LFA60   
       LDA    #$00    
       STA    REFP1   
       JMP    LFA64   
LFA60: LDA    #$08    
       STA    REFP1   
LFA64: LDY    #$00    
       LDA    #$01    
       STA    CTRLPF  
       STA    WSYNC   
       LDX    #$0A    
LFA6E: DEX            
       BNE    LFA6E   
       LDX    #$58    
       NOP            
       NOP            
       NOP            
       JMP    LFA85   
LFA79: LDA    $F8     
       BEQ    LFA96   
LFA7D: LDA    $F8     
       BEQ    LFAA9   
LFA81: LDA    $F8     
       BEQ    LFAE2   
LFA85: TXA            
       SEC            
       SBC    $81     
       ADC    #$09    
       STY    GRP1    
       LDY    #$7C    
       STY    COLUP0  
       BCC    LFA79   
       TAY            
       LDA    ($9A),Y 
LFA96: STA    GRP0    
       STA    $89     
       LDA    #$00    
       STA    PF0     
       TXA            
       SEC            
       SBC    $85     
       ADC    #$09    
       BCC    LFA7D   
       TAY            
       LDA    ($9C),Y 
LFAA9: STA    GRP0    
       LDY    #$4D    
       STY    COLUP0  
       STA    $8B     
       PLA            
       CPX    $91     
       PHP            
       TXA            
       STA    COLUPF  
       LSR            
       LSR            
       TAY            
       LDA.wy $00A8,Y 
       NOP            
       NOP            
       STA    PF0     
       LDA    $89     
       STA    GRP0    
       LDA    #$7C    
       STA    COLUP0  
       SEC            
       LDA.wy $00BE,Y 
       STA    PF0     
       LDA    #$4D    
       STA    COLUP0  
       LDA    $8B     
       STA    GRP0    
       TXA            
       SBC    $E2     
       ADC    #$08    
       BCC    LFA81   
       TAY            
       LDA    ($DF),Y 
LFAE2: TAY            
       DEX            
       BNE    LFA85   
       STX    PF0     
       STX    ENAM1   
       STA    WSYNC   
       LDA    #$06    
       STA    COLUBK  
       STX    GRP0    
       STX    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$1E    
LFB00: STA    WSYNC   
       DEX            
       BNE    LFB00   
       STA    PF0     
       LDA    #$00    
       STA    COLUBK  
       JMP    LF30D   
LFB0E: LDA    #$0A    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDC1   
       DEC    $D5     
       BPL    LFB3D   
       DEC    $D4     
       BPL    LFB22   
       LDA    #$0F    
       STA    $D4     
LFB22: LDY    $D4     
       LDA    LFF81,Y 
       STA    $D5     
       DEC    $D5     
       LDA    LFF71,Y 
       BMI    LFB39   
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDV0   
       JMP    LFB3D   
LFB39: LDA    #$00    
       STA    AUDV0   
LFB3D: DEC    $D7     
       BPL    LFB64   
       DEC    $D6     
       BPL    LFB49   
       LDA    #$0B    
       STA    $D6     
LFB49: LDY    $D6     
       LDA    LFFB1,Y 
       STA    $D7     
       DEC    $D7     
       LDA    LFFA5,Y 
       BMI    LFB60   
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       JMP    LFB64   
LFB60: LDA    #$00    
       STA    AUDV1   
LFB64: LDA    $EB     
       BEQ    LFB6B   
       JMP    LF183   
LFB6B: JMP    LF6A4   
LFB6E: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$00,$0C,$0C,$8C,$DC,$FC,$7C,$2C,$0C,$00,$0C,$1C,$3C,$7C
       .byte $7C,$3C,$0C,$0C,$00,$30,$30,$31,$3B,$3F,$3E,$34,$30,$00,$30,$38
       .byte $3C,$3E,$3E,$3C,$30,$30,$00,$00,$00,$7D,$FE,$74,$3E,$71,$E0,$00
       .byte $E0,$70,$38,$7C,$FF,$74,$0F,$00,$00,$00,$5D,$55,$5D,$00,$57,$55
       .byte $57,$00,$00,$00,$1C,$36,$3E,$2A,$5D,$63,$00,$00,$3C,$42,$42,$42
       .byte $3C,$3E,$08,$08,$28,$18,$7E,$60,$1C,$42,$3C,$7C,$02,$1C,$02,$7C
       .byte $04,$04,$7E,$44,$44,$7C,$02,$7C,$40,$7E,$3C,$42,$7C,$60,$1E,$10
       .byte $08,$04,$02,$7E,$3C,$42,$3C,$42,$3C,$02,$02,$1E,$22,$1C,$44,$AA
       .byte $92,$82,$82,$00,$00,$00,$00,$00,$00,$3E,$08,$08,$08,$08,$28,$18
       .byte $00,$7E,$40,$20,$1C,$02,$42,$3C,$00,$7C,$02,$02,$3C,$02,$02,$7C
LFE9E: .byte $00,$00,$00,$60,$F0,$90,$10,$10,$50,$D0,$D0,$D0,$D0,$D0,$D0,$D0
       .byte $D0,$D0,$D0,$D0,$D0,$D0,$D0,$D0,$D0,$90,$A0,$A0,$A0,$A0,$A0,$20
       .byte $40,$C0,$80
LFEC1: .byte $00,$00,$00,$00,$61,$F1,$9B,$8E,$26,$26,$22,$20,$20,$20,$26,$37
       .byte $37,$17,$15,$D5,$D7,$D7,$D1,$D9,$99,$8B,$8B,$C8,$E8,$E8,$E0,$67
       .byte $0F,$88,$F8
LFEE4: .byte $70,$00,$06,$0F,$89,$88,$88,$8A,$8B,$8B,$93,$97,$97,$96,$96,$96
       .byte $A6,$E6,$C6,$8E,$9E,$1E,$1A,$5A,$DE,$DE,$5E,$4E,$2C,$20,$13,$1F
       .byte $0C,$00,$00
LFF07: .byte $00,$20,$70,$D0,$90,$00,$20,$60,$60,$60,$E0,$E0,$E0,$E0,$E0,$E0
       .byte $C0,$D0,$D0,$D0,$D0,$D0,$C0,$40,$40,$D0,$D0,$D0,$D0,$D0,$90,$20
       .byte $60,$C0,$80
LFF2A: .byte $00,$00,$00,$00,$80,$80,$C0,$40,$40,$41,$41,$6E,$7E,$00,$00,$2D
       .byte $2D,$2D,$2D,$A7,$B7,$B7,$B7,$B7,$97,$87,$87,$97,$B7,$34,$10,$11
       .byte $47,$E6,$BC
LFF4D: .byte $10,$08,$18,$14,$22,$22,$29,$4D,$4D,$5C,$9E,$BE,$BF,$BF,$BE,$A0
       .byte $A1,$A1,$AD,$BD,$BD,$BD,$B5,$95,$95,$5D,$5C,$5C,$58,$48,$23,$27
       .byte $3C,$08,$00,$00
LFF71: .byte $FF,$11,$FF,$11,$FF,$10,$FF,$10,$FF,$0F,$FF,$0F,$FF,$12,$FF,$12
LFF81: .byte $28,$14,$0A,$1A,$28,$14,$0A,$1A,$28,$14,$0A,$1A,$28,$14,$0A,$1A
LFF91: .byte $0F,$0E,$0D,$0C,$0B,$0A,$09,$08,$07,$06
LFF9B: .byte $06,$02,$02,$02,$02,$02,$02,$02,$02,$10
LFFA5: .byte $FF,$78,$FF,$28,$FF,$78,$FF,$78,$FF,$28,$FF,$78
LFFB1: .byte $10,$02,$04,$02,$0A,$02,$16,$02,$0A,$02,$16,$02,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F0,$00,$F0
