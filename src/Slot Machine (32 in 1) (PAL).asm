; Disassembly of roms/Slot Machine (32 in 1) (PAL).bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Slot Machine (32 in 1) (PAL).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
CTRLPF  =  $0A
REFP1   =  $0C
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMOVE   =  $2A
HMCLR   =  $2B
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
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       INC    $A5     
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$05    
       STA    CTRLPF  
LF016: LDX    #$03    
LF018: LDA    #$00    
       STA    $B8,X   
       DEX            
       BPL    LF018   
       JMP    LF599   
LF022: LDY    #$04    
       LDX    #$0F    
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF031   
       LDY    #$00    
       LDX    #$FF    
LF031: STY    $C8     
       LDA    #$FF    
       STA    $CA     
       LDY    #$00    
       LDA    $A4     
       CMP    #$0F    
       BEQ    LF045   
       LDY    $A0     
       TXA            
       AND    #$F7    
       TAX            
LF045: STY    $C9     
       STX    $CA     
       LDX    $C8     
       LDY    #$03    
LF04D: LDA    LF0F3,X 
       EOR    $C9     
       AND    $CA     
       STA.wy $0006,Y 
       INX            
       DEY            
       BPL    LF04D   
LF05B: LDA    INTIM   
       BNE    LF05B   
       STA    WSYNC   
       STA    VBLANK  
       LDX    #$1C    
LF066: STA    WSYNC   
       DEX            
       BNE    LF066   
       JSR    LF567   
       LDX    #$03    
LF070: STA    WSYNC   
       LDA    #$00    
       STA    $8C,X   
       DEX            
       BPL    LF070   
       JSR    LF56B   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$05    
       STA    $C8     
       CLC            
       LDX    #$03    
LF087: STA    WSYNC   
LF089: LDA    $8C     
       STA    GRP0    
       LDA    $8D     
       STA    GRP1    
       LDA    $80,X   
       ADC    $C8     
       TAY            
       LDA    LF6A0,Y 
       AND    #$F0    
       STA    $C9     
       LDA    $86,X   
       ADC    $C8     
       TAY            
       LDA    $8E     
       STA    GRP0    
       LDA    $8F     
       STA    GRP1    
       LDA    LF6A0,Y 
       AND    #$0F    
       ORA    $C9     
       STA    $8C,X   
       DEX            
       BPL    LF087   
       LDX    #$03    
       DEC    $C8     
       BPL    LF089   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       JSR    LF567   
       LDX    #$0F    
LF0CB: STA    WSYNC   
       DEX            
       BNE    LF0CB   
       JSR    LF561   
       JSR    LF566   
       LDA    #$3C    
       STA    REFP1   
       STA    $9E     
       CLC            
       LDY    $90     
       LDA    LF620,Y 
       STA    GRP0    
       LDX    #$FC    
       STX    PF1     
       LDX    #$3C    
       STX    PF2     
       JMP    LF103   
LF0EF: .byte $00,$30,$60,$00
LF0F3: .byte $B0,$38,$44,$44,$00,$0F,$0C
LF0FA: .byte $0C,$90,$92,$50,$52,$91,$93,$51,$53
LF103: STA    WSYNC   
       LDX    #$03    
       STA    GRP1    
       LDA    $90     
       AND    #$0F    
       BNE    LF111   
       LDX    #$00    
LF111: LDA    $91     
       AND    #$0F    
       BNE    LF119   
       LDX    #$01    
LF119: LDA    $92     
       AND    #$0F    
       BNE    LF121   
       LDX    #$02    
LF121: LDY    $91     
       LDA    LF620,Y 
       STA    $C9     
       STA    GRP0    
       STA    GRP1    
       LDY    $92     
       LDA    LF620,Y 
       STA    GRP0    
       STA    GRP1    
       STA    $CA     
       LDY    $90     
       LDA    LF620,Y 
       STA    GRP0    
       STA    GRP1    
       STA    $C8     
       INC    $94,X   
       LDA    $94,X   
       ADC    LF0EF,X 
       TAY            
       LDA    LF72C,Y 
       STA    $90,X   
       INC    $90     
       INC    $91     
       LDA    $C9     
       STA    GRP0    
       STA    GRP1    
       INC    $92     
       LDA    $CA     
       STA    GRP0    
       STA    GRP1    
       LDA    $C8     
       STA    GRP0    
       DEC    $9E     
       BPL    LF103   
       JSR    LF567   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    REFP1   
LF174: STA    WSYNC   
       DEC    $9E     
       LDA    $9E     
       CMP    #$F0    
       BNE    LF174   
       JSR    LF56B   
       LDX    #$01    
