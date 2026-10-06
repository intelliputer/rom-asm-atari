; Disassembly of roms/Exocet.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Exocet.bin
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
REFP1   =  $0C
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
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
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
       LDX    #$00    
       LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
LF00C: JSR    LFC98   
LF00F: STA    WSYNC   
       LDA    $B2     
       LDX    #$02    
       JSR    LFDC8   
       LDA    $B3     
       LDX    #$03    
       JSR    LFDC8   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0F    
       STA    COLUP0  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    COLUP1  
       STA    HMCLR   
LF036: LDA    INTIM   
       BNE    LF036   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    CXCLR   
       STA    HMCLR   
       LDA    #$07    
       STA    $BA     
       STA    VDELP0  
       STA    VDELP1  
LF04D: LDY    $BA     
       LDA    ($9C),Y 
       STA    $BB     
       LDA    ($9A),Y 
       TAX            
       LDA    ($92),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       LDA    ($96),Y 
       STA    GRP0    
       LDA    ($98),Y 
       LDY    $BB     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $BA     
       BPL    LF04D   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    $F8     
       BEQ    LF089   
       LDA    #$25    
       BNE    LF08B   
LF089: LDA    #$20    
LF08B: STA    NUSIZ0  
       LDA    $A1     
       STA    NUSIZ1  
       LDA    #$1F    
       STA    COLUP0  
       LDA    #$9F    
       STA    COLUP1  
       STA    WSYNC   
       LDA    $A8     
       LDX    #$00    
       JSR    LFDC8   
       STA    WSYNC   
       LDA    $AD     
       LDX    #$01    
       JSR    LFDC8   
       STA    WSYNC   
       LDA    $A8     
       CMP    #$86    
       BCS    LF0B5   
       STA    WSYNC   
LF0B5: LDA    $AD     
       CMP    #$86    
       BCS    LF0BD   
       STA    WSYNC   
LF0BD: STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    COLUBK  
       LDA    $B5     
       SEC            
       SBC    #$86    
       STA    $BA     
       LDA    $B6     
       SEC            
       SBC    #$86    
       STA    $BB     
       STA    HMCLR   
       LDY    #$2B    
       STA    WSYNC   
       STA    HMOVE   
LF0DB: LDA    #$00    
       STA    $BE     
       STA    $AA     
       LDA    #$02    
       CPY    $BA     
       BNE    LF0E9   
       STA    $BE     
LF0E9: CPY    $BB     
       BNE    LF0EF   
       STA    $AA     
LF0EF: LDA    ($8C),Y 
       TAX            
       LDA    ($80),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    GRP1    
       LDA    $BE     
       STA    ENAM0   
       LDA    $AA     
       STA    ENAM1   
       DEY            
       BPL    LF0DB   
       LDA    $BD     
       STA    $BB     
       LDX    #$85    
LF10D: CPX    $AB     
       BNE    LF13B   
       LDY    $BC     
LF113: LDA    $A0     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    #$00    
       STA    COLUBK  
       STA    COLUP1  
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       DEX            
       DEC    $BB     
       BEQ    LF160   
       DEY            
       BPL    LF113   
LF13B: LDA    $A0     
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    #$00    
       STA    COLUBK  
       STA    COLUP1  
       STA    GRP0    
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       DEX            
       DEC    $BB     
       BNE    LF10D   
       NOP            
       NOP            
LF160: LDA    $B0     
       AND    #$0F    
       TAY            
       LDA    $A2     
       BMI    LF191   
       STA    NUSIZ1  
       LDA    $A5     
       STA    COLUP1  
       STA    WSYNC   
       LDA    $9E     
       STA    GRP0    
       LDA    $A0     
       STA    GRP1    
       LDA    $A2     
LF17B: DEY            
       BPL    LF17B   
       STA    RESP1   
       LDA    $B0     
       STA    HMP1    
       DEX            
       LDA    #$4B    
       SEC            
       SBC    $F7     
       SBC    $BD     
       STA    $BE     
       JMP    LF1BC   
LF191: STA    NUSIZ1  
       LDA    $A5     
       STA    COLUP1  
       STA    WSYNC   
       LDA    $9E     
       STA    GRP0    
       LDA    $A0     
       STA    GRP1    
       LDA    $B0     
       STA    HMP1    
       LDA    $A2     
       LDA    $A5     
       STA    COLUP1  
       DEX            
       LDA    $A0     
       LDA    #$4B    
       SEC            
       SBC    $F7     
       SBC    $BD     
       STA    $BE     
LF1B7: DEY            
       BPL    LF1B7   
       STA    RESP1   
LF1BC: STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       LDA    ($82),Y 
       STA    GRP0    
       LDA.wy $00C0,Y 
       STA    PF0     
       LDA.wy $00C8,Y 
       STA    PF1     
       LDA.wy $00D0,Y 
       STA    PF2     
       LDA.wy $00D8,Y 
       STA    PF0     
       LDA.wy $00E0,Y 
       STA    PF1     
       LDA.wy $00E8,Y 
       STA    PF2     
       DEX            
       DEY            
       STA    HMCLR   
LF1E8: LDA    ($82),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA.wy $00C0,Y 
       STA    PF0     
       LDA.wy $00C8,Y 
       STA    PF1     
       LDA.wy $00D0,Y 
       STA    PF2     
       LDA.wy $00D8,Y 
       STA    PF0     
       LDA.wy $00E0,Y 
       STA    PF1     
       LDA.wy $00E8,Y 
       STA    PF2     
       DEX            
       DEY            
       STA    HMCLR   
       BNE    LF1E8   
       LDA    ($82),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEX            
       LDY    #$13    
