; Disassembly of roms/Space Tunnel (Taiwan).bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Space Tunnel (Taiwan).bin
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
HMP0    =  $20
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF500   =   $F500
LF600   =   $F600

       ORG $F000

START:
       CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$38    
       STA    $8D     
       LDA    #$03    
       STA    $8F     
       LDA    #$02    
       STA    $8A     
       LDA    #$10    
       STA    $8C     
       STA    $8B     
       LDA    #$10    
       STA    $92     
       LDA    #$FF    
       STA    $94     
LF025: LDA    #$00    
       LDX    #$A0    
LF029: STA    VSYNC,X 
       INX            
       BNE    LF029   
       LDA    #$50    
       STA    $E6     
       LDA    #$40    
       STA    $AE     
       STA    $CC     
       STA    $CA     
       LDA    #$00    
       STA    $AC     
       LDA    #$25    
       STA    $B4     
       LDA    #$1E    
       STA    $D3     
       LDA    LFB9A   
       STA    $DD     
       LDA    #$6A    
       STA    $DC     
LF04F: JSR    LF7E1   
       LDA    #$00    
       STA    COLUBK  
       JSR    LF812   
       JSR    LF649   
       LDA    $B4     
       STA    NUSIZ1  
       LDA    $E2     
       STA    NUSIZ0  
       LDA    $D3     
       AND    $A5     
       STA    COLUPF  
       LDA    #$2C    
       AND    $A5     
       STA    COLUP0  
       LDA    $8D     
       AND    $A5     
       STA    COLUP1  
       LDA    $90     
       LDX    #$00    
       JSR    LF7B7   
       LDA    $B5     
       LDX    #$01    
       JSR    LF7B7   
       LDA    $A1     
       LDX    #$02    
       JSR    LF7B7   
       LDA    $A2     
       LDX    #$03    
       JSR    LF7B7   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $DD     
       AND    $A5     
       STA    COLUBK  
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$00    
       STA    $AB     
       LDA    #$D0    
       STA    $A8     
       LDX    #$00    
       STX    $B0     
       STX    $B1     
       LDA    $CA     
       STA    $AE     
       STA    HMCLR   
       LDX    #$07    
       LDA    $A8     
LF0B8: LDY    #$00    
       CMP    $C6     
       BNE    LF0C0   
       LDY    #$02    
LF0C0: STY    ENAM0   
       CMP    $91     
       BNE    LF0C8   
       STX    $B0     
LF0C8: LDY    $B0     
       BEQ    LF0CE   
       DEC    $B0     
LF0CE: LDA    LFBDE,Y 
       AND    $A5     
       STA    COLUP0  
       LDA    ($AC),Y 
       STA    GRP0    
       DEC    $A8     
       STA    WSYNC   
       LDY    #$00    
       LDA    $A8     
       CMP    $CD     
       BNE    LF0E7   
       LDY    #$02    
LF0E7: STY    ENAM1   
       CMP    $B6     
       BNE    LF0EF   
       STX    $B1     
LF0EF: LDY    $B1     
       BEQ    LF0F5   
       DEC    $B1     
LF0F5: LDA    LFBE6,Y 
       ORA    $8D     
       AND    $A5     
       STA    COLUP1  
       LDA    ($AE),Y 
       STA    GRP1    
       DEC    $A8     
       LDY    $A8     
       STA    WSYNC   
       LDA    ($A6),Y 
       STA    PF0     
       LDA    $A8     
       CMP    #$80    
       BCS    LF0B8   
LF112: DEC    $A8     
       LDY    #$00    
       LDA    $A8     
       CMP    $CD     
       BNE    LF11E   
       LDY    #$02    
LF11E: STY    ENAM1   
       LDX    #$03    
       JSR    LF789   
       LDA    $A8     
       CMP    #$2E    
       BCS    LF112   
       JSR    LF8D8   
       SEC            
       LDA    $A8     
       SBC    #$0A    
       STA    $A8     
LF135: STA    WSYNC   
       DEC    $A8     
       LDA    $A8     
       CMP    #$15    
       BCS    LF135   
       LDA    #$09    
       STA    TIM64T  
       JSR    LF730   
       LDA    $86     
       BNE    LF14E   
       JMP    LF23C   
LF14E: LDA    $8B     
       ORA    $8C     
       BNE    LF18A   
       LDA    $B3     
       AND    #$0F    
       TAY            
       LDA    LFB60,Y 
       STA    AUDF1   
       LDA    $E1     
       AND    #$07    
       TAY            
       LDA    LFB70,Y 
       STA    AUDC1   
       SEC            
       LDA    $B6     
       SBC    $91     
       BCS    LF171   
       EOR    #$FF    
