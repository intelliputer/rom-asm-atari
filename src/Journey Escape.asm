; Disassembly of roms/Journey Escape.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Journey Escape.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
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
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       DEX            
       BNE    LF005   
       DEX            
       TXS            
       JMP    LF900   
LF00F: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       JMP    LF2B6   
LF029: DEY            
       CPY    #$71    
       JMP    LF083   
LF02F: LDA    INTIM   
       BNE    LF02F   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDA    #$40    
       STA    HMP1    
       LDA    #$30    
       AND    $9F     
       LDY    $A9     
       CPY    #$F0    
       BNE    LF04D   
       TYA            
LF04D: STA    $D5     
       LDX    #$AC    
       LDA    $A9     
       LSR            
       BCS    LF058   
       LDX    #$94    
LF058: STA    WSYNC   
       STX    $AC     
       LDA    #$34    
       STA    HMP0    
       AND    #$0F    
       TAX            
LF063: DEX            
       BPL    LF063   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$03    
       STY    NUSIZ1  
       STY    NUSIZ0  
       LDY    $D3     
       LDA    $9F     
       AND    #$07    
       BNE    LF08B   
       LDA    $D2     
       BMI    LF029   
       INY            
       CPY    #$7A    
LF083: BNE    LF089   
       EOR    #$FF    
       STA    $D2     
LF089: STY    $D3     
LF08B: STA    HMCLR   
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
       LDA    #$70    
       STA    HMP1    
LF097: STY    $84     
       LDA    ($EC),Y 
       STA    $85     
       STA    WSYNC   
       LDA    ($E2),Y 
       STA    GRP0    
       LDA    ($E4),Y 
       STA    GRP1    
       LDA    ($E6),Y 
       STA    GRP0    
       LDA    ($EA),Y 
       TAX            
       LDA    ($E8),Y 
       LDY    $85     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $84     
       DEY            
       BPL    LF097   
       INY            
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       LDA    #$76    
       STA    HMP0    
       AND    #$0F    
       TAX            
LF0D1: DEX            
       BPL    LF0D1   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $93     
       BNE    LF0E4   
       LDA    #$FF    
       STA    $AF     
LF0E4: CPY    #$01    
       BNE    LF0EC   
       LDA    #$FF    
       BNE    LF0F2   
LF0EC: CPY    #$02    
       BNE    LF0F4   
       LDA    #$00    
LF0F2: STA    $B8     
LF0F4: LDY    #$07    
       STY    $84     
       LDY    #$02    
       STY    NUSIZ1  
       DEY            
       STY    NUSIZ0  
       LDX    #$08    
       STA    HMCLR   
LF103: STA    WSYNC   
       LDA.wy $0095,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $E4,X   
       DEX            
       BMI    LF120   
       DEX            
       LDA.wy $0095,Y 
       AND    #$F0    
       LSR            
       STA    $E4,X   
       DEX            
       DEX            
       DEY            
       BPL    LF103   
LF120: LDX    $93     
       LDA    LFDD0,X 
       STA    $E2     
       LDA    #$0A    
       AND    $A9     
       STA    COLUP0  
       STA    COLUP1  
LF12F: STA    WSYNC   
       LDY    #$A6    
       STY    $83     
       LDA    $A8     
       STA    $81     
       STA    CXCLR   
       LDA    #$FF    
       STA    $AE     
       LDY    $84     
       LDA    ($E8),Y 
       ORA    LFEA4,Y 
       STA    GRP0    
       LDA    ($EA),Y 
       STA    GRP1    
       LDA    ($EC),Y 
       STA    GRP0    
       LDA    ($E2),Y 
       STA    GRP1    
       DEC    $84     
       BPL    LF12F   
       LDY    #$00    
       STY    GRP1    
       STA    WSYNC   
       STY    GRP0    
       STY    NUSIZ0  
       LDX    $82     
       LDA    $80     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF16B: DEY            
       BPL    LF16B   
       STA    RESP0   
       STA    WSYNC   
       NOP            
       LDA    $B9     
       STA    REFP0   
       LDA    $C0,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
LF17E: DEY            
       BPL    LF17E   
       STA    RESP1   
       STA    WSYNC   
       LDA    $D3     
       STA    HMM0    
       AND    #$0F    
       TAY            
LF18C: DEY            
       BPL    LF18C   
       STA    RESM0   
       STA    WSYNC   
       STA    HMOVE   
       STX    $85     
       LDA    $A0,X   
       STA    NUSIZ1  
       LDA    $9F     
       STA    REFP1   
       LDA    #$60    
       STA    HMM0    
       LDY    $B0,X   
       STA    HMCLR   
       LDA    $DC     
       BPL    LF1AF   
       LDA    #$00    
       BEQ    LF1B3   
LF1AF: DEC    $DC     
       ADC    #$40    
LF1B3: STA    WSYNC   
       STA    COLUBK  
       LDA    $D4     
       BMI    LF1BE   
       JMP    LFA2C   
LF1BE: STY    $86     
       STY    $88     
       LDY    #$02    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF1CC   
       TAY            
LF1CC: STY    ENAM0   
       LDA    $EE     
       BPL    LF1D8   
       AND    #$7F    
       TAX            
       JMP    LF260   
LF1D8: TAY            
       INY            
       JMP    LF1F5   
LF1DD: TAY            
       LDA    ($AA),Y 
       TAX            
       LDA    ($AC),Y 
       LDY    $84     
       STA    WSYNC   
       STX    GRP0    
       STA    COLUP0  
LF1EB: LDA    ($86),Y 
       STA    GRP1    
       BEQ    LF20E   
       LDA    ($88),Y 
       STA    COLUP1  
LF1F5: DEC    $83     
       BEQ    LF209   
       DEY            
       STY    $84     
       DEC    $81     
       LDA    $81     
       CLC            
       ADC    #$19    
       BCS    LF1DD   
       STA    WSYNC   
       BCC    LF1EB   
LF209: STA    WSYNC   
       JMP    LF296   