LF227: LDA    #$00    
       STA    $BB     
       STA    $AA     
       LDA    #$02    
       CPX    $B5     
       BNE    LF235   
       STA    $BB     
LF235: CPX    $B6     
       BNE    LF23B   
       STA    $AA     
LF23B: LDA    ($8E),Y 
       STA    $BA     
       LDA    ($84),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $BA     
       STA    GRP1    
       LDA    $AA     
       STA    ENAM1   
       LDA    $BB     
       STA    ENAM0   
       DEX            
       DEY            
       BPL    LF227   
LF257: CPX    $AB     
       BNE    LF289   
       LDY    $AC     
LF25D: LDA    #$00    
       STA    $BA     
       STA    $BB     
       LDA    #$02    
       CPX    $B5     
       BNE    LF26B   
       STA    $BA     
LF26B: CPX    $B6     
       BNE    LF271   
       STA    $BB     
LF271: LDA    ($8A),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $BB     
       STA    ENAM1   
       LDA    $BA     
       STA    ENAM0   
       DEX            
       DEC    $BE     
       BEQ    LF2B2   
       DEY            
       BPL    LF25D   
LF289: LDA    #$00    
       STA    $BA     
       STA    $BB     
       LDA    #$02    
       CPX    $B5     
       BNE    LF297   
       STA    $BA     
LF297: CPX    $B6     
       BNE    LF29D   
       STA    $BB     
LF29D: LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $BB     
       STA    ENAM1   
       LDA    $BA     
       STA    ENAM0   
       DEX            
       DEC    $BE     
       BNE    LF257   
LF2B2: CPX    $B5     
       BNE    LF2BA   
       LDA    #$02    
       STA    $BE     
LF2BA: LDA    $B1     
       AND    #$0F    
       TAY            
       LDA    $A3     
       STA    NUSIZ1  
       BMI    LF2E6   
       STA    WSYNC   
       LDA    $9F     
       STA    GRP0    
       LDA    $BE     
       STA    ENAM0   
       STA    ENAM0   
LF2D1: DEY            
       BPL    LF2D1   
       STA    RESP1   
       LDA    $A6     
       STA    COLUP1  
       DEX            
       LDY    #$13    
       LDA    $B1     
       STA    HMP1    
       LDA    ($86),Y 
       JMP    LF30A   
LF2E6: STA    WSYNC   
       LDA    $9F     
       STA    GRP0    
       LDA    $BE     
       STA    ENAM0   
       STY    $BA     
       LDY    #$13    
       LDA    $A3     
       STA    NUSIZ1  
       LDA    $A6     
       STA    COLUP1  
       DEX            
       LDA    $B1     
       STA    HMP1    
       LDA    ($86),Y 
       LDY    $BA     
LF305: DEY            
       BPL    LF305   
       STA    RESP1   
LF30A: STA    WSYNC   
       STA    HMOVE   
       LDY    #$13    
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       LDA    #$00    
       STA    ENAM0   
       LDA    #$02    
       CPX    $B5     
       BNE    LF322   
       STA    ENAM0   
LF322: STA    HMCLR   
       DEX            
       DEY            
LF326: LDA    #$00    
       STA    $BE     
       STA    $AA     
       LDA    #$02    
       CPX    $B5     
       BNE    LF334   
       STA    $BE     
LF334: CPX    $B6     
       BNE    LF33A   
       STA    $AA     
LF33A: LDA    ($90),Y 
       STA    $BA     
       LDA    ($86),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $BA     
       STA    GRP1    
       LDA    $AA     
       STA    ENAM1   
       LDA    $BE     
       STA    ENAM0   
       DEX            
       DEY            
       BPL    LF326   
       INY            
       STY    $BB     
       STY    ENAM0   
       LDA    #$07    
       STA    $BA     
       STA    WSYNC   
LF361: STA    HMOVE   
       LDY    $BA     
       LDA    ($88),Y 
       STA    GRP0    
       LDY    $BB     
       LDA.wy $00D8,Y 
       STA    PF0     
       LDA.wy $00E0,Y 
       STA    PF1     
       LDA.wy $00E8,Y 
       STA    PF2     
       LDA.wy $00C0,Y 
       STA    PF0     
       LDA.wy $00C8,Y 
       STA    PF1     
       LDA.wy $00D0,Y 
       STA    PF2     
       DEX            
       INC    $BB     
       DEC    $BA     
       NOP            
       BPL    LF361   
       NOP            
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEX            
       BEQ    LF3C0   
LF3A5: STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEX            
       BNE    LF3A5   
LF3C0: STA    WSYNC   
       STA    HMOVE   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    COLUBK  
       INX            
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    RESP0   
       STA    RESP1   
       LDA    #$10    
       STA    HMP1    
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$07    
LF3E1: STA    WSYNC   
       STA    HMOVE   
       LDA    LFFD0,X 
       STA    GRP0    
       LDA    LFFD8,X 
       STA    GRP1    
       NOP            
       LDA    LFFE8,X 
       TAY            
       LDA    LFFE0,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF3E1   
       LDA    #$1A    
       STA    TIM64T  
       LDA    $F4     
       AND    #$0F    
       ORA    $A7     
       STA    $F4     
       LDX    #$02    
LF40F: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $F4,X   
       AND    #$F0    
       LSR            
       STA.wy $0092,Y 
       LDA    $F4,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0094,Y 
       DEX            
       BPL    LF40F   
       INX            
LF429: LDA    $94,X   
       CMP    #$00    
       BNE    LF439   
       LDA    #$74    
       STA    $94,X   
       INX            
       INX            
       CPX    #$07    
       BCC    LF429   
