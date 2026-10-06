; Disassembly of roms/Outerspc.bin
; Disassembled Tue Oct  6 15:22:40 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Outerspc.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
CTRLPF  =  $0A
PF1     =  $0E
RESP0   =  $10
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
VDELP0  =  $25
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP0FB  =  $32
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM8T   =  $0295
LF44B   =   $F44B
LF469   =   $F469

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$10    
       STA    SWBCNT  
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF00C: STA    $82,X   
       INX            
       BNE    LF00C   
       LDX    #$1C    
LF013: LDA    LF7B8,X 
       STA    $86,X   
       DEX            
       BPL    LF013   
       JSR    LF5CE   
LF01E: LDY    #$24    
       LDA    $B5     
       LSR            
       ORA    #$02    
       TAX            
       LDA    $D6     
       STA    WSYNC   
       STX    VBLANK  
       STY    TIM8T   
       JSR    LF435   
       LDA    $DA     
       STA    $BF     
       TXA            
       EOR    #$01    
       TAX            
       LDY    #$24    
       LDA    $82     
       LSR            
       ADC    #$00    
       LSR            
       ROR    $82     
       INC    $80     
       BNE    LF04A   
       INC    $82     
LF04A: LDA    INTIM   
       BNE    LF04A   
       LDA    $D5     
       STA    WSYNC   
       STX    VSYNC   
       STY    TIM8T   
       JSR    LF435   
       LDA    $80     
       AND    #$3F    
       BNE    LF073   
       INC    $DE     
       LDX    $DC     
       BEQ    LF073   
       INC    $DC     
       BNE    LF06D   
       STX    $95     
LF06D: CPX    #$7F    
       ROL            
       STA    $BC     
       LSR            
LF073: AND    #$03    
       STA    $B5     
LF077: LDA    INTIM   
       BNE    LF077   
       STA    WSYNC   
       STA    HMOVE   
       STA    VSYNC   
       LDA    #$FA    
       STA    TIM8T   
       LDA    $DC     
       CMP    #$80    
       BNE    LF095   
       JSR    LF5ED   
       JSR    LF0C7   
       INC    $DC     
LF095: LDA    SWCHB   
       AND    #$03    
       LSR            
       BNE    LF0D4   
       STA    $DC     
       LDA    #$FF    
       STA    $95     
       LDX    $DD     
       BEQ    LF0AA   
       DEX            
       BPL    LF0FC   
LF0AA: LDX    $83     
       LDA    $94     
       CPX    #$10    
       BCC    LF0B6   
       LDX    #$00    
       TXA            
       DEX            
LF0B6: CLC            
       SED            
       ADC    #$01    
       CLD            
       INX            
       STA    $94     
       STX    $83     
       JSR    LF5CE   
       LDX    #$3F    
       BNE    LF0FC   
LF0C7: LDA    #$00    
       STA    $BB     
       LDA    #$00    
       STA    $E0     
       LDA    #$1F    
       STA    $E2     
       RTS            

LF0D4: BCS    LF0FA   
       LDX    #$08    
LF0D8: LDA    LF7CC,X 
       STA    $9A,X   
       DEX            
       BNE    LF0D8   
       STX    $AE     
       STX    $AF     
       LDY    #$40    
       STY    $A1     
       LDA    $B4     
       LSR            
       TXA            
       BCC    LF0F1   
       STY    $9D     
       ROR            
LF0F1: EOR    #$81    
       STX    $95     
       STA    $DC     
       JSR    LF0C7   
LF0FA: LDX    #$00    
LF0FC: STX    $DD     
       LDX    $B5     
       LDY    #$04    
       LDA    $B1     
       ASL            
