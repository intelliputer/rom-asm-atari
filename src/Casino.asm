; Disassembly of roms/Casino.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Casino.bin
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
INPT0   =  $38
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

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
       LDX    #$03    
       LDA    #$10    
       STA    AUDF1   
LF012: LDY    LFF7D,X 
       STY    $D1,X   
       STA    $8C,X   
       DEX            
       BPL    LF012   
       STX    AUDV1   
       STX    AUDV0   
       JSR    LF65E   
       JSR    LF4A2   
       LDA    #$81    
       STA    PF2     
       STA    PF1     
       STA    PF0     
       LDA    #$01    
       LDX    #$06    
       STA    CTRLPF  
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       DEX            
LF03B: DEX            
       BPL    LF03B   
       STA    RESP1   
       STA    RESP0   
       LDA    #$40    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
LF04A: LDA    #$83    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       ASL            
       STA    WSYNC   
       STY    VSYNC   
       STA    VBLANK  
       STA    HMCLR   
       LDX    #$2B    
       STX    TIM64T  
       JSR    LF3D9   
       INC    $B2     
       LDA    $B2     
       BNE    LF075   
       DEC    $EF     
       BNE    LF075   
       LDX    #$FF    
       STX    $F0     
LF075: AND    #$03    
       CMP    #$01    
       AND    $ED     
       STA    $B4     
       BCS    LF08B   
       LDA    SWCHA   
       TAY            
       EOR    $E1     
       AND    $E1     
       STY    $E1     
       STA    $DF     
LF08B: LDA    $E3     
       ASL            
       EOR    $E3     
       ASL            
       ASL            
       ROL    $E4     
       ROL    $E3     
       LDY    $81     
       BEQ    LF0ED   
       DEY            
       BEQ    LF0BE   
       LDX    LFE59,Y 
       LDA    $80,X   
       LSR            
       CMP    #$35    
       BCS    LF0EB   
       TAX            
       AND    #$07    
       TAY            
       TXA            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $E5,X   
       AND    LFEAE,Y 
       BNE    LF0B9   
       INY            
       INY            
LF0B9: LDA    LFEAE,Y 
       BNE    LF0E7   
LF0BE: LDA    $B1     
       BNE    LF0ED   
       CLC            
       ADC    #$03    
       STA    $B1     
       LDA    $E4     
       AND    #$07    
       TAY            
       STA    $B3     
       LDA    $E3     
       EOR    #$07    
       AND    #$07    
       TAX            
       ASL            
       ASL            
       ASL            
       ORA    $B3     
       STA    $B3     
       CMP    #$34    
       BCS    LF0ED   
       LDA    $E5,X   
       AND    LFEAE,Y 
       BEQ    LF0ED   
LF0E7: EOR    $E5,X   
       STA    $E5,X   
LF0EB: DEC    $81     
LF0ED: LDY    #$02    
       STY    $C9     
       LDA    #$23    
       CPY    $D4     
       BEQ    LF0F9   
       LDA    #$0A    
LF0F9: EOR    $D2     
       STA    $F6     
LF0FD: LDA    INTIM   
       BNE    LF0FD   
       STA    WSYNC   
       STA    VBLANK  
       STA    $80     
       JSR    LF2BC   
       JSR    LF2BC   
       LDY    #$00    
       JSR    LF186   
       LDY    #$02    
       JSR    LF186   
       LDY    #$01    
       JSR    LF186   
       LDY    #$03    
       JSR    LF186   
       DEY            
       LDA    SWCHB   
       AND    #$08    
       BNE    LF12C   
       LDY    #$0F    
LF12C: STY    $B5     
       LDA    $F0     
       AND    #$08    
       EOR    $B5     
       STA    WSYNC   
       STA    $B5     
       LDX    #$03    
LF13A: LDA    $EF     
       AND    $F0     
       EOR    LFE4B,X 
       AND    $B5     
       STA    $CA,X   
       DEX            
       BPL    LF13A   
       LDX    #$03    
       LDA    #$02    
       CMP    $D4     
       ROR            
       BNE    LF158   
LF151: LDY    #$08    
LF153: STA    WSYNC   
       DEY            
       BNE    LF153   
LF158: ORA    INPT0   
       BMI    LF15E   
       INC    $80     
LF15E: DEX            
       BPL    LF151   
       JMP    LF04A   
LF164: JSR    LFB1F   
LF167: STA    $80,X   
       LDX    $B7     
       JSR    LF7EB   
       CMP    #$16    
       LDA    $A7,X   
       EOR    #$0D    
       PHP            
       BNE    LF180   
       SED            
       CLC            
       LDA    $9E,X   
       ADC    $9E,X   
       STA    $9E,X   
       CLD            
LF180: LDA    #$14    
       LDY    #$01    
       PLP            
       RTS            

LF186: STY    $C7     
       TYA            
       AND    $ED     
       EOR    $C7     
       BEQ    LF191   
       LDA    #$AA    
LF191: STA    $C3     
       LDX    $B4     
       LDA    LFE56,Y 
       STA    $C9     
       LDA    #$06    
       STA    NUSIZ1  
       STA    WSYNC   
       SED            
       LDA    #$F0    
       STA    HMP1    
       EOR    INPT0,X 
       ASL            
       LDA    $80     
       ADC    #$00    
       STA    $80     
       CLD            
       TYA            
       ADC    #$A7    
       TAX            
       LDA    $CC     
       STA    COLUP0  
       STA    RESP1   
       STA    COLUP1  
       LDA    LFEAE,Y 
       AND    $D3     
       BEQ    LF1E4   
       LDX    #$0E    
LF1C4: LDA    #$32    
       STA    $B5,X   
       LDA    #$FF    
       STA    $B6,X   
       DEX            
       DEX            
       BPL    LF1C4   
       STA    WSYNC   
       STA    WSYNC   
       LDA.wy $00A7,Y 
       ASL            
       ASL            
       ADC.wy $00A7,Y 
       STA    $C1     
       LDY    #$8F    
       STA    WSYNC   
       BNE    LF24D   
LF1E4: LDA    #$FF    
       STA    $C2     
       STA    $C4     
       LDA    VSYNC,X 
       ASL            
       ASL            
       LDY    #$0C    
       BNE    LF215   
LF1F2: LDA    $C3     
       BNE    LF1F8   
LF1F6: LDA    VSYNC,X 
LF1F8: PHA            
       AND    #$0F    
       STA    $C5     
       ASL            
       ASL            
       ADC    $C5     
       ORA    #$80    
       STA.wy $00B5,Y 
       LDA    #$FF    
       STA.wy $00B4,Y 
       STA.wy $00B6,Y 
       DEY            
       DEY            
       PLA            
       AND    #$F0    
       LSR            
       LSR            
