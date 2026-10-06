; Disassembly of roms/Air Raid.bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Air Raid.bin
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
RESP0   =  $10
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM1P   =  $31
CXP0FB  =  $32
CXP1FB  =  $33
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       JSR    LF612   
       INC    $AA     
       DEC    $EA     
LF013: LDA    $8A     
       STA    COLUBK  
       INC    $DC     
       DEC    $DD     
       INC    $DE     
       LDY    #$FF    
       STY    VSYNC   
       STY    VBLANK  
       LDA    #$28    
       STA    TIM8T   
       INC    $DF     
       BNE    LF03D   
       LDA    $EA     
       BPL    LF037   
       LDX    #$0A    
LF032: INC    $80,X   
       DEX            
       BPL    LF032   
LF037: INC    $E4     
       BNE    LF03D   
       STY    $EA     
LF03D: LDY    INTIM   
       BNE    LF03D   
       STY    WSYNC   
       STY    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       LDA    SWCHB   
       AND    #$03    
       CMP    #$03    
       BNE    LF058   
       LDA    INPT4   
       BMI    LF061   
LF058: STY    $EA     
       STY    $E4     
       LDX    #$09    
       JSR    LF614   
LF061: LDA    SWCHB   
       LSR            
       BCS    LF07B   
       LDA    $EB     
       BMI    LF06D   
LF06B: DEC    $EB     
LF06D: LDX    #$9C    
       LDA    #$00    
LF071: STA    $4E,X   
       DEX            
       BNE    LF071   
       JMP    LFE65   
LF079: .byte $30,$3A
LF07B: LDX    #$00    
       LSR            
       BCS    LF09F   
       LDA    $EB     
       BPL    LF06B   
       LDA    $DA     
       BEQ    LF08C   
       DEC    $DA     
       BPL    LF0A1   
LF08C: STX    $A9     
       STX    $A8     
       INC    $EF     
       LDA    $EF     
       AND    #$07    
       STA    $EF     
       CLC            
       ADC    #$01    
       STA    $AA     
       LDX    #$1E    
LF09F: STX    $DA     
LF0A1: LDA    $E9     
       BMI    LF0B8   
       LDA    INPT4   
       BMI    LF0B5   
       LDA    $EB     
       BPL    LF06B   
       LDA    #$FF    
       STA    $E9     
       INC    $EB     
       STY    $AA     
LF0B5: JMP    LF88D   
LF0B8: JMP    LFC00   
LF0BB: .byte $EA
LF0BC: LDA    #$F7    
       STA    $F1     
       STA    $F3     
       STA    $F5     
       STA    $F7     
       LDA    SWCHA   
       ASL            
       BCS    LF0DC   
       INC    $DC     
       INC    $93     
       INC    $93     
       LDA    #$83    
       CMP    $93     
       BCS    LF0ED   
       STA    $93     
       BCC    LF0ED   
LF0DC: ASL            
       BCS    LF0ED   
       DEC    $DD     
       DEC    $93     
       DEC    $93     
       LDA    #$10    
       CMP    $93     
       BCC    LF0ED   
       STA    $93     
LF0ED: LDA    $EF     
       AND    #$04    
       BEQ    LF0FE   
       LDA    $D8     
       BPL    LF0FE   
       INC    $D8     
       LDA    $93     
       JMP    LF13F   
LF0FE: LDA    $E8     
       BMI    LF11B   
       STA    AUDV0   
       LDA    $92     
       SBC    #$02    
       STA    $D5     
       LDA    $93     
       CLC            
       ADC    #$08    
       STA    $D6     
       LDA    INPT4   
       ORA    $E6     
       BMI    LF174   
       DEC    $E8     
       DEC    $D5     
LF11B: INC    $DC     
       LDA    #$08    
       STA    AUDV0   
       STA    AUDC0   
       LDA    $D5     
       CLC            
       ADC    #$03    
       CMP    #$A8    
       BCC    LF135   
       LDA    #$F8    
       STA    $D6     
       INC    $E8     
       JMP    LF137   
LF135: STA    $D5     
LF137: JMP    LF9F0   
LF13A: .byte $EA,$10,$28
LF13D: LDA    $D6     
LF13F: JSR    LF59B   
       LDA    $AB,X   
       BMI    LF165   
       ORA    #$80    
       STA    $AB,X   
       LDA    #$F8    
       STA    AUDF0   
       STA    $D5     
       LDA    #$02    
       STA    $C8,X   
       LDA    #$00    
       STA    $CB,X   
       STA    $E8     
       STA    $D6     
       STA    $E1     
       JSR    LF61D   
       LDA    #$0F    
       STA    AUDC0   
LF165: LDA    $E8     
       BPL    LF174   
       LDA    $EF     
       LSR            
       BCC    LF174   
       LDA    $93     
       ADC    #$04    
       STA    $D6     
LF174: LDA    $E6     
       BPL    LF1D2   
       DEC    $E2     
       BPL    LF1CF   
       LDX    #$02    
       STX    $E2     
       LDX    $E3     
       INX            
       CPX    #$10    
       BCC    LF1AB   
       CLC            
       LDY    #$00    
       STY    AUDC1   
       LDX    #$02    
LF18E: STY    $C5,X   
       LDA    $AB,X   
       BCS    LF195   
       LSR            
LF195: DEX            
       BPL    LF18E   
       BCS    LF1CF   
       JMP    LFED7   
LF19D: .byte $02
LF19E: STY    $E9     
LF1A0: STY    $E6     
       LDX    #$13    
       JSR    LF614   
       STY    AUDC1   
       BMI    LF1CF   