LF105: SEC            
       ROL            
       BCC    LF105   
       STA    HMCLR   
       STA    $81     
       AND    #$1C    
       AND    $80     
       BNE    LF134   
       LDY    $90,X   
       LDA    $B4     
       BMI    LF130   
       DEY            
       BPL    LF130   
       LDY    #$1F    
       LDA    #$90    
       STA    $A6,X   
       STA    $AA,X   
       LDA    #$4E    
       STA    $8C,X   
       DEC    $88,X   
       BPL    LF130   
       LDA    #$03    
       STA    $88,X   
LF130: STY    $90,X   
       LDY    $88,X   
LF134: LDA    $AA,X   
       CLC            
       ADC    LF7A0,Y 
       STA    $AA,X   
       STA    $C1     
       LDA    $A6,X   
       SEC            
       SBC    LF7A0,Y 
       STA    $A6,X   
       STA    $C0     
       LDA    $B4     
       BPL    LF14E   
       LDY    #$04    
LF14E: LDA    LF77B,Y 
       CPX    #$02    
       BCC    LF157   
       EOR    #$FF    
LF157: ADC    $8C,X   
       STA    $8C,X   
       LDY    $90,X   
       TAX            
       LDA    #$00    
       CPY    #$0E    
       ROL            
       CPY    #$18    
       ADC    #$00    
       TAY            
       LDA    LF779,Y 
       STA    CTRLPF  
       LDA    LF7A5,Y 
       STA    $D1     
       TXA            
       LDX    #$04    
       JSR    LF435   
       LDA    $B4     
       AND    #$04    
       BEQ    LF182   
       STA    $C0     
       STA    $C1     
LF182: JSR    LF622   
       LDA    $B4     
       ASL            
       BPL    LF1B5   
       LDA    $80     
       ORA    $95     
       AND    #$1F    
       ORA    $BB     
       BNE    LF1B1   
       STA    $E3     
       JSR    LF464   
       ASL            
       LDA    $B1     
       BCS    LF1A1   
       LSR            
       BPL    LF1A2   
LF1A1: ASL            
LF1A2: AND    #$7C    
       BNE    LF1A8   
       LDA    $B1     
LF1A8: STA    $B1     
       ADC    $B0     
       STA    $B0     
       ROR            
       STA    $B2     
LF1B1: LDY    #$31    
       BNE    LF1FB   
LF1B5: LDA    #$04    
       TAX            
       CLC            
       ADC    $D3     
       STA    $D6     
       JSR    LF574   
       STA    $D5     
       INC    $D5     
       LDA    $D8     
       CLC            
       ADC    #$07    
       STA    $DA     
       LDA    $B4     
       ASL            
       PHP            
       LDY    $E3     
       BEQ    LF1DD   
       DEC    $E3     
       CPY    #$28    
       BCS    LF1F4   
       LDY    #$28    
       BNE    LF1F4   
LF1DD: LDY    #$31    
       JSR    LF464   
       BCC    LF1E8   
       STX    $BF     
       LDX    #$1D    
LF1E8: ASL            
       BCC    LF1F4   
       LDA    $BB     
       BNE    LF1F4   
       DEY            
       STY    $E3     
       STX    $E1     
LF1F4: PLP            
       BCC    LF1FB   
       LDY    #$32    
       BNE    LF20A   
LF1FB: LDA    LF44B,Y 
       STA    $D5     
       LDA    LF455,Y 
       STA    $D6     
       LDA    LF45F,Y 
       STA    $DA     
LF20A: LDA    LF474,Y 
       STA    $D0     
       LDA    LF469,Y 
       STA    $CC     
       LDA    $BB     
       BNE    LF21B   
       JSR    LF50B   
LF21B: LDX    $B5     
       CPX    #$02    
       BCC    LF224   
       JMP    LF2DA   
LF224: LDA    $C8,X   
       AND    #$03    
       TAY            
       LDA    LF775,Y 
       STA    $CA,X   
       SEC            
       SBC    #$05    
       STA    $CE,X   
       TXA            
       ASL            
       CPY    #$01    
       TAY            
       LDA    $C8,X   
       AND    #$FC    
       BCS    LF240   
       ORA    #$40    
