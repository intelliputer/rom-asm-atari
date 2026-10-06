; Disassembly of roms/Space War.bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Space War.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
CTRLPF  =  $0A
REFP0   =  $0B
PF0     =  $0D
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
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
VDELBL  =  $27
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
CXCLR   =  $2C
CXM0P   =  $30
CXP0FB  =  $32
CXM0FB  =  $34
INPT4   =  $3C
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
       LDA    #$17    
       STA    $84     
       JSR    LF092   
       JSR    LF10F   
       LDA    #$F7    
       STA    $89     
       STA    $8B     
       LDA    #$00    
       STA    ENABL   
       STA    VDELP0  
       STA    VDELP1  
       STA    VDELBL  
       STA    HMBL    
       STA    PF0     
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$03    
LF02B: LDA    LF7C3,X 
       STA    $DC,X   
       STA    COLUP0,X
       DEX            
       BPL    LF02B   
LF035: JSR    LF041   
       JSR    LF17D   
       JSR    LF391   
       JMP    LF035   
LF041: INC    $82     
LF043: LDA    INTIM   
       BNE    LF043   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDX    #$03    
       LDY    #$0D    
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF06E   
       LDA    $98     
       BEQ    LF079   
       LDY    #$03    
LF06E: LDA    LF7C3,Y 
       STA    COLUP0,X
       DEY            
       DEX            
       BPL    LF06E   
       BMI    LF089   
LF079: LDA    $82     
       BNE    LF089   
LF07D: LDA    $DC,X   
       CLC            
       ADC    #$6E    
       STA    $DC,X   
       STA    COLUP0,X
       DEX            
       BPL    LF07D   
LF089: LDA    SWCHB   
       LSR            
       BCC    LF092   
       JMP    LF0CD   
LF092: LDA    #$FF    
       LDX    #$0C    
LF096: STA    $98,X   
       DEX            
       BPL    LF096   
       LDX    #$74    
       STX    $80     
       LDA    #$00    
       LDX    $CF     
       BPL    LF0AD   
       STA    $9B     
       STA    $9C     
       STA    $99     
       STA    $9A     
LF0AD: STA    CXCLR   
       LDX    #$25    
LF0B1: STA    $A5,X   
       DEX            
       BPL    LF0B1   
       LDX    #$01    
LF0B8: LDA    LF7D7,X 
       STA    $AB,X   
       LDA    LF7D9,X 
       STA    $AF,X   
       LDA    LF7E1,X 
       STA    $86,X   
       DEX            
       BPL    LF0B8   
       JMP    LF140   
LF0CD: LDY    #$00    
       LDA    $98     
       BPL    LF0E1   
       LDA    $80     
       CMP    #$FC    
       BCC    LF0E1   
       LDA    $82     
       AND    #$30    
       BNE    LF0E1   
       LDY    #$09    
LF0E1: STY    $85     
       LDA    $82     
       BNE    LF0F3   
       LDA    $98     
       BEQ    LF0F3   
       INC    $80     
       BNE    LF0F3   
       LDA    #$00    
       STA    $98     
LF0F3: LDA    SWCHB   
       AND    #$02    
       BEQ    LF0FF   
       LDA    #$FF    
       STA    $D9     
LF0FE: RTS            

LF0FF: LDA    $D9     
       BMI    LF109   
       EOR    $82     
       AND    #$1F    
       BNE    LF0FE   
LF109: LDA    $82     
       AND    #$3F    
       STA    $D9     
LF10F: STA    WSYNC   
       LDA    #$00    
       STA    $98     
       LDA    #$FF    
       STA    $A8     
       LDA    #$00    
       STA    $99     
       STA    $9A     
       STA    $9B     
       STA    $9C     
       INC    $83     
       SED            
       LDA    $84     
       CLC            
       ADC    #$01    
       CLD            
       STA    $84     
       CMP    #$18    
       STA    RESBL   
       BNE    LF13C   
       LDA    #$01    
       STA    $84     
       LDA    #$00    
       STA    $83     
LF13C: LDA    $84     
       STA    $A7     
LF140: LDA    #$02    
       STA    RESMP0  
       STA    RESMP1  
       LDX    $83     
       LDA    LF742,X 
       LDX    #$07    
