; Disassembly of roms/Fire Fly.bin
; Disassembled Tue Oct  6 15:21:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Fire Fly.bin
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
REFP0   =  $0B
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
VDELBL  =  $27
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
$0285   =  $0285

       ORG $F000
LF000: .byte $B3
LF001: .byte $C8

START:
       CLD            
       LDA    #$F0    
       STA    $95     
       LDA    #$01    
       STA    $94     
       LDX    #$00    
       STX    $96     
       STX    $97     
LF011: INC    $94     
       BEQ    LF02E   
LF015: LDA    ($94,X) 
       TAY            
       EOR    $96     
       LSR            
       BCC    LF01F   
       EOR    #$95    
LF01F: STA    $96     
       TYA            
       EOR    $97     
       ASL            
       BCC    LF029   
       EOR    #$65    
LF029: STA    $97     
       JMP    LF011   
LF02E: INC    $95     
       BNE    LF015   
       LDA    LF000   
       CMP    $96     
LF037: BNE    LF037   
       LDA    LF001   
       CMP    $97     
LF03E: BNE    LF03E   
       LDA    #$00    
       STA    SWACNT  
       STA    SWBCNT  
       TAX            
LF049: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF049   
       LDA    #$72    
       STA    $84     
LF053: STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$2A    
       STA    $029D   
       INC    $82     
       BNE    LF06C   
       INC    $81     
       BIT    $86     
       BMI    LF06C   
       DEC    $86     
LF06C: LDA    SWCHB   
       TAX            
       AND    #$03    
       CMP    #$03    
       BNE    LF07A   
       CPX    $A1     
       BEQ    LF07E   
LF07A: LDA    #$07    
       STA    $86     
LF07E: TXA            
       BIT    LFFF9   
       BNE    LF090   
       LDA    $84     
       AND    #$1F    
       ORA    #$10    
       STA    $84     
       LDA    #$00    
       STA    $85     
LF090: TXA            
       BIT    LFFF8   
       BEQ    LF09C   
       LDA    #$00    
       STA    $83     
       BEQ    LF0D2   
LF09C: LDA    $83     
       BEQ    LF0A8   
       DEC    $83     
       TXA            
       ORA    #$02    
       TAX            
       BNE    LF0D2   
LF0A8: LDA    #$0F    
       STA    $83     
       LDA    #$00    
       STA    $85     
       LDA    $84     
       AND    #$07    
       CMP    #$02    
       BNE    LF0BC   
       LDA    #$00    
       BEQ    LF0CE   
LF0BC: CMP    #$01    
       BNE    LF0C4   
       LDA    #$04    
       BNE    LF0CE   
LF0C4: CMP    #$05    
       BCC    LF0CC   
       LDA    #$02    
       BNE    LF0CE   
LF0CC: ADC    #$01    
LF0CE: ORA    #$70    
       STA    $84     
LF0D2: STX    $A1     
       LDY    #$07    
       LDA    $84     
       BMI    LF0E2   
       LDX    INPT4   
       BMI    LF0E8   
       STY    $86     
       BNE    LF0E8   
LF0E2: LDX    INPT5   
       BMI    LF0E8   
       STY    $86     
LF0E8: AND    #$60    
       BEQ    LF10D   
       STA    $A2     
       LDA    $85     
       BNE    LF113   
       TXA            
       BMI    LF117   
       LDA    $84     
       AND    #$9F    
       ORA    #$08    
       STA    $84     
       LDA    $A2     
       AND    #$60    
       CMP    #$20    
       BNE    LF113   
       LDA    $84     
       ORA    #$10    
       STA    $84     
       BNE    LF113   
LF10D: LDX    SWCHA   
       INX            
       BEQ    LF117   
LF113: LDA    #$07    
       STA    $86     
LF117: LDA    $84     
       BIT    LFFF5   
       BNE    LF125   
       BIT    LFFF6   
       BNE    LF12B   
       BEQ    LF12E   
LF125: JSR    LFF60   
       JSR    LFFD3   
LF12B: JSR    LFD23   
LF12E: LDA    $84     
       AND    #$E7    
       STA    $84     
       LDA    #$00    
       BIT    $86     
       BPL    LF13C   
       LDA    $81     
LF13C: STA    $80     
LF13E: LDA    #$00    
       LDX    #$3F    
       BIT    $0285   
       BPL    LF13E   
       STA    WSYNC   
       STA    VSYNC   
       STX    $029E   
       LDX    $AE     
       BNE    LF15B   
       JSR    LFF72   
       JSR    LFD23   
       JMP    LF178   
LF15B: BPL    LF15F   
       INC    $AE     
LF15F: LDX    $AF     
       BEQ    LF167   
       BPL    LF167   
       INC    $AF     
LF167: LDX    #$02    
LF169: LDA    $AF,X   
       BMI    LF173   
       LDA    #$00    
       STA    $AB,X   
       BEQ    LF175   
LF173: INC    $AF,X   
LF175: DEX            
       BNE    LF169   
LF178: LDA    $84     
       AND    #$60    
       BEQ    LF187   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JMP    LF1FA   
LF187: LDA    $82     
       LSR            
       LSR            
       LSR            
       STA    $A2     
       LDA    $81     
       AND    #$01    
       CLC            
       ROR            
       ROR            
       ROR            
       ROR            
       ORA    $A2     
       TAX            
       LDA    LF1B4,X 
       TAY            
       AND    #$1F    
       STA    AUDF0   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF1F4,Y 
       STA    AUDC0   
       LDA    #$05    
       STA    AUDV0   
       JMP    LF1FA   
