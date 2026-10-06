; Disassembly of roms/X-Man (1).bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/X-Man (1).bin
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
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXP0FB  =  $32
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: JMP    LFA23   

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
LF008: STA    VSYNC,X 
       INX            
       BNE    LF008   
LF00D: LDX    #$FF    
       TXS            
       STX    $92     
       INX            
       STX    REFP0   
       STX    REFP1   
       INX            
       STX    $90     
       STX    $F6     
LF01C: LDX    #$05    
       STX    CTRLPF  
       STX    $87     
       LDA    LFE1C,X 
       STA    $9B     
       LDX    #$FF    
       TXS            
       STX    $B6     
       STX    $B7     
       INX            
       LDA    $F6     
       AND    #$01    
       BNE    LF000   
       STX    $90     
       STX    $B0     
       STX    $A4     
       STX    $A3     
       LDA    #$13    
       STA    $B1     
       LDA    $B5     
       STA    $88     
       JSR    LFB6A   
LF048: LDA    INTIM   
       BNE    LF048   
       STA    WSYNC   
       LDA    #$FC    
       STA    TIM64T  
       STA    CXCLR   
       STA    VBLANK  
       LDA    #$BB    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       SED            
       CLC            
       LDA    $A3     
       ADC    $A0     
       STA    $A3     
       LDA    #$00    
       STA    $A0     
       ADC    $A4     
       STA    $A4     
       BCC    LF078   
       LDA    #$99    
       STA    $A4     
       STA    $A3     
LF078: CLD            
       STA    WSYNC   
       JSR    LFBD6   
       LDA    $BC     
       ROR            
       BCS    LF099   
       LDA    $90     
       AND    #$01    
       BNE    LF099   
       LDA    #$42    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $8E     
       STA    $A1     
       LDA    #$AA    
       STA    $A2     
       BNE    LF0A1   
LF099: LDA    $A3     
       STA    $A1     
       LDA    $A4     
       STA    $A2     
LF0A1: JSR    LFA39   
       LDA    $F6     
       LSR            
       BCC    LF0AC   
       JMP    LF901   
LF0AC: LDA    $90     
       AND    #$01    
       BNE    LF108   
       LDA    $94     
       STA    COLUP1  
       LDA    #$30    
       STA    NUSIZ1  
       LDA    #$98    
       LDX    #$03    
       JSR    LFBF2   
       LDA    $81     
       LDX    #$00    
       JSR    LFBF2   
       LDA    $84     
       LDX    #$01    
       JSR    LFBF2   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       LDA    $95     
       STA    COLUPF  
       LDY    #$05    
       JSR    LFC11   
       LDX    #$1E    
       TXS            
       LDA    #$80    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    $B3     
       STA    REFP1   
       LDA    $B2     
       STA    REFP0   
       LDX    #$0C    
       STX    $86     
       CPX    $83     
       BNE    LF10B   
       LDA    $9A     
LF103: STA    $96     
       JMP    LF120   
LF108: JMP    LF569   
LF10B: LDA    #$60    
       JMP    LF103   
LF110: LDA    #$60    
       STA    $96     
       NOP            
       JMP    LF194   
LF118: LDA    #$60    
       STA    $98     
       NOP            
       JMP    LF13B   
LF120: STA    WSYNC   
       LDA    $C0,X   
       STA    PF1     
       LDA    $CD,X   
       STA    PF2     
       TXA            
       EOR    $9E     
       PHP            
       LDA    $86     
       CMP    $85     
       BNE    LF118   
       NOP            
       LDA    $9B     
       LDA    $9B     
       STA    $98     
LF13B: LDA    $DA,X   
       STA    PF2     
       LDA    $E7,X   
       STA    PF1     
       CPX    $9F     
       BNE    LF14B   
       LDA    #$02    
       STA    ENAM1   
LF14B: LDY    #$09    
       PLA            
LF14E: STA    WSYNC   
       LDA    $C0,X   
       STA    PF1     
       LDA    ($96),Y 
       STA    GRP0    
       LDA    ($98),Y 
       STA    GRP1    
       LDA    $CD,X   
       STA    PF2     
       LDA    LFFF2,Y 
       STA    COLUP0  
       NOP            
       NOP            
       LDA    $DA,X   
       STA    PF2     
       LDA    $E7,X   
       STA    PF1     
       DEY            
       BPL    LF14E   
       INY            
       NOP            
       NOP            
       NOP            
       NOP            
       STY    GRP1    
       STA    WSYNC   
       LDA    $C0,X   
       STA    PF1     
       LDA    $CD,X   
       STA    PF2     
       STY    GRP0    
       DEC    $86     
       LDA    $86     
       CMP    $83     
       BNE    LF110   
       LDA    $9A     
       STA    $BD     
       STA    $96     
       NOP            
LF194: LDA    $DA,X   
       STA    PF2     
       LDA    $E7,X   
       STA    PF1     
       LDA    #$00    
       STA    ENAM1   
       DEX            
       BPL    LF1A7   
       TXS            
       JMP    LF1AA   
LF1A7: JMP    LF120   
LF1AA: STA    WSYNC   
       STA    HMCLR   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$75    
       LDX    #$00    
       JSR    LFBF2   
       STA    WSYNC   
       JSR    LF5F0   
       LDA    #$12    
       STA    $96     
       LDY    #$03    
       JSR    LFC11   
       STY    REFP0   
       LDY    #$09    
       LDA    $B1     
       BMI    LF1EC   
       STA    NUSIZ0  
LF1D7: STA    WSYNC   
       LDA    ($96),Y 
       STA    GRP0    
       LDA    LFFF2,Y 
       STA    COLUP0  
       DEY            
       BPL    LF1D7   
       STA    WSYNC   
       INY            
       STY    GRP0    
       STA    WSYNC   
