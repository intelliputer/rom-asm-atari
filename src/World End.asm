; Disassembly of roms/World End.bin
; Disassembled Tue Oct  6 15:24:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/World End.bin
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
       JMP    LF76D   
LF003: LDX    $B3     
LF005: DEX            
       BMI    LF00E   
       STA    WSYNC   
       STA    WSYNC   
       BPL    LF005   
LF00E: LDA    #$05    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDX    $B2     
LF016: LDA    #$00    
       CPX    $A7     
       BMI    LF02A   
       LDY    $AB     
       BMI    LF02A   
       LDA    LF7B8,Y 
       STA    COLUP0  
       LDA    ($9C),Y 
       DEY            
       STY    $AB     
LF02A: STA    WSYNC   
       STA    GRP0    
       LDA    LF7E8,X 
       STA    PF2     
       LDA    LF7C8,X 
       STA    COLUPF  
       LDA    #$00    
       CPX    $A8     
       BMI    LF04C   
       LDY    $AC     
       BMI    LF04C   
       LDA    LF7C0,Y 
       STA    COLUP1  
       LDA    ($9E),Y 
       DEY            
       STY    $AC     
LF04C: STA    WSYNC   
       STA    GRP1    
       INX            
       CPX    #$14    
       BNE    LF016   
       STX    $A5     
       LDA    $B5     
       STA    ENABL   
       LDX    #$00    
       LDA    $84     
       STA    WSYNC   
       JSR    LFFB8   
       STA    HMP0,X  
       STA    WSYNC   
LF068: DEY            
       BPL    LF068   
       STA    RESP0,X 
       STA    WSYNC   
       INC    $A5     
       LDX    #$01    
       LDA    $85     
       STA    WSYNC   
       INC    $A5     
       JSR    LFFB8   
       STA    HMP0,X  
       STA    WSYNC   
LF080: DEY            
       BPL    LF080   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$50    
       STA    PF0     
       LDA    #$AA    
       STA    PF1     
       LDA    #$55    
       STA    PF2     
       LDA    $A0     
       CMP    #$AE    
       BCC    LF0A5   
       LDA    #$15    
       BNE    LF0A7   
LF0A5: LDA    #$10    
LF0A7: STA    NUSIZ0  
       LDY    #$00    
       LDA    $A2     
       CMP    #$AE    
       BCC    LF0B3   
       LDY    #$05    
LF0B3: STY    $A4     
       LDX    $A5     
       INX            
       STA    HMCLR   
       STA    WSYNC   
       LDA    $B6     
       STA    PF0     
       LDA    $B7     
       STA    PF1     
       LDA    $B8     
       STA    PF2     
       LDA    #$01    
       AND    $B9     
       BNE    LF0D2   
       LDA    #$20    
       BNE    LF0D4   
LF0D2: LDA    #$30    
LF0D4: ORA    $A4     
       STA    NUSIZ1  
       LDA    #$05    
       STA    CTRLPF  
       LDA    $8A     
       STA    VDELP0  
       LSR            
       STA    $A9     
       LDA    $8B     
       STA    VDELP1  
       LSR            
       STA    $AA     
       STA    WSYNC   
       INX            
LF0ED: LDA    #$00    
       CPX    $88     
       BMI    LF0FC   
       LDY    $AF     
       BMI    LF0FC   
       LDA    #$02    
       DEY            
       STY    $AF     
LF0FC: STA    $A4     
       LDA    #$00    
       CPX    $A9     
       BMI    LF112   
       LDY    $AD     
       BMI    LF112   
       LDA    LF7DC,Y 
       STA    COLUP0  
       LDA    ($A0),Y 
       DEY            
       STY    $AD     
LF112: STA    WSYNC   
       STA    GRP0    
       LDA    $A4     
       STA    ENAM0   
       LDA    #$00    
       CPX    $89     
       BMI    LF125   
       LDA    #$02    
       DEY            
       STY    $B0     
LF125: STA    $A4     
       LDA    #$00    
       CPX    $AA     
       BMI    LF13B   
       LDY    $AE     
       BMI    LF13B   
       LDA    LF7E2,Y 
       STA    COLUP1  
       LDA    ($A2),Y 
       DEY            
       STY    $AE     
LF13B: STA    WSYNC   
       STA    GRP1    
       LDA    $A4     
       STA    ENAM1   
       INX            
       CPX    $B4     
       BNE    LF0ED   
       LDA    $EC     
       LDY    $E6     
       BEQ    LF159   
       LDA    $B9     
       AND    #$02    
       LSR            
       TAX            
       LDA    LF298,X 
       ORA    $EC     
LF159: STA    WSYNC   
       NOP            
       STA    COLUBK  
       LDA    #$00    
       STA    VDELP0  
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    PF0     
       NOP            
       STA    RESP0   
       STA    RESP1   
       STA    PF1     
       STA    PF2     
       STA    ENAM1   
       STA    ENABL   
       STA    REFP0   
       STA    REFP1   
       LDA    #$00    
       STA    HMP0    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $A4     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$A7    
       STA    COLUP0  
       STA    COLUP1  
LF19B: LDY    $A4     
       LDA    ($E3),Y 
       STA    $A5     
       LDA    ($E1),Y 
       TAX            
       LDA    ($D9),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($DB),Y 
       STA    GRP1    
       LDA    ($DD),Y 
       STA    GRP0    
       LDA    ($DF),Y 
       LDY    $A5     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $A4     
       BPL    LF19B   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    #$07    
       STA    NUSIZ0  
       LDA    #$37    
       STA    COLUP0  
       LDX    #$03    
       LDY    $BA     
       LDA    LF81C,Y 
