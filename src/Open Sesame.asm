; Disassembly of roms/Open Sesame.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Open Sesame.bin
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
       LDA    #$00    
       STA    $B3     
LF00F: LDA    #$0A    
       STA    $BE     
       STA    $CD     
       STA    $BD     
       LDA    #$01    
       STA    $CF     
       STA    $CE     
       LDA    #$00    
       STA    $98     
       STA    $99     
       LDX    #$03    
LF025: STA    $BF,X   
       EOR    #$01    
       DEX            
       BPL    LF025   
       LDA    #$FA    
       STA    $A3     
       LDA    #$04    
       STA    $8A     
LF034: LDA    #$37    
       LDX    #$04    
LF038: STA    $8E,X   
       ADC    #$11    
       DEX            
       BPL    LF038   
       LDX    #$04    
LF041: LDA    #$00    
       STA    $A7,X   
       STA    $AC,X   
       LDA    #$48    
       STA    $C5,X   
       DEX            
       BPL    LF041   
       INX            
       STX    $C9     
       STX    $9B     
       STX    $B1     
       STX    $CB     
       JSR    LFA1B   
       LDA    #$05    
       STA    $9A     
       LDA    #$75    
       STA    $B9     
       LDA    #$07    
       STA    $BA     
       LDA    #$53    
       STA    $B2     
LF06A: JSR    LFE30   
       LDA    #$1C    
       JSR    LFF3F   
       LDA    #$14    
       STA    T1024T  
       STA    WSYNC   
       LDX    #$02    
       JSR    LFA1B   
       LDA    #$5F    
       JSR    LFF3F   
       LDX    #$04    
LF085: STA    WSYNC   
       DEX            
       BPL    LF085   
       LDA    #$42    
       LDX    #$00    
       JSR    LFE06   
       LDA    #$4A    
       LDX    #$01    
       JSR    LFE06   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$08    
       STA    REFP1   
       LDA    #$20    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$74    
       STA    $B4     
       LDA    #$00    
       STA    $9F     
       LDA    #$10    
       STA    CTRLPF  
       STA    HMCLR   
       LDX    #$09    
LF0B6: STA    WSYNC   
       STA    WSYNC   
       LDA    $9B     
       ADC    #$26    
       STA    COLUP0  
       STA    COLUP1  
       LDA    LFA08,X 
       STA    GRP0    
       STA    GRP1    
       DEX            
       BPL    LF0B6   
       LDA    $B9     
       LDX    #$03    
       JSR    LFE06   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $B2     
       LDX    #$01    
       JSR    LFE06   
       LDA    $B5     
       STA    REFP1   
       LDA    #$46    
       STA    COLUP0  
       STA    COLUP1  
       JMP    LF18D   
LF0EF: LDA    #$00    
       STA    $A6     
       CPY    $A0     
       BNE    LF0FB   
       LDA    #$01    
       STA    $A6     
LF0FB: LDY    $9F     
       LDA    LFD9F,Y 
       TAY            
       LDA    $B4     
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    ENABL   
       JSR    LFDCE   
       LDA    #$0F    
       JSR    LFDCE   
       LDA    $B4     
       JSR    LFDCE   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $9F     
       TAY            
       ASL            
       ASL            
       ASL            
       STA    $9E     
       LDA    $B1     
       AND    #$01    
       BEQ    LF136   
       LDX.wy $00AC,Y 
       LDA    LFDA9,Y 
       BNE    LF13C   
LF136: LDA    LFDA4,Y 
       LDX.wy $00A7,Y 
LF13C: TAY            
       STA    WSYNC   
LF13F: DEY            
       BPL    LF13F   
       STA    RESBL   
       STX    ENABL   
       LDX    $9F     
       LDA    $8E,X   
       LDX    #$00    
       JSR    LFE06   
       LDY    #$0F    
LF151: STA    WSYNC   
       STA    HMOVE   
       LDA    $A6     
       BEQ    LF15E   
       LDA.wy $00D8,Y 
       STA    GRP1    
LF15E: CPY    #$08    
       BCS    LF171   
       LDA    ($B7),Y 
       STA    COLUP1  
       LDA    LFDC6,Y 
       EOR    $9E     
       STA    COLUP0  
       LDA    ($A2),Y 
       STA    GRP0    
LF171: TYA            
       AND    #$FC    
       CMP    $BC     
       BNE    LF1CA   
       LDA    #$02    
       AND    $BB     
LF17C: STA    ENAM1   
       STA    HMCLR   
       DEY            
       BPL    LF151   
       STA    WSYNC   
       INC    $9F     
       LDA    #$0F    
       STA    COLUPF  
       STA    ENABL   
LF18D: LDA    #$00    
       STA    ENAM1   
       STA    $BB     
       LDA    $BA     
       CMP    #$70    
       BCS    LF1AA   
       LDA    $BA     
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       SBC    #$01    
       CMP    $9F     
       BNE    LF1AA   
       LDA    #$02    
       STA    $BB     
