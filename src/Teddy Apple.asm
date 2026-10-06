; Disassembly of roms/Teddy Apple.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Teddy Apple.bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
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
VDELP0  =  $25
VDELP1  =  $26
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
LF00B: LDA    #$0A    
       STA    $C0     
       STA    $CF     
       STA    $BF     
       LDA    #$01    
       STA    $D1     
       STA    $D0     
       LDA    #$00    
       STA    $80     
       STA    $9B     
       STA    $9C     
       STA    $9D     
       STA    $97     
       STA    $8B     
       STA    $DA     
       LDA    #$04    
       STA    $8A     
       LDA    #$21    
       STA    $96     
LF031: LDA    #$4F    
       STA    $B5     
       LDX    #$03    
       LDA    #$00    
LF039: STA    $C1,X   
       EOR    #$01    
       DEX            
       BPL    LF039   
       LDA    #$FA    
       STA    $A5     
       LDA    #$37    
       LDX    #$04    
LF048: STA    $8F,X   
       ADC    #$11    
       DEX            
       BPL    LF048   
       LDX    #$04    
LF051: LDA    #$00    
       STA    $A9,X   
       STA    $AE,X   
       DEX            
       BPL    LF051   
       LDX    #$04    
       LDA    #$48    
       LDY    $8B     
       BEQ    LF064   
       LDA    #$C8    
LF064: STA    $C7,X   
       DEX            
       BPL    LF064   
       LDX    #$00    
       STX    $CB     
       STX    $B3     
       STX    $CD     
       LDA    #$75    
       STA    $BB     
       LDA    #$07    
       STA    $BC     
       LDA    #$53    
       STA    $B4     
       LDA    #$50    
       STA    $A6     
LF081: JSR    LFD37   
       LDA    #$15    
       STA    T1024T  
       LDX    #$06    
LF08B: STA    WSYNC   
       DEX            
       BPL    LF08B   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    #$02    
       JSR    LFA11   
       JSR    LFE4A   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    #$04    
LF0A6: STA    WSYNC   
       DEX            
       BPL    LF0A6   
       LDA    #$42    
       LDX    #$00    
       JSR    LFCFE   
       LDA    $BB     
       LDX    #$03    
       JSR    LFCFE   
       LDA    #$4A    
       LDX    #$01    
       JSR    LFCFE   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$20    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    $A1     
       LDA    #$10    
       STA    CTRLPF  
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       LDA    $B3     
       AND    #$10    
       STA    $A0     
       LDA    #$60    
       LDY    #$56    
       LDX    $8B     
       BEQ    LF0E9   
       LDY    #$76    
       LDA    #$A0    
LF0E9: STY    $B6     
       TAY            
       CLC            
       ADC    #$20    
       EOR    $A0     
       STA    $D4     
       TYA            
       EOR    $A0     
       STA    $D2     
       LDY    #$E0    
       LDA    $B6     
       CMP    #$56    
       BEQ    LF102   
       LDY    #$F0    
LF102: STY    $D6     
       LDY    #$0F    
LF106: STA    WSYNC   
       LDA    ($D2),Y 
       STA    GRP0    
       LDA    ($D4),Y 
       STA    GRP1    
       LDA    ($D6),Y 
       STA    COLUP0  
       STA    COLUP1  
       TYA            
       AND    #$01    
       BEQ    LF11D   
       STA    WSYNC   
LF11D: DEY            
       BPL    LF106   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $B4     
       LDX    #$01    
       JSR    LFCFE   
       LDA    $B7     
       STA    REFP1   
       LDA    #$2C    
       STA    COLUP0  
       STA    COLUP1  
       JMP    LF1E0   
LF13E: LDA    #$00    
       STA    $A8     
       CPY    $A2     
       BNE    LF14A   
       LDA    #$01    
       STA    $A8     
LF14A: LDY    $A1     
       LDA    LFCCF,Y 
       TAY            
       LDA    $B6     
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    ENABL   
       JSR    LF809   
       LDA    #$0F    
       JSR    LF809   
       LDA    $B6     
       JSR    LF809   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $A1     
       TAY            
       ASL            
       ASL            
       ASL            
       STA    $A0     
       LDA    $B3     
       AND    #$01    
       BEQ    LF185   
       LDX.wy $00AE,Y 
       LDA    LFCD9,Y 
       BNE    LF18B   
LF185: LDA    LFCD4,Y 
       LDX.wy $00A9,Y 
LF18B: TAY            
       STA    WSYNC   
LF18E: DEY            
       BPL    LF18E   
       STA    RESBL   
       STX    ENABL   
       LDX    $A1     
       LDA    $8F,X   
       LDX    #$00    
       JSR    LFCFE   
       LDY    #$0F    
LF1A0: STA    WSYNC   
       STA    HMOVE   
       LDA    $A8     
       BEQ    LF1AD   
       LDA.wy $00DB,Y 
       STA    GRP1    
LF1AD: CPY    #$08    
       BCS    LF1C0   
       LDA    ($B9),Y 
       STA    COLUP1  
       LDA    LFCF6,Y 
       EOR    $A0     
       STA    COLUP0  
       LDA    ($A4),Y 
       STA    GRP0    
LF1C0: TYA            
       AND    #$FC    
       CMP    $BE     
       BNE    LF21D   
       LDA    #$02    
       AND    $BD     
