; Disassembly of roms/Traffic.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Traffic.bin
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
RESP1   =  $11
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
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
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXPPMM  =  $37
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296
LF5A1   =   $F5A1
LF5DD   =   $F5DD
LF939   =   $F939
LFA24   =   $FA24

       ORG $F000
LF000: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    CTRLPF  
       STA    GRP0    
       STA    GRP1    
       LDA    #$44    
       STA    COLUBK  
       LDA    #$2F    
       STA    COLUPF  
       LDY    #$D8    
       JSR    LF1DA   
LF01B: LDA    INTIM   
       BNE    LF01B   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$2F    
       STA    $EB     
       LDX    #$00    
       LDY    #$07    
       JSR    LF215   
       LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$04    
LF037: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    #$04    
LF043: DEX            
       BNE    LF043   
       NOP            
       LDA    $DE     
       STA    PF1     
       DEY            
       BPL    LF037   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$44    
       STA    COLUP0  
       LDA    $D6     
       JSR    LF26C   
       LDY    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    HMCLR   
       LDA    #$0A    
       STA    COLUBK  
       JSR    LF29C   
       LDA    #$08    
       STA    COLUPF  
       LDA    $90     
       STA    $E8     
       LDA    $91     
       STA    $E9     
       LDA    #$A8    
       STA    $EA     
       LDA    #$F4    
       STA    $EB     
       LDA    $BC     
       STA    $EC     
       JSR    LF35E   
       JSR    LF294   
       LDA    #$08    
       STA    COLUPF  
       LDA    $92     
       STA    $E8     
       LDA    $93     
       STA    $E9     
       LDA    #$B0    
       STA    $EA     
       LDA    #$F4    
       STA    $EB     
       LDA    $BD     
       STA    $EC     
       JSR    LF35E   
       JSR    LF294   
       LDA    #$08    
       STA    COLUPF  
       LDA    $94     
       STA    $E8     
       LDA    $95     
       STA    $E9     
       LDA    #$B8    
       STA    $EA     
       LDA    #$F4    
       STA    $EB     
       LDA    $BE     
       STA    $EC     
       JSR    LF35E   
       LDA    #$08    
       STA    REFP1   
       JSR    LF2FD   
       LDA    #$1C    
       STA    COLUPF  
       LDA    $C2     
       STA    PF0     
       LDA    $C3     
       STA    PF1     
       LDA    $C4     
       STA    PF2     
       CPY    #$00    
       BEQ    LF0E1   
       DEY            
LF0E1: INC    $E7     
       LDA    $C5     
       STA    PF0     
       LDA    $C6     
       STA    PF1     
       LDA    $C7     
       STA    PF2     
       STA    WSYNC   
       LDA    $C2     
       STA    PF0     
       LDA    $C3     
       STA    PF1     
       LDA    $C4     
       STA    PF2     
       NOP            
       NOP            
       NOP            
       LDA    $D7     
       CMP    $E7     
       BNE    LF108   
       LDY    #$07    
LF108: LDA    $C5     
       STA    PF0     
       LDA    $C6     
       STA    PF1     
       LDA    $C7     
       STA    PF2     
       NOP            
       NOP            
       STA    $3F     
       JSR    LF2FD   
       LDA    #$08    
       STA    COLUPF  
       LDA    $96     
       STA    $E8     
       LDA    $97     
       STA    $E9     
       LDA    #$C0    
       STA    $EA     
       LDA    #$F4    
       STA    $EB     
       LDA    $BF     
       STA    $EC     
       JSR    LF35E   
       JSR    LF294   
       LDA    #$08    
       STA    COLUPF  
       LDA    $98     
       STA    $E8     
LF141: LDA    $99     
       STA    $E9     
       LDA    #$C8    
       STA    $EA     
       LDA    #$F4    
       STA    $EB     
       LDA    $C0     
       STA    $EC     
       JSR    LF35E   
       JSR    LF294   
       LDA    #$08    
LF159: STA    COLUPF  
       LDA    $9A     
       STA    $E8     
       LDA    $9B     
       STA    $E9     
       LDA    #$D0    
       STA    $EA     
       LDA    #$F4    
       STA    $EB     
       LDA    $C1     
       STA    $EC     
       JSR    LF35E   
       JSR    LF29C   
       LDA    #$00    
       STA    REFP1   
       STA    WSYNC   
       LDA    #$44    
       STA    COLUBK  
       LDA    #$00    
LF181: STA    GRP0    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$3D    
       STA    $B0     
       LDA    #$F4    
       STA    $B1     
       LDA    #$35    
       STA    $B2     
       LDA    #$F4    
       STA    $B3     
LF199: LDA    #$2D    
       STA    $B4     
       LDA    #$F4    
       STA    $B5     
       LDA    #$25    
       STA    $B6     
       LDA    #$F4    
       STA    $B7     
       LDA    #$1D    
       STA    $B8     
       LDA    #$F4    
       STA    $B9     
       LDA    #$15    
       STA    $BA     
       LDA    #$F4    
       STA    $BB     
       LDA    #$0F    
       STA    $EB     
       LDX    #$00    
       LDY    #$07    
       JSR    LF215   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$1C    
       STA    TIM64T  
       LDA    #$00    
       STA    $E7     
       JMP    LF62A   
LF1DA: LDX    #$00    
LF1DC: LDA.wy $0000,Y 
       STA    $E8     
       AND    #$0F    
       STX    $E9     
       TAX            
       LDA    LF49D,X 
       LDX    $E9     
       STA    $B0,X   
       INX            
       LDA    #$F4    
       STA    $B0,X   
       LDA    $E8     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STX    $E9     
       TAX            
       LDA    LF49D,X 
       LDX    $E9     
       INX            
       STA    $B0,X   
       INX            
       LDA    #$F4    
       STA    $B0,X   
       INY            
       INX            
       CPX    #$0C    
       BNE    LF1DC   
       LDA    #$95    
       STA    $B0     
       RTS            

LF215: STX    GRP0    
       STX    GRP1    
       LDA    #$40    
       JSR    LF26C   
       LDA    #$48    
       JSR    LF27E   
       LDX    #$03    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDX    #$01    
       STX    VDELP0  
       STX    VDELP1  
       STA    WSYNC   
       STA    $3F     
       LDA    $EB     
       STA    COLUP0  
       STA    COLUP1  
