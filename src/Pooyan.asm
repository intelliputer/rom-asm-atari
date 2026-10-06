; Disassembly of roms/Pooyan.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Pooyan.bin
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
RESM1   =  $13
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXM0FB  =  $34
CXM1FB  =  $35
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295

       ORG $5000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDX    #$FA    
       LDY    #$00    
       JSR    L5CF2   
       LDA    L5FC6   
       STA    $C6     
       JSR    L5CAA   
       LDX    #$00    
       TXA            
       JSR    L5C44   
       LDX    #$02    
       JSR    L5C44   
L501F: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$2A    
       STA    TIM8T   
       JSR    L59C6   
L502D: LDA    INTIM   
       BNE    L502D   
       LDX    #$02    
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$17    
       STA    TIM8T   
       JSR    L5CDF   
       JSR    L5950   
L5043: LDA    INTIM   
       BNE    L5043   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$F2    
       STA    TIM8T   
       JSR    L5669   
       JSR    L571F   
       JSR    L5AF7   
       JSR    L5580   
       JSR    L5C04   
       LDX    #$02    
       LDA    #$1C    
       JSR    L5D41   
       JSR    L5BC2   
       LDX    #$04    
       LDA    #$1C    
       JSR    L5D41   
       LDA    $D1     
       STA    COLUBK  
L5075: LDX    INTIM   
       BNE    L5075   
       STX    VBLANK  
       JSR    L509D   
       JSR    L5101   
       JSR    L51CA   
       STA    WSYNC   
       LDA    #$89    
       STA    TIM8T   
       JSR    L53D6   
       JSR    L54B2   
       JSR    L5C57   
L5095: LDA    INTIM   
       BNE    L5095   
       JMP    L501F   
L509D: STA    WSYNC   
       LDA    $C9,X   
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       STA    WSYNC   
L50AF: DEY            
       BNE    L50AF   
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
       LDA    L5EFE,X 
       STA    $E8     
       NOP            
       NOP            
L50CE: LDY    $E8     
       LDA    ($B3),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($B5),Y 
       STA    GRP1    
       LDA    ($B7),Y 
       STA    GRP0    
       LDA    ($B9),Y 
       STA    $E7     
       LDA    ($BB),Y 
       TAX            
       LDA    ($BD),Y 
       TAY            
       LDA    $E7     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $E8     
       BPL    L50CE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       RTS            

L5101: LDA    #$30    
       STA    TIM8T   
       LDA    #$1C    
       STA    HMM0    
       LDA    #$1C    
       STA    HMBL    
       LDX    #$00    
       LDA    $94     
       BPL    L5115   
       INX            
L5115: STX    $E7     
       LDA    $92,X   
       STA    $BE     
       LSR            
       BCC    L5162   
       LDA    $9B     
       LSR            
       BCS    L5162   
       LDA    $8E,X   
       BEQ    L5162   
       LDA    #$BE    
       LDX    #$00    
       LDY    #$05    
       JSR    L515A   
       LDA    #$5E    
       LDX    #$01    
       LDY    #$05    
       JSR    L515A   
       LDA    #$EE    
       CMP    $C8     
       BNE    L5143   
       LDA    #$E0    
       BNE    L5145   
L5143: LDA    #$EF    
L5145: LDX    $E7     
       LDY    $8E,X   
       LDX    #$00    
       DEY            
       BMI    L5151   
       JSR    L515A   
L5151: LDX    INTIM   
       BNE    L5151   
       INX            
       JMP    L509D   
L515A: STA    $B3,X   
       INX            
       INX            
       DEY            
       BPL    L515A   
       RTS            

L5162: LDX    #$00    
       LDA    #$CC    
       JSR    L5D41   
       LDA    $BE     
       LSR            
       LDX    $CA     
       LDY    $D6     
       LDA    $DC     
       BCC    L517A   
       LDX    $CC     
       LDY    $C6     
       LDA    #$05    
L517A: STA    NUSIZ1  
       LDA    $CB     
       STA    COLUP0  
       STX    COLUP1  
L5182: LDX    INTIM   
       BNE    L5182   
       STX    NUSIZ0  
       STX    WSYNC   
       TYA            
       INX            
       JSR    L5D30   
       LDA    #$0E    
       TAY            
       CLC            
       ADC    $C7     
       TAX            
L5197: STA    WSYNC   
       LDA    L5F8F,X 
       STA    GRP0    
       LDA    $BE     
       LSR            
       LDA    ($E1),Y 
       BCC    L51AE   
       LDA    #$00    
       BIT    $92     
       BVS    L51AE   
       LDA    L5EA4,Y 
L51AE: STA    GRP1    
       LDA    #$10    
       CPY    #$05    
       BNE    L51BC   
       LDA    #$02    
       STA    ENAM0   
       LDA    #$30    
L51BC: STA    NUSIZ0  
       DEX            
       DEY            
       BPL    L5197   
       INY            
       STY    WSYNC   
       STY    GRP0    
       STY    GRP1    
       RTS            

L51CA: LDA    $CD     
       LDY    #$FF    
       LDX    #$0B    
L51D0: STA    WSYNC   
       STY    PF0     
       CPX    #$04    
       BCS    L51DD   
       SBC    #$03    
       JMP    L51E3   
L51DD: CPX    #$0B    
       BNE    L51E3   
       ADC    #$08    
L51E3: STA    COLUPF  
       STY    PF1     
       STY    PF2     
       LDY    #$00    
       LDA    $92     
       BPL    L51F2   
       LDY    L5EA3,X 
L51F2: STY    GRP1    
       LDA    #$83    
       STA    PF1     
       LDA    #$01    
       STA    CTRLPF  
       LDY    #$FF    
       LDA    $CD     
       DEX            
       BPL    L51D0   
       STA    WSYNC   
       LDA    #$02    
       STA    ENABL   
       STX    $EA     
       INX            
       STX    ENAM0   
       STX    PF1     
       STX    PF2     
       STA    CXCLR   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$5E    
       STA    $B4     
       STA    $B6     
       STA    $B8     
       STA    $BA     
       LDA    $A8     
       AND    #$0F    
       BEQ    L522A   
       LDA    $BF     