LF1CB: STA    ENAM1   
       STA    HMCLR   
       DEY            
       BPL    LF1A0   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       INC    $A1     
       LDA    #$0F    
       STA    COLUPF  
       STA    ENABL   
LF1E0: LDA    #$00    
       STA    ENAM1   
       STA    $BD     
       LDA    $BC     
       CMP    #$70    
       BCS    LF1FD   
       LDA    $BC     
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       SBC    #$01    
       CMP    $A1     
       BNE    LF1FD   
       LDA    #$02    
       STA    $BD     
LF1FD: LDA    $BC     
       AND    #$0C    
       EOR    #$0C    
       STA    $BE     
       LDX    $A1     
       LDA    $C7,X   
       STA    $A4     
       STA    WSYNC   
       CLC            
       LDA    $B6     
       ADC    #$10    
       STA    $B6     
       LDY    $A1     
       CPY    #$05    
       BEQ    LF221   
       JMP    LF13E   
LF21D: LDA    #$00    
       BEQ    LF1CB   
LF221: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENABL   
       LDA    #$B3    
       STA    COLUPF  
       LDY    #$07    
LF22F: LDX    #$0F    
       LDA    LFCC7,Y 
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STX    COLUBK  
       DEY            
       BPL    LF22F   
       LDY    #$65    
       LDA    $8B     
       BEQ    LF249   
       LDY    #$55    
LF249: STA    WSYNC   
       STY    COLUBK  
       LDA    #$00    
       STA    REFP1   
       JSR    LFC7A   
       LDA    $8B     
       AND    #$01    
       BNE    LF260   
       JSR    LFC38   
       JMP    LF267   
LF260: LDX    #$0D    
LF262: STA    WSYNC   
       DEX            
       BPL    LF262   
LF267: LDX    #$02    
LF269: STA    WSYNC   
       DEX            
       BPL    LF269   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $DA     
       BNE    LF27E   
       JSR    LFD6E   
       JMP    LF285   
LF27E: LDX    #$0E    
LF280: STA    WSYNC   
       DEX            
       BPL    LF280   
LF285: LDX    #$04    
LF287: STA    WSYNC   
       DEX            
       BPL    LF287   
       LDA    #$00    
       STA    COLUBK  
       INC    $B3     
       LDA    $B3     
       AND    #$3F    
       BNE    LF2BA   
       LDA    $8A     
       BEQ    LF2BA   
       LDA    $96     
       BNE    LF2BA   
       LDA    #$01    
       STA    $A0     
       LDA    $8B     
       CMP    #$02    
       BCS    LF2BA   
       SED            
       LDX    #$01    
       CLC            
LF2AE: LDA    $9C,X   
       ADC    $A0     
       STA    $9C,X   
       DEX            
       STX    $A0     
       BPL    LF2AE   
       CLD            
LF2BA: LDA    $B5     
       AND    #$0F    
       STA    $BE     
       LDA    $A2     
       STA    $A3     
       LDA    #$00    
       STA    $A0     
       LDY    $96     
       BEQ    LF320   
       INC    $97     
       LDA    $97     
       CMP    #$13    
       BNE    LF307   
       LDA    #$00    
       STA    $97     
       DEC    $96     
       BNE    LF2FC   
       LDA    #$80    
       STA    $DA     
       LDY    #$00    
       STY    AUDC0   
       STY    AUDF0   
       STY    AUDC1   
       STY    AUDF1   
       STY    AUDV1   
       LDA    $8B     
       CMP    #$02    
       BCC    LF31B   
       LDA    #$88    
       STA    $97     
       LDA    #$50    
       STA    $A6     
       BNE    LF31B   
LF2FC: LDY    $96     
       LDA    #$0C    
       STA    AUDC0   
       LDA    LF79F,Y 
       STA    AUDF0   
LF307: LDY    $96     
       LDA    LF79F,Y 
       LDY    #$06    
       CMP    #$20    
       BCS    LF31B   
       LDA    $97     
       LSR            
       EOR    #$0F    
       LSR            
       AND    #$0E    
       TAY            
LF31B: STY    AUDV0   
       JMP    LF3EE   
LF320: LDA    $97     
       CMP    #$88    
       BNE    LF329   
       JMP    LF3EE   
LF329: JSR    LFD28   
       LDA    $8A     
       BEQ    LF332   
       BNE    LF335   
LF332: JMP    LF3EE   
LF335: LDA    $8D     
       BEQ    LF349   
       DEC    $8D     
       LDA    #$0D    
       STA    AUDC1   
       LDA    #$06    
       STA    AUDV1   
       LDA    $8D     
       EOR    #$1F    
       STA    AUDF1   
LF349: LDA    $CD     
       BNE    LF363   
       LDA    $BE     
       CMP    #$0F    
       BEQ    LF363   
       TAY            
       CLC            
       ADC    #$05    
       ADC    $A2     
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       TYA            
       LSR            
       STA    AUDV0   
LF363: LDA    $8C     
       BEQ    LF382   
       DEC    $8C     
       ASL            
       AND    #$0F    
       LSR            
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    $B8     
       AND    #$03    
       TAX            
       LDA    LFCC3,X 
       CLC            
       ADC    $A2     
       ADC    $A2     
       STA    AUDF0   
LF382: LDA    $C6     
       BEQ    LF394   
       DEC    $C6     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$06    
       STA    AUDV0   
       LDA    $C6     
       STA    AUDF0   
