; Disassembly of roms/treat.bin
; Disassembled Tue Oct  6 15:24:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/treat.bin
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
RESM0   =  $12
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
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
       LDA    #$00    
LF007: STA    VSYNC,X 
       DEX            
       BNE    LF007   
       NOP            
       NOP            
       STA    $DD     
       STA    $F7     
       LDA    #$D8    
       STA    $D5     
       LDA    #$FB    
       STA    $D6     
       JSR    LF122   
LF01D: LDA    $DD     
       BEQ    LF035   
       CMP    #$05    
       BCS    LF0A1   
       CMP    #$01    
       BEQ    LF03A   
       CMP    #$02    
       BEQ    LF060   
       CMP    #$03    
       BEQ    LF068   
       CMP    #$04    
       BEQ    LF091   
LF035: JSR    LFCC3   
       INC    $DD     
LF03A: INC    $F7     
       JSR    LF0C7   
       JSR    LF142   
       JSR    LFD2B   
       JSR    LF6B3   
       LDA    REFP1   
       BMI    LF03A   
       INC    $DD     
       JSR    LF6F6   
       LDA    #$01    
       STA    $CC     
       LDA    #$22    
       STA    $D5     
       LDA    #$FC    
       STA    $D6     
       JSR    LF122   
LF060: JSR    LFCF7   
       INC    $DD     
       JMP    LF892   
LF068: JSR    LF0C7   
       JSR    LF142   
       JSR    LFDDC   
       JSR    LF6B3   
       LDA    $B6     
       BNE    LF07F   
       DEC    $DD     
       BNE    LF068   
       JMP    LF01D   
LF07F: LDA    REFP1   
       BPL    LF087   
       LDA    #$00    
       STA    $CC     
LF087: LDA    $CC     
       BNE    LF068   
       LDA    REFP1   
       BMI    LF068   
       INC    $DD     
LF091: JSR    LF716   
       LDA    #$00    
       STA    $D5     
       LDA    #$FC    
       STA    $D6     
       JSR    LF122   
       INC    $DD     
LF0A1: JSR    LF0C7   
       JSR    LF0E1   
       JSR    LF142   
       JSR    LF1BB   
       JSR    LF4A0   
       JSR    LF6B3   
       LDA    $DD     
       CMP    #$06    
       BCC    LF0C4   
       INC    $DD     
       LDA    $DD     
       CMP    #$64    
       BNE    LF0C4   
       JMP    LF060   
LF0C4: JMP    LF01D   
LF0C7: LDX    #$00    
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDA    #$00    
       STA    CXCLR   
       STA    WSYNC   
       STA    VSYNC   
       RTS            

LF0E1: LDA    #$00    
       STA    COLUBK  
       LDA    SWCHA   
       STA    $94     
       LDA    SWCHB   
       AND    #$01    
       BNE    LF0F8   
       LDA    #$00    
       STA    $DD     
       JSR    LFEC8   
LF0F8: LDA    $C7     
       BEQ    LF121   
       INC    $C2     
       LDA    $DF     
       CLC            
       ADC    #$01    
       STA    $DF     
       CMP    #$0A    
       BNE    LF10F   
       LDA    #$00    
       STA    $DF     
       INC    $DE     
LF10F: JSR    LF716   
       LDA    #$0E    
       STA    $D5     
       LDA    #$FC    
       STA    $D6     
       JSR    LF122   
       LDA    #$02    
       STA    $DD     
LF121: RTS            

LF122: LDY    #$00    
       LDA    ($D5),Y 
       STA    $D9     
       LDA    #$01    
       STA    $DB     
       INY            
       LDA    ($D5),Y 
       STA    AUDC0   
       RTS            

LF132: LDY    #$00    
       LDA    ($D7),Y 
       STA    $DA     
       LDA    #$01    
       STA    $DC     
       INY            
       LDA    ($D7),Y 
       STA    AUDC1   
       RTS            

LF142: LDA    $DB     
       BMI    LF16A   
       DEC    $DB     
       BNE    LF16A   
       LDY    $D9     
       LDA    ($D5),Y 
       STA    AUDF0   
       DEY            
       LDA    ($D5),Y 
       STA    $DB     
       DEY            
       LDA    ($D5),Y 
       STA    AUDV0   
       DEY            
       BMI    LF162   
       STY    $D9     
       JMP    LF16A   
LF162: LDA    #$FF    
       STA    $D9     
       LDA    #$00    
       STA    AUDV0   
LF16A: LDA    $DC     
       BMI    LF192   
       DEC    $DC     
       BNE    LF192   
       LDY    $DA     
       LDA    ($D7),Y 
       STA    AUDF1   
       DEY            
       LDA    ($D7),Y 
       STA    $DC     
       DEY            
       LDA    ($D7),Y 
       STA    AUDV1   
       DEY            
       BMI    LF18A   
       STY    $DA     
       JMP    LF192   
LF18A: LDA    #$FF    
       STA    $DA     
       LDA    #$00    
       STA    AUDV1   
LF192: RTS            

LF193: TXA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       STA    $8E     
       TXA            
       AND    #$0F    
       CLC            
       ADC    $8E     
       CMP    #$0F    
       TYA            
       ADC    #$00    
       TAY            
       STY    $8E     
       INY            
       INY            
       INY            
       TXA            
       AND    #$0F    
       CLC            
       ADC    $8E     
       EOR    #$0F    
       SBC    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LF1BB: LDA    $BC     
       STA    $8F     
       STA    $F9     
       LDA    $DD     
       CMP    #$06    
       BCC    LF1CA   
       JMP    LF3DE   
