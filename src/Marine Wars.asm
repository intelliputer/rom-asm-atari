; Disassembly of roms/Marine Wars.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Marine Wars.bin
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
RESP0   =  $10
RESP1   =  $11
RESM1   =  $13
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
L5099   =   $5099
L59F3   =   $59F3

       ORG $5000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
L5007: STA    VSYNC,X 
       DEX            
       BNE    L5007   
       JSR    L5BE1   
       LDA    #$00    
       STA    $97     
L5013: LDA    #$30    
       STA    TIM64T  
       JSR    L5398   
       JSR    L54C2   
       JSR    L566F   
       LDA    $97     
       CMP    #$04    
       BEQ    L502E   
       CMP    #$02    
       BEQ    L502E   
       JSR    L58DD   
L502E: LDY    INTIM   
       BNE    L502E   
       LDY    #$02    
       STY    WSYNC   
       STY    VBLANK  
       INC    $CD     
       BNE    L503F   
       INC    $CE     
L503F: DEC    $D0     
       BPL    L5047   
       LDX    #$02    
       STX    $D0     
L5047: LDX    $CC     
       LDA    $CD     
       EOR    L5013,X 
       SBC    $CC     
       STA    $CC     
       STY    WSYNC   
       STY    VSYNC   
       LDY    #$00    
       STY    WSYNC   
       STY    WSYNC   
       STY    COLUPF  
       STY    WSYNC   
       STY    VSYNC   
       LDA    #$30    
       STA    PF0     
       STY    COLUPF  
       LDA    #$05    
       STA    CTRLPF  
       STY    WSYNC   
       STY    VBLANK  
       LDA    #$38    
       STA    TIM64T  
       JSR    L5198   
       JSR    L511F   
L507B: LDA    INTIM   
       BNE    L507B   
       JSR    L5B7C   
       LDA    #$07    
       STA    NUSIZ0  
       LDA    $CF     
       LDX    #$00    
       JSR    L5C85   
       LDA    $C7     
       AND    #$F0    
       STA    $DB     
       BEQ    L5099   
       LDX    $C9     
       BIT    $AA     
       LDY    #$0E    
L509C: LDA    L5F50,Y 
       CPY    #$08    
       STA    WSYNC   
       BCS    L50AA   
       STA    GRP0    
       STX    COLUP0  
       INX            
L50AA: LDA    $DB     
       STA    COLUBK  
       BEQ    L50B2   
       INC    $DB     
L50B2: DEY            
       BPL    L509C   
       STA    WSYNC   
       LDA    $C6     
       STA    COLUBK  
       JSR    L5289   
       LDA    $C7     
       ADC    #$C4    
       STA    COLUBK  
       LDA    $C8     
       STA    COLUP0  
       LDA    #$02    
       LDX    #$00    
       JSR    L5C85   
       LDA    #$07    
       STA    NUSIZ0  
       LDY    $8E     
       CPY    #$04    
       BCC    L50DB   
       LDY    #$04    
L50DB: LDA    L511A,Y 
       STA    GRP0    
       LDA    #$47    
       STA    TIM8T   
       JSR    L5AF8   
       LDX    #$07    
L50EA: ASL    $9C,X   
       LSR    $9C,X   
       DEX            
       BPL    L50EA   
L50F1: LDA    INTIM   
       BNE    L50F1   
       STA    WSYNC   
       STA    GRP0    
       LDY    #$05    
       LDX    #$0B    
L50FE: LDA    #$5E    
       STA    $D2,X   
       DEX            
       LDA    L5DBA,Y 
       STA    $D2,X   
       DEY            
       DEX            
       BPL    L50FE   
       JSR    L5B7C   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    COLUBK  
       JMP    L5013   
L511A: .byte $00,$80,$A0,$A8,$AA
L511F: LDY    $97     
       BEQ    L518F   
       DEY            
       BEQ    L518F   
       DEY            
       BEQ    L514F   
       TYA            
       SEC            
       SBC    #$05    
       BMI    L5147   
       LDY    #$10    
       LDX    #$02    
       BIT    $CD     
       BVC    L513B   
       BPL    L5175   
       BMI    L517B   
L513B: BPL    L513F   
       LDY    #$20    
L513F: STY    $DE     
       JSR    L5167   
       STA    $DC     
       RTS            

L5147: LDX    #$02    
       BIT    $CD     
       BMI    L5181   
       BVS    L5181   
L514F: LDY    $8D     
       LDX    #$10    
       BIT    $96     
       BPL    L5159   
       LDX    #$20    
L5159: SED            
       CLC            
       LDA    #$00    
L515D: ADC    #$01    
       DEY            
       BPL    L515D   
       CLD            
       STX    $DE     
       STA    $E0     
L5167: JSR    L5B3A   
       LDA    #$73    
       STA    $D4     
       STA    $D6     
       STA    $D8     
       STA    $DA     
       RTS            

L5175: BIT    $96     
       BPL    L5181   
       BMI    L517F   
L517B: BIT    $96     
       BMI    L5181   
L517F: LDX    #$09    
L5181: LDY    #$02    
L5183: LDA    $88,X   
       STA.wy $00DE,Y 
       DEX            
       DEY            
       BPL    L5183   
       JMP    L5B3A   
L518F: LDA    $96     
       AND    #$0F    
       TAY            
       LDX    #$00    
       BEQ    L5159   
L5198: LDX    #$07    
       LDY    #$00    
       STY    $D2     
L519E: LDA    $9C,X   
       BEQ    L51A5   
       STX    $D2,Y   
       INY            
L51A5: DEX            
       BPL    L519E   
       TYA            
       BEQ    L51B0   
       STY    $DA     
       DEY            
       BNE    L51BC   
L51B0: STY    $C4     
       LDX    $D2     
       STX    $BC     
       ASL    $9C,X   
       SEC            
       ROR    $9C,X   
       RTS            

L51BC: STY    $DC     
       LDX    $D2,Y   
L51C0: STX    $DE     
       LDA    $9C,X   
L51C4: DEY            
       BMI    L51D4   
       LDX    $D2,Y   
       CMP    $9C,X   
       BCS    L51C4   
       LDA    $DE     
       STA.wy $00D2,Y 
       BCC    L51C0   
L51D4: LDY    $DC     
       LDA    $DE     
       STA.wy $00D2,Y 
       DEY            
       BNE    L51BC   
       DEY            