LF171: TAX            
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF950,Y 
       STA    $C5     
       CLC            
       LDA    $B3     
       AND    #$07    
       TAY            
       LDA    LF954,Y 
       ADC    $C5     
       STA    AUDV1   
LF18A: INC    $E0     
       LDA    $8C     
       BNE    LF1A8   
       LDA    $C9     
       CMP    #$47    
       BCC    LF1A8   
       LDA    #$05    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       LDA    $C9     
       AND    #$0F    
       EOR    #$0F    
       ADC    #$08    
       STA    AUDF0   
LF1A8: LDA    NUSIZ1  
       ASL            
       BCC    LF1B1   
       LDA    #$01    
       STA    $DE     
LF1B1: LDA    $DE     
       BEQ    LF1C3   
       LDA    #$0F    
       STA    AUDV0   
       DEC    $DE     
       LDA    #$07    
       STA    AUDC0   
       LDA    #$0A    
       STA    AUDF0   
LF1C3: LDA    $8C     
       CMP    #$28    
       BCC    LF1E4   
       TAY            
       LDA    LF500,Y 
       STA    AUDF0   
       LDA    LF600,Y 
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$0F    
       STA    AUDV1   
LF1E4: LDA    $8C     
       BNE    LF1FA   
       LDA    $8B     
       CMP    #$11    
       BCC    LF1FA   
       AND    #$1F    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$0D    
       STA    AUDV0   
LF1FA: LDA    $8C     
       BNE    LF218   
       LDA    $8B     
       CMP    #$25    
       BCC    LF218   
       AND    #$0F    
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC0   
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDF0   
       LDA    #$0E    
       STA    AUDF1   
LF218: LDA    $D5     
       BEQ    LF23C   
       DEC    $D5     
       LDA    $D5     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFB89,Y 
       STA    AUDF0   
       LDA    $D5     
       AND    #$0F    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$00    
       STA    AUDC1   
       STA    AUDF1   
       STA    AUDV1   
LF23C: LDA    $DB     
       BEQ    LF260   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    $DB     
       AND    #$0F    
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC1   
       LDA    LFB78,Y 
       STA    AUDF1   
       DEC    $DB     
       BNE    LF260   
       LDA    #$00    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
LF260: LDA    $94     
       BEQ    LF2AA   
       DEC    $94     
       LDA    $94     
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    #$04    
       STA    AUDC0   
       STA    AUDC1   
       LDA    LFB9E,Y 
       STA    AUDF0   
       LDA    $94     
       AND    #$07    
       ASL            
       STA    AUDV1   
       STA    AUDV0   
       LDA    LFBBE,Y 
       STA    AUDF1   
       LDA    $94     
       BNE    LF2AA   
       LDA    #$06    
       STA    $86     
       JSR    LF686   
       LDA    #$50    
       STA    $90     
       LDA    #$A0    
       STA    $91     
       LDA    #$00    
       STA    $88     
       STA    $89     
       STA    $8C     
       STA    $8E     
       LDA    #$08    
       STA    $92     
       LDA    #$10    
       STA    $8B     
LF2AA: LDA    INTIM   
       BNE    LF2AA   
       JSR    LF7FF   
       LDA    #$26    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF2D8   
       LDA    #$FF    
       STA    $94     
       LDA    #$10    
       STA    $8C     
       STA    $8B     
       STA    $86     
       LDA    #$00    
       STA    $88     
       STA    $89     
LF2CF: LDA    SWCHB   
       LSR            
       BCC    LF2CF   
       JMP    LF025   
LF2D8: LSR            
       BCS    LF31C   
       LDA    #$00    
       STA    $86     
       JSR    LF686   
       INC    $87     
       LDA    $87     
       CMP    #$04    
       BNE    LF2EE   
       LDA    #$00    
       STA    $87     
LF2EE: LDY    $87     
       INY            
       TYA            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$08    
       STA    $92     
       LDA    #$00    
       STA    $88     
       STA    $89     
       LDY    #$01    
       LDA    $87     
       LSR            
       LSR            
       BCS    LF30A   
       LDY    #$03    
LF30A: STY    $8F     
       LDA    #$60    
       STA    $8C     
       STA    $8B     
LF312: LDA    SWCHB   
       LSR            
       LSR            
       BCC    LF312   
       JMP    LF025   
LF31C: LDY    #$FF    
       LSR            
       LSR            
       BCS    LF324   
       LDY    #$0F    
LF324: STY    $A5     
       LDY    #$15    
       LDA    SWCHB   
       ASL            
       ASL            
       BCS    LF331   
       LDY    #$10    