LF1CA: LDA    $BD     
       BEQ    LF208   
       DEC    $BD     
       BNE    LF1E4   
       LDA    #$00    
       STA    $B8     
       LDA    #$08    
       STA    $B2     
       LDY    #$06    
       LDA    $BF     
       STA.wy $00AB,Y 
       JMP    LF208   
LF1E4: LDA    #$00    
       STA    $B8     
       LDA    $B2     
       BEQ    LF1FA   
       LDA    #$00    
       STA    $B2     
       LDY    #$06    
       LDA    $BE     
       STA.wy $00AB,Y 
       JMP    LF3DE   
LF1FA: LDA    #$08    
       STA    $B2     
       LDY    #$06    
       LDA    $BF     
       STA.wy $00AB,Y 
       JMP    LF3DE   
LF208: LDA    $B8     
       BEQ    LF24D   
       LDA    $84     
       CMP    #$07    
       BEQ    LF215   
       JMP    LF3DE   
LF215: LDA    $B2     
       BEQ    LF21C   
       JMP    LF3DE   
LF21C: LDA    #$08    
       STA    $B2     
       LDA    #$00    
       STA    $B8     
       STA    $BC     
       LDA    #$F2    
       STA    $D5     
       LDA    #$FB    
       STA    $D6     
       JSR    LF122   
       LDA    #$50    
       STA    $BD     
       LDY    #$06    
       LDA.wy $00AB,Y 
       STA    $BE     
       LDA    $81     
       CMP    #$50    
       BCC    LF249   
       LDA    #$10    
       STA    $BF     
       JMP    LF24D   
LF249: LDA    #$6E    
       STA    $BF     
LF24D: LDA    $84     
       BEQ    LF2C4   
       DEC    $D3     
       BNE    LF29D   
       LDA    #$28    
       STA    $D3     
       DEC    $D2     
       LDA    $CF     
       BEQ    LF265   
       ASL            
       STA    $CF     
       JMP    LF29D   
LF265: LDA    $D0     
       BEQ    LF26F   
       LSR            
       STA    $D0     
       JMP    LF29D   
LF26F: LDA    $D1     
       BEQ    LF279   
       ASL            
       STA    $D1     
       JMP    LF29D   
LF279: LDA    $CE     
       BEQ    LF283   
       LSR            
       STA    $CE     
       JMP    LF29D   
LF283: LDA    $CD     
       BEQ    LF28D   
       ASL            
       STA    $CD     
       JMP    LF29D   
LF28D: LDA    $CC     
       BEQ    LF299   
       LSR            
       AND    #$C0    
       STA    $CC     
       JMP    LF29D   
LF299: LDA    #$01    
       STA    $B8     
LF29D: LDA    $D2     
       CMP    #$0A    
       BNE    LF2AB   
       LDA    #$03    
       STA    $90     
       LDA    #$42    
       STA    $D4     
LF2AB: CMP    #$0F    
       BNE    LF2C4   
       LDA    $D4     
       CMP    #$1A    
       BEQ    LF2C4   
       LDA    #$1A    
       STA    $D4     
       LDA    #$4A    
       STA    $D7     
       LDA    #$FC    
       STA    $D8     
       JSR    LF132   
LF2C4: DEC    $8D     
       LDA    $8D     
       BEQ    LF2D3   
       LDA    $94     
       AND    #$3F    
       STA    $94     
       JMP    LF2D7   
LF2D3: LDA    $90     
       STA    $8D     
LF2D7: LDA    $94     
       BMI    LF2E3   
       LDX    #$94    
       CPX    $81     
       BEQ    LF2E3   
       INC    $81     
LF2E3: ROL            
       BMI    LF2EE   
       LDX    #$0C    
       CPX    $81     
       BEQ    LF2EE   
       DEC    $81     
LF2EE: TAX            
       LDA    $B2     
       CMP    #$08    
       BEQ    LF311   
       LDA    $84     
       CMP    #$06    
       BNE    LF311   
       LDY    #$06    
       LDA.wy $00AB,Y 
       CMP    $81     
       BEQ    LF30B   
       CLC            
       ADC    #$01    
       CMP    $81     
       BNE    LF311   
LF30B: LDA    $95     
       ORA    #$10    
       STA    $95     
LF311: TXA            
       LDA    $95     
       BIT    RESP0   
       BEQ    LF395   
       BIT    HMP0    
       BEQ    LF395   
       TXA            
       ROL            
       BMI    LF358   
       LDX    #$01    
       CPX    $84     
       BCS    LF329   
       JMP    LF348   
LF329: LDX    $B2     
       BEQ    LF395   
       TAX            
       LDA    $B5     
       CLC            
       ADC    #$08    
       CMP    $81     
       BCC    LF395   
       LDA    $B5     
       SBC    #$08    
       CMP    $81     
       BCS    LF395   
       LDA    $B5     
       STA    $81     
       LDA    #$01    
       STA    $C7     
       TXA            
LF348: DEC    $84     
       LDA    #$CA    
       STA    $D5     
       LDA    #$FB    
       STA    $D6     
       JSR    LF122   
       JMP    LF395   
