; Disassembly of roms/Okie Dokie.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Okie Dokie.bin
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
AUDC1   =  $16
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F800
LF800: .byte $FF,$FF,$FF,$FF,$FF,$FF,$00,$50,$88,$88,$50,$00,$50,$00,$00,$00
       .byte $00,$50,$88,$50,$00,$00,$50,$88,$00,$88,$88,$88,$88,$00,$00,$00
       .byte $D8,$D8,$00,$00,$50,$D8,$88,$88,$D8,$50,$88,$50,$88,$88,$50,$88
       .byte $F8,$88,$20,$20,$88,$F8,$88,$00,$00,$00,$00,$88,$50,$D8,$D8,$D8
       .byte $D8,$50,$00,$20,$88,$88,$20,$00,$88,$F8,$70,$70,$F8,$88,$00,$00
       .byte $10,$10,$00,$00,$00,$00,$00,$00,$10,$00,$E0,$A0,$A0,$A0,$A8,$38
       .byte $00,$08,$10,$20,$00,$00,$30,$48,$A0,$48,$80,$08,$10,$00,$80,$00
       .byte $40,$10,$80,$FF,$90,$01,$90,$90,$C0,$38,$C0,$28,$50,$28,$38,$68
       .byte $B0,$48,$30,$40,$F8,$F0,$F8,$F0,$F8,$F0,$A8,$10,$A0,$08,$00,$08
       .byte $D8,$F8,$E8,$98,$78,$F8,$00,$00,$48,$10,$00,$50,$C8,$50,$40,$A0
       .byte $10,$80,$E0,$00,$C8,$30,$C0,$30,$50,$01,$30,$80,$01,$81,$10,$B0
       .byte $80,$18,$80,$78,$00,$00,$00,$00,$00,$00,$00,$89,$8B,$92,$E1,$88
       .byte $8B,$F7,$03,$00,$00,$00,$C9,$09,$89,$DD,$88,$00,$FF,$00,$80,$00
       .byte $00,$06,$09,$A9,$46,$01,$7E,$80,$00,$00,$00,$00,$14,$2A,$49,$41
       .byte $80,$00,$00,$00,$00,$00,$00,$35,$49,$49,$39,$80,$00,$00,$00,$00
       .byte $00,$00,$07,$0C,$AA,$47,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LF90F: .byte $00,$00,$38,$7C,$6C,$D6,$BA,$BA,$FE,$FE,$D6,$7C,$7C,$38,$00,$00
       .byte $2A,$7C,$82,$6C,$EE,$AA,$82,$BA,$44,$38,$7C,$EE,$D6,$7C,$C6,$82
       .byte $EC,$18,$38,$28,$68,$C8,$88,$04,$04,$04,$04,$02,$02,$02,$01,$01
       .byte $42,$38,$38,$28,$28,$EE,$EE,$82,$82,$EE,$EE,$28,$28,$38,$38,$00
       .byte $48,$10,$10,$28,$28,$54,$54,$BA,$BA,$54,$54,$28,$28,$10,$10,$00
       .byte $AC,$10,$28,$2C,$2C,$28,$28,$2C,$28,$38,$7C,$F6,$F6,$F6,$6C,$38
       .byte $0E,$00,$82,$92,$BA,$6C,$54,$6C,$54,$6C,$BA,$92,$AA,$28,$10,$00
       .byte $C2,$44,$EE,$44,$44,$82,$82,$54,$7C,$6C,$FE,$BA,$7C,$38,$00,$00
       .byte $62,$7C,$38,$10
LF993: LDA    $AC     
       CLC            
       ADC    #$10    
       STA    $AC     
       CMP    #$90    
       BNE    LF9A2   
       LDA    #$10    
       STA    $AC     
LF9A2: RTS            

LF9A3: LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
LF9A9: LDY    $83     
       LDA    ($AE),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($B0),Y 
       STA    GRP1    
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    ($B4),Y 
       STA    $9E     
       LDA    ($B6),Y 
       TAX            
       LDA    ($B8),Y 
       TAY            
       LDA    $9E     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $83     
       BPL    LF9A9   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       RTS            

LF9DE: LDA    $80     
       SBC    $83     
       STA    $80     
       RTS            