LF183: STA    WSYNC   
       LDA    #$00    
       STA    $8C,X   
       STA    $8E,X   
       DEX            
       BPL    LF183   
       LDA    #$05    
       STA    $C8     
       LDX    #$01    
       CLC            
LF195: STA    WSYNC   
LF197: LDA    $8C     
       STA    GRP0    
       LDA    $8E     
       STA    GRP1    
       LDA    $8A,X   
       ADC    $C8     
       TAY            
       LDA    LF6A0,Y 
       AND    #$0F    
       STA    $8C,X   
       LDA    $C8     
       ADC    #$3C    
       TAY            
       LDA    $8D     
       STA    GRP0    
       LDA    $8F     
       STA    GRP1    
       LDA    LF6A0,Y 
       AND    $C0,X   
       STA    $8E,X   
       DEX            
       NOP            
       BPL    LF195   
       LDX    #$01    
       DEC    $C8     
       BPL    LF197   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       JSR    LF567   
       LDX    #$1A    
LF1D8: STA    WSYNC   
       DEX            
       BNE    LF1D8   
       STX    PF1     
       STX    PF2     
       LDA    #$1A    
       STA    TIM64T  
LF1E6: LDA    INTIM   
       BNE    LF1E6   
       LDA    #$2A    
       STA    HMCLR   
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       LDA    $C7     
       BNE    LF205   
       CLC            
       LDA    #$01    
       ADC    $9F     
       STA    $9F     
       BCC    LF20D   
LF205: INC    $A0     
       BPL    LF20D   
       LDA    #$01    
       STA    $A4     
LF20D: LDA    INTIM   
       BNE    LF20D   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$24    
       STA    TIM64T  
       LDA    $A1     
       BNE    LF244   
       LDA    SWCHB   
       AND    #$02    
       BNE    LF251   
       LDA    #$0C    
       STA    AUDC0   
       SED            
       CLC            
       LDA    #$01    
       ADC    $A5     
       CMP    #$09    
       BNE    LF236   
       LDA    #$01    
LF236: STA    $A5     
       CLD            
       LDA    #$1E    
       STA    $A1     
       LDA    #$00    
       STA    $A4     
       JMP    LF016   
LF244: DEC    $A1     
       LDA    SWCHB   
       AND    #$02    
       BEQ    LF251   
       LDA    #$00    
       STA    $A1     
LF251: LDA    SWCHB   
       AND    #$01    
       CMP    $C6     
       BEQ    LF26E   
       STA    $C6     
       CMP    #$00    
       BNE    LF26E   
       LDA    #$0F    
       STA    $A4     
       LDA    $C5     
       BNE    LF26B   
       JMP    LF016   
LF26B: JMP    LF599   
LF26E: LDA    $9F     
       AND    #$01    
       STA    $C3     
       TAX            
       ASL            
       STA    $C4     
       ORA    #$08    
       STA    AUDF0   
       LDY    #$00    
       STY    AUDC0   
       LDA    $C2     
       AND    #$01    
       BEQ    LF288   
       LDY    #$18    
LF288: STY    $AB     
       INC    $AD     
       LDA    $AC     
       CMP    #$81    
       BCC    LF2C1   
       LDA    $AE     
       BNE    LF2C1   
       LDA    $AF     
       BNE    LF2C1   
       LDA    $A4     
       CMP    #$0F    
       BNE    LF2C1   
       LDX    #$02    
LF2A2: LDA    $AD     
       AND    #$0F    
       STA    $C8     
       LDA    $98,X   
       SBC    $C8     
       STA    $98,X   
       LSR    $AD     
       DEX            
       BPL    LF2A2   
       LDA    #$30    
       STA    $AC     
       LDA    #$00    
       STA    $C0     
       STA    $C1     
       STA    $AD     
       STA    $AE     
LF2C1: LDA    $AC     
       CMP    #$81    
       BCS    LF32D   
       LDA    $AC     
       BMI    LF30A   
       LDA    $9F     
       AND    #$01    
       BNE    LF2D3   
       INC    $AC     
LF2D3: LDA    $AC     
       CMP    #$35    
       BCC    LF2E1   
       AND    #$1F    
       BNE    LF2E1   
       LDA    #$08    
       STA    AUDC0   
LF2E1: LDA    #$40    
       CMP    $AC     
       BCC    LF2F0   
       DEC    $9B     
       DEC    $9C     
       DEC    $9D     
       JMP    LF32D   
LF2F0: LDA    #$60    
       CMP    $AC     
       BCC    LF301   
       LDA    #$02    
       STA    $9B     
       DEC    $9C     
       DEC    $9D     
       JMP    LF32D   