LF1AA: LDA    $BA     
       AND    #$0C    
       EOR    #$0C    
       STA    $BC     
       LDX    $9F     
       LDA    $C5,X   
       STA    $A2     
       STA    WSYNC   
       CLC            
       LDA    $B4     
       ADC    #$10    
       STA    $B4     
       LDY    $9F     
       CPY    #$05    
       BEQ    LF1CE   
       JMP    LF0EF   
LF1CA: LDA    #$00    
       BEQ    LF17C   
LF1CE: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENABL   
       LDA    #$D3    
       STA    COLUPF  
       LDY    #$07    
LF1DC: LDX    #$0F    
       LDA    LFD97,Y 
       STA    WSYNC   
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       BNE    LF1EF   
       LDX    #$63    
LF1EF: STX    COLUBK  
       DEY            
       BPL    LF1DC   
       LDA    #$00    
       STA    REFP1   
       JSR    LFD4A   
       JSR    LFD05   
       LDX    #$08    
LF200: STA    WSYNC   
       DEX            
       BNE    LF200   
       STX    COLUBK  
       JSR    LFE67   
       INC    $B1     
       BNE    LF22C   
       LDA    $8A     
       BEQ    LF22C   
       LDA    $9A     
       ORA    $9B     
       BEQ    LF22C   
       LDA    #$10    
       STA    $9E     
       SED            
       LDX    #$01    
       SEC            
LF220: LDA    $9A,X   
       SBC    $9E     
       STA    $9A,X   
       DEX            
       STX    $9E     
       BPL    LF220   
       CLD            
LF22C: LDA    $B3     
       AND    #$0F    
       STA    $BC     
       LDA    $A0     
       STA    $A1     
       JSR    LFDF7   
       LDA    #$00    
       STA    COLUBK  
       LDA    $8A     
       BNE    LF244   
       JMP    LF30F   
LF244: LDA    $8C     
       BEQ    LF258   
       DEC    $8C     
       LDA    #$0D    
       STA    AUDC1   
       LDA    #$06    
       STA    AUDV1   
       LDA    $8C     
       EOR    #$1F    
       STA    AUDF1   
LF258: LDA    $CB     
       BNE    LF272   
       LDA    $BC     
       CMP    #$0F    
       BEQ    LF272   
       TAY            
       CLC            
       ADC    #$05    
       ADC    $A0     
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       TYA            
       LSR            
       STA    AUDV0   
LF272: LDA    $8B     
       BEQ    LF291   
       DEC    $8B     
       ASL            
       AND    #$0F    
       LSR            
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    $B6     
       AND    #$03    
       TAX            
       LDA    LFD93,X 
       CLC            
       ADC    $A0     
       ADC    $A0     
       STA    AUDF0   
LF291: LDA    $C4     
       BEQ    LF2A3   
       DEC    $C4     
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$06    
       STA    AUDV0   
       LDA    $C4     
       STA    AUDF0   
LF2A3: LDA    $CA     
       BEQ    LF2BA   
       DEC    $CA     
       LDA    #$04    
       STA.w  $0016   
       LDA    $CA     
       EOR    #$1F    
       STA.w  $0018   
       LDA    $CA     
       LSR            
       STA    AUDV1   
LF2BA: LDA    $CC     
       BEQ    LF2CC   
       DEC    $CC     
       LDA    #$0D    
       STA    AUDC1   
       LDA    #$08    
       STA    AUDV1   
       LDA    $CC     
       STA    AUDF1   
LF2CC: LDA    $CB     
       BEQ    LF30F   
       LDA    $B1     
       AND    #$01    
       BEQ    LF30F   
       DEC    $CB     
       BNE    LF2F4   
       DEC    $8A     
       BNE    LF2E2   
       LDY    #$52    
       BNE    LF2EE   
LF2E2: LDY    #$4E    
       LDA    #$00    
       STA    $9B     
       STA    $B1     
       LDA    #$05    
       STA    $9A     
LF2EE: STY    $B3     
       LDY    #$50    
       STY    $A4     
LF2F4: LDA    $B3     
       LSR            
       AND    #$03    
       TAY            
       LDA    LFBB0,Y 
       ADC.w  $00A0   
       STA    AUDF0   
       LDA    #$06    
       STA    AUDV0   
       LDA    #$04    
       STA    AUDC0   
       INC    $B3     
       JSR    LFA12   
LF30F: LDA    INTIM   
       BNE    LF30F   
       JSR    LFE4E   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$27    
       STA    TIM64T  
       LDA    $BC     
       STA    $9E     
       LDY    $CB     
       BEQ    LF32B   
       JMP    LF42C   
LF32B: CMP    #$0F    
       BNE    LF37D   
       LDX    $A0     
       LDA    $B1     
       AND    #$03    
       BNE    LF37D   
       LDA    REFP1   
       ASL            
       BCC    LF36B   
       LDA    SWCHA   
       ASL            
       ASL            
       BCS    LF355   
       LDA    #$08    
       STA    $B5     
       LDA    $B2     
       CMP    LFDBB,X 
       BCC    LF36B   
       SEC            
       SBC    $CF     
       STA    $B2     
       BNE    LF36B   
LF355: LDA    SWCHA   
       ASL            
       BCS    LF37D   
       LDA    #$00    
       STA    $B5     
       LDA    $B2     
       CMP    LFDC1,X 
       BCS    LF36B   
       CLC            
       ADC    $CF     
       STA    $B2     