L51DF: INY            
L51E0: STY    $DB     
       CPY    $DA     
       BCC    L51E9   
       JMP    L5274   
L51E9: LDX    $D2,Y   
       BMI    L51DF   
       LDY    $B4,X   
       SEC            
       LDA    L5FAD,Y 
       ADC    $9C,X   
       ADC    #$04    
       LDY    $DB     
L51F9: INY            
       CPY    $DA     
       BCC    L5201   
       JMP    L526A   
L5201: LDX    $D2,Y   
       BMI    L51F9   
       STY    $DC     
       CMP    $9C,X   
       BCS    L5219   
       LDY    $DB     
       LDX    $D2,Y   
       LDA    #$80    
       ORA    $9C,X   
       STA    $9C,X   
       LDY    $DC     
       BNE    L51E0   
L5219: ADC    #$01    
       STA    $DE     
       LDY    $B4,X   
       LDA    L5FAD,Y 
       SEC            
       ADC    $9C,X   
       ADC    #$06    
       CMP    $DE     
       BCS    L522D   
       LDA    $DE     
L522D: STA    $DE     
       LDY    $DC     
L5231: INY            
       CPY    $DA     
       BCS    L5274   
       LDX    $D2,Y   
       BMI    L5231   
       CMP    $9C,X   
       BCC    L51E0   
       STY    $DD     
       LDX    #$02    
L5242: LDY    $DB,X   
       LDA.wy $00D2,Y 
       LDY    $C4     
       INY            
L524A: DEY            
       BMI    L5257   
       CMP.wy $00BC,Y 
       BNE    L524A   
       DEX            
       BPL    L5242   
       LDX    #$01    
L5257: CPX    #$02    
       BNE    L525D   
       LDX    #$FF    
L525D: INX            
       LDY    $DB,X   
       LDA    #$80    
       STA.wy $00D2,Y 
       LDY    $DB     
       JMP    L51E9   
L526A: LDY    $DB     
       LDX    $D2,Y   
       LDA    #$80    
       ORA    $9C,X   
       STA    $9C,X   
L5274: LDY    #$00    
       LDX    #$00    
L5278: LDA    $D2,X   
       BMI    L5280   
       STA.wy $00BC,Y 
       INY            
L5280: INX            
       CPX    $DA     
       BCC    L5278   
       DEY            
       STY    $C4     
       RTS            

L5289: LDY    #$00    
       STY    $D2     
       LDA    #$5F    
       STA    $D5     
       STA    $D7     
       LDY    #$FC    
       LDX    $BC     
       LDA    $9C,X   
       BPL    L52A1   
       STY    WSYNC   
       STY    WSYNC   
       INY            
       INY            
L52A1: STY    $D3     
       STY    $DD     
       STA    WSYNC   
L52A7: LDY    $D2     
       LDA    $C4     
       CMP    $D2     
       BCS    L52B6   
       LDA    #$00    
       STA    $DA     
       JMP    L5337   
L52B6: LDX    $BC,Y   
       STX    $D8     
       LDA    $9C,X   
       STA    $DA     
       STA    $DB     
       BPL    L52C8   
       AND    #$7F    
       STA    $DA     
       BPL    L5302   
L52C8: INY            
       LDX    $BC,Y   
       STX    $D9     
       LDA    $A4,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
       STA    WSYNC   
       INC    $D2     
       INC    $D3     
       INC    $D3     
L52DC: DEY            
       BPL    L52DC   
       STA    RESP1   
       STA    WSYNC   
       LDA    $9C,X   
       STA    $DB     
       LDY    $B4,X   
       LDA    L5FAD,Y 
       STA    $DD     
       LDA    L5DC0,Y 
       STA    $D6     
       LDA    $AC,X   
       STA    NUSIZ1  
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    L5FD9,X 
       STA    COLUP1  
       LDX    $D8     
L5302: LDA    $A4,X   
       STA    HMP0    
       AND    #$0F    
       TAY            
       STA    WSYNC   
       INC    $D2     
       INC    $D3     
       INC    $D3     
L5311: DEY            
       BPL    L5311   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $B4,X   
       LDA    L5FAD,Y 
       STA    $DC     
       LDA    L5DC0,Y 
       STA    $D4     
       LDA    $AC,X   
       STA    NUSIZ0  
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    L5FD9,X 
       STA    COLUP0  
       LDX    $D3     
       STA    CXCLR   
L5337: CPX    $DA     
       BEQ    L5345   
       INX            
       CPX    #$6C    
       STA    WSYNC   
       BCC    L5337   
       STA    WSYNC   
       RTS            

L5345: LDA    #$00    
       LDY    $DC     
       BMI    L534F   
       LDA    ($D4),Y 
       DEC    $DC     
L534F: STA    WSYNC   
       STA    GRP0    
       LDA    #$00    
       CPX    $DB     
       BCC    L535F   
       LDY    $DD     
       BMI    L535F   
       LDA    ($D6),Y 
L535F: STA    GRP1    
       BCC    L5365   
       DEC    $DD     
L5365: INX            
       CPX    #$68    
       BCS    L5370   
       LDA    $DC     
       AND    $DD     
       BPL    L5345   
L5370: LDY    $D2     
       DEY            
       BIT    CXP0FB  
       BMI    L5383   
       BIT    CXP1FB  
       BMI    L5388   
       BIT    CXPPMM  
       BPL    L538A   
       STY    $CB     
       BMI    L538A   
L5383: BIT    $DB     
       BMI    L5388   
       DEY            
L5388: STY    $CA     
L538A: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       INX            
       STX    $D3     
       JMP    L52A7   
L5398: LDA    $97     
       CMP    #$05    
       BNE    L53A9   
       LDX    $8E     
       BNE    L53B3   
       LDA    #$40    
       STA    $9B     
       INC    $97     
       RTS            

L53A9: CMP    #$06    
       BNE    L53FC   
       INC    $C7     
       DEC    $9B     
       BNE    L53FB   
L53B3: LDX    $95     
       BNE    L53C3   
       LDX    $8E     
       BNE    L53D6   
       INX            
       STX    $CE     
       LDA    #$07    
       STA    $97     
       RTS            

L53C3: LDA    #$80    
       EOR    $96     
       STA    $96     
       LDX    #$06    
L53CB: LDA    $88,X   
       LDY    $8F,X   
       STA    $8F,X   
       STY    $88,X   
       DEX            
       BPL    L53CB   
