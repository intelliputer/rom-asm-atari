; Disassembly of roms/Ice Hockey.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Ice Hockey.bin
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
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
VDELP0  =  $25
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
HMCLR   =  $2B
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
       INX            
       JSR    LFD43   
       LDA    #$AA    
       STA    $87     
       STA    $86     
       STA    $8A     
       LDA    #$A4    
       STA    $F8     
       LDA    #$01    
       STA    $8B     
       LDA    #$11    
       STA    CTRLPF  
LF01D: LDX    #$04    
       LDA    $B4     
       JSR    LFCBC   
       LDX    #$03    
LF026: LDA    SWCHB   
       AND    #$08    
       STA    $F7     
       BNE    LF034   
       LDA    LFE43,X 
       BNE    LF037   
LF034: LDA    LFE3F,X 
LF037: EOR    $F9     
       AND    $83     
       STA    $EF,X   
       DEX            
       BPL    LF026   
       STX    PF0     
       LDX    $F0     
       STX    COLUPF  
       STA    COLUBK  
       LDA    $86     
       AND    #$0F    
       TAX            
LF04D: LDA    INTIM   
       BNE    LF04D   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       LDA    LF1CD,X 
       STA    $D0     
       LDA    $86     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF1CD,X 
       STA    $CE     
       LDA    $F8     
       STA    $CC     
       LDA    $87     
       AND    #$0F    
       TAX            
       LDA    LF1CD,X 
       STA    $CA     
       JSR    LFD07   
       LDA    $8B     
       AND    #$0F    
       TAX            
       LDA    LF1CD,X 
       STA    $D0     
       LDA    $8B     
       STA    RESP1   
       STA    RESP0   
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF092   
       LDA    #$0A    
LF092: TAX            
       LDA    LF1CD,X 
       STA    $CE     
       LDA    $8A     
       AND    #$0F    
       TAX            
       LDA    LF1CD,X 
       STA    $CC     
       LDA    $8A     
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF0AC   
       LDA    #$0A    
LF0AC: TAX            
       LDA    LF1CD,X 
       STA    $CA     
       STA    HMCLR   
       LDX    #$04    
       JSR    LFD03   
       LDA    $B9     
       JSR    LFCBC   
       LDA    $D2     
       STA    HMM0    
       LDA    $D3     
       STA    HMM1    
       LDA    $BD     
       STA    REFP0   
       LDX    #$01    
       STX    VDELP0  
       LDA    $BA     
       JSR    LFCBC   
       LDA    $BE     
       STA    REFP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D2     
       STA    ENAM0   
       LDA    $D3     
       STA    ENAM1   
       LDX    #$36    
       LDY    #$00    
       STY    NUSIZ0  
       STY    NUSIZ1  
       STY    HMP0    
       STY    HMP1    
       DEY            
       STY    RESMP0  
       STY    RESMP1  
       LDA    $F7     
       BEQ    LF0FA   
       LDX    #$22    
LF0FA: STX    $CA     
       INX            
       LDA    $8C     
       BPL    LF105   
       LDX    #$36    
       STX    $CA     
LF105: STX    $CC     
       LDX    #$A2    
       BNE    LF132   
LF10B: STY    $88,X   
LF10D: LDA    #$00    
       STA    $011C   
       BEQ    LF145   
LF114: NOP            
       NOP            
       NOP            
       JMP    LF152   
LF11A: NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMOVE   
       NOP            
       NOP            
       LDA    #$00    
       STA    GRP1    
       BEQ    LF16D   
LF129: NOP            
       NOP            
       NOP            
       LDA    VSYNC   
       LDA    #$FF    
       BNE    LF17C   
LF132: STA    WSYNC   
       STA    COLUP0  
       STY    ENABL   
       DEX            
       TXA            
       SBC    $B6     
       CMP    #$14    
       BCS    LF10D   
       TAY            
       LDA    ($C4),Y 
       STA    GRP1    
LF145: TXA            
       SEC            
       SBC    $B5     
       CMP    #$14    
       BCS    LF114   
       TAY            
       LDA    ($C2),Y 
       STA    GRP0    
LF152: LDY    #$00    
       STY    NUSIZ0  
       DEX            
       TXA            
       SEC            
       SBC    $B6     
       CMP    #$14    
       BCS    LF11A   
       TAY            
       LDA    ($C4),Y 
       STA    GRP1    
       NOP            
       STA    HMOVE   
       LDA    ($CC),Y 
       STA    COLUP1  
       STA    RESMP1  
LF16D: TXA            
       SEC            
       SBC    $B5     
       CMP    #$14    
       BCS    LF129   
       TAY            
       LDA    ($C2),Y 
       STA    GRP0    
       LDA    ($CA),Y 
LF17C: LDY    #$01    
       CPX    $DB     
       BNE    LF183   
       INY            
LF183: CPX    #$92    
       BNE    LF193   
       TXS            
       LDX    #$F0    
       STX    PF2     
       STX    PF1     
       TSX            
       STA    RESMP0  
       BNE    LF132   
LF193: CPX    #$8F    
       STA    RESMP0  
       BCS    LF132   
       SEC            
       STA    COLUP0  
       LDA    #$00    
       STA    PF2     
       JMP    LF248   
LF1A3: .byte $FE,$FF,$00,$01,$C1,$87,$C5,$4D,$6D,$79,$39,$31,$03,$36,$36,$3C
       .byte $3C,$38,$30,$00,$30,$30,$30,$C0,$86,$D4,$6C,$7C,$78,$38,$38,$04
       .byte $34,$38,$38,$38,$38,$30,$00,$30,$30,$30
LF1CD: .byte $5E,$65,$6C,$73,$7A,$81,$88,$8F,$96,$9D
LF1D7: .byte $A4,$02,$01,$08,$08,$08,$30,$30
LF1DF: .byte $30,$08,$1F,$1F,$04,$1F,$08,$0C
LF1E7: .byte $1F,$04,$04,$02,$08,$01,$0C,$0C,$0C
LF1F0: .byte $8B,$8B,$5B,$5B
LF1F4: .byte $37,$37,$09,$09
LF1F8: .byte $00,$20,$40,$60,$80,$A0,$C0,$E0
LF200: STA    GRP1    
       LDA    VSYNC   
       NOP            
       LDA    $D7     
       STA    HMM1    
       BNE    LF25B   
LF20B: LDA    #$00    
       STA    GRP1    
       LDA    #$FF    
       STA    RESMP1  
       BNE    LF25B   