LF1B4: .byte $0F,$10,$0F,$10,$0F,$10,$12,$14,$12,$14,$12,$14,$12,$14,$17,$2B
       .byte $14,$17,$14,$17,$14,$12,$10,$14,$0F,$5F,$26,$5D,$5F,$5A,$26,$10
       .byte $0F,$26,$0F,$26,$0F,$26,$5F,$14,$12,$10,$12,$10,$12,$10,$0F,$17
       .byte $14,$12,$14,$12,$14,$17,$2B,$17,$2D,$2B,$17,$14,$12,$10,$0F,$26
LF1F4: .byte $01,$01,$07,$07,$0C,$0C
LF1FA: LDA    $84     
       AND    #$60    
       BEQ    LF203   
       JMP    LF30E   
LF203: LDA    SWCHA   
       BIT    $84     
       BMI    LF215   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $A2     
       LDA    INPT4   
       JMP    LF21B   
LF215: AND    #$0F    
       STA    $A2     
       LDA    INPT5   
LF21B: AND    #$80    
       ORA    $A2     
       LDX    #$01    
       JSR    LF22A   
       JSR    LF2B1   
       JMP    LF30E   
LF22A: TAY            
       LDA    $B5,X   
       BEQ    LF238   
       BPL    LF236   
       INC    $B5,X   
       JMP    LF238   
LF236: DEC    $B5,X   
LF238: LDA    #$00    
       STA    $B9,X   
       LDA    $A6     
       BIT    LFFF4   
       BNE    LF24C   
       LDA    $A9,X   
       CMP    #$28    
       BEQ    LF261   
       JMP    LF2AC   
LF24C: TYA            
       BIT    LFFF8   
       BNE    LF261   
       LDA    #$FF    
       STA    $B9,X   
       LDA    $A9,X   
       CMP    #$28    
       BCC    LF261   
       SEC            
       SBC    #$01    
       STA    $A9,X   
LF261: TYA            
       BIT    LFFF9   
       BNE    LF286   
       LDA    #$01    
       STA    $B9,X   
       LDA    $A6     
       BIT    LFFF4   
       BNE    LF27B   
       TYA            
       ORA    #$0C    
       TAY            
       LDA    #$3C    
       JMP    LF284   
LF27B: LDA    $A9,X   
       CMP    #$4B    
       BCS    LF286   
       CLC            
       ADC    #$01    
LF284: STA    $A9,X   
LF286: TYA            
       BIT    LFFF7   
       BNE    LF299   
       LDA    #$C4    
       STA    $B5,X   
       LDA    $A6     
       AND    LF2AC,X 
       STA    $A6     
       DEC    $B1,X   
LF299: TYA            
       BIT    LFFF6   
       BNE    LF2AC   
       LDA    #$3C    
       STA    $B5,X   
       LDA    $A6     
       ORA    LF2AE,X 
       STA    $A6     
       INC    $B1,X   
LF2AC: RTS            

LF2AD: .byte $7F
LF2AE: .byte $BF,$80,$40
LF2B1: TYA            
       BMI    LF30D   
       LDA    $B0     
       BNE    LF30D   
       LDA    #$B0    
       STA    $B0     
       CLC            
       LDA    $B2     
       ADC    #$05    
       STA    $B4     
       SEC            
       LDA    $AA     
       SBC    #$02    
       STA    $AC     
       SEC            
       LDA    $B2     
       SBC    $B3     
       CLC            
       ADC    #$14    
       CMP    #$28    
       BCS    LF2F2   
       LDA    #$00    
       STA    $B8     
       LDA    $D0     
       AND    #$0F    
       STA    $D0     
       LDA    $AA     
       CMP    $AB     
       BCS    LF2EC   
       LDA    #$01    
       STA    $BC     
       BNE    LF30D   
LF2EC: LDA    #$FF    
       STA    $BC     
       BNE    LF30D   
LF2F2: LDA    #$00    
       STA    $BB,X   
       LDA    $D0     
       ORA    #$70    
       STA    $D0     
       LDA    $A6     
       AND    LF2AE,X 
       BEQ    LF309   
       LDA    #$02    
       STA    $B7,X   
       BNE    LF30D   
LF309: LDA    #$FE    
       STA    $B7,X   
LF30D: RTS            

LF30E: LDA    $AE     
       BPL    LF332   
       LDA    #$00    
       STA    $D0     
       LDA    #$7D    
       LDX    #$F3    
       JSR    LF38C   
       LDA    #$81    
       LDX    #$F3    
       LDY    #$04    
       JSR    LF385   
       LDA    #$00    
       LDX    #$01    
       STA    $B6     
       JSR    LF849   
       JMP    LF391   
LF332: LDA    #$00    
       STA    $D0     
       LDA    $82     
       BIT    LFFF7   
       BEQ    LF350   
       LDA    #$63    
       LDX    #$F3    
       JSR    LF38C   
       LDA    #$70    
       LDX    #$F3    
       LDY    #$08    
       JSR    LF385   
       JMP    LF391   
LF350: LDA    #$6B    
       LDX    #$F3    
       JSR    LF38C   
       LDA    #$78    
       LDX    #$F3    
       LDY    #$05    
       JSR    LF385   
       JMP    LF391   