LF215: STA    $C5     
       LSR            
       LSR            
       ADC    $C5     
       STA.wy $00B5,Y 
       SEC            
       TXA            
       SBC    #$09    
       CMP    #$9C    
       TAX            
       DEY            
       DEY            
       BCS    LF1F6   
       BPL    LF1F2   
       LDX    $C7     
       LDA    $CF     
       LSR            
       LDA    $D4     
       EOR    #$03    
       BNE    LF23A   
       LDY    #$8F    
       BNE    LF24D   
LF23A: LDY    #$BE    
       LDA    $CF     
       AND    LFEAE,X 
       BNE    LF24D   
       BCS    LF247   
       LDY    #$7A    
LF247: LDA    $F6     
       BNE    LF24D   
       LDY    #$76    
LF24D: STY    $C5     
       LDA    $C1     
       EOR    #$80    
       STA    $C3     
       LDY    #$04    
       LDA    ($B5),Y 
       ORA    ($B7),Y 
       TAX            
       LDA    ($B9),Y 
       ORA    ($BB),Y 
       CLC            
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       STX    GRP0    
       JMP    LF272   
LF26C: STA    GRP0    
       LDA    ($B9),Y 
       ORA    ($BB),Y 
LF272: STA    GRP1    
       LDA    ($C1),Y 
       LDA    ($C1),Y 
       TAX            
       LDA    ($BD),Y 
       ORA    ($BF),Y 
       STA    GRP0    
       LDA    ($C5),Y 
       STA    GRP1    
       LDA    ($C3),Y 
       STX    GRP0    
       STA.w  $001C   
       LDA    $C1     
       LDA    ($B5),Y 
       ORA    ($B7),Y 
       CPY    #$01    
       STA    GRP0    
       LDA    ($B9),Y 
       ORA    ($BB),Y 
       STA    GRP1    
       LDA    ($C1),Y 
       LDA    ($C1),Y 
       TAX            
       LDA    ($BD),Y 
       ORA    ($BF),Y 
       STA    GRP0    
       LDA    ($C5),Y 
       STA    GRP1    
       LDA    ($C3),Y 
       STX    GRP0    
       STA.w  $001C   
       DEY            
       LDA    ($B5),Y 
       ORA    ($B7),Y 
       BCS    LF26C   
       INY            
       STY    GRP1    
       STY    GRP0    
LF2BC: LDX    #$08    
LF2BE: LDY    $C9     
       LDA    #$F8    
       STA    $B6,X   
       STA    $C0,X   
       AND.wy $0080,Y 
       STA    $B5,X   
       EOR.wy $0080,Y 
       LSR            
       TAY            
       ROL            
       ASL            
       ASL            
       STA    $BF,X   
       LDA.wy $00CA,Y 
       PHA            
       DEX            
       INC    $C9     
       DEX            
       BPL    LF2BE   
       STA    WSYNC   
       SED            
       LDX    #$FD    
       TXS            
       LDX    $B4     
       LDA    INPT0,X 
       EOR    #$FF    
       ASL            
       LDA    $80     
       ADC    #$00    
       STA    $80     
       CLD            
       LDA    #$B0    
       STA    HMP1    
       LDA    #$02    
       STA    NUSIZ1  
       LDA    $80     
       LDA    ($B5),Y 
       SEC            
       LDY    #$83    
       LDA    $FC     
       STA    COLUP0  
       LDA    ($C5),Y 
       LDX    $FA     
       STA    RESP1   
       STA    GRP0    
       LDA    $CC     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUPF  
       BCS    LF322   
LF318: LDA    ($C5),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    $FC     
       STA    COLUP0  
LF322: LDA    $FD     
       STA    COLUP1  
       LDA    ($C7),Y 
       STA    GRP1    
       LDA    ($BF),Y 
       STA    GRP1    
       LDA    ($C3),Y 
       STA.w  $001B   
       LDA    $FB     
       STA    COLUP0  
       LDA    ($C1),Y 
       STA    GRP0    
       STX    COLUP0  
       LDA    $F9     
       STA    COLUP1  
       DEY            
       BMI    LF318   
       LDA    ($C5),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    $FC     
       STA    COLUP0  
       LDA    $FD     
       STA    COLUP1  
       LDA    ($C7),Y 
       STA    GRP1    
       LDA    ($BF),Y 
       STA    GRP1    
       LDA    ($C3),Y 
       STA.w  $001B   
       LDA    $FB     
       STA    COLUP0  
       LDA    ($C1),Y 
       STA    GRP0    
       STX    COLUP0  
       LDA    $F9     
       STA    COLUP1  
       LDY    #$05    
       LDA    ($BB),Y 
       BNE    LF39F   
LF373: STA    WSYNC   
       STA    GRP0    
       LDA    $FC     
       STA    COLUP0  
       LDA    $FD     
       STA    COLUP1  
       LDA    ($BD),Y 
       STA    GRP1    
       LDA    ($B5),Y 
       STA    GRP1    
       LDA    ($B9),Y 
       STA.w  $001B   
       LDA    $FB     
       STA    COLUP0  
       LDA    ($B7),Y 
       STA    GRP0    
       STX    COLUP0  
       LDA    $F9     
       STA    COLUP1  
       DEY            
       LDA    ($BB),Y 
       CPY    #$01    
LF39F: STA    WSYNC   
       STA    GRP0    
       LDA    $FC     
       STA    COLUP0  
       LDA    $FD     
       STA    COLUP1  
       LDA    ($BD),Y 
       STA    GRP1    
       LDA    ($B5),Y 
       STA    GRP1    
       LDA    ($B9),Y 
       STA.w  $001B   
       LDA    $FB     
       STA    COLUP0  
       LDA    ($B7),Y 
       STA    GRP0    
       STX    COLUP0  
       LDA    $F9     
       STA    COLUP1  
       LDA    ($BB),Y 
       BCS    LF373   
       STY    GRP0    
       STY    GRP1    
       LDA    $CD     
       EOR    #$02    
       STA    COLUBK  
       STA    COLUPF  
       STA    $CD     
LF3D8: RTS            

LF3D9: STY    AUDC1   
       LDX    $EE     
       TXA            
       BEQ    LF3ED   
       LDA    $E2     
       AND    LF893,X 
       BNE    LF3EA   
       INX            
       INX            
       INX            
LF3EA: LDA    LFEA7,X 
LF3ED: STA    AUDC0   
       LSR            
       LSR            
       LSR            
       CPX    #$03    
       BEQ    LF3FC   
       CPX    #$06    
       BNE    LF402   
       STX    AUDC0   