LF394: LDA    $CC     
       BEQ    LF3AB   
       DEC    $CC     
       LDA    #$04    
       STA.w  $0016   
       LDA    $CC     
       EOR    #$1F    
       STA.w  $0018   
       LDA    $CC     
       LSR            
       STA    AUDV1   
LF3AB: LDA    $CD     
       BEQ    LF3EE   
       LDA    $B3     
       AND    #$01    
       BEQ    LF3EE   
       DEC    $CD     
       BNE    LF3D3   
       DEC    $8A     
       BNE    LF3C1   
       LDY    #$52    
       BNE    LF3CD   
LF3C1: LDY    #$4E    
       LDA    #$00    
       STA    $B3     
       STA    $8B     
       LDA    #$88    
       STA    $A0     
LF3CD: STY    $B5     
       LDY    #$50    
       STY    $A6     
LF3D3: LDA    $B5     
       LSR            
       AND    #$03    
       TAY            
       LDA    LFF0A,Y 
       ADC.w  $00A2   
       STA    AUDF0   
       LDA    #$06    
       STA    AUDV0   
       LDA    #$04    
       STA    AUDC0   
       INC    $B5     
       JSR    LFA08   
LF3EE: LDA    INTIM   
       BNE    LF3EE   
       JSR    LFD55   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$26    
       STA    TIM64T  
       LDA    #$88    
       CMP.w  $00A0   
       BNE    LF41D   
       LDA    #$0A    
       STA    $C0     
       STA    $CF     
       STA    $BF     
       LDA    #$01    
       STA    $D1     
       STA    $D0     
       JMP    LF031   
LF41D: LDA    $97     
       CMP    #$88    
       BNE    LF426   
       JMP    LF73C   
LF426: LDA    $BE     
       STA    $A0     
       LDA    $96     
       BNE    LF489   
       LDA    $BE     
       LDY    $CD     
       BEQ    LF437   
       JMP    LF538   
LF437: CMP    #$0F    
       BNE    LF489   
       LDX    $A2     
       LDA    $B3     
       AND    #$03    
       BNE    LF489   
       LDA    REFP1   
       ASL            
       BCC    LF477   
       LDA    SWCHA   
       ASL            
       ASL            
       BCS    LF461   
       LDA    #$08    
       STA    $B7     
       LDA    $B4     
       CMP    LFCEB,X 
       BCC    LF477   
       SEC            
       SBC    $D1     
       STA    $B4     
       BNE    LF477   
LF461: LDA    SWCHA   
       ASL            
       BCS    LF489   
       LDA    #$00    
       STA    $B7     
       LDA    $B4     
       CMP    LFCF1,X 
       BCS    LF477   
       CLC            
       ADC    $D1     
       STA    $B4     
LF477: INC    $B8     
       LDA    $B8     
       AND    #$03    
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$50    
       STA    $A6     
       LDA    #$05    
       STA    $8C     
LF489: LDA    $B3     
       AND    #$03    
       BNE    LF4FA   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       BCS    LF4C9   
       LDY    $A2     
       LDA    $B4     
       AND    #$FC    
       CMP    LFCDE,Y 
       BNE    LF4AA   
       LDA.wy $00A9,Y 
       BEQ    LF4C9   
       BNE    LF4B4   
LF4AA: CMP    LFCE4,Y 
       BNE    LF4C9   
       LDA.wy $00AE,Y 
       BEQ    LF4C9   
LF4B4: DEC    $B5     
       BNE    LF4F6   
       LDX    #$09    
       LDA    #$02    
LF4BC: AND    $A9,X   
       DEX            
       BPL    LF4BC   
       CMP    #$02    
       BEQ    LF4F6   
       INC    $B5     
       BNE    LF4F6   
LF4C9: LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       BCS    LF4FA   
       LDY    $A2     
       LDA    $A0     
       CMP    #$0F    
       BNE    LF4DA   
       INY            
LF4DA: LDA    $B4     
       AND    #$FC    
       CMP    LFCDE,Y 
       BNE    LF4EA   
       LDA.wy $00A9,Y 
       BEQ    LF4FA   
       BNE    LF4F4   
LF4EA: CMP    LFCE4,Y 
       BNE    LF4FA   
       LDA.wy $00AE,Y 
       BEQ    LF4FA   
LF4F4: INC    $B5     
LF4F6: LDA    #$00    
       STA    $C6     
LF4FA: LDY    $A2     
       JSR    LFA08   
       LDA    $B5     
       AND    #$0F    
       STA    $A0     
       CMP    #$0F    
       BEQ    LF520   
       CMP    #$06    
       BCC    LF516   
       AND    #$01    
       ASL            
       ASL            
       ASL            
       ADC    #$70    
       BNE    LF51C   
LF516: LDA    #$06    
       STA    $A0     
       LDA    #$80    
LF51C: STA    $A6     
       BNE    LF538   
LF520: CPY    $A2     
       BEQ    LF538   
       BCC    LF538   
       LDA    #$90    
       STA    $A6     
       LDY    #$01    
       LDX    $A2     
       LDA    $8F,X   
       CMP    $B4     
       BCS    LF536   
       LDY    #$00    
LF536: STY    $C1,X   
LF538: LDX    #$17    
       LDA    #$00    
LF53C: STA    $DB,X   
       DEX            
       BPL    LF53C   
       LDA    $A0     
       EOR    #$0F    
       CLC            
       ADC    #$07    
       TAX            
       LDA    $A6     
       STA    $A4     
       LDY    #$07    