LF215: STA    $011B   
       LDA    $D6     
       STA    HMM0    
       LDY    #$20    
       BNE    LF26C   
LF220: NOP            
       NOP            
       NOP            
       BCS    LF26A   
LF225: LDY    #$00    
       STA    HMOVE   
       STY    GRP1    
       LDY    #$20    
       CMP    #$FF    
       NOP            
       NOP            
       NOP            
       NOP            
       BNE    LF239   
       STY    NUSIZ1  
       BEQ    LF287   
LF239: NOP            
       BNE    LF287   
LF23C: NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$02    
       BNE    LF298   
LF246: STA    WSYNC   
LF248: STY    ENABL   
       DEX            
       TXA            
       SBC    $B6     
       BEQ    LF200   
       CMP    #$14    
       BCS    LF20B   
       TAY            
       LDA    ($C4),Y 
       STA    GRP1    
       NOP            
       NOP            
LF25B: TXA            
       SEC            
       SBC    $B5     
       BEQ    LF215   
       CMP    #$14    
       BCS    LF220   
       TAY            
       LDA    ($C2),Y 
       STA    GRP0    
LF26A: LDY    #$00    
LF26C: DEX            
       TXA            
       SEC            
       SBC    $B6     
       CMP    #$14    
       STY    NUSIZ0  
       BCS    LF225   
       NOP            
       TAY            
       STA    HMOVE   
       LDA    ($C4),Y 
       STA    GRP1    
       LDA    ($CC),Y 
       EOR    $82     
       STA    COLUP1  
       STA    RESMP1  
LF287: TXA            
       SEC            
       SBC    $B5     
       CMP    #$14    
       BCS    LF23C   
       TAY            
       LDA    ($C2),Y 
       STA    GRP0    
       LDA    ($CA),Y 
       EOR    $82     
LF298: LDY    #$01    
       CPX    $DB     
       STA    COLUP0  
       BNE    LF2A6   
       INY            
       NOP            
       STA    RESMP0  
       BNE    LF246   
LF2A6: CPX    $DE     
       STA    RESMP0  
       BCS    LF246   
       STA    WSYNC   
       STY    ENABL   
       LDA    $91     
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       LDA    $E9     
       STA    HMM1    
       LDA    $E8     
       STA    RESMP1  
       LDY    $E6     
LF2C1: DEY            
       BPL    LF2C1   
       STA    RESP0   
       LDA    $E4     
       STA    HMP0    
       DEX            
       STA    WSYNC   
       STA    HMOVE   
       LDA    $92     
       STA    GRP1    
       LDA    $93     
       STA    COLUP1  
       LDA    $94     
       STA    NUSIZ1  
       LDA    $EA     
       STA    RESMP1  
       DEX            
       LDY    #$01    
       CPX    $DB     
       BNE    LF2E7   
       INY            
LF2E7: LDA    #$00    
       STA    HMP0    
       LDA    $BF     
       STA    REFP0   
       SEC            
       LDA    $D4     
       STA    HMM0    
       STA    ENAM0   
       LDA    #$FF    
       STA    RESMP0  
       LDA    #$00    
       STA    NUSIZ0  
       JMP    LF347   
LF301: STA    GRP1    
       LDA    VSYNC   
       NOP            
       LDA    $D7     
       STA    HMM1    
       BNE    LF35C   
LF30C: LDA    #$00    
       STA    GRP1    
       LDA    #$FF    
       STA    RESMP1  
       BNE    LF35C   
LF316: STA    $011B   
       LDA    $D8     
       STA    HMM0    
       LDY    #$20    
       BNE    LF36D   
LF321: NOP            
       NOP            
       NOP            
       BCS    LF36B   
LF326: LDY    #$00    
       STA    HMOVE   
       STY    GRP1    
       LDY    #$20    
       CMP    #$FF    
       NOP            
       NOP            
       NOP            
       NOP            
       BNE    LF33A   
       STY    NUSIZ1  
       BEQ    LF388   
LF33A: NOP            
       BNE    LF388   
LF33D: NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$02    
       BNE    LF399   
LF347: STA    WSYNC   
       STY    ENABL   
       DEX            
       TXA            
       SBC    $B6     
       BEQ    LF301   
       CMP    #$14    
       BCS    LF30C   
       TAY            
       LDA    ($C4),Y 
       STA    GRP1    
       NOP            
       NOP            
LF35C: TXA            
       SEC            
       SBC    $B7     
       BEQ    LF316   
       CMP    #$14    
       BCS    LF321   
       TAY            
       LDA    ($C6),Y 
       STA    GRP0    
LF36B: LDY    #$00    
LF36D: DEX            
       TXA            
       SEC            
       SBC    $B6     
       CMP    #$14    
       STY    NUSIZ0  
       BCS    LF326   
       NOP            
       TAY            
       STA    HMOVE   
       LDA    ($C4),Y 
       STA    GRP1    
       LDA    ($CC),Y 
       EOR    $82     
       STA    COLUP1  
       STA    RESMP1  
LF388: TXA            
       SEC            
       SBC    $B7     
       CMP    #$14    
       BCS    LF33D   
       TAY            
       LDA    ($C6),Y 
       STA    GRP0    
       LDA    ($CA),Y 
       EOR    $82     
LF399: LDY    #$01    
       CPX    $DB     
       STA    COLUP0  
       BNE    LF3A7   
       INY            
       NOP            
       STA    RESMP0  
       BNE    LF347   
LF3A7: CPX    $DF     
       STA    RESMP0  
       BCS    LF347   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       STY    ENABL   
       LDA    $95     
       STA    GRP0    
       LDA    $97     
       STA    HMM0    
       LDA    $80     
       NOP            
       NOP            
       LDY    $E7     
LF3C3: DEY            
       BPL    LF3C3   
       STA    RESP1   
       LDA    $E5     
       STA    HMP1    
       DEX            
       LDA    VSYNC   
       LDY    $96     
       STA    WSYNC   
       STA    HMOVE   
       LDA    VSYNC   
       STY    NUSIZ0  
       LDA    #$00    
       STA    GRP1    
       LDA    $98     
       STA    GRP0    
       DEX            
       LDY    #$01    
       CPX    $DB     
       BNE    LF3E9   
       INY            
LF3E9: LDA    #$00    
       STA    HMP1    
       SEC            
       LDA    $D5     
       STA    HMM1    
       STA    ENAM1   
       LDA    #$00    
       STA    NUSIZ1  
       LDA    $C0     
       STA    REFP1   
       LDA    $99     
       STA    COLUP0  
       LDA    $EB     
       STA    RESMP0  
       JMP    LF44D   
