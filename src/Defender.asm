; Disassembly of roms/Defender.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Defender.bin
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
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXPPMM  =  $37
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
       LDA    #$00    
LF007: STA    WSYNC,X 
       DEX            
       BNE    LF007   
       LDX    #$FF    
       STX    $98     
       STX    $9B     
       JSR    LFD3B   
       JSR    LFD1C   
       STA    $A2     
       JSR    LFD17   
LF01D: JSR    LF08C   
       LDA    $CB     
       BNE    LF037   
       LDA    $B4     
       BNE    LF02E   
       JSR    LF0F0   
       JSR    LF1D6   
LF02E: JSR    LF227   
       JSR    LF2E8   
       JSR    LF33C   
LF037: JSR    LF3EA   
       JSR    LF551   
       JSR    LF5FF   
       JSR    LF628   
       JSR    LF66E   
       JSR    LF45B   
       JSR    LF4A2   
       JMP    LF6C7   
LF04F: LDA    $CB     
       BEQ    LF062   
       INY            
       STY    $E6     
       DEC    $CB     
       LDA    $CB     
       BNE    LF084   
       JSR    LFDC3   
       JSR    LFCE3   
LF062: JSR    LF8AB   
       JSR    LF969   
       JSR    LF9A2   
       JSR    LF9FB   
       JSR    LFA4F   
       LDA    $91     
       BNE    LF07B   
       JSR    LFADD   
       JSR    LFB37   
LF07B: JSR    LFB90   
       JSR    LFC0C   
       JSR    LFC43   
LF084: LDA    INTIM   
       BNE    LF084   
       JMP    LF01D   
LF08C: LDA    #$FF    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$36    
       STA    TIM64T  
       LDY    #$00    
       STY    PF0     
       STY    VSYNC   
       LDX    #$7F    
       STX    VBLANK  
       LDY    $A2     
       LDA.wy $00C2,Y 
       STA    $C0     
       LDA.wy $00C4,Y 
       STA    $C1     
       LDA    $98     
       ASL            
       EOR    $98     
       ASL            
       ASL            
       ROL    $98     
       LDA    $CB     
       BEQ    LF0CD   
       LDA    #$00    
       STA    $BD     
       STA    $BF     
       JSR    LFCAC   
LF0CD: LDA    SWCHA   
       LDY    $A2     
       AND    LFFDD,Y 
       STA    $B3     
       CPY    #$01    
       BNE    LF0E1   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $B3     
LF0E1: LDX    $8D     
       BNE    LF0E7   
       STX    $91     
LF0E7: CMP    #$F0    
       BEQ    LF0EF   
       LDA    #$78    
       STA    $8D     
LF0EF: RTS            

LF0F0: JSR    LFC7B   
       LDA    $CD     
       BMI    LF13A   
       CMP    #$01    
       BEQ    LF16E   
       CMP    #$02    
       BEQ    LF149   
       CMP    #$03    
       BEQ    LF158   
       LDX    $BB     
       LDA    $80,X   
       AND    #$F0    
       BNE    LF148   
       LDA    $80,X   
       AND    #$0F    
       CMP    #$04    
       BNE    LF148   
       LDA    $AA     
       BMI    LF148   
       LDA    $CE     
       BMI    LF148   
       LDA    $A8     
       CMP    $A9     
       BNE    LF148   
       LDA    #$FF    
       STA    $CD     
       STA    $C6     
       STA    $AF     
       LDA    $AC     
       SEC            
       SBC    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C7     
       LDA    $CE     
       STA    $CA     
       STX    $B9     
LF13A: LDA    $A3     
       AND    $93     
       BNE    LF148   
       LDA    $C7     
       CMP    #$17    
       BCC    LF166   
       DEC    $C7     
LF148: RTS            

LF149: CMP    $AF     
       BCS    LF1B8   
       LDA    $A3     
       AND    #$03    
       BNE    LF148   
       DEC    $AF     
       DEC    $C7     
       RTS            

LF158: LDA    $AD     
       CMP    #$1E    
       BNE    LF148   
       STA    $8A     
       LDA    #$05    
       STA    $99     
       BNE    LF1C9   
LF166: INC    $AF     
       LDA    $AF     
       CMP    #$0E    
       BCC    LF148   
LF16E: LDA    $C7     
       LDY    #$01    
       STY    $CD     
       CMP    #$87    
       BCS    LF188   
       LDA    $A3     
       AND    $93     
       BNE    LF148   
       INC    $C7     
       LDA    $C7     
       SEC            
       SBC    #$0C    
       STA    $AF     
       RTS            

LF188: LDX    $B9     
       LDA    #$05    
       STA    $80,X   
LF18E: LDY    $CA     
       LDA    $91     
       BNE    LF1C9   
       LDX    $A2     
       LDA    #$31    
       STA    $8A     
       LDA    $CF,X   
       ORA    LFF12,Y 
       STA    $CF,X   
       CMP    #$FF    
       BNE    LF1C9   
       STA    $CB     
       LDX    #$07    
LF1A9: LDA    $80,X   
       AND    #$0F    
       CMP    #$04    
       BNE    LF1B3   
       INC    $80,X   
LF1B3: DEX            
       BPL    LF1A9   
       BMI    LF1C9   
LF1B8: LDA    $BA     
       CMP    #$32    
       BEQ    LF18E   
       JSR    LFD2F   
       LDA    #$05    
       STA    $9A     
       LDA    #$02    
       STA    $99     
LF1C9: LDA    #$64    
       STA    $CA     
       STA    $B9     
       LDA    #$00    
       STA    $CD     
       STA    $AF     
       RTS            

LF1D6: JSR    LFC7B   
       LDY    $B8     
       LDX    LFF06,Y 
       LDA    $A3     
       AND    $93     
       BNE    LF208   
       LDA    $89     
       BNE    LF208   
       CPY    #$05    
       BEQ    LF1F0   
       CPX    #$00    
       BNE    LF208   
LF1F0: INC    $E3     
       LDA    $B0     
       CMP    $AD     
       BCC    LF1FC   
       DEC    $E3     
       DEC    $E3     
LF1FC: INC    $E0,X   
       LDA    $A5     
       CMP    $A6     
       BCS    LF208   
       DEC    $E0,X   
       DEC    $E0,X   