LF1AB: CPX    #$05    
       BCS    LF1C2   
       LDY    #$05    
       LDA    #$F6    
       STA    $BB     
       LDA    LF65F,X 
       STA    $BA     
LF1BA: LDA    ($BA),Y 
       STA.wy $008B,Y 
       DEY            
       BPL    LF1BA   
LF1C2: STX    $E3     
       TXA            
       STA    AUDF1   
       EOR    #$FF    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
LF1CF: JMP    LF1EA   
LF1D2: LDY    #$D4    
       LDA    #$08    
       AND    $DF     
       BEQ    LF1DC   
       LDY    #$AA    
LF1DC: STY    $8D     
       LDY    #$3E    
       LDA    #$10    
       AND    $DF     
       BEQ    LF1E8   
       LDY    #$36    
LF1E8: STY    $85     
LF1EA: LDX    #$02    
LF1EC: LDA    $AB,X   
       LSR            
       BCS    LF1F4   
       JMP    LF274   
LF1F4: DEC    $BC,X   
       BPL    LF234   
       LDA    $C5,X   
       STA    $BC,X   
       LDA    $EF     
       AND    #$02    
       BEQ    LF220   
       LDA    $DC,X   
       CMP    #$D0    
       BCS    LF220   
       BPL    LF215   
       DEC    $C2,X   
       LDA    LF700,X 
       CMP    $C2,X   
       BCC    LF220   
       BCS    LF21E   
LF215: INC    $C2,X   
       LDA    LF6FD,X 
       CMP    $C2,X   
       BCS    LF220   
LF21E: STA    $C2,X   
LF220: JMP    LF960   
LF223: .byte $10
LF224: LDA    #$3E    
       STA    $A0,X   
       LDA    $AB,X   
       AND    #$7E    
       STA    $AB,X   
       LDA    #$20    
       STA    $BC,X   
       BNE    LF271   
LF234: LDA    $AB,X   
       BPL    LF25F   
       DEC    $C8,X   
       BPL    LF25C   
       LDA    #$02    
       STA    $C8,X   
       INC    $CB,X   
       LDY    $CB,X   
       CPY    #$10    
       BCS    LF224   
       CPY    #$05    
       BCS    LF255   
       LDA    LF65B,Y 
       STA    $A0,X   
       LDA    #$EC    
       STA    $CE,X   
LF255: TYA            
       STA    AUDF0   
       EOR    #$FF    
       STA    AUDV0   
LF25C: JMP    LF271   
LF25F: LDY    $BF,X   
       LDA    #$02    
       AND    $DF     
       BEQ    LF26C   
       LDA    LF644,Y 
       BNE    LF26F   
LF26C: LDA    LF64C,Y 
LF26F: STA    $A0,X   
LF271: JMP    LF2B8   
LF274: LDA    $E6     
       BMI    LF2B8   
       DEC    $BC,X   
       BPL    LF2B8   
       LDA    $DC,X   
       AND    #$07    
       STA    $BA     
       LDA    LF6FD,X 
       SBC    $BA     
       STA    $C2,X   
       LDA    $DC,X   
       AND    #$02    
       STA    $C5,X   
       LDA    $DC,X   
       AND    #$07    
       STA    $BF,X   
       TAY            
       LDA    LF664,Y 
       STA    $AB,X   
       CPX    #$01    
       BNE    LF2AA   
       LDA    $DE     
       LSR            
       BCC    LF2AA   
       LDA    $C2,X   
       SBC    #$12    
       STA    $C2,X   
LF2AA: LDA    LF644,Y 
       STA    $A0,X   
       LDA    LF654,Y 
       STA    $CE,X   
       LDA    #$9F    
       STA    $9D,X   
LF2B8: DEX            
       BMI    LF2BE   
       JMP    LF1EC   
LF2BE: LDA    $E6     
       BMI    LF326   
       LDA    $E7     
       BPL    LF2F2   
       LDY    $D3     
       LDA    SWCHB   
       ASL            
       BPL    LF2CF   
       DEY            
LF2CF: TYA            
       SEC            
       SBC    #$03    
       CMP    #$F0    
       BCC    LF2DB   
       LDA    #$F8    
       STA    $D4     
LF2DB: STA    $D3     
       DEC    $E0     
       BNE    LF2E3   
       INC    $E7     
LF2E3: LDA    $E0     
       LSR            
       LSR            
       LSR            
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       STA    AUDF1   
       BNE    LF326   
LF2F2: LDA    #$40    
       STA    $E0     
       STA    AUDC1   
       LDY    SWCHB   
       BMI    LF303   
       LDA    #$A0    
       CMP    $DC     
       BCS    LF326   
LF303: LDA    $93     
       JSR    LF59B   
       LDA    $AB,X   
       BMI    LF326   
       AND    #$05    
       EOR    #$05    
       BNE    LF326   
       LDA    $9D,X   
       CMP    #$65    
       BCC    LF326   
       JMP    LFEA0   
LF31B: .byte $01
LF31C: STA    $D3     
       LDA    $C2,X   
       ADC    #$08    
       STA    $D4     
       DEC    $E7     
LF326: LDA    $EF     
       AND    #$04    
       BEQ    LF362   
       LDA    $E6     
       BMI    LF362   
       LDA    $93     
       JSR    LF59B   
       JMP    LFF8B   
LF338: .byte $44
LF339: BCS    LF362   
       CMP    #$34    
       BCC    LF362   
       LDA    $C2,X   
       SBC    $93     
       CMP    #$04    
       BCC    LF34B   
       CMP    #$FC    
       BCC    LF362   
LF34B: LDA    #$FF    
       STA    $D8     