LF36B: INC    $B6     
       LDA    $B6     
       AND    #$03    
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$50    
       STA    $A4     
       LDA    #$05    
       STA    $8B     
LF37D: LDA    $B1     
       AND    #$03    
       BNE    LF3EE   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       BCS    LF3BD   
       LDY    $A0     
       LDA    $B2     
       AND    #$FC    
       CMP    LFDAE,Y 
       BNE    LF39E   
       LDA.wy $00A7,Y 
       BEQ    LF3BD   
       BNE    LF3A8   
LF39E: CMP    LFDB4,Y 
       BNE    LF3BD   
       LDA.wy $00AC,Y 
       BEQ    LF3BD   
LF3A8: DEC    $B3     
       BNE    LF3EA   
       LDX    #$09    
       LDA    #$02    
LF3B0: AND    $A7,X   
       DEX            
       BPL    LF3B0   
       CMP    #$02    
       BEQ    LF3EA   
       INC    $B3     
       BNE    LF3EA   
LF3BD: LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       BCS    LF3EE   
       LDY    $A0     
       LDA    $9E     
       CMP    #$0F    
       BNE    LF3CE   
       INY            
LF3CE: LDA    $B2     
       AND    #$FC    
       CMP    LFDAE,Y 
       BNE    LF3DE   
       LDA.wy $00A7,Y 
       BEQ    LF3EE   
       BNE    LF3E8   
LF3DE: CMP    LFDB4,Y 
       BNE    LF3EE   
       LDA.wy $00AC,Y 
       BEQ    LF3EE   
LF3E8: INC    $B3     
LF3EA: LDA    #$00    
       STA    $C4     
LF3EE: LDY    $A0     
       JSR    LFA12   
       LDA    $B3     
       AND    #$0F    
       STA    $9E     
       CMP    #$0F    
       BEQ    LF414   
       CMP    #$06    
       BCC    LF40A   
       AND    #$01    
       ASL            
       ASL            
       ASL            
       ADC    #$70    
       BNE    LF410   
LF40A: LDA    #$06    
       STA    $9E     
       LDA    #$80    
LF410: STA    $A4     
       BNE    LF42C   
LF414: CPY    $A0     
       BEQ    LF42C   
       BCC    LF42C   
       LDA    #$90    
       STA    $A4     
       LDY    #$01    
       LDX    $A0     
       LDA    $8E,X   
       CMP    $B2     
       BCS    LF42A   
       LDY    #$00    
LF42A: STY    $BF,X   
LF42C: LDX    #$17    
       LDA    #$00    
LF430: STA    $D8,X   
       DEX            
       BPL    LF430   
       LDA    $9E     
       EOR    #$0F    
       CLC            
       ADC    #$07    
       TAX            
       LDA    $A4     
       STA    $A2     
       LDY    #$07    
LF443: LDA    ($A2),Y 
       STA    $D8,X   
       DEX            
       DEY            
       BPL    LF443   
       LDY    #$F8    
       LDA    $B3     
       AND    #$0F    
       CMP    #$0F    
       BNE    LF45D   
       LDY    #$F0    
       LDA    $C4     
       BEQ    LF45D   
       LDY    #$E8    
LF45D: STY    $B7     
       LDA    #$FA    
       STA    $B8     
       LDA    $8C     
       BNE    LF49B   
       LDA    REFP1   
       ASL            
       BCS    LF49B   
       LDA    $BC     
       CMP    #$0F    
       BNE    LF49B   
       LDA    RSYNC   
       ASL            
       ASL            
       BCC    LF49B   
       LDX    $A0     
       LDA    $B2     
       CMP    #$44    
       BCS    LF48A   
       LDA    $A7,X   
       BNE    LF49B   
       LDA    #$02    
       STA    $A7,X   
       BNE    LF492   
LF48A: LDA    $AC,X   
       BNE    LF49B   
       LDA    #$02    
       STA    $AC,X   
LF492: LDA    #$30    
       STA    $8C     
       LDA    #$02    
       JSR    LFF9E   
LF49B: LDA    $B1     
       AND    #$0F    
       BNE    LF501   
       LDA    $BA     
       CMP    #$70    
       BCC    LF4AD   
       INC    $BA     
       INC    $BA     
       BNE    LF501   
LF4AD: LDA    $BA     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $BA     
       AND    #$10    
       BNE    LF4C8   
       LDA    $B9     
       CLC            
       ADC    #$06    
       STA    $B9     
       CMP    LFDC0,X 
       BCS    LF4F8   
       BCC    LF4D4   
LF4C8: LDA    $B9     
       SEC            
       SBC    #$06    
       STA    $B9     
       CMP    LFDBA,X 
       BCC    LF4F8   
LF4D4: LDA    $B1     
       AND    #$10    
       BEQ    LF4E5   
       LDA    $B1     
       LSR            
       LSR            
       AND    #$0F    
       EOR    #$0F    
       JMP    LF4EB   
LF4E5: LDA    $B1     
       LSR            
       LSR            
       AND    #$0F    