LF20E: LDX    $85     
       LDA    #$70    
       STA    HMM0    
       DEC    $83     
LF216: BEQ    LF209   
       BIT    COLUP1  
       BPL    LF21E   
       STX    $AE     
LF21E: DEX            
       BPL    LF223   
       LDX    #$07    
LF223: LDY    #$00    
       DEC    $81     
       LDA    $81     
       CLC            
       ADC    #$19    
       BCC    LF233   
       TAY            
       LDA    ($AC),Y 
       STA    COLUP0  
LF233: STA    WSYNC   
       LDA    ($AA),Y 
       STA    GRP0    
       LDA    $C0,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
LF240: DEY            
       BPL    LF240   
       STA    RESP1   
       DEC    $81     
       STA    WSYNC   
       STA    HMOVE   
       DEC    $83     
       BEQ    LF282   
       LDA    $A0,X   
       STA    NUSIZ1  
       LSR            
       LDY    #$60    
       STY    HMM0    
       LDY    $B0,X   
       STY    $86     
       STX    $85     
       LSR            
       TAX            
LF260: LDY    #$00    
       DEC    $83     
       BEQ    LF216   
       DEC    $81     
       LDA    $81     
       CLC            
       ADC    #$19    
       BCC    LF272   
       TAY            
       LDA    ($AC),Y 
LF272: STA    WSYNC   
       STA    COLUP0  
       LDA    ($AA),Y 
       STA    GRP0    
       DEX            
       BNE    LF285   
       LDY    #$10    
       JMP    LF1F5   
LF282: JMP    LF296   
LF285: LDA    $86     
       BNE    LF28F   
       LDY    $D5     
       BEQ    LF28F   
       LDA    #$20    
LF28F: STA    $88     
       STA    CXCLR   
       JMP    LF260   
LF296: STA    WSYNC   
       LDY    #$1C    
       LDA    $94     
       AND    #$01    
       TAX            
       LDA    LFFFE,X 
       AND    $A9     
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    ENAM0   
LF2AC: STA    WSYNC   
       STA    COLUBK  
       DEY            
       BNE    LF2AC   
       JMP    LF00F   
LF2B6: LDA    $D4     
       BMI    LF2BD   
       JMP    LFAB1   
LF2BD: DEC    $9F     
       BNE    LF2D2   
       DEC    $F4     
       BNE    LF2D2   
       LDA    #$F0    
       STA    $A9     
       LDX    #$07    
       LDA    #$00    
LF2CD: STA    $B0,X   
       DEX            
       BPL    LF2CD   
LF2D2: LDA    SWCHB   
       STA    $84     
       LSR            
       BCS    LF302   
       LDA    $D4     
       AND    #$BF    
       STA    $D4     
       LDY    #$01    
       STY    $90     
       STY    $94     
       STY    $9B     
       DEY            
       BIT    $84     
       BMI    LF2EF   
       STY    $9B     
LF2EF: BVS    LF2F3   
       STY    $94     
LF2F3: LDA    #$59    
       STA    $91     
       STA    $92     
       JSR    LF936   
       JSR    LFFA3   
       JMP    LF325   
LF302: LSR            
       BCS    LF321   
       LDA    $D8     
       BEQ    LF325   
       LDA    $BA     
       EOR    #$01    
       STA    $BA     
       CLC            
       ADC    #$05    
       STA    $93     
       STA    $9A     
       LDY    #$00    
       STY    $D8     
       STY    $BB     
       STY    $DA     
       JMP    LF7AC   
LF321: LDA    #$01    
       STA    $D8     
LF325: LDA    $95     
       ORA    $96     
       BNE    LF34C   
       LDA    $94     
       ORA    #$80    
       STA    $94     
       LDA    $BA     
       BEQ    LF342   
       LDA    $9B     
       BPL    LF349   
       LDA    $9F     
       AND    #$7F    
       BNE    LF342   
       JSR    LFFCD   
LF342: LDA    #$06    
       STA    $DA     
       JMP    LF503   
LF349: JMP    LF429   
LF34C: LDA    $93     
       CMP    #$05    
       BCS    LF35C   
       LDA    $BB     
       BNE    LF36B   
       LDX    $9E     
       LDA    REFP1,X 
       BPL    LF35F   
LF35C: JMP    LF503   
LF35F: LDY    #$01    
       STY    $BB     
       STY    $DA     
       LDY    #$FF    
       STY    $F4     
       STY    $A9     
LF36B: LDA    $DC     
       BPL    LF399   
       LDA    $F3     
       CLC            
       SED            
       SBC    #$00    
       STA    $F3     
       CMP    #$99    
       BNE    LF38E   
       BIT    SWCHB   
       BVS    LF384   
       LDA    #$49    
       BNE    LF386   
LF384: LDA    #$41    
LF386: STA    $F3     
       LDA    $96     
       SBC    #$01    
       STA    $96     
LF38E: CLD            
       CMP    #$99    
       BNE    LF399   
       LDA    #$59    
       STA    $96     
       DEC    $95     
LF399: LDA    $F9     
       BEQ    LF39F   
       DEC    $F9     
LF39F: LDA    $F5     
       BEQ    LF3A6   
       JMP    LF4CD   
LF3A6: BIT    COLUP1  
       BPL    LF3AE   
       LDA    $85     
       STA    $AE     
LF3AE: LDA    $AE     
       BPL    LF3ED   
LF3B2: JMP    LF503   
LF3B5: LDX    #$05    
       LDA    #$01    
       STA    $DA     
       LDY    #$03    
       STY    $D9     
       SED            
       CLC            
       LDA    #$60    
       STA    $84     
       LDY    $95     
LF3C7: BEQ    LF3D4   
       LDA    $91     
       ADC    $84     
       JSR    LF4B7   
       DEY            
       JMP    LF3C7   
LF3D4: LDA    $96     
       CLC            
       ADC    $91     
       JSR    LF4B7   
       CLD            
       LDA    #$00    
       STA    $E0     
       STA    $D4     
       STA    $95     
       STA    $96     
       JSR    LFED2   
       JMP    LF7AC   
