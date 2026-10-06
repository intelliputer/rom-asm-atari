; Disassembly of roms/Tetris 2600.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Tetris 2600.bin
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
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
GRP0    =  $1B
GRP1    =  $1C
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F800

START:
LF800: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF807: STA    $FF,X   
       DEX            
       BNE    LF807   
       STX    SWACNT  
       LDA    #$06    
       STA    $EA     
       LDA    #$15    
       STA    $E9     
       LDA    #$10    
       STA    $F0     
       STA    $EF     
LF81D: LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDA    #$FF    
       STA    $F5     
       STA    $F7     
       LDA    #$7D    
       STA    $F4     
       STA    $F6     
       LDA    #$F0    
       STA    $F8     
       LDA    #$0F    
       STA    $F9     
       LDA    $F1     
       LDX    #$C6    
       JSR    LFDBB   
       LDA    #$FF    
       STA    $F5     
       STA    $F7     
       LDA    #$4B    
       STA    $F4     
       STA    $F6     
       LDA    #$0F    
       STA    $F8     
       LDA    #$F0    
       STA    $F9     
       LDA    $F2     
       LDX    #$B0    
       JSR    LFDBB   
       LDA    $F3     
       BMI    LF87D   
       BEQ    LF87D   
       DEC    $F3     
       BNE    LF87D   
       LDX    #$04    
       LDA    #$00    
LF876: STA    $B8,X   
       STA    $CE,X   
       DEX            
       BPL    LF876   
LF87D: LDA    #$FF    
       STA    $DB     
LF881: LDA    INTIM   
       BNE    LF881   
       STA    VBLANK  
       LDA    #$C4    
       STA    COLUBK  
       LDA    #$CE    
       STA    COLUP0  
       LDA    #$00    
       STA    NUSIZ0  
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       LDA    $EF     
       AND    #$01    
       BEQ    LF8A3   
       JMP    LFA06   
LF8A3: STA    WSYNC   
       LDY    #$02    
LF8A7: DEY            
       BNE    LF8A7   
       NOP            
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FE    
       STA    GRP0    
       STA    RESP0   
       LDA    #$C0    
       STA    GRP0    
       STA    $0110   
       LDA    #$7F    
       STA    GRP0    
       STA    $0110   
       LDA    #$C3    
       STA    GRP0    
       STA    RESP0   
       STA    WSYNC   
       LDY    #$02    
LF8DB: DEY            
       BNE    LF8DB   
       NOP            
       NOP            
       NOP            
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       LDA    #$43    
       STA    GRP0    
       STA    RESP0   
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       LDA    #$81    
       STA    GRP0    
       STA    $0110   
       LDA    #$02    
       STA    GRP0    
       STA    $0110   
       STA    WSYNC   
       LDY    #$02    
LF90B: DEY            
       BNE    LF90B   
       NOP            
       LDA    #$18    
       STA    GRP0    
       STA    RESP0   
       LDA    #$18    
       STA    GRP0    
       STA    RESP0   
       LDA    #$18    
       STA    GRP0    
       STA    RESP0   
       LDA    #$01    
       STA    GRP0    
       STA    RESP0   
       LDA    #$80    
       STA    GRP0    
       STA    $0110   
       LDA    #$80    
       STA    GRP0    
       STA    $0110   
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       STA    WSYNC   
       LDY    #$02    
LF93F: DEY            
       BNE    LF93F   
       NOP            
       NOP            
       NOP            
       LDA    #$F8    
       STA    GRP0    
       STA    RESP0   
       LDA    #$7F    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FF    
       STA    GRP0    
       STA    $0110   
       LDA    #$02    
       STA    GRP0    
       STA    $0110   
       STA    WSYNC   
       LDY    #$02    
LF96F: DEY            
       BNE    LF96F   
       NOP            
       LDA    #$18    
       STA    GRP0    
       STA    RESP0   
       LDA    #$18    
       STA    GRP0    
       STA    RESP0   
       LDA    #$18    
       STA    GRP0    
       STA    RESP0   
       LDA    #$80    
       STA    GRP0    
       STA    RESP0   
       LDA    #$C3    
       STA    GRP0    
       STA    $0110   
       LDA    #$80    
       STA    GRP0    
       STA    $0110   
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       STA    WSYNC   
       LDY    #$02    
