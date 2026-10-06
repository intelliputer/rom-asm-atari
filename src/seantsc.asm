; Disassembly of roms/seantsc.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/seantsc.bin
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
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
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
LF000: STA    WSYNC   
       STA    VBLANK  
       LDA    #$86    
       STA    COLUBK  
       LDA    #$43    
       LDX    #$01    
       JSR    LFB53   
       DEX            
       LDA    #$3B    
       JSR    LFB53   
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP0    
       LDA    $FA     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAX            
       LDA    LFFEE,X 
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$0B    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       LDX    #$09    
       STX    $EC     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
LF03F: LDY    $EC     
       LDA    ($80),Y 
       LDX    LFF9A,Y 
       STX    COLUBK  
       STA.w  $001B   
       LDA    ($82),Y 
       STA    GRP1    
       LDA    ($84),Y 
       STA    GRP0    
       LDA    ($86),Y 
       STA    $ED     
       .byte $B3 ;.LAX
       DEY            
       LDA    ($8A),Y 
       LDY    $ED     
       STY    GRP1    
       STX    GRP0    
       STA    GRP1    
       STA    GRP0    
       DEC    $EC     
       BPL    LF03F   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ1  
       STA    NUSIZ0  
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$FD    
       STA    $81     
       STA    $83     
       STA    $85     
       LDA    #$76    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$66    
       STA    COLUBK  
       LDA    #$1A    
       STA    COLUP0  
       STA    COLUP1  
       STA    REFP1   
       LDA    #$78    
       LDX    #$00    
       JSR    LFB53   
       LDA    #$80    
       INX            
       JSR    LFB53   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$0E    
LF0A4: STA    WSYNC   
       LDA    LFF8B,Y 
       STA    COLUBK  
       SEC            
       TYA            
       SBC    #$07    
       ADC    #$06    
       BCC    LF0B9   
       TAX            
       LDA    LFFA4,X 
       BNE    LF0BB   
LF0B9: LDA    #$00    
LF0BB: STA    GRP0    
       STA    GRP1    
       DEY            
       BPL    LF0A4   
       INY            
       STY    COLUP0  
       STY    COLUP1  
       INY            
       STY    NUSIZ0  
       LDX    #$03    
       SEC            
       JSR    LFA00   
       LDX    #$02    
       JSR    LFA00   
       LDX    #$01    
       JSR    LFA00   
       STA    NUSIZ0  
       STA    COLUP0  
       STA    COLUP1  
       STA    REFP0   
       STA    REFP1   
       LDA    #$02    
       STA    $EE     
       LDA    #$FC    
       STA    $89     
       STA    $8B     
LF0EE: LDA    $EE     
       ASL            
       TAY            
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       .byte $C7 ;.DCP
       STX    $69,Y   
       .byte $02 ;.JAM
       STA    ENABL   
       LDA    #$03    
       .byte $C7 ;.DCP
       .byte $97 ;.SAX
       ADC    #$02    
       STA    ENAM1   
       LDA    $D0     
       LSR            
       LSR            
       AND    #$0F    
       TAX            
       LDA    #$D7    
       CMP.wy $00A5,Y 
       BNE    LF118   
       STX    COLUP1  
LF118: CMP.wy $00A4,Y 
       BNE    LF11F   
       STX    COLUP0  
LF11F: LDA.wy $0098,Y 
       LDX    #$00    
       JSR    LFB65   
       LDX    $EE     
       LDA    LFF74,X 
       BIT    $E4     
       BEQ    LF132   
       STA    COLUBK  
LF132: STA    $EC     
       LDA    #$03    
       .byte $C7 ;.DCP
       STX    $69,Y   
       .byte $02 ;.JAM
       STA    ENABL   
       LDA    #$03    
       .byte $C7 ;.DCP
       .byte $97 ;.SAX
       ADC    #$02    
       STA    ENAM1   
       STA    HMCLR   
       LDA.wy $0099,Y 
       LDX    #$01    
       JSR    LFB65   
       LDA    $EC     
       BIT    $E5     
       BEQ    LF156   
       STA    COLUBK  
LF156: LDA.wy $00A5,Y 
       STA    $8A     
       LDA.wy $00A4,Y 
       STA    $88     
       LDY    #$0B    
LF162: LDA    #$03    
       .byte $C7 ;.DCP
       STX    $69,Y   
       .byte $02 ;.JAM
       STA    ENABL   
       LDA    #$03    
       .byte $C7 ;.DCP
       .byte $97 ;.SAX
       ADC    #$02    
       STA    ENAM1   
       .byte $B3 ;.LAX
       TXA            
       LDA    ($88),Y 
       STA    WSYNC   
       STA    GRP0    
       STX    GRP1    
       LDA    $EC     
       STA    COLUBK  
       DEY            
       BPL    LF162   
       DEC    $EE     
       BMI    LF18A   
       JMP    LF0EE   
LF18A: LDX    #$1B    
       LDY    #$82    
       LDA    $E4     
       BNE    LF194   
       LDY    #$84    