LF4EB: STA    $9E     
       LDA    $BA     
       AND    #$F0    
       ORA    $9E     
       STA    $BA     
       JMP    LF501   
LF4F8: LDA    $BA     
       AND    #$F0    
       CLC            
       ADC    #$10    
       STA    $BA     
LF501: DEC    $CD     
       BNE    LF582   
       LDA    $BE     
       STA    $CD     
       LDX    #$03    
LF50B: LDA    $C5,X   
       AND    #$20    
       BNE    LF535   
       LDA    $BF,X   
       BEQ    LF523   
       LDA    $8E,X   
       SEC            
       SBC    $CE     
       STA    $8E,X   
       CMP    LFDBB,X 
       BCC    LF52F   
       BCS    LF535   
LF523: LDA    $8E,X   
       CLC            
       ADC    $CE     
       STA    $8E,X   
       CMP    LFDC1,X 
       BCC    LF535   
LF52F: LDA    $BF,X   
       EOR    #$01    
       STA    $BF,X   
LF535: DEX            
       BPL    LF50B   
       LDY    $A0     
       STY    $9E     
       BEQ    LF53F   
       DEY            
LF53F: STY    $A5     
       DEC    $BD     
       BNE    LF582   
       LDA    $BE     
       ASL            
       ASL            
       ASL            
       ADC    #$6F    
       STA    $BD     
       LDX    $9E     
       LDA    $C5,X   
       AND    #$20    
       BNE    LF568   
       LDA    $8E,X   
       CMP    $B2     
       BCS    LF562   
       INC    $8E,X   
       LDA    #$00    
       BEQ    LF566   
LF562: DEC    $8E,X   
       LDA    #$01    
LF566: STA    $BF,X   
LF568: LDX    $A5     
       LDA    $C5,X   
       AND    #$20    
       BNE    LF582   
       LDA    $8E,X   
       CMP    $B2     
       BCS    LF57C   
       INC    $8E,X   
       LDA    #$00    
       BEQ    LF580   
LF57C: DEC    $8E,X   
       LDA    #$01    
LF580: STA    $BF,X   
LF582: LDA    $C4     
       BNE    LF5AD   
       LDA    VBLANK  
       ASL            
       ASL            
       BCC    LF5AD   
       LDA    #$FF    
       STA    $C4     
       LDA    #$05    
       JSR    LFF9E   
       LDX    #$03    
       LDY    #$00    
LF599: LDA    $C5,X   
       AND    #$20    
       BEQ    LF5A0   
       INY            
LF5A0: DEX            
       BPL    LF599   
       TYA            
       ASL            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$90    
       STA    $BA     
LF5AD: LDA    VBLANK  
       ASL            
       BCC    LF5C8   
       LDA    $BA     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       DEX            
       LDA    $C5,X   
       AND    #$20    
       BEQ    LF5C8   
       LDA    #$48    
       STA    $C5,X   
       LDA    #$1F    
       STA    $CC     
LF5C8: LDA    $9A     
       ORA    $9B     
       BEQ    LF5DF   
       LDA    COLUP1  
       ASL            
       BCC    LF5FD   
       LDX    $A1     
       LDA    $C5,X   
       AND    #$20    
       BNE    LF5FD   
       LDA    $C4     
       BNE    LF5EC   
LF5DF: LDA    #$88    
       STA    $A4     
       LDA    #$5F    
       SEC            
       SBC    $B3     
       STA    $CB     
       BNE    LF5FD   
LF5EC: LDA    #$38    
       STA    $C5,X   
       LDA    #$20    
       STA    $CA     
       LDA    #$20    
       JSR    LFF9E   
       LDA    #$10    
       STA    $C4     
