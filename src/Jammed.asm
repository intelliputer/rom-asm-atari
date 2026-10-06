; Disassembly of roms/Jammed.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Jammed.bin
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
CTRLPF  =  $0A
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
CXP1FB  =  $33
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF010   =   $F010
LF040   =   $F040
LF08D   =   $F08D
LF102   =   $F102
LF1CB   =   $F1CB
LF362   =   $F362
LF39A   =   $F39A
LF3D8   =   $F3D8
LF542   =   $F542
LF59E   =   $F59E
LF5D1   =   $F5D1
LF664   =   $F664
LF674   =   $F674
LF686   =   $F686
LF68C   =   $F68C
LF6B8   =   $F6B8

       ORG $F000
LF000: DEC    $88     
       BPL    LF02F   
LF004: LDA    #$C0    
       EOR    INTIM   
       BNE    LF004   
       STA    WSYNC   
       STA    HMOVE   
       STA    PF1     
       LDA    $BE     
       AND    #$38    
       LSR            
       LSR            
       LSR            
       ADC    #$10    
       STA    $DB     
       LDX    #$03    
LF01E: DEX            
       BNE    LF01E   
       STX    COLUP0  
       STX    COLUP1  
       LDA    #$FC    
       STA    PF2     
       LDA    $88     
       BNE    LF000   
       STX    VBLANK  
LF02F: LDY    #$09    
LF031: LDA    ($DD),Y 
       STA    ENABL   
       LDA    ($DB),Y 
       STA    COLUPF  
       BIT    $80     
       LDA    ($D1),Y 
       STA    GRP0    
       LDA    ($D3),Y 
       STA    GRP1    
       LDA    #$FF    
       STA    GRP0    
       .byte $B3 ;.LAX
       CMP    $B39A,Y 
       CMP    $B1,X   
       .byte $D7 ;.DCP
       STX    GRP1    
       STA    GRP0    
       TSX            
       STX    GRP1    
       STY    GRP0    
       DEY            
       BNE    LF031   
       STY    PF2     
       STY    GRP1    
       STY    GRP0    
       STY    VDELP1  
       STY    VDELP0  
       STY    NUSIZ0  
       LDA    #$0E    
       STA    COLUPF  
       LDX    #$FD    
       TXS            
       LDA    $87     
       CLC            
       ADC    $8D     
       JSR    LF119   
       STA    WSYNC   
       STA    HMP1    
       LDA    $8A     
       ASL            
       ASL            
       ASL            
       ASL            
LF07F: DEY            
       BPL    LF07F   
       STA.w  $0011   
       STA    WSYNC   
       ADC    #$27    
       ADC    $8C     
       JSR    LF119   
       STA    WSYNC   
       STA    HMP0    
       LDA    #$07    
       STA    NUSIZ1  
       LDA    $85     
       STA    COLUP0  
LF09A: DEY            
       BPL    LF09A   
       STA.w  $0010   
LF0A0: STA    WSYNC   
       STA    HMOVE   
       LDA    #$1E    
       BIT    SWCHB   
LF0A9: BPL    LF0AD   
       LDA    #$5C    
LF0AD: STA    COLUP1  
       LDX    #$06    
LF0B1: DEX            
       BPL    LF0B1   
       JSR    LF0FF   
       JSR    LF102   
       LDY    #$0C    
       TYA            
       LDX    #$0B    
LF0BF: NOP            
       SEC            
LF0C1: SBC    $86     
       ADC    #$0C    
       BCC    LF0D7   
       LDA    ($82),Y 
       BIT    $80     
LF0CB: BIT    $80     
       STA    GRP0    
       CPX    #$07    
       BEQ    LF0DC   
       LDA    #$00    
       BEQ    LF0DF   
LF0D7: LDA    #$00    
       NOP            
       BCC    LF0CB   
LF0DC: LDA    LFF9F,Y 
LF0DF: STA    GRP1    
       INY            
       LDA    $91,X   
       STA    PF1     
       LDA    $9C,X   
       STA    PF2     
       LDA    $B2,X   
LF0EC: STA    PF1     
       LDA    $A7,X   
       STA    PF2     
       TYA            
       CMP    LFF93,X 
       BCC    LF0BF   
       DEX            
       BNE    LF0C1   
       JSR    LF102   
       DEX            
LF0FF: LDA    #$3F    
       BIT    $20A9   
       LDY    #$07    
       STX    PF2     
LF108: STA    WSYNC   
       STA    PF1     
       LDX    #$06    
LF10E: DEX            
LF10F: BNE    LF10E   
       LSR            
       STA    PF1     
       ROL            
       DEY            
       BNE    LF108   
       RTS            

LF119: TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $80     
       TYA            
       AND    #$0F    
       CLC            
       ADC    $80     
       LDY    $80     
       CMP    #$0F    
       BCC    LF12F   
       SBC    #$0F    
       INY            
LF12F: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LF136: LDX    #$02    
       STA    WSYNC   
       STX    VSYNC   
       DEC    $BE     
       LDA    $8B     
       ASL            
       CLC            
       LDY    $89     
       ADC    LFFDD,Y 
       STA    $86     
       LDA    #$55    
       BIT    $8F     
       BPL    LF151   
       LDA    #$50    
LF151: STA    $DD     
       LDY    $BF     
       LDA    LFF5F,Y 
       STA    $D5     
       LDA    $C0     
       LDX    #$06    
       JSR    LF36A   
       STA    WSYNC   
       LDX    #$01    
       LDA    #$03    
LF167: STA    NUSIZ0,X
       STA    VDELP0,X
       DEX            
       BPL    LF167   
       LDA    #$E0    
       LDY    #$B0    
       STA    RESBL   
       STA    RESP0   
       STA    RESP1   
       STY    HMBL    
       STA    HMP0    
       STX    HMP1    
       LDX    #$E1    
       BIT    SWCHB   
       BPL    LF187   
       LDX    #$FC    