LF9A3: DEY            
       BNE    LF9A3   
       NOP            
       NOP            
       NOP            
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       LDA    #$4C    
       STA    GRP0    
       STA    RESP0   
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       LDA    #$18    
       STA    GRP0    
       STA    $0110   
       LDA    #$82    
       STA    GRP0    
       STA    $0110   
       STA    WSYNC   
       LDY    #$02    
LF9D3: DEY            
       BNE    LF9D3   
       NOP            
       LDA    #$3C    
       STA    GRP0    
       STA    RESP0   
       LDA    #$3C    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FE    
       STA    GRP0    
       STA    $0110   
       LDA    #$7F    
       STA    GRP0    
       STA    $0110   
       LDA    #$C3    
       STA    GRP0    
       STA    RESP0   
       JMP    LFB62   
LFA06: STA    WSYNC   
       LDY    #$02    
LFA0A: DEY            
       BNE    LFA0A   
       NOP            
       NOP            
       NOP            
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$7F    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$C3    
       STA    GRP0    
       STA    $0110   
       LDA    #$07    
       STA    GRP0    
       STA    $0110   
       STA    WSYNC   
       LDY    #$02    
LFA3A: DEY            
       BNE    LFA3A   
       NOP            
       LDA    #$99    
       STA    GRP0    
       STA    RESP0   
       LDA    #$99    
       STA    GRP0    
       STA    RESP0   
       LDA    #$99    
       STA    GRP0    
       STA    RESP0   
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       LDA    #$80    
       STA    GRP0    
       STA    $0110   
       LDA    #$81    
       STA    GRP0    
       STA    $0110   
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       STA    WSYNC   
       LDY    #$02    
LFA6E: DEY            
       BNE    LFA6E   
       NOP            
       NOP            
       NOP            
       LDA    #$88    
       STA    GRP0    
       STA    RESP0   
       LDA    #$43    
       STA    GRP0    
       STA    RESP0   
       LDA    #$80    
       STA    GRP0    
       STA    RESP0   
       LDA    #$80    
       STA    GRP0    
       STA    RESP0   
       LDA    #$81    
       STA    GRP0    
       STA    $0110   
       LDA    #$02    
       STA    GRP0    
       STA    $0110   
       STA    WSYNC   
       LDY    #$02    
LFA9E: DEY            
       BNE    LFA9E   
       NOP            
       LDA    #$18    
       STA    GRP0    
       STA    RESP0   
       LDA    #$18    
       STA    GRP0    
       STA    RESP0   
       LDA    #$18    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FE    
       STA    GRP0    
       STA    $0110   
       LDA    #$80    
       STA    GRP0    
       STA    $0110   
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       STA    WSYNC   
       LDY    #$02    
LFAD2: DEY            
       BNE    LFAD2   
       NOP            
       NOP            
       NOP            
       LDA    #$88    
       STA    GRP0    
       STA    RESP0   
       LDA    #$70    
       STA    GRP0    
       STA    RESP0   
       LDA    #$01    
       STA    GRP0    
       STA    RESP0   
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       LDA    #$18    
       STA    GRP0    
       STA    $0110   
       LDA    #$02    
       STA    GRP0    
       STA    $0110   
       STA    WSYNC   
       LDY    #$02    
LFB02: DEY            
       BNE    LFB02   
       NOP            
       LDA    #$18    
       STA    GRP0    
       STA    RESP0   
       LDA    #$18    
       STA    GRP0    
       STA    RESP0   
       LDA    #$99    
       STA    GRP0    
       STA    RESP0   
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       LDA    #$C3    
       STA    GRP0    
       STA    $0110   
       LDA    #$81    
       STA    GRP0    
       STA    $0110   
       LDA    #$81    
       STA    GRP0    
       STA    RESP0   
       STA    WSYNC   
       LDY    #$02    