LF239: LDA    ($B0),Y 
       STA    $E8     
       STA    WSYNC   
       LDA    ($BA),Y 
       STA    GRP0    
       LDA    ($B8),Y 
       STA    GRP1    
       LDA    ($B6),Y 
       STA    GRP0    
       LDA    ($B4),Y 
       TAX            
       LDA    ($B2),Y 
       STY    $E9     
       LDY    $E8     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $E9     
       DEY            
       BPL    LF239   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LF26C: STA    WSYNC   
       SEC            
LF26F: SBC    #$10    
       BCS    LF26F   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0    
       STA    RESP0   
       RTS            

LF27E: STA    WSYNC   
       SEC            
LF281: SBC    #$10    
       BCS    LF281   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP1    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF294: LDA    #$0F    
       STA    COLUPF  
       LDX    #$01    
       BNE    LF2A2   
LF29C: LDA    #$54    
       STA    COLUPF  
       LDX    #$08    
LF2A2: STA    WSYNC   
       LDA    ($D4),Y 
       STA    GRP0    
       LDA    $C2     
       STA    PF0     
       LDA    $C3     
       STA    PF1     
       LDA    $C4     
       STA    PF2     
       CPY    #$00    
       BEQ    LF2B9   
       DEY            
LF2B9: INC    $E7     
       LDA    $C5     
       STA    PF0     
       LDA    $C6     
       STA    PF1     
       LDA    $C7     
       STA    PF2     
       LDA    $D7     
       CMP    $E7     
       BNE    LF2CF   
       LDY    #$07    
LF2CF: LDA    $C2     
       STA    PF0     
       LDA    $C3     
       STA    PF1     
       LDA    $C4     
       STA    PF2     
       LDA    #$03    
       STA    $B0     
LF2DF: DEC    $B0     
       BNE    LF2DF   
       LDA    $C5     
       STA    PF0     
       LDA    $C6     
       STA    PF1     
       LDA    $C7     
       STA    PF2     
       DEX            
       BNE    LF2A2   
       LDA    ($D4),Y 
       STA    GRP0    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       RTS            

LF2FD: LDA    #$54    
       LDX    #$02    
       STA    COLUPF  
LF303: STA    WSYNC   
       LDA    ($D4),Y 
       STA    GRP0    
       LDA    $C8     
       STA    PF0     
       LDA    $C9     
       STA    PF1     
       LDA    $CA     
       STA    PF2     
       CPY    #$00    
       BEQ    LF31A   
       DEY            
LF31A: INC    $E7     
       LDA    $CB     
       STA    PF0     
       LDA    $CC     
       STA    PF1     
       LDA    $CD     
       STA    PF2     
       LDA    $D7     
       CMP    $E7     
       BNE    LF330   
       LDY    #$07    
LF330: LDA    $C8     
       STA    PF0     
       LDA    $C9     
       STA    PF1     
       LDA    $CA     
       STA    PF2     
       LDA    #$03    
       STA    $B0     
LF340: DEC    $B0     
       BNE    LF340   
       LDA    $CB     
       STA    PF0     
       LDA    $CC     
       STA    PF1     
       LDA    $CD     
       STA    PF2     
       DEX            
       BNE    LF303   
       LDA    ($D4),Y 
       STA    GRP0    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       RTS            

LF35E: CPY    #$00    
       BEQ    LF363   
       DEY            
LF363: INC    $E7     
       LDA    $D7     
       CMP    $E7     
       BNE    LF36D   
       LDY    #$07    
LF36D: LDA    $EC     
       JSR    LF27E   
       LDA    ($D4),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    #$03    
       STA    $B0     
LF37C: DEC    $B0     
       BNE    LF37C   
       LDX    #$07    
       CPY    #$00    
       BEQ    LF387   
       DEY            
LF387: INC    $E7     
       LDA    $D7     
       CMP    $E7     
       BNE    LF391   
       LDY    #$07    
LF391: STY    $B0     
LF393: LDA    ($D4),Y 
       STA    GRP0    
       TXA            
       TAY            
       LDA    ($EA),Y 
       STA    WSYNC   
       STA    COLUP1  
       LDA    ($E8),Y 
       STA    GRP1    
       LDA    $CE     
       STA    PF0     
       LDA    $CF     
       STA    PF1     
       LDA    $D0     
       STA    PF2     
       LDY    $B0     
       CPY    #$00    
       BEQ    LF3B6   
       DEY            
LF3B6: LDA    $D1     
       STA    PF0     
       LDA    $D2     
       STA    PF1     
       LDA    $D3     
       STA    PF2     
       INC    $E7     
       LDA    $D7     
       CMP    $E7     
       BNE    LF3CC   
       LDY    #$07    
LF3CC: LDA    $CE     
       STA    PF0     
       LDA    $CF     
       STA    PF1     
       LDA    $D0     
       STA    PF2     
       LDA    #$01    
       STA    $B0     
LF3DC: DEC    $B0     
       BNE    LF3DC   
       STY    $B0     
       NOP            
       NOP            
       LDA    $D1     
       STA    PF0     
       LDA    $D2     
       STA    PF1     
       LDA    $D3     
       STA    PF2     
       DEX            
       BNE    LF393   
       LDA    ($D4),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    #$00    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       CPY    #$00    
       BEQ    LF40A   
       DEY            
LF40A: INC    $E7     
       LDA    $D7     
       CMP    $E7     
       BNE    LF414   
       LDY    #$07    
LF414: RTS            

LF415: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $3C,$72,$72,$72,$72,$72,$72,$3C,$18,$18,$18,$18,$18,$18,$18,$38
       .byte $7E,$46,$40,$3C,$0E,$0E,$4E,$3C,$3E,$4E,$0E,$1C,$1C,$0E,$4E,$3C
       .byte $0C,$0C,$7E,$4C,$4C,$4C,$4C,$4C,$7C,$4E,$0E,$0E,$7C,$40,$40,$7E
       .byte $3C,$4E,$4E,$4E,$7C,$40,$42,$3C,$18,$18,$0C,$0C,$06,$06,$46,$7E
       .byte $3C,$4E,$4E,$3C,$3C,$72,$72,$3C,$3C,$42,$02,$3E,$72,$72,$72,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LF49D: .byte $45
