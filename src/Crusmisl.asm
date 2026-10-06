; Disassembly of roms/Crusmisl.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Crusmisl.bin
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
LF00C: JSR    LFC93   
LF00F: STA    WSYNC   
       LDA    $B2     
       LDX    #$02    
       JSR    LFDC3   
       LDA    $B3     
       LDX    #$03    
       JSR    LFDC3   
       LDA    #$10    
       LDX    #$04    
       JSR    LFDC3   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       STA    ENABL   
       JSR    LFC90   
       STA    HMCLR   
LF03D: LDA    INTIM   
       BNE    LF03D   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    CXCLR   
       STA    HMCLR   
       LDA    #$07    
       STA    $BA     
       STA    VDELP0  
       STA    VDELP1  
LF054: LDY    $BA     
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
       BPL    LF054   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    #$20    
       STA    NUSIZ0  
       LDA    $A1     
       STA    NUSIZ1  
       LDA    #$1F    
       STA    COLUP0  
       LDA    #$9F    
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$00    
       STA    ENABL   
       LDA    $A8     
       LDX    #$00    
       JSR    LFDC3   
       STA    WSYNC   
       LDA    $AD     
       LDX    #$01    
       JSR    LFDC3   
       STA    WSYNC   
       LDA    $A8     
       CMP    #$86    
       BCS    LF0B8   
       STA    WSYNC   
LF0B8: LDA    $AD     
       CMP    #$86    
       BCS    LF0C0   
       STA    WSYNC   
LF0C0: STA    WSYNC   
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
LF0DE: LDA    #$00    
       STA    $BE     
       STA    $AA     
       LDA    #$02    
       CPY    $BA     
       BNE    LF0EC   
       STA    $BE     
LF0EC: CPY    $BB     
       BNE    LF0F2   
       STA    $AA     
LF0F2: LDA    ($8C),Y 
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
       BPL    LF0DE   
       LDA    $BD     
       STA    $BB     
       LDX    #$85    
LF110: CPX    $AB     
       BNE    LF13E   
       LDY    $BC     
LF116: LDA    $A0     
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
       BEQ    LF163   
       DEY            
       BPL    LF116   
LF13E: LDA    $A0     
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
       BNE    LF110   
       NOP            
       NOP            
LF163: LDA    $B0     
       AND    #$0F    
       TAY            
       LDA    $A2     
       BMI    LF194   
       STA    NUSIZ1  
       LDA    $A5     
       STA    COLUP1  
       STA    WSYNC   
       LDA    $9E     
       STA    GRP0    
       LDA    $A0     
       STA    GRP1    
       LDA    $A2     
LF17E: DEY            
       BPL    LF17E   
       STA    RESP1   
       LDA    $B0     
       STA    HMP1    
       DEX            
       LDA    #$4B    
       SEC            
       SBC    $F7     
       SBC    $BD     
       STA    $BE     
       JMP    LF1BF   
LF194: STA    NUSIZ1  
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
LF1BA: DEY            
       BPL    LF1BA   
       STA    RESP1   
LF1BF: STA    WSYNC   
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
LF1EB: LDA    ($82),Y 
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
       BNE    LF1EB   
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
LF22A: LDA    #$00    
       STA    $BB     
       STA    $AA     
       LDA    #$02    
       CPX    $B5     
       BNE    LF238   
       STA    $BB     
LF238: CPX    $B6     
       BNE    LF23E   
       STA    $AA     
LF23E: LDA    ($8E),Y 
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
       BPL    LF22A   
LF25A: CPX    $AB     
       BNE    LF28C   
       LDY    $AC     
LF260: LDA    #$00    
       STA    $BA     
       STA    $BB     
       LDA    #$02    
       CPX    $B5     
       BNE    LF26E   
       STA    $BA     
LF26E: CPX    $B6     
       BNE    LF274   
       STA    $BB     
LF274: LDA    ($8A),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $BB     
       STA    ENAM1   
       LDA    $BA     
       STA    ENAM0   
       DEX            
       DEC    $BE     
       BEQ    LF2B5   
       DEY            
       BPL    LF260   
LF28C: LDA    #$00    
       STA    $BA     
       STA    $BB     
       LDA    #$02    
       CPX    $B5     
       BNE    LF29A   
       STA    $BA     
LF29A: CPX    $B6     
       BNE    LF2A0   
       STA    $BB     
LF2A0: LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $BB     
       STA    ENAM1   
       LDA    $BA     
       STA    ENAM0   
       DEX            
       DEC    $BE     
       BNE    LF25A   
LF2B5: CPX    $B5     
       BNE    LF2BD   
       LDA    #$02    
       STA    $BE     