LF34F: LDA    $E6     
       BMI    LF35F   
       DEC    $E6     
       STA    $E7     
       STA    $E3     
       LDA    #$F8    
       STA    $D4     
       STA    $D3     
LF35F: JMP    LF88D   
LF362: JMP    LFF00   
LF365: .byte $10,$0A,$A5,$D3,$C9,$0D,$90,$04,$C9,$15,$90,$DE
LF371: LDX    #$0A    
       LDY    #$00    
LF375: LDA.wy $00A8,Y 
       AND    #$F0    
       LSR            
       ADC    #$A0    
       STA    $AE,X   
       LDA    #$F6    
       STA    $AF,X   
       DEX            
       DEX            
       LDA.wy $00A8,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$A0    
       STA    $AE,X   
       LDA    #$F6    
       STA    $AF,X   
       INY            
       DEX            
       DEX            
       BPL    LF375   
       LDX    #$08    
       LDY    #$F0    
LF39E: LDA    $B0,X   
       CMP    #$A0    
       BNE    LF3AA   
       STY    $B0,X   
       DEX            
       DEX            
       BPL    LF39E   
LF3AA: LDA    #$FF    
       STA    CXCLR   
LF3AE: LDX    INTIM   
       BNE    LF3AE   
       STX    WSYNC   
       STX    VBLANK  
       LDA    #$B8    
       STA    $BA     
       LDY    #$07    
       JSR    LF5BA   
       LDX    #$01    
       LDA    $93     
       JSR    LF5A4   
       LDX    #$03    
       LDA    $D6     
       JSR    LF5A4   
       INX            
       LDA    $D4     
       JSR    LF5A4   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$15    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    WSYNC   
       LDA    #$12    
       STA    CTRLPF  
       STA    REFP0   
       LDA    #$A0    
       STA    $D9     
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       LDY    $D7     
       LDA.wy $00C2,Y 
       JSR    LF5A4   
       LDA.wy $00A0,Y 
       STA    $F0     
       LDA.wy $00CE,Y 
       STA    $F2     
       LDA.wy $009D,Y 
       STA    $F8     
       INY            
       CPY    #$03    
       BCC    LF415   
       LDA    #$00    
       TAY            
LF415: STY    $D7     
       LDA.wy $00C2,Y 
       INX            
       JSR    LF5A4   
       LDA.wy $00A0,Y 
       STA    $F4     
       LDA.wy $00CE,Y 
       STA    $F6     
       LDA.wy $009D,Y 
       STA    $F9     
       JMP    LF9E0   
LF430: .byte $EA
LF431: STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$00    
       STA    $A3     
       STA    $A4     
LF43D: DEC    $D9     
       LDA    $D9     
       CMP    #$2B    
       BEQ    LF49F   
       LSR            
       BCC    LF46E   
       LDA    $D3     
       CMP    $D9     
       PHP            
       PLA            
       STA    ENABL   
       LDY    $A3     
       LDA    $F8     
       CMP    $D9     
       BCC    LF45F   
       LDA    ($F0),Y 
       BEQ    LF461   
       INY            
       BNE    LF461   
LF45F: LDA    #$00    
LF461: STA    WSYNC   
       STA    GRP0    
       LDA    ($F2),Y 
       STA    COLUP0  
       STY    $A3     
       JMP    LF43D   
LF46E: LDA    $D5     
       CMP    $D9     
       PHP            
       PLA            
       STA    ENAM1   
       LDY    $A4     
       LDA    $F9     
       CMP    $D9     
       BCC    LF494   
       LDA    ($F4),Y 
       BEQ    LF494   
       INY            
       BNE    LF487   
       LDA    #$00    
LF487: STA    WSYNC   
       STA    GRP1    
       LDA    ($F6),Y 
       STA    COLUP1  
       STY    $A4     
       JMP    LF43D   
LF494: LDA    #$00    
       STA    GRP1    
       LDA    #$FF    
       STA    COLUP1  
       JMP    LF43D   
LF49F: LDX    #$00    
       STX    WSYNC   
       STX    GRP0    
       STX    GRP1    
       INX            
       LDA    $93     
       JSR    LF5A4   
       DEX            
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
LF4B4: STA    WSYNC   
       STA    HMCLR   
       LDA    #$05    
       STA    NUSIZ1  
       DEC    $D9     
       LDA    $D9     
       CMP    #$23    
       BEQ    LF4EE   
       LDA    $D3     
       CMP    $D9     
       PHP            
       PLA            
       STA    ENABL   
       LDA    $D9     
       CMP    $92     
       NOP            
       NOP            
       LDA    $80,X   
       STA    $BA     
       LDA    $8B,X   
       BEQ    LF4DD   
       INX            
       BNE    LF4E3   
LF4DD: LDA    #$BC    
       STA    $BA     
       LDA    #$00    
LF4E3: STA    WSYNC   
       STA    GRP1    
       LDA    $BA     
       STA    COLUP1  
       JMP    LF4B4   
LF4EE: LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       LDA    #$FF    
       STA    COLUPF  
       LDA    $94     
       LDX    #$00    
       JSR    LF5A4   
       INX            
       LDA    $95     
       JSR    LF5A4   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDA    #$07    
       STA    NUSIZ0  
       LDA    #$07    
       STA    NUSIZ1  
       LDA    $DE     
       AND    #$01    
       BEQ    LF537   
       JSR    LFE71   
       NOP            
       LDA    #$9F    
       CMP    $94     
       BCS    LF52D   
       LDA    #$00    
       STA    $94     