LF331: STY    $E2     
       LDA    $94     
       BEQ    LF344   
       LDA    #$07    
       STA    $86     
       JSR    LF686   
       LDA    #$00    
       STA    $86     
       BEQ    LF347   
LF344: JSR    LF686   
LF347: LDA    $8C     
       BEQ    LF366   
       CMP    #$10    
       BEQ    LF353   
       DEC    $8C     
       BNE    LF38E   
LF353: LDA    REFP1   
       ASL            
       BCS    LF38E   
       LDA    $86     
       BEQ    LF38E   
       DEC    $86     
       BEQ    LF38E   
       LDA    #$00    
       STA    $8C     
       BNE    LF38E   
LF366: LDA    $C9     
       BNE    LF38E   
       LDA    REFP1   
       ASL            
       BCS    LF38E   
       LDY    #$04    
       LDA    $E2     
       AND    #$0F    
       BEQ    LF379   
       LDY    #$08    
LF379: TYA            
       CLC            
       ADC    $90     
       STA    $A1     
       LDA    $91     
       SEC            
       SBC    #$04    
       STA    $C6     
       LDA    $8E     
       STA    $C7     
       LDA    #$50    
       STA    $C9     
LF38E: LDA    $86     
       BEQ    LF3B8   
       LDA    $8C     
       BNE    LF3B8   
       LDA    WSYNC   
       ASL            
       BCS    LF3A9   
       LDA    VBLANK  
       ASL            
       BCS    LF3A9   
       LDA    $8B     
       BNE    LF3B8   
       LDA    COLUP1  
       ASL            
       BCC    LF3B8   
LF3A9: LDA    #$50    
       STA    $8C     
       LDA    #$D0    
       STA    $AC     
       LDA    #$F5    
       STA    $CD     
       JMP    LF3CD   
LF3B8: LDA    $8C     
       BNE    LF3F6   
       LDA    $8B     
       BEQ    LF3C8   
       CMP    #$10    
       BEQ    LF3F2   
       DEC    $8B     
       BNE    LF3F6   
LF3C8: LDA    VSYNC   
       ASL            
       BCS    LF3D2   
LF3CD: LDA    COLUP1  
       ASL            
       BCC    LF3F6   
LF3D2: JSR    LF878   
       JSR    LF73F   
       LDA    $C5     
       BNE    LF3F6   
       INC    $E5     
       LDA    $E5     
       AND    #$07    
       TAY            
       LDA    LF95C,Y 
       STA    $8D     
       LDA    #$08    
       STA    $CA     
       LDA    #$30    
       STA    $8B     
       BNE    LF3F6   
LF3F2: LDA    #$00    
       STA    $CA     
LF3F6: INC    $B3     
       LDA    $8C     
       BNE    LF449   
       INC    $A9     
       LDA    $8F     
       LSR            
       AND    $A9     
       BNE    LF449   
       LDA    $8E     
       LSR            
       BCS    LF42A   
       DEC    $A6     
       DEC    $A6     
       INC    $A4     
       LDA    $A4     
       AND    #$07    
       STA    $AA     
       BNE    LF427   
       SED            
       SEC            
       LDA    $D9     
       SBC    #$10    
       STA    $D9     
       LDA    $D8     
       SBC    #$00    
       STA    $D8     
       CLD            
LF427: JMP    LF449   
LF42A: INC    $A6     
       INC    $A6     
       DEC    $A4     
       LDA    $A4     
       AND    #$07    
       STA    $AA     
       CMP    #$07    
       BNE    LF449   
       SED            
       CLC            
       LDA    $D9     
       ADC    #$10    
       STA    $D9     
       LDA    $D8     
       ADC    #$00    
       STA    $D8     
       CLD            
LF449: LDA    #$FD    
       STA    $A7     
       LDA    #$FA    
       STA    $AD     
       STA    $AF     
       LDA    $AA     
       STA    $A3     
       LDA    $8F     
       LSR            
       AND    $B3     
       BNE    LF495   
       LDY    $8E     
       LDX    $90     
       LDA    SWCHA   
       ASL            
       BCS    LF476   
       CPX    #$90    
       BCS    LF476   
       INX            
       INX            
       TYA            
       AND    #$03    
       ORA    #$08    
       TAY            
       BNE    LF491   
LF476: ASL            
       BCS    LF487   
       CPX    #$08    
       BCC    LF487   
       DEX            
       DEX            
       TYA            
       AND    #$03    
       ORA    #$04    
       TAY            
       BNE    LF491   
LF487: ASL            
       BCS    LF48C   
       LDY    #$00    
