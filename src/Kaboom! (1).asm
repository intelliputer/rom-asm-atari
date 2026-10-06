; Disassembly of roms/Kaboom! (1).bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Kaboom! (1).bin
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
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
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
       LDX    #$00    
       TXA            
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       JMP    LF3C1   
LF00E: LDX    #$12    
LF010: LDA    LF672,X 
       LDY    $AE     
       CPY    #$20    
       BCC    LF023   
       LDY    $AC     
       BNE    LF025   
       CPX    #$04    
       BCC    LF025   
       LDA    $82     
LF023: EOR    $AE     
LF025: EOR    $83     
       AND    $84     
       STA    $85,X   
       DEX            
       BPL    LF010   
       STA    COLUBK  
       LDX    $A0     
       LDA    $87,X   
       STA    COLUP0  
       STA    COLUP1  
LF038: LDA    INTIM   
       BNE    LF038   
       STA    WSYNC   
       STA    VBLANK  
       STA    COLUPF  
       LDA    #$35    
       STA    CTRLPF  
       STA    PF0     
       LDY    #$03    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDY    #$07    
       STY    VDELP0  
       STY    VDELP1  
LF055: STY    $87     
       LDA    ($FE),Y 
       STA    $88     
       STA    WSYNC   
       LDA    ($F4),Y 
       STA    GRP0    
       LDA    ($F6),Y 
       STA    GRP1    
       LDA    ($F8),Y 
       STA    GRP0    
       LDA    ($FC),Y 
       TAX            
       LDA    ($FA),Y 
       LDY    $88     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       LDY    $87     
       DEY            
       BPL    LF055   
       INY            
       LDA    $BB     
       STA    $FA     
       LDA    $B2     
       STA    WSYNC   
       STY    VDELP0  
       STY    VDELP1  
       STY    GRP0    
       STY    GRP1    
       STA    REFP0   
       STA    HMP0    
       AND    #$07    
       TAX            
LF095: DEX            
       BPL    LF095   
       STA    RESP0   
       STA    WSYNC   
       STY    NUSIZ1  
       STY    $F9     
       STY    NUSIZ0  
       LDA    $99     
       STA    HMP1    
       AND    #$07    
       TAX            
       LDA    $B1     
LF0AB: DEX            
       BPL    LF0AB   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$1F    
       ORA    #$20    
       TAY            
       LDA    $A3     
       CMP    #$01    
       ROR    $88     
       BMI    LF0C9   
       LDA    $AE     
       BNE    LF0EF   
       LDA    $A1     
       BEQ    LF0EF   
LF0C9: LDA    LF652,X 
       EOR    $83     
       AND    $84     
       STA    WSYNC   
       STA    COLUP1  
       LDA    LF6D3,X 
       CPX    #$16    
       BNE    LF0DD   
       LDA    #$6C    
LF0DD: BCS    LF0E7   
       LDA    #$6C    
       BIT    $88     
       BMI    LF0E7   
       LDA    #$54    
LF0E7: STA    GRP1    
       DEY            
       DEX            
       CPX    #$15    
       BCS    LF0C9   
LF0EF: LDA    LF652,X 
       EOR    $83     
       AND    $84     
       CPX    #$03    
       BNE    LF103   
       LDA    $86     
       STA    WSYNC   
       STA    COLUBK  
       JMP    LF10C   
LF103: STA    WSYNC   
       STA    COLUP1  
       LDA    LF6D3,X 
       STA    GRP1    
LF10C: LDA.wy $0088,Y 
       STA    COLUP0  
       LDA    $F9     
       STA    GRP0    
       DEY            
       CPY    #$10    
       BCS    LF11E   
       LDA    ($FA),Y 
       STA    $F9     
LF11E: DEX            
       BPL    LF0EF   
       LDA    SWCHB   
       LDX    $A0     
       BNE    LF129   
       ASL            
LF129: ASL            
       LDA    #$00    
       STA    $F6     
       BCS    LF132   
       LDA    #$05    
