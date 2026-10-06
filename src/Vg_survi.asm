; Disassembly of roms/Vg_survi.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Vg_survi.bin
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
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP1FB  =  $33
CXM1FB  =  $35
INPT4   =  $3C
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
INTIM   =  $0284
TIM64T  =  $0296
LF1ED   =   $F1ED
LFBA5   =   $FBA5

       ORG $F000

START:
       JMP    LF591   
LF003: LDA    INTIM   
       BNE    LF003   
       STA    WSYNC   
       STA    HMOVE   
       STA    NUSIZ0  
       STA    ENABL   
       STA    ENABL   
       STA    ENABL   
       LDA    #$BB    
       STA    COLUP0  
       STA    RESBL   
       LDA    #$02    
       STA    CTRLPF  
       STA    HMCLR   
       LDA    $81     
       ORA    #$1A    
       STA    COLUPF  
       AND    #$01    
LF028: BNE    LF02C   
       STA    RESBL   
LF02C: LDA    #$D0    
       STA    TIM64T  
       LDA    #$80    
       STA    HMBL    
       LDA    #$FC    
       STA    $E3     
       STA    $84     
       LDX    #$94    
       LDA    #$02    
       STA    $E0     
LF041: STA    WSYNC   
       STA    HMOVE   
       TXA            
       SEC            
       SBC    $82     
       TAY            
       AND    #$F0    
       BEQ    LF055   
       LDA    #$00    
       STA.w  $001C   
       BEQ    LF059   
LF055: LDA    ($83),Y 
       STA    GRP1    
LF059: LDA    #$02    
       CPX    $85     
       BEQ    LF061   
       LDA    #$00    
LF061: STA    ENAM0   
       LDY    #$00    
       TXA            
       AND    #$0F    
       BNE    LF06C   
       LDY    #$02    
LF06C: STY    ENABL   
       DEX            
       CPX    #$14    
       BNE    LF076   
       JMP    LF2B1   
LF076: LDY    $E0     
       BMI    LF041   
       TXA            
       CMP.wy $00EA,Y 
       BNE    LF041   
       LDA    #$07    
       STA    WSYNC   
       STA    $E1     
       LDA.wy $00E4,Y 
       STA    $E2     
       LDA.wy $00E7,Y 
       STA    $ED     
       TXA            
       SEC            
       SBC    $82     
       TAY            
       AND    #$F0    
       BEQ    LF0A0   
       LDA    #$00    
       STA.w  $001C   
       BEQ    LF0A4   
LF0A0: LDA    ($83),Y 
       STA    GRP1    
LF0A4: LDA    #$00    
       STA    ENABL   
       CPX    $85     
       BNE    LF0AE   
       LDA    #$02    
LF0AE: STA    ENAM0   
       DEX            
       DEY            
       LDA    #$00    
       CPY    #$10    
       BCS    LF0BA   
       LDA    ($83),Y 
LF0BA: DEC    $E0     
       STA    WSYNC   
       STA    GRP1    
       LDA    $ED     
       STA    HMOVE   
       STA    HMP0    
       DEX            
       AND    #$0F    
       TAY            
LF0CA: DEY            
       BPL    LF0CA   
       STA    RESP0   
LF0CF: STA    WSYNC   
       STA    HMOVE   
       TXA            
       SEC            
       SBC    $82     
       TAY            
       AND    #$F0    
       BEQ    LF0E3   
       LDA    #$00    
       STA.w  $001C   
       BEQ    LF0E7   
LF0E3: LDA    ($83),Y 
       STA    GRP1    
LF0E7: LDA    #$02    
       STA    HMP0    
       CPX    $85     
       BEQ    LF0F1   
       LDA    #$00    
LF0F1: STA    ENAM0   
       LDY    $E1     
       LDA    ($E2),Y 
       STA    GRP0    
       LDA    LFC68,Y 
       STA    COLUP0  
       DEX            
       DEC    $E1     
       BPL    LF0CF   
       JMP    LF041   
LF106: TAY            
       LDA    $B8     
       STA    WSYNC   
       STA    HMOVE   
       STY.w  $001C   
       LDX    #$12    
       STA.w  $0024   
       AND    #$0F    
       TAY            
LF118: DEY            
       BPL    LF118   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       TXA            
       SEC            
       SBC    $82     
       TAY            
       AND    #$F0    
       BEQ    LF131   
       LDA    #$00    
       STA.w  $001C   
       BEQ    LF135   
LF131: LDA    ($83),Y 
       STA    GRP1    
LF135: STA    RESP0   
       STX    ENABL   
       LDX    #$11    
       STX.w  $001D   
       LDA    #$01    
       STA    NUSIZ0  
       LDA    #$00    
       STA    HMP0    
       STA    HMBL    
       STA    VDELP0  
       DEY            
       CPY    #$10    
       BCS    LF153   
       LDA    ($83),Y 
       BCC    LF157   
LF153: STA    $3E     
       NOP            
       NOP            
LF157: STX    VDELP1  
       STA    GRP1    
LF15B: STA    WSYNC   
       STA    HMOVE   
       TXA            
       TAY            
       LDA    ($8C),Y 
       STA    PF1     
       LDA    ($8F),Y 
       STA    GRP0    
       TXA            
       SEC            
       SBC    $82     
       TAY            
       AND    #$F0    
       BEQ    LF179   
       LDA    #$00    
       STA.w  $001C   
       BEQ    LF17D   
LF179: LDA    ($83),Y 
       STA    GRP1    