LF187: STA    WSYNC   
       STA    VSYNC   
       STX    TIM64T  
       LDA    SWCHB   
       AND    #$FC    
       EOR    $8E     
       AND    #$FC    
       EOR    SWCHB   
       TAX            
       LDA    $8E     
       EOR    #$03    
       ORA    SWCHB   
       STX    $8E     
       LSR            
       BCC    LF1D8   
       LSR            
       BCS    LF218   
       BIT    INPT4   
       BPL    LF1BE   
       LDY    $BF     
       INY            
       CPY    #$06    
       BCC    LF1B7   
       LDY    #$00    
LF1B7: STY    $BF     
LF1B9: JSR    LF517   
       BMI    LF1DB   
LF1BE: LDA    $BE     
       AND    #$3F    
       TAX            
       LSR            
       LSR            
       LSR            
       ADC    #$05    
       STA    $88     
       BIT.w  $00A2   
       STX    $81     
LF1CF: JSR    LF50E   
       DEC    $81     
       BPL    LF1CF   
       BMI    LF1DB   
LF1D8: JSR    LF503   
LF1DB: JSR    LF429   
       PLA            
       PLA            
LF1E0: LDA    INTIM   
       BNE    LF1E0   
       LDX    #$2A    
LF1E7: STA    WSYNC   
       DEX            
       BNE    LF1E7   
       BEQ    LF213   

START:
       SEI            
       CLD            
       LDX    #$00    
       TXS            
       PHA            
       TXA            
LF1F5: PHA            
       DEX            
       BNE    LF1F5   
       LDA    #$21    
       STA    CTRLPF  
       LDA    #$0C    
       STA    AUDC0   
       LDX    #$0E    
       LDA    #$FF    
LF205: DEX            
       STA    $D1,X   
       BNE    LF205   
       JSR    LF1B9   
LF20D: JSR    LF136   
LF210: JSR    LF004   
LF213: JSR    LF3EB   
       BMI    LF20D   
LF218: TXA            
       BPL    LF220   
       JSR    LF37F   
       BCS    LF1CB   
LF220: LDX    $8D     
       BEQ    LF262   
       LDA    $87     
       CMP    #$83    
       BNE    LF25F   
       LDA    #$88    
       STA    $8E     
       LDA    #$05    
       STA    $8A     
       LDA    #$03    
       STA    $89     
       STA    $86     
       INX            
       BNE    LF25F   
       JSR    LF38F   
       LDX    #$17    
       LDA    $C1     
       BNE    LF259   
       LDX    #$14    
       BNE    LF259   
LF248: JSR    LF37F   
       BCC    LF25F   
       LDX    $85     
       LDA    $C3,X   
       AND    #$40    
       LDX    #$02    
       ASL            
       BPL    LF259   
       INX            
LF259: STX    $91     
       LDA    #$FF    
       STA    $90     
LF25F: JMP    LF2DE   
LF262: LDA    $8C     
       ORA    $8B     
       BNE    LF25F   
       LDX    $8A     
       LDA    $89     
       JSR    LF3A6   
       BNE    LF25F   
       STX    $85     
       LDA    $C3,X   
       ASL            
       LDX    #$00    
       BCC    LF27B   
       INX            
LF27B: LDA    #$01    
       DEY            
       BMI    LF282   
       LDA    #$FF    
LF282: ROL            
       STA    $80     
       ROR            
       CLC            
       ADC    $82,X   
       CMP    #$06    
       BCS    LF248   
       STA    $82,X   
       LDX    $85     
       JSR    LF3AA   
       BEQ    LF248   
       JSR    LF37F   
       BCC    LF2EB   
       LDX    $85     
       CPX    $84     
       BEQ    LF2A6   
       STX    $84     
       JSR    LF38F   
LF2A6: JSR    LF4B8   
       LDX    $84     
       LDA    $80     
       CMP    #$80    
       ROR            
       BCC    LF2B6   
       ASL            
       ASL            
       ASL            
       CLC            
LF2B6: ADC    $C3,X   
       STA    $C3,X   
       JSR    LF4B8   
       BIT    SWCHB   
       BVS    LF2DE   
       LDA    $80     
       CMP    #$80    
       ROR            
       TAY            
       LDX    #$01    
       BCC    LF2CE   
       DEX            
       CLC            
LF2CE: ADC    $89,X   
       STA    $89,X   
       LDX    $84     
       BNE    LF2DE   
       INY            
       LDA    LFF86,Y 
       STA    $8D     
       STA    $8C     
LF2DE: LDA    #$D7    
       LDX    #$48    
       BIT    SWCHB   
       BPL    LF2E9   
       LDX    #$68    
LF2E9: BNE    LF2FB   
LF2EB: LDY    $80     
       INY            
       INY            
       LDA    LFFD7,Y 
       LDX    #$88    
       BIT    SWCHB   
       BPL    LF2FB   
       LDX    #$D8    
LF2FB: STX    $85     
       SEC            
       SBC    $86     
       STA    $82     
       LDA    #$FF    
       STA    $83     
       LDY    $91     
       BEQ    LF32C   
       LDX    $90     
       DEX            
       BEQ    LF31D   
       BPL    LF32A   
       DEY            
       LDA    LFEF9,Y 
       STA    AUDF0   
       ORA    $90     
       BMI    LF321   
       LDY    #$00    
LF31D: LDA    #$00    
       BEQ    LF326   
LF321: LDA    #$0F    
       LDX    LFEE3,Y 
LF326: STY    $91     
       STA    AUDV0   
LF32A: STX    $90     
LF32C: BIT    $8E     
       BMI    LF358   
       LDX    #$01    
       LDY    #$00    
       LDA    SWCHA   
LF337: ASL            
       PHA            
       LDA    $8B,X   
       ROL            
LF33C: BNE    LF34F   
       LDA    $89,X   
       CMP    LFF8C,Y 
       BEQ    LF34F   
       ADC    LFF90,Y 
       STA    $89,X   
       LDA    LFF88,Y 
       STA    $8B,X   
LF34F: TYA            
       LSR            
       INY            
       PLA            
       BCC    LF337   
       DEX            
       BPL    LF337   
