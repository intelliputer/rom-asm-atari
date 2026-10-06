; Disassembly of roms/Snail Against Squirrel (CCE).bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Snail Against Squirrel (CCE).bin
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
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
T1024T  =  $0297

       ORG $F000

START:
       CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$01    
       STA    $9F     
LF00F: JSR    LFF2C   
       LDA    #$11    
       STA    $CD     
       LDA    #$05    
       STA    $A1     
       LDA    #$00    
       STA    $80     
       STA    $81     
       JSR    LFC43   
       LDA    #$FA    
       STA    $9C     
       LDA    #$FF    
       STA    $A4     
       STA    $D0     
       JSR    LFA90   
LF030: LDA    INTIM   
       BNE    LF030   
       STA    WSYNC   
       STA    VBLANK  
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$12    
       STA    T1024T  
       LDY    $9F     
       LDA    LF7E8,Y 
       STA    $BA     
       LDA    LF7EA,Y 
       STA    $BC     
       LDA    LF7EC,Y 
       STA    $A3     
       LDA    #$00    
       STA    COLUBK  
       JSR    LF858   
       LDA    $83     
       LDX    #$00    
       JSR    LFB44   
       LDA    #$FF    
       STA    $95     
       LDA    #$00    
       STA    PF0     
       LDA    $9E     
       STA    REFP0   
       LDA    #$00    
       STA    $A5     
       LDA    #$FD    
       STA    $BB     
       STA    $BD     
       LDA    #$50    
       LDX    #$01    
       JSR    LFB44   
       LDY    $87     
       LDX    $85     
       LDA    $9A     
       AND    #$01    
       BNE    LF08C   
       LDY    $88     
       LDX    $86     
LF08C: TYA            
       STX    $97     
       LDX    #$03    
       JSR    LFB44   
       LDX    #$02    
       LDA    $9F     
       BNE    LF0A4   
LF09A: LDA    LF984,X 
       STA    $C6,X   
       DEX            
       BPL    LF09A   
       BMI    LF0AC   
LF0A4: LDA    LF987,X 
       STA    $C6,X   
       DEX            
       BPL    LF0A4   
LF0AC: STA    WSYNC   
       STA    HMOVE   
       LDA    #$11    
       STA    $96     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$20    
       STA    NUSIZ0  
       LDA    #$20    
       STA    NUSIZ1  
       LDA    #$90    
       STA    $98     
       LDX    #$B2    
       STA    HMCLR   
       JSR    LF98D   
       LDA    $9F     
       BNE    LF0DA   
       LDA    #$64    
       STA    $98     
       JSR    LF700   
       LDA    #$3E    
       BNE    LF0E3   
LF0DA: LDA    #$5A    
       STA    $98     
       JSR    LF700   
       LDA    #$44    
LF0E3: STA    $98     
       JSR    LF700   
       LDA    #$12    
       STA    $98     
       JSR    LF700   
       STA    WSYNC   
       LDY    $9F     
       LDA    LFC7E,Y 
       STA    COLUBK  
       JSR    LFACB   
       LDA    #$C8    
       SEC            
       SBC    $C5     
       SBC    $C5     
       STA    $CF     
       LDA    $CB     
       BNE    LF112   
       LDA    $A1     
       BNE    LF112   
       JSR    LFF2C   
       JMP    LF17B   
LF112: LDA    $CB     
       BEQ    LF126   
       DEC    $CB     
       LDA    $CB     
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$04    
       STA    AUDC0   
       BNE    LF172   
LF126: LDA    $A2     
       CMP    #$10    
       BNE    LF136   
       LDA    $82     
       LSR            
       LSR            
       LSR            
       EOR    #$1F    
       JMP    LF162   
LF136: LDA    $C9     
       BEQ    LF16E   
       LDX    #$FF    
       LDA    $C9     
       SEC            
LF13F: INX            
       SBC    #$03    
       BEQ    LF16E   
       BCS    LF13F   
       TXA            
       LDX    $9B     
       CPX    #$40    
       BCC    LF150   
       CLC            
       ADC    #$04    
LF150: TAX            
       LDA    $82     
       SEC            
       SBC    #$10    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $95     
       LDA    LFF81,X 
       SEC            
       SBC    $95     
LF162: STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$06    
       STA    AUDV0   
       BNE    LF172   
LF16E: LDA    #$00    
       STA    AUDV0   
LF172: JSR    LFCDD   
       JSR    LFE6E   
       JSR    LFF57   
LF17B: LDA    INTIM   
       BNE    LF17B   
       LDX    #$07    
LF182: STA    WSYNC   
       DEX            
       BPL    LF182   
       STA    COLUBK  
       JSR    LF9E9   
       LDA    #$19    
       STA    TIM64T  
       INC    $9A     
       LDA    $9A     
       AND    #$3F    
       BNE    LF19D   
       LDA    #$00    
       STA    $C3     
LF19D: LDA    $A1     
       BNE    LF1A4   
       JMP    LF6DF   
LF1A4: JSR    LFB6C   
       JSR    LFBBE   
       LDY    #$04    
       LDA    $B7     
       ORA    $B8     
       BNE    LF1B4   
       LDY    #$03    
LF1B4: STY    $C1     
       INC    $A0     
       LDA    $A0     
       CMP    $C1     
       BCS    LF1C1   
       JMP    LF3B4   
LF1C1: LDA    #$00    
       STA    $A0     
       LDA    $A2     
       CMP    #$10    
       BNE    LF1D9   
       LDA    $82     
       CMP    #$13    
       DEC    $82     
       BCS    LF1D6   
       JSR    LFC61   
LF1D6: JMP    LF3B4   
LF1D9: LDA    SWCHA   
       EOR    #$FF    
       BNE    LF1E7   
       LDY    #$00    
       STY    $C9     
LF1E4: JMP    LF3B7   
LF1E7: INC    $C9     
       LDY    $C9     
       CPY    #$0C    
       BCC    LF1F3   
       LDY    #$01    
       STY    $C9     