LF358: ROL            
       BMI    LF395   
       LDX    #$06    
       STA    $80     
       CPX    $84     
       BCC    LF395   
       STA    $80     
       LDA    $B2     
       BNE    LF388   
       LDA    $84     
       CMP    #$06    
       BNE    LF388   
       TAY            
       LDA    $B2     
       CMP    #$08    
       BEQ    LF395   
       LDA    $8A     
       BNE    LF395   
       LDA.wy $00AB,Y 
       CMP    $81     
       BEQ    LF388   
       CLC            
       ADC    #$01    
       CMP    $81     
       BNE    LF395   
LF388: INC    $84     
       LDA    #$CA    
       STA    $D5     
       LDA    #$FB    
       STA    $D6     
       JSR    LF122   
LF395: LDA    $94     
       STA    $95     
       LDY    COLUP0  
       LDX    COLUP0  
LF39D: LDA    $96,X   
       ASL            
       TAX            
       INX            
       LDA    LFED5,X 
       STA    $F5     
       DEX            
       LDA    LFED5,X 
       STA    $F6     
       TYA            
       TAX            
       LDA    $EE,X   
       TAY            
       LDA    ($F5),Y 
       STA    $80     
       DEC    $EE,X   
       BNE    LF3C0   
       LDY    #$00    
       LDA    ($F5),Y 
       STA    $EE,X   
LF3C0: LDA    $AB,X   
       CLC            
       ADC    $80     
       CMP    #$A0    
       BNE    LF3CE   
       LDA    #$00    
       JMP    LF3D4   
LF3CE: CMP    #$FF    
       BNE    LF3D4   
       LDA    #$9F    
LF3D4: STA    $AB,X   
       STA    $AB,X   
       TXA            
       TAY            
       DEX            
       DEY            
       BPL    LF39D   
LF3DE: LDX    $81     
       JSR    LF193   
       STA    HMP0    
       STA    $83     
       STY    $82     
       LDA    $84     
       BNE    LF3F9   
       LDA    $82     
       STA    $B3     
       LDA    $83     
       STA    $B4     
       LDA    $81     
       STA    $B5     
LF3F9: LDX    COLUP0  
LF3FB: STX    $80     
       LDA    $AB,X   
       TAX            
       JSR    LF193   
       LDX    $80     
       STA    $A4,X   
       STY    $9D,X   
       DEX            
       BPL    LF3FB   
       LDA    #$00    
       STA    $BB     
       LDA    $B8     
       BEQ    LF466   
       LDA    LFAD1   
       CMP    $B9     
       BNE    LF434   
       JSR    LFEC8   
       LDA    #$3C    
       STA    $D5     
       LDA    #$FC    
       STA    $D6     
       JSR    LF122   
       DEC    $B6     
       BNE    LF434   
       LDA    #$06    
       STA    $DD     
       JSR    LFEC8   
LF434: LDX    $B9     
       LDA    LFAD1,X 
       STA    $86     
       DEC    $B9     
       BNE    LF476   
       LDA    LFAD1   
       STA    $B9     
       LDA    LFAC0   
       STA    $85     
       LDA    #$00    
       STA    $B8     
       JSR    LFEC8   
       LDA    #$00    
       STA    $B2     
       JSR    LF483   
       LDA    #$F4    
       STA    $BC     
       LDA    #$00    
       STA    $84     
       LDA    $B5     
       STA    $81     
       JMP    LF476   
LF466: LDX    $85     
       LDA    LFAC0,X 
       STA    $86     
       DEC    $85     
       BNE    LF476   
       LDA    LFAC0   
       STA    $85     
LF476: LDA    #$01    
       STA    VDELP0  
       LDA    $8A     
       BNE    LF482   
       LDA    #$00    
       STA    $F9     
LF482: RTS            

LF483: LDA    #$C0    
       STA    $CC     
       STA    $CF     
       LDA    #$FF    
       STA    $CD     
       STA    $CE     
       STA    $D0     
       STA    $D1     
       LDA    #$24    
       STA    $D2     
       LDA    #$28    
       STA    $D3     
       LDA    #$D4    
       STA    $D4     
       RTS            

LF4A0: LDA    INTIM   
       BNE    LF4A0   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$23    
       STA    COLUP0  
       LDA    #$00    
       STA    GRP0    
       STA    PF1     
       STA    PF2     
       STA    COLUPF  
       LDA    #$30    
       STA    PF0     
       LDA    COLUP1  
       STA    $93     
       LDX    $F8     
       LDA    #$00    
       STA    WSYNC   
LF4C9: DEX            
       BPL    LF4C9   
       STA    ENAM0   
       STA    RESM0   
       STA    WSYNC   
LF4D2: LDX    $93     
       DEX            
       LDA    $A4,X   
       STA    HMP1    
       LDY    $9D,X   
       LDX    $82     
       STA    WSYNC   
LF4DF: DEX            
       BPL    LF4DF   
       STA    RESP0   
       STA    WSYNC   
LF4E6: DEY            
       BPL    LF4E6   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$C0    
       STA    $91     
       LDA    #$08    
       STA    $92     
       LDA    $93     
       CLC            
       ASL            
       LDX    $B2     
       BEQ    LF505   
       CMP    #$0E    
       BNE    LF505   
       LDA    #$0D    
LF505: TAX            
       DEX            
       LDA    $E0,X   
       STX    $80     
       LDY    #$00    
       ASL            
       BCC    LF511   
       INY            
LF511: TAX            
       TXA            
       ASL            
       BCC    LF517   
       INY            
LF517: TAX            
       TXA            
       ASL            
       BCC    LF51D   
       INY            
