; Disassembly of roms/Kaboom! (2).bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Kaboom! (2).bin
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
       .byte $00,$F0,$00,$00,$78,$D8,$A2,$00,$8A,$95,$00,$9A,$E8,$D0,$FA,$4C
       .byte $C1,$F3,$A2,$12,$BD,$72,$F6,$A4,$AE,$C0,$20,$90,$0A,$A4,$AC,$D0
       .byte $08,$E0,$04,$90,$04,$A5,$82,$45,$AE,$45,$83,$25,$84,$95,$85,$CA
       .byte $10,$E2,$85,$09,$A6,$A0,$B5,$87,$85,$06,$85,$07,$AD,$84,$02,$D0
       .byte $FB,$85,$02,$85,$01,$85,$08,$A9,$35,$85,$0A,$85,$0D,$A0,$03,$84
       .byte $04,$84,$05,$A0,$07,$84,$25,$84,$26,$84,$87,$B1,$FE,$85,$88,$85
       .byte $02,$B1,$F4,$85,$1B,$B1,$F6,$85,$1C,$B1,$F8,$85,$1B,$B1,$FC,$AA
       .byte $B1,$FA,$A4,$88,$85,$1C,$86,$1B,$84,$1C,$85,$1B,$A4,$87,$88,$10
       .byte $D8,$C8,$A5,$BB,$85,$FA,$A5,$B2,$85,$02,$84,$25,$84,$26,$84,$1B
       .byte $84,$1C,$85,$0B,$85,$20,$29,$07,$AA,$CA,$10,$FD,$85,$10,$85,$02
       .byte $84,$05,$84,$F9,$84,$04,$A5,$99,$85,$21,$29,$07,$AA,$A5,$B1,$CA
       .byte $10,$FD,$85,$11,$85,$02,$85,$2A,$A2,$1F,$09,$20,$A8,$A5,$A3,$C9
       .byte $01,$66,$88,$30,$08,$A5,$AE,$D0,$2A,$A5,$A1,$F0,$26,$BD,$52,$F6
       .byte $45,$83,$25,$84,$85,$02,$85,$07,$BD,$D3,$F6,$E0,$16,$D0,$02,$A9
       .byte $6C,$B0,$08,$A9,$6C,$24,$88,$30,$02,$A9,$54,$85,$1C,$88,$CA,$E0
       .byte $15,$B0,$DA,$BD,$52,$F6,$45,$83,$25,$84,$E0,$03,$D0,$09,$A5,$86
       .byte $85,$02,$85,$09,$4C,$0C,$F1,$85,$02,$85,$07,$BD,$D3,$F6,$85,$1C
       .byte $B9,$88,$00,$85,$06,$A5,$F9,$85,$1B,$88,$C0,$10,$B0,$04,$B1,$FA
       .byte $85,$F9,$CA,$10,$CE,$AD,$82,$02,$A6,$A0,$D0,$01,$0A,$0A,$A9,$00
       .byte $85,$F6,$B0,$02,$A9,$05,$85,$02,$85,$05,$B9,$88,$00,$85,$06,$A5
       .byte $F9,$85,$1B,$A9,$00,$85,$1C,$85,$2C,$90,$02,$A9,$0A,$18,$69,$6C
       .byte $85,$F5,$69,$06,$85,$F7,$A9,$55,$85,$87,$88,$30,$21,$C0,$10,$90
       .byte $07,$85,$02,$C6,$87,$88,$D0,$F5,$B1,$FA,$85,$02,$85,$1B,$B9,$88
       .byte $00,$85,$06,$C6,$87,$B5,$08,$30,$02,$C6,$F7,$88,$10,$EA,$85,$02
       .byte $E6,$F6,$A4,$F6,$B9,$B2,$00,$85,$20,$85,$0B,$29,$07,$A8,$88,$10
       .byte $FD,$85,$10,$85,$02,$A4,$F6,$B9,$BB,$00,$85,$FA,$EA,$A5,$98,$85
       .byte $21,$29,$07,$A8,$88,$10,$FD,$85,$11,$85,$02,$85,$2A,$A0,$0F,$B1
       .byte $FA,$85,$1B,$B9,$88,$00,$85,$06,$B5,$08,$30,$02,$C6,$F7,$88,$85
       .byte $2B,$A5,$F6,$C5,$AC,$D0,$05,$A5,$82,$99,$88,$00,$B1,$FA,$85,$02
       .byte $85,$1B,$B9,$88,$00,$85,$06,$C6,$87,$F0,$32,$B5,$08,$30,$02,$C6
       .byte $F7,$88,$10,$DD,$E6,$F6,$A4,$F6,$B9,$BB,$00,$85,$02,$EA,$85,$FA
       .byte $84,$F8,$B9,$B2,$00,$85,$20,$85,$0B,$29,$07,$A8,$88,$10,$FD,$85
       .byte $10,$85,$02,$85,$2A,$A0,$10,$C6,$87,$F0,$09,$D0,$CA,$A2,$30,$88
       .byte $30,$46,$10,$0F,$88,$A2,$2F,$86,$88,$A6,$A0,$B5,$08,$30,$02,$C6
       .byte $F7,$A6,$88,$A5,$F6,$C5,$AC,$D0,$11,$BD,$84,$F6,$25,$84,$85,$02
       .byte $85,$07,$AD,$82,$00,$85,$06,$4C,$46,$F2,$BD,$84,$F6,$45,$83,$25
       .byte $84,$85,$02,$85,$07,$B9,$88,$00,$85,$06,$B5,$C3,$85,$1C,$B1,$FA
       .byte $85,$1B,$CA,$F0,$49,$88,$10,$BF,$E6,$F6,$A4,$F6,$24,$07,$30,$02
       .byte $84,$F8,$B9,$BB,$00,$85,$FA,$B9,$B2,$00,$85,$20,$85,$0B,$29,$07
       .byte $85,$02,$A8,$BD,$84,$F6,$45,$83,$25,$84,$85,$07,$B5,$C3,$85,$1C
       .byte $88,$10,$FD,$85,$10,$BD,$83,$F6,$45,$83,$85,$02,$85,$2A,$CA,$F0
       .byte $0F,$25,$84,$85,$07,$B5,$C3,$85,$1C,$A0,$0F,$CA,$D0,$B8,$85,$02
       .byte $86,$1B,$86,$1C,$A5,$83,$25,$84,$85,$02,$8D,$09,$00,$49,$88,$25
       .byte $84,$85,$06,$85,$07,$86,$2B,$86,$0B,$86,$0C,$A9,$11,$85,$04,$85
       .byte $05,$85,$21,$85,$10,$85,$11,$A2,$07,$85,$02,$85,$2A,$BD,$B5,$F6
       .byte $85,$1B,$BD,$BD,$F6,$85,$1C,$20,$51,$F6,$BD,$CD,$F6,$A8,$BD,$C5
       .byte $F6,$85,$1B,$84,$1C,$85,$2B,$CA,$10,$DF,$A9,$21,$8D,$96,$02,$AE
       .byte $80,$02,$E8,$F0,$02,$84,$9E,$38,$A5,$F7,$E9,$05,$10,$01,$98,$38
       .byte $E5,$9D,$18,$10,$01,$38,$6A,$C9,$02,$90,$06,$C9,$FE,$B0,$02,$84
       .byte $9E,$18,$65,$9D,$C5,$F5,$90,$02,$A5,$F5,$85,$9D,$20,$3D,$F6,$85
       .byte $98,$A2,$0F,$BD,$EC,$F7,$95,$C4,$95,$D4,$95,$E4,$A4,$A1,$F0,$08
       .byte $88,$F0,$07,$88,$F0,$06,$D0,$06,$94,$E4,$94,$D4,$94,$C4,$CA,$10
       .byte $E2,$A4,$9C,$BE,$E8,$F7,$A5,$AF,$0A,$29,$18,$A8,$A9,$07,$85,$F9
       .byte $B9,$08,$F7,$95,$CC,$C8,$E8,$C6,$F9,$10,$F5,$AD,$84,$02,$D0,$FB
       .byte $A0,$82,$84,$02,$84,$01,$84,$00,$84,$02,$84,$02,$84,$02,$85,$00
       .byte $E6,$81,$D0,$07,$E6,$9E,$D0,$03,$38,$66,$9E,$A0,$FF,$AD,$82,$02
       .byte $29,$08,$D0,$02,$A0,$0F,$98,$A0,$00,$24,$9E,$10,$04,$29,$F7,$A4
       .byte $9E,$84,$83,$06,$83,$85,$84,$A9,$30,$85,$02,$8D,$96,$02,$A0,$00
       .byte $84,$88,$AD,$82,$02,$4A,$B0,$10,$20,$24,$F6,$86,$AD,$06,$80,$38
       .byte $66,$80,$A9,$03,$85,$A1,$85,$A6,$4A,$B0,$19,$A5,$9F,$F0,$04,$C6
       .byte $9F,$10,$13,$E6,$80,$20,$24,$F6,$A5,$80,$29,$01,$85,$80,$A8,$C8
       .byte $84,$A5,$A0,$1E,$84,$9F,$24,$80,$10,$24,$A5,$A1,$D0,$08,$A5,$81
       .byte $29,$7F,$D0,$1A,$F0,$48,$A5,$AE,$F0,$73,$C9,$20,$90,$32,$F0,$11
       .byte $A5,$AE,$29,$0C,$0A,$0A,$69,$B8,$A6,$AC,$95,$BB,$C6,$AE,$4C,$9E
       .byte $F5,$A6,$AC,$A9,$00,$95,$BB,$A9,$2B,$85,$AE,$A2,$08,$A5,$AB,$F0
       .byte $02,$C6,$AB,$86,$AC,$B5,$BB,$D0,$D7,$CA,$10,$F7,$A9,$20,$85,$AE
       .byte $C6,$AE,$D0,$DA,$A5,$B0,$D0,$02,$C6,$A1,$A5,$A6,$F0,$18,$A5,$80
       .byte $4A,$90,$13,$A2,$04,$B4,$A1,$B5,$A6,$95,$A1,$94,$A6,$CA,$10,$F5
       .byte $A5,$A0,$49,$01,$85,$A0,$A6,$A2,$8A,$F0,$0A,$CA,$86,$A2,$BD,$F3
       .byte $F6,$4A,$18,$69,$01,$85,$AB,$A2,$FF,$86,$AD,$D0,$A1,$24,$AD,$10
       .byte $14,$AD,$80,$02,$A6,$A0,$F0,$01,$0A,$0A,$A9,$00,$B0,$02,$85,$AD
       .byte $85,$B1,$4C,$96,$F5,$A5,$81,$29,$0F,$D0,$0B,$20,$2E,$F6,$B0,$06
       .byte $A5,$9B,$49,$FF,$85,$9B,$24,$AD,$70,$30,$A5,$B1,$C9,$11,$B0,$2A
       .byte $C9,$02,$90,$26,$A5,$A2,$24,$9B,$10,$03,$49,$FF,$18,$65,$9A,$C9
       .byte $F0,$90,$06,$A2,$00,$A9,$05,$D0,$08,$C9,$76,$90,$06,$A2,$FF,$A9
       .byte $76,$86,$9B,$85,$9A,$20,$3D,$F6,$85,$99,$24,$07,$10,$58,$A6,$F8
       .byte $A9,$00,$95,$BB,$A0,$02,$E0,$06,$90,$04,$F0,$01,$88,$88,$A6,$A1
       .byte $E0,$02,$F0,$04,$B0,$06,$A0,$02,$98,$D0,$01,$C8,$84,$9C,$A9,$10
       .byte $85,$AF,$F8,$18,$A5,$A2,$69,$01,$A2,$02,$A4,$A4,$75,$A3,$95,$A3
       .byte $A9,$00,$CA,$10,$F7,$D8,$90,$0A,$85,$A1,$A9,$99,$85,$A3,$85,$A4
       .byte $85,$A5,$98,$45,$A4,$29,$F0,$F0,$0D,$A6,$A1,$E8,$E0,$04,$B0,$02
       .byte $86,$A1,$A9,$3F,$85,$B0,$A6,$F6,$B5,$BB,$F0,$10,$A2,$08,$B5,$BB
       .byte $F0,$04,$A9,$78,$95,$BB,$CA,$10,$F5,$4C,$03,$F4,$A2,$08,$B5,$BB
       .byte $F0,$11,$C6,$88,$20,$2E,$F6,$45,$81,$29,$03,$0A,$0A,$0A,$0A,$69
       .byte $78,$95,$BB,$CA,$10,$E8,$A5,$A2,$4A,$18,$69,$01,$65,$B1,$85,$B1
       .byte $38,$E9,$12,$90,$4D,$85,$B1,$A2,$07,$B5,$B2,$95,$B3,$B5,$BB,$95
       .byte $BC,$CA,$10,$F5,$A9,$00,$85,$BB,$A6,$A2,$24,$AD,$50,$0F,$A5,$88
       .byte $05,$AF,$D0,$2E,$06,$AD,$E0,$07,$B0,$03,$E8,$86,$A2,$8A,$4A,$B0
       .byte $04,$A5,$BC,$D0,$1D,$E6,$AB,$A5,$AB,$DD,$F3,$F6,$90,$08,$A9,$00
       .byte $85,$AB,$A9,$7F,$85,$AD,$A5,$82,$29,$08,$05,$99,$85,$B2,$A9,$78
       .byte $85,$BB,$20,$2E,$F6,$29,$03,$AA,$A0,$00,$A5,$88,$F0,$08,$8A,$4A
       .byte $69,$01,$85,$19,$A0,$08,$A5,$AF,$F0,$0F,$A0,$08,$C6,$AF,$C9,$0F
       .byte $90,$04,$A0,$0C,$E5,$A2,$AA,$84,$19,$A5,$AE,$F0,$0F,$A0,$08,$A2
       .byte $08,$65,$AC,$C9,$20,$B0,$03,$4A,$A2,$1F,$85,$19,$A5,$B0,$F0,$0C
       .byte $C6,$B0,$AA,$4A,$4A,$90,$01,$AA,$A0,$0C,$84,$19,$86,$17,$84,$15
       .byte $A0,$02,$98,$0A,$0A,$AA,$B9,$A3,$00,$29,$F0,$4A,$69,$28,$95,$F4
       .byte $B9,$A3,$00,$29,$0F,$0A,$0A,$0A,$69,$28,$95,$F6,$A9,$F7,$95,$F5
       .byte $95,$F7,$88,$10,$DD,$A2,$00,$B5,$F4,$49,$28,$D0,$08,$95,$F4,$E8
       .byte $E8,$E0,$0A,$90,$F2,$4C,$0E,$F0,$A9,$00,$A2,$25,$95,$9E,$CA,$10
       .byte $FB,$60,$46,$82,$2A,$45,$82,$4A,$A5,$82,$B0,$04,$09,$40,$85,$82
       .byte $60,$A0,$FF,$38,$C8,$E9,$0F,$B0,$FB,$84,$F9,$49,$FF,$69,$09,$0A
       .byte $0A,$0A,$0A,$05,$F9,$60,$02,$02,$3A,$3A,$3A,$0C,$02,$0C,$02,$0C
       .byte $02,$0C,$02,$0C,$02,$0C,$02,$0C,$02,$38,$3A,$3A,$3A,$3A,$3A,$38
       .byte $02,$02,$02,$14,$12,$10,$06,$D4,$1A,$42,$00,$02,$04,$06,$06,$04
       .byte $02,$00,$08,$08,$08,$08,$4E,$4E,$4E,$12,$12,$14,$14,$16,$16,$88
       .byte $16,$88,$88,$88,$88,$88,$88,$88,$88,$12,$12,$14,$14,$16,$16,$88
       .byte $16,$88,$88,$88,$88,$88,$88,$88,$88,$12,$12,$14,$14,$16,$16,$88
       .byte $16,$88,$88,$88,$88,$88,$88,$88,$88,$00,$AD,$A9,$E9,$A9,$ED,$41
       .byte $0F,$00,$50,$58,$5C,$56,$53,$11,$F0,$00,$BA,$8A,$BA,$A2,$3A,$80
       .byte $FE,$00,$E9,$AB,$AF,$AD,$E9,$00,$00,$44,$82,$82,$BA,$D6,$BA,$D6
       .byte $BA,$D6,$BA,$FE,$FE,$FE,$FE,$FE,$7C,$38,$38,$38,$6C,$54,$7C,$6C
       .byte $EE,$FE,$D6,$7C,$7C,$7C,$38,$09,$14,$1E,$28,$32,$4B,$64,$96,$FF
       .byte $FF,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$92,$00,$38,$10,$82,$28,$00,$00,$10,$10,$44,$92
       .byte $10,$00,$44,$00,$00,$92,$10,$00,$10,$82,$00,$00,$3C,$66,$66,$66
       .byte $66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$3C
       .byte $06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E
       .byte $4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66
       .byte $7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C
       .byte $3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$10,$38,$38
       .byte $7C,$7C,$38,$38,$10,$08,$08,$10,$20,$00,$00,$00,$00,$10,$38,$38
       .byte $7C,$7C,$38,$38,$10,$08,$08,$10,$20,$20,$00,$00,$00,$10,$38,$38
       .byte $7C,$7C,$38,$38,$10,$08,$08,$10,$20,$20,$30,$10,$00,$10,$38,$38
       .byte $7C,$7C,$38,$38,$10,$08,$08,$10,$20,$20,$60,$20,$00,$14,$91,$5A
       .byte $7E,$3C,$1D,$B8,$3C,$7E,$59,$9C,$14,$12,$A0,$04,$00,$00,$52,$18
       .byte $3C,$3C,$1C,$38,$7C,$7E,$58,$1C,$54,$00,$02,$00,$00,$00,$00,$00
       .byte $00,$18,$3C,$3C,$18,$3C,$3C,$18,$00,$00,$00,$00,$00,$10,$20,$30
       .byte $FE,$AA,$AA,$AA,$AA,$AA,$78,$7C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$F0,$00,$00