LF240: ASL            
       STA.wy $0097,Y 
       LDA    $D8,X   
       CLC            
       ADC    $D7     
       STA    $BD,X   
       STA    VDELP0,X
       LDA    #$FF    
       STA    $C2,X   
       LDA    #$01    
       LDY    $CE,X   
       BMI    LF25B   
       BEQ    LF25A   
       ASL            
LF25A: ASL            
LF25B: STA    $B7     
       ASL            
       ASL            
       ASL            
       STA    $B8     
       LDA    $D3,X   
       SEC            
       SBC    $D2     
       LDY    $BD,X   
       CPY    #$40    
       BCC    LF27B   
       CPY    #$A1    
       BCS    LF27B   
       CMP    #$20    
       BCC    LF27B   
       CMP    #$60    
       BCS    LF27B   
       STA    $C4,X   
LF27B: LDY    $B4     
       BMI    LF2A8   
       TAY            
       CMP    #$A0    
       BCS    LF294   
       ADC    $B8     
       CMP    #$9F    
       BCC    LF2A7   
LF28A: ASL    $C2,X   
       SBC    $B7     
       CMP    #$9F    
       BCS    LF28A   
       BCC    LF2A7   
LF294: CLC            
       ADC    $B8     
       BMI    LF2B1   
       TYA            
       CLC            
       ADC    #$A0    
       TAY            
LF29E: LSR    $C2,X   
       CLC            
       ADC    $B7     
       CMP    #$A0    
       BCC    LF29E   
LF2A7: TYA            
LF2A8: JSR    LF435   
       LDA    $C8,X   
       CMP    #$38    
       BCC    LF2B5   
LF2B1: LDA    #$00    
       STA    $C2,X   
LF2B5: TXA            
       BNE    LF2DA   
       LDA    $BC     
       EOR    #$01    
       TAX            
       LDA    INPT4,X 
       BMI    LF2DA   
       LDA    $C4     
       BEQ    LF2DA   
       LDA    $B4     
       BMI    LF2DA   
       LSR            
       BCC    LF2DA   
       LDA    $BB     
       SBC    #$01    
       BMI    LF2D6   
       EOR    #$05    
       EOR    $BC     
LF2D6: AND    #$07    
       STA    $84     
LF2DA: LDX    #$01    
LF2DC: LDY    $E0,X   
       LDA    $E2,X   
       BNE    LF2E7   
       LDY    LF7E7,X 
       STY    $E0,X   
LF2E7: LDA    $95     
       EOR    #$FF    
       BEQ    LF307   
       LDA    LF720,Y 
       AND    $80     
       BEQ    LF2F6   
       INY            
       INY            
LF2F6: TYA            
       BEQ    LF304   
       TXA            
       LSR            
       BCS    LF304   
       LDA    $E2     
       ASL            
       ASL            
       ASL            
       AND    #$F0    
LF304: ORA    LF721,Y 
LF307: STA    AUDC0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDV0,X 
       LDA    LF722,Y 
       CPY    #$08    
       BCS    LF318   
       LDA    $81,X   
LF318: STA    AUDF0,X 
       DEX            
       BPL    LF2DC   
       LDA    $95     
       BNE    LF323   
       STA    $DE     
LF323: EOR    #$FF    
       STA    SWCHB   
       LDA    SWCHB   
       AND    #$08    
       STA    $DF     
       TAY            
       BNE    LF338   
       LDA    $DE     
       AND    #$0F    
       STA    $DE     
LF338: LDX    #$01    
       INY            
LF33B: LDA    LF7DC,Y 
       EOR    $DE     
       STA    COLUP0,X
       LDA    $CC     
       ORA    $CA,X   
       STA    NUSIZ0,X
       DEY            
       DEX            
       BPL    LF33B   