LF5FD: JMP    LF950   
LF600: .byte $F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$35,$10,$20,$55,$2A,$25,$2A
       .byte $45,$20,$1A,$1F,$1A,$25,$6A,$10,$20,$10,$1F,$1F,$1A,$15,$1F,$15
       .byte $10,$10,$2F,$20,$25,$20,$1A,$1F,$15,$10,$25,$20,$15,$2F,$15,$10
       .byte $2A,$25,$1A,$2F,$1A,$10,$20,$10,$2F,$3F,$15,$10,$10,$2F,$20,$25
       .byte $20,$1A,$1F,$15,$10,$10,$1F,$1A,$25,$2A,$25,$2A,$2F,$1A,$10,$30
       .byte $1F,$1F,$1F,$2F,$15,$10,$10,$2F,$15,$10,$25,$20,$15,$1F,$10,$10
       .byte $10,$6A,$25,$3A,$1F,$1F,$1A,$30,$15,$1F,$1F,$3F,$10,$10,$10,$1F
       .byte $1A,$40,$10,$10,$2A,$10,$15,$2A,$25,$2A,$55,$1A,$3F,$1A,$30,$15
       .byte $1F,$1F,$1F,$1F,$1F,$10,$20,$1A,$1F,$25,$1F,$1A,$10,$10,$10,$15
       .byte $4A,$75,$7A,$15,$30,$15,$2F,$1F,$2F,$1F,$10,$20,$20,$15,$2A,$F5
       .byte $85,$2A,$15,$20,$25,$10,$15,$4A,$45,$20,$F5,$F5,$F5,$F5,$F5,$F5
       .byte $F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5
       .byte $F5,$F5,$65,$65,$10,$35,$10,$10,$10,$55,$AA,$85,$2A,$65,$10,$10
       .byte $10,$10,$15,$1A,$3F,$1A,$15,$20,$15,$5A,$65,$5A,$65,$20,$10,$15
       .byte $1A,$4F,$1A,$10,$20,$10,$15,$4A,$75,$5A,$45,$10,$10,$10,$10,$10
       .byte $1F,$3F,$1F,$1A,$10,$10,$10,$10,$10,$15,$3A,$85,$4A,$35,$1A,$10
       .byte $10,$10,$10,$10,$1F,$1F,$1F,$1F,$1F,$1F,$10,$20,$20,$10,$4A,$75
       .byte $8A,$15,$10,$10,$10,$10,$10,$1A,$1F,$1F,$1F,$1F,$1F,$15,$10,$10
       .byte $20,$10,$25,$4A,$85,$6A,$10,$20,$10,$10,$15,$1F,$1F,$2F,$1F,$1F
       .byte $15,$40,$20,$25,$3A,$A5,$4A,$15,$10,$30,$10,$15,$1A,$1F,$1F,$2F
       .byte $1F,$25,$10,$10,$40,$25,$5A,$95,$2A,$15,$10,$30,$10,$15,$1A,$5F
       .byte $1A,$25,$60,$35,$4A,$95,$2A,$50,$25,$1A,$4F,$2A,$25,$70,$25,$4A
       .byte $C5,$50,$15,$2A,$3F,$3A,$25,$60,$35,$4A,$B5,$50,$25,$1A,$4F,$2A
       .byte $35,$60,$35,$3A,$C5,$50,$25,$3A,$1F,$3A,$25,$60,$35,$4A,$C5,$40
       .byte $35,$2A,$1F,$4A,$25,$60,$25,$5A,$B5,$40,$35,$6A,$45,$50,$45,$2A
       .byte $D5,$30,$35,$7A,$35,$50,$55,$F5,$25,$10,$45,$6A,$35,$40,$F5,$D5
       .byte $5A,$55,$10,$F5,$F5,$35,$3A,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5
       .byte $F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5
       .byte $F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$D5
       .byte $30,$20,$20,$1A,$5F,$2A,$75,$3A,$15,$10,$10,$20,$10,$15,$1F,$1F
       .byte $1F,$1F,$1F,$1A,$10,$10,$10,$10,$10,$10,$15,$1A,$2F,$2A,$65,$7A
       .byte $10,$20,$20,$10,$1F,$1F,$1F,$1F,$1F,$1F,$15,$10,$10,$10,$10,$10
       .byte $15,$2A,$1F,$2A,$25,$10,$35,$8A,$10,$10,$30,$10,$1A,$1F,$1F,$2F
       .byte $1F,$1F,$10,$10,$20,$10,$10,$15,$4A,$65,$9A,$1F,$10,$20,$20,$10
       .byte $1A,$1F,$3F,$1F,$1A,$10,$30,$10,$10,$15,$5A,$B5,$5A,$10,$30,$10
       .byte $10,$1A,$1F,$1F,$1F,$1F,$1F,$1A,$10,$30,$10,$10,$25,$4A,$C5,$4A
       .byte $10,$10,$30,$10,$15,$1A,$1F,$3F,$1F,$1A,$10,$40,$20,$15,$7A,$F5
       .byte $15,$50,$15,$2A,$3F,$2A,$80,$25,$6A,$F5,$35,$40,$35,$5A,$45,$10
       .byte $95,$F5,$F5,$35,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$85
       .byte $F5,$F5,$F5,$85,$3A,$D5,$10,$65,$3A,$F5,$75,$10,$20,$20,$15,$2A
       .byte $2F,$35,$50,$25,$6A,$85,$6A,$15,$10,$20,$10,$10,$15,$1F,$1F,$2F
       .byte $1F,$1A,$10,$30,$10,$15,$4A,$65,$3A,$75,$5A,$15,$10,$10,$10,$20
       .byte $15,$1F,$1F,$2F,$1F,$1A,$10,$20,$10,$10,$15,$3A,$25,$20,$35,$4A
       .byte $65,$5A,$15,$10,$20,$10,$10,$10,$1A,$1F,$3F,$1A,$15,$10,$20,$10
       .byte $15,$3A,$15,$40,$15,$5A,$25,$10,$A5,$10,$10,$10,$20,$10,$1F,$1F
       .byte $3F,$1A,$15,$10,$20,$10,$45,$30,$35,$4A,$F5,$15,$30,$20,$15,$2F
       .byte $2F,$1F,$1A,$15,$50,$95,$4A,$F5,$30,$35,$6A,$45,$50,$F5,$F5,$65
       .byte $4A,$F5,$55,$2A,$F5,$45,$10,$55,$3A,$F5,$75,$F5,$A5,$5A,$F5,$F5
       .byte $F5,$25,$5A,$F5,$F5,$F5,$75,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$55,$4A
       .byte $F5,$F5,$D5,$40,$25,$6A,$45,$50,$A5,$F5,$A5,$50,$35,$6A,$55,$10
       .byte $75,$3A,$F5,$D5,$30,$35,$5A,$65,$20,$F5,$F5,$95,$30,$35,$5A,$55
       .byte $30,$C5,$F5,$B5,$30,$45,$6A,$F5,$F5,$F5,$A5,$5A,$65,$10,$C5,$F5
       .byte $D5,$30,$45,$5A,$F5,$F5,$F5,$D5,$F5,$F5,$F5,$F5,$F5,$F5,$F5,$FF