LF1F3: AND    #$C0    
       STA    $95     
       LDX    $83     
       LDY    $82     
       LDA    $A2     
       BEQ    LF245   
       LDA    SWCHA   
       AND    #$10    
       BNE    LF209   
       INY            
       BNE    LF211   
LF209: LDA    SWCHA   
       AND    #$20    
       BNE    LF1E4   
       DEY            
LF211: STY    $A5     
       LDX    #$07    
       TYA            
       LDY    $9F     
       BNE    LF229   
LF21A: CMP    LFC6E,X 
       BEQ    LF238   
       DEX            
       BPL    LF21A   
       LDX    $83     
       LDY    $A5     
       JMP    LF389   
LF229: CMP    LFC76,X 
       BEQ    LF238   
       DEX            
       BPL    LF229   
       LDX    $83     
       LDY    $A5     
       JMP    LF389   
LF238: LDY    $A5     
       LDA    #$00    
       STA    $A2     
       LDX    $83     
       LDY    $A5     
       JMP    LF389   
LF245: LDA    $9F     
       BNE    LF24C   
       JMP    LF2FB   
LF24C: CPY    #$29    
       BCS    LF261   
       JSR    LF8B3   
       LDA    #$52    
       STA    $98     
       LDA    #$50    
       STA    $99     
       JSR    LF95F   
       JMP    LF389   
LF261: JSR    LF8BD   
       CPY    #$5B    
       BCS    LF29E   
       CPX    #$7E    
       BCS    LF285   
       CPX    #$27    
       BCC    LF285   
       LDA    #$3C    
       STA    $96     
       LDA    #$2A    
       STA    $97     
       CPX    #$4F    
       BCS    LF282   
       JSR    LF907   
       JMP    LF285   
LF282: JSR    LF8E4   
LF285: LDA    #$52    
       STA    $98     
       LDA    #$50    
       STA    $99     
       JSR    LF932   
       LDA    #$20    
       STA    $99     
       LDA    #$80    
       STA    $98     
       JSR    LF95F   
       JMP    LF389   
LF29E: CPY    #$73    
       BCS    LF2BB   
       LDA    #$20    
       STA    $99     
       LDA    #$80    
       STA    $98     
       JSR    LF932   
       LDA    #$62    
       STA    $98     
       LDA    #$40    
       STA    $99     
       JSR    LF95F   
       JMP    LF389   
LF2BB: CPY    #$A1    
       BCS    LF2ED   
       LDA    #$8B    
       STA    $96     
       LDA    #$74    
       STA    $97     
       CPX    #$4F    
       BCS    LF2D1   
       JSR    LF907   
       JMP    LF2D4   
LF2D1: JSR    LF8E4   
LF2D4: LDA    #$62    
       STA    $98     
       LDA    #$40    
       STA    $99     
       JSR    LF932   
       LDA    #$88    
       STA    $98     
       LDA    #$1A    
       STA    $99     
       JSR    LF95F   
       JMP    LF389   
LF2ED: LDA    #$88    
       STA    $98     
       LDA    #$1A    
       STA    $99     
       JSR    LF932   
       JMP    LF389   
LF2FB: CPY    #$25    
       BCS    LF308   
       JSR    LF8B3   
       JMP    LF342   
LF305: .byte $4C,$89,$F3
LF308: JSR    LF8BD   
       CPY    #$4F    
       BCS    LF31A   
       LDA    #$3B    
       STA    $96     
       LDA    #$26    
       STA    $97     
       JMP    LF354   
LF31A: CPY    #$77    
       BCS    LF348   
       LDA    #$64    
       STA    $96     
       LDA    #$50    
       STA    $97     
       CPX    #$86    
       BCS    LF33F   
       CPX    #$1B    
       BCC    LF33F   
       CPX    #$5A    
       BCS    LF33C   
       CPX    #$45    
       BCS    LF33F   
       JSR    LF907   
       JMP    LF33F   
LF33C: JSR    LF8E4   
LF33F: JSR    LF92A   
LF342: JSR    LF957   
       JMP    LF389   
LF348: CPY    #$A1    
       BCS    LF386   
       LDA    #$8D    
       STA    $96     
       LDA    #$78    
       STA    $97     
LF354: CPX    #$85    
       BCS    LF36D   
       CPX    #$1A    
       BCC    LF36D   
       CPX    #$5B    
       BCS    LF36A   
       CPX    #$44    
       BCS    LF36D   
       JSR    LF8E4   
       JMP    LF36D   
LF36A: JSR    LF907   
LF36D: LDA    #$85    
       STA    $98     
       LDA    #$1E    
       STA    $99     
       JSR    LF932   
       LDA    #$5A    
       STA    $98     
       LDA    #$49    
       STA    $99     
       JSR    LF95F   
       JMP    LF389   
LF386: JSR    LF92A   
LF389: STX    $83     
       STY    $82     
       LDA    $C9     
       LSR            
       BCC    LF3B4   
       LDY    $A2     
       BEQ    LF3A7   
       LSR            
       BCC    LF3B4   
       LDA    $9B     
       CMP    #$40    
       BCC    LF3A3   
       EOR    #$10    
       BNE    LF3B2   
LF3A3: LDA    #$40    
       BNE    LF3B2   
LF3A7: LDA    $9B     
       CLC            
       ADC    #$10    
       CMP    #$40    
       BCC    LF3B2   
       LDA    #$00    
LF3B2: STA    $9B     
LF3B4: JMP    LF3B7   
LF3B7: LDA    $CD     
       LSR            
       STA    $A5     
       LDA    $C4     
       BEQ    LF3C3   
       JMP    LF6DF   
LF3C3: LDA    $B2     
       BEQ    LF3CC   
       DEC    $B2     
       JMP    LF46E   
LF3CC: LDA    $A5     
       STA    $B2     
       LDY    #$02    
