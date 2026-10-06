; Disassembly of roms/Kool Aid Man.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Kool Aid Man.bin
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
HMM0    =  $22
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF803   =   $F803

       ORG $F000
LF000: .byte $02
LF001: .byte $7E,$66,$66,$66,$66,$7E,$7E,$18,$18,$18,$18,$78,$7E,$60,$7E,$06
       .byte $66,$7E,$7E,$06,$06,$7C,$06,$7E,$06,$06,$7E,$66,$66,$66,$7E,$66
       .byte $06,$7E,$60,$7E,$7E,$66,$66,$7E,$60,$7E,$20,$30,$18,$0C,$06,$7E
       .byte $7E,$66,$66,$3C,$66,$7E,$7E,$06,$7E,$66,$66,$7E
LF03D: LDA    $D6     
       AND    #$01    
       BEQ    LF048   
       LDA    #$8F    
       JMP    LF04F   
LF048: LDA    $D6     
       LSR            
       TAX            
       LDA    LFA78,X 
LF04F: LDY    #$00    
       LDX    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       STY    CTRLPF  
       LDA    #$D0    
       STA    HMP0    
       LDA    #$20    
       STA    HMP1    
       LDY    LF000   
LF066: NOP            
       DEY            
       BNE    LF066   
       STA    RESP0   
       STA    RESP1   
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    COLUPF  
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    REFP0   
       STA    REFP1   
       LDY    #$05    
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMCLR   
LF09C: LDA    LF001,Y 
       TAX            
       LDA    ($BF),Y 
       STA    WSYNC   
       STA    HMOVE   
       STY    $BD     
       STA    GRP0    
       LDA    ($C1),Y 
       STA    GRP1    
       LDA    ($C3),Y 
       STA    GRP0    
       LDA    ($C5),Y 
       STA    $BE     
       LDA    LF001,Y 
       LDY    $BE     
       STY    GRP1    
       STA    GRP0    
       STX    GRP1    
       STX    GRP0    
       LDY    $BD     
       DEY            
       BPL    LF09C   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LF0D7: .byte $F0,$0F,$F0,$0F
LF0DB: LDX    #$03    
LF0DD: TXA            
       LSR            
       TAY            
       LDA.wy $0080,Y 
       AND    LF0D7,X 
       CPX    #$03    
       BEQ    LF0F2   
       CPX    #$01    
       BEQ    LF0F2   
       LSR            
       LSR            
       LSR            
       LSR            
LF0F2: TAY            
       CLC            
       LDA    #$01    
       ADC    LFA6E,Y 
       STA    $BD     
       LDA    #$F0    
       ADC    #$00    
       STA    $BE     
       TXA            
       ASL            
       TAY            
       LDA    $BD     
       STA.wy $00BF,Y 
       LDA    $BE     
       STA.wy $00C0,Y 
       DEX            
       BPL    LF0DD   
       RTS            

LF112: LDX    #$01    
LF114: TXA            
       LSR            
       TAY            
       LDA    $B5     
       AND    LF0D7,X 
       CPX    #$01    
       BEQ    LF124   
       LSR            
       LSR            
       LSR            
       LSR            
LF124: TAY            
       CLC            
       LDA    #$01    
       ADC    LFA6E,Y 
       STA    $BD     
       LDA    #$F0    
       ADC    #$00    
       STA    $BE     
       TXA            
       ASL            
       TAY            
       LDA    $BD     
       STA.wy $00C8,Y 
       LDA    $BE     
       STA.wy $00C9,Y 
       DEX            
       BPL    LF114   
       RTS            

LF144: LDY    #$22    
       LDX    #$22    
LF148: LDA    LF153,X 
       STA.wy $0093,Y 
       DEY            
       DEX            
       BPL    LF148   
       RTS            

LF153: .byte $46,$5C,$50,$5D,$4B,$54,$14,$EC,$E2,$1E,$14,$E7,$03,$03,$03,$03
       .byte $03,$03,$06,$06,$06,$06,$06,$06,$14,$14,$FF,$FF,$FF,$FF,$80,$7F
       .byte $FF,$50,$60

START:
LF176: CLD            
       LDX    #$00    
       TXA            
LF17A: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF17A   
       LDA    #$05    
       STA    $B6     
       LDA    #$14    
       STA    $DB     
       LDA    #$FF    
       STA    $E4     
       STA    $E5     
       LDX    #$13    
LF190: STA    $BD,X   
       DEX            
       BPL    LF190   
       STA    $D5     
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$08    
       STA    REFP0   
       LDA    #$34    
       STA    COLUP0  
       JSR    LF144   
LF1A6: STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       LDA    #$1D    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCC    LF176   
       LDA    SWCHB   
       ASL            
       STA    $DD     
       BPL    LF1C9   
       LDA    #$00    
       STA.w  $0019   
       STA.w  $001A   
       BPL    LF1FA   
LF1C9: INC    $82     
       JSR    LF711   
       LDA    $D5     
       BPL    LF1DB   
       JSR    LFFF0   
       JSR    LF7A2   
       JMP    LF1FD   
LF1DB: LDA    $D9     
       BEQ    LF1E1   
       DEC    $D9     
LF1E1: LDA    $D1     
       BMI    LF1E8   
       JSR    LF89A   
LF1E8: JSR    LFFF0   
       JSR    LF257   
       JSR    LFFD3   
       JSR    LFACE   
       JSR    LF677   
       JSR    LF44E   
LF1FA: JSR    LFB09   
LF1FD: LDA    INTIM   
       BPL    LF1FD   
       STA    WSYNC   
       LDX    #$03    
       STX    VSYNC   
LF208: STA    WSYNC   
       JSR    LF441   
       DEX            
       BNE    LF208   
       STX    VSYNC   
       LDA    #$27    
       STA    TIM64T  
       LDA    $DD     
       BMI    LF23F   
       LDA    $D5     
       BPL    LF225   
       JSR    LFB7B   
       JMP    LF242   