LF439: LDA    $A7     
       BNE    LF444   
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF6D2   
LF444: LDA    VBLANK  
       ASL            
       BCS    LF459   
       LDA    WSYNC   
       ASL            
       BCS    LF459   
       BIT    $FB     
       BMI    LF47A   
       LDA    COLUP1  
       ASL            
       BCS    LF459   
       BCC    LF47A   
LF459: BIT    $FB     
       BPL    LF46B   
       LDA    $AD     
       CMP    $A8     
       BCS    LF46B   
       ADC    #$18    
       CMP    $A8     
       BCC    LF46B   
       BCS    LF47A   
LF46B: LDA    $F8     
       BNE    LF480   
       LDA    #$3F    
       STA    $F8     
       LDA    #$60    
       STA    $8A     
       JMP    LF4B2   
LF47A: LDA    $F8     
       BNE    LF480   
       BEQ    LF4B2   
LF480: DEC    $F8     
       LDA    $F8     
       BNE    LF4A2   
       LDA    #$2C    
       STA    $8A     
       LDA    #$08    
       STA    $A8     
       LDA    #$B0    
       STA    $A9     
       LDA    #$9F    
       AND    $FB     
       STA    $FB     
       LDA    $A7     
       SEC            
       SBC    #$10    
       STA    $A7     
       JMP    LF4B2   
LF4A2: CMP    #$2A    
       BNE    LF4AA   
       LDA    #$94    
       STA    $8A     
LF4AA: CMP    #$15    
       BNE    LF4B2   
       LDA    #$C8    
       STA    $8A     
LF4B2: NOP            
       BIT    $FB     
       BMI    LF4F0   
       LDA    #$00    
       STA    $AA     
       LDA    VSYNC   
       ASL            
       BCS    LF4C7   
       LDA    COLUP1  
       ASL            
       BCS    LF4F3   
       BCC    LF536   
LF4C7: BIT    $FB     
       BVS    LF4E7   
       LDA    $F9     
       AND    #$3F    
       BNE    LF536   
       LDA    $8C     
       CMP    #$84    
       BNE    LF4E7   
       LDA    #$A9    
       CMP    $B5     
       BCC    LF4EC   
       LDA    #$9E    
       CMP    $B5     
       BCS    LF4EC   
       LDA    #$01    
       STA    $AA     
LF4E7: DEC    $FB     
       JMP    LF4F3   
LF4EC: LDA    #$FF    
       STA    $AA     
LF4F0: JMP    LF536   
LF4F3: LDA    $F9     
       AND    #$3F    
       BNE    LF542   
LF4F9: LDA    #$3F    
       STA    $F9     
       LDA    VSYNC   
       ASL            
       BCS    LF506   
       LDY    $A9     
       BNE    LF508   
LF506: LDY    $B5     
LF508: TYA            
       CMP    #$85    
       BCC    LF510   
       JMP    LF526   
LF510: TYA            
       STA    $BA     
       LDA    #$68    
       SEC            
       SBC    $BD     
       CMP    $BA     
       BCS    LF520   
       LDA    #$40    
       BNE    LF522   
LF520: LDA    #$80    
LF522: ORA    $F9     
       STA    $F9     
LF526: JSR    LFD61   
       LDA    #$60    
       STA.wy $008C,Y 
       LDA    #$FE    
       STA.wy $008D,Y 
       JMP    LF5D2   
LF536: LDA    $F9     
       AND    #$3F    
       BNE    LF53F   
       JMP    LF5D2   
LF53F: JMP    LF5AC   
LF542: JSR    LFD61   
       BIT    $FB     
       BPL    LF568   
       CPY    #$00    
       BNE    LF558   
       LDA    #$00    
       STA    $8C     
       LDA    #$FE    
       STA    $8D     
LF555: JMP    LF5D2   
LF558: LDA    #$00    
       CPY    #$02    
       BNE    LF564   
       LDA    #$00    
       STA    $A5     
       BEQ    LF555   
LF564: STA    $A6     
       BEQ    LF555   
LF568: JSR    LFD72   
       CPY    #$00    
       BEQ    LF587   
       CPY    #$02    
       BEQ    LF57D   
       LDA    #$B4    
       STA    $90     
       LDA    #$FF    
       STA    $91     
       BNE    LF599   
LF57D: LDA    #$B0    
       STA    $8E     
       LDA    #$FF    
       STA    $8F     
       BNE    LF599   
LF587: AND    #$01    
       BEQ    LF591   
       LDA    #$84    
       LDX    #$FF    
       BNE    LF595   
LF591: LDA    #$58    
       LDX    #$FF    
LF595: STA    $8C     
       STX    $8D     
LF599: LDA    $F9     
       AND    #$3F    
       BEQ    LF5A2   
       JMP    LF4F9   
LF5A2: TYA            
       LSR            
       TAY            
       LDA    #$98    
       STA.wy $00AD,Y 
       BNE    LF5D2   
LF5AC: DEC    $F9     
       LDA    $F9     
       AND    #$3F    
       BNE    LF5B7   
       JMP    LF542   
LF5B7: LDA    $F9     
       AND    #$3F    
       CMP    #$15    
       BCS    LF5C6   
       LDA    #$C8    
       LDX    #$FE    
       JMP    LF5CA   
LF5C6: LDA    #$94    
       LDX    #$FE    
LF5CA: JSR    LFD61   
       STA.wy $008C,Y 
       STX    $8D,Y   
LF5D2: NOP            
       BIT    $FB     
       BMI    LF615   
       LDA    $AA     
       CMP    #$01    
       BNE    LF5EA   
       LDA    #$30    
       JSR    LFDB9   