LF51D: TAX            
       TXA            
       ASL            
       BCC    LF523   
       INY            
LF523: CLC            
       ADC    #$B0    
       TAX            
       TYA            
       ADC    #$F8    
       STA    $88     
       STX    $87     
       LDX    $80     
       DEX            
       LDA    $E0,X   
       LDY    $93     
       CPY    #$07    
       BNE    LF53B   
       LDA    #$00    
LF53B: STA    NUSIZ1  
       LDX    $86     
       LDY    #$00    
LF541: LDA    $93     
       CMP    $84     
       BNE    LF54C   
       LDA    LFA30,X 
       STA    GRP0    
LF54C: INX            
       STA    WSYNC   
       LDA    LFA30,X 
       STA    COLUP0  
       LDA    ($87),Y 
       STA    GRP1    
       INY            
       LDA    ($87),Y 
       STA    COLUP1  
       STA    $80     
       INX            
       INY            
       LDA    $93     
       CMP    $8A     
       BNE    LF57B   
       LDA    $92     
       CLC            
       SBC    #$06    
       BPL    LF57B   
       LDA    $92     
       SBC    #$03    
       BMI    LF57B   
       LDA    #$02    
       STA    ENAM0   
       JMP    LF57F   
LF57B: LDA    #$00    
       STA    ENAM0   
LF57F: STA    WSYNC   
       LDA    $92     
       CMP    #$01    
       BNE    LF591   
       LDA    $8F     
       STA    COLUBK  
       LDA    $80     
       ADC    $F9     
       STA    COLUP1  
LF591: DEC    $92     
       BNE    LF541   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    COLUBK  
       STA    $8F     
       STA    ENAM0   
       STA    $F9     
       DEC    $93     
       BEQ    LF5AC   
       JMP    LF4D2   
LF5AC: LDX    $B3     
       LDA    $B4     
       STA    HMP0    
       STA    WSYNC   
LF5B4: DEX            
       BPL    LF5B4   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$08    
       STA    $92     
       LDX    #$00    
       LDA    $84     
       BEQ    LF5C9   
       LDX    #$10    
LF5C9: LDA    LFAA0,X 
       STA    GRP0    
       INX            
       STA    WSYNC   
       LDA    LFAA0,X 
       STA    COLUP0  
       INX            
       LDA    #$00    
       STA    GRP1    
       STA    WSYNC   
       DEC    $92     
       BNE    LF5C9   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$F4    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$FA    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$F8    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$F4    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       TAX            
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $D4     
       STA    COLUPF  
       STA    WSYNC   
       LDA    $CC,X   
       STA    PF0     
       LDA    $CD,X   
       STA    PF1     
       LDA    $CE,X   
       STA    PF2     
       NOP            
       NOP            
       NOP            
       LDA    $CF,X   
       STA    PF0     
       LDA    $D0,X   
       STA    PF1     
       LDA    $D1,X   
       STA    PF2     
       STA    WSYNC   
       LDA    #$00    
       STA    COLUPF  
       LDA    #$30    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    COLUBK  
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$F2    
       STA    COLUBK  
       LDA    $B6     
       ASL            
       TAX            
       DEX            
       LDA    LFEB8,X 
       STA    NUSIZ0  
       DEX            
       LDA    LFEB8,X 
       STA    NUSIZ1  
       LDA    #$80    
       STA    HMP0    
       LDA    #$82    
       STA    HMP1    
       LDY    #$09    
       LDX    #$03    
       STA    WSYNC   
LF665: DEX            
       BPL    LF665   
       STA    RESP0   
       BIT    VSYNC   
       BIT    VSYNC   
       BIT    VSYNC   
       NOP            
       NOP            
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $B6     
LF67A: LDA    LFEAE,Y 
       CPX    #$00    
       BNE    LF683   
       LDA    #$00    
LF683: STA    GRP0    
       STA    WSYNC   
       LDA    LFEAE,Y 
       CPX    #$04    
       BCS    LF690   
       LDA    #$00    
LF690: STA    GRP1    
       DEY            
       LDA    LFEAE,Y 
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       DEY            
       BPL    LF67A   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$20    
       STA    NUSIZ0  
       LDY    #$03    
LF6AD: STA    WSYNC   
       DEY            
       BNE    LF6AD   
       RTS            

LF6B3: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$00    
       STY    PF0     
       STY    PF1     
       STY    PF1     
       STY    GRP0    
       STY    GRP1    
       STY    ENAM0   
       STY    ENAM1   
       STY    ENABL   
       LDX    #$1E    
       LDA    COLUP1  
       BPL    LF6D9   
       LDA    $BB     
       BNE    LF6D9   
       LDA    #$01    
       STA    $B8     
LF6D9: LDA    VSYNC   
       ASL            
       BPL    LF6EE   
       LDA    #$00    
       STA    $8A     
       LDA    #$6A    
       STA    $D7     
       LDA    #$FC    
       STA    $D8     
       JSR    LF132   
       DEX            
LF6EE: STA    CXCLR   
LF6F0: STA    WSYNC   
       DEX            
       BNE    LF6F0   
       RTS            

LF6F6: LDA    #$00    
       STA    $C2     
       STA    $DE     
       STA    $DF     
       INC    $DF     
       LDA    COLUP0  
       STA    $B6     
       RTS            

LF705: LDA    $F7     
       ASL            
       EOR    $F7     
       ASL            
       EOR    $F7     
       ASL            
       ASL            
       ROL            
       EOR    $F7     
       LSR            
       ROR    $F7     
       RTS            