LF225: JSR    LF612   
       JSR    LF535   
       JSR    LF35B   
       JSR    LF5A2   
       STA    HMCLR   
       JSR    LF0DB   
       JSR    LF112   
       JSR    LF5C0   
LF23C: JSR    LFB7B   
LF23F: JSR    LFB49   
LF242: LDA    INTIM   
       BNE    LF242   
       LDA    $D5     
       BPL    LF251   
       JSR    LFE16   
       JMP    LF1A6   
LF251: JSR    LFB99   
       JMP    LF1A6   
LF257: LDA    $CF     
       BEQ    LF265   
       DEC    $CF     
       LDX    #$05    
       JSR    LF783   
       JMP    LF28C   
LF265: LDA    $AA     
       BNE    LF273   
       LDA    #$0A    
       STA    $84     
       LDA    #$00    
       STA    $83     
       BPL    LF2AB   
LF273: LDA    $AD     
       BMI    LF286   
       TAY            
       LDA    LFA40,Y 
       STA    $83     
       LDA    LFA42,Y 
       ASL            
       STA    $84     
       JMP    LF28C   
LF286: LDA    #$00    
       STA    $83     
       STA    $84     
LF28C: LDA    $D1     
       BPL    LF292   
       BMI    LF2AB   
LF292: LDA    $82     
       AND    #$3F    
       BNE    LF2AB   
       LDA    $D6     
       AND    #$01    
       BNE    LF2AB   
       LDA    $B5     
       BEQ    LF2AB   
       SED            
       LDA    $B5     
       SEC            
       SBC    #$01    
       STA    $B5     
       CLD            
LF2AB: LDA    $83     
       LDX    #$AB    
       LDY    #$00    
       JSR    LF30B   
       LDA    $89     
       STA    $83     
       LDA    $AA     
       BNE    LF2CE   
       LDA    $AC     
       CMP    #$75    
       BNE    LF2CE   
       LDA    #$00    
       STA    $84     
       LDA    $D6     
       AND    #$01    
       BNE    LF2CE   
       INC    $D6     
LF2CE: LDA    $84     
       LDX    #$AC    
       LDY    #$02    
       JSR    LF30B   
       LDA    $89     
       STA    $84     
       LDX    #$05    
LF2DD: LDA    $A5,X   
       BEQ    LF2E4   
       JSR    LF2E8   
LF2E4: DEX            
       BPL    LF2DD   
       RTS            

LF2E8: LDA    $99,X   
       CLC            
       ADC    $8B     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$04    
       SEC            
       SBC    #$04    
       CLC            
       ADC    $93,X   
       CMP    #$A3    
       BCC    LF302   
       LDA    #$04    
       BPL    LF308   
LF302: CMP    #$03    
       BCS    LF308   
       LDA    #$A2    
LF308: STA    $93,X   
       RTS            

LF30B: STA    $89     
       CLC            
       ADC    $8B     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$04    
       SEC            
       SBC    #$04    
       CLC            
       ADC    VSYNC,X 
       CMP    LFA4A,Y 
       BEQ    LF32D   
       BCC    LF32D   
       JSR    LF33B   
       LDA    LFA4A,Y 
       JMP    LF338   
LF32D: CMP    LFA4B,Y 
       BCS    LF338   
       JSR    LF33B   
       LDA    LFA4B,Y 
LF338: STA    VSYNC,X 
       RTS            

LF33B: LDA    $89     
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $89     
       LDA    $D9     
       BNE    LF35A   
       LDA    LFA52,Y 
       STA    $CF     
       STX    $BD     
       STY    $BE     
       LDX    #$03    
       JSR    LF6C9   
       LDX    $BD     
       LDY    $BE     
LF35A: RTS            

LF35B: LDA    $D0     
       BEQ    LF364   
       DEC    $D0     
       JMP    LF3DE   
LF364: LDX    $C7     
       BEQ    LF3DE   
       DEX            
       CPX    $B1     
       BNE    LF397   
       LDA    #$C8    
       STA    $D9     
       LDA    #$80    
       STA    $B1     
       LDA    #$05    
       STA    $99,X   
       LDA    #$A0    
       STA    $93,X   
       LDA    #$00    
       STA    $CF     
       LDA    $D1     
       BMI    LF38F   
       LDA    $B6     
       CMP    #$09    
       BCC    LF38F   
       SBC    #$04    
       STA    $B6     
LF38F: LDX    #$01    
       JSR    LF6C9   
       JMP    LF3DE   
LF397: INX            
       LDY    #$01    
LF39A: LDA.wy $00CC,Y 
       CMP    $C7     
       BNE    LF3AE   
       LDA    #$00    
       STA.wy $00CC,Y 
       STA.wy $00D3,Y 
       DEC    $CE     
       JMP    LF3B3   
LF3AE: DEY            
       BPL    LF39A   
       BMI    LF3F3   
LF3B3: DEC    $A4,X   
       LDA    $A4,X   
       BNE    LF3C2   
       LDA    #$00    
       STA    $98,X   
       STA    $92,X   
       JMP    LF3CA   
LF3C2: LDA    #$05    
       STA    $98,X   
       LDA    #$A0    
       STA    $92,X   
LF3CA: LDX    #$02    
       JSR    LF6C9   
       SED            
       LDA    $81     
       CLC            
       ADC    #$01    
       STA    $81     
       LDA    $80     
       ADC    #$00    
       STA    $80     
       CLD            
LF3DE: STA    CXCLR   
       LDY    #$04    
LF3E2: LDA.wy $00A5,Y 
       BNE    LF3F2   
       DEY            
       BPL    LF3E2   
       LDA    #$00    
       STA    $AA     
       STA    $9E     
       STA    $98     
LF3F2: RTS            

LF3F3: LDA    $D9     
       BEQ    LF3FA   
       JMP    LF3DE   
LF3FA: LDY    #$00    
       LDA    $AB     
       SEC            
       SBC    $92,X   
       BPL    LF408   
       LDA    $92,X   
       SEC            
       SBC    $AB     
LF408: JSR    LF42E   
       LDY    #$01    
       LDA    $AC     
       SEC            
       SBC    LFA33,X 
       BPL    LF41B   
       LDA    LFA33,X 
       SEC            
       SBC    $AC     