LF3ED: TAX            
       LDA    $B0,X   
       STA    $DB     
       BNE    LF3FC   
       LDY    $9F     
       INY            
       TYA            
       AND    #$30    
LF3FA: BNE    LF3B2   
LF3FC: CMP    #$70    
       BEQ    LF450   
       CMP    #$60    
       BNE    LF45C   
       LDA    $DC     
       BEQ    LF417   
       BPL    LF414   
       LDA    #$7F    
       STA    $DC     
       STA    $D7     
       LDA    #$03    
       STA    $DA     
LF414: JMP    LF7AC   
LF417: LDY    $93     
       CPY    #$04    
       BEQ    LF3B5   
       INY            
       STY    $93     
       CLC            
       SED            
       LDA    $95     
       ADC    #$01    
       STA    $95     
       CLD            
LF429: JSR    LF959   
       JSR    LFFA3   
       JSR    LFFCD   
       JMP    LF7AC   
LF435: CLC            
       SED            
       LDA    $90     
       ADC    #$05    
       STA    $90     
       CLD            
       BCC    LF442   
       INC    $92     
LF442: LDY    #$00    
       STY    $93     
       STY    $96     
       STY    $F3     
       LDY    #$01    
       STY    $95     
       BNE    LF429   
LF450: LDY    #$02    
       STY    $DA     
       LDA    #$20    
       STA    $FB     
       STA    $B0,X   
       BNE    LF48D   
LF45C: LDY    $FB     
       BNE    LF3FA   
       CMP    #$50    
       BNE    LF472   
       LDA    #$20    
       STA    $B0,X   
       LDA    #$F0    
       STA    $F9     
       STA    $D7     
       LDA    #$05    
       STA    $DA     
LF472: LDA    $F9     
       BNE    LF4B4   
       LDA    $FB     
       BNE    LF4B4   
       LDY    $93     
       LDA    LFDD7,Y 
       STA    $F5     
       LDA    #$20    
       STA    $D7     
       LDA    #$04    
       STA    $DA     
       LDA    $EF     
       STA    $F1     
LF48D: LDA    $DB     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $91     
       SED            
       CPY    #$07    
       BEQ    LF4A8   
       SEC            
       SBC    LFCF8,Y 
       STA    $91     
       LDA    $90     
       SBC    #$00    
       JMP    LF4C0   
LF4A8: CLC            
       ADC    LFCF8,Y 
       JSR    LF4B7   
       CLD            
       BCC    LF4B4   
       INC    $92     
LF4B4: JMP    LF503   
LF4B7: STA    $91     
       LDA    $90     
       ADC    #$00    
       STA    $90     
       RTS            

LF4C0: STA    $90     
       CLD            
       LDA    #$00    
       BCS    LF4CB   
       STA    $90     
       STA    $91     
LF4CB: STA    $F7     
LF4CD: LDA    $A8     
       CMP    #$8D    
       BCC    LF4F6   
       LDA    $AE     
       BMI    LF4E4   
       LDX    $F6     
       LDA    $F1     
       BMI    LF4E9   
       INX            
       CPX    #$88    
       BCS    LF4EE   
LF4E2: STX    $F6     
LF4E4: DEC    $F5     
       JMP    LF503   
LF4E9: DEX            
       CPX    #$02    
       BCS    LF4E2   
LF4EE: LDA    $F1     
       EOR    #$FF    
       STA    $F1     
       BNE    LF4E4   
LF4F6: LDX    $AE     
       BMI    LF501   
       LDA    $A8     
       CLC            
       ADC    #$02    
       STA    $A8     
LF501: DEC    $F5     
LF503: LDX    $82     
       LDY    #$07    
LF507: STY    $DB     
       LDA    $AF     
       BMI    LF55B   
       LDA    $B8     
       BPL    LF517   
       LDA    $9F     
       AND    #$01    
       BNE    LF55B   
LF517: LDY    $C0,X   
       LDA    $EF     
       BPL    LF545   
       CPY    #$50    
       BNE    LF525   
       AND    #$7F    
       BPL    LF559   
LF525: TYA            
       AND    #$F0    
       CMP    #$70    
       BNE    LF52D   
       DEY            
LF52D: TYA            
       CLC            
       ADC    #$10    
       JMP    LF540   
LF534: TYA            
       AND    #$F0    
       CMP    #$80    
       BNE    LF53C   
       INY            
LF53C: TYA            
       SEC            
       SBC    #$10    
LF540: STA    $C0,X   
       JMP    LF55B   
LF545: LDA    $A0,X   
       AND    #$07    
       TAY            
       LDA    LFCE8,Y 
       STA    $84     
       LDY    $C0,X   
       CPY    $84     
       BNE    LF534   
       LDA    $EF     
       ORA    #$80    
LF559: STA    $EF     
LF55B: LDA    $EF     
       ASL            
       BCC    LF562   
       ORA    #$01    
LF562: STA    $EF     
       LDA    $AF     
       LDY    $93     
       CPY    #$04    
       BEQ    LF573   
       ASL            
       BCC    LF578   
       ORA    #$01    
       BNE    LF578   
LF573: LSR            
       BCC    LF578   
       ORA    #$80    
LF578: STA    $AF     
       LDA    $B8     
       ASL            
       BCC    LF581   
       ORA    #$01    
LF581: STA    $B8     
       LDY    $93     
       CPY    #$04    
       BEQ    LF590   
       DEX            
       BPL    LF597   
       LDX    #$07    
       BNE    LF597   
LF590: CPX    #$07    
       BNE    LF596   
       LDX    #$FF    
LF596: INX            
LF597: LDY    $DB     
       DEY            
       BMI    LF59F   
       JMP    LF507   
LF59F: LDA    $F7     
       CMP    #$03    
       BEQ    LF5B6   
       LDA    $9F     
       AND    $F7     
       BNE    LF5C8   
       LDY    $EE     
       BMI    LF5D4   
       INY            
       CPY    #$10    
       BEQ    LF5C4   
       BNE    LF5C6   