LF363: .byte $10,$18,$10,$18,$FD,$3C,$E7,$C3,$D3,$FF,$3C,$18,$FD,$4A,$0A,$0A
       .byte $0A,$D4,$44,$2A,$9A,$9A,$2A,$44,$D4,$0A,$30,$10,$11,$BF,$2A,$EA
       .byte $0A,$0A
LF385: STA    $C6     
       STX    $C7     
       STY    $CE     
       RTS            

LF38C: STA    $BE     
       STX    $BF     
       RTS            

LF391: LDA    $84     
       AND    #$60    
       CMP    #$60    
       BNE    LF39D   
       INC    $B2     
       STA    CXCLR   
LF39D: LDA    $B2     
       CMP    #$99    
       BCS    LF3A6   
       JMP    LF3D5   
LF3A6: LDA    $B2     
       CMP    #$FA    
       BCC    LF3B2   
       LDA    #$05    
       STA    $B2     
       BNE    LF3D5   
LF3B2: LDA    #$00    
       STA    $B0     
       STA    $B1     
       LDA    $A6     
       ORA    #$03    
       STA    $A6     
       LDX    $A8     
       INX            
       CPX    #$06    
       BCC    LF3C7   
       LDX    #$00    
LF3C7: STX    $A8     
       LDA    #$0A    
       STA    $B2     
       LDA    #$70    
       STA    $B3     
       LDA    #$28    
       STA    $AB     
LF3D5: LDA    #$40    
       LDX    #$FD    
       JSR    LF81D   
       LDA    #$01    
       STA    $CF     
       LDA    $A8     
       AND    #$07    
       BNE    LF3E9   
       JMP    LF408   
LF3E9: CMP    #$01    
       BNE    LF3F0   
       JMP    LF488   
LF3F0: CMP    #$02    
       BNE    LF3F7   
       JMP    LF524   
LF3F7: CMP    #$03    
       BNE    LF3FE   
       JMP    LF593   
LF3FE: CMP    #$04    
       BNE    LF405   
       JMP    LF5F3   
LF405: JMP    LF66B   
LF408: JSR    LF85B   
       LDA    CXPPMM  
       BPL    LF41A   
       LDA    #$30    
       JSR    LFFB4   
       LDA    $A6     
       AND    #$FE    
       STA    $A6     
LF41A: LDX    #$02    
       JSR    LF746   
       LDA    $82     
       EOR    $B2     
       AND    #$0F    
       TAX            
       SEC            
       LDA    $B3     
       SBC    #$07    
       ADC    LF458,X 
       STA    $B5     
       LDA    $82     
       ADC    $B2     
       AND    #$0F    
       TAX            
       SEC            
       LDA    #$20    
       STA    $AB     
       SBC    #$08    
       CLC            
       ADC    LF458,X 
       STA    $AD     
       LDA    #$88    
       STA    $B1     
       LDA    #$00    
       STA    $D1     
       STA    $AC     
       LDA    $A6     
       BIT    LFFF9   
       BNE    LF468   
       JMP    LF8F2   
LF458: .byte $00,$02,$04,$06,$08,$0A,$0C,$0E,$0F,$0D,$0B,$09,$07,$05,$03,$01
LF468: LDA    $82     
       BIT    LFFF7   
       BNE    LF475   
       LDA    #$22    
       LDX    #$F8    
       BNE    LF479   
LF475: LDA    #$27    
       LDX    #$F8    
LF479: JSR    LF81D   
       LDA    #$2C    
       LDX    #$F8    
       LDY    #$05    
       JSR    LF816   
       JMP    LF8F2   
LF488: JSR    LF7EC   
       JSR    LF85B   
       JSR    LF863   
       LDA    #$00    
       STA    $D1     
       LDA    $A6     
       BIT    LFFF9   
       BNE    LF4B6   
       LDA    #$F0    
       LDX    #$F4    
       JSR    LF81D   
       LDA    #$1C    
       LDX    #$F5    
       LDY    #$08    
       JSR    LF816   
       LDX    #$02    
       LDA    #$00    
       JSR    LF849   
       JMP    LF8F2   
LF4B6: LDX    #$02    
       JSR    LF71E   
       LDA    $82     
       AND    LFFF7   
       BNE    LF4C8   
       LDA    #$F8    
       LDX    #$F4    
       BNE    LF4CC   
LF4C8: LDA    #$04    
       LDX    #$F5    
LF4CC: JSR    LF81D   
       LDA    #$10    
       LDX    #$F5    
       LDY    #$0C    
       JSR    LF816   
       JSR    LF77E   
       BIT    CXM0P   
       BPL    LF4ED   
       LDA    #$20    
       JSR    LFFB4   
       JSR    LF777   
       LDA    $A6     
       AND    #$FE    
       STA    $A6     
LF4ED: JMP    LF8F2   
LF4F0: .byte $3C,$7E,$FF,$99,$FF,$E7,$5A,$3C,$01,$11,$2A,$00,$BC,$7E,$99,$BD
       .byte $FF,$A5,$42,$3C,$11,$2A,$10,$91,$3C,$7E,$DD,$99,$FF,$99,$42,$3C
       .byte $40,$34,$40,$34,$34,$34,$34,$34,$34,$34,$34,$34,$D0,$D0,$D0,$D0
       .byte $D0,$D0,$D0,$D0
LF524: JSR    LF7EC   
       JSR    LF85B   
       LDA    $A6     
       BIT    LFFF9   
       BNE    LF534   
       JMP    LF572   