LF49E: .byte $4D,$55,$5D,$65,$6D,$75,$7D,$85,$8D,$95,$00,$00,$08,$0F,$0F,$0F
       .byte $08,$00,$00,$00,$18,$28,$28,$28,$18,$00,$00,$00,$38,$44,$44,$44
       .byte $38,$00,$00,$00,$B8,$E8,$E8,$E8,$B8,$00,$00,$00,$68,$78,$78,$78
       .byte $68,$00,$00,$00,$98,$F8,$F8,$F8,$98,$00
LF4D8: LDA    $E1     
       AND    #$40    
       STA    $E9     
       LDA    $E1     
       AND    #$20    
       ASL            
       EOR    $E9     
       BNE    LF4ED   
       CLC            
LF4E8: ROL    $E0     
       ROL    $E1     
       RTS            

LF4ED: SEC            
       BCS    LF4E8   
LF4F0: LDA    $4141,Y 
       EOR    #$49    
       EOR    ($51),Y 
       EOR    $6159,Y 
       ADC    ($69,X) 
       ADC    #$71    
       ADC    ($79),Y 
       ADC    $8181,Y 
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STA    ($91),Y 
       STA    $A199,Y 
       LDA    ($A9,X) 
       LDA    #$B1    
       LDA    ($B9),Y 
       LDA    $E000,Y 
       .byte $47 ;.SRE
       .byte $FA ;.NOP
       .byte $FF ;.ISB
       .byte $FA ;.NOP
       .byte $47 ;.SRE
       CPX    #$00    
       PHA            
       .byte $FC ;.NOP
       .byte $9C ;.SHY
       .byte $9C ;.SHY
       .byte $9C ;.SHY
       .byte $FC ;.NOP
       PHA            
       BRK            
       .byte $12 ;.JAM
       .byte $3F ;.RLA
       AND    $3939,Y 
       .byte $3F ;.RLA
       .byte $12 ;.JAM
       BRK            
       BRK            
       BIT    AUDF1   
       BIT    AUDF1   
       BIT    VSYNC   
       BRK            
       CLC            
       BIT    $5A     
       BIT    $5A     
       BIT    AUDF1   
       BRK            
       STA    $5A24,Y 
       LDA    $5A     
       BIT    $99     
       BRK            
       .byte $80 ;.NOP
       BRK            
       .byte $80 ;.NOP
       .byte $80 ;.NOP
       .byte $80 ;.NOP
       BRK            
       .byte $80 ;.NOP
       BRK            
       CPY    #$80    
       CPY    #$C0    
LF54E: CPY    #$80    
       CPY    #$00    
       CPX    #$40    
       CPX    #$E0    
       CPX    #$40    
       CPX    #$00    
       BVS    LF57C   
       BEQ    LF54E   
       BEQ    LF580   
       BVS    LF562   
LF562: SEC            
       BPL    LF5DD   
       SED            
       SEI            
       BPL    LF5A1   
       BRK            
       .byte $1C ;.NOP
       DEY            
       .byte $3C ;.NOP
       .byte $FC ;.NOP
       .byte $3C ;.NOP
       DEY            
       .byte $1C ;.NOP
       BRK            
       ASL    $9EC4   
       INC    $C49E,X 
       ASL    $0700   
       .byte $E2 ;.NOP
LF57C: .byte $5F ;.SRE
       .byte $FF ;.ISB
       .byte $5F ;.SRE
       .byte $E2 ;.NOP
LF580: .byte $07 ;.SLO
       BRK            
       .byte $03 ;.SLO
       ADC    ($27),Y 
       .byte $7F ;.RRA
       .byte $27 ;.RLA
       ADC    ($03),Y 
       BRK            
       ORA    ($38,X) 
       .byte $13 ;.SLO
       .byte $3F ;.RLA
       .byte $13 ;.SLO
       SEC            
       ORA    ($00,X) 
       BRK            
       .byte $1C ;.NOP
       ORA    #$1F    
       ORA    #$1C    
       BRK            
       BRK            
       BRK            
       ASL    $0F04   
       .byte $04 ;.NOP
       ASL.w  $0000   
       BRK            
       .byte $07 ;.SLO
       .byte $02 ;.JAM
       .byte $07 ;.SLO
       .byte $02 ;.JAM
       .byte $07 ;.SLO
       BRK            
       BRK            
       BRK            
       .byte $03 ;.SLO
       ORA    ($03,X) 
       ORA    ($03,X) 
       BRK            
       BRK            
       BRK            
       ORA    ($00,X) 
       ORA    ($00,X) 
       ORA    ($00,X) 
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF5C6: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF5C6   
       STA    SWACNT  
       STA    SWBCNT  
       TAY            
LF5D3: LDA    LFE41,Y 
       STA.wy $0086,Y 
       INY            
       CPY    #$06    
       BNE    LF5D3   
       LDA    #$41    
       STA    $A8     
       LDA    #$FE    
       STA    $A9     
       LDA    #$01    
       STA    $DF     
       STA    $E0     
       LDA    #$A1    
       STA    $D9     
       LDA    #$AA    
       STA    $D8     
       STA    $DA     
       LDA    #$A8    
       STA    $DE     
       LDA    #$11    
       STA    $D4     
       LDA    #$F5    
       STA    $D5     
       LDA    #$4D    
       STA    $D7     
       LDA    #$33    
       STA    $D6     
       LDA    #$40    
       STA    $9F     
       LDA    #$79    
       STA    $90     
       STA    $92     
       STA    $94     
       STA    $96     
       STA    $98     
       STA    $9A     
       LDA    #$F5    
       STA    $91     
       STA    $93     
       STA    $95     
       STA    $97     
       STA    $99     
       STA    $9B     
LF62A: INC    $DD     
       LDA    #$3C    
       EOR    $DD     
       BNE    LF64E   
       NOP            
       STA    $DD     
       TAX            
LF636: LDA    $A0,X   
       BEQ    LF63C   
       DEC    $A0,X   
LF63C: INX            
       CPX    #$05    
       BNE    LF636   
       LDA    $DF     
       AND    #$0F    
       NOP            
       CMP    #$03    
       BCS    LF651   
       LDA    #$02    
LF64C: STA    $A5     
LF64E: JMP    LFE65   
LF651: LDA    #$01    
       BNE    LF64C   