LF3FC: LDA    #$1F    
       AND    $E2     
       ADC    #$0C    
LF402: LSR            
       STA    AUDF0   
       LDA    $E4     
       ORA    $E3     
       BNE    LF41C   
       LDA    SWCHB   
       EOR    $E0     
       AND    $E0     
       ORA    $DF     
       BEQ    LF440   
       ORA    $B2     
       STA    $E4     
       BNE    LF440   
LF41C: LDX    $E2     
       BEQ    LF440   
       DEX            
       STX    $E2     
       BNE    LF439   
       LDA    $EE     
       CMP    #$03    
       BNE    LF437   
       LDA    $D2     
       CMP    #$18    
       LDA    #$74    
       BCC    LF435   
       LDA    $D0     
LF435: STA    $83     
LF437: STX    $EE     
LF439: TXA            
       LSR            
       BCC    LF3D8   
       JMP    LF8F3   
LF440: LDA    $D1     
       BPL    LF44E   
       CMP    #$EF    
       BCS    LF44E   
       LDA    #$23    
LF44A: TAX            
       JMP    LF513   
LF44E: LDX    $D4     
       CPX    #$03    
       BCS    LF468   
       LDA    $D2     
       CMP    #$23    
       LDA    #$40    
       BCC    LF486   
       LDA    #$01    
       BIT    $D1     
       BMI    LF44A   
       ORA    $ED     
       CLC            
       AND    $B2     
       TAY            
LF468: LDA    $D3     
       AND    LFEAE,Y 
       BEQ    LF485   
       BCS    LF47F   
       LDA    LFE47,Y 
       AND    $DF     
       BEQ    LF485   
       EOR    $DF     
       STA    $DF     
       LDA    LFEAE,Y 
LF47F: EOR    $D3     
       TAY            
       JMP    LF4BF   
LF485: TAY            
LF486: ORA    SWCHB   
       TAX            
       EOR    $E0     
       AND    $E0     
       STX    $E0     
       ROR            
       BPL    LF49A   
       BCC    LF498   
       JMP    LF60D   
LF498: AND    #$01    
LF49A: AND    #$21    
       ROR            
       BCC    LF4F4   
       TYA            
       LDX    $D4     
LF4A2: INX            
       CPX    #$03    
       BCC    LF4BD   
       BNE    LF4B4   
       LDA    $8C     
       STA    $DA     
       LDA    $95     
       STA    $DB     
       TYA            
       BEQ    LF4B9   
LF4B4: TAX            
       LDA    $DA     
       LDY    $DB     
LF4B9: STA    $8C     
       STY    $95     
LF4BD: LDY    #$F0    
LF4BF: STY    $D3     
       STY    $CF     
       STX    $D4     
       TXA            
       ASL            
       ASL            
       ASL            
       ORA    #$A7    
       STA    $82     
       LDA    #$03    
       DEX            
       BPL    LF4D8   
       LSR            
       BIT    $D3     
       BVC    LF4D8   
       LSR            
LF4D8: STA    $ED     
LF4DA: LDA    #$23    
       STA    $B1     
       STA    $D2     
LF4E0: LDX    #$04    
LF4E2: LDY    #$00    
       STY    $DB,X   
       STY    $D4,X   
       LDA    #$0A    
       STA    $A6,X   
       DEX            
       BNE    LF4E2   
LF4EF: STY    $EF     
       STY    $F0     
       RTS            

LF4F4: ASL            
       BNE    LF511   
       BCC    LF531   
       JSR    LF4DA   
       LDA    $D3     
       STA    $CF     
       STA    $C3     
       LDA    #$10    
LF504: ASL    $C3     
       BCS    LF50C   
       STA    $8C,X   
       STY    $95,X   
LF50C: INX            
       CPX    #$04    
       BCC    LF504   
LF511: LDX    #$01    
LF513: LDA    #$3C    
       STA    $E2     
       LDA    #$03    
       STA    $EE     
       LDA    #$6E    
       STA    $83     
       STX    $81     
       LDX    #$06    
       STX    AUDC1   
       LDA    #$FF    
LF527: STA    $E5,X   
       DEX            
       BPL    LF527   
       LDX    #$21    
       STX    $D1     
       RTS            

LF531: LDA    $CF     
       CMP    #$F0    
       BCC    LF53A   
LF537: JMP    LF64E   
LF53A: LDA    $B2     
       AND    #$03    
       TAX            
       LDA    LFEAE,X 
       BIT    $CF     
       BNE    LF537   
       TAY            
       STX    $B7     
       LDX    $B4     
       LDA    LFE47,X 
       LDX    $B7     
       AND    $DF     
       BEQ    LF562   
       LDA    #$0A    
       STA    $A7,X   
       LDA    #$04    
       STA    AUDC1   
       TYA            
       LDY    #$00    
       JSR    LF4EF   
LF562: LDY    $D4     
       CPY    #$03    
       ORA    $CF     
       STA    $CF     
       BCS    LF58C   
       LSR            
       DEY            
       DEY            
       BNE    LF5CB   
       LDY    #$11    
       LDA    $D2     
       CMP    #$23    
       LDA    $80     
       BCC    LF57F   
       BNE    LF587   
       INC    $80     
LF57F: BNE    LF583   
       LDY    #$13    
LF583: BCS    LF587   
       STY    $A7,X   
LF587: LDA    $D5,X   
       JMP    LF5D3   
LF58C: BMI    LF5C8   
       LDX    $DD     
       LDA    $DC     
       STA    $80,X   
       LDA    $80     
       TAY            
       BEQ    LF5A5   
       CMP    #$0A    
       BCC    LF5A7   
       SBC    #$06    
       CMP    #$0E    
       BCC    LF5A7   
       LDY    #$0A    
LF5A5: STY    $DE     
LF5A7: CLC            
       ADC    $DE     
       EOR    #$FF    
       ADC    #$19    
       CMP    #$05    
       BCC    LF5BA   
       ADC    #$19    
       CMP    #$24    
       BCS    LF5BA   
       ADC    #$4D    
LF5BA: TAY            
       LDX    LFE75,Y 
       LDY    #$AA    
       STX    $DD     
       STY    $9E     
       LDA    $80,X   
       STA    $DC     
LF5C8: JMP    LF64E   
LF5CB: LDA    $80     
       BCS    LF619   
       BNE    LF5D3   
       LDA    #$02    
