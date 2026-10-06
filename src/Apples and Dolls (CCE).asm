; Disassembly of roms/Apples and Dolls (CCE).bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Apples and Dolls (CCE).bin
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
       STA    $9A     
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
LF081: JSR    LFD35   
       LDA    #$12    
       STA    T1024T  
       LDX    #$04    
LF08B: STA    WSYNC   
       DEX            
       BPL    LF08B   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDX    #$02    
       JSR    LFA11   
       JSR    LFE42   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$42    
       LDX    #$00    
       JSR    LFCFC   
       LDA    $BB     
       LDX    #$03    
       JSR    LFCFC   
       LDA    #$4A    
       LDX    #$01    
       JSR    LFCFC   
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
       LDY    #$38    
       LDX    $8B     
       BEQ    LF0E6   
       LDY    #$68    
       LDA    #$A0    
LF0E6: STY    $B6     
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
       CMP    #$38    
       BEQ    LF0FF   
       LDY    #$F0    
LF0FF: STY    $D6     
       LDY    #$0F    
LF103: STA    WSYNC   
       LDA    ($D2),Y 
       STA    GRP0    
       LDA    ($D4),Y 
       STA    GRP1    
       LDA    ($D6),Y 
       STA    COLUP0  
       STA    COLUP1  
       DEY            
       BPL    LF103   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $B4     
       LDX    #$01    
       JSR    LFCFC   
       LDA    $B7     
       STA    REFP1   
       LDA    #$1C    
       STA    COLUP0  
       STA    COLUP1  
       JMP    LF1D0   
LF132: LDA    #$00    
       STA    $A8     
       CPY    $A2     
       BNE    LF13E   
       LDA    #$01    
       STA    $A8     
LF13E: LDY    $A1     
       LDA    LFCCD,Y 
       TAY            
       LDA    $B6     
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    ENABL   
       JSR    LF7E3   
       LDA    #$0F    
       JSR    LF7E3   
       LDA    $B6     
       JSR    LF7E3   
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
       BEQ    LF179   
       LDX.wy $00AE,Y 
       LDA    LFCD7,Y 
       BNE    LF17F   
LF179: LDA    LFCD2,Y 
       LDX.wy $00A9,Y 
LF17F: TAY            
       STA    WSYNC   
LF182: DEY            
       BPL    LF182   
       STA    RESBL   
       STX    ENABL   
       LDX    $A1     
       LDA    $8F,X   
       LDX    #$00    
       JSR    LFCFC   
       LDY    #$0F    
LF194: STA    WSYNC   
       STA    HMOVE   
       LDA    $A8     
       BEQ    LF1A1   
       LDA.wy $00DB,Y 
       STA    GRP1    
LF1A1: CPY    #$08    
       BCS    LF1B4   
       LDA    ($B9),Y 
       STA    COLUP1  
       LDA    LFCF4,Y 
       EOR    $A0     
       STA    COLUP0  
       LDA    ($A4),Y 
       STA    GRP0    
LF1B4: TYA            
       AND    #$FC    
       CMP    $BE     
       BNE    LF20D   
       LDA    #$02    
       AND    $BD     
LF1BF: STA    ENAM1   
       STA    HMCLR   
       DEY            
       BPL    LF194   
       STA    WSYNC   
       INC    $A1     
       LDA    #$0F    
       STA    COLUPF  
       STA    ENABL   
LF1D0: LDA    #$00    
       STA    ENAM1   
       STA    $BD     
       LDA    $BC     
       CMP    #$70    
       BCS    LF1ED   
       LDA    $BC     
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       SBC    #$01    
       CMP    $A1     
       BNE    LF1ED   
       LDA    #$02    
       STA    $BD     
LF1ED: LDA    $BC     
       AND    #$0C    
       EOR    #$0C    
       STA    $BE     
       LDX    $A1     
       LDA    $C7,X   
       STA    $A4     
       STA    WSYNC   
       CLC            
       LDA    $B6     
       ADC    #$20    
       STA    $B6     
       LDY    $A1     
       CPY    #$05    
       BEQ    LF211   
       JMP    LF132   
LF20D: LDA    #$00    
       BEQ    LF1BF   
LF211: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENABL   
       LDA    #$68    
       STA    COLUPF  
       LDY    #$07    
LF21F: LDX    #$0F    
       LDA    LFCC5,Y 
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STX    COLUBK  
       DEY            
       BPL    LF21F   
       LDY    #$35    
       LDA    $8B     
       BEQ    LF239   
       LDY    #$B8    