LF5B6: LDY    $EE     
       BMI    LF5D3   
       INY            
       CPY    #$10    
       BEQ    LF5CB   
       INY            
       CPY    #$10    
       BCC    LF5C6   
LF5C4: LDY    #$81    
LF5C6: STY    $EE     
LF5C8: JMP    LF6F4   
LF5CB: LDY    #$82    
       BMI    LF5C6   
LF5CF: LDY    #$00    
       BEQ    LF5E8   
LF5D3: INY            
LF5D4: INY            
       STY    $EE     
       LDX    $82     
       LDA    $A0,X   
       LSR            
       LSR            
       CLC            
       ADC    #$83    
       CMP    $EE     
       BEQ    LF5CF   
       BCS    LF5C8   
       LDY    #$01    
LF5E8: STY    $EE     
       CPX    #$07    
       BNE    LF5F0   
       LDX    #$FF    
LF5F0: INX            
       STX    $82     
       LDA    $BB     
       BEQ    LF5F9   
       DEC    $F8     
LF5F9: LSR    $AF     
       LSR    $B8     
       LSR    $EF     
       LDA    #$00    
       STA    $DB     
       LDA    $EF     
       BNE    LF609   
       LDA    $9F     
LF609: AND    #$0F    
       TAY            
       LDA    LFE94,Y 
LF60F: STA    $B0,X   
       LDA    $94     
       AND    #$01    
       TAY            
       LDA    $B0,X   
       CMP    #$50    
       BNE    LF62B   
       LDA    $BB     
       BEQ    LF627   
       LDA    $9F     
       AND    LFDE1,Y 
       BEQ    LF650   
LF627: LDA    #$10    
       BNE    LF60F   
LF62B: CMP    #$70    
       BNE    LF642   
       LDA    $BB     
       BEQ    LF63A   
       LDA    $9F     
       AND    LFDE3,Y 
       BEQ    LF63E   
LF63A: LDA    #$40    
       BNE    LF60F   
LF63E: LDA    #$05    
       STA    $DB     
LF642: CMP    #$30    
       BNE    LF650   
       LDA    #$07    
       STA    $DB     
       LDA    $AF     
       ORA    #$80    
       STA    $AF     
LF650: JSR    LF96C   
       STA    $A0,X   
       AND    #$7F    
       STA    $84     
       AND    #$07    
       CMP    #$07    
       BNE    LF661   
       LDA    #$02    
LF661: LDY    $DB     
       BNE    LF667   
       STA    $DB     
LF667: LDA    $84     
       LSR            
       BCC    LF672   
       LDA    $B8     
       ORA    #$80    
       STA    $B8     
LF672: LDA    $84     
       LDY    $DB     
       CMP    LFCF0,Y 
       BCC    LF684   
       LDA    $9F     
       AND    #$03    
       BEQ    LF688   
       LDA    LFCF0,Y 
LF684: CMP    #$02    
       BCS    LF68A   
LF688: LDA    #$02    
LF68A: STA    $84     
       JSR    LFFE5   
       STA    $C0,X   
       LDA    $F6     
       CMP    $84     
       BCS    LF69D   
       LDA    $EF     
       ORA    #$80    
       STA    $EF     
LF69D: LDA    $94     
       AND    #$01    
       TAY            
       LDA    $A0,X   
       LSR            
       LSR            
       CMP    LFDE5,Y 
       BCS    LF6AE   
       LDA    LFDE5,Y 
LF6AE: CMP    LFDE7,Y 
       BCC    LF6B6   
       LDA    LFDE7,Y 
LF6B6: ASL            
       ASL            
       AND    #$F8    
       STA    $A0,X   
       LDY    $F8     
       BNE    LF6CF   
       LDY    $93     
       LDA    LFDDC,Y 
       STA    $F8     
       LDY    #$60    
       STY    $B0,X   
       LDY    #$05    
       STY    $DB     
LF6CF: LDA    $A0,X   
       ORA    $DB     
       STA    $A0,X   
       LDA    #$3F    
       CMP    $FA     
       BCS    LF6F4   
       LDA    $9F     
       LSR            
       BCS    LF6E4   
       LDA    #$50    
       BNE    LF6EC   
LF6E4: LDY    $DB     
       LDA    LFCF0,Y 
       JSR    LFFE5   
LF6EC: STA    $C0,X   
       LDA    $AF     
       ORA    #$80    
       STA    $AF     
LF6F4: LDY    #$00    
       STY    $AA     
       LDA    $BB     
       BNE    LF6FF   
LF6FC: JMP    LF77F   
LF6FF: LDA    $95     
       ORA    $96     
       BEQ    LF6FC   
       LDA    $F5     
       BNE    LF6FC   
       LDY    $A8     
       LDA    SWCHA   
       LDX    $9E     
       BEQ    LF716   
       ASL            
       ASL            
       ASL            
       ASL            
LF716: AND    #$F0    
       LDY    $F6     
       ASL            
       STA    $84     
       BCC    LF723   
       BPL    LF736   
       BMI    LF74C   
LF723: LDX    #$00    
       STX    $B9     
       CPY    #$88    
       BCS    LF74C   
       INY            
       LDX    $9E     
       LDA    REFP1,X 
       BMI    LF733   
       INY            
LF733: JMP    LF746   
LF736: LDX    #$08    
       STX    $B9     
       CPY    #$03    
       BCC    LF74C   
       DEY            
       LDX    $9E     
       LDA    REFP1,X 
       BMI    LF746   
       DEY            
LF746: STY    $F6     
       LDA    #$19    
       STA    $AA     
LF74C: LDA    $84     
       LDY    $A8     
       ASL            
       ASL            
       BCC    LF758   
       BPL    LF770   
       BMI    LF77F   
LF758: LDA    #$00    
       STA    $F7     
       CPY    #$8D    
       BCS    LF77F   
       INY            
       LDX    $9E     
       LDA    REFP1,X 
       BMI    LF77D   
       INY            
       BNE    LF77D   
LF76A: LDA    #$03    
       STA    $F7     
       BNE    LF77F   