LF52D: LDA    #$9F    
       CMP    $95     
       BCS    LF537   
       LDA    #$00    
       STA    $95     
LF537: JMP    LF980   
LF53A: .byte $EA,$F7,$85,$BB,$85,$02,$85,$1B,$B9,$76,$F7,$85,$BA,$85,$06,$A5
       .byte $BB,$85,$02,$85,$1C,$A5,$BA,$85,$07,$88,$D0,$E3
LF556: LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       LDA    $A6     
       STA    COLUBK  
       NOP            
       NOP            
       LDX    #$0A    
       LDA    $E9     
       BPL    LF57B   
       LDY    $A7     
LF56C: LDA    #$F8    
       DEY            
       BPL    LF573   
       LDA    #$F0    
LF573: STA    $AE,X   
       DEX            
       DEX            
       BPL    LF56C   
       BMI    LF586   
LF57B: LDA    #$82    
       CLC            
LF57E: STA    $AE,X   
       ADC    #$05    
       DEX            
       DEX            
       BPL    LF57E   
LF586: LDY    $58     
       STY    $BA     
       LDX    #$00    
       LDY    #$04    
       JSR    LF5BA   
       LDX    #$1C    
LF593: STA    WSYNC   
       DEX            
       BNE    LF593   
       JMP    LF013   
LF59B: LDX    #$FF    
LF59D: INX            
       SEC            
       SBC    #$30    
       BPL    LF59D   
       RTS            

LF5A4: STA    WSYNC   
       SEC            
LF5A7: SBC    #$0F    
       BCS    LF5A7   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       RTS            

LF5BA: STX    GRP0    
       STX    GRP1    
       STX    WSYNC   
       LDA    #$3B    
       JSR    LF5A4   
       LDA    #$43    
       INX            
       JSR    LF5A4   
       STX    VDELP0  
       STX    VDELP1  
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    $BA     
       STA    COLUP0  
       STA    COLUP1  
LF5DF: LDA    ($AE),Y 
       STA    $BA     
       STA    WSYNC   
       LDA    ($B8),Y 
       STA    GRP0    
       LDA    ($B6),Y 
       STA    GRP1    
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    ($B2),Y 
       TAX            
       LDA    ($B0),Y 
       STY    $BB     
       LDY    $BA     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $BB     
       DEY            
       BPL    LF5DF   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LF612: LDX    #$27    
LF614: LDA    LF70B,X 
       STA    $80,X   
       DEX            
       BPL    LF614   
       RTS            

LF61D: LDY    $BF,X   
       LDA    LF75C,Y 
       SED            
       CMP    #$90    
       LDY    $A9     
       LDX    #$02    
LF629: ADC    $A8,X   
       STA    $A8,X   
       LDA    #$00    
       DEX            
       BPL    LF629   
       CLD            
       TYA            
       EOR    $A9     
       AND    #$F0    
       BEQ    LF643   
       LDY    $A7     
       INY            
       CPY    #$07    
       BCS    LF643   
       STY    $A7     
LF643: RTS            

LF644: .byte $33,$33,$87,$87,$64,$64,$6D,$6D
LF64C: .byte $3F,$3F,$87,$87,$64,$64,$6D,$6D
LF654: .byte $B5,$B5,$D6,$D6,$CA,$CA,$BB
LF65B: .byte $BB,$98,$A1,$F4
LF65F: .byte $3E,$6C,$72,$78,$F0
LF664: .byte $0F,$0F,$0F,$0F,$05,$05,$05,$07,$18,$3C,$7E,$3C,$18,$00,$81,$24
       .byte $18,$24,$81,$00,$24,$81,$42,$81,$24,$00,$00,$00,$00,$00,$8B,$AA
       .byte $AB,$AA,$DB,$A8,$28,$AB,$28,$B8,$44,$7C,$7D,$44,$7C,$08,$14,$A2
       .byte $22,$22,$BA,$8A,$BA,$A2,$BA,$EA,$AA,$AA,$AA,$EE,$3C,$72,$72,$72
       .byte $72,$72,$72,$3C,$18,$18,$18,$18,$18,$18,$18,$38,$7E,$46,$40,$3C
       .byte $0E,$0E,$4E,$3C,$3E,$4E,$0E,$1C,$1C,$0E,$4E,$3C,$0C,$0C,$7E,$4C
       .byte $4C,$4C,$4C,$4C,$7C,$4E,$0E,$0E,$7C,$40,$40,$7E,$3C,$4E,$4E,$4E
       .byte $7C,$40,$42,$3C,$18,$18,$0C,$0C,$06,$06,$46,$7E,$3C,$4E,$4E,$3C
       .byte $3C,$72,$72,$3C,$3C,$42,$02,$3E,$72,$72,$72,$3C,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$28,$92,$54,$38,$10
LF6FD: .byte $20,$52,$82
LF700: .byte $10,$38,$72,$55,$55,$55,$55,$55,$55,$55,$55
LF70B: .byte $BC,$B8,$B4,$B8,$BC,$3E,$BC,$00,$00,$00,$80,$10,$38,$44,$92,$38
       .byte $44,$00,$25,$40,$25,$75,$00,$8F,$FC,$5F,$FD,$00,$00,$30,$50,$85
       .byte $3E,$3E,$3E,$3E,$F7,$00,$E0,$02,$1C,$10,$11,$53,$FF,$FF,$3C,$20
       .byte $10,$00,$00,$00,$70,$10,$11,$53,$FF,$FF,$3C,$20,$10,$00,$00,$00
       .byte $7E,$7E,$FF,$FF,$DB,$FF,$DB,$FF,$DB,$FF,$DB,$FF,$DB,$FF,$DB,$FF
       .byte $22