L522A: LDX    #$02    
       JSR    L5D41   
       LDA    $A8     
       LSR            
       LSR            
       LSR            
       LSR            
       ADC    #$AF    
       STA    $E8     
       LDA    $A9     
       LSR            
       LSR            
       LSR            
       LSR            
       ADC    #$AF    
       STA    $E9     
       LDA    $A9     
       BEQ    L5249   
       LDA    $C0     
L5249: INX            
       JSR    L5D41   
       LDX    $C5     
       DEX            
       STX    $E7     
       LDA    #$30    
       STA    NUSIZ0  
       LDA    $CB     
       STA    COLUP0  
       LDA    #$CB    
       LDX    #$00    
       JSR    L5D30   
       INX            
       STX    $BB     
L5264: STA    WSYNC   
       LDA    #$2D    
       STA    TIM8T   
       LDX    $CE     
       DEX            
       STX    COLUPF  
       STA    HMCLR   
       LDX    #$00    
       STX    $BC     
       LDA    #$BE    
       STA    $B3     
       STA    $B5     
       STA    $B7     
       STA    $B9     
       LDY    $BB     
       CPY    $9F     
       BNE    L528A   
       LDA    $AB     
       STA    $B3     
L528A: LDA    #$20    
       STA    NUSIZ1  
       CPY    $A7     
       BNE    L52A2   
       LDA    #$A4    
       STA    $B5     
       LDA    #$25    
       STA    NUSIZ1  
       LDA    $CC     
       STA    COLUP1  
       LDA    $C6     
       BNE    L52E3   
L52A2: CPY    $C4     
       BEQ    L52D1   
       TYA            
L52A7: CMP    $A0,X   
       BEQ    L52B2   
       INX            
       CPX    #$06    
       BCC    L52A7   
       BCS    L52D1   
L52B2: LDA    L5FC0,X 
       CPX    $E7     
       BNE    L52BC   
       LDA    $9C     
       ASL            
L52BC: STA    COLUP1  
       LDY    $AC,X   
       LDA    L5FDB,Y 
       STA    $B5     
       LDA    #$09    
       STA    $BC     
       TXA            
       LSR            
       TAX            
       LDA    L5FD2,X 
       BNE    L52E3   
L52D1: CPY    $A6     
       BNE    L52E8   
       LDX    $B2     
       LDA    L5FE1,X 
       STA    $B5     
       LDA    $CA     
       STA    COLUP1  
       LDA    L5FCD,X 
L52E3: LDX    #$01    
       JSR    L5D30   
L52E8: LDA    $A8     
       EOR    $BB     
       AND    #$0F    
       BNE    L52FD   
       LDA    $C2     
       LSR            
       BCS    L52F9   
       LDA    #$C8    
       BNE    L52FB   
L52F9: LDA    $E8     
L52FB: STA    $B7     
L52FD: LDA    $A9     
       EOR    $BB     
       AND    #$0F    
       BNE    L5309   
       LDA    $E9     
       STA    $B9     
L5309: LDX    $CE     
       LDA    $EA     
L530D: LDY    INTIM   
       BNE    L530D   
       STX    COLUPF  
       STA    PF0     
       LDY    #$0E    
L5318: STA    WSYNC   
       DEC    $BC     
       BNE    L5322   
       LDA    $CA     
       STA    COLUP1  
L5322: LDA    ($B3),Y 
       STA    GRP0    
       LDA    ($B5),Y 
       STA    GRP1    
       LDA    ($B7),Y 
       STA    ENAM0   
       LDA    ($B9),Y 
       STA    ENAM1   
       DEY            
       BPL    L5318   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       DEC    $AA     
       BNE    L5345   
       STA    ENABL   
L5345: STA    WSYNC   
       INC    $BB     
       LDX    $BB     
       TXA            
       LSR            
       LDA    #$F0    
       BCS    L5355   
       LDA    #$30    
       LDY    #$70    
L5355: STY    PF0     
       STA    $EA     
       CPX    #$07    
       BCS    L5360   
       JMP    L5264   
L5360: LDA    #$05    
       STA    CTRLPF  
       STA    WSYNC   
       LDX    #$00    
       STX    NUSIZ1  
       LDA    $DC     
       STA    NUSIZ0  
       LDA    $CA     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $99     
       LSR            
       BCC    L537D   
       LDA    $D6     
       BCS    L5380   
L537D: INX            
       LDA    $D9     
L5380: JSR    L5D30   
       LDY    #$0F    
L5385: STA    WSYNC   
       LDA    ($E1),Y 
       BCC    L538F   
       STA    GRP0    
       BCS    L5391   
L538F: STA    GRP1    
L5391: DEY            
       BPL    L5385   
       INY            
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       LDA    $D0     
       CLC            
       ADC    #$03    
       STA    COLUBK  
       LDX    #$00    
       STX    PF0     
       LDA    #$05    
       STA    NUSIZ0  
       JSR    L5D30   
       LDA    $D0     
       STA    COLUBK  
       STA    WSYNC   
       LDX    $96     
       BIT    $94     
       BPL    L53BB   
       LDX    $97     
L53BB: CPX    #$04    
       BCC    L53C1   
       LDX    #$04    
L53C1: STA    WSYNC   
       LDA    L5F84,X 
       STA    GRP0    
       LDA    $CF     
       STA    COLUP0  
       LDX    #$06    
L53CE: STA    WSYNC   
       DEX            
       BNE    L53CE   
       STX    GRP0    
       RTS            

L53D6: LDA    #$04    
       CMP    $98     
       BNE    L541B   
       BIT    $94     
       BPL    L53E4   
       LDA    $96     
       BNE    L5407   
L53E4: LDA    $97     
       BNE    L53FA   
       ORA    $96     
       BNE    L5407   
       LDA    #$05    
       STA    $98     
       LDA    #$22    
       LDX    #$05    
       JSR    L5494   
       JMP    L541B   
L53FA: LDA    #$80    
       ORA    $94     
       STA    $94     
       DEC    $97     
       LDA    $93     
       JMP    L540F   
L5407: ASL    $94     
       LSR    $94     
       DEC    $96     
       LDA    $92     
L540F: JSR    L552D   
       LDA    #$01    
       STA    $98     
       LDX    #$00    
       JSR    L5C44   