LF407: STA    GRP1    
       LDA    VSYNC   
       NOP            
       LDA    $D9     
       STA    HMM1    
       BNE    LF462   
LF412: LDA    #$00    
       STA    GRP1    
       LDA    #$FF    
       STA    RESMP1  
       BNE    LF462   
LF41C: STA    $011B   
       LDA    $D8     
       STA    HMM0    
       LDY    #$20    
       BNE    LF473   
LF427: NOP            
       NOP            
       NOP            
       BCS    LF471   
LF42C: LDY    #$00    
       STA    HMOVE   
       STY    GRP1    
       LDY    #$20    
       CMP    #$FF    
       NOP            
       NOP            
       NOP            
       NOP            
       BNE    LF440   
       STY    NUSIZ1  
       BEQ    LF48E   
LF440: NOP            
       BNE    LF48E   
LF443: NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$02    
       BNE    LF49F   
LF44D: STA    WSYNC   
       STY    ENABL   
       DEX            
       TXA            
       SBC    $B8     
       BEQ    LF407   
       CMP    #$14    
       BCS    LF412   
       TAY            
       LDA    ($C8),Y 
       STA    GRP1    
       NOP            
       NOP            
LF462: TXA            
       SEC            
       SBC    $B7     
       BEQ    LF41C   
       CMP    #$14    
       BCS    LF427   
       TAY            
       LDA    ($C6),Y 
       STA    GRP0    
LF471: LDY    #$00    
LF473: DEX            
       TXA            
       SEC            
       SBC    $B8     
       CMP    #$14    
       STY    NUSIZ0  
       BCS    LF42C   
       NOP            
       TAY            
       STA    HMOVE   
       LDA    ($C8),Y 
       STA    GRP1    
       LDA    ($CC),Y 
       EOR    $82     
       STA    COLUP1  
       STA    RESMP1  
LF48E: TXA            
       SEC            
       SBC    $B7     
       CMP    #$14    
       BCS    LF443   
       TAY            
       LDA    ($C6),Y 
       STA    GRP0    
       LDA    ($CA),Y 
       EOR    $82     
LF49F: LDY    #$01    
       CPX    $DB     
       STA    COLUP0  
       BNE    LF4A8   
       INY            
LF4A8: CPX    #$05    
       STA    RESMP0  
       BCS    LF44D   
LF4AE: STA    WSYNC   
       STY    ENABL   
       DEX            
       CPX    #$04    
       BCS    LF4BB   
       LDA    #$F0    
       STA    PF2     
LF4BB: STA    WSYNC   
       DEX            
       BEQ    LF4C9   
       LDY    #$01    
       CPX    $DB     
       BNE    LF4C7   
       INY            
LF4C7: BNE    LF4AE   
LF4C9: STX    VDELP0  
       DEX            
       STX    PF2     
       STX    PF1     
       LDX    #$06    
       STX    REFP0   
       STX    REFP1   
       SEC            
       LDA    #$C7    
       LDY    #$D0    
       STY    HMP0    
       LDY    #$C0    
       STY    HMP1    
       STA    RESP1   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
LF4E9: STA    $CA,X   
       SBC    #$07    
       DEX            
       DEX            
       BPL    LF4E9   
       INX            
       TXS            
       LDX    #$01    
       JSR    LFD03   
       LDY    #$21    
       STY    TIM64T  
       JMP    LFA0F   
LF500: LDY    INTIM   
       BNE    LF500   
       INC    $84     
       BNE    LF522   
       LDA    $8C     
       CMP    #$7F    
       BEQ    LF513   
       INC    $8C     
       BNE    LF522   
LF513: LDX    #$03    
       LDA    #$F1    
LF517: CLC            
       ADC    #$20    
       STA    $B5,X   
       DEX            
       BPL    LF517   
       SEC            
       ROR    $8C     
LF522: LDX    #$03    
       STX    WSYNC   
       STX    VSYNC   
       STX    VBLANK  
       DEY            
       LDA    $F7     
       BNE    LF531   
       LDY    #$0F    
LF531: LDA    #$00    
       BIT    $8C     
       BPL    LF53E   
       TYA            
       AND    #$F7    
       TAY            
       LDA    $8C     
       ASL            
LF53E: AND    #$F7    
       STY    $83     
       LDY    $83     
       BMI    LF548   
       AND    #$0F    
LF548: STA    $82     
       BIT    $8C     
       BPL    LF550   
       EOR    #$80    
LF550: STA    $F9     
LF552: STA    WSYNC   
       DEX            
       BNE    LF552   
       STX    VSYNC   
       LDY    #$2D    
       STY    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF57C   
       LDA    #$40    
       STA    $85     
       LDX    #$89    
       LDA    #$03    
       STA    $87     
       LDA    #$00    
       STA    $86     
       LDA    #$AB    
LF574: STA    $F8     
       JSR    LFD43   
       JMP    LF858   
LF57C: LSR            
       BCS    LF5AC   
       LDA    $C1     
       BEQ    LF587   
       DEC    $C1     
       BPL    LF5AE   
LF587: STA    $85     
       LDY    $80     
       INY            
       CPY    #$04    
       BCC    LF592   
       LDY    #$00    
LF592: STY    $80     
       TYA            
       AND    #$01    
       STA    $81     
       INY            
       STY    $8B     
       LDA    #$AA    
       STA    $8A     
       STA    $87     
       STA    $86     
       LDA    #$A4    
       LDX    #$8C    
       STX    $89     
       BNE    LF574   
LF5AC: STX    $C1     
LF5AE: LDA    $88     
       BNE    LF5B4   
       LDA    #$FF    
LF5B4: ASL            
       ASL            
       ASL            
       EOR    $88     
       ASL            
       ROL    $88     
       LDA    $85     
       BEQ    LF5C8   
       BMI    LF5CB   
       DEC    $85     
       BNE    LF5C8   
       DEC    $85     
LF5C8: JMP    LF858   
LF5CB: LDA    $84     
       AND    #$03    
       CMP    #$02    
       BNE    LF5D6   
       JSR    LFD71   
LF5D6: LDA    $84     
       AND    #$03    
       BNE    LF5C8   
       LDX    #$01    
LF5DE: STX    $8D     
       LDA    #$00    
       STA    $8E     
       LDX    $8D     
       LDA    SWCHB   
       AND    LFE3D,X 
       BEQ    LF5F9   
       LDA    $84     
       AND    #$0F    
       CMP    #$03    
       BCS    LF5F9   
       JMP    LF657   