LF41B: JSR    LF42E   
       LDX    #$04    
       JSR    LF6C9   
       LDA    #$3C    
       STA    $CF     
       LDA    #$0A    
       STA    $D0     
       STA    CXCLR   
       RTS            

LF42E: CMP    LFEFC,Y 
       BCC    LF43B   
       LDA    #$D8    
       STA.wy $0083,Y 
       JMP    LF440   
LF43B: LDA    #$28    
       STA.wy $0083,Y 
LF440: RTS            

LF441: LDA    $D2     
       ASL            
       ASL            
       ASL            
       EOR    $D2     
       ASL            
       ROL    $D2     
       LDA    $D2     
       RTS            

LF44E: LDX    #$05    
       JSR    LF441   
LF453: LDA    $93,X   
       CMP    #$04    
       BEQ    LF460   
       CMP    #$05    
       BEQ    LF460   
       JMP    LF52E   
LF460: TXA            
       CMP    $B1     
       BNE    LF469   
       LDA    #$80    
       STA    $B1     
LF469: STX    $89     
       LDX    $DA     
       BNE    LF471   
       BEQ    LF4E4   
LF471: LDY    #$00    
LF473: LDA.wy $00AE,Y 
       CMP    $89     
       BNE    LF4E0   
       LDA    #$80    
       STA.wy $00AE,Y 
       LDX    $89     
       LDA    #$45    
       STA    $93,X   
       STX    $8A     
       LDA    #$00    
       STA    $89     
       LDX    #$05    
LF48D: LDA    $A5,X   
       BNE    LF493   
       INC    $89     
LF493: DEX            
       BPL    LF48D   
       LDA    $89     
       BEQ    LF4DB   
       CMP    #$01    
       BNE    LF4A8   
       LDA    $DA     
       CMP    #$03    
       BNE    LF4C1   
       DEC    $DA     
       BNE    LF4C1   
LF4A8: CMP    #$02    
       BNE    LF4B6   
LF4AC: LDA    $DA     
       CMP    #$02    
       BCC    LF4C5   
       DEC    $DA     
       BNE    LF4AC   
LF4B6: LDA    $DA     
       CMP    #$01    
       BCC    LF4CB   
       DEC    $DA     
       JMP    LF4B6   
LF4C1: LDA    $B0     
       BMI    LF4DB   
LF4C5: LDA    $AF     
       BPL    LF4CF   
       BMI    LF4D3   
LF4CB: LDA    #$80    
       STA    $AF     
LF4CF: LDA    $AF     
       STA    $AE     
LF4D3: LDA    $B0     
       STA    $AF     
       LDA    #$80    
       STA    $B0     
LF4DB: LDX    $8A     
       JMP    LF52E   
LF4E0: INY            
       DEX            
       BNE    LF473   
LF4E4: LDX    $89     
       INC    $D7     
       LDA    $D7     
       AND    #$1F    
       BNE    LF4FE   
       STX    $B1     
       INC    $D8     
       INC    $D8     
       LDA    $D8     
       CMP    #$08    
       BNE    LF4FE   
       LDA    #$02    
       STA    $D8     
LF4FE: JSR    LF441   
       AND    #$87    
       CLC            
       ADC    $DB     
       BPL    LF50C   
       EOR    #$7F    
       ADC    #$01    
LF50C: STA    $99,X   
       CPX    $B1     
       BNE    LF518   
       LDA    #$00    
       STA    $9F,X   
       BEQ    LF52E   
LF518: JSR    LF441   
       AND    #$3F    
       CLC            
       ADC    #$30    
       STA    $9F,X   
       CMP    #$45    
       BEQ    LF518   
       CMP    #$46    
       BEQ    LF518   
       CMP    #$64    
       BEQ    LF518   
LF52E: DEX            
       BPL    LF532   
       RTS            

LF532: JMP    LF453   
LF535: LDX    #$04    
LF537: LDA    $93,X   
       STA    $89     
       LDA    $9F,X   
       CMP    $89     
       BEQ    LF54F   
       LDY    $99,X   
       BPL    LF549   
       DEC    $89     
       BNE    LF54B   
LF549: INC    $89     
LF54B: CMP    $89     
       BNE    LF59E   
LF54F: LDA    $CE     
       CMP    #$02    
       BEQ    LF591   
       INX            
       CPX    $CC     
       BEQ    LF589   
       CPX    $CD     
       BEQ    LF589   
       INC    $CE     
       LDA    #$00    
       STA    $98,X   
       LDY    #$01    
LF566: LDA.wy $00CC,Y 
       BEQ    LF56E   
       DEY            
       BPL    LF566   
LF56E: STX    $CC,Y   
       LDA    LFA59,X 
       STA.wy $00D3,Y 
       TXA            
       PHA            
       LDA    $92,X   
       CLC            
       ADC    #$04    
       LDX    #$C2    
       JSR    LFF00   
       LDA    $C2     
       STA.wy $0090,Y 
       PLA            
       TAX            
LF589: DEX            
       LDA    $91     
       STA    $92     
       JMP    LF59E   
LF591: LDA    $99,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $99,X   
       LDA    #$C8    
       STA    $9F,X   
LF59E: DEX            
       BPL    LF537   
       RTS            

LF5A2: LDX    #$01    
LF5A4: LDA    $CC,X   
       BNE    LF5AC   
LF5A8: DEX            
       BPL    LF5A4   
       RTS            

LF5AC: LDA    $82     
       AND    #$0F    
       BNE    LF5A8   
       LDA    $D3,X   
       CMP    #$40    
       BCS    LF5A8   
       ASL            
       ORA    $D3,X   
       STA    $D3,X   
       JMP    LF5A8   
LF5C0: LDA    $D1     
       BPL    LF5C5   
       RTS            

LF5C5: LDX    #$01    
LF5C7: LDA    $D3,X   
       CMP    #$40    
       BCS    LF5D1   
LF5CD: DEX            
       BPL    LF5C7   
       RTS            