LF48C: ASL            
       BCS    LF491   
       LDY    #$01    
LF491: STY    $8E     
       STX    $90     
LF495: LDA    $C9     
       BEQ    LF4E7   
       CMP    #$40    
       BEQ    LF49F   
       DEC    $C9     
LF49F: LDX    $A1     
       LDY    $C6     
       LDA    $C7     
       LSR            
       LSR            
       LSR            
       BCC    LF4B4   
       DEX            
       DEX            
       DEX            
       DEX            
       CPX    #$18    
       BCS    LF4D9   
       BCC    LF4DF   
LF4B4: LSR            
       BCC    LF4C1   
       INX            
       INX            
       INX            
       INX            
       CPX    #$80    
       BCC    LF4D9   
       BCS    LF4DF   
LF4C1: LDA    $C7     
       LSR            
       BCC    LF4D1   
       INY            
       INY            
       INY            
       INY            
       CPY    #$D0    
       BCC    LF4D9   
       JMP    LF4DF   
LF4D1: DEY            
       DEY            
       DEY            
       DEY            
       CPY    #$68    
       BCC    LF4DF   
LF4D9: STX    $A1     
       STY    $C6     
       BNE    LF4E7   
LF4DF: LDA    #$00    
       STA    $A1     
       STA    $C6     
       STA    $C9     
LF4E7: LDA    $8C     
       BEQ    LF4EE   
       JMP    LF553   
LF4EE: LDA    $8B     
       BEQ    LF514   
       LDY    $B6     
       LDA    $8E     
       LSR            
       BCS    LF507   
       INY            
       INY            
       INY            
       INY            
       CPY    #$F0    
       BCC    LF512   
       JSR    LF6EA   
       JMP    LF512   
LF507: DEY            
       DEY            
       DEY            
       DEY            
       CPY    #$11    
       BCS    LF512   
       JSR    LF6EA   
LF512: STY    $B6     
LF514: LDA    $8B     
       BNE    LF553   
       INC    $CF     
       LDA    $CF     
       AND    $8F     
       BNE    LF553   
       INC    $D0     
       LDA    $D0     
       AND    #$0F    
       BNE    LF52A   
       INC    $D4     
LF52A: LDA    $D4     
       AND    #$1F    
       TAY            
       LDA    LF964,Y 
       STA    $C5     
       LDA    LF984,Y 
       STA    $C8     
       LDY.w  $00B5   
       CPY    $C5     
       BCS    LF542   
       INY            
       INY            
LF542: DEY            
       STY    $B5     
       LDY    $B6     
       CPY    $C8     
       BCS    LF54F   
       INY            
       INY            
       INY            
       INY            
LF54F: DEY            
       DEY            
       STY    $B6     
LF553: DEC    $D6     
       BEQ    LF55A   
       JMP    LF5DE   
LF55A: JSR    LF6CE   
       LDY    $CD     
       CPY    #$E0    
       BCS    LF59F   
       CPY    #$08    
       BCC    LF59F   
       LDA    NUSIZ1  
       ASL            
       BCS    LF5CA   
       LDA.w  $00A2   
       LDX.w  $00CB   
       BNE    LF579   
       CLC            
       ADC    $8A     
       BNE    LF57E   
LF579: SEC            
       LDA    $A2     
       SBC    $8A     
LF57E: STA    $A2     
       SEC            
       LDA    #$07    
       SBC    $8A     
       AND    #$FE    
       STA    $C5     
       LDA    $D7     
       BEQ    LF596   
       SEC            
       LDA    $CD     
       SBC    $C5     
       STA    $CD     
       BNE    LF5DE   
LF596: LDA    $C5     
       CLC            
       ADC    $CD     
       STA    $CD     
       BNE    LF5DE   
LF59F: LDA    $8B     
       ORA    $8C     
       BNE    LF5DE   
       LDY    #$01    
       LDA    $B6     
       CMP    $91     
       BCS    LF5AF   
       LDY    #$00    
LF5AF: STY    $D7     
       LDX    $B5     
       STX    $A2     
       LDY    $B6     
       STY    $CD     
       JSR    LF6CE   
       LDA    $D1     
       ADC    $D2     
       AND    #$07    
       TAY            
       LDA    LF9A4,Y 
       STA    $8A     
       BNE    LF5DE   
LF5CA: LDA.w  $00CB   
       EOR    #$01    
       STA    $CB     
       LDA    $A2     
       CMP    #$40    
       BCS    LF5D9   
       ADC    #$08    
LF5D9: SEC            
       SBC    #$04    
       STA    $A2     