LF3D2: LDX.wy $00A6,Y 
       LDA.wy $00AC,Y 
       BEQ    LF3FB   
       CMP    #$50    
       BEQ    LF3FB   
       EOR    #$08    
       STA.wy $00AC,Y 
       LDA.wy $00AF,Y 
       BNE    LF3EF   
       CPX    #$8F    
       BCS    LF3F6   
       INX            
       BNE    LF3FB   
LF3EF: CPX    #$11    
       BCC    LF3F6   
       DEX            
       BNE    LF3FB   
LF3F6: LDA    #$00    
       STA.wy $00AC,Y 
LF3FB: STX    $A6,Y   
       DEY            
       BPL    LF3D2   
       LDY    #$02    
LF402: LDA.wy $00AC,Y 
       BEQ    LF46B   
       CMP    #$50    
       BEQ    LF46B   
       LDX    $A6,Y   
       LDA    $9F     
       BEQ    LF41F   
       CPY    #$01    
       BEQ    LF46B   
       CPX    #$7E    
       BCS    LF46B   
       CPX    #$26    
       BCC    LF46B   
       BCS    LF42F   
LF41F: CPX    #$86    
       BCS    LF46B   
       CPX    #$1B    
       BCC    LF46B   
       CPX    #$5A    
       BCS    LF42F   
       CPX    #$45    
       BCS    LF46B   
LF42F: TXA            
       AND    #$03    
       BNE    LF46B   
       LDA    $9F     
       BEQ    LF43F   
       LDA.wy $00AF,Y 
       BEQ    LF44E   
       BNE    LF45E   
LF43F: LDA.wy $00AF,Y 
       BNE    LF44A   
       CPY    #$01    
       BEQ    LF44E   
       BNE    LF45E   
LF44A: CPY    #$01    
       BEQ    LF45E   
LF44E: CPX    #$4F    
       BCS    LF458   
       JSR    LF7C4   
       JMP    LF46B   
LF458: JSR    LF7D3   
       JMP    LF46B   
LF45E: CPX    #$4F    
       BCS    LF468   
       JSR    LF7D3   
       JMP    LF46B   
LF468: JSR    LF7C4   
LF46B: DEY            
       BPL    LF402   
LF46E: LDA    $B9     
       BEQ    LF47B   
       LDA    REFP1   
       ASL            
       BCC    LF4CF   
       LDA    #$00    
       STA    $B9     
LF47B: LDA.w  $009A   
       AND    #$01    
       STA    $A5     
       LDA    VBLANK  
       ASL            
       BCC    LF4CF   
       LDA    $A5     
       EOR    #$01    
       TAX            
       LDA    $B7,X   
       BEQ    LF496   
       LDA    #$08    
       STA    $B3,X   
       BNE    LF4C2   
LF496: LDX    $A5     
       LDA    $B9     
       BNE    LF4CF   
       LDA    REFP1   
       ASL            
       BCS    LF4CF   
       LDA    #$0C    
       STA    $B9     
       LDA    $B7,X   
       BEQ    LF4C8   
       LDA    #$FF    
       STA    $B3,X   
       LDA    $9F     
       BEQ    LF4BB   
       LDA    $82     
       CMP    #$74    
       BCS    LF4BB   
       CMP    #$71    
       BCS    LF4C2   
LF4BB: LDA    $85,X   
       SEC            
       SBC    #$04    
       STA    $85,X   
LF4C2: LDA    #$00    
       STA    $B7,X   
       BEQ    LF4CF   
LF4C8: ASL            
       BCS    LF4CF   
       LDA    #$01    
       STA    $B7,X   
LF4CF: LDA    $CD     
       LSR            
       STA    $A5     
       LDA    $9A     
       AND    #$01    
       TAX            
       LDA    $85,X   
       CMP    #$C0    
       BCS    LF4EC   
       LDA    $B7,X   
       BEQ    LF4E6   
       JMP    LF5DF   
LF4E6: DEC    $B3,X   
       LDA    $B3,X   
       BEQ    LF4EF   
LF4EC: JMP    LF5FC   
LF4EF: LDA    $A5     
       STA    $B3,X   
       LDA    $9F     
       BEQ    LF4FA   
       JMP    LF57E   
LF4FA: LDY    #$00    
       LDA.wx $0085,X 
LF4FF: CMP    LFE2C,Y 
       BCS    LF507   
       INY            
       BPL    LF4FF   
LF507: LDA    $87,X   
       CMP    #$52    
       BCS    LF511   
       TYA            
       ADC    #$08    
       TAY            
LF511: LDA    LFE34,Y 
       STA    $B5,X   
       STY    $A5     
       TYA            
       LSR            
       LSR            
       TAY            
       LDA    LFE46,Y 
       STA    $96     
       LDA    LFE4A,Y 
       STA    $97     
       LDY    $A5     
LF528: LDA    #$20    
       STA    $A5     
       LDA    $87,X   
       LDY.wx $00B5,X 
       BNE    LF53F   
       CMP    $96     
       BCS    LF559   
       INC    $87,X   
       CMP    $97     
       BCS    LF54F   
       BCC    LF56B   
LF53F: CPY    #$02    
       BCS    LF559   
       CMP    $97     
       BCC    LF559   
       DEC    $87,X   
       CMP    $96     
       BCC    LF54F   
       BCS    LF56B   
LF54F: LDA    $87,X   
       AND    #$07    
       CMP    #$04    
       BNE    LF56B   
       BEQ    LF559   
LF559: LDA    $85,X   
       SEC            
       SBC    #$04    
       STA    $85,X   
       CMP    #$04    
       BEQ    LF56E   
       CMP    #$00    
       BNE    LF56B   
       JSR    LFC96   
LF56B: JMP    LF5FC   
LF56E: LDA    $87,X   
       CMP    #$90    
       BCS    LF578   
       CMP    #$20    
       BCS    LF56B   
LF578: LDA    #$60    
       STA    $B3,X   
       BNE    LF56B   