LF534: JSR    LF863   
       LDA    #$03    
       STA    $D1     
       LDX    #$02    
       JSR    LF71E   
       LDA    $82     
       BIT    LFFF7   
       BNE    LF54D   
       LDA    #$7B    
       LDX    #$F5    
       BNE    LF551   
LF54D: LDA    #$83    
       LDX    #$F5    
LF551: JSR    LF81D   
       LDA    #$8B    
       LDX    #$F5    
       LDY    #$08    
       JSR    LF816   
       JSR    LF77E   
       BIT    CXM0P   
       BPL    LF56F   
       LDA    $A6     
       AND    #$FE    
       STA    $A6     
       LDA    #$10    
       JSR    LFFB4   
LF56F: JMP    LF8F2   
LF572: JSR    LF777   
       JSR    LF86B   
       JMP    LF8F2   
LF57B: .byte $82,$EE,$54,$38,$10,$10,$10,$10,$82,$EE,$54,$38,$D6,$7C,$FE,$44
       .byte $44,$44,$EA,$44,$44,$44,$44,$44
LF593: JSR    LF7EC   
       JSR    LF85B   
       LDA    $A6     
       BIT    LFFF9   
       BNE    LF5A3   
       JMP    LF5E1   
LF5A3: JSR    LF863   
       LDA    #$03    
       STA    $D1     
       LDX    #$02    
       JSR    LF71E   
       LDA    $82     
       BIT    LFFF7   
       BNE    LF5BC   
       LDA    #$EA    
       LDX    #$F5    
       BNE    LF5C0   
LF5BC: LDA    #$ED    
       LDX    #$F5    
LF5C0: JSR    LF81D   
       LDA    #$F0    
       LDX    #$F5    
       LDY    #$03    
       JSR    LF816   
       JSR    LF77E   
       BIT    CXM0P   
       BPL    LF5DE   
       LDA    $A6     
       AND    #$FE    
       STA    $A6     
       LDA    #$10    
       JSR    LFFB4   
LF5DE: JMP    LF8F2   
LF5E1: JSR    LF777   
       JSR    LF86B   
       JMP    LF8F2   
LF5EA: .byte $24,$5A,$81,$42,$BD,$18,$4A,$D0,$EA
LF5F3: JSR    LF7EC   
       JSR    LF85B   
       LDA    $A6     
       BIT    LFFF9   
       BNE    LF603   
       JMP    LF64D   
LF603: JSR    LF863   
       LDA    #$03    
       STA    $D1     
       LDX    #$02    
       JSR    LF746   
       LDA    #$00    
       STA    $AD     
       LDA    $82     
       AND    #$3F    
       STA    $A2     
       SEC            
       LDA    #$55    
       SBC    $A2     
       STA    $AB     
       BIT    LFFF7   
       BNE    LF62B   
       LDA    #$53    
       LDX    #$F6    
       BNE    LF62F   
LF62B: LDA    #$5B    
       LDX    #$F6    
LF62F: JSR    LF81D   
       LDA    #$63    
       LDX    #$F6    
       LDY    #$08    
       JSR    LF816   
       BIT    CXM0P   
       BPL    LF64A   
       LDA    $A6     
       AND    #$FE    
       STA    $A6     
       LDA    #$10    
       JSR    LFFB4   
LF64A: JMP    LF8F2   
LF64D: JSR    LF86B   
       JMP    LF8F2   
LF653: .byte $02,$44,$14,$82,$3C,$7E,$7E,$3C,$44,$14,$82,$02,$3C,$7E,$7E,$3C
       .byte $34,$36,$44,$42,$34,$2A,$34,$44
LF66B: JSR    LF7EC   
       LDA    #$03    
       STA    $D1     
       LDA    #$00    
       STA    $AD     
       LDA    $A6     
       BIT    LFFF9   
       BNE    LF680   
       JMP    LF6ED   
LF680: JSR    LF863   
       BIT    CXM0P   
       BPL    LF690   
       LDA    $A6     
       AND    #$FE    
       STA    $A6     
       JMP    LF6ED   
LF690: LDX    #$02    
       JSR    LF746   
       LDA    #$25    
       JSR    LF849   
       SEC            
       LDA    $B2     
       SBC    $B3     
       BPL    LF6A7   
       LDA    $A6     
       ORA    #$40    
       BNE    LF6AB   
LF6A7: LDA    $A6     
       AND    #$BF    
LF6AB: STA    $A6     
       LDA    $AB     
       CMP    #$2F    
       BCS    LF6D7   
       LDA    $82     
       EOR    $B2     
       AND    #$3F    
       BNE    LF6C1   
       LDA    #$4B    
       STA    $AB     
       BNE    LF6D7   
LF6C1: LDA    #$F7    
       LDX    #$F6    
       JSR    LF81D   
       LDA    #$0E    
       LDX    #$F7    
       LDY    #$07    
       JSR    LF816   
       JSR    LF77E   
       JMP    LF8F2   
LF6D7: LDA    #$FE    
       LDX    #$F6    
       JSR    LF81D   
       LDA    #$0E    
       LDX    #$F7    
       LDY    #$10    
       JSR    LF816   
       JSR    LF77E   
       JMP    LF8F2   
LF6ED: LDA    #$00    
       STA    $AC     
       JSR    LF86B   
       JMP    LF8F2   
LF6F7: .byte $E0,$73,$11,$23,$41,$82,$FF,$07,$01,$43,$7E,$04,$08,$10,$20,$20
       .byte $10,$08,$04,$04,$09,$10,$10,$D4,$EA,$D4,$EA,$D4,$EA,$D4,$EA,$D4
       .byte $EA,$D4,$EA,$D4,$EA,$D4,$EA