LF2BD: LDA    $B1     
       AND    #$0F    
       TAY            
       LDA    $A3     
       STA    NUSIZ1  
       BMI    LF2E9   
       STA    WSYNC   
       LDA    $9F     
       STA    GRP0    
       LDA    $BE     
       STA    ENAM0   
       STA    ENAM0   
LF2D4: DEY            
       BPL    LF2D4   
       STA    RESP1   
       LDA    $A6     
       STA    COLUP1  
       DEX            
       LDY    #$13    
       LDA    $B1     
       STA    HMP1    
       LDA    ($86),Y 
       JMP    LF30D   
LF2E9: STA    WSYNC   
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
LF308: DEY            
       BPL    LF308   
       STA    RESP1   
LF30D: STA    WSYNC   
       STA    HMOVE   
       LDY    #$13    
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       LDA    #$00    
       STA    ENAM0   
       LDA    #$02    
       CPX    $B5     
       BNE    LF325   
       STA    ENAM0   
LF325: STA    HMCLR   
       DEX            
       DEY            
LF329: LDA    #$00    
       STA    $BE     
       STA    $AA     
       LDA    #$02    
       CPX    $B5     
       BNE    LF337   
       STA    $BE     
LF337: CPX    $B6     
       BNE    LF33D   
       STA    $AA     
LF33D: LDA    ($90),Y 
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
       BPL    LF329   
       INY            
       STY    $BB     
       STY    ENAM0   
       LDA    #$07    
       STA    $BA     
       STA    WSYNC   
LF364: STA    HMOVE   
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
       BPL    LF364   
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
       BEQ    LF3C3   
LF3A8: STA    WSYNC   
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
       BNE    LF3A8   
LF3C3: STA    WSYNC   
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
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$07    
LF3E4: STA    WSYNC   
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
       BPL    LF3E4   
       LDA    #$1A    
       STA    TIM64T  
       LDA    $F4     
       AND    #$0F    
       ORA    $A7     
       STA    $F4     
       LDX    #$02    
LF412: TXA            
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
       BPL    LF412   
       INX            
LF42C: LDA    $94,X   
       CMP    #$00    
       BNE    LF43C   
       LDA    #$74    
       STA    $94,X   
       INX            
       INX            
       CPX    #$07    
       BCC    LF42C   
LF43C: LDA    $A7     
       BNE    LF447   
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF6C4   
LF447: LDA    VBLANK  
       ASL            
       BCS    LF458   
       LDA    WSYNC   
       ASL            
       BCS    LF458   
       BIT    $FB     
       BMI    LF479   
       JMP    LFEC8   
LF458: BIT    $FB     
       BPL    LF46A   
       LDA    $AD     
       CMP    $A8     
       BCS    LF46A   
       ADC    #$18    
       CMP    $A8     
       BCC    LF46A   
       BCS    LF479   
LF46A: LDA    $F8     
       BNE    LF47F   
       LDA    #$3F    
       STA    $F8     
       LDA    #$60    
       STA    $8A     
       JMP    LF4A9   
LF479: LDA    $F8     
       BNE    LF47F   
       BEQ    LF4A9   
LF47F: DEC    $F8     
       LDA    $F8     
       BNE    LF4A1   
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
       JMP    LF4A9   
LF4A1: CMP    #$20    
       BNE    LF4A9   
       LDA    #$94    
       STA    $8A     
LF4A9: BIT    $FB     
       BMI    LF4E6   
       LDA    #$00    
       STA    $AA     
       LDA    VSYNC   
       ASL            
       BCS    LF4BD   
       LDA    COLUP1  
       ASL            
       BCS    LF4E9   
       BCC    LF52C   
LF4BD: BIT    $FB     
       BVS    LF4DD   
       LDA    $F9     
       AND    #$3F    
       BNE    LF52C   
       LDA    $8C     
       CMP    #$84    
       BNE    LF4DD   
       LDA    #$A9    
       CMP    $B5     
       BCC    LF4E2   
       LDA    #$9E    
       CMP    $B5     
       BCS    LF4E2   
       LDA    #$01    
       STA    $AA     
LF4DD: DEC    $FB     
       JMP    LF4E9   
LF4E2: LDA    #$FF    
       STA    $AA     
LF4E6: JMP    LF52C   
LF4E9: LDA    $F9     
       AND    #$3F    
       BNE    LF538   
LF4EF: LDA    #$3F    
       STA    $F9     
       LDA    VSYNC   
       ASL            
       BCS    LF4FC   
       LDY    $A9     
       BNE    LF4FE   