LF57E: LDY    #$00    
       LDA.wx $0085,X 
LF583: CMP    LFE4E,Y 
       BCS    LF58B   
       INY            
       BPL    LF583   
LF58B: CMP    #$4C    
       BNE    LF599   
       LDA    $87,X   
       CMP    #$7A    
       BCS    LF599   
       CMP    #$2A    
       BCS    LF56B   
LF599: LDA    $87,X   
       CMP    #$52    
       BCS    LF5A3   
       TYA            
       ADC    #$08    
       TAY            
LF5A3: LDA    LFE56,Y 
       STA    $B5,X   
       STY    $A5     
       TYA            
       LSR            
       LSR            
       TAY            
       LDA    LFE66,Y 
       STA    $96     
       LDA    LFE6A,Y 
       STA    $97     
       LDY    $A5     
       CPY    #$01    
       BNE    LF5CA   
       LDA    $87,X   
       CMP    #$63    
       BCS    LF5DC   
       LDY    #$52    
       STY    $97     
       BNE    LF5D8   
LF5CA: CPY    #$09    
       BNE    LF5DC   
       LDA    $87,X   
       CMP    #$46    
       BCC    LF5DC   
       LDY    #$52    
       STY    $96     
LF5D8: CMP    #$52    
       BEQ    LF56B   
LF5DC: JMP    LF528   
LF5DF: LDA    $82     
       AND    #$FC    
       SEC            
       SBC    #$08    
       STA    $85,X   
       LDA    $83     
       LDY    $9E     
       BNE    LF5F3   
       CLC            
       ADC    #$07    
       BNE    LF5F6   
LF5F3: SEC            
       SBC    #$02    
LF5F6: STA    $87,X   
       LDA    #$00    
       STA    $B3,X   
LF5FC: JSR    LFCA7   
       LDA    $9A     
       AND    #$01    
       TAX            
       LDA    $B7,X   
       BEQ    LF637   
       LDA    $9F     
       ASL            
       TAY            
       LDA    LFF3B,Y 
       STA    $97     
       LDA    LFF3C,Y 
       STA    $96     
       LDA    $82     
       CMP    $97     
       BNE    LF626   
       LDA    $BF,X   
       BNE    LF637   
       INC    $BF,X   
       LDA    #$01    
       BNE    LF634   
LF626: CMP    $96     
       BNE    LF637   
       LDA    $BF,X   
       CMP    #$02    
       BCS    LF637   
       INC    $BF,X   
       LDA    #$02    
LF634: JSR    LFA70   
LF637: LDA    $9A     
       AND    #$01    
       TAX            
       LDA    VBLANK  
       ASL            
       ASL            
       BCC    LF65F   
       LDA    #$02    
       STA    $B3,X   
       LDA    $9F     
       BEQ    LF65F   
       LDA    $85,X   
       CMP    #$4C    
       BNE    LF65F   
       LDA    $87,X   
       SEC            
       SBC    #$04    
       CMP    $A7     
       BCC    LF65D   
       INC    $87,X   
       BNE    LF65F   
LF65D: DEC    $87,X   
LF65F: LDA    COLUP1  
       ASL            
       BCS    LF66A   
       LDA    #$00    
       STA    $C2     
       BEQ    LF6DF   
LF66A: LDA    $C2     
       BNE    LF6DF   
       LDA    #$08    
       STA    $C2     
       LDX    #$00    
       LDA    $B7     
       BNE    LF6D8   
       INX            
       LDA    $B8     
       BNE    LF6D8   
       LDX    #$00    
LF67F: LDA    $AC,X   
       BEQ    LF6A5   
       CMP    #$50    
       BEQ    LF6A5   
       LDA    $82     
       CLC            
       ADC    #$0A    
       CMP    $A9,X   
       BCC    LF6A5   
       SBC    #$19    
       CMP    $A9,X   
       BCS    LF6A5   
       LDA    $83     
       CLC            
       ADC    #$08    
       CMP    $A6,X   
       BCC    LF6A5   
       SBC    #$10    
       CMP    $A6,X   
       BCC    LF6AC   
LF6A5: INX            
       CPX    #$03    
       BNE    LF67F   
       BEQ    LF6DF   
LF6AC: LDA    $AF,X   
       BNE    LF6B8   
       LDA    $A6,X   
       CMP    $83     
       BCS    LF6BE   
       BCC    LF6CE   
LF6B8: LDA    $A6,X   
       CMP    $83     
       BCS    LF6CE   
LF6BE: LDA    #$50    
       STA    $AC,X   
       LDA    #$05    
       JSR    LFA70   
       LDA    #$1F    
       STA    $CE     
       JMP    LF6DF   
LF6CE: LDA    #$10    
       STA    $A2     
       LDA    #$60    
       STA    $9B     
       BNE    LF6DF   
LF6D8: LDA    #$00    
       STA    $B7,X   
       JSR    LFC96   
LF6DF: LDA    SWCHB   
       LSR            
       BCC    LF6F6   
       LSR            
       BCS    LF6F9   
       LDA    $C3     
       BNE    LF6F6   
       LDA    $9F     
       EOR    #$01    
       STA    $9F     
       LDA    #$01    
       STA    $C3     
LF6F6: JMP    LF00F   
LF6F9: JMP    LF030   
LF6FC: .byte $FF,$FF,$FF,$FF
LF700: LDY    $95     
       BPL    LF710   
       CPX    $82     
       BNE    LF70C   
       LDY    #$0F    
       STY    $95     
LF70C: LDA    #$00    
       BEQ    LF719   
LF710: LDA    LFC80,Y 
       STA    COLUP0  
       LDA    ($9B),Y 
       DEC    $95     
LF719: STA    WSYNC   
       STA    GRP0    
       TXA            
       LSR            
       BCS    LF745   
       LDY    #$00    
       TXA            
       AND    #$FC    
       CMP    $97     
       BNE    LF72C   
       LDY    #$02    