LF770: LDA    #$00    
       STA    $AA     
       CPY    #$38    
       BCC    LF76A   
       LDA    #$00    
       STA    $F7     
       DEY            
LF77D: STY    $A8     
LF77F: LDA    $9F     
       LDX    $AA     
       CPX    #$00    
       BNE    LF78B   
       STA    $B9     
       BEQ    LF795   
LF78B: AND    #$08    
       BNE    LF795   
       TXA            
       CLC            
       ADC    #$19    
       STA    $AA     
LF795: LDA    $F6     
       LDY    #$00    
       CMP    #$68    
       BCS    LF7A1   
       CMP    #$22    
       BCS    LF7A5   
LF7A1: INC    $FA     
       BNE    LF7A7   
LF7A5: STY    $FA     
LF7A7: JSR    LFFE5   
       STA    $80     
LF7AC: LDY    #$02    
LF7AE: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $0090,Y 
       AND    #$F0    
       LSR            
       STA    $E2,X   
       LDA.wy $0090,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $E4,X   
       LDA    #$FF    
       STA    $E3,X   
       STA    $E5,X   
       DEY            
       BPL    LF7AE   
       LDX    #$00    
LF7CF: LDA    $E2,X   
       BNE    LF7DD   
       LDA    #$50    
       STA    $E2,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    LF7CF   
LF7DD: CPX    #$00    
       BEQ    LF7E7   
       DEX            
       DEX            
       LDA    #$58    
       STA    $E2,X   
LF7E7: LDX    $9E     
       BNE    LF7EF   
       LDA    #$C8    
       BNE    LF7F1   
LF7EF: LDA    #$28    
LF7F1: AND    $A9     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    HMCLR   
       LDX    #$00    
       LDA    $D0,X   
       CMP    #$0E    
       BCS    LF80F   
       LDA    $9F     
       BNE    LF80F   
       INC    $D0,X   
       INC    $D0,X   
LF80F: LDY    $DA     
       CPY    #$06    
       BNE    LF81E   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF02F   
LF81E: CPY    $CE     
       BEQ    LF82A   
       STY    $CE     
       JSR    LFF88   
       JSR    LF8E5   
LF82A: CPY    #$03    
       BCC    LF842   
       LDA    $D7     
       BEQ    LF842   
       DEC    $D7     
       BNE    LF842   
       LDY    #$01    
       STY    $DA     
       STY    $CE     
       JSR    LFF88   
       JSR    LF8E5   
LF842: CPY    #$03    
       BCC    LF84C   
       LDA    #$00    
       STA    AUDV0   
       BEQ    LF851   
LF84C: LDX    #$00    
       JSR    LF85B   
LF851: LDY    $DA     
       LDX    #$01    
       JSR    LF85B   
       JMP    LF02F   
LF85B: BNE    LF86B   
       LDA    $C8     
       STA    $84     
       LDA    $C9     
       STA    $85     
       LDA    #$0C    
       STA    AUDC0   
       BNE    LF878   
LF86B: LDA    $CA     
       STA    $84     
       LDA    $CB     
       STA    $85     
       LDA    LFB5A,Y 
       STA    AUDC1   
LF878: LDA    $BE,X   
       BEQ    LF880   
       DEC    $BE,X   
       BNE    LF8B6   
LF880: LDY    $BC,X   
       BEQ    LF8D1   
       LDA    $DA     
       CMP    #$01    
       BEQ    LF8A3   
       CMP    #$00    
       BNE    LF89F   
       TXA            
       BEQ    LF8A3   
LF891: STX    $DB     
       LDX    $DA     
       LDA    LFB60,X 
       STA    $BF     
       LDX    $DB     
       JMP    LF8A8   
LF89F: TXA            
       BNE    LF891   
       RTS            

LF8A3: LDA    ($84),Y 
       STA    $BE,X   
       DEY            
LF8A8: LDA    ($84),Y 
       STA    AUDF0,X 
       LDA    $D0,X   
       STA    AUDV0,X 
       STA    $CC,X   
       DEY            
       STY    $BC,X   
       RTS            

LF8B6: LDA    $BE,X   
       CPX    #$00    
       BNE    LF8C2   
       AND    LFB4E,Y 
       JMP    LF8C5   
LF8C2: AND    LFB54,Y 
LF8C5: BNE    LF8D0   
       LDY    $CC,X   
       BEQ    LF8D0   
       DEY            
       STY    AUDV0,X 
       STY    $CC,X   
LF8D0: RTS            

LF8D1: STY    AUDV0,X 
       STY    AUDC0,X 
       LDY    $DA     
       TXA            
       BEQ    LF8DF   
       TYA            
       CLC            
       ADC    #$06    
       TAY            
LF8DF: LDA    LFB3A,Y 
       STA    $BC,X   
       RTS            

LF8E5: LDA    LFDF5,Y 
       STA    $CB     
       LDA    LFB2F,Y 
       STA    $CA     
       LDA    LFB48,Y 
       STA    $D1     
       LDA    LFB40,Y 
       STA    $BD     
       LDA    #$00    
       STA    AUDV1   
       STA    $BF     
       RTS            

LF900: LDA    #$55    
       STA    $F0     
       LDA    #$FF    
       STA    $A9     
       STA    $DC     
       LDA    #$30    
       STA    PF0     
       JSR    LF936   
       LDY    #$FC    
       STY    $87     
       INY            
       STY    $89     
       LDA    #$FE    
       STA    $AB     
       STA    $AD     
       LDX    #$05    
       LDA    #$00    
       JSR    LFED2   
       LDA    #$40    
       STA    $D4     
       LDA    #$71    
       INC    $DA     
       STA    $D3     
       LDA    #$05    
       STA    $93     
       JMP    LF00F   
LF936: LDA    #$05    
       STA    CTRLPF  
       STA    $90     
       STA    $97     
       LDY    #$00    
       STY    $91     
       STY    $92     
       STY    $98     
       STY    $99     
       STY    $93     
       STY    $9A     
       STY    $96     
       STY    $9D     
       STY    $F3     
       STY    $9E     
       INY            
       STY    $95     
       STY    $9C     