LF54F: LDA    ($A4),Y 
       STA    $DB,X   
       DEX            
       DEY            
       BPL    LF54F   
       LDA    $8B     
       BEQ    LF577   
       LDA    $A6     
       CMP    #$88    
       BCS    LF577   
       CMP    #$6A    
       BCC    LF577   
       LDA    $A0     
       CMP    #$08    
       BCS    LF577   
       LDA    #$C3    
       STA    $E3     
       LDA    #$66    
       STA    $E2     
       LDA    #$24    
       STA    $E1     
LF577: LDY    #$F8    
       LDA    $B5     
       AND    #$0F    
       CMP    #$0F    
       BNE    LF589   
       LDY    #$F0    
       LDA    $C6     
       BEQ    LF589   
       LDY    #$E8    
LF589: STY    $B9     
       LDA    #$FA    
       STA    $BA     
       LDA    $8D     
       BNE    LF5C2   
       LDA    REFP1   
       ASL            
       BCS    LF5C2   
       LDA    $BE     
       CMP    #$0F    
       BNE    LF5C2   
       LDA    RSYNC   
       ASL            
       ASL            
       BCC    LF5C2   
       LDX    $A2     
       LDA    $B4     
       CMP    #$44    
       BCS    LF5B6   
       LDA    $A9,X   
       BNE    LF5C2   
       LDA    #$02    
       STA    $A9,X   
       BNE    LF5BE   
LF5B6: LDA    $AE,X   
       BNE    LF5C2   
       LDA    #$02    
       STA    $AE,X   
LF5BE: LDA    #$30    
       STA    $8D     
LF5C2: LDA    $B3     
       AND    #$0F    
       BNE    LF628   
       LDA    $BC     
       CMP    #$70    
       BCC    LF5D4   
       INC    $BC     
       INC    $BC     
       BNE    LF628   
LF5D4: LDA    $BC     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $BC     
       AND    #$10    
       BNE    LF5EF   
       LDA    $BB     
       CLC            
       ADC    #$06    
       STA    $BB     
       CMP    LFCF0,X 
       BCS    LF61F   
       BCC    LF5FB   
LF5EF: LDA    $BB     
       SEC            
       SBC    #$06    
       STA    $BB     
       CMP    LFCEA,X 
       BCC    LF61F   
LF5FB: LDA    $B3     
       AND    #$10    
       BEQ    LF60C   
       LDA    $B3     
       LSR            
       LSR            
       AND    #$0F    
       EOR    #$0F    
       JMP    LF612   
LF60C: LDA    $B3     
       LSR            
       LSR            
       AND    #$0F    
LF612: STA    $A0     
       LDA    $BC     
       AND    #$F0    
       ORA    $A0     
       STA    $BC     
       JMP    LF628   
LF61F: LDA    $BC     
       AND    #$F0    
       CLC            
       ADC    #$10    
       STA    $BC     
LF628: DEC    $CF     
       BNE    LF6A9   
       LDA    $C0     
       STA    $CF     
       LDX    #$03    
LF632: LDA    $C7,X   
       AND    #$20    
       BNE    LF65C   
       LDA    $C1,X   
       BEQ    LF64A   
       LDA    $8F,X   
       SEC            
       SBC    $D0     
       STA    $8F,X   
       CMP    LFCEB,X 
       BCC    LF656   
       BCS    LF65C   
LF64A: LDA    $8F,X   
       CLC            
       ADC    $D0     
       STA    $8F,X   
       CMP    LFCF1,X 
       BCC    LF65C   
LF656: LDA    $C1,X   
       EOR    #$01    
       STA    $C1,X   
LF65C: DEX            
       BPL    LF632   
       LDY    $A2     
       STY    $A0     
       BEQ    LF666   
       DEY            
LF666: STY    $A7     
       DEC    $BF     
       BNE    LF6A9   
       LDA    $C0     
       ASL            
       ASL            
       ASL            
       ADC    #$6F    
       STA    $BF     
       LDX    $A0     
       LDA    $C7,X   
       AND    #$20    
       BNE    LF68F   
       LDA    $8F,X   
       CMP    $B4     
       BCS    LF689   
       INC    $8F,X   
       LDA    #$00    
       BEQ    LF68D   
LF689: DEC    $8F,X   
       LDA    #$01    
LF68D: STA    $C1,X   
LF68F: LDX    $A7     
       LDA    $C7,X   
       AND    #$20    
       BNE    LF6A9   
       LDA    $8F,X   
       CMP    $B4     
       BCS    LF6A3   
       INC    $8F,X   
       LDA    #$00    
       BEQ    LF6A7   
LF6A3: DEC    $8F,X   
       LDA    #$01    
LF6A7: STA    $C1,X   
LF6A9: LDA    $C6     
       BNE    LF6D5   
       LDA    $A6     
       CMP    #$70    
       BCS    LF6D5   
       LDA    VBLANK  
       ASL            
       ASL            
       BCC    LF6D5   
       LDA    #$FF    
       STA    $C6     
       LDX    #$03    
       LDY    #$00    
LF6C1: LDA    $C7,X   
       AND    #$20    
       BEQ    LF6C8   
       INY            
LF6C8: DEX            
       BPL    LF6C1   
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$90    
       STA    $BC     