LF72C: STY    ENAM1   
       LDY    $96     
       BPL    LF73C   
       CPX    $84     
       BNE    LF742   
       LDY    #$05    
       STY    $96     
       BNE    LF742   
LF73C: LDA    ($A3),Y 
       STA    GRP1    
       DEC    $96     
LF742: DEX            
       BNE    LF700   
LF745: TAY            
       LDA    ($BA),Y 
       STA    PF1     
       LDA    ($BC),Y 
       STA    PF2     
       DEX            
       CPX    $98     
       BNE    LF700   
       CPX    #$12    
       BEQ    LF781   
LF757: LDY    $A5     
       LDA.wy $00A9,Y 
       STA    $84     
       LDA.wy $00AC,Y 
       STA    $A3     
       INC    $A5     
       LDA.wy $00A6,Y 
       JSR    LFB58   
       STA    WSYNC   
       STA    HMOVE   
       LDA.wy $00C6,Y 
       STA    COLUPF  
       LDA    LF98A,Y 
       STA    COLUP1  
       LDA.wy $00AF,Y 
       STA    REFP1   
       STA    HMCLR   
       RTS            

LF781: LDY    $95     
       BPL    LF791   
       CPX    $82     
       BNE    LF78D   
       LDY    #$0F    
       STY    $95     
LF78D: LDA    #$00    
       BEQ    LF79A   
LF791: LDA    LFC80,Y 
       STA    COLUP0  
       LDA    ($9B),Y 
       DEC    $95     
LF79A: STA    WSYNC   
       STA    GRP0    
       TXA            
       LSR            
       BCS    LF7B2   
       LDY    #$00    
       TXA            
       AND    #$FC    
       CMP    $97     
       BNE    LF7AD   
       LDY    #$02    
LF7AD: STY    ENAM1   
       DEX            
       BNE    LF781   
LF7B2: TAY            
       LDA    LFE20,Y 
       STA    PF0     
       LDA    ($BA),Y 
       STA    PF1     
       LDA    ($BC),Y 
       STA    PF2     
       DEX            
       BNE    LF781   
       RTS            

LF7C4: LDA.wy $00A9,Y 
       CMP    LF7E5,Y 
       BCC    LF7D2   
       SEC            
       SBC    #$02    
       STA.wy $00A9,Y 
LF7D2: RTS            

LF7D3: LDA.wy $00A9,Y 
       CMP    LF7E2,Y 
       BCS    LF7E1   
       CLC            
       ADC    #$02    
       STA.wy $00A9,Y 
LF7E1: RTS            

LF7E2: .byte $88,$62,$38
LF7E5: .byte $72,$4E,$24
LF7E8: .byte $00,$90
LF7EA: .byte $48,$D8
LF7EC: .byte $DA,$8F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00
LF808: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
LF858: LDA    #$20    
       LDX    #$00    
       JSR    LFB44   
       LDA    #$28    
       LDX    #$01    
       JSR    LFB44   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0F    
       STA    COLUP1  
       STA    COLUP0  
       LDY    #$07    
       STY    $95     
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       STA    HMCLR   
LF882: LDY    $95     
       LDA    LF808,Y 
       STA    $97     
       STA.w  $0002   
       NOP            
       LDA    ($89),Y 
       STA    GRP0    
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    ($8F),Y 
       TAX            
       LDA    ($8D),Y 
       LDY    $97     
       STA    GRP0    
       STX    GRP1    
       STY    GRP0    
       STY    GRP1    
       LDY    $95     
       DEC    $95     
       BPL    LF882   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LF8B3: LDA    #$9A    
       STA    $96     
       LDA    #$07    
       STA    $97     
       BNE    LF8C5   
LF8BD: LDA    #$88    
       STA    $96     
       LDA    #$18    
       STA    $97     
LF8C5: LDA    $95     
       BEQ    LF8E3   
       ASL            
       BCC    LF8D7   
       CPX    $96     
       BCS    LF8E3   
       INX            
       LDA    #$00    
       STA    $9E     
       BEQ    LF8E3   
LF8D7: ASL            
       BCC    LF8E3   
       CPX    $97     
       BCC    LF8E3   
       DEX            
       LDA    #$08    
       STA    $9E     
LF8E3: RTS            

LF8E4: LDA    $95     
       BEQ    LF906   
       CPX    #$4F    
       BEQ    LF906   
       LDA    $95     
       ASL            
       BCC    LF8FA   
       TXA            
       LSR            
       BCC    LF906   
       CPY    $96     
       BCS    LF906   
       INY            
LF8FA: ASL            
       BCC    LF906   
       TXA            
       LSR            
       BCS    LF906   
       CPY    $97     
       BCC    LF906   
       DEY            
LF906: RTS            

LF907: LDA    $95     
       BEQ    LF929   
       CPX    #$4F    
       BEQ    LF929   
       LDA    $95     
       ASL            
       BCC    LF91D   
       TXA            
       LSR            
       BCS    LF929   
       CPY    $97     
       BCC    LF929   
       DEY            
LF91D: ASL            
       BCC    LF929   
       TXA            
       LSR            
       BCC    LF929   
       CPY    $96     
       BCS    LF929   
       INY            
LF929: RTS            

LF92A: LDA    #$59    
       STA    $98     
       LDA    #$48    
       STA    $99     
LF932: LDA    $98     
       CMP    $83     
       BCC    LF956   
       SBC    #$04    
       CMP    $83     
       BCC    LF94A   
       LDA    $99     
       CMP    $83     
       BCC    LF956   
       SBC    #$04    
       CMP    $83     
       BCS    LF956   
LF94A: LDA    SWCHA   
       AND    #$20    
       BNE    LF956   
       DEY            
       LDA    #$02    
       STA    $A2     
LF956: RTS            

LF957: LDA    #$85    
       STA    $98     
       LDA    #$1E    
       STA    $99     