LF5D3: CLC            
       SED            
       ADC    $80     
       CLD            
       STA    $80     
       LDA    $8C,X   
       LSR            
       STA    $B7     
       LDA    $95,X   
       ROR            
       LSR    $B7     
       ROR            
       LSR    $B7     
       BNE    LF5EF   
       ROR            
       LSR            
       CMP    $80     
       BCC    LF5F1   
LF5EF: LDA    $80     
LF5F1: STA    $9E,X   
       TAY            
       LDA    $CF     
       CMP    #$F0    
       AND    LFEAE,X 
       BEQ    LF605   
       LDA    $D4     
       EOR    #$02    
       BNE    LF605   
       STY    $D5,X   
LF605: BCC    LF64E   
       LDA    $D2     
       CMP    #$23    
       BCC    LF64E   
LF60D: LDX    #$00    
       STX    $D2     
       LDA    $D4     
       LSR            
       BEQ    LF5C8   
       JMP    LF511   
LF619: LDY    $D2     
       CPY    #$0A    
       BNE    LF628   
       LDY    #$10    
       CMP    #$06    
       BCS    LF64C   
       DEY            
       BNE    LF64C   
LF628: LDY    #$0B    
       CMP    #$02    
       BCC    LF64C   
       INY            
       CMP    #$0A    
       BCS    LF64C   
       CMP    #$06    
       BCS    LF644   
       LDA    $D4     
       BNE    LF644   
       INY            
       LDA    $CE     
       AND    LFEB2,X 
       BEQ    LF64B   
       DEY            
LF644: LDA    $CE     
       AND    LFEAE,X 
       BNE    LF64C   
LF64B: INY            
LF64C: STY    $A7,X   
LF64E: DEC    $B1     
       BPL    LF6C5   
       LDA    $E0     
       ORA    #$02    
       STA    $E0     
       INC    $B1     
       LDY    $D2     
       BNE    LF68C   
LF65E: LDY    #$23    
       LDA    #$77    
LF662: LDX    LFE57,Y 
       STA    $80,X   
       DEY            
       BNE    LF662   
       LDX    #$04    
       STX    $B0     
       STY    $CE     
       DEX            
LF671: LDA    #$0A    
       STA    $A7,X   
       LDA    LFEAE,X 
       AND    $D3     
       BEQ    LF680   
       DEC    $B0     
       STY    $9E,X   
LF680: DEX            
       BPL    LF671   
       LDA    $D4     
       LSR            
       BEQ    LF68C   
       LDA    $D3     
       STA    $CE     
LF68C: LDY    $D2     
       LDA    $D4     
       EOR    #$03    
       BNE    LF697   
       JMP    LFD97   
LF697: LSR            
       BNE    LF69D   
       JMP    LFB72   
LF69D: CPY    #$0A    
       BCS    LF6A4   
       JMP    LF75B   
LF6A4: CPY    #$0B    
       BCC    LF6AD   
       BNE    LF6B6   
       JMP    LF781   
LF6AD: LDA    $CF     
       CMP    #$F0    
       BCC    LF6C5   
       JMP    LFB4E   
LF6B6: LDA    $D9     
       CPY    #$21    
       BCS    LF6C3   
       CPY    #$18    
       BCS    LF6C6   
       JMP    LFA51   
LF6C3: BEQ    LF70F   
LF6C5: RTS            

LF6C6: BNE    LF6D4   
       LDX    $D0     
       STX    $83     
       DEC    $B0     
       BMI    LF6DE   
       INC    $D2     
       BNE    LF6F1   
LF6D4: CMP    #$16    
       BCC    LF6E4   
       LDX    #$00    
       STX    $D9     
       STX    $DE     
LF6DE: LDA    #$21    
       STA    $D2     
       BNE    LF70C   
LF6E4: JSR    LFB1F   
       LDX    LFE59,Y 
       STA    $80,X   
       LDX    #$04    
       JSR    LF7EB   
LF6F1: CMP    #$11    
       BCS    LF704   
       LDX    #$30    
       CLC            
       ADC    $DE     
       CMP    #$11    
       BCC    LF70C   
       BNE    LF704   
       LDY    $E0     
       BPL    LF70C   
LF704: CMP    #$16    
       BCS    LF70C   
       STA    $D9     
       BNE    LF6DE   
LF70C: STX    $B1     
       RTS            

LF70F: LDX    #$03    
LF711: LDA    LFEAE,X 
       AND    $D3     
       BNE    LF740   
       LDA    $A7,X   
       CMP    #$13    
       BCS    LF740   
       LDA    $D5,X   
       CMP    #$0C    
       BCS    LF726   
       ADC    $DA,X   
LF726: STA    $C7     
       LDA    $D9     
       LDY    #$17    
       CMP    $C7     
       BNE    LF738   
       STY    $A7,X   
       LDA    #$00    
       STA    $EE     
       BEQ    LF740   
LF738: DEY            
       BCS    LF73C   
       DEY            
LF73C: TYA            
       JSR    LFB35   
LF740: DEX            
       BPL    LF711   
       INC    $D2     
LF745: LDA    $D4     
       BNE    LF751   
       LDA    #$30    
       LDX    $ED     
       BNE    LF751   
       LDA    #$70    
LF751: ORA    $D3     
       AND    #$F0    
       STA    $D3     
       INC    $D2     
       BNE    LF77C   
LF75B: JSR    LFE2B   
       JSR    LFB1F   
       LDX    #$30    
       STX    $B1     
       LDX    LFE59,Y 
       STA    $80,X   
       CPX    #$03    
       BNE    LF77E   
       STA    $D0     
       LDA    #$74    
       STA    $83     
       CPX    $82     
       BCC    LF77F   
       LDA    $D3     
       ORA    #$01    
LF77C: STA    $CF     
LF77E: RTS            

LF77F: INC    $D2     
LF781: INC    $D2     
       LDA    #$00    
       LDX    #$09    
LF787: STA    $D5,X   
       DEX            
       BPL    LF787   
       LDX    #$04    
       LDA    $82     
       JSR    LF7EB   
       LDA    $D0     
       JSR    LF7EB   
       CLC            
       ADC    $DE     
       STA    $B7     
       LDX    #$03    
LF79F: LDA    LFEAE,X 
       AND    $D3     
       BNE    LF7CC   
       JSR    LF8C3   
       CLC            
       ADC    $DA,X   
       CMP    #$15    
       BNE    LF7CC   
       CMP    $B7     
       BEQ    LF7CC   
       LDA    $9E,X   
       BIT    LFEB1   
       BEQ    LF7BE   
       SEC            
       SBC    #$06    
LF7BE: LSR            
       SED            
       ADC    $9E,X   
       CLD            
       STA    $9E,X   
       LDA    #$18    
       LDY    #$02    
       JSR    LFB33   