LF301: LDA    #$02    
       STA    $9C     
       DEC    $9D     
       JMP    LF32D   
LF30A: LDA    #$02    
       STA    $9D     
       LSR            
       STA    $AE     
       STA    $AF     
       LDA    #$00    
       STA    $A0     
       STA    $B3     
       STA    $B4     
       INC    $AC     
       LDA    $BC     
       STA    $A2     
       LDA    $BD     
       STA    $A3     
       LDA    $BE     
       BNE    LF32B   
       LDA    #$01    
LF32B: STA    $BF     
LF32D: LDX    $C3     
       LDA    $AE,X   
       AND    #$01    
       BNE    LF338   
       JMP    LF3D8   
LF338: LDA    $BC,X   
       BNE    LF33F   
       JMP    LF3D6   
LF33F: STA    $CE     
       LDA    $C2     
       BPL    LF34B   
       LDA    #$01    
       STA    $CE     
       STA    $BC,X   
LF34B: LDA    $CE     
       ASL            
       ADC    $CE     
       STA    $CE     
       LDX    #$02    
LF354: CLC            
       TXA            
       ADC    $CE     
       TAY            
       CLC            
       LDA    $98,X   
       ADC    $AB     
       ADC    LF5FF,Y 
       STA    $C8,X   
       DEX            
       BPL    LF354   
       LDX    $C8     
       LDA    LF72C,X 
       JSR    LF562   
       STA    $C8     
       LDX    $C9     
       LDA    LF75C,X 
       JSR    LF562   
       STA    $C9     
       LDX    $CA     
       LDA    LF78C,X 
       JSR    LF562   
       STA    $CA     
LF384: LDA    #$02    
       STA    $CF     
LF388: LDX    $C3     
       LDA    $A9,X   
       ASL            
       ASL            
       CLC            
       ADC    $CF     
       TAX            
       LDA    LF6E8,X 
       STX    $CE     
       LDX    $CF     
       CMP    #$08    
       BEQ    LF3A1   
       CMP    $C8,X   
       BNE    LF3BF   
LF3A1: DEC    $CF     
       BPL    LF388   
       LDX    $CE     
       BNE    LF3AF   
       LDA    $C9     
       CMP    #$06    
       BEQ    LF3BF   
LF3AF: LDA    LF6EB,X 
       LDX    $C3     
       CLC            
       ADC    $B6,X   
       STA    $B6,X   
       STA    $B3,X   
       LDA    $BD     
       STA    $BE     
LF3BF: LDX    $C3     
       DEC    $A9,X   
       BMI    LF3CD   
       LDA    $A9,X   
       AND    #$07    
       BEQ    LF3D8   
       BNE    LF384   
LF3CD: LDA    #$10    
       STA    $A9,X   
       JSR    LF591   
       BNE    LF3D8   
LF3D6: ASL    $AE,X   
LF3D8: LDA    $AE,X   
       AND    #$02    
       BEQ    LF43A   
       LDA    $B6,X   
       BEQ    LF408   
       LDA    $9F     
       AND    #$02    
       BNE    LF43A   
       LDX    $C4     
       LDA    #$0C    
       STA    AUDC0   
       SED            
       LDA    #$01    
       CLC            
       ADC    $B9,X   
       STA    $B9,X   
       LDA    #$00    
       ADC    $B8,X   
       STA    $B8,X   
       BCC    LF400   
       INC    $C7     
LF400: LDX    $C3     
       CLD            
       DEC    $B6,X   
       JMP    LF43A   
LF408: LDA    $C2     
       BPL    LF430   
       LDA    $9F     
       LSR            
       AND    #$03    
       ADC    #$01    
       STA    $BE     
       LDA    $B3,X   
       BNE    LF41D   
       LDA    #$01    
       BNE    LF41F   
LF41D: LDA    $A2,X   
LF41F: STA    $BC,X   
       JSR    LF591   
       LDA    $BC,X   
       STA    $A2,X   
       BEQ    LF430   
       LDA    #$01    
       STA    $AE,X   
       BNE    LF43A   
LF430: ASL    $AE,X   
       LDA    #$01    
       STA    AUDC0   
       LDA    #$F0    
       STA    $C0,X   
LF43A: LDA    INPT4,X 
       AND    #$80    
       STA    $C8     
       LDA    $AE,X   
       AND    #$04    
       BEQ    LF485   
       LDA    $A4     
       CMP    #$0F    
       BNE    LF485   
       LDY    $C4     
       JSR    LF588   
       BNE    LF45F   
       STA    $AE,X   
       LDA    #$01    
       STA    $A4     
       LDA    #$FF    
       STA    $C5     
       BNE    LF4D1   