L53D6: DEC    $8E     
       JSR    L543B   
       LDA    #$02    
       TAX            
       BIT    $8D     
       BNE    L53F4   
       DEX            
       LDA    $8B     
L53E5: SEC            
       SBC    #$03    
       BCS    L53EE   
       LDA    #$00    
       STA    $A0,X   
L53EE: DEX            
       BPL    L53E5   
       STA    $8B     
       RTS            

L53F4: LDA    #$00    
L53F6: STA    $A0,X   
       DEX            
       BPL    L53F6   
L53FB: RTS            

L53FC: CMP    #$03    
       BEQ    L5403   
       JMP    L5493   
L5403: LDA    $8B     
       ORA    $9C     
       BNE    L53FB   
       LDX    #$02    
L540B: LDA    $A0,X   
       BNE    L5443   
       DEX            
       BPL    L540B   
       LDA    $8C     
       BNE    L541F   
       CLC            
       SED            
       LDY    $89     
       LDA    #$05    
       JSR    L5C66   
L541F: INC    $8D     
       LDA    #$1F    
       AND    $8D     
       STA    $8D     
       BIT    L5DEE   
       BNE    L5434   
       ADC    #$03    
       STA    $8B     
       ADC    #$09    
       BNE    L5439   
L5434: ASL            
       ADC    #$14    
       STA    $8B     
L5439: STA    $8C     
L543B: LDA    $8D     
       JSR    L5BF5   
       JMP    L56EF   
L5443: TXA            
       ORA    $CD     
       BNE    L53FB   
       LDA    $8D     
       BIT    L5DEE   
       BNE    L53FB   
       LDA    $D0     
       ASL            
       TAY            
       AND    $B0     
       BEQ    L5473   
       TYA            
       EOR    #$FF    
       AND    $B0     
       STA    $B0     
       LDA    $A8     
       JSR    L58C9   
       LDY    $A0     
L5465: STY    $9C     
       LDA    #$20    
       STA    $AC     
       LDA    L5FA2   
       STA    $B4     
       JMP    L57D1   
L5473: LDX    $A8     
       STX    $A4     
       LDY    $B0     
       LSR    $98     
       PHP            
       JSR    L5D39   
       LDY    $A0     
       BCS    L5489   
       LDA    #$00    
       STA    $A0     
       BEQ    L548D   
L5489: STX    $A8     
       STA    $B0     
L548D: PLP            
       ROL    $98     
       JMP    L5465   
L5493: TAY            
       BEQ    L549A   
       CMP    #$07    
       BNE    L54A2   
L549A: LDX    $CE     
       BNE    L54A2   
       LDA    #$08    
       STA    $97     
L54A2: CMP    #$08    
       BNE    L54C1   
       LDA    $CD     
       BNE    L54C1   
       LDX    #$04    
L54AC: LDA    #$11    
       ADC    $C5,X   
       STA    $C5,X   
       DEX            
       BPL    L54AC   
       LDX    #$07    
L54B7: CLC            
       LDA    #$08    
       ADC    $AC,X   
       STA    $AC,X   
       DEX            
       BPL    L54B7   
L54C1: RTS            

L54C2: LDY    $CA     
       BMI    L5501   
       LDX    $BC,Y   
       STX    $CA     
       CPX    #$05    
       BNE    L54D5   
       LDA    $98     
       PHA            
       EOR    #$80    
       STA    $98     
L54D5: LDY    $AC,X   
       LDA    $A4,X   
       TAX            
       JSR    L5D39   
       LDY    $CA     
       STX    $A4,Y   
       STA.wy $00AC,Y 
       BCS    L54EA   
       LDX    #$00    
       STX    $9C,Y   
L54EA: CPY    #$05    
       BNE    L54F1   
       PLA            
       STA    $98     
L54F1: CPY    #$04    
       BCC    L54FE   
       LDA    $8D     
       BIT    L5DEE   
       BNE    L54FE   
       INC    $8B     
L54FE: SEC            
       ROR    $CA     
L5501: LDY    $CB     
       BPL    L5508   
L5505: JMP    L55F8   
L5508: SEC            
       ROR    $CB     
       LDA.wy $00BC,Y 
       LDX    $BB,Y   
       STX    $D5     
       CMP    $D5     
       BCC    L551A   
       STA    $D6     
       BCS    L551F   
L551A: STA    $D5     
       STX    $D6     
       TXA            
L551F: LDX    $D5     
       BNE    L558F   
       CMP    #$04    
       BCS    L5569   
       LDA    L5FF3   
       JSR    L5C5C   
       LDA    $B4     
       CMP    L5FA1   
       BCC    L553B   
       CMP    L5FA3   
       BCS    L553B   
       DEC    $8C     
L553B: LDX    $D6     
       LDA    L5FAB   
       STA    $B4     
       LDA    #$00    
       STA    $9C,X   
       TAX            
L5547: LDA    $97     
       CMP    #$04    
       BEQ    L5553   
       CMP    #$03    
       BNE    L5568   
       INC    $97     
L5553: LDA    #$40    
       STA    $9B     
       LDA    $AC,X   
       AND    #$07    
       ORA    #$70    
       STA    $AC,X   
       LDY    #$03    
       JMP    L5AE5   
L5564: LDA    #$00    
       STA    $9C,X   
L5568: RTS            

L5569: SEC            
       SBC    #$07    
       BNE    L5505   
       STA    $9C,X   
       LDX    #$07    
       LDA    $8D     
       AND    #$02    
       BEQ    L557C   
       LDA    #$00    
       STA    $B1     
L557C: LDA    L5FAC   
       STA    $BB     
       INC    $A3     
       LDA    #$61    
       CMP    $A3     
       BNE    L5547   
       LDA    #$5E    
       STA    $A3     
       BNE    L5547   
L558F: CMP    #$04    
       BCC    L5564   
       CMP    #$07    
       BNE    L559D   
       CPX    #$04    
       BEQ    L5569   
       BCC    L55F8   
L559D: TAY            
       LDA.wy $00B4,Y 
       CMP    L5FAA   
       BCS    L5564   
       DEC    $8C     
       LDA    L5FF2,Y 
       JSR    L5C5C   
       LDX    $D6     
       LDA    $9C,X   
       LDY    $B4,X   
       CLC            
       ADC    L5FAD,Y 
       PHA            
       TXA            
       AND    #$02    
       LSR            
       TAY            
       LDA    L5FAB,Y 
       LDX    $D5     
       STA    $B4,X   
       TAY            
       PLA            
       SEC            
       SBC    L5FAD,Y 
       BEQ    L55CF   
       BPL    L55D1   