LF7CC: DEX            
       BPL    LF79F   
       INX            
       STX    $EC     
       LDA    $B7     
       CMP    #$15    
       BNE    LF7E8   
       STA    $D9     
       LDA    $D0     
       STA    $83     
       LDA    #$21    
       STA    $D2     
       LDA    #$01    
       STA    $EE     
       STA    $B1     
LF7E8: JMP    LFAB7   
LF7EB: LSR            
       LSR            
       CMP    #$14    
       ROR            
       BPL    LF7F4   
       LDA    #$09    
LF7F4: BNE    LF7FA   
       LDY    #$0A    
       STY    $DA,X   
LF7FA: SEC            
       ADC    $D5,X   
       STA    $D5,X   
       RTS            

LF800: .byte $00,$22,$22,$3E,$22,$1C,$00,$00,$00,$3E,$20,$3E,$02,$3E,$00,$00
       .byte $00,$3E,$02,$0E,$02,$3E,$00,$00,$00,$04,$04,$3E,$24,$20,$00,$00
       .byte $00,$3E,$02,$3E,$20,$3E,$00,$00,$00,$3E,$22,$3E,$20,$3E,$00,$00
       .byte $00,$08,$08,$04,$02,$3E,$00,$00,$00,$3E,$22,$3E,$22,$3E,$00,$00
       .byte $00,$3E,$02,$3E,$22,$3E,$00,$00,$00,$4E,$4A,$4A,$4A,$4E,$00,$00
       .byte $00,$3C,$24,$04,$04,$0E,$00,$00,$00,$02,$3C,$2C,$24,$3C,$00,$00
       .byte $00,$24,$28,$30,$28,$24,$00,$00,$FF,$3F,$7F,$3F,$C7,$D5,$D5,$F8
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$E2,$A2,$A2,$A0,$E2,$A0,$A3,$A1,$E7,$04
       .byte $0A,$0A,$04,$00,$50,$70,$20,$00,$20,$70,$20,$00,$04,$0E,$0A,$00
       .byte $00,$00,$00
LF893: .byte $00,$60,$10,$21,$D5,$D5,$F8,$F8,$FF,$FF,$FF,$FF,$FF,$FF,$F3,$F3
       .byte $F3,$F3,$F3,$FF,$FF,$FF,$C0,$CF,$C0,$FC,$C0,$FF,$FF,$FF,$C0,$FC
       .byte $F0,$FC,$C0,$FF,$FF,$FF,$FC,$FC,$C0,$CC,$CF,$E0,$A0,$A0,$A0,$E0
LF8C3: LDY    LFE56,X 
       LDA.wy $0080,Y 
       CMP    #$48    
       EOR.wy $0081,Y 
       AND    #$FC    
       BEQ    LF8E4   
       BCC    LF8DB   
       EOR.wy $0080,Y 
       CMP    #$48    
       BCS    LF8E4   
LF8DB: LDA    LFEB2,X 
       ORA    #$03    
       ORA    $CE     
       STA    $CE     
LF8E4: LDA.wy $0080,Y 
       JSR    LF7EB   
       LDY    LFE56,X 
       LDA.wy $0081,Y 
       JMP    LF7EB   
LF8F3: LDX    #$03    
       SED            
LF8F6: LDA    LFEAE,X 
       AND    $F1     
       CMP    #$01    
       LDA    $F2,X   
       BEQ    LF958   
       STX    $C7     
       TXA            
       AND    $ED     
       TAX            
       LDA    LFEAE,X 
       AND    $D3     
       BNE    LF956   
       BCS    LF924   
       LDA    $95,X   
       ADC    #$10    
       STA    $95,X   
       LDA    $8C,X   
       ADC    #$00    
       STA    $8C,X   
       BCC    LF94B   
       LDA    $95,X   
       BEQ    LF936   
       BNE    LF94B   
LF924: LDA    $95,X   
       SBC    #$10    
       STA    $95,X   
       LDA    $8C,X   
       SBC    #$00    
       STA    $8C,X   
       BNE    LF94B   
       LDA    $95,X   
       BNE    LF94B   
LF936: LDA    #$10    
       STA    $8C,X   
       LDA    LFEAE,X 
       ORA    $D3     
       STA    $D3     
       ORA    $CF     
       STA    $CF     
       LDX    $C7     
       LDA    #$01    
       STA    $F2,X   
LF94B: LDY    #$02    
       CLC            
       LDX    $C7     
       LDA    $F2,X   
       SBC    #$00    
       STA    $F2,X   
LF956: LDX    $C7     
LF958: DEX            
       BPL    LF8F6   
       TYA            
       BNE    LF965   
       LDX    $EE     
       BNE    LF965   
       INY            
       STY    $E2     
LF965: AND    $E2     
       ASL            
       STA    AUDC1   
       CLD            
       RTS            

LF96C: LDY    $EC     
       BNE    LF9AB   
       LDY    LFE7D,X 
       LDA    $A7,X   
       EOR    #$0E    
       BEQ    LF97C   
       JMP    LFA05   
LF97C: INC    $B0     
       LDA    $ED     
       EOR    #$01    
       ASL            
       ORA    $B7     
       ASL            
       ASL            
       ASL            
       TAY            
       LDX    LFE7F,Y 
       LDA    $80,X   
       PHA            
       LDA    #$77    
       STA    $80,X   
       PLA            
       INY            
       LDX    LFE7F,Y 
       STA    $80,X   
       JSR    LFB21   
       INY            
       LDX    LFE7F,Y 
       STA    $80,X   
       INY            
       STY    $EC     
       LDA    #$30    
       STA    $B1     
       RTS            

LF9AB: CPY    #$17    
       BCS    LFA07   
       JSR    LFB21   
       LDX    LFE7F,Y 
       STA    $80,X   
       LDA    $7F,X   
       CMP    #$04    
       LDA    LFE80,Y 
       STA    $EC     
       LDA    LFE81,Y 
       STA    $D2     
       LDX    LFE82,Y 
       LDY    $B7     
       LDA    #$0A    
       STA.wy $00A7,Y 
       LDA    #$00    
       STA    $D5,X   
       STA.wy $00D5,Y 
       STA.wy $00DA,Y 
       STA    $DA,X   
       LDA.wy $009E,Y 
       STA    $9E,X   
       LDA    LFEB2,X 
       BCS    LF9EB   
       ORA    LFEAE,X 
       ORA    LFEAE,Y 
LF9EB: ORA    $CE     
       STA    $CE     
       JSR    LF8C3   
       LDA    LFEAE,X 
       EOR    #$FF    
       AND    $D3     
       STA    $D3     
       LDY    $B7     
       JSR    LFAD2   
       LDX    $B7     
       JMP    LF8C3   