LF1DE: STA    WSYNC   
       STA    GRP0    
       DEX            
       BPL    LF1DE   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    GRP0    
       LDA    #$20    
       STA    TIM64T  
       BIT    $BC     
       BMI    LF24B   
       BVS    LF24B   
       LDA    $E6     
       BNE    LF24B   
       LDA    $B9     
       AND    #$03    
       TAY            
       BIT    VBLANK  
       BVS    LF243   
       BMI    LF243   
       BIT    NUSIZ1  
       BVS    LF243   
       BIT    VSYNC   
       BMI    LF222   
       BVC    LF24B   
       LDA.wy $00CB,Y 
       AND    #$07    
       CMP    #$07    
       BEQ    LF24B   
       LDA    #$3F    
       STA.wy $00CB,Y 
       JMP    LF230   
LF222: LDA.wy $00CF,Y 
       AND    #$07    
       CMP    #$07    
       BEQ    LF24B   
       LDA    #$3F    
       STA.wy $00CF,Y 
LF230: STA    $E5     
       LDA    #$7F    
       STA    $88     
       LDA    $BA     
       BEQ    LF24B   
       JSR    LFA30   
       JSR    LF94E   
       JMP    LF24B   
LF243: LDA    #$01    
       STA    $E6     
       LDA    #$7F    
       STA    $88     
LF24B: NOP            
       LDA    #$02    
       AND    $BC     
       BEQ    LF255   
       JMP    LF380   
LF255: LDA    #$20    
       BIT    $BC     
       BEQ    LF261   
       JSR    LFA53   
       JMP    LF380   
LF261: LDA    #$01    
       BIT    $BC     
       BNE    LF29A   
       LDA    $B2     
       BEQ    LF29A   
       LDA    $B9     
       AND    #$07    
       TAY            
       LDA    LF28E,Y 
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$0A    
       STA    AUDV0   
       LDA    #$1F    
       STA    AUDF1   
       LDA    #$01    
       STA    AUDC1   
       LDA    $B9     
       LSR            
       LSR            
       STA    AUDV1   
       JMP    LF380   
LF28E: .byte $03,$04,$05,$06,$05,$04,$03,$02
LF296: .byte $C2,$32
LF298: .byte $00,$0F
LF29A: LDA    $BD     
       BEQ    LF2AD   
       EOR    #$1F    
       STA    AUDF0   
       LDA    #$08    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       JMP    LF354   
LF2AD: LDA    $B9     
       AND    #$07    
       TAX            
       BIT    $BC     
       BMI    LF2BC   
       BVC    LF2CC   
       LDA    #$04    
       BNE    LF2BE   
LF2BC: LDA    #$01    
LF2BE: STA    AUDC0   
       LDA    LF28E,X 
       STA    AUDF0   
       LDA    #$0A    
       STA    AUDV0   
       JMP    LF354   
LF2CC: NOP            
       LDA    $B5     
       AND    #$1F    
       BEQ    LF2EA   
       AND    #$03    
       TAY            
       LDA    LF2E6,Y 
       STA    AUDF0   
       LDA    #$0A    
       STA    AUDV0   
       LDA    #$04    
       STA    AUDC0   
       JMP    LF35A   
LF2E6: .byte $03,$05,$07,$05
LF2EA: LDA    $E6     
       BEQ    LF333   
       CLC            
       ADC    #$01    
       STA    $E6     
       BEQ    LF306   
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
       LSR            
       EOR    #$0F    
LF2FD: STA    AUDV0   
       LDA    #$02    
       STA    AUDC0   
       JMP    LF35A   
LF306: JSR    LF944   
       LDA    #$00    
       STA    $E5     
       STA    AUDV0   
       LDA    $BA     
       BEQ    LF330   
       DEC    $BA     
       BNE    LF330   
       LDA    $B1     
       AND    #$01    
       BNE    LF330   
       LDA    $EB     
       BNE    LF328   
       LDA    #$10    
       STA    $BB     
       JMP    LF330   
LF328: DEC    $EB     
       JSR    LF90C   
       JSR    LF463   
LF330: JMP    LF35A   
LF333: LDA    $E5     
       BEQ    LF350   
       SEC            
       SBC    #$01    
       STA    $E5     
       BEQ    LF2FD   
       LDA    $E5     
       EOR    #$3F    
       STA    AUDF0   
       LSR            
       LSR            
       EOR    #$0F    
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC0   
       BNE    LF35A   
LF350: LDA    #$00    
       STA    AUDV0   
LF354: LDA    #$00    
       STA    $E5     
       STA    $B5     
LF35A: NOP            
       LDA    $88     
       CMP    #$7F    
       BEQ    LF37C   
       DEC    $EA     
       BEQ    LF37C   
       LDA    $EA     
       LSR            
       STA    AUDF1   
       LDA    $B9     
       AND    #$01    
       TAX            
       LDA    LF37A,X 
       STA    AUDC1   
       LDA    #$0A    
       STA    AUDV1   
       BNE    LF380   
LF37A: .byte $0C ;.NOP
       PHP            
LF37C: LDA    #$00    
       STA    AUDV1   
LF380: LDA    SWCHA   
       LDY    $EB     
       BEQ    LF38B   
       ASL            
       ASL            
       ASL            
       ASL            
LF38B: STA    $A4     
LF38D: LDA    INTIM   
       BNE    LF38D   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       BIT    $BC     
       BMI    LF3AB   
       BVS    LF3AB   
       LDA    $B5     
       AND    #$1F    
       BEQ    LF3B5   
       DEC    $B5     
       JMP    LF3CB   
LF3AB: LDA    #$00    
       BEQ    LF3C9   
LF3AF: RTI            