LF14D: STA    $CB,X   
       ROL            
       DEX            
       BPL    LF14D   
       LDA    $CF     
       BPL    LF17B   
       LDX    #$00    
       JSR    LF6F0   
       LDA    $AB     
       STA    $AD     
       LDA    #$30    
       STA    $B1     
       LDA    $D1     
       BPL    LF17B   
       LDX    #$01    
       JSR    LF6F0   
       LDA    $AC     
       STA    $AE     
       LDA    #$30    
       STA    $B2     
       LDA    $B6     
       EOR    #$FF    
       STA    $B6     
LF17B: RTS            

LF17C: RTS            

LF17D: LDA    $98     
       BPL    LF17C   
       LDA    $D0     
       BPL    LF188   
       JMP    LF2C3   
LF188: LDA    SWCHA   
       LDX    #$01    
LF18D: AND    #$0F    
       STA    $D3     
       LDA    $CB     
       BMI    LF1D0   
       LDY    $A9,X   
       BPL    LF1B3   
       LDA    $82     
       AND    #$03    
       BNE    LF1B3   
       DEC    $9D,X   
       BNE    LF1B3   
       ASL    $9B,X   
       BNE    LF1B3   
LF1A7: TXA            
       TAY            
       JSR    LF6B3   
       LDA    #$02    
       STA    $A9,X   
       JMP    LF1D0   
LF1B3: LDA    $D3     
       EOR    #$0D    
       BNE    LF1CB   
       TYA            
       AND    #$02    
       BNE    LF1D0   
       TYA            
       EOR    #$82    
       STA    $A9,X   
       BPL    LF1D0   
       ASL    $9B,X   
       BNE    LF1D0   
       BEQ    LF1A7   
LF1CB: TYA            
       AND    #$80    
       STA    $A9,X   
LF1D0: LDA    $A9,X   
       BPL    LF1D7   
       JMP    LF2BF   
LF1D7: LDA    $CF     
       ORA    INPT4,X 
       BMI    LF22B   
       LDA    $9F,X   
       BPL    LF22B   
       LDA    $99,X   
       BEQ    LF22B   
       LDA    #$7F    
       STA    $9F,X   
       LDA    $AB,X   
       STA    $AD,X   
       LDA    #$00    
       STA    RESMP0,X
       LDA    $AF,X   
       CLC            
       ADC    #$02    
       STA    $B1,X   
       LDA    $C3,X   
       STA    $C5,X   
       LDA    $C7,X   
       STA    $C9,X   
       LDY    $86,X   
       LDA    LF7E8,Y 
       SEC            
       BMI    LF209   
       CLC            
LF209: ROR            
       CLC            
       ADC    $B7,X   
       STA    $B9,X   
       TYA            
       CLC            
       ADC    #$04    
       AND    #$0F    
       TAY            
       LDA    LF7E8,Y 
       SEC            
       BMI    LF21D   
       CLC            
LF21D: ROR            
       CLC            
       ADC    $B3,X   
       STA    $B5,X   
       LDA    #$00    
       STA    $BD,X   
       STA    $C1,X   
       ASL    $99,X   
LF22B: LDA    $D3     
       LSR            
       LSR            
       DEC    $96,X   
       CMP    #$01    
       BEQ    LF247   
       CMP    #$02    
       BEQ    LF23F   
       LDA    #$00    
       STA    $96,X   
       BEQ    LF257   
LF23F: LDA    $96,X   
       BPL    LF257   
       INC    $86,X   
       BPL    LF24D   
LF247: LDA    $96,X   
       BPL    LF257   
       DEC    $86,X   
LF24D: LDA    $86,X   
       AND    #$0F    
       STA    $86,X   
       LDA    #$07    
       STA    $96,X   
LF257: LDA    $CF     
       BMI    LF25F   
       LDA    $9B,X   
       BEQ    LF29E   
LF25F: LDA    $D3     
       AND    #$01    
       BNE    LF29E   
       LDA    #$FF    
       STA    $DA,X   
       LDA    $82     
       AND    #$03    
       BNE    LF29E   
       LDY    $86,X   
       LDA    LF7E8,Y 
       BPL    LF278   
       DEC    $B7,X   
LF278: CLC            
       ADC    $BF,X   
       STA    $BF,X   
       BCC    LF281   
       INC    $B7,X   
LF281: TYA            
       CLC            
       ADC    #$04    
       AND    #$0F    
       TAY            
       LDA    LF7E8,Y 
       BPL    LF28F   
       DEC    $B3,X   
LF28F: CLC            
       ADC    $BB,X   
       STA    $BB,X   
       BCC    LF298   
       INC    $B3,X   