LFA05: STY    $EC     
LFA07: LDA    LFEAE,X 
       ORA    $CE     
       STA    $CE     
       LDA    $A7,X   
       LDX    LFE7F,Y 
       CMP    #$0C    
       BEQ    LFA3A   
       JSR    LFB21   
       JSR    LF167   
       BCS    LFA37   
       BEQ    LFA3A   
       LDY    $EC     
       LDX    LFE7F,Y 
       LDA    $80,X   
       LDX    $B7     
       CMP    #$77    
       BEQ    LFA4E   
       LDA    $E0     
       BMI    LFA3A   
       LDA    #$15    
       LDY    #$00    
       CLC            
LFA37: JSR    LFB33   
LFA3A: LDX    $B7     
       LDA    LFE4F,X 
       LDY    $ED     
       BNE    LFA46   
       LDA    LFE53,X 
LFA46: TAY            
       LDA    LFE7B,X 
       STA    $EC     
       BPL    LFAB5   
LFA4E: JMP    LFACE   
LFA51: LDA    $CF     
       CMP    #$F0    
       BCS    LFA58   
       RTS            

LFA58: LDA    LFE59,Y 
       LSR            
       LSR            
       LSR            
       EOR    #$02    
       AND    #$03    
       TAX            
       STX    $B7     
       LDA    LFEB2,X 
       ORA    #$03    
       ORA    $CE     
       STA    $CE     
       LDA    $D4     
       BNE    LFA75   
       JMP    LF96C   
LFA75: LDA    LFEAE,X 
       ORA    $CE     
       STA    $CE     
       LDA    $A7,X   
       LDX    LFE59,Y 
       CMP    #$0C    
       BEQ    LFAA7   
       JSR    LF164   
       BCS    LFAA1   
       BEQ    LFAA4   
       LDA    $E0     
       BMI    LFAB7   
       LDY    LFE56,X 
       LDA.wy $0084,Y 
       LDY    #$01    
       CMP    #$77    
       BEQ    LFAB7   
       LDA    #$15    
       LDY    #$00    
       CLC            
LFAA1: JSR    LFB33   
LFAA4: LDY    $D2     
       DEY            
LFAA7: LDA    LFE59,Y 
       LSR            
       LSR            
       LSR            
       EOR    #$02    
       AND    #$03    
       TAX            
       LDY    LFE4F,X 
LFAB5: STY    $D2     
LFAB7: LDY    $D2     
       CPY    #$18    
       BCS    LFACA   
       JSR    LFE2B   
       BCC    LFACA   
       LDA    $A7,X   
       CMP    #$18    
       BEQ    LFAA7   
       BNE    LFACE   
LFACA: LDX    #$04    
       BNE    LFB17   
LFACE: TXA            
       AND    $ED     
       TAY            
LFAD2: STY    $BB     
       CLC            
       SED            
       LDA    #$00    
       LDY    $D4     
       BNE    LFAE9   
       LDY    LFEF4,X 
       LDA    $ED     
       BNE    LFAE6   
       LDY    LFEF2,X 
LFAE6: LDA.wy $009E,Y 
LFAE9: LDY    $BB     
       ADC    $9E,X   
       ADC    $9E,X   
       CLD            
       ASL            
       ASL            
       STA    $BB     
       LDA    #$00    
       ROL            
       ASL    $BB     
       ROL            
       ASL    $BB     
       ROL            
       CMP.wy $008C,Y 
       BCC    LFB17   
       BNE    LFB0D   
       LDA    $BB     
       CMP.wy $0095,Y 
       BCC    LFB17   
       BEQ    LFB17   
LFB0D: LDA    LFEAE,X 
       ORA    LFEB2,X 
       ORA    $CE     
       STA    $CE     
LFB17: LDA    LFEAE,X 
       EOR    #$F9    
       STA    $CF     
       RTS            

LFB1F: INC    $D2     
LFB21: LDA    #$06    
       STA    AUDC1   
       DEC    $D1     
       LDA    $B3     
       CLC            
       AND    #$FC    
       ADC    $B3     
       INC    $81     
       INC    $EC     
       RTS            

LFB33: STY    $EE     
LFB35: DEC    $B0     
LFB37: STA    $A7,X   
       LDA    $F1     
       ORA    LFEAE,X 
       BCS    LFB43   
       EOR    LFEAE,X 
LFB43: STA    $F1     
       LDA    $9E,X   
       STA    $F2,X   
       LDA    #$6C    
       STA    $E2     
       RTS            

LFB4E: LDX    #$03    
LFB50: LDA    $A7,X   
       CMP    #$0F    
       BNE    LFB6D   
       LDY    #$43    
       CPY    $D0     
       JSR    LFB37   
       BCC    LFB6D   
       LDA    $F2,X   
       BIT    LFEB1   
       BEQ    LFB68   
       SBC    #$06    
LFB68: LSR            
       ADC    #$00    
       STA    $F2,X   
LFB6D: DEX            
       BPL    LFB50   
       BMI    LFBA6   
LFB72: CPY    #$0B    
       BEQ    LFBE2   
       CPY    #$11    
       BEQ    LFBE2   
       CPY    #$17    
       BEQ    LFBE2   
       CPY    #$1D    
       BEQ    LFBE2   
       BCC    LFB90   
       CPY    #$22    
       BCS    LFB8B   
       JMP    LFC22   
LFB8B: BNE    LFBE1   
       JMP    LFD6B   
LFB90: LDA    LFEBF,Y 
       LSR            
       LSR            
       LSR            
       CMP    #$02    
       EOR    #$02    
       AND    #$03    
       TAX            
       BCC    LFBA9   
       LDA    LFEAE,X 
       AND    $CE     
       BEQ    LFBA9   
LFBA6: INC    $D2     
       RTS            

LFBA9: STY    $D2     
       JSR    LFB1F   
       LDX    #$30    
       STX    $B1     
       LDX    LFEBF,Y 
       CPY    #$09    
       BNE    LFBBD   
       INC    $D2     
       STA    $D0     
LFBBD: CPY    #$05    
       BCS    LFBD3   
       STA.wy $00DA,Y 
       CPY    #$04    
       BIT    SWCHB   
       BCS    LFBCF   
       BPL    LFBD3   
       BMI    LFBD1   
LFBCF: BVC    LFBD3   
LFBD1: LDA    #$74    
LFBD3: STA    $80,X   
       CPY    #$05    
       BCC    LFBE1   
       CPX    #$10    
       BCS    LFBE1   
       LDA    $CE     
       STA    $CF     
