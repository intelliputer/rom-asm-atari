; Disassembly of roms/Sub Scan.bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Sub Scan.bin
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
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
CXCLR   =  $2C
CXM0P   =  $30
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$28    
       LDA    #$00    
LF006: STA    NUSIZ0,X
       DEX            
       BPL    LF006   
       TXS            
LF00C: STA    VSYNC,X 
       DEX            
       BMI    LF00C   
       LDA    #$00    
       STA    $81     
LF015: LDA    #$00    
       STA    $80     
       LDX    #$04    
LF01B: STA    $98,X   
       DEX            
       BPL    LF01B   
       LDA    #$46    
       STA    $93     
       LDA    #$00    
       STA    $84     
       STA    $85     
       STA    $86     
       STA    $89     
       STA    $83     
       STA    $96     
       STA    $94     
       STA    $B8     
       STA    $B4     
       STA    $92     
       STA    $8C     
       STA    $82     
       STA    $F8     
       LDX    #$05    
LF042: LDA    #$01    
       STA    $A7,X   
       STA    $A2,X   
       LDA    #$F0    
       STA    $9D,X   
       DEX            
       BPL    LF042   
       LDA    #$EE    
       STA    $B3     
       LDA    #$FF    
       STA    $B6     
       STA    $B7     
       STA    $8B     
       STA    $F9     
       LDY    #$00    
       LDX    #$04    
LF061: STA    $BB,X   
       STA    $CC,X   
       STY    $8D,X   
       DEX            
       BPL    LF061   
       LDY    #$FF    
       LDA    #$00    
       LDX    #$0B    
LF070: STY    $D2,X   
       STY    $E8,X   
       STY    $DE,X   
       DEX            
       STA    $D2,X   
       STA    $E8,X   
       STA    $DE,X   
       DEX            
       BPL    LF070   
       LDX    #$03    
LF082: STY    $F2,X   
       DEX            
       STA    $F2,X   
       DEX            
       BPL    LF082   
       LDX    #$00    
       LDA    #$09    
       STA    $F2,X   
       LDA    $81     
       BNE    LF097   
       JMP    LFD47   
LF097: RTS            

LF098: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    GRP0    
       STA    GRP1    
       STA    REFP1   
       STA    NUSIZ1  
       LDA    #$BB    
       CLC            
       ADC    $80     
       STA    COLUBK  
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$10    
       STA    NUSIZ0  
       LDA    #$42    
       CLC            
       ADC    $80     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$08    
LF0C2: LDA    $DE,X   
       STA    $D2,X   
       DEX            
       DEX            
       BPL    LF0C2   
       LDA    #$36    
       LDX    #$00    
       JSR    LF531   
       LDA    #$3E    
       LDX    #$01    
       STX    VDELP0  
       STX    VDELP1  
       JSR    LF531   
LF0DC: LDA    INTIM   
       BNE    LF0DC   
       STA    WSYNC   
       STA    VBLANK  
       JSR    LF27D   
       LDA    #$F4    
       CLC            
       ADC    $80     
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       LDX    #$08    
LF0F9: LDA    $E8,X   
       STA    $D2,X   
       DEX            
       DEX            
       BPL    LF0F9   
       LDA    #$36    
       LDX    #$00    
       JSR    LF531   
       LDA    #$3E    
       LDX    #$01    
       STX    VDELP0  
       STX    VDELP1  
       JSR    LF531   
       JSR    LF27D   
       LDA    #$08    
       STA    REFP0   
       JSR    LF511   
       LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       JSR    LF4B2   
       LDA    #$90    
       STA    REFP0   
       LDX    #$00    
       LDA    #$BF    
       CLC            
       ADC    $80     
       STA    COLUP1  
       LDA    #$F8    
       CLC            
       ADC    $80     
       STA    COLUP0  
       STA    WSYNC   
LF142: JSR    LF331   
       INX            
       CPX    #$05    
       NOP            
       NOP            
       NOP            
       BNE    LF142   
       STA    WSYNC   
       LDA    #$F5    
       CLC            
       ADC    $80     
       STA    COLUBK  
       STA    COLUPF  
       LDA    $B2     
       LDX    #$03    
       JSR    LF531   
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$BB    
       CLC            
       ADC    $80     
       STA    COLUBK  
       LDA    #$E3    
       STA    PF2     
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$03    
       STA    PF2     
       STA    WSYNC   
       LDA    #$42    
       CLC            
       ADC    $80     
       STA    COLUP1  
       LDA    #$10    
       STA    NUSIZ1  
       LDA    $82     
       CMP    #$01    
       BEQ    LF193   
       LDA    #$02    
       STA    ENAM1   
LF193: STA    WSYNC   
       STA    WSYNC   
       LDA    #$90    
       CLC            
       ADC    $80     
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    ENAM1   
       LDX    #$00    
       LDA    #$BF    
       CLC            
       ADC    $80     
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$05    
       STA    NUSIZ1  
LF1B3: STX    $B1     
       LDA    $AC,X   
       LDX    #$01    
       JSR    LF531   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$80    
       STA    GRP1    
       LDX    $B1     
       LDA    #$00    
       STA    WSYNC   
       STA    GRP1    
       INX            
       CPX    #$05    
       BNE    LF1B3   
       STA    WSYNC   
       LDA    #$E3    
       STA    PF2     
       LDA    #$3C    
       LDX    #$00    
       JSR    LF531   
       LDA    #$FF    
       STA    PF2     
       LDA    #$44    
       LDX    #$01    
       STX    VDELP0  
       STX    VDELP1  
       STX    CTRLPF  
       JSR    LF531   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$06    
       LDA    $81     
       BEQ    LF23A   
       LDA    $82     
       CMP    #$01    
       BEQ    LF23A   
       LDY    #$08    
LF207: LDX    LFFB4,Y 
       STA    WSYNC   
       LDA    ($F2),Y 
       STA    GRP0    
       LDA    ($F4),Y 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    WSYNC   
       STX    GRP0    
       NOP            
       LDA    ($F8),Y 
       STX    GRP1    
       STX    GRP0    
       STA    GRP1    
       STA    GRP0    
       DEY            
       BPL    LF207   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       JMP    LFD47   