LFB36: DEY            
       BNE    LFB36   
       NOP            
       NOP            
       NOP            
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$C3    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FE    
       STA    GRP0    
       STA    RESP0   
       LDA    #$FF    
       STA    GRP0    
       STA    RESP0   
       LDA    #$3C    
       STA    GRP0    
       STA    $0110   
       LDA    #$FE    
       STA    GRP0    
       STA    $0110   
LFB62: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    COLUBK  
       LDY    #$0D    
LFB70: STA    WSYNC   
       DEY            
       BNE    LFB70   
       LDA    #$1E    
       STA    $DA     
       LDA    #$04    
       STA    COLUP0  
       LDA    #$04    
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       STA    WSYNC   
       LDX    #$05    
LFB8D: DEX            
       BNE    LFB8D   
       STA    RESP0   
       STA    RESP1   
       LDY    #$04    
LFB96: DEY            
       BNE    LFB96   
       LDA    #$11    
       STA    GRP0    
       LDA    #$22    
       STA    GRP1    
       LDA    #$16    
       STA    $D9     
LFBA5: LDA    #$00    
       STA    WSYNC   
       STA    COLUBK  
       STA    PF1     
       STA    PF2     
       LDA    $DA     
       CLC            
       ADC    #$10    
       STA    $01DA   
       LDX    $DB     
       INX            
       LDY    #$04    
       STY    COLUBK  
       LDA    $AC,X   
       LDY    $C2,X   
       LDX    #$00    
       STX    $0109   
       STA    PF1     
       STY    PF2     
       INC    $DB     
       LDA    #$07    
       STA    $D8     
LFBD1: LDY    #$04    
       STA    WSYNC   
       LDA    $DA     
       STA    COLUPF  
       LDX    $D9     
       LDA    $7F,X   
       STA    PF1     
       LDA    $95,X   
       STA    PF2     
       LDX    $DB     
       STY    $0109   
       LDA    $AC,X   
       LDY    $C2,X   
       LDX    #$00    
       STX    $0109   
       LDX    #$1E    
       STX    COLUPF  
       STA    PF1     
       STY    PF2     
       DEC    $D8     
       BNE    LFBD1   
       DEC    $D9     
       BNE    LFBA5   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$24    
       STA    TIM64T  
       LDA    $F3     
       BPL    LFC15   
       DEC    $EF     
       JMP    LFCD0   
LFC15: DEC    $EF     
       BNE    LFC7C   
       LDA    $F0     
       STA    $EF     
LFC1D: JSR    LFDA5   
       LDA    $E9     
       STA    $EC     
       DEC    $E9     
       JSR    LFD58   
       BCS    LFC33   
       JSR    LFD8E   
       BCS    LFC33   
       JMP    LFCCD   
LFC33: LDA    $EC     
       STA    $E9     
       JSR    LFD58   
       JSR    LFDA5   
       LDX    $EE     
       LDA    LFECD,X 
       STA    $EB     
       INX            
       TXA            
       AND    #$3F    
       STA    $EE     
       LDA    #$06    
       STA    $EA     
       LDA    #$15    
       STA    $E9     
       JSR    LFD58   
       JSR    LFD8E   
       BCS    LFC69   
       LDX    #$04    
       LDA    #$00    
LFC5E: STA    $DB,X   
       STA    $DF,X   
       STA    $E3,X   
       DEX            
       BNE    LFC5E   
       BEQ    LFCD0   
LFC69: LDX    #$0A    
LFC6B: LDA    LFF35,X 
       STA    $B5,X   
       LDA    LFF40,X 
       STA    $CB,X   
       DEX            
       BPL    LFC6B   
       STX    $F3     
       BMI    LFCD0   
LFC7C: LDA    $EF     
       AND    #$03    
       CMP    #$02    
       BNE    LFCE9   
       LDA    SWCHA   
       AND    #$20    
       BEQ    LFC1D   
       JSR    LFDA5   
       LDA    $EB     
       STA    $EC     
       LDA    $EA     
       STA    $ED     
       BIT    SWCHA   
       BPL    LFCA1   
       BVS    LFCA3   
       DEC    $EA     
       BPL    LFCA3   