LFBE1: RTS            

LFBE2: LDA    $CF     
       CMP    #$F0    
       BCC    LFBE1   
       LDX    #$03    
LFBEA: LDA    $A7,X   
       CMP    #$13    
       BNE    LFC01   
       LDA    LFEAE,X 
       ORA    $CE     
       STA    $CE     
       CMP    #$F0    
       BCC    LFC01   
       LDA    #$22    
       STA    $D2     
       BNE    LFBE1   
LFC01: DEX            
       BPL    LFBEA   
       CPY    #$1D    
       BCC    LFBA6   
       LDX    #$05    
       LDA    $D0     
       STA    $83     
LFC0E: LDY    LFEBE,X 
       LDA.wy $0080,Y 
       CMP    #$74    
       BNE    LFC1D   
       LDA    $D9,X   
       STA.wy $0080,Y 
LFC1D: DEX            
       BNE    LFC0E   
       BEQ    LFC27   
LFC22: TYA            
       SEC            
       SBC    #$1D    
       TAX            
LFC27: INC    $D2     
       LDA    LFEAD,X 
       AND    $CE     
       BNE    LFBE1   
LFC30: STX    $BD     
       LDY    LFE55,X 
       TSX            
       STX    $BE     
       LDX    #$BC    
       TXS            
       STY    $BF     
       INY            
       INY            
       INY            
       INY            
       STY    $C5     
       TYA            
       TAX            
       LDA    $80,X   
       STA    $C4     
       LDA    #$FF    
       STA    $C1     
       BNE    LFC66   
LFC4F: TYA            
       TAX            
       DEX            
LFC52: LDA    $80,X   
       CMP    #$04    
       EOR.wy $0080,Y 
       AND    #$FC    
       BNE    LFC69   
       LDA    $80,X   
       BCS    LFC63   
       LDA    #$68    
LFC63: LSR            
       LSR            
       LSR            
LFC66: PHA            
       INC    $C1     
LFC69: LDA    $80,X   
       CMP    #$04    
       BCS    LFC71   
       ORA    #$68    
LFC71: CMP    $C4     
       BCC    LFC77   
       STA    $C4     
LFC77: DEX            
       CPX    $BF     
       BCS    LFC52   
       DEY            
       CPY    $BF     
       BNE    LFC4F   
       LDA    $C1     
       CMP    #$04    
       BNE    LFC89   
       INC    $C1     
LFC89: BCC    LFC8D   
       INC    $C1     
LFC8D: LDX    #$00    
       STX    $C2     
       STX    $C3     
       PLA            
       BMI    LFCAE   
       STA    $C2     
LFC98: PLA            
       BMI    LFCA4   
       CMP    $C2     
       BEQ    LFC98   
       TAX            
       STA    $C3     
       BPL    LFC98   
LFCA4: BCC    LFD11   
       LDA    $C2     
       STX    $C2     
       STA    $C3     
       BCS    LFD11   
LFCAE: LDX    #$03    
       LDA    $C4     
LFCB2: STX    $BA     
       STA    $B9     
       STA    $BB     
LFCB8: LDX    $C5     
       LDA    $BB     
       SEC            
       SBC    #$08    
       STA    $BB     
LFCC1: LDA    $80,X   
       EOR    $BB     
       AND    #$FC    
       BEQ    LFCDA   
       DEX            
       CPX    $BF     
       BCS    LFCC1   
       LDA    $B9     
       CMP    #$68    
       BCC    LFCF1   
       LDX    #$04    
       LDA    #$28    
       BNE    LFCB2   
LFCDA: LDY    $BA     
       LDA    $80,X   
       STA.wy $00B5,Y 
       DEC    $BA     
       BPL    LFCB8   
       LDA    #$04    
       STA    $C1     
       LDA    $B9     
       STA    $C4     
       AND    #$FC    
       STA    $C3     
LFCF1: LDX    $BF     
LFCF3: LDA    $80,X   
       EOR    $81,X   
       AND    #$07    
       BNE    LFD11   
       INX            
       CPX    $C5     
       BNE    LFCF3   
       LDX    #$05    
       LDA    $C1     
       BEQ    LFD0F   
       LDX    #$08    
       LDA    $C4     
       CMP    #$68    
       BCC    LFD0F   
       INX            
LFD0F: STX    $C1     
LFD11: LDX    $BE     
       TXS            
       LDA    #$00    
       STA    $C4     
       LDX    $C5     
       STA    $C5     
LFD1C: LDA    $80,X   
       LSR            
       LSR            
       LSR            
       BNE    LFD25   
       LDA    #$0D    
LFD25: CMP    #$0E    
       BCS    LFD40   
       CMP    #$08    
       EOR    #$0F    
       TAY            
       BCS    LFD39   
       LDA    LFEA6,Y 
       ORA    $C5     
       STA    $C5     
       BNE    LFD40   
LFD39: LDA    LFEAE,Y 
       ORA    $C4     
       STA    $C4     
LFD40: DEX            
       CPX    $BF     
       BCS    LFD1C   
       LDX    #$00    
       LDY    $BD     
       BNE    LFD55   
LFD4B: LDA    $C1,X   
       STA    $D5,X   
       INX            
       CPX    #$05    
       BCC    LFD4B   
       RTS            

LFD55: LDA    $D5,X   
       CMP    $C1,X   
       BNE    LFD64   
       INX            
       CPX    #$05    
       BCC    LFD55   
       LDA    #$80    
       BCS    LFD66   
LFD64: LDA    #$00    
LFD66: ROR            
       STA.wy $00DA,Y 
       RTS            

LFD6B: LDX    #$03    
LFD6D: LDA    LFEAE,X 
       AND    $D3     
       BNE    LFD8D   
       LDA    $A7,X   
       CMP    #$13    
       BEQ    LFD8A   
       LDA    #$12    
       ASL    $DB,X   
       BPL    LFD84   
       STA    $A7,X   
       BMI    LFD8D   
LFD84: LDA    #$15    
       BCC    LFD8A   
       LDA    #$16    
LFD8A: JSR    LFB35   
LFD8D: LDA    #$00    
       STA    $D5,X   
       DEX            
       BPL    LFD6D   
LFD94: JMP    LF745   
LFD97: LDY    #$22    
       LDX    $D2     
       BNE    LFDA3   
       JSR    LF4E0   
       NOP            
       BEQ    LFDCD   
LFDA3: CPX    #$19    
       BCS    LFDD7   
       LDX    $DD     
       LDY    $DC     
       LDA    $CF     
       BMI    LFDB9   
       LDA    $B2     
       AND    #$03    
       BNE    LFE28   
       LDY    #$75    
       BNE    LFE28   