LF3B0: .byte $40,$40,$40,$20,$20
LF3B5: LDA    $B9     
       AND    #$7F    
       BNE    LF3CB   
       LDA    $B5     
       CLC            
       ADC    #$20    
       LDY    $C2     
       CMP    LF3AF,Y 
       BNE    LF3C9   
       LDA    #$1F    
LF3C9: STA    $B5     
LF3CB: LDA    $BA     
       BEQ    LF3D7   
       LDA    $E6     
       BNE    LF3D7   
       BIT    $BC     
       BVC    LF3DC   
LF3D7: STA    WSYNC   
       JMP    LF424   
LF3DC: LDX    $C2     
       STY    WSYNC   
       LDA    $83     
       BIT    $A4     
       BMI    LF3EF   
       CMP    LF802,X 
       BCS    LF3F8   
       INC    $83     
       BNE    LF3F8   
LF3EF: BVS    LF3F8   
       CMP    LF7FC,X 
       BCC    LF3F8   
       DEC    $83     
LF3F8: LDA    $88     
       CMP    #$7F    
       BNE    LF419   
       LDX    $EB     
       LDA    REFP1,X 
       ASL            
       BCS    LF424   
       LDA    $83     
       CLC            
       ADC    #$03    
       STA    $82     
       LDA    $B4     
       SEC            
       SBC    #$05    
       STA    $88     
       LDA    #$3F    
       STA    $EA     
       BNE    LF424   
LF419: SEC            
       SBC    #$05    
       CMP    #$16    
       BCS    LF422   
       LDA    #$7F    
LF422: STA    $88     
LF424: STY    WSYNC   
       INC    $B9     
       LDA    $C0     
       BNE    LF43D   
       LDA    $C2     
       CMP    #$04    
       BCC    LF434   
       LDA    #$03    
LF434: STA    $C0     
       LDA    #$04    
       SEC            
       SBC    $C0     
       STA    $C0     
LF43D: DEC    $C0     
       LDA    #$00    
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       LDA    SWCHB   
       STA    $A4     
       LSR            
       BCS    LF478   
       JSR    LF8FE   
       JSR    LF463   
       LDA    $B1     
       AND    #$01    
       EOR    #$01    
       STA    $EB     
       JMP    LF4A1   
LF463: LDA    #$05    
       STA    $BA     
       LDA    #$40    
       STA    $BB     
       LDA    #$00    
       STA    $E9     
       LDA    #$61    
       STA    $BC     
       LDA    #$16    
       STA    $E8     
       RTS            

LF478: LDA    #$0F    
       AND    $B9     
       BNE    LF4A1   
       LDA    $A4     
       LSR            
       LSR            
       BCS    LF4A1   
       LDA    #$00    
       STA    $BA     
       LDA    #$20    
       STA    $BB     
       JSR    LF8FE   
       LDA    #$43    
       STA    $BC     
       LDA    $B1     
       CMP    #$04    
       BNE    LF49F   
       LDA    #$01    
       STA    $B1     
       BNE    LF4A1   
LF49F: INC    $B1     
LF4A1: NOP            
       LDA    $E6     
       BEQ    LF4A9   
LF4A6: JMP    LF5D8   
LF4A9: LDA    #$01    
       BIT    $BC     
       BNE    LF4A6   
       BVS    LF4B4   
       JMP    LF5DE   
LF4B4: LDA    $B2     
       BEQ    LF4D8   
       LDA    #$0F    
       AND    $B9     
       BNE    LF4D5   
       DEC    $B2     
       BNE    LF4C8   
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
LF4C8: LDA    $B2     
       CMP    #$08    
       BCS    LF4D5   
       ASL            
       STA    $86     
       STA    $87     
       INC    $BE     
LF4D5: JMP    LF5D8   
LF4D8: LDA    $BD     
       BEQ    LF527   
       LDA    #$03    
       AND    $B9     
       BNE    LF524   
       BIT    $BD     
       BPL    LF502   
       LDA    $BD     
       CMP    #$9A    
       BNE    LF4F6   
       AND    #$1F    
       STA    $BD     
       JSR    LF944   
       JMP    LF5D8   
LF4F6: INC    $BD     
       SEC            
       ROL    $B6     
       ROR    $B7     
       ROL    $B8     
       JMP    LF5D8   
LF502: DEC    $BD     
       BEQ    LF510   
       CLC            
       ROR    $B8     
       ROL    $B7     
       ROR    $B6     
       JMP    LF5D8   
LF510: LDX    $C2     
       LDA    LF810,X 
       STA    $B6     
       LDA    LF816,X 
       STA    $B7     
       LDA    #$00    
       STA    $B8     
       STA    AUDV0   
       STA    AUDV1   
LF524: JMP    LF5D8   
LF527: LDA    #$07    
       AND    $B9     
       BNE    LF524   
       LDA    #$0F    
       STA    $A4     
       BIT    $BC     
       BMI    LF57C   
       LDA    $86     
       CMP    #$17    
       BEQ    LF53F   
       INC    $86     
       BNE    LF544   
LF53F: LDA    #$FE    
       JSR    LF79F   
LF544: LDA    $87     
       CMP    #$16    
       BEQ    LF54E   
       INC    $87     
       BNE    LF553   
LF54E: LDA    #$FD    
       JSR    LF79F   
LF553: LDA    $80     
       CMP    #$10    
       BEQ    LF55D   
       DEC    $80     
       BNE    LF562   
LF55D: LDA    #$FB    
       JSR    LF79F   
LF562: LDA    $81     
       CMP    #$80    
       BEQ    LF56C   
       INC    $81     
       BNE    LF571   
LF56C: LDA    #$F7    
       JSR    LF79F   
LF571: LDA    $A4     
       BNE    LF5D8   
       LDA    #$BF    
       AND    $BC     
       JMP    LF5D6   