LF4FC: LDY    $B5     
LF4FE: TYA            
       CMP    #$85    
       BCC    LF506   
       JMP    LF51C   
LF506: TYA            
       STA    $BA     
       LDA    #$68    
       SEC            
       SBC    $BD     
       CMP    $BA     
       BCS    LF516   
       LDA    #$40    
       BNE    LF518   
LF516: LDA    #$80    
LF518: ORA    $F9     
       STA    $F9     
LF51C: JSR    LFD5C   
       LDA    #$60    
       STA.wy $008C,Y 
       LDA    #$FE    
       STA.wy $008D,Y 
       JMP    LF5C1   
LF52C: LDA    $F9     
       AND    #$3F    
       BNE    LF535   
       JMP    LF5C1   
LF535: JMP    LF5A2   
LF538: JSR    LFD5C   
       BIT    $FB     
       BPL    LF55E   
       CPY    #$00    
       BNE    LF54E   
       LDA    #$00    
       STA    $8C     
       LDA    #$FE    
       STA    $8D     
LF54B: JMP    LF5C1   
LF54E: LDA    #$00    
       CPY    #$02    
       BNE    LF55A   
       LDA    #$00    
       STA    $A5     
       BEQ    LF54B   
LF55A: STA    $A6     
       BEQ    LF54B   
LF55E: JSR    LFD6D   
       CPY    #$00    
       BEQ    LF57D   
       CPY    #$02    
       BEQ    LF573   
       LDA    #$B4    
       STA    $90     
       LDA    #$FF    
       STA    $91     
       BNE    LF58F   
LF573: LDA    #$B0    
       STA    $8E     
       LDA    #$FF    
       STA    $8F     
       BNE    LF58F   
LF57D: AND    #$01    
       BEQ    LF587   
       LDA    #$84    
       LDX    #$FF    
       BNE    LF58B   
LF587: LDA    #$58    
       LDX    #$FF    
LF58B: STA    $8C     
       STX    $8D     
LF58F: LDA    $F9     
       AND    #$3F    
       BEQ    LF598   
       JMP    LF4EF   
LF598: TYA            
       LSR            
       TAY            
       LDA    #$98    
       STA.wy $00AD,Y 
       BNE    LF5C1   
LF5A2: DEC    $F9     
       LDA    $F9     
       AND    #$3F    
       BNE    LF5AD   
       JMP    LF538   
LF5AD: LDA    $F9     
       AND    #$3F    
       CMP    #$20    
       BCS    LF5C1   
       LDA    #$94    
       LDX    #$FE    
       JSR    LFD5C   
       STA.wy $008C,Y 
       STX    $8D,Y   
LF5C1: BIT    $FB     
       BMI    LF603   
       LDA    $AA     
       CMP    #$01    
       BNE    LF5D8   
       LDA    #$30    
       JSR    LFDB4   
LF5D0: LDA    #$20    
       JSR    LFDB4   
       JMP    LF603   
LF5D8: CMP    #$FF    
       BEQ    LF603   
       BIT    $FB     
       BVC    LF5EE   
       LDA    $AE     
       BNE    LF5E7   
       JSR    LFD9C   
LF5E7: LDA    $AF     
       BNE    LF5EE   
       JSR    LFD9C   
LF5EE: LDA    VSYNC   
       ASL            
       BCC    LF603   
       BIT    $FB     
       BVC    LF5D0   
       JSR    LFD9C   
       JSR    LFD9C   
       JSR    LFD9C   
       JSR    LFD9C   
LF603: LDA    $FB     
       AND    #$10    
       BNE    LF63D   
       LDA    $FB     
       AND    #$0F    
       BNE    LF653   
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
LF63D: LDA    $AD     
       BNE    LF653   
       DEC    $FC     
       LDA    $FC     
       BNE    LF653   
       BIT    $FB     
       LDA    $A9     
       BVC    LF656   
       CMP    #$85    
       BCC    LF65A   
       BCS    LF660   
LF653: JMP    LF6C4   
LF656: CMP    #$85    
       BCC    LF660   
LF65A: LDA    #$20    
       ORA    $FB     
       BNE    LF666   
LF660: LDA    $FB     
       EOR    #$40    
       AND    #$DF    
LF666: AND    #$6F    
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
       BEQ    LF6B0   
       SED            
       ADC    #$10    
       STA    $A4     
       CLD            
LF6B0: LDA    $B8     
       CMP    #$0D    
       BCC    LF6C4   
       CMP    #$2D    
       BCS    LF6C4   
       LDA    $A7     
       ADC    #$10    
       CMP    #$90    
       BCS    LF6C4   
       STA    $A7     