LF358: LDX    #$03    
LF35A: LDY    $8A,X   
       BEQ    LF365   
       BPL    LF362   
       INY            
       BIT    $88     
       STY    $8A,X   
LF365: DEX            
       BNE    LF35A   
       LDA    $C1     
LF36A: PHA            
       AND    #$0F    
       TAY            
       LDA    LFF5F,Y 
       STA    $D3,X   
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF5F,Y 
       STA    $D1,X   
       RTS            

LF37F: CLC            
       LDA    $8E     
       AND    #$F7    
       BIT    INPT4   
       BMI    LF38C   
       CMP    $8E     
       ORA    #$08    
LF38C: STA    $8E     
       RTS            

LF38F: LDA    $C1     
       BMI    LF3A5   
       SED            
       CLC            
       ADC    #$01    
       BIT    $8F     
       BMI    LF39D   
       ADC    #$98    
LF39D: STA    $C1     
       CLD            
       TAY            
       BNE    LF3A5   
       ROR    $8F     
LF3A5: RTS            

LF3A6: STX    $82     
       STA    $83     
LF3AA: LDX    $C2     
LF3AC: LDA    $C3,X   
       LDY    #$01    
       ASL            
       BPL    LF3B4   
       INY            
LF3B4: ROR            
       BMI    LF3CF   
       AND    #$38    
       LSR            
       LSR            
       LSR            
       EOR    $83     
       BNE    LF3E5   
       LDA    $C3,X   
       AND    #$07    
LF3C4: CMP    $82     
       BCS    LF3E5   
       ADC    #$01    
       DEY            
       BPL    LF3C4   
       BMI    LF3E5   
LF3CF: AND    #$07    
       EOR    $82     
       BNE    LF3E5   
       LDA    $C3,X   
       AND    #$38    
       LSR            
       LSR            
       LSR            
LF3DC: CMP    $83     
       BCS    LF3E5   
       ADC    #$01    
       DEY            
       BPL    LF3DC   
LF3E5: BEQ    LF3EA   
       DEX            
       BPL    LF3AC   
LF3EA: RTS            

LF3EB: LDY    #$02    
       STA    WSYNC   
       STY    VBLANK  
       LDA    #$28    
       BIT    SWCHB   
       BPL    LF3FA   
       LDA    #$32    
LF3FA: STA    TIM64T  
       BIT    $8E     
       BMI    LF423   
       LDA    $C3     
       AND    #$07    
       TAX            
       INX            
LF407: LDA    #$03    
       INX            
       JSR    LF3A6   
       BEQ    LF423   
       LDX    $82     
       CPX    #$05    
       BNE    LF407   
       LDA    #$83    
       STA    $87     
       LDA    $C3     
       ASL            
       ASL            
       ASL            
       ASL            
       SBC    #$E4    
       STA    $8D     
LF423: LDA    INTIM   
       BPL    LF423   
       RTS            

LF429: LDY    $BF     
       LDX    LF686,Y 
       SED            
       LDA    LF68C,Y 
       CLC            
LF433: ADC    #$00    
       TAY            
       LDA    $C0     
       CMP    LF692,X 
       INX            
       TYA            
       BCS    LF433   
       STY    $C1     
       CLD            
       LDA    #$FF    
       STA    $C2     
       LDX    #$02    
LF448: STX    $9F     
       LDY    $A0,X   
       BEQ    LF45C   
       JSR    LF493   
       CPY    #$0A    
       BCC    LF45C   
       TYA            
       ADC    #$0B    
       TAY            
       JSR    LF493   
LF45C: LDY    $9F     
       LDX    LF5C6,Y 
       BPL    LF448   
       LDX    #$0A    
LF465: LDA    #$20    
       STA    $92,X   
       LSR            
       STA    $B3,X   
       LDA    #$00    
       STA    $9D,X   
       STA    $A8,X   
       DEX            
       BPL    LF465   
       STA    $B8     
       STA    $B9     
       STA    $BA     
       LDX    #$06    
LF47D: STA    $89,X   
       DEX            
       BPL    LF47D   
       STX    $84     
       LDX    $C2     
LF486: STX    $80     
       JSR    LF4B8   
       LDX    $80     
       DEX            
       BPL    LF486   
       JMP    LF37F   
LF493: LDA    $9F     
       SEC            
       SBC    #$06    
       TAX            
       LDA    LF658,Y 
       BCC    LF4A5   
       AND    #$F8    
       STA    $80     
       TXA            
       BCS    LF4AF   
LF4A5: AND    #$47    
       STA    $80     
       TXA            
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
LF4AF: ORA    $80     
       INC    $C2     
       LDX    $C2     
       STA    $C3,X   
       RTS            

LF4B8: LDA    $C3,X   
       AND    #$07    
       DEX            
       BMI    LF4FA   
       TAY            
       LDA    $C4,X   
       STA    $81     
       AND    #$38    
       LSR            
       LSR            
       ADC    LFF69,Y 
       TAX            
       BIT    $81     
       BMI    LF4E5   
       BVC    LF4D6   
       TYA            
       ADC    #$05    
       TAY            
LF4D6: LDA    LFF6F,Y 
       EOR    $92,X   
       STA    $92,X   
       LDA    LFF7D,Y 
       EOR    $9D,X   
       STA    $9D,X   
       RTS            

LF4E5: LDA    #$03    
       BVC    LF4EB   
       LDA    #$05    
LF4EB: STA    $81     
LF4ED: LDA    LFF78,Y 
       EOR    $92,X   
       STA    $92,X   
       INX            
       DEC    $81     
       BNE    LF4ED   
       RTS            

LF4FA: ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$1F    
       STA    $87     
       RTS            

LF503: LDX    #$03    
LF505: LDA    $E3,X   
       STA    $DF,X   
       DEX            
       BPL    LF505   
       BMI    LF52C   
LF50E: LDA    $C0     
       CLC            
       SED            
       ADC    #$01    
       CLD            
       BCC    LF52A   
LF517: LDY    $BF     
       LDA    LF67A,Y 
       STA    $DF     
       LDA    LF680,Y 
       STA    $E0     
       LDA    #$80    
       STA    $E2     
       ASL            
       STA    $E1     