LF17D: LDA    #$00    
       STA    PF1     
       STA    HMCLR   
       DEX            
       NOP            
       NOP            
       CPX    #$0E    
       BNE    LF18C   
       LDA    #$02    
LF18C: STA    ENAM1   
       CPX    #$07    
       BNE    LF15B   
LF192: STA    WSYNC   
       STA    HMOVE   
       TXA            
       TAY            
       LDA    ($91),Y 
       STA    GRP0    
       LDA    $81     
       AND    #$08    
       STA    REFP0   
       SEC            
       NOP            
       LDA    ($93),Y 
       STA    GRP0    
       TXA            
       SBC    $82     
       TAY            
       AND    #$F0    
       BEQ    LF1B7   
       LDA    #$00    
       STA.w  $001C   
       BEQ    LF1BB   
LF1B7: LDA    ($83),Y 
       STA    GRP1    
LF1BB: LDA    #$0F    
       STA    COLUP0  
       DEX            
       CPX    #$04    
       BNE    LF192   
       LDY    #$04    
       LDX    #$00    
       STX    GRP1    
LF1CA: LDA    ($91),Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    #$30    
       STA    CTRLPF  
       LDA    $95,X   
       STA    PF1     
       LDA    $96,X   
       STA    PF2     
       LDA    ($93),Y 
       STA    GRP0    
       LDA    $97,X   
       STA    PF0     
       LDA    $98,X   
       STA    PF1     
       LDA    $99,X   
       STA    PF2     
       LDA    #$FF    
       STA    PF0     
       LDX    LFCFA,Y 
       DEY            
       BPL    LF1CA   
       LDX    #$04    
LF1FA: STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    PF0     
       LDA    $A1     
       STA    PF1     
       LDA    $A2     
       STA    PF2     
       JSR    LF279   
       LDA    $A3     
       STA    PF0     
       LDA    $A4     
       STA    PF1     
       LDA    $A5     
       STA    PF2     
       DEX            
       BNE    LF1FA   
       LDY    #$42    
       LDA    #$72    
       STA    WSYNC   
       STA    HMOVE   
       STY    COLUBK  
       STA    HMBL    
       STA    ENABL   
       STX    COLUPF  
       STX    PF0     
       STX    RESBL   
       STX    PF1     
       STX    GRP0    
       STX.w  $001C   
       STX    PF2     
       LDA    #$03    
       STA    RESP0   
       STA    RESP1   
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       STX    HMP1    
       LDA    #$F0    
       STA    HMP0    
       STA    REFP0   
       STA    REFP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$2F    
       STA    COLUP0  
       STA    COLUP1  
       JSR    LF33F   
LF25E: LDA    INTIM   
       BNE    LF25E   
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$51    
       STA    TIM64T  
       JSR    LF27A   
       LDA    #$28    
       JSR    LF300   
       JSR    LF27A   
       STY    VDELP1  
LF279: RTS            

LF27A: LDY    #$07    
       STY    $EC     
LF27E: LDY    $EC     
       LDA    ($E0),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($E2),Y 
       STA    GRP1    
       LDA    ($E4),Y 
       STA    GRP0    
       LDA    ($E6),Y 
       STA    $ED     
       LDA    ($E8),Y 
       TAX            
       LDA    ($EA),Y 
       TAY            
       LDA    $ED     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $EC     
       BPL    LF27E   
       STA    WSYNC   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

LF2B1: STA    WSYNC   
       STA    HMOVE   
       TXA            
       SEC            
       SBC    $82     
       TAY            
       AND    #$F0    
       BEQ    LF2C5   
       LDA    #$00    
       STA.w  $001C   
       BEQ    LF2C9   
LF2C5: LDA    ($83),Y 
       STA    GRP1    
LF2C9: LDA    #$00    
       STA    REFP0   
       STA    ENABL   
       LDA    #$44    
       STA    COLUPF  
       LDA    #$32    
       STA    CTRLPF  
       LDA    #$00    
       DEY            
       CPY    #$10    
       BCS    LF2E0   
       LDA    ($83),Y 
LF2E0: JMP    LF106   
LF2E3: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LF300: LDA    #$58    
       BIT    $C2     
       BMI    LF333   
       LDA    $A9     
       CMP    #$AA    
       BNE    LF331   
       BIT    $81     
       BVS    LF331   
       LDA    $C6     
       BPL    LF326   
       LDX    #$07    
LF316: LDA    $C9,X   
       STA    $E0,X   
       DEX            
       BPL    LF316   
LF31D: LDA    #$B8    
       STA    $E8     
       LDA    #$C0    
       STA    $EA     
       RTS            

LF326: LDX    #$07    
LF328: LDA    $E0,X   
       STA    $C9,X   
       DEX            
       BPL    LF328   
       BMI    LF31D   
LF331: LDA    #$28    
LF333: LDX    #$0A    
       SEC            
LF336: STA    $E0,X   
       SBC    #$08    
       DEX            
       DEX            
       BPL    LF336   
       RTS            

LF33F: LDA    #$00    
       STA    $ED     
       STA    $EE     
LF345: LDA    $EE     
       LSR            
       TAY            
       LDA.wy $00A7,Y 
       LDX    #$01    
       BCS    LF358   
       LSR            
       LSR            
       LSR            
       LSR            
       CPY    #$02    
       BEQ    LF360   
LF358: AND    #$0F    
       BNE    LF362   
       LDX    $ED     
       BNE    LF362   