LF95F: LDA    $98     
       CMP    $83     
       BCC    LF983   
       SBC    #$04    
       CMP    $83     
       BCC    LF977   
       LDA    $99     
       CMP    $83     
       BCC    LF983   
       SBC    #$04    
       CMP    $83     
       BCS    LF983   
LF977: LDA    SWCHA   
       AND    #$10    
       BNE    LF983   
       INY            
       LDA    #$01    
       STA    $A2     
LF983: RTS            

LF984: .byte $7D,$7A,$77
LF987: .byte $5A,$1C,$A8
LF98A: .byte $DC,$0F,$5C
LF98D: LDY    $95     
       BPL    LF99D   
       CPX    $82     
       BNE    LF999   
       LDY    #$0F    
       STY    $95     
LF999: LDA    #$00    
       BEQ    LF9A6   
LF99D: LDA    LFC80,Y 
       STA    COLUP0  
       LDA    ($9B),Y 
       DEC    $95     
LF9A6: STA    WSYNC   
       STA    GRP0    
       TXA            
       LSR            
       BCS    LF9C0   
       LDY    $96     
       BMI    LF9BD   
       LDA    LFFA1,Y 
       STA    COLUP1  
       LDA    ($CF),Y 
       STA    GRP1    
       DEC    $96     
LF9BD: DEX            
       BNE    LF98D   
LF9C0: LDY    $96     
       LDA    LFFAC,Y 
       STA    COLUPF  
       LDA    ($A3),Y 
       STA    PF2     
       DEX            
       CPX    $98     
       BNE    LF98D   
       LDA    #$20    
       STA    NUSIZ1  
       LDA    #$FF    
       STA    PF2     
       LSR            
       STA    PF1     
       LDA.w  $00C6   
       STA    COLUPF  
       LDA    #$00    
       STA    GRP1    
       STA    CXCLR   
       JMP    LF757   
LF9E9: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       RTS            

LF9FC: .byte $FF,$FF,$FF,$FF,$00,$E7,$C6,$73,$7F,$7E,$67,$3B,$3E,$1C,$0E,$1F
       .byte $1B,$7F,$6E,$06,$00,$60,$30,$33,$7F,$7E,$7C,$3C,$DE,$3F,$19,$1C
       .byte $3E,$36,$7C,$6C,$00,$0F,$66,$E6,$6F,$3F,$FE,$EC,$75,$1E,$0C,$0E
       .byte $1F,$1A,$3F,$33,$00,$30,$36,$37,$7B,$7F,$3F,$1E,$FC,$3F,$19,$1C
       .byte $3E,$34,$7E,$66,$00,$60,$60,$30,$32,$33,$9B,$9F,$DF,$7E,$3E,$1B
       .byte $3D,$3C,$7E,$66,$00,$06,$06,$04,$4C,$CC,$D9,$F9,$FB,$3E,$7C,$D8
       .byte $BC,$3C,$7E,$66,$00,$C3,$C3,$22,$1C,$3E,$7B,$5E,$54,$68,$78,$DC
       .byte $DC,$CE,$1E,$18
LFA70: LDY    $80     
       STY    $D1     
       LDX    #$01    
       SED            
       CLC            
LFA78: ADC    $80,X   
       STA    $80,X   
       LDA    #$00    
       DEX            
       BPL    LFA78   
       CLD            
       LDA    $80     
       CMP    $D1     
       BEQ    LFA90   
       LDA    $A1     
       CMP    #$06    
       BCS    LFA90   
       INC    $A1     
LFA90: LDX    #$01    
       LDY    #$04    
LFA94: LDA    $80,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $0089,Y 
       LDA    $80,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA.wy $008B,Y 
       LDA    #$F8    
       STA.wy $008A,Y 
       STA.wy $008C,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LFA94   
       LDX    #$00    
LFABB: LDA.wx $0089,X 
       EOR    #$08    
       BNE    LFACA   
       STA    $89,X   
       INX            
       INX            
       CPX    #$08    
       BCC    LFABB   
LFACA: RTS            

LFACB: LDA    #$40    
       LDX    #$00    
       JSR    LFB44   
       LDA    #$48    
       JSR    LFB58   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       STY    REFP0   
       STY    REFP1   
       INY            
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDA    #$1C    
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$0F    
       STA    COLUPF  
       LDY    #$08    
       LDX    $A1     
       LDA    LFB36,X 
       STA    $95     
       LDA    LFB3D,X 
       STA    $96     
       STA    HMCLR   
LFB00: STA    WSYNC   
       LDA    $96     
       STA    PF0     
       LDA    $95     
       STA    PF1     
       LDA    LFF08,Y 
       STA    GRP0    
       LDA    LFF11,Y 
       STA    GRP1    
       LDA    LFF1A,Y 
       LDA    LFF23,Y 
       TAX            
       LDA    LFF1A,Y 
       NOP            
       STA.w  $001B   
       STX    GRP1    
       LDA    #$00    
       STA    PF1     
       STA    PF0     
       CPY    #$03    
       BCS    LFB32   
       STA    $96     
       STA    $95     
LFB32: DEY            
       BPL    LFB00   
       RTS            

LFB36: .byte $00,$00,$00,$80,$A0,$A8,$AA
LFB3D: .byte $00,$10,$50,$50,$50,$50,$50
LFB44: SEC            
       STA    WSYNC   
LFB47: SBC    #$0F    
       BCS    LFB47   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

LFB58: SEC            
       STA    WSYNC   
LFB5B: SBC    #$0F    
       BCS    LFB5B   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA.w  $0021   
       STA.w  $0011   
       RTS            

LFB6C: LDA    $85     
       AND    $86     
       CMP    #$FF    
       BNE    LFB7C   
       LDA    $9A     
       AND    #$01    
       TAX            
       JMP    LFB9B   
LFB7C: LDA    $9A     
       AND    #$7F    
       BNE    LFBBD   
       LDA    $BE     
       INC    $BE     
       CMP    #$03    
       BNE    LFBBD   
       LDA    #$00    
       STA    $BE     
       LDX    #$01    