LF239: STA    WSYNC   
       STY    COLUBK  
       LDA    #$00    
       STA    REFP1   
       JSR    LFC78   
       LDA    $8B     
       AND    #$01    
       BNE    LF250   
       JSR    LFC38   
       JMP    LF257   
LF250: LDX    #$0D    
LF252: STA    WSYNC   
       DEX            
       BPL    LF252   
LF257: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $DA     
       BNE    LF267   
       JSR    LFD66   
       JMP    LF26E   
LF267: LDX    #$0C    
LF269: STA    WSYNC   
       DEX            
       BPL    LF269   
LF26E: LDA    #$00    
       STA    COLUBK  
       INC    $B3     
       LDA    $B3     
       AND    #$1F    
       BNE    LF29C   
       LDA    $8A     
       BEQ    LF29C   
       LDA    $96     
       BNE    LF29C   
       LDA    #$01    
       STA    $A0     
       LDA    $8B     
       CMP    #$02    
       BCS    LF29C   
       SED            
       LDX    #$01    
       CLC            
LF290: LDA    $9C,X   
       ADC    $A0     
       STA    $9C,X   
       DEX            
       STX    $A0     
       BPL    LF290   
       CLD            
LF29C: LDA    $B5     
       AND    #$0F    
       STA    $BE     
       LDA    $A2     
       STA    $A3     
       LDA    #$00    
       STA    $A0     
       LDY    $96     
       BEQ    LF302   
       INC    $97     
       LDA    $97     
       CMP    #$13    
       BNE    LF2E9   
       LDA    #$00    
       STA    $97     
       DEC    $96     
       BNE    LF2DE   
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
       BCC    LF2FD   
       LDA    #$88    
       STA    $97     
       LDA    #$50    
       STA    $A6     
       BNE    LF2FD   
LF2DE: LDY    $96     
       LDA    #$0C    
       STA    AUDC0   
       LDA    LF779,Y 
       STA    AUDF0   
LF2E9: LDY    $96     
       LDA    LF779,Y 
       LDY    #$06    
       CMP    #$20    
       BCS    LF2FD   
       LDA    $97     
       LSR            
       EOR    #$0F    
       LSR            
       AND    #$0E    
       TAY            
LF2FD: STY    AUDV0   
       JMP    LF3D0   
LF302: LDA    $97     
       CMP    #$88    
       BNE    LF30B   
       JMP    LF3D0   
LF30B: JSR    LFD26   
       LDA    $8A     
       BEQ    LF314   
       BNE    LF317   
LF314: JMP    LF3D0   
LF317: LDA    $8D     
       BEQ    LF32B   
       DEC    $8D     
       LDA    #$0D    
       STA    AUDC1   
       LDA    #$06    
       STA    AUDV1   
       LDA    $8D     
       EOR    #$1F    
       STA    AUDF1   
LF32B: LDA    $CD     
       BNE    LF345   
       LDA    $BE     
       CMP    #$0F    
       BEQ    LF345   
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
LF345: LDA    $8C     
       BEQ    LF364   
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
       LDA    LFCC1,X 
       CLC            
       ADC    $A2     
       ADC    $A2     
       STA    AUDF0   
LF364: LDA    $C6     
       BEQ    LF376   
       DEC    $C6     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$06    
       STA    AUDV0   
       LDA    $C6     
       STA    AUDF0   
LF376: LDA    $CC     
       BEQ    LF38D   
       DEC    $CC     
       LDA    #$04    
       STA.w  $0016   
       LDA    $CC     
       EOR    #$1F    
       STA.w  $0018   
       LDA    $CC     
       LSR            
       STA    AUDV1   
LF38D: LDA    $CD     
       BEQ    LF3D0   
       LDA    $B3     
       AND    #$01    
       BEQ    LF3D0   
       DEC    $CD     
       BNE    LF3B5   
       DEC    $8A     
       BNE    LF3A3   
       LDY    #$52    
       BNE    LF3AF   
LF3A3: LDY    #$4E    
       LDA    #$00    
       STA    $B3     
       STA    $8B     
       LDA    #$88    
       STA    $A0     
LF3AF: STY    $B5     
       LDY    #$50    
       STY    $A6     