L541B: LDX    #$00    
       BIT    $94     
       BPL    L542C   
       INX            
       STX    $B3     
       INX            
       STX    $B4     
       INX            
       STX    $B5     
       BNE    L5432   
L542C: STX    $B3     
       STX    $B4     
       STX    $B5     
L5432: LDA    #$82    
       CMP    $98     
       BNE    L5476   
       LDX    $B3     
       LDY    $90,X   
       LDA    #$1C    
       CPY    #$05    
       BCS    L5444   
       LDA    #$F6    
L5444: STA    $D0     
       TYA            
       BNE    L5476   
       LDY    #$05    
L544B: LDA.wy $00A0,Y 
       BNE    L5476   
       DEY            
       BPL    L544B   
       LDA    #$80    
       ORA    $8E,X   
       STA    $95     
       LDA    #$00    
       STA    $8E,X   
       INC    $92,X   
       LDA    #$1F    
       AND    $92,X   
       STA    $92,X   
       CLC            
       ADC    #$1E    
       STA    $90,X   
       JSR    L552D   
       LDA    #$01    
       STA    $98     
       LDX    #$00    
       JSR    L5C44   
L5476: LDA    $98     
       LSR            
       BNE    L5483   
       LDA    #$01    
       STA    $9F     
       LDA    #$0F    
       STA    $AB     
L5483: LDA    $98     
       BEQ    L548B   
       AND    #$F7    
       BNE    L549B   
L548B: LDA    $9B     
       BNE    L549B   
       LDX    #$08    
       SEC            
       LDA    $C9     
L5494: ADC    $C9,X   
       STA    $C9,X   
       DEX            
       BPL    L5494   
L549B: LDX    $B3     
       LDA    $92,X   
       AND    #$1F    
       STA    $99     
       LDA    #$05    
       CMP    $98     
       BNE    L54B1   
       LDA    $9C     
       BNE    L54B1   
       LDA    #$08    
       STA    $98     
L54B1: RTS            

L54B2: LDA    #$02    
       BIT    SWCHB   
       BEQ    L54C1   
       LDA    #$40    
       ORA    $94     
       STA    $94     
       BNE    L54EE   
L54C1: LDA    #$40    
       BIT    $94     
       BEQ    L54EE   
       INC    $94     
       LDA    #$9F    
       AND    $94     
       STA    $94     
       LDA    $98     
       BNE    L54DD   
       JSR    L5CAA   
       LDX    #$00    
       LDA    #$08    
       JMP    L5C44   
L54DD: DEC    $94     
       JSR    L5CAA   
       LDA    #$00    
       STA    $98     
       LDX    #$00    
       JMP    L5C44   
L54EB: JMP    L5568   
L54EE: LDA    $98     
       BEQ    L54F6   
       CMP    #$08    
       BNE    L54EB   
L54F6: LDA    INPT4   
       BMI    L54EB   
L54FA: LDY    #$88    
       LDX    #$08    
       JSR    L5CF2   
       LDA    #$01    
       STA    $98     
       LDX    #$00    
       JSR    L5C44   
       LDY    #$02    
       STY    $96     
       INY            
       LDA    $94     
       AND    #$07    
       STA    $94     
       LSR            
       BCS    L551A   
       LDY    #$00    
L551A: STY    $97     
       LDA    #$00    
       STA    $92     
       STA    $93     
       LDA    #$1E    
       STA    $90     
       STA    $91     
       JSR    L5CAA   
       LDA    $92     
L552D: LSR            
       LDA    #$40    
       BCS    L5536   
       ORA    $92     
       BNE    L553A   
L5536: LDA    #$1F    
       AND    $92     
L553A: STA    $92     
       LDA    $94     
       ASL            
       BCS    L5545   
       LDA    #$0F    
       BNE    L5547   
L5545: LDA    #$88    
L5547: STA    $CB     
       LDA    #$80    
       STA    $E0     
       LDY    #$9F    
       LDX    #$0B    
       JSR    L5CF2   
       STA    $B2     
       STA    $E4     
       STA    $D5     
       STA    $DC     
       STA    $DB     
       STA    $C5     
       STA    $C2     
       STA    $C3     
       RTS            

L5565: JMP    L54FA   
L5568: LDA    #$01    
       BIT    SWCHB   
       BEQ    L5565   
       LDA    #$01    
       CMP    $98     
       BNE    L557F   
       LDX    #$00    
       LDA    ($80,X) 
       BNE    L557F   
       LDA    #$82    
       STA    $98     
L557F: RTS            

L5580: LDA    #$82    
       CMP    $98     
       BEQ    L5589   
       JMP    L5658   
L5589: LDA    $A8     
       BNE    L559E   
       LDA    $C3     
       LSR            
       BCC    L559E   
       LDA    #$51    
       STA    $A8     
       LDA    #$BB    
       STA    $BF     
       LDA    #$01    
       STA    $C2     
L559E: LDA    #$FF    
       EOR    SWCHA   
       LDX    $B3     
       BNE    L55AA   
       JSR    L5D2B   
L55AA: AND    #$03    
       STA    $E7     
       LDA    $E7     
       BEQ    L5602   
       LDA    #$01    
       AND    $9F     
       BEQ    L55BA   
       LDA    #$0F    
L55BA: STA    $C7     
       CLC            
       LDA    #$10    
       ADC    $E6     
       STA    $E6     
       BCC    L5602   
       LSR    $E7     
       BCC    L55E6   
       LDA    $9F     
       LSR            
       BNE    L55E2   
       LDA    $C2     
       LSR            
       BCC    L55E2   
       LSR            
       BCS    L55E2   
       LDA    #$51    
       STA    $A8     
       LDA    #$BB    
       STA    $BF     
       LDA    #$56    
       STA    $CB     
L55E2: DEC    $9F     
       BNE    L55F0   
L55E6: INC    $9F     
       LDA    #$06    
       CMP    $9F     
       BCS    L55F0   
       DEC    $9F     
L55F0: LDA    $CB     
       CMP    #$56    
       BNE    L5602   
       LDA    $C2     
       LSR            
       LSR            
       BCS    L5602   
       LDA    #$50    
       ORA    $9F     
       STA    $A8     
L5602: LDA    #$02    
       BIT    $C2     
       BNE    L563B   
       LDA    INPT4,X 
       BPL    L5612   
       LDA    #$0F    
       STA    $AB     
       BNE    L563B   