LF23A: STY    $B1     
       LDA    LFFDB,Y 
       STA    $BA     
       STA    WSYNC   
       LDA    LFEC0,Y 
       STA    GRP0    
       LDA    LFEC7,Y 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       LDA    LFECE,Y 
       STA    GRP0    
       LDA    LFED5,Y 
       NOP            
       TAX            
       LDA    LFEDC,Y 
       LDY    $BA     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $B1     
       DEY            
       BPL    LF23A   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       JMP    LFD47   
LF27D: STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$08    
       STA    WSYNC   
LF28B: STY    $B1     
       LDA    ($DC),Y 
       STA    $BA     
       STA    WSYNC   
       LDA    ($D2),Y 
       STA    GRP0    
       LDA    ($D4),Y 
       STA    GRP1    
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    ($D8),Y 
       NOP            
       TAX            
       LDA    ($DA),Y 
       LDY    $BA     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $B1     
       DEY            
       BPL    LF28B   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LF2BF: STA    WSYNC   
       DEY            
       BNE    LF2BF   
       RTS            

LF2C5: LDA    #$00    
       CPY    $B9     
       BNE    LF2CD   
       LDA    #$02    
LF2CD: STA    ENAM0   
       STA    WSYNC   
       DEY            
       CPY    $BA     
       BNE    LF2C5   
       LDA    #$00    
       STA    ENAM0   
       RTS            

LF2DB: CPX    #$04    
       BNE    LF2E7   
       LDA    $8C     
       BEQ    LF2E7   
       LDA    #$F8    
       STA    COLUP1  
LF2E7: TYA            
       CMP    $CC,X   
       BNE    LF2F1   
       LDA    #$02    
       JMP    LF2F3   
LF2F1: LDA    #$00    
LF2F3: STA    WSYNC   
       STA    ENAM0   
       LDA    LFDEF,Y 
       STA    GRP1    
       BIT    CXM0P   
       BPL    LF30A   
       LDA    #$01    
       STA    $A2,X   
       STA    $8D,X   
       LDA    #$10    
       STA    $89     
LF30A: DEY            
       BPL    LF2E7   
       LDA    #$00    
       STA    CXCLR   
       STA    ENAM0   
       CPX    #$04    
       BNE    LF319   
       STA    WSYNC   
LF319: RTS            

LF31A: CPX    #$04    
       BNE    LF326   
       LDA    $8C     
       BEQ    LF326   
       LDA    #$F8    
       STA    COLUP1  
LF326: LDA    LFDEF,Y 
       STA    GRP1    
       STA    WSYNC   
       DEY            
       BPL    LF326   
       RTS            

LF331: STX    $B1     
       LDY    $BB,X   
       BMI    LF351   
       LDA    #$0F    
       STA    $BA     
       STY    $B9     
       LDY    #$12    
       JSR    LF2C5   
       CPX    #$00    
       BNE    LF348   
       STA    WSYNC   
LF348: STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       JMP    LF45E   
LF351: LDA    $CC,X   
       BMI    LF374   
       CMP    #$0D    
       BCC    LF386   
       STA    $B9     
       STA    WSYNC   
       LDA    $C7,X   
       LDX    #$02    
       JSR    LF531   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$0C    
       STA    $BA     
       LDY    #$0F    
       JSR    LF2C5   
       JMP    LF45E   
LF374: STA    WSYNC   
       CPX    #$04    
       BNE    LF37E   
       LDA    $92     
       BNE    LF389   
LF37E: LDY    #$06    
       JSR    LF2BF   
       JMP    LF45E   
LF386: JMP    LF3E9   
LF389: LDA    $8C     
       STA    WSYNC   
       BEQ    LF393   
       LDA    #$F8    
       STA    COLUP1  
LF393: INX            
       LDA    $C1,X   
       SEC            
       STA    WSYNC   
       SBC    #$05    
       LDX    #$00    
       JSR    LF531   
       LDX    $B1     
       STA    WSYNC   
       LDA    $9D,X   
       LDX    #$01    
       JSR    LF531   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$F8    
       CLC            
       ADC    $80     
       STA    COLUP0  
       STA    WSYNC   
       LDX    $B1     
       LDY    #$07    
       LDA    $A2,X   
       STA    WSYNC   
       BNE    LF3DC   
       LDA    $A7,X   
       BNE    LF3CA   
       LDA    #$08    
       STA    REFP1   
LF3CA: LDA    LFDEF,Y 
       LDX    LFFD3,Y 
       STA    GRP1    
       STX    GRP0    
       STA    WSYNC   
       DEY            
       BPL    LF3CA   
       JMP    LF494   
LF3DC: LDA    LFFD3,Y 
       STA    GRP0    
       STA    WSYNC   
       DEY            
       BPL    LF3DC   
       JMP    LF494   
LF3E9: STA    WSYNC   
       LDA    $C7,X   
       LDX    #$02    
       JSR    LF531   
       LDX    $B1     
       LDA    $8D,X   
       BNE    LF404   
       LDA    $A2,X   
       BNE    LF440   
       LDA    $A7,X   
       BNE    LF404   
       LDA    #$08    
       STA    REFP1   
LF404: LDA    $9D,X   
       LDX    #$01    
       JSR    LF531   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $B1     
       LDY    $CC,X   
       CPY    #$08    
       STA    WSYNC   
       BCC    LF42C   
       STY    $B9     
       LDA    #$07    
       STA    $BA     
       LDY    #$0C    
       JSR    LF2C5   
       LDY    #$06    
       JSR    LF31A   
       JMP    LF494   
LF42C: LDY    #$0A    
       LDA    $8D,X   
       BNE    LF438   
       JSR    LF2DB   
       JMP    LF494   
LF438: STA    WSYNC   
       JSR    LF49B   
       JMP    LF494   
LF440: STA    WSYNC   
       STA    HMOVE   
       LDX    $B1     
       LDA    #$00    
       STA    $BA     
       LDA    $CC,X   
       STA    $B9     
       STA    WSYNC   
       LDY    #$0D    
       JSR    LF2C5   
       CPX    #$04    
       BNE    LF45B   
       STA    WSYNC   