LF9E5: LDY    #$05    
LF9E7: LDA    #$00    
       STA.wy $00A0,Y 
       STA.wy $00C6,Y 
       DEY            
       BPL    LF9E7   
       RTS            

LF9F3: TYA            
       CLC            
       SBC    #$0B    
       TAX            
       LDA    $8C,X   
       EOR    $8B     
       STA    $8C,X   
       RTS            

LF9FF: .byte $FF,$00,$00,$00,$00,$00,$00,$80,$40,$38,$40,$80,$00,$70,$88,$88
       .byte $70,$00,$F0,$08,$08,$F0,$00,$00,$E0,$18,$30,$18,$E0,$00,$88,$F8
       .byte $88,$00,$F8,$40,$20,$10,$F8,$00,$E8,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$48,$A8,$A8,$90,$00,$F8,$A8,$88,$88,$00,$F8,$08
       .byte $08,$08,$00,$F8,$A8,$88,$88,$00,$F8,$88,$88,$88,$00,$80,$80,$F8
       .byte $80,$80,$00,$00,$F8,$08,$08,$08,$00,$F8,$A8,$88,$88,$00,$C0,$30
       .byte $08,$30,$C0,$00,$F8,$A8,$88,$88,$00,$F8,$08,$08,$08,$08,$00,$00
       .byte $00,$00,$00
LFA72: LDX    #$0B    
LFA74: LDA    #$F9    
       STA    $AE,X   
       DEX            
       LDA    #$00    
       STA    $AE,X   
       DEX            
       BPL    LFA74   
       LDA    $82     
       CLC            
       SBC    #$0B    
       CLC            
       ROL            
       TAX            
       LDA    #$90    
       STA    $AE,X   
       RTS            

LFA8D: LDA    #$F8    
       STA    $93     
       STY    $92     
       LDY    #$05    
LFA95: LDA    ($92),Y 
       STA.wy $008C,Y 
       DEY            
       BPL    LFA95   
       RTS            

LFA9E: LDA    #$F8    
       STA    $93     
       LDA    $AB     
       STA    $92     
       LDY    #$05    
LFAA8: LDA    ($92),Y 
       EOR.wy $008C,Y 
       STA.wy $008C,Y 
       DEY            
       BPL    LFAA8   
       RTS            


START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
       LDY    #$10    
LFABD: STA    VSYNC,X 
       DEX            
       BNE    LFABD   
       DEY            
       BNE    LFABD   
       LDA    #$0C    
       STA    $82     
       STA    AUDC0   
       LDA    #$10    
       STA    $AC     
       STA    $AD     
       JSR    LF9E5   
       LDA    #$03    
       STA    $86     
       JSR    LFF7F   
LFADB: DEC    $C0     
       JSR    LFA72   
       LDX    #$FF    
       LDA    $86     
       CMP    #$01    
       BNE    LFAEA   
       LDX    INPT4   
LFAEA: STX    $A7     
       DEC    $9F     
       BPL    LFAF4   
       LDA    #$00    
       STA    AUDV0   
LFAF4: LDA    #$57    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$2A    
       STA    TIM8T   
LFB01: LDY    INTIM   
       BNE    LFB01   
       STY    WSYNC   
       STY    VSYNC   
       LDA    #$24    
       STA    TIM64T  
       LDA    $86     
       CMP    #$02    
       BMI    LFB1F   
       BNE    LFB1C   
       JSR    LFFAC   
       INC    $88     
LFB1C: JSR    LFF3D   
LFB1F: LDA    SWCHB   
       ROR            
       BCS    LFB5E   
       LDA    $AC     
       STA    $AD     
       LDX    #$00    
       STX    AUDV1   
       STX    $88     
       JSR    LFF9C   
       INX            
       STX    $86     
       LDA    $A6     
       CMP    #$B4    
       BNE    LFB53   
       LDA    $AA     
       CMP    $AB     
       BNE    LFB45   
       DEX            
       JSR    LFF9C   
LFB45: JSR    LF9E5   
       LDY    $AA     
       JSR    LFA8D   
       JSR    LFA9E   
       JMP    LFBBB   
LFB53: JSR    LF9E5   
       LDY    $A6     
       JSR    LFA8D   
       JMP    LFBBB   