LF5F9: LDA    SWCHA   
       LDX    $8D     
       BEQ    LF60B   
       AND    #$0F    
       LDY    $81     
       BNE    LF60F   
       LDA    $F3     
       JMP    LF60F   
LF60B: LSR            
       LSR            
       LSR            
       LSR            
LF60F: EOR    #$0F    
       BEQ    LF615   
       INC    $8E     
LF615: TAY            
       LDA    $EC,X   
       TAX            
       LDA    $A2,X   
       BNE    LF651   
       LDA    $8E     
       STA    $A6,X   
       TYA            
       LSR            
       BCC    LF629   
       INC    $B5,X   
       INC    $B5,X   
LF629: LSR            
       BCC    LF630   
       DEC    $B5,X   
       DEC    $B5,X   
LF630: LSR            
       BCC    LF641   
       DEC    $B9,X   
       LDY    #$FF    
       STY    $BD,X   
       LDY    #$40    
       STY    $D6,X   
       LDY    #$1F    
       STY    $D2,X   
LF641: LSR            
       BCC    LF651   
       INC    $B9,X   
       LDY    #$F0    
       STY    $D6,X   
       LDY    #$00    
       STY    $BD,X   
       DEY            
       STY    $D2,X   
LF651: CPX    #$02    
       BCC    LF657   
       DEX            
       DEX            
LF657: DEX            
       BMI    LF65D   
       JMP    LF5DE   
LF65D: LDX    #$03    
LF65F: LDA    $84     
       AND    #$07    
       BNE    LF68F   
       LDA    $A6,X   
       BEQ    LF677   
       LDA    #$00    
       STA    $A6,X   
       INC    $9A,X   
       LDA    $9A,X   
       CMP    #$07    
       BNE    LF677   
       LDA    #$01    
LF677: STA    $9A,X   
       TAY            
       LDA    $A2,X   
       BEQ    LF682   
       DEC    $A2,X   
       LDY    #$07    
LF682: LDA    LFFD2,Y 
       STA    $8E     
       TXA            
       ASL            
       TAY            
       LDA    $8E     
       STA.wy $00C2,Y 
LF68F: DEX            
       BPL    LF65F   
       LDX    #$01    
       LDY    $81     
       BNE    LF69D   
       LDA    $F4     
       JMP    LF69F   
LF69D: LDA    REFP1,X 
LF69F: STA    $DC,X   
       BMI    LF6C2   
       LDA    $EC,X   
       TAX            
       LDA    $A2,X   
       BEQ    LF6B0   
       LDA    #$00    
       STA    $9E,X   
       BEQ    LF6BC   
LF6B0: LDA    $9E,X   
       BNE    LF6BC   
       INC    $9E,X   
       LDA    $AA     
       ORA    #$08    
       STA    $AA     
LF6BC: CPX    #$02    
       BCC    LF6C2   
       DEX            
       DEX            
LF6C2: DEX            
       BPL    LF69D   
       LDX    #$03    
LF6C7: LDA    $84     
       AND    #$03    
       BNE    LF6E5   
       LDA    $9E,X   
       BEQ    LF6E5   
       INC    $9E,X   
       LDA    $9E,X   
       CMP    #$08    
       BCC    LF6E5   
       LDA    #$00    
       STA    $9E,X   
       LDA    $D2,X   
       ORA    #$0F    
       STA    $D2,X   
       BNE    LF6EF   
LF6E5: LDA    $D2,X   
       LDY    $9E,X   
       BEQ    LF719   
       AND    #$F0    
       STA    $D2,X   
LF6EF: LDA    $9E,X   
       ASL            
       TAY            
       TXA            
       ASL            
       TAX            
       BEQ    LF709   
       CPX    #$04    
       BEQ    LF709   
       LDA    LFFEA,Y 
       STA    $C2,X   
       LDA    LFFEB,Y 
       STA    $C3,X   
       JMP    LF713   
LF709: LDA    LFFDA,Y 
       STA    $C2,X   
       LDA    LFFDB,Y 
       STA    $C3,X   
LF713: TXA            
       LSR            
       TAX            
       JMP    LF71D   
LF719: ORA    #$0F    
       STA    $D2,X   
LF71D: DEX            
       BPL    LF6C7   
       LDX    #$02    
LF722: LDA    #$00    
       STA    $8E     
       STA    $8F     
       LDA    $B5,X   
       SEC            
       SBC    $B6,X   
       BMI    LF737   
       INC    $8E     
       CMP    #$04    
       BCS    LF746   
       BCC    LF73B   
LF737: CMP    #$FB    
       BCC    LF74D   
LF73B: LDA    $B9,X   
       SEC            
       SBC    $BA,X   
       BMI    LF74B   
       INC    $8F     
       CMP    #$08    
LF746: BCC    LF74F   
LF748: JMP    LF818   
LF74B: CMP    #$F8    
LF74D: BCC    LF748   
LF74F: LDA    $DA     
       BMI    LF757   
       AND    #$01    
       BNE    LF765   
LF757: LDA    $84     
       LDY    $8A     
       CPY    $8B     
       BCS    LF763   
       CMP    #$40    
       BCS    LF765   
LF763: STX    $F4     
LF765: LDA    $A2,X   
       BEQ    LF76C   
       JMP    LF7EE   
LF76C: LDA    $9E,X   
       BEQ    LF7B0   
       LDA    $88     
       AND    #$07    
       CMP    #$04    
       BNE    LF7B0   
       CPX    #$02    
       BNE    LF782   
       LDA    $B8     
       CMP    #$13    
       BCC    LF7B0   
LF782: LDA    $88     
       AND    #$1F    
       ORA    #$08    
       STA    $A3,X   
       LDA    $AA     
       ORA    #$10    
       STA    $AA     
       INX            
       CPX    $DA     
       BNE    LF7AF   
       LDY    #$FF    
       STY    $DA     
       INY            
       LDA    $88     
       STA    $E2     
       BPL    LF7A1   
       DEY            
LF7A1: STY    $E0     
       LDY    #$00    
       LDA    $88     
       ASL            
       STA    $E3     
       BPL    LF7AD   
       DEY            
LF7AD: STY    $E1     
LF7AF: DEX            
LF7B0: LDA    $9F,X   
       BEQ    LF7EE   
       LDA    $88     
       AND    #$07    
       BNE    LF7EE   
       CPX    #$00    
       BNE    LF7C4   
       LDA    $B5     
       CMP    #$81    
       BCS    LF7EE   