LF194: LDA    #$03    
       .byte $C7 ;.DCP
       STX    $69,Y   
       .byte $02 ;.JAM
       STA    ENABL   
       LDA    #$03    
       .byte $C7 ;.DCP
       .byte $97 ;.SAX
       ADC    #$02    
       STA    ENAM1   
       STA    WSYNC   
       STY    COLUBK  
       LDY    #$82    
       DEX            
       BNE    LF194   
       SEC            
       JSR    LFA00   
       STA    ENABL   
       STA    ENAM1   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$FC    
       STA    $81     
       STA    $83     
       STA    $85     
       STA    $87     
       LDA    #$A0    
       STA    $80     
       LDA    #$A5    
       STA    $82     
       LDA    #$AA    
       STA    $84     
       LDA    #$AF    
       STA    $86     
       LDA    #$B4    
       STA    $88     
       LDA    #$B9    
       STA    $8A     
       LDY    #$04    
       JSR    LFB06   
       .byte $A7 ;.LAX
       .byte $E7 ;.ISB
       AND    #$0F    
       TAY            
       LDA    LFFAA,Y 
       STA    $82     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFAA,Y 
       STA    $80     
       .byte $A7 ;.LAX
       INX            
       AND    #$0F    
       TAY            
       LDA    LFFAA,Y 
       STA    $86     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFAA,Y 
       STA    $84     
       .byte $A7 ;.LAX
       SBC    #$29    
       .byte $0F ;.SLO
       TAY            
       LDA    LFFAA,Y 
       STA    $8A     
       TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFAA,Y 
       STA    $88     
       LDY    #$09    
       JSR    LFB25   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$02    
       STA    VBLANK  
       JMP    LF4C7   

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
       TAY            
LF247: DEX            
       TXS            
       PHA            
       BNE    LF247   
       LDX    #$03    
LF24E: JSR    LF709   
       DEX            
       BPL    LF24E   
       LDX    #$05    
LF256: JSR    LF6E7   
       CMP    #$9C    
       BCS    LF256   
       STA    $98,X   
       LDA    #$BE    
       STA    $A4,X   
       DEX            
       BPL    LF256   
       LDA    #$30    
       STA    PF0     
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LF868   
       LDA    #$47    
       STA    $8C     
       LDA    #$FF    
       STA    $8D     
       LDA    #$00    
       STA    $80     
       LDA    #$FD    
       STA    $81     
       LDA    #$1E    
       STA    $82     
       LDA    #$FD    
       STA    $83     
       LDA    #$0D    
       STA    $84     
       LDA    #$FD    
       STA    $85     
       LDA    #$A4    
       STA    $8E     
       LDA    #$FA    
       STA    $8F     
       LDA    #$20    
       STA    $94     
       LDA    #$04    
       STA    $95     
LF2A7: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LSR            
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2B    
       STA    TIM64T  
       LDX    #$03    
LF2BD: LDY    #$01    
       LDA    $B0,X   
       CLC            
       ADC    #$02    
       SEC            
LF2C5: DEY            
       SBC    #$03    
       BCS    LF2C5   
       TYA            
       ADC    #$D2    
       STA    $B4,X   
       DEX            
       BPL    LF2BD   
       LDX    #$01    
       LDY    #$02    
       BIT    $FA     
       BMI    LF2DC   
       INX            
       INY            
LF2DC: STX    $EC     
       STY    $ED     
       LDX    #$01    
       LDA    $C9     
       AND    #$F0    
       CMP    #$20    
       BEQ    LF2EC   
       LDX    #$FF    
LF2EC: STX    $EE     
       BIT    $E6     
       BPL    LF350   
       LDA    $E8     
       BEQ    LF346   
       LDA    $D1     
       BEQ    LF2FF   
       DEC    $D1     
       JMP    LF346   
LF2FF: LDX    REFP1   
       LDA    SWCHB   
       AND    #$08    
       BNE    LF30E   
       CPX    $FB     
       BEQ    LF346   
       STX    $FB     
LF30E: TXA            
       BMI    LF346   
       LDX    $EC     
LF313: LDA    $D7,X   
       BPL    LF343   
       LDA    #$6C    
       STA    $D7,X   
       LDA    #$FF    
       STA    $DB,X   
       LDA    $B8     
       SEC            
       SBC    #$06    
       LDY    $C4     
       CPY    #$00    
       BNE    LF32D   
       CLC            
       ADC    #$03    
LF32D: STA    $D3,X   
       LDA    #$0F    
       STA    $D1     
       SED            
       LDA    $E8     
       SEC            
       SBC    #$01    
       STA    $E8     
       CLD            
       LDY    #$00    
       JSR    LFB7B   
       LDX    #$00    
LF343: DEX            
       BPL    LF313   
LF346: LDY    $EE     
       BMI    LF37F   
       LDA    $D2     
       BEQ    LF353   
       DEC    $D2     
LF350: JMP    LF37F   
LF353: LDX    $ED     
LF355: LDA    $D7,X   
       BPL    LF37A   
       LDA    LFE97,Y 
       STA    $D7,X   
       LDA    #$02    
       BIT    $FA     
       BMI    LF366   
       LDA    #$01    
LF366: STA    $DB,X   
       LDA.wy $00B0,Y 
       ADC    #$0C    
       STA    $D3,X   
       LDA    #$1E    
       STA    $D2     
       LDY    #$0A    
       JSR    LFB7B   
       LDX    #$03    
LF37A: INX            
       CPX    #$04    
       BNE    LF355   
LF37F: LDA    $D0     
       AND    #$01    
       ASL            
       TAY            
       LDA.wy $00D3,Y 
       LDX    #$04    
       JSR    LFB53   
       LDA.wy $00D7,Y 
       STA    $96     
       LDA.wy $00D4,Y 
       LDX    #$03    
       JSR    LFB53   
       LDA.wy $00D8,Y 
       STA    $97     
       STA    WSYNC   
       STA    HMOVE   
       TYA            
       EOR    #$02    
       TAY            
       LDX    #$00    
       BIT    VBLANK  
       BMI    LF3BD   
       INX            
       BVS    LF3BD   
       LDX    #$00    
       BIT    WSYNC   
       BVS    LF3BE   
       INX            
       BIT    RSYNC   
       BVS    LF3BE   
       BVC    LF40B   