LF1EC: LDA    CXP0FB  
       BPL    LF202   
       JSR    LF405   
       LDA    $80     
       STA    $81     
       LDA    $82     
       STA    $83     
       LDA    #$0C    
       LDX    #$01    
       JSR    LFB64   
LF202: LDA    $81     
       STA    $80     
       LDA    $83     
       STA    $82     
       INC    $89     
       INC    $8B     
       JSR    LFAAC   
       LDA    SWCHB   
       ROL            
       BPL    LF260   
       LDA    $F6     
       AND    #$10    
       BEQ    LF228   
       LDA    $B5     
       STA    COLUBK  
       EOR    #$FF    
       STA    $95     
       JMP    LF2FA   
LF228: BIT    CXM1P   
       BVC    LF22E   
       INC    $87     
LF22E: LDA    $BC     
       BPL    LF238   
LF232: JMP    LF2DC   
LF235: JMP    LF2BD   
LF238: ROR            
       BCS    LF235   
       DEC    $8F     
       LDA    $8F     
       CMP    #$FF    
       BNE    LF24A   
       JSR    LFAF4   
       LDA    #$3C    
       STA    $8F     
LF24A: LDA    CXPPMM  
       BMI    LF27B   
       LDA    CXM1P   
       BMI    LF232   
       LDA    $8E     
       BEQ    LF27B   
       CMP    #$10    
       BCC    LF263   
LF25A: JSR    LF36C   
       JSR    LF42D   
LF260: JMP    LF048   
LF263: LDA    #$20    
       EOR    $9E     
       TAX            
       STX    $9E     
       INX            
       STX    $9F     
       LDA    $B9     
       BNE    LF25A   
       LDA    #$14    
       LDX    #$01    
       JSR    LFB64   
       JMP    LF25A   
LF27B: LDA    $B5     
       STA    $95     
       LDA    #$10    
       STA    $8F     
       LDA    $B6     
       BEQ    LF296   
       CMP    #$FF    
       BNE    LF2AF   
       LDA    #$80    
       STA    $B6     
       LDA    #$02    
       LDX    #$00    
       JMP    LFB5E   
LF296: LDA    #$FF    
       STA    $B6     
       LDA    $B1     
       BMI    LF2BD   
       AND    #$18    
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFBC,X 
       STA    $B1     
       JSR    LFB6A   
       JMP    LF260   
LF2AF: LDA    #$20    
       STA    $9E     
       STA    $9F     
LF2B5: DEC    $B6     
       JMP    LF048   
LF2BA: .byte $4C,$2A,$F3
LF2BD: ROR    $BC     
       SEC            
       ROL    $BC     
       LDA    #$20    
       STA    $F6     
       LDA    $B6     
       BEQ    LF2D9   
       CMP    #$FF    
       BNE    LF2B5   
       LDA    #$FE    
       STA    $B6     
       LDA    #$32    
       LDX    #$00    
       JMP    LFB5E   
LF2D9: JMP    LF00D   
LF2DC: LDA    $90     
       CMP    #$06    
       BCC    LF301   
       LDA    $F6     
       ASL            
       BCS    LF301   
       LDA    $F6     
       AND    #$10    
       BNE    LF2FA   
       LDA    #$10    
       STA    $F6     
       LDX    #$01    
       STX    $B6     
       LDA    #$37    
       JMP    LFB5E   
LF2FA: INC    $B6     
       BEQ    LF326   
       JMP    LF048   
LF301: LDA    $B5     
       AND    #$FC    
       STA    $95     
       ROL    $BC     
       SEC            
       ROR    $BC     
       LDA    $B6     
       BEQ    LF32A   
       CMP    #$FF    
       BNE    LF2B5   
       LDA    #$80    
       STA    $B6     
       LDA    $8E     
       STA    $A0     
       JSR    LFBCE   
       LDA    #$07    
       LDX    #$00    
       JMP    LFB5E   
LF326: LDA    #$02    
       STA    $F6     
LF32A: LDX    #$FF    
       STX    $B6     
       INX            
       STX    $F4     
       STX    $B0     
       STX    $8C     
LF335: LDA    $F6     
       AND    #$02    
       BEQ    LF33F   
       LDA    #$10    
       BNE    LF341   
LF33F: LDA    #$30    
LF341: STA    $8E     
       LDA    $90     
       CMP    #$06    
       BNE    LF351   
       LDA    #$02    
       STA    $F6     
LF34D: LDA    #$00    
       STA    $90     
LF351: LSR            
       AND    #$03    
       TAX            
       STX    $91     
       LDA    #$0A    
       STA    $81     
       LDA    #$FC    
       STA    $9D     
       LDA    LFDF5,X 
       STA    $9C     
       INC    $90     
       JSR    LFBC0   
       JMP    LF048   
LF36C: LDA    $89     
       CMP    #$03    
       BCC    LF391   
       LDA    #$00    
       STA    $89     
       INC    $8A     
       LDA    SWCHA   
       ROL            
       BCC    LF3BC   
       ROL            
       BCC    LF3D4   
       ROL            
       BCC    LF3A7   
       ROL            
       BCC    LF392   
       LDA    $8A     
       CMP    #$04    
       BCC    LF391   
       LDA    #$00    
       STA    $8A     
LF391: RTS            

LF392: LDA    $8A     
       CMP    #$04    
       BCC    LF391   
       LDA    #$00    
       STA    $8A     
       LDA    $83     
       CMP    #$0C    
       BCS    LF3EC   
       INC    $83     
       JMP    LF3EF   
LF3A7: LDA    $8A     
       CMP    #$04    
       BCC    LF391   
       LDA    #$00    
       STA    $8A     
       LDA    #$00    
       CMP    $83     
       BCS    LF3EC   
       DEC    $83     
       JMP    LF3EF   
