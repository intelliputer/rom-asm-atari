; Disassembly of roms/Off Your Rocker.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Off Your Rocker.bin
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
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
$0285   =  $0285

       ORG $F000

START:
       LDA    LF00C   
       LDA    LF00C   
       LDA    LF00C   
       LDA    LF00C   
LF00C: SEI            
       CLD            
       LDA    #$00    
       LDX    #$FF    
       TXS            
LF013: STA    VSYNC,X 
       DEX            
       BNE    LF013   
       NOP            
       LDA    #$FF    
       STA    $83     
       STA    $85     
       STA    $87     
       STA    $89     
       STA    $8B     
       STA    $8D     
       STA    $8F     
       STA    $91     
       LDA    #$08    
       STA    $84     
       LDA    #$FE    
       STA    $AF     
       LDA    #$FC    
       STA    $A9     
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$30    
       STA    PF0     
       JSR    LF045   
       JMP    LF08B   
LF045: NOP            
       LDA    #$5C    
       STA    $A8     
       LDA    #$4A    
       STA    $AB     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$10    
       STA    $B9     
       LDA    #$8E    
       STA    $AC     
       LDA    #$70    
       STA    $AE     
       LDA    #$00    
       STA    $BD     
       STA    $BC     
       STA    AUDV0   
       STA    $A4     
       STA    $A3     
       STA    $A2     
       STA    $96     
       STA    $97     
       STA    $98     
       STA    $99     
       STA    $82     
       STA    $86     
       STA    $88     
       STA    $8A     
       STA    $8C     
       STA    $8E     
       STA    $90     
       LDA    #$0A    
       STA    $B2     
       STA    $B1     
       STA    $B3     
       RTS            

LF08B: STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$2A    
       STA    $029D   
       NOP            
       INC    $81     
LF09B: LDA    $0285   
       BPL    LF09B   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       LDA    #$23    
       STA    $029E   
       LDA    $A3     
       AND    #$04    
       BEQ    LF0EB   
       LDA    $81     
       AND    #$01    
       BEQ    LF0EB   
       INC    $BA     
       LDA    $BA     
       CMP    #$A0    
       BNE    LF0EB   
       LDA    $B4     
       AND    #$03    
       TAY            
       LDX    $B5     
       LDA    LFD00,X 
LF0CD: CPY    #$00    
       BEQ    LF0D7   
       LSR            
       LSR            
       DEY            
       JMP    LF0CD   
LF0D7: AND    #$03    
       STA    $A7     
       LDA    #$80    
       STA    $A3     
       LDA    #$00    
       LDX    $A5     
       STA    $96,X   
       STA    $A2     
       STA    $BA     
       DEC    $A6     
LF0EB: NOP            
       LDA    SWCHB   
       AND    #$02    
       BNE    LF0FC   
       JSR    LF045   
       LDA    $A4     
       ORA    #$02    
       STA    $A4     
LF0FC: LDA    SWCHB   
       AND    #$02    
       BEQ    LF126   
       LDA    $A4     
       BEQ    LF126   
       AND    #$02    
       BEQ    LF126   
       INC    $BB     
       LDA    $BB     
       CMP    #$04    
       BNE    LF115   
       LDA    #$00    
LF115: STA    $BB     
       TAX            
       LDA    #$00    
       CLC            
LF11B: ADC    #$08    
       DEX            
       BPL    LF11B   
       STA    $84     
       LDA    #$00    
       STA    $A4     
LF126: LDA    SWCHB   
       AND    #$01    
       BNE    LF133   
       LDA    $A4     
       ORA    #$01    
       STA    $A4     
LF133: LDA    SWCHB   
       AND    #$01    
       BEQ    LF16B   
       LDA    $A4     
       AND    #$01    
       BEQ    LF16B   
       JSR    LF045   
       LDA    #$00    
       STA    $84     
       LDA    $81     
       STA    $B4     
       STA    $B5     
       STA    $B6     
       LDA    $BB     
       CLC            
       ADC    #$01    
       STA    $A6     
       LDX    $BB     
       LDA    #$01    
LF15A: STA    $96,X   
       DEX            
       BPL    LF15A   
       LDA    #$03    
       STA    $A5     
       LDA    #$00    
       STA    AUDV0   
       LDA    #$40    
       STA    $A3     
LF16B: NOP            
       LDA    $81     
       AND    #$0F    
       BNE    LF183   
       LDX    #$03    
LF174: LDA    $96,X   
       AND    #$02    
       BEQ    LF17E   
       LDA    $9A,X   
       EOR    #$0F    
LF17E: STA    $9A,X   
       DEX            
       BPL    LF174   
LF183: NOP            
       LDA    #$44    
       STA    $A1     
       LDA    #$A4    
       STA    $9E     
       LDA    #$D4    
       STA    $A0     
       LDA    #$28    
       STA    $9F     
       LDA    $A2     
       AND    #$02    
       BEQ    LF1E7   
       LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BEQ    LF1E7   
       TAY            
       LDX    #$00    
LF1A6: AND    #$80    
       BPL    LF1B1   
       TYA            
       ASL            
       TAY            
       INX            
       JMP    LF1A6   
LF1B1: LDA    #$00    
       STA    $A3     
       STA    $BA     
       STX    $A7     
       TXA            
       CLC            
       CMP    #$03    
       BNE    LF1C4   
       ADC    #$0D    
       JMP    LF1D9   