LF6D5: LDA    COLUP1  
       ASL            
       BCC    LF6FF   
       LDX    $A3     
       LDA    $C7,X   
       AND    #$20    
       BNE    LF6FF   
       LDA    $C6     
       BNE    LF6F3   
       LDA    #$88    
       STA    $A6     
       LDA    #$5F    
       SEC            
       SBC    $B5     
       STA    $CD     
       BNE    LF6FF   
LF6F3: LDA    #$38    
       STA    $C7,X   
       LDA    #$20    
       STA    $CC     
       LDA    #$10    
       STA    $C6     
LF6FF: LDA    #$00    
       LDX    $8B     
       BEQ    LF707   
       LDA    #$80    
LF707: STA    $A0     
       LDX    #$03    
LF70B: LDA.wx $00C7,X 
       AND    #$20    
       BNE    LF730   
       LDY    #$40    
       LDA.wx $008F,X 
       AND    #$08    
       LSR            
       LSR            
       LSR            
       EOR.wx $008F,X 
       AND    #$01    
       BEQ    LF725   
       LDY    #$48    
LF725: TYA            
       ORA    $A0     
LF728: STA    $C7,X   
LF72A: DEX            
       BPL    LF70B   
       JMP    LF73C   
LF730: LDA    $B3     
       AND    #$03    
       BNE    LF72A   
       LDA    $C7,X   
       EOR    #$08    
       BNE    LF728   
LF73C: LDA    SWCHB   
       LSR            
       BCS    LF749   
       LDA    #$4F    
       STA    $B5     
       JMP    LF00B   
LF749: LSR            
       BCS    LF74F   
       JMP    LF00B   
LF74F: LDY    #$FF    
       LSR            
       LSR            
       BCS    LF757   
       LDY    #$0F    
LF757: STY    $98     
       LDA    SWCHB   
       ASL            
       ASL            
       BCS    LF760   
LF760: LDA    $B5     
       BNE    LF79C   
       LDA    $8B     
       CLC            
       ADC    #$01    
       STA    $8B     
       DEC    $C0     
       DEC    $C0     
       LDA    $C0     
       CMP    #$04    
       BCS    LF783   
       LDA    #$08    
       STA    $C0     
       INC    $D0     
       LDA    $D0     
       AND    #$01    
       BEQ    LF783   
       INC    $D1     
LF783: LDA    $8B     
       CMP    #$02    
       JMP    $1832   
LF78A: .byte $31,$F0
LF78C: LDA    #$52    
       STA    $B5     
       LDA    #$21    
       STA    $96     
       LDA    #$00    
       STA    $97     
       LDA    #$50    
       STA    $A6     
LF79C: JMP    LF081   
LF79F: .byte $13,$13,$53,$13,$0F,$11,$0F,$0E,$0C,$13,$53,$17,$1D,$13,$53,$1A
       .byte $1F,$13,$53,$13,$0F,$0E,$4E,$14,$1A,$13,$53,$17,$1D,$13,$53,$1A
       .byte $1F,$1F,$17,$16,$13,$11,$0F,$0E,$0E,$0E,$4E,$0E,$0E,$0F,$0F,$13
       .byte $0F,$0C,$4C,$11,$16,$0E,$4E,$13,$17,$1D,$5D,$1A,$17,$16,$13,$11
       .byte $0F,$0E,$4E,$11,$16,$0E,$4E,$13,$17,$13,$53,$13,$0F,$11,$0F,$0E
       .byte $0C,$13,$53,$17,$1D,$13,$53,$1A,$1F,$13,$53,$13,$0F,$0E,$4E,$14
       .byte $1A,$13,$53,$17,$1D,$13,$53,$1A,$1F,$5F
LF809: STA    COLUPF  
       STA    WSYNC   
       LDA    LFC00,Y 
       STA    PF0     
       LDA    LFC01,Y 
       STA    PF1     
       LDA    LFC02,Y 
       STA    PF2     
       INY            
       INY            
       INY            
       LDA    LFC00,Y 
       STA    PF0     
       LDA    LFC01,Y 
       STA    PF1     
       LDA    LFC02,Y 
       STA    PF2     
       INY            
       INY            
       INY            
       RTS            

LF832: BCC    LF843   
       INC    $80     
       LDA    $80     
       CMP    #$03    
       BCC    LF83F   
       JMP    $178C   
LF83F: LDA    #$00    
       STA    $8B     