LF716: LDA    $C2     
       CMP    #$63    
       BCC    LF726   
       LDA    #$00    
       STA    $C2     
       STA    $DE     
       STA    $DF     
       INC    $DF     
LF726: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    $8C     
       STA    $B2     
       STA    $B8     
       STA    $BB     
       STA    $BD     
       LDA    #$05    
       STA    $89     
       LDA    #$00    
       STA    $84     
       LDA    #$F0    
       STA    $95     
       LDA    #$50    
       STA    $81     
       LDA    #$F4    
       STA    $BC     
       STA    $F9     
       JSR    LF705   
       LDA    $F7     
       AND    #$07    
       TAY            
       LDA    LFBBA,Y 
       STA    $8A     
       JSR    LF705   
       LDA    $F7     
       AND    #$07    
       TAY            
       LDA    LFBC2,Y 
       STA    $F8     
       LDX    #$0D    
       LDA    $C2     
       AND    #$07    
       CLC            
       ADC    #$10    
       STA    $E0,X   
       DEX            
       JSR    LF705   
       LDA    $F7     
       AND    #$0F    
       STA    $E0,X   
       DEX            
LF782: JSR    LF705   
       LDA    $F7     
       AND    #$0F    
       STA    $E0,X   
       DEX            
       JSR    LF705   
       LDA    $F7     
       AND    #$07    
       TAY            
       LDA    $C2     
       CMP    #$02    
       BCS    LF7A0   
       LDA    LFBA2,Y 
       JMP    LF7AD   
LF7A0: CMP    #$07    
       BCS    LF7AA   
       LDA    LFBAA,Y 
       JMP    LF7AD   
LF7AA: LDA    LFBB2,Y 
LF7AD: STA    $E0,X   
       DEX            
       BPL    LF782   
       LDA    LFAC0   
       STA    $85     
       LDY    COLUP0  
       JSR    LF705   
       LDA    $F7     
       AND    #$03    
       STA.wy $0096,Y 
       ASL            
       TAX            
       INX            
       LDA    LFED5,X 
       STA    $F5     
       DEX            
       LDA    LFED5,X 
       STA    $F6     
       STY    $80     
       LDY    #$00    
       LDA    ($F5),Y 
       LDY    $80     
       STA.wy $00EE,Y 
       LDA.wy $0096,Y 
       DEY            
       CLC            
       ADC    #$01    
       AND    #$03    
       STA.wy $0096,Y 
       STA    $D2     
       ASL            
       TAX            
       INX            
       LDA    LFED5,X 
       STA    $F5     
       DEX            
       LDA    LFED5,X 
       STA    $F6     
       STY    $80     
       LDY    #$00    
       LDA    ($F5),Y 
       LDY    $80     
       STA.wy $00EE,Y 
       DEY            
LF804: JSR    LF705   
       LDA    $F7     
       LDX    $C2     
       CPX    #$02    
       BCS    LF818   
       AND    #$03    
       LDX    #$00    
       STX    $8A     
       JMP    LF826   
LF818: CPX    #$07    
       BCS    LF821   
       AND    #$07    
       JMP    LF826   
LF821: AND    #$07    
       CLC            
       ADC    #$08    
LF826: LDX    $D2     
       STA    $D2     
       CPX    $D2     
       BEQ    LF804   
       STA.wy $0096,Y 
       ASL            
       TAX            
       INX            
       LDA    LFED5,X 
       STA    $F5     
       DEX            
       LDA    LFED5,X 
       STA    $F6     
       STY    $80     
       LDY    #$00    
       LDA    ($F5),Y 
       LDY    $80     
       STA.wy $00EE,Y 
       DEY            
       BPL    LF804   
       LDY    COLUP0  
       LDX    #$00    
LF851: JSR    LF705   
       LDA    $F7     
       CMP    #$9F    
       BCC    LF85F   
       CLC            
       SBC    #$9F    
       ADC    #$01    
LF85F: CMP    #$00    
       BNE    LF866   
       CLC            
       ADC    #$01    
LF866: STA    $AB,X   
       INX            
       DEY            
       BPL    LF851   
       LDA    WSYNC   
       STA    $90     
       STA    $8D     
       LDA    LFAD1   
       STA    $B9     
       STA    $C7     
       LDA    #$01    
       STA    NUSIZ1  
       LDY    #$20    
       STY    NUSIZ0  
       JSR    LF483   
       JSR    LFEC8   
       LDA    #$01    
       STA    VDELP0  
       LDA    #$00    
       STA    VDELP1  
       STA    $C7     
       RTS            

LF892: LDX    #$01    
       LDY    #$02    
LF896: LDA    $DE,X   
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$5E    
       STA.wy $008A,Y 
       LDA    #$00    
       ADC    #$FE    
       STA.wy $008B,Y 
       DEY            
       DEY            
       DEX            
       BPL    LF896   
       JMP    LF068   