LF1C4: CMP    #$02    
       BNE    LF1CD   
       ADC    #$12    
       JMP    LF1D9   
LF1CD: CMP    #$01    
       BNE    LF1D6   
       ADC    #$15    
       JMP    LF1D9   
LF1D6: SEC            
       ADC    #$12    
LF1D9: STA    AUDF0   
       LDA    #$FF    
       STA    AUDV0   
       LDA    $A2     
       AND    #$FD    
       ORA    #$01    
       STA    $A2     
LF1E7: NOP            
       LDA    $A2     
       AND    #$01    
       BNE    LF1F1   
       JMP    LF2BE   
LF1F1: INC    $B8     
       LDA    $B4     
       AND    #$03    
       TAY            
       LDX    $B5     
       LDA    LFD00,X 
LF1FD: CPY    #$00    
       BEQ    LF207   
       LSR            
       LSR            
       DEY            
       JMP    LF1FD   
LF207: AND    #$03    
       CMP    $A7     
       BEQ    LF239   
       LDX    $A5     
       LDA    #$00    
       STA    $96,X   
       STA    $B8     
       LDA    $A2     
       AND    #$FE    
       STA    $A2     
       LDA    $A3     
       ORA    #$80    
       STA    $A3     
       DEC    $A6     
       BIT    SWCHB   
       BVC    LF236   
       LDA    $B6     
       STA    $B4     
       STA    $B5     
       INC    $B6     
       LDA    #$00    
       STA    $BD     
       STA    $BC     
LF236: JMP    LF2BE   
LF239: TAX            
       LDA    $9E,X   
       ORA    #$0F    
       STA    $9E,X   
       LDA    LFE00,X 
       STA    $A8     
       LDA    $B8     
       CMP    #$20    
       BNE    LF2BE   
       LDA    #$5C    
       STA    $A8     
       INC    $B5     
       LDA    $B6     
       CMP    $B5     
       BEQ    LF26C   
       LDA    #$00    
       STA    AUDV0   
       STA    $B8     
       LDA    #$04    
       STA    $A3     
       LDA    $A2     
       AND    #$FE    
       ORA    #$02    
       STA    $A2     
       JMP    LF2BE   
LF26C: BIT    SWCHB   
       BVC    LF282   
       INC    $B6     
       LDA    #$10    
       STA    $A3     
       LDA    #$00    
       STA    $A2     
       LDA    $B4     
       STA    $B5     
       JMP    LF28E   
LF282: LDA    $A2     
       AND    #$FE    
       STA    $A2     
       LDA    $A3     
       ORA    #$40    
       STA    $A3     
LF28E: LDA    #$00    
       STA    $B8     
       STA    AUDV0   
       LDX    $A5     
LF296: BEQ    LF29F   
       CLC            
       ADC    #$04    
       DEX            
       JMP    LF296   
LF29F: TAX            
       LDA    $84,X   
       CLC            
       ADC    #$08    
       STA    $84,X   
       CMP    #$50    
       BNE    LF2BE   
       LDA    #$00    
       STA    $84,X   
       LDA    $82,X   
       CLC            
       ADC    #$08    
       STA    $82,X   
       CMP    #$50    
       BNE    LF2BE   
       LDA    #$00    
       STA    $82,X   
LF2BE: NOP            
       LDA    $A2     
       AND    #$04    
       BNE    LF2C8   
       JMP    LF34D   
LF2C8: LDA    #$5C    
       STA    $A8     
       LDA    #$FF    
       STA    AUDV0   
       LDA    $BD     
       BEQ    LF2D6   
       INC    $B8     
LF2D6: INC    $B8     
       LDA    $B4     
       AND    #$03    
       TAY            
       LDX    $B5     
       LDA    LFD00,X 
LF2E2: CPY    #$00    
       BEQ    LF2EC   
       LSR            
       LSR            
       DEY            
       JMP    LF2E2   
LF2EC: AND    #$03    
       TAX            
       LDA    $B8     
       CMP    #$20    
       BCS    LF327   
       LDA    $9E,X   
       ORA    #$0F    
       STA    $9E,X   
       LDA    LFE00,X 
       STA    $A8     
       TXA            
       CMP    #$00    
       BNE    LF30A   
       ADC    #$12    
       JMP    LF322   
LF30A: CMP    #$01    
       BNE    LF313   
       ADC    #$15    
       JMP    LF322   
LF313: CMP    #$02    
       BNE    LF31C   
       ADC    #$12    
       JMP    LF322   
LF31C: CMP    #$03    
       BNE    LF31C   
       ADC    #$0D    
LF322: STA    AUDF0   
       JMP    LF32B   
LF327: LDA    #$00    
       STA    AUDV0   
LF32B: LDA    $B8     
       CMP    #$30    
       BCC    LF34D   
       INC    $B5     
       LDA    #$00    
       STA    $B8     
       LDA    $B6     
       CMP    $B5     
       BNE    LF34D   
       LDA    $A2     
       AND    #$FB    
       ORA    #$02    
       STA    $A2     
       LDA    #$00    
       STA    $B8     
       LDA    $B4     
       STA    $B5     