LF3B5: LDA    $B5     
       LSR            
       AND    #$03    
       TAY            
       LDA    LFF02,Y 
       ADC.w  $00A2   
       STA    AUDF0   
       LDA    #$06    
       STA    AUDV0   
       LDA    #$04    
       STA    AUDC0   
       INC    $B5     
       JSR    LFA08   
LF3D0: LDA    INTIM   
       BNE    LF3D0   
       JSR    LFD53   
       STA    WSYNC   
       LDA    #$21    
       STA    TIM64T  
       LDA    #$88    
       CMP.w  $00A0   
       BNE    LF3F7   
       LDA    #$0A    
       STA    $C0     
       STA    $CF     
       STA    $BF     
       LDA    #$01    
       STA    $D1     
       STA    $D0     
       JMP    LF031   
LF3F7: LDA    $97     
       CMP    #$88    
       BNE    LF400   
       JMP    LF716   
LF400: LDA    $BE     
       STA    $A0     
       LDA    $96     
       BNE    LF463   
       LDA    $BE     
       LDY    $CD     
       BEQ    LF411   
       JMP    LF512   
LF411: CMP    #$0F    
       BNE    LF463   
       LDX    $A2     
       LDA    $B3     
       AND    #$03    
       BNE    LF463   
       LDA    REFP1   
       ASL            
       BCC    LF451   
       LDA    SWCHA   
       ASL            
       ASL            
       BCS    LF43B   
       LDA    #$08    
       STA    $B7     
       LDA    $B4     
       CMP    LFCE9,X 
       BCC    LF451   
       SEC            
       SBC    $D1     
       STA    $B4     
       BNE    LF451   
LF43B: LDA    SWCHA   
       ASL            
       BCS    LF463   
       LDA    #$00    
       STA    $B7     
       LDA    $B4     
       CMP    LFCEF,X 
       BCS    LF451   
       CLC            
       ADC    $D1     
       STA    $B4     
LF451: INC    $B8     
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
LF463: LDA    $B3     
       AND    #$03    
       BNE    LF4D4   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       BCS    LF4A3   
       LDY    $A2     
       LDA    $B4     
       AND    #$FC    
       CMP    LFCDC,Y 
       BNE    LF484   
       LDA.wy $00A9,Y 
       BEQ    LF4A3   
       BNE    LF48E   
LF484: CMP    LFCE2,Y 
       BNE    LF4A3   
       LDA.wy $00AE,Y 
       BEQ    LF4A3   
LF48E: DEC    $B5     
       BNE    LF4D0   
       LDX    #$09    
       LDA    #$02    
LF496: AND    $A9,X   
       DEX            
       BPL    LF496   
       CMP    #$02    
       BEQ    LF4D0   
       INC    $B5     
       BNE    LF4D0   
LF4A3: LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       BCS    LF4D4   
       LDY    $A2     
       LDA    $A0     
       CMP    #$0F    
       BNE    LF4B4   
       INY            
LF4B4: LDA    $B4     
       AND    #$FC    
       CMP    LFCDC,Y 
       BNE    LF4C4   
       LDA.wy $00A9,Y 
       BEQ    LF4D4   
       BNE    LF4CE   
LF4C4: CMP    LFCE2,Y 
       BNE    LF4D4   
       LDA.wy $00AE,Y 
       BEQ    LF4D4   
LF4CE: INC    $B5     
LF4D0: LDA    #$00    
       STA    $C6     
LF4D4: LDY    $A2     
       JSR    LFA08   
       LDA    $B5     
       AND    #$0F    
       STA    $A0     
       CMP    #$0F    
       BEQ    LF4FA   
       CMP    #$06    
       BCC    LF4F0   
       AND    #$01    
       ASL            
       ASL            
       ASL            
       ADC    #$70    
       BNE    LF4F6   
LF4F0: LDA    #$06    
       STA    $A0     
       LDA    #$80    
LF4F6: STA    $A6     
       BNE    LF512   
LF4FA: CPY    $A2     
       BEQ    LF512   
       BCC    LF512   
       LDA    #$90    
       STA    $A6     
       LDY    #$01    
       LDX    $A2     
       LDA    $8F,X   
       CMP    $B4     
       BCS    LF510   
       LDY    #$00    
LF510: STY    $C1,X   
LF512: LDX    #$17    
       LDA    #$00    
LF516: STA    $DB,X   
       DEX            
       BPL    LF516   
       LDA    $A0     
       EOR    #$0F    
       CLC            
       ADC    #$07    
       TAX            
       LDA    $A6     
       STA    $A4     
       LDY    #$07    
