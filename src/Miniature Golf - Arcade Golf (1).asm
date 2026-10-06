; Disassembly of roms/Miniature Golf - Arcade Golf (1).bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Miniature Golf - Arcade Golf (1).bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXBLPF  =  $36
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$28    
       LDA    #$00    
LF006: STA    NUSIZ0,X
       DEX            
       BPL    LF006   
       TXS            
LF00C: STA    VSYNC,X 
       DEX            
       BMI    LF00C   
       LDA    #$FF    
       STA    $80     
       LDA    #$09    
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$20    
       STA    NUSIZ1  
       LDA    #$01    
       STA    $8F     
       STA    $87     
       LDA    #$0A    
       STA    $88     
       JMP    LF0B8   
LF02C: INC    $81     
       BNE    LF032   
       INC    $82     
LF032: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       LDA    SWCHB   
       LDX    #$07    
       LDY    #$07    
       AND    #$08    
       BEQ    LF04B   
       LDX    #$F7    
       LDY    #$03    
LF04B: LDA    $80     
       BMI    LF051   
       LDX    #$FF    
LF051: AND    $82     
       STA    $86     
       STX    $84     
       LDX    #$03    
       STA    WSYNC   
LF05B: LDA    LF6AD,Y 
       EOR    $86     
       AND    $84     
       STA    COLUP0,X
       DEY            
       DEX            
       BPL    LF05B   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$31    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF085   
       LDA    #$00    
       STA    $91     
       STA    $80     
       STA    $87     
       STA    $88     
       BEQ    LF0B6   
LF085: LSR            
       LDA    #$FF    
       BCC    LF08E   
       STA    $83     
       BNE    LF0BB   
LF08E: STA    $80     
       LDA    $83     
       BMI    LF09A   
       EOR    $81     
       AND    #$1F    
       BNE    LF0BB   
LF09A: LDA    $81     
       AND    #$1F    
       STA    $83     
       INC    $8F     
       LDA    #$0A    
       STA    $88     
       LDA    $8F     
       CMP    #$03    
       BNE    LF0B0   
       LDA    #$01    
       STA    $8F     
LF0B0: STA    $87     
       LDA    #$00    
       STA    $B0     
LF0B6: STA    $92     
LF0B8: JSR    LF63E   
LF0BB: LDA    SWCHA   
       STA    $9F     
       LDA    $80     
       BMI    LF0D0   
       LDA    $A9     
       ORA    $AA     
       BNE    LF0CD   
       JSR    LF43D   
LF0CD: JSR    LF2C7   
LF0D0: JSR    LF54F   
       LDX    #$04    
LF0D5: JSR    LF691   
       DEX            
       BPL    LF0D5   
       STA    CXCLR   
       LDA    $AD     
       BEQ    LF0E9   
       LDA    $B1     
       STA    $87     
       LDA    $B2     
       STA    $88     
LF0E9: LDA    INTIM   
       BNE    LF0E9   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    $89     
       STA    $8A     
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$02    
       STA    CTRLPF  
       LDX    #$05    
LF106: STA    WSYNC   
       LDA    $89     
       STA    PF1     
       LDY    $8B     
       LDA    LF6ED,Y 
       AND    #$F0    
       STA    $89     
       LDY    $8D     
       LDA    LF6ED,Y 
       AND    #$0F    
       ORA    $89     
       STA    $89     
       LDA    $8A     
       STA    PF1     
       LDY    $8C     
       LDA    LF6ED,Y 
       AND    #$F0    
       STA    $8A     
       LDY    $8E     
       LDA    LF6ED,Y 
       AND    #$0F    
       STA    WSYNC   
       ORA    $8A     
       STA    $8A     
       LDA    $89     
       STA    PF1     
       DEX            
       BMI    LF150   
       INC    $8B     
       INC    $8D     
       INC    $8C     
       INC    $8E     
       LDA    $8A     
       STA    PF1     
       JMP    LF106   
LF150: LDA    #$00    
       STA    PF1     
       STA    WSYNC   
       LDA    #$11    
       STA    CTRLPF  
       STA    WSYNC   
       LDX    #$01    