L55CF: LDA    #$01    
L55D1: STA    $9C,X   
       LDA    $A4,X   
       PHA            
       LDY    $D6     
       LDX    $A4,Y   
       LDA.wy $00AC,Y 
       TAY            
       PLA            
       JSR    L5D77   
       BCS    L55EC   
       LDX    $D6     
       LDA    #$00    
       STA    $9C,X   
       BEQ    L55F3   
L55EC: LDY    $D6     
       STX    $A4,Y   
       STA.wy $00AC,Y 
L55F3: LDX    $D5     
       JMP    L5547   
L55F8: LDY    #$04    
       CPY    $97     
       BNE    L5612   
       DEY            
       LDX    #$00    
       LDA    #$10    
       ADC    $C6     
       STA    $C6     
       DEC    $9B     
       LDA    $9B     
L560B: BEQ    L5613   
       SEC            
       SBC    #$10    
       BPL    L560B   
L5612: RTS            

L5613: LDA    $B4,X   
       CMP    L5FAB   
       BCC    L5620   
       LDA    $9B     
       BEQ    L5626   
       INC    $B4,X   
L5620: INX            
       CPX    #$08    
       BNE    L5613   
L5625: RTS            

L5626: STY    $97     
       LDA    #$96    
       ROR    $8D     
       BCC    L5630   
       LDA    #$00    
L5630: STA    $C6     
       ROL    $8D     
       CPX    #$07    
       BEQ    L563E   
       LDA    #$00    
       STA    $9C,X   
       BEQ    L5620   
L563E: LDA    L5FA7   
       STA    $BB     
       LDA    #$3D    
       STA    $B3     
       LDA    $A3     
       CMP    #$5E    
       BNE    L5625   
       LDY    #$05    
       STY    $97     
       LDY    $8B     
       LDX    #$02    
L5655: LDA    #$00    
       STA    $9D,X   
       LDA    $A0,X   
       BEQ    L5669   
       LDA    $B0,X   
       INY            
       LSR            
       LSR            
       BCC    L5665   
       INY            
L5665: LSR            
       BCC    L5669   
       INY            
L5669: DEX            
       BPL    L5655   
       STY    $8B     
       RTS            

L566F: LDX    $97     
       LDA    $CD     
       AND    #$03    
       TAY            
       BNE    L567B   
       JMP    L56FB   
L567B: DEY            
       BNE    L5681   
       JMP    L578D   
L5681: DEY            
       BNE    L5687   
       JMP    L57D7   
L5687: LDY    $96     
       LDA    #$02    
       BIT    SWCHB   
       BNE    L56AC   
       BIT    $96     
       BVC    L56B1   
       INY            
       TYA            
       AND    #$81    
       STA    $96     
       TXA            
       BEQ    L56A2   
       LDY    #$05    
       LSR            
       BEQ    L56A6   
L56A2: DEC    $96     
       LDY    #$00    
L56A6: JSR    L5AE5   
       JMP    L5BE1   
L56AC: TYA            
       ORA    #$40    
       STA    $96     
L56B1: TXA            
       LSR            
       BNE    L56B9   
       LDA    INPT4   
       BPL    L56CE   
L56B9: LDA    SWCHB   
       LSR            
       BCC    L56CE   
       CPX    #$02    
       BNE    L56CD   
       LDX    #$00    
       LDA    ($80,X) 
       BNE    L56CD   
       LDA    #$03    
       STA    $97     
L56CD: RTS            

L56CE: JSR    L5BE1   
       LDY    #$02    
       STY    $8E     
       INY            
       LDA    $96     
       AND    #$01    
       BNE    L56DD   
       TAY            
L56DD: STA    $96     
       STY    $95     
       LDA    #$03    
       STA    $8B     
       LDA    #$0C    
       STA    $8C     
       STA    $93     
       LDA    #$09    
       STA    $92     
L56EF: LDX    #$00    
       LDY    #$02    
       STX    $98     
       STY    $97     
       DEY            
       JMP    L5AE5   
L56FB: CPX    #$03    
       BNE    L56CD   
       LDA    SWCHA   
       BIT    $96     
       BPL    L570A   
       ASL            
       ASL            
       ASL            
       ASL            
L570A: STA    $DB     
       LDY    #$02    
       LDA    $AB     
       BIT    $DB     
       BVC    L572F   
       BPL    L5734   
       DEY            
       LDA    $D0     
       BNE    L574C   
       LDA    $AB     
       JSR    L5CCD   
       STA    $DD     
       LDA    #$75    
       JSR    L5CCD   
       CMP    $DD     
       BEQ    L574C   
       LDA    $AB     
       BCS    L5734   
L572F: JSR    L5CBE   
       BEQ    L5737   
L5734: JSR    L5CAF   
L5737: STA    $AB     
       JSR    L5CCD   
       CMP    #$2D    
       BCS    L5744   
       LDA    #$73    
       BNE    L574A   
L5744: CMP    #$68    
       BCC    L574C   
       LDA    #$96    
L574A: STA    $AB     
L574C: LDA    #$0F    
       AND    $CD     
       BNE    L579F   
       LDY    $98     
       BMI    L576D   
       BIT    $DB     
       BVC    L5762   
       BMI    L579F   
       CPY    #$03    
       BEQ    L5782   
       BNE    L577F   
L5762: TYA            
       BEQ    L5769   
L5765: DEY            
       JMP    L5780   
L5769: LDY    #$81    
       BNE    L5780   
L576D: BIT    $DB     
       BVC    L577B   
       BMI    L579F   
       CPY    #$81    
       BNE    L5765   
       LDY    #$00    
       BEQ    L5780   
L577B: CPY    #$83    
       BEQ    L5780   
L577F: INY            
L5780: STY    $98     
L5782: LDX    L5FA7   
       BIT    $DB     
       BPL    L578A   
       DEX            
L578A: STX    $BB     
       RTS            

L578D: CPX    #$03    
       BNE    L57D6   
       LDA    #$80    
       STA    $DC     
       LDX    #$02    
L5797: LDA    $9D,X   
       BEQ    L57A0   
       CMP    #$28    
       BCC    L57A2   
L579F: RTS            

L57A0: STX    $DC     
L57A2: DEX            
       BPL    L5797   
       INX            
       BIT    $96     
       BPL    L57AB   
       INX            