LF5E2: LDA    #$20    
       JSR    LFDB9   
       JMP    LF615   
LF5EA: CMP    #$FF    
       BEQ    LF615   
       BIT    $FB     
       BVC    LF600   
       LDA    $AE     
       BNE    LF5F9   
       JSR    LFDA1   
LF5F9: LDA    $AF     
       BNE    LF600   
       JSR    LFDA1   
LF600: LDA    VSYNC   
       ASL            
       BCC    LF615   
       BIT    $FB     
       BVC    LF5E2   
       JSR    LFDA1   
       JSR    LFDA1   
       JSR    LFDA1   
       JSR    LFDA1   
LF615: LDA    $FB     
       AND    #$10    
       BNE    LF64F   
       LDA    $FB     
       AND    #$0F    
       BNE    LF665   
       LDA    #$80    
       ORA    $FB     
       STA    $FB     
       LDA    #$1A    
       ORA    $FB     
       STA    $FB     
       LDA    #$00    
       STA    $8C     
       STA    $A5     
       STA    $A6     
       LDA    #$FE    
       STA    $8D     
       LDA    #$9D    
       STA    $AD     
       LDA    #$A0    
       STA    $AE     
       LDA    #$07    
       STA    $A1     
       STA    $A2     
       LDA    #$FF    
       STA    $A0     
       LDA    #$03    
       STA    $FC     
LF64F: LDA    $AD     
       BNE    LF665   
       DEC    $FC     
       LDA    $FC     
       BNE    LF665   
       BIT    $FB     
       LDA    $A9     
       BVC    LF668   
       CMP    #$85    
       BCC    LF66C   
       BCS    LF672   
LF665: JMP    LF6D2   
LF668: CMP    #$85    
       BCC    LF672   
LF66C: LDA    #$20    
       ORA    $FB     
       BNE    LF678   
LF672: LDA    $FB     
       EOR    #$40    
       AND    #$DF    
LF678: AND    #$6F    
       STA    $FB     
       LDA    #$98    
       STA    $AD     
       STA    $AE     
       STA    $AF     
       LDA    #$B0    
       STA    $8E     
       LDA    #$B4    
       STA    $90     
       LDA    #$FF    
       STA    $8F     
       STA    $91     
       LDA    #$47    
       STA    $A5     
       LDA    #$D7    
       STA    $A6     
       LDA    #$58    
       LDX    #$FF    
       STA    $8C     
       STX    $8D     
       LDA    #$00    
       STA    $A0     
       LDA    #$25    
       STA    $A1     
       STA    $A2     
       LDA    #$80    
       ORA    $B7     
       STA    $B7     
       LDA    #$20    
       STA    $FD     
       LDA    $A4     
       CMP    #$90    
       BEQ    LF6C2   
       SED            
       ADC    #$10    
       STA    $A4     
       CLD            
LF6C2: LDA    $B8     
       CMP    #$23    
       BCS    LF6D2   
       LDA    $A7     
       ADC    #$10    
       CMP    #$90    
       BCS    LF6D2   
       STA    $A7     
LF6D2: LDA    $A7     
       BNE    LF6DA   
       LDA    #$08    
       STA    $B8     
LF6DA: BIT    $B7     
       BPL    LF6EF   
       LDA    $B7     
       AND    #$7F    
       LDA    $B8     
       SEC            
       SBC    #$06    
       CMP    #$08    
       BCC    LF6EF   
       STA    $B8     
       STA    $B7     
LF6EF: LDA    $B4     
       BEQ    LF6F8   
       DEC    $B4     
       JMP    LF70B   
LF6F8: JSR    LFD72   
       STA    $B4     
       LDA    $B7     
       BNE    LF709   
       LDA    #$0F    
       ORA    $B7     
       STA    $B7     
       BNE    LF70B   
LF709: DEC    $B7     
LF70B: DEC    $B9     
       BPL    LF75A   
       LDA    #$03    
       STA    $B9     
       LDA    $B7     
       AND    #$0F    
       TAY            
       LDA    LFDF0,Y 
       STA    $BB     
       LDY    $F7     
       LDA    #$20    
       BIT    $BB     
       BEQ    LF731   
       BMI    LF730   
       DEY            
       CPY    #$02    
       BCS    LF731   
       LDY    $F7     
       BNE    LF731   
LF730: INY            
LF731: LDA    #$10    
       LDX    $BD     
       BIT    $BB     
       BEQ    LF745   
       BVS    LF744   
       DEX            
       CPX    #$08    
       BCS    LF745   
       LDX    $BD     
       BNE    LF745   
LF744: INX            
LF745: LDA    #$4B    
       SEC            
       SBC    $B8     
       STY    $BB     
       SBC    $BB     
       BCC    LF75A   
       STX    $BB     
       SBC    $BB     
       BCC    LF75A   
       STY    $F7     
       STX    $BD     
LF75A: LDA    $A7     
       BNE    LF761   
       JMP    LF7ED   
LF761: BIT    $FB     
       BPL    LF782   
       LDA    #$00    
       STA    $F1     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$0A    
       STA    AUDV0   
       STA    AUDV1   
       INC    $FD     
       LDA    $FD     
       STA    AUDF1   
       STA    AUDF0   
       JMP    LF7EC   
LF782: LDA    $F8     
       BEQ    LF78A   
       LDY    #$08    
       BNE    LF79C   
LF78A: LDA    $F0     
       CMP    #$0F    
       BEQ    LF7AB   
       DEC    $F1     
       LDA    $F1     
       BPL    LF798   
       LDA    #$00    
