; Disassembly of roms/Dschungle Boy (Pitfall).bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Dschungle Boy (Pitfall).bin
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
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMBL    =  $24
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
       LDX    #$00    
LF004: LDA    #$00    
LF006: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF006   
       JSR    LFA75   
LF00F: LDX    #$08    
LF011: LDA    LFFB8,X 
       EOR    $87     
       AND    $88     
       STA    $89,X   
       CPX    #$04    
       BCS    LF020   
       STA    COLUP0,X
LF020: DEX            
       BPL    LF011   
       LDY    #$50    
       LDX    #$90    
       LDA    $E3     
       LSR            
       BCC    LF02E   
       LDX    #$A0    
LF02E: LDA    #$F0    
       STA    $BD     
       LDA    $9D     
       BEQ    LF03E   
       LDY    #$60    
       LDX    #$F0    
       STX    $BD     
       STY    $BF     
LF03E: STX    $C1     
       STY    $C3     
       LDX    $94     
       LDA    LFC95,X 
       BPL    LF04D   
       LDA    $8D     
       STA    $91     
LF04D: LDY    #$00    
       LDA    LFFE6,X 
       BPL    LF07D   
       LDA    $E9     
       CMP    #$37    
       BCS    LF05E   
       CMP    #$21    
       BCS    LF098   
LF05E: LDA    $9E     
       BNE    LF098   
       LDA    $D3     
       LSR            
       LSR            
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       PLA            
       AND    LFC92,X 
       EOR    LFC90,X 
       PHA            
       TAY            
       LDA    LFC06,Y 
       TAY            
       PLA            
       CLC            
       ADC    #$10    
LF07D: CLC            
       STY    $F4     
       ADC    #$06    
       TAY            
       LDX    #$06    
       LDA    $9D     
       EOR    #$FF    
       STA    $F6     
LF08B: LDA    LFBDE,Y 
       STA    $A0,X   
       ORA    $F6     
       STA    $9F     
       DEY            
       DEX            
       BPL    LF08B   
LF098: LDX    #$02    
       LDA    #$00    
       LDY    $D1     
       BMI    LF0A2   
LF0A0: LDA    $E1,X   
LF0A2: JSR    LF388   
       STA    $95,X   
       STY    $98,X   
       STX    $DB     
       DEX            
       BPL    LF0A0   
       LDX    $EB     
       LDA    LFBD6,X 
       STA    $9B     
       LDA    LFBDA,X 
       STA    $9C     
       LDY    #$0E    
       LDX    #$06    
LF0BE: LDA    ($BB),Y 
       EOR    $87     
       AND    $88     
       STA    $A7,X   
       LDA    ($B7),Y 
       STA    $AE,X   
       DEY            
       DEX            
       BPL    LF0BE   
LF0CE: LDA    INTIM   
       BNE    LF0CE   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    CXCLR   
       STA    $F8     
       JSR    LF30A   
       LDX    #$03    
       LDY    #$02    
       JSR    LF3B6   
       INX            
       LDY    #$08    
       JSR    LF3B6   
       LDA    $80     
       STA    $F8     
       LDA    #$58    
       STA    $C5     
       LDY    $C7     
       BNE    LF0FB   
       STA    $C7     
LF0FB: LDA    #$50    
       STA    $CB     
       JSR    LF30A   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    $8E     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $9B     
       AND    #$0F    
       TAX            
       LDA    $9C     
       AND    #$0F    
       TAY            
       STA    WSYNC   
       STA    HMOVE   
       NOP            
LF129: DEX            
       BPL    LF129   
       STA    RESP0   
       LDA    $9B     
       STA    HMP0    
       LDA    $9C     
       STA    HMP1    
LF136: DEY            
       BPL    LF136   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$05    
       STA    CTRLPF  
       LDY    #$1F    
       LDA    $EB     
       ASL            
       ASL            
       TAX            
LF14A: CLC            
       LDA    $DB     
       ADC    $DC     
       STA    $DB     
       STA    HMCLR   
       BCC    LF159   
       LDA    $DD     
       STA    HMBL    
LF159: LDA    #$00    
       CPY    #$09    
       BCS    LF164   
       TYA            
       LSR            
       LDA    LFBC5,Y 
LF164: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       BCS    LF178   
       LDA    LF3EF,X 
       INX            
       STA    PF0     
       STA    PF1     
       STA    PF2     
LF178: DEY            
       BNE    LF14A   
       LDX    $EB     
       CLC            
       LDA    $DB     
       ADC    $DC     
       STA    $DB     
       BCC    LF188   
       LDY    $DD     
LF188: STY    HMBL    
       LDA    #$01    
       STA    CTRLPF  
       LDA    LFBCE,X 
       LDY    LFBD2,X 
       LDX    $D4     
       STA    WSYNC   
       STA    HMOVE   
       STA    PF1     
       LDA    $8E     
       STA    COLUPF  
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    PF0     
       STY    PF2     
       STX    NUSIZ1  
       LDX    #$01    
LF1B0: CLC            
       LDA    $DB     
       ADC    $DC     
       STA    $DB     
       LDA    #$00    
       BCC    LF1BD   
       LDA    $DD     
LF1BD: STA    HMBL    
       CLC            
       LDA    $DB     
       ADC    $DC     
       STA    $DB     
       LDA    #$00    
       BCC    LF1CC   
       LDA    $DD     
LF1CC: STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       STY    $F6,X   
       LDY    $98,X   
       BNE    LF1E2   
       LDY    #$60    
       STY    $F6,X   
       STA    RESP0,X 
       STA    HMBL    
       BNE    LF1EA   