LF45B: JMP    LF494   
LF45E: LDX    $B1     
       INX            
       LDA    $C1,X   
       LDX    #$02    
       JSR    LF531   
       LDX    $B1     
       LDA    $A2,X   
       BNE    LF48B   
       LDA    $9D,X   
       LDX    #$01    
       JSR    LF531   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $B1     
       LDA    $A7,X   
       BNE    LF483   
       LDA    #$08    
       STA    REFP1   
LF483: LDY    #$06    
       JSR    LF31A   
       JMP    LF494   
LF48B: STA    WSYNC   
       STA    HMOVE   
       LDY    #$09    
       JSR    LF2BF   
LF494: LDX    $B1     
       LDA    #$00    
       STA    REFP1   
       RTS            

LF49B: CPX    #$04    
       BNE    LF4A7   
       LDA    $8C     
       BEQ    LF4A7   
       LDA    #$F8    
       STA    COLUP1  
LF4A7: LDA    LFFBE,Y 
       STA    GRP1    
       STA    WSYNC   
       DEY            
       BPL    LF49B   
       RTS            

LF4B2: LDA    $D1     
       BEQ    LF4C6   
       LDA    #$FF    
       STA    $B6     
       LDX    #$00    
       LDA    $C1,X   
       LDX    #$02    
       JSR    LF531   
       JMP    LF4CD   
LF4C6: LDA    $B5     
       LDX    #$03    
       JSR    LF531   
LF4CD: LDA    $93     
       LDX    #$01    
       JSR    LF531   
       LDA    $93     
       CLC            
       ADC    #$08    
       LDX    #$00    
       JSR    LF531   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$42    
       CLC            
       ADC    $80     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$09    
LF4ED: CPY    $B6     
       BNE    LF4F5   
       LDA    #$02    
       STA    ENAM1   
LF4F5: LDA    LFFC9,Y 
       LDX    $82     
       BEQ    LF4FE   
       LDA    ($F6),Y 
LF4FE: STA    WSYNC   
       STA    GRP1    
       STA    GRP0    
       LDA    #$90    
       STA    ENAM1   
       DEY            
       BPL    LF4ED   
       CLC            
       ADC    $80     
       STA    COLUBK  
       RTS            

LF511: LDA    #$44    
       LDX    #$00    
       JSR    LF531   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$05    
       STA    NUSIZ0  
       LDA    #$42    
       CLC            
       ADC    $80     
       STA    COLUP0  
       LDX    $96     
       LDA    LFE9B,X 
       STA    GRP0    
       STA    WSYNC   
       RTS            

LF531: TAY            
       LDA    LFDFA,Y 
       STA    $97     
       AND    #$0F    
       TAY            
       LDA    $97     
       AND    #$F0    
       STA    WSYNC   
LF540: DEY            
       BPL    LF540   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMP0,X  
       RTS            

LF54A: LDA    $8B     
       BNE    LF556   
       JSR    LF64F   
       LDA    #$00    
       STA    $89     
       RTS            

LF556: LDX    #$04    
       LDA    $A2,X   
       BNE    LF567   
       LDA    $8C     
       BEQ    LF567   
       JSR    LF6A2   
       JMP    LF5E0   
LF566: .byte $60
LF567: LDA    #$0D    
       STA    AUDC0   
       LDA    #$06    
       STA    AUDF0   
       LDA    $87     
       BNE    LF5B7   
       LDA    $8A     
       CMP    #$14    
       BCS    LF580   
       LDA    #$07    
       STA    AUDV0   
       JMP    LF5E0   
LF580: CMP    #$32    
       BCS    LF58B   
       LDA    #$01    
       STA    AUDV0   
       JMP    LF5E0   
LF58B: CMP    #$50    
       BCS    LF596   
       LDA    #$00    
       STA    AUDV0   
       JMP    LF5E0   
LF596: CMP    #$64    
       BCS    LF5A1   
       LDA    #$04    
       STA    AUDV0   
       JMP    LF5E0   
LF5A1: CMP    #$82    
       BCS    LF5AC   
       LDA    #$01    
       STA    AUDV0   
       JMP    LF5E0   
LF5AC: CMP    #$BE    
       BCS    LF5E0   
       LDA    #$00    
       STA    AUDV0   
       JMP    LF5E0   
LF5B7: LDA    $8A     
       CMP    #$14    
       BCS    LF5C4   
       LDA    #$03    
       STA    AUDV0   
       JMP    LF5E0   
LF5C4: CMP    #$32    
       BCS    LF5CF   
       LDA    #$01    
       STA    AUDV0   
       JMP    LF5E0   
LF5CF: CMP    #$5A    
       BCS    LF5DA   
       LDA    #$00    
       STA    AUDV0   
       JMP    LF5E0   
LF5DA: LDA    #$00    
       STA    $8A     
       STA    $87     
LF5E0: INC    $8A     
       LDA    $8A     
       CMP    #$BE    
       BCC    LF5F0   
       LDA    #$01    
       STA    $87     
       LDA    #$00    
       STA    $8A     
LF5F0: LDA    $89     
       BEQ    LF607   
       LDA    #$00    
       DEC    $88     
       LDA    $88     
       STA    AUDV1   
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC1   
       DEC    $89     
       JMP    LF622   
LF607: LDA    #$00    
       STA    $88     
       LDA    $92     
       BEQ    LF61E   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$1F    
       STA    AUDF1   
       LDA    #$04    
       STA    AUDV1   
       JMP    LF622   
LF61E: LDA    #$00    
       STA    AUDV1   
LF622: LDA    $83     
       BEQ    LF64E   
       STA    AUDV1   
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
       DEC    $83     
       BNE    LF64E   
       LDX    #$02    
       LDA    $F2,X   
       BNE    LF64E   
       DEX            
       DEX            
       LDA    $F2,X   
       CMP    #$09    
       BEQ    LF64E   
       LDA    #$0A    
       STA    $82     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $8A     
       STA    $87     
