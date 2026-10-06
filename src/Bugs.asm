; Disassembly of roms/Bugs.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Bugs.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
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
RESM0   =  $12
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
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       DEX            
       BNE    LF005   
       LDA    #$FA    
       STA    $B3     
       LDA    #$10    
       STA    SWBCNT  
       STA    $BB     
LF015: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDX    #$FF    
       TXS            
       JSR    LF25E   
LF038: LDA    INTIM   
       BNE    LF038   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$00    
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    PF1     
       STA    PF2     
       STA    $8F     
       STA    $90     
       STA    $91     
       TAX            
       LDY    #$04    
       LDA    $8C     
       STA    WSYNC   
       STA    COLUP1  
LF05E: LDA    ($F0),Y 
       AND    #$0F    
       STA    $C1     
       LDA    ($EE),Y 
       AND    #$F0    
       ORA    $C1     
       STX    PF1     
       STA    $9A     
       LDA    $91     
       STA    PF2     
       LDA    ($F4),Y 
       AND    #$F0    
       STA    $C1     
       LDA    ($F2),Y 
       AND    #$0F    
       ORA    $C1     
       STA    $C1     
       LDA    $8F     
       STA    PF1     
       LDA    $90     
       STA    PF2     
       LDA    ($E8),Y 
       AND    #$0F    
       STA    $8F     
       LDA    ($E6),Y 
       AND    #$F0    
       ORA    $8F     
       STA    $8F     
       LDA    ($EC),Y 
       STX    PF1     
       AND    #$F0    
       STA    $90     
       LDX    $9A     
       LDA    $91     
       STA    PF2     
       LDA    $C1     
       STA    $91     
       STA    WSYNC   
       LDA    ($EA),Y 
       AND    #$0F    
       ORA    $90     
       STA    $90     
       STA    PF2     
       LDA    $8F     
       STA    PF1     
       DEY            
       BPL    LF05E   
       LDY    #$04    
LF0BD: DEY            
       BNE    LF0BD   
       STX    PF1     
       NOP            
       LDA    $91     
       STA    PF2     
       STA    WSYNC   
       LDA    $8F     
       STA    PF1     
       LDA    $90     
       STA    PF2     
       LDY    #$07    
LF0D3: DEY            
       BNE    LF0D3   
       STX    PF1     
       NOP            
       LDA    $91     
       STA    PF2     
       STA    WSYNC   
       LDA    $8B     
       STA    COLUP0  
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    COLUPF  
       STA    HMCLR   
       STA    CXCLR   
       LDA    $C8     
       BEQ    LF0F6   
       JMP    LFB00   
LF0F6: LDA    $D7     
       BEQ    LF0FE   
       LDA    #$02    
       BNE    LF100   
LF0FE: LDA    #$00    
LF100: STA    WSYNC   
       STA    ENABL   
       LDA    $F7     
       NOP            
       STA    HMP1    
       AND    #$0F    
       TAY            
LF10C: DEY            
       BPL    LF10C   
       STA    RESP1   
       STA    WSYNC   
       LDA    $F6     
       LDA    $F6     
       NOP            
       STA    HMP0    
       AND    #$0F    
       TAY            
LF11D: DEY            
       BPL    LF11D   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B4     
       SEC            
       SBC    #$5C    
       STA    $C1     
       LDX    #$06    
LF12F: DEX            
       BNE    LF12F   
       STA    HMCLR   
       LDY    #$00    
LF136: LDA    ($B6),Y 
       TAX            
       STA    HMM0    
       LDA    ($B2),Y 
       INC    $C1     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       BMI    LF14B   
       LDA    ($B4),Y 
       STA    GRP1    
LF14B: LDA    ($B9),Y 
       AND    #$F0    
       STA    NUSIZ0  
       STX    ENAM0   
       LDX    $AD     
       LDA    COLUPF,X
       BMI    LF15B   
       INC    $95     
LF15B: INY            
       CPY    #$5A    
       BNE    LF136   
       LDA    ($B6),Y 
       STA    HMM1    
       LDX    $D7     
       BEQ    LF16A   
       LDX    $80     
LF16A: LDA    ($B2),Y 
       STA    WSYNC   
       STX    COLUPF  
       STA    GRP0    
       LDA    ($B4),Y 
       STA    GRP1    
       LDA    ($B9),Y 
       AND    #$F0    
       STA    NUSIZ0  
       LDX    $AD     
       LDA    COLUPF,X
       BMI    LF184   
       INC    $95     
LF184: STA    WSYNC   
       STA    HMCLR   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       LDA    WSYNC   
       STA    $E3     
       LDA    RSYNC   
       STA    $E4     
       LDA    NUSIZ0  
       STA    $E5     
       STA    CXCLR   
       STA    WSYNC   
       LDY    #$00    
       STY    COLUBK  
       NOP            
       LDA    $BD     
       STA    HMP1    
       AND    #$0F    
       TAY            
LF1AC: DEY            
       BPL    LF1AC   
       STA    RESP1   
       LDY    #$00    
       STA    WSYNC   
       LDA    $AA     
       LDA    $AA     
       LDA    $AA     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF1C0: DEY            
       BPL    LF1C0   
       STA    RESP0   
       LDY    #$00    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8E     
       BEQ    LF1D8   