LF34D: NOP            
       LDA    $A3     
       AND    #$80    
       BNE    LF357   
       JMP    LF3AA   
LF357: LDA    #$FF    
       STA    AUDV0   
       LDA    #$07    
       STA    AUDC0   
       STA    AUDF0   
       LDX    $A7     
       LDA    #$00    
       STA    $9E,X   
       LDA    $B8     
       BNE    LF36F   
       LDA    #$73    
       STA    $A8     
LF36F: LDA    $81     
       AND    #$07    
       BNE    LF382   
       LDA    $A8     
       CLC            
       ADC    #$17    
       CMP    #$A2    
       BCC    LF380   
       LDA    #$73    
LF380: STA    $A8     
LF382: INC    $B8     
       LDA    $B8     
       CMP    #$30    
       BNE    LF3AA   
       LDA    #$00    
       STA    $B8     
       STA    AUDV0   
       STA    $A3     
       LDA    #$40    
       STA    $A2     
       LDA    #$E6    
       STA    $A8     
       LDA    #$0F    
       STA    $B1     
       LDA    #$45    
       STA    $B3     
       LDA    #$00    
       STA    $B2     
       LDA    #$8E    
       STA    $AC     
LF3AA: NOP            
       LDA    $A2     
       AND    #$40    
       BEQ    LF3CA   
       INC    $AA     
       LDA    $AA     
       CMP    #$20    
       BCC    LF3C9   
       LDA    $A2     
       AND    #$BF    
       ORA    #$80    
       STA    $A2     
       LDA    #$08    
       STA    $A3     
       LDA    #$00    
       STA    $AA     
LF3C9: NOP            
LF3CA: NOP            
       LDA    $A2     
       AND    #$20    
       BEQ    LF406   
       LDA    $AA     
       BNE    LF3E1   
       LDA    #$8E    
       STA    $AB     
       LDA    #$00    
       STA    $B0     
       LDA    #$CF    
       STA    $A8     
LF3E1: INC    $AA     
       DEC    $AB     
       LDA    $81     
       AND    #$07    
       BNE    LF3F1   
       LDA    $A8     
       EOR    #$77    
       STA    $A8     
LF3F1: LDA    $AA     
       CMP    #$44    
       BNE    LF405   
       LDA    #$00    
       STA    $AA     
       STA    $A2     
       LDA    #$5C    
       STA    $A8     
       LDA    #$40    
       STA    $A3     
LF405: NOP            
LF406: NOP            
       LDA    $A2     
       AND    #$80    
       BEQ    LF42E   
       DEC    $AC     
       LDA    $AC     
       ADC    #$20    
       CMP    $AB     
       BNE    LF422   
       LDA    $A2     
       AND    #$7F    
       ORA    #$10    
       STA    $A2     
       JMP    LF42E   
LF422: LDA    $81     
       AND    #$07    
       BNE    LF42E   
       LDA    $AE     
       EOR    #$F0    
       STA    $AE     
LF42E: NOP            
       LDA    $A2     
       AND    #$10    
       BEQ    LF45A   
       LDA    $81     
       AND    #$03    
       BNE    LF43D   
       INC    $AC     
LF43D: LDA    $AC     
       CMP    $AB     
       BNE    LF44E   
       LDA    #$08    
       STA    $A2     
       LDA    #$0A    
       STA    $B0     
       JMP    LF45A   
LF44E: LDA    $81     
       AND    #$07    
       BNE    LF45A   
       LDA    $AE     
       EOR    #$F0    
       STA    $AE     
LF45A: NOP            
       LDA    $A2     
       AND    #$08    
       BEQ    LF491   
       DEC    $AC     
       LDA    $AC     
       CMP    #$00    
       BNE    LF485   
       LDA    #$20    
       STA    $A2     
       STA    AUDV0   
       STA    $A8     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$00    
       STA    $A3     
       LDA    #$8E    
       STA    $AC     
       LDA    #$0A    
       STA    $B1     
       STA    $B2     
       STA    $B3     
LF485: LDA    $81     
       AND    #$07    
       BNE    LF491   
       LDA    $AE     
       EOR    #$F0    
       STA    $AE     
LF491: NOP            
LF492: LDA    $0285   
       BPL    LF492   
       STA    WSYNC   
       LDA    #$0F    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$66    
       STA    COLUBK  
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    WSYNC   
       LDX    #$05    
       LDA    #$90    
       LDY    #$A0    
LF4B1: DEX            
       BNE    LF4B1   
       STX    RESP0   
       STX    RESP1   
       STA    HMP0    
       STY    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
LF4C2: STA    WSYNC   
       LDA    $9A     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($82),Y 
       STA    GRP0    
       LDA    ($84),Y 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $9B     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($88),Y 
       STA    GRP1    
       INY            
       CPY    #$08    
       BNE    LF4C2   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$0F    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$0A    
       STA    COLUBK  
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$27    
       LDY    #$26    
       STA    WSYNC   
LF504: LDA    LFF50,X 
       STA    PF2     
       LDA    ($81,X) 
       LDA    $81     
       NOP            
       NOP            
       LDA    $A1     
       STA    COLUPF  
       DEY            
       LDA    ($81,X) 
       LDA    ($81,X) 
       LDA    ($81,X) 
       LDA    ($81,X) 
       LDA    ($81,X) 
       LDA    #$00    
       STA    COLUPF  
       LDA    ($81,X) 
       NOP            
       DEX            
       BPL    LF504   
       LDA    #$00    
       STA    PF2     
       LDX    #$11    