LF208: INC    $E4     
       LDA    $A3     
       AND    #$07    
       BNE    LF226   
       DEC    $C8     
       DEC    $AE     
       DEC    $E2     
       LDA    $8B     
       BPL    LF21E   
       INC    $C8     
       INC    $C8     
LF21E: LDA    $98     
       BMI    LF226   
       INC    $E2     
       INC    $E2     
LF226: RTS            

LF227: LDA    $91     
       BEQ    LF230   
       LDA    #$01    
       STA    $CC     
       RTS            

LF230: LDX    #$08    
       LDA    $B4     
       BNE    LF226   
LF236: LDA    LFE8E,X 
       CMP    $B3     
       BEQ    LF240   
       DEX            
       BNE    LF236   
LF240: LDA    LFE97,X 
       STA    $93     
       LDA    LFEA0,X 
       TAX            
       CMP    $CC     
       BEQ    LF25F   
       LDA    $A3     
       AND    #$0F    
       BNE    LF261   
       LDA    #$FF    
       STA    $B5     
       CPX    #$00    
       BEQ    LF25F   
       LDA    #$00    
       STA    $E6     
LF25F: STX    $CC     
LF261: LDA    $CD     
       CMP    #$03    
       BNE    LF26F   
       LDA    #$82    
       CMP    $AD     
       BCS    LF26F   
       STA    $AD     
LF26F: LDA    $AD     
       CMP    #$19    
       BNE    LF27B   
       LDA    $A3     
       AND    #$1F    
       BNE    LF2BB   
LF27B: LDY    #$00    
       LDX    $A2     
       LDA    LFEE6,X 
       AND    SWCHB   
       BEQ    LF288   
       INY            
LF288: STY    $94     
       LDA    $A3     
       AND    $94     
       BNE    LF297   
       LDA    $AD     
       CLC            
       ADC    $93     
       STA    $AD     
LF297: LDA    $AD     
       CMP    #$AA    
       BCC    LF2B5   
       LDA    #$AA    
       STA    $AD     
       LDA    #$00    
       STA    $B1     
       STA    $E6     
       LDA    $88     
       BEQ    LF2B5   
       LDA    #$3B    
       STA    $CB     
       LDA    $98     
       STA    $C8     
       STA    $AE     
LF2B5: LDA    $AD     
       BNE    LF2BB   
       INC    $AD     
LF2BB: LDA    $CD     
       CMP    #$03    
       BNE    LF2E7   
       LDA    $CA     
       CMP    $CE     
       BNE    LF2E7   
       LDA    $AD     
       SEC            
       SBC    #$0F    
       STA    $C7     
       STA    $AF     
       LDX    #$05    
       CPX    $8B     
       BEQ    LF2D8   
       LDX    #$01    
LF2D8: STX    $93     
       LDA    $A5     
       CLC            
       ADC    $93     
       STA    $A4     
       LSR            
       CLC            
       ADC    #$58    
       STA    $C6     
LF2E7: RTS            

LF2E8: LDA    $CC     
       STA    $94     
       CMP    #$01    
       BNE    LF2F4   
       LDX    #$05    
       STX    $8B     
LF2F4: CMP    #$FF    
       BNE    LF2FC   
       LDA    #$FB    
       STA    $8B     
LF2FC: LDA    $8B     
       LDX    #$00    
       STX    $89     
       CMP    #$05    
       BNE    LF321   
       STX    REFP0   
       LDA    $B4     
       BNE    LF33B   
       LDA    $A5     
       CMP    #$1F    
       BCC    LF33B   
       LDA    $A3     
       AND    #$01    
       BNE    LF31A   
       DEC    $A5     
LF31A: LDA    #$01    
       STA    $89     
       STA    $94     
       RTS            

LF321: LDY    #$FF    
       STY    REFP0   
       LDA    $B4     
       BNE    LF33B   
       LDA    $A5     
       CMP    #$82    
       BCS    LF33B   
       LDA    $A3     
       AND    #$01    
       BNE    LF337   
       INC    $A5     
LF337: STY    $89     
       STY    $94     
LF33B: RTS            

LF33C: LDA    $B4     
       BNE    LF33B   
       LDA    $8B     
       STA    $95     
       LDA    $89     
       BEQ    LF362   
       LDX    #$05    
       CPX    $95     
       BNE    LF350   
       LDX    #$FF    
LF350: STX    $95     
       LDA    #$00    
       CMP    $B6     
       BEQ    LF362   
       CMP    $CC     
       BEQ    LF370   
       CMP    $B5     
       BEQ    LF362   
       STA    $94     
LF362: LDA    $94     
       BEQ    LF370   
       LDA    $B6     
       CMP    #$30    
       BEQ    LF38C   
       INC    $B6     
       BNE    LF38C   
LF370: LDA    $B6     
       BEQ    LF3C8   
       DEC    $B6     
       LDA    $B6     
       BNE    LF37C   
       STA    $B5     
LF37C: LDA    $94     
       BNE    LF38C   
       LDX    #$01    
       LDA    $95     
       CMP    #$05    
       BEQ    LF38A   
       LDX    #$FF    
LF38A: STX    $94     
LF38C: LDA    $B6     
       BEQ    LF3C8   
       SED            
       CLC            
       ADC    #$0D    
       LSR            
       LSR            
       LSR            
       LSR            
       CLD            
       TAX            
       LDA    $A3     
       AND    LFEB5,X 
       BNE    LF3C8   
       LDA    $94     
       BMI    LF3C9   
       DEC    $C9     
       DEC    $C9     
       DEC    $C8     
       LDA    $CD     
       BMI    LF3B1   
       DEC    $C6     
LF3B1: LDX    #$03    
LF3B3: LSR    $DC,X   
       ROL    $D8,X   
       ROR    $D4,X   
       LDA    $D4,X   
       AND    #$08    
       BEQ    LF3C5   
       LDA    $DC,X   
       ORA    #$80    
       STA    $DC,X   
LF3C5: DEX            
       BPL    LF3B3   
LF3C8: RTS            

LF3C9: INC    $C9     
       INC    $C9     
       INC    $C8     
       LDA    $CD     
       BMI    LF3D5   
       INC    $C6     
LF3D5: LDX    #$03    
LF3D7: CLC            
       ROL    $D4,X   
       ROR    $D8,X   
       ROL    $DC,X   
       BCC    LF3E6   
       LDA    $D4,X   
       ORA    #$10    
       STA    $D4,X   