LFCA1: INC    $EA     
LFCA3: BIT    INPT4   
       BMI    LFCB8   
       LDA    $EB     
       AND    #$F0    
       STA    $EB     
       LDA    $EC     
       CLC            
       ADC    #$04    
       AND    #$0F    
       ORA    $EB     
       STA    $EB     
LFCB8: JSR    LFD58   
       BCS    LFCC2   
       JSR    LFD8E   
       BCC    LFCCD   
LFCC2: LDA    $EC     
       STA    $EB     
       LDA    $ED     
       STA    $EA     
       JSR    LFD58   
LFCCD: JSR    LFDA5   
LFCD0: LDY    INTIM   
       BNE    LFCD0   
       LDA    SWCHB   
       AND    #$01    
       BEQ    LFCDF   
       JMP    LF81D   
LFCDF: LDA    SWCHB   
       AND    #$01    
       BEQ    LFCDF   
       JMP    LF800   
LFCE9: JSR    LFDA5   
       LDX    #$00    
       LDY    #$00    
LFCF0: LDA    $80,X   
       CMP    #$3F    
       BNE    LFCFF   
       LDA    $96,X   
       CMP    #$0F    
       BNE    LFCFF   
       INX            
       BNE    LFD0B   
LFCFF: LDA    $80,X   
       STA.wy $0080,Y 
       LDA    $96,X   
       STA.wy $0096,Y 
       INY            
       INX            
LFD0B: CPX    #$16    
       BNE    LFCF0   
       LDA    #$00    
       TAX            
LFD12: CPY    #$16    
       BEQ    LFD20   
       STA.wy $0080,Y 
       STA.wy $0096,Y 
       INY            
       INX            
       BNE    LFD12   
LFD20: TXA            
       BEQ    LFD52   
       CMP    #$04    
       BNE    LFD29   
       LDA    #$10    
LFD29: SED            
       CLC            
       ADC    $F1     
       STA    $F1     
       LDA    $F2     
       ADC    #$00    
       STA    $F2     
       CLD            
       TXA            
       STA    $E8     
       ASL            
       ASL            
       ADC    $E8     
       TAY            
       LDX    #$04    
LFD40: LDA    LFF0C,Y 
       STA    $B8,X   
       LDA    LFF20,Y 
       STA    $CE,X   
       DEY            
       DEX            
       BPL    LFD40   
       LDA    #$1E    
       STA    $F3     
LFD52: JSR    LFDA5   
       JMP    LFCD0   
LFD58: LDX    #$04    
       LDY    $EB     
LFD5C: LDA    LFE5D,Y 
       ORA    #$F0    
       SEC            
       ADC    $E9     
       BMI    LFD8C   
       STA    $DB,X   
       LDA    LFE5D,Y 
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       ADC    $EA     
       STY    $E8     
       TAY            
       LDA    LFE40,Y 
       BMI    LFD8C   
       STA    $DF,X   
       LDA    LFE4D,Y 
       BMI    LFD8C   
       STA    $E3,X   
       LDY    $E8     
       INY            
       DEX            
       BNE    LFD5C   
       CLC            
       RTS            

LFD8C: SEC            
       RTS            

LFD8E: LDY    #$04    
LFD90: LDX    $DB,Y   
       LDA.wy $00DF,Y 
       AND    $80,X   
       BNE    LFD8C   
       LDA.wy $00E3,Y 
       AND    $96,X   
       BNE    LFD8C   
       DEY            
       BNE    LFD90   
       CLC            
       RTS            

LFDA5: LDY    #$04    
LFDA7: LDX    $DB,Y   
       LDA.wy $00DF,Y 
       EOR    $80,X   
       STA    $80,X   
       LDA.wy $00E3,Y 
       EOR    $96,X   
       STA    $96,X   
       DEY            
       BNE    LFDA7   
       RTS            