LF132: STA    WSYNC   
       STA    NUSIZ1  
       LDA.wy $0088,Y 
       STA    COLUP0  
       LDA    $F9     
       STA    GRP0    
       LDA    #$00    
       STA    GRP1    
       STA    CXCLR   
       BCC    LF149   
       LDA    #$0A    
LF149: CLC            
       ADC    #$6C    
       STA    $F5     
       ADC    #$06    
       STA    $F7     
       LDA    #$55    
       STA    $87     
       DEY            
       BMI    LF17A   
LF159: CPY    #$10    
       BCC    LF164   
       STA    WSYNC   
       DEC    $87     
       DEY            
       BNE    LF159   
LF164: LDA    ($FA),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA.wy $0088,Y 
       STA    COLUP0  
       DEC    $87     
       LDA    COLUPF,X
       BMI    LF177   
       DEC    $F7     
LF177: DEY            
       BPL    LF164   
LF17A: STA    WSYNC   
       INC    $F6     
       LDY    $F6     
       LDA.wy $00B2,Y 
       STA    HMP0    
       STA    REFP0   
       AND    #$07    
       TAY            
LF18A: DEY            
       BPL    LF18A   
       STA    RESP0   
       STA    WSYNC   
       LDY    $F6     
       LDA.wy $00BB,Y 
       STA    $FA     
       NOP            
       LDA    $98     
       STA    HMP1    
       AND    #$07    
       TAY            
LF1A0: DEY            
       BPL    LF1A0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$0F    
       LDA    ($FA),Y 
       STA    GRP0    
       LDA.wy $0088,Y 
       STA    COLUP0  
       LDA    COLUPF,X
       BMI    LF1BA   
       DEC    $F7     
LF1BA: DEY            
       STA    HMCLR   
LF1BD: LDA    $F6     
       CMP    $AC     
       BNE    LF1C8   
       LDA    $82     
       STA.wy $0088,Y 
LF1C8: LDA    ($FA),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA.wy $0088,Y 
       STA    COLUP0  
LF1D3: DEC    $87     
       BEQ    LF209   
       LDA    COLUPF,X
       BMI    LF1DD   
       DEC    $F7     
LF1DD: DEY            
       BPL    LF1BD   
       INC    $F6     
       LDY    $F6     
       LDA.wy $00BB,Y 
       STA    WSYNC   
       NOP            
       STA    $FA     
       STY    $F8     
       LDA.wy $00B2,Y 
       STA    HMP0    
       STA    REFP0   
       AND    #$07    
       TAY            
LF1F8: DEY            
       BPL    LF1F8   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$10    
       DEC    $87     
       BEQ    LF210   
       BNE    LF1D3   
LF209: LDX    #$30    
       DEY            
       BMI    LF254   
       BPL    LF21F   
LF210: DEY            
       LDX    #$2F    
LF213: STX    $88     
       LDX    $A0     
       LDA    COLUPF,X
       BMI    LF21D   
       DEC    $F7     
LF21D: LDX    $88     
LF21F: LDA    $F6     
       CMP    $AC     
       BNE    LF236   
       LDA    LF684,X 
       AND    $84     
       STA    WSYNC   
       STA    COLUP1  
       LDA.w  $0082   
       STA    COLUP0  
       JMP    LF246   
LF236: LDA    LF684,X 
       EOR    $83     
       AND    $84     
       STA    WSYNC   
       STA    COLUP1  
       LDA.wy $0088,Y 
       STA    COLUP0  
LF246: LDA    $C3,X   
       STA    GRP1    
       LDA    ($FA),Y 
       STA    GRP0    
       DEX            
       BEQ    LF29A   
       DEY            
LF252: BPL    LF213   
LF254: INC    $F6     
       LDY    $F6     
       BIT    COLUP1  
       BMI    LF25E   
       STY    $F8     