LF950: LDX    #$00    
       JSR    LFA1B   
       LDX    #$03    
LF957: LDA.wx $00C5,X 
       AND    #$20    
       BNE    LF979   
       LDY    #$40    
       LDA.wx $008E,X 
       AND    #$08    
       LSR            
       LSR            
       LSR            
       EOR.wx $008E,X 
       AND    #$01    
       BEQ    LF971   
       LDY    #$48    
LF971: STY    $C5,X   
LF973: DEX            
       BPL    LF957   
       JMP    LF986   
LF979: LDA    $B1     
       AND    #$03    
       BNE    LF973   
       LDA    $C5,X   
       EOR    #$08    
       TAY            
       BNE    LF971   
LF986: LDA    SWCHB   
       LSR            
       BCS    LF993   
       LDA    #$4F    
       STA    $B3     
       JMP    LF00F   
LF993: LSR            
       BCS    LF999   
       JMP    LF00F   
LF999: LDY    #$FF    
       LSR            
       LSR            
       BCS    LF9A1   
       LDY    #$0F    
LF9A1: STY    $96     
       LDA    SWCHB   
       ASL            
       ASL            
       BCS    LF9AA   
LF9AA: LDA    $B3     
       BNE    LF9E3   
       JSR    LFDF7   
       JSR    LFC38   
       LDA    $98     
       ORA    $99     
       BEQ    LF9E0   
       SED            
       LDX    #$01    
       CLC            
LF9BE: LDA    $98,X   
       ADC    $9A,X   
       STA    $98,X   
       DEX            
       BPL    LF9BE   
       CLD            
       DEC    $BE     
       DEC    $BE     
       LDA    $BE     
       CMP    #$04    
       BCS    LF9E0   
       LDA    #$08    
       STA    $BE     
       INC    $CE     
       LDA    $CE     
       AND    #$01    
       BEQ    LF9E0   
       INC    $CF     
LF9E0: JMP    LF034   
LF9E3: JMP    LF06A   
LF9E6: .byte $FF,$2F,$15,$10,$10,$2F,$15,$10,$25,$20,$15,$1F,$10,$10,$10,$6A
       .byte $25,$3A,$1F,$1F,$1A,$30,$15,$1F,$1F,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFA08: .byte $CF,$CE,$9C,$39,$7C,$7E,$07,$09,$1C,$08
LFA12: LDA    $B3     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $A0     
       RTS            

LFA1B: LDA    $98,X   
       STA    $9C     
       LDA    $99,X   
       STA    $9D     
       JSR    LFFAD   
       RTS            

LFA27: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$C7,$CF,$87,$80,$C0,$00
       .byte $00,$FC,$C7,$CF,$87,$80,$C6,$09,$06,$28,$28,$28,$7E,$18,$66,$99
       .byte $24,$24,$24,$5A,$3C,$A5,$5A,$18,$24,$6E,$6C,$78,$70,$CC,$B2,$31
       .byte $78,$6E,$6C,$39,$3A,$A8,$58,$18,$3C,$EC,$6C,$78,$3C,$F3,$8C,$0C
       .byte $1E,$37,$1E,$9C,$7C,$33,$0D,$0C,$1E,$E0,$3F,$78,$3E,$26,$DA,$19
       .byte $3D,$46,$5E,$BE,$7C,$3F,$DA,$98,$BC,$66,$7E,$3C,$24,$DB,$99,$3C
       .byte $00,$3C,$18,$18,$E7,$BD,$3C,$66,$66,$17,$7B,$4F,$B4,$30,$78,$00
       .byte $00
LFA98: .byte $00,$FF,$FE,$EE,$DC,$B0,$F0,$C0,$C0,$C1,$C1,$C3,$C2,$C7,$C6,$C0
       .byte $C0,$F0,$B0,$DC,$EE,$FE,$00,$00
LFAB0: .byte $00,$0F,$FC,$AC,$FC,$E4,$FC,$76,$22,$77,$FF,$FF,$49,$FF,$FF,$B6
       .byte $B6,$80,$C0,$60,$C0,$80,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $A0,$65,$A0,$85,$17,$A5,$C4,$F0,$0E,$C6,$C4,$A9,$0C,$85,$15,$A9
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
LFAF0: .byte $4A,$4A,$D6,$D6,$D6,$0F,$0F,$4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFB08: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $11,$14,$17,$14,$0E,$14,$11,$0B,$17,$14,$11,$0E,$14,$11,$0B,$0B
       .byte $05,$0B,$09,$08,$06,$08,$09,$0B,$11,$14,$17,$1A,$11,$14,$17,$1A
       .byte $14,$1A,$17,$1A,$13,$1A,$14,$0E,$1C,$1A,$14,$13,$1A,$14,$0E,$0E
       .byte $13,$0E,$0C,$0B,$08,$0B,$0C,$0E,$14,$1A,$1C,$1E,$14,$1A,$17,$1E
       .byte $03,$05,$05,$08,$05,$03,$08,$04,$07,$06,$05,$05,$04,$04,$03,$03
       .byte $02,$01,$03,$04,$05,$01,$04,$02