LF1CF: STA    WSYNC   
       INY            
       CPY    #$0B    
       BNE    LF1CF   
       BEQ    LF20D   
LF1D8: LDA    $DA     
       STA    COLUP1  
       BIT    $B8     
       BMI    LF1E4   
       LDA    #$F0    
       STA    $96     
LF1E4: BIT    $B8     
       BVC    LF1EC   
       LDX    #$02    
       BNE    LF1EE   
LF1EC: LDX    #$00    
LF1EE: STA    WSYNC   
       STA    HMCLR   
       STX    ENAM1   
LF1F4: LDA    LFFE0,Y 
       STA    GRP0    
       LDA    ($96),Y 
       STA    GRP1    
       LDA    LFA40,Y 
       STA    NUSIZ1  
       LDX    $AD     
       LDA    COLUPF,X
       BMI    LF20A   
       INC    $95     
LF20A: INY            
       CPY    #$0A    
LF20D: STA    WSYNC   
       BNE    LF1F4   
       LDA    #$00    
       STA    $99     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    $8E     
LF21F: LDA    $C8     
       BEQ    LF226   
       JMP    LFA00   
LF226: LDX    #$05    
       LDY    $8D     
LF22A: LDA    LFCF0,X 
       STA    $C1     
       LDA    LFB50,Y 
       STY    $9A     
LF234: STA    WSYNC   
       STA    COLUBK  
       LDA    $D9     
       EOR    $99     
       AND    #$FC    
       BNE    LF242   
       LDA    #$F2    
LF242: STA    ENABL   
       LDY    $AD     
       LDA.wy $0008,Y 
       BMI    LF24D   
       INC    $95     
LF24D: LDA    $A9     
       INC    $99     
       DEC    $C1     
       BNE    LF234   
       LDY    $9A     
       INY            
       DEX            
       BPL    LF22A   
       JMP    LF015   
LF25E: INC    $BE     
       BNE    LF26D   
       INC    $BF     
       LDA    $BF     
       CMP    #$31    
       BNE    LF26D   
       JMP    LF9C0   
LF26D: LDA    #$01    
       BIT    SWCHB   
       BNE    LF277   
       JMP    LF4DC   
LF277: LDA    $BB     
       BEQ    LF2F4   
       LDA    $A6     
       BNE    LF28B   
       LDA    #$02    
       BIT    SWCHB   
       BEQ    LF288   
       STA    $A6     
LF288: JMP    LF2A8   
LF28B: LDA    #$02    
       BIT    SWCHB   
       BNE    LF288   
       LDA    #$18    
       STA    $E6     
       LDA    #$00    
       STA    $EE     
       STA    $A6     
       LDA    #$01    
       EOR    $A4     
       STA    $A4     
       BEQ    LF2A8   
       LDA    #$18    
       STA    $EE     
LF2A8: LDA    #$0F    
       AND    $BB     
       BNE    LF2B0   
       BEQ    LF302   
LF2B0: LDA    $A4     
       BEQ    LF2C1   
       LDA    $AD     
       BEQ    LF2C1   
       LDA    #$40    
       BIT    SWCHA   
       BEQ    LF2CC   
       BNE    LF2C6   
LF2C1: LDA    SWCHA   
       BPL    LF2CC   
LF2C6: LDA    #$FF    
       STA    $A5     
       BNE    LF302   
LF2CC: LDA    $A5     
       BNE    LF2D2   
       BEQ    LF302   
LF2D2: LDA    #$00    
       STA    $A5     
       STA    $BB     
       STA    $BC     
       LDX    $AD     
       LDA    $A7,X   
       STA    CTRLPF  
       STA    $A3     
       LDA    #$08    
       STA    AUDV1   
       LDA    $9E,X   
       STA    $9D     
       LDY    $AB,X   
       LDA    LFF64,Y 
       STA    $A9     
       JMP    LF531   
LF2F4: LDA    $BC     
       BEQ    LF31E   
       LDA    $E6     
       ORA    $EE     
       BNE    LF2B0   
       LDA    #$F0    
       STA    $BB     
LF302: LDX    #$02    
       LDA    $F8     
       JSR    LFBD1   
       STA    WSYNC   
       STA    HMCLR   
       LDA    $DE     
       BEQ    LF314   
       JMP    LF4C8   
LF314: LDA    $80     
       BNE    LF31B   
       JMP    LF4DC   
LF31B: JMP    LF58E   
LF31E: LDA    $C8     
       BEQ    LF325   
       JMP    LF7DC   
LF325: LDA    $A3     
       BEQ    LF32C   
       JMP    LF7DC   
LF32C: LDA    $E0     
       CMP    #$08    
       BPL    LF335   
       JMP    LF75B   
LF335: LDA    $D7     
       BNE    LF33C   
       JMP    LF3FD   
LF33C: LDX    #$02    
LF33E: LDA    #$40    
       AND    $E3,X   
       BEQ    LF39A   
       LDA    #$05    
       STA    $DF     
       LDA    #$08    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$10    
       STA    AUDF1   
       TXA            
       ASL            
       TAX            
       LDA    $9D     
       BPL    LF365   
       LDA    #$00    
       STA    $B2,X   
       TXA            
       LSR            
       TAX            
       JMP    LF39A   