L5612: LDA    #$0F    
       CMP    $AB     
       BNE    L563B   
       LDA    $CB     
       CMP    #$56    
       BEQ    L5626   
       LDA    #$BB    
       STA    $BF     
       LSR    $C2     
       ASL    $C2     
L5626: LDA    #$02    
       ORA    $C2     
       STA    $C2     
       LDA    $9F     
       STA    $A8     
       LDA    #$1E    
       STA    $AB     
       LDA    #$05    
       LDX    #$00    
       JSR    L5C44   
L563B: LDA    $A7     
       CMP    $9F     
       BCS    L5649   
       LDA    CXM1P   
       BMI    L5649   
       LDA    CXPPMM  
       BPL    L5658   
L5649: LDA    #$04    
       LDX    #$00    
       JSR    L5C44   
       LDA    #$00    
       STA    $AB     
       LDA    #$03    
       STA    $98     
L5658: LDA    $98     
       BMI    L5664   
       LDA    #$01    
       STA    $AA     
       LSR            
       STA    $A8     
L5663: RTS            

L5664: LDA    $9F     
       STA    $AA     
       RTS            

L5669: LDX    $B3     
       LDA    $98     
       CMP    #$03    
       BEQ    L56A3   
       CMP    #$82    
       BNE    L56F1   
       LDA    $92,X   
       LSR            
       BCC    L5663   
       LDA    $8E,X   
       CMP    #$06    
       BCC    L56F1   
       LDA    #$06    
       STA    $8E,X   
       LDA    $C6     
       AND    #$0F    
       CMP    #$0B    
       BCC    L56F4   
       LDA    $A7     
       BNE    L56A3   
       LDA    #$C0    
       ORA    $92     
       STA    $92     
       LDX    $B3     
       LDA    $9B     
       LSR            
       BCC    L56A3   
       LDA    #$80    
       ORA    $92     
       BNE    L56A7   
L56A3: LDA    #$7F    
       AND    $92     
L56A7: STA    $92     
       CLC            
       LDA    #$10    
       ADC    $E5     
       STA    $E5     
       BCC    L5710   
       ASL    $92     
       LSR    $92     
       LDA    $C6     
       AND    #$0F    
       CMP    #$0B    
       BCC    L56C6   
       INC    $A7     
       LDA    #$02    
       TAX            
       JSR    L5C44   
L56C6: LDA    #$00    
       CMP    $AB     
       BNE    L56CE   
       INC    $9F     
L56CE: LDA    #$07    
       CMP    $9F     
       BNE    L5710   
       LDX    $B3     
       LDA    #$00    
       STA    $A7     
       STA    $C5     
       INC    $90,X   
       DEC    $8E,X   
       DEC    $8E,X   
       BPL    L56E8   
       INC    $8E,X   
       INC    $8E,X   
L56E8: LDA    #$04    
       STA    $98     
       LDA    #$D2    
       STA    $9C     
       RTS            

L56F1: JMP    L5709   
L56F4: LDY    #$05    
       LDA    $C6     
       CMP    L5FC6,Y 
       BNE    L5701   
       INY            
       LDA    L5FC6,Y 
L5701: LDY    #$01    
       JSR    L5D50   
       STA    $C6     
       RTS            

L5709: LDY    $8E,X   
       LDA    L5FC6,Y 
       STA    $C6     
L5710: LDA    $9C     
       AND    #$04    
       BNE    L571A   
       LDA    #$EE    
       BNE    L571C   
L571A: LDA    #$DD    
L571C: STA    $C8     
       RTS            

L571F: LDA    $9B     
       AND    #$07    
       TAX            
       LSR            
       STA    $B7     
       STX    $B8     
       LDA    $A8     
       AND    #$0F    
       STA    $BA     
       LDA    #$FF    
       STA    $BD     
       LDA    $C2     
       LSR            
       AND    #$01    
       BEQ    L5763   
       BCC    L5775   
       LDA    $BF     
       AND    #$0F    
       CMP    #$07    
       BCS    L5775   
       LDA    $BA     
       LDX    #$01    
       JSR    L5766   
       BCS    L5756   
       CPY    #$01    
       BNE    L5782   
       BIT    CXM0P   
       BMI    L5782   
       SEC            
L5756: ADC    #$00    
       LDX    #$01    
       JSR    L5766   
       BCS    L5763   
       CPY    #$01    
       BNE    L5782   
L5763: JMP    L57D6   
L5766: CMP    $A0,X   
       BNE    L5770   
       LDY    $AC,X   
       CPY    #$03    
       BCC    L5774   
L5770: DEX            
       BPL    L5766   
       SEC            
L5774: RTS            

L5775: BIT    CXM0P   
       BPL    L5763   
       LDA    $BA     
       LDX    #$05    
       JSR    L5766   
       BCS    L5763   
L5782: STX    $E9     
       LDA    $C2     
       LSR            
       BCC    L579C   
       DEY            
       BNE    L5794   
       LDA    #$80    
       ORA    $C3     
       STA    $C3     
       BNE    L57D6   
L5794: LDY    #$05    
       STY    $AC,X   
       LDA    #$80    
       BNE    L57C2   
L579C: JSR    L5ACD   
       CPY    #$02    
       BCC    L57AC   
       LDA    #$03    
       LDX    #$02    
       JSR    L5C44   
       BEQ    L57D6   
L57AC: TYA            
       PHA            
       ADC    #$03    
       STA    $AC,X   
       LDA    #$06    
       LDX    #$02    
       JSR    L5C44   
       PLA            
       BEQ    L57C0   
       LDA    #$05    
       BNE    L57C2   
L57C0: LDA    #$20    
L57C2: STA    $BD     
       JSR    L5CFC   
       LDX    $C5     
       DEX            
       CPX    $E9     
       BNE    L57D6   
       LDA    #$00    
       STA    $C5     
       LDX    $B3     
       STA    $90,X   
L57D6: LDX    $B8     
       CPX    #$06    
       BCC    L57EC   
       LDA    #$11    
       SBC    $99     
       BMI    L57E6   
       CMP    #$08    
       BCS    L57E8   
L57E6: LDA    #$08    
L57E8: LSR            
       STA    $9E     
       RTS            