LF52E: STX    WSYNC   
       DEX            
       BPL    LF52E   
       STA    WSYNC   
       SEC            
       LDA    $AB     
LF538: SBC    #$0F    
       BCS    LF538   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B0     
       STA    COLUP0  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUPF  
       STA    NUSIZ0  
       LDA    #$05    
       STA    NUSIZ1  
       LDY    #$27    
       STA    WSYNC   
LF560: LDA    LFFC8,Y 
       STA    PF1     
       CPY    #$17    
       BCC    LF56E   
       LDA    $80     
       JMP    LF570   
LF56E: LDA    ($A8),Y 
LF570: STA    GRP0    
       LDA    $9F     
       STA    COLUPF  
       LDA    ($81,X) 
       LDA    ($81,X) 
       LDA    $9E     
       STA    COLUPF  
       LDA    LFF78,Y 
       STA    PF1     
       LDA    ($81,X) 
       LDA    ($81,X) 
       LDA    $81     
       LDA    #$00    
       STA    COLUPF  
       DEY            
       BPL    LF560   
       LDA    #$00    
       STA    PF1     
       STA    GRP0    
       LDA    $B1     
       STA    COLUP1  
       STA    WSYNC   
       SEC            
       LDA    $AC     
LF59F: SBC    #$0F    
       BCS    LF59F   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       LDA    $AC     
       CLC            
       ADC    #$07    
       STA    $AD     
       STA    WSYNC   
       SEC            
       LDA    $AD     
LF5BD: SBC    #$0F    
       BCS    LF5BD   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $B3     
       STA    COLUP0  
       LDY    #$0F    
LF5D7: STA    WSYNC   
       LDA    ($AE),Y 
       STA    GRP0    
       LDA    LFE60,Y 
       STA    GRP1    
       DEY            
       CPY    #$06    
       BNE    LF5EB   
       LDA    $B2     
       STA    COLUP0  
LF5EB: TYA            
       BPL    LF5D7   
       STA    WSYNC   
       SEC            
       LDA    $AB     
LF5F3: SBC    #$0F    
       BCS    LF5F3   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    RESP0   
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$27    
       LDY    #$11    
       STA    WSYNC   
LF60D: LDA    LFFA0,X 
       STA    PF2     
       CPY    #$10    
       BCC    LF61B   
       LDA    ($81,X) 
       JMP    LF61F   
LF61B: LDA    ($A8),Y 
       LDA    GRP0    
LF61F: LDA    $A0     
       STA    COLUPF  
       DEY            
       LDA    ($81,X) 
       LDA    ($81,X) 
       LDA    ($81,X) 
       LDA    ($81,X) 
       LDA    ($81,X) 
       LDA    #$00    
       STA    COLUPF  
       LDA    ($81,X) 
       NOP            
       DEX            
       BPL    LF60D   
       LDA    #$00    
       STA    PF2     
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$0F    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$66    
       STA    COLUBK  
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       STA    WSYNC   
       LDX    #$05    
       LDA    #$90    
       LDY    #$A0    
LF662: DEX            
       BNE    LF662   
       STX    RESP0   
       STX    RESP1   
       STA    HMP0    
       STY    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDY    #$00    
LF679: STA    WSYNC   
       LDA    $9C     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $9D     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($8E),Y 
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       INY            
       CPY    #$08    
       BNE    LF679   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$0F    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$19    
       STA    $029E   
       LDA    $A3     
       AND    #$40    
       BEQ    LF6FD   
       LDA    $A6     
       BNE    LF6D5   
       LDA    #$02    
       STA    $96     
       STA    $97     
       STA    $98     
       STA    $99     
       LDA    #$00    
       STA    $A2     
       STA    $A3     
       JMP    LF6FD   
LF6D5: LDX    $A5     
       LDA    $96,X   
       AND    #$FD    
       STA    $96,X   
       INC    $A5     
       LDX    $A5     
       CPX    #$04    
       BNE    LF6EB   
       INC    $B6     
       LDX    #$00    
       STX    $A5     
LF6EB: LDA    $96,X   
       AND    #$01    
       BEQ    LF6D5   
       LDA    #$03    
       STA    $96,X   
       LDA    #$10    
       STA    $A3     
       LDA    $B4     
       STA    $B5     
LF6FD: NOP            
       LDA    $A3     
       AND    #$10    
       BEQ    LF737   
       BIT    SWCHB   
       BVS    LF716   
       LDA    $A6     
       CMP    #$01    
       BEQ    LF716   
       LDA    INPT4   
       BMI    LF737   
       JMP    LF72D   
LF716: LDA    $BC     
       BNE    LF725   
       LDA    INPT4   
       BMI    LF737   
       LDA    #$FF    
       STA    $BC     
       JMP    LF72D   
LF725: INC    $B8     
       LDA    $B8     
       CMP    #$60    
       BNE    LF737   
LF72D: LDA    #$00    
       STA    $B8     
       STA    $A3     
       LDA    #$04    
       STA    $A2     