LF8B0: .byte $38,$20,$4E,$22,$BF,$24,$FE,$24,$7F,$24,$7E,$22,$18,$20,$00,$00
       .byte $18,$14,$BD,$16,$7E,$18,$AB,$18,$D5,$18,$7E,$18,$BD,$16,$18,$14
       .byte $00,$00,$42,$40,$3C,$42,$E7,$46,$E7,$46,$3C,$42,$42,$40,$00,$00
       .byte $81,$B4,$C3,$B6,$DB,$B8,$FF,$BA,$FF,$BA,$DB,$B8,$C3,$B6,$81,$B4
       .byte $3F,$A8,$63,$AA,$FD,$AC,$A5,$AE,$A5,$AE,$BF,$AC,$C6,$AA,$FC,$A8
       .byte $18,$C2,$2C,$C4,$5E,$C6,$BF,$C8,$FF,$C8,$7E,$C6,$3C,$C4,$18,$C2
       .byte $3C,$92,$42,$94,$99,$96,$A5,$98,$A5,$98,$99,$96,$42,$94,$3C,$92
       .byte $18,$52,$18,$54,$3C,$56,$FF,$58,$FF,$58,$3C,$56,$18,$54,$18,$52
       .byte $18,$E2,$5A,$E4,$3C,$E6,$FF,$E8,$FF,$E8,$3C,$E6,$5A,$E4,$18,$E2
       .byte $24,$22,$66,$24,$FF,$26,$E7,$28,$E7,$28,$FF,$26,$66,$24,$24,$22
       .byte $81,$22,$66,$24,$5A,$26,$24,$28,$24,$28,$5A,$26,$66,$24,$81,$22
       .byte $99,$32,$66,$34,$7E,$36,$BD,$38,$BD,$38,$7E,$36,$66,$34,$99,$32
       .byte $18,$72,$66,$74,$FF,$76,$18,$78,$18,$78,$FF,$76,$66,$74,$18,$72
       .byte $24,$B2,$3C,$B4,$FF,$B6,$66,$B8,$66,$B8,$FF,$B6,$3C,$B4,$24,$B2
       .byte $FF,$42,$3C,$44,$66,$46,$FF,$48,$FF,$48,$66,$46,$3C,$44,$FF,$42
       .byte $3C,$C2,$7E,$C4,$18,$C6,$FF,$C8,$FF,$C8,$18,$C6,$7E,$C4,$3C,$C2
       .byte $34,$E6,$18,$E6,$2C,$44,$7A,$44,$5E,$44,$2C,$44,$18,$42,$FF,$00
       .byte $60,$E6,$10,$E6,$08,$E6,$08,$E6,$18,$44,$3C,$44,$18,$44,$FF,$00
       .byte $18,$F6,$0C,$1A,$0E,$1A,$0E,$1A,$0E,$1A,$1C,$1A,$30,$1A,$FF,$00
       .byte $30,$F2,$18,$F2,$38,$E4,$7C,$E4,$FE,$E4,$FE,$E4,$6C,$E4,$FF,$00
       .byte $78,$0F,$CC,$42,$CC,$0F,$0C,$42,$0C,$0F,$0C,$42,$0C,$0F,$FF,$00
       .byte $00,$00,$00,$00,$00,$00,$FB,$42,$BF,$40,$76,$40,$3C,$C2,$FF,$00
       .byte $00,$00,$81,$42,$DB,$44,$FF,$46,$DB,$44,$81,$42,$00,$00,$FF,$00
       .byte $7C,$AE,$FE,$AE,$FE,$AE,$FE,$F6,$7C,$F6,$38,$F6,$10,$F4,$FF,$00
LFA30: .byte $5A,$82,$BD,$86,$7E,$8A,$DB,$8A,$DB,$8A,$7E,$8A,$BD,$86,$5A,$82
       .byte $5A,$82,$BD,$86,$7E,$8A,$E7,$8A,$E7,$8A,$7E,$8A,$BD,$86,$5A,$82
       .byte $5A,$82,$BD,$86,$66,$8A,$C3,$8A,$C3,$8A,$66,$8A,$BD,$86,$5A,$82
       .byte $99,$82,$24,$86,$42,$8A,$99,$8A,$99,$8A,$42,$8A,$24,$86,$99,$82
       .byte $18,$82,$00,$86,$18,$8A,$A5,$8A,$A5,$8A,$18,$8A,$00,$86,$18,$82
       .byte $00,$82,$18,$86,$00,$8A,$42,$8A,$42,$8A,$00,$8A,$18,$86,$00,$82
       .byte $18,$82,$00,$86,$00,$8A,$81,$8A,$81,$8A,$00,$8A,$00,$86,$18,$82
LFAA0: .byte $5A,$82,$BD,$86,$7E,$8A,$E7,$8A,$E7,$8A,$7E,$8A,$81,$0D,$7E,$0D
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$81,$0D,$7E,$0D
LFAC0: .byte $10,$10,$10,$10,$10,$10,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00
       .byte $00
LFAD1: .byte $28,$60,$60,$60,$60,$60,$60,$60,$60,$50,$50,$50,$50,$50,$50,$50
       .byte $50,$40,$40,$40,$40,$40,$40,$40,$40,$30,$30,$30,$30,$30,$30,$30
       .byte $30,$20,$20,$20,$20,$20,$20,$20,$20
LFAFA: .byte $00,$76,$78,$7A,$78,$76,$74,$72,$03,$00,$00,$01,$03,$00,$00,$FF
       .byte $02,$00,$01,$02,$00,$FF,$01,$01,$01,$FF,$03,$00,$01,$01,$03,$00
       .byte $FF,$FF,$01,$01,$01,$FF,$1E,$01,$00,$00,$01,$00,$01,$01,$01,$01
       .byte $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$01,$00
       .byte $00,$01,$00,$00,$00,$19,$01,$01,$01,$01,$00,$01,$01,$00,$01,$00
       .byte $00,$01,$00,$00,$00,$00,$00,$FF,$FF,$FF,$00,$00,$00,$00,$00,$17
       .byte $01,$00,$00,$01,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
       .byte $00,$01,$00,$00,$01,$00,$00,$18,$FF,$FF,$FF,$FF,$FF,$00,$FF,$FF
       .byte $FF,$00,$FF,$FF,$00,$FF,$00,$FF,$00,$FF,$FF,$00,$FF,$FF,$FF,$00
       .byte $13,$01,$00,$00,$01,$00,$01,$01,$01,$01,$01,$01,$00,$01,$00,$00
       .byte $01,$00,$00,$00,$03,$00,$FF,$FF