LF1E2: DEY            
       BNE    LF1E2   
       STA.w  $0024   
       STA    RESP0,X 
LF1EA: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BPL    LF1B0   
       JSR    LF3A6   
       LDA    $95     
       STA    HMP0    
       LDA    $96     
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       JSR    LF3A6   
       LDA    $F6     
       STA    HMP0    
       LDA    $F7     
       STA    HMP1    
       LDA    $E9     
       CLC            
       ADC    $F2     
       ADC    #$15    
       TAY            
       LDA    $E5     
       STA    REFP0   
       STA    WSYNC   
       STA    HMOVE   
       STA    CXCLR   
       LDX    #$14    
       STX    VDELP0  
LF221: CLC            
       LDA    $DB     
       ADC    $DC     
       STA    $DB     
       LDA    #$00    
       STA    HMCLR   
       BCC    LF230   
       LDA    $DD     
LF230: STA    HMBL    
       JSR    LF372   
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       DEX            
       BPL    LF221   
       STX    VDELP0  
       INX            
       STX    GRP1    
       BEQ    LF24B   
LF245: LDA    #$00    
       STA    GRP0    
       BEQ    LF26B   
LF24B: LDX    #$17    
LF24D: CLC            
       LDA    $DB     
       ADC    $DC     
       STA    $DB     
       LDA    #$00    
       BCC    LF25A   
       LDA    $DD     
LF25A: STA    HMBL    
       DEY            
       CPY    #$16    
       BCS    LF245   
       LDA    ($B5),Y 
       STA    GRP0    
       LDA    ($B9),Y 
       EOR    $87     
       AND    $88     
LF26B: STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       LDA    #$00    
       CPX    $92     
       BCS    LF279   
       STA    ENABL   
LF279: STA    GRP1    
       DEX            
       BPL    LF24D   
       JSR    LF372   
       LDX    WSYNC   
       STX    $85     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       LDA    $90     
       STA    COLUPF  
       LDX    #$FF    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDA    $91     
       STA    COLUBK  
       INX            
       STX    GRP1    
       LDX    #$06    
LF2A0: JSR    LF372   
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       LDA    $A7,X   
       STA    COLUP1  
       LDA    $AE,X   
       STA    GRP1    
       LDA    $A0,X   
       STA    PF2     
       DEX            
       BPL    LF2A0   
       TYA            
       SEC            
       SBC    #$08    
       STA    $F6     
       LDX    #$00    
       LDY    #$07    
LF2C2: LDA    #$00    
       STA    GRP0    
       LDA    ($BB),Y 
       EOR    $87     
       AND    $88     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP1  
       LDA    ($B7),Y 
       STA    GRP1    
       DEY            
       BMI    LF2E0   
       LDA    $A0,X   
       STA    PF2     
       INX            
       BNE    LF2C2   
LF2E0: LDA    #$00    
       STA    GRP0    
       LDX    $9A     
       BNE    LF2EA   
       LDA    #$60    
LF2EA: STA    $F8     
       LDA    COLUP1  
       ASL            
       LDA    WSYNC   
       ROR            
       STA    $86     
       LDA    $E6     
       STA    REFP1   
       LDA    $9D     
       AND    #$04    
       EOR    #$25    
       TAX            
       LDY    $8F     
       LDA    $8D     
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF405   
LF30A: STA    WSYNC   
       STA    HMOVE   
       LDA    $89     
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$00    
       STY    REFP0   
       STY    REFP1   
       LDX    #$13    
       STX    NUSIZ0  
       STA    RESP0   
       STA    RESP1   
       STX    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       STX    NUSIZ1  
       INY            
       STY    CTRLPF  
       LDA    #$07    
       STA    VDELP0  
       STA    VDELP1  
       STA    $F7     
       STA    HMCLR   
       JSR    LF39F   
       LDA    $F8     
LF33C: LDY    $F7     
       LDA    ($CF),Y 
       STA    $F6     
       LDA    ($CD),Y 
       TAX            
       LDA    ($C5),Y 
       ORA    $F8     
       STA    HMOVE   
       STA    GRP0    
       LDA    ($C7),Y 
       STA    GRP1    
       LDA    ($C9),Y 
       STA    GRP0    
       LDA    ($CB),Y 
       LDY    $F6     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $F7     
       BPL    LF33C   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

LF372: DEY            
       CPY    #$16    
       BCS    LF382   
       LDA    ($B5),Y 
       STA    GRP0    
       LDA    ($B9),Y 
       EOR    $87     
       AND    $88     
LF381: RTS            

LF382: LDA    #$00    
       STA    GRP0    
       BEQ    LF381   
LF388: TAY            
       INY            
       TYA            
       AND    #$0F    
       STA    $F6     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $F6     
       CMP    #$0F    
       BCC    LF39F   
       SBC    #$0F    
       INY            
LF39F: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LF3A6: CLC            
       LDA    $DB     
       ADC    $DC     
       STA    $DB     
       LDA    #$00    
       BCC    LF3B3   
       LDA    $DD     
LF3B3: STA    HMBL    
       RTS            

LF3B6: LDA    $D5,X   
       AND    #$F0    
       LSR            
       STA.wy $00C5,Y 
       LDA    $D5,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00C7,Y 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF3CD: LDA    #$07    
       STA    AUDC1   
       LDA    #$99    
LF3D3: SED            
       CLC            
       ADC    $D7     
       STA    $D7     
       LDA    $D6     
       SBC    #$00    
       STA    $D6     
       LDA    $D5     
       SBC    #$00    
       BCS    LF3EB   
       LDA    #$00    
       STA    $D6     
       STA    $D7     