LF360: LDA    #$0A    
LF362: STX    $ED     
       TAX            
       LDA    $EE     
       ASL            
       TAY            
       LDA    LFFC8,X 
       STA.wy $00E0,Y 
       INC    $EE     
       CPY    #$04    
       BCC    LF345   
       LDA    #$01    
       STA    $ED     
       CPY    #$0A    
       BNE    LF345   
       LDA    #$FF    
       LDX    #$0A    
LF381: STA    $E1,X   
       DEX            
       DEX            
       BPL    LF381   
       RTS            

LF388: LDY    #$FF    
       SEC            
LF38B: INY            
       SBC    #$0F    
       BCS    LF38B   
       STY    $F2     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F2     
       RTS            

LF39D: LDA    $B3,X   
       ASL            
       ASL            
       ASL            
       ASL            
       CMP    #$F0    
       BCS    LF3AB   
       ADC    $B3,X   
       STA    $B3,X   
LF3AB: RTS            

LF3AC: SED            
       CLC            
       ADC    $A8     
       STA    $A8     
       LDA    #$00    
       ADC    $A7     
       STA    $A7     
       CLD            
       RTS            

LF3BA: BIT    $A9     
       BPL    LF3C6   
       LDA    #$80    
       STA    $B1     
       LDA    #$00    
       STA    $BC     
LF3C6: LDA    SWCHB   
       AND    #$02    
       BEQ    LF3D1   
       STA    $BB     
       BNE    LF3F4   
LF3D1: DEC    $BB     
       BNE    LF3E1   
       INC    $BA     
       LDA    $BA     
       AND    #$07    
       STA    $BA     
       LDA    #$1F    
       STA    $BB     
LF3E1: LDX    $BA     
       INX            
       STX    $A9     
       LDA    #$00    
       STA    $AF     
       STA    $BC     
       LDA    #$58    
       STA    $83     
       LDA    #$80    
       STA    $B1     
LF3F4: LSR    SWCHB   
       BCC    LF400   
       LDA    $B1     
       BNE    LF42C   
       JMP    LF4F3   
LF400: JMP    LF551   
LF403: LDA    $BC     
       INC    $BC     
       CMP    #$00    
       BNE    LF442   
       LDA    #$80    
       STA    $B1     
       LDA    #$00    
       STA    $AF     
       LDA    #$58    
       STA    $83     
       DEC    $A9     
       BPL    LF423   
       LDA    #$AA    
       STA    $A9     
       STA    $C6     
       BNE    LF43C   
LF423: JMP    LF56A   
LF426: BIT    INPT4   
       BMI    LF43C   
       BPL    LF400   
LF42C: BIT    $B1     
       BVS    LF403   
       BMI    LF426   
       BIT    $BC     
       BMI    LF442   
       JSR    LF85E   
       JSR    LF9E9   
LF43C: JSR    LFA90   
       JSR    LFA4A   
LF442: LDA    INTIM   
       BNE    LF442   
       STA    WSYNC   
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       LDA    #$4F    
       STA    TIM64T  
       INC    $81     
       LDA    SWCHB   
       AND    #$80    
       BEQ    LF478   
       BIT    $BC     
       BMI    LF478   
       JSR    LF707   
       JSR    LF6C4   
       JSR    LF7BC   
LF478: JSR    LFB23   
       LDA    #$02    
       STA    $EE     
       JSR    LF79E   
       STY    $93     
       LDA    #$20    
       STA    $EE     
       JSR    LF79E   
       STY    $91     
       LDA    $AB     
       JSR    LF388   
       STA    $EE     
       LDA    $AC     
       JSR    LF388   
       STA    $EF     
       LDA    $AA     
       JSR    LF388   
       STA    $F0     
       LDA    $8E     
       JSR    LF388   
       STA    $B8     
       STA    WSYNC   
       STA    $3E     
       LDX    #$02    
LF4AF: LDA    $EE,X   
       STA    HMP1,X  
       AND    #$0F    
       TAY            
LF4B6: DEY            
       BPL    LF4B6   
       STA    RESP1,X 
       STA    WSYNC   
       DEX            
       BPL    LF4AF   
       JSR    LF609   
       LDA    $C6     
       BEQ    LF4E3   
       LDX    #$FF    
       LDA    $A7     
       CMP    $C8     
       BCC    LF4E1   
       BNE    LF4D7   
       LDA    $A8     
       CMP    $C7     
       BCC    LF4E1   
LF4D7: LDA    $A7     
       STA    $C8     
       LDA    $A8     
       STA    $C7     
       LDX    #$01    
LF4E1: STX    $C6     
LF4E3: STA    CXCLR   
       LDA    #$B0    
       STA    COLUBK  
       LDA    #$20    
       STA    NUSIZ1  
       JSR    LF003   
       JMP    LF3BA   
LF4F3: JSR    LF5EF   
       LDA    $C4     
       BEQ    LF50B   
       LDA    $BC     
       CMP    #$B0    
       BCC    LF50B   
       LDA    $B9     
       LSR            
       CLC            
       ADC    #$01    
       JSR    LF3AC   
       DEC    $C4     
LF50B: LDA    $BC     
       INC    $BC     
       CMP    #$00    
       BNE    LF54E   
       STA    $C4     
       LDA    #$07    
       BIT    SWCHB   
       BVC    LF51E   
       LDA    #$0F    
LF51E: STA    $B2     
       LDA    $C6     
       BNE    LF528   
       LDA    #$01    
       STA    $C6     
LF528: LDX    #$02    
       STX    $C5     
LF52C: LDA    #$F8    
       AND    $86,X   
       STA    $86,X   
       DEX            
       BPL    LF52C   