L57EC: LDA    $A0,X   
       BEQ    L580F   
       INC    $BD     
       BEQ    L57F8   
       CPX    $E9     
       BEQ    L580E   
L57F8: LDA    $AC,X   
       CMP    #$04    
       BNE    L5803   
       LDA    #$00    
       STA    $A0,X   
       RTS            

L5803: CMP    #$03    
       BEQ    L580A   
       JMP    L5890   
L580A: LDA    #$05    
       STA    $AC,X   
L580E: RTS            

L580F: LDA    $98     
       AND    #$F7    
       BEQ    L581E   
       BPL    L587A   
       LDY    $B3     
       LDA.wy $0090,Y 
       BEQ    L587A   
L581E: LDA    $99     
       AND    #$01    
       TAY            
       LDA    L5FB5,Y 
       STA    $E7     
       JSR    L587B   
       BEQ    L587A   
       LDA    $E3     
       AND    L5FAD,X 
       BNE    L584A   
       JSR    L5D6E   
       AND    #$60    
       BNE    L587A   
       LDA    $9A     
       LSR            
       BCS    L584E   
L5840: LDA    $E7     
       STA    $A0,X   
       LDA    #$01    
       STA    $AC,X   
       BNE    L586D   
L584A: EOR    $E3     
       STA    $E3     
L584E: LDA    $C5     
       BNE    L5840   
       LDA    $E7     
       STA    $A0,X   
       LDA    #$00    
       STA    $AC,X   
       LDX    $B3     
       DEC    $90,X   
       LDY    $90,X   
       DEY            
       BNE    L586D   
       LDA    $99     
       LSR            
       BCC    L586D   
       LDY    $B8     
       INY            
       STY    $C5     
L586D: LDA    $98     
       AND    #$F7    
       BEQ    L587A   
       LDA    #$07    
       LDX    #$00    
       JSR    L5C44   
L587A: RTS            

L587B: LDX    #$05    
       LDA    $E7     
L587F: CMP    $A0,X   
       BEQ    L588B   
       DEX            
       BPL    L587F   
       LDX    $B8     
       LDA    #$01    
       RTS            

L588B: LDX    $B8     
       LDA    #$00    
       RTS            

L5890: LDA    $AC,X   
       CMP    #$05    
       BNE    L589F   
       LDA    $A0,X   
       CMP    #$06    
       BEQ    L5900   
       INC    $A0,X   
       RTS            

L589F: LDA    $9D     
       BNE    L5905   
       LDA    $99     
       AND    #$01    
       TAY            
       LDA    $A0,X   
       CMP    L58C0,Y 
       BEQ    L58C4   
       CLC            
       ADC    L58C2,Y 
       STA    $E7     
       JSR    L587B   
       BNE    L58BB   
       RTS            

L58BB: LDA    $E7     
       STA    $A0,X   
       RTS            

L58C0: .byte $06,$01
L58C2: .byte $01,$FF
L58C4: LDA    $AC,X   
       BEQ    L58CC   
       CMP    #$02    
       BNE    L5900   
L58CC: LDA    $99     
       LSR            
       BCS    L58DD   
       BIT    $E4     
       BVS    L58F6   
       LDA    $B7     
       ORA    #$80    
       STA    $E4     
       BNE    L58F6   
L58DD: LDY    $C5     
       DEY            
       CPY    $B8     
       BNE    L58F0   
       LDA    #$00    
       STA    $C5     
       LDX    $B3     
       LDA    $90,X   
       ADC    #$04    
       STA    $90,X   
L58F0: LDA    #$02    
       TAX            
       JSR    L5C44   
L58F6: LDA    $98     
       BPL    L58FE   
       LDX    $B3     
       INC    $8E,X   
L58FE: LDX    $B8     
L5900: LDA    #$00    
       STA    $A0,X   
       RTS            

L5905: JSR    L5D6E   
       AND    #$06    
       BNE    L591E   
       LDA    $AC,X   
       BNE    L5915   
       LDA    #$02    
       STA    $AC,X   
       RTS            

L5915: CMP    #$02    
       BNE    L591E   
       LDA    #$00    
       STA    $AC,X   
       RTS            

L591E: LDA    $A9     
       AND    #$0F    
       ORA    $AC,X   
       BNE    L594F   
       LDY    $B7     
       CPY    #$02    
       BEQ    L594F   
       LDA    $A0,X   
       TAX            
       ORA    #$70    
       STA    $A9     
       LDA    L5FD5,Y 
       STA    $C0     
       LDY    #$00    
       DEX            
       BEQ    L594A   
       INY            
       LDA    $94     
       AND    #$02    
       BNE    L594A   
       JSR    L5D6E   
       AND    #$01    
       TAY            
L594A: LDA    L5F8D,Y 
       STA    $C1     
L594F: RTS            

L5950: INC    $D7     
       LDA    #$9F    
       CMP    $D8     
       BEQ    L5962   
       CMP    $D5     
       BNE    L5966   
       LDA    $DB     
       CMP    #$04    
       BEQ    L5966   
L5962: LDA    #$06    
       STA    $A6     
L5966: LDX    $9F     
       LDA    $A6     
       BNE    L596E   
       BEQ    L59C5   
L596E: LDA    $D3     
       BNE    L59B4   
       LDA    $B2     
       CMP    #$01    
       BEQ    L59AC   
       CMP    #$02    
       BNE    L5986   
       LDA    $98     
       CMP    #$03    
       BEQ    L59AC   
       LDA    #$00    
       STA    $B2     
L5986: LDA    $D2     
       BNE    L5990   
       STX    $DA     
       LDA    $DE     
       STA    $D2     
L5990: DEC    $D2     
       BNE    L59C5   
       CPX    $DA     
       BNE    L59C5   
       LDA    $D7     
       CMP    $DF     
       BCC    L59A2   
       CPX    $A6     
       BNE    L59B9   
L59A2: LDA    #$01    
       STA    $B2     
       LDA    #$20    
       STA    $D3     
       BNE    L59B4   
L59AC: LDA    #$02    
       STA    $B2     
       LDA    #$50    
       STA    $D3     
L59B4: DEC    $D3     
       JMP    L59C5   
L59B9: BCS    L59BF   
       DEC    $A6     
       BCC    L59C1   