LF52A: STA    $C0     
LF52C: LDX    #$04    
LF52E: LDA    $DE,X   
       STA    $E2,X   
       DEX            
       BNE    LF52E   
       TXA            
       LDX    #$0C    
LF538: DEX            
       STA    $92,X   
       BNE    LF538   
       LDX    #$21    
       LDY    #$02    
       BIT.w  $00A2   
       STY    $9F     
       LDA.wy $0092,Y 
       STA    $9E     
       BEQ    LF566   
       LDY    #$15    
LF54F: LDA    LF643,Y 
       AND    $9E     
       BNE    LF557   
       INX            
LF557: DEY            
       BNE    LF54F   
       TXA            
       BEQ    LF589   
LF55D: INY            
       EOR    LF5D1,Y 
       BNE    LF55D   
       LDX    LF5D6,Y 
LF566: ASL    $E2     
       BEQ    LF5B5   
LF56A: ROL            
       INX            
       SEC            
       SBC    LF5DC,X 
       BCS    LF566   
LF572: ADC    LF5DC,X 
       DEX            
       TAY            
       BPL    LF572   
       LDX    LF587,Y 
       LDY    #$FF    
LF57E: INY            
       LDA    LF643,Y 
       AND    $9E     
       BNE    LF57E   
       DEX            
LF587: BPL    LF57E   
LF589: LDX    $9F     
       TYA            
       STA    $A0,X   
       BEQ    LF5AF   
       LDA    LF643,Y 
       LDY    LF601,X 
       BMI    LF59E   
       LDY    LF5FB,X 
       LDX    #$06    
       BIT    $0CA2   
LF5A0: DEX            
       LSR            
       BCC    LF5A0   
       PHA            
       TYA            
       ORA    $92,X   
       STA    $92,X   
       PLA            
       BNE    LF5A0   
       LDX    $9F     
LF5AF: LDY    LF5C6,X 
       BPL    LF542   
       RTS            

LF5B5: PHA            
       LDY    $E1     
       LDA    ($DF),Y 
       ROL            
       STA    $E2     
       PLA            
       INC    $E1     
       BNE    LF56A   
       INC    $E0     
       BNE    LF56A   
LF5C6: ASL    COLUP1  
       PHP            
       ORA    #$0A    
       .byte $0B ;.ANC
       .byte $04 ;.NOP
       .byte $FF ;.ISB
       ORA    VSYNC   
       ORA    ($03,X) 
       ORA    ($02,X) 
       ORA    VBLANK  
LF5D6: .byte $0B ;.ANC
       .byte $1F ;.SLO
       .byte $1B ;.SLO
       ORA    PF2,X   
       PHP            
LF5DC: .byte $7F ;.RRA
       BRK            
       ORA    ($01,X) 
       .byte $07 ;.SLO
       .byte $02 ;.JAM
       ORA    COLUP0  
       STA    VSYNC,X 
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       ORA    ($04,X) 
       .byte $04 ;.NOP
       LDX    #$00    
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       ORA    ($02,X) 
       TAX            
       ORA    ($01,X) 
       ORA    ($00,X) 
       .byte $04 ;.NOP
       LDA    ($01),Y 
       ORA    ($02,X) 
LF5FB: LDA    WSYNC,X 
       .byte $B7 ;.LAX
       ORA    ($01,X) 
       .byte $02 ;.JAM
LF601: LDY    #$90    
       DEY            
       STY    $82     
       STA    ($00,X) 
       ASL            
       .byte $02 ;.JAM
       ORA    COLUP0  
       .byte $07 ;.SLO
       ORA    #$0B    
       .byte $0C ;.NOP
       .byte $04 ;.NOP
       PHP            
       ORA    ($03,X) 
       ORA    $110F   
       ASL    $1210   
       .byte $13 ;.SLO
       .byte $14 ;.NOP
       ORA    COLUP0,X
       PHP            
       ORA    COLUP1  
       .byte $04 ;.NOP
       BRK            
       .byte $03 ;.SLO
       ORA    #$0B    
       ORA    ($02,X) 
       ASL            
       .byte $0C ;.NOP
       ORA    ($04,X) 
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       ASL    NUSIZ1  
       BRK            
       .byte $07 ;.SLO
       .byte $04 ;.NOP
       ORA    RSYNC   
       BRK            
       ORA    ($02,X) 
       ASL    WSYNC   
       ORA    ($00,X) 
       .byte $03 ;.SLO
       BRK            
       ORA    ($01,X) 
       ORA    #$04    
       .byte $03 ;.SLO
LF643: BRK            
       BMI    LF649   
       ASL    AUDF1   
       SEC            
LF649: .byte $07 ;.SLO
       .byte $1C ;.NOP
       ASL    $0F0C   
       ASL    $333C,X 
       ROL    GRP0,X  
       ROL    $3E1F,X 
       .byte $1F ;.SLO
       .byte $3B ;.RLA
LF658: .byte $37 ;.RLA
       LDY    #$84    
       .byte $8B ;.ANE
       STA    $C3D8,Y 
       CMP    ($CA),Y 
       .byte $92 ;.JAM
       .byte $92 ;.JAM
       STA    $A0A0,Y 
       LDY    #$99    
       LDY    #$99    
       CLD            
       CMP    ($D8),Y 
       LDY    #$84    
       .byte $8B ;.ANE
       .byte $92 ;.JAM
       STY    $8B     
       STY    $CA     
       .byte $C3 ;.DCP
       .byte $8B ;.ANE
       STY    $84     
       .byte $C3 ;.DCP
LF67A: BCS    LF664   
       .byte $22 ;.JAM
       .byte $67 ;.RRA
       .byte $B7 ;.LAX
       .byte $2F ;.RLA
LF680: INC    $F7,X   
       SBC    LFBFA,Y 
       SBC    $0B00,X 
       .byte $0B ;.ANC
       .byte $0B ;.ANC
       .byte $0B ;.ANC
       BPL    LF694   
       CLC            
       .byte $23 ;.RLA
       PLP            
       .byte $33 ;.RLA
       SEC            