LF3E6: DEX            
       BPL    LF3D7   
       RTS            

LF3EA: LDA    $91     
       BEQ    LF3F6   
       LDA    $8D     
       BEQ    LF3F6   
       LDA    INPT4   
       BPL    LF3FC   
LF3F6: LDA    SWCHB   
       ROR            
       BCS    LF40C   
LF3FC: LDA    $9B     
       BPL    LF404   
       INC    $9B     
       INC    $9B     
LF404: JSR    LFD3B   
       JSR    LFD1C   
       BEQ    LF444   
LF40C: ROR            
       BCC    LF415   
       LDX    #$01    
       STX    $E7     
       BNE    LF444   
LF415: JSR    LFD17   
       JSR    LFDE3   
       DEC    $E7     
       BPL    LF444   
       LDA    #$2D    
       STA    $E7     
       LDA    $9B     
       BPL    LF429   
       INC    $9B     
LF429: LDA    $9B     
       SED            
       CLC            
       ADC    #$01    
       STA    $9B     
       LDX    #$78    
       STX    $8D     
       LDX    #$00    
       STX    $A3     
       STX    $A2     
       CMP    #$21    
       BCC    LF443   
       LDA    #$01    
       STA    $9B     
LF443: CLD            
LF444: LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    $E8     
       STX    COLUBK  
       LDX    #$05    
       LDA    $A3     
       AND    #$0F    
       BNE    LF458   
       LDX    #$25    
LF458: STX    CTRLPF  
       RTS            

LF45B: LDA    $8D     
       BNE    LF463   
       LDA    #$FF    
       STA    $91     
LF463: LDA    $A3     
       BNE    LF474   
       INC    $8C     
       LDA    $91     
       BNE    LF474   
       DEC    $8D     
       BPL    LF474   
       JSR    LFD17   
LF474: LDA    SWCHB   
       LDY    #$F7    
       LDX    #$0F    
       AND    #$08    
       BEQ    LF481   
       LDX    #$FF    
LF481: LDA    $91     
       BMI    LF487   
       LDY    #$FF    
LF487: AND    $8C     
       STA    $95     
       STX    $96     
       STY    $97     
       LDX    #$06    
LF491: LDA    LFFEF,X 
       EOR    $95     
       AND    $96     
       AND    $97     
       STA    $E8,X   
       DEX            
       BPL    LF491   
       STA    CXCLR   
       RTS            

LF4A2: LDX    #$00    
       LDY    #$00    
       STX    AUDV0   
       LDA    $91     
       BNE    LF503   
       LDA    $CB     
       CMP    #$97    
       BEQ    LF4F8   
       BCC    LF4C5   
       LDY    #$07    
LF4B6: LDA    $98     
       AND    #$07    
       TAX            
       LDA    $E8,X   
       STA.wy $00E8,Y 
       DEY            
       BPL    LF4B6   
       BMI    LF4FA   
LF4C5: LDA    $B4     
       BNE    LF4FC   
       LDA    $CB     
       CMP    #$3C    
       BCS    LF508   
       LDA    $CD     
       BPL    LF4E6   
       LDA    $AF     
       CMP    #$04    
       BCS    LF4E6   
       LDX    #$05    
       LDA    $98     
       AND    #$37    
       TAY            
       LDA    #$0E    
       STA    AUDV0   
       BNE    LF503   
LF4E6: LDA    $8A     
       BEQ    LF520   
       DEC    $8A     
       CMP    #$20    
       BCS    LF4FA   
       CMP    #$1F    
       BNE    LF517   
       STX    $8A     
       BEQ    LF503   
LF4F8: STX    $CB     
LF4FA: LDA    $98     
LF4FC: AND    #$3F    
       TAY            
LF4FF: LDX    #$08    
LF501: STX    AUDV0   
LF503: STX    AUDC0   
       STY    AUDF0   
       RTS            

LF508: LDA    $A3     
       AND    #$2F    
       TAY            
       LDX    #$01    
       LDA    #$0A    
       STA    AUDV0   
       LDA    $D1     
       BEQ    LF503   
LF517: LDA    $A3     
       AND    #$22    
       TAY            
       LDX    #$0E    
       BNE    LF501   
LF520: LDA    $AD     
       CMP    #$AA    
       BNE    LF52A   
       LDA    $CB     
       BNE    LF4FA   
LF52A: LDA    $E5     
       BNE    LF4FA   
       LDA    $CB     
       BNE    LF540   
       LDA    $B3     
       CMP    #$F0    
       BEQ    LF540   
       LDY    #$30    
       LDX    #$08    
       LDA    #$03    
       STA    AUDV0   
LF540: LDA    $E6     
       BEQ    LF549   
       ROL            
       ROL            
       TAY            
       BNE    LF4FF   
LF549: LDA    $B2     
       CMP    #$38    
       BEQ    LF4FA   
       BNE    LF503   
LF551: LDA    $C0     
       BEQ    LF55D   
       LDA    $8D     
       BEQ    LF55D   
       LDA    $91     
       BNE    LF5C8   
LF55D: LDY    $A2     
       LDA    $9A     
       BEQ    LF582   
       TAX            
LF564: LDA    $9D     
       CLC            
       ADC    LFFDB,Y 
       STA    $9D     
       DEX            
       BNE    LF564   
       STX    $9A     
       AND    LFFD9,Y 
       CMP    LFFD5,Y 
       BNE    LF582   
       INC    $99     
       LDA    $9D     
       AND    LFFDD,Y 
       STA    $9D     
LF582: LDA    $99     
       BEQ    LF5FE   
       DEC    $99     
       LDX    #$02    
LF58A: LDA    $9C,X   
       CLC            
       ADC    LFFDB,Y 
       STA    $9C,X   
       AND    LFFD9,Y 
       CMP    LFFD7,Y 
       BNE    LF5A1   
       LDA    $9C,X   
       AND    LFFDF,Y 
       STA    $9C,X   
LF5A1: AND    LFFD9,Y 
       CMP    LFFD5,Y 
       BNE    LF5FE   
       LDA    $9C,X   
       AND    LFFDD,Y 
       STA    $9C,X   
       INX            
       CPX    #$04    
       BNE    LF5B8   
       JSR    LFD25   
LF5B8: CPX    #$06    
       BNE    LF58A   
       DEX            
LF5BD: LDA    $9C,X   
       AND    LFFE1,Y 
       STA    $9C,X   
       DEX            
       BPL    LF5BD   
       RTS            