LF75C: .byte $25,$25,$50,$50,$75,$75,$99,$99,$22,$14,$49,$49,$49,$2A,$1C,$08
       .byte $00,$10,$38,$7C,$AA,$7C,$38,$10,$00,$00,$22,$22,$22,$22,$22,$22
       .byte $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$0C,$28,$28,$7C,$44,$FE
       .byte $7C,$38,$10,$00,$1A,$1E,$1E,$54,$7F,$FE,$2A,$00,$81,$66,$7E,$3C
       .byte $3C,$7E,$66,$81,$00,$81,$24,$42,$18,$18,$42,$24,$81,$00,$5F,$40
       .byte $40,$86,$86,$86,$86,$5F,$5F,$1A,$1A,$CA,$CA,$08,$08,$B6,$B6,$5C
       .byte $56,$44,$48,$4C,$48,$44,$06,$06,$50,$52,$54,$56,$5F,$5F,$D7,$D7
       .byte $D7,$D7,$D7,$D7,$D7,$D7,$D7,$F2,$F2,$F2,$88,$88,$88,$CC,$CC,$CC
       .byte $CC,$CC,$CC,$F8,$69,$03,$85,$D4,$A5,$DE,$4A,$B0,$06,$A5,$D4,$69
       .byte $10,$85,$D4,$60,$0F,$0F,$0F,$0F,$24,$81,$42,$81,$81,$42,$81,$24
       .byte $00,$F0,$00,$F0,$A5,$96,$A8,$29,$03,$F0,$44,$AA,$CA,$98,$29,$C0
       .byte $F0,$16,$98,$38,$E9,$40,$85,$96,$4A,$4A,$29,$0F,$85,$18,$49,$FF
       .byte $85,$1A,$A9,$08,$85,$16,$D0,$20,$D0,$FF,$4A,$29,$0F,$F0,$0A,$F6
       .byte $9B,$98,$38,$E9,$04,$09,$00,$D0,$DD,$A9,$00,$85,$16,$F6,$9B,$B5
       .byte $9B,$C9,$18,$10,$06,$A9,$00,$85,$96,$F0,$04,$A9,$81,$85,$A5
LF84B: JMP    LFC60   
LF84E: .byte $EA,$F0,$17
LF851: LDA    $D3     
       CMP    #$23    
       BCC    LF85E   
       CMP    #$2B    
       BCS    LF868   
       JMP    LF34F   
LF85E: CMP    #$06    
       BCC    LF868   
       LDA    $96     
       AND    #$03    
       BEQ    LF86B   
LF868: JMP    LF88D   
LF86B: LDX    #$01    
LF86D: LDA    $D4     
       SEC            
       SBC    $94,X   
       CMP    #$20    
       BCC    LF87F   
       CMP    #$E8    
       BCS    LF87F   
       DEX            
       BEQ    LF86D   
       BNE    LF88D   
LF87F: INX            
       TXA            
       ORA    #$FC    
       STA    $96     
       LDA    #$F8    
       STA    $D3     
       STA    $D4     
       INC    $E7     
LF88D: LDX    #$01    
LF88F: LDA    $9B,X   
       ASL            
       ASL            
       TAY            
       DEX            
       BNE    LF899   
       INY            
       INY            
LF899: INX            
       TXA            
       ASL            
       TAX            
       LDA    LF900,Y 
       STA    $97,X   
       INY            
       INX            
       LDA    LF900,Y 
       STA    $97,X   
       DEX            
       BEQ    LF8B0   
       LDX    #$00    
       BEQ    LF88F   
LF8B0: JMP    LF371   
LF8B3: .byte $00,$00,$EC,$7F,$80,$81,$68,$CD,$00,$40,$50,$14,$00,$00,$00,$E6
       .byte $7F,$80,$81,$82,$CD,$00,$40,$68,$1A,$00,$00,$00,$E0,$7F,$80,$81
       .byte $A2,$CD,$00,$40,$80,$20,$00,$00,$00,$D8,$7F,$80,$02,$F2,$CD,$00
       .byte $40,$A0,$28,$00,$00,$00,$C8,$7F,$C0,$83,$9A,$4E,$00,$40,$E0,$38
       .byte $00,$00,$00,$BA,$7F,$C0,$04,$B2,$CF,$00,$40,$18,$46
LF900: .byte $9F,$FC,$9F,$FC,$AF,$FC,$AF,$FC,$BF,$FC,$BF,$FC,$CF,$FC,$CF,$FC
       .byte $DF,$FC,$DF,$FC,$EF,$FC,$EF,$FC,$FF,$FC,$FF,$FC,$0F,$FD,$0F,$FD
       .byte $1F,$FD,$1F,$FD,$2F,$FD,$2F,$FD,$3F,$FD,$3F,$FD,$4F,$FD,$4F,$FD
       .byte $4F,$FD,$4F,$FD,$2F,$FE,$3F,$FE,$70,$FD,$00,$FF,$80,$FD,$10,$FF
       .byte $90,$FD,$20,$FF,$A0,$FD,$30,$FF,$B0,$FD,$40,$FF,$C0,$FD,$50,$FF
       .byte $D0,$FD,$60,$FF,$E0,$FD,$70,$FF,$F0,$FD,$80,$FF,$00,$FE,$90,$FF
LF960: DEC    $9D,X   
       LDA    $9D,X   
       CMP    #$2C    
       BNE    LF96B   
       JMP    LF224   
LF96B: JMP    LF234   
LF96E: .byte $06,$B6,$D1,$00,$40,$58,$56,$00,$00,$00,$AA,$7F,$F0,$06,$B6,$D1
       .byte $00,$40