LFBB0: .byte $17,$1B,$1D,$1F,$85,$B9,$DD,$BA,$FD,$90,$24,$A5,$B1,$29,$10,$F0
       .byte $0B,$A5,$B1,$4A,$4A,$29,$0F,$49,$0F,$4C,$EB,$F4,$A5,$B1,$4A,$4A
       .byte $29,$0F,$85,$9E,$A5,$BA,$29,$F0,$05,$9E,$85,$BA,$4C,$01,$F5,$A5
       .byte $BA,$29,$F0,$18,$69,$10,$85,$BA,$C6,$CD,$D0,$7D,$A5,$BE,$85,$CD
       .byte $A2,$03,$B5,$C5,$29,$20,$D0,$24,$B5,$BF,$F0,$0E,$00,$00,$00,$00
LFC00: .byte $00
LFC01: .byte $0F
LFC02: .byte $FF,$FF,$E0,$00,$00,$05,$55,$55,$40,$00,$00,$0F,$FF,$FF,$E0,$00
       .byte $00,$7F,$FF,$FF,$FF,$07,$00,$55,$55,$55,$55,$05,$00,$7F,$FF,$FF
       .byte $FF,$07,$C0,$FF,$FF,$FF,$FC,$00,$40,$55,$55,$55,$54,$00,$C0,$FF
       .byte $FF,$FF,$FC,$00,$FF,$FF
LFC38: LDA    #$01    
       STA    CTRLPF  
       LDA    #$F6    
       STA    $81     
       LDA    #$00    
       STA    $80     
       STA    $83     
       LDA    #$01    
       STA    $82     
LFC4A: LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       STA    CXCLR   
       STA    HMCLR   
       LDA    #$00    
       STA    COLUBK  
       STA    PF1     
       STA    PF2     
       LDX    #$04    
       JSR    LFCCA   
       LDX    #$16    
LFC63: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDA    #$2C    
       STA    COLUPF  
       STA    WSYNC   
       LDA    LFA98,X 
       STA    PF1     
       LDA    LFAB0,X 
       STA    PF2     
       STA    WSYNC   
       JSR    LFCDF   
       STA    WSYNC   
       DEX            
       BNE    LFC63   
       LDX    #$27    
       STX    COLUPF  
       JSR    LFCCA   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JSR    LFCDF   
       STA    WSYNC   
       LDA    #$82    
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       JSR    LFCDF   
       LDA    #$82    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       JSR    LFCDF   
       STA    WSYNC   
       LDX    #$0A    
       JSR    LFCCA   
       LDA    $83     
       BNE    LFCC1   
       JMP    LFC4A   
LFCC1: LDA    #$00    
       STA    CTRLPF  
       LDA    #$4F    
       STA    $B3     
       RTS            

LFCCA: STA    WSYNC   
       STA    WSYNC   
       TXA            
       CLC            
       ADC    #$90    
       STA    COLUPF  
       STA    WSYNC   
       JSR    LFCDF   
       STA    WSYNC   
       DEX            
       BNE    LFCCA   
       RTS            

LFCDF: LDA    $83     
       BNE    LFCFF   
       LDY    #$00    
       LDA    ($80),Y 
       CMP    #$FF    
       BEQ    LFD00   
       STA    AUDV0   
       DEC    $82     
       BNE    LFCFF   
       INC    $80     
       BNE    LFCF7   
       INC    $81     
LFCF7: LDA    ($80),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $82     
LFCFF: RTS            

LFD00: LDA    #$FF    
       STA    $83     
       RTS            

LFD05: LDA    #$20    
       LDX    #$00    
       JSR    LFE06   
       LDA    #$50    
       LDX    #$01    
       JSR    LFE06   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$28    
       AND    $96     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $84     
       STA    NUSIZ0  
       LDA    $85     
       STA    NUSIZ1  
       STA    HMCLR   
       LDY    #$07    
LFD2B: STA    WSYNC   
       STA    WSYNC   
       LDA    LFAF0,Y 
       AND    $96     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($88),Y 
       STA    GRP1    
       DEY            
       BPL    LFD2B   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFD4A: LDA    #$FA    
       STA    $87     
       STA    $89     
       LDY    $8A     
       BEQ    LFD5D   
       DEY            
       CPY    #$04    
       BCS    LFD7C   
       CPY    #$01    
       BCS    LFD6A   
LFD5D: LDA    #$00    
       STA    $84     
       STA    $85     
       STA    $86     
       STA    $88     
       BEQ    LFD8F   
       NOP            
LFD6A: LDA    #$00    
       STA    $88     
       STA    $85     
       DEY            
       LDA    LFD90,Y 
       STA    $84     
       LDA    #$50    
       STA    $86     
       BNE    LFD8F   