LFB90: LDA    $85,X   
       CMP    #$C0    
       BCS    LFB9B   
       DEX            
       BPL    LFB90   
       BMI    LFBBD   
LFB9B: CPX    #$01    
       BEQ    LFBA9   
       LDA    #$9C    
       STA    $87     
       LDA    #$08    
       STA    $B5     
       BNE    LFBB1   
LFBA9: LDA    #$09    
       STA    $88     
       LDA    #$00    
       STA    $B6     
LFBB1: LDA    #$FF    
       STA    $B3,X   
       LDA    #$10    
       STA    $85,X   
       LDA    #$20    
       STA    $CA     
LFBBD: RTS            

LFBBE: LDA    $9A     
       AND    #$1F    
       BNE    LFBE5   
       LDA    $83     
       AND    #$1F    
       STA    $95     
       LDX    #$02    
LFBCC: LDA    $AC,X   
       CMP    #$50    
       BCS    LFBDA   
       LDA    $A9,X   
       AND    #$1F    
       CMP    $95     
       BEQ    LFBDF   
LFBDA: DEX            
       BPL    LFBCC   
       BNE    LFBE5   
LFBDF: LDA    $AF,X   
       EOR    #$08    
       STA    $AF,X   
LFBE5: LDA    $9A     
       AND    #$FF    
       BNE    LFBFA   
       LDX    #$02    
LFBED: LDA    $AC,X   
       CMP    #$50    
       BNE    LFBF7   
       LDA    #$00    
       STA    $AC,X   
LFBF7: DEX            
       BPL    LFBED   
LFBFA: LDA    $9A     
       AND    #$7F    
       BNE    LFC3C   
       LDA    $83     
       AND    #$07    
       TAX            
       CPX    #$03    
       BCS    LFC3C   
       LDA    $AC,X   
       BNE    LFC3C   
       LDA    #$1E    
       STA    $B2     
       LDA    $9A     
       ASL            
       BCC    LFC20   
       LDA    #$90    
       STA    $A6,X   
       LDA    #$08    
       STA    $AF,X   
       BNE    LFC28   
LFC20: LDA    #$10    
       STA    $A6,X   
       LDA    #$00    
       STA    $AF,X   
LFC28: LDA    #$40    
       STA    $AC,X   
       LDA    $9F     
       BNE    LFC37   
       LDA    LFC40,X 
       STA    $A9,X   
       BNE    LFC3C   
LFC37: LDA    LFC3D,X 
       STA    $A9,X   
LFC3C: RTS            

LFC3D: .byte $86,$58,$38
LFC40: .byte $74,$62,$22
LFC43: JSR    LFC5D   
       LDA    #$00    
       STA    $C5     
       STA    $AC     
       STA    $AD     
       STA    $AE     
       LDX    #$01    
LFC52: JSR    LFC9C   
       LDA    #$00    
       STA    $B7,X   
       DEX            
       BPL    LFC52   
       RTS            

LFC5D: LDA    #$50    
       STA    $83     
LFC61: LDA    #$11    
       STA    $82     
       LDA    #$00    
       STA    $9B     
       STA    $A2     
       STA    $C4     
       RTS            

LFC6E: .byte $11,$25,$3B,$4F,$64,$77,$8D,$A1
LFC76: .byte $11,$29,$3C,$5B,$7B,$7B,$8B,$A1
LFC7E: .byte $C6,$35
LFC80: .byte $2F,$2F,$2F,$2F,$2F,$C6,$C6,$C6,$C6,$C6,$2F,$2F,$2F,$2F,$2F,$2F
       .byte $C8,$C8,$4C,$4C,$7F,$7F
LFC96: LDA    #$10    
       STA    $CB     
       DEC    $A1     
LFC9C: LDA    #$00    
       STA    $BF,X   
       LDA    #$FF    
       STA    $85,X   
       STA    $BE     
       RTS            

LFCA7: LDA    $82     
       CMP    #$A1    
       BCC    LFCDC   
       LDA    $9A     
       AND    #$01    
       TAX            
       LDA    $B7,X   
       CMP    #$01    
       BNE    LFCDC   
       LDA    #$00    
       STA    $B7,X   
       JSR    LFC9C   
       LDA    #$10    
       JSR    LFA70   
       LDA    #$2F    
       STA    $CC     
       INC    $C5     
       LDA    $C5     
       CMP    #$05    
       BNE    LFCDC   
       LDA    #$2D    
       STA    $C4     
       LDA    $CD     
       CMP    #$04    
       BEQ    LFCDC   
       DEC    $CD     
LFCDC: RTS            

LFCDD: LDA    $CA     
       BEQ    LFCF9   
       DEC    $CA     
       LDA    #$04    
       STA    AUDC1   
       LDA    #$10    
       STA    AUDF1   
       LDA    $CA     
       LSR            
       CMP    #$0C    
       BCS    LFCF7   
       LDA    $CA     
       JMP    LFCF9   
LFCF7: LDA    #$0F    
LFCF9: STA    AUDV1   
       RTS            