LF57C: LDA    $86     
       BEQ    LF585   
       DEC    $86     
       JMP    LF58A   
LF585: LDA    #$FE    
       JSR    LF79F   
LF58A: LDA    $87     
       BEQ    LF593   
       DEC    $87     
       JMP    LF598   
LF593: LDA    #$FD    
       JSR    LF79F   
LF598: LDA    $80     
       CMP    #$30    
       BEQ    LF5A8   
       BCS    LF5A4   
       INC    $80     
       BNE    LF5AD   
LF5A4: DEC    $80     
       BNE    LF5AD   
LF5A8: LDA    #$FB    
       JSR    LF79F   
LF5AD: LDA    $81     
       CMP    #$60    
       BEQ    LF5BD   
       BCS    LF5B9   
       INC    $81     
       BNE    LF5C2   
LF5B9: DEC    $81     
       BNE    LF5C2   
LF5BD: LDA    #$F7    
       JSR    LF79F   
LF5C2: LDA    $A4     
       BNE    LF5D8   
       LDA    $C2     
       CMP    #$05    
       BCS    LF5CE   
       INC    $C2     
LF5CE: LDA    #$81    
       STA    $BD     
       LDA    #$7F    
       AND    $BC     
LF5D6: STA    $BC     
LF5D8: JSR    LF829   
       JMP    LF703   
LF5DE: JSR    LF829   
       LDY    $C2     
       LDA    #$01    
       AND    $B9     
       BNE    LF612   
       LDA    $81     
       CMP    LF7FC,Y 
       BCS    LF5F7   
       LDA    #$BF    
       AND    $BF     
       JMP    LF600   
LF5F7: CMP    LF808,Y 
       BCC    LF602   
       LDA    #$40    
       ORA    $BF     
LF600: STA    $BF     
LF602: BIT    $BF     
       BVC    LF60A   
       DEC    $81     
       BNE    LF612   
LF60A: INC    $81     
       LDA    #$01    
       AND    $B9     
       BNE    LF635   
LF612: LDA    $80     
       CMP    LF7FC,Y 
       BCS    LF620   
       LDA    #$7F    
       AND    $BF     
       JMP    LF629   
LF620: CMP    LF808,Y 
       BCC    LF62B   
       LDA    #$80    
       ORA    $BF     
LF629: STA    $BF     
LF62B: BIT    $BF     
       BPL    LF633   
       DEC    $80     
       BNE    LF635   
LF633: INC    $80     
LF635: NOP            
       LDA    #$0F    
       AND    $B9     
       BNE    LF670   
       LDX    #$07    
LF63E: LDA    $94,X   
       CMP    #$FF    
       BNE    LF66D   
       LDA    #$2C    
       STA    $94,X   
       LDA    $80     
       CLC            
       ADC    #$04    
       STA    $8C,X   
       JSR    LF8C2   
       CMP    #$64    
       BCS    LF65B   
       LDA    $C2     
       JMP    LF65D   
LF65B: LDA    #$06    
LF65D: STA    $CB,X   
       LDA    $B9     
       AND    #$10    
       ASL            
       ASL            
       ASL            
       ORA    $CB,X   
       STA    $CB,X   
       JMP    LF670   
LF66D: DEX            
       BPL    LF63E   
LF670: LDX    #$07    
LF672: LDA    $CB,X   
       AND    #$07    
       STA    $A6     
       LDA    $94,X   
       CMP    #$FF    
       BEQ    LF6DF   
       CMP    #$2C    
       BCS    LF689   
       LDA    #$BF    
       AND    $CB,X   
       JMP    LF6C8   
LF689: LDA    $B4     
       ASL            
       SEC            
       SBC    #$0E    
       CMP    $94,X   
       BCS    LF6AF   
       LDA    $A6     
       CMP    #$06    
       BNE    LF6A8   
       LDA    #$FF    
       STA    $94,X   
       LDA    #$01    
       STA    $E6     
       LDA    #$7F    
       STA    $88     
       JMP    LF6DF   
LF6A8: LDA    #$40    
       ORA    $CB,X   
       JMP    LF6C8   
LF6AF: LDY    $C2     
       LDA    $8C,X   
       CMP    LF7FC,Y 
       BCS    LF6BF   
       LDA    #$7F    
       AND    $CB,X   
       JMP    LF6C8   
LF6BF: CMP    LF802,Y 
       BCC    LF6CA   
       LDA    #$80    
       ORA    $CB,X   
LF6C8: STA    $CB,X   
LF6CA: LDA    $C0     
       BNE    LF6DF   
       LDA    $A6     
       CMP    #$07    
       BEQ    LF6DF   
       CMP    #$06    
       BNE    LF6E4   
       LDA    $94,X   
LF6DA: CLC            
       ADC    #$01    
LF6DD: STA    $94,X   
LF6DF: DEX            
       BPL    LF672   
       BMI    LF703   
LF6E4: LDA    $CB,X   
       STA    $A4     
       LDA    $8C,X   
       BIT    $A4     
       BPL    LF6F3   
       SEC            
       SBC    #$01    
       BNE    LF6F6   
LF6F3: CLC            
       ADC    #$01    
LF6F6: STA    $8C,X   
       LDA    $94,X   
       BIT    $A4     
       BVC    LF6DA   
       SEC            
       SBC    #$01    
       BNE    LF6DD   
LF703: NOP            
       LDA    $B9     
       AND    #$1F    
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF7B0,X 
       STA    $9C     
       LDA    LF7B4,X 
       STA    $9E     
       LDA    LF7A4,X 
       STA    $A4     
       LDA    $B9     
       AND    #$07    
       TAY            
       LDA.wy $00CB,Y 
       AND    #$07    
       CMP    #$07    
       BNE    LF743   
       LDA.wy $00CB,Y 
       AND    #$38    
       BNE    LF738   
       LDA    #$FF    
       STA.wy $0094,Y 
       JMP    LF74D   