LF980: LDA    #$10    
       STA    $A3     
       STA    $A4     
       LDA    $DF     
       AND    #$01    
       NOP            
       NOP            
LF98C: LDA    $D9     
       LSR            
       BCC    LF9B4   
       DEC    $D9     
       LDA    $D9     
       CMP    #$01    
       BMI    LF9A1   
       LDA    $D3     
       CMP    $D9     
       PHP            
       PLA            
       STA    ENABL   
LF9A1: LDY    $A3     
       LDA    ($97),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    LFAC0,Y 
       STA    COLUP0  
       DEY            
       STY    $A3     
       JMP    LF98C   
LF9B4: DEC    $D9     
       LDA    $D9     
       CMP    #$06    
       BMI    LF9C4   
       LDA    $D3     
       CMP    $D9     
       PHP            
       PLA            
       STA    ENABL   
LF9C4: LDY    $A4     
       LDA    ($99),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    LFA80,Y 
       STA    COLUP1  
       DEY            
       STY    $A4     
       BNE    LF98C   
       JMP    LF556   
LF9D9: .byte $00,$40,$80,$20,$00,$00,$00
LF9E0: INY            
       CPY    #$03    
       BCC    LF9E8   
       LDA    #$00    
       TAY            
LF9E8: STY    $D7     
       STA    WSYNC   
       JMP    LF431   
LF9EF: .byte $90
LF9F0: STA    AUDF0   
       LDA    CXM1P   
       AND    #$40    
       BEQ    LF9FB   
       JMP    LF13D   
LF9FB: LDA    CXM1P   
       AND    #$80    
       BEQ    LFA04   
       JMP    LF13D   
LFA04: JMP    LF165   
LFA07: .byte $85,$1B,$B9,$80,$FA,$85,$06,$88,$84
LFA10: LDA    #$F8    
       STA    $D3     
       STA    $D5     
       DEC    $FB     
       BEQ    LFA3E   
       LDA    $FB     
       AND    #$08    
       CMP    #$08    
       BNE    LFA2D   
       TAY            
       JSR    LFFD0   
       STA    $A6     
       LDA    LFC88,Y 
       STA    $8A     
LFA2D: JMP    LFEC0   
LFA30: .byte $FF,$85,$18,$49,$FF,$85,$1A,$A9,$08,$85,$16,$4C,$8D,$F8
LFA3E: LDA    #$0F    
       STA    $FB     
       LDA    $A5     
       AND    #$3C    
       BEQ    LFA50   
       JSR    LFFA0   
       STA    $A5     
       JMP    LFE50   
LFA50: LDA    $A5     
       AND    #$03    
       ORA    $FA     
       STA    $FA     
       AND    #$03    
       CMP    #$03    
       BEQ    LFA6F   
       LDA    #$00    
       STA    $96     
       STA    $A5     
       LDA    #$80    
       STA    $8A     
       LDA    #$E0    
       STA    $A6     
       JMP    LF88D   
LFA6F: JMP    LFC31   
LFA72: .byte $06,$5C,$CF,$00,$40,$58,$56,$00,$00,$00,$56,$00,$F0,$06
LFA80: .byte $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
       .byte $CC,$10,$04,$00,$00,$00,$04,$00,$00,$81,$E0,$CB,$00,$40,$10,$04
       .byte $00,$00,$00,$04,$00,$00,$81,$EC,$CB,$00,$40,$10,$04,$00,$00,$00
       .byte $04,$00,$00,$81,$EC,$CB,$00,$40,$10,$04,$00,$00,$00,$06,$00,$80
LFAC0: .byte $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
       .byte $CC,$40,$18,$06,$00,$00,$00,$08,$00,$80,$81,$F2,$CB,$00,$40,$20
       .byte $08,$00,$00,$00,$0A,$00,$80,$81,$F8,$CB,$00,$40,$28,$0A,$00,$00
       .byte $00,$0A,$00,$C0,$02,$02,$4C,$00,$40,$28,$0A,$00,$00,$00,$0A,$00
       .byte $C0,$02,$02,$4C,$00,$40,$28,$0A,$00,$00,$00,$0E,$00,$C0,$83,$12
       .byte $4C,$00,$40,$38,$0E,$00,$00,$00,$0E,$00,$C0,$83,$12,$4C,$00,$40
       .byte $38,$0E,$00,$00,$00,$14,$00,$E0,$04,$36,$4C,$00,$40,$50,$14,$00
       .byte $00,$00,$18,$00,$E0,$06,$82,$4C,$00,$40,$60,$18,$00,$00,$00,$18
       .byte $00,$E0,$06,$82,$4C,$00,$40,$60,$18,$00,$00,$00,$18,$00,$E0,$06
       .byte $82,$4C,$00,$40,$60,$18,$00,$00,$00,$18,$00,$F0,$06,$82,$4C,$00
       .byte $40,$60,$18,$00,$00,$00,$18,$00,$F0,$06,$82,$4C,$00,$40,$60,$18
       .byte $00,$00,$00,$18,$00,$F0,$06,$82,$4C,$00,$40,$60,$18,$00,$00,$00
       .byte $18,$00,$F0,$06,$82,$4C,$00,$40,$60,$18,$00,$00,$00,$FC,$7F,$00
       .byte $81,$E8,$CB,$00,$40,$10,$04,$00,$00,$00,$FC,$7F,$00,$81,$E8,$CB
       .byte $00,$40,$10,$04,$00,$00,$00,$FC,$7F,$00,$81,$F0,$CB,$00,$40,$10
       .byte $04,$00,$00,$00,$FC,$7F,$00,$81,$F0,$CB,$00,$40,$10,$04,$00,$00
       .byte $00,$FA,$7F,$80,$81,$F6,$CB,$00,$40,$18,$06,$00,$00,$00,$FA,$7F
       .byte $80,$81,$F6,$CB,$00,$40,$18,$06,$00,$00,$00,$F8,$7F,$80,$81,$02
       .byte $4C,$00,$40,$20,$08,$00,$00,$00,$F6,$7F,$80,$81,$0C,$4C,$00,$40
       .byte $28,$0A,$00,$00,$00,$F6,$7F,$C0,$02,$20,$4C,$00,$40,$28,$0A,$00