LF3EB: STA    $D5     
       CLD            
       RTS            

LF3EF: .byte $FF,$CF,$83,$01,$7F,$3D,$18,$00,$FF,$FE,$BC,$18,$FE,$FC,$78,$30
LF3FF: LDA    #$00    
       STA    GRP0    
       BEQ    LF42E   
LF405: STA    COLUBK  
       STY    COLUPF  
       LDA    #$00    
       STA    GRP1    
       LDA    #$FF    
       STA    PF1     
       LDA    $9F     
       STA    PF2     
       STX    CTRLPF  
       LDY    $F6     
       LDA    #$90    
       STA.w  $0024   
       CPY    #$16    
       STA    RESBL   
       BCS    LF3FF   
       LDA    ($B5),Y 
       STA    GRP0    
       LDA    ($B9),Y 
       EOR    $87     
       AND    $88     
LF42E: LDX    $9A     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       BEQ    LF438   
LF438: BEQ    LF43A   
LF43A: LDA    #$00    
       STA    GRP1    
LF43E: DEX            
       BPL    LF43E   
       STA.w  $0011   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       DEY            
       CPY    #$16    
       BCS    LF45B   
       LDA    ($B9),Y 
       EOR    $87     
       AND    $88     
       STA    COLUP0  
       LDA    ($B5),Y 
       STA    GRP0    
LF45B: LDA    #$00    
       STA    GRP1    
       LDA    $97     
       STA    HMP1    
       LDX    #$0B    
       DEY            
LF466: DEY            
       CPY    #$16    
       BCS    LF495   
       LDA    ($B5),Y 
       STA    GRP0    
       LDA    ($B9),Y 
       EOR    $87     
       AND    $88     
LF475: STA    WSYNC   
       STA    HMOVE   
       STA    COLUP0  
       LDA    #$00    
       STA    GRP1    
       LDA    LFBF3,X 
       AND    $9D     
       STA    ENABL   
       DEX            
       BMI    LF4A1   
       LDA    $F8     
       STA    HMCLR   
       STA    HMP1    
       LDA    #$0F    
       STA    $F8     
       BNE    LF466   
LF495: LDA    #$00    
       STA    GRP0    
       BEQ    LF475   
LF49B: LDA    #$00    
       STA    GRP0    
       BEQ    LF4B2   
LF4A1: DEY            
       STY    $F6     
       CPY    #$16    
       BCS    LF49B   
       LDA    ($B5),Y 
       STA    GRP0    
       LDA    ($B9),Y 
       EOR    $87     
       AND    $88     
LF4B2: LDY    #$0F    
       STA    $F7     
       LDA    ($BD),Y 
       LDX    #$00    
       STX    NUSIZ1  
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    $F7     
       STA    COLUP0  
       STX    PF0     
       LDA    #$42    
       AND    $88     
       STA    COLUP1  
       STX    PF1     
       STX    PF2     
       LDA    $9D     
       STA    ENABL   
       DEY            
       STY    $F7     
       LDX    $F6     
LF4DB: DEX            
       TXA            
       TAY            
       CPY    #$16    
       BCS    LF537   
       LDA    ($B5),Y 
       STA    GRP0    
       LDA    ($B9),Y 
LF4E8: EOR    $87     
       AND    $88     
       LDY    $F7     
       STA    HMOVE   
       STA    COLUP0  
       LDA    ($BD),Y 
       STA    GRP1    
       LDA    ($BF),Y 
       AND    $88     
       STA    COLUP1  
       LDA    LFBF3,Y 
       AND    $9D     
       STA    ENABL   
       DEC    $F7     
       BPL    LF4DB   
       NOP            
LF508: DEX            
       TXA            
       TAY            
       CPY    #$16    
       BCS    LF53E   
       LDA    ($B5),Y 
       STA    GRP0    
       LDA    ($B9),Y 
LF515: EOR    $87     
       AND    $88     
       LDY    $F8     
       STA    HMOVE   
       STA    COLUP0  
       LDA    ($C1),Y 
       STA    GRP1    
       LDA    ($C3),Y 
       AND    $88     
       STA    COLUP1  
       LDA    LFBF3,Y 
       AND    $9D     
       STA.w  $001F   
       DEC    $F8     
       BPL    LF508   
       BMI    LF546   
LF537: LDA    #$00    
       STA    GRP0    
       NOP            
       BEQ    LF4E8   
LF53E: LDA    #$00    
       STA    GRP0    
       NOP            
       NOP            
       BEQ    LF515   
LF546: LDX    #$FF    
       STA    WSYNC   
       STA    HMOVE   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       INX            
       STX    ENABL   
       STX    GRP0    
       STX    GRP1    
       STX    GRP0    
       STX    $F8     
       LDY    #$08    
       LDA    $9E     
       LDX    $E0     
       BEQ    LF567   
       LDA    #$00    
LF567: LSR            
       LSR            
       LSR            
       CMP    #$10    
       BCS    LF577   
       LDY    #$00    
       CMP    #$0C    
       BCC    LF577   
       SBC    #$0C    
       TAY            
LF577: TYA            
       CLC            
       ADC    #$A8    
       LDX    #$0A    
LF57D: STA    WSYNC   
       STA    HMOVE   
       STA    $C5,X   
       SEC            
       SBC    #$10    
       DEX            
       DEX            
       BPL    LF57D   
       LDA    $8D     
       STA    COLUPF  
       JSR    LF30A   
       LDA    #$00    
       BEQ    LF59B   
       DEC    $9E     
       BNE    LF59B   
       DEC    $9E     