LF365: LDA    $B2,X   
       LDY    $AD     
       SBC.wy $00A0,Y 
       BPL    LF370   
       LDA    #$00    
LF370: STA    $B2,X   
       TXA            
       LSR            
       TAX            
       STX    $C1     
       LDY    #$01    
       STY    $BE     
       STY    $BF     
       JSR    LFFC0   
       LDX    $C1     
       DEC    $9D     
       JSR    LFABE   
       AND    #$7F    
       STA    $98,X   
       AND    #$70    
       BNE    LF393   
       ADC    #$40    
       STA    $98,X   
LF393: LDA    $98,X   
       JSR    LFBE5   
       STA    $F6,X   
LF39A: DEX            
       BPL    LF33E   
       BMI    LF3FD   
LF39F: LDA    #$FF    
       STA    $A3     
       LDY    #$09    
       JSR    LFFC0   
       LDA    #$00    
       STA    $DA     
       STA    $DB     
       STA    $DC     
       STA    $B2     
       STA    $B4     
       STA    $B6     
       STA    $D7     
       LDA    #$20    
       STA    $9B     
       LDA    #$1F    
       STA    $9C     
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$00    
       STA    $B8     
       STA    $E2     
       STA    $E1     
       STA    $E0     
       LDA    #$1F    
       STA    $A2     
       LDX    $AD     
       LDA    $A0,X   
       CMP    #$0A    
       BMI    LF3E4   
       CMP    #$10    
       BMI    LF3E2   
       DEC    $A0,X   
LF3E2: DEC    $A0,X   
LF3E4: LDY    $AB,X   
       CPY    #$05    
       BEQ    LF3ED   
       INY            
       BNE    LF3EF   
LF3ED: LDY    #$01    
LF3EF: STY    $AB,X   
       CLC            
       LDA    #$01    
       ADC    $9E,X   
       BMI    LF3FC   
       STA    $9E,X   
       STA    $9D     
LF3FC: RTS            

LF3FD: LDX    #$02    
       LDA    $F8     
       JSR    LFBD1   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$5F    
       CMP    $B2     
       BMI    LF416   
       CMP    $B4     
       BMI    LF416   
       CMP    $B6     
       BPL    LF419   
LF416: JMP    LF48D   
LF419: LDA    $9D     
       BPL    LF421   
       LDA    $B2     
       BEQ    LF43F   
LF421: INC    $C2     
       LDA    $C2     
       CMP    #$05    
       BNE    LF43F   
       LDA    #$00    
       STA    $C2     
       INC    $B2     
       LDA    #$01    
       AND    $B2     
       BEQ    LF43B   
       LDA    #$FC    
       STA    $B3     
       BNE    LF43F   
LF43B: LDA    #$FD    
       STA    $B3     
LF43F: LDA    $9D     
       BPL    LF447   
       LDA    $B4     
       BEQ    LF465   
LF447: INC    $C4     
       LDA    $C4     
       CMP    #$05    
       BNE    LF465   
       LDA    #$00    
       STA    $C4     
       INC    $B4     
       LDA    #$01    
       AND    $B4     
       BEQ    LF461   
       LDA    #$FA    
       STA    $B5     
       BNE    LF465   
LF461: LDA    #$FB    
       STA    $B5     
LF465: LDA    $9D     
       BPL    LF46D   
       LDA    $B6     
       BEQ    LF482   
LF46D: INC    $C6     
       LDA    $C6     
       CMP    #$05    
       BNE    LF47B   
       LDA    #$00    
       STA    $C6     
       INC    $B6     
LF47B: LDA    $B6     
       STA    $B9     
LF47F: JMP    LF5C6   
LF482: LDA    $B2     
       ORA    $B4     
       ORA    $B6     
       BNE    LF47F   
       JMP    LF39F   
LF48D: LDA    #$FF    
       STA    $BC     
       STA    $D9     
       LDA    #$0F    
       STA    AUDV1   
       STA    $DE     
       LDA    #$0F    
       STA    AUDC1   
       LDA    #$1F    
       STA    AUDF1   
       LDA    #$00    
       STA    $D7     
       STA    $DB     
       STA    AUDV0   
       LDX    $AD     
       BNE    LF4B6   
       SEC            
       LDA    $E6     
       SBC    #$08    
       STA    $E6     
       BPL    LF4BD   
LF4B6: LDA    $EE     
       SEC            
       SBC    #$08    
       STA    $EE     
LF4BD: LDA    $A4     
       BNE    LF4C2   
       RTS            

LF4C2: TXA            
       EOR    #$01    
       STA    $AD     
       RTS            

LF4C8: INC    $DB     
       LDA    $DB     
       CMP    #$02    
       BEQ    LF4D1   
       RTS            

LF4D1: LDA    #$00    
       STA    $DB     
       DEC    $DE     
       LDA    $DE     
       STA    AUDV1   
       RTS            

LF4DC: LDA    #$80    
       BIT    SWCHB   
       BEQ    LF4E9   
       LDA    #$32    
       STA    $A8     
       BNE    LF4ED   
LF4E9: LDA    #$22    
       STA    $A8     
LF4ED: LDA    #$40    
       BIT    SWCHB   
       BEQ    LF4FA   
       LDA    #$32    
       STA    $A7     
       BNE    LF4FE   