LF535: JSR    LF570   
       LDX    #$80    
       LDA    $A7     
       AND    #$F0    
       CMP    #$60    
       BCC    LF544   
       LDX    #$50    
LF544: STX    $C3     
       LDA    #$58    
       STA    $83     
       LDA    #$01    
       STA    $B1     
LF54E: JMP    LF442   
LF551: LDA    $BA     
       STA    $B9     
       LDA    #$00    
       STA    $A7     
       STA    $A8     
       STA    $BC     
       STA    $BE     
       STA    $BD     
       STA    $C4     
       LDA    #$03    
       STA    $A9     
       JMP    LF4F3   
LF56A: JSR    LF5EF   
       JMP    LF535   
LF570: LDX    $B9     
       LDY    LFD1F,X 
       LDX    #$04    
LF577: LDA    LFD27,Y 
       STA    $B3,X   
       DEY            
       DEX            
       BPL    LF577   
LF580: LDA    #$A0    
       STA    $82     
       STA    $85     
       LDA    #$95    
       STA    $8E     
       LDA    #$00    
       STA    $AA     
       STA    $AF     
       RTS            

LF591: SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       LDA    #$00    
LF599: STA    VSYNC,X 
       INX            
       BNE    LF599   
       STA    SWACNT  
       STA    SWBCNT  
       JSR    LFBC0   
       LDA    #$1F    
       STA    COLUP1  
       LDA    #$0F    
       STA    COLUPF  
       LDA    #$FC    
       STA    $90     
       LDA    #$78    
       STA    $8F     
       LDA    #$FC    
       STA    $8D     
       LDA    #$68    
       STA    $8C     
       LDA    #$58    
       STA    $83     
       LDA    #$FC    
       STA    $92     
       STA    $94     
       JSR    LF5EF   
       JSR    LF570   
       LDA    #$01    
       STA    $A9     
       LDA    #$80    
LF5D5: STA    $B1     
       LDX    #$02    
LF5D9: LDA    LF5E9,X 
       STA    $86,X   
       LDA    LF5EC,X 
       STA    $89,X   
       DEX            
       BPL    LF5D9   
       JMP    LF3BA   
LF5E9: .byte $20,$18,$10
LF5EC: .byte $50,$30,$10
LF5EF: LDA    #$05    
       STA    $C2     
       LDA    #$00    
       LDX    #$0B    
LF5F7: STA    $95,X   
       DEX            
       BPL    LF5F7   
       STA    $A6     
       STX    $A1     
       STX    $A2     
       STX    $A3     
       STX    $A4     
       STX    $A5     
       RTS            

LF609: LDY    $B9     
       LDA    LFC00,Y 
       STA    $F3     
       LDA    $80     
       STA    $ED     
       LDA    $86     
       AND    #$38    
       CLC            
       ADC    #$03    
       TAX            
       LDA    $81     
       AND    #$01    
       BEQ    LF62C   
       TXA            
       ADC    #$03    
       TAX            
       LDA    $ED     
       EOR    #$FF    
       STA    $ED     
LF62C: LDY    #$02    
LF62E: LDA    LFCB8,X 
       STA.wy $00EE,Y 
       DEX            
       DEY            
       BPL    LF62E   
       LDY    #$02    
LF63A: STY    $F1     
       LDA.wy $00EE,Y 
       BMI    LF679   
       TAX            
       LDA    $89,X   
       JSR    LF388   
       LDY    $F1     
       STA.wy $00E7,Y 
       LDA    $86,X   
       AND    #$38    
       TAY            
       LDA    LFCB8,Y 
       SEC            
       SBC    $ED     
       LDY    $F1     
       STA.wy $00EA,Y 
       LDA    $86,X   
       AND    #$07    
       TAY            
       LDA    $F3     
       CPY    #$00    
       BEQ    LF66F   
       LDA    #$A0    
       CPY    #$02    
       BCC    LF66F   
       LDA    #$48    
LF66F: LDY    $F1     
       STA.wy $00E4,Y 
       DEY            
       BPL    LF63A   
       BMI    LF67E   
LF679: LDA    #$00    
       STA.wy $00EA,Y 
LF67E: BIT    $AF     
       BPL    LF693   
       BIT    $BC     
       BVS    LF68C   
       LDA    $81     
       AND    #$02    
       BNE    LF693   
LF68C: LDX    #$98    
       LDY    #$98    
       JMP    LF6AE   
LF693: LDX    #$68    
       LDY    #$78    
       LDA    $81     
       AND    #$08    
       BNE    LF69F   
       INX            
       INY            
LF69F: BIT    $AD     
       BPL    LF6AE   
       LDA    $81     
       AND    #$02    
       BNE    LF6AE   
       TYA            
       CLC            
       ADC    #$10    
       TAY            
LF6AE: STX    $8C     
       STY    $8F     
       LDX    #$86    
       BIT    $B0     
       BPL    LF6BA   
       LDX    #$8F    
LF6BA: STX    COLUP1  
       LDA    $81     
       AND    #$04    
       ASL            
       STA    REFP0   
       RTS            

LF6C4: LDX    #$02    
       JSR    LF39D   
       BCC    LF702   
       LDX    $80     
       INX            
       INX            
       CPX    #$0D    
       BCC    LF6E2   
       LDX    #$02    
LF6D5: LDA    $86,X   
       CLC            
       ADC    #$08    
       AND    #$BF    
       STA    $86,X   
       DEX            
       BPL    LF6D5   
       INX            
LF6E2: STX    $80     
       LDX    #$02    
LF6E6: LDA    $86,X   
       BMI    LF703   
       LDA    #$02    