LF3BC: LDA    #$00    
       STA    $B2     
       LDA    $81     
       CMP    #$5D    
       BEQ    LF3EC   
       JSR    LF416   
       CLC            
       ADC    #$01    
       JSR    LF411   
       STA    $81     
       JMP    LF3EF   
LF3D4: LDA    #$08    
       STA    $B2     
       LDA    $81     
       CMP    #$55    
       BEQ    LF3EC   
       JSR    LF416   
       SEC            
       SBC    #$01    
       JSR    LF411   
       STA    $81     
       JMP    LF3EF   
LF3EC: JSR    LF405   
LF3EF: LDA    $B8     
       BNE    LF3FA   
       LDA    #$0F    
       LDX    #$00    
       JSR    LFB64   
LF3FA: LDA    $9A     
       CMP    #$08    
       BEQ    LF40C   
       LDA    #$08    
       STA    $9A     
       RTS            

LF405: LDA    $BC     
       ORA    #$08    
       STA    $BC     
       RTS            

LF40C: LDA    #$12    
       STA    $9A     
       RTS            

LF411: EOR    #$07    
       JMP    LF418   
LF416: EOR    #$70    
LF418: STA    $BD     
       JSR    LF428   
       STA    $F5     
       LDA    $BD     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F5     
       RTS            

LF428: LSR            
       LSR            
       LSR            
       LSR            
LF42C: RTS            

LF42D: LDA    $8B     
       CMP    #$02    
       BCC    LF42C   
       LDA    #$00    
       STA    $8B     
       INC    $8C     
       LDA    $84     
       LDX    #$0F    
LF43D: CMP    LFFA0,X 
       BEQ    LF459   
       DEX            
       BPL    LF43D   
       LDA    $B3     
       AND    #$02    
       BNE    LF4B0   
       BEQ    LF4C7   
LF44D: LDA    $B3     
       JMP    LF46A   
LF452: LDA    $8C     
       ORA    #$80    
       STA    $8C     
       RTS            

LF459: LDA    #$FF    
       BIT    $8C     
       BMI    LF44D   
       LDA    $B3     
       CLC            
       AND    #$0B    
       ADC    #$03    
       AND    #$0B    
       STA    $B3     
LF46A: AND    #$03    
       CMP    #$00    
       BEQ    LF4B3   
       CMP    #$01    
       BEQ    LF493   
       CMP    #$02    
       BEQ    LF4D2   
       LDA    $8C     
       CMP    #$08    
       BCC    LF452   
       LDA    #$00    
       STA    $8C     
       CMP    $85     
       BEQ    LF4F6   
       LDY    $85     
       DEY            
       JSR    LF53E   
       BNE    LF4F6   
       DEC    $85     
       JMP    LF50D   
LF493: LDA    $8C     
       CMP    #$08    
       BCC    LF452   
       LDA    #$00    
       STA    $8C     
       LDA    $85     
       CMP    #$0C    
       BCS    LF4F6   
       LDY    $85     
       INY            
       JSR    LF53E   
       BNE    LF4F6   
       INC    $85     
       JMP    LF50D   
LF4B0: JMP    LF4E6   
LF4B3: LDA    $B3     
       ORA    #$08    
       STA    $B3     
       LDA    $84     
       CMP    #$5D    
       BEQ    LF4F6   
       INX            
       LDY    $85     
       JSR    LF53E   
       BNE    LF4F6   
LF4C7: LDA    $84     
       JSR    LF416   
       CLC            
       ADC    #$01    
       JMP    LF4EE   
LF4D2: LDA    $B3     
       AND    #$03    
       STA    $B3     
       LDA    #$55    
       CMP    $84     
       BEQ    LF4F6   
       DEX            
       LDY    $85     
       JSR    LF53E   
       BNE    LF4F6   
LF4E6: LDA    $84     
       JSR    LF416   
       SEC            
       SBC    #$01    
LF4EE: JSR    LF411   
       STA    $84     
       JMP    LF50D   
LF4F6: LDA    $B3     
       CLC            
       AND    #$0B    
       ADC    #$02    
       AND    #$0B    
       STA    $B3     
       JMP    LF527   
LF504: .byte $A5,$B3,$18,$69,$01,$29,$0B,$85,$B3
LF50D: LDA    $8F     
       AND    #$10    
       BNE    LF527   
       LDA    $B5     
       AND    #$FC    
       CMP    #$48    
       BNE    LF527   
       LDA    $B9     
       LDA    #$12    
       LDX    #$01    
       JSR    LFB64   
       JMP    LF4F6   
LF527: LDA    $B5     
       AND    #$0E    
       CMP    #$04    
       BNE    LF53D   
       LDA    $87     
       EOR    #$01    
       AND    #$07    
       STA    $87     
       TAX            
       LDA    LFE1C,X 
       STA    $9B     
LF53D: RTS            

LF53E: STX    $B4     
       TXA            
       AND    #$03    
       TAX            
       LDA    $B4     
       AND    #$04    
       BNE    LF563   
       LDA    LFFB0,X 
LF54D: STA    $F5     
       LSR    $B4     
       LSR    $B4     
       LDX    $B4     
       LDA    #$00    
       STA    $BE     
       LDA    LFFB8,X 
       STA    $BD     
       LDA    ($BD),Y 
       AND    $F5     
       RTS            

LF563: LDA    LFFB4,X 
       JMP    LF54D   
LF569: STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$FC    
       STA    $97     
       STA    $99     
       LDA    #$25    
       STA    $96     
       LDA    $81     
       LDX    #$00    
       JSR    LFBF2   
       LDA    $81     
       LDX    #$01    
       JSR    LFBF2   
       STA    HMOVE   
       LDA    #$12    
       STA    COLUP0  
       LDA    #$19    
       STA    COLUP1  
       LDA    #$5B    
       STA    COLUPF  
       LDA    $F4     
       AND    #$20    
       BEQ    LF5A5   
       LDA    $B5     
       AND    #$7C    
       STA    COLUP1  
       EOR    #$FF    
       STA    COLUPF  