LFB5E: TAY            
       LDX    #$01    
       JSR    LFF9C   
       JSR    LF993   
       TYA            
       ROR            
       BCS    LFB9E   
       LDA    $81     
       BNE    LFBBB   
       INC    $81     
       LDA    $86     
       BEQ    LFB84   
       LDA    #$00    
       STA    $86     
       STA    $88     
       STA    AUDV1   
       LDA    #$FA    
       STA    $A6     
       JSR    LF9E5   
LFB84: LDA    $A6     
       CLC            
       ADC    #$06    
       CMP    #$BA    
       BNE    LFB92   
       JSR    LF9E5   
       LDA    #$00    
LFB92: STA    $A6     
       TAY            
       JSR    LFA8D   
       JSR    LFF7F   
       JMP    LFC68   
LFB9E: LDY    #$F0    
       LDA    $86     
       CMP    #$01    
       BNE    LFBAC   
       LDA    SWCHA   
       AND    #$F0    
       TAY            
LFBAC: CPY    #$F0    
       BNE    LFBBB   
       LDA    $A7     
       BPL    LFBBB   
       LDA    #$00    
       STA    $81     
       JMP    LFC68   
LFBBB: LDX    $81     
       INC    $81     
       CPX    #$00    
       BEQ    LFBD0   
       CPX    #$10    
       BEQ    LFBCA   
LFBC7: JMP    LFC68   
LFBCA: LDA    #$00    
       STA    $81     
       BEQ    LFBC7   
LFBD0: LDA    $A7     
       BPL    LFC0E   
       TYA            
       ASL            
       BCS    LFBE3   
       LDY    $82     
       INY            
       CPY    #$12    
       BNE    LFBE1   
       LDY    #$0C    
LFBE1: STY    $82     
LFBE3: ASL            
       BCS    LFBF1   
       LDY    $82     
       DEY            
       CPY    #$0B    
       BNE    LFBEF   
       LDY    #$11    
LFBEF: STY    $82     
LFBF1: ASL            
       BCS    LFC03   
       INC    $8A     
       LDA    $8A     
       CMP    #$05    
       BNE    LFC0E   
       LDA    #$00    
       STA    $8A     
       JMP    LFC0E   
LFC03: ASL            
       BCS    LFC0E   
       DEC    $8A     
       BPL    LFC0E   
       LDY    #$04    
       STY    $8A     
LFC0E: LDA    $A7     
       AND    #$80    
       BNE    LFC68   
       JSR    LFF7F   
       LDX    $8A     
       INX            
       LDA    LFF37,X 
       STA    $8B     
       LDY    $82     
       JSR    LF9F3   
       LDX    $8A     
       INX            
       LDA    LFF31,X 
       STA    $8B     
       JSR    LFDF0   
       INY            
       CPY    #$06    
       BEQ    LFC37   
       JSR    LF9F3   
LFC37: DEY            
       DEY            
       BMI    LFC68   
       JSR    LF9F3   
       LDY    #$05    
       STY    $9E     
LFC42: LDA.wy $008C,Y 
       AND    #$F8    
       BEQ    LFC4D   
       LDA    #$00    
       STA    $9E     
LFC4D: DEY            
       BPL    LFC42   
       LDA    $9E     
       BEQ    LFC68   
       LDA    #$02    
       STA    $86     
       LDA    #$0A    
       STA    $C1     
       STA    $C5     
       LDA    #$04    
       STA    AUDC1   
       LDA    #$00    
       STA    $A9     
       STA    $88     
LFC68: LDA    $88     
       STA    COLUBK  
LFC6C: LDY    INTIM   
       BNE    LFC6C   
       STY    WSYNC   
       LDY    #$04    
       STY    VBLANK  
       STY    WSYNC   
       LDA    #$85    
       STA    $80     
       STY    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    REFP0   
       STA    HMP1    
LFC8B: STX    WSYNC   
       LDX    $80     
       LDY    #$00    
       STY    $89     
       CPX    #$75    
       BNE    LFCC7   
       LDA    #$84    
       STA    COLUPF  
       LDA    #$01    
       STA    CTRLPF  
       LDA    $88     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$0B    