LF5C8: LDX    #$0A    
       STX    $9D     
       STX    $9C     
       LDY    #$04    
LF5D0: INX            
       STX    $9C,Y   
       DEY            
       BPL    LF5D0   
       LDA    $9B     
       BMI    LF5FE   
       LDA    $C0     
       BEQ    LF5FE   
       JSR    LFE09   
       STA    $9D     
       LDA    $9B     
       LDX    #$01    
       CMP    #$11    
       BCC    LF5EC   
       INX            
LF5EC: STX    $9C     
       AND    #$0F    
       STA    $A0     
       LDA    $9B     
       AND    #$F0    
       BEQ    LF5FE   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $A1     
LF5FE: RTS            

LF5FF: LDA    $A5     
       STA    $95     
       LDA    $B1     
       CMP    #$60    
       BNE    LF610   
       LDA    $A5     
       SEC            
       SBC    $8B     
       STA    $A5     
LF610: LDA    $A3     
       AND    #$1F    
       BEQ    LF627   
       LDA    $E6     
       BEQ    LF627   
       STA    $A5     
       JSR    LFD34   
       LDA    #$6B    
       STA    $B1     
       LDA    #$1F    
       STA    NUSIZ0  
LF627: RTS            

LF628: LDA    $D1     
       BEQ    LF66D   
       LDA    $CB     
       CMP    #$01    
       BEQ    LF66D   
       LDA    #$64    
       STA    $B0     
       LDA    #$5D    
       STA    $AD     
       LDX    #$46    
       LDA    $A3     
       AND    #$01    
       BNE    LF644   
       LDX    #$4E    
LF644: STX    $A5     
       STX    $A6     
       LDA    $EC     
       STA    $8E     
       LDA    $E8     
       STA    $8F     
       LDA    #$52    
       STA    $B1     
       LDA    $D2     
       CPX    #$4E    
       BEQ    LF665   
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF665   
       LDA    #$85    
       STA    $B2     
       RTS            

LF665: AND    #$0F    
       TAX            
       LDA    LFEBA,X 
       STA    $B2     
LF66D: RTS            

LF66E: LDA    #$80    
       CMP    $B0     
       BCS    LF676   
       STA    $B0     
LF676: LDX    #$04    
       LDA    $A4     
       BEQ    LF68A   
       STA    $A7     
       LDY    #$FF    
       LDA    $CA     
       CMP    $CE     
       BNE    LF688   
       LDY    $AF     
LF688: STY    $AB     
LF68A: LDY    #$00    
       LDA    $A5,X   
       CMP    #$52    
       BCC    LF696   
       SBC    #$4B    
       LDY    #$05    
LF696: CPX    #$02    
       ADC    #$02    
LF69A: INY            
       SBC    #$0F    
       BCS    LF69A   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LF6AB: DEY            
       BPL    LF6AB   
       STA    RESP0,X 
       DEX            
       BPL    LF68A   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$05    
LF6B9: DEY            
       BPL    LF6B9   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $95     
       STA    $A5     
       RTS            

LF6C7: LDY    #$00    
       LDX    #$00    
LF6CB: LDA    $9C,X   
       STX    $93     
       LDX    $A2     
       BEQ    LF6D7   
       LSR            
       LSR            
       LSR            
       LSR            
LF6D7: AND    #$0F    
       LDX    $93     
       STA    $94     
       ASL            
       ASL            
       ASL            
       SEC            
       SBC    $94     
       CLC            
       ADC    #$5F    
       STA.wy $00EF,Y 
       LDA    #$FF    
       STA.wy $00F0,Y 
       INY            
       INY            
       INX            
       CPX    #$06    
       BNE    LF6CB   
LF6F5: LDA    INTIM   
       BNE    LF6F5   
       STA    WSYNC   
       STA    VBLANK  
       INC    $A3     
       LDA    $90     
       STA    COLUP1  
       LDA    $D2     
       AND    #$03    
       TAX            
       LDA    $EB,X   
       STA    WSYNC   
       STA    COLUPF  
       LDA    #$FF    
       STA    PF2     
       LDA    #$01    
       STA    PF1     
       LDY    #$0B    
LF719: LDX    #$00    
       STA    WSYNC   
       LDA    LFEA9,Y 
       STA    PF2     
       CPY    $AA     
       BNE    LF727   
       DEX            
LF727: STX    ENABL   
       STA    WSYNC   
       LDX    #$00    
       CPY    $AC     
       BNE    LF732   
       DEX            
LF732: STX    ENAM1   
       DEY            
       BPL    LF719   
       STA    WSYNC   
       INY            
       STY    ENAM0   
       STY    ENABL   
       DEY            
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDY    #$0F    
       LDX    $A2     
       LDA    $CF,X   
       LDX    $E9     
       CMP    #$FF    
       BNE    LF755   
       LDY    #$00    
       LDX    $E8     
LF755: STY    $97     
       STX    $96     
       LDA    $8F     
       STA    COLUP0  
       LDA    $8E     
       STA    COLUP1  
       LDA    #$F0    
       STA    CTRLPF  
       LDY    #$84    
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
LF771: LDA    #$00    
       CPY    $B0     
       BCS    LF780   
       LDX    $B2     
       LDA    LFF26,X 
       BEQ    LF780   
       DEC    $B2     
LF780: CPY    $AD     
       LDX    $B1     
       STA    WSYNC   
       STA    GRP1    
       BCS    LF795   
       LDA    LFE1A,X 
       CMP    #$F0    
       BEQ    LF795   
       STA    GRP0    
       DEC    $B1     
LF795: LDX    #$01    
       TYA            
       SBC    $AB     
       AND    $92     
       BNE    LF79F   
       INX            
LF79F: STX    ENAM0   
       DEY            
       CPY    $97     
       BNE    LF771   
       LDA    $96     
       STA    COLUPF  
       LDX    #$00    
       STX    GRP0    
LF7AE: TYA            
       LSR            
       LSR            
       STA    WSYNC   
       TAX            
       LDA    $D4,X   
       STA    PF0     
       LDA    $D8,X   
       STA    PF1     
       LDA    $DC,X   
       STA    PF2     
       STX    $93     
       LDX    #$01    
       TYA            
       SBC    $AB     
       AND    $92     
       BNE    LF7CC   
       INX            