LF64E: RTS            

LF64F: LDA    #$00    
       STA    AUDV1   
       LDA    $8A     
       CMP    #$0C    
       BCC    LF65F   
       LDA    #$00    
       STA    $8A     
       BEQ    LF69F   
LF65F: CMP    #$03    
       BCS    LF67B   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$00    
       STA    AUDV1   
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$0D    
       STA    AUDC1   
       LDA    #$05    
       STA    AUDF1   
       BNE    LF69F   
LF67B: CMP    #$06    
       BCS    LF689   
       LDA    #$0A    
       STA    AUDV0   
       LDA    #$0F    
       STA    AUDV1   
       BNE    LF69F   
LF689: CMP    #$09    
       BCS    LF697   
       LDA    #$05    
       STA    AUDV0   
       LDA    #$00    
       STA    AUDV1   
       BNE    LF69F   
LF697: LDA    #$00    
       STA    AUDV0   
       LDA    #$0F    
       STA    AUDV1   
LF69F: INC    $8A     
       RTS            

LF6A2: LDA    $86     
       CMP    #$32    
       BCC    LF6B9   
       LDY    #$00    
       STY    $86     
       STY    AUDV0   
       STY    $85     
       LDA    #$1F    
       STA    $84     
       LDX    #$0C    
       STX    AUDC0   
       RTS            

LF6B9: CMP    #$0F    
       BCS    LF6CC   
       INC    $85     
       LDA    $85     
       STA    AUDV0   
       DEC    $84     
       LDA    $84     
       STA    AUDF0   
       INC    $86     
       RTS            

LF6CC: CMP    #$1E    
       BCS    LF6D7   
       LDA    $85     
       STA    AUDV0   
       INC    $86     
       RTS            

LF6D7: LDA    #$01    
       STA    AUDV0   
       INC    $86     
       RTS            

LF6DE: LDA    #$01    
       AND    SWCHB   
       BNE    LF6ED   
       LDA    #$01    
       STA    $81     
       JSR    LF015   
       RTS            

LF6ED: LDA    $8B     
       BNE    LF6F5   
       JSR    LF775   
       RTS            

LF6F5: LDA    $82     
       BEQ    LF6FA   
       RTS            

LF6FA: LDX    #$00    
       LDA    #$5A    
       STA    $F6,X   
       INX            
       LDA    #$FF    
       STA    $F6,X   
       JSR    LFBFA   
       JSR    LFB70   
       INC    $95     
       LDA    $95     
       CMP    #$03    
       BEQ    LF716   
       JMP    LF762   
LF716: LDA    #$00    
       STA    $95     
       LDA    $81     
       BNE    LF740   
       INC    $87     
       LDA    $87     
       CMP    #$28    
       BCC    LF745   
       CMP    #$32    
       BCC    LF754   
       CMP    #$82    
       BCC    LF756   
       CMP    #$8C    
       BCC    LF754   
       CMP    #$C8    
       BCC    LF745   
       CMP    #$DC    
       BCC    LF756   
       CMP    #$F0    
       BCC    LF745   
       BCS    LF756   
LF740: BIT    SWCHA   
       BVS    LF754   
LF745: LDA    #$01    
       STA    $B7     
       LDA    $93     
       CMP    #$1C    
       BEQ    LF762   
       DEC    $93     
       JMP    LF762   
LF754: BMI    LF762   
LF756: LDA    #$00    
       STA    $B7     
       LDA    $93     
       CMP    #$7C    
       BEQ    LF762   
       INC    $93     
LF762: LDA    $93     
       STA    $B9     
       LDA    #$06    
       STA    $BA     
       JSR    LF7FE   
       LDA    $97     
       CLC            
       ADC    #$45    
       STA    $B2     
       RTS            

LF775: LDA    $E8     
       BNE    LF78E   
       LDA    $EA     
       BNE    LF78E   
       LDA    $EC     
       BNE    LF78E   
       LDA    $EE     
       BNE    LF78E   
       LDA    $F0     
       BNE    LF78E   
       LDA    #$01    
       STA    $8B     
       RTS            

LF78E: LDX    #$08    
LF790: LDA    $DE,X   
       STA    $D2,X   
       DEX            
       DEX            
       BPL    LF790   
       LDA    #$09    
       STA    $BA     
       LDA    $E8     
       BNE    LF7AA   
       LDA    $EA     
       BNE    LF7AA   
       JSR    LF92B   
       JMP    LF7AD   
LF7AA: JSR    LF92F   
LF7AD: LDX    #$08    
LF7AF: LDA    $D2,X   
       STA    $DE,X   
       DEX            
       DEX            
       BPL    LF7AF   
       LDX    #$08    
LF7B9: LDA    $E8,X   
       STA    $D2,X   
       DEX            
       DEX            
       BPL    LF7B9   
       LDA    #$09    
       STA    $BA     
       LDA    $E8     
       BNE    LF7D3   
       LDA    $EA     
       BNE    LF7D3   
       JSR    LF7E1   
       JMP    LF7D6   
LF7D3: JSR    LF7E5   
LF7D6: LDX    #$08    
LF7D8: LDA    $D2,X   
       STA    $E8,X   
       DEX            
       DEX            
       BPL    LF7D8   
       RTS            

LF7E1: LDX    #$08    
       BNE    LF7E7   
LF7E5: LDX    #$06    
LF7E7: LDA    $D2,X   
       SEC            
       SBC    $BA     
       BCS    LF7FB   
       LDA    #$51    
       STA    $D2,X   
       LDA    #$09    
       STA    $BA     
       DEX            
       DEX            
       JMP    LF7E7   
LF7FB: STA    $D2,X   
       RTS            

LF7FE: LDY    #$08    
       LDA    #$00    
LF802: ASL    $B9     
       ROL            
       SEC            
       SBC    $BA     
       BCS    LF812   
       CLC            
       ADC    $BA     
       ASL    $97     
       JMP    LF814   
LF812: ROL    $97     
LF814: DEY            
       BNE    LF802   
       RTS            