LF5DE: LDA    $8C     
       BNE    LF5ED   
       LDY    #$E0    
       LDA    $8E     
       LSR            
       BCS    LF5EB   
       LDY    #$F0    
LF5EB: STY    $AC     
LF5ED: LDX    #$01    
       SED            
       SEC            
LF5F1: LDA    #$00    
       ADC    $D1,X   
       STA    $D1,X   
       DEX            
       BPL    LF5F1   
       CLD            
       JSR    LF890   
       JSR    LF607   
       JSR    LF629   
       JMP    LF04F   
LF607: LDA    $89     
       AND    #$F0    
       CMP    $E6     
       BNE    LF628   
       SED            
       LDA    $E6     
       CLC            
       ADC    #$50    
       STA    $E6     
       CLD            
       LDA    #$FF    
       STA    $DB     
       INC    $E4     
       LDA    $E4     
       AND    #$03    
       TAY            
       LDA    LFB9A,Y 
       STA    $DD     
LF628: RTS            

LF629: LDA    $88     
       AND    #$0F    
       CMP    $DA     
       BEQ    LF648   
       STA    $DA     
       INC    $E3     
       LDA    $86     
       CMP    #$06    
       BEQ    LF63D   
       INC    $86     
LF63D: LDA    #$F0    
       STA    $D5     
       CLC            
       LDA    $DC     
       ADC    #$40    
       STA    $DC     
LF648: RTS            

LF649: LDA    #$20    
       LDX    #$00    
       JSR    LF7B7   
       LDA    #$50    
       LDX    #$01    
       JSR    LF7B7   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$2C    
       AND    $A5     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $80     
       STA    NUSIZ0  
       LDA    $81     
       STA    NUSIZ1  
       STA    HMCLR   
       LDY    #$07    
LF66F: STA    WSYNC   
       LDA    LFBDE,Y 
       AND    $A5     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($82),Y 
       STA    GRP0    
       LDA    ($84),Y 
       STA    GRP1    
       DEY            
       BPL    LF66F   
       RTS            

LF686: LDA    #$FA    
       STA    $83     
       STA    $85     
       LDY    $86     
       BEQ    LF699   
       DEY            
       CPY    #$04    
       BCS    LF6B7   
       CPY    #$01    
       BCS    LF6A5   
LF699: LDA    #$00    
       STA    $80     
       STA    $81     
       STA    $82     
       STA    $84     
       BEQ    LF6CA   
LF6A5: LDA    #$00    
       STA    $84     
       STA    $81     
       DEY            
       LDA    LF6CB,Y 
       STA    $80     
       LDA    #$F0    
       STA    $82     
       BNE    LF6CA   
LF6B7: LDA    #$03    
       STA    $80     
       DEY            
       DEY            
       DEY            
       DEY            
       LDA    LF6CB,Y 
       STA    $81     
       LDA    #$F0    
       STA    $82     
       STA    $84     
LF6CA: RTS            

LF6CB: .byte $00,$01,$03
LF6CE: LDA    $87     
       LSR            
       BCC    LF6D8   
       LDA    $89     
       JMP    LF6DE   
LF6D8: LDA    $89     
       LSR            
       LSR            
       LSR            
       LSR            
LF6DE: AND    #$0F    
       CLC            
       ADC    $DA     
       TAY            
       LDA    LF9BC,Y 
       STA    $D6     
       RTS            

LF6EA: CLC            
       LDA    $CC     
       ADC    #$08    
       CMP    #$90    
       BCC    LF6F5   
       LDA    #$40    
LF6F5: STA    $CC     
       TAY            
       STA.w  $00CA   
       LDA    ($A6),Y 
       ADC    $CC     
       AND    #$7F    
       ADC    #$10    
       STA.w  $00B5   
       LDA    #$00    
       STA    $8B     
       LDA    $D1     
       ADC    $D2     
       AND    #$1F    
       CMP    #$08    
       BCC    LF716   
       LDA    #$05    
LF716: CLC            
       AND    #$07    
       TAY            
       STA    $E1     
       ADC    #$20    
       STA    $B4     
       LDA    LF9AC,Y 
       STA    $D3     
       LDA    $D2     
       LSR            
       BCS    LF72D   
       LDY    #$13    
       RTS            

LF72D: LDY    #$EF    
       RTS            

LF730: LDA    #$00    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDF0   
       STA    AUDF1   
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LF73F: LDA    $B4     
       AND    #$0F    
       CMP    #$00    
       BEQ    LF784   
       CMP    #$05    
       BEQ    LF784   
       CMP    #$07    
       BEQ    LF784   
       STA    $C5     
       LDA    $B5     
       CLC            
       ADC    #$0B    
       CMP    $A1     
       BCC    LF771   
       LDA    $C5     
       LSR            
       BCC    LF763   
       LDA    #$10    
       BNE    LF76C   