LF4FA: LDA    #$22    
       STA    $A7     
LF4FE: LDA    $A7     
       STA    CTRLPF  
       STA    $BB     
       LDA    #$00    
       STA    $AB     
       STA    $AC     
       LDA    #$15    
       STA    $A0     
       STA    $A1     
       LDA    #$18    
       STA    $E6     
       LDA    #$00    
       LDX    #$05    
LF518: STA    $AD,X   
       DEX            
       BPL    LF518   
       STA    $EE     
       STA    AUDV1   
       LDA    #$D4    
       STA    $A9     
       LDA    $A4     
       BEQ    LF52D   
       LDA    #$18    
       STA    $EE     
LF52D: LDA    #$60    
       BNE    LF533   
LF531: LDA    #$00    
LF533: STA    $B2     
       STA    $B4     
       STA    $B6     
       STA    $B8     
       STA    $B9     
       LDA    #$28    
       STA    $8B     
       LDA    #$48    
       STA    $8C     
       LDA    #$00    
       LDX    #$28    
LF549: STA    $BD,X   
       DEX            
       BPL    LF549   
       STA    $8D     
       STA    WSYNC   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$20    
       STA    $9B     
       LDA    #$1F    
       STA    $9C     
       STA    AUDF1   
       LDA    #$1F    
       STA    $A2     
       LDA    #$10    
       STA    $9D     
       STA    $9E     
       STA    $9F     
       LDA    #$40    
       STA    $99     
       LDX    #$02    
       LDA    #$78    
       STA    $92     
       LDA    #$B0    
       STA    $93     
       LDA    #$BF    
       STA    $94     
       STA    RESM0   
       LDA    #$20    
       LDA    #$45    
       STA    $F6     
       LDA    #$73    
       STA    $F7     
       LDA    #$A7    
       STA    $F8     
LF58E: LDA    #$FF    
       STA    $E7     
       STA    $E9     
       STA    $EF     
       STA    $F1     
       STA    $EB     
       STA    $ED     
       STA    $F3     
       STA    $F5     
       LDA    #$FA    
       STA    $D9     
       STA    $B5     
       LDA    #$FC    
       STA    $B3     
       LDA    #$F9    
       STA    $B7     
       LDA    #$F8    
       STA    $BA     
       LDA    #$B8    
       STA    $92     
       STA    $80     
       LDA    #$50    
       STA    $96     
       STA    $93     
       LDA    #$FF    
       STA    $97     
       JSR    LFAD1   
       RTS            

LF5C6: LDA    #$50    
       STA    $96     
       LDA    $DA     
       BNE    LF612   
       INC    $DB     
       BEQ    LF5D5   
       JMP    LFDC0   
LF5D5: INC    $DC     
       LDA    $DC     
       CMP    #$01    
       BEQ    LF5E0   
       JMP    LFDC0   
LF5E0: LDA    #$00    
       STA    $DC     
       LDA    #$C8    
       STA    $DA     
       LDX    $AD     
       LDA    $AB,X   
       BNE    LF5F2   
       LDA    #$80    
       BNE    LF5F4   
LF5F2: LDA    #$C0    
LF5F4: STA    $B8     
       LDA    $93     
       CMP    #$10    
       BMI    LF602   
       CMP    #$86    
       BPL    LF602   
       BMI    LF606   
LF602: LSR            
       LSR            
       ADC    #$30    
LF606: STA    $DD     
       STA    $F9     
       JSR    LFBE5   
       STA    $BD     
       JMP    LF70A   
LF612: LDA    $DA     
       CMP    #$C8    
       BNE    LF631   
       INC    $DB     
       BMI    LF61F   
       JMP    LFDC0   
LF61F: INC    $DC     
       LDA    $DC     
       CMP    #$01    
       BEQ    LF62A   
       JMP    LFDC0   
LF62A: LDA    #$E8    
       STA    $DA     
       JMP    LFDC0   
LF631: LDA    $DA     
       CMP    #$E8    
       BNE    LF65B   
       INC    $DB     
       LDA    #$C0    
       CMP    $DB     
       BEQ    LF642   
       JMP    LFDC0   
LF642: LDA    #$48    
       STA    $DA     
       LDA    #$00    
       STA    $DC     
       LDA    $94     
       AND    #$01    
       BEQ    LF654   
       LDA    #$40    
       BNE    LF656   
LF654: LDA    #$80    
LF656: STA    $DB     
       JMP    LFDC0   
LF65B: LDA    #$40    
       TAX            
       BIT    RSYNC   
       BEQ    LF66F   
       LDA    #$40    
       AND    $B8     
       STA    $B8     
       LDY    #$05    
       JSR    LFFC0   
       LDX    #$00    
LF66F: LDA    #$40    
       BIT    NUSIZ1  
       BEQ    LF682   
       LDA    #$80    
       AND    $B8     
       STA    $B8     
       LDY    #$05    
       JSR    LFFC0   
       LDX    #$00    
LF682: TXA            
       BNE    LF695   
       LDA    #$0F    
       STA    AUDV1   
       LDA    #$10    
       STA    $DF     
       LDA    #$08    
       STA    AUDC1   
       LDA    #$10    
       STA    AUDF1   