LF959: LDX    #$07    
LF95B: LDA    #$10    
       STA    $B0,X   
       TXA            
       EOR    #$52    
       STA    $C0,X   
       LDA    #$F1    
       STA    $A0,X   
       DEX            
       BPL    LF95B   
       RTS            

LF96C: LDA    $F0     
       LDY    $F2     
       EOR    LF233,Y 
       EOR    LF578,Y 
       ASL            
       ADC    #$00    
       INY            
       STY    $F2     
       EOR    $80     
       EOR    $9F     
       STA    $F0     
       RTS            

LF983: LDY    #$24    
LF985: LDA    LF20E,Y 
       ORA    $DF     
       STA    $84     
       LDA    LFDAB,Y 
       DEY            
       BEQ    LF9B2   
       INC    $DF     
       PHA            
       LDX    #$01    
LF997: STA    HMP0    
       LDA    #$F8    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $84     
       STA    COLUP0  
       DEC    $83     
       DEX            
       BMI    LF985   
       PLA            
       ROL            
       ROL            
       ROL            
       ROL            
       JMP    LF997   
LF9B2: STY    GRP0    
LF9B4: STA    WSYNC   
       DEC    $83     
       BNE    LF9B4   
       DEC    $DE     
       BEQ    LF9CE   
       LDA    $DE     
       CMP    #$30    
       BNE    LF9D5   
       LDA    #$60    
       STA    $DC     
       LDA    #$03    
       STA    $DA     
       BNE    LF9D5   
LF9CE: LDY    #$01    
       STY    $E0     
       DEY            
       STY    $DA     
LF9D5: JMP    LF296   
LF9D8: LDX    #$1B    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMCLR   
       STA    WSYNC   
LF9E2: LDY    LFCAA,X 
       STY    $DD     
LF9E7: DEC    $83     
       LDY    #$00    
       DEC    $DD     
       STA    WSYNC   
       STY    ENAM1   
       BNE    LF9E7   
       LDA    LFCC6,X 
       STA    HMM1    
       AND    #$0F    
       TAY            
LF9FB: DEY            
       BPL    LF9FB   
       STY    RESM1   
       DEC    $83     
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$02    
       LDA    #$0F    
       STA    COLUP1  
       STY    ENAM1   
       DEX            
       BMI    LFA20   
       BNE    LF9E2   
       DEC    $83     
       STA    WSYNC   
       STX    ENAM1   
       LDY    #$07    
       JSR    LFA97   
       BMI    LF9E2   
LFA20: LDY    #$00    
LFA22: DEC    $83     
LFA24: BEQ    LF9D5   
       STA    WSYNC   
       STY    ENAM1   
       BNE    LFA22   
LFA2C: LDA    #$00    
       STA    REFP1   
       STA    REFP0   
       STA    WSYNC   
       DEC    $83     
       LDA    $D4     
       AND    #$01    
       BEQ    LF9D8   
       LDA    $E0     
       BNE    LFA43   
       JMP    LF983   
LFA43: STA    WSYNC   
       LDX    #$05    
       STA    HMCLR   
LFA49: LDY    $A1,X   
       STY    $DD     
LFA4D: DEC    $83     
       BEQ    LFA24   
       DEC    $DD     
       STA    WSYNC   
       BNE    LFA4D   
       LDA    $F5,X   
       STA    NUSIZ0  
       STA    NUSIZ1  
       DEC    $83     
       BEQ    LFA24   
       LDA    $C1,X   
       STA    $86     
       STA    $88     
       LDA    LFE73,X 
       STA    $AA     
       DEC    $83     
       STA    WSYNC   
       BEQ    LFA24   
       LDA    $B1,X   
       STA    HMP0    
       STA    HMP1    
       AND    #$0F    
       TAY            
LFA7B: DEY            
       BPL    LFA7B   
       STY    RESP1   
       NOP            
       STY    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDY    LFCE2,X 
       JSR    LFA97   
       BPL    LFA94   
       DEX            
       BPL    LFA49   
       BMI    LFA22   
LFA94: JMP    LF296   
LFA97: DEC    $83     
       BEQ    LFAB0   
       LDA    ($AA),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($88),Y 
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($86),Y 
       STA    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LFA97   
LFAB0: RTS            

LFAB1: DEC    $9F     
       LDA    SWCHB   
       LSR            
       BCS    LFAC3   
LFAB9: LDY    #$80    
       STY    $D4     
       INY            
       STY    $EE     
       JMP    LF435   
LFAC3: LDX    #$05    
       LDA    $E0     
       BEQ    LFB04   
       INC    $A1,X   
       LDA    $A1,X   
       CMP    #$3A    
       BEQ    LFAEB   
       CMP    #$A7    
       BEQ    LFAF1   
       LDA    $9F     
       AND    #$03    
       BEQ    LFADE   
       JSR    LFEC5   
LFADE: DEX            
       BMI    LFB04   
       INC    $A1,X   
       INC    $E1     
       JSR    LFEC5   
       JMP    LFADE   
LFAEB: LDX    #$04    
       LDA    #$2E    
       BNE    LFB01   
LFAF1: LDA    $E0     
       BEQ    LFAFD   
       BIT    $D4     
       BVS    LFAFD   
       DEC    $D9     
       BMI    LFAB9   
LFAFD: LDX    #$05    
       LDA    #$00    
LFB01: JSR    LFED2   
LFB04: LDA    $D4     
       AND    #$FE    
       STA    $D4     
       LDA    #$01    
       STA    $E1     
       AND    $9F     
       ORA    $D4     
       STA    $D4     
       AND    #$01    
       BNE    LFB2C   
       LDA    #$64    
       STA    $AA     
       LDA    #$99    
       STA    $88     
       LDA    #$99    
       STA    $86     
       LDA    #$86    
       STA    $80     
       LDA    #$06    
       STA    $C0     