LF529: LDA    ($A4),Y 
       STA    $DB,X   
       DEX            
       DEY            
       BPL    LF529   
       LDA    $8B     
       BEQ    LF551   
       LDA    $A6     
       CMP    #$88    
       BCS    LF551   
       CMP    #$6A    
       BCC    LF551   
       LDA    $A0     
       CMP    #$08    
       BCS    LF551   
       LDA    #$C3    
       STA    $E3     
       LDA    #$66    
       STA    $E2     
       LDA    #$24    
       STA    $E1     
LF551: LDY    #$F8    
       LDA    $B5     
       AND    #$0F    
       CMP    #$0F    
       BNE    LF563   
       LDY    #$F0    
       LDA    $C6     
       BEQ    LF563   
       LDY    #$E8    
LF563: STY    $B9     
       LDA    #$FA    
       STA    $BA     
       LDA    $8D     
       BNE    LF59C   
       LDA    REFP1   
       ASL            
       BCS    LF59C   
       LDA    $BE     
       CMP    #$0F    
       BNE    LF59C   
       LDA    RSYNC   
       ASL            
       ASL            
       BCC    LF59C   
       LDX    $A2     
       LDA    $B4     
       CMP    #$44    
       BCS    LF590   
       LDA    $A9,X   
       BNE    LF59C   
       LDA    #$02    
       STA    $A9,X   
       BNE    LF598   
LF590: LDA    $AE,X   
       BNE    LF59C   
       LDA    #$02    
       STA    $AE,X   
LF598: LDA    #$30    
       STA    $8D     
LF59C: LDA    $B3     
       AND    #$0F    
       BNE    LF602   
       LDA    $BC     
       CMP    #$70    
       BCC    LF5AE   
       INC    $BC     
       INC    $BC     
       BNE    LF602   
LF5AE: LDA    $BC     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $BC     
       AND    #$10    
       BNE    LF5C9   
       LDA    $BB     
       CLC            
       ADC    #$06    
       STA    $BB     
       CMP    LFCEE,X 
       BCS    LF5F9   
       BCC    LF5D5   
LF5C9: LDA    $BB     
       SEC            
       SBC    #$06    
       STA    $BB     
       CMP    LFCE8,X 
       BCC    LF5F9   
LF5D5: LDA    $B3     
       AND    #$10    
       BEQ    LF5E6   
       LDA    $B3     
       LSR            
       LSR            
       AND    #$0F    
       EOR    #$0F    
       JMP    LF5EC   
LF5E6: LDA    $B3     
       LSR            
       LSR            
       AND    #$0F    
LF5EC: STA    $A0     
       LDA    $BC     
       AND    #$F0    
       ORA    $A0     
       STA    $BC     
       JMP    LF602   
LF5F9: LDA    $BC     
       AND    #$F0    
       CLC            
       ADC    #$10    
       STA    $BC     
LF602: DEC    $CF     
       BNE    LF683   
       LDA    $C0     
       STA    $CF     
       LDX    #$03    
LF60C: LDA    $C7,X   
       AND    #$20    
       BNE    LF636   
       LDA    $C1,X   
       BEQ    LF624   
       LDA    $8F,X   
       SEC            
       SBC    $D0     
       STA    $8F,X   
       CMP    LFCE9,X 
       BCC    LF630   
       BCS    LF636   
LF624: LDA    $8F,X   
       CLC            
       ADC    $D0     
       STA    $8F,X   
       CMP    LFCEF,X 
       BCC    LF636   
LF630: LDA    $C1,X   
       EOR    #$01    
       STA    $C1,X   
LF636: DEX            
       BPL    LF60C   
       LDY    $A2     
       STY    $A0     
       BEQ    LF640   
       DEY            
LF640: STY    $A7     
       DEC    $BF     
       BNE    LF683   
       LDA    $C0     
       ASL            
       ASL            
       ASL            
       ADC    #$6F    
       STA    $BF     
       LDX    $A0     
       LDA    $C7,X   
       AND    #$20    
       BNE    LF669   
       LDA    $8F,X   
       CMP    $B4     
       BCS    LF663   
       INC    $8F,X   
       LDA    #$00    
       BEQ    LF667   
LF663: DEC    $8F,X   
       LDA    #$01    