LF695: LDA    #$80    
       AND    COLUP1  
       BNE    LF6A1   
       LDA    #$80    
       AND    VBLANK  
       BEQ    LF6A4   
LF6A1: JMP    LF48D   
LF6A4: LDA    #$80    
       BIT    $DB     
       BNE    LF6BB   
       INC    $DD     
       LDA    $DD     
       CMP    #$86    
       BNE    LF6C9   
       LDA    #$80    
       EOR    $DB     
       STA    $DB     
       JMP    LF6C9   
LF6BB: DEC    $DD     
       LDA    $DD     
       CMP    #$08    
       BNE    LF6C9   
       LDA    #$80    
       EOR    $DB     
       STA    $DB     
LF6C9: LDA    $DD     
       JSR    LFBE5   
       STA    $BD     
       AND    #$01    
       BNE    LF6DA   
       LDA    #$50    
       STA    $96     
       BNE    LF6DE   
LF6DA: LDA    #$5A    
       STA    $96     
LF6DE: LDA    #$40    
       BIT    $DB     
       BNE    LF6F8   
       INC    $F9     
       LDA    $F9     
       CMP    #$86    
       BNE    LF70A   
       LDA    #$40    
       EOR    $DB     
       STA    $DB     
       LDA    #$40    
       STA    REFP1   
       BNE    LF70A   
LF6F8: DEC    $F9     
       LDA    $F9     
       CMP    #$0C    
       BNE    LF70A   
       LDA    #$40    
       EOR    $DB     
       STA    $DB     
       LDA    #$00    
       STA    REFP1   
LF70A: LDX    #$03    
       LDA    $F9     
       JSR    LFBE5   
       JSR    LFBD1   
       STA    WSYNC   
       STA    HMCLR   
       JMP    LFDC0   
LF71B: .byte $C0,$FD,$FD
LF71E: LDA    $C3     
       BNE    LF724   
       BEQ    LF750   
LF724: CMP    #$01    
       BNE    LF73C   
       LDA    #$00    
       STA    AUDF0   
       STA    $C7     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       LDA    #$02    
       STA    $C3     
       BNE    LF750   
LF73C: INC    $C7     
       INC    $C7     
       LDA    $C7     
       STA    AUDF0   
       CMP    #$1E    
       BEQ    LF74A   
       BNE    LF750   
LF74A: LDA    #$00    
       STA    AUDV0   
       STA    $C3     
LF750: LDA    $DF     
       BEQ    LF75B   
       DEC    $DF     
       BEQ    LF75B   
       JMP    LF7DC   
LF75B: LDA    $E0     
       CMP    #$08    
       BPL    LF792   
       LDA    #$1F    
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       INC    $E1     
       LDA    $E1     
       CMP    #$09    
       BEQ    LF778   
       LDA    $E2     
       STA    AUDV1   
       JMP    LF7DC   
LF778: LDA    #$00    
       STA    $E1     
       INC    $E0     
       LDA    $E0     
       AND    #$01    
       BEQ    LF78B   
       LDA    #$05    
       STA    $E2     
       JMP    LF7DC   
LF78B: LDA    #$00    
       STA    $E2     
       JMP    LF7DC   
LF792: BNE    LF7A1   
       DEC    $9B     
       DEC    $9C     
       LDA    #$09    
       STA    $E0     
       DEC    $A2     
       JMP    LF7DC   
LF7A1: CMP    #$18    
       BNE    LF7AC   
       LDA    #$08    
       STA    $E0     
       JMP    LF7DC   
LF7AC: INC    $E1     
       LDA    $E1     
       CMP    #$09    
       BEQ    LF7BF   
       LDA    $E2     
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       JMP    LF7DC   
LF7BF: LDA    #$00    
       STA    $E1     
       INC    $E0     
       LDA    $E0     
       ROR            
       ROR            
       STA    AUDV1   
       LDA    $E0     
       AND    #$01    
       BEQ    LF7D8   
       LDA    $9B     
       STA    $E2     
       JMP    LF7DC   
LF7D8: LDA    $9C     
       STA    $E2     
LF7DC: JSR    LFAD1   
       LDA    #$00    
       STA    $95     
       LDA    $C8     
       BNE    LF802   
       LDA    $A3     
       BNE    LF7EC   
       RTS            

LF7EC: LDA    #$00    
       STA    $A3     
       LDA    #$01    
       STA    $C8     
       LDA    #$FF    
       STA    $D9     
       LDX    $AD     
       LDY    $AB,X   
       LDA    LFF64,Y 
       STA    $A9     
       RTS            

LF802: CMP    #$01    
       BNE    LF831   
       INC    $C0     
       LDA    $C0     
       EOR    #$0F    
       AND    #$03    
       BEQ    LF811   
       RTS            

LF811: LDX    #$08    
LF813: LDA    $81,X   
       STA    $82,X   
       DEX            
       BPL    LF813   
       JSR    LFABE   
       STA    $81     
       INC    $C9     
       LDA    #$20    
       CMP    $C9     
       BEQ    LF828   
       RTS            

LF828: LDA    #$00    
       STA    $C9     
       LDA    #$02    
       STA    $C8     
       RTS            

LF831: INC    $C0     
       LDA    $C0     
       EOR    #$0F    
       AND    #$00    
       BEQ    LF83C   
       RTS            