LF15E: LDA    $87,X   
       AND    #$0F    
       STA    $8D,X   
       ASL            
       ASL            
       CLC            
       ADC    $8D,X   
       STA    $8D,X   
       LDA    $87,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $8B,X   
       LSR            
       LSR            
       STA    WSYNC   
       CLC            
       ADC    $8B,X   
       STA    $8B,X   
       DEX            
       BPL    LF15E   
       LDA    $80     
       BMI    LF1A3   
       LDY    $91     
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF194   
       LDA    LF6B5,Y 
       LDX    LF6B6,Y 
       BNE    LF19F   
LF194: LDA    LF6B9,Y 
       AND    #$0F    
       TAX            
       LDA    LF6B8,Y 
       AND    #$0F    
LF19F: STA    COLUP1  
       STX    COLUP0  
LF1A3: TSX            
       STX    $B5     
       LDX    $92     
       LDY    LF724,X 
       LDX    #$00    
       LDA    #$58    
       STA    $90     
LF1B1: STA    WSYNC   
       STX    $B4     
       LDX    #$1F    
       TXS            
       LDA    LF73A,Y 
       STA    PF0     
       LDA    LF73F,Y 
       STA    PF1     
       LDA    LF744,Y 
       STA    PF2     
       SEC            
       LDA    $90     
       SBC    $93     
       AND    #$F8    
       BEQ    LF1D4   
       LDX    #$00    
       BEQ    LF1D7   
LF1D4: LDX    #$FF    
       NOP            
LF1D7: SEC            
       LDA    $90     
       SBC    $96     
       AND    #$FC    
       STA    $A2     
       NOP            
       NOP            
       NOP            
       SEC            
       LDA    $90     
       SBC    $97     
       AND    #$FE    
       PHP            
       LDA    $A2     
       PHP            
       STX    GRP0    
       SEC            
       LDA    $90     
       SBC    $94     
       AND    #$FE    
       BEQ    LF1FD   
       LDA    #$00    
       BEQ    LF200   
LF1FD: LDA    #$0E    
       NOP            
LF200: STA    GRP1    
       LDX    $B4     
       LDA    $90     
       CMP    LF6C3,X 
       BPL    LF20D   
       INX            
       INY            
LF20D: DEC    $90     
       BPL    LF1B1   
       LDX    $B5     
       TXS            
       LDA    #$1A    
       STA    TIM64T  
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    HMCLR   
       JSR    LF4CD   
       LDA    $BF     
       BEQ    LF240   
       DEC    $BF     
       DEC    $C0     
       BNE    LF2A7   
       INC    $C1     
       LDA    #$07    
       STA    $C0     
       LDA    $C1     
LF23E: STA    $BB     
LF240: LDX    #$00    
       LDA    $BB     
       BEQ    LF2A7   
       STA    $BC     
       LDA    $BD,X   
       BEQ    LF251   
       INX            
       LDA    $BD,X   
       BNE    LF2A7   
LF251: LDA    $BB     
       CMP    #$03    
       BNE    LF25F   
       LDA    #$0D    
       STA    AUDC0,X 
       LDA    #$08    
       BNE    LF297   
LF25F: CMP    #$02    
       BNE    LF26B   
       LDA    #$08    
       STA    AUDC0,X 
       LDA    #$0A    
       BNE    LF297   
LF26B: CMP    #$04    
       BNE    LF279   
       LDA    #$07    
       STA    $C0     
       STA    AUDC0,X 
       LDA    #$02    
       BNE    LF297   
LF279: CMP    #$05    
       BNE    LF285   
       LDA    #$0D    
       STA    AUDC0,X 
       LDA    #$04    
       BNE    LF297   
LF285: CMP    #$01    
       BNE    LF2A7   
       LDA    #$1F    
       STA    $BF     
       LDA    #$07    
       STA    $C0     
       LDA    #$03    
       STA    $C1     
       BNE    LF23E   
LF297: STA    AUDF0,X 
       LDA    $C0     
       BNE    LF29F   
       LDA    #$02    