LF3BD: INY            
LF3BE: LDA.wy $00D7,Y 
       CMP    #$0F    
       BCS    LF3CA   
       LDX    #$03    
       JMP    LF7B1   
LF3CA: CMP    #$1C    
       BCS    LF3D3   
       LDX    #$02    
       JMP    LF7B1   
LF3D3: CMP    #$27    
       BCS    LF3DC   
       LDX    #$01    
       JMP    LF7B1   
LF3DC: CMP    #$35    
       BCS    LF3E7   
       TXA            
       ADC    #$04    
       TAX            
       JMP    LF77B   
LF3E7: CMP    #$43    
       BCS    LF3F2   
       TXA            
       ADC    #$02    
       TAX            
       JMP    LF77B   
LF3F2: CMP    #$51    
       BCS    LF3F9   
       JMP    LF77B   
LF3F9: CMP    #$5E    
       BCS    LF3FF   
       BCC    LF40B   
LF3FF: JSR    LF83B   
       LDX    #$00    
       LDA    $CC     
       BEQ    LF40B   
       JMP    LF7B1   
LF40B: STA    CXCLR   
       LDX    #$03    
LF40F: LDA    $D7,X   
       BMI    LF418   
       CLC            
       ADC    $DB,X   
       STA    $D7,X   
LF418: DEX            
       BPL    LF40F   
       LDX    #$0B    
LF41D: TXA            
       LSR            
       LSR            
       TAY            
       LDA.wy $0090,Y 
       STA    $EE     
       AND    #$0F    
       TAY            
       LDA    #$FC    
       STA    $80,X   
       STA    $7E,X   
       DEX            
       LDA    LFFAA,Y 
       STA    $80,X   
       DEX            
       DEX            
       LDA    $EE     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFAA,Y 
       STA    $80,X   
       DEX            
       BPL    LF41D   
       LDY    #$E3    
       LDX    #$00    
LF44A: LDA    $80,X   
       BNE    LF456   
       STY    $80,X   
       INX            
       INX            
       CPX    #$0C    
       BCC    LF44A   
LF456: STA    HMCLR   
       LDA    $E6     
       ORA    $D1     
       BNE    LF4BF   
       INC    $E0     
       LDA    $E0     
       EOR    #$04    
       BNE    LF4BF   
       STA    $E0     
       LDY    #$01    
LF46A: TYA            
       CLC            
       ADC    $E3     
       TAX            
       LDA    LF900,X 
       CLC            
       ADC    $E1     
       TAX            
       LDA    LF900,X 
       CLC            
       ADC    $E2     
       TAX            
       LDA    LF900,X 
       BEQ    LF499   
       STA.wy $0017,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFBA,X 
       STA.wy $0015,Y 
       LDA    #$0A    
       CPY    #$00    
       BEQ    LF499   
       LDA    #$08    
LF499: STA.wy $0019,Y 
       DEY            
       BPL    LF46A   
       INC    $E2     
       LDA    $E2     
       EOR    #$06    
       BNE    LF4BF   
       STA    $E2     
       INC    $E1     
       LDA    $E1     
       EOR    #$08    
       BNE    LF4BF   
       STA    $E1     
       INC    $E3     
       INC    $E3     
       LDA    $E3     
       EOR    #$1E    
       BNE    LF4BF   
       STA    $E3     
LF4BF: LDA    INTIM   
       BNE    LF4BF   
       JMP    LF000   
LF4C7: LDA    #$24    
       STA    TIM64T  
       BIT    $E6     
       BMI    LF4EC   
       LDA    $D1     
       BEQ    LF4D9   
       DEC    $D1     
       JMP    LF4EC   
LF4D9: LDA    REFP1   
       BMI    LF4EC   
       STA    $FB     
       BIT    $E6     
       BVS    LF4E9   
       JSR    LF873   
       JMP    LF4EC   
LF4E9: JSR    LF898   
LF4EC: LDA    $E6     
       BPL    LF511   
       LDA    SWCHA   
       ASL            
       BCS    LF502   
       LDX    #$00    
       STX    $C4     
       LDX    $B8     
       CPX    #$98    
       BEQ    LF502   
       INC    $B8     
LF502: ASL            
       BCS    LF511   
       LDX    #$08    
       STX    $C4     
       LDX    $B8     
       CPX    #$18    
       BEQ    LF511   
       DEC    $B8     
LF511: LDX    #$03    
LF513: LDY    #$02    
LF515: LDA    $C8,X   
       AND    #$F0    
       CMP    #$10    
       BNE    LF529   
       LDA    $D0     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$03    
       EOR    #$FF    
       STA    $CC,X   
LF529: LDA    $C4,X   
       BNE    LF546   
       LDA    $BC,X   
       CLC            
       ADC    $C0,X   
       STA    $BC,X   
       LDA    $B8,X   
       ADC    #$00    
       STA    $B8,X   
       EOR    #$A9    
       BNE    LF561   
       STA    $B8,X   
       JSR    LF709   
       JMP    LF571   
LF546: LDA    $BC,X   
       SEC            
       SBC    $C0,X   
       STA    $BC,X   
       LDA    $B8,X   
       SBC    #$00    
       STA    $B8,X   
       EOR    #$FF    
       BNE    LF561   
       LDA    #$A9    
       STA    $B8,X   
       JSR    LF709   
       JMP    LF571   
LF561: DEY            
       BPL    LF515   
       LDY    #$1F    
       LDA    $C8,X   
       AND    #$F0    
       BEQ    LF56E   
       LDY    #$07    