LF667: STA    $C1,X   
LF669: LDX    $A7     
       LDA    $C7,X   
       AND    #$20    
       BNE    LF683   
       LDA    $8F,X   
       CMP    $B4     
       BCS    LF67D   
       INC    $8F,X   
       LDA    #$00    
       BEQ    LF681   
LF67D: DEC    $8F,X   
       LDA    #$01    
LF681: STA    $C1,X   
LF683: LDA    $C6     
       BNE    LF6AF   
       LDA    $A6     
       CMP    #$70    
       BCS    LF6AF   
       LDA    VBLANK  
       ASL            
       ASL            
       BCC    LF6AF   
       LDA    #$FF    
       STA    $C6     
       LDX    #$03    
       LDY    #$00    
LF69B: LDA    $C7,X   
       AND    #$20    
       BEQ    LF6A2   
       INY            
LF6A2: DEX            
       BPL    LF69B   
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$90    
       STA    $BC     
LF6AF: LDA    COLUP1  
       ASL            
       BCC    LF6D9   
       LDX    $A3     
       LDA    $C7,X   
       AND    #$20    
       BNE    LF6D9   
       LDA    $C6     
       BNE    LF6CD   
       LDA    #$88    
       STA    $A6     
       LDA    #$5F    
       SEC            
       SBC    $B5     
       STA    $CD     
       BNE    LF6D9   
LF6CD: LDA    #$38    
       STA    $C7,X   
       LDA    #$20    
       STA    $CC     
       LDA    #$10    
       STA    $C6     
LF6D9: LDA    #$00    
       LDX    $8B     
       BEQ    LF6E1   
       LDA    #$80    
LF6E1: STA    $A0     
       LDX    #$03    
LF6E5: LDA.wx $00C7,X 
       AND    #$20    
       BNE    LF70A   
       LDY    #$40    
       LDA.wx $008F,X 
       AND    #$08    
       LSR            
       LSR            
       LSR            
       EOR.wx $008F,X 
       AND    #$01    
       BEQ    LF6FF   
       LDY    #$48    
LF6FF: TYA            
       ORA    $A0     
LF702: STA    $C7,X   
LF704: DEX            
       BPL    LF6E5   
       JMP    LF716   
LF70A: LDA    $B3     
       AND    #$03    
       BNE    LF704   
       LDA    $C7,X   
       EOR    #$08    
       BNE    LF702   
LF716: LDA    SWCHB   
       LSR            
       BCS    LF723   
       LDA    #$4F    
       STA    $B5     
       JMP    LF00B   
LF723: LSR            
       BCS    LF729   
       JMP    LF00B   
LF729: LDY    #$FF    
       LSR            
       LSR            
       BCS    LF731   
       LDY    #$0F    
LF731: STY    $98     
       LDA    SWCHB   
       ASL            
       ASL            
       BCS    LF73A   
LF73A: LDA    $B5     
       BNE    LF776   
       LDA    $8B     
       CLC            
       ADC    #$01    
       STA    $8B     
       DEC    $C0     
       DEC    $C0     
       LDA    $C0     
       CMP    #$04    
       BCS    LF75D   
       LDA    #$08    
       STA    $C0     
       INC    $D0     
       LDA    $D0     
       AND    #$01    
       BEQ    LF75D   
       INC    $D1     
LF75D: LDA    $8B     
       CMP    #$02    
       BCS    LF766   
       JMP    LF031   
LF766: LDA    #$52    
       STA    $B5     
       LDA    #$21    
       STA    $96     
       LDA    #$00    
       STA    $97     
       LDA    #$50    
       STA    $A6     
LF776: JMP    LF081   
LF779: .byte $13,$13,$53,$13,$0F,$11,$0F,$0E,$0C,$13,$53,$17,$1D,$13,$53,$1A
       .byte $1F,$13,$53,$13,$0F,$0E,$4E,$14,$1A,$13,$53,$17,$1D,$13,$53,$1A
       .byte $1F,$1F,$17,$16,$13,$11,$0F,$0E,$0E,$0E,$4E,$0E,$0E,$0F,$0F,$13
       .byte $0F,$0C,$4C,$11,$16,$0E,$4E,$13,$17,$1D,$5D,$1A,$17,$16,$13,$11
       .byte $0F,$0E,$4E,$11,$16,$0E,$4E,$13,$17,$13,$53,$13,$0F,$11,$0F,$0E
       .byte $0C,$13,$53,$17,$1D,$13,$53,$1A,$1F,$13,$53,$13,$0F,$0E,$4E,$14
       .byte $1A,$13,$53,$17,$1D,$13,$53,$1A,$1F,$5F