LF7CC: STX    ENAM0   
       LDX    $93     
       DEY            
       BPL    LF7AE   
       STA    WSYNC   
       LDA    #$00    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       LDX    #$01    
       STX    CTRLPF  
       LDY    $EE     
       STA    WSYNC   
       STY    COLUBK  
       STA    ENAM0   
       STA    GRP1    
       STY    COLUP1  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    REFP0   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       STX    VDELP0  
       STX    VDELP1  
       STY    $93     
       STY    WSYNC   
LF805: DEY            
       BPL    LF805   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$FE    
       LDA    $E8     
       STA    COLUPF  
       STA    WSYNC   
       STY    PF2     
       LDX    $EC     
       STX    COLUP0  
       STX    COLUP1  
LF825: LDY    $93     
       LDA    ($F9),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($F7),Y 
       STA    GRP1    
       LDA    ($F5),Y 
       STA    GRP0    
       LDA    ($F3),Y 
       STA    $94     
       LDA    ($F1),Y 
       TAX            
       LDA    ($EF),Y 
       TAY            
       LDA    $94     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $93     
       BPL    LF825   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    HMP0    
       STA    WSYNC   
       STA    PF2     
       LDA    $EA     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$08    
       STA    RESP0   
LF867: DEY            
       BNE    LF867   
       STA    RESP1   
       INY            
       STA    WSYNC   
LF86F: LDX    #$03    
       LDA.wy $00C0,Y 
       CMP    #$03    
       BCS    LF879   
       TAX            
LF879: LDA    LFEDE,X 
       STA.wy $0004,Y 
       LDA    LFEE2,X 
       STA.wy $0096,Y 
       DEY            
       BPL    LF86F   
       LDX    #$0B    
       LDY    #$05    
LF88C: STA    WSYNC   
       LDA    LFE1A,X 
       AND    $96     
       STA    GRP0    
       LDA    LFE83,Y 
       AND    $97     
       STA    GRP1    
       DEX            
       DEY            
       BPL    LF88C   
       LDA    #$26    
       STA    TIM64T  
       LDX    #$FF    
       TXS            
       JMP    LF04F   
LF8AB: INC    $BB     
       LDA    $BB     
       AND    #$07    
       STA    $BB     
       TAX            
       JSR    LFCA0   
       STA    $93     
       INY            
       LDA    $80,X   
       AND    #$F0    
       BEQ    LF8C2   
       LDY    #$00    
LF8C2: LDA.wy $00E8,Y 
       STA    $90     
       LDY    $93     
       LDA    $CD     
       BEQ    LF8D6   
       CPX    $B9     
       BNE    LF8D6   
       LDA    $C6     
       JMP    LF8D9   
LF8D6: JSR    LFCB5   
LF8D9: LSR            
       LSR            
       CLC            
       ADC    #$2F    
       STA    $A8     
       LDA    $CD     
       BEQ    LF8ED   
       CPX    $B9     
       BNE    LF8ED   
       LDA    $C7     
       JMP    LF8F0   
LF8ED: JSR    LFCCA   
LF8F0: LSR            
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$02    
       STA    $AC     
       LDY    $A2     
       LDA    #$FF    
       STA    $AA     
       CMP.wy $00CF,Y 
       BEQ    LF949   
       INC    $CE     
       LDA    $CE     
       CMP    #$05    
       BCC    LF910   
       LDA    #$00    
       STA    $CE     
LF910: TAX            
       LDA.wy $00CF,Y 
       AND    LFF12,X 
       BNE    LF949   
       LDA    $C9     
       CLC            
       ADC    LFEF2,X 
       LSR            
       LSR            
       CLC            
       ADC    #$30    
       STA    $A9     
       LDA    #$01    
       STA    $AA     
       LDA    $CD     
       BEQ    LF949   
       LDA    $CA     
       CMP    $CE     
       BNE    LF949   
       LDA    $CD     
       BMI    LF949   
       LDA    $C7     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $AA     
       LDA    $C6     
       LSR            
       LSR            
       CLC            
       ADC    #$30    
       STA    $A9     
LF949: LDA    $A3     
       AND    #$0F    
       BNE    LF968   
       LDA    #$FF    
       STA    $CE     
       LDA    $AD     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $AA     
       LDA    $A5     
       LSR            
       CLC            
       ADC    #$58    
       LSR            
       LSR            
       CLC            
       ADC    #$2F    
       STA    $A9     
LF968: RTS            

LF969: LDA    #$00    
       STA    $A4     
       LDY    $A2     
       LDA.wy $00CF,Y 
       CMP    #$FF    
       BEQ    LF9A1   
       AND    LFF12,X 
       BNE    LF9A1   
       LDA    $C9     
       CLC            
       ADC    LFEF2,X 
       CPX    $CA     
       BNE    LF98D   
       LDY    $CD     
       BPL    LF98B   
       STA    $C6     
LF98B: LDA    $C6     
LF98D: CMP    #$59    
       BCC    LF9A1   
       CMP    #$A8    
       BCS    LF9A1   
       SEC            
       SBC    #$58    
       STA    $94     
       CLC            
       ADC    $94     
       ADC    #$02    
       STA    $A4     
LF9A1: RTS            

LF9A2: LDY    #$07    
       STY    $94     
       LDA    $A6     
       STA    $95     
       LDA    $B7     
       STA    $96     
       LDA    $B0     
       STA    $97     
LF9B2: INC    $B7     
       LDA    $B7     
       AND    #$07    
       STA    $B7     
       TAX            
       LDA    $80,X   
       BMI    LF9D3   
       AND    #$0F    
       TAY            
       JSR    LFCB5   
       CPX    $B9     
       BNE    LF9CB   
       LDA    $C6     
LF9CB: CMP    #$59    
       BCC    LF9D3   
       CMP    #$A5    
       BCC    LF9E0   
LF9D3: DEC    $94     
       BPL    LF9B2   
       LDA    #$FF    
       STA    $B7     
       LDA    #$00    
       STA    $A6     
       RTS            

LF9E0: JSR    LFCCA   
       CPX    $B9     
       BNE    LF9E9   
       LDA    $C7     
LF9E9: STA    $B0     
       JSR    LFCB5   
       CPX    $B9     
       BNE    LF9F4   
       LDA    $C6     
LF9F4: SEC            
       SBC    #$58    
       ASL            
       STA    $A6     
       RTS            