LF843: JMP    LF031   
LF846: .byte $FB,$A9,$00,$85,$1B,$85,$1C,$A5,$DA,$D0,$06,$20,$6E,$FD,$4C,$85
       .byte $F2,$A2,$0E,$85,$02,$CA,$10,$FB,$A2,$04,$85,$02,$CA,$10,$FB,$A9
       .byte $00,$85,$09,$E6,$B3,$A5,$B3,$29,$1F,$D0,$22,$A5,$8A,$F0,$1E,$A5
       .byte $96,$D0,$1A,$A9,$01,$85,$A0,$A5,$8B,$C9,$02,$B0,$10,$F8,$A2,$01
       .byte $18,$B5,$9C,$65,$A0,$95,$9C,$CA,$86,$A0,$10,$F5,$D8,$A5,$B5,$29
       .byte $0F,$85,$BE,$A5,$A2,$85,$A3,$A9,$00,$85,$A0,$A4,$96,$F0,$54,$E6
       .byte $97,$A5,$97,$C9,$13,$D0,$33,$A9,$00,$85,$97,$C6,$96,$D0,$20,$A9
       .byte $80,$85,$DA,$A0,$00,$84,$15,$84,$17,$84,$16,$84,$18,$84,$1A,$A5
       .byte $8B,$C9,$02,$90,$29,$A9,$88,$85,$97,$A9,$50,$85,$A6,$D0,$1F,$A4
       .byte $96,$A9,$0C,$85,$15,$B9,$9F,$F7,$85,$17,$A4,$96,$B9,$9F,$F7,$A0
       .byte $06,$C9,$20,$B0,$09,$A5,$97,$4A,$49,$0F,$4A,$29,$0E,$A8,$84,$19
       .byte $4C,$EE,$F3,$A5,$97,$C9,$88,$D0,$03,$4C,$EE,$F3,$20,$28,$FD,$A5
       .byte $8A,$F0,$02,$D0,$03,$4C,$EE,$F3,$A5,$8D,$F0,$10,$C6,$8D,$A9,$0D
       .byte $85,$16,$A9,$06,$85,$1A,$A5,$8D,$49,$1F,$85,$18,$A5,$CD,$D0,$16
       .byte $A5,$BE,$C9,$0F,$F0,$10,$A8,$18,$69,$05,$65,$A2,$85,$17,$A9,$0C
       .byte $85,$15,$98,$4A,$85,$19,$A5,$8C,$F0,$1B,$C6,$8C,$0A,$29,$0F,$4A
       .byte $85,$19,$A9,$0C,$85,$15,$A5,$B8,$29,$03,$AA,$BD,$C3,$FC,$18,$65
       .byte $A2,$65,$A2,$85,$17,$A5,$C6,$F0,$0E,$C6,$C6,$A9,$0C,$85,$15,$A9
       .byte $06,$85,$19,$A5,$C6,$85,$17,$A5,$CC,$F0,$13,$C6,$CC,$A9,$04,$8D
       .byte $16,$00,$A5,$CC,$49,$1F,$8D,$18,$00,$A5,$CC,$4A,$85,$1A,$A5,$CD
       .byte $F0,$3F,$A5,$B3,$29,$01,$F0,$39,$C6,$CD,$D0,$1A,$00,$00,$00,$00
       .byte $00,$00,$15,$98,$4A,$85,$19,$A5,$8C,$F0,$1B,$C6,$8C,$0A,$29,$0F
       .byte $4A,$85,$19,$A9,$0C,$85,$15,$A5,$B8,$29,$03,$AA,$BD,$C3,$FC,$18
       .byte $65,$A2,$65,$A2,$85,$17,$A5,$C6,$F0,$0E,$C6,$C6,$A9,$0C,$85,$15
       .byte $A9,$06,$85,$19,$A5,$C6,$85,$17,$A5,$CC,$F0,$13,$C6,$CC,$A9,$04
       .byte $8D,$16,$00,$A5,$CC,$49,$1F,$8D,$18,$00,$A5,$CC,$4A,$85,$1A,$A5
       .byte $CD,$F0,$3F,$A5,$B3,$29,$01,$F0,$39,$C6,$CD,$D0,$1A,$C6,$8A,$D0
       .byte $04,$A0,$52,$D0,$0C,$A0,$4E,$A9,$00,$85,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFA08: LDA    $B5     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $A2     
       RTS            

LFA11: LDA    $9A,X   
       STA    $9E     
       LDA    $9B,X   
       STA    $9F     
       JSR    LFEB6   
       RTS            

LFA1D: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FC,$C7,$CF,$87,$80,$C0,$00,$00,$FC,$C7,$CF,$87,$80
       .byte $C6,$09,$06,$28,$28,$28,$7E,$18,$66,$99,$24,$24,$24,$5A,$3C,$A5
       .byte $5A,$18,$24,$6E,$6C,$78,$70,$CC,$B2,$31,$78,$6E,$6C,$39,$3A,$A8
       .byte $58,$18,$3C,$EC,$6C,$78,$3C,$F3,$8C,$0C,$1E,$37,$1E,$9C,$7C,$33
       .byte $0D,$0C,$1E,$E0,$3F,$78,$3E,$26,$DA,$19,$3D,$46,$5E,$BE,$7C,$3F
       .byte $DA,$98,$BC,$66,$7E,$3C,$24,$DB,$99,$3C,$00,$3C,$18,$18,$E7,$BD
       .byte $3C,$66,$66,$17,$7B,$4F,$B4,$30,$78,$00,$00,$E7,$7E,$3C,$24,$DB
       .byte $99,$3C,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$28,$EE,$FE,$7C,$D3,$D3,$42,$42,$28,$6C,$7C,$38,$38
       .byte $54,$28,$28,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$0F