LF83C: LDX    #$08    
LF83E: LDA    $81,X   
       STA    $82,X   
       DEX            
       BPL    LF83E   
       LDA    $A9     
       STA    $81     
       INC    $C9     
       LDA    #$0E    
       CMP    $C9     
       BEQ    LF852   
       RTS            

LF852: LDA    #$00    
       STA    $C9     
       STA    $C8     
       LDA    #$FF    
       STA    $8E     
       RTS            

LF85D: .byte $00,$00,$00,$10,$10,$20,$20,$30,$20,$20,$10,$10,$20,$20,$20,$20
       .byte $10,$10,$20,$20,$30,$20,$20,$10,$10,$20,$20,$20,$20,$10,$10,$20
       .byte $20,$30,$20,$20,$10,$10,$20,$20,$20,$20,$10,$10,$20,$20,$30,$20
       .byte $20,$10,$10,$20,$20,$20,$20,$10,$10,$20,$20,$30,$20,$20,$10,$10
       .byte $20,$20,$20,$20,$10,$10,$20,$20,$30,$20,$20,$10,$10,$20,$20,$20
       .byte $20,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$00,$00
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
       .byte $00,$00,$00,$02,$02,$12,$02,$22,$E2,$02,$F2,$02,$12,$02,$02,$02
       .byte $F2,$02,$12,$02,$22,$E2,$02,$F2,$02,$12,$02,$02,$02,$F2,$02,$12
       .byte $02,$22,$E2,$02,$F2,$02,$12,$02,$02,$02,$F2,$02,$12,$02,$22,$E2
       .byte $02,$F2,$02,$12,$02,$02,$02,$F2,$02,$12,$02,$22,$E2,$02,$F2,$02
       .byte $12,$02,$02,$02,$F2,$02,$12,$02,$22,$E2,$02,$F2,$02,$12,$02,$02
       .byte $02,$F2,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00
       .byte $00,$00,$00
LF9C0: JSR    LFABE   
       AND    #$07    
       STA    $8B     
       JSR    LFABE   
       STA    $8C     
       STA    $8C     
       JSR    LFABE   
       AND    #$07    
       STA    $DA     
       JSR    LFABE   
       AND    #$07    
       STA    $A9     
       LDA    #$08    
       STA    $8D     
       LDA    #$30    
       STA    $BF     
       RTS            

LF9E5: .byte $85,$8D,$A9,$30,$85,$BF,$60,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFA00: LDX    #$00    
LFA02: LDA    LFCD8,X 
       STA    $C1     
       LDA    LFB50,X 
LFA0A: STA    WSYNC   
       STA    COLUBK  
       LDA    $C8     
       CMP    #$01    
       BEQ    LFA18   
       CPX    $C9     
       BMI    LFA1D   
LFA18: LDA    $80,X   
       JMP    LFA1F   
LFA1D: LDA    $A9     
LFA1F: AND    #$F0    
       STX    $9A     
       ORA    $9A     
       DEC    $C1     
       BNE    LFA0A   
       INX            
       CPX    #$06    
       BNE    LFA02   
       STA    WSYNC   
       JMP    LF015   
LFA33: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFA40: .byte $10,$10,$20,$20,$30,$30,$20,$20,$10,$10,$00,$00,$10,$00,$20,$00
       .byte $E0,$00,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $81,$81,$42,$24,$18,$3C,$7E,$5A,$7E,$3C,$18,$BD,$7E,$3C,$18,$BD
       .byte $7E,$3C,$18,$BD,$7E,$3C,$18,$BD,$7E,$3C,$18,$BD,$7E,$3C,$18,$BD
       .byte $7E,$3C,$18,$BD,$7E,$3C,$18,$BD,$7E,$3C,$18,$BD,$7E,$3C,$18,$BD
       .byte $7E,$3C,$18,$BD,$7E,$3C,$18,$BD,$7E,$3C,$18,$BD,$7E,$3C,$18,$BD
       .byte $7E,$3C,$18,$BD,$7E,$3C,$18,$BD,$7E,$3C,$18,$BD,$7E,$3C,$18,$BD
       .byte $3C,$3C,$3C,$3C,$18,$18,$18,$18,$08,$10,$60,$00,$00,$00
LFABE: LDA    $92     
       ADC    $93     
       STA    $C1     
       LDA    $93     
       STA    $92     
       LDA    $94     
       STA    $93     
       ADC    $C1     
       STA    $94     
       RTS            

LFAD1: LDX    #$08    
       LDY    #$02    
LFAD5: LDA.wy $00AE,Y 
       ASL            
       ASL            
       ASL            
       AND    #$78    
       CLC            
       ADC    #$70    
       STA    $EC,X   
       LDA.wy $00AE,Y 
       LSR            
       AND    #$78    
       CLC            
       ADC    #$70    
       STA    $EA,X   
       LDA.wy $00AF,Y 
       ASL            
       ASL            
       ASL            
       AND    #$78    
       STA    $E8,X   
       LDY    #$00    
       TXA            
       EOR    #$08    
       TAX            
       BEQ    LFAD5   
       RTS            

LFB00: STA    WSYNC   
       LDX    #$09    