LF7C4: LDA    $88     
       AND    #$1F    
       ORA    #$08    
       STA    $A2,X   
       LDA    $AA     
       ORA    #$10    
       STA    $AA     
       CPX    $DA     
       BNE    LF7EE   
       LDY    #$FF    
       STY    $DA     
       INY            
       LDA    $88     
       STA    $E2     
       DEY            
       STY    $E0     
       LDY    #$00    
       LDA    $88     
       ASL            
       STA    $E3     
       BPL    LF7EC   
       DEY            
LF7EC: STY    $E1     
LF7EE: LDA    $AA     
       ORA    #$04    
       STA    $AA     
       LDA    $8E     
       BEQ    LF802   
       INC    $B5,X   
       INC    $B5,X   
       DEC    $B6,X   
       DEC    $B6,X   
       BNE    LF80A   
LF802: DEC    $B5,X   
       DEC    $B5,X   
       INC    $B6,X   
       INC    $B6,X   
LF80A: LDA    $8F     
       BEQ    LF814   
       INC    $B9,X   
       DEC    $BA,X   
       BNE    LF818   
LF814: DEC    $B9,X   
       INC    $BA,X   
LF818: DEX            
       BMI    LF81E   
       JMP    LF722   
LF81E: LDX    #$03    
LF820: LDA    $A2,X   
       BEQ    LF82A   
       LDA    $D2,X   
       AND    #$F0    
       STA    $D2,X   
LF82A: DEX            
       BPL    LF820   
       LDX    #$01    
LF82F: LDA    $EC,X   
       EOR    #$02    
       TAX            
       LDA    $D2,X   
       AND    #$F0    
       STA    $D2,X   
       CPX    #$02    
       BCC    LF840   
       DEX            
       DEX            
LF840: DEX            
       BPL    LF82F   
       LDX    #$03    
LF845: LDA    $B9,X   
       CMP    #$32    
       BCS    LF84D   
       LDA    #$32    
LF84D: CMP    #$79    
       BCC    LF853   
       LDA    #$78    
LF853: STA    $B9,X   
       DEX            
       BPL    LF845   
LF858: LDX    #$03    
LF85A: LDA    $DB     
       SEC            
       SBC    $B5,X   
       BCS    LF863   
       EOR    #$FF    
LF863: STA    $8D     
       LDA    $B4     
       SEC            
       SBC    $B9,X   
       BCS    LF86E   
       EOR    #$FF    
LF86E: CLC            
       ADC    $8D     
       STA    $8D,X   
       DEX            
       BPL    LF85A   
       LDX    #$01    
LF878: LDA    $8D,X   
       CMP    $8F,X   
       BCS    LF882   
       TXA            
       JMP    LF886   
LF882: TXA            
       CLC            
       ADC    #$02    
LF886: STA    $EC,X   
       DEX            
       BPL    LF878   
       LDA    $B3     
       CMP    #$37    
       BCS    LF898   
       LDX    #$03    
       STX    $ED     
       DEX            
       STX    $EC     
LF898: LDA    $B3     
       CMP    #$5F    
       BCC    LF8A5   
       LDX    #$00    
       STX    $EC     
       INX            
       STX    $ED     
LF8A5: LDX    #$03    
LF8A7: LDA    $A2,X   
       BEQ    LF8B5   
       TXA            
       AND    #$01    
       TAY            
       TXA            
       EOR    #$02    
       STA.wy $00EC,Y 
LF8B5: DEX            
       BPL    LF8A7   
       LDX    #$04    
LF8BA: LDA    $D2,X   
       LDY    $8C     
       BPL    LF8C4   
       AND    #$F0    
       STA    $D2,X   
LF8C4: DEX            
       BPL    LF8BA   
       LDX    #$01    
LF8C9: LDA    $B5,X   
       CLC            
       ADC    #$FC    
       AND    #$FE    
       CMP    $DB     
       BEQ    LF8D7   
       CLC            
       ADC    #$02    
LF8D7: STA    $DE,X   
       DEX            
       BPL    LF8C9   
       LDX    #$03    
LF8DE: LDA    LF1F0,X 
       CMP    $B5,X   
       BCS    LF8E7   
       STA    $B5,X   
LF8E7: LDA    LF1F4,X 
       CMP    $B5,X   
       BCC    LF8F0   
       STA    $B5,X   
LF8F0: DEX            
       BPL    LF8DE   
       LDA    $DA     
       BEQ    LF8FB   
       LDA    $EC     
       BEQ    LF90C   
LF8FB: LDA    $B7     
       CMP    $B8     
       BCS    LF903   
       LDA    $B8     
LF903: CLC            
       ADC    #$22    
       CMP    $B5     
       BCC    LF90C   
       STA    $B5     
LF90C: LDA    $ED     
       CMP    #$01    
       BEQ    LF91D   
       LDA    $B8     
       CLC            
       ADC    #$22    
       CMP    $B6     
       BCC    LF91D   
       STA    $B6     
LF91D: LDA    $EC     
       BNE    LF92C   
       LDA    $DE     
       SEC            
       SBC    #$21    
       CMP    $B7     
       BCS    LF92C   
       STA    $B7     
LF92C: LDA    $DE     
       CMP    $DF     
       BCC    LF934   
       LDA    $DF     
LF934: SEC            
       SBC    #$1D    
       CMP    $B8     
       BCS    LF93D   
       STA    $B8     
LF93D: LDX    #$01    
LF93F: LDA    $BB,X   
       JSR    LFCE4   
       STA    $E4,X   
       STY    $E6,X   
       DEX            
       BPL    LF93F   
       LDX    #$22    
       LDA    $F7     
       BNE    LF953   
       LDX    #$36    
LF953: STX    $CA     
       INX            
       STX    $CC     
       BNE    LF981   
LF95A: STA    $91     
       LDA    $D7     
       STA    $E9     
       BNE    LF9A4   
LF962: LDA    #$00    
       STA    $91     
       LDA    #$FF    
       STA    $E8     
       BNE    LF9A4   
LF96C: LDY    #$00    
       STY    $92     
       CMP    #$FF    
       BNE    LF97A   
       LDY    #$20    
       STY    $94     
       BNE    LF9BE   
LF97A: STY    $94     
       DEY            
       STY    $EA     
       BNE    LF9BE   
LF981: LDA    #$00    
       STA    $E8     
       STA    $EA     
       LDA    $D3     
       STA    $E9     
       LDA    $DE     
       SEC            
       SBC    #$03    
       SEC            
       SBC    $B6     
       STA    $8D     
       BEQ    LF95A   
       CMP    #$14    
       BCS    LF962   
       TAY            
       LDA    ($C4),Y 
       STA    $91     
       LDA    ($CC),Y 
       STA    $E8     