LFAF0: .byte $2C,$2C,$B5,$B5,$B5,$0F,$0F,$2C,$2C,$2C,$2C,$2C,$2C,$2C,$2C,$2C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C
       .byte $3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C
       .byte $3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C
       .byte $18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C
       .byte $3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $07,$0F,$1F,$3F,$3F,$7F,$7F,$FF,$FF,$FF,$7F,$3F,$1C,$07,$1F,$3C
       .byte $07,$0F,$1F,$3F,$3F,$7F,$7F,$FF,$FF,$FF,$7F,$3F,$1C,$07,$1F,$3C
       .byte $60,$F0,$F8,$F8,$FC,$FE,$7E,$BF,$BF,$DE,$EE,$FC,$78,$00,$00,$00
       .byte $60,$F0,$F8,$F8,$FC,$FE,$DE,$EF,$EF,$DE,$EE,$FC,$78,$00,$00,$00
       .byte $3E,$FF,$7F,$3F,$1F,$3F,$7F,$FF,$28,$0F,$38,$5F,$77,$7F,$0F,$07
       .byte $1F,$3F,$1F,$0F,$03,$0F,$3F,$FF,$05,$01,$07,$0B,$0E,$0F,$01,$00
       .byte $F8,$FC,$F8,$F0,$C0,$F0,$FC,$FF,$A0,$80,$E0,$D0,$70,$F0,$80,$00
       .byte $7C,$FF,$FE,$FC,$F8,$FC,$FE,$FF,$14,$F0,$1C,$FA,$EE,$FE,$F0,$E0
       .byte $65,$65,$65,$65,$65,$65,$65,$65,$65,$65,$65,$65,$65,$55,$55,$55
       .byte $2C,$65,$65,$65,$65,$65,$65,$65,$65,$2C,$2C,$2C,$2C,$2C,$2C,$2C
LFC00: .byte $00
LFC01: .byte $0F
LFC02: .byte $FF,$FF,$E0,$00,$00,$05,$55,$55,$40,$00,$00,$0F,$FF,$FF,$E0,$00
       .byte $00,$7F,$FF,$FF,$FF,$07,$00,$55,$55,$55,$55,$05,$00,$7F,$FF,$FF
       .byte $FF,$07,$C0,$FF,$FF,$FF,$FC,$00,$40,$55,$55,$55,$54,$00,$C0,$FF
       .byte $FF,$FF,$FC,$00,$FF,$FF
LFC38: LDA    #$20    
       LDX    #$00    
       JSR    LFCFE   
       LDA    #$50    
       LDX    #$01    
       JSR    LFCFE   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$28    
       AND    $98     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $84     
       STA    NUSIZ0  
       LDA    $85     
       STA    NUSIZ1  
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       LDY    #$07    
LFC61: STA    WSYNC   
       STA    WSYNC   
       LDA    LFAF0,Y 
       AND    $98     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($88),Y 
       STA    GRP1    
       DEY            
       BPL    LFC61   
       RTS            

LFC7A: LDA    #$FA    
       STA    $87     
       STA    $89     
       LDY    $8A     
       BEQ    LFC8D   
       DEY            
       CPY    #$04    
       BCS    LFCAC   
       CPY    #$01    
       BCS    LFC9A   
LFC8D: LDA    #$00    
       STA    $84     
       STA    $85     
       STA    $86     
       STA    $88     
       BEQ    LFCBF   
       NOP            
LFC9A: LDA    #$00    
       STA    $88     
       STA    $85     
       DEY            
       LDA    LFCC0,Y 
       STA    $84     
       LDA    #$50    
       STA    $86     
       BNE    LFCBF   
LFCAC: LDA    #$03    
       STA    $84     
       DEY            
       DEY            
       DEY            
       DEY            
       LDA    LFCC0,Y 
       STA    $85     
       LDA    #$50    
       STA    $86     
       STA    $88     
LFCBF: RTS            

LFCC0: .byte $00,$01,$03
LFCC3: .byte $13,$0C,$0F,$0C
LFCC7: .byte $00,$FF,$FF,$55,$AA,$55,$FF,$FF
LFCCF: .byte $00,$12,$24,$12,$24
LFCD4: .byte $07,$05,$06,$07,$05
LFCD9: .byte $09,$08,$0A,$09,$08
LFCDE: .byte $38,$1C,$2C,$38,$1C,$00
LFCE4: .byte $58,$48,$68,$58,$48,$A0
LFCEA: .byte $20
LFCEB: .byte $14,$04,$14,$04,$04
LFCF0: .byte $70
LFCF1: .byte $84,$70,$84,$70,$98
LFCF6: .byte $22,$22,$66,$66,$CC,$CC,$EE,$EE
LFCFE: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA.w  $00A7   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC.w  $00A7   
       CMP    #$0F    
       BCC    LFD18   
       SBC    #$0F    
       INY            
LFD18: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFD22: DEY            
       BPL    LFD22   
       STA    RESP0,X 
       RTS            

LFD28: LDA    #$00    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDF0   
       STA    AUDF1   
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LFD37: LDA    INTIM   
       BNE    LFD37   
       STA    WSYNC   
       STA    VBLANK  
       STA    CXCLR   
       STA    HMCLR   
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENAM0   
       STA    ENAM1   
       RTS            

LFD55: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       RTS            

LFD6E: LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    PF0     
       STA    HMCLR   
       LDA    #$13    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$0F    
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$1E    
       STA    $D3     
       STA    $D5     
       STA    $D7     
       STA    $D9     
       STA    $9B     
       STA    $82     
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$00    
       STA    $D2     
       LDA    #$09    
       STA    $D4     
       LDA    #$12    
       STA    $D6     
       LDA    #$1B    
       STA    $D8     
       LDA    #$24    
       STA    $9A     
       LDA    #$2D    
       STA    $81     
       LDY    #$08    