LFBA2: .byte $04,$04,$06,$04,$06,$02,$04,$00
LFBAA: .byte $06,$06,$06,$04,$06,$06,$04,$04
LFBB2: .byte $06,$06,$06,$06,$04,$06,$06,$06
LFBBA: .byte $01,$02,$03,$04,$05,$06,$04,$05
LFBC2: .byte $05,$06,$07,$07,$08,$09,$09,$0B,$0D,$06,$00,$01,$00,$0F,$02,$14
       .byte $0F,$02,$0F,$0F,$02,$05,$19,$01,$0F,$14,$0B,$0F,$0A,$11,$0F,$0A
       .byte $0B,$0F,$0A,$11,$00,$05,$00,$0F,$1E,$0B,$00,$0A,$00,$0F,$0A,$11
       .byte $0D,$04,$0F,$14,$11,$0F,$14,$0B,$0F,$14,$11,$0F,$14,$0B,$0D,$06
       .byte $00,$01,$00,$0F,$02,$05,$0F,$02,$0F,$0F,$02,$14,$13,$04,$00,$01
       .byte $00,$0F,$05,$0F,$00,$02,$00,$0F,$05,$19,$00,$02,$00,$0F,$05,$1E
       .byte $19,$04,$00,$02,$00,$0F,$05,$14,$00,$02,$00,$0F,$0A,$1E,$00,$02
       .byte $00,$0F,$05,$14,$00,$02,$00,$0F,$0A,$1E,$0D,$08,$00,$02,$00,$0F
       .byte $14,$1F,$0F,$05,$1D,$0F,$0A,$1C,$1F,$04,$00,$02,$00,$0F,$1E,$1E
       .byte $00,$64,$00,$0F,$1E,$1E,$00,$64,$00,$0F,$1E,$1E,$00,$64,$00,$0F
       .byte $1E,$1E,$00,$64,$00,$0F,$1E,$1E,$0D,$04,$00,$01,$00,$0F,$05,$0F
       .byte $00,$02,$00,$0F,$05,$1E
LFC78: LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$36    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    COLUBK  
       STA    COLUPF  
       STA    GRP0    
       STA    GRP1    
       STA    REFP0   
       STA    REFP1   
       STY    ENAM0   
       STY    ENAM1   
       STY    ENABL   
       STA    HMCLR   
       STA    WSYNC   
       LDY    #$06    
LFCA4: DEY            
       BPL    LFCA4   
       NOP            
       NOP            
       STA    RESP0   
       STA    WSYNC   
       LDY    #$07    
LFCAF: DEY            
       BPL    LFCAF   
       STA    RESP1   
       LDA    #$90    
       LDA    HMP1    
       LDA    #$50    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       RTS            

LFCC3: JSR    LFC78   
       LDA    #$30    
       STA    $82     
       LDA    #$FF    
       STA    $83     
       LDA    #$51    
       STA    $84     
       LDA    #$FF    
       STA    $85     
       LDA    #$72    
       STA    $86     
       LDA    #$FF    
       STA    $87     
       LDA    #$93    
       STA    $88     
       LDA    #$FF    
       STA    $89     
       LDA    #$B4    
       STA    $8A     
       LDA    #$FF    
       STA    $8B     
       LDA    #$D5    
       STA    $8C     
       LDA    #$FF    
       STA    $8D     
       RTS            

LFCF7: JSR    LFC78   
       LDA    #$3E    
       STA    $82     
       LDA    #$FE    
       STA    $83     
       LDA    #$46    
       STA    $84     
       LDA    #$FE    
       STA    $85     
       LDA    #$4E    
       STA    $86     
       LDA    #$FE    
       STA    $87     
       LDA    #$56    
       STA    $88     
       LDA    #$FE    
       STA    $89     
       LDA    #$5E    
       STA    $8A     
       LDA    #$FE    
       STA    $8B     
       LDA    #$66    
       STA    $8C     
       LDA    #$FE    
       STA    $8D     
       RTS            

LFD2B: LDA    INTIM   
       BNE    LFD2B   
       STA    WSYNC   
       STA    VBLANK  
       LDA    VBLANK  
       STA    CTRLPF  
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    COLUPF  
       STA    $CA     
       LDA    #$BF    
       STA    $C8     
       LDY    #$06    
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    #$14    
LFD54: STA    WSYNC   
       DEC    $C8     
       DEX            
       BNE    LFD54   
       LDA    #$82    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDX    #$05    
LFD67: STA    WSYNC   
       DEC    $C8     
       DEX            
       BNE    LFD67   
       LDX    #$07    
       LDA    #$34    
       STA    COLUPF  
LFD74: DEY            
       BNE    LFD7C   
       LDY    #$05    
       DEX            
       BEQ    LFDA5   