LF7E3: STA    COLUPF  
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

LF80C: .byte $8C,$F0,$1B,$C6,$8C,$0A,$29,$0F,$4A,$85,$19,$A9,$0C,$85,$15,$A5
       .byte $B8,$29,$03,$AA,$BD,$C1,$FC,$18,$65,$A2,$65,$A2,$85,$17,$A5,$C6
       .byte $F0,$0E,$C6,$C6,$A9,$0C,$85,$15,$A9,$06,$85,$19,$A5,$C6,$85,$17
       .byte $A5,$CC,$F0,$13,$C6,$CC,$A9,$04,$8D,$16,$00,$A5,$CC,$49,$1F,$8D
       .byte $18,$00,$A5,$CC,$4A,$85,$1A,$A5,$CD,$F0,$3F,$A5,$B3,$29,$01,$F0
       .byte $39,$C6,$CD,$D0,$1A,$C6,$8A,$D0,$04,$A0,$52,$D0,$0C,$A0,$4E,$A9
       .byte $00,$85,$B3,$85,$8B,$A9,$88,$85,$A0,$84,$B5,$A0,$50,$84,$A6,$A5
       .byte $B5,$4A,$29,$03,$A8,$B9,$02,$FF,$6D,$A2,$00,$85,$17,$A9,$06,$85
       .byte $19,$A9,$04,$85,$15,$E6,$B5,$20,$08,$FA,$AD,$84,$02,$D0,$FB,$20
       .byte $53,$FD,$85,$02,$A9,$21,$8D,$96,$02,$A9,$88,$CD,$A0,$00,$D0,$11
       .byte $A9,$0A,$85,$C0,$85,$CF,$85,$BF,$A9,$01,$85,$D1,$85,$D0,$4C,$31
       .byte $F0,$A5,$97,$C9,$88,$D0,$03,$4C,$16,$F7,$A5,$BE,$85,$A0,$A5,$96
       .byte $D0,$5B,$A5,$BE,$A4,$CD,$F0,$03,$4C,$12,$F5,$C9,$0F,$D0,$4E,$A6
       .byte $A2,$A5,$B3,$29,$03,$D0,$46,$A5,$0C,$0A,$90,$2F,$AD,$80,$02,$0A
       .byte $0A,$B0,$12,$A9,$08,$85,$B7,$A5,$B4,$DD,$E9,$FC,$90,$1D,$38,$E5
       .byte $D1,$85,$B4,$D0,$16,$AD,$80,$02,$0A,$B0,$22,$A9,$00,$85,$B7,$A5
       .byte $B4,$DD,$EF,$FC,$B0,$05,$18,$65,$D1,$85,$B4,$E6,$B8,$A5,$B8,$29
       .byte $03,$0A,$0A,$0A,$18,$69,$50,$85,$A6,$A9,$05,$85,$8C,$A5,$B3,$29
       .byte $03,$D0,$6B,$AD,$80,$02,$0A,$0A,$0A,$0A,$B0,$31,$A4,$A2,$A5,$B4
       .byte $29,$FC,$D9,$DC,$FC,$D0,$07,$B9,$A9,$00,$F0,$21,$D0,$0A,$D9,$E2
       .byte $FC,$D0,$1A,$B9,$AE,$00,$F0,$15,$C6,$B5,$D0,$3E,$A2,$09,$A9,$02
       .byte $35,$A9,$CA,$10,$FB,$C9,$02,$F0,$31,$E6,$B5,$D0,$2D,$AD,$80,$02
       .byte $0A,$0A,$0A,$B0,$29,$A4,$A2,$A5,$A0,$C9,$0F,$D0,$01,$C8,$A5,$B4
       .byte $29,$FC,$D9,$DC,$FC,$D0,$07,$B9,$A9,$00,$F0,$12,$D0,$0A,$D9,$E2
       .byte $FC,$D0,$0B,$B9,$AE,$00,$F0,$06,$E6,$B5,$A9,$00,$85,$C6,$A4,$A2
       .byte $20,$08,$FA,$A5,$B5,$29,$0F,$85,$A0,$C9,$0F,$F0,$17,$C9,$06,$90
       .byte $09,$29,$01,$0A,$0A,$0A,$69,$70,$D0,$06,$A9,$06,$85,$A0,$A9,$80
       .byte $85,$A6,$D0,$18,$C4,$A2,$F0,$14,$90,$12,$A9,$90,$85,$A6,$A0,$01
       .byte $A6,$A2,$B5,$8F,$C5,$B4,$B0,$02,$A0,$00,$94,$C1,$A2,$17,$A9,$00
       .byte $95,$DB,$CA,$10,$FB,$A5,$A0,$49,$0F,$18,$69,$07,$AA,$A5,$A6,$85
       .byte $A4,$A0,$07,$B1,$A4,$95,$DB,$CA,$88,$10,$F8,$A5,$8B,$F0,$1C,$A5
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
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
       JSR    LFEAE   
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
LFAF0: .byte $1C,$1C,$76,$76,$76,$0F,$0F,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFB08: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$07,$0F,$1F,$3F,$3F,$7F,$7F,$FF
       .byte $FF,$FF,$7F,$3F,$1C,$07,$1F,$3C,$07,$0F,$1F,$3F,$3F,$7F,$7F,$FF
       .byte $FF,$FF,$7F,$3F,$1C,$07,$1F,$3C,$60,$F0,$F8,$F8,$FC,$FE,$7E,$BF
       .byte $BF,$DE,$EE,$FC,$78,$00,$00,$00,$60,$F0,$F8,$F8,$FC,$FE,$DE,$EF
       .byte $EF,$DE,$EE,$FC,$78,$00,$00,$00,$3E,$FF,$7F,$3F,$1F,$3F,$7F,$FF
       .byte $28,$0F,$38,$5F,$77,$7F,$0F,$07,$1F,$3F,$1F,$0F,$03,$0F,$3F,$FF
       .byte $05,$01,$07,$0B,$0E,$0F,$01,$00,$F8,$FC,$F8,$F0,$C0,$F0,$FC,$FF
       .byte $A0,$80,$E0,$D0,$70,$F0,$80,$00,$7C,$FF,$FE,$FC,$F8,$FC,$FE,$FF
       .byte $14,$F0,$1C,$FA,$EE,$FE,$F0,$E0,$35,$35,$35,$35,$35,$35,$35,$35
       .byte $35,$35,$35,$35,$35,$B8,$B8,$B8,$1C,$35,$35,$35,$35,$35,$35,$35
       .byte $35,$1C,$1C,$1C,$1C,$1C,$1C,$1C