LF5D1: LDA    $82     
       AND    #$0F    
       BNE    LF5CD   
       STX    $8A     
       LDX    #$06    
       JSR    LF6CD   
       LDX    $8A     
       LDA    $82     
       AND    #$7F    
       BNE    LF5CD   
       INC    $B6     
       LDA    $B6     
       CMP    #$2E    
       BNE    LF5CD   
       LDA    #$80    
       STA    $D1     
       LDX    $CC     
       LDA    #$19    
       STA    $98,X   
       LDX    $CD     
       STA    $98,X   
       LDA    #$00    
       STA    $B5     
       STA    $D3     
       STA    $D4     
       STA    $CC     
       STA    $CD     
       LDA    #$02    
       STA    $CE     
       LDA    #$FF    
       STA    $AD     
       BNE    LF5CD   
LF612: LDA    $AA     
       BNE    LF641   
       LDA    $AC     
       CMP    #$75    
       BNE    LF641   
       LDA    $82     
       AND    #$07    
       BNE    LF641   
       LDA    $B5     
       BEQ    LF642   
       LDX    #$05    
       JSR    LF6C9   
       SED            
       LDA    $B5     
       SEC            
       SBC    #$01    
       STA    $B5     
       LDA    $81     
       CLC            
       ADC    #$01    
       STA    $81     
       LDA    $80     
       ADC    #$00    
       STA    $80     
       CLD            
LF641: RTS            

LF642: LDA    $D6     
       AND    #$01    
       BNE    LF64A   
       INC    $D6     
LF64A: LDA    $D6     
       CMP    #$1B    
       BNE    LF654   
       DEC    $D6     
       BNE    LF656   
LF654: INC    $D6     
LF656: PLA            
       PLA            
       LDA    #$00    
       STA    $D3     
       STA    $D4     
       STA    $C7     
       LDY    $D6     
       LDA    LF9FA,Y 
       STA    $DB     
       LDA    LF9FB,Y 
       STA    $DA     
       LDA    INTIM   
       STA    $D2     
       JSR    LF144   
       JMP    LF23C   
LF677: LDX    #$05    
LF679: CPX    $B1     
       BEQ    LF6C5   
       CPX    $AE     
       BEQ    LF6C5   
       CPX    $AF     
       BEQ    LF6C5   
       CPX    $B0     
       BEQ    LF6C5   
       LDA    $99,X   
       BPL    LF692   
       LDY    #$00    
       JMP    LF694   
LF692: LDY    #$01    
LF694: LDA    $93,X   
       CMP    LFEFE,Y 
       BNE    LF6C5   
       STX    $89     
       LDX    $DA     
       BEQ    LF6C3   
       STX    $8A     
       LDY    #$00    
LF6A5: LDA.wy $00AE,Y 
       BPL    LF6BE   
       LDA    $89     
       STA.wy $00AE,Y 
       TAX            
       LDA    #$C8    
       STA    $9F,X   
       LDA    $99,X   
       BMI    LF6C5   
       LDA    #$06    
       STA    $93,X   
       BNE    LF6C5   
LF6BE: INY            
       DEC    $8A     
       BNE    LF6A5   
LF6C3: LDX    $89     
LF6C5: DEX            
       BPL    LF679   
       RTS            

LF6C9: LDY    #$00    
       BEQ    LF6CF   
LF6CD: LDY    #$01    
LF6CF: TXA            
       CMP.wy $00E4,Y 
       BEQ    LF6D7   
       BCC    LF6D8   
LF6D7: RTS            

LF6D8: STX    $E4,Y   
       DEX            
       TXA            
       ASL            
       TAX            
       TYA            
       ASL            
       TAY            
       LDA    LFA60,X 
       STA.wy $00E0,Y 
       LDA    LFA61,X 
       STA.wy $00E1,Y 
       TXA            
       ASL            
       TAX            
       LDA    LF903,X 
       STA.wy $00E6,Y 
       LDA    #$00    
       STA.wy $00E7,Y 
       TYA            
       LSR            
       TAY            
       LDA    LF900,X 
       STA.wy $0015,Y 
       LDA    LF901,X 
       STA.wy $0017,Y 
       LDA    LF902,X 
       STA.wy $0019,Y 
       RTS            

LF711: LDY    #$02    
LF713: STY    $89     
       LDA.wy $00E1,Y 
       CMP    #$FF    
       BEQ    LF770   
       LDA.wy $00E7,Y 
       CLC            
       ADC    #$01    
       STA.wy $00E7,Y 
       CMP.wy $00E6,Y 
       BNE    LF743   
       LDA    #$00    
       STA.wy $00E7,Y 
       LDA.wy $00E0,Y 
       CLC            
       ADC    #$02    
       STA.wy $00E0,Y 
       BCC    LF743   
       LDA.wy $00E1,Y 
       CLC            
       ADC    #$01    
       STA.wy $00E1,Y 
LF743: LDY    $89     
       BEQ    LF759   
       LDY    #$00    
       LDA    ($E2),Y 
       CMP    #$00    
       BEQ    LF770   
       STA    AUDF1   
       INY            
       LDA    ($E2),Y 
       STA    AUDV1   
       JMP    LF768   
LF759: LDY    #$00    
       LDA    ($E0),Y 
       CMP    #$00    
       BEQ    LF770   
       STA    AUDF0   
       INY            
       LDA    ($E0),Y 
       STA    AUDV0   
LF768: LDY    $89     
       TYA            
       LSR            
       TAY            
       JMP    LF77F   
LF770: LDY    $89     
       LDA    #$FF    
       STA.wy $00E1,Y 
       TYA            
       LSR            
       TAY            
       LDA    #$FF    
       STA.wy $00E4,Y 
LF77F: DEY            
       BPL    LF713   
       RTS            

LF783: CPX    $E4     
       BEQ    LF78A   
       BCC    LF78A   
       RTS            

LF78A: LDA    $CF     
       BEQ    LF79D   
       LDA    $AC     
       LSR            
       LSR            
       STA    AUDF0   
       LDA    #$04    
       STA    AUDC0   
       LDA    #$06    
       STA    AUDV0   
       RTS            