LF655: LDA    $F0,X   
       BEQ    LF691   
       LDA    #$01    
       BIT    $E0     
       BNE    LF691   
       LDA    #$00    
       STA    $F0,X   
       LDA    $D7     
       CMP    LFE59,X 
       BCC    LF67F   
       CMP    LFE5F,X 
       BCS    LF67F   
       LDA    #$01    
       BIT    $8E     
       BMI    LF677   
       LDA    #$FF    
LF677: CLC            
       ADC    $8C     
LF67A: STA    $86,X   
       JMP    LF691   
LF67F: TXA            
       TAY            
       LDA    ($A8),Y 
       JMP    LF67A   
LF686: LDX    #$00    
LF688: CPX    $DD     
       BEQ    LF655   
       INX            
       CPX    #$06    
       BNE    LF688   
LF691: LDA    #$10    
       BIT    $9F     
       BEQ    LF6D3   
       LDA    $A2     
       BNE    LF6D3   
       LDA    $A3     
       BNE    LF6D3   
       LDY    #$00    
       LDA    $D7     
       CMP    #$11    
       BCC    LF6BC   
       INY            
       CMP    #$1C    
       BCC    LF6BC   
       INY            
       CMP    #$27    
       BCC    LF6BC   
       INY            
       CMP    #$36    
       BCC    LF6BC   
       INY            
       CMP    #$41    
       BCC    LF6BC   
       INY            
LF6BC: LDA.wy $0086,Y 
       BIT    $E1     
       BMI    LF6C9   
       CLC            
       ADC    #$01    
       JMP    LF6CC   
LF6C9: SEC            
       SBC    #$01    
LF6CC: STA.wy $0086,Y 
       LDA    #$03    
       STA    $A2     
LF6D3: LDA    $A4     
       BNE    LF6FD   
       LDA    #$04    
       BIT    $9F     
       BNE    LF6FD   
       LDA    #$10    
       BIT    $9F     
       BEQ    LF6FD   
       LDA    $E0     
       BPL    LF6ED   
       LDA    #$02    
       ORA    $9F     
       STA    $9F     
LF6ED: LDA    #$04    
       ORA    $9F     
       STA    $9F     
       LDA    $E0     
       AND    #$0F    
       STA    $AD     
       LDA    #$29    
       STA    $8D     
LF6FD: DEC    $AA     
       BPL    LF705   
       LDA    #$0D    
       STA    $AA     
LF705: DEC    $AB     
       BPL    LF70D   
       LDA    #$03    
       STA    $AB     
LF70D: DEC    $AC     
       BPL    LF715   
       LDA    #$01    
       STA    $AC     
LF715: LDA    $A4     
       BNE    LF71D   
       LDA    $A5     
       STA    $A4     
LF71D: LDA    INTIM   
       BNE    LF71D   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$29    
       STA    TIM64T  
       JSR    LF4D8   
       LDA    SWCHB   
       AND    #$02    
       BEQ    LF747   
       LDA    $8E     
       AND    #$BF    
       STA    $8E     
LF747: BIT    $8E     
       BVC    LF76B   
       LDA    $DD     
       BEQ    LF76B   
       CMP    #$1E    
       BEQ    LF76B   
       JMP    LF7F1   
LF756: LDA    #$41    
       LDY    #$FE    
       JMP    LF7AB   
LF75D: LDA    #$47    
       LDY    #$FE    
       JMP    LF7AB   
LF764: LDA    #$4D    
       LDY    #$FE    
       JMP    LF7AB   
LF76B: LDA    SWCHB   
       AND    #$02    
       BEQ    LF775   
       JMP    LF7F1   
LF775: STA    $E6     
       LDA    #$AA    
       STA    $D8     
       STA    $DA     
       LDA    $8E     
       ORA    #$40    
       STA    $8E     
       INC    $DF     
       LDA    $DF     
       CMP    #$05    
       BEQ    LF7D4   
       BCC    LF795   
       CMP    #$15    
       BNE    LF795   
       LDA    #$01    
LF793: STA    $DF     
LF795: STA    $D9     
       LDA    $DF     
       AND    #$0F    
       CMP    #$01    
       BEQ    LF756   
       CMP    #$02    
       BEQ    LF75D   
       CMP    #$03    
       BEQ    LF764   
       LDA    #$53    
       LDY    #$FE    
LF7AB: STA    $A8     
       STY    $A9     
       LDY    #$00    
LF7B1: LDA    ($A8),Y 
       STA.wy $0086,Y 
       INY            
       CPY    #$06    
       BNE    LF7B1   
       LDA    $DF     
       CMP    #$10    
       BCC    LF7D9   
       LDA    $8E     
       ORA    #$80    
       STA    $8E     
       LDA    #$79    
       STA    $D4     
       LDA    #$01    
       STA    $D7     
       LDA    #$66    
       JMP    LF7EF   
LF7D4: LDA    #$11    
       JMP    LF793   
LF7D9: LDA    $8E     
       AND    #$7F    
       STA    $8E     
       LDA    $D9     
       ORA    #$A0    
       STA    $D9     
       LDA    #$11    
       STA    $D4     
       LDA    #$4D    
       STA    $D7     
       LDA    #$33    
LF7EF: STA    $D6     
LF7F1: LDA    SWCHB   
       AND    #$01    
       BEQ    LF803   
       BIT    $E6     
       BMI    LF800   
       LDA    INPT5   
       BPL    LF803   
LF800: JMP    LF85C   
LF803: LDA    #$00    
       STA    $8C     
       STA    CXCLR   
       STA    $D8     
       LDA    #$06    
       STA    $80     
       STA    $81     
       STA    $82     
       STA    $83     
       STA    $84     
       STA    $85     
       LDA    #$79    
       STA    $90     
       STA    $92     
       STA    $94     
       STA    $96     
       STA    $98     
       STA    $9A     
       LDA    #$AA    
       STA    $D9     
       STA    $DA     
       LDA    #$A8    
       STA    $DE     
       LDA    #$40    
       STA    $9F     
       LDA    #$80    
       STA    $E6     
       LDA    #$24    
       STA    $EF     
       LDA    #$0A    
       STA    $A0     
       BIT    $8E     
       BPL    LF850   
       LDA    #$79    
       STA    $D4     
       LDA    #$01    
       LDY    #$66    
       JMP    LF858   
LF850: LDA    #$11    
       STA    $D4     
       LDA    #$4D    
       LDY    #$33    
LF858: STA    $D7     
       STY    $D6     
LF85C: BIT    $9F     
       BPL    LF868   
       JMP    LF92A   