L57AB: LDA    INPT4,X 
       BMI    L579F   
       LDX    $DC     
       BMI    L579F   
       LDA    #$58    
       LSR            
       ASL            
       STA    $9D,X   
       LDA    L5F9E   
       STA    $B5,X   
       LDA    $AB     
       LDY    #$04    
       JSR    L5CAF   
       STA    $A5,X   
       LDA    $B3     
       AND    #$F8    
       STA    $AD,X   
       LDA    #$3D    
       STA    $B3     
L57D1: LDY    #$02    
       JMP    L5AE5   
L57D6: RTS            

L57D7: CPX    #$02    
       BEQ    L57D6   
       CPX    #$04    
       BEQ    L57D6   
       LDA    #$03    
       AND    $CC     
       TAX            
       BEQ    L57E7   
       DEX            
L57E7: LDA    $A0,X   
       BEQ    L57EE   
       JMP    L5899   
L57EE: LDA    $8B     
       BEQ    L57D6   
       LDA    $8D     
       BIT    L5DEE   
       BEQ    L5843   
       TXA            
       BNE    L57D6   
       LDA    #$FF    
       STA    $B1     
       LDA    $B0,X   
       ORA    #$02    
       STA    $B0,X   
       LDA    $CC     
       AND    #$F0    
       STA    $DB     
       LDA    $98     
       BPL    L5827   
       LDA    #$80    
       STA    $AA     
       LDA    $CC     
       LSR            
       LSR            
       AND    #$03    
       BNE    L581E   
       LDA    #$03    
L581E: TAY            
       LDA    L5FCD,Y 
       LDY    L5FA9   
       BNE    L5839   
L5827: LDA    #$00    
       STA    $AA     
       LDA    $CC     
       LSR            
       LSR            
       LSR            
       AND    #$03    
       TAY            
       LDA    L5FCA,Y 
       LDY    L5FA8   
L5839: ORA    $DB     
       STA    $A8     
       STY    $A9     
       LDA    #$03    
       BNE    L5885   
L5843: CPX    #$02    
       BNE    L585A   
       AND    #$01    
       ASL            
       ASL            
       TAY            
       LDA    L5DDF,Y 
       STA    $B2     
       LDA    #$1F    
       CMP    $CC     
       LDY    L5FAA   
       BCS    L585D   
L585A: LDY    L5FA3,X 
L585D: CPX    #$01    
       BNE    L586C   
       LDA    #$B0    
       BIT    $98     
       BPL    L5869   
       LDA    #$E9    
L5869: JMP    L5874   
L586C: LDA    #$E9    
       BIT    $98     
       BPL    L5874   
       LDA    #$B0    
L5874: STA    $A8,X   
       LDA    $B0,X   
       AND    #$F8    
       STA    $B0,X   
       LDA    L5FD1,X 
       ASL    $8D     
       ADC    $8D     
       LSR    $8D     
L5885: LSR            
       ASL            
       STA    $A0,X   
       STY    $B8,X   
       LDA    $B0,X   
       CPY    L5FAA   
       BNE    L5894   
       LDA    #$78    
L5894: STA    $B0,X   
       DEC    $8B     
       RTS            

L5899: LDA    $B8,X   
       CMP    L5FA8   
       BCS    L58DC   
       LDA    $9C     
       BNE    L58DC   
       LDY    L5F9C,X 
       STY    $B4     
       TXA            
       BEQ    L58DC   
       LDA    $B0,X   
       TAY            
       AND    #$F8    
       STA    $AC     
       TYA            
       AND    #$07    
       LSR            
       BIT    $D0     
       BNE    L58BF   
       LDA    $D0     
       BNE    L58DC   
L58BF: LDA    $A0,X   
       ADC    #$03    
       LSR            
       ASL            
       STA    $9C     
       LDA    $A8,X   
L58C9: LDY    $D0     
       BEQ    L58DA   
       TAX            
       TYA            
L58CF: INX            
       INX            
       DEY            
       BNE    L58CF   
       ASL            
       TAY            
       TXA            
       JSR    L5CAF   
L58DA: STA    $A4     
L58DC: RTS            

L58DD: LDY    #$00    
       STY    $DC     
       LDA    $99     
       STA    $D5     
       LDA    $8D     
       LSR            
       LSR            
       BCC    L5950   
       INC    $DC     
L58ED: LDX    #$04    
       JSR    L5A95   
       BCC    L5950   
       BIT    $A9     
       BMI    L5904   
       INC    $A0     
       LDA    $A0     
       CMP    #$1C    
       BCC    L5906   
       ROR    $A9     
       BMI    L5906   
L5904: DEC    $A0     
L5906: LDY    $B8     
       LDA    $A0     
       BPL    L5910   
       LDA    #$00    
       STA    $A0     
L5910: CMP    #$0A    
       BEQ    L5918   
       CMP    #$10    
       BNE    L591F   
L5918: INY            
       BIT    $A9     
       BPL    L591F   
       DEY            
       DEY            
L591F: STY    $B8     
       BCC    L5950   
       LDA    $B1     
       AND    $A0     
       BEQ    L5950   
       LDX    $9C     
       BNE    L5950   
       LDA    $A0     
       ADC    L5FAD,Y 
       LSR            
       ASL            
       STA    $9C     
       LDY    L5F9F   
       STY    $B4     
       LDA    $B0     
       LDX    $A8     
       BIT    L5DEE   
       BEQ    L594A   
       BIT    $CC     
       BVC    L594A   
       INX            
       INX            
L594A: STX    $A4     
       AND    #$F8    
       STA    $AC     
L5950: LDX    #$03    
       LDY    #$00    
L5954: JSR    L5A95   
       BCC    L596F   
       DEC    $9C,X   
       DEC    $9C,X   
       LDA    $9C,X   
       CMP    L5FD3   
       BNE    L5968   
       DEC    $B4,X   
       BNE    L596F   
L5968: CMP    L5FD2   
       BNE    L596F   
       DEC    $B4,X   
L596F: DEX            
       BNE    L5954   
       JSR    L5A95   
       BCC    L598A   
       INC    $9C     
       INC    $9C     
       LDA    $9C     
       CMP    L5FD3   
       BNE    L5984   
       INC    $B4     
L5984: CMP    #$67    
       BNE    L598A   
       STY    $9C     
L598A: DEC    $DC     
       BMI    L5991   
       JMP    L58ED   