LF56E: JSR    LF6F6   
LF571: DEX            
       BNE    LF513   
       LDY    #$07    
       JSR    LF6F6   
       LDX    #$05    
LF57B: LDA    $AA,X   
       BNE    LF5C2   
       LDA    LFEA1,X 
       LDY    $EB     
       CPY    #$04    
       BCC    LF589   
       ASL            
LF589: LDY    $A4,X   
       CPY    #$D7    
       BNE    LF591   
       ADC    #$0A    
LF591: ADC    $9E,X   
       STA    $9E,X   
       BCC    LF59F   
       LDA    $98,X   
       CLC            
       ADC    LFE9B,X 
       STA    $98,X   
LF59F: LDA    $98,X   
       EOR    LFEA7,X 
       BNE    LF5D4   
LF5A6: LDY    #$BE    
       LDA    $EA     
       BEQ    LF5B8   
       LDY    #$D7    
       LDA    #$00    
       STA    $EA     
       STA    $F0     
       STA    $F2     
       INC    $F8     
LF5B8: STY    $A4,X   
       LDA    LFEA9,X 
       STA    $98,X   
       JMP    LF5D4   
LF5C2: BMI    LF5D2   
       DEC    $AA,X   
       BNE    LF5D4   
       LDA    $DF     
       ORA    #$C0    
       AND    #$F8    
       STA    $AA,X   
       BNE    LF5A6   
LF5D2: INC    $AA,X   
LF5D4: DEX            
       BPL    LF57B   
       JSR    LF6E7   
       INC    $D0     
       LDA    $D0     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAX            
       LDA    LFE90,X 
       STA    $E4     
       LDA    LFE94,X 
       STA    $E5     
       LDA    $F8     
       BEQ    LF5FE   
       INC    $F8     
       LDA    $F8     
       EOR    #$3B    
       BNE    LF5FE   
       STA    $F8     
       STA    $F9     
LF5FE: LDA    $E6     
       ORA    $D1     
       BEQ    LF62E   
       LDX    #$01    
       JSR    LF8C2   
       LDA    $F8     
       BNE    LF614   
       DEX            
       JSR    LF8C2   
       JMP    LF62E   
LF614: LDA    #$04    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDF0   
       LDX    $F9     
       LDA    LFFC2,X 
       CMP    $F8     
       BNE    LF62E   
       INX            
       LDA    LFFC2,X 
       STA    AUDV0   
       INX            
       STX    $F9     
LF62E: BIT    $E6     
       BPL    LF66C   
       LDA    SWCHB   
       LSR            
       BCS    LF63E   
       JSR    LF832   
       JMP    LF66C   
LF63E: LDX    #$01    
       BIT    $FA     
       BMI    LF645   
       INX            
LF645: LDA    #$FF    
LF647: AND    $D7,X   
       DEX            
       BPL    LF647   
       ASL            
       BCC    LF653   
       LDA    $E8     
       BEQ    LF664   
LF653: LDA    $D0     
       ASL            
       ASL            
       BNE    LF66C   
       SED            
       LDA    $E7     
       SEC            
       SBC    #$01    
       STA    $E7     
       CLD            
       BNE    LF66C   
LF664: LDY    #$05    
       JSR    LFB7B   
       JSR    LF83B   
LF66C: BIT    $E6     
       BVS    LF686   
       LDA    #$AB    
       LDX    #$CD    
       LDY    #$EF    
       BIT    $D0     
       BPL    LF680   
       LDA    $93     
       LDX    $94     
       LDY    $95     
LF680: STA    $90     
       STX    $91     
       STY    $92     
LF686: LDX    #$03    
LF688: LDA    $C8,X   
       AND    #$F0    
       CMP    #$70    
       BNE    LF6A0   
       DEC    $BC,X   
       BNE    LF6AB   
       LDA    $C8,X   
       AND    #$0F    
       ORA    #$80    
       STA    $C8,X   
       LDA    #$04    
       STA    $CC,X   
LF6A0: CMP    #$60    
       BNE    LF6AB   
       DEC    $BC,X   
       BNE    LF6AB   
       JSR    LF709   
LF6AB: LDA    $B8,X   
       CMP    #$08    
       BCS    LF6B6   
       LDY    #$00    
       JMP    LFF58   
LF6B6: CMP    #$10    
       BCS    LF6BF   
       LDY    #$01    
       JMP    LFF58   
LF6BF: CMP    #$99    
       BCS    LF6C8   
       LDY    #$02    
       JMP    LFF58   
LF6C8: CMP    #$A1    
       BCS    LF6D1   
       LDY    #$03    
       JMP    LFF58   
LF6D1: CMP    #$A9    
       BCS    LF6DA   
       LDY    #$04    
       JMP    LFF58   
LF6DA: DEX            
       BPL    LF688   
LF6DD: LDA    INTIM   
       BNE    LF6DD   
       STA    WSYNC   
       JMP    LF2A7   
LF6E7: LDA    $DF     
       BNE    LF6ED   
       LDA    #$FF    
LF6ED: ASL            
       ASL            
       ASL            
       EOR    $DF     
       ASL            
       ROL    $DF     
       RTS            

LF6F6: TYA            
       AND    $D0     
       BNE    LF77A   
       LDA    $CC,X   
       BEQ    LF77A   
       BMI    LF77A   
       INC    $CC,X   
       LDA    $CC,X   
       CMP    #$09    
       BNE    LF77A   