LF692: ORA    RESP0   
LF694: ASL    HMM1,X  
       AND    ($40),Y 
       BVC    LF6FB   
       .byte $73 ;.RRA
       STX    $FF     
       JSR    $6040   
       .byte $80 ;.NOP
       .byte $FF ;.ISB
       ORA    $4937,Y 
       .byte $63 ;.RRA
       ADC    $81,X   
       STX    $90     
       .byte $93 ;.SHA
       STX    $97,Y   
       TYA            
       STA    $50FF,Y 
       PLA            
       .byte $14 ;.NOP
       CLI            
       .byte $13 ;.SLO
       LDY    $80,X   
       DEC.wx $0041,X 
       ORA    ($5D,X) 
       .byte $D7 ;.DCP
       STA    ($50,X) 
       ORA    $90EC,X 
       BVS    LF724   
       .byte $04 ;.NOP
       STY    $DA,X   
       TXA            
       .byte $03 ;.SLO
       ORA    $16EE   
       CLC            
       BIT    HMP0    
       CPY    $408D   
       ORA    $99     
       RTS            

LF6D5: .byte $B6,$B4,$87,$01,$45,$6F,$13,$41,$80,$0C,$5E,$50,$C1,$A0,$83,$14
       .byte $40,$19,$00,$27,$41,$14,$81,$0C,$B6
LF6EE: .byte $0B,$10,$03,$D5,$57,$60,$C1,$20,$91,$96,$40,$15,$2A
LF6FB: .byte $D3 ;.DCP
       BRK            
       .byte $2F ;.RLA
       BEQ    LF718   
       BEQ    LF6B8   
       ORA    $DDA2   
       CLC            
       ORA    ($C7,X) 
       PLA            
       AND    ($06,X) 
       .byte $BB ;.LAS
       PHP            
       ROL    $CC     
       CLC            
       ORA    $C0B1,X 
       .byte $22 ;.JAM
       .byte $07 ;.SLO
       LSR    $C0     
       .byte $22 ;.JAM
LF718: RTS            

LF719: .byte $72,$29,$E4,$4D,$2C,$40,$AA,$EB,$82,$4C,$8D
LF724: STX    $C2,Y   
       .byte $0F ;.SLO
       EOR    CXP1FB,X
       .byte $80 ;.NOP
       JSR    $0AA0   
       ROL    $6674,X 
       BNE    LF73C   
       .byte $93 ;.SHA
       .byte $C2 ;.NOP
       ASL    RSYNC,X 
       EOR    $4010,Y 
       .byte $02 ;.JAM
       .byte $34 ;.NOP
       .byte $02 ;.JAM
LF73C: .byte $02 ;.JAM
       ASL            
       .byte $02 ;.JAM
       CLC            
       RTI            

LF741: .byte $32,$C8,$A6,$02,$01,$E0,$32,$22,$6C,$11,$4C,$8C,$98,$00,$CC,$0D
       .byte $A8,$D4,$02,$D4,$50,$08,$37,$12,$0C,$91,$34,$48,$03,$09,$08,$31
       .byte $A8,$86,$1A,$A0,$31,$DB,$06,$10,$91,$AA,$23,$00,$2A,$A0,$51,$3A
       .byte $51,$83,$50,$64,$68,$8B,$05,$C0,$00,$B4,$01,$9E,$E0,$B0,$24,$32
       .byte $75,$84,$12,$92,$54,$D0,$70,$A5,$40,$0F,$63,$50,$01,$5E,$82,$0D
       .byte $07,$95,$80,$3E,$49,$21,$A0,$39,$00,$01,$86,$02,$6D,$A8,$16,$20
       .byte $AD,$9C,$00,$A2,$10,$B5,$45,$70,$CC,$A8,$32,$DB,$31,$A1,$20,$85
       .byte $05,$C0,$D9,$82,$58,$98,$C0,$01,$4C,$D4,$1A,$03,$49,$00,$61,$81
       .byte $75,$47,$BB,$0F,$09,$20,$F5,$C2,$A0,$11,$44,$B8,$62,$60,$A3,$81
       .byte $46,$31,$2E,$15,$4D,$10,$00,$54,$B5,$08,$A9,$84,$0E,$2C,$74,$12
       .byte $53,$06,$2C,$09,$10,$A4,$80,$92,$41,$86,$06,$D4,$30,$80,$93,$91
       .byte $88,$61,$53,$06,$08,$60,$30,$44,$5D,$08,$40,$2C,$AA,$C4,$28,$84
       .byte $56,$28,$50,$44,$A8,$00,$9B,$42,$0D,$82,$02,$82,$E3,$1A,$C3,$0E
       .byte $82,$2B,$D2,$E4,$12,$6A,$2D,$A8,$C4,$88,$19,$20,$44,$CA,$05,$C4
       .byte $D8,$80,$28,$FA,$C2,$08,$7E,$94,$74,$41,$84,$24,$65,$23,$A0,$99
       .byte $50,$2A,$4C,$D0,$19,$12,$D8,$20,$A8,$BA,$83,$62,$6C,$A8,$50,$F2
       .byte $90,$75,$50,$C6,$8A,$42,$01,$81,$51,$FC,$55,$18,$2B,$DA,$81,$91
       .byte $A9,$65,$C8,$86,$49,$83,$E9,$85,$0A,$61,$17,$50,$08,$56,$94,$5D
       .byte $67,$95,$87,$44,$D8,$14,$60,$22,$96,$02,$61,$46,$42,$61,$64,$FC
       .byte $23,$62,$FB,$19,$57,$80,$56,$CD,$00,$80,$18,$35,$04,$0B,$87,$48
       .byte $20,$94,$6B,$1A,$05,$0D,$12,$A0,$67,$C2,$20,$33,$4C,$22,$6A,$64
       .byte $01,$42,$30,$3D,$54,$D8,$88,$34,$16,$23,$99,$A0,$9E,$32,$00,$F4
       .byte $25,$92,$86,$11,$71,$54,$03,$28,$53,$0C,$6B,$84,$24,$25,$80,$A1
       .byte $74,$3C,$3C,$13,$05,$B9,$C6,$5E,$80,$62,$C8,$B0,$42,$84,$98,$A3
       .byte $06,$12,$BB,$58,$01,$16,$45,$22,$16,$67,$AA,$19,$A2,$CA,$59,$41
       .byte $60,$29,$85,$D0,$62,$CE,$45,$06,$98,$42,$15,$60,$0B,$6B,$A9,$43
       .byte $E2,$62,$AE,$08,$05,$20,$82,$AC,$E5,$02,$24,$41,$68,$4B,$2C,$49
       .byte $24,$50,$E4,$38,$22,$CA,$49,$03,$9D,$6B,$01,$99,$49,$88,$0C,$40
       .byte $4A,$6E,$5A,$06,$A8,$46,$B6,$08,$82,$70,$80,$4A,$51,$22,$09,$9B
       .byte $94,$11,$16,$03,$6C,$19,$96,$0D,$9F,$58,$88,$D3,$84,$2A,$44,$39
       .byte $B0,$92,$40,$E6,$29,$C8,$14,$54,$88,$4C,$42,$1A,$C4,$4B,$2E,$92
       .byte $14,$58,$56,$68,$24,$04