LF71E: LDA    $84     
       AND    #$60    
       BNE    LF746   
       LDY    $A9,X   
       CPY    #$1B    
       BCC    LF740   
       CPY    #$4B    
       BCS    LF73C   
       LDA    $82     
       EOR    $B2     
       EOR    $B1,X   
       AND    #$20    
       BNE    LF740   
       CPY    #$32    
       BCC    LF746   
LF73C: DEC    $A9,X   
       BNE    LF746   
LF740: CPY    #$4B    
       BCS    LF746   
       INC    $A9,X   
LF746: LDA    $84     
       AND    #$60    
       BNE    LF776   
       LDA    $84     
       BIT    LFFF7   
       BNE    LF75A   
       LDA    $82     
       BIT    LFFF9   
       BNE    LF776   
LF75A: LDY    $B1,X   
       CPY    #$99    
       BCS    LF770   
       LDA    $82     
       EOR    $B2     
       AND    #$80    
       BNE    LF770   
       CPY    #$0A    
       BCC    LF776   
       DEC    $B1,X   
       BNE    LF776   
LF770: CPY    #$70    
       BCS    LF776   
       INC    $B1,X   
LF776: RTS            

LF777: LDA    #$00    
       STA    $AC     
       STA    $AD     
       RTS            

LF77E: LDA    $84     
       AND    #$60    
       BEQ    LF787   
       JMP    LF7EB   
LF787: LDA    $B1     
       BEQ    LF794   
       LDA    $AD     
       CMP    #$0A    
       BCC    LF794   
       JMP    LF7EB   
LF794: LDA    #$CE    
       STA    $B1     
       SEC            
       LDA    $AB     
       SBC    #$02    
       STA    $AD     
       CLC            
       LDA    $B3     
       ADC    #$04    
       STA    $B5     
       SEC            
       LDA    $AA     
       SBC    $AD     
       CLC            
       ADC    #$07    
       CMP    #$0F    
       BCS    LF7D0   
       LDA    #$00    
       STA    $BD     
       LDA    $D1     
       ORA    #$50    
       STA    $D1     
       LDA    $B5     
       CMP    $B2     
       BCC    LF7C9   
       LDA    #$FE    
       STA    $B9     
       JMP    LF7EB   
LF7C9: LDA    #$02    
       STA    $B9     
       JMP    LF7EB   
LF7D0: LDA    #$00    
       STA    $B9     
       LDA    $D1     
       AND    #$0F    
       STA    $D1     
       LDA    $AD     
       CMP    $AA     
       BCS    LF7E7   
       LDA    #$01    
       STA    $BD     
       JMP    LF7EB   
LF7E7: LDA    #$FF    
       STA    $BD     
LF7EB: RTS            

LF7EC: LDX    #$02    
LF7EE: CLC            
       LDA    $B3,X   
       ADC    $B7,X   
       STA    $B3,X   
       CMP    #$99    
       BCS    LF808   
       CLC            
       LDA    $AB,X   
       ADC    $BB,X   
       STA    $AB,X   
       CMP    #$0A    
       BCC    LF808   
       CMP    #$4C    
       BCC    LF812   
LF808: LDA    #$00    
       STA    $AB,X   
       STA    $B3,X   
       STA    $B7,X   
       STA    $BB,X   
LF812: DEX            
       BNE    LF7EE   
       RTS            

LF816: STA    $C8     
       STX    $C9     
       STY    $CF     
       RTS            

LF81D: STA    $C0     
       STX    $C1     
       RTS            

LF822: .byte $10,$00,$10,$28,$28,$92,$C6,$38,$EE,$28,$4A,$4A,$9A,$9A,$9A,$81
       .byte $EF,$C6,$7E,$18,$1B,$4F,$6C,$78,$30,$18,$18,$42,$44,$44,$46,$2A
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA
LF849: CMP    $A9,X   
       BCS    LF84F   
       DEC    $A9,X   
LF84F: RTS            

LF850: LDA    $AE     
       BMI    LF85A   
       BEQ    LF85A   
       LDA    #$80    
       STA    $AE     
LF85A: RTS            

LF85B: BIT    CXM1P   
       BPL    LF862   
       JSR    LF850   
LF862: RTS            

LF863: BIT    CXPPMM  
       BPL    LF86A   
       JSR    LF850   
LF86A: RTS            

LF86B: LDA    $A6     
       ORA    #$40    
       STA    $A6     
       BIT    LFFF8   
       BEQ    LF8B1   
       BIT    CXPPMM  
       BPL    LF88F   
       LDA    #$51    
       JSR    LFFB4   
       LDA    $A6     
       AND    #$FD    
       STA    $A6     
       CLC            
       LDA    $A7     
       ADC    #$08    
       STA    $A7     
       JMP    LF8B1   
LF88F: LDA    $A7     
       AND    #$18    
       TAX            
       CLC            
       ADC    #$B2    
       STA    $C0     
       LDA    #$00    
       STA    $D1     
       ADC    #$F8    
       STA    $C1     
       TXA            
       CLC            
       ADC    #$D2    
       STA    $C8     
       LDA    #$00    
       ADC    #$F8    
       STA    $C9     
       LDA    #$08    
       STA    $CF     
LF8B1: RTS            