LF298: DEC    $9D,X   
       BNE    LF29E   
       ASL    $9B,X   
LF29E: LDA    SWCHB   
       STA    $D8     
       LDA    CXM0P,X 
       BMI    LF2CF   
       ROL            
       BMI    LF2E1   
       LDA    CXP0FB,X
       ROL            
       BPL    LF2B2   
       JMP    LF34A   
LF2B2: LDA    CXM0FB,X
       ROL            
       BPL    LF2BF   
       LDA    $CF     
       BMI    LF2BF   
       LDA    #$02    
       STA    RESMP0,X
LF2BF: TXA            
       BNE    LF2C3   
       RTS            

LF2C3: LDX    #$00    
       LDA    SWCHA   
       ROR            
       ROR            
       ROR            
       ROR            
       JMP    LF18D   
LF2CF: TXA            
       EOR    #$01    
       TAY            
       LDA    $D1     
       BMI    LF2BF   
       LDA    $CF     
       BMI    LF304   
       LDA    #$02    
       STA    RESMP0,X
       BNE    LF2FE   
LF2E1: TXA            
       TAY            
       LDA    $CF     
       BMI    LF304   
       LDA    #$7F    
       SEC            
       SBC    $9F,X   
       AND    #$F8    
       BEQ    LF2BF   
       LDA    #$02    
       STA    RESMP0,X
       CPX    #$00    
       BNE    LF2FA   
       ROL    $D8     
LF2FA: BIT    $D8     
       BPL    LF2BF   
LF2FE: JSR    LF6B3   
       JMP    LF2BF   
LF304: LDA.wy $009F,Y 
       BPL    LF2BF   
       LDA.wy $00B3,Y 
       SEC            
       SBC    $B5,X   
       BPL    LF316   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF316: STA    $D3     
       LDA.wy $00B7,Y 
       SEC            
       SBC    $B9,X   
       BPL    LF325   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF325: CLC            
       ADC    $D3     
       CPY    #$00    
       BNE    LF32E   
       ROL    $D8     
LF32E: BIT    $D8     
       BMI    LF334   
       AND    #$F0    
LF334: AND    #$FE    
       BNE    LF2BF   
       JSR    LF6DC   
       JSR    LF6F0   
       LDA    #$7F    
       STA.wy $009F,Y 
LF343: JMP    LF2BF   
LF346: TXA            
       TAY            
       BPL    LF2FE   
LF34A: LDA    $CF     
       BMI    LF343   
       LDA    LF7D7,X 
       STA    $AB,X   
       LDA    LF7D9,X 
       STA    $AF,X   
       LDA    #$00    
       STA    $C3,X   
       STA    $C7,X   
       STA    $B3,X   
       STA    $B7,X   
       STA    $BB,X   
       STA    $BF,X   
       LDA    #$FF    
       STA    $A3,X   
       LDA    $CC     
       BPL    LF346   
       LDA    $B3,X   
       BPL    LF377   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF377: STA    $D3     
       LDA    $B7,X   
       BPL    LF382   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF382: ADC    $D3     
       AND    #$FC    
       BNE    LF346   
       LDA    #$FF    
       STA    $9B,X   
       STA    $99,X   
       JMP    LF2BF   
LF391: LDX    #$01    
       LDA    $D0     
       BMI    LF39B   
LF397: LDA    $A9,X   
       BPL    LF39F   
LF39B: LDA    #$3D    
       BNE    LF3C5   
LF39F: LDA    $86,X   
       CMP    #$04    
       BPL    LF3B0   
LF3A5: EOR    #$FF    
       SEC            
       ADC    #$14    
       AND    #$0F    
       LDY    #$08    
       BNE    LF3B9   
LF3B0: CMP    #$0D    
       BPL    LF3A5   
       SEC            
       SBC    #$04    
       LDY    #$00    
LF3B9: STA    $D3     
       STY    REFP0,X 
       ASL            
       ASL            
       CLC            
       ADC    $D3     
       CLC            
       ADC    #$10    
LF3C5: STX    $D5     
       CPX    #$00    
       BEQ    LF3E1   
       STA    $8A     
       LDA    $D0     
       BMI    LF3D5   
       LDA    $A8     
       BPL    LF3E3   
LF3D5: LDY    #$04    
       LDA    #$00    
LF3D9: STA.wy $0091,Y 
       DEY            
       BPL    LF3D9   
       BMI    LF442   