LFCA7: LDA    LFFD6,X 
       STA    $92,X   
       DEX            
       BPL    LFCA7   
       JSR    LFD4E   
       LDA    #$FF    
       STA    PF2     
       LDY    #$06    
       STY    $83     
       LDA    #$18    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LFD6E   
       LDX    #$71    
       STX    $80     
LFCC7: CPX    #$71    
       BNE    LFCDD   
       LDA    #$01    
       STA    PF2     
       LDA    #$F9    
       LDY    #$0D    
LFCD3: STA.wy $0092,Y 
       DEY            
       DEY            
       BPL    LFCD3   
       JMP    LFD44   
LFCDD: INY            
       CPX    #$70    
       BEQ    LFD16   
       INY            
       CPX    #$60    
       BEQ    LFD16   
       INY            
       CPX    #$50    
       BEQ    LFD16   
       INY            
       CPX    #$40    
       BEQ    LFD16   
       INY            
       CPX    #$30    
       BEQ    LFD16   
       INY            
       CPX    #$20    
       BNE    LFD44   
       STY    $89     
       LDA    #$FF    
       STA    PF2     
       JSR    LFDDF   
       LDA    #$08    
       STA    $83     
       JSR    LFD6E   
       LDA    #$00    
       STA    PF2     
       JSR    LFEFC   
       LDY    #$09    
       BNE    LFD1D   
LFD16: STY    $89     
       JSR    LFED0   
       LDY    #$0E    
LFD1D: STY    $83     
       LDX    $AD     
       LDA    LF90F,X 
       STA    COLUP0  
       STA    COLUP1  
       JSR    LF9DE   
       JSR    LFD6E   
       LDA    $88     
       LDX    $89     
       DEX            
       CPX    $8A     
       BNE    LFD39   
       LDA    #$43    
LFD39: STA    COLUP0  
       STA    COLUP1  
       LDY    #$02    
       STY    $83     
       JSR    LF9A3   
LFD44: DEC    $80     
       BEQ    LFD4B   
       JMP    LFC8B   
LFD4B: JMP    LFADB   
LFD4E: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    #$06    
       LDY    #$00    
       STA    WSYNC   
LFD5A: DEX            
       BPL    LFD5A   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$D0    
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
LFD6E: LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
LFD74: LDY    $83     
       LDA    ($92),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($94),Y 
       STA    GRP1    
       LDA    ($96),Y 
       STA    GRP0    
       LDA    ($98),Y 
       STA    $9E     
       LDA    ($9A),Y 
       TAX            
       LDA    ($9C),Y 
       TAY            
       LDA    $9E     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $83     
       BPL    LFD74   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFDA9: .byte $00,$71,$89,$89,$89,$89,$70,$00,$29,$4B,$8A,$41,$28,$00,$00,$C0
       .byte $00,$80,$C0,$00,$00,$00,$F0,$89,$89,$88,$88,$F0,$00,$E4,$15,$16
       .byte $E5,$04,$00,$00,$A7,$2C,$2A,$07,$A0,$00
LFDD3: .byte $BA,$F8,$C5,$F8,$D0,$F8,$DB,$F8,$E6,$F8,$F1,$F8
LFDDF: LDA    $C0     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$0B    
LFDE7: LDA    LFDD3,X 
       STA    $92,X   
       DEX            
       BPL    LFDE7   
       RTS            

LFDF0: TYA            
       CLC            
       SBC    #$0B    
       TAX            
       LDA    $C6,X   
       EOR    $8B     
       STA    $C6,X   
       RTS            

LFDFC: .byte $FF,$FF,$FF,$FF,$00,$00,$38,$44,$44,$44,$44,$44,$44,$38,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$10,$10,$30,$10,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$7C,$40,$40,$30,$08,$04,$44,$38,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$38,$44,$44,$04,$18,$04,$44,$38,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$04,$04,$7E,$44,$24,$14,$0C,$04,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$38,$44,$44,$04,$78,$40,$40,$7C,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$38,$44,$44,$78,$40,$40,$44,$38,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$20,$20,$10,$10,$08,$08,$04,$78,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$38,$44,$44,$44,$38,$44,$44,$38,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$38,$44,$04,$3C,$44,$44,$44,$38,$00,$00
       .byte $00,$00,$00,$00,$00,$FC,$80,$80,$80,$80,$80,$80,$80,$80,$00,$00
       .byte $00,$00,$00,$00,$00,$10,$28,$28,$44,$44,$82,$82,$82,$82,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LFED0: STA    WSYNC   
       LDX    $89     
       LDA    LFF31,X 
       STA    $8B     
       LDX    #$0D    
       LDY    #$06    