LF9A4: LDA    $8D     
       SEC            
       SBC    #$01    
       CMP    #$14    
       BCS    LF96C   
       TAY            
       LDA    ($C4),Y 
       STA    $92     
       LDA    ($CC),Y 
       EOR    $82     
       STA    $93     
       STA    $EA     
       LDA    #$00    
       STA    $94     
LF9BE: JMP    LF9D9   
LF9C1: STA    $95     
       LDA    $D8     
       STA    $97     
       LDY    #$20    
       BNE    LF9F4   
LF9CB: LDA    #$00    
       STA    $95     
       BEQ    LF9F2   
LF9D1: LDA    #$00    
       STA    $98     
       LDA    #$02    
       BNE    LFA0A   
LF9D9: LDA    $D4     
       STA    $97     
       LDA    $DF     
       SEC            
       SBC    #$03    
       SEC            
       SBC    $B7     
       STA    $8D     
       BEQ    LF9C1   
       CMP    #$14    
       BCS    LF9CB   
       TAY            
       LDA    ($C6),Y 
       STA    $95     
LF9F2: LDY    #$00    
LF9F4: STY    $96     
       LDA    $8D     
       SEC            
       SBC    #$01    
       CMP    #$14    
       BCS    LF9D1   
       TAY            
       LDA    ($C6),Y 
       STA    $98     
       LDA    ($CA),Y 
       EOR    $82     
       STA    $99     
LFA0A: STA    $EB     
       JMP    LF01D   
LFA0F: LDA    $85     
       BMI    LFA16   
       JMP    LFC3C   
LFA16: LDA    $B0     
       BEQ    LFA1D   
       JMP    LFC30   
LFA1D: LDA    $AE     
       BEQ    LFA23   
       DEC    $AE     
LFA23: LDX    #$03    
LFA25: CPX    $DA     
       BEQ    LFA87   
       LDA    $A2,X   
       BNE    LFA87   
       LDA    $B4     
       SEC            
       SBC    $B9,X   
       LDY    $BD,X   
       BEQ    LFA46   
       CMP    #$80    
       BCS    LFA40   
       CMP    #$08    
       BCS    LFA87   
       BCC    LFA4A   
LFA40: CMP    #$F9    
       BCC    LFA87   
       BCS    LFA4A   
LFA46: CMP    #$12    
       BCS    LFA87   
LFA4A: LDA    $B3     
       SEC            
       SBC    $B5,X   
       BMI    LFA57   
       CMP    #$04    
       BCS    LFA87   
       BCC    LFA5B   
LFA57: CMP    #$FF    
       BCC    LFA87   
LFA5B: CPX    $AD     
       BNE    LFA63   
       LDA    $AE     
       BNE    LFA87   
LFA63: LDA    $DA     
       BMI    LFA6E   
       TXA            
       EOR    $88     
       AND    #$03    
       BNE    LFA87   
LFA6E: LDA    $AA     
       ORA    #$02    
       STA    $AA     
       LDA    #$00    
       STA    $AE     
       STX    $DA     
       LDX    #$3F    
       STX    $EE     
       LDX    #$03    
LFA80: STA    $E0,X   
       DEX            
       BPL    LFA80   
       BMI    LFA8A   
LFA87: DEX            
       BPL    LFA25   
LFA8A: LDX    $DA     
       BPL    LFA91   
       JMP    LFB21   
LFA91: DEC    $EE     
       LDA    $EE     
       BPL    LFA99   
       LDA    #$3F    
LFA99: STA    $EE     
       LDA    $EE     
       LSR            
       LSR            
       CMP    #$08    
       BCC    LFAA5   
       EOR    #$0F    
LFAA5: TAY            
       LDA    $BD,X   
       BEQ    LFAB7   
       CLC            
       TYA            
       EOR    #$07    
       ADC    #$F7    
       CLC            
       ADC    $B9,X   
       STA    $B4     
       BNE    LFABF   
LFAB7: CLC            
       TYA            
       ADC    #$0B    
       ADC    $B9,X   
       STA    $B4     
LFABF: LDY    #$00    
       TXA            
       AND    #$01    
       BEQ    LFAC8   
       LDY    #$02    
LFAC8: TYA            
       CLC            
       ADC    $B5,X   
       STA    $B3     
       LDA    $DA     
       AND    #$01    
       TAX            
       LDA    $DC,X   
       BMI    LFB21   
       LDX    $DA     
       STX    $AD     
       LDA    #$30    
       STA    $AE     
       LDA    #$FF    
       STA    $DA     
       LDA    $EE     
       CMP    #$20    
       BCC    LFAEB   
       EOR    #$3F    
LFAEB: LDY    $BD,X   
       BEQ    LFAF1   
       EOR    #$3F    
LFAF1: AND    #$1F    
       STA    $8D     
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF1A3,Y 
       STA    $E1     
       LDA    $8D     
       AND    #$07    
       TAY            
       LDA    LF1F8,Y 
       STA    $E3     
       TXA            
       AND    #$01    
       BNE    LFB13   
       LDA    #$00    
       LDY    #$FE    
       BNE    LFB17   
LFB13: LDA    #$00    
       LDY    #$02    
LFB17: STA    $E2     
       STY    $E0     
       LDA    $AA     
       ORA    #$02    
       STA    $AA     
LFB21: LDA    $84     
       AND    #$01    
       BEQ    LFB2A   
       JMP    LFC3C   
LFB2A: LDX    #$01    
LFB2C: LDA    $80     
       CMP    #$02    
       BCS    LFB5D   
       LDA    $E0,X   
       STA    $8E     
       LDA    $E2,X   
       STA    $8D     
       LDY    #$05    
LFB3C: ROR    $8E     
       ROR    $8D     
       DEY            
       BPL    LFB3C   
       LDA    $8D     
       BMI    LFB4A   
       INY            
       BEQ    LFB4E   
LFB4A: CMP    #$FF    
       BCS    LFB5D   
LFB4E: STY    $8E     
       LDA    $E2,X   
       SEC            
       SBC    $8D     
       STA    $E2,X   
       LDA    $E0,X   
       SBC    $8E     
       STA    $E0,X   
LFB5D: CLC            
       LDA    $B1,X   
       ADC    $E2,X   
       STA    $B1,X   
       LDA    $B3,X   
       ADC    $E0,X   
       STA    $B3,X   
       DEX            
       BPL    LFB2C   
       LDX    #$01    