LF798: STA    $F1     
       LDY    #$0C    
LF79C: STY    AUDC0   
       EOR    #$3F    
       STA    AUDF0   
       EOR    #$3F    
       LSR            
       LSR            
       STA    AUDV0   
       JMP    LF7AF   
LF7AB: LDA    #$00    
       BEQ    LF798   
LF7AF: LDA    $F9     
       AND    #$3F    
       BEQ    LF7C6   
       LDY    #$08    
       STY    AUDC1   
       EOR    #$3F    
       STA    AUDF1   
       EOR    #$3F    
       LSR            
       LSR            
       STA    AUDV1   
       JMP    LF7EC   
LF7C6: LDA    $F2     
       AND    #$0F    
       BEQ    LF7E8   
       LDA    $F3     
       CLC            
       ADC    #$01    
       STA    $F3     
       CMP    #$05    
       BCC    LF7D9   
       LDA    #$00    
LF7D9: STA    $F3     
       LDY    #$0C    
       STY    AUDC1   
       LDY    #$06    
       STY    AUDV1   
       STA    AUDF1   
       JMP    LF7EC   
LF7E8: LDA    #$00    
       STA    AUDV1   
LF7EC: NOP            
LF7ED: LDA    $A7     
       BEQ    LF807   
       BIT    $FB     
       BPL    LF7FD   
       LDA    $AE     
       AND    #$F7    
       ORA    #$07    
       BNE    LF809   
LF7FD: LDA    $B8     
       CMP    #$23    
       BCS    LF807   
       LDA    #$B3    
       BNE    LF809   
LF807: LDA    #$C5    
LF809: STA    COLUPF  
LF80B: LDA    INTIM   
       BNE    LF80B   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       JSR    LFD1F   
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $BE     
       LDA    SWCHB   
       LSR            
       BCS    LF83E   
       LDA    #$80    
       STA    $A7     
       JMP    LF00C   
LF83E: LDA    $A7     
       BNE    LF845   
       JMP    LFA67   
LF845: LDA    $F8     
       BEQ    LF84C   
       JMP    LF8B8   
LF84C: LDA    $BE     
       LSR            
       BCS    LF855   
       INC    $A9     
       INC    $A9     
LF855: LSR            
       BCS    LF85C   
       DEC    $A9     
       DEC    $A9     
LF85C: LSR            
       BCS    LF863   
       DEC    $A8     
       DEC    $A8     
LF863: LSR            
       BCS    LF86A   
       INC    $A8     
       INC    $A8     
LF86A: LDA    #$B0    
       CMP    $A9     
       BCC    LF876   
       LDA    #$08    
       CMP    $A9     
       BCC    LF878   
LF876: STA    $A9     
LF878: LDA    #$94    
       CMP    $A8     
       BCC    LF884   
       LDA    #$08    
       CMP    $A8     
       BCC    LF886   
LF884: STA    $A8     
LF886: LDA    $A8     
       BEQ    LF8B5   
       LDA    REFP1   
       ASL            
       BCS    LF8B8   
       LDA    $F0     
       CMP    #$0F    
       BNE    LF8BE   
       LDA    $BE     
       BIT    $FB     
       BVS    LF89D   
       ORA    #$03    
LF89D: STA    $F0     
       CMP    #$0F    
       BEQ    LF8B5   
       LDA    #$02    
       CLC            
       ADC    $A8     
       STA    $B2     
       LDA    $A9     
       SEC            
       SBC    #$03    
       STA    $B5     
       LDA    #$3F    
       STA    $F1     
LF8B5: JMP    LF8EB   
LF8B8: LDA    $F0     
       CMP    #$0F    
       BEQ    LF8B5   
LF8BE: LDX    #$00    
       LDY    #$04    
       STY    $BA     
       JSR    LFD32   
       LDA    VSYNC   
       ASL            
       BCS    LF8E1   
       LDA    NUSIZ0  
       ASL            
       BCS    LF8E1   
       LDA    $B2     
       CMP    #$9F    
       BCS    LF8E1   
       CMP    #$08    
       BCC    LF8E1   
       LDA    $B5     
       CMP    #$B1    
       BCC    LF8EB   
LF8E1: LDA    #$0F    
       STA    $F0     
       LDA    #$00    
       STA    $B2     
       STA    $B5     
LF8EB: BIT    $FB     
       BMI    LF8FB   
       LDA    $A9     
       CMP    #$86    
       BCC    LF922   
       LDA    $F2     
       AND    #$0F    
       BEQ    LF8FE   
LF8FB: JMP    LFA06   
LF8FE: LDA    $AD     
       BEQ    LF96E   
       CLC            
       ADC    #$03    
       STA    $B3     
       LDA    $8C     
       CMP    #$58    
       BEQ    LF915   
       CMP    #$84    
       BNE    LF919   
       LDA    #$A4    
       BNE    LF917   
LF915: LDA    #$8F    
LF917: STA    $B6     
LF919: LDA    $F2     
       ORA    #$20    
       STA    $F2     
       JMP    LF9B3   
LF922: LDA    #$84    
       SEC            
       SBC    $BD     
       SBC    $A9     
       BCS    LF92E   
       JMP    LFA00   
LF92E: LDA    $F2     
       AND    #$0F    
       BEQ    LF937   
       JMP    LFA06   
LF937: LDA    $F2     
       EOR    #$80    
       AND    #$DF    
       STA    $F2     
       BIT    $F2     
       BPL    LF9A1   
       BVS    LF96E   
       LDA    $AE     
       BEQ    LF96E   
       LDA    $AE     
       CLC            
       ADC    #$03    
       STA    $B3     
       LDA    #$72    
       SEC            
       SBC    $BD     
       STA    $B6     
       SBC    $A9     
       BEQ    LF95D   
       BCS    LF971   