LF737: NOP            
       LDA    $A3     
       AND    #$08    
       BEQ    LF754   
       LDA    #$05    
       STA    AUDC0   
       LDA    $81     
       AND    #$1F    
       BNE    LF754   
       LDA    #$FF    
       STA    AUDV0   
       LDA    $B9     
       EOR    #$08    
       STA    $B9     
       STA    AUDF0   
LF754: NOP            
       LDA    $B5     
       CLC            
       ADC    #$08    
       CMP    $B6     
       BNE    LF762   
       LDA    #$01    
       STA    $BD     
LF762: NOP            
LF763: LDA    $0285   
       BPL    LF763   
       JMP    LF08B   
LF76B: .byte $90,$05,$C6,$D5,$4C,$0A,$F8,$E6,$D5,$A5,$D5,$C9,$23,$D0,$F5,$A5
       .byte $A9,$38,$E9,$4F,$30,$12,$A9,$88,$85,$D7,$A5,$B4,$4A,$B0,$1D,$E6
       .byte $D7,$4A,$B0,$18,$E6,$D7,$D0,$14,$A9,$0A,$85,$D7,$A5,$B4,$29,$04
       .byte $D0,$0A,$C6,$D7,$A5,$B4,$29,$02,$D0,$02,$C6,$D7,$4C,$0A,$F8,$A5
       .byte $D8,$29,$0F,$F0,$0F,$A9,$80,$85,$D8,$A5,$D5,$C9,$22,$D0,$50,$C6
       .byte $D5,$4C,$0A,$F8,$20,$1E,$FB,$A5,$C9,$85,$D8,$A5,$CA,$29,$87,$85
       .byte $D7,$A5,$B0,$D0,$0C,$AD,$82,$02,$A6,$D3,$30,$01,$0A,$29,$80,$10
       .byte $14,$A5,$9F,$C9,$50,$90,$08,$A5,$D7,$29,$FB,$85,$D7,$D0,$06,$A5
       .byte $D7,$09,$04,$85,$D7,$A5,$D9,$D0,$0C,$A5,$B3,$85,$D9,$A5,$D8,$09
       .byte $80,$85,$D8,$D0,$0A,$C6,$D9,$F0,$F0,$A5,$D8,$29,$7F,$85,$D8,$A5
       .byte $AF,$C9,$04,$90,$35,$A5,$D5,$C9,$22,$90,$2F,$A5,$9F,$38,$E5,$A9
       .byte $38,$E9,$03,$10,$05,$49,$FF,$18,$69,$01,$C9,$06,$B0,$1C,$A2,$39
       .byte $20,$5D,$FB,$A9,$99,$20,$9A,$FA,$A9,$8F,$85,$A9,$A5,$C9,$29,$87
       .byte $85,$D7,$A9,$00,$85,$D8,$85,$D5,$85,$DA,$A5,$D5,$C9,$23,$F0,$2B
       .byte $C9,$22,$D0,$17,$A5,$DA,$D0,$0B,$A2,$40,$20,$5D,$FB,$A9,$1C,$85
       .byte $DA,$D0,$08,$C6,$DA,$A5,$DA,$D0,$02,$85,$DA,$A5,$D5,$C9,$07,$90
       .byte $0A,$A9,$87,$38,$E5,$D5,$85,$AB,$4C,$7A,$F8,$A9,$87,$85,$AB,$A6
       .byte $D5,$F0,$1C,$E0,$23,$F0,$27,$A9,$05,$E0,$07,$90,$02,$A9,$00,$85
       .byte $AA,$A5,$AB,$18,$69,$16,$85,$A7,$A5,$AC,$85,$A8,$4C,$B5,$F8,$A9
       .byte $05,$85,$AA,$A9,$87,$85,$A7,$A9,$FF,$85,$A8,$4C,$B5,$F8,$A9,$A9
       .byte $85,$A7,$A9,$FF,$85,$A8,$A9,$05,$85,$AA,$A5,$D5,$F0,$16,$C9,$07
       .byte $90,$12,$C9,$16,$B0,$1D,$A9,$00,$85,$AA,$A5,$AB,$38,$E9,$0C,$85
       .byte $AD,$4C,$E6,$F8,$A9,$AA,$85,$AD,$A9,$FF,$85,$AE,$A9,$05,$85,$AA
       .byte $4C,$E6,$F8,$A9,$87,$85,$AD,$A9,$FF,$85,$AE,$A5,$DA,$F0,$48,$C9
       .byte $15,$90,$0A,$A9,$CA,$85,$A7,$A9,$FF,$85,$A8,$D0,$14,$C9,$0E,$90
       .byte $0A,$A9,$D9,$85,$A7,$A9,$FF,$85,$A8,$D0,$06,$C9,$07,$90,$F2,$B0
       .byte $E2,$A5,$A9,$38,$E5,$9F,$B0,$11,$A5,$D7,$10,$1B,$29,$7F,$85,$D7
       .byte $E6,$A9,$A9,$08,$85,$D6,$4C,$32,$F9,$A5,$D7,$30,$0A,$09,$80,$85
       .byte $D7,$A9,$00,$85,$D6,$C6,$A9,$A6,$D5,$F0,$04,$E0,$23,$D0,$16,$A5
       .byte $CB,$29,$03,$D0,$13,$A5,$D4,$49,$FF,$85,$D4,$F0,$08,$A9,$BA,$E0
       .byte $00,$D0,$0A,$85,$AD,$4C,$18,$FA,$A5,$D4,$4C,$46,$F9,$85,$A7,$D0
       .byte $F4,$A9,$87,$85,$AD,$85,$AB,$85,$A7,$A9,$FF,$85,$AE,$85,$AC,$85
       .byte $A8,$A9,$88,$85,$CB,$A2,$57,$20,$5D,$FB,$4C,$16,$FA,$A5,$B4,$F0
       .byte $F9,$A5,$3C,$A6,$D3,$10,$02,$A5,$3D,$29,$80,$30,$C8,$A9,$07,$85
       .byte $D2,$4C,$18,$FA,$A6,$CD,$BD,$0A,$FD,$D0,$34,$A5,$3C,$30,$30,$A9
       .byte $00,$A2,$09,$95,$B0,$CA,$10,$FB,$A9,$07,$85,$B4,$85,$B9,$A9,$0F
       .byte $85,$B3,$85,$B8,$A5,$D3,$29,$0F,$85,$D3,$A9,$10,$85,$CB,$A9,$05
       .byte $85,$D2,$A2,$00,$20,$5D,$FB,$A2,$1F,$20,$5D,$FB,$4C,$96,$F5,$A5
       .byte $CB,$C9,$80,$D0,$48,$A5,$D3,$29,$01,$F0,$42,$C6,$D2,$4C,$F9,$F9
       .byte $A5,$D3,$29,$01,$F0,$04,$A5,$B9,$D0,$14,$A5,$B4,$D0,$2D,$A2,$82
       .byte $20,$5D,$FB,$A2,$95,$20,$5D,$FB,$A9,$0F,$85,$D2,$D0,$1F,$A5,$D3
       .byte $29,$01,$F0,$17,$A5,$D3,$49,$F0,$85,$D3,$A2,$04,$B5,$B0,$85,$C7
       .byte $B5,$B5,$95,$B0,$A5,$C7,$95,$B5,$CA,$10,$F1,$E6,$D2,$AD,$84,$02
       .byte $D0,$FB,$A9,$02,$85,$02,$85,$00,$A9,$16,$8D,$95,$02,$AD,$84,$02
       .byte $D0,$FB,$4C,$2B,$F0,$86,$1B,$86,$1C,$85,$02,$A9,$3D,$20,$84,$FA
       .byte $A9,$45,$E8,$20,$84,$FA,$86,$25,$86,$26,$A2,$03,$86,$04,$86,$05
       .byte $85,$02,$85,$2A,$A5,$C7,$85,$06,$85,$07,$B1,$C4,$85,$C7,$85,$02
       .byte $B1,$BA,$85,$1B,$B1,$BC,$85,$1C,$B1,$BE,$85,$1B,$B1,$C0,$AA,$B1
       .byte $C2,$84,$C8,$A4,$C7,$86,$1C,$85,$1B,$84,$1C,$84,$1B,$A4,$C8,$88
       .byte $10,$D8,$A9,$00,$85,$1B,$85,$1C,$60,$85,$02,$38,$E9,$0F,$B0,$FC
       .byte $49,$0F,$0A,$0A,$0A,$0A,$69,$90,$95,$10,$85,$02,$95,$20,$60,$F8
       .byte $A2,$02,$38,$75,$B0,$95,$B0,$90,$0A,$E0,$02,$F0,$08,$38,$A9,$00
       .byte $CA,$10,$F0,$D8,$60,$A5,$B1,$29,$01,$D0,$06,$C6,$B3,$D0,$02,$E6
       .byte $B3,$A5,$B1,$29,$0F,$C9,$04,$F0,$04,$C9,$09,$D0,$E0,$A5,$D3,$29
       .byte $0F,$C9,$02,$B0,$D8,$A5,$B4,$C9,$07,$F0,$D2,$A5,$DC,$10,$CE,$A9
       .byte $0C,$A4,$C9,$84,$DB,$08,$10,$02,$A9,$94,$85,$9C,$A9,$14,$28,$10
       .byte $02,$A9,$8C,$85,$DF,$98,$29,$7F,$C9,$14,$B0,$08,$A5,$DB,$29,$80
       .byte $09,$50,$85,$DB,$A9,$20,$85,$DE,$A9,$B6,$85,$98,$A9,$FE,$85,$99
       .byte $A9,$C9,$85,$9A,$A9,$FE,$85,$9B,$A9,$08,$85,$DC,$A9,$00,$85,$E0
       .byte $4C,$A8,$FA,$A6,$CA,$A4,$C9,$26,$C9,$26,$CA,$A5,$C9,$69,$C3,$85
       .byte $C9,$98,$45,$C9,$85,$C9,$8A,$45,$CA,$85,$CA,$60,$4A,$4A,$A8,$C9
       .byte $14,$90,$02,$E9,$14,$A2,$00,$C0,$04,$90,$15,$E8,$C0,$0C,$90,$10
       .byte $E8,$C0,$14,$90,$0B,$E8,$C0,$18,$90,$06,$E8,$C0,$20,$90,$01,$E8
       .byte $A8,$60,$84,$C8,$E6,$D1,$A9,$01,$25,$D1,$A8,$BD,$0A,$FD,$99,$15
       .byte $00,$E8,$96,$CD,$A4,$C8,$60,$A2,$01,$B5,$CF,$F0,$06,$D6,$CF,$CA
       .byte $10,$F7,$60,$B4,$CD,$A9,$08,$95,$19,$B9,$0A,$FD,$D0,$04,$95,$15
       .byte $F0,$ED,$95,$17,$29,$E0,$30,$01,$4A,$4A,$4A,$4A,$C8,$94,$CD,$95
       .byte $CF,$4C,$7A,$FB,$A2,$00,$98,$95,$BA,$18,$69,$0A,$A8,$A5,$C8,$95
       .byte $BB,$E8,$E8,$E4,$C7,$D0,$EF,$60,$B9,$E8,$FF,$49,$FF,$35,$80,$95
       .byte $80,$60,$00,$C3,$C3,$C3,$F3,$DB,$CB,$CB,$DB,$F3,$00,$D1,$11,$1F
       .byte $0B,$0B,$0F,$06,$06,$06,$00,$B0,$90,$98,$18,$3C,$34,$76,$62,$62
       .byte $00,$FB,$C3,$C3,$C3,$C3,$FB,$C3,$C3,$FB,$00,$30,$20,$60,$C0,$60
       .byte $20,$20,$60,$C0,$0F,$1F,$2F,$6F,$7F,$8F,$0F,$8F,$5F,$4F,$3F,$BA
       .byte $A0,$D3,$A0,$AA,$C8,$02,$0C,$1C,$38,$2C,$64,$E2,$11,$0F,$07,$07
       .byte $07,$07,$1F,$63,$2D,$05,$1D,$0D,$01,$03,$01,$00,$40,$30,$38,$1C
       .byte $34,$26,$47,$88,$F0,$E0,$E0,$E0,$E0,$F8,$C6,$B4,$A0,$B8,$B0,$80
       .byte $C0,$80,$00,$38,$FE,$6C,$28,$28,$28,$28,$28,$28,$28,$28,$28,$38
       .byte $38,$38,$38,$7C,$BA,$BA,$92,$C6,$82,$00,$38,$FE,$6C,$28,$28,$28
       .byte $28,$28,$28,$28,$38,$38,$BA,$BA,$BA,$7C,$38,$00,$00,$00,$00,$00
       .byte $00,$38,$FE,$6C,$28,$28,$28,$28,$28,$28,$6C,$7C,$7C,$7C,$7C,$7C
       .byte $7C,$7C,$38,$10,$18,$10,$1C,$18,$18,$08,$08,$C8,$48,$2A,$2A,$2B
       .byte $2B,$19,$1F,$DF,$DE,$FC,$F8,$10,$10,$08,$08,$04,$03,$02,$00,$30
       .byte $38,$20,$30,$20,$70,$78,$E4,$F3,$CA,$CC,$C8,$C0,$E0,$E0,$50,$50
       .byte $48,$4C,$40,$40,$60,$00,$00,$00,$00,$1C,$3E,$7F,$67,$EF,$CB,$CA
       .byte $CA,$6A,$2E,$2B,$62,$C0,$80,$C0,$00,$00,$00,$00,$00,$00,$60,$20
       .byte $20,$20,$20,$24,$2A,$2B,$28,$38,$38,$3C,$3A,$7A,$BC,$B8,$38,$10
       .byte $30,$10,$70,$30,$00,$0C,$34,$14,$24,$24,$44,$44,$24,$24,$1C,$1C
       .byte $7E,$5D,$1E,$1C,$1C,$1C,$08,$18,$08,$38,$18,$FF,$FF,$87,$87,$07
       .byte $07,$07,$07,$02,$06,$02,$0E,$06,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$A0,$A2