LF9FB: JSR    LFDEE   
       LDX    $B7     
       BMI    LFA4E   
       STY    $B8     
       INY            
       LDA.wy $00E8,Y 
       STA    $8E     
       DEY            
       LDA    LFF20,Y 
       STA    $B2     
       LDA    $CD     
       CMP    #$03    
       BNE    LFA24   
       LDA    #$25    
       CMP    $D2     
       BNE    LFA24   
       CMP    $AD     
       BCC    LFA24   
       LDA    #$AE    
       STA    $B2     
LFA24: LDA    $80,X   
       AND    #$10    
       BEQ    LFA4E   
       LDA    #$38    
       STA    $B2     
       CPX    $B9     
       BNE    LFA34   
       STA    $B9     
LFA34: JSR    LFCA0   
       LDA    #$80    
       STA    $80,X   
       CPY    #$02    
       BNE    LFA4E   
       LDA    $E5     
       BNE    LFA4E   
       INY            
       STY    $80,X   
       STA    $B2     
       LDA    $80     
       BPL    LFA4E   
       STY    $80     
LFA4E: RTS            

LFA4F: LDA    $91     
       BNE    LFABF   
       LDA    $B4     
       BNE    LFA90   
       STA    $93     
       LDA    $E6     
       BNE    LFA4E   
       LDA    CXM0P   
       AND    #$40    
       BEQ    LFA7E   
       LDX    $92     
       CPX    #$FC    
       BNE    LFA7C   
       STA    $B9     
       LDX    $CD     
       CPX    #$02    
       BNE    LFA7C   
       INC    $CD     
       LDX    #$05    
       STX    $99     
       JSR    LFD2F   
       LDA    #$00    
LFA7C: STA    $93     
LFA7E: LDA    CXPPMM  
       BPL    LFA84   
       STA    $93     
LFA84: LDA    $93     
       BEQ    LFA90   
       LDA    #$00    
       STA    $B6     
       LDA    #$1E    
       STA    $B4     
LFA90: LDY    $B4     
       BEQ    LFADC   
       LDA    $A3     
       AND    #$03    
       BNE    LFA9C   
       DEC    $B4     
LFA9C: JSR    LFD34   
       CPY    #$05    
       BCS    LFADC   
       LDA    LFE89,Y 
       STA    $B1     
       LDA    $B4     
       BNE    LFADC   
       JSR    LF1C9   
       LDA    #$32    
       STA    $CB     
       JSR    LFCAC   
       LDX    $A2     
       DEC    $C2,X   
       BNE    LFABF   
       JSR    LFCEB   
LFABF: LDA    $C2     
       BNE    LFADC   
       LDA    $9B     
       CMP    #$11    
       BCC    LFAD9   
       LDA    $C3     
       BNE    LFADC   
       LDA    $A3     
       AND    #$1F    
       BNE    LFAD9   
       LDA    $A2     
       EOR    #$01    
       STA    $A2     
LFAD9: JSR    LFD17   
LFADC: RTS            

LFADD: LDX    $96     
       LDA    $B2     
       CMP    #$38    
       BEQ    LFB36   
       LDA    $80,X   
       BMI    LFAED   
       LDA    CXPPMM  
       BMI    LFB02   
LFAED: LDA    $E5     
       BEQ    LFB36   
       LDA    $99     
       BNE    LFB36   
       LDX    $B7     
       BPL    LFB02   
       LDX    $A2     
       DEC    $C4,X   
       LDA    #$00    
       STA    $E5     
       RTS            

LFB02: JSR    LFCA0   
       LDA    #$00    
       STA    $E6     
       LDA    LFEFA,Y 
       STA    $9A     
       LDA    LFF00,Y 
       STA    $99     
       LDA    $80,X   
       ORA    #$10    
       STA    $80,X   
       CPX    $B9     
       BNE    LFB36   
       LDA    $CD     
       BPL    LFB28   
       LDA    $AF     
       BPL    LFB28   
       INC    $CD     
       RTS            

LFB28: LDA    #$02    
       STA    $CD     
       STA    $BA     
       LDA    #$32    
       CMP    $C7     
       BCS    LFB36   
       STA    $BA     
LFB36: RTS            

LFB37: LDA    $B4     
       BNE    LFB8F   
       LDX    $A2     
       LDA    INPT4,X 
       BPL    LFB4A   
       LDA    #$00    
       STA    $88     
LFB45: LDA    $E6     
       BNE    LFB69   
       RTS            

LFB4A: LDA    $88     
       BNE    LFB45   
       JSR    LFD1C   
       DEC    $88     
       LDA    #$14    
       CMP    $AD     
       BCS    LFB83   
       LDA    $A5     
       SEC            
       SBC    #$02    
       STA    $E6     
       LDX    $8B     
       BPL    LFB69   
       SEC            
       SBC    #$17    
       STA    $E6     
LFB69: LDX    #$07    
       LDA    $8B     
       BPL    LFB71   
       LDX    #$F9    
LFB71: TXA            
       CLC            
       ADC    $E6     
       TAX            
       CMP    #$82    
       BCS    LFB7E   
       CMP    #$00    
       BCS    LFB80   
LFB7E: LDX    #$00    
LFB80: STX    $E6     
       RTS            

LFB83: LDA    $C1     
       BEQ    LFB8F   
       LDA    #$FF    
       CMP    $B7     
       BEQ    LFB8F   
       STA    $E5     
LFB8F: RTS            

LFB90: LDX    #$A0    
       LDY    #$00    
       LDA    #$FC    
       STA    $92     
       LDA    $A4     
       BNE    LFC07   
       LDA    $BF     
       BNE    LFBD2   
       LDA    $B7     
       BMI    LFC07   
       LDY    $B8     
       CPY    #$02    
       BEQ    LFC07   
       LDX    #$01    
       LDA    $B0     
       STA    $BC     
       CMP    $AD     
       BCC    LFBB6   
       LDX    #$FF    
LFBB6: STX    $BE     
       LDA    $8A     
       BNE    LFBBE   
       INC    $8A     
LFBBE: LDA    $A6     
       STA    $BD     
       CMP    $A5     
       BCC    LFBC8   
       LDX    #$FE    
LFBC8: STX    $BF     
       CPY    #$00    
       BNE    LFBD2   
       LDA    #$F0    
       STA    $BF     