LF6EC: CLC            
       ADC    $89,X   
       STA    $89,X   
       CMP    #$80    
       BCS    LF6F9   
       CMP    #$10    
       BCS    LF6FF   
LF6F9: LDA    $86,X   
       EOR    #$80    
       STA    $86,X   
LF6FF: DEX            
       BPL    LF6E6   
LF702: RTS            

LF703: LDA    #$FE    
       BNE    LF6EC   
LF707: LDX    #$03    
       JSR    LF39D   
       BCC    LF763   
       BIT    $AD     
       BPL    LF717   
       LDA    #$04    
       JMP    LF727   
LF717: LDA    #$02    
       BIT    $B1     
       BMI    LF727   
       BIT    SWCHA   
       BVS    LF727   
       JSR    LF779   
       LDA    #$01    
LF727: CLC            
       ADC    $AE     
       STA    $AE     
       BMI    LF763   
       LDA    #$F9    
       STA    $AE     
       LDA    $8E     
       SEC            
       SBC    #$04    
       CMP    #$20    
       BCS    LF73D   
       LDA    #$95    
LF73D: STA    $8E     
       LDA    $9A     
       BEQ    LF764   
LF743: LDX    #$0C    
       SEC            
       BCS    LF74A   
LF748: ASL    $9A,X   
LF74A: ROR    $99,X   
       ROL    $98,X   
       ROR    $97,X   
       SEC            
       LDA    #$08    
       AND    $97,X   
       BNE    LF758   
       CLC            
LF758: ROR    $96,X   
       ROL    $95,X   
       TXA            
       SEC            
       SBC    #$06    
       TAX            
       BPL    LF748   
LF763: RTS            

LF764: LDX    $A6     
       LDA    LFCFF,X 
       STA    $9A     
       LDA    LFD0F,X 
       STA    $A0     
       INX            
       TXA            
       AND    #$0F    
       STA    $A6     
       JMP    LF743   
LF779: LDX    #$01    
       LDA    $85     
       CMP    #$18    
       BCS    LF782   
       DEX            
LF782: CPX    #$00    
       BNE    LF78D   
       LDA    $83     
       CMP    #$48    
       BNE    LF78D   
       RTS            

LF78D: LDA    $AB,X   
       CLC            
       ADC    #$01    
       CMP    #$82    
       BCC    LF798   
       LDA    $AB,X   
LF798: STA    $AB,X   
       DEX            
       BPL    LF782   
       RTS            

LF79E: LDY    #$A8    
       BIT    $AD     
       BMI    LF7B7   
       INY            
       INY            
       INY            
       LDA    $95     
       AND    $EE     
       BNE    LF7B7   
       INY            
       INY            
       LDA    $9B     
       AND    $EE     
       BNE    LF7B7   
       INY            
       INY            
LF7B7: RTS            

LF7B8: .byte $02,$02,$02,$03
LF7BC: LDA    $81     
       AND    #$7F    
       BNE    LF7C4   
       DEC    $C3     
LF7C4: LDX    #$01    
       JSR    LF39D   
       BCC    LF7EB   
       LDA    $B0     
       AND    #$7F    
       BNE    LF7EB   
       LDA    $B9     
       LSR            
       TAX            
       LDA    $82     
       CMP    #$A0    
       BEQ    LF7EB   
       SEC            
       SBC    LF7B8,X 
       STA    $82     
       AND    #$F8    
       CMP    #$F0    
       BNE    LF7EB   
       LDA    #$A0    
       STA    $82     
LF7EB: LDX    #$00    
       JSR    LF39D   
       BCC    LF812   
       LDA    $85     
       CMP    #$A0    
       BEQ    LF803   
       CLC            
       ADC    #$04    
       CMP    #$92    
       BCC    LF801   
       LDA    #$A0    
LF801: STA    $85     
LF803: LDA    $AA     
       BEQ    LF812   
       CLC            
       ADC    #$04    
       CMP    $C3     
       BCC    LF810   
       LDA    #$00    
LF810: STA    $AA     
LF812: RTS            

LF813: .byte $00,$A0,$90,$80,$30,$28,$24
LF81A: .byte $3F,$CF,$F3,$FC,$FC,$F3,$CF,$3F,$CF,$3F,$3F,$CF,$F3,$FC,$FC,$F3
       .byte $CF,$3F
LF82C: .byte $00,$00,$00,$00,$01,$01,$01,$01,$02,$02,$03,$03
LF838: .byte $03,$03,$04,$04,$04,$04
LF83E: .byte $04,$04,$04,$05,$05,$06,$06,$06
LF846: .byte $09,$09,$09,$10,$10,$10,$11,$11
LF84E: .byte $10,$10,$10,$11,$11,$11,$12,$12
LF856: .byte $FF,$FF,$FF,$FE,$FE,$FE,$FE,$FE
LF85E: LDX    #$00    
       BIT    CXP1FB  
       BMI    LF878   
       INX            
       LDA    $8E     
       CMP    #$30    
       BCC    LF878   
       INX            
       LDA    $A1     
       AND    #$02    
       BNE    LF876   
       BIT    $AD     
       BPL    LF878   
LF876: LDX    #$FF    
LF878: INX            
       LDA    LF813,X 
       STA    $AF     
       LDA    $83     
       CMP    #$58    
       BNE    LF8D5   
       LDX    #$03    
       LDA    $82     
       CMP    #$12    
       BCS    LF89A   
       LDA    $AB     
       ADC    #$04    
       SBC    $8E     
       BPL    LF896   
       EOR    #$FF    