LF29F: STA    $BD,X   
       LDA    #$00    
       STA    $BB     
       BEQ    LF2BF   
LF2A7: LDA    $BD     
       BEQ    LF2AD   
       DEC    $BD     
LF2AD: LDA    $BE     
       BEQ    LF2B5   
       DEC    $BE     
       BPL    LF2BF   
LF2B5: LDA    $BD     
       ORA    $BE     
       BNE    LF2BF   
       STA    AUDC1   
       STA    AUDC0   
LF2BF: LDA    INTIM   
       BNE    LF2BF   
       JMP    LF02C   
LF2C7: LDA    CXBLPF  
       BPL    LF30D   
       LDA    $A3     
       BNE    LF2DB   
       LDA    #$03    
       STA    $BB     
       INC    $A3     
       JSR    LF3F6   
       JMP    LF311   
LF2DB: CMP    #$01    
       BNE    LF2F0   
       INC    $A3     
       JSR    LF408   
       JSR    LF429   
       JSR    LF408   
       JSR    LF433   
       JMP    LF311   
LF2F0: CMP    #$02    
       BNE    LF2FF   
       INC    $A3     
       JSR    LF3F6   
       JSR    LF417   
       JMP    LF311   
LF2FF: LDA    $A7     
       STA    $9D     
       LDA    $A8     
       STA    $97     
       LDA    #$00    
       STA    $A9     
       STA    $AA     
LF30D: LDA    #$00    
       STA    $A3     
LF311: LDA    CXP1FB  
       AND    #$40    
       BEQ    LF378   
       LDA    $BC     
       CMP    #$05    
       BEQ    LF33F   
       LDA    $A9     
       ORA    $AA     
       BEQ    LF345   
       LDY    #$00    
       LDX    $91     
       LDA    LF6C1,X 
       AND    SWCHB   
       BEQ    LF331   
       LDY    #$02    
LF331: LDA    $B9     
       CMP    LF736,Y 
       BCS    LF33F   
       LDA    $BA     
       CMP    LF737,Y 
       BCC    LF345   
LF33F: JSR    LF433   
       JMP    LF378   
LF345: LDA    #$04    
       STA    $BB     
       LDA    #$01    
       CMP    $AD     
       BNE    LF351   
       STA    $BB     
LF351: LDA    $8F     
       LSR            
       BEQ    LF35E   
       LDA    $91     
       BEQ    LF370   
       LDA    #$00    
       STA    $91     
LF35E: INC    $92     
       LDA    $92     
       CMP    #$09    
       BNE    LF374   
       LDA    #$FF    
       STA    $80     
       LDA    #$00    
       STA    $92     
       BEQ    LF374   
LF370: EOR    #$01    
       STA    $91     
LF374: JSR    LF63E   
       RTS            

LF378: LDA    CXP0FB  
       AND    #$40    
       BNE    LF381   
       STA    $A4     
       RTS            

LF381: LDA    $A4     
       BEQ    LF386   
       RTS            

LF386: LDA    #$01    
       STA    $A4     
       LDA    #$05    
       STA    $BB     
       LDA    $A9     
       ORA    $AA     
       BNE    LF3BF   
       LDA    #$0A    
       STA    $A9     
       STA    $AA     
       LDX    #$00    
       LDA    #$28    
       STA    $BA     
       STA    $B9     
       LDA    $92     
       ASL            
       ASL            
       TAY            
       SEC            
       LDA    LF7C3,Y 
       SBC    LF7C2,Y 
       BEQ    LF3B2   
       LDX    #$01    
LF3B2: LDA    $AE     
       BEQ    LF3BA   
       LDA    #$28    
       BNE    LF3BC   
LF3BA: LDA    #$D8    
LF3BC: STA    $A9,X   
       RTS            

LF3BF: SEC            
       LDA    $9D     
       SBC    $99     
       LSR            
       LSR            
       BIT    LF6C0   
       BEQ    LF3CD   
       ORA    #$C0    