LFBD2: LDX    $BC     
       LDY    $BD     
       CMP    #$F0    
       BNE    LFBE2   
       LDA    $A3     
       AND    #$5A    
       BEQ    LFBFD   
       BNE    LFC03   
LFBE2: TXA            
       CLC            
       ADC    $BE     
       STA    $BC     
       CMP    #$0F    
       BCC    LFBFD   
       TAX            
       LDA    $BD     
       CLC            
       ADC    $BF     
       STA    $BD     
       TAY            
       LDA    $B4     
       BNE    LFBFD   
       CPY    #$A0    
       BCC    LFC03   
LFBFD: LDY    #$00    
       STY    $BF     
       LDX    #$A0    
LFC03: LDA    #$FE    
       STA    $92     
LFC07: STX    $AB     
       STY    $A7     
       RTS            

LFC0C: LDX    #$07    
LFC0E: LDA    $80,X   
       BPL    LFC42   
       DEX            
       BPL    LFC0E   
       LDA    #$00    
       TAY            
       CLC            
       ADC    $9A     
       ADC    $99     
       ADC    $B4     
       BNE    LFC42   
       LDX    $A2     
       LDA    $CF,X   
       LDX    #$07    
LFC27: ROR            
       BCS    LFC2B   
       INY            
LFC2B: DEX            
       BPL    LFC27   
       STY    $99     
       LDA    #$96    
       STA    $CB     
       STA    $D1     
       STA    $B9     
       LDA    $E5     
       BEQ    LFC42   
       LDX    $A2     
       DEC    $C4,X   
       INC    $E5     
LFC42: RTS            

LFC43: LDA    $D3     
       BEQ    LFC7A   
       LDA    $98     
       AND    #$07    
       TAX            
       CPX    $B9     
       BEQ    LFC7A   
       LDA    $80,X   
       BPL    LFC7A   
       LDY    $A2     
       LDA.wy $00CF,Y 
       CMP    #$FF    
       BNE    LFC61   
       LDY    #$05    
       BNE    LFC6B   
LFC61: LDY    #$04    
       LDA    $A3     
       AND    #$1F    
       BNE    LFC6B   
       LDY    #$01    
LFC6B: JSR    LFCB5   
       CMP    #$59    
       BCC    LFC76   
       CMP    #$A8    
       BCC    LFC7A   
LFC76: STY    $80,X   
       DEC    $D3     
LFC7A: RTS            

LFC7B: JSR    LFCA6   
       LDA    LFEC4,X 
       STA    $93     
       CPX    #$00    
       BEQ    LFC9F   
       LDX    $D2     
       STY    $97     
       LDY    #$01    
       CPX    #$07    
       BCC    LFC92   
       DEY            
LFC92: DEX            
       BEQ    LFC9D   
       CPY    $93     
       BEQ    LFC9D   
       LSR    $93     
       BNE    LFC92   
LFC9D: LDY    $97     
LFC9F: RTS            

LFCA0: LDA    $80,X   
       AND    #$0F    
       TAY            
       RTS            

LFCA6: LDA    $9B     
       AND    #$0F    
       TAX            
       RTS            

LFCAC: LDA    #$A0    
       STA    $AB     
       STA    $AC     
       STA    $AA     
       RTS            

LFCB5: STX    $93     
       LDX    LFF06,Y 
       LDA    #$00    
       CPX    #$03    
       BEQ    LFCC2   
       LDA    $E0,X   
LFCC2: LDX    $93     
       ADC    $C8     
       ADC    LFEF2,X 
       RTS            

LFCCA: STX    $93     
       LDX    LFF0C,Y 
       LDA    #$00    
       CPX    #$03    
       BEQ    LFCD7   
       LDA    $E3,X   
LFCD7: LDX    $93     
       ADC    $AE     
       ADC    LFEF2,X 
       LSR            
       CLC            
       ADC    #$18    
LFCE2: RTS            

LFCE3: LDA    $D1     
       BEQ    LFCE2   
       LDA    #$00    
       STA    $D1     
LFCEB: LDA    $9B     
       CMP    #$11    
       BCC    LFD09   
       LDA    $A2     
       EOR    #$01    
       TAX            
       LDA    $C2,X   
       BEQ    LFD09   
       STX    $A2     
       CPX    #$01    
       BNE    LFD09   
       SED            
       LDA    $D2     
       SEC            
       SBC    #$01    
       STA    $D2     
       CLD            
LFD09: JMP    LFD73   
LFD0C: JSR    LFCA6   
       LDA    LFECD,X 
       STA    $CF     
       STA    $D0     
       RTS            

LFD17: LDA    #$FF    
       STA    $91     
       RTS            

LFD1C: LDA    #$78    
       STA    $8D     
       LDA    #$00    
       STA    $91     
       RTS            

LFD25: STX    $93     
       LDX    $A2     
       INC    $C4,X   
       INC    $C2,X   
       LDX    $93     
LFD2F: LDA    #$1E    
       STA    $8A     
       RTS            

LFD34: LDX    $BB     
       LDA    $E8,X   
       STA    $8F     
       RTS            

LFD3B: LDA    #$00    
       STA    $A2     
       STA    $D1     
       STA    $CD     
       STA    $A4     
       STA    $9A     
       STA    $99     
       STA    $B4     
       STA    REFP0   
       LDA    #$96    
       STA    $CB     
       JSR    LFDE3   
       JSR    LFE09   
       JSR    LFD0C   
       LDA    LFEE8,X 
       STA    $D2     
       LDX    #$03    
LFD61: LDA    LFFE3,X 
       STA    $D4,X   
       LDA    LFFE7,X 
       STA    $D8,X   
       LDA    LFFEB,X 
       STA    $DC,X   
       DEX            
       BPL    LFD61   
LFD73: LDA    $98     
       STA    $C9     
       STA    $E3     
       STA    $E4     
       STA    $AE     
       LDA    #$00    
       STA    $B6     
       STA    $BD     
       STA    $BF     
       STA    $CD     
       LDA    #$FE    
       STA    $92     
       STA    $B9     
       STA    $CA     
       LDA    $D2     
       AND    #$0F    
       BEQ    LFD99   
       CMP    #$05    
       BNE    LFD9C   
LFD99: JSR    LFD0C   
LFD9C: SED            
       LDA    $D2     
       CLC            
       ADC    #$01    
       STA    $D2     
       CLD            
       LDA    #$0F    
       STA    $D3     
       LDX    #$07    