LFD00: .byte $1B,$2E,$34,$71,$9E,$ED,$F6,$91,$5B,$81,$FB,$3E,$1B,$64,$D1,$A6
       .byte $7C,$06,$1C,$21,$7B,$4B,$C1,$96,$AC,$C2,$DD,$1B,$E1,$1B,$2E,$71
       .byte $2E,$34,$ED,$91,$81,$3E,$1B,$A6,$1C,$06,$4B,$21,$96,$C2,$1B,$2E
       .byte $9E,$F6,$5B,$FB,$64,$D1,$7C,$1C,$7B,$C1,$AC,$DD,$E1,$06,$1C,$FB
       .byte $2E,$34,$ED,$91,$81,$3E,$1B,$A6,$06,$1C,$21,$4B,$96,$C2,$1B,$2E
       .byte $7C,$06,$1C,$21,$7B,$4B,$96,$C1,$AC,$C2,$DD,$1B,$E1,$1B,$2E,$71
       .byte $2E,$34,$ED,$91,$81,$3E,$1B,$A6,$06,$1C,$21,$4B,$1C,$C2,$1B,$2E
       .byte $9E,$F6,$5B,$FB,$64,$D1,$7C,$96,$7B,$C1,$AC,$DD,$E1,$06,$96,$FB
       .byte $2E,$34,$ED,$91,$81,$3E,$1B,$A6,$5B,$81,$FB,$3E,$64,$1B,$D1,$A6
       .byte $C7,$60,$96,$12,$7B,$4B,$C1,$1C,$AC,$C2,$DD,$1B,$E1,$1B,$2E,$71
       .byte $2E,$34,$ED,$91,$81,$3E,$1B,$A6,$06,$96,$21,$4B,$1C,$C2,$1B,$2E
       .byte $9E,$F6,$5B,$FB,$64,$D1,$7C,$96,$7B,$C1,$AC,$DD,$E1,$06,$96,$FB
       .byte $2E,$34,$ED,$91,$81,$3E,$1B,$A6,$06,$96,$21,$4B,$1C,$C2,$1B,$2E
       .byte $7C,$06,$96,$21,$7B,$4B,$C1,$1C,$AC,$C2,$DD,$1B,$E1,$1B,$2E,$71
       .byte $2E,$34,$ED,$91,$81,$3E,$1B,$A6,$06,$96,$21,$4B,$1C,$C2,$1B,$2E
       .byte $9E,$F6,$5B,$FB,$64,$D1,$7C,$96,$7B,$C1,$AC,$DD,$E1,$06,$96,$FB