LF25E: LDA.wy $00BB,Y 
       STA    $FA     
       LDA.wy $00B2,Y 
       STA    HMP0    
       STA    REFP0   
       AND    #$07    
       STA    WSYNC   
       TAY            
       LDA    LF684,X 
       EOR    $83     
       AND    $84     
       STA    COLUP1  
       LDA    $C3,X   
       STA    GRP1    
LF27C: DEY            
       BPL    LF27C   
       STA    RESP0   
       LDA    LF683,X 
       EOR    $83     
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       BEQ    LF29C   
       AND    $84     
       STA    COLUP1  
       LDA    $C3,X   
       STA    GRP1    
       LDY    #$0F    
       DEX            
       BNE    LF252   
LF29A: STA    WSYNC   
LF29C: STX    GRP0    
       STX    GRP1    
       LDA    $83     
       AND    $84     
       STA    WSYNC   
       STA.w  $0009   
       EOR    #$88    
       AND    $84     
       STA    COLUP0  
       STA    COLUP1  
       STX    HMCLR   
       STX    REFP0   
       STX    REFP1   
       LDA    #$11    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP1    
       STA    RESP0   
       STA    RESP1   
       LDX    #$07    
LF2C5: STA    WSYNC   
       STA    HMOVE   
       LDA    LF6B5,X 
       STA    GRP0    
       LDA    LF6BD,X 
       STA    GRP1    
       JSR    LF651   
       LDA    LF6CD,X 
       TAY            
       LDA    LF6C5,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF2C5   
       LDA    #$21    
       STA    TIM64T  
       LDX    SWCHA   
       INX            
       BEQ    LF2F3   
       STY    $9E     
LF2F3: SEC            
       LDA    $F7     
       SBC    #$05    
       BPL    LF2FB   
       TYA            
LF2FB: SEC            
       SBC    $9D     
       CLC            
       BPL    LF302   
       SEC            
LF302: ROR            
       CMP    #$02    
       BCC    LF30D   
       CMP    #$FE    
       BCS    LF30D   
       STY    $9E     
LF30D: CLC            
       ADC    $9D     
       CMP    $F5     
       BCC    LF316   
       LDA    $F5     
LF316: STA    $9D     
       JSR    LF63D   
       STA    $98     
       LDX    #$0F    
LF31F: LDA    LF7EC,X 
       STA    $C4,X   
       STA    $D4,X   
       STA    $E4,X   
       LDY    $A1     
       BEQ    LF334   
       DEY            
       BEQ    LF336   
       DEY            
       BEQ    LF338   
       BNE    LF33A   
LF334: STY    $E4,X   
LF336: STY    $D4,X   
LF338: STY    $C4,X   
LF33A: DEX            
       BPL    LF31F   
       LDY    $9C     
       LDX    LF7E8,Y 
       LDA    $AF     
       ASL            
       AND    #$18    
       TAY            
       LDA    #$07    
       STA    $F9     
LF34C: LDA    LF708,Y 
       STA    $CC,X   
       INY            
       INX            
       DEC    $F9     
       BPL    LF34C   
LF357: LDA    INTIM   
       BNE    LF357   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       INC    $81     
       BNE    LF377   
       INC    $9E     
       BNE    LF377   
       SEC            
       ROR    $9E     
LF377: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LF382   
       LDY    #$0F    
LF382: TYA            
       LDY    #$00    
       BIT    $9E     
       BPL    LF38D   
       AND    #$F7    
       LDY    $9E     
LF38D: STY    $83     
       ASL    $83     
       STA    $84     
       LDA    #$30    
       STA    WSYNC   
       STA    TIM64T  
       LDY    #$00    
       STY    $88     
       LDA    SWCHB   
       LSR            
       BCS    LF3B4   
       JSR    LF624   
       STX    $AD     
       ASL    $80     
       SEC            
       ROR    $80     
       LDA    #$03    
       STA    $A1     
       STA    $A6     
LF3B4: LSR            
       BCS    LF3D0   
       LDA    $9F     
       BEQ    LF3BF   
       DEC    $9F     
       BPL    LF3D2   