LF95D: LDA    $B3     
       SEC            
       SBC    $A8     
       BCS    LF969   
LF964: LDA    #$04    
       JMP    LF99A   
LF969: LDA    #$08    
       JMP    LF99A   
LF96E: JMP    LFA67   
LF971: LSR            
       STA    $BA     
       LDA    $B3     
       SEC            
       SBC    $A8     
       BEQ    LF993   
       BCS    LF983   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       SEC            
LF983: SBC    $BA     
       BCC    LF993   
       LDA    $B3     
       SEC            
       SBC    $A8     
       BCS    LF998   
       LDA    #$05    
       JMP    LF99A   
LF993: LDA    #$01    
       JMP    LF99A   
LF998: LDA    #$09    
LF99A: ORA    $F2     
       STA    $F2     
       JMP    LF9F7   
LF9A1: LDA    $AF     
       BEQ    LF96E   
       LDA    $AF     
       CLC            
       ADC    #$03    
       STA    $B3     
       LDA    $F7     
       CLC            
       ADC    #$14    
       STA    $B6     
LF9B3: LDA    $F2     
       AND    #$20    
       BNE    LF9C2   
       LDA    $A9     
       SEC            
       SBC    #$08    
       SBC    $B6     
       BCS    LF9CB   
LF9C2: LDA    $B3     
       SEC            
       SBC    $A8     
       BCS    LF969   
       BCC    LF964   
LF9CB: LSR            
       STA    $BA     
       LDA    $B3     
       SEC            
       SBC    $A8     
       BEQ    LF9F2   
       BCS    LF9DD   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       SEC            
LF9DD: SBC    $BA     
       BCC    LF9F2   
       LDA    $B3     
       SEC            
       SBC    $A8     
       BCS    LF9ED   
       LDA    #$06    
       JMP    LF99A   
LF9ED: LDA    #$0A    
       JMP    LF99A   
LF9F2: LDA    #$02    
       JMP    LF99A   
LF9F7: LDA    #$00    
       STA    AUDF1   
       STA    $F3     
LF9FD: JMP    LFA67   
LFA00: LDA    $F2     
       AND    #$0F    
       BEQ    LF9FD   
LFA06: LDX    #$01    
       BIT    $FB     
       BVS    LFA1C   
       LDA    $B8     
       CMP    #$11    
       BCS    LFA1C   
       LDA    $FB     
       ORA    #$20    
       STA    $FB     
       LDY    #$06    
       BNE    LFA28   
LFA1C: LDA    $FB     
       AND    #$20    
       BEQ    LFA26   
       LDY    #$04    
       BNE    LFA28   
LFA26: LDY    #$02    
LFA28: STY    $BA     
       LDA    $F2     
       JSR    LFD32   
       LDA    VBLANK  
       ASL            
       BCS    LFA5B   
       LDA    $B3     
       CMP    #$9F    
       BCS    LFA5B   
       CMP    #$08    
       BCC    LFA5B   
       LDA    #$20    
       AND    $F2     
       BEQ    LFA4C   
       LDA    $B6     
       CMP    #$B1    
       BCS    LFA5B   
       BCC    LFA67   
LFA4C: LDA    #$84    
       SEC            
       SBC    $BD     
       CMP    $B6     
       BCC    LFA5B   
       LDA    $F7     
       CMP    $B6     
       BCC    LFA67   
LFA5B: LDA    #$D0    
       AND    $F2     
       STA    $F2     
       LDA    #$00    
       STA    $B3     
       STA    $B6     
LFA67: LDA    $8A     
       CLC            
       ADC    #$08    
       STA    $BE     
       LDA    #$85    
       STA    $BA     
       STA    $BB     
       LDA    $A9     
       SEC            
       SBC    $BA     
       BEQ    LFA9B   
       BCC    LFAA6   
       STA    $BA     
       LDA    $BE     
       SEC            
       SBC    $BA     
       STA    $80     
       LDA    #$08    
       SEC            
       SBC    $BA     
       BEQ    LFAA3   
       BCC    LFAA3   
       SEC            
       SBC    #$01    
       STA    $BC     
       LDA    $BB     
       STA    $AB     
       JMP    LFC1E   
LFA9B: LDA    $BB     
       STA    $AB     
       LDA    #$07    
       STA    $BC     
LFAA3: JMP    LFC1E   
LFAA6: LDA    $BB     
       SEC            
       SBC    $BD     
       STA    $BA     
       STA    $BB     
       SEC            
       LDA    $A9     
       SBC    $BA     
       STA    $BA     
       BEQ    LFAD4   
       BCC    LFADA   
       LDA    $A9     
       STA    $AB     
       LDA    #$07    
       STA    $BC     
       LDA    #$08    
       SEC            
       SBC    $BA     
       BCC    LFAA3   
       BEQ    LFAA3   
       TAY            
       DEY            
       LDA    ($8A),Y 
       STA    $9E     
       JMP    LFADA   
LFAD4: LDY    #$07    
       LDA    ($8A),Y 
       STA    $9E     
LFADA: LDA    $BB     
       SEC            
       SBC    #$01    
       STA    $BA     
       STA    $BB     
       LDA    $A9     
       SEC            
       SBC    $BA     
       BEQ    LFAFC   
       BCC    LFB03   
       CMP    #$08    
       BCS    LFAA3   
       STA    $BA     
       SEC            
       LDA    $8A     
       SBC    $BA     
       STA    $82     
       JMP    LFC1E   