LF34C: LDA    INTIM   
       BNE    LF34C   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       TSX            
       STX    $DB     
       LDX    #$22    
       LDA    $80     
       ORA    #$40    
       AND    $DC     
       ASL            
       CMP    #$E0    
       BCS    LF393   
       LDY    #$04    
LF369: INX            
       CPX    #$2B    
       STA    WSYNC   
       BCC    LF369   
       LDA    ($9D),Y 
       AND    #$0F    
       STA    $B7     
       LDA    ($9B),Y 
       AND    #$F0    
       ORA    $B7     
       STA    PF1     
       LDA    ($A1),Y 
       AND    #$0F    
       STA    $B7     
       LDA    ($9F),Y 
       AND    #$F0    
       ORA    $B7     
       STA    PF1     
       TXA            
       LSR            
       BCS    LF369   
       DEY            
       BPL    LF369   
LF393: STX    $B6     
       LDX    #$00    
       STA    WSYNC   
       STA    HMCLR   
       STX    PF1     
LF39D: LDA    $84,X   
       ORA    $DF     
       TAY            
       LDA    LF7D8,Y 
       EOR    $DE     
       STA    COLUP0,X
       STA    $B7,X   
       INX            
       CPX    #$04    
       BCC    LF39D   
       LDY    $BB     
       BEQ    LF3C6   
       STA.wy $0005,Y 
       LDA.wy $00B6,Y 
       LDY    $E4     
       BNE    LF3C0   
       LDX    $BB     
LF3C0: CPY    $B5     
       BNE    LF3C6   
       STA    NUSIZ1,X
LF3C6: STY    $E4     
       LDX    $B6     
LF3CA: INX            
       TXA            
       LDX    #$1F    
       TXS            
       TAX            
       SEC            
       SBC    $BD     
       LSR            
       LDY    $CE     
       BMI    LF3DC   
       BEQ    LF3DB   
       LSR            
LF3DB: LSR            
LF3DC: TAY            
       AND    #$78    
       BEQ    LF3E5   
       LDA    #$00    
       BEQ    LF3E7   
LF3E5: LDA    ($97),Y 
LF3E7: STA    WSYNC   
       AND    $C2     
       STA    GRP0    
       TXA            
       SEC            
       SBC    $C0     
       AND    $D1     
       BEQ    LF3FB   
       TXA            
       SEC            
       SBC    $C1     
       AND    $D1     
LF3FB: PHP            
       TXA            
       SEC            
       SBC    $BE     
       LSR            
       LDY    $CF     
       BMI    LF409   
       BEQ    LF408   
       LSR            
LF408: LSR            
LF409: TAY            
       AND    #$78    
       BEQ    LF412   
       LDA    #$00    
       BEQ    LF414   
LF412: LDA    ($99),Y 
LF414: AND    $C3     
       STA    WSYNC   
       STA    GRP1    
       TXA            
       SEC            
       SBC    $BF     
       AND    $D0     
       PHP            
       PHP            
       INX            
       BNE    LF3CA   
       TXA            
       LDY    #$04    
LF428: STX    GRP0,Y  
       DEY            
       BPL    LF428   
       PHA            
       PHA            
       LDX    $DB     
       TXS            
       JMP    LF01E   
LF435: CLC            
       ADC    #$37    
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       PLA            
       AND    #$0F    
       STY    $B7     
       CLC            
       ADC    $B7     
       CMP    #$0F    
       BCC    LF44D   
       SBC    #$0F    
       INY            
LF44D: CMP    #$08    
       EOR    #$0F    
       BCS    LF456   
       ADC    #$01    
LF455: DEY            
LF456: ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF45C: DEY            
       BPL    LF45C   
LF45F: STA    RESP0,X 
       STA    HMP0,X  
       RTS            

LF464: LDA    $B5     
       BNE    LF472   
       LDX    $BC     
       LDA    INPT4,X 
       ORA    $95     
       LDX    #$18    
       EOR    #$FF    