LF8B2: .byte $00,$FF,$00,$E7,$FF,$FF,$00,$00,$00,$18,$18,$3C,$42,$42,$3C,$00
       .byte $78,$38,$44,$AE,$C7,$EA,$44,$78,$00,$00,$00,$AA,$FE,$FE,$00,$00
       .byte $24,$24,$24,$24,$24,$24,$24,$24,$9A,$9A,$9A,$2A,$2A,$2A,$2A,$2A
       .byte $26,$20,$28,$28,$28,$28,$28,$28,$2A,$2A,$2A,$2A,$2A,$2A,$2A,$2A
LF8F2: STA    CXCLR   
       LDA    #$00    
       STA    $87     
       LDA    $84     
       TAX            
       AND    #$60    
       CMP    #$60    
       BNE    LF904   
       JMP    LF9A9   
LF904: TXA            
       BIT    LFFF8   
       BNE    LF982   
       BIT    LFFF9   
       BEQ    LF91D   
       BIT    LFFF4   
       BEQ    LF91A   
       BIT    $82     
       BPL    LF91D   
       BMI    LF929   
LF91A: TXA            
       BMI    LF929   
LF91D: LDA    #$14    
       STA    $9F     
       LDA    $8B     
       LDX    $8D     
       LDY    #$1C    
       BNE    LF933   
LF929: LDA    #$64    
       STA    $9F     
       LDY    #$6C    
       LDA    $8C     
       LDX    $8E     
LF933: STY    $A0     
       STA    $A2     
       STX    $A3     
       LDA    #$00    
       LDX    #$03    
LF93D: STA    $8E,X   
       STA    $96,X   
       DEX            
       BNE    LF93D   
       LDY    #$04    
LF946: LDA    $A2     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LF997   
       AND    #$F0    
       STA    $8A     
       LDA    $A2     
       AND    #$0F    
       JSR    LF997   
       AND    #$0F    
       ORA    $8A     
       STA.wy $0092,Y 
       LDA    $A3     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LF997   
       AND    #$F0    
       STA    $8A     
       LDA    $A3     
       AND    #$0F    
       JSR    LF997   
       AND    #$0F    
       ORA    $8A     
       STA.wy $009A,Y 
       DEY            
       BPL    LF946   
       JMP    LFAB4   
LF982: LDA    #$14    
       STA    $9F     
       LDX    #$07    
       LDY    #$00    
LF98A: LDA    LFA4C,X 
       STA    $8F,X   
       STY    $97,X   
       DEX            
       BPL    LF98A   
       JMP    LFAB4   
LF997: TAX            
       CLC            
       LDA    #$F4    
       ADC    LF9E4,X 
       STA    $A4     
       LDA    #$F9    
       ADC    #$00    
       STA    $A5     
       LDA    ($A4),Y 
       RTS            

LF9A9: LDA    #$34    
       STA    $9F     
       LDA    #$43    
       STA    $A0     
       LDA    $84     
       BIT    LFFF8   
       BNE    LF9C3   
       BIT    LFFF7   
       BNE    LF9C9   
       LDA    #$54    
       LDX    #$FA    
       BNE    LF9CD   
LF9C3: LDA    #$4C    
       LDX    #$FA    
       BNE    LF9CD   
LF9C9: LDA    #$44    
       LDX    #$FA    
LF9CD: STA    $A2     
       STX    $A3     
       LDY    #$07    
LF9D3: LDA    LFAA4,Y 
       STA.wy $008F,Y 
       LDA    ($A2),Y 
       STA.wy $0097,Y 
       DEY            
       BPL    LF9D3   
       JMP    LFAB4   
LF9E4: .byte $00,$05,$0A,$0F,$14,$19,$1E,$23,$28,$2D,$32,$37,$3C,$41,$46,$4B
       .byte $77,$55,$55,$55,$77,$22,$66,$22,$22,$77,$77,$11,$77,$44,$77,$77
       .byte $11,$33,$11,$77,$55,$55,$77,$11,$11,$77,$44,$77,$11,$77,$66,$44
       .byte $77,$55,$77,$77,$11,$22,$22,$22,$77,$55,$22,$55,$77,$77,$55,$77
       .byte $11,$11,$22,$55,$77,$55,$55,$66,$55,$66,$55,$77,$33,$44,$44,$44
       .byte $77,$66,$55,$55,$55,$66,$77,$44,$66,$44,$77,$77,$44,$66,$44,$44
       .byte $08,$1C,$3E,$7F,$3E,$1C,$08,$00
LFA4C: .byte $3C,$7E,$DB,$FF,$BD,$C3,$7E,$3C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFAA4: .byte $10,$00,$7C,$BA,$38,$28,$28,$6C,$00,$08,$08,$08,$5C,$7F,$7F,$36
LFAB4: LDA    $85     
       BEQ    LFAC8   
       DEC    $85     
       STA    AUDF0   
       STA    $80     
       LDA    #$05    
       STA    AUDV0   
       LDA    #$00    
       STA    AUDC0   
       STA    AUDV1   
LFAC8: LDA    $87     
       EOR    $80     
       STA    COLUBK  
       LDX    #$0F    
       BIT    LFFF6   
       BEQ    LFAD7   
       LDX    #$00    
LFAD7: STX    $A2     
       AND    #$F0    
       ORA    $A2     
       STA    $87     
       LDA    #$D2    
       STA    $8A     
       LDX    #$00    
       LDY    $9F     
       JSR    LFDD0   
       LDX    #$01    
       LDY    $A0     
       JSR    LFDD0   
       LDA    #$00    