LF59B: LDA    #$40    
       LDX    #$82    
       STA    WSYNC   
       STA    TIM64T  
       STX    VBLANK  
       LDA    $E0     
       CMP    #$52    
       BNE    LF5D6   
       LDA    $80     
       BEQ    LF5D6   
       ASL            
       ASL            
       STA    $80     
       LDA    #$00    
       STA    $E5     
       STA    $9E     
       STA    CXCLR   
       LDY    #$DF    
       STY    $E8     
       LDA    #$14    
       STA    $E1     
       LDX    #$20    
       LDA    $E9     
       CMP    #$47    
       BCC    LF5D2   
       LDY    #$40    
       LDA    #$4C    
       STA    $E3     
LF5D2: STX    $E7     
       STY    $E9     
LF5D6: LDY    #$00    
       LDX    $E0     
       BEQ    LF5F1   
       INC    $F3     
       LDA    $F3     
       AND    #$03    
       BNE    LF5E6   
       INC    $E0     
LF5E6: LDA    LFC35,X 
       BPL    LF5ED   
       STY    $E0     
LF5ED: STA    AUDF0   
       LDY    #$05    
LF5F1: STY    AUDC0   
       LDA    #$04    
       STA    AUDV0   
       LDA    $EC     
       BNE    LF641   
       LDA    $E9     
       CMP    #$20    
       BNE    LF641   
       LDX    $94     
       CPX    #$04    
       BNE    LF60E   
       NOP            
       NOP            
       NOP            
       NOP            
       DEX            
       BNE    LF614   
LF60E: CPX    #$03    
       BCC    LF614   
       LDX    #$02    
LF614: TXA            
       ASL            
       ASL            
       ASL            
       TAX            
       LDY    #$03    
LF61B: LDA    LFCD7,X 
       BEQ    LF641   
       CLC            
       ADC    $F4     
       CMP    $E1     
       BCS    LF631   
       LDA    LFCD8,X 
       SEC            
       SBC    $F4     
       CMP    $E1     
       BCS    LF638   
LF631: INX            
       INX            
       DEY            
       BPL    LF61B   
       BMI    LF641   
LF638: INC    $E9     
       LDX    #$20    
       STX    $E7     
       DEX            
       STX    $E8     
LF641: LDA    $F5     
       BNE    LF658   
       BIT    $85     
       BVC    LF658   
       LDA    $E7     
       BEQ    LF658   
       LDX    $EA     
       BNE    LF658   
       STX    $E7     
       INX            
       STX    $EA     
       STX    $E0     
LF658: LDA    INTIM   
       BNE    LF658   
       STA    AUDC1   
       LDY    #$82    
       STY    WSYNC   
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $D2     
       BNE    LF678   
       INC    $D1     
       BNE    LF678   
       SEC            
       ROR    $D1     
LF678: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF683   
       LDY    #$0F    
LF683: TYA            
       LDY    #$00    
       BIT    $D1     
       BPL    LF68E   
       AND    #$F7    
       LDY    $D1     
LF68E: STY    $87     
       ASL    $87     
       STA    $88     
       LDA    #$40    
       STA    WSYNC   
       STA    TIM64T  
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $83     
       CMP    #$0F    
       BEQ    LF6B4   
       LDX    #$00    
       STX    $D1     
       LDA    $D8     
       CMP    #$20    
       BNE    LF6B4   
       STX    $9E     
LF6B4: LDA    SWCHB   
       LSR            
       BCS    LF6BF   
       LDX    #$D1    
       JMP    LF004   
LF6BF: LDA    $9E     
       BEQ    LF6C6   
       JMP    LF9DC   
LF6C6: INC    $D3     
       LDA    $82     
       ASL            
       EOR    $82     
       ASL            
       ROL    $82     
       LDA    $EC     
       BNE    LF717   
       LDX    $E7     
       BEQ    LF717   
       LDA    $E9     
       SEC            
       SBC    LFECA,X 
       STA    $E9     
       INC    $E7     
       LDA    $E7     
       CMP    #$21    
       BCC    LF6EC   
       LDA    #$20    
       STA    $E7     
LF6EC: LDX    $E9     
       CPX    #$20    
       BEQ    LF711   
       LDY    $9D     
       BEQ    LF703   
       CPX    #$22    
       BNE    LF703   
       LDA    #$53    
       STA    $E0     
       LDA    #$00    
       JSR    LF3D3   
LF703: CPX    #$56    
       BEQ    LF711   
       CPX    #$36    
       BNE    LF717   
       TYA            
       BNE    LF717   
       JMP    LFCCC   
LF711: LDA    #$00    
       STA    $E7     
       STA    $F5     
LF717: DEC    $DA     
       BPL    LF73A   
       LDA    #$3B    
       STA    $DA     
       SED            
       LDA    $D9     
       SEC            
       SBC    #$01    
       BCS    LF729   
       LDA    #$59    
LF729: STA    $D9     
       LDA    $D8     
       SBC    #$00    
       STA    $D8     
       CLD            
       LDA    $D8     
       ORA    $D9     
       BNE    LF73A   
       DEC    $9E     
LF73A: LDA    COLUP1  
       BMI    LF744   
       LDA    #$00    
       STA    $F2     
       BEQ    LF7A9   