LF472: RTS            

LF473: .byte $4C
LF474: .byte $44,$3C,$34,$2C,$24,$1C,$14,$0C,$48,$4F,$57,$5F,$67,$6F,$77,$7F
       .byte $87,$8F,$50,$90,$98,$A0,$A8,$B0,$B8,$C0,$C8,$D0,$90,$00,$00,$00
       .byte $10,$10,$10,$20,$20,$00,$20,$00,$FE,$FE,$FE,$FC,$FC,$FC,$F8,$F8
       .byte $FE,$FE,$F8
LF4A7: LDA    $82     
       STA    $B7     
       LDA    $C8,X   
       CMP    #$38    
       BCS    LF4CB   
       AND    #$0C    
       LSR            
       LSR            
       STA    $84,X   
       LDA    $B1     
       ADC    $C6,X   
       STA    $C6,X   
       BCC    LF4CF   
       INC    $C8,X   
       LDA    $C8,X   
       AND    #$03    
       BNE    LF4CF   
       LDA    #$38    
       STA    $C8,X   
LF4CB: LDA    #$00    
       STA    $D8,X   
LF4CF: LDA    $C8,X   
       CMP    #$38    
       BCC    LF4FE   
       LDA    $82     
       AND    #$03    
       BNE    LF4FE   
       LDA    $B4     
       AND    #$08    
       BEQ    LF4E5   
       EOR    $82     
       AND    #$0C    
LF4E5: STA    $C8,X   
       LDA    #$00    
       STA    $C6,X   
LF4EB: LDA    $82     
LF4ED: AND    #$7F    
       SBC    $D7     
       ADC    #$3E    
       STA    $D8,X   
       LDA    $82     
       LSR            
       ADC    $D2     
       ADC    #$0A    
       STA    $D3,X   
LF4FE: LDA    $B4     
       BPL    LF50A   
       LDA    #$16    
       STA    $C9     
       LDA    #$01    
       STA    $85     
LF50A: RTS            

LF50B: LDX    $B5     
       LDY    $B5     
       LDA    $B4     
       BPL    LF514   
       DEY            
LF514: TYA            
       LSR            
       EOR    $BC     
       EOR    #$01    
       AND    #$01    
       TAY            
       CPX    #$02    
       BCC    LF528   
       BNE    LF527   
       LDA    $B4     
       BPL    LF538   
LF527: RTS            

LF528: LDA    $B4     
       ASL            
       CPX    #$01    
       BCC    LF530   
       ASL            
LF530: ASL            
       BMI    LF549   
       TYA            
       ORA    #$04    
       STA    $84,X   
LF538: LDA    SWCHA   
       ORA    $95     
       DEY            
       BMI    LF544   
       ASL            
       ASL            
       ASL            
       ASL            
LF544: STA    $B7     
       JMP    LF54C   
LF549: JSR    LF4A7   
LF54C: TXA            
       TAY            
       EOR    $80     
       AND    $A3,X   
       BNE    LF59F   
       LDX    LF7BB,Y 
       TXA            
LF558: ASL    $B7     
       BCC    LF564   
       BMI    LF568   
       DEC    $D2,X   
       DEC    $D2,X   
       BCS    LF568   
LF564: INC    $D2,X   
       INC    $D2,X   
LF568: ASL    $B7     
       INX            
       INX            
       INX            
       INX            
       INX            
       CPX    #$08    
       BCC    LF558   
       TAX            
LF574: LDA    $B4     
       BPL    LF59D   
       LDA    $D2,X   
       CMP    #$A0    
       BCC    LF589   
       CMP    #$B4    
       BCS    LF587   
       SBC    #$9F    
       JMP    LF589   
LF587: ADC    #$9F    
LF589: STA    $D2,X   
       LDA    $D7,X   
       CMP    #$28    
       BCC    LF599   
       CMP    #$E8    
       BCC    LF59D   
       ADC    #$3F    
       BPL    LF59B   