LFE00: .byte $00,$17,$2E,$45,$16,$23,$22,$23,$7F,$10,$00,$80,$20,$00,$80,$20
       .byte $01,$00,$00,$00,$00,$00,$02,$00,$00,$01,$00,$00,$03,$00,$38,$38
       .byte $18,$18,$18,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1F
       .byte $1E,$3E,$3E,$31,$37,$37,$37,$3F,$3F,$1F,$1F,$0F,$07,$03,$03,$03
       .byte $07,$0F,$0C,$0B,$0F,$1E,$1F,$1D,$18,$7F,$3F,$0F,$07,$07,$06,$02
       .byte $00,$3E,$3E,$1E,$1E,$1F,$18,$18,$18,$18,$18,$1E,$1E,$1E,$1E,$1E
LFE60: .byte $00,$00,$00,$7F,$7F,$7F,$7F,$7F,$7F,$1F,$1F,$1F,$1F,$00,$00,$00
       .byte $00,$A5,$A5,$42,$42,$A5,$A5,$00,$02,$02,$07,$02,$02,$38,$38,$38
       .byte $00,$42,$42,$A5,$A5,$42,$42,$00,$02,$02,$07,$02,$02,$00,$00,$00
       .byte $18,$18,$18,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1F
       .byte $3E,$3E,$3E,$03,$07,$0D,$0C,$08,$08,$0B,$0F,$1E,$1F,$1D,$18,$7F
       .byte $3F,$0F,$07,$07,$06,$02,$00,$0C,$36,$1B,$07,$0F,$0F,$1F,$1F,$37
       .byte $0F,$7C,$02,$1E,$00,$00,$00,$00,$00,$00,$00,$00,$80,$C0,$E0,$E0
       .byte $F0,$F0,$F8,$7F,$C0,$BF,$FE,$54,$7C,$7F,$78,$78,$00,$1C,$76,$1B
       .byte $07,$07,$FB,$3D,$1D,$3D,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $1C,$76,$1B,$07,$0F,$0F,$1F,$1F,$3F,$07,$03,$03,$03,$07,$0F,$3E
       .byte $60,$90,$90,$90,$90,$90,$60,$00,$40,$C0,$40,$40,$40,$40,$E0,$00
       .byte $60,$90,$10,$20,$40,$80,$F0,$00,$60,$90,$10,$30,$10,$90,$60,$00
       .byte $30,$50,$90,$F8,$10,$10,$10,$00,$F0,$80,$E0,$10,$10,$90,$60,$00
       .byte $60,$90,$80,$E0,$90,$90,$60,$00,$F0,$90,$10,$20,$20,$40,$40,$00
       .byte $60,$90,$90,$60,$90,$90,$60,$00,$60,$90,$90,$70,$10,$90,$60,$00