LF3E1: STA    $88     
LF3E3: LDA    $A7,X   
       AND    #$0F    
       STA    $D3     
       ASL            
       CLC            
       ADC    $D3     
       TAY            
       CPX    #$00    
       BEQ    LF3F4   
       LDX    #$05    
LF3F4: LDA    LF763,Y 
       ROR            
       ROR            
       ROR            
       ROR            
       AND    #$0F    
       STA    $8C,X   
       LDA    LF763,Y 
       AND    #$0F    
       BEQ    LF40D   
       INX            
       STA    $8C,X   
       INX            
       INY            
       BPL    LF3F4   
LF40D: LDY    $D5     
       LDA.wy $00A7,Y 
       ROR            
       ROR            
       ROR            
       ROR            
       AND    #$0F    
       BEQ    LF442   
       STA    $D3     
       ASL            
       CLC            
       ADC    $D3     
       ADC    #$02    
       TAY            
       BPL    LF435   
LF425: LDA    LF763,Y 
       ROL            
       ROL            
       ROL            
       ROL            
       AND    #$F0    
       BEQ    LF442   
       ORA    $8C,X   
       STA    $8C,X   
       DEX            
LF435: LDA    LF763,Y 
       DEY            
       AND    #$F0    
       ORA    $8C,X   
       STA    $8C,X   
       DEX            
       BPL    LF425   
LF442: LDX    $D5     
       LDA    $9F,X   
       BMI    LF464   
       BNE    LF462   
       LDA    $CF     
       BMI    LF462   
       LDA    #$02    
       STA    RESMP0,X
       LDA    $99     
       ORA    $9A     
       BNE    LF462   
       LDA    $98     
       BEQ    LF462   
       LDA    #$FF    
       STA    $99     
       STA    $9A     
LF462: DEC    $9F,X   
LF464: LDA    $A1,X   
       BMI    LF490   
       DEC    $A1,X   
       INC    $86,X   
       LDA    $86,X   
       AND    #$0F    
       STA    $86,X   
       LDA    $A1,X   
       AND    #$03    
       BNE    LF47E   
       LDA    $A5,X   
       EOR    #$7E    
       STA    $A5,X   
LF47E: LDA    $A1,X   
       SEC            
       SBC    #$2F    
       BMI    LF490   
       TAY            
       LDA    LF753,Y 
       PHA            
       LDY    #$10    
       LDA    #$08    
       BNE    LF4BF   
LF490: SEC            
       LDA    #$80    
       SBC    $9F,X   
       CMP    #$10    
       BEQ    LF4AD   
       BPL    LF4A9   
       TAY            
       LDA    #$07    
       PHA            
       LDA    #$08    
       BIT    $CF     
       BPL    LF4BF   
       LDA    #$09    
       BPL    LF4BF   
LF4A9: LDA    $DA,X   
       BMI    LF4B3   
LF4AD: LDA    #$00    
       STA    AUDV0,X 
       BEQ    LF4C6   
LF4B3: LDA    #$00    
       STA    $DA,X   
       LDA    #$02    
       PHA            
       LDY    LF7F8,X 
       LDA    #$08    
LF4BF: STY    AUDF0,X 
       STA    AUDC0,X 
       PLA            
       STA    AUDV0,X 
LF4C6: DEX            
       BMI    LF4CC   
       JMP    LF397   
LF4CC: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       LDY    #$03    
LF4D4: DEY            
       BPL    LF4D4   
       LDX    $A3     
       BMI    LF4DD   
       BPL    LF4DF   
LF4DD: STA    RESP0   
LF4DF: STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       TSX            
       LDY    $A4     
       BPL    LF4EE   
       STA    RESP1   
LF4EE: STA    CXCLR   
       LDA    #$02    
       STX    $D3     
       STA    CTRLPF  
       STA    $A3     
       STA    $A4     
LF4FA: LDA    INTIM   
       BNE    LF4FA   
       STA    WSYNC   
       STA    VBLANK  
       LDX    $85     
       BEQ    LF50E   
LF507: STA    WSYNC   
       DEX            
       BPL    LF507   
       BMI    LF53A   
LF50E: SEC            
       LDX    #$04    
LF511: STA    WSYNC   
       LDA    $8C,X   
       STA    PF1     
       LDY    LF7E3,X 
       LDA.wy $0000,Y 
       STA    PF2     
       NOP            
       LDA    $91,X   
       INC    $40     
       INC    $40     
       STA    PF1     
       LDA.wy $0001,Y 
       INC    $40     
       STA    PF2     
       BCS    LF537   
       SEC            
       DEX            
       BPL    LF511   
       BMI    LF53A   