LFDB9: CPY    #$77    
       BEQ    LFDC7   
       LDA    #$01    
       STA    $EE     
       LDA    #$1C    
       STA    $E2     
       BNE    LFDD2   
LFDC7: LDA    $84     
       STA    $80,X   
       STA    $DC     
LFDCD: JSR    LFB1F   
       STA    $84     
LFDD2: LDA    #$71    
       STA    $CF     
LFDD6: RTS            

LFDD7: BEQ    LFE0C   
       CPY    $D2     
       BCC    LFDD6   
       LDX    $B0     
       BMI    LFD94   
       LDY    LFEE6,X 
       LDX    #$05    
LFDE6: STX    $C7     
       LDX    LFE75,Y 
       LDA    $80,X   
       LDX    $C7     
       STA    $81,X   
       INY            
       DEX            
       BNE    LFDE6   
       JSR    LFC30   
       LDA    #$77    
LFDFA: STA    $81,X   
       DEX            
       BNE    LFDFA   
       LDY    $D5     
       LDA    LFEF6,Y 
       STA    $9E     
       CLC            
       LDA    #$0A    
       JMP    LFB35   
LFE0C: STY    $D2     
LFE0E: LDX    LFE57,Y 
       CPX    #$07    
       BCC    LFE1B   
       LDA    #$77    
       EOR    $80,X   
       BEQ    LFE1E   
LFE1B: DEY            
       BNE    LFE0E   
LFE1E: LDY    $84     
       STA    $8C     
       STA    $95     
       LDA    #$0B    
       STA    $B0     
LFE28: STY    $80,X   
       RTS            

LFE2B: LDA    LFE59,Y 
       LSR            
       LSR            
       LSR            
       CMP    #$02    
       EOR    #$02    
       AND    #$03    
       TAX            
       BCC    LFE44   
       LDA    LFEAE,X 
       AND    $D3     
       BEQ    LFE44   
       INY            
       BNE    LFE2B   
LFE44: STY    $D2     
       RTS            

LFE47: .byte $80,$40,$08,$04
LFE4B: .byte $00,$38,$0E,$D4
LFE4F: .byte $18,$12,$15,$0F
LFE53: .byte $18,$15
LFE55: .byte $02
LFE56: .byte $10
LFE57: .byte $19,$22
LFE59: .byte $2B,$19,$22,$10,$02,$2C,$1A,$23,$11,$03,$0B,$0B,$2D,$2E,$2F,$1B
       .byte $1C,$1D,$24,$25,$26,$12,$13,$14,$03,$04,$05,$06
LFE75: .byte $07,$08,$09,$0A,$0B,$50
LFE7B: .byte $00,$00
LFE7D: .byte $17,$21
LFE7F: .byte $11
LFE80: .byte $22
LFE81: .byte $23
LFE82: .byte $11,$1C,$12,$02,$00,$1A,$2B,$2C,$1A,$26,$0C,$03,$00,$11,$19,$1A
       .byte $11,$21,$0F,$01,$12,$13,$14,$22,$23,$24,$25,$26,$19,$1A,$1B,$1C
       .byte $1D,$2B,$2C,$2D
LFEA6: .byte $2E
LFEA7: .byte $2F,$3E,$31,$F0,$FE,$51
LFEAD: .byte $00
LFEAE: .byte $80,$40,$20
LFEB1: .byte $10
LFEB2: .byte $08,$04,$02,$01,$0B,$13,$1A,$2B,$24,$1C,$11,$2F
LFEBE: .byte $07
LFEBF: .byte $2B,$19,$22,$10,$02,$2C,$1A,$23,$11,$03,$00,$09,$2D,$1B,$24,$12
       .byte $04,$0A,$2E,$1C,$25,$13,$05,$0B,$2F,$1D,$26,$14,$06,$08,$11,$23
       .byte $1A,$2C,$10,$11,$12,$13,$14
LFEE6: .byte $00,$6C,$24,$29,$2E,$49,$67,$55,$5B,$61,$41,$45
LFEF2: .byte $01,$00
LFEF4: .byte $02,$03
LFEF6: .byte $00,$01,$03,$06,$12,$05,$10,$16,$30,$50,$E0,$A0,$A0,$A0,$E0,$40
       .byte $40,$40,$40,$40,$E0,$80,$E0,$20,$E0,$E0,$20,$60,$20,$E0,$20,$20
       .byte $E0,$A0,$80,$E0,$20,$E0,$80,$E0,$E0,$A0,$E0,$80,$E0,$20,$20,$20
       .byte $20,$E0,$E0,$A0,$E0,$A0,$E0,$E0,$20,$E0,$A0,$E0,$00,$00,$00,$00
       .byte $00,$94,$94,$F4,$94,$95,$E4,$24,$E4,$84,$EE,$EE,$AA,$AE,$AA,$EE
       .byte $E8,$28,$EE,$8A,$EE,$A2,$A6,$AA,$B2,$A2,$8A,$8A,$EE,$AA,$EE,$EE
       .byte $A8,$EE,$A8,$EE,$25,$25,$25,$25,$75,$8E,$8A,$CA,$8A,$EE,$77,$55
       .byte $75,$55,$75,$6D,$55,$45,$45,$45,$77,$45,$45,$45,$47,$47,$45,$75
       .byte $55,$75,$EE,$AA,$E2,$A2,$E7
LFF7D: .byte $FF,$23,$E0,$0E,$0A,$0A,$0A,$0E,$04,$04,$04,$04,$04,$0E,$08,$0E
       .byte $02,$0E,$0E,$02,$06,$02,$0E,$02,$02,$0E,$0A,$08,$0E,$02,$0E,$08
       .byte $0E,$0E,$0A,$0E,$08,$0E,$02,$02,$02,$02,$0E,$0E,$0A,$0E,$0A,$0E
       .byte $0E,$02,$0E,$0A,$0E,$00,$00,$00,$00,$00,$80,$80,$80,$80,$C0,$A4
       .byte $A4,$E4,$AE,$EA,$EE,$88,$8C,$88,$8E,$D2,$92,$92,$92,$97,$E9,$2A
       .byte $EF,$89,$EF,$EE,$22,$EE,$88,$EE,$40,$40,$40,$40,$E0,$C0,$00,$80
       .byte $00,$C0,$EE,$8A,$8A,$8A,$8E,$72,$12,$72,$42,$77,$44,$4C,$54,$64
       .byte $44,$77,$14,$76,$44,$77,$75,$15,$77,$45,$75,$00,$00,$00,$00,$00
       .byte $F0,$00,$F0