LFC00: LDA    $A5     
       BNE    LFC0F   
       LDA    $E6     
       BMI    LFC0C   
       JMP    LF0BC   
LFC0B: .byte $EA
LFC0C: JMP    LF0ED   
LFC0F: JMP    LFA10   
LFC12: .byte $F0,$08,$98,$38,$E9,$40,$85,$A5,$D0,$06,$C8,$98,$09,$80,$85,$A5
       .byte $29,$07,$C9,$07,$F0,$09,$A8,$B9,$80,$FC,$85,$A6,$4C,$8D,$F8
LFC31: LDA    #$FF    
       STA    $A7     
       LDX    #$02    
LFC37: LDA    #$3E    
       STA    $A0,X   
       LDA    $AB,X   
       AND    #$7E    
       STA    $AB,X   
       DEX            
       BPL    LFC37   
       LDY    #$00    
       STY    $E9     
       STY    $E6     
       LDX    #$13    
       JSR    LF614   
       STY    AUDC1   
       STY    $D3     
       STY    $D5     
       STY    $FA     
       LDA    #$E0    
       STA    $A6     
       STY    AUDC0   
       JMP    LFC73   
LFC60: LDA    CXP0FB  
       AND    #$40    
       BNE    LFC6F   
       LDA    CXP1FB  
       AND    #$40    
       BNE    LFC6F   
       JMP    LF88D   
LFC6F: JMP    LF851   
LFC72: .byte $60
LFC73: STY    AUDF0   
       STY    AUDF1   
       STY    AUDV0   
       STY    AUDV1   
       JMP    LF371   
LFC7E: .byte $40,$60
LFC80: .byte $E4,$00,$00,$00,$E8,$7F,$F0,$06
LFC88: .byte $2A,$2A,$00,$50,$50,$CA,$CA,$FF,$FF,$DB,$FF,$DB,$FF,$DB,$FF,$DB
       .byte $FF,$DB,$FF,$DB,$FF,$DB,$FF,$FF,$FF,$DB,$FF,$DB,$FF,$DB,$FF,$DB
       .byte $FF,$DB,$FF,$DB,$FF,$DB,$FF,$42,$FF,$DB,$FF,$DB,$FF,$DB,$FF,$DB
       .byte $FF,$DB,$FF,$DB,$FF,$DB,$B7,$00,$FF,$DB,$FF,$DB,$FF,$DB,$FF,$DB
       .byte $FF,$DB,$FF,$DB,$FF,$DB,$19,$00,$FF,$DB,$FF,$DB,$FF,$DB,$FF,$DB
       .byte $FF,$DB,$FF,$DB,$3F,$11,$01,$00,$FF,$DB,$FF,$DB,$FF,$DB,$FF,$DB
       .byte $FF,$DB,$FF,$5B,$39,$10,$00,$00,$FF,$DB,$FF,$DB,$FF,$DB,$FF,$DB
       .byte $FF,$DB,$FB,$48,$00,$00,$00,$00,$FF,$DB,$FF,$DB,$FF,$DB,$FF,$DB
       .byte $FB,$C9,$40,$00,$00,$00,$00,$00,$FF,$DB,$FF,$DB,$FF,$DB,$FF,$DB
       .byte $BA,$08,$00,$00,$00,$00,$00,$00,$FF,$DB,$FF,$DB,$FE,$DA,$7E,$02
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$DB,$BF,$28,$D5,$14,$21,$42
       .byte $80,$20,$00,$00,$00,$00,$00,$00,$42,$DD,$BB,$18,$58,$52,$04,$C4
       .byte $13,$D0,$46,$41,$00,$00,$00,$00,$93,$52,$04,$2B,$46,$82,$C9,$2A
       .byte $51,$C2,$40,$82,$81,$00,$00,$00,$BD,$FF,$E7,$E7,$FF,$FF,$E7,$E7
       .byte $FF,$FF,$E7,$E7,$FF,$7E,$3C,$18,$BD,$FF,$E7,$E7,$FF,$FF,$E7,$E7
       .byte $FF,$FF,$E7,$E7,$FF,$36,$24,$00,$BD,$FF,$E7,$E7,$FF,$FF,$E7,$E7
       .byte $FF,$FF,$E7,$67,$0F,$06,$00,$00,$BD,$FF,$E7,$E7,$FF,$FF,$E7,$E7
       .byte $FF,$FF,$E7,$63,$02,$00,$00,$00,$BD,$FF,$E7,$E7,$FF,$FF,$E7,$E7
       .byte $FF,$FF,$64,$40,$00,$00,$00,$00,$BD,$FF,$E7,$E7,$FF,$FF,$E7,$E7
       .byte $FF,$FF,$64,$00,$00,$00,$00,$00,$BD,$FF,$E7,$E7,$FF,$FF,$E7,$E7
       .byte $FF,$A6,$24,$00,$00,$00,$00,$00,$BD,$FF,$E7,$E7,$FF,$FF,$E7,$E7
       .byte $FE,$A6,$00,$00,$00,$00,$00,$00,$BD,$FF,$E7,$E7,$FF,$FF,$E7,$E7
       .byte $5E,$02,$00,$00,$00,$00,$00,$00,$BD,$FF,$E7,$E7,$FF,$FF,$A6,$24
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$BD,$FF,$E7,$D7,$CC,$4A,$11,$45
       .byte $04,$00,$00,$00,$00,$00,$00,$00,$BD,$FD,$41,$62,$94,$94,$22,$50
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$B3,$7B,$A5,$CA,$93,$14,$22,$11
       .byte $7C,$82,$01,$00,$00,$00,$00,$00,$42,$FD,$21,$20,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$BD,$B0,$E0,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFE50: LDA    $A5     
       AND    #$03    
       TAX            
       DEX            
       LDA    $A5     
       AND    #$04    
       BEQ    LFE5E   
       INC    $9B,X   