LF937: .byte $71,$44,$20,$75,$6D,$F8,$22,$18,$5D,$06,$C6,$F2,$00,$91,$11,$B7
       .byte $08,$28,$87,$4D,$6C,$E5,$16,$74,$70,$48,$45,$87,$28,$BC,$96,$42
       .byte $CC,$C1,$C8,$2C,$F2,$20,$19,$71,$72,$0A,$8B,$B9,$18,$30,$D5,$28
       .byte $3A,$03,$D8,$8F,$16,$EB,$75,$22,$58,$9C,$0E,$95,$7A,$9A,$04,$A2
       .byte $47,$6D,$53,$51,$25,$02,$51,$73,$40,$D5,$8D,$F6,$3C,$C0,$5D,$46
       .byte $33,$20,$BD,$9B,$D8,$93,$DA,$C4,$84,$8E,$CB,$43,$E9,$E6,$44,$94
       .byte $12,$51,$31,$66,$21,$2B,$68,$36,$A8,$63,$02,$E2,$2B,$58,$78,$BB
       .byte $3C,$01,$31,$00,$44,$18,$A5,$8F,$AA,$39,$88,$61,$E1,$CA,$13,$89
       .byte $40,$C6,$0A,$70,$EC,$E1,$64,$5A,$EF,$4A,$46,$6A,$C1,$42,$96,$67
       .byte $3E,$8A,$B8,$33,$CB,$01,$82,$EC,$3D,$BB,$28,$0C,$21,$21,$D3,$17
       .byte $C3,$42,$9E,$D0,$DD,$60,$13,$16,$62,$F7,$10,$36,$27,$10,$34,$08
       .byte $65,$B2,$48,$9E,$4A,$A9,$E1,$0F,$49,$4C,$0E,$95,$04,$C4,$9A,$47
       .byte $A0,$9D,$54,$D0,$D3,$54,$64,$51,$28,$43,$43,$C7,$66,$09,$63,$53
       .byte $20,$56,$9A,$31,$A5,$55,$9E,$86,$BD,$F6,$4C,$05,$26,$E0,$2B,$16
       .byte $32,$2B,$8D,$04,$B4,$7C,$F6,$EE,$70,$14,$D7,$20,$86,$AD,$87,$89
       .byte $BA,$44,$8A,$AF,$61,$00,$28,$5D,$91,$A8,$B7,$26,$10,$64,$45,$2D
       .byte $AE,$04,$43,$58,$84,$0B,$A2,$F1,$A3,$B0,$34,$30,$9B,$4C,$52,$11
       .byte $74,$E4,$03,$42,$88,$54,$49,$1C,$12,$84,$CC,$C3,$3C,$B3,$06,$19
       .byte $73,$CE,$C3,$76,$49,$C6,$14,$74,$60,$A2,$39,$2F,$CD,$03,$22,$8D
       .byte $D8,$CE,$D2,$35,$98,$82,$C7,$52,$04,$57,$48,$B5,$0A,$1D,$83,$CA
       .byte $71,$28,$D1,$A0,$6B,$22,$6E,$25,$72,$D5,$4B,$C5,$19,$39,$CE,$CB
       .byte $61,$C6,$5A,$7A,$38,$A8,$A4,$92,$3D,$36,$65,$58,$D4,$5D,$82,$4F
       .byte $72,$52,$A4,$24,$AD,$ED,$DC,$E1,$53,$0F,$E7,$08,$A5,$54,$8D,$A0
       .byte $5C,$D6,$89,$71,$0C,$32,$A9,$AC,$94,$92,$41,$35,$51,$48,$4C,$1A
       .byte $43,$6E,$D9,$03,$4B,$44,$96,$C4,$2F,$71,$41,$0A,$F4,$E8,$22,$DB
       .byte $C9,$1A,$68,$C8,$87,$CF,$71,$90,$00,$CB,$81,$94,$C9,$ED,$51,$87
       .byte $65,$85,$B3,$97,$01,$3A,$AA,$25,$3C,$19,$AA,$92,$4D,$C4,$16,$6D
       .byte $FA,$A1,$96,$9F,$C6,$3A,$45,$7A,$AE,$70,$9E,$91,$48,$F5,$70,$43
       .byte $E2,$19,$1E,$D5,$09,$27,$55,$55,$AC,$A1,$37,$09,$32,$CE,$C6,$2C
       .byte $B3,$FA,$22,$9B,$78,$65,$16,$AE,$CA,$36,$7D,$95,$EF,$92,$85,$DB
       .byte $CD,$95,$39,$90,$89,$7B,$EC,$01,$91,$D4,$8F,$13,$DD,$4C,$1E,$37
       .byte $F2,$BC,$05,$AF,$BD,$CD,$05,$2B,$30,$0C,$97,$93,$A4,$28,$86,$2D
       .byte $F7,$12,$D3,$E4,$C4,$15,$29,$59,$E4,$6B,$D7,$44,$07,$68,$C6,$2F
       .byte $FD,$57,$71,$4F,$8D,$5C,$52,$D6,$35,$50,$8C,$A5,$3C,$3A,$7A,$F7
       .byte $A8,$71,$24,$1E,$1D,$6C,$34,$5B,$11,$E3,$26,$C9,$5E,$98,$C2,$3C
       .byte $93,$7F,$2B,$C0,$98,$86,$23,$07,$B2,$80,$C8,$8F,$95,$7C,$90,$23
       .byte $A2,$28,$0B,$F3,$A2,$C2,$A6,$C4,$4B,$5B,$73,$91,$B6,$A3,$98,$1C
       .byte $80,$A2,$0C,$52,$E4,$A0,$72,$1E,$5D,$8B,$DB,$42,$4D,$5B,$02,$4D
       .byte $D4,$2A,$46,$50,$7C,$81,$1D,$28,$09,$71,$24,$ED,$A3,$72,$6E,$21
       .byte $A8,$DA,$72,$18,$DE,$95,$0F,$29,$26,$56,$C3,$E4,$B4,$70,$D0,$8D
       .byte $C8,$89,$5E,$86,$31,$7F,$A5,$DF,$50,$08,$B6,$A7,$99,$8C,$DB,$41
       .byte $BF,$1B,$5C,$94,$13,$D6,$32,$93,$DD,$4C,$1E,$E5,$FD,$E9,$54,$93
       .byte $19,$1B,$19,$69,$ED,$8A,$F1,$FC,$AF,$02,$65,$8F,$4D,$1E,$21,$5B
       .byte $EA,$0D,$C6,$33,$73,$3F,$33,$A0,$F3,$59,$2A,$12,$FC,$53,$B5,$7E
       .byte $16,$B5,$B7