L59BF: INC    $A6     
L59C1: LDA    #$00    
       STA    $B2     
L59C5: RTS            

L59C6: DEC    $D4     
       BPL    L59E8   
       LDA    #$01    
       STA    $D4     
       INC    $D5     
       LDA    $DB     
       CMP    #$04    
       BEQ    L59DD   
       LDA    $D5     
       JSR    L5AAF   
       STA    $D6     
L59DD: LDA    $D8     
       BEQ    L59E8   
       INC    $D8     
       JSR    L5AAF   
       STA    $D9     
L59E8: LDA    $D5     
       LSR            
       LSR            
       LSR            
       BCC    L59F3   
       LDA    #$64    
       BCS    L59F5   
L59F3: LDA    #$74    
L59F5: STA    $E1     
       LDA    #$5F    
       STA    $E2     
       LDA    $E0     
       BPL    L5A18   
       LDA    $99     
       LSR            
       BCC    L5A0A   
       LDA    $D5     
       CMP    #$A0    
       BCC    L5A15   
L5A0A: LDX    #$00    
       STX    $E0     
       INX            
       STX    $D5     
       LDA    #$03    
       STA    $DB     
L5A15: JMP    L5A68   
L5A18: LDA    $DC     
       STA    NUSIZ0  
       LDA    $DB     
       CMP    #$03    
       BNE    L5A53   
       LDA    $D5     
       CMP    #$20    
       BNE    L5A44   
       LDA    $DC     
       CMP    #$02    
       BEQ    L5A38   
       CMP    #$06    
       BEQ    L5A44   
       LDA    #$02    
       STA    $DC     
       BNE    L5A3C   
L5A38: LDA    #$06    
       STA    $DC     
L5A3C: LDA    #$01    
       STA    $D5     
       LDA    #$63    
       STA    $D6     
L5A44: LDA    $D5     
       CMP    #$2C    
       BNE    L5A50   
       LDA    #$07    
       STA    $E3     
       BNE    L5A53   
L5A50: JMP    L5A68   
L5A53: LDA    $E3     
       BNE    L5A64   
       LDX    #$01    
       STX    $D5     
       DEX            
       STX    $DC     
       LDA    #$03    
       STA    $DB     
       BNE    L5A68   
L5A64: LDA    #$04    
       STA    $DB     
L5A68: LDA    $E4     
       BPL    L5A7A   
       AND    #$7F    
       ORA    #$40    
       STA    $E4     
       AND    #$03    
       TAY            
       LDA    L5FD8,Y 
       STA    $D8     
L5A7A: LDA    $D8     
       CMP    #$A0    
       BCC    L5A84   
       LDA    #$00    
       STA    $D8     
L5A84: LDA    $95     
       BPL    L5AA5   
       AND    #$7F    
       STA    $95     
       STA    $E7     
       LDA    $99     
       LSR            
       BCC    L5AA6   
       LDA    $DE     
       SBC    $E7     
       CMP    #$10    
       BCS    L5A9D   
       LDA    #$10    
L5A9D: STA    $DE     
       LDA    $DF     
       ADC    $E7     
       STA    $DF     
L5AA5: RTS            

L5AA6: LDA    #$28    
       STA    $DE     
       LDA    #$50    
       STA    $DF     
       RTS            

L5AAF: STA    $E7     
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $E7     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $E8     
       CLC            
       ADC    $E7     
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $E8     
       CLC            
       ADC    #$83    
       RTS            

L5ACD: LDA    $B3     
       BNE    L5AD5   
       LDA    #$0F    
       BNE    L5AD7   
L5AD5: LDA    #$88    
L5AD7: STA    $CB     
       ASL    $C3     
       LSR    $C3     
       LDA    $C2     
       EOR    #$01    
       AND    $C3     
       LSR            
       LDA    #$00    
       STA    $A8     
       STA    $C2     
       BCS    L5AF6   
       STA    $C3     
       LDA    #$03    
       AND    $9A     
       BNE    L5AF6   
       INC    $C3     
L5AF6: RTS            

L5AF7: LDA    #$00    
       STA    $C4     
       LDX    #$05    
       LDA    $A6     
       BEQ    L5B12   
L5B01: CMP    $A0,X   
       BEQ    L5B0A   
       DEX            
       BPL    L5B01   
       BMI    L5B12   
L5B0A: TAX            
       LDA    $9B     
       LSR            
       BCC    L5B12   
       STX    $C4     
L5B12: BIT    CXPPMM  
       BVC    L5B2B   
       LDX    $C2     
       DEX            
       BEQ    L5B2B   
       LDA    #$10    
       STA    $BD     
       JSR    L5CFC   
       LDA    #$00    
       STA    $A9     
       LDA    $C2     
       LSR            
       BCC    L5B33   
L5B2B: LDA    $A8     
       BEQ    L5B36   
       LDA    CXM0FB  
       BPL    L5B38   
L5B33: JSR    L5ACD   
L5B36: BEQ    L5B83   
L5B38: LDA    $C2     
       AND    #$02    
       BEQ    L5B83   
       LDA    $C2     
       AND    #$01    
       TAX            
       LDY    L5FD0,X 
       LDA    $BF     
       BIT    $C3     
       BPL    L5B53   
       JSR    L5D50   
       STA    $BF     
       BEQ    L5B63   
L5B53: JSR    L5D5F   
       STA    $BF     
       TXA            
       BEQ    L5B83   
       LDA    $BF     
       AND    #$0F    
       CMP    #$09    
       BCS    L5B83   
L5B63: LDA    $C2     
       AND    #$F0    
       CLC            
       ADC    $A8     
       ADC    #$00    
       CMP    #$C0    
       BCC    L5B72   
       ADC    #$40    
L5B72: STA    $A8     
       AND    #$0F    
       CMP    #$07    
       BCC    L5B7D   
       JSR    L5ACD   
L5B7D: LDA    $C2     
       ADC    #$04    
       STA    $C2     
L5B83: LDA    $A9     
       AND    #$0F    
       BEQ    L5BC1   
       LDA    CXM1FB  
       ORA    CXM1P   
       BPL    L5B95   
       LDA    #$00    
       STA    $A9     
       BEQ    L5BC1   
L5B95: LDA    $9B     
       LSR            
       BCS    L5BAA   
       LDY    #$02    
       LDA    $94     
       AND    #$04    
       BEQ    L5BA3   
       INY            