LF45F: LDA    $C2     
       AND    #$02    
       BNE    LF488   
       CPX    #$00    
       BNE    LF488   
       LDA    $AF     
       AND    #$02    
       BNE    LF488   
       LDA    $BF     
       BEQ    LF4C7   
       INC    $BC     
       LDA    #$01    
       JSR    LF572   
       LDY    $C4     
       JSR    LF588   
       BEQ    LF4C7   
       DEC    $BF     
       BEQ    LF4C7   
LF485: JMP    LF4D1   
LF488: LDX    $C3     
       LDA    $B1,X   
       EOR    $C8     
       AND    #$80    
       BEQ    LF4AF   
       BIT    $C8     
       BMI    LF4AF   
       LDA    $BC,X   
       TAY            
       CMP    #$05    
       BEQ    LF4D1   
       LDA    #$01    
       JSR    LF572   
       LDA    #$04    
       STA    AUDC0   
       INC    $BC,X   
       LDY    $C4     
       JSR    LF588   
       BEQ    LF4C7   
LF4AF: LDA    $BC,X   
       BEQ    LF4CD   
       LDA    SWCHA   
       CPX    #$01    
       BEQ    LF4BD   
       JSR    LF562   
LF4BD: AND    #$0F    
       CMP    #$0F    
       BEQ    LF4CD   
       LDA    #$01    
       STA    AUDC0   
LF4C7: LDA    #$00    
       STA    $AE,X   
       STA    $C0,X   
LF4CD: LDA    $C8     
       STA    $B1,X   
LF4D1: CLD            
       LDA    $A4     
       BNE    LF4F1   
       LDA    $A5     
       STA    $B9     
       LDA    #$0B    
       STA    $B8     
       LDA    $C2     
       JSR    LF562   
       AND    #$07    
       STA    $BB     
       LDA    $C2     
       AND    #$02    
       LSR            
       CLC            
       ADC    #$01    
       STA    $BA     
LF4F1: LDX    #$05    
LF4F3: LDA    $B8,X   
       JSR    LF562   
       STA    $C8     
       ASL    $C8     
       ASL    $C8     
       CLC            
       ASL            
       ADC    $C8     
       STA    $80,X   
       LDA    $A4     
       BNE    LF50C   
       LDA    #$42    
       STA    $80,X   
LF50C: LDA    $B8,X   
       AND    #$0F    
       STA    $C8     
       ASL    $C8     
       ASL    $C8     
       CLC            
       ASL            
       ADC    $C8     
       STA    $86,X   
       DEX            
       BPL    LF4F3   
LF51F: LDX    #$02    
LF521: LDA    $9B,X   
       BPL    LF52B   
       LDA    #$03    
       STA    $9B,X   
       DEC    $98,X   
LF52B: LDA    $98,X   
       BPL    LF536   
       CLC            
       LDA    $98,X   
       ADC    #$14    
       STA    $98,X   
LF536: LDA    $98,X   
       CLC            
       ADC    $AB     
       STA    $94,X   
       CLC            
       ADC    LF0EF,X 
       TAY            
       LDA    $9B,X   
       ASL            
       ASL            
       AND    #$0C    
       SEC            
       ADC    LF72C,Y 
       STX    $C8     
       ADC    $C8     
       STA    $90,X   
       DEX            
       BPL    LF521   
       LDA    $9D     
       AND    #$03    
       EOR    #$02    
       ASL            
       STA    AUDV1   
       JMP    LF022   
LF561: LSR            
LF562: LSR            
       LSR            
       LSR            
       LSR            
LF566: RTS            

LF567: LDA    #$FF    
       BNE    LF56D   
LF56B: LDA    #$F8    
LF56D: STA    PF2     
       STA    PF1     
       RTS            

LF572: SED            
       STA    $CD     
       LDX    $C4     
       LDA    $B9,X   
       SEC            
       SBC    $CD     
       STA    $B9,X   
       LDA    $B8,X   
       SBC    #$00    
       STA    $B8,X   
       LDX    $C3     
       CLD            
       RTS            

LF588: LDA.wy $00B9,Y 
       BNE    LF590   
       LDA.wy $00B8,Y 
LF590: RTS            

LF591: SEC            
       LDA    $BC,X   
       SBC    #$01    
       STA    $BC,X   
       RTS            

LF599: LDX    #$FF    
       TXS            
       STX    $AC     
       SED            
       CLC            
       LDA    #$25    
       ADC    $B9     
       STA    $B9     
       BCC    LF5AA   
       INC    $B8     