LF863: LDA    #$A3    
       JMP    LF89F   
LF868: LDX    #$00    
LF86A: LDA    $F0,X   
       BEQ    LF871   
       JMP    LF90C   
LF871: LDA    $86,X   
       SEC            
       SBC    $8C     
       BMI    LF883   
       CMP    #$07    
       BCC    LF87E   
       LDA    #$07    
LF87E: STA    $8F     
       JMP    LF88C   
LF883: CMP    #$F9    
       BCS    LF87E   
       LDA    #$F9    
       JMP    LF87E   
LF88C: LDA    $80,X   
       CLC            
       ADC    $8F     
       CMP    #$F3    
       BCS    LF89F   
       CMP    #$C0    
       BCS    LF863   
       CMP    #$A4    
       BCC    LF89F   
       LDA    #$F3    
LF89F: STA    $80,X   
       LDA    #$00    
       STA    $8F     
       LDA    $80,X   
       CMP    #$F3    
       BCS    LF8B3   
LF8AB: CMP    #$0F    
       BCS    LF8B8   
       LDA    $80,X   
       ADC    $8F     
LF8B3: STA    $BC,X   
       JMP    LF8C0   
LF8B8: INC    $8F     
       SEC            
       SBC    #$0F    
       JMP    LF8AB   
LF8C0: LDA    $80,X   
       CMP    #$F3    
       BCS    LF8D3   
       CMP    #$03    
       BCC    LF8D3   
       CMP    #$94    
       BCS    LF8E5   
       LDA    #$79    
       JMP    LF8F8   
LF8D3: LDA    #$03    
       STA    $BC,X   
       LDA    $80,X   
       SEC            
       SBC    #$03    
LF8DC: STA    $8F     
       CPX    #$03    
       BCS    LF914   
       JMP    LF8F1   
LF8E5: LDA    #$9C    
       STA    $BC,X   
       LDA    $80,X   
       SEC            
       SBC    #$93    
       JMP    LF8DC   
LF8F1: CLC            
       ADC    #$10    
       TAY            
       LDA    LF4F0,Y 
LF8F8: STA    $8F     
       TXA            
       ASL            
       TAY            
       LDA    $8F     
       STA.wy $0090,Y 
       LDA    $80,X   
       CMP    #$A3    
       BEQ    LF91C   
       CMP    #$F3    
       BEQ    LF91C   
LF90C: INX            
       CPX    #$06    
       BEQ    LF923   
       JMP    LF86A   
LF914: LDA    #$00    
       SEC            
       SBC    $8F     
       JMP    LF8F1   
LF91C: LDA    #$01    
       STA    $F0,X   
       JMP    LF90C   
LF923: BIT    $E6     
       BMI    LF92A   
       JMP    LF000   
LF92A: LDA    #$01    
       BIT    $DD     
       BEQ    LF933   
       JMP    LFB6E   
LF933: BIT    $9F     
       BPL    LF93A   
       JMP    LF000   
LF93A: BVC    LF960   
       LDY    #$00    
       BIT    $8E     
       BPL    LF952   
LF942: LDA    LFE2D,Y 
       STA.wy $00C2,Y 
       INY            
       CPY    #$06    
       BNE    LF942   
LF94D: STA    CXCLR   
       JMP    LFA56   
LF952: LDA    LFE27,Y 
       STA.wy $00C2,Y 
       INY            
       CPY    #$06    
       BNE    LF952   
       JMP    LF94D   
LF960: LDA    #$C2    
       STA    $A6     
       LDA    #$00    
       STA    $A7     
       LDA    #$20    
       BIT    $9F     
       BEQ    LF9AC   
       LDA    $DD     
       AND    #$07    
       BNE    LF980   
       BIT    $8E     
       BMI    LF983   
       SEC            
       JSR    LF9F4   
       BIT    $C2     
       BMI    LF995   
LF980: JMP    LFA56   
LF983: STX    $8F     
       LDA    #$08    
       JSR    LFA22   
       LDX    $8F     
       LDA    #$08    
       BIT    $C7     
       BNE    LF995   
       JMP    LFA56   
LF995: LDA    $9F     
       SEC            
       SBC    #$10    
       STA    $9F     
       LDY    #$00    
LF99E: LDA    LFE33,Y 
       STA.wy $00C2,Y 
       INY            
       CPY    #$06    
       BNE    LF99E   
       JMP    LFA56   
LF9AC: LDA    #$08    
       BIT    $9F     
       BNE    LF9BD   
       ORA    $9F     
       STA    $9F     
       JSR    LFACF   
       STY    $9C     
       STA    $9E     
LF9BD: DEC    $9C     
       BMI    LF9DD   
       BEQ    LF9C6   
       JMP    LFA56   
LF9C6: LDA    $8C     
       BPL    LF9E6   
       STX    $8F     
       LDA    #$00    
       BIT    $C7     
       BPL    LF9D4   
       LDA    #$08    
LF9D4: JSR    LFA22   
       LDX    $8F     
LF9D9: DEC    $9E     
       BNE    LF9C6   
LF9DD: LDA    #$F7    
       AND    $9F     
       STA    $9F     
       JMP    LFA56   
LF9E6: LDA    #$10    
       CLC            
       BIT    $C2     
       BEQ    LF9EE   
       SEC            
LF9EE: JSR    LF9F4   
       JMP    LF9D9   
LF9F4: LDY    #$05    
       LDA    ($A6),Y 
       ROR            
       STA    ($A6),Y 
       DEY            
       LDA    ($A6),Y 
       ROL            
       STA    ($A6),Y 
       DEY            
       LDA    ($A6),Y 
       ROR            
       STA    ($A6),Y 
       SEC            
       LDA    ($A6),Y 
       AND    #$08    
       BNE    LFA0F   
       CLC            
LFA0F: DEY            
       LDA    ($A6),Y 
       ROR            
       STA    ($A6),Y 
       DEY            
       LDA    ($A6),Y 
       ROL            
       STA    ($A6),Y 
       DEY            
       LDA    ($A6),Y 
       ROR            
       STA    ($A6),Y 
       RTS            