LF763: LSR            
       BCC    LF76A   
       LDA    #$20    
       BNE    LF76C   
LF76A: LDA    #$40    
LF76C: CLC            
       ADC    $B5     
       STA    $B5     
LF771: LDA    $C5     
       LSR            
       AND    $C5     
       TAY            
       CLC            
       ADC    #$20    
       STA    $B4     
       STA    $C5     
       LDA    LF9AC,Y 
       STA    $D3     
       RTS            

LF784: LDA    #$00    
       STA    $C5     
       RTS            

LF789: LDA    $A8     
       STA    WSYNC   
       CMP    $B6     
       BNE    LF795   
       LDA    #$07    
       STA    $B1     
LF795: LDY    $B1     
       BEQ    LF79B   
       DEC    $B1     
LF79B: LDA    LFBE6,Y 
       ORA    $8D     
       AND    $A5     
       STA    COLUP1  
       LDA    ($AE),Y 
       STA    GRP1    
       JSR    LF7AE   
       DEC    $A8     
       RTS            

LF7AE: STA    WSYNC   
       LDY    $A8     
       LDA    ($A6),Y 
       STA    PF0     
       RTS            

LF7B7: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA.w  $00A0   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC.w  $00A0   
       CMP    #$0F    
       BCC    LF7D1   
       SBC    #$0F    
       INY            
LF7D1: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF7DB: DEY            
       BPL    LF7DB   
       STA    RESP0,X 
       RTS            

LF7E1: LDA    INTIM   
       BNE    LF7E1   
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

LF7FF: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       RTS            

LF812: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    PF0     
       LDA    #$38    
       LDX    #$00    
       JSR    LF7B7   
       LDA    #$40    
       LDX    #$01    
       JSR    LF7B7   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDA    $DC     
       AND    $A5     
       STA    COLUP1  
       STA    COLUP0  
       LDY    #$07    
       STY    $C5     
       NOP            
       NOP            
       STA    HMCLR   
LF848: LDY    $C5     
       LDA    ($92),Y 
       STA    $A0     
       STA    WSYNC   
       LDA    ($BB),Y 
       STA    GRP0    
       LDA    ($BD),Y 
       STA    GRP1    
       NOP            
       NOP            
       LDA    ($C1),Y 
       TAX            
       NOP            
       NOP            
       NOP            
       LDA    ($BF),Y 
       LDY    $A0     
       STA.w  $001B   
       STX    GRP1    
       STY    GRP0    
       DEC    $C5     
       BPL    LF848   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LF878: LDA    $B4     
       AND    #$07    
       TAY            
       LDA    LF9B4,Y 
       CLC            
       LDX    #$01    
       SED            
LF884: ADC.wx $0088,X 
       STA    $88,X   
       LDA    #$00    
       DEX            
       BPL    LF884   
       CLD            
       RTS            

LF890: LDA    $88     
       STA    $B8     
       LDA    $89     
       STA    $B9     
       LDX    #$01    
       LDY    #$04    
LF89C: LDA    $B8,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $00BB,Y 
       LDA    $B8,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA.wy $00BD,Y 
       LDA    #$FB    
       STA.wy $00BC,Y 
       STA.wy $00BE,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LF89C   
       LDA    #$FB    
       STA    $93     
       LDX    #$00    
LF8C7: LDA    $BB,X   
       CMP    #$08    
       BNE    LF8D7   
       LDA    #$00    
       STA    $BB,X   
       INX            
       INX            
       CMP    #$08    
       BNE    LF8C7   
LF8D7: RTS            

LF8D8: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    PF0     
       LDA    #$20    
       LDX    #$00    
       JSR    LF7B7   
       LDA    #$28    
       LDX    #$01    
       JSR    LF7B7   
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
LF90A: STA    WSYNC   
       LDA    LF92C,X 
       STA    GRP0    
       LDA    LF935,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LF947,X 
       TAY            
       LDA    LF93E,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF90A   
       RTS            

LF92C: .byte $00,$31,$49,$B5,$A5,$A5,$B5,$49,$31
LF935: .byte $00,$D2,$D2,$52,$D2,$92,$D2,$57,$D7
LF93E: .byte $00,$37,$37,$37,$25,$25,$25,$37,$37
LF947: .byte $00,$54,$54,$64,$77,$77,$55,$55,$77
LF950: .byte $0C,$07,$04,$01
LF954: .byte $00,$01,$02,$03,$04,$03,$02,$01
LF95C: .byte $38,$18,$0E,$2E,$5A,$4C,$8A,$AA
LF964: .byte $6A,$48,$34,$16,$08,$06,$5D,$74,$82,$6C,$4F,$3D,$38,$48,$5A,$32
       .byte $36,$1A,$05,$24,$12,$44,$64,$5A,$7C,$6A,$86,$3F,$93,$6A,$5F,$44