L5991: LDA    $98     
       CLC            
       ROR            
       ROR            
       ROR            
       STA    $DB     
       LDA    $9A     
       STA    $D5     
       LDA    $8D     
       AND    #$02    
       BEQ    L59F3   
       LDX    #$04    
       LDA    $A0     
       BEQ    L59F1   
       LSR            
       LSR            
       STA    $DC     
       LDA    #$01    
       STA    $DD     
       LDA    $8D     
       CLC            
       ADC    #$03    
       ADC    $DD     
       STA    $DD     
       LDA    #$00    
L59BC: LSR    $DD     
       BCC    L59C5   
       CLC            
       ADC    $DC     
       BCS    L59CD   
L59C5: LDY    $DD     
       BEQ    L59DC   
       ASL    $DC     
       BCC    L59BC   
L59CD: PHA            
       LDY    $DD     
       INY            
       INY            
       LDA    $A8     
       BIT    $AA     
       JSR    L5CAD   
       STA    $A8     
       PLA            
L59DC: TAY            
       BEQ    L59F1   
       LDY    #$01    
       JSR    L5A9A   
       LDY    #$04    
       BCC    L59F1   
       LDA    $A8     
       BIT    $AA     
       JSR    L5CAD   
       STA    $A8     
L59F1: DEX            
       BIT    $06A2   
       LDY    #$02    
       STY    $D7     
       DEY            
L59FA: LDA    $9C,X   
       BEQ    L5A45   
       LSR            
       STA    $DC     
       LSR            
       STA    $DD     
       CLC            
       LDA    #$00    
       BIT    $DB     
       BPL    L5A0D   
       ADC    $DC     
L5A0D: BVC    L5A11   
       ADC    $DD     
L5A11: ADC    $D7     
       BEQ    L5A3D   
       JSR    L5A9A   
       BCC    L5A3D   
       LDY    #$02    
       CPX    #$05    
       BNE    L5A35   
       LDA    $98     
       PHA            
       EOR    #$80    
       STA    $98     
       LDA    $A9     
       JSR    L5CAB   
       INY            
       STA    $A9     
       PLA            
       STA    $98     
       JMP    L5A3D   
L5A35: LDA    $A4,X   
       JSR    L5CAB   
       INY            
       STA    $A4,X   
L5A3D: CPX    #$04    
       BNE    L5A45   
       DEC    $D7     
       DEC    $D7     
L5A45: DEX            
       BPL    L59FA   
       BIT    $DB     
       BVC    L5A53   
       LDA    $CD     
       BNE    L5A53   
       JSR    L5AC9   
L5A53: BIT    $DB     
       BPL    L5A5F   
       LDA    $CD     
       ASL            
       BNE    L5A5F   
       JSR    L5AC9   
L5A5F: LDA    #$02    
       TAX            
       STA    $D6     
       AND    $8D     
       BNE    L5A94   
L5A68: LDA    $8B     
       BEQ    L5A94   
       CPX    #$01    
       BNE    L5A77   
       LDA    $98     
       PHA            
       EOR    #$80    
       STA    $98     
L5A77: LDA    $A8,X   
       LDY    $B0,X   
       JSR    L5CE6   
       LDX    $D6     
       BCC    L5A88   
       STA    $B0,X   
       STY    $A8,X   
       DEC    $8B     
L5A88: CPX    #$01    
       BNE    L5A8F   
       PLA            
       STA    $98     
L5A8F: DEX            
       STX    $D6     
       BPL    L5A68   
L5A94: RTS            

L5A95: LDA    $9C,X   
       ASL            
       BEQ    L5AC7   
L5A9A: ASL            
       BCS    L5AAC   
       STA    $D6     
       LDA    #$00    
       SEC            
L5AA2: ROL            
       ASL    $D6     
       BCC    L5AA2   
       AND    $CD     
       BNE    L5AB8   
       CLC            
L5AAC: LDA    L5DED,X 
       EOR    #$FF    
       AND.wy $0099,Y 
       STA.wy $0099,Y 
       RTS            

L5AB8: LDA    L5DED,X 
       BIT    $D5     
       BNE    L5AC7   
       ORA.wy $0099,Y 
       STA.wy $0099,Y 
       SEC            
       RTS            

L5AC7: CLC            
       RTS            

L5AC9: LDY    #$01    
       LDA    $CF     
       JSR    L5CAB   
       BIT    $98     
       BPL    L5ADC   
       CMP    #$CA    
       BNE    L5AE2   
       LDA    #$60    
       BNE    L5AE2   
L5ADC: CMP    #$70    
       BNE    L5AE2   
       LDA    #$DA    
L5AE2: STA    $CF     
       RTS            

L5AE5: LDX    #$00    
       BIT    $02A2   
       LDA    L5DA9,Y 
       STA    $80,X   
       LDA    #$5E    
       STA    $81,X   
       LDA    #$00    
       STA    $84,X   
       RTS            

L5AF8: LDX    #$02    
       JSR    L5AFF   
       LDX    #$00    
L5AFF: DEC    $84,X   
       BPL    L5B29   
L5B03: LDA    ($80,X) 
       TAY            
       BNE    L5B0F   
       TXA            
       LSR            
       TAX            
       TYA            
       STA    AUDV0,X 
       RTS            

L5B0F: LSR            
       LSR            
       LSR            
       LSR            
       AND    #$06    
       BNE    L5B2A   
       TYA            
       AND    #$1F    
       STA    $85,X   
L5B1C: INC    $80,X   
       BNE    L5B22   
       INC    $81,X   
L5B22: TYA            
       BMI    L5B03   
       LDA    $85,X   
       STA    $84,X   
L5B29: RTS            

L5B2A: STX    $DB     
       TAX            
       LDA    $DB     
       BEQ    L5B32   
       INX            
L5B32: TYA            
       STA    RESM1,X 
       LDX    $DB     
       JMP    L5B1C   
L5B3A: LDX    #$02    
       LDY    #$0A    
L5B3E: LDA    $DE,X   
       AND    #$0F    
       STA.wy $00D2,Y 
       LDA    $DE,X   
       LSR            
       LSR            
       LSR            
       LSR            
       DEY            
       DEY            
       STA.wy $00D2,Y 
       DEY            
       DEY            
       DEX            
       BPL    L5B3E   
       STX    $E1     
       INX            
L5B58: LDY    $D2,X   
       BNE    L5B68   
       LDA    $E1     
       BEQ    L5B6C   
       CPX    #$0A    
       BEQ    L5B6C   
       LDY    #$0A    
       BNE    L5B6C   