LF744: LDA    $E9     
       CMP    #$40    
       BCS    LF7AC   
       LDA    $EA     
       BNE    LF7A9   
       LDA    $94     
       CMP    #$04    
       BEQ    LF7A9   
       CMP    #$05    
       BNE    LF781   
       JSR    LFCA9   
       BNE    LF7A9   
       STA    $ED,X   
       DEC    $F1     
       BPL    LF765   
       DEC    $9E     
LF765: LDA    $93     
       AND    #$03    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$20    
       SED            
       ADC    $D6     
       STA    $D6     
       LDA    #$00    
       ADC    $D5     
       STA    $D5     
       CLD            
       LDA    #$25    
       STA    $E0     
       BNE    LF7A9   
LF781: LDA    $93     
       CMP    #$06    
       BCC    LF78A   
LF787: JMP    LFCCC   
LF78A: LDA    $EC     
       BEQ    LF792   
       INC    $EC     
       BNE    LF7A6   
LF792: LDA    $E9     
       CMP    #$21    
       BCS    LF7A9   
       LDA    #$05    
       STA    $F2     
       LDA    $93     
       AND    #$04    
       BNE    LF7A6   
       LDA    #$0F    
       STA    $83     
LF7A6: JSR    LF3CD   
LF7A9: JMP    LF7D0   
LF7AC: LDA    $BD     
       CMP    #$B0    
       BNE    LF787   
       LDA    #$01    
       STA    AUDC1   
       LDA    $E1     
       CMP    #$8C    
       BCS    LF7C4   
       CMP    #$0D    
       BCC    LF7CA   
       CMP    #$50    
       BCS    LF7CA   
LF7C4: INC    $E1     
       LDX    #$07    
       BNE    LF7CE   
LF7CA: DEC    $E1     
       LDX    #$0B    
LF7CE: STX    $E8     
LF7D0: LDA    $DF     
       ASL            
       LDA    $DE     
       ROL            
       BPL    LF7DA   
       EOR    #$FF    
LF7DA: STA    $DC     
       LDY    #$F0    
       LDA    $DE     
       BMI    LF7E4   
       LDY    #$10    
LF7E4: STY    $DD     
       SEC            
       LDA    #$8F    
       SBC    $DC     
       CLC            
       ADC    $DF     
       STA    $DF     
       BCC    LF7F8   
       LDA    $DE     
       ADC    #$03    
       STA    $DE     
LF7F8: LDA    $DC     
       LSR            
       LSR            
       LSR            
       CMP    #$05    
       BCS    LF803   
       LDA    #$06    
LF803: ADC    #$04    
       STA    $92     
       LDA    $E7     
       BEQ    LF80F   
       CMP    #$03    
       BCC    LF830   
LF80F: ORA    $EC     
       ORA    $F2     
       ORA    $EA     
       BNE    LF834   
       LDA    REFP1   
       AND    #$80    
       CMP    $84     
       STA    $84     
       BEQ    LF834   
       TAX            
       BMI    LF834   
       LDA    #$01    
       STA    $E7     
       STA    $D1     
       LDA    #$20    
       STA    $E0     
       DEC    $E9     
LF830: LDA    $83     
       STA    $E8     
LF834: LDA    $EA     
       BEQ    LF850   
       LDA    $83     
       AND    #$02    
       BNE    LF850   
       STA    $EA     
       LDA    #$10    
       STA    $E7     
       STA    $F5     
       LDY    #$07    
       LDA    $DD     
       BMI    LF84E   
       LDY    #$0B    
LF84E: STY    $E8     
LF850: LDA    $EC     
       BNE    LF884   
       LDA    $9D     
       BEQ    LF884   
       LDA    $E1     
       SEC            
       SBC    #$44    
       CMP    #$0F    
       BCS    LF884   
       LDA    $E9     
       CMP    #$54    
       BCC    LF870   
       LDA    $83     
       LSR            
       BCS    LF870   
       LDA    #$15    
       BNE    LF87E   
LF870: LDA    $E9     
       CMP    #$20    
       BNE    LF884   
       LDA    $83     
       AND    #$02    
       BNE    LF884   
       LDA    #$0C    
LF87E: STA    $EC     
       LDA    #$4C    
       STA    $E1     
LF884: LDA    $EA     
       BEQ    LF89F   
       LDA    $DC     
       LSR            
       LSR            
       CLC            
       LDY    $DD     
       BMI    LF894   
       EOR    #$FF    
       SEC            
LF894: ADC    #$4B    
       STA    $E1     
       LDA    #$29    
       SEC            
       SBC    $92     
       STA    $E9     
LF89F: LDA    $EC     
       BEQ    LF8E0   
       LDA    #$00    
       STA    $E7     
       LDA    $D3     
       AND    #$07    
       BNE    LF8D5   
       LDA    $83     
       LSR            
       BCS    LF8B4   
       DEC    $EC     
LF8B4: LSR            
       BCS    LF8B9   
       INC    $EC     
LF8B9: LDA    $EC     
       CMP    #$0B    
       BCS    LF8C5   
       LDA    #$0F    
       STA    $E8     
       LDA    #$0B    
LF8C5: CMP    #$16    
       BCC    LF8D3   
       LDA    #$00    
       LDX    #$05    
       STX    $E4     
       LDX    #$56    
       STX    $E9     
LF8D3: STA    $EC     
LF8D5: LDA    $EC     
       BEQ    LF8E0   
       ASL            
       SEC            
       ROL            
       ADC    #$01    
       STA    $E9     
LF8E0: LDA    $EA     
       BNE    LF947   
       LDA    $EC     
       CMP    #$0C    
       BCS    LF947   
       LDA    $D3     
       AND    #$03    
       TAX            
       LSR            
       BCS    LF947   
       LDA    $E8     
       LDY    $E7     
       BNE    LF8FA   
       LDA    $83     