LF79D: LDA    #$00    
       STA    AUDV0   
       RTS            

LF7A2: LDA    $D1     
       BNE    LF7CE   
       LDA    $AC     
       CMP    #$28    
       BNE    LF7B1   
       LDX    #$01    
       JSR    LF6C9   
LF7B1: LDA    $AC     
       CMP    #$64    
       BCC    LF7BF   
       LDA    #$01    
       STA    $D1     
       STA    $82     
       BPL    LF7C7   
LF7BF: LDA    #$0C    
       STA    $83     
       LDA    #$14    
       STA    $84     
LF7C7: JSR    LF842   
       JSR    LF879   
       RTS            

LF7CE: CMP    #$01    
       BNE    LF7E4   
       LDX    #$07    
       JSR    LF6CD   
       JSR    LFF62   
       JSR    LFFA6   
       JSR    LF842   
       JSR    LF879   
       RTS            

LF7E4: CMP    #$02    
       LDA    #$50    
       STA    $B4     
       JSR    LF7F4   
       JSR    LF842   
       JSR    LF879   
       RTS            

LF7F4: LDA    $AC     
       CMP    #$80    
       BNE    LF835   
       LDA    $AB     
       CMP    #$9B    
       BNE    LF82C   
       LDA    #$00    
       LDX    #$09    
LF804: STA    $CC,X   
       DEX            
       BPL    LF804   
       STA    $C7     
       STA    $83     
       STA    $84     
       LDA    LF803   
       STA    $D2     
       LDA    SWCHB   
       ROL            
       BCC    LF828   
       LDY    #$0C    
       STY    $D6     
       LDA    LF9FA,Y 
       STA    $DB     
       LDA    LF9FB,Y 
       STA    $DA     
LF828: JSR    LF144   
       RTS            

LF82C: LDA    #$00    
       STA    $84     
       LDA    #$1E    
       STA    $83     
       RTS            

LF835: LDA    #$14    
       STA    $84     
       LDA    #$0C    
       STA    $83     
       LDA    #$01    
       STA    CTRLPF  
       RTS            

LF842: LDA    $AC     
       CMP    #$46    
       BCS    LF852   
       LDA    #$B8    
       STA    $85     
       LDA    #$FA    
       STA    $86     
       BNE    LF85E   
LF852: LDA    #$86    
       STA    $85     
       LDA    #$FA    
       STA    $86     
       LDA    #$05    
       STA    NUSIZ0  
LF85E: LDA    $83     
       LDX    #$AB    
       LDY    #$04    
       JSR    LF30B   
       LDA    $89     
       STA    $83     
       LDA    $84     
       LDX    #$AC    
       LDY    #$06    
       JSR    LF30B   
       LDA    $89     
       STA    $84     
       RTS            

LF879: STA    WSYNC   
       LDA    $8E     
       STA    HMP0    
       AND    #$0F    
       TAY            
       LDA    $80     
       NOP            
LF885: DEY            
       BPL    LF885   
       STA    RESP0   
LF88A: STA    WSYNC   
       STA    HMOVE   
       RTS            

LF88F: .byte $07,$01,$00,$FF,$05,$03,$04,$FF,$06,$02,$FF
LF89A: LDA    $AA     
       BNE    LF89F   
       RTS            

LF89F: LDA    SWCHA   
       CPX    #$00    
       BEQ    LF8AD   
       LSR            
       LSR            
       LSR            
       LSR            
       JMP    LF8AF   
LF8AD: AND    #$0F    
LF8AF: TAY            
       LDA    LF88A,Y 
       STA    $AD     
       RTS            

LF8B6: .byte $00,$00,$00,$00,$00,$00,$63,$63,$6B,$6B,$6B,$6B,$7F,$7F,$36,$36
       .byte $36,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$7C,$FE,$FD
       .byte $FD,$85,$86,$48,$F8,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$81,$A5
       .byte $A5,$A9,$B1,$A9,$A5,$A5,$81,$FF,$00,$00,$00,$00,$00,$00,$00,$00
LF8F6: .byte $00
LF8F7: .byte $00,$A4,$FA,$E2,$F8,$BB,$F8,$00,$00
LF900: .byte $0C
LF901: .byte $13
LF902: .byte $04
LF903: .byte $0E,$01,$06,$03,$01,$01,$0E,$0F,$06,$01,$15,$0F,$06,$0C,$0F,$0A
       .byte $03,$08,$0A,$01,$02,$08,$1F,$0F,$05,$05,$06,$05,$07,$04,$08,$04
       .byte $09,$03,$0A,$03,$0C,$02,$0F,$02,$00,$00,$0F,$00,$00,$0B,$01,$0A
       .byte $01,$09,$01,$08,$01,$07,$02,$06,$02,$04,$02,$03,$03,$11,$06,$03
       .byte $00,$03,$00,$03,$00,$03,$00,$00,$13,$04,$11,$04,$11,$04,$11,$04
       .byte $13,$04,$11,$04,$11,$04,$13,$04,$13,$04,$11,$04,$11,$04,$11,$04
       .byte $0F,$04,$0E,$04,$0C,$00,$00,$0E,$06,$0E,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80
       .byte $80,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $08,$08,$08,$1C,$3E,$3E,$7F,$49,$7F,$7F,$7F,$3E,$3E,$1C,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$02,$04,$08,$1C,$3E,$3E,$7F,$4F,$7F,$7F
       .byte $7F,$3E,$3E,$1C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00
LF9FA: .byte $00
LF9FB: .byte $00,$1E,$01,$28,$01,$32,$02,$37,$02,$39,$02,$3F,$03,$3F,$03,$41
       .byte $03,$41,$03,$43,$03,$43,$03,$45,$03,$45,$03,$15,$06,$15,$01,$15
       .byte $00,$00,$1F,$0F,$1F,$0E,$1F,$0D,$1F,$0A,$1F,$09,$1F,$07,$1F,$05
       .byte $1F,$03,$1F,$02,$1F,$01,$1F,$00