LF5A5: LDA    #$07    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$1C    
       LDX    #$03    
       STA    HMCLR   
LF5B1: STA    WSYNC   
       LDA    ($96),Y 
       STA    GRP1    
       LDA    LFCFA,X 
       STA    GRP0    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       DEY            
       DEX            
       BPL    LF5B1   
       INX            
       STX    GRP0    
       LDY    $91     
       LDA    LFFEF,Y 
       STA    $85     
       LDA    LFDF8,Y 
       SEC            
       SBC    #$08    
       STA    $98     
       LDA    LFFEC,Y 
       LDX    #$00    
       JSR    LFBF2   
       STA    HMOVE   
       LDY    $91     
       LDX    LFDFB,Y 
       LDY    #$18    
       LDA    #$1D    
       STA    COLUP0  
       JMP    LF607   
LF5F0: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       RTS            

LF5FD: LDA    #$00    
       JMP    LF626   
LF602: LDA    $C0,X   
       JMP    LF61D   
LF607: LDA    $C0,X   
       STA    WSYNC   
       STA    PF1     
       LDA    $D1,X   
       STA    PF2     
       LDA    ($96),Y 
       STA    GRP1    
       CPY    #$12    
       BCS    LF602   
       LDA    ($98),Y 
       STA    GRP0    
LF61D: CPY    #$09    
       BCS    LF5FD   
       LDA    #$1A    
       STA    $98     
       NOP            
LF626: LDA    $E2,X   
       STA    PF2     
       LDA    #$00    
       STA    PF1     
       STA    WSYNC   
       JSR    LFAFE   
       STA    WSYNC   
       JSR    LFAFE   
       STA    WSYNC   
       JSR    LFAFE   
       STA    WSYNC   
       LDA    $C0,X   
       STA    PF1     
       LDA    $D1,X   
       STA    PF2     
       JSR    LFB12   
       LDA    $E2,X   
       STA    PF2     
       LDA    #$00    
       STA    PF1     
       CPY    $85     
       BCS    LF65A   
       DEX            
       BPL    LF65A   
       INX            
LF65A: DEY            
       BPL    LF607   
       STA    WSYNC   
       JSR    LF5F0   
       JSR    LFC0F   
       STA    HMCLR   
       LDA    #$42    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LFBD6   
       LDA    $8E     
       STA    $A1     
       LDA    #$AA    
       STA    $A2     
       JSR    LFA39   
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$48    
       STA    COLUP0  
       LDA    #$A8    
       STA    COLUP1  
       LDA    #$FE    
       STA    $97     
       STA    $99     
       LDY    #$02    
       JSR    LFC11   
       LDA    #$DF    
       STA    $96     
       LDA    #$DA    
       STA    $98     
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$06    
       STA    WSYNC   
LF6A2: DEX            
       NOP            
       BNE    LF6A2   
       STA    RESP1   
       JSR    LFB16   
       STA    RESP0   
       LDX    $B0     
       LDA    LFEE4,X 
       STA    COLUPF  
       LDY    #$04    
LF6B6: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    ($96),Y 
       STA    GRP0    
       LDA    ($98),Y 
       STA    GRP1    
       JSR    LFB18   
       LDA    $9E     
       STA    PF2     
       LDA    $9F     
       STA    PF1     
       DEY            
       BPL    LF6B6   
       STA    WSYNC   
       JSR    LF5F0   
       STA    $9E     
       STA    $9F     
       LDY    $B0     
       BEQ    LF6ED   
       BMI    LF6ED   
LF6E3: SEC            
       ROR    $9E     
       BCC    LF6EA   
       ROL    $9F     
LF6EA: DEY            
       BNE    LF6E3   
LF6ED: JSR    LFAAC   
       LDX    $91     
       LDY    LFFD7,X 
       LDA    $B5     
       AND    #$01    
       BEQ    LF705   
       LDA    LFFCE,X 
       PHA            
       LDA    LFFD1,X 
       JMP    LF70C   
LF705: LDA    LFFC8,X 
       PHA            
       LDA    LFFCB,X 
LF70C: STA.wy $00C0,Y 
       LDY    LFFD4,X 
       PLA            
       STA.wy $00C0,Y 
       LDA    SWCHB   
       ROL            
       BPL    LF778   
       LDA    $F4     
       BMI    LF72F   
       DEC    $8F     
       LDA    $8F     
       CMP    #$FF    
       BNE    LF72F   
       JSR    LFAF4   
       LDA    #$3C    
       STA    $8F     
LF72F: JSR    LF8C8   
       LDA    $F4     
       BMI    LF7A8   
       LDA    $8E     
       BEQ    LF7A8   
       INC    $8A     
       INC    $8B     
       LDA    $8A     
       CMP    #$04    
       BCC    LF778   
       LDA    #$00    
       STA    $8A     
       LDA    $F6     
       AND    #$02    
       BNE    LF7A2   
       LDA    SWCHA   
       AND    #$80    
       BEQ    LF75E   
       LDA    SWCHA   
       AND    #$40    
       BEQ    LF77B   
       BNE    LF7CD   
LF75E: JSR    LFC01   
       LDA    $81     
       JSR    LF416   
       CLC            
       ADC    #$03    
       LDX    $91     
       CMP    LFFDA,X 
       BCS    LF7C0   
       JSR    LF411   
       STA    $81     
       JMP    LF7CD   
LF778: JMP    LF048   
LF77B: JSR    LFC08   
       LDA    $81     
       JSR    LF416   
       SEC            
       SBC    #$03    
       LDX    $91     
       CMP    LFFDD,X 
       BCC    LF7C7   
       JSR    LF411   
       STA    $81     
       LDA    $F4     
       AND    #$01    
       BNE    LF79F   
       LDA    #$41    
       LDX    #$01    
       JSR    LFB64   