LF8FA: LSR            
       LSR            
       LSR            
       BCS    LF90E   
       DEC    $E1     
       LDY    #$08    
       STY    $E5     
       CPX    #$00    
       BNE    LF90B   
       DEC    $E4     
LF90B: JMP    LF91D   
LF90E: LSR            
       BCS    LF91D   
       INC    $E1     
       LDY    #$00    
       STY    $E5     
       CPX    #$00    
       BNE    LF91D   
       DEC    $E4     
LF91D: LDX    #$00    
       LDA    $E9     
       CMP    #$40    
       BCC    LF927   
       LDX    #$02    
LF927: LDA    $E1     
       CMP    #$08    
       BCS    LF934   
       JSR    LFAAB   
       LDA    #$94    
       STA    $E1     
LF934: CMP    #$95    
       BCC    LF93F   
       JSR    LFEAD   
       LDA    #$08    
       STA    $E1     
LF93F: LDA    $E4     
       BPL    LF947   
       LDA    #$04    
       STA    $E4     
LF947: LDA    $9D     
       BNE    LF968   
       LDX    #$00    
       LDA    $E1     
       SEC            
       SBC    $E3     
       BEQ    LF968   
       BCS    LF958   
       LDX    #$08    
LF958: LDA    $D3     
       AND    #$07    
       BNE    LF966   
       INC    $E3     
       BCS    LF966   
       DEC    $E3     
       DEC    $E3     
LF966: STX    $E6     
LF968: LDA    $EC     
       CMP    #$0B    
       BNE    LF985   
       LDA    $83     
       AND    #$0C    
       CMP    #$0C    
       BEQ    LF985   
       LDA    $83     
       STA    $E8     
       LDA    #$01    
       STA    $E7     
       LSR            
       STA    $EC     
       LDA    #$1F    
       STA    $E9     
LF985: LDX    $E4     
       LDA    $83     
       AND    #$0C    
       CMP    #$0C    
       BNE    LF991   
       LDX    #$05    
LF991: LDA    $E9     
       CMP    #$1F    
       BNE    LF99B   
       LDX    #$03    
       BNE    LF9B1   
LF99B: CMP    #$56    
       BEQ    LF9B1   
       CMP    #$20    
       BEQ    LF9B1   
       LDX    #$00    
       BCC    LF9B1   
       CMP    #$3C    
       BCS    LF9B1   
       LDA    $EC     
       BNE    LF9B1   
       LDX    #$05    
LF9B1: LDA    $EA     
       BEQ    LF9B7   
       LDX    #$06    
LF9B7: LDA    $EC     
       BEQ    LF9C1   
       AND    #$01    
       CLC            
       ADC    #$07    
       TAX            
LF9C1: LDA    $F2     
       BEQ    LF9C7   
       LDX    #$00    
LF9C7: STX    $E4     
       LDA    LFEC2,X 
       STA    $B5     
       LDA    #$FB    
       STA    $B6     
       LDA    #$21    
       CPX    #$07    
       BCC    LF9DA   
       LDA    #$21    
LF9DA: STA    $B9     
LF9DC: LDA    $93     
       TAX            
       LDY    $94     
       LDA    LFCA1,Y 
       STA    ENABL   
       CPY    #$05    
       BNE    LF9FA   
       JSR    LFCA9   
       BEQ    LF9F3   
       LDX    #$0C    
       BNE    LF9FA   
LF9F3: LDA    $93     
       AND    #$03    
       ORA    #$08    
       TAX            
LF9FA: LDA    $82     
       AND    LFFD9,X 
       STA    $F6     
       LDA    LFEEB,X 
       CLC            
       ADC    $F6     
       STA    $B7     
       LDA    LFFCD,X 
       STA    $D4     
       LDA    LFFC1,X 
       STA    $BB     
       LDY    $94     
       LDA    LFFEE,Y 
       BEQ    LFA30   
       LDA    #$60    
       BIT    $D3     
       BPL    LFA22   
       LDA    #$70    
LFA22: STA    $B7     
       LDA    #$30    
       STA    $BB     
       LDA    $93     
       STA    ENABL   
       LDA    #$03    
       STA    $D4     
LFA30: LDA    $9E     
       BNE    LFA60   
       LDA    LFFEE,Y 
       BNE    LFA60   
       CPY    #$05    
       BEQ    LFA60   
       LDA    $E2     
       ASL            
       ASL            
       ASL            
       AND    #$30    
       CMP    #$30    
       AND    #$10    
       ADC    $B7     
       STA    $B7     
       LDA    $D3     
       LSR            
       BCS    LFA60   
       LDA    $93     
       CMP    #$04    
       BCS    LFA60   
       LDX    $E2     
       BNE    LFA5D   
       LDX    #$A0    
LFA5D: DEX            
       STX    $E2     
LFA60: JSR    LFCBF   
       INX            
LFA64: LDA    $C5,X   
       BNE    LFA72   
       LDA    #$58    
       STA    $C5,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LFA64   
LFA72: JMP    LF00F   
LFA75: LDX    #$01    
       STX    $82     
LFA79: LDA    #$04    
       STA    AUDV0,X 
       LDA    #$10    
       STA    AUDF0,X 
       DEX            
       BPL    LFA79   
       STX    $9E     
       STA    $E1     
       ASL            
       STA    $E9     
       STA    $D6     
       STA    $D8     
       LDX    #$1B    