LFCFC: .byte $FF,$FF,$FF,$FF,$00,$00,$7F,$4F,$7E,$4E,$7D,$4D,$7E,$CE,$FF,$9F
       .byte $8F,$87,$03,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$01,$03,$07,$7F,$7F,$7F,$FE,$FC,$F8,$F0,$80
       .byte $B0,$00,$30,$00,$30,$00,$30,$FF,$9F,$8F,$87,$03,$01,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$07
       .byte $07,$07,$06,$06,$07,$0F,$1F,$3F,$7F,$FF,$FF,$FF,$FF,$FE,$FC,$F8
       .byte $F0,$E0,$00,$60,$00,$60,$00,$60,$00,$60,$00,$FF,$3F,$1F,$0F,$07
       .byte $03,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$C0,$60,$30,$DF
       .byte $CF,$9F,$3F,$7F,$FF,$E7,$CE,$FC,$F8,$F0,$E0,$00,$60,$00,$60,$00
       .byte $60,$00,$60,$00,$00,$00,$00,$7F,$7F,$7D,$7D,$7A,$7A,$77,$77,$77
       .byte $77,$75,$75,$7A,$7A,$7F,$7F,$7F,$FF,$FE,$FC,$FC,$90,$88,$90,$08
       .byte $10,$08,$10,$08,$10,$2C,$34,$6E,$7F,$7F,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$03,$03,$07,$07,$0E,$9C
       .byte $B8,$F0,$E0,$E0,$80,$60,$00,$60,$00,$60,$00,$60,$00,$00,$00,$7F
       .byte $FF,$7F,$FF,$7F,$FF,$7E,$FE,$7E,$FE,$7E,$3E,$1F,$0F,$07,$03,$01
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0E
       .byte $FF,$FF,$10,$18,$10,$18,$10,$18,$10,$58,$74,$FC,$F6,$FE,$77,$3F
       .byte $1F,$0F,$07,$03,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LFE20: .byte $00,$10,$10,$10,$10,$D0,$70,$10,$30,$10,$00,$00
LFE2C: .byte $81,$69,$59,$3D,$31,$15,$05,$00
LFE34: .byte $02,$00,$02,$01,$02,$00,$02,$02,$02,$01,$02,$00,$02,$01,$02,$00
       .byte $02,$02
LFE46: .byte $8A,$8A,$48,$48
LFE4A: .byte $5B,$5B,$1F,$1F
LFE4E: .byte $81,$5D,$4D,$49,$31,$19,$05,$00
LFE56: .byte $02,$01,$02,$00,$02,$01,$02,$02,$02,$00,$02,$01,$02,$00,$02,$02
LFE66: .byte $8C,$7C,$44,$50
LFE6A: .byte $65,$55,$15,$25
LFE6E: LDA    $CB     
       BNE    LFEA4   
       LDX    #$01    
LFE74: LDA    $B3,X   
       AND    #$F0    
       CMP    #$10    
       BEQ    LFE81   
       DEX            
       BPL    LFE74   
       BMI    LFE8D   
LFE81: LDA    #$07    
       STA    AUDC0   
       LDA    #$18    
       STA    AUDF0   
       LDA    $B3,X   
       STA    AUDV0   
LFE8D: LDA    $CC     
       BEQ    LFEA4   
       DEC    $CC     
       ASL            
       STA    AUDV0   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF89,Y 
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
LFEA4: LDA    $C4     
       BEQ    LFED0   
       LDA    $9A     
       AND    #$0F    
       BNE    LFEBB   
       DEC    $C4     
       BNE    LFEBB   
       LDA    $9F     
       EOR    #$01    
       STA    $9F     
       JSR    LFC43   
LFEBB: LDY    $C4     
       LDA    LFED1,Y 
       BEQ    LFECA   
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       LDA    $9A     
LFECA: STA    AUDV0   
       LDA    #$00    
       STA    AUDV1   
LFED0: RTS            

LFED1: .byte $00,$13,$14,$17,$11,$0F,$0E,$0C,$0F,$11,$0F,$11,$11,$0F,$11,$0F
       .byte $0E,$0E,$0C,$0B,$13,$13,$14,$13,$17,$17,$1B,$13,$15,$0F,$0F,$0F
       .byte $0E,$13,$11,$11,$11,$0F,$0E,$0E,$0C,$0B,$13,$14,$13,$00,$FF,$00
       .byte $00,$00,$00,$00,$00,$00,$00
LFF08: .byte $00,$07,$0F,$4C,$AC,$4C,$0C,$0F,$07
LFF11: .byte $00,$C7,$EF,$EC,$0C,$0C,$EC,$EF,$C7
LFF1A: .byte $00,$C7,$EF,$EC,$0C,$0F,$EC,$EF,$C7
LFF23: .byte $00,$C0,$E0,$E4,$0A,$E4,$E0,$E0,$C0
LFF2C: LDA    #$00    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
       RTS            

LFF3B: .byte $50
LFF3C: .byte $8C,$5B,$8C,$FF,$00,$78,$DE,$EE,$7B,$30,$00,$00,$00,$78,$FC,$78
       .byte $30,$00,$00,$00,$00,$FD,$7A,$30,$00,$00,$00
LFF57: LDA    $CA     
       BNE    LFF80   
       LDA    $B9     
       BNE    LFF67   
       LDY    #$07    
       STY    AUDC1   
       LDY    #$04    
       STY    AUDF1   
LFF67: STA    AUDV1   
       LDA    $CE     
       BEQ    LFF80   
       DEC    $CE     
       ASL            
       ASL            
       AND    #$1F    
       SEC            
       SBC    #$04    
       STA    AUDF1   
       LDA    #$04    
       STA    AUDC1   
       LDA    #$0C    
       STA    AUDV1   
LFF80: RTS            

LFF81: .byte $1D,$17,$13,$17,$1D,$1A,$17,$13
LFF89: .byte $0E,$0C,$0F,$13,$13,$13,$3F,$1F,$07,$07,$07,$06,$0E,$0E,$0C,$1C
       .byte $18,$3C,$76,$E2,$B6,$3C,$00,$00
LFFA1: .byte $00,$0F,$0F,$C8,$C8,$48,$48,$76,$76,$5A,$5A
LFFAC: .byte $38,$38,$38,$38,$38,$38,$38,$38,$38,$38,$38,$1C,$1C,$1C,$1C,$1C
       .byte $00,$00,$00,$3C,$7E,$38,$7C,$0E,$1F,$70,$F8,$1C,$3E,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$37
       .byte $2A,$36,$3E,$1C,$1C,$1C,$1C,$1C,$3E,$1E,$7F,$F3,$C1,$80,$00,$00
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $00,$F0,$00,$F0