LF5AA: LDA    #$25    
       CLC            
       ADC    $BB     
       STA    $BB     
       BCC    LF5B5   
       INC    $BA     
LF5B5: CLD            
       LDX    #$01    
       STX    $BE     
       STX    $BF     
LF5BC: LDA    #$00    
       STA    $C7     
       STA    $C5     
       STA    $B6,X   
       STA    $BC,X   
       STA    $A0     
       LDA    #$08    
       STA    AUDC1   
       LSR            
       STA    AUDF0,X 
       STA    $AE,X   
       LDA    #$F0    
       STA    $C0,X   
       LDA    #$0F    
       STA    AUDV0   
       DEX            
       BPL    LF5BC   
       LDX    #$02    
LF5DE: LDA    #$02    
       STA    $9B,X   
       DEX            
       BPL    LF5DE   
       LDX    $A5     
       LDA    LF0FA,X 
       STA    $C2     
       STA    WSYNC   
       LDX    #$06    
LF5F0: DEX            
       BNE    LF5F0   
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
LF5FF: JMP    LF51F   
LF602: .byte $02,$02,$02,$01,$01,$01,$03,$03,$03,$01,$02,$03,$03,$02,$01,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LF620: .byte $00,$00,$1F,$11,$10,$38,$2F,$7F,$7F,$72,$7F,$33,$30,$00,$00,$00
       .byte $00,$00,$00,$00,$7F,$7F,$00,$7F,$7F,$00,$7F,$7F,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$7F,$7F,$7F,$7F,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$20,$20,$2F,$21,$39,$29,$2B,$00,$00,$00,$00
       .byte $00,$10,$08,$04,$02,$01,$0F,$08,$08,$08,$08,$0F,$0B,$0F,$00,$00
       .byte $00,$00,$00,$00,$08,$28,$2A,$3A,$0E,$08,$08,$08,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$0F,$09,$03,$07,$07,$0F,$0F,$1F,$01,$00,$00,$00
LF6A0: .byte $00,$EE,$AA,$AA,$AA,$EE,$00,$EE,$44,$44,$CC,$44,$00,$EE,$88,$EE
       .byte $22,$EE,$00,$EE,$22,$66,$22,$EE,$00,$22,$22,$EE,$AA,$AA,$00,$EE
       .byte $22,$EE,$88,$EE,$00,$EE,$AA,$EE,$88,$EE,$00,$22,$22,$22,$AA,$EE
       .byte $00,$EE,$AA,$EE,$AA,$EE,$00,$EE,$22,$EE,$AA,$EE,$00,$44,$00,$44
       .byte $22,$EE,$00,$00,$00,$00,$00,$00
LF6E8: .byte $06,$08,$08
LF6EB: .byte $02,$06,$06,$08,$05,$04,$04,$01,$0A,$04,$04,$04,$0A,$05,$05,$01
       .byte $0E,$05,$05,$05,$0E,$07,$07,$01,$12,$07,$07,$07,$12,$02,$02,$02
       .byte $14,$02,$02,$01,$14,$02,$01,$02,$14,$02,$01,$01,$14,$01,$02,$02
       .byte $14,$01,$02,$01,$14,$01,$01,$02,$14,$01,$01,$01,$64,$00,$00,$00
       .byte $C8
LF72C: .byte $20,$10,$30,$30,$30,$20,$00,$30,$20,$30,$30,$30,$20,$30,$10,$30
       .byte $20,$30,$30,$30,$20,$10,$30,$30,$40,$10,$50,$60,$50,$40,$00,$70
       .byte $40,$60,$10,$50,$40,$50,$10,$50,$40,$50,$10,$50,$40,$10,$50,$60
LF75C: .byte $30,$20,$30,$00,$30,$30,$30,$30,$30,$20,$30,$10,$20,$30,$30,$30
       .byte $20,$30,$30,$10,$30,$20,$30,$00,$60,$50,$60,$00,$60,$70,$10,$70
       .byte $60,$40,$70,$40,$50,$70,$60,$10,$40,$60,$70,$10,$60,$50,$60,$00
LF78C: .byte $30,$20,$30,$30,$20,$30,$30,$10,$30,$20,$30,$30,$30,$30,$00,$30
       .byte $20,$10,$30,$30,$30,$20,$30,$30,$70,$40,$50,$70,$40,$50,$70,$40
       .byte $70,$50,$50,$70,$50,$70,$00,$50,$70,$10,$70,$10,$70,$40,$50,$70
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0
       .byte $00,$F0,$00,$F0