LF6C4: LDA    $A7     
       BNE    LF6CC   
       LDA    #$0A    
       STA    $B8     
LF6CC: BIT    $B7     
       BPL    LF6E1   
       LDA    $B7     
       AND    #$7F    
       LDA    $B8     
       SEC            
       SBC    #$04    
       CMP    #$0A    
       BCC    LF6E1   
       STA    $B8     
       STA    $B7     
LF6E1: LDA    $B4     
       BEQ    LF6EA   
       DEC    $B4     
       JMP    LF6FD   
LF6EA: JSR    LFD6D   
       STA    $B4     
       LDA    $B7     
       BNE    LF6FB   
       LDA    #$0F    
       ORA    $B7     
       STA    $B7     
       BNE    LF6FD   
LF6FB: DEC    $B7     
LF6FD: DEC    $B9     
       BPL    LF74C   
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
       BEQ    LF723   
       BMI    LF722   
       DEY            
       CPY    #$02    
       BCS    LF723   
       LDY    $F7     
       BNE    LF723   
LF722: INY            
LF723: LDA    #$10    
       LDX    $BD     
       BIT    $BB     
       BEQ    LF737   
       BVS    LF736   
       DEX            
       CPX    #$08    
       BCS    LF737   
       LDX    $BD     
       BNE    LF737   
LF736: INX            
LF737: LDA    #$4B    
       SEC            
       SBC    $B8     
       STY    $BB     
       SBC    $BB     
       BCC    LF74C   
       STX    $BB     
       SBC    $BB     
       BCC    LF74C   
       STY    $F7     
       STX    $BD     
LF74C: LDA    $A7     
       BNE    LF753   
       JMP    LF7DE   
LF753: BIT    $FB     
       BPL    LF774   
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
       JMP    LF7DE   
LF774: LDA    $F8     
       BEQ    LF77C   
       LDY    #$08    
       BNE    LF78E   
LF77C: LDA    $F0     
       CMP    #$0F    
       BEQ    LF79D   
       DEC    $F1     
       LDA    $F1     
       BPL    LF78A   
       LDA    #$00    
LF78A: STA    $F1     
       LDY    #$0C    
LF78E: STY    AUDC0   
       EOR    #$3F    
       STA    AUDF0   
       EOR    #$3F    
       LSR            
       LSR            
       STA    AUDV0   
       JMP    LF7A1   
LF79D: LDA    #$00    
       BEQ    LF78A   
LF7A1: LDA    $F9     
       AND    #$3F    
       BEQ    LF7B8   
       LDY    #$08    
       STY    AUDC1   
       EOR    #$3F    
       STA    AUDF1   
       EOR    #$3F    
       LSR            
       LSR            
       STA    AUDV1   
       JMP    LF7DE   
LF7B8: LDA    $F2     
       AND    #$0F    
       BEQ    LF7DA   
       LDA    $F3     
       CLC            
       ADC    #$01    
       STA    $F3     
       CMP    #$05    
       BCC    LF7CB   
       LDA    #$00    
LF7CB: STA    $F3     
       LDY    #$0C    
       STY    AUDC1   
       LDY    #$06    
       STY    AUDV1   
       STA    AUDF1   
       JMP    LF7DE   
LF7DA: LDA    #$00    
       STA    AUDV1   
LF7DE: LDA    $A7     
       BEQ    LF7F8   
       BIT    $FB     
       BPL    LF7EE   
       LDA    $AE     
       AND    #$F7    
       ORA    #$07    
       BNE    LF7FA   
LF7EE: LDA    $B8     
       CMP    #$2D    
       BCS    LF7F8   
       LDA    #$A2    
       BNE    LF7FA   
LF7F8: LDA    #$C5    
LF7FA: STA    COLUPF  
LF7FC: LDA    INTIM   
       BNE    LF7FC   
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
       JSR    LFD1A   
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $BE     
       LDA    SWCHB   
       LSR            
       BCS    LF82F   
       LDA    #$80    
       STA    $A7     
       JMP    LF00C   
LF82F: LDA    $A7     
       BNE    LF836   
       JMP    LFA62   
LF836: LDA    $F8     
       BEQ    LF83D   
       JMP    LF8A9   
LF83D: LDA    $BE     
       LSR            
       BCS    LF846   
       INC    $A9     
       INC    $A9     
LF846: LSR            
       BCS    LF84D   
       DEC    $A9     
       DEC    $A9     
LF84D: LSR            
       BCS    LF854   
       DEC    $A8     
       DEC    $A8     
LF854: LSR            
       BCS    LF85B   
       INC    $A8     
       INC    $A8     