LF79F: JMP    LF7CD   
LF7A2: LDA    $F6     
       BPL    LF77B   
       BMI    LF75E   
LF7A8: JMP    LF7CD   
LF7AB: INC    $8C     
       JMP    LF7D6   
LF7B0: LDA    $B0     
       BEQ    LF7FE   
       DEC    $B0     
       DEC    $B0     
       BPL    LF7FE   
       LDA    #$00    
       STA    $B0     
       BEQ    LF7FE   
LF7C0: LDA    $F6     
       AND    #$7F    
       JMP    LF7CB   
LF7C7: LDA    $F6     
       ORA    #$80    
LF7CB: STA    $F6     
LF7CD: LDA    $89     
       AND    #$40    
       ASL            
       EOR    $89     
       BMI    LF7AB   
LF7D6: ASL    $89     
       LDA    $F4     
       BMI    LF7E8   
       LDA    #$1C    
       CLC            
       ADC    $B0     
       STA    $B8     
       LDX    #$00    
       JSR    LFB1D   
LF7E8: LDA    $8B     
       CMP    #$30    
       BCC    LF802   
       LDA    #$00    
       STA    $8B     
       LDA    $8C     
       CMP    #$04    
       BCC    LF7B0   
       INC    $B0     
       LDA    #$02    
       STA    $A0     
LF7FE: LDA    #$00    
       STA    $8C     
LF802: JMP    LF805   
LF805: LDA    $B0     
       CMP    #$0F    
       BCS    LF84E   
       LDA    $8E     
       CMP    #$06    
       BCS    LF831   
       LDA    $8E     
       BEQ    LF834   
       LDX    $B7     
       CPX    #$0F    
       BCS    LF81F   
       CPX    #$00    
       BNE    LF82C   
LF81F: LDA    $8E     
       EOR    #$0F    
       STA    $B7     
       LDA    #$2D    
       LDX    #$01    
       JSR    LFB64   
LF82C: DEC    $B7     
       JMP    LF048   
LF831: JMP    LF8BA   
LF834: LDA    $F4     
       BMI    LF854   
       LDA    $F6     
       AND    #$02    
       BNE    LF845   
       STA    $A3     
       STA    $A4     
       JMP    LF862   
LF845: LDA    $F4     
       ORA    #$20    
       STA    $F4     
       JMP    LF862   
LF84E: LDA    $F4     
       ORA    #$20    
       STA    $F4     
LF854: LDA    $B6     
       BEQ    LF872   
       CMP    #$FF    
       BNE    LF8C3   
       LDX    $8E     
       INX            
       INX            
       STX    $A0     
LF862: ROL    $F4     
       SEC            
       ROR    $F4     
       LDA    #$F0    
       STA    $B6     
       LDA    #$17    
       LDX    #$00    
       JMP    LFB5E   
LF872: LDA    #$05    
       STA    CTRLPF  
       LDX    #$00    
       STX    $F4     
       STX    $8C     
       STX    $B0     
       DEX            
       STX    $B6     
       INC    $90     
       LDA    $F6     
       AND    #$02    
       BNE    LF899   
       LDA    $90     
       CMP    #$07    
       BCC    LF8AE   
       LDA    #$02    
       STA    $F6     
       JMP    LF34D   
LF896: JMP    LF335   
LF899: LDA    $90     
       CMP    #$05    
       BCC    LF896   
       LDA    #$00    
       STA    $F6     
       STA    $90     
       JSR    LFB6A   
       JMP    LF048   
LF8AB: .byte $4C,$51,$F3
LF8AE: JSR    LFB6A   
       LDA    $F6     
       AND    #$03    
       STA    $F6     
       JMP    LF048   
LF8BA: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       JMP    LF048   
LF8C3: DEC    $B6     
       JMP    LF048   
LF8C8: LDA    $81     
       JSR    LF416   
       LDX    $91     
       CMP    LFFE0,X 
       BCS    LF8E1   
       ROR    $F4     
       CLC            
       ROL    $F4     
       LDX    $91     
       LDA    LFFBF,X 
       JMP    LF8EB   
LF8E1: ROR    $F4     
       SEC            
       ROL    $F4     
       LDX    $91     
       LDA    LFFC2,X 
LF8EB: LDY    LFFC5,X 
       STA.wy $00C0,Y 
       RTS            

LF8F2: LDA    #$60    
       STA    $A5     
       STA    $A7     
       LDA    #$FE    
       STA    $A8     
       STA    $A6     
       JMP    LF946   
LF901: STA    WSYNC   
       LDX    #$00    
       STX    COLUPF  
       DEX            
       STX    $F8     
       STX    $F9     
       STX    $FA     
       LDY    #$16    
LF910: STA    WSYNC   
       LDX    #$02    
LF914: LDA    $F8,X   
       STA    PF0,X   
       DEX            
       BPL    LF914   
       LDA    #$B0    
       STA    COLUBK  
       STA    WSYNC   
       LSR    $FA     
       ROL    $F9     
       ROR    $F8     
       DEY            
       BPL    LF910   
       LDA    $92     
       TAX            
       CMP    #$02    
       BCS    LF8F2   
       LDA    #$FE    
       STA    $A8     
       STA    $A6     
       LDA    LFDE0,X 
       STA    $A5     
       LDA    LFDE2,X 
       STA    $A7     
       LDA    LFDE4,X 
       STA    COLUP0  
LF946: STA    WSYNC   
       LDA    LFDE6,X 
       STA    COLUP1  
       LDA    #$E8    
       STA    COLUPF  
       LDA    $81     
       LDX    #$00    
       JSR    LFBF2   
       LDA    $81     
       LDX    #$01    
       JSR    LFBF2   
       STA    HMOVE   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$F0    
       STA    PF1     
       LDY    #$07    