LFBFA: .byte $0D,$A9,$6B,$DA,$FC,$C9,$26,$20,$98,$C4,$B2,$86,$D5,$05,$10,$E9
       .byte $6F,$F7,$B7,$2E,$56,$B6,$AE,$25,$A8,$77,$54,$6F,$DB,$BB,$D9,$34
       .byte $D6,$21,$3F,$25,$4A,$A0,$CA,$1B,$1A,$66,$06,$D5,$F1,$03,$E5,$AD
       .byte $B1,$CC,$97,$20,$2A,$9F,$35,$B6,$2C,$26,$A8,$56,$43,$CD,$A5,$1D
       .byte $87,$36,$3F,$10,$C5,$DE,$98,$5B,$9F,$1C,$FE,$C9,$CB,$5D,$CD,$EB
       .byte $11,$EB,$8D,$CF,$52,$60,$C4,$15,$3D,$5D,$18,$03,$2A,$F9,$30,$F8
       .byte $C2,$AE,$5D,$1C,$65,$09,$EE,$DC,$66,$A8,$2F,$58,$84,$EA,$AD,$12
       .byte $F4,$DA,$39,$5F,$A8,$72,$64,$88,$0F,$A9,$24,$E8,$2A,$5E,$54,$99
       .byte $B6,$DB,$A0,$69,$6E,$D2,$77,$17,$EC,$CC,$6C,$EC,$0A,$D6,$EC,$D6
       .byte $FB,$4F,$8D,$A3,$0F,$C2,$2F,$0D,$E1,$EE,$21,$8C,$3D,$E1,$E6,$82
       .byte $B7,$6C,$63,$34,$04,$A5,$6E,$62,$4F,$D4,$E9,$2B,$D6,$4F,$66,$A3
       .byte $18,$29,$6F,$F5,$7E,$CB,$D5,$39,$A8,$F7,$64,$52,$63,$EB,$C6,$3E
       .byte $E3,$1C,$BD,$0C,$8E,$36,$8D,$5E,$6D,$08,$7B,$ED,$C6,$8F,$27,$6D
       .byte $CF,$2B,$4F,$6A,$E7,$C7,$86,$8C,$93,$F5,$C3,$1E,$F7,$9F,$4B,$BE
       .byte $DF,$6F,$0D,$3F,$0D,$0F,$58,$E0,$97,$20,$77,$87,$88,$B8,$9A,$6B
       .byte $DF,$19,$E8,$F5,$08,$27,$49,$54,$CB,$DF,$50,$86,$35,$24,$9C,$F4
       .byte $A7,$F0,$FF,$47,$BC,$5A,$BC,$31,$F5,$0F,$73,$66,$B3,$86,$19,$B8
       .byte $21,$AF,$9D,$15,$74,$71,$F7,$DE,$F6,$FC,$CA,$CC,$43,$A8,$F9,$26
       .byte $96,$38,$F1,$63,$18,$D4,$75,$70,$37,$CD,$F1,$EF,$35,$1C,$D8,$B6
       .byte $1A,$B8,$AF,$0D,$58,$3E,$A4,$93,$AA,$DE,$FC,$A7,$75,$56,$17,$7A
       .byte $6D,$F6,$9A,$6D,$2A,$55,$C8,$CC,$1E,$D5,$CD,$78,$DB,$7D,$74,$8C
       .byte $53,$F8,$9F,$59,$C6,$45,$3A,$B8,$2B,$59,$22,$8E,$6B,$8E,$57,$FA
       .byte $69,$63,$1D,$A6,$DF,$55,$73,$2E,$F1,$A9,$57,$22,$E7,$34,$DC,$93
       .byte $F5,$CD,$7E,$EC,$BE,$CE,$68,$76,$D5,$2F,$FB,$4F,$E6,$E3,$EB,$86
       .byte $B8,$EB,$BD,$FF,$CA,$68,$70,$F1,$39,$8C,$24,$27,$6D,$CD,$AC,$DD
       .byte $C1,$E1,$97,$19,$7A,$0B,$A3,$77,$A8,$D8,$46,$3A,$EF,$3E,$A3,$EC
       .byte $DF,$BB,$5C,$7C,$DA,$6F,$13,$9B