LF3BF: INC    $80     
LF3C1: JSR    LF624   
       LDA    $80     
       AND    #$01    
       STA    $80     
       TAY            
       INY            
       STY    $A5     
       LDY    #$1E    
LF3D0: STY    $9F     
LF3D2: BIT    $80     
       BPL    LF3FA   
       LDA    $A1     
       BNE    LF3E2   
       LDA    $81     
       AND    #$7F    
       BNE    LF3FA   
       BEQ    LF42A   
LF3E2: LDA    $AE     
       BEQ    LF459   
       CMP    #$20    
       BCC    LF41C   
       BEQ    LF3FD   
LF3EC: LDA    $AE     
       AND    #$0C    
       ASL            
       ASL            
       ADC    #$B8    
       LDX    $AC     
       STA    $BB,X   
       DEC    $AE     
LF3FA: JMP    LF59E   
LF3FD: LDX    $AC     
       LDA    #$00    
       STA    $BB,X   
LF403: LDA    #$2B    
       STA    $AE     
       LDX    #$08    
       LDA    $AB     
       BEQ    LF40F   
       DEC    $AB     
LF40F: STX    $AC     
       LDA    $BB,X   
       BNE    LF3EC   
       DEX            
       BPL    LF40F   
       LDA    #$20    
       STA    $AE     
LF41C: DEC    $AE     
       BNE    LF3FA   
       LDA    $B0     
       BNE    LF426   
       DEC    $A1     
LF426: LDA    $A6     
       BEQ    LF442   
LF42A: LDA    $80     
       LSR            
       BCC    LF442   
       LDX    #$04    
LF431: LDY    $A1,X   
       LDA    $A6,X   
       STA    $A1,X   
       STY    $A6,X   
       DEX            
       BPL    LF431   
       LDA    $A0     
       EOR    #$01    
       STA    $A0     
LF442: LDX    $A2     
       TXA            
       BEQ    LF451   
       DEX            
       STX    $A2     
       LDA    LF6F3,X 
       LSR            
       CLC            
       ADC    #$01    
LF451: STA    $AB     
       LDX    #$FF    
       STX    $AD     
       BNE    LF3FA   
LF459: BIT    $AD     
       BPL    LF471   
       LDA    SWCHA   
       LDX    $A0     
       BEQ    LF465   
       ASL            
LF465: ASL            
       LDA    #$00    
       BCS    LF46C   
       STA    $AD     
LF46C: STA    $B1     
       JMP    LF596   
LF471: LDA    $81     
       AND    #$0F    
       BNE    LF482   
       JSR    LF62E   
       BCS    LF482   
       LDA    $9B     
       EOR    #$FF    
       STA    $9B     
LF482: BIT    $AD     
       BVS    LF4B6   
       LDA    $B1     
       CMP    #$11    
       BCS    LF4B6   
       CMP    #$02    
       BCC    LF4B6   
       LDA    $A2     
       BIT    $9B     
       BPL    LF499   
       EOR    #$FF    
       CLC            
LF499: ADC    $9A     
       CMP    #$F0    
       BCC    LF4A5   
       LDX    #$00    
       LDA    #$05    
       BNE    LF4AD   
LF4A5: CMP    #$76    
       BCC    LF4AF   
       LDX    #$FF    
       LDA    #$76    
LF4AD: STX    $9B     
LF4AF: STA    $9A     
       JSR    LF63D   
       STA    $99     
LF4B6: BIT    COLUP1  
       BPL    LF512   
       LDX    $F8     
       LDA    #$00    
       STA    $BB,X   
       LDY    #$02    
       CPX    #$06    
       BCC    LF4CA   
       BEQ    LF4C9   
       DEY            
LF4C9: DEY            
LF4CA: LDX    $A1     
       CPX    #$02    
       BEQ    LF4D4   
       BCS    LF4D8   
       LDY    #$02    
LF4D4: TYA            
       BNE    LF4D8   
       INY            
LF4D8: STY    $9C     
       LDA    #$10    
       STA    $AF     
       SED            
       CLC            
       LDA    $A2     
       ADC    #$01    
       LDX    #$02    
       LDY    $A4     