LF738: LDA.wy $00CB,Y 
       SEC            
       SBC    #$08    
       STA.wy $00CB,Y 
       AND    #$07    
LF743: TAX            
       LDA    LF7A8,X 
       CLC            
       ADC    $A4     
       STA.wy $00C3,Y 
LF74D: LDA    $B9     
       AND    #$03    
       TAX            
       LDA    $8C,X   
       STA    $84     
       LDA    $90,X   
       STA    $85     
       LDA    $94,X   
       STA    $8A     
       LDA    $98,X   
       STA    $8B     
       LDA    $C3,X   
       STA    $A0     
       LDA    $C7,X   
       STA    $A2     
       JMP    LF786   
LF76D: SEI            
       CLD            
       LDA    #$00    
       TAX            
LF772: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF772   
       JSR    LF8DD   
       JSR    LF8FE   
       LDA    #$01    
       STA    $B1     
       LDA    #$43    
       STA    $BC     
LF786: JSR    LF831   
LF789: LDA    INTIM   
       BNE    LF789   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    HMCLR   
       STA    CXCLR   
       JMP    LF003   
LF79F: AND    $A4     
       STA    $A4     
       RTS            

LF7A4: .byte $00,$06,$0C,$06
LF7A8: .byte $30,$42,$54,$66,$78,$8A,$9C,$AE
LF7B0: .byte $00,$08,$10,$08
LF7B4: .byte $18,$20,$28,$20
LF7B8: .byte $2C,$8C,$3C,$48,$BC,$EC,$38,$28
LF7C0: .byte $EC,$8C,$28,$BC,$38,$2C,$3C,$48
LF7C8: .byte $2C,$8C,$3C,$4C,$B8,$CC,$CB,$CA,$C9,$C8,$C7,$C6,$4C,$4B,$4A,$49
       .byte $48,$47,$46,$45
LF7DC: .byte $29,$39,$69,$C9,$49,$C9
LF7E2: .byte $49,$49,$39,$39,$49,$49
LF7E8: .byte $20,$20,$20,$60,$60,$F0,$F0,$F0,$DB,$9E,$BC,$F8,$F8,$E8,$CC,$0C
       .byte $0C,$4C,$4E,$FE
LF7FC: .byte $04,$08,$0C,$10,$14,$18
LF802: .byte $94,$90,$8C,$88,$84,$80
LF808: .byte $8C,$88,$84,$80,$7C,$78,$02,$03
LF810: .byte $1F,$3F,$7F,$FF,$FF,$FF
LF816: .byte $00,$00,$00,$00,$80,$C0
LF81C: .byte $00,$00,$80,$A0,$A8,$AA
LF822: .byte $03,$03,$03,$06,$06
LF827: .byte $04,$0F
LF829: CLC            
       LDA    #$6C    
       ADC    $B2     
       STA    $B4     
       RTS            

LF831: LDX    #$02    
LF833: LDA    $80,X   
       JSR    LFFB8   
       JSR    LFFD7   
       DEX            
       BPL    LF833   
       LDX    #$04    
       LDA    $B9     
       AND    #$01    
       TAY            
       LDA    $81     
       CLC            
       ADC    LF827,Y 
       JSR    LFFB8   
       JSR    LFFD7   
       LDA    $E6     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $A5     
       LDA    #$01    
       AND    $B9     
       BNE    LF885   
       LDY    $B1     
       LDA    LF822,Y 
       STA    $B0     
       CLC            
       ADC    #$01    
       STA    $A6     
       LDA    $B4     
       SEC            
       SBC    $A6     
       CLC            
       ADC    $A5     
       STA    $89     
       LDA    $83     
       CLC            
       ADC    #$02    
LF87A: LDX    #$03    
       JSR    LFFB8   
       JSR    LFFD7   
       JMP    LF898   
LF885: LDA    #$01    
       STA    $B0     
       LDA    $B4     
       SEC            
       SBC    #$02    
       CLC            
       ADC    $A5     
       STA    $89     
       LDA    $83     
       JMP    LF87A   
LF898: LDA    $BE     
       STA    $AB     
       STA    $AC     
       LDA    #$05    
       STA    $AD     
       STA    $AE     
       LDA    #$20    
       STA    $AF     
       LDA    $86     
       STA    VDELP0  
       LSR            
       STA    $A7     
       LDA    $87     
       STA    VDELP1  
       LSR            
       STA    $A8     
       LDA    #$00    
       STA    COLUBK  
       JSR    LF96B   
       LDA    #$01    
       STA    CTRLPF  
       RTS            

LF8C2: LDA    $C1     
       AND    #$40    
       LSR            
       STA    $A5     
       LDA    $C1     
       AND    #$20    
       EOR    $A5     
       BNE    LF8D4   
       CLC            
       BCC    LF8D5   
LF8D4: SEC            
LF8D5: LDA    $C1     
       ROL            
       AND    #$7F    
       STA    $C1     
       RTS            

LF8DD: LDA    #$80    
       STA    $BB     
       LDA    #$FF    
       LDX    #$0C    
LF8E5: STA    $D8,X   
       DEX            
       DEX            
       BNE    LF8E5   
       LDA    #$FE    
       STA    $9D     
       STA    $9F     
       STA    $A1     
       STA    $A3     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$5C    
       STA    $C1     
       RTS            

LF8FE: LDA    #$00    
       STA    $D3     
       STA    $D4     
       STA    $D5     
       STA    $D6     
       STA    $D7     
       STA    $D8     