LF599: SBC    #$3F    
LF59B: STA    $D7,X   
LF59D: LDA    $D2,X   
LF59F: RTS            

LF5A0: SED            
       CLC            
       ADC    $AE,X   
       CLD            
       STA    $AE,X   
       LDY    #$00    
       CPX    #$00    
       BEQ    LF5AF   
       LDY    #$04    
LF5AF: LSR            
       LSR            
       LSR            
       LSR            
       STA    $B7     
       ASL            
       ASL            
       ADC    $B7     
       ORA    #$40    
       STA.wy $009B,Y 
       LDA    $AE,X   
       AND    #$0F    
       STA    $B7     
       ASL            
       ASL            
       ADC    $B7     
       ORA    #$40    
       STA.wy $009D,Y 
       RTS            

LF5CE: LDX    #$07    
LF5D0: LDA    LF7D0,X 
       STA    $9E,X   
       DEX            
       BNE    LF5D0   
       LDA    $94     
       STA    $AE     
       TXA            
       JSR    LF5A0   
       LDX    $83     
       LDA    LF7E9,X 
       STA    $B4     
       AND    #$01    
       EOR    #$01    
       STA    $BC     
LF5ED: LDX    #$00    
       STX    $D2     
       STX    $D7     
       STX    $BB     
       JSR    LF4EB   
       INX            
       LDA    $80     
       JSR    LF4ED   
       LDA    $B4     
       LSR            
       LSR            
       LDA    #$08    
       BCC    LF608   
       ASL            
       ASL            
LF608: STA    $B1     
       STA    $B3     
       LDX    #$14    
       LDY    #$16    
       LDA    $B4     
       BMI    LF61D   
       LDX    #$38    
       LDY    #$38    
       LSR            
       BCC    LF61D   
       LDX    #$1A    
LF61D: STX    $C8     
       STY    $C9     
       RTS            

LF622: LDA    $B5     
       EOR    #$03    
       BNE    LF69A   
       DEC    $E2     
       BPL    LF690   
       INC    $E2     
       LDA    $95     
       BNE    LF687   
       LDX    $BB     
       BEQ    LF64D   
       LDY    #$38    
       DEX            
       BNE    LF647   
       LDA    $B4     
       AND    #$20    
       BNE    LF647   
       LDA    #$1E    
       STA    $E2     
       LDY    $C8,X   
LF647: TYA            
       JSR    LF4E5   
       BNE    LF687   
LF64D: LDA    $B4     
       BPL    LF65A   
       LDA    CXP0FB  
       LDY    #$01    
       ASL            
       BPL    LF6B0   
       BMI    LF675   
LF65A: LDX    #$02    
LF65C: LDA    #$BF    
       CMP    $C5,X   
       BCS    LF66E   
       LDA    $C7,X   
       ADC    #$01    
       AND    #$03    
       BNE    LF66E   
       LDA    $C3,X   
       BNE    LF671   
LF66E: DEX            
       BNE    LF65C   
LF671: TXA            
       BEQ    LF69B   
       TAY            
LF675: LDX    $BC     
       LDA    $B3     
       STA    $B1     
       LDA    $AE,X   
       BEQ    LF681   
       LDA    #$99    
LF681: LDX    #$95    
       STY    $E4     
       BNE    LF6F1   
LF687: ASL    $B2     
       LDA    #$00    
       STA    $BB     
       ROL            
       BNE    LF6F9   
LF690: STA    CXCLR   
       LDA    #$00    
       STA    $B2     
       STA    $C4     
       STA    $C5     
LF69A: RTS            

LF69B: LDA    $B4     
       LSR            
       BCC    LF6B0   
       LDA    $C9     
       EOR    #$FF    
       AND    #$03    
       BNE    LF6B0   
       LDA    #$02    
       LDY    #$01    
       LDX    CXPPMM  
       BMI    LF681   