LFD7C: STA    WSYNC   
       LDA    LFAFA,X 
       STA    COLUPF  
       LDA    LFF00,X 
       STA    PF0     
       LDA    LFF08,X 
       STA    PF1     
       LDA    LFF10,X 
       STA    PF2     
       LDA    LFF28,X 
       STA    PF0     
       LDA    LFF20,X 
       STA    PF1     
       LDA    LFF18,X 
       STA    PF2     
       DEC    $C8     
       BNE    LFD74   
LFDA5: LDA    #$00    
       STA    COLUPF  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    #$06    
LFDB1: STA    WSYNC   
       DEC    $C8     
       DEX            
       BNE    LFDB1   
       LDA    #$82    
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDY    #$0A    
LFDC4: STA    WSYNC   
       DEY            
       BPL    LFDC4   
       LDA    #$36    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$20    
       JSR    LFE00   
       LDY    #$4C    
LFDD6: DEY            
       STA    WSYNC   
       BNE    LFDD6   
       RTS            

LFDDC: LDA    INTIM   
       BNE    LFDDC   
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$46    
LFDE7: STA    WSYNC   
       DEY            
       BPL    LFDE7   
       LDA    #$07    
       JSR    LFE00   
       LDY    #$6D    
LFDF3: STA    WSYNC   
       DEY            
       BPL    LFDF3   
       RTS            

LFDF9: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
LFE00: STA    $81     
       STA    WSYNC   
       LDY    #$0B    
LFE06: DEY            
       BPL    LFE06   
       BIT    VSYNC   
LFE0B: NOP            
       NOP            
       NOP            
       LDY    $81     
       LDA    ($82),Y 
       STA    GRP0    
       LDA    ($84),Y 
       STA    GRP1    
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    $80     
       LDA    ($8A),Y 
       TAX            
       LDA    ($88),Y 
       LDY    $80     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $81     
       BPL    LFE0B   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       RTS            

LFE3E: .byte $FB,$DB,$C3,$C3,$C3,$C3,$C3,$C3,$E2,$67,$07,$8D,$0D,$0D,$6D,$ED
       .byte $3E,$36,$30,$B8,$B0,$B0,$B6,$BE,$F8,$D8,$C0,$C0,$C0,$C0,$C0,$C0
       .byte $7C,$C6,$C6,$C6,$C6,$C6,$C6,$7C,$FC,$30,$30,$30,$30,$F0,$70,$30
       .byte $FE,$C0,$60,$30,$18,$0C,$C6,$7C,$7C,$C6,$06,$06,$1C,$06,$C6,$7C
       .byte $06,$FE,$C6,$66,$66,$30,$30,$18,$7C,$C6,$06,$06,$FC,$C0,$C0,$FE
       .byte $7C,$C6,$C6,$C6,$FC,$C0,$C6,$7C,$30,$30,$18,$18,$0C,$0C,$06,$FE
       .byte $7C,$C6,$C6,$C6,$7C,$C6,$C6,$7C,$7C,$C6,$06,$7E,$C6,$C6,$C6,$7C
LFEAE: .byte $82,$5A,$86,$3C,$8A,$7E,$86,$3C,$82,$5A
LFEB8: .byte $00,$00,$00,$01,$00,$03,$00,$03,$01,$03,$03,$03,$03,$03,$03,$03
LFEC8: LDA    #$FF    
       STA    $D9     
       STA    $DA     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LFED5: .byte $FB,$02,$FB,$06,$FB,$0A,$FB,$0D,$FB,$10,$FB,$12,$FB,$14,$FB,$18
       .byte $FB,$1C,$FB,$1E,$FB,$20,$FB,$3F,$FB,$59,$FB,$71,$FB,$8A,$FB,$9E
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFF00: .byte $00,$70,$80,$80,$40,$20,$20,$C0
LFF08: .byte $00,$45,$45,$45,$47,$65,$15,$E2
LFF10: .byte $00,$CC,$22,$22,$62,$22,$02,$FC
LFF18: .byte $00,$25,$25,$25,$26,$25,$21,$7E
LFF20: .byte $00,$AC,$A2,$A2,$E6,$A2,$A2,$4C
LFF28: .byte $00,$20,$20,$20,$20,$20,$20,$70,$04,$04,$26,$05,$06,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$0F,$0D,$06,$03,$0D,$0F,$00,$18,$18,$1C
       .byte $18,$1B,$1F,$00,$02,$04,$05,$04,$02,$53,$54,$66,$54,$63,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$B6,$B6,$3E,$36,$B6,$9C,$00,$6D,$6D
       .byte $7D,$6D,$6D,$39,$00,$27,$94,$12,$91,$26,$66,$11,$22,$44,$33,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$23,$73,$DB,$DB,$DB,$D9,$00,$E6
       .byte $B6,$E7,$B6,$B6,$E7,$00,$22,$55,$55,$55,$22,$11,$11,$19,$11,$0D
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$67,$6D,$EF,$6C,$6D,$C7,$00
       .byte $DB,$DB,$99,$D8,$DB,$9B,$00,$70,$40,$20,$10,$60,$53,$54,$66,$54
       .byte $63,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3E,$B6,$B0,$30,$B0,$30
       .byte $00,$EC,$6D,$8D,$CD,$6D,$EC,$00,$18,$14,$18,$15,$19,$40,$00,$48
       .byte $40,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$C0,$C0,$C0,$C0
       .byte $C0,$00,$E0,$B0,$B0,$B0,$B0,$E0,$00,$80,$80,$80,$40,$40,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$00,$F0,$00,$F0