LF85B: LDA    #$B0    
       CMP    $A9     
       BCC    LF867   
       LDA    #$08    
       CMP    $A9     
       BCC    LF869   
LF867: STA    $A9     
LF869: LDA    #$94    
       CMP    $A8     
       BCC    LF875   
       LDA    #$08    
       CMP    $A8     
       BCC    LF877   
LF875: STA    $A8     
LF877: LDA    $A8     
       BEQ    LF8A6   
       LDA    REFP1   
       ASL            
       BCS    LF8A9   
       LDA    $F0     
       CMP    #$0F    
       BNE    LF8AF   
       LDA    $BE     
       BIT    $FB     
       BVS    LF88E   
       ORA    #$03    
LF88E: STA    $F0     
       CMP    #$0F    
       BEQ    LF8A6   
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
LF8A6: JMP    LF8E6   
LF8A9: LDA    $F0     
       CMP    #$0F    
       BEQ    LF8A6   
LF8AF: LDX    #$00    
       LDY    #$04    
       STY    $BA     
       JSR    LFD2D   
       LDA    VSYNC   
       ASL            
       BCS    LF8DC   
       LDA    NUSIZ0  
       ASL            
       BCS    LF8DC   
       LDA    $B2     
       CMP    #$9F    
       BCS    LF8DC   
       CMP    #$08    
       BCC    LF8DC   
       LDA    $F0     
       CMP    #$0B    
       BEQ    LF8E6   
       CMP    #$07    
       BEQ    LF8E6   
       LDA    $B5     
       CMP    #$6E    
       BCC    LF8E6   
LF8DC: LDA    #$0F    
       STA    $F0     
       LDA    #$00    
       STA    $B2     
       STA    $B5     
LF8E6: BIT    $FB     
       BMI    LF8F6   
       LDA    $A9     
       CMP    #$86    
       BCC    LF91D   
       LDA    $F2     
       AND    #$0F    
       BEQ    LF8F9   
LF8F6: JMP    LFA01   
LF8F9: LDA    $AD     
       BEQ    LF969   
       CLC            
       ADC    #$03    
       STA    $B3     
       LDA    $8C     
       CMP    #$58    
       BEQ    LF910   
       CMP    #$84    
       BNE    LF914   
       LDA    #$A4    
       BNE    LF912   
LF910: LDA    #$8F    
LF912: STA    $B6     
LF914: LDA    $F2     
       ORA    #$20    
       STA    $F2     
       JMP    LF9AE   
LF91D: LDA    #$84    
       SEC            
       SBC    $BD     
       SBC    $A9     
       BCS    LF929   
       JMP    LF9FB   
LF929: LDA    $F2     
       AND    #$0F    
       BEQ    LF932   
       JMP    LFA01   
LF932: LDA    $F2     
       EOR    #$80    
       AND    #$DF    
       STA    $F2     
       BIT    $F2     
       BPL    LF99C   
       BVS    LF969   
       LDA    $AE     
       BEQ    LF969   
       LDA    $AE     
       CLC            
       ADC    #$03    
       STA    $B3     
       LDA    #$72    
       SEC            
       SBC    $BD     
       STA    $B6     
       SBC    $A9     
       BEQ    LF958   
       BCS    LF96C   
LF958: LDA    $B3     
       SEC            
       SBC    $A8     
       BCS    LF964   
LF95F: LDA    #$04    
       JMP    LF995   
LF964: LDA    #$08    
       JMP    LF995   
LF969: JMP    LFA62   
LF96C: LSR            
       STA    $BA     
       LDA    $B3     
       SEC            
       SBC    $A8     
       BEQ    LF98E   
       BCS    LF97E   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       SEC            
LF97E: SBC    $BA     
       BCC    LF98E   
       LDA    $B3     
       SEC            
       SBC    $A8     
       BCS    LF993   
       LDA    #$05    
       JMP    LF995   
LF98E: LDA    #$01    
       JMP    LF995   
LF993: LDA    #$09    
LF995: ORA    $F2     
       STA    $F2     
       JMP    LF9F2   
LF99C: LDA    $AF     
       BEQ    LF969   
       LDA    $AF     
       CLC            
       ADC    #$03    
       STA    $B3     
       LDA    $F7     
       CLC            
       ADC    #$14    
       STA    $B6     
LF9AE: LDA    $F2     
       AND    #$20    
       BNE    LF9BD   
       LDA    $A9     
       SEC            
       SBC    #$08    
       SBC    $B6     
       BCS    LF9C6   
LF9BD: LDA    $B3     
       SEC            
       SBC    $A8     
       BCS    LF964   
       BCC    LF95F   