LF818: STX    $B1     
       LDA    $8D,X   
       BEQ    LF839   
       CMP    #$06    
       BEQ    LF852   
       CMP    #$07    
       BNE    LF83A   
       LDA    $95     
       CMP    #$02    
       BCS    LF83D   
       LDA    #$FF    
       STA    $9D,X   
       LDA    #$01    
       STA    $A2,X   
       STA    $A7,X   
       JMP    LF849   
LF839: RTS            

LF83A: JMP    LF928   
LF83D: LDA    #$BB    
       STA    $9D,X   
       LDA    #$FF    
       STA    $A2,X   
       LDA    #$00    
       STA    $A7,X   
LF849: LDA    #$00    
       STA    $8D,X   
       LDA    #$FF    
       STA    $CC,X   
       RTS            

LF852: DEC    $96     
       LDX    #$08    
LF856: LDA    $DE,X   
       STA    $D2,X   
       DEX            
       DEX            
       BPL    LF856   
       LDX    $B1     
       CPX    #$04    
       BNE    LF872   
       LDA    $8C     
       BEQ    LF872   
       LDA    #$00    
       STA    $8C     
       STA    $8B     
       LDA    #$3C    
       STA    $86     
LF872: INX            
       TXA            
       ASL            
       ASL            
       ASL            
       STX    $BA     
       ADC    $BA     
       STA    $BA     
       CMP    #$09    
       BNE    LF88F   
       LDX    #$00    
       LDA    $F8,X   
       CMP    #$51    
       BNE    LF88F   
       JSR    LF933   
       JMP    LF892   
LF88F: JSR    LF92B   
LF892: LDX    #$08    
LF894: LDA    $D2,X   
       STA    $DE,X   
       DEX            
       DEX            
       BPL    LF894   
       LDX    #$08    
LF89E: LDA    $E8,X   
       STA    $D2,X   
       DEX            
       DEX            
       BPL    LF89E   
       LDA    $E4     
       CMP    #$12    
       BEQ    LF8B8   
       CMP    #$24    
       BEQ    LF8B8   
       CMP    #$36    
       BEQ    LF8B8   
       CMP    #$48    
       BNE    LF8C3   
LF8B8: LDY    #$04    
       LDA.wy $00A2,Y 
       BEQ    LF8C3   
       LDA    #$01    
       STA    $8C     
LF8C3: LDA    $E8     
       BNE    LF8D5   
       LDA    $EA     
       BEQ    LF8E9   
       CMP    #$09    
       BNE    LF8D5   
       LDA    $EC     
       CMP    #$2D    
       BCC    LF8DF   
LF8D5: LDA    #$09    
       STA    $BA     
       JSR    LF933   
       JMP    LF91C   
LF8DF: LDA    #$2D    
       STA    $BA     
       JSR    LF92F   
       JMP    LF91C   
LF8E9: LDA    $EC     
       CMP    #$36    
       BCC    LF8F9   
       LDA    #$24    
       STA    $BA     
       JSR    LF92F   
       JMP    LF91C   
LF8F9: CMP    #$1B    
       BCC    LF907   
       LDA    #$1B    
       STA    $BA     
       JSR    LF92F   
       JMP    LF91C   
LF907: CMP    #$09    
       BCC    LF915   
       LDA    #$12    
       STA    $BA     
       JSR    LF92F   
       JMP    LF91C   
LF915: LDA    #$09    
       STA    $BA     
       JSR    LF92F   
LF91C: LDX    #$08    
LF91E: LDA    $D2,X   
       STA    $E8,X   
       DEX            
       DEX            
       BPL    LF91E   
       LDX    $B1     
LF928: INC    $8D,X   
       RTS            

LF92B: LDX    #$08    
       BNE    LF935   
LF92F: LDX    #$06    
       BNE    LF935   
LF933: LDX    #$04    
LF935: BIT    $84     
       BVS    LF952   
       LDA    $D2,X   
       CLC            
       ADC    $BA     
       SEC            
       SBC    #$5A    
       BCC    LF94E   
       STA    $D2,X   
       LDA    #$09    
       STA    $BA     
       DEX            
       DEX            
       BPL    LF935   
       RTS            

LF94E: ADC    #$5A    
       STA    $D2,X   
LF952: RTS            

LF953: LDX    #$00    
       LDA    $DE     
       BEQ    LF960   
       LDA    #$51    
       STA    $F8,X   
       JMP    LFA12   
LF960: LDA    $E0     
       CMP    #$24    
       BCC    LF96D   
       LDA    #$51    
       STA    $F8,X   
       JMP    LFA12   
LF96D: CMP    #$1B    
       BCC    LF978   
       LDA    #$48    
       STA    $F8,X   
       JMP    LFA12   
LF978: CMP    #$12    
       BCC    LF983   
       LDA    #$3F    
       STA    $F8,X   
       JMP    LFA12   
LF983: CMP    #$09    
       BCC    LF99B   
       LDA    $E2     
       CMP    #$24    
       BCC    LF994   
       LDA    #$36    
       STA    $F8,X   
       JMP    LFA12   
LF994: LDA    #$2D    
       STA    $F8,X   
       JMP    LFA12   
LF99B: LDA    $E2     
       CMP    #$48    
       BCC    LF9A8   
       LDA    #$24    
       STA    $F8,X   
       JMP    LFA12   
LF9A8: CMP    #$36    
       BCC    LF9B3   
       LDA    #$1B    
       STA    $F8,X   
       JMP    LFA12   
LF9B3: CMP    #$24    
       BCC    LF9BE   
       LDA    #$12    
       STA    $F8,X   
       JMP    LF9C6   
LF9BE: CMP    #$12    
       BCC    LF9C6   
       LDA    #$09    
       STA    $F8,X   
LF9C6: LDA    $EA     
       CMP    #$3F    
       BCC    LF9D3   
       LDA    #$3F    
       STA    $F8,X   
       JMP    LFA12   
LF9D3: CMP    #$36    
       BCC    LF9DE   
       LDA    #$36    
       STA    $F8,X   
       JMP    LFA12   
LF9DE: CMP    #$2D    
       BCC    LF9E9   
       LDA    #$2D    
       STA    $F8,X   
       JMP    LFA12   