LFC00: .byte $00
LFC01: .byte $0F
LFC02: .byte $FF,$FF,$E0,$00,$00,$05,$55,$55,$40,$00,$00,$0F,$FF,$FF,$E0,$00
       .byte $00,$7F,$FF,$FF,$FF,$07,$00,$55,$55,$55,$55,$05,$00,$7F,$FF,$FF
       .byte $FF,$07,$C0,$FF,$FF,$FF,$FC,$00,$40,$55,$55,$55,$54,$00,$C0,$FF
       .byte $FF,$FF,$FC,$00,$FF,$FF
LFC38: LDA    #$20    
       LDX    #$00    
       JSR    LFCFC   
       LDA    #$50    
       LDX    #$01    
       JSR    LFCFC   
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

LFC78: LDA    #$FA    
       STA    $87     
       STA    $89     
       LDY    $8A     
       BEQ    LFC8B   
       DEY            
       CPY    #$04    
       BCS    LFCAA   
       CPY    #$01    
       BCS    LFC98   
LFC8B: LDA    #$00    
       STA    $84     
       STA    $85     
       STA    $86     
       STA    $88     
       BEQ    LFCBD   
       NOP            
LFC98: LDA    #$00    
       STA    $88     
       STA    $85     
       DEY            
       LDA    LFCBE,Y 
       STA    $84     
       LDA    #$50    
       STA    $86     
       BNE    LFCBD   
LFCAA: LDA    #$03    
       STA    $84     
       DEY            
       DEY            
       DEY            
       DEY            
       LDA    LFCBE,Y 
       STA    $85     
       LDA    #$50    
       STA    $86     
       STA    $88     
LFCBD: RTS            

LFCBE: .byte $00,$01,$03
LFCC1: .byte $13,$0C,$0F,$0C
LFCC5: .byte $00,$FF,$FF,$55,$AA,$55,$FF,$FF
LFCCD: .byte $00,$12,$24,$12,$24
LFCD2: .byte $07,$05,$06,$07,$05
LFCD7: .byte $09,$08,$0A,$09,$08
LFCDC: .byte $38,$1C,$2C,$38,$1C,$00
LFCE2: .byte $58,$48,$68,$58,$48,$A0
LFCE8: .byte $20
LFCE9: .byte $14,$04,$14,$04,$04
LFCEE: .byte $70
LFCEF: .byte $84,$70,$84,$70,$98
LFCF4: .byte $22,$22,$66,$66,$CC,$CC,$EE,$EE
LFCFC: CLC            
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
       BCC    LFD16   
       SBC    #$0F    
       INY            