LFA22: TAX            
       LDY    #$00    
       LDA    ($A6),Y 
       AND    #$F0    
       STA    ($A6),Y 
       TXA            
       ORA    ($A6),Y 
       ROL            
       STA    ($A6),Y 
       INY            
       LDA    ($A6),Y 
       ROR            
       STA    ($A6),Y 
       INY            
       LDA    ($A6),Y 
       ROL            
       STA    ($A6),Y 
       INY            
       LDA    ($A6),Y 
       AND    #$F0    
       BCC    LFA46   
       ORA    #$08    
LFA46: ROL            
       STA    ($A6),Y 
       INY            
       LDA    ($A6),Y 
       ROR            
       STA    ($A6),Y 
       INY            
       LDA    ($A6),Y 
       ROL            
       STA    ($A6),Y 
       RTS            

LFA56: LDA    #$04    
       BIT    $9F     
       BNE    LFA5F   
       JMP    LF000   
LFA5F: LDA    #$02    
       BIT    $9F     
       BNE    LFA6A   
       LDA    #$CE    
       JMP    LFA6C   
LFA6A: LDA    #$C8    
LFA6C: LDY    #$00    
       STA    $A6     
       STY    $A7     
       LDA    #$08    
       BIT    $8E     
       BNE    LFA83   
       ORA    $8E     
       STA    $8E     
       JSR    LFACF   
       STY    $EE     
       STA    $ED     
LFA83: DEC    $EE     
       BMI    LFA9B   
       BNE    LFAA1   
LFA89: BIT    $8C     
       BMI    LFAB4   
       LDA    $AD     
       BEQ    LFAA4   
       DEC    $AD     
       SEC            
LFA94: JSR    LF9F4   
LFA97: DEC    $ED     
       BNE    LFA89   
LFA9B: LDA    $8E     
       AND    #$F7    
       STA    $8E     
LFAA1: JMP    LF000   
LFAA4: DEC    $8D     
       BEQ    LFAAB   
       CLC            
       BCC    LFA94   
LFAAB: LDA    $9F     
       AND    #$F9    
       STA    $9F     
       JMP    LFA97   
LFAB4: STX    $8F     
       LDA    $AD     
       BEQ    LFAC6   
       DEC    $AD     
       LDA    #$08    
LFABE: JSR    LFA22   
       LDX    $8F     
       JMP    LFA97   
LFAC6: DEC    $8D     
       BEQ    LFAAB   
       LDA    #$00    
       JMP    LFABE   
LFACF: LDA    $8C     
       BPL    LFAD8   
       LDA    #$00    
       SEC            
       SBC    $8C     
LFAD8: TAY            
       LDA    LFE39,Y 
       AND    #$0F    
       TAY            
       LDA    LFE39,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       RTS            

LFAE7: LDA    $DA     
       AND    #$F0    
       CMP    #$A0    
       BNE    LFB19   
       LDA    $DA     
       CMP    #$AA    
       BEQ    LFAFC   
       AND    #$0F    
       STA    $DA     
       JMP    LFB19   
LFAFC: LDA    #$00    
       STA    $DA     
       LDA    $D9     
       AND    #$F0    
       CMP    #$A0    
       BNE    LFB19   
       LDA    $D9     
       CMP    #$AA    
       BEQ    LFB15   
       AND    #$0F    
       STA    $D9     
       JMP    LFB19   
LFB15: LDA    #$00    
       STA    $D9     
LFB19: BIT    $8E     
       BMI    LFB3B   
       LDA    $8C     
       BMI    LFB47   
LFB21: STA    $8F     
       SED            
       CLC            
       LDA    $D8     
       ADC    $8F     
       STA    $D8     
       LDA    $D9     
       ADC    #$00    
       STA    $D9     
       LDA    $DA     
       ADC    #$00    
       STA    $DA     
       CLD            
       JMP    LFB47   
LFB3B: LDA    $8C     
       BPL    LFB47   
       LDA    #$00    
       SEC            
       SBC    $8C     
       JMP    LFB21   
LFB47: LDA    $DA     
       AND    #$F0    
       BNE    LFB63   
       LDA    $DA     
       BNE    LFB64   
       LDA    #$AA    
       STA    $DA     
       LDA    $D9     
       AND    #$F0    
       BNE    LFB63   
       LDA    $D9     
       BNE    LFB69   
       LDA    #$AA    
       STA    $D9     
LFB63: RTS            

LFB64: ORA    #$A0    
       STA    $DA     
       RTS            

LFB69: ORA    #$A0    
       STA    $D9     
       RTS            

LFB6E: BIT    $9F     
       BPL    LFB75   
       JMP    LFD6E   
LFB75: BVC    LFB83   
       JMP    LFD25   
LFB7A: LDA    $DD     
       CMP    #$01    
       BEQ    LFBA5   
       JMP    LFBD0   
LFB83: LDA    $E6     
       AND    #$FE    
       STA    $E6     
       LDA    #$24    
       STA    $EF     
       LDA    SWCHA   
       AND    #$0C    
       CMP    #$0C    
       BNE    LFB9C   
       LDA    $8E     
       AND    #$FB    
       STA    $8E     
LFB9C: LDA    #$04    
       BIT    $8E     
       BEQ    LFBA5   
       JMP    LFB7A   
LFBA5: LDA    SWCHA   
       AND    #$04    
       BNE    LFBB7   
       LDA    $8C     
       CMP    #$F9    
       BEQ    LFBD0   
       DEC    $8C     
       JMP    LFBC6   
LFBB7: LDA    SWCHA   
       AND    #$08    
       BNE    LFBD0   
       LDA    $8C     
       CMP    #$07    
       BEQ    LFBD0   
       INC    $8C     
LFBC6: LDA    $8E     
       ORA    #$04    
       STA    $8E     
       LDA    #$03    
       STA    $A2     
LFBD0: LDA    INPT5   
       BMI    LFBEA   
       LDA    $8C     
       BEQ    LFBEA   
       LDA    $9F     
       ORA    #$01    
       STA    $9F     
       LDA    $E6     
       AND    #$FE    
       STA    $E6     
       LDA    $EF     
       ORA    #$02    
       STA    $EF     
LFBEA: LDA    #$01    
       BIT    $9F     
       BEQ    LFC3B   
       LDA    $AA     
       CMP    #$01    
       BNE    LFC3B   
       LDA    $8C     
       BMI    LFC09   
       CMP    #$03    
       BCS    LFC14   
LFBFE: LDA    $9F     
       AND    #$FE    
       STA    $9F     
       LDA    #$00    
       JMP    LFC0F   