L5BA3: LDA    $C0     
       JSR    L5D50   
       STA    $C0     
L5BAA: LDA    $C1     
       AND    #$F0    
       STA    $E7     
       LDA    $A9     
       SEC            
       SBC    $E7     
       BCS    L5BB9   
       ADC    #$BF    
L5BB9: STA    $A9     
       LDA    $C1     
       BEQ    L5BC1   
       DEC    $C1     
L5BC1: RTS            

L5BC2: LDX    #$02    
       LDY    #$0A    
L5BC6: LDA    $E7,X   
       AND    #$0F    
       STA.wy $00B3,Y 
       LDA    $E7,X   
       JSR    L5D2B   
       DEY            
       DEY            
       STA.wy $00B3,Y 
       DEY            
       DEY            
       DEX            
       BPL    L5BC6   
       INX            
       STX    $EA     
L5BDF: LDA    $B3,X   
       BNE    L5BEF   
       LDY    $EA     
       BNE    L5BF1   
       CPX    #$0A    
       BEQ    L5BF1   
       LDA    #$0A    
       BNE    L5BF1   
L5BEF: DEC    $EA     
L5BF1: ASL            
       TAY            
       LDA    L5FE4,Y 
       STA    $B3,X   
       LDA    L5FE5,Y 
       STA    $B4,X   
       INX            
       INX            
       CPX    #$0C    
       BNE    L5BDF   
       RTS            

L5C04: LDA    $98     
       BNE    L5C0F   
       LDA    $94     
       AND    #$07    
       JMP    L5C2C   
L5C0F: CLC            
       ADC    #$FF    
       BNE    L5C1D   
       LDX    $B3     
       LDA    $92,X   
       AND    #$1F    
       JMP    L5C2C   
L5C1D: LDX    $B5     
       LDA    $88,X   
       STA    $E7     
       LDA    $89,X   
       STA    $E8     
       LDA    $8A,X   
       STA    $E9     
       RTS            

L5C2C: TAY            
       SED            
       CLC            
       LDA    #$01    
L5C31: DEY            
       BMI    L5C38   
       ADC    #$01    
       BNE    L5C31   
L5C38: STA    $E9     
       LDA    #$00    
       STA    $A6     
       STA    $E7     
       STA    $E8     
       CLD            
       RTS            

L5C44: ASL            
       TAY            
       LDA    L5D77,Y 
       STA    $80,X   
       LDA    L5D78,Y 
       STA    $81,X   
       TXA            
       LSR            
       TAX            
       LSR            
       STA    $84,X   
       RTS            

L5C57: LDX    #$02    
       STX    $E7     
       DEX            
       STX    $E8     
       JSR    L5C67   
       LDX    #$00    
       STX    $E7     
       STX    $E8     
L5C67: LDA    $84,X   
       BNE    L5C77   
L5C6B: LDX    $E7     
       LDA    ($80,X) 
       TAY            
       BNE    L5C7A   
       LDX    $E8     
       STA    AUDV0,X 
       RTS            

L5C77: DEC    $84,X   
L5C79: RTS            

L5C7A: JSR    L5D2B   
       AND    #$06    
       BNE    L5C90   
       TYA            
       AND    #$1F    
       LDX    $E8     
       STA    $86,X   
L5C88: TYA            
       BPL    L5C9B   
       JSR    L5CA1   
       BNE    L5C6B   
L5C90: TAX            
       LDA    $E7     
       BEQ    L5C96   
       INX            
L5C96: TYA            
       STA    RESM1,X 
       BNE    L5C88   
L5C9B: LDX    $E8     
       LDA    $86,X   
       STA    $84,X   
L5CA1: LDX    $E7     
       INC    $80,X   
       BNE    L5C79   
       INC    $81,X   
       RTS            

L5CAA: LDA    #$28    
       STA    $DE     
       LDA    #$50    
       STA    $DF     
       LDA    #$80    
       STA    $E0     
       ASL            
       STA    $95     
       STA    $D5     
       STA    $A6     
       STA    $DC     
       LDX    #$08    
L5CC1: LDA    L5FB7,X 
       STA    $C9,X   
       DEX            
       BPL    L5CC1   
       LDA    $94     
       LSR            
       AND    #$03    
       TAY            
       LDA    L5F89,Y 
       STA    $CE     
       INX            
       BCC    L5CD9   
       STX    $D1     
L5CD9: INX            
       STX    $9B     
       STX    $C3     
       RTS            

L5CDF: INC    $9B     
       LDA    $9B     
       AND    #$07    
       BNE    L5CF1   
       INC    $9C     
       DEC    $9D     
       BPL    L5CF1   
       LDA    $9E     
       STA    $9D     
L5CF1: RTS            

L5CF2: LDA    #$00    
L5CF4: STA.wy $0000,Y 
       INY            
       DEX            
       BNE    L5CF4   
       RTS            

L5CFC: SED            
       CLC            
       LDX    $B5     
       LDY    $89,X   
       LDA    $BD     
       ADC    $8A,X   
       STA    $8A,X   
       LDA    #$00    
       ADC    $89,X   
       STA    $89,X   
       LDA    #$00    
       ADC    $88,X   
       STA    $88,X   
       TYA            
       EOR    $89,X   
       AND    #$F0    
       BEQ    L5D29   
       LDA    $89,X   
       AND    #$F0    
       BEQ    L5D25   
       CMP    #$50    
       BNE    L5D29   
L5D25: LDX    $B3     
       INC    $96,X   
L5D29: CLD            
       RTS            

L5D2B: LSR            
       LSR            
       LSR            
       LSR            
       RTS            

L5D30: STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
L5D37: DEY            
       BPL    L5D37   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

L5D41: STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
L5D48: DEY            
       BPL    L5D48   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

L5D50: SEC            
       SBC    #$10    
       BMI    L5D5B   
       CMP    #$70    
       BCC    L5D5B   
       ADC    #$F0    
L5D5B: DEY            
       BNE    L5D50   
       RTS            

L5D5F: CLC            
       ADC    #$10    
       BPL    L5D6A   
       CMP    #$90    
       BCS    L5D6A   
       SBC    #$F0    