LFEDD: LDA    INPT5   
       BPL    LFEE7   
       LDA.wy $008C,Y 
       JMP    LFEEA   
LFEE7: LDA.wy $00C6,Y 
LFEEA: AND    $8B     
       BNE    LFEF2   
       LDA    #$00    
       BEQ    LFEF4   
LFEF2: LDA    $AD     
LFEF4: STA    $91,X   
       DEX            
       DEX            
       DEY            
       BPL    LFEDD   
       RTS            

LFEFC: LDX    #$0B    
       LDY    #$05    
LFF00: LDA    #$FE    
       STA    $92,X   
       LDA.wy $00A0,Y 
       STA    $91,X   
       DEX            
       DEX            
       DEY            
       BPL    LFF00   
       LDA    #$C0    
       STA    $92     
       LDY    $86     
       BNE    LFF20   
       LDA    #$A0    
       STA    $92     
       STA    $96     
       LDA    #$B0    
       STA    $94     
LFF20: LDA    #$C0    
       STA    $9C     
       CPY    #$03    
       BNE    LFF30   
       STA    $94     
       STA    $96     
       STA    $98     
       STA    $9A     
LFF30: RTS            

LFF31: .byte $00,$80,$40,$20,$10,$08
LFF37: .byte $00,$C0,$E0,$70,$38,$1C
LFF3D: INC    $A8     
       LDA    $A8     
       CMP    #$08    
       BNE    LFF7E   
       LDA    #$00    
       STA    $A8     
       LDA    #$FA    
       STA    $93     
       LDA    #$2D    
       LDY    $86     
       CPY    #$03    
       BEQ    LFF5B   
       LDA    #$FA    
       STA    $93     
       LDA    #$00    
LFF5B: CLC            
       ADC    $A9     
       STA    $92     
       LDY    #$05    
LFF62: LDA    ($92),Y 
       STA.wy $008C,Y 
       DEY            
       BPL    LFF62   
       INC    $A9     
       LDA    #$27    
       LDY    $86     
       CPY    #$02    
       BEQ    LFF76   
       LDA    #$40    
LFF76: CMP    $A9     
       BNE    LFF7E   
       LDA    #$00    
       STA    $A9     
LFF7E: RTS            

LFF7F: LDA    #$FF    
       STA    AUDV0   
       LDA    #$10    
       STA    $9F     
       SED            
       LDX    #$04    
LFF8A: LDA    $A0,X   
       CLC            
       ADC    #$10    
       STA    $A0,X   
       CMP    #$00    
       BNE    LFF9A   
       DEX            
       CPX    #$00    
       BNE    LFF8A   
LFF9A: CLD            
       RTS            

LFF9C: LDA    $AA,X   
       CLC            
       ADC    #$06    
       STA    $AA,X   
       CMP    #$B4    
       BNE    LFFAB   
       LDA    #$00    
       STA    $AA,X   
LFFAB: RTS            

LFFAC: LDA    $C1     
       BMI    LFFD1   
       DEC    $C5     
       LDA    $C5     
       CMP    #$04    
       BEQ    LFFD1   
       CMP    #$00    
       BNE    LFFD0   
       DEC    $C1     
       BMI    LFFD0   
       LDA    #$08    
       STA    AUDV1   
       LDX    $C1     
       LDA    LFFE2,X 
       STA    $C5     
       LDA    LFFEC,X 
       STA    AUDF1   
LFFD0: RTS            

LFFD1: LDA    #$00    
       STA    AUDV1   
       RTS            

LFFD6: .byte $A9,$FD,$B0,$FD,$B7,$FD,$BE,$FD,$C5,$FD,$CC,$FD
LFFE2: .byte $20,$09,$09,$20,$18,$18,$18,$18,$09,$09
LFFEC: .byte $0E,$10,$12,$14,$11,$10,$11,$10,$12,$13,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $B4,$FA,$B4,$FA