LFF50: .byte $80,$80,$80,$80,$C0,$C0,$40,$40,$60,$60,$20,$20,$20,$20,$B0,$B0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$B0,$B0,$20,$20,$20,$20,$60,$60,$40,$40
       .byte $C0,$C0,$80,$80,$80,$80,$00,$00
LFF78: .byte $7E,$7E,$7E,$7E,$3C,$3C,$3C,$3C,$99,$99,$99,$99,$C3,$C3,$C3,$C3
       .byte $E7,$E7,$E7,$E7,$E7,$E7,$C3,$C3,$C3,$C3,$99,$99,$99,$99,$3C,$3C
       .byte $3C,$3C,$7E,$7E,$7E,$7E,$00,$00
LFFA0: .byte $60,$60,$60,$60,$60,$60,$C0,$C0,$C0,$C0,$50,$50,$50,$50,$70,$70
       .byte $30,$30,$30,$30,$30,$30,$70,$70,$50,$50,$50,$50,$C0,$C0,$C0,$C0
       .byte $60,$60,$60,$60,$60,$60,$00,$00
LFFC8: .byte $81,$81,$81,$81,$C3,$C3,$C3,$C3,$E7,$E7,$E7,$E7,$BD,$BD,$BD,$BD
       .byte $99,$99,$99,$99,$99,$99,$BD,$BD,$BD,$BD,$E7,$E7,$E7,$E7,$C3,$C3
       .byte $C3,$C3,$81,$81,$81,$81,$00,$00,$00,$00,$02,$01,$01,$02,$04,$08
       .byte $10,$20,$40,$80,$00,$F0,$E0,$88