LF96D: STA    WSYNC   
       LDA    ($A7),Y 
       STA    GRP1    
       LDA    ($A5),Y 
       STA    GRP0    
       STA    WSYNC   
       DEY            
       BPL    LF96D   
       INY            
       STY    GRP0    
       LDA    #$70    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP1    
       LDA    $B5     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$01    
       STA    $F5     
       LDA    $92     
       ASL            
       ORA    $F5     
       TAX            
       LDA    LFDEB,X 
       CPX    #$04    
       BCC    LF9A4   
       SBC    #$0A    
LF9A4: STA    $A7     
       LDY    #$13    
LF9A8: STA    WSYNC   
       LDA    #$05    
       STA    NUSIZ1  
       LDA    ($A7),Y 
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       CPY    #$0B    
       BCS    LF9C4   
       LDX    $92     
       CPX    #$02    
       BCC    LF9C4   
       LDA    #$60    
       STA    $A7     
LF9C4: DEY            
       BPL    LF9A8   
       STA    WSYNC   
       INY            
       STY    GRP1    
       STY    PF1     
       LDY    #$0A    
       JSR    LFC11   
       LDX    #$0F    
       LDY    #$90    
LF9D7: STA    WSYNC   
       STY    COLUBK  
       INY            
       DEX            
       BPL    LF9D7   
       LDX    #$0F    
       LDY    #$9F    
LF9E3: STA    WSYNC   
       STY    COLUBK  
       DEY            
       DEX            
       BPL    LF9E3   
       INX            
       STX    COLUBK  
       JSR    LFAAC   
       LDA    SWCHB   
       ROL            
       BPL    LFA1B   
       LDA    $B5     
       AND    #$10    
       BNE    LFA1B   
       LDX    $92     
       CPX    #$02    
       BCS    LFA1E   
       LDA    #$0F    
LFA05: LDX    #$01    
       JSR    LFB64   
       LDA    $81     
       JSR    LF416   
       SEC            
       SBC    #$01    
       CMP    #$58    
       BCC    LFA23   
       JSR    LF411   
       STA    $81     
LFA1B: JMP    LF048   
LFA1E: LDA    #$3E    
       JMP    LFA05   
LFA23: INC    $92     
       LDA    $92     
       CMP    #$05    
       BCC    LFA2F   
       LDA    #$00    
       STA    $92     
LFA2F: LDX    $92     
       LDA    LFFE7,X 
       STA    $81     
       JMP    LF048   
LFA39: LDA    #$FD    
       LDX    #$09    
LFA3D: STA    $A5,X   
       DEX            
       DEX            
       BPL    LFA3D   
       LDA    #$88    
       STA    $A5     
       STA    WSYNC   
       LDA    $A1     
       AND    #$0F    
       TAX            
       LDA    LFEF4,X 
       STA    $A7     
       LDA    $A1     
       JSR    LF428   
       TAX            
       LDA    LFEF4,X 
       STA    $A9     
       STA    WSYNC   
       LDA    $A2     
       AND    #$0F    
       TAX            
       LDA    LFEF4,X 
       STA    $AB     
       LDA    $A2     
       JSR    LF428   
       TAX            
       LDA    LFEF4,X 
       STA    $AD     
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDY    #$07    
LFA7F: STA    WSYNC   
       LDA    ($AD),Y 
       STA    GRP0    
       LDA    ($AB),Y 
       STA    GRP1    
       STY    $BD     
       LDA    ($A5),Y 
       STA    $AF     
       LDA    ($A9),Y 
       TAX            
       LDA    ($A7),Y 
       LDY    $AF     
       STX    GRP0    
       STA    GRP1    
       STY    GRP0    
       LDY    $BD     
       DEY            
       BPL    LFA7F   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       RTS            

LFAAC: LDA    INTIM   
       BNE    LFAAC   
       LDA    #$09    
       STA    TIM64T  
       INC    $B5     
LFAB8: LDA    INTIM   
       BNE    LFAB8   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$21    
       STA    TIM64T  
       LDA    $F6     
       AND    #$21    
       BEQ    LFAE4   
       LDA    INPT4   
       BPL    LFAEA   
LFAE4: LDA    SWCHB   
       LSR            
       BCS    LFAF1   
LFAEA: LDA    #$00    
       STA    $F6     
       JMP    LF01C   
LFAF1: JMP    LFB3F   
LFAF4: SED            
       LDA    $8E     
       SEC            
       SBC    #$01    
       STA    $8E     
       CLD            
       RTS            

LFAFE: LDA    $C0,X   
       STA    PF1     
       LDA    $D1,X   
       STA    PF2     
       JSR    LFB16   
       LDA    $E2,X   
       STA    PF2     
       LDA    #$00    
       STA    PF1     
       RTS            

LFB12: LDA    $CD     
       LDA    $CD     
LFB16: LDA    $CD     
LFB18: LDA    $CD     
       LDA    $CD     
       RTS            

LFB1D: LDY    $B8,X   
       LDA    LFD00,Y 
       STA    AUDV0,X 
       JSR    LF428   
       STA    AUDC0,X 
       LDA    LFD44,Y 
       STA    AUDF0,X 
       JSR    LF428   
       LSR            
       TAY            
       BNE    LFB39   
       LDA    #$00    
       STA    $B8,X   
LFB39: LDA    LFE00,Y 
       STA    $BA,X   
       RTS            

LFB3F: LDA    $BA     
       BEQ    LFB4C   
       DEC    $BA     
LFB45: LDA    $BB     
       BEQ    LFB56   
       DEC    $BB     
       RTS            