LF984: .byte $1A,$24,$42,$74,$B3,$DE,$EC,$E2,$86,$70,$52,$6D,$B4,$C6,$C0,$A0
       .byte $C6,$E2,$B8,$64,$38,$22,$44,$88,$54,$78,$A4,$C1,$D8,$C8,$C1,$92
LF9A4: .byte $02,$01,$03,$05,$03,$04,$04,$01
LF9AC: .byte $1E,$6A,$6A,$48,$6A,$1E,$48,$7C
LF9B4: .byte $03,$05,$05,$08,$05,$03,$08,$04
LF9BC: .byte $07,$06,$05,$05,$04,$04,$03,$03,$02,$01,$03,$04,$05,$01,$04,$02
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$44,$00
       .byte $20,$01,$44,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$00,$00,$24,$5A,$99,$42,$24,$18,$00,$10,$44,$28
       .byte $92,$28,$44,$10,$00,$63,$22,$14,$08,$55,$36,$08,$00,$10,$28,$44
       .byte $D6,$28,$6C,$00,$00,$24,$00,$5A,$5A,$81,$18,$24,$00,$10,$38,$54
       .byte $FE,$10,$38,$7C,$00,$00,$18,$24,$18,$24,$81,$66,$00,$0C,$18,$0C
       .byte $36,$49,$49,$22,$00,$42,$5A,$24,$42,$81,$5A,$24,$00,$28,$44,$92
       .byte $92,$6C,$10,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$10,$56,$38,$5E,$64,$60,$10,$00,$10,$56,$38
       .byte $5E,$64,$00,$00,$00,$D6,$10,$28,$54,$C6,$38,$10,$00,$D6,$10,$28
       .byte $54,$C6,$38,$10,$00,$10,$38,$C6,$54,$28,$10,$D6,$00,$3C,$A5,$66
       .byte $5A,$E7,$3C,$08,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66,$66
       .byte $66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C
       .byte $06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E
       .byte $4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66
       .byte $7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C
       .byte $3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF
LFB60: .byte $FF,$FF,$FF,$FF,$AA,$AA,$AA,$AA,$CC,$CC,$CC,$CC,$88,$88,$88,$88
LFB70: .byte $07,$01,$0A,$04,$09,$0C,$05,$08
LFB78: .byte $1B,$16,$12,$10,$14,$12,$14,$16,$14,$12,$12,$10,$14,$10,$14,$10
       .byte $14
LFB89: .byte $08,$08,$07,$09,$08,$0A,$09,$0B,$0A,$0C,$0B,$0D,$0C,$0E,$0D,$0F
       .byte $00
LFB9A: .byte $73,$04,$64,$00
LFB9E: .byte $11,$14,$17,$14,$0E,$14,$11,$0B,$17,$14,$11,$0E,$14,$11,$0B,$0B
       .byte $05,$0B,$09,$08,$06,$08,$09,$0B,$11,$14,$17,$1A,$11,$14,$17,$1A
LFBBE: .byte $14,$1A,$17,$1A,$13,$1A,$14,$0E,$1C,$1A,$14,$13,$1A,$14,$0E,$0E
       .byte $13,$0E,$0C,$0B,$08,$0B,$0C,$0E,$14,$1A,$1C,$1E,$14,$1A,$17,$1E