LF3CD: STA    $B7     
       CLC            
       ADC    $93     
       STA    $B4     
       LDA    $B7     
       EOR    #$FF    
       CLC            
       ADC    #$09    
       CLC            
       ADC    $93     
       STA    $B6     
       LDA    $97     
       CMP    $B4     
       BCC    LF3EE   
       CMP    $B6     
       BCC    LF3F2   
LF3EA: JSR    LF433   
       RTS            

LF3EE: CMP    $B6     
       BCC    LF3EA   
LF3F2: JSR    LF429   
       RTS            

LF3F6: SEC            
       LDA    $9D     
       SBC    $A5     
       STA    $9D     
       CLC            
       LDA    $97     
       ADC    $A6     
       STA    $97     
       JSR    LF429   
       RTS            

LF408: CLC            
       LDA    $9D     
       ADC    $A5     
       STA    $9D     
       SEC            
       LDA    $97     
       SBC    $A6     
       STA    $97     
       RTS            

LF417: SEC            
       LDA    $9D     
       SBC    $A5     
       STA    $9D     
       SEC            
       LDA    $97     
       SBC    $A6     
       STA    $97     
       JSR    LF429   
       RTS            

LF429: LDA    $AA     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $AA     
       RTS            

LF433: LDA    $A9     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $A9     
       RTS            

LF43D: LDX    $91     
       LDA    INPT4,X 
       EOR    #$80    
       AND    $A0,X   
       BMI    LF44A   
       JMP    LF4C8   
LF44A: SEC            
       LDA    $9D     
       SBC    $9C     
       LSR            
       LSR            
       BIT    LF6C0   
       BEQ    LF458   
       ORA    #$C0    
LF458: STA    $AA     
       BPL    LF461   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF461: STA    $BA     
       SEC            
       LDA    $97     
       SBC    $96     
       LSR            
       LSR            
       BIT    LF6C0   
       BEQ    LF471   
       ORA    #$C0    
LF471: STA    $A9     
       BPL    LF47A   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF47A: STA    $B9     
       ORA    $BA     
       BEQ    LF4C8   
       LDA    #$74    
       STA    $B3     
       LDA    $B9     
       ASL            
       CMP    $BA     
       BCS    LF48D   
       LDA    $BA     
LF48D: CLC            
       ADC    $B3     
       LSR            
       LSR            
       BIT    LF6C0   
       BEQ    LF499   
       ORA    #$C0    
LF499: STA    $AB     
       STA    $B8     
       INC    $AD     
       LDY    $91     
       LDA    LF6C1,Y 
       AND    SWCHB   
       BEQ    LF4AD   
       ASL    $AB     
       ASL    $B8     
LF4AD: LDA    #$02    
       STA    $BB     
       LDA    $9D     
       STA    $9C     
       LDA    $97     
       CMP    #$57    
       BCC    LF4BD   
       LDA    #$56    
LF4BD: STA    $96     
       SED            
       LDA    $B1,X   
       CLC            
       ADC    #$01    
       STA    $B1,X   
       CLD            
LF4C8: LDA    INPT4,X 
       STA    $A0,X   
       RTS            

LF4CD: LDA    $91     
       BNE    LF4D5   
       LDY    #$07    
       BNE    LF4D7   
LF4D5: LDY    #$03    
LF4D7: SEC            
       LDA    $97     
       SBC    $96     
       BPL    LF4E3   
       EOR    #$FF    
       CLC            
       ADC    #$01    
LF4E3: CMP    #$0B    
       BCS    LF502   
       LDA    $9C     
       CMP    $9D     
       BCC    LF4F5   
       SEC            
       LDA    $9C     
       SBC    $9D     
       JMP    LF4FA   
LF4F5: SEC            
       LDA    $9D     
       SBC    $9C     
LF4FA: CMP    #$15    
       BCS    LF502   
       LDA    $AC     
       BNE    LF546   
LF502: LDA    LF6BB,Y 
       AND    $9F     
       BEQ    LF52C   
       LDA    LF6BA,Y 
       AND    $9F     
       BEQ    LF521   
       LDA    LF6B9,Y 
       AND    $9F     
       BEQ    LF536   
       LDA    LF6B8,Y 
       AND    $9F     
       BEQ    LF53E   
       JMP    LF546   