LF9E9: CMP    #$24    
       BCC    LF9F4   
       LDA    #$24    
       STA    $F8,X   
       JMP    LFA12   
LF9F4: CMP    #$1B    
       BCC    LF9FF   
       LDA    #$1B    
       STA    $F8,X   
       JMP    LFA12   
LF9FF: CMP    #$12    
       BCC    LFA0A   
       LDA    #$12    
       STA    $F8,X   
       JMP    LFA12   
LFA0A: CMP    #$09    
       BCC    LFA12   
       LDA    #$09    
       STA    $F8,X   
LFA12: LDX    $B1     
       INC    $98,X   
       LDA    $98,X   
       LDY    $F8     
       BNE    LFA22   
       CMP    LFFE2,X 
       JMP    LFA75   
LFA22: CPY    #$09    
       BNE    LFA2C   
       CMP    LFFE7,X 
       JMP    LFA75   
LFA2C: CPY    #$12    
       BNE    LFA36   
       CMP    LFFEC,X 
       JMP    LFA75   
LFA36: CPY    #$1B    
       BNE    LFA40   
       CMP    LFFF1,X 
       JMP    LFA75   
LFA40: CPY    #$24    
       BNE    LFA4A   
       CMP    LFFF6,X 
       JMP    LFA75   
LFA4A: CPY    #$2D    
       BNE    LFA54   
       CMP    LFEE3,X 
       JMP    LFA75   
LFA54: CPY    #$36    
       BNE    LFA5E   
       CMP    LFEE8,X 
       JMP    LFA75   
LFA5E: CPY    #$3F    
       BNE    LFA68   
       CMP    LFEED,X 
       JMP    LFA75   
LFA68: CPY    #$48    
       BNE    LFA72   
       CMP    LFEF2,X 
       JMP    LFA75   
LFA72: CMP    LFEF7,X 
LFA75: BCC    LFADF   
       LDA    #$00    
       STA    $98,X   
       LDA    $A2,X   
       BEQ    LFAE0   
       BMI    LFAA5   
       LDA    $A7,X   
       BEQ    LFA94   
       DEC    $9D,X   
       LDA    $9D,X   
       CMP    #$99    
       BCS    LFAA2   
       LDA    #$00    
       STA    $A2,X   
       JMP    LFB2C   
LFA94: INC    $9D,X   
       LDA    $9D,X   
       CMP    #$FE    
       BCC    LFAA2   
       LDA    $A7,X   
       EOR    #$01    
       STA    $A7,X   
LFAA2: JMP    LFB2C   
LFAA5: LDA    $A7,X   
       BEQ    LFABE   
       DEC    $9D,X   
       LDA    $9D,X   
       CMP    #$02    
       BCC    LFACF   
       CMP    #$9F    
       BCS    LFB2C   
       LDA    $A7,X   
       EOR    #$01    
       STA    $A7,X   
       JMP    LFB2C   
LFABE: INC    $9D,X   
       LDA    $9D,X   
       CMP    #$02    
       BCC    LFACF   
       BNE    LFB08   
       LDA    #$00    
       STA    $A2,X   
       JMP    LFB2C   
LFACF: LDX    $B1     
       LDA    $9D,X   
       STA    $B9     
       LDA    #$06    
       STA    $BA     
       JSR    LF7FE   
       JMP    LFB3D   
LFADF: RTS            

LFAE0: LDA    $A7,X   
       BEQ    LFB0B   
       DEC    $9D,X   
       LDA    $9D,X   
       CMP    #$03    
       BCS    LFB2C   
       LDA    #$FF    
       STA    $A2,X   
       CPX    #$04    
       BNE    LFAFE   
       LDA    $8C     
       BEQ    LFAFE   
       LDA    #$00    
       STA    $8C     
       BEQ    LFB05   
LFAFE: LDA    $81     
       BEQ    LFB05   
       JSR    LFB4D   
LFB05: JMP    LFACF   
LFB08: JMP    LFB2C   
LFB0B: INC    $9D,X   
       LDA    $9D,X   
       CMP    #$99    
       BCC    LFB2C   
       LDA    #$01    
       STA    $A2,X   
       CPX    #$04    
       BNE    LFB25   
       LDA    $8C     
       BEQ    LFB25   
       LDA    #$00    
       STA    $8C     
       BEQ    LFB2C   
LFB25: LDA    $81     
       BEQ    LFB2C   
       JSR    LFB4D   
LFB2C: LDX    $B1     
       LDA    $9D,X   
       STA    $B9     
       LDA    #$06    
       STA    $BA     
       JSR    LF7FE   
       LDA    $A2,X   
       BMI    LFB45   
LFB3D: LDA    $97     
       CLC            
       ADC    #$43    
       JMP    LFB4A   
LFB45: LDA    $97     
       CLC            
       ADC    #$19    
LFB4A: STA    $AC,X   
       RTS            

LFB4D: LDA    #$10    
       STA    $83     
       LDX    #$00    
       LDA    $F2,X   
       CMP    #$09    
       BEQ    LFB65   
       INX            
       INX            
       LDA    $F2,X   
       BEQ    LFB64   
       SEC            
       SBC    #$09    
       STA    $F2,X   
LFB64: RTS            

LFB65: LDA    #$B4    
       STA    $F2,X   
       INX            
       INX            
       LDA    #$51    
       STA    $F2,X   
       RTS            

LFB70: LDA    $D1     
       BNE    LFBAE   
       LDA    $92     
       BNE    LFBAE   
       BIT    $B3     
       BMI    LFBAF   
       LDA    $B8     
       CMP    #$03    
       BNE    LFB97   
       LDA    #$00    
       STA    $B8     
       LDX    $B4     
       BIT    $B3     
       BVS    LFB9A   
       LDA    LFEB0,X 
       CLC            
       ADC    $B5     
       STA    $B5     
       JMP    LFBA2   
LFB97: INC    $B8     
       RTS            

LFB9A: LDA    $B5     
       SEC            
       SBC    LFEB0,X 
       STA    $B5     