LF4E8: ADC    $A3,X   
       STA    $A3,X   
       LDA    #$00    
       DEX            
       BPL    LF4E8   
       CLD            
       BCC    LF4FE   
       STA    $A1     
       LDA    #$99    
       STA    $A3     
       STA    $A4     
       STA    $A5     
LF4FE: TYA            
       EOR    $A4     
       AND    #$F0    
       BEQ    LF512   
       LDX    $A1     
       INX            
       CPX    #$04    
       BCS    LF50E   
       STX    $A1     
LF50E: LDA    #$3F    
       STA    $B0     
LF512: LDX    $F6     
       LDA    $BB,X   
       BEQ    LF528   
       LDX    #$08    
LF51A: LDA    $BB,X   
       BEQ    LF522   
       LDA    #$78    
       STA    $BB,X   
LF522: DEX            
       BPL    LF51A   
       JMP    LF403   
LF528: LDX    #$08    
LF52A: LDA    $BB,X   
       BEQ    LF53F   
       DEC    $88     
       JSR    LF62E   
       EOR    $81     
       AND    #$03    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$78    
       STA    $BB,X   
LF53F: DEX            
       BPL    LF52A   
       LDA    $A2     
       LSR            
       CLC            
       ADC    #$01    
       ADC    $B1     
       STA    $B1     
       SEC            
       SBC    #$12    
       BCC    LF59E   
       STA    $B1     
       LDX    #$07    
LF555: LDA    $B2,X   
       STA    $B3,X   
       LDA    $BB,X   
       STA    $BC,X   
       DEX            
       BPL    LF555   
       LDA    #$00    
       STA    $BB     
       LDX    $A2     
       BIT    $AD     
       BVC    LF579   
       LDA    $88     
       ORA    $AF     
       BNE    LF59E   
       ASL    $AD     
       CPX    #$07    
       BCS    LF579   
       INX            
       STX    $A2     
LF579: TXA            
       LSR            
       BCS    LF581   
       LDA    $BC     
       BNE    LF59E   
LF581: INC    $AB     
       LDA    $AB     
       CMP    LF6F3,X 
       BCC    LF592   
       LDA    #$00    
       STA    $AB     
       LDA    #$7F    
       STA    $AD     
LF592: LDA    $82     
       AND    #$08    
LF596: ORA    $99     
       STA    $B2     
       LDA    #$78    
       STA    $BB     
LF59E: JSR    LF62E   
       AND    #$03    
       TAX            
       LDY    #$00    
       LDA    $88     
       BEQ    LF5B2   
       TXA            
       LSR            
       ADC    #$01    
       STA    AUDV0   
       LDY    #$08    
LF5B2: LDA    $AF     
       BEQ    LF5C5   
       LDY    #$08    
       DEC    $AF     
       CMP    #$0F    
       BCC    LF5C2   
       LDY    #$0C    
       SBC    $A2     
LF5C2: TAX            
       STY    AUDV0   
LF5C5: LDA    $AE     
       BEQ    LF5D8   
       LDY    #$08    
       LDX    #$08    
       ADC    $AC     
       CMP    #$20    
       BCS    LF5D6   
       LSR            
       LDX    #$1F    
LF5D6: STA    AUDV0   
LF5D8: LDA    $B0     
       BEQ    LF5E8   
       DEC    $B0     
       TAX            
       LSR            
       LSR            
       BCC    LF5E4   
       TAX            
LF5E4: LDY    #$0C    
       STY    AUDV0   
LF5E8: STX    AUDF0   
       STY    AUDC0   
       LDY    #$02    
LF5EE: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $00A3,Y 
       AND    #$F0    
       LSR            
       ADC    #$28    
       STA    $F4,X   
       LDA.wy $00A3,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$28    
       STA    $F6,X   
       LDA    #$F7    
       STA    $F5,X   
       STA    $F7,X   
       DEY            
       BPL    LF5EE   
       LDX    #$00    