LFB4C: INC    $B8     
       LDX    #$00    
       JSR    LFB1D   
       JMP    LFB45   
LFB56: INC    $B9     
       LDX    #$01    
       JSR    LFB1D   
       RTS            

LFB5E: JSR    LFB64   
       JMP    LF048   
LFB64: STA    $B8,X   
       JSR    LFB1D   
       RTS            

LFB6A: LDA    $90     
       AND    #$07    
       LSR            
       TAX            
       LDA    LFFE3,X 
       STA    $94     
       LDA    #$FE    
       STA    $97     
       STA    $99     
       LDA    #$08    
       STA    $9A     
       LDA    #$55    
       STA    $81     
       STA    $80     
       LDA    #$1D    
       STA    $95     
       LDA    #$00    
       STA    $83     
       STA    $82     
       STA    $B3     
       STA    $BC     
       STA    COLUBK  
       LDA    #$A8    
       STA    $84     
       LDA    #$05    
       STA    $85     
       JSR    LFBCE   
       LDA    #$99    
       STA    $8E     
       LDA    #$3C    
       STA    $8F     
       LDY    #$04    
LFBAA: STA.wy $0089,Y 
       DEY            
       BPL    LFBAA   
       INC    $88     
       LDA    $88     
       AND    #$03    
       TAX            
       LDA    LFF00,X 
       STA    $9C     
       LDA    #$FF    
       STA    $9D     
LFBC0: LDY    #$33    
LFBC2: LDA    ($9C),Y 
       STA.wy $00C0,Y 
       DEY            
       BPL    LFBC2   
       INY            
       STY    $89     
       RTS            

LFBCE: LDY    #$05    
       STY    $9E     
       INY            
       STY    $9F     
       RTS            

LFBD6: LDX    #$08    
       STA    WSYNC   
LFBDA: DEX            
       BNE    LFBDA   
       STA    RESP0   
       STA    RESP1   
       LDA    #$60    
       STA    HMP0    
       LDA    #$70    
       STA    HMP1    
       LDA    #$00    
       STA    REFP1   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFBF2: STA    HMP0,X  
       AND    #$0F    
       TAY            
       STA    WSYNC   
LFBF9: DEY            
       BNE    LFBF9   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

LFC01: LDA    $89     
       ORA    #$40    
       STA    $89     
       RTS            

LFC08: LDA    $89     
       AND    #$BF    
       STA    $89     
       RTS            

LFC0F: LDY    #$08    
LFC11: STA    WSYNC   
       DEY            
       BNE    LFC11   
       RTS            

LFC17: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$0C
       .byte $0C,$1C,$1C,$38,$38,$3C,$3C,$1E,$1E,$0F,$FF,$0F,$1F,$3C,$3D,$3D
       .byte $3D,$3D,$3D,$3F,$1F,$7C,$3C,$78,$50,$30,$00,$00,$00,$FF,$03,$03
       .byte $03,$23,$FB,$BF,$FF,$3F,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$C0
       .byte $C0,$C2,$C7,$C7,$FF,$FF,$FF,$F0,$00,$00,$00,$00,$00,$00,$02,$FE
       .byte $FE,$80,$80,$80,$80,$C0,$C0,$C0,$C0,$00,$00,$00,$00,$00,$00,$01
       .byte $01,$39,$5D,$FF,$FF,$5D,$39,$01,$01,$01,$3F,$00,$00,$00,$00,$00
       .byte $1F,$00,$FF,$FF,$FF,$FF,$03,$C3,$F0,$70,$F0,$C0,$00,$00,$00,$00
       .byte $00,$00,$00,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$00,$E0,$E0,$20,$00,$00
       .byte $00,$00,$80,$FF,$FF,$07,$07,$07,$07,$0F,$0F,$0F,$0F,$0F,$07,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$40,$E0,$E0,$FF,$FF,$FF,$FF,$FF
       .byte $00,$00,$00,$00,$00,$1F,$78,$60,$60,$60,$60,$E0,$E0,$E0,$FE,$FE
       .byte $1F,$0A,$06,$00,$00,$80,$C0,$C0,$C0,$F0,$7C,$3C,$00,$00,$00,$00
       .byte $00,$38,$78,$E0,$C0,$80,$C0,$60,$38,$00,$00,$00,$00,$00,$E0,$F0
       .byte $F8,$7F,$3E
LFCFA: .byte $06,$0E,$0E,$7E,$00,$00
LFD00: .byte $00,$00,$48,$44,$4B,$4D,$49,$48,$47,$46,$C5,$00,$48,$48,$00,$C6
       .byte $43,$00,$CB,$00,$48,$C6,$00,$84,$86,$88,$8A,$00,$42,$43,$44,$44
       .byte $45,$46,$47,$48,$49,$4A,$4A,$4B,$4C,$4D,$4E,$4F,$00,$46,$4C,$48
       .byte $43,$00,$00,$47,$C8,$49,$49,$48,$45,$4A,$4C,$49,$C3,$00,$CD,$CE
       .byte $5F,$4E,$4F,$00
LFD44: .byte $00,$00,$A3,$A7,$A7,$A8,$A4,$A3,$A9,$A8,$A3,$00,$46,$39,$00,$27
       .byte $38,$00,$4A,$00,$B7,$BB,$00,$F3,$78,$F5,$88,$00,$3F,$5D,$7B,$99
       .byte $B7,$D5,$F3,$F1,$EF,$CD,$AB,$89,$68,$47,$26,$25,$00,$87,$63,$44
       .byte $65,$00,$69,$87,$68,$C9,$EA,$48,$67,$8A,$C8,$C7,$86,$00,$26,$25
       .byte $00,$26,$25,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$7E,$18,$18,$18
       .byte $18,$78,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C
       .byte $0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06
       .byte $7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18
       .byte $0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E
       .byte $66,$66,$66,$3C,$00,$00,$00,$00,$00,$00,$00,$00