LFD7C: LDA    #$03    
       STA    $84     
       DEY            
       DEY            
       DEY            
       DEY            
       LDA    LFD90,Y 
       STA    $85     
       LDA    #$50    
       STA    $86     
       STA    $88     
LFD8F: RTS            

LFD90: .byte $00,$01,$03
LFD93: .byte $13,$0C,$0F,$0C
LFD97: .byte $00,$FF,$FF,$55,$AA,$55,$FF,$FF
LFD9F: .byte $00,$12,$24,$12,$24
LFDA4: .byte $07,$05,$06,$07,$05
LFDA9: .byte $09,$08,$0A,$09,$08
LFDAE: .byte $38,$1C,$2C,$38,$1C,$00
LFDB4: .byte $58,$48,$68,$58,$48,$A0
LFDBA: .byte $20
LFDBB: .byte $14,$04,$14,$04,$04
LFDC0: .byte $70
LFDC1: .byte $84,$70,$84,$70,$90
LFDC6: .byte $22,$22,$66,$66,$CC,$CC,$EE,$EE
LFDCE: STA    COLUPF  
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

LFDF7: LDA    #$00    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDF0   
       STA    AUDF1   
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LFE06: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA.w  $00A5   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC.w  $00A5   
       CMP    #$0F    
       BCC    LFE20   
       SBC    #$0F    
       INY            
LFE20: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFE2A: DEY            
       BPL    LFE2A   
       STA    RESP0,X 
       RTS            

LFE30: LDA    INTIM   
       BNE    LFE30   
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

LFE4E: LDA    #$82    
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

LFE67: LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    PF0     
       LDA    #$20    
       LDX    #$00    
       JSR    LFE06   
       LDA    #$28    
       LDX    #$01    
       JSR    LFE06   
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
LFE95: STA    WSYNC   
       LDA    LFEB7,X 
       STA    GRP0    
       LDA    LFEC0,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LFED2,X 
       TAY            
       LDA    LFEC9,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LFE95   
       RTS            

LFEB7: .byte $00,$31,$49,$B5,$A5,$A5,$B5,$49,$31
LFEC0: .byte $00,$D2,$D2,$52,$D2,$92,$D2,$57,$D7
LFEC9: .byte $00,$37,$37,$37,$25,$25,$25,$37,$37
LFED2: .byte $00,$54,$54,$64,$77,$77,$55,$55,$77,$0C,$07,$04,$01,$00,$01,$02
       .byte $03,$04,$03,$02,$01,$38,$18,$0E,$2E,$5A,$4C,$8A,$AA,$6A,$48,$34
       .byte $16,$08,$06,$5D,$74,$82,$6C,$4F,$3D,$38,$48,$5A,$32,$36,$1A,$05
       .byte $24,$12,$44,$64,$5A,$7C,$6A,$86,$3F,$93,$6A,$5F,$44,$1A,$24,$42
       .byte $74,$B3,$DE,$EC,$E2,$86,$70,$52,$6D,$B4,$C6,$C0,$A0,$C6,$E2,$B8
       .byte $64,$38,$22,$44,$88,$54,$78,$A4,$C1,$D8,$C8,$C1,$92,$02,$01,$03
       .byte $05,$03,$04,$04,$01,$1E,$6A,$6A,$48,$6A,$1E,$48,$7C
LFF3F: STA    $9E     
       LDA    #$38    
       LDX    #$00    
       JSR    LFE06   
       LDA    #$40    
       LDX    #$01    
       JSR    LFE06   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDA    $9E     
       AND    $96     
       STA    COLUP1  
       STA    COLUP0  
       LDY    #$07    
       STY    $9E     
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
LFF6D: LDY    $9E     
       LDA    LFB08,Y 
       STA    $A5     
       STA    WSYNC   
       LDA    ($D0),Y 
       STA    GRP0    
       LDA    ($D2),Y 
       STA    GRP1    
       NOP            
       NOP            
       LDA    ($D6),Y 
       TAX            
       NOP            
       NOP            
       NOP            
       LDA    ($D4),Y 
       LDY    $A5     
       STA.w  $001B   
       STX    GRP1    
       STY    GRP0    
       DEC    $9E     
       BPL    LFF6D   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFF9E: LDX    #$01    
       SED            
       CLC            
LFFA2: ADC    $98,X   
       STA    $98,X   
       LDA    #$00    
       DEX            
       BPL    LFFA2   
       CLD            
       RTS            

LFFAD: LDX    #$01    
       LDY    #$04    
LFFB1: LDA    $9C,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $00D0,Y 
       LDA    $9C,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA.wy $00D2,Y 
       LDA    #$FB    
       STA.wy $00D1,Y 
       STA.wy $00D3,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LFFB1   
       LDX    #$00    
LFFD8: LDA    $D0,X   
       CMP    #$08    
       BNE    LFFE8   
       LDA    #$00    
       STA    $D0,X   
       INX            
       INX            
       CPX    #$08    
       BNE    LFFD8   
LFFE8: RTS            

LFFE9: .byte $34,$67,$3C,$6D,$52,$82,$39,$47,$66,$39,$72,$85,$82,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$00,$F0,$00,$F0