LFB6F: LDA    $B3,X   
       CMP    LFFFA,X 
       BCS    LFB96   
       LDA    $DA     
       BPL    LFB80   
       LDA    $AA     
       ORA    #$01    
       STA    $AA     
LFB80: LDA    LFFFA,X 
       STA    $B3,X   
       LDA    $E2,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $E2,X   
       LDA    $E0,X   
       EOR    #$FF    
       ADC    #$00    
       STA    $E0,X   
LFB96: LDA    $B3,X   
       CMP    LF10B,X 
       BCC    LFBC0   
       LDA    $DA     
       BPL    LFBA7   
       LDA    $AA     
       ORA    #$01    
       STA    $AA     
LFBA7: LDA    LF10B,X 
       SEC            
       SBC    #$02    
       STA    $B3,X   
       LDA    $E2,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $E2,X   
       LDA    $E0,X   
       EOR    #$FF    
       ADC    #$00    
       STA    $E0,X   
LFBC0: DEX            
       BPL    LFB6F   
       LDA    $B3     
       CMP    #$8F    
       BCS    LFBCD   
       CMP    #$07    
       BCS    LFBFD   
LFBCD: LDA    $B4     
       LDX    #$03    
LFBD1: CMP    LFFCE,X 
       BEQ    LFBDB   
       DEX            
       BPL    LFBD1   
       BMI    LFBFD   
LFBDB: CLC            
       ADC    #$FE    
       CPX    #$02    
       BCC    LFBE4   
       ADC    #$03    
LFBE4: STA    $B4     
       LDA    $E3     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $E3     
       LDA    $E1     
       EOR    #$FF    
       ADC    #$00    
       STA    $E1     
       LDA    $AA     
       ORA    #$01    
       STA    $AA     
LFBFD: LDA    $B3     
       AND    #$FE    
       STA    $DB     
       LDX    #$01    
       LDA    $B4     
       CMP    #$4A    
       BCC    LFC3C   
       CMP    #$69    
       BCS    LFC3C   
       LDA    $B3     
       CMP    #$90    
       BCS    LFC1A   
       DEX            
       CMP    #$06    
       BCS    LFC3C   
LFC1A: LDA    LFE47,X 
       STA    $AA     
       LDA    $8A,X   
       SED            
       CLC            
       ADC    #$01    
       STA    $8A,X   
       CLD            
       LDA    #$40    
       STA    $85     
       STA    $B0     
       BNE    LFC3C   
LFC30: LDX    #$8C    
       JSR    LFD43   
       LDA    #$40    
       STA    $85     
       JMP    LFCB8   
LFC3C: LDX    #$01    
LFC3E: LDA    $AB,X   
       BEQ    LFC4A   
       DEC    $AB,X   
       BNE    LFC4A   
       LDA    #$00    
       STA    AUDV0,X 
LFC4A: DEX            
       BPL    LFC3E   
       LDA    $AA     
       STA    $8D     
       LDX    #$08    
       CLC            
LFC54: ROL            
       STA    $8D     
       BCC    LFC7E   
       LDY    #$01    
LFC5B: LDA.wy $00AB,Y 
       BNE    LFC7B   
       LDA    LF1D7,X 
       STA.wy $00AB,Y 
       LDA    LF1DF,X 
       STA.wy $0017,Y 
       LDA    LF1E7,X 
       STA.wy $0015,Y 
       LDA    #$08    
       STA.wy $0019,Y 
       CLC            
       JMP    LFC7E   
LFC7B: DEY            
       BPL    LFC5B   
LFC7E: LDA    $8D     
       DEX            
       BPL    LFC54   
       STA    $AA     
       LDA    $85     
       BPL    LFCB8   
       INC    $AF     
       LDA    $AF     
       CMP    #$3C    
       BNE    LFCB8   
       LDA    #$00    
       STA    $AF     
       SED            
       LDA    $86     
       SEC            
       SBC    #$01    
       STA    $86     
       BMI    LFCAD   
       ORA    $87     
       BNE    LFCB8   
       STA    $85     
       STA    $86     
       LDA    #$80    
       STA    $AA     
       BNE    LFCB8   
LFCAD: LDA    #$59    
       STA    $86     
       LDA    $87     
       SEC            
       SBC    #$01    
       STA    $87     
LFCB8: CLD            
       JMP    LF500   
LFCBC: CLC            
       ADC    #$25    
       TAY            
       AND    #$0F    
       STA    $8D     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $8D     
       CMP    #$0F    
       BCC    LFCD4   
       SBC    #$0F    
       INY            
LFCD4: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFCDE: DEY            
       BPL    LFCDE   
       STA    RESP0,X 
       RTS            

LFCE4: CLC            
       ADC    #$CE    
       TAY            
       AND    #$0F    
       STA    $8D     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $8D     
       CMP    #$0F    
       BCC    LFCFC   
       SBC    #$0F    
       INY            
LFCFC: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LFD03: STX    NUSIZ0  
       STX    NUSIZ1  
LFD07: LDY    #$06    
       LDA    ($D0),Y 
       STA    $8E     
LFD0D: STA    WSYNC   
       STA    $8E     
       LDA    $F1     
       STA    COLUP1  
       STA    COLUP0  
       LDA    ($CA),Y 
       STA    GRP1    
       LDA    ($CC),Y 
       STA    GRP0    
       STY    $8D     
       LDA    VSYNC   
       LDA    ($CE),Y 
       LDY    $F2     
       LDX    $8E     
       STA    GRP1    
       STX    GRP0    
       STY    COLUP1  
       STY    COLUP0  
       LDY    $8D     
       DEY            
       LDA    ($D0),Y 
       CPY    #$00    
       BPL    LFD0D   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       STX    HMCLR   
       RTS            

LFD43: LDY    #$00    
       STY    AUDV0   
       STY    AUDV1   
LFD49: STY    VSYNC,X 
       INX            
       CPX    #$B1    
       BNE    LFD49   
       LDX    #$2E    
LFD52: LDA    LFEF4,X 
       STA    $B1,X   
       DEX            
       BPL    LFD52   
       INX            
       LDA    $88     
       STA    $E2     
       BMI    LFD62   
       DEX            
LFD62: STX    $E0     
       LDX    #$00    
       LDA    $88     
       ASL            
       STA    $E3     
       BMI    LFD6E   
       DEX            
LFD6E: STX    $E1     
       RTS            