LF896: CMP    #$08    
       BCC    LF8C7   
LF89A: INX            
       LDA    #$15    
       BIT    $B0     
       BMI    LF8A3   
       LDA    #$10    
LF8A3: STA    $ED     
       BIT    CXM0P   
       BMI    LF8CB   
       INX            
       LDA    $82     
       CMP    #$10    
       BCS    LF8C5   
       CMP    #$05    
       BCC    LF8C5   
       LDA    $AB     
       ADC    #$04    
       SBC    $AA     
       BPL    LF8BE   
       EOR    #$FF    
LF8BE: LDY    $B9     
       CMP    LF83E,Y 
       BCC    LF8CB   
LF8C5: LDX    #$FF    
LF8C7: LDA    #$00    
       STA    $ED     
LF8CB: LDA    $ED     
       INX            
       LDA    LF813,X 
       ORA    $AF     
       STA    $AF     
LF8D5: BIT    CXM1FB  
       BVC    LF8EB   
       LDA    $AA     
       BEQ    LF8EB   
       LDA    #$05    
       INC    $C4     
       BNE    LF8E5   
       DEC    $C4     
LF8E5: LDA    #$14    
       ORA    $AF     
       STA    $AF     
LF8EB: LDY    $B9     
       LDA    LF968,Y 
       STA    $ED     
       LDY    #$02    
LF8F4: LDA    $AC     
       LDX    $B9     
       SBC.wy $0089,Y 
       BMI    LF904   
       CMP    LF846,X 
       BCS    LF970   
       BCC    LF909   
LF904: CMP    LF856,X 
       BCC    LF970   
LF909: LDA.wy $0086,Y 
       AND    #$07    
       BNE    LF970   
       LDA.wy $0086,Y 
       AND    #$38    
       TAX            
       LDA    LFCB8,X 
       CPX    #$20    
       BCS    LF963   
       SBC    $80     
LF91F: SBC    $85     
       BMI    LF92C   
       LDX    $B9     
       CMP    LF84E,X 
       BCS    LF970   
       BCC    LF930   
LF92C: CMP    #$FE    
       BCC    LF970   
LF930: LDA    #$07    
       ORA.wy $0086,Y 
       STA.wy $0086,Y 
       LDA    $ED     
       JSR    LF3AC   
       LDA    $B2     
       CMP    #$02    
       BCS    LF95B   
       LDX    #$02    
LF945: LDA    $86,X   
       AND    #$07    
       BEQ    LF95B   
       DEX            
       BPL    LF945   
       LDA    $C5     
       BEQ    LF95B   
       LDX    $A9     
       INX            
       CPX    #$0A    
       BEQ    LF95B   
       STX    $A9     
LF95B: LDA    #$48    
       ORA    $AF     
       STA    $AF     
       BNE    LF973   
LF963: ADC    $80     
       JMP    LF91F   
LF968: .byte $10,$10,$15,$20,$25,$30,$35,$40
LF970: DEY            
       BPL    LF8F4   
LF973: BIT    $B0     
       BPL    LF9A0   
       LDA    $82     
       AND    #$F0    
       CMP    #$F0    
       BNE    LF9A0   
       LDY    #$0A    
       STY    $BE     
       LDA    $AB     
       SBC    #$05    
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF81A,Y 
       LDX    LF82C,Y 
       TAY            
       AND    $95,X   
       STA    $95,X   
       TYA            
       AND    $9B,X   
       STA    $9B,X   
       TYA            
       AND    $A1,X   
       STA    $A1,X   
LF9A0: LDA    $AF     
       BEQ    LF9C7   
       BMI    LF9C8   
       LDY    #$0A    
       STY    $BE     
       ASL            
       ASL            
       ASL            
       BCC    LF9B3   
       LDY    #$3F    
       STY    $B0     
LF9B3: ASL            
       BCC    LF9BA   
       LDY    #$95    
       STY    $8E     
LF9BA: ASL            
       BCC    LF9C1   
       LDY    #$A0    
       STY    $85     
LF9C1: BPL    LF9C7   
       LDY    #$00    
       STY    $AA     
LF9C7: RTS            

LF9C8: BIT    $B1     
       BMI    LF9C7   
       LDA    $AF     
       AND    #$20    
       BEQ    LF9D6   
       LDA    #$48    
       STA    $83     
LF9D6: LDA    #$00    
       STA    $C4     
       STA    $C5     
       LDA    #$40    
       STA    $B1     
       LDY    #$3F    
       STY    $BE     
       LDA    #$80    
       STA    $BC     
       RTS            

LF9E9: LDY    $C0     
       LDA    SWCHA   
       AND    #$90    
       LDX    $AA     
       BNE    LFA04   
       CMP    #$80    
       BCS    LFA04   
       CPY    #$80    
       BCC    LFA04   
       LDX    #$26    
       STX    $AA     
       LDX    #$0A    
       STX    $BD     
LFA04: LDX    $85     
       CPX    #$A0    
       BNE    LFA1F   
       AND    #$10    
       BNE    LFA1F   
       TYA            
       AND    #$10    
       BEQ    LFA1F   
       LDA    #$22    
       STA    $AC     
       LDA    #$14    
       STA    $85     
       LDA    #$0A    
       STA    $BD     
LFA1F: LDA    SWCHA   
       AND    #$90    
       STA    $C0     
       LDY    $AD     
       BMI    LFA38   
       BIT    INPT4   
       BPL    LFA32   
       LDY    #$00    
       BEQ    LFA46   