LFA33: .byte $00
LFA34: .byte $17,$2B,$3F,$53,$67,$7B
LFA3A: .byte $26,$3A,$4E,$62,$76,$8A
LFA40: .byte $1E,$18
LFA42: .byte $00,$E8,$E2,$E8,$00,$18,$1E,$18
LFA4A: .byte $96
LFA4B: .byte $0A,$78,$0B,$C8,$00,$C8,$00
LFA52: .byte $3C,$00,$28,$00,$00,$00,$00
LFA59: .byte $00,$02,$04,$08,$10,$20,$00
LFA60: .byte $4B
LFA61: .byte $F9,$1C,$F9,$6A,$F9,$16,$FA,$2D,$F9,$30,$F9,$1D,$FA
LFA6E: .byte $00,$06,$0C,$12,$18,$1E,$24,$2A,$30,$36
LFA78: .byte $5C,$DC,$9C,$3C,$CC,$EC,$AC,$2C,$8C,$6C,$4C,$1C,$BC,$7C,$F8,$F8
       .byte $48,$48,$FE,$FE,$D5,$D5,$D5,$FD,$ED,$FD,$D6,$D6,$6C,$6C,$38,$38
       .byte $28,$28,$6C,$6C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$81,$99
       .byte $A5,$A1,$99,$85,$A5,$99,$81,$FF,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$F8,$48,$44,$86,$FD,$FD,$FD,$FE
       .byte $7C,$38,$00,$00,$00,$00
LFACE: LDA    $D6     
       AND    #$01    
       BEQ    LFADC   
       LDA    #$DC    
       STA    $85     
       LDA    #$F9    
       BNE    LFB06   
LFADC: LDA    $CF     
       BEQ    LFAE8   
       LDA    #$CC    
       STA    $85     
       LDA    #$F8    
       BNE    LFB06   
LFAE8: LDA    $DC     
       BPL    LFAF4   
       LDA    #$90    
       STA    $85     
       LDA    #$FF    
       BNE    LFB06   
LFAF4: LDA    $D9     
       BEQ    LFB00   
       LDA    #$86    
       STA    $85     
       LDA    #$FA    
       BNE    LFB06   
LFB00: LDA    #$B8    
       STA    $85     
       LDA    #$FA    
LFB06: STA    $86     
       RTS            

LFB09: LDA    #$00    
       CMP    $B1     
       BNE    LFB1C   
       LDA    $D8     
       TAY            
       LDA    LF8F6,Y 
       STA    $8C     
       LDA    LF8F7,Y 
       BNE    LFB46   
LFB1C: LDA    $A5     
       BNE    LFB28   
       LDA    #$DC    
       STA    $8C     
       LDA    #$F9    
       BNE    LFB46   
LFB28: LDA    $DC     
       BPL    LFB34   
       LDA    #$80    
       STA    $8C     
       LDA    #$FF    
       BNE    LFB46   
LFB34: LDA    $99     
       BEQ    LFB40   
       LDA    #$C9    
       STA    $8C     
       LDA    #$F9    
       BNE    LFB46   
LFB40: LDA    #$B3    
       STA    $8C     
       LDA    #$F9    
LFB46: STA    $8D     
       RTS            

LFB49: LDY    #$05    
       LDX    #$BC    
LFB4D: LDA.wy $0093,Y 
       JSR    LFF00   
       DEX            
       DEY            
       BPL    LFB4D   
       LDA    $B7     
       STA    $8F     
       LDA    $8C     
       SEC            
       SBC    LFA34   
       STA    $8C     
       LDY    #$00    
       STY    $89     
       LDX    $DA     
       BEQ    LFB98   
LFB6B: LDA.wy $00AE,Y 
       BNE    LFB76   
       LDA    #$80    
       STA    $89     
       BNE    LFB98   
LFB76: INY            
       DEX            
       BNE    LFB6B   
       RTS            

LFB7B: LDX    #$8E    
       LDA    $AB     
       JSR    LFF00   
       LDA    #$83    
       SEC            
       SBC    $AC     
       STA    $87     
       LDA    #$F9    
       STA    $88     
       LDA    $85     
       SEC            
       SBC    $AC     
       STA    $85     
       BCS    LFB98   
       DEC    $86     
LFB98: RTS            

LFB99: LDA    #$00    
       STA    WSYNC   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMCLR   
       JSR    LF03D   
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       LDA    #$90    
       STA    HMP0    
       LDA    #$A0    
       STA    HMP1    
       LDY    #$03    
LFBB8: NOP            
       DEY            
       BNE    LFBB8   
       STA    RESP0   
       STA    RESP1   
       LDA    #$36    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA.w  $001B   
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $D3     
       STA    $DF     
       LDA    $D4     
       STA    $DE     
       LDY    #$05    
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
LFBE5: LDA    ($C8),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA.w  $001B   
       LDA    ($CA),Y 
       STA    GRP1    
       DEY            
       BPL    LFBE5   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA.w  $001B   
       STA    GRP1    
       STA    HMCLR   
       JSR    LFF25   
       LDA    #$34    
       STA    COLUP0  
       LDA    #$C6    
       STA    COLUP1  
       STA    COLUPF  
       LDA    $D9     
       BEQ    LFC18   
       LDA    #$15    
       JMP    LFC1A   
LFC18: LDA    #$10    
LFC1A: STA    NUSIZ0  
       LDA    $89     
       BPL    LFC25   
       LDA    #$14    
       JMP    LFC27   
LFC25: LDA    #$10    
LFC27: STA    NUSIZ1  
       LDA    #$15    
       STA    CTRLPF  
       LDA    #$30    
       STA    PF0     
       STA    WSYNC   
       LDA    $D1     
       BPL    LFC3C   
       LDA    #$00    
       JMP    LFC3E   
LFC3C: LDA    #$0C    
LFC3E: STA    COLUBK  
       LDA    #$00    
       STA    REFP1   
       STA    REFP0   
       STA    $C7     
       LDA    $DC     
       BMI    LFC62   
       LDA    $83     
       BMI    LFC54   
       LDA    #$08    
       STA    REFP0   