LFB2C: JMP    LF7AC   
LFB2F: .byte $66,$ED,$FB,$F9,$FD,$35,$00,$1D,$17,$1D,$13
LFB3A: .byte $30,$14,$14,$14,$14,$14
LFB40: .byte $40,$0E,$04,$03,$02,$04
LFB46: .byte $08,$06
LFB48: .byte $08,$06,$0F,$0F,$07,$0F
LFB4E: .byte $07,$00,$00,$00,$00,$00
LFB54: .byte $01,$07,$03,$FF,$07,$03
LFB5A: .byte $04,$04,$04,$08,$01,$04
LFB60: .byte $0E,$10,$08,$10,$10,$08,$00,$1F,$19,$1F,$19,$1F,$19,$1F,$19,$1C
       .byte $16,$1C,$16,$1C,$16,$1C,$16,$1C,$12,$1C,$12,$1C,$12,$1C,$12,$1C
       .byte $14,$1C,$14,$1C,$14,$1C,$14,$1F,$19,$1F,$19,$1F,$19,$1F,$19,$1C
       .byte $14,$1C,$14,$1C,$14,$1C,$14,$1C,$12,$1C,$12,$1C,$12,$1C,$12,$1C
       .byte $14,$1C,$14,$1C,$14,$1C,$14,$00,$0D,$0E,$0E,$0E,$14,$54,$16,$0E
       .byte $16,$0E,$16,$54,$0E,$0E,$10,$0E,$12,$54,$16,$0E,$19,$0E,$1C,$54
       .byte $0D,$0E,$0E,$0E,$14,$54,$0D,$0E,$0E,$0E,$10,$54,$0E,$0E,$10,$0E
       .byte $12,$54,$16,$0E,$19,$0E,$1C,$54,$00,$13,$10,$13,$10,$13,$10,$13
       .byte $10,$13,$10,$13,$10,$16,$08,$13,$08,$16,$08,$13,$08,$00,$17,$20
       .byte $1A,$20,$17,$40,$16,$20,$16,$20,$17,$30,$1A,$10,$D7,$43,$F8,$DF
       .byte $00,$FF,$FF,$C3,$FF,$FF,$58,$3C,$7E,$7E,$FF,$FF,$7E,$7E,$3C,$18
       .byte $00,$06,$04,$34,$14,$14,$3C,$18,$3C,$7E,$FF,$FF,$FF,$FF,$E7,$42
       .byte $00,$FF,$FF,$C3,$FF,$FF,$58,$3C,$7E,$7E,$FF,$FF,$7E,$7E,$3C,$18
       .byte $00,$A5,$FF,$FF,$A5,$FF,$FF,$A5,$FF,$FF,$A5,$FF,$FF,$A5,$FF,$FF
       .byte $00,$66,$7E,$66,$3C,$7E,$5A,$E7,$FF,$BB,$99,$7E,$FF,$7E,$7E,$7E
       .byte $00,$70,$70,$2E,$2E,$A4,$BD,$B5,$EF,$FF,$3C,$24,$3C,$24,$42,$80
       .byte $00,$5A,$FF,$99,$BD,$66,$BD,$99,$99,$99,$99,$99,$99,$99,$7E,$3C
       .byte $00,$70,$37,$36,$36,$3C,$7E,$E7,$DB,$BD,$FF,$DB,$7E,$7E,$7E,$DB
       .byte $00,$0F,$0F,$1F,$1D,$39,$79,$7A,$E2,$E2,$CE,$CE,$F1,$F0,$D0,$D0
       .byte $10,$10,$18,$08,$0C,$0E,$07,$01,$01,$00,$C1,$03,$07,$3F,$07,$03
       .byte $01,$00,$80,$60,$70,$38,$1E,$0F,$0F,$07
LFCAA: .byte $05,$07,$03,$01,$01,$01,$01,$02,$07,$10,$01,$09,$02,$01,$04,$01
       .byte $09,$05,$05,$02,$04,$01,$08,$06,$03,$05,$05,$01
LFCC6: .byte $76,$98,$80,$A0,$C0,$B0,$C0,$D0,$B0,$86,$B2,$49,$82,$69,$43,$93
       .byte $F3,$54,$A3,$91,$52,$B1,$81,$81,$72,$42,$45,$56
LFCE2: .byte $08,$08,$08,$08,$08,$18
LFCE8: .byte $69,$78,$96,$96,$B4,$28,$B4,$07
LFCF0: .byte $88,$78,$68,$68,$48,$80,$48,$70
LFCF8: .byte $06,$03,$00,$00,$20,$00,$00,$99,$00,$04,$04,$04,$04,$04,$04,$EE
       .byte $EE,$EE,$EE,$EE,$EE,$EE,$EE,$EE,$00,$28,$28,$28,$28,$28,$0C,$46
       .byte $46,$46,$46,$46,$46,$46,$46,$46,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$18,$18,$18,$18,$18
       .byte $18,$18,$18,$18,$18,$18,$18,$18,$00,$EA,$EA,$EA,$28,$28,$28,$28
       .byte $28,$28,$28,$28,$88,$88,$88,$88,$00,$A8,$A8,$A8,$A8,$A8,$A8,$A8
       .byte $A8,$A8,$A8,$A8,$A8,$E6,$E6,$EE,$00,$1A,$1A,$1A,$1A,$1A,$1A,$1A
       .byte $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$00,$44,$44,$44,$44,$28,$28,$28
       .byte $28,$28,$28,$28,$28,$EA,$EA,$EA,$00,$1F,$1F,$1F,$1F,$1F,$1F,$1F
       .byte $1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F
       .byte $1F,$00,$46,$36,$36,$1A,$36,$36,$46,$00,$44,$44,$46,$46,$46,$46
       .byte $46,$46,$48
LFDAB: .byte $CD,$EE,$EE,$FE,$EF,$FF,$F0,$FF,$FF,$F0,$FF,$F0,$F0,$F0,$F0,$0F
       .byte $0F,$0F,$0F,$00,$F0,$00,$F0,$00,$F0,$00,$0F,$00,$00,$0F,$00,$00
       .byte $00,$F0,$00,$00,$00