LFD71: LDX    $ED     
       LDA    $84     
       AND    #$1F    
       LDY    $8A     
       CPY    $8B     
       BCC    LFD7F   
       AND    #$07    
LFD7F: CMP    #$02    
       BNE    LFDD7   
       LDA    #$FF    
       STA    $F4     
       LDA    $DA     
       BMI    LFDDA   
       AND    #$01    
       BEQ    LFDDA   
       CPX    #$03    
       BNE    LFD97   
       LDA    $84     
       BMI    LFDD3   
LFD97: LDA    $88     
       AND    #$3F    
       ADC    #$30    
       STA    $F6     
       LDA    $88     
       ORA    #$78    
       LDY    $A2     
       BNE    LFDAD   
       LDY    $B6     
       CPY    $B5     
       BCC    LFDAF   
LFDAD: LDA    #$92    
LFDAF: STA    $F5     
       LDA    $88     
       AND    #$1F    
       ADC    $B3     
       CMP    #$92    
       BCC    LFDD7   
       LDA    $EE     
       CMP    #$20    
       BCC    LFDC3   
       EOR    #$FF    
LFDC3: EOR    $BE     
       AND    #$1F    
       LDY    $B4     
       CPY    #$59    
       BCS    LFDCF   
       EOR    #$1F    
LFDCF: CMP    #$10    
       BCS    LFDD7   
LFDD3: LDA    #$00    
       STA    $F4     
LFDD7: JMP    LFE04   
LFDDA: LDA    $88     
       AND    #$07    
       STA    $8D     
       LDA    $B3     
       ADC    #$FA    
       ADC    $8D     
       LDY    $DA     
       BMI    LFDF6   
       LDY    $84     
       BMI    LFDF0   
       ADC    #$F8    
LFDF0: CMP    #$92    
       BCC    LFDF6   
       LDA    #$00    
LFDF6: STA    $F5     
       LDA    $BD,X   
       AND    #$07    
       ADC    $B4     
       ADC    #$F4    
       ADC    $8D     
       STA    $F6     
LFE04: LDA    $B5,X   
       CMP    $F5     
       BEQ    LFE16   
       BCS    LFE12   
       LDA    #$0E    
       STA    $F3     
       BNE    LFE16   
LFE12: LDA    #$0D    
       STA    $F3     
LFE16: LDA    $B9,X   
       CMP    $F6     
       BEQ    LFE2C   
       BCS    LFE26   
       LDA    $F3     
       AND    #$07    
       STA    $F3     
       BNE    LFE2C   
LFE26: LDA    $F3     
       AND    #$0B    
       STA    $F3     
LFE2C: RTS            

LFE2D: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFE3D: .byte $40,$80
LFE3F: .byte $0A,$00,$88,$2E
LFE43: .byte $08,$00,$06,$0F
LFE47: .byte $20,$40,$C3,$82,$C2,$42,$62,$36,$3C,$38,$31,$03,$33,$3E,$1E,$0E
       .byte $06,$00,$03,$03,$03,$03,$02,$82,$82,$E6,$FC,$38,$30,$31,$03,$33
       .byte $3E,$1E,$0E,$06,$00,$03,$03,$03,$0C,$08,$28,$28,$3C,$3C,$38,$30
       .byte $31,$03,$33,$3E,$1E,$0E,$06,$00,$03,$03,$03,$30,$20,$20,$2C,$28
       .byte $38,$38,$30,$31,$03,$33,$3E,$1E,$0E,$06,$00,$03,$03,$03,$C0,$86
       .byte $C4,$4C,$6C,$78,$38,$30,$00,$30,$30,$3E,$3E,$3A,$32,$06,$34,$34
       .byte $37,$C0,$86,$C4,$4C,$6C,$78,$38,$30,$00,$30,$30,$3E,$3E,$3A,$33
       .byte $00,$30,$30,$30,$C0,$86,$C4,$4C,$6C,$78,$3B,$32,$06,$36,$34,$3C
       .byte $3C,$38,$38,$00,$30,$30,$30,$C0,$86,$C4,$4C,$6C,$78,$38,$30,$01
       .byte $B2,$B6,$BC,$FC,$F8,$70,$00,$30,$30,$30,$18,$1C,$14,$10,$37,$3F
       .byte $39,$B5,$84,$B4,$B4,$B4,$F4,$FC,$78,$00,$30,$30,$30
LFEF4: .byte $00,$00,$4A,$59,$85,$3F,$55,$0D,$50,$64,$45,$50,$00,$FF,$00,$FF
       .byte $20,$CD,$FE,$48,$FE,$48,$FE,$CD,$FE,$5E,$FF,$5E,$FF,$5E,$FF,$5E
       .byte $FF,$F0,$1F,$FF,$10,$F0,$40,$F0,$40,$FF,$4A,$FF,$FF,$82,$3C,$44
       .byte $D4,$44,$D4,$44,$D4,$44,$D4,$44,$D4,$84,$FC,$84,$FC,$84,$FA,$46
       .byte $46,$46,$46,$04,$0C,$04,$0C,$04,$0C,$04,$0C,$04,$0C,$04,$0C,$04
       .byte $0C,$04,$0E,$06,$0E,$06,$0E,$C0,$86,$C4,$4C,$6C,$78,$38,$30,$C0
       .byte $B0,$B0,$B0,$30,$30,$30,$00,$30,$30,$30,$3C,$66,$66,$66,$66,$66
       .byte $3C,$3C,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$46,$3C,$3C
       .byte $46,$06,$0C,$06,$46,$3C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06
       .byte $7C,$60,$60,$7E,$3C,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$18,$00,$00,$00,$18,$00,$AD,$A9
       .byte $E9,$A9,$ED,$41,$0F,$50,$58,$5C,$56,$53,$11,$F0,$BA,$8A,$BA,$A2
       .byte $3A,$80,$FE,$E9,$AB,$AF,$AD,$E9,$00,$00
LFFCE: .byte $48,$49,$69,$6A
LFFD2: .byte $CD,$48,$5B,$5B,$5B,$6E,$81,$E0
LFFDA: .byte $CD
LFFDB: .byte $FE,$A6,$F1,$A6,$F1,$B9,$F1,$4A,$FF,$4A,$FF,$B9,$F1,$A6,$F1
LFFEA: .byte $CD
LFFEB: .byte $FE,$BA,$FE,$BA,$FE,$A7,$FE,$94,$FE,$94,$FE,$A7,$FE,$BA,$FE
LFFFA: .byte $02,$2B,$00,$F0,$00,$00