LFBDE: .byte $0C,$0C,$38,$1A,$48,$1A,$38,$0C
LFBE6: .byte $04,$04,$00,$32,$64,$32,$04,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA,$A5,$84,$38,$E9,$0A,$20,$1B,$FD
       .byte $C9,$5F,$B0,$F0,$A9,$5F,$85,$86,$60,$A5,$CF,$29,$C0,$F0,$06,$A5
       .byte $DA,$29,$03,$D0,$12,$20,$4A,$FC,$A5,$83,$C9,$62,$B0,$0A,$A5,$8E
       .byte $C9,$3D,$90,$04,$20,$02,$FD,$60,$20,$42,$FC,$A5,$84,$38,$E9,$06
       .byte $20,$1B,$FD,$C9,$61,$B0,$F0,$A9,$61,$85,$30,$30,$30,$30,$70,$70
       .byte $70,$70,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$10,$10,$10,$10,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$30,$30,$30,$30,$30,$30,$30,$30,$70,$70,$70,$70,$70,$70
       .byte $70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10,$70,$70
       .byte $70,$70,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$30,$30,$30,$30,$70,$70
       .byte $70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10,$30,$30
       .byte $30,$30,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$F0,$F0
       .byte $F0,$F0,$70,$70,$70,$70,$10,$10,$10,$10,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$30,$30,$30,$30,$70,$70,$70,$70,$10,$10
       .byte $10,$10,$30,$30,$30,$30,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$70,$70,$70,$70,$30,$30,$30,$30,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10,$30,$30
       .byte $30,$30,$10,$10,$10,$10,$10,$10,$10,$10,$30,$30,$30,$30,$30,$30
       .byte $30,$30,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$70,$70
       .byte $70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$30,$30,$30,$30,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10
       .byte $10,$10,$30,$30,$30,$30,$70,$70,$70,$70,$30,$30,$30,$30,$F0,$F0
       .byte $F0,$F0,$10,$10,$10,$10,$30,$30,$30,$30,$70,$70,$70,$70,$70,$70
       .byte $70,$70,$F0,$F0,$F0,$F0,$10,$10,$10,$10,$30,$30,$30,$30,$F0,$F0
       .byte $F0,$F0,$70,$70,$70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$70,$70
       .byte $70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10,$30,$30
       .byte $30,$30,$10,$10,$10,$10,$70,$70,$70,$70,$70,$70,$70,$70,$30,$30
       .byte $30,$30,$10,$10,$10,$10,$30,$30,$30,$30,$30,$30,$30,$30,$70,$70
       .byte $70,$70,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$30,$30
       .byte $30,$30,$30,$30,$30,$30,$10,$10,$10,$10,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$30,$30,$30,$30,$30,$30,$30,$30,$70,$70,$70,$70,$70,$70
       .byte $70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10,$70,$70
       .byte $70,$70,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$30,$30,$30,$30,$70,$70
       .byte $70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10,$30,$30
       .byte $30,$30,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$F0,$F0
       .byte $F0,$F0,$70,$70,$70,$70,$10,$10,$10,$10,$30,$30,$30,$30,$10,$10
       .byte $10,$10,$10,$10,$10,$10,$30,$30,$30,$30,$28,$A4,$41,$00,$06,$04
       .byte $03,$00,$40,$00,$80,$C0,$FF,$FF,$FF,$FF,$FF,$FF,$1F,$1F,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$00,$00,$7E,$5A,$5A,$5A,$7E,$00,$7E,$24,$24,$3C
       .byte $24,$00,$7E,$18,$7E,$42,$7E,$00,$7E,$42,$66,$42,$7E,$00,$42,$42
       .byte $7E,$5A,$5A,$00,$7E,$42,$7E,$18,$7E,$00,$7E,$5A,$7E,$18,$7E,$00
       .byte $18,$18,$24,$42,$7E,$00,$7E,$5A,$7E,$5A,$7E,$00,$7E,$42,$7E,$5A
       .byte $7E,$8F,$4F,$2F,$1F,$80,$40,$00,$02,$01,$7F,$BF,$00,$FD,$FE,$80
       .byte $40,$20,$10,$30,$30,$20,$10,$10,$20,$20,$3C,$1F,$1F,$1F,$3C,$00
       .byte $00,$00,$7C,$F8,$F8,$F8,$7C,$00,$00,$00,$7E,$FF,$FF,$C3,$00,$00
       .byte $00,$00,$C3,$FF,$FF,$7E,$00,$00,$00,$00,$30,$F8,$FC,$3E,$1E,$0C
       .byte $00,$00,$0C,$1F,$3F,$7E,$7C,$30,$00,$00,$0C,$1E,$3E,$FC,$F8,$30
       .byte $00,$00,$30,$7C,$7E,$3F,$1F,$0C,$00,$00,$17,$11,$0B,$05,$0B,$17
       .byte $11,$0B,$05,$0B,$17,$11,$0B,$05,$0B,$17,$11,$0B,$05,$0B,$17,$11
       .byte $0B,$1E,$3D,$60,$00,$38,$5F,$0C,$07,$04,$01,$3C,$00,$00,$1F,$00
       .byte $01,$03,$07,$08,$40,$41,$43,$47,$48,$80,$81,$83,$87,$88,$C0,$C1
       .byte $C3,$C7,$C8,$E0,$E1,$E3,$13,$0B,$1B,$23,$2B,$33,$9A,$A2,$92,$8A
       .byte $82,$7A,$00,$00,$00,$00,$00,$F0,$00,$F0