LFE5E: JMP    LF88D   
LFE61: .byte $FF,$E7,$E7,$FF
LFE65: JSR    LF612   
       LDA    #$00    
       STA    $96     
       STA    $FA     
       JMP    LF88D   
LFE71: LDA    $A5     
       AND    #$03    
       BEQ    LFE78   
       RTS            

LFE78: LDA    $E9     
       BNE    LFE7D   
       RTS            

LFE7D: INC    $94     
       INC    $95     
       RTS            

LFE82: .byte $E7,$E7,$FF,$FF,$E7,$E7,$FF,$FF,$E7,$67,$0F,$06,$00,$00,$BD,$FF
       .byte $E7,$E7,$FF,$FF,$E7,$E7,$FF,$FF,$E7,$67,$03,$02,$00,$00
LFEA0: LDA    $96     
       AND    #$03    
       BEQ    LFEA9   
       JMP    LF326   
LFEA9: LDA    $9D,X   
       SBC    #$10    
       ORA    #$01    
       JMP    LF31C   
LFEB2: .byte $E7,$E7,$FF,$FF,$E7,$E7,$FF,$FF,$67,$63,$02,$00,$00,$00
LFEC0: DEC    $E0     
       LDA    $E0     
       LSR            
       LSR            
       LSR            
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       STA    AUDF1   
       JMP    LF88D   
LFED2: .byte $E7,$E7,$FF,$FF,$E7
LFED7: LDX    #$02    
LFED9: LDA    #$F0    
       STA    $9D,X   
       DEX            
       BPL    LFED9   
       DEC    $A7     
       BMI    LFEE7   
       JMP    LF1A0   
LFEE7: LDA    #$00    
       STA    $96     
       STA    $FA     
       LDA    #$E0    
       STA    $A6     
       JMP    LF19E   
LFEF4: .byte $FF,$FF,$E7,$E7,$FF,$F7,$64,$00,$00,$00,$00,$00
LFF00: JMP    LFFB0   
LFF03: .byte $96,$D0,$55
LFF06: LDA    $96     
       TAY            
       AND    #$03    
       BEQ    LFF5B   
       TAX            
       DEX            
       TYA            
       AND    #$40    
       BEQ    LFF3A   
       TYA            
       SEC            
       SBC    #$04    
       STA    $96     
       LSR            
       LSR            
       AND    #$03    
       CMP    #$03    
       BNE    LFF28   
       TAY            
       JSR    LFFD0   
       STA    $A6     
LFF28: LDA    $96     
       LSR            
       NOP            
       AND    #$FF    
       STA    AUDF1   
       EOR    #$FF    
       STA    AUDV1   
       LDA    #$08    
       STA    AUDC1   
       BNE    LFF5B   
LFF3A: INC    $9B,X   
       JSR    LFF80   
       NOP            
       LDA    #$E0    
       STA    $A6     
       LDA    $9B,X   
       CMP    #$09    
       BMI    LFF5B   
       INX            
       TXA            
       ORA    #$24    
       STA    $A5     
       LDA    #$0F    
       STA    $FB     
       LDA    #$8F    
       STA    $E0     
       NOP            
       NOP            
       NOP            
LFF5B: JMP    LF84B   
LFF5E: .byte $00,$00,$BD,$FF,$E7,$E7,$FF,$FF,$E7,$E7,$5E,$02,$00,$00,$00,$00
       .byte $00,$00,$BD,$FF,$E7,$E7,$FF,$FF,$E7,$26,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFF80: LDA    #$00    
       STA    AUDC1   
       STA    $96     
       STA    $D3     
       STA    $D4     
       RTS            

LFF8B: LDA    $AB,X   
       AND    #$81    
       CMP    #$01    
       BEQ    LFF96   
       JMP    LF362   
LFF96: LDA    $9D,X   
       CMP    #$44    
       JMP    LF339   
LFF9D: .byte $00,$00,$00
LFFA0: LDA    $A5     
       SEC            
       SBC    #$04    
       RTS            

LFFA6: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFB0: LDA    $FA     
       AND    $96     
       BNE    LFFB9   
       JMP    LFF06   
LFFB9: LDA    #$00    
       STA    $96     
       JMP    LF84B   
LFFC0: .byte $00,$3F,$FF,$FF,$F0,$C3,$0F,$3F,$FF,$C0,$9E,$3E,$3E,$3E,$3E,$3E
LFFD0: LDA    $FB     
       AND    #$07    
       TAY            
       LDA    #$00    
       STA    AUDC0   
       LDA    LFC80,Y 
       RTS            

LFFDD: .byte $7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F
       .byte $7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$00
       .byte $F0,$00,$F0