LFAF3: BIT    $0285   
       BPL    LFAF3   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       LDX    #$00    
       STX    NUSIZ1  
       LDA    $84     
       AND    #$61    
       CMP    #$61    
       BNE    LFB12   
       LDX    #$02    
LFB12: STX    NUSIZ0  
       LDA    $87     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $8B     
       BIT    $84     
       BPL    LFB22   
       LDA    $8C     
LFB22: STA    $87     
       LDY    #$00    
LFB26: LDA.wy $0097,Y 
       TAX            
       LDA.wy $008F,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    GRP1    
       DEC    $8A     
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       INY            
       CPY    #$08    
       BCC    LFB26   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       DEC    $8A     
       LDY    $88     
       LDA    $84     
       BIT    LFFF2   
       BEQ    LFB59   
       LDY    $89     
LFB59: AND    #$60    
       CMP    #$60    
       BEQ    LFB95   
       CMP    #$20    
       BEQ    LFB95   
       CMP    #$40    
       BEQ    LFB8E   
       LDA    $84     
       BIT    LFFF8   
       BNE    LFB95   
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       CPY    #$02    
       BCC    LFB95   
       LDX    #$00    
       CPY    #$03    
       BCC    LFB85   
       INX            
       CPY    #$04    
       BCC    LFB85   
       LDX    #$03    
LFB85: STX    NUSIZ0  
       LDA    #$A4    
       LDX    #$FA    
       JMP    LFB99   
LFB8E: LDA    #$AC    
       LDX    #$FA    
       JMP    LFB99   
LFB95: LDA    #$54    
       LDX    #$FA    
LFB99: STA    $A2     
       STX    $A3     
       LDY    #$00    
LFB9F: LDA    ($A2),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       DEC    $8A     
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       INY            
       CPY    #$08    
       BCC    LFB9F   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       DEC    $8A     
       LDX    #$02    
LFBC0: LDA    $A6     
       LDY    #$00    
       AND    LF2AE,X 
       BNE    LFBCB   
       LDY    #$08    
LFBCB: STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       STY    CTRLPF,X
       LDA    $CF,X   
       STA    RSYNC,X 
       DEX            
       BNE    LFBC0   
       LDA    $8A     
       BIT    LFFF9   
       BEQ    LFBE7   
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
LFBE7: LSR            
       STA    $8A     
       LDX    #$00    
       LDY    $B2     
       JSR    LFDD0   
       LDX    #$01    
       LDY    $B3     
       JSR    LFDD0   
       LDX    #$02    
       LDY    $B4     
       JSR    LFDD0   
       LDX    #$03    
       LDY    $B5     
       JSR    LFDD0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$19    
       STA    $A5     
       JSR    LFCC8   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    REFP0   
       STA    REFP1   
       LDA    $AC     
       STA    $D2     
       LDA    $AD     
       STA    $D3     
       LDX    #$00    
       STX    $AC     
       STX    $AD     
       LDY    #$23    
       JSR    LFDD0   
       LDX    #$01    
       LDY    #$55    
       JSR    LFDD0   
       LDA    #$0A    
       STA    $A5     
       LDA    $AA     
       STA    $A3     
       LDA    $AB     
       STA    $A4     
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       LDA    #$14    
       STA    $AA     
       STA    $AB     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$31    
       STA    $BE     
       STA    $C0     
       LDA    #$F8    
       STA    $BF     
       STA    $C1     
       LDA    #$3D    
       STA    $C6     
       STA    $C8     
       LDA    #$F8    
       STA    $C7     
       STA    $C9     
       LDA    #$0C    
       STA    $CE     
       STA    $CF     
       STA    WSYNC   
       STA    HMOVE   
       DEC    $8A     
       JSR    LFCC8   
       LDA    $A3     
       STA    $AA     
       LDA    $A4     
       STA    $AB     
       LDA    $D2     
       STA    $AC     
       LDA    $D3     
       STA    $AD     
       JMP    LFD16   
LFC95: STA    WSYNC   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUPF  
       STA    CTRLPF  
       STA    REFP0   
       STA    REFP1   
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    VDELP0  
       STA    VDELP1  
       STA    VDELBL  
       STA    RESMP0  
       STA    RESMP1  
       DEC    $8A     
       RTS            

LFCC8: LDX    #$1E    
       TXS            
       LDX    #$00    
       SEC            
       LDA    $AB     
       SBC    $8A     
       BMI    LFCDE   
       CMP    $CF     
       BCS    LFCDE   
       TAY            
       LDA    ($C0),Y 
       TAX            
       LDA    ($C8),Y 
LFCDE: LDY    $8A     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP1  
       STX    GRP1    
       CPY    $AD     
       PHP            
       LDX    #$00    
       SEC            
       LDA    $AA     
       SBC    $8A     
       BMI    LFCFE   
       CMP    $CE     
       BCS    LFCFE   
       TAY            
       LDA    ($BE),Y 
       TAX            
       LDA    ($C6),Y 
LFCFE: LDY    $8A     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       STX    GRP0    
       CPY    $AC     
       PHP            
       DEY            
       STY    $8A     
       CPY    $A5     
       BCS    LFCC8   
       LDX    #$FD    
       TXS            
       RTS            

LFD16: LDA    $8A     
       BEQ    LFD20   
       JSR    LFC95   
       JMP    LFD16   
LFD20: JMP    LF053   
LFD23: JSR    LFD2B   
       LDA    #$AF    
       STA    $A6     
       RTS            