LF521: LDA    $9C     
       CMP    #$03    
       BEQ    LF546   
       DEC    $9C     
       JMP    LF546   
LF52C: LDA    $9C     
       CMP    #$9D    
       BEQ    LF546   
       INC    $9C     
       BNE    LF546   
LF536: LDA    $96     
       BEQ    LF546   
       DEC    $96     
       BPL    LF546   
LF53E: LDA    $96     
       CMP    #$56    
       BEQ    LF546   
       INC    $96     
LF546: DEC    $AC     
       BPL    LF54E   
       LDA    #$03    
       STA    $AC     
LF54E: RTS            

LF54F: LDA    $A3     
       BEQ    LF556   
       JMP    LF5F7   
LF556: LDA    $9D     
       STA    $A5     
       STA    $A7     
       LDA    $97     
       STA    $A6     
       STA    $A8     
       LDA    $A9     
       LSR            
       LSR            
       LSR            
       LSR            
       BIT    LF6BE   
       BEQ    LF56F   
       ORA    #$F0    
LF56F: STA    $B4     
       LDA    $A9     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $98     
       STA    $98     
       LDA    $B4     
       ADC    $97     
       CMP    #$59    
       BCC    LF58E   
       LDA    $A9     
       BPL    LF58C   
       LDA    #$00    
       BEQ    LF58E   
LF58C: LDA    #$58    
LF58E: STA    $97     
       LDA    $AA     
       LSR            
       LSR            
       LSR            
       LSR            
       BIT    LF6BE   
       BEQ    LF59D   
       ORA    #$F0    
LF59D: STA    $B4     
       LDA    $AA     
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    $9E     
       STA    $9E     
       LDA    $B4     
       ADC    $9D     
       CMP    #$A0    
       BCC    LF5B4   
       LDA    #$9F    
LF5B4: STA    $9D     
       LDA    $AB     
       BPL    LF5C0   
       INC    $AB     
       BNE    LF5E9   
       BEQ    LF5C4   
LF5C0: DEC    $AB     
       BNE    LF5E9   
LF5C4: LDA    $B8     
       STA    $AB     
       LDX    #$01    
LF5CA: LDA    $A9,X   
       BEQ    LF5DA   
       BMI    LF5D6   
       DEC    $A9,X   
       DEC    $B9,X   
       BPL    LF5DA   
LF5D6: INC    $A9,X   
       DEC    $B9,X   
LF5DA: DEX            
       BPL    LF5CA   
       LDA    $A9     
       BEQ    LF5E5   
       LDA    $AA     
       BNE    LF5E9   
LF5E5: LDA    #$01    
       STA    $B8     
LF5E9: SEC            
       LDA    $9D     
       SBC    $A5     
       STA    $A5     
       SEC            
       LDA    $97     
       SBC    $A6     
       STA    $A6     
LF5F7: LDA    $92     
       ASL            
       ASL            
       TAY            
       SEC            
       LDA    LF7C3,Y 
       SBC    LF7C2,Y 
       BEQ    LF621   
       LDA    $99     
       CMP    LF7C3,Y 
       BEQ    LF61B   
       CMP    LF7C2,Y 
       BEQ    LF615   
       LDA    $AE     
       BEQ    LF61B   
LF615: INC    $99     
       LDA    #$01    
       BNE    LF63B   
LF61B: DEC    $99     
       LDA    #$00    
       BEQ    LF63B   
LF621: LDA    $93     
       CMP    LF7C5,Y 
       BEQ    LF637   
       CMP    LF7C4,Y 
       BEQ    LF631   
       LDA    $AE     
       BEQ    LF637   
LF631: INC    $93     
       LDA    #$01    
       BNE    LF63B   
LF637: DEC    $93     
       LDA    #$00    
LF63B: STA    $AE     
       RTS            