LF90C: LDA    #$00    
       STA    $B3     
       STA    $BD     
       STA    $B5     
       STA    $C2     
       STA    $E7     
       STA    $E6     
       STA    $E5     
       STA    $EA     
       STA    AUDV0   
       STA    AUDV1   
       STA    $B6     
       STA    $B7     
       STA    $B8     
       LDA    #$41    
       STA    $BC     
       LDA    #$13    
       STA    $B2     
       LDA    #$30    
       STA    $80     
       LDA    #$60    
       STA    $81     
       LDA    #$4B    
       STA    $83     
       LDA    #$7F    
       STA    $88     
       LDA    #$FF    
       STA    $BE     
LF944: LDA    #$FF    
       LDX    #$07    
LF948: STA    $94,X   
       DEX            
       BPL    LF948   
       RTS            

LF94E: LDA    $E7     
       CLC            
       ADC    #$01    
       LDY    $C2     
       CMP    LF965,Y 
       BCC    LF962   
       LDA    #$C0    
       ORA    $BC     
       STA    $BC     
       LDA    #$00    
LF962: STA    $E7     
       RTS            

LF965: .byte $32,$32,$32,$32,$32,$32
LF96B: LDA    #$20    
       BIT    $BB     
       BPL    LF9B8   
       LDA    #$C2    
       STA    $EC     
       LDA    $B9     
       AND    #$0F    
       BNE    LF989   
       LDA    $ED     
       CMP    #$0F    
       BNE    LF987   
       LDA    #$00    
       STA    $ED     
       BEQ    LF989   
LF987: INC    $ED     
LF989: LDA    $ED     
       CMP    #$09    
       BCC    LF999   
       CMP    #$0B    
       BCC    LF997   
       LDA    #$00    
       BEQ    LF999   
LF997: LDA    #$08    
LF999: STA    $A5     
       LDA    #$A8    
       STA    $A4     
       LDX    #$0C    
LF9A1: LDA    $A4     
       SEC            
       SBC    $A5     
       STA    $D7,X   
       LDA    $A4     
       SEC            
       SBC    #$10    
       STA    $A4     
       DEX            
       DEX            
       BNE    LF9A1   
       JMP    LFA02   
LF9B6: .byte $00,$03
LF9B8: BVC    LF9D3   
       LDY    $EB     
       LDA    LF296,Y 
       STA    $EC     
       LDX    LF9B6,Y 
       LDA    $D3,X   
       STA    $A4     
       LDA    $D4,X   
       STA    $A5     
       LDA    $D5,X   
       STA    $A6     
       JMP    LF9FF   
LF9D3: BEQ    LF9E2   
       LDA    #$00    
       STA    $A4     
       STA    $A5     
       LDA    $B1     
       STA    $A6     
       JMP    LF9FF   
LF9E2: CLC            
       LDA    $B9     
       AND    #$40    
       ROL            
       ROL            
       ROL            
       TAY            
       LDA    LF296,Y 
       STA    $EC     
       LDX    LF9B6,Y 
       LDA    $D3,X   
       STA    $A4     
       LDA    $D4,X   
       STA    $A5     
       LDA    $D5,X   
       STA    $A6     
LF9FF: JSR    LFA03   
LFA02: RTS            

LFA03: LDX    #$02    
LFA05: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $A4,X   
       AND    #$F0    
       LSR            
       STA.wy $00D9,Y 
       LDA    $A4,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00DB,Y 
       DEX            
       BPL    LFA05   
       INX            
LFA1F: LDA    $D9,X   
       CMP    #$00    
       BNE    LFA2F   
       LDA    #$B0    
       STA    $D9,X   
       INX            
       INX            
       CPX    #$09    
       BCC    LFA1F   
LFA2F: RTS            

LFA30: LDX    #$02    
       SED            
       CLC            
       LDA    $EB     
       BEQ    LFA44   
LFA38: LDA    LFA50,X 
       ADC    $D6,X   
       STA    $D6,X   
       DEX            
       BPL    LFA38   
       BMI    LFA4E   
LFA44: LDA    LFA50,X 
       ADC    $D3,X   
       STA    $D3,X   
       DEX            
       BPL    LFA44   
LFA4E: CLD            
       RTS            

LFA50: .byte $00,$01,$00
LFA53: LDA    $E9     
       BNE    LFA73   
       LDX    $E8     
       DEX            
       BPL    LFA66   
       LDA    #$DE    
       AND    $BC     
       STA    $BC     
       LDA    #$00    
       BEQ    LFA94   
LFA66: STX    $E8     
       LDA    LFAAD,X 
       AND    #$07    
       TAY            
       LDA    LFAA5,Y 
       STA    $E9     
LFA73: DEC    $E9     
       LDA    #$04    
       STA    AUDC0   
       LDA    #$0C    
       STA    AUDC1   
       LDX    $E8     
       LDA    LFAAD,X 
       AND    #$38    
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFA99,X 
       STA    AUDF0   
       LDA    LFA9F,X 
       STA    AUDF1   
       LDA    #$0F    
LFA94: STA    AUDV0   
       STA    AUDV1   
       RTS            