LFDA2: .byte $71,$26,$A8,$EE,$52,$03,$D8,$E6,$13,$E7,$40,$D3,$AB,$DF,$AA,$B9
       .byte $6E,$4A,$CF,$8D,$7B,$CD,$B2,$95,$27,$23,$99,$BD,$DF,$52,$A6,$FA
       .byte $F7,$B6,$BD,$F9,$77,$D5,$D1,$CE,$81,$10,$C3,$8B,$5A,$B4,$CA,$CD
       .byte $17,$35,$AC,$62,$18,$EF,$0C,$8D,$EA,$B1,$3F,$F5,$19,$7B,$52,$7E
       .byte $AD,$2B,$3D,$49,$EC,$6D,$78,$1D,$79,$55,$1D,$E5,$A9,$FD,$C3,$8F
       .byte $07,$6C,$7C,$5A,$89,$77,$13,$19,$1B,$12,$6A,$D2,$4D,$A8,$E2,$A3
       .byte $93,$AD,$AB,$89,$29,$56,$F9,$D3,$15,$28,$F9,$52,$CE,$47,$BA,$43
       .byte $F0,$F1,$86,$0C,$2A,$D7,$FD,$AE,$E1,$E6,$48,$7F,$6A
LFE1F: .byte $96,$E9,$E9,$49,$F6,$5D,$18,$CD,$A8,$FF,$BA,$FC,$CD,$6F,$7F,$BC
       .byte $9C,$49,$E8,$F7,$69,$D1,$B3,$6F,$2C,$A1,$BD,$ED,$C1,$3A,$47,$5A
       .byte $97,$21,$FB,$27,$2D,$75,$D9,$EF,$1D,$5E,$9B,$7B,$45,$77,$5B,$6E
       .byte $2A,$CF,$F1,$A7,$CD,$A2,$9E,$73,$A9,$97,$33,$1A,$FB,$F3,$5A,$3F
       .byte $E4,$6B,$10,$92,$46,$D3,$8C,$5C,$66,$92,$77,$E8,$72,$19,$F7,$79
       .byte $9B,$F2,$AA,$B5,$F5,$E6,$33,$AD,$6F,$77,$92,$AA,$0B,$F1,$1D,$4A
       .byte $78,$F3,$C9,$D5,$3D,$CA,$89,$14,$27,$2F,$DE,$D5,$DB,$F3,$C6,$91
       .byte $D7,$B1,$C0,$73,$AA,$94,$C0,$FD,$13,$56,$C7,$37,$92,$46,$83,$A7
       .byte $EA,$F7,$F6,$F7,$6B,$EE,$23,$A9,$19,$2A,$1B,$B2,$13,$EB,$F0,$B3
       .byte $B8,$48,$40,$35,$56,$17,$5D,$ED,$CC,$73,$2C,$FD,$E9,$C5,$74,$20
       .byte $4A,$41,$4D,$4D,$45,$44,$20,$2D,$20,$28,$63,$29,$20,$32,$30,$30
       .byte $31,$20,$54,$68,$6F,$6D,$61,$73,$20,$4A,$65,$6E,$74,$7A,$73,$63
       .byte $68,$20,$FF,$FF
LFEE3: .byte $FF,$10,$14,$12,$09,$09,$09,$09,$09,$09,$12,$12,$09,$09,$09,$12
       .byte $12,$09,$09,$09,$18,$0C
LFEF9: .byte $0C,$0F,$1F,$92,$90,$90,$8E,$8E,$8D,$8D,$87,$89,$8D,$8D,$8D,$87
       .byte $89,$8D,$8D,$0D,$90,$8D,$10,$1C,$3E,$4C,$6C,$8E,$AE,$BE,$DE,$1C
       .byte $3E,$4C,$6C,$8E,$AE,$BE,$DE,$FF,$FB,$FB,$FB,$FF,$FB,$FB,$FB,$FF
       .byte $FB,$FB,$FB,$87,$7B,$7B,$7B,$FF,$7B,$7B,$7B,$87,$FB,$FB,$FB,$87
       .byte $FB,$FB,$FB,$87,$7B,$7B,$7B,$87,$7B,$7B,$7B,$87,$7F,$7F,$7F,$87
       .byte $FB,$FB,$FB,$87,$7F,$7F,$7F,$87,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$02,$00,$00,$00,$00
LFF5F: .byte $2B,$1F,$43,$33,$27,$47,$3F,$23,$3B,$37
LFF69: .byte $00,$0B,$0B,$16,$16,$21
LFF6F: .byte $0F,$7F,$F0,$FE,$0F,$0F,$FF,$F0,$FF
LFF78: .byte $0E,$07,$70,$E0,$0E
LFF7D: .byte $07,$00,$E0,$00,$07,$7F,$E0,$FE,$07
LFF86: .byte $10,$00
LFF88: .byte $F0,$10,$F2,$0E
LFF8C: .byte $05,$00,$00,$05
LFF90: .byte $01,$FE,$FE
LFF93: .byte $01,$AD,$98,$91,$7C,$75,$60,$59,$44,$3D,$28,$21
LFF9F: .byte $38,$6C,$6C,$C6,$C6,$82,$82,$EE,$EE,$6C,$6C,$38,$6C,$6C,$EE,$EE
       .byte $82,$82,$C6,$C6,$6C,$6C,$38,$7C,$6C,$EE,$CE,$82,$82,$CE,$EE,$6C
       .byte $7C,$38,$7C,$6C,$EE,$E6,$82,$82,$E6,$EE,$6C,$7C,$38,$7C,$7C,$FE
       .byte $FE,$82,$82,$FE,$FE,$7C,$7C,$38
LFFD7: .byte $C1,$B6,$00,$00,$CC,$AB
LFFDD: .byte $A9,$8D,$71,$55,$39,$1D,$3E,$7F,$67,$13,$79,$5A,$5B,$7B,$63,$5B
       .byte $5B,$5B,$63,$7B,$5B,$5A,$79,$13,$67,$7F,$3E,$00,$00,$00,$00,$EE
       .byte $F1,$00,$00