LF537: CLC            
       BCC    LF511   
LF53A: LDA    #$00    
       STA    WSYNC   
       STA    PF1     
       STA    PF2     
       LDA    #$11    
       STA    CTRLPF  
       LDA    #$00    
       STA    $81     
LF54A: LDX    #$1E    
       TXS            
       SEC            
       LDA    $81     
       SBC    $AF     
       TAY            
       CMP    #$05    
       BCC    LF55B   
       LDA    #$00    
       BEQ    LF55F   
LF55B: LDA    ($88),Y 
       EOR    $A5     
LF55F: STA    WSYNC   
       STA    GRP0    
       LDA    $81     
       SEC            
       SBC    $B2     
       AND    #$FE    
       PHP            
       LDA    $81     
       SEC            
       SBC    $B1     
       AND    #$FE    
       PHP            
       LDA    $81     
       SEC            
       SBC    $B0     
       TAY            
       CMP    #$05    
       BCC    LF581   
       LDA    #$00    
       BEQ    LF585   
LF581: LDA    ($8A),Y 
       EOR    $A6     
LF585: STA    WSYNC   
       STA    GRP1    
       LDA    $CD     
       BMI    LF5A1   
       LDA    $81     
       EOR    #$2E    
       BNE    LF599   
       LDA    #$02    
       STA    ENABL   
       BNE    LF5A1   
LF599: LDA    $81     
       EOR    #$30    
       BNE    LF5A1   
       STA    ENABL   
LF5A1: INC    $81     
       LDA    $81     
       EOR    #$5E    
       BNE    LF54A   
       LDX    $D3     
       TXS            
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$1A    
       STA    TIM64T  
       LDX    #$07    
LF5B9: LDA    $B3,X   
       TAY            
       ROL            
       EOR    $B3,X   
       ROL            
       TYA            
       BCC    LF5C7   
       EOR    #$7F    
       STA    $B3,X   
LF5C7: ROR            
       ROR            
       ROR            
       ROR            
       AND    #$0F    
       CPY    #$00    
       BPL    LF5D3   
       ORA    #$F0    
LF5D3: STA    $D3     
       TYA            
       ROL            
       ROL            
       ROL            
       ROL            
       AND    #$F0    
       STA    $D4     
       LDA    $BB,X   
       ROR            
       ROR            
       ROR            
       ROR            
       AND    #$0F    
       ORA    $D4     
       CLC            
       ADC    $C3,X   
       STA    $C3,X   
       LDA    $AB,X   
       STA    $D5     
       ADC    $D3     
       STA    $AB,X   
       SEC            
       SBC    $D5     
       STA    $D7     
       LDY    #$5A    
       TXA            
       AND    #$FC    
       BNE    LF60B   
       LDA    $D7     
       ROL            
       ROL            
       ROL            
       ROL            
       STA    HMP0,X  
       LDY    #$9F    
LF60B: TYA            
       SEC            
       SBC    $AB,X   
       AND    #$F0    
       EOR    #$F0    
       BEQ    LF625   
       LDA    $AB,X   
       AND    #$F0    
       EOR    #$F0    
       BNE    LF654   
       BIT    $CE     
       BMI    LF62B   
       TYA            
       SEC            
       BCS    LF650   
LF625: LDA    $CE     
       BPL    LF64C   
       TYA            
       ASL            
LF62B: SEC            
       SBC    $AB,X   
       STA    $AB,X   
       CPY    #$9F    
       BNE    LF63D   
       SEC            
       SBC    $D5     
       ROL            
       ROL            
       ROL            
       ROL            
       STA    HMP0,X  
LF63D: LDA    #$00    
       SEC            
       SBC    $BB,X   
       STA    $BB,X   
       LDA    #$00    
       SBC    $B3,X   
       STA    $B3,X   
       BVC    LF654   
LF64C: TYA            
       EOR    #$FF    
       CLC            
LF650: ADC    $AB,X   
       STA    $AB,X   
LF654: DEX            
       BMI    LF65A   
       JMP    LF5B9   
LF65A: LDA    $CC     
       BPL    LF65F   
LF65E: RTS            