LF9C6: LSR            
       STA    $BA     
       LDA    $B3     
       SEC            
       SBC    $A8     
       BEQ    LF9ED   
       BCS    LF9D8   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       SEC            
LF9D8: SBC    $BA     
       BCC    LF9ED   
       LDA    $B3     
       SEC            
       SBC    $A8     
       BCS    LF9E8   
       LDA    #$06    
       JMP    LF995   
LF9E8: LDA    #$0A    
       JMP    LF995   
LF9ED: LDA    #$02    
       JMP    LF995   
LF9F2: LDA    #$00    
       STA    AUDF1   
       STA    $F3     
LF9F8: JMP    LFA62   
LF9FB: LDA    $F2     
       AND    #$0F    
       BEQ    LF9F8   
LFA01: LDX    #$01    
       BIT    $FB     
       BVS    LFA17   
       LDA    $B8     
       CMP    #$0D    
       BCS    LFA17   
       LDA    $FB     
       ORA    #$20    
       STA    $FB     
       LDY    #$06    
       BNE    LFA23   
LFA17: LDA    $FB     
       AND    #$20    
       BEQ    LFA21   
       LDY    #$04    
       BNE    LFA23   
LFA21: LDY    #$02    
LFA23: STY    $BA     
       LDA    $F2     
       JSR    LFD2D   
       LDA    VBLANK  
       ASL            
       BCS    LFA56   
       LDA    $B3     
       CMP    #$9F    
       BCS    LFA56   
       CMP    #$08    
       BCC    LFA56   
       LDA    #$20    
       AND    $F2     
       BEQ    LFA47   
       LDA    $B6     
       CMP    #$B1    
       BCS    LFA56   
       BCC    LFA62   
LFA47: LDA    #$84    
       SEC            
       SBC    $BD     
       CMP    $B6     
       BCC    LFA56   
       LDA    $F7     
       CMP    $B6     
       BCC    LFA62   
LFA56: LDA    #$D0    
       AND    $F2     
       STA    $F2     
       LDA    #$00    
       STA    $B3     
       STA    $B6     
LFA62: LDA    $8A     
       CLC            
       ADC    #$08    
       STA    $BE     
       LDA    #$85    
       STA    $BA     
       STA    $BB     
       LDA    $A9     
       SEC            
       SBC    $BA     
       BEQ    LFA96   
       BCC    LFAA1   
       STA    $BA     
       LDA    $BE     
       SEC            
       SBC    $BA     
       STA    $80     
       LDA    #$08    
       SEC            
       SBC    $BA     
       BEQ    LFA9E   
       BCC    LFA9E   
       SEC            
       SBC    #$01    
       STA    $BC     
       LDA    $BB     
       STA    $AB     
       JMP    LFC19   
LFA96: LDA    $BB     
       STA    $AB     
       LDA    #$07    
       STA    $BC     
LFA9E: JMP    LFC19   
LFAA1: LDA    $BB     
       SEC            
       SBC    $BD     
       STA    $BA     
       STA    $BB     
       SEC            
       LDA    $A9     
       SBC    $BA     
       STA    $BA     
       BEQ    LFACF   
       BCC    LFAD5   
       LDA    $A9     
       STA    $AB     
       LDA    #$07    
       STA    $BC     
       LDA    #$08    
       SEC            
       SBC    $BA     
       BCC    LFA9E   
       BEQ    LFA9E   
       TAY            
       DEY            
       LDA    ($8A),Y 
       STA    $9E     
       JMP    LFAD5   
LFACF: LDY    #$07    
       LDA    ($8A),Y 
       STA    $9E     
LFAD5: LDA    $BB     
       SEC            
       SBC    #$01    
       STA    $BA     
       STA    $BB     
       LDA    $A9     
       SEC            
       SBC    $BA     
       BEQ    LFAF7   
       BCC    LFAFE   
       CMP    #$08    
       BCS    LFA9E   
       STA    $BA     
       SEC            
       LDA    $8A     
       SBC    $BA     
       STA    $82     
       JMP    LFC19   
LFAF7: LDA    $8A     
       STA    $82     
       JMP    LFC19   
LFAFE: LDA    $8A     
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
       BEQ    LFB2A   
       BCC    LFB31   
       STA    $BA     
       LDA    $BE     
       SEC            
       SBC    $BA     
       STA    $82     
       LDA    $AA     
       SEC            
       SBC    $BA     
       STA    $84     
       JMP    LFC19   
LFB2A: LDA    $AA     
       STA    $84     