LF613: LDA    $F4,X   
       EOR    #$28    
       BNE    LF621   
       STA    $F4,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    LF613   
LF621: JMP    LF00E   
LF624: LDA    #$00    
       LDX    #$25    
LF628: STA    $9E,X   
       DEX            
       BPL    LF628   
       RTS            

LF62E: LSR    $82     
       ROL            
       EOR    $82     
       LSR            
       LDA    $82     
       BCS    LF63C   
       ORA    #$40    
       STA    $82     
LF63C: RTS            

LF63D: LDY    #$FF    
       SEC            
LF640: INY            
       SBC    #$0F    
       BCS    LF640   
       STY    $F9     
       EOR    #$FF    
       ADC    #$09    
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $F9     
LF651: RTS            

LF652: .byte $02,$02,$3A,$3A,$3A,$0C,$02,$0C,$02,$0C,$02,$0C,$02,$0C,$02,$0C
       .byte $02,$0C,$02,$38,$3A,$3A,$3A,$3A,$3A,$38,$02,$02,$02,$14,$12,$10
LF672: .byte $06,$D4,$1A,$42,$00,$02,$04,$06,$06,$04,$02,$00,$08,$08,$08,$08
       .byte $4E
LF683: .byte $4E
LF684: .byte $4E,$12,$12,$14,$14,$16,$16,$88,$16,$88,$88,$88,$88,$88,$88,$88
       .byte $88,$12,$12,$14,$14,$16,$16,$88,$16,$88,$88,$88,$88,$88,$88,$88
       .byte $88,$12,$12,$14,$14,$16,$16,$88,$16,$88,$88,$88,$88,$88,$88,$88
       .byte $88
LF6B5: .byte $00,$AD,$A9,$E9,$A9,$ED,$41,$0F
LF6BD: .byte $00,$50,$58,$5C,$56,$53,$11,$F0
LF6C5: .byte $00,$BA,$8A,$BA,$A2,$3A,$80,$FE
LF6CD: .byte $00,$E9,$AB,$AF,$AD,$E9
LF6D3: .byte $00,$00,$44,$82,$82,$BA,$D6,$BA,$D6,$BA,$D6,$BA,$FE,$FE,$FE,$FE
       .byte $FE,$7C,$38,$38,$38,$6C,$54,$7C,$6C,$EE,$FE,$D6,$7C,$7C,$7C,$38
LF6F3: .byte $09,$14,$1E,$28,$32,$4B,$64,$96,$FF,$FF,$F0,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00
LF708: .byte $00,$00,$00,$00,$00,$00,$00,$00,$92,$00,$38,$10,$82,$28,$00,$00
       .byte $10,$10,$44,$92,$10,$00,$44,$00,$00,$92,$10,$00,$10,$82,$00,$00
       .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
       .byte $00,$10,$38,$38,$7C,$7C,$38,$38,$10,$08,$08,$10,$20,$00,$00,$00
       .byte $00,$10,$38,$38,$7C,$7C,$38,$38,$10,$08,$08,$10,$20,$20,$00,$00
       .byte $00,$10,$38,$38,$7C,$7C,$38,$38,$10,$08,$08,$10,$20,$20,$30,$10
       .byte $00,$10,$38,$38,$7C,$7C,$38,$38,$10,$08,$08,$10,$20,$20,$60,$20
       .byte $00,$14,$91,$5A,$7E,$3C,$1D,$B8,$3C,$7E,$59,$9C,$14,$12,$A0,$04
       .byte $00,$00,$52,$18,$3C,$3C,$1C,$38,$7C,$7E,$58,$1C,$54,$00,$02,$00
       .byte $00,$00,$00,$00,$00,$18,$3C,$3C,$18,$3C,$3C,$18,$00,$00,$00,$00
LF7E8: .byte $00,$10,$20,$30
LF7EC: .byte $FE,$AA,$AA,$AA,$AA,$AA,$78,$7C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$F0,$00,$00