LF65F: LDA    $82     
       LSR            
       BCC    LF65E   
       AND    #$03    
       TAX            
       LDA    #$50    
       SEC            
       SBC    $AB,X   
       STA    $D3     
       BPL    LF675   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF675: LSR            
       LSR            
       LSR            
       STA    $D5     
       LDA    #$2C    
       SEC            
       SBC    $AF,X   
       STA    $D4     
       BPL    LF688   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF688: AND    #$F8    
       STA    $D6     
       LSR            
       LSR            
       LSR            
       STA    $D8     
       ASL            
       CLC            
       ADC    $D6     
       ADC    $D5     
       TAY            
       LDA    $D3     
       JSR    LF6C5   
       TXA            
       CLC            
       ADC    #$04    
       TAX            
       LDA    $D5     
       ASL            
       ASL            
       CLC            
       ADC    $D5     
       ASL            
       ADC    $D8     
       TAY            
       LDA    $D4     
       JSR    LF6C5   
       RTS            

LF6B3: LDA.wy $00A1,Y 
       BPL    LF6C4   
       LDA    #$3F    
       STA.wy $00A1,Y 
       TYA            
       EOR    #$01    
       TAY            
       JSR    LF6DC   
LF6C4: RTS            

LF6C5: ROL            
       LDA    LF781,Y 
       BCC    LF6D2   
       DEC    $B3,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF6D2: CLC            
       ADC    $BB,X   
       STA    $BB,X   
       BCC    LF6DB   
       INC    $B3,X   
LF6DB: RTS            

LF6DC: CLC            
       LDA    #$01    
       SED            
       ADC.wy $00A7,Y 
       CLD            
       STA.wy $00A7,Y 
       CMP    #$10    
       BNE    LF6C4   
       LDA    #$00    
       STA    $98     
       RTS            

LF6F0: LDA    $82     
       ROR            
       AND    #$07    
       BCS    LF6F9   
       ORA    #$78    
LF6F9: ROL            
       STA    $B5,X   
       LDA    $82     
       ROL            
       ROL            
       ROL            
       ROL            
       AND    #$07    
       BCS    LF708   
       ORA    #$78    
LF708: ROL            
       STA    $B9,X   
       LDA    #$00    
       STA    RESMP0,X
       RTS            

LF710: .byte $10,$10,$38,$38,$7C,$20,$30,$38,$3C,$30,$40,$30,$3C,$18,$10,$00
       .byte $40,$3E,$1C,$0C,$04,$1C,$FC,$1C,$04,$0C,$1C,$3E,$40,$00,$10,$18
       .byte $3C,$30,$40,$30,$3C,$38,$30,$20,$7C,$38,$38,$10,$10,$00,$00,$00
       .byte $00,$00
LF742: .byte $0F,$0E,$06,$08,$00,$0A,$02,$D7,$97,$D1,$D9,$9F,$DF,$B7,$B1,$BF
       .byte $B9
LF753: .byte $07,$07,$07,$00,$07,$07,$07,$00,$07,$07,$07,$07,$07,$07,$07,$07
LF763: .byte $EA,$AA,$E0,$22,$22,$20,$E8,$E2,$E0,$E2,$62,$E0,$22,$EA,$A0,$E2
       .byte $E8,$E0,$EA,$E8,$E0,$22,$22,$E0,$EA,$EA,$E0,$E2,$EA,$E0
LF781: .byte $FF,$87,$3C,$20,$13,$0D,$09,$07,$06,$04,$33,$3F,$28,$19,$11,$0C
       .byte $09,$07,$05,$04,$0C,$18,$17,$12,$0D,$0A,$08,$06,$05,$04,$05,$0B
       .byte $0D,$0C,$0A,$08,$06,$05,$04,$04,$02,$06,$07,$08,$07,$06,$05,$04
       .byte $04,$03,$01,$03,$05,$05,$05,$05,$04,$04,$03,$03,$01,$02,$03,$03
       .byte $04,$04
LF7C3: .byte $5A,$9A,$1E,$D0,$01,$01,$02,$02,$03,$03,$0E,$00,$0E,$06,$01,$01
       .byte $01,$02,$02,$02
LF7D7: .byte $72,$30
LF7D9: .byte $0C,$4E,$01,$01,$01,$01,$02,$02
LF7E1: .byte $0C,$04
LF7E3: .byte $99,$99,$40,$9B,$9B
LF7E8: .byte $00,$E5,$CD,$BE,$B8,$BE,$CD,$E5,$00,$1B,$33,$42,$48,$42,$33,$1B
LF7F8: .byte $07,$0A,$00,$F0,$00,$F0,$00,$F0