LFA32: CPY    #$00    
       BNE    LFA46   
       LDY    #$80    
LFA38: CPY    #$9F    
       BCC    LFA47   
       LDA    $A1     
       AND    #$03    
       EOR    #$03    
       BNE    LFA46   
       LDY    #$40    
LFA46: DEY            
LFA47: INY            
       STY    $AD     
LFA4A: LDX    #$00    
LFA4C: LDA    $82     
       CMP    #$A0    
       BNE    LFA86   
       LDA    $86,X   
       AND    #$07    
       BNE    LFA86   
       LDA    $86,X   
       AND    #$38    
       TAY            
       LDA    LFCB8,Y 
       CPY    #$20    
       BCS    LFA8C   
       SBC    $80     
LFA66: SBC    #$15    
       STA    $82     
       LDA    $89,X   
       STA    $AB     
       LDX    #$04    
       JSR    LF39D   
       LDX    #$00    
       BCC    LFA79   
       LDX    #$80    
LFA79: STX    $B0     
       LDX    #$00    
       STX    $BF     
       CMP    #$0F    
       BCS    LFA85   
       INC    $B7     
LFA85: RTS            

LFA86: INX            
       CPX    #$03    
       BNE    LFA4C   
       RTS            

LFA8C: ADC    $80     
       BCC    LFA66   
LFA90: LDA    #$07    
       AND    $81     
       BNE    LFAA7   
       LDX    #$02    
LFA98: LDA    $86,X   
       AND    #$07    
       CMP    #$02    
       BCC    LFAA4   
       BEQ    LFAC7   
LFAA2: DEC    $86,X   
LFAA4: DEX            
       BPL    LFA98   
LFAA7: LDA    $B0     
       AND    #$7F    
       BEQ    LFABD   
       DEC    $B0     
       CMP    #$01    
       BEQ    LFABE   
       LDA    #$80    
       EOR    $B0     
       STA    $B0     
       LDA    #$48    
       STA    $83     
LFABD: RTS            

LFABE: LDA    #$58    
       STA    $83     
       LDA    #$A0    
       STA    $82     
       RTS            

LFAC7: DEC    $B2     
       LDA    $B2     
       BMI    LFADA   
       CMP    #$02    
       BCC    LFAA2   
       LDA    #$F8    
       AND    $86,X   
       STA    $86,X   
       JMP    LFAA4   
LFADA: LDA    #$80    
       STA    $BC     
       LDA    #$00    
       STA    $B1     
       DEC    $86,X   
       LDY    $B9     
       INY            
       CPY    #$08    
       BCS    LFAED   
       STY    $B9     
LFAED: JSR    LF580   
       RTS            

LFAF1: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       BIT    $C2     
       BMI    LFB1C   
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LFB05   
       STA    $C1     
       RTS            

LFB05: LDA    $C1     
       BNE    LFB0F   
       RTS            

LFB0A: LDA    #$05    
       STA    $C2     
       RTS            

LFB0F: LDX    #$00    
       STX    $C1     
       LDX    $C2     
       CMP    LFB1D,X 
       BNE    LFB0A   
       DEC    $C2     
LFB1C: RTS            

LFB1D: .byte $40,$20,$40,$10,$20,$10
LFB23: LDA    SWCHB   
       AND    #$80    
       BEQ    LFAF1   
       BIT    $B1     
       BMI    LFAF1   
       LDA    #$05    
       STA    $C2     
       LDA    $B1     
       BNE    LFB42   
       LDA    $BC     
       EOR    #$FF    
       LSR            
       LSR            
       LSR            
       TAY            
       LDX    #$08    
       BNE    LFB58   
LFB42: LDA    $BD     
       BEQ    LFB56   
       LDA    $81     
       AND    #$01    
       BNE    LFB4E   
       DEC    $BD     
LFB4E: LDA    $BD     
       LDY    #$11    
       LDX    #$08    
       BNE    LFB58   
LFB56: LDA    #$00    
LFB58: STA    AUDV0   
       STY    AUDF0   
       STX    AUDC0   
       BIT    $B1     
       BVC    LFB73   
       LDA    $BE     
       BEQ    LFBB7   
       DEC    $BE     
       LDA    $BE     
       EOR    #$3F    
       TAY            
       LDA    #$06    
       LDX    #$03    
       BNE    LFBB9   
LFB73: LDA    $BE     
       BEQ    LFB90   
       LDA    $81     
       LSR            
       BCC    LFB7E   
       DEC    $BE     
LFB7E: AND    #$03    
       ORA    #$08    
       TAX            
       LDA    #$10    
       SEC            
       SBC    $BE     
       ORA    #$10    
       TAY            
       LDA    $BE     
       JMP    LFBB9   
LFB90: LDA    $82     
       CMP    #$A0    
       BEQ    LFBB7   
       LDA    $83     
       CMP    #$58    
       BNE    LFBB7   
       LDA    $81     
       LSR            
       PHP            
       INC    $BF     
       BPL    LFBA8   
       LDA    #$00    
       STA    $BF     
LFBA8: LDA    $BF     
       LSR            
       LSR            
       LSR            
       PLP            
       ADC    #$0F    
       TAY            
       LDA    #$04    
       LDX    #$04    
       BNE    LFBB9   
LFBB7: LDA    #$00    
LFBB9: STA    AUDV1   
       STY    AUDF1   
       STX    AUDC1   
       RTS            

LFBC0: LDA    #$30    
       STA    $E3     