LF63E: LDA    $92     
       STA    $AF     
       ASL            
       TAX            
       LDA    LF6C9,X 
       STA    $9D     
       STA    $9C     
       LDA    LF6CA,X 
       STA    $97     
       STA    $96     
       LDA    LF6DB,X 
       STA    $9A     
       LDA    LF6DC,X 
       STA    $94     
       LDA    $92     
       ASL            
       ASL            
       TAY            
       LDA    LF7C2,Y 
       STA    $99     
       LDA    LF7C4,Y 
       STA    $93     
       LDA    #$01    
       STA    $AE     
       LDA    #$00    
       STA    $A9     
       STA    $AA     
       STA    $AD     
       LDA    $80     
       BMI    LF690   
       INC    $AF     
       LDA    $87     
       STA    $B1     
       LDA    $88     
       STA    $B2     
       LDA    $AF     
       STA    $87     
       LDX    $92     
       LDA    LF72D,X 
       STA    $88     
LF690: RTS            

LF691: LDA    $99,X   
       LDY    #$02    
       SEC            
LF696: INY            
       SBC    #$0F    
       BCS    LF696   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF6A5: DEY            
       BPL    LF6A5   
       STA    RESP0,X 
       STA    HMP0,X  
       RTS            

LF6AD: .byte $86,$48,$1A,$C8,$06,$0E,$08,$0A
LF6B5: .byte $86
LF6B6: .byte $48,$86
LF6B8: .byte $86
LF6B9: .byte $4E
LF6BA: .byte $86
LF6BB: .byte $01,$02,$04
LF6BE: .byte $08,$10
LF6C0: .byte $20
LF6C1: .byte $40,$80
LF6C3: .byte $55,$3F,$2A,$14,$02,$00
LF6C9: .byte $87
LF6CA: .byte $0A,$50,$05,$08,$4B,$0A,$1A,$1C,$51,$0A,$2C,$0A,$48,$8C,$4B,$82
       .byte $21
LF6DB: .byte $05
LF6DC: .byte $05,$50,$4B,$50,$26,$4F,$37,$91,$05,$91,$2C,$96,$48,$1A,$2C,$10
       .byte $4D
LF6ED: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE,$00,$00,$00,$00,$00
LF724: .byte $00,$0F,$1E,$2D,$3C,$4B,$5A,$69,$78
LF72D: .byte $04,$03,$04,$04,$04,$03,$07,$03,$04
LF736: .byte $10
LF737: .byte $1D,$0B,$13
LF73A: .byte $FF,$10,$10,$10,$10
LF73F: .byte $FF,$00,$66,$00,$00
LF744: .byte $FF,$00,$0F,$8F,$FF,$FF,$10,$10,$10,$FF,$FF,$00,$00,$00,$FF,$FF
       .byte $00,$FF,$00,$00,$FF,$90,$10,$10,$70,$FF,$00,$00,$00,$00,$FF,$00
       .byte $FF,$06,$60,$FF,$10,$10,$10,$10,$FF,$00,$BF,$BF,$00,$FF,$00,$39
       .byte $39,$FE,$FF,$10,$90,$10,$90,$FF,$0F,$FC,$00,$CF,$FF,$00,$00,$00
       .byte $00,$FF,$10,$10,$10,$10,$FF,$FF,$00,$00,$FF,$FF,$00,$80,$80,$00
       .byte $FF,$10,$10,$10,$10,$FF,$40,$42,$42,$02,$FF,$10,$10,$00,$10,$FF
       .byte $FF,$10,$10,$FF,$FF,$00,$44,$00,$80,$FF,$00,$00,$00,$00,$FF,$10
       .byte $FF,$10,$70,$FF,$00,$7F,$00,$3F,$FF,$FF,$03,$00,$55,$FF
LF7C2: .byte $02
LF7C3: .byte $24
LF7C4: .byte $21
LF7C5: .byte $21,$02,$95,$21,$21,$02,$24,$2C,$2C,$38,$68,$46,$46,$46,$46,$0C
       .byte $32,$44,$44,$01,$50,$4F,$4F,$05,$41,$FF,$FF,$FF,$FF,$02,$6E,$21
       .byte $21,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$00,$F0,$EA,$EA