LF709: JSR    LF6E7   
       AND    #$7F    
       ORA    #$07    
       STA    $C0,X   
       LDA    $EB     
       ASL            
       ASL            
       ADC    $C0,X   
       STA    $C0,X   
       LDY    #$00    
       JSR    LF6E7   
       AND    #$08    
       STA    $C4,X   
       BEQ    LF727   
       LDY    #$A8    
LF727: STY    $B8,X   
       CPX    #$01    
       BNE    LF736   
       LDA    $D0     
       LSR            
       BCS    LF736   
       LDA    #$20    
       BNE    LF73F   
LF736: JSR    LF6E7   
       AND    #$70    
       CMP    #$60    
       BCS    LF736   
LF73F: LDY    $EB     
       CPY    #$03    
       BCS    LF765   
       CMP    #$20    
       BNE    LF74D   
       LDA    #$30    
       BNE    LF765   
LF74D: CPY    #$02    
       BCS    LF765   
       CMP    #$40    
       BNE    LF759   
       LDA    #$30    
       BNE    LF765   
LF759: CPY    #$01    
       BCS    LF765   
       CMP    #$50    
       BNE    LF765   
       LDA    #$30    
       BNE    LF765   
LF765: STA    $C8,X   
       CMP    #$10    
       BNE    LF771   
       LDA    $C0,X   
       ORA    #$20    
       STA    $C0,X   
LF771: LDY    #$00    
       CMP    #$00    
       BNE    LF778   
       INY            
LF778: STY    $CC,X   
LF77A: RTS            

LF77B: LDA    #$02    
       STA    $EC     
       LDA    $A4,X   
       CMP    #$CA    
       BEQ    LF7AE   
       CMP    #$D7    
       BNE    LF79C   
       CPY    #$03    
       BEQ    LF7AE   
       BIT    $FA     
       BPL    LF795   
       CPY    #$02    
       BEQ    LF7AE   
LF795: JSR    LF8B0   
       LDA    #$09    
       STA    $EC     
LF79C: LDA    #$CA    
       STA    $A4,X   
       LDA    #$FF    
       STA.wy $00D7,Y 
       LDA    #$03    
       STA    $AA,X   
       LDY    $EC     
       JSR    LFB7B   
LF7AE: JMP    LF40B   
LF7B1: LDA    $C8,X   
       AND    #$F0    
       CMP    #$60    
       BCS    LF82F   
       CMP    #$50    
       BNE    LF7D2   
       LDA    #$02    
       STA    $EC     
       LDA    #$20    
       JSR    LFBA0   
       LSR    $C0,X   
       LSR    $C0,X   
       LSR    $C0,X   
       LDA    $C0,X   
       BNE    LF821   
       BEQ    LF806   
LF7D2: CMP    #$20    
       BCS    LF806   
       LDA    #$04    
       STA    $EC     
       LDA    #$00    
       STA    $CC,X   
       LDA    $C8,X   
       AND    #$0F    
       STA    $ED     
       ORA    #$60    
       STA    $C8,X   
       TXA            
       BEQ    LF81D   
       LDA    #$80    
       JSR    LFBA0   
       JMP    LF81D   
LF7F3: LDA    #$02    
       STA.wy $00DB,Y 
       LDA    LFE97,X 
       STA.wy $00D7,Y 
       LDY    #$01    
       JSR    LFB7B   
       JMP    LF40B   
LF806: CMP    #$40    
       BEQ    LF7F3   
       LDA    #$03    
       STA    $EC     
       LDA    $C8,X   
       AND    #$0F    
       STA    $ED     
       ORA    #$70    
       STA    $C8,X   
       LDA    #$50    
       JSR    LFBA0   
LF81D: LDA    #$00    
       STA    $C0,X   
LF821: LDA    #$FF    
       STA.wy $00D7,Y 
       LDA    #$0F    
       STA    $BC,X   
       LDY    $EC     
       JSR    LFB7B   
LF82F: JMP    LF40B   
LF832: LDA    #$01    
       STA    $E9     
       LDY    #$05    
       JSR    LFB7B   
LF83B: STX    CXCLR   
       LDX    #$40    
       STX    $E6     
       LDX    #$3F    
       STX    $D1     
       LDX    #$01    
       STX    $CC     
       DEC    $E9     
       BNE    LF872   
       LDX    #$00    
       STX    $E6     
       STX    $E3     
       STX    $E1     
       STX    $E2     
       STX    $D0     
       DEX            
       STX    $D1     
       LDA    $90     
       STA    $93     
       LDA    $91     
       STA    $94     
       LDA    $92     
       STA    $95     
LF868: LDY    #$03    
       LDA    #$FF    
LF86C: STA.wy $00D7,Y 
       DEY            
       BPL    LF86C   
LF872: RTS            

LF873: LDA    #$00    
       STA    $90     
       STA    $91     
       STA    $92     
       STA    $F0     
       STA    $F1     
       STA    $F2     
       STA    $F3     
       STA    AUDV0   
       STA    AUDV1   
       LDX    SWCHB   
       STX    $FA     
       BIT    $FA     
       BVC    LF892   
       LDA    #$04    
LF892: STA    $EB     
       LDA    #$03    
       STA    $E9     
LF898: LDA    #$FF    
       STA    $E6     
       LDA    #$00    
       STA    $C8     
       STA    $C4     
       STA    $CC     
       STA    $D0     
       LDA    #$30    
       STA    $B8     
       STA    $D1     
       LDA    #$80    
       STA    $E7     
LF8B0: SED            
       LDA    $E7     
       CLC            
       ADC    #$60    
       BCC    LF8BA   
       LDA    #$99    
LF8BA: STA    $E7     
       CLD            
       LDA    #$50    
       STA    $E8     
       RTS            