LFC54: LDA    #$00    
       CMP    $B1     
       BEQ    LFC62   
       LDA    $99     
       BMI    LFC62   
       LDA    #$08    
       STA    REFP1   
LFC62: LDY    #$12    
       LDX    #$00    
       STA    HMCLR   
       STA    WSYNC   
       JMP    LFC6F   
LFC6D: STA    WSYNC   
LFC6F: LDA    ($87),Y 
       BPL    LFCA1   
       LDA    ($85),Y 
       STA    GRP0    
LFC77: LDA    ($8C),Y 
       STA    GRP1    
       INY            
       TYA            
       CMP    LFA3A,X 
       BCC    LFC6D   
       INX            
       CPX    #$06    
       BEQ    LFC9A   
       STX    $89     
       LDA    #$10    
       STA    NUSIZ1  
       LDA    $AE     
       CMP    $89     
       BNE    LFCAF   
       LDA    #$14    
       STA    NUSIZ1  
       JMP    LFCAF   
LFC9A: LDA    $DE     
       STA    ENAM1   
       JMP    LFDC5   
LFCA1: LDA    #$00    
       STA    GRP0    
       JMP    LFC77   
LFCA8: LDA    #$00    
       STA    GRP0    
       JMP    LFCB9   
LFCAF: STA    WSYNC   
       LDA    ($87),Y 
       BPL    LFCA8   
       LDA    ($85),Y 
       STA    GRP0    
LFCB9: LDA    $DF     
       STA    ENAM0   
       LDA    $DE     
       STA    ENABL   
       INY            
       LDA    $A5,X   
       BNE    LFCD1   
       LDA    #$F9    
       STA    $8D     
       LDA    #$DC    
       STA    $8C     
       JMP    LFD0F   
LFCD1: CPX    $B1     
       BEQ    LFCFE   
       LDA    $DC     
       BPL    LFCE4   
       LDA    #$FF    
       STA    $8D     
       LDA    #$80    
       STA    $8C     
       JMP    LFD0F   
LFCE4: LDA    $99,X   
       BEQ    LFCF3   
       LDA    #$F9    
       STA    $8D     
       LDA    #$C9    
       STA    $8C     
       JMP    LFD0F   
LFCF3: LDA    #$F9    
       STA    $8D     
       LDA    #$B3    
       STA    $8C     
       JMP    LFD0F   
LFCFE: TYA            
       PHA            
       LDA    $D8     
       TAY            
       LDA    LF8F7,Y 
       STA    $8D     
       LDA    LF8F6,Y 
       STA    $8C     
       PLA            
       TAY            
LFD0F: STA    WSYNC   
       LDA    ($87),Y 
       BPL    LFD89   
       LDA    ($85),Y 
       STA    GRP0    
LFD19: INY            
       TXA            
       PHA            
       CMP    $B1     
       BEQ    LFD2D   
       LDA    $DC     
       BMI    LFD2D   
       LDA    $99,X   
       BMI    LFD2D   
       LDA    #$08    
       JMP    LFD2F   
LFD2D: LDA    #$00    
LFD2F: STA    REFP1   
       LDA    COLUP1  
       BPL    LFD37   
       STX    $C7     
LFD37: STA.w  $002C   
       LDA    $B7,X   
       STA    $8F     
       AND    #$0F    
       TAX            
       STA    HMCLR   
       STA    WSYNC   
       LDA    ($87),Y 
       BPL    LFD82   
       LDA    ($85),Y 
       STA.w  $001B   
LFD4E: DEX            
       BPL    LFD4E   
       STA    RESP1   
       STA    WSYNC   
       INY            
       LDA    ($87),Y 
       BPL    LFD90   
       LDA    ($85),Y 
       STA    GRP0    
LFD5E: INY            
       TYA            
       AND    #$F0    
       EOR    #$06    
       STA    COLUP1  
       STA    COLUPF  
       SEC            
       SBC    #$10    
       STA    COLUP0  
       LDA    $AF     
       CMP    $89     
       BNE    LFD77   
       LDA    #$14    
       STA    NUSIZ1  
LFD77: LDA    $8F     
       STA    HMP1    
       PLA            
       TAX            
       LSR    $DE     
       JMP    LFD98   
LFD82: LDA    #$00    
       STA    GRP0    
       JMP    LFD4E   
LFD89: LDA    #$00    
       STA    GRP0    
       JMP    LFD19   
LFD90: LDA    #$00    
       STA.w  $001B   
       JMP    LFD5E   
LFD98: STA    WSYNC   
       STA    HMOVE   
       LDA    ($87),Y 
       BPL    LFDBE   
       LDA    ($85),Y 
       STA    GRP0    
LFDA4: LDA    $8C     
       SEC            
       SBC    LFA34,X 
       STA    $8C     
       LDA    $B0     
       CMP    $89     
       BNE    LFDB6   
       LDA    #$14    
       STA    NUSIZ1  
LFDB6: INY            
       LSR    $DF     
       STA    HMCLR   
       JMP    LFC6D   
LFDBE: LDA    #$00    
       STA    GRP0    
       JMP    LFDA4   
LFDC5: LDA    #$10    
       STA    NUSIZ1  
       STA    WSYNC   
       LDA    COLUP1  
       BPL    LFDD1   
       STX    $C7     
LFDD1: STA.w  $002C   
       LDA    #$00    
       STA    ENABL   
       STA.w  $001B   
       LDX    #$11    
       STX    CTRLPF  
       LDY    #$00    
       LDA    #$E4    
       STA    COLUPF  
       STA    HMCLR   
LFDE7: STA    WSYNC   
       CPY    #$02    
       BCC    LFDFF   
       LDA    #$FF    
       STA    PF0     
       CPY    $B6     
       BNE    LFDFF   
       LDA    #$8A    
       STA    COLUBK  
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
LFDFF: INY            
       CPY    #$30    
       BNE    LFDE7   
       LDY    #$02    
LFE06: STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       DEY            
       BNE    LFE06   
       RTS            