LFAFC: LDA    $8A     
       STA    $82     
       JMP    LFC1E   
LFB03: LDA    $8A     
       SEC            
       SBC    #$0C    
       STA    $AA     
       LDA    $BB     
       SEC            
       SBC    #$08    
       STA    $BA     
       STA    $BB     
       SEC            
       LDA    $A9     
       SBC    $BA     
       BEQ    LFB2F   
       BCC    LFB36   
       STA    $BA     
       LDA    $BE     
       SEC            
       SBC    $BA     
       STA    $82     
       LDA    $AA     
       SEC            
       SBC    $BA     
       STA    $84     
       JMP    LFC1E   
LFB2F: LDA    $AA     
       STA    $84     
LFB33: JMP    LFC1E   
LFB36: LDA    $BB     
       SEC            
       SBC    #$14    
       STA    $BA     
       STA    $BB     
       SEC            
       LDA    $A9     
       SBC    $BA     
       BEQ    LFB66   
       BCC    LFB71   
       STA    $BA     
       LDA    $BE     
       SEC            
       SBC    $BA     
       STA    $84     
       LDA    #$08    
       SEC            
       SBC    $BA     
       BEQ    LFB33   
       BCC    LFB33   
       SEC            
       SBC    #$01    
       STA    $AC     
       LDA    $BB     
       STA    $AB     
       JMP    LFC1E   
LFB66: LDA    $BB     
       STA    $AB     
       LDA    #$07    
       STA    $AC     
LFB6E: JMP    LFC1E   
LFB71: LDA    #$4B    
       SEC            
       SBC    $F7     
       SBC    $BD     
       STA    $BA     
       LDA    $BB     
       SEC            
       SBC    $BA     
       STA    $BA     
       STA    $BB     
       LDA    $A9     
       SEC            
       SBC    $BA     
       BEQ    LFBA5   
       BCC    LFBAB   
       STA    $BA     
       LDA    #$07    
       STA    $AC     
       LDA    $A9     
       STA    $AB     
       LDA    #$07    
       SEC            
       SBC    $BA     
       BCC    LFB6E   
       TAY            
       LDA    ($8A),Y 
       STA    $9F     
       JMP    LFBAB   
LFBA5: LDY    #$07    
       LDA    ($8A),Y 
       STA    $9F     
LFBAB: LDA    $BB     
       SEC            
       SBC    #$01    
       STA    $BA     
       STA    $BB     
       LDA    $A9     
       SEC            
       SBC    $BA     
       STA    $BA     
       BEQ    LFBC9   
       BCC    LFBD0   
       LDA    $AA     
       SEC            
       SBC    $BA     
       STA    $86     
       JMP    LFC1E   
LFBC9: LDA    $AA     
       STA    $86     
       JMP    LFC1E   
LFBD0: LDA    $BB     
       SEC            
       SBC    #$14    
       STA    $BA     
       STA    $BB     
       LDA    $A9     
       SEC            
       SBC    $BA     
       BEQ    LFBFE   
       BCC    LFC05   
       STA    $BA     
       LDA    $BE     
       SEC            
       SBC    $BA     
       STA    $86     
       LDA    #$08    
       SEC            
       SBC    $BA     
       BEQ    LFBFB   
       BCC    LFBFB   
       LDA    $8A     
       SEC            
       SBC    $BA     
       STA    $88     
LFBFB: JMP    LFC1E   
LFBFE: LDA    $8A     
       STA    $88     
       JMP    LFC1E   
LFC05: LDA    $BB     
       SEC            
       SBC    #$08    
       STA    $BA     
       LDA    $A9     
       SEC            
       SBC    $BA     
       BEQ    LFC1E   
       BCC    LFC1E   
       STA    $BA     
       LDA    $BE     
       SEC            
       SBC    $BA     
       STA    $88     
LFC1E: DEC    $BF     
       BPL    LFC43   
       LDA    #$03    
       STA    $BF     
       LDX    #$07    
LFC28: LDA    $C0,X   
       AND    #$10    
       CMP    #$10    
       ROR    $E8,X   
       ROL    $E0,X   
       ROR    $D8,X   
       LDA    $D8,X   
       AND    #$08    
       CMP    #$08    
       ROR    $D0,X   
       ROL    $C8,X   
       ROR    $C0,X   
       DEX            
       BPL    LFC28   
LFC43: LDX    #$02    
LFC45: LDY    #$00    
       LDA    $AD,X   
       SEC            
       SBC    #$01    
       BCS    LFC50   
       LDA    #$9F    
LFC50: STA    $AD,X   
       DEX            
       BPL    LFC45   
       LDX    #$01    
LFC57: LDA    $AE,X   
       JSR    LFC79   
       STA    $BA     
       DEY            
       DEY            
       DEY            
       ASL    $A2,X   
       CPY    #$06    
       ROR    $A2,X   
       TYA            
       CMP    #$06    
       BCC    LFC6F   
       SEC            
       SBC    #$06    
LFC6F: ORA    $BA     
       STA    $B0,X   
       DEX            
       BPL    LFC57   
       JMP    LF00F   
LFC79: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $BA     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $BA     
       CMP    #$0F    
       BCC    LFC91   
       SBC    #$0F    
       INY            
LFC91: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LFC98: LDX    #$0B    
       LDA    #$FF    
       LDY    #$FE    
LFC9E: STA    $92,X   
       STY    $80,X   
       DEX            
       DEX            
       BPL    LFC9E   
       STA    $F0     
       LDA    #$FF    
       STA    $8F     
       STA    $91     
       LDX    #$30    