LFDC4: STY    $A0     
       LDA    ($81),Y 
       STA    $A7     
       STA    WSYNC   
       LDA    ($D2),Y 
       STA    GRP0    
       LDA    ($D4),Y 
       STA    GRP1    
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    ($9A),Y 
       TAX            
       LDA    ($D8),Y 
       LDY    $A7     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $A0     
       DEY            
       BPL    LFDC4   
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       RTS            

LFDF7: .byte $02,$60,$AA,$6A,$48,$34,$16,$08,$06,$00,$97,$94,$94,$94,$F7,$80
       .byte $80,$80,$00,$AA,$AA,$AA,$AA,$BE,$00,$00,$00,$00,$F0,$80,$F0,$90
       .byte $F0,$00,$00,$00,$00,$12,$2A,$2A,$2A,$2A,$00,$02,$00,$00,$E5,$15
       .byte $65,$85,$75,$00,$04,$00,$00,$E9,$29,$29,$29,$EF,$00,$00,$00,$D8
       .byte $C8,$C1,$92,$02,$01,$03,$05,$03,$04,$04,$01,$1E,$6A,$6A,$48,$6A
       .byte $1E,$48,$7C
LFE4A: LDA    #$38    
       LDX    #$00    
       JSR    LFCFE   
       LDA    #$40    
       LDX    #$01    
       JSR    LFCFE   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$01    
       STA    NUSIZ0  
       LDA    #$03    
       STA    NUSIZ1  
       LDA    #$1C    
       AND    $98     
       STA    COLUP1  
       STA    COLUP0  
       LDY    #$07    
       STY    $A0     
       STA    HMCLR   
       LDA    #$FB    
       STA    $9B     
       LDX    $80     
       LDA    $1F10,X 
       STA    $9A     
LFE7D: LDY    $A0     
       LDA    ($9A),Y 
       STA    $A7     
       STA    WSYNC   
       LDA    ($D2),Y 
       STA    GRP0    
       LDA    ($D4),Y 
       STA    GRP1    
       NOP            
       NOP            
       LDA    ($D8),Y 
       TAX            
       NOP            
       NOP            
       NOP            
       LDA    ($D6),Y 
       LDY    $A7     
       STA.w  $001B   
       STX    GRP1    
       NOP            
       STY    GRP1    
       DEC    $A0     
       BPL    LFE7D   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFEAE: .byte $9A,$A9,$00,$CA,$10,$F7,$D8,$60
LFEB6: LDX    #$01    
       LDY    #$04    
LFEBA: LDA    $9E,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $00D2,Y 
       LDA    $9E,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA.wy $00D4,Y 
       LDA    #$FB    
       STA.wy $00D3,Y 
       STA.wy $00D5,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LFEBA   
       LDX    #$00    
LFEE1: LDA    $D2,X   
       CMP    #$08    
       BNE    LFEF1   
       LDA    #$00    
       STA    $D2,X   
       INX            
       INX            
       CPX    #$08    
       BNE    LFEE1   
LFEF1: RTS            

LFEF2: .byte $03,$05,$05,$08,$05,$03,$08,$04,$07,$06,$05,$05,$04,$04,$03,$03
       .byte $02,$01,$03,$04,$05,$01,$04,$02
LFF0A: .byte $17,$1B,$1D,$1F,$FF,$FF
LFF10: .byte $10,$18,$20,$20,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $A5,$8D,$D0,$2F,$A5,$0C,$0A,$B0,$2A,$A5,$BE,$C9,$0F,$D0,$24,$A5
       .byte $03,$0A,$0A,$90,$1E,$A6,$A2,$A5,$B4,$C9,$44,$B0,$0A,$B5,$A9,$D0
       .byte $12,$A9,$02,$95,$A9,$D0,$08,$B5,$AE,$D0,$08,$A9,$02,$95,$AE,$A9
       .byte $30,$85,$8D,$A5,$B3,$29,$0F,$D0,$60,$A5,$BC,$C9,$70,$90,$06,$E6
       .byte $BC,$E6,$BC,$D0,$54,$A5,$BC,$4A,$4A,$4A,$4A,$AA,$A5,$BC,$29,$10
       .byte $D0,$0E,$A5,$BB,$18,$69,$06,$85,$BB,$DD,$F0,$FC,$B0,$32,$90,$0C
       .byte $A5,$BB,$38,$E9,$06,$85,$BB,$DD,$EA,$FC,$90,$24,$A5,$B3,$29,$10
       .byte $F0,$0B,$A5,$B3,$4A,$4A,$29,$0F,$49,$0F,$4C,$12,$F6,$A5,$B3,$4A
       .byte $4A,$29,$0F,$85,$A0,$A5,$BC,$29,$F0,$05,$A0,$85,$BC,$4C,$28,$F6
       .byte $A5,$BC,$29,$F0,$18,$69,$10,$85,$BC,$C6,$CF,$D0,$7D,$A5,$C0,$85
       .byte $CF,$A2,$03,$B5,$C7,$29,$20,$D0,$24,$B5,$C1,$F0,$0E,$B5,$8F,$38
       .byte $E5,$D0,$95,$8F,$DD,$EB,$FC,$90,$0E,$B0,$12,$B5,$8F,$18,$65,$D0
       .byte $95,$8F,$DD,$F1,$FC,$90,$06,$B5,$C1,$49,$01,$95,$C1,$CA,$77,$77
       .byte $77,$77,$77,$77,$77,$77,$77,$84,$09,$00,$00,$4A,$00,$F0,$00,$F0