LFC09: CMP    #$FE    
       BCS    LFBFE   
       ADC    #$02    
LFC0F: STA    $8C     
       JMP    LFC3B   
LFC14: SEC            
       SBC    #$02    
       JMP    LFC0F   
LFC1A: LDA    $8E     
       AND    #$FD    
       STA    $8E     
       JMP    LFC56   
LFC23: LDA    $8E     
       AND    #$FE    
       STA    $8E     
       LDA    SWCHA   
       AND    #$02    
       BNE    LFC1A   
       LDA    $D7     
       CMP    #$4D    
       BCS    LFC4A   
       INC    $D7     
       JMP    LFC4A   
LFC3B: LDA    SWCHA   
       AND    #$01    
       BNE    LFC23   
       LDA    $D7     
       CMP    #$02    
       BCC    LFC4A   
       DEC    $D7     
LFC4A: LDA    #$03    
       STA    AUDC0   
       LDA    #$07    
       STA    AUDF0   
       LDA    #$03    
       STA    $A3     
LFC56: LDA    $9F     
       AND    #$06    
       CMP    #$04    
       BNE    LFC88   
       BIT    $8E     
       BPL    LFC6B   
       LDA    $D2     
       AND    #$F0    
       BEQ    LFC88   
       JMP    LFC71   
LFC6B: LDA    $D0     
       AND    #$0F    
       BEQ    LFC88   
LFC71: LDA    $D7     
       CMP    #$2B    
       BCC    LFC7C   
       SBC    #$01    
       JMP    LFC7E   
LFC7C: ADC    #$01    
LFC7E: STA    $D7     
       LDA    #$03    
       STA    AUDC0   
       LDA    #$07    
       STA    AUDF0   
LFC88: LDA    CXPPMM  
       BMI    LFCD1   
       LDA    #$00    
       STA    $F8     
       LDA    CXP0FB  
       BPL    LFCC1   
       LDA    $9F     
       AND    #$02    
       BEQ    LFCB7   
       LDA    $D7     
       CMP    #$22    
       BCC    LFCB7   
       CMP    #$2D    
       BCS    LFCB7   
       BIT    $8E     
       BMI    LFCB1   
       LDA    $CA     
       AND    #$0F    
       BNE    LFD0E   
       JMP    LFCB7   
LFCB1: LDA    $CC     
       AND    #$F0    
       BNE    LFD0E   
LFCB7: LDA    $D7     
       CMP    #$08    
       BCC    LFD0E   
       CMP    #$47    
       BCS    LFD0E   
LFCC1: LDA    $D7     
       CMP    #$08    
       BCC    LFCCE   
       CMP    #$47    
       BCS    LFCCE   
       JSR    LFAE7   
LFCCE: JMP    LF000   
LFCD1: LDY    #$00    
       LDA    $D7     
       CMP    #$0F    
       BCC    LFD01   
       CMP    #$11    
       BCS    LFCE0   
LFCDD: JMP    LFE06   
LFCE0: INY            
       CMP    #$1A    
       BCC    LFD01   
       CMP    #$1C    
       BCC    LFCDD   
       INY            
       CMP    #$27    
       BCC    LFD01   
       INY            
       CMP    #$34    
       BCC    LFD01   
       CMP    #$36    
       BCC    LFCDD   
       INY            
       CMP    #$3F    
       BCC    LFD01   
       CMP    #$41    
       BCC    LFCDD   
       INY            
LFD01: STY    $F6     
       TYA            
       ASL            
       STA    $F7     
       LDA    #$01    
       STA    $F8     
       JMP    LFD0E   
LFD0E: LDA    #$80    
       STA    $9F     
       LDA    $8E     
       AND    #$FC    
       STA    $8E     
       STA    CXCLR   
       LDA    #$04    
       STA    $A1     
       LDA    #$00    
       STA    $8C     
       JMP    LF000   
LFD25: LDA    $A0     
       CMP    #$0A    
       BNE    LFD2E   
       JMP    LF000   
LFD2E: LDA    $A0     
       BEQ    LFD45   
       LDA    #$FE    
       AND    $E6     
       STA    $E6     
       LDA    #$00    
       STA    $EF     
       LDA    SWCHA   
       AND    #$0C    
       CMP    #$0C    
       BEQ    LFD4C   
LFD45: LDA    $9F     
       SEC            
       SBC    #$20    
       STA    $9F     
LFD4C: JMP    LF000   
LFD4F: LDA    #$29    
LFD51: STA    $D4     
       STA    $8F     
       LDA    $F8     
       BEQ    LFD61   
       LDA    $F7     
       TAY            
       LDA    $8F     
       STA.wy $0090,Y 
LFD61: JMP    LF000   
LFD64: LDA    #$31    
       JMP    LFD51   
LFD69: LDA    #$39    
       JMP    LFD51   
LFD6E: LDA    $AE     
       CMP    #$92    
       BEQ    LFD7C   
       LDA    #$80    
       STA    $E6     
       LDA    #$01    
       STA    $EF     
LFD7C: LDA    $DD     
       CMP    #$01    
       BEQ    LFD4F   
       CMP    #$13    
       BEQ    LFD64   
       CMP    #$27    
       BEQ    LFD69   
       LDA    $A1     
       BEQ    LFD91   
       JMP    LF000   
LFD91: TAY            
LFD92: STA.wy $00C8,Y 
       INY            
       CPY    #$0C    
       BNE    LFD92   
       LDA    #$79    
       STA    $90     
       STA    $92     
       STA    $94     
       STA    $96     
       STA    $98     
       STA    $9A     
       BIT    $8E     
       BPL    LFDB9   
       LDA    #$01    
       STA    $D7     
       LDA    #$66    
       STA    $D6     
       LDA    #$79    
       JMP    LFDC3   
LFDB9: LDA    #$4D    
       STA    $D7     
       LDA    #$33    
       STA    $D6     
       LDA    #$11    
LFDC3: STA    $D4     
       LDY    #$00    
LFDC7: LDA    ($A8),Y 
       STA.wy $0086,Y 
       INY            
       CPY    #$06    
       BNE    LFDC7   
       LDA    $DE     
       CMP    #$A8    
       BEQ    LFDEB   
       CMP    #$A0    
       BEQ    LFDEF   
       LDA    #$00    
       STA    $DE     
       TAY            