LFBA2: LDA    LFEA0,X 
       STA    $B6     
       INX            
       CPX    #$10    
       BCS    LFBE5   
       STX    $B4     
LFBAE: RTS            

LFBAF: LDA    $B7     
       BMI    LFBE4   
       LDA    $81     
       BEQ    LFBBB   
       BIT    REFP1   
       BMI    LFBE4   
LFBBB: INC    $96     
       LDA    $96     
       CMP    #$05    
       BCS    LFBD5   
       LDA    $B7     
       BNE    LFBD8   
       LDA    $93     
       CLC            
       ADC    #$10    
       STA    $B5     
       LDA    #$00    
       STA    $B3     
       JMP    LFBE0   
LFBD5: DEC    $96     
       RTS            

LFBD8: LDA    $93     
       STA    $B5     
       LDA    #$40    
       STA    $B3     
LFBE0: LDA    #$05    
       STA    $B6     
LFBE4: RTS            

LFBE5: LDY    #$00    
       LDA    $B5     
       STA.wy $00C1,Y 
       LDA    #$13    
       STA.wy $00BB,Y 
       LDA    #$80    
       STA    $B3     
       LDA    #$00    
       STA    $B4     
       RTS            

LFBFA: LDA    $94     
       CMP    #$03    
       BNE    LFC52   
       LDA    #$00    
       STA    $92     
       STA    $94     
       LDX    #$04    
LFC08: LDA    #$00    
       STA    $B1     
       LDA    $BB,X   
       BMI    LFC1C   
       DEC    $BB,X   
       LDA    $BB,X   
       CMP    #$0F    
       BNE    LFC1C   
       LDA    #$01    
       STA    $B1     
LFC1C: LDY    $CC,X   
       BMI    LFC3C   
       DEC    $CC,X   
       BNE    LFC3C   
       LDA    $C7,X   
       INX            
       STA    $C1,X   
       CPX    #$05    
       BNE    LFC33   
       LDA    #$01    
       STA    $92     
       DEC    $96     
LFC33: LDA    #$13    
       STA    $BB,X   
       DEX            
       LDA    #$FF    
       STA    $CC,X   
LFC3C: LDA    $B1     
       BEQ    LFC4C   
       LDA    $BB,X   
       STA    $CC,X   
       LDA    $C1,X   
       STA    $C7,X   
       LDA    #$FF    
       STA    $BB,X   
LFC4C: DEX            
       BPL    LFC08   
       JMP    LFC54   
LFC52: INC    $94     
LFC54: LDX    #$00    
       LDA    $BB,X   
       BMI    LFC5B   
       INX            
LFC5B: STX    $D1     
       RTS            

LFC5E: INC    $87     
       JSR    LFC95   
       LDA    $8A     
       CMP    #$0F    
       BNE    LFC7C   
       LDX    #$00    
       STX    $8A     
       LDA    $82     
       CMP    #$01    
       BEQ    LFC7F   
       LDA    $F6,X   
       CLC            
       ADC    #$0A    
       STA    $F6,X   
       DEC    $82     
LFC7C: INC    $8A     
       RTS            

LFC7F: LDA    #$40    
       STA    $84     
       LDA    #$00    
       LDX    #$0A    
LFC87: STA    $E8,X   
       DEX            
       DEX            
       BPL    LFC87   
       BIT    REFP1   
       BMI    LFC94   
       JSR    LF015   
LFC94: RTS            

LFC95: LDA    $82     
       CMP    #$01    
       BNE    LFCA0   
       LDA    #$00    
       STA    AUDV0   
       RTS            

LFCA0: LDA    $87     
       CMP    #$10    
       BCS    LFCBE   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV1   
       SEC            
       SBC    $8A     
       STA    AUDV0   
       LDA    #$0A    
       STA    AUDF1   
       STA    AUDF0   
       LDA    #$0E    
       STA    AUDC1   
       RTS            

LFCBE: CMP    #$19    
       BCS    LFCC5   
       JMP    LFD12   
LFCC5: CMP    #$23    
       BCS    LFCCC   
       JMP    LFD19   
LFCCC: CMP    #$28    
       BCS    LFCD3   
       JMP    LFD12   
LFCD3: CMP    #$32    
       BCS    LFCDA   
       JMP    LFD19   
LFCDA: CMP    #$37    
       BCS    LFCE1   
       JMP    LFD12   
LFCE1: CMP    #$41    
       BCS    LFCE8   
       JMP    LFD19   
LFCE8: CMP    #$46    
       BCS    LFCEF   
       JMP    LFD12   
LFCEF: CMP    #$5F    
       BCS    LFCF6   
       JMP    LFD26   
LFCF6: CMP    #$64    
       BCS    LFCFD   
       JMP    LFD12   
LFCFD: CMP    #$73    
       BCS    LFD04   
       JMP    LFD33   
LFD04: CMP    #$78    
       BCS    LFD0B   
       JMP    LFD12   
LFD0B: CMP    #$90    
       BCS    LFD12   
       JMP    LFD3C   
LFD12: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LFD19: LDA    #$0C    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$1C    
       STA    AUDF0   
       RTS            

LFD26: LDA    #$01    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       LDA    #$1C    
       STA    AUDF0   
       RTS            

LFD33: LDA    #$0F    
       STA    AUDV0   
       LDA    #$19    
       STA    AUDF0   
       RTS            

LFD3C: LDA    #$06    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       STA    AUDF0   
       RTS            

LFD47: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$1E    
       STA    TIM64T  
       LDA    $82     
       CMP    #$01    
       BEQ    LFD63   
       LDA    $81     
       BEQ    LFD63   
       LDA    #$00    
       STA    $80     
       JMP    LFD7F   
LFD63: INC    $88     
       BNE    LFD7F   
       INC    $85     
       LDA    $85     
       CMP    #$08    
       BCC    LFD7F   
       LDA    #$00    
       STA    $81     
       STA    $82     
       STA    $85     
       LDA    $80     
       ADC    #$0A    
       ADC    $C7     
       STA    $80     
LFD7F: JSR    LF6DE   
       LDX    #$04    