LF6B0: LDA    SWCHB   
       LDX    $BC     
       BNE    LF6B8   
       ASL            
LF6B8: ASL            
       LDA    #$07    
       BCS    LF6BF   
       LDA    #$23    
LF6BF: STA    $B7     
       LDA    $E3     
       BEQ    LF687   
       CMP    $B7     
       BCS    LF687   
       LDA    CXM1P   
       ASL            
       ASL            
       LDA    CXM1P   
       ROR            
       ORA    CXM0P   
       ROL            
       ROL            
       ROL            
       LDX    $B4     
       BPL    LF6DB   
       AND    #$FE    
LF6DB: AND    #$03    
       BEQ    LF687   
       CMP    #$03    
       BNE    LF6E5   
       LDA    #$02    
LF6E5: TAY            
       LDA.wy $00C7,Y 
       LSR            
       LSR            
       AND    #$03    
       BEQ    LF687   
       LDX    #$90    
LF6F1: STY    $BB     
       STX    $E0     
       LDX    #$1F    
       STX    $E2     
LF6F9: LDX    $BC     
       JSR    LF5A0   
       BNE    LF690   
       PHP            
       .byte $42 ;.JAM
       BPL    LF709   
       LDY    #$08    
       .byte $42 ;.JAM
       BPL    LF709   
LF709: RTS            

LF70A: .byte $F0,$FF,$66,$0C,$1F,$00,$00,$00,$18,$3C,$FF,$7E,$00,$00,$24,$18
       .byte $3C,$BF,$FD,$3C,$5A,$C3
LF720: .byte $00
LF721: .byte $23
LF722: .byte $00,$A6,$64,$00,$00,$00,$18,$7E,$5B,$F7,$BF,$F6,$7C,$18,$C6,$D6
       .byte $38,$FE,$7C,$10,$10,$00,$01,$00,$00,$81,$00,$00,$88,$14,$07,$05
       .byte $05,$05,$07,$11,$11,$11,$11,$11,$77,$44,$77,$11,$77,$77,$11,$33
       .byte $11,$77,$11,$11,$77,$55,$55,$77,$11,$77,$44,$77,$77,$55,$77,$44
       .byte $77,$11,$11,$11,$11,$77,$77,$55,$77,$55,$77,$77,$11,$77,$55,$77
       .byte $00,$00,$00
LF775: .byte $00,$00,$05,$07
LF779: .byte $22,$12
LF77B: .byte $02,$02,$01,$01,$00,$50,$A0,$50,$A0,$00,$00,$00,$00,$80,$F0,$20
       .byte $70,$00,$00,$00,$00,$00,$60,$F0,$00,$00,$00,$00,$00,$40,$E0,$40
       .byte $A0,$00,$00,$00,$00
LF7A0: .byte $01,$02,$03,$04,$00
LF7A5: .byte $F8,$FC,$FE,$C0,$C2,$3E,$2C,$7E,$42,$42,$E7,$02,$01,$02,$01,$03
       .byte $00,$08,$0C
LF7B8: .byte $06,$07,$03
LF7BB: .byte $01,$02,$00,$48,$40,$4E,$58,$07,$17,$0F,$1F,$01,$FF,$03,$00,$F7
       .byte $00
LF7CC: .byte $F7,$72,$F7,$72
LF7D0: .byte $F7,$72,$F7,$72,$F7,$04,$0C,$00
LF7D8: .byte $0A,$0A,$08,$08
LF7DC: .byte $0C,$06,$0C,$00,$38,$E8,$86,$56,$46,$A6,$0E
LF7E7: .byte $00,$03
LF7E9: .byte $38,$28,$2A,$3A,$0B,$11,$13,$19,$1B,$60,$70,$94,$90,$92,$85,$81
       .byte $83,$00,$F0,$00,$F0,$00,$F0