LFDE0: STA.wy $00C2,Y 
       INY            
       CPY    #$06    
       BNE    LFDE0   
       JMP    LFDFD   
LFDEB: LDA    #$A0    
       BMI    LFDF1   
LFDEF: LDA    #$80    
LFDF1: STA    $DE     
       LDA    #$0A    
       STA    $A0     
       LDA    #$24    
       STA    $EF     
       LDA    #$80    
LFDFD: STA    $E6     
       LDA    #$40    
       STA    $9F     
       JMP    LF000   
LFE06: LDA.wy $00BC,Y 
       BIT    $8E     
       BPL    LFE18   
       CMP    #$55    
       BCC    LFE23   
       CMP    #$78    
       BCS    LFE23   
       JMP    LFD01   
LFE18: CMP    #$22    
       BCC    LFE23   
       CMP    #$45    
       BCS    LFE23   
       JMP    LFD01   
LFE23: INY            
       JMP    LFD01   
LFE27: .byte $00,$00,$00,$00,$00,$E0
LFE2D: .byte $70,$00,$00,$00,$00,$00
LFE33: .byte $80,$FF,$FF,$70,$FF,$1F
LFE39: .byte $10,$13,$12,$11,$32,$21,$31,$41
LFE41: .byte $FF,$FE,$FD,$03,$02,$01,$FE,$FD,$FC,$04,$03,$02,$FE,$FC,$FA,$06
       .byte $04,$02,$FD,$FB,$F9,$07,$05,$03
LFE59: .byte $08,$0F,$1A,$29,$34,$3F
LFE5F: .byte $11,$1C,$27,$36,$41,$4C
LFE65: LDA    $E6     
       AND    #$01    
       BNE    LFEA7   
       BIT    $E6     
       BPL    LFE92   
       LDA    $EF     
       AND    #$01    
       BNE    LFE99   
       LDA    $EF     
       AND    #$02    
       BNE    LFEA0   
       LDA    #$66    
       LDY    #$FF    
LFE7F: STA    $AE     
       STY    $AF     
       LDY    #$00    
       STY    $E2     
       STY    $E4     
       LDA    $E6     
       ORA    #$01    
       STA    $E6     
       JMP    LFEA7   
LFE92: LDA    #$00    
       STA    AUDV0   
       JMP    LFF01   
LFE99: LDA    #$92    
       LDY    #$FF    
       JMP    LFE7F   
LFEA0: LDA    #$BB    
       LDY    #$FF    
       JMP    LFE7F   
LFEA7: LDY    $E2     
       LDA    $E4     
       BNE    LFEFF   
       LDA    ($AE),Y 
       BNE    LFECE   
       LDA    $E6     
       AND    #$FE    
       STA    $E6     
       LDA    $EF     
       AND    #$F0    
       STA    $EF     
       JMP    LFF01   
LFEC0: LDA    $AF     
       CMP    #$FF    
LFEC4: BEQ    LFEDE   
       JMP    LFED6   
LFEC9: LDA    #$0F    
       JMP    LFEF0   
LFECE: STA    AUDC0   
       LDA    $AE     
       CMP    #$66    
       BEQ    LFEC0   
LFED6: INY            
       LDA    ($AE),Y 
       STA    AUDF0   
       JMP    LFEF2   
LFEDE: LDA    $8C     
       BEQ    LFEC9   
       BPL    LFEE9   
       LDA    #$00    
       SEC            
       SBC    $8C     
LFEE9: STA    $8F     
       LDA    #$0C    
       SEC            
       SBC    $8F     
LFEF0: STA    AUDF0   
LFEF2: INY            
       LDA    ($AE),Y 
       STA    AUDV0   
       INY            
       LDA    ($AE),Y 
       STA    $E4     
       INY            
       STY    $E2     
LFEFF: DEC    $E4     
LFF01: LDA    $E6     
       AND    #$02    
       BNE    LFF34   
       BIT    $E6     
       BPL    LFF26   
       BIT    $9F     
       BMI    LFF2D   
       LDA    #$69    
       LDY    #$FF    
       STA    $DB     
       STY    $DC     
       LDY    #$00    
       STY    $E3     
       STY    $E5     
       LDA    $E6     
       ORA    #$02    
       STA    $E6     
       JMP    LFF34   
LFF26: LDA    #$00    
       STA    AUDV1   
       JMP    LF686   
LFF2D: LDA    #$00    
       STA    AUDV1   
       JMP    LF686   
LFF34: LDY    $E3     
       LDA    $E5     
       BNE    LFF61   
       LDA    ($DB),Y 
       BNE    LFF4D   
       LDA    $E6     
       AND    #$FD    
       STA    $E6     
       LDA    $EF     
       AND    #$0F    
       STA    $EF     
       JMP    LF686   
LFF4D: STA    AUDC1   
       INY            
       LDA    ($DB),Y 
       STA    AUDF1   
       INY            
       LDA    ($DB),Y 
       STA    AUDV1   
       INY            
       LDA    ($DB),Y 
       STA    $E5     
       INY            
       STY    $E3     
LFF61: DEC    $E5     
       JMP    LF686   
LFF66: .byte $02,$09,$02,$02,$08,$0C,$8F,$02,$02,$06,$70,$01,$26,$06,$16,$02
       .byte $0A,$0C,$FF,$01,$26,$05,$10,$02,$04,$06,$70,$02,$06,$07,$FF,$01
       .byte $23,$08,$20,$01,$23,$00,$20,$01,$23,$08,$10,$00,$08,$5F,$0A,$20
       .byte $08,$5D,$0B,$20,$08,$5B,$0C,$20,$08,$59,$0B,$20,$08,$57,$0A,$20
       .byte $08,$55,$09,$20,$08,$53,$08,$20,$08,$51,$07,$20,$08,$50,$06,$20
       .byte $08,$50,$04,$20,$00,$03,$01,$0A,$01,$03,$03,$0A,$01,$00,$D4,$A0
       .byte $A0,$A0,$A0,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$A0,$A0,$C6,$A0
       .byte $D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$A0,$A0,$C6,$A0,$D4,$A0,$AD,$A0
       .byte $D3,$A0,$A0,$A0,$AD,$A0,$D3,$A0,$A0,$A0,$AD,$A0,$D3,$AD,$A0,$A0
       .byte $AD,$A0,$D3,$AD,$A0,$A0,$C1,$F5,$E0,$88