LFA99: .byte $1D,$1A,$17,$15,$13,$11
LFA9F: .byte $1A,$15,$13,$11,$0F,$11
LFAA5: .byte $07,$0D,$13,$19,$1F,$25,$2B,$31
LFAAD: .byte $0F,$0F,$03,$11,$19,$27,$1B,$21,$29,$27,$1B,$21,$29,$27,$07,$27
       .byte $27,$1B,$21,$29,$27,$07,$90,$F6,$A2,$00,$BD,$B8,$03,$09,$80,$20
       .byte $23,$27,$E8,$E0,$11,$90,$F3,$A2,$00,$BD,$1B,$2B,$09,$80,$20,$23
       .byte $27,$E8,$E0,$06,$90,$F3,$B8,$A9,$AA,$A2,$01,$0A,$48,$B5,$6B,$90
       .byte $04,$4A,$4A,$4A,$4A,$29,$0F,$D0,$02,$50,$08,$09,$B0,$20,$23,$27
       .byte $2C,$87,$2A,$68,$10,$E5,$CA,$10,$E2,$A9,$8D,$20,$23,$27,$A9,$A0
       .byte $20,$23,$27,$A9,$8D,$20,$23,$27,$A9,$02,$85,$6A,$68,$60,$A0,$D0
       .byte $C1,$C7,$C5,$A0,$48,$98,$48,$8A,$48,$20,$53,$2D,$BD,$34,$30,$85
       .byte $85,$BD,$35,$30,$85,$86,$A0,$1D,$B1,$85,$91,$AA,$88,$10,$F9,$20
       .byte $DC,$03,$84,$B0,$85,$B1,$20,$C5,$2D,$A0,$15,$A9,$00,$91,$AC,$88
       .byte $10,$FB,$A0,$1E,$B1,$AA,$48,$C8,$C0,$24,$D0,$F8,$A0,$11,$68,$91
       .byte $AC,$88,$C0,$0B,$D0,$F8,$A9,$01,$A0,$00,$91,$AC,$A9,$00,$C8,$91
       .byte $AC,$A9,$01,$C8,$91,$AC,$A9,$00,$C8,$91,$AC,$BD,$A3,$2E,$A0,$05
       .byte $91,$AC,$BD,$A2,$2E,$C8,$91,$AC,$BD,$E4,$2E,$C8,$91,$AC,$BD,$34
       .byte $30,$C8,$91,$AC,$BD,$35,$30,$C8,$91,$AC,$E0,$00,$D0,$14,$A9,$05
       .byte $81,$AC,$20,$D2,$2D,$A2,$00,$A9,$01,$81,$AC,$AD,$E4,$2E,$A0,$07
       .byte $91,$AC,$20,$D2,$2D,$68,$AA,$68,$A8,$68,$60,$98,$48,$8A,$48,$20
       .byte $C5,$2D,$A9,$02,$A0,$00,$91,$AC,$20,$D2,$2D,$A0,$0C,$B1,$AC,$18
       .byte $69,$2D,$85,$AA,$C8,$B1,$AC,$69,$00,$85,$AB,$A9,$00,$A8,$91,$AA
       .byte $68,$AA,$68,$A8,$60,$24,$A6,$30,$03,$4C,$D5,$2C,$48,$98,$48,$8A
       .byte $48,$A5,$A3,$30,$03,$4C,$96,$2C,$A5,$0C,$38,$E9,$04,$85,$89,$A5
       .byte $0D,$E9,$00,$85,$8A,$38,$A5,$AE,$E9,$04,$85,$AE,$A5,$AF,$E9,$00
       .byte $85,$AF,$A0,$03,$B1,$89,$20,$D6,$2C,$88,$10,$F8,$A5,$89,$38,$E9
       .byte $04,$85,$89,$A5,$8A,$E9,$00,$85,$8A,$A5,$AE,$C5,$89,$A5,$AF,$E5
       .byte $8A,$90,$DF,$A9,$00,$20,$D6,$2C,$A5,$0C,$85,$AE,$A5,$0D,$85,$AF
       .byte $A5,$63,$85,$8B,$A5,$64,$85,$8C,$A0,$00,$B1,$8B,$10,$04,$C8,$4C
       .byte $47,$2C,$C8,$B1,$8B,$29,$18,$F0,$22,$84,$99,$A0,$00,$B1,$8B,$20
       .byte $D6,$2C,$C8,$C4,$99,$D0,$F6,$B1,$8B,$20,$D6,$2C,$C8,$B1,$8B,$20
       .byte $D6,$2C,$C8,$B1,$8B,$20,$D6,$2C,$4C,$7A,$2C,$C8,$C8,$C8,$98,$18
       .byte $65,$8B,$85,$8B,$A5,$8C,$69,$00,$85,$8C,$A5,$8B,$C5,$65,$A5,$8C
       .byte $E5,$66,$90,$B4,$A9,$00,$20,$D6,$2C,$A2,$00,$A9,$00,$A0,$02,$20
       .byte $FA,$2C,$A5,$82,$48,$A5,$81,$20,$D6,$2C,$68,$20,$D6,$2C,$24,$A3
       .byte $10,$0A,$A5,$7F,$20,$D6,$2C,$A5,$80,$20,$D6,$2C,$20,$B8,$2B,$46
       .byte $A6,$A0,$1D,$B9,$A6,$2E,$C9,$A0,$D0,$03,$88,$10,$F6,$18,$69,$01
       .byte $99,$A6,$2E,$68,$AA,$68,$A8,$68,$60,$8D,$94,$2E,$48,$98,$48,$8A
       .byte $48,$A2,$00,$20,$C5,$2D,$20,$D2,$2D,$EE,$8E,$2E,$D0,$03,$EE,$8F
       .byte $2E,$E6,$81,$D0,$02,$E6,$82,$68,$AA,$68,$A8,$68,$60,$84,$AA,$85
       .byte $AB,$48,$98,$48,$8A,$48,$20,$C5,$2D,$A0,$00,$B1,$AC,$48,$A9,$0A
       .byte $91,$AC,$A0,$02,$A5,$AA,$91,$AC,$C8,$A5,$AB,$91,$AC,$20,$D2,$2D
       .byte $A0,$00,$68,$91,$AC,$68,$AA,$68,$A8,$68,$60,$48,$98,$48,$8A,$48
       .byte $A2,$02,$20,$C5,$2D,$A0,$00,$20,$D2,$2D,$AD,$7E,$2E,$F0,$0B,$99
       .byte $32,$33,$C8,$C9,$8D,$D0,$F0,$18,$90,$06,$A2,$02,$20,$B8,$2B,$38
       .byte $68,$AA,$68,$A8,$68,$60,$48,$98,$48,$AD,$DE,$03,$85,$AB,$A0,$00
       .byte $84,$AA,$F0,$02,$A0,$24,$B1,$AA,$48,$C8,$B1,$AA,$D0,$0C,$20,$C5
       .byte $2D,$A0,$0A,$A9,$0C,$91,$AC,$4C,$1F,$2E,$85,$AB,$68,$85,$AA,$A0
       .byte $00,$B1,$AA,$D0,$DF,$68,$A8,$68,$60,$48,$98,$48,$8A,$48,$A2,$02
       .byte $A0,$03,$D0,$09,$48,$98,$48,$8A,$48,$A2,$00,$A0,$04,$20,$C5,$2D
       .byte $98,$A0,$00,$91,$AC,$C8,$A9,$01,$91,$AC,$C8,$A9,$00,$91,$AC,$C8
       .byte $91,$AC,$C8,$91,$AC,$C8,$91,$AC,$C8,$A9,$01,$91,$AC,$A9,$00,$C8
       .byte $91,$AC,$68,$AA,$68,$A8,$68,$60,$48,$BD,$30,$30,$85,$AC,$BD,$31
       .byte $30,$85,$AD,$68,$60,$48,$98,$48,$8A,$48,$A0,$15,$B1,$AC,$91,$B0
       .byte $88,$10,$F9,$AC,$E3,$2E,$F0,$11,$8A,$D0,$0E,$A5,$81,$C9,$FC,$D0
       .byte $08,$CC,$E2,$2E,$F0,$03,$99,$88,$C0,$20,$D6,$03,$A0,$15,$B1,$B0
       .byte $91,$AC,$88,$81,$5A,$3C,$7E,$AB,$7E,$3C,$18,$81,$5A,$3C,$7E,$D5
       .byte $7E,$3C,$18,$81,$5A,$3C,$7E,$AB,$7E,$3C,$18,$07,$E2,$7C,$3C,$3D
       .byte $5A,$BC,$18,$E7,$42,$3C,$3C,$3C,$DB,$3C,$18,$E0,$47,$3E,$3C,$BC
       .byte $5A,$3D,$18,$3C,$7E,$FF,$FF,$42,$3C,$3C,$7E,$FF,$C3,$7E,$3C,$3C
       .byte $7E,$C3,$FF,$7E,$3C,$3C,$C3,$C3,$7E,$3C,$C3,$3C,$FF,$C3,$7E,$3C
       .byte $C3,$3C,$FF,$FF,$7E,$3C,$C3,$3C,$42,$81,$81,$7E,$00,$00,$7E,$81
       .byte $81,$7E,$00,$00,$42,$BD,$BD,$42,$00,$24,$66,$FF,$FF,$66,$24,$24
       .byte $66,$FF,$FF,$66,$24,$24,$66,$FF,$FF,$66,$24,$0C,$64,$9C,$39,$26
       .byte $10,$0C,$64,$9C,$39,$26,$10,$0C,$64,$9C,$39,$26,$10,$00,$81,$C3
       .byte $FF,$C3,$81,$00,$42,$66,$7E,$66,$42,$00,$24,$3C,$3C,$3C,$24,$A5
       .byte $5A,$3C,$5A,$BD,$81,$99,$5A,$3C,$5A,$BD,$81,$99,$66,$3C,$5A,$BD
       .byte $81,$2A,$10,$45,$10,$4A,$14,$00,$28,$14,$4A,$14,$00,$00,$10,$28
       .byte $10,$00,$00,$A0,$A0,$A0,$A0,$DA,$C5,$D2,$CF,$AD,$D0,$C1,$CC,$B1
       .byte $AE,$B1,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
       .byte $A0,$A0,$A0,$A0,$A0,$60,$60,$04,$CC,$00,$DA,$C5,$D2,$CF,$AD,$D0
       .byte $C1,$CC,$B1,$AE,$B1,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
       .byte $A0,$A0,$A0,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18
       .byte $18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C
       .byte $06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C
       .byte $60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C
       .byte $06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66
       .byte $66,$66,$3C,$00,$00,$F7,$95,$87,$80,$90,$F0,$A4,$AA,$AA,$AA,$E4
       .byte $80,$80,$80,$47,$41,$77,$55,$75,$00,$00,$00,$AB,$AA,$AB,$AA,$53
       .byte $00,$00,$00,$03,$00,$4B,$4A,$6B,$00,$08,$00,$80,$00,$80,$80,$80
       .byte $00,$00,$00,$80,$80,$AA,$AA,$BA,$22,$27,$02,$4B,$A9,$AB,$AA,$AB
       .byte $00,$08,$00,$00,$00,$11,$11,$17,$15,$17,$00,$49,$55,$55,$55,$48
       .byte $00,$40,$00,$00,$00,$77,$51,$77,$51,$77,$00,$40,$40,$40,$40,$80
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFB8: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $A4     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $A4     
       CMP    #$0F    
       BCC    LFFD0   
       SBC    #$0F    
       INY            
LFFD0: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LFFD7: STA    HMP0,X  
       STA    WSYNC   
LFFDB: DEY            
       BPL    LFFDB   
       STA    RESP0,X 
       RTS            

LFFE1: .byte $A0,$D4,$A0,$AD,$A0,$D3,$A0,$A0,$A0,$AD,$A0,$D3,$A0,$A0,$A0,$AD
       .byte $A0,$D3,$AD,$A0,$A0,$AD,$A0,$D3,$AD,$A0,$A0,$00,$F0,$E0,$88