LFDD0: .byte $60,$68,$70,$78,$80,$08,$10
LFDD7: .byte $10,$18,$20,$28,$30
LFDDC: .byte $64,$78,$96,$C8,$FF
LFDE1: .byte $03,$07
LFDE3: .byte $07,$0F
LFDE5: .byte $14,$0A
LFDE7: .byte $3C,$28
LFDE9: .byte $FB,$FB,$FB,$FB,$FB,$FB
LFDEF: .byte $A7,$D8,$D8,$D8,$D8,$D8
LFDF5: .byte $FB,$FB,$FD,$FE,$FE,$FB,$00,$0E,$10,$13,$1D,$00,$04,$06,$06,$04
       .byte $24,$24,$6C,$6C,$68,$38,$38,$38,$38,$FE,$BA,$BA,$BA,$FE,$7C,$18
       .byte $3C,$3C,$3C,$18,$00,$E0,$E0,$C0,$C0,$C8,$C8,$4E,$6F,$63,$67,$3E
       .byte $3C,$38,$B8,$B8,$BC,$BA,$F9,$F8,$7C,$3C,$1E,$1C,$0C,$00,$07,$06
       .byte $06,$1E,$9E,$B6,$E6,$CE,$8E,$1E,$1C,$1C,$1C,$5F,$5F,$5C,$5C,$7C
       .byte $3C,$3E,$1E,$0F,$0E,$06,$00,$C0,$C0,$C0,$80,$F0,$F0,$18,$18,$0E
       .byte $06,$03,$03,$81,$81,$41,$21,$31,$0B,$0E,$0E,$0E,$0C,$F0,$F0,$00
       .byte $80,$C0,$E0,$FC,$E0,$C0,$83
LFE6C: .byte $00,$00,$00,$00,$00,$05,$00
LFE73: .byte $00,$79,$79,$79,$79,$4B,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFE82: .byte $9F,$04,$03,$02,$01,$01
LFE88: .byte $00,$55,$62,$6F,$7B,$81
LFE8E: .byte $00,$A1,$A1,$A1,$A1,$80
LFE94: .byte $00,$10,$10,$30,$40,$50,$70,$10,$30,$40,$00,$50,$40,$10,$00,$10
LFEA4: .byte $00,$01,$01,$00,$00,$01,$01,$00,$00,$84,$84,$84,$84,$84,$84,$84
       .byte $84,$84,$84,$84,$84,$84,$C8,$C8,$C8,$C8,$C8,$C8,$26,$26,$26,$26
       .byte $26
LFEC5: LDA    $EE,X   
       SEC            
       SBC    $E1     
       STA    $EE,X   
       JSR    LFFE5   
       STA    $B1,X   
       RTS            

LFED2: STA    $84     
LFED4: LDA    LFE82,X 
       STA    $A1,X   
       LDA    LFE88,X 
       SEC            
       SBC    $84     
       STA    $EE,X   
       JSR    LFFE5   
       STA    $B1,X   
       LDA    LFE6C,X 
       STA    $F5,X   
       LDA    LFE8E,X 
       STA    $C1,X   
       DEX            
       BPL    LFED4   
       STX    $DE     
       INX            
       STX    $82     
       RTS            

LFEF9: .byte $00,$07,$08,$09,$00,$0B,$07,$78,$CC,$CC,$CC,$CC,$CC,$CC,$78,$78
       .byte $30,$30,$30,$30,$30,$70,$30,$FC,$C0,$C0,$78,$0C,$0C,$8C,$78,$78
       .byte $8C,$0C,$18,$18,$0C,$8C,$78,$18,$18,$18,$FC,$98,$58,$38,$18,$F8
       .byte $8C,$0C,$0C,$F8,$C0,$C0,$FC,$78,$CC,$CC,$CC,$78,$C0,$C4,$78,$30
       .byte $30,$30,$30,$18,$0C,$84,$FC,$78,$CC,$CC,$78,$78,$CC,$CC,$78,$78
       .byte $8C,$0C,$7C,$CC,$CC,$CC,$78,$00,$00,$00,$00,$00,$00,$00,$00,$28
       .byte $28,$FE,$2A,$FE,$A8,$FC,$28,$00,$E7,$A5,$21,$E7,$84,$A5,$E7,$00
       .byte $E3,$A4,$24,$24,$24,$24,$F3,$00,$A4,$A4,$AA,$CA,$AA,$A9,$E9,$00
       .byte $97,$95,$B1,$B7,$D4,$D5,$97,$00,$E4,$A4,$24,$E7,$85,$A5,$E7
LFF88: LDA    LFDE9,Y 
       STA    $C9     
       LDA    LFDEF,Y 
       STA    $C8     
       LDA    LFB46,Y 
       STA    $D0     
       LDA    #$00    
       STA    AUDV0   
       STA    $BE     
       LDA    LFB3A,Y 
       STA    $BC     
       RTS            

LFFA3: LDA    #$55    
       STA    $F6     
       STA    $F8     
       STA    $CE     
       STA    $CF     
       LDA    #$8D    
       STA    $A8     
       LDY    #$00    
       STY    $AA     
       LDY    #$00    
       STY    $BB     
       STY    $DA     
       STY    $F5     
       STY    $F9     
       STY    $FA     
       STY    $F7     
       STY    $FB     
       DEY            
       STY    $A9     
       STY    $DC     
       STY    $F4     
       RTS            

LFFCD: LDA    $BA     
       BEQ    LFFE4   
       LDX    #$06    
LFFD3: LDY    $90,X   
       LDA    $97,X   
       STY    $97,X   
       STA    $90,X   
       DEX            
       BPL    LFFD3   
       LDA    $9E     
       EOR    #$01    
       STA    $9E     
LFFE4: RTS            

LFFE5: LDY    #$FF    
       SEC            
LFFE8: INY            
       SBC    #$0F    
       BCS    LFFE8   
       STY    $85     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $85     
       RTS            

LFFFA: .byte $00,$0F,$00,$F0
LFFFE: .byte $82,$42