LFCB0: LDY    #$07    
LFCB2: LDA    LFFC8,Y 
       STA    $BF,X   
       DEX            
       DEY            
       BPL    LFCB2   
       TXA            
       BNE    LFCB0   
       STA    $F4     
       STA    $F5     
       STA    $F6     
       STA    $A0     
       STA    $B7     
       STA    $B4     
       LDA    #$C5    
       STA    COLUPF  
       STA    $FA     
       LDA    #$0A    
       STA    $FB     
       LDA    #$25    
       STA    $A1     
       STA    $A2     
       STA    $A3     
       LDA    #$60    
       STA    $AD     
       STA    $AF     
       LDA    #$9F    
       STA    $AE     
       LDA    #$47    
       STA    $A5     
       LDA    #$D7    
       STA    $A6     
       LDA    #$08    
       STA    $A8     
       LDA    #$B0    
       STA    $A9     
       LDA    #$08    
       STA    $BD     
       LDA    #$02    
       STA    $F7     
       LDA    #$58    
       STA    $8C     
       LDA    #$FF    
       STA    $8D     
       LDA    #$B0    
       STA    $8E     
       LDA    #$B4    
       STA    $90     
       LDA    #$2C    
       STA    $8A     
       LDA    #$20    
       STA    $FD     
       LDA    #$20    
       STA    $A4     
       LDA    #$40    
       STA    $B8     
       RTS            

LFD1F: LDX    #$08    
       LDA    #$00    
LFD23: STA    $80,X   
       DEX            
       DEX            
       BPL    LFD23   
       LDA    #$00    
       STA    $9E     
       STA    $9F     
       STA    $AB     
       RTS            

LFD32: LSR            
       BCS    LFD3D   
       TAY            
       LDA    $B5,X   
       ADC    $BA     
       STA    $B5,X   
       TYA            
LFD3D: LSR            
       BCS    LFD49   
       TAY            
       LDA    $B5,X   
       SEC            
       SBC    $BA     
       STA    $B5,X   
       TYA            
LFD49: LSR            
       BCS    LFD55   
       TAY            
       LDA    $B2,X   
       SEC            
       SBC    $BA     
       STA    $B2,X   
       TYA            
LFD55: LSR            
       BCS    LFD60   
       TAY            
       LDA    $B2,X   
       ADC    $BA     
       STA    $B2,X   
       TYA            
LFD60: RTS            

LFD61: BIT    $F9     
       BPL    LFD69   
       LDY    #$04    
       BNE    LFD71   
LFD69: BVC    LFD6F   
       LDY    #$02    
       BNE    LFD71   
LFD6F: LDY    #$00    
LFD71: RTS            

LFD72: LDA    $FA     
       AND    #$80    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $BB     
       LDA    $FA     
       AND    #$08    
       EOR    $BB     
       STA    $BB     
       LDA    $FA     
       AND    #$04    
       ASL            
       EOR    $BB     
       STA    $BB     
       LDA    $FA     
       AND    #$02    
       ASL            
       ASL            
       EOR    $BB     
       BNE    LFD9A   
       CLC            
       BCC    LFD9B   
LFD9A: SEC            
LFD9B: LDA    $FA     
       ROL            
       STA    $FA     
       RTS            

LFDA1: LDA    #$20    
       AND    $FB     
       BEQ    LFDB7   
       LDA    $A4     
       CMP    #$50    
       BCS    LFDB2   
       ADC    $A4     
       JMP    LFDB9   
LFDB2: LDA    #$90    
       JMP    LFDB9   
LFDB7: LDA    $A4     
LFDB9: CLC            
       SED            
       LDX    #$02    
LFDBD: ADC    $F4,X   
       STA    $F4,X   
       LDA    #$00    
       DEX            
       BPL    LFDBD   
       CLD            
       RTS            

LFDC8: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $BA     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $BA     
       CMP    #$0F    
       BCC    LFDE0   
       SBC    #$0F    
       INY            
LFDE0: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFDEA: DEY            
       BPL    LFDEA   
       STA    RESP0,X 
       RTS            

LFDF0: .byte $70,$B0,$20,$A0,$70,$10,$50,$B0,$70,$B0,$70,$B0,$70,$B0,$70,$B0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$DB
       .byte $DB,$DB,$3C,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$21,$4A,$00,$A5,$00,$62,$10,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$2A,$00,$54,$20,$14,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$28,$10,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$7F,$3E,$1E,$0E,$06
       .byte $02,$02,$02,$02,$02,$06,$06,$0F,$0F,$00,$0F,$06,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$81,$C3,$A5,$99,$99,$A5,$C3,$FF,$C3,$45,$49,$31
       .byte $3F,$11,$0F,$0F,$0D,$05,$05,$07,$07,$05,$05,$07,$07,$65,$65,$77
       .byte $37,$3D,$3D,$3F,$36,$76,$66,$66,$04,$04,$04,$04,$00,$00,$00,$00
       .byte $00,$00,$18,$18,$3C,$3C,$7E,$7E,$FF,$FF,$3C,$3C,$FF,$FF,$7E,$7E
       .byte $3C,$3C,$18,$18,$7E,$42,$5A,$5A
LFFC8: .byte $00,$01,$03,$07,$8F,$DF,$FF,$FF
LFFD0: .byte $00,$FD,$84,$B4,$A5,$B5,$85,$FD
LFFD8: .byte $00,$BE,$AA,$AA,$BB,$00,$00,$FF
LFFE0: .byte $00,$D7,$95,$95,$DF,$10,$10,$D0
LFFE8: .byte $00,$76,$54,$76,$52,$76,$01,$01,$40,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$F0,$00,$F0