LFDE0: .byte $82,$72
LFDE2: .byte $7A,$6A
LFDE4: .byte $1D,$12
LFDE6: .byte $5B,$19,$25,$67,$08
LFDEB: .byte $B2,$C6,$8A,$9E,$24,$2E,$38,$42,$4C,$56
LFDF5: .byte $42,$75,$A8
LFDF8: .byte $DC,$E6,$F0
LFDFB: .byte $0D,$0F,$11,$01,$7D
LFE00: .byte $00,$01,$02,$04,$08,$10,$20,$40,$86,$E4,$24,$3F,$B0,$B0,$FE,$30
       .byte $78,$30,$36,$24,$24,$3F,$B8,$B8,$FE,$32,$78,$30
LFE1C: .byte $38,$42,$24,$2E,$38,$42,$4C,$56,$00,$E7,$A5,$BC,$18,$18,$3D,$A5
       .byte $E7,$00,$00,$00,$E7,$A5,$3D,$BC,$A5,$E7,$00,$00,$00,$87,$45,$2F
       .byte $10,$10,$2F,$45,$87,$00,$00,$00,$07,$05,$FF,$FF,$05,$07,$00,$00
       .byte $FF,$FF,$93,$93,$01,$01,$6D,$6D,$FF,$FF,$00,$FF,$FF,$93,$93,$6D
       .byte $6D,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FE,$3E
       .byte $FE,$7C,$34,$70,$70,$00,$00,$00,$00,$03,$4B,$0F,$0F,$FE,$78,$38
       .byte $F0,$20,$60,$00,$00,$00,$06,$06,$0F,$5F,$1F,$FF,$7E,$3C,$78,$18
       .byte $18,$18,$18,$18,$18,$18,$18,$1C,$3C,$FC,$1C,$1C,$1C,$1C,$1C,$1C
       .byte $1C,$0C,$E1,$61,$67,$66,$6E,$6C,$6C,$6C,$7C,$3E,$1E,$FE,$1C,$1D
       .byte $1D,$1D,$FD,$FF,$9F,$8C,$1C,$0C,$0C,$0C,$0C,$0C,$0C,$1C,$1C,$1C
       .byte $1E,$1E,$1E,$1C,$1C,$3C,$7C,$3C,$1C,$0C,$E1,$61,$63,$63,$66,$6E
       .byte $7C,$78,$38,$3E,$1E,$1E,$1C,$1D,$3D,$7D,$3D,$FF,$9E,$8C,$3F,$30
       .byte $30,$30,$30,$33,$33,$3F,$33,$33
LFEE4: .byte $0E,$4E,$8C,$CC,$1A,$5A,$D8,$98,$26,$66,$A4,$E4,$32,$72,$B0,$40
LFEF4: .byte $88,$90,$98,$A0,$A8,$B0,$B8,$C0,$C8,$D0,$D8,$00
LFF00: .byte $04,$38,$6C,$38,$30,$0C,$CC,$0C,$3C,$03,$33,$C3,$CC,$0C,$3C,$03
       .byte $30,$C0,$3F,$F0,$03,$CC,$3C,$30,$C3,$F0,$0F,$30,$03,$30,$03,$33
       .byte $30,$3C,$30,$F3,$30,$3F,$03,$CC,$C3,$F0,$0C,$00,$33,$F3,$03,$33
       .byte $30,$3C,$0F,$C0,$FC,$C0,$0F,$C0,$30,$0C,$CC,$CC,$03,$33,$F3,$03
       .byte $3C,$30,$0C,$CF,$00,$0F,$C0,$0F,$30,$F3,$30,$3C,$F0,$03,$F3,$0C
       .byte $C0,$3C,$3C,$00,$FF,$C0,$CC,$0C,$F0,$CF,$03,$F0,$0C,$CF,$00,$00
       .byte $3F,$00,$F3,$03,$33,$0C,$CC,$0C,$3C,$03,$30,$0C,$0C,$C3,$0F,$C0
       .byte $3C,$03,$30,$0C,$C3,$F0,$C3,$0C,$C0,$C0,$0C,$30,$C3,$CC,$0C,$30
       .byte $F3,$0F,$C3,$30,$3C,$03,$30,$C3,$0C,$30,$C3,$F0,$CC,$03,$30,$C3
       .byte $0C,$C0,$33,$0C,$30,$C3,$0C,$30,$03,$3C,$30,$C3,$0C,$30,$33,$00
LFFA0: .byte $55,$D5,$46,$C6,$37,$B7,$28,$A8,$19,$99,$0A,$7B,$FB,$6C,$EC,$5D
LFFB0: .byte $C0,$30,$0C,$03
LFFB4: .byte $03,$0C,$30,$C0
LFFB8: .byte $C0,$CD,$DA,$E7
LFFBC: .byte $80,$00,$09
LFFBF: .byte $EB,$F7,$FE
LFFC2: .byte $FB,$FF,$FC
LFFC5: .byte $07,$06,$2E
LFFC8: .byte $C2,$FF,$40
LFFCB: .byte $00,$C3,$00
LFFCE: .byte $C0,$FD,$00
LFFD1: .byte $00,$C1,$00
LFFD4: .byte $16,$15,$17
LFFD7: .byte $00,$19,$00
LFFDA: .byte $A4,$AB,$B5
LFFDD: .byte $8D,$96,$A0
LFFE0: .byte $98,$A4,$B0
LFFE3: .byte $4A,$16,$B8,$F8
LFFE7: .byte $0C,$0C,$0C,$0C,$0C
LFFEC: .byte $F4,$B4,$29
LFFEF: .byte $10,$18,$12
LFFF2: .byte $19,$19,$19,$19,$19,$19,$19,$19,$25,$25,$03,$F0,$00,$00