LFA91: LDA    LFE91,X 
       STA    $B5,X   
       DEX            
       BPL    LFA91   
       LDA    #$3B    
       STA    $DA     
       LDA    #$1F    
       STA    $F1     
       LDA    #$A0    
       STA    $80     
       LDA    #$C4    
       STA    $81     
       BNE    LFABE   
LFAAB: LDA    $81     
       ASL            
       EOR    $81     
       ASL            
       EOR    $81     
       ASL            
       ASL            
       ROL            
       EOR    $81     
       LSR            
       ROR    $81     
       DEX            
       BPL    LFAAB   
LFABE: LDA    #$7C    
       STA    $E2     
       LDA    $81     
       LSR            
       LSR            
       LSR            
       PHA            
       AND    #$07    
       STA    $94     
       PLA            
       LSR            
       LSR            
       LSR            
       STA    $EB     
       LDA    $81     
       AND    #$07    
       STA    $93     
       LDX    #$4C    
       LDY    #$00    
       LDA    $94     
       CMP    #$02    
       BCS    LFAED   
       LDY    #$FF    
       LDX    #$11    
       LDA    $81     
       ASL            
       BCC    LFAED   
       LDX    #$88    
LFAED: STY    $9D     
       STX    $E3     
       LDX    $94     
       LDA    LFFEE,X 
       BEQ    LFAFC   
       LDA    #$3C    
       STA    $E2     
LFAFC: RTS            

LFAFD: .byte $00,$00,$00,$00,$00,$00,$00,$83,$E2,$32,$3E,$3C,$38,$38,$B8,$BC
       .byte $FE,$78,$38,$30,$38,$38,$30,$3C,$00,$00,$00,$00,$81,$C1,$61,$61
       .byte $37,$3E,$1C,$1C,$1C,$3E,$3F,$3D,$1C,$18,$1C,$1C,$18,$1E,$00,$00
       .byte $60,$42,$44,$44,$42,$66,$3E,$3C,$38,$38,$3C,$3C,$38,$38,$38,$30
       .byte $38,$38,$30,$3C,$00,$00,$18,$10,$50,$50,$7C,$14,$1C,$38,$38,$38
       .byte $3C,$3C,$38,$38,$38,$30,$38,$38,$30,$3C,$00,$00,$07,$84,$84,$E4
       .byte $24,$3C,$38,$38,$38,$38,$3E,$7A,$78,$78,$38,$30,$38,$38,$30,$3C
       .byte $00,$38,$30,$38,$30,$30,$30,$30,$30,$30,$38,$38,$78,$78,$38,$38
       .byte $38,$30,$38,$38,$30,$3C,$00,$00,$00,$00,$00,$00,$00,$7F,$F9,$E0
       .byte $E0,$E0,$E0,$E0,$E0,$F8,$C8,$E8,$E8,$C0,$E0,$C0,$00,$C6,$44,$C6
       .byte $82,$C6,$7C,$7C,$38,$38,$38,$7C,$FC,$BA,$BA,$92,$BA,$38,$38,$38
       .byte $00,$00,$00,$6C,$28,$28,$28,$28,$28,$38,$38,$38,$38,$7C,$7C,$7C
       .byte $7C,$38,$10,$38,$38,$38,$38,$18
LFBC5: .byte $18,$7E,$DB,$99,$99,$99,$99,$99,$99
LFBCE: .byte $88,$22,$08,$04
LFBD2: .byte $01,$04,$11,$22
LFBD6: .byte $43,$C3,$34,$F4
LFBDA: .byte $F2,$72,$00,$40
LFBDE: .byte $7F,$7F,$7F,$FF,$FF,$FF,$FF,$FF,$7C,$7C,$7C,$FF,$FF,$FF,$FF,$FF
       .byte $00,$01,$03,$0F,$7F
LFBF3: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF
LFC06: .byte $00,$04,$08,$10,$1C,$D2,$D2,$D2,$D2,$D2,$D2,$D2,$D2,$D2,$D2,$D2
       .byte $D2,$C8,$C8,$C8,$C8,$C8,$C8,$4A,$4A,$4A,$12,$EE,$EE,$EE,$EE,$EE
       .byte $EE,$EE,$EE,$EE,$44,$44,$EE,$EE,$EE,$EE,$EE,$EE,$EE,$EE,$EE
LFC35: .byte $00,$08,$09,$09,$0A,$0A,$0B,$0B,$0B,$0C,$0C,$0C,$0D,$0D,$0D,$0D
       .byte $0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F,$0F,$10,$10,$10,$10,$10,$10,$10
       .byte $80,$04,$06,$06,$84,$13,$13,$0E,$0B,$09,$09,$09,$0B,$09,$09,$09
       .byte $89,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1A,$1A,$19,$19,$19,$19
       .byte $19,$19,$1D,$1D,$1D,$1D,$1D,$14,$15,$14,$15,$14,$15,$14,$15,$14
       .byte $15,$14,$95,$18,$19,$1A,$1B,$1C,$1D,$1E,$9F
LFC90: .byte $00,$0F
LFC92: .byte $0F,$00,$0F
LFC95: .byte $80,$80,$82,$02,$00,$80,$82,$02,$00,$00,$02,$02
LFCA1: .byte $00,$00,$02,$02,$02,$00,$02,$00
LFCA9: LDA    $81     
       ROL            
       ROL            
       ROL            
       AND    #$03    
       TAX            
       LDY    $93     
       LDA    LFEF8,Y 
       TAY            
       AND    $ED,X   
       PHP            
       TYA            
       ORA    $ED,X   
       PLP            
       RTS            