LFD16: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFD20: DEY            
       BPL    LFD20   
       STA    RESP0,X 
       RTS            

LFD26: LDA    #$00    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDF0   
       STA    AUDF1   
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LFD35: LDA    INTIM   
       BNE    LFD35   
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

LFD53: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       RTS            

LFD66: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    PF0     
       LDA    #$20    
       LDX    #$00    
       JSR    LFCFC   
       LDA    #$28    
       LDX    #$01    
       JSR    LFCFC   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0C    
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$08    
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
LFD98: STA    WSYNC   
       LDA    LFDBA,X 
       STA    GRP0    
       LDA    LFDC3,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LFDD5,X 
       TAY            
       LDA    LFDCC,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LFD98   
       RTS            

LFDBA: .byte $00,$07,$0F,$4C,$AC,$4C,$0C,$0F,$07
LFDC3: .byte $00,$C7,$EF,$EC,$0C,$0C,$EC,$EF,$C7
LFDCC: .byte $00,$C7,$EF,$EC,$0C,$0F,$EC,$EF,$C7
LFDD5: .byte $00,$C0,$E0,$E4,$0A,$E4,$E0,$E0,$C0,$0C,$07,$04,$01,$00,$01,$02
       .byte $03,$04,$03,$02,$01,$38,$18,$0E,$2E,$5A,$4C,$8A,$AA,$6A,$48,$34
       .byte $16,$08,$06,$5D,$74,$82,$6C,$4F,$3D,$38,$48,$5A,$32,$36,$1A,$05
       .byte $24,$12,$44,$64,$5A,$7C,$6A,$86,$3F,$93,$6A,$5F,$44,$1A,$24,$42
       .byte $74,$B3,$DE,$EC,$E2,$86,$70,$52,$6D,$B4,$C6,$C0,$A0,$C6,$E2,$B8
       .byte $64,$38,$22,$44,$88,$54,$78,$A4,$C1,$D8,$C8,$C1,$92,$02,$01,$03
       .byte $05,$03,$04,$04,$01,$1E,$6A,$6A,$48,$6A,$1E,$48,$7C
LFE42: LDA    #$38    
       LDX    #$00    
       JSR    LFCFC   
       LDA    #$40    
       LDX    #$01    
       JSR    LFCFC   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDA    #$1C    
       AND    $98     
       STA    COLUP1  
       STA    COLUP0  
       LDY    #$07    
       STY    $A0     
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
LFE6E: LDY    $A0     
       LDA    LFB08,Y 
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
       STY    GRP0    
       DEC    $A0     
       BPL    LFE6E   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFE9F: .byte $A2,$01,$F8,$18,$75,$9A,$95,$9A,$A9,$00,$CA,$10,$F7,$D8,$60
LFEAE: LDX    #$01    
       LDY    #$04    
LFEB2: LDA    $9E,X   
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
       BPL    LFEB2   
       LDX    #$00    
LFED9: LDA    $D2,X   
       CMP    #$08    
       BNE    LFEE9   
       LDA    #$00    
       STA    $D2,X   
       INX            
       INX            
       CPX    #$08    
       BNE    LFED9   
LFEE9: RTS            

LFEEA: .byte $03,$05,$05,$08,$05,$03,$08,$04,$07,$06,$05,$05,$04,$04,$03,$03
       .byte $02,$01,$03,$04,$05,$01,$04,$02
LFF02: .byte $17,$1B,$1D,$1F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$27,$FF,$FF,$EF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$BF,$FB,$DE,$F7,$FB,$DE,$F7,$FF,$7F,$FF
       .byte $FF,$EF,$03,$DE,$F7,$90,$00,$00,$00,$00,$00,$00,$00,$00,$33,$33
       .byte $33,$33,$33,$33,$33,$33,$33,$33,$38,$F8,$77,$77,$77,$77,$77,$77
       .byte $77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77,$77
       .byte $77,$77,$77,$77,$77,$61,$09,$00,$00,$4A,$00,$F0,$00,$F0