L5B68: LDA    #$00    
       STA    $E1     
L5B6C: LDA    L5DAF,Y 
       STA    $D2,X   
       LDA    #$5E    
       STA    $D3,X   
       INX            
       INX            
       CPX    #$0C    
       BNE    L5B58   
       RTS            

L5B7C: STA    WSYNC   
       LDA    $C7     
       STA    COLUBK  
       LDA    $C5     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       STA    WSYNC   
L5B92: DEY            
       BNE    L5B92   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STY    HMP1    
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$08    
       STA    $DF     
L5BAE: LDY    $DF     
       LDA    ($D2),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($D4),Y 
       STA    GRP1    
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    ($D8),Y 
       STA    $DE     
       LDA    ($DA),Y 
       TAX            
       LDA    ($DC),Y 
       TAY            
       LDA    $DE     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $DF     
       BPL    L5BAE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       RTS            

L5BE1: LDA    #$00    
       STA    $8D     
       STA    $94     
       LDX    #$03    
L5BE9: STA    $87,X   
       STA    $8E,X   
       DEX            
       BNE    L5BE9   
       INX            
       STX    $97     
       STX    $CE     
L5BF5: LDY    #$03    
       BIT    L5DEE   
       BEQ    L5BFE   
       LDY    #$07    
L5BFE: STY    $DB     
       LDY    #$04    
       BIT    L5DED   
       BEQ    L5C09   
       LDY    #$09    
L5C09: STY    $DC     
       AND    #$03    
       ASL            
       ASL            
       ADC    #$03    
       STA    $DD     
       LDX    #$04    
       BNE    L5C4B   
L5C17: LDA    #$00    
       STA    $9C,X   
       LDY    $DB     
       CPX    #$03    
       BEQ    L5C2F   
       LDA    $8D     
       ASL            
       BIT    L5DEF   
       BNE    L5C2F   
       CLC            
       ADC    L5FD1,Y 
       BNE    L5C32   
L5C2F: LDA    L5FD1,Y 
L5C32: LSR            
       ASL            
       STA    $A0,X   
       LDA    L5FA3,X 
       STA    $B8,X   
       LDA    L5DF5,X 
       STA    $A8,X   
       LDY    $DD     
       LDA    L5DDD,Y 
       STA    $B0,X   
       DEC    $DB     
       DEC    $DD     
L5C4B: LDY    $DC     
       LDA    L5FE9,Y 
       STA    $C5,X   
       DEC    $DC     
       DEX            
       BPL    L5C17   
       LDA    #$04    
       STA    $CF     
       RTS            

L5C5C: SED            
       CLC            
       LDY    $89     
       ADC    $8A     
       STA    $8A     
       LDA    #$00    
L5C66: ADC    $89     
       STA    $89     
       LDA    #$00    
       ADC    $88     
       STA    $88     
       TYA            
       EOR    $89     
       AND    #$F0    
       BEQ    L5C83   
       LDA    $89     
       AND    #$F0    
       BEQ    L5C81   
       CMP    #$50    
       BNE    L5C83   
L5C81: INC    $8E     
L5C83: CLD            
       RTS            

L5C85: STA    HMP0,X  
       AND    #$0F    
       CLC            
       ADC    #$03    
       TAY            
       STA    WSYNC   
L5C8F: DEY            
       BPL    L5C8F   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L5C99: .byte $95,$20,$29,$0F,$18,$69,$03,$A8,$85,$02,$88,$10,$FD,$95,$10,$85
       .byte $02,$60
L5CAB: BIT    $98     
L5CAD: BPL    L5CBE   
L5CAF: SEC            
       SBC    #$10    
       BMI    L5CBA   
       CMP    #$70    
       BCC    L5CBA   
       ADC    #$F0    
L5CBA: DEY            
       BNE    L5CAF   
       RTS            

L5CBE: CLC            
       ADC    #$10    
       BPL    L5CC9   
       CMP    #$90    
       BCS    L5CC9   
       SBC    #$F0    
L5CC9: DEY            
       BNE    L5CBE   
       RTS            

L5CCD: PHA            
       AND    #$0F    
       STA    $DC     
       ASL            
       ASL            
       ASL            
       ASL            
       SEC            
       SBC    $DC     
       STA    $DC     
       PLA            
       EOR    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    $DC     
       RTS            

L5CE6: STA    $DE     
       JSR    L5CCD   
       STA    $DD     
       STY    $DC     
       BIT    $98     
       BPL    L5D15   
       SEC            
       SBC    #$2C    
       AND    #$FC    
       BNE    L5D69   
       LDA    #$04    
       BIT    $DC     
       BNE    L5D69   
       TAX            
       LSR            
       BIT    $DC     
       BNE    L5D07   
       TAX            
L5D07: LDY    $DE     
       DEY            
       DEY            
       TYA            
       LDY    #$02    
       JSR    L5CBE   
       TAY            
       TXA            
       BNE    L5D35   
L5D15: SEC            
       SBC    #$6C    
       AND    #$FC    
       BNE    L5D24   
       LDA    #$02    
       BIT    $DC     
       BNE    L5D69   
       BEQ    L5D33   
L5D24: LDA    $DD     
       SEC            
       SBC    #$4C    
       AND    #$FC    
       BNE    L5D69   
       LDA    #$04    
       BIT    $DC     
       BNE    L5D69   
L5D33: LDY    $DE     
L5D35: ORA    $DC     
       SEC            
       RTS            

L5D39: LDA    #$04    
       STA    $DB     
       TYA            
       LDY    #$00    
       BIT    $98     
       BMI    L5D6B   
L5D44: BIT    $DB     
       BEQ    L5D63   
       AND    #$FA    
       INY            
       INY            
       INX            
       INX            
       LSR    $DB     
       BIT    $DB     
       BNE    L5D5A   
L5D54: INY            
       INY            
       INX            
       INX            
       AND    #$FC    
L5D5A: PHA            
       TXA            
       JSR    L5CAF   
       TAX            
       PLA            
       SEC            
       RTS            

L5D63: LSR    $DB     
       BIT    $DB     
       BNE    L5D54   
L5D69: CLC            
       RTS            

L5D6B: BIT    $DB     
       BNE    L5D96   
       LSR    $DB     
       BIT    $DB     
       BNE    L5D9B   
       CLC            
       RTS            