LFB04: LDA    LFCE0,X 
       STA    $C1     
       LDA    $C8     
       CMP    #$01    
       BNE    LFB15   
       CPX    $C9     
       BPL    LFB19   
       BMI    LFB1D   
LFB15: CPX    $C9     
       BPL    LFB1D   
LFB19: LDA    #$00    
       BEQ    LFB2E   
LFB1D: LDA    LFCC0,X 
       STA    $9A     
       LDA    $81,X   
       AND    #$F0    
       ORA    $9A     
       CPX    #$00    
       BNE    LFB2E   
       LDA    #$00    
LFB2E: STA    WSYNC   
       STA    COLUBK  
       DEC    $C1     
       BNE    LFB2E   
       DEX            
       BPL    LFB04   
       JMP    LF21F   
LFB3C: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LFB50: .byte $02,$04,$06,$08,$0A,$0C,$0E,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $42,$24,$24,$24,$18,$3C,$7E,$5A,$7E,$3C,$18,$3C,$7E,$BD,$18,$3C
       .byte $7E,$BD,$18,$3C,$7E,$BD,$18,$3C,$7E,$BD,$18,$3C,$7E,$BD,$18,$3C
       .byte $7E,$BD,$18,$3C,$7E,$BD,$18,$3C,$7E,$BD,$18,$3C,$7E,$BD,$18,$3C
       .byte $7E,$BD,$18,$3C,$7E,$BD,$18,$3C,$7E,$BD,$18,$3C,$7E,$BD,$18,$3C
       .byte $7E,$BD,$18,$3C,$7E,$BD,$18,$3C,$7E,$BD,$18,$3C,$7E,$BD,$18,$3C
       .byte $3C,$3C,$3C,$3C,$18,$18,$18,$18,$10,$08,$03,$00,$00,$00,$00,$00
LFBC0: LDA    #$9A    
       CMP    $95     
       BCS    LFBC8   
       STA    $95     
LFBC8: SEC            
       SBC    $95     
       JSR    LFBE5   
       STA    $AA     
       RTS            

LFBD1: STA    WSYNC   
       NOP            
       NOP            
       NOP            
       STA    HMP0,X  
       AND    #$0F    
       TAY            
LFBDB: DEY            
       BPL    LFBDB   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFBE5: LDY    #$FF    
       SEC            
LFBE8: INY            
       SBC    #$0F    
       BCS    LFBE8   
       STY    $C1     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $C1     
       RTS            

LFBFA: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$18,$18,$3C,$3C,$3C,$7E,$5A,$7E,$FF,$FF
       .byte $7E,$7E,$3C,$3C,$18,$18,$18,$3C,$BD,$BD,$FF,$3C,$3C,$3C,$7E,$7E
       .byte $7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E
       .byte $7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$3C,$3C,$BD,$BD,$FF,$3C,$3C
       .byte $3C,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
       .byte $18,$18,$18,$18,$18,$18,$18,$10,$10,$10,$10,$20,$20,$20,$40,$40
       .byte $40,$00,$00,$00,$29,$33
LFCC0: .byte $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F
       .byte $2F,$32,$2D,$21,$34,$00,$24,$29
LFCD8: .byte $01,$03,$05,$08,$18,$38,$00,$00
LFCE0: .byte $0A,$02,$03,$05,$08,$0A,$0D,$10,$13,$16,$21,$32,$34,$32,$29,$24
LFCF0: .byte $38,$18,$08,$05,$03,$01,$00,$00,$00,$30,$2C,$29,$23,$21,$34,$25
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$18,$3C,$3C,$3C,$7E,$5A,$7E,$FF,$FF,$7E,$7E,$3C,$3C,$18,$18
       .byte $99,$BD,$FF,$3C,$3C,$3C,$3C,$3C,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E
       .byte $7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E
       .byte $7E,$7E,$7E,$BD,$BD,$FF,$3C,$3C,$3C,$3C,$3C,$18,$18,$18,$18,$18
       .byte $18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18,$18
       .byte $18,$08,$08,$08,$08,$04,$04,$04,$02,$02,$02,$00,$00,$00,$00,$24
LFDC0: JSR    LFBC0   
       LDA    $D7     
       BEQ    LFDD6   
       JSR    LFE72   
       LDA    #$00    
       STA    $D7     
       LDA    SWCHA   
       BPL    LFDF1   
       JMP    LF71E   
LFDD6: LDA    $CA     
       BEQ    LFDDC   
       BNE    LFE53   
LFDDC: LDA    $AD     
       BNE    LFDE4   
       LDA    #$80    
       BNE    LFDE6   
LFDE4: LDA    #$40    
LFDE6: BIT    SWCHA   
       BEQ    LFDF1   
       JSR    LFE72   
       JMP    LF71E   
LFDF1: LDA    #$00    
       STA    $CB     
       STA    $CC     
       STA    $CD     
       LDA    #$01    
       STA    $C3     
       LDY    #$FF    
       STY    $CA     
       LDA    #$52    
       STA    $CF     
       LDA    $D8     
       BEQ    LFE11   
       LDA    #$A2    
       SEC            
       SBC    $95     
       JMP    LFE16   
LFE11: LDA    $95     
       SEC            
       SBC    #$FF    