LFD84: STX    $B1     
       JSR    LF818   
       LDX    $B1     
       DEX            
       BPL    LFD84   
LFD8E: LDA    INTIM   
       BNE    LFD8E   
       LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$36    
       STA    TIM64T  
       LDA    #$01    
       AND    SWCHB   
       BNE    LFDBD   
       LDA    #$01    
       STA    $81     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JSR    LF015   
       JMP    LF098   
LFDBD: LDA    $8B     
       BEQ    LFDD1   
       LDA    $82     
       BNE    LFDE9   
       LDX    #$04    
LFDC7: STX    $B1     
       JSR    LF953   
       LDX    $B1     
       DEX            
       BPL    LFDC7   
LFDD1: LDA    $81     
       BNE    LFDE3   
       BIT    REFP1   
       BMI    LFDE0   
       LDA    #$01    
       STA    $81     
       JSR    LF015   
LFDE0: JMP    LF098   
LFDE3: JSR    LF54A   
       JMP    LF098   
LFDE9: JSR    LFC5E   
       JMP    LF098   
LFDEF: .byte $00,$00,$00,$FF,$0C,$04,$00,$00,$00,$00,$00
LFDFA: .byte $73,$63,$53,$43,$33,$23,$13,$03,$F3,$E3,$D3,$C3,$B3,$A3,$93,$74
       .byte $64,$54,$44,$34,$24,$14,$04,$F4,$E4,$D4,$C4,$B4,$A4,$94,$75,$65
       .byte $55,$45,$35,$25,$15,$05,$F5,$E5,$D5,$C5,$B5,$A5,$95,$76,$66,$56
       .byte $46,$36,$26,$16,$06,$F6,$E6,$D6,$C6,$B6,$A6,$96,$77,$67,$57,$47
       .byte $37,$27,$17,$07,$F7,$E7,$D7,$C7,$B7,$A7,$97,$78,$68,$58,$48,$38
       .byte $28,$18,$08,$F8,$E8,$D8,$C8,$B8,$A8,$98,$79,$69,$59,$49,$39,$29
       .byte $19,$09,$F9,$E9,$D9,$C9,$B9,$A9,$99,$7A,$6A,$5A,$4A,$3A,$2A,$1A
       .byte $0A,$FA,$EA,$DA,$CA,$BA,$AA,$9A,$7B,$6B,$5B,$4B,$3B,$2B,$1B,$0B
       .byte $FB,$EB,$DB,$CB,$BB,$AB,$9B,$7C,$6C,$5C,$4C,$3C,$2C,$1C,$0C,$FC
       .byte $EC,$DC,$CC,$BC,$AC,$9C,$7D,$6D,$5D,$4D,$3D,$2D,$1D,$0D,$FD,$ED
       .byte $DD
LFE9B: .byte $AA,$A8,$A0,$80,$00
LFEA0: .byte $05,$06,$07,$08,$09,$09,$09,$08,$07,$06,$05,$04,$03,$02,$01,$00
LFEB0: .byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00
LFEC0: .byte $FE,$82,$BA,$A2,$BA,$82,$FE
LFEC7: .byte $F7,$14,$14,$F7,$84,$84,$F7
LFECE: .byte $BD,$25,$25,$2D,$21,$20,$BC
LFED5: .byte $12,$12,$F2,$12,$12,$A2,$42
LFEDC: .byte $7B,$0A,$0A,$7B,$4A,$4A,$7B
LFEE3: .byte $05,$06,$07,$08,$0A
LFEE8: .byte $04,$05,$06,$07,$0A
LFEED: .byte $03,$04,$05,$06,$0A
LFEF2: .byte $02,$03,$04,$05,$0A
LFEF7: .byte $01,$02,$03,$04,$0A,$FF,$7B,$00,$D8,$7E,$42,$42,$42,$42,$42,$42
       .byte $42,$7E,$10,$10,$10,$10,$10,$10,$10,$10,$10,$7E,$40,$40,$40,$7E
       .byte $02,$02,$02,$7E,$7E,$02,$02,$02,$7E,$02,$02,$02,$7E,$02,$02,$02
       .byte $02,$7E,$42,$42,$42,$42,$7E,$02,$02,$02,$7E,$40,$40,$40,$7E,$7E
       .byte $42,$42,$42,$7E,$40,$40,$40,$40,$02,$02,$02,$02,$02,$02,$02,$02
       .byte $7E,$7E,$42,$42,$42,$7E,$42,$42,$42,$7E,$02,$02,$02,$02,$7E,$42
       .byte $42,$42,$7E,$00,$0E,$1E,$3E,$74,$FD,$59,$13,$03,$21,$00,$0E,$1E
       .byte $3E,$74,$FC,$5A,$15,$01,$24,$00,$1C,$1E,$3E,$3E,$38,$64,$92,$20
       .byte $80,$00,$E0,$E4,$D0,$E0,$F0,$61,$60,$24,$10,$00,$F0,$D0,$E0,$E0
       .byte $64,$68,$32,$14,$00,$00,$F0,$E0,$74,$30,$1C,$08,$00,$00,$00,$00
       .byte $70,$74,$18,$80,$04,$00,$00,$00,$00,$00,$38,$18,$04,$00,$00,$00
       .byte $00,$00,$00,$00,$C0,$80,$00,$00,$00,$00,$00,$00,$00
LFFB4: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFBE: .byte $00,$00,$89,$42,$55,$AA,$42,$91,$00,$00,$00
LFFC9: .byte $00,$0F,$1F,$3F,$75,$FF,$59,$13,$13,$01
LFFD3: .byte $00,$14,$2A,$22,$2A,$14,$14,$22
LFFDB: .byte $DE,$50,$50,$DE,$42,$42,$DE
LFFE2: .byte $0A,$0A,$0A,$0A,$0A
LFFE7: .byte $09,$09,$0A,$0A,$0A
LFFEC: .byte $08,$08,$09,$09,$0A
LFFF1: .byte $07,$08,$08,$09,$0A
LFFF6: .byte $06,$07,$08,$09,$0A,$51,$00,$F0,$00,$F0