LFE16: LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       LDA    #$36    
       STA    COLUPF  
       LDA    #$9C    
       LDY    #$00    
       LDX    #$00    
       STA    WSYNC   
       STA    COLUBK  
       BEQ    LFE38   
LFE2E: STA    WSYNC   
       LDA    ($87),Y 
       BPL    LFE4B   
       LDA    ($85),Y 
       STA    GRP0    
LFE38: INY            
       CPY    $B4     
       BNE    LFE2E   
       LDA    $B4     
       CLC            
       ADC    #$0A    
       STA    $89     
       CLC            
       ADC    #$2D    
       STA    $8A     
       BNE    LFE55   
LFE4B: STX    GRP0    
       BPL    LFE38   
LFE4F: LDA    #$00    
       STA    GRP0    
       BPL    LFE72   
LFE55: STA    WSYNC   
       LDA    LFEF0,X 
       STA    PF0     
       STA    PF1     
       CPX    #$04    
       BCS    LFE66   
       AND    $B3     
       BCC    LFE68   
LFE66: AND    $B2     
LFE68: STA    PF2     
       LDA    ($87),Y 
       BPL    LFE4F   
       LDA    ($85),Y 
       STA    GRP0    
LFE72: INX            
       INY            
       CPY    $89     
       BNE    LFE55   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$00    
LFE7E: STA    WSYNC   
       LDA    #$3A    
       STA    COLUPF  
       LDA    ($87),Y 
       BPL    LFEB6   
       LDA    ($85),Y 
       STA    GRP0    
LFE8C: LDA    $BD,X   
       STA    PF2     
       INX            
       INY            
       STA    WSYNC   
       LDA    ($87),Y 
       BPL    LFEBC   
       LDA    ($85),Y 
       STA    GRP0    
LFE9C: CPY    #$75    
       BCC    LFEA4   
       LDA    #$D8    
       STA    COLUBK  
LFEA4: INY            
       STA    WSYNC   
       LDA    ($87),Y 
       BPL    LFEC2   
       LDA    ($85),Y 
       STA    GRP0    
LFEAF: INY            
       CPY    $8A     
       BCC    LFE7E   
       BCS    LFECE   
LFEB6: LDA    #$00    
       STA    GRP0    
       BEQ    LFE8C   
LFEBC: LDA    #$00    
       STA    GRP0    
       BEQ    LFE9C   
LFEC2: LDA    #$00    
       STA    GRP0    
       BEQ    LFEAF   
LFEC8: LDA    #$00    
       STA    GRP0    
       BEQ    LFED8   
LFECE: STA    WSYNC   
       LDA    ($87),Y 
       BPL    LFEC8   
       LDA    ($85),Y 
       STA    GRP0    
LFED8: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       INY            
       CPY    #$C3    
       BNE    LFECE   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    COLUBK  
       STA    WSYNC   
       RTS            

LFEF0: .byte $FF,$FF,$41,$62,$54,$48,$54,$62,$41,$FF,$FF,$FF
LFEFC: .byte $02,$09
LFEFE: .byte $64,$45
LFF00: SEC            
       SBC    #$03    
       PHA            
       AND    #$0F    
       STA    $89     
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $8A     
       CLC            
       ADC    $89     
       CMP    #$0F    
       BCC    LFF1A   
       SBC    #$0F    
       INC    $8A     
LFF1A: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $8A     
       STA    VSYNC,X 
       RTS            

LFF25: LDX    #$02    
LFF27: STA    WSYNC   
       LDA    $90,X   
       STA    HMM0,X  
       AND    #$0F    
       TAY            
       LDA    $80     
LFF32: DEY            
       BPL    LFF32   
       STA    RESM0,X 
       DEX            
       BPL    LFF27   
       INX            
       STA    WSYNC   
       LDA    $8F,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
       LDA    $80     
       NOP            
LFF47: DEY            
       BPL    LFF47   
       STA    RESP1   
       STA    WSYNC   
       LDA    $8E     
       STA    HMP0    
       AND    #$0F    
       TAY            
       LDA    $80     
       NOP            
LFF58: DEY            
       BPL    LFF58   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFF62: LDA    $D3     
       BPL    LFF7A   
       LDA    $82     
       AND    #$01    
       BEQ    LFF73   
       LDA    $B4     
       SEC            
       SBC    #$05    
       BNE    LFF78   
LFF73: LDA    $B4     
       CLC            
       ADC    #$05    
LFF78: STA    $B4     
LFF7A: RTS            

LFF7B: .byte $00,$00,$00,$00,$00,$FF,$81,$BB,$BB,$BB,$DB,$EB,$EB,$AB,$8B,$FF
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7F,$14,$14,$14,$54,$94
       .byte $94,$94,$64,$00,$00,$00,$00,$00,$00,$00,$00
LFFA6: LDA    $B2     
       CMP    #$01    
       BNE    LFFB5   
       LDA    #$00    
       STA    $D3     
       LDA    #$02    
       STA    $D1     
       RTS            

LFFB5: LDA    $82     
       AND    #$03    
       BEQ    LFFBC   
       RTS            

LFFBC: LDX    #$13    
       LDA    #$80    
       STA    $D3     
LFFC2: LDA    LF23F,X 
       ORA    $B2     
       AND    $B3     
       STA    $BD,X   
       DEX            
       BPL    LFFC2   
       LSR    $B2     
       LSR    $B3     
       RTS            

LFFD3: LDA    $AC     
       CMP    #$0B    
       BNE    LFFEA   
       LDA    $B5     
       CMP    #$40    
       BNE    LFFEA   
       LDA    SWCHB   
       ROR            
       ROR            
       BCS    LFFEA   
       ROR            
       ROR            
       BCC    LFFEB   
LFFEA: RTS            

LFFEB: LDA    #$80    
       STA    $DC     
       RTS            

LFFF0: LDA    $8B     
       CLC            
       ADC    #$17    
       AND    #$1F    
       STA    $8B     
       RTS            

LFFFA: .byte $76,$F1,$76,$F1,$76,$F1