LFE16: STA    $CE     
       SEC            
       SBC    $CF     
       BCS    LFE2D   
       STA    $D0     
       LDA    $CE     
       LDY    $CF     
       STA    $CF     
       STY    $CE     
       LDA    $D0     
       LDY    #$00    
       BEQ    LFE2F   
LFE2D: EOR    #$FF    
LFE2F: STY    $D1     
       ADC    $CF     
       STA    $D2     
       LDA    #$FF    
       ADC    #$00    
       STA    $D3     
       SEC            
       LDA    $D2     
       SBC    $CE     
       STA    $D4     
       LDA    $D3     
       SBC    #$00    
       STA    $C5     
       LDA    $CF     
       ASL            
       STA    $CF     
       BCC    LFE53   
       LDA    #$01    
       STA    $D5     
LFE53: LDA    #$05    
       STA    $D6     
LFE57: DEC    $D6     
       BEQ    LFEBE   
       LDY    $D3     
       BMI    LFE9D   
       CLC            
       LDA    $D2     
       ADC    $D4     
       STA    $D2     
       LDA    $D3     
       ADC    $C5     
       STA    $D3     
       INC    $CC     
       LDA    #$00    
       BEQ    LFEAA   
LFE72: LDA    $D8     
       BEQ    LFE93   
       STA    WSYNC   
       NOP            
       NOP            
       LDA    #$70    
LFE7C: STA    HMBL    
       AND    #$0F    
       TAY            
LFE81: DEY            
       BPL    LFE81   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$52    
       STA    $D9     
       STA    WSYNC   
       STA    HMCLR   
       RTS            

LFE93: LDA    #$8A    
       STA    $C1     
       STA    WSYNC   
       LDA    $C1     
       BNE    LFE7C   
LFE9D: CLC            
       LDA    $D2     
       ADC    $CF     
       STA    $D2     
       LDA    $D3     
       ADC    $D5     
       STA    $D3     
LFEAA: INC    $CB     
       DEC    $CE     
       BNE    LFE57   
       LDA    #$00    
       STA    $CA     
       LDA    #$FF    
       STA    $D7     
       LDA    $D8     
       EOR    #$FF    
       STA    $D8     
LFEBE: LDY    $D1     
       BNE    LFECA   
       LDA    $CB     
       LDY    $CC     
       STY    $CB     
       STA    $CC     
LFECA: LDY    $D8     
       BNE    LFED4   
       LDA    $CB     
       LDX    #$00    
       BEQ    LFED9   
LFED4: LDA    #$00    
       SEC            
       SBC    $CB     
LFED9: ASL            
       ASL            
       ASL            
       ASL            
       STA    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $CC     
       CLC            
       ADC    $CD     
       STA    $CD     
       LDA    #$52    
       SEC            
       SBC    $CD     
       STA    $D9     
       LDA    #$00    
       STA    $CB     
       STA    $CC     
       STA    WSYNC   
       STA    HMCLR   
       JMP    LF71E   
LFEFE: .byte $00,$00,$E7,$A5,$A5,$A5,$E7,$00,$00,$00,$21,$21,$21,$21,$21,$00
       .byte $00,$00,$E7,$84,$E7,$21,$E7,$00,$00,$00,$E7,$21,$E7,$21,$E7,$00
       .byte $00,$00,$21,$E7,$A5,$A5,$84,$00,$00,$00,$E7,$21,$E7,$84,$E7,$00
       .byte $00,$00,$E7,$A5,$E7,$84,$E7,$00,$00,$00,$21,$21,$21,$21,$E7,$00
       .byte $00,$00,$E7,$A5,$E7,$A5,$E7,$00,$00,$00,$E7,$21,$E7,$A5,$E7,$00
       .byte $00,$00,$7E,$5A,$18,$FF,$C3,$FF,$18,$18,$7E,$00,$E7,$A5,$24,$FF
       .byte $99,$FF,$24,$24,$E7,$00
LFF64: .byte $D4,$A2,$53,$42,$19,$D4,$00,$00,$00,$00,$00,$00,$EE,$AA,$AA,$AA
       .byte $EE,$00,$00,$00,$44,$44,$44,$44,$44,$00,$00,$00,$EE,$22,$EE,$88
       .byte $EE,$00,$00,$00,$EE,$88,$EE,$88,$EE,$00,$00,$00,$88,$EE,$AA,$AA
       .byte $22,$00,$00,$00,$EE,$88,$EE,$22,$EE,$00,$00,$00,$EE,$AA,$EE,$22
       .byte $EE,$00,$00,$00,$88,$88,$88,$88,$EE,$00,$00,$00,$EE,$AA,$EE,$AA
       .byte $EE,$00,$00,$00,$EE,$88,$EE,$AA,$EE,$00,$00,$00
LFFC0: LDA    $AD     
       ASL            
       TAX            
       TYA            
       SED            
       CLC            
       ADC    $AE,X   
       STA    $AE,X   
       CLD            
       BCC    LFFDA   
       LDA    #$00    
       ADC    $AF,X   
       CMP    #$0A    
       BNE    LFFD8   
       LDA    #$00    
LFFD8: STA    $AF,X   
LFFDA: RTS            

LFFDB: .byte $00,$00,$00,$00,$00
LFFE0: .byte $18,$18,$18,$7E,$7E,$7E,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$00