LFDAB: LDA    LFF18,X 
       STA    $80,X   
       LDY    $A2     
       LDA.wy $00CF,Y 
       CMP    #$FF    
       BNE    LFDBD   
       LDA    #$05    
       STA    $80,X   
LFDBD: DEX            
       BPL    LFDAB   
       JSR    LFDEE   
LFDC3: LDA    #$32    
       STA    $AD     
       LDA    #$1E    
       STA    $A5     
       JSR    LFCAC   
       STA    $C8     
       STA    $AB     
       LDA    #$05    
       STA    $8B     
       LDA    #$00    
       STA    $E0     
       STA    $E1     
       STA    $E2     
       STA    $CC     
       STA    $E6     
       RTS            

LFDE3: LDA    #$03    
       STA    $C2     
       STA    $C3     
       STA    $C4     
       STA    $C5     
       RTS            

LFDEE: LDA    #$10    
       STA    $B1     
       LDA    $EA     
       STA    $8F     
       LDA    $B4     
       BNE    LFE08   
       LDA    $A3     
       AND    #$07    
       BNE    LFE08   
       LDA    #$60    
       STA    $B1     
       LDA    $EE     
       STA    $8F     
LFE08: RTS            

LFE09: LDA    #$00    
       STA    $9C     
       STA    $9D     
       LDA    #$AA    
       STA    $9E     
       STA    $9F     
       STA    $A0     
       STA    $A1     
       RTS            

LFE1A: .byte $F0,$00,$00,$00,$00,$00,$00,$38,$7F,$7C,$70,$20,$00,$00,$00,$00
       .byte $00,$F0,$00,$00,$00,$04,$08,$44,$28,$26,$1C,$28,$04,$20,$00,$00
       .byte $00,$F0,$00,$00,$08,$00,$42,$20,$04,$41,$10,$42,$08,$40,$02,$20
       .byte $00,$F0,$00,$10,$02,$40,$00,$41,$00,$20,$02,$00,$40,$04,$00,$40
       .byte $12,$F0,$00,$01,$40,$00,$00,$00,$00,$00,$01,$00,$00,$00,$40,$00
       .byte $21,$F0,$FF,$00,$00,$F0,$00,$7C,$FE,$3C,$3C,$FE,$7C,$00,$00,$00
       .byte $00,$F0,$00,$FE,$7F,$00,$00,$00,$00
LFE83: .byte $00,$00,$00,$5C,$3E,$5C
LFE89: .byte $00,$50,$40,$30,$20
LFE8E: .byte $F0,$E0,$D0,$70,$B0,$60,$50,$90,$A0
LFE97: .byte $00,$01,$FF,$00,$00,$01,$FF,$FF,$01
LFEA0: .byte $00,$00,$00,$01,$FF,$01,$01,$FF,$FF
LFEA9: .byte $C0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0
LFEB5: .byte $FF,$07,$03,$01,$01
LFEBA: .byte $3F,$46,$4D,$54,$5B,$62,$69,$70,$77,$7E
LFEC4: .byte $0F,$07,$03,$07,$07,$03,$07,$07,$03
LFECD: .byte $07,$07,$07,$FF,$07,$07,$FF,$07,$07,$FF,$07,$07,$07,$07,$07,$07
       .byte $07
LFEDE: .byte $F0,$F0,$F1,$F3
LFEE2: .byte $00,$FF,$FF,$FF
LFEE6: .byte $40,$80
LFEE8: .byte $00,$00,$00,$00,$02,$02,$02,$04,$04,$04
LFEF2: .byte $00,$28,$50,$78,$9B,$AF,$64,$5A
LFEFA: .byte $05,$00,$00,$00,$05,$05
LFF00: .byte $02,$02,$0A,$05,$01,$01
LFF06: .byte $03,$00,$02,$00,$02,$01
LFF0C: .byte $01,$00,$03,$00,$03,$00
LFF12: .byte $80,$40,$20,$10,$08,$04
LFF18: .byte $00,$02,$02,$04,$04,$04,$04,$80
LFF20: .byte $08,$10,$18,$20,$28,$30
LFF26: .byte $00,$00,$00,$00,$00,$F8,$D8,$D8,$F8,$00,$00,$00,$00,$00,$7E,$E7
       .byte $7E,$00,$10,$54,$38,$FE,$38,$54,$10,$00,$42,$E7,$42,$04,$4E,$E4
       .byte $40,$00,$FF,$7E,$24,$18,$3C,$3C,$18,$00,$C3,$3C,$24,$18,$3C,$3C
       .byte $44,$00,$10,$20,$40,$14,$28,$54,$20,$7E,$72,$72,$72,$72,$72,$7E
       .byte $1C,$1C,$1C,$1C,$1C,$1C,$3C,$7E,$40,$7E,$0E,$0E,$4E,$7E,$7E,$4E
       .byte $0E,$1C,$0E,$4E,$7E,$1C,$1C,$7E,$5C,$5C,$5C,$7C,$7E,$4E,$0E,$7E
       .byte $40,$4E,$7E,$7E,$4E,$4E,$7E,$40,$4E,$7E,$0E,$0E,$0E,$0E,$0E,$4E
       .byte $7E,$7E,$4E,$4E,$7E,$72,$72,$7E,$7E,$72,$02,$7E,$72,$72,$7E,$00
       .byte $00,$00,$00,$00,$00,$00,$79,$85,$B5,$A5,$B5,$85,$79,$17,$15,$15
       .byte $77,$55,$55,$77,$41,$41,$41,$41,$41,$41,$40,$49,$49,$49,$C9,$49
       .byte $49,$BE,$55,$55,$55,$D9,$55,$55,$99,$00,$C4,$A4,$C6,$A5,$C6
LFFD5: .byte $0A,$A0
LFFD7: .byte $0B,$B0
LFFD9: .byte $0F,$F0
LFFDB: .byte $01,$10
LFFDD: .byte $F0,$0F
LFFDF: .byte $F1,$1F
LFFE1: .byte $FA,$AF
LFFE3: .byte $E0,$60,$40,$40
LFFE7: .byte $7B,$79,$59,$10
LFFEB: .byte $CE,$C6,$C6,$C0
LFFEF: .byte $00,$88,$8F,$FF,$1D,$1A,$37,$00,$00,$00,$00,$00,$00,$00,$F0,$00
       .byte $F0