L5D77: JSR    L5CCD   
       SEC            
       SBC    #$07    
       STA    $DD     
       TXA            
       JSR    L5CCD   
       SEC            
       SBC    $DD     
       STA    $DD     
       AND    #$E0    
       BEQ    L5D9F   
       LDA    $DD     
       CLC            
       ADC    #$20    
       AND    #$E0    
       BEQ    L5D9A   
       TYA            
L5D96: AND    #$FA    
       SEC            
       RTS            

L5D9A: TYA            
L5D9B: AND    #$FC    
       SEC            
       RTS            

L5D9F: LDA    #$04    
       STA    $DB     
       TYA            
       LDY    #$00    
       JMP    L5D44   
L5DA9: .byte $AB,$97,$AC,$C1,$D6,$E0
L5DAF: .byte $00,$09,$12,$1B,$24,$2D,$36,$3F,$48,$51,$73
L5DBA: .byte $5A,$63,$6C,$7C,$85,$8E
L5DC0: .byte $20,$1F,$1E,$20,$20,$1F,$00,$03,$08,$00,$0E,$12,$18,$24,$0B,$2E
       .byte $33,$0B,$3F,$44,$50,$58,$5D,$62,$67,$6C,$78,$84,$90
L5DDD: .byte $26,$2E
L5DDF: .byte $36,$3D,$16,$0E,$06,$1D,$48,$56,$58,$1D,$40,$38,$30,$1D
L5DED: .byte $01
L5DEE: .byte $02
L5DEF: .byte $04,$08,$10,$20,$40,$80
L5DF5: .byte $03,$B1,$E4,$75,$00,$00,$00,$00,$00,$00,$00,$7C,$64,$64,$64,$64
       .byte $64,$64,$64,$7C,$18,$18,$18,$18,$18,$18,$18,$18,$38,$7C,$4C,$4C
       .byte $40,$3C,$0C,$4C,$4C,$7C,$7C,$4C,$4C,$0C,$38,$0C,$4C,$4C,$7C,$0C
       .byte $0C,$7E,$4C,$4C,$4C,$4C,$4C,$4C,$7C,$4C,$4C,$0C,$0C,$7C,$40,$4C
       .byte $7C,$7C,$4C,$4C,$4C,$7C,$40,$4C,$4C,$7C,$30,$30,$30,$18,$18,$0C
       .byte $4C,$4C,$7C,$7C,$4C,$4C,$4C,$7C,$64,$64,$64,$7C,$7C,$4C,$4C,$0C
       .byte $7C,$4C,$4C,$4C,$7C,$7C,$82,$BA,$A2,$BA,$82,$7C,$00,$00,$4B,$4A
       .byte $52,$63,$50,$48,$48,$00,$00,$AB,$AA,$BB,$A0,$03,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$AA,$AA,$BE,$A0,$80,$00,$00,$00,$00
       .byte $91,$91,$97,$15,$97,$00,$00,$00,$00,$77,$51,$77,$51,$77,$00,$00
       .byte $00,$00,$0C,$25,$5F,$6F,$5D,$5F,$AC,$4B,$A5,$5F,$5D,$5F,$AC,$4B
       .byte $86,$4C,$4B,$88,$A5,$5F,$00,$28,$80,$E2,$42,$E4,$48,$E5,$4A,$E3
       .byte $4E,$6E,$48,$68,$4C,$6A,$66,$4E,$68,$62,$64,$00,$04,$28,$E9,$55
       .byte $EC,$56,$EF,$57,$EF,$58,$86,$57,$6C,$68,$66,$65,$64,$63,$62,$61
       .byte $00,$05,$2C,$EF,$53,$51,$53,$51,$53,$60,$00,$02,$A4,$D7,$6F,$60
       .byte $6F,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$10,$10,$38,$7C
       .byte $38,$10,$10,$7C,$FE,$38,$10,$38,$10,$7C,$3E,$18,$08,$7F,$FF,$FC
       .byte $58,$10,$10,$3E,$7F,$FF,$FF,$1E,$0C,$08,$08,$08,$08,$1C,$1C,$7C
       .byte $FE,$FF,$FF,$78,$30,$10,$10,$10,$10,$20,$30,$7E,$18,$08,$20,$20
       .byte $20,$20,$60,$78,$7F,$4F,$31,$20,$20,$20,$04,$0C,$7E,$18,$10,$04
       .byte $04,$04,$04,$0C,$1E,$FE,$F2,$8C,$04,$04,$04
L5F50: .byte $00,$FF,$FF,$FE,$7E,$1C,$18,$08,$1C,$2A,$08,$00,$00,$5D,$2A,$41
       .byte $2A,$41,$49,$00,$55,$00,$49,$22,$00,$41,$00,$22,$FF,$FF,$7E,$3C
       .byte $7E,$5A,$99,$24,$00,$24,$00,$00,$7E,$BD,$3C,$7E,$99,$2C,$52,$28
       .byte $95,$28,$95,$28,$7E,$3C,$7E,$BD,$54,$AA,$54,$08,$A5,$00,$24,$00
       .byte $89,$42,$00,$A5,$00,$81,$00,$81,$24,$00,$42,$91
L5F9C: .byte $00,$01
L5F9E: .byte $02
L5F9F: .byte $03,$04
L5FA1: .byte $05
L5FA2: .byte $06
L5FA3: .byte $09,$0A,$0B,$0C
L5FA7: .byte $0D
L5FA8: .byte $0E
L5FA9: .byte $11
L5FAA: .byte $14
L5FAB: .byte $15
L5FAC: .byte $19
L5FAD: .byte $01,$02,$03,$02,$02,$04,$02,$04,$05,$01,$03,$05,$09,$09,$02,$04
       .byte $0B,$02,$04,$0B,$07,$04,$04,$04,$04,$0B,$0B,$0B,$0B
L5FCA: .byte $05,$06,$07
L5FCD: .byte $77,$04,$03,$81
L5FD1: .byte $04
L5FD2: .byte $10
L5FD3: .byte $28,$5E,$00,$00,$00,$5E
L5FD9: .byte $03,$02,$01,$28,$72,$B2,$52,$26,$D3,$D2,$D1,$D7,$D6,$D5,$42,$E5
L5FE9: .byte $0F,$96,$30,$28,$E3,$0F,$00,$30,$28
L5FF2: .byte $90
L5FF3: .byte $30,$20,$10,$80,$70,$60,$00,$00,$50,$00,$50,$00,$50