LF8C2: LDY    $F2,X   
       DEC    $F0,X   
       BPL    LF8D9   
       LDA    LFEF1,Y 
       BMI    LF8D1   
       TAY            
       JSR    LFB89   
LF8D1: INC    $F0,X   
       LDA    #$00    
       STA    AUDV0,X 
       BEQ    LF8F7   
LF8D9: LDY    $F2,X   
       LDA    $F4,X   
       CLC            
       ADC    LFEAF,Y 
       STA    $F4,X   
       LSR            
       LSR            
       LSR            
       STA    AUDF0,X 
       LDA    $F6,X   
       CLC            
       ADC    LFEBA,Y 
       AND    #$7F    
       STA    $F6,X   
       LSR            
       LSR            
       LSR            
       STA    AUDV0,X 
LF8F7: RTS            

LF8F8: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LF900: .byte $1E,$9A,$26,$A2,$1E,$9A,$2E,$A2,$36,$AA,$3E,$B2,$36,$BA,$3E,$B2
       .byte $36,$BA,$3E,$9A,$36,$AA,$3E,$B2,$36,$BA,$3E,$B2,$36,$BA,$46,$46
       .byte $46,$4C,$52,$4C,$46,$58,$5E,$5E,$5E,$5E,$5E,$5E,$5E,$5E,$5E,$5E
       .byte $5E,$64,$58,$64,$5E,$6A,$70,$70,$70,$70,$70,$70,$70,$70,$46,$76
       .byte $7C,$82,$5E,$88,$8E,$94,$AE,$AE,$AE,$AE,$AE,$AE,$AF,$AF,$AF,$AF
       .byte $AF,$AF,$B1,$B1,$B1,$B1,$B1,$B1,$AB,$AB,$AB,$AB,$AB,$AB,$1D,$1D
       .byte $1D,$1D,$1D,$1D,$1F,$1F,$1F,$1F,$1F,$1F,$17,$17,$17,$17,$17,$17
       .byte $13,$13,$13,$13,$13,$13,$AE,$AE,$AE,$AF,$AF,$AF,$B1,$B1,$B1,$AF
       .byte $AF,$AF,$AE,$AE,$AE,$AB,$AB,$AB,$1D,$1D,$1D,$1F,$1F,$1F,$AB,$AB
       .byte $AB,$1F,$1F,$1F,$1D,$1D,$1D,$17,$17,$17,$C2,$C2,$C2,$C2,$C2,$C2
       .byte $C2,$C2,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$CE,$CE,$CE,$CE,$CE,$CE
       .byte $CE,$CE,$D4,$D4,$D4,$D4,$DA,$DA,$DA,$DA,$E0,$E0,$E0,$E0,$E0,$E0
       .byte $E0,$E0,$3A,$3B,$3A,$3A,$3B,$3A,$31,$31,$31,$31,$31,$31,$2E,$2F
       .byte $2E,$2E,$2F,$2E,$3B,$3B,$3B,$2D,$2D,$2D,$31,$31,$31,$28,$28,$28
       .byte $38,$38,$38,$2B,$2B,$2B,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFA00: LDA    #$08    
       STA    $ED     
       STX    $EE     
       LDY    $B0,X   
       LDA    $B4,X   
       STA    $8E     
       LDY    LFF77,X 
       STY    $EC     
       LDA    $B0,X   
       STA    WSYNC   
LFA15: SBC    #$0F    
       BCS    LFA15   
       AND    #$0F    
       TAX            
       LDA    LFF7B,X 
       STA    HMP1    
       SBC    #$0F    
       STA    HMP0    
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E4     
       BEQ    LFA33   
       STY    COLUBK  
LFA33: LDA    #$03    
       .byte $C7 ;.DCP
       STX    $69,Y   
       .byte $02 ;.JAM
       STA    ENABL   
       LDA    #$03    
       .byte $C7 ;.DCP
       .byte $97 ;.SAX
       ADC    #$02    
       STA    ENAM1   
       LDX    $EE     
       LDA    $C4,X   
       STA    REFP0   
       STA    REFP1   
       ORA    $C8,X   
       TAY            
       LDA    LFE00,Y 
       CLC            
       ADC    $CC,X   
       STA    $80     
       LDA    $E5     
       BEQ    LFA5E   
       LDA    $EC     
       STA    COLUBK  
LFA5E: LDA    #$03    
       .byte $C7 ;.DCP
       STX    $69,Y   
       .byte $02 ;.JAM
       STA    ENABL   
       LDA    #$03    
       .byte $C7 ;.DCP
       .byte $97 ;.SAX
       ADC    #$02    
       STA    ENAM1   
       LDA    LFE01,Y 
       ADC    $CC,X   
       STA    $82     
       LDA    LFE02,Y 
       CLC            
       ADC    $CC,X   
       STA    $84     
       LDA    $C8,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF00,Y 
       ADC    $CC,X   
       STA    WSYNC   
       STA    $8C     
       LDA    $EC     
       STA    COLUBK  
       LDA    #$03    
       .byte $C7 ;.DCP
       STX    $69,Y   
       .byte $02 ;.JAM
       STA    ENABL   
       LDA    #$03    
       .byte $C7 ;.DCP
       .byte $97 ;.SAX
       ADC    #$02    
       STA    ENAM1   
       JMP.ind ($008E)