LFDBB: TAY            
       AND    #$0F    
       STA    $E8     
       ASL            
       ASL            
       ADC    $E8     
       ADC    $F4     
       STA    $F4     
       TYA            
       AND    #$F0    
       LSR            
       LSR            
       STA    $E8     
       LSR            
       LSR            
       ADC    $E8     
       ADC    $F6     
       STA    $F6     
       LDY    #$04    
LFDD9: LDA    ($F4),Y 
       AND    $F8     
       STA    $E8     
       LDA    ($F6),Y 
       AND    $F9     
       ORA    $E8     
       STA    VSYNC,X 
       DEX            
       DEY            
       BPL    LFDD9   
       RTS            

LFDEC: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF
LFE40: .byte $FF,$FF,$FF,$20,$10,$08,$04,$02,$01,$00,$00,$00,$00
LFE4D: .byte $FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$01,$02,$04,$08,$FF,$FF,$FF
LFE5D: .byte $0F,$1F,$0E,$1E,$0F,$1F,$0E,$1E,$0F,$1F,$0E,$1E,$0F,$1F,$0E,$1E
       .byte $1F,$2F,$0E,$1E,$1F,$1E,$2E,$2D,$1F,$2F,$0E,$1E,$1F,$1E,$2E,$2D
       .byte $0F,$1F,$1E,$2E,$2F,$1E,$2E,$1D,$0F,$1F,$1E,$2E,$2F,$1E,$2E,$1D
       .byte $1F,$0E,$1E,$2E,$1F,$1E,$2E,$1D,$0E,$1E,$2E,$1D,$1F,$0E,$1E,$1D
       .byte $0E,$1E,$2E,$2D,$1F,$1E,$0D,$1D,$0F,$0E,$1E,$2E,$1F,$2F,$1E,$1D
       .byte $0E,$1E,$2E,$0D,$0F,$1F,$1E,$1D,$2F,$0E,$1E,$2E,$1F,$1E,$1D,$2D
       .byte $0E,$1E,$2E,$3E,$1F,$1E,$1D,$1C,$0E,$1E,$2E,$3E,$1F,$1E,$1D,$1C
LFECD: .byte $00,$10,$14,$20,$24,$30,$34,$38,$3C,$40,$44,$50,$54,$60,$64,$00
       .byte $00,$10,$14,$20,$24,$30,$34,$38,$3C,$40,$44,$50,$54,$60,$64,$00
       .byte $00,$10,$14,$20,$24,$30,$34,$38,$3C,$40,$44,$50,$54,$60,$64,$00
       .byte $00,$10,$14,$20,$24,$30,$34,$38,$3C,$40,$44,$50,$54,$60,$64
LFF0C: .byte $00,$EE,$AA,$AA,$AA,$EA,$E9,$49,$4D,$4D,$4F,$C1,$81,$B5,$A5,$A5
       .byte $DB,$92,$9A,$92
LFF20: .byte $9A,$07,$01,$07,$01,$07,$0E,$02,$0E,$02,$0E,$6B,$2A,$6B,$28,$68
       .byte $C0,$40,$D6,$92,$D2
LFF35: .byte $EE,$8A,$AE,$AA,$EA,$00,$EA,$AA,$AA,$AA,$EE
LFF40: .byte $EF,$2B,$EB,$29,$E9,$00,$77,$51,$77,$31,$57,$EE,$AA,$AA,$AA,$EE
       .byte $44,$CC,$44,$44,$EE,$EE,$22,$EE,$88,$EE,$EE,$22,$66,$22,$EE,$AA
       .byte $AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88,$EE,$AA,$EE,$EE,$22
       .byte $22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE,$22,$EE,$77,$55,$55
       .byte $55,$77,$22,$33,$22,$22,$77,$77,$44,$77,$11,$77,$77,$44,$66,$44
       .byte $77,$55,$55,$77,$44,$44,$77,$11,$77,$44,$77,$77,$11,$77,$55,$77
       .byte $77,$44,$44,$44,$44,$77,$55,$77,$55,$77,$77,$55,$77,$44,$77,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$F8,$00,$F8