LFBC4: LDY    #$00    
       LDA    ($E2),Y 
       CLC            
       ADC    $E0     
       STA    $E0     
       INC    $E2     
       BNE    LFBC4   
       INC    $E3     
       LDA    $E3     
       CMP    #$40    
       BNE    LFBC4   
       LDA    LFBEB   
       CMP    $E0     
       BNE    LFBE1   
       RTS            

LFBE1: LDA    #$09    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       BNE    LFBE1   
LFBEB: BRK            
       STA.wx $0000,X 
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
LFC00: PHP            
       BPL    LFC1B   
       JSR    $3028   
       SEC            
       RTI            

LFC08: .byte $00,$18,$3C,$7E,$C9,$C9,$FF,$7E,$00,$3C,$52,$93,$FF,$18,$1F,$F8
       .byte $00,$7E,$A9
LFC1B: LDA    #$7E    
       CLC            
       ROR    $66     
       BRK            
       LSR            
       LSR            
       ROR    $91ED,X 
       ROR.w  $003C   
       STA    $EBA5,Y 
       STA    $7E,X   
       ROR    AUDF1   
       BRK            
       BIT    $7E     
       .byte $DB ;.DCP
       .byte $97 ;.SAX
       .byte $DB ;.DCP
       ROR.wx $0024,X 
       ROR    $D5D5,X 
       ROR    $2838,X 
       .byte $44 ;.NOP
       BRK            
       STA    ($42,X) 
       .byte $3C ;.NOP
       .byte $42 ;.JAM
       STA    ($FF,X) 
       .byte $3C ;.NOP
       BRK            
       STY    HMP0    
       .byte $02 ;.JAM
       PHP            
       RTI            

LFC4E: .byte $04,$21,$40,$21,$08,$40,$21,$44,$22,$21,$08,$08,$1C,$1C,$1C,$1C
       .byte $1C,$08,$08,$14,$14,$00,$00,$00,$00,$00
LFC68: .byte $BB,$2A,$3F,$4C,$6A,$8A,$9A,$AA,$00,$3C,$3F,$34,$3C,$34,$3C,$38
       .byte $70,$E0,$00,$00,$00,$00,$00,$00,$00,$1F,$00,$1F,$1E,$1C,$10,$78
       .byte $40,$40,$00,$00,$00,$00,$00,$00,$00,$3F,$7F,$FF,$7E,$3C,$10,$78
       .byte $40,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$10,$04,$50,$3A,$50,$14,$28,$00
LFCB8: .byte $90,$FF,$FF,$00,$FF,$02,$01,$00,$84,$FF,$00,$01,$FF,$FF,$02,$00
       .byte $78,$00,$01,$02,$FF,$FF,$FF,$00,$6C,$00,$01,$02,$FF,$FF,$FF,$00
       .byte $60,$FF,$01,$02,$FF,$FF,$00,$00,$6C,$FF,$FF,$02,$FF,$01,$00,$00
       .byte $78,$FF,$FF,$FF,$02,$01,$00,$00,$84,$FF,$FF,$FF,$02,$01,$00,$00
       .byte $48,$A0
LFCFA: .byte $0C,$0C,$06,$06,$00
LFCFF: .byte $00,$00,$00,$F0,$00,$30,$00,$C0,$00,$FF,$00,$00,$0C,$0C,$00,$00
LFD0F: .byte $FF,$FF,$FF,$FF,$03,$FF,$C3,$F0,$FF,$FF,$FF,$C0,$FF,$3F,$FF,$0F
LFD1F: .byte $04,$09,$0E,$13,$18,$1D,$22,$27
LFD27: .byte $08,$09,$04,$08,$08,$09,$0A,$06,$09,$09,$0A,$0B,$08,$0A,$0A,$0B
       .byte $0C,$08,$0B,$0B,$0C,$0D,$08,$0C,$0C,$0D,$0E,$09,$0D,$0D,$0E,$0E
       .byte $0C,$0E,$0E,$0F,$0F,$0F,$0F,$0F,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$78,$84,$B4,$A4,$B4,$84,$78
       .byte $00,$22,$22,$52,$52,$52,$88,$8A,$00,$6E,$A8,$AE,$AA,$6E,$20,$20
       .byte $00,$43,$A4,$A4,$A5,$44,$04,$03,$00,$3A,$A2,$BA,$AA,$3B,$80,$00
       .byte $00,$AE,$A2,$AE,$A8,$EE,$00,$00,$00,$8A,$88,$88,$F8,$88,$88,$88
       .byte $00,$84,$80,$80,$F1,$80,$80,$F8,$00,$10,$10,$10,$9E,$11,$11,$1E
       .byte $00,$94,$2A,$2A,$22,$22,$22,$22,$00,$9E,$21,$2D,$29,$2D,$21,$1E
       .byte $00,$22,$55,$51,$21,$52,$51,$27,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$3C,$66,$66,$66,$66,$66,$3C,$00,$7E,$18,$18,$18,$18,$18,$78
       .byte $38,$7E,$60,$60,$3C,$06,$46,$7C,$00,$3C,$46,$06,$0C,$06,$46,$3C
       .byte $00,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$00,$7C,$46,$06,$7C,$60,$60,$7E
       .byte $00,$3C,$66,$66,$7C,$60,$62,$3C,$00,$18,$18,$08,$04,$02,$62,$7E
       .byte $00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$3C
       .byte $00,$01,$01,$01,$01,$01,$01,$01,$00,$26,$29,$21,$E6,$28,$29,$26
       .byte $00
LFFC8: .byte $68,$70,$78,$80,$88,$90,$98,$A0,$A8,$B0,$60,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$F0,$00,$F0