LFCBF: LDX    #$02    
LFCC1: TXA            
       ASL            
       ASL            
       TAY            
       JSR    LF3B6   
       DEX            
       BPL    LFCC1   
       RTS            

LFCCC: LDA    #$31    
       STA    $E0     
       LDA    #$84    
       STA    $9E     
       JMP    LF9DC   
LFCD7: .byte $48
LFCD8: .byte $4F,$00,$00,$00,$00,$00,$00,$2C,$33,$48,$4F,$65,$6B,$00,$00,$2C
       .byte $6B,$00,$00,$00,$00,$00,$00,$2C,$37,$40,$47,$50,$57,$60,$6B,$2C
       .byte $2C,$40,$40,$50,$50,$60,$60,$00,$00,$00,$00,$00,$00,$CD,$FF,$FE
       .byte $6C,$20,$30,$18,$08,$08,$38,$00,$00,$00,$00,$00,$00,$93,$FE,$FC
       .byte $D0,$C0,$40,$60,$20,$20,$E0,$00,$00,$DB,$49,$7F,$7F,$7F,$79,$41
       .byte $79,$51,$79,$48,$00,$00,$00,$00,$00,$DB,$49,$7F,$7F,$7F,$79,$69
       .byte $79,$52,$7A,$48,$00,$00,$00,$00,$00,$04,$24,$B4,$98,$DA,$7E,$3C
       .byte $FE,$9A,$BA,$3A,$38,$00,$00,$00,$00,$20,$A0,$B4,$9A,$DA,$7E,$3C
       .byte $FE,$92,$BA,$B8,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7E,$FF
       .byte $7E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7E,$FF
       .byte $7E,$00,$00,$00,$00,$00,$00,$00,$00,$3E,$77,$77,$63,$7B,$63,$6F
       .byte $63,$36,$36,$1C,$08,$1C,$36,$00,$81,$B1,$A3,$FE,$7E,$7E,$FE,$8F
       .byte $84,$47,$27,$00,$00,$00,$00,$00,$42,$4A,$89,$FF,$7E,$7E,$FE,$8F
       .byte $87,$47,$47,$00,$00,$00,$00,$00,$FE,$BA,$BA,$BA,$FE,$EE,$EE,$EE
       .byte $FE,$BA,$BA,$BA,$FE,$EE,$EE,$EE,$00,$FE,$FF,$FF,$FF,$FF,$7E,$3F
       .byte $1E,$04,$00,$00,$00,$00,$00,$00,$00,$FE,$FF,$FF,$FF,$FF,$7E,$3F
       .byte $1E,$04,$00,$81,$4A,$10,$00,$00,$00,$00,$10,$38,$38,$7C,$7C,$FE
       .byte $7C,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$32,$32,$32,$32,$32,$32,$32,$32
       .byte $32,$32,$32,$32,$32,$32,$32,$32,$10,$10,$10,$10,$10,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$00,$04,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$42,$42,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $04,$04,$04,$04,$12,$04,$04,$04,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
       .byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$06,$42,$42,$42,$06,$42,$42,$42
       .byte $06,$42,$42,$42,$06,$42,$42,$42,$44,$44,$44,$44,$44,$44,$44,$44
       .byte $2E,$2E,$2E,$2E,$2E,$2E,$2E,$2E,$2E,$44,$44,$44,$44,$44,$44,$44
       .byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
LFE91: .byte $6E,$FB,$00,$FD,$21,$FC,$00,$FE,$B0,$FD,$60,$FE,$B0,$FD,$60,$FE
       .byte $58,$FF,$58,$FF,$10,$FF,$00,$FF,$00,$FF,$00,$FF
LFEAD: LDA    $81     
       ASL            
       EOR    $81     
       ASL            
       EOR    $81     
       ASL            
       ASL            
       EOR    $81     
       ASL            
       ROL    $81     
       DEX            
       BPL    LFEAD   
       JMP    LFABE   
LFEC2: .byte $00,$16,$2C,$42,$58,$6E,$84,$9A
LFECA: .byte $B0,$01,$01,$01,$01,$01,$01,$01,$00,$01,$00,$00,$01,$00,$00,$00
       .byte $01,$FF,$00,$00,$00,$FF,$00,$00,$FF,$00,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF
LFEEB: .byte $00,$00,$00,$00,$00,$00,$20,$40,$80,$C0,$C0,$E0,$F0
LFEF8: .byte $80,$40,$20,$10,$08,$04,$02,$01,$3C,$66,$66,$66,$66,$66,$66,$3C
       .byte $3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C
       .byte $3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C
       .byte $18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C
       .byte $3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$18,$18,$00,$00,$18,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$11,$11,$11,$11,$11,$7C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$E4,$14,$14,$15,$15,$16,$E4
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$41,$40,$40,$40,$40,$C0,$41
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$E3,$94,$94,$E4,$94,$94,$E3
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$84,$44,$44,$44,$4A,$51,$91
LFFB8: .byte $0C,$0C,$32,$B6,$00,$10,$24,$2A,$B4
LFFC1: .byte $00,$00,$00,$00,$00,$00,$10,$20,$40,$81,$71,$6E
LFFCD: .byte $00,$01,$02,$06,$00,$06,$00,$00,$00,$00,$00,$00
LFFD9: .byte $00,$00,$00,$00,$00,$00,$10,$10,$00,$10,$10,$00,$00
LFFE6: .byte $00,$08,$10,$10,$10,$80,$80,$80
LFFEE: .byte $00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0
       .byte $00,$00