LFAA4: .byte $C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9
       .byte $C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9
       .byte $C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C9,$C5,$EA,$A9,$03
       .byte $C7,$96,$69,$02,$8D,$1F,$00,$A9,$03,$C7,$97,$69,$02,$85,$1E,$A4
       .byte $ED,$B1,$8C,$85,$06,$85,$07,$B1,$80,$85,$1B,$B1,$82,$85,$1C,$B1
       .byte $84,$85,$1B,$04,$00,$EA,$C6,$ED,$10,$D4,$A9,$00,$85,$1B,$85,$1C
       .byte $38,$60
LFB06: LDA    #$33    
       LDX    #$01    
       JSR    LFB53   
       DEX            
       LDA    #$2B    
       JSR    LFB53   
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUP0  
       STX    COLUP1  
       STX    REFP0   
       STX    REFP1   
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
LFB25: STA    WSYNC   
       LDA    LFF8C,Y 
       STA    COLUP0  
       STA.w  $0007   
       LDA    ($80),Y 
       STA    GRP0    
       LDA    ($82),Y 
       STA    GRP1    
       .byte $B3 ;.LAX
       TXA            
       LDA    ($84),Y 
       STA    GRP0    
       LDA    ($86),Y 
       STA    GRP1    
       LDA    ($88),Y 
       STA    GRP0    
       STX    GRP1    
       DEY            
       BPL    LFB25   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFB53: SEC            
       STA    WSYNC   
LFB56: SBC    #$0F    
       BCS    LFB56   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    RESP0,X 
       RTS            

LFB65: SEC            
       STA    WSYNC   
LFB68: SBC    #$0F    
       BCS    LFB68   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFB7B: LDX    #$01    
       LDA    $F0     
       CMP    $F1     
       BCS    LFB89   
       LDA    $F8     
       BNE    LFB89   
       LDX    #$00    
LFB89: LDA    LFEC5,Y 
       STA    AUDC0,X 
       LDA    LFED0,Y 
       STA    $F4,X   
       LDA    LFEDB,Y 
       STA    $F6,X   
       LDA    LFEE6,Y 
       STA    $F0,X   
       STY    $F2,X   
       RTS            

LFBA0: SED            
       CLC            
       ADC    $92     
       STA    $92     
       LDA    $91     
       STA    $EE     
       ADC    #$00    
       STA    $91     
       AND    #$F0    
       STA    $ED     
       LDA    $90     
       ADC    #$00    
       STA    $90     
       CLD            
       LDA    $EE     
       AND    #$F0    
       CMP    $ED     
       BEQ    LFBCD   
       LDA    #$FF    
       STA    $EA     
       LDA    $EB     
       CMP    #$13    
       BEQ    LFBCD   
       INC    $EB     
LFBCD: RTS            

LFBCE: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$3C,$7E,$66,$66,$66,$66,$66,$66,$7E,$3C,$3C,$3C,$18,$18
       .byte $18,$18,$18,$18,$38,$18,$7E,$7E,$60,$60,$7C,$3E,$06,$66,$7E,$3C
       .byte $3C,$7E,$66,$06,$1C,$1E,$06,$66,$7E,$3C,$06,$06,$06,$06,$7E,$7E
       .byte $66,$66,$66,$66,$3C,$7E,$66,$06,$7E,$7C,$60,$60,$7C,$7C,$3C,$7E
       .byte $66,$66,$7E,$7C,$60,$60,$7C,$3C,$30,$30,$38,$18,$1C,$0C,$0E,$06
       .byte $7E,$7E,$3C,$7E,$66,$66,$7E,$3C,$66,$66,$7E,$3C,$3C,$3E,$06,$06
       .byte $3E,$7E,$66,$66,$7E,$3C,$F3,$89,$09,$09,$11,$21,$41,$81,$89,$7B
       .byte $F6,$12,$02,$02,$23,$E1,$21,$01,$10,$F0,$32,$22,$25,$25,$E4,$44
       .byte $44,$44,$84,$8C,$21,$22,$52,$52,$92,$92,$12,$12,$12,$19,$C7,$24
       .byte $24,$24,$24,$24,$24,$24,$24,$CC,$B0,$90,$10,$10,$12,$1E,$12,$10
       .byte $11,$3F,$8E,$8A,$CA,$8A,$EA,$EC,$88,$C8,$88,$E8,$4E,$4A,$4A,$4A
       .byte $EE,$A8,$C8,$CC,$AA,$EC,$CE,$2A,$EA,$8A,$6A,$CC,$A2,$CE,$A8,$C6
       .byte $00,$08,$04,$04,$08,$10,$10,$54,$38,$38,$54,$10,$00,$00,$00,$00
       .byte $00,$10,$18,$3C,$44,$92,$01,$54,$54,$00,$00,$00,$3C,$66,$7A,$7E
       .byte $5E,$66,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$00,$7F,$FF,$FF,$3F,$04,$04,$0C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$FE,$FF,$FF,$FC,$60,$60,$60,$60,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$03,$0F,$17,$A5,$49,$0A,$12,$A5,$4A,$C0,$F0,$E8,$A5,$52,$D0
       .byte $A8,$25,$92,$7F,$FF,$FF,$19,$79,$00,$00,$00,$00,$FF,$FF,$FF,$FF
       .byte $F8,$D8,$D8,$D8,$00,$FC,$FE,$FF,$60,$78,$00,$00,$00,$00,$7F,$7F
       .byte $1F,$03,$00,$00,$00,$00,$00,$F0,$F8,$FC,$80,$00,$00,$00,$00,$00
       .byte $1F,$3F,$7E,$74,$60,$40,$00,$00,$00,$00,$00,$00,$00,$00,$C1,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E0,$F0,$78,$3C
       .byte $0C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FD,$F8,$6D,$6F,$60
       .byte $00,$00,$00,$FC,$FE,$FF,$B0,$B0,$30,$00,$00,$00,$3F,$7F,$7F,$FF
       .byte $6A,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$F6,$77,$70,$70,$20,$F0,$F0
       .byte $F8,$FF,$00,$80,$00,$00,$00,$1F,$3F,$7F,$FF,$0F,$01,$00,$00,$00
       .byte $FF,$FF,$FF,$FF,$C4,$C4,$04,$00,$00,$F8,$FC,$FE,$FF,$70,$00,$00
       .byte $00,$00,$7F,$7F,$F9,$F0,$E0,$08,$28,$42,$92,$FF,$FB,$C0,$00,$04
       .byte $8A,$D1,$41,$20,$F0,$F8,$FC,$3C,$06,$80,$4C,$24,$A2,$FF,$FF,$FF
       .byte $FF,$FF