LFB2E: JMP    LFC19   
LFB31: LDA    $BB     
       SEC            
       SBC    #$14    
       STA    $BA     
       STA    $BB     
       SEC            
       LDA    $A9     
       SBC    $BA     
       BEQ    LFB61   
       BCC    LFB6C   
       STA    $BA     
       LDA    $BE     
       SEC            
       SBC    $BA     
       STA    $84     
       LDA    #$08    
       SEC            
       SBC    $BA     
       BEQ    LFB2E   
       BCC    LFB2E   
       SEC            
       SBC    #$01    
       STA    $AC     
       LDA    $BB     
       STA    $AB     
       JMP    LFC19   
LFB61: LDA    $BB     
       STA    $AB     
       LDA    #$07    
       STA    $AC     
LFB69: JMP    LFC19   
LFB6C: LDA    #$4B    
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
       BEQ    LFBA0   
       BCC    LFBA6   
       STA    $BA     
       LDA    #$07    
       STA    $AC     
       LDA    $A9     
       STA    $AB     
       LDA    #$07    
       SEC            
       SBC    $BA     
       BCC    LFB69   
       TAY            
       LDA    ($8A),Y 
       STA    $9F     
       JMP    LFBA6   
LFBA0: LDY    #$07    
       LDA    ($8A),Y 
       STA    $9F     
LFBA6: LDA    $BB     
       SEC            
       SBC    #$01    
       STA    $BA     
       STA    $BB     
       LDA    $A9     
       SEC            
       SBC    $BA     
       STA    $BA     
       BEQ    LFBC4   
       BCC    LFBCB   
       LDA    $AA     
       SEC            
       SBC    $BA     
       STA    $86     
       JMP    LFC19   
LFBC4: LDA    $AA     
       STA    $86     
       JMP    LFC19   
LFBCB: LDA    $BB     
       SEC            
       SBC    #$14    
       STA    $BA     
       STA    $BB     
       LDA    $A9     
       SEC            
       SBC    $BA     
       BEQ    LFBF9   
       BCC    LFC00   
       STA    $BA     
       LDA    $BE     
       SEC            
       SBC    $BA     
       STA    $86     
       LDA    #$08    
       SEC            
       SBC    $BA     
       BEQ    LFBF6   
       BCC    LFBF6   
       LDA    $8A     
       SEC            
       SBC    $BA     
       STA    $88     
LFBF6: JMP    LFC19   
LFBF9: LDA    $8A     
       STA    $88     
       JMP    LFC19   
LFC00: LDA    $BB     
       SEC            
       SBC    #$08    
       STA    $BA     
       LDA    $A9     
       SEC            
       SBC    $BA     
       BEQ    LFC19   
       BCC    LFC19   
       STA    $BA     
       LDA    $BE     
       SEC            
       SBC    $BA     
       STA    $88     
LFC19: DEC    $BF     
       BPL    LFC3E   
       LDA    #$03    
       STA    $BF     
       LDX    #$07    
LFC23: LDA    $C0,X   
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
       BPL    LFC23   
LFC3E: LDX    #$02    
LFC40: LDY    #$00    
       LDA    $AD,X   
       SEC            
       SBC    #$01    
       BCS    LFC4B   
       LDA    #$9F    
LFC4B: STA    $AD,X   
       DEX            
       BPL    LFC40   
       LDX    #$01    
LFC52: LDA    $AE,X   
       JSR    LFC74   
       STA    $BA     
       DEY            
       DEY            
       DEY            
       ASL    $A2,X   
       CPY    #$06    
       ROR    $A2,X   
       TYA            
       CMP    #$06    
       BCC    LFC6A   
       SEC            
       SBC    #$06    
LFC6A: ORA    $BA     
       STA    $B0,X   
       DEX            
       BPL    LFC52   
       JMP    LF00F   
LFC74: CLC            
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
       BCC    LFC8C   
       SBC    #$0F    
       INY            
LFC8C: EOR    #$07    
       ASL            
       ASL            
LFC90: ASL            
       ASL            
       RTS            

LFC93: LDX    #$0B    
       LDA    #$FF    
       LDY    #$FE    
LFC99: STA    $92,X   
       STY    $80,X   
       DEX            
       DEX            
       BPL    LFC99   
       STA    $F0     
       LDA    #$FF    
       STA    $8F     
       STA    $91     
       LDX    #$30    
LFCAB: LDY    #$07    
LFCAD: LDA    LFFC8,Y 
       STA    $BF,X   
       DEX            
       DEY            
       BPL    LFCAD   
       TXA            
       BNE    LFCAB   
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
       STA    $BD     
       LDA    #$B0    
       STA    $A9     
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
       STA    $A4     
       LDA    #$40    
       STA    $B8     
       LDA    #$30    
       STA    CTRLPF  
       RTS            