L5D6A: DEY            
       BNE    L5D5F   
       RTS            

L5D6E: LDA    $9B     
       EOR    $9C     
       ADC    $9A     
       STA    $9A     
       RTS            

L5D77: .byte $89
L5D78: .byte $5D,$8A,$5D,$A8,$5D,$B1,$5D,$BB,$5D,$C1,$5D,$CD,$5D,$D4,$5D,$9D
       .byte $5E,$00,$08,$E7,$A5,$53,$51,$4F,$90,$4E,$53,$AC,$47,$49,$98,$A5
       .byte $51,$18,$88,$4F,$51,$90,$53,$56,$AC,$47,$A5,$5A,$AC,$49,$18,$00
       .byte $02,$A1,$D0,$68,$64,$4C,$62,$48,$00,$02,$A4,$C2,$6C,$6F,$6C,$68
       .byte $64,$62,$00,$83,$AC,$56,$6F,$6F,$00,$01,$A5,$D0,$6C,$40,$AC,$D0
       .byte $68,$48,$6F,$68,$00,$02,$AC,$C8,$68,$6F,$68,$00,$01,$A4,$D5,$64
       .byte $68,$64,$54,$68,$64,$53,$68,$64,$52,$67,$63,$51,$66,$62,$50,$65
       .byte $62,$4F,$62,$61,$00,$A1,$E0,$68,$20,$5B,$10,$78,$6D,$EC,$78,$17
       .byte $29,$81,$00,$35,$0C,$5A,$86,$DD,$44,$38,$54,$7C,$C6,$AA,$AA,$45
       .byte $BB,$D6,$7C,$3C,$7E,$FF,$81,$7E,$3F,$4F,$BF,$5E,$2E,$04,$3A,$55
       .byte $7D,$3B,$07,$16,$3E,$1D,$3E,$5F,$8F,$BF,$9E,$4E,$04,$3A,$55,$55
       .byte $3B,$07,$16,$3E,$1D,$50,$52,$7E,$78,$D4,$9B,$91,$00,$78,$78,$FC
       .byte $FC,$FC,$FC,$78,$28,$28,$39,$7F,$11,$39,$39,$01,$39,$7D,$FD,$FD
       .byte $FD,$79,$31,$28,$28,$38,$7C,$10,$38,$38,$00,$52,$10,$C6,$C6,$10
       .byte $52,$10,$91,$9B,$D4,$78,$7E,$52,$50,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$52,$10,$C6,$C6,$10,$52,$10,$24,$14,$54,$7C,$18,$3E,$7A,$5A
       .byte $BC,$7E,$3C,$7E,$3C,$24,$24,$31,$11,$1F,$46,$66,$16,$0E,$0F,$0E
       .byte $17,$3A,$EE,$86,$04,$04,$05,$09,$06,$0E,$0C,$C8,$FE,$1F,$FE,$EF
       .byte $16,$1E,$0C,$04,$04,$02,$A4,$D7,$6F,$60,$6F
L5EA3: .byte $00
L5EA4: .byte $7E,$EF,$F6,$ED,$DF,$FC,$7A,$7C,$3C,$38,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00
       .byte $00,$00,$00,$00,$30,$78,$78,$FC,$FC,$FC,$FC,$78,$30,$20,$70,$B0
       .byte $3A,$26,$38,$F0,$78,$EC,$4B,$79,$60,$20,$20,$80,$E0,$30,$78,$B8
       .byte $7E,$FF,$78,$D6,$FA,$AB,$8D,$05,$06,$06
L5EFE: .byte $08,$0E,$7C,$64,$64,$64,$64,$64,$64,$64,$7C,$00,$18,$18,$18,$18
       .byte $18,$18,$18,$18,$38,$00,$7C,$4C,$4C,$40,$3C,$0C,$4C,$4C,$7C,$00
       .byte $7C,$4C,$4C,$0C,$38,$0C,$4C,$4C,$7C,$00,$0C,$0C,$7E,$4C,$4C,$4C
       .byte $4C,$4C,$4C,$00,$7C,$4C,$4C,$0C,$0C,$7C,$40,$4C,$7C,$00,$7C,$4C
       .byte $4C,$4C,$7C,$40,$4C,$4C,$7C,$00,$30,$30,$30,$18,$18,$0C,$4C,$4C
       .byte $7C,$00,$7C,$4C,$4C,$4C,$7C,$64,$64,$64,$7C,$00,$7C,$4C,$4C,$0C
       .byte $7C,$4C,$4C,$4C,$7C,$00,$84,$C4,$28,$70,$B2,$36,$38,$F0,$78,$EC
       .byte $4B,$79,$60,$20,$00,$00,$48,$68,$10,$F0,$30,$33,$3F,$F2,$7E,$EF
       .byte $48,$78,$60,$40,$00,$00
L5F84: .byte $00,$80,$A0,$A8,$AA
L5F89: .byte $34,$1E,$42,$3E
L5F8D: .byte $14,$20
L5F8F: .byte $40,$3C,$1E,$1E,$1C,$7C,$08,$3C,$7E,$7E,$5E,$5C,$38,$34,$18,$80
       .byte $80,$78,$5C,$3C,$7C,$04,$1E,$3F,$3F,$2F,$2E,$1C,$1A,$0C
L5FAD: .byte $01,$02,$04,$08,$10,$20,$40,$80
L5FB5: .byte $01,$06
L5FB7: .byte $0F,$28,$0F,$24,$E6,$34,$00,$F6,$90
L5FC0: .byte $0F,$78,$E8,$18,$C8,$48
L5FC6: .byte $D6,$47,$D7,$48,$D8,$49,$D9
L5FCD: .byte $CC,$0C,$4C
L5FD0: .byte $04,$02
L5FD2: .byte $76,$58,$3A
L5FD5: .byte $06,$08,$0A
L5FD8: .byte $2C,$4C,$6C
L5FDB: .byte $2D,$D1,$3C,$4B,$61,$5A
L5FE1: .byte $70,$7F,$8E
L5FE4: .byte $00
L5FE5: .byte $5F,$0A,$5F,$14,$5F,$1E,$5F,$28,$5F,$32,$5F,$3C,$5F,$46,$5F,$50
       .byte $5F,$5A,$5F,$BE,$5E,$00,$50,$00,$50,$00,$50