LFD2B: LDA    #$49    
       STA    $AA     
       LDA    #$01    
       STA    $AE     
       LDA    #$00    
       STA    $B6     
       STA    $BA     
       DEC    $A8     
       LDA    #$AC    
       STA    $B2     
       RTS            

LFD40: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E0,$F0,$F8
       .byte $FC,$FE,$FF,$FF,$FF,$FF,$FE,$FE,$FC,$FC,$F8,$F8,$60,$00,$00,$00
LFDD0: STA    WSYNC   
       STA    HMOVE   
       CPY    #$99    
       BCC    LFDDA   
       LDY    #$4C    
LFDDA: LDA    LFEC7,Y 
       STA    HMP0,X  
       LDA    LFE2E,Y 
       AND    #$0F    
       STA    $A5     
       LDA    LFE2E,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAY            
       LDA    LFE1E,Y 
       STA    $A2     
       LDA    LFE26,Y 
       STA    $A3     
       LDY    $A5     
       STA    WSYNC   
       STA    HMOVE   
       JMP.ind ($00A2)
LFE03: .byte $EA,$4C,$0F,$FE,$4C,$0C,$FE,$EA,$EA,$88,$D0,$FD,$95,$10,$85,$02
       .byte $85,$2A,$C6,$8A,$C6,$8A,$A9,$00,$95,$20,$60
LFE1E: .byte $03,$04,$07,$0A,$0B,$0C,$0F,$0F
LFE26: .byte $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE
LFE2E: .byte $01,$21,$61,$32,$01,$32,$32,$32,$53,$53,$53,$53,$53,$53,$43,$43
       .byte $43,$23,$23,$23,$33,$33,$33,$54,$54,$54,$54,$54,$54,$44,$44,$44
       .byte $24,$24,$24,$34,$34,$34,$55,$55,$55,$55,$55,$55,$45,$45,$45,$25
       .byte $25,$25,$35,$35,$35,$56,$56,$56,$56,$56,$46,$46,$46,$46,$26,$26
       .byte $26,$36,$36,$36,$57,$57,$57,$57,$57,$57,$47,$47,$47,$27,$27,$27
       .byte $37,$37,$37,$58,$58,$58,$58,$58,$58,$48,$48,$48,$28,$28,$28,$38
       .byte $38,$38,$59,$59,$59,$59,$59,$59,$49,$49,$49,$29,$29,$29,$39,$39
       .byte $39,$5A,$5A,$5A,$5A,$5A,$5A,$4A,$4A,$4A,$2A,$2A,$2A,$3A,$3A,$3A
       .byte $5B,$5B,$5B,$5B,$5B,$5B,$4B,$4B,$4B,$2B,$2B,$2B,$3B,$3B,$3B,$3B
       .byte $3B,$3B,$3B,$5C,$4C,$4C,$4C,$4C,$4C
LFEC7: .byte $20,$20,$F0,$10,$F0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0
       .byte $D0,$F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0
       .byte $F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0
       .byte $E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$00,$F0,$E0,$D0,$F0,$E0
       .byte $D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0
       .byte $F0,$E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0,$F0
       .byte $E0,$D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0
       .byte $D0,$F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0
       .byte $F0,$E0,$D0,$C0,$B0,$A0,$F0,$E0,$D0,$F0,$E0,$D0,$F0,$E0,$D0,$C0
       .byte $B0,$A0,$90,$B0,$00,$F0,$E0,$D0,$C0
LFF60: LDX    #$04    
       STX    $88     
       LDX    #$00    
       LDA    $84     
       BIT    LFFF9   
       BEQ    LFF6F   
       LDX    #$04    
LFF6F: STX    $89     
       RTS            

LFF72: LDA    $84     
       AND    #$60    
       BNE    LFFB3   
       LDA    $84     
       BIT    LFFF8   
       BNE    LFF9B   
       BIT    LFFF2   
       BNE    LFF89   
       DEC    $88     
       JMP    LFF8B   
LFF89: DEC    $89     
LFF8B: CLC            
       LDA    $88     
       TAX            
       ADC    $89     
       BEQ    LFFA4   
       LDA    $84     
       AND    #$1F    
       CPX    $89     
       BCC    LFF9F   
LFF9B: ORA    #$40    
       BNE    LFFA1   
LFF9F: ORA    #$C0    
LFFA1: STA    $84     
       RTS            

LFFA4: LDA    $84     
       AND    #$07    
       ORA    #$20    
       STA    $84     
       LDA    #$FF    
       STA    $85     
       JSR    LFF60   
LFFB3: RTS            

LFFB4: LDX    #$00    
       BIT    $84     
       BPL    LFFBB   
       INX            
LFFBB: TAY            
       AND    #$F0    
       SED            
       CLC            
       ADC    $8D,X   
       STA    $8D,X   
       TYA            
       AND    #$0F    
       ADC    $8B,X   
       BCC    LFFCF   
       LDA    #$99    
       STA    $8D,X   
LFFCF: STA    $8B,X   
       CLD            
       RTS            

LFFD3: LDA    #$00    
       LDX    #$04    
LFFD7: STA    $8A,X   
       DEX            
       BPL    LFFD7   
       RTS            

LFFDD: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF
LFFF2: .byte $80,$40
LFFF4: .byte $20
LFFF5: .byte $10
LFFF6: .byte $08
LFFF7: .byte $04
LFFF8: .byte $02
LFFF9: .byte $01,$02,$F0,$02,$F0,$02,$F0