LFD1A: LDX    #$08    
       LDA    #$00    
LFD1E: STA    $80,X   
       DEX            
       DEX            
       BPL    LFD1E   
       LDA    #$00    
       STA    $9E     
       STA    $9F     
       STA    $AB     
       RTS            

LFD2D: LSR            
       BCS    LFD38   
       TAY            
       LDA    $B5,X   
       ADC    $BA     
       STA    $B5,X   
       TYA            
LFD38: LSR            
       BCS    LFD44   
       TAY            
       LDA    $B5,X   
       SEC            
       SBC    $BA     
       STA    $B5,X   
       TYA            
LFD44: LSR            
       BCS    LFD50   
       TAY            
       LDA    $B2,X   
       SEC            
       SBC    $BA     
       STA    $B2,X   
       TYA            
LFD50: LSR            
       BCS    LFD5B   
       TAY            
       LDA    $B2,X   
       ADC    $BA     
       STA    $B2,X   
       TYA            
LFD5B: RTS            

LFD5C: BIT    $F9     
       BPL    LFD64   
       LDY    #$04    
       BNE    LFD6C   
LFD64: BVC    LFD6A   
       LDY    #$02    
       BNE    LFD6C   
LFD6A: LDY    #$00    
LFD6C: RTS            

LFD6D: LDA    $FA     
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
       BNE    LFD95   
       CLC            
       BCC    LFD96   
LFD95: SEC            
LFD96: LDA    $FA     
       ROL            
       STA    $FA     
       RTS            

LFD9C: LDA    #$20    
       AND    $FB     
       BEQ    LFDB2   
       LDA    $A4     
       CMP    #$50    
       BCS    LFDAD   
       ADC    $A4     
       JMP    LFDB4   
LFDAD: LDA    #$90    
       JMP    LFDB4   
LFDB2: LDA    $A4     
LFDB4: CLC            
       SED            
       LDX    #$02    
LFDB8: ADC    $F4,X   
       STA    $F4,X   
       LDA    #$00    
       DEX            
       BPL    LFDB8   
       CLD            
       RTS            

LFDC3: CLC            
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
       BCC    LFDDB   
       SBC    #$0F    
       INY            
LFDDB: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFDE5: DEY            
       BPL    LFDE5   
       STA    RESP0,X 
       RTS            

LFDEB: .byte $29,$7F,$A0,$07,$0A
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
       .byte $00,$00,$00,$00,$00,$00,$00,$10,$28,$10,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFEC8: LDA    COLUP1  
       ASL            
       BCS    LFED0   
       JMP    LF479   
LFED0: LDA    $A9     
       CMP    #$85    
       BCC    LFEDA   
       LDY    #$00    
       BEQ    LFEE9   
LFEDA: LDA    #$68    
       SEC            
       SBC    $BD     
       CMP    $A9     
       BCS    LFEE7   
       LDY    #$02    
       BNE    LFEE9   
LFEE7: LDY    #$04    
LFEE9: LDA.wy $008D,Y 
       CMP    #$FE    
       BNE    LFEF3   
       JMP    LF479   
LFEF3: JMP    LF458   
LFEF6: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66
       .byte $66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06
       .byte $46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C
       .byte $1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60
       .byte $62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66
       .byte $66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$FF,$FF,$FF,$7F,$3E,$1E,$0E,$06,$02,$02,$02,$02,$02,$06
       .byte $06,$0F,$0F,$00,$0F,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$81,$C3
       .byte $A5,$99,$99,$A5,$C3,$FF,$C3,$45,$49,$31,$3F,$11,$0F,$0F,$0D,$05
       .byte $05,$07,$07,$05,$05,$07,$07,$65,$65,$77,$37,$3D,$3D,$3F,$36,$76
       .byte $66,$66,$04,$04,$04,$04,$00,$00,$00,$00,$00,$00,$18,$18,$3C,$3C
       .byte $7E,$7E,$FF,$FF,$3C,$3C,$FF,$FF,$7E,$7E,$3C,$3C,$18,$18,$7E,$42
       .byte $5A,$5A
LFFC8: .byte $00,$01,$03,$07,$8F,$DF,$FF,$FF
LFFD0: .byte $00,$FD,$84,$B4,$A5,$B5,$85,$FD
LFFD8: .byte $00,$BE,$AA,$AA,$BB,$00,$00,$FF
LFFE0: .byte $00,$D7,$95,$95,$DF,$10,$10,$D0
LFFE8: .byte $00,$76,$54,$76,$52,$76,$01,$01,$40,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$F0,$00,$F0