LFE00: .byte $0D
LFE01: .byte $0D
LFE02: .byte $00,$1E,$0D,$0D,$0D,$0D,$0D,$0D,$1E,$00,$0D,$0D,$0D,$0D,$0D,$0D
       .byte $5C,$65,$0D,$0D,$0D,$0D,$0D,$0D,$65,$5C,$0D,$0D,$0D,$0D,$0D,$0D
       .byte $41,$4A,$53,$0D,$0D,$0D,$0D,$0D,$53,$4A,$41,$0D,$0D,$0D,$0D,$0D
       .byte $C5,$CE,$D7,$0D,$0D,$0D,$0D,$0D,$D7,$CE,$C5,$0D,$0D,$0D,$0D,$0D
       .byte $98,$A1,$0D,$0D,$0D,$0D,$0D,$0D,$A1,$98,$0D,$0D,$0D,$0D,$0D,$0D
       .byte $AA,$B3,$BC,$0D,$0D,$0D,$0D,$0D,$BC,$B3,$AA,$0D,$0D,$0D,$0D,$0D
       .byte $2F,$38,$0D,$0D,$0D,$0D,$0D,$0D,$38,$2F,$0D,$0D,$0D,$0D,$0D,$0D
       .byte $E0,$E9,$F2,$0D,$0D,$0D,$0D,$0D,$F2,$E9,$E0,$0D,$0D,$0D,$0D,$0D
       .byte $6B,$79,$87,$0D,$0D,$0D,$0D,$0D,$87,$79,$6B,$0D,$0D,$0D
LFE90: .byte $00,$00,$FF,$00
LFE94: .byte $00,$FF,$FF
LFE97: .byte $FF,$28,$1D,$10
LFE9B: .byte $01,$01,$FF,$FF,$01,$01
LFEA1: .byte $20,$40,$20,$40,$20,$40
LFEA7: .byte $9C,$9C
LFEA9: .byte $00,$00,$9C,$9C,$00,$00
LFEAF: .byte $00,$00,$01,$80,$02,$E0,$01,$80,$02,$FC,$00
LFEBA: .byte $01,$00,$00,$FE,$00,$FC,$00,$FE,$00,$00,$01
LFEC5: .byte $08,$04,$08,$08,$08,$0C,$08,$08,$08,$04,$0C
LFED0: .byte $9F,$2F,$3F,$FF,$9F,$FF,$3F,$FF,$9F,$7F,$9F
LFEDB: .byte $0F,$77,$77,$77,$77,$77,$27,$47,$27,$77,$0F
LFEE6: .byte $17,$07,$0F,$27,$17,$37,$0F,$1F,$0F,$0F,$17
LFEF1: .byte $FF,$FF,$06,$07,$08,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFF00: .byte $24,$3E,$1B,$09,$35,$12,$47,$47,$47,$06,$04,$02,$00,$00,$00,$00
       .byte $00,$00,$D6,$D4,$D2,$00,$00,$00,$00,$00,$00,$F4,$F2,$F0,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$0A,$60,$0A,$0A,$0A,$00,$0A,$0A,$0A,$00,$00
       .byte $64,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFF58: SEC            
       SBC    LFF6A,Y 
       STA    $B0,X   
       LDA    $C8,X   
       AND    #$F8    
       ORA    LFF6F,Y 
       STA    $C8,X   
       JMP    LF6DA   
LFF6A: .byte $00,$08,$10,$18,$20
LFF6F: .byte $04,$03,$02,$01,$00
LFF74: .byte $84,$86,$88
LFF77: .byte $82,$8A,$8C,$8E
LFF7B: .byte $80,$70,$60,$50,$40,$30,$20,$10,$00,$F0,$E0,$D0,$C0,$B0,$A0,$90
LFF8B: .byte $8E
LFF8C: .byte $3A,$38,$46,$46,$56,$46,$46,$56,$46,$56,$56,$56,$66,$56
LFF9A: .byte $66,$76,$76,$76,$76,$76,$76,$86,$76,$86
LFFA4: .byte $FF,$FF,$7F,$3F,$1F,$07
LFFAA: .byte $00,$0A,$14,$1E,$28,$32,$3C,$46,$50,$5A,$64,$6E,$78,$82,$8C,$96
LFFBA: .byte $04,$06,$07,$08,$0F,$0C,$01,$03
LFFC2: .byte $02,$0F,$0B,$04,$0D,$05,$0F,$06,$11,$08,$13,$09,$15,$08,$17,$07
       .byte $19,$06,$1B,$05,$1D,$06,$1F,$07,$21,$06,$23,$05,$25,$04,$27,$03
       .byte $29,$04,$2B,$05,$2D,$04,$30,$03,$34,$02,$38,$01
LFFEE: .byte $00,$C8,$3A,$42,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$41,$F2,$41,$F2
       .byte $41,$F2
